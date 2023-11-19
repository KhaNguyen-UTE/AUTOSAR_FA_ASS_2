
#include "port.h"
#include "Dio.h"
#include "Mcu.h"
#include "Gpt.h"
#include "Register.h"
#include "Lpuart.h"
#include  "Det.h"
int main(void) {
	
	Mcu_Init(&Mcu_Config);
	Mcu_InitClock(McuClockSettingConfig_0);

	Mcu_GetPllStatus();
	Mcu_DistributePllClock();


	Port_Init(&Port_Config);
	Dio_WriteChannel(96, STD_HIGH);
	Dio_WriteChannel(111, STD_HIGH);
	Dio_WriteChannel(112, STD_HIGH);
	
	NVIC->ISER[1] |= (1u<<16u);
	Gpt_Init(&Gpt_Config);

	Gpt_StartTimer(LPIT_0_CH_0, (198));





	

	
	while (1){
		Det_ReportErrorToUart(MCU_MODULE_ID);
//		for (int i = 0; i<500000; i++){
//			Dio_WriteChannel(96, STD_LOW);
//		}
//		for (int i = 0; i<500000; i++){
//			Dio_WriteChannel(96, STD_HIGH);
//		}
	}
}

void LPIT0_Ch0_IRQHandler(){
//	Dio_WriteChannel(111, STD_HIGH);
//	Dio_WriteChannel(96, STD_HIGH);
	Dio_FlipChannel(96);
	LPIT->LPIT_MSR = 0x1;
}
