################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/common/check_code.c \
../src/jdk/share/native/common/check_format.c \
../src/jdk/share/native/common/check_version.c \
../src/jdk/share/native/common/jdk_util.c \
../src/jdk/share/native/common/jio.c \
../src/jdk/share/native/common/jni_util.c \
../src/jdk/share/native/common/verify_stub.c 

OBJS += \
./src/jdk/share/native/common/check_code.o \
./src/jdk/share/native/common/check_format.o \
./src/jdk/share/native/common/check_version.o \
./src/jdk/share/native/common/jdk_util.o \
./src/jdk/share/native/common/jio.o \
./src/jdk/share/native/common/jni_util.o \
./src/jdk/share/native/common/verify_stub.o 

C_DEPS += \
./src/jdk/share/native/common/check_code.d \
./src/jdk/share/native/common/check_format.d \
./src/jdk/share/native/common/check_version.d \
./src/jdk/share/native/common/jdk_util.d \
./src/jdk/share/native/common/jio.d \
./src/jdk/share/native/common/jni_util.d \
./src/jdk/share/native/common/verify_stub.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/common/%.o: ../src/jdk/share/native/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


