/*
 * Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
#include "gc_implementation/concurrentMarkSweep/cmsAdaptiveSizePolicy.hpp"
#include "gc_implementation/concurrentMarkSweep/cmsCollectorPolicy.hpp"
#include "gc_implementation/concurrentMarkSweep/cmsGCAdaptivePolicyCounters.hpp"
#include "gc_implementation/parNew/parNewGeneration.hpp"
#include "gc_implementation/shared/gcPolicyCounters.hpp"
#include "gc_implementation/shared/vmGCOperations.hpp"
#include "memory/cardTableRS.hpp"
#include "memory/collectorPolicy.hpp"
#include "memory/gcLocker.inline.hpp"
#include "memory/genCollectedHeap.hpp"
#include "memory/generationSpec.hpp"
#include "memory/space.hpp"
#include "memory/universe.hpp"
#include "runtime/arguments.hpp"
#include "runtime/globals_extension.hpp"
#include "runtime/handles.inline.hpp"
#include "runtime/java.hpp"
#include "runtime/vmThread.hpp"
#ifdef TARGET_OS_FAMILY_linux
# include "thread_linux.inline.hpp"
#endif
#ifdef TARGET_OS_FAMILY_solaris
# include "thread_solaris.inline.hpp"
#endif
#ifdef TARGET_OS_FAMILY_windows
# include "thread_windows.inline.hpp"
#endif
#ifdef TARGET_OS_FAMILY_bsd
# include "thread_bsd.inline.hpp"
#endif

//
// ConcurrentMarkSweepPolicy methods
//

/**
 * CMS 垃圾回收策略
 */
ConcurrentMarkSweepPolicy::ConcurrentMarkSweepPolicy() {

	printf("%s[%d] [tid: %lu]: 开始初始化CMS垃圾回收策略...\n", __FILE__, __LINE__, pthread_self());

	initialize_all();
}

/**
 * 配置内存堆中的各内存代(新生代+旧生代+持久代)
 */
void ConcurrentMarkSweepPolicy::initialize_generations() {

	printf("%s[%d] [tid: %lu]: 开始初始化各内存代的配置(CMS垃圾回收策略)...\n", __FILE__, __LINE__, pthread_self());

	initialize_perm_generation(PermGen::ConcurrentMarkSweep);

	_generations = new GenerationSpecPtr[number_of_generations()];
	if (_generations == NULL)
		vm_exit_during_initialization("Unable to allocate gen spec");

	if (ParNewGeneration::in_use()) {
		if (UseAdaptiveSizePolicy) {
			printf("%s[%d] [tid: %lu]: 新生代内存管理器(CMS垃圾回收策略:ASParNew)...\n", __FILE__, __LINE__, pthread_self());
			_generations[0] = new GenerationSpec(Generation::ASParNew, _initial_gen0_size, _max_gen0_size);
		} else {
			printf("%s[%d] [tid: %lu]: 新生代内存管理器(CMS垃圾回收策略:ParNew)...\n", __FILE__, __LINE__, pthread_self());
			_generations[0] = new GenerationSpec(Generation::ParNew, _initial_gen0_size, _max_gen0_size);
		}
	} else {
		printf("%s[%d] [tid: %lu]: 新生代内存管理器(CMS垃圾回收策略:DefNew)...\n", __FILE__, __LINE__, pthread_self());
		_generations[0] = new GenerationSpec(Generation::DefNew, _initial_gen0_size, _max_gen0_size);
	}

	if (UseAdaptiveSizePolicy) {
		printf("%s[%d] [tid: %lu]: 旧生代内存管理器(CMS垃圾回收策略:ASConcurrentMarkSweep)...\n", __FILE__, __LINE__, pthread_self());
		_generations[1] = new GenerationSpec(Generation::ASConcurrentMarkSweep, _initial_gen1_size, _max_gen1_size);
	} else {
		printf("%s[%d] [tid: %lu]: 旧生代内存管理器(CMS垃圾回收策略:ConcurrentMarkSweep)...\n", __FILE__, __LINE__, pthread_self());
		_generations[1] = new GenerationSpec(Generation::ConcurrentMarkSweep, _initial_gen1_size, _max_gen1_size);
	}

	if (_generations[0] == NULL || _generations[1] == NULL) {
		printf("%s[%d] [tid: %lu]: 新生代或旧生代配置失败!(CMS垃圾回收策略).\n", __FILE__, __LINE__, pthread_self());

		vm_exit_during_initialization("Unable to allocate gen spec");
	}
}

void ConcurrentMarkSweepPolicy::initialize_size_policy(size_t init_eden_size,
                                               size_t init_promo_size,
                                               size_t init_survivor_size) {
  //Minor Gc允许的最大时间
  double max_gc_minor_pause_sec = ((double) MaxGCMinorPauseMillis)/1000.0;
  //Full Gc允许的最大时间
  double max_gc_pause_sec = ((double) MaxGCPauseMillis)/1000.0;

  _size_policy = new CMSAdaptiveSizePolicy(init_eden_size,
                                           init_promo_size,
                                           init_survivor_size,
                                           max_gc_minor_pause_sec,
                                           max_gc_pause_sec,
                                           GCTimeRatio);
}

/**
 * 初始化Gc计数器
 */
void ConcurrentMarkSweepPolicy::initialize_gc_policy_counters() {
  // initialize the policy counters - 2 collectors, 3 generations
  if (ParNewGeneration::in_use()) {
    _gc_policy_counters = new GCPolicyCounters("ParNew:CMS", 2, 3);
  }
  else {
    _gc_policy_counters = new GCPolicyCounters("Copy:CMS", 2, 3);
  }
}

// Returns true if the incremental mode is enabled.
bool ConcurrentMarkSweepPolicy::has_soft_ended_eden()
{
  return CMSIncrementalMode;
}

/**
 * 初始化Gc计数器
 */
void ASConcurrentMarkSweepPolicy::initialize_gc_policy_counters() {

  assert(size_policy() != NULL, "A size policy is required");
  // initialize the policy counters - 2 collectors, 3 generations
  if (ParNewGeneration::in_use()) {
    _gc_policy_counters = new CMSGCAdaptivePolicyCounters("ParNew:CMS", 2, 3,
      size_policy());
  }
  else {
    _gc_policy_counters = new CMSGCAdaptivePolicyCounters("Copy:CMS", 2, 3,
      size_policy());
  }
}
