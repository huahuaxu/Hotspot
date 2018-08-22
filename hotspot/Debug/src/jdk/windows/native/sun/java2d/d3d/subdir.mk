################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/windows/native/sun/java2d/d3d/D3DBlitLoops.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DBufImgOps.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DContext.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DGlyphCache.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DGraphicsDevice.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DMaskBlit.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DMaskCache.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DMaskFill.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DPaints.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DPipeline.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DPipelineManager.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DRenderQueue.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DRenderer.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DResourceManager.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DSurfaceData.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DTextRenderer.cpp \
../src/jdk/windows/native/sun/java2d/d3d/D3DVertexCacher.cpp 

C_SRCS += \
../src/jdk/windows/native/sun/java2d/d3d/D3DShaderGen.c 

OBJS += \
./src/jdk/windows/native/sun/java2d/d3d/D3DBlitLoops.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DBufImgOps.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DContext.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DGlyphCache.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DGraphicsDevice.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskBlit.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskCache.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskFill.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DPaints.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DPipeline.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DPipelineManager.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DRenderQueue.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DRenderer.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DResourceManager.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DShaderGen.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DSurfaceData.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DTextRenderer.o \
./src/jdk/windows/native/sun/java2d/d3d/D3DVertexCacher.o 

C_DEPS += \
./src/jdk/windows/native/sun/java2d/d3d/D3DShaderGen.d 

CPP_DEPS += \
./src/jdk/windows/native/sun/java2d/d3d/D3DBlitLoops.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DBufImgOps.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DContext.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DGlyphCache.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DGraphicsDevice.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskBlit.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskCache.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DMaskFill.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DPaints.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DPipeline.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DPipelineManager.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DRenderQueue.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DRenderer.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DResourceManager.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DSurfaceData.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DTextRenderer.d \
./src/jdk/windows/native/sun/java2d/d3d/D3DVertexCacher.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/windows/native/sun/java2d/d3d/%.o: ../src/jdk/windows/native/sun/java2d/d3d/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jdk/windows/native/sun/java2d/d3d/%.o: ../src/jdk/windows/native/sun/java2d/d3d/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


