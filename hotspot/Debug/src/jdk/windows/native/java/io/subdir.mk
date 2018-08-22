################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/java/io/Console_md.c \
../src/jdk/windows/native/java/io/FileDescriptor_md.c \
../src/jdk/windows/native/java/io/FileInputStream_md.c \
../src/jdk/windows/native/java/io/FileOutputStream_md.c \
../src/jdk/windows/native/java/io/FileSystem_md.c \
../src/jdk/windows/native/java/io/RandomAccessFile_md.c \
../src/jdk/windows/native/java/io/Win32FileSystem_md.c \
../src/jdk/windows/native/java/io/WinNTFileSystem_md.c \
../src/jdk/windows/native/java/io/canonicalize_md.c \
../src/jdk/windows/native/java/io/dirent_md.c \
../src/jdk/windows/native/java/io/io_util_md.c 

OBJS += \
./src/jdk/windows/native/java/io/Console_md.o \
./src/jdk/windows/native/java/io/FileDescriptor_md.o \
./src/jdk/windows/native/java/io/FileInputStream_md.o \
./src/jdk/windows/native/java/io/FileOutputStream_md.o \
./src/jdk/windows/native/java/io/FileSystem_md.o \
./src/jdk/windows/native/java/io/RandomAccessFile_md.o \
./src/jdk/windows/native/java/io/Win32FileSystem_md.o \
./src/jdk/windows/native/java/io/WinNTFileSystem_md.o \
./src/jdk/windows/native/java/io/canonicalize_md.o \
./src/jdk/windows/native/java/io/dirent_md.o \
./src/jdk/windows/native/java/io/io_util_md.o 

C_DEPS += \
./src/jdk/windows/native/java/io/Console_md.d \
./src/jdk/windows/native/java/io/FileDescriptor_md.d \
./src/jdk/windows/native/java/io/FileInputStream_md.d \
./src/jdk/windows/native/java/io/FileOutputStream_md.d \
./src/jdk/windows/native/java/io/FileSystem_md.d \
./src/jdk/windows/native/java/io/RandomAccessFile_md.d \
./src/jdk/windows/native/java/io/Win32FileSystem_md.d \
./src/jdk/windows/native/java/io/WinNTFileSystem_md.d \
./src/jdk/windows/native/java/io/canonicalize_md.d \
./src/jdk/windows/native/java/io/dirent_md.d \
./src/jdk/windows/native/java/io/io_util_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/java/io/%.o: ../src/jdk/windows/native/java/io/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


