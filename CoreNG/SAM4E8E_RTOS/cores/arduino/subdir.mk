################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cores/arduino/hooks.c \
../cores/arduino/itoa.c \
../cores/arduino/syscalls.c \
../cores/arduino/wiring.c \
../cores/arduino/wiring_shift.c 

CPP_SRCS += \
../cores/arduino/AnalogIn.cpp \
../cores/arduino/AnalogOut.cpp \
../cores/arduino/Print.cpp \
../cores/arduino/Reset.cpp \
../cores/arduino/RingBuffer.cpp \
../cores/arduino/Stream.cpp \
../cores/arduino/UARTClass.cpp \
../cores/arduino/USARTClass.cpp \
../cores/arduino/WInterrupts.cpp \
../cores/arduino/WMath.cpp \
../cores/arduino/abi.cpp \
../cores/arduino/new.cpp \
../cores/arduino/watchdog.cpp \
../cores/arduino/wiring_digital.cpp 

OBJS += \
./cores/arduino/AnalogIn.o \
./cores/arduino/AnalogOut.o \
./cores/arduino/Print.o \
./cores/arduino/Reset.o \
./cores/arduino/RingBuffer.o \
./cores/arduino/Stream.o \
./cores/arduino/UARTClass.o \
./cores/arduino/USARTClass.o \
./cores/arduino/WInterrupts.o \
./cores/arduino/WMath.o \
./cores/arduino/abi.o \
./cores/arduino/hooks.o \
./cores/arduino/itoa.o \
./cores/arduino/new.o \
./cores/arduino/syscalls.o \
./cores/arduino/watchdog.o \
./cores/arduino/wiring.o \
./cores/arduino/wiring_digital.o \
./cores/arduino/wiring_shift.o 

C_DEPS += \
./cores/arduino/hooks.d \
./cores/arduino/itoa.d \
./cores/arduino/syscalls.d \
./cores/arduino/wiring.d \
./cores/arduino/wiring_shift.d 

CPP_DEPS += \
./cores/arduino/AnalogIn.d \
./cores/arduino/AnalogOut.d \
./cores/arduino/Print.d \
./cores/arduino/Reset.d \
./cores/arduino/RingBuffer.d \
./cores/arduino/Stream.d \
./cores/arduino/UARTClass.d \
./cores/arduino/USARTClass.d \
./cores/arduino/WInterrupts.d \
./cores/arduino/WMath.d \
./cores/arduino/abi.d \
./cores/arduino/new.d \
./cores/arduino/watchdog.d \
./cores/arduino/wiring_digital.d 


# Each subdirectory must supply rules for building sources it contributes
cores/arduino/%.o: ../cores/arduino/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4E8E__ -DRTOS -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\usart" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\serial\sam_uart" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\uart" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\ioport" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\udc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc\device" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\variants\duetNG" -O2 -Wall -c -std=gnu++17 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cores/arduino/%.o: ../cores/arduino/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4E8E__ -DRTOS -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\dmac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pio" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\usart" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\ioport" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\sleepmgr" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\serial\sam_uart" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\udc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\usb\class\cdc\device" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duetNG" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


