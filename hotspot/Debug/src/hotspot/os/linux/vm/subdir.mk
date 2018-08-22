################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/linux/vm/attachListener_linux.cpp \
../src/hotspot/os/linux/vm/chaitin_linux.cpp \
../src/hotspot/os/linux/vm/decoder_linux.cpp \
../src/hotspot/os/linux/vm/dtraceJSDT_linux.cpp \
../src/hotspot/os/linux/vm/jvm_linux.cpp \
../src/hotspot/os/linux/vm/mutex_linux.cpp \
../src/hotspot/os/linux/vm/osThread_linux.cpp \
../src/hotspot/os/linux/vm/os_linux.cpp \
../src/hotspot/os/linux/vm/perfMemory_linux.cpp \
../src/hotspot/os/linux/vm/stubRoutines_linux.cpp \
../src/hotspot/os/linux/vm/threadCritical_linux.cpp \
../src/hotspot/os/linux/vm/vmError_linux.cpp 

C_SRCS += \
../src/hotspot/os/linux/vm/jsig.c 

OBJS += \
./src/hotspot/os/linux/vm/attachListener_linux.o \
./src/hotspot/os/linux/vm/chaitin_linux.o \
./src/hotspot/os/linux/vm/decoder_linux.o \
./src/hotspot/os/linux/vm/dtraceJSDT_linux.o \
./src/hotspot/os/linux/vm/jsig.o \
./src/hotspot/os/linux/vm/jvm_linux.o \
./src/hotspot/os/linux/vm/mutex_linux.o \
./src/hotspot/os/linux/vm/osThread_linux.o \
./src/hotspot/os/linux/vm/os_linux.o \
./src/hotspot/os/linux/vm/perfMemory_linux.o \
./src/hotspot/os/linux/vm/stubRoutines_linux.o \
./src/hotspot/os/linux/vm/threadCritical_linux.o \
./src/hotspot/os/linux/vm/vmError_linux.o 

C_DEPS += \
./src/hotspot/os/linux/vm/jsig.d 

CPP_DEPS += \
./src/hotspot/os/linux/vm/attachListener_linux.d \
./src/hotspot/os/linux/vm/chaitin_linux.d \
./src/hotspot/os/linux/vm/decoder_linux.d \
./src/hotspot/os/linux/vm/dtraceJSDT_linux.d \
./src/hotspot/os/linux/vm/jvm_linux.d \
./src/hotspot/os/linux/vm/mutex_linux.d \
./src/hotspot/os/linux/vm/osThread_linux.d \
./src/hotspot/os/linux/vm/os_linux.d \
./src/hotspot/os/linux/vm/perfMemory_linux.d \
./src/hotspot/os/linux/vm/stubRoutines_linux.d \
./src/hotspot/os/linux/vm/threadCritical_linux.d \
./src/hotspot/os/linux/vm/vmError_linux.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/linux/vm/%.o: ../src/hotspot/os/linux/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/hotspot/os/linux/vm/%.o: ../src/hotspot/os/linux/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


