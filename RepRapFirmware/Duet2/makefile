################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Tools/subdir.mk
-include src/Storage/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Internet/DHCP/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Ethernet/W5500/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Ethernet/subdir.mk
-include src/Networking/W5500Ethernet/subdir.mk
-include src/Networking/ESP8266WiFi/subdir.mk
-include src/Networking/subdir.mk
-include src/Movement/Kinematics/subdir.mk
-include src/Movement/BedProbing/subdir.mk
-include src/Movement/subdir.mk
-include src/Libraries/sha1/subdir.mk
-include src/Libraries/Math/subdir.mk
-include src/Libraries/General/subdir.mk
-include src/Libraries/Fatfs/subdir.mk
-include src/Heating/Sensors/subdir.mk
-include src/Heating/subdir.mk
-include src/GCodes/subdir.mk
-include src/FilamentMonitors/subdir.mk
-include src/DuetNG/subdir.mk
-include src/subdir.mk
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
all: Duet2nonrtosFirmware.elf

# Tool invocations
Duet2nonrtosFirmware.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	arm-none-eabi-gcc -L"/home/torbjorn/eclipse-workspace/CoreNG/SAM4E8E" -Os --specs=nano.specs -Wl,--gc-sections -Wl,--fatal-warnings -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -T/home/torbjorn/eclipse-workspace/CoreNG/variants/duetNG/linker_scripts/gcc/flash.ld -Wl,-Map,/home/torbjorn/eclipse-workspace/RepRapFirmware/Duet2/Duet2nonrtosFirmware.map -o "Duet2nonrtosFirmware.elf" -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group "/home/torbjorn/eclipse-workspace/CoreNG/SAM4E8E_RTOS/cores/arduino/syscalls.o" $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) Duet2nonrtosFirmware.elf
	-@echo ' '

post-build:
	-@echo 'Generating binary file'
	-/home/torbjorn/opt/gnu-mcu-eclipse/arm-none-eabi-gcc/7.2.1-1.1-20180401-0515/bin/arm-none-eabi-objcopy -O binary /home/torbjorn/eclipse-workspace/RepRapFirmware/Duet2/Duet2nonrtosFirmware.elf /home/torbjorn/eclipse-workspace/RepRapFirmware/Duet2/Duet2nonrtosFirmware.bin
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
