################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_PORT/src/Port.c \
../LR_PORT/src/Port_Ipw.c \
../LR_PORT/src/Port_Port_Ci.c 

OBJS += \
./LR_PORT/src/Port.o \
./LR_PORT/src/Port_Ipw.o \
./LR_PORT/src/Port_Port_Ci.o 

C_DEPS += \
./LR_PORT/src/Port.d \
./LR_PORT/src/Port_Ipw.d \
./LR_PORT/src/Port_Port_Ci.d 


# Each subdirectory must supply rules for building sources it contributes
LR_PORT/src/%.o: ../LR_PORT/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_PORT/src/Port.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


