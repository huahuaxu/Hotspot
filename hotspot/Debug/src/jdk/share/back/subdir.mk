################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/jdk/share/back/ArrayReferenceImpl.c \
../src/jdk/share/back/ArrayTypeImpl.c \
../src/jdk/share/back/ClassLoaderReferenceImpl.c \
../src/jdk/share/back/ClassObjectReferenceImpl.c \
../src/jdk/share/back/ClassTypeImpl.c \
../src/jdk/share/back/EventRequestImpl.c \
../src/jdk/share/back/FieldImpl.c \
../src/jdk/share/back/FrameID.c \
../src/jdk/share/back/MethodImpl.c \
../src/jdk/share/back/ObjectReferenceImpl.c \
../src/jdk/share/back/ReferenceTypeImpl.c \
../src/jdk/share/back/SDE.c \
../src/jdk/share/back/StackFrameImpl.c \
../src/jdk/share/back/StringReferenceImpl.c \
../src/jdk/share/back/ThreadGroupReferenceImpl.c \
../src/jdk/share/back/ThreadReferenceImpl.c \
../src/jdk/share/back/VirtualMachineImpl.c \
../src/jdk/share/back/bag.c \
../src/jdk/share/back/classTrack.c \
../src/jdk/share/back/commonRef.c \
../src/jdk/share/back/debugDispatch.c \
../src/jdk/share/back/debugInit.c \
../src/jdk/share/back/debugLoop.c \
../src/jdk/share/back/error_messages.c \
../src/jdk/share/back/eventFilter.c \
../src/jdk/share/back/eventHandler.c \
../src/jdk/share/back/eventHelper.c \
../src/jdk/share/back/inStream.c \
../src/jdk/share/back/invoker.c \
../src/jdk/share/back/log_messages.c \
../src/jdk/share/back/outStream.c \
../src/jdk/share/back/standardHandlers.c \
../src/jdk/share/back/stepControl.c \
../src/jdk/share/back/stream.c \
../src/jdk/share/back/threadControl.c \
../src/jdk/share/back/transport.c \
../src/jdk/share/back/util.c 

OBJS += \
./src/jdk/share/back/ArrayReferenceImpl.o \
./src/jdk/share/back/ArrayTypeImpl.o \
./src/jdk/share/back/ClassLoaderReferenceImpl.o \
./src/jdk/share/back/ClassObjectReferenceImpl.o \
./src/jdk/share/back/ClassTypeImpl.o \
./src/jdk/share/back/EventRequestImpl.o \
./src/jdk/share/back/FieldImpl.o \
./src/jdk/share/back/FrameID.o \
./src/jdk/share/back/MethodImpl.o \
./src/jdk/share/back/ObjectReferenceImpl.o \
./src/jdk/share/back/ReferenceTypeImpl.o \
./src/jdk/share/back/SDE.o \
./src/jdk/share/back/StackFrameImpl.o \
./src/jdk/share/back/StringReferenceImpl.o \
./src/jdk/share/back/ThreadGroupReferenceImpl.o \
./src/jdk/share/back/ThreadReferenceImpl.o \
./src/jdk/share/back/VirtualMachineImpl.o \
./src/jdk/share/back/bag.o \
./src/jdk/share/back/classTrack.o \
./src/jdk/share/back/commonRef.o \
./src/jdk/share/back/debugDispatch.o \
./src/jdk/share/back/debugInit.o \
./src/jdk/share/back/debugLoop.o \
./src/jdk/share/back/error_messages.o \
./src/jdk/share/back/eventFilter.o \
./src/jdk/share/back/eventHandler.o \
./src/jdk/share/back/eventHelper.o \
./src/jdk/share/back/inStream.o \
./src/jdk/share/back/invoker.o \
./src/jdk/share/back/log_messages.o \
./src/jdk/share/back/outStream.o \
./src/jdk/share/back/standardHandlers.o \
./src/jdk/share/back/stepControl.o \
./src/jdk/share/back/stream.o \
./src/jdk/share/back/threadControl.o \
./src/jdk/share/back/transport.o \
./src/jdk/share/back/util.o 

C_DEPS += \
./src/jdk/share/back/ArrayReferenceImpl.d \
./src/jdk/share/back/ArrayTypeImpl.d \
./src/jdk/share/back/ClassLoaderReferenceImpl.d \
./src/jdk/share/back/ClassObjectReferenceImpl.d \
./src/jdk/share/back/ClassTypeImpl.d \
./src/jdk/share/back/EventRequestImpl.d \
./src/jdk/share/back/FieldImpl.d \
./src/jdk/share/back/FrameID.d \
./src/jdk/share/back/MethodImpl.d \
./src/jdk/share/back/ObjectReferenceImpl.d \
./src/jdk/share/back/ReferenceTypeImpl.d \
./src/jdk/share/back/SDE.d \
./src/jdk/share/back/StackFrameImpl.d \
./src/jdk/share/back/StringReferenceImpl.d \
./src/jdk/share/back/ThreadGroupReferenceImpl.d \
./src/jdk/share/back/ThreadReferenceImpl.d \
./src/jdk/share/back/VirtualMachineImpl.d \
./src/jdk/share/back/bag.d \
./src/jdk/share/back/classTrack.d \
./src/jdk/share/back/commonRef.d \
./src/jdk/share/back/debugDispatch.d \
./src/jdk/share/back/debugInit.d \
./src/jdk/share/back/debugLoop.d \
./src/jdk/share/back/error_messages.d \
./src/jdk/share/back/eventFilter.d \
./src/jdk/share/back/eventHandler.d \
./src/jdk/share/back/eventHelper.d \
./src/jdk/share/back/inStream.d \
./src/jdk/share/back/invoker.d \
./src/jdk/share/back/log_messages.d \
./src/jdk/share/back/outStream.d \
./src/jdk/share/back/standardHandlers.d \
./src/jdk/share/back/stepControl.d \
./src/jdk/share/back/stream.d \
./src/jdk/share/back/threadControl.d \
./src/jdk/share/back/transport.d \
./src/jdk/share/back/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/jdk/share/back/%.o: ../src/jdk/share/back/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


