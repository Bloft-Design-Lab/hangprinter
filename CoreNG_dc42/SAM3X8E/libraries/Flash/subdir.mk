################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/Flash/DueFlashStorage.cpp 

OBJS += \
./libraries/Flash/DueFlashStorage.o 

CPP_DEPS += \
./libraries/Flash/DueFlashStorage.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/Flash/%.o: ../libraries/Flash/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam3x/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/duet" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


