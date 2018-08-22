################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/rmi/server/MarshalInputStream.c 

OBJS += \
./src/jdk/share/native/sun/rmi/server/MarshalInputStream.o 

C_DEPS += \
./src/jdk/share/native/sun/rmi/server/MarshalInputStream.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/rmi/server/%.o: ../src/jdk/share/native/sun/rmi/server/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


