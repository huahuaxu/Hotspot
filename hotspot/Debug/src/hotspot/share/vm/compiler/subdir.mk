################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/compiler/abstractCompiler.cpp \
../src/hotspot/share/vm/compiler/compileBroker.cpp \
../src/hotspot/share/vm/compiler/compileLog.cpp \
../src/hotspot/share/vm/compiler/compilerOracle.cpp \
../src/hotspot/share/vm/compiler/disassembler.cpp \
../src/hotspot/share/vm/compiler/methodLiveness.cpp \
../src/hotspot/share/vm/compiler/oopMap.cpp 

OBJS += \
./src/hotspot/share/vm/compiler/abstractCompiler.o \
./src/hotspot/share/vm/compiler/compileBroker.o \
./src/hotspot/share/vm/compiler/compileLog.o \
./src/hotspot/share/vm/compiler/compilerOracle.o \
./src/hotspot/share/vm/compiler/disassembler.o \
./src/hotspot/share/vm/compiler/methodLiveness.o \
./src/hotspot/share/vm/compiler/oopMap.o 

CPP_DEPS += \
./src/hotspot/share/vm/compiler/abstractCompiler.d \
./src/hotspot/share/vm/compiler/compileBroker.d \
./src/hotspot/share/vm/compiler/compileLog.d \
./src/hotspot/share/vm/compiler/compilerOracle.d \
./src/hotspot/share/vm/compiler/disassembler.d \
./src/hotspot/share/vm/compiler/methodLiveness.d \
./src/hotspot/share/vm/compiler/oopMap.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/compiler/%.o: ../src/hotspot/share/vm/compiler/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


