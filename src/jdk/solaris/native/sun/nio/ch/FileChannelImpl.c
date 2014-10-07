/*
 * Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

#include "jni.h"
#include "jni_util.h"
#include "jvm.h"
#include "jvm_md.h"
#include "jlong.h"
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "sun_nio_ch_FileChannelImpl.h"
#include "java_lang_Integer.h"
#include "nio.h"
#include "nio_util.h"
#include <dlfcn.h>

#if defined(__linux__) || defined(__solaris__)
#include <sys/sendfile.h>
#elif defined(_ALLBSD_SOURCE)
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/uio.h>

#define lseek64 lseek
#define mmap64 mmap
#endif

static jfieldID chan_fd;        /* jobject 'fd' in sun.io.FileChannelImpl */

JNIEXPORT jlong JNICALL
Java_sun_nio_ch_FileChannelImpl_initIDs(JNIEnv *env, jclass clazz)
{
    jlong pageSize = sysconf(_SC_PAGESIZE);
    //获取sun.nio.ch.FileChannelImpl的属性fd的标识
    chan_fd = (*env)->GetFieldID(env, clazz, "fd", "Ljava/io/FileDescriptor;");
    return pageSize;
}

static jlong
handle(JNIEnv *env, jlong rv, char *msg)
{
    if (rv >= 0)
        return rv;
    if (errno == EINTR)
        return IOS_INTERRUPTED;
    JNU_ThrowIOExceptionWithLastError(env, msg);
    return IOS_THROWN;
}

/**
 * 函数原型:	void* mmap (void * addr , size_t len , int prot , int flags , int fd , off_t offset );
 * 函数说明:	将一个文件或者其它对象映射进内存。文件被映射到多个页上，如果文件的大小不是所有页的大小之和，最后一个页不被使用的空间将会清零
 * 参数说明:	start	映射区的开始地址,设置为0时表示由系统决定映射区的起始地址
 * 			length	映射区的长度,长度单位是 以字节为单位，不足一内存页按一内存页处理
 * 			prot	期望的内存保护标志,不能与文件的打开模式冲突.是以下的某个值,可以通过or运算合理地组合在一起
 * 				PROT_EXEC 	页内容可以被执行
 * 				PROT_READ 	页内容可以被读取
 * 				PROT_WRITE 	页可以被写入
 * 				PROT_NONE 	页不可访问
 * 			flags	指定映射对象的类型,映射选项和映射页是否可以共享.它的值可以是一个或者多个以下位的组合体:
 * 				MAP_FIXED 	使用指定的映射起始地址,如果由start和len参数指定的内存区重叠于现存的映射空间,重叠部分将会被丢弃.
 * 							如果指定的起始地址不可用,操作将会失败.并且起始地址必须落在页的边界上
 * 				MAP_SHARED 	与其它所有映射这个对象的进程共享映射空间.对共享区的写入,相当于输出到文件.直到msync()或者munmap()被调用,文件实际上不会被更新.
 * 				MAP_PRIVATE 建立一个写入时拷贝的私有映射,内存区域的写入不会影响到原文件.这个标志和以上标志是互斥的,只能使用其中一个.
 * 				MAP_DENYWRITE 	这个标志被忽略
 * 				MAP_EXECUTABLE 	同上
 * 				MAP_NORESERVE 	不要为这个映射保留交换空间,当交换空间被保留,对映射区修改的可能会得到保证.当交换空间不被保留,同时内存不足.对映射区的修改会引起段违例信号.
 * 				MAP_LOCKED 		锁定映射区的页面，从而防止页面被交换出内存
 * 				MAP_GROWSDOWN 	用于堆栈,告诉内核VM系统,映射区可以向下扩展
 * 				MAP_ANONYMOUS 	匿名映射,映射区不与任何文件关联
 * 				MAP_ANON 		MAP_ANONYMOUS的别称,不再被使用
 * 				MAP_FILE 		兼容标志,被忽略
 * 				MAP_32BIT 		将映射区放在进程地址空间的低2GB,MAP_FIXED指定时会被忽略.当前这个标志只在x86-64平台上得到支持
 * 				MAP_POPULATE 	为文件映射通过预读的方式准备好页表,随后对映射区的访问不会被页违例阻塞
 * 				MAP_NONBLOCK 	仅和MAP_POPULATE一起使用时才有意义,不执行预读,只为已存在于内存中的页面建立页表入口
 * 			fd		有效的文件描述词.一般是由open()函数返回,其值也可以设置为-1,此时需要指定flags参数中的MAP_ANON,表明进行的是匿名映射
 * 			offset	被映射对象内容的起点
 * 	函数返回:	成功执行时,mmap()返回被映射区的指针;失败时,返回MAP_FAILED[其值为(void *)-1],errno被设为以下的某个值:
 * 				EACCES	访问出错
 * 				EAGAIN	文件已被锁定,或者太多的内存已被锁定
 * 				EBADF	fd不是有效的文件描述词
 * 				EINVAL	一个或者多个参数无效
 * 				ENFILE	已达到系统对打开文件的限制
 * 				ENODEV	指定文件所在的文件系统不支持内存映射
 * 				ENOMEM	内存不足，或者进程已超出最大内存映射数量
 * 				EPERM	权能不足，操作不允许
 * 				ETXTBSY	已写的方式打开文件，同时指定MAP_DENYWRITE标志
 * 				SIGSEGV	试着向只读区写入
 * 				SIGBUS	试着访问不属于进程的内存区
 */
