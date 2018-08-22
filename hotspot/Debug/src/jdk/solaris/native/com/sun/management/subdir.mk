################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/com/sun/management/LinuxOperatingSystem.c \
../src/jdk/solaris/native/com/sun/management/MacosxOperatingSystem.c \
../src/jdk/solaris/native/com/sun/management/SolarisOperatingSystem.c \
../src/jdk/solaris/native/com/sun/management/UnixOperatingSystem_md.c 

OBJS += \
./src/jdk/solaris/native/com/sun/management/LinuxOperatingSystem.o \
./src/jdk/solaris/native/com/sun/management/MacosxOperatingSystem.o \
./src/jdk/solaris/native/com/sun/management/SolarisOperatingSystem.o \
./src/jdk/solaris/native/com/sun/management/UnixOperatingSystem_md.o 

C_DEPS += \
./src/jdk/solaris/native/com/sun/management/LinuxOperatingSystem.d \
./src/jdk/solaris/native/com/sun/management/MacosxOperatingSystem.d \
./src/jdk/solaris/native/com/sun/management/SolarisOperatingSystem.d \
./src/jdk/solaris/native/com/sun/management/UnixOperatingSystem_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/com/sun/management/%.o: ../src/jdk/solaris/native/com/sun/management/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


