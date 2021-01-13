################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Networking/W5500Ethernet/W5500Interface.cpp \
../src/Networking/W5500Ethernet/W5500Socket.cpp 

OBJS += \
./src/Networking/W5500Ethernet/W5500Interface.o \
./src/Networking/W5500Ethernet/W5500Socket.o 

CPP_DEPS += \
./src/Networking/W5500Ethernet/W5500Interface.d \
./src/Networking/W5500Ethernet/W5500Socket.d 


# Each subdirectory must supply rules for building sources it contributes
src/Networking/W5500Ethernet/%.o: ../src/Networking/W5500Ethernet/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4E8E__ -DDUET_NG -D_XOPEN_SOURCE -I"/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Flash" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/SharedSpi" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Storage" -I"/home/torbjorn/eclipse-workspace/CoreNG/libraries/Wire" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/ioport" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/services/flash_efc" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/sam4e/include" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/header_files" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/preprocessor" -I"/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include" -I"/home/torbjorn/eclipse-workspace/CoreNG/variants/duetNG" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/DuetNG" -I"/home/torbjorn/eclipse-workspace/RepRapFirmware/src/Networking" -I"/home/torbjorn/eclipse-workspace/DuetWiFiSocketServer/src/include" -I"/home/torbjorn/eclipse-workspace/FreeRTOS/src/include" -I"/home/torbjorn/eclipse-workspace/FreeRTOS/src/portable/GCC/ARM_CM4F" -I/home/torbjorn/eclipse-workspace/FreeRTOSv10.0.1/FreeRTOS/Source/include -I/home/torbjorn/eclipse-workspace/FreeRTOSv10.0.1/FreeRTOS/Source/portable/GCC/ARM_CM4F -O2 -Wall -c -std=gnu++14 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib -Wdouble-promotion -fsingle-precision-constant "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


