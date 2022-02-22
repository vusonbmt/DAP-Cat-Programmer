#include "C2.h"

#define C2D_EN() P1_MOD_OC &= ~(1 << 5); P1_DIR_PU |= (1 << 5)
#define C2D_DIS() P1 |= (1 << 5); P1_MOD_OC |= (1 << 5); P1_DIR_PU |= (1 << 5)

#define C2K_EN() P1_MOD_OC &= ~(1 << 7); P1_DIR_PU |= (1 << 7)
#define C2K_DIS() P1 |= (1 << 7); P1_MOD_OC |= (1 << 7); P1_DIR_PU |= (1 << 7)

extern void __delay_us(uint16_t u16Delay);
extern void __delay_ms(uint16_t u16Delay);

void delay(unsigned long uDelay);

void C2_Delay(void)
{
	__asm nop __endasm;
	__asm nop __endasm;
	__asm nop __endasm;
	__asm nop __endasm;
	__asm nop __endasm;
	//NOP();
	//NOP();
}

void delay(unsigned long uDelay) {
	__delay_us(uDelay);
	/*
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	*/
}

void C2_Send(uint8_t u8Data);
uint8_t C2_Read(void);

static SBIT(P17, 0x90, 7);
static SBIT(P15, 0x90, 5);

#define C2K_1 P17 = 1
#define C2K_0 P17 = 0
#define C2D_1 P15 = 1
#define C2D_0 P15 = 0
#define C2D_IN_VAL P15

static uint8_t u8FPD;

void C2_Exit(void) {
	C2K_1;
	C2K_DIS();
	C2D_1;
	C2D_DIS();
}

void C2_Init(uint8_t u8Address) {
	C2K_1;
	C2K_EN();
	C2D_1;
	C2D_EN();
	u8FPD = u8Address;
}

void C2_Send(uint8_t u8Data) {
	uint8_t i;
	C2D_EN();
	for(i=0; i<8; ++i) {
		if(u8Data&0x01) {
			C2D_1;
		} else {
			C2D_0;
		}
		//delay(1);
		C2_Delay();
		C2K_0;
		//delay(1);
		u8Data>>=1;
		C2K_1;
		//delay(1);
	}
}

uint8_t C2_Read(void) {
	uint8_t i;
	uint8_t ret=0;
	C2D_DIS();
	for(i=0; i<8; ++i) {
		C2K_0;
		//delay(1);
		C2_Delay();
		C2K_1;
		//delay(1);
		ret>>=1;
		if(C2D_IN_VAL) {
			ret|=0x80;
		}
	}
	return ret;
}

void C2_Reset(void) {
	C2D_DIS();
	C2K_0;
	__delay_ms(100);
	C2K_1;
	//__delay_ms(100);
}

uint8_t C2_ReadDR(uint8_t *pu8Ret) {
	uint8_t ret;
	uint16_t i;
	uint8_t u8TimeOut;
	
	C2D_DIS();
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	
	C2D_EN();
	//add delay
	delay(6);
	
	C2D_0;
	delay(1);
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	
	//add delay
	//delay(6);
	
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	
	//add delay
	delay(6);
	
	C2D_DIS();
	/* pool */
	u8TimeOut = 1;
	for (i = 0; i < 50000; ++i) {
		C2K_0;
		//delay(1);
		C2_Delay();
		C2K_1;
		delay(1);
		if(C2D_IN_VAL) {
			u8TimeOut = 0;
			break;
		}
		//delay(1);
	}
	
	if (u8TimeOut) {
		*pu8Ret = 0;
		return 0;
	}
	
	//add delay
	delay(6);
	
	ret=C2_Read();
	
	//add delay
	delay(6);
	
	C2K_0;
	//delay(1);
	C2_Delay();
	C2K_1;
	delay(1);
	*pu8Ret = 1;
	return ret;
}

void C2_WriteAR(uint8_t u8Data) {
	C2D_DIS();
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2D_EN();
	//add delay
	delay(6);
	
	C2D_1;
	delay(1);
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	//add delay
	delay(6);
	
	C2_Send(u8Data);
	
	//add delay
	delay(6);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	C2D_DIS();
}

