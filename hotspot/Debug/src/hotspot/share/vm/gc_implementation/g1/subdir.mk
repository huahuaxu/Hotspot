################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/gc_implementation/g1/collectionSetChooser.cpp \
../src/hotspot/share/vm/gc_implementation/g1/concurrentG1Refine.cpp \
../src/hotspot/share/vm/gc_implementation/g1/concurrentG1RefineThread.cpp \
../src/hotspot/share/vm/gc_implementation/g1/concurrentMark.cpp \
../src/hotspot/share/vm/gc_implementation/g1/concurrentMarkThread.cpp \
../src/hotspot/share/vm/gc_implementation/g1/dirtyCardQueue.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1AllocRegion.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1BlockOffsetTable.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1CollectedHeap.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1CollectorPolicy.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1ErgoVerbose.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1HRPrinter.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1MMUTracker.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1MarkSweep.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1MonitoringSupport.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1RemSet.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1SATBCardTableModRefBS.cpp \
../src/hotspot/share/vm/gc_implementation/g1/g1_globals.cpp \
../src/hotspot/share/vm/gc_implementation/g1/heapRegion.cpp \
../src/hotspot/share/vm/gc_implementation/g1/heapRegionRemSet.cpp \
../src/hotspot/share/vm/gc_implementation/g1/heapRegionSeq.cpp \
../src/hotspot/share/vm/gc_implementation/g1/heapRegionSet.cpp \
../src/hotspot/share/vm/gc_implementation/g1/heapRegionSets.cpp \
../src/hotspot/share/vm/gc_implementation/g1/ptrQueue.cpp \
../src/hotspot/share/vm/gc_implementation/g1/satbQueue.cpp \
../src/hotspot/share/vm/gc_implementation/g1/sparsePRT.cpp \
../src/hotspot/share/vm/gc_implementation/g1/survRateGroup.cpp \
../src/hotspot/share/vm/gc_implementation/g1/vm_operations_g1.cpp 

OBJS += \
./src/hotspot/share/vm/gc_implementation/g1/collectionSetChooser.o \
./src/hotspot/share/vm/gc_implementation/g1/concurrentG1Refine.o \
./src/hotspot/share/vm/gc_implementation/g1/concurrentG1RefineThread.o \
./src/hotspot/share/vm/gc_implementation/g1/concurrentMark.o \
./src/hotspot/share/vm/gc_implementation/g1/concurrentMarkThread.o \
./src/hotspot/share/vm/gc_implementation/g1/dirtyCardQueue.o \
./src/hotspot/share/vm/gc_implementation/g1/g1AllocRegion.o \
./src/hotspot/share/vm/gc_implementation/g1/g1BlockOffsetTable.o \
./src/hotspot/share/vm/gc_implementation/g1/g1CollectedHeap.o \
./src/hotspot/share/vm/gc_implementation/g1/g1CollectorPolicy.o \
./src/hotspot/share/vm/gc_implementation/g1/g1ErgoVerbose.o \
./src/hotspot/share/vm/gc_implementation/g1/g1HRPrinter.o \
./src/hotspot/share/vm/gc_implementation/g1/g1MMUTracker.o \
./src/hotspot/share/vm/gc_implementation/g1/g1MarkSweep.o \
./src/hotspot/share/vm/gc_implementation/g1/g1MonitoringSupport.o \
./src/hotspot/share/vm/gc_implementation/g1/g1RemSet.o \
./src/hotspot/share/vm/gc_implementation/g1/g1SATBCardTableModRefBS.o \
./src/hotspot/share/vm/gc_implementation/g1/g1_globals.o \
./src/hotspot/share/vm/gc_implementation/g1/heapRegion.o \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionRemSet.o \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSeq.o \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSet.o \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSets.o \
./src/hotspot/share/vm/gc_implementation/g1/ptrQueue.o \
./src/hotspot/share/vm/gc_implementation/g1/satbQueue.o \
./src/hotspot/share/vm/gc_implementation/g1/sparsePRT.o \
./src/hotspot/share/vm/gc_implementation/g1/survRateGroup.o \
./src/hotspot/share/vm/gc_implementation/g1/vm_operations_g1.o 

CPP_DEPS += \
./src/hotspot/share/vm/gc_implementation/g1/collectionSetChooser.d \
./src/hotspot/share/vm/gc_implementation/g1/concurrentG1Refine.d \
./src/hotspot/share/vm/gc_implementation/g1/concurrentG1RefineThread.d \
./src/hotspot/share/vm/gc_implementation/g1/concurrentMark.d \
./src/hotspot/share/vm/gc_implementation/g1/concurrentMarkThread.d \
./src/hotspot/share/vm/gc_implementation/g1/dirtyCardQueue.d \
./src/hotspot/share/vm/gc_implementation/g1/g1AllocRegion.d \
./src/hotspot/share/vm/gc_implementation/g1/g1BlockOffsetTable.d \
./src/hotspot/share/vm/gc_implementation/g1/g1CollectedHeap.d \
./src/hotspot/share/vm/gc_implementation/g1/g1CollectorPolicy.d \
./src/hotspot/share/vm/gc_implementation/g1/g1ErgoVerbose.d \
./src/hotspot/share/vm/gc_implementation/g1/g1HRPrinter.d \
./src/hotspot/share/vm/gc_implementation/g1/g1MMUTracker.d \
./src/hotspot/share/vm/gc_implementation/g1/g1MarkSweep.d \
./src/hotspot/share/vm/gc_implementation/g1/g1MonitoringSupport.d \
./src/hotspot/share/vm/gc_implementation/g1/g1RemSet.d \
./src/hotspot/share/vm/gc_implementation/g1/g1SATBCardTableModRefBS.d \
./src/hotspot/share/vm/gc_implementation/g1/g1_globals.d \
./src/hotspot/share/vm/gc_implementation/g1/heapRegion.d \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionRemSet.d \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSeq.d \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSet.d \
./src/hotspot/share/vm/gc_implementation/g1/heapRegionSets.d \
./src/hotspot/share/vm/gc_implementation/g1/ptrQueue.d \
./src/hotspot/share/vm/gc_implementation/g1/satbQueue.d \
./src/hotspot/share/vm/gc_implementation/g1/sparsePRT.d \
./src/hotspot/share/vm/gc_implementation/g1/survRateGroup.d \
./src/hotspot/share/vm/gc_implementation/g1/vm_operations_g1.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/gc_implementation/g1/%.o: ../src/hotspot/share/vm/gc_implementation/g1/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


