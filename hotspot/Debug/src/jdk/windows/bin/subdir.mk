################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/bin/java-rmi.c \
../src/jdk/windows/bin/java_md.c 

OBJS += \
./src/jdk/windows/bin/java-rmi.o \
./src/jdk/windows/bin/java_md.o 

C_DEPS += \
./src/jdk/windows/bin/java-rmi.d \
./src/jdk/windows/bin/java_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/bin/%.o: ../src/jdk/windows/bin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


