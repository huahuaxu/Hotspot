################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hotspot/os/posix/launcher/java_md.c 

OBJS += \
./src/hotspot/os/posix/launcher/java_md.o 

C_DEPS += \
./src/hotspot/os/posix/launcher/java_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/posix/launcher/%.o: ../src/hotspot/os/posix/launcher/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


