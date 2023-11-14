################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_RTE/src/SchM_Dio.c \
../LR_RTE/src/SchM_Port.c 

OBJS += \
./LR_RTE/src/SchM_Dio.o \
./LR_RTE/src/SchM_Port.o 

C_DEPS += \
./LR_RTE/src/SchM_Dio.d \
./LR_RTE/src/SchM_Port.d 


# Each subdirectory must supply rules for building sources it contributes
LR_RTE/src/%.o: ../LR_RTE/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_RTE/src/SchM_Dio.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


