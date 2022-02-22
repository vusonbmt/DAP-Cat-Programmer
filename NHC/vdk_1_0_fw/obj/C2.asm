;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module C2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _C2_Delay
	.globl ___delay_ms
	.globl ___delay_us
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
	.globl _C2_ReadFlash_PARM_3
	.globl _C2_ReadFlash_PARM_2
	.globl _C2_WriteFlash_PARM_3
	.globl _C2_WriteFlash_PARM_2
	.globl _delay
	.globl _C2_Exit
	.globl _C2_Init
	.globl _C2_Send
	.globl _C2_Read
	.globl _C2_Reset
	.globl _C2_ReadDR
	.globl _C2_WriteAR
	.globl _C2_ReadAR
	.globl _C2_WriteDR
	.globl _C2_WriteFlash
	.globl _C2_ReadFlash
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
_P17	=	0x0097
_P15	=	0x0095
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_u8FPD:
	.ds 1
_C2_WriteFlash_PARM_2:
	.ds 1
_C2_WriteFlash_PARM_3:
	.ds 3
_C2_WriteFlash_u8Ret_65536_52:
	.ds 1
_C2_ReadFlash_PARM_2:
	.ds 1
_C2_ReadFlash_PARM_3:
	.ds 3
_C2_ReadFlash_u8Ret_65536_72:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'C2_Delay'
;------------------------------------------------------------
;	C2.c:14: void C2_Delay(void)
;	-----------------------------------------
;	 function C2_Delay
;	-----------------------------------------
_C2_Delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C2.c:16: __asm nop __endasm;
	nop	
;	C2.c:17: __asm nop __endasm;
	nop	
;	C2.c:18: __asm nop __endasm;
	nop	
;	C2.c:19: __asm nop __endasm;
	nop	
;	C2.c:20: __asm nop __endasm;
	nop	
;	C2.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;uDelay                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	C2.c:25: void delay(unsigned long uDelay) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	C2.c:26: __delay_us(uDelay);
;	C2.c:45: }
	ljmp	___delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_Exit'
