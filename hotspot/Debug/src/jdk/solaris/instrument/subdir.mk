################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/instrument/EncodingSupport_md.c \
../src/jdk/solaris/instrument/FileSystemSupport_md.c 

OBJS += \
./src/jdk/solaris/instrument/EncodingSupport_md.o \
./src/jdk/solaris/instrument/FileSystemSupport_md.o 

C_DEPS += \
./src/jdk/solaris/instrument/EncodingSupport_md.d \
./src/jdk/solaris/instrument/FileSystemSupport_md.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/instrument/%.o: ../src/jdk/solaris/instrument/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


