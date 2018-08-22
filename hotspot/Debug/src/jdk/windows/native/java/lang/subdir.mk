################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/java/lang/ProcessEnvironment_md.c \
../src/jdk/windows/native/java/lang/ProcessImpl_md.c \
../src/jdk/windows/native/java/lang/java_props_md.c 

OBJS += \
./src/jdk/windows/native/java/lang/ProcessEnvironment_md.o \
./src/jdk/windows/native/java/lang/ProcessImpl_md.o \
./src/jdk/windows/native/java/lang/java_props_md.o 

C_DEPS += \
./src/jdk/windows/native/java/lang/ProcessEnvironment_md.d \
./src/jdk/windows/native/java/lang/ProcessImpl_md.d \
./src/jdk/windows/native/java/lang/java_props_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/java/lang/%.o: ../src/jdk/windows/native/java/lang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


