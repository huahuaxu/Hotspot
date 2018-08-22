################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/java2d/opengl/OGLBlitLoops.c \
../src/jdk/share/native/sun/java2d/opengl/OGLBufImgOps.c \
../src/jdk/share/native/sun/java2d/opengl/OGLContext.c \
../src/jdk/share/native/sun/java2d/opengl/OGLFuncs.c \
../src/jdk/share/native/sun/java2d/opengl/OGLMaskBlit.c \
../src/jdk/share/native/sun/java2d/opengl/OGLMaskFill.c \
../src/jdk/share/native/sun/java2d/opengl/OGLPaints.c \
../src/jdk/share/native/sun/java2d/opengl/OGLRenderQueue.c \
../src/jdk/share/native/sun/java2d/opengl/OGLRenderer.c \
../src/jdk/share/native/sun/java2d/opengl/OGLSurfaceData.c \
../src/jdk/share/native/sun/java2d/opengl/OGLTextRenderer.c \
../src/jdk/share/native/sun/java2d/opengl/OGLVertexCache.c 

OBJS += \
./src/jdk/share/native/sun/java2d/opengl/OGLBlitLoops.o \
./src/jdk/share/native/sun/java2d/opengl/OGLBufImgOps.o \
./src/jdk/share/native/sun/java2d/opengl/OGLContext.o \
./src/jdk/share/native/sun/java2d/opengl/OGLFuncs.o \
./src/jdk/share/native/sun/java2d/opengl/OGLMaskBlit.o \
./src/jdk/share/native/sun/java2d/opengl/OGLMaskFill.o \
./src/jdk/share/native/sun/java2d/opengl/OGLPaints.o \
./src/jdk/share/native/sun/java2d/opengl/OGLRenderQueue.o \
./src/jdk/share/native/sun/java2d/opengl/OGLRenderer.o \
./src/jdk/share/native/sun/java2d/opengl/OGLSurfaceData.o \
./src/jdk/share/native/sun/java2d/opengl/OGLTextRenderer.o \
./src/jdk/share/native/sun/java2d/opengl/OGLVertexCache.o 

C_DEPS += \
./src/jdk/share/native/sun/java2d/opengl/OGLBlitLoops.d \
./src/jdk/share/native/sun/java2d/opengl/OGLBufImgOps.d \
./src/jdk/share/native/sun/java2d/opengl/OGLContext.d \
./src/jdk/share/native/sun/java2d/opengl/OGLFuncs.d \
./src/jdk/share/native/sun/java2d/opengl/OGLMaskBlit.d \
./src/jdk/share/native/sun/java2d/opengl/OGLMaskFill.d \
./src/jdk/share/native/sun/java2d/opengl/OGLPaints.d \
./src/jdk/share/native/sun/java2d/opengl/OGLRenderQueue.d \
./src/jdk/share/native/sun/java2d/opengl/OGLRenderer.d \
./src/jdk/share/native/sun/java2d/opengl/OGLSurfaceData.d \
./src/jdk/share/native/sun/java2d/opengl/OGLTextRenderer.d \
./src/jdk/share/native/sun/java2d/opengl/OGLVertexCache.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/java2d/opengl/%.o: ../src/jdk/share/native/sun/java2d/opengl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


