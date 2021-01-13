################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/SharedSpi/SharedSpi.cpp 

OBJS += \
./libraries/SharedSpi/SharedSpi.o 

CPP_DEPS += \
./libraries/SharedSpi/SharedSpi.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/SharedSpi/%.o: ../libraries/SharedSpi/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAME70Q21__ -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/same70" -O2 -g -Wall -c -std=gnu++14 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


