################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hotspot/os/windows/launcher/java_md.c 

OBJS += \
./src/hotspot/os/windows/launcher/java_md.o 

C_DEPS += \
./src/hotspot/os/windows/launcher/java_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/windows/launcher/%.o: ../src/hotspot/os/windows/launcher/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


