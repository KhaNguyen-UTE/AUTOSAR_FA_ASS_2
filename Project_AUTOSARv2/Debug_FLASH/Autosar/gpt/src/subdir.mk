################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/gpt/src/Gpt.c \
../Autosar/gpt/src/Gpt_Ftm.c \
../Autosar/gpt/src/Gpt_Ipw.c \
../Autosar/gpt/src/Gpt_LPit.c \
../Autosar/gpt/src/Gpt_Lptmr.c \
../Autosar/gpt/src/Gpt_SRtc.c 

OBJS += \
./Autosar/gpt/src/Gpt.o \
./Autosar/gpt/src/Gpt_Ftm.o \
./Autosar/gpt/src/Gpt_Ipw.o \
./Autosar/gpt/src/Gpt_LPit.o \
./Autosar/gpt/src/Gpt_Lptmr.o \
./Autosar/gpt/src/Gpt_SRtc.o 

C_DEPS += \
./Autosar/gpt/src/Gpt.d \
./Autosar/gpt/src/Gpt_Ftm.d \
./Autosar/gpt/src/Gpt_Ipw.d \
./Autosar/gpt/src/Gpt_LPit.d \
./Autosar/gpt/src/Gpt_Lptmr.d \
./Autosar/gpt/src/Gpt_SRtc.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/gpt/src/%.o: ../Autosar/gpt/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/gpt/src/Gpt.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


