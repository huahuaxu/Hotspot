################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/classfile/altHashing.cpp \
../src/hotspot/share/vm/classfile/classFileError.cpp \
../src/hotspot/share/vm/classfile/classFileParser.cpp \
../src/hotspot/share/vm/classfile/classFileStream.cpp \
../src/hotspot/share/vm/classfile/classLoader.cpp \
../src/hotspot/share/vm/classfile/dictionary.cpp \
../src/hotspot/share/vm/classfile/javaAssertions.cpp \
../src/hotspot/share/vm/classfile/javaClasses.cpp \
../src/hotspot/share/vm/classfile/loaderConstraints.cpp \
../src/hotspot/share/vm/classfile/placeholders.cpp \
../src/hotspot/share/vm/classfile/resolutionErrors.cpp \
../src/hotspot/share/vm/classfile/stackMapFrame.cpp \
../src/hotspot/share/vm/classfile/stackMapTable.cpp \
../src/hotspot/share/vm/classfile/symbolTable.cpp \
../src/hotspot/share/vm/classfile/systemDictionary.cpp \
../src/hotspot/share/vm/classfile/verificationType.cpp \
../src/hotspot/share/vm/classfile/verifier.cpp \
../src/hotspot/share/vm/classfile/vmSymbols.cpp 

OBJS += \
./src/hotspot/share/vm/classfile/altHashing.o \
./src/hotspot/share/vm/classfile/classFileError.o \
./src/hotspot/share/vm/classfile/classFileParser.o \
./src/hotspot/share/vm/classfile/classFileStream.o \
./src/hotspot/share/vm/classfile/classLoader.o \
./src/hotspot/share/vm/classfile/dictionary.o \
./src/hotspot/share/vm/classfile/javaAssertions.o \
./src/hotspot/share/vm/classfile/javaClasses.o \
./src/hotspot/share/vm/classfile/loaderConstraints.o \
./src/hotspot/share/vm/classfile/placeholders.o \
./src/hotspot/share/vm/classfile/resolutionErrors.o \
./src/hotspot/share/vm/classfile/stackMapFrame.o \
./src/hotspot/share/vm/classfile/stackMapTable.o \
./src/hotspot/share/vm/classfile/symbolTable.o \
./src/hotspot/share/vm/classfile/systemDictionary.o \
./src/hotspot/share/vm/classfile/verificationType.o \
./src/hotspot/share/vm/classfile/verifier.o \
./src/hotspot/share/vm/classfile/vmSymbols.o 

CPP_DEPS += \
./src/hotspot/share/vm/classfile/altHashing.d \
./src/hotspot/share/vm/classfile/classFileError.d \
./src/hotspot/share/vm/classfile/classFileParser.d \
./src/hotspot/share/vm/classfile/classFileStream.d \
./src/hotspot/share/vm/classfile/classLoader.d \
./src/hotspot/share/vm/classfile/dictionary.d \
./src/hotspot/share/vm/classfile/javaAssertions.d \
./src/hotspot/share/vm/classfile/javaClasses.d \
./src/hotspot/share/vm/classfile/loaderConstraints.d \
./src/hotspot/share/vm/classfile/placeholders.d \
./src/hotspot/share/vm/classfile/resolutionErrors.d \
./src/hotspot/share/vm/classfile/stackMapFrame.d \
./src/hotspot/share/vm/classfile/stackMapTable.d \
./src/hotspot/share/vm/classfile/symbolTable.d \
./src/hotspot/share/vm/classfile/systemDictionary.d \
./src/hotspot/share/vm/classfile/verificationType.d \
./src/hotspot/share/vm/classfile/verifier.d \
./src/hotspot/share/vm/classfile/vmSymbols.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/classfile/%.o: ../src/hotspot/share/vm/classfile/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


