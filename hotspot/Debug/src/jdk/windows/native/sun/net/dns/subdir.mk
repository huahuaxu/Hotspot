################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/net/dns/ResolverConfigurationImpl.c 

OBJS += \
./src/jdk/windows/native/sun/net/dns/ResolverConfigurationImpl.o 

C_DEPS += \
./src/jdk/windows/native/sun/net/dns/ResolverConfigurationImpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/net/dns/%.o: ../src/jdk/windows/native/sun/net/dns/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


