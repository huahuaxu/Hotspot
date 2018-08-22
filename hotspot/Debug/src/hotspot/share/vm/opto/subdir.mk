################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/hotspot/share/vm/opto/addnode.cpp \
../src/hotspot/share/vm/opto/block.cpp \
../src/hotspot/share/vm/opto/buildOopMap.cpp \
../src/hotspot/share/vm/opto/bytecodeInfo.cpp \
../src/hotspot/share/vm/opto/c2_globals.cpp \
../src/hotspot/share/vm/opto/c2compiler.cpp \
../src/hotspot/share/vm/opto/callGenerator.cpp \
../src/hotspot/share/vm/opto/callnode.cpp \
../src/hotspot/share/vm/opto/cfgnode.cpp \
../src/hotspot/share/vm/opto/chaitin.cpp \
../src/hotspot/share/vm/opto/classes.cpp \
../src/hotspot/share/vm/opto/coalesce.cpp \
../src/hotspot/share/vm/opto/compile.cpp \
../src/hotspot/share/vm/opto/connode.cpp \
../src/hotspot/share/vm/opto/divnode.cpp \
../src/hotspot/share/vm/opto/doCall.cpp \
../src/hotspot/share/vm/opto/domgraph.cpp \
../src/hotspot/share/vm/opto/escape.cpp \
../src/hotspot/share/vm/opto/gcm.cpp \
../src/hotspot/share/vm/opto/generateOptoStub.cpp \
../src/hotspot/share/vm/opto/graphKit.cpp \
../src/hotspot/share/vm/opto/idealGraphPrinter.cpp \
../src/hotspot/share/vm/opto/idealKit.cpp \
../src/hotspot/share/vm/opto/ifg.cpp \
../src/hotspot/share/vm/opto/ifnode.cpp \
../src/hotspot/share/vm/opto/indexSet.cpp \
../src/hotspot/share/vm/opto/lcm.cpp \
../src/hotspot/share/vm/opto/library_call.cpp \
../src/hotspot/share/vm/opto/live.cpp \
../src/hotspot/share/vm/opto/locknode.cpp \
../src/hotspot/share/vm/opto/loopPredicate.cpp \
../src/hotspot/share/vm/opto/loopTransform.cpp \
../src/hotspot/share/vm/opto/loopUnswitch.cpp \
../src/hotspot/share/vm/opto/loopnode.cpp \
../src/hotspot/share/vm/opto/loopopts.cpp \
../src/hotspot/share/vm/opto/machnode.cpp \
../src/hotspot/share/vm/opto/macro.cpp \
../src/hotspot/share/vm/opto/matcher.cpp \
../src/hotspot/share/vm/opto/memnode.cpp \
../src/hotspot/share/vm/opto/mulnode.cpp \
../src/hotspot/share/vm/opto/multnode.cpp \
../src/hotspot/share/vm/opto/node.cpp \
../src/hotspot/share/vm/opto/opcodes.cpp \
../src/hotspot/share/vm/opto/output.cpp \
../src/hotspot/share/vm/opto/parse1.cpp \
../src/hotspot/share/vm/opto/parse2.cpp \
../src/hotspot/share/vm/opto/parse3.cpp \
../src/hotspot/share/vm/opto/parseHelper.cpp \
../src/hotspot/share/vm/opto/phase.cpp \
../src/hotspot/share/vm/opto/phaseX.cpp \
../src/hotspot/share/vm/opto/postaloc.cpp \
../src/hotspot/share/vm/opto/reg_split.cpp \
../src/hotspot/share/vm/opto/regalloc.cpp \
../src/hotspot/share/vm/opto/regmask.cpp \
../src/hotspot/share/vm/opto/rootnode.cpp \
../src/hotspot/share/vm/opto/runtime.cpp \
../src/hotspot/share/vm/opto/split_if.cpp \
../src/hotspot/share/vm/opto/stringopts.cpp \
../src/hotspot/share/vm/opto/subnode.cpp \
../src/hotspot/share/vm/opto/superword.cpp \
../src/hotspot/share/vm/opto/type.cpp \
../src/hotspot/share/vm/opto/vectornode.cpp 

