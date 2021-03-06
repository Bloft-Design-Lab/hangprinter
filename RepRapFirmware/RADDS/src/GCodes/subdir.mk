################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GCodes/DriverMode.cpp \
../src/GCodes/GCodeBuffer.cpp \
../src/GCodes/GCodeInput.cpp \
../src/GCodes/GCodeMachineState.cpp \
../src/GCodes/GCodeQueue.cpp \
../src/GCodes/GCodes.cpp \
../src/GCodes/GCodes2.cpp \
../src/GCodes/GCodes3.cpp \
../src/GCodes/RestorePoint.cpp 

OBJS += \
./src/GCodes/DriverMode.o \
./src/GCodes/GCodeBuffer.o \
./src/GCodes/GCodeInput.o \
./src/GCodes/GCodeMachineState.o \
./src/GCodes/GCodeQueue.o \
./src/GCodes/GCodes.o \
./src/GCodes/GCodes2.o \
./src/GCodes/GCodes3.o \
./src/GCodes/RestorePoint.o 

CPP_DEPS += \
./src/GCodes/DriverMode.d \
./src/GCodes/GCodeBuffer.d \
./src/GCodes/GCodeInput.d \
./src/GCodes/GCodeMachineState.d \
./src/GCodes/GCodeQueue.d \
./src/GCodes/GCodes.d \
./src/GCodes/GCodes2.d \
./src/GCodes/GCodes3.d \
./src/GCodes/RestorePoint.d 


# Each subdirectory must supply rules for building sources it contributes
src/GCodes/%.o: ../src/GCodes/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -D__RADDS__ -D_XOPEN_SOURCE -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Flash" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/SharedSpi" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Wire" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam3x/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/RADDS" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/RADDS" -I"/RepRapFirmware/../FreeRTOSv10.0.1/FreeRTOS/Source/include" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


