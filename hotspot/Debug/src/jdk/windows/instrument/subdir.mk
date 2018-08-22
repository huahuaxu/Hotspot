################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/instrument/EncodingSupport_md.c \
../src/jdk/windows/instrument/FileSystemSupport_md.c 

OBJS += \
./src/jdk/windows/instrument/EncodingSupport_md.o \
./src/jdk/windows/instrument/FileSystemSupport_md.o 

C_DEPS += \
./src/jdk/windows/instrument/EncodingSupport_md.d \
./src/jdk/windows/instrument/FileSystemSupport_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/instrument/%.o: ../src/jdk/windows/instrument/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