OBJS += \
./src/hotspot/share/vm/opto/addnode.o \
./src/hotspot/share/vm/opto/block.o \
./src/hotspot/share/vm/opto/buildOopMap.o \
./src/hotspot/share/vm/opto/bytecodeInfo.o \
./src/hotspot/share/vm/opto/c2_globals.o \
./src/hotspot/share/vm/opto/c2compiler.o \
./src/hotspot/share/vm/opto/callGenerator.o \
./src/hotspot/share/vm/opto/callnode.o \
./src/hotspot/share/vm/opto/cfgnode.o \
./src/hotspot/share/vm/opto/chaitin.o \
./src/hotspot/share/vm/opto/classes.o \
./src/hotspot/share/vm/opto/coalesce.o \
./src/hotspot/share/vm/opto/compile.o \
./src/hotspot/share/vm/opto/connode.o \
./src/hotspot/share/vm/opto/divnode.o \
./src/hotspot/share/vm/opto/doCall.o \
./src/hotspot/share/vm/opto/domgraph.o \
./src/hotspot/share/vm/opto/escape.o \
./src/hotspot/share/vm/opto/gcm.o \
./src/hotspot/share/vm/opto/generateOptoStub.o \
./src/hotspot/share/vm/opto/graphKit.o \
./src/hotspot/share/vm/opto/idealGraphPrinter.o \
./src/hotspot/share/vm/opto/idealKit.o \
./src/hotspot/share/vm/opto/ifg.o \
./src/hotspot/share/vm/opto/ifnode.o \
./src/hotspot/share/vm/opto/indexSet.o \
./src/hotspot/share/vm/opto/lcm.o \
./src/hotspot/share/vm/opto/library_call.o \
./src/hotspot/share/vm/opto/live.o \
./src/hotspot/share/vm/opto/locknode.o \
./src/hotspot/share/vm/opto/loopPredicate.o \
./src/hotspot/share/vm/opto/loopTransform.o \
./src/hotspot/share/vm/opto/loopUnswitch.o \
./src/hotspot/share/vm/opto/loopnode.o \
./src/hotspot/share/vm/opto/loopopts.o \
./src/hotspot/share/vm/opto/machnode.o \
./src/hotspot/share/vm/opto/macro.o \
./src/hotspot/share/vm/opto/matcher.o \
./src/hotspot/share/vm/opto/memnode.o \
./src/hotspot/share/vm/opto/mulnode.o \
./src/hotspot/share/vm/opto/multnode.o \
./src/hotspot/share/vm/opto/node.o \
./src/hotspot/share/vm/opto/opcodes.o \
./src/hotspot/share/vm/opto/output.o \
./src/hotspot/share/vm/opto/parse1.o \
./src/hotspot/share/vm/opto/parse2.o \
./src/hotspot/share/vm/opto/parse3.o \
./src/hotspot/share/vm/opto/parseHelper.o \
./src/hotspot/share/vm/opto/phase.o \
./src/hotspot/share/vm/opto/phaseX.o \
./src/hotspot/share/vm/opto/postaloc.o \
./src/hotspot/share/vm/opto/reg_split.o \
./src/hotspot/share/vm/opto/regalloc.o \
./src/hotspot/share/vm/opto/regmask.o \
./src/hotspot/share/vm/opto/rootnode.o \
./src/hotspot/share/vm/opto/runtime.o \
./src/hotspot/share/vm/opto/split_if.o \
./src/hotspot/share/vm/opto/stringopts.o \
./src/hotspot/share/vm/opto/subnode.o \
./src/hotspot/share/vm/opto/superword.o \
./src/hotspot/share/vm/opto/type.o \
./src/hotspot/share/vm/opto/vectornode.o 