;------------------------------------------------------------
;	C2.c:61: void C2_Exit(void) {
;	-----------------------------------------
;	 function C2_Exit
;	-----------------------------------------
_C2_Exit:
;	C2.c:62: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:63: C2K_DIS();
	orl	_P1,#0x80
	orl	_P1_MOD_OC,#0x80
	orl	_P1_DIR_PU,#0x80
;	C2.c:64: C2D_1;
;	assignBit
	setb	_P15
;	C2.c:65: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_Init'
;------------------------------------------------------------
;u8Address                 Allocated to registers r7 
;------------------------------------------------------------
;	C2.c:68: void C2_Init(uint8_t u8Address) {
;	-----------------------------------------
;	 function C2_Init
;	-----------------------------------------
_C2_Init:
	mov	r7,dpl
;	C2.c:69: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:70: C2K_EN();
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	C2.c:71: C2D_1;
;	assignBit
	setb	_P15
;	C2.c:72: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:73: u8FPD = u8Address;
	mov	_u8FPD,r7
;	C2.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_Send'
;------------------------------------------------------------
;u8Data                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	C2.c:76: void C2_Send(uint8_t u8Data) {
;	-----------------------------------------
;	 function C2_Send
;	-----------------------------------------
_C2_Send:
	mov	r7,dpl
;	C2.c:78: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:79: for(i=0; i<8; ++i) {
	mov	r6,#0x00
00105$:
;	C2.c:80: if(u8Data&0x01) {
	mov	a,r7
	jnb	acc.0,00102$
;	C2.c:81: C2D_1;
;	assignBit
	setb	_P15
	sjmp	00103$
00102$:
;	C2.c:83: C2D_0;
;	assignBit
	clr	_P15
00103$:
;	C2.c:86: C2_Delay();
	push	ar7
	push	ar6
	lcall	_C2_Delay
	pop	ar6
	pop	ar7
;	C2.c:87: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:89: u8Data>>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	C2.c:90: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:79: for(i=0; i<8; ++i) {
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00105$
;	C2.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_Read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;ret                       Allocated to registers r7 
;------------------------------------------------------------
;	C2.c:95: uint8_t C2_Read(void) {
;	-----------------------------------------
;	 function C2_Read
;	-----------------------------------------
_C2_Read:
;	C2.c:97: uint8_t ret=0;
	mov	r7,#0x00
;	C2.c:98: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:99: for(i=0; i<8; ++i) {
	mov	r6,#0x00
00104$:
;	C2.c:100: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:102: C2_Delay();
	push	ar7
	push	ar6
	lcall	_C2_Delay
	pop	ar6
	pop	ar7
;	C2.c:103: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:105: ret>>=1;
;	C2.c:106: if(C2D_IN_VAL) {
;	C2.c:107: ret|=0x80;
	mov	a,r7
	mov	c,_P15
	rrc	a
	mov	r7,a
;	C2.c:99: for(i=0; i<8; ++i) {
	inc	r6
	cjne	r6,#0x08,00122$
00122$:
	jc	00104$
;	C2.c:110: return ret;
	mov	dpl,r7
;	C2.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_Reset'
;------------------------------------------------------------
;	C2.c:113: void C2_Reset(void) {
;	-----------------------------------------
;	 function C2_Reset
;	-----------------------------------------
_C2_Reset:
;	C2.c:114: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:115: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:116: __delay_ms(100);
	mov	dptr,#0x0064
	lcall	___delay_ms
;	C2.c:117: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_ReadDR'
;------------------------------------------------------------
;pu8Ret                    Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r4 
;i                         Allocated to registers r2 r3 
;u8TimeOut                 Allocated to registers r4 
;------------------------------------------------------------
;	C2.c:121: uint8_t C2_ReadDR(uint8_t *pu8Ret) {
;	-----------------------------------------
;	 function C2_ReadDR
;	-----------------------------------------
_C2_ReadDR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C2.c:126: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:127: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:129: C2_Delay();
	push	ar7
	push	ar6
	push	ar5
	lcall	_C2_Delay
;	C2.c:130: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:131: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:133: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:135: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:137: C2D_0;
;	assignBit
	clr	_P15
;	C2.c:138: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:139: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:141: C2_Delay();
	lcall	_C2_Delay
;	C2.c:142: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:143: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:145: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:147: C2_Delay();
	lcall	_C2_Delay
;	C2.c:148: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:149: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:154: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:156: C2_Delay();
	lcall	_C2_Delay
;	C2.c:157: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:158: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:160: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:162: C2_Delay();
	lcall	_C2_Delay
;	C2.c:163: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:164: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:167: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:169: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:171: u8TimeOut = 1;
	mov	r4,#0x01
;	C2.c:172: for (i = 0; i < 50000; ++i) {
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
;	C2.c:173: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:175: C2_Delay();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_C2_Delay
;	C2.c:176: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:177: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:178: if(C2D_IN_VAL) {
	jnb	_P15,00107$
;	C2.c:179: u8TimeOut = 0;
	mov	r4,#0x00
;	C2.c:180: break;
	sjmp	00103$
00107$:
;	C2.c:172: for (i = 0; i < 50000; ++i) {
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
	clr	c
	mov	a,r2
	subb	a,#0x50
	mov	a,r3
	subb	a,#0xc3
	jc	00106$
00103$:
;	C2.c:185: if (u8TimeOut) {
	mov	a,r4
	jz	00105$
;	C2.c:186: *pu8Ret = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	C2.c:187: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	C2.c:191: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
;	C2.c:193: ret=C2_Read();
	lcall	_C2_Read
	mov	r4,dpl
;	C2.c:196: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	push	ar4
	lcall	_delay
;	C2.c:198: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:200: C2_Delay();
	lcall	_C2_Delay
;	C2.c:201: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:202: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:203: *pu8Ret = 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C2.c:204: return ret;
	mov	dpl,r4
;	C2.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_WriteAR'
;------------------------------------------------------------
;u8Data                    Allocated to registers r7 
;------------------------------------------------------------
;	C2.c:207: void C2_WriteAR(uint8_t u8Data) {
;	-----------------------------------------
;	 function C2_WriteAR
;	-----------------------------------------
_C2_WriteAR:
	mov	r7,dpl
;	C2.c:208: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:209: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:210: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay
;	C2.c:211: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:212: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:214: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:216: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:218: C2D_1;
;	assignBit
	setb	_P15
;	C2.c:219: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:220: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:221: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:222: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:223: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:225: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:226: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:227: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:228: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:231: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	C2.c:233: C2_Send(u8Data);
	mov	dpl,r7
	lcall	_C2_Send
;	C2.c:236: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:238: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:239: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:240: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:241: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:242: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:243: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_ReadAR'
;------------------------------------------------------------
;ret                       Allocated to registers r7 
;------------------------------------------------------------
;	C2.c:245: uint8_t C2_ReadAR(void) {
;	-----------------------------------------
;	 function C2_ReadAR
;	-----------------------------------------
_C2_ReadAR:
;	C2.c:247: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:248: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:249: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:250: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:251: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:253: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:255: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:257: C2D_0;
;	assignBit
	clr	_P15
;	C2.c:258: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:259: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:260: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:261: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:262: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:264: C2D_1;
;	assignBit
	setb	_P15
;	C2.c:265: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:266: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:267: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:268: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:271: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:273: ret=C2_Read();
	lcall	_C2_Read
	mov	r7,dpl
;	C2.c:276: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay
;	C2.c:278: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:279: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:280: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:281: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	C2.c:282: return ret;
	mov	dpl,r7
;	C2.c:283: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_WriteDR'
;------------------------------------------------------------
;u8Data                    Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;ret                       Allocated to registers r7 
;------------------------------------------------------------
;	C2.c:285: uint8_t C2_WriteDR(uint8_t u8Data) {
;	-----------------------------------------
;	 function C2_WriteDR
;	-----------------------------------------
_C2_WriteDR:
	mov	r7,dpl
;	C2.c:289: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:290: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:291: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay
;	C2.c:292: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:293: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:295: C2D_EN();
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	C2.c:297: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:299: C2D_1;
;	assignBit
	setb	_P15
;	C2.c:300: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:301: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:302: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:303: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:304: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:306: C2D_0;
;	assignBit
	clr	_P15
;	C2.c:307: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:308: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:309: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:310: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:313: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:315: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:316: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:317: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:318: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:320: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:321: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:322: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:323: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:327: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	C2.c:329: C2_Send(u8Data);
	mov	dpl,r7
	lcall	_C2_Send
;	C2.c:331: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:334: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:337: ret = 0;
	mov	r7,#0x00
;	C2.c:338: for (i = 0; i < 50000; ++i) {
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
;	C2.c:339: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:340: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
;	C2.c:341: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:342: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:343: if(C2D_IN_VAL) {
	jnb	_P15,00105$
;	C2.c:344: ret = 1;
	mov	r7,#0x01
;	C2.c:345: break;
	sjmp	00103$
00105$:
;	C2.c:338: for (i = 0; i < 50000; ++i) {
	inc	r5
	cjne	r5,#0x00,00117$
	inc	r6
00117$:
	clr	c
	mov	a,r5
	subb	a,#0x50
	mov	a,r6
	subb	a,#0xc3
	jc	00104$
00103$:
;	C2.c:351: delay(6);
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay
;	C2.c:353: C2K_0;
;	assignBit
	clr	_P17
;	C2.c:354: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C2.c:355: C2K_1;
;	assignBit
	setb	_P17
;	C2.c:356: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	C2.c:357: C2D_DIS();
	orl	_P1,#0x20
	orl	_P1_MOD_OC,#0x20
	orl	_P1_DIR_PU,#0x20
;	C2.c:358: return ret;
	mov	dpl,r7
;	C2.c:359: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_WriteFlash'
;------------------------------------------------------------
;u8Len                     Allocated with name '_C2_WriteFlash_PARM_2'
;pu8Data                   Allocated with name '_C2_WriteFlash_PARM_3'
;u32Address                Allocated to registers r4 r5 r6 r7 
;u8Tmp                     Allocated to registers r7 
;i                         Allocated to registers r7 
;u8Ret                     Allocated with name '_C2_WriteFlash_u8Ret_65536_52'
;------------------------------------------------------------
;	C2.c:361: uint8_t C2_WriteFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data)
;	-----------------------------------------
;	 function C2_WriteFlash
;	-----------------------------------------
_C2_WriteFlash:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C2.c:366: C2_WriteAR(u8FPD);
	mov	dpl,_u8FPD
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_WriteAR
;	C2.c:367: C2_WriteDR(0x07);
	mov	dpl,#0x07
	lcall	_C2_WriteDR
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:369: while(1) {
00104$:
;	C2.c:370: if((C2_ReadAR()&0x02)==0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jb	acc.1,00104$
;	C2.c:375: while(1) {
00109$:
;	C2.c:377: if((C2_ReadAR()&0x01)) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnb	acc.0,00109$
;	C2.c:382: u8Tmp=C2_ReadDR(&u8Ret);
	mov	dptr,#_C2_WriteFlash_u8Ret_65536_52
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadDR
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:383: if (!u8Ret) {
	mov	a,_C2_WriteFlash_u8Ret_65536_52
;	C2.c:384: return 0;
	jnz	00112$
	mov	dpl,a
	ret
00112$:
;	C2.c:386: if(u8Tmp!=0x0D) {
	cjne	r3,#0x0d,00234$
	sjmp	00114$
00234$:
;	C2.c:387: return 0;
	mov	dpl,#0x00
	ret
00114$:
;	C2.c:391: C2_WriteDR((u32Address >> 8));
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_WriteDR
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:394: while(1) {
00118$:
;	C2.c:395: if((C2_ReadAR()&0x02)==0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jb	acc.1,00118$
;	C2.c:400: C2_WriteDR(u32Address);
	mov	dpl,r4
	lcall	_C2_WriteDR
;	C2.c:403: while(1) {
00123$:
;	C2.c:404: if((C2_ReadAR()&0x02)==0) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jb	acc.1,00123$
;	C2.c:410: C2_WriteDR(u8Len);
	mov	dpl,_C2_WriteFlash_PARM_2
	lcall	_C2_WriteDR
;	C2.c:413: while(1) {
00128$:
;	C2.c:414: if((C2_ReadAR()&0x02)==0) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jb	acc.1,00128$
;	C2.c:425: for(i=0; i<u8Len; ++i) {
	mov	r7,#0x00
00141$:
	clr	c
	mov	a,r7
	subb	a,_C2_WriteFlash_PARM_2
	jnc	00134$
;	C2.c:426: C2_WriteDR(pu8Data[i]);
	mov	a,r7
	add	a,_C2_WriteFlash_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_C2_WriteFlash_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_C2_WriteFlash_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_C2_WriteDR
	pop	ar7
;	C2.c:425: for(i=0; i<u8Len; ++i) {
	inc	r7
;	C2.c:433: while(1) {
	sjmp	00141$
00134$:
;	C2.c:435: if((C2_ReadAR()&0x01)) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jnb	acc.0,00134$
;	C2.c:443: u8Tmp=C2_ReadDR(&u8Ret);
	mov	dptr,#_C2_WriteFlash_u8Ret_65536_52
	mov	b,#0x40
	lcall	_C2_ReadDR
	mov	r7,dpl
;	C2.c:445: if (!u8Ret) {
	mov	a,_C2_WriteFlash_u8Ret_65536_52
;	C2.c:446: return 0;
	jnz	00137$
	mov	dpl,a
	ret
00137$:
;	C2.c:449: if(u8Tmp!=0x0D) {
	cjne	r7,#0x0d,00241$
	sjmp	00139$
00241$:
;	C2.c:450: return 0;
	mov	dpl,#0x00
	ret
00139$:
;	C2.c:452: return 1;
	mov	dpl,#0x01
;	C2.c:453: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C2_ReadFlash'
;------------------------------------------------------------
;u8Len                     Allocated with name '_C2_ReadFlash_PARM_2'
;pu8Data                   Allocated with name '_C2_ReadFlash_PARM_3'
;u32Address                Allocated to registers r4 r5 r6 r7 
;u8Tmp                     Allocated to registers r7 
;i                         Allocated to registers r7 
;u8Ret                     Allocated with name '_C2_ReadFlash_u8Ret_65536_72'
;------------------------------------------------------------
;	C2.c:454: uint8_t C2_ReadFlash(uint32_t u32Address, uint8_t u8Len, uint8_t *pu8Data)
;	-----------------------------------------
;	 function C2_ReadFlash
;	-----------------------------------------
_C2_ReadFlash:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C2.c:460: C2_WriteAR(u8FPD);
	mov	dpl,_u8FPD
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_WriteAR
;	C2.c:462: C2_WriteDR(0x06);
	mov	dpl,#0x06
	lcall	_C2_WriteDR
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:463: while(1) {
00104$:
;	C2.c:464: if((C2_ReadAR()&0x02)==0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jb	acc.1,00104$
;	C2.c:469: while(1) {
00109$:
;	C2.c:470: if((C2_ReadAR()&0x01)) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnb	acc.0,00109$
;	C2.c:474: u8Tmp = C2_ReadDR(&u8Ret);
	mov	dptr,#_C2_ReadFlash_u8Ret_65536_72
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadDR
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:476: if (!u8Ret) {
	mov	a,_C2_ReadFlash_u8Ret_65536_72
;	C2.c:477: return 0;
	jnz	00112$
	mov	dpl,a
	ret
00112$:
;	C2.c:479: if(u8Tmp!=0x0D) {
	cjne	r3,#0x0d,00245$
	sjmp	00114$
00245$:
;	C2.c:480: return 0;
	mov	dpl,#0x00
	ret
00114$:
;	C2.c:483: C2_WriteDR((u32Address >> 8));
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_WriteDR
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C2.c:485: while(1) {
00118$:
;	C2.c:486: if((C2_ReadAR()&0x02)==0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jb	acc.1,00118$
;	C2.c:492: C2_WriteDR((u32Address));
	mov	dpl,r4
	lcall	_C2_WriteDR
;	C2.c:495: while(1) {
00123$:
;	C2.c:496: if((C2_ReadAR()&0x02)==0) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jb	acc.1,00123$
;	C2.c:502: C2_WriteDR(u8Len);
	mov	dpl,_C2_ReadFlash_PARM_2
	lcall	_C2_WriteDR
;	C2.c:504: while(1) {
00128$:
;	C2.c:505: if((C2_ReadAR()&0x02)==0) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jb	acc.1,00128$
;	C2.c:510: while(1) {
00133$:
;	C2.c:512: if((C2_ReadAR()&0x01)) {
	lcall	_C2_ReadAR
	mov	a,dpl
	jnb	acc.0,00133$
;	C2.c:517: u8Tmp = C2_ReadDR(&u8Ret);
	mov	dptr,#_C2_ReadFlash_u8Ret_65536_72
	mov	b,#0x40
	lcall	_C2_ReadDR
	mov	r7,dpl
;	C2.c:518: if (!u8Ret) {
	mov	a,_C2_ReadFlash_u8Ret_65536_72
;	C2.c:519: return 0;
	jnz	00136$
	mov	dpl,a
	ret
00136$:
;	C2.c:521: if(u8Tmp!=0x0D) {
	cjne	r7,#0x0d,00251$
	sjmp	00169$
00251$:
;	C2.c:522: return 0;
	mov	dpl,#0x00
;	C2.c:525: for(i=0; i<u8Len; ++i) {
	ret
00169$:
	mov	r7,#0x00
00148$:
	clr	c
	mov	a,r7
	subb	a,_C2_ReadFlash_PARM_2
	jnc	00146$
;	C2.c:526: while(1) {
00142$:
;	C2.c:528: if((C2_ReadAR()&0x01)) {
	push	ar7
	lcall	_C2_ReadAR
	mov	a,dpl
	pop	ar7
	jnb	acc.0,00142$
;	C2.c:532: pu8Data[i]=C2_ReadDR(&u8Ret);
	mov	a,r7
	add	a,_C2_ReadFlash_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_C2_ReadFlash_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_C2_ReadFlash_PARM_3 + 2)
	mov	dptr,#_C2_ReadFlash_u8Ret_65536_72
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_C2_ReadDR
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	C2.c:533: if (!u8Ret) {
	mov	a,_C2_ReadFlash_u8Ret_65536_72
;	C2.c:534: return 0;
	jnz	00149$
	mov	dpl,a
	ret
00149$:
;	C2.c:525: for(i=0; i<u8Len; ++i) {
	inc	r7
	sjmp	00148$
00146$:
;	C2.c:538: return 1;
	mov	dpl,#0x01
;	C2.c:539: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
