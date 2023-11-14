#include "Std_Types.h"

Line 871 / Mcu.c

FUNC( Std_ReturnType, MCU_CODE) Mcu_InitRamSection( VAR( Mcu_RamSectionType, AUTOMATIC) RamSection)

//Gọi hàm, tham số truyền vào RamSection, giá trị trả về E_NOT_OK, E_OK



VAR(Std_ReturnType, AUTOMATIC) RamStatus = (Std_ReturnType)E_NOT_OK; 

// Khởi tạo biến RamStatus và cho giá trị ban đầu E_NOT_OK



#ifndef MCU_MAX_NORAMCONFIGS     /*Xuất hiện khi không init Ram trong EB tresos    -> Mcu_Cfg.h _ line ~418*/

    VAR(Mcu_RamIndexType, AUTOMATIC) RamCounter;                                          //RamCounter : biến so sánh
    /* Limit of RamCounter. */
    VAR(Mcu_RamSizeType, AUTOMATIC) RamCounterLimit;                                      // có công thức (số byte của Ram size / Section Write Size (của board 4 bytes) = RamCounterLimit)
    /* Pointer to RAM configuration: base address, size, default value, write size. */
    P2CONST( Mcu_RamConfigType, AUTOMATIC, MCU_APPL_CONST) pRamConfigPtr;                 // Con trỏ lưu các giá trị settting cho ram : base address, size, default value, write size

#endif




#if (MCU_PARAM_CHECK==STD_ON)                                                                                                                      /*Check lỗi gì đó =))   , nếu giá trị hợp lệ = > đẩy luôn, không hợp lệ, cấu hình lại*/ 
        /* Check if Ram memory configuration is valid. */
        if ((Std_ReturnType)E_OK == (Std_ReturnType)Mcu_CheckInitRamSection(RamSection))
        {
#endif /*(MCU_PARAM_CHECK==STD_ON)*/
            RamStatus = (Std_ReturnType)E_OK;                                                                                                     //Ramstatus = E_OK 
            /* Get Ram settings from the configuration structure. */
            pRamConfigPtr = &(*Mcu_pConfigPtr->Mcu_apRamConfig)[Mcu_au8RamConfigIds[RamSection]];
            
            RamCounterLimit = (Mcu_RamSizeType)( (pRamConfigPtr->Mcu_RamSize) / (pRamConfigPtr->Mcu_RamWriteSize) );

            for (RamCounter = (Mcu_RamIndexType)0UL; ((RamCounter < RamCounterLimit) && ((Std_ReturnType)E_OK == RamStatus)); RamCounter++)
            {
                switch (pRamConfigPtr->Mcu_RamWriteSize)
                {
                    case (Mcu_RamWriteSizeType)1U:
                        /* @violates @ref Mcu_c_REF_9 Violates MISRA 2004 Advisory Rule 1.2: Undefined behaviour */
                        /* @violates @ref Mcu_c_REF_8 Violates MISRA 2004 Advisory Rule 11.4 , A cast should not be performed*/
                        ( *((uint8 (*)[1U]) (pRamConfigPtr->Mcu_pu8RamBaseAddr)) )[RamCounter]  = (uint8) pRamConfigPtr->Mcu_u64RamDefaultValue;
                        break;

                    case (Mcu_RamWriteSizeType)2U:
                        /* @violates @ref Mcu_c_REF_9 Violates MISRA 2004 Advisory Rule 1.2: Undefined behaviour */
                        /* @violates @ref Mcu_c_REF_8 Violates MISRA 2004 Advisory Rule 11.4 , A cast should not be performed*/
                        ( *((uint16 (*)[1U]) (pRamConfigPtr->Mcu_pu8RamBaseAddr)) )[RamCounter] = (uint16) pRamConfigPtr->Mcu_u64RamDefaultValue;
                        break;

                    case (Mcu_RamWriteSizeType)4U:
                        /* @violates @ref Mcu_c_REF_9 Violates MISRA 2004 Advisory Rule 1.2: Undefined behaviour */
                        /* @violates @ref Mcu_c_REF_8 Violates MISRA 2004 Advisory Rule 11.4 , A cast should not be performed*/
                        ( *((uint32 (*)[1U]) (pRamConfigPtr->Mcu_pu8RamBaseAddr)) )[RamCounter] = (uint32) pRamConfigPtr->Mcu_u64RamDefaultValue;
                        break;

                    case (Mcu_RamWriteSizeType)8U:
                        /* @violates @ref Mcu_c_REF_9 Violates MISRA 2004 Advisory Rule 1.2: Undefined behaviour */
                        /* @violates @ref Mcu_c_REF_8 Violates MISRA 2004 Advisory Rule 11.4 , A cast should not be performed*/
                        ( *((uint64 (*)[1U]) (pRamConfigPtr->Mcu_pu8RamBaseAddr)) )[RamCounter] = (uint64) pRamConfigPtr->Mcu_u64RamDefaultValue;
                        break;
                        
                    default:
                        RamStatus = (Std_ReturnType)E_NOT_OK;
                        break;
                }
            }