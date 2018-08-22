################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/security/krb5/NativeCreds.c \
../src/jdk/windows/native/sun/security/krb5/WindowsDirectory.c 

OBJS += \
./src/jdk/windows/native/sun/security/krb5/NativeCreds.o \
./src/jdk/windows/native/sun/security/krb5/WindowsDirectory.o 

C_DEPS += \
./src/jdk/windows/native/sun/security/krb5/NativeCreds.d \
./src/jdk/windows/native/sun/security/krb5/WindowsDirectory.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/security/krb5/%.o: ../src/jdk/windows/native/sun/security/krb5/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


