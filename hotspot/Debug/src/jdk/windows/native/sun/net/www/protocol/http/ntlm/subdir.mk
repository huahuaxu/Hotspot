################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/net/www/protocol/http/ntlm/NTLMAuthSequence.c 

OBJS += \
./src/jdk/windows/native/sun/net/www/protocol/http/ntlm/NTLMAuthSequence.o 

C_DEPS += \
./src/jdk/windows/native/sun/net/www/protocol/http/ntlm/NTLMAuthSequence.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/net/www/protocol/http/ntlm/%.o: ../src/jdk/windows/native/sun/net/www/protocol/http/ntlm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


