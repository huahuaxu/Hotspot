################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/security/jgss/wrapper/GSSLibStub.c \
../src/jdk/share/native/sun/security/jgss/wrapper/NativeUtil.c 

OBJS += \
./src/jdk/share/native/sun/security/jgss/wrapper/GSSLibStub.o \
./src/jdk/share/native/sun/security/jgss/wrapper/NativeUtil.o 

C_DEPS += \
./src/jdk/share/native/sun/security/jgss/wrapper/GSSLibStub.d \
./src/jdk/share/native/sun/security/jgss/wrapper/NativeUtil.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/security/jgss/wrapper/%.o: ../src/jdk/share/native/sun/security/jgss/wrapper/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


