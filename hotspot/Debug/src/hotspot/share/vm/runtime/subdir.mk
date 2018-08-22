################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/runtime/advancedThresholdPolicy.cpp \
../src/hotspot/share/vm/runtime/aprofiler.cpp \
../src/hotspot/share/vm/runtime/arguments.cpp \
../src/hotspot/share/vm/runtime/atomic.cpp \
../src/hotspot/share/vm/runtime/basicLock.cpp \
../src/hotspot/share/vm/runtime/biasedLocking.cpp \
../src/hotspot/share/vm/runtime/compilationPolicy.cpp \
../src/hotspot/share/vm/runtime/deoptimization.cpp \
../src/hotspot/share/vm/runtime/dtraceJSDT.cpp \
../src/hotspot/share/vm/runtime/fieldDescriptor.cpp \
../src/hotspot/share/vm/runtime/fieldType.cpp \
../src/hotspot/share/vm/runtime/fprofiler.cpp \
../src/hotspot/share/vm/runtime/frame.cpp \
../src/hotspot/share/vm/runtime/globals.cpp \
../src/hotspot/share/vm/runtime/handles.cpp \
../src/hotspot/share/vm/runtime/icache.cpp \
../src/hotspot/share/vm/runtime/init.cpp \
../src/hotspot/share/vm/runtime/interfaceSupport.cpp \
../src/hotspot/share/vm/runtime/java.cpp \
../src/hotspot/share/vm/runtime/javaCalls.cpp \
../src/hotspot/share/vm/runtime/jniHandles.cpp \
../src/hotspot/share/vm/runtime/jniPeriodicChecker.cpp \
../src/hotspot/share/vm/runtime/memprofiler.cpp \
../src/hotspot/share/vm/runtime/monitorChunk.cpp \
../src/hotspot/share/vm/runtime/mutex.cpp \
../src/hotspot/share/vm/runtime/mutexLocker.cpp \
../src/hotspot/share/vm/runtime/objectMonitor.cpp \
../src/hotspot/share/vm/runtime/orderAccess.cpp \
../src/hotspot/share/vm/runtime/os.cpp \
../src/hotspot/share/vm/runtime/osThread.cpp \
../src/hotspot/share/vm/runtime/park.cpp \
../src/hotspot/share/vm/runtime/perfData.cpp \
../src/hotspot/share/vm/runtime/perfMemory.cpp \
../src/hotspot/share/vm/runtime/reflection.cpp \
../src/hotspot/share/vm/runtime/reflectionUtils.cpp \
../src/hotspot/share/vm/runtime/relocator.cpp \
../src/hotspot/share/vm/runtime/rframe.cpp \
../src/hotspot/share/vm/runtime/safepoint.cpp \
../src/hotspot/share/vm/runtime/serviceThread.cpp \
../src/hotspot/share/vm/runtime/sharedRuntime.cpp \
../src/hotspot/share/vm/runtime/sharedRuntimeTrans.cpp \
../src/hotspot/share/vm/runtime/sharedRuntimeTrig.cpp \
../src/hotspot/share/vm/runtime/signature.cpp \
../src/hotspot/share/vm/runtime/simpleThresholdPolicy.cpp \
../src/hotspot/share/vm/runtime/stackValue.cpp \
../src/hotspot/share/vm/runtime/stackValueCollection.cpp \
../src/hotspot/share/vm/runtime/statSampler.cpp \
../src/hotspot/share/vm/runtime/stubCodeGenerator.cpp \
../src/hotspot/share/vm/runtime/stubRoutines.cpp \
../src/hotspot/share/vm/runtime/sweeper.cpp \
../src/hotspot/share/vm/runtime/synchronizer.cpp \
../src/hotspot/share/vm/runtime/task.cpp \
../src/hotspot/share/vm/runtime/thread.cpp \
../src/hotspot/share/vm/runtime/threadLocalStorage.cpp \
../src/hotspot/share/vm/runtime/timer.cpp \
../src/hotspot/share/vm/runtime/unhandledOops.cpp \
../src/hotspot/share/vm/runtime/vframe.cpp \
../src/hotspot/share/vm/runtime/vframeArray.cpp \
../src/hotspot/share/vm/runtime/vframe_hp.cpp \
../src/hotspot/share/vm/runtime/virtualspace.cpp \
../src/hotspot/share/vm/runtime/vmStructs.cpp \
../src/hotspot/share/vm/runtime/vmThread.cpp \
../src/hotspot/share/vm/runtime/vm_operations.cpp \
../src/hotspot/share/vm/runtime/vm_version.cpp 

