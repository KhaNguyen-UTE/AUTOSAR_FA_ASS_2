#include "Port.h"
#include "Dio.h"
#include "S32K144.h"
#include "Mcu.h"

int main(){
	Std_ReturnType kha;
	Mcu_Init(&Mcu_Config);
	//Mcu_InitClock(0);
	kha = Mcu_InitRamSection(0U);
	Mcu_InitRamSection(1U);


	return 0;
}
