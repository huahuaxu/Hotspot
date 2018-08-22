################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningGenerations.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningVirtualSpaces.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSOldGen.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSYoungGen.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/cardTableExtension.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskManager.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskThread.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/objectStartArray.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/parMarkBitMap.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/parallelScavengeHeap.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/pcTasks.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psAdaptiveSizePolicy.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psCompactionManager.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psGCAdaptivePolicyCounters.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psGenerationCounters.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweep.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweepDecorator.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psOldGen.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psParallelCompact.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psPermGen.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionLAB.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionManager.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psScavenge.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psTasks.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psVirtualspace.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/psYoungGen.cpp \
../src/hotspot/share/vm/gc_implementation/parallelScavenge/vmPSOperations.cpp 

OBJS += \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningGenerations.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningVirtualSpaces.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSOldGen.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSYoungGen.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/cardTableExtension.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskManager.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskThread.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/objectStartArray.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/parMarkBitMap.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/parallelScavengeHeap.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/pcTasks.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psAdaptiveSizePolicy.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psCompactionManager.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psGCAdaptivePolicyCounters.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psGenerationCounters.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweep.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweepDecorator.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psOldGen.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psParallelCompact.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPermGen.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionLAB.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionManager.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psScavenge.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psTasks.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psVirtualspace.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psYoungGen.o \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/vmPSOperations.o 

CPP_DEPS += \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningGenerations.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/adjoiningVirtualSpaces.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSOldGen.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/asPSYoungGen.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/cardTableExtension.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskManager.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/gcTaskThread.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/objectStartArray.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/parMarkBitMap.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/parallelScavengeHeap.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/pcTasks.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psAdaptiveSizePolicy.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psCompactionManager.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psGCAdaptivePolicyCounters.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psGenerationCounters.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweep.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psMarkSweepDecorator.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psOldGen.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psParallelCompact.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPermGen.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionLAB.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psPromotionManager.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psScavenge.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psTasks.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psVirtualspace.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/psYoungGen.d \
./src/hotspot/share/vm/gc_implementation/parallelScavenge/vmPSOperations.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/gc_implementation/parallelScavenge/%.o: ../src/hotspot/share/vm/gc_implementation/parallelScavenge/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