OBJS += \
./src/hotspot/share/vm/runtime/advancedThresholdPolicy.o \
./src/hotspot/share/vm/runtime/aprofiler.o \
./src/hotspot/share/vm/runtime/arguments.o \
./src/hotspot/share/vm/runtime/atomic.o \
./src/hotspot/share/vm/runtime/basicLock.o \
./src/hotspot/share/vm/runtime/biasedLocking.o \
./src/hotspot/share/vm/runtime/compilationPolicy.o \
./src/hotspot/share/vm/runtime/deoptimization.o \
./src/hotspot/share/vm/runtime/dtraceJSDT.o \
./src/hotspot/share/vm/runtime/fieldDescriptor.o \
./src/hotspot/share/vm/runtime/fieldType.o \
./src/hotspot/share/vm/runtime/fprofiler.o \
./src/hotspot/share/vm/runtime/frame.o \
./src/hotspot/share/vm/runtime/globals.o \
./src/hotspot/share/vm/runtime/handles.o \
./src/hotspot/share/vm/runtime/icache.o \
./src/hotspot/share/vm/runtime/init.o \
./src/hotspot/share/vm/runtime/interfaceSupport.o \
./src/hotspot/share/vm/runtime/java.o \
./src/hotspot/share/vm/runtime/javaCalls.o \
./src/hotspot/share/vm/runtime/jniHandles.o \
./src/hotspot/share/vm/runtime/jniPeriodicChecker.o \
./src/hotspot/share/vm/runtime/memprofiler.o \
./src/hotspot/share/vm/runtime/monitorChunk.o \
./src/hotspot/share/vm/runtime/mutex.o \
./src/hotspot/share/vm/runtime/mutexLocker.o \
./src/hotspot/share/vm/runtime/objectMonitor.o \
./src/hotspot/share/vm/runtime/orderAccess.o \
./src/hotspot/share/vm/runtime/os.o \
./src/hotspot/share/vm/runtime/osThread.o \
./src/hotspot/share/vm/runtime/park.o \
./src/hotspot/share/vm/runtime/perfData.o \
./src/hotspot/share/vm/runtime/perfMemory.o \
./src/hotspot/share/vm/runtime/reflection.o \
./src/hotspot/share/vm/runtime/reflectionUtils.o \
./src/hotspot/share/vm/runtime/relocator.o \
./src/hotspot/share/vm/runtime/rframe.o \
./src/hotspot/share/vm/runtime/safepoint.o \
./src/hotspot/share/vm/runtime/serviceThread.o \
./src/hotspot/share/vm/runtime/sharedRuntime.o \
./src/hotspot/share/vm/runtime/sharedRuntimeTrans.o \
./src/hotspot/share/vm/runtime/sharedRuntimeTrig.o \
./src/hotspot/share/vm/runtime/signature.o \
./src/hotspot/share/vm/runtime/simpleThresholdPolicy.o \
./src/hotspot/share/vm/runtime/stackValue.o \
./src/hotspot/share/vm/runtime/stackValueCollection.o \
./src/hotspot/share/vm/runtime/statSampler.o \
./src/hotspot/share/vm/runtime/stubCodeGenerator.o \
./src/hotspot/share/vm/runtime/stubRoutines.o \
./src/hotspot/share/vm/runtime/sweeper.o \
./src/hotspot/share/vm/runtime/synchronizer.o \
./src/hotspot/share/vm/runtime/task.o \
./src/hotspot/share/vm/runtime/thread.o \
./src/hotspot/share/vm/runtime/threadLocalStorage.o \
./src/hotspot/share/vm/runtime/timer.o \
./src/hotspot/share/vm/runtime/unhandledOops.o \
./src/hotspot/share/vm/runtime/vframe.o \
./src/hotspot/share/vm/runtime/vframeArray.o \
./src/hotspot/share/vm/runtime/vframe_hp.o \
./src/hotspot/share/vm/runtime/virtualspace.o \
./src/hotspot/share/vm/runtime/vmStructs.o \
./src/hotspot/share/vm/runtime/vmThread.o \
./src/hotspot/share/vm/runtime/vm_operations.o \
./src/hotspot/share/vm/runtime/vm_version.o 

