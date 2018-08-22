################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/gc_interface/collectedHeap.cpp \
../src/hotspot/share/vm/gc_interface/gcCause.cpp 

OBJS += \
./src/hotspot/share/vm/gc_interface/collectedHeap.o \
./src/hotspot/share/vm/gc_interface/gcCause.o 

CPP_DEPS += \
./src/hotspot/share/vm/gc_interface/collectedHeap.d \
./src/hotspot/share/vm/gc_interface/gcCause.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/gc_interface/%.o: ../src/hotspot/share/vm/gc_interface/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


