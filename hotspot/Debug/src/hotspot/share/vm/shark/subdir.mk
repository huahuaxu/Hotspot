################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/shark/sharkBlock.cpp \
../src/hotspot/share/vm/shark/sharkBuilder.cpp \
../src/hotspot/share/vm/shark/sharkCacheDecache.cpp \
../src/hotspot/share/vm/shark/sharkCompiler.cpp \
../src/hotspot/share/vm/shark/sharkConstant.cpp \
../src/hotspot/share/vm/shark/sharkContext.cpp \
../src/hotspot/share/vm/shark/sharkFunction.cpp \
../src/hotspot/share/vm/shark/sharkInliner.cpp \
../src/hotspot/share/vm/shark/sharkIntrinsics.cpp \
../src/hotspot/share/vm/shark/sharkInvariants.cpp \
../src/hotspot/share/vm/shark/sharkMemoryManager.cpp \
../src/hotspot/share/vm/shark/sharkNativeWrapper.cpp \
../src/hotspot/share/vm/shark/sharkRuntime.cpp \
../src/hotspot/share/vm/shark/sharkStack.cpp \
../src/hotspot/share/vm/shark/sharkState.cpp \
../src/hotspot/share/vm/shark/sharkStateScanner.cpp \
../src/hotspot/share/vm/shark/sharkTopLevelBlock.cpp \
../src/hotspot/share/vm/shark/sharkValue.cpp \
../src/hotspot/share/vm/shark/shark_globals.cpp 

OBJS += \
./src/hotspot/share/vm/shark/sharkBlock.o \
./src/hotspot/share/vm/shark/sharkBuilder.o \
./src/hotspot/share/vm/shark/sharkCacheDecache.o \
./src/hotspot/share/vm/shark/sharkCompiler.o \
./src/hotspot/share/vm/shark/sharkConstant.o \
./src/hotspot/share/vm/shark/sharkContext.o \
./src/hotspot/share/vm/shark/sharkFunction.o \
./src/hotspot/share/vm/shark/sharkInliner.o \
./src/hotspot/share/vm/shark/sharkIntrinsics.o \
./src/hotspot/share/vm/shark/sharkInvariants.o \
./src/hotspot/share/vm/shark/sharkMemoryManager.o \
./src/hotspot/share/vm/shark/sharkNativeWrapper.o \
./src/hotspot/share/vm/shark/sharkRuntime.o \
./src/hotspot/share/vm/shark/sharkStack.o \
./src/hotspot/share/vm/shark/sharkState.o \
./src/hotspot/share/vm/shark/sharkStateScanner.o \
./src/hotspot/share/vm/shark/sharkTopLevelBlock.o \
./src/hotspot/share/vm/shark/sharkValue.o \
./src/hotspot/share/vm/shark/shark_globals.o 

CPP_DEPS += \
./src/hotspot/share/vm/shark/sharkBlock.d \
./src/hotspot/share/vm/shark/sharkBuilder.d \
./src/hotspot/share/vm/shark/sharkCacheDecache.d \
./src/hotspot/share/vm/shark/sharkCompiler.d \
./src/hotspot/share/vm/shark/sharkConstant.d \
./src/hotspot/share/vm/shark/sharkContext.d \
./src/hotspot/share/vm/shark/sharkFunction.d \
./src/hotspot/share/vm/shark/sharkInliner.d \
./src/hotspot/share/vm/shark/sharkIntrinsics.d \
./src/hotspot/share/vm/shark/sharkInvariants.d \
./src/hotspot/share/vm/shark/sharkMemoryManager.d \
./src/hotspot/share/vm/shark/sharkNativeWrapper.d \
./src/hotspot/share/vm/shark/sharkRuntime.d \
./src/hotspot/share/vm/shark/sharkStack.d \
./src/hotspot/share/vm/shark/sharkState.d \
./src/hotspot/share/vm/shark/sharkStateScanner.d \
./src/hotspot/share/vm/shark/sharkTopLevelBlock.d \
./src/hotspot/share/vm/shark/sharkValue.d \
./src/hotspot/share/vm/shark/shark_globals.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/shark/%.o: ../src/hotspot/share/vm/shark/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


