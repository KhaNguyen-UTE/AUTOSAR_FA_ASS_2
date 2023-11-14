################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_DEM/src/Dem.c 

OBJS += \
./LR_DEM/src/Dem.o 

C_DEPS += \
./LR_DEM/src/Dem.d 


# Each subdirectory must supply rules for building sources it contributes
LR_DEM/src/%.o: ../LR_DEM/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_DEM/src/Dem.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


