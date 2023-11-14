################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LR_MCU/src/Mcu.c \
../LR_MCU/src/Mcu_CMU.c \
../LR_MCU/src/Mcu_CMU_Irq.c \
../LR_MCU/src/Mcu_CortexM4.c \
../LR_MCU/src/Mcu_IPW.c \
../LR_MCU/src/Mcu_IPW_Irq.c \
../LR_MCU/src/Mcu_PCC.c \
../LR_MCU/src/Mcu_PMC.c \
../LR_MCU/src/Mcu_PMC_Irq.c \
../LR_MCU/src/Mcu_RCM.c \
../LR_MCU/src/Mcu_RCM_Irq.c \
../LR_MCU/src/Mcu_SCG.c \
../LR_MCU/src/Mcu_SIM.c \
../LR_MCU/src/Mcu_SMC.c 

OBJS += \
./LR_MCU/src/Mcu.o \
./LR_MCU/src/Mcu_CMU.o \
./LR_MCU/src/Mcu_CMU_Irq.o \
./LR_MCU/src/Mcu_CortexM4.o \
./LR_MCU/src/Mcu_IPW.o \
./LR_MCU/src/Mcu_IPW_Irq.o \
./LR_MCU/src/Mcu_PCC.o \
./LR_MCU/src/Mcu_PMC.o \
./LR_MCU/src/Mcu_PMC_Irq.o \
./LR_MCU/src/Mcu_RCM.o \
./LR_MCU/src/Mcu_RCM_Irq.o \
./LR_MCU/src/Mcu_SCG.o \
./LR_MCU/src/Mcu_SIM.o \
./LR_MCU/src/Mcu_SMC.o 

C_DEPS += \
./LR_MCU/src/Mcu.d \
./LR_MCU/src/Mcu_CMU.d \
./LR_MCU/src/Mcu_CMU_Irq.d \
./LR_MCU/src/Mcu_CortexM4.d \
./LR_MCU/src/Mcu_IPW.d \
./LR_MCU/src/Mcu_IPW_Irq.d \
./LR_MCU/src/Mcu_PCC.d \
./LR_MCU/src/Mcu_PMC.d \
./LR_MCU/src/Mcu_PMC_Irq.d \
./LR_MCU/src/Mcu_RCM.d \
./LR_MCU/src/Mcu_RCM_Irq.d \
./LR_MCU/src/Mcu_SCG.d \
./LR_MCU/src/Mcu_SIM.d \
./LR_MCU/src/Mcu_SMC.d 


# Each subdirectory must supply rules for building sources it contributes
LR_MCU/src/%.o: ../LR_MCU/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@LR_MCU/src/Mcu.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


