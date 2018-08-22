################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/windows/native/sun/awt_common/awt_makecube.cpp 

OBJS += \
./src/jdk/windows/native/sun/awt_common/awt_makecube.o 

CPP_DEPS += \
./src/jdk/windows/native/sun/awt_common/awt_makecube.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/awt_common/%.o: ../src/jdk/windows/native/sun/awt_common/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


