################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hotspot/os/solaris/fix_empty_sec_hdr_flags/fix_empty_sec_hdr_flags.c 

OBJS += \
./src/hotspot/os/solaris/fix_empty_sec_hdr_flags/fix_empty_sec_hdr_flags.o 

C_DEPS += \
./src/hotspot/os/solaris/fix_empty_sec_hdr_flags/fix_empty_sec_hdr_flags.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/os/solaris/fix_empty_sec_hdr_flags/%.o: ../src/hotspot/os/solaris/fix_empty_sec_hdr_flags/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


