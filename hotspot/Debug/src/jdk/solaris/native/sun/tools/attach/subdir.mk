################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/tools/attach/BsdVirtualMachine.c \
../src/jdk/solaris/native/sun/tools/attach/LinuxVirtualMachine.c \
../src/jdk/solaris/native/sun/tools/attach/SolarisVirtualMachine.c 

OBJS += \
./src/jdk/solaris/native/sun/tools/attach/BsdVirtualMachine.o \
./src/jdk/solaris/native/sun/tools/attach/LinuxVirtualMachine.o \
./src/jdk/solaris/native/sun/tools/attach/SolarisVirtualMachine.o 

C_DEPS += \
./src/jdk/solaris/native/sun/tools/attach/BsdVirtualMachine.d \
./src/jdk/solaris/native/sun/tools/attach/LinuxVirtualMachine.d \
./src/jdk/solaris/native/sun/tools/attach/SolarisVirtualMachine.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/tools/attach/%.o: ../src/jdk/solaris/native/sun/tools/attach/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


