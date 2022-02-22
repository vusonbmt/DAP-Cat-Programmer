;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module callback
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Delay_Ms
	.globl _C2_ReadFlash
	.globl _C2_WriteFlash
	.globl _C2_ReadAR
	.globl _C2_WriteAR
	.globl _C2_WriteDR
	.globl _C2_ReadDR
	.globl _C2_Reset
	.globl _C2_Exit
	.globl _C2_Init
	.globl _ICP_FlashWrite
	.globl _ICP_SetWire
	.globl _ICP_Enter
	.globl _ICP_Read
	.globl _ICP_Write
	.globl _ICP_Exit
	.globl _ICP_Init
	.globl _ispReadEeprom
	.globl _ispReadAvrHi
	.globl _ispReadAvrLo
	.globl _FindNotBlank
	.globl _ispWriteFlashPage
	.globl _ispWriteFlashByte
	.globl _ispWriteEeprom
	.globl _ispReadFlash
	.globl _spi_send
	.globl _spi_init
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _u8Pos
	.globl _u8NeedFind
	.globl _u8NumPage
	.globl _u16PageSize
	.globl _u8ExtAddr
	.globl _u16Addr
	.globl _u32Addr
	.globl _EP0_Out_CallBack
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
_rst	=	0x00b2
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_u32Addr::
	.ds 4
_u16Addr::
	.ds 2
_u8ExtAddr::
	.ds 1
_u16PageSize::
	.ds 2
_u8NumPage::
	.ds 1
_u8NeedFind::
	.ds 1
_u8Pos::
	.ds 1
