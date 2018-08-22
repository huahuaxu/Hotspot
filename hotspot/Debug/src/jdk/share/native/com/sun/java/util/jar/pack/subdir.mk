################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/jdk/share/native/com/sun/java/util/jar/pack/bands.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/bytes.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/coding.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/jni.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/main.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/unpack.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/utils.cpp \
../src/jdk/share/native/com/sun/java/util/jar/pack/zip.cpp 

OBJS += \
./src/jdk/share/native/com/sun/java/util/jar/pack/bands.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/bytes.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/coding.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/jni.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/main.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/unpack.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/utils.o \
./src/jdk/share/native/com/sun/java/util/jar/pack/zip.o 

CPP_DEPS += \
./src/jdk/share/native/com/sun/java/util/jar/pack/bands.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/bytes.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/coding.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/jni.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/main.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/unpack.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/utils.d \
./src/jdk/share/native/com/sun/java/util/jar/pack/zip.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/com/sun/java/util/jar/pack/%.o: ../src/jdk/share/native/com/sun/java/util/jar/pack/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


