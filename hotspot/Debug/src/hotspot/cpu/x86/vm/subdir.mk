################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/cpu/x86/vm/assembler_x86.cpp \
../src/hotspot/cpu/x86/vm/bytecodeInterpreter_x86.cpp \
../src/hotspot/cpu/x86/vm/bytecodes_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_CodeStubs_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_FpuStackSim_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_FrameMap_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_LIRAssembler_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_LIRGenerator_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_LinearScan_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_MacroAssembler_x86.cpp \
../src/hotspot/cpu/x86/vm/c1_Runtime1_x86.cpp \
../src/hotspot/cpu/x86/vm/c2_init_x86.cpp \
../src/hotspot/cpu/x86/vm/cppInterpreter_x86.cpp \
../src/hotspot/cpu/x86/vm/debug_x86.cpp \
../src/hotspot/cpu/x86/vm/depChecker_x86.cpp \
../src/hotspot/cpu/x86/vm/dump_x86_32.cpp \
../src/hotspot/cpu/x86/vm/dump_x86_64.cpp \
../src/hotspot/cpu/x86/vm/frame_x86.cpp \
../src/hotspot/cpu/x86/vm/icBuffer_x86.cpp \
../src/hotspot/cpu/x86/vm/icache_x86.cpp \
../src/hotspot/cpu/x86/vm/interp_masm_x86_32.cpp \
../src/hotspot/cpu/x86/vm/interp_masm_x86_64.cpp \
../src/hotspot/cpu/x86/vm/interpreterRT_x86_32.cpp \
../src/hotspot/cpu/x86/vm/interpreterRT_x86_64.cpp \
../src/hotspot/cpu/x86/vm/interpreter_x86_32.cpp \
../src/hotspot/cpu/x86/vm/interpreter_x86_64.cpp \
../src/hotspot/cpu/x86/vm/jniFastGetField_x86_32.cpp \
../src/hotspot/cpu/x86/vm/jniFastGetField_x86_64.cpp \
../src/hotspot/cpu/x86/vm/methodHandles_x86.cpp \
../src/hotspot/cpu/x86/vm/nativeInst_x86.cpp \
../src/hotspot/cpu/x86/vm/register_definitions_x86.cpp \
../src/hotspot/cpu/x86/vm/register_x86.cpp \
../src/hotspot/cpu/x86/vm/relocInfo_x86.cpp \
../src/hotspot/cpu/x86/vm/runtime_x86_32.cpp \
../src/hotspot/cpu/x86/vm/runtime_x86_64.cpp \
../src/hotspot/cpu/x86/vm/sharedRuntime_x86_32.cpp \
../src/hotspot/cpu/x86/vm/sharedRuntime_x86_64.cpp \
../src/hotspot/cpu/x86/vm/stubGenerator_x86_32.cpp \
../src/hotspot/cpu/x86/vm/stubGenerator_x86_64.cpp \
../src/hotspot/cpu/x86/vm/stubRoutines_x86_32.cpp \
../src/hotspot/cpu/x86/vm/stubRoutines_x86_64.cpp \
../src/hotspot/cpu/x86/vm/templateInterpreter_x86_32.cpp \
../src/hotspot/cpu/x86/vm/templateInterpreter_x86_64.cpp \
../src/hotspot/cpu/x86/vm/templateTable_x86_32.cpp \
../src/hotspot/cpu/x86/vm/templateTable_x86_64.cpp \
../src/hotspot/cpu/x86/vm/vm_version_x86.cpp \
../src/hotspot/cpu/x86/vm/vmreg_x86.cpp \
../src/hotspot/cpu/x86/vm/vtableStubs_x86_32.cpp \
../src/hotspot/cpu/x86/vm/vtableStubs_x86_64.cpp 

