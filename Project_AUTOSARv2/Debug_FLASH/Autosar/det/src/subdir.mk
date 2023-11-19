################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/det/src/Det.c 

OBJS += \
./Autosar/det/src/Det.o 

C_DEPS += \
./Autosar/det/src/Det.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/det/src/%.o: ../Autosar/det/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/det/src/Det.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


