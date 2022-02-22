#include "ch554.h"
#include <stdint.h>

void C2_Init(uint8_t u8Address);
void C2_Exit(void);
void C2_Reset(void);
uint8_t C2_ReadDR(uint8_t *pu8Ret);
uint8_t C2_WriteDR(uint8_t u8Data);
void C2_WriteAR(uint8_t u8Data);
uint8_t C2_ReadAR(void);
uint8_t C2_WriteFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data);
uint8_t C2_ReadFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data);
