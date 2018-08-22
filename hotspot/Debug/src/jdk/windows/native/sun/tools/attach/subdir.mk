################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/tools/attach/WindowsAttachProvider.c \
../src/jdk/windows/native/sun/tools/attach/WindowsVirtualMachine.c 

OBJS += \
./src/jdk/windows/native/sun/tools/attach/WindowsAttachProvider.o \
./src/jdk/windows/native/sun/tools/attach/WindowsVirtualMachine.o 

C_DEPS += \
./src/jdk/windows/native/sun/tools/attach/WindowsAttachProvider.d \
./src/jdk/windows/native/sun/tools/attach/WindowsVirtualMachine.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/tools/attach/%.o: ../src/jdk/windows/native/sun/tools/attach/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


