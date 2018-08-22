################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/demo/jvmti/java_crw_demo/java_crw_demo.c 

OBJS += \
./src/jdk/share/demo/jvmti/java_crw_demo/java_crw_demo.o 

C_DEPS += \
./src/jdk/share/demo/jvmti/java_crw_demo/java_crw_demo.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/demo/jvmti/java_crw_demo/%.o: ../src/jdk/share/demo/jvmti/java_crw_demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


