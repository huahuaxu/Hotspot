################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/security/smartcardio/pcsc.c 

OBJS += \
./src/jdk/share/native/sun/security/smartcardio/pcsc.o 

C_DEPS += \
./src/jdk/share/native/sun/security/smartcardio/pcsc.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/security/smartcardio/%.o: ../src/jdk/share/native/sun/security/smartcardio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


