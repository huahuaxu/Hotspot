/*
 * Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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

#include <assert.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/stat.h>
#include <sys/statvfs.h>
#include <string.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <limits.h>

#include "jni.h"
#include "jni_util.h"
#include "jlong.h"
#include "jvm.h"
#include "io_util.h"
#include "java_io_FileSystem.h"
#include "java_io_UnixFileSystem.h"

#if defined(_ALLBSD_SOURCE)
#define dirent64 dirent
#define readdir64_r readdir_r
#define stat64 stat
#define statvfs64 statvfs
#endif

/* -- Field IDs -- */

static struct {
    jfieldID path;
} ids;


JNIEXPORT void JNICALL
Java_java_io_UnixFileSystem_initIDs(JNIEnv *env, jclass cls)
{
    jclass fileClass = (*env)->FindClass(env, "java/io/File");
    if (!fileClass) return;
    ids.path = (*env)->GetFieldID(env, fileClass,
                                  "path", "Ljava/lang/String;");
}

/* -- Path operations -- */

extern int canonicalize(char *path, const char *out, int len);

JNIEXPORT jstring JNICALL
Java_java_io_UnixFileSystem_canonicalize0(JNIEnv *env, jobject this,
                                          jstring pathname)
{
    jstring rv = NULL;

    WITH_PLATFORM_STRING(env, pathname, path) {
        char canonicalPath[JVM_MAXPATHLEN];
        if (canonicalize(JVM_NativePath((char *)path),
                         canonicalPath, JVM_MAXPATHLEN) < 0) {
            JNU_ThrowIOExceptionWithLastError(env, "Bad pathname");
        } else {
            rv = JNU_NewStringPlatform(env, canonicalPath);
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}


/* -- Attribute accessors -- */


static jboolean
statMode(const char *path, int *mode)
{
    struct stat64 sb;
    if (stat64(path, &sb) == 0) {
        *mode = sb.st_mode;
        return JNI_TRUE;
    }
    return JNI_FALSE;
}


JNIEXPORT jint JNICALL
Java_java_io_UnixFileSystem_getBooleanAttributes0(JNIEnv *env, jobject this,
                                                  jobject file)
{
    jint rv = 0;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        int mode;
        if (statMode(path, &mode)) {
            int fmt = mode & S_IFMT;
            rv = (jint) (java_io_FileSystem_BA_EXISTS
                  | ((fmt == S_IFREG) ? java_io_FileSystem_BA_REGULAR : 0)
                  | ((fmt == S_IFDIR) ? java_io_FileSystem_BA_DIRECTORY : 0));
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}

JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_checkAccess(JNIEnv *env, jobject this,
                                        jobject file, jint a)
{
    jboolean rv = JNI_FALSE;
    int mode = 0;
    switch (a) {
    case java_io_FileSystem_ACCESS_READ:
        mode = R_OK;
        break;
    case java_io_FileSystem_ACCESS_WRITE:
        mode = W_OK;
        break;
    case java_io_FileSystem_ACCESS_EXECUTE:
        mode = X_OK;
        break;
    default: assert(0);
    }
    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        if (access(path, mode) == 0) {
            rv = JNI_TRUE;
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}


JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_setPermission(JNIEnv *env, jobject this,
                                          jobject file,
                                          jint access,
                                          jboolean enable,
                                          jboolean owneronly)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        int amode = 0;
        int mode;
        switch (access) {
        case java_io_FileSystem_ACCESS_READ:
            if (owneronly)
                amode = S_IRUSR;
            else
                amode = S_IRUSR | S_IRGRP | S_IROTH;
            break;
        case java_io_FileSystem_ACCESS_WRITE:
            if (owneronly)
                amode = S_IWUSR;
            else
                amode = S_IWUSR | S_IWGRP | S_IWOTH;
            break;
        case java_io_FileSystem_ACCESS_EXECUTE:
            if (owneronly)
                amode = S_IXUSR;
            else
                amode = S_IXUSR | S_IXGRP | S_IXOTH;
            break;
        default:
            assert(0);
        }
        if (statMode(path, &mode)) {
            if (enable)
                mode |= amode;
            else
                mode &= ~amode;
            if (chmod(path, mode) >= 0) {
                rv = JNI_TRUE;
            }
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}

JNIEXPORT jlong JNICALL
Java_java_io_UnixFileSystem_getLastModifiedTime(JNIEnv *env, jobject this,
                                                jobject file)
{
    jlong rv = 0;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        struct stat64 sb;
        if (stat64(path, &sb) == 0) {
            rv = 1000 * (jlong)sb.st_mtime;
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}


JNIEXPORT jlong JNICALL
Java_java_io_UnixFileSystem_getLength(JNIEnv *env, jobject this,
                                      jobject file)
{
    jlong rv = 0;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        struct stat64 sb;
        if (stat64(path, &sb) == 0) {
            rv = sb.st_size;
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}


/* -- File operations -- */


JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_createFileExclusively(JNIEnv *env, jclass cls,
                                                  jstring pathname)
{
    jboolean rv = JNI_FALSE;

    WITH_PLATFORM_STRING(env, pathname, path) {
        int fd;
        if (!strcmp (path, "/")) {
            fd = JVM_EEXIST;    /* The root directory always exists */
        } else {
            fd = JVM_Open(path, JVM_O_RDWR | JVM_O_CREAT | JVM_O_EXCL, 0666);
        }
        if (fd < 0) {
            if (fd != JVM_EEXIST) {
                JNU_ThrowIOExceptionWithLastError(env, path);
            }
        } else {
            JVM_Close(fd);
            rv = JNI_TRUE;
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}


JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_delete0(JNIEnv *env, jobject this,
                                    jobject file)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {

    	printf("%s[%d] [%lu]: 开始删除文件/目录[%s]...\n", __FILE__, __LINE__, pthread_self(), path);
        if (remove(path) == 0) {
            rv = JNI_TRUE;
        }
    } END_PLATFORM_STRING(env, path);

    return rv;
}


JNIEXPORT jobjectArray JNICALL
Java_java_io_UnixFileSystem_list(JNIEnv *env, jobject this,
                                 jobject file)
{
    DIR *dir = NULL;
    struct dirent64 *ptr;
    struct dirent64 *result;
    int len, maxlen;
    jobjectArray rv, old;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
    	printf("%s[%d] [%lu]: 试图获取目录[%s]的所有子文件/目录...\n", __FILE__, __LINE__, pthread_self(), path);

        dir = opendir(path);
    } END_PLATFORM_STRING(env, path);

    if (dir == NULL) return NULL;

    ptr = malloc(sizeof(struct dirent64) + (PATH_MAX + 1));
    if (ptr == NULL) {
        JNU_ThrowOutOfMemoryError(env, "heap allocation failed");
        closedir(dir);
        return NULL;
    }

    /* Allocate an initial String array */
    len = 0;
    maxlen = 16;
    rv = (*env)->NewObjectArray(env, maxlen, JNU_ClassString(env), NULL);
    if (rv == NULL) goto error;

    /* Scan the directory */
    while ((readdir64_r(dir, ptr, &result) == 0)  && (result != NULL)) {
        jstring name;
        if (!strcmp(ptr->d_name, ".") || !strcmp(ptr->d_name, ".."))
            continue;
        if (len == maxlen) {
            old = rv;
            rv = (*env)->NewObjectArray(env, maxlen <<= 1,
                                        JNU_ClassString(env), NULL);
            if (rv == NULL) goto error;
            if (JNU_CopyObjectArray(env, rv, old, len) < 0) goto error;
            (*env)->DeleteLocalRef(env, old);
        }
        name = JNU_NewStringPlatform(env, ptr->d_name);
        if (name == NULL) goto error;
        (*env)->SetObjectArrayElement(env, rv, len++, name);
        (*env)->DeleteLocalRef(env, name);
    }
    closedir(dir);
    free(ptr);

    /* Copy the final results into an appropriately-sized array */
    old = rv;
    rv = (*env)->NewObjectArray(env, len, JNU_ClassString(env), NULL);
    if (rv == NULL) {
        return NULL;
    }
    if (JNU_CopyObjectArray(env, rv, old, len) < 0) {
        return NULL;
    }
    return rv;

 error:
    closedir(dir);
    free(ptr);
    return NULL;
}


JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_createDirectory(JNIEnv *env, jobject this,
                                            jobject file)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
    	printf("%s[%d] [%lu]: 开始创建一个目录[%s],目录访问权限(0777)...\n", __FILE__, __LINE__, pthread_self(), path);
        if (mkdir(path, 0777) == 0) {
            rv = JNI_TRUE;
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}

/**
 * 重命名文件/目录
 *
 * 系统函数  int rename(const char *oldpath, const char *newpath);
 * 函数说明  1).如果oldname为一个文件而不是目录，那么为该文件更名。
 * 			在这种情况下，如果newname作为一个目录已存在，则它不能重命名一个目录。
 * 			如果newname已存在，而且不是一个目录，则先将其删除然后将oldname更名为newname。
 * 			对oldname所在目录以及newname所在的目录，调用进程必须具有写许可权，因为将更改这两个目录。
 * 			2).如若oldname为一个目录，那么为该目录更名。
 * 			如果newname已存在，则它必须是一个目录，而且该目录应当是空目录（空目录指的是该目录中只有. 和.. 项）。
 * 			如果newname存在（而且是一个空目录），则先将其删除，然后将oldname更名为newname。
 * 			另外，当为一个目录更名时，newname不能包含oldname作为其路径前缀。例如，
 * 			不能将/usr更名为/usr/foo/testdir，因为老名字（ /usr/foo）是新名字的路径前缀，因而不能将其删除。
 * 			3).作为一个特例，如果oldname和newname引用同一文件，则函数不做任何更改而成功返回。
 */
JNIEXPORT jboolean JNICALL Java_java_io_UnixFileSystem_rename0(JNIEnv *env, jobject this,
                                    jobject from, jobject to)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, from, ids.path, fromPath) {
        WITH_FIELD_PLATFORM_STRING(env, to, ids.path, toPath) {
        	printf("%s[%d] [%lu]: 开始将文件/目录[%s]重命名为[%s]...\n", __FILE__, __LINE__, pthread_self(), fromPath, toPath);

            if (rename(fromPath, toPath) == 0) {
                rv = JNI_TRUE;
            }
        } END_PLATFORM_STRING(env, toPath);
    } END_PLATFORM_STRING(env, fromPath);
    return rv;
}

/**
 * 更新文件的最后一次修改时间
 *
 * 系统函数   int _stat(const char *path,struct _stat *buffer)
 * 函数说明   得到文件的信息，将其保存在buf结构中，buf的地址以参数形式传递给stat
 * 数据结构   struct stat {
 * 				dev_t st_dev;  设备
 *				ino_t st_ino;  节点
 *				mode_t st_mode; 模式
 *				nlink_t st_nlink; 硬连接
 *				uid_t st_uid;  用户ID
 *				gid_t st_gid;  组ID
 *				dev_t st_rdev;  设备类型
 *				off_t st_off;  文件字节数
 *				unsigned long st_blksize;  块大小
 *				unsigned long st_blocks;  块数
 *				time_t st_atime;  最后一次访问时间
 *				time_t st_mtime;  最后一次修改时间
 *				time_t st_ctime;  最后一次改变时间(指属性)
 *			}
 */
JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_setLastModifiedTime(JNIEnv *env, jobject this,
                                                jobject file, jlong time)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        struct stat64 sb;

        if (stat64(path, &sb) == 0) {
            struct timeval tv[2];

            /* Preserve access time */
            tv[0].tv_sec = sb.st_atime;
            tv[0].tv_usec = 0;

            /* Change last-modified time */
            tv[1].tv_sec = time / 1000;
            tv[1].tv_usec = (time % 1000) * 1000;

        	printf("%s[%d] [%lu]: 开始更新文件/目录[%s]的访问修改时间,最后一次访问时间(%d:%d),最后一次修改时间(%d:%d)...\n", __FILE__, __LINE__, pthread_self(), tv[0].tv_sec, tv[0].tv_usec, tv[1].tv_sec, tv[1].tv_usec);

            if (utimes(path, tv) == 0)
                rv = JNI_TRUE;
        }
    } END_PLATFORM_STRING(env, path);

    return rv;
}


JNIEXPORT jboolean JNICALL
Java_java_io_UnixFileSystem_setReadOnly(JNIEnv *env, jobject this,
                                        jobject file)
{
    jboolean rv = JNI_FALSE;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        int mode;
        if (statMode(path, &mode)) {
        	printf("%s[%d] [%lu]: 开始将设置文件/目录[%s]的访问权限为只读...\n", __FILE__, __LINE__, pthread_self(), path);

            if (chmod(path, mode & ~(S_IWUSR | S_IWGRP | S_IWOTH)) >= 0) {
                rv = JNI_TRUE;
            }
        }
    } END_PLATFORM_STRING(env, path);
    return rv;
}

JNIEXPORT jlong JNICALL
Java_java_io_UnixFileSystem_getSpace(JNIEnv *env, jobject this,
                                     jobject file, jint t)
{
    jlong rv = 0L;

    WITH_FIELD_PLATFORM_STRING(env, file, ids.path, path) {
        struct statvfs64 fsstat;
        memset(&fsstat, 0, sizeof(fsstat));
        if (statvfs64(path, &fsstat) == 0) {
            switch(t) {
            case java_io_FileSystem_SPACE_TOTAL:
                rv = jlong_mul(long_to_jlong(fsstat.f_frsize),
                               long_to_jlong(fsstat.f_blocks));
                break;
            case java_io_FileSystem_SPACE_FREE:
                rv = jlong_mul(long_to_jlong(fsstat.f_frsize),
                               long_to_jlong(fsstat.f_bfree));
                break;
            case java_io_FileSystem_SPACE_USABLE:
                rv = jlong_mul(long_to_jlong(fsstat.f_frsize),
                               long_to_jlong(fsstat.f_bavail));
                break;
            default:
                assert(0);
            }
        }
    } END_PLATFORM_STRING(env, path);

    return rv;
}
