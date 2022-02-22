;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module ICP_N76E003
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___delay_us
	.globl ___delay_ms
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
	.globl _ICP_Send
	.globl _ICP_Recv
	.globl _ICP_Init
	.globl _ICP_Enter
	.globl _ICP_Write
	.globl _ICP_Read
	.globl _ICP_SetWire
	.globl _ICP_Exit
	.globl _ICP_FlashWrite
	.globl _ICP_FlashRead
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
_NHC_SS_PIN	=	0x00b2
_NHC_MOSI	=	0x0095
_NHC_MOSI_R	=	0x0095
_NHC_SCK	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ICP_Read_ack_65536_35:
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
;Allocation info for local variables in function 'ICP_Send'
;------------------------------------------------------------
;u8Data                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	ICP_N76E003.c:17: void ICP_Send(uint8_t u8Data) {
;	-----------------------------------------
;	 function ICP_Send
;	-----------------------------------------
_ICP_Send:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	ICP_N76E003.c:21: P1_DIR_PU |= (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	ICP_N76E003.c:22: for(i=0; i<8; ++i) {
	mov	r6,#0x00
00105$:
;	ICP_N76E003.c:23: if(u8Data&0x80) {
	mov	a,r7
	jnb	acc.7,00102$
;	ICP_N76E003.c:24: NHC_MOSI=1;
;	assignBit
	setb	_NHC_MOSI
	sjmp	00103$
00102$:
;	ICP_N76E003.c:26: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
00103$:
;	ICP_N76E003.c:29: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	___delay_us
;	ICP_N76E003.c:30: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:32: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:33: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:34: u8Data<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	ICP_N76E003.c:22: for(i=0; i<8; ++i) {
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00105$
;	ICP_N76E003.c:36: __delay_us(1);
	mov	dptr,#0x0001
;	ICP_N76E003.c:37: }
	ljmp	___delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Recv'
;------------------------------------------------------------
;u8Ack                     Allocated to registers r7 
;i                         Allocated to registers r5 
;ret                       Allocated to registers r6 
;------------------------------------------------------------
;	ICP_N76E003.c:38: uint8_t ICP_Recv(uint8_t u8Ack) {
;	-----------------------------------------
;	 function ICP_Recv
;	-----------------------------------------
_ICP_Recv:
	mov	r7,dpl
;	ICP_N76E003.c:39: uint8_t i, ret=0;
	mov	r6,#0x00
;	ICP_N76E003.c:41: NHC_MOSI = 1;
;	assignBit
	setb	_NHC_MOSI
;	ICP_N76E003.c:42: P1_DIR_PU &= ~(1 << 5);
	anl	_P1_DIR_PU,#0xdf
;	ICP_N76E003.c:44: for(i=0; i<8; ++i) {
	mov	r5,#0x00
00107$:
;	ICP_N76E003.c:45: ret<<=1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
;	ICP_N76E003.c:46: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:48: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	___delay_us
	pop	ar5
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:49: if(NHC_MOSI_R) {
	jnb	_NHC_MOSI_R,00102$
;	ICP_N76E003.c:50: ret|=0x01;
	orl	ar6,#0x01
00102$:
;	ICP_N76E003.c:52: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:54: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	___delay_us
	pop	ar5
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:44: for(i=0; i<8; ++i) {
	inc	r5
	cjne	r5,#0x08,00129$
00129$:
	jc	00107$
;	ICP_N76E003.c:58: P1_DIR_PU |= (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	ICP_N76E003.c:59: if(u8Ack) {
	mov	a,r7
	jz	00105$
;	ICP_N76E003.c:60: NHC_MOSI=1;
;	assignBit
	setb	_NHC_MOSI
	sjmp	00106$
00105$:
;	ICP_N76E003.c:62: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
00106$:
;	ICP_N76E003.c:67: __delay_us(2);
	mov	dptr,#0x0002
	push	ar6
	lcall	___delay_us
;	ICP_N76E003.c:70: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:72: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
;	ICP_N76E003.c:73: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:75: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
	pop	ar6
;	ICP_N76E003.c:76: return ret;
	mov	dpl,r6
;	ICP_N76E003.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Init'
;------------------------------------------------------------
;	ICP_N76E003.c:80: void ICP_Init(void) {
;	-----------------------------------------
;	 function ICP_Init
;	-----------------------------------------
_ICP_Init:
;	ICP_N76E003.c:83: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:84: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
;	ICP_N76E003.c:85: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:90: P1_DIR_PU |= (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	ICP_N76E003.c:94: P1_DIR_PU |= (1 << 7);
	orl	_P1_DIR_PU,#0x80
;	ICP_N76E003.c:96: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:100: P3_DIR_PU |= (1 << 2);
	orl	_P3_DIR_PU,#0x04
;	ICP_N76E003.c:102: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:104: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:105: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:107: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:108: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:110: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:111: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:113: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:114: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:116: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:117: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:119: __delay_ms(30);
	mov	dptr,#0x001e
	lcall	___delay_ms
;	ICP_N76E003.c:120: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:122: __delay_ms(40);
	mov	dptr,#0x0028
	lcall	___delay_ms
;	ICP_N76E003.c:123: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:125: __delay_ms(30);
	mov	dptr,#0x001e
	lcall	___delay_ms
;	ICP_N76E003.c:126: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:128: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:129: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:131: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:132: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:134: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:135: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:137: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:138: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:140: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:141: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:143: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:144: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:146: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:149: ICP_Send(0x5A);
	mov	dpl,#0x5a
	lcall	_ICP_Send
;	ICP_N76E003.c:150: ICP_Send(0xA5);
	mov	dpl,#0xa5
	lcall	_ICP_Send
;	ICP_N76E003.c:151: ICP_Send(0x03);
	mov	dpl,#0x03
	lcall	_ICP_Send
;	ICP_N76E003.c:153: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:154: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:155: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:156: ICP_Send(0x0B);
	mov	dpl,#0x0b
	lcall	_ICP_Send
;	ICP_N76E003.c:157: u8TransBuff[0]=ICP_Recv(0x01);
	mov	dpl,#0x01
	lcall	_ICP_Recv
	mov	r7,dpl
	mov	dptr,#_u8TransBuff
	mov	a,r7
	movx	@dptr,a
;	ICP_N76E003.c:159: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:160: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:161: ICP_Send(0x0C);
	mov	dpl,#0x0c
	lcall	_ICP_Send
;	ICP_N76E003.c:162: u8TransBuff[1]=ICP_Recv(0x01);
	mov	dpl,#0x01
	lcall	_ICP_Recv
	mov	r7,dpl
	mov	dptr,#(_u8TransBuff + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	ICP_N76E003.c:164: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:165: ICP_Send(0x00);
	mov	dpl,#0x00
	lcall	_ICP_Send
;	ICP_N76E003.c:166: ICP_Send(0x4C);
	mov	dpl,#0x4c
	lcall	_ICP_Send
;	ICP_N76E003.c:167: u8TransBuff[2]=ICP_Recv(0x01);
	mov	dpl,#0x01
	lcall	_ICP_Recv
	mov	r7,dpl
	mov	dptr,#(_u8TransBuff + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	ICP_N76E003.c:173: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Enter'
;------------------------------------------------------------
;	ICP_N76E003.c:175: void ICP_Enter(void) {
;	-----------------------------------------
;	 function ICP_Enter
;	-----------------------------------------
_ICP_Enter:
;	ICP_N76E003.c:178: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:179: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
;	ICP_N76E003.c:180: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:185: P1_DIR_PU |= (1 << 5);
	orl	_P1_DIR_PU,#0x20
;	ICP_N76E003.c:189: P1_DIR_PU |= (1 << 7);
	orl	_P1_DIR_PU,#0x80
;	ICP_N76E003.c:191: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:195: P3_DIR_PU |= (1 << 2);
	orl	_P3_DIR_PU,#0x04
;	ICP_N76E003.c:197: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:199: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:200: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:202: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:203: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:205: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:206: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:208: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:209: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:211: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:212: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:214: __delay_ms(30);
	mov	dptr,#0x001e
	lcall	___delay_ms
;	ICP_N76E003.c:215: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:217: __delay_ms(40);
	mov	dptr,#0x0028
	lcall	___delay_ms
;	ICP_N76E003.c:218: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:220: __delay_ms(30);
	mov	dptr,#0x001e
	lcall	___delay_ms
;	ICP_N76E003.c:221: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:223: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:224: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:226: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:227: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:229: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:230: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:232: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:233: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:235: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:236: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:238: __delay_ms(20);
	mov	dptr,#0x0014
	lcall	___delay_ms
;	ICP_N76E003.c:239: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:241: __delay_ms(10);
	mov	dptr,#0x000a
	lcall	___delay_ms
;	ICP_N76E003.c:244: ICP_Send(0x5A);
	mov	dpl,#0x5a
	lcall	_ICP_Send
;	ICP_N76E003.c:245: ICP_Send(0xA5);
	mov	dpl,#0xa5
	lcall	_ICP_Send
;	ICP_N76E003.c:246: ICP_Send(0x03);
	mov	dpl,#0x03
	lcall	_ICP_Send
;	ICP_N76E003.c:248: __delay_ms(10);
	mov	dptr,#0x000a
;	ICP_N76E003.c:269: }
	ljmp	___delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Write'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	ICP_N76E003.c:271: void ICP_Write(void) {
;	-----------------------------------------
;	 function ICP_Write
;	-----------------------------------------
_ICP_Write:
;	ICP_N76E003.c:273: n=u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	ICP_N76E003.c:274: for(i=0; i<n; ++i) {
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00105$
;	ICP_N76E003.c:275: ICP_Send(u8ReceiveBuff[3+i]);
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
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
	lcall	_ICP_Send
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:274: for(i=0; i<n; ++i) {
	inc	r6
	sjmp	00103$
00105$:
;	ICP_N76E003.c:277: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Read'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;n                         Allocated to registers r7 
;ack                       Allocated with name '_ICP_Read_ack_65536_35'
;------------------------------------------------------------
;	ICP_N76E003.c:279: void ICP_Read(void) {
;	-----------------------------------------
;	 function ICP_Read
;	-----------------------------------------
_ICP_Read:
;	ICP_N76E003.c:281: n=u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	ICP_N76E003.c:282: ack=u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	_ICP_Read_ack_65536_35,a
;	ICP_N76E003.c:284: for(i=0; i<n-1; ++i) {
	mov	r5,#0x00
00103$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,r3
	add	a,#0xff
	mov	r1,a
	mov	a,r4
	addc	a,#0xff
	mov	r2,a
	mov	ar0,r5
	mov	r6,#0x00
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r6
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	ICP_N76E003.c:285: u8TransBuff[i]=ICP_Recv(0);
	mov	a,r5
	add	a,#_u8TransBuff
	mov	r2,a
	clr	a
	addc	a,#(_u8TransBuff >> 8)
	mov	r6,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	_ICP_Recv
	mov	r1,dpl
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	a,r1
	movx	@dptr,a
;	ICP_N76E003.c:284: for(i=0; i<n-1; ++i) {
	inc	r5
	sjmp	00103$
00101$:
;	ICP_N76E003.c:288: u8TransBuff[n-1]=ICP_Recv(ack);
	dec	r3
	cjne	r3,#0xff,00117$
	dec	r4
00117$:
	mov	a,r3
	add	a,#_u8TransBuff
	mov	r3,a
	mov	a,r4
	addc	a,#(_u8TransBuff >> 8)
	mov	r4,a
	mov	dpl,_ICP_Read_ack_65536_35
	push	ar4
	push	ar3
	lcall	_ICP_Recv
	mov	r7,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	ICP_N76E003.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_SetWire'
;------------------------------------------------------------
;	ICP_N76E003.c:293: void ICP_SetWire(void) {
;	-----------------------------------------
;	 function ICP_SetWire
;	-----------------------------------------
_ICP_SetWire:
;	ICP_N76E003.c:294: if(u8ReceiveBuff[2]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	jz	00102$
;	ICP_N76E003.c:295: NHC_MOSI=1;
;	assignBit
	setb	_NHC_MOSI
	sjmp	00103$
00102$:
;	ICP_N76E003.c:297: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
00103$:
;	ICP_N76E003.c:299: if(u8ReceiveBuff[3]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	jz	00105$
;	ICP_N76E003.c:300: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
	sjmp	00106$
00105$:
;	ICP_N76E003.c:302: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
00106$:
;	ICP_N76E003.c:304: if(u8ReceiveBuff[4]) {
	mov	dptr,#(_u8ReceiveBuff + 0x0004)
	movx	a,@dptr
	jz	00108$
;	ICP_N76E003.c:305: NHC_SS_PIN=1;
;	assignBit
	setb	_NHC_SS_PIN
	ret
00108$:
;	ICP_N76E003.c:307: NHC_SS_PIN=0;
;	assignBit
	clr	_NHC_SS_PIN
;	ICP_N76E003.c:309: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_Exit'
;------------------------------------------------------------
;	ICP_N76E003.c:311: void ICP_Exit(void) {
;	-----------------------------------------
;	 function ICP_Exit
;	-----------------------------------------
_ICP_Exit:
;	ICP_N76E003.c:315: P1_DIR_PU &= ~(1 << 5);
	anl	_P1_DIR_PU,#0xdf
;	ICP_N76E003.c:316: NHC_MOSI = 1;
;	assignBit
	setb	_NHC_MOSI
;	ICP_N76E003.c:320: P1_DIR_PU &= ~(1 << 7);
	anl	_P1_DIR_PU,#0x7f
;	ICP_N76E003.c:321: NHC_SCK = 1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:325: P3_DIR_PU &= ~(1 << 2);
	anl	_P3_DIR_PU,#0xfb
;	ICP_N76E003.c:326: NHC_SS_PIN = 1;
;	assignBit
	setb	_NHC_SS_PIN
;	ICP_N76E003.c:327: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_FlashWrite'
;------------------------------------------------------------
;u8Time                    Allocated to registers r6 
;n                         Allocated to registers r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	ICP_N76E003.c:329: void ICP_FlashWrite(void) {
;	-----------------------------------------
;	 function ICP_FlashWrite
;	-----------------------------------------
_ICP_FlashWrite:
;	ICP_N76E003.c:331: n=u8ReceiveBuff[2];
	mov	dptr,#(_u8ReceiveBuff + 0x0002)
	movx	a,@dptr
	mov	r7,a
;	ICP_N76E003.c:332: u8Time=u8ReceiveBuff[3];
	mov	dptr,#(_u8ReceiveBuff + 0x0003)
	movx	a,@dptr
	mov	r6,a
;	ICP_N76E003.c:333: for(i=0; i<n-1; ++i) {
	mov	r5,#0x00
00108$:
	mov	ar3,r7
	mov	r4,#0x00
	dec	r3
	cjne	r3,#0xff,00142$
	dec	r4
00142$:
	mov	ar1,r5
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	ICP_N76E003.c:334: ICP_Send(u8ReceiveBuff[i+4]);
	mov	a,#0x04
	add	a,r1
	mov	r3,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	a,r3
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r4
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_ICP_Send
	pop	ar5
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:335: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
;	ICP_N76E003.c:337: for (j=0; j<u8Time; ++j)
	mov	r4,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,r6
	jnc	00101$
;	ICP_N76E003.c:338: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___delay_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:337: for (j=0; j<u8Time; ++j)
	inc	r4
	sjmp	00105$
00101$:
;	ICP_N76E003.c:340: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	___delay_us
;	ICP_N76E003.c:341: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:343: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
	pop	ar5
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:344: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:333: for(i=0; i<n-1; ++i) {
	inc	r5
	ljmp	00108$
00102$:
;	ICP_N76E003.c:346: ICP_Send(u8ReceiveBuff[i+4]);
	mov	a,#0x04
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r1
	add	a,#_u8ReceiveBuff
	mov	dpl,a
	mov	a,r2
	addc	a,#(_u8ReceiveBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	lcall	_ICP_Send
	pop	ar6
;	ICP_N76E003.c:347: NHC_MOSI=0;
;	assignBit
	clr	_NHC_MOSI
;	ICP_N76E003.c:349: for (j=0; j<u8Time; ++j)
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00103$
;	ICP_N76E003.c:350: __delay_us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	___delay_us
	pop	ar6
	pop	ar7
;	ICP_N76E003.c:349: for (j=0; j<u8Time; ++j)
	inc	r7
	sjmp	00111$
00103$:
;	ICP_N76E003.c:351: NHC_MOSI=1;
;	assignBit
	setb	_NHC_MOSI
;	ICP_N76E003.c:353: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
;	ICP_N76E003.c:354: NHC_SCK=1;
;	assignBit
	setb	_NHC_SCK
;	ICP_N76E003.c:356: __delay_us(1);
	mov	dptr,#0x0001
	lcall	___delay_us
;	ICP_N76E003.c:357: NHC_SCK=0;
;	assignBit
	clr	_NHC_SCK
;	ICP_N76E003.c:358: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ICP_FlashRead'
;------------------------------------------------------------
;	ICP_N76E003.c:359: void ICP_FlashRead(void) {
;	-----------------------------------------
;	 function ICP_FlashRead
;	-----------------------------------------
_ICP_FlashRead:
;	ICP_N76E003.c:361: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