CPP_DEPS += \
./src/hotspot/share/vm/runtime/advancedThresholdPolicy.d \
./src/hotspot/share/vm/runtime/aprofiler.d \
./src/hotspot/share/vm/runtime/arguments.d \
./src/hotspot/share/vm/runtime/atomic.d \
./src/hotspot/share/vm/runtime/basicLock.d \
./src/hotspot/share/vm/runtime/biasedLocking.d \
./src/hotspot/share/vm/runtime/compilationPolicy.d \
./src/hotspot/share/vm/runtime/deoptimization.d \
./src/hotspot/share/vm/runtime/dtraceJSDT.d \
./src/hotspot/share/vm/runtime/fieldDescriptor.d \
./src/hotspot/share/vm/runtime/fieldType.d \
./src/hotspot/share/vm/runtime/fprofiler.d \
./src/hotspot/share/vm/runtime/frame.d \
./src/hotspot/share/vm/runtime/globals.d \
./src/hotspot/share/vm/runtime/handles.d \
./src/hotspot/share/vm/runtime/icache.d \
./src/hotspot/share/vm/runtime/init.d \
./src/hotspot/share/vm/runtime/interfaceSupport.d \
./src/hotspot/share/vm/runtime/java.d \
./src/hotspot/share/vm/runtime/javaCalls.d \
./src/hotspot/share/vm/runtime/jniHandles.d \
./src/hotspot/share/vm/runtime/jniPeriodicChecker.d \
./src/hotspot/share/vm/runtime/memprofiler.d \
./src/hotspot/share/vm/runtime/monitorChunk.d \
./src/hotspot/share/vm/runtime/mutex.d \
./src/hotspot/share/vm/runtime/mutexLocker.d \
./src/hotspot/share/vm/runtime/objectMonitor.d \
./src/hotspot/share/vm/runtime/orderAccess.d \
./src/hotspot/share/vm/runtime/os.d \
./src/hotspot/share/vm/runtime/osThread.d \
./src/hotspot/share/vm/runtime/park.d \
./src/hotspot/share/vm/runtime/perfData.d \
./src/hotspot/share/vm/runtime/perfMemory.d \
./src/hotspot/share/vm/runtime/reflection.d \
./src/hotspot/share/vm/runtime/reflectionUtils.d \
./src/hotspot/share/vm/runtime/relocator.d \
./src/hotspot/share/vm/runtime/rframe.d \
./src/hotspot/share/vm/runtime/safepoint.d \
./src/hotspot/share/vm/runtime/serviceThread.d \
./src/hotspot/share/vm/runtime/sharedRuntime.d \
./src/hotspot/share/vm/runtime/sharedRuntimeTrans.d \
./src/hotspot/share/vm/runtime/sharedRuntimeTrig.d \
./src/hotspot/share/vm/runtime/signature.d \
./src/hotspot/share/vm/runtime/simpleThresholdPolicy.d \
./src/hotspot/share/vm/runtime/stackValue.d \
./src/hotspot/share/vm/runtime/stackValueCollection.d \
./src/hotspot/share/vm/runtime/statSampler.d \
./src/hotspot/share/vm/runtime/stubCodeGenerator.d \
./src/hotspot/share/vm/runtime/stubRoutines.d \
./src/hotspot/share/vm/runtime/sweeper.d \
./src/hotspot/share/vm/runtime/synchronizer.d \
./src/hotspot/share/vm/runtime/task.d \
./src/hotspot/share/vm/runtime/thread.d \
./src/hotspot/share/vm/runtime/threadLocalStorage.d \
./src/hotspot/share/vm/runtime/timer.d \
./src/hotspot/share/vm/runtime/unhandledOops.d \
./src/hotspot/share/vm/runtime/vframe.d \
./src/hotspot/share/vm/runtime/vframeArray.d \
./src/hotspot/share/vm/runtime/vframe_hp.d \
./src/hotspot/share/vm/runtime/virtualspace.d \
./src/hotspot/share/vm/runtime/vmStructs.d \
./src/hotspot/share/vm/runtime/vmThread.d \
./src/hotspot/share/vm/runtime/vm_operations.d \
./src/hotspot/share/vm/runtime/vm_version.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/runtime/%.o: ../src/hotspot/share/vm/runtime/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


