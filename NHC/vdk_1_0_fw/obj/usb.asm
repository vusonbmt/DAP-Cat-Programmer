;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EP0_RecData1_PARM_2
	.globl _EP0_RecData0_PARM_2
	.globl _EP0_SendData1_PARM_2
	.globl _EP0_SendData0_PARM_2
	.globl _u8Ver
	.globl _serialDescriptor
	.globl _productDescriptor
	.globl _manufacturerDescriptor
	.globl _stringDescriptor
	.globl _configDescriptor
	.globl _HID_DeviceReportDescriptor
	.globl _deviceDescriptor
	.globl _Led_Off
	.globl _Led_On
	.globl _EP0_Out_CallBack
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
	.globl _u8SetupPacket
	.globl _u8TransBuff
	.globl _u8ReceiveBuff
	.globl _u8Ep0Buff
	.globl _u8ControlState
	.globl _u8sync
	.globl _u8Config
	.globl _u8Addr
	.globl _u8HidNum
	.globl _u8HidReq
	.globl _u8Total
	.globl _pu8Buff
	.globl _EP0_SendData0
	.globl _EP0_SendData1
	.globl _EP0_RecData0
	.globl _EP0_RecData1
	.globl _EP0_Stall
	.globl _USB_InitClock
	.globl _USB_Init
	.globl _USB_Task
	.globl _EP1_Out
	.globl _EP1_In
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_pu8Buff::
	.ds 3
_u8Total::
	.ds 1
_u8HidReq::
	.ds 1
_u8HidNum::
	.ds 1
_u8Addr::
	.ds 1
_u8Config::
	.ds 1
_u8sync::
	.ds 1
_u8ControlState::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_EP0_SendData0_PARM_2:
	.ds 1
_EP0_SendData0_buff_65536_33:
	.ds 3
	.area	OSEG    (OVR,DATA)
_EP0_SendData1_PARM_2:
	.ds 1
_EP0_SendData1_buff_65536_41:
	.ds 3
	.area	OSEG    (OVR,DATA)
_EP0_RecData0_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_EP0_RecData1_PARM_2:
	.ds 1
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
_u8Ep0Buff::
	.ds 64
_u8ReceiveBuff::
	.ds 150
_u8TransBuff::
	.ds 150
_u8SetupPacket::
	.ds 8
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
;	usb.c:209: uint8_t u8HidReq = 0;
	mov	_u8HidReq,#0x00
;	usb.c:210: uint8_t u8HidNum = 0;
	mov	_u8HidNum,#0x00
;	usb.c:212: uint8_t u8Addr = 0;
	mov	_u8Addr,#0x00
;	usb.c:213: uint8_t u8Config = 0;
	mov	_u8Config,#0x00
;	usb.c:215: uint8_t u8sync = 0;
	mov	_u8sync,#0x00
