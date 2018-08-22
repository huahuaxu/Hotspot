################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/windows/native/sun/java2d/opengl/WGLGraphicsConfig.c \
../src/jdk/windows/native/sun/java2d/opengl/WGLSurfaceData.c 

OBJS += \
./src/jdk/windows/native/sun/java2d/opengl/WGLGraphicsConfig.o \
./src/jdk/windows/native/sun/java2d/opengl/WGLSurfaceData.o 

C_DEPS += \
./src/jdk/windows/native/sun/java2d/opengl/WGLGraphicsConfig.d \
./src/jdk/windows/native/sun/java2d/opengl/WGLSurfaceData.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/java2d/opengl/%.o: ../src/jdk/windows/native/sun/java2d/opengl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


