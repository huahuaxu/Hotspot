################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/java/util/FileSystemPreferences.c \
../src/jdk/solaris/native/java/util/TimeZone_md.c \
../src/jdk/solaris/native/java/util/logging.c 

OBJS += \
./src/jdk/solaris/native/java/util/FileSystemPreferences.o \
./src/jdk/solaris/native/java/util/TimeZone_md.o \
./src/jdk/solaris/native/java/util/logging.o 

C_DEPS += \
./src/jdk/solaris/native/java/util/FileSystemPreferences.d \
./src/jdk/solaris/native/java/util/TimeZone_md.d \
./src/jdk/solaris/native/java/util/logging.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/java/util/%.o: ../src/jdk/solaris/native/java/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


