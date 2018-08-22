################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os_cpu/solaris_sparc/vm/assembler_solaris_sparc.cpp \
../src/hotspot/os_cpu/solaris_sparc/vm/os_solaris_sparc.cpp \
../src/hotspot/os_cpu/solaris_sparc/vm/threadLS_solaris_sparc.cpp \
../src/hotspot/os_cpu/solaris_sparc/vm/thread_solaris_sparc.cpp \
../src/hotspot/os_cpu/solaris_sparc/vm/vm_version_solaris_sparc.cpp 

OBJS += \
./src/hotspot/os_cpu/solaris_sparc/vm/assembler_solaris_sparc.o \
./src/hotspot/os_cpu/solaris_sparc/vm/os_solaris_sparc.o \
./src/hotspot/os_cpu/solaris_sparc/vm/threadLS_solaris_sparc.o \
./src/hotspot/os_cpu/solaris_sparc/vm/thread_solaris_sparc.o \
./src/hotspot/os_cpu/solaris_sparc/vm/vm_version_solaris_sparc.o 

CPP_DEPS += \
./src/hotspot/os_cpu/solaris_sparc/vm/assembler_solaris_sparc.d \
./src/hotspot/os_cpu/solaris_sparc/vm/os_solaris_sparc.d \
./src/hotspot/os_cpu/solaris_sparc/vm/threadLS_solaris_sparc.d \
./src/hotspot/os_cpu/solaris_sparc/vm/thread_solaris_sparc.d \
./src/hotspot/os_cpu/solaris_sparc/vm/vm_version_solaris_sparc.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os_cpu/solaris_sparc/vm/%.o: ../src/hotspot/os_cpu/solaris_sparc/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


