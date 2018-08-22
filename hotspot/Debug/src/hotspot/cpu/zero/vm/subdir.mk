################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/cpu/zero/vm/assembler_zero.cpp \
../src/hotspot/cpu/zero/vm/bytecodeInterpreter_zero.cpp \
../src/hotspot/cpu/zero/vm/bytecodes_zero.cpp \
../src/hotspot/cpu/zero/vm/cppInterpreter_zero.cpp \
../src/hotspot/cpu/zero/vm/debug_zero.cpp \
../src/hotspot/cpu/zero/vm/depChecker_zero.cpp \
../src/hotspot/cpu/zero/vm/disassembler_zero.cpp \
../src/hotspot/cpu/zero/vm/dump_zero.cpp \
../src/hotspot/cpu/zero/vm/frame_zero.cpp \
../src/hotspot/cpu/zero/vm/icBuffer_zero.cpp \
../src/hotspot/cpu/zero/vm/icache_zero.cpp \
../src/hotspot/cpu/zero/vm/interp_masm_zero.cpp \
../src/hotspot/cpu/zero/vm/interpreterRT_zero.cpp \
../src/hotspot/cpu/zero/vm/interpreter_zero.cpp \
../src/hotspot/cpu/zero/vm/jniFastGetField_zero.cpp \
../src/hotspot/cpu/zero/vm/methodHandles_zero.cpp \
../src/hotspot/cpu/zero/vm/nativeInst_zero.cpp \
../src/hotspot/cpu/zero/vm/register_definitions_zero.cpp \
../src/hotspot/cpu/zero/vm/register_zero.cpp \
../src/hotspot/cpu/zero/vm/relocInfo_zero.cpp \
../src/hotspot/cpu/zero/vm/sharedRuntime_zero.cpp \
../src/hotspot/cpu/zero/vm/stack_zero.cpp \
../src/hotspot/cpu/zero/vm/stubGenerator_zero.cpp \
../src/hotspot/cpu/zero/vm/stubRoutines_zero.cpp \
../src/hotspot/cpu/zero/vm/templateInterpreter_zero.cpp \
../src/hotspot/cpu/zero/vm/templateTable_zero.cpp \
../src/hotspot/cpu/zero/vm/vm_version_zero.cpp \
../src/hotspot/cpu/zero/vm/vmreg_zero.cpp \
../src/hotspot/cpu/zero/vm/vtableStubs_zero.cpp 

OBJS += \
./src/hotspot/cpu/zero/vm/assembler_zero.o \
./src/hotspot/cpu/zero/vm/bytecodeInterpreter_zero.o \
./src/hotspot/cpu/zero/vm/bytecodes_zero.o \
./src/hotspot/cpu/zero/vm/cppInterpreter_zero.o \
./src/hotspot/cpu/zero/vm/debug_zero.o \
./src/hotspot/cpu/zero/vm/depChecker_zero.o \
./src/hotspot/cpu/zero/vm/disassembler_zero.o \
./src/hotspot/cpu/zero/vm/dump_zero.o \
./src/hotspot/cpu/zero/vm/frame_zero.o \
./src/hotspot/cpu/zero/vm/icBuffer_zero.o \
./src/hotspot/cpu/zero/vm/icache_zero.o \
./src/hotspot/cpu/zero/vm/interp_masm_zero.o \
./src/hotspot/cpu/zero/vm/interpreterRT_zero.o \
./src/hotspot/cpu/zero/vm/interpreter_zero.o \
./src/hotspot/cpu/zero/vm/jniFastGetField_zero.o \
./src/hotspot/cpu/zero/vm/methodHandles_zero.o \
./src/hotspot/cpu/zero/vm/nativeInst_zero.o \
./src/hotspot/cpu/zero/vm/register_definitions_zero.o \
./src/hotspot/cpu/zero/vm/register_zero.o \
./src/hotspot/cpu/zero/vm/relocInfo_zero.o \
./src/hotspot/cpu/zero/vm/sharedRuntime_zero.o \
./src/hotspot/cpu/zero/vm/stack_zero.o \
./src/hotspot/cpu/zero/vm/stubGenerator_zero.o \
./src/hotspot/cpu/zero/vm/stubRoutines_zero.o \
./src/hotspot/cpu/zero/vm/templateInterpreter_zero.o \
./src/hotspot/cpu/zero/vm/templateTable_zero.o \
./src/hotspot/cpu/zero/vm/vm_version_zero.o \
./src/hotspot/cpu/zero/vm/vmreg_zero.o \
./src/hotspot/cpu/zero/vm/vtableStubs_zero.o 

CPP_DEPS += \
./src/hotspot/cpu/zero/vm/assembler_zero.d \
./src/hotspot/cpu/zero/vm/bytecodeInterpreter_zero.d \
./src/hotspot/cpu/zero/vm/bytecodes_zero.d \
./src/hotspot/cpu/zero/vm/cppInterpreter_zero.d \
./src/hotspot/cpu/zero/vm/debug_zero.d \
./src/hotspot/cpu/zero/vm/depChecker_zero.d \
./src/hotspot/cpu/zero/vm/disassembler_zero.d \
./src/hotspot/cpu/zero/vm/dump_zero.d \
./src/hotspot/cpu/zero/vm/frame_zero.d \
./src/hotspot/cpu/zero/vm/icBuffer_zero.d \
./src/hotspot/cpu/zero/vm/icache_zero.d \
./src/hotspot/cpu/zero/vm/interp_masm_zero.d \
./src/hotspot/cpu/zero/vm/interpreterRT_zero.d \
./src/hotspot/cpu/zero/vm/interpreter_zero.d \
./src/hotspot/cpu/zero/vm/jniFastGetField_zero.d \
./src/hotspot/cpu/zero/vm/methodHandles_zero.d \
./src/hotspot/cpu/zero/vm/nativeInst_zero.d \
./src/hotspot/cpu/zero/vm/register_definitions_zero.d \
./src/hotspot/cpu/zero/vm/register_zero.d \
./src/hotspot/cpu/zero/vm/relocInfo_zero.d \
./src/hotspot/cpu/zero/vm/sharedRuntime_zero.d \
./src/hotspot/cpu/zero/vm/stack_zero.d \
./src/hotspot/cpu/zero/vm/stubGenerator_zero.d \
./src/hotspot/cpu/zero/vm/stubRoutines_zero.d \
./src/hotspot/cpu/zero/vm/templateInterpreter_zero.d \
./src/hotspot/cpu/zero/vm/templateTable_zero.d \
./src/hotspot/cpu/zero/vm/vm_version_zero.d \
./src/hotspot/cpu/zero/vm/vmreg_zero.d \
./src/hotspot/cpu/zero/vm/vtableStubs_zero.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/cpu/zero/vm/%.o: ../src/hotspot/cpu/zero/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


