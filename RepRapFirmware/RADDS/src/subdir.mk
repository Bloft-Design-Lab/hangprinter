################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Fan.cpp \
../src/IoPorts.cpp \
../src/Logger.cpp \
../src/OutputMemory.cpp \
../src/Platform.cpp \
../src/PortControl.cpp \
../src/PrintMonitor.cpp \
../src/RTOSIface.cpp \
../src/RepRap.cpp \
../src/RepRapFirmware.cpp \
../src/Roland.cpp \
../src/Scanner.cpp \
../src/SoftTimer.cpp \
../src/Spindle.cpp \
../src/Tasks.cpp \
../src/ZProbe.cpp \
../src/ZProbeProgrammer.cpp 

OBJS += \
./src/Fan.o \
./src/IoPorts.o \
./src/Logger.o \
./src/OutputMemory.o \
./src/Platform.o \
./src/PortControl.o \
./src/PrintMonitor.o \
./src/RTOSIface.o \
./src/RepRap.o \
./src/RepRapFirmware.o \
./src/Roland.o \
./src/Scanner.o \
./src/SoftTimer.o \
./src/Spindle.o \
./src/Tasks.o \
./src/ZProbe.o \
./src/ZProbeProgrammer.o 

CPP_DEPS += \
./src/Fan.d \
./src/IoPorts.d \
./src/Logger.d \
./src/OutputMemory.d \
./src/Platform.d \
./src/PortControl.d \
./src/PrintMonitor.d \
./src/RTOSIface.d \
./src/RepRap.d \
./src/RepRapFirmware.d \
./src/Roland.d \
./src/Scanner.d \
./src/SoftTimer.d \
./src/Spindle.d \
./src/Tasks.d \
./src/ZProbe.d \
./src/ZProbeProgrammer.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -D__RADDS__ -D_XOPEN_SOURCE -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Flash" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/SharedSpi" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Wire" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam3x/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/RADDS" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/RADDS" -I"/RepRapFirmware/../FreeRTOSv10.0.1/FreeRTOS/Source/include" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


