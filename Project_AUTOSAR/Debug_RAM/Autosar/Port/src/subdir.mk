################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/Port/src/Port.c \
../Autosar/Port/src/Port_Ipw.c \
../Autosar/Port/src/Port_Port_Ci.c 

OBJS += \
./Autosar/Port/src/Port.o \
./Autosar/Port/src/Port_Ipw.o \
./Autosar/Port/src/Port_Port_Ci.o 

C_DEPS += \
./Autosar/Port/src/Port.d \
./Autosar/Port/src/Port_Ipw.d \
./Autosar/Port/src/Port_Port_Ci.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/Port/src/%.o: ../Autosar/Port/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/Port/src/Port.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


