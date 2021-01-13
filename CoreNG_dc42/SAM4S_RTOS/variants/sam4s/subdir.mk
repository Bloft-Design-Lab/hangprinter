################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../variants/sam4s/exceptions.c \
../variants/sam4s/startup_sam4s.c \
../variants/sam4s/system_sam4s.c 

CPP_SRCS += \
../variants/sam4s/variant.cpp 

OBJS += \
./variants/sam4s/exceptions.o \
./variants/sam4s/startup_sam4s.o \
./variants/sam4s/system_sam4s.o \
./variants/sam4s/variant.o 

C_DEPS += \
./variants/sam4s/exceptions.d \
./variants/sam4s/startup_sam4s.d \
./variants/sam4s/system_sam4s.d 

CPP_DEPS += \
./variants/sam4s/variant.d 


# Each subdirectory must supply rules for building sources it contributes
variants/sam4s/%.o: ../variants/sam4s/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4S8C__ -DRTOS -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam4s/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/dmac" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/hsmci" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/spi" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/usart" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/sleepmgr" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/sam4s" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -ffunction-sections -fdata-sections -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

variants/sam4s/%.o: ../variants/sam4s/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4S8C__ -DRTOS -DUDD_ENABLE -DUDD_NO_SLEEP_MGR -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam4s/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/udc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/usb/class/cdc/device" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/sam4s" -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m4 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


