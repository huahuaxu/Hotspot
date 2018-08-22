################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/share/sample/vm/clr-jvm/jinvoker.cpp 

OBJS += \
./src/jdk/share/sample/vm/clr-jvm/jinvoker.o 

CPP_DEPS += \
./src/jdk/share/sample/vm/clr-jvm/jinvoker.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/sample/vm/clr-jvm/%.o: ../src/jdk/share/sample/vm/clr-jvm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


