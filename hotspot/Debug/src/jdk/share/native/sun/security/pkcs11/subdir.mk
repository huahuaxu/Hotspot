################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/security/pkcs11/j2secmod.c 

OBJS += \
./src/jdk/share/native/sun/security/pkcs11/j2secmod.o 

C_DEPS += \
./src/jdk/share/native/sun/security/pkcs11/j2secmod.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/security/pkcs11/%.o: ../src/jdk/share/native/sun/security/pkcs11/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


