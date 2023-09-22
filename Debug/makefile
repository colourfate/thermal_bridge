################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include USB_DEVICE/Target/subdir.mk
-include USB_DEVICE/App/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
-include Hardware/functions/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := ThermalBridge3
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
ThermalBridge3.elf \

MAP_FILES += \
ThermalBridge3.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
ThermalBridge3.list \

OBJCOPY_BIN += \
ThermalBridge3.bin \


# All Target
all: main-build

# Main-build Target
main-build: ThermalBridge3.elf secondary-outputs

# Tool invocations
ThermalBridge3.elf ThermalBridge3.map: $(OBJS) $(USER_OBJS) D:\Workspace\stm32\ThermalBridge3\STM32F411CEUX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "ThermalBridge3.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\Workspace\stm32\ThermalBridge3\STM32F411CEUX_FLASH.ld" --specs=nosys.specs -Wl,-Map="ThermalBridge3.map" -Wl,--gc-sections -static -L"D:\Workspace\stm32\ThermalBridge3\CMSIS_DSP\GCC" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

ThermalBridge3.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "ThermalBridge3.list"
	@echo 'Finished building: $@'
	@echo ' '

ThermalBridge3.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "ThermalBridge3.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ThermalBridge3.bin ThermalBridge3.elf ThermalBridge3.list ThermalBridge3.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
