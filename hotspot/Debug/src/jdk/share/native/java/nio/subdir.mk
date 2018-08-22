################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/nio/Bits.c 

OBJS += \
./src/jdk/share/native/java/nio/Bits.o 

C_DEPS += \
./src/jdk/share/native/java/nio/Bits.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/nio/%.o: ../src/jdk/share/native/java/nio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


