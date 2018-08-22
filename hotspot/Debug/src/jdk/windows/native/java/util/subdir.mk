################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/java/util/TimeZone_md.c \
../src/jdk/windows/native/java/util/WindowsPreferences.c \
../src/jdk/windows/native/java/util/logging.c 

OBJS += \
./src/jdk/windows/native/java/util/TimeZone_md.o \
./src/jdk/windows/native/java/util/WindowsPreferences.o \
./src/jdk/windows/native/java/util/logging.o 

C_DEPS += \
./src/jdk/windows/native/java/util/TimeZone_md.d \
./src/jdk/windows/native/java/util/WindowsPreferences.d \
./src/jdk/windows/native/java/util/logging.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/java/util/%.o: ../src/jdk/windows/native/java/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