OBJS += \
./src/hotspot/cpu/x86/vm/assembler_x86.o \
./src/hotspot/cpu/x86/vm/bytecodeInterpreter_x86.o \
./src/hotspot/cpu/x86/vm/bytecodes_x86.o \
./src/hotspot/cpu/x86/vm/c1_CodeStubs_x86.o \
./src/hotspot/cpu/x86/vm/c1_FpuStackSim_x86.o \
./src/hotspot/cpu/x86/vm/c1_FrameMap_x86.o \
./src/hotspot/cpu/x86/vm/c1_LIRAssembler_x86.o \
./src/hotspot/cpu/x86/vm/c1_LIRGenerator_x86.o \
./src/hotspot/cpu/x86/vm/c1_LinearScan_x86.o \
./src/hotspot/cpu/x86/vm/c1_MacroAssembler_x86.o \
./src/hotspot/cpu/x86/vm/c1_Runtime1_x86.o \
./src/hotspot/cpu/x86/vm/c2_init_x86.o \
./src/hotspot/cpu/x86/vm/cppInterpreter_x86.o \
./src/hotspot/cpu/x86/vm/debug_x86.o \
./src/hotspot/cpu/x86/vm/depChecker_x86.o \
./src/hotspot/cpu/x86/vm/dump_x86_32.o \
./src/hotspot/cpu/x86/vm/dump_x86_64.o \
./src/hotspot/cpu/x86/vm/frame_x86.o \
./src/hotspot/cpu/x86/vm/icBuffer_x86.o \
./src/hotspot/cpu/x86/vm/icache_x86.o \
./src/hotspot/cpu/x86/vm/interp_masm_x86_32.o \
./src/hotspot/cpu/x86/vm/interp_masm_x86_64.o \
./src/hotspot/cpu/x86/vm/interpreterRT_x86_32.o \
./src/hotspot/cpu/x86/vm/interpreterRT_x86_64.o \
./src/hotspot/cpu/x86/vm/interpreter_x86_32.o \
./src/hotspot/cpu/x86/vm/interpreter_x86_64.o \
./src/hotspot/cpu/x86/vm/jniFastGetField_x86_32.o \
./src/hotspot/cpu/x86/vm/jniFastGetField_x86_64.o \
./src/hotspot/cpu/x86/vm/methodHandles_x86.o \
./src/hotspot/cpu/x86/vm/nativeInst_x86.o \
./src/hotspot/cpu/x86/vm/register_definitions_x86.o \
./src/hotspot/cpu/x86/vm/register_x86.o \
./src/hotspot/cpu/x86/vm/relocInfo_x86.o \
./src/hotspot/cpu/x86/vm/runtime_x86_32.o \
./src/hotspot/cpu/x86/vm/runtime_x86_64.o \
./src/hotspot/cpu/x86/vm/sharedRuntime_x86_32.o \
./src/hotspot/cpu/x86/vm/sharedRuntime_x86_64.o \
./src/hotspot/cpu/x86/vm/stubGenerator_x86_32.o \
./src/hotspot/cpu/x86/vm/stubGenerator_x86_64.o \
./src/hotspot/cpu/x86/vm/stubRoutines_x86_32.o \
./src/hotspot/cpu/x86/vm/stubRoutines_x86_64.o \
./src/hotspot/cpu/x86/vm/templateInterpreter_x86_32.o \
./src/hotspot/cpu/x86/vm/templateInterpreter_x86_64.o \
./src/hotspot/cpu/x86/vm/templateTable_x86_32.o \
./src/hotspot/cpu/x86/vm/templateTable_x86_64.o \
./src/hotspot/cpu/x86/vm/vm_version_x86.o \
./src/hotspot/cpu/x86/vm/vmreg_x86.o \
./src/hotspot/cpu/x86/vm/vtableStubs_x86_32.o \
./src/hotspot/cpu/x86/vm/vtableStubs_x86_64.o 

