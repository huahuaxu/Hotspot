################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os_cpu/linux_sparc/vm/assembler_linux_sparc.cpp \
../src/hotspot/os_cpu/linux_sparc/vm/os_linux_sparc.cpp \
../src/hotspot/os_cpu/linux_sparc/vm/threadLS_linux_sparc.cpp \
../src/hotspot/os_cpu/linux_sparc/vm/thread_linux_sparc.cpp \
../src/hotspot/os_cpu/linux_sparc/vm/vm_version_linux_sparc.cpp 

OBJS += \
./src/hotspot/os_cpu/linux_sparc/vm/assembler_linux_sparc.o \
./src/hotspot/os_cpu/linux_sparc/vm/os_linux_sparc.o \
./src/hotspot/os_cpu/linux_sparc/vm/threadLS_linux_sparc.o \
./src/hotspot/os_cpu/linux_sparc/vm/thread_linux_sparc.o \
./src/hotspot/os_cpu/linux_sparc/vm/vm_version_linux_sparc.o 

CPP_DEPS += \
./src/hotspot/os_cpu/linux_sparc/vm/assembler_linux_sparc.d \
./src/hotspot/os_cpu/linux_sparc/vm/os_linux_sparc.d \
./src/hotspot/os_cpu/linux_sparc/vm/threadLS_linux_sparc.d \
./src/hotspot/os_cpu/linux_sparc/vm/thread_linux_sparc.d \
./src/hotspot/os_cpu/linux_sparc/vm/vm_version_linux_sparc.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os_cpu/linux_sparc/vm/%.o: ../src/hotspot/os_cpu/linux_sparc/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


