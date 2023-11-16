#include "Port.h"
#include "Dio.h"
#include "S32K144.h"
#include "Mcu.h"

int main(){
	Std_ReturnType kha;
	Mcu_Init(&Mcu_Config);
	Mcu_InitClock(McuClockSettingConfig_0);

	kha = Mcu_InitRamSection(0U);
	Mcu_InitRamSection(1U);
	Mcu_DistributePllClock();
	Port_Init(&Port_Config);
	int i;
	while (1)
	{
		for (i = 0 ; i < 5000000/2; i++){}
		//Dio_FlipChannel(112);
		Dio_WriteChannel(112, 1);
		for (i = 0 ; i < 5000000/2; i++){}
		Dio_WriteChannel(112, 0);
	}

	return 0;
}
