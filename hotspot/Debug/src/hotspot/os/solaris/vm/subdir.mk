################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/os/solaris/vm/attachListener_solaris.cpp \
../src/hotspot/os/solaris/vm/chaitin_solaris.cpp \
../src/hotspot/os/solaris/vm/decoder_solaris.cpp \
../src/hotspot/os/solaris/vm/dtraceJSDT_solaris.cpp \
../src/hotspot/os/solaris/vm/jvm_solaris.cpp \
../src/hotspot/os/solaris/vm/mutex_solaris.cpp \
../src/hotspot/os/solaris/vm/osThread_solaris.cpp \
../src/hotspot/os/solaris/vm/os_solaris.cpp \
../src/hotspot/os/solaris/vm/perfMemory_solaris.cpp \
../src/hotspot/os/solaris/vm/stubRoutines_solaris.cpp \
../src/hotspot/os/solaris/vm/threadCritical_solaris.cpp \
../src/hotspot/os/solaris/vm/vmError_solaris.cpp 

C_SRCS += \
../src/hotspot/os/solaris/vm/jsig.c 

OBJS += \
./src/hotspot/os/solaris/vm/attachListener_solaris.o \
./src/hotspot/os/solaris/vm/chaitin_solaris.o \
./src/hotspot/os/solaris/vm/decoder_solaris.o \
./src/hotspot/os/solaris/vm/dtraceJSDT_solaris.o \
./src/hotspot/os/solaris/vm/jsig.o \
./src/hotspot/os/solaris/vm/jvm_solaris.o \
./src/hotspot/os/solaris/vm/mutex_solaris.o \
./src/hotspot/os/solaris/vm/osThread_solaris.o \
./src/hotspot/os/solaris/vm/os_solaris.o \
./src/hotspot/os/solaris/vm/perfMemory_solaris.o \
./src/hotspot/os/solaris/vm/stubRoutines_solaris.o \
./src/hotspot/os/solaris/vm/threadCritical_solaris.o \
./src/hotspot/os/solaris/vm/vmError_solaris.o 

C_DEPS += \
./src/hotspot/os/solaris/vm/jsig.d 

CPP_DEPS += \
./src/hotspot/os/solaris/vm/attachListener_solaris.d \
./src/hotspot/os/solaris/vm/chaitin_solaris.d \
./src/hotspot/os/solaris/vm/decoder_solaris.d \
./src/hotspot/os/solaris/vm/dtraceJSDT_solaris.d \
./src/hotspot/os/solaris/vm/jvm_solaris.d \
./src/hotspot/os/solaris/vm/mutex_solaris.d \
./src/hotspot/os/solaris/vm/osThread_solaris.d \
./src/hotspot/os/solaris/vm/os_solaris.d \
./src/hotspot/os/solaris/vm/perfMemory_solaris.d \
./src/hotspot/os/solaris/vm/stubRoutines_solaris.d \
./src/hotspot/os/solaris/vm/threadCritical_solaris.d \
./src/hotspot/os/solaris/vm/vmError_solaris.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/solaris/vm/%.o: ../src/hotspot/os/solaris/vm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/hotspot/os/solaris/vm/%.o: ../src/hotspot/os/solaris/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


