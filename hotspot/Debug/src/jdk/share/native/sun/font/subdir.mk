################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/share/native/sun/font/FontInstanceAdapter.cpp 

C_SRCS += \
../src/jdk/share/native/sun/font/AccelGlyphCache.c \
../src/jdk/share/native/sun/font/DrawGlyphList.c \
../src/jdk/share/native/sun/font/freetypeScaler.c \
../src/jdk/share/native/sun/font/sunFont.c 

OBJS += \
./src/jdk/share/native/sun/font/AccelGlyphCache.o \
./src/jdk/share/native/sun/font/DrawGlyphList.o \
./src/jdk/share/native/sun/font/FontInstanceAdapter.o \
./src/jdk/share/native/sun/font/freetypeScaler.o \
./src/jdk/share/native/sun/font/sunFont.o 

C_DEPS += \
./src/jdk/share/native/sun/font/AccelGlyphCache.d \
./src/jdk/share/native/sun/font/DrawGlyphList.d \
./src/jdk/share/native/sun/font/freetypeScaler.d \
./src/jdk/share/native/sun/font/sunFont.d 

CPP_DEPS += \
./src/jdk/share/native/sun/font/FontInstanceAdapter.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/font/%.o: ../src/jdk/share/native/sun/font/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jdk/share/native/sun/font/%.o: ../src/jdk/share/native/sun/font/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


