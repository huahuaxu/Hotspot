################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/gc_implementation/parNew/asParNewGeneration.cpp \
../src/hotspot/share/vm/gc_implementation/parNew/parCardTableModRefBS.cpp \
../src/hotspot/share/vm/gc_implementation/parNew/parGCAllocBuffer.cpp \
../src/hotspot/share/vm/gc_implementation/parNew/parNewGeneration.cpp 

OBJS += \
./src/hotspot/share/vm/gc_implementation/parNew/asParNewGeneration.o \
./src/hotspot/share/vm/gc_implementation/parNew/parCardTableModRefBS.o \
./src/hotspot/share/vm/gc_implementation/parNew/parGCAllocBuffer.o \
./src/hotspot/share/vm/gc_implementation/parNew/parNewGeneration.o 

CPP_DEPS += \
./src/hotspot/share/vm/gc_implementation/parNew/asParNewGeneration.d \
./src/hotspot/share/vm/gc_implementation/parNew/parCardTableModRefBS.d \
./src/hotspot/share/vm/gc_implementation/parNew/parGCAllocBuffer.d \
./src/hotspot/share/vm/gc_implementation/parNew/parNewGeneration.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/gc_implementation/parNew/%.o: ../src/hotspot/share/vm/gc_implementation/parNew/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


