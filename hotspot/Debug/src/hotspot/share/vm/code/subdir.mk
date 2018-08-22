################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/code/codeBlob.cpp \
../src/hotspot/share/vm/code/codeCache.cpp \
../src/hotspot/share/vm/code/compiledIC.cpp \
../src/hotspot/share/vm/code/compressedStream.cpp \
../src/hotspot/share/vm/code/debugInfo.cpp \
../src/hotspot/share/vm/code/debugInfoRec.cpp \
../src/hotspot/share/vm/code/dependencies.cpp \
../src/hotspot/share/vm/code/exceptionHandlerTable.cpp \
../src/hotspot/share/vm/code/icBuffer.cpp \
../src/hotspot/share/vm/code/location.cpp \
../src/hotspot/share/vm/code/nmethod.cpp \
../src/hotspot/share/vm/code/oopRecorder.cpp \
../src/hotspot/share/vm/code/pcDesc.cpp \
../src/hotspot/share/vm/code/relocInfo.cpp \
../src/hotspot/share/vm/code/scopeDesc.cpp \
../src/hotspot/share/vm/code/stubs.cpp \
../src/hotspot/share/vm/code/vmreg.cpp \
../src/hotspot/share/vm/code/vtableStubs.cpp 

OBJS += \
./src/hotspot/share/vm/code/codeBlob.o \
./src/hotspot/share/vm/code/codeCache.o \
./src/hotspot/share/vm/code/compiledIC.o \
./src/hotspot/share/vm/code/compressedStream.o \
./src/hotspot/share/vm/code/debugInfo.o \
./src/hotspot/share/vm/code/debugInfoRec.o \
./src/hotspot/share/vm/code/dependencies.o \
./src/hotspot/share/vm/code/exceptionHandlerTable.o \
./src/hotspot/share/vm/code/icBuffer.o \
./src/hotspot/share/vm/code/location.o \
./src/hotspot/share/vm/code/nmethod.o \
./src/hotspot/share/vm/code/oopRecorder.o \
./src/hotspot/share/vm/code/pcDesc.o \
./src/hotspot/share/vm/code/relocInfo.o \
./src/hotspot/share/vm/code/scopeDesc.o \
./src/hotspot/share/vm/code/stubs.o \
./src/hotspot/share/vm/code/vmreg.o \
./src/hotspot/share/vm/code/vtableStubs.o 

CPP_DEPS += \
./src/hotspot/share/vm/code/codeBlob.d \
./src/hotspot/share/vm/code/codeCache.d \
./src/hotspot/share/vm/code/compiledIC.d \
./src/hotspot/share/vm/code/compressedStream.d \
./src/hotspot/share/vm/code/debugInfo.d \
./src/hotspot/share/vm/code/debugInfoRec.d \
./src/hotspot/share/vm/code/dependencies.d \
./src/hotspot/share/vm/code/exceptionHandlerTable.d \
./src/hotspot/share/vm/code/icBuffer.d \
./src/hotspot/share/vm/code/location.d \
./src/hotspot/share/vm/code/nmethod.d \
./src/hotspot/share/vm/code/oopRecorder.d \
./src/hotspot/share/vm/code/pcDesc.d \
./src/hotspot/share/vm/code/relocInfo.d \
./src/hotspot/share/vm/code/scopeDesc.d \
./src/hotspot/share/vm/code/stubs.d \
./src/hotspot/share/vm/code/vmreg.d \
./src/hotspot/share/vm/code/vtableStubs.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/code/%.o: ../src/hotspot/share/vm/code/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


