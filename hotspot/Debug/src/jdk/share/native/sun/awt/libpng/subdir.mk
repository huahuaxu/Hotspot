################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/awt/libpng/png.c \
../src/jdk/share/native/sun/awt/libpng/pngerror.c \
../src/jdk/share/native/sun/awt/libpng/pngget.c \
../src/jdk/share/native/sun/awt/libpng/pngmem.c \
../src/jdk/share/native/sun/awt/libpng/pngpread.c \
../src/jdk/share/native/sun/awt/libpng/pngread.c \
../src/jdk/share/native/sun/awt/libpng/pngrio.c \
../src/jdk/share/native/sun/awt/libpng/pngrtran.c \
../src/jdk/share/native/sun/awt/libpng/pngrutil.c \
../src/jdk/share/native/sun/awt/libpng/pngset.c \
../src/jdk/share/native/sun/awt/libpng/pngtest.c \
../src/jdk/share/native/sun/awt/libpng/pngtrans.c \
../src/jdk/share/native/sun/awt/libpng/pngwio.c \
../src/jdk/share/native/sun/awt/libpng/pngwrite.c \
../src/jdk/share/native/sun/awt/libpng/pngwtran.c \
../src/jdk/share/native/sun/awt/libpng/pngwutil.c 

OBJS += \
./src/jdk/share/native/sun/awt/libpng/png.o \
./src/jdk/share/native/sun/awt/libpng/pngerror.o \
./src/jdk/share/native/sun/awt/libpng/pngget.o \
./src/jdk/share/native/sun/awt/libpng/pngmem.o \
./src/jdk/share/native/sun/awt/libpng/pngpread.o \
./src/jdk/share/native/sun/awt/libpng/pngread.o \
./src/jdk/share/native/sun/awt/libpng/pngrio.o \
./src/jdk/share/native/sun/awt/libpng/pngrtran.o \
./src/jdk/share/native/sun/awt/libpng/pngrutil.o \
./src/jdk/share/native/sun/awt/libpng/pngset.o \
./src/jdk/share/native/sun/awt/libpng/pngtest.o \
./src/jdk/share/native/sun/awt/libpng/pngtrans.o \
./src/jdk/share/native/sun/awt/libpng/pngwio.o \
./src/jdk/share/native/sun/awt/libpng/pngwrite.o \
./src/jdk/share/native/sun/awt/libpng/pngwtran.o \
./src/jdk/share/native/sun/awt/libpng/pngwutil.o 

C_DEPS += \
./src/jdk/share/native/sun/awt/libpng/png.d \
./src/jdk/share/native/sun/awt/libpng/pngerror.d \
./src/jdk/share/native/sun/awt/libpng/pngget.d \
./src/jdk/share/native/sun/awt/libpng/pngmem.d \
./src/jdk/share/native/sun/awt/libpng/pngpread.d \
./src/jdk/share/native/sun/awt/libpng/pngread.d \
./src/jdk/share/native/sun/awt/libpng/pngrio.d \
./src/jdk/share/native/sun/awt/libpng/pngrtran.d \
./src/jdk/share/native/sun/awt/libpng/pngrutil.d \
./src/jdk/share/native/sun/awt/libpng/pngset.d \
./src/jdk/share/native/sun/awt/libpng/pngtest.d \
./src/jdk/share/native/sun/awt/libpng/pngtrans.d \
./src/jdk/share/native/sun/awt/libpng/pngwio.d \
./src/jdk/share/native/sun/awt/libpng/pngwrite.d \
./src/jdk/share/native/sun/awt/libpng/pngwtran.d \
./src/jdk/share/native/sun/awt/libpng/pngwutil.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/awt/libpng/%.o: ../src/jdk/share/native/sun/awt/libpng/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


