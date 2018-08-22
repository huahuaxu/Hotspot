################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/image/BufImgSurfaceData.c \
../src/jdk/share/native/sun/awt/image/DataBufferNative.c \
../src/jdk/share/native/sun/awt/image/awt_ImageRep.c \
../src/jdk/share/native/sun/awt/image/awt_parseImage.c \
../src/jdk/share/native/sun/awt/image/dither.c \
../src/jdk/share/native/sun/awt/image/imageInitIDs.c 

OBJS += \
./src/jdk/share/native/sun/awt/image/BufImgSurfaceData.o \
./src/jdk/share/native/sun/awt/image/DataBufferNative.o \
./src/jdk/share/native/sun/awt/image/awt_ImageRep.o \
./src/jdk/share/native/sun/awt/image/awt_parseImage.o \
./src/jdk/share/native/sun/awt/image/dither.o \
./src/jdk/share/native/sun/awt/image/imageInitIDs.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/image/BufImgSurfaceData.d \
./src/jdk/share/native/sun/awt/image/DataBufferNative.d \
./src/jdk/share/native/sun/awt/image/awt_ImageRep.d \
./src/jdk/share/native/sun/awt/image/awt_parseImage.d \
./src/jdk/share/native/sun/awt/image/dither.d \
./src/jdk/share/native/sun/awt/image/imageInitIDs.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/image/%.o: ../src/jdk/share/native/sun/awt/image/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


