################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/java2d/pipe/BufferedMaskBlit.c \
../src/jdk/share/native/sun/java2d/pipe/BufferedRenderPipe.c \
../src/jdk/share/native/sun/java2d/pipe/Region.c \
../src/jdk/share/native/sun/java2d/pipe/ShapeSpanIterator.c \
../src/jdk/share/native/sun/java2d/pipe/SpanClipRenderer.c 

OBJS += \
./src/jdk/share/native/sun/java2d/pipe/BufferedMaskBlit.o \
./src/jdk/share/native/sun/java2d/pipe/BufferedRenderPipe.o \
./src/jdk/share/native/sun/java2d/pipe/Region.o \
./src/jdk/share/native/sun/java2d/pipe/ShapeSpanIterator.o \
./src/jdk/share/native/sun/java2d/pipe/SpanClipRenderer.o 

C_DEPS += \
./src/jdk/share/native/sun/java2d/pipe/BufferedMaskBlit.d \
./src/jdk/share/native/sun/java2d/pipe/BufferedRenderPipe.d \
./src/jdk/share/native/sun/java2d/pipe/Region.d \
./src/jdk/share/native/sun/java2d/pipe/ShapeSpanIterator.d \
./src/jdk/share/native/sun/java2d/pipe/SpanClipRenderer.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/java2d/pipe/%.o: ../src/jdk/share/native/sun/java2d/pipe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


