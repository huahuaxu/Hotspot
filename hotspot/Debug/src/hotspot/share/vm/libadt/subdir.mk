################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/libadt/dict.cpp \
../src/hotspot/share/vm/libadt/port.cpp \
../src/hotspot/share/vm/libadt/set.cpp \
../src/hotspot/share/vm/libadt/vectset.cpp 

OBJS += \
./src/hotspot/share/vm/libadt/dict.o \
./src/hotspot/share/vm/libadt/port.o \
./src/hotspot/share/vm/libadt/set.o \
./src/hotspot/share/vm/libadt/vectset.o 

CPP_DEPS += \
./src/hotspot/share/vm/libadt/dict.d \
./src/hotspot/share/vm/libadt/port.d \
./src/hotspot/share/vm/libadt/set.d \
./src/hotspot/share/vm/libadt/vectset.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/libadt/%.o: ../src/hotspot/share/vm/libadt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


