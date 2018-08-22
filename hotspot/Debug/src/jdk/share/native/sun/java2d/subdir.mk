################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/java2d/Disposer.c \
../src/jdk/share/native/sun/java2d/ShaderList.c \
../src/jdk/share/native/sun/java2d/SurfaceData.c \
../src/jdk/share/native/sun/java2d/Trace.c 

OBJS += \
./src/jdk/share/native/sun/java2d/Disposer.o \
./src/jdk/share/native/sun/java2d/ShaderList.o \
./src/jdk/share/native/sun/java2d/SurfaceData.o \
./src/jdk/share/native/sun/java2d/Trace.o 

C_DEPS += \
./src/jdk/share/native/sun/java2d/Disposer.d \
./src/jdk/share/native/sun/java2d/ShaderList.d \
./src/jdk/share/native/sun/java2d/SurfaceData.d \
./src/jdk/share/native/sun/java2d/Trace.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/java2d/%.o: ../src/jdk/share/native/sun/java2d/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


