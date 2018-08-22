################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os_cpu/bsd_zero/vm/assembler_bsd_zero.cpp \
../src/hotspot/os_cpu/bsd_zero/vm/os_bsd_zero.cpp \
../src/hotspot/os_cpu/bsd_zero/vm/threadLS_bsd_zero.cpp \
../src/hotspot/os_cpu/bsd_zero/vm/thread_bsd_zero.cpp \
../src/hotspot/os_cpu/bsd_zero/vm/vm_version_bsd_zero.cpp 

OBJS += \
./src/hotspot/os_cpu/bsd_zero/vm/assembler_bsd_zero.o \
./src/hotspot/os_cpu/bsd_zero/vm/os_bsd_zero.o \
./src/hotspot/os_cpu/bsd_zero/vm/threadLS_bsd_zero.o \
./src/hotspot/os_cpu/bsd_zero/vm/thread_bsd_zero.o \
./src/hotspot/os_cpu/bsd_zero/vm/vm_version_bsd_zero.o 

CPP_DEPS += \
./src/hotspot/os_cpu/bsd_zero/vm/assembler_bsd_zero.d \
./src/hotspot/os_cpu/bsd_zero/vm/os_bsd_zero.d \
./src/hotspot/os_cpu/bsd_zero/vm/threadLS_bsd_zero.d \
./src/hotspot/os_cpu/bsd_zero/vm/thread_bsd_zero.d \
./src/hotspot/os_cpu/bsd_zero/vm/vm_version_bsd_zero.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os_cpu/bsd_zero/vm/%.o: ../src/hotspot/os_cpu/bsd_zero/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


