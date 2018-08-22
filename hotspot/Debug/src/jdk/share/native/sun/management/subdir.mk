################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/management/ClassLoadingImpl.c \
../src/jdk/share/native/sun/management/Flag.c \
../src/jdk/share/native/sun/management/GarbageCollectorImpl.c \
../src/jdk/share/native/sun/management/GcInfoBuilder.c \
../src/jdk/share/native/sun/management/HotSpotDiagnostic.c \
../src/jdk/share/native/sun/management/HotspotThread.c \
../src/jdk/share/native/sun/management/MemoryImpl.c \
../src/jdk/share/native/sun/management/MemoryManagerImpl.c \
../src/jdk/share/native/sun/management/MemoryPoolImpl.c \
../src/jdk/share/native/sun/management/ThreadImpl.c \
../src/jdk/share/native/sun/management/VMManagementImpl.c \
../src/jdk/share/native/sun/management/management.c 

OBJS += \
./src/jdk/share/native/sun/management/ClassLoadingImpl.o \
./src/jdk/share/native/sun/management/Flag.o \
./src/jdk/share/native/sun/management/GarbageCollectorImpl.o \
./src/jdk/share/native/sun/management/GcInfoBuilder.o \
./src/jdk/share/native/sun/management/HotSpotDiagnostic.o \
./src/jdk/share/native/sun/management/HotspotThread.o \
./src/jdk/share/native/sun/management/MemoryImpl.o \
./src/jdk/share/native/sun/management/MemoryManagerImpl.o \
./src/jdk/share/native/sun/management/MemoryPoolImpl.o \
./src/jdk/share/native/sun/management/ThreadImpl.o \
./src/jdk/share/native/sun/management/VMManagementImpl.o \
./src/jdk/share/native/sun/management/management.o 

C_DEPS += \
./src/jdk/share/native/sun/management/ClassLoadingImpl.d \
./src/jdk/share/native/sun/management/Flag.d \
./src/jdk/share/native/sun/management/GarbageCollectorImpl.d \
./src/jdk/share/native/sun/management/GcInfoBuilder.d \
./src/jdk/share/native/sun/management/HotSpotDiagnostic.d \
./src/jdk/share/native/sun/management/HotspotThread.d \
./src/jdk/share/native/sun/management/MemoryImpl.d \
./src/jdk/share/native/sun/management/MemoryManagerImpl.d \
./src/jdk/share/native/sun/management/MemoryPoolImpl.d \
./src/jdk/share/native/sun/management/ThreadImpl.d \
./src/jdk/share/native/sun/management/VMManagementImpl.d \
./src/jdk/share/native/sun/management/management.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/management/%.o: ../src/jdk/share/native/sun/management/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


