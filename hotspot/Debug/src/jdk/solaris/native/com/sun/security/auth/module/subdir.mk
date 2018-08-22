################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/com/sun/security/auth/module/Solaris.c \
../src/jdk/solaris/native/com/sun/security/auth/module/Unix.c 

OBJS += \
./src/jdk/solaris/native/com/sun/security/auth/module/Solaris.o \
./src/jdk/solaris/native/com/sun/security/auth/module/Unix.o 

C_DEPS += \
./src/jdk/solaris/native/com/sun/security/auth/module/Solaris.d \
./src/jdk/solaris/native/com/sun/security/auth/module/Unix.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/com/sun/security/auth/module/%.o: ../src/jdk/solaris/native/com/sun/security/auth/module/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


