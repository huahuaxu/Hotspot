################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/adlc/adlparse.cpp \
../src/hotspot/share/vm/adlc/archDesc.cpp \
../src/hotspot/share/vm/adlc/arena.cpp \
../src/hotspot/share/vm/adlc/dfa.cpp \
../src/hotspot/share/vm/adlc/dict2.cpp \
../src/hotspot/share/vm/adlc/filebuff.cpp \
../src/hotspot/share/vm/adlc/forms.cpp \
../src/hotspot/share/vm/adlc/formsopt.cpp \
../src/hotspot/share/vm/adlc/formssel.cpp \
../src/hotspot/share/vm/adlc/main.cpp \
../src/hotspot/share/vm/adlc/output_c.cpp \
../src/hotspot/share/vm/adlc/output_h.cpp 

OBJS += \
./src/hotspot/share/vm/adlc/adlparse.o \
./src/hotspot/share/vm/adlc/archDesc.o \
./src/hotspot/share/vm/adlc/arena.o \
./src/hotspot/share/vm/adlc/dfa.o \
./src/hotspot/share/vm/adlc/dict2.o \
./src/hotspot/share/vm/adlc/filebuff.o \
./src/hotspot/share/vm/adlc/forms.o \
./src/hotspot/share/vm/adlc/formsopt.o \
./src/hotspot/share/vm/adlc/formssel.o \
./src/hotspot/share/vm/adlc/main.o \
./src/hotspot/share/vm/adlc/output_c.o \
./src/hotspot/share/vm/adlc/output_h.o 

CPP_DEPS += \
./src/hotspot/share/vm/adlc/adlparse.d \
./src/hotspot/share/vm/adlc/archDesc.d \
./src/hotspot/share/vm/adlc/arena.d \
./src/hotspot/share/vm/adlc/dfa.d \
./src/hotspot/share/vm/adlc/dict2.d \
./src/hotspot/share/vm/adlc/filebuff.d \
./src/hotspot/share/vm/adlc/forms.d \
./src/hotspot/share/vm/adlc/formsopt.d \
./src/hotspot/share/vm/adlc/formssel.d \
./src/hotspot/share/vm/adlc/main.d \
./src/hotspot/share/vm/adlc/output_c.d \
./src/hotspot/share/vm/adlc/output_h.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/adlc/%.o: ../src/hotspot/share/vm/adlc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


