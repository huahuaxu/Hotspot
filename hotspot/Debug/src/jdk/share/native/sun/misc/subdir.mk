################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/misc/GC.c \
../src/jdk/share/native/sun/misc/MessageUtils.c \
../src/jdk/share/native/sun/misc/NativeSignalHandler.c \
../src/jdk/share/native/sun/misc/Signal.c \
../src/jdk/share/native/sun/misc/VM.c \
../src/jdk/share/native/sun/misc/VMSupport.c \
../src/jdk/share/native/sun/misc/Version.c 

OBJS += \
./src/jdk/share/native/sun/misc/GC.o \
./src/jdk/share/native/sun/misc/MessageUtils.o \
./src/jdk/share/native/sun/misc/NativeSignalHandler.o \
./src/jdk/share/native/sun/misc/Signal.o \
./src/jdk/share/native/sun/misc/VM.o \
./src/jdk/share/native/sun/misc/VMSupport.o \
./src/jdk/share/native/sun/misc/Version.o 

C_DEPS += \
./src/jdk/share/native/sun/misc/GC.d \
./src/jdk/share/native/sun/misc/MessageUtils.d \
./src/jdk/share/native/sun/misc/NativeSignalHandler.d \
./src/jdk/share/native/sun/misc/Signal.d \
./src/jdk/share/native/sun/misc/VM.d \
./src/jdk/share/native/sun/misc/VMSupport.d \
./src/jdk/share/native/sun/misc/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/misc/%.o: ../src/jdk/share/native/sun/misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


