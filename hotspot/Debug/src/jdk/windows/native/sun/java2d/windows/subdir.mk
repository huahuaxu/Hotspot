################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/windows/native/sun/java2d/windows/GDIBlitLoops.cpp \
../src/jdk/windows/native/sun/java2d/windows/GDIRenderer.cpp \
../src/jdk/windows/native/sun/java2d/windows/GDIWindowSurfaceData.cpp \
../src/jdk/windows/native/sun/java2d/windows/WindowsFlags.cpp 

OBJS += \
./src/jdk/windows/native/sun/java2d/windows/GDIBlitLoops.o \
./src/jdk/windows/native/sun/java2d/windows/GDIRenderer.o \
./src/jdk/windows/native/sun/java2d/windows/GDIWindowSurfaceData.o \
./src/jdk/windows/native/sun/java2d/windows/WindowsFlags.o 

CPP_DEPS += \
./src/jdk/windows/native/sun/java2d/windows/GDIBlitLoops.d \
./src/jdk/windows/native/sun/java2d/windows/GDIRenderer.d \
./src/jdk/windows/native/sun/java2d/windows/GDIWindowSurfaceData.d \
./src/jdk/windows/native/sun/java2d/windows/WindowsFlags.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/java2d/windows/%.o: ../src/jdk/windows/native/sun/java2d/windows/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


