################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/transport/shmem/shmemBack.c \
../src/jdk/share/transport/shmem/shmemBase.c 

OBJS += \
./src/jdk/share/transport/shmem/shmemBack.o \
./src/jdk/share/transport/shmem/shmemBase.o 

C_DEPS += \
./src/jdk/share/transport/shmem/shmemBack.d \
./src/jdk/share/transport/shmem/shmemBase.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/transport/shmem/%.o: ../src/jdk/share/transport/shmem/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


