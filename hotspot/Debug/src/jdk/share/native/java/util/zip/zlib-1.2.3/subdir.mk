################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/compress.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/deflate.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/gzio.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/infback.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/inffast.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/inflate.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/inftrees.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/trees.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/uncompr.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/zadler32.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/zcrc32.c \
../src/jdk/share/native/java/util/zip/zlib-1.2.3/zutil.c 

OBJS += \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/compress.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/deflate.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/gzio.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/infback.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inffast.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inflate.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inftrees.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/trees.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/uncompr.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zadler32.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zcrc32.o \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zutil.o 

C_DEPS += \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/compress.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/deflate.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/gzio.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/infback.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inffast.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inflate.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/inftrees.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/trees.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/uncompr.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zadler32.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zcrc32.d \
./src/jdk/share/native/java/util/zip/zlib-1.2.3/zutil.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/util/zip/zlib-1.2.3/%.o: ../src/jdk/share/native/java/util/zip/zlib-1.2.3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


