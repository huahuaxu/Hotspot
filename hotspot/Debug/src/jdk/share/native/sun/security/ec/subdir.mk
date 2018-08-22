################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/share/native/sun/security/ec/ECC_JNI.cpp 

OBJS += \
./src/jdk/share/native/sun/security/ec/ECC_JNI.o 

CPP_DEPS += \
./src/jdk/share/native/sun/security/ec/ECC_JNI.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/security/ec/%.o: ../src/jdk/share/native/sun/security/ec/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


