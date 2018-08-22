################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/memory/allocation.cpp \
../src/hotspot/share/vm/memory/barrierSet.cpp \
../src/hotspot/share/vm/memory/blockOffsetTable.cpp \
../src/hotspot/share/vm/memory/cardTableModRefBS.cpp \
../src/hotspot/share/vm/memory/cardTableRS.cpp \
../src/hotspot/share/vm/memory/classify.cpp \
../src/hotspot/share/vm/memory/collectorPolicy.cpp \
../src/hotspot/share/vm/memory/compactingPermGenGen.cpp \
../src/hotspot/share/vm/memory/defNewGeneration.cpp \
../src/hotspot/share/vm/memory/dump.cpp \
../src/hotspot/share/vm/memory/filemap.cpp \
../src/hotspot/share/vm/memory/gcLocker.cpp \
../src/hotspot/share/vm/memory/genCollectedHeap.cpp \
../src/hotspot/share/vm/memory/genMarkSweep.cpp \
../src/hotspot/share/vm/memory/genRemSet.cpp \
../src/hotspot/share/vm/memory/generation.cpp \
../src/hotspot/share/vm/memory/generationSpec.cpp \
../src/hotspot/share/vm/memory/heap.cpp \
../src/hotspot/share/vm/memory/heapInspection.cpp \
../src/hotspot/share/vm/memory/iterator.cpp \
../src/hotspot/share/vm/memory/memRegion.cpp \
../src/hotspot/share/vm/memory/oopFactory.cpp \
../src/hotspot/share/vm/memory/permGen.cpp \
../src/hotspot/share/vm/memory/referencePolicy.cpp \
../src/hotspot/share/vm/memory/referenceProcessor.cpp \
../src/hotspot/share/vm/memory/resourceArea.cpp \
../src/hotspot/share/vm/memory/restore.cpp \
../src/hotspot/share/vm/memory/serialize.cpp \
../src/hotspot/share/vm/memory/sharedHeap.cpp \
../src/hotspot/share/vm/memory/space.cpp \
../src/hotspot/share/vm/memory/specialized_oop_closures.cpp \
../src/hotspot/share/vm/memory/tenuredGeneration.cpp \
../src/hotspot/share/vm/memory/threadLocalAllocBuffer.cpp \
../src/hotspot/share/vm/memory/universe.cpp 

OBJS += \
./src/hotspot/share/vm/memory/allocation.o \
./src/hotspot/share/vm/memory/barrierSet.o \
./src/hotspot/share/vm/memory/blockOffsetTable.o \
./src/hotspot/share/vm/memory/cardTableModRefBS.o \
./src/hotspot/share/vm/memory/cardTableRS.o \
./src/hotspot/share/vm/memory/classify.o \
./src/hotspot/share/vm/memory/collectorPolicy.o \
./src/hotspot/share/vm/memory/compactingPermGenGen.o \
./src/hotspot/share/vm/memory/defNewGeneration.o \
./src/hotspot/share/vm/memory/dump.o \
./src/hotspot/share/vm/memory/filemap.o \
./src/hotspot/share/vm/memory/gcLocker.o \
./src/hotspot/share/vm/memory/genCollectedHeap.o \
./src/hotspot/share/vm/memory/genMarkSweep.o \
./src/hotspot/share/vm/memory/genRemSet.o \
./src/hotspot/share/vm/memory/generation.o \
./src/hotspot/share/vm/memory/generationSpec.o \
./src/hotspot/share/vm/memory/heap.o \
./src/hotspot/share/vm/memory/heapInspection.o \
./src/hotspot/share/vm/memory/iterator.o \
./src/hotspot/share/vm/memory/memRegion.o \
./src/hotspot/share/vm/memory/oopFactory.o \
./src/hotspot/share/vm/memory/permGen.o \
./src/hotspot/share/vm/memory/referencePolicy.o \
./src/hotspot/share/vm/memory/referenceProcessor.o \
./src/hotspot/share/vm/memory/resourceArea.o \
./src/hotspot/share/vm/memory/restore.o \
./src/hotspot/share/vm/memory/serialize.o \
./src/hotspot/share/vm/memory/sharedHeap.o \
./src/hotspot/share/vm/memory/space.o \
./src/hotspot/share/vm/memory/specialized_oop_closures.o \
./src/hotspot/share/vm/memory/tenuredGeneration.o \
./src/hotspot/share/vm/memory/threadLocalAllocBuffer.o \
./src/hotspot/share/vm/memory/universe.o 

CPP_DEPS += \
./src/hotspot/share/vm/memory/allocation.d \
./src/hotspot/share/vm/memory/barrierSet.d \
./src/hotspot/share/vm/memory/blockOffsetTable.d \
./src/hotspot/share/vm/memory/cardTableModRefBS.d \
./src/hotspot/share/vm/memory/cardTableRS.d \
./src/hotspot/share/vm/memory/classify.d \
./src/hotspot/share/vm/memory/collectorPolicy.d \
./src/hotspot/share/vm/memory/compactingPermGenGen.d \
./src/hotspot/share/vm/memory/defNewGeneration.d \
./src/hotspot/share/vm/memory/dump.d \
./src/hotspot/share/vm/memory/filemap.d \
./src/hotspot/share/vm/memory/gcLocker.d \
./src/hotspot/share/vm/memory/genCollectedHeap.d \
./src/hotspot/share/vm/memory/genMarkSweep.d \
./src/hotspot/share/vm/memory/genRemSet.d \
./src/hotspot/share/vm/memory/generation.d \
./src/hotspot/share/vm/memory/generationSpec.d \
./src/hotspot/share/vm/memory/heap.d \
./src/hotspot/share/vm/memory/heapInspection.d \
./src/hotspot/share/vm/memory/iterator.d \
./src/hotspot/share/vm/memory/memRegion.d \
./src/hotspot/share/vm/memory/oopFactory.d \
./src/hotspot/share/vm/memory/permGen.d \
./src/hotspot/share/vm/memory/referencePolicy.d \
./src/hotspot/share/vm/memory/referenceProcessor.d \
./src/hotspot/share/vm/memory/resourceArea.d \
./src/hotspot/share/vm/memory/restore.d \
./src/hotspot/share/vm/memory/serialize.d \
./src/hotspot/share/vm/memory/sharedHeap.d \
./src/hotspot/share/vm/memory/space.d \
./src/hotspot/share/vm/memory/specialized_oop_closures.d \
./src/hotspot/share/vm/memory/tenuredGeneration.d \
./src/hotspot/share/vm/memory/threadLocalAllocBuffer.d \
./src/hotspot/share/vm/memory/universe.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/memory/%.o: ../src/hotspot/share/vm/memory/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


