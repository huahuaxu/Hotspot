################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hotspot/share/tools/hsdis/hsdis-demo.c \
../src/hotspot/share/tools/hsdis/hsdis.c 

OBJS += \
./src/hotspot/share/tools/hsdis/hsdis-demo.o \
./src/hotspot/share/tools/hsdis/hsdis.o 

C_DEPS += \
./src/hotspot/share/tools/hsdis/hsdis-demo.d \
./src/hotspot/share/tools/hsdis/hsdis.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/tools/hsdis/%.o: ../src/hotspot/share/tools/hsdis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


