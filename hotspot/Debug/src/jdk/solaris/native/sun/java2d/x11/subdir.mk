################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/native/sun/java2d/x11/X11FontScaler_md.c \
../src/jdk/solaris/native/sun/java2d/x11/X11PMBlitLoops.c \
../src/jdk/solaris/native/sun/java2d/x11/X11Renderer.c \
../src/jdk/solaris/native/sun/java2d/x11/X11SurfaceData.c \
../src/jdk/solaris/native/sun/java2d/x11/X11TextRenderer_md.c \
../src/jdk/solaris/native/sun/java2d/x11/XRBackendNative.c \
../src/jdk/solaris/native/sun/java2d/x11/XRSurfaceData.c 

OBJS += \
./src/jdk/solaris/native/sun/java2d/x11/X11FontScaler_md.o \
./src/jdk/solaris/native/sun/java2d/x11/X11PMBlitLoops.o \
./src/jdk/solaris/native/sun/java2d/x11/X11Renderer.o \
./src/jdk/solaris/native/sun/java2d/x11/X11SurfaceData.o \
./src/jdk/solaris/native/sun/java2d/x11/X11TextRenderer_md.o \
./src/jdk/solaris/native/sun/java2d/x11/XRBackendNative.o \
./src/jdk/solaris/native/sun/java2d/x11/XRSurfaceData.o 

C_DEPS += \
./src/jdk/solaris/native/sun/java2d/x11/X11FontScaler_md.d \
./src/jdk/solaris/native/sun/java2d/x11/X11PMBlitLoops.d \
./src/jdk/solaris/native/sun/java2d/x11/X11Renderer.d \
./src/jdk/solaris/native/sun/java2d/x11/X11SurfaceData.d \
./src/jdk/solaris/native/sun/java2d/x11/X11TextRenderer_md.d \
./src/jdk/solaris/native/sun/java2d/x11/XRBackendNative.d \
./src/jdk/solaris/native/sun/java2d/x11/XRSurfaceData.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/native/sun/java2d/x11/%.o: ../src/jdk/solaris/native/sun/java2d/x11/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


