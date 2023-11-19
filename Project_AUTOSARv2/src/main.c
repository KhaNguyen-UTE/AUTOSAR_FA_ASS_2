
#include "port.h"
#include "Dio.h"
#include "Mcu.h"
#include "register.h"
#include "Gpt.h"
int main(void) {
	Mcu_Init(&Mcu_Config);
	Mcu_InitClock(McuClockSettingConfig_0);
	
	/*The MCU module's environment shall only call the function Mcu_DistributePllClock
	after the status of the PLL has been detected 
	as locked by the function Mcu_Ge	tPllStatus. */
	Mcu_GetPllStatus();
	Mcu_DistributePllClock();

	Mcu_InitRamSection(0U);
	Mcu_InitRamSection(1U);

	Port_Init(&Port_Config);
	Dio_WriteChannel(96, STD_HIGH);
	Dio_WriteChannel(111, STD_HIGH);
	Dio_WriteChannel(112, STD_HIGH);

	NVIC->ISER[1] |= (1u<<16u);
	Gpt_Init(&Gpt_Config);
	Gpt_StartTimer(LPIT_0_CH_0, 12000000-1);

	int count = 0;
	while (1){
//		for (int i = 0; i<500000; i++){
//			Dio_WriteChannel(96, STD_LOW);
//		}
//		for (int i = 0; i<500000; i++){
//			Dio_WriteChannel(96, STD_HIGH);
//		}
	if (count < 20)
	{
		while ((LPIT->LPIT_MSR)&(0x1) != 0)
		{
			count++;
			if (count == 5 )
			{
				Gpt_DisableNotification(LPIT_0_CH_0);
			}
		}
	}
		
	}
}




void LPIT0_Ch0_IRQHandler(){
//	Dio_WriteChannel(111, STD_HIGH);
//	Dio_WriteChannel(96, STD_HIGH);
	Dio_FlipChannel(96);
	LPIT->LPIT_MSR = 0x1;
}
