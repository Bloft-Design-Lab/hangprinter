################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../asf/common/services/clock/sam4e/sysclk.c 

OBJS += \
./asf/common/services/clock/sam4e/sysclk.o 

C_DEPS += \
./asf/common/services/clock/sam4e/sysclk.d 


# Each subdirectory must supply rules for building sources it contributes
asf/common/services/clock/sam4e/%.o: ../asf/common/services/clock/sam4e/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4E8E__ -DRTOS -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\dmac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pio" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\usart" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\ioport" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\sleepmgr" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\serial\sam_uart" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\udc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc\device" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duetNG" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


