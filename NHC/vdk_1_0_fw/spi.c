#include "spi.h"

void spi_init(uint8_t u8Speed)
{
	SPI0_SETUP = 0x00;
	switch (u8Speed) {
	case 0x01:
		SPI0_CK_SE = 6;//4M
		break;
	case 0x02:
		SPI0_CK_SE = 12;//3;//2M
		break;
	case 0x03:
		SPI0_CK_SE = 24;//6;//1M
		break;
	case 0x04:
		SPI0_CK_SE = 48;//12;//500K
		break;
	case 0x05:
		SPI0_CK_SE = 96;//48;//250K
		break;
	case 0x06:
		SPI0_CK_SE = 240;//120;//100K
		break;
	case 0x07:
		SPI0_CK_SE = 254;//254;//94K
		break;
	case 0x08:
		SPI0_CK_SE = 254;//254;
		break;
	case 0x09:
		SPI0_CK_SE = 254;//254;
		break;
	default:
		SPI0_CK_SE = 254;//254;//
		break;
	}
	SPI0_CTRL = 0x60;
}

uint8_t spi_send(uint8_t u8Data)
{
	SPI0_DATA = u8Data;
	while (!S0_FREE);
	return SPI0_DATA;
}

