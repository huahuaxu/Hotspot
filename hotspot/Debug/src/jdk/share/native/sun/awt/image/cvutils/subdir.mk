################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/image/cvutils/img_colors.c \
../src/jdk/share/native/sun/awt/image/cvutils/img_globals.c 

OBJS += \
./src/jdk/share/native/sun/awt/image/cvutils/img_colors.o \
./src/jdk/share/native/sun/awt/image/cvutils/img_globals.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/image/cvutils/img_colors.d \
./src/jdk/share/native/sun/awt/image/cvutils/img_globals.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/image/cvutils/%.o: ../src/jdk/share/native/sun/awt/image/cvutils/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


