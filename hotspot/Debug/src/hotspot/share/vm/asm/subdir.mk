################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/asm/assembler.cpp \
../src/hotspot/share/vm/asm/codeBuffer.cpp \
../src/hotspot/share/vm/asm/register.cpp 

OBJS += \
./src/hotspot/share/vm/asm/assembler.o \
./src/hotspot/share/vm/asm/codeBuffer.o \
./src/hotspot/share/vm/asm/register.o 

CPP_DEPS += \
./src/hotspot/share/vm/asm/assembler.d \
./src/hotspot/share/vm/asm/codeBuffer.d \
./src/hotspot/share/vm/asm/register.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/asm/%.o: ../src/hotspot/share/vm/asm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


