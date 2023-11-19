################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/DIO/src/Dio.c \
../Autosar/DIO/src/Dio_Gpio.c 

OBJS += \
./Autosar/DIO/src/Dio.o \
./Autosar/DIO/src/Dio_Gpio.o 

C_DEPS += \
./Autosar/DIO/src/Dio.d \
./Autosar/DIO/src/Dio_Gpio.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/DIO/src/%.o: ../Autosar/DIO/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/DIO/src/Dio.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


