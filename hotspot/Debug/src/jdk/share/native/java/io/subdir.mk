################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/io/FileInputStream.c \
../src/jdk/share/native/java/io/ObjectInputStream.c \
../src/jdk/share/native/java/io/ObjectOutputStream.c \
../src/jdk/share/native/java/io/ObjectStreamClass.c \
../src/jdk/share/native/java/io/RandomAccessFile.c \
../src/jdk/share/native/java/io/io_util.c 

OBJS += \
./src/jdk/share/native/java/io/FileInputStream.o \
./src/jdk/share/native/java/io/ObjectInputStream.o \
./src/jdk/share/native/java/io/ObjectOutputStream.o \
./src/jdk/share/native/java/io/ObjectStreamClass.o \
./src/jdk/share/native/java/io/RandomAccessFile.o \
./src/jdk/share/native/java/io/io_util.o 

C_DEPS += \
./src/jdk/share/native/java/io/FileInputStream.d \
./src/jdk/share/native/java/io/ObjectInputStream.d \
./src/jdk/share/native/java/io/ObjectOutputStream.d \
./src/jdk/share/native/java/io/ObjectStreamClass.d \
./src/jdk/share/native/java/io/RandomAccessFile.d \
./src/jdk/share/native/java/io/io_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/io/%.o: ../src/jdk/share/native/java/io/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


