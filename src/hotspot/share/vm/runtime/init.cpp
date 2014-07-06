/*
 * Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
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
 *
 */

#include "precompiled.hpp"
#include "classfile/symbolTable.hpp"
#include "code/icBuffer.hpp"
#include "gc_interface/collectedHeap.hpp"
#include "interpreter/bytecodes.hpp"
#include "memory/universe.hpp"
#include "prims/methodHandles.hpp"
#include "runtime/handles.inline.hpp"
#include "runtime/icache.hpp"
#include "runtime/init.hpp"
#include "runtime/safepoint.hpp"
#include "runtime/sharedRuntime.hpp"

// Initialization done by VM thread in vm_init_globals()
void check_ThreadShadow();
void eventlog_init();
void mutex_init();
void chunkpool_init();
void perfMemory_init();

// Initialization done by Java thread in init_globals()
void management_init();
void bytecodes_init();
void classLoader_init();
void codeCache_init();
void VM_Version_init();
void os_init_globals();        // depends on VM_Version_init, before universe_init
void stubRoutines_init1();
jint universe_init();          // depends on codeCache_init and stubRoutines_init
void interpreter_init();       // before any methods loaded
void invocationCounter_init(); // before any methods loaded
void marksweep_init();
void accessFlags_init();
void templateTable_init();
void InterfaceSupport_init();
void universe2_init();  // dependent on codeCache_init and stubRoutines_init, loads primordial classes
void referenceProcessor_init();
void jni_handles_init();
void vmStructs_init();

void vtableStubs_init();
void InlineCacheBuffer_init();
void compilerOracle_init();
void compilationPolicy_init();
void compileBroker_init();

// Initialization after compiler initialization
bool universe_post_init();  // must happen after compiler_init
void javaClasses_init();  // must happen after vtable initialization
void stubRoutines_init2(); // note: StubRoutines need 2-phase init

// Do not disable thread-local-storage, as it is important for some
// JNI/JVM/JVMTI functions and signal handlers to work properly
// during VM shutdown
void perfMemory_exit();
void ostream_exit();

/**
 * 初始化全局数据结构
 * 	1.检查ThreadShadow类的_pending_exception属性是否被子类Thread覆盖
 * 	2.Java基本类型系统
 * 	3.全局事件缓冲区(事件队列)
 * 	4.全局锁
 * 	5.内存块缓存池ChunkPool
 * 	6.JVM性能统计数据区
 */
void vm_init_globals() {
  check_ThreadShadow();
  basic_types_init();
  eventlog_init();
  mutex_init();
  chunkpool_init();
  perfMemory_init();
}

/**
 * 初始化JVM的全局组件：
 * 1).各类管理API的计数器
 * 2).JVM的操作码(指令集)
 * 3).启动类装载器
 * 4).初始化代码缓存器
 * 5).JVM版本初始化
 * 6).操作系统抽象层初始化
 * 7).JVM执行引擎第一次初始化
 * 8).初始化内存堆管理器
 * 9).
 */
jint init_globals() {
  HandleMark hm;

  //初始化各类管理器的计数器
  management_init();

  //初始化JVM的操作码(指令集)
  bytecodes_init();

  //初始化启动类装载器
  classLoader_init();

  //初始化代码缓存器
  codeCache_init();

  //JVM版本初始化
  VM_Version_init();

  //操作系统抽象层初始化(当前版本是个空方法)
  os_init_globals();

  //JVM执行引擎第一次初始化
  stubRoutines_init1();

  //初始化内存堆管理器
  jint status = universe_init();  // dependent on codeCache_init and
                                  // stubRoutines_init1
  if (status != JNI_OK)
    return status;

  //初始化JVM字节码解释器
  interpreter_init();  // before any methods loaded

  invocationCounter_init();  // before any methods loaded

  marksweep_init();

  accessFlags_init();

  //
  templateTable_init();

  InterfaceSupport_init();
  SharedRuntime::generate_stubs();

  universe2_init();  // dependent on codeCache_init and stubRoutines_init1

  //初始化引用(软引用/弱引用/虚引用)管理器
  referenceProcessor_init();
  jni_handles_init();

#ifndef VM_STRUCTS_KERNEL
  vmStructs_init();
#endif // VM_STRUCTS_KERNEL

  vtableStubs_init();
  InlineCacheBuffer_init();
  compilerOracle_init();
  compilationPolicy_init();
  compileBroker_init();
  VMRegImpl::set_regName();

  if (!universe_post_init()) {
    return JNI_ERR;
  }

  javaClasses_init();   // must happen after vtable initialization

  //JVM执行引擎第一次初始化
  stubRoutines_init2(); // note: StubRoutines need 2-phase init

  // Although we'd like to, we can't easily do a heap verify
  // here because the main thread isn't yet a JavaThread, so
  // its TLAB may not be made parseable from the usual interfaces.
  if (VerifyBeforeGC && !UseTLAB &&
      Universe::heap()->total_collections() >= VerifyGCStartAt) {
    Universe::heap()->prepare_for_verify();
    Universe::verify();   // make sure we're starting with a clean slate
  }

  // All the flags that get adjusted by VM_Version_init and os::init_2
  // have been set so dump the flags now.
  if (PrintFlagsFinal) {
    CommandLineFlags::printFlags(tty, false);
  }

  return JNI_OK;
}


void exit_globals() {
  static bool destructorsCalled = false;
  if (!destructorsCalled) {
    destructorsCalled = true;
    perfMemory_exit();
    if (PrintSafepointStatistics) {
      // Print the collected safepoint statistics.
      SafepointSynchronize::print_stat_on_exit();
    }
    if (PrintStringTableStatistics) {
      SymbolTable::dump(tty);
      StringTable::dump(tty);
    }
    ostream_exit();
  }
}


static bool _init_completed = false;

bool is_init_completed() {
  return _init_completed;
}


void set_init_completed() {
  assert(Universe::is_fully_initialized(), "Should have completed initialization");
  _init_completed = true;
}
