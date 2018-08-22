################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/net/DatagramPacket.c \
../src/jdk/share/native/java/net/Inet4Address.c \
../src/jdk/share/native/java/net/Inet6Address.c \
../src/jdk/share/native/java/net/InetAddress.c \
../src/jdk/share/native/java/net/net_util.c 

OBJS += \
./src/jdk/share/native/java/net/DatagramPacket.o \
./src/jdk/share/native/java/net/Inet4Address.o \
./src/jdk/share/native/java/net/Inet6Address.o \
./src/jdk/share/native/java/net/InetAddress.o \
./src/jdk/share/native/java/net/net_util.o 

C_DEPS += \
./src/jdk/share/native/java/net/DatagramPacket.d \
./src/jdk/share/native/java/net/Inet4Address.d \
./src/jdk/share/native/java/net/Inet6Address.d \
./src/jdk/share/native/java/net/InetAddress.d \
./src/jdk/share/native/java/net/net_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/net/%.o: ../src/jdk/share/native/java/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


