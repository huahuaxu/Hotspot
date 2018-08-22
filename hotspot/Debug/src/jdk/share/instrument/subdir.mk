################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/instrument/EncodingSupport.c \
../src/jdk/share/instrument/InstrumentationImplNativeMethods.c \
../src/jdk/share/instrument/InvocationAdapter.c \
../src/jdk/share/instrument/JPLISAgent.c \
../src/jdk/share/instrument/JPLISAssert.c \
../src/jdk/share/instrument/JarFacade.c \
../src/jdk/share/instrument/JavaExceptions.c \
../src/jdk/share/instrument/PathCharsValidator.c \
../src/jdk/share/instrument/Reentrancy.c \
../src/jdk/share/instrument/Utilities.c 

OBJS += \
./src/jdk/share/instrument/EncodingSupport.o \
./src/jdk/share/instrument/InstrumentationImplNativeMethods.o \
./src/jdk/share/instrument/InvocationAdapter.o \
./src/jdk/share/instrument/JPLISAgent.o \
./src/jdk/share/instrument/JPLISAssert.o \
./src/jdk/share/instrument/JarFacade.o \
./src/jdk/share/instrument/JavaExceptions.o \
./src/jdk/share/instrument/PathCharsValidator.o \
./src/jdk/share/instrument/Reentrancy.o \
./src/jdk/share/instrument/Utilities.o 

C_DEPS += \
./src/jdk/share/instrument/EncodingSupport.d \
./src/jdk/share/instrument/InstrumentationImplNativeMethods.d \
./src/jdk/share/instrument/InvocationAdapter.d \
./src/jdk/share/instrument/JPLISAgent.d \
./src/jdk/share/instrument/JPLISAssert.d \
./src/jdk/share/instrument/JarFacade.d \
./src/jdk/share/instrument/JavaExceptions.d \
./src/jdk/share/instrument/PathCharsValidator.d \
./src/jdk/share/instrument/Reentrancy.d \
./src/jdk/share/instrument/Utilities.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/instrument/%.o: ../src/jdk/share/instrument/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