_EP0_Out_CallBack_u8Ret_65536_36:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Out_CallBack'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;u8Ret                     Allocated with name '_EP0_Out_CallBack_u8Ret_65536_36'
;u32Tmp                    Allocated to registers r7 r6 r5 r4 
;------------------------------------------------------------
;	callback.c:23: void EP0_Out_CallBack(void)
;	-----------------------------------------
;	 function EP0_Out_CallBack
;	-----------------------------------------
_EP0_Out_CallBack:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	callback.c:29: switch (u8ReceiveBuff[0]) {
	mov	dptr,#_u8ReceiveBuff
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00653$
	sjmp	00101$
00653$:
	cjne	r7,#0x02,00654$
	ljmp	00157$
00654$:
	cjne	r7,#0x04,00655$
	ljmp	00204$
00655$:
	ret
;	callback.c:31: case 0x01:
00101$:
;	callback.c:35: if (u8Chip == CHIP_C2) {
	mov	a,#0x02
	cjne	a,_u8Chip,00656$
	sjmp	00657$
00656$:
	ljmp	00105$
00657$:
;	callback.c:36: u32Tmp = u8ReceiveBuff[5];
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:37: u32Tmp <<= 24;
	mov	(_u32Addr + 3),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
	mov	(_u32Addr + 2),r6
;	callback.c:39: u32Tmp = u8ReceiveBuff[4];
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:40: u32Tmp <<= 16;
	mov	ar4,r6
	mov	ar5,r7
;	callback.c:41: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:42: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:43: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:44: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:45: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	callback.c:46: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:47: if (C2_ReadFlash(u32Addr, u8ReceiveBuff[6], &u8TransBuff[0])) {
	mov	dptr,#(_u8ReceiveBuff + 0x0006)
	movx	a,@dptr
	mov	_C2_ReadFlash_PARM_2,a
	mov	_C2_ReadFlash_PARM_3,#_u8TransBuff
	mov	(_C2_ReadFlash_PARM_3 + 1),#(_u8TransBuff >> 8)
;	1-genFromRTrack replaced	mov	(_C2_ReadFlash_PARM_3 + 2),#0x00
	mov	(_C2_ReadFlash_PARM_3 + 2),r6
	mov	dpl,_u32Addr
	mov	dph,(_u32Addr + 1)
	mov	b,(_u32Addr + 2)
	mov	a,(_u32Addr + 3)
	lcall	_C2_ReadFlash
;	callback.c:52: u8HidNum = 128;
	mov	_u8HidNum,#0x80
;	callback.c:53: break;
	ret
00105$:
;	callback.c:55: switch (u8ReceiveBuff[1]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00658$
00658$:
	jnc	00659$
	ret
00659$:
	mov	a,r7
	add	a,#0xff - 0x0f
	jnc	00660$
	ret
00660$:
	mov	a,r7
	add	a,#0xf8
	mov	r7,a
	add	a,#(00661$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00662$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00661$:
	.db	00148$
	.db	00146$
	.db	00265$
	.db	00144$
	.db	00265$
	.db	00110$
	.db	00276$
	.db	00273$
00662$:
	.db	00148$>>8
	.db	00146$>>8
	.db	00265$>>8
	.db	00144$>>8
	.db	00265$>>8
	.db	00110$>>8
	.db	00276$>>8
	.db	00273$>>8
;	callback.c:57: for (i=0; i<8; ++i) {
00273$:
	mov	r6,#0x00
	mov	r7,#0x00
00237$:
;	callback.c:58: u8TransBuff[i] = 0x00;
	mov	a,r6
	add	a,#_u8TransBuff
	mov	dpl,a
	mov	a,r7
	addc	a,#(_u8TransBuff >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	callback.c:57: for (i=0; i<8; ++i) {
	inc	r6
	cjne	r6,#0x00,00663$
	inc	r7
00663$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jc	00237$
;	callback.c:60: u8HidNum = 8;
	mov	_u8HidNum,#0x08
;	callback.c:61: break;
	ret
;	callback.c:63: for(i=0; i<u8ReceiveBuff[7]; ++i) {
00276$:
	mov	r6,#0x00
	mov	r7,#0x00
00240$:
	mov	dptr,#(_u8ReceiveBuff + 0x0007)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jnc	00109$
;	callback.c:64: u8TransBuff[i] = spi_send(u8ReceiveBuff[i+2]);
	mov	a,r6
	add	a,#_u8TransBuff
	mov	r4,a
	mov	a,r7
	addc	a,#(_u8TransBuff >> 8)
	mov	r5,a
	mov	a,#0x02
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_send
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	callback.c:63: for(i=0; i<u8ReceiveBuff[7]; ++i) {
	inc	r6
	cjne	r6,#0x00,00240$
	inc	r7
	sjmp	00240$
00109$:
;	callback.c:66: u8HidNum = 8;
	mov	_u8HidNum,#0x08
;	callback.c:67: break;
	ret
;	callback.c:68: case 0x0D:
00110$:
;	callback.c:73: switch (u8ReceiveBuff[3]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x06
	jnc	00667$
	ljmp	00135$
00667$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00668$
	jmp	@a+dptr
00668$:
	ljmp	00135$
	ljmp	00111$
	ljmp	00115$
	ljmp	00119$
	ljmp	00123$
	ljmp	00127$
	ljmp	00131$
;	callback.c:74: case 0x01:
00111$:
;	callback.c:75: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00113$
;	callback.c:76: spi_init(1);
	mov	dpl,#0x01
	lcall	_spi_init
	ljmp	00139$
00113$:
;	callback.c:78: spi_init(3);
	mov	dpl,#0x03
	lcall	_spi_init
;	callback.c:80: break;
	ljmp	00139$
;	callback.c:81: case 0x02:
00115$:
;	callback.c:82: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00117$
;	callback.c:83: spi_init(2);
	mov	dpl,#0x02
	lcall	_spi_init
	sjmp	00139$
00117$:
;	callback.c:85: spi_init(4);
	mov	dpl,#0x04
	lcall	_spi_init
;	callback.c:87: break;
;	callback.c:88: case 0x03:
	sjmp	00139$
00119$:
;	callback.c:89: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00121$
;	callback.c:90: spi_init(3);
	mov	dpl,#0x03
	lcall	_spi_init
	sjmp	00139$
00121$:
;	callback.c:92: spi_init(5);
	mov	dpl,#0x05
	lcall	_spi_init
;	callback.c:94: break;
;	callback.c:95: case 0x04:
	sjmp	00139$
00123$:
;	callback.c:96: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00125$
;	callback.c:97: spi_init(4);
	mov	dpl,#0x04
	lcall	_spi_init
	sjmp	00139$
00125$:
;	callback.c:99: spi_init(6);
	mov	dpl,#0x06
	lcall	_spi_init
;	callback.c:101: break;
;	callback.c:102: case 0x05:
	sjmp	00139$
00127$:
;	callback.c:103: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00129$
;	callback.c:104: spi_init(5);
	mov	dpl,#0x05
	lcall	_spi_init
	sjmp	00139$
00129$:
;	callback.c:106: spi_init(7);
	mov	dpl,#0x07
	lcall	_spi_init
;	callback.c:108: break;
;	callback.c:109: case 0x06:
	sjmp	00139$
00131$:
;	callback.c:110: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00133$
;	callback.c:111: spi_init(6);
	mov	dpl,#0x06
	lcall	_spi_init
	sjmp	00139$
00133$:
;	callback.c:113: spi_init(8);
	mov	dpl,#0x08
	lcall	_spi_init
;	callback.c:115: break;
;	callback.c:116: default:
	sjmp	00139$
00135$:
;	callback.c:117: if (!u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jnz	00137$
;	callback.c:118: spi_init(7);
	mov	dpl,#0x07
	lcall	_spi_init
	sjmp	00139$
00137$:
;	callback.c:120: spi_init(9);
	mov	dpl,#0x09
	lcall	_spi_init
;	callback.c:123: }
00139$:
;	callback.c:127: if(u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jz	00141$
;	callback.c:128: u8Chip=CHIP_89S;
	mov	_u8Chip,#0x01
;	callback.c:130: rst = 1;
;	assignBit
	setb	_rst
	sjmp	00142$
00141$:
;	callback.c:132: u8Chip=CHIP_AVR;
	mov	_u8Chip,#0x00
;	callback.c:134: rst = 0;
;	assignBit
	clr	_rst
00142$:
;	callback.c:137: P3_MOD_OC &= ~(1 << 2);
	anl	_P3_MOD_OC,#0xfb
;	callback.c:138: P3_DIR_PU |= (1 << 2);
	orl	_P3_DIR_PU,#0x04
;	callback.c:140: u8HidNum = 8;
	mov	_u8HidNum,#0x08
;	callback.c:141: break;
	ret
;	callback.c:144: case 0x0B:
00144$:
;	callback.c:151: SPI0_CTRL = 0x00;
	mov	_SPI0_CTRL,#0x00
;	callback.c:152: P3_MOD_OC &= ~(1 << 2);
	anl	_P3_MOD_OC,#0xfb
;	callback.c:153: P3_DIR_PU &= ~(1 << 2);
	anl	_P3_DIR_PU,#0xfb
;	callback.c:154: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:155: break;
	ret
;	callback.c:158: case 0x09:
00146$:
;	callback.c:159: u16Addr= u8ReceiveBuff[3]*256+u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	_u16Addr,a
	mov	a,r4
	addc	a,r6
	mov	(_u16Addr + 1),a
;	callback.c:160: for(i=0; i<128; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00242$:
;	callback.c:161: u8TransBuff[i]= ispReadEeprom(u16Addr+i);
	mov	a,r6
	add	a,#_u8TransBuff
	mov	r4,a
	mov	a,r7
	addc	a,#(_u8TransBuff >> 8)
	mov	r5,a
	mov	a,r6
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ispReadEeprom
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	callback.c:160: for(i=0; i<128; ++i) {
	inc	r6
	cjne	r6,#0x00,00677$
	inc	r7
00677$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x00
	jc	00242$
;	callback.c:163: u8HidNum = 128;
	mov	_u8HidNum,#0x80
;	callback.c:164: break;
	ret
;	callback.c:165: case 0x08:
00148$:
;	callback.c:166: if(u8Chip==CHIP_AVR) {
	mov	a,_u8Chip
	jz	00679$
	ljmp	00154$
00679$:
;	callback.c:167: u32Tmp = u8ReceiveBuff[4];
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:168: u32Tmp <<= 16;
	mov	(_u32Addr + 3),r6
	mov	(_u32Addr + 2),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	callback.c:170: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:171: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:172: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:173: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	callback.c:174: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
;	callback.c:177: u32Addr>>=1;
	mov	(_u32Addr + 3),a
	clr	c
	rrc	a
	mov	(_u32Addr + 3),a
	mov	a,(_u32Addr + 2)
	rrc	a
	mov	(_u32Addr + 2),a
	mov	a,(_u32Addr + 1)
	rrc	a
	mov	(_u32Addr + 1),a
	mov	a,_u32Addr
	rrc	a
	mov	_u32Addr,a
;	callback.c:178: u16Addr=(uint16_t)u32Addr;
	mov	_u16Addr,_u32Addr
	mov	(_u16Addr + 1),(_u32Addr + 1)
;	callback.c:179: u32Addr>>=16;
	mov	_u32Addr,(_u32Addr + 2)
	mov	(_u32Addr + 1),(_u32Addr + 3)
;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
	mov	(_u32Addr + 2),r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 3),#0x00
	mov	(_u32Addr + 3),r6
;	callback.c:180: u8ExtAddr=u32Addr;
;	callback.c:182: if(u8ExtAddr) {
	mov	a,_u32Addr
	mov	_u8ExtAddr,a
	jz	00290$
;	callback.c:183: spi_send(0x4D);
	mov	dpl,#0x4d
	lcall	_spi_send
;	callback.c:184: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
;	callback.c:185: spi_send(u8ExtAddr);
	mov	dpl,_u8ExtAddr
	lcall	_spi_send
;	callback.c:186: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
;	callback.c:188: for(i=0; i<128/2; ++i) {
00290$:
	mov	r6,#0x00
	mov	r7,#0x00
00244$:
;	callback.c:189: u8TransBuff[i*2]= ispReadAvrLo(u16Addr+i);
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r6
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_ispReadAvrLo
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	a,r1
	movx	@dptr,a
;	callback.c:190: u8TransBuff[i*2+1]= ispReadAvrHi(u16Addr+i);
	inc	r4
	cjne	r4,#0x00,00681$
	inc	r5
00681$:
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r4,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r5,a
	mov	a,r6
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ispReadAvrHi
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	callback.c:188: for(i=0; i<128/2; ++i) {
	inc	r6
	cjne	r6,#0x00,00682$
	inc	r7
00682$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	subb	a,#0x00
	jc	00244$
	sjmp	00155$
00154$:
;	callback.c:193: u16Addr=u8ReceiveBuff[3]*256+u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	_u16Addr,a
	mov	a,r4
	addc	a,r6
	mov	(_u16Addr + 1),a
;	callback.c:194: for(i=0; i<128; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00246$:
;	callback.c:195: u8TransBuff[i]=ispReadFlash(u16Addr+i);
	mov	a,r6
	add	a,#_u8TransBuff
	mov	r4,a
	mov	a,r7
	addc	a,#(_u8TransBuff >> 8)
	mov	r5,a
	mov	a,r6
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ispReadFlash
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	callback.c:194: for(i=0; i<128; ++i) {
	inc	r6
	cjne	r6,#0x00,00684$
	inc	r7
00684$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x00
	jc	00246$
00155$:
;	callback.c:198: u8HidNum = 128;
	mov	_u8HidNum,#0x80
;	callback.c:201: break;
	ret
;	callback.c:204: case 0x02:
00157$:
;	callback.c:208: if (u8Chip == CHIP_C2) {
	mov	a,#0x02
	cjne	a,_u8Chip,00686$
	sjmp	00687$
00686$:
	ljmp	00162$
00687$:
;	callback.c:209: u32Tmp = u8ReceiveBuff[5];
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:210: u32Tmp <<= 24;
	mov	(_u32Addr + 3),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
	mov	(_u32Addr + 2),r6
;	callback.c:212: u32Tmp = u8ReceiveBuff[4];
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:213: u32Tmp <<= 16;
	mov	ar4,r6
	mov	ar5,r7
;	callback.c:214: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:215: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:216: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:217: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:218: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	callback.c:219: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:220: if (C2_WriteFlash(u32Addr, u8ReceiveBuff[6], &u8ReceiveBuff[7])) {
	mov	dptr,#(_u8ReceiveBuff + 0x0006)
	movx	a,@dptr
	mov	_C2_WriteFlash_PARM_2,a
	mov	_C2_WriteFlash_PARM_3,#(_u8ReceiveBuff + 0x0007)
	mov	(_C2_WriteFlash_PARM_3 + 1),#((_u8ReceiveBuff + 0x0007) >> 8)
;	1-genFromRTrack replaced	mov	(_C2_WriteFlash_PARM_3 + 2),#0x00
	mov	(_C2_WriteFlash_PARM_3 + 2),r6
	mov	dpl,_u32Addr
	mov	dph,(_u32Addr + 1)
	mov	b,(_u32Addr + 2)
	mov	a,(_u32Addr + 3)
	lcall	_C2_WriteFlash
	mov	a,dpl
	jz	00159$
;	callback.c:221: u8TransBuff[0] = 1;
	mov	dptr,#_u8TransBuff
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00160$
00159$:
;	callback.c:223: u8TransBuff[0] = 0;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
00160$:
;	callback.c:225: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:226: break;
	ret
00162$:
;	callback.c:229: u16PageSize = u8ReceiveBuff[4] + 1;
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x01
	add	a,r7
	mov	_u16PageSize,a
	clr	a
	addc	a,r6
	mov	(_u16PageSize + 1),a
;	callback.c:230: if (u8ReceiveBuff[6]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0006)
	movx	a,@dptr
	jz	00202$
;	callback.c:232: u16Addr = u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	_u16Addr,a
	mov	a,r4
	addc	a,r6
	mov	(_u16Addr + 1),a
;	callback.c:233: for (i=0; i<u8ReceiveBuff[5]; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00249$:
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jc	00690$
	ret
00690$:
;	callback.c:234: ispWriteEeprom(u16Addr+i, u8ReceiveBuff[i+8]);
	mov	a,r6
	add	a,_u16Addr
	mov	r4,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	r5,a
	mov	a,#0x08
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_ispWriteEeprom_PARM_2,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_ispWriteEeprom
	pop	ar6
	pop	ar7
;	callback.c:233: for (i=0; i<u8ReceiveBuff[5]; ++i) {
	inc	r6
	cjne	r6,#0x00,00249$
	inc	r7
	sjmp	00249$
00202$:
;	callback.c:238: if(u8Chip==CHIP_89S) {
	mov	a,#0x01
	cjne	a,_u8Chip,00199$
;	callback.c:239: u16Addr=u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	_u16Addr,a
	mov	a,r4
	addc	a,r6
	mov	(_u16Addr + 1),a
;	callback.c:242: for(i=0; i<u8ReceiveBuff[5]; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00252$:
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jc	00694$
	ret
00694$:
;	callback.c:243: ispWriteFlashByte(u16Addr+i, u8ReceiveBuff[i+8]);
	mov	a,r6
	add	a,_u16Addr
	mov	r4,a
	mov	a,r7
	addc	a,(_u16Addr + 1)
	mov	r5,a
	mov	a,#0x08
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r3
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_ispWriteFlashByte_PARM_2,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_ispWriteFlashByte
	pop	ar6
	pop	ar7
;	callback.c:242: for(i=0; i<u8ReceiveBuff[5]; ++i) {
	inc	r6
	cjne	r6,#0x00,00252$
	inc	r7
	sjmp	00252$
00199$:
;	callback.c:251: if(u16PageSize <= 0x80) {
	clr	c
	mov	a,#0x80
	subb	a,_u16PageSize
	clr	a
	subb	a,(_u16PageSize + 1)
	jnc	00696$
	ljmp	00196$
00696$:
;	callback.c:252: u16Addr = u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	_u16Addr,a
	mov	a,r4
	addc	a,r6
	mov	(_u16Addr + 1),a
;	callback.c:255: u8NumPage = u8ReceiveBuff[5]/u16PageSize;
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divuint_PARM_2,_u16PageSize
	mov	(__divuint_PARM_2 + 1),(_u16PageSize + 1)
	mov	dpl,r7
	mov	dph,r6
	lcall	__divuint
	mov	r6,dpl
	mov	_u8NumPage,r6
;	callback.c:256: for(i=0; i<u8NumPage; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00255$:
	mov	r4,_u8NumPage
	mov	r5,#0x00
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00697$
	ret
00697$:
;	callback.c:257: ispWriteFlashPage(u16Addr+i*u16PageSize, &u8ReceiveBuff[8+i*u16PageSize], u16PageSize);
	mov	__mulint_PARM_2,_u16PageSize
	mov	(__mulint_PARM_2 + 1),(_u16PageSize + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r5
	addc	a,(_u16Addr + 1)
	mov	dph,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_u8ReceiveBuff
	mov	r4,a
	mov	a,r5
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	r5,a
	mov	_ispWriteFlashPage_PARM_2,r4
	mov	(_ispWriteFlashPage_PARM_2 + 1),r5
	mov	(_ispWriteFlashPage_PARM_2 + 2),#0x00
	mov	_ispWriteFlashPage_PARM_3,_u16PageSize
	mov	(_ispWriteFlashPage_PARM_3 + 1),(_u16PageSize + 1)
	push	ar7
	push	ar6
	lcall	_ispWriteFlashPage
	pop	ar6
	pop	ar7
;	callback.c:256: for(i=0; i<u8NumPage; ++i) {
	inc	r6
	cjne	r6,#0x00,00255$
	inc	r7
	sjmp	00255$
00196$:
;	callback.c:266: if(u8ReceiveBuff[5]==0x80) {
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00699$
	sjmp	00700$
00699$:
	ljmp	00311$
00700$:
;	callback.c:268: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:269: u32Tmp <<= 16;
	mov	(_u32Addr + 3),r6
	mov	(_u32Addr + 2),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	callback.c:271: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:272: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:273: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:274: u32Tmp = u8ReceiveBuff[1];
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r7,a
;	callback.c:275: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
;	callback.c:277: u32Addr>>=1;
	mov	(_u32Addr + 3),a
	clr	c
	rrc	a
	mov	(_u32Addr + 3),a
	mov	a,(_u32Addr + 2)
	rrc	a
	mov	(_u32Addr + 2),a
	mov	a,(_u32Addr + 1)
	rrc	a
	mov	(_u32Addr + 1),a
	mov	a,_u32Addr
	rrc	a
	mov	_u32Addr,a
;	callback.c:278: u16Addr=u32Addr;
	mov	_u16Addr,_u32Addr
	mov	(_u16Addr + 1),(_u32Addr + 1)
;	callback.c:279: u8ExtAddr=(u32Addr>>16);
;	callback.c:283: if(u8ExtAddr) {
	mov	a,(_u32Addr + 2)
	mov	_u8ExtAddr,a
	jz	00307$
;	callback.c:284: spi_send(0x4D);
	mov	dpl,#0x4d
	lcall	_spi_send
;	callback.c:285: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
;	callback.c:286: spi_send(u8ExtAddr);
	mov	dpl,_u8ExtAddr
	lcall	_spi_send
;	callback.c:287: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
;	callback.c:289: for(i=0; i<0x80; ++i) {
00307$:
	mov	r6,#0x00
	mov	r7,#0x00
00257$:
;	callback.c:290: if(i%2) {
	mov	a,r6
	jnb	acc.0,00169$
;	callback.c:292: spi_send(0x48);
	mov	dpl,#0x48
	push	ar7
	push	ar6
	lcall	_spi_send
;	callback.c:293: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:294: spi_send(i/2);
	mov	ar4,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
	sjmp	00170$
00169$:
;	callback.c:297: spi_send(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	lcall	_spi_send
;	callback.c:298: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:299: spi_send(i/2);
	mov	ar4,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
00170$:
;	callback.c:301: spi_send(u8ReceiveBuff[i+8]);
	mov	a,#0x08
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:289: for(i=0; i<0x80; ++i) {
	inc	r6
	cjne	r6,#0x00,00703$
	inc	r7
00703$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x00
	jnc	00704$
	ljmp	00257$
00704$:
;	callback.c:303: u8Pos=FindNotBlank(&u8ReceiveBuff[8], 0x80);
	mov	_FindNotBlank_PARM_2,#0x80
	mov	dptr,#(_u8ReceiveBuff + 0x0008)
	mov	b,#0x00
	lcall	_FindNotBlank
	mov	_u8Pos,dpl
;	callback.c:304: if(u8Pos!=0xFF) {
	mov	a,#0xff
	cjne	a,_u8Pos,00705$
	sjmp	00173$
00705$:
;	callback.c:305: u8NeedFind=0;
	mov	_u8NeedFind,#0x00
	ret
00173$:
;	callback.c:307: u8NeedFind=1;
	mov	_u8NeedFind,#0x01
	ret
;	callback.c:311: for(i=0; i<0x80; ++i) {
00311$:
	mov	r6,#0x00
	mov	r7,#0x00
00259$:
;	callback.c:312: if(i%2) {
	mov	a,r6
	jnb	acc.0,00176$
;	callback.c:314: spi_send(0x48);
	mov	dpl,#0x48
	push	ar7
	push	ar6
	lcall	_spi_send
;	callback.c:315: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:316: spi_send(i/2+0x40);
	mov	ar4,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	a,#0x40
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
	sjmp	00177$
00176$:
;	callback.c:319: spi_send(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	lcall	_spi_send
;	callback.c:320: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:321: spi_send(i/2+0x40);
	mov	ar4,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	a,#0x40
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
00177$:
;	callback.c:323: spi_send(u8ReceiveBuff[i+8]);
	mov	a,#0x08
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r5
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_spi_send
	pop	ar6
	pop	ar7
;	callback.c:311: for(i=0; i<0x80; ++i) {
	inc	r6
	cjne	r6,#0x00,00707$
	inc	r7
00707$:
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x00
	jnc	00708$
	ljmp	00259$
00708$:
;	callback.c:325: spi_send(0x4C);
	mov	dpl,#0x4c
	lcall	_spi_send
;	callback.c:326: spi_send(u16Addr>>8);
	mov	dpl,(_u16Addr + 1)
	lcall	_spi_send
;	callback.c:327: spi_send(u16Addr);
	mov	dpl,_u16Addr
	lcall	_spi_send
;	callback.c:328: spi_send(0x00);
	mov	dpl,#0x00
	lcall	_spi_send
;	callback.c:329: if(u8NeedFind) {
	mov	a,_u8NeedFind
	jz	00180$
;	callback.c:332: u8Pos=FindNotBlank(&u8ReceiveBuff[8], 0x80);
	mov	_FindNotBlank_PARM_2,#0x80
	mov	dptr,#(_u8ReceiveBuff + 0x0008)
	mov	b,#0x00
	lcall	_FindNotBlank
	mov	_u8Pos,dpl
;	callback.c:333: u8Pos+=0x80;
	mov	r7,_u8Pos
	mov	a,#0x80
	add	a,r7
	mov	_u8Pos,a
;	callback.c:334: u8NeedFind=0;
	mov	_u8NeedFind,#0x00
00180$:
;	callback.c:337: if(u8NeedFind==0) {
	mov	a,_u8NeedFind
	jz	00710$
	ljmp	00190$
00710$:
;	callback.c:339: for(i=0; i<10; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00261$:
;	callback.c:340: Delay_Ms(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_Delay_Ms
	pop	ar6
	pop	ar7
;	callback.c:342: if(u8Pos%2) {
	mov	r4,_u8Pos
	mov	r5,#0x00
	mov	a,r4
	jnb	acc.0,00186$
;	callback.c:344: if(ispReadAvrHi(u16Addr+u8Pos/2)!=0xFF) {
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	mov	a,r2
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r3
	addc	a,(_u16Addr + 1)
	mov	dph,a
	lcall	_ispReadAvrHi
	mov	r3,dpl
	pop	ar6
	pop	ar7
	cjne	r3,#0xff,00712$
	sjmp	00262$
00712$:
;	callback.c:345: break;
	ret
00186$:
;	callback.c:349: if(ispReadAvrLo(u16Addr+u8Pos/2)!=0xFF) {
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,_u16Addr
	mov	dpl,a
	mov	a,r5
	addc	a,(_u16Addr + 1)
	mov	dph,a
	lcall	_ispReadAvrLo
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0xff,00713$
	sjmp	00714$
00713$:
	ret
00714$:
;	callback.c:350: break;
00262$:
;	callback.c:339: for(i=0; i<10; ++i) {
	inc	r6
	cjne	r6,#0x00,00715$
	inc	r7
00715$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	jnc	00716$
	ljmp	00261$
00716$:
	ret
00190$:
;	callback.c:357: Delay_Ms(10);
	mov	dptr,#0x000a
;	callback.c:367: break;
	ljmp	_Delay_Ms
;	callback.c:369: case 0x04:
00204$:
;	callback.c:370: switch (u8ReceiveBuff[1]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00717$
	sjmp	00336$
00717$:
	cjne	r7,#0x90,00718$
	ljmp	00207$
00718$:
	cjne	r7,#0x91,00719$
	ljmp	00208$
00719$:
	cjne	r7,#0x92,00720$
	ljmp	00209$
00720$:
	cjne	r7,#0x93,00721$
	ljmp	00210$
00721$:
	cjne	r7,#0x94,00722$
	ljmp	00211$
00722$:
	cjne	r7,#0x95,00723$
	ljmp	_ICP_SetWire
00723$:
	cjne	r7,#0x96,00724$
	ljmp	_ICP_FlashWrite
00724$:
	cjne	r7,#0xc0,00725$
	ljmp	00214$
00725$:
	cjne	r7,#0xc1,00726$
	ljmp	_C2_Exit
00726$:
	cjne	r7,#0xc2,00727$
	ljmp	_C2_Reset
00727$:
	cjne	r7,#0xc3,00728$
	ljmp	00217$
00728$:
	cjne	r7,#0xc4,00729$
	ljmp	00218$
00729$:
	cjne	r7,#0xc5,00730$
	ljmp	00219$
00730$:
	cjne	r7,#0xc6,00731$
	ljmp	00223$
00731$:
	cjne	r7,#0xc9,00732$
	ljmp	00227$
00732$:
	cjne	r7,#0xca,00733$
	ljmp	00231$
00733$:
	ret
;	callback.c:372: for (i=0; i<12; ++i) {
00336$:
	mov	r6,#0x00
	mov	r7,#0x00
00263$:
;	callback.c:373: u8TransBuff[i] = serialDescriptor[i*2 + 2];
	mov	a,r6
	add	a,#_u8TransBuff
	mov	r4,a
	mov	a,r7
	addc	a,#(_u8TransBuff >> 8)
	mov	r5,a
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_serialDescriptor
	mov	dpl,a
	mov	a,r3
	addc	a,#(_serialDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	callback.c:372: for (i=0; i<12; ++i) {
	inc	r6
	cjne	r6,#0x00,00734$
	inc	r7
00734$:
	clr	c
	mov	a,r6
	subb	a,#0x0c
	mov	a,r7
	subb	a,#0x00
	jc	00263$
;	callback.c:375: u8TransBuff[12] = 0;
	mov	dptr,#(_u8TransBuff + 0x000c)
	clr	a
	movx	@dptr,a
;	callback.c:376: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:377: break;
	ret
;	callback.c:378: case 0x90:
00207$:
;	callback.c:379: ICP_Init();
	lcall	_ICP_Init
;	callback.c:380: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:381: break;
	ret
;	callback.c:382: case 0x91:
00208$:
;	callback.c:383: ICP_Exit();
	lcall	_ICP_Exit
;	callback.c:384: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:385: break;
	ret
;	callback.c:386: case 0x92:
00209$:
;	callback.c:387: ICP_Write();
	lcall	_ICP_Write
;	callback.c:388: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:389: break;
	ret
;	callback.c:390: case 0x93:
00210$:
;	callback.c:391: ICP_Read();
	lcall	_ICP_Read
;	callback.c:392: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:393: break;
	ret
;	callback.c:394: case 0x94:
00211$:
;	callback.c:395: ICP_Enter();
	lcall	_ICP_Enter
;	callback.c:396: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:397: break;
	ret
;	callback.c:398: case 0x95:
;	callback.c:399: ICP_SetWire();
;	callback.c:400: break;
;	callback.c:401: case 0x96:
;	callback.c:402: ICP_FlashWrite();
;	callback.c:403: break;
	ljmp	_ICP_SetWire
;	callback.c:407: case 0xC0:
00214$:
;	callback.c:408: u8Chip = CHIP_C2;
	mov	_u8Chip,#0x02
;	callback.c:409: C2_Init(u8ReceiveBuff[2]);
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	dpl,a
;	callback.c:410: break;
;	callback.c:411: case 0xC1:
;	callback.c:412: C2_Exit();
;	callback.c:413: break;
;	callback.c:414: case 0xC2:
;	callback.c:415: C2_Reset();
;	callback.c:416: break;
	ljmp	_C2_Init
;	callback.c:417: case 0xC3:
00217$:
;	callback.c:418: u8TransBuff[0] = C2_ReadAR();
	lcall	_C2_ReadAR
	mov	r7,dpl
	mov	dptr,#_u8TransBuff
	mov	a,r7
	movx	@dptr,a
;	callback.c:419: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:420: break;
	ret
;	callback.c:421: case 0xC4:
00218$:
;	callback.c:422: C2_WriteAR(u8ReceiveBuff[2]);
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	dpl,a
	lcall	_C2_WriteAR
;	callback.c:423: u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	callback.c:424: break;
	ret
;	callback.c:425: case 0xC5:
00219$:
;	callback.c:426: u8TransBuff[1] = C2_ReadDR(&u8Ret);
	mov	dptr,#_EP0_Out_CallBack_u8Ret_65536_36
	mov	b,#0x40
	lcall	_C2_ReadDR
	mov	r7,dpl
	mov	dptr,#(_u8TransBuff + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	callback.c:427: if (u8Ret) {
	mov	a,_EP0_Out_CallBack_u8Ret_65536_36
	jz	00221$
;	callback.c:428: u8TransBuff[0] = 1;
	mov	dptr,#_u8TransBuff
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00222$
00221$:
;	callback.c:430: u8TransBuff[0] = 0;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
00222$:
;	callback.c:432: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:433: break;
	ret
;	callback.c:434: case 0xC6:
00223$:
;	callback.c:435: if (C2_WriteDR(u8ReceiveBuff[2])) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	dpl,a
	lcall	_C2_WriteDR
	mov	a,dpl
	jz	00225$
;	callback.c:436: u8TransBuff[0] = 1;
	mov	dptr,#_u8TransBuff
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00226$
00225$:
;	callback.c:438: u8TransBuff[0] = 0;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
00226$:
;	callback.c:440: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:441: break;
	ret
;	callback.c:442: case 0xC9:
00227$:
;	callback.c:443: u32Tmp = u8ReceiveBuff[5];
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:444: u32Tmp <<= 24;
	mov	(_u32Addr + 3),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
	mov	(_u32Addr + 2),r6
;	callback.c:446: u32Tmp = u8ReceiveBuff[4];
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:447: u32Tmp <<= 16;
	mov	ar4,r6
	mov	ar5,r7
;	callback.c:448: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:449: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:450: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:451: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:452: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	callback.c:453: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:454: if (C2_ReadFlash(u32Addr, u8ReceiveBuff[6], &u8TransBuff[1])) {
	mov	dptr,#(_u8ReceiveBuff + 0x0006)
	movx	a,@dptr
	mov	_C2_ReadFlash_PARM_2,a
	mov	_C2_ReadFlash_PARM_3,#(_u8TransBuff + 0x0001)
	mov	(_C2_ReadFlash_PARM_3 + 1),#((_u8TransBuff + 0x0001) >> 8)
;	1-genFromRTrack replaced	mov	(_C2_ReadFlash_PARM_3 + 2),#0x00
	mov	(_C2_ReadFlash_PARM_3 + 2),r6
	mov	dpl,_u32Addr
	mov	dph,(_u32Addr + 1)
	mov	b,(_u32Addr + 2)
	mov	a,(_u32Addr + 3)
	lcall	_C2_ReadFlash
	mov	a,dpl
	jz	00229$
;	callback.c:455: u8TransBuff[0] = 1;
	mov	dptr,#_u8TransBuff
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00230$
00229$:
;	callback.c:457: u8TransBuff[0] = 0;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
00230$:
;	callback.c:459: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:460: break;
	ret
;	callback.c:461: case 0xCA:
00231$:
;	callback.c:462: u32Tmp = u8ReceiveBuff[5];
	mov	dptr,#(_u8ReceiveBuff + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:463: u32Tmp <<= 24;
	mov	(_u32Addr + 3),r7
;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
	mov	_u32Addr,r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
	mov	(_u32Addr + 1),r6
;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
	mov	(_u32Addr + 2),r6
;	callback.c:465: u32Tmp = u8ReceiveBuff[4];
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
;	callback.c:466: u32Tmp <<= 16;
	mov	ar4,r6
	mov	ar5,r7
;	callback.c:467: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:468: u32Tmp = u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
;	callback.c:469: u32Tmp <<= 8;
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
;	callback.c:470: u32Addr += u32Tmp;
	clr	a
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:471: u32Tmp = u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	callback.c:472: u32Addr += u32Tmp;
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_u32Addr
	mov	_u32Addr,a
	mov	a,r6
	addc	a,(_u32Addr + 1)
	mov	(_u32Addr + 1),a
	mov	a,r5
	addc	a,(_u32Addr + 2)
	mov	(_u32Addr + 2),a
	mov	a,r4
	addc	a,(_u32Addr + 3)
	mov	(_u32Addr + 3),a
;	callback.c:473: if (C2_WriteFlash(u32Addr, u8ReceiveBuff[6], &u8ReceiveBuff[7])) {
	mov	dptr,#(_u8ReceiveBuff + 0x0006)
	movx	a,@dptr
	mov	_C2_WriteFlash_PARM_2,a
	mov	_C2_WriteFlash_PARM_3,#(_u8ReceiveBuff + 0x0007)
	mov	(_C2_WriteFlash_PARM_3 + 1),#((_u8ReceiveBuff + 0x0007) >> 8)
;	1-genFromRTrack replaced	mov	(_C2_WriteFlash_PARM_3 + 2),#0x00
	mov	(_C2_WriteFlash_PARM_3 + 2),r6
	mov	dpl,_u32Addr
	mov	dph,(_u32Addr + 1)
	mov	b,(_u32Addr + 2)
	mov	a,(_u32Addr + 3)
	lcall	_C2_WriteFlash
	mov	a,dpl
	jz	00233$
;	callback.c:474: u8TransBuff[0] = 1;
	mov	dptr,#_u8TransBuff
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00234$
00233$:
;	callback.c:476: u8TransBuff[0] = 0;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
00234$:
;	callback.c:478: u8HidNum = 64;
	mov	_u8HidNum,#0x40
;	callback.c:483: }
00265$:
;	callback.c:484: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
