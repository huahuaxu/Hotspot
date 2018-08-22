################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os_cpu/linux_zero/vm/assembler_linux_zero.cpp \
../src/hotspot/os_cpu/linux_zero/vm/os_linux_zero.cpp \
../src/hotspot/os_cpu/linux_zero/vm/threadLS_linux_zero.cpp \
../src/hotspot/os_cpu/linux_zero/vm/thread_linux_zero.cpp \
../src/hotspot/os_cpu/linux_zero/vm/vm_version_linux_zero.cpp 

OBJS += \
./src/hotspot/os_cpu/linux_zero/vm/assembler_linux_zero.o \
./src/hotspot/os_cpu/linux_zero/vm/os_linux_zero.o \
./src/hotspot/os_cpu/linux_zero/vm/threadLS_linux_zero.o \
./src/hotspot/os_cpu/linux_zero/vm/thread_linux_zero.o \
./src/hotspot/os_cpu/linux_zero/vm/vm_version_linux_zero.o 

CPP_DEPS += \
./src/hotspot/os_cpu/linux_zero/vm/assembler_linux_zero.d \
./src/hotspot/os_cpu/linux_zero/vm/os_linux_zero.d \
./src/hotspot/os_cpu/linux_zero/vm/threadLS_linux_zero.d \
./src/hotspot/os_cpu/linux_zero/vm/thread_linux_zero.d \
./src/hotspot/os_cpu/linux_zero/vm/vm_version_linux_zero.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os_cpu/linux_zero/vm/%.o: ../src/hotspot/os_cpu/linux_zero/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


