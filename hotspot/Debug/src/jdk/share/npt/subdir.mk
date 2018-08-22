################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/npt/npt.c \
../src/jdk/share/npt/utf.c 

OBJS += \
./src/jdk/share/npt/npt.o \
./src/jdk/share/npt/utf.o 

C_DEPS += \
./src/jdk/share/npt/npt.d \
./src/jdk/share/npt/utf.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/npt/%.o: ../src/jdk/share/npt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