CPP_DEPS += \
./src/hotspot/cpu/x86/vm/assembler_x86.d \
./src/hotspot/cpu/x86/vm/bytecodeInterpreter_x86.d \
./src/hotspot/cpu/x86/vm/bytecodes_x86.d \
./src/hotspot/cpu/x86/vm/c1_CodeStubs_x86.d \
./src/hotspot/cpu/x86/vm/c1_FpuStackSim_x86.d \
./src/hotspot/cpu/x86/vm/c1_FrameMap_x86.d \
./src/hotspot/cpu/x86/vm/c1_LIRAssembler_x86.d \
./src/hotspot/cpu/x86/vm/c1_LIRGenerator_x86.d \
./src/hotspot/cpu/x86/vm/c1_LinearScan_x86.d \
./src/hotspot/cpu/x86/vm/c1_MacroAssembler_x86.d \
./src/hotspot/cpu/x86/vm/c1_Runtime1_x86.d \
./src/hotspot/cpu/x86/vm/c2_init_x86.d \
./src/hotspot/cpu/x86/vm/cppInterpreter_x86.d \
./src/hotspot/cpu/x86/vm/debug_x86.d \
./src/hotspot/cpu/x86/vm/depChecker_x86.d \
./src/hotspot/cpu/x86/vm/dump_x86_32.d \
./src/hotspot/cpu/x86/vm/dump_x86_64.d \
./src/hotspot/cpu/x86/vm/frame_x86.d \
./src/hotspot/cpu/x86/vm/icBuffer_x86.d \
./src/hotspot/cpu/x86/vm/icache_x86.d \
./src/hotspot/cpu/x86/vm/interp_masm_x86_32.d \
./src/hotspot/cpu/x86/vm/interp_masm_x86_64.d \
./src/hotspot/cpu/x86/vm/interpreterRT_x86_32.d \
./src/hotspot/cpu/x86/vm/interpreterRT_x86_64.d \
./src/hotspot/cpu/x86/vm/interpreter_x86_32.d \
./src/hotspot/cpu/x86/vm/interpreter_x86_64.d \
./src/hotspot/cpu/x86/vm/jniFastGetField_x86_32.d \
./src/hotspot/cpu/x86/vm/jniFastGetField_x86_64.d \
./src/hotspot/cpu/x86/vm/methodHandles_x86.d \
./src/hotspot/cpu/x86/vm/nativeInst_x86.d \
./src/hotspot/cpu/x86/vm/register_definitions_x86.d \
./src/hotspot/cpu/x86/vm/register_x86.d \
./src/hotspot/cpu/x86/vm/relocInfo_x86.d \
./src/hotspot/cpu/x86/vm/runtime_x86_32.d \
./src/hotspot/cpu/x86/vm/runtime_x86_64.d \
./src/hotspot/cpu/x86/vm/sharedRuntime_x86_32.d \
./src/hotspot/cpu/x86/vm/sharedRuntime_x86_64.d \
./src/hotspot/cpu/x86/vm/stubGenerator_x86_32.d \
./src/hotspot/cpu/x86/vm/stubGenerator_x86_64.d \
./src/hotspot/cpu/x86/vm/stubRoutines_x86_32.d \
./src/hotspot/cpu/x86/vm/stubRoutines_x86_64.d \
./src/hotspot/cpu/x86/vm/templateInterpreter_x86_32.d \
./src/hotspot/cpu/x86/vm/templateInterpreter_x86_64.d \
./src/hotspot/cpu/x86/vm/templateTable_x86_32.d \
./src/hotspot/cpu/x86/vm/templateTable_x86_64.d \
./src/hotspot/cpu/x86/vm/vm_version_x86.d \
./src/hotspot/cpu/x86/vm/vmreg_x86.d \
./src/hotspot/cpu/x86/vm/vtableStubs_x86_32.d \
./src/hotspot/cpu/x86/vm/vtableStubs_x86_64.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/cpu/x86/vm/%.o: ../src/hotspot/cpu/x86/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


