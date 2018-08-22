################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/macosx/bin/java_md_macosx.c \
../src/jdk/macosx/bin/jexec.c 

OBJS += \
./src/jdk/macosx/bin/java_md_macosx.o \
./src/jdk/macosx/bin/jexec.o 

C_DEPS += \
./src/jdk/macosx/bin/java_md_macosx.d \
./src/jdk/macosx/bin/jexec.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/macosx/bin/%.o: ../src/jdk/macosx/bin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