CPP_DEPS += \
./src/hotspot/share/vm/opto/addnode.d \
./src/hotspot/share/vm/opto/block.d \
./src/hotspot/share/vm/opto/buildOopMap.d \
./src/hotspot/share/vm/opto/bytecodeInfo.d \
./src/hotspot/share/vm/opto/c2_globals.d \
./src/hotspot/share/vm/opto/c2compiler.d \
./src/hotspot/share/vm/opto/callGenerator.d \
./src/hotspot/share/vm/opto/callnode.d \
./src/hotspot/share/vm/opto/cfgnode.d \
./src/hotspot/share/vm/opto/chaitin.d \
./src/hotspot/share/vm/opto/classes.d \
./src/hotspot/share/vm/opto/coalesce.d \
./src/hotspot/share/vm/opto/compile.d \
./src/hotspot/share/vm/opto/connode.d \
./src/hotspot/share/vm/opto/divnode.d \
./src/hotspot/share/vm/opto/doCall.d \
./src/hotspot/share/vm/opto/domgraph.d \
./src/hotspot/share/vm/opto/escape.d \
./src/hotspot/share/vm/opto/gcm.d \
./src/hotspot/share/vm/opto/generateOptoStub.d \
./src/hotspot/share/vm/opto/graphKit.d \
./src/hotspot/share/vm/opto/idealGraphPrinter.d \
./src/hotspot/share/vm/opto/idealKit.d \
./src/hotspot/share/vm/opto/ifg.d \
./src/hotspot/share/vm/opto/ifnode.d \
./src/hotspot/share/vm/opto/indexSet.d \
./src/hotspot/share/vm/opto/lcm.d \
./src/hotspot/share/vm/opto/library_call.d \
./src/hotspot/share/vm/opto/live.d \
./src/hotspot/share/vm/opto/locknode.d \
./src/hotspot/share/vm/opto/loopPredicate.d \
./src/hotspot/share/vm/opto/loopTransform.d \
./src/hotspot/share/vm/opto/loopUnswitch.d \
./src/hotspot/share/vm/opto/loopnode.d \
./src/hotspot/share/vm/opto/loopopts.d \
./src/hotspot/share/vm/opto/machnode.d \
./src/hotspot/share/vm/opto/macro.d \
./src/hotspot/share/vm/opto/matcher.d \
./src/hotspot/share/vm/opto/memnode.d \
./src/hotspot/share/vm/opto/mulnode.d \
./src/hotspot/share/vm/opto/multnode.d \
./src/hotspot/share/vm/opto/node.d \
./src/hotspot/share/vm/opto/opcodes.d \
./src/hotspot/share/vm/opto/output.d \
./src/hotspot/share/vm/opto/parse1.d \
./src/hotspot/share/vm/opto/parse2.d \
./src/hotspot/share/vm/opto/parse3.d \
./src/hotspot/share/vm/opto/parseHelper.d \
./src/hotspot/share/vm/opto/phase.d \
./src/hotspot/share/vm/opto/phaseX.d \
./src/hotspot/share/vm/opto/postaloc.d \
./src/hotspot/share/vm/opto/reg_split.d \
./src/hotspot/share/vm/opto/regalloc.d \
./src/hotspot/share/vm/opto/regmask.d \
./src/hotspot/share/vm/opto/rootnode.d \
./src/hotspot/share/vm/opto/runtime.d \
./src/hotspot/share/vm/opto/split_if.d \
./src/hotspot/share/vm/opto/stringopts.d \
./src/hotspot/share/vm/opto/subnode.d \
./src/hotspot/share/vm/opto/superword.d \
./src/hotspot/share/vm/opto/type.d \
./src/hotspot/share/vm/opto/vectornode.d 


# Each subdirectory must supply rules for building sources it contributes
src/hotspot/share/vm/opto/%.o: ../src/hotspot/share/vm/opto/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


