#include "register.h"
#include "port.h"
#include "Dio.h"
#include "Mcu.h"
#include "lpit.h"
#include "Gpt.h"
int main(void) {
	Mcu_Init(&Mcu_Config);
	Mcu_InitClock(McuClockSettingConfig_0);
	Port_Init(&Port_Config);
	Dio_WriteChannel(96, STD_HIGH);
	Dio_WriteChannel(111, STD_HIGH);
	Dio_WriteChannel(112, STD_HIGH);
	

	/*The MCU module's environment shall only call the function Mcu_DistributePllClock
	after the status of the PLL has been detected 
	as locked by the function Mcu_GetPllStatus. */
	Mcu_GetPllStatus();
	Mcu_DistributePllClock();

	NVIC->ISER[1] |= (1u<<16u);
    Gpt_Init(&Gpt_Config);
    Gpt_StartTimer(LPIT_0_CH_0, 199);


	while (1){
		for (int i = 0; i<500000; i++){
			Dio_WriteChannel(96, STD_LOW);
		}
		for (int i = 0; i<500000; i++){
			Dio_WriteChannel(96, STD_HIGH);
		}
	}
}

void LPIT0_Ch0_IRQHandler(){
//	Dio_WriteChannel(111, STD_HIGH);
//	Dio_WriteChannel(96, STD_HIGH);
	LPIT->LPIT_MSR = 0x1;
}
