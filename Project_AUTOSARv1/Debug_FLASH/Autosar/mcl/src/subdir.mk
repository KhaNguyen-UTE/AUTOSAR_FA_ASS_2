################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Autosar/mcl/src/CDD_Mcl.c \
../Autosar/mcl/src/Ftm_Common.c \
../Autosar/mcl/src/LPit_Common.c \
../Autosar/mcl/src/Lptmr_Common.c \
../Autosar/mcl/src/Mcl_Dma.c \
../Autosar/mcl/src/Mcl_DmaMux.c \
../Autosar/mcl/src/Mcl_Dma_Irq.c \
../Autosar/mcl/src/Mcl_FlexIO_Common.c \
../Autosar/mcl/src/Mcl_FlexIO_Irq.c \
../Autosar/mcl/src/Mcl_IPW.c \
../Autosar/mcl/src/Mcl_Lmem.c \
../Autosar/mcl/src/Mcl_TrgMux.c 

OBJS += \
./Autosar/mcl/src/CDD_Mcl.o \
./Autosar/mcl/src/Ftm_Common.o \
./Autosar/mcl/src/LPit_Common.o \
./Autosar/mcl/src/Lptmr_Common.o \
./Autosar/mcl/src/Mcl_Dma.o \
./Autosar/mcl/src/Mcl_DmaMux.o \
./Autosar/mcl/src/Mcl_Dma_Irq.o \
./Autosar/mcl/src/Mcl_FlexIO_Common.o \
./Autosar/mcl/src/Mcl_FlexIO_Irq.o \
./Autosar/mcl/src/Mcl_IPW.o \
./Autosar/mcl/src/Mcl_Lmem.o \
./Autosar/mcl/src/Mcl_TrgMux.o 

C_DEPS += \
./Autosar/mcl/src/CDD_Mcl.d \
./Autosar/mcl/src/Ftm_Common.d \
./Autosar/mcl/src/LPit_Common.d \
./Autosar/mcl/src/Lptmr_Common.d \
./Autosar/mcl/src/Mcl_Dma.d \
./Autosar/mcl/src/Mcl_DmaMux.d \
./Autosar/mcl/src/Mcl_Dma_Irq.d \
./Autosar/mcl/src/Mcl_FlexIO_Common.d \
./Autosar/mcl/src/Mcl_FlexIO_Irq.d \
./Autosar/mcl/src/Mcl_IPW.d \
./Autosar/mcl/src/Mcl_Lmem.d \
./Autosar/mcl/src/Mcl_TrgMux.d 


# Each subdirectory must supply rules for building sources it contributes
Autosar/mcl/src/%.o: ../Autosar/mcl/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Autosar/mcl/src/CDD_Mcl.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


