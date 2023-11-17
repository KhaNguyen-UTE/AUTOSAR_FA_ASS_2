################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/dem/src/Dem.c 

OBJS += \
./Autosar/dem/src/Dem.o 

C_DEPS += \
./Autosar/dem/src/Dem.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/dem/src/%.o: ../Autosar/dem/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/dem/src/Dem.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


