################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_PCM.cpp \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Ports.cpp \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Utils.cpp 

C_SRCS += \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiIn.c \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiOut.c \
../src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiUtils.c 

OBJS += \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiIn.o \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiOut.o \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiUtils.o \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_PCM.o \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Ports.o \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Utils.o 

C_DEPS += \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiIn.d \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiOut.d \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_MidiUtils.d 

CPP_DEPS += \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_PCM.d \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Ports.d \
./src/jdk/macosx/native/com/sun/media/sound/PLATFORM_API_MacOSX_Utils.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/macosx/native/com/sun/media/sound/%.o: ../src/jdk/macosx/native/com/sun/media/sound/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jdk/macosx/native/com/sun/media/sound/%.o: ../src/jdk/macosx/native/com/sun/media/sound/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


