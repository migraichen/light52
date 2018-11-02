                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _vTaskStartScheduler
                                     13 	.globl _vTaskDelay
                                     14 	.globl _xTaskCreate
                                     15 	.globl _putchar
                                     16 	.globl _getchar
                                     17 	.globl _printf
                                     18 	.globl _P3_7
                                     19 	.globl _P3_6
                                     20 	.globl _P3_5
                                     21 	.globl _P3_4
                                     22 	.globl _P3_3
                                     23 	.globl _P3_2
                                     24 	.globl _P3_1
                                     25 	.globl _P3_0
                                     26 	.globl _P2_7
                                     27 	.globl _P2_6
                                     28 	.globl _P2_5
                                     29 	.globl _P2_4
                                     30 	.globl _P2_3
                                     31 	.globl _P2_2
                                     32 	.globl _P2_1
                                     33 	.globl _P2_0
                                     34 	.globl _P1_7
                                     35 	.globl _P1_6
                                     36 	.globl _P1_5
                                     37 	.globl _P1_4
                                     38 	.globl _P1_3
                                     39 	.globl _P1_2
                                     40 	.globl _P1_1
                                     41 	.globl _P1_0
                                     42 	.globl _P0_7
                                     43 	.globl _P0_6
                                     44 	.globl _P0_5
                                     45 	.globl _P0_4
                                     46 	.globl _P0_3
                                     47 	.globl _P0_2
                                     48 	.globl _P0_1
                                     49 	.globl _P0_0
                                     50 	.globl _EIRQ7
                                     51 	.globl _EIRQ6
                                     52 	.globl _EIRQ5
                                     53 	.globl _EIRQ4
                                     54 	.globl _EIRQ3
                                     55 	.globl _EIRQ2
                                     56 	.globl _EIRQ1
                                     57 	.globl _EIRQ0
                                     58 	.globl _T0CEN
                                     59 	.globl _T0ARL
                                     60 	.globl _T0IRQ
                                     61 	.globl _RXRDY
                                     62 	.globl _TXRDY
                                     63 	.globl _RXIRQ
                                     64 	.globl _TXIRQ
                                     65 	.globl _EEX
                                     66 	.globl _ET0
                                     67 	.globl _ES
                                     68 	.globl _EA
                                     69 	.globl _P3
                                     70 	.globl _P2
                                     71 	.globl _P1
                                     72 	.globl _P0
                                     73 	.globl _EXTINT
                                     74 	.globl _T0CH
                                     75 	.globl _T0CL
                                     76 	.globl _T0H
                                     77 	.globl _T0L
                                     78 	.globl _TCON
                                     79 	.globl _SBPH
                                     80 	.globl _SBPL
                                     81 	.globl _SBUF
                                     82 	.globl _SCON
                                     83 	.globl _IE
                                     84 	.globl _DPL
                                     85 	.globl _DPH
                                     86 	.globl _SP
                                     87 	.globl _PSW
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _block
                                     91 	.globl _ATaskFunction
                                     92 	.globl _ATaskFunction2
                                     93 ;--------------------------------------------------------
                                     94 ; special function registers
                                     95 ;--------------------------------------------------------
                                     96 	.area RSEG    (ABS,DATA)
      000000                         97 	.org 0x0000
                           0000E0    98 G$ACC$0_0$0 == 0x00e0
                           0000E0    99 _ACC	=	0x00e0
                           0000F0   100 G$B$0_0$0 == 0x00f0
                           0000F0   101 _B	=	0x00f0
                           0000D0   102 G$PSW$0_0$0 == 0x00d0
                           0000D0   103 _PSW	=	0x00d0
                           000081   104 G$SP$0_0$0 == 0x0081
                           000081   105 _SP	=	0x0081
                           000083   106 G$DPH$0_0$0 == 0x0083
                           000083   107 _DPH	=	0x0083
                           000082   108 G$DPL$0_0$0 == 0x0082
                           000082   109 _DPL	=	0x0082
                           0000A8   110 G$IE$0_0$0 == 0x00a8
                           0000A8   111 _IE	=	0x00a8
                           000098   112 G$SCON$0_0$0 == 0x0098
                           000098   113 _SCON	=	0x0098
                           000099   114 G$SBUF$0_0$0 == 0x0099
                           000099   115 _SBUF	=	0x0099
                           00009A   116 G$SBPL$0_0$0 == 0x009a
                           00009A   117 _SBPL	=	0x009a
                           00009B   118 G$SBPH$0_0$0 == 0x009b
                           00009B   119 _SBPH	=	0x009b
                           000088   120 G$TCON$0_0$0 == 0x0088
                           000088   121 _TCON	=	0x0088
                           00008C   122 G$T0L$0_0$0 == 0x008c
                           00008C   123 _T0L	=	0x008c
                           00008D   124 G$T0H$0_0$0 == 0x008d
                           00008D   125 _T0H	=	0x008d
                           00008E   126 G$T0CL$0_0$0 == 0x008e
                           00008E   127 _T0CL	=	0x008e
                           00008F   128 G$T0CH$0_0$0 == 0x008f
                           00008F   129 _T0CH	=	0x008f
                           0000C0   130 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   131 _EXTINT	=	0x00c0
                           000080   132 G$P0$0_0$0 == 0x0080
                           000080   133 _P0	=	0x0080
                           000090   134 G$P1$0_0$0 == 0x0090
                           000090   135 _P1	=	0x0090
                           0000A0   136 G$P2$0_0$0 == 0x00a0
                           0000A0   137 _P2	=	0x00a0
                           0000B0   138 G$P3$0_0$0 == 0x00b0
                           0000B0   139 _P3	=	0x00b0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           0000AF   145 G$EA$0_0$0 == 0x00af
                           0000AF   146 _EA	=	0x00af
                           0000AC   147 G$ES$0_0$0 == 0x00ac
                           0000AC   148 _ES	=	0x00ac
                           0000A9   149 G$ET0$0_0$0 == 0x00a9
                           0000A9   150 _ET0	=	0x00a9
                           0000A8   151 G$EEX$0_0$0 == 0x00a8
                           0000A8   152 _EEX	=	0x00a8
                           00009C   153 G$TXIRQ$0_0$0 == 0x009c
                           00009C   154 _TXIRQ	=	0x009c
                           00009D   155 G$RXIRQ$0_0$0 == 0x009d
                           00009D   156 _RXIRQ	=	0x009d
                           00009C   157 G$TXRDY$0_0$0 == 0x009c
                           00009C   158 _TXRDY	=	0x009c
                           00009D   159 G$RXRDY$0_0$0 == 0x009d
                           00009D   160 _RXRDY	=	0x009d
                           000088   161 G$T0IRQ$0_0$0 == 0x0088
                           000088   162 _T0IRQ	=	0x0088
                           00008C   163 G$T0ARL$0_0$0 == 0x008c
                           00008C   164 _T0ARL	=	0x008c
                           00008D   165 G$T0CEN$0_0$0 == 0x008d
                           00008D   166 _T0CEN	=	0x008d
                           0000C0   167 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   168 _EIRQ0	=	0x00c0
                           0000C1   169 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   170 _EIRQ1	=	0x00c1
                           0000C2   171 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   172 _EIRQ2	=	0x00c2
                           0000C3   173 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   174 _EIRQ3	=	0x00c3
                           0000C4   175 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   176 _EIRQ4	=	0x00c4
                           0000C5   177 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   178 _EIRQ5	=	0x00c5
                           0000C6   179 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   180 _EIRQ6	=	0x00c6
                           0000C7   181 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   182 _EIRQ7	=	0x00c7
                           000080   183 G$P0_0$0_0$0 == 0x0080
                           000080   184 _P0_0	=	0x0080
                           000081   185 G$P0_1$0_0$0 == 0x0081
                           000081   186 _P0_1	=	0x0081
                           000082   187 G$P0_2$0_0$0 == 0x0082
                           000082   188 _P0_2	=	0x0082
                           000083   189 G$P0_3$0_0$0 == 0x0083
                           000083   190 _P0_3	=	0x0083
                           000084   191 G$P0_4$0_0$0 == 0x0084
                           000084   192 _P0_4	=	0x0084
                           000085   193 G$P0_5$0_0$0 == 0x0085
                           000085   194 _P0_5	=	0x0085
                           000086   195 G$P0_6$0_0$0 == 0x0086
                           000086   196 _P0_6	=	0x0086
                           000087   197 G$P0_7$0_0$0 == 0x0087
                           000087   198 _P0_7	=	0x0087
                           000090   199 G$P1_0$0_0$0 == 0x0090
                           000090   200 _P1_0	=	0x0090
                           000091   201 G$P1_1$0_0$0 == 0x0091
                           000091   202 _P1_1	=	0x0091
                           000092   203 G$P1_2$0_0$0 == 0x0092
                           000092   204 _P1_2	=	0x0092
                           000093   205 G$P1_3$0_0$0 == 0x0093
                           000093   206 _P1_3	=	0x0093
                           000094   207 G$P1_4$0_0$0 == 0x0094
                           000094   208 _P1_4	=	0x0094
                           000095   209 G$P1_5$0_0$0 == 0x0095
                           000095   210 _P1_5	=	0x0095
                           000096   211 G$P1_6$0_0$0 == 0x0096
                           000096   212 _P1_6	=	0x0096
                           000097   213 G$P1_7$0_0$0 == 0x0097
                           000097   214 _P1_7	=	0x0097
                           0000A0   215 G$P2_0$0_0$0 == 0x00a0
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 G$P2_1$0_0$0 == 0x00a1
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 G$P2_2$0_0$0 == 0x00a2
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 G$P2_3$0_0$0 == 0x00a3
                           0000A3   222 _P2_3	=	0x00a3
                           0000A4   223 G$P2_4$0_0$0 == 0x00a4
                           0000A4   224 _P2_4	=	0x00a4
                           0000A5   225 G$P2_5$0_0$0 == 0x00a5
                           0000A5   226 _P2_5	=	0x00a5
                           0000A6   227 G$P2_6$0_0$0 == 0x00a6
                           0000A6   228 _P2_6	=	0x00a6
                           0000A7   229 G$P2_7$0_0$0 == 0x00a7
                           0000A7   230 _P2_7	=	0x00a7
                           0000B0   231 G$P3_0$0_0$0 == 0x00b0
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 G$P3_1$0_0$0 == 0x00b1
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 G$P3_2$0_0$0 == 0x00b2
                           0000B2   236 _P3_2	=	0x00b2
                           0000B3   237 G$P3_3$0_0$0 == 0x00b3
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 G$P3_4$0_0$0 == 0x00b4
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 G$P3_5$0_0$0 == 0x00b5
                           0000B5   242 _P3_5	=	0x00b5
                           0000B6   243 G$P3_6$0_0$0 == 0x00b6
                           0000B6   244 _P3_6	=	0x00b6
                           0000B7   245 G$P3_7$0_0$0 == 0x00b7
                           0000B7   246 _P3_7	=	0x00b7
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable register banks
                                    249 ;--------------------------------------------------------
                                    250 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        251 	.ds 8
                                    252 ;--------------------------------------------------------
                                    253 ; internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area DSEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 ;--------------------------------------------------------
                                    260 ; Stack segment in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 	.area	SSEG
      000021                        263 __start__stack:
      000021                        264 	.ds	1
                                    265 
                                    266 ;--------------------------------------------------------
                                    267 ; indirectly addressable internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area ISEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area IABS    (ABS,DATA)
                                    274 	.area IABS    (ABS,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; bit data
                                    277 ;--------------------------------------------------------
                                    278 	.area BSEG    (BIT)
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                           000000   287 G$block$0_0$0==.
      000001                        288 _block::
      000001                        289 	.ds 2
                           000002   290 Lmain.main$pcTextForTask1$1_0$93==.
      000003                        291 _main_pcTextForTask1_65536_93:
      000003                        292 	.ds 3
                           000005   293 Lmain.main$pcTextForTask2$1_0$93==.
      000006                        294 _main_pcTextForTask2_65536_93:
      000006                        295 	.ds 3
                                    296 ;--------------------------------------------------------
                                    297 ; absolute external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XABS    (ABS,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external initialized ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT0 (CODE)
                                    305 	.area GSINIT1 (CODE)
                                    306 	.area GSINIT2 (CODE)
                                    307 	.area GSINIT3 (CODE)
                                    308 	.area GSINIT4 (CODE)
                                    309 	.area GSINIT5 (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area CSEG    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; interrupt vector 
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
      000000                        317 __interrupt_vect:
      000000 02 00 3F         [24]  318 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  319 	reti
      000004                        320 	.ds	7
      00000B 02 65 91         [24]  321 	ljmp	_vTimer0ISR
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.globl __sdcc_gsinit_startup
                                    330 	.globl __sdcc_program_startup
                                    331 	.globl __start__stack
                                    332 	.globl __mcs51_genRAMCLEAR
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'main'
                                    335 ;------------------------------------------------------------
                                    336 ;pcTextForTask1            Allocated with name '_main_pcTextForTask1_65536_93'
                                    337 ;pcTextForTask2            Allocated with name '_main_pcTextForTask2_65536_93'
                                    338 ;------------------------------------------------------------
                           000000   339 	G$main$0$0 ==.
                           000000   340 	C$main.c$46$1_0$93 ==.
                                    341 ;	src/main.c:46: static const char *pcTextForTask1 = "Task 1";
      000052 90 00 03         [24]  342 	mov	dptr,#_main_pcTextForTask1_65536_93
      000055 74 7A            [12]  343 	mov	a,#___str_0
      000057 F0               [24]  344 	movx	@dptr,a
      000058 74 70            [12]  345 	mov	a,#(___str_0 >> 8)
      00005A A3               [24]  346 	inc	dptr
      00005B F0               [24]  347 	movx	@dptr,a
      00005C 74 80            [12]  348 	mov	a,#0x80
      00005E A3               [24]  349 	inc	dptr
      00005F F0               [24]  350 	movx	@dptr,a
                           00000E   351 	C$main.c$47$1_0$93 ==.
                                    352 ;	src/main.c:47: static const char *pcTextForTask2 = "Task 2";
      000060 90 00 06         [24]  353 	mov	dptr,#_main_pcTextForTask2_65536_93
      000063 74 81            [12]  354 	mov	a,#___str_1
      000065 F0               [24]  355 	movx	@dptr,a
      000066 74 70            [12]  356 	mov	a,#(___str_1 >> 8)
      000068 A3               [24]  357 	inc	dptr
      000069 F0               [24]  358 	movx	@dptr,a
      00006A 74 80            [12]  359 	mov	a,#0x80
      00006C A3               [24]  360 	inc	dptr
      00006D F0               [24]  361 	movx	@dptr,a
                           00001C   362 	C$main.c$41$1_0$100 ==.
                                    363 ;	src/main.c:41: unsigned int block = 0;
      00006E 90 00 01         [24]  364 	mov	dptr,#_block
      000071 E4               [12]  365 	clr	a
      000072 F0               [24]  366 	movx	@dptr,a
      000073 A3               [24]  367 	inc	dptr
      000074 F0               [24]  368 	movx	@dptr,a
                                    369 	.area GSFINAL (CODE)
      0000C2 02 00 0E         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      00000E                        376 __sdcc_program_startup:
      00000E 02 00 C5         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'main'
                                    385 ;------------------------------------------------------------
                                    386 ;pcTextForTask1            Allocated with name '_main_pcTextForTask1_65536_93'
                                    387 ;pcTextForTask2            Allocated with name '_main_pcTextForTask2_65536_93'
                                    388 ;------------------------------------------------------------
                           000000   389 	G$main$0$0 ==.
                           000000   390 	C$main.c$43$0_0$93 ==.
                                    391 ;	src/main.c:43: int main( void )
                                    392 ;	-----------------------------------------
                                    393 ;	 function main
                                    394 ;	-----------------------------------------
      0000C5                        395 _main:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
                           000000   404 	C$main.c$50$1_0$93 ==.
                                    405 ;	src/main.c:50: prvSetupHardware();
      0000C5 12 01 83         [24]  406 	lcall	_prvSetupHardware
                           000003   407 	C$main.c$53$1_0$93 ==.
                                    408 ;	src/main.c:53: printf("\n\r");
      0000C8 74 88            [12]  409 	mov	a,#___str_2
      0000CA C0 E0            [24]  410 	push	acc
      0000CC 74 70            [12]  411 	mov	a,#(___str_2 >> 8)
      0000CE C0 E0            [24]  412 	push	acc
      0000D0 74 80            [12]  413 	mov	a,#0x80
      0000D2 C0 E0            [24]  414 	push	acc
      0000D4 12 67 C5         [24]  415 	lcall	_printf
      0000D7 15 81            [12]  416 	dec	sp
      0000D9 15 81            [12]  417 	dec	sp
      0000DB 15 81            [12]  418 	dec	sp
                           000018   419 	C$main.c$54$1_0$93 ==.
                                    420 ;	src/main.c:54: printf("Light52 project -- " __DATE__ " " __TIME__ "\n\n\r");
      0000DD 74 8B            [12]  421 	mov	a,#___str_3
      0000DF C0 E0            [24]  422 	push	acc
      0000E1 74 70            [12]  423 	mov	a,#(___str_3 >> 8)
      0000E3 C0 E0            [24]  424 	push	acc
      0000E5 74 80            [12]  425 	mov	a,#0x80
      0000E7 C0 E0            [24]  426 	push	acc
      0000E9 12 67 C5         [24]  427 	lcall	_printf
      0000EC 15 81            [12]  428 	dec	sp
      0000EE 15 81            [12]  429 	dec	sp
      0000F0 15 81            [12]  430 	dec	sp
                           00002D   431 	C$main.c$55$1_0$93 ==.
                                    432 ;	src/main.c:55: printf("FreeRTOS test.\n\r");
      0000F2 74 B6            [12]  433 	mov	a,#___str_4
      0000F4 C0 E0            [24]  434 	push	acc
      0000F6 74 70            [12]  435 	mov	a,#(___str_4 >> 8)
      0000F8 C0 E0            [24]  436 	push	acc
      0000FA 74 80            [12]  437 	mov	a,#0x80
      0000FC C0 E0            [24]  438 	push	acc
      0000FE 12 67 C5         [24]  439 	lcall	_printf
      000101 15 81            [12]  440 	dec	sp
      000103 15 81            [12]  441 	dec	sp
      000105 15 81            [12]  442 	dec	sp
                           000042   443 	C$main.c$57$1_0$93 ==.
                                    444 ;	src/main.c:57: xTaskCreate( ATaskFunction, "BlinkTask", 1000, (void*)pcTextForTask1, main_TASK_PRIORITY, NULL );
      000107 90 00 03         [24]  445 	mov	dptr,#_main_pcTextForTask1_65536_93
      00010A E0               [24]  446 	movx	a,@dptr
      00010B FD               [12]  447 	mov	r5,a
      00010C A3               [24]  448 	inc	dptr
      00010D E0               [24]  449 	movx	a,@dptr
      00010E FE               [12]  450 	mov	r6,a
      00010F A3               [24]  451 	inc	dptr
      000110 E0               [24]  452 	movx	a,@dptr
      000111 FF               [12]  453 	mov	r7,a
      000112 E4               [12]  454 	clr	a
      000113 C0 E0            [24]  455 	push	acc
      000115 C0 E0            [24]  456 	push	acc
      000117 C0 E0            [24]  457 	push	acc
      000119 04               [12]  458 	inc	a
      00011A C0 E0            [24]  459 	push	acc
      00011C C0 05            [24]  460 	push	ar5
      00011E C0 06            [24]  461 	push	ar6
      000120 C0 07            [24]  462 	push	ar7
      000122 74 E8            [12]  463 	mov	a,#0xe8
      000124 C0 E0            [24]  464 	push	acc
      000126 74 03            [12]  465 	mov	a,#0x03
      000128 C0 E0            [24]  466 	push	acc
      00012A 74 C7            [12]  467 	mov	a,#___str_5
      00012C C0 E0            [24]  468 	push	acc
      00012E 74 70            [12]  469 	mov	a,#(___str_5 >> 8)
      000130 C0 E0            [24]  470 	push	acc
      000132 74 80            [12]  471 	mov	a,#0x80
      000134 C0 E0            [24]  472 	push	acc
      000136 90 01 8A         [24]  473 	mov	dptr,#_ATaskFunction
      000139 12 02 80         [24]  474 	lcall	_xTaskCreate
      00013C E5 81            [12]  475 	mov	a,sp
      00013E 24 F4            [12]  476 	add	a,#0xf4
      000140 F5 81            [12]  477 	mov	sp,a
                           00007D   478 	C$main.c$58$1_0$93 ==.
                                    479 ;	src/main.c:58: xTaskCreate( ATaskFunction2, "RXTask", 1000, (void*)pcTextForTask2, main_TASK_PRIORITY, NULL );
      000142 90 00 06         [24]  480 	mov	dptr,#_main_pcTextForTask2_65536_93
      000145 E0               [24]  481 	movx	a,@dptr
      000146 FD               [12]  482 	mov	r5,a
      000147 A3               [24]  483 	inc	dptr
      000148 E0               [24]  484 	movx	a,@dptr
      000149 FE               [12]  485 	mov	r6,a
      00014A A3               [24]  486 	inc	dptr
      00014B E0               [24]  487 	movx	a,@dptr
      00014C FF               [12]  488 	mov	r7,a
      00014D E4               [12]  489 	clr	a
      00014E C0 E0            [24]  490 	push	acc
      000150 C0 E0            [24]  491 	push	acc
      000152 C0 E0            [24]  492 	push	acc
      000154 04               [12]  493 	inc	a
      000155 C0 E0            [24]  494 	push	acc
      000157 C0 05            [24]  495 	push	ar5
      000159 C0 06            [24]  496 	push	ar6
      00015B C0 07            [24]  497 	push	ar7
      00015D 74 E8            [12]  498 	mov	a,#0xe8
      00015F C0 E0            [24]  499 	push	acc
      000161 74 03            [12]  500 	mov	a,#0x03
      000163 C0 E0            [24]  501 	push	acc
      000165 74 D1            [12]  502 	mov	a,#___str_6
      000167 C0 E0            [24]  503 	push	acc
      000169 74 70            [12]  504 	mov	a,#(___str_6 >> 8)
      00016B C0 E0            [24]  505 	push	acc
      00016D 74 80            [12]  506 	mov	a,#0x80
      00016F C0 E0            [24]  507 	push	acc
      000171 90 02 16         [24]  508 	mov	dptr,#_ATaskFunction2
      000174 12 02 80         [24]  509 	lcall	_xTaskCreate
      000177 E5 81            [12]  510 	mov	a,sp
      000179 24 F4            [12]  511 	add	a,#0xf4
      00017B F5 81            [12]  512 	mov	sp,a
                           0000B8   513 	C$main.c$61$1_0$93 ==.
                                    514 ;	src/main.c:61: vTaskStartScheduler();
      00017D 12 08 ED         [24]  515 	lcall	_vTaskStartScheduler
                           0000BB   516 	C$main.c$65$1_0$93 ==.
                                    517 ;	src/main.c:65: while(1);
      000180                        518 00102$:
                           0000BB   519 	C$main.c$67$1_0$93 ==.
                                    520 ;	src/main.c:67: return 0;
      000180 80 FE            [24]  521 	sjmp	00102$
                           0000BD   522 	C$main.c$68$1_0$93 ==.
                                    523 ;	src/main.c:68: }
                           0000BD   524 	C$main.c$68$1_0$93 ==.
                           0000BD   525 	XG$main$0$0 ==.
      000182 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'prvSetupHardware'
                                    529 ;------------------------------------------------------------
                           0000BE   530 	Fmain$prvSetupHardware$0$0 ==.
                           0000BE   531 	C$main.c$70$1_0$95 ==.
                                    532 ;	src/main.c:70: static void prvSetupHardware( void )
                                    533 ;	-----------------------------------------
                                    534 ;	 function prvSetupHardware
                                    535 ;	-----------------------------------------
      000183                        536 _prvSetupHardware:
                           0000BE   537 	C$main.c$72$1_0$95 ==.
                                    538 ;	src/main.c:72: P0 = 0x00;
      000183 75 80 00         [24]  539 	mov	_P0,#0x00
                           0000C1   540 	C$main.c$73$1_0$95 ==.
                                    541 ;	src/main.c:73: P1 = 0x00;
      000186 75 90 00         [24]  542 	mov	_P1,#0x00
                           0000C4   543 	C$main.c$74$1_0$95 ==.
                                    544 ;	src/main.c:74: }
                           0000C4   545 	C$main.c$74$1_0$95 ==.
                           0000C4   546 	XFmain$prvSetupHardware$0$0 ==.
      000189 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'ATaskFunction'
                                    550 ;------------------------------------------------------------
                                    551 ;pvParameters              Allocated to registers r5 r6 r7 
                                    552 ;pcTaskName                Allocated to registers r5 r6 r7 
                                    553 ;------------------------------------------------------------
                           0000C5   554 	G$ATaskFunction$0$0 ==.
                           0000C5   555 	C$main.c$76$1_0$97 ==.
                                    556 ;	src/main.c:76: void ATaskFunction( void *pvParameters )
                                    557 ;	-----------------------------------------
                                    558 ;	 function ATaskFunction
                                    559 ;	-----------------------------------------
      00018A                        560 _ATaskFunction:
      00018A AD 82            [24]  561 	mov	r5,dpl
      00018C AE 83            [24]  562 	mov	r6,dph
      00018E AF F0            [24]  563 	mov	r7,b
                           0000CB   564 	C$main.c$80$1_0$97 ==.
                                    565 ;	src/main.c:80: pcTaskName = ( char * ) pvParameters;
                           0000CB   566 	C$main.c$82$1_0$97 ==.
                                    567 ;	src/main.c:82: while(block);
      000190                        568 00101$:
      000190 90 00 01         [24]  569 	mov	dptr,#_block
      000193 E0               [24]  570 	movx	a,@dptr
      000194 F5 F0            [12]  571 	mov	b,a
      000196 A3               [24]  572 	inc	dptr
      000197 E0               [24]  573 	movx	a,@dptr
      000198 45 F0            [12]  574 	orl	a,b
      00019A 70 F4            [24]  575 	jnz	00101$
                           0000D7   576 	C$main.c$83$1_0$97 ==.
                                    577 ;	src/main.c:83: block = 1;
      00019C 90 00 01         [24]  578 	mov	dptr,#_block
      00019F 74 01            [12]  579 	mov	a,#0x01
      0001A1 F0               [24]  580 	movx	@dptr,a
      0001A2 E4               [12]  581 	clr	a
      0001A3 A3               [24]  582 	inc	dptr
      0001A4 F0               [24]  583 	movx	@dptr,a
                           0000E0   584 	C$main.c$84$1_0$97 ==.
                                    585 ;	src/main.c:84: printf("Hallo von %s!\n\r", pcTaskName);
      0001A5 C0 05            [24]  586 	push	ar5
      0001A7 C0 06            [24]  587 	push	ar6
      0001A9 C0 07            [24]  588 	push	ar7
      0001AB 74 D8            [12]  589 	mov	a,#___str_7
      0001AD C0 E0            [24]  590 	push	acc
      0001AF 74 70            [12]  591 	mov	a,#(___str_7 >> 8)
      0001B1 C0 E0            [24]  592 	push	acc
      0001B3 74 80            [12]  593 	mov	a,#0x80
      0001B5 C0 E0            [24]  594 	push	acc
      0001B7 12 67 C5         [24]  595 	lcall	_printf
      0001BA E5 81            [12]  596 	mov	a,sp
      0001BC 24 FA            [12]  597 	add	a,#0xfa
      0001BE F5 81            [12]  598 	mov	sp,a
                           0000FB   599 	C$main.c$85$1_0$97 ==.
                                    600 ;	src/main.c:85: block = 0;
      0001C0 90 00 01         [24]  601 	mov	dptr,#_block
      0001C3 E4               [12]  602 	clr	a
      0001C4 F0               [24]  603 	movx	@dptr,a
      0001C5 A3               [24]  604 	inc	dptr
      0001C6 F0               [24]  605 	movx	@dptr,a
                           000102   606 	C$main.c$90$2_0$98 ==.
                                    607 ;	src/main.c:90: while(block);
      0001C7                        608 00104$:
      0001C7 90 00 01         [24]  609 	mov	dptr,#_block
      0001CA E0               [24]  610 	movx	a,@dptr
      0001CB F5 F0            [12]  611 	mov	b,a
      0001CD A3               [24]  612 	inc	dptr
      0001CE E0               [24]  613 	movx	a,@dptr
      0001CF 45 F0            [12]  614 	orl	a,b
      0001D1 70 F4            [24]  615 	jnz	00104$
                           00010E   616 	C$main.c$91$2_0$98 ==.
                                    617 ;	src/main.c:91: block = 1;
      0001D3 90 00 01         [24]  618 	mov	dptr,#_block
      0001D6 74 01            [12]  619 	mov	a,#0x01
      0001D8 F0               [24]  620 	movx	@dptr,a
      0001D9 E4               [12]  621 	clr	a
      0001DA A3               [24]  622 	inc	dptr
      0001DB F0               [24]  623 	movx	@dptr,a
                           000117   624 	C$main.c$92$2_0$98 ==.
                                    625 ;	src/main.c:92: printf("%c", 0x57);
      0001DC 74 57            [12]  626 	mov	a,#0x57
      0001DE C0 E0            [24]  627 	push	acc
      0001E0 E4               [12]  628 	clr	a
      0001E1 C0 E0            [24]  629 	push	acc
      0001E3 74 E8            [12]  630 	mov	a,#___str_8
      0001E5 C0 E0            [24]  631 	push	acc
      0001E7 74 70            [12]  632 	mov	a,#(___str_8 >> 8)
      0001E9 C0 E0            [24]  633 	push	acc
      0001EB 74 80            [12]  634 	mov	a,#0x80
      0001ED C0 E0            [24]  635 	push	acc
      0001EF 12 67 C5         [24]  636 	lcall	_printf
      0001F2 E5 81            [12]  637 	mov	a,sp
      0001F4 24 FB            [12]  638 	add	a,#0xfb
      0001F6 F5 81            [12]  639 	mov	sp,a
                           000133   640 	C$main.c$93$2_0$98 ==.
                                    641 ;	src/main.c:93: block = 0;
      0001F8 90 00 01         [24]  642 	mov	dptr,#_block
      0001FB E4               [12]  643 	clr	a
      0001FC F0               [24]  644 	movx	@dptr,a
      0001FD A3               [24]  645 	inc	dptr
      0001FE F0               [24]  646 	movx	@dptr,a
                           00013A   647 	C$main.c$94$2_0$98 ==.
                                    648 ;	src/main.c:94: P0 ^= 0xff;
      0001FF AE 80            [24]  649 	mov	r6,_P0
      000201 63 06 FF         [24]  650 	xrl	ar6,#0xff
      000204 8E 80            [24]  651 	mov	_P0,r6
                           000141   652 	C$main.c$95$2_0$98 ==.
                                    653 ;	src/main.c:95: P1 ^= 0xff;
      000206 AE 90            [24]  654 	mov	r6,_P1
      000208 63 06 FF         [24]  655 	xrl	ar6,#0xff
      00020B 8E 90            [24]  656 	mov	_P1,r6
                           000148   657 	C$main.c$96$2_0$98 ==.
                                    658 ;	src/main.c:96: vTaskDelay(100);
      00020D 90 00 64         [24]  659 	mov	dptr,#0x0064
      000210 12 08 BE         [24]  660 	lcall	_vTaskDelay
                           00014E   661 	C$main.c$99$1_0$97 ==.
                                    662 ;	src/main.c:99: vTaskDelete( NULL );
      000213 80 B2            [24]  663 	sjmp	00104$
                           000150   664 	C$main.c$100$1_0$97 ==.
                                    665 ;	src/main.c:100: }
                           000150   666 	C$main.c$100$1_0$97 ==.
                           000150   667 	XG$ATaskFunction$0$0 ==.
      000215 22               [24]  668 	ret
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'ATaskFunction2'
                                    671 ;------------------------------------------------------------
                                    672 ;pvParameters              Allocated to registers r5 r6 r7 
                                    673 ;pcTaskName                Allocated to registers r5 r6 r7 
                                    674 ;ucRx                      Allocated to registers r6 
                                    675 ;------------------------------------------------------------
                           000151   676 	G$ATaskFunction2$0$0 ==.
                           000151   677 	C$main.c$102$1_0$100 ==.
                                    678 ;	src/main.c:102: void ATaskFunction2( void *pvParameters )
                                    679 ;	-----------------------------------------
                                    680 ;	 function ATaskFunction2
                                    681 ;	-----------------------------------------
      000216                        682 _ATaskFunction2:
      000216 AD 82            [24]  683 	mov	r5,dpl
      000218 AE 83            [24]  684 	mov	r6,dph
      00021A AF F0            [24]  685 	mov	r7,b
                           000157   686 	C$main.c$108$1_0$100 ==.
                                    687 ;	src/main.c:108: pcTaskName = ( char * ) pvParameters;
                           000157   688 	C$main.c$110$1_0$100 ==.
                                    689 ;	src/main.c:110: while(block);
      00021C                        690 00101$:
      00021C 90 00 01         [24]  691 	mov	dptr,#_block
      00021F E0               [24]  692 	movx	a,@dptr
      000220 F5 F0            [12]  693 	mov	b,a
      000222 A3               [24]  694 	inc	dptr
      000223 E0               [24]  695 	movx	a,@dptr
      000224 45 F0            [12]  696 	orl	a,b
      000226 70 F4            [24]  697 	jnz	00101$
                           000163   698 	C$main.c$111$1_0$100 ==.
                                    699 ;	src/main.c:111: block = 1;
      000228 90 00 01         [24]  700 	mov	dptr,#_block
      00022B 74 01            [12]  701 	mov	a,#0x01
      00022D F0               [24]  702 	movx	@dptr,a
      00022E E4               [12]  703 	clr	a
      00022F A3               [24]  704 	inc	dptr
      000230 F0               [24]  705 	movx	@dptr,a
                           00016C   706 	C$main.c$112$1_0$100 ==.
                                    707 ;	src/main.c:112: printf("Hallo von %s!\n\r", pcTaskName);
      000231 C0 05            [24]  708 	push	ar5
      000233 C0 06            [24]  709 	push	ar6
      000235 C0 07            [24]  710 	push	ar7
      000237 74 D8            [12]  711 	mov	a,#___str_7
      000239 C0 E0            [24]  712 	push	acc
      00023B 74 70            [12]  713 	mov	a,#(___str_7 >> 8)
      00023D C0 E0            [24]  714 	push	acc
      00023F 74 80            [12]  715 	mov	a,#0x80
      000241 C0 E0            [24]  716 	push	acc
      000243 12 67 C5         [24]  717 	lcall	_printf
      000246 E5 81            [12]  718 	mov	a,sp
      000248 24 FA            [12]  719 	add	a,#0xfa
      00024A F5 81            [12]  720 	mov	sp,a
                           000187   721 	C$main.c$113$1_0$100 ==.
                                    722 ;	src/main.c:113: block = 0;
      00024C 90 00 01         [24]  723 	mov	dptr,#_block
      00024F E4               [12]  724 	clr	a
      000250 F0               [24]  725 	movx	@dptr,a
      000251 A3               [24]  726 	inc	dptr
      000252 F0               [24]  727 	movx	@dptr,a
                           00018E   728 	C$main.c$117$1_0$100 ==.
                                    729 ;	src/main.c:117: while(1)
      000253                        730 00108$:
                           00018E   731 	C$main.c$119$2_0$101 ==.
                                    732 ;	src/main.c:119: ucRx = getchar();
      000253 12 66 98         [24]  733 	lcall	_getchar
      000256 AE 82            [24]  734 	mov	r6,dpl
                           000193   735 	C$main.c$120$2_0$101 ==.
                                    736 ;	src/main.c:120: while(block);
      000258                        737 00104$:
      000258 90 00 01         [24]  738 	mov	dptr,#_block
      00025B E0               [24]  739 	movx	a,@dptr
      00025C F5 F0            [12]  740 	mov	b,a
      00025E A3               [24]  741 	inc	dptr
      00025F E0               [24]  742 	movx	a,@dptr
      000260 45 F0            [12]  743 	orl	a,b
      000262 70 F4            [24]  744 	jnz	00104$
                           00019F   745 	C$main.c$121$2_0$101 ==.
                                    746 ;	src/main.c:121: block = 1;
      000264 90 00 01         [24]  747 	mov	dptr,#_block
      000267 74 01            [12]  748 	mov	a,#0x01
      000269 F0               [24]  749 	movx	@dptr,a
      00026A E4               [12]  750 	clr	a
      00026B A3               [24]  751 	inc	dptr
      00026C F0               [24]  752 	movx	@dptr,a
                           0001A8   753 	C$main.c$122$2_0$101 ==.
                                    754 ;	src/main.c:122: putchar(ucRx);
      00026D 7F 00            [12]  755 	mov	r7,#0x00
      00026F 8E 82            [24]  756 	mov	dpl,r6
      000271 8F 83            [24]  757 	mov	dph,r7
      000273 12 66 87         [24]  758 	lcall	_putchar
                           0001B1   759 	C$main.c$123$2_0$101 ==.
                                    760 ;	src/main.c:123: block = 0;
      000276 90 00 01         [24]  761 	mov	dptr,#_block
      000279 E4               [12]  762 	clr	a
      00027A F0               [24]  763 	movx	@dptr,a
      00027B A3               [24]  764 	inc	dptr
      00027C F0               [24]  765 	movx	@dptr,a
                           0001B8   766 	C$main.c$126$1_0$100 ==.
                                    767 ;	src/main.c:126: vTaskDelete( NULL );
      00027D 80 D4            [24]  768 	sjmp	00108$
                           0001BA   769 	C$main.c$127$1_0$100 ==.
                                    770 ;	src/main.c:127: }
                           0001BA   771 	C$main.c$127$1_0$100 ==.
                           0001BA   772 	XG$ATaskFunction2$0$0 ==.
      00027F 22               [24]  773 	ret
                                    774 	.area CSEG    (CODE)
                                    775 	.area CONST   (CODE)
                           000000   776 Fmain$__str_0$0_0$0 == .
      00707A                        777 ___str_0:
      00707A 54 61 73 6B 20 31      778 	.ascii "Task 1"
      007080 00                     779 	.db 0x00
                           000007   780 Fmain$__str_1$0_0$0 == .
      007081                        781 ___str_1:
      007081 54 61 73 6B 20 32      782 	.ascii "Task 2"
      007087 00                     783 	.db 0x00
                           00000E   784 Fmain$__str_2$0_0$0 == .
      007088                        785 ___str_2:
      007088 0A                     786 	.db 0x0a
      007089 0D                     787 	.db 0x0d
      00708A 00                     788 	.db 0x00
                           000011   789 Fmain$__str_3$0_0$0 == .
      00708B                        790 ___str_3:
      00708B 4C 69 67 68 74 35 32   791 	.ascii "Light52 project -- Nov  2 2018 17:18:17"
             20 70 72 6F 6A 65 63
             74 20 2D 2D 20 4E 6F
             76 20 20 32 20 32 30
             31 38 20 31 37 3A 31
             38 3A 31 37
      0070B2 0A                     792 	.db 0x0a
      0070B3 0A                     793 	.db 0x0a
      0070B4 0D                     794 	.db 0x0d
      0070B5 00                     795 	.db 0x00
                           00003C   796 Fmain$__str_4$0_0$0 == .
      0070B6                        797 ___str_4:
      0070B6 46 72 65 65 52 54 4F   798 	.ascii "FreeRTOS test."
             53 20 74 65 73 74 2E
      0070C4 0A                     799 	.db 0x0a
      0070C5 0D                     800 	.db 0x0d
      0070C6 00                     801 	.db 0x00
                           00004D   802 Fmain$__str_5$0_0$0 == .
      0070C7                        803 ___str_5:
      0070C7 42 6C 69 6E 6B 54 61   804 	.ascii "BlinkTask"
             73 6B
      0070D0 00                     805 	.db 0x00
                           000057   806 Fmain$__str_6$0_0$0 == .
      0070D1                        807 ___str_6:
      0070D1 52 58 54 61 73 6B      808 	.ascii "RXTask"
      0070D7 00                     809 	.db 0x00
                           00005E   810 Fmain$__str_7$0_0$0 == .
      0070D8                        811 ___str_7:
      0070D8 48 61 6C 6C 6F 20 76   812 	.ascii "Hallo von %s!"
             6F 6E 20 25 73 21
      0070E5 0A                     813 	.db 0x0a
      0070E6 0D                     814 	.db 0x0d
      0070E7 00                     815 	.db 0x00
                           00006E   816 Fmain$__str_8$0_0$0 == .
      0070E8                        817 ___str_8:
      0070E8 25 63                  818 	.ascii "%c"
      0070EA 00                     819 	.db 0x00
                                    820 	.area CABS    (ABS,CODE)
