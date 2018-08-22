################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/nio/ch/DatagramChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/DatagramDispatcher.c \
../src/jdk/solaris/native/sun/nio/ch/DevPollArrayWrapper.c \
../src/jdk/solaris/native/sun/nio/ch/EPoll.c \
../src/jdk/solaris/native/sun/nio/ch/EPollArrayWrapper.c \
../src/jdk/solaris/native/sun/nio/ch/EPollPort.c \
../src/jdk/solaris/native/sun/nio/ch/FileChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/FileDispatcherImpl.c \
../src/jdk/solaris/native/sun/nio/ch/FileKey.c \
../src/jdk/solaris/native/sun/nio/ch/IOUtil.c \
../src/jdk/solaris/native/sun/nio/ch/InheritedChannel.c \
../src/jdk/solaris/native/sun/nio/ch/KQueue.c \
../src/jdk/solaris/native/sun/nio/ch/KQueuePort.c \
../src/jdk/solaris/native/sun/nio/ch/NativeThread.c \
../src/jdk/solaris/native/sun/nio/ch/Net.c \
../src/jdk/solaris/native/sun/nio/ch/PollArrayWrapper.c \
../src/jdk/solaris/native/sun/nio/ch/SctpChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/SctpNet.c \
../src/jdk/solaris/native/sun/nio/ch/SctpServerChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/ServerSocketChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/SocketChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/SocketDispatcher.c \
../src/jdk/solaris/native/sun/nio/ch/SolarisEventPort.c \
../src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousServerSocketChannelImpl.c \
../src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousSocketChannelImpl.c 

OBJS += \
./src/jdk/solaris/native/sun/nio/ch/DatagramChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/DatagramDispatcher.o \
./src/jdk/solaris/native/sun/nio/ch/DevPollArrayWrapper.o \
./src/jdk/solaris/native/sun/nio/ch/EPoll.o \
./src/jdk/solaris/native/sun/nio/ch/EPollArrayWrapper.o \
./src/jdk/solaris/native/sun/nio/ch/EPollPort.o \
./src/jdk/solaris/native/sun/nio/ch/FileChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/FileDispatcherImpl.o \
./src/jdk/solaris/native/sun/nio/ch/FileKey.o \
./src/jdk/solaris/native/sun/nio/ch/IOUtil.o \
./src/jdk/solaris/native/sun/nio/ch/InheritedChannel.o \
./src/jdk/solaris/native/sun/nio/ch/KQueue.o \
./src/jdk/solaris/native/sun/nio/ch/KQueuePort.o \
./src/jdk/solaris/native/sun/nio/ch/NativeThread.o \
./src/jdk/solaris/native/sun/nio/ch/Net.o \
./src/jdk/solaris/native/sun/nio/ch/PollArrayWrapper.o \
./src/jdk/solaris/native/sun/nio/ch/SctpChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/SctpNet.o \
./src/jdk/solaris/native/sun/nio/ch/SctpServerChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/ServerSocketChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/SocketChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/SocketDispatcher.o \
./src/jdk/solaris/native/sun/nio/ch/SolarisEventPort.o \
./src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousServerSocketChannelImpl.o \
./src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousSocketChannelImpl.o 

C_DEPS += \
./src/jdk/solaris/native/sun/nio/ch/DatagramChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/DatagramDispatcher.d \
./src/jdk/solaris/native/sun/nio/ch/DevPollArrayWrapper.d \
./src/jdk/solaris/native/sun/nio/ch/EPoll.d \
./src/jdk/solaris/native/sun/nio/ch/EPollArrayWrapper.d \
./src/jdk/solaris/native/sun/nio/ch/EPollPort.d \
./src/jdk/solaris/native/sun/nio/ch/FileChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/FileDispatcherImpl.d \
./src/jdk/solaris/native/sun/nio/ch/FileKey.d \
./src/jdk/solaris/native/sun/nio/ch/IOUtil.d \
./src/jdk/solaris/native/sun/nio/ch/InheritedChannel.d \
./src/jdk/solaris/native/sun/nio/ch/KQueue.d \
./src/jdk/solaris/native/sun/nio/ch/KQueuePort.d \
./src/jdk/solaris/native/sun/nio/ch/NativeThread.d \
./src/jdk/solaris/native/sun/nio/ch/Net.d \
./src/jdk/solaris/native/sun/nio/ch/PollArrayWrapper.d \
./src/jdk/solaris/native/sun/nio/ch/SctpChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/SctpNet.d \
./src/jdk/solaris/native/sun/nio/ch/SctpServerChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/ServerSocketChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/SocketChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/SocketDispatcher.d \
./src/jdk/solaris/native/sun/nio/ch/SolarisEventPort.d \
./src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousServerSocketChannelImpl.d \
./src/jdk/solaris/native/sun/nio/ch/UnixAsynchronousSocketChannelImpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/nio/ch/%.o: ../src/jdk/solaris/native/sun/nio/ch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


