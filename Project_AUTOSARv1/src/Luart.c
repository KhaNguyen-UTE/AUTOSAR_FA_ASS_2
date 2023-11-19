/******************************************************************************
 * Project Name: GROUP3_Control_LED
 * File Name: Lpuart.c
 *
 * Description: Implementation of the <Lpuart>
 *              Target systems:           S32K144
 *              Derivatives:              ARM cortex M4F
 *              Compiler:                 S32DS
 *
 *****************************************************************************/

/**
 *   @file       Lpuart.c
 *   @version    <V5.0>
 *   @brief      <V5.0> <Lpuart> Driver
 *   @addtogroup <Lpuart> driver
 *   @{
 */

/******************************************************************************
 *  INCLUDES
 *****************************************************************************/
#include  "Lpuart.h"

/******************************************************************************
 *  DEFINES & MACROS
 *****************************************************************************/

/******************************************************************************
 *  EXTERN
 *****************************************************************************/

/******************************************************************************
 *  LOCAL TYPEDEFS
 *****************************************************************************/

/******************************************************************************
 *  LOCAL CONSTANTS
 *****************************************************************************/

/******************************************************************************
 *  LOCAL VARIABLES
 *****************************************************************************/

/******************************************************************************
 *  GLOBAL VARIABLES
 *****************************************************************************/

/******************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 *****************************************************************************/

/******************************************************************************
 *  LOCAL FUNCTION
 ******************************************************************************/

/******************************************************************************
 *  GLOBAL FUNCTION
 *****************************************************************************/

/**
 *   @brief	Init Lpuart1
              Baudrate = 9600
              stop bit = 1
              data length = 8
              parity = none		
 *
 *   @param[in]	void
 * 
 *   @arg  
 *
 *   @return	void
 *
 *   @note  
 *
*/
void Lpuart1_Init(void)
{
  /* 1.  Setting NVIC - No use  */
	
  /*  2. Setting Tx/Rx pin
    + Enable clock for PORT : PCC[CGC] ~ bit30
    + Set alternate function pin : PORT_PCR[MUX] ~ bit 8-10 / Lpuart chanel 1 of PORTC, refer schematic
  */
  PCC->PCC_PORTC   |= (1u<<30u);           /* Enable clock for PORTC */
  /*  lookup in file Excel to know what number is alt uart -Alternative 2 is lpuart_chanel1 */
  PORTC->PCR[6]    |= (2u<<8u);            /* Port C6: MUX = ALT2, UART1 RX */
  PORTC->PCR[7]    |= (2u<<8u);            /* Port C7: MUX = ALT2, UART1 TX */

 /* 3. Set source clock for Lpuart 
    + peripheral clock source select: PCC[PCS] ~ bit 24-26
    + Enable clock for LPUART: PCC[CGC] ~ bit 30
  */
  
  PCC->PCC_LPUART1  |=  (3u<<24u);      /* Select source: FIRCDIV2_CLK = 48MHz */
  PCC->PCC_LPUART1  |=  (1u<<30u);      /* Enable clock for LPURAT */
  

 /* 4. Setting baudrate 
    + Set the modulo divide rate: BAUD[SBR]
    + Set Oversampling ratio: BAUD[OSR]
  */
  LPUART1->BAUD &=(~( 0x1fu<<24u));      /* Set oversampling: 16*/
  LPUART1->BAUD &=~(0x1fffu);            /* Clear */
	LPUART1->BAUD |= 312u;                 /* Set the modulo divide rate - Baudrate : 9600 */

  /*  5. Setting frame 
    + Select stop bit number: BAUD[SBNS]
    + Set data characters number: CTRL[M]
    +Set parity: CTRL[PE]
  */
  LPUART1->BAUD &=~ (1u<<13u);    /* one stop bit */
	LPUART1->CTRL &=~ (1u<<4u);     /* 8 bit data */
	LPUART1->CTRL &=~ (1u<<1u);     /* no parity */

  /*  6. Enable Receiver Interrupt */
  LPUART1->CTRL |= (1u<<21u);

  /*  7. Enable transmitter & receiver 
  + Tranmitter Enable: CTRL[TE]
  + Receiver enable: CTRl[RE]
  */
  LPUART1->CTRL |= (1u<<18u);     /* Receiver Enable */
  LPUART1->CTRL |= (1u<<19u);     /* Transmitter Enable */
}


/**
 *   @brief	Send one character to Uart
 *
 *   @param[in]	uint8_t p_Data_c
 * 
 *   @arg  
 *
 *   @return	void
 *
 *   @note  
 *
*/
void LPUART1_send_char(uint8_t p_Data_c) 
{
	while((LPUART1->STAT & (1<<23u)) == 0 );
	/* Wait for transmit buffer to be empty */
	LPUART1->DATA = p_Data_c;              /* Send data */
}


/**
 *   @brief	Send string to Uart	
 *
 *   @param[in]	uint8_t*  p_DataString_ptr
 * 
 *   @arg  
 *
 *   @return	void
 *
 *   @note  
 *
*/
void LPUART1_send_string(uint8_t*  p_DataString_ptr )
{  /* Function to Transmit whole string */
	while(*p_DataString_ptr != '\0')  
  {  
    /* Send chars one at a time */         
		LPUART1_send_char(*p_DataString_ptr);
		p_DataString_ptr++;
	}
}

/**
 * @}
 */
