################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/General/IP4String.cpp \
../src/General/IPAddress.cpp \
../src/General/SafeStrtod.cpp \
../src/General/SafeVsnprintf.cpp \
../src/General/StringRef.cpp \
../src/General/Strnlen.cpp 

OBJS += \
./src/General/IP4String.o \
./src/General/IPAddress.o \
./src/General/SafeStrtod.o \
./src/General/SafeVsnprintf.o \
./src/General/StringRef.o \
./src/General/Strnlen.o 

CPP_DEPS += \
./src/General/IP4String.d \
./src/General/IPAddress.d \
./src/General/SafeStrtod.d \
./src/General/SafeVsnprintf.d \
./src/General/StringRef.d \
./src/General/Strnlen.d 


# Each subdirectory must supply rules for building sources it contributes
src/General/%.o: ../src/General/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4E8E__ -DRTOS -I"C:\Eclipse\Firmware\FreeRTOS\src\include" -I"C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F" -O3 -Wall -c -std=gnu++17 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


