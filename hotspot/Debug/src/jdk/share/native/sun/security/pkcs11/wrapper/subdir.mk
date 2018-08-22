################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_convert.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_crypt.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_digest.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_dual.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_general.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_keymgmt.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_mutex.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_objmgmt.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sessmgmt.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sign.c \
../src/jdk/share/native/sun/security/pkcs11/wrapper/p11_util.c 

OBJS += \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_convert.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_crypt.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_digest.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_dual.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_general.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_keymgmt.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_mutex.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_objmgmt.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sessmgmt.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sign.o \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_util.o 

C_DEPS += \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_convert.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_crypt.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_digest.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_dual.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_general.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_keymgmt.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_mutex.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_objmgmt.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sessmgmt.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_sign.d \
./src/jdk/share/native/sun/security/pkcs11/wrapper/p11_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/native/sun/security/pkcs11/wrapper/%.o: ../src/jdk/share/native/sun/security/pkcs11/wrapper/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


