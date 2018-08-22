################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/bin/java.c \
../src/jdk/share/bin/jli_util.c \
../src/jdk/share/bin/main.c \
../src/jdk/share/bin/parse_manifest.c \
../src/jdk/share/bin/splashscreen_stubs.c \
../src/jdk/share/bin/version_comp.c \
../src/jdk/share/bin/wildcard.c 

OBJS += \
./src/jdk/share/bin/java.o \
./src/jdk/share/bin/jli_util.o \
./src/jdk/share/bin/main.o \
./src/jdk/share/bin/parse_manifest.o \
./src/jdk/share/bin/splashscreen_stubs.o \
./src/jdk/share/bin/version_comp.o \
./src/jdk/share/bin/wildcard.o 

C_DEPS += \
./src/jdk/share/bin/java.d \
./src/jdk/share/bin/jli_util.d \
./src/jdk/share/bin/main.d \
./src/jdk/share/bin/parse_manifest.d \
./src/jdk/share/bin/splashscreen_stubs.d \
./src/jdk/share/bin/version_comp.d \
./src/jdk/share/bin/wildcard.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/bin/%.o: ../src/jdk/share/bin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


