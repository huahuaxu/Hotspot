################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/java2d/opengl/GLXGraphicsConfig.c \
../src/jdk/solaris/native/sun/java2d/opengl/GLXSurfaceData.c 

OBJS += \
./src/jdk/solaris/native/sun/java2d/opengl/GLXGraphicsConfig.o \
./src/jdk/solaris/native/sun/java2d/opengl/GLXSurfaceData.o 

C_DEPS += \
./src/jdk/solaris/native/sun/java2d/opengl/GLXGraphicsConfig.d \
./src/jdk/solaris/native/sun/java2d/opengl/GLXSurfaceData.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/java2d/opengl/%.o: ../src/jdk/solaris/native/sun/java2d/opengl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


