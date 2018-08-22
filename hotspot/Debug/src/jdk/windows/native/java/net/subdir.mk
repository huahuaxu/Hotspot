################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/java/net/DualStackPlainDatagramSocketImpl.c \
../src/jdk/windows/native/java/net/DualStackPlainSocketImpl.c \
../src/jdk/windows/native/java/net/Inet4AddressImpl.c \
../src/jdk/windows/native/java/net/Inet6AddressImpl.c \
../src/jdk/windows/native/java/net/InetAddressImplFactory.c \
../src/jdk/windows/native/java/net/NetworkInterface.c \
../src/jdk/windows/native/java/net/NetworkInterface_winXP.c \
../src/jdk/windows/native/java/net/SocketInputStream.c \
../src/jdk/windows/native/java/net/SocketOutputStream.c \
../src/jdk/windows/native/java/net/TwoStacksPlainDatagramSocketImpl.c \
../src/jdk/windows/native/java/net/TwoStacksPlainSocketImpl.c \
../src/jdk/windows/native/java/net/net_util_md.c 

OBJS += \
./src/jdk/windows/native/java/net/DualStackPlainDatagramSocketImpl.o \
./src/jdk/windows/native/java/net/DualStackPlainSocketImpl.o \
./src/jdk/windows/native/java/net/Inet4AddressImpl.o \
./src/jdk/windows/native/java/net/Inet6AddressImpl.o \
./src/jdk/windows/native/java/net/InetAddressImplFactory.o \
./src/jdk/windows/native/java/net/NetworkInterface.o \
./src/jdk/windows/native/java/net/NetworkInterface_winXP.o \
./src/jdk/windows/native/java/net/SocketInputStream.o \
./src/jdk/windows/native/java/net/SocketOutputStream.o \
./src/jdk/windows/native/java/net/TwoStacksPlainDatagramSocketImpl.o \
./src/jdk/windows/native/java/net/TwoStacksPlainSocketImpl.o \
./src/jdk/windows/native/java/net/net_util_md.o 

C_DEPS += \
./src/jdk/windows/native/java/net/DualStackPlainDatagramSocketImpl.d \
./src/jdk/windows/native/java/net/DualStackPlainSocketImpl.d \
./src/jdk/windows/native/java/net/Inet4AddressImpl.d \
./src/jdk/windows/native/java/net/Inet6AddressImpl.d \
./src/jdk/windows/native/java/net/InetAddressImplFactory.d \
./src/jdk/windows/native/java/net/NetworkInterface.d \
./src/jdk/windows/native/java/net/NetworkInterface_winXP.d \
./src/jdk/windows/native/java/net/SocketInputStream.d \
./src/jdk/windows/native/java/net/SocketOutputStream.d \
./src/jdk/windows/native/java/net/TwoStacksPlainDatagramSocketImpl.d \
./src/jdk/windows/native/java/net/TwoStacksPlainSocketImpl.d \
./src/jdk/windows/native/java/net/net_util_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/java/net/%.o: ../src/jdk/windows/native/java/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


