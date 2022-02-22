                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module usbisp
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _FindNotBlank_PARM_2
                                     12 	.globl _Delay_Ms
                                     13 	.globl _spi_send
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _ADC_CHAN0
                                     24 	.globl _ADC_CHAN1
                                     25 	.globl _CMP_CHAN
                                     26 	.globl _ADC_START
                                     27 	.globl _ADC_IF
                                     28 	.globl _CMP_IF
                                     29 	.globl _CMPO
                                     30 	.globl _U1RI
                                     31 	.globl _U1TI
                                     32 	.globl _U1RB8
                                     33 	.globl _U1TB8
                                     34 	.globl _U1REN
                                     35 	.globl _U1SMOD
                                     36 	.globl _U1SM0
                                     37 	.globl _S0_R_FIFO
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _RXD
                                     70 	.globl _PWM1_
                                     71 	.globl _TXD
                                     72 	.globl _PWM2_
                                     73 	.globl _AIN3
                                     74 	.globl _VBUS1
                                     75 	.globl _INT0
                                     76 	.globl _TXD1_
                                     77 	.globl _INT1
                                     78 	.globl _T0
                                     79 	.globl _RXD1_
                                     80 	.globl _PWM2
                                     81 	.globl _T1
                                     82 	.globl _UDP
                                     83 	.globl _UDM
                                     84 	.globl _TIN0
                                     85 	.globl _CAP1
                                     86 	.globl _T2
                                     87 	.globl _AIN0
                                     88 	.globl _VBUS2
                                     89 	.globl _TIN1
                                     90 	.globl _CAP2
                                     91 	.globl _T2EX
                                     92 	.globl _RXD_
                                     93 	.globl _TXD_
                                     94 	.globl _AIN1
                                     95 	.globl _UCC1
                                     96 	.globl _TIN2
                                     97 	.globl _SCS
                                     98 	.globl _CAP1_
                                     99 	.globl _T2_
                                    100 	.globl _AIN2
                                    101 	.globl _UCC2
                                    102 	.globl _TIN3
                                    103 	.globl _PWM1
                                    104 	.globl _MOSI
                                    105 	.globl _TIN4
                                    106 	.globl _RXD1
                                    107 	.globl _MISO
                                    108 	.globl _TIN5
                                    109 	.globl _TXD1
                                    110 	.globl _SCK
                                    111 	.globl _IE_SPI0
                                    112 	.globl _IE_TKEY
                                    113 	.globl _IE_USB
                                    114 	.globl _IE_ADC
                                    115 	.globl _IE_UART1
                                    116 	.globl _IE_PWMX
                                    117 	.globl _IE_GPIO
                                    118 	.globl _IE_WDOG
                                    119 	.globl _PX0
                                    120 	.globl _PT0
                                    121 	.globl _PX1
                                    122 	.globl _PT1
                                    123 	.globl _PS
                                    124 	.globl _PT2
                                    125 	.globl _PL_FLAG
                                    126 	.globl _PH_FLAG
                                    127 	.globl _EX0
                                    128 	.globl _ET0
                                    129 	.globl _EX1
                                    130 	.globl _ET1
                                    131 	.globl _ES
                                    132 	.globl _ET2
                                    133 	.globl _E_DIS
                                    134 	.globl _EA
                                    135 	.globl _P
                                    136 	.globl _F1
                                    137 	.globl _OV
                                    138 	.globl _RS0
                                    139 	.globl _RS1
                                    140 	.globl _F0
                                    141 	.globl _AC
                                    142 	.globl _CY
                                    143 	.globl _UEP1_DMA_H
                                    144 	.globl _UEP1_DMA_L
                                    145 	.globl _UEP1_DMA
                                    146 	.globl _UEP0_DMA_H
                                    147 	.globl _UEP0_DMA_L
                                    148 	.globl _UEP0_DMA
                                    149 	.globl _UEP2_3_MOD
                                    150 	.globl _UEP4_1_MOD
                                    151 	.globl _UEP3_DMA_H
                                    152 	.globl _UEP3_DMA_L
                                    153 	.globl _UEP3_DMA
                                    154 	.globl _UEP2_DMA_H
                                    155 	.globl _UEP2_DMA_L
                                    156 	.globl _UEP2_DMA
                                    157 	.globl _USB_DEV_AD
                                    158 	.globl _USB_CTRL
                                    159 	.globl _USB_INT_EN
                                    160 	.globl _UEP4_T_LEN
                                    161 	.globl _UEP4_CTRL
                                    162 	.globl _UEP0_T_LEN
                                    163 	.globl _UEP0_CTRL
                                    164 	.globl _USB_RX_LEN
                                    165 	.globl _USB_MIS_ST
                                    166 	.globl _USB_INT_ST
                                    167 	.globl _USB_INT_FG
                                    168 	.globl _UEP3_T_LEN
                                    169 	.globl _UEP3_CTRL
                                    170 	.globl _UEP2_T_LEN
                                    171 	.globl _UEP2_CTRL
                                    172 	.globl _UEP1_T_LEN
                                    173 	.globl _UEP1_CTRL
                                    174 	.globl _UDEV_CTRL
                                    175 	.globl _USB_C_CTRL
                                    176 	.globl _TKEY_DATH
                                    177 	.globl _TKEY_DATL
                                    178 	.globl _TKEY_DAT
                                    179 	.globl _TKEY_CTRL
                                    180 	.globl _ADC_DATA
                                    181 	.globl _ADC_CFG
                                    182 	.globl _ADC_CTRL
                                    183 	.globl _SBAUD1
                                    184 	.globl _SBUF1
                                    185 	.globl _SCON1
                                    186 	.globl _SPI0_SETUP
                                    187 	.globl _SPI0_CK_SE
                                    188 	.globl _SPI0_CTRL
                                    189 	.globl _SPI0_DATA
                                    190 	.globl _SPI0_STAT
                                    191 	.globl _PWM_CK_SE
                                    192 	.globl _PWM_CTRL
                                    193 	.globl _PWM_DATA1
                                    194 	.globl _PWM_DATA2
                                    195 	.globl _T2CAP1H
                                    196 	.globl _T2CAP1L
                                    197 	.globl _T2CAP1
                                    198 	.globl _TH2
                                    199 	.globl _TL2
                                    200 	.globl _T2COUNT
                                    201 	.globl _RCAP2H
                                    202 	.globl _RCAP2L
                                    203 	.globl _RCAP2
                                    204 	.globl _T2MOD
                                    205 	.globl _T2CON
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _XBUS_AUX
                                    215 	.globl _PIN_FUNC
                                    216 	.globl _P3_DIR_PU
                                    217 	.globl _P3_MOD_OC
                                    218 	.globl _P3
                                    219 	.globl _P2
                                    220 	.globl _P1_DIR_PU
                                    221 	.globl _P1_MOD_OC
                                    222 	.globl _P1
                                    223 	.globl _ROM_CTRL
                                    224 	.globl _ROM_DATA_H
                                    225 	.globl _ROM_DATA_L
                                    226 	.globl _ROM_DATA
                                    227 	.globl _ROM_ADDR_H
                                    228 	.globl _ROM_ADDR_L
                                    229 	.globl _ROM_ADDR
                                    230 	.globl _GPIO_IE
                                    231 	.globl _IP_EX
                                    232 	.globl _IE_EX
                                    233 	.globl _IP
                                    234 	.globl _IE
                                    235 	.globl _WDOG_COUNT
                                    236 	.globl _RESET_KEEP
                                    237 	.globl _WAKE_CTRL
                                    238 	.globl _CLOCK_CFG
                                    239 	.globl _PCON
                                    240 	.globl _GLOBAL_CFG
                                    241 	.globl _SAFE_MOD
                                    242 	.globl _DPH
                                    243 	.globl _DPL
                                    244 	.globl _SP
                                    245 	.globl _B
                                    246 	.globl _ACC
                                    247 	.globl _PSW
                                    248 	.globl _ispWriteFlashPage_PARM_3
                                    249 	.globl _ispWriteFlashPage_PARM_2
                                    250 	.globl _ispWriteEeprom_PARM_2
                                    251 	.globl _ispWriteFlashByte_PARM_2
                                    252 	.globl _readType
                                    253 	.globl _u8Chip
                                    254 	.globl _ispReadFlash
                                    255 	.globl _ispReadAvrLo
                                    256 	.globl _ispReadAvrHi
                                    257 	.globl _ispReadEeprom
                                    258 	.globl _ispWriteFlashByte
                                    259 	.globl _ispWriteEeprom
                                    260 	.globl _FindNotBlank
                                    261 	.globl _ispWriteFlashPage
                                    262 ;--------------------------------------------------------
                                    263 ; special function registers
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           000081   270 _SP	=	0x0081
                           000082   271 _DPL	=	0x0082
                           000083   272 _DPH	=	0x0083
                           0000A1   273 _SAFE_MOD	=	0x00a1
                           0000B1   274 _GLOBAL_CFG	=	0x00b1
                           000087   275 _PCON	=	0x0087
                           0000B9   276 _CLOCK_CFG	=	0x00b9
                           0000A9   277 _WAKE_CTRL	=	0x00a9
                           0000FE   278 _RESET_KEEP	=	0x00fe
                           0000FF   279 _WDOG_COUNT	=	0x00ff
                           0000A8   280 _IE	=	0x00a8
                           0000B8   281 _IP	=	0x00b8
                           0000E8   282 _IE_EX	=	0x00e8
                           0000E9   283 _IP_EX	=	0x00e9
                           0000C7   284 _GPIO_IE	=	0x00c7
                           008584   285 _ROM_ADDR	=	0x8584
                           000084   286 _ROM_ADDR_L	=	0x0084
                           000085   287 _ROM_ADDR_H	=	0x0085
                           008F8E   288 _ROM_DATA	=	0x8f8e
                           00008E   289 _ROM_DATA_L	=	0x008e
                           00008F   290 _ROM_DATA_H	=	0x008f
                           000086   291 _ROM_CTRL	=	0x0086
                           000090   292 _P1	=	0x0090
                           000092   293 _P1_MOD_OC	=	0x0092
                           000093   294 _P1_DIR_PU	=	0x0093
                           0000A0   295 _P2	=	0x00a0
                           0000B0   296 _P3	=	0x00b0
                           000096   297 _P3_MOD_OC	=	0x0096
                           000097   298 _P3_DIR_PU	=	0x0097
                           0000C6   299 _PIN_FUNC	=	0x00c6
                           0000A2   300 _XBUS_AUX	=	0x00a2
                           000088   301 _TCON	=	0x0088
                           000089   302 _TMOD	=	0x0089
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           000098   307 _SCON	=	0x0098
                           000099   308 _SBUF	=	0x0099
                           0000C8   309 _T2CON	=	0x00c8
                           0000C9   310 _T2MOD	=	0x00c9
                           00CBCA   311 _RCAP2	=	0xcbca
                           0000CA   312 _RCAP2L	=	0x00ca
                           0000CB   313 _RCAP2H	=	0x00cb
                           00CDCC   314 _T2COUNT	=	0xcdcc
                           0000CC   315 _TL2	=	0x00cc
                           0000CD   316 _TH2	=	0x00cd
                           00CFCE   317 _T2CAP1	=	0xcfce
                           0000CE   318 _T2CAP1L	=	0x00ce
                           0000CF   319 _T2CAP1H	=	0x00cf
                           00009B   320 _PWM_DATA2	=	0x009b
                           00009C   321 _PWM_DATA1	=	0x009c
                           00009D   322 _PWM_CTRL	=	0x009d
                           00009E   323 _PWM_CK_SE	=	0x009e
                           0000F8   324 _SPI0_STAT	=	0x00f8
                           0000F9   325 _SPI0_DATA	=	0x00f9
                           0000FA   326 _SPI0_CTRL	=	0x00fa
                           0000FB   327 _SPI0_CK_SE	=	0x00fb
                           0000FC   328 _SPI0_SETUP	=	0x00fc
                           0000C0   329 _SCON1	=	0x00c0
                           0000C1   330 _SBUF1	=	0x00c1
                           0000C2   331 _SBAUD1	=	0x00c2
                           000080   332 _ADC_CTRL	=	0x0080
                           00009A   333 _ADC_CFG	=	0x009a
                           00009F   334 _ADC_DATA	=	0x009f
                           0000C3   335 _TKEY_CTRL	=	0x00c3
                           00C5C4   336 _TKEY_DAT	=	0xc5c4
                           0000C4   337 _TKEY_DATL	=	0x00c4
                           0000C5   338 _TKEY_DATH	=	0x00c5
                           000091   339 _USB_C_CTRL	=	0x0091
                           0000D1   340 _UDEV_CTRL	=	0x00d1
                           0000D2   341 _UEP1_CTRL	=	0x00d2
                           0000D3   342 _UEP1_T_LEN	=	0x00d3
                           0000D4   343 _UEP2_CTRL	=	0x00d4
                           0000D5   344 _UEP2_T_LEN	=	0x00d5
                           0000D6   345 _UEP3_CTRL	=	0x00d6
                           0000D7   346 _UEP3_T_LEN	=	0x00d7
                           0000D8   347 _USB_INT_FG	=	0x00d8
                           0000D9   348 _USB_INT_ST	=	0x00d9
                           0000DA   349 _USB_MIS_ST	=	0x00da
                           0000DB   350 _USB_RX_LEN	=	0x00db
                           0000DC   351 _UEP0_CTRL	=	0x00dc
                           0000DD   352 _UEP0_T_LEN	=	0x00dd
                           0000DE   353 _UEP4_CTRL	=	0x00de
                           0000DF   354 _UEP4_T_LEN	=	0x00df
                           0000E1   355 _USB_INT_EN	=	0x00e1
                           0000E2   356 _USB_CTRL	=	0x00e2
                           0000E3   357 _USB_DEV_AD	=	0x00e3
                           00E5E4   358 _UEP2_DMA	=	0xe5e4
                           0000E4   359 _UEP2_DMA_L	=	0x00e4
                           0000E5   360 _UEP2_DMA_H	=	0x00e5
                           00E7E6   361 _UEP3_DMA	=	0xe7e6
                           0000E6   362 _UEP3_DMA_L	=	0x00e6
                           0000E7   363 _UEP3_DMA_H	=	0x00e7
                           0000EA   364 _UEP4_1_MOD	=	0x00ea
                           0000EB   365 _UEP2_3_MOD	=	0x00eb
                           00EDEC   366 _UEP0_DMA	=	0xedec
                           0000EC   367 _UEP0_DMA_L	=	0x00ec
                           0000ED   368 _UEP0_DMA_H	=	0x00ed
                           00EFEE   369 _UEP1_DMA	=	0xefee
                           0000EE   370 _UEP1_DMA_L	=	0x00ee
                           0000EF   371 _UEP1_DMA_H	=	0x00ef
                                    372 ;--------------------------------------------------------
                                    373 ; special function bits
                                    374 ;--------------------------------------------------------
                                    375 	.area RSEG    (ABS,DATA)
      000000                        376 	.org 0x0000
                           0000D7   377 _CY	=	0x00d7
                           0000D6   378 _AC	=	0x00d6
                           0000D5   379 _F0	=	0x00d5
                           0000D4   380 _RS1	=	0x00d4
                           0000D3   381 _RS0	=	0x00d3
                           0000D2   382 _OV	=	0x00d2
                           0000D1   383 _F1	=	0x00d1
                           0000D0   384 _P	=	0x00d0
                           0000AF   385 _EA	=	0x00af
                           0000AE   386 _E_DIS	=	0x00ae
                           0000AD   387 _ET2	=	0x00ad
                           0000AC   388 _ES	=	0x00ac
                           0000AB   389 _ET1	=	0x00ab
                           0000AA   390 _EX1	=	0x00aa
                           0000A9   391 _ET0	=	0x00a9
                           0000A8   392 _EX0	=	0x00a8
                           0000BF   393 _PH_FLAG	=	0x00bf
                           0000BE   394 _PL_FLAG	=	0x00be
                           0000BD   395 _PT2	=	0x00bd
                           0000BC   396 _PS	=	0x00bc
                           0000BB   397 _PT1	=	0x00bb
                           0000BA   398 _PX1	=	0x00ba
                           0000B9   399 _PT0	=	0x00b9
                           0000B8   400 _PX0	=	0x00b8
                           0000EF   401 _IE_WDOG	=	0x00ef
                           0000EE   402 _IE_GPIO	=	0x00ee
                           0000ED   403 _IE_PWMX	=	0x00ed
                           0000EC   404 _IE_UART1	=	0x00ec
                           0000EB   405 _IE_ADC	=	0x00eb
                           0000EA   406 _IE_USB	=	0x00ea
                           0000E9   407 _IE_TKEY	=	0x00e9
                           0000E8   408 _IE_SPI0	=	0x00e8
                           000097   409 _SCK	=	0x0097
                           000097   410 _TXD1	=	0x0097
                           000097   411 _TIN5	=	0x0097
                           000096   412 _MISO	=	0x0096
                           000096   413 _RXD1	=	0x0096
                           000096   414 _TIN4	=	0x0096
                           000095   415 _MOSI	=	0x0095
                           000095   416 _PWM1	=	0x0095
                           000095   417 _TIN3	=	0x0095
                           000095   418 _UCC2	=	0x0095
                           000095   419 _AIN2	=	0x0095
                           000094   420 _T2_	=	0x0094
                           000094   421 _CAP1_	=	0x0094
                           000094   422 _SCS	=	0x0094
                           000094   423 _TIN2	=	0x0094
                           000094   424 _UCC1	=	0x0094
                           000094   425 _AIN1	=	0x0094
                           000093   426 _TXD_	=	0x0093
                           000092   427 _RXD_	=	0x0092
                           000091   428 _T2EX	=	0x0091
                           000091   429 _CAP2	=	0x0091
                           000091   430 _TIN1	=	0x0091
                           000091   431 _VBUS2	=	0x0091
                           000091   432 _AIN0	=	0x0091
                           000090   433 _T2	=	0x0090
                           000090   434 _CAP1	=	0x0090
                           000090   435 _TIN0	=	0x0090
                           0000B7   436 _UDM	=	0x00b7
                           0000B6   437 _UDP	=	0x00b6
                           0000B5   438 _T1	=	0x00b5
                           0000B4   439 _PWM2	=	0x00b4
                           0000B4   440 _RXD1_	=	0x00b4
                           0000B4   441 _T0	=	0x00b4
                           0000B3   442 _INT1	=	0x00b3
                           0000B2   443 _TXD1_	=	0x00b2
                           0000B2   444 _INT0	=	0x00b2
                           0000B2   445 _VBUS1	=	0x00b2
                           0000B2   446 _AIN3	=	0x00b2
                           0000B1   447 _PWM2_	=	0x00b1
                           0000B1   448 _TXD	=	0x00b1
                           0000B0   449 _PWM1_	=	0x00b0
                           0000B0   450 _RXD	=	0x00b0
                           00008F   451 _TF1	=	0x008f
                           00008E   452 _TR1	=	0x008e
                           00008D   453 _TF0	=	0x008d
                           00008C   454 _TR0	=	0x008c
                           00008B   455 _IE1	=	0x008b
                           00008A   456 _IT1	=	0x008a
                           000089   457 _IE0	=	0x0089
                           000088   458 _IT0	=	0x0088
                           00009F   459 _SM0	=	0x009f
                           00009E   460 _SM1	=	0x009e
                           00009D   461 _SM2	=	0x009d
                           00009C   462 _REN	=	0x009c
                           00009B   463 _TB8	=	0x009b
                           00009A   464 _RB8	=	0x009a
                           000099   465 _TI	=	0x0099
                           000098   466 _RI	=	0x0098
                           0000CF   467 _TF2	=	0x00cf
                           0000CF   468 _CAP1F	=	0x00cf
                           0000CE   469 _EXF2	=	0x00ce
                           0000CD   470 _RCLK	=	0x00cd
                           0000CC   471 _TCLK	=	0x00cc
                           0000CB   472 _EXEN2	=	0x00cb
                           0000CA   473 _TR2	=	0x00ca
                           0000C9   474 _C_T2	=	0x00c9
                           0000C8   475 _CP_RL2	=	0x00c8
                           0000FF   476 _S0_FST_ACT	=	0x00ff
                           0000FE   477 _S0_IF_OV	=	0x00fe
                           0000FD   478 _S0_IF_FIRST	=	0x00fd
                           0000FC   479 _S0_IF_BYTE	=	0x00fc
                           0000FB   480 _S0_FREE	=	0x00fb
                           0000FA   481 _S0_T_FIFO	=	0x00fa
                           0000F8   482 _S0_R_FIFO	=	0x00f8
                           0000C7   483 _U1SM0	=	0x00c7
                           0000C5   484 _U1SMOD	=	0x00c5
                           0000C4   485 _U1REN	=	0x00c4
                           0000C3   486 _U1TB8	=	0x00c3
                           0000C2   487 _U1RB8	=	0x00c2
                           0000C1   488 _U1TI	=	0x00c1
                           0000C0   489 _U1RI	=	0x00c0
                           000087   490 _CMPO	=	0x0087
                           000086   491 _CMP_IF	=	0x0086
                           000085   492 _ADC_IF	=	0x0085
                           000084   493 _ADC_START	=	0x0084
                           000083   494 _CMP_CHAN	=	0x0083
                           000081   495 _ADC_CHAN1	=	0x0081
                           000080   496 _ADC_CHAN0	=	0x0080
                           0000DF   497 _U_IS_NAK	=	0x00df
                           0000DE   498 _U_TOG_OK	=	0x00de
                           0000DD   499 _U_SIE_FREE	=	0x00dd
                           0000DC   500 _UIF_FIFO_OV	=	0x00dc
                           0000DB   501 _UIF_HST_SOF	=	0x00db
                           0000DA   502 _UIF_SUSPEND	=	0x00da
                           0000D9   503 _UIF_TRANSFER	=	0x00d9
                           0000D8   504 _UIF_DETECT	=	0x00d8
                           0000D8   505 _UIF_BUS_RST	=	0x00d8
                                    506 ;--------------------------------------------------------
                                    507 ; overlayable register banks
                                    508 ;--------------------------------------------------------
                                    509 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        510 	.ds 8
                                    511 ;--------------------------------------------------------
                                    512 ; internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area DSEG    (DATA)
      000013                        515 _u8Chip::
      000013                        516 	.ds 1
      000014                        517 _readType::
      000014                        518 	.ds 1
      000015                        519 _ispWriteFlashByte_PARM_2:
      000015                        520 	.ds 1
      000016                        521 _ispWriteEeprom_PARM_2:
      000016                        522 	.ds 1
      000017                        523 _ispWriteFlashPage_PARM_2:
      000017                        524 	.ds 3
      00001A                        525 _ispWriteFlashPage_PARM_3:
      00001A                        526 	.ds 2
                                    527 ;--------------------------------------------------------
                                    528 ; overlayable items in internal ram 
                                    529 ;--------------------------------------------------------
                                    530 	.area	OSEG    (OVR,DATA)
      000035                        531 _FindNotBlank_PARM_2:
      000035                        532 	.ds 1
                                    533 ;--------------------------------------------------------
                                    534 ; indirectly addressable internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area ISEG    (DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area IABS    (ABS,DATA)
                                    541 	.area IABS    (ABS,DATA)
                                    542 ;--------------------------------------------------------
                                    543 ; bit data
                                    544 ;--------------------------------------------------------
                                    545 	.area BSEG    (BIT)
                                    546 ;--------------------------------------------------------
                                    547 ; paged external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area PSEG    (PAG,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XSEG    (XDATA)
                                    554 ;--------------------------------------------------------
                                    555 ; absolute external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area XABS    (ABS,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; external initialized ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XISEG   (XDATA)
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT0 (CODE)
                                    564 	.area GSINIT1 (CODE)
                                    565 	.area GSINIT2 (CODE)
                                    566 	.area GSINIT3 (CODE)
                                    567 	.area GSINIT4 (CODE)
                                    568 	.area GSINIT5 (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 	.area GSFINAL (CODE)
                                    571 	.area CSEG    (CODE)
                                    572 ;--------------------------------------------------------
                                    573 ; global & static initialisations
                                    574 ;--------------------------------------------------------
                                    575 	.area HOME    (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; Home
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area HOME    (CODE)
                                    584 ;--------------------------------------------------------
                                    585 ; code
                                    586 ;--------------------------------------------------------
                                    587 	.area CSEG    (CODE)
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'ispReadFlash'
                                    590 ;------------------------------------------------------------
                                    591 ;address                   Allocated to registers r6 r7 
                                    592 ;------------------------------------------------------------
                                    593 ;	usbisp.c:10: uint8_t ispReadFlash(uint16_t address) {
                                    594 ;	-----------------------------------------
                                    595 ;	 function ispReadFlash
                                    596 ;	-----------------------------------------
      0009D6                        597 _ispReadFlash:
                           000007   598 	ar7 = 0x07
                           000006   599 	ar6 = 0x06
                           000005   600 	ar5 = 0x05
                           000004   601 	ar4 = 0x04
                           000003   602 	ar3 = 0x03
                           000002   603 	ar2 = 0x02
                           000001   604 	ar1 = 0x01
                           000000   605 	ar0 = 0x00
      0009D6 AE 82            [24]  606 	mov	r6,dpl
      0009D8 AF 83            [24]  607 	mov	r7,dph
                                    608 ;	usbisp.c:13: spi_send(0x20);
      0009DA 75 82 20         [24]  609 	mov	dpl,#0x20
      0009DD C0 07            [24]  610 	push	ar7
      0009DF C0 06            [24]  611 	push	ar6
      0009E1 12 09 CC         [24]  612 	lcall	_spi_send
      0009E4 D0 06            [24]  613 	pop	ar6
      0009E6 D0 07            [24]  614 	pop	ar7
                                    615 ;	usbisp.c:14: spi_send(address>>8);
      0009E8 8F 82            [24]  616 	mov	dpl,r7
      0009EA C0 07            [24]  617 	push	ar7
      0009EC C0 06            [24]  618 	push	ar6
      0009EE 12 09 CC         [24]  619 	lcall	_spi_send
      0009F1 D0 06            [24]  620 	pop	ar6
      0009F3 D0 07            [24]  621 	pop	ar7
                                    622 ;	usbisp.c:15: spi_send(address);
      0009F5 8E 82            [24]  623 	mov	dpl,r6
      0009F7 12 09 CC         [24]  624 	lcall	_spi_send
                                    625 ;	usbisp.c:17: return spi_send(0);
      0009FA 75 82 00         [24]  626 	mov	dpl,#0x00
                                    627 ;	usbisp.c:26: }
      0009FD 02 09 CC         [24]  628 	ljmp	_spi_send
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'ispReadAvrLo'
                                    631 ;------------------------------------------------------------
                                    632 ;addr                      Allocated to registers r6 r7 
                                    633 ;------------------------------------------------------------
                                    634 ;	usbisp.c:28: uint8_t ispReadAvrLo(uint16_t addr) {
                                    635 ;	-----------------------------------------
                                    636 ;	 function ispReadAvrLo
                                    637 ;	-----------------------------------------
      000A00                        638 _ispReadAvrLo:
      000A00 AE 82            [24]  639 	mov	r6,dpl
      000A02 AF 83            [24]  640 	mov	r7,dph
                                    641 ;	usbisp.c:29: spi_send(0x20);
      000A04 75 82 20         [24]  642 	mov	dpl,#0x20
      000A07 C0 07            [24]  643 	push	ar7
      000A09 C0 06            [24]  644 	push	ar6
      000A0B 12 09 CC         [24]  645 	lcall	_spi_send
      000A0E D0 06            [24]  646 	pop	ar6
      000A10 D0 07            [24]  647 	pop	ar7
                                    648 ;	usbisp.c:30: spi_send(addr>>8);
      000A12 8F 82            [24]  649 	mov	dpl,r7
      000A14 C0 07            [24]  650 	push	ar7
      000A16 C0 06            [24]  651 	push	ar6
      000A18 12 09 CC         [24]  652 	lcall	_spi_send
      000A1B D0 06            [24]  653 	pop	ar6
      000A1D D0 07            [24]  654 	pop	ar7
                                    655 ;	usbisp.c:31: spi_send(addr);
      000A1F 8E 82            [24]  656 	mov	dpl,r6
      000A21 12 09 CC         [24]  657 	lcall	_spi_send
                                    658 ;	usbisp.c:33: return spi_send(0);
      000A24 75 82 00         [24]  659 	mov	dpl,#0x00
                                    660 ;	usbisp.c:34: }
      000A27 02 09 CC         [24]  661 	ljmp	_spi_send
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'ispReadAvrHi'
                                    664 ;------------------------------------------------------------
                                    665 ;addr                      Allocated to registers r6 r7 
                                    666 ;------------------------------------------------------------
                                    667 ;	usbisp.c:36: uint8_t ispReadAvrHi(uint16_t addr) {
                                    668 ;	-----------------------------------------
                                    669 ;	 function ispReadAvrHi
                                    670 ;	-----------------------------------------
      000A2A                        671 _ispReadAvrHi:
      000A2A AE 82            [24]  672 	mov	r6,dpl
      000A2C AF 83            [24]  673 	mov	r7,dph
                                    674 ;	usbisp.c:37: spi_send(0x28);
      000A2E 75 82 28         [24]  675 	mov	dpl,#0x28
      000A31 C0 07            [24]  676 	push	ar7
      000A33 C0 06            [24]  677 	push	ar6
      000A35 12 09 CC         [24]  678 	lcall	_spi_send
      000A38 D0 06            [24]  679 	pop	ar6
      000A3A D0 07            [24]  680 	pop	ar7
                                    681 ;	usbisp.c:38: spi_send(addr>>8);
      000A3C 8F 82            [24]  682 	mov	dpl,r7
      000A3E C0 07            [24]  683 	push	ar7
      000A40 C0 06            [24]  684 	push	ar6
      000A42 12 09 CC         [24]  685 	lcall	_spi_send
      000A45 D0 06            [24]  686 	pop	ar6
      000A47 D0 07            [24]  687 	pop	ar7
                                    688 ;	usbisp.c:39: spi_send(addr);
      000A49 8E 82            [24]  689 	mov	dpl,r6
      000A4B 12 09 CC         [24]  690 	lcall	_spi_send
                                    691 ;	usbisp.c:41: return spi_send(0);
      000A4E 75 82 00         [24]  692 	mov	dpl,#0x00
                                    693 ;	usbisp.c:42: }
      000A51 02 09 CC         [24]  694 	ljmp	_spi_send
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'ispReadEeprom'
                                    697 ;------------------------------------------------------------
                                    698 ;address                   Allocated to registers r6 r7 
                                    699 ;------------------------------------------------------------
                                    700 ;	usbisp.c:44: uint8_t ispReadEeprom(uint16_t address) {
                                    701 ;	-----------------------------------------
                                    702 ;	 function ispReadEeprom
                                    703 ;	-----------------------------------------
      000A54                        704 _ispReadEeprom:
      000A54 AE 82            [24]  705 	mov	r6,dpl
      000A56 AF 83            [24]  706 	mov	r7,dph
                                    707 ;	usbisp.c:46: spi_send(0xA0);
      000A58 75 82 A0         [24]  708 	mov	dpl,#0xa0
      000A5B C0 07            [24]  709 	push	ar7
      000A5D C0 06            [24]  710 	push	ar6
      000A5F 12 09 CC         [24]  711 	lcall	_spi_send
      000A62 D0 06            [24]  712 	pop	ar6
      000A64 D0 07            [24]  713 	pop	ar7
                                    714 ;	usbisp.c:47: spi_send(address>>8);
      000A66 8F 82            [24]  715 	mov	dpl,r7
      000A68 C0 07            [24]  716 	push	ar7
      000A6A C0 06            [24]  717 	push	ar6
      000A6C 12 09 CC         [24]  718 	lcall	_spi_send
      000A6F D0 06            [24]  719 	pop	ar6
      000A71 D0 07            [24]  720 	pop	ar7
                                    721 ;	usbisp.c:48: spi_send(address);
      000A73 8E 82            [24]  722 	mov	dpl,r6
      000A75 12 09 CC         [24]  723 	lcall	_spi_send
                                    724 ;	usbisp.c:50: return spi_send(0);
      000A78 75 82 00         [24]  725 	mov	dpl,#0x00
                                    726 ;	usbisp.c:51: }
      000A7B 02 09 CC         [24]  727 	ljmp	_spi_send
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'ispWriteFlashByte'
                                    730 ;------------------------------------------------------------
                                    731 ;u8Data                    Allocated with name '_ispWriteFlashByte_PARM_2'
                                    732 ;addr                      Allocated to registers r6 r7 
                                    733 ;i                         Allocated to registers r7 
                                    734 ;u8Tmp                     Allocated to registers r4 
                                    735 ;------------------------------------------------------------
                                    736 ;	usbisp.c:53: void ispWriteFlashByte(uint16_t addr, uint8_t u8Data) {
                                    737 ;	-----------------------------------------
                                    738 ;	 function ispWriteFlashByte
                                    739 ;	-----------------------------------------
      000A7E                        740 _ispWriteFlashByte:
      000A7E AE 82            [24]  741 	mov	r6,dpl
      000A80 AF 83            [24]  742 	mov	r7,dph
                                    743 ;	usbisp.c:55: if(u8Data==0xff) {
      000A82 74 FF            [12]  744 	mov	a,#0xff
      000A84 B5 15 01         [24]  745 	cjne	a,_ispWriteFlashByte_PARM_2,00102$
                                    746 ;	usbisp.c:56: return;
      000A87 22               [24]  747 	ret
      000A88                        748 00102$:
                                    749 ;	usbisp.c:58: spi_send(0x40);
      000A88 75 82 40         [24]  750 	mov	dpl,#0x40
      000A8B C0 07            [24]  751 	push	ar7
      000A8D C0 06            [24]  752 	push	ar6
      000A8F 12 09 CC         [24]  753 	lcall	_spi_send
      000A92 D0 06            [24]  754 	pop	ar6
      000A94 D0 07            [24]  755 	pop	ar7
                                    756 ;	usbisp.c:59: spi_send(addr>>8);
      000A96 8F 05            [24]  757 	mov	ar5,r7
      000A98 8D 82            [24]  758 	mov	dpl,r5
      000A9A C0 07            [24]  759 	push	ar7
      000A9C C0 06            [24]  760 	push	ar6
      000A9E C0 05            [24]  761 	push	ar5
      000AA0 12 09 CC         [24]  762 	lcall	_spi_send
      000AA3 D0 05            [24]  763 	pop	ar5
      000AA5 D0 06            [24]  764 	pop	ar6
      000AA7 D0 07            [24]  765 	pop	ar7
                                    766 ;	usbisp.c:60: spi_send(addr);
      000AA9 8E 82            [24]  767 	mov	dpl,r6
      000AAB C0 06            [24]  768 	push	ar6
      000AAD C0 05            [24]  769 	push	ar5
      000AAF 12 09 CC         [24]  770 	lcall	_spi_send
      000AB2 D0 05            [24]  771 	pop	ar5
      000AB4 D0 06            [24]  772 	pop	ar6
                                    773 ;	usbisp.c:61: spi_send(u8Data);
      000AB6 85 15 82         [24]  774 	mov	dpl,_ispWriteFlashByte_PARM_2
      000AB9 C0 06            [24]  775 	push	ar6
      000ABB C0 05            [24]  776 	push	ar5
      000ABD 12 09 CC         [24]  777 	lcall	_spi_send
      000AC0 D0 05            [24]  778 	pop	ar5
      000AC2 D0 06            [24]  779 	pop	ar6
                                    780 ;	usbisp.c:62: for(i=0; i<50; ++i) {
      000AC4 7F 00            [12]  781 	mov	r7,#0x00
      000AC6                        782 00106$:
                                    783 ;	usbisp.c:65: spi_send(0x20);
      000AC6 75 82 20         [24]  784 	mov	dpl,#0x20
      000AC9 C0 07            [24]  785 	push	ar7
      000ACB C0 06            [24]  786 	push	ar6
      000ACD C0 05            [24]  787 	push	ar5
      000ACF 12 09 CC         [24]  788 	lcall	_spi_send
      000AD2 D0 05            [24]  789 	pop	ar5
                                    790 ;	usbisp.c:66: spi_send(addr>>8);
      000AD4 8D 82            [24]  791 	mov	dpl,r5
      000AD6 C0 05            [24]  792 	push	ar5
      000AD8 12 09 CC         [24]  793 	lcall	_spi_send
      000ADB D0 05            [24]  794 	pop	ar5
      000ADD D0 06            [24]  795 	pop	ar6
                                    796 ;	usbisp.c:67: spi_send(addr);
      000ADF 8E 82            [24]  797 	mov	dpl,r6
      000AE1 C0 06            [24]  798 	push	ar6
      000AE3 C0 05            [24]  799 	push	ar5
      000AE5 12 09 CC         [24]  800 	lcall	_spi_send
                                    801 ;	usbisp.c:68: u8Tmp=spi_send(0x00);
      000AE8 75 82 00         [24]  802 	mov	dpl,#0x00
      000AEB 12 09 CC         [24]  803 	lcall	_spi_send
      000AEE AC 82            [24]  804 	mov	r4,dpl
      000AF0 D0 05            [24]  805 	pop	ar5
      000AF2 D0 06            [24]  806 	pop	ar6
      000AF4 D0 07            [24]  807 	pop	ar7
                                    808 ;	usbisp.c:69: if(u8Tmp==u8Data) {
      000AF6 EC               [12]  809 	mov	a,r4
      000AF7 B5 15 01         [24]  810 	cjne	a,_ispWriteFlashByte_PARM_2,00125$
      000AFA 22               [24]  811 	ret
      000AFB                        812 00125$:
                                    813 ;	usbisp.c:62: for(i=0; i<50; ++i) {
      000AFB 0F               [12]  814 	inc	r7
      000AFC BF 32 00         [24]  815 	cjne	r7,#0x32,00126$
      000AFF                        816 00126$:
      000AFF 40 C5            [24]  817 	jc	00106$
                                    818 ;	usbisp.c:73: }
      000B01 22               [24]  819 	ret
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'ispWriteEeprom'
                                    822 ;------------------------------------------------------------
                                    823 ;u8Data                    Allocated with name '_ispWriteEeprom_PARM_2'
                                    824 ;addr                      Allocated to registers r6 r7 
                                    825 ;------------------------------------------------------------
                                    826 ;	usbisp.c:75: void ispWriteEeprom(uint16_t addr, uint8_t u8Data) {
                                    827 ;	-----------------------------------------
                                    828 ;	 function ispWriteEeprom
                                    829 ;	-----------------------------------------
      000B02                        830 _ispWriteEeprom:
      000B02 AE 82            [24]  831 	mov	r6,dpl
      000B04 AF 83            [24]  832 	mov	r7,dph
                                    833 ;	usbisp.c:76: spi_send(0xC0);
      000B06 75 82 C0         [24]  834 	mov	dpl,#0xc0
      000B09 C0 07            [24]  835 	push	ar7
      000B0B C0 06            [24]  836 	push	ar6
      000B0D 12 09 CC         [24]  837 	lcall	_spi_send
      000B10 D0 06            [24]  838 	pop	ar6
      000B12 D0 07            [24]  839 	pop	ar7
                                    840 ;	usbisp.c:77: spi_send(addr >> 8);
      000B14 8F 82            [24]  841 	mov	dpl,r7
      000B16 C0 07            [24]  842 	push	ar7
      000B18 C0 06            [24]  843 	push	ar6
      000B1A 12 09 CC         [24]  844 	lcall	_spi_send
      000B1D D0 06            [24]  845 	pop	ar6
      000B1F D0 07            [24]  846 	pop	ar7
                                    847 ;	usbisp.c:78: spi_send(addr);
      000B21 8E 82            [24]  848 	mov	dpl,r6
      000B23 12 09 CC         [24]  849 	lcall	_spi_send
                                    850 ;	usbisp.c:79: spi_send(u8Data);
      000B26 85 16 82         [24]  851 	mov	dpl,_ispWriteEeprom_PARM_2
      000B29 12 09 CC         [24]  852 	lcall	_spi_send
                                    853 ;	usbisp.c:82: Delay_Ms(10);
      000B2C 90 00 0A         [24]  854 	mov	dptr,#0x000a
                                    855 ;	usbisp.c:83: }
      000B2F 02 00 78         [24]  856 	ljmp	_Delay_Ms
                                    857 ;------------------------------------------------------------
                                    858 ;Allocation info for local variables in function 'FindNotBlank'
                                    859 ;------------------------------------------------------------
                                    860 ;u8Range                   Allocated with name '_FindNotBlank_PARM_2'
                                    861 ;pData                     Allocated to registers r5 r6 r7 
                                    862 ;i                         Allocated to registers r4 
                                    863 ;------------------------------------------------------------
                                    864 ;	usbisp.c:85: uint8_t FindNotBlank(uint8_t *pData, uint8_t u8Range) {
                                    865 ;	-----------------------------------------
                                    866 ;	 function FindNotBlank
                                    867 ;	-----------------------------------------
      000B32                        868 _FindNotBlank:
      000B32 AD 82            [24]  869 	mov	r5,dpl
      000B34 AE 83            [24]  870 	mov	r6,dph
      000B36 AF F0            [24]  871 	mov	r7,b
                                    872 ;	usbisp.c:87: for(i=0; i<u8Range; ++i) {
      000B38 7C 00            [12]  873 	mov	r4,#0x00
      000B3A 7B 00            [12]  874 	mov	r3,#0x00
      000B3C                        875 00105$:
      000B3C C3               [12]  876 	clr	c
      000B3D EB               [12]  877 	mov	a,r3
      000B3E 95 35            [12]  878 	subb	a,_FindNotBlank_PARM_2
      000B40 50 1F            [24]  879 	jnc	00103$
                                    880 ;	usbisp.c:88: if(pData[i]!=0xFF) {
      000B42 EB               [12]  881 	mov	a,r3
      000B43 2D               [12]  882 	add	a,r5
      000B44 F8               [12]  883 	mov	r0,a
      000B45 E4               [12]  884 	clr	a
      000B46 3E               [12]  885 	addc	a,r6
      000B47 F9               [12]  886 	mov	r1,a
      000B48 8F 02            [24]  887 	mov	ar2,r7
      000B4A 88 82            [24]  888 	mov	dpl,r0
      000B4C 89 83            [24]  889 	mov	dph,r1
      000B4E 8A F0            [24]  890 	mov	b,r2
      000B50 12 23 0C         [24]  891 	lcall	__gptrget
      000B53 F8               [12]  892 	mov	r0,a
      000B54 B8 FF 02         [24]  893 	cjne	r0,#0xff,00122$
      000B57 80 03            [24]  894 	sjmp	00106$
      000B59                        895 00122$:
                                    896 ;	usbisp.c:89: return i;
      000B59 8C 82            [24]  897 	mov	dpl,r4
      000B5B 22               [24]  898 	ret
      000B5C                        899 00106$:
                                    900 ;	usbisp.c:87: for(i=0; i<u8Range; ++i) {
      000B5C 0B               [12]  901 	inc	r3
      000B5D 8B 04            [24]  902 	mov	ar4,r3
      000B5F 80 DB            [24]  903 	sjmp	00105$
      000B61                        904 00103$:
                                    905 ;	usbisp.c:92: return 0xFF;
      000B61 75 82 FF         [24]  906 	mov	dpl,#0xff
                                    907 ;	usbisp.c:93: }
      000B64 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'ispWriteFlashPage'
                                    911 ;------------------------------------------------------------
                                    912 ;pData                     Allocated with name '_ispWriteFlashPage_PARM_2'
                                    913 ;pageSize                  Allocated with name '_ispWriteFlashPage_PARM_3'
                                    914 ;addr                      Allocated to registers r6 r7 
                                    915 ;i                         Allocated to registers r5 
                                    916 ;pos                       Allocated to registers r5 
                                    917 ;------------------------------------------------------------
                                    918 ;	usbisp.c:95: void ispWriteFlashPage(uint16_t addr, uint8_t *pData, uint16_t pageSize) {
                                    919 ;	-----------------------------------------
                                    920 ;	 function ispWriteFlashPage
                                    921 ;	-----------------------------------------
      000B65                        922 _ispWriteFlashPage:
      000B65 AE 82            [24]  923 	mov	r6,dpl
      000B67 AF 83            [24]  924 	mov	r7,dph
                                    925 ;	usbisp.c:98: for(i=0; i<pageSize; ++i) {
      000B69 7D 00            [12]  926 	mov	r5,#0x00
      000B6B                        927 00117$:
      000B6B 8D 03            [24]  928 	mov	ar3,r5
      000B6D 7C 00            [12]  929 	mov	r4,#0x00
      000B6F C3               [12]  930 	clr	c
      000B70 EB               [12]  931 	mov	a,r3
      000B71 95 1A            [12]  932 	subb	a,_ispWriteFlashPage_PARM_3
      000B73 EC               [12]  933 	mov	a,r4
      000B74 95 1B            [12]  934 	subb	a,(_ispWriteFlashPage_PARM_3 + 1)
      000B76 40 03            [24]  935 	jc	00156$
      000B78 02 0C 0D         [24]  936 	ljmp	00104$
      000B7B                        937 00156$:
                                    938 ;	usbisp.c:102: if(i%2) {
      000B7B 8D 03            [24]  939 	mov	ar3,r5
      000B7D 7C 00            [12]  940 	mov	r4,#0x00
      000B7F EB               [12]  941 	mov	a,r3
      000B80 30 E0 32         [24]  942 	jnb	acc.0,00102$
                                    943 ;	usbisp.c:104: spi_send(0x48);
      000B83 75 82 48         [24]  944 	mov	dpl,#0x48
      000B86 C0 07            [24]  945 	push	ar7
      000B88 C0 06            [24]  946 	push	ar6
      000B8A C0 05            [24]  947 	push	ar5
      000B8C C0 04            [24]  948 	push	ar4
      000B8E C0 03            [24]  949 	push	ar3
      000B90 12 09 CC         [24]  950 	lcall	_spi_send
                                    951 ;	usbisp.c:105: spi_send(0x00);
      000B93 75 82 00         [24]  952 	mov	dpl,#0x00
      000B96 12 09 CC         [24]  953 	lcall	_spi_send
      000B99 D0 03            [24]  954 	pop	ar3
      000B9B D0 04            [24]  955 	pop	ar4
                                    956 ;	usbisp.c:106: spi_send(i/2);
      000B9D 75 35 02         [24]  957 	mov	__divsint_PARM_2,#0x02
      000BA0 75 36 00         [24]  958 	mov	(__divsint_PARM_2 + 1),#0x00
      000BA3 8B 82            [24]  959 	mov	dpl,r3
      000BA5 8C 83            [24]  960 	mov	dph,r4
      000BA7 12 23 28         [24]  961 	lcall	__divsint
      000BAA 12 09 CC         [24]  962 	lcall	_spi_send
      000BAD D0 05            [24]  963 	pop	ar5
      000BAF D0 06            [24]  964 	pop	ar6
      000BB1 D0 07            [24]  965 	pop	ar7
      000BB3 80 30            [24]  966 	sjmp	00103$
      000BB5                        967 00102$:
                                    968 ;	usbisp.c:109: spi_send(0x40);
      000BB5 75 82 40         [24]  969 	mov	dpl,#0x40
      000BB8 C0 07            [24]  970 	push	ar7
      000BBA C0 06            [24]  971 	push	ar6
      000BBC C0 05            [24]  972 	push	ar5
      000BBE C0 04            [24]  973 	push	ar4
      000BC0 C0 03            [24]  974 	push	ar3
      000BC2 12 09 CC         [24]  975 	lcall	_spi_send
                                    976 ;	usbisp.c:110: spi_send(0x00);
      000BC5 75 82 00         [24]  977 	mov	dpl,#0x00
      000BC8 12 09 CC         [24]  978 	lcall	_spi_send
      000BCB D0 03            [24]  979 	pop	ar3
      000BCD D0 04            [24]  980 	pop	ar4
                                    981 ;	usbisp.c:111: spi_send(i/2);
      000BCF 75 35 02         [24]  982 	mov	__divsint_PARM_2,#0x02
      000BD2 75 36 00         [24]  983 	mov	(__divsint_PARM_2 + 1),#0x00
      000BD5 8B 82            [24]  984 	mov	dpl,r3
      000BD7 8C 83            [24]  985 	mov	dph,r4
      000BD9 12 23 28         [24]  986 	lcall	__divsint
      000BDC 12 09 CC         [24]  987 	lcall	_spi_send
      000BDF D0 05            [24]  988 	pop	ar5
      000BE1 D0 06            [24]  989 	pop	ar6
      000BE3 D0 07            [24]  990 	pop	ar7
      000BE5                        991 00103$:
                                    992 ;	usbisp.c:113: spi_send(pData[i]);
      000BE5 ED               [12]  993 	mov	a,r5
      000BE6 25 17            [12]  994 	add	a,_ispWriteFlashPage_PARM_2
      000BE8 FA               [12]  995 	mov	r2,a
      000BE9 E4               [12]  996 	clr	a
      000BEA 35 18            [12]  997 	addc	a,(_ispWriteFlashPage_PARM_2 + 1)
      000BEC FB               [12]  998 	mov	r3,a
      000BED AC 19            [24]  999 	mov	r4,(_ispWriteFlashPage_PARM_2 + 2)
      000BEF 8A 82            [24] 1000 	mov	dpl,r2
      000BF1 8B 83            [24] 1001 	mov	dph,r3
      000BF3 8C F0            [24] 1002 	mov	b,r4
      000BF5 12 23 0C         [24] 1003 	lcall	__gptrget
      000BF8 F5 82            [12] 1004 	mov	dpl,a
      000BFA C0 07            [24] 1005 	push	ar7
      000BFC C0 06            [24] 1006 	push	ar6
      000BFE C0 05            [24] 1007 	push	ar5
      000C00 12 09 CC         [24] 1008 	lcall	_spi_send
      000C03 D0 05            [24] 1009 	pop	ar5
      000C05 D0 06            [24] 1010 	pop	ar6
      000C07 D0 07            [24] 1011 	pop	ar7
                                   1012 ;	usbisp.c:98: for(i=0; i<pageSize; ++i) {
      000C09 0D               [12] 1013 	inc	r5
      000C0A 02 0B 6B         [24] 1014 	ljmp	00117$
      000C0D                       1015 00104$:
                                   1016 ;	usbisp.c:116: spi_send(0x4C);
      000C0D 75 82 4C         [24] 1017 	mov	dpl,#0x4c
      000C10 C0 07            [24] 1018 	push	ar7
      000C12 C0 06            [24] 1019 	push	ar6
      000C14 12 09 CC         [24] 1020 	lcall	_spi_send
      000C17 D0 06            [24] 1021 	pop	ar6
      000C19 D0 07            [24] 1022 	pop	ar7
                                   1023 ;	usbisp.c:117: spi_send(addr>>9);
      000C1B EF               [12] 1024 	mov	a,r7
      000C1C C3               [12] 1025 	clr	c
      000C1D 13               [12] 1026 	rrc	a
      000C1E F5 82            [12] 1027 	mov	dpl,a
      000C20 C0 07            [24] 1028 	push	ar7
      000C22 C0 06            [24] 1029 	push	ar6
      000C24 12 09 CC         [24] 1030 	lcall	_spi_send
      000C27 D0 06            [24] 1031 	pop	ar6
      000C29 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	usbisp.c:118: spi_send(addr>>1);
      000C2B 8E 04            [24] 1034 	mov	ar4,r6
      000C2D EF               [12] 1035 	mov	a,r7
      000C2E C3               [12] 1036 	clr	c
      000C2F 13               [12] 1037 	rrc	a
      000C30 CC               [12] 1038 	xch	a,r4
      000C31 13               [12] 1039 	rrc	a
      000C32 CC               [12] 1040 	xch	a,r4
      000C33 8C 82            [24] 1041 	mov	dpl,r4
      000C35 C0 07            [24] 1042 	push	ar7
      000C37 C0 06            [24] 1043 	push	ar6
      000C39 12 09 CC         [24] 1044 	lcall	_spi_send
                                   1045 ;	usbisp.c:119: spi_send(0x00);
      000C3C 75 82 00         [24] 1046 	mov	dpl,#0x00
      000C3F 12 09 CC         [24] 1047 	lcall	_spi_send
      000C42 D0 06            [24] 1048 	pop	ar6
      000C44 D0 07            [24] 1049 	pop	ar7
                                   1050 ;	usbisp.c:121: pos=FindNotBlank(pData, pageSize);
      000C46 85 1A 35         [24] 1051 	mov	_FindNotBlank_PARM_2,_ispWriteFlashPage_PARM_3
      000C49 85 17 82         [24] 1052 	mov	dpl,_ispWriteFlashPage_PARM_2
      000C4C 85 18 83         [24] 1053 	mov	dph,(_ispWriteFlashPage_PARM_2 + 1)
      000C4F 85 19 F0         [24] 1054 	mov	b,(_ispWriteFlashPage_PARM_2 + 2)
      000C52 C0 07            [24] 1055 	push	ar7
      000C54 C0 06            [24] 1056 	push	ar6
      000C56 12 0B 32         [24] 1057 	lcall	_FindNotBlank
      000C59 AD 82            [24] 1058 	mov	r5,dpl
      000C5B D0 06            [24] 1059 	pop	ar6
      000C5D D0 07            [24] 1060 	pop	ar7
                                   1061 ;	usbisp.c:122: if(pos!=0xFF) {
      000C5F BD FF 03         [24] 1062 	cjne	r5,#0xff,00158$
      000C62 02 0C E2         [24] 1063 	ljmp	00114$
      000C65                       1064 00158$:
                                   1065 ;	usbisp.c:124: for(i=0; i<10; ++i) {
      000C65 7C 00            [12] 1066 	mov	r4,#0x00
      000C67                       1067 00119$:
                                   1068 ;	usbisp.c:126: Delay_Ms(1);
      000C67 90 00 01         [24] 1069 	mov	dptr,#0x0001
      000C6A C0 07            [24] 1070 	push	ar7
      000C6C C0 06            [24] 1071 	push	ar6
      000C6E C0 05            [24] 1072 	push	ar5
      000C70 C0 04            [24] 1073 	push	ar4
      000C72 12 00 78         [24] 1074 	lcall	_Delay_Ms
      000C75 D0 04            [24] 1075 	pop	ar4
      000C77 D0 05            [24] 1076 	pop	ar5
      000C79 D0 06            [24] 1077 	pop	ar6
      000C7B D0 07            [24] 1078 	pop	ar7
                                   1079 ;	usbisp.c:127: if(pos%2) {
      000C7D 8D 02            [24] 1080 	mov	ar2,r5
      000C7F 7B 00            [12] 1081 	mov	r3,#0x00
      000C81 EA               [12] 1082 	mov	a,r2
      000C82 30 E0 2E         [24] 1083 	jnb	acc.0,00110$
                                   1084 ;	usbisp.c:129: if(ispReadAvrHi((addr+pos)/2)!=0xFF) {
      000C85 8A 00            [24] 1085 	mov	ar0,r2
      000C87 8B 01            [24] 1086 	mov	ar1,r3
      000C89 E8               [12] 1087 	mov	a,r0
      000C8A 2E               [12] 1088 	add	a,r6
      000C8B F8               [12] 1089 	mov	r0,a
      000C8C E9               [12] 1090 	mov	a,r1
      000C8D 3F               [12] 1091 	addc	a,r7
      000C8E 88 82            [24] 1092 	mov	dpl,r0
      000C90 C3               [12] 1093 	clr	c
      000C91 13               [12] 1094 	rrc	a
      000C92 C5 82            [12] 1095 	xch	a,dpl
      000C94 13               [12] 1096 	rrc	a
      000C95 C5 82            [12] 1097 	xch	a,dpl
      000C97 F5 83            [12] 1098 	mov	dph,a
      000C99 C0 07            [24] 1099 	push	ar7
      000C9B C0 06            [24] 1100 	push	ar6
      000C9D C0 05            [24] 1101 	push	ar5
      000C9F C0 04            [24] 1102 	push	ar4
      000CA1 12 0A 2A         [24] 1103 	lcall	_ispReadAvrHi
      000CA4 A9 82            [24] 1104 	mov	r1,dpl
      000CA6 D0 04            [24] 1105 	pop	ar4
      000CA8 D0 05            [24] 1106 	pop	ar5
      000CAA D0 06            [24] 1107 	pop	ar6
      000CAC D0 07            [24] 1108 	pop	ar7
                                   1109 ;	usbisp.c:130: break;
      000CAE B9 FF 37         [24] 1110 	cjne	r1,#0xff,00121$
      000CB1 80 28            [24] 1111 	sjmp	00120$
      000CB3                       1112 00110$:
                                   1113 ;	usbisp.c:134: if(ispReadAvrLo((addr+pos)/2)!=0xFF) {
      000CB3 EA               [12] 1114 	mov	a,r2
      000CB4 2E               [12] 1115 	add	a,r6
      000CB5 FA               [12] 1116 	mov	r2,a
      000CB6 EB               [12] 1117 	mov	a,r3
      000CB7 3F               [12] 1118 	addc	a,r7
      000CB8 8A 82            [24] 1119 	mov	dpl,r2
      000CBA C3               [12] 1120 	clr	c
      000CBB 13               [12] 1121 	rrc	a
      000CBC C5 82            [12] 1122 	xch	a,dpl
      000CBE 13               [12] 1123 	rrc	a
      000CBF C5 82            [12] 1124 	xch	a,dpl
      000CC1 F5 83            [12] 1125 	mov	dph,a
      000CC3 C0 07            [24] 1126 	push	ar7
      000CC5 C0 06            [24] 1127 	push	ar6
      000CC7 C0 05            [24] 1128 	push	ar5
      000CC9 C0 04            [24] 1129 	push	ar4
      000CCB 12 0A 00         [24] 1130 	lcall	_ispReadAvrLo
      000CCE AB 82            [24] 1131 	mov	r3,dpl
      000CD0 D0 04            [24] 1132 	pop	ar4
      000CD2 D0 05            [24] 1133 	pop	ar5
      000CD4 D0 06            [24] 1134 	pop	ar6
      000CD6 D0 07            [24] 1135 	pop	ar7
      000CD8 BB FF 0D         [24] 1136 	cjne	r3,#0xff,00121$
                                   1137 ;	usbisp.c:135: break;
      000CDB                       1138 00120$:
                                   1139 ;	usbisp.c:124: for(i=0; i<10; ++i) {
      000CDB 0C               [12] 1140 	inc	r4
      000CDC BC 0A 00         [24] 1141 	cjne	r4,#0x0a,00163$
      000CDF                       1142 00163$:
      000CDF 40 86            [24] 1143 	jc	00119$
      000CE1 22               [24] 1144 	ret
      000CE2                       1145 00114$:
                                   1146 ;	usbisp.c:147: Delay_Ms(10);
      000CE2 90 00 0A         [24] 1147 	mov	dptr,#0x000a
                                   1148 ;	usbisp.c:149: }
      000CE5 02 00 78         [24] 1149 	ljmp	_Delay_Ms
      000CE8                       1150 00121$:
      000CE8 22               [24] 1151 	ret
                                   1152 	.area CSEG    (CODE)
                                   1153 	.area CONST   (CODE)
                                   1154 	.area XINIT   (CODE)
                                   1155 	.area CABS    (ABS,CODE)