JNIEXPORT jlong JNICALL Java_sun_nio_ch_FileChannelImpl_map0(JNIEnv *env, jobject this,
                                     jint prot, jlong off, jlong len)
{
    void *mapAddress = 0;
    //获取sun.nio.ch.FileChannelImpl实例this的属性fd值
    jobject fdo = (*env)->GetObjectField(env, this, chan_fd);

    jint fd = fdval(env, fdo);
    int protections = 0;
    int flags = 0;

    if (prot == sun_nio_ch_FileChannelImpl_MAP_RO) {
        protections = PROT_READ;
        flags = MAP_SHARED;
    } else if (prot == sun_nio_ch_FileChannelImpl_MAP_RW) {
        protections = PROT_WRITE | PROT_READ;
        flags = MAP_SHARED;
    } else if (prot == sun_nio_ch_FileChannelImpl_MAP_PV) {
        protections =  PROT_WRITE | PROT_READ;
        flags = MAP_PRIVATE;
    }

    mapAddress = mmap64(
        0,                    /* Let OS decide location */
        len,                  /* Number of bytes to map */
        protections,          /* File permissions */
        flags,                /* Changes are shared */
        fd,                   /* File descriptor of mapped file */
        off);                 /* Offset into file */

    if (mapAddress == MAP_FAILED) {
        if (errno == ENOMEM) {
            JNU_ThrowOutOfMemoryError(env, "Map failed");
            return IOS_THROWN;
        }
        return handle(env, -1, "Map failed");
    }

    return ((jlong) (unsigned long) mapAddress);
}

/**
 * 在进程地址空间中解除一个映射关系,addr是调用mmap()时返回的地址,len是映射区的大小.
 * 当映射关系解除后,对原来映射地址的访问将导致段错误发生
 */
JNIEXPORT jint JNICALL Java_sun_nio_ch_FileChannelImpl_unmap0(JNIEnv *env, jobject this,
                                       jlong address, jlong len)
{
    void *a = (void *)jlong_to_ptr(address);
    return handle(env,
                  munmap(a, (size_t)len),
                  "Unmap failed");
}


JNIEXPORT jlong JNICALL
Java_sun_nio_ch_FileChannelImpl_position0(JNIEnv *env, jobject this,
                                          jobject fdo, jlong offset)
{
    jint fd = fdval(env, fdo);
    jlong result = 0;

    if (offset < 0) {
        result = lseek64(fd, 0, SEEK_CUR);
    } else {
        result = lseek64(fd, offset, SEEK_SET);
    }
    return handle(env, result, "Position failed");
}


JNIEXPORT void JNICALL
Java_sun_nio_ch_FileChannelImpl_close0(JNIEnv *env, jobject this, jobject fdo)
{
    jint fd = fdval(env, fdo);
    if (fd != -1) {
        jlong result = close(fd);
        if (result < 0) {
            JNU_ThrowIOExceptionWithLastError(env, "Close failed");
        }
    }
}

JNIEXPORT jlong JNICALL
Java_sun_nio_ch_FileChannelImpl_transferTo0(JNIEnv *env, jobject this,
                                            jint srcFD,
                                            jlong position, jlong count,
                                            jint dstFD)
{
#if defined(__linux__)
    off64_t offset = (off64_t)position;
    jlong n = sendfile64(dstFD, srcFD, &offset, (size_t)count);
    if (n < 0) {
        if (errno == EAGAIN)
            return IOS_UNAVAILABLE;
        if ((errno == EINVAL) && ((ssize_t)count >= 0))
            return IOS_UNSUPPORTED_CASE;
        if (errno == EINTR) {
            return IOS_INTERRUPTED;
        }
        JNU_ThrowIOExceptionWithLastError(env, "Transfer failed");
        return IOS_THROWN;
    }
    return n;
#elif defined (__solaris__)
    sendfilevec64_t sfv;
    size_t numBytes = 0;
    jlong result;

    sfv.sfv_fd = srcFD;
    sfv.sfv_flag = 0;
    sfv.sfv_off = (off64_t)position;
    sfv.sfv_len = count;

    result = sendfilev64(dstFD, &sfv, 1, &numBytes);

    /* Solaris sendfilev() will return -1 even if some bytes have been
     * transferred, so we check numBytes first.
     */
    if (numBytes > 0)
        return numBytes;
    if (result < 0) {
        if (errno == EAGAIN)
            return IOS_UNAVAILABLE;
        if (errno == EOPNOTSUPP)
            return IOS_UNSUPPORTED_CASE;
        if ((errno == EINVAL) && ((ssize_t)count >= 0))
            return IOS_UNSUPPORTED_CASE;
        if (errno == EINTR)
            return IOS_INTERRUPTED;
        JNU_ThrowIOExceptionWithLastError(env, "Transfer failed");
        return IOS_THROWN;
    }
    return result;
#elif defined(__APPLE__)
    off_t numBytes;
    int result;

    numBytes = count;

#ifdef __APPLE__
    result = sendfile(srcFD, dstFD, position, &numBytes, NULL, 0);
#endif

    if (numBytes > 0)
        return numBytes;

    if (result == -1) {
        if (errno == EAGAIN)
            return IOS_UNAVAILABLE;
        if (errno == EOPNOTSUPP || errno == ENOTSOCK || errno == ENOTCONN)
            return IOS_UNSUPPORTED_CASE;
        if ((errno == EINVAL) && ((ssize_t)count >= 0))
            return IOS_UNSUPPORTED_CASE;
        if (errno == EINTR)
            return IOS_INTERRUPTED;
        JNU_ThrowIOExceptionWithLastError(env, "Transfer failed");
        return IOS_THROWN;
    }

    return result;
#else
    return IOS_UNSUPPORTED_CASE;
#endif
}
