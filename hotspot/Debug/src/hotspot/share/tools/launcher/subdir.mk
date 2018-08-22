################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hotspot/share/tools/launcher/java.c \
../src/hotspot/share/tools/launcher/jli_util.c \
../src/hotspot/share/tools/launcher/wildcard.c 

OBJS += \
./src/hotspot/share/tools/launcher/java.o \
./src/hotspot/share/tools/launcher/jli_util.o \
./src/hotspot/share/tools/launcher/wildcard.o 

C_DEPS += \
./src/hotspot/share/tools/launcher/java.d \
./src/hotspot/share/tools/launcher/jli_util.d \
./src/hotspot/share/tools/launcher/wildcard.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/tools/launcher/%.o: ../src/hotspot/share/tools/launcher/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


