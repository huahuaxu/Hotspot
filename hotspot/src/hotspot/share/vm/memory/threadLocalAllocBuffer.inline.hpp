/*
 * Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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

#ifndef SHARE_VM_MEMORY_THREADLOCALALLOCBUFFER_INLINE_HPP
#define SHARE_VM_MEMORY_THREADLOCALALLOCBUFFER_INLINE_HPP

#include "gc_interface/collectedHeap.hpp"
#include "memory/threadLocalAllocBuffer.hpp"
#include "runtime/atomic.hpp"
#include "runtime/thread.hpp"
#include "utilities/copy.hpp"

/**
 * 从当前线程的本地分配缓冲区中分配指定大小的内存块
 */
inline HeapWord* ThreadLocalAllocBuffer::allocate(size_t size) {
  invariants();

  HeapWord* obj = top();
  if (pointer_delta(end(), obj) >= size) {	//缓冲区的空闲内存足够本次分配
    // successful thread-local allocation
#ifdef ASSERT
    // Skip mangling the space corresponding to the object header to
    // ensure that the returned space is not considered parsable by
    // any concurrent GC thread.
    size_t hdr_size = oopDesc::header_size();
    Copy::fill_to_words(obj + hdr_size, size - hdr_size, badHeapWordVal);
#endif // ASSERT

    //重置缓冲区分配内存的开始位置
    set_top(obj + size);

    invariants();
    return obj;
  }

  return NULL;
}

/**
 * 计算当前线程的本地分配缓冲区的新大小
 */
inline size_t ThreadLocalAllocBuffer::compute_size(size_t obj_size) {
  const size_t aligned_obj_size = align_object_size(obj_size);

  // Compute the size for the new TLAB.
  // The "last" tlab may be smaller to reduce fragmentation.
  // unsafe_max_tlab_alloc is just a hint.
  const size_t available_size = Universe::heap()->unsafe_max_tlab_alloc(myThread()) / HeapWordSize;
  size_t new_tlab_size = MIN2(available_size, desired_size() + aligned_obj_size);

  // Make sure there's enough room for object and filler int[].
  const size_t obj_plus_filler_size = aligned_obj_size + alignment_reserve();
  if (new_tlab_size < obj_plus_filler_size) {
    // If there isn't enough room for the allocation, return failure.
    if (PrintTLAB && Verbose) {
      gclog_or_tty->print_cr("ThreadLocalAllocBuffer::compute_size(" SIZE_FORMAT ")"
                    " returns failure",
                    obj_size);
    }
    return 0;
  }

  if (PrintTLAB && Verbose) {
    gclog_or_tty->print_cr("ThreadLocalAllocBuffer::compute_size(" SIZE_FORMAT ")"
                  " returns " SIZE_FORMAT,
                  obj_size, new_tlab_size);
  }
  return new_tlab_size;
}


void ThreadLocalAllocBuffer::record_slow_allocation(size_t obj_size) {
  // Raise size required to bypass TLAB next time. Why? Else there's
  // a risk that a thread that repeatedly allocates objects of one
  // size will get stuck on this slow path.

  set_refill_waste_limit(refill_waste_limit() + refill_waste_limit_increment());

  _slow_allocations++;

  if (PrintTLAB && Verbose) {
    Thread* thrd = myThread();
    gclog_or_tty->print("TLAB: %s thread: "INTPTR_FORMAT" [id: %2d]"
                        " obj: "SIZE_FORMAT
                        " free: "SIZE_FORMAT
                        " waste: "SIZE_FORMAT"\n",
                        "slow", thrd, thrd->osthread()->thread_id(),
                        obj_size, free(), refill_waste_limit());
  }
}

#endif // SHARE_VM_MEMORY_THREADLOCALALLOCBUFFER_INLINE_HPP
