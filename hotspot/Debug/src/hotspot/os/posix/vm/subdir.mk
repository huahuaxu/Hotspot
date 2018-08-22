################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/posix/vm/os_posix.cpp 

OBJS += \
./src/hotspot/os/posix/vm/os_posix.o 

CPP_DEPS += \
./src/hotspot/os/posix/vm/os_posix.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/posix/vm/%.o: ../src/hotspot/os/posix/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


