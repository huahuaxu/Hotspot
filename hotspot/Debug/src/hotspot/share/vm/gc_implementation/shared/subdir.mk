################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/gc_implementation/shared/adaptiveSizePolicy.cpp \
../src/hotspot/share/vm/gc_implementation/shared/ageTable.cpp \
../src/hotspot/share/vm/gc_implementation/shared/allocationStats.cpp \
../src/hotspot/share/vm/gc_implementation/shared/cSpaceCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/collectorCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/concurrentGCThread.cpp \
../src/hotspot/share/vm/gc_implementation/shared/gSpaceCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/gcAdaptivePolicyCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/gcPolicyCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/gcStats.cpp \
../src/hotspot/share/vm/gc_implementation/shared/gcUtil.cpp \
../src/hotspot/share/vm/gc_implementation/shared/generationCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/hSpaceCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/immutableSpace.cpp \
../src/hotspot/share/vm/gc_implementation/shared/markSweep.cpp \
../src/hotspot/share/vm/gc_implementation/shared/mutableNUMASpace.cpp \
../src/hotspot/share/vm/gc_implementation/shared/mutableSpace.cpp \
../src/hotspot/share/vm/gc_implementation/shared/spaceCounters.cpp \
../src/hotspot/share/vm/gc_implementation/shared/spaceDecorator.cpp \
../src/hotspot/share/vm/gc_implementation/shared/vmGCOperations.cpp 

OBJS += \
./src/hotspot/share/vm/gc_implementation/shared/adaptiveSizePolicy.o \
./src/hotspot/share/vm/gc_implementation/shared/ageTable.o \
./src/hotspot/share/vm/gc_implementation/shared/allocationStats.o \
./src/hotspot/share/vm/gc_implementation/shared/cSpaceCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/collectorCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/concurrentGCThread.o \
./src/hotspot/share/vm/gc_implementation/shared/gSpaceCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/gcAdaptivePolicyCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/gcPolicyCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/gcStats.o \
./src/hotspot/share/vm/gc_implementation/shared/gcUtil.o \
./src/hotspot/share/vm/gc_implementation/shared/generationCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/hSpaceCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/immutableSpace.o \
./src/hotspot/share/vm/gc_implementation/shared/markSweep.o \
./src/hotspot/share/vm/gc_implementation/shared/mutableNUMASpace.o \
./src/hotspot/share/vm/gc_implementation/shared/mutableSpace.o \
./src/hotspot/share/vm/gc_implementation/shared/spaceCounters.o \
./src/hotspot/share/vm/gc_implementation/shared/spaceDecorator.o \
./src/hotspot/share/vm/gc_implementation/shared/vmGCOperations.o 

CPP_DEPS += \
./src/hotspot/share/vm/gc_implementation/shared/adaptiveSizePolicy.d \
./src/hotspot/share/vm/gc_implementation/shared/ageTable.d \
./src/hotspot/share/vm/gc_implementation/shared/allocationStats.d \
./src/hotspot/share/vm/gc_implementation/shared/cSpaceCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/collectorCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/concurrentGCThread.d \
./src/hotspot/share/vm/gc_implementation/shared/gSpaceCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/gcAdaptivePolicyCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/gcPolicyCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/gcStats.d \
./src/hotspot/share/vm/gc_implementation/shared/gcUtil.d \
./src/hotspot/share/vm/gc_implementation/shared/generationCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/hSpaceCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/immutableSpace.d \
./src/hotspot/share/vm/gc_implementation/shared/markSweep.d \
./src/hotspot/share/vm/gc_implementation/shared/mutableNUMASpace.d \
./src/hotspot/share/vm/gc_implementation/shared/mutableSpace.d \
./src/hotspot/share/vm/gc_implementation/shared/spaceCounters.d \
./src/hotspot/share/vm/gc_implementation/shared/spaceDecorator.d \
./src/hotspot/share/vm/gc_implementation/shared/vmGCOperations.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/gc_implementation/shared/%.o: ../src/hotspot/share/vm/gc_implementation/shared/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


