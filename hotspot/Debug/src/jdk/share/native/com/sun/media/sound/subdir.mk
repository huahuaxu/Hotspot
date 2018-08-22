################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/com/sun/media/sound/DirectAudioDevice.c \
../src/jdk/share/native/com/sun/media/sound/DirectAudioDeviceProvider.c \
../src/jdk/share/native/com/sun/media/sound/MidiInDevice.c \
../src/jdk/share/native/com/sun/media/sound/MidiInDeviceProvider.c \
../src/jdk/share/native/com/sun/media/sound/MidiOutDevice.c \
../src/jdk/share/native/com/sun/media/sound/MidiOutDeviceProvider.c \
../src/jdk/share/native/com/sun/media/sound/Platform.c \
../src/jdk/share/native/com/sun/media/sound/PlatformMidi.c \
../src/jdk/share/native/com/sun/media/sound/PortMixer.c \
../src/jdk/share/native/com/sun/media/sound/PortMixerProvider.c \
../src/jdk/share/native/com/sun/media/sound/Utilities.c 

OBJS += \
./src/jdk/share/native/com/sun/media/sound/DirectAudioDevice.o \
./src/jdk/share/native/com/sun/media/sound/DirectAudioDeviceProvider.o \
./src/jdk/share/native/com/sun/media/sound/MidiInDevice.o \
./src/jdk/share/native/com/sun/media/sound/MidiInDeviceProvider.o \
./src/jdk/share/native/com/sun/media/sound/MidiOutDevice.o \
./src/jdk/share/native/com/sun/media/sound/MidiOutDeviceProvider.o \
./src/jdk/share/native/com/sun/media/sound/Platform.o \
./src/jdk/share/native/com/sun/media/sound/PlatformMidi.o \
./src/jdk/share/native/com/sun/media/sound/PortMixer.o \
./src/jdk/share/native/com/sun/media/sound/PortMixerProvider.o \
./src/jdk/share/native/com/sun/media/sound/Utilities.o 

C_DEPS += \
./src/jdk/share/native/com/sun/media/sound/DirectAudioDevice.d \
./src/jdk/share/native/com/sun/media/sound/DirectAudioDeviceProvider.d \
./src/jdk/share/native/com/sun/media/sound/MidiInDevice.d \
./src/jdk/share/native/com/sun/media/sound/MidiInDeviceProvider.d \
./src/jdk/share/native/com/sun/media/sound/MidiOutDevice.d \
./src/jdk/share/native/com/sun/media/sound/MidiOutDeviceProvider.d \
./src/jdk/share/native/com/sun/media/sound/Platform.d \
./src/jdk/share/native/com/sun/media/sound/PlatformMidi.d \
./src/jdk/share/native/com/sun/media/sound/PortMixer.d \
./src/jdk/share/native/com/sun/media/sound/PortMixerProvider.d \
./src/jdk/share/native/com/sun/media/sound/Utilities.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/com/sun/media/sound/%.o: ../src/jdk/share/native/com/sun/media/sound/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


