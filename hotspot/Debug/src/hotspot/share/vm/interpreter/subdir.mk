################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/interpreter/bytecode.cpp \
../src/hotspot/share/vm/interpreter/bytecodeHistogram.cpp \
../src/hotspot/share/vm/interpreter/bytecodeInterpreter.cpp \
../src/hotspot/share/vm/interpreter/bytecodeStream.cpp \
../src/hotspot/share/vm/interpreter/bytecodeTracer.cpp \
../src/hotspot/share/vm/interpreter/bytecodes.cpp \
../src/hotspot/share/vm/interpreter/cppInterpreter.cpp \
../src/hotspot/share/vm/interpreter/interpreter.cpp \
../src/hotspot/share/vm/interpreter/interpreterRuntime.cpp \
../src/hotspot/share/vm/interpreter/invocationCounter.cpp \
../src/hotspot/share/vm/interpreter/linkResolver.cpp \
../src/hotspot/share/vm/interpreter/oopMapCache.cpp \
../src/hotspot/share/vm/interpreter/rewriter.cpp \
../src/hotspot/share/vm/interpreter/templateInterpreter.cpp \
../src/hotspot/share/vm/interpreter/templateTable.cpp 

OBJS += \
./src/hotspot/share/vm/interpreter/bytecode.o \
./src/hotspot/share/vm/interpreter/bytecodeHistogram.o \
./src/hotspot/share/vm/interpreter/bytecodeInterpreter.o \
./src/hotspot/share/vm/interpreter/bytecodeStream.o \
./src/hotspot/share/vm/interpreter/bytecodeTracer.o \
./src/hotspot/share/vm/interpreter/bytecodes.o \
./src/hotspot/share/vm/interpreter/cppInterpreter.o \
./src/hotspot/share/vm/interpreter/interpreter.o \
./src/hotspot/share/vm/interpreter/interpreterRuntime.o \
./src/hotspot/share/vm/interpreter/invocationCounter.o \
./src/hotspot/share/vm/interpreter/linkResolver.o \
./src/hotspot/share/vm/interpreter/oopMapCache.o \
./src/hotspot/share/vm/interpreter/rewriter.o \
./src/hotspot/share/vm/interpreter/templateInterpreter.o \
./src/hotspot/share/vm/interpreter/templateTable.o 

CPP_DEPS += \
./src/hotspot/share/vm/interpreter/bytecode.d \
./src/hotspot/share/vm/interpreter/bytecodeHistogram.d \
./src/hotspot/share/vm/interpreter/bytecodeInterpreter.d \
./src/hotspot/share/vm/interpreter/bytecodeStream.d \
./src/hotspot/share/vm/interpreter/bytecodeTracer.d \
./src/hotspot/share/vm/interpreter/bytecodes.d \
./src/hotspot/share/vm/interpreter/cppInterpreter.d \
./src/hotspot/share/vm/interpreter/interpreter.d \
./src/hotspot/share/vm/interpreter/interpreterRuntime.d \
./src/hotspot/share/vm/interpreter/invocationCounter.d \
./src/hotspot/share/vm/interpreter/linkResolver.d \
./src/hotspot/share/vm/interpreter/oopMapCache.d \
./src/hotspot/share/vm/interpreter/rewriter.d \
./src/hotspot/share/vm/interpreter/templateInterpreter.d \
./src/hotspot/share/vm/interpreter/templateTable.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/interpreter/%.o: ../src/hotspot/share/vm/interpreter/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


