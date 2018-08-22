################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/image/gif/gifdecoder.c 

OBJS += \
./src/jdk/share/native/sun/awt/image/gif/gifdecoder.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/image/gif/gifdecoder.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/image/gif/%.o: ../src/jdk/share/native/sun/awt/image/gif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


