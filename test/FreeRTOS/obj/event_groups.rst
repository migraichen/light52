                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module event_groups
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uxTaskResetEventItemValue
                                     12 	.globl _vTaskRemoveFromUnorderedEventList
                                     13 	.globl _vTaskPlaceOnUnorderedEventList
                                     14 	.globl _xTaskResumeAll
                                     15 	.globl _vTaskSuspendAll
                                     16 	.globl _vListInitialise
                                     17 	.globl _vPortFree
                                     18 	.globl _pvPortMalloc
                                     19 	.globl _vPortYield
                                     20 	.globl _P3_7
                                     21 	.globl _P3_6
                                     22 	.globl _P3_5
                                     23 	.globl _P3_4
                                     24 	.globl _P3_3
                                     25 	.globl _P3_2
                                     26 	.globl _P3_1
                                     27 	.globl _P3_0
                                     28 	.globl _P2_7
                                     29 	.globl _P2_6
                                     30 	.globl _P2_5
                                     31 	.globl _P2_4
                                     32 	.globl _P2_3
                                     33 	.globl _P2_2
                                     34 	.globl _P2_1
                                     35 	.globl _P2_0
                                     36 	.globl _P1_7
                                     37 	.globl _P1_6
                                     38 	.globl _P1_5
                                     39 	.globl _P1_4
                                     40 	.globl _P1_3
                                     41 	.globl _P1_2
                                     42 	.globl _P1_1
                                     43 	.globl _P1_0
                                     44 	.globl _P0_7
                                     45 	.globl _P0_6
                                     46 	.globl _P0_5
                                     47 	.globl _P0_4
                                     48 	.globl _P0_3
                                     49 	.globl _P0_2
                                     50 	.globl _P0_1
                                     51 	.globl _P0_0
                                     52 	.globl _EIRQ7
                                     53 	.globl _EIRQ6
                                     54 	.globl _EIRQ5
                                     55 	.globl _EIRQ4
                                     56 	.globl _EIRQ3
                                     57 	.globl _EIRQ2
                                     58 	.globl _EIRQ1
                                     59 	.globl _EIRQ0
                                     60 	.globl _T0CEN
                                     61 	.globl _T0ARL
                                     62 	.globl _T0IRQ
                                     63 	.globl _RXRDY
                                     64 	.globl _TXRDY
                                     65 	.globl _RXIRQ
                                     66 	.globl _TXIRQ
                                     67 	.globl _EEX
                                     68 	.globl _ET0
                                     69 	.globl _ES
                                     70 	.globl _EA
                                     71 	.globl _P3
                                     72 	.globl _P2
                                     73 	.globl _P1
                                     74 	.globl _P0
                                     75 	.globl _EXTINT
                                     76 	.globl _T0CH
                                     77 	.globl _T0CL
                                     78 	.globl _T0H
                                     79 	.globl _T0L
                                     80 	.globl _TCON
                                     81 	.globl _SBPH
                                     82 	.globl _SBPL
                                     83 	.globl _SBUF
                                     84 	.globl _SCON
                                     85 	.globl _IE
                                     86 	.globl _DPL
                                     87 	.globl _DPH
                                     88 	.globl _SP
                                     89 	.globl _PSW
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _xEventGroupCreate
                                     93 	.globl _xEventGroupSync
                                     94 	.globl _xEventGroupWaitBits
                                     95 	.globl _xEventGroupClearBits
                                     96 	.globl _xEventGroupGetBitsFromISR
                                     97 	.globl _xEventGroupSetBits
                                     98 	.globl _vEventGroupDelete
                                     99 	.globl _vEventGroupSetBitsCallback
                                    100 	.globl _vEventGroupClearBitsCallback
                                    101 ;--------------------------------------------------------
                                    102 ; special function registers
                                    103 ;--------------------------------------------------------
                                    104 	.area RSEG    (ABS,DATA)
      000000                        105 	.org 0x0000
                           0000E0   106 G$ACC$0_0$0 == 0x00e0
                           0000E0   107 _ACC	=	0x00e0
                           0000F0   108 G$B$0_0$0 == 0x00f0
                           0000F0   109 _B	=	0x00f0
                           0000D0   110 G$PSW$0_0$0 == 0x00d0
                           0000D0   111 _PSW	=	0x00d0
                           000081   112 G$SP$0_0$0 == 0x0081
                           000081   113 _SP	=	0x0081
                           000083   114 G$DPH$0_0$0 == 0x0083
                           000083   115 _DPH	=	0x0083
                           000082   116 G$DPL$0_0$0 == 0x0082
                           000082   117 _DPL	=	0x0082
                           0000A8   118 G$IE$0_0$0 == 0x00a8
                           0000A8   119 _IE	=	0x00a8
                           000098   120 G$SCON$0_0$0 == 0x0098
                           000098   121 _SCON	=	0x0098
                           000099   122 G$SBUF$0_0$0 == 0x0099
                           000099   123 _SBUF	=	0x0099
                           00009A   124 G$SBPL$0_0$0 == 0x009a
                           00009A   125 _SBPL	=	0x009a
                           00009B   126 G$SBPH$0_0$0 == 0x009b
                           00009B   127 _SBPH	=	0x009b
                           000088   128 G$TCON$0_0$0 == 0x0088
                           000088   129 _TCON	=	0x0088
                           00008C   130 G$T0L$0_0$0 == 0x008c
                           00008C   131 _T0L	=	0x008c
                           00008D   132 G$T0H$0_0$0 == 0x008d
                           00008D   133 _T0H	=	0x008d
                           00008E   134 G$T0CL$0_0$0 == 0x008e
                           00008E   135 _T0CL	=	0x008e
                           00008F   136 G$T0CH$0_0$0 == 0x008f
                           00008F   137 _T0CH	=	0x008f
                           0000C0   138 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   139 _EXTINT	=	0x00c0
                           000080   140 G$P0$0_0$0 == 0x0080
                           000080   141 _P0	=	0x0080
                           000090   142 G$P1$0_0$0 == 0x0090
                           000090   143 _P1	=	0x0090
                           0000A0   144 G$P2$0_0$0 == 0x00a0
                           0000A0   145 _P2	=	0x00a0
                           0000B0   146 G$P3$0_0$0 == 0x00b0
                           0000B0   147 _P3	=	0x00b0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           0000AF   153 G$EA$0_0$0 == 0x00af
                           0000AF   154 _EA	=	0x00af
                           0000AC   155 G$ES$0_0$0 == 0x00ac
                           0000AC   156 _ES	=	0x00ac
                           0000A9   157 G$ET0$0_0$0 == 0x00a9
                           0000A9   158 _ET0	=	0x00a9
                           0000A8   159 G$EEX$0_0$0 == 0x00a8
                           0000A8   160 _EEX	=	0x00a8
                           00009C   161 G$TXIRQ$0_0$0 == 0x009c
                           00009C   162 _TXIRQ	=	0x009c
                           00009D   163 G$RXIRQ$0_0$0 == 0x009d
                           00009D   164 _RXIRQ	=	0x009d
                           00009C   165 G$TXRDY$0_0$0 == 0x009c
                           00009C   166 _TXRDY	=	0x009c
                           00009D   167 G$RXRDY$0_0$0 == 0x009d
                           00009D   168 _RXRDY	=	0x009d
                           000088   169 G$T0IRQ$0_0$0 == 0x0088
                           000088   170 _T0IRQ	=	0x0088
                           00008C   171 G$T0ARL$0_0$0 == 0x008c
                           00008C   172 _T0ARL	=	0x008c
                           00008D   173 G$T0CEN$0_0$0 == 0x008d
                           00008D   174 _T0CEN	=	0x008d
                           0000C0   175 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   176 _EIRQ0	=	0x00c0
                           0000C1   177 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   178 _EIRQ1	=	0x00c1
                           0000C2   179 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   180 _EIRQ2	=	0x00c2
                           0000C3   181 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   182 _EIRQ3	=	0x00c3
                           0000C4   183 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   184 _EIRQ4	=	0x00c4
                           0000C5   185 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   186 _EIRQ5	=	0x00c5
                           0000C6   187 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   188 _EIRQ6	=	0x00c6
                           0000C7   189 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   190 _EIRQ7	=	0x00c7
                           000080   191 G$P0_0$0_0$0 == 0x0080
                           000080   192 _P0_0	=	0x0080
                           000081   193 G$P0_1$0_0$0 == 0x0081
                           000081   194 _P0_1	=	0x0081
                           000082   195 G$P0_2$0_0$0 == 0x0082
                           000082   196 _P0_2	=	0x0082
                           000083   197 G$P0_3$0_0$0 == 0x0083
                           000083   198 _P0_3	=	0x0083
                           000084   199 G$P0_4$0_0$0 == 0x0084
                           000084   200 _P0_4	=	0x0084
                           000085   201 G$P0_5$0_0$0 == 0x0085
                           000085   202 _P0_5	=	0x0085
                           000086   203 G$P0_6$0_0$0 == 0x0086
                           000086   204 _P0_6	=	0x0086
                           000087   205 G$P0_7$0_0$0 == 0x0087
                           000087   206 _P0_7	=	0x0087
                           000090   207 G$P1_0$0_0$0 == 0x0090
                           000090   208 _P1_0	=	0x0090
                           000091   209 G$P1_1$0_0$0 == 0x0091
                           000091   210 _P1_1	=	0x0091
                           000092   211 G$P1_2$0_0$0 == 0x0092
                           000092   212 _P1_2	=	0x0092
                           000093   213 G$P1_3$0_0$0 == 0x0093
                           000093   214 _P1_3	=	0x0093
                           000094   215 G$P1_4$0_0$0 == 0x0094
                           000094   216 _P1_4	=	0x0094
                           000095   217 G$P1_5$0_0$0 == 0x0095
                           000095   218 _P1_5	=	0x0095
                           000096   219 G$P1_6$0_0$0 == 0x0096
                           000096   220 _P1_6	=	0x0096
                           000097   221 G$P1_7$0_0$0 == 0x0097
                           000097   222 _P1_7	=	0x0097
                           0000A0   223 G$P2_0$0_0$0 == 0x00a0
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 G$P2_1$0_0$0 == 0x00a1
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 G$P2_2$0_0$0 == 0x00a2
                           0000A2   228 _P2_2	=	0x00a2
                           0000A3   229 G$P2_3$0_0$0 == 0x00a3
                           0000A3   230 _P2_3	=	0x00a3
                           0000A4   231 G$P2_4$0_0$0 == 0x00a4
                           0000A4   232 _P2_4	=	0x00a4
                           0000A5   233 G$P2_5$0_0$0 == 0x00a5
                           0000A5   234 _P2_5	=	0x00a5
                           0000A6   235 G$P2_6$0_0$0 == 0x00a6
                           0000A6   236 _P2_6	=	0x00a6
                           0000A7   237 G$P2_7$0_0$0 == 0x00a7
                           0000A7   238 _P2_7	=	0x00a7
                           0000B0   239 G$P3_0$0_0$0 == 0x00b0
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 G$P3_1$0_0$0 == 0x00b1
                           0000B1   242 _P3_1	=	0x00b1
                           0000B2   243 G$P3_2$0_0$0 == 0x00b2
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 G$P3_3$0_0$0 == 0x00b3
                           0000B3   246 _P3_3	=	0x00b3
                           0000B4   247 G$P3_4$0_0$0 == 0x00b4
                           0000B4   248 _P3_4	=	0x00b4
                           0000B5   249 G$P3_5$0_0$0 == 0x00b5
                           0000B5   250 _P3_5	=	0x00b5
                           0000B6   251 G$P3_6$0_0$0 == 0x00b6
                           0000B6   252 _P3_6	=	0x00b6
                           0000B7   253 G$P3_7$0_0$0 == 0x00b7
                           0000B7   254 _P3_7	=	0x00b7
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable register banks
                                    257 ;--------------------------------------------------------
                                    258 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        259 	.ds 8
                                    260 ;--------------------------------------------------------
                                    261 ; internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area DSEG    (DATA)
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
                                    322 ;Allocation info for local variables in function 'xEventGroupCreate'
                                    323 ;------------------------------------------------------------
                                    324 ;pxEventBits               Allocated to registers r5 r6 r7 
                                    325 ;------------------------------------------------------------
                           000000   326 	G$xEventGroupCreate$0$0 ==.
                           000000   327 	C$event_groups.c$145$0_0$129 ==.
                                    328 ;	src/FreeRTOS/event_groups.c:145: EventGroupHandle_t xEventGroupCreate( void )
                                    329 ;	-----------------------------------------
                                    330 ;	 function xEventGroupCreate
                                    331 ;	-----------------------------------------
      002359                        332 _xEventGroupCreate:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                           000000   341 	C$event_groups.c$162$1_0$129 ==.
                                    342 ;	src/FreeRTOS/event_groups.c:162: pxEventBits = ( EventGroup_t * ) pvPortMalloc( sizeof( EventGroup_t ) ); /*lint !e9087 !e9079 see comment above. */
      002359 90 00 0E         [24]  343 	mov	dptr,#0x000e
      00235C 12 61 84         [24]  344 	lcall	_pvPortMalloc
      00235F AD 82            [24]  345 	mov	r5,dpl
      002361 AE 83            [24]  346 	mov	r6,dph
      002363 AF F0            [24]  347 	mov	r7,b
                           00000C   348 	C$event_groups.c$164$1_0$129 ==.
                                    349 ;	src/FreeRTOS/event_groups.c:164: if( pxEventBits != NULL )
      002365 ED               [12]  350 	mov	a,r5
      002366 4E               [12]  351 	orl	a,r6
      002367 60 2C            [24]  352 	jz	00102$
                           000010   353 	C$event_groups.c$166$2_0$130 ==.
                                    354 ;	src/FreeRTOS/event_groups.c:166: pxEventBits->uxEventBits = 0;
      002369 8D 82            [24]  355 	mov	dpl,r5
      00236B 8E 83            [24]  356 	mov	dph,r6
      00236D 8F F0            [24]  357 	mov	b,r7
      00236F E4               [12]  358 	clr	a
      002370 12 66 A0         [24]  359 	lcall	__gptrput
      002373 A3               [24]  360 	inc	dptr
      002374 12 66 A0         [24]  361 	lcall	__gptrput
                           00001E   362 	C$event_groups.c$167$2_0$130 ==.
                                    363 ;	src/FreeRTOS/event_groups.c:167: vListInitialise( &( pxEventBits->xTasksWaitingForBits ) );
      002377 74 02            [12]  364 	mov	a,#0x02
      002379 2D               [12]  365 	add	a,r5
      00237A FA               [12]  366 	mov	r2,a
      00237B E4               [12]  367 	clr	a
      00237C 3E               [12]  368 	addc	a,r6
      00237D FB               [12]  369 	mov	r3,a
      00237E 8F 04            [24]  370 	mov	ar4,r7
      002380 8A 82            [24]  371 	mov	dpl,r2
      002382 8B 83            [24]  372 	mov	dph,r3
      002384 8C F0            [24]  373 	mov	b,r4
      002386 C0 07            [24]  374 	push	ar7
      002388 C0 06            [24]  375 	push	ar6
      00238A C0 05            [24]  376 	push	ar5
      00238C 12 2B DD         [24]  377 	lcall	_vListInitialise
      00238F D0 05            [24]  378 	pop	ar5
      002391 D0 06            [24]  379 	pop	ar6
      002393 D0 07            [24]  380 	pop	ar7
      002395                        381 00102$:
                           00003C   382 	C$event_groups.c$185$1_0$129 ==.
                                    383 ;	src/FreeRTOS/event_groups.c:185: return pxEventBits;
      002395 8D 82            [24]  384 	mov	dpl,r5
      002397 8E 83            [24]  385 	mov	dph,r6
      002399 8F F0            [24]  386 	mov	b,r7
                           000042   387 	C$event_groups.c$186$1_0$129 ==.
                                    388 ;	src/FreeRTOS/event_groups.c:186: }
                           000042   389 	C$event_groups.c$186$1_0$129 ==.
                           000042   390 	XG$xEventGroupCreate$0$0 ==.
      00239B 22               [24]  391 	ret
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'xEventGroupSync'
                                    394 ;------------------------------------------------------------
                                    395 ;uxBitsToSet               Allocated to stack - _bp -4
                                    396 ;uxBitsToWaitFor           Allocated to stack - _bp -6
                                    397 ;xTicksToWait              Allocated to stack - _bp -8
                                    398 ;xEventGroup               Allocated to stack - _bp +1
                                    399 ;uxOriginalBitValue        Allocated to registers r7 r6 
                                    400 ;uxReturn                  Allocated to stack - _bp +7
                                    401 ;pxEventBits               Allocated to stack - _bp +4
                                    402 ;xAlreadyYielded           Allocated to registers r7 
                                    403 ;xTimeoutOccurred          Allocated to registers 
                                    404 ;sloc0                     Allocated to stack - _bp +13
                                    405 ;------------------------------------------------------------
                           000043   406 	G$xEventGroupSync$0$0 ==.
                           000043   407 	C$event_groups.c$191$1_0$133 ==.
                                    408 ;	src/FreeRTOS/event_groups.c:191: EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait )
                                    409 ;	-----------------------------------------
                                    410 ;	 function xEventGroupSync
                                    411 ;	-----------------------------------------
      00239C                        412 _xEventGroupSync:
      00239C C0 0C            [24]  413 	push	_bp
      00239E 85 81 0C         [24]  414 	mov	_bp,sp
      0023A1 C0 82            [24]  415 	push	dpl
      0023A3 C0 83            [24]  416 	push	dph
      0023A5 C0 F0            [24]  417 	push	b
      0023A7 E5 81            [12]  418 	mov	a,sp
      0023A9 24 05            [12]  419 	add	a,#0x05
      0023AB F5 81            [12]  420 	mov	sp,a
                           000054   421 	C$event_groups.c$194$2_0$133 ==.
                                    422 ;	src/FreeRTOS/event_groups.c:194: EventGroup_t *pxEventBits = xEventGroup;
      0023AD A8 0C            [24]  423 	mov	r0,_bp
      0023AF 08               [12]  424 	inc	r0
      0023B0 E5 0C            [12]  425 	mov	a,_bp
      0023B2 24 04            [12]  426 	add	a,#0x04
      0023B4 F9               [12]  427 	mov	r1,a
      0023B5 E6               [12]  428 	mov	a,@r0
      0023B6 F7               [12]  429 	mov	@r1,a
      0023B7 08               [12]  430 	inc	r0
      0023B8 09               [12]  431 	inc	r1
      0023B9 E6               [12]  432 	mov	a,@r0
      0023BA F7               [12]  433 	mov	@r1,a
      0023BB 08               [12]  434 	inc	r0
      0023BC 09               [12]  435 	inc	r1
      0023BD E6               [12]  436 	mov	a,@r0
      0023BE F7               [12]  437 	mov	@r1,a
                           000066   438 	C$event_groups.c$206$1_0$133 ==.
                                    439 ;	src/FreeRTOS/event_groups.c:206: vTaskSuspendAll();
      0023BF 12 09 4A         [24]  440 	lcall	_vTaskSuspendAll
                           000069   441 	C$event_groups.c$208$2_0$134 ==.
                                    442 ;	src/FreeRTOS/event_groups.c:208: uxOriginalBitValue = pxEventBits->uxEventBits;
      0023C2 A8 0C            [24]  443 	mov	r0,_bp
      0023C4 08               [12]  444 	inc	r0
      0023C5 86 82            [24]  445 	mov	dpl,@r0
      0023C7 08               [12]  446 	inc	r0
      0023C8 86 83            [24]  447 	mov	dph,@r0
      0023CA 08               [12]  448 	inc	r0
      0023CB 86 F0            [24]  449 	mov	b,@r0
      0023CD 12 70 5A         [24]  450 	lcall	__gptrget
      0023D0 FF               [12]  451 	mov	r7,a
      0023D1 A3               [24]  452 	inc	dptr
      0023D2 12 70 5A         [24]  453 	lcall	__gptrget
      0023D5 FE               [12]  454 	mov	r6,a
                           00007D   455 	C$event_groups.c$210$2_0$134 ==.
                                    456 ;	src/FreeRTOS/event_groups.c:210: ( void ) xEventGroupSetBits( xEventGroup, uxBitsToSet );
      0023D6 C0 07            [24]  457 	push	ar7
      0023D8 C0 06            [24]  458 	push	ar6
      0023DA E5 0C            [12]  459 	mov	a,_bp
      0023DC 24 FC            [12]  460 	add	a,#0xfc
      0023DE F8               [12]  461 	mov	r0,a
      0023DF E6               [12]  462 	mov	a,@r0
      0023E0 C0 E0            [24]  463 	push	acc
      0023E2 08               [12]  464 	inc	r0
      0023E3 E6               [12]  465 	mov	a,@r0
      0023E4 C0 E0            [24]  466 	push	acc
      0023E6 A8 0C            [24]  467 	mov	r0,_bp
      0023E8 08               [12]  468 	inc	r0
      0023E9 86 82            [24]  469 	mov	dpl,@r0
      0023EB 08               [12]  470 	inc	r0
      0023EC 86 83            [24]  471 	mov	dph,@r0
      0023EE 08               [12]  472 	inc	r0
      0023EF 86 F0            [24]  473 	mov	b,@r0
      0023F1 12 28 28         [24]  474 	lcall	_xEventGroupSetBits
      0023F4 15 81            [12]  475 	dec	sp
      0023F6 15 81            [12]  476 	dec	sp
      0023F8 D0 06            [24]  477 	pop	ar6
      0023FA D0 07            [24]  478 	pop	ar7
                           0000A3   479 	C$event_groups.c$212$2_0$134 ==.
                                    480 ;	src/FreeRTOS/event_groups.c:212: if( ( ( uxOriginalBitValue | uxBitsToSet ) & uxBitsToWaitFor ) == uxBitsToWaitFor )
      0023FC E5 0C            [12]  481 	mov	a,_bp
      0023FE 24 FC            [12]  482 	add	a,#0xfc
      002400 F8               [12]  483 	mov	r0,a
      002401 E6               [12]  484 	mov	a,@r0
      002402 4F               [12]  485 	orl	a,r7
      002403 FA               [12]  486 	mov	r2,a
      002404 08               [12]  487 	inc	r0
      002405 E6               [12]  488 	mov	a,@r0
      002406 4E               [12]  489 	orl	a,r6
      002407 FC               [12]  490 	mov	r4,a
      002408 E5 0C            [12]  491 	mov	a,_bp
      00240A 24 FA            [12]  492 	add	a,#0xfa
      00240C F8               [12]  493 	mov	r0,a
      00240D E6               [12]  494 	mov	a,@r0
      00240E 52 02            [12]  495 	anl	ar2,a
      002410 08               [12]  496 	inc	r0
      002411 E6               [12]  497 	mov	a,@r0
      002412 52 04            [12]  498 	anl	ar4,a
      002414 E5 0C            [12]  499 	mov	a,_bp
      002416 24 FA            [12]  500 	add	a,#0xfa
      002418 F8               [12]  501 	mov	r0,a
      002419 E6               [12]  502 	mov	a,@r0
      00241A B5 02 07         [24]  503 	cjne	a,ar2,00147$
      00241D 08               [12]  504 	inc	r0
      00241E E6               [12]  505 	mov	a,@r0
      00241F B5 04 02         [24]  506 	cjne	a,ar4,00147$
      002422 80 02            [24]  507 	sjmp	00148$
      002424                        508 00147$:
      002424 80 51            [24]  509 	sjmp	00105$
      002426                        510 00148$:
                           0000CD   511 	C$event_groups.c$215$3_0$135 ==.
                                    512 ;	src/FreeRTOS/event_groups.c:215: uxReturn = ( uxOriginalBitValue | uxBitsToSet );
      002426 E5 0C            [12]  513 	mov	a,_bp
      002428 24 FC            [12]  514 	add	a,#0xfc
      00242A F8               [12]  515 	mov	r0,a
      00242B E6               [12]  516 	mov	a,@r0
      00242C 4F               [12]  517 	orl	a,r7
      00242D FB               [12]  518 	mov	r3,a
      00242E 08               [12]  519 	inc	r0
      00242F E6               [12]  520 	mov	a,@r0
      002430 4E               [12]  521 	orl	a,r6
      002431 FC               [12]  522 	mov	r4,a
                           0000D9   523 	C$event_groups.c$219$3_0$135 ==.
                                    524 ;	src/FreeRTOS/event_groups.c:219: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
      002432 A8 0C            [24]  525 	mov	r0,_bp
      002434 08               [12]  526 	inc	r0
      002435 86 82            [24]  527 	mov	dpl,@r0
      002437 08               [12]  528 	inc	r0
      002438 86 83            [24]  529 	mov	dph,@r0
      00243A 08               [12]  530 	inc	r0
      00243B 86 F0            [24]  531 	mov	b,@r0
      00243D 12 70 5A         [24]  532 	lcall	__gptrget
      002440 FA               [12]  533 	mov	r2,a
      002441 A3               [24]  534 	inc	dptr
      002442 12 70 5A         [24]  535 	lcall	__gptrget
      002445 FF               [12]  536 	mov	r7,a
      002446 E5 0C            [12]  537 	mov	a,_bp
      002448 24 FA            [12]  538 	add	a,#0xfa
      00244A F8               [12]  539 	mov	r0,a
      00244B E6               [12]  540 	mov	a,@r0
      00244C F4               [12]  541 	cpl	a
      00244D FD               [12]  542 	mov	r5,a
      00244E 08               [12]  543 	inc	r0
      00244F E6               [12]  544 	mov	a,@r0
      002450 F4               [12]  545 	cpl	a
      002451 FE               [12]  546 	mov	r6,a
      002452 ED               [12]  547 	mov	a,r5
      002453 52 02            [12]  548 	anl	ar2,a
      002455 EE               [12]  549 	mov	a,r6
      002456 52 07            [12]  550 	anl	ar7,a
      002458 A8 0C            [24]  551 	mov	r0,_bp
      00245A 08               [12]  552 	inc	r0
      00245B 86 82            [24]  553 	mov	dpl,@r0
      00245D 08               [12]  554 	inc	r0
      00245E 86 83            [24]  555 	mov	dph,@r0
      002460 08               [12]  556 	inc	r0
      002461 86 F0            [24]  557 	mov	b,@r0
      002463 EA               [12]  558 	mov	a,r2
      002464 12 66 A0         [24]  559 	lcall	__gptrput
      002467 A3               [24]  560 	inc	dptr
      002468 EF               [12]  561 	mov	a,r7
      002469 12 66 A0         [24]  562 	lcall	__gptrput
                           000113   563 	C$event_groups.c$221$3_0$135 ==.
                                    564 ;	src/FreeRTOS/event_groups.c:221: xTicksToWait = 0;
      00246C E5 0C            [12]  565 	mov	a,_bp
      00246E 24 F8            [12]  566 	add	a,#0xf8
      002470 F8               [12]  567 	mov	r0,a
      002471 E4               [12]  568 	clr	a
      002472 F6               [12]  569 	mov	@r0,a
      002473 08               [12]  570 	inc	r0
      002474 F6               [12]  571 	mov	@r0,a
      002475 80 5D            [24]  572 	sjmp	00106$
      002477                        573 00105$:
                           00011E   574 	C$event_groups.c$225$3_0$136 ==.
                                    575 ;	src/FreeRTOS/event_groups.c:225: if( xTicksToWait != ( TickType_t ) 0 )
      002477 E5 0C            [12]  576 	mov	a,_bp
      002479 24 F8            [12]  577 	add	a,#0xf8
      00247B F8               [12]  578 	mov	r0,a
      00247C E6               [12]  579 	mov	a,@r0
      00247D 08               [12]  580 	inc	r0
      00247E 46               [12]  581 	orl	a,@r0
      00247F 60 3F            [24]  582 	jz	00102$
                           000128   583 	C$event_groups.c$232$4_0$137 ==.
                                    584 ;	src/FreeRTOS/event_groups.c:232: vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | eventCLEAR_EVENTS_ON_EXIT_BIT | eventWAIT_FOR_ALL_BITS ), xTicksToWait );
      002481 E5 0C            [12]  585 	mov	a,_bp
      002483 24 FA            [12]  586 	add	a,#0xfa
      002485 F8               [12]  587 	mov	r0,a
      002486 86 06            [24]  588 	mov	ar6,@r0
      002488 74 05            [12]  589 	mov	a,#0x05
      00248A 08               [12]  590 	inc	r0
      00248B 46               [12]  591 	orl	a,@r0
      00248C FC               [12]  592 	mov	r4,a
      00248D A8 0C            [24]  593 	mov	r0,_bp
      00248F 08               [12]  594 	inc	r0
      002490 74 02            [12]  595 	mov	a,#0x02
      002492 26               [12]  596 	add	a,@r0
      002493 FA               [12]  597 	mov	r2,a
      002494 E4               [12]  598 	clr	a
      002495 08               [12]  599 	inc	r0
      002496 36               [12]  600 	addc	a,@r0
      002497 FD               [12]  601 	mov	r5,a
      002498 08               [12]  602 	inc	r0
      002499 86 07            [24]  603 	mov	ar7,@r0
      00249B E5 0C            [12]  604 	mov	a,_bp
      00249D 24 F8            [12]  605 	add	a,#0xf8
      00249F F8               [12]  606 	mov	r0,a
      0024A0 E6               [12]  607 	mov	a,@r0
      0024A1 C0 E0            [24]  608 	push	acc
      0024A3 08               [12]  609 	inc	r0
      0024A4 E6               [12]  610 	mov	a,@r0
      0024A5 C0 E0            [24]  611 	push	acc
      0024A7 C0 06            [24]  612 	push	ar6
      0024A9 C0 04            [24]  613 	push	ar4
      0024AB 8A 82            [24]  614 	mov	dpl,r2
      0024AD 8D 83            [24]  615 	mov	dph,r5
      0024AF 8F F0            [24]  616 	mov	b,r7
      0024B1 12 0F DA         [24]  617 	lcall	_vTaskPlaceOnUnorderedEventList
      0024B4 E5 81            [12]  618 	mov	a,sp
      0024B6 24 FC            [12]  619 	add	a,#0xfc
      0024B8 F5 81            [12]  620 	mov	sp,a
                           000161   621 	C$event_groups.c$238$4_0$137 ==.
                                    622 ;	src/FreeRTOS/event_groups.c:238: uxReturn = 0;
      0024BA 7B 00            [12]  623 	mov	r3,#0x00
      0024BC 7C 00            [12]  624 	mov	r4,#0x00
      0024BE 80 14            [24]  625 	sjmp	00106$
      0024C0                        626 00102$:
                           000167   627 	C$event_groups.c$244$4_0$138 ==.
                                    628 ;	src/FreeRTOS/event_groups.c:244: uxReturn = pxEventBits->uxEventBits;
      0024C0 A8 0C            [24]  629 	mov	r0,_bp
      0024C2 08               [12]  630 	inc	r0
      0024C3 86 82            [24]  631 	mov	dpl,@r0
      0024C5 08               [12]  632 	inc	r0
      0024C6 86 83            [24]  633 	mov	dph,@r0
      0024C8 08               [12]  634 	inc	r0
      0024C9 86 F0            [24]  635 	mov	b,@r0
      0024CB 12 70 5A         [24]  636 	lcall	__gptrget
      0024CE FB               [12]  637 	mov	r3,a
      0024CF A3               [24]  638 	inc	dptr
      0024D0 12 70 5A         [24]  639 	lcall	__gptrget
      0024D3 FC               [12]  640 	mov	r4,a
                           00017B   641 	C$event_groups.c$245$2_0$134 ==.
                                    642 ;	src/FreeRTOS/event_groups.c:245: xTimeoutOccurred = pdTRUE;
      0024D4                        643 00106$:
                           00017B   644 	C$event_groups.c$249$1_0$133 ==.
                                    645 ;	src/FreeRTOS/event_groups.c:249: xAlreadyYielded = xTaskResumeAll();
      0024D4 C0 04            [24]  646 	push	ar4
      0024D6 C0 03            [24]  647 	push	ar3
      0024D8 12 09 52         [24]  648 	lcall	_xTaskResumeAll
      0024DB AF 82            [24]  649 	mov	r7,dpl
      0024DD D0 03            [24]  650 	pop	ar3
      0024DF D0 04            [24]  651 	pop	ar4
                           000188   652 	C$event_groups.c$251$1_0$133 ==.
                                    653 ;	src/FreeRTOS/event_groups.c:251: if( xTicksToWait != ( TickType_t ) 0 )
      0024E1 E5 0C            [12]  654 	mov	a,_bp
      0024E3 24 F8            [12]  655 	add	a,#0xf8
      0024E5 F8               [12]  656 	mov	r0,a
      0024E6 E6               [12]  657 	mov	a,@r0
      0024E7 08               [12]  658 	inc	r0
      0024E8 46               [12]  659 	orl	a,@r0
      0024E9 70 03            [24]  660 	jnz	00150$
      0024EB 02 25 98         [24]  661 	ljmp	00114$
      0024EE                        662 00150$:
                           000195   663 	C$event_groups.c$253$2_0$139 ==.
                                    664 ;	src/FreeRTOS/event_groups.c:253: if( xAlreadyYielded == pdFALSE )
      0024EE EF               [12]  665 	mov	a,r7
      0024EF 70 03            [24]  666 	jnz	00108$
                           000198   667 	C$event_groups.c$255$3_0$140 ==.
                                    668 ;	src/FreeRTOS/event_groups.c:255: portYIELD_WITHIN_API();
      0024F1 12 64 B5         [24]  669 	lcall	_vPortYield
      0024F4                        670 00108$:
                           00019B   671 	C$event_groups.c$266$2_0$139 ==.
                                    672 ;	src/FreeRTOS/event_groups.c:266: uxReturn = uxTaskResetEventItemValue();
      0024F4 12 15 59         [24]  673 	lcall	_uxTaskResetEventItemValue
      0024F7 AE 82            [24]  674 	mov	r6,dpl
      0024F9 AF 83            [24]  675 	mov	r7,dph
      0024FB E5 0C            [12]  676 	mov	a,_bp
      0024FD 24 07            [12]  677 	add	a,#0x07
      0024FF F8               [12]  678 	mov	r0,a
      002500 A6 06            [24]  679 	mov	@r0,ar6
      002502 08               [12]  680 	inc	r0
      002503 A6 07            [24]  681 	mov	@r0,ar7
                           0001AC   682 	C$event_groups.c$268$2_0$139 ==.
                                    683 ;	src/FreeRTOS/event_groups.c:268: if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
      002505 E5 0C            [12]  684 	mov	a,_bp
      002507 24 07            [12]  685 	add	a,#0x07
      002509 F8               [12]  686 	mov	r0,a
      00250A 08               [12]  687 	inc	r0
      00250B E6               [12]  688 	mov	a,@r0
      00250C 30 E1 03         [24]  689 	jnb	acc.1,00152$
      00250F 02 25 8F         [24]  690 	ljmp	00112$
      002512                        691 00152$:
                           0001B9   692 	C$event_groups.c$271$3_0$142 ==.
                                    693 ;	src/FreeRTOS/event_groups.c:271: taskENTER_CRITICAL();
      002512 C0 E0            [24]  694 	push ACC 
      002514 C0 A8            [24]  695 	push IE 
                                    696 ;	assignBit
      002516 C2 AF            [12]  697 	clr	_EA
                           0001BF   698 	C$event_groups.c$273$4_0$143 ==.
                                    699 ;	src/FreeRTOS/event_groups.c:273: uxReturn = pxEventBits->uxEventBits;
      002518 E5 0C            [12]  700 	mov	a,_bp
      00251A 24 04            [12]  701 	add	a,#0x04
      00251C F8               [12]  702 	mov	r0,a
      00251D 86 82            [24]  703 	mov	dpl,@r0
      00251F 08               [12]  704 	inc	r0
      002520 86 83            [24]  705 	mov	dph,@r0
      002522 08               [12]  706 	inc	r0
      002523 86 F0            [24]  707 	mov	b,@r0
      002525 12 70 5A         [24]  708 	lcall	__gptrget
      002528 FA               [12]  709 	mov	r2,a
      002529 A3               [24]  710 	inc	dptr
      00252A 12 70 5A         [24]  711 	lcall	__gptrget
      00252D FD               [12]  712 	mov	r5,a
      00252E E5 0C            [12]  713 	mov	a,_bp
      002530 24 07            [12]  714 	add	a,#0x07
      002532 F8               [12]  715 	mov	r0,a
      002533 A6 02            [24]  716 	mov	@r0,ar2
      002535 08               [12]  717 	inc	r0
      002536 A6 05            [24]  718 	mov	@r0,ar5
                           0001DF   719 	C$event_groups.c$279$4_0$143 ==.
                                    720 ;	src/FreeRTOS/event_groups.c:279: if( ( uxReturn & uxBitsToWaitFor ) == uxBitsToWaitFor )
      002538 E5 0C            [12]  721 	mov	a,_bp
      00253A 24 07            [12]  722 	add	a,#0x07
      00253C F8               [12]  723 	mov	r0,a
      00253D E5 0C            [12]  724 	mov	a,_bp
      00253F 24 FA            [12]  725 	add	a,#0xfa
      002541 F9               [12]  726 	mov	r1,a
      002542 E7               [12]  727 	mov	a,@r1
      002543 56               [12]  728 	anl	a,@r0
      002544 FE               [12]  729 	mov	r6,a
      002545 09               [12]  730 	inc	r1
      002546 E7               [12]  731 	mov	a,@r1
      002547 08               [12]  732 	inc	r0
      002548 56               [12]  733 	anl	a,@r0
      002549 FF               [12]  734 	mov	r7,a
      00254A E5 0C            [12]  735 	mov	a,_bp
      00254C 24 FA            [12]  736 	add	a,#0xfa
      00254E F8               [12]  737 	mov	r0,a
      00254F E6               [12]  738 	mov	a,@r0
      002550 B5 06 07         [24]  739 	cjne	a,ar6,00153$
      002553 08               [12]  740 	inc	r0
      002554 E6               [12]  741 	mov	a,@r0
      002555 B5 07 02         [24]  742 	cjne	a,ar7,00153$
      002558 80 02            [24]  743 	sjmp	00154$
      00255A                        744 00153$:
      00255A 80 28            [24]  745 	sjmp	00110$
      00255C                        746 00154$:
                           000203   747 	C$event_groups.c$281$5_0$144 ==.
                                    748 ;	src/FreeRTOS/event_groups.c:281: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
      00255C E5 0C            [12]  749 	mov	a,_bp
      00255E 24 FA            [12]  750 	add	a,#0xfa
      002560 F8               [12]  751 	mov	r0,a
      002561 E6               [12]  752 	mov	a,@r0
      002562 F4               [12]  753 	cpl	a
      002563 FE               [12]  754 	mov	r6,a
      002564 08               [12]  755 	inc	r0
      002565 E6               [12]  756 	mov	a,@r0
      002566 F4               [12]  757 	cpl	a
      002567 FF               [12]  758 	mov	r7,a
      002568 EE               [12]  759 	mov	a,r6
      002569 52 02            [12]  760 	anl	ar2,a
      00256B EF               [12]  761 	mov	a,r7
      00256C 52 05            [12]  762 	anl	ar5,a
      00256E E5 0C            [12]  763 	mov	a,_bp
      002570 24 04            [12]  764 	add	a,#0x04
      002572 F8               [12]  765 	mov	r0,a
      002573 86 82            [24]  766 	mov	dpl,@r0
      002575 08               [12]  767 	inc	r0
      002576 86 83            [24]  768 	mov	dph,@r0
      002578 08               [12]  769 	inc	r0
      002579 86 F0            [24]  770 	mov	b,@r0
      00257B EA               [12]  771 	mov	a,r2
      00257C 12 66 A0         [24]  772 	lcall	__gptrput
      00257F A3               [24]  773 	inc	dptr
      002580 ED               [12]  774 	mov	a,r5
      002581 12 66 A0         [24]  775 	lcall	__gptrput
      002584                        776 00110$:
                           00022B   777 	C$event_groups.c$288$3_0$142 ==.
                                    778 ;	src/FreeRTOS/event_groups.c:288: taskEXIT_CRITICAL();
      002584 D0 E0            [24]  779 	pop ACC 
      002586 53 E0 80         [24]  780 	anl	_ACC,#0x80
      002589 E5 E0            [12]  781 	mov	a,_ACC
      00258B 42 A8            [12]  782 	orl	_IE,a
      00258D D0 E0            [24]  783 	pop ACC 
                           000236   784 	C$event_groups.c$290$2_0$139 ==.
                                    785 ;	src/FreeRTOS/event_groups.c:290: xTimeoutOccurred = pdTRUE;
      00258F                        786 00112$:
                           000236   787 	C$event_groups.c$299$2_0$139 ==.
                                    788 ;	src/FreeRTOS/event_groups.c:299: uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
      00258F E5 0C            [12]  789 	mov	a,_bp
      002591 24 07            [12]  790 	add	a,#0x07
      002593 F8               [12]  791 	mov	r0,a
      002594 86 03            [24]  792 	mov	ar3,@r0
      002596 7C 00            [12]  793 	mov	r4,#0x00
      002598                        794 00114$:
                           00023F   795 	C$event_groups.c$307$1_0$133 ==.
                                    796 ;	src/FreeRTOS/event_groups.c:307: return uxReturn;
      002598 8B 82            [24]  797 	mov	dpl,r3
      00259A 8C 83            [24]  798 	mov	dph,r4
                           000243   799 	C$event_groups.c$308$1_0$133 ==.
                                    800 ;	src/FreeRTOS/event_groups.c:308: }
      00259C 85 0C 81         [24]  801 	mov	sp,_bp
      00259F D0 0C            [24]  802 	pop	_bp
                           000248   803 	C$event_groups.c$308$1_0$133 ==.
                           000248   804 	XG$xEventGroupSync$0$0 ==.
      0025A1 22               [24]  805 	ret
                                    806 ;------------------------------------------------------------
                                    807 ;Allocation info for local variables in function 'xEventGroupWaitBits'
                                    808 ;------------------------------------------------------------
                                    809 ;uxBitsToWaitFor           Allocated to stack - _bp -4
                                    810 ;xClearOnExit              Allocated to stack - _bp -5
                                    811 ;xWaitForAllBits           Allocated to stack - _bp -6
                                    812 ;xTicksToWait              Allocated to stack - _bp -8
                                    813 ;xEventGroup               Allocated to stack - _bp +1
                                    814 ;pxEventBits               Allocated to stack - _bp +4
                                    815 ;uxReturn                  Allocated to registers r6 r7 
                                    816 ;uxControlBits             Allocated to registers r7 r6 
                                    817 ;xWaitConditionMet         Allocated to registers r4 
                                    818 ;xAlreadyYielded           Allocated to registers r7 
                                    819 ;xTimeoutOccurred          Allocated to registers 
                                    820 ;uxCurrentEventBits        Allocated to registers r5 r2 
                                    821 ;sloc0                     Allocated to stack - _bp +16
                                    822 ;------------------------------------------------------------
                           000249   823 	G$xEventGroupWaitBits$0$0 ==.
                           000249   824 	C$event_groups.c$311$1_0$148 ==.
                                    825 ;	src/FreeRTOS/event_groups.c:311: EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait )
                                    826 ;	-----------------------------------------
                                    827 ;	 function xEventGroupWaitBits
                                    828 ;	-----------------------------------------
      0025A2                        829 _xEventGroupWaitBits:
      0025A2 C0 0C            [24]  830 	push	_bp
      0025A4 85 81 0C         [24]  831 	mov	_bp,sp
      0025A7 C0 82            [24]  832 	push	dpl
      0025A9 C0 83            [24]  833 	push	dph
      0025AB C0 F0            [24]  834 	push	b
      0025AD 05 81            [12]  835 	inc	sp
      0025AF 05 81            [12]  836 	inc	sp
      0025B1 05 81            [12]  837 	inc	sp
                           00025A   838 	C$event_groups.c$313$2_0$148 ==.
                                    839 ;	src/FreeRTOS/event_groups.c:313: EventGroup_t *pxEventBits = xEventGroup;
      0025B3 A8 0C            [24]  840 	mov	r0,_bp
      0025B5 08               [12]  841 	inc	r0
      0025B6 E5 0C            [12]  842 	mov	a,_bp
      0025B8 24 04            [12]  843 	add	a,#0x04
      0025BA F9               [12]  844 	mov	r1,a
      0025BB E6               [12]  845 	mov	a,@r0
      0025BC F7               [12]  846 	mov	@r1,a
      0025BD 08               [12]  847 	inc	r0
      0025BE 09               [12]  848 	inc	r1
      0025BF E6               [12]  849 	mov	a,@r0
      0025C0 F7               [12]  850 	mov	@r1,a
      0025C1 08               [12]  851 	inc	r0
      0025C2 09               [12]  852 	inc	r1
      0025C3 E6               [12]  853 	mov	a,@r0
      0025C4 F7               [12]  854 	mov	@r1,a
                           00026C   855 	C$event_groups.c$314$2_0$148 ==.
                                    856 ;	src/FreeRTOS/event_groups.c:314: EventBits_t uxReturn, uxControlBits = 0;
      0025C5 7F 00            [12]  857 	mov	r7,#0x00
      0025C7 7E 00            [12]  858 	mov	r6,#0x00
                           000270   859 	C$event_groups.c$329$1_0$148 ==.
                                    860 ;	src/FreeRTOS/event_groups.c:329: vTaskSuspendAll();
      0025C9 C0 07            [24]  861 	push	ar7
      0025CB C0 06            [24]  862 	push	ar6
      0025CD 12 09 4A         [24]  863 	lcall	_vTaskSuspendAll
                           000277   864 	C$event_groups.c$331$2_0$149 ==.
                                    865 ;	src/FreeRTOS/event_groups.c:331: const EventBits_t uxCurrentEventBits = pxEventBits->uxEventBits;
      0025D0 A8 0C            [24]  866 	mov	r0,_bp
      0025D2 08               [12]  867 	inc	r0
      0025D3 86 82            [24]  868 	mov	dpl,@r0
      0025D5 08               [12]  869 	inc	r0
      0025D6 86 83            [24]  870 	mov	dph,@r0
      0025D8 08               [12]  871 	inc	r0
      0025D9 86 F0            [24]  872 	mov	b,@r0
      0025DB 12 70 5A         [24]  873 	lcall	__gptrget
      0025DE FD               [12]  874 	mov	r5,a
      0025DF A3               [24]  875 	inc	dptr
      0025E0 12 70 5A         [24]  876 	lcall	__gptrget
      0025E3 FA               [12]  877 	mov	r2,a
                           00028B   878 	C$event_groups.c$334$2_0$149 ==.
                                    879 ;	src/FreeRTOS/event_groups.c:334: xWaitConditionMet = prvTestWaitCondition( uxCurrentEventBits, uxBitsToWaitFor, xWaitForAllBits );
      0025E4 C0 05            [24]  880 	push	ar5
      0025E6 C0 02            [24]  881 	push	ar2
      0025E8 E5 0C            [12]  882 	mov	a,_bp
      0025EA 24 FA            [12]  883 	add	a,#0xfa
      0025EC F8               [12]  884 	mov	r0,a
      0025ED E6               [12]  885 	mov	a,@r0
      0025EE C0 E0            [24]  886 	push	acc
      0025F0 E5 0C            [12]  887 	mov	a,_bp
      0025F2 24 FC            [12]  888 	add	a,#0xfc
      0025F4 F8               [12]  889 	mov	r0,a
      0025F5 E6               [12]  890 	mov	a,@r0
      0025F6 C0 E0            [24]  891 	push	acc
      0025F8 08               [12]  892 	inc	r0
      0025F9 E6               [12]  893 	mov	a,@r0
      0025FA C0 E0            [24]  894 	push	acc
      0025FC 8D 82            [24]  895 	mov	dpl,r5
      0025FE 8A 83            [24]  896 	mov	dph,r2
      002600 12 2B 92         [24]  897 	lcall	_prvTestWaitCondition
      002603 AC 82            [24]  898 	mov	r4,dpl
      002605 15 81            [12]  899 	dec	sp
      002607 15 81            [12]  900 	dec	sp
      002609 15 81            [12]  901 	dec	sp
      00260B D0 02            [24]  902 	pop	ar2
      00260D D0 05            [24]  903 	pop	ar5
      00260F D0 06            [24]  904 	pop	ar6
      002611 D0 07            [24]  905 	pop	ar7
                           0002BA   906 	C$event_groups.c$336$2_0$149 ==.
                                    907 ;	src/FreeRTOS/event_groups.c:336: if( xWaitConditionMet != pdFALSE )
      002613 EC               [12]  908 	mov	a,r4
      002614 60 5C            [24]  909 	jz	00111$
                           0002BD   910 	C$event_groups.c$340$3_0$150 ==.
                                    911 ;	src/FreeRTOS/event_groups.c:340: uxReturn = uxCurrentEventBits;
      002616 8D 03            [24]  912 	mov	ar3,r5
      002618 8A 04            [24]  913 	mov	ar4,r2
                           0002C1   914 	C$event_groups.c$341$3_0$150 ==.
                                    915 ;	src/FreeRTOS/event_groups.c:341: xTicksToWait = ( TickType_t ) 0;
      00261A E5 0C            [12]  916 	mov	a,_bp
      00261C 24 F8            [12]  917 	add	a,#0xf8
      00261E F8               [12]  918 	mov	r0,a
      00261F E4               [12]  919 	clr	a
      002620 F6               [12]  920 	mov	@r0,a
      002621 08               [12]  921 	inc	r0
      002622 F6               [12]  922 	mov	@r0,a
                           0002CA   923 	C$event_groups.c$344$3_0$150 ==.
                                    924 ;	src/FreeRTOS/event_groups.c:344: if( xClearOnExit != pdFALSE )
      002623 E5 0C            [12]  925 	mov	a,_bp
      002625 24 FB            [12]  926 	add	a,#0xfb
      002627 F8               [12]  927 	mov	r0,a
      002628 E6               [12]  928 	mov	a,@r0
      002629 70 03            [24]  929 	jnz	00176$
      00262B 02 26 D8         [24]  930 	ljmp	00112$
      00262E                        931 00176$:
                           0002D5   932 	C$event_groups.c$346$1_0$148 ==.
                                    933 ;	src/FreeRTOS/event_groups.c:346: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
      00262E C0 03            [24]  934 	push	ar3
      002630 C0 04            [24]  935 	push	ar4
      002632 A8 0C            [24]  936 	mov	r0,_bp
      002634 08               [12]  937 	inc	r0
      002635 86 82            [24]  938 	mov	dpl,@r0
      002637 08               [12]  939 	inc	r0
      002638 86 83            [24]  940 	mov	dph,@r0
      00263A 08               [12]  941 	inc	r0
      00263B 86 F0            [24]  942 	mov	b,@r0
      00263D 12 70 5A         [24]  943 	lcall	__gptrget
      002640 FA               [12]  944 	mov	r2,a
      002641 A3               [24]  945 	inc	dptr
      002642 12 70 5A         [24]  946 	lcall	__gptrget
      002645 FC               [12]  947 	mov	r4,a
      002646 E5 0C            [12]  948 	mov	a,_bp
      002648 24 FC            [12]  949 	add	a,#0xfc
      00264A F8               [12]  950 	mov	r0,a
      00264B E6               [12]  951 	mov	a,@r0
      00264C F4               [12]  952 	cpl	a
      00264D FB               [12]  953 	mov	r3,a
      00264E 08               [12]  954 	inc	r0
      00264F E6               [12]  955 	mov	a,@r0
      002650 F4               [12]  956 	cpl	a
      002651 FF               [12]  957 	mov	r7,a
      002652 EB               [12]  958 	mov	a,r3
      002653 52 02            [12]  959 	anl	ar2,a
      002655 EF               [12]  960 	mov	a,r7
      002656 52 04            [12]  961 	anl	ar4,a
      002658 A8 0C            [24]  962 	mov	r0,_bp
      00265A 08               [12]  963 	inc	r0
      00265B 86 82            [24]  964 	mov	dpl,@r0
      00265D 08               [12]  965 	inc	r0
      00265E 86 83            [24]  966 	mov	dph,@r0
      002660 08               [12]  967 	inc	r0
      002661 86 F0            [24]  968 	mov	b,@r0
      002663 EA               [12]  969 	mov	a,r2
      002664 12 66 A0         [24]  970 	lcall	__gptrput
      002667 A3               [24]  971 	inc	dptr
      002668 EC               [12]  972 	mov	a,r4
      002669 12 66 A0         [24]  973 	lcall	__gptrput
      00266C D0 04            [24]  974 	pop	ar4
      00266E D0 03            [24]  975 	pop	ar3
      002670 80 66            [24]  976 	sjmp	00112$
      002672                        977 00111$:
                           000319   978 	C$event_groups.c$353$2_0$149 ==.
                                    979 ;	src/FreeRTOS/event_groups.c:353: else if( xTicksToWait == ( TickType_t ) 0 )
      002672 E5 0C            [12]  980 	mov	a,_bp
      002674 24 F8            [12]  981 	add	a,#0xf8
      002676 F8               [12]  982 	mov	r0,a
      002677 E6               [12]  983 	mov	a,@r0
      002678 08               [12]  984 	inc	r0
      002679 46               [12]  985 	orl	a,@r0
      00267A 70 06            [24]  986 	jnz	00108$
                           000323   987 	C$event_groups.c$357$3_0$153 ==.
                                    988 ;	src/FreeRTOS/event_groups.c:357: uxReturn = uxCurrentEventBits;
      00267C 8D 03            [24]  989 	mov	ar3,r5
      00267E 8A 04            [24]  990 	mov	ar4,r2
                           000327   991 	C$event_groups.c$358$2_0$149 ==.
                                    992 ;	src/FreeRTOS/event_groups.c:358: xTimeoutOccurred = pdTRUE;
      002680 80 56            [24]  993 	sjmp	00112$
      002682                        994 00108$:
                           000329   995 	C$event_groups.c$366$3_0$154 ==.
                                    996 ;	src/FreeRTOS/event_groups.c:366: if( xClearOnExit != pdFALSE )
      002682 E5 0C            [12]  997 	mov	a,_bp
      002684 24 FB            [12]  998 	add	a,#0xfb
      002686 F8               [12]  999 	mov	r0,a
      002687 E6               [12] 1000 	mov	a,@r0
      002688 60 04            [24] 1001 	jz	00104$
                           000331  1002 	C$event_groups.c$368$4_0$155 ==.
                                   1003 ;	src/FreeRTOS/event_groups.c:368: uxControlBits |= eventCLEAR_EVENTS_ON_EXIT_BIT;
      00268A 7F 00            [12] 1004 	mov	r7,#0x00
      00268C 7E 01            [12] 1005 	mov	r6,#0x01
      00268E                       1006 00104$:
                           000335  1007 	C$event_groups.c$375$3_0$154 ==.
                                   1008 ;	src/FreeRTOS/event_groups.c:375: if( xWaitForAllBits != pdFALSE )
      00268E E5 0C            [12] 1009 	mov	a,_bp
      002690 24 FA            [12] 1010 	add	a,#0xfa
      002692 F8               [12] 1011 	mov	r0,a
      002693 E6               [12] 1012 	mov	a,@r0
      002694 60 03            [24] 1013 	jz	00106$
                           00033D  1014 	C$event_groups.c$377$4_0$157 ==.
                                   1015 ;	src/FreeRTOS/event_groups.c:377: uxControlBits |= eventWAIT_FOR_ALL_BITS;
      002696 43 06 04         [24] 1016 	orl	ar6,#0x04
      002699                       1017 00106$:
                           000340  1018 	C$event_groups.c$387$3_0$154 ==.
                                   1019 ;	src/FreeRTOS/event_groups.c:387: vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | uxControlBits ), xTicksToWait );
      002699 E5 0C            [12] 1020 	mov	a,_bp
      00269B 24 FC            [12] 1021 	add	a,#0xfc
      00269D F8               [12] 1022 	mov	r0,a
      00269E EF               [12] 1023 	mov	a,r7
      00269F 46               [12] 1024 	orl	a,@r0
      0026A0 FC               [12] 1025 	mov	r4,a
      0026A1 EE               [12] 1026 	mov	a,r6
      0026A2 08               [12] 1027 	inc	r0
      0026A3 46               [12] 1028 	orl	a,@r0
      0026A4 FE               [12] 1029 	mov	r6,a
      0026A5 E5 0C            [12] 1030 	mov	a,_bp
      0026A7 24 04            [12] 1031 	add	a,#0x04
      0026A9 F8               [12] 1032 	mov	r0,a
      0026AA 74 02            [12] 1033 	mov	a,#0x02
      0026AC 26               [12] 1034 	add	a,@r0
      0026AD FA               [12] 1035 	mov	r2,a
      0026AE E4               [12] 1036 	clr	a
      0026AF 08               [12] 1037 	inc	r0
      0026B0 36               [12] 1038 	addc	a,@r0
      0026B1 FD               [12] 1039 	mov	r5,a
      0026B2 08               [12] 1040 	inc	r0
      0026B3 86 07            [24] 1041 	mov	ar7,@r0
      0026B5 E5 0C            [12] 1042 	mov	a,_bp
      0026B7 24 F8            [12] 1043 	add	a,#0xf8
      0026B9 F8               [12] 1044 	mov	r0,a
      0026BA E6               [12] 1045 	mov	a,@r0
      0026BB C0 E0            [24] 1046 	push	acc
      0026BD 08               [12] 1047 	inc	r0
      0026BE E6               [12] 1048 	mov	a,@r0
      0026BF C0 E0            [24] 1049 	push	acc
      0026C1 C0 04            [24] 1050 	push	ar4
      0026C3 C0 06            [24] 1051 	push	ar6
      0026C5 8A 82            [24] 1052 	mov	dpl,r2
      0026C7 8D 83            [24] 1053 	mov	dph,r5
      0026C9 8F F0            [24] 1054 	mov	b,r7
      0026CB 12 0F DA         [24] 1055 	lcall	_vTaskPlaceOnUnorderedEventList
      0026CE E5 81            [12] 1056 	mov	a,sp
      0026D0 24 FC            [12] 1057 	add	a,#0xfc
      0026D2 F5 81            [12] 1058 	mov	sp,a
                           00037B  1059 	C$event_groups.c$392$3_0$154 ==.
                                   1060 ;	src/FreeRTOS/event_groups.c:392: uxReturn = 0;
      0026D4 7B 00            [12] 1061 	mov	r3,#0x00
      0026D6 7C 00            [12] 1062 	mov	r4,#0x00
      0026D8                       1063 00112$:
                           00037F  1064 	C$event_groups.c$397$1_0$148 ==.
                                   1065 ;	src/FreeRTOS/event_groups.c:397: xAlreadyYielded = xTaskResumeAll();
      0026D8 C0 04            [24] 1066 	push	ar4
      0026DA C0 03            [24] 1067 	push	ar3
      0026DC 12 09 52         [24] 1068 	lcall	_xTaskResumeAll
      0026DF AF 82            [24] 1069 	mov	r7,dpl
      0026E1 D0 03            [24] 1070 	pop	ar3
      0026E3 D0 04            [24] 1071 	pop	ar4
                           00038C  1072 	C$event_groups.c$399$1_0$148 ==.
                                   1073 ;	src/FreeRTOS/event_groups.c:399: if( xTicksToWait != ( TickType_t ) 0 )
      0026E5 E5 0C            [12] 1074 	mov	a,_bp
      0026E7 24 F8            [12] 1075 	add	a,#0xf8
      0026E9 F8               [12] 1076 	mov	r0,a
      0026EA E6               [12] 1077 	mov	a,@r0
      0026EB 08               [12] 1078 	inc	r0
      0026EC 46               [12] 1079 	orl	a,@r0
      0026ED 70 03            [24] 1080 	jnz	00180$
      0026EF 02 27 AD         [24] 1081 	ljmp	00122$
      0026F2                       1082 00180$:
                           000399  1083 	C$event_groups.c$401$2_0$159 ==.
                                   1084 ;	src/FreeRTOS/event_groups.c:401: if( xAlreadyYielded == pdFALSE )
      0026F2 EF               [12] 1085 	mov	a,r7
      0026F3 70 03            [24] 1086 	jnz	00114$
                           00039C  1087 	C$event_groups.c$403$3_0$160 ==.
                                   1088 ;	src/FreeRTOS/event_groups.c:403: portYIELD_WITHIN_API();
      0026F5 12 64 B5         [24] 1089 	lcall	_vPortYield
      0026F8                       1090 00114$:
                           00039F  1091 	C$event_groups.c$414$2_0$159 ==.
                                   1092 ;	src/FreeRTOS/event_groups.c:414: uxReturn = uxTaskResetEventItemValue();
      0026F8 12 15 59         [24] 1093 	lcall	_uxTaskResetEventItemValue
      0026FB AE 82            [24] 1094 	mov	r6,dpl
                           0003A4  1095 	C$event_groups.c$416$2_0$159 ==.
                                   1096 ;	src/FreeRTOS/event_groups.c:416: if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
      0026FD E5 83            [12] 1097 	mov	a,dph
      0026FF FF               [12] 1098 	mov	r7,a
      002700 30 E1 03         [24] 1099 	jnb	acc.1,00182$
      002703 02 27 A9         [24] 1100 	ljmp	00120$
      002706                       1101 00182$:
                           0003AD  1102 	C$event_groups.c$418$3_0$162 ==.
                                   1103 ;	src/FreeRTOS/event_groups.c:418: taskENTER_CRITICAL();
      002706 C0 E0            [24] 1104 	push ACC 
      002708 C0 A8            [24] 1105 	push IE 
                                   1106 ;	assignBit
      00270A C2 AF            [12] 1107 	clr	_EA
                           0003B3  1108 	C$event_groups.c$421$4_0$163 ==.
                                   1109 ;	src/FreeRTOS/event_groups.c:421: uxReturn = pxEventBits->uxEventBits;
      00270C E5 0C            [12] 1110 	mov	a,_bp
      00270E 24 04            [12] 1111 	add	a,#0x04
      002710 F8               [12] 1112 	mov	r0,a
      002711 86 82            [24] 1113 	mov	dpl,@r0
      002713 08               [12] 1114 	inc	r0
      002714 86 83            [24] 1115 	mov	dph,@r0
      002716 08               [12] 1116 	inc	r0
      002717 86 F0            [24] 1117 	mov	b,@r0
      002719 12 70 5A         [24] 1118 	lcall	__gptrget
      00271C FE               [12] 1119 	mov	r6,a
      00271D A3               [24] 1120 	inc	dptr
      00271E 12 70 5A         [24] 1121 	lcall	__gptrget
      002721 FF               [12] 1122 	mov	r7,a
                           0003C9  1123 	C$event_groups.c$425$4_0$163 ==.
                                   1124 ;	src/FreeRTOS/event_groups.c:425: if( prvTestWaitCondition( uxReturn, uxBitsToWaitFor, xWaitForAllBits ) != pdFALSE )
      002722 C0 07            [24] 1125 	push	ar7
      002724 C0 06            [24] 1126 	push	ar6
      002726 E5 0C            [12] 1127 	mov	a,_bp
      002728 24 FA            [12] 1128 	add	a,#0xfa
      00272A F8               [12] 1129 	mov	r0,a
      00272B E6               [12] 1130 	mov	a,@r0
      00272C C0 E0            [24] 1131 	push	acc
      00272E E5 0C            [12] 1132 	mov	a,_bp
      002730 24 FC            [12] 1133 	add	a,#0xfc
      002732 F8               [12] 1134 	mov	r0,a
      002733 E6               [12] 1135 	mov	a,@r0
      002734 C0 E0            [24] 1136 	push	acc
      002736 08               [12] 1137 	inc	r0
      002737 E6               [12] 1138 	mov	a,@r0
      002738 C0 E0            [24] 1139 	push	acc
      00273A 8E 82            [24] 1140 	mov	dpl,r6
      00273C 8F 83            [24] 1141 	mov	dph,r7
      00273E 12 2B 92         [24] 1142 	lcall	_prvTestWaitCondition
      002741 AD 82            [24] 1143 	mov	r5,dpl
      002743 15 81            [12] 1144 	dec	sp
      002745 15 81            [12] 1145 	dec	sp
      002747 15 81            [12] 1146 	dec	sp
      002749 D0 06            [24] 1147 	pop	ar6
      00274B D0 07            [24] 1148 	pop	ar7
      00274D ED               [12] 1149 	mov	a,r5
      00274E 60 4E            [24] 1150 	jz	00118$
                           0003F7  1151 	C$event_groups.c$427$5_0$164 ==.
                                   1152 ;	src/FreeRTOS/event_groups.c:427: if( xClearOnExit != pdFALSE )
      002750 E5 0C            [12] 1153 	mov	a,_bp
      002752 24 FB            [12] 1154 	add	a,#0xfb
      002754 F8               [12] 1155 	mov	r0,a
      002755 E6               [12] 1156 	mov	a,@r0
      002756 60 46            [24] 1157 	jz	00118$
                           0003FF  1158 	C$event_groups.c$429$1_0$148 ==.
                                   1159 ;	src/FreeRTOS/event_groups.c:429: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
      002758 C0 06            [24] 1160 	push	ar6
      00275A C0 07            [24] 1161 	push	ar7
      00275C E5 0C            [12] 1162 	mov	a,_bp
      00275E 24 04            [12] 1163 	add	a,#0x04
      002760 F8               [12] 1164 	mov	r0,a
      002761 86 82            [24] 1165 	mov	dpl,@r0
      002763 08               [12] 1166 	inc	r0
      002764 86 83            [24] 1167 	mov	dph,@r0
      002766 08               [12] 1168 	inc	r0
      002767 86 F0            [24] 1169 	mov	b,@r0
      002769 12 70 5A         [24] 1170 	lcall	__gptrget
      00276C FA               [12] 1171 	mov	r2,a
      00276D A3               [24] 1172 	inc	dptr
      00276E 12 70 5A         [24] 1173 	lcall	__gptrget
      002771 FD               [12] 1174 	mov	r5,a
      002772 E5 0C            [12] 1175 	mov	a,_bp
      002774 24 FC            [12] 1176 	add	a,#0xfc
      002776 F8               [12] 1177 	mov	r0,a
      002777 E6               [12] 1178 	mov	a,@r0
      002778 F4               [12] 1179 	cpl	a
      002779 FE               [12] 1180 	mov	r6,a
      00277A 08               [12] 1181 	inc	r0
      00277B E6               [12] 1182 	mov	a,@r0
      00277C F4               [12] 1183 	cpl	a
      00277D FF               [12] 1184 	mov	r7,a
      00277E EE               [12] 1185 	mov	a,r6
      00277F 52 02            [12] 1186 	anl	ar2,a
      002781 EF               [12] 1187 	mov	a,r7
      002782 52 05            [12] 1188 	anl	ar5,a
      002784 E5 0C            [12] 1189 	mov	a,_bp
      002786 24 04            [12] 1190 	add	a,#0x04
      002788 F8               [12] 1191 	mov	r0,a
      002789 86 82            [24] 1192 	mov	dpl,@r0
      00278B 08               [12] 1193 	inc	r0
      00278C 86 83            [24] 1194 	mov	dph,@r0
      00278E 08               [12] 1195 	inc	r0
      00278F 86 F0            [24] 1196 	mov	b,@r0
      002791 EA               [12] 1197 	mov	a,r2
      002792 12 66 A0         [24] 1198 	lcall	__gptrput
      002795 A3               [24] 1199 	inc	dptr
      002796 ED               [12] 1200 	mov	a,r5
      002797 12 66 A0         [24] 1201 	lcall	__gptrput
                           000441  1202 	C$event_groups.c$457$1_0$148 ==.
                                   1203 ;	src/FreeRTOS/event_groups.c:457: return uxReturn;
      00279A D0 07            [24] 1204 	pop	ar7
      00279C D0 06            [24] 1205 	pop	ar6
                           000445  1206 	C$event_groups.c$429$4_0$163 ==.
                                   1207 ;	src/FreeRTOS/event_groups.c:429: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
      00279E                       1208 00118$:
                           000445  1209 	C$event_groups.c$442$3_0$162 ==.
                                   1210 ;	src/FreeRTOS/event_groups.c:442: taskEXIT_CRITICAL();
      00279E D0 E0            [24] 1211 	pop ACC 
      0027A0 53 E0 80         [24] 1212 	anl	_ACC,#0x80
      0027A3 E5 E0            [12] 1213 	mov	a,_ACC
      0027A5 42 A8            [12] 1214 	orl	_IE,a
      0027A7 D0 E0            [24] 1215 	pop ACC 
      0027A9                       1216 00120$:
                           000450  1217 	C$event_groups.c$450$2_0$159 ==.
                                   1218 ;	src/FreeRTOS/event_groups.c:450: uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
      0027A9 8E 03            [24] 1219 	mov	ar3,r6
      0027AB 7C 00            [12] 1220 	mov	r4,#0x00
      0027AD                       1221 00122$:
                           000454  1222 	C$event_groups.c$457$1_0$148 ==.
                                   1223 ;	src/FreeRTOS/event_groups.c:457: return uxReturn;
      0027AD 8B 82            [24] 1224 	mov	dpl,r3
      0027AF 8C 83            [24] 1225 	mov	dph,r4
                           000458  1226 	C$event_groups.c$458$1_0$148 ==.
                                   1227 ;	src/FreeRTOS/event_groups.c:458: }
      0027B1 85 0C 81         [24] 1228 	mov	sp,_bp
      0027B4 D0 0C            [24] 1229 	pop	_bp
                           00045D  1230 	C$event_groups.c$458$1_0$148 ==.
                           00045D  1231 	XG$xEventGroupWaitBits$0$0 ==.
      0027B6 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'xEventGroupClearBits'
                                   1235 ;------------------------------------------------------------
                                   1236 ;uxBitsToClear             Allocated to stack - _bp -4
                                   1237 ;xEventGroup               Allocated to stack - _bp +1
                                   1238 ;pxEventBits               Allocated to registers 
                                   1239 ;uxReturn                  Allocated to registers r2 r4 
                                   1240 ;------------------------------------------------------------
                           00045E  1241 	G$xEventGroupClearBits$0$0 ==.
                           00045E  1242 	C$event_groups.c$461$1_0$170 ==.
                                   1243 ;	src/FreeRTOS/event_groups.c:461: EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function xEventGroupClearBits
                                   1246 ;	-----------------------------------------
      0027B7                       1247 _xEventGroupClearBits:
      0027B7 C0 0C            [24] 1248 	push	_bp
      0027B9 85 81 0C         [24] 1249 	mov	_bp,sp
      0027BC C0 82            [24] 1250 	push	dpl
      0027BE C0 83            [24] 1251 	push	dph
      0027C0 C0 F0            [24] 1252 	push	b
                           000469  1253 	C$event_groups.c$471$1_0$170 ==.
                                   1254 ;	src/FreeRTOS/event_groups.c:471: taskENTER_CRITICAL();
      0027C2 C0 E0            [24] 1255 	push ACC 
      0027C4 C0 A8            [24] 1256 	push IE 
                                   1257 ;	assignBit
      0027C6 C2 AF            [12] 1258 	clr	_EA
                           00046F  1259 	C$event_groups.c$477$2_0$171 ==.
                                   1260 ;	src/FreeRTOS/event_groups.c:477: uxReturn = pxEventBits->uxEventBits;
      0027C8 A8 0C            [24] 1261 	mov	r0,_bp
      0027CA 08               [12] 1262 	inc	r0
      0027CB 86 82            [24] 1263 	mov	dpl,@r0
      0027CD 08               [12] 1264 	inc	r0
      0027CE 86 83            [24] 1265 	mov	dph,@r0
      0027D0 08               [12] 1266 	inc	r0
      0027D1 86 F0            [24] 1267 	mov	b,@r0
      0027D3 12 70 5A         [24] 1268 	lcall	__gptrget
      0027D6 FE               [12] 1269 	mov	r6,a
      0027D7 A3               [24] 1270 	inc	dptr
      0027D8 12 70 5A         [24] 1271 	lcall	__gptrget
      0027DB FD               [12] 1272 	mov	r5,a
      0027DC 8E 02            [24] 1273 	mov	ar2,r6
      0027DE 8D 04            [24] 1274 	mov	ar4,r5
                           000487  1275 	C$event_groups.c$480$2_0$171 ==.
                                   1276 ;	src/FreeRTOS/event_groups.c:480: pxEventBits->uxEventBits &= ~uxBitsToClear;
      0027E0 E5 0C            [12] 1277 	mov	a,_bp
      0027E2 24 FC            [12] 1278 	add	a,#0xfc
      0027E4 F8               [12] 1279 	mov	r0,a
      0027E5 E6               [12] 1280 	mov	a,@r0
      0027E6 F4               [12] 1281 	cpl	a
      0027E7 FB               [12] 1282 	mov	r3,a
      0027E8 08               [12] 1283 	inc	r0
      0027E9 E6               [12] 1284 	mov	a,@r0
      0027EA F4               [12] 1285 	cpl	a
      0027EB FF               [12] 1286 	mov	r7,a
      0027EC EE               [12] 1287 	mov	a,r6
      0027ED 52 03            [12] 1288 	anl	ar3,a
      0027EF ED               [12] 1289 	mov	a,r5
      0027F0 52 07            [12] 1290 	anl	ar7,a
      0027F2 A8 0C            [24] 1291 	mov	r0,_bp
      0027F4 08               [12] 1292 	inc	r0
      0027F5 86 82            [24] 1293 	mov	dpl,@r0
      0027F7 08               [12] 1294 	inc	r0
      0027F8 86 83            [24] 1295 	mov	dph,@r0
      0027FA 08               [12] 1296 	inc	r0
      0027FB 86 F0            [24] 1297 	mov	b,@r0
      0027FD EB               [12] 1298 	mov	a,r3
      0027FE 12 66 A0         [24] 1299 	lcall	__gptrput
      002801 A3               [24] 1300 	inc	dptr
      002802 EF               [12] 1301 	mov	a,r7
      002803 12 66 A0         [24] 1302 	lcall	__gptrput
                           0004AD  1303 	C$event_groups.c$482$1_0$170 ==.
                                   1304 ;	src/FreeRTOS/event_groups.c:482: taskEXIT_CRITICAL();
      002806 D0 E0            [24] 1305 	pop ACC 
      002808 53 E0 80         [24] 1306 	anl	_ACC,#0x80
      00280B E5 E0            [12] 1307 	mov	a,_ACC
      00280D 42 A8            [12] 1308 	orl	_IE,a
      00280F D0 E0            [24] 1309 	pop ACC 
                           0004B8  1310 	C$event_groups.c$484$1_0$170 ==.
                                   1311 ;	src/FreeRTOS/event_groups.c:484: return uxReturn;
      002811 8A 82            [24] 1312 	mov	dpl,r2
      002813 8C 83            [24] 1313 	mov	dph,r4
                           0004BC  1314 	C$event_groups.c$485$1_0$170 ==.
                                   1315 ;	src/FreeRTOS/event_groups.c:485: }
      002815 85 0C 81         [24] 1316 	mov	sp,_bp
      002818 D0 0C            [24] 1317 	pop	_bp
                           0004C1  1318 	C$event_groups.c$485$1_0$170 ==.
                           0004C1  1319 	XG$xEventGroupClearBits$0$0 ==.
      00281A 22               [24] 1320 	ret
                                   1321 ;------------------------------------------------------------
                                   1322 ;Allocation info for local variables in function 'xEventGroupGetBitsFromISR'
                                   1323 ;------------------------------------------------------------
                                   1324 ;xEventGroup               Allocated to registers r5 r6 r7 
                                   1325 ;uxSavedInterruptStatus    Allocated to registers 
                                   1326 ;pxEventBits               Allocated to registers 
                                   1327 ;uxReturn                  Allocated to registers r5 r6 
                                   1328 ;------------------------------------------------------------
                           0004C2  1329 	G$xEventGroupGetBitsFromISR$0$0 ==.
                           0004C2  1330 	C$event_groups.c$503$1_0$173 ==.
                                   1331 ;	src/FreeRTOS/event_groups.c:503: EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup )
                                   1332 ;	-----------------------------------------
                                   1333 ;	 function xEventGroupGetBitsFromISR
                                   1334 ;	-----------------------------------------
      00281B                       1335 _xEventGroupGetBitsFromISR:
                           0004C2  1336 	C$event_groups.c$511$2_0$174 ==.
                                   1337 ;	src/FreeRTOS/event_groups.c:511: uxReturn = pxEventBits->uxEventBits;
      00281B 12 70 5A         [24] 1338 	lcall	__gptrget
      00281E FD               [12] 1339 	mov	r5,a
      00281F A3               [24] 1340 	inc	dptr
      002820 12 70 5A         [24] 1341 	lcall	__gptrget
                           0004CA  1342 	C$event_groups.c$515$1_0$173 ==.
                                   1343 ;	src/FreeRTOS/event_groups.c:515: return uxReturn;
                           0004CA  1344 	C$event_groups.c$516$1_0$173 ==.
                                   1345 ;	src/FreeRTOS/event_groups.c:516: } /*lint !e818 EventGroupHandle_t is a typedef used in other functions to so can't be pointer to const. */
                           0004CA  1346 	C$event_groups.c$516$1_0$173 ==.
                           0004CA  1347 	XG$xEventGroupGetBitsFromISR$0$0 ==.
      002823 8D 82            [24] 1348 	mov	dpl,r5
      002825 F5 83            [12] 1349 	mov	dph,a
      002827 22               [24] 1350 	ret
                                   1351 ;------------------------------------------------------------
                                   1352 ;Allocation info for local variables in function 'xEventGroupSetBits'
                                   1353 ;------------------------------------------------------------
                                   1354 ;uxBitsToSet               Allocated to stack - _bp -4
                                   1355 ;xEventGroup               Allocated to registers r2 r3 r4 
                                   1356 ;pxListItem                Allocated to stack - _bp +1
                                   1357 ;pxNext                    Allocated to registers r5 r6 r7 
                                   1358 ;pxListEnd                 Allocated to stack - _bp +4
                                   1359 ;pxList                    Allocated to stack - _bp +7
                                   1360 ;uxBitsToClear             Allocated to stack - _bp +10
                                   1361 ;uxBitsWaitedFor           Allocated to registers r3 r4 
                                   1362 ;uxControlBits             Allocated to stack - _bp +12
                                   1363 ;pxEventBits               Allocated to stack - _bp +14
                                   1364 ;xMatchFound               Allocated to registers r2 
                                   1365 ;------------------------------------------------------------
                           0004CF  1366 	G$xEventGroupSetBits$0$0 ==.
                           0004CF  1367 	C$event_groups.c$519$1_0$176 ==.
                                   1368 ;	src/FreeRTOS/event_groups.c:519: EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet )
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function xEventGroupSetBits
                                   1371 ;	-----------------------------------------
      002828                       1372 _xEventGroupSetBits:
      002828 C0 0C            [24] 1373 	push	_bp
      00282A E5 81            [12] 1374 	mov	a,sp
      00282C F5 0C            [12] 1375 	mov	_bp,a
      00282E 24 10            [12] 1376 	add	a,#0x10
      002830 F5 81            [12] 1377 	mov	sp,a
      002832 AA 82            [24] 1378 	mov	r2,dpl
      002834 AB 83            [24] 1379 	mov	r3,dph
      002836 AC F0            [24] 1380 	mov	r4,b
                           0004DF  1381 	C$event_groups.c$524$2_0$176 ==.
                                   1382 ;	src/FreeRTOS/event_groups.c:524: EventBits_t uxBitsToClear = 0, uxBitsWaitedFor, uxControlBits;
      002838 E5 0C            [12] 1383 	mov	a,_bp
      00283A 24 0A            [12] 1384 	add	a,#0x0a
      00283C F8               [12] 1385 	mov	r0,a
      00283D E4               [12] 1386 	clr	a
      00283E F6               [12] 1387 	mov	@r0,a
      00283F 08               [12] 1388 	inc	r0
      002840 F6               [12] 1389 	mov	@r0,a
                           0004E8  1390 	C$event_groups.c$525$2_0$176 ==.
                                   1391 ;	src/FreeRTOS/event_groups.c:525: EventGroup_t *pxEventBits = xEventGroup;
      002841 E5 0C            [12] 1392 	mov	a,_bp
      002843 24 0E            [12] 1393 	add	a,#0x0e
      002845 F8               [12] 1394 	mov	r0,a
      002846 A6 02            [24] 1395 	mov	@r0,ar2
      002848 08               [12] 1396 	inc	r0
      002849 A6 03            [24] 1397 	mov	@r0,ar3
      00284B 08               [12] 1398 	inc	r0
      00284C A6 04            [24] 1399 	mov	@r0,ar4
                           0004F5  1400 	C$event_groups.c$533$1_0$176 ==.
                                   1401 ;	src/FreeRTOS/event_groups.c:533: pxList = &( pxEventBits->xTasksWaitingForBits );
      00284E E5 0C            [12] 1402 	mov	a,_bp
      002850 24 07            [12] 1403 	add	a,#0x07
      002852 F8               [12] 1404 	mov	r0,a
      002853 74 02            [12] 1405 	mov	a,#0x02
      002855 2A               [12] 1406 	add	a,r2
      002856 F6               [12] 1407 	mov	@r0,a
      002857 E4               [12] 1408 	clr	a
      002858 3B               [12] 1409 	addc	a,r3
      002859 08               [12] 1410 	inc	r0
      00285A F6               [12] 1411 	mov	@r0,a
      00285B 08               [12] 1412 	inc	r0
      00285C A6 04            [24] 1413 	mov	@r0,ar4
                           000505  1414 	C$event_groups.c$534$1_0$176 ==.
                                   1415 ;	src/FreeRTOS/event_groups.c:534: pxListEnd = listGET_END_MARKER( pxList ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      00285E E5 0C            [12] 1416 	mov	a,_bp
      002860 24 07            [12] 1417 	add	a,#0x07
      002862 F8               [12] 1418 	mov	r0,a
      002863 74 04            [12] 1419 	mov	a,#0x04
      002865 26               [12] 1420 	add	a,@r0
      002866 FD               [12] 1421 	mov	r5,a
      002867 E4               [12] 1422 	clr	a
      002868 08               [12] 1423 	inc	r0
      002869 36               [12] 1424 	addc	a,@r0
      00286A FE               [12] 1425 	mov	r6,a
      00286B 08               [12] 1426 	inc	r0
      00286C 86 07            [24] 1427 	mov	ar7,@r0
      00286E E5 0C            [12] 1428 	mov	a,_bp
      002870 24 04            [12] 1429 	add	a,#0x04
      002872 F8               [12] 1430 	mov	r0,a
      002873 A6 05            [24] 1431 	mov	@r0,ar5
      002875 08               [12] 1432 	inc	r0
      002876 A6 06            [24] 1433 	mov	@r0,ar6
      002878 08               [12] 1434 	inc	r0
      002879 A6 07            [24] 1435 	mov	@r0,ar7
                           000522  1436 	C$event_groups.c$535$1_0$176 ==.
                                   1437 ;	src/FreeRTOS/event_groups.c:535: vTaskSuspendAll();
      00287B C0 04            [24] 1438 	push	ar4
      00287D C0 03            [24] 1439 	push	ar3
      00287F C0 02            [24] 1440 	push	ar2
      002881 12 09 4A         [24] 1441 	lcall	_vTaskSuspendAll
      002884 D0 02            [24] 1442 	pop	ar2
      002886 D0 03            [24] 1443 	pop	ar3
      002888 D0 04            [24] 1444 	pop	ar4
                           000531  1445 	C$event_groups.c$539$2_0$177 ==.
                                   1446 ;	src/FreeRTOS/event_groups.c:539: pxListItem = listGET_HEAD_ENTRY( pxList );
      00288A E5 0C            [12] 1447 	mov	a,_bp
      00288C 24 07            [12] 1448 	add	a,#0x07
      00288E F8               [12] 1449 	mov	r0,a
      00288F 74 06            [12] 1450 	mov	a,#0x06
      002891 26               [12] 1451 	add	a,@r0
      002892 FD               [12] 1452 	mov	r5,a
      002893 E4               [12] 1453 	clr	a
      002894 08               [12] 1454 	inc	r0
      002895 36               [12] 1455 	addc	a,@r0
      002896 FE               [12] 1456 	mov	r6,a
      002897 08               [12] 1457 	inc	r0
      002898 86 07            [24] 1458 	mov	ar7,@r0
      00289A 8D 82            [24] 1459 	mov	dpl,r5
      00289C 8E 83            [24] 1460 	mov	dph,r6
      00289E 8F F0            [24] 1461 	mov	b,r7
      0028A0 A8 0C            [24] 1462 	mov	r0,_bp
      0028A2 08               [12] 1463 	inc	r0
      0028A3 12 70 5A         [24] 1464 	lcall	__gptrget
      0028A6 F6               [12] 1465 	mov	@r0,a
      0028A7 A3               [24] 1466 	inc	dptr
      0028A8 12 70 5A         [24] 1467 	lcall	__gptrget
      0028AB 08               [12] 1468 	inc	r0
      0028AC F6               [12] 1469 	mov	@r0,a
      0028AD A3               [24] 1470 	inc	dptr
      0028AE 12 70 5A         [24] 1471 	lcall	__gptrget
      0028B1 08               [12] 1472 	inc	r0
      0028B2 F6               [12] 1473 	mov	@r0,a
                           00055A  1474 	C$event_groups.c$542$2_0$177 ==.
                                   1475 ;	src/FreeRTOS/event_groups.c:542: pxEventBits->uxEventBits |= uxBitsToSet;
      0028B3 8A 82            [24] 1476 	mov	dpl,r2
      0028B5 8B 83            [24] 1477 	mov	dph,r3
      0028B7 8C F0            [24] 1478 	mov	b,r4
      0028B9 12 70 5A         [24] 1479 	lcall	__gptrget
      0028BC FE               [12] 1480 	mov	r6,a
      0028BD A3               [24] 1481 	inc	dptr
      0028BE 12 70 5A         [24] 1482 	lcall	__gptrget
      0028C1 FF               [12] 1483 	mov	r7,a
      0028C2 E5 0C            [12] 1484 	mov	a,_bp
      0028C4 24 FC            [12] 1485 	add	a,#0xfc
      0028C6 F8               [12] 1486 	mov	r0,a
      0028C7 E6               [12] 1487 	mov	a,@r0
      0028C8 42 06            [12] 1488 	orl	ar6,a
      0028CA 08               [12] 1489 	inc	r0
      0028CB E6               [12] 1490 	mov	a,@r0
      0028CC 42 07            [12] 1491 	orl	ar7,a
      0028CE 8A 82            [24] 1492 	mov	dpl,r2
      0028D0 8B 83            [24] 1493 	mov	dph,r3
      0028D2 8C F0            [24] 1494 	mov	b,r4
      0028D4 EE               [12] 1495 	mov	a,r6
      0028D5 12 66 A0         [24] 1496 	lcall	__gptrput
      0028D8 A3               [24] 1497 	inc	dptr
      0028D9 EF               [12] 1498 	mov	a,r7
      0028DA 12 66 A0         [24] 1499 	lcall	__gptrput
                           000584  1500 	C$event_groups.c$545$2_0$177 ==.
                                   1501 ;	src/FreeRTOS/event_groups.c:545: while( pxListItem != pxListEnd )
      0028DD                       1502 00112$:
      0028DD A8 0C            [24] 1503 	mov	r0,_bp
      0028DF 08               [12] 1504 	inc	r0
      0028E0 E5 0C            [12] 1505 	mov	a,_bp
      0028E2 24 04            [12] 1506 	add	a,#0x04
      0028E4 F9               [12] 1507 	mov	r1,a
      0028E5 E7               [12] 1508 	mov	a,@r1
      0028E6 C0 E0            [24] 1509 	push	acc
      0028E8 09               [12] 1510 	inc	r1
      0028E9 E7               [12] 1511 	mov	a,@r1
      0028EA C0 E0            [24] 1512 	push	acc
      0028EC 09               [12] 1513 	inc	r1
      0028ED E7               [12] 1514 	mov	a,@r1
      0028EE C0 E0            [24] 1515 	push	acc
      0028F0 86 82            [24] 1516 	mov	dpl,@r0
      0028F2 08               [12] 1517 	inc	r0
      0028F3 86 83            [24] 1518 	mov	dph,@r0
      0028F5 08               [12] 1519 	inc	r0
      0028F6 86 F0            [24] 1520 	mov	b,@r0
      0028F8 12 00 11         [24] 1521 	lcall	___gptr_cmp
      0028FB 15 81            [12] 1522 	dec	sp
      0028FD 15 81            [12] 1523 	dec	sp
      0028FF 15 81            [12] 1524 	dec	sp
      002901 70 03            [24] 1525 	jnz	00152$
      002903 02 2A 2E         [24] 1526 	ljmp	00114$
      002906                       1527 00152$:
                           0005AD  1528 	C$event_groups.c$547$1_0$176 ==.
                                   1529 ;	src/FreeRTOS/event_groups.c:547: pxNext = listGET_NEXT( pxListItem );
      002906 A8 0C            [24] 1530 	mov	r0,_bp
      002908 08               [12] 1531 	inc	r0
      002909 74 02            [12] 1532 	mov	a,#0x02
      00290B 26               [12] 1533 	add	a,@r0
      00290C FD               [12] 1534 	mov	r5,a
      00290D E4               [12] 1535 	clr	a
      00290E 08               [12] 1536 	inc	r0
      00290F 36               [12] 1537 	addc	a,@r0
      002910 FE               [12] 1538 	mov	r6,a
      002911 08               [12] 1539 	inc	r0
      002912 86 07            [24] 1540 	mov	ar7,@r0
      002914 8D 82            [24] 1541 	mov	dpl,r5
      002916 8E 83            [24] 1542 	mov	dph,r6
      002918 8F F0            [24] 1543 	mov	b,r7
      00291A 12 70 5A         [24] 1544 	lcall	__gptrget
      00291D FD               [12] 1545 	mov	r5,a
      00291E A3               [24] 1546 	inc	dptr
      00291F 12 70 5A         [24] 1547 	lcall	__gptrget
      002922 FE               [12] 1548 	mov	r6,a
      002923 A3               [24] 1549 	inc	dptr
      002924 12 70 5A         [24] 1550 	lcall	__gptrget
      002927 FF               [12] 1551 	mov	r7,a
                           0005CF  1552 	C$event_groups.c$548$3_0$178 ==.
                                   1553 ;	src/FreeRTOS/event_groups.c:548: uxBitsWaitedFor = listGET_LIST_ITEM_VALUE( pxListItem );
      002928 A8 0C            [24] 1554 	mov	r0,_bp
      00292A 08               [12] 1555 	inc	r0
      00292B 86 82            [24] 1556 	mov	dpl,@r0
      00292D 08               [12] 1557 	inc	r0
      00292E 86 83            [24] 1558 	mov	dph,@r0
      002930 08               [12] 1559 	inc	r0
      002931 86 F0            [24] 1560 	mov	b,@r0
      002933 12 70 5A         [24] 1561 	lcall	__gptrget
      002936 FB               [12] 1562 	mov	r3,a
      002937 A3               [24] 1563 	inc	dptr
      002938 12 70 5A         [24] 1564 	lcall	__gptrget
      00293B FC               [12] 1565 	mov	r4,a
                           0005E3  1566 	C$event_groups.c$549$3_0$178 ==.
                                   1567 ;	src/FreeRTOS/event_groups.c:549: xMatchFound = pdFALSE;
      00293C 7A 00            [12] 1568 	mov	r2,#0x00
                           0005E5  1569 	C$event_groups.c$552$3_0$178 ==.
                                   1570 ;	src/FreeRTOS/event_groups.c:552: uxControlBits = uxBitsWaitedFor & eventEVENT_BITS_CONTROL_BYTES;
      00293E E5 0C            [12] 1571 	mov	a,_bp
      002940 24 0C            [12] 1572 	add	a,#0x0c
      002942 F8               [12] 1573 	mov	r0,a
      002943 76 00            [12] 1574 	mov	@r0,#0x00
      002945 08               [12] 1575 	inc	r0
      002946 A6 04            [24] 1576 	mov	@r0,ar4
                           0005EF  1577 	C$event_groups.c$553$3_0$178 ==.
                                   1578 ;	src/FreeRTOS/event_groups.c:553: uxBitsWaitedFor &= ~eventEVENT_BITS_CONTROL_BYTES;
      002948 7C 00            [12] 1579 	mov	r4,#0x00
                           0005F1  1580 	C$event_groups.c$555$3_0$178 ==.
                                   1581 ;	src/FreeRTOS/event_groups.c:555: if( ( uxControlBits & eventWAIT_FOR_ALL_BITS ) == ( EventBits_t ) 0 )
      00294A E5 0C            [12] 1582 	mov	a,_bp
      00294C 24 0C            [12] 1583 	add	a,#0x0c
      00294E F8               [12] 1584 	mov	r0,a
      00294F 08               [12] 1585 	inc	r0
      002950 E6               [12] 1586 	mov	a,@r0
      002951 20 E2 30         [24] 1587 	jb	acc.2,00106$
                           0005FB  1588 	C$event_groups.c$558$1_0$176 ==.
                                   1589 ;	src/FreeRTOS/event_groups.c:558: if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) != ( EventBits_t ) 0 )
      002954 C0 05            [24] 1590 	push	ar5
      002956 C0 06            [24] 1591 	push	ar6
      002958 C0 07            [24] 1592 	push	ar7
      00295A E5 0C            [12] 1593 	mov	a,_bp
      00295C 24 0E            [12] 1594 	add	a,#0x0e
      00295E F8               [12] 1595 	mov	r0,a
      00295F 86 82            [24] 1596 	mov	dpl,@r0
      002961 08               [12] 1597 	inc	r0
      002962 86 83            [24] 1598 	mov	dph,@r0
      002964 08               [12] 1599 	inc	r0
      002965 86 F0            [24] 1600 	mov	b,@r0
      002967 12 70 5A         [24] 1601 	lcall	__gptrget
      00296A FE               [12] 1602 	mov	r6,a
      00296B A3               [24] 1603 	inc	dptr
      00296C 12 70 5A         [24] 1604 	lcall	__gptrget
      00296F FF               [12] 1605 	mov	r7,a
      002970 EB               [12] 1606 	mov	a,r3
      002971 52 06            [12] 1607 	anl	ar6,a
      002973 EC               [12] 1608 	mov	a,r4
      002974 52 07            [12] 1609 	anl	ar7,a
      002976 EE               [12] 1610 	mov	a,r6
      002977 4F               [12] 1611 	orl	a,r7
      002978 D0 07            [24] 1612 	pop	ar7
      00297A D0 06            [24] 1613 	pop	ar6
      00297C D0 05            [24] 1614 	pop	ar5
      00297E 60 40            [24] 1615 	jz	00107$
                           000627  1616 	C$event_groups.c$560$5_0$180 ==.
                                   1617 ;	src/FreeRTOS/event_groups.c:560: xMatchFound = pdTRUE;
      002980 7A 01            [12] 1618 	mov	r2,#0x01
      002982 80 3C            [24] 1619 	sjmp	00107$
      002984                       1620 00106$:
                           00062B  1621 	C$event_groups.c$567$1_0$176 ==.
                                   1622 ;	src/FreeRTOS/event_groups.c:567: else if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) == uxBitsWaitedFor )
      002984 C0 05            [24] 1623 	push	ar5
      002986 C0 06            [24] 1624 	push	ar6
      002988 C0 07            [24] 1625 	push	ar7
      00298A E5 0C            [12] 1626 	mov	a,_bp
      00298C 24 0E            [12] 1627 	add	a,#0x0e
      00298E F8               [12] 1628 	mov	r0,a
      00298F 86 82            [24] 1629 	mov	dpl,@r0
      002991 08               [12] 1630 	inc	r0
      002992 86 83            [24] 1631 	mov	dph,@r0
      002994 08               [12] 1632 	inc	r0
      002995 86 F0            [24] 1633 	mov	b,@r0
      002997 12 70 5A         [24] 1634 	lcall	__gptrget
      00299A FE               [12] 1635 	mov	r6,a
      00299B A3               [24] 1636 	inc	dptr
      00299C 12 70 5A         [24] 1637 	lcall	__gptrget
      00299F FF               [12] 1638 	mov	r7,a
      0029A0 EB               [12] 1639 	mov	a,r3
      0029A1 52 06            [12] 1640 	anl	ar6,a
      0029A3 EC               [12] 1641 	mov	a,r4
      0029A4 52 07            [12] 1642 	anl	ar7,a
      0029A6 EE               [12] 1643 	mov	a,r6
      0029A7 B5 03 06         [24] 1644 	cjne	a,ar3,00155$
      0029AA EF               [12] 1645 	mov	a,r7
      0029AB B5 04 02         [24] 1646 	cjne	a,ar4,00155$
      0029AE 80 08            [24] 1647 	sjmp	00156$
      0029B0                       1648 00155$:
      0029B0 D0 07            [24] 1649 	pop	ar7
      0029B2 D0 06            [24] 1650 	pop	ar6
      0029B4 D0 05            [24] 1651 	pop	ar5
      0029B6 80 08            [24] 1652 	sjmp	00107$
      0029B8                       1653 00156$:
      0029B8 D0 07            [24] 1654 	pop	ar7
      0029BA D0 06            [24] 1655 	pop	ar6
      0029BC D0 05            [24] 1656 	pop	ar5
                           000665  1657 	C$event_groups.c$570$4_0$182 ==.
                                   1658 ;	src/FreeRTOS/event_groups.c:570: xMatchFound = pdTRUE;
      0029BE 7A 01            [12] 1659 	mov	r2,#0x01
      0029C0                       1660 00107$:
                           000667  1661 	C$event_groups.c$577$3_0$178 ==.
                                   1662 ;	src/FreeRTOS/event_groups.c:577: if( xMatchFound != pdFALSE )
      0029C0 EA               [12] 1663 	mov	a,r2
      0029C1 60 5D            [24] 1664 	jz	00111$
                           00066A  1665 	C$event_groups.c$580$4_0$184 ==.
                                   1666 ;	src/FreeRTOS/event_groups.c:580: if( ( uxControlBits & eventCLEAR_EVENTS_ON_EXIT_BIT ) != ( EventBits_t ) 0 )
      0029C3 E5 0C            [12] 1667 	mov	a,_bp
      0029C5 24 0C            [12] 1668 	add	a,#0x0c
      0029C7 F8               [12] 1669 	mov	r0,a
      0029C8 08               [12] 1670 	inc	r0
      0029C9 E6               [12] 1671 	mov	a,@r0
      0029CA 30 E0 0C         [24] 1672 	jnb	acc.0,00109$
                           000674  1673 	C$event_groups.c$582$5_0$185 ==.
                                   1674 ;	src/FreeRTOS/event_groups.c:582: uxBitsToClear |= uxBitsWaitedFor;
      0029CD E5 0C            [12] 1675 	mov	a,_bp
      0029CF 24 0A            [12] 1676 	add	a,#0x0a
      0029D1 F8               [12] 1677 	mov	r0,a
      0029D2 EB               [12] 1678 	mov	a,r3
      0029D3 46               [12] 1679 	orl	a,@r0
      0029D4 F6               [12] 1680 	mov	@r0,a
      0029D5 EC               [12] 1681 	mov	a,r4
      0029D6 08               [12] 1682 	inc	r0
      0029D7 46               [12] 1683 	orl	a,@r0
      0029D8 F6               [12] 1684 	mov	@r0,a
      0029D9                       1685 00109$:
                           000680  1686 	C$event_groups.c$594$1_0$176 ==.
                                   1687 ;	src/FreeRTOS/event_groups.c:594: vTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | eventUNBLOCKED_DUE_TO_BIT_SET );
      0029D9 C0 05            [24] 1688 	push	ar5
      0029DB C0 06            [24] 1689 	push	ar6
      0029DD C0 07            [24] 1690 	push	ar7
      0029DF E5 0C            [12] 1691 	mov	a,_bp
      0029E1 24 0E            [12] 1692 	add	a,#0x0e
      0029E3 F8               [12] 1693 	mov	r0,a
      0029E4 86 82            [24] 1694 	mov	dpl,@r0
      0029E6 08               [12] 1695 	inc	r0
      0029E7 86 83            [24] 1696 	mov	dph,@r0
      0029E9 08               [12] 1697 	inc	r0
      0029EA 86 F0            [24] 1698 	mov	b,@r0
      0029EC 12 70 5A         [24] 1699 	lcall	__gptrget
      0029EF FE               [12] 1700 	mov	r6,a
      0029F0 A3               [24] 1701 	inc	dptr
      0029F1 12 70 5A         [24] 1702 	lcall	__gptrget
      0029F4 FF               [12] 1703 	mov	r7,a
      0029F5 43 07 02         [24] 1704 	orl	ar7,#0x02
      0029F8 C0 07            [24] 1705 	push	ar7
      0029FA C0 06            [24] 1706 	push	ar6
      0029FC C0 05            [24] 1707 	push	ar5
      0029FE C0 06            [24] 1708 	push	ar6
      002A00 C0 07            [24] 1709 	push	ar7
      002A02 A8 0C            [24] 1710 	mov	r0,_bp
      002A04 08               [12] 1711 	inc	r0
      002A05 86 82            [24] 1712 	mov	dpl,@r0
      002A07 08               [12] 1713 	inc	r0
      002A08 86 83            [24] 1714 	mov	dph,@r0
      002A0A 08               [12] 1715 	inc	r0
      002A0B 86 F0            [24] 1716 	mov	b,@r0
      002A0D 12 11 B5         [24] 1717 	lcall	_vTaskRemoveFromUnorderedEventList
      002A10 15 81            [12] 1718 	dec	sp
      002A12 15 81            [12] 1719 	dec	sp
      002A14 D0 05            [24] 1720 	pop	ar5
      002A16 D0 06            [24] 1721 	pop	ar6
      002A18 D0 07            [24] 1722 	pop	ar7
                           0006C1  1723 	C$event_groups.c$609$1_0$176 ==.
                                   1724 ;	src/FreeRTOS/event_groups.c:609: return pxEventBits->uxEventBits;
      002A1A D0 07            [24] 1725 	pop	ar7
      002A1C D0 06            [24] 1726 	pop	ar6
      002A1E D0 05            [24] 1727 	pop	ar5
                           0006C7  1728 	C$event_groups.c$594$3_0$178 ==.
                                   1729 ;	src/FreeRTOS/event_groups.c:594: vTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | eventUNBLOCKED_DUE_TO_BIT_SET );
      002A20                       1730 00111$:
                           0006C7  1731 	C$event_groups.c$600$3_0$178 ==.
                                   1732 ;	src/FreeRTOS/event_groups.c:600: pxListItem = pxNext;
      002A20 A8 0C            [24] 1733 	mov	r0,_bp
      002A22 08               [12] 1734 	inc	r0
      002A23 A6 05            [24] 1735 	mov	@r0,ar5
      002A25 08               [12] 1736 	inc	r0
      002A26 A6 06            [24] 1737 	mov	@r0,ar6
      002A28 08               [12] 1738 	inc	r0
      002A29 A6 07            [24] 1739 	mov	@r0,ar7
      002A2B 02 28 DD         [24] 1740 	ljmp	00112$
      002A2E                       1741 00114$:
                           0006D5  1742 	C$event_groups.c$605$2_0$177 ==.
                                   1743 ;	src/FreeRTOS/event_groups.c:605: pxEventBits->uxEventBits &= ~uxBitsToClear;
      002A2E E5 0C            [12] 1744 	mov	a,_bp
      002A30 24 0E            [12] 1745 	add	a,#0x0e
      002A32 F8               [12] 1746 	mov	r0,a
      002A33 86 82            [24] 1747 	mov	dpl,@r0
      002A35 08               [12] 1748 	inc	r0
      002A36 86 83            [24] 1749 	mov	dph,@r0
      002A38 08               [12] 1750 	inc	r0
      002A39 86 F0            [24] 1751 	mov	b,@r0
      002A3B 12 70 5A         [24] 1752 	lcall	__gptrget
      002A3E FE               [12] 1753 	mov	r6,a
      002A3F A3               [24] 1754 	inc	dptr
      002A40 12 70 5A         [24] 1755 	lcall	__gptrget
      002A43 FF               [12] 1756 	mov	r7,a
      002A44 E5 0C            [12] 1757 	mov	a,_bp
      002A46 24 0A            [12] 1758 	add	a,#0x0a
      002A48 F8               [12] 1759 	mov	r0,a
      002A49 E6               [12] 1760 	mov	a,@r0
      002A4A F4               [12] 1761 	cpl	a
      002A4B FC               [12] 1762 	mov	r4,a
      002A4C 08               [12] 1763 	inc	r0
      002A4D E6               [12] 1764 	mov	a,@r0
      002A4E F4               [12] 1765 	cpl	a
      002A4F FD               [12] 1766 	mov	r5,a
      002A50 EC               [12] 1767 	mov	a,r4
      002A51 52 06            [12] 1768 	anl	ar6,a
      002A53 ED               [12] 1769 	mov	a,r5
      002A54 52 07            [12] 1770 	anl	ar7,a
      002A56 E5 0C            [12] 1771 	mov	a,_bp
      002A58 24 0E            [12] 1772 	add	a,#0x0e
      002A5A F8               [12] 1773 	mov	r0,a
      002A5B 86 82            [24] 1774 	mov	dpl,@r0
      002A5D 08               [12] 1775 	inc	r0
      002A5E 86 83            [24] 1776 	mov	dph,@r0
      002A60 08               [12] 1777 	inc	r0
      002A61 86 F0            [24] 1778 	mov	b,@r0
      002A63 EE               [12] 1779 	mov	a,r6
      002A64 12 66 A0         [24] 1780 	lcall	__gptrput
      002A67 A3               [24] 1781 	inc	dptr
      002A68 EF               [12] 1782 	mov	a,r7
      002A69 12 66 A0         [24] 1783 	lcall	__gptrput
                           000713  1784 	C$event_groups.c$607$1_0$176 ==.
                                   1785 ;	src/FreeRTOS/event_groups.c:607: ( void ) xTaskResumeAll();
      002A6C 12 09 52         [24] 1786 	lcall	_xTaskResumeAll
                           000716  1787 	C$event_groups.c$609$1_0$176 ==.
                                   1788 ;	src/FreeRTOS/event_groups.c:609: return pxEventBits->uxEventBits;
      002A6F E5 0C            [12] 1789 	mov	a,_bp
      002A71 24 0E            [12] 1790 	add	a,#0x0e
      002A73 F8               [12] 1791 	mov	r0,a
      002A74 86 82            [24] 1792 	mov	dpl,@r0
      002A76 08               [12] 1793 	inc	r0
      002A77 86 83            [24] 1794 	mov	dph,@r0
      002A79 08               [12] 1795 	inc	r0
      002A7A 86 F0            [24] 1796 	mov	b,@r0
      002A7C 12 70 5A         [24] 1797 	lcall	__gptrget
      002A7F FE               [12] 1798 	mov	r6,a
      002A80 A3               [24] 1799 	inc	dptr
      002A81 12 70 5A         [24] 1800 	lcall	__gptrget
      002A84 FF               [12] 1801 	mov	r7,a
      002A85 8E 82            [24] 1802 	mov	dpl,r6
      002A87 8F 83            [24] 1803 	mov	dph,r7
                           000730  1804 	C$event_groups.c$610$1_0$176 ==.
                                   1805 ;	src/FreeRTOS/event_groups.c:610: }
      002A89 85 0C 81         [24] 1806 	mov	sp,_bp
      002A8C D0 0C            [24] 1807 	pop	_bp
                           000735  1808 	C$event_groups.c$610$1_0$176 ==.
                           000735  1809 	XG$xEventGroupSetBits$0$0 ==.
      002A8E 22               [24] 1810 	ret
                                   1811 ;------------------------------------------------------------
                                   1812 ;Allocation info for local variables in function 'vEventGroupDelete'
                                   1813 ;------------------------------------------------------------
                                   1814 ;xEventGroup               Allocated to registers r5 r6 r7 
                                   1815 ;pxEventBits               Allocated to stack - _bp +1
                                   1816 ;pxTasksWaitingForBits     Allocated to registers r5 r6 r7 
                                   1817 ;------------------------------------------------------------
                           000736  1818 	G$vEventGroupDelete$0$0 ==.
                           000736  1819 	C$event_groups.c$613$1_0$188 ==.
                                   1820 ;	src/FreeRTOS/event_groups.c:613: void vEventGroupDelete( EventGroupHandle_t xEventGroup )
                                   1821 ;	-----------------------------------------
                                   1822 ;	 function vEventGroupDelete
                                   1823 ;	-----------------------------------------
      002A8F                       1824 _vEventGroupDelete:
      002A8F C0 0C            [24] 1825 	push	_bp
      002A91 85 81 0C         [24] 1826 	mov	_bp,sp
      002A94 05 81            [12] 1827 	inc	sp
      002A96 05 81            [12] 1828 	inc	sp
      002A98 05 81            [12] 1829 	inc	sp
      002A9A AD 82            [24] 1830 	mov	r5,dpl
      002A9C AE 83            [24] 1831 	mov	r6,dph
      002A9E AF F0            [24] 1832 	mov	r7,b
                           000747  1833 	C$event_groups.c$615$2_0$188 ==.
                                   1834 ;	src/FreeRTOS/event_groups.c:615: EventGroup_t *pxEventBits = xEventGroup;
      002AA0 A8 0C            [24] 1835 	mov	r0,_bp
      002AA2 08               [12] 1836 	inc	r0
      002AA3 A6 05            [24] 1837 	mov	@r0,ar5
      002AA5 08               [12] 1838 	inc	r0
      002AA6 A6 06            [24] 1839 	mov	@r0,ar6
      002AA8 08               [12] 1840 	inc	r0
      002AA9 A6 07            [24] 1841 	mov	@r0,ar7
                           000752  1842 	C$event_groups.c$616$1_0$188 ==.
                                   1843 ;	src/FreeRTOS/event_groups.c:616: const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );
      002AAB 74 02            [12] 1844 	mov	a,#0x02
      002AAD 2D               [12] 1845 	add	a,r5
      002AAE FD               [12] 1846 	mov	r5,a
      002AAF E4               [12] 1847 	clr	a
      002AB0 3E               [12] 1848 	addc	a,r6
      002AB1 FE               [12] 1849 	mov	r6,a
                           000759  1850 	C$event_groups.c$618$1_0$188 ==.
                                   1851 ;	src/FreeRTOS/event_groups.c:618: vTaskSuspendAll();
      002AB2 C0 07            [24] 1852 	push	ar7
      002AB4 C0 06            [24] 1853 	push	ar6
      002AB6 C0 05            [24] 1854 	push	ar5
      002AB8 12 09 4A         [24] 1855 	lcall	_vTaskSuspendAll
      002ABB D0 05            [24] 1856 	pop	ar5
      002ABD D0 06            [24] 1857 	pop	ar6
      002ABF D0 07            [24] 1858 	pop	ar7
                           000768  1859 	C$event_groups.c$622$3_0$190 ==.
                                   1860 ;	src/FreeRTOS/event_groups.c:622: while( listCURRENT_LIST_LENGTH( pxTasksWaitingForBits ) > ( UBaseType_t ) 0 )
      002AC1 74 06            [12] 1861 	mov	a,#0x06
      002AC3 2D               [12] 1862 	add	a,r5
      002AC4 FA               [12] 1863 	mov	r2,a
      002AC5 E4               [12] 1864 	clr	a
      002AC6 3E               [12] 1865 	addc	a,r6
      002AC7 FB               [12] 1866 	mov	r3,a
      002AC8 8F 04            [24] 1867 	mov	ar4,r7
      002ACA                       1868 00101$:
      002ACA 8D 82            [24] 1869 	mov	dpl,r5
      002ACC 8E 83            [24] 1870 	mov	dph,r6
      002ACE 8F F0            [24] 1871 	mov	b,r7
      002AD0 12 70 5A         [24] 1872 	lcall	__gptrget
      002AD3 60 4E            [24] 1873 	jz	00103$
                           00077C  1874 	C$event_groups.c$627$1_0$188 ==.
                                   1875 ;	src/FreeRTOS/event_groups.c:627: vTaskRemoveFromUnorderedEventList( pxTasksWaitingForBits->xListEnd.pxNext, eventUNBLOCKED_DUE_TO_BIT_SET );
      002AD5 C0 05            [24] 1876 	push	ar5
      002AD7 C0 06            [24] 1877 	push	ar6
      002AD9 C0 07            [24] 1878 	push	ar7
      002ADB 8A 82            [24] 1879 	mov	dpl,r2
      002ADD 8B 83            [24] 1880 	mov	dph,r3
      002ADF 8C F0            [24] 1881 	mov	b,r4
      002AE1 12 70 5A         [24] 1882 	lcall	__gptrget
      002AE4 FD               [12] 1883 	mov	r5,a
      002AE5 A3               [24] 1884 	inc	dptr
      002AE6 12 70 5A         [24] 1885 	lcall	__gptrget
      002AE9 FE               [12] 1886 	mov	r6,a
      002AEA A3               [24] 1887 	inc	dptr
      002AEB 12 70 5A         [24] 1888 	lcall	__gptrget
      002AEE FF               [12] 1889 	mov	r7,a
      002AEF C0 07            [24] 1890 	push	ar7
      002AF1 C0 06            [24] 1891 	push	ar6
      002AF3 C0 05            [24] 1892 	push	ar5
      002AF5 C0 04            [24] 1893 	push	ar4
      002AF7 C0 03            [24] 1894 	push	ar3
      002AF9 C0 02            [24] 1895 	push	ar2
      002AFB E4               [12] 1896 	clr	a
      002AFC C0 E0            [24] 1897 	push	acc
      002AFE 74 02            [12] 1898 	mov	a,#0x02
      002B00 C0 E0            [24] 1899 	push	acc
      002B02 8D 82            [24] 1900 	mov	dpl,r5
      002B04 8E 83            [24] 1901 	mov	dph,r6
      002B06 8F F0            [24] 1902 	mov	b,r7
      002B08 12 11 B5         [24] 1903 	lcall	_vTaskRemoveFromUnorderedEventList
      002B0B 15 81            [12] 1904 	dec	sp
      002B0D 15 81            [12] 1905 	dec	sp
      002B0F D0 02            [24] 1906 	pop	ar2
      002B11 D0 03            [24] 1907 	pop	ar3
      002B13 D0 04            [24] 1908 	pop	ar4
      002B15 D0 05            [24] 1909 	pop	ar5
      002B17 D0 06            [24] 1910 	pop	ar6
      002B19 D0 07            [24] 1911 	pop	ar7
      002B1B D0 07            [24] 1912 	pop	ar7
      002B1D D0 06            [24] 1913 	pop	ar6
      002B1F D0 05            [24] 1914 	pop	ar5
      002B21 80 A7            [24] 1915 	sjmp	00101$
      002B23                       1916 00103$:
                           0007CA  1917 	C$event_groups.c$634$3_0$191 ==.
                                   1918 ;	src/FreeRTOS/event_groups.c:634: vPortFree( pxEventBits );
      002B23 A8 0C            [24] 1919 	mov	r0,_bp
      002B25 08               [12] 1920 	inc	r0
      002B26 86 02            [24] 1921 	mov	ar2,@r0
      002B28 08               [12] 1922 	inc	r0
      002B29 86 03            [24] 1923 	mov	ar3,@r0
      002B2B 08               [12] 1924 	inc	r0
      002B2C 86 04            [24] 1925 	mov	ar4,@r0
      002B2E 8A 82            [24] 1926 	mov	dpl,r2
      002B30 8B 83            [24] 1927 	mov	dph,r3
      002B32 8C F0            [24] 1928 	mov	b,r4
      002B34 12 62 2D         [24] 1929 	lcall	_vPortFree
                           0007DE  1930 	C$event_groups.c$651$1_0$188 ==.
                                   1931 ;	src/FreeRTOS/event_groups.c:651: ( void ) xTaskResumeAll();
      002B37 12 09 52         [24] 1932 	lcall	_xTaskResumeAll
                           0007E1  1933 	C$event_groups.c$652$1_0$188 ==.
                                   1934 ;	src/FreeRTOS/event_groups.c:652: }
      002B3A 85 0C 81         [24] 1935 	mov	sp,_bp
      002B3D D0 0C            [24] 1936 	pop	_bp
                           0007E6  1937 	C$event_groups.c$652$1_0$188 ==.
                           0007E6  1938 	XG$vEventGroupDelete$0$0 ==.
      002B3F 22               [24] 1939 	ret
                                   1940 ;------------------------------------------------------------
                                   1941 ;Allocation info for local variables in function 'vEventGroupSetBitsCallback'
                                   1942 ;------------------------------------------------------------
                                   1943 ;ulBitsToSet               Allocated to stack - _bp -6
                                   1944 ;pvEventGroup              Allocated to registers r5 r6 r7 
                                   1945 ;------------------------------------------------------------
                           0007E7  1946 	G$vEventGroupSetBitsCallback$0$0 ==.
                           0007E7  1947 	C$event_groups.c$657$1_0$193 ==.
                                   1948 ;	src/FreeRTOS/event_groups.c:657: void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet )
                                   1949 ;	-----------------------------------------
                                   1950 ;	 function vEventGroupSetBitsCallback
                                   1951 ;	-----------------------------------------
      002B40                       1952 _vEventGroupSetBitsCallback:
      002B40 C0 0C            [24] 1953 	push	_bp
      002B42 85 81 0C         [24] 1954 	mov	_bp,sp
      002B45 AD 82            [24] 1955 	mov	r5,dpl
      002B47 AE 83            [24] 1956 	mov	r6,dph
      002B49 AF F0            [24] 1957 	mov	r7,b
                           0007F2  1958 	C$event_groups.c$659$1_0$193 ==.
                                   1959 ;	src/FreeRTOS/event_groups.c:659: ( void ) xEventGroupSetBits( pvEventGroup, ( EventBits_t ) ulBitsToSet ); /*lint !e9079 Can't avoid cast to void* as a generic timer callback prototype. Callback casts back to original type so safe. */
      002B4B E5 0C            [12] 1960 	mov	a,_bp
      002B4D 24 FA            [12] 1961 	add	a,#0xfa
      002B4F F8               [12] 1962 	mov	r0,a
      002B50 86 03            [24] 1963 	mov	ar3,@r0
      002B52 08               [12] 1964 	inc	r0
      002B53 86 04            [24] 1965 	mov	ar4,@r0
      002B55 C0 03            [24] 1966 	push	ar3
      002B57 C0 04            [24] 1967 	push	ar4
      002B59 8D 82            [24] 1968 	mov	dpl,r5
      002B5B 8E 83            [24] 1969 	mov	dph,r6
      002B5D 8F F0            [24] 1970 	mov	b,r7
      002B5F 12 28 28         [24] 1971 	lcall	_xEventGroupSetBits
      002B62 15 81            [12] 1972 	dec	sp
      002B64 15 81            [12] 1973 	dec	sp
                           00080D  1974 	C$event_groups.c$660$1_0$193 ==.
                                   1975 ;	src/FreeRTOS/event_groups.c:660: }
      002B66 D0 0C            [24] 1976 	pop	_bp
                           00080F  1977 	C$event_groups.c$660$1_0$193 ==.
                           00080F  1978 	XG$vEventGroupSetBitsCallback$0$0 ==.
      002B68 22               [24] 1979 	ret
                                   1980 ;------------------------------------------------------------
                                   1981 ;Allocation info for local variables in function 'vEventGroupClearBitsCallback'
                                   1982 ;------------------------------------------------------------
                                   1983 ;ulBitsToClear             Allocated to stack - _bp -6
                                   1984 ;pvEventGroup              Allocated to registers r5 r6 r7 
                                   1985 ;------------------------------------------------------------
                           000810  1986 	G$vEventGroupClearBitsCallback$0$0 ==.
                           000810  1987 	C$event_groups.c$665$1_0$195 ==.
                                   1988 ;	src/FreeRTOS/event_groups.c:665: void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear )
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function vEventGroupClearBitsCallback
                                   1991 ;	-----------------------------------------
      002B69                       1992 _vEventGroupClearBitsCallback:
      002B69 C0 0C            [24] 1993 	push	_bp
      002B6B 85 81 0C         [24] 1994 	mov	_bp,sp
      002B6E AD 82            [24] 1995 	mov	r5,dpl
      002B70 AE 83            [24] 1996 	mov	r6,dph
      002B72 AF F0            [24] 1997 	mov	r7,b
                           00081B  1998 	C$event_groups.c$667$1_0$195 ==.
                                   1999 ;	src/FreeRTOS/event_groups.c:667: ( void ) xEventGroupClearBits( pvEventGroup, ( EventBits_t ) ulBitsToClear ); /*lint !e9079 Can't avoid cast to void* as a generic timer callback prototype. Callback casts back to original type so safe. */
      002B74 E5 0C            [12] 2000 	mov	a,_bp
      002B76 24 FA            [12] 2001 	add	a,#0xfa
      002B78 F8               [12] 2002 	mov	r0,a
      002B79 86 03            [24] 2003 	mov	ar3,@r0
      002B7B 08               [12] 2004 	inc	r0
      002B7C 86 04            [24] 2005 	mov	ar4,@r0
      002B7E C0 03            [24] 2006 	push	ar3
      002B80 C0 04            [24] 2007 	push	ar4
      002B82 8D 82            [24] 2008 	mov	dpl,r5
      002B84 8E 83            [24] 2009 	mov	dph,r6
      002B86 8F F0            [24] 2010 	mov	b,r7
      002B88 12 27 B7         [24] 2011 	lcall	_xEventGroupClearBits
      002B8B 15 81            [12] 2012 	dec	sp
      002B8D 15 81            [12] 2013 	dec	sp
                           000836  2014 	C$event_groups.c$668$1_0$195 ==.
                                   2015 ;	src/FreeRTOS/event_groups.c:668: }
      002B8F D0 0C            [24] 2016 	pop	_bp
                           000838  2017 	C$event_groups.c$668$1_0$195 ==.
                           000838  2018 	XG$vEventGroupClearBitsCallback$0$0 ==.
      002B91 22               [24] 2019 	ret
                                   2020 ;------------------------------------------------------------
                                   2021 ;Allocation info for local variables in function 'prvTestWaitCondition'
                                   2022 ;------------------------------------------------------------
                                   2023 ;uxBitsToWaitFor           Allocated to stack - _bp -4
                                   2024 ;xWaitForAllBits           Allocated to stack - _bp -5
                                   2025 ;uxCurrentEventBits        Allocated to registers r6 r7 
                                   2026 ;xWaitConditionMet         Allocated to registers r5 
                                   2027 ;------------------------------------------------------------
                           000839  2028 	Fevent_groups$prvTestWaitCondition$0$0 ==.
                           000839  2029 	C$event_groups.c$671$1_0$197 ==.
                                   2030 ;	src/FreeRTOS/event_groups.c:671: static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits )
                                   2031 ;	-----------------------------------------
                                   2032 ;	 function prvTestWaitCondition
                                   2033 ;	-----------------------------------------
      002B92                       2034 _prvTestWaitCondition:
      002B92 C0 0C            [24] 2035 	push	_bp
      002B94 85 81 0C         [24] 2036 	mov	_bp,sp
      002B97 AE 82            [24] 2037 	mov	r6,dpl
      002B99 AF 83            [24] 2038 	mov	r7,dph
                           000842  2039 	C$event_groups.c$673$2_0$197 ==.
                                   2040 ;	src/FreeRTOS/event_groups.c:673: BaseType_t xWaitConditionMet = pdFALSE;
      002B9B 7D 00            [12] 2041 	mov	r5,#0x00
                           000844  2042 	C$event_groups.c$675$1_0$197 ==.
                                   2043 ;	src/FreeRTOS/event_groups.c:675: if( xWaitForAllBits == pdFALSE )
      002B9D E5 0C            [12] 2044 	mov	a,_bp
      002B9F 24 FB            [12] 2045 	add	a,#0xfb
      002BA1 F8               [12] 2046 	mov	r0,a
      002BA2 E6               [12] 2047 	mov	a,@r0
      002BA3 70 13            [24] 2048 	jnz	00106$
                           00084C  2049 	C$event_groups.c$679$2_0$198 ==.
                                   2050 ;	src/FreeRTOS/event_groups.c:679: if( ( uxCurrentEventBits & uxBitsToWaitFor ) != ( EventBits_t ) 0 )
      002BA5 E5 0C            [12] 2051 	mov	a,_bp
      002BA7 24 FC            [12] 2052 	add	a,#0xfc
      002BA9 F8               [12] 2053 	mov	r0,a
      002BAA E6               [12] 2054 	mov	a,@r0
      002BAB 5E               [12] 2055 	anl	a,r6
      002BAC FB               [12] 2056 	mov	r3,a
      002BAD 08               [12] 2057 	inc	r0
      002BAE E6               [12] 2058 	mov	a,@r0
      002BAF 5F               [12] 2059 	anl	a,r7
      002BB0 FC               [12] 2060 	mov	r4,a
      002BB1 4B               [12] 2061 	orl	a,r3
      002BB2 60 24            [24] 2062 	jz	00107$
                           00085B  2063 	C$event_groups.c$681$3_0$199 ==.
                                   2064 ;	src/FreeRTOS/event_groups.c:681: xWaitConditionMet = pdTRUE;
      002BB4 7D 01            [12] 2065 	mov	r5,#0x01
      002BB6 80 20            [24] 2066 	sjmp	00107$
      002BB8                       2067 00106$:
                           00085F  2068 	C$event_groups.c$692$2_0$201 ==.
                                   2069 ;	src/FreeRTOS/event_groups.c:692: if( ( uxCurrentEventBits & uxBitsToWaitFor ) == uxBitsToWaitFor )
      002BB8 E5 0C            [12] 2070 	mov	a,_bp
      002BBA 24 FC            [12] 2071 	add	a,#0xfc
      002BBC F8               [12] 2072 	mov	r0,a
      002BBD E6               [12] 2073 	mov	a,@r0
      002BBE 52 06            [12] 2074 	anl	ar6,a
      002BC0 08               [12] 2075 	inc	r0
      002BC1 E6               [12] 2076 	mov	a,@r0
      002BC2 52 07            [12] 2077 	anl	ar7,a
      002BC4 E5 0C            [12] 2078 	mov	a,_bp
      002BC6 24 FC            [12] 2079 	add	a,#0xfc
      002BC8 F8               [12] 2080 	mov	r0,a
      002BC9 E6               [12] 2081 	mov	a,@r0
      002BCA B5 06 07         [24] 2082 	cjne	a,ar6,00124$
      002BCD 08               [12] 2083 	inc	r0
      002BCE E6               [12] 2084 	mov	a,@r0
      002BCF B5 07 02         [24] 2085 	cjne	a,ar7,00124$
      002BD2 80 02            [24] 2086 	sjmp	00125$
      002BD4                       2087 00124$:
      002BD4 80 02            [24] 2088 	sjmp	00107$
      002BD6                       2089 00125$:
                           00087D  2090 	C$event_groups.c$694$3_0$202 ==.
                                   2091 ;	src/FreeRTOS/event_groups.c:694: xWaitConditionMet = pdTRUE;
      002BD6 7D 01            [12] 2092 	mov	r5,#0x01
      002BD8                       2093 00107$:
                           00087F  2094 	C$event_groups.c$702$1_0$197 ==.
                                   2095 ;	src/FreeRTOS/event_groups.c:702: return xWaitConditionMet;
      002BD8 8D 82            [24] 2096 	mov	dpl,r5
                           000881  2097 	C$event_groups.c$703$1_0$197 ==.
                                   2098 ;	src/FreeRTOS/event_groups.c:703: }
      002BDA D0 0C            [24] 2099 	pop	_bp
                           000883  2100 	C$event_groups.c$703$1_0$197 ==.
                           000883  2101 	XFevent_groups$prvTestWaitCondition$0$0 ==.
      002BDC 22               [24] 2102 	ret
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
                                   2105 	.area CABS    (ABS,CODE)