;	usb.c:221: uint8_t u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
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
;Allocation info for local variables in function 'EP0_SendData0'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_SendData0_PARM_2'
;buff                      Allocated with name '_EP0_SendData0_buff_65536_33'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:254: void EP0_SendData0(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_SendData0
;	-----------------------------------------
_EP0_SendData0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_EP0_SendData0_buff_65536_33,dpl
	mov	(_EP0_SendData0_buff_65536_33 + 1),dph
	mov	(_EP0_SendData0_buff_65536_33 + 2),b
;	usb.c:257: u8Total = len;
	mov	_u8Total,_EP0_SendData0_PARM_2
;	usb.c:258: pu8Buff = buff;
	mov	_pu8Buff,_EP0_SendData0_buff_65536_33
	mov	(_pu8Buff + 1),(_EP0_SendData0_buff_65536_33 + 1)
	mov	(_pu8Buff + 2),(_EP0_SendData0_buff_65536_33 + 2)
;	usb.c:260: if (len <= EP0_SZ) {
	mov	a,_EP0_SendData0_PARM_2
	add	a,#0xff - 0x40
	jc	00116$
;	usb.c:261: for (i = 0; i < len; ++i) {
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_EP0_SendData0_PARM_2
	jnc	00101$
;	usb.c:262: u8Ep0Buff[i] = buff[i];
	mov	a,r3
	add	a,#_u8Ep0Buff
	mov	r1,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r2,a
	mov	a,r3
	add	a,_EP0_SendData0_buff_65536_33
	mov	r0,a
	clr	a
	addc	a,(_EP0_SendData0_buff_65536_33 + 1)
	mov	r4,a
	mov	r7,(_EP0_SendData0_buff_65536_33 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
;	usb.c:261: for (i = 0; i < len; ++i) {
	inc	r3
	sjmp	00107$
00101$:
;	usb.c:264: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,_EP0_SendData0_PARM_2
;	usb.c:266: for (i = 0; i < EP0_SZ; ++i) {
	sjmp	00105$
00116$:
	mov	r7,#0x00
00109$:
;	usb.c:267: u8Ep0Buff[i] = buff[i];
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	r5,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r6,a
	mov	a,r7
	add	a,_EP0_SendData0_buff_65536_33
	mov	r2,a
	clr	a
	addc	a,(_EP0_SendData0_buff_65536_33 + 1)
	mov	r3,a
	mov	r4,(_EP0_SendData0_buff_65536_33 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:266: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00137$
00137$:
	jc	00109$
;	usb.c:269: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
00105$:
;	usb.c:271: u8sync = 0;
	mov	_u8sync,#0x00
;	usb.c:272: UEP0_CTRL = (UEP_T_RES_ACK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x00
;	usb.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_SendData1'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_SendData1_PARM_2'
;buff                      Allocated with name '_EP0_SendData1_buff_65536_41'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	usb.c:274: void EP0_SendData1(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_SendData1
;	-----------------------------------------
_EP0_SendData1:
	mov	_EP0_SendData1_buff_65536_41,dpl
	mov	(_EP0_SendData1_buff_65536_41 + 1),dph
	mov	(_EP0_SendData1_buff_65536_41 + 2),b
;	usb.c:277: u8Total = len;
	mov	_u8Total,_EP0_SendData1_PARM_2
;	usb.c:278: pu8Buff = buff;
	mov	_pu8Buff,_EP0_SendData1_buff_65536_41
	mov	(_pu8Buff + 1),(_EP0_SendData1_buff_65536_41 + 1)
	mov	(_pu8Buff + 2),(_EP0_SendData1_buff_65536_41 + 2)
;	usb.c:280: if (len <= EP0_SZ) {
	mov	a,_EP0_SendData1_PARM_2
	add	a,#0xff - 0x40
	jc	00116$
;	usb.c:281: for (i = 0; i < len; ++i) {
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_EP0_SendData1_PARM_2
	jnc	00101$
;	usb.c:282: u8Ep0Buff[i] = buff[i];
	mov	a,r3
	add	a,#_u8Ep0Buff
	mov	r1,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r2,a
	mov	a,r3
	add	a,_EP0_SendData1_buff_65536_41
	mov	r0,a
	clr	a
	addc	a,(_EP0_SendData1_buff_65536_41 + 1)
	mov	r4,a
	mov	r7,(_EP0_SendData1_buff_65536_41 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
;	usb.c:281: for (i = 0; i < len; ++i) {
	inc	r3
	sjmp	00107$
00101$:
;	usb.c:284: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,_EP0_SendData1_PARM_2
;	usb.c:286: for (i = 0; i < EP0_SZ; ++i) {
	sjmp	00105$
00116$:
	mov	r7,#0x00
00109$:
;	usb.c:287: u8Ep0Buff[i] = buff[i];
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	r5,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	r6,a
	mov	a,r7
	add	a,_EP0_SendData1_buff_65536_41
	mov	r2,a
	clr	a
	addc	a,(_EP0_SendData1_buff_65536_41 + 1)
	mov	r3,a
	mov	r4,(_EP0_SendData1_buff_65536_41 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:286: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00137$
00137$:
	jc	00109$
;	usb.c:289: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
00105$:
;	usb.c:291: u8sync = 1;
	mov	_u8sync,#0x01
;	usb.c:292: UEP0_CTRL = (0x40 | UEP_T_RES_ACK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x40
;	usb.c:293: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_RecData0'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_RecData0_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
;	usb.c:294: void EP0_RecData0(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_RecData0
;	-----------------------------------------
_EP0_RecData0:
	mov	_pu8Buff,dpl
	mov	(_pu8Buff + 1),dph
	mov	(_pu8Buff + 2),b
;	usb.c:296: u8Total = len;
	mov	_u8Total,_EP0_RecData0_PARM_2
;	usb.c:299: UEP0_CTRL = (UEP_T_RES_NAK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x02
;	usb.c:300: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_RecData1'
;------------------------------------------------------------
;len                       Allocated with name '_EP0_RecData1_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
;	usb.c:301: void EP0_RecData1(uint8_t *buff, uint8_t len)
;	-----------------------------------------
;	 function EP0_RecData1
;	-----------------------------------------
_EP0_RecData1:
	mov	_pu8Buff,dpl
	mov	(_pu8Buff + 1),dph
	mov	(_pu8Buff + 2),b
;	usb.c:303: u8Total = len;
	mov	_u8Total,_EP0_RecData1_PARM_2
;	usb.c:306: UEP0_CTRL = (0x80 | UEP_T_RES_NAK | UEP_R_RES_ACK);
	mov	_UEP0_CTRL,#0x82
;	usb.c:307: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Stall'
;------------------------------------------------------------
;	usb.c:308: void EP0_Stall()
;	-----------------------------------------
;	 function EP0_Stall
;	-----------------------------------------
_EP0_Stall:
;	usb.c:310: UEP0_T_LEN = 0x00;
	mov	_UEP0_T_LEN,#0x00
;	usb.c:311: UEP0_CTRL = 0x03;
	mov	_UEP0_CTRL,#0x03
;	usb.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_InitClock'
;------------------------------------------------------------
;	usb.c:317: void USB_InitClock(void) {
;	-----------------------------------------
;	 function USB_InitClock
;	-----------------------------------------
_USB_InitClock:
;	usb.c:319: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Init'
;------------------------------------------------------------
;	usb.c:321: void USB_Init(void) {
;	-----------------------------------------
;	 function USB_Init
;	-----------------------------------------
_USB_Init:
;	usb.c:326: USB_CTRL = 0x29;
	mov	_USB_CTRL,#0x29
;	usb.c:327: UDEV_CTRL |= bUD_PORT_EN;
	orl	_UDEV_CTRL,#0x01
;	usb.c:331: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_Task'
;------------------------------------------------------------
;	usb.c:333: void USB_Task(void) {
;	-----------------------------------------
;	 function USB_Task
;	-----------------------------------------
_USB_Task:
;	usb.c:336: if (UIF_SUSPEND) {
;	usb.c:337: UIF_SUSPEND = 0;
;	assignBit
	jbc	_UIF_SUSPEND,00163$
	sjmp	00123$
00163$:
	ret
00123$:
;	usb.c:338: } else if (UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00120$
;	usb.c:340: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	usb.c:341: UEP0_T_LEN = EP0_SZ;
	mov	_UEP0_T_LEN,#0x40
;	usb.c:342: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	usb.c:343: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	usb.c:344: UIF_BUS_RST = 0;
;	assignBit
	clr	_UIF_BUS_RST
;	usb.c:345: UEP0_DMA = (uint16_t)u8Ep0Buff;
	mov	((_UEP0_DMA >> 0) & 0xFF),#_u8Ep0Buff
	mov	((_UEP0_DMA >> 8) & 0xFF),#(_u8Ep0Buff >> 8)
;	usb.c:346: u8Addr = 0;
	mov	_u8Addr,#0x00
;	usb.c:347: u8Config = 0;
	mov	_u8Config,#0x00
	ret
00120$:
;	usb.c:348: } else if (UIF_TRANSFER) {
	jb	_UIF_TRANSFER,00165$
	ret
00165$:
;	usb.c:356: UEP0_CTRL = UEP_R_RES_NAK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x0a
;	usb.c:358: if((USB_INT_ST & 0x0F) == 0x00) {
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	jz	00167$
	sjmp	00115$
00167$:
;	usb.c:360: if((USB_INT_ST & 0x30) == 0x20) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x20,00107$
	cjne	r7,#0x00,00107$
;	usb.c:362: EP0_In();
	lcall	_EP0_In
	sjmp	00116$
00107$:
;	usb.c:365: if((USB_INT_ST & 0x30) == 0x30) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x30,00104$
	cjne	r7,#0x00,00104$
;	usb.c:367: EP0_Setup();
	lcall	_EP0_Setup
	sjmp	00116$
00104$:
;	usb.c:368: } else if ((USB_INT_ST & 0x30) == 0x00) {
	mov	a,_USB_INT_ST
	anl	a,#0x30
	jz	00173$
	sjmp	00116$
00173$:
;	usb.c:370: EP0_Out();
	lcall	_EP0_Out
	sjmp	00116$
00115$:
;	usb.c:376: if((USB_INT_ST & 0x0F) == 0x01) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x0f
	mov	r7,#0x00
	cjne	r6,#0x01,00116$
	cjne	r7,#0x00,00116$
;	usb.c:378: if((USB_INT_ST & 0x30) == 0x20) {
	mov	r6,_USB_INT_ST
	anl	ar6,#0x30
	mov	r7,#0x00
	cjne	r6,#0x20,00110$
	cjne	r7,#0x00,00110$
;	usb.c:379: EP1_In();
	lcall	_EP1_In
	sjmp	00116$
00110$:
;	usb.c:381: EP1_Out();
	lcall	_EP1_Out
00116$:
;	usb.c:385: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	usb.c:388: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Setup'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;u8RequestType             Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:390: static void EP0_Setup(void) {
;	-----------------------------------------
;	 function EP0_Setup
;	-----------------------------------------
_EP0_Setup:
;	usb.c:394: Led_On();
	lcall	_Led_On
;	usb.c:395: for (i = 0; i < 8; ++i) {
	mov	r7,#0x00
00107$:
;	usb.c:396: u8SetupPacket[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,#_u8SetupPacket
	mov	r5,a
	clr	a
	addc	a,#(_u8SetupPacket >> 8)
	mov	r6,a
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	usb.c:395: for (i = 0; i < 8; ++i) {
	inc	r7
	cjne	r7,#0x08,00132$
00132$:
	jc	00107$
;	usb.c:402: u8RequestType = (u8Ep0Buff[0] & 0x60) >> 5;
	mov	dptr,#_u8Ep0Buff
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x60
	clr	a
	swap	a
	rr	a
	xch	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r7
	xch	a,r7
	anl	a,#0x07
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.2,00134$
	orl	a,#0xf8
00134$:
	mov	r6,a
;	usb.c:403: switch(u8RequestType) {
	cjne	r7,#0x00,00135$
	sjmp	00102$
00135$:
	cjne	r7,#0x01,00136$
	sjmp	00103$
00136$:
;	usb.c:404: case 0x00:
	cjne	r7,#0x02,00105$
	sjmp	00104$
00102$:
;	usb.c:406: StandardRequest();
;	usb.c:407: break;
;	usb.c:408: case 0x01:
	ljmp	_StandardRequest
00103$:
;	usb.c:410: ClassRequest();
;	usb.c:411: break;
;	usb.c:412: case 0x02:
	ljmp	_ClassRequest
00104$:
;	usb.c:414: VendorRequest();
;	usb.c:415: break;
;	usb.c:416: default:
	ljmp	_VendorRequest
00105$:
;	usb.c:419: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:420: EP0_Stall();
;	usb.c:422: }
;	usb.c:423: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_Out'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:425: static void EP0_Out(void) {
;	-----------------------------------------
;	 function EP0_Out
;	-----------------------------------------
_EP0_Out:
;	usb.c:427: if (u8ControlState == DATA_STATE) {
	mov	a,#0x01
	cjne	a,_u8ControlState,00161$
	sjmp	00162$
00161$:
	ljmp	00114$
00162$:
;	usb.c:428: if (u8Total <= EP0_SZ) {
	mov	a,_u8Total
	add	a,#0xff - 0x40
	jc	00128$
;	usb.c:430: for (i = 0; i < u8Total; ++i) {
	mov	r7,#0x00
00117$:
	clr	c
	mov	a,r7
	subb	a,_u8Total
	jnc	00101$
;	usb.c:431: pu8Buff[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,_pu8Buff
	mov	r4,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r5,a
	mov	r6,(_pu8Buff + 2)
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	usb.c:430: for (i = 0; i < u8Total; ++i) {
	inc	r7
	sjmp	00117$
00101$:
;	usb.c:439: if (u8HidReq) {
	mov	a,_u8HidReq
	jz	00103$
;	usb.c:441: EP0_Out_CallBack();
	lcall	_EP0_Out_CallBack
;	usb.c:443: u8HidReq = 0;
	mov	_u8HidReq,#0x00
00103$:
;	usb.c:445: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:446: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	ljmp	_EP0_SendData1
;	usb.c:448: for (i = 0; i < EP0_SZ; ++i) {
00128$:
	mov	r7,#0x00
00119$:
;	usb.c:449: pu8Buff[i] = u8Ep0Buff[i];
	mov	a,r7
	add	a,_pu8Buff
	mov	r4,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r5,a
	mov	r6,(_pu8Buff + 2)
	mov	a,r7
	add	a,#_u8Ep0Buff
	mov	dpl,a
	clr	a
	addc	a,#(_u8Ep0Buff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	usb.c:448: for (i = 0; i < EP0_SZ; ++i) {
	inc	r7
	cjne	r7,#0x40,00166$
00166$:
	jc	00119$
;	usb.c:454: if (UEP0_CTRL & 0x80) {
	mov	a,_UEP0_CTRL
	jnb	acc.7,00106$
;	usb.c:455: EP0_RecData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_RecData0_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_RecData0
00106$:
;	usb.c:457: EP0_RecData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_RecData1_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_RecData1
00114$:
;	usb.c:460: } else if (u8ControlState == STATUS_STATE) {
	mov	a,#0x02
	cjne	a,_u8ControlState,00121$
;	usb.c:461: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:462: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:463: Led_Off();
;	usb.c:465: }
	ljmp	_Led_Off
00121$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0_In'
;------------------------------------------------------------
;	usb.c:466: static void EP0_In(void) {
;	-----------------------------------------
;	 function EP0_In
;	-----------------------------------------
_EP0_In:
;	usb.c:468: if (u8ControlState == DATA_STATE) {
	mov	a,#0x01
	cjne	a,_u8ControlState,00143$
	sjmp	00144$
00143$:
	ljmp	00115$
00144$:
;	usb.c:469: if (u8Total <= EP0_SZ) {
	mov	a,_u8Total
	add	a,#0xff - 0x40
	jc	00108$
;	usb.c:470: u8Total = 0;
	mov	_u8Total,#0x00
;	usb.c:471: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:472: EP0_RecData1(u8ReceiveBuff, 0);
	mov	_EP0_RecData1_PARM_2,#0x00
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData1
;	usb.c:473: if (u8sync) {
	mov	a,_u8sync
	jz	00102$
;	usb.c:474: EP0_SendData0(pu8Buff, 0);
	mov	_EP0_SendData0_PARM_2,#0x00
	mov	dpl,_pu8Buff
	mov	dph,(_pu8Buff + 1)
	mov	b,(_pu8Buff + 2)
	lcall	_EP0_SendData0
	sjmp	00103$
00102$:
;	usb.c:476: EP0_SendData1(pu8Buff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dpl,_pu8Buff
	mov	dph,(_pu8Buff + 1)
	mov	b,(_pu8Buff + 2)
	lcall	_EP0_SendData1
00103$:
;	usb.c:478: Led_Off();
	ljmp	_Led_Off
00108$:
;	usb.c:480: if (u8sync) {
	mov	a,_u8sync
	jz	00105$
;	usb.c:481: EP0_SendData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_SendData0_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_SendData0
00105$:
;	usb.c:483: EP0_SendData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
	mov	a,#0x40
	add	a,_pu8Buff
	mov	r5,a
	clr	a
	addc	a,(_pu8Buff + 1)
	mov	r6,a
	mov	r7,(_pu8Buff + 2)
	mov	a,_u8Total
	add	a,#0xc0
	mov	_EP0_SendData1_PARM_2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_EP0_SendData1
00115$:
;	usb.c:486: } else if (u8ControlState == STATUS_STATE) {
	mov	a,#0x02
	cjne	a,_u8ControlState,00117$
;	usb.c:487: if (u8Addr) {
	mov	a,_u8Addr
	jz	00111$
;	usb.c:488: USB_DEV_AD = u8Addr;
	mov	_USB_DEV_AD,_u8Addr
;	usb.c:489: u8Addr = 0;
	mov	_u8Addr,#0x00
00111$:
;	usb.c:492: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:493: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:494: Led_Off();
;	usb.c:496: }
	ljmp	_Led_Off
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'StandardRequest'
;------------------------------------------------------------
;	usb.c:498: static void StandardRequest(void) {
;	-----------------------------------------
;	 function StandardRequest
;	-----------------------------------------
_StandardRequest:
;	usb.c:500: switch(u8SetupPacket[1]) {
	mov	dptr,#(_u8SetupPacket + 0x0001)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00119$
	ret
00119$:
	mov	a,r7
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00121$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00120$:
	.db	00101$
	.db	00102$
	.db	00113$
	.db	00103$
	.db	00113$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
00121$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00113$>>8
	.db	00103$>>8
	.db	00113$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
;	usb.c:501: case 0x00:
00101$:
;	usb.c:503: GetStatus();
;	usb.c:504: break;
;	usb.c:505: case 0x01:
	ljmp	_GetStatus
00102$:
;	usb.c:507: ClearFeature();
;	usb.c:508: break;
;	usb.c:509: case 0x03:
	ljmp	_ClearFeature
00103$:
;	usb.c:511: SetFeature();
;	usb.c:512: break;
;	usb.c:513: case 0x05:
	ljmp	_SetFeature
00104$:
;	usb.c:515: SetAddress();
;	usb.c:516: break;
;	usb.c:517: case 0x06:
	ljmp	_SetAddress
00105$:
;	usb.c:519: GetDescriptor();
;	usb.c:520: break;
;	usb.c:521: case 0x07:
	ljmp	_GetDescriptor
00106$:
;	usb.c:523: SetDescriptor();
;	usb.c:524: break;
;	usb.c:525: case 0x08:
	ljmp	_SetDescriptor
00107$:
;	usb.c:527: GetConfiguration();
;	usb.c:528: break;
;	usb.c:529: case 0x09:
	ljmp	_GetConfiguration
00108$:
;	usb.c:531: SetConfiguration();
;	usb.c:532: break;
;	usb.c:533: case 0x0A:
	ljmp	_SetConfiguration
00109$:
;	usb.c:535: GetInterface();
;	usb.c:536: break;
;	usb.c:537: case 0x0B:
	ljmp	_GetInterface
00110$:
;	usb.c:539: SetInterface();
;	usb.c:540: break;
;	usb.c:541: case 0x0C:
	ljmp	_SetInterface
00111$:
;	usb.c:543: SynchFrame();
;	usb.c:545: }
;	usb.c:546: }
	ljmp	_SynchFrame
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClassRequest'
;------------------------------------------------------------
;	usb.c:547: static void ClassRequest(void) {
;	-----------------------------------------
;	 function ClassRequest
;	-----------------------------------------
_ClassRequest:
;	usb.c:548: switch(u8SetupPacket[1]) {
	mov	dptr,#(_u8SetupPacket + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00103$
00119$:
	cjne	r7,#0x09,00120$
	sjmp	00102$
00120$:
	cjne	r7,#0x0a,00105$
;	usb.c:550: HID_SetIdle();
;	usb.c:551: break;
;	usb.c:552: case 0x09:
	ljmp	_HID_SetIdle
00102$:
;	usb.c:553: HID_SetReport();
;	usb.c:554: break;
;	usb.c:555: case 0x01:
	ljmp	_HID_SetReport
00103$:
;	usb.c:556: HID_GetReport();
;	usb.c:558: }
;	usb.c:559: }
	ljmp	_HID_GetReport
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'VendorRequest'
;------------------------------------------------------------
;	usb.c:561: static void VendorRequest(void) {
;	-----------------------------------------
;	 function VendorRequest
;	-----------------------------------------
_VendorRequest:
;	usb.c:563: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetStatus'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:565: static void GetStatus(void) {
;	-----------------------------------------
;	 function GetStatus
;	-----------------------------------------
_GetStatus:
;	usb.c:572: u8R=u8SetupPacket[0] & 0x1F;
	mov	dptr,#_u8SetupPacket
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:574: switch(u8R) {
	cjne	r7,#0x00,00120$
	sjmp	00101$
00120$:
	cjne	r7,#0x01,00121$
	sjmp	00102$
00121$:
;	usb.c:575: case 0x00:
	cjne	r7,#0x02,00104$
	sjmp	00103$
00101$:
;	usb.c:577: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:578: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:580: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:582: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:583: break;
;	usb.c:584: case 0x01:
	ret
00102$:
;	usb.c:586: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:587: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:588: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:589: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:590: break;
;	usb.c:591: case 0x02:
	ret
00103$:
;	usb.c:595: u8TransBuff[0] = 0x00;	
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:596: u8TransBuff[1] = 0x00;
	mov	dptr,#(_u8TransBuff + 0x0001)
	movx	@dptr,a
;	usb.c:597: EP0_SendData1(u8TransBuff, 2);
	mov	_EP0_SendData1_PARM_2,#0x02
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:598: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:599: break;
;	usb.c:600: default:
	ret
00104$:
;	usb.c:603: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:604: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:608: EP0_Stall();
;	usb.c:610: }
;	usb.c:611: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearFeature'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:612: static void ClearFeature(void) {
;	-----------------------------------------
;	 function ClearFeature
;	-----------------------------------------
_ClearFeature:
;	usb.c:620: u8R=u8SetupPacket[0] & 0x1F;
	mov	dptr,#_u8SetupPacket
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:622: switch(u8R) {
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	usb.c:623: case 0x00:
	cjne	r7,#0x02,00103$
	sjmp	00102$
00101$:
;	usb.c:625: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:626: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:634: break;
;	usb.c:638: case 0x02:
	ret
00102$:
;	usb.c:644: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:645: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:646: break;
;	usb.c:647: default:
	ret
00103$:
;	usb.c:654: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:658: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:659: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:661: }
;	usb.c:663: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetFeature'
;------------------------------------------------------------
;u8R                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:664: static void SetFeature(void) {
;	-----------------------------------------
;	 function SetFeature
;	-----------------------------------------
_SetFeature:
;	usb.c:672: u8R=u8Ep0Buff[0] & 0x1F;
	mov	dptr,#_u8Ep0Buff
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1f
;	usb.c:674: switch(u8R) {
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	usb.c:675: case 0x00:
	cjne	r7,#0x02,00103$
	sjmp	00102$
00101$:
;	usb.c:684: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:685: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:686: break;
;	usb.c:690: case 0x02:
	ret
00102$:
;	usb.c:695: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:696: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:697: break;
;	usb.c:698: default:
	ret
00103$:
;	usb.c:703: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:707: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:708: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:710: }
;	usb.c:711: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetAddress'
;------------------------------------------------------------
;	usb.c:712: static void SetAddress(void) {
;	-----------------------------------------
;	 function SetAddress
;	-----------------------------------------
_SetAddress:
;	usb.c:714: u8Addr = u8SetupPacket[2];
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	_u8Addr,a
;	usb.c:716: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:717: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:719: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetDescriptor'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;u16Len                    Allocated to registers r7 r6 
;------------------------------------------------------------
;	usb.c:720: static void GetDescriptor(void) {
;	-----------------------------------------
;	 function GetDescriptor
;	-----------------------------------------
_GetDescriptor:
;	usb.c:723: u16Len = u8SetupPacket[7];
	mov	dptr,#(_u8SetupPacket + 0x0007)
	movx	a,@dptr
;	usb.c:724: u16Len <<= 8;
	mov	r6,a
	mov	r7,#0x00
;	usb.c:725: u16Len += u8SetupPacket[6];	
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	usb.c:726: switch(u8SetupPacket[3]) {
	mov	dptr,#(_u8SetupPacket + 0x0003)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00301$
	sjmp	00101$
00301$:
	cjne	r5,#0x02,00302$
	sjmp	00105$
00302$:
	cjne	r5,#0x03,00303$
	ljmp	00109$
00303$:
	cjne	r5,#0x22,00304$
	ljmp	00128$
00304$:
	ljmp	00134$
;	usb.c:727: case 0x01:
00101$:
;	usb.c:739: if(u16Len >= 0x12) {
	clr	c
	mov	a,r7
	subb	a,#0x12
	mov	a,r6
	subb	a,#0x00
	jc	00165$
;	usb.c:740: u16Len = 0x12;
	mov	r7,#0x12
	mov	r6,#0x00
;	usb.c:742: for(i = 0; i < u16Len; ++i) {
00165$:
	mov	r4,#0x00
	mov	r5,#0x00
00137$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00104$
;	usb.c:743: u8TransBuff[i] = deviceDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_deviceDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_deviceDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:742: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00137$
	inc	r5
	sjmp	00137$
00104$:
;	usb.c:745: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:746: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:747: break;
	ljmp	_EP0_SendData1
;	usb.c:748: case 0x02:
00105$:
;	usb.c:750: if(u16Len >= 34) {
	clr	c
	mov	a,r7
	subb	a,#0x22
	mov	a,r6
	subb	a,#0x00
	jc	00168$
;	usb.c:751: u16Len = 34;
	mov	r7,#0x22
	mov	r6,#0x00
;	usb.c:753: for(i = 0; i < u16Len; ++i) {
00168$:
	mov	r4,#0x00
	mov	r5,#0x00
00140$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00108$
;	usb.c:754: u8TransBuff[i]=configDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_configDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_configDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:753: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
	sjmp	00140$
00108$:
;	usb.c:757: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:758: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:759: break;
	ljmp	_EP0_SendData1
;	usb.c:760: case 0x03:
00109$:
;	usb.c:762: switch(u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	00311$
	ljmp	00126$
00311$:
	mov	a,r5
	add	a,r5
	add	a,r5
	mov	dptr,#00312$
	jmp	@a+dptr
00312$:
	ljmp	00110$
	ljmp	00114$
	ljmp	00118$
	ljmp	00122$
;	usb.c:763: case 0x00:
00110$:
;	usb.c:765: if(u16Len >= 0x04) {
	clr	c
	mov	a,r7
	subb	a,#0x04
	mov	a,r6
	subb	a,#0x00
	jc	00172$
;	usb.c:766: u16Len = 0x04;
	mov	r7,#0x04
	mov	r6,#0x00
;	usb.c:768: for(i = 0; i < u16Len; ++i) {
00172$:
	mov	r4,#0x00
	mov	r5,#0x00
00143$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00113$
;	usb.c:769: u8TransBuff[i]=stringDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_stringDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_stringDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:768: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00143$
	inc	r5
	sjmp	00143$
00113$:
;	usb.c:772: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:773: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:774: break;
	ljmp	_EP0_SendData1
;	usb.c:775: case 0x01:
00114$:
;	usb.c:777: if(u16Len >= 32) {
	clr	c
	mov	a,r7
	subb	a,#0x20
	mov	a,r6
	subb	a,#0x00
	jc	00175$
;	usb.c:778: u16Len = 32;
	mov	r7,#0x20
	mov	r6,#0x00
;	usb.c:780: for(i = 0; i < u16Len; ++i) {
00175$:
	mov	r4,#0x00
	mov	r5,#0x00
00146$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00117$
;	usb.c:781: u8TransBuff[i]=manufacturerDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_manufacturerDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_manufacturerDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:780: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00146$
	inc	r5
	sjmp	00146$
00117$:
;	usb.c:784: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:785: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:786: break;
	ljmp	_EP0_SendData1
;	usb.c:787: case 0x02:
00118$:
;	usb.c:789: if(u16Len >= 24) {
	clr	c
	mov	a,r7
	subb	a,#0x18
	mov	a,r6
	subb	a,#0x00
	jc	00178$
;	usb.c:790: u16Len = 24;
	mov	r7,#0x18
	mov	r6,#0x00
;	usb.c:792: for(i = 0; i < u16Len; ++i) {
00178$:
	mov	r4,#0x00
	mov	r5,#0x00
00149$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00121$
;	usb.c:793: u8TransBuff[i]=productDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_productDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_productDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:792: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00149$
	inc	r5
	sjmp	00149$
00121$:
;	usb.c:796: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:797: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:798: break;
	ljmp	_EP0_SendData1
;	usb.c:799: case 0x03:
00122$:
;	usb.c:801: if(u16Len >= 26) {
	clr	c
	mov	a,r7
	subb	a,#0x1a
	mov	a,r6
	subb	a,#0x00
	jc	00181$
;	usb.c:802: u16Len = 26;
	mov	r7,#0x1a
	mov	r6,#0x00
;	usb.c:804: for(i = 0; i < u16Len; ++i) {
00181$:
	mov	r4,#0x00
	mov	r5,#0x00
00152$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00125$
;	usb.c:805: u8TransBuff[i]=serialDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_serialDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_serialDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:804: for(i = 0; i < u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00152$
	inc	r5
	sjmp	00152$
00125$:
;	usb.c:808: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:809: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:810: break;
	ljmp	_EP0_SendData1
;	usb.c:811: default:
00126$:
;	usb.c:812: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:814: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:816: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:820: break;
;	usb.c:821: case 0x22:
	ret
00128$:
;	usb.c:822: switch (u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	jz	00326$
	ret
00326$:
;	usb.c:824: if(u16Len >= /*42*/51) {
	clr	c
	mov	a,r7
	subb	a,#0x33
	mov	a,r6
	subb	a,#0x00
	jc	00185$
;	usb.c:825: u16Len = /*42*/51;
	mov	r7,#0x33
	mov	r6,#0x00
;	usb.c:828: for(i=0; i<u16Len; ++i) {
00185$:
	mov	r4,#0x00
	mov	r5,#0x00
00155$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00132$
;	usb.c:829: u8TransBuff[i]=HID_DeviceReportDescriptor[i];
	mov	a,r4
	add	a,#_u8TransBuff
	mov	r2,a
	mov	a,r5
	addc	a,#(_u8TransBuff >> 8)
	mov	r3,a
	mov	a,r4
	add	a,#_HID_DeviceReportDescriptor
	mov	dpl,a
	mov	a,r5
	addc	a,#(_HID_DeviceReportDescriptor >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	usb.c:828: for(i=0; i<u16Len; ++i) {
	inc	r4
	cjne	r4,#0x00,00155$
	inc	r5
	sjmp	00155$
00132$:
;	usb.c:832: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:833: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
	mov	_EP0_SendData1_PARM_2,r7
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:836: break;
;	usb.c:837: default:
	ljmp	_EP0_SendData1
00134$:
;	usb.c:838: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:840: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:842: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:845: }
;	usb.c:846: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetDescriptor'
;------------------------------------------------------------
;	usb.c:847: static void SetDescriptor(void) {
;	-----------------------------------------
;	 function SetDescriptor
;	-----------------------------------------
_SetDescriptor:
;	usb.c:848: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
	mov	_EP0_RecData0_PARM_2,#0x40
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
	lcall	_EP0_RecData0
;	usb.c:855: EP0_Stall();
	lcall	_EP0_Stall
;	usb.c:856: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:857: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetConfiguration'
;------------------------------------------------------------
;	usb.c:858: static void GetConfiguration(void) {
;	-----------------------------------------
;	 function GetConfiguration
;	-----------------------------------------
_GetConfiguration:
;	usb.c:859: u8TransBuff[0] = u8Config;
	mov	dptr,#_u8TransBuff
	mov	a,_u8Config
	movx	@dptr,a
;	usb.c:863: EP0_SendData1(u8TransBuff, 0x01);
	mov	_EP0_SendData1_PARM_2,#0x01
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:866: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:867: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetConfiguration'
;------------------------------------------------------------
;	usb.c:868: static void SetConfiguration(void) {
;	-----------------------------------------
;	 function SetConfiguration
;	-----------------------------------------
_SetConfiguration:
;	usb.c:869: u8Config=u8SetupPacket[2];
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	_u8Config,a
;	usb.c:888: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:890: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:891: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInterface'
;------------------------------------------------------------
;	usb.c:892: static void GetInterface(void) {
;	-----------------------------------------
;	 function GetInterface
;	-----------------------------------------
_GetInterface:
;	usb.c:893: u8TransBuff[0] = 0x00;
	mov	dptr,#_u8TransBuff
	clr	a
	movx	@dptr,a
;	usb.c:900: EP0_SendData1(u8TransBuff, 0x01);
	mov	_EP0_SendData1_PARM_2,#0x01
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:901: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:902: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetInterface'
;------------------------------------------------------------
;	usb.c:903: static void SetInterface(void) {
;	-----------------------------------------
;	 function SetInterface
;	-----------------------------------------
_SetInterface:
;	usb.c:911: EP0_SendData1(u8TransBuff, 0);
	mov	_EP0_SendData1_PARM_2,#0x00
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
	lcall	_EP0_SendData1
;	usb.c:912: u8ControlState = STATUS_STATE;
	mov	_u8ControlState,#0x02
;	usb.c:913: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SynchFrame'
;------------------------------------------------------------
;	usb.c:914: static void SynchFrame(void) {
;	-----------------------------------------
;	 function SynchFrame
;	-----------------------------------------
_SynchFrame:
;	usb.c:916: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_Out'
;------------------------------------------------------------
;	usb.c:918: void EP1_Out(void) {
;	-----------------------------------------
;	 function EP1_Out
;	-----------------------------------------
_EP1_Out:
;	usb.c:920: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1_In'
;------------------------------------------------------------
;	usb.c:922: void EP1_In(void) {
;	-----------------------------------------
;	 function EP1_In
;	-----------------------------------------
_EP1_In:
;	usb.c:924: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_SetIdle'
;------------------------------------------------------------
;	usb.c:926: static void HID_SetIdle(void) {
;	-----------------------------------------
;	 function HID_SetIdle
;	-----------------------------------------
_HID_SetIdle:
;	usb.c:928: u8ControlState = SETUP_STATE;
	mov	_u8ControlState,#0x00
;	usb.c:929: EP0_Stall();
;	usb.c:930: }
	ljmp	_EP0_Stall
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_SetReport'
;------------------------------------------------------------
;	usb.c:932: static void HID_SetReport(void) {
;	-----------------------------------------
;	 function HID_SetReport
;	-----------------------------------------
_HID_SetReport:
;	usb.c:933: switch (u8SetupPacket[2]) {
	mov	dptr,#(_u8SetupPacket + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00102$
00119$:
	cjne	r7,#0x02,00120$
	sjmp	00102$
00120$:
;	usb.c:935: case 0x02:
	cjne	r7,#0x04,00105$
	sjmp	00103$
00102$:
;	usb.c:936: u8HidReq = 1;
	mov	_u8HidReq,#0x01
;	usb.c:937: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:938: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	_EP0_RecData1_PARM_2,a
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:939: break;
;	usb.c:940: case 0x04:
	ljmp	_EP0_RecData1
00103$:
;	usb.c:941: u8HidReq = 1;
	mov	_u8HidReq,#0x01
;	usb.c:942: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:943: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
	mov	dptr,#(_u8SetupPacket + 0x0006)
	movx	a,@dptr
	mov	_EP0_RecData1_PARM_2,a
	mov	dptr,#_u8ReceiveBuff
	mov	b,#0x00
;	usb.c:945: }
;	usb.c:946: }
	ljmp	_EP0_RecData1
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HID_GetReport'
;------------------------------------------------------------
;	usb.c:948: static void HID_GetReport(void) {
;	-----------------------------------------
;	 function HID_GetReport
;	-----------------------------------------
_HID_GetReport:
;	usb.c:951: u8ControlState = DATA_STATE;
	mov	_u8ControlState,#0x01
;	usb.c:952: EP0_SendData1(u8TransBuff, u8HidNum);
	mov	_EP0_SendData1_PARM_2,_u8HidNum
	mov	dptr,#_u8TransBuff
	mov	b,#0x00
;	usb.c:953: }
	ljmp	_EP0_SendData1
	.area CSEG    (CODE)
	.area CONST   (CODE)
_deviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x48	; 72	'H'
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_HID_DeviceReportDescriptor:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x85	; 133
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xb2	; 178
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x87	; 135
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xb2	; 178
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xb2	; 178
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x04	; 4
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xb2	; 178
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xc0	; 192
_configDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
_stringDescriptor:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_manufacturerDescriptor:
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
_productDescriptor:
	.db #0x18	; 24
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
_serialDescriptor:
	.db #0x1a	; 26
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_u8Ver:
	.ascii "mcuProg v1.0 b181231"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
