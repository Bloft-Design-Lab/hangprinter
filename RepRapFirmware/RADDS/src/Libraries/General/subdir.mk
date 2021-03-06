################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Libraries/General/IP4String.cpp \
../src/Libraries/General/SafeStrtod.cpp \
../src/Libraries/General/SafeVsnprintf.cpp \
../src/Libraries/General/StringRef.cpp \
../src/Libraries/General/Strnlen.cpp 

OBJS += \
./src/Libraries/General/IP4String.o \
./src/Libraries/General/SafeStrtod.o \
./src/Libraries/General/SafeVsnprintf.o \
./src/Libraries/General/StringRef.o \
./src/Libraries/General/Strnlen.o 

CPP_DEPS += \
./src/Libraries/General/IP4String.d \
./src/Libraries/General/SafeStrtod.d \
./src/Libraries/General/SafeVsnprintf.d \
./src/Libraries/General/StringRef.d \
./src/Libraries/General/Strnlen.d 


# Each subdirectory must supply rules for building sources it contributes
src/Libraries/General/%.o: ../src/Libraries/General/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -D__RADDS__ -D_XOPEN_SOURCE -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Flash" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/SharedSpi" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Wire" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam3x/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/RADDS" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/RADDS" -I"/RepRapFirmware/../FreeRTOSv10.0.1/FreeRTOS/Source/include" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


