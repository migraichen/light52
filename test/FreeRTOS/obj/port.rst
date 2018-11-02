                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module port
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _vTaskSwitchContext
                                     14 	.globl _xTaskIncrementTick
                                     15 	.globl _P3_7
                                     16 	.globl _P3_6
                                     17 	.globl _P3_5
                                     18 	.globl _P3_4
                                     19 	.globl _P3_3
                                     20 	.globl _P3_2
                                     21 	.globl _P3_1
                                     22 	.globl _P3_0
                                     23 	.globl _P2_7
                                     24 	.globl _P2_6
                                     25 	.globl _P2_5
                                     26 	.globl _P2_4
                                     27 	.globl _P2_3
                                     28 	.globl _P2_2
                                     29 	.globl _P2_1
                                     30 	.globl _P2_0
                                     31 	.globl _P1_7
                                     32 	.globl _P1_6
                                     33 	.globl _P1_5
                                     34 	.globl _P1_4
                                     35 	.globl _P1_3
                                     36 	.globl _P1_2
                                     37 	.globl _P1_1
                                     38 	.globl _P1_0
                                     39 	.globl _P0_7
                                     40 	.globl _P0_6
                                     41 	.globl _P0_5
                                     42 	.globl _P0_4
                                     43 	.globl _P0_3
                                     44 	.globl _P0_2
                                     45 	.globl _P0_1
                                     46 	.globl _P0_0
                                     47 	.globl _EIRQ7
                                     48 	.globl _EIRQ6
                                     49 	.globl _EIRQ5
                                     50 	.globl _EIRQ4
                                     51 	.globl _EIRQ3
                                     52 	.globl _EIRQ2
                                     53 	.globl _EIRQ1
                                     54 	.globl _EIRQ0
                                     55 	.globl _T0CEN
                                     56 	.globl _T0ARL
                                     57 	.globl _T0IRQ
                                     58 	.globl _RXRDY
                                     59 	.globl _TXRDY
                                     60 	.globl _RXIRQ
                                     61 	.globl _TXIRQ
                                     62 	.globl _EEX
                                     63 	.globl _ET0
                                     64 	.globl _ES
                                     65 	.globl _EA
                                     66 	.globl _P3
                                     67 	.globl _P2
                                     68 	.globl _P1
                                     69 	.globl _P0
                                     70 	.globl _EXTINT
                                     71 	.globl _T0CH
                                     72 	.globl _T0CL
                                     73 	.globl _T0H
                                     74 	.globl _T0L
                                     75 	.globl _TCON
                                     76 	.globl _SBPH
                                     77 	.globl _SBPL
                                     78 	.globl _SBUF
                                     79 	.globl _SCON
                                     80 	.globl _IE
                                     81 	.globl _DPL
                                     82 	.globl _DPH
                                     83 	.globl _SP
                                     84 	.globl _PSW
                                     85 	.globl _B
                                     86 	.globl _ACC
                                     87 	.globl _pxPortInitialiseStack
                                     88 	.globl _xPortStartScheduler
                                     89 	.globl _vPortEndScheduler
                                     90 	.globl _vPortYield
                                     91 	.globl _vTimer0ISR
                                     92 ;--------------------------------------------------------
                                     93 ; special function registers
                                     94 ;--------------------------------------------------------
                                     95 	.area RSEG    (ABS,DATA)
      000000                         96 	.org 0x0000
                           0000E0    97 G$ACC$0_0$0 == 0x00e0
                           0000E0    98 _ACC	=	0x00e0
                           0000F0    99 G$B$0_0$0 == 0x00f0
                           0000F0   100 _B	=	0x00f0
                           0000D0   101 G$PSW$0_0$0 == 0x00d0
                           0000D0   102 _PSW	=	0x00d0
                           000081   103 G$SP$0_0$0 == 0x0081
                           000081   104 _SP	=	0x0081
                           000083   105 G$DPH$0_0$0 == 0x0083
                           000083   106 _DPH	=	0x0083
                           000082   107 G$DPL$0_0$0 == 0x0082
                           000082   108 _DPL	=	0x0082
                           0000A8   109 G$IE$0_0$0 == 0x00a8
                           0000A8   110 _IE	=	0x00a8
                           000098   111 G$SCON$0_0$0 == 0x0098
                           000098   112 _SCON	=	0x0098
                           000099   113 G$SBUF$0_0$0 == 0x0099
                           000099   114 _SBUF	=	0x0099
                           00009A   115 G$SBPL$0_0$0 == 0x009a
                           00009A   116 _SBPL	=	0x009a
                           00009B   117 G$SBPH$0_0$0 == 0x009b
                           00009B   118 _SBPH	=	0x009b
                           000088   119 G$TCON$0_0$0 == 0x0088
                           000088   120 _TCON	=	0x0088
                           00008C   121 G$T0L$0_0$0 == 0x008c
                           00008C   122 _T0L	=	0x008c
                           00008D   123 G$T0H$0_0$0 == 0x008d
                           00008D   124 _T0H	=	0x008d
                           00008E   125 G$T0CL$0_0$0 == 0x008e
                           00008E   126 _T0CL	=	0x008e
                           00008F   127 G$T0CH$0_0$0 == 0x008f
                           00008F   128 _T0CH	=	0x008f
                           0000C0   129 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   130 _EXTINT	=	0x00c0
                           000080   131 G$P0$0_0$0 == 0x0080
                           000080   132 _P0	=	0x0080
                           000090   133 G$P1$0_0$0 == 0x0090
                           000090   134 _P1	=	0x0090
                           0000A0   135 G$P2$0_0$0 == 0x00a0
                           0000A0   136 _P2	=	0x00a0
                           0000B0   137 G$P3$0_0$0 == 0x00b0
                           0000B0   138 _P3	=	0x00b0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           0000AF   144 G$EA$0_0$0 == 0x00af
                           0000AF   145 _EA	=	0x00af
                           0000AC   146 G$ES$0_0$0 == 0x00ac
                           0000AC   147 _ES	=	0x00ac
                           0000A9   148 G$ET0$0_0$0 == 0x00a9
                           0000A9   149 _ET0	=	0x00a9
                           0000A8   150 G$EEX$0_0$0 == 0x00a8
                           0000A8   151 _EEX	=	0x00a8
                           00009C   152 G$TXIRQ$0_0$0 == 0x009c
                           00009C   153 _TXIRQ	=	0x009c
                           00009D   154 G$RXIRQ$0_0$0 == 0x009d
                           00009D   155 _RXIRQ	=	0x009d
                           00009C   156 G$TXRDY$0_0$0 == 0x009c
                           00009C   157 _TXRDY	=	0x009c
                           00009D   158 G$RXRDY$0_0$0 == 0x009d
                           00009D   159 _RXRDY	=	0x009d
                           000088   160 G$T0IRQ$0_0$0 == 0x0088
                           000088   161 _T0IRQ	=	0x0088
                           00008C   162 G$T0ARL$0_0$0 == 0x008c
                           00008C   163 _T0ARL	=	0x008c
                           00008D   164 G$T0CEN$0_0$0 == 0x008d
                           00008D   165 _T0CEN	=	0x008d
                           0000C0   166 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   167 _EIRQ0	=	0x00c0
                           0000C1   168 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   169 _EIRQ1	=	0x00c1
                           0000C2   170 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   171 _EIRQ2	=	0x00c2
                           0000C3   172 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   173 _EIRQ3	=	0x00c3
                           0000C4   174 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   175 _EIRQ4	=	0x00c4
                           0000C5   176 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   177 _EIRQ5	=	0x00c5
                           0000C6   178 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   179 _EIRQ6	=	0x00c6
                           0000C7   180 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   181 _EIRQ7	=	0x00c7
                           000080   182 G$P0_0$0_0$0 == 0x0080
                           000080   183 _P0_0	=	0x0080
                           000081   184 G$P0_1$0_0$0 == 0x0081
                           000081   185 _P0_1	=	0x0081
                           000082   186 G$P0_2$0_0$0 == 0x0082
                           000082   187 _P0_2	=	0x0082
                           000083   188 G$P0_3$0_0$0 == 0x0083
                           000083   189 _P0_3	=	0x0083
                           000084   190 G$P0_4$0_0$0 == 0x0084
                           000084   191 _P0_4	=	0x0084
                           000085   192 G$P0_5$0_0$0 == 0x0085
                           000085   193 _P0_5	=	0x0085
                           000086   194 G$P0_6$0_0$0 == 0x0086
                           000086   195 _P0_6	=	0x0086
                           000087   196 G$P0_7$0_0$0 == 0x0087
                           000087   197 _P0_7	=	0x0087
                           000090   198 G$P1_0$0_0$0 == 0x0090
                           000090   199 _P1_0	=	0x0090
                           000091   200 G$P1_1$0_0$0 == 0x0091
                           000091   201 _P1_1	=	0x0091
                           000092   202 G$P1_2$0_0$0 == 0x0092
                           000092   203 _P1_2	=	0x0092
                           000093   204 G$P1_3$0_0$0 == 0x0093
                           000093   205 _P1_3	=	0x0093
                           000094   206 G$P1_4$0_0$0 == 0x0094
                           000094   207 _P1_4	=	0x0094
                           000095   208 G$P1_5$0_0$0 == 0x0095
                           000095   209 _P1_5	=	0x0095
                           000096   210 G$P1_6$0_0$0 == 0x0096
                           000096   211 _P1_6	=	0x0096
                           000097   212 G$P1_7$0_0$0 == 0x0097
                           000097   213 _P1_7	=	0x0097
                           0000A0   214 G$P2_0$0_0$0 == 0x00a0
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 G$P2_1$0_0$0 == 0x00a1
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 G$P2_2$0_0$0 == 0x00a2
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 G$P2_3$0_0$0 == 0x00a3
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 G$P2_4$0_0$0 == 0x00a4
                           0000A4   223 _P2_4	=	0x00a4
                           0000A5   224 G$P2_5$0_0$0 == 0x00a5
                           0000A5   225 _P2_5	=	0x00a5
                           0000A6   226 G$P2_6$0_0$0 == 0x00a6
                           0000A6   227 _P2_6	=	0x00a6
                           0000A7   228 G$P2_7$0_0$0 == 0x00a7
                           0000A7   229 _P2_7	=	0x00a7
                           0000B0   230 G$P3_0$0_0$0 == 0x00b0
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 G$P3_1$0_0$0 == 0x00b1
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 G$P3_2$0_0$0 == 0x00b2
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 G$P3_3$0_0$0 == 0x00b3
                           0000B3   237 _P3_3	=	0x00b3
                           0000B4   238 G$P3_4$0_0$0 == 0x00b4
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 G$P3_5$0_0$0 == 0x00b5
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 G$P3_6$0_0$0 == 0x00b6
                           0000B6   243 _P3_6	=	0x00b6
                           0000B7   244 G$P3_7$0_0$0 == 0x00b7
                           0000B7   245 _P3_7	=	0x00b7
                                    246 ;--------------------------------------------------------
                                    247 ; overlayable register banks
                                    248 ;--------------------------------------------------------
                                    249 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        250 	.ds 8
                                    251 ;--------------------------------------------------------
                                    252 ; internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area DSEG    (DATA)
                           000000   255 Fport$ucStackBytes$0_0$0==.
      000008                        256 _ucStackBytes:
      000008                        257 	.ds 1
                           000001   258 Fport$pxXRAMStack$0_0$0==.
      000009                        259 _pxXRAMStack:
      000009                        260 	.ds 2
                           000003   261 Fport$pxRAMStack$0_0$0==.
      00000B                        262 _pxRAMStack:
      00000B                        263 	.ds 1
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable items in internal ram 
                                    266 ;--------------------------------------------------------
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
                                    280 ;--------------------------------------------------------
                                    281 ; paged external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area PSEG    (PAG,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XSEG    (XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XABS    (ABS,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; external initialized ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'pxPortInitialiseStack'
                                    323 ;------------------------------------------------------------
                                    324 ;pxCode                    Allocated to stack - _bp -4
                                    325 ;pvParameters              Allocated to stack - _bp -7
                                    326 ;pxTopOfStack              Allocated to registers r5 r6 r7 
                                    327 ;ulAddress                 Allocated to registers r2 r3 r4 r7 
                                    328 ;pxStartOfStack            Allocated to stack - _bp +12
                                    329 ;sloc0                     Allocated to stack - _bp +1
                                    330 ;sloc1                     Allocated to stack - _bp +4
                                    331 ;sloc2                     Allocated to stack - _bp +8
                                    332 ;------------------------------------------------------------
                           000000   333 	G$pxPortInitialiseStack$0$0 ==.
                           000000   334 	C$port.c$213$0_0$98 ==.
                                    335 ;	src/FreeRTOS/portable/SDCC/light52/port.c:213: StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
                                    336 ;	-----------------------------------------
                                    337 ;	 function pxPortInitialiseStack
                                    338 ;	-----------------------------------------
      00624B                        339 _pxPortInitialiseStack:
                           000007   340 	ar7 = 0x07
                           000006   341 	ar6 = 0x06
                           000005   342 	ar5 = 0x05
                           000004   343 	ar4 = 0x04
                           000003   344 	ar3 = 0x03
                           000002   345 	ar2 = 0x02
                           000001   346 	ar1 = 0x01
                           000000   347 	ar0 = 0x00
      00624B C0 0C            [24]  348 	push	_bp
      00624D E5 81            [12]  349 	mov	a,sp
      00624F F5 0C            [12]  350 	mov	_bp,a
      006251 24 0E            [12]  351 	add	a,#0x0e
      006253 F5 81            [12]  352 	mov	sp,a
      006255 AD 82            [24]  353 	mov	r5,dpl
      006257 AE 83            [24]  354 	mov	r6,dph
      006259 AF F0            [24]  355 	mov	r7,b
                           000010   356 	C$port.c$219$1_0$98 ==.
                                    357 ;	src/FreeRTOS/portable/SDCC/light52/port.c:219: pxStartOfStack = pxTopOfStack;
      00625B E5 0C            [12]  358 	mov	a,_bp
      00625D 24 0C            [12]  359 	add	a,#0x0c
      00625F F8               [12]  360 	mov	r0,a
      006260 A6 05            [24]  361 	mov	@r0,ar5
      006262 08               [12]  362 	inc	r0
      006263 A6 06            [24]  363 	mov	@r0,ar6
      006265 08               [12]  364 	inc	r0
      006266 A6 07            [24]  365 	mov	@r0,ar7
                           00001D   366 	C$port.c$220$1_0$98 ==.
                                    367 ;	src/FreeRTOS/portable/SDCC/light52/port.c:220: pxTopOfStack++;
      006268 A8 0C            [24]  368 	mov	r0,_bp
      00626A 08               [12]  369 	inc	r0
      00626B 74 01            [12]  370 	mov	a,#0x01
      00626D 2D               [12]  371 	add	a,r5
      00626E F6               [12]  372 	mov	@r0,a
      00626F E4               [12]  373 	clr	a
      006270 3E               [12]  374 	addc	a,r6
      006271 08               [12]  375 	inc	r0
      006272 F6               [12]  376 	mov	@r0,a
      006273 08               [12]  377 	inc	r0
      006274 A6 07            [24]  378 	mov	@r0,ar7
                           00002B   379 	C$port.c$236$1_0$98 ==.
                                    380 ;	src/FreeRTOS/portable/SDCC/light52/port.c:236: ulAddress = ( uint32_t ) pxCode;
      006276 E5 0C            [12]  381 	mov	a,_bp
      006278 24 FC            [12]  382 	add	a,#0xfc
      00627A F8               [12]  383 	mov	r0,a
      00627B 86 02            [24]  384 	mov	ar2,@r0
      00627D 08               [12]  385 	inc	r0
      00627E 86 03            [24]  386 	mov	ar3,@r0
      006280 7C 80            [12]  387 	mov	r4,#0x80
      006282 7F 00            [12]  388 	mov	r7,#0x00
                           000039   389 	C$port.c$237$1_0$98 ==.
                                    390 ;	src/FreeRTOS/portable/SDCC/light52/port.c:237: *pxTopOfStack = ( StackType_t ) ulAddress;
      006284 8A 06            [24]  391 	mov	ar6,r2
      006286 A8 0C            [24]  392 	mov	r0,_bp
      006288 08               [12]  393 	inc	r0
      006289 86 82            [24]  394 	mov	dpl,@r0
      00628B 08               [12]  395 	inc	r0
      00628C 86 83            [24]  396 	mov	dph,@r0
      00628E 08               [12]  397 	inc	r0
      00628F 86 F0            [24]  398 	mov	b,@r0
      006291 EE               [12]  399 	mov	a,r6
      006292 12 66 A0         [24]  400 	lcall	__gptrput
                           00004A   401 	C$port.c$238$1_0$98 ==.
                                    402 ;	src/FreeRTOS/portable/SDCC/light52/port.c:238: ulAddress >>= 8;
      006295 E5 0C            [12]  403 	mov	a,_bp
      006297 24 04            [12]  404 	add	a,#0x04
      006299 F8               [12]  405 	mov	r0,a
      00629A A6 03            [24]  406 	mov	@r0,ar3
      00629C 08               [12]  407 	inc	r0
      00629D A6 04            [24]  408 	mov	@r0,ar4
      00629F 08               [12]  409 	inc	r0
      0062A0 A6 07            [24]  410 	mov	@r0,ar7
      0062A2 08               [12]  411 	inc	r0
      0062A3 76 00            [12]  412 	mov	@r0,#0x00
                           00005A   413 	C$port.c$239$1_0$98 ==.
                                    414 ;	src/FreeRTOS/portable/SDCC/light52/port.c:239: pxTopOfStack++;
      0062A5 A8 0C            [24]  415 	mov	r0,_bp
      0062A7 08               [12]  416 	inc	r0
      0062A8 74 01            [12]  417 	mov	a,#0x01
      0062AA 26               [12]  418 	add	a,@r0
      0062AB FD               [12]  419 	mov	r5,a
      0062AC E4               [12]  420 	clr	a
      0062AD 08               [12]  421 	inc	r0
      0062AE 36               [12]  422 	addc	a,@r0
      0062AF FE               [12]  423 	mov	r6,a
      0062B0 08               [12]  424 	inc	r0
      0062B1 86 07            [24]  425 	mov	ar7,@r0
                           000068   426 	C$port.c$240$1_0$98 ==.
                                    427 ;	src/FreeRTOS/portable/SDCC/light52/port.c:240: *pxTopOfStack = ( StackType_t ) ( ulAddress );
      0062B3 E5 0C            [12]  428 	mov	a,_bp
      0062B5 24 04            [12]  429 	add	a,#0x04
      0062B7 F8               [12]  430 	mov	r0,a
      0062B8 86 02            [24]  431 	mov	ar2,@r0
      0062BA 8D 82            [24]  432 	mov	dpl,r5
      0062BC 8E 83            [24]  433 	mov	dph,r6
      0062BE 8F F0            [24]  434 	mov	b,r7
      0062C0 EA               [12]  435 	mov	a,r2
      0062C1 12 66 A0         [24]  436 	lcall	__gptrput
                           000079   437 	C$port.c$241$1_0$98 ==.
                                    438 ;	src/FreeRTOS/portable/SDCC/light52/port.c:241: pxTopOfStack++;
      0062C4 0D               [12]  439 	inc	r5
      0062C5 BD 00 01         [24]  440 	cjne	r5,#0x00,00103$
      0062C8 0E               [12]  441 	inc	r6
      0062C9                        442 00103$:
                           00007E   443 	C$port.c$244$1_0$98 ==.
                                    444 ;	src/FreeRTOS/portable/SDCC/light52/port.c:244: *pxTopOfStack = 0xaa;	/* acc */
      0062C9 8D 82            [24]  445 	mov	dpl,r5
      0062CB 8E 83            [24]  446 	mov	dph,r6
      0062CD 8F F0            [24]  447 	mov	b,r7
      0062CF 74 AA            [12]  448 	mov	a,#0xaa
      0062D1 12 66 A0         [24]  449 	lcall	__gptrput
                           000089   450 	C$port.c$245$1_0$98 ==.
                                    451 ;	src/FreeRTOS/portable/SDCC/light52/port.c:245: pxTopOfStack++;	
      0062D4 0D               [12]  452 	inc	r5
      0062D5 BD 00 01         [24]  453 	cjne	r5,#0x00,00104$
      0062D8 0E               [12]  454 	inc	r6
      0062D9                        455 00104$:
                           00008E   456 	C$port.c$248$1_0$98 ==.
                                    457 ;	src/FreeRTOS/portable/SDCC/light52/port.c:248: *pxTopOfStack = portGLOBAL_INTERRUPT_BIT;
      0062D9 8D 82            [24]  458 	mov	dpl,r5
      0062DB 8E 83            [24]  459 	mov	dph,r6
      0062DD 8F F0            [24]  460 	mov	b,r7
      0062DF 74 80            [12]  461 	mov	a,#0x80
      0062E1 12 66 A0         [24]  462 	lcall	__gptrput
                           000099   463 	C$port.c$249$1_0$98 ==.
                                    464 ;	src/FreeRTOS/portable/SDCC/light52/port.c:249: pxTopOfStack++;
      0062E4 E5 0C            [12]  465 	mov	a,_bp
      0062E6 24 04            [12]  466 	add	a,#0x04
      0062E8 F8               [12]  467 	mov	r0,a
      0062E9 74 01            [12]  468 	mov	a,#0x01
      0062EB 2D               [12]  469 	add	a,r5
      0062EC F6               [12]  470 	mov	@r0,a
      0062ED E4               [12]  471 	clr	a
      0062EE 3E               [12]  472 	addc	a,r6
      0062EF 08               [12]  473 	inc	r0
      0062F0 F6               [12]  474 	mov	@r0,a
      0062F1 08               [12]  475 	inc	r0
      0062F2 A6 07            [24]  476 	mov	@r0,ar7
                           0000A9   477 	C$port.c$253$1_0$98 ==.
                                    478 ;	src/FreeRTOS/portable/SDCC/light52/port.c:253: ulAddress = ( uint32_t ) pvParameters;
      0062F4 E5 0C            [12]  479 	mov	a,_bp
      0062F6 24 F9            [12]  480 	add	a,#0xf9
      0062F8 F8               [12]  481 	mov	r0,a
      0062F9 86 02            [24]  482 	mov	ar2,@r0
      0062FB 08               [12]  483 	inc	r0
      0062FC 86 03            [24]  484 	mov	ar3,@r0
      0062FE 08               [12]  485 	inc	r0
      0062FF 86 04            [24]  486 	mov	ar4,@r0
      006301 7F 00            [12]  487 	mov	r7,#0x00
                           0000B8   488 	C$port.c$254$1_0$98 ==.
                                    489 ;	src/FreeRTOS/portable/SDCC/light52/port.c:254: *pxTopOfStack = ( StackType_t ) ulAddress;	/* DPL */
      006303 8A 06            [24]  490 	mov	ar6,r2
      006305 E5 0C            [12]  491 	mov	a,_bp
      006307 24 04            [12]  492 	add	a,#0x04
      006309 F8               [12]  493 	mov	r0,a
      00630A 86 82            [24]  494 	mov	dpl,@r0
      00630C 08               [12]  495 	inc	r0
      00630D 86 83            [24]  496 	mov	dph,@r0
      00630F 08               [12]  497 	inc	r0
      006310 86 F0            [24]  498 	mov	b,@r0
      006312 EE               [12]  499 	mov	a,r6
      006313 12 66 A0         [24]  500 	lcall	__gptrput
                           0000CB   501 	C$port.c$255$1_0$98 ==.
                                    502 ;	src/FreeRTOS/portable/SDCC/light52/port.c:255: ulAddress >>= 8;
      006316 E5 0C            [12]  503 	mov	a,_bp
      006318 24 08            [12]  504 	add	a,#0x08
      00631A F8               [12]  505 	mov	r0,a
      00631B A6 03            [24]  506 	mov	@r0,ar3
      00631D 08               [12]  507 	inc	r0
      00631E A6 04            [24]  508 	mov	@r0,ar4
      006320 08               [12]  509 	inc	r0
      006321 A6 07            [24]  510 	mov	@r0,ar7
      006323 08               [12]  511 	inc	r0
      006324 76 00            [12]  512 	mov	@r0,#0x00
                           0000DB   513 	C$port.c$256$1_0$98 ==.
                                    514 ;	src/FreeRTOS/portable/SDCC/light52/port.c:256: *pxTopOfStack++;
      006326 E5 0C            [12]  515 	mov	a,_bp
      006328 24 04            [12]  516 	add	a,#0x04
      00632A F8               [12]  517 	mov	r0,a
      00632B 74 01            [12]  518 	mov	a,#0x01
      00632D 26               [12]  519 	add	a,@r0
      00632E FD               [12]  520 	mov	r5,a
      00632F E4               [12]  521 	clr	a
      006330 08               [12]  522 	inc	r0
      006331 36               [12]  523 	addc	a,@r0
      006332 FE               [12]  524 	mov	r6,a
      006333 08               [12]  525 	inc	r0
      006334 86 07            [24]  526 	mov	ar7,@r0
                           0000EB   527 	C$port.c$257$1_0$98 ==.
                                    528 ;	src/FreeRTOS/portable/SDCC/light52/port.c:257: *pxTopOfStack = ( StackType_t ) ulAddress;	/* DPH */
      006336 E5 0C            [12]  529 	mov	a,_bp
      006338 24 08            [12]  530 	add	a,#0x08
      00633A F8               [12]  531 	mov	r0,a
      00633B 86 02            [24]  532 	mov	ar2,@r0
      00633D 8D 82            [24]  533 	mov	dpl,r5
      00633F 8E 83            [24]  534 	mov	dph,r6
      006341 8F F0            [24]  535 	mov	b,r7
      006343 EA               [12]  536 	mov	a,r2
      006344 12 66 A0         [24]  537 	lcall	__gptrput
                           0000FC   538 	C$port.c$258$1_0$98 ==.
                                    539 ;	src/FreeRTOS/portable/SDCC/light52/port.c:258: ulAddress >>= 8;
      006347 E5 0C            [12]  540 	mov	a,_bp
      006349 24 08            [12]  541 	add	a,#0x08
      00634B F8               [12]  542 	mov	r0,a
      00634C 08               [12]  543 	inc	r0
      00634D E6               [12]  544 	mov	a,@r0
      00634E 18               [12]  545 	dec	r0
      00634F F6               [12]  546 	mov	@r0,a
      006350 08               [12]  547 	inc	r0
      006351 08               [12]  548 	inc	r0
      006352 E6               [12]  549 	mov	a,@r0
      006353 18               [12]  550 	dec	r0
      006354 F6               [12]  551 	mov	@r0,a
      006355 08               [12]  552 	inc	r0
      006356 08               [12]  553 	inc	r0
      006357 E6               [12]  554 	mov	a,@r0
      006358 18               [12]  555 	dec	r0
      006359 F6               [12]  556 	mov	@r0,a
      00635A 08               [12]  557 	inc	r0
      00635B 76 00            [12]  558 	mov	@r0,#0x00
                           000112   559 	C$port.c$259$1_0$98 ==.
                                    560 ;	src/FreeRTOS/portable/SDCC/light52/port.c:259: pxTopOfStack++;
      00635D 0D               [12]  561 	inc	r5
      00635E BD 00 01         [24]  562 	cjne	r5,#0x00,00105$
      006361 0E               [12]  563 	inc	r6
      006362                        564 00105$:
                           000117   565 	C$port.c$260$1_0$98 ==.
                                    566 ;	src/FreeRTOS/portable/SDCC/light52/port.c:260: *pxTopOfStack = ( StackType_t ) ulAddress;	/* b */
      006362 E5 0C            [12]  567 	mov	a,_bp
      006364 24 08            [12]  568 	add	a,#0x08
      006366 F8               [12]  569 	mov	r0,a
      006367 86 02            [24]  570 	mov	ar2,@r0
      006369 8D 82            [24]  571 	mov	dpl,r5
      00636B 8E 83            [24]  572 	mov	dph,r6
      00636D 8F F0            [24]  573 	mov	b,r7
      00636F EA               [12]  574 	mov	a,r2
      006370 12 66 A0         [24]  575 	lcall	__gptrput
                           000128   576 	C$port.c$261$1_0$98 ==.
                                    577 ;	src/FreeRTOS/portable/SDCC/light52/port.c:261: pxTopOfStack++;
      006373 0D               [12]  578 	inc	r5
      006374 BD 00 01         [24]  579 	cjne	r5,#0x00,00106$
      006377 0E               [12]  580 	inc	r6
      006378                        581 00106$:
                           00012D   582 	C$port.c$264$1_0$98 ==.
                                    583 ;	src/FreeRTOS/portable/SDCC/light52/port.c:264: *pxTopOfStack = 0x02;	/* R2 */
      006378 8D 82            [24]  584 	mov	dpl,r5
      00637A 8E 83            [24]  585 	mov	dph,r6
      00637C 8F F0            [24]  586 	mov	b,r7
      00637E 74 02            [12]  587 	mov	a,#0x02
      006380 12 66 A0         [24]  588 	lcall	__gptrput
                           000138   589 	C$port.c$265$1_0$98 ==.
                                    590 ;	src/FreeRTOS/portable/SDCC/light52/port.c:265: pxTopOfStack++;
      006383 0D               [12]  591 	inc	r5
      006384 BD 00 01         [24]  592 	cjne	r5,#0x00,00107$
      006387 0E               [12]  593 	inc	r6
      006388                        594 00107$:
                           00013D   595 	C$port.c$266$1_0$98 ==.
                                    596 ;	src/FreeRTOS/portable/SDCC/light52/port.c:266: *pxTopOfStack = 0x03;	/* R3 */
      006388 8D 82            [24]  597 	mov	dpl,r5
      00638A 8E 83            [24]  598 	mov	dph,r6
      00638C 8F F0            [24]  599 	mov	b,r7
      00638E 74 03            [12]  600 	mov	a,#0x03
      006390 12 66 A0         [24]  601 	lcall	__gptrput
                           000148   602 	C$port.c$267$1_0$98 ==.
                                    603 ;	src/FreeRTOS/portable/SDCC/light52/port.c:267: pxTopOfStack++;
      006393 0D               [12]  604 	inc	r5
      006394 BD 00 01         [24]  605 	cjne	r5,#0x00,00108$
      006397 0E               [12]  606 	inc	r6
      006398                        607 00108$:
                           00014D   608 	C$port.c$268$1_0$98 ==.
                                    609 ;	src/FreeRTOS/portable/SDCC/light52/port.c:268: *pxTopOfStack = 0x04;	/* R4 */
      006398 8D 82            [24]  610 	mov	dpl,r5
      00639A 8E 83            [24]  611 	mov	dph,r6
      00639C 8F F0            [24]  612 	mov	b,r7
      00639E 74 04            [12]  613 	mov	a,#0x04
      0063A0 12 66 A0         [24]  614 	lcall	__gptrput
                           000158   615 	C$port.c$269$1_0$98 ==.
                                    616 ;	src/FreeRTOS/portable/SDCC/light52/port.c:269: pxTopOfStack++;
      0063A3 0D               [12]  617 	inc	r5
      0063A4 BD 00 01         [24]  618 	cjne	r5,#0x00,00109$
      0063A7 0E               [12]  619 	inc	r6
      0063A8                        620 00109$:
                           00015D   621 	C$port.c$270$1_0$98 ==.
                                    622 ;	src/FreeRTOS/portable/SDCC/light52/port.c:270: *pxTopOfStack = 0x05;	/* R5 */
      0063A8 8D 82            [24]  623 	mov	dpl,r5
      0063AA 8E 83            [24]  624 	mov	dph,r6
      0063AC 8F F0            [24]  625 	mov	b,r7
      0063AE 74 05            [12]  626 	mov	a,#0x05
      0063B0 12 66 A0         [24]  627 	lcall	__gptrput
                           000168   628 	C$port.c$271$1_0$98 ==.
                                    629 ;	src/FreeRTOS/portable/SDCC/light52/port.c:271: pxTopOfStack++;
      0063B3 0D               [12]  630 	inc	r5
      0063B4 BD 00 01         [24]  631 	cjne	r5,#0x00,00110$
      0063B7 0E               [12]  632 	inc	r6
      0063B8                        633 00110$:
                           00016D   634 	C$port.c$272$1_0$98 ==.
                                    635 ;	src/FreeRTOS/portable/SDCC/light52/port.c:272: *pxTopOfStack = 0x06;	/* R6 */
      0063B8 8D 82            [24]  636 	mov	dpl,r5
      0063BA 8E 83            [24]  637 	mov	dph,r6
      0063BC 8F F0            [24]  638 	mov	b,r7
      0063BE 74 06            [12]  639 	mov	a,#0x06
      0063C0 12 66 A0         [24]  640 	lcall	__gptrput
                           000178   641 	C$port.c$273$1_0$98 ==.
                                    642 ;	src/FreeRTOS/portable/SDCC/light52/port.c:273: pxTopOfStack++;
      0063C3 0D               [12]  643 	inc	r5
      0063C4 BD 00 01         [24]  644 	cjne	r5,#0x00,00111$
      0063C7 0E               [12]  645 	inc	r6
      0063C8                        646 00111$:
                           00017D   647 	C$port.c$274$1_0$98 ==.
                                    648 ;	src/FreeRTOS/portable/SDCC/light52/port.c:274: *pxTopOfStack = 0x07;	/* R7 */
      0063C8 8D 82            [24]  649 	mov	dpl,r5
      0063CA 8E 83            [24]  650 	mov	dph,r6
      0063CC 8F F0            [24]  651 	mov	b,r7
      0063CE 74 07            [12]  652 	mov	a,#0x07
      0063D0 12 66 A0         [24]  653 	lcall	__gptrput
                           000188   654 	C$port.c$275$1_0$98 ==.
                                    655 ;	src/FreeRTOS/portable/SDCC/light52/port.c:275: pxTopOfStack++;
      0063D3 0D               [12]  656 	inc	r5
      0063D4 BD 00 01         [24]  657 	cjne	r5,#0x00,00112$
      0063D7 0E               [12]  658 	inc	r6
      0063D8                        659 00112$:
                           00018D   660 	C$port.c$276$1_0$98 ==.
                                    661 ;	src/FreeRTOS/portable/SDCC/light52/port.c:276: *pxTopOfStack = 0x00;	/* R0 */
      0063D8 8D 82            [24]  662 	mov	dpl,r5
      0063DA 8E 83            [24]  663 	mov	dph,r6
      0063DC 8F F0            [24]  664 	mov	b,r7
      0063DE E4               [12]  665 	clr	a
      0063DF 12 66 A0         [24]  666 	lcall	__gptrput
                           000197   667 	C$port.c$277$1_0$98 ==.
                                    668 ;	src/FreeRTOS/portable/SDCC/light52/port.c:277: pxTopOfStack++;
      0063E2 0D               [12]  669 	inc	r5
      0063E3 BD 00 01         [24]  670 	cjne	r5,#0x00,00113$
      0063E6 0E               [12]  671 	inc	r6
      0063E7                        672 00113$:
                           00019C   673 	C$port.c$278$1_0$98 ==.
                                    674 ;	src/FreeRTOS/portable/SDCC/light52/port.c:278: *pxTopOfStack = 0x01;	/* R1 */
      0063E7 8D 82            [24]  675 	mov	dpl,r5
      0063E9 8E 83            [24]  676 	mov	dph,r6
      0063EB 8F F0            [24]  677 	mov	b,r7
      0063ED 74 01            [12]  678 	mov	a,#0x01
      0063EF 12 66 A0         [24]  679 	lcall	__gptrput
                           0001A7   680 	C$port.c$279$1_0$98 ==.
                                    681 ;	src/FreeRTOS/portable/SDCC/light52/port.c:279: pxTopOfStack++;
      0063F2 0D               [12]  682 	inc	r5
      0063F3 BD 00 01         [24]  683 	cjne	r5,#0x00,00114$
      0063F6 0E               [12]  684 	inc	r6
      0063F7                        685 00114$:
                           0001AC   686 	C$port.c$280$1_0$98 ==.
                                    687 ;	src/FreeRTOS/portable/SDCC/light52/port.c:280: *pxTopOfStack = 0x00;	/* PSW */
      0063F7 8D 82            [24]  688 	mov	dpl,r5
      0063F9 8E 83            [24]  689 	mov	dph,r6
      0063FB 8F F0            [24]  690 	mov	b,r7
      0063FD E4               [12]  691 	clr	a
      0063FE 12 66 A0         [24]  692 	lcall	__gptrput
                           0001B6   693 	C$port.c$281$1_0$98 ==.
                                    694 ;	src/FreeRTOS/portable/SDCC/light52/port.c:281: pxTopOfStack++;
      006401 0D               [12]  695 	inc	r5
      006402 BD 00 01         [24]  696 	cjne	r5,#0x00,00115$
      006405 0E               [12]  697 	inc	r6
      006406                        698 00115$:
                           0001BB   699 	C$port.c$282$1_0$98 ==.
                                    700 ;	src/FreeRTOS/portable/SDCC/light52/port.c:282: *pxTopOfStack = 0xbb;	/* BP */
      006406 8D 82            [24]  701 	mov	dpl,r5
      006408 8E 83            [24]  702 	mov	dph,r6
      00640A 8F F0            [24]  703 	mov	b,r7
      00640C 74 BB            [12]  704 	mov	a,#0xbb
      00640E 12 66 A0         [24]  705 	lcall	__gptrput
                           0001C6   706 	C$port.c$288$1_0$98 ==.
                                    707 ;	src/FreeRTOS/portable/SDCC/light52/port.c:288: *pxStartOfStack = ( StackType_t ) ( pxTopOfStack - pxStartOfStack );
      006411 E5 0C            [12]  708 	mov	a,_bp
      006413 24 0C            [12]  709 	add	a,#0x0c
      006415 F8               [12]  710 	mov	r0,a
      006416 ED               [12]  711 	mov	a,r5
      006417 C3               [12]  712 	clr	c
      006418 96               [12]  713 	subb	a,@r0
      006419 FD               [12]  714 	mov	r5,a
      00641A EE               [12]  715 	mov	a,r6
      00641B 08               [12]  716 	inc	r0
      00641C 96               [12]  717 	subb	a,@r0
      00641D E5 0C            [12]  718 	mov	a,_bp
      00641F 24 0C            [12]  719 	add	a,#0x0c
      006421 F8               [12]  720 	mov	r0,a
      006422 86 82            [24]  721 	mov	dpl,@r0
      006424 08               [12]  722 	inc	r0
      006425 86 83            [24]  723 	mov	dph,@r0
      006427 08               [12]  724 	inc	r0
      006428 86 F0            [24]  725 	mov	b,@r0
      00642A ED               [12]  726 	mov	a,r5
      00642B 12 66 A0         [24]  727 	lcall	__gptrput
                           0001E3   728 	C$port.c$292$1_0$98 ==.
                                    729 ;	src/FreeRTOS/portable/SDCC/light52/port.c:292: return pxStartOfStack;
      00642E E5 0C            [12]  730 	mov	a,_bp
      006430 24 0C            [12]  731 	add	a,#0x0c
      006432 F8               [12]  732 	mov	r0,a
      006433 86 82            [24]  733 	mov	dpl,@r0
      006435 08               [12]  734 	inc	r0
      006436 86 83            [24]  735 	mov	dph,@r0
      006438 08               [12]  736 	inc	r0
      006439 86 F0            [24]  737 	mov	b,@r0
                           0001F0   738 	C$port.c$293$1_0$98 ==.
                                    739 ;	src/FreeRTOS/portable/SDCC/light52/port.c:293: }
      00643B 85 0C 81         [24]  740 	mov	sp,_bp
      00643E D0 0C            [24]  741 	pop	_bp
                           0001F5   742 	C$port.c$293$1_0$98 ==.
                           0001F5   743 	XG$pxPortInitialiseStack$0$0 ==.
      006440 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'xPortStartScheduler'
                                    747 ;------------------------------------------------------------
                           0001F6   748 	G$xPortStartScheduler$0$0 ==.
                           0001F6   749 	C$port.c$299$1_0$100 ==.
                                    750 ;	src/FreeRTOS/portable/SDCC/light52/port.c:299: BaseType_t xPortStartScheduler( void )
                                    751 ;	-----------------------------------------
                                    752 ;	 function xPortStartScheduler
                                    753 ;	-----------------------------------------
      006441                        754 _xPortStartScheduler:
                           0001F6   755 	C$port.c$302$1_0$100 ==.
                                    756 ;	src/FreeRTOS/portable/SDCC/light52/port.c:302: prvSetupTimerInterrupt();	
      006441 12 66 76         [24]  757 	lcall	_prvSetupTimerInterrupt
                           0001F9   758 	C$port.c$306$2_0$101 ==.
                                    759 ;	src/FreeRTOS/portable/SDCC/light52/port.c:306: portCOPY_XRAM_TO_STACK();
      006444 90 00 09         [24]  760 	mov	dptr,#_pxCurrentTCB
      006447 E0               [24]  761 	movx	a,@dptr
      006448 FD               [12]  762 	mov	r5,a
      006449 A3               [24]  763 	inc	dptr
      00644A E0               [24]  764 	movx	a,@dptr
      00644B FE               [12]  765 	mov	r6,a
      00644C A3               [24]  766 	inc	dptr
      00644D E0               [24]  767 	movx	a,@dptr
      00644E FF               [12]  768 	mov	r7,a
      00644F 8D 82            [24]  769 	mov	dpl,r5
      006451 8E 83            [24]  770 	mov	dph,r6
      006453 8F F0            [24]  771 	mov	b,r7
      006455 12 70 5A         [24]  772 	lcall	__gptrget
      006458 F5 09            [12]  773 	mov	_pxXRAMStack,a
      00645A A3               [24]  774 	inc	dptr
      00645B 12 70 5A         [24]  775 	lcall	__gptrget
      00645E F5 0A            [12]  776 	mov	(_pxXRAMStack + 1),a
      006460 75 0B 0D         [24]  777 	mov	_pxRAMStack,#0x0d
      006463 85 09 82         [24]  778 	mov	dpl,_pxXRAMStack
      006466 85 0A 83         [24]  779 	mov	dph,(_pxXRAMStack + 1)
      006469 E0               [24]  780 	movx	a,@dptr
      00646A F5 08            [12]  781 	mov	_ucStackBytes,a
      00646C                        782 00101$:
      00646C 05 09            [12]  783 	inc	_pxXRAMStack
      00646E E4               [12]  784 	clr	a
      00646F B5 09 02         [24]  785 	cjne	a,_pxXRAMStack,00114$
      006472 05 0A            [12]  786 	inc	(_pxXRAMStack + 1)
      006474                        787 00114$:
      006474 05 0B            [12]  788 	inc	_pxRAMStack
      006476 A9 0B            [24]  789 	mov	r1,_pxRAMStack
      006478 85 09 82         [24]  790 	mov	dpl,_pxXRAMStack
      00647B 85 0A 83         [24]  791 	mov	dph,(_pxXRAMStack + 1)
      00647E E0               [24]  792 	movx	a,@dptr
      00647F FF               [12]  793 	mov	r7,a
      006480 F7               [12]  794 	mov	@r1,a
      006481 D5 08 E8         [24]  795 	djnz	_ucStackBytes,00101$
      006484 85 0B 81         [24]  796 	mov	_SP,_pxRAMStack
                           00023C   797 	C$port.c$307$2_0$103 ==.
                                    798 ;	src/FreeRTOS/portable/SDCC/light52/port.c:307: portRESTORE_CONTEXT();
      006487 D0 0C            [24]  799 	pop _bp 
      006489 D0 D0            [24]  800 	pop PSW 
      00648B D0 01            [24]  801 	pop ar1 
      00648D D0 00            [24]  802 	pop ar0 
      00648F D0 07            [24]  803 	pop ar7 
      006491 D0 06            [24]  804 	pop ar6 
      006493 D0 05            [24]  805 	pop ar5 
      006495 D0 04            [24]  806 	pop ar4 
      006497 D0 03            [24]  807 	pop ar3 
      006499 D0 02            [24]  808 	pop ar2 
      00649B D0 F0            [24]  809 	pop b 
      00649D D0 83            [24]  810 	pop DPH 
      00649F D0 82            [24]  811 	pop DPL 
      0064A1 D0 E0            [24]  812 	pop ACC 
      0064A3 20 E7 05         [24]  813 	JB ACC.7,0098$ 
      0064A6 C2 AF            [12]  814 	CLR IE.7 
      0064A8 02 64 AD         [24]  815 	LJMP 0099$ 
      0064AB                        816 	 0098$:
      0064AB D2 AF            [12]  817 	SETB IE.7 
      0064AD                        818 	 0099$:
      0064AD D0 E0            [24]  819 	pop ACC 
      0064AF 32               [24]  820 	reti 
                           000265   821 	C$port.c$310$1_0$100 ==.
                                    822 ;	src/FreeRTOS/portable/SDCC/light52/port.c:310: return pdTRUE;
      0064B0 75 82 01         [24]  823 	mov	dpl,#0x01
                           000268   824 	C$port.c$311$1_0$100 ==.
                                    825 ;	src/FreeRTOS/portable/SDCC/light52/port.c:311: }
                           000268   826 	C$port.c$311$1_0$100 ==.
                           000268   827 	XG$xPortStartScheduler$0$0 ==.
      0064B3 22               [24]  828 	ret
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'vPortEndScheduler'
                                    831 ;------------------------------------------------------------
                           000269   832 	G$vPortEndScheduler$0$0 ==.
                           000269   833 	C$port.c$314$1_0$106 ==.
                                    834 ;	src/FreeRTOS/portable/SDCC/light52/port.c:314: void vPortEndScheduler( void )
                                    835 ;	-----------------------------------------
                                    836 ;	 function vPortEndScheduler
                                    837 ;	-----------------------------------------
      0064B4                        838 _vPortEndScheduler:
                           000269   839 	C$port.c$317$1_0$106 ==.
                                    840 ;	src/FreeRTOS/portable/SDCC/light52/port.c:317: }
                           000269   841 	C$port.c$317$1_0$106 ==.
                           000269   842 	XG$vPortEndScheduler$0$0 ==.
      0064B4 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'vPortYield'
                                    846 ;------------------------------------------------------------
                           00026A   847 	G$vPortYield$0$0 ==.
                           00026A   848 	C$port.c$324$1_0$108 ==.
                                    849 ;	src/FreeRTOS/portable/SDCC/light52/port.c:324: void vPortYield( void ) __naked
                                    850 ;	-----------------------------------------
                                    851 ;	 function vPortYield
                                    852 ;	-----------------------------------------
      0064B5                        853 _vPortYield:
                                    854 ;	naked function: no prologue.
                           00026A   855 	C$port.c$332$2_0$109 ==.
                                    856 ;	src/FreeRTOS/portable/SDCC/light52/port.c:332: portSAVE_CONTEXT();
      0064B5 C0 E0            [24]  857 	push ACC 
      0064B7 C0 A8            [24]  858 	push IE 
      0064B9 C2 AF            [12]  859 	clr _EA 
      0064BB C0 82            [24]  860 	push DPL 
      0064BD C0 83            [24]  861 	push DPH 
      0064BF C0 F0            [24]  862 	push b 
      0064C1 C0 02            [24]  863 	push ar2 
      0064C3 C0 03            [24]  864 	push ar3 
      0064C5 C0 04            [24]  865 	push ar4 
      0064C7 C0 05            [24]  866 	push ar5 
      0064C9 C0 06            [24]  867 	push ar6 
      0064CB C0 07            [24]  868 	push ar7 
      0064CD C0 00            [24]  869 	push ar0 
      0064CF C0 01            [24]  870 	push ar1 
      0064D1 C0 D0            [24]  871 	push PSW 
      0064D3 75 D0 00         [24]  872 	mov	_PSW,#0x00
      0064D6 C0 0C            [24]  873 	push _bp 
                           00028D   874 	C$port.c$333$2_0$110 ==.
                                    875 ;	src/FreeRTOS/portable/SDCC/light52/port.c:333: portCOPY_STACK_TO_XRAM();
      0064D8 90 00 09         [24]  876 	mov	dptr,#_pxCurrentTCB
      0064DB E0               [24]  877 	movx	a,@dptr
      0064DC FD               [12]  878 	mov	r5,a
      0064DD A3               [24]  879 	inc	dptr
      0064DE E0               [24]  880 	movx	a,@dptr
      0064DF FE               [12]  881 	mov	r6,a
      0064E0 A3               [24]  882 	inc	dptr
      0064E1 E0               [24]  883 	movx	a,@dptr
      0064E2 FF               [12]  884 	mov	r7,a
      0064E3 8D 82            [24]  885 	mov	dpl,r5
      0064E5 8E 83            [24]  886 	mov	dph,r6
      0064E7 8F F0            [24]  887 	mov	b,r7
      0064E9 12 70 5A         [24]  888 	lcall	__gptrget
      0064EC F5 09            [12]  889 	mov	_pxXRAMStack,a
      0064EE A3               [24]  890 	inc	dptr
      0064EF 12 70 5A         [24]  891 	lcall	__gptrget
      0064F2 F5 0A            [12]  892 	mov	(_pxXRAMStack + 1),a
      0064F4 75 0B 0E         [24]  893 	mov	_pxRAMStack,#0x0e
      0064F7 E5 81            [12]  894 	mov	a,_SP
      0064F9 FF               [12]  895 	mov	r7,a
      0064FA 24 F3            [12]  896 	add	a,#0xf3
      0064FC F5 08            [12]  897 	mov	_ucStackBytes,a
      0064FE 85 09 82         [24]  898 	mov	dpl,_pxXRAMStack
      006501 85 0A 83         [24]  899 	mov	dph,(_pxXRAMStack + 1)
      006504 F0               [24]  900 	movx	@dptr,a
      006505                        901 00101$:
      006505 E5 08            [12]  902 	mov	a,_ucStackBytes
      006507 60 19            [24]  903 	jz	00103$
      006509 05 09            [12]  904 	inc	_pxXRAMStack
      00650B E4               [12]  905 	clr	a
      00650C B5 09 02         [24]  906 	cjne	a,_pxXRAMStack,00126$
      00650F 05 0A            [12]  907 	inc	(_pxXRAMStack + 1)
      006511                        908 00126$:
      006511 85 09 82         [24]  909 	mov	dpl,_pxXRAMStack
      006514 85 0A 83         [24]  910 	mov	dph,(_pxXRAMStack + 1)
      006517 A9 0B            [24]  911 	mov	r1,_pxRAMStack
      006519 E7               [12]  912 	mov	a,@r1
      00651A FF               [12]  913 	mov	r7,a
      00651B F0               [24]  914 	movx	@dptr,a
      00651C 05 0B            [12]  915 	inc	_pxRAMStack
      00651E 15 08            [12]  916 	dec	_ucStackBytes
      006520 80 E3            [24]  917 	sjmp	00101$
      006522                        918 00103$:
                           0002D7   919 	C$port.c$336$1_0$108 ==.
                                    920 ;	src/FreeRTOS/portable/SDCC/light52/port.c:336: vTaskSwitchContext();
      006522 12 0E 13         [24]  921 	lcall	_vTaskSwitchContext
                           0002DA   922 	C$port.c$340$2_0$112 ==.
                                    923 ;	src/FreeRTOS/portable/SDCC/light52/port.c:340: portCOPY_XRAM_TO_STACK();
      006525 90 00 09         [24]  924 	mov	dptr,#_pxCurrentTCB
      006528 E0               [24]  925 	movx	a,@dptr
      006529 FD               [12]  926 	mov	r5,a
      00652A A3               [24]  927 	inc	dptr
      00652B E0               [24]  928 	movx	a,@dptr
      00652C FE               [12]  929 	mov	r6,a
      00652D A3               [24]  930 	inc	dptr
      00652E E0               [24]  931 	movx	a,@dptr
      00652F FF               [12]  932 	mov	r7,a
      006530 8D 82            [24]  933 	mov	dpl,r5
      006532 8E 83            [24]  934 	mov	dph,r6
      006534 8F F0            [24]  935 	mov	b,r7
      006536 12 70 5A         [24]  936 	lcall	__gptrget
      006539 F5 09            [12]  937 	mov	_pxXRAMStack,a
      00653B A3               [24]  938 	inc	dptr
      00653C 12 70 5A         [24]  939 	lcall	__gptrget
      00653F F5 0A            [12]  940 	mov	(_pxXRAMStack + 1),a
      006541 75 0B 0D         [24]  941 	mov	_pxRAMStack,#0x0d
      006544 85 09 82         [24]  942 	mov	dpl,_pxXRAMStack
      006547 85 0A 83         [24]  943 	mov	dph,(_pxXRAMStack + 1)
      00654A E0               [24]  944 	movx	a,@dptr
      00654B F5 08            [12]  945 	mov	_ucStackBytes,a
      00654D                        946 00104$:
      00654D 05 09            [12]  947 	inc	_pxXRAMStack
      00654F E4               [12]  948 	clr	a
      006550 B5 09 02         [24]  949 	cjne	a,_pxXRAMStack,00127$
      006553 05 0A            [12]  950 	inc	(_pxXRAMStack + 1)
      006555                        951 00127$:
      006555 05 0B            [12]  952 	inc	_pxRAMStack
      006557 A9 0B            [24]  953 	mov	r1,_pxRAMStack
      006559 85 09 82         [24]  954 	mov	dpl,_pxXRAMStack
      00655C 85 0A 83         [24]  955 	mov	dph,(_pxXRAMStack + 1)
      00655F E0               [24]  956 	movx	a,@dptr
      006560 FF               [12]  957 	mov	r7,a
      006561 F7               [12]  958 	mov	@r1,a
      006562 D5 08 E8         [24]  959 	djnz	_ucStackBytes,00104$
      006565 85 0B 81         [24]  960 	mov	_SP,_pxRAMStack
                           00031D   961 	C$port.c$341$2_0$114 ==.
                                    962 ;	src/FreeRTOS/portable/SDCC/light52/port.c:341: portRESTORE_CONTEXT();
      006568 D0 0C            [24]  963 	pop _bp 
      00656A D0 D0            [24]  964 	pop PSW 
      00656C D0 01            [24]  965 	pop ar1 
      00656E D0 00            [24]  966 	pop ar0 
      006570 D0 07            [24]  967 	pop ar7 
      006572 D0 06            [24]  968 	pop ar6 
      006574 D0 05            [24]  969 	pop ar5 
      006576 D0 04            [24]  970 	pop ar4 
      006578 D0 03            [24]  971 	pop ar3 
      00657A D0 02            [24]  972 	pop ar2 
      00657C D0 F0            [24]  973 	pop b 
      00657E D0 83            [24]  974 	pop DPH 
      006580 D0 82            [24]  975 	pop DPL 
      006582 D0 E0            [24]  976 	pop ACC 
      006584 20 E7 05         [24]  977 	JB ACC.7,0098$ 
      006587 C2 AF            [12]  978 	CLR IE.7 
      006589 02 65 8E         [24]  979 	LJMP 0099$ 
      00658C                        980 	 0098$:
      00658C D2 AF            [12]  981 	SETB IE.7 
      00658E                        982 	 0099$:
      00658E D0 E0            [24]  983 	pop ACC 
      006590 32               [24]  984 	reti 
                           000346   985 	C$port.c$342$2_0$108 ==.
                                    986 ;	src/FreeRTOS/portable/SDCC/light52/port.c:342: }
                                    987 ;	naked function: no epilogue.
                           000346   988 	C$port.c$342$2_0$108 ==.
                           000346   989 	XG$vPortYield$0$0 ==.
                                    990 ;------------------------------------------------------------
                                    991 ;Allocation info for local variables in function 'vTimer0ISR'
                                    992 ;------------------------------------------------------------
                           000346   993 	G$vTimer0ISR$0$0 ==.
                           000346   994 	C$port.c$346$2_0$116 ==.
                                    995 ;	src/FreeRTOS/portable/SDCC/light52/port.c:346: void vTimer0ISR( void ) __interrupt(1) __naked
                                    996 ;	-----------------------------------------
                                    997 ;	 function vTimer0ISR
                                    998 ;	-----------------------------------------
      006591                        999 _vTimer0ISR:
                                   1000 ;	naked function: no prologue.
                           000346  1001 	C$port.c$352$2_0$117 ==.
                                   1002 ;	src/FreeRTOS/portable/SDCC/light52/port.c:352: portSAVE_CONTEXT();
      006591 C0 E0            [24] 1003 	push ACC 
      006593 C0 A8            [24] 1004 	push IE 
      006595 C2 AF            [12] 1005 	clr _EA 
      006597 C0 82            [24] 1006 	push DPL 
      006599 C0 83            [24] 1007 	push DPH 
      00659B C0 F0            [24] 1008 	push b 
      00659D C0 02            [24] 1009 	push ar2 
      00659F C0 03            [24] 1010 	push ar3 
      0065A1 C0 04            [24] 1011 	push ar4 
      0065A3 C0 05            [24] 1012 	push ar5 
      0065A5 C0 06            [24] 1013 	push ar6 
      0065A7 C0 07            [24] 1014 	push ar7 
      0065A9 C0 00            [24] 1015 	push ar0 
      0065AB C0 01            [24] 1016 	push ar1 
      0065AD C0 D0            [24] 1017 	push PSW 
      0065AF 75 D0 00         [24] 1018 	mov	_PSW,#0x00
      0065B2 C0 0C            [24] 1019 	push _bp 
                           000369  1020 	C$port.c$353$2_0$118 ==.
                                   1021 ;	src/FreeRTOS/portable/SDCC/light52/port.c:353: portCOPY_STACK_TO_XRAM();
      0065B4 90 00 09         [24] 1022 	mov	dptr,#_pxCurrentTCB
      0065B7 E0               [24] 1023 	movx	a,@dptr
      0065B8 FD               [12] 1024 	mov	r5,a
      0065B9 A3               [24] 1025 	inc	dptr
      0065BA E0               [24] 1026 	movx	a,@dptr
      0065BB FE               [12] 1027 	mov	r6,a
      0065BC A3               [24] 1028 	inc	dptr
      0065BD E0               [24] 1029 	movx	a,@dptr
      0065BE FF               [12] 1030 	mov	r7,a
      0065BF 8D 82            [24] 1031 	mov	dpl,r5
      0065C1 8E 83            [24] 1032 	mov	dph,r6
      0065C3 8F F0            [24] 1033 	mov	b,r7
      0065C5 12 70 5A         [24] 1034 	lcall	__gptrget
      0065C8 F5 09            [12] 1035 	mov	_pxXRAMStack,a
      0065CA A3               [24] 1036 	inc	dptr
      0065CB 12 70 5A         [24] 1037 	lcall	__gptrget
      0065CE F5 0A            [12] 1038 	mov	(_pxXRAMStack + 1),a
      0065D0 75 0B 0E         [24] 1039 	mov	_pxRAMStack,#0x0e
      0065D3 E5 81            [12] 1040 	mov	a,_SP
      0065D5 FF               [12] 1041 	mov	r7,a
      0065D6 24 F3            [12] 1042 	add	a,#0xf3
      0065D8 F5 08            [12] 1043 	mov	_ucStackBytes,a
      0065DA 85 09 82         [24] 1044 	mov	dpl,_pxXRAMStack
      0065DD 85 0A 83         [24] 1045 	mov	dph,(_pxXRAMStack + 1)
      0065E0 F0               [24] 1046 	movx	@dptr,a
      0065E1                       1047 00101$:
      0065E1 E5 08            [12] 1048 	mov	a,_ucStackBytes
      0065E3 60 19            [24] 1049 	jz	00103$
      0065E5 05 09            [12] 1050 	inc	_pxXRAMStack
      0065E7 E4               [12] 1051 	clr	a
      0065E8 B5 09 02         [24] 1052 	cjne	a,_pxXRAMStack,00132$
      0065EB 05 0A            [12] 1053 	inc	(_pxXRAMStack + 1)
      0065ED                       1054 00132$:
      0065ED 85 09 82         [24] 1055 	mov	dpl,_pxXRAMStack
      0065F0 85 0A 83         [24] 1056 	mov	dph,(_pxXRAMStack + 1)
      0065F3 A9 0B            [24] 1057 	mov	r1,_pxRAMStack
      0065F5 E7               [12] 1058 	mov	a,@r1
      0065F6 FF               [12] 1059 	mov	r7,a
      0065F7 F0               [24] 1060 	movx	@dptr,a
      0065F8 05 0B            [12] 1061 	inc	_pxRAMStack
      0065FA 15 08            [12] 1062 	dec	_ucStackBytes
      0065FC 80 E3            [24] 1063 	sjmp	00101$
      0065FE                       1064 00103$:
                           0003B3  1065 	C$port.c$355$1_0$116 ==.
                                   1066 ;	src/FreeRTOS/portable/SDCC/light52/port.c:355: if( xTaskIncrementTick() != pdFALSE )
      0065FE 12 0B 66         [24] 1067 	lcall	_xTaskIncrementTick
      006601 E5 82            [12] 1068 	mov	a,dpl
      006603 60 03            [24] 1069 	jz	00105$
                           0003BA  1070 	C$port.c$357$2_0$120 ==.
                                   1071 ;	src/FreeRTOS/portable/SDCC/light52/port.c:357: vTaskSwitchContext();
      006605 12 0E 13         [24] 1072 	lcall	_vTaskSwitchContext
      006608                       1073 00105$:
                           0003BD  1074 	C$port.c$360$1_0$116 ==.
                                   1075 ;	src/FreeRTOS/portable/SDCC/light52/port.c:360: portCLEAR_INTERRUPT_FLAG();
                                   1076 ;	assignBit
      006608 D2 88            [12] 1077 	setb	_T0IRQ
                           0003BF  1078 	C$port.c$361$2_0$121 ==.
                                   1079 ;	src/FreeRTOS/portable/SDCC/light52/port.c:361: portCOPY_XRAM_TO_STACK();
      00660A 90 00 09         [24] 1080 	mov	dptr,#_pxCurrentTCB
      00660D E0               [24] 1081 	movx	a,@dptr
      00660E FD               [12] 1082 	mov	r5,a
      00660F A3               [24] 1083 	inc	dptr
      006610 E0               [24] 1084 	movx	a,@dptr
      006611 FE               [12] 1085 	mov	r6,a
      006612 A3               [24] 1086 	inc	dptr
      006613 E0               [24] 1087 	movx	a,@dptr
      006614 FF               [12] 1088 	mov	r7,a
      006615 8D 82            [24] 1089 	mov	dpl,r5
      006617 8E 83            [24] 1090 	mov	dph,r6
      006619 8F F0            [24] 1091 	mov	b,r7
      00661B 12 70 5A         [24] 1092 	lcall	__gptrget
      00661E F5 09            [12] 1093 	mov	_pxXRAMStack,a
      006620 A3               [24] 1094 	inc	dptr
      006621 12 70 5A         [24] 1095 	lcall	__gptrget
      006624 F5 0A            [12] 1096 	mov	(_pxXRAMStack + 1),a
      006626 75 0B 0D         [24] 1097 	mov	_pxRAMStack,#0x0d
      006629 85 09 82         [24] 1098 	mov	dpl,_pxXRAMStack
      00662C 85 0A 83         [24] 1099 	mov	dph,(_pxXRAMStack + 1)
      00662F E0               [24] 1100 	movx	a,@dptr
      006630 F5 08            [12] 1101 	mov	_ucStackBytes,a
      006632                       1102 00106$:
      006632 05 09            [12] 1103 	inc	_pxXRAMStack
      006634 E4               [12] 1104 	clr	a
      006635 B5 09 02         [24] 1105 	cjne	a,_pxXRAMStack,00134$
      006638 05 0A            [12] 1106 	inc	(_pxXRAMStack + 1)
      00663A                       1107 00134$:
      00663A 05 0B            [12] 1108 	inc	_pxRAMStack
      00663C A9 0B            [24] 1109 	mov	r1,_pxRAMStack
      00663E 85 09 82         [24] 1110 	mov	dpl,_pxXRAMStack
      006641 85 0A 83         [24] 1111 	mov	dph,(_pxXRAMStack + 1)
      006644 E0               [24] 1112 	movx	a,@dptr
      006645 FF               [12] 1113 	mov	r7,a
      006646 F7               [12] 1114 	mov	@r1,a
      006647 D5 08 E8         [24] 1115 	djnz	_ucStackBytes,00106$
      00664A 85 0B 81         [24] 1116 	mov	_SP,_pxRAMStack
                           000402  1117 	C$port.c$362$2_0$123 ==.
                                   1118 ;	src/FreeRTOS/portable/SDCC/light52/port.c:362: portRESTORE_CONTEXT();
      00664D D0 0C            [24] 1119 	pop _bp 
      00664F D0 D0            [24] 1120 	pop PSW 
      006651 D0 01            [24] 1121 	pop ar1 
      006653 D0 00            [24] 1122 	pop ar0 
      006655 D0 07            [24] 1123 	pop ar7 
      006657 D0 06            [24] 1124 	pop ar6 
      006659 D0 05            [24] 1125 	pop ar5 
      00665B D0 04            [24] 1126 	pop ar4 
      00665D D0 03            [24] 1127 	pop ar3 
      00665F D0 02            [24] 1128 	pop ar2 
      006661 D0 F0            [24] 1129 	pop b 
      006663 D0 83            [24] 1130 	pop DPH 
      006665 D0 82            [24] 1131 	pop DPL 
      006667 D0 E0            [24] 1132 	pop ACC 
      006669 20 E7 05         [24] 1133 	JB ACC.7,0098$ 
      00666C C2 AF            [12] 1134 	CLR IE.7 
      00666E 02 66 73         [24] 1135 	LJMP 0099$ 
      006671                       1136 	 0098$:
      006671 D2 AF            [12] 1137 	SETB IE.7 
      006673                       1138 	 0099$:
      006673 D0 E0            [24] 1139 	pop ACC 
      006675 32               [24] 1140 	reti 
                           00042B  1141 	C$port.c$363$2_0$116 ==.
                                   1142 ;	src/FreeRTOS/portable/SDCC/light52/port.c:363: }
                                   1143 ;	naked function: no epilogue.
                           00042B  1144 	C$port.c$363$2_0$116 ==.
                           00042B  1145 	XG$vTimer0ISR$0$0 ==.
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'prvSetupTimerInterrupt'
                                   1148 ;------------------------------------------------------------
                                   1149 ;ulTicksPerSecond          Allocated to registers 
                                   1150 ;ulCaptureTime             Allocated to registers 
                                   1151 ;ulCaptureValue            Allocated to registers 
                                   1152 ;ucLowCaptureByte          Allocated to registers 
                                   1153 ;ucHighCaptureByte         Allocated to registers 
                                   1154 ;------------------------------------------------------------
                           00042B  1155 	Fport$prvSetupTimerInterrupt$0$0 ==.
                           00042B  1156 	C$port.c$376$2_0$125 ==.
                                   1157 ;	src/FreeRTOS/portable/SDCC/light52/port.c:376: static void prvSetupTimerInterrupt( void )
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function prvSetupTimerInterrupt
                                   1160 ;	-----------------------------------------
      006676                       1161 _prvSetupTimerInterrupt:
                           00042B  1162 	C$port.c$387$1_0$125 ==.
                                   1163 ;	src/FreeRTOS/portable/SDCC/light52/port.c:387: T0CH = ucHighCaptureByte;
      006676 75 8F FC         [24] 1164 	mov	_T0CH,#0xfc
                           00042E  1165 	C$port.c$388$1_0$125 ==.
                                   1166 ;	src/FreeRTOS/portable/SDCC/light52/port.c:388: T0CL = ucLowCaptureByte;
      006679 75 8E 18         [24] 1167 	mov	_T0CL,#0x18
                           000431  1168 	C$port.c$390$1_0$125 ==.
                                   1169 ;	src/FreeRTOS/portable/SDCC/light52/port.c:390: T0ARL = 1;
                                   1170 ;	assignBit
      00667C D2 8C            [12] 1171 	setb	_T0ARL
                           000433  1172 	C$port.c$391$1_0$125 ==.
                                   1173 ;	src/FreeRTOS/portable/SDCC/light52/port.c:391: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
                                   1174 ;	assignBit
      00667E D2 88            [12] 1175 	setb	_T0IRQ
                           000435  1176 	C$port.c$394$1_0$125 ==.
                                   1177 ;	src/FreeRTOS/portable/SDCC/light52/port.c:394: ET0 = 1;
                                   1178 ;	assignBit
      006680 D2 A9            [12] 1179 	setb	_ET0
                           000437  1180 	C$port.c$396$1_0$125 ==.
                                   1181 ;	src/FreeRTOS/portable/SDCC/light52/port.c:396: EA = 1;
                                   1182 ;	assignBit
      006682 D2 AF            [12] 1183 	setb	_EA
                           000439  1184 	C$port.c$398$1_0$125 ==.
                                   1185 ;	src/FreeRTOS/portable/SDCC/light52/port.c:398: T0CEN = 1;
                                   1186 ;	assignBit
      006684 D2 8D            [12] 1187 	setb	_T0CEN
                           00043B  1188 	C$port.c$400$1_0$125 ==.
                                   1189 ;	src/FreeRTOS/portable/SDCC/light52/port.c:400: }
                           00043B  1190 	C$port.c$400$1_0$125 ==.
                           00043B  1191 	XFport$prvSetupTimerInterrupt$0$0 ==.
      006686 22               [24] 1192 	ret
                                   1193 ;------------------------------------------------------------
                                   1194 ;Allocation info for local variables in function 'putchar'
                                   1195 ;------------------------------------------------------------
                                   1196 ;c                         Allocated to registers r7 
                                   1197 ;------------------------------------------------------------
                           00043C  1198 	G$putchar$0$0 ==.
                           00043C  1199 	C$port.c$410$1_0$127 ==.
                                   1200 ;	src/FreeRTOS/portable/SDCC/light52/port.c:410: void putchar (char c) 
                                   1201 ;	-----------------------------------------
                                   1202 ;	 function putchar
                                   1203 ;	-----------------------------------------
      006687                       1204 _putchar:
      006687 AF 82            [24] 1205 	mov	r7,dpl
                           00043E  1206 	C$port.c$412$1_0$127 ==.
                                   1207 ;	src/FreeRTOS/portable/SDCC/light52/port.c:412: while (!TXRDY);
      006689                       1208 00101$:
      006689 30 9C FD         [24] 1209 	jnb	_TXRDY,00101$
                           000441  1210 	C$port.c$413$1_0$127 ==.
                                   1211 ;	src/FreeRTOS/portable/SDCC/light52/port.c:413: SBUF = c;
      00668C 8F 99            [24] 1212 	mov	_SBUF,r7
                           000443  1213 	C$port.c$414$1_0$127 ==.
                                   1214 ;	src/FreeRTOS/portable/SDCC/light52/port.c:414: if( c == '\n' )
      00668E BF 0A 06         [24] 1215 	cjne	r7,#0x0a,00109$
                           000446  1216 	C$port.c$416$2_0$128 ==.
                                   1217 ;	src/FreeRTOS/portable/SDCC/light52/port.c:416: while(!TXRDY);
      006691                       1218 00104$:
      006691 30 9C FD         [24] 1219 	jnb	_TXRDY,00104$
                           000449  1220 	C$port.c$417$2_0$128 ==.
                                   1221 ;	src/FreeRTOS/portable/SDCC/light52/port.c:417: SBUF = '\r';
      006694 75 99 0D         [24] 1222 	mov	_SBUF,#0x0d
      006697                       1223 00109$:
                           00044C  1224 	C$port.c$419$1_0$127 ==.
                                   1225 ;	src/FreeRTOS/portable/SDCC/light52/port.c:419: }
                           00044C  1226 	C$port.c$419$1_0$127 ==.
                           00044C  1227 	XG$putchar$0$0 ==.
      006697 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function 'getchar'
                                   1231 ;------------------------------------------------------------
                                   1232 ;c                         Allocated to registers r7 
                                   1233 ;------------------------------------------------------------
                           00044D  1234 	G$getchar$0$0 ==.
                           00044D  1235 	C$port.c$425$1_0$130 ==.
                                   1236 ;	src/FreeRTOS/portable/SDCC/light52/port.c:425: unsigned char getchar(void) 
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function getchar
                                   1239 ;	-----------------------------------------
      006698                       1240 _getchar:
                           00044D  1241 	C$port.c$429$1_0$130 ==.
                                   1242 ;	src/FreeRTOS/portable/SDCC/light52/port.c:429: while (!RXRDY);
      006698                       1243 00101$:
      006698 30 9D FD         [24] 1244 	jnb	_RXRDY,00101$
                           000450  1245 	C$port.c$430$1_0$130 ==.
                                   1246 ;	src/FreeRTOS/portable/SDCC/light52/port.c:430: c = SBUF;
      00669B AF 99            [24] 1247 	mov	r7,_SBUF
                           000452  1248 	C$port.c$432$1_0$130 ==.
                                   1249 ;	src/FreeRTOS/portable/SDCC/light52/port.c:432: return c;
      00669D 8F 82            [24] 1250 	mov	dpl,r7
                           000454  1251 	C$port.c$433$1_0$130 ==.
                                   1252 ;	src/FreeRTOS/portable/SDCC/light52/port.c:433: }
                           000454  1253 	C$port.c$433$1_0$130 ==.
                           000454  1254 	XG$getchar$0$0 ==.
      00669F 22               [24] 1255 	ret
                                   1256 	.area CSEG    (CODE)
                                   1257 	.area CONST   (CODE)
                                   1258 	.area CABS    (ABS,CODE)
