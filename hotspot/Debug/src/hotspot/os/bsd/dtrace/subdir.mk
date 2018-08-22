################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/bsd/dtrace/generateJvmOffsets.cpp 

C_SRCS += \
../src/hotspot/os/bsd/dtrace/generateJvmOffsetsMain.c \
../src/hotspot/os/bsd/dtrace/jvm_dtrace.c \
../src/hotspot/os/bsd/dtrace/libjvm_db.c 

OBJS += \
./src/hotspot/os/bsd/dtrace/generateJvmOffsets.o \
./src/hotspot/os/bsd/dtrace/generateJvmOffsetsMain.o \
./src/hotspot/os/bsd/dtrace/jvm_dtrace.o \
./src/hotspot/os/bsd/dtrace/libjvm_db.o 

C_DEPS += \
./src/hotspot/os/bsd/dtrace/generateJvmOffsetsMain.d \
./src/hotspot/os/bsd/dtrace/jvm_dtrace.d \
./src/hotspot/os/bsd/dtrace/libjvm_db.d 

CPP_DEPS += \
./src/hotspot/os/bsd/dtrace/generateJvmOffsets.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/bsd/dtrace/%.o: ../src/hotspot/os/bsd/dtrace/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/hotspot/os/bsd/dtrace/%.o: ../src/hotspot/os/bsd/dtrace/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


