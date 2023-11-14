################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../EB_gen/src/Dio_Cfg.c \
../EB_gen/src/Mcu_Cfg.c \
../EB_gen/src/Mcu_PBcfg.c \
../EB_gen/src/Port_Cfg.c \
../EB_gen/src/Port_PBcfg.c 

OBJS += \
./EB_gen/src/Dio_Cfg.o \
./EB_gen/src/Mcu_Cfg.o \
./EB_gen/src/Mcu_PBcfg.o \
./EB_gen/src/Port_Cfg.o \
./EB_gen/src/Port_PBcfg.o 

C_DEPS += \
./EB_gen/src/Dio_Cfg.d \
./EB_gen/src/Mcu_Cfg.d \
./EB_gen/src/Mcu_PBcfg.d \
./EB_gen/src/Port_Cfg.d \
./EB_gen/src/Port_PBcfg.d 


# Each subdirectory must supply rules for building sources it contributes
EB_gen/src/%.o: ../EB_gen/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@EB_gen/src/Dio_Cfg.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


