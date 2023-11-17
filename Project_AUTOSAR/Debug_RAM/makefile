################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include Autosar/rte/src/subdir.mk
-include Autosar/output_EB/src/subdir.mk
-include Autosar/mcu/src/subdir.mk
-include Autosar/mcl/src/subdir.mk
-include Autosar/gpt/src/subdir.mk
-include Autosar/ecum/src/subdir.mk
-include Autosar/det/src/subdir.mk
-include Autosar/dem/src/subdir.mk
-include Autosar/Port/src/subdir.mk
-include Autosar/DIO/src/subdir.mk
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
Project_AUTOSAR.siz \


# All Target
all: Project_AUTOSAR.elf secondary-outputs

# Tool invocations
Project_AUTOSAR.elf: $(OBJS) C:/Users/PC/Desktop/Assigment2/AUTOSAR_FA_ASS_2/Project_AUTOSAR/Project_Settings/Linker_Files/S32K144_64_ram.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Standard S32DS C Linker'
	arm-none-eabi-gcc -o "Project_AUTOSAR.elf" "@Project_AUTOSAR.args"  $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Project_AUTOSAR.siz: Project_AUTOSAR.elf
	@echo 'Invoking: Standard S32DS Print Size'
	arm-none-eabi-size --format=berkeley Project_AUTOSAR.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ./*
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
