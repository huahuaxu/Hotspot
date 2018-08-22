################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/windows/vm/attachListener_windows.cpp \
../src/hotspot/os/windows/vm/chaitin_windows.cpp \
../src/hotspot/os/windows/vm/decoder_windows.cpp \
../src/hotspot/os/windows/vm/dtraceJSDT_windows.cpp \
../src/hotspot/os/windows/vm/jvm_windows.cpp \
../src/hotspot/os/windows/vm/mutex_windows.cpp \
../src/hotspot/os/windows/vm/osThread_windows.cpp \
../src/hotspot/os/windows/vm/os_windows.cpp \
../src/hotspot/os/windows/vm/perfMemory_windows.cpp \
../src/hotspot/os/windows/vm/stubRoutines_windows.cpp \
../src/hotspot/os/windows/vm/threadCritical_windows.cpp \
../src/hotspot/os/windows/vm/vmError_windows.cpp 

OBJS += \
./src/hotspot/os/windows/vm/attachListener_windows.o \
./src/hotspot/os/windows/vm/chaitin_windows.o \
./src/hotspot/os/windows/vm/decoder_windows.o \
./src/hotspot/os/windows/vm/dtraceJSDT_windows.o \
./src/hotspot/os/windows/vm/jvm_windows.o \
./src/hotspot/os/windows/vm/mutex_windows.o \
./src/hotspot/os/windows/vm/osThread_windows.o \
./src/hotspot/os/windows/vm/os_windows.o \
./src/hotspot/os/windows/vm/perfMemory_windows.o \
./src/hotspot/os/windows/vm/stubRoutines_windows.o \
./src/hotspot/os/windows/vm/threadCritical_windows.o \
./src/hotspot/os/windows/vm/vmError_windows.o 

CPP_DEPS += \
./src/hotspot/os/windows/vm/attachListener_windows.d \
./src/hotspot/os/windows/vm/chaitin_windows.d \
./src/hotspot/os/windows/vm/decoder_windows.d \
./src/hotspot/os/windows/vm/dtraceJSDT_windows.d \
./src/hotspot/os/windows/vm/jvm_windows.d \
./src/hotspot/os/windows/vm/mutex_windows.d \
./src/hotspot/os/windows/vm/osThread_windows.d \
./src/hotspot/os/windows/vm/os_windows.d \
./src/hotspot/os/windows/vm/perfMemory_windows.d \
./src/hotspot/os/windows/vm/stubRoutines_windows.d \
./src/hotspot/os/windows/vm/threadCritical_windows.d \
./src/hotspot/os/windows/vm/vmError_windows.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/windows/vm/%.o: ../src/hotspot/os/windows/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


