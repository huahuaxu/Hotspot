################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/transport/shmem/shmem_md.c 

OBJS += \
./src/jdk/windows/transport/shmem/shmem_md.o 

C_DEPS += \
./src/jdk/windows/transport/shmem/shmem_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/transport/shmem/%.o: ../src/jdk/windows/transport/shmem/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


