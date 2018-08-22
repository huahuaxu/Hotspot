################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/java/nio/MappedByteBuffer.c 

OBJS += \
./src/jdk/solaris/native/java/nio/MappedByteBuffer.o 

C_DEPS += \
./src/jdk/solaris/native/java/nio/MappedByteBuffer.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/java/nio/%.o: ../src/jdk/solaris/native/java/nio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


