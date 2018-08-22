################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/share/demo/jvmti/waiters/Agent.cpp \
../src/jdk/share/demo/jvmti/waiters/Monitor.cpp \
../src/jdk/share/demo/jvmti/waiters/Thread.cpp \
../src/jdk/share/demo/jvmti/waiters/waiters.cpp 

OBJS += \
./src/jdk/share/demo/jvmti/waiters/Agent.o \
./src/jdk/share/demo/jvmti/waiters/Monitor.o \
./src/jdk/share/demo/jvmti/waiters/Thread.o \
./src/jdk/share/demo/jvmti/waiters/waiters.o 

CPP_DEPS += \
./src/jdk/share/demo/jvmti/waiters/Agent.d \
./src/jdk/share/demo/jvmti/waiters/Monitor.d \
./src/jdk/share/demo/jvmti/waiters/Thread.d \
./src/jdk/share/demo/jvmti/waiters/waiters.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/demo/jvmti/waiters/%.o: ../src/jdk/share/demo/jvmti/waiters/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


