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
../cores/arduino/IPAddress.cpp \
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
./cores/arduino/IPAddress.o \
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
./cores/arduino/IPAddress.d \
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
	arm-none-eabi-g++ -D__SAME70Q21__ -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/same70" -O2 -g -Wall -c -std=gnu++14 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cores/arduino/%.o: ../cores/arduino/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAME70Q21__ -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/gmac" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/hsmci" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/usart" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/xdmac" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/sleepmgr" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/same70" -O2 -g -Wall -c -std=gnu99 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


