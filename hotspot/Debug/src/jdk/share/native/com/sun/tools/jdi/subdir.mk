################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/com/sun/tools/jdi/SharedMemoryConnection.c \
../src/jdk/share/native/com/sun/tools/jdi/SharedMemoryTransport.c 

OBJS += \
./src/jdk/share/native/com/sun/tools/jdi/SharedMemoryConnection.o \
./src/jdk/share/native/com/sun/tools/jdi/SharedMemoryTransport.o 

C_DEPS += \
./src/jdk/share/native/com/sun/tools/jdi/SharedMemoryConnection.d \
./src/jdk/share/native/com/sun/tools/jdi/SharedMemoryTransport.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/com/sun/tools/jdi/%.o: ../src/jdk/share/native/com/sun/tools/jdi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


