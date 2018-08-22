################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/services/attachListener.cpp \
../src/hotspot/share/vm/services/classLoadingService.cpp \
../src/hotspot/share/vm/services/diagnosticArgument.cpp \
../src/hotspot/share/vm/services/diagnosticCommand.cpp \
../src/hotspot/share/vm/services/diagnosticFramework.cpp \
../src/hotspot/share/vm/services/dtraceAttacher.cpp \
../src/hotspot/share/vm/services/g1MemoryPool.cpp \
../src/hotspot/share/vm/services/gcNotifier.cpp \
../src/hotspot/share/vm/services/heapDumper.cpp \
../src/hotspot/share/vm/services/lowMemoryDetector.cpp \
../src/hotspot/share/vm/services/management.cpp \
../src/hotspot/share/vm/services/memoryManager.cpp \
../src/hotspot/share/vm/services/memoryPool.cpp \
../src/hotspot/share/vm/services/memoryService.cpp \
../src/hotspot/share/vm/services/psMemoryPool.cpp \
../src/hotspot/share/vm/services/runtimeService.cpp \
../src/hotspot/share/vm/services/threadService.cpp 

OBJS += \
./src/hotspot/share/vm/services/attachListener.o \
./src/hotspot/share/vm/services/classLoadingService.o \
./src/hotspot/share/vm/services/diagnosticArgument.o \
./src/hotspot/share/vm/services/diagnosticCommand.o \
./src/hotspot/share/vm/services/diagnosticFramework.o \
./src/hotspot/share/vm/services/dtraceAttacher.o \
./src/hotspot/share/vm/services/g1MemoryPool.o \
./src/hotspot/share/vm/services/gcNotifier.o \
./src/hotspot/share/vm/services/heapDumper.o \
./src/hotspot/share/vm/services/lowMemoryDetector.o \
./src/hotspot/share/vm/services/management.o \
./src/hotspot/share/vm/services/memoryManager.o \
./src/hotspot/share/vm/services/memoryPool.o \
./src/hotspot/share/vm/services/memoryService.o \
./src/hotspot/share/vm/services/psMemoryPool.o \
./src/hotspot/share/vm/services/runtimeService.o \
./src/hotspot/share/vm/services/threadService.o 

CPP_DEPS += \
./src/hotspot/share/vm/services/attachListener.d \
./src/hotspot/share/vm/services/classLoadingService.d \
./src/hotspot/share/vm/services/diagnosticArgument.d \
./src/hotspot/share/vm/services/diagnosticCommand.d \
./src/hotspot/share/vm/services/diagnosticFramework.d \
./src/hotspot/share/vm/services/dtraceAttacher.d \
./src/hotspot/share/vm/services/g1MemoryPool.d \
./src/hotspot/share/vm/services/gcNotifier.d \
./src/hotspot/share/vm/services/heapDumper.d \
./src/hotspot/share/vm/services/lowMemoryDetector.d \
./src/hotspot/share/vm/services/management.d \
./src/hotspot/share/vm/services/memoryManager.d \
./src/hotspot/share/vm/services/memoryPool.d \
./src/hotspot/share/vm/services/memoryService.d \
./src/hotspot/share/vm/services/psMemoryPool.d \
./src/hotspot/share/vm/services/runtimeService.d \
./src/hotspot/share/vm/services/threadService.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/services/%.o: ../src/hotspot/share/vm/services/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


