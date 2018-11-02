                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module heap_1
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _xTaskResumeAll
                                     12 	.globl _vTaskSuspendAll
                                     13 	.globl _P3_7
                                     14 	.globl _P3_6
                                     15 	.globl _P3_5
                                     16 	.globl _P3_4
                                     17 	.globl _P3_3
                                     18 	.globl _P3_2
                                     19 	.globl _P3_1
                                     20 	.globl _P3_0
                                     21 	.globl _P2_7
                                     22 	.globl _P2_6
                                     23 	.globl _P2_5
                                     24 	.globl _P2_4
                                     25 	.globl _P2_3
                                     26 	.globl _P2_2
                                     27 	.globl _P2_1
                                     28 	.globl _P2_0
                                     29 	.globl _P1_7
                                     30 	.globl _P1_6
                                     31 	.globl _P1_5
                                     32 	.globl _P1_4
                                     33 	.globl _P1_3
                                     34 	.globl _P1_2
                                     35 	.globl _P1_1
                                     36 	.globl _P1_0
                                     37 	.globl _P0_7
                                     38 	.globl _P0_6
                                     39 	.globl _P0_5
                                     40 	.globl _P0_4
                                     41 	.globl _P0_3
                                     42 	.globl _P0_2
                                     43 	.globl _P0_1
                                     44 	.globl _P0_0
                                     45 	.globl _EIRQ7
                                     46 	.globl _EIRQ6
                                     47 	.globl _EIRQ5
                                     48 	.globl _EIRQ4
                                     49 	.globl _EIRQ3
                                     50 	.globl _EIRQ2
                                     51 	.globl _EIRQ1
                                     52 	.globl _EIRQ0
                                     53 	.globl _T0CEN
                                     54 	.globl _T0ARL
                                     55 	.globl _T0IRQ
                                     56 	.globl _RXRDY
                                     57 	.globl _TXRDY
                                     58 	.globl _RXIRQ
                                     59 	.globl _TXIRQ
                                     60 	.globl _EEX
                                     61 	.globl _ET0
                                     62 	.globl _ES
                                     63 	.globl _EA
                                     64 	.globl _P3
                                     65 	.globl _P2
                                     66 	.globl _P1
                                     67 	.globl _P0
                                     68 	.globl _EXTINT
                                     69 	.globl _T0CH
                                     70 	.globl _T0CL
                                     71 	.globl _T0H
                                     72 	.globl _T0L
                                     73 	.globl _TCON
                                     74 	.globl _SBPH
                                     75 	.globl _SBPL
                                     76 	.globl _SBUF
                                     77 	.globl _SCON
                                     78 	.globl _IE
                                     79 	.globl _DPL
                                     80 	.globl _DPH
                                     81 	.globl _SP
                                     82 	.globl _PSW
                                     83 	.globl _B
                                     84 	.globl _ACC
                                     85 	.globl _pvPortMalloc
                                     86 	.globl _vPortFree
                                     87 	.globl _vPortInitialiseBlocks
                                     88 	.globl _xPortGetFreeHeapSize
                                     89 ;--------------------------------------------------------
                                     90 ; special function registers
                                     91 ;--------------------------------------------------------
                                     92 	.area RSEG    (ABS,DATA)
      000000                         93 	.org 0x0000
                           0000E0    94 G$ACC$0_0$0 == 0x00e0
                           0000E0    95 _ACC	=	0x00e0
                           0000F0    96 G$B$0_0$0 == 0x00f0
                           0000F0    97 _B	=	0x00f0
                           0000D0    98 G$PSW$0_0$0 == 0x00d0
                           0000D0    99 _PSW	=	0x00d0
                           000081   100 G$SP$0_0$0 == 0x0081
                           000081   101 _SP	=	0x0081
                           000083   102 G$DPH$0_0$0 == 0x0083
                           000083   103 _DPH	=	0x0083
                           000082   104 G$DPL$0_0$0 == 0x0082
                           000082   105 _DPL	=	0x0082
                           0000A8   106 G$IE$0_0$0 == 0x00a8
                           0000A8   107 _IE	=	0x00a8
                           000098   108 G$SCON$0_0$0 == 0x0098
                           000098   109 _SCON	=	0x0098
                           000099   110 G$SBUF$0_0$0 == 0x0099
                           000099   111 _SBUF	=	0x0099
                           00009A   112 G$SBPL$0_0$0 == 0x009a
                           00009A   113 _SBPL	=	0x009a
                           00009B   114 G$SBPH$0_0$0 == 0x009b
                           00009B   115 _SBPH	=	0x009b
                           000088   116 G$TCON$0_0$0 == 0x0088
                           000088   117 _TCON	=	0x0088
                           00008C   118 G$T0L$0_0$0 == 0x008c
                           00008C   119 _T0L	=	0x008c
                           00008D   120 G$T0H$0_0$0 == 0x008d
                           00008D   121 _T0H	=	0x008d
                           00008E   122 G$T0CL$0_0$0 == 0x008e
                           00008E   123 _T0CL	=	0x008e
                           00008F   124 G$T0CH$0_0$0 == 0x008f
                           00008F   125 _T0CH	=	0x008f
                           0000C0   126 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   127 _EXTINT	=	0x00c0
                           000080   128 G$P0$0_0$0 == 0x0080
                           000080   129 _P0	=	0x0080
                           000090   130 G$P1$0_0$0 == 0x0090
                           000090   131 _P1	=	0x0090
                           0000A0   132 G$P2$0_0$0 == 0x00a0
                           0000A0   133 _P2	=	0x00a0
                           0000B0   134 G$P3$0_0$0 == 0x00b0
                           0000B0   135 _P3	=	0x00b0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           0000AF   141 G$EA$0_0$0 == 0x00af
                           0000AF   142 _EA	=	0x00af
                           0000AC   143 G$ES$0_0$0 == 0x00ac
                           0000AC   144 _ES	=	0x00ac
                           0000A9   145 G$ET0$0_0$0 == 0x00a9
                           0000A9   146 _ET0	=	0x00a9
                           0000A8   147 G$EEX$0_0$0 == 0x00a8
                           0000A8   148 _EEX	=	0x00a8
                           00009C   149 G$TXIRQ$0_0$0 == 0x009c
                           00009C   150 _TXIRQ	=	0x009c
                           00009D   151 G$RXIRQ$0_0$0 == 0x009d
                           00009D   152 _RXIRQ	=	0x009d
                           00009C   153 G$TXRDY$0_0$0 == 0x009c
                           00009C   154 _TXRDY	=	0x009c
                           00009D   155 G$RXRDY$0_0$0 == 0x009d
                           00009D   156 _RXRDY	=	0x009d
                           000088   157 G$T0IRQ$0_0$0 == 0x0088
                           000088   158 _T0IRQ	=	0x0088
                           00008C   159 G$T0ARL$0_0$0 == 0x008c
                           00008C   160 _T0ARL	=	0x008c
                           00008D   161 G$T0CEN$0_0$0 == 0x008d
                           00008D   162 _T0CEN	=	0x008d
                           0000C0   163 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   164 _EIRQ0	=	0x00c0
                           0000C1   165 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   166 _EIRQ1	=	0x00c1
                           0000C2   167 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   168 _EIRQ2	=	0x00c2
                           0000C3   169 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   170 _EIRQ3	=	0x00c3
                           0000C4   171 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   172 _EIRQ4	=	0x00c4
                           0000C5   173 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   174 _EIRQ5	=	0x00c5
                           0000C6   175 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   176 _EIRQ6	=	0x00c6
                           0000C7   177 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   178 _EIRQ7	=	0x00c7
                           000080   179 G$P0_0$0_0$0 == 0x0080
                           000080   180 _P0_0	=	0x0080
                           000081   181 G$P0_1$0_0$0 == 0x0081
                           000081   182 _P0_1	=	0x0081
                           000082   183 G$P0_2$0_0$0 == 0x0082
                           000082   184 _P0_2	=	0x0082
                           000083   185 G$P0_3$0_0$0 == 0x0083
                           000083   186 _P0_3	=	0x0083
                           000084   187 G$P0_4$0_0$0 == 0x0084
                           000084   188 _P0_4	=	0x0084
                           000085   189 G$P0_5$0_0$0 == 0x0085
                           000085   190 _P0_5	=	0x0085
                           000086   191 G$P0_6$0_0$0 == 0x0086
                           000086   192 _P0_6	=	0x0086
                           000087   193 G$P0_7$0_0$0 == 0x0087
                           000087   194 _P0_7	=	0x0087
                           000090   195 G$P1_0$0_0$0 == 0x0090
                           000090   196 _P1_0	=	0x0090
                           000091   197 G$P1_1$0_0$0 == 0x0091
                           000091   198 _P1_1	=	0x0091
                           000092   199 G$P1_2$0_0$0 == 0x0092
                           000092   200 _P1_2	=	0x0092
                           000093   201 G$P1_3$0_0$0 == 0x0093
                           000093   202 _P1_3	=	0x0093
                           000094   203 G$P1_4$0_0$0 == 0x0094
                           000094   204 _P1_4	=	0x0094
                           000095   205 G$P1_5$0_0$0 == 0x0095
                           000095   206 _P1_5	=	0x0095
                           000096   207 G$P1_6$0_0$0 == 0x0096
                           000096   208 _P1_6	=	0x0096
                           000097   209 G$P1_7$0_0$0 == 0x0097
                           000097   210 _P1_7	=	0x0097
                           0000A0   211 G$P2_0$0_0$0 == 0x00a0
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 G$P2_1$0_0$0 == 0x00a1
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 G$P2_2$0_0$0 == 0x00a2
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 G$P2_3$0_0$0 == 0x00a3
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 G$P2_4$0_0$0 == 0x00a4
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 G$P2_5$0_0$0 == 0x00a5
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 G$P2_6$0_0$0 == 0x00a6
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 G$P2_7$0_0$0 == 0x00a7
                           0000A7   226 _P2_7	=	0x00a7
                           0000B0   227 G$P3_0$0_0$0 == 0x00b0
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 G$P3_1$0_0$0 == 0x00b1
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 G$P3_2$0_0$0 == 0x00b2
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 G$P3_3$0_0$0 == 0x00b3
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 G$P3_4$0_0$0 == 0x00b4
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 G$P3_5$0_0$0 == 0x00b5
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 G$P3_6$0_0$0 == 0x00b6
                           0000B6   240 _P3_6	=	0x00b6
                           0000B7   241 G$P3_7$0_0$0 == 0x00b7
                           0000B7   242 _P3_7	=	0x00b7
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable register banks
                                    245 ;--------------------------------------------------------
                                    246 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        247 	.ds 8
                                    248 ;--------------------------------------------------------
                                    249 ; internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area DSEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; overlayable items in internal ram 
                                    254 ;--------------------------------------------------------
                                    255 ;--------------------------------------------------------
                                    256 ; indirectly addressable internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area ISEG    (DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area IABS    (ABS,DATA)
                                    263 	.area IABS    (ABS,DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; bit data
                                    266 ;--------------------------------------------------------
                                    267 	.area BSEG    (BIT)
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                           000000   276 Fheap_1$ucHeap$0_0$0==.
      000075                        277 _ucHeap:
      000075                        278 	.ds 6144
                           001800   279 Fheap_1$xNextFreeByte$0_0$0==.
      001875                        280 _xNextFreeByte:
      001875                        281 	.ds 2
                           001802   282 Lheap_1.pvPortMalloc$pucAlignedHeap$1_0$105==.
      001877                        283 _pvPortMalloc_pucAlignedHeap_65536_105:
      001877                        284 	.ds 3
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; external initialized ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; global & static initialisations
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area GSINIT  (CODE)
                                    309 ;------------------------------------------------------------
                                    310 ;Allocation info for local variables in function 'pvPortMalloc'
                                    311 ;------------------------------------------------------------
                                    312 ;xWantedSize               Allocated to stack - _bp +1
                                    313 ;pvReturn                  Allocated to stack - _bp +3
                                    314 ;sloc0                     Allocated to stack - _bp +3
                                    315 ;pucAlignedHeap            Allocated with name '_pvPortMalloc_pucAlignedHeap_65536_105'
                                    316 ;------------------------------------------------------------
                           000000   317 	G$pvPortMalloc$0$0 ==.
                           000000   318 	C$heap_1.c$72$1_0$105 ==.
                                    319 ;	src/FreeRTOS/portable/MemMang/heap_1.c:72: static uint8_t *pucAlignedHeap = NULL;
      0000B2 90 18 77         [24]  320 	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
      0000B5 E4               [12]  321 	clr	a
      0000B6 F0               [24]  322 	movx	@dptr,a
      0000B7 A3               [24]  323 	inc	dptr
      0000B8 F0               [24]  324 	movx	@dptr,a
      0000B9 A3               [24]  325 	inc	dptr
      0000BA F0               [24]  326 	movx	@dptr,a
                           000009   327 	C$heap_1.c$65$1_0$114 ==.
                                    328 ;	src/FreeRTOS/portable/MemMang/heap_1.c:65: static size_t xNextFreeByte = ( size_t ) 0;
      0000BB 90 18 75         [24]  329 	mov	dptr,#_xNextFreeByte
      0000BE E4               [12]  330 	clr	a
      0000BF F0               [24]  331 	movx	@dptr,a
      0000C0 A3               [24]  332 	inc	dptr
      0000C1 F0               [24]  333 	movx	@dptr,a
                                    334 ;--------------------------------------------------------
                                    335 ; Home
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area HOME    (CODE)
                                    339 ;--------------------------------------------------------
                                    340 ; code
                                    341 ;--------------------------------------------------------
                                    342 	.area CSEG    (CODE)
                                    343 ;------------------------------------------------------------
                                    344 ;Allocation info for local variables in function 'pvPortMalloc'
                                    345 ;------------------------------------------------------------
                                    346 ;xWantedSize               Allocated to stack - _bp +1
                                    347 ;pvReturn                  Allocated to stack - _bp +3
                                    348 ;sloc0                     Allocated to stack - _bp +3
                                    349 ;pucAlignedHeap            Allocated with name '_pvPortMalloc_pucAlignedHeap_65536_105'
                                    350 ;------------------------------------------------------------
                           000000   351 	G$pvPortMalloc$0$0 ==.
                           000000   352 	C$heap_1.c$69$0_0$105 ==.
                                    353 ;	src/FreeRTOS/portable/MemMang/heap_1.c:69: void *pvPortMalloc( size_t xWantedSize )
                                    354 ;	-----------------------------------------
                                    355 ;	 function pvPortMalloc
                                    356 ;	-----------------------------------------
      006184                        357 _pvPortMalloc:
                           000007   358 	ar7 = 0x07
                           000006   359 	ar6 = 0x06
                           000005   360 	ar5 = 0x05
                           000004   361 	ar4 = 0x04
                           000003   362 	ar3 = 0x03
                           000002   363 	ar2 = 0x02
                           000001   364 	ar1 = 0x01
                           000000   365 	ar0 = 0x00
      006184 C0 0C            [24]  366 	push	_bp
      006186 85 81 0C         [24]  367 	mov	_bp,sp
      006189 C0 82            [24]  368 	push	dpl
      00618B C0 83            [24]  369 	push	dph
      00618D 05 81            [12]  370 	inc	sp
      00618F 05 81            [12]  371 	inc	sp
      006191 05 81            [12]  372 	inc	sp
                           00000F   373 	C$heap_1.c$71$2_0$105 ==.
                                    374 ;	src/FreeRTOS/portable/MemMang/heap_1.c:71: void *pvReturn = NULL;
      006193 E5 0C            [12]  375 	mov	a,_bp
      006195 24 03            [12]  376 	add	a,#0x03
      006197 F8               [12]  377 	mov	r0,a
      006198 E4               [12]  378 	clr	a
      006199 F6               [12]  379 	mov	@r0,a
      00619A 08               [12]  380 	inc	r0
      00619B F6               [12]  381 	mov	@r0,a
      00619C 08               [12]  382 	inc	r0
      00619D 76 00            [12]  383 	mov	@r0,#0x00
                           00001B   384 	C$heap_1.c$85$1_0$105 ==.
                                    385 ;	src/FreeRTOS/portable/MemMang/heap_1.c:85: vTaskSuspendAll();
      00619F 12 09 4A         [24]  386 	lcall	_vTaskSuspendAll
                           00001E   387 	C$heap_1.c$87$2_0$106 ==.
                                    388 ;	src/FreeRTOS/portable/MemMang/heap_1.c:87: if( pucAlignedHeap == NULL )
      0061A2 90 18 77         [24]  389 	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
      0061A5 E0               [24]  390 	movx	a,@dptr
      0061A6 F5 F0            [12]  391 	mov	b,a
      0061A8 A3               [24]  392 	inc	dptr
      0061A9 E0               [24]  393 	movx	a,@dptr
      0061AA 45 F0            [12]  394 	orl	a,b
                           000028   395 	C$heap_1.c$90$3_0$107 ==.
                                    396 ;	src/FreeRTOS/portable/MemMang/heap_1.c:90: pucAlignedHeap = ( uint8_t * ) ( ( ( portPOINTER_SIZE_TYPE ) &ucHeap[ portBYTE_ALIGNMENT ] ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) );
      0061AC 70 11            [24]  397 	jnz	00102$
      0061AE 7A 76            [12]  398 	mov	r2,#(_ucHeap + 0x0001)
      0061B0 7D 00            [12]  399 	mov	r5,#((_ucHeap + 0x0001) >> 8)
      0061B2 FE               [12]  400 	mov	r6,a
      0061B3 FF               [12]  401 	mov	r7,a
      0061B4 90 18 77         [24]  402 	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
      0061B7 EA               [12]  403 	mov	a,r2
      0061B8 F0               [24]  404 	movx	@dptr,a
      0061B9 ED               [12]  405 	mov	a,r5
      0061BA A3               [24]  406 	inc	dptr
      0061BB F0               [24]  407 	movx	@dptr,a
      0061BC EE               [12]  408 	mov	a,r6
      0061BD A3               [24]  409 	inc	dptr
      0061BE F0               [24]  410 	movx	@dptr,a
      0061BF                        411 00102$:
                           00003B   412 	C$heap_1.c$94$2_0$106 ==.
                                    413 ;	src/FreeRTOS/portable/MemMang/heap_1.c:94: if( ( ( xNextFreeByte + xWantedSize ) < configADJUSTED_HEAP_SIZE ) &&
      0061BF 90 18 75         [24]  414 	mov	dptr,#_xNextFreeByte
      0061C2 E0               [24]  415 	movx	a,@dptr
      0061C3 FE               [12]  416 	mov	r6,a
      0061C4 A3               [24]  417 	inc	dptr
      0061C5 E0               [24]  418 	movx	a,@dptr
      0061C6 FF               [12]  419 	mov	r7,a
      0061C7 A8 0C            [24]  420 	mov	r0,_bp
      0061C9 08               [12]  421 	inc	r0
      0061CA E6               [12]  422 	mov	a,@r0
      0061CB 2E               [12]  423 	add	a,r6
      0061CC FC               [12]  424 	mov	r4,a
      0061CD 08               [12]  425 	inc	r0
      0061CE E6               [12]  426 	mov	a,@r0
      0061CF 3F               [12]  427 	addc	a,r7
      0061D0 FD               [12]  428 	mov	r5,a
      0061D1 C3               [12]  429 	clr	c
      0061D2 EC               [12]  430 	mov	a,r4
      0061D3 94 FF            [12]  431 	subb	a,#0xff
      0061D5 ED               [12]  432 	mov	a,r5
      0061D6 94 17            [12]  433 	subb	a,#0x17
      0061D8 50 3D            [24]  434 	jnc	00104$
                           000056   435 	C$heap_1.c$95$2_0$106 ==.
                                    436 ;	src/FreeRTOS/portable/MemMang/heap_1.c:95: ( ( xNextFreeByte + xWantedSize ) > xNextFreeByte )	)/* Check for overflow. */
      0061DA A8 0C            [24]  437 	mov	r0,_bp
      0061DC 08               [12]  438 	inc	r0
      0061DD E6               [12]  439 	mov	a,@r0
      0061DE 2E               [12]  440 	add	a,r6
      0061DF FC               [12]  441 	mov	r4,a
      0061E0 08               [12]  442 	inc	r0
      0061E1 E6               [12]  443 	mov	a,@r0
      0061E2 3F               [12]  444 	addc	a,r7
      0061E3 FD               [12]  445 	mov	r5,a
      0061E4 C3               [12]  446 	clr	c
      0061E5 EE               [12]  447 	mov	a,r6
      0061E6 9C               [12]  448 	subb	a,r4
      0061E7 EF               [12]  449 	mov	a,r7
      0061E8 9D               [12]  450 	subb	a,r5
      0061E9 50 2C            [24]  451 	jnc	00104$
                           000067   452 	C$heap_1.c$99$3_0$108 ==.
                                    453 ;	src/FreeRTOS/portable/MemMang/heap_1.c:99: pvReturn = pucAlignedHeap + xNextFreeByte;
      0061EB 90 18 77         [24]  454 	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
      0061EE E0               [24]  455 	movx	a,@dptr
      0061EF FB               [12]  456 	mov	r3,a
      0061F0 A3               [24]  457 	inc	dptr
      0061F1 E0               [24]  458 	movx	a,@dptr
      0061F2 FC               [12]  459 	mov	r4,a
      0061F3 A3               [24]  460 	inc	dptr
      0061F4 E0               [24]  461 	movx	a,@dptr
      0061F5 FD               [12]  462 	mov	r5,a
      0061F6 EE               [12]  463 	mov	a,r6
      0061F7 2B               [12]  464 	add	a,r3
      0061F8 FB               [12]  465 	mov	r3,a
      0061F9 EF               [12]  466 	mov	a,r7
      0061FA 3C               [12]  467 	addc	a,r4
      0061FB FC               [12]  468 	mov	r4,a
      0061FC E5 0C            [12]  469 	mov	a,_bp
      0061FE 24 03            [12]  470 	add	a,#0x03
      006200 F8               [12]  471 	mov	r0,a
      006201 A6 03            [24]  472 	mov	@r0,ar3
      006203 08               [12]  473 	inc	r0
      006204 A6 04            [24]  474 	mov	@r0,ar4
      006206 08               [12]  475 	inc	r0
      006207 A6 05            [24]  476 	mov	@r0,ar5
                           000085   477 	C$heap_1.c$100$3_0$108 ==.
                                    478 ;	src/FreeRTOS/portable/MemMang/heap_1.c:100: xNextFreeByte += xWantedSize;
      006209 A8 0C            [24]  479 	mov	r0,_bp
      00620B 08               [12]  480 	inc	r0
      00620C 90 18 75         [24]  481 	mov	dptr,#_xNextFreeByte
      00620F E6               [12]  482 	mov	a,@r0
      006210 2E               [12]  483 	add	a,r6
      006211 F0               [24]  484 	movx	@dptr,a
      006212 08               [12]  485 	inc	r0
      006213 E6               [12]  486 	mov	a,@r0
      006214 3F               [12]  487 	addc	a,r7
      006215 A3               [24]  488 	inc	dptr
      006216 F0               [24]  489 	movx	@dptr,a
      006217                        490 00104$:
                           000093   491 	C$heap_1.c$105$1_0$105 ==.
                                    492 ;	src/FreeRTOS/portable/MemMang/heap_1.c:105: ( void ) xTaskResumeAll();
      006217 12 09 52         [24]  493 	lcall	_xTaskResumeAll
                           000096   494 	C$heap_1.c$117$1_0$105 ==.
                                    495 ;	src/FreeRTOS/portable/MemMang/heap_1.c:117: return pvReturn;
      00621A E5 0C            [12]  496 	mov	a,_bp
      00621C 24 03            [12]  497 	add	a,#0x03
      00621E F8               [12]  498 	mov	r0,a
      00621F 86 82            [24]  499 	mov	dpl,@r0
      006221 08               [12]  500 	inc	r0
      006222 86 83            [24]  501 	mov	dph,@r0
      006224 08               [12]  502 	inc	r0
      006225 86 F0            [24]  503 	mov	b,@r0
                           0000A3   504 	C$heap_1.c$118$1_0$105 ==.
                                    505 ;	src/FreeRTOS/portable/MemMang/heap_1.c:118: }
      006227 85 0C 81         [24]  506 	mov	sp,_bp
      00622A D0 0C            [24]  507 	pop	_bp
                           0000A8   508 	C$heap_1.c$118$1_0$105 ==.
                           0000A8   509 	XG$pvPortMalloc$0$0 ==.
      00622C 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'vPortFree'
                                    513 ;------------------------------------------------------------
                                    514 ;pv                        Allocated to registers 
                                    515 ;------------------------------------------------------------
                           0000A9   516 	G$vPortFree$0$0 ==.
                           0000A9   517 	C$heap_1.c$121$1_0$110 ==.
                                    518 ;	src/FreeRTOS/portable/MemMang/heap_1.c:121: void vPortFree( void *pv )
                                    519 ;	-----------------------------------------
                                    520 ;	 function vPortFree
                                    521 ;	-----------------------------------------
      00622D                        522 _vPortFree:
                           0000A9   523 	C$heap_1.c$126$1_0$110 ==.
                                    524 ;	src/FreeRTOS/portable/MemMang/heap_1.c:126: ( void ) pv;
                           0000A9   525 	C$heap_1.c$130$1_0$110 ==.
                                    526 ;	src/FreeRTOS/portable/MemMang/heap_1.c:130: }
                           0000A9   527 	C$heap_1.c$130$1_0$110 ==.
                           0000A9   528 	XG$vPortFree$0$0 ==.
      00622D 22               [24]  529 	ret
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'vPortInitialiseBlocks'
                                    532 ;------------------------------------------------------------
                           0000AA   533 	G$vPortInitialiseBlocks$0$0 ==.
                           0000AA   534 	C$heap_1.c$133$1_0$112 ==.
                                    535 ;	src/FreeRTOS/portable/MemMang/heap_1.c:133: void vPortInitialiseBlocks( void )
                                    536 ;	-----------------------------------------
                                    537 ;	 function vPortInitialiseBlocks
                                    538 ;	-----------------------------------------
      00622E                        539 _vPortInitialiseBlocks:
                           0000AA   540 	C$heap_1.c$136$1_0$112 ==.
                                    541 ;	src/FreeRTOS/portable/MemMang/heap_1.c:136: xNextFreeByte = ( size_t ) 0;
      00622E 90 18 75         [24]  542 	mov	dptr,#_xNextFreeByte
      006231 E4               [12]  543 	clr	a
      006232 F0               [24]  544 	movx	@dptr,a
      006233 A3               [24]  545 	inc	dptr
      006234 F0               [24]  546 	movx	@dptr,a
                           0000B1   547 	C$heap_1.c$137$1_0$112 ==.
                                    548 ;	src/FreeRTOS/portable/MemMang/heap_1.c:137: }
                           0000B1   549 	C$heap_1.c$137$1_0$112 ==.
                           0000B1   550 	XG$vPortInitialiseBlocks$0$0 ==.
      006235 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'xPortGetFreeHeapSize'
                                    554 ;------------------------------------------------------------
                           0000B2   555 	G$xPortGetFreeHeapSize$0$0 ==.
                           0000B2   556 	C$heap_1.c$140$1_0$114 ==.
                                    557 ;	src/FreeRTOS/portable/MemMang/heap_1.c:140: size_t xPortGetFreeHeapSize( void )
                                    558 ;	-----------------------------------------
                                    559 ;	 function xPortGetFreeHeapSize
                                    560 ;	-----------------------------------------
      006236                        561 _xPortGetFreeHeapSize:
                           0000B2   562 	C$heap_1.c$142$1_0$114 ==.
                                    563 ;	src/FreeRTOS/portable/MemMang/heap_1.c:142: return ( configADJUSTED_HEAP_SIZE - xNextFreeByte );
      006236 90 18 75         [24]  564 	mov	dptr,#_xNextFreeByte
      006239 E0               [24]  565 	movx	a,@dptr
      00623A FE               [12]  566 	mov	r6,a
      00623B A3               [24]  567 	inc	dptr
      00623C E0               [24]  568 	movx	a,@dptr
      00623D FF               [12]  569 	mov	r7,a
      00623E 74 FF            [12]  570 	mov	a,#0xff
      006240 C3               [12]  571 	clr	c
      006241 9E               [12]  572 	subb	a,r6
      006242 FE               [12]  573 	mov	r6,a
      006243 74 17            [12]  574 	mov	a,#0x17
      006245 9F               [12]  575 	subb	a,r7
                           0000C2   576 	C$heap_1.c$143$1_0$114 ==.
                                    577 ;	src/FreeRTOS/portable/MemMang/heap_1.c:143: }
                           0000C2   578 	C$heap_1.c$143$1_0$114 ==.
                           0000C2   579 	XG$xPortGetFreeHeapSize$0$0 ==.
      006246 8E 82            [24]  580 	mov	dpl,r6
      006248 F5 83            [12]  581 	mov	dph,a
      00624A 22               [24]  582 	ret
                                    583 	.area CSEG    (CODE)
                                    584 	.area CONST   (CODE)
                                    585 	.area CABS    (ABS,CODE)
