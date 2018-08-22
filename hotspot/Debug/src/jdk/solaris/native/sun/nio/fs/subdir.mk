################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/nio/fs/BsdNativeDispatcher.c \
../src/jdk/solaris/native/sun/nio/fs/GnomeFileTypeDetector.c \
../src/jdk/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c \
../src/jdk/solaris/native/sun/nio/fs/LinuxWatchService.c \
../src/jdk/solaris/native/sun/nio/fs/SolarisNativeDispatcher.c \
../src/jdk/solaris/native/sun/nio/fs/SolarisWatchService.c \
../src/jdk/solaris/native/sun/nio/fs/UnixCopyFile.c \
../src/jdk/solaris/native/sun/nio/fs/UnixNativeDispatcher.c \
../src/jdk/solaris/native/sun/nio/fs/genSolarisConstants.c \
../src/jdk/solaris/native/sun/nio/fs/genUnixConstants.c 

OBJS += \
./src/jdk/solaris/native/sun/nio/fs/BsdNativeDispatcher.o \
./src/jdk/solaris/native/sun/nio/fs/GnomeFileTypeDetector.o \
./src/jdk/solaris/native/sun/nio/fs/LinuxNativeDispatcher.o \
./src/jdk/solaris/native/sun/nio/fs/LinuxWatchService.o \
./src/jdk/solaris/native/sun/nio/fs/SolarisNativeDispatcher.o \
./src/jdk/solaris/native/sun/nio/fs/SolarisWatchService.o \
./src/jdk/solaris/native/sun/nio/fs/UnixCopyFile.o \
./src/jdk/solaris/native/sun/nio/fs/UnixNativeDispatcher.o \
./src/jdk/solaris/native/sun/nio/fs/genSolarisConstants.o \
./src/jdk/solaris/native/sun/nio/fs/genUnixConstants.o 

C_DEPS += \
./src/jdk/solaris/native/sun/nio/fs/BsdNativeDispatcher.d \
./src/jdk/solaris/native/sun/nio/fs/GnomeFileTypeDetector.d \
./src/jdk/solaris/native/sun/nio/fs/LinuxNativeDispatcher.d \
./src/jdk/solaris/native/sun/nio/fs/LinuxWatchService.d \
./src/jdk/solaris/native/sun/nio/fs/SolarisNativeDispatcher.d \
./src/jdk/solaris/native/sun/nio/fs/SolarisWatchService.d \
./src/jdk/solaris/native/sun/nio/fs/UnixCopyFile.d \
./src/jdk/solaris/native/sun/nio/fs/UnixNativeDispatcher.d \
./src/jdk/solaris/native/sun/nio/fs/genSolarisConstants.d \
./src/jdk/solaris/native/sun/nio/fs/genUnixConstants.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/nio/fs/%.o: ../src/jdk/solaris/native/sun/nio/fs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


