################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/security/jgss/wrapper/NativeFunc.c 

OBJS += \
./src/jdk/solaris/native/sun/security/jgss/wrapper/NativeFunc.o 

C_DEPS += \
./src/jdk/solaris/native/sun/security/jgss/wrapper/NativeFunc.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/security/jgss/wrapper/%.o: ../src/jdk/solaris/native/sun/security/jgss/wrapper/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


