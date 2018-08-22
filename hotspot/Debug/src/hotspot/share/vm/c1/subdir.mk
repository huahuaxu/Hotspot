################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/c1/c1_CFGPrinter.cpp \
../src/hotspot/share/vm/c1/c1_Canonicalizer.cpp \
../src/hotspot/share/vm/c1/c1_Compilation.cpp \
../src/hotspot/share/vm/c1/c1_Compiler.cpp \
../src/hotspot/share/vm/c1/c1_Defs.cpp \
../src/hotspot/share/vm/c1/c1_FrameMap.cpp \
../src/hotspot/share/vm/c1/c1_GraphBuilder.cpp \
../src/hotspot/share/vm/c1/c1_IR.cpp \
../src/hotspot/share/vm/c1/c1_Instruction.cpp \
../src/hotspot/share/vm/c1/c1_InstructionPrinter.cpp \
../src/hotspot/share/vm/c1/c1_LIR.cpp \
../src/hotspot/share/vm/c1/c1_LIRAssembler.cpp \
../src/hotspot/share/vm/c1/c1_LIRGenerator.cpp \
../src/hotspot/share/vm/c1/c1_LinearScan.cpp \
../src/hotspot/share/vm/c1/c1_Optimizer.cpp \
../src/hotspot/share/vm/c1/c1_Runtime1.cpp \
../src/hotspot/share/vm/c1/c1_ValueMap.cpp \
../src/hotspot/share/vm/c1/c1_ValueSet.cpp \
../src/hotspot/share/vm/c1/c1_ValueStack.cpp \
../src/hotspot/share/vm/c1/c1_ValueType.cpp \
../src/hotspot/share/vm/c1/c1_globals.cpp 

OBJS += \
./src/hotspot/share/vm/c1/c1_CFGPrinter.o \
./src/hotspot/share/vm/c1/c1_Canonicalizer.o \
./src/hotspot/share/vm/c1/c1_Compilation.o \
./src/hotspot/share/vm/c1/c1_Compiler.o \
./src/hotspot/share/vm/c1/c1_Defs.o \
./src/hotspot/share/vm/c1/c1_FrameMap.o \
./src/hotspot/share/vm/c1/c1_GraphBuilder.o \
./src/hotspot/share/vm/c1/c1_IR.o \
./src/hotspot/share/vm/c1/c1_Instruction.o \
./src/hotspot/share/vm/c1/c1_InstructionPrinter.o \
./src/hotspot/share/vm/c1/c1_LIR.o \
./src/hotspot/share/vm/c1/c1_LIRAssembler.o \
./src/hotspot/share/vm/c1/c1_LIRGenerator.o \
./src/hotspot/share/vm/c1/c1_LinearScan.o \
./src/hotspot/share/vm/c1/c1_Optimizer.o \
./src/hotspot/share/vm/c1/c1_Runtime1.o \
./src/hotspot/share/vm/c1/c1_ValueMap.o \
./src/hotspot/share/vm/c1/c1_ValueSet.o \
./src/hotspot/share/vm/c1/c1_ValueStack.o \
./src/hotspot/share/vm/c1/c1_ValueType.o \
./src/hotspot/share/vm/c1/c1_globals.o 

CPP_DEPS += \
./src/hotspot/share/vm/c1/c1_CFGPrinter.d \
./src/hotspot/share/vm/c1/c1_Canonicalizer.d \
./src/hotspot/share/vm/c1/c1_Compilation.d \
./src/hotspot/share/vm/c1/c1_Compiler.d \
./src/hotspot/share/vm/c1/c1_Defs.d \
./src/hotspot/share/vm/c1/c1_FrameMap.d \
./src/hotspot/share/vm/c1/c1_GraphBuilder.d \
./src/hotspot/share/vm/c1/c1_IR.d \
./src/hotspot/share/vm/c1/c1_Instruction.d \
./src/hotspot/share/vm/c1/c1_InstructionPrinter.d \
./src/hotspot/share/vm/c1/c1_LIR.d \
./src/hotspot/share/vm/c1/c1_LIRAssembler.d \
./src/hotspot/share/vm/c1/c1_LIRGenerator.d \
./src/hotspot/share/vm/c1/c1_LinearScan.d \
./src/hotspot/share/vm/c1/c1_Optimizer.d \
./src/hotspot/share/vm/c1/c1_Runtime1.d \
./src/hotspot/share/vm/c1/c1_ValueMap.d \
./src/hotspot/share/vm/c1/c1_ValueSet.d \
./src/hotspot/share/vm/c1/c1_ValueStack.d \
./src/hotspot/share/vm/c1/c1_ValueType.d \
./src/hotspot/share/vm/c1/c1_globals.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/c1/%.o: ../src/hotspot/share/vm/c1/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


