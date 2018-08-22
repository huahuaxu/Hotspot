################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os_cpu/bsd_x86/vm/assembler_bsd_x86.cpp \
../src/hotspot/os_cpu/bsd_x86/vm/os_bsd_x86.cpp \
../src/hotspot/os_cpu/bsd_x86/vm/threadLS_bsd_x86.cpp \
../src/hotspot/os_cpu/bsd_x86/vm/thread_bsd_x86.cpp \
../src/hotspot/os_cpu/bsd_x86/vm/vm_version_bsd_x86.cpp 

OBJS += \
./src/hotspot/os_cpu/bsd_x86/vm/assembler_bsd_x86.o \
./src/hotspot/os_cpu/bsd_x86/vm/os_bsd_x86.o \
./src/hotspot/os_cpu/bsd_x86/vm/threadLS_bsd_x86.o \
./src/hotspot/os_cpu/bsd_x86/vm/thread_bsd_x86.o \
./src/hotspot/os_cpu/bsd_x86/vm/vm_version_bsd_x86.o 

CPP_DEPS += \
./src/hotspot/os_cpu/bsd_x86/vm/assembler_bsd_x86.d \
./src/hotspot/os_cpu/bsd_x86/vm/os_bsd_x86.d \
./src/hotspot/os_cpu/bsd_x86/vm/threadLS_bsd_x86.d \
./src/hotspot/os_cpu/bsd_x86/vm/thread_bsd_x86.d \
./src/hotspot/os_cpu/bsd_x86/vm/vm_version_bsd_x86.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os_cpu/bsd_x86/vm/%.o: ../src/hotspot/os_cpu/bsd_x86/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


