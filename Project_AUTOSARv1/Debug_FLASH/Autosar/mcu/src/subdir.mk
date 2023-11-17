################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/mcu/src/Mcu.c \
../Autosar/mcu/src/Mcu_CMU.c \
../Autosar/mcu/src/Mcu_CMU_Irq.c \
../Autosar/mcu/src/Mcu_CortexM4.c \
../Autosar/mcu/src/Mcu_IPW.c \
../Autosar/mcu/src/Mcu_IPW_Irq.c \
../Autosar/mcu/src/Mcu_PCC.c \
../Autosar/mcu/src/Mcu_PMC.c \
../Autosar/mcu/src/Mcu_PMC_Irq.c \
../Autosar/mcu/src/Mcu_RCM.c \
../Autosar/mcu/src/Mcu_RCM_Irq.c \
../Autosar/mcu/src/Mcu_SCG.c \
../Autosar/mcu/src/Mcu_SIM.c \
../Autosar/mcu/src/Mcu_SMC.c 

OBJS += \
./Autosar/mcu/src/Mcu.o \
./Autosar/mcu/src/Mcu_CMU.o \
./Autosar/mcu/src/Mcu_CMU_Irq.o \
./Autosar/mcu/src/Mcu_CortexM4.o \
./Autosar/mcu/src/Mcu_IPW.o \
./Autosar/mcu/src/Mcu_IPW_Irq.o \
./Autosar/mcu/src/Mcu_PCC.o \
./Autosar/mcu/src/Mcu_PMC.o \
./Autosar/mcu/src/Mcu_PMC_Irq.o \
./Autosar/mcu/src/Mcu_RCM.o \
./Autosar/mcu/src/Mcu_RCM_Irq.o \
./Autosar/mcu/src/Mcu_SCG.o \
./Autosar/mcu/src/Mcu_SIM.o \
./Autosar/mcu/src/Mcu_SMC.o 

C_DEPS += \
./Autosar/mcu/src/Mcu.d \
./Autosar/mcu/src/Mcu_CMU.d \
./Autosar/mcu/src/Mcu_CMU_Irq.d \
./Autosar/mcu/src/Mcu_CortexM4.d \
./Autosar/mcu/src/Mcu_IPW.d \
./Autosar/mcu/src/Mcu_IPW_Irq.d \
./Autosar/mcu/src/Mcu_PCC.d \
./Autosar/mcu/src/Mcu_PMC.d \
./Autosar/mcu/src/Mcu_PMC_Irq.d \
./Autosar/mcu/src/Mcu_RCM.d \
./Autosar/mcu/src/Mcu_RCM_Irq.d \
./Autosar/mcu/src/Mcu_SCG.d \
./Autosar/mcu/src/Mcu_SIM.d \
./Autosar/mcu/src/Mcu_SMC.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/mcu/src/%.o: ../Autosar/mcu/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/mcu/src/Mcu.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


