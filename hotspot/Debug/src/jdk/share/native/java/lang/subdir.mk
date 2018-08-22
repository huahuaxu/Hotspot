################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/lang/Class.c \
../src/jdk/share/native/java/lang/ClassLoader.c \
../src/jdk/share/native/java/lang/Compiler.c \
../src/jdk/share/native/java/lang/Double.c \
../src/jdk/share/native/java/lang/Float.c \
../src/jdk/share/native/java/lang/Object.c \
../src/jdk/share/native/java/lang/Package.c \
../src/jdk/share/native/java/lang/ResourceBundle.c \
../src/jdk/share/native/java/lang/Runtime.c \
../src/jdk/share/native/java/lang/SecurityManager.c \
../src/jdk/share/native/java/lang/Shutdown.c \
../src/jdk/share/native/java/lang/StrictMath.c \
../src/jdk/share/native/java/lang/String.c \
../src/jdk/share/native/java/lang/System.c \
../src/jdk/share/native/java/lang/Thread.c \
../src/jdk/share/native/java/lang/Throwable.c 

OBJS += \
./src/jdk/share/native/java/lang/Class.o \
./src/jdk/share/native/java/lang/ClassLoader.o \
./src/jdk/share/native/java/lang/Compiler.o \
./src/jdk/share/native/java/lang/Double.o \
./src/jdk/share/native/java/lang/Float.o \
./src/jdk/share/native/java/lang/Object.o \
./src/jdk/share/native/java/lang/Package.o \
./src/jdk/share/native/java/lang/ResourceBundle.o \
./src/jdk/share/native/java/lang/Runtime.o \
./src/jdk/share/native/java/lang/SecurityManager.o \
./src/jdk/share/native/java/lang/Shutdown.o \
./src/jdk/share/native/java/lang/StrictMath.o \
./src/jdk/share/native/java/lang/String.o \
./src/jdk/share/native/java/lang/System.o \
./src/jdk/share/native/java/lang/Thread.o \
./src/jdk/share/native/java/lang/Throwable.o 

C_DEPS += \
./src/jdk/share/native/java/lang/Class.d \
./src/jdk/share/native/java/lang/ClassLoader.d \
./src/jdk/share/native/java/lang/Compiler.d \
./src/jdk/share/native/java/lang/Double.d \
./src/jdk/share/native/java/lang/Float.d \
./src/jdk/share/native/java/lang/Object.d \
./src/jdk/share/native/java/lang/Package.d \
./src/jdk/share/native/java/lang/ResourceBundle.d \
./src/jdk/share/native/java/lang/Runtime.d \
./src/jdk/share/native/java/lang/SecurityManager.d \
./src/jdk/share/native/java/lang/Shutdown.d \
./src/jdk/share/native/java/lang/StrictMath.d \
./src/jdk/share/native/java/lang/String.d \
./src/jdk/share/native/java/lang/System.d \
./src/jdk/share/native/java/lang/Thread.d \
./src/jdk/share/native/java/lang/Throwable.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/lang/%.o: ../src/jdk/share/native/java/lang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


