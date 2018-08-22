################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/debug/debug_assert.c \
../src/jdk/share/native/sun/awt/debug/debug_mem.c \
../src/jdk/share/native/sun/awt/debug/debug_trace.c \
../src/jdk/share/native/sun/awt/debug/debug_util.c 

OBJS += \
./src/jdk/share/native/sun/awt/debug/debug_assert.o \
./src/jdk/share/native/sun/awt/debug/debug_mem.o \
./src/jdk/share/native/sun/awt/debug/debug_trace.o \
./src/jdk/share/native/sun/awt/debug/debug_util.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/debug/debug_assert.d \
./src/jdk/share/native/sun/awt/debug/debug_mem.d \
./src/jdk/share/native/sun/awt/debug/debug_trace.d \
./src/jdk/share/native/sun/awt/debug/debug_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/debug/%.o: ../src/jdk/share/native/sun/awt/debug/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


