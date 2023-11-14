################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_DIO/src/Dio.c \
../LR_DIO/src/Dio_Gpio.c 

OBJS += \
./LR_DIO/src/Dio.o \
./LR_DIO/src/Dio_Gpio.o 

C_DEPS += \
./LR_DIO/src/Dio.d \
./LR_DIO/src/Dio_Gpio.d 


# Each subdirectory must supply rules for building sources it contributes
LR_DIO/src/%.o: ../LR_DIO/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_DIO/src/Dio.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