uint8_t C2_ReadAR(void) {
	uint8_t ret;
	C2D_DIS();
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2D_EN();
	//add delay
	delay(6);
	
	C2D_0;
	delay(1);
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2D_1;
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	//add delay
	delay(6);
	
	ret=C2_Read();
	
	//add delay
	delay(6);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	return ret;
}

uint8_t C2_WriteDR(uint8_t u8Data) {
	uint16_t i;
	uint8_t ret;
	
	C2D_DIS();
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2D_EN();
	//add delay
	delay(6);
	
	C2D_1;
	delay(1);
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2D_0;
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	//add delay
	delay(6);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	
	//C2D_DIS();
	//add delay
	delay(6);
	
	C2_Send(u8Data);
	
	C2D_DIS();
	
	//add delay
	delay(6);
	
	/* pool */
	ret = 0;
	for (i = 0; i < 50000; ++i) {
		C2K_0;
		delay(1);
		C2K_1;
		delay(1);
		if(C2D_IN_VAL) {
			ret = 1;
			break;
		}
		//delay(1);
	}
	
	//add delay
	delay(6);
	
	C2K_0;
	delay(1);
	C2K_1;
	delay(1);
	C2D_DIS();
	return ret;
}

uint8_t C2_WriteFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data)
{
	uint8_t u8Tmp, i;
	uint8_t u8Ret;
	
	C2_WriteAR(u8FPD);
	C2_WriteDR(0x07);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	while(1) {
		//delay(100);
		if((C2_ReadAR()&0x01)) {
			break;
		}
	}
	
	u8Tmp=C2_ReadDR(&u8Ret);
	if (!u8Ret) {
		return 0;
	}
	if(u8Tmp!=0x0D) {
		return 0;
	}
	
	//High ADDR
	C2_WriteDR((u32Address >> 8));
	//delay(10);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	//LOW ADDR
	C2_WriteDR(u32Address);
	//delay(10);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	//doc 4 byte
	C2_WriteDR(u8Len);
	//delay(10);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	/*
	C2_WriteDR(0x14);
	C2_WriteDR(0x12);
	C2_WriteDR(0x19);
	C2_WriteDR(0x86);
	*/
	
	for(i=0; i<u8Len; ++i) {
		C2_WriteDR(pu8Data[i]);
	}
	
	//sau khi ghi xong code thu reset cho chay xem sao
	//C2_Reset();
	//while(1);
	
	while(1) {
		//delay(100);
		if((C2_ReadAR()&0x01)) {
			break;
		}
	}
	
	//delay(20);
	
	//doc du lieu thuc
	u8Tmp=C2_ReadDR(&u8Ret);
	
	if (!u8Ret) {
		return 0;
	}
	
	if(u8Tmp!=0x0D) {
		return 0;
	}
	return 1;
}
uint8_t C2_ReadFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data)
{
	uint8_t u8Tmp;
	uint8_t i;
	uint8_t u8Ret;
	
	C2_WriteAR(u8FPD);
	
	C2_WriteDR(0x06);
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	while(1) {
		if((C2_ReadAR()&0x01)) {
			break;
		}
	}
	u8Tmp = C2_ReadDR(&u8Ret);
	
	if (!u8Ret) {
		return 0;
	}
	if(u8Tmp!=0x0D) {
		return 0;
	}
	
	C2_WriteDR((u32Address >> 8));
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	//dia chi thap
	C2_WriteDR((u32Address));
	//delay(10);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	//so luong byte can doc
	C2_WriteDR(u8Len);
	
	while(1) {
		if((C2_ReadAR()&0x02)==0) {
			break;
		}
	}
	
	while(1) {
		//delay(100);
		if((C2_ReadAR()&0x01)) {
			break;
		}
	}
	
	u8Tmp = C2_ReadDR(&u8Ret);
	if (!u8Ret) {
		return 0;
	}
	if(u8Tmp!=0x0D) {
		return 0;
	}
	
	for(i=0; i<u8Len; ++i) {
		while(1) {
			//delay(100);
			if((C2_ReadAR()&0x01)) {
				break;
			}
		}
		pu8Data[i]=C2_ReadDR(&u8Ret);
		if (!u8Ret) {
			return 0;
		}
	}

	return 1;
}
