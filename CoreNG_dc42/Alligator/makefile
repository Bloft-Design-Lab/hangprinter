################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include variants/alligator/subdir.mk
-include libraries/Wire/subdir.mk
-include libraries/Storage/subdir.mk
-include libraries/SharedSpi/subdir.mk
-include libraries/RTCDue/subdir.mk
-include libraries/Flash/subdir.mk
-include cores/arduino/USB/subdir.mk
-include cores/arduino/subdir.mk
-include asf/sam/services/flash_efc/subdir.mk
-include asf/sam/drivers/wdt/subdir.mk
-include asf/sam/drivers/usart/subdir.mk
-include asf/sam/drivers/uotghs/subdir.mk
-include asf/sam/drivers/uart/subdir.mk
-include asf/sam/drivers/twi/subdir.mk
-include asf/sam/drivers/trng/subdir.mk
-include asf/sam/drivers/tc/subdir.mk
-include asf/sam/drivers/supc/subdir.mk
-include asf/sam/drivers/spi/subdir.mk
-include asf/sam/drivers/rtt/subdir.mk
-include asf/sam/drivers/rtc/subdir.mk
-include asf/sam/drivers/rstc/subdir.mk
-include asf/sam/drivers/pwm/subdir.mk
-include asf/sam/drivers/pmc/subdir.mk
-include asf/sam/drivers/pio/subdir.mk
-include asf/sam/drivers/pdc/subdir.mk
-include asf/sam/drivers/matrix/subdir.mk
-include asf/sam/drivers/gpbr/subdir.mk
-include asf/sam/drivers/emac/subdir.mk
-include asf/sam/drivers/efc/subdir.mk
-include asf/sam/drivers/dmac/subdir.mk
-include asf/sam/drivers/dacc/subdir.mk
-include asf/sam/drivers/chipid/subdir.mk
-include asf/sam/drivers/can/subdir.mk
-include asf/sam/drivers/adc/subdir.mk
-include asf/common/utils/interrupt/subdir.mk
-include asf/common/services/usb/udc/subdir.mk
-include asf/common/services/usb/class/cdc/device/subdir.mk
-include asf/common/services/sleepmgr/sam/subdir.mk
-include asf/common/services/clock/sam3x/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: libCoreNG.a

# Tool invocations
libCoreNG.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Archiver'
	arm-none-eabi-ar -r  "libCoreNG.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(ARCHIVES)$(C_DEPS)$(CPP_DEPS) libCoreNG.a
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
