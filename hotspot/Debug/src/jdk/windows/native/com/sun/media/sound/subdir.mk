################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_DirectSound.cpp \
../src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiIn.cpp 

C_SRCS += \
../src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiOut.c \
../src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Ports.c \
../src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Util.c 

OBJS += \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_DirectSound.o \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiIn.o \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiOut.o \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Ports.o \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Util.o 

C_DEPS += \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiOut.d \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Ports.d \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_Util.d 

CPP_DEPS += \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_DirectSound.d \
./src/jdk/windows/native/com/sun/media/sound/PLATFORM_API_WinOS_MidiIn.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/com/sun/media/sound/%.o: ../src/jdk/windows/native/com/sun/media/sound/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jdk/windows/native/com/sun/media/sound/%.o: ../src/jdk/windows/native/com/sun/media/sound/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


