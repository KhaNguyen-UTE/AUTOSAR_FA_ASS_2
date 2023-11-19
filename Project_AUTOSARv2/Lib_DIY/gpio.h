/*
 * gpio.h
 *
 *  Created on: Oct 1, 2023
 *      Author: Admin
 */
/******************************************************************************
 * Project Name: GROUP3_CONTROL_LED
 * File Name: gpio.h
 *
 * Description: Implementation of the <gpio>
 *              Target systems:           S32K144
 *              Derivatives:              ARM Cortex M4F
 *              Compiler:                 S32DS
 *
 *****************************************************************************/

/**
 *   @file       gpio.h
 *   @version    V0.1
 *   @brief      <V0.1> <gpio> Driver
 *   @addtogroup <gpio>_driver
 *   @{
 */

#ifndef GPIO_H_
#define GPIO_H_

/******************************************************************************
 *  INCLUDES
 *****************************************************************************/
#include "register.h"

/******************************************************************************
*   VERSION CHECK
 *****************************************************************************/


/******************************************************************************
 *  DEFINES & MACROS
 *****************************************************************************/
/**
 * @brief  Create a name represent for PIN of LED RGB.
 */
#define	LED_BLUE			(0u)
#define	LED_RED				(15u)
#define LED_GREEN			(16u)

/**
 * @brief  Create a name represent for PIN of BUTTON.
 */
#define	BUTTON1				(12u)
#define BUTTON2				(13u)

/**
 * @brief  Create a name represent for state of bit.
 */
#define	LEVEL_HIGH			(1u)
#define	LEVEL_LOW			(0u)

/******************************************************************************
 *  TYPEDEFS
 *****************************************************************************/
/**
* @brief  create the name represent for PINs of GPIO register.
*/
typedef enum	GPIO_Pin_Type
{
	PIN0 = 0u,
	PIN1,
	PIN2,
	PIN3,
	PIN4,
	PIN5,
	PIN6,
	PIN7,
	PIN8,
	PIN9,
	PIN10,
	PIN11,
	PIN12,
	PIN13,
	PIN14,
	PIN15,
	PIN16,
	PIN17,
	PIN18,
	PIN19,
	PIN20,
	PIN21,
	PIN22,
	PIN23,
	PIN24,
	PIN25,
	PIN26,
	PIN27,
	PIN28,
	PIN29,
	PIN30,
	PIN31
} E_GPIO_Pin_Type;

/******************************************************************************
 *  CONSTANTS
 *****************************************************************************/


/******************************************************************************
 *  GLOBAL VARIABLES
 *****************************************************************************/
extern int Flag_UART;
extern int Counter_Flag;
extern int CounterVariable;

/******************************************************************************
 *  GLOBAL FUNCTION
 *****************************************************************************/
void BUTTON_Init(void);
void LED_Init(void);
void Gpio_SetPinValue(GPIO_Type *GPIO_Port, E_GPIO_Pin_Type GPIO_PinNum_E, const unsigned int GPIO_Value);
void Gpio_GetPinValue(GPIO_Type *GPIO_Port, E_GPIO_Pin_Type GPIO_PinNum_E, unsigned int *GPIO_value);
unsigned int Port_ReadBitValue(PORT_Type *PORT_PCRn, E_GPIO_Pin_Type PORT_PinNum_E, unsigned int PORT_BitField);
void Port_WriteBitValue(PORT_Type *PORT_PCRn, E_GPIO_Pin_Type PORT_PinNum_E, unsigned int PORT_BitField, unsigned int PORT_Value);
void Gpio_ClearAllLed(void);
void CLKOUT_Init(void);
void Cycle_LED_RGB(void);
void Check_Duration_LED (void);
void Send_CounterVariable (void);

/**
 * @}
 */

#endif /* GPIO_H_ */
/*---------------------- End of File ----------------------------------------*/