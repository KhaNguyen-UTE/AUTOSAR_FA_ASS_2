################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/ecum/src/EcuM.c 

OBJS += \
./Autosar/ecum/src/EcuM.o 

C_DEPS += \
./Autosar/ecum/src/EcuM.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/ecum/src/%.o: ../Autosar/ecum/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/ecum/src/EcuM.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

