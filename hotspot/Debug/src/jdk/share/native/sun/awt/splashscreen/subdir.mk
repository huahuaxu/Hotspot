################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/splashscreen/java_awt_SplashScreen.c \
../src/jdk/share/native/sun/awt/splashscreen/splashscreen_gfx_impl.c \
../src/jdk/share/native/sun/awt/splashscreen/splashscreen_gif.c \
../src/jdk/share/native/sun/awt/splashscreen/splashscreen_impl.c \
../src/jdk/share/native/sun/awt/splashscreen/splashscreen_jpeg.c \
../src/jdk/share/native/sun/awt/splashscreen/splashscreen_png.c 

OBJS += \
./src/jdk/share/native/sun/awt/splashscreen/java_awt_SplashScreen.o \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_gfx_impl.o \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_gif.o \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_impl.o \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_jpeg.o \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_png.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/splashscreen/java_awt_SplashScreen.d \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_gfx_impl.d \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_gif.d \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_impl.d \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_jpeg.d \
./src/jdk/share/native/sun/awt/splashscreen/splashscreen_png.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/splashscreen/%.o: ../src/jdk/share/native/sun/awt/splashscreen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


