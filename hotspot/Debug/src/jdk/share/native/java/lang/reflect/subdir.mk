################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/lang/reflect/Array.c \
../src/jdk/share/native/java/lang/reflect/Proxy.c 

OBJS += \
./src/jdk/share/native/java/lang/reflect/Array.o \
./src/jdk/share/native/java/lang/reflect/Proxy.o 

C_DEPS += \
./src/jdk/share/native/java/lang/reflect/Array.d \
./src/jdk/share/native/java/lang/reflect/Proxy.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/lang/reflect/%.o: ../src/jdk/share/native/java/lang/reflect/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


