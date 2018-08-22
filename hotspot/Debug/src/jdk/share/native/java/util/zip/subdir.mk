################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/java/util/zip/Adler32.c \
../src/jdk/share/native/java/util/zip/CRC32.c \
../src/jdk/share/native/java/util/zip/Deflater.c \
../src/jdk/share/native/java/util/zip/Inflater.c \
../src/jdk/share/native/java/util/zip/ZipFile.c \
../src/jdk/share/native/java/util/zip/zip_util.c 

OBJS += \
./src/jdk/share/native/java/util/zip/Adler32.o \
./src/jdk/share/native/java/util/zip/CRC32.o \
./src/jdk/share/native/java/util/zip/Deflater.o \
./src/jdk/share/native/java/util/zip/Inflater.o \
./src/jdk/share/native/java/util/zip/ZipFile.o \
./src/jdk/share/native/java/util/zip/zip_util.o 

C_DEPS += \
./src/jdk/share/native/java/util/zip/Adler32.d \
./src/jdk/share/native/java/util/zip/CRC32.d \
./src/jdk/share/native/java/util/zip/Deflater.d \
./src/jdk/share/native/java/util/zip/Inflater.d \
./src/jdk/share/native/java/util/zip/ZipFile.d \
./src/jdk/share/native/java/util/zip/zip_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/java/util/zip/%.o: ../src/jdk/share/native/java/util/zip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


