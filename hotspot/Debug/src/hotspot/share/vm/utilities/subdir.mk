################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/utilities/accessFlags.cpp \
../src/hotspot/share/vm/utilities/array.cpp \
../src/hotspot/share/vm/utilities/bitMap.cpp \
../src/hotspot/share/vm/utilities/constantTag.cpp \
../src/hotspot/share/vm/utilities/copy.cpp \
../src/hotspot/share/vm/utilities/debug.cpp \
../src/hotspot/share/vm/utilities/decoder.cpp \
../src/hotspot/share/vm/utilities/decoder_elf.cpp \
../src/hotspot/share/vm/utilities/elfFile.cpp \
../src/hotspot/share/vm/utilities/elfStringTable.cpp \
../src/hotspot/share/vm/utilities/elfSymbolTable.cpp \
../src/hotspot/share/vm/utilities/errorReporter.cpp \
../src/hotspot/share/vm/utilities/events.cpp \
../src/hotspot/share/vm/utilities/exceptions.cpp \
../src/hotspot/share/vm/utilities/globalDefinitions.cpp \
../src/hotspot/share/vm/utilities/growableArray.cpp \
../src/hotspot/share/vm/utilities/hashtable.cpp \
../src/hotspot/share/vm/utilities/histogram.cpp \
../src/hotspot/share/vm/utilities/intHisto.cpp \
../src/hotspot/share/vm/utilities/numberSeq.cpp \
../src/hotspot/share/vm/utilities/ostream.cpp \
../src/hotspot/share/vm/utilities/preserveException.cpp \
../src/hotspot/share/vm/utilities/quickSort.cpp \
../src/hotspot/share/vm/utilities/sizes.cpp \
../src/hotspot/share/vm/utilities/taskqueue.cpp \
../src/hotspot/share/vm/utilities/utf8.cpp \
../src/hotspot/share/vm/utilities/vmError.cpp \
../src/hotspot/share/vm/utilities/workgroup.cpp \
../src/hotspot/share/vm/utilities/xmlstream.cpp \
../src/hotspot/share/vm/utilities/yieldingWorkgroup.cpp 

OBJS += \
./src/hotspot/share/vm/utilities/accessFlags.o \
./src/hotspot/share/vm/utilities/array.o \
./src/hotspot/share/vm/utilities/bitMap.o \
./src/hotspot/share/vm/utilities/constantTag.o \
./src/hotspot/share/vm/utilities/copy.o \
./src/hotspot/share/vm/utilities/debug.o \
./src/hotspot/share/vm/utilities/decoder.o \
./src/hotspot/share/vm/utilities/decoder_elf.o \
./src/hotspot/share/vm/utilities/elfFile.o \
./src/hotspot/share/vm/utilities/elfStringTable.o \
./src/hotspot/share/vm/utilities/elfSymbolTable.o \
./src/hotspot/share/vm/utilities/errorReporter.o \
./src/hotspot/share/vm/utilities/events.o \
./src/hotspot/share/vm/utilities/exceptions.o \
./src/hotspot/share/vm/utilities/globalDefinitions.o \
./src/hotspot/share/vm/utilities/growableArray.o \
./src/hotspot/share/vm/utilities/hashtable.o \
./src/hotspot/share/vm/utilities/histogram.o \
./src/hotspot/share/vm/utilities/intHisto.o \
./src/hotspot/share/vm/utilities/numberSeq.o \
./src/hotspot/share/vm/utilities/ostream.o \
./src/hotspot/share/vm/utilities/preserveException.o \
./src/hotspot/share/vm/utilities/quickSort.o \
./src/hotspot/share/vm/utilities/sizes.o \
./src/hotspot/share/vm/utilities/taskqueue.o \
./src/hotspot/share/vm/utilities/utf8.o \
./src/hotspot/share/vm/utilities/vmError.o \
./src/hotspot/share/vm/utilities/workgroup.o \
./src/hotspot/share/vm/utilities/xmlstream.o \
./src/hotspot/share/vm/utilities/yieldingWorkgroup.o 

CPP_DEPS += \
./src/hotspot/share/vm/utilities/accessFlags.d \
./src/hotspot/share/vm/utilities/array.d \
./src/hotspot/share/vm/utilities/bitMap.d \
./src/hotspot/share/vm/utilities/constantTag.d \
./src/hotspot/share/vm/utilities/copy.d \
./src/hotspot/share/vm/utilities/debug.d \
./src/hotspot/share/vm/utilities/decoder.d \
./src/hotspot/share/vm/utilities/decoder_elf.d \
./src/hotspot/share/vm/utilities/elfFile.d \
./src/hotspot/share/vm/utilities/elfStringTable.d \
./src/hotspot/share/vm/utilities/elfSymbolTable.d \
./src/hotspot/share/vm/utilities/errorReporter.d \
./src/hotspot/share/vm/utilities/events.d \
./src/hotspot/share/vm/utilities/exceptions.d \
./src/hotspot/share/vm/utilities/globalDefinitions.d \
./src/hotspot/share/vm/utilities/growableArray.d \
./src/hotspot/share/vm/utilities/hashtable.d \
./src/hotspot/share/vm/utilities/histogram.d \
./src/hotspot/share/vm/utilities/intHisto.d \
./src/hotspot/share/vm/utilities/numberSeq.d \
./src/hotspot/share/vm/utilities/ostream.d \
./src/hotspot/share/vm/utilities/preserveException.d \
./src/hotspot/share/vm/utilities/quickSort.d \
./src/hotspot/share/vm/utilities/sizes.d \
./src/hotspot/share/vm/utilities/taskqueue.d \
./src/hotspot/share/vm/utilities/utf8.d \
./src/hotspot/share/vm/utilities/vmError.d \
./src/hotspot/share/vm/utilities/workgroup.d \
./src/hotspot/share/vm/utilities/xmlstream.d \
./src/hotspot/share/vm/utilities/yieldingWorkgroup.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/utilities/%.o: ../src/hotspot/share/vm/utilities/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


