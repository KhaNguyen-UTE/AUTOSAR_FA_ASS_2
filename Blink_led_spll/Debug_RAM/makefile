################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include LR_RTE/src/subdir.mk
-include LR_PORT/src/subdir.mk
-include LR_MCU/src/subdir.mk
-include LR_DIO/src/subdir.mk
-include LR_DET/src/subdir.mk
-include LR_DEM/src/subdir.mk
-include EB_gen/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_SIZE += \
Blink_led_spll.siz \


# All Target
all: Blink_led_spll.elf secondary-outputs

# Tool invocations
Blink_led_spll.elf: $(OBJS) C:/Users/PC/Desktop/Assigment2/AUTOSAR_FA_ASS_2/Blink_led_spll/Project_Settings/Linker_Files/S32K144_64_ram.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Standard S32DS C Linker'
	arm-none-eabi-gcc -o "Blink_led_spll.elf" "@Blink_led_spll.args"  $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Blink_led_spll.siz: Blink_led_spll.elf
	@echo 'Invoking: Standard S32DS Print Size'
	arm-none-eabi-size --format=berkeley Blink_led_spll.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ./*
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
