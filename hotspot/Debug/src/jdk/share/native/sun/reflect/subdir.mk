################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/reflect/ConstantPool.c \
../src/jdk/share/native/sun/reflect/NativeAccessors.c \
../src/jdk/share/native/sun/reflect/Reflection.c 

OBJS += \
./src/jdk/share/native/sun/reflect/ConstantPool.o \
./src/jdk/share/native/sun/reflect/NativeAccessors.o \
./src/jdk/share/native/sun/reflect/Reflection.o 

C_DEPS += \
./src/jdk/share/native/sun/reflect/ConstantPool.d \
./src/jdk/share/native/sun/reflect/NativeAccessors.d \
./src/jdk/share/native/sun/reflect/Reflection.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/reflect/%.o: ../src/jdk/share/native/sun/reflect/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


