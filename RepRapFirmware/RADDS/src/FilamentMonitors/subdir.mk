################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FilamentMonitors/Duet3DFilamentMonitor.cpp \
../src/FilamentMonitors/FilamentMonitor.cpp \
../src/FilamentMonitors/LaserFilamentMonitor.cpp \
../src/FilamentMonitors/PulsedFilamentMonitor.cpp \
../src/FilamentMonitors/RotatingMagnetFilamentMonitor.cpp \
../src/FilamentMonitors/SimpleFilamentMonitor.cpp 

OBJS += \
./src/FilamentMonitors/Duet3DFilamentMonitor.o \
./src/FilamentMonitors/FilamentMonitor.o \
./src/FilamentMonitors/LaserFilamentMonitor.o \
./src/FilamentMonitors/PulsedFilamentMonitor.o \
./src/FilamentMonitors/RotatingMagnetFilamentMonitor.o \
./src/FilamentMonitors/SimpleFilamentMonitor.o 

CPP_DEPS += \
./src/FilamentMonitors/Duet3DFilamentMonitor.d \
./src/FilamentMonitors/FilamentMonitor.d \
./src/FilamentMonitors/LaserFilamentMonitor.d \
./src/FilamentMonitors/PulsedFilamentMonitor.d \
./src/FilamentMonitors/RotatingMagnetFilamentMonitor.d \
./src/FilamentMonitors/SimpleFilamentMonitor.d 


# Each subdirectory must supply rules for building sources it contributes
src/FilamentMonitors/%.o: ../src/FilamentMonitors/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -D__RADDS__ -D_XOPEN_SOURCE -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Flash" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/SharedSpi" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Wire" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam3x/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/RADDS" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/RADDS" -I"/RepRapFirmware/../FreeRTOSv10.0.1/FreeRTOS/Source/include" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


