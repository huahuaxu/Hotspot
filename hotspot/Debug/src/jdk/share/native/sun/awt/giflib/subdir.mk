################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/giflib/dgif_lib.c \
../src/jdk/share/native/sun/awt/giflib/gif_err.c \
../src/jdk/share/native/sun/awt/giflib/gifalloc.c 

OBJS += \
./src/jdk/share/native/sun/awt/giflib/dgif_lib.o \
./src/jdk/share/native/sun/awt/giflib/gif_err.o \
./src/jdk/share/native/sun/awt/giflib/gifalloc.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/giflib/dgif_lib.d \
./src/jdk/share/native/sun/awt/giflib/gif_err.d \
./src/jdk/share/native/sun/awt/giflib/gifalloc.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/giflib/%.o: ../src/jdk/share/native/sun/awt/giflib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


