                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EP0_RecData1_PARM_2
                                     12 	.globl _EP0_RecData0_PARM_2
                                     13 	.globl _EP0_SendData1_PARM_2
                                     14 	.globl _EP0_SendData0_PARM_2
                                     15 	.globl _u8Ver
                                     16 	.globl _serialDescriptor
                                     17 	.globl _productDescriptor
                                     18 	.globl _manufacturerDescriptor
                                     19 	.globl _stringDescriptor
                                     20 	.globl _configDescriptor
                                     21 	.globl _HID_DeviceReportDescriptor
                                     22 	.globl _deviceDescriptor
                                     23 	.globl _Led_Off
                                     24 	.globl _Led_On
                                     25 	.globl _EP0_Out_CallBack
                                     26 	.globl _UIF_BUS_RST
                                     27 	.globl _UIF_DETECT
                                     28 	.globl _UIF_TRANSFER
                                     29 	.globl _UIF_SUSPEND
                                     30 	.globl _UIF_HST_SOF
                                     31 	.globl _UIF_FIFO_OV
                                     32 	.globl _U_SIE_FREE
                                     33 	.globl _U_TOG_OK
                                     34 	.globl _U_IS_NAK
                                     35 	.globl _ADC_CHAN0
                                     36 	.globl _ADC_CHAN1
                                     37 	.globl _CMP_CHAN
                                     38 	.globl _ADC_START
                                     39 	.globl _ADC_IF
                                     40 	.globl _CMP_IF
                                     41 	.globl _CMPO
                                     42 	.globl _U1RI
                                     43 	.globl _U1TI
                                     44 	.globl _U1RB8
                                     45 	.globl _U1TB8
                                     46 	.globl _U1REN
                                     47 	.globl _U1SMOD
                                     48 	.globl _U1SM0
                                     49 	.globl _S0_R_FIFO
                                     50 	.globl _S0_T_FIFO
                                     51 	.globl _S0_FREE
                                     52 	.globl _S0_IF_BYTE
                                     53 	.globl _S0_IF_FIRST
                                     54 	.globl _S0_IF_OV
                                     55 	.globl _S0_FST_ACT
                                     56 	.globl _CP_RL2
                                     57 	.globl _C_T2
                                     58 	.globl _TR2
                                     59 	.globl _EXEN2
                                     60 	.globl _TCLK
                                     61 	.globl _RCLK
                                     62 	.globl _EXF2
                                     63 	.globl _CAP1F
                                     64 	.globl _TF2
                                     65 	.globl _RI
                                     66 	.globl _TI
                                     67 	.globl _RB8
                                     68 	.globl _TB8
                                     69 	.globl _REN
                                     70 	.globl _SM2
                                     71 	.globl _SM1
                                     72 	.globl _SM0
                                     73 	.globl _IT0
                                     74 	.globl _IE0
                                     75 	.globl _IT1
                                     76 	.globl _IE1
                                     77 	.globl _TR0
                                     78 	.globl _TF0
                                     79 	.globl _TR1
                                     80 	.globl _TF1
                                     81 	.globl _RXD
                                     82 	.globl _PWM1_
                                     83 	.globl _TXD
                                     84 	.globl _PWM2_
                                     85 	.globl _AIN3
                                     86 	.globl _VBUS1
                                     87 	.globl _INT0
                                     88 	.globl _TXD1_
                                     89 	.globl _INT1
                                     90 	.globl _T0
                                     91 	.globl _RXD1_
                                     92 	.globl _PWM2
                                     93 	.globl _T1
                                     94 	.globl _UDP
                                     95 	.globl _UDM
                                     96 	.globl _TIN0
                                     97 	.globl _CAP1
                                     98 	.globl _T2
                                     99 	.globl _AIN0
                                    100 	.globl _VBUS2
                                    101 	.globl _TIN1
                                    102 	.globl _CAP2
                                    103 	.globl _T2EX
                                    104 	.globl _RXD_
                                    105 	.globl _TXD_
                                    106 	.globl _AIN1
                                    107 	.globl _UCC1
                                    108 	.globl _TIN2
                                    109 	.globl _SCS
                                    110 	.globl _CAP1_
                                    111 	.globl _T2_
                                    112 	.globl _AIN2
                                    113 	.globl _UCC2
                                    114 	.globl _TIN3
                                    115 	.globl _PWM1
                                    116 	.globl _MOSI
                                    117 	.globl _TIN4
                                    118 	.globl _RXD1
                                    119 	.globl _MISO
                                    120 	.globl _TIN5
                                    121 	.globl _TXD1
                                    122 	.globl _SCK
                                    123 	.globl _IE_SPI0
                                    124 	.globl _IE_TKEY
                                    125 	.globl _IE_USB
                                    126 	.globl _IE_ADC
                                    127 	.globl _IE_UART1
                                    128 	.globl _IE_PWMX
                                    129 	.globl _IE_GPIO
                                    130 	.globl _IE_WDOG
                                    131 	.globl _PX0
                                    132 	.globl _PT0
                                    133 	.globl _PX1
                                    134 	.globl _PT1
                                    135 	.globl _PS
                                    136 	.globl _PT2
                                    137 	.globl _PL_FLAG
                                    138 	.globl _PH_FLAG
                                    139 	.globl _EX0
                                    140 	.globl _ET0
                                    141 	.globl _EX1
                                    142 	.globl _ET1
                                    143 	.globl _ES
                                    144 	.globl _ET2
                                    145 	.globl _E_DIS
                                    146 	.globl _EA
                                    147 	.globl _P
                                    148 	.globl _F1
                                    149 	.globl _OV
                                    150 	.globl _RS0
                                    151 	.globl _RS1
                                    152 	.globl _F0
                                    153 	.globl _AC
                                    154 	.globl _CY
                                    155 	.globl _UEP1_DMA_H
                                    156 	.globl _UEP1_DMA_L
                                    157 	.globl _UEP1_DMA
                                    158 	.globl _UEP0_DMA_H
                                    159 	.globl _UEP0_DMA_L
                                    160 	.globl _UEP0_DMA
                                    161 	.globl _UEP2_3_MOD
                                    162 	.globl _UEP4_1_MOD
                                    163 	.globl _UEP3_DMA_H
                                    164 	.globl _UEP3_DMA_L
                                    165 	.globl _UEP3_DMA
                                    166 	.globl _UEP2_DMA_H
                                    167 	.globl _UEP2_DMA_L
                                    168 	.globl _UEP2_DMA
                                    169 	.globl _USB_DEV_AD
                                    170 	.globl _USB_CTRL
                                    171 	.globl _USB_INT_EN
                                    172 	.globl _UEP4_T_LEN
                                    173 	.globl _UEP4_CTRL
                                    174 	.globl _UEP0_T_LEN
                                    175 	.globl _UEP0_CTRL
                                    176 	.globl _USB_RX_LEN
                                    177 	.globl _USB_MIS_ST
                                    178 	.globl _USB_INT_ST
                                    179 	.globl _USB_INT_FG
                                    180 	.globl _UEP3_T_LEN
                                    181 	.globl _UEP3_CTRL
                                    182 	.globl _UEP2_T_LEN
                                    183 	.globl _UEP2_CTRL
                                    184 	.globl _UEP1_T_LEN
                                    185 	.globl _UEP1_CTRL
                                    186 	.globl _UDEV_CTRL
                                    187 	.globl _USB_C_CTRL
                                    188 	.globl _TKEY_DATH
                                    189 	.globl _TKEY_DATL
                                    190 	.globl _TKEY_DAT
                                    191 	.globl _TKEY_CTRL
                                    192 	.globl _ADC_DATA
                                    193 	.globl _ADC_CFG
                                    194 	.globl _ADC_CTRL
                                    195 	.globl _SBAUD1
                                    196 	.globl _SBUF1
                                    197 	.globl _SCON1
                                    198 	.globl _SPI0_SETUP
                                    199 	.globl _SPI0_CK_SE
                                    200 	.globl _SPI0_CTRL
                                    201 	.globl _SPI0_DATA
                                    202 	.globl _SPI0_STAT
                                    203 	.globl _PWM_CK_SE
                                    204 	.globl _PWM_CTRL
                                    205 	.globl _PWM_DATA1
                                    206 	.globl _PWM_DATA2
                                    207 	.globl _T2CAP1H
                                    208 	.globl _T2CAP1L
                                    209 	.globl _T2CAP1
                                    210 	.globl _TH2
                                    211 	.globl _TL2
                                    212 	.globl _T2COUNT
                                    213 	.globl _RCAP2H
                                    214 	.globl _RCAP2L
                                    215 	.globl _RCAP2
                                    216 	.globl _T2MOD
                                    217 	.globl _T2CON
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _TH1
                                    221 	.globl _TH0
                                    222 	.globl _TL1
                                    223 	.globl _TL0
                                    224 	.globl _TMOD
                                    225 	.globl _TCON
                                    226 	.globl _XBUS_AUX
                                    227 	.globl _PIN_FUNC
                                    228 	.globl _P3_DIR_PU
                                    229 	.globl _P3_MOD_OC
                                    230 	.globl _P3
                                    231 	.globl _P2
                                    232 	.globl _P1_DIR_PU
                                    233 	.globl _P1_MOD_OC
                                    234 	.globl _P1
                                    235 	.globl _ROM_CTRL
                                    236 	.globl _ROM_DATA_H
                                    237 	.globl _ROM_DATA_L
                                    238 	.globl _ROM_DATA
                                    239 	.globl _ROM_ADDR_H
                                    240 	.globl _ROM_ADDR_L
                                    241 	.globl _ROM_ADDR
                                    242 	.globl _GPIO_IE
                                    243 	.globl _IP_EX
                                    244 	.globl _IE_EX
                                    245 	.globl _IP
                                    246 	.globl _IE
                                    247 	.globl _WDOG_COUNT
                                    248 	.globl _RESET_KEEP
                                    249 	.globl _WAKE_CTRL
                                    250 	.globl _CLOCK_CFG
                                    251 	.globl _PCON
                                    252 	.globl _GLOBAL_CFG
                                    253 	.globl _SAFE_MOD
                                    254 	.globl _DPH
                                    255 	.globl _DPL
                                    256 	.globl _SP
                                    257 	.globl _B
                                    258 	.globl _ACC
                                    259 	.globl _PSW
                                    260 	.globl _u8SetupPacket
                                    261 	.globl _u8TransBuff
                                    262 	.globl _u8ReceiveBuff
                                    263 	.globl _u8Ep0Buff
                                    264 	.globl _u8ControlState
                                    265 	.globl _u8sync
                                    266 	.globl _u8Config
                                    267 	.globl _u8Addr
                                    268 	.globl _u8HidNum
                                    269 	.globl _u8HidReq
                                    270 	.globl _u8Total
                                    271 	.globl _pu8Buff
                                    272 	.globl _EP0_SendData0
                                    273 	.globl _EP0_SendData1
                                    274 	.globl _EP0_RecData0
                                    275 	.globl _EP0_RecData1
                                    276 	.globl _EP0_Stall
                                    277 	.globl _USB_InitClock
                                    278 	.globl _USB_Init
                                    279 	.globl _USB_Task
                                    280 	.globl _EP1_Out
                                    281 	.globl _EP1_In
                                    282 ;--------------------------------------------------------
                                    283 ; special function registers
                                    284 ;--------------------------------------------------------
                                    285 	.area RSEG    (ABS,DATA)
      000000                        286 	.org 0x0000
                           0000D0   287 _PSW	=	0x00d0
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000081   290 _SP	=	0x0081
                           000082   291 _DPL	=	0x0082
                           000083   292 _DPH	=	0x0083
                           0000A1   293 _SAFE_MOD	=	0x00a1
                           0000B1   294 _GLOBAL_CFG	=	0x00b1
                           000087   295 _PCON	=	0x0087
                           0000B9   296 _CLOCK_CFG	=	0x00b9
                           0000A9   297 _WAKE_CTRL	=	0x00a9
                           0000FE   298 _RESET_KEEP	=	0x00fe
                           0000FF   299 _WDOG_COUNT	=	0x00ff
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           0000E8   302 _IE_EX	=	0x00e8
                           0000E9   303 _IP_EX	=	0x00e9
                           0000C7   304 _GPIO_IE	=	0x00c7
                           008584   305 _ROM_ADDR	=	0x8584
                           000084   306 _ROM_ADDR_L	=	0x0084
                           000085   307 _ROM_ADDR_H	=	0x0085
                           008F8E   308 _ROM_DATA	=	0x8f8e
                           00008E   309 _ROM_DATA_L	=	0x008e
                           00008F   310 _ROM_DATA_H	=	0x008f
                           000086   311 _ROM_CTRL	=	0x0086
                           000090   312 _P1	=	0x0090
                           000092   313 _P1_MOD_OC	=	0x0092
                           000093   314 _P1_DIR_PU	=	0x0093
                           0000A0   315 _P2	=	0x00a0
                           0000B0   316 _P3	=	0x00b0
                           000096   317 _P3_MOD_OC	=	0x0096
                           000097   318 _P3_DIR_PU	=	0x0097
                           0000C6   319 _PIN_FUNC	=	0x00c6
                           0000A2   320 _XBUS_AUX	=	0x00a2
                           000088   321 _TCON	=	0x0088
                           000089   322 _TMOD	=	0x0089
                           00008A   323 _TL0	=	0x008a
                           00008B   324 _TL1	=	0x008b
                           00008C   325 _TH0	=	0x008c
                           00008D   326 _TH1	=	0x008d
                           000098   327 _SCON	=	0x0098
                           000099   328 _SBUF	=	0x0099
                           0000C8   329 _T2CON	=	0x00c8
                           0000C9   330 _T2MOD	=	0x00c9
                           00CBCA   331 _RCAP2	=	0xcbca
                           0000CA   332 _RCAP2L	=	0x00ca
                           0000CB   333 _RCAP2H	=	0x00cb
                           00CDCC   334 _T2COUNT	=	0xcdcc
                           0000CC   335 _TL2	=	0x00cc
                           0000CD   336 _TH2	=	0x00cd
                           00CFCE   337 _T2CAP1	=	0xcfce
                           0000CE   338 _T2CAP1L	=	0x00ce
                           0000CF   339 _T2CAP1H	=	0x00cf
                           00009B   340 _PWM_DATA2	=	0x009b
                           00009C   341 _PWM_DATA1	=	0x009c
                           00009D   342 _PWM_CTRL	=	0x009d
                           00009E   343 _PWM_CK_SE	=	0x009e
                           0000F8   344 _SPI0_STAT	=	0x00f8
                           0000F9   345 _SPI0_DATA	=	0x00f9
                           0000FA   346 _SPI0_CTRL	=	0x00fa
                           0000FB   347 _SPI0_CK_SE	=	0x00fb
                           0000FC   348 _SPI0_SETUP	=	0x00fc
                           0000C0   349 _SCON1	=	0x00c0
                           0000C1   350 _SBUF1	=	0x00c1
                           0000C2   351 _SBAUD1	=	0x00c2
                           000080   352 _ADC_CTRL	=	0x0080
                           00009A   353 _ADC_CFG	=	0x009a
                           00009F   354 _ADC_DATA	=	0x009f
                           0000C3   355 _TKEY_CTRL	=	0x00c3
                           00C5C4   356 _TKEY_DAT	=	0xc5c4
                           0000C4   357 _TKEY_DATL	=	0x00c4
                           0000C5   358 _TKEY_DATH	=	0x00c5
                           000091   359 _USB_C_CTRL	=	0x0091
                           0000D1   360 _UDEV_CTRL	=	0x00d1
                           0000D2   361 _UEP1_CTRL	=	0x00d2
                           0000D3   362 _UEP1_T_LEN	=	0x00d3
                           0000D4   363 _UEP2_CTRL	=	0x00d4
                           0000D5   364 _UEP2_T_LEN	=	0x00d5
                           0000D6   365 _UEP3_CTRL	=	0x00d6
                           0000D7   366 _UEP3_T_LEN	=	0x00d7
                           0000D8   367 _USB_INT_FG	=	0x00d8
                           0000D9   368 _USB_INT_ST	=	0x00d9
                           0000DA   369 _USB_MIS_ST	=	0x00da
                           0000DB   370 _USB_RX_LEN	=	0x00db
                           0000DC   371 _UEP0_CTRL	=	0x00dc
                           0000DD   372 _UEP0_T_LEN	=	0x00dd
                           0000DE   373 _UEP4_CTRL	=	0x00de
                           0000DF   374 _UEP4_T_LEN	=	0x00df
                           0000E1   375 _USB_INT_EN	=	0x00e1
                           0000E2   376 _USB_CTRL	=	0x00e2
                           0000E3   377 _USB_DEV_AD	=	0x00e3
                           00E5E4   378 _UEP2_DMA	=	0xe5e4
                           0000E4   379 _UEP2_DMA_L	=	0x00e4
                           0000E5   380 _UEP2_DMA_H	=	0x00e5
                           00E7E6   381 _UEP3_DMA	=	0xe7e6
                           0000E6   382 _UEP3_DMA_L	=	0x00e6
                           0000E7   383 _UEP3_DMA_H	=	0x00e7
                           0000EA   384 _UEP4_1_MOD	=	0x00ea
                           0000EB   385 _UEP2_3_MOD	=	0x00eb
                           00EDEC   386 _UEP0_DMA	=	0xedec
                           0000EC   387 _UEP0_DMA_L	=	0x00ec
                           0000ED   388 _UEP0_DMA_H	=	0x00ed
                           00EFEE   389 _UEP1_DMA	=	0xefee
                           0000EE   390 _UEP1_DMA_L	=	0x00ee
                           0000EF   391 _UEP1_DMA_H	=	0x00ef
                                    392 ;--------------------------------------------------------
                                    393 ; special function bits
                                    394 ;--------------------------------------------------------
                                    395 	.area RSEG    (ABS,DATA)
      000000                        396 	.org 0x0000
                           0000D7   397 _CY	=	0x00d7
                           0000D6   398 _AC	=	0x00d6
                           0000D5   399 _F0	=	0x00d5
                           0000D4   400 _RS1	=	0x00d4
                           0000D3   401 _RS0	=	0x00d3
                           0000D2   402 _OV	=	0x00d2
                           0000D1   403 _F1	=	0x00d1
                           0000D0   404 _P	=	0x00d0
                           0000AF   405 _EA	=	0x00af
                           0000AE   406 _E_DIS	=	0x00ae
                           0000AD   407 _ET2	=	0x00ad
                           0000AC   408 _ES	=	0x00ac
                           0000AB   409 _ET1	=	0x00ab
                           0000AA   410 _EX1	=	0x00aa
                           0000A9   411 _ET0	=	0x00a9
                           0000A8   412 _EX0	=	0x00a8
                           0000BF   413 _PH_FLAG	=	0x00bf
                           0000BE   414 _PL_FLAG	=	0x00be
                           0000BD   415 _PT2	=	0x00bd
                           0000BC   416 _PS	=	0x00bc
                           0000BB   417 _PT1	=	0x00bb
                           0000BA   418 _PX1	=	0x00ba
                           0000B9   419 _PT0	=	0x00b9
                           0000B8   420 _PX0	=	0x00b8
                           0000EF   421 _IE_WDOG	=	0x00ef
                           0000EE   422 _IE_GPIO	=	0x00ee
                           0000ED   423 _IE_PWMX	=	0x00ed
                           0000EC   424 _IE_UART1	=	0x00ec
                           0000EB   425 _IE_ADC	=	0x00eb
                           0000EA   426 _IE_USB	=	0x00ea
                           0000E9   427 _IE_TKEY	=	0x00e9
                           0000E8   428 _IE_SPI0	=	0x00e8
                           000097   429 _SCK	=	0x0097
                           000097   430 _TXD1	=	0x0097
                           000097   431 _TIN5	=	0x0097
                           000096   432 _MISO	=	0x0096
                           000096   433 _RXD1	=	0x0096
                           000096   434 _TIN4	=	0x0096
                           000095   435 _MOSI	=	0x0095
                           000095   436 _PWM1	=	0x0095
                           000095   437 _TIN3	=	0x0095
                           000095   438 _UCC2	=	0x0095
                           000095   439 _AIN2	=	0x0095
                           000094   440 _T2_	=	0x0094
                           000094   441 _CAP1_	=	0x0094
                           000094   442 _SCS	=	0x0094
                           000094   443 _TIN2	=	0x0094
                           000094   444 _UCC1	=	0x0094
                           000094   445 _AIN1	=	0x0094
                           000093   446 _TXD_	=	0x0093
                           000092   447 _RXD_	=	0x0092
                           000091   448 _T2EX	=	0x0091
                           000091   449 _CAP2	=	0x0091
                           000091   450 _TIN1	=	0x0091
                           000091   451 _VBUS2	=	0x0091
                           000091   452 _AIN0	=	0x0091
                           000090   453 _T2	=	0x0090
                           000090   454 _CAP1	=	0x0090
                           000090   455 _TIN0	=	0x0090
                           0000B7   456 _UDM	=	0x00b7
                           0000B6   457 _UDP	=	0x00b6
                           0000B5   458 _T1	=	0x00b5
                           0000B4   459 _PWM2	=	0x00b4
                           0000B4   460 _RXD1_	=	0x00b4
                           0000B4   461 _T0	=	0x00b4
                           0000B3   462 _INT1	=	0x00b3
                           0000B2   463 _TXD1_	=	0x00b2
                           0000B2   464 _INT0	=	0x00b2
                           0000B2   465 _VBUS1	=	0x00b2
                           0000B2   466 _AIN3	=	0x00b2
                           0000B1   467 _PWM2_	=	0x00b1
                           0000B1   468 _TXD	=	0x00b1
                           0000B0   469 _PWM1_	=	0x00b0
                           0000B0   470 _RXD	=	0x00b0
                           00008F   471 _TF1	=	0x008f
                           00008E   472 _TR1	=	0x008e
                           00008D   473 _TF0	=	0x008d
                           00008C   474 _TR0	=	0x008c
                           00008B   475 _IE1	=	0x008b
                           00008A   476 _IT1	=	0x008a
                           000089   477 _IE0	=	0x0089
                           000088   478 _IT0	=	0x0088
                           00009F   479 _SM0	=	0x009f
                           00009E   480 _SM1	=	0x009e
                           00009D   481 _SM2	=	0x009d
                           00009C   482 _REN	=	0x009c
                           00009B   483 _TB8	=	0x009b
                           00009A   484 _RB8	=	0x009a
                           000099   485 _TI	=	0x0099
                           000098   486 _RI	=	0x0098
                           0000CF   487 _TF2	=	0x00cf
                           0000CF   488 _CAP1F	=	0x00cf
                           0000CE   489 _EXF2	=	0x00ce
                           0000CD   490 _RCLK	=	0x00cd
                           0000CC   491 _TCLK	=	0x00cc
                           0000CB   492 _EXEN2	=	0x00cb
                           0000CA   493 _TR2	=	0x00ca
                           0000C9   494 _C_T2	=	0x00c9
                           0000C8   495 _CP_RL2	=	0x00c8
                           0000FF   496 _S0_FST_ACT	=	0x00ff
                           0000FE   497 _S0_IF_OV	=	0x00fe
                           0000FD   498 _S0_IF_FIRST	=	0x00fd
                           0000FC   499 _S0_IF_BYTE	=	0x00fc
                           0000FB   500 _S0_FREE	=	0x00fb
                           0000FA   501 _S0_T_FIFO	=	0x00fa
                           0000F8   502 _S0_R_FIFO	=	0x00f8
                           0000C7   503 _U1SM0	=	0x00c7
                           0000C5   504 _U1SMOD	=	0x00c5
                           0000C4   505 _U1REN	=	0x00c4
                           0000C3   506 _U1TB8	=	0x00c3
                           0000C2   507 _U1RB8	=	0x00c2
                           0000C1   508 _U1TI	=	0x00c1
                           0000C0   509 _U1RI	=	0x00c0
                           000087   510 _CMPO	=	0x0087
                           000086   511 _CMP_IF	=	0x0086
                           000085   512 _ADC_IF	=	0x0085
                           000084   513 _ADC_START	=	0x0084
                           000083   514 _CMP_CHAN	=	0x0083
                           000081   515 _ADC_CHAN1	=	0x0081
                           000080   516 _ADC_CHAN0	=	0x0080
                           0000DF   517 _U_IS_NAK	=	0x00df
                           0000DE   518 _U_TOG_OK	=	0x00de
                           0000DD   519 _U_SIE_FREE	=	0x00dd
                           0000DC   520 _UIF_FIFO_OV	=	0x00dc
                           0000DB   521 _UIF_HST_SOF	=	0x00db
                           0000DA   522 _UIF_SUSPEND	=	0x00da
                           0000D9   523 _UIF_TRANSFER	=	0x00d9
                           0000D8   524 _UIF_DETECT	=	0x00d8
                           0000D8   525 _UIF_BUS_RST	=	0x00d8
                                    526 ;--------------------------------------------------------
                                    527 ; overlayable register banks
                                    528 ;--------------------------------------------------------
                                    529 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        530 	.ds 8
                                    531 ;--------------------------------------------------------
                                    532 ; internal ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area DSEG    (DATA)
      000009                        535 _pu8Buff::
      000009                        536 	.ds 3
      00000C                        537 _u8Total::
      00000C                        538 	.ds 1
      00000D                        539 _u8HidReq::
      00000D                        540 	.ds 1
      00000E                        541 _u8HidNum::
      00000E                        542 	.ds 1
      00000F                        543 _u8Addr::
      00000F                        544 	.ds 1
      000010                        545 _u8Config::
      000010                        546 	.ds 1
      000011                        547 _u8sync::
      000011                        548 	.ds 1
      000012                        549 _u8ControlState::
      000012                        550 	.ds 1
                                    551 ;--------------------------------------------------------
                                    552 ; overlayable items in internal ram 
                                    553 ;--------------------------------------------------------
                                    554 	.area	OSEG    (OVR,DATA)
      000035                        555 _EP0_SendData0_PARM_2:
      000035                        556 	.ds 1
      000036                        557 _EP0_SendData0_buff_65536_33:
      000036                        558 	.ds 3
                                    559 	.area	OSEG    (OVR,DATA)
      000035                        560 _EP0_SendData1_PARM_2:
      000035                        561 	.ds 1
      000036                        562 _EP0_SendData1_buff_65536_41:
      000036                        563 	.ds 3
                                    564 	.area	OSEG    (OVR,DATA)
      000035                        565 _EP0_RecData0_PARM_2:
      000035                        566 	.ds 1
                                    567 	.area	OSEG    (OVR,DATA)
      000035                        568 _EP0_RecData1_PARM_2:
      000035                        569 	.ds 1
                                    570 ;--------------------------------------------------------
                                    571 ; indirectly addressable internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area ISEG    (DATA)
                                    574 ;--------------------------------------------------------
                                    575 ; absolute internal ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area IABS    (ABS,DATA)
                                    578 	.area IABS    (ABS,DATA)
                                    579 ;--------------------------------------------------------
                                    580 ; bit data
                                    581 ;--------------------------------------------------------
                                    582 	.area BSEG    (BIT)
                                    583 ;--------------------------------------------------------
                                    584 ; paged external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area PSEG    (PAG,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XSEG    (XDATA)
      000000                        591 _u8Ep0Buff::
      000000                        592 	.ds 64
      000040                        593 _u8ReceiveBuff::
      000040                        594 	.ds 150
      0000D6                        595 _u8TransBuff::
      0000D6                        596 	.ds 150
      00016C                        597 _u8SetupPacket::
      00016C                        598 	.ds 8
                                    599 ;--------------------------------------------------------
                                    600 ; absolute external ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XABS    (ABS,XDATA)
                                    603 ;--------------------------------------------------------
                                    604 ; external initialized ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area XISEG   (XDATA)
                                    607 	.area HOME    (CODE)
                                    608 	.area GSINIT0 (CODE)
                                    609 	.area GSINIT1 (CODE)
                                    610 	.area GSINIT2 (CODE)
                                    611 	.area GSINIT3 (CODE)
                                    612 	.area GSINIT4 (CODE)
                                    613 	.area GSINIT5 (CODE)
                                    614 	.area GSINIT  (CODE)
                                    615 	.area GSFINAL (CODE)
                                    616 	.area CSEG    (CODE)
                                    617 ;--------------------------------------------------------
                                    618 ; global & static initialisations
                                    619 ;--------------------------------------------------------
                                    620 	.area HOME    (CODE)
                                    621 	.area GSINIT  (CODE)
                                    622 	.area GSFINAL (CODE)
                                    623 	.area GSINIT  (CODE)
                                    624 ;	usb.c:209: uint8_t u8HidReq = 0;
      00005F 75 0D 00         [24]  625 	mov	_u8HidReq,#0x00
                                    626 ;	usb.c:210: uint8_t u8HidNum = 0;
      000062 75 0E 00         [24]  627 	mov	_u8HidNum,#0x00
                                    628 ;	usb.c:212: uint8_t u8Addr = 0;
      000065 75 0F 00         [24]  629 	mov	_u8Addr,#0x00
                                    630 ;	usb.c:213: uint8_t u8Config = 0;
      000068 75 10 00         [24]  631 	mov	_u8Config,#0x00
                                    632 ;	usb.c:215: uint8_t u8sync = 0;
      00006B 75 11 00         [24]  633 	mov	_u8sync,#0x00
                                    634 ;	usb.c:221: uint8_t u8ControlState = SETUP_STATE;
      00006E 75 12 00         [24]  635 	mov	_u8ControlState,#0x00
                                    636 ;--------------------------------------------------------
                                    637 ; Home
                                    638 ;--------------------------------------------------------
                                    639 	.area HOME    (CODE)
                                    640 	.area HOME    (CODE)
                                    641 ;--------------------------------------------------------
                                    642 ; code
                                    643 ;--------------------------------------------------------
                                    644 	.area CSEG    (CODE)
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'EP0_SendData0'
                                    647 ;------------------------------------------------------------
                                    648 ;len                       Allocated with name '_EP0_SendData0_PARM_2'
                                    649 ;buff                      Allocated with name '_EP0_SendData0_buff_65536_33'
                                    650 ;i                         Allocated to registers r3 
                                    651 ;------------------------------------------------------------
                                    652 ;	usb.c:254: void EP0_SendData0(uint8_t *buff, uint8_t len)
                                    653 ;	-----------------------------------------
                                    654 ;	 function EP0_SendData0
                                    655 ;	-----------------------------------------
      000139                        656 _EP0_SendData0:
                           000007   657 	ar7 = 0x07
                           000006   658 	ar6 = 0x06
                           000005   659 	ar5 = 0x05
                           000004   660 	ar4 = 0x04
                           000003   661 	ar3 = 0x03
                           000002   662 	ar2 = 0x02
                           000001   663 	ar1 = 0x01
                           000000   664 	ar0 = 0x00
      000139 85 82 36         [24]  665 	mov	_EP0_SendData0_buff_65536_33,dpl
      00013C 85 83 37         [24]  666 	mov	(_EP0_SendData0_buff_65536_33 + 1),dph
      00013F 85 F0 38         [24]  667 	mov	(_EP0_SendData0_buff_65536_33 + 2),b
                                    668 ;	usb.c:257: u8Total = len;
      000142 85 35 0C         [24]  669 	mov	_u8Total,_EP0_SendData0_PARM_2
                                    670 ;	usb.c:258: pu8Buff = buff;
      000145 85 36 09         [24]  671 	mov	_pu8Buff,_EP0_SendData0_buff_65536_33
      000148 85 37 0A         [24]  672 	mov	(_pu8Buff + 1),(_EP0_SendData0_buff_65536_33 + 1)
      00014B 85 38 0B         [24]  673 	mov	(_pu8Buff + 2),(_EP0_SendData0_buff_65536_33 + 2)
                                    674 ;	usb.c:260: if (len <= EP0_SZ) {
      00014E E5 35            [12]  675 	mov	a,_EP0_SendData0_PARM_2
      000150 24 BF            [12]  676 	add	a,#0xff - 0x40
      000152 40 31            [24]  677 	jc	00116$
                                    678 ;	usb.c:261: for (i = 0; i < len; ++i) {
      000154 7B 00            [12]  679 	mov	r3,#0x00
      000156                        680 00107$:
      000156 C3               [12]  681 	clr	c
      000157 EB               [12]  682 	mov	a,r3
      000158 95 35            [12]  683 	subb	a,_EP0_SendData0_PARM_2
      00015A 50 24            [24]  684 	jnc	00101$
                                    685 ;	usb.c:262: u8Ep0Buff[i] = buff[i];
      00015C EB               [12]  686 	mov	a,r3
      00015D 24 00            [12]  687 	add	a,#_u8Ep0Buff
      00015F F9               [12]  688 	mov	r1,a
      000160 E4               [12]  689 	clr	a
      000161 34 00            [12]  690 	addc	a,#(_u8Ep0Buff >> 8)
      000163 FA               [12]  691 	mov	r2,a
      000164 EB               [12]  692 	mov	a,r3
      000165 25 36            [12]  693 	add	a,_EP0_SendData0_buff_65536_33
      000167 F8               [12]  694 	mov	r0,a
      000168 E4               [12]  695 	clr	a
      000169 35 37            [12]  696 	addc	a,(_EP0_SendData0_buff_65536_33 + 1)
      00016B FC               [12]  697 	mov	r4,a
      00016C AF 38            [24]  698 	mov	r7,(_EP0_SendData0_buff_65536_33 + 2)
      00016E 88 82            [24]  699 	mov	dpl,r0
      000170 8C 83            [24]  700 	mov	dph,r4
      000172 8F F0            [24]  701 	mov	b,r7
      000174 12 23 0C         [24]  702 	lcall	__gptrget
      000177 F8               [12]  703 	mov	r0,a
      000178 89 82            [24]  704 	mov	dpl,r1
      00017A 8A 83            [24]  705 	mov	dph,r2
      00017C F0               [24]  706 	movx	@dptr,a
                                    707 ;	usb.c:261: for (i = 0; i < len; ++i) {
      00017D 0B               [12]  708 	inc	r3
      00017E 80 D6            [24]  709 	sjmp	00107$
      000180                        710 00101$:
                                    711 ;	usb.c:264: UEP0_T_LEN = len;
      000180 85 35 DD         [24]  712 	mov	_UEP0_T_LEN,_EP0_SendData0_PARM_2
                                    713 ;	usb.c:266: for (i = 0; i < EP0_SZ; ++i) {
      000183 80 2C            [24]  714 	sjmp	00105$
      000185                        715 00116$:
      000185 7F 00            [12]  716 	mov	r7,#0x00
      000187                        717 00109$:
                                    718 ;	usb.c:267: u8Ep0Buff[i] = buff[i];
      000187 EF               [12]  719 	mov	a,r7
      000188 24 00            [12]  720 	add	a,#_u8Ep0Buff
      00018A FD               [12]  721 	mov	r5,a
      00018B E4               [12]  722 	clr	a
      00018C 34 00            [12]  723 	addc	a,#(_u8Ep0Buff >> 8)
      00018E FE               [12]  724 	mov	r6,a
      00018F EF               [12]  725 	mov	a,r7
      000190 25 36            [12]  726 	add	a,_EP0_SendData0_buff_65536_33
      000192 FA               [12]  727 	mov	r2,a
      000193 E4               [12]  728 	clr	a
      000194 35 37            [12]  729 	addc	a,(_EP0_SendData0_buff_65536_33 + 1)
      000196 FB               [12]  730 	mov	r3,a
      000197 AC 38            [24]  731 	mov	r4,(_EP0_SendData0_buff_65536_33 + 2)
      000199 8A 82            [24]  732 	mov	dpl,r2
      00019B 8B 83            [24]  733 	mov	dph,r3
      00019D 8C F0            [24]  734 	mov	b,r4
      00019F 12 23 0C         [24]  735 	lcall	__gptrget
      0001A2 FA               [12]  736 	mov	r2,a
      0001A3 8D 82            [24]  737 	mov	dpl,r5
      0001A5 8E 83            [24]  738 	mov	dph,r6
      0001A7 F0               [24]  739 	movx	@dptr,a
                                    740 ;	usb.c:266: for (i = 0; i < EP0_SZ; ++i) {
      0001A8 0F               [12]  741 	inc	r7
      0001A9 BF 40 00         [24]  742 	cjne	r7,#0x40,00137$
      0001AC                        743 00137$:
      0001AC 40 D9            [24]  744 	jc	00109$
                                    745 ;	usb.c:269: UEP0_T_LEN = EP0_SZ;
      0001AE 75 DD 40         [24]  746 	mov	_UEP0_T_LEN,#0x40
      0001B1                        747 00105$:
                                    748 ;	usb.c:271: u8sync = 0;
      0001B1 75 11 00         [24]  749 	mov	_u8sync,#0x00
                                    750 ;	usb.c:272: UEP0_CTRL = (UEP_T_RES_ACK | UEP_R_RES_ACK);
      0001B4 75 DC 00         [24]  751 	mov	_UEP0_CTRL,#0x00
                                    752 ;	usb.c:273: }
      0001B7 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'EP0_SendData1'
                                    756 ;------------------------------------------------------------
                                    757 ;len                       Allocated with name '_EP0_SendData1_PARM_2'
                                    758 ;buff                      Allocated with name '_EP0_SendData1_buff_65536_41'
                                    759 ;i                         Allocated to registers r3 
                                    760 ;------------------------------------------------------------
                                    761 ;	usb.c:274: void EP0_SendData1(uint8_t *buff, uint8_t len)
                                    762 ;	-----------------------------------------
                                    763 ;	 function EP0_SendData1
                                    764 ;	-----------------------------------------
      0001B8                        765 _EP0_SendData1:
      0001B8 85 82 36         [24]  766 	mov	_EP0_SendData1_buff_65536_41,dpl
      0001BB 85 83 37         [24]  767 	mov	(_EP0_SendData1_buff_65536_41 + 1),dph
      0001BE 85 F0 38         [24]  768 	mov	(_EP0_SendData1_buff_65536_41 + 2),b
                                    769 ;	usb.c:277: u8Total = len;
      0001C1 85 35 0C         [24]  770 	mov	_u8Total,_EP0_SendData1_PARM_2
                                    771 ;	usb.c:278: pu8Buff = buff;
      0001C4 85 36 09         [24]  772 	mov	_pu8Buff,_EP0_SendData1_buff_65536_41
      0001C7 85 37 0A         [24]  773 	mov	(_pu8Buff + 1),(_EP0_SendData1_buff_65536_41 + 1)
      0001CA 85 38 0B         [24]  774 	mov	(_pu8Buff + 2),(_EP0_SendData1_buff_65536_41 + 2)
                                    775 ;	usb.c:280: if (len <= EP0_SZ) {
      0001CD E5 35            [12]  776 	mov	a,_EP0_SendData1_PARM_2
      0001CF 24 BF            [12]  777 	add	a,#0xff - 0x40
      0001D1 40 31            [24]  778 	jc	00116$
                                    779 ;	usb.c:281: for (i = 0; i < len; ++i) {
      0001D3 7B 00            [12]  780 	mov	r3,#0x00
      0001D5                        781 00107$:
      0001D5 C3               [12]  782 	clr	c
      0001D6 EB               [12]  783 	mov	a,r3
      0001D7 95 35            [12]  784 	subb	a,_EP0_SendData1_PARM_2
      0001D9 50 24            [24]  785 	jnc	00101$
                                    786 ;	usb.c:282: u8Ep0Buff[i] = buff[i];
      0001DB EB               [12]  787 	mov	a,r3
      0001DC 24 00            [12]  788 	add	a,#_u8Ep0Buff
      0001DE F9               [12]  789 	mov	r1,a
      0001DF E4               [12]  790 	clr	a
      0001E0 34 00            [12]  791 	addc	a,#(_u8Ep0Buff >> 8)
      0001E2 FA               [12]  792 	mov	r2,a
      0001E3 EB               [12]  793 	mov	a,r3
      0001E4 25 36            [12]  794 	add	a,_EP0_SendData1_buff_65536_41
      0001E6 F8               [12]  795 	mov	r0,a
      0001E7 E4               [12]  796 	clr	a
      0001E8 35 37            [12]  797 	addc	a,(_EP0_SendData1_buff_65536_41 + 1)
      0001EA FC               [12]  798 	mov	r4,a
      0001EB AF 38            [24]  799 	mov	r7,(_EP0_SendData1_buff_65536_41 + 2)
      0001ED 88 82            [24]  800 	mov	dpl,r0
      0001EF 8C 83            [24]  801 	mov	dph,r4
      0001F1 8F F0            [24]  802 	mov	b,r7
      0001F3 12 23 0C         [24]  803 	lcall	__gptrget
      0001F6 F8               [12]  804 	mov	r0,a
      0001F7 89 82            [24]  805 	mov	dpl,r1
      0001F9 8A 83            [24]  806 	mov	dph,r2
      0001FB F0               [24]  807 	movx	@dptr,a
                                    808 ;	usb.c:281: for (i = 0; i < len; ++i) {
      0001FC 0B               [12]  809 	inc	r3
      0001FD 80 D6            [24]  810 	sjmp	00107$
      0001FF                        811 00101$:
                                    812 ;	usb.c:284: UEP0_T_LEN = len;
      0001FF 85 35 DD         [24]  813 	mov	_UEP0_T_LEN,_EP0_SendData1_PARM_2
                                    814 ;	usb.c:286: for (i = 0; i < EP0_SZ; ++i) {
      000202 80 2C            [24]  815 	sjmp	00105$
      000204                        816 00116$:
      000204 7F 00            [12]  817 	mov	r7,#0x00
      000206                        818 00109$:
                                    819 ;	usb.c:287: u8Ep0Buff[i] = buff[i];
      000206 EF               [12]  820 	mov	a,r7
      000207 24 00            [12]  821 	add	a,#_u8Ep0Buff
      000209 FD               [12]  822 	mov	r5,a
      00020A E4               [12]  823 	clr	a
      00020B 34 00            [12]  824 	addc	a,#(_u8Ep0Buff >> 8)
      00020D FE               [12]  825 	mov	r6,a
      00020E EF               [12]  826 	mov	a,r7
      00020F 25 36            [12]  827 	add	a,_EP0_SendData1_buff_65536_41
      000211 FA               [12]  828 	mov	r2,a
      000212 E4               [12]  829 	clr	a
      000213 35 37            [12]  830 	addc	a,(_EP0_SendData1_buff_65536_41 + 1)
      000215 FB               [12]  831 	mov	r3,a
      000216 AC 38            [24]  832 	mov	r4,(_EP0_SendData1_buff_65536_41 + 2)
      000218 8A 82            [24]  833 	mov	dpl,r2
      00021A 8B 83            [24]  834 	mov	dph,r3
      00021C 8C F0            [24]  835 	mov	b,r4
      00021E 12 23 0C         [24]  836 	lcall	__gptrget
      000221 FA               [12]  837 	mov	r2,a
      000222 8D 82            [24]  838 	mov	dpl,r5
      000224 8E 83            [24]  839 	mov	dph,r6
      000226 F0               [24]  840 	movx	@dptr,a
                                    841 ;	usb.c:286: for (i = 0; i < EP0_SZ; ++i) {
      000227 0F               [12]  842 	inc	r7
      000228 BF 40 00         [24]  843 	cjne	r7,#0x40,00137$
      00022B                        844 00137$:
      00022B 40 D9            [24]  845 	jc	00109$
                                    846 ;	usb.c:289: UEP0_T_LEN = EP0_SZ;
      00022D 75 DD 40         [24]  847 	mov	_UEP0_T_LEN,#0x40
      000230                        848 00105$:
                                    849 ;	usb.c:291: u8sync = 1;
      000230 75 11 01         [24]  850 	mov	_u8sync,#0x01
                                    851 ;	usb.c:292: UEP0_CTRL = (0x40 | UEP_T_RES_ACK | UEP_R_RES_ACK);
      000233 75 DC 40         [24]  852 	mov	_UEP0_CTRL,#0x40
                                    853 ;	usb.c:293: }
      000236 22               [24]  854 	ret
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'EP0_RecData0'
                                    857 ;------------------------------------------------------------
                                    858 ;len                       Allocated with name '_EP0_RecData0_PARM_2'
                                    859 ;buff                      Allocated to registers 
                                    860 ;------------------------------------------------------------
                                    861 ;	usb.c:294: void EP0_RecData0(uint8_t *buff, uint8_t len)
                                    862 ;	-----------------------------------------
                                    863 ;	 function EP0_RecData0
                                    864 ;	-----------------------------------------
      000237                        865 _EP0_RecData0:
      000237 85 82 09         [24]  866 	mov	_pu8Buff,dpl
      00023A 85 83 0A         [24]  867 	mov	(_pu8Buff + 1),dph
      00023D 85 F0 0B         [24]  868 	mov	(_pu8Buff + 2),b
                                    869 ;	usb.c:296: u8Total = len;
      000240 85 35 0C         [24]  870 	mov	_u8Total,_EP0_RecData0_PARM_2
                                    871 ;	usb.c:299: UEP0_CTRL = (UEP_T_RES_NAK | UEP_R_RES_ACK);
      000243 75 DC 02         [24]  872 	mov	_UEP0_CTRL,#0x02
                                    873 ;	usb.c:300: }
      000246 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'EP0_RecData1'
                                    877 ;------------------------------------------------------------
                                    878 ;len                       Allocated with name '_EP0_RecData1_PARM_2'
                                    879 ;buff                      Allocated to registers 
                                    880 ;------------------------------------------------------------
                                    881 ;	usb.c:301: void EP0_RecData1(uint8_t *buff, uint8_t len)
                                    882 ;	-----------------------------------------
                                    883 ;	 function EP0_RecData1
                                    884 ;	-----------------------------------------
      000247                        885 _EP0_RecData1:
      000247 85 82 09         [24]  886 	mov	_pu8Buff,dpl
      00024A 85 83 0A         [24]  887 	mov	(_pu8Buff + 1),dph
      00024D 85 F0 0B         [24]  888 	mov	(_pu8Buff + 2),b
                                    889 ;	usb.c:303: u8Total = len;
      000250 85 35 0C         [24]  890 	mov	_u8Total,_EP0_RecData1_PARM_2
                                    891 ;	usb.c:306: UEP0_CTRL = (0x80 | UEP_T_RES_NAK | UEP_R_RES_ACK);
      000253 75 DC 82         [24]  892 	mov	_UEP0_CTRL,#0x82
                                    893 ;	usb.c:307: }
      000256 22               [24]  894 	ret
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'EP0_Stall'
                                    897 ;------------------------------------------------------------
                                    898 ;	usb.c:308: void EP0_Stall()
                                    899 ;	-----------------------------------------
                                    900 ;	 function EP0_Stall
                                    901 ;	-----------------------------------------
      000257                        902 _EP0_Stall:
                                    903 ;	usb.c:310: UEP0_T_LEN = 0x00;
      000257 75 DD 00         [24]  904 	mov	_UEP0_T_LEN,#0x00
                                    905 ;	usb.c:311: UEP0_CTRL = 0x03;
      00025A 75 DC 03         [24]  906 	mov	_UEP0_CTRL,#0x03
                                    907 ;	usb.c:312: }
      00025D 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'USB_InitClock'
                                    911 ;------------------------------------------------------------
                                    912 ;	usb.c:317: void USB_InitClock(void) {
                                    913 ;	-----------------------------------------
                                    914 ;	 function USB_InitClock
                                    915 ;	-----------------------------------------
      00025E                        916 _USB_InitClock:
                                    917 ;	usb.c:319: }
      00025E 22               [24]  918 	ret
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'USB_Init'
                                    921 ;------------------------------------------------------------
                                    922 ;	usb.c:321: void USB_Init(void) {
                                    923 ;	-----------------------------------------
                                    924 ;	 function USB_Init
                                    925 ;	-----------------------------------------
      00025F                        926 _USB_Init:
                                    927 ;	usb.c:326: USB_CTRL = 0x29;
      00025F 75 E2 29         [24]  928 	mov	_USB_CTRL,#0x29
                                    929 ;	usb.c:327: UDEV_CTRL |= bUD_PORT_EN;
      000262 43 D1 01         [24]  930 	orl	_UDEV_CTRL,#0x01
                                    931 ;	usb.c:331: }
      000265 22               [24]  932 	ret
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'USB_Task'
                                    935 ;------------------------------------------------------------
                                    936 ;	usb.c:333: void USB_Task(void) {
                                    937 ;	-----------------------------------------
                                    938 ;	 function USB_Task
                                    939 ;	-----------------------------------------
      000266                        940 _USB_Task:
                                    941 ;	usb.c:336: if (UIF_SUSPEND) {
                                    942 ;	usb.c:337: UIF_SUSPEND = 0;
                                    943 ;	assignBit
      000266 10 DA 02         [24]  944 	jbc	_UIF_SUSPEND,00163$
      000269 80 01            [24]  945 	sjmp	00123$
      00026B                        946 00163$:
      00026B 22               [24]  947 	ret
      00026C                        948 00123$:
                                    949 ;	usb.c:338: } else if (UIF_BUS_RST) {
      00026C 30 D8 1A         [24]  950 	jnb	_UIF_BUS_RST,00120$
                                    951 ;	usb.c:340: USB_DEV_AD = 0x00;
      00026F 75 E3 00         [24]  952 	mov	_USB_DEV_AD,#0x00
                                    953 ;	usb.c:341: UEP0_T_LEN = EP0_SZ;
      000272 75 DD 40         [24]  954 	mov	_UEP0_T_LEN,#0x40
                                    955 ;	usb.c:342: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      000275 75 DC 02         [24]  956 	mov	_UEP0_CTRL,#0x02
                                    957 ;	usb.c:343: UIF_TRANSFER = 0;
                                    958 ;	assignBit
      000278 C2 D9            [12]  959 	clr	_UIF_TRANSFER
                                    960 ;	usb.c:344: UIF_BUS_RST = 0;
                                    961 ;	assignBit
      00027A C2 D8            [12]  962 	clr	_UIF_BUS_RST
                                    963 ;	usb.c:345: UEP0_DMA = (uint16_t)u8Ep0Buff;
      00027C 75 EC 00         [24]  964 	mov	((_UEP0_DMA >> 0) & 0xFF),#_u8Ep0Buff
      00027F 75 ED 00         [24]  965 	mov	((_UEP0_DMA >> 8) & 0xFF),#(_u8Ep0Buff >> 8)
                                    966 ;	usb.c:346: u8Addr = 0;
      000282 75 0F 00         [24]  967 	mov	_u8Addr,#0x00
                                    968 ;	usb.c:347: u8Config = 0;
      000285 75 10 00         [24]  969 	mov	_u8Config,#0x00
      000288 22               [24]  970 	ret
      000289                        971 00120$:
                                    972 ;	usb.c:348: } else if (UIF_TRANSFER) {
      000289 20 D9 01         [24]  973 	jb	_UIF_TRANSFER,00165$
      00028C 22               [24]  974 	ret
      00028D                        975 00165$:
                                    976 ;	usb.c:356: UEP0_CTRL = UEP_R_RES_NAK | UEP_T_RES_NAK;
      00028D 75 DC 0A         [24]  977 	mov	_UEP0_CTRL,#0x0a
                                    978 ;	usb.c:358: if((USB_INT_ST & 0x0F) == 0x00) {
      000290 E5 D9            [12]  979 	mov	a,_USB_INT_ST
      000292 54 0F            [12]  980 	anl	a,#0x0f
      000294 60 02            [24]  981 	jz	00167$
      000296 80 31            [24]  982 	sjmp	00115$
      000298                        983 00167$:
                                    984 ;	usb.c:360: if((USB_INT_ST & 0x30) == 0x20) {
      000298 AE D9            [24]  985 	mov	r6,_USB_INT_ST
      00029A 53 06 30         [24]  986 	anl	ar6,#0x30
      00029D 7F 00            [12]  987 	mov	r7,#0x00
      00029F BE 20 08         [24]  988 	cjne	r6,#0x20,00107$
      0002A2 BF 00 05         [24]  989 	cjne	r7,#0x00,00107$
                                    990 ;	usb.c:362: EP0_In();
      0002A5 12 04 20         [24]  991 	lcall	_EP0_In
      0002A8 80 41            [24]  992 	sjmp	00116$
      0002AA                        993 00107$:
                                    994 ;	usb.c:365: if((USB_INT_ST & 0x30) == 0x30) {
      0002AA AE D9            [24]  995 	mov	r6,_USB_INT_ST
      0002AC 53 06 30         [24]  996 	anl	ar6,#0x30
      0002AF 7F 00            [12]  997 	mov	r7,#0x00
      0002B1 BE 30 08         [24]  998 	cjne	r6,#0x30,00104$
      0002B4 BF 00 05         [24]  999 	cjne	r7,#0x00,00104$
                                   1000 ;	usb.c:367: EP0_Setup();
      0002B7 12 02 EE         [24] 1001 	lcall	_EP0_Setup
      0002BA 80 2F            [24] 1002 	sjmp	00116$
      0002BC                       1003 00104$:
                                   1004 ;	usb.c:368: } else if ((USB_INT_ST & 0x30) == 0x00) {
      0002BC E5 D9            [12] 1005 	mov	a,_USB_INT_ST
      0002BE 54 30            [12] 1006 	anl	a,#0x30
      0002C0 60 02            [24] 1007 	jz	00173$
      0002C2 80 27            [24] 1008 	sjmp	00116$
      0002C4                       1009 00173$:
                                   1010 ;	usb.c:370: EP0_Out();
      0002C4 12 03 56         [24] 1011 	lcall	_EP0_Out
      0002C7 80 22            [24] 1012 	sjmp	00116$
      0002C9                       1013 00115$:
                                   1014 ;	usb.c:376: if((USB_INT_ST & 0x0F) == 0x01) {
      0002C9 AE D9            [24] 1015 	mov	r6,_USB_INT_ST
      0002CB 53 06 0F         [24] 1016 	anl	ar6,#0x0f
      0002CE 7F 00            [12] 1017 	mov	r7,#0x00
      0002D0 BE 01 18         [24] 1018 	cjne	r6,#0x01,00116$
      0002D3 BF 00 15         [24] 1019 	cjne	r7,#0x00,00116$
                                   1020 ;	usb.c:378: if((USB_INT_ST & 0x30) == 0x20) {
      0002D6 AE D9            [24] 1021 	mov	r6,_USB_INT_ST
      0002D8 53 06 30         [24] 1022 	anl	ar6,#0x30
      0002DB 7F 00            [12] 1023 	mov	r7,#0x00
      0002DD BE 20 08         [24] 1024 	cjne	r6,#0x20,00110$
      0002E0 BF 00 05         [24] 1025 	cjne	r7,#0x00,00110$
                                   1026 ;	usb.c:379: EP1_In();
      0002E3 12 09 14         [24] 1027 	lcall	_EP1_In
      0002E6 80 03            [24] 1028 	sjmp	00116$
      0002E8                       1029 00110$:
                                   1030 ;	usb.c:381: EP1_Out();
      0002E8 12 09 13         [24] 1031 	lcall	_EP1_Out
      0002EB                       1032 00116$:
                                   1033 ;	usb.c:385: UIF_TRANSFER = 0;
                                   1034 ;	assignBit
      0002EB C2 D9            [12] 1035 	clr	_UIF_TRANSFER
                                   1036 ;	usb.c:388: }
      0002ED 22               [24] 1037 	ret
                                   1038 ;------------------------------------------------------------
                                   1039 ;Allocation info for local variables in function 'EP0_Setup'
                                   1040 ;------------------------------------------------------------
                                   1041 ;i                         Allocated to registers r7 
                                   1042 ;u8RequestType             Allocated to registers r7 
                                   1043 ;------------------------------------------------------------
                                   1044 ;	usb.c:390: static void EP0_Setup(void) {
                                   1045 ;	-----------------------------------------
                                   1046 ;	 function EP0_Setup
                                   1047 ;	-----------------------------------------
      0002EE                       1048 _EP0_Setup:
                                   1049 ;	usb.c:394: Led_On();
      0002EE 12 01 33         [24] 1050 	lcall	_Led_On
                                   1051 ;	usb.c:395: for (i = 0; i < 8; ++i) {
      0002F1 7F 00            [12] 1052 	mov	r7,#0x00
      0002F3                       1053 00107$:
                                   1054 ;	usb.c:396: u8SetupPacket[i] = u8Ep0Buff[i];
      0002F3 EF               [12] 1055 	mov	a,r7
      0002F4 24 6C            [12] 1056 	add	a,#_u8SetupPacket
      0002F6 FD               [12] 1057 	mov	r5,a
      0002F7 E4               [12] 1058 	clr	a
      0002F8 34 01            [12] 1059 	addc	a,#(_u8SetupPacket >> 8)
      0002FA FE               [12] 1060 	mov	r6,a
      0002FB EF               [12] 1061 	mov	a,r7
      0002FC 24 00            [12] 1062 	add	a,#_u8Ep0Buff
      0002FE F5 82            [12] 1063 	mov	dpl,a
      000300 E4               [12] 1064 	clr	a
      000301 34 00            [12] 1065 	addc	a,#(_u8Ep0Buff >> 8)
      000303 F5 83            [12] 1066 	mov	dph,a
      000305 E0               [24] 1067 	movx	a,@dptr
      000306 FC               [12] 1068 	mov	r4,a
      000307 8D 82            [24] 1069 	mov	dpl,r5
      000309 8E 83            [24] 1070 	mov	dph,r6
      00030B F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	usb.c:395: for (i = 0; i < 8; ++i) {
      00030C 0F               [12] 1073 	inc	r7
      00030D BF 08 00         [24] 1074 	cjne	r7,#0x08,00132$
      000310                       1075 00132$:
      000310 40 E1            [24] 1076 	jc	00107$
                                   1077 ;	usb.c:402: u8RequestType = (u8Ep0Buff[0] & 0x60) >> 5;
      000312 90 00 00         [24] 1078 	mov	dptr,#_u8Ep0Buff
      000315 E0               [24] 1079 	movx	a,@dptr
      000316 FF               [12] 1080 	mov	r7,a
      000317 53 07 60         [24] 1081 	anl	ar7,#0x60
      00031A E4               [12] 1082 	clr	a
      00031B C4               [12] 1083 	swap	a
      00031C 03               [12] 1084 	rr	a
      00031D CF               [12] 1085 	xch	a,r7
      00031E C4               [12] 1086 	swap	a
      00031F 03               [12] 1087 	rr	a
      000320 54 07            [12] 1088 	anl	a,#0x07
      000322 6F               [12] 1089 	xrl	a,r7
      000323 CF               [12] 1090 	xch	a,r7
      000324 54 07            [12] 1091 	anl	a,#0x07
      000326 CF               [12] 1092 	xch	a,r7
      000327 6F               [12] 1093 	xrl	a,r7
      000328 CF               [12] 1094 	xch	a,r7
      000329 30 E2 02         [24] 1095 	jnb	acc.2,00134$
      00032C 44 F8            [12] 1096 	orl	a,#0xf8
      00032E                       1097 00134$:
      00032E FE               [12] 1098 	mov	r6,a
                                   1099 ;	usb.c:403: switch(u8RequestType) {
      00032F BF 00 02         [24] 1100 	cjne	r7,#0x00,00135$
      000332 80 0A            [24] 1101 	sjmp	00102$
      000334                       1102 00135$:
      000334 BF 01 02         [24] 1103 	cjne	r7,#0x01,00136$
      000337 80 08            [24] 1104 	sjmp	00103$
      000339                       1105 00136$:
                                   1106 ;	usb.c:404: case 0x00:
      000339 BF 02 0B         [24] 1107 	cjne	r7,#0x02,00105$
      00033C 80 06            [24] 1108 	sjmp	00104$
      00033E                       1109 00102$:
                                   1110 ;	usb.c:406: StandardRequest();
                                   1111 ;	usb.c:407: break;
                                   1112 ;	usb.c:408: case 0x01:
      00033E 02 04 C3         [24] 1113 	ljmp	_StandardRequest
      000341                       1114 00103$:
                                   1115 ;	usb.c:410: ClassRequest();
                                   1116 ;	usb.c:411: break;
                                   1117 ;	usb.c:412: case 0x02:
      000341 02 05 17         [24] 1118 	ljmp	_ClassRequest
      000344                       1119 00104$:
                                   1120 ;	usb.c:414: VendorRequest();
                                   1121 ;	usb.c:415: break;
                                   1122 ;	usb.c:416: default:
      000344 02 05 33         [24] 1123 	ljmp	_VendorRequest
      000347                       1124 00105$:
                                   1125 ;	usb.c:419: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      000347 75 35 40         [24] 1126 	mov	_EP0_RecData0_PARM_2,#0x40
      00034A 90 00 40         [24] 1127 	mov	dptr,#_u8ReceiveBuff
      00034D 75 F0 00         [24] 1128 	mov	b,#0x00
      000350 12 02 37         [24] 1129 	lcall	_EP0_RecData0
                                   1130 ;	usb.c:420: EP0_Stall();
                                   1131 ;	usb.c:422: }
                                   1132 ;	usb.c:423: }
      000353 02 02 57         [24] 1133 	ljmp	_EP0_Stall
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'EP0_Out'
                                   1136 ;------------------------------------------------------------
                                   1137 ;i                         Allocated to registers r7 
                                   1138 ;------------------------------------------------------------
                                   1139 ;	usb.c:425: static void EP0_Out(void) {
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function EP0_Out
                                   1142 ;	-----------------------------------------
      000356                       1143 _EP0_Out:
                                   1144 ;	usb.c:427: if (u8ControlState == DATA_STATE) {
      000356 74 01            [12] 1145 	mov	a,#0x01
      000358 B5 12 02         [24] 1146 	cjne	a,_u8ControlState,00161$
      00035B 80 03            [24] 1147 	sjmp	00162$
      00035D                       1148 00161$:
      00035D 02 04 08         [24] 1149 	ljmp	00114$
      000360                       1150 00162$:
                                   1151 ;	usb.c:428: if (u8Total <= EP0_SZ) {
      000360 E5 0C            [12] 1152 	mov	a,_u8Total
      000362 24 BF            [12] 1153 	add	a,#0xff - 0x40
      000364 40 43            [24] 1154 	jc	00128$
                                   1155 ;	usb.c:430: for (i = 0; i < u8Total; ++i) {
      000366 7F 00            [12] 1156 	mov	r7,#0x00
      000368                       1157 00117$:
      000368 C3               [12] 1158 	clr	c
      000369 EF               [12] 1159 	mov	a,r7
      00036A 95 0C            [12] 1160 	subb	a,_u8Total
      00036C 50 22            [24] 1161 	jnc	00101$
                                   1162 ;	usb.c:431: pu8Buff[i] = u8Ep0Buff[i];
      00036E EF               [12] 1163 	mov	a,r7
      00036F 25 09            [12] 1164 	add	a,_pu8Buff
      000371 FC               [12] 1165 	mov	r4,a
      000372 E4               [12] 1166 	clr	a
      000373 35 0A            [12] 1167 	addc	a,(_pu8Buff + 1)
      000375 FD               [12] 1168 	mov	r5,a
      000376 AE 0B            [24] 1169 	mov	r6,(_pu8Buff + 2)
      000378 EF               [12] 1170 	mov	a,r7
      000379 24 00            [12] 1171 	add	a,#_u8Ep0Buff
      00037B F5 82            [12] 1172 	mov	dpl,a
      00037D E4               [12] 1173 	clr	a
      00037E 34 00            [12] 1174 	addc	a,#(_u8Ep0Buff >> 8)
      000380 F5 83            [12] 1175 	mov	dph,a
      000382 E0               [24] 1176 	movx	a,@dptr
      000383 FB               [12] 1177 	mov	r3,a
      000384 8C 82            [24] 1178 	mov	dpl,r4
      000386 8D 83            [24] 1179 	mov	dph,r5
      000388 8E F0            [24] 1180 	mov	b,r6
      00038A 12 22 D4         [24] 1181 	lcall	__gptrput
                                   1182 ;	usb.c:430: for (i = 0; i < u8Total; ++i) {
      00038D 0F               [12] 1183 	inc	r7
      00038E 80 D8            [24] 1184 	sjmp	00117$
      000390                       1185 00101$:
                                   1186 ;	usb.c:439: if (u8HidReq) {
      000390 E5 0D            [12] 1187 	mov	a,_u8HidReq
      000392 60 06            [24] 1188 	jz	00103$
                                   1189 ;	usb.c:441: EP0_Out_CallBack();
      000394 12 17 78         [24] 1190 	lcall	_EP0_Out_CallBack
                                   1191 ;	usb.c:443: u8HidReq = 0;
      000397 75 0D 00         [24] 1192 	mov	_u8HidReq,#0x00
      00039A                       1193 00103$:
                                   1194 ;	usb.c:445: u8ControlState = STATUS_STATE;
      00039A 75 12 02         [24] 1195 	mov	_u8ControlState,#0x02
                                   1196 ;	usb.c:446: EP0_SendData1(u8TransBuff, 0);
      00039D 75 35 00         [24] 1197 	mov	_EP0_SendData1_PARM_2,#0x00
      0003A0 90 00 D6         [24] 1198 	mov	dptr,#_u8TransBuff
      0003A3 75 F0 00         [24] 1199 	mov	b,#0x00
      0003A6 02 01 B8         [24] 1200 	ljmp	_EP0_SendData1
                                   1201 ;	usb.c:448: for (i = 0; i < EP0_SZ; ++i) {
      0003A9                       1202 00128$:
      0003A9 7F 00            [12] 1203 	mov	r7,#0x00
      0003AB                       1204 00119$:
                                   1205 ;	usb.c:449: pu8Buff[i] = u8Ep0Buff[i];
      0003AB EF               [12] 1206 	mov	a,r7
      0003AC 25 09            [12] 1207 	add	a,_pu8Buff
      0003AE FC               [12] 1208 	mov	r4,a
      0003AF E4               [12] 1209 	clr	a
      0003B0 35 0A            [12] 1210 	addc	a,(_pu8Buff + 1)
      0003B2 FD               [12] 1211 	mov	r5,a
      0003B3 AE 0B            [24] 1212 	mov	r6,(_pu8Buff + 2)
      0003B5 EF               [12] 1213 	mov	a,r7
      0003B6 24 00            [12] 1214 	add	a,#_u8Ep0Buff
      0003B8 F5 82            [12] 1215 	mov	dpl,a
      0003BA E4               [12] 1216 	clr	a
      0003BB 34 00            [12] 1217 	addc	a,#(_u8Ep0Buff >> 8)
      0003BD F5 83            [12] 1218 	mov	dph,a
      0003BF E0               [24] 1219 	movx	a,@dptr
      0003C0 8C 82            [24] 1220 	mov	dpl,r4
      0003C2 8D 83            [24] 1221 	mov	dph,r5
      0003C4 8E F0            [24] 1222 	mov	b,r6
      0003C6 12 22 D4         [24] 1223 	lcall	__gptrput
                                   1224 ;	usb.c:448: for (i = 0; i < EP0_SZ; ++i) {
      0003C9 0F               [12] 1225 	inc	r7
      0003CA BF 40 00         [24] 1226 	cjne	r7,#0x40,00166$
      0003CD                       1227 00166$:
      0003CD 40 DC            [24] 1228 	jc	00119$
                                   1229 ;	usb.c:454: if (UEP0_CTRL & 0x80) {
      0003CF E5 DC            [12] 1230 	mov	a,_UEP0_CTRL
      0003D1 30 E7 1A         [24] 1231 	jnb	acc.7,00106$
                                   1232 ;	usb.c:455: EP0_RecData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      0003D4 74 40            [12] 1233 	mov	a,#0x40
      0003D6 25 09            [12] 1234 	add	a,_pu8Buff
      0003D8 FD               [12] 1235 	mov	r5,a
      0003D9 E4               [12] 1236 	clr	a
      0003DA 35 0A            [12] 1237 	addc	a,(_pu8Buff + 1)
      0003DC FE               [12] 1238 	mov	r6,a
      0003DD AF 0B            [24] 1239 	mov	r7,(_pu8Buff + 2)
      0003DF E5 0C            [12] 1240 	mov	a,_u8Total
      0003E1 24 C0            [12] 1241 	add	a,#0xc0
      0003E3 F5 35            [12] 1242 	mov	_EP0_RecData0_PARM_2,a
      0003E5 8D 82            [24] 1243 	mov	dpl,r5
      0003E7 8E 83            [24] 1244 	mov	dph,r6
      0003E9 8F F0            [24] 1245 	mov	b,r7
      0003EB 02 02 37         [24] 1246 	ljmp	_EP0_RecData0
      0003EE                       1247 00106$:
                                   1248 ;	usb.c:457: EP0_RecData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      0003EE 74 40            [12] 1249 	mov	a,#0x40
      0003F0 25 09            [12] 1250 	add	a,_pu8Buff
      0003F2 FD               [12] 1251 	mov	r5,a
      0003F3 E4               [12] 1252 	clr	a
      0003F4 35 0A            [12] 1253 	addc	a,(_pu8Buff + 1)
      0003F6 FE               [12] 1254 	mov	r6,a
      0003F7 AF 0B            [24] 1255 	mov	r7,(_pu8Buff + 2)
      0003F9 E5 0C            [12] 1256 	mov	a,_u8Total
      0003FB 24 C0            [12] 1257 	add	a,#0xc0
      0003FD F5 35            [12] 1258 	mov	_EP0_RecData1_PARM_2,a
      0003FF 8D 82            [24] 1259 	mov	dpl,r5
      000401 8E 83            [24] 1260 	mov	dph,r6
      000403 8F F0            [24] 1261 	mov	b,r7
      000405 02 02 47         [24] 1262 	ljmp	_EP0_RecData1
      000408                       1263 00114$:
                                   1264 ;	usb.c:460: } else if (u8ControlState == STATUS_STATE) {
      000408 74 02            [12] 1265 	mov	a,#0x02
      00040A B5 12 12         [24] 1266 	cjne	a,_u8ControlState,00121$
                                   1267 ;	usb.c:461: u8ControlState = SETUP_STATE;
      00040D 75 12 00         [24] 1268 	mov	_u8ControlState,#0x00
                                   1269 ;	usb.c:462: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      000410 75 35 40         [24] 1270 	mov	_EP0_RecData0_PARM_2,#0x40
      000413 90 00 40         [24] 1271 	mov	dptr,#_u8ReceiveBuff
      000416 75 F0 00         [24] 1272 	mov	b,#0x00
      000419 12 02 37         [24] 1273 	lcall	_EP0_RecData0
                                   1274 ;	usb.c:463: Led_Off();
                                   1275 ;	usb.c:465: }
      00041C 02 01 36         [24] 1276 	ljmp	_Led_Off
      00041F                       1277 00121$:
      00041F 22               [24] 1278 	ret
                                   1279 ;------------------------------------------------------------
                                   1280 ;Allocation info for local variables in function 'EP0_In'
                                   1281 ;------------------------------------------------------------
                                   1282 ;	usb.c:466: static void EP0_In(void) {
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function EP0_In
                                   1285 ;	-----------------------------------------
      000420                       1286 _EP0_In:
                                   1287 ;	usb.c:468: if (u8ControlState == DATA_STATE) {
      000420 74 01            [12] 1288 	mov	a,#0x01
      000422 B5 12 02         [24] 1289 	cjne	a,_u8ControlState,00143$
      000425 80 03            [24] 1290 	sjmp	00144$
      000427                       1291 00143$:
      000427 02 04 A1         [24] 1292 	ljmp	00115$
      00042A                       1293 00144$:
                                   1294 ;	usb.c:469: if (u8Total <= EP0_SZ) {
      00042A E5 0C            [12] 1295 	mov	a,_u8Total
      00042C 24 BF            [12] 1296 	add	a,#0xff - 0x40
      00042E 40 39            [24] 1297 	jc	00108$
                                   1298 ;	usb.c:470: u8Total = 0;
      000430 75 0C 00         [24] 1299 	mov	_u8Total,#0x00
                                   1300 ;	usb.c:471: u8ControlState = STATUS_STATE;
      000433 75 12 02         [24] 1301 	mov	_u8ControlState,#0x02
                                   1302 ;	usb.c:472: EP0_RecData1(u8ReceiveBuff, 0);
      000436 75 35 00         [24] 1303 	mov	_EP0_RecData1_PARM_2,#0x00
      000439 90 00 40         [24] 1304 	mov	dptr,#_u8ReceiveBuff
      00043C 75 F0 00         [24] 1305 	mov	b,#0x00
      00043F 12 02 47         [24] 1306 	lcall	_EP0_RecData1
                                   1307 ;	usb.c:473: if (u8sync) {
      000442 E5 11            [12] 1308 	mov	a,_u8sync
      000444 60 11            [24] 1309 	jz	00102$
                                   1310 ;	usb.c:474: EP0_SendData0(pu8Buff, 0);
      000446 75 35 00         [24] 1311 	mov	_EP0_SendData0_PARM_2,#0x00
      000449 85 09 82         [24] 1312 	mov	dpl,_pu8Buff
      00044C 85 0A 83         [24] 1313 	mov	dph,(_pu8Buff + 1)
      00044F 85 0B F0         [24] 1314 	mov	b,(_pu8Buff + 2)
      000452 12 01 39         [24] 1315 	lcall	_EP0_SendData0
      000455 80 0F            [24] 1316 	sjmp	00103$
      000457                       1317 00102$:
                                   1318 ;	usb.c:476: EP0_SendData1(pu8Buff, 0);
      000457 75 35 00         [24] 1319 	mov	_EP0_SendData1_PARM_2,#0x00
      00045A 85 09 82         [24] 1320 	mov	dpl,_pu8Buff
      00045D 85 0A 83         [24] 1321 	mov	dph,(_pu8Buff + 1)
      000460 85 0B F0         [24] 1322 	mov	b,(_pu8Buff + 2)
      000463 12 01 B8         [24] 1323 	lcall	_EP0_SendData1
      000466                       1324 00103$:
                                   1325 ;	usb.c:478: Led_Off();
      000466 02 01 36         [24] 1326 	ljmp	_Led_Off
      000469                       1327 00108$:
                                   1328 ;	usb.c:480: if (u8sync) {
      000469 E5 11            [12] 1329 	mov	a,_u8sync
      00046B 60 1A            [24] 1330 	jz	00105$
                                   1331 ;	usb.c:481: EP0_SendData0(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      00046D 74 40            [12] 1332 	mov	a,#0x40
      00046F 25 09            [12] 1333 	add	a,_pu8Buff
      000471 FD               [12] 1334 	mov	r5,a
      000472 E4               [12] 1335 	clr	a
      000473 35 0A            [12] 1336 	addc	a,(_pu8Buff + 1)
      000475 FE               [12] 1337 	mov	r6,a
      000476 AF 0B            [24] 1338 	mov	r7,(_pu8Buff + 2)
      000478 E5 0C            [12] 1339 	mov	a,_u8Total
      00047A 24 C0            [12] 1340 	add	a,#0xc0
      00047C F5 35            [12] 1341 	mov	_EP0_SendData0_PARM_2,a
      00047E 8D 82            [24] 1342 	mov	dpl,r5
      000480 8E 83            [24] 1343 	mov	dph,r6
      000482 8F F0            [24] 1344 	mov	b,r7
      000484 02 01 39         [24] 1345 	ljmp	_EP0_SendData0
      000487                       1346 00105$:
                                   1347 ;	usb.c:483: EP0_SendData1(pu8Buff + EP0_SZ, u8Total - EP0_SZ);
      000487 74 40            [12] 1348 	mov	a,#0x40
      000489 25 09            [12] 1349 	add	a,_pu8Buff
      00048B FD               [12] 1350 	mov	r5,a
      00048C E4               [12] 1351 	clr	a
      00048D 35 0A            [12] 1352 	addc	a,(_pu8Buff + 1)
      00048F FE               [12] 1353 	mov	r6,a
      000490 AF 0B            [24] 1354 	mov	r7,(_pu8Buff + 2)
      000492 E5 0C            [12] 1355 	mov	a,_u8Total
      000494 24 C0            [12] 1356 	add	a,#0xc0
      000496 F5 35            [12] 1357 	mov	_EP0_SendData1_PARM_2,a
      000498 8D 82            [24] 1358 	mov	dpl,r5
      00049A 8E 83            [24] 1359 	mov	dph,r6
      00049C 8F F0            [24] 1360 	mov	b,r7
      00049E 02 01 B8         [24] 1361 	ljmp	_EP0_SendData1
      0004A1                       1362 00115$:
                                   1363 ;	usb.c:486: } else if (u8ControlState == STATUS_STATE) {
      0004A1 74 02            [12] 1364 	mov	a,#0x02
      0004A3 B5 12 1C         [24] 1365 	cjne	a,_u8ControlState,00117$
                                   1366 ;	usb.c:487: if (u8Addr) {
      0004A6 E5 0F            [12] 1367 	mov	a,_u8Addr
      0004A8 60 06            [24] 1368 	jz	00111$
                                   1369 ;	usb.c:488: USB_DEV_AD = u8Addr;
      0004AA 85 0F E3         [24] 1370 	mov	_USB_DEV_AD,_u8Addr
                                   1371 ;	usb.c:489: u8Addr = 0;
      0004AD 75 0F 00         [24] 1372 	mov	_u8Addr,#0x00
      0004B0                       1373 00111$:
                                   1374 ;	usb.c:492: u8ControlState = SETUP_STATE;
      0004B0 75 12 00         [24] 1375 	mov	_u8ControlState,#0x00
                                   1376 ;	usb.c:493: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      0004B3 75 35 40         [24] 1377 	mov	_EP0_RecData0_PARM_2,#0x40
      0004B6 90 00 40         [24] 1378 	mov	dptr,#_u8ReceiveBuff
      0004B9 75 F0 00         [24] 1379 	mov	b,#0x00
      0004BC 12 02 37         [24] 1380 	lcall	_EP0_RecData0
                                   1381 ;	usb.c:494: Led_Off();
                                   1382 ;	usb.c:496: }
      0004BF 02 01 36         [24] 1383 	ljmp	_Led_Off
      0004C2                       1384 00117$:
      0004C2 22               [24] 1385 	ret
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'StandardRequest'
                                   1388 ;------------------------------------------------------------
                                   1389 ;	usb.c:498: static void StandardRequest(void) {
                                   1390 ;	-----------------------------------------
                                   1391 ;	 function StandardRequest
                                   1392 ;	-----------------------------------------
      0004C3                       1393 _StandardRequest:
                                   1394 ;	usb.c:500: switch(u8SetupPacket[1]) {
      0004C3 90 01 6D         [24] 1395 	mov	dptr,#(_u8SetupPacket + 0x0001)
      0004C6 E0               [24] 1396 	movx	a,@dptr
      0004C7 FF               [12] 1397 	mov  r7,a
      0004C8 24 F3            [12] 1398 	add	a,#0xff - 0x0c
      0004CA 50 01            [24] 1399 	jnc	00119$
      0004CC 22               [24] 1400 	ret
      0004CD                       1401 00119$:
      0004CD EF               [12] 1402 	mov	a,r7
      0004CE 24 0A            [12] 1403 	add	a,#(00120$-3-.)
      0004D0 83               [24] 1404 	movc	a,@a+pc
      0004D1 F5 82            [12] 1405 	mov	dpl,a
      0004D3 EF               [12] 1406 	mov	a,r7
      0004D4 24 11            [12] 1407 	add	a,#(00121$-3-.)
      0004D6 83               [24] 1408 	movc	a,@a+pc
      0004D7 F5 83            [12] 1409 	mov	dph,a
      0004D9 E4               [12] 1410 	clr	a
      0004DA 73               [24] 1411 	jmp	@a+dptr
      0004DB                       1412 00120$:
      0004DB F5                    1413 	.db	00101$
      0004DC F8                    1414 	.db	00102$
      0004DD 16                    1415 	.db	00113$
      0004DE FB                    1416 	.db	00103$
      0004DF 16                    1417 	.db	00113$
      0004E0 FE                    1418 	.db	00104$
      0004E1 01                    1419 	.db	00105$
      0004E2 04                    1420 	.db	00106$
      0004E3 07                    1421 	.db	00107$
      0004E4 0A                    1422 	.db	00108$
      0004E5 0D                    1423 	.db	00109$
      0004E6 10                    1424 	.db	00110$
      0004E7 13                    1425 	.db	00111$
      0004E8                       1426 00121$:
      0004E8 04                    1427 	.db	00101$>>8
      0004E9 04                    1428 	.db	00102$>>8
      0004EA 05                    1429 	.db	00113$>>8
      0004EB 04                    1430 	.db	00103$>>8
      0004EC 05                    1431 	.db	00113$>>8
      0004ED 04                    1432 	.db	00104$>>8
      0004EE 05                    1433 	.db	00105$>>8
      0004EF 05                    1434 	.db	00106$>>8
      0004F0 05                    1435 	.db	00107$>>8
      0004F1 05                    1436 	.db	00108$>>8
      0004F2 05                    1437 	.db	00109$>>8
      0004F3 05                    1438 	.db	00110$>>8
      0004F4 05                    1439 	.db	00111$>>8
                                   1440 ;	usb.c:501: case 0x00:
      0004F5                       1441 00101$:
                                   1442 ;	usb.c:503: GetStatus();
                                   1443 ;	usb.c:504: break;
                                   1444 ;	usb.c:505: case 0x01:
      0004F5 02 05 34         [24] 1445 	ljmp	_GetStatus
      0004F8                       1446 00102$:
                                   1447 ;	usb.c:507: ClearFeature();
                                   1448 ;	usb.c:508: break;
                                   1449 ;	usb.c:509: case 0x03:
      0004F8 02 05 A8         [24] 1450 	ljmp	_ClearFeature
      0004FB                       1451 00103$:
                                   1452 ;	usb.c:511: SetFeature();
                                   1453 ;	usb.c:512: break;
                                   1454 ;	usb.c:513: case 0x05:
      0004FB 02 05 ED         [24] 1455 	ljmp	_SetFeature
      0004FE                       1456 00104$:
                                   1457 ;	usb.c:515: SetAddress();
                                   1458 ;	usb.c:516: break;
                                   1459 ;	usb.c:517: case 0x06:
      0004FE 02 06 32         [24] 1460 	ljmp	_SetAddress
      000501                       1461 00105$:
                                   1462 ;	usb.c:519: GetDescriptor();
                                   1463 ;	usb.c:520: break;
                                   1464 ;	usb.c:521: case 0x07:
      000501 02 06 48         [24] 1465 	ljmp	_GetDescriptor
      000504                       1466 00106$:
                                   1467 ;	usb.c:523: SetDescriptor();
                                   1468 ;	usb.c:524: break;
                                   1469 ;	usb.c:525: case 0x08:
      000504 02 08 AE         [24] 1470 	ljmp	_SetDescriptor
      000507                       1471 00107$:
                                   1472 ;	usb.c:527: GetConfiguration();
                                   1473 ;	usb.c:528: break;
                                   1474 ;	usb.c:529: case 0x09:
      000507 02 08 C1         [24] 1475 	ljmp	_GetConfiguration
      00050A                       1476 00108$:
                                   1477 ;	usb.c:531: SetConfiguration();
                                   1478 ;	usb.c:532: break;
                                   1479 ;	usb.c:533: case 0x0A:
      00050A 02 08 D7         [24] 1480 	ljmp	_SetConfiguration
      00050D                       1481 00109$:
                                   1482 ;	usb.c:535: GetInterface();
                                   1483 ;	usb.c:536: break;
                                   1484 ;	usb.c:537: case 0x0B:
      00050D 02 08 ED         [24] 1485 	ljmp	_GetInterface
      000510                       1486 00110$:
                                   1487 ;	usb.c:539: SetInterface();
                                   1488 ;	usb.c:540: break;
                                   1489 ;	usb.c:541: case 0x0C:
      000510 02 09 02         [24] 1490 	ljmp	_SetInterface
      000513                       1491 00111$:
                                   1492 ;	usb.c:543: SynchFrame();
                                   1493 ;	usb.c:545: }
                                   1494 ;	usb.c:546: }
      000513 02 09 12         [24] 1495 	ljmp	_SynchFrame
      000516                       1496 00113$:
      000516 22               [24] 1497 	ret
                                   1498 ;------------------------------------------------------------
                                   1499 ;Allocation info for local variables in function 'ClassRequest'
                                   1500 ;------------------------------------------------------------
                                   1501 ;	usb.c:547: static void ClassRequest(void) {
                                   1502 ;	-----------------------------------------
                                   1503 ;	 function ClassRequest
                                   1504 ;	-----------------------------------------
      000517                       1505 _ClassRequest:
                                   1506 ;	usb.c:548: switch(u8SetupPacket[1]) {
      000517 90 01 6D         [24] 1507 	mov	dptr,#(_u8SetupPacket + 0x0001)
      00051A E0               [24] 1508 	movx	a,@dptr
      00051B FF               [12] 1509 	mov	r7,a
      00051C BF 01 02         [24] 1510 	cjne	r7,#0x01,00119$
      00051F 80 0E            [24] 1511 	sjmp	00103$
      000521                       1512 00119$:
      000521 BF 09 02         [24] 1513 	cjne	r7,#0x09,00120$
      000524 80 06            [24] 1514 	sjmp	00102$
      000526                       1515 00120$:
      000526 BF 0A 09         [24] 1516 	cjne	r7,#0x0a,00105$
                                   1517 ;	usb.c:550: HID_SetIdle();
                                   1518 ;	usb.c:551: break;
                                   1519 ;	usb.c:552: case 0x09:
      000529 02 09 15         [24] 1520 	ljmp	_HID_SetIdle
      00052C                       1521 00102$:
                                   1522 ;	usb.c:553: HID_SetReport();
                                   1523 ;	usb.c:554: break;
                                   1524 ;	usb.c:555: case 0x01:
      00052C 02 09 1B         [24] 1525 	ljmp	_HID_SetReport
      00052F                       1526 00103$:
                                   1527 ;	usb.c:556: HID_GetReport();
                                   1528 ;	usb.c:558: }
                                   1529 ;	usb.c:559: }
      00052F 02 09 5A         [24] 1530 	ljmp	_HID_GetReport
      000532                       1531 00105$:
      000532 22               [24] 1532 	ret
                                   1533 ;------------------------------------------------------------
                                   1534 ;Allocation info for local variables in function 'VendorRequest'
                                   1535 ;------------------------------------------------------------
                                   1536 ;	usb.c:561: static void VendorRequest(void) {
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function VendorRequest
                                   1539 ;	-----------------------------------------
      000533                       1540 _VendorRequest:
                                   1541 ;	usb.c:563: }
      000533 22               [24] 1542 	ret
                                   1543 ;------------------------------------------------------------
                                   1544 ;Allocation info for local variables in function 'GetStatus'
                                   1545 ;------------------------------------------------------------
                                   1546 ;u8R                       Allocated to registers r7 
                                   1547 ;------------------------------------------------------------
                                   1548 ;	usb.c:565: static void GetStatus(void) {
                                   1549 ;	-----------------------------------------
                                   1550 ;	 function GetStatus
                                   1551 ;	-----------------------------------------
      000534                       1552 _GetStatus:
                                   1553 ;	usb.c:572: u8R=u8SetupPacket[0] & 0x1F;
      000534 90 01 6C         [24] 1554 	mov	dptr,#_u8SetupPacket
      000537 E0               [24] 1555 	movx	a,@dptr
      000538 FF               [12] 1556 	mov	r7,a
      000539 53 07 1F         [24] 1557 	anl	ar7,#0x1f
                                   1558 ;	usb.c:574: switch(u8R) {
      00053C BF 00 02         [24] 1559 	cjne	r7,#0x00,00120$
      00053F 80 0A            [24] 1560 	sjmp	00101$
      000541                       1561 00120$:
      000541 BF 01 02         [24] 1562 	cjne	r7,#0x01,00121$
      000544 80 1E            [24] 1563 	sjmp	00102$
      000546                       1564 00121$:
                                   1565 ;	usb.c:575: case 0x00:
      000546 BF 02 4D         [24] 1566 	cjne	r7,#0x02,00104$
      000549 80 32            [24] 1567 	sjmp	00103$
      00054B                       1568 00101$:
                                   1569 ;	usb.c:577: u8TransBuff[0] = 0x00;
      00054B 90 00 D6         [24] 1570 	mov	dptr,#_u8TransBuff
      00054E E4               [12] 1571 	clr	a
      00054F F0               [24] 1572 	movx	@dptr,a
                                   1573 ;	usb.c:578: u8TransBuff[1] = 0x00;
      000550 90 00 D7         [24] 1574 	mov	dptr,#(_u8TransBuff + 0x0001)
      000553 F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	usb.c:580: EP0_SendData1(u8TransBuff, 2);
      000554 75 35 02         [24] 1577 	mov	_EP0_SendData1_PARM_2,#0x02
      000557 90 00 D6         [24] 1578 	mov	dptr,#_u8TransBuff
      00055A 75 F0 00         [24] 1579 	mov	b,#0x00
      00055D 12 01 B8         [24] 1580 	lcall	_EP0_SendData1
                                   1581 ;	usb.c:582: u8ControlState = DATA_STATE;
      000560 75 12 01         [24] 1582 	mov	_u8ControlState,#0x01
                                   1583 ;	usb.c:583: break;
                                   1584 ;	usb.c:584: case 0x01:
      000563 22               [24] 1585 	ret
      000564                       1586 00102$:
                                   1587 ;	usb.c:586: u8TransBuff[0] = 0x00;
      000564 90 00 D6         [24] 1588 	mov	dptr,#_u8TransBuff
      000567 E4               [12] 1589 	clr	a
      000568 F0               [24] 1590 	movx	@dptr,a
                                   1591 ;	usb.c:587: u8TransBuff[1] = 0x00;
      000569 90 00 D7         [24] 1592 	mov	dptr,#(_u8TransBuff + 0x0001)
      00056C F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	usb.c:588: EP0_SendData1(u8TransBuff, 2);
      00056D 75 35 02         [24] 1595 	mov	_EP0_SendData1_PARM_2,#0x02
      000570 90 00 D6         [24] 1596 	mov	dptr,#_u8TransBuff
      000573 75 F0 00         [24] 1597 	mov	b,#0x00
      000576 12 01 B8         [24] 1598 	lcall	_EP0_SendData1
                                   1599 ;	usb.c:589: u8ControlState = DATA_STATE;
      000579 75 12 01         [24] 1600 	mov	_u8ControlState,#0x01
                                   1601 ;	usb.c:590: break;
                                   1602 ;	usb.c:591: case 0x02:
      00057C 22               [24] 1603 	ret
      00057D                       1604 00103$:
                                   1605 ;	usb.c:595: u8TransBuff[0] = 0x00;	
      00057D 90 00 D6         [24] 1606 	mov	dptr,#_u8TransBuff
      000580 E4               [12] 1607 	clr	a
      000581 F0               [24] 1608 	movx	@dptr,a
                                   1609 ;	usb.c:596: u8TransBuff[1] = 0x00;
      000582 90 00 D7         [24] 1610 	mov	dptr,#(_u8TransBuff + 0x0001)
      000585 F0               [24] 1611 	movx	@dptr,a
                                   1612 ;	usb.c:597: EP0_SendData1(u8TransBuff, 2);
      000586 75 35 02         [24] 1613 	mov	_EP0_SendData1_PARM_2,#0x02
      000589 90 00 D6         [24] 1614 	mov	dptr,#_u8TransBuff
      00058C 75 F0 00         [24] 1615 	mov	b,#0x00
      00058F 12 01 B8         [24] 1616 	lcall	_EP0_SendData1
                                   1617 ;	usb.c:598: u8ControlState = DATA_STATE;
      000592 75 12 01         [24] 1618 	mov	_u8ControlState,#0x01
                                   1619 ;	usb.c:599: break;
                                   1620 ;	usb.c:600: default:
      000595 22               [24] 1621 	ret
      000596                       1622 00104$:
                                   1623 ;	usb.c:603: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      000596 75 35 40         [24] 1624 	mov	_EP0_RecData0_PARM_2,#0x40
      000599 90 00 40         [24] 1625 	mov	dptr,#_u8ReceiveBuff
      00059C 75 F0 00         [24] 1626 	mov	b,#0x00
      00059F 12 02 37         [24] 1627 	lcall	_EP0_RecData0
                                   1628 ;	usb.c:604: u8ControlState = SETUP_STATE;
      0005A2 75 12 00         [24] 1629 	mov	_u8ControlState,#0x00
                                   1630 ;	usb.c:608: EP0_Stall();
                                   1631 ;	usb.c:610: }
                                   1632 ;	usb.c:611: }
      0005A5 02 02 57         [24] 1633 	ljmp	_EP0_Stall
                                   1634 ;------------------------------------------------------------
                                   1635 ;Allocation info for local variables in function 'ClearFeature'
                                   1636 ;------------------------------------------------------------
                                   1637 ;u8R                       Allocated to registers r7 
                                   1638 ;------------------------------------------------------------
                                   1639 ;	usb.c:612: static void ClearFeature(void) {
                                   1640 ;	-----------------------------------------
                                   1641 ;	 function ClearFeature
                                   1642 ;	-----------------------------------------
      0005A8                       1643 _ClearFeature:
                                   1644 ;	usb.c:620: u8R=u8SetupPacket[0] & 0x1F;
      0005A8 90 01 6C         [24] 1645 	mov	dptr,#_u8SetupPacket
      0005AB E0               [24] 1646 	movx	a,@dptr
      0005AC FF               [12] 1647 	mov	r7,a
      0005AD 53 07 1F         [24] 1648 	anl	ar7,#0x1f
                                   1649 ;	usb.c:622: switch(u8R) {
      0005B0 BF 00 02         [24] 1650 	cjne	r7,#0x00,00115$
      0005B3 80 05            [24] 1651 	sjmp	00101$
      0005B5                       1652 00115$:
                                   1653 ;	usb.c:623: case 0x00:
      0005B5 BF 02 22         [24] 1654 	cjne	r7,#0x02,00103$
      0005B8 80 10            [24] 1655 	sjmp	00102$
      0005BA                       1656 00101$:
                                   1657 ;	usb.c:625: EP0_SendData1(u8TransBuff, 0);
      0005BA 75 35 00         [24] 1658 	mov	_EP0_SendData1_PARM_2,#0x00
      0005BD 90 00 D6         [24] 1659 	mov	dptr,#_u8TransBuff
      0005C0 75 F0 00         [24] 1660 	mov	b,#0x00
      0005C3 12 01 B8         [24] 1661 	lcall	_EP0_SendData1
                                   1662 ;	usb.c:626: u8ControlState = STATUS_STATE;
      0005C6 75 12 02         [24] 1663 	mov	_u8ControlState,#0x02
                                   1664 ;	usb.c:634: break;
                                   1665 ;	usb.c:638: case 0x02:
      0005C9 22               [24] 1666 	ret
      0005CA                       1667 00102$:
                                   1668 ;	usb.c:644: EP0_SendData1(u8TransBuff, 0);
      0005CA 75 35 00         [24] 1669 	mov	_EP0_SendData1_PARM_2,#0x00
      0005CD 90 00 D6         [24] 1670 	mov	dptr,#_u8TransBuff
      0005D0 75 F0 00         [24] 1671 	mov	b,#0x00
      0005D3 12 01 B8         [24] 1672 	lcall	_EP0_SendData1
                                   1673 ;	usb.c:645: u8ControlState = STATUS_STATE;
      0005D6 75 12 02         [24] 1674 	mov	_u8ControlState,#0x02
                                   1675 ;	usb.c:646: break;
                                   1676 ;	usb.c:647: default:
      0005D9 22               [24] 1677 	ret
      0005DA                       1678 00103$:
                                   1679 ;	usb.c:654: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      0005DA 75 35 40         [24] 1680 	mov	_EP0_RecData0_PARM_2,#0x40
      0005DD 90 00 40         [24] 1681 	mov	dptr,#_u8ReceiveBuff
      0005E0 75 F0 00         [24] 1682 	mov	b,#0x00
      0005E3 12 02 37         [24] 1683 	lcall	_EP0_RecData0
                                   1684 ;	usb.c:658: EP0_Stall();
      0005E6 12 02 57         [24] 1685 	lcall	_EP0_Stall
                                   1686 ;	usb.c:659: u8ControlState = SETUP_STATE;
      0005E9 75 12 00         [24] 1687 	mov	_u8ControlState,#0x00
                                   1688 ;	usb.c:661: }
                                   1689 ;	usb.c:663: }
      0005EC 22               [24] 1690 	ret
                                   1691 ;------------------------------------------------------------
                                   1692 ;Allocation info for local variables in function 'SetFeature'
                                   1693 ;------------------------------------------------------------
                                   1694 ;u8R                       Allocated to registers r7 
                                   1695 ;------------------------------------------------------------
                                   1696 ;	usb.c:664: static void SetFeature(void) {
                                   1697 ;	-----------------------------------------
                                   1698 ;	 function SetFeature
                                   1699 ;	-----------------------------------------
      0005ED                       1700 _SetFeature:
                                   1701 ;	usb.c:672: u8R=u8Ep0Buff[0] & 0x1F;
      0005ED 90 00 00         [24] 1702 	mov	dptr,#_u8Ep0Buff
      0005F0 E0               [24] 1703 	movx	a,@dptr
      0005F1 FF               [12] 1704 	mov	r7,a
      0005F2 53 07 1F         [24] 1705 	anl	ar7,#0x1f
                                   1706 ;	usb.c:674: switch(u8R) {
      0005F5 BF 00 02         [24] 1707 	cjne	r7,#0x00,00115$
      0005F8 80 05            [24] 1708 	sjmp	00101$
      0005FA                       1709 00115$:
                                   1710 ;	usb.c:675: case 0x00:
      0005FA BF 02 22         [24] 1711 	cjne	r7,#0x02,00103$
      0005FD 80 10            [24] 1712 	sjmp	00102$
      0005FF                       1713 00101$:
                                   1714 ;	usb.c:684: EP0_SendData1(u8TransBuff, 0);
      0005FF 75 35 00         [24] 1715 	mov	_EP0_SendData1_PARM_2,#0x00
      000602 90 00 D6         [24] 1716 	mov	dptr,#_u8TransBuff
      000605 75 F0 00         [24] 1717 	mov	b,#0x00
      000608 12 01 B8         [24] 1718 	lcall	_EP0_SendData1
                                   1719 ;	usb.c:685: u8ControlState = STATUS_STATE;
      00060B 75 12 02         [24] 1720 	mov	_u8ControlState,#0x02
                                   1721 ;	usb.c:686: break;
                                   1722 ;	usb.c:690: case 0x02:
      00060E 22               [24] 1723 	ret
      00060F                       1724 00102$:
                                   1725 ;	usb.c:695: EP0_SendData1(u8TransBuff, 0);
      00060F 75 35 00         [24] 1726 	mov	_EP0_SendData1_PARM_2,#0x00
      000612 90 00 D6         [24] 1727 	mov	dptr,#_u8TransBuff
      000615 75 F0 00         [24] 1728 	mov	b,#0x00
      000618 12 01 B8         [24] 1729 	lcall	_EP0_SendData1
                                   1730 ;	usb.c:696: u8ControlState = STATUS_STATE;
      00061B 75 12 02         [24] 1731 	mov	_u8ControlState,#0x02
                                   1732 ;	usb.c:697: break;
                                   1733 ;	usb.c:698: default:
      00061E 22               [24] 1734 	ret
      00061F                       1735 00103$:
                                   1736 ;	usb.c:703: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      00061F 75 35 40         [24] 1737 	mov	_EP0_RecData0_PARM_2,#0x40
      000622 90 00 40         [24] 1738 	mov	dptr,#_u8ReceiveBuff
      000625 75 F0 00         [24] 1739 	mov	b,#0x00
      000628 12 02 37         [24] 1740 	lcall	_EP0_RecData0
                                   1741 ;	usb.c:707: EP0_Stall();
      00062B 12 02 57         [24] 1742 	lcall	_EP0_Stall
                                   1743 ;	usb.c:708: u8ControlState = SETUP_STATE;
      00062E 75 12 00         [24] 1744 	mov	_u8ControlState,#0x00
                                   1745 ;	usb.c:710: }
                                   1746 ;	usb.c:711: }
      000631 22               [24] 1747 	ret
                                   1748 ;------------------------------------------------------------
                                   1749 ;Allocation info for local variables in function 'SetAddress'
                                   1750 ;------------------------------------------------------------
                                   1751 ;	usb.c:712: static void SetAddress(void) {
                                   1752 ;	-----------------------------------------
                                   1753 ;	 function SetAddress
                                   1754 ;	-----------------------------------------
      000632                       1755 _SetAddress:
                                   1756 ;	usb.c:714: u8Addr = u8SetupPacket[2];
      000632 90 01 6E         [24] 1757 	mov	dptr,#(_u8SetupPacket + 0x0002)
      000635 E0               [24] 1758 	movx	a,@dptr
      000636 F5 0F            [12] 1759 	mov	_u8Addr,a
                                   1760 ;	usb.c:716: EP0_SendData1(u8TransBuff, 0);
      000638 75 35 00         [24] 1761 	mov	_EP0_SendData1_PARM_2,#0x00
      00063B 90 00 D6         [24] 1762 	mov	dptr,#_u8TransBuff
      00063E 75 F0 00         [24] 1763 	mov	b,#0x00
      000641 12 01 B8         [24] 1764 	lcall	_EP0_SendData1
                                   1765 ;	usb.c:717: u8ControlState = STATUS_STATE;
      000644 75 12 02         [24] 1766 	mov	_u8ControlState,#0x02
                                   1767 ;	usb.c:719: }
      000647 22               [24] 1768 	ret
                                   1769 ;------------------------------------------------------------
                                   1770 ;Allocation info for local variables in function 'GetDescriptor'
                                   1771 ;------------------------------------------------------------
                                   1772 ;i                         Allocated to registers r4 r5 
                                   1773 ;u16Len                    Allocated to registers r7 r6 
                                   1774 ;------------------------------------------------------------
                                   1775 ;	usb.c:720: static void GetDescriptor(void) {
                                   1776 ;	-----------------------------------------
                                   1777 ;	 function GetDescriptor
                                   1778 ;	-----------------------------------------
      000648                       1779 _GetDescriptor:
                                   1780 ;	usb.c:723: u16Len = u8SetupPacket[7];
      000648 90 01 73         [24] 1781 	mov	dptr,#(_u8SetupPacket + 0x0007)
      00064B E0               [24] 1782 	movx	a,@dptr
                                   1783 ;	usb.c:724: u16Len <<= 8;
      00064C FE               [12] 1784 	mov	r6,a
      00064D 7F 00            [12] 1785 	mov	r7,#0x00
                                   1786 ;	usb.c:725: u16Len += u8SetupPacket[6];	
      00064F 90 01 72         [24] 1787 	mov	dptr,#(_u8SetupPacket + 0x0006)
      000652 E0               [24] 1788 	movx	a,@dptr
      000653 7C 00            [12] 1789 	mov	r4,#0x00
      000655 2F               [12] 1790 	add	a,r7
      000656 FF               [12] 1791 	mov	r7,a
      000657 EC               [12] 1792 	mov	a,r4
      000658 3E               [12] 1793 	addc	a,r6
      000659 FE               [12] 1794 	mov	r6,a
                                   1795 ;	usb.c:726: switch(u8SetupPacket[3]) {
      00065A 90 01 6F         [24] 1796 	mov	dptr,#(_u8SetupPacket + 0x0003)
      00065D E0               [24] 1797 	movx	a,@dptr
      00065E FD               [12] 1798 	mov	r5,a
      00065F BD 01 02         [24] 1799 	cjne	r5,#0x01,00301$
      000662 80 14            [24] 1800 	sjmp	00101$
      000664                       1801 00301$:
      000664 BD 02 02         [24] 1802 	cjne	r5,#0x02,00302$
      000667 80 55            [24] 1803 	sjmp	00105$
      000669                       1804 00302$:
      000669 BD 03 03         [24] 1805 	cjne	r5,#0x03,00303$
      00066C 02 07 04         [24] 1806 	ljmp	00109$
      00066F                       1807 00303$:
      00066F BD 22 03         [24] 1808 	cjne	r5,#0x22,00304$
      000672 02 08 4E         [24] 1809 	ljmp	00128$
      000675                       1810 00304$:
      000675 02 08 9B         [24] 1811 	ljmp	00134$
                                   1812 ;	usb.c:727: case 0x01:
      000678                       1813 00101$:
                                   1814 ;	usb.c:739: if(u16Len >= 0x12) {
      000678 C3               [12] 1815 	clr	c
      000679 EF               [12] 1816 	mov	a,r7
      00067A 94 12            [12] 1817 	subb	a,#0x12
      00067C EE               [12] 1818 	mov	a,r6
      00067D 94 00            [12] 1819 	subb	a,#0x00
      00067F 40 04            [24] 1820 	jc	00165$
                                   1821 ;	usb.c:740: u16Len = 0x12;
      000681 7F 12            [12] 1822 	mov	r7,#0x12
      000683 7E 00            [12] 1823 	mov	r6,#0x00
                                   1824 ;	usb.c:742: for(i = 0; i < u16Len; ++i) {
      000685                       1825 00165$:
      000685 7C 00            [12] 1826 	mov	r4,#0x00
      000687 7D 00            [12] 1827 	mov	r5,#0x00
      000689                       1828 00137$:
      000689 C3               [12] 1829 	clr	c
      00068A EC               [12] 1830 	mov	a,r4
      00068B 9F               [12] 1831 	subb	a,r7
      00068C ED               [12] 1832 	mov	a,r5
      00068D 9E               [12] 1833 	subb	a,r6
      00068E 50 20            [24] 1834 	jnc	00104$
                                   1835 ;	usb.c:743: u8TransBuff[i] = deviceDescriptor[i];
      000690 EC               [12] 1836 	mov	a,r4
      000691 24 D6            [12] 1837 	add	a,#_u8TransBuff
      000693 FA               [12] 1838 	mov	r2,a
      000694 ED               [12] 1839 	mov	a,r5
      000695 34 00            [12] 1840 	addc	a,#(_u8TransBuff >> 8)
      000697 FB               [12] 1841 	mov	r3,a
      000698 EC               [12] 1842 	mov	a,r4
      000699 24 64            [12] 1843 	add	a,#_deviceDescriptor
      00069B F5 82            [12] 1844 	mov	dpl,a
      00069D ED               [12] 1845 	mov	a,r5
      00069E 34 23            [12] 1846 	addc	a,#(_deviceDescriptor >> 8)
      0006A0 F5 83            [12] 1847 	mov	dph,a
      0006A2 E4               [12] 1848 	clr	a
      0006A3 93               [24] 1849 	movc	a,@a+dptr
      0006A4 8A 82            [24] 1850 	mov	dpl,r2
      0006A6 8B 83            [24] 1851 	mov	dph,r3
      0006A8 F0               [24] 1852 	movx	@dptr,a
                                   1853 ;	usb.c:742: for(i = 0; i < u16Len; ++i) {
      0006A9 0C               [12] 1854 	inc	r4
      0006AA BC 00 DC         [24] 1855 	cjne	r4,#0x00,00137$
      0006AD 0D               [12] 1856 	inc	r5
      0006AE 80 D9            [24] 1857 	sjmp	00137$
      0006B0                       1858 00104$:
                                   1859 ;	usb.c:745: u8ControlState = DATA_STATE;
      0006B0 75 12 01         [24] 1860 	mov	_u8ControlState,#0x01
                                   1861 ;	usb.c:746: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0006B3 8F 35            [24] 1862 	mov	_EP0_SendData1_PARM_2,r7
      0006B5 90 00 D6         [24] 1863 	mov	dptr,#_u8TransBuff
      0006B8 75 F0 00         [24] 1864 	mov	b,#0x00
                                   1865 ;	usb.c:747: break;
      0006BB 02 01 B8         [24] 1866 	ljmp	_EP0_SendData1
                                   1867 ;	usb.c:748: case 0x02:
      0006BE                       1868 00105$:
                                   1869 ;	usb.c:750: if(u16Len >= 34) {
      0006BE C3               [12] 1870 	clr	c
      0006BF EF               [12] 1871 	mov	a,r7
      0006C0 94 22            [12] 1872 	subb	a,#0x22
      0006C2 EE               [12] 1873 	mov	a,r6
      0006C3 94 00            [12] 1874 	subb	a,#0x00
      0006C5 40 04            [24] 1875 	jc	00168$
                                   1876 ;	usb.c:751: u16Len = 34;
      0006C7 7F 22            [12] 1877 	mov	r7,#0x22
      0006C9 7E 00            [12] 1878 	mov	r6,#0x00
                                   1879 ;	usb.c:753: for(i = 0; i < u16Len; ++i) {
      0006CB                       1880 00168$:
      0006CB 7C 00            [12] 1881 	mov	r4,#0x00
      0006CD 7D 00            [12] 1882 	mov	r5,#0x00
      0006CF                       1883 00140$:
      0006CF C3               [12] 1884 	clr	c
      0006D0 EC               [12] 1885 	mov	a,r4
      0006D1 9F               [12] 1886 	subb	a,r7
      0006D2 ED               [12] 1887 	mov	a,r5
      0006D3 9E               [12] 1888 	subb	a,r6
      0006D4 50 20            [24] 1889 	jnc	00108$
                                   1890 ;	usb.c:754: u8TransBuff[i]=configDescriptor[i];
      0006D6 EC               [12] 1891 	mov	a,r4
      0006D7 24 D6            [12] 1892 	add	a,#_u8TransBuff
      0006D9 FA               [12] 1893 	mov	r2,a
      0006DA ED               [12] 1894 	mov	a,r5
      0006DB 34 00            [12] 1895 	addc	a,#(_u8TransBuff >> 8)
      0006DD FB               [12] 1896 	mov	r3,a
      0006DE EC               [12] 1897 	mov	a,r4
      0006DF 24 A9            [12] 1898 	add	a,#_configDescriptor
      0006E1 F5 82            [12] 1899 	mov	dpl,a
      0006E3 ED               [12] 1900 	mov	a,r5
      0006E4 34 23            [12] 1901 	addc	a,#(_configDescriptor >> 8)
      0006E6 F5 83            [12] 1902 	mov	dph,a
      0006E8 E4               [12] 1903 	clr	a
      0006E9 93               [24] 1904 	movc	a,@a+dptr
      0006EA 8A 82            [24] 1905 	mov	dpl,r2
      0006EC 8B 83            [24] 1906 	mov	dph,r3
      0006EE F0               [24] 1907 	movx	@dptr,a
                                   1908 ;	usb.c:753: for(i = 0; i < u16Len; ++i) {
      0006EF 0C               [12] 1909 	inc	r4
      0006F0 BC 00 DC         [24] 1910 	cjne	r4,#0x00,00140$
      0006F3 0D               [12] 1911 	inc	r5
      0006F4 80 D9            [24] 1912 	sjmp	00140$
      0006F6                       1913 00108$:
                                   1914 ;	usb.c:757: u8ControlState = DATA_STATE;
      0006F6 75 12 01         [24] 1915 	mov	_u8ControlState,#0x01
                                   1916 ;	usb.c:758: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0006F9 8F 35            [24] 1917 	mov	_EP0_SendData1_PARM_2,r7
      0006FB 90 00 D6         [24] 1918 	mov	dptr,#_u8TransBuff
      0006FE 75 F0 00         [24] 1919 	mov	b,#0x00
                                   1920 ;	usb.c:759: break;
      000701 02 01 B8         [24] 1921 	ljmp	_EP0_SendData1
                                   1922 ;	usb.c:760: case 0x03:
      000704                       1923 00109$:
                                   1924 ;	usb.c:762: switch(u8SetupPacket[2]) {
      000704 90 01 6E         [24] 1925 	mov	dptr,#(_u8SetupPacket + 0x0002)
      000707 E0               [24] 1926 	movx	a,@dptr
      000708 FD               [12] 1927 	mov  r5,a
      000709 24 FC            [12] 1928 	add	a,#0xff - 0x03
      00070B 50 03            [24] 1929 	jnc	00311$
      00070D 02 08 3B         [24] 1930 	ljmp	00126$
      000710                       1931 00311$:
      000710 ED               [12] 1932 	mov	a,r5
      000711 2D               [12] 1933 	add	a,r5
      000712 2D               [12] 1934 	add	a,r5
      000713 90 07 17         [24] 1935 	mov	dptr,#00312$
      000716 73               [24] 1936 	jmp	@a+dptr
      000717                       1937 00312$:
      000717 02 07 23         [24] 1938 	ljmp	00110$
      00071A 02 07 69         [24] 1939 	ljmp	00114$
      00071D 02 07 AF         [24] 1940 	ljmp	00118$
      000720 02 07 F5         [24] 1941 	ljmp	00122$
                                   1942 ;	usb.c:763: case 0x00:
      000723                       1943 00110$:
                                   1944 ;	usb.c:765: if(u16Len >= 0x04) {
      000723 C3               [12] 1945 	clr	c
      000724 EF               [12] 1946 	mov	a,r7
      000725 94 04            [12] 1947 	subb	a,#0x04
      000727 EE               [12] 1948 	mov	a,r6
      000728 94 00            [12] 1949 	subb	a,#0x00
      00072A 40 04            [24] 1950 	jc	00172$
                                   1951 ;	usb.c:766: u16Len = 0x04;
      00072C 7F 04            [12] 1952 	mov	r7,#0x04
      00072E 7E 00            [12] 1953 	mov	r6,#0x00
                                   1954 ;	usb.c:768: for(i = 0; i < u16Len; ++i) {
      000730                       1955 00172$:
      000730 7C 00            [12] 1956 	mov	r4,#0x00
      000732 7D 00            [12] 1957 	mov	r5,#0x00
      000734                       1958 00143$:
      000734 C3               [12] 1959 	clr	c
      000735 EC               [12] 1960 	mov	a,r4
      000736 9F               [12] 1961 	subb	a,r7
      000737 ED               [12] 1962 	mov	a,r5
      000738 9E               [12] 1963 	subb	a,r6
      000739 50 20            [24] 1964 	jnc	00113$
                                   1965 ;	usb.c:769: u8TransBuff[i]=stringDescriptor[i];
      00073B EC               [12] 1966 	mov	a,r4
      00073C 24 D6            [12] 1967 	add	a,#_u8TransBuff
      00073E FA               [12] 1968 	mov	r2,a
      00073F ED               [12] 1969 	mov	a,r5
      000740 34 00            [12] 1970 	addc	a,#(_u8TransBuff >> 8)
      000742 FB               [12] 1971 	mov	r3,a
      000743 EC               [12] 1972 	mov	a,r4
      000744 24 CB            [12] 1973 	add	a,#_stringDescriptor
      000746 F5 82            [12] 1974 	mov	dpl,a
      000748 ED               [12] 1975 	mov	a,r5
      000749 34 23            [12] 1976 	addc	a,#(_stringDescriptor >> 8)
      00074B F5 83            [12] 1977 	mov	dph,a
      00074D E4               [12] 1978 	clr	a
      00074E 93               [24] 1979 	movc	a,@a+dptr
      00074F 8A 82            [24] 1980 	mov	dpl,r2
      000751 8B 83            [24] 1981 	mov	dph,r3
      000753 F0               [24] 1982 	movx	@dptr,a
                                   1983 ;	usb.c:768: for(i = 0; i < u16Len; ++i) {
      000754 0C               [12] 1984 	inc	r4
      000755 BC 00 DC         [24] 1985 	cjne	r4,#0x00,00143$
      000758 0D               [12] 1986 	inc	r5
      000759 80 D9            [24] 1987 	sjmp	00143$
      00075B                       1988 00113$:
                                   1989 ;	usb.c:772: u8ControlState = DATA_STATE;
      00075B 75 12 01         [24] 1990 	mov	_u8ControlState,#0x01
                                   1991 ;	usb.c:773: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      00075E 8F 35            [24] 1992 	mov	_EP0_SendData1_PARM_2,r7
      000760 90 00 D6         [24] 1993 	mov	dptr,#_u8TransBuff
      000763 75 F0 00         [24] 1994 	mov	b,#0x00
                                   1995 ;	usb.c:774: break;
      000766 02 01 B8         [24] 1996 	ljmp	_EP0_SendData1
                                   1997 ;	usb.c:775: case 0x01:
      000769                       1998 00114$:
                                   1999 ;	usb.c:777: if(u16Len >= 32) {
      000769 C3               [12] 2000 	clr	c
      00076A EF               [12] 2001 	mov	a,r7
      00076B 94 20            [12] 2002 	subb	a,#0x20
      00076D EE               [12] 2003 	mov	a,r6
      00076E 94 00            [12] 2004 	subb	a,#0x00
      000770 40 04            [24] 2005 	jc	00175$
                                   2006 ;	usb.c:778: u16Len = 32;
      000772 7F 20            [12] 2007 	mov	r7,#0x20
      000774 7E 00            [12] 2008 	mov	r6,#0x00
                                   2009 ;	usb.c:780: for(i = 0; i < u16Len; ++i) {
      000776                       2010 00175$:
      000776 7C 00            [12] 2011 	mov	r4,#0x00
      000778 7D 00            [12] 2012 	mov	r5,#0x00
      00077A                       2013 00146$:
      00077A C3               [12] 2014 	clr	c
      00077B EC               [12] 2015 	mov	a,r4
      00077C 9F               [12] 2016 	subb	a,r7
      00077D ED               [12] 2017 	mov	a,r5
      00077E 9E               [12] 2018 	subb	a,r6
      00077F 50 20            [24] 2019 	jnc	00117$
                                   2020 ;	usb.c:781: u8TransBuff[i]=manufacturerDescriptor[i];
      000781 EC               [12] 2021 	mov	a,r4
      000782 24 D6            [12] 2022 	add	a,#_u8TransBuff
      000784 FA               [12] 2023 	mov	r2,a
      000785 ED               [12] 2024 	mov	a,r5
      000786 34 00            [12] 2025 	addc	a,#(_u8TransBuff >> 8)
      000788 FB               [12] 2026 	mov	r3,a
      000789 EC               [12] 2027 	mov	a,r4
      00078A 24 CF            [12] 2028 	add	a,#_manufacturerDescriptor
      00078C F5 82            [12] 2029 	mov	dpl,a
      00078E ED               [12] 2030 	mov	a,r5
      00078F 34 23            [12] 2031 	addc	a,#(_manufacturerDescriptor >> 8)
      000791 F5 83            [12] 2032 	mov	dph,a
      000793 E4               [12] 2033 	clr	a
      000794 93               [24] 2034 	movc	a,@a+dptr
      000795 8A 82            [24] 2035 	mov	dpl,r2
      000797 8B 83            [24] 2036 	mov	dph,r3
      000799 F0               [24] 2037 	movx	@dptr,a
                                   2038 ;	usb.c:780: for(i = 0; i < u16Len; ++i) {
      00079A 0C               [12] 2039 	inc	r4
      00079B BC 00 DC         [24] 2040 	cjne	r4,#0x00,00146$
      00079E 0D               [12] 2041 	inc	r5
      00079F 80 D9            [24] 2042 	sjmp	00146$
      0007A1                       2043 00117$:
                                   2044 ;	usb.c:784: u8ControlState = DATA_STATE;
      0007A1 75 12 01         [24] 2045 	mov	_u8ControlState,#0x01
                                   2046 ;	usb.c:785: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0007A4 8F 35            [24] 2047 	mov	_EP0_SendData1_PARM_2,r7
      0007A6 90 00 D6         [24] 2048 	mov	dptr,#_u8TransBuff
      0007A9 75 F0 00         [24] 2049 	mov	b,#0x00
                                   2050 ;	usb.c:786: break;
      0007AC 02 01 B8         [24] 2051 	ljmp	_EP0_SendData1
                                   2052 ;	usb.c:787: case 0x02:
      0007AF                       2053 00118$:
                                   2054 ;	usb.c:789: if(u16Len >= 24) {
      0007AF C3               [12] 2055 	clr	c
      0007B0 EF               [12] 2056 	mov	a,r7
      0007B1 94 18            [12] 2057 	subb	a,#0x18
      0007B3 EE               [12] 2058 	mov	a,r6
      0007B4 94 00            [12] 2059 	subb	a,#0x00
      0007B6 40 04            [24] 2060 	jc	00178$
                                   2061 ;	usb.c:790: u16Len = 24;
      0007B8 7F 18            [12] 2062 	mov	r7,#0x18
      0007BA 7E 00            [12] 2063 	mov	r6,#0x00
                                   2064 ;	usb.c:792: for(i = 0; i < u16Len; ++i) {
      0007BC                       2065 00178$:
      0007BC 7C 00            [12] 2066 	mov	r4,#0x00
      0007BE 7D 00            [12] 2067 	mov	r5,#0x00
      0007C0                       2068 00149$:
      0007C0 C3               [12] 2069 	clr	c
      0007C1 EC               [12] 2070 	mov	a,r4
      0007C2 9F               [12] 2071 	subb	a,r7
      0007C3 ED               [12] 2072 	mov	a,r5
      0007C4 9E               [12] 2073 	subb	a,r6
      0007C5 50 20            [24] 2074 	jnc	00121$
                                   2075 ;	usb.c:793: u8TransBuff[i]=productDescriptor[i];
      0007C7 EC               [12] 2076 	mov	a,r4
      0007C8 24 D6            [12] 2077 	add	a,#_u8TransBuff
      0007CA FA               [12] 2078 	mov	r2,a
      0007CB ED               [12] 2079 	mov	a,r5
      0007CC 34 00            [12] 2080 	addc	a,#(_u8TransBuff >> 8)
      0007CE FB               [12] 2081 	mov	r3,a
      0007CF EC               [12] 2082 	mov	a,r4
      0007D0 24 EF            [12] 2083 	add	a,#_productDescriptor
      0007D2 F5 82            [12] 2084 	mov	dpl,a
      0007D4 ED               [12] 2085 	mov	a,r5
      0007D5 34 23            [12] 2086 	addc	a,#(_productDescriptor >> 8)
      0007D7 F5 83            [12] 2087 	mov	dph,a
      0007D9 E4               [12] 2088 	clr	a
      0007DA 93               [24] 2089 	movc	a,@a+dptr
      0007DB 8A 82            [24] 2090 	mov	dpl,r2
      0007DD 8B 83            [24] 2091 	mov	dph,r3
      0007DF F0               [24] 2092 	movx	@dptr,a
                                   2093 ;	usb.c:792: for(i = 0; i < u16Len; ++i) {
      0007E0 0C               [12] 2094 	inc	r4
      0007E1 BC 00 DC         [24] 2095 	cjne	r4,#0x00,00149$
      0007E4 0D               [12] 2096 	inc	r5
      0007E5 80 D9            [24] 2097 	sjmp	00149$
      0007E7                       2098 00121$:
                                   2099 ;	usb.c:796: u8ControlState = DATA_STATE;
      0007E7 75 12 01         [24] 2100 	mov	_u8ControlState,#0x01
                                   2101 ;	usb.c:797: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      0007EA 8F 35            [24] 2102 	mov	_EP0_SendData1_PARM_2,r7
      0007EC 90 00 D6         [24] 2103 	mov	dptr,#_u8TransBuff
      0007EF 75 F0 00         [24] 2104 	mov	b,#0x00
                                   2105 ;	usb.c:798: break;
      0007F2 02 01 B8         [24] 2106 	ljmp	_EP0_SendData1
                                   2107 ;	usb.c:799: case 0x03:
      0007F5                       2108 00122$:
                                   2109 ;	usb.c:801: if(u16Len >= 26) {
      0007F5 C3               [12] 2110 	clr	c
      0007F6 EF               [12] 2111 	mov	a,r7
      0007F7 94 1A            [12] 2112 	subb	a,#0x1a
      0007F9 EE               [12] 2113 	mov	a,r6
      0007FA 94 00            [12] 2114 	subb	a,#0x00
      0007FC 40 04            [24] 2115 	jc	00181$
                                   2116 ;	usb.c:802: u16Len = 26;
      0007FE 7F 1A            [12] 2117 	mov	r7,#0x1a
      000800 7E 00            [12] 2118 	mov	r6,#0x00
                                   2119 ;	usb.c:804: for(i = 0; i < u16Len; ++i) {
      000802                       2120 00181$:
      000802 7C 00            [12] 2121 	mov	r4,#0x00
      000804 7D 00            [12] 2122 	mov	r5,#0x00
      000806                       2123 00152$:
      000806 C3               [12] 2124 	clr	c
      000807 EC               [12] 2125 	mov	a,r4
      000808 9F               [12] 2126 	subb	a,r7
      000809 ED               [12] 2127 	mov	a,r5
      00080A 9E               [12] 2128 	subb	a,r6
      00080B 50 20            [24] 2129 	jnc	00125$
                                   2130 ;	usb.c:805: u8TransBuff[i]=serialDescriptor[i];
      00080D EC               [12] 2131 	mov	a,r4
      00080E 24 D6            [12] 2132 	add	a,#_u8TransBuff
      000810 FA               [12] 2133 	mov	r2,a
      000811 ED               [12] 2134 	mov	a,r5
      000812 34 00            [12] 2135 	addc	a,#(_u8TransBuff >> 8)
      000814 FB               [12] 2136 	mov	r3,a
      000815 EC               [12] 2137 	mov	a,r4
      000816 24 07            [12] 2138 	add	a,#_serialDescriptor
      000818 F5 82            [12] 2139 	mov	dpl,a
      00081A ED               [12] 2140 	mov	a,r5
      00081B 34 24            [12] 2141 	addc	a,#(_serialDescriptor >> 8)
      00081D F5 83            [12] 2142 	mov	dph,a
      00081F E4               [12] 2143 	clr	a
      000820 93               [24] 2144 	movc	a,@a+dptr
      000821 8A 82            [24] 2145 	mov	dpl,r2
      000823 8B 83            [24] 2146 	mov	dph,r3
      000825 F0               [24] 2147 	movx	@dptr,a
                                   2148 ;	usb.c:804: for(i = 0; i < u16Len; ++i) {
      000826 0C               [12] 2149 	inc	r4
      000827 BC 00 DC         [24] 2150 	cjne	r4,#0x00,00152$
      00082A 0D               [12] 2151 	inc	r5
      00082B 80 D9            [24] 2152 	sjmp	00152$
      00082D                       2153 00125$:
                                   2154 ;	usb.c:808: u8ControlState = DATA_STATE;
      00082D 75 12 01         [24] 2155 	mov	_u8ControlState,#0x01
                                   2156 ;	usb.c:809: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      000830 8F 35            [24] 2157 	mov	_EP0_SendData1_PARM_2,r7
      000832 90 00 D6         [24] 2158 	mov	dptr,#_u8TransBuff
      000835 75 F0 00         [24] 2159 	mov	b,#0x00
                                   2160 ;	usb.c:810: break;
      000838 02 01 B8         [24] 2161 	ljmp	_EP0_SendData1
                                   2162 ;	usb.c:811: default:
      00083B                       2163 00126$:
                                   2164 ;	usb.c:812: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      00083B 75 35 40         [24] 2165 	mov	_EP0_RecData0_PARM_2,#0x40
      00083E 90 00 40         [24] 2166 	mov	dptr,#_u8ReceiveBuff
      000841 75 F0 00         [24] 2167 	mov	b,#0x00
      000844 12 02 37         [24] 2168 	lcall	_EP0_RecData0
                                   2169 ;	usb.c:814: EP0_Stall();
      000847 12 02 57         [24] 2170 	lcall	_EP0_Stall
                                   2171 ;	usb.c:816: u8ControlState = SETUP_STATE;
      00084A 75 12 00         [24] 2172 	mov	_u8ControlState,#0x00
                                   2173 ;	usb.c:820: break;
                                   2174 ;	usb.c:821: case 0x22:
      00084D 22               [24] 2175 	ret
      00084E                       2176 00128$:
                                   2177 ;	usb.c:822: switch (u8SetupPacket[2]) {
      00084E 90 01 6E         [24] 2178 	mov	dptr,#(_u8SetupPacket + 0x0002)
      000851 E0               [24] 2179 	movx	a,@dptr
      000852 60 01            [24] 2180 	jz	00326$
      000854 22               [24] 2181 	ret
      000855                       2182 00326$:
                                   2183 ;	usb.c:824: if(u16Len >= /*42*/51) {
      000855 C3               [12] 2184 	clr	c
      000856 EF               [12] 2185 	mov	a,r7
      000857 94 33            [12] 2186 	subb	a,#0x33
      000859 EE               [12] 2187 	mov	a,r6
      00085A 94 00            [12] 2188 	subb	a,#0x00
      00085C 40 04            [24] 2189 	jc	00185$
                                   2190 ;	usb.c:825: u16Len = /*42*/51;
      00085E 7F 33            [12] 2191 	mov	r7,#0x33
      000860 7E 00            [12] 2192 	mov	r6,#0x00
                                   2193 ;	usb.c:828: for(i=0; i<u16Len; ++i) {
      000862                       2194 00185$:
      000862 7C 00            [12] 2195 	mov	r4,#0x00
      000864 7D 00            [12] 2196 	mov	r5,#0x00
      000866                       2197 00155$:
      000866 C3               [12] 2198 	clr	c
      000867 EC               [12] 2199 	mov	a,r4
      000868 9F               [12] 2200 	subb	a,r7
      000869 ED               [12] 2201 	mov	a,r5
      00086A 9E               [12] 2202 	subb	a,r6
      00086B 50 20            [24] 2203 	jnc	00132$
                                   2204 ;	usb.c:829: u8TransBuff[i]=HID_DeviceReportDescriptor[i];
      00086D EC               [12] 2205 	mov	a,r4
      00086E 24 D6            [12] 2206 	add	a,#_u8TransBuff
      000870 FA               [12] 2207 	mov	r2,a
      000871 ED               [12] 2208 	mov	a,r5
      000872 34 00            [12] 2209 	addc	a,#(_u8TransBuff >> 8)
      000874 FB               [12] 2210 	mov	r3,a
      000875 EC               [12] 2211 	mov	a,r4
      000876 24 76            [12] 2212 	add	a,#_HID_DeviceReportDescriptor
      000878 F5 82            [12] 2213 	mov	dpl,a
      00087A ED               [12] 2214 	mov	a,r5
      00087B 34 23            [12] 2215 	addc	a,#(_HID_DeviceReportDescriptor >> 8)
      00087D F5 83            [12] 2216 	mov	dph,a
      00087F E4               [12] 2217 	clr	a
      000880 93               [24] 2218 	movc	a,@a+dptr
      000881 8A 82            [24] 2219 	mov	dpl,r2
      000883 8B 83            [24] 2220 	mov	dph,r3
      000885 F0               [24] 2221 	movx	@dptr,a
                                   2222 ;	usb.c:828: for(i=0; i<u16Len; ++i) {
      000886 0C               [12] 2223 	inc	r4
      000887 BC 00 DC         [24] 2224 	cjne	r4,#0x00,00155$
      00088A 0D               [12] 2225 	inc	r5
      00088B 80 D9            [24] 2226 	sjmp	00155$
      00088D                       2227 00132$:
                                   2228 ;	usb.c:832: u8ControlState = DATA_STATE;
      00088D 75 12 01         [24] 2229 	mov	_u8ControlState,#0x01
                                   2230 ;	usb.c:833: EP0_SendData1(u8TransBuff, (uint8_t)u16Len);
      000890 8F 35            [24] 2231 	mov	_EP0_SendData1_PARM_2,r7
      000892 90 00 D6         [24] 2232 	mov	dptr,#_u8TransBuff
      000895 75 F0 00         [24] 2233 	mov	b,#0x00
                                   2234 ;	usb.c:836: break;
                                   2235 ;	usb.c:837: default:
      000898 02 01 B8         [24] 2236 	ljmp	_EP0_SendData1
      00089B                       2237 00134$:
                                   2238 ;	usb.c:838: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      00089B 75 35 40         [24] 2239 	mov	_EP0_RecData0_PARM_2,#0x40
      00089E 90 00 40         [24] 2240 	mov	dptr,#_u8ReceiveBuff
      0008A1 75 F0 00         [24] 2241 	mov	b,#0x00
      0008A4 12 02 37         [24] 2242 	lcall	_EP0_RecData0
                                   2243 ;	usb.c:840: EP0_Stall();
      0008A7 12 02 57         [24] 2244 	lcall	_EP0_Stall
                                   2245 ;	usb.c:842: u8ControlState = SETUP_STATE;
      0008AA 75 12 00         [24] 2246 	mov	_u8ControlState,#0x00
                                   2247 ;	usb.c:845: }
                                   2248 ;	usb.c:846: }
      0008AD 22               [24] 2249 	ret
                                   2250 ;------------------------------------------------------------
                                   2251 ;Allocation info for local variables in function 'SetDescriptor'
                                   2252 ;------------------------------------------------------------
                                   2253 ;	usb.c:847: static void SetDescriptor(void) {
                                   2254 ;	-----------------------------------------
                                   2255 ;	 function SetDescriptor
                                   2256 ;	-----------------------------------------
      0008AE                       2257 _SetDescriptor:
                                   2258 ;	usb.c:848: EP0_RecData0(u8ReceiveBuff, EP0_SZ);
      0008AE 75 35 40         [24] 2259 	mov	_EP0_RecData0_PARM_2,#0x40
      0008B1 90 00 40         [24] 2260 	mov	dptr,#_u8ReceiveBuff
      0008B4 75 F0 00         [24] 2261 	mov	b,#0x00
      0008B7 12 02 37         [24] 2262 	lcall	_EP0_RecData0
                                   2263 ;	usb.c:855: EP0_Stall();
      0008BA 12 02 57         [24] 2264 	lcall	_EP0_Stall
                                   2265 ;	usb.c:856: u8ControlState = SETUP_STATE;
      0008BD 75 12 00         [24] 2266 	mov	_u8ControlState,#0x00
                                   2267 ;	usb.c:857: }
      0008C0 22               [24] 2268 	ret
                                   2269 ;------------------------------------------------------------
                                   2270 ;Allocation info for local variables in function 'GetConfiguration'
                                   2271 ;------------------------------------------------------------
                                   2272 ;	usb.c:858: static void GetConfiguration(void) {
                                   2273 ;	-----------------------------------------
                                   2274 ;	 function GetConfiguration
                                   2275 ;	-----------------------------------------
      0008C1                       2276 _GetConfiguration:
                                   2277 ;	usb.c:859: u8TransBuff[0] = u8Config;
      0008C1 90 00 D6         [24] 2278 	mov	dptr,#_u8TransBuff
      0008C4 E5 10            [12] 2279 	mov	a,_u8Config
      0008C6 F0               [24] 2280 	movx	@dptr,a
                                   2281 ;	usb.c:863: EP0_SendData1(u8TransBuff, 0x01);
      0008C7 75 35 01         [24] 2282 	mov	_EP0_SendData1_PARM_2,#0x01
      0008CA 90 00 D6         [24] 2283 	mov	dptr,#_u8TransBuff
      0008CD 75 F0 00         [24] 2284 	mov	b,#0x00
      0008D0 12 01 B8         [24] 2285 	lcall	_EP0_SendData1
                                   2286 ;	usb.c:866: u8ControlState = DATA_STATE;
      0008D3 75 12 01         [24] 2287 	mov	_u8ControlState,#0x01
                                   2288 ;	usb.c:867: }
      0008D6 22               [24] 2289 	ret
                                   2290 ;------------------------------------------------------------
                                   2291 ;Allocation info for local variables in function 'SetConfiguration'
                                   2292 ;------------------------------------------------------------
                                   2293 ;	usb.c:868: static void SetConfiguration(void) {
                                   2294 ;	-----------------------------------------
                                   2295 ;	 function SetConfiguration
                                   2296 ;	-----------------------------------------
      0008D7                       2297 _SetConfiguration:
                                   2298 ;	usb.c:869: u8Config=u8SetupPacket[2];
      0008D7 90 01 6E         [24] 2299 	mov	dptr,#(_u8SetupPacket + 0x0002)
      0008DA E0               [24] 2300 	movx	a,@dptr
      0008DB F5 10            [12] 2301 	mov	_u8Config,a
                                   2302 ;	usb.c:888: EP0_SendData1(u8TransBuff, 0);
      0008DD 75 35 00         [24] 2303 	mov	_EP0_SendData1_PARM_2,#0x00
      0008E0 90 00 D6         [24] 2304 	mov	dptr,#_u8TransBuff
      0008E3 75 F0 00         [24] 2305 	mov	b,#0x00
      0008E6 12 01 B8         [24] 2306 	lcall	_EP0_SendData1
                                   2307 ;	usb.c:890: u8ControlState = STATUS_STATE;
      0008E9 75 12 02         [24] 2308 	mov	_u8ControlState,#0x02
                                   2309 ;	usb.c:891: }
      0008EC 22               [24] 2310 	ret
                                   2311 ;------------------------------------------------------------
                                   2312 ;Allocation info for local variables in function 'GetInterface'
                                   2313 ;------------------------------------------------------------
                                   2314 ;	usb.c:892: static void GetInterface(void) {
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function GetInterface
                                   2317 ;	-----------------------------------------
      0008ED                       2318 _GetInterface:
                                   2319 ;	usb.c:893: u8TransBuff[0] = 0x00;
      0008ED 90 00 D6         [24] 2320 	mov	dptr,#_u8TransBuff
      0008F0 E4               [12] 2321 	clr	a
      0008F1 F0               [24] 2322 	movx	@dptr,a
                                   2323 ;	usb.c:900: EP0_SendData1(u8TransBuff, 0x01);
      0008F2 75 35 01         [24] 2324 	mov	_EP0_SendData1_PARM_2,#0x01
      0008F5 90 00 D6         [24] 2325 	mov	dptr,#_u8TransBuff
      0008F8 75 F0 00         [24] 2326 	mov	b,#0x00
      0008FB 12 01 B8         [24] 2327 	lcall	_EP0_SendData1
                                   2328 ;	usb.c:901: u8ControlState = DATA_STATE;
      0008FE 75 12 01         [24] 2329 	mov	_u8ControlState,#0x01
                                   2330 ;	usb.c:902: }
      000901 22               [24] 2331 	ret
                                   2332 ;------------------------------------------------------------
                                   2333 ;Allocation info for local variables in function 'SetInterface'
                                   2334 ;------------------------------------------------------------
                                   2335 ;	usb.c:903: static void SetInterface(void) {
                                   2336 ;	-----------------------------------------
                                   2337 ;	 function SetInterface
                                   2338 ;	-----------------------------------------
      000902                       2339 _SetInterface:
                                   2340 ;	usb.c:911: EP0_SendData1(u8TransBuff, 0);
      000902 75 35 00         [24] 2341 	mov	_EP0_SendData1_PARM_2,#0x00
      000905 90 00 D6         [24] 2342 	mov	dptr,#_u8TransBuff
      000908 75 F0 00         [24] 2343 	mov	b,#0x00
      00090B 12 01 B8         [24] 2344 	lcall	_EP0_SendData1
                                   2345 ;	usb.c:912: u8ControlState = STATUS_STATE;
      00090E 75 12 02         [24] 2346 	mov	_u8ControlState,#0x02
                                   2347 ;	usb.c:913: }
      000911 22               [24] 2348 	ret
                                   2349 ;------------------------------------------------------------
                                   2350 ;Allocation info for local variables in function 'SynchFrame'
                                   2351 ;------------------------------------------------------------
                                   2352 ;	usb.c:914: static void SynchFrame(void) {
                                   2353 ;	-----------------------------------------
                                   2354 ;	 function SynchFrame
                                   2355 ;	-----------------------------------------
      000912                       2356 _SynchFrame:
                                   2357 ;	usb.c:916: }
      000912 22               [24] 2358 	ret
                                   2359 ;------------------------------------------------------------
                                   2360 ;Allocation info for local variables in function 'EP1_Out'
                                   2361 ;------------------------------------------------------------
                                   2362 ;	usb.c:918: void EP1_Out(void) {
                                   2363 ;	-----------------------------------------
                                   2364 ;	 function EP1_Out
                                   2365 ;	-----------------------------------------
      000913                       2366 _EP1_Out:
                                   2367 ;	usb.c:920: }
      000913 22               [24] 2368 	ret
                                   2369 ;------------------------------------------------------------
                                   2370 ;Allocation info for local variables in function 'EP1_In'
                                   2371 ;------------------------------------------------------------
                                   2372 ;	usb.c:922: void EP1_In(void) {
                                   2373 ;	-----------------------------------------
                                   2374 ;	 function EP1_In
                                   2375 ;	-----------------------------------------
      000914                       2376 _EP1_In:
                                   2377 ;	usb.c:924: }
      000914 22               [24] 2378 	ret
                                   2379 ;------------------------------------------------------------
                                   2380 ;Allocation info for local variables in function 'HID_SetIdle'
                                   2381 ;------------------------------------------------------------
                                   2382 ;	usb.c:926: static void HID_SetIdle(void) {
                                   2383 ;	-----------------------------------------
                                   2384 ;	 function HID_SetIdle
                                   2385 ;	-----------------------------------------
      000915                       2386 _HID_SetIdle:
                                   2387 ;	usb.c:928: u8ControlState = SETUP_STATE;
      000915 75 12 00         [24] 2388 	mov	_u8ControlState,#0x00
                                   2389 ;	usb.c:929: EP0_Stall();
                                   2390 ;	usb.c:930: }
      000918 02 02 57         [24] 2391 	ljmp	_EP0_Stall
                                   2392 ;------------------------------------------------------------
                                   2393 ;Allocation info for local variables in function 'HID_SetReport'
                                   2394 ;------------------------------------------------------------
                                   2395 ;	usb.c:932: static void HID_SetReport(void) {
                                   2396 ;	-----------------------------------------
                                   2397 ;	 function HID_SetReport
                                   2398 ;	-----------------------------------------
      00091B                       2399 _HID_SetReport:
                                   2400 ;	usb.c:933: switch (u8SetupPacket[2]) {
      00091B 90 01 6E         [24] 2401 	mov	dptr,#(_u8SetupPacket + 0x0002)
      00091E E0               [24] 2402 	movx	a,@dptr
      00091F FF               [12] 2403 	mov	r7,a
      000920 BF 01 02         [24] 2404 	cjne	r7,#0x01,00119$
      000923 80 0A            [24] 2405 	sjmp	00102$
      000925                       2406 00119$:
      000925 BF 02 02         [24] 2407 	cjne	r7,#0x02,00120$
      000928 80 05            [24] 2408 	sjmp	00102$
      00092A                       2409 00120$:
                                   2410 ;	usb.c:935: case 0x02:
      00092A BF 04 2C         [24] 2411 	cjne	r7,#0x04,00105$
      00092D 80 15            [24] 2412 	sjmp	00103$
      00092F                       2413 00102$:
                                   2414 ;	usb.c:936: u8HidReq = 1;
      00092F 75 0D 01         [24] 2415 	mov	_u8HidReq,#0x01
                                   2416 ;	usb.c:937: u8ControlState = DATA_STATE;
      000932 75 12 01         [24] 2417 	mov	_u8ControlState,#0x01
                                   2418 ;	usb.c:938: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
      000935 90 01 72         [24] 2419 	mov	dptr,#(_u8SetupPacket + 0x0006)
      000938 E0               [24] 2420 	movx	a,@dptr
      000939 F5 35            [12] 2421 	mov	_EP0_RecData1_PARM_2,a
      00093B 90 00 40         [24] 2422 	mov	dptr,#_u8ReceiveBuff
      00093E 75 F0 00         [24] 2423 	mov	b,#0x00
                                   2424 ;	usb.c:939: break;
                                   2425 ;	usb.c:940: case 0x04:
      000941 02 02 47         [24] 2426 	ljmp	_EP0_RecData1
      000944                       2427 00103$:
                                   2428 ;	usb.c:941: u8HidReq = 1;
      000944 75 0D 01         [24] 2429 	mov	_u8HidReq,#0x01
                                   2430 ;	usb.c:942: u8ControlState = DATA_STATE;
      000947 75 12 01         [24] 2431 	mov	_u8ControlState,#0x01
                                   2432 ;	usb.c:943: EP0_RecData1(u8ReceiveBuff, u8SetupPacket[6]);
      00094A 90 01 72         [24] 2433 	mov	dptr,#(_u8SetupPacket + 0x0006)
      00094D E0               [24] 2434 	movx	a,@dptr
      00094E F5 35            [12] 2435 	mov	_EP0_RecData1_PARM_2,a
      000950 90 00 40         [24] 2436 	mov	dptr,#_u8ReceiveBuff
      000953 75 F0 00         [24] 2437 	mov	b,#0x00
                                   2438 ;	usb.c:945: }
                                   2439 ;	usb.c:946: }
      000956 02 02 47         [24] 2440 	ljmp	_EP0_RecData1
      000959                       2441 00105$:
      000959 22               [24] 2442 	ret
                                   2443 ;------------------------------------------------------------
                                   2444 ;Allocation info for local variables in function 'HID_GetReport'
                                   2445 ;------------------------------------------------------------
                                   2446 ;	usb.c:948: static void HID_GetReport(void) {
                                   2447 ;	-----------------------------------------
                                   2448 ;	 function HID_GetReport
                                   2449 ;	-----------------------------------------
      00095A                       2450 _HID_GetReport:
                                   2451 ;	usb.c:951: u8ControlState = DATA_STATE;
      00095A 75 12 01         [24] 2452 	mov	_u8ControlState,#0x01
                                   2453 ;	usb.c:952: EP0_SendData1(u8TransBuff, u8HidNum);
      00095D 85 0E 35         [24] 2454 	mov	_EP0_SendData1_PARM_2,_u8HidNum
      000960 90 00 D6         [24] 2455 	mov	dptr,#_u8TransBuff
      000963 75 F0 00         [24] 2456 	mov	b,#0x00
                                   2457 ;	usb.c:953: }
      000966 02 01 B8         [24] 2458 	ljmp	_EP0_SendData1
                                   2459 	.area CSEG    (CODE)
                                   2460 	.area CONST   (CODE)
      002364                       2461 _deviceDescriptor:
      002364 12                    2462 	.db #0x12	; 18
      002365 01                    2463 	.db #0x01	; 1
      002366 00                    2464 	.db #0x00	; 0
      002367 02                    2465 	.db #0x02	; 2
      002368 00                    2466 	.db #0x00	; 0
      002369 00                    2467 	.db #0x00	; 0
      00236A 00                    2468 	.db #0x00	; 0
      00236B 40                    2469 	.db #0x40	; 64
      00236C 48                    2470 	.db #0x48	; 72	'H'
      00236D 43                    2471 	.db #0x43	; 67	'C'
      00236E 02                    2472 	.db #0x02	; 2
      00236F 00                    2473 	.db #0x00	; 0
      002370 01                    2474 	.db #0x01	; 1
      002371 00                    2475 	.db #0x00	; 0
      002372 01                    2476 	.db #0x01	; 1
      002373 02                    2477 	.db #0x02	; 2
      002374 03                    2478 	.db #0x03	; 3
      002375 01                    2479 	.db #0x01	; 1
      002376                       2480 _HID_DeviceReportDescriptor:
      002376 06                    2481 	.db #0x06	; 6
      002377 00                    2482 	.db #0x00	; 0
      002378 FF                    2483 	.db #0xff	; 255
      002379 09                    2484 	.db #0x09	; 9
      00237A 01                    2485 	.db #0x01	; 1
      00237B A1                    2486 	.db #0xa1	; 161
      00237C 01                    2487 	.db #0x01	; 1
      00237D 15                    2488 	.db #0x15	; 21
      00237E 00                    2489 	.db #0x00	; 0
      00237F 26                    2490 	.db #0x26	; 38
      002380 FF                    2491 	.db #0xff	; 255
      002381 00                    2492 	.db #0x00	; 0
      002382 75                    2493 	.db #0x75	; 117	'u'
      002383 08                    2494 	.db #0x08	; 8
      002384 85                    2495 	.db #0x85	; 133
      002385 01                    2496 	.db #0x01	; 1
      002386 95                    2497 	.db #0x95	; 149
      002387 07                    2498 	.db #0x07	; 7
      002388 09                    2499 	.db #0x09	; 9
      002389 00                    2500 	.db #0x00	; 0
      00238A B2                    2501 	.db #0xb2	; 178
      00238B 02                    2502 	.db #0x02	; 2
      00238C 01                    2503 	.db #0x01	; 1
      00238D 85                    2504 	.db #0x85	; 133
      00238E 02                    2505 	.db #0x02	; 2
      00238F 95                    2506 	.db #0x95	; 149
      002390 87                    2507 	.db #0x87	; 135
      002391 09                    2508 	.db #0x09	; 9
      002392 00                    2509 	.db #0x00	; 0
      002393 B2                    2510 	.db #0xb2	; 178
      002394 02                    2511 	.db #0x02	; 2
      002395 01                    2512 	.db #0x01	; 1
      002396 85                    2513 	.db #0x85	; 133
      002397 03                    2514 	.db #0x03	; 3
      002398 95                    2515 	.db #0x95	; 149
      002399 7F                    2516 	.db #0x7f	; 127
      00239A 09                    2517 	.db #0x09	; 9
      00239B 00                    2518 	.db #0x00	; 0
      00239C B2                    2519 	.db #0xb2	; 178
      00239D 02                    2520 	.db #0x02	; 2
      00239E 01                    2521 	.db #0x01	; 1
      00239F 85                    2522 	.db #0x85	; 133
      0023A0 04                    2523 	.db #0x04	; 4
      0023A1 95                    2524 	.db #0x95	; 149
      0023A2 3F                    2525 	.db #0x3f	; 63
      0023A3 09                    2526 	.db #0x09	; 9
      0023A4 00                    2527 	.db #0x00	; 0
      0023A5 B2                    2528 	.db #0xb2	; 178
      0023A6 02                    2529 	.db #0x02	; 2
      0023A7 01                    2530 	.db #0x01	; 1
      0023A8 C0                    2531 	.db #0xc0	; 192
      0023A9                       2532 _configDescriptor:
      0023A9 09                    2533 	.db #0x09	; 9
      0023AA 02                    2534 	.db #0x02	; 2
      0023AB 22                    2535 	.db #0x22	; 34
      0023AC 00                    2536 	.db #0x00	; 0
      0023AD 01                    2537 	.db #0x01	; 1
      0023AE 01                    2538 	.db #0x01	; 1
      0023AF 00                    2539 	.db #0x00	; 0
      0023B0 C0                    2540 	.db #0xc0	; 192
      0023B1 32                    2541 	.db #0x32	; 50	'2'
      0023B2 09                    2542 	.db #0x09	; 9
      0023B3 04                    2543 	.db #0x04	; 4
      0023B4 00                    2544 	.db #0x00	; 0
      0023B5 00                    2545 	.db #0x00	; 0
      0023B6 01                    2546 	.db #0x01	; 1
      0023B7 03                    2547 	.db #0x03	; 3
      0023B8 00                    2548 	.db #0x00	; 0
      0023B9 00                    2549 	.db #0x00	; 0
      0023BA 00                    2550 	.db #0x00	; 0
      0023BB 09                    2551 	.db #0x09	; 9
      0023BC 21                    2552 	.db #0x21	; 33
      0023BD 01                    2553 	.db #0x01	; 1
      0023BE 01                    2554 	.db #0x01	; 1
      0023BF 00                    2555 	.db #0x00	; 0
      0023C0 01                    2556 	.db #0x01	; 1
      0023C1 22                    2557 	.db #0x22	; 34
      0023C2 33                    2558 	.db #0x33	; 51	'3'
      0023C3 00                    2559 	.db #0x00	; 0
      0023C4 07                    2560 	.db #0x07	; 7
      0023C5 05                    2561 	.db #0x05	; 5
      0023C6 81                    2562 	.db #0x81	; 129
      0023C7 03                    2563 	.db #0x03	; 3
      0023C8 08                    2564 	.db #0x08	; 8
      0023C9 00                    2565 	.db #0x00	; 0
      0023CA 01                    2566 	.db #0x01	; 1
      0023CB                       2567 _stringDescriptor:
      0023CB 04                    2568 	.db #0x04	; 4
      0023CC 03                    2569 	.db #0x03	; 3
      0023CD 09                    2570 	.db #0x09	; 9
      0023CE 04                    2571 	.db #0x04	; 4
      0023CF                       2572 _manufacturerDescriptor:
      0023CF 20                    2573 	.db #0x20	; 32
      0023D0 03                    2574 	.db #0x03	; 3
      0023D1 56                    2575 	.db #0x56	; 86	'V'
      0023D2 00                    2576 	.db #0x00	; 0
      0023D3 69                    2577 	.db #0x69	; 105	'i'
      0023D4 00                    2578 	.db #0x00	; 0
      0023D5 64                    2579 	.db #0x64	; 100	'd'
      0023D6 00                    2580 	.db #0x00	; 0
      0023D7 69                    2581 	.db #0x69	; 105	'i'
      0023D8 00                    2582 	.db #0x00	; 0
      0023D9 65                    2583 	.db #0x65	; 101	'e'
      0023DA 00                    2584 	.db #0x00	; 0
      0023DB 75                    2585 	.db #0x75	; 117	'u'
      0023DC 00                    2586 	.db #0x00	; 0
      0023DD 6B                    2587 	.db #0x6b	; 107	'k'
      0023DE 00                    2588 	.db #0x00	; 0
      0023DF 68                    2589 	.db #0x68	; 104	'h'
      0023E0 00                    2590 	.db #0x00	; 0
      0023E1 69                    2591 	.db #0x69	; 105	'i'
      0023E2 00                    2592 	.db #0x00	; 0
      0023E3 65                    2593 	.db #0x65	; 101	'e'
      0023E4 00                    2594 	.db #0x00	; 0
      0023E5 6E                    2595 	.db #0x6e	; 110	'n'
      0023E6 00                    2596 	.db #0x00	; 0
      0023E7 2E                    2597 	.db #0x2e	; 46
      0023E8 00                    2598 	.db #0x00	; 0
      0023E9 6F                    2599 	.db #0x6f	; 111	'o'
      0023EA 00                    2600 	.db #0x00	; 0
      0023EB 72                    2601 	.db #0x72	; 114	'r'
      0023EC 00                    2602 	.db #0x00	; 0
      0023ED 67                    2603 	.db #0x67	; 103	'g'
      0023EE 00                    2604 	.db #0x00	; 0
      0023EF                       2605 _productDescriptor:
      0023EF 18                    2606 	.db #0x18	; 24
      0023F0 03                    2607 	.db #0x03	; 3
      0023F1 56                    2608 	.db #0x56	; 86	'V'
      0023F2 00                    2609 	.db #0x00	; 0
      0023F3 44                    2610 	.db #0x44	; 68	'D'
      0023F4 00                    2611 	.db #0x00	; 0
      0023F5 4B                    2612 	.db #0x4b	; 75	'K'
      0023F6 00                    2613 	.db #0x00	; 0
      0023F7 20                    2614 	.db #0x20	; 32
      0023F8 00                    2615 	.db #0x00	; 0
      0023F9 4B                    2616 	.db #0x4b	; 75	'K'
      0023FA 00                    2617 	.db #0x00	; 0
      0023FB 49                    2618 	.db #0x49	; 73	'I'
      0023FC 00                    2619 	.db #0x00	; 0
      0023FD 54                    2620 	.db #0x54	; 84	'T'
      0023FE 00                    2621 	.db #0x00	; 0
      0023FF 20                    2622 	.db #0x20	; 32
      002400 00                    2623 	.db #0x00	; 0
      002401 31                    2624 	.db #0x31	; 49	'1'
      002402 00                    2625 	.db #0x00	; 0
      002403 2E                    2626 	.db #0x2e	; 46
      002404 00                    2627 	.db #0x00	; 0
      002405 30                    2628 	.db #0x30	; 48	'0'
      002406 00                    2629 	.db #0x00	; 0
      002407                       2630 _serialDescriptor:
      002407 1A                    2631 	.db #0x1a	; 26
      002408 03                    2632 	.db #0x03	; 3
      002409 43                    2633 	.db #0x43	; 67	'C'
      00240A 00                    2634 	.db #0x00	; 0
      00240B 48                    2635 	.db #0x48	; 72	'H'
      00240C 00                    2636 	.db #0x00	; 0
      00240D 35                    2637 	.db #0x35	; 53	'5'
      00240E 00                    2638 	.db #0x00	; 0
      00240F 35                    2639 	.db #0x35	; 53	'5'
      002410 00                    2640 	.db #0x00	; 0
      002411 78                    2641 	.db #0x78	; 120	'x'
      002412 00                    2642 	.db #0x00	; 0
      002413 2D                    2643 	.db #0x2d	; 45
      002414 00                    2644 	.db #0x00	; 0
      002415 31                    2645 	.db #0x31	; 49	'1'
      002416 00                    2646 	.db #0x00	; 0
      002417 39                    2647 	.db #0x39	; 57	'9'
      002418 00                    2648 	.db #0x00	; 0
      002419 31                    2649 	.db #0x31	; 49	'1'
      00241A 00                    2650 	.db #0x00	; 0
      00241B 30                    2651 	.db #0x30	; 48	'0'
      00241C 00                    2652 	.db #0x00	; 0
      00241D 32                    2653 	.db #0x32	; 50	'2'
      00241E 00                    2654 	.db #0x00	; 0
      00241F 33                    2655 	.db #0x33	; 51	'3'
      002420 00                    2656 	.db #0x00	; 0
      002421                       2657 _u8Ver:
      002421 6D 63 75 50 72 6F 67  2658 	.ascii "mcuProg v1.0 b181231"
             20 76 31 2E 30 20 62
             31 38 31 32 33 31
      002435 00                    2659 	.db 0x00
                                   2660 	.area XINIT   (CODE)
                                   2661 	.area CABS    (ABS,CODE)
