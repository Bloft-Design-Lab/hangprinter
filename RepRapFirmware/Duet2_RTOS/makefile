################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Tools/subdir.mk
-include src/Storage/subdir.mk
-include src/ObjectModel/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Internet/DHCP/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Ethernet/W5500/subdir.mk
-include src/Networking/W5500Ethernet/Wiznet/Ethernet/subdir.mk
-include src/Networking/W5500Ethernet/subdir.mk
-include src/Networking/ESP8266WiFi/subdir.mk
-include src/Networking/subdir.mk
-include src/Movement/StepperDrivers/subdir.mk
-include src/Movement/Kinematics/subdir.mk
-include src/Movement/BedProbing/subdir.mk
-include src/Movement/subdir.mk
-include src/Libraries/sha1/subdir.mk
-include src/Libraries/Fatfs/subdir.mk
-include src/Heating/Sensors/subdir.mk
-include src/Heating/subdir.mk
-include src/GCodes/subdir.mk
-include src/FilamentMonitors/subdir.mk
-include src/Fans/subdir.mk
-include src/DuetNG/subdir.mk
-include src/CAN/subdir.mk
-include src/subdir.mk
-include Duet2/src/Tools/subdir.mk
-include Duet2/src/Storage/subdir.mk
-include Duet2/src/Networking/W5500Ethernet/Wiznet/Internet/DHCP/subdir.mk
-include Duet2/src/Networking/W5500Ethernet/Wiznet/Ethernet/W5500/subdir.mk
-include Duet2/src/Networking/W5500Ethernet/Wiznet/Ethernet/subdir.mk
-include Duet2/src/Networking/W5500Ethernet/subdir.mk
-include Duet2/src/Networking/ESP8266WiFi/subdir.mk
-include Duet2/src/Networking/subdir.mk
-include Duet2/src/Movement/Kinematics/subdir.mk
-include Duet2/src/Movement/BedProbing/subdir.mk
-include Duet2/src/Movement/subdir.mk
-include Duet2/src/Libraries/sha1/subdir.mk
-include Duet2/src/Libraries/Math/subdir.mk
-include Duet2/src/Libraries/General/subdir.mk
-include Duet2/src/Libraries/Fatfs/subdir.mk
-include Duet2/src/Heating/Sensors/subdir.mk
-include Duet2/src/Heating/subdir.mk
-include Duet2/src/GCodes/subdir.mk
-include Duet2/src/FilamentMonitors/subdir.mk
-include Duet2/src/DuetNG/subdir.mk
-include Duet2/src/subdir.mk
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
all: Duet2CombinedFirmware.elf

# Tool invocations
Duet2CombinedFirmware.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	arm-none-eabi-gcc -L"C:\Eclipse\Firmware\CoreNG\SAM4E8E_RTOS" -L"C:\Eclipse\Firmware\FreeRTOS\SAM4E" -L"C:\Eclipse\Firmware\RRFLibraries\SAM4E_RTOS" -Os --specs=nano.specs -Wl,--gc-sections -Wl,--fatal-warnings -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -T"C:\Eclipse\Firmware\CoreNG\variants\duetNG\linker_scripts\gcc\flash.ld" -Wl,-Map,"C:\Eclipse\Firmware\RepRapFirmware\Duet2_RTOS/Duet2CombinedFirmware.map" -o "Duet2CombinedFirmware.elf" -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group "C:\Eclipse\Firmware/CoreNG/SAM4E8E_RTOS/cores/arduino/syscalls.o" $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) Duet2CombinedFirmware.elf
	-@echo ' '

post-build:
	-@echo 'Generating binary file'
	-arm-none-eabi-objcopy -O binary C:\Eclipse\Firmware\RepRapFirmware\Duet2_RTOS/Duet2CombinedFirmware.elf C:\Eclipse\Firmware\RepRapFirmware\Duet2_RTOS/Duet2CombinedFirmware.bin
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
