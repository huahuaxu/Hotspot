################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/java/net/Inet4AddressImpl.c \
../src/jdk/solaris/native/java/net/Inet6AddressImpl.c \
../src/jdk/solaris/native/java/net/InetAddressImplFactory.c \
../src/jdk/solaris/native/java/net/NetworkInterface.c \
../src/jdk/solaris/native/java/net/PlainDatagramSocketImpl.c \
../src/jdk/solaris/native/java/net/PlainSocketImpl.c \
../src/jdk/solaris/native/java/net/SocketInputStream.c \
../src/jdk/solaris/native/java/net/SocketOutputStream.c \
../src/jdk/solaris/native/java/net/bsd_close.c \
../src/jdk/solaris/native/java/net/linux_close.c \
../src/jdk/solaris/native/java/net/net_util_md.c 

OBJS += \
./src/jdk/solaris/native/java/net/Inet4AddressImpl.o \
./src/jdk/solaris/native/java/net/Inet6AddressImpl.o \
./src/jdk/solaris/native/java/net/InetAddressImplFactory.o \
./src/jdk/solaris/native/java/net/NetworkInterface.o \
./src/jdk/solaris/native/java/net/PlainDatagramSocketImpl.o \
./src/jdk/solaris/native/java/net/PlainSocketImpl.o \
./src/jdk/solaris/native/java/net/SocketInputStream.o \
./src/jdk/solaris/native/java/net/SocketOutputStream.o \
./src/jdk/solaris/native/java/net/bsd_close.o \
./src/jdk/solaris/native/java/net/linux_close.o \
./src/jdk/solaris/native/java/net/net_util_md.o 

C_DEPS += \
./src/jdk/solaris/native/java/net/Inet4AddressImpl.d \
./src/jdk/solaris/native/java/net/Inet6AddressImpl.d \
./src/jdk/solaris/native/java/net/InetAddressImplFactory.d \
./src/jdk/solaris/native/java/net/NetworkInterface.d \
./src/jdk/solaris/native/java/net/PlainDatagramSocketImpl.d \
./src/jdk/solaris/native/java/net/PlainSocketImpl.d \
./src/jdk/solaris/native/java/net/SocketInputStream.d \
./src/jdk/solaris/native/java/net/SocketOutputStream.d \
./src/jdk/solaris/native/java/net/bsd_close.d \
./src/jdk/solaris/native/java/net/linux_close.d \
./src/jdk/solaris/native/java/net/net_util_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/java/net/%.o: ../src/jdk/solaris/native/java/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


