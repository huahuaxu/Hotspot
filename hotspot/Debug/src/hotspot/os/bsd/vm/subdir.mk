################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/bsd/vm/attachListener_bsd.cpp \
../src/hotspot/os/bsd/vm/chaitin_bsd.cpp \
../src/hotspot/os/bsd/vm/decoder_machO.cpp \
../src/hotspot/os/bsd/vm/dtraceJSDT_bsd.cpp \
../src/hotspot/os/bsd/vm/jvm_bsd.cpp \
../src/hotspot/os/bsd/vm/mutex_bsd.cpp \
../src/hotspot/os/bsd/vm/osThread_bsd.cpp \
../src/hotspot/os/bsd/vm/os_bsd.cpp \
../src/hotspot/os/bsd/vm/perfMemory_bsd.cpp \
../src/hotspot/os/bsd/vm/stubRoutines_bsd.cpp \
../src/hotspot/os/bsd/vm/threadCritical_bsd.cpp \
../src/hotspot/os/bsd/vm/vmError_bsd.cpp 

C_SRCS += \
../src/hotspot/os/bsd/vm/jsig.c 

OBJS += \
./src/hotspot/os/bsd/vm/attachListener_bsd.o \
./src/hotspot/os/bsd/vm/chaitin_bsd.o \
./src/hotspot/os/bsd/vm/decoder_machO.o \
./src/hotspot/os/bsd/vm/dtraceJSDT_bsd.o \
./src/hotspot/os/bsd/vm/jsig.o \
./src/hotspot/os/bsd/vm/jvm_bsd.o \
./src/hotspot/os/bsd/vm/mutex_bsd.o \
./src/hotspot/os/bsd/vm/osThread_bsd.o \
./src/hotspot/os/bsd/vm/os_bsd.o \
./src/hotspot/os/bsd/vm/perfMemory_bsd.o \
./src/hotspot/os/bsd/vm/stubRoutines_bsd.o \
./src/hotspot/os/bsd/vm/threadCritical_bsd.o \
./src/hotspot/os/bsd/vm/vmError_bsd.o 

C_DEPS += \
./src/hotspot/os/bsd/vm/jsig.d 

CPP_DEPS += \
./src/hotspot/os/bsd/vm/attachListener_bsd.d \
./src/hotspot/os/bsd/vm/chaitin_bsd.d \
./src/hotspot/os/bsd/vm/decoder_machO.d \
./src/hotspot/os/bsd/vm/dtraceJSDT_bsd.d \
./src/hotspot/os/bsd/vm/jvm_bsd.d \
./src/hotspot/os/bsd/vm/mutex_bsd.d \
./src/hotspot/os/bsd/vm/osThread_bsd.d \
./src/hotspot/os/bsd/vm/os_bsd.d \
./src/hotspot/os/bsd/vm/perfMemory_bsd.d \
./src/hotspot/os/bsd/vm/stubRoutines_bsd.d \
./src/hotspot/os/bsd/vm/threadCritical_bsd.d \
./src/hotspot/os/bsd/vm/vmError_bsd.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/bsd/vm/%.o: ../src/hotspot/os/bsd/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/hotspot/os/bsd/vm/%.o: ../src/hotspot/os/bsd/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


