################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_DET/src/Det.c 

OBJS += \
./LR_DET/src/Det.o 

C_DEPS += \
./LR_DET/src/Det.d 


# Each subdirectory must supply rules for building sources it contributes
LR_DET/src/%.o: ../LR_DET/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_DET/src/Det.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


