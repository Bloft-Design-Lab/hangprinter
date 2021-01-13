################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Networking/W5500Ethernet/Wiznet/Ethernet/WizSpi.cpp \
../src/Networking/W5500Ethernet/Wiznet/Ethernet/socketlib.cpp \
../src/Networking/W5500Ethernet/Wiznet/Ethernet/wizchip_conf.cpp 

OBJS += \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/WizSpi.o \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/socketlib.o \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/wizchip_conf.o 

CPP_DEPS += \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/WizSpi.d \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/socketlib.d \
./src/Networking/W5500Ethernet/Wiznet/Ethernet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
src/Networking/W5500Ethernet/Wiznet/Ethernet/%.o: ../src/Networking/W5500Ethernet/Wiznet/Ethernet/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4E8E__ -DRTOS -DDUET_NG -D_XOPEN_SOURCE -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Flash" -I"C:\Eclipse\Firmware\CoreNG\libraries\SharedSpi" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\libraries\Wire" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\ioport" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duetNG" -I"C:\Eclipse\Firmware\RepRapFirmware\src" -I"C:\Eclipse\Firmware\RepRapFirmware\src\DuetNG" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Networking" -I"C:\Eclipse\Firmware\DuetWiFiSocketServer\src\include" -I"C:\Eclipse\Firmware\FreeRTOS\src\include" -I"C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F" -I"C:\Eclipse\Firmware\RRFLibraries\src" -O2 -Wall -c -std=gnu++17 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


