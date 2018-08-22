################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_CommonUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiIn.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiOut.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCM.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCMUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_Ports.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_CommonUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiIn.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiOut.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCM.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCMUtils.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_Ports.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_PCM.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Ports.c \
../src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Utils.c 

OBJS += \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_CommonUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiIn.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiOut.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCM.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCMUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_Ports.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_CommonUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiIn.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiOut.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCM.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCMUtils.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_Ports.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_PCM.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Ports.o \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Utils.o 

C_DEPS += \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_CommonUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiIn.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiOut.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_MidiUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCM.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_PCMUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_BsdOS_ALSA_Ports.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_CommonUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiIn.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiOut.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_MidiUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCM.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_PCMUtils.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_LinuxOS_ALSA_Ports.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_PCM.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Ports.d \
./src/jdk/solaris/native/com/sun/media/sound/PLATFORM_API_SolarisOS_Utils.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/com/sun/media/sound/%.o: ../src/jdk/solaris/native/com/sun/media/sound/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


