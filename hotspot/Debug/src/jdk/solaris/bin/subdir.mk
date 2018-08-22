################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/solaris/bin/ergo.c \
../src/jdk/solaris/bin/ergo_i586.c \
../src/jdk/solaris/bin/java_md_common.c \
../src/jdk/solaris/bin/java_md_solinux.c \
../src/jdk/solaris/bin/jexec.c 

OBJS += \
./src/jdk/solaris/bin/ergo.o \
./src/jdk/solaris/bin/ergo_i586.o \
./src/jdk/solaris/bin/java_md_common.o \
./src/jdk/solaris/bin/java_md_solinux.o \
./src/jdk/solaris/bin/jexec.o 

C_DEPS += \
./src/jdk/solaris/bin/ergo.d \
./src/jdk/solaris/bin/ergo_i586.d \
./src/jdk/solaris/bin/java_md_common.d \
./src/jdk/solaris/bin/java_md_solinux.d \
./src/jdk/solaris/bin/jexec.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/solaris/bin/%.o: ../src/jdk/solaris/bin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


