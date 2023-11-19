################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/output_EB/src/CDD_Mcl_Cfg.c \
../Autosar/output_EB/src/CDD_Mcl_PBcfg.c \
../Autosar/output_EB/src/Dio_Cfg.c \
../Autosar/output_EB/src/Gpt_Cfg.c \
../Autosar/output_EB/src/Gpt_PBcfg.c \
../Autosar/output_EB/src/Mcu_Cfg.c \
../Autosar/output_EB/src/Mcu_PBcfg.c \
../Autosar/output_EB/src/Port_Cfg.c \
../Autosar/output_EB/src/Port_PBcfg.c 

OBJS += \
./Autosar/output_EB/src/CDD_Mcl_Cfg.o \
./Autosar/output_EB/src/CDD_Mcl_PBcfg.o \
./Autosar/output_EB/src/Dio_Cfg.o \
./Autosar/output_EB/src/Gpt_Cfg.o \
./Autosar/output_EB/src/Gpt_PBcfg.o \
./Autosar/output_EB/src/Mcu_Cfg.o \
./Autosar/output_EB/src/Mcu_PBcfg.o \
./Autosar/output_EB/src/Port_Cfg.o \
./Autosar/output_EB/src/Port_PBcfg.o 

C_DEPS += \
./Autosar/output_EB/src/CDD_Mcl_Cfg.d \
./Autosar/output_EB/src/CDD_Mcl_PBcfg.d \
./Autosar/output_EB/src/Dio_Cfg.d \
./Autosar/output_EB/src/Gpt_Cfg.d \
./Autosar/output_EB/src/Gpt_PBcfg.d \
./Autosar/output_EB/src/Mcu_Cfg.d \
./Autosar/output_EB/src/Mcu_PBcfg.d \
./Autosar/output_EB/src/Port_Cfg.d \
./Autosar/output_EB/src/Port_PBcfg.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/output_EB/src/%.o: ../Autosar/output_EB/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/output_EB/src/CDD_Mcl_Cfg.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


