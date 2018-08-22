################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/nio/ch/DatagramChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/DatagramDispatcher.c \
../src/jdk/windows/native/sun/nio/ch/FileChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/FileDispatcherImpl.c \
../src/jdk/windows/native/sun/nio/ch/FileKey.c \
../src/jdk/windows/native/sun/nio/ch/IOUtil.c \
../src/jdk/windows/native/sun/nio/ch/Iocp.c \
../src/jdk/windows/native/sun/nio/ch/Net.c \
../src/jdk/windows/native/sun/nio/ch/ServerSocketChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/SocketChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/SocketDispatcher.c \
../src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousFileChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousServerSocketChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousSocketChannelImpl.c \
../src/jdk/windows/native/sun/nio/ch/WindowsSelectorImpl.c 

OBJS += \
./src/jdk/windows/native/sun/nio/ch/DatagramChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/DatagramDispatcher.o \
./src/jdk/windows/native/sun/nio/ch/FileChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/FileDispatcherImpl.o \
./src/jdk/windows/native/sun/nio/ch/FileKey.o \
./src/jdk/windows/native/sun/nio/ch/IOUtil.o \
./src/jdk/windows/native/sun/nio/ch/Iocp.o \
./src/jdk/windows/native/sun/nio/ch/Net.o \
./src/jdk/windows/native/sun/nio/ch/ServerSocketChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/SocketChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/SocketDispatcher.o \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousFileChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousServerSocketChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousSocketChannelImpl.o \
./src/jdk/windows/native/sun/nio/ch/WindowsSelectorImpl.o 

C_DEPS += \
./src/jdk/windows/native/sun/nio/ch/DatagramChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/DatagramDispatcher.d \
./src/jdk/windows/native/sun/nio/ch/FileChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/FileDispatcherImpl.d \
./src/jdk/windows/native/sun/nio/ch/FileKey.d \
./src/jdk/windows/native/sun/nio/ch/IOUtil.d \
./src/jdk/windows/native/sun/nio/ch/Iocp.d \
./src/jdk/windows/native/sun/nio/ch/Net.d \
./src/jdk/windows/native/sun/nio/ch/ServerSocketChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/SocketChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/SocketDispatcher.d \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousFileChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousServerSocketChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/WindowsAsynchronousSocketChannelImpl.d \
./src/jdk/windows/native/sun/nio/ch/WindowsSelectorImpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/nio/ch/%.o: ../src/jdk/windows/native/sun/nio/ch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


