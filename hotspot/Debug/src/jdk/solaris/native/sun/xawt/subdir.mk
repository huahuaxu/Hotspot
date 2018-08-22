################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/xawt/XToolkit.c \
../src/jdk/solaris/native/sun/xawt/XWindow.c \
../src/jdk/solaris/native/sun/xawt/XlibWrapper.c \
../src/jdk/solaris/native/sun/xawt/awt_Desktop.c 

OBJS += \
./src/jdk/solaris/native/sun/xawt/XToolkit.o \
./src/jdk/solaris/native/sun/xawt/XWindow.o \
./src/jdk/solaris/native/sun/xawt/XlibWrapper.o \
./src/jdk/solaris/native/sun/xawt/awt_Desktop.o 

C_DEPS += \
./src/jdk/solaris/native/sun/xawt/XToolkit.d \
./src/jdk/solaris/native/sun/xawt/XWindow.d \
./src/jdk/solaris/native/sun/xawt/XlibWrapper.d \
./src/jdk/solaris/native/sun/xawt/awt_Desktop.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/xawt/%.o: ../src/jdk/solaris/native/sun/xawt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


