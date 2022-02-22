                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module callback
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Delay_Ms
                                     12 	.globl _C2_ReadFlash
                                     13 	.globl _C2_WriteFlash
                                     14 	.globl _C2_ReadAR
                                     15 	.globl _C2_WriteAR
                                     16 	.globl _C2_WriteDR
                                     17 	.globl _C2_ReadDR
                                     18 	.globl _C2_Reset
                                     19 	.globl _C2_Exit
                                     20 	.globl _C2_Init
                                     21 	.globl _ICP_FlashWrite
                                     22 	.globl _ICP_SetWire
                                     23 	.globl _ICP_Enter
                                     24 	.globl _ICP_Read
                                     25 	.globl _ICP_Write
                                     26 	.globl _ICP_Exit
                                     27 	.globl _ICP_Init
                                     28 	.globl _ispReadEeprom
                                     29 	.globl _ispReadAvrHi
                                     30 	.globl _ispReadAvrLo
                                     31 	.globl _FindNotBlank
                                     32 	.globl _ispWriteFlashPage
                                     33 	.globl _ispWriteFlashByte
                                     34 	.globl _ispWriteEeprom
                                     35 	.globl _ispReadFlash
                                     36 	.globl _spi_send
                                     37 	.globl _spi_init
                                     38 	.globl _UIF_BUS_RST
                                     39 	.globl _UIF_DETECT
                                     40 	.globl _UIF_TRANSFER
                                     41 	.globl _UIF_SUSPEND
                                     42 	.globl _UIF_HST_SOF
                                     43 	.globl _UIF_FIFO_OV
                                     44 	.globl _U_SIE_FREE
                                     45 	.globl _U_TOG_OK
                                     46 	.globl _U_IS_NAK
                                     47 	.globl _ADC_CHAN0
                                     48 	.globl _ADC_CHAN1
                                     49 	.globl _CMP_CHAN
                                     50 	.globl _ADC_START
                                     51 	.globl _ADC_IF
                                     52 	.globl _CMP_IF
                                     53 	.globl _CMPO
                                     54 	.globl _U1RI
                                     55 	.globl _U1TI
                                     56 	.globl _U1RB8
                                     57 	.globl _U1TB8
                                     58 	.globl _U1REN
                                     59 	.globl _U1SMOD
                                     60 	.globl _U1SM0
                                     61 	.globl _S0_R_FIFO
                                     62 	.globl _S0_T_FIFO
                                     63 	.globl _S0_FREE
                                     64 	.globl _S0_IF_BYTE
                                     65 	.globl _S0_IF_FIRST
                                     66 	.globl _S0_IF_OV
                                     67 	.globl _S0_FST_ACT
                                     68 	.globl _CP_RL2
                                     69 	.globl _C_T2
                                     70 	.globl _TR2
                                     71 	.globl _EXEN2
                                     72 	.globl _TCLK
                                     73 	.globl _RCLK
                                     74 	.globl _EXF2
                                     75 	.globl _CAP1F
                                     76 	.globl _TF2
                                     77 	.globl _RI
                                     78 	.globl _TI
                                     79 	.globl _RB8
                                     80 	.globl _TB8
                                     81 	.globl _REN
                                     82 	.globl _SM2
                                     83 	.globl _SM1
                                     84 	.globl _SM0
                                     85 	.globl _IT0
                                     86 	.globl _IE0
                                     87 	.globl _IT1
                                     88 	.globl _IE1
                                     89 	.globl _TR0
                                     90 	.globl _TF0
                                     91 	.globl _TR1
                                     92 	.globl _TF1
                                     93 	.globl _RXD
                                     94 	.globl _PWM1_
                                     95 	.globl _TXD
                                     96 	.globl _PWM2_
                                     97 	.globl _AIN3
                                     98 	.globl _VBUS1
                                     99 	.globl _INT0
                                    100 	.globl _TXD1_
                                    101 	.globl _INT1
                                    102 	.globl _T0
                                    103 	.globl _RXD1_
                                    104 	.globl _PWM2
                                    105 	.globl _T1
                                    106 	.globl _UDP
                                    107 	.globl _UDM
                                    108 	.globl _TIN0
                                    109 	.globl _CAP1
                                    110 	.globl _T2
                                    111 	.globl _AIN0
                                    112 	.globl _VBUS2
                                    113 	.globl _TIN1
                                    114 	.globl _CAP2
                                    115 	.globl _T2EX
                                    116 	.globl _RXD_
                                    117 	.globl _TXD_
                                    118 	.globl _AIN1
                                    119 	.globl _UCC1
                                    120 	.globl _TIN2
                                    121 	.globl _SCS
                                    122 	.globl _CAP1_
                                    123 	.globl _T2_
                                    124 	.globl _AIN2
                                    125 	.globl _UCC2
                                    126 	.globl _TIN3
                                    127 	.globl _PWM1
                                    128 	.globl _MOSI
                                    129 	.globl _TIN4
                                    130 	.globl _RXD1
                                    131 	.globl _MISO
                                    132 	.globl _TIN5
                                    133 	.globl _TXD1
                                    134 	.globl _SCK
                                    135 	.globl _IE_SPI0
                                    136 	.globl _IE_TKEY
                                    137 	.globl _IE_USB
                                    138 	.globl _IE_ADC
                                    139 	.globl _IE_UART1
                                    140 	.globl _IE_PWMX
                                    141 	.globl _IE_GPIO
                                    142 	.globl _IE_WDOG
                                    143 	.globl _PX0
                                    144 	.globl _PT0
                                    145 	.globl _PX1
                                    146 	.globl _PT1
                                    147 	.globl _PS
                                    148 	.globl _PT2
                                    149 	.globl _PL_FLAG
                                    150 	.globl _PH_FLAG
                                    151 	.globl _EX0
                                    152 	.globl _ET0
                                    153 	.globl _EX1
                                    154 	.globl _ET1
                                    155 	.globl _ES
                                    156 	.globl _ET2
                                    157 	.globl _E_DIS
                                    158 	.globl _EA
                                    159 	.globl _P
                                    160 	.globl _F1
                                    161 	.globl _OV
                                    162 	.globl _RS0
                                    163 	.globl _RS1
                                    164 	.globl _F0
                                    165 	.globl _AC
                                    166 	.globl _CY
                                    167 	.globl _UEP1_DMA_H
                                    168 	.globl _UEP1_DMA_L
                                    169 	.globl _UEP1_DMA
                                    170 	.globl _UEP0_DMA_H
                                    171 	.globl _UEP0_DMA_L
                                    172 	.globl _UEP0_DMA
                                    173 	.globl _UEP2_3_MOD
                                    174 	.globl _UEP4_1_MOD
                                    175 	.globl _UEP3_DMA_H
                                    176 	.globl _UEP3_DMA_L
                                    177 	.globl _UEP3_DMA
                                    178 	.globl _UEP2_DMA_H
                                    179 	.globl _UEP2_DMA_L
                                    180 	.globl _UEP2_DMA
                                    181 	.globl _USB_DEV_AD
                                    182 	.globl _USB_CTRL
                                    183 	.globl _USB_INT_EN
                                    184 	.globl _UEP4_T_LEN
                                    185 	.globl _UEP4_CTRL
                                    186 	.globl _UEP0_T_LEN
                                    187 	.globl _UEP0_CTRL
                                    188 	.globl _USB_RX_LEN
                                    189 	.globl _USB_MIS_ST
                                    190 	.globl _USB_INT_ST
                                    191 	.globl _USB_INT_FG
                                    192 	.globl _UEP3_T_LEN
                                    193 	.globl _UEP3_CTRL
                                    194 	.globl _UEP2_T_LEN
                                    195 	.globl _UEP2_CTRL
                                    196 	.globl _UEP1_T_LEN
                                    197 	.globl _UEP1_CTRL
                                    198 	.globl _UDEV_CTRL
                                    199 	.globl _USB_C_CTRL
                                    200 	.globl _TKEY_DATH
                                    201 	.globl _TKEY_DATL
                                    202 	.globl _TKEY_DAT
                                    203 	.globl _TKEY_CTRL
                                    204 	.globl _ADC_DATA
                                    205 	.globl _ADC_CFG
                                    206 	.globl _ADC_CTRL
                                    207 	.globl _SBAUD1
                                    208 	.globl _SBUF1
                                    209 	.globl _SCON1
                                    210 	.globl _SPI0_SETUP
                                    211 	.globl _SPI0_CK_SE
                                    212 	.globl _SPI0_CTRL
                                    213 	.globl _SPI0_DATA
                                    214 	.globl _SPI0_STAT
                                    215 	.globl _PWM_CK_SE
                                    216 	.globl _PWM_CTRL
                                    217 	.globl _PWM_DATA1
                                    218 	.globl _PWM_DATA2
                                    219 	.globl _T2CAP1H
                                    220 	.globl _T2CAP1L
                                    221 	.globl _T2CAP1
                                    222 	.globl _TH2
                                    223 	.globl _TL2
                                    224 	.globl _T2COUNT
                                    225 	.globl _RCAP2H
                                    226 	.globl _RCAP2L
                                    227 	.globl _RCAP2
                                    228 	.globl _T2MOD
                                    229 	.globl _T2CON
                                    230 	.globl _SBUF
                                    231 	.globl _SCON
                                    232 	.globl _TH1
                                    233 	.globl _TH0
                                    234 	.globl _TL1
                                    235 	.globl _TL0
                                    236 	.globl _TMOD
                                    237 	.globl _TCON
                                    238 	.globl _XBUS_AUX
                                    239 	.globl _PIN_FUNC
                                    240 	.globl _P3_DIR_PU
                                    241 	.globl _P3_MOD_OC
                                    242 	.globl _P3
                                    243 	.globl _P2
                                    244 	.globl _P1_DIR_PU
                                    245 	.globl _P1_MOD_OC
                                    246 	.globl _P1
                                    247 	.globl _ROM_CTRL
                                    248 	.globl _ROM_DATA_H
                                    249 	.globl _ROM_DATA_L
                                    250 	.globl _ROM_DATA
                                    251 	.globl _ROM_ADDR_H
                                    252 	.globl _ROM_ADDR_L
                                    253 	.globl _ROM_ADDR
                                    254 	.globl _GPIO_IE
                                    255 	.globl _IP_EX
                                    256 	.globl _IE_EX
                                    257 	.globl _IP
                                    258 	.globl _IE
                                    259 	.globl _WDOG_COUNT
                                    260 	.globl _RESET_KEEP
                                    261 	.globl _WAKE_CTRL
                                    262 	.globl _CLOCK_CFG
                                    263 	.globl _PCON
                                    264 	.globl _GLOBAL_CFG
                                    265 	.globl _SAFE_MOD
                                    266 	.globl _DPH
                                    267 	.globl _DPL
                                    268 	.globl _SP
                                    269 	.globl _B
                                    270 	.globl _ACC
                                    271 	.globl _PSW
                                    272 	.globl _u8Pos
                                    273 	.globl _u8NeedFind
                                    274 	.globl _u8NumPage
                                    275 	.globl _u16PageSize
                                    276 	.globl _u8ExtAddr
                                    277 	.globl _u16Addr
                                    278 	.globl _u32Addr
                                    279 	.globl _EP0_Out_CallBack
                                    280 ;--------------------------------------------------------
                                    281 ; special function registers
                                    282 ;--------------------------------------------------------
                                    283 	.area RSEG    (ABS,DATA)
      000000                        284 	.org 0x0000
                           0000D0   285 _PSW	=	0x00d0
                           0000E0   286 _ACC	=	0x00e0
                           0000F0   287 _B	=	0x00f0
                           000081   288 _SP	=	0x0081
                           000082   289 _DPL	=	0x0082
                           000083   290 _DPH	=	0x0083
                           0000A1   291 _SAFE_MOD	=	0x00a1
                           0000B1   292 _GLOBAL_CFG	=	0x00b1
                           000087   293 _PCON	=	0x0087
                           0000B9   294 _CLOCK_CFG	=	0x00b9
                           0000A9   295 _WAKE_CTRL	=	0x00a9
                           0000FE   296 _RESET_KEEP	=	0x00fe
                           0000FF   297 _WDOG_COUNT	=	0x00ff
                           0000A8   298 _IE	=	0x00a8
                           0000B8   299 _IP	=	0x00b8
                           0000E8   300 _IE_EX	=	0x00e8
                           0000E9   301 _IP_EX	=	0x00e9
                           0000C7   302 _GPIO_IE	=	0x00c7
                           008584   303 _ROM_ADDR	=	0x8584
                           000084   304 _ROM_ADDR_L	=	0x0084
                           000085   305 _ROM_ADDR_H	=	0x0085
                           008F8E   306 _ROM_DATA	=	0x8f8e
                           00008E   307 _ROM_DATA_L	=	0x008e
                           00008F   308 _ROM_DATA_H	=	0x008f
                           000086   309 _ROM_CTRL	=	0x0086
                           000090   310 _P1	=	0x0090
                           000092   311 _P1_MOD_OC	=	0x0092
                           000093   312 _P1_DIR_PU	=	0x0093
                           0000A0   313 _P2	=	0x00a0
                           0000B0   314 _P3	=	0x00b0
                           000096   315 _P3_MOD_OC	=	0x0096
                           000097   316 _P3_DIR_PU	=	0x0097
                           0000C6   317 _PIN_FUNC	=	0x00c6
                           0000A2   318 _XBUS_AUX	=	0x00a2
                           000088   319 _TCON	=	0x0088
                           000089   320 _TMOD	=	0x0089
                           00008A   321 _TL0	=	0x008a
                           00008B   322 _TL1	=	0x008b
                           00008C   323 _TH0	=	0x008c
                           00008D   324 _TH1	=	0x008d
                           000098   325 _SCON	=	0x0098
                           000099   326 _SBUF	=	0x0099
                           0000C8   327 _T2CON	=	0x00c8
                           0000C9   328 _T2MOD	=	0x00c9
                           00CBCA   329 _RCAP2	=	0xcbca
                           0000CA   330 _RCAP2L	=	0x00ca
                           0000CB   331 _RCAP2H	=	0x00cb
                           00CDCC   332 _T2COUNT	=	0xcdcc
                           0000CC   333 _TL2	=	0x00cc
                           0000CD   334 _TH2	=	0x00cd
                           00CFCE   335 _T2CAP1	=	0xcfce
                           0000CE   336 _T2CAP1L	=	0x00ce
                           0000CF   337 _T2CAP1H	=	0x00cf
                           00009B   338 _PWM_DATA2	=	0x009b
                           00009C   339 _PWM_DATA1	=	0x009c
                           00009D   340 _PWM_CTRL	=	0x009d
                           00009E   341 _PWM_CK_SE	=	0x009e
                           0000F8   342 _SPI0_STAT	=	0x00f8
                           0000F9   343 _SPI0_DATA	=	0x00f9
                           0000FA   344 _SPI0_CTRL	=	0x00fa
                           0000FB   345 _SPI0_CK_SE	=	0x00fb
                           0000FC   346 _SPI0_SETUP	=	0x00fc
                           0000C0   347 _SCON1	=	0x00c0
                           0000C1   348 _SBUF1	=	0x00c1
                           0000C2   349 _SBAUD1	=	0x00c2
                           000080   350 _ADC_CTRL	=	0x0080
                           00009A   351 _ADC_CFG	=	0x009a
                           00009F   352 _ADC_DATA	=	0x009f
                           0000C3   353 _TKEY_CTRL	=	0x00c3
                           00C5C4   354 _TKEY_DAT	=	0xc5c4
                           0000C4   355 _TKEY_DATL	=	0x00c4
                           0000C5   356 _TKEY_DATH	=	0x00c5
                           000091   357 _USB_C_CTRL	=	0x0091
                           0000D1   358 _UDEV_CTRL	=	0x00d1
                           0000D2   359 _UEP1_CTRL	=	0x00d2
                           0000D3   360 _UEP1_T_LEN	=	0x00d3
                           0000D4   361 _UEP2_CTRL	=	0x00d4
                           0000D5   362 _UEP2_T_LEN	=	0x00d5
                           0000D6   363 _UEP3_CTRL	=	0x00d6
                           0000D7   364 _UEP3_T_LEN	=	0x00d7
                           0000D8   365 _USB_INT_FG	=	0x00d8
                           0000D9   366 _USB_INT_ST	=	0x00d9
                           0000DA   367 _USB_MIS_ST	=	0x00da
                           0000DB   368 _USB_RX_LEN	=	0x00db
                           0000DC   369 _UEP0_CTRL	=	0x00dc
                           0000DD   370 _UEP0_T_LEN	=	0x00dd
                           0000DE   371 _UEP4_CTRL	=	0x00de
                           0000DF   372 _UEP4_T_LEN	=	0x00df
                           0000E1   373 _USB_INT_EN	=	0x00e1
                           0000E2   374 _USB_CTRL	=	0x00e2
                           0000E3   375 _USB_DEV_AD	=	0x00e3
                           00E5E4   376 _UEP2_DMA	=	0xe5e4
                           0000E4   377 _UEP2_DMA_L	=	0x00e4
                           0000E5   378 _UEP2_DMA_H	=	0x00e5
                           00E7E6   379 _UEP3_DMA	=	0xe7e6
                           0000E6   380 _UEP3_DMA_L	=	0x00e6
                           0000E7   381 _UEP3_DMA_H	=	0x00e7
                           0000EA   382 _UEP4_1_MOD	=	0x00ea
                           0000EB   383 _UEP2_3_MOD	=	0x00eb
                           00EDEC   384 _UEP0_DMA	=	0xedec
                           0000EC   385 _UEP0_DMA_L	=	0x00ec
                           0000ED   386 _UEP0_DMA_H	=	0x00ed
                           00EFEE   387 _UEP1_DMA	=	0xefee
                           0000EE   388 _UEP1_DMA_L	=	0x00ee
                           0000EF   389 _UEP1_DMA_H	=	0x00ef
                                    390 ;--------------------------------------------------------
                                    391 ; special function bits
                                    392 ;--------------------------------------------------------
                                    393 	.area RSEG    (ABS,DATA)
      000000                        394 	.org 0x0000
                           0000D7   395 _CY	=	0x00d7
                           0000D6   396 _AC	=	0x00d6
                           0000D5   397 _F0	=	0x00d5
                           0000D4   398 _RS1	=	0x00d4
                           0000D3   399 _RS0	=	0x00d3
                           0000D2   400 _OV	=	0x00d2
                           0000D1   401 _F1	=	0x00d1
                           0000D0   402 _P	=	0x00d0
                           0000AF   403 _EA	=	0x00af
                           0000AE   404 _E_DIS	=	0x00ae
                           0000AD   405 _ET2	=	0x00ad
                           0000AC   406 _ES	=	0x00ac
                           0000AB   407 _ET1	=	0x00ab
                           0000AA   408 _EX1	=	0x00aa
                           0000A9   409 _ET0	=	0x00a9
                           0000A8   410 _EX0	=	0x00a8
                           0000BF   411 _PH_FLAG	=	0x00bf
                           0000BE   412 _PL_FLAG	=	0x00be
                           0000BD   413 _PT2	=	0x00bd
                           0000BC   414 _PS	=	0x00bc
                           0000BB   415 _PT1	=	0x00bb
                           0000BA   416 _PX1	=	0x00ba
                           0000B9   417 _PT0	=	0x00b9
                           0000B8   418 _PX0	=	0x00b8
                           0000EF   419 _IE_WDOG	=	0x00ef
                           0000EE   420 _IE_GPIO	=	0x00ee
                           0000ED   421 _IE_PWMX	=	0x00ed
                           0000EC   422 _IE_UART1	=	0x00ec
                           0000EB   423 _IE_ADC	=	0x00eb
                           0000EA   424 _IE_USB	=	0x00ea
                           0000E9   425 _IE_TKEY	=	0x00e9
                           0000E8   426 _IE_SPI0	=	0x00e8
                           000097   427 _SCK	=	0x0097
                           000097   428 _TXD1	=	0x0097
                           000097   429 _TIN5	=	0x0097
                           000096   430 _MISO	=	0x0096
                           000096   431 _RXD1	=	0x0096
                           000096   432 _TIN4	=	0x0096
                           000095   433 _MOSI	=	0x0095
                           000095   434 _PWM1	=	0x0095
                           000095   435 _TIN3	=	0x0095
                           000095   436 _UCC2	=	0x0095
                           000095   437 _AIN2	=	0x0095
                           000094   438 _T2_	=	0x0094
                           000094   439 _CAP1_	=	0x0094
                           000094   440 _SCS	=	0x0094
                           000094   441 _TIN2	=	0x0094
                           000094   442 _UCC1	=	0x0094
                           000094   443 _AIN1	=	0x0094
                           000093   444 _TXD_	=	0x0093
                           000092   445 _RXD_	=	0x0092
                           000091   446 _T2EX	=	0x0091
                           000091   447 _CAP2	=	0x0091
                           000091   448 _TIN1	=	0x0091
                           000091   449 _VBUS2	=	0x0091
                           000091   450 _AIN0	=	0x0091
                           000090   451 _T2	=	0x0090
                           000090   452 _CAP1	=	0x0090
                           000090   453 _TIN0	=	0x0090
                           0000B7   454 _UDM	=	0x00b7
                           0000B6   455 _UDP	=	0x00b6
                           0000B5   456 _T1	=	0x00b5
                           0000B4   457 _PWM2	=	0x00b4
                           0000B4   458 _RXD1_	=	0x00b4
                           0000B4   459 _T0	=	0x00b4
                           0000B3   460 _INT1	=	0x00b3
                           0000B2   461 _TXD1_	=	0x00b2
                           0000B2   462 _INT0	=	0x00b2
                           0000B2   463 _VBUS1	=	0x00b2
                           0000B2   464 _AIN3	=	0x00b2
                           0000B1   465 _PWM2_	=	0x00b1
                           0000B1   466 _TXD	=	0x00b1
                           0000B0   467 _PWM1_	=	0x00b0
                           0000B0   468 _RXD	=	0x00b0
                           00008F   469 _TF1	=	0x008f
                           00008E   470 _TR1	=	0x008e
                           00008D   471 _TF0	=	0x008d
                           00008C   472 _TR0	=	0x008c
                           00008B   473 _IE1	=	0x008b
                           00008A   474 _IT1	=	0x008a
                           000089   475 _IE0	=	0x0089
                           000088   476 _IT0	=	0x0088
                           00009F   477 _SM0	=	0x009f
                           00009E   478 _SM1	=	0x009e
                           00009D   479 _SM2	=	0x009d
                           00009C   480 _REN	=	0x009c
                           00009B   481 _TB8	=	0x009b
                           00009A   482 _RB8	=	0x009a
                           000099   483 _TI	=	0x0099
                           000098   484 _RI	=	0x0098
                           0000CF   485 _TF2	=	0x00cf
                           0000CF   486 _CAP1F	=	0x00cf
                           0000CE   487 _EXF2	=	0x00ce
                           0000CD   488 _RCLK	=	0x00cd
                           0000CC   489 _TCLK	=	0x00cc
                           0000CB   490 _EXEN2	=	0x00cb
                           0000CA   491 _TR2	=	0x00ca
                           0000C9   492 _C_T2	=	0x00c9
                           0000C8   493 _CP_RL2	=	0x00c8
                           0000FF   494 _S0_FST_ACT	=	0x00ff
                           0000FE   495 _S0_IF_OV	=	0x00fe
                           0000FD   496 _S0_IF_FIRST	=	0x00fd
                           0000FC   497 _S0_IF_BYTE	=	0x00fc
                           0000FB   498 _S0_FREE	=	0x00fb
                           0000FA   499 _S0_T_FIFO	=	0x00fa
                           0000F8   500 _S0_R_FIFO	=	0x00f8
                           0000C7   501 _U1SM0	=	0x00c7
                           0000C5   502 _U1SMOD	=	0x00c5
                           0000C4   503 _U1REN	=	0x00c4
                           0000C3   504 _U1TB8	=	0x00c3
                           0000C2   505 _U1RB8	=	0x00c2
                           0000C1   506 _U1TI	=	0x00c1
                           0000C0   507 _U1RI	=	0x00c0
                           000087   508 _CMPO	=	0x0087
                           000086   509 _CMP_IF	=	0x0086
                           000085   510 _ADC_IF	=	0x0085
                           000084   511 _ADC_START	=	0x0084
                           000083   512 _CMP_CHAN	=	0x0083
                           000081   513 _ADC_CHAN1	=	0x0081
                           000080   514 _ADC_CHAN0	=	0x0080
                           0000DF   515 _U_IS_NAK	=	0x00df
                           0000DE   516 _U_TOG_OK	=	0x00de
                           0000DD   517 _U_SIE_FREE	=	0x00dd
                           0000DC   518 _UIF_FIFO_OV	=	0x00dc
                           0000DB   519 _UIF_HST_SOF	=	0x00db
                           0000DA   520 _UIF_SUSPEND	=	0x00da
                           0000D9   521 _UIF_TRANSFER	=	0x00d9
                           0000D8   522 _UIF_DETECT	=	0x00d8
                           0000D8   523 _UIF_BUS_RST	=	0x00d8
                           0000B2   524 _rst	=	0x00b2
                                    525 ;--------------------------------------------------------
                                    526 ; overlayable register banks
                                    527 ;--------------------------------------------------------
                                    528 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        529 	.ds 8
                                    530 ;--------------------------------------------------------
                                    531 ; internal ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area DSEG    (DATA)
      000028                        534 _u32Addr::
      000028                        535 	.ds 4
      00002C                        536 _u16Addr::
      00002C                        537 	.ds 2
      00002E                        538 _u8ExtAddr::
      00002E                        539 	.ds 1
      00002F                        540 _u16PageSize::
      00002F                        541 	.ds 2
      000031                        542 _u8NumPage::
      000031                        543 	.ds 1
      000032                        544 _u8NeedFind::
      000032                        545 	.ds 1
      000033                        546 _u8Pos::
      000033                        547 	.ds 1
      000034                        548 _EP0_Out_CallBack_u8Ret_65536_36:
      000034                        549 	.ds 1
                                    550 ;--------------------------------------------------------
                                    551 ; overlayable items in internal ram 
                                    552 ;--------------------------------------------------------
                                    553 ;--------------------------------------------------------
                                    554 ; indirectly addressable internal ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area ISEG    (DATA)
                                    557 ;--------------------------------------------------------
                                    558 ; absolute internal ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area IABS    (ABS,DATA)
                                    561 	.area IABS    (ABS,DATA)
                                    562 ;--------------------------------------------------------
                                    563 ; bit data
                                    564 ;--------------------------------------------------------
                                    565 	.area BSEG    (BIT)
                                    566 ;--------------------------------------------------------
                                    567 ; paged external ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area PSEG    (PAG,XDATA)
                                    570 ;--------------------------------------------------------
                                    571 ; external ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area XSEG    (XDATA)
                                    574 ;--------------------------------------------------------
                                    575 ; absolute external ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area XABS    (ABS,XDATA)
                                    578 ;--------------------------------------------------------
                                    579 ; external initialized ram data
                                    580 ;--------------------------------------------------------
                                    581 	.area XISEG   (XDATA)
                                    582 	.area HOME    (CODE)
                                    583 	.area GSINIT0 (CODE)
                                    584 	.area GSINIT1 (CODE)
                                    585 	.area GSINIT2 (CODE)
                                    586 	.area GSINIT3 (CODE)
                                    587 	.area GSINIT4 (CODE)
                                    588 	.area GSINIT5 (CODE)
                                    589 	.area GSINIT  (CODE)
                                    590 	.area GSFINAL (CODE)
                                    591 	.area CSEG    (CODE)
                                    592 ;--------------------------------------------------------
                                    593 ; global & static initialisations
                                    594 ;--------------------------------------------------------
                                    595 	.area HOME    (CODE)
                                    596 	.area GSINIT  (CODE)
                                    597 	.area GSFINAL (CODE)
                                    598 	.area GSINIT  (CODE)
                                    599 ;--------------------------------------------------------
                                    600 ; Home
                                    601 ;--------------------------------------------------------
                                    602 	.area HOME    (CODE)
                                    603 	.area HOME    (CODE)
                                    604 ;--------------------------------------------------------
                                    605 ; code
                                    606 ;--------------------------------------------------------
                                    607 	.area CSEG    (CODE)
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'EP0_Out_CallBack'
                                    610 ;------------------------------------------------------------
                                    611 ;i                         Allocated to registers r6 r7 
                                    612 ;u8Ret                     Allocated with name '_EP0_Out_CallBack_u8Ret_65536_36'
                                    613 ;u32Tmp                    Allocated to registers r7 r6 r5 r4 
                                    614 ;------------------------------------------------------------
                                    615 ;	callback.c:23: void EP0_Out_CallBack(void)
                                    616 ;	-----------------------------------------
                                    617 ;	 function EP0_Out_CallBack
                                    618 ;	-----------------------------------------
      001778                        619 _EP0_Out_CallBack:
                           000007   620 	ar7 = 0x07
                           000006   621 	ar6 = 0x06
                           000005   622 	ar5 = 0x05
                           000004   623 	ar4 = 0x04
                           000003   624 	ar3 = 0x03
                           000002   625 	ar2 = 0x02
                           000001   626 	ar1 = 0x01
                           000000   627 	ar0 = 0x00
                                    628 ;	callback.c:29: switch (u8ReceiveBuff[0]) {
      001778 90 00 40         [24]  629 	mov	dptr,#_u8ReceiveBuff
      00177B E0               [24]  630 	movx	a,@dptr
      00177C FF               [12]  631 	mov	r7,a
      00177D BF 01 02         [24]  632 	cjne	r7,#0x01,00653$
      001780 80 0D            [24]  633 	sjmp	00101$
      001782                        634 00653$:
      001782 BF 02 03         [24]  635 	cjne	r7,#0x02,00654$
      001785 02 1B 83         [24]  636 	ljmp	00157$
      001788                        637 00654$:
      001788 BF 04 03         [24]  638 	cjne	r7,#0x04,00655$
      00178B 02 20 2F         [24]  639 	ljmp	00204$
      00178E                        640 00655$:
      00178E 22               [24]  641 	ret
                                    642 ;	callback.c:31: case 0x01:
      00178F                        643 00101$:
                                    644 ;	callback.c:35: if (u8Chip == CHIP_C2) {
      00178F 74 02            [12]  645 	mov	a,#0x02
      001791 B5 13 02         [24]  646 	cjne	a,_u8Chip,00656$
      001794 80 03            [24]  647 	sjmp	00657$
      001796                        648 00656$:
      001796 02 18 28         [24]  649 	ljmp	00105$
      001799                        650 00657$:
                                    651 ;	callback.c:36: u32Tmp = u8ReceiveBuff[5];
      001799 90 00 45         [24]  652 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      00179C E0               [24]  653 	movx	a,@dptr
      00179D FF               [12]  654 	mov	r7,a
      00179E 7E 00            [12]  655 	mov	r6,#0x00
                                    656 ;	callback.c:37: u32Tmp <<= 24;
      0017A0 8F 2B            [24]  657 	mov	(_u32Addr + 3),r7
                                    658 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      0017A2 8E 28            [24]  659 	mov	_u32Addr,r6
                                    660 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      0017A4 8E 29            [24]  661 	mov	(_u32Addr + 1),r6
                                    662 ;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
      0017A6 8E 2A            [24]  663 	mov	(_u32Addr + 2),r6
                                    664 ;	callback.c:39: u32Tmp = u8ReceiveBuff[4];
      0017A8 90 00 44         [24]  665 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      0017AB E0               [24]  666 	movx	a,@dptr
      0017AC FF               [12]  667 	mov	r7,a
      0017AD 7E 00            [12]  668 	mov	r6,#0x00
                                    669 ;	callback.c:40: u32Tmp <<= 16;
      0017AF 8E 04            [24]  670 	mov	ar4,r6
      0017B1 8F 05            [24]  671 	mov	ar5,r7
                                    672 ;	callback.c:41: u32Addr += u32Tmp;
      0017B3 E4               [12]  673 	clr	a
      0017B4 FE               [12]  674 	mov	r6,a
      0017B5 25 28            [12]  675 	add	a,_u32Addr
      0017B7 F5 28            [12]  676 	mov	_u32Addr,a
      0017B9 EE               [12]  677 	mov	a,r6
      0017BA 35 29            [12]  678 	addc	a,(_u32Addr + 1)
      0017BC F5 29            [12]  679 	mov	(_u32Addr + 1),a
      0017BE ED               [12]  680 	mov	a,r5
      0017BF 35 2A            [12]  681 	addc	a,(_u32Addr + 2)
      0017C1 F5 2A            [12]  682 	mov	(_u32Addr + 2),a
      0017C3 EC               [12]  683 	mov	a,r4
      0017C4 35 2B            [12]  684 	addc	a,(_u32Addr + 3)
      0017C6 F5 2B            [12]  685 	mov	(_u32Addr + 3),a
                                    686 ;	callback.c:42: u32Tmp = u8ReceiveBuff[3];
      0017C8 90 00 43         [24]  687 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      0017CB E0               [24]  688 	movx	a,@dptr
      0017CC FF               [12]  689 	mov	r7,a
      0017CD 7E 00            [12]  690 	mov	r6,#0x00
      0017CF 7D 00            [12]  691 	mov	r5,#0x00
                                    692 ;	callback.c:43: u32Tmp <<= 8;
      0017D1 8D 04            [24]  693 	mov	ar4,r5
      0017D3 8E 05            [24]  694 	mov	ar5,r6
      0017D5 8F 06            [24]  695 	mov	ar6,r7
                                    696 ;	callback.c:44: u32Addr += u32Tmp;
      0017D7 E4               [12]  697 	clr	a
      0017D8 25 28            [12]  698 	add	a,_u32Addr
      0017DA F5 28            [12]  699 	mov	_u32Addr,a
      0017DC EE               [12]  700 	mov	a,r6
      0017DD 35 29            [12]  701 	addc	a,(_u32Addr + 1)
      0017DF F5 29            [12]  702 	mov	(_u32Addr + 1),a
      0017E1 ED               [12]  703 	mov	a,r5
      0017E2 35 2A            [12]  704 	addc	a,(_u32Addr + 2)
      0017E4 F5 2A            [12]  705 	mov	(_u32Addr + 2),a
      0017E6 EC               [12]  706 	mov	a,r4
      0017E7 35 2B            [12]  707 	addc	a,(_u32Addr + 3)
      0017E9 F5 2B            [12]  708 	mov	(_u32Addr + 3),a
                                    709 ;	callback.c:45: u32Tmp = u8ReceiveBuff[2];
      0017EB 90 00 42         [24]  710 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      0017EE E0               [24]  711 	movx	a,@dptr
      0017EF FF               [12]  712 	mov	r7,a
                                    713 ;	callback.c:46: u32Addr += u32Tmp;
      0017F0 E4               [12]  714 	clr	a
      0017F1 FE               [12]  715 	mov	r6,a
      0017F2 FD               [12]  716 	mov	r5,a
      0017F3 FC               [12]  717 	mov	r4,a
      0017F4 EF               [12]  718 	mov	a,r7
      0017F5 25 28            [12]  719 	add	a,_u32Addr
      0017F7 F5 28            [12]  720 	mov	_u32Addr,a
      0017F9 EE               [12]  721 	mov	a,r6
      0017FA 35 29            [12]  722 	addc	a,(_u32Addr + 1)
      0017FC F5 29            [12]  723 	mov	(_u32Addr + 1),a
      0017FE ED               [12]  724 	mov	a,r5
      0017FF 35 2A            [12]  725 	addc	a,(_u32Addr + 2)
      001801 F5 2A            [12]  726 	mov	(_u32Addr + 2),a
      001803 EC               [12]  727 	mov	a,r4
      001804 35 2B            [12]  728 	addc	a,(_u32Addr + 3)
      001806 F5 2B            [12]  729 	mov	(_u32Addr + 3),a
                                    730 ;	callback.c:47: if (C2_ReadFlash(u32Addr, u8ReceiveBuff[6], &u8TransBuff[0])) {
      001808 90 00 46         [24]  731 	mov	dptr,#(_u8ReceiveBuff + 0x0006)
      00180B E0               [24]  732 	movx	a,@dptr
      00180C F5 23            [12]  733 	mov	_C2_ReadFlash_PARM_2,a
      00180E 75 24 D6         [24]  734 	mov	_C2_ReadFlash_PARM_3,#_u8TransBuff
      001811 75 25 00         [24]  735 	mov	(_C2_ReadFlash_PARM_3 + 1),#(_u8TransBuff >> 8)
                                    736 ;	1-genFromRTrack replaced	mov	(_C2_ReadFlash_PARM_3 + 2),#0x00
      001814 8E 26            [24]  737 	mov	(_C2_ReadFlash_PARM_3 + 2),r6
      001816 85 28 82         [24]  738 	mov	dpl,_u32Addr
      001819 85 29 83         [24]  739 	mov	dph,(_u32Addr + 1)
      00181C 85 2A F0         [24]  740 	mov	b,(_u32Addr + 2)
      00181F E5 2B            [12]  741 	mov	a,(_u32Addr + 3)
      001821 12 16 3E         [24]  742 	lcall	_C2_ReadFlash
                                    743 ;	callback.c:52: u8HidNum = 128;
      001824 75 0E 80         [24]  744 	mov	_u8HidNum,#0x80
                                    745 ;	callback.c:53: break;
      001827 22               [24]  746 	ret
      001828                        747 00105$:
                                    748 ;	callback.c:55: switch (u8ReceiveBuff[1]) {
      001828 90 00 41         [24]  749 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      00182B E0               [24]  750 	movx	a,@dptr
      00182C FF               [12]  751 	mov	r7,a
      00182D BF 08 00         [24]  752 	cjne	r7,#0x08,00658$
      001830                        753 00658$:
      001830 50 01            [24]  754 	jnc	00659$
      001832 22               [24]  755 	ret
      001833                        756 00659$:
      001833 EF               [12]  757 	mov	a,r7
      001834 24 F0            [12]  758 	add	a,#0xff - 0x0f
      001836 50 01            [24]  759 	jnc	00660$
      001838 22               [24]  760 	ret
      001839                        761 00660$:
      001839 EF               [12]  762 	mov	a,r7
      00183A 24 F8            [12]  763 	add	a,#0xf8
      00183C FF               [12]  764 	mov	r7,a
      00183D 24 0A            [12]  765 	add	a,#(00661$-3-.)
      00183F 83               [24]  766 	movc	a,@a+pc
      001840 F5 82            [12]  767 	mov	dpl,a
      001842 EF               [12]  768 	mov	a,r7
      001843 24 0C            [12]  769 	add	a,#(00662$-3-.)
      001845 83               [24]  770 	movc	a,@a+pc
      001846 F5 83            [12]  771 	mov	dph,a
      001848 E4               [12]  772 	clr	a
      001849 73               [24]  773 	jmp	@a+dptr
      00184A                        774 00661$:
      00184A 13                     775 	.db	00148$
      00184B BB                     776 	.db	00146$
      00184C AA                     777 	.db	00265$
      00184D AE                     778 	.db	00144$
      00184E AA                     779 	.db	00265$
      00184F D0                     780 	.db	00110$
      001850 7C                     781 	.db	00276$
      001851 5A                     782 	.db	00273$
      001852                        783 00662$:
      001852 1A                     784 	.db	00148$>>8
      001853 19                     785 	.db	00146$>>8
      001854 22                     786 	.db	00265$>>8
      001855 19                     787 	.db	00144$>>8
      001856 22                     788 	.db	00265$>>8
      001857 18                     789 	.db	00110$>>8
      001858 18                     790 	.db	00276$>>8
      001859 18                     791 	.db	00273$>>8
                                    792 ;	callback.c:57: for (i=0; i<8; ++i) {
      00185A                        793 00273$:
      00185A 7E 00            [12]  794 	mov	r6,#0x00
      00185C 7F 00            [12]  795 	mov	r7,#0x00
      00185E                        796 00237$:
                                    797 ;	callback.c:58: u8TransBuff[i] = 0x00;
      00185E EE               [12]  798 	mov	a,r6
      00185F 24 D6            [12]  799 	add	a,#_u8TransBuff
      001861 F5 82            [12]  800 	mov	dpl,a
      001863 EF               [12]  801 	mov	a,r7
      001864 34 00            [12]  802 	addc	a,#(_u8TransBuff >> 8)
      001866 F5 83            [12]  803 	mov	dph,a
      001868 E4               [12]  804 	clr	a
      001869 F0               [24]  805 	movx	@dptr,a
                                    806 ;	callback.c:57: for (i=0; i<8; ++i) {
      00186A 0E               [12]  807 	inc	r6
      00186B BE 00 01         [24]  808 	cjne	r6,#0x00,00663$
      00186E 0F               [12]  809 	inc	r7
      00186F                        810 00663$:
      00186F C3               [12]  811 	clr	c
      001870 EE               [12]  812 	mov	a,r6
      001871 94 08            [12]  813 	subb	a,#0x08
      001873 EF               [12]  814 	mov	a,r7
      001874 94 00            [12]  815 	subb	a,#0x00
      001876 40 E6            [24]  816 	jc	00237$
                                    817 ;	callback.c:60: u8HidNum = 8;
      001878 75 0E 08         [24]  818 	mov	_u8HidNum,#0x08
                                    819 ;	callback.c:61: break;
      00187B 22               [24]  820 	ret
                                    821 ;	callback.c:63: for(i=0; i<u8ReceiveBuff[7]; ++i) {
      00187C                        822 00276$:
      00187C 7E 00            [12]  823 	mov	r6,#0x00
      00187E 7F 00            [12]  824 	mov	r7,#0x00
      001880                        825 00240$:
      001880 90 00 47         [24]  826 	mov	dptr,#(_u8ReceiveBuff + 0x0007)
      001883 E0               [24]  827 	movx	a,@dptr
      001884 FD               [12]  828 	mov	r5,a
      001885 7C 00            [12]  829 	mov	r4,#0x00
      001887 C3               [12]  830 	clr	c
      001888 EE               [12]  831 	mov	a,r6
      001889 9D               [12]  832 	subb	a,r5
      00188A EF               [12]  833 	mov	a,r7
      00188B 9C               [12]  834 	subb	a,r4
      00188C 50 3E            [24]  835 	jnc	00109$
                                    836 ;	callback.c:64: u8TransBuff[i] = spi_send(u8ReceiveBuff[i+2]);
      00188E EE               [12]  837 	mov	a,r6
      00188F 24 D6            [12]  838 	add	a,#_u8TransBuff
      001891 FC               [12]  839 	mov	r4,a
      001892 EF               [12]  840 	mov	a,r7
      001893 34 00            [12]  841 	addc	a,#(_u8TransBuff >> 8)
      001895 FD               [12]  842 	mov	r5,a
      001896 74 02            [12]  843 	mov	a,#0x02
      001898 2E               [12]  844 	add	a,r6
      001899 FA               [12]  845 	mov	r2,a
      00189A E4               [12]  846 	clr	a
      00189B 3F               [12]  847 	addc	a,r7
      00189C FB               [12]  848 	mov	r3,a
      00189D EA               [12]  849 	mov	a,r2
      00189E 24 40            [12]  850 	add	a,#_u8ReceiveBuff
      0018A0 F5 82            [12]  851 	mov	dpl,a
      0018A2 EB               [12]  852 	mov	a,r3
      0018A3 34 00            [12]  853 	addc	a,#(_u8ReceiveBuff >> 8)
      0018A5 F5 83            [12]  854 	mov	dph,a
      0018A7 E0               [24]  855 	movx	a,@dptr
      0018A8 F5 82            [12]  856 	mov	dpl,a
      0018AA C0 07            [24]  857 	push	ar7
      0018AC C0 06            [24]  858 	push	ar6
      0018AE C0 05            [24]  859 	push	ar5
      0018B0 C0 04            [24]  860 	push	ar4
      0018B2 12 09 CC         [24]  861 	lcall	_spi_send
      0018B5 AB 82            [24]  862 	mov	r3,dpl
      0018B7 D0 04            [24]  863 	pop	ar4
      0018B9 D0 05            [24]  864 	pop	ar5
      0018BB D0 06            [24]  865 	pop	ar6
      0018BD D0 07            [24]  866 	pop	ar7
      0018BF 8C 82            [24]  867 	mov	dpl,r4
      0018C1 8D 83            [24]  868 	mov	dph,r5
      0018C3 EB               [12]  869 	mov	a,r3
      0018C4 F0               [24]  870 	movx	@dptr,a
                                    871 ;	callback.c:63: for(i=0; i<u8ReceiveBuff[7]; ++i) {
      0018C5 0E               [12]  872 	inc	r6
      0018C6 BE 00 B7         [24]  873 	cjne	r6,#0x00,00240$
      0018C9 0F               [12]  874 	inc	r7
      0018CA 80 B4            [24]  875 	sjmp	00240$
      0018CC                        876 00109$:
                                    877 ;	callback.c:66: u8HidNum = 8;
      0018CC 75 0E 08         [24]  878 	mov	_u8HidNum,#0x08
                                    879 ;	callback.c:67: break;
      0018CF 22               [24]  880 	ret
                                    881 ;	callback.c:68: case 0x0D:
      0018D0                        882 00110$:
                                    883 ;	callback.c:73: switch (u8ReceiveBuff[3]) {
      0018D0 90 00 43         [24]  884 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      0018D3 E0               [24]  885 	movx	a,@dptr
      0018D4 FF               [12]  886 	mov  r7,a
      0018D5 24 F9            [12]  887 	add	a,#0xff - 0x06
      0018D7 50 03            [24]  888 	jnc	00667$
      0018D9 02 19 7E         [24]  889 	ljmp	00135$
      0018DC                        890 00667$:
      0018DC EF               [12]  891 	mov	a,r7
      0018DD 2F               [12]  892 	add	a,r7
      0018DE 2F               [12]  893 	add	a,r7
      0018DF 90 18 E3         [24]  894 	mov	dptr,#00668$
      0018E2 73               [24]  895 	jmp	@a+dptr
      0018E3                        896 00668$:
      0018E3 02 19 7E         [24]  897 	ljmp	00135$
      0018E6 02 18 F8         [24]  898 	ljmp	00111$
      0018E9 02 19 10         [24]  899 	ljmp	00115$
      0018EC 02 19 26         [24]  900 	ljmp	00119$
      0018EF 02 19 3C         [24]  901 	ljmp	00123$
      0018F2 02 19 52         [24]  902 	ljmp	00127$
      0018F5 02 19 68         [24]  903 	ljmp	00131$
                                    904 ;	callback.c:74: case 0x01:
      0018F8                        905 00111$:
                                    906 ;	callback.c:75: if (!u8ReceiveBuff[2]) {
      0018F8 90 00 42         [24]  907 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      0018FB E0               [24]  908 	movx	a,@dptr
      0018FC 70 09            [24]  909 	jnz	00113$
                                    910 ;	callback.c:76: spi_init(1);
      0018FE 75 82 01         [24]  911 	mov	dpl,#0x01
      001901 12 09 69         [24]  912 	lcall	_spi_init
      001904 02 19 92         [24]  913 	ljmp	00139$
      001907                        914 00113$:
                                    915 ;	callback.c:78: spi_init(3);
      001907 75 82 03         [24]  916 	mov	dpl,#0x03
      00190A 12 09 69         [24]  917 	lcall	_spi_init
                                    918 ;	callback.c:80: break;
      00190D 02 19 92         [24]  919 	ljmp	00139$
                                    920 ;	callback.c:81: case 0x02:
      001910                        921 00115$:
                                    922 ;	callback.c:82: if (!u8ReceiveBuff[2]) {
      001910 90 00 42         [24]  923 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001913 E0               [24]  924 	movx	a,@dptr
      001914 70 08            [24]  925 	jnz	00117$
                                    926 ;	callback.c:83: spi_init(2);
      001916 75 82 02         [24]  927 	mov	dpl,#0x02
      001919 12 09 69         [24]  928 	lcall	_spi_init
      00191C 80 74            [24]  929 	sjmp	00139$
      00191E                        930 00117$:
                                    931 ;	callback.c:85: spi_init(4);
      00191E 75 82 04         [24]  932 	mov	dpl,#0x04
      001921 12 09 69         [24]  933 	lcall	_spi_init
                                    934 ;	callback.c:87: break;
                                    935 ;	callback.c:88: case 0x03:
      001924 80 6C            [24]  936 	sjmp	00139$
      001926                        937 00119$:
                                    938 ;	callback.c:89: if (!u8ReceiveBuff[2]) {
      001926 90 00 42         [24]  939 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001929 E0               [24]  940 	movx	a,@dptr
      00192A 70 08            [24]  941 	jnz	00121$
                                    942 ;	callback.c:90: spi_init(3);
      00192C 75 82 03         [24]  943 	mov	dpl,#0x03
      00192F 12 09 69         [24]  944 	lcall	_spi_init
      001932 80 5E            [24]  945 	sjmp	00139$
      001934                        946 00121$:
                                    947 ;	callback.c:92: spi_init(5);
      001934 75 82 05         [24]  948 	mov	dpl,#0x05
      001937 12 09 69         [24]  949 	lcall	_spi_init
                                    950 ;	callback.c:94: break;
                                    951 ;	callback.c:95: case 0x04:
      00193A 80 56            [24]  952 	sjmp	00139$
      00193C                        953 00123$:
                                    954 ;	callback.c:96: if (!u8ReceiveBuff[2]) {
      00193C 90 00 42         [24]  955 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      00193F E0               [24]  956 	movx	a,@dptr
      001940 70 08            [24]  957 	jnz	00125$
                                    958 ;	callback.c:97: spi_init(4);
      001942 75 82 04         [24]  959 	mov	dpl,#0x04
      001945 12 09 69         [24]  960 	lcall	_spi_init
      001948 80 48            [24]  961 	sjmp	00139$
      00194A                        962 00125$:
                                    963 ;	callback.c:99: spi_init(6);
      00194A 75 82 06         [24]  964 	mov	dpl,#0x06
      00194D 12 09 69         [24]  965 	lcall	_spi_init
                                    966 ;	callback.c:101: break;
                                    967 ;	callback.c:102: case 0x05:
      001950 80 40            [24]  968 	sjmp	00139$
      001952                        969 00127$:
                                    970 ;	callback.c:103: if (!u8ReceiveBuff[2]) {
      001952 90 00 42         [24]  971 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001955 E0               [24]  972 	movx	a,@dptr
      001956 70 08            [24]  973 	jnz	00129$
                                    974 ;	callback.c:104: spi_init(5);
      001958 75 82 05         [24]  975 	mov	dpl,#0x05
      00195B 12 09 69         [24]  976 	lcall	_spi_init
      00195E 80 32            [24]  977 	sjmp	00139$
      001960                        978 00129$:
                                    979 ;	callback.c:106: spi_init(7);
      001960 75 82 07         [24]  980 	mov	dpl,#0x07
      001963 12 09 69         [24]  981 	lcall	_spi_init
                                    982 ;	callback.c:108: break;
                                    983 ;	callback.c:109: case 0x06:
      001966 80 2A            [24]  984 	sjmp	00139$
      001968                        985 00131$:
                                    986 ;	callback.c:110: if (!u8ReceiveBuff[2]) {
      001968 90 00 42         [24]  987 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      00196B E0               [24]  988 	movx	a,@dptr
      00196C 70 08            [24]  989 	jnz	00133$
                                    990 ;	callback.c:111: spi_init(6);
      00196E 75 82 06         [24]  991 	mov	dpl,#0x06
      001971 12 09 69         [24]  992 	lcall	_spi_init
      001974 80 1C            [24]  993 	sjmp	00139$
      001976                        994 00133$:
                                    995 ;	callback.c:113: spi_init(8);
      001976 75 82 08         [24]  996 	mov	dpl,#0x08
      001979 12 09 69         [24]  997 	lcall	_spi_init
                                    998 ;	callback.c:115: break;
                                    999 ;	callback.c:116: default:
      00197C 80 14            [24] 1000 	sjmp	00139$
      00197E                       1001 00135$:
                                   1002 ;	callback.c:117: if (!u8ReceiveBuff[2]) {
      00197E 90 00 42         [24] 1003 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001981 E0               [24] 1004 	movx	a,@dptr
      001982 70 08            [24] 1005 	jnz	00137$
                                   1006 ;	callback.c:118: spi_init(7);
      001984 75 82 07         [24] 1007 	mov	dpl,#0x07
      001987 12 09 69         [24] 1008 	lcall	_spi_init
      00198A 80 06            [24] 1009 	sjmp	00139$
      00198C                       1010 00137$:
                                   1011 ;	callback.c:120: spi_init(9);
      00198C 75 82 09         [24] 1012 	mov	dpl,#0x09
      00198F 12 09 69         [24] 1013 	lcall	_spi_init
                                   1014 ;	callback.c:123: }
      001992                       1015 00139$:
                                   1016 ;	callback.c:127: if(u8ReceiveBuff[2]) {
      001992 90 00 42         [24] 1017 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001995 E0               [24] 1018 	movx	a,@dptr
      001996 60 07            [24] 1019 	jz	00141$
                                   1020 ;	callback.c:128: u8Chip=CHIP_89S;
      001998 75 13 01         [24] 1021 	mov	_u8Chip,#0x01
                                   1022 ;	callback.c:130: rst = 1;
                                   1023 ;	assignBit
      00199B D2 B2            [12] 1024 	setb	_rst
      00199D 80 05            [24] 1025 	sjmp	00142$
      00199F                       1026 00141$:
                                   1027 ;	callback.c:132: u8Chip=CHIP_AVR;
      00199F 75 13 00         [24] 1028 	mov	_u8Chip,#0x00
                                   1029 ;	callback.c:134: rst = 0;
                                   1030 ;	assignBit
      0019A2 C2 B2            [12] 1031 	clr	_rst
      0019A4                       1032 00142$:
                                   1033 ;	callback.c:137: P3_MOD_OC &= ~(1 << 2);
      0019A4 53 96 FB         [24] 1034 	anl	_P3_MOD_OC,#0xfb
                                   1035 ;	callback.c:138: P3_DIR_PU |= (1 << 2);
      0019A7 43 97 04         [24] 1036 	orl	_P3_DIR_PU,#0x04
                                   1037 ;	callback.c:140: u8HidNum = 8;
      0019AA 75 0E 08         [24] 1038 	mov	_u8HidNum,#0x08
                                   1039 ;	callback.c:141: break;
      0019AD 22               [24] 1040 	ret
                                   1041 ;	callback.c:144: case 0x0B:
      0019AE                       1042 00144$:
                                   1043 ;	callback.c:151: SPI0_CTRL = 0x00;
      0019AE 75 FA 00         [24] 1044 	mov	_SPI0_CTRL,#0x00
                                   1045 ;	callback.c:152: P3_MOD_OC &= ~(1 << 2);
      0019B1 53 96 FB         [24] 1046 	anl	_P3_MOD_OC,#0xfb
                                   1047 ;	callback.c:153: P3_DIR_PU &= ~(1 << 2);
      0019B4 53 97 FB         [24] 1048 	anl	_P3_DIR_PU,#0xfb
                                   1049 ;	callback.c:154: u8HidNum = 0;
      0019B7 75 0E 00         [24] 1050 	mov	_u8HidNum,#0x00
                                   1051 ;	callback.c:155: break;
      0019BA 22               [24] 1052 	ret
                                   1053 ;	callback.c:158: case 0x09:
      0019BB                       1054 00146$:
                                   1055 ;	callback.c:159: u16Addr= u8ReceiveBuff[3]*256+u8ReceiveBuff[2];
      0019BB 90 00 43         [24] 1056 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      0019BE E0               [24] 1057 	movx	a,@dptr
      0019BF FE               [12] 1058 	mov	r6,a
      0019C0 7F 00            [12] 1059 	mov	r7,#0x00
      0019C2 90 00 42         [24] 1060 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      0019C5 E0               [24] 1061 	movx	a,@dptr
      0019C6 FD               [12] 1062 	mov	r5,a
      0019C7 7C 00            [12] 1063 	mov	r4,#0x00
      0019C9 2F               [12] 1064 	add	a,r7
      0019CA F5 2C            [12] 1065 	mov	_u16Addr,a
      0019CC EC               [12] 1066 	mov	a,r4
      0019CD 3E               [12] 1067 	addc	a,r6
      0019CE F5 2D            [12] 1068 	mov	(_u16Addr + 1),a
                                   1069 ;	callback.c:160: for(i=0; i<128; ++i) {
      0019D0 7E 00            [12] 1070 	mov	r6,#0x00
      0019D2 7F 00            [12] 1071 	mov	r7,#0x00
      0019D4                       1072 00242$:
                                   1073 ;	callback.c:161: u8TransBuff[i]= ispReadEeprom(u16Addr+i);
      0019D4 EE               [12] 1074 	mov	a,r6
      0019D5 24 D6            [12] 1075 	add	a,#_u8TransBuff
      0019D7 FC               [12] 1076 	mov	r4,a
      0019D8 EF               [12] 1077 	mov	a,r7
      0019D9 34 00            [12] 1078 	addc	a,#(_u8TransBuff >> 8)
      0019DB FD               [12] 1079 	mov	r5,a
      0019DC EE               [12] 1080 	mov	a,r6
      0019DD 25 2C            [12] 1081 	add	a,_u16Addr
      0019DF F5 82            [12] 1082 	mov	dpl,a
      0019E1 EF               [12] 1083 	mov	a,r7
      0019E2 35 2D            [12] 1084 	addc	a,(_u16Addr + 1)
      0019E4 F5 83            [12] 1085 	mov	dph,a
      0019E6 C0 07            [24] 1086 	push	ar7
      0019E8 C0 06            [24] 1087 	push	ar6
      0019EA C0 05            [24] 1088 	push	ar5
      0019EC C0 04            [24] 1089 	push	ar4
      0019EE 12 0A 54         [24] 1090 	lcall	_ispReadEeprom
      0019F1 AB 82            [24] 1091 	mov	r3,dpl
      0019F3 D0 04            [24] 1092 	pop	ar4
      0019F5 D0 05            [24] 1093 	pop	ar5
      0019F7 D0 06            [24] 1094 	pop	ar6
      0019F9 D0 07            [24] 1095 	pop	ar7
      0019FB 8C 82            [24] 1096 	mov	dpl,r4
      0019FD 8D 83            [24] 1097 	mov	dph,r5
      0019FF EB               [12] 1098 	mov	a,r3
      001A00 F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	callback.c:160: for(i=0; i<128; ++i) {
      001A01 0E               [12] 1101 	inc	r6
      001A02 BE 00 01         [24] 1102 	cjne	r6,#0x00,00677$
      001A05 0F               [12] 1103 	inc	r7
      001A06                       1104 00677$:
      001A06 C3               [12] 1105 	clr	c
      001A07 EE               [12] 1106 	mov	a,r6
      001A08 94 80            [12] 1107 	subb	a,#0x80
      001A0A EF               [12] 1108 	mov	a,r7
      001A0B 94 00            [12] 1109 	subb	a,#0x00
      001A0D 40 C5            [24] 1110 	jc	00242$
                                   1111 ;	callback.c:163: u8HidNum = 128;
      001A0F 75 0E 80         [24] 1112 	mov	_u8HidNum,#0x80
                                   1113 ;	callback.c:164: break;
      001A12 22               [24] 1114 	ret
                                   1115 ;	callback.c:165: case 0x08:
      001A13                       1116 00148$:
                                   1117 ;	callback.c:166: if(u8Chip==CHIP_AVR) {
      001A13 E5 13            [12] 1118 	mov	a,_u8Chip
      001A15 60 03            [24] 1119 	jz	00679$
      001A17 02 1B 2B         [24] 1120 	ljmp	00154$
      001A1A                       1121 00679$:
                                   1122 ;	callback.c:167: u32Tmp = u8ReceiveBuff[4];
      001A1A 90 00 44         [24] 1123 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      001A1D E0               [24] 1124 	movx	a,@dptr
      001A1E FF               [12] 1125 	mov	r7,a
      001A1F 7E 00            [12] 1126 	mov	r6,#0x00
                                   1127 ;	callback.c:168: u32Tmp <<= 16;
      001A21 8E 2B            [24] 1128 	mov	(_u32Addr + 3),r6
      001A23 8F 2A            [24] 1129 	mov	(_u32Addr + 2),r7
                                   1130 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      001A25 8E 28            [24] 1131 	mov	_u32Addr,r6
                                   1132 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      001A27 8E 29            [24] 1133 	mov	(_u32Addr + 1),r6
                                   1134 ;	callback.c:170: u32Tmp = u8ReceiveBuff[3];
      001A29 90 00 43         [24] 1135 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      001A2C E0               [24] 1136 	movx	a,@dptr
      001A2D FF               [12] 1137 	mov	r7,a
      001A2E 7E 00            [12] 1138 	mov	r6,#0x00
      001A30 7D 00            [12] 1139 	mov	r5,#0x00
                                   1140 ;	callback.c:171: u32Tmp <<= 8;
      001A32 8D 04            [24] 1141 	mov	ar4,r5
      001A34 8E 05            [24] 1142 	mov	ar5,r6
      001A36 8F 06            [24] 1143 	mov	ar6,r7
                                   1144 ;	callback.c:172: u32Addr += u32Tmp;
      001A38 E4               [12] 1145 	clr	a
      001A39 25 28            [12] 1146 	add	a,_u32Addr
      001A3B F5 28            [12] 1147 	mov	_u32Addr,a
      001A3D EE               [12] 1148 	mov	a,r6
      001A3E 35 29            [12] 1149 	addc	a,(_u32Addr + 1)
      001A40 F5 29            [12] 1150 	mov	(_u32Addr + 1),a
      001A42 ED               [12] 1151 	mov	a,r5
      001A43 35 2A            [12] 1152 	addc	a,(_u32Addr + 2)
      001A45 F5 2A            [12] 1153 	mov	(_u32Addr + 2),a
      001A47 EC               [12] 1154 	mov	a,r4
      001A48 35 2B            [12] 1155 	addc	a,(_u32Addr + 3)
      001A4A F5 2B            [12] 1156 	mov	(_u32Addr + 3),a
                                   1157 ;	callback.c:173: u32Tmp = u8ReceiveBuff[2];
      001A4C 90 00 42         [24] 1158 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001A4F E0               [24] 1159 	movx	a,@dptr
      001A50 FF               [12] 1160 	mov	r7,a
                                   1161 ;	callback.c:174: u32Addr += u32Tmp;
      001A51 E4               [12] 1162 	clr	a
      001A52 FE               [12] 1163 	mov	r6,a
      001A53 FD               [12] 1164 	mov	r5,a
      001A54 FC               [12] 1165 	mov	r4,a
      001A55 EF               [12] 1166 	mov	a,r7
      001A56 25 28            [12] 1167 	add	a,_u32Addr
      001A58 F5 28            [12] 1168 	mov	_u32Addr,a
      001A5A EE               [12] 1169 	mov	a,r6
      001A5B 35 29            [12] 1170 	addc	a,(_u32Addr + 1)
      001A5D F5 29            [12] 1171 	mov	(_u32Addr + 1),a
      001A5F ED               [12] 1172 	mov	a,r5
      001A60 35 2A            [12] 1173 	addc	a,(_u32Addr + 2)
      001A62 F5 2A            [12] 1174 	mov	(_u32Addr + 2),a
      001A64 EC               [12] 1175 	mov	a,r4
      001A65 35 2B            [12] 1176 	addc	a,(_u32Addr + 3)
                                   1177 ;	callback.c:177: u32Addr>>=1;
      001A67 F5 2B            [12] 1178 	mov	(_u32Addr + 3),a
      001A69 C3               [12] 1179 	clr	c
      001A6A 13               [12] 1180 	rrc	a
      001A6B F5 2B            [12] 1181 	mov	(_u32Addr + 3),a
      001A6D E5 2A            [12] 1182 	mov	a,(_u32Addr + 2)
      001A6F 13               [12] 1183 	rrc	a
      001A70 F5 2A            [12] 1184 	mov	(_u32Addr + 2),a
      001A72 E5 29            [12] 1185 	mov	a,(_u32Addr + 1)
      001A74 13               [12] 1186 	rrc	a
      001A75 F5 29            [12] 1187 	mov	(_u32Addr + 1),a
      001A77 E5 28            [12] 1188 	mov	a,_u32Addr
      001A79 13               [12] 1189 	rrc	a
      001A7A F5 28            [12] 1190 	mov	_u32Addr,a
                                   1191 ;	callback.c:178: u16Addr=(uint16_t)u32Addr;
      001A7C 85 28 2C         [24] 1192 	mov	_u16Addr,_u32Addr
      001A7F 85 29 2D         [24] 1193 	mov	(_u16Addr + 1),(_u32Addr + 1)
                                   1194 ;	callback.c:179: u32Addr>>=16;
      001A82 85 2A 28         [24] 1195 	mov	_u32Addr,(_u32Addr + 2)
      001A85 85 2B 29         [24] 1196 	mov	(_u32Addr + 1),(_u32Addr + 3)
                                   1197 ;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
      001A88 8E 2A            [24] 1198 	mov	(_u32Addr + 2),r6
                                   1199 ;	1-genFromRTrack replaced	mov	(_u32Addr + 3),#0x00
      001A8A 8E 2B            [24] 1200 	mov	(_u32Addr + 3),r6
                                   1201 ;	callback.c:180: u8ExtAddr=u32Addr;
                                   1202 ;	callback.c:182: if(u8ExtAddr) {
      001A8C E5 28            [12] 1203 	mov	a,_u32Addr
      001A8E F5 2E            [12] 1204 	mov	_u8ExtAddr,a
      001A90 60 18            [24] 1205 	jz	00290$
                                   1206 ;	callback.c:183: spi_send(0x4D);
      001A92 75 82 4D         [24] 1207 	mov	dpl,#0x4d
      001A95 12 09 CC         [24] 1208 	lcall	_spi_send
                                   1209 ;	callback.c:184: spi_send(0x00);
      001A98 75 82 00         [24] 1210 	mov	dpl,#0x00
      001A9B 12 09 CC         [24] 1211 	lcall	_spi_send
                                   1212 ;	callback.c:185: spi_send(u8ExtAddr);
      001A9E 85 2E 82         [24] 1213 	mov	dpl,_u8ExtAddr
      001AA1 12 09 CC         [24] 1214 	lcall	_spi_send
                                   1215 ;	callback.c:186: spi_send(0x00);
      001AA4 75 82 00         [24] 1216 	mov	dpl,#0x00
      001AA7 12 09 CC         [24] 1217 	lcall	_spi_send
                                   1218 ;	callback.c:188: for(i=0; i<128/2; ++i) {
      001AAA                       1219 00290$:
      001AAA 7E 00            [12] 1220 	mov	r6,#0x00
      001AAC 7F 00            [12] 1221 	mov	r7,#0x00
      001AAE                       1222 00244$:
                                   1223 ;	callback.c:189: u8TransBuff[i*2]= ispReadAvrLo(u16Addr+i);
      001AAE EE               [12] 1224 	mov	a,r6
      001AAF 2E               [12] 1225 	add	a,r6
      001AB0 FC               [12] 1226 	mov	r4,a
      001AB1 EF               [12] 1227 	mov	a,r7
      001AB2 33               [12] 1228 	rlc	a
      001AB3 FD               [12] 1229 	mov	r5,a
      001AB4 EC               [12] 1230 	mov	a,r4
      001AB5 24 D6            [12] 1231 	add	a,#_u8TransBuff
      001AB7 FA               [12] 1232 	mov	r2,a
      001AB8 ED               [12] 1233 	mov	a,r5
      001AB9 34 00            [12] 1234 	addc	a,#(_u8TransBuff >> 8)
      001ABB FB               [12] 1235 	mov	r3,a
      001ABC EE               [12] 1236 	mov	a,r6
      001ABD 25 2C            [12] 1237 	add	a,_u16Addr
      001ABF F5 82            [12] 1238 	mov	dpl,a
      001AC1 EF               [12] 1239 	mov	a,r7
      001AC2 35 2D            [12] 1240 	addc	a,(_u16Addr + 1)
      001AC4 F5 83            [12] 1241 	mov	dph,a
      001AC6 C0 07            [24] 1242 	push	ar7
      001AC8 C0 06            [24] 1243 	push	ar6
      001ACA C0 05            [24] 1244 	push	ar5
      001ACC C0 04            [24] 1245 	push	ar4
      001ACE C0 03            [24] 1246 	push	ar3
      001AD0 C0 02            [24] 1247 	push	ar2
      001AD2 12 0A 00         [24] 1248 	lcall	_ispReadAvrLo
      001AD5 A9 82            [24] 1249 	mov	r1,dpl
      001AD7 D0 02            [24] 1250 	pop	ar2
      001AD9 D0 03            [24] 1251 	pop	ar3
      001ADB D0 04            [24] 1252 	pop	ar4
      001ADD D0 05            [24] 1253 	pop	ar5
      001ADF D0 06            [24] 1254 	pop	ar6
      001AE1 D0 07            [24] 1255 	pop	ar7
      001AE3 8A 82            [24] 1256 	mov	dpl,r2
      001AE5 8B 83            [24] 1257 	mov	dph,r3
      001AE7 E9               [12] 1258 	mov	a,r1
      001AE8 F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	callback.c:190: u8TransBuff[i*2+1]= ispReadAvrHi(u16Addr+i);
      001AE9 0C               [12] 1261 	inc	r4
      001AEA BC 00 01         [24] 1262 	cjne	r4,#0x00,00681$
      001AED 0D               [12] 1263 	inc	r5
      001AEE                       1264 00681$:
      001AEE EC               [12] 1265 	mov	a,r4
      001AEF 24 D6            [12] 1266 	add	a,#_u8TransBuff
      001AF1 FC               [12] 1267 	mov	r4,a
      001AF2 ED               [12] 1268 	mov	a,r5
      001AF3 34 00            [12] 1269 	addc	a,#(_u8TransBuff >> 8)
      001AF5 FD               [12] 1270 	mov	r5,a
      001AF6 EE               [12] 1271 	mov	a,r6
      001AF7 25 2C            [12] 1272 	add	a,_u16Addr
      001AF9 F5 82            [12] 1273 	mov	dpl,a
      001AFB EF               [12] 1274 	mov	a,r7
      001AFC 35 2D            [12] 1275 	addc	a,(_u16Addr + 1)
      001AFE F5 83            [12] 1276 	mov	dph,a
      001B00 C0 07            [24] 1277 	push	ar7
      001B02 C0 06            [24] 1278 	push	ar6
      001B04 C0 05            [24] 1279 	push	ar5
      001B06 C0 04            [24] 1280 	push	ar4
      001B08 12 0A 2A         [24] 1281 	lcall	_ispReadAvrHi
      001B0B AB 82            [24] 1282 	mov	r3,dpl
      001B0D D0 04            [24] 1283 	pop	ar4
      001B0F D0 05            [24] 1284 	pop	ar5
      001B11 D0 06            [24] 1285 	pop	ar6
      001B13 D0 07            [24] 1286 	pop	ar7
      001B15 8C 82            [24] 1287 	mov	dpl,r4
      001B17 8D 83            [24] 1288 	mov	dph,r5
      001B19 EB               [12] 1289 	mov	a,r3
      001B1A F0               [24] 1290 	movx	@dptr,a
                                   1291 ;	callback.c:188: for(i=0; i<128/2; ++i) {
      001B1B 0E               [12] 1292 	inc	r6
      001B1C BE 00 01         [24] 1293 	cjne	r6,#0x00,00682$
      001B1F 0F               [12] 1294 	inc	r7
      001B20                       1295 00682$:
      001B20 C3               [12] 1296 	clr	c
      001B21 EE               [12] 1297 	mov	a,r6
      001B22 94 40            [12] 1298 	subb	a,#0x40
      001B24 EF               [12] 1299 	mov	a,r7
      001B25 94 00            [12] 1300 	subb	a,#0x00
      001B27 40 85            [24] 1301 	jc	00244$
      001B29 80 54            [24] 1302 	sjmp	00155$
      001B2B                       1303 00154$:
                                   1304 ;	callback.c:193: u16Addr=u8ReceiveBuff[3]*256+u8ReceiveBuff[2];
      001B2B 90 00 43         [24] 1305 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      001B2E E0               [24] 1306 	movx	a,@dptr
      001B2F FE               [12] 1307 	mov	r6,a
      001B30 7F 00            [12] 1308 	mov	r7,#0x00
      001B32 90 00 42         [24] 1309 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001B35 E0               [24] 1310 	movx	a,@dptr
      001B36 FD               [12] 1311 	mov	r5,a
      001B37 7C 00            [12] 1312 	mov	r4,#0x00
      001B39 2F               [12] 1313 	add	a,r7
      001B3A F5 2C            [12] 1314 	mov	_u16Addr,a
      001B3C EC               [12] 1315 	mov	a,r4
      001B3D 3E               [12] 1316 	addc	a,r6
      001B3E F5 2D            [12] 1317 	mov	(_u16Addr + 1),a
                                   1318 ;	callback.c:194: for(i=0; i<128; ++i) {
      001B40 7E 00            [12] 1319 	mov	r6,#0x00
      001B42 7F 00            [12] 1320 	mov	r7,#0x00
      001B44                       1321 00246$:
                                   1322 ;	callback.c:195: u8TransBuff[i]=ispReadFlash(u16Addr+i);
      001B44 EE               [12] 1323 	mov	a,r6
      001B45 24 D6            [12] 1324 	add	a,#_u8TransBuff
      001B47 FC               [12] 1325 	mov	r4,a
      001B48 EF               [12] 1326 	mov	a,r7
      001B49 34 00            [12] 1327 	addc	a,#(_u8TransBuff >> 8)
      001B4B FD               [12] 1328 	mov	r5,a
      001B4C EE               [12] 1329 	mov	a,r6
      001B4D 25 2C            [12] 1330 	add	a,_u16Addr
      001B4F F5 82            [12] 1331 	mov	dpl,a
      001B51 EF               [12] 1332 	mov	a,r7
      001B52 35 2D            [12] 1333 	addc	a,(_u16Addr + 1)
      001B54 F5 83            [12] 1334 	mov	dph,a
      001B56 C0 07            [24] 1335 	push	ar7
      001B58 C0 06            [24] 1336 	push	ar6
      001B5A C0 05            [24] 1337 	push	ar5
      001B5C C0 04            [24] 1338 	push	ar4
      001B5E 12 09 D6         [24] 1339 	lcall	_ispReadFlash
      001B61 AB 82            [24] 1340 	mov	r3,dpl
      001B63 D0 04            [24] 1341 	pop	ar4
      001B65 D0 05            [24] 1342 	pop	ar5
      001B67 D0 06            [24] 1343 	pop	ar6
      001B69 D0 07            [24] 1344 	pop	ar7
      001B6B 8C 82            [24] 1345 	mov	dpl,r4
      001B6D 8D 83            [24] 1346 	mov	dph,r5
      001B6F EB               [12] 1347 	mov	a,r3
      001B70 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	callback.c:194: for(i=0; i<128; ++i) {
      001B71 0E               [12] 1350 	inc	r6
      001B72 BE 00 01         [24] 1351 	cjne	r6,#0x00,00684$
      001B75 0F               [12] 1352 	inc	r7
      001B76                       1353 00684$:
      001B76 C3               [12] 1354 	clr	c
      001B77 EE               [12] 1355 	mov	a,r6
      001B78 94 80            [12] 1356 	subb	a,#0x80
      001B7A EF               [12] 1357 	mov	a,r7
      001B7B 94 00            [12] 1358 	subb	a,#0x00
      001B7D 40 C5            [24] 1359 	jc	00246$
      001B7F                       1360 00155$:
                                   1361 ;	callback.c:198: u8HidNum = 128;
      001B7F 75 0E 80         [24] 1362 	mov	_u8HidNum,#0x80
                                   1363 ;	callback.c:201: break;
      001B82 22               [24] 1364 	ret
                                   1365 ;	callback.c:204: case 0x02:
      001B83                       1366 00157$:
                                   1367 ;	callback.c:208: if (u8Chip == CHIP_C2) {
      001B83 74 02            [12] 1368 	mov	a,#0x02
      001B85 B5 13 02         [24] 1369 	cjne	a,_u8Chip,00686$
      001B88 80 03            [24] 1370 	sjmp	00687$
      001B8A                       1371 00686$:
      001B8A 02 1C 2D         [24] 1372 	ljmp	00162$
      001B8D                       1373 00687$:
                                   1374 ;	callback.c:209: u32Tmp = u8ReceiveBuff[5];
      001B8D 90 00 45         [24] 1375 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      001B90 E0               [24] 1376 	movx	a,@dptr
      001B91 FF               [12] 1377 	mov	r7,a
      001B92 7E 00            [12] 1378 	mov	r6,#0x00
                                   1379 ;	callback.c:210: u32Tmp <<= 24;
      001B94 8F 2B            [24] 1380 	mov	(_u32Addr + 3),r7
                                   1381 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      001B96 8E 28            [24] 1382 	mov	_u32Addr,r6
                                   1383 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      001B98 8E 29            [24] 1384 	mov	(_u32Addr + 1),r6
                                   1385 ;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
      001B9A 8E 2A            [24] 1386 	mov	(_u32Addr + 2),r6
                                   1387 ;	callback.c:212: u32Tmp = u8ReceiveBuff[4];
      001B9C 90 00 44         [24] 1388 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      001B9F E0               [24] 1389 	movx	a,@dptr
      001BA0 FF               [12] 1390 	mov	r7,a
      001BA1 7E 00            [12] 1391 	mov	r6,#0x00
                                   1392 ;	callback.c:213: u32Tmp <<= 16;
      001BA3 8E 04            [24] 1393 	mov	ar4,r6
      001BA5 8F 05            [24] 1394 	mov	ar5,r7
                                   1395 ;	callback.c:214: u32Addr += u32Tmp;
      001BA7 E4               [12] 1396 	clr	a
      001BA8 FE               [12] 1397 	mov	r6,a
      001BA9 25 28            [12] 1398 	add	a,_u32Addr
      001BAB F5 28            [12] 1399 	mov	_u32Addr,a
      001BAD EE               [12] 1400 	mov	a,r6
      001BAE 35 29            [12] 1401 	addc	a,(_u32Addr + 1)
      001BB0 F5 29            [12] 1402 	mov	(_u32Addr + 1),a
      001BB2 ED               [12] 1403 	mov	a,r5
      001BB3 35 2A            [12] 1404 	addc	a,(_u32Addr + 2)
      001BB5 F5 2A            [12] 1405 	mov	(_u32Addr + 2),a
      001BB7 EC               [12] 1406 	mov	a,r4
      001BB8 35 2B            [12] 1407 	addc	a,(_u32Addr + 3)
      001BBA F5 2B            [12] 1408 	mov	(_u32Addr + 3),a
                                   1409 ;	callback.c:215: u32Tmp = u8ReceiveBuff[3];
      001BBC 90 00 43         [24] 1410 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      001BBF E0               [24] 1411 	movx	a,@dptr
      001BC0 FF               [12] 1412 	mov	r7,a
      001BC1 7E 00            [12] 1413 	mov	r6,#0x00
      001BC3 7D 00            [12] 1414 	mov	r5,#0x00
                                   1415 ;	callback.c:216: u32Tmp <<= 8;
      001BC5 8D 04            [24] 1416 	mov	ar4,r5
      001BC7 8E 05            [24] 1417 	mov	ar5,r6
      001BC9 8F 06            [24] 1418 	mov	ar6,r7
                                   1419 ;	callback.c:217: u32Addr += u32Tmp;
      001BCB E4               [12] 1420 	clr	a
      001BCC 25 28            [12] 1421 	add	a,_u32Addr
      001BCE F5 28            [12] 1422 	mov	_u32Addr,a
      001BD0 EE               [12] 1423 	mov	a,r6
      001BD1 35 29            [12] 1424 	addc	a,(_u32Addr + 1)
      001BD3 F5 29            [12] 1425 	mov	(_u32Addr + 1),a
      001BD5 ED               [12] 1426 	mov	a,r5
      001BD6 35 2A            [12] 1427 	addc	a,(_u32Addr + 2)
      001BD8 F5 2A            [12] 1428 	mov	(_u32Addr + 2),a
      001BDA EC               [12] 1429 	mov	a,r4
      001BDB 35 2B            [12] 1430 	addc	a,(_u32Addr + 3)
      001BDD F5 2B            [12] 1431 	mov	(_u32Addr + 3),a
                                   1432 ;	callback.c:218: u32Tmp = u8ReceiveBuff[2];
      001BDF 90 00 42         [24] 1433 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001BE2 E0               [24] 1434 	movx	a,@dptr
      001BE3 FF               [12] 1435 	mov	r7,a
                                   1436 ;	callback.c:219: u32Addr += u32Tmp;
      001BE4 E4               [12] 1437 	clr	a
      001BE5 FE               [12] 1438 	mov	r6,a
      001BE6 FD               [12] 1439 	mov	r5,a
      001BE7 FC               [12] 1440 	mov	r4,a
      001BE8 EF               [12] 1441 	mov	a,r7
      001BE9 25 28            [12] 1442 	add	a,_u32Addr
      001BEB F5 28            [12] 1443 	mov	_u32Addr,a
      001BED EE               [12] 1444 	mov	a,r6
      001BEE 35 29            [12] 1445 	addc	a,(_u32Addr + 1)
      001BF0 F5 29            [12] 1446 	mov	(_u32Addr + 1),a
      001BF2 ED               [12] 1447 	mov	a,r5
      001BF3 35 2A            [12] 1448 	addc	a,(_u32Addr + 2)
      001BF5 F5 2A            [12] 1449 	mov	(_u32Addr + 2),a
      001BF7 EC               [12] 1450 	mov	a,r4
      001BF8 35 2B            [12] 1451 	addc	a,(_u32Addr + 3)
      001BFA F5 2B            [12] 1452 	mov	(_u32Addr + 3),a
                                   1453 ;	callback.c:220: if (C2_WriteFlash(u32Addr, u8ReceiveBuff[6], &u8ReceiveBuff[7])) {
      001BFC 90 00 46         [24] 1454 	mov	dptr,#(_u8ReceiveBuff + 0x0006)
      001BFF E0               [24] 1455 	movx	a,@dptr
      001C00 F5 1E            [12] 1456 	mov	_C2_WriteFlash_PARM_2,a
      001C02 75 1F 47         [24] 1457 	mov	_C2_WriteFlash_PARM_3,#(_u8ReceiveBuff + 0x0007)
      001C05 75 20 00         [24] 1458 	mov	(_C2_WriteFlash_PARM_3 + 1),#((_u8ReceiveBuff + 0x0007) >> 8)
                                   1459 ;	1-genFromRTrack replaced	mov	(_C2_WriteFlash_PARM_3 + 2),#0x00
      001C08 8E 21            [24] 1460 	mov	(_C2_WriteFlash_PARM_3 + 2),r6
      001C0A 85 28 82         [24] 1461 	mov	dpl,_u32Addr
      001C0D 85 29 83         [24] 1462 	mov	dph,(_u32Addr + 1)
      001C10 85 2A F0         [24] 1463 	mov	b,(_u32Addr + 2)
      001C13 E5 2B            [12] 1464 	mov	a,(_u32Addr + 3)
      001C15 12 15 2A         [24] 1465 	lcall	_C2_WriteFlash
      001C18 E5 82            [12] 1466 	mov	a,dpl
      001C1A 60 08            [24] 1467 	jz	00159$
                                   1468 ;	callback.c:221: u8TransBuff[0] = 1;
      001C1C 90 00 D6         [24] 1469 	mov	dptr,#_u8TransBuff
      001C1F 74 01            [12] 1470 	mov	a,#0x01
      001C21 F0               [24] 1471 	movx	@dptr,a
      001C22 80 05            [24] 1472 	sjmp	00160$
      001C24                       1473 00159$:
                                   1474 ;	callback.c:223: u8TransBuff[0] = 0;
      001C24 90 00 D6         [24] 1475 	mov	dptr,#_u8TransBuff
      001C27 E4               [12] 1476 	clr	a
      001C28 F0               [24] 1477 	movx	@dptr,a
      001C29                       1478 00160$:
                                   1479 ;	callback.c:225: u8HidNum = 0;
      001C29 75 0E 00         [24] 1480 	mov	_u8HidNum,#0x00
                                   1481 ;	callback.c:226: break;
      001C2C 22               [24] 1482 	ret
      001C2D                       1483 00162$:
                                   1484 ;	callback.c:229: u16PageSize = u8ReceiveBuff[4] + 1;
      001C2D 90 00 44         [24] 1485 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      001C30 E0               [24] 1486 	movx	a,@dptr
      001C31 FF               [12] 1487 	mov	r7,a
      001C32 7E 00            [12] 1488 	mov	r6,#0x00
      001C34 74 01            [12] 1489 	mov	a,#0x01
      001C36 2F               [12] 1490 	add	a,r7
      001C37 F5 2F            [12] 1491 	mov	_u16PageSize,a
      001C39 E4               [12] 1492 	clr	a
      001C3A 3E               [12] 1493 	addc	a,r6
      001C3B F5 30            [12] 1494 	mov	(_u16PageSize + 1),a
                                   1495 ;	callback.c:230: if (u8ReceiveBuff[6]) {
      001C3D 90 00 46         [24] 1496 	mov	dptr,#(_u8ReceiveBuff + 0x0006)
      001C40 E0               [24] 1497 	movx	a,@dptr
      001C41 60 5A            [24] 1498 	jz	00202$
                                   1499 ;	callback.c:232: u16Addr = u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
      001C43 90 00 42         [24] 1500 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001C46 E0               [24] 1501 	movx	a,@dptr
      001C47 FE               [12] 1502 	mov	r6,a
      001C48 7F 00            [12] 1503 	mov	r7,#0x00
      001C4A 90 00 41         [24] 1504 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      001C4D E0               [24] 1505 	movx	a,@dptr
      001C4E FD               [12] 1506 	mov	r5,a
      001C4F 7C 00            [12] 1507 	mov	r4,#0x00
      001C51 2F               [12] 1508 	add	a,r7
      001C52 F5 2C            [12] 1509 	mov	_u16Addr,a
      001C54 EC               [12] 1510 	mov	a,r4
      001C55 3E               [12] 1511 	addc	a,r6
      001C56 F5 2D            [12] 1512 	mov	(_u16Addr + 1),a
                                   1513 ;	callback.c:233: for (i=0; i<u8ReceiveBuff[5]; ++i) {
      001C58 7E 00            [12] 1514 	mov	r6,#0x00
      001C5A 7F 00            [12] 1515 	mov	r7,#0x00
      001C5C                       1516 00249$:
      001C5C 90 00 45         [24] 1517 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      001C5F E0               [24] 1518 	movx	a,@dptr
      001C60 FD               [12] 1519 	mov	r5,a
      001C61 7C 00            [12] 1520 	mov	r4,#0x00
      001C63 C3               [12] 1521 	clr	c
      001C64 EE               [12] 1522 	mov	a,r6
      001C65 9D               [12] 1523 	subb	a,r5
      001C66 EF               [12] 1524 	mov	a,r7
      001C67 9C               [12] 1525 	subb	a,r4
      001C68 40 01            [24] 1526 	jc	00690$
      001C6A 22               [24] 1527 	ret
      001C6B                       1528 00690$:
                                   1529 ;	callback.c:234: ispWriteEeprom(u16Addr+i, u8ReceiveBuff[i+8]);
      001C6B EE               [12] 1530 	mov	a,r6
      001C6C 25 2C            [12] 1531 	add	a,_u16Addr
      001C6E FC               [12] 1532 	mov	r4,a
      001C6F EF               [12] 1533 	mov	a,r7
      001C70 35 2D            [12] 1534 	addc	a,(_u16Addr + 1)
      001C72 FD               [12] 1535 	mov	r5,a
      001C73 74 08            [12] 1536 	mov	a,#0x08
      001C75 2E               [12] 1537 	add	a,r6
      001C76 FA               [12] 1538 	mov	r2,a
      001C77 E4               [12] 1539 	clr	a
      001C78 3F               [12] 1540 	addc	a,r7
      001C79 FB               [12] 1541 	mov	r3,a
      001C7A EA               [12] 1542 	mov	a,r2
      001C7B 24 40            [12] 1543 	add	a,#_u8ReceiveBuff
      001C7D F5 82            [12] 1544 	mov	dpl,a
      001C7F EB               [12] 1545 	mov	a,r3
      001C80 34 00            [12] 1546 	addc	a,#(_u8ReceiveBuff >> 8)
      001C82 F5 83            [12] 1547 	mov	dph,a
      001C84 E0               [24] 1548 	movx	a,@dptr
      001C85 F5 16            [12] 1549 	mov	_ispWriteEeprom_PARM_2,a
      001C87 8C 82            [24] 1550 	mov	dpl,r4
      001C89 8D 83            [24] 1551 	mov	dph,r5
      001C8B C0 07            [24] 1552 	push	ar7
      001C8D C0 06            [24] 1553 	push	ar6
      001C8F 12 0B 02         [24] 1554 	lcall	_ispWriteEeprom
      001C92 D0 06            [24] 1555 	pop	ar6
      001C94 D0 07            [24] 1556 	pop	ar7
                                   1557 ;	callback.c:233: for (i=0; i<u8ReceiveBuff[5]; ++i) {
      001C96 0E               [12] 1558 	inc	r6
      001C97 BE 00 C2         [24] 1559 	cjne	r6,#0x00,00249$
      001C9A 0F               [12] 1560 	inc	r7
      001C9B 80 BF            [24] 1561 	sjmp	00249$
      001C9D                       1562 00202$:
                                   1563 ;	callback.c:238: if(u8Chip==CHIP_89S) {
      001C9D 74 01            [12] 1564 	mov	a,#0x01
      001C9F B5 13 5A         [24] 1565 	cjne	a,_u8Chip,00199$
                                   1566 ;	callback.c:239: u16Addr=u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
      001CA2 90 00 42         [24] 1567 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001CA5 E0               [24] 1568 	movx	a,@dptr
      001CA6 FE               [12] 1569 	mov	r6,a
      001CA7 7F 00            [12] 1570 	mov	r7,#0x00
      001CA9 90 00 41         [24] 1571 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      001CAC E0               [24] 1572 	movx	a,@dptr
      001CAD FD               [12] 1573 	mov	r5,a
      001CAE 7C 00            [12] 1574 	mov	r4,#0x00
      001CB0 2F               [12] 1575 	add	a,r7
      001CB1 F5 2C            [12] 1576 	mov	_u16Addr,a
      001CB3 EC               [12] 1577 	mov	a,r4
      001CB4 3E               [12] 1578 	addc	a,r6
      001CB5 F5 2D            [12] 1579 	mov	(_u16Addr + 1),a
                                   1580 ;	callback.c:242: for(i=0; i<u8ReceiveBuff[5]; ++i) {
      001CB7 7E 00            [12] 1581 	mov	r6,#0x00
      001CB9 7F 00            [12] 1582 	mov	r7,#0x00
      001CBB                       1583 00252$:
      001CBB 90 00 45         [24] 1584 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      001CBE E0               [24] 1585 	movx	a,@dptr
      001CBF FD               [12] 1586 	mov	r5,a
      001CC0 7C 00            [12] 1587 	mov	r4,#0x00
      001CC2 C3               [12] 1588 	clr	c
      001CC3 EE               [12] 1589 	mov	a,r6
      001CC4 9D               [12] 1590 	subb	a,r5
      001CC5 EF               [12] 1591 	mov	a,r7
      001CC6 9C               [12] 1592 	subb	a,r4
      001CC7 40 01            [24] 1593 	jc	00694$
      001CC9 22               [24] 1594 	ret
      001CCA                       1595 00694$:
                                   1596 ;	callback.c:243: ispWriteFlashByte(u16Addr+i, u8ReceiveBuff[i+8]);
      001CCA EE               [12] 1597 	mov	a,r6
      001CCB 25 2C            [12] 1598 	add	a,_u16Addr
      001CCD FC               [12] 1599 	mov	r4,a
      001CCE EF               [12] 1600 	mov	a,r7
      001CCF 35 2D            [12] 1601 	addc	a,(_u16Addr + 1)
      001CD1 FD               [12] 1602 	mov	r5,a
      001CD2 74 08            [12] 1603 	mov	a,#0x08
      001CD4 2E               [12] 1604 	add	a,r6
      001CD5 FA               [12] 1605 	mov	r2,a
      001CD6 E4               [12] 1606 	clr	a
      001CD7 3F               [12] 1607 	addc	a,r7
      001CD8 FB               [12] 1608 	mov	r3,a
      001CD9 EA               [12] 1609 	mov	a,r2
      001CDA 24 40            [12] 1610 	add	a,#_u8ReceiveBuff
      001CDC F5 82            [12] 1611 	mov	dpl,a
      001CDE EB               [12] 1612 	mov	a,r3
      001CDF 34 00            [12] 1613 	addc	a,#(_u8ReceiveBuff >> 8)
      001CE1 F5 83            [12] 1614 	mov	dph,a
      001CE3 E0               [24] 1615 	movx	a,@dptr
      001CE4 F5 15            [12] 1616 	mov	_ispWriteFlashByte_PARM_2,a
      001CE6 8C 82            [24] 1617 	mov	dpl,r4
      001CE8 8D 83            [24] 1618 	mov	dph,r5
      001CEA C0 07            [24] 1619 	push	ar7
      001CEC C0 06            [24] 1620 	push	ar6
      001CEE 12 0A 7E         [24] 1621 	lcall	_ispWriteFlashByte
      001CF1 D0 06            [24] 1622 	pop	ar6
      001CF3 D0 07            [24] 1623 	pop	ar7
                                   1624 ;	callback.c:242: for(i=0; i<u8ReceiveBuff[5]; ++i) {
      001CF5 0E               [12] 1625 	inc	r6
      001CF6 BE 00 C2         [24] 1626 	cjne	r6,#0x00,00252$
      001CF9 0F               [12] 1627 	inc	r7
      001CFA 80 BF            [24] 1628 	sjmp	00252$
      001CFC                       1629 00199$:
                                   1630 ;	callback.c:251: if(u16PageSize <= 0x80) {
      001CFC C3               [12] 1631 	clr	c
      001CFD 74 80            [12] 1632 	mov	a,#0x80
      001CFF 95 2F            [12] 1633 	subb	a,_u16PageSize
      001D01 E4               [12] 1634 	clr	a
      001D02 95 30            [12] 1635 	subb	a,(_u16PageSize + 1)
      001D04 50 03            [24] 1636 	jnc	00696$
      001D06 02 1D 96         [24] 1637 	ljmp	00196$
      001D09                       1638 00696$:
                                   1639 ;	callback.c:252: u16Addr = u8ReceiveBuff[2]*256+u8ReceiveBuff[1];
      001D09 90 00 42         [24] 1640 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001D0C E0               [24] 1641 	movx	a,@dptr
      001D0D FE               [12] 1642 	mov	r6,a
      001D0E 7F 00            [12] 1643 	mov	r7,#0x00
      001D10 90 00 41         [24] 1644 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      001D13 E0               [24] 1645 	movx	a,@dptr
      001D14 7C 00            [12] 1646 	mov	r4,#0x00
      001D16 2F               [12] 1647 	add	a,r7
      001D17 F5 2C            [12] 1648 	mov	_u16Addr,a
      001D19 EC               [12] 1649 	mov	a,r4
      001D1A 3E               [12] 1650 	addc	a,r6
      001D1B F5 2D            [12] 1651 	mov	(_u16Addr + 1),a
                                   1652 ;	callback.c:255: u8NumPage = u8ReceiveBuff[5]/u16PageSize;
      001D1D 90 00 45         [24] 1653 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      001D20 E0               [24] 1654 	movx	a,@dptr
      001D21 FF               [12] 1655 	mov	r7,a
      001D22 7E 00            [12] 1656 	mov	r6,#0x00
      001D24 85 2F 35         [24] 1657 	mov	__divuint_PARM_2,_u16PageSize
      001D27 85 30 36         [24] 1658 	mov	(__divuint_PARM_2 + 1),(_u16PageSize + 1)
      001D2A 8F 82            [24] 1659 	mov	dpl,r7
      001D2C 8E 83            [24] 1660 	mov	dph,r6
      001D2E 12 22 AB         [24] 1661 	lcall	__divuint
      001D31 AE 82            [24] 1662 	mov	r6,dpl
      001D33 8E 31            [24] 1663 	mov	_u8NumPage,r6
                                   1664 ;	callback.c:256: for(i=0; i<u8NumPage; ++i) {
      001D35 7E 00            [12] 1665 	mov	r6,#0x00
      001D37 7F 00            [12] 1666 	mov	r7,#0x00
      001D39                       1667 00255$:
      001D39 AC 31            [24] 1668 	mov	r4,_u8NumPage
      001D3B 7D 00            [12] 1669 	mov	r5,#0x00
      001D3D C3               [12] 1670 	clr	c
      001D3E EE               [12] 1671 	mov	a,r6
      001D3F 9C               [12] 1672 	subb	a,r4
      001D40 EF               [12] 1673 	mov	a,r7
      001D41 9D               [12] 1674 	subb	a,r5
      001D42 40 01            [24] 1675 	jc	00697$
      001D44 22               [24] 1676 	ret
      001D45                       1677 00697$:
                                   1678 ;	callback.c:257: ispWriteFlashPage(u16Addr+i*u16PageSize, &u8ReceiveBuff[8+i*u16PageSize], u16PageSize);
      001D45 85 2F 35         [24] 1679 	mov	__mulint_PARM_2,_u16PageSize
      001D48 85 30 36         [24] 1680 	mov	(__mulint_PARM_2 + 1),(_u16PageSize + 1)
      001D4B 8E 82            [24] 1681 	mov	dpl,r6
      001D4D 8F 83            [24] 1682 	mov	dph,r7
      001D4F C0 07            [24] 1683 	push	ar7
      001D51 C0 06            [24] 1684 	push	ar6
      001D53 12 22 EF         [24] 1685 	lcall	__mulint
      001D56 AC 82            [24] 1686 	mov	r4,dpl
      001D58 AD 83            [24] 1687 	mov	r5,dph
      001D5A D0 06            [24] 1688 	pop	ar6
      001D5C D0 07            [24] 1689 	pop	ar7
      001D5E EC               [12] 1690 	mov	a,r4
      001D5F 25 2C            [12] 1691 	add	a,_u16Addr
      001D61 F5 82            [12] 1692 	mov	dpl,a
      001D63 ED               [12] 1693 	mov	a,r5
      001D64 35 2D            [12] 1694 	addc	a,(_u16Addr + 1)
      001D66 F5 83            [12] 1695 	mov	dph,a
      001D68 74 08            [12] 1696 	mov	a,#0x08
      001D6A 2C               [12] 1697 	add	a,r4
      001D6B FC               [12] 1698 	mov	r4,a
      001D6C E4               [12] 1699 	clr	a
      001D6D 3D               [12] 1700 	addc	a,r5
      001D6E FD               [12] 1701 	mov	r5,a
      001D6F EC               [12] 1702 	mov	a,r4
      001D70 24 40            [12] 1703 	add	a,#_u8ReceiveBuff
      001D72 FC               [12] 1704 	mov	r4,a
      001D73 ED               [12] 1705 	mov	a,r5
      001D74 34 00            [12] 1706 	addc	a,#(_u8ReceiveBuff >> 8)
      001D76 FD               [12] 1707 	mov	r5,a
      001D77 8C 17            [24] 1708 	mov	_ispWriteFlashPage_PARM_2,r4
      001D79 8D 18            [24] 1709 	mov	(_ispWriteFlashPage_PARM_2 + 1),r5
      001D7B 75 19 00         [24] 1710 	mov	(_ispWriteFlashPage_PARM_2 + 2),#0x00
      001D7E 85 2F 1A         [24] 1711 	mov	_ispWriteFlashPage_PARM_3,_u16PageSize
      001D81 85 30 1B         [24] 1712 	mov	(_ispWriteFlashPage_PARM_3 + 1),(_u16PageSize + 1)
      001D84 C0 07            [24] 1713 	push	ar7
      001D86 C0 06            [24] 1714 	push	ar6
      001D88 12 0B 65         [24] 1715 	lcall	_ispWriteFlashPage
      001D8B D0 06            [24] 1716 	pop	ar6
      001D8D D0 07            [24] 1717 	pop	ar7
                                   1718 ;	callback.c:256: for(i=0; i<u8NumPage; ++i) {
      001D8F 0E               [12] 1719 	inc	r6
      001D90 BE 00 A6         [24] 1720 	cjne	r6,#0x00,00255$
      001D93 0F               [12] 1721 	inc	r7
      001D94 80 A3            [24] 1722 	sjmp	00255$
      001D96                       1723 00196$:
                                   1724 ;	callback.c:266: if(u8ReceiveBuff[5]==0x80) {
      001D96 90 00 45         [24] 1725 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      001D99 E0               [24] 1726 	movx	a,@dptr
      001D9A FF               [12] 1727 	mov	r7,a
      001D9B BF 80 02         [24] 1728 	cjne	r7,#0x80,00699$
      001D9E 80 03            [24] 1729 	sjmp	00700$
      001DA0                       1730 00699$:
      001DA0 02 1E D3         [24] 1731 	ljmp	00311$
      001DA3                       1732 00700$:
                                   1733 ;	callback.c:268: u32Tmp = u8ReceiveBuff[3];
      001DA3 90 00 43         [24] 1734 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      001DA6 E0               [24] 1735 	movx	a,@dptr
      001DA7 FF               [12] 1736 	mov	r7,a
      001DA8 7E 00            [12] 1737 	mov	r6,#0x00
                                   1738 ;	callback.c:269: u32Tmp <<= 16;
      001DAA 8E 2B            [24] 1739 	mov	(_u32Addr + 3),r6
      001DAC 8F 2A            [24] 1740 	mov	(_u32Addr + 2),r7
                                   1741 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      001DAE 8E 28            [24] 1742 	mov	_u32Addr,r6
                                   1743 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      001DB0 8E 29            [24] 1744 	mov	(_u32Addr + 1),r6
                                   1745 ;	callback.c:271: u32Tmp = u8ReceiveBuff[2];
      001DB2 90 00 42         [24] 1746 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      001DB5 E0               [24] 1747 	movx	a,@dptr
      001DB6 FF               [12] 1748 	mov	r7,a
      001DB7 7E 00            [12] 1749 	mov	r6,#0x00
      001DB9 7D 00            [12] 1750 	mov	r5,#0x00
                                   1751 ;	callback.c:272: u32Tmp <<= 8;
      001DBB 8D 04            [24] 1752 	mov	ar4,r5
      001DBD 8E 05            [24] 1753 	mov	ar5,r6
      001DBF 8F 06            [24] 1754 	mov	ar6,r7
                                   1755 ;	callback.c:273: u32Addr += u32Tmp;
      001DC1 E4               [12] 1756 	clr	a
      001DC2 25 28            [12] 1757 	add	a,_u32Addr
      001DC4 F5 28            [12] 1758 	mov	_u32Addr,a
      001DC6 EE               [12] 1759 	mov	a,r6
      001DC7 35 29            [12] 1760 	addc	a,(_u32Addr + 1)
      001DC9 F5 29            [12] 1761 	mov	(_u32Addr + 1),a
      001DCB ED               [12] 1762 	mov	a,r5
      001DCC 35 2A            [12] 1763 	addc	a,(_u32Addr + 2)
      001DCE F5 2A            [12] 1764 	mov	(_u32Addr + 2),a
      001DD0 EC               [12] 1765 	mov	a,r4
      001DD1 35 2B            [12] 1766 	addc	a,(_u32Addr + 3)
      001DD3 F5 2B            [12] 1767 	mov	(_u32Addr + 3),a
                                   1768 ;	callback.c:274: u32Tmp = u8ReceiveBuff[1];
      001DD5 90 00 41         [24] 1769 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      001DD8 E0               [24] 1770 	movx	a,@dptr
      001DD9 FF               [12] 1771 	mov	r7,a
                                   1772 ;	callback.c:275: u32Addr += u32Tmp;
      001DDA E4               [12] 1773 	clr	a
      001DDB FE               [12] 1774 	mov	r6,a
      001DDC FD               [12] 1775 	mov	r5,a
      001DDD FC               [12] 1776 	mov	r4,a
      001DDE EF               [12] 1777 	mov	a,r7
      001DDF 25 28            [12] 1778 	add	a,_u32Addr
      001DE1 F5 28            [12] 1779 	mov	_u32Addr,a
      001DE3 EE               [12] 1780 	mov	a,r6
      001DE4 35 29            [12] 1781 	addc	a,(_u32Addr + 1)
      001DE6 F5 29            [12] 1782 	mov	(_u32Addr + 1),a
      001DE8 ED               [12] 1783 	mov	a,r5
      001DE9 35 2A            [12] 1784 	addc	a,(_u32Addr + 2)
      001DEB F5 2A            [12] 1785 	mov	(_u32Addr + 2),a
      001DED EC               [12] 1786 	mov	a,r4
      001DEE 35 2B            [12] 1787 	addc	a,(_u32Addr + 3)
                                   1788 ;	callback.c:277: u32Addr>>=1;
      001DF0 F5 2B            [12] 1789 	mov	(_u32Addr + 3),a
      001DF2 C3               [12] 1790 	clr	c
      001DF3 13               [12] 1791 	rrc	a
      001DF4 F5 2B            [12] 1792 	mov	(_u32Addr + 3),a
      001DF6 E5 2A            [12] 1793 	mov	a,(_u32Addr + 2)
      001DF8 13               [12] 1794 	rrc	a
      001DF9 F5 2A            [12] 1795 	mov	(_u32Addr + 2),a
      001DFB E5 29            [12] 1796 	mov	a,(_u32Addr + 1)
      001DFD 13               [12] 1797 	rrc	a
      001DFE F5 29            [12] 1798 	mov	(_u32Addr + 1),a
      001E00 E5 28            [12] 1799 	mov	a,_u32Addr
      001E02 13               [12] 1800 	rrc	a
      001E03 F5 28            [12] 1801 	mov	_u32Addr,a
                                   1802 ;	callback.c:278: u16Addr=u32Addr;
      001E05 85 28 2C         [24] 1803 	mov	_u16Addr,_u32Addr
      001E08 85 29 2D         [24] 1804 	mov	(_u16Addr + 1),(_u32Addr + 1)
                                   1805 ;	callback.c:279: u8ExtAddr=(u32Addr>>16);
                                   1806 ;	callback.c:283: if(u8ExtAddr) {
      001E0B E5 2A            [12] 1807 	mov	a,(_u32Addr + 2)
      001E0D F5 2E            [12] 1808 	mov	_u8ExtAddr,a
      001E0F 60 18            [24] 1809 	jz	00307$
                                   1810 ;	callback.c:284: spi_send(0x4D);
      001E11 75 82 4D         [24] 1811 	mov	dpl,#0x4d
      001E14 12 09 CC         [24] 1812 	lcall	_spi_send
                                   1813 ;	callback.c:285: spi_send(0x00);
      001E17 75 82 00         [24] 1814 	mov	dpl,#0x00
      001E1A 12 09 CC         [24] 1815 	lcall	_spi_send
                                   1816 ;	callback.c:286: spi_send(u8ExtAddr);
      001E1D 85 2E 82         [24] 1817 	mov	dpl,_u8ExtAddr
      001E20 12 09 CC         [24] 1818 	lcall	_spi_send
                                   1819 ;	callback.c:287: spi_send(0x00);
      001E23 75 82 00         [24] 1820 	mov	dpl,#0x00
      001E26 12 09 CC         [24] 1821 	lcall	_spi_send
                                   1822 ;	callback.c:289: for(i=0; i<0x80; ++i) {
      001E29                       1823 00307$:
      001E29 7E 00            [12] 1824 	mov	r6,#0x00
      001E2B 7F 00            [12] 1825 	mov	r7,#0x00
      001E2D                       1826 00257$:
                                   1827 ;	callback.c:290: if(i%2) {
      001E2D EE               [12] 1828 	mov	a,r6
      001E2E 30 E0 2B         [24] 1829 	jnb	acc.0,00169$
                                   1830 ;	callback.c:292: spi_send(0x48);
      001E31 75 82 48         [24] 1831 	mov	dpl,#0x48
      001E34 C0 07            [24] 1832 	push	ar7
      001E36 C0 06            [24] 1833 	push	ar6
      001E38 12 09 CC         [24] 1834 	lcall	_spi_send
                                   1835 ;	callback.c:293: spi_send(0x00);
      001E3B 75 82 00         [24] 1836 	mov	dpl,#0x00
      001E3E 12 09 CC         [24] 1837 	lcall	_spi_send
      001E41 D0 06            [24] 1838 	pop	ar6
      001E43 D0 07            [24] 1839 	pop	ar7
                                   1840 ;	callback.c:294: spi_send(i/2);
      001E45 8E 04            [24] 1841 	mov	ar4,r6
      001E47 EF               [12] 1842 	mov	a,r7
      001E48 C3               [12] 1843 	clr	c
      001E49 13               [12] 1844 	rrc	a
      001E4A CC               [12] 1845 	xch	a,r4
      001E4B 13               [12] 1846 	rrc	a
      001E4C CC               [12] 1847 	xch	a,r4
      001E4D 8C 82            [24] 1848 	mov	dpl,r4
      001E4F C0 07            [24] 1849 	push	ar7
      001E51 C0 06            [24] 1850 	push	ar6
      001E53 12 09 CC         [24] 1851 	lcall	_spi_send
      001E56 D0 06            [24] 1852 	pop	ar6
      001E58 D0 07            [24] 1853 	pop	ar7
      001E5A 80 29            [24] 1854 	sjmp	00170$
      001E5C                       1855 00169$:
                                   1856 ;	callback.c:297: spi_send(0x40);
      001E5C 75 82 40         [24] 1857 	mov	dpl,#0x40
      001E5F C0 07            [24] 1858 	push	ar7
      001E61 C0 06            [24] 1859 	push	ar6
      001E63 12 09 CC         [24] 1860 	lcall	_spi_send
                                   1861 ;	callback.c:298: spi_send(0x00);
      001E66 75 82 00         [24] 1862 	mov	dpl,#0x00
      001E69 12 09 CC         [24] 1863 	lcall	_spi_send
      001E6C D0 06            [24] 1864 	pop	ar6
      001E6E D0 07            [24] 1865 	pop	ar7
                                   1866 ;	callback.c:299: spi_send(i/2);
      001E70 8E 04            [24] 1867 	mov	ar4,r6
      001E72 EF               [12] 1868 	mov	a,r7
      001E73 C3               [12] 1869 	clr	c
      001E74 13               [12] 1870 	rrc	a
      001E75 CC               [12] 1871 	xch	a,r4
      001E76 13               [12] 1872 	rrc	a
      001E77 CC               [12] 1873 	xch	a,r4
      001E78 8C 82            [24] 1874 	mov	dpl,r4
      001E7A C0 07            [24] 1875 	push	ar7
      001E7C C0 06            [24] 1876 	push	ar6
      001E7E 12 09 CC         [24] 1877 	lcall	_spi_send
      001E81 D0 06            [24] 1878 	pop	ar6
      001E83 D0 07            [24] 1879 	pop	ar7
      001E85                       1880 00170$:
                                   1881 ;	callback.c:301: spi_send(u8ReceiveBuff[i+8]);
      001E85 74 08            [12] 1882 	mov	a,#0x08
      001E87 2E               [12] 1883 	add	a,r6
      001E88 FC               [12] 1884 	mov	r4,a
      001E89 E4               [12] 1885 	clr	a
      001E8A 3F               [12] 1886 	addc	a,r7
      001E8B FD               [12] 1887 	mov	r5,a
      001E8C EC               [12] 1888 	mov	a,r4
      001E8D 24 40            [12] 1889 	add	a,#_u8ReceiveBuff
      001E8F F5 82            [12] 1890 	mov	dpl,a
      001E91 ED               [12] 1891 	mov	a,r5
      001E92 34 00            [12] 1892 	addc	a,#(_u8ReceiveBuff >> 8)
      001E94 F5 83            [12] 1893 	mov	dph,a
      001E96 E0               [24] 1894 	movx	a,@dptr
      001E97 F5 82            [12] 1895 	mov	dpl,a
      001E99 C0 07            [24] 1896 	push	ar7
      001E9B C0 06            [24] 1897 	push	ar6
      001E9D 12 09 CC         [24] 1898 	lcall	_spi_send
      001EA0 D0 06            [24] 1899 	pop	ar6
      001EA2 D0 07            [24] 1900 	pop	ar7
                                   1901 ;	callback.c:289: for(i=0; i<0x80; ++i) {
      001EA4 0E               [12] 1902 	inc	r6
      001EA5 BE 00 01         [24] 1903 	cjne	r6,#0x00,00703$
      001EA8 0F               [12] 1904 	inc	r7
      001EA9                       1905 00703$:
      001EA9 C3               [12] 1906 	clr	c
      001EAA EE               [12] 1907 	mov	a,r6
      001EAB 94 80            [12] 1908 	subb	a,#0x80
      001EAD EF               [12] 1909 	mov	a,r7
      001EAE 94 00            [12] 1910 	subb	a,#0x00
      001EB0 50 03            [24] 1911 	jnc	00704$
      001EB2 02 1E 2D         [24] 1912 	ljmp	00257$
      001EB5                       1913 00704$:
                                   1914 ;	callback.c:303: u8Pos=FindNotBlank(&u8ReceiveBuff[8], 0x80);
      001EB5 75 35 80         [24] 1915 	mov	_FindNotBlank_PARM_2,#0x80
      001EB8 90 00 48         [24] 1916 	mov	dptr,#(_u8ReceiveBuff + 0x0008)
      001EBB 75 F0 00         [24] 1917 	mov	b,#0x00
      001EBE 12 0B 32         [24] 1918 	lcall	_FindNotBlank
      001EC1 85 82 33         [24] 1919 	mov	_u8Pos,dpl
                                   1920 ;	callback.c:304: if(u8Pos!=0xFF) {
      001EC4 74 FF            [12] 1921 	mov	a,#0xff
      001EC6 B5 33 02         [24] 1922 	cjne	a,_u8Pos,00705$
      001EC9 80 04            [24] 1923 	sjmp	00173$
      001ECB                       1924 00705$:
                                   1925 ;	callback.c:305: u8NeedFind=0;
      001ECB 75 32 00         [24] 1926 	mov	_u8NeedFind,#0x00
      001ECE 22               [24] 1927 	ret
      001ECF                       1928 00173$:
                                   1929 ;	callback.c:307: u8NeedFind=1;
      001ECF 75 32 01         [24] 1930 	mov	_u8NeedFind,#0x01
      001ED2 22               [24] 1931 	ret
                                   1932 ;	callback.c:311: for(i=0; i<0x80; ++i) {
      001ED3                       1933 00311$:
      001ED3 7E 00            [12] 1934 	mov	r6,#0x00
      001ED5 7F 00            [12] 1935 	mov	r7,#0x00
      001ED7                       1936 00259$:
                                   1937 ;	callback.c:312: if(i%2) {
      001ED7 EE               [12] 1938 	mov	a,r6
      001ED8 30 E0 2E         [24] 1939 	jnb	acc.0,00176$
                                   1940 ;	callback.c:314: spi_send(0x48);
      001EDB 75 82 48         [24] 1941 	mov	dpl,#0x48
      001EDE C0 07            [24] 1942 	push	ar7
      001EE0 C0 06            [24] 1943 	push	ar6
      001EE2 12 09 CC         [24] 1944 	lcall	_spi_send
                                   1945 ;	callback.c:315: spi_send(0x00);
      001EE5 75 82 00         [24] 1946 	mov	dpl,#0x00
      001EE8 12 09 CC         [24] 1947 	lcall	_spi_send
      001EEB D0 06            [24] 1948 	pop	ar6
      001EED D0 07            [24] 1949 	pop	ar7
                                   1950 ;	callback.c:316: spi_send(i/2+0x40);
      001EEF 8E 04            [24] 1951 	mov	ar4,r6
      001EF1 EF               [12] 1952 	mov	a,r7
      001EF2 C3               [12] 1953 	clr	c
      001EF3 13               [12] 1954 	rrc	a
      001EF4 CC               [12] 1955 	xch	a,r4
      001EF5 13               [12] 1956 	rrc	a
      001EF6 CC               [12] 1957 	xch	a,r4
      001EF7 74 40            [12] 1958 	mov	a,#0x40
      001EF9 2C               [12] 1959 	add	a,r4
      001EFA F5 82            [12] 1960 	mov	dpl,a
      001EFC C0 07            [24] 1961 	push	ar7
      001EFE C0 06            [24] 1962 	push	ar6
      001F00 12 09 CC         [24] 1963 	lcall	_spi_send
      001F03 D0 06            [24] 1964 	pop	ar6
      001F05 D0 07            [24] 1965 	pop	ar7
      001F07 80 2C            [24] 1966 	sjmp	00177$
      001F09                       1967 00176$:
                                   1968 ;	callback.c:319: spi_send(0x40);
      001F09 75 82 40         [24] 1969 	mov	dpl,#0x40
      001F0C C0 07            [24] 1970 	push	ar7
      001F0E C0 06            [24] 1971 	push	ar6
      001F10 12 09 CC         [24] 1972 	lcall	_spi_send
                                   1973 ;	callback.c:320: spi_send(0x00);
      001F13 75 82 00         [24] 1974 	mov	dpl,#0x00
      001F16 12 09 CC         [24] 1975 	lcall	_spi_send
      001F19 D0 06            [24] 1976 	pop	ar6
      001F1B D0 07            [24] 1977 	pop	ar7
                                   1978 ;	callback.c:321: spi_send(i/2+0x40);
      001F1D 8E 04            [24] 1979 	mov	ar4,r6
      001F1F EF               [12] 1980 	mov	a,r7
      001F20 C3               [12] 1981 	clr	c
      001F21 13               [12] 1982 	rrc	a
      001F22 CC               [12] 1983 	xch	a,r4
      001F23 13               [12] 1984 	rrc	a
      001F24 CC               [12] 1985 	xch	a,r4
      001F25 74 40            [12] 1986 	mov	a,#0x40
      001F27 2C               [12] 1987 	add	a,r4
      001F28 F5 82            [12] 1988 	mov	dpl,a
      001F2A C0 07            [24] 1989 	push	ar7
      001F2C C0 06            [24] 1990 	push	ar6
      001F2E 12 09 CC         [24] 1991 	lcall	_spi_send
      001F31 D0 06            [24] 1992 	pop	ar6
      001F33 D0 07            [24] 1993 	pop	ar7
      001F35                       1994 00177$:
                                   1995 ;	callback.c:323: spi_send(u8ReceiveBuff[i+8]);
      001F35 74 08            [12] 1996 	mov	a,#0x08
      001F37 2E               [12] 1997 	add	a,r6
      001F38 FC               [12] 1998 	mov	r4,a
      001F39 E4               [12] 1999 	clr	a
      001F3A 3F               [12] 2000 	addc	a,r7
      001F3B FD               [12] 2001 	mov	r5,a
      001F3C EC               [12] 2002 	mov	a,r4
      001F3D 24 40            [12] 2003 	add	a,#_u8ReceiveBuff
      001F3F F5 82            [12] 2004 	mov	dpl,a
      001F41 ED               [12] 2005 	mov	a,r5
      001F42 34 00            [12] 2006 	addc	a,#(_u8ReceiveBuff >> 8)
      001F44 F5 83            [12] 2007 	mov	dph,a
      001F46 E0               [24] 2008 	movx	a,@dptr
      001F47 F5 82            [12] 2009 	mov	dpl,a
      001F49 C0 07            [24] 2010 	push	ar7
      001F4B C0 06            [24] 2011 	push	ar6
      001F4D 12 09 CC         [24] 2012 	lcall	_spi_send
      001F50 D0 06            [24] 2013 	pop	ar6
      001F52 D0 07            [24] 2014 	pop	ar7
                                   2015 ;	callback.c:311: for(i=0; i<0x80; ++i) {
      001F54 0E               [12] 2016 	inc	r6
      001F55 BE 00 01         [24] 2017 	cjne	r6,#0x00,00707$
      001F58 0F               [12] 2018 	inc	r7
      001F59                       2019 00707$:
      001F59 C3               [12] 2020 	clr	c
      001F5A EE               [12] 2021 	mov	a,r6
      001F5B 94 80            [12] 2022 	subb	a,#0x80
      001F5D EF               [12] 2023 	mov	a,r7
      001F5E 94 00            [12] 2024 	subb	a,#0x00
      001F60 50 03            [24] 2025 	jnc	00708$
      001F62 02 1E D7         [24] 2026 	ljmp	00259$
      001F65                       2027 00708$:
                                   2028 ;	callback.c:325: spi_send(0x4C);
      001F65 75 82 4C         [24] 2029 	mov	dpl,#0x4c
      001F68 12 09 CC         [24] 2030 	lcall	_spi_send
                                   2031 ;	callback.c:326: spi_send(u16Addr>>8);
      001F6B 85 2D 82         [24] 2032 	mov	dpl,(_u16Addr + 1)
      001F6E 12 09 CC         [24] 2033 	lcall	_spi_send
                                   2034 ;	callback.c:327: spi_send(u16Addr);
      001F71 85 2C 82         [24] 2035 	mov	dpl,_u16Addr
      001F74 12 09 CC         [24] 2036 	lcall	_spi_send
                                   2037 ;	callback.c:328: spi_send(0x00);
      001F77 75 82 00         [24] 2038 	mov	dpl,#0x00
      001F7A 12 09 CC         [24] 2039 	lcall	_spi_send
                                   2040 ;	callback.c:329: if(u8NeedFind) {
      001F7D E5 32            [12] 2041 	mov	a,_u8NeedFind
      001F7F 60 19            [24] 2042 	jz	00180$
                                   2043 ;	callback.c:332: u8Pos=FindNotBlank(&u8ReceiveBuff[8], 0x80);
      001F81 75 35 80         [24] 2044 	mov	_FindNotBlank_PARM_2,#0x80
      001F84 90 00 48         [24] 2045 	mov	dptr,#(_u8ReceiveBuff + 0x0008)
      001F87 75 F0 00         [24] 2046 	mov	b,#0x00
      001F8A 12 0B 32         [24] 2047 	lcall	_FindNotBlank
      001F8D 85 82 33         [24] 2048 	mov	_u8Pos,dpl
                                   2049 ;	callback.c:333: u8Pos+=0x80;
      001F90 AF 33            [24] 2050 	mov	r7,_u8Pos
      001F92 74 80            [12] 2051 	mov	a,#0x80
      001F94 2F               [12] 2052 	add	a,r7
      001F95 F5 33            [12] 2053 	mov	_u8Pos,a
                                   2054 ;	callback.c:334: u8NeedFind=0;
      001F97 75 32 00         [24] 2055 	mov	_u8NeedFind,#0x00
      001F9A                       2056 00180$:
                                   2057 ;	callback.c:337: if(u8NeedFind==0) {
      001F9A E5 32            [12] 2058 	mov	a,_u8NeedFind
      001F9C 60 03            [24] 2059 	jz	00710$
      001F9E 02 20 29         [24] 2060 	ljmp	00190$
      001FA1                       2061 00710$:
                                   2062 ;	callback.c:339: for(i=0; i<10; ++i) {
      001FA1 7E 00            [12] 2063 	mov	r6,#0x00
      001FA3 7F 00            [12] 2064 	mov	r7,#0x00
      001FA5                       2065 00261$:
                                   2066 ;	callback.c:340: Delay_Ms(1);
      001FA5 90 00 01         [24] 2067 	mov	dptr,#0x0001
      001FA8 C0 07            [24] 2068 	push	ar7
      001FAA C0 06            [24] 2069 	push	ar6
      001FAC 12 00 78         [24] 2070 	lcall	_Delay_Ms
      001FAF D0 06            [24] 2071 	pop	ar6
      001FB1 D0 07            [24] 2072 	pop	ar7
                                   2073 ;	callback.c:342: if(u8Pos%2) {
      001FB3 AC 33            [24] 2074 	mov	r4,_u8Pos
      001FB5 7D 00            [12] 2075 	mov	r5,#0x00
      001FB7 EC               [12] 2076 	mov	a,r4
      001FB8 30 E0 2E         [24] 2077 	jnb	acc.0,00186$
                                   2078 ;	callback.c:344: if(ispReadAvrHi(u16Addr+u8Pos/2)!=0xFF) {
      001FBB 75 35 02         [24] 2079 	mov	__divsint_PARM_2,#0x02
      001FBE 75 36 00         [24] 2080 	mov	(__divsint_PARM_2 + 1),#0x00
      001FC1 8C 82            [24] 2081 	mov	dpl,r4
      001FC3 8D 83            [24] 2082 	mov	dph,r5
      001FC5 C0 07            [24] 2083 	push	ar7
      001FC7 C0 06            [24] 2084 	push	ar6
      001FC9 12 23 28         [24] 2085 	lcall	__divsint
      001FCC AA 82            [24] 2086 	mov	r2,dpl
      001FCE AB 83            [24] 2087 	mov	r3,dph
      001FD0 EA               [12] 2088 	mov	a,r2
      001FD1 25 2C            [12] 2089 	add	a,_u16Addr
      001FD3 F5 82            [12] 2090 	mov	dpl,a
      001FD5 EB               [12] 2091 	mov	a,r3
      001FD6 35 2D            [12] 2092 	addc	a,(_u16Addr + 1)
      001FD8 F5 83            [12] 2093 	mov	dph,a
      001FDA 12 0A 2A         [24] 2094 	lcall	_ispReadAvrHi
      001FDD AB 82            [24] 2095 	mov	r3,dpl
      001FDF D0 06            [24] 2096 	pop	ar6
      001FE1 D0 07            [24] 2097 	pop	ar7
      001FE3 BB FF 02         [24] 2098 	cjne	r3,#0xff,00712$
      001FE6 80 2F            [24] 2099 	sjmp	00262$
      001FE8                       2100 00712$:
                                   2101 ;	callback.c:345: break;
      001FE8 22               [24] 2102 	ret
      001FE9                       2103 00186$:
                                   2104 ;	callback.c:349: if(ispReadAvrLo(u16Addr+u8Pos/2)!=0xFF) {
      001FE9 75 35 02         [24] 2105 	mov	__divsint_PARM_2,#0x02
      001FEC 75 36 00         [24] 2106 	mov	(__divsint_PARM_2 + 1),#0x00
      001FEF 8C 82            [24] 2107 	mov	dpl,r4
      001FF1 8D 83            [24] 2108 	mov	dph,r5
      001FF3 C0 07            [24] 2109 	push	ar7
      001FF5 C0 06            [24] 2110 	push	ar6
      001FF7 12 23 28         [24] 2111 	lcall	__divsint
      001FFA AC 82            [24] 2112 	mov	r4,dpl
      001FFC AD 83            [24] 2113 	mov	r5,dph
      001FFE EC               [12] 2114 	mov	a,r4
      001FFF 25 2C            [12] 2115 	add	a,_u16Addr
      002001 F5 82            [12] 2116 	mov	dpl,a
      002003 ED               [12] 2117 	mov	a,r5
      002004 35 2D            [12] 2118 	addc	a,(_u16Addr + 1)
      002006 F5 83            [12] 2119 	mov	dph,a
      002008 12 0A 00         [24] 2120 	lcall	_ispReadAvrLo
      00200B AD 82            [24] 2121 	mov	r5,dpl
      00200D D0 06            [24] 2122 	pop	ar6
      00200F D0 07            [24] 2123 	pop	ar7
      002011 BD FF 02         [24] 2124 	cjne	r5,#0xff,00713$
      002014 80 01            [24] 2125 	sjmp	00714$
      002016                       2126 00713$:
      002016 22               [24] 2127 	ret
      002017                       2128 00714$:
                                   2129 ;	callback.c:350: break;
      002017                       2130 00262$:
                                   2131 ;	callback.c:339: for(i=0; i<10; ++i) {
      002017 0E               [12] 2132 	inc	r6
      002018 BE 00 01         [24] 2133 	cjne	r6,#0x00,00715$
      00201B 0F               [12] 2134 	inc	r7
      00201C                       2135 00715$:
      00201C C3               [12] 2136 	clr	c
      00201D EE               [12] 2137 	mov	a,r6
      00201E 94 0A            [12] 2138 	subb	a,#0x0a
      002020 EF               [12] 2139 	mov	a,r7
      002021 94 00            [12] 2140 	subb	a,#0x00
      002023 50 03            [24] 2141 	jnc	00716$
      002025 02 1F A5         [24] 2142 	ljmp	00261$
      002028                       2143 00716$:
      002028 22               [24] 2144 	ret
      002029                       2145 00190$:
                                   2146 ;	callback.c:357: Delay_Ms(10);
      002029 90 00 0A         [24] 2147 	mov	dptr,#0x000a
                                   2148 ;	callback.c:367: break;
      00202C 02 00 78         [24] 2149 	ljmp	_Delay_Ms
                                   2150 ;	callback.c:369: case 0x04:
      00202F                       2151 00204$:
                                   2152 ;	callback.c:370: switch (u8ReceiveBuff[1]) {
      00202F 90 00 41         [24] 2153 	mov	dptr,#(_u8ReceiveBuff + 0x0001)
      002032 E0               [24] 2154 	movx	a,@dptr
      002033 FF               [12] 2155 	mov	r7,a
      002034 BF 01 02         [24] 2156 	cjne	r7,#0x01,00717$
      002037 80 61            [24] 2157 	sjmp	00336$
      002039                       2158 00717$:
      002039 BF 90 03         [24] 2159 	cjne	r7,#0x90,00718$
      00203C 02 20 DB         [24] 2160 	ljmp	00207$
      00203F                       2161 00718$:
      00203F BF 91 03         [24] 2162 	cjne	r7,#0x91,00719$
      002042 02 20 E2         [24] 2163 	ljmp	00208$
      002045                       2164 00719$:
      002045 BF 92 03         [24] 2165 	cjne	r7,#0x92,00720$
      002048 02 20 E9         [24] 2166 	ljmp	00209$
      00204B                       2167 00720$:
      00204B BF 93 03         [24] 2168 	cjne	r7,#0x93,00721$
      00204E 02 20 F0         [24] 2169 	ljmp	00210$
      002051                       2170 00721$:
      002051 BF 94 03         [24] 2171 	cjne	r7,#0x94,00722$
      002054 02 20 F7         [24] 2172 	ljmp	00211$
      002057                       2173 00722$:
      002057 BF 95 03         [24] 2174 	cjne	r7,#0x95,00723$
      00205A 02 0F E4         [24] 2175 	ljmp	_ICP_SetWire
      00205D                       2176 00723$:
      00205D BF 96 03         [24] 2177 	cjne	r7,#0x96,00724$
      002060 02 10 18         [24] 2178 	ljmp	_ICP_FlashWrite
      002063                       2179 00724$:
      002063 BF C0 03         [24] 2180 	cjne	r7,#0xc0,00725$
      002066 02 21 01         [24] 2181 	ljmp	00214$
      002069                       2182 00725$:
      002069 BF C1 03         [24] 2183 	cjne	r7,#0xc1,00726$
      00206C 02 10 F7         [24] 2184 	ljmp	_C2_Exit
      00206F                       2185 00726$:
      00206F BF C2 03         [24] 2186 	cjne	r7,#0xc2,00727$
      002072 02 11 7B         [24] 2187 	ljmp	_C2_Reset
      002075                       2188 00727$:
      002075 BF C3 03         [24] 2189 	cjne	r7,#0xc3,00728$
      002078 02 21 0D         [24] 2190 	ljmp	00217$
      00207B                       2191 00728$:
      00207B BF C4 03         [24] 2192 	cjne	r7,#0xc4,00729$
      00207E 02 21 1B         [24] 2193 	ljmp	00218$
      002081                       2194 00729$:
      002081 BF C5 03         [24] 2195 	cjne	r7,#0xc5,00730$
      002084 02 21 28         [24] 2196 	ljmp	00219$
      002087                       2197 00730$:
      002087 BF C6 03         [24] 2198 	cjne	r7,#0xc6,00731$
      00208A 02 21 4D         [24] 2199 	ljmp	00223$
      00208D                       2200 00731$:
      00208D BF C9 03         [24] 2201 	cjne	r7,#0xc9,00732$
      002090 02 21 6B         [24] 2202 	ljmp	00227$
      002093                       2203 00732$:
      002093 BF CA 03         [24] 2204 	cjne	r7,#0xca,00733$
      002096 02 22 0B         [24] 2205 	ljmp	00231$
      002099                       2206 00733$:
      002099 22               [24] 2207 	ret
                                   2208 ;	callback.c:372: for (i=0; i<12; ++i) {
      00209A                       2209 00336$:
      00209A 7E 00            [12] 2210 	mov	r6,#0x00
      00209C 7F 00            [12] 2211 	mov	r7,#0x00
      00209E                       2212 00263$:
                                   2213 ;	callback.c:373: u8TransBuff[i] = serialDescriptor[i*2 + 2];
      00209E EE               [12] 2214 	mov	a,r6
      00209F 24 D6            [12] 2215 	add	a,#_u8TransBuff
      0020A1 FC               [12] 2216 	mov	r4,a
      0020A2 EF               [12] 2217 	mov	a,r7
      0020A3 34 00            [12] 2218 	addc	a,#(_u8TransBuff >> 8)
      0020A5 FD               [12] 2219 	mov	r5,a
      0020A6 EE               [12] 2220 	mov	a,r6
      0020A7 2E               [12] 2221 	add	a,r6
      0020A8 FA               [12] 2222 	mov	r2,a
      0020A9 EF               [12] 2223 	mov	a,r7
      0020AA 33               [12] 2224 	rlc	a
      0020AB FB               [12] 2225 	mov	r3,a
      0020AC 74 02            [12] 2226 	mov	a,#0x02
      0020AE 2A               [12] 2227 	add	a,r2
      0020AF FA               [12] 2228 	mov	r2,a
      0020B0 E4               [12] 2229 	clr	a
      0020B1 3B               [12] 2230 	addc	a,r3
      0020B2 FB               [12] 2231 	mov	r3,a
      0020B3 EA               [12] 2232 	mov	a,r2
      0020B4 24 07            [12] 2233 	add	a,#_serialDescriptor
      0020B6 F5 82            [12] 2234 	mov	dpl,a
      0020B8 EB               [12] 2235 	mov	a,r3
      0020B9 34 24            [12] 2236 	addc	a,#(_serialDescriptor >> 8)
      0020BB F5 83            [12] 2237 	mov	dph,a
      0020BD E4               [12] 2238 	clr	a
      0020BE 93               [24] 2239 	movc	a,@a+dptr
      0020BF 8C 82            [24] 2240 	mov	dpl,r4
      0020C1 8D 83            [24] 2241 	mov	dph,r5
      0020C3 F0               [24] 2242 	movx	@dptr,a
                                   2243 ;	callback.c:372: for (i=0; i<12; ++i) {
      0020C4 0E               [12] 2244 	inc	r6
      0020C5 BE 00 01         [24] 2245 	cjne	r6,#0x00,00734$
      0020C8 0F               [12] 2246 	inc	r7
      0020C9                       2247 00734$:
      0020C9 C3               [12] 2248 	clr	c
      0020CA EE               [12] 2249 	mov	a,r6
      0020CB 94 0C            [12] 2250 	subb	a,#0x0c
      0020CD EF               [12] 2251 	mov	a,r7
      0020CE 94 00            [12] 2252 	subb	a,#0x00
      0020D0 40 CC            [24] 2253 	jc	00263$
                                   2254 ;	callback.c:375: u8TransBuff[12] = 0;
      0020D2 90 00 E2         [24] 2255 	mov	dptr,#(_u8TransBuff + 0x000c)
      0020D5 E4               [12] 2256 	clr	a
      0020D6 F0               [24] 2257 	movx	@dptr,a
                                   2258 ;	callback.c:376: u8HidNum = 64;
      0020D7 75 0E 40         [24] 2259 	mov	_u8HidNum,#0x40
                                   2260 ;	callback.c:377: break;
      0020DA 22               [24] 2261 	ret
                                   2262 ;	callback.c:378: case 0x90:
      0020DB                       2263 00207$:
                                   2264 ;	callback.c:379: ICP_Init();
      0020DB 12 0D 90         [24] 2265 	lcall	_ICP_Init
                                   2266 ;	callback.c:380: u8HidNum = 64;
      0020DE 75 0E 40         [24] 2267 	mov	_u8HidNum,#0x40
                                   2268 ;	callback.c:381: break;
      0020E1 22               [24] 2269 	ret
                                   2270 ;	callback.c:382: case 0x91:
      0020E2                       2271 00208$:
                                   2272 ;	callback.c:383: ICP_Exit();
      0020E2 12 10 08         [24] 2273 	lcall	_ICP_Exit
                                   2274 ;	callback.c:384: u8HidNum = 0;
      0020E5 75 0E 00         [24] 2275 	mov	_u8HidNum,#0x00
                                   2276 ;	callback.c:385: break;
      0020E8 22               [24] 2277 	ret
                                   2278 ;	callback.c:386: case 0x92:
      0020E9                       2279 00209$:
                                   2280 ;	callback.c:387: ICP_Write();
      0020E9 12 0F 38         [24] 2281 	lcall	_ICP_Write
                                   2282 ;	callback.c:388: u8HidNum = 0;
      0020EC 75 0E 00         [24] 2283 	mov	_u8HidNum,#0x00
                                   2284 ;	callback.c:389: break;
      0020EF 22               [24] 2285 	ret
                                   2286 ;	callback.c:390: case 0x93:
      0020F0                       2287 00210$:
                                   2288 ;	callback.c:391: ICP_Read();
      0020F0 12 0F 6B         [24] 2289 	lcall	_ICP_Read
                                   2290 ;	callback.c:392: u8HidNum = 64;
      0020F3 75 0E 40         [24] 2291 	mov	_u8HidNum,#0x40
                                   2292 ;	callback.c:393: break;
      0020F6 22               [24] 2293 	ret
                                   2294 ;	callback.c:394: case 0x94:
      0020F7                       2295 00211$:
                                   2296 ;	callback.c:395: ICP_Enter();
      0020F7 12 0E 93         [24] 2297 	lcall	_ICP_Enter
                                   2298 ;	callback.c:396: u8HidNum = 0;
      0020FA 75 0E 00         [24] 2299 	mov	_u8HidNum,#0x00
                                   2300 ;	callback.c:397: break;
      0020FD 22               [24] 2301 	ret
                                   2302 ;	callback.c:398: case 0x95:
                                   2303 ;	callback.c:399: ICP_SetWire();
                                   2304 ;	callback.c:400: break;
                                   2305 ;	callback.c:401: case 0x96:
                                   2306 ;	callback.c:402: ICP_FlashWrite();
                                   2307 ;	callback.c:403: break;
      0020FE 02 0F E4         [24] 2308 	ljmp	_ICP_SetWire
                                   2309 ;	callback.c:407: case 0xC0:
      002101                       2310 00214$:
                                   2311 ;	callback.c:408: u8Chip = CHIP_C2;
      002101 75 13 02         [24] 2312 	mov	_u8Chip,#0x02
                                   2313 ;	callback.c:409: C2_Init(u8ReceiveBuff[2]);
      002104 90 00 42         [24] 2314 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      002107 E0               [24] 2315 	movx	a,@dptr
      002108 F5 82            [12] 2316 	mov	dpl,a
                                   2317 ;	callback.c:410: break;
                                   2318 ;	callback.c:411: case 0xC1:
                                   2319 ;	callback.c:412: C2_Exit();
                                   2320 ;	callback.c:413: break;
                                   2321 ;	callback.c:414: case 0xC2:
                                   2322 ;	callback.c:415: C2_Reset();
                                   2323 ;	callback.c:416: break;
      00210A 02 11 0E         [24] 2324 	ljmp	_C2_Init
                                   2325 ;	callback.c:417: case 0xC3:
      00210D                       2326 00217$:
                                   2327 ;	callback.c:418: u8TransBuff[0] = C2_ReadAR();
      00210D 12 13 61         [24] 2328 	lcall	_C2_ReadAR
      002110 AF 82            [24] 2329 	mov	r7,dpl
      002112 90 00 D6         [24] 2330 	mov	dptr,#_u8TransBuff
      002115 EF               [12] 2331 	mov	a,r7
      002116 F0               [24] 2332 	movx	@dptr,a
                                   2333 ;	callback.c:419: u8HidNum = 64;
      002117 75 0E 40         [24] 2334 	mov	_u8HidNum,#0x40
                                   2335 ;	callback.c:420: break;
      00211A 22               [24] 2336 	ret
                                   2337 ;	callback.c:421: case 0xC4:
      00211B                       2338 00218$:
                                   2339 ;	callback.c:422: C2_WriteAR(u8ReceiveBuff[2]);
      00211B 90 00 42         [24] 2340 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      00211E E0               [24] 2341 	movx	a,@dptr
      00211F F5 82            [12] 2342 	mov	dpl,a
      002121 12 12 BF         [24] 2343 	lcall	_C2_WriteAR
                                   2344 ;	callback.c:423: u8HidNum = 0;
      002124 75 0E 00         [24] 2345 	mov	_u8HidNum,#0x00
                                   2346 ;	callback.c:424: break;
      002127 22               [24] 2347 	ret
                                   2348 ;	callback.c:425: case 0xC5:
      002128                       2349 00219$:
                                   2350 ;	callback.c:426: u8TransBuff[1] = C2_ReadDR(&u8Ret);
      002128 90 00 34         [24] 2351 	mov	dptr,#_EP0_Out_CallBack_u8Ret_65536_36
      00212B 75 F0 40         [24] 2352 	mov	b,#0x40
      00212E 12 11 8F         [24] 2353 	lcall	_C2_ReadDR
      002131 AF 82            [24] 2354 	mov	r7,dpl
      002133 90 00 D7         [24] 2355 	mov	dptr,#(_u8TransBuff + 0x0001)
      002136 EF               [12] 2356 	mov	a,r7
      002137 F0               [24] 2357 	movx	@dptr,a
                                   2358 ;	callback.c:427: if (u8Ret) {
      002138 E5 34            [12] 2359 	mov	a,_EP0_Out_CallBack_u8Ret_65536_36
      00213A 60 08            [24] 2360 	jz	00221$
                                   2361 ;	callback.c:428: u8TransBuff[0] = 1;
      00213C 90 00 D6         [24] 2362 	mov	dptr,#_u8TransBuff
      00213F 74 01            [12] 2363 	mov	a,#0x01
      002141 F0               [24] 2364 	movx	@dptr,a
      002142 80 05            [24] 2365 	sjmp	00222$
      002144                       2366 00221$:
                                   2367 ;	callback.c:430: u8TransBuff[0] = 0;
      002144 90 00 D6         [24] 2368 	mov	dptr,#_u8TransBuff
      002147 E4               [12] 2369 	clr	a
      002148 F0               [24] 2370 	movx	@dptr,a
      002149                       2371 00222$:
                                   2372 ;	callback.c:432: u8HidNum = 64;
      002149 75 0E 40         [24] 2373 	mov	_u8HidNum,#0x40
                                   2374 ;	callback.c:433: break;
      00214C 22               [24] 2375 	ret
                                   2376 ;	callback.c:434: case 0xC6:
      00214D                       2377 00223$:
                                   2378 ;	callback.c:435: if (C2_WriteDR(u8ReceiveBuff[2])) {
      00214D 90 00 42         [24] 2379 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      002150 E0               [24] 2380 	movx	a,@dptr
      002151 F5 82            [12] 2381 	mov	dpl,a
      002153 12 13 FC         [24] 2382 	lcall	_C2_WriteDR
      002156 E5 82            [12] 2383 	mov	a,dpl
      002158 60 08            [24] 2384 	jz	00225$
                                   2385 ;	callback.c:436: u8TransBuff[0] = 1;
      00215A 90 00 D6         [24] 2386 	mov	dptr,#_u8TransBuff
      00215D 74 01            [12] 2387 	mov	a,#0x01
      00215F F0               [24] 2388 	movx	@dptr,a
      002160 80 05            [24] 2389 	sjmp	00226$
      002162                       2390 00225$:
                                   2391 ;	callback.c:438: u8TransBuff[0] = 0;
      002162 90 00 D6         [24] 2392 	mov	dptr,#_u8TransBuff
      002165 E4               [12] 2393 	clr	a
      002166 F0               [24] 2394 	movx	@dptr,a
      002167                       2395 00226$:
                                   2396 ;	callback.c:440: u8HidNum = 64;
      002167 75 0E 40         [24] 2397 	mov	_u8HidNum,#0x40
                                   2398 ;	callback.c:441: break;
      00216A 22               [24] 2399 	ret
                                   2400 ;	callback.c:442: case 0xC9:
      00216B                       2401 00227$:
                                   2402 ;	callback.c:443: u32Tmp = u8ReceiveBuff[5];
      00216B 90 00 45         [24] 2403 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      00216E E0               [24] 2404 	movx	a,@dptr
      00216F FF               [12] 2405 	mov	r7,a
      002170 7E 00            [12] 2406 	mov	r6,#0x00
                                   2407 ;	callback.c:444: u32Tmp <<= 24;
      002172 8F 2B            [24] 2408 	mov	(_u32Addr + 3),r7
                                   2409 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      002174 8E 28            [24] 2410 	mov	_u32Addr,r6
                                   2411 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      002176 8E 29            [24] 2412 	mov	(_u32Addr + 1),r6
                                   2413 ;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
      002178 8E 2A            [24] 2414 	mov	(_u32Addr + 2),r6
                                   2415 ;	callback.c:446: u32Tmp = u8ReceiveBuff[4];
      00217A 90 00 44         [24] 2416 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      00217D E0               [24] 2417 	movx	a,@dptr
      00217E FF               [12] 2418 	mov	r7,a
      00217F 7E 00            [12] 2419 	mov	r6,#0x00
                                   2420 ;	callback.c:447: u32Tmp <<= 16;
      002181 8E 04            [24] 2421 	mov	ar4,r6
      002183 8F 05            [24] 2422 	mov	ar5,r7
                                   2423 ;	callback.c:448: u32Addr += u32Tmp;
      002185 E4               [12] 2424 	clr	a
      002186 FE               [12] 2425 	mov	r6,a
      002187 25 28            [12] 2426 	add	a,_u32Addr
      002189 F5 28            [12] 2427 	mov	_u32Addr,a
      00218B EE               [12] 2428 	mov	a,r6
      00218C 35 29            [12] 2429 	addc	a,(_u32Addr + 1)
      00218E F5 29            [12] 2430 	mov	(_u32Addr + 1),a
      002190 ED               [12] 2431 	mov	a,r5
      002191 35 2A            [12] 2432 	addc	a,(_u32Addr + 2)
      002193 F5 2A            [12] 2433 	mov	(_u32Addr + 2),a
      002195 EC               [12] 2434 	mov	a,r4
      002196 35 2B            [12] 2435 	addc	a,(_u32Addr + 3)
      002198 F5 2B            [12] 2436 	mov	(_u32Addr + 3),a
                                   2437 ;	callback.c:449: u32Tmp = u8ReceiveBuff[3];
      00219A 90 00 43         [24] 2438 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      00219D E0               [24] 2439 	movx	a,@dptr
      00219E FF               [12] 2440 	mov	r7,a
      00219F 7E 00            [12] 2441 	mov	r6,#0x00
      0021A1 7D 00            [12] 2442 	mov	r5,#0x00
                                   2443 ;	callback.c:450: u32Tmp <<= 8;
      0021A3 8D 04            [24] 2444 	mov	ar4,r5
      0021A5 8E 05            [24] 2445 	mov	ar5,r6
      0021A7 8F 06            [24] 2446 	mov	ar6,r7
                                   2447 ;	callback.c:451: u32Addr += u32Tmp;
      0021A9 E4               [12] 2448 	clr	a
      0021AA 25 28            [12] 2449 	add	a,_u32Addr
      0021AC F5 28            [12] 2450 	mov	_u32Addr,a
      0021AE EE               [12] 2451 	mov	a,r6
      0021AF 35 29            [12] 2452 	addc	a,(_u32Addr + 1)
      0021B1 F5 29            [12] 2453 	mov	(_u32Addr + 1),a
      0021B3 ED               [12] 2454 	mov	a,r5
      0021B4 35 2A            [12] 2455 	addc	a,(_u32Addr + 2)
      0021B6 F5 2A            [12] 2456 	mov	(_u32Addr + 2),a
      0021B8 EC               [12] 2457 	mov	a,r4
      0021B9 35 2B            [12] 2458 	addc	a,(_u32Addr + 3)
      0021BB F5 2B            [12] 2459 	mov	(_u32Addr + 3),a
                                   2460 ;	callback.c:452: u32Tmp = u8ReceiveBuff[2];
      0021BD 90 00 42         [24] 2461 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      0021C0 E0               [24] 2462 	movx	a,@dptr
      0021C1 FF               [12] 2463 	mov	r7,a
                                   2464 ;	callback.c:453: u32Addr += u32Tmp;
      0021C2 E4               [12] 2465 	clr	a
      0021C3 FE               [12] 2466 	mov	r6,a
      0021C4 FD               [12] 2467 	mov	r5,a
      0021C5 FC               [12] 2468 	mov	r4,a
      0021C6 EF               [12] 2469 	mov	a,r7
      0021C7 25 28            [12] 2470 	add	a,_u32Addr
      0021C9 F5 28            [12] 2471 	mov	_u32Addr,a
      0021CB EE               [12] 2472 	mov	a,r6
      0021CC 35 29            [12] 2473 	addc	a,(_u32Addr + 1)
      0021CE F5 29            [12] 2474 	mov	(_u32Addr + 1),a
      0021D0 ED               [12] 2475 	mov	a,r5
      0021D1 35 2A            [12] 2476 	addc	a,(_u32Addr + 2)
      0021D3 F5 2A            [12] 2477 	mov	(_u32Addr + 2),a
      0021D5 EC               [12] 2478 	mov	a,r4
      0021D6 35 2B            [12] 2479 	addc	a,(_u32Addr + 3)
      0021D8 F5 2B            [12] 2480 	mov	(_u32Addr + 3),a
                                   2481 ;	callback.c:454: if (C2_ReadFlash(u32Addr, u8ReceiveBuff[6], &u8TransBuff[1])) {
      0021DA 90 00 46         [24] 2482 	mov	dptr,#(_u8ReceiveBuff + 0x0006)
      0021DD E0               [24] 2483 	movx	a,@dptr
      0021DE F5 23            [12] 2484 	mov	_C2_ReadFlash_PARM_2,a
      0021E0 75 24 D7         [24] 2485 	mov	_C2_ReadFlash_PARM_3,#(_u8TransBuff + 0x0001)
      0021E3 75 25 00         [24] 2486 	mov	(_C2_ReadFlash_PARM_3 + 1),#((_u8TransBuff + 0x0001) >> 8)
                                   2487 ;	1-genFromRTrack replaced	mov	(_C2_ReadFlash_PARM_3 + 2),#0x00
      0021E6 8E 26            [24] 2488 	mov	(_C2_ReadFlash_PARM_3 + 2),r6
      0021E8 85 28 82         [24] 2489 	mov	dpl,_u32Addr
      0021EB 85 29 83         [24] 2490 	mov	dph,(_u32Addr + 1)
      0021EE 85 2A F0         [24] 2491 	mov	b,(_u32Addr + 2)
      0021F1 E5 2B            [12] 2492 	mov	a,(_u32Addr + 3)
      0021F3 12 16 3E         [24] 2493 	lcall	_C2_ReadFlash
      0021F6 E5 82            [12] 2494 	mov	a,dpl
      0021F8 60 08            [24] 2495 	jz	00229$
                                   2496 ;	callback.c:455: u8TransBuff[0] = 1;
      0021FA 90 00 D6         [24] 2497 	mov	dptr,#_u8TransBuff
      0021FD 74 01            [12] 2498 	mov	a,#0x01
      0021FF F0               [24] 2499 	movx	@dptr,a
      002200 80 05            [24] 2500 	sjmp	00230$
      002202                       2501 00229$:
                                   2502 ;	callback.c:457: u8TransBuff[0] = 0;
      002202 90 00 D6         [24] 2503 	mov	dptr,#_u8TransBuff
      002205 E4               [12] 2504 	clr	a
      002206 F0               [24] 2505 	movx	@dptr,a
      002207                       2506 00230$:
                                   2507 ;	callback.c:459: u8HidNum = 64;
      002207 75 0E 40         [24] 2508 	mov	_u8HidNum,#0x40
                                   2509 ;	callback.c:460: break;
      00220A 22               [24] 2510 	ret
                                   2511 ;	callback.c:461: case 0xCA:
      00220B                       2512 00231$:
                                   2513 ;	callback.c:462: u32Tmp = u8ReceiveBuff[5];
      00220B 90 00 45         [24] 2514 	mov	dptr,#(_u8ReceiveBuff + 0x0005)
      00220E E0               [24] 2515 	movx	a,@dptr
      00220F FF               [12] 2516 	mov	r7,a
      002210 7E 00            [12] 2517 	mov	r6,#0x00
                                   2518 ;	callback.c:463: u32Tmp <<= 24;
      002212 8F 2B            [24] 2519 	mov	(_u32Addr + 3),r7
                                   2520 ;	1-genFromRTrack replaced	mov	_u32Addr,#0x00
      002214 8E 28            [24] 2521 	mov	_u32Addr,r6
                                   2522 ;	1-genFromRTrack replaced	mov	(_u32Addr + 1),#0x00
      002216 8E 29            [24] 2523 	mov	(_u32Addr + 1),r6
                                   2524 ;	1-genFromRTrack replaced	mov	(_u32Addr + 2),#0x00
      002218 8E 2A            [24] 2525 	mov	(_u32Addr + 2),r6
                                   2526 ;	callback.c:465: u32Tmp = u8ReceiveBuff[4];
      00221A 90 00 44         [24] 2527 	mov	dptr,#(_u8ReceiveBuff + 0x0004)
      00221D E0               [24] 2528 	movx	a,@dptr
      00221E FF               [12] 2529 	mov	r7,a
      00221F 7E 00            [12] 2530 	mov	r6,#0x00
                                   2531 ;	callback.c:466: u32Tmp <<= 16;
      002221 8E 04            [24] 2532 	mov	ar4,r6
      002223 8F 05            [24] 2533 	mov	ar5,r7
                                   2534 ;	callback.c:467: u32Addr += u32Tmp;
      002225 E4               [12] 2535 	clr	a
      002226 FE               [12] 2536 	mov	r6,a
      002227 25 28            [12] 2537 	add	a,_u32Addr
      002229 F5 28            [12] 2538 	mov	_u32Addr,a
      00222B EE               [12] 2539 	mov	a,r6
      00222C 35 29            [12] 2540 	addc	a,(_u32Addr + 1)
      00222E F5 29            [12] 2541 	mov	(_u32Addr + 1),a
      002230 ED               [12] 2542 	mov	a,r5
      002231 35 2A            [12] 2543 	addc	a,(_u32Addr + 2)
      002233 F5 2A            [12] 2544 	mov	(_u32Addr + 2),a
      002235 EC               [12] 2545 	mov	a,r4
      002236 35 2B            [12] 2546 	addc	a,(_u32Addr + 3)
      002238 F5 2B            [12] 2547 	mov	(_u32Addr + 3),a
                                   2548 ;	callback.c:468: u32Tmp = u8ReceiveBuff[3];
      00223A 90 00 43         [24] 2549 	mov	dptr,#(_u8ReceiveBuff + 0x0003)
      00223D E0               [24] 2550 	movx	a,@dptr
      00223E FF               [12] 2551 	mov	r7,a
      00223F 7E 00            [12] 2552 	mov	r6,#0x00
      002241 7D 00            [12] 2553 	mov	r5,#0x00
                                   2554 ;	callback.c:469: u32Tmp <<= 8;
      002243 8D 04            [24] 2555 	mov	ar4,r5
      002245 8E 05            [24] 2556 	mov	ar5,r6
      002247 8F 06            [24] 2557 	mov	ar6,r7
                                   2558 ;	callback.c:470: u32Addr += u32Tmp;
      002249 E4               [12] 2559 	clr	a
      00224A 25 28            [12] 2560 	add	a,_u32Addr
      00224C F5 28            [12] 2561 	mov	_u32Addr,a
      00224E EE               [12] 2562 	mov	a,r6
      00224F 35 29            [12] 2563 	addc	a,(_u32Addr + 1)
      002251 F5 29            [12] 2564 	mov	(_u32Addr + 1),a
      002253 ED               [12] 2565 	mov	a,r5
      002254 35 2A            [12] 2566 	addc	a,(_u32Addr + 2)
      002256 F5 2A            [12] 2567 	mov	(_u32Addr + 2),a
      002258 EC               [12] 2568 	mov	a,r4
      002259 35 2B            [12] 2569 	addc	a,(_u32Addr + 3)
      00225B F5 2B            [12] 2570 	mov	(_u32Addr + 3),a
                                   2571 ;	callback.c:471: u32Tmp = u8ReceiveBuff[2];
      00225D 90 00 42         [24] 2572 	mov	dptr,#(_u8ReceiveBuff + 0x0002)
      002260 E0               [24] 2573 	movx	a,@dptr
      002261 FF               [12] 2574 	mov	r7,a
                                   2575 ;	callback.c:472: u32Addr += u32Tmp;
      002262 E4               [12] 2576 	clr	a
      002263 FE               [12] 2577 	mov	r6,a
      002264 FD               [12] 2578 	mov	r5,a
      002265 FC               [12] 2579 	mov	r4,a
      002266 EF               [12] 2580 	mov	a,r7
      002267 25 28            [12] 2581 	add	a,_u32Addr
      002269 F5 28            [12] 2582 	mov	_u32Addr,a
      00226B EE               [12] 2583 	mov	a,r6
      00226C 35 29            [12] 2584 	addc	a,(_u32Addr + 1)
      00226E F5 29            [12] 2585 	mov	(_u32Addr + 1),a
      002270 ED               [12] 2586 	mov	a,r5
      002271 35 2A            [12] 2587 	addc	a,(_u32Addr + 2)
      002273 F5 2A            [12] 2588 	mov	(_u32Addr + 2),a
      002275 EC               [12] 2589 	mov	a,r4
      002276 35 2B            [12] 2590 	addc	a,(_u32Addr + 3)
      002278 F5 2B            [12] 2591 	mov	(_u32Addr + 3),a
                                   2592 ;	callback.c:473: if (C2_WriteFlash(u32Addr, u8ReceiveBuff[6], &u8ReceiveBuff[7])) {
      00227A 90 00 46         [24] 2593 	mov	dptr,#(_u8ReceiveBuff + 0x0006)
      00227D E0               [24] 2594 	movx	a,@dptr
      00227E F5 1E            [12] 2595 	mov	_C2_WriteFlash_PARM_2,a
      002280 75 1F 47         [24] 2596 	mov	_C2_WriteFlash_PARM_3,#(_u8ReceiveBuff + 0x0007)
      002283 75 20 00         [24] 2597 	mov	(_C2_WriteFlash_PARM_3 + 1),#((_u8ReceiveBuff + 0x0007) >> 8)
                                   2598 ;	1-genFromRTrack replaced	mov	(_C2_WriteFlash_PARM_3 + 2),#0x00
      002286 8E 21            [24] 2599 	mov	(_C2_WriteFlash_PARM_3 + 2),r6
      002288 85 28 82         [24] 2600 	mov	dpl,_u32Addr
      00228B 85 29 83         [24] 2601 	mov	dph,(_u32Addr + 1)
      00228E 85 2A F0         [24] 2602 	mov	b,(_u32Addr + 2)
      002291 E5 2B            [12] 2603 	mov	a,(_u32Addr + 3)
      002293 12 15 2A         [24] 2604 	lcall	_C2_WriteFlash
      002296 E5 82            [12] 2605 	mov	a,dpl
      002298 60 08            [24] 2606 	jz	00233$
                                   2607 ;	callback.c:474: u8TransBuff[0] = 1;
      00229A 90 00 D6         [24] 2608 	mov	dptr,#_u8TransBuff
      00229D 74 01            [12] 2609 	mov	a,#0x01
      00229F F0               [24] 2610 	movx	@dptr,a
      0022A0 80 05            [24] 2611 	sjmp	00234$
      0022A2                       2612 00233$:
                                   2613 ;	callback.c:476: u8TransBuff[0] = 0;
      0022A2 90 00 D6         [24] 2614 	mov	dptr,#_u8TransBuff
      0022A5 E4               [12] 2615 	clr	a
      0022A6 F0               [24] 2616 	movx	@dptr,a
      0022A7                       2617 00234$:
                                   2618 ;	callback.c:478: u8HidNum = 64;
      0022A7 75 0E 40         [24] 2619 	mov	_u8HidNum,#0x40
                                   2620 ;	callback.c:483: }
      0022AA                       2621 00265$:
                                   2622 ;	callback.c:484: }
      0022AA 22               [24] 2623 	ret
                                   2624 	.area CSEG    (CODE)
                                   2625 	.area CONST   (CODE)
                                   2626 	.area XINIT   (CODE)
                                   2627 	.area CABS    (ABS,CODE)
