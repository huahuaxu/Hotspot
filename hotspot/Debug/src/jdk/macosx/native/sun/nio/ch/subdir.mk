################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/macosx/native/sun/nio/ch/KQueueArrayWrapper.c 

OBJS += \
./src/jdk/macosx/native/sun/nio/ch/KQueueArrayWrapper.o 

C_DEPS += \
./src/jdk/macosx/native/sun/nio/ch/KQueueArrayWrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/macosx/native/sun/nio/ch/%.o: ../src/jdk/macosx/native/sun/nio/ch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


