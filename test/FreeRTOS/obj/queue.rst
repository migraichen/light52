                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module queue
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _vTaskInternalSetTimeOutState
                                     12 	.globl _vTaskMissedYield
                                     13 	.globl _xTaskCheckForTimeOut
                                     14 	.globl _xTaskRemoveFromEventList
                                     15 	.globl _vTaskPlaceOnEventList
                                     16 	.globl _xTaskResumeAll
                                     17 	.globl _vTaskSuspendAll
                                     18 	.globl _vListInitialise
                                     19 	.globl _vPortFree
                                     20 	.globl _pvPortMalloc
                                     21 	.globl _vPortYield
                                     22 	.globl _memcpy
                                     23 	.globl _P3_7
                                     24 	.globl _P3_6
                                     25 	.globl _P3_5
                                     26 	.globl _P3_4
                                     27 	.globl _P3_3
                                     28 	.globl _P3_2
                                     29 	.globl _P3_1
                                     30 	.globl _P3_0
                                     31 	.globl _P2_7
                                     32 	.globl _P2_6
                                     33 	.globl _P2_5
                                     34 	.globl _P2_4
                                     35 	.globl _P2_3
                                     36 	.globl _P2_2
                                     37 	.globl _P2_1
                                     38 	.globl _P2_0
                                     39 	.globl _P1_7
                                     40 	.globl _P1_6
                                     41 	.globl _P1_5
                                     42 	.globl _P1_4
                                     43 	.globl _P1_3
                                     44 	.globl _P1_2
                                     45 	.globl _P1_1
                                     46 	.globl _P1_0
                                     47 	.globl _P0_7
                                     48 	.globl _P0_6
                                     49 	.globl _P0_5
                                     50 	.globl _P0_4
                                     51 	.globl _P0_3
                                     52 	.globl _P0_2
                                     53 	.globl _P0_1
                                     54 	.globl _P0_0
                                     55 	.globl _EIRQ7
                                     56 	.globl _EIRQ6
                                     57 	.globl _EIRQ5
                                     58 	.globl _EIRQ4
                                     59 	.globl _EIRQ3
                                     60 	.globl _EIRQ2
                                     61 	.globl _EIRQ1
                                     62 	.globl _EIRQ0
                                     63 	.globl _T0CEN
                                     64 	.globl _T0ARL
                                     65 	.globl _T0IRQ
                                     66 	.globl _RXRDY
                                     67 	.globl _TXRDY
                                     68 	.globl _RXIRQ
                                     69 	.globl _TXIRQ
                                     70 	.globl _EEX
                                     71 	.globl _ET0
                                     72 	.globl _ES
                                     73 	.globl _EA
                                     74 	.globl _P3
                                     75 	.globl _P2
                                     76 	.globl _P1
                                     77 	.globl _P0
                                     78 	.globl _EXTINT
                                     79 	.globl _T0CH
                                     80 	.globl _T0CL
                                     81 	.globl _T0H
                                     82 	.globl _T0L
                                     83 	.globl _TCON
                                     84 	.globl _SBPH
                                     85 	.globl _SBPL
                                     86 	.globl _SBUF
                                     87 	.globl _SCON
                                     88 	.globl _IE
                                     89 	.globl _DPL
                                     90 	.globl _DPH
                                     91 	.globl _SP
                                     92 	.globl _PSW
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _xQueueGenericReset
                                     96 	.globl _xQueueGenericCreate
                                     97 	.globl _xQueueGenericSend
                                     98 	.globl _xQueueGenericSendFromISR
                                     99 	.globl _xQueueGiveFromISR
                                    100 	.globl _xQueueReceive
                                    101 	.globl _xQueueSemaphoreTake
                                    102 	.globl _xQueuePeek
                                    103 	.globl _xQueueReceiveFromISR
                                    104 	.globl _xQueuePeekFromISR
                                    105 	.globl _uxQueueMessagesWaiting
                                    106 	.globl _uxQueueSpacesAvailable
                                    107 	.globl _uxQueueMessagesWaitingFromISR
                                    108 	.globl _vQueueDelete
                                    109 	.globl _xQueueIsQueueEmptyFromISR
                                    110 	.globl _xQueueIsQueueFullFromISR
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           0000E0   116 G$ACC$0_0$0 == 0x00e0
                           0000E0   117 _ACC	=	0x00e0
                           0000F0   118 G$B$0_0$0 == 0x00f0
                           0000F0   119 _B	=	0x00f0
                           0000D0   120 G$PSW$0_0$0 == 0x00d0
                           0000D0   121 _PSW	=	0x00d0
                           000081   122 G$SP$0_0$0 == 0x0081
                           000081   123 _SP	=	0x0081
                           000083   124 G$DPH$0_0$0 == 0x0083
                           000083   125 _DPH	=	0x0083
                           000082   126 G$DPL$0_0$0 == 0x0082
                           000082   127 _DPL	=	0x0082
                           0000A8   128 G$IE$0_0$0 == 0x00a8
                           0000A8   129 _IE	=	0x00a8
                           000098   130 G$SCON$0_0$0 == 0x0098
                           000098   131 _SCON	=	0x0098
                           000099   132 G$SBUF$0_0$0 == 0x0099
                           000099   133 _SBUF	=	0x0099
                           00009A   134 G$SBPL$0_0$0 == 0x009a
                           00009A   135 _SBPL	=	0x009a
                           00009B   136 G$SBPH$0_0$0 == 0x009b
                           00009B   137 _SBPH	=	0x009b
                           000088   138 G$TCON$0_0$0 == 0x0088
                           000088   139 _TCON	=	0x0088
                           00008C   140 G$T0L$0_0$0 == 0x008c
                           00008C   141 _T0L	=	0x008c
                           00008D   142 G$T0H$0_0$0 == 0x008d
                           00008D   143 _T0H	=	0x008d
                           00008E   144 G$T0CL$0_0$0 == 0x008e
                           00008E   145 _T0CL	=	0x008e
                           00008F   146 G$T0CH$0_0$0 == 0x008f
                           00008F   147 _T0CH	=	0x008f
                           0000C0   148 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   149 _EXTINT	=	0x00c0
                           000080   150 G$P0$0_0$0 == 0x0080
                           000080   151 _P0	=	0x0080
                           000090   152 G$P1$0_0$0 == 0x0090
                           000090   153 _P1	=	0x0090
                           0000A0   154 G$P2$0_0$0 == 0x00a0
                           0000A0   155 _P2	=	0x00a0
                           0000B0   156 G$P3$0_0$0 == 0x00b0
                           0000B0   157 _P3	=	0x00b0
                                    158 ;--------------------------------------------------------
                                    159 ; special function bits
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           0000AF   163 G$EA$0_0$0 == 0x00af
                           0000AF   164 _EA	=	0x00af
                           0000AC   165 G$ES$0_0$0 == 0x00ac
                           0000AC   166 _ES	=	0x00ac
                           0000A9   167 G$ET0$0_0$0 == 0x00a9
                           0000A9   168 _ET0	=	0x00a9
                           0000A8   169 G$EEX$0_0$0 == 0x00a8
                           0000A8   170 _EEX	=	0x00a8
                           00009C   171 G$TXIRQ$0_0$0 == 0x009c
                           00009C   172 _TXIRQ	=	0x009c
                           00009D   173 G$RXIRQ$0_0$0 == 0x009d
                           00009D   174 _RXIRQ	=	0x009d
                           00009C   175 G$TXRDY$0_0$0 == 0x009c
                           00009C   176 _TXRDY	=	0x009c
                           00009D   177 G$RXRDY$0_0$0 == 0x009d
                           00009D   178 _RXRDY	=	0x009d
                           000088   179 G$T0IRQ$0_0$0 == 0x0088
                           000088   180 _T0IRQ	=	0x0088
                           00008C   181 G$T0ARL$0_0$0 == 0x008c
                           00008C   182 _T0ARL	=	0x008c
                           00008D   183 G$T0CEN$0_0$0 == 0x008d
                           00008D   184 _T0CEN	=	0x008d
                           0000C0   185 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   186 _EIRQ0	=	0x00c0
                           0000C1   187 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   188 _EIRQ1	=	0x00c1
                           0000C2   189 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   190 _EIRQ2	=	0x00c2
                           0000C3   191 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   192 _EIRQ3	=	0x00c3
                           0000C4   193 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   194 _EIRQ4	=	0x00c4
                           0000C5   195 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   196 _EIRQ5	=	0x00c5
                           0000C6   197 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   198 _EIRQ6	=	0x00c6
                           0000C7   199 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   200 _EIRQ7	=	0x00c7
                           000080   201 G$P0_0$0_0$0 == 0x0080
                           000080   202 _P0_0	=	0x0080
                           000081   203 G$P0_1$0_0$0 == 0x0081
                           000081   204 _P0_1	=	0x0081
                           000082   205 G$P0_2$0_0$0 == 0x0082
                           000082   206 _P0_2	=	0x0082
                           000083   207 G$P0_3$0_0$0 == 0x0083
                           000083   208 _P0_3	=	0x0083
                           000084   209 G$P0_4$0_0$0 == 0x0084
                           000084   210 _P0_4	=	0x0084
                           000085   211 G$P0_5$0_0$0 == 0x0085
                           000085   212 _P0_5	=	0x0085
                           000086   213 G$P0_6$0_0$0 == 0x0086
                           000086   214 _P0_6	=	0x0086
                           000087   215 G$P0_7$0_0$0 == 0x0087
                           000087   216 _P0_7	=	0x0087
                           000090   217 G$P1_0$0_0$0 == 0x0090
                           000090   218 _P1_0	=	0x0090
                           000091   219 G$P1_1$0_0$0 == 0x0091
                           000091   220 _P1_1	=	0x0091
                           000092   221 G$P1_2$0_0$0 == 0x0092
                           000092   222 _P1_2	=	0x0092
                           000093   223 G$P1_3$0_0$0 == 0x0093
                           000093   224 _P1_3	=	0x0093
                           000094   225 G$P1_4$0_0$0 == 0x0094
                           000094   226 _P1_4	=	0x0094
                           000095   227 G$P1_5$0_0$0 == 0x0095
                           000095   228 _P1_5	=	0x0095
                           000096   229 G$P1_6$0_0$0 == 0x0096
                           000096   230 _P1_6	=	0x0096
                           000097   231 G$P1_7$0_0$0 == 0x0097
                           000097   232 _P1_7	=	0x0097
                           0000A0   233 G$P2_0$0_0$0 == 0x00a0
                           0000A0   234 _P2_0	=	0x00a0
                           0000A1   235 G$P2_1$0_0$0 == 0x00a1
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 G$P2_2$0_0$0 == 0x00a2
                           0000A2   238 _P2_2	=	0x00a2
                           0000A3   239 G$P2_3$0_0$0 == 0x00a3
                           0000A3   240 _P2_3	=	0x00a3
                           0000A4   241 G$P2_4$0_0$0 == 0x00a4
                           0000A4   242 _P2_4	=	0x00a4
                           0000A5   243 G$P2_5$0_0$0 == 0x00a5
                           0000A5   244 _P2_5	=	0x00a5
                           0000A6   245 G$P2_6$0_0$0 == 0x00a6
                           0000A6   246 _P2_6	=	0x00a6
                           0000A7   247 G$P2_7$0_0$0 == 0x00a7
                           0000A7   248 _P2_7	=	0x00a7
                           0000B0   249 G$P3_0$0_0$0 == 0x00b0
                           0000B0   250 _P3_0	=	0x00b0
                           0000B1   251 G$P3_1$0_0$0 == 0x00b1
                           0000B1   252 _P3_1	=	0x00b1
                           0000B2   253 G$P3_2$0_0$0 == 0x00b2
                           0000B2   254 _P3_2	=	0x00b2
                           0000B3   255 G$P3_3$0_0$0 == 0x00b3
                           0000B3   256 _P3_3	=	0x00b3
                           0000B4   257 G$P3_4$0_0$0 == 0x00b4
                           0000B4   258 _P3_4	=	0x00b4
                           0000B5   259 G$P3_5$0_0$0 == 0x00b5
                           0000B5   260 _P3_5	=	0x00b5
                           0000B6   261 G$P3_6$0_0$0 == 0x00b6
                           0000B6   262 _P3_6	=	0x00b6
                           0000B7   263 G$P3_7$0_0$0 == 0x00b7
                           0000B7   264 _P3_7	=	0x00b7
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable register banks
                                    267 ;--------------------------------------------------------
                                    268 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        269 	.ds 8
                                    270 ;--------------------------------------------------------
                                    271 ; internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area DSEG    (DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable items in internal ram 
                                    276 ;--------------------------------------------------------
                                    277 ;--------------------------------------------------------
                                    278 ; indirectly addressable internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area ISEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external initialized ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; Home
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area HOME    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; code
                                    329 ;--------------------------------------------------------
                                    330 	.area CSEG    (CODE)
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'xQueueGenericReset'
                                    333 ;------------------------------------------------------------
                                    334 ;xNewQueue                 Allocated to stack - _bp -3
                                    335 ;xQueue                    Allocated to stack - _bp +1
                                    336 ;pxQueue                   Allocated to registers 
                                    337 ;sloc0                     Allocated to stack - _bp +4
                                    338 ;sloc1                     Allocated to stack - _bp +7
                                    339 ;sloc2                     Allocated to stack - _bp +13
                                    340 ;sloc3                     Allocated to stack - _bp +10
                                    341 ;------------------------------------------------------------
                           000000   342 	G$xQueueGenericReset$0$0 ==.
                           000000   343 	C$queue.c$255$0_0$168 ==.
                                    344 ;	src/FreeRTOS/queue.c:255: BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue )
                                    345 ;	-----------------------------------------
                                    346 ;	 function xQueueGenericReset
                                    347 ;	-----------------------------------------
      003234                        348 _xQueueGenericReset:
                           000007   349 	ar7 = 0x07
                           000006   350 	ar6 = 0x06
                           000005   351 	ar5 = 0x05
                           000004   352 	ar4 = 0x04
                           000003   353 	ar3 = 0x03
                           000002   354 	ar2 = 0x02
                           000001   355 	ar1 = 0x01
                           000000   356 	ar0 = 0x00
      003234 C0 0C            [24]  357 	push	_bp
      003236 85 81 0C         [24]  358 	mov	_bp,sp
      003239 C0 82            [24]  359 	push	dpl
      00323B C0 83            [24]  360 	push	dph
      00323D C0 F0            [24]  361 	push	b
      00323F E5 81            [12]  362 	mov	a,sp
      003241 24 09            [12]  363 	add	a,#0x09
      003243 F5 81            [12]  364 	mov	sp,a
                           000011   365 	C$queue.c$261$1_0$168 ==.
                                    366 ;	src/FreeRTOS/queue.c:261: taskENTER_CRITICAL();
      003245 C0 E0            [24]  367 	push ACC 
      003247 C0 A8            [24]  368 	push IE 
                                    369 ;	assignBit
      003249 C2 AF            [12]  370 	clr	_EA
                           000017   371 	C$queue.c$263$2_0$169 ==.
                                    372 ;	src/FreeRTOS/queue.c:263: pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      00324B A8 0C            [24]  373 	mov	r0,_bp
      00324D 08               [12]  374 	inc	r0
      00324E 74 06            [12]  375 	mov	a,#0x06
      003250 26               [12]  376 	add	a,@r0
      003251 FA               [12]  377 	mov	r2,a
      003252 E4               [12]  378 	clr	a
      003253 08               [12]  379 	inc	r0
      003254 36               [12]  380 	addc	a,@r0
      003255 FB               [12]  381 	mov	r3,a
      003256 08               [12]  382 	inc	r0
      003257 86 04            [24]  383 	mov	ar4,@r0
      003259 A8 0C            [24]  384 	mov	r0,_bp
      00325B 08               [12]  385 	inc	r0
      00325C 86 82            [24]  386 	mov	dpl,@r0
      00325E 08               [12]  387 	inc	r0
      00325F 86 83            [24]  388 	mov	dph,@r0
      003261 08               [12]  389 	inc	r0
      003262 86 F0            [24]  390 	mov	b,@r0
      003264 E5 0C            [12]  391 	mov	a,_bp
      003266 24 04            [12]  392 	add	a,#0x04
      003268 F9               [12]  393 	mov	r1,a
      003269 12 70 5A         [24]  394 	lcall	__gptrget
      00326C F7               [12]  395 	mov	@r1,a
      00326D A3               [24]  396 	inc	dptr
      00326E 12 70 5A         [24]  397 	lcall	__gptrget
      003271 09               [12]  398 	inc	r1
      003272 F7               [12]  399 	mov	@r1,a
      003273 A3               [24]  400 	inc	dptr
      003274 12 70 5A         [24]  401 	lcall	__gptrget
      003277 09               [12]  402 	inc	r1
      003278 F7               [12]  403 	mov	@r1,a
      003279 A8 0C            [24]  404 	mov	r0,_bp
      00327B 08               [12]  405 	inc	r0
      00327C E5 0C            [12]  406 	mov	a,_bp
      00327E 24 07            [12]  407 	add	a,#0x07
      003280 F9               [12]  408 	mov	r1,a
      003281 74 25            [12]  409 	mov	a,#0x25
      003283 26               [12]  410 	add	a,@r0
      003284 F7               [12]  411 	mov	@r1,a
      003285 E4               [12]  412 	clr	a
      003286 08               [12]  413 	inc	r0
      003287 36               [12]  414 	addc	a,@r0
      003288 09               [12]  415 	inc	r1
      003289 F7               [12]  416 	mov	@r1,a
      00328A 08               [12]  417 	inc	r0
      00328B 09               [12]  418 	inc	r1
      00328C E6               [12]  419 	mov	a,@r0
      00328D F7               [12]  420 	mov	@r1,a
      00328E E5 0C            [12]  421 	mov	a,_bp
      003290 24 07            [12]  422 	add	a,#0x07
      003292 F8               [12]  423 	mov	r0,a
      003293 86 82            [24]  424 	mov	dpl,@r0
      003295 08               [12]  425 	inc	r0
      003296 86 83            [24]  426 	mov	dph,@r0
      003298 08               [12]  427 	inc	r0
      003299 86 F0            [24]  428 	mov	b,@r0
      00329B 12 70 5A         [24]  429 	lcall	__gptrget
      00329E FE               [12]  430 	mov	r6,a
      00329F A8 0C            [24]  431 	mov	r0,_bp
      0032A1 08               [12]  432 	inc	r0
      0032A2 E5 0C            [12]  433 	mov	a,_bp
      0032A4 24 0A            [12]  434 	add	a,#0x0a
      0032A6 F9               [12]  435 	mov	r1,a
      0032A7 74 26            [12]  436 	mov	a,#0x26
      0032A9 26               [12]  437 	add	a,@r0
      0032AA F7               [12]  438 	mov	@r1,a
      0032AB E4               [12]  439 	clr	a
      0032AC 08               [12]  440 	inc	r0
      0032AD 36               [12]  441 	addc	a,@r0
      0032AE 09               [12]  442 	inc	r1
      0032AF F7               [12]  443 	mov	@r1,a
      0032B0 08               [12]  444 	inc	r0
      0032B1 09               [12]  445 	inc	r1
      0032B2 E6               [12]  446 	mov	a,@r0
      0032B3 F7               [12]  447 	mov	@r1,a
      0032B4 E5 0C            [12]  448 	mov	a,_bp
      0032B6 24 0A            [12]  449 	add	a,#0x0a
      0032B8 F8               [12]  450 	mov	r0,a
      0032B9 86 82            [24]  451 	mov	dpl,@r0
      0032BB 08               [12]  452 	inc	r0
      0032BC 86 83            [24]  453 	mov	dph,@r0
      0032BE 08               [12]  454 	inc	r0
      0032BF 86 F0            [24]  455 	mov	b,@r0
      0032C1 12 70 5A         [24]  456 	lcall	__gptrget
      0032C4 8E F0            [24]  457 	mov	b,r6
      0032C6 A4               [48]  458 	mul	ab
      0032C7 C8               [12]  459 	xch	a,r0
      0032C8 E5 0C            [12]  460 	mov	a,_bp
      0032CA 24 04            [12]  461 	add	a,#0x04
      0032CC C8               [12]  462 	xch	a,r0
      0032CD 26               [12]  463 	add	a,@r0
      0032CE FD               [12]  464 	mov	r5,a
      0032CF 08               [12]  465 	inc	r0
      0032D0 E6               [12]  466 	mov	a,@r0
      0032D1 35 F0            [12]  467 	addc	a,b
      0032D3 FE               [12]  468 	mov	r6,a
      0032D4 08               [12]  469 	inc	r0
      0032D5 86 07            [24]  470 	mov	ar7,@r0
      0032D7 8A 82            [24]  471 	mov	dpl,r2
      0032D9 8B 83            [24]  472 	mov	dph,r3
      0032DB 8C F0            [24]  473 	mov	b,r4
      0032DD ED               [12]  474 	mov	a,r5
      0032DE 12 66 A0         [24]  475 	lcall	__gptrput
      0032E1 A3               [24]  476 	inc	dptr
      0032E2 EE               [12]  477 	mov	a,r6
      0032E3 12 66 A0         [24]  478 	lcall	__gptrput
      0032E6 A3               [24]  479 	inc	dptr
      0032E7 EF               [12]  480 	mov	a,r7
      0032E8 12 66 A0         [24]  481 	lcall	__gptrput
                           0000B7   482 	C$queue.c$264$2_0$169 ==.
                                    483 ;	src/FreeRTOS/queue.c:264: pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
      0032EB A8 0C            [24]  484 	mov	r0,_bp
      0032ED 08               [12]  485 	inc	r0
      0032EE 74 24            [12]  486 	mov	a,#0x24
      0032F0 26               [12]  487 	add	a,@r0
      0032F1 FD               [12]  488 	mov	r5,a
      0032F2 E4               [12]  489 	clr	a
      0032F3 08               [12]  490 	inc	r0
      0032F4 36               [12]  491 	addc	a,@r0
      0032F5 FE               [12]  492 	mov	r6,a
      0032F6 08               [12]  493 	inc	r0
      0032F7 86 07            [24]  494 	mov	ar7,@r0
      0032F9 8D 82            [24]  495 	mov	dpl,r5
      0032FB 8E 83            [24]  496 	mov	dph,r6
      0032FD 8F F0            [24]  497 	mov	b,r7
      0032FF E4               [12]  498 	clr	a
      003300 12 66 A0         [24]  499 	lcall	__gptrput
                           0000CF   500 	C$queue.c$265$2_0$169 ==.
                                    501 ;	src/FreeRTOS/queue.c:265: pxQueue->pcWriteTo = pxQueue->pcHead;
      003303 A8 0C            [24]  502 	mov	r0,_bp
      003305 08               [12]  503 	inc	r0
      003306 E5 0C            [12]  504 	mov	a,_bp
      003308 24 04            [12]  505 	add	a,#0x04
      00330A F9               [12]  506 	mov	r1,a
      00330B 74 03            [12]  507 	mov	a,#0x03
      00330D 26               [12]  508 	add	a,@r0
      00330E F7               [12]  509 	mov	@r1,a
      00330F E4               [12]  510 	clr	a
      003310 08               [12]  511 	inc	r0
      003311 36               [12]  512 	addc	a,@r0
      003312 09               [12]  513 	inc	r1
      003313 F7               [12]  514 	mov	@r1,a
      003314 08               [12]  515 	inc	r0
      003315 09               [12]  516 	inc	r1
      003316 E6               [12]  517 	mov	a,@r0
      003317 F7               [12]  518 	mov	@r1,a
      003318 A8 0C            [24]  519 	mov	r0,_bp
      00331A 08               [12]  520 	inc	r0
      00331B 86 82            [24]  521 	mov	dpl,@r0
      00331D 08               [12]  522 	inc	r0
      00331E 86 83            [24]  523 	mov	dph,@r0
      003320 08               [12]  524 	inc	r0
      003321 86 F0            [24]  525 	mov	b,@r0
      003323 12 70 5A         [24]  526 	lcall	__gptrget
      003326 FD               [12]  527 	mov	r5,a
      003327 A3               [24]  528 	inc	dptr
      003328 12 70 5A         [24]  529 	lcall	__gptrget
      00332B FE               [12]  530 	mov	r6,a
      00332C A3               [24]  531 	inc	dptr
      00332D 12 70 5A         [24]  532 	lcall	__gptrget
      003330 FF               [12]  533 	mov	r7,a
      003331 E5 0C            [12]  534 	mov	a,_bp
      003333 24 04            [12]  535 	add	a,#0x04
      003335 F8               [12]  536 	mov	r0,a
      003336 86 82            [24]  537 	mov	dpl,@r0
      003338 08               [12]  538 	inc	r0
      003339 86 83            [24]  539 	mov	dph,@r0
      00333B 08               [12]  540 	inc	r0
      00333C 86 F0            [24]  541 	mov	b,@r0
      00333E ED               [12]  542 	mov	a,r5
      00333F 12 66 A0         [24]  543 	lcall	__gptrput
      003342 A3               [24]  544 	inc	dptr
      003343 EE               [12]  545 	mov	a,r6
      003344 12 66 A0         [24]  546 	lcall	__gptrput
      003347 A3               [24]  547 	inc	dptr
      003348 EF               [12]  548 	mov	a,r7
      003349 12 66 A0         [24]  549 	lcall	__gptrput
                           000118   550 	C$queue.c$266$2_0$169 ==.
                                    551 ;	src/FreeRTOS/queue.c:266: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      00334C 74 03            [12]  552 	mov	a,#0x03
      00334E 2A               [12]  553 	add	a,r2
      00334F FA               [12]  554 	mov	r2,a
      003350 E4               [12]  555 	clr	a
      003351 3B               [12]  556 	addc	a,r3
      003352 FB               [12]  557 	mov	r3,a
      003353 A8 0C            [24]  558 	mov	r0,_bp
      003355 08               [12]  559 	inc	r0
      003356 86 82            [24]  560 	mov	dpl,@r0
      003358 08               [12]  561 	inc	r0
      003359 86 83            [24]  562 	mov	dph,@r0
      00335B 08               [12]  563 	inc	r0
      00335C 86 F0            [24]  564 	mov	b,@r0
      00335E E5 0C            [12]  565 	mov	a,_bp
      003360 24 04            [12]  566 	add	a,#0x04
      003362 F9               [12]  567 	mov	r1,a
      003363 12 70 5A         [24]  568 	lcall	__gptrget
      003366 F7               [12]  569 	mov	@r1,a
      003367 A3               [24]  570 	inc	dptr
      003368 12 70 5A         [24]  571 	lcall	__gptrget
      00336B 09               [12]  572 	inc	r1
      00336C F7               [12]  573 	mov	@r1,a
      00336D A3               [24]  574 	inc	dptr
      00336E 12 70 5A         [24]  575 	lcall	__gptrget
      003371 09               [12]  576 	inc	r1
      003372 F7               [12]  577 	mov	@r1,a
      003373 E5 0C            [12]  578 	mov	a,_bp
      003375 24 07            [12]  579 	add	a,#0x07
      003377 F8               [12]  580 	mov	r0,a
      003378 86 82            [24]  581 	mov	dpl,@r0
      00337A 08               [12]  582 	inc	r0
      00337B 86 83            [24]  583 	mov	dph,@r0
      00337D 08               [12]  584 	inc	r0
      00337E 86 F0            [24]  585 	mov	b,@r0
      003380 12 70 5A         [24]  586 	lcall	__gptrget
      003383 FF               [12]  587 	mov	r7,a
      003384 7E 00            [12]  588 	mov	r6,#0x00
      003386 E5 0C            [12]  589 	mov	a,_bp
      003388 24 07            [12]  590 	add	a,#0x07
      00338A F8               [12]  591 	mov	r0,a
      00338B EF               [12]  592 	mov	a,r7
      00338C 24 FF            [12]  593 	add	a,#0xff
      00338E F6               [12]  594 	mov	@r0,a
      00338F EE               [12]  595 	mov	a,r6
      003390 34 FF            [12]  596 	addc	a,#0xff
      003392 08               [12]  597 	inc	r0
      003393 F6               [12]  598 	mov	@r0,a
      003394 E5 0C            [12]  599 	mov	a,_bp
      003396 24 0A            [12]  600 	add	a,#0x0a
      003398 F8               [12]  601 	mov	r0,a
      003399 86 82            [24]  602 	mov	dpl,@r0
      00339B 08               [12]  603 	inc	r0
      00339C 86 83            [24]  604 	mov	dph,@r0
      00339E 08               [12]  605 	inc	r0
      00339F 86 F0            [24]  606 	mov	b,@r0
      0033A1 12 70 5A         [24]  607 	lcall	__gptrget
      0033A4 FD               [12]  608 	mov	r5,a
      0033A5 7F 00            [12]  609 	mov	r7,#0x00
      0033A7 C0 04            [24]  610 	push	ar4
      0033A9 C0 03            [24]  611 	push	ar3
      0033AB C0 02            [24]  612 	push	ar2
      0033AD C0 05            [24]  613 	push	ar5
      0033AF C0 07            [24]  614 	push	ar7
      0033B1 E5 0C            [12]  615 	mov	a,_bp
      0033B3 24 07            [12]  616 	add	a,#0x07
      0033B5 F8               [12]  617 	mov	r0,a
      0033B6 86 82            [24]  618 	mov	dpl,@r0
      0033B8 08               [12]  619 	inc	r0
      0033B9 86 83            [24]  620 	mov	dph,@r0
      0033BB 12 66 BB         [24]  621 	lcall	__mulint
      0033BE AE 82            [24]  622 	mov	r6,dpl
      0033C0 AF 83            [24]  623 	mov	r7,dph
      0033C2 15 81            [12]  624 	dec	sp
      0033C4 15 81            [12]  625 	dec	sp
      0033C6 D0 02            [24]  626 	pop	ar2
      0033C8 D0 03            [24]  627 	pop	ar3
      0033CA D0 04            [24]  628 	pop	ar4
      0033CC E5 0C            [12]  629 	mov	a,_bp
      0033CE 24 04            [12]  630 	add	a,#0x04
      0033D0 F8               [12]  631 	mov	r0,a
      0033D1 EE               [12]  632 	mov	a,r6
      0033D2 26               [12]  633 	add	a,@r0
      0033D3 FE               [12]  634 	mov	r6,a
      0033D4 EF               [12]  635 	mov	a,r7
      0033D5 08               [12]  636 	inc	r0
      0033D6 36               [12]  637 	addc	a,@r0
      0033D7 FF               [12]  638 	mov	r7,a
      0033D8 08               [12]  639 	inc	r0
      0033D9 86 05            [24]  640 	mov	ar5,@r0
      0033DB 8A 82            [24]  641 	mov	dpl,r2
      0033DD 8B 83            [24]  642 	mov	dph,r3
      0033DF 8C F0            [24]  643 	mov	b,r4
      0033E1 EE               [12]  644 	mov	a,r6
      0033E2 12 66 A0         [24]  645 	lcall	__gptrput
      0033E5 A3               [24]  646 	inc	dptr
      0033E6 EF               [12]  647 	mov	a,r7
      0033E7 12 66 A0         [24]  648 	lcall	__gptrput
      0033EA A3               [24]  649 	inc	dptr
      0033EB ED               [12]  650 	mov	a,r5
      0033EC 12 66 A0         [24]  651 	lcall	__gptrput
                           0001BB   652 	C$queue.c$267$2_0$169 ==.
                                    653 ;	src/FreeRTOS/queue.c:267: pxQueue->cRxLock = queueUNLOCKED;
      0033EF A8 0C            [24]  654 	mov	r0,_bp
      0033F1 08               [12]  655 	inc	r0
      0033F2 74 27            [12]  656 	mov	a,#0x27
      0033F4 26               [12]  657 	add	a,@r0
      0033F5 FD               [12]  658 	mov	r5,a
      0033F6 E4               [12]  659 	clr	a
      0033F7 08               [12]  660 	inc	r0
      0033F8 36               [12]  661 	addc	a,@r0
      0033F9 FE               [12]  662 	mov	r6,a
      0033FA 08               [12]  663 	inc	r0
      0033FB 86 07            [24]  664 	mov	ar7,@r0
      0033FD 8D 82            [24]  665 	mov	dpl,r5
      0033FF 8E 83            [24]  666 	mov	dph,r6
      003401 8F F0            [24]  667 	mov	b,r7
      003403 74 FF            [12]  668 	mov	a,#0xff
      003405 12 66 A0         [24]  669 	lcall	__gptrput
                           0001D4   670 	C$queue.c$268$2_0$169 ==.
                                    671 ;	src/FreeRTOS/queue.c:268: pxQueue->cTxLock = queueUNLOCKED;
      003408 A8 0C            [24]  672 	mov	r0,_bp
      00340A 08               [12]  673 	inc	r0
      00340B 74 28            [12]  674 	mov	a,#0x28
      00340D 26               [12]  675 	add	a,@r0
      00340E FD               [12]  676 	mov	r5,a
      00340F E4               [12]  677 	clr	a
      003410 08               [12]  678 	inc	r0
      003411 36               [12]  679 	addc	a,@r0
      003412 FE               [12]  680 	mov	r6,a
      003413 08               [12]  681 	inc	r0
      003414 86 07            [24]  682 	mov	ar7,@r0
      003416 8D 82            [24]  683 	mov	dpl,r5
      003418 8E 83            [24]  684 	mov	dph,r6
      00341A 8F F0            [24]  685 	mov	b,r7
      00341C 74 FF            [12]  686 	mov	a,#0xff
      00341E 12 66 A0         [24]  687 	lcall	__gptrput
                           0001ED   688 	C$queue.c$270$2_0$169 ==.
                                    689 ;	src/FreeRTOS/queue.c:270: if( xNewQueue == pdFALSE )
      003421 E5 0C            [12]  690 	mov	a,_bp
      003423 24 FD            [12]  691 	add	a,#0xfd
      003425 F8               [12]  692 	mov	r0,a
      003426 E6               [12]  693 	mov	a,@r0
      003427 70 39            [24]  694 	jnz	00106$
                           0001F5   695 	C$queue.c$277$3_0$170 ==.
                                    696 ;	src/FreeRTOS/queue.c:277: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      003429 A8 0C            [24]  697 	mov	r0,_bp
      00342B 08               [12]  698 	inc	r0
      00342C 74 0C            [12]  699 	mov	a,#0x0c
      00342E 26               [12]  700 	add	a,@r0
      00342F FD               [12]  701 	mov	r5,a
      003430 E4               [12]  702 	clr	a
      003431 08               [12]  703 	inc	r0
      003432 36               [12]  704 	addc	a,@r0
      003433 FE               [12]  705 	mov	r6,a
      003434 08               [12]  706 	inc	r0
      003435 86 07            [24]  707 	mov	ar7,@r0
      003437 8D 82            [24]  708 	mov	dpl,r5
      003439 8E 83            [24]  709 	mov	dph,r6
      00343B 8F F0            [24]  710 	mov	b,r7
      00343D 12 70 5A         [24]  711 	lcall	__gptrget
      003440 60 4E            [24]  712 	jz	00107$
                           00020E   713 	C$queue.c$279$4_0$171 ==.
                                    714 ;	src/FreeRTOS/queue.c:279: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      003442 A8 0C            [24]  715 	mov	r0,_bp
      003444 08               [12]  716 	inc	r0
      003445 74 0C            [12]  717 	mov	a,#0x0c
      003447 26               [12]  718 	add	a,@r0
      003448 FD               [12]  719 	mov	r5,a
      003449 E4               [12]  720 	clr	a
      00344A 08               [12]  721 	inc	r0
      00344B 36               [12]  722 	addc	a,@r0
      00344C FE               [12]  723 	mov	r6,a
      00344D 08               [12]  724 	inc	r0
      00344E 86 07            [24]  725 	mov	ar7,@r0
      003450 8D 82            [24]  726 	mov	dpl,r5
      003452 8E 83            [24]  727 	mov	dph,r6
      003454 8F F0            [24]  728 	mov	b,r7
      003456 12 10 57         [24]  729 	lcall	_xTaskRemoveFromEventList
      003459 E5 82            [12]  730 	mov	a,dpl
      00345B 60 33            [24]  731 	jz	00107$
                           000229   732 	C$queue.c$281$5_0$172 ==.
                                    733 ;	src/FreeRTOS/queue.c:281: queueYIELD_IF_USING_PREEMPTION();
      00345D 12 64 B5         [24]  734 	lcall	_vPortYield
      003460 80 2E            [24]  735 	sjmp	00107$
      003462                        736 00106$:
                           00022E   737 	C$queue.c$296$3_0$175 ==.
                                    738 ;	src/FreeRTOS/queue.c:296: vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
      003462 A8 0C            [24]  739 	mov	r0,_bp
      003464 08               [12]  740 	inc	r0
      003465 74 0C            [12]  741 	mov	a,#0x0c
      003467 26               [12]  742 	add	a,@r0
      003468 FD               [12]  743 	mov	r5,a
      003469 E4               [12]  744 	clr	a
      00346A 08               [12]  745 	inc	r0
      00346B 36               [12]  746 	addc	a,@r0
      00346C FE               [12]  747 	mov	r6,a
      00346D 08               [12]  748 	inc	r0
      00346E 86 07            [24]  749 	mov	ar7,@r0
      003470 8D 82            [24]  750 	mov	dpl,r5
      003472 8E 83            [24]  751 	mov	dph,r6
      003474 8F F0            [24]  752 	mov	b,r7
      003476 12 2B DD         [24]  753 	lcall	_vListInitialise
                           000245   754 	C$queue.c$297$3_0$175 ==.
                                    755 ;	src/FreeRTOS/queue.c:297: vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
      003479 A8 0C            [24]  756 	mov	r0,_bp
      00347B 08               [12]  757 	inc	r0
      00347C 74 18            [12]  758 	mov	a,#0x18
      00347E 26               [12]  759 	add	a,@r0
      00347F FD               [12]  760 	mov	r5,a
      003480 E4               [12]  761 	clr	a
      003481 08               [12]  762 	inc	r0
      003482 36               [12]  763 	addc	a,@r0
      003483 FE               [12]  764 	mov	r6,a
      003484 08               [12]  765 	inc	r0
      003485 86 07            [24]  766 	mov	ar7,@r0
      003487 8D 82            [24]  767 	mov	dpl,r5
      003489 8E 83            [24]  768 	mov	dph,r6
      00348B 8F F0            [24]  769 	mov	b,r7
      00348D 12 2B DD         [24]  770 	lcall	_vListInitialise
      003490                        771 00107$:
                           00025C   772 	C$queue.c$300$1_0$168 ==.
                                    773 ;	src/FreeRTOS/queue.c:300: taskEXIT_CRITICAL();
      003490 D0 E0            [24]  774 	pop ACC 
      003492 53 E0 80         [24]  775 	anl	_ACC,#0x80
      003495 E5 E0            [12]  776 	mov	a,_ACC
      003497 42 A8            [12]  777 	orl	_IE,a
      003499 D0 E0            [24]  778 	pop ACC 
                           000267   779 	C$queue.c$304$1_0$168 ==.
                                    780 ;	src/FreeRTOS/queue.c:304: return pdPASS;
      00349B 75 82 01         [24]  781 	mov	dpl,#0x01
                           00026A   782 	C$queue.c$305$1_0$168 ==.
                                    783 ;	src/FreeRTOS/queue.c:305: }
      00349E 85 0C 81         [24]  784 	mov	sp,_bp
      0034A1 D0 0C            [24]  785 	pop	_bp
                           00026F   786 	C$queue.c$305$1_0$168 ==.
                           00026F   787 	XG$xQueueGenericReset$0$0 ==.
      0034A3 22               [24]  788 	ret
                                    789 ;------------------------------------------------------------
                                    790 ;Allocation info for local variables in function 'xQueueGenericCreate'
                                    791 ;------------------------------------------------------------
                                    792 ;uxItemSize                Allocated to stack - _bp -3
                                    793 ;ucQueueType               Allocated to stack - _bp -4
                                    794 ;uxQueueLength             Allocated to stack - _bp +1
                                    795 ;pxNewQueue                Allocated to registers r4 r5 r6 
                                    796 ;xQueueSizeInBytes         Allocated to registers r5 r6 
                                    797 ;pucQueueStorage           Allocated to registers r2 r3 r7 
                                    798 ;------------------------------------------------------------
                           000270   799 	G$xQueueGenericCreate$0$0 ==.
                           000270   800 	C$queue.c$368$1_0$177 ==.
                                    801 ;	src/FreeRTOS/queue.c:368: QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType )
                                    802 ;	-----------------------------------------
                                    803 ;	 function xQueueGenericCreate
                                    804 ;	-----------------------------------------
      0034A4                        805 _xQueueGenericCreate:
      0034A4 C0 0C            [24]  806 	push	_bp
      0034A6 85 81 0C         [24]  807 	mov	_bp,sp
      0034A9 C0 82            [24]  808 	push	dpl
                           000277   809 	C$queue.c$376$1_0$177 ==.
                                    810 ;	src/FreeRTOS/queue.c:376: if( uxItemSize == ( UBaseType_t ) 0 )
      0034AB E5 0C            [12]  811 	mov	a,_bp
      0034AD 24 FD            [12]  812 	add	a,#0xfd
      0034AF F8               [12]  813 	mov	r0,a
      0034B0 E6               [12]  814 	mov	a,@r0
                           00027D   815 	C$queue.c$379$2_0$178 ==.
                                    816 ;	src/FreeRTOS/queue.c:379: xQueueSizeInBytes = ( size_t ) 0;
      0034B1 70 04            [24]  817 	jnz	00102$
      0034B3 FD               [12]  818 	mov	r5,a
      0034B4 FE               [12]  819 	mov	r6,a
      0034B5 80 13            [24]  820 	sjmp	00103$
      0034B7                        821 00102$:
                           000283   822 	C$queue.c$385$2_0$179 ==.
                                    823 ;	src/FreeRTOS/queue.c:385: xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      0034B7 A8 0C            [24]  824 	mov	r0,_bp
      0034B9 08               [12]  825 	inc	r0
      0034BA E5 0C            [12]  826 	mov	a,_bp
      0034BC 24 FD            [12]  827 	add	a,#0xfd
      0034BE F9               [12]  828 	mov	r1,a
      0034BF 86 F0            [24]  829 	mov	b,@r0
      0034C1 E7               [12]  830 	mov	a,@r1
      0034C2 A4               [48]  831 	mul	ab
      0034C3 FB               [12]  832 	mov	r3,a
      0034C4 AC F0            [24]  833 	mov	r4,b
      0034C6 8B 05            [24]  834 	mov	ar5,r3
      0034C8 8C 06            [24]  835 	mov	ar6,r4
      0034CA                        836 00103$:
                           000296   837 	C$queue.c$397$1_0$177 ==.
                                    838 ;	src/FreeRTOS/queue.c:397: pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
      0034CA 74 29            [12]  839 	mov	a,#0x29
      0034CC 2D               [12]  840 	add	a,r5
      0034CD FD               [12]  841 	mov	r5,a
      0034CE E4               [12]  842 	clr	a
      0034CF 3E               [12]  843 	addc	a,r6
      0034D0 FE               [12]  844 	mov	r6,a
      0034D1 8D 82            [24]  845 	mov	dpl,r5
      0034D3 8E 83            [24]  846 	mov	dph,r6
      0034D5 12 61 84         [24]  847 	lcall	_pvPortMalloc
      0034D8 AC 82            [24]  848 	mov	r4,dpl
      0034DA AD 83            [24]  849 	mov	r5,dph
      0034DC AE F0            [24]  850 	mov	r6,b
                           0002AA   851 	C$queue.c$399$1_0$177 ==.
                                    852 ;	src/FreeRTOS/queue.c:399: if( pxNewQueue != NULL )
      0034DE EC               [12]  853 	mov	a,r4
      0034DF 4D               [12]  854 	orl	a,r5
      0034E0 60 43            [24]  855 	jz	00106$
                           0002AE   856 	C$queue.c$403$2_0$180 ==.
                                    857 ;	src/FreeRTOS/queue.c:403: pucQueueStorage = ( uint8_t * ) pxNewQueue;
      0034E2 8C 02            [24]  858 	mov	ar2,r4
      0034E4 8D 03            [24]  859 	mov	ar3,r5
      0034E6 8E 07            [24]  860 	mov	ar7,r6
                           0002B4   861 	C$queue.c$404$2_0$180 ==.
                                    862 ;	src/FreeRTOS/queue.c:404: pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      0034E8 74 29            [12]  863 	mov	a,#0x29
      0034EA 2A               [12]  864 	add	a,r2
      0034EB FA               [12]  865 	mov	r2,a
      0034EC E4               [12]  866 	clr	a
      0034ED 3B               [12]  867 	addc	a,r3
      0034EE FB               [12]  868 	mov	r3,a
                           0002BB   869 	C$queue.c$415$2_0$180 ==.
                                    870 ;	src/FreeRTOS/queue.c:415: prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
      0034EF C0 06            [24]  871 	push	ar6
      0034F1 C0 05            [24]  872 	push	ar5
      0034F3 C0 04            [24]  873 	push	ar4
      0034F5 C0 04            [24]  874 	push	ar4
      0034F7 C0 05            [24]  875 	push	ar5
      0034F9 C0 06            [24]  876 	push	ar6
      0034FB E5 0C            [12]  877 	mov	a,_bp
      0034FD 24 FC            [12]  878 	add	a,#0xfc
      0034FF F8               [12]  879 	mov	r0,a
      003500 E6               [12]  880 	mov	a,@r0
      003501 C0 E0            [24]  881 	push	acc
      003503 C0 02            [24]  882 	push	ar2
      003505 C0 03            [24]  883 	push	ar3
      003507 C0 07            [24]  884 	push	ar7
      003509 E5 0C            [12]  885 	mov	a,_bp
      00350B 24 FD            [12]  886 	add	a,#0xfd
      00350D F8               [12]  887 	mov	r0,a
      00350E E6               [12]  888 	mov	a,@r0
      00350F C0 E0            [24]  889 	push	acc
      003511 A8 0C            [24]  890 	mov	r0,_bp
      003513 08               [12]  891 	inc	r0
      003514 86 82            [24]  892 	mov	dpl,@r0
      003516 12 35 30         [24]  893 	lcall	_prvInitialiseNewQueue
      003519 E5 81            [12]  894 	mov	a,sp
      00351B 24 F8            [12]  895 	add	a,#0xf8
      00351D F5 81            [12]  896 	mov	sp,a
      00351F D0 04            [24]  897 	pop	ar4
      003521 D0 05            [24]  898 	pop	ar5
      003523 D0 06            [24]  899 	pop	ar6
                           0002F1   900 	C$queue.c$420$1_0$177 ==.
                                    901 ;	src/FreeRTOS/queue.c:420: mtCOVERAGE_TEST_MARKER();
      003525                        902 00106$:
                           0002F1   903 	C$queue.c$423$1_0$177 ==.
                                    904 ;	src/FreeRTOS/queue.c:423: return pxNewQueue;
      003525 8C 82            [24]  905 	mov	dpl,r4
      003527 8D 83            [24]  906 	mov	dph,r5
      003529 8E F0            [24]  907 	mov	b,r6
                           0002F7   908 	C$queue.c$424$1_0$177 ==.
                                    909 ;	src/FreeRTOS/queue.c:424: }
      00352B 15 81            [12]  910 	dec	sp
      00352D D0 0C            [24]  911 	pop	_bp
                           0002FB   912 	C$queue.c$424$1_0$177 ==.
                           0002FB   913 	XG$xQueueGenericCreate$0$0 ==.
      00352F 22               [24]  914 	ret
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'prvInitialiseNewQueue'
                                    917 ;------------------------------------------------------------
                                    918 ;uxItemSize                Allocated to stack - _bp -3
                                    919 ;pucQueueStorage           Allocated to stack - _bp -6
                                    920 ;ucQueueType               Allocated to stack - _bp -7
                                    921 ;pxNewQueue                Allocated to stack - _bp -10
                                    922 ;uxQueueLength             Allocated to stack - _bp +1
                                    923 ;------------------------------------------------------------
                           0002FC   924 	Fqueue$prvInitialiseNewQueue$0$0 ==.
                           0002FC   925 	C$queue.c$429$1_0$183 ==.
                                    926 ;	src/FreeRTOS/queue.c:429: static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, const uint8_t ucQueueType, Queue_t *pxNewQueue )
                                    927 ;	-----------------------------------------
                                    928 ;	 function prvInitialiseNewQueue
                                    929 ;	-----------------------------------------
      003530                        930 _prvInitialiseNewQueue:
      003530 C0 0C            [24]  931 	push	_bp
      003532 85 81 0C         [24]  932 	mov	_bp,sp
      003535 C0 82            [24]  933 	push	dpl
                           000303   934 	C$queue.c$435$1_0$183 ==.
                                    935 ;	src/FreeRTOS/queue.c:435: if( uxItemSize == ( UBaseType_t ) 0 )
      003537 E5 0C            [12]  936 	mov	a,_bp
      003539 24 FD            [12]  937 	add	a,#0xfd
      00353B F8               [12]  938 	mov	r0,a
      00353C E6               [12]  939 	mov	a,@r0
      00353D 70 30            [24]  940 	jnz	00102$
                           00030B   941 	C$queue.c$441$1_0$183 ==.
                                    942 ;	src/FreeRTOS/queue.c:441: pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
      00353F E5 0C            [12]  943 	mov	a,_bp
      003541 24 F6            [12]  944 	add	a,#0xf6
      003543 F8               [12]  945 	mov	r0,a
      003544 86 04            [24]  946 	mov	ar4,@r0
      003546 08               [12]  947 	inc	r0
      003547 86 05            [24]  948 	mov	ar5,@r0
      003549 08               [12]  949 	inc	r0
      00354A 86 06            [24]  950 	mov	ar6,@r0
      00354C E5 0C            [12]  951 	mov	a,_bp
      00354E 24 F6            [12]  952 	add	a,#0xf6
      003550 F8               [12]  953 	mov	r0,a
      003551 86 02            [24]  954 	mov	ar2,@r0
      003553 08               [12]  955 	inc	r0
      003554 86 03            [24]  956 	mov	ar3,@r0
      003556 08               [12]  957 	inc	r0
      003557 86 07            [24]  958 	mov	ar7,@r0
      003559 8C 82            [24]  959 	mov	dpl,r4
      00355B 8D 83            [24]  960 	mov	dph,r5
      00355D 8E F0            [24]  961 	mov	b,r6
      00355F EA               [12]  962 	mov	a,r2
      003560 12 66 A0         [24]  963 	lcall	__gptrput
      003563 A3               [24]  964 	inc	dptr
      003564 EB               [12]  965 	mov	a,r3
      003565 12 66 A0         [24]  966 	lcall	__gptrput
      003568 A3               [24]  967 	inc	dptr
      003569 EF               [12]  968 	mov	a,r7
      00356A 12 66 A0         [24]  969 	lcall	__gptrput
      00356D 80 2E            [24]  970 	sjmp	00103$
      00356F                        971 00102$:
                           00033B   972 	C$queue.c$446$2_0$185 ==.
                                    973 ;	src/FreeRTOS/queue.c:446: pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
      00356F E5 0C            [12]  974 	mov	a,_bp
      003571 24 F6            [12]  975 	add	a,#0xf6
      003573 F8               [12]  976 	mov	r0,a
      003574 86 04            [24]  977 	mov	ar4,@r0
      003576 08               [12]  978 	inc	r0
      003577 86 05            [24]  979 	mov	ar5,@r0
      003579 08               [12]  980 	inc	r0
      00357A 86 06            [24]  981 	mov	ar6,@r0
      00357C E5 0C            [12]  982 	mov	a,_bp
      00357E 24 FA            [12]  983 	add	a,#0xfa
      003580 F8               [12]  984 	mov	r0,a
      003581 86 02            [24]  985 	mov	ar2,@r0
      003583 08               [12]  986 	inc	r0
      003584 86 03            [24]  987 	mov	ar3,@r0
      003586 08               [12]  988 	inc	r0
      003587 86 07            [24]  989 	mov	ar7,@r0
      003589 8C 82            [24]  990 	mov	dpl,r4
      00358B 8D 83            [24]  991 	mov	dph,r5
      00358D 8E F0            [24]  992 	mov	b,r6
      00358F EA               [12]  993 	mov	a,r2
      003590 12 66 A0         [24]  994 	lcall	__gptrput
      003593 A3               [24]  995 	inc	dptr
      003594 EB               [12]  996 	mov	a,r3
      003595 12 66 A0         [24]  997 	lcall	__gptrput
      003598 A3               [24]  998 	inc	dptr
      003599 EF               [12]  999 	mov	a,r7
      00359A 12 66 A0         [24] 1000 	lcall	__gptrput
      00359D                       1001 00103$:
                           000369  1002 	C$queue.c$451$1_0$183 ==.
                                   1003 ;	src/FreeRTOS/queue.c:451: pxNewQueue->uxLength = uxQueueLength;
      00359D E5 0C            [12] 1004 	mov	a,_bp
      00359F 24 F6            [12] 1005 	add	a,#0xf6
      0035A1 F8               [12] 1006 	mov	r0,a
      0035A2 86 05            [24] 1007 	mov	ar5,@r0
      0035A4 08               [12] 1008 	inc	r0
      0035A5 86 06            [24] 1009 	mov	ar6,@r0
      0035A7 08               [12] 1010 	inc	r0
      0035A8 86 07            [24] 1011 	mov	ar7,@r0
      0035AA 74 25            [12] 1012 	mov	a,#0x25
      0035AC 2D               [12] 1013 	add	a,r5
      0035AD FA               [12] 1014 	mov	r2,a
      0035AE E4               [12] 1015 	clr	a
      0035AF 3E               [12] 1016 	addc	a,r6
      0035B0 FB               [12] 1017 	mov	r3,a
      0035B1 8F 04            [24] 1018 	mov	ar4,r7
      0035B3 8A 82            [24] 1019 	mov	dpl,r2
      0035B5 8B 83            [24] 1020 	mov	dph,r3
      0035B7 8C F0            [24] 1021 	mov	b,r4
      0035B9 A8 0C            [24] 1022 	mov	r0,_bp
      0035BB 08               [12] 1023 	inc	r0
      0035BC E6               [12] 1024 	mov	a,@r0
      0035BD 12 66 A0         [24] 1025 	lcall	__gptrput
                           00038C  1026 	C$queue.c$452$1_0$183 ==.
                                   1027 ;	src/FreeRTOS/queue.c:452: pxNewQueue->uxItemSize = uxItemSize;
      0035C0 74 26            [12] 1028 	mov	a,#0x26
      0035C2 2D               [12] 1029 	add	a,r5
      0035C3 FA               [12] 1030 	mov	r2,a
      0035C4 E4               [12] 1031 	clr	a
      0035C5 3E               [12] 1032 	addc	a,r6
      0035C6 FB               [12] 1033 	mov	r3,a
      0035C7 8F 04            [24] 1034 	mov	ar4,r7
      0035C9 8A 82            [24] 1035 	mov	dpl,r2
      0035CB 8B 83            [24] 1036 	mov	dph,r3
      0035CD 8C F0            [24] 1037 	mov	b,r4
      0035CF E5 0C            [12] 1038 	mov	a,_bp
      0035D1 24 FD            [12] 1039 	add	a,#0xfd
      0035D3 F8               [12] 1040 	mov	r0,a
      0035D4 E6               [12] 1041 	mov	a,@r0
      0035D5 12 66 A0         [24] 1042 	lcall	__gptrput
                           0003A4  1043 	C$queue.c$453$1_0$183 ==.
                                   1044 ;	src/FreeRTOS/queue.c:453: ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
      0035D8 74 01            [12] 1045 	mov	a,#0x01
      0035DA C0 E0            [24] 1046 	push	acc
      0035DC 8D 82            [24] 1047 	mov	dpl,r5
      0035DE 8E 83            [24] 1048 	mov	dph,r6
      0035E0 8F F0            [24] 1049 	mov	b,r7
      0035E2 12 32 34         [24] 1050 	lcall	_xQueueGenericReset
      0035E5 15 81            [12] 1051 	dec	sp
                           0003B3  1052 	C$queue.c$468$1_0$183 ==.
                                   1053 ;	src/FreeRTOS/queue.c:468: }
      0035E7 15 81            [12] 1054 	dec	sp
      0035E9 D0 0C            [24] 1055 	pop	_bp
                           0003B7  1056 	C$queue.c$468$1_0$183 ==.
                           0003B7  1057 	XFqueue$prvInitialiseNewQueue$0$0 ==.
      0035EB 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'xQueueGenericSend'
                                   1061 ;------------------------------------------------------------
                                   1062 ;pvItemToQueue             Allocated to stack - _bp -5
                                   1063 ;xTicksToWait              Allocated to stack - _bp -7
                                   1064 ;xCopyPosition             Allocated to stack - _bp -8
                                   1065 ;xQueue                    Allocated to registers r5 r3 r4 
                                   1066 ;xEntryTimeSet             Allocated to stack - _bp +11
                                   1067 ;xYieldRequired            Allocated to registers r7 
                                   1068 ;xTimeOut                  Allocated to stack - _bp +12
                                   1069 ;pxQueue                   Allocated to stack - _bp +15
                                   1070 ;sloc0                     Allocated to stack - _bp +1
                                   1071 ;sloc1                     Allocated to stack - _bp +4
                                   1072 ;sloc2                     Allocated to stack - _bp +7
                                   1073 ;sloc3                     Allocated to stack - _bp +8
                                   1074 ;------------------------------------------------------------
                           0003B8  1075 	G$xQueueGenericSend$0$0 ==.
                           0003B8  1076 	C$queue.c$747$1_0$187 ==.
                                   1077 ;	src/FreeRTOS/queue.c:747: BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition )
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function xQueueGenericSend
                                   1080 ;	-----------------------------------------
      0035EC                       1081 _xQueueGenericSend:
      0035EC C0 0C            [24] 1082 	push	_bp
      0035EE E5 81            [12] 1083 	mov	a,sp
      0035F0 F5 0C            [12] 1084 	mov	_bp,a
      0035F2 24 11            [12] 1085 	add	a,#0x11
      0035F4 F5 81            [12] 1086 	mov	sp,a
      0035F6 AD 82            [24] 1087 	mov	r5,dpl
      0035F8 AB 83            [24] 1088 	mov	r3,dph
      0035FA AC F0            [24] 1089 	mov	r4,b
                           0003C8  1090 	C$queue.c$749$2_0$187 ==.
                                   1091 ;	src/FreeRTOS/queue.c:749: BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
      0035FC E5 0C            [12] 1092 	mov	a,_bp
      0035FE 24 0B            [12] 1093 	add	a,#0x0b
      003600 F8               [12] 1094 	mov	r0,a
      003601 76 00            [12] 1095 	mov	@r0,#0x00
                           0003CF  1096 	C$queue.c$751$2_0$187 ==.
                                   1097 ;	src/FreeRTOS/queue.c:751: Queue_t * const pxQueue = xQueue;
      003603 E5 0C            [12] 1098 	mov	a,_bp
      003605 24 0F            [12] 1099 	add	a,#0x0f
      003607 F8               [12] 1100 	mov	r0,a
      003608 A6 05            [24] 1101 	mov	@r0,ar5
      00360A 08               [12] 1102 	inc	r0
      00360B A6 03            [24] 1103 	mov	@r0,ar3
      00360D 08               [12] 1104 	inc	r0
      00360E A6 04            [24] 1105 	mov	@r0,ar4
                           0003DC  1106 	C$queue.c$754$4_0$190 ==.
                                   1107 ;	src/FreeRTOS/queue.c:754: configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
      003610 E5 0C            [12] 1108 	mov	a,_bp
      003612 24 F8            [12] 1109 	add	a,#0xf8
      003614 F8               [12] 1110 	mov	r0,a
      003615 E4               [12] 1111 	clr	a
      003616 B6 02 01         [24] 1112 	cjne	@r0,#0x02,00184$
      003619 04               [12] 1113 	inc	a
      00361A                       1114 00184$:
      00361A FF               [12] 1115 	mov	r7,a
      00361B E5 0C            [12] 1116 	mov	a,_bp
      00361D 24 0C            [12] 1117 	add	a,#0x0c
      00361F FE               [12] 1118 	mov	r6,a
      003620 E5 0C            [12] 1119 	mov	a,_bp
      003622 24 07            [12] 1120 	add	a,#0x07
      003624 F8               [12] 1121 	mov	r0,a
      003625 A6 06            [24] 1122 	mov	@r0,ar6
      003627 A8 0C            [24] 1123 	mov	r0,_bp
      003629 08               [12] 1124 	inc	r0
      00362A 74 24            [12] 1125 	mov	a,#0x24
      00362C 2D               [12] 1126 	add	a,r5
      00362D F6               [12] 1127 	mov	@r0,a
      00362E E4               [12] 1128 	clr	a
      00362F 3B               [12] 1129 	addc	a,r3
      003630 08               [12] 1130 	inc	r0
      003631 F6               [12] 1131 	mov	@r0,a
      003632 08               [12] 1132 	inc	r0
      003633 A6 04            [24] 1133 	mov	@r0,ar4
      003635 E5 0C            [12] 1134 	mov	a,_bp
      003637 24 04            [12] 1135 	add	a,#0x04
      003639 F8               [12] 1136 	mov	r0,a
      00363A 74 25            [12] 1137 	mov	a,#0x25
      00363C 2D               [12] 1138 	add	a,r5
      00363D F6               [12] 1139 	mov	@r0,a
      00363E E4               [12] 1140 	clr	a
      00363F 3B               [12] 1141 	addc	a,r3
      003640 08               [12] 1142 	inc	r0
      003641 F6               [12] 1143 	mov	@r0,a
      003642 08               [12] 1144 	inc	r0
      003643 A6 04            [24] 1145 	mov	@r0,ar4
      003645                       1146 00130$:
                           000411  1147 	C$queue.c$768$2_0$187 ==.
                                   1148 ;	src/FreeRTOS/queue.c:768: taskENTER_CRITICAL();
      003645 C0 E0            [24] 1149 	push ACC 
      003647 C0 A8            [24] 1150 	push IE 
                                   1151 ;	assignBit
      003649 C2 AF            [12] 1152 	clr	_EA
                           000417  1153 	C$queue.c$774$4_0$190 ==.
                                   1154 ;	src/FreeRTOS/queue.c:774: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
      00364B A8 0C            [24] 1155 	mov	r0,_bp
      00364D 08               [12] 1156 	inc	r0
      00364E 86 82            [24] 1157 	mov	dpl,@r0
      003650 08               [12] 1158 	inc	r0
      003651 86 83            [24] 1159 	mov	dph,@r0
      003653 08               [12] 1160 	inc	r0
      003654 86 F0            [24] 1161 	mov	b,@r0
      003656 12 70 5A         [24] 1162 	lcall	__gptrget
      003659 FD               [12] 1163 	mov	r5,a
      00365A E5 0C            [12] 1164 	mov	a,_bp
      00365C 24 04            [12] 1165 	add	a,#0x04
      00365E F8               [12] 1166 	mov	r0,a
      00365F 86 82            [24] 1167 	mov	dpl,@r0
      003661 08               [12] 1168 	inc	r0
      003662 86 83            [24] 1169 	mov	dph,@r0
      003664 08               [12] 1170 	inc	r0
      003665 86 F0            [24] 1171 	mov	b,@r0
      003667 12 70 5A         [24] 1172 	lcall	__gptrget
      00366A FC               [12] 1173 	mov	r4,a
      00366B C3               [12] 1174 	clr	c
      00366C ED               [12] 1175 	mov	a,r5
      00366D 9C               [12] 1176 	subb	a,r4
      00366E 40 06            [24] 1177 	jc	00113$
      003670 EF               [12] 1178 	mov	a,r7
      003671 70 03            [24] 1179 	jnz	00187$
      003673 02 36 FC         [24] 1180 	ljmp	00114$
      003676                       1181 00187$:
      003676                       1182 00113$:
                           000442  1183 	C$queue.c$840$6_0$192 ==.
                                   1184 ;	src/FreeRTOS/queue.c:840: xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
      003676 E5 0C            [12] 1185 	mov	a,_bp
      003678 24 F8            [12] 1186 	add	a,#0xf8
      00367A F8               [12] 1187 	mov	r0,a
      00367B E6               [12] 1188 	mov	a,@r0
      00367C C0 E0            [24] 1189 	push	acc
      00367E E5 0C            [12] 1190 	mov	a,_bp
      003680 24 FB            [12] 1191 	add	a,#0xfb
      003682 F8               [12] 1192 	mov	r0,a
      003683 E6               [12] 1193 	mov	a,@r0
      003684 C0 E0            [24] 1194 	push	acc
      003686 08               [12] 1195 	inc	r0
      003687 E6               [12] 1196 	mov	a,@r0
      003688 C0 E0            [24] 1197 	push	acc
      00368A 08               [12] 1198 	inc	r0
      00368B E6               [12] 1199 	mov	a,@r0
      00368C C0 E0            [24] 1200 	push	acc
      00368E E5 0C            [12] 1201 	mov	a,_bp
      003690 24 0F            [12] 1202 	add	a,#0x0f
      003692 F8               [12] 1203 	mov	r0,a
      003693 86 82            [24] 1204 	mov	dpl,@r0
      003695 08               [12] 1205 	inc	r0
      003696 86 83            [24] 1206 	mov	dph,@r0
      003698 08               [12] 1207 	inc	r0
      003699 86 F0            [24] 1208 	mov	b,@r0
      00369B 12 44 BD         [24] 1209 	lcall	_prvCopyDataToQueue
      00369E AC 82            [24] 1210 	mov	r4,dpl
      0036A0 E5 81            [12] 1211 	mov	a,sp
      0036A2 24 FC            [12] 1212 	add	a,#0xfc
      0036A4 F5 81            [12] 1213 	mov	sp,a
      0036A6 8C 07            [24] 1214 	mov	ar7,r4
                           000474  1215 	C$queue.c$844$6_0$192 ==.
                                   1216 ;	src/FreeRTOS/queue.c:844: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      0036A8 E5 0C            [12] 1217 	mov	a,_bp
      0036AA 24 0F            [12] 1218 	add	a,#0x0f
      0036AC F8               [12] 1219 	mov	r0,a
      0036AD 74 18            [12] 1220 	mov	a,#0x18
      0036AF 26               [12] 1221 	add	a,@r0
      0036B0 FA               [12] 1222 	mov	r2,a
      0036B1 E4               [12] 1223 	clr	a
      0036B2 08               [12] 1224 	inc	r0
      0036B3 36               [12] 1225 	addc	a,@r0
      0036B4 FB               [12] 1226 	mov	r3,a
      0036B5 08               [12] 1227 	inc	r0
      0036B6 86 04            [24] 1228 	mov	ar4,@r0
      0036B8 8A 82            [24] 1229 	mov	dpl,r2
      0036BA 8B 83            [24] 1230 	mov	dph,r3
      0036BC 8C F0            [24] 1231 	mov	b,r4
      0036BE 12 70 5A         [24] 1232 	lcall	__gptrget
      0036C1 60 22            [24] 1233 	jz	00106$
                           00048F  1234 	C$queue.c$846$7_0$193 ==.
                                   1235 ;	src/FreeRTOS/queue.c:846: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      0036C3 E5 0C            [12] 1236 	mov	a,_bp
      0036C5 24 0F            [12] 1237 	add	a,#0x0f
      0036C7 F8               [12] 1238 	mov	r0,a
      0036C8 74 18            [12] 1239 	mov	a,#0x18
      0036CA 26               [12] 1240 	add	a,@r0
      0036CB FA               [12] 1241 	mov	r2,a
      0036CC E4               [12] 1242 	clr	a
      0036CD 08               [12] 1243 	inc	r0
      0036CE 36               [12] 1244 	addc	a,@r0
      0036CF FB               [12] 1245 	mov	r3,a
      0036D0 08               [12] 1246 	inc	r0
      0036D1 86 04            [24] 1247 	mov	ar4,@r0
      0036D3 8A 82            [24] 1248 	mov	dpl,r2
      0036D5 8B 83            [24] 1249 	mov	dph,r3
      0036D7 8C F0            [24] 1250 	mov	b,r4
      0036D9 12 10 57         [24] 1251 	lcall	_xTaskRemoveFromEventList
      0036DC E5 82            [12] 1252 	mov	a,dpl
      0036DE 60 0B            [24] 1253 	jz	00107$
                           0004AC  1254 	C$queue.c$852$8_0$194 ==.
                                   1255 ;	src/FreeRTOS/queue.c:852: queueYIELD_IF_USING_PREEMPTION();
      0036E0 12 64 B5         [24] 1256 	lcall	_vPortYield
      0036E3 80 06            [24] 1257 	sjmp	00107$
      0036E5                       1258 00106$:
                           0004B1  1259 	C$queue.c$859$6_0$192 ==.
                                   1260 ;	src/FreeRTOS/queue.c:859: else if( xYieldRequired != pdFALSE )
      0036E5 EF               [12] 1261 	mov	a,r7
      0036E6 60 03            [24] 1262 	jz	00107$
                           0004B4  1263 	C$queue.c$865$7_0$196 ==.
                                   1264 ;	src/FreeRTOS/queue.c:865: queueYIELD_IF_USING_PREEMPTION();
      0036E8 12 64 B5         [24] 1265 	lcall	_vPortYield
      0036EB                       1266 00107$:
                           0004B7  1267 	C$queue.c$874$5_0$191 ==.
                                   1268 ;	src/FreeRTOS/queue.c:874: taskEXIT_CRITICAL();
      0036EB D0 E0            [24] 1269 	pop ACC 
      0036ED 53 E0 80         [24] 1270 	anl	_ACC,#0x80
      0036F0 E5 E0            [12] 1271 	mov	a,_ACC
      0036F2 42 A8            [12] 1272 	orl	_IE,a
      0036F4 D0 E0            [24] 1273 	pop ACC 
                           0004C2  1274 	C$queue.c$875$5_0$191 ==.
                                   1275 ;	src/FreeRTOS/queue.c:875: return pdPASS;
      0036F6 75 82 01         [24] 1276 	mov	dpl,#0x01
      0036F9 02 38 9E         [24] 1277 	ljmp	00132$
      0036FC                       1278 00114$:
                           0004C8  1279 	C$queue.c$879$5_0$198 ==.
                                   1280 ;	src/FreeRTOS/queue.c:879: if( xTicksToWait == ( TickType_t ) 0 )
      0036FC E5 0C            [12] 1281 	mov	a,_bp
      0036FE 24 F9            [12] 1282 	add	a,#0xf9
      003700 F8               [12] 1283 	mov	r0,a
      003701 E6               [12] 1284 	mov	a,@r0
      003702 08               [12] 1285 	inc	r0
      003703 46               [12] 1286 	orl	a,@r0
      003704 70 11            [24] 1287 	jnz	00111$
                           0004D2  1288 	C$queue.c$883$6_0$199 ==.
                                   1289 ;	src/FreeRTOS/queue.c:883: taskEXIT_CRITICAL();
      003706 D0 E0            [24] 1290 	pop ACC 
      003708 53 E0 80         [24] 1291 	anl	_ACC,#0x80
      00370B E5 E0            [12] 1292 	mov	a,_ACC
      00370D 42 A8            [12] 1293 	orl	_IE,a
      00370F D0 E0            [24] 1294 	pop ACC 
                           0004DD  1295 	C$queue.c$888$6_0$199 ==.
                                   1296 ;	src/FreeRTOS/queue.c:888: return errQUEUE_FULL;
      003711 75 82 00         [24] 1297 	mov	dpl,#0x00
      003714 02 38 9E         [24] 1298 	ljmp	00132$
      003717                       1299 00111$:
                           0004E3  1300 	C$queue.c$890$5_0$198 ==.
                                   1301 ;	src/FreeRTOS/queue.c:890: else if( xEntryTimeSet == pdFALSE )
      003717 E5 0C            [12] 1302 	mov	a,_bp
      003719 24 0B            [12] 1303 	add	a,#0x0b
      00371B F8               [12] 1304 	mov	r0,a
      00371C E6               [12] 1305 	mov	a,@r0
                           0004E9  1306 	C$queue.c$894$6_0$200 ==.
                                   1307 ;	src/FreeRTOS/queue.c:894: vTaskInternalSetTimeOutState( &xTimeOut );
      00371D 70 1D            [24] 1308 	jnz	00115$
      00371F 8E 02            [24] 1309 	mov	ar2,r6
      003721 FB               [12] 1310 	mov	r3,a
      003722 7C 40            [12] 1311 	mov	r4,#0x40
      003724 8A 82            [24] 1312 	mov	dpl,r2
      003726 8B 83            [24] 1313 	mov	dph,r3
      003728 8C F0            [24] 1314 	mov	b,r4
      00372A C0 07            [24] 1315 	push	ar7
      00372C C0 06            [24] 1316 	push	ar6
      00372E 12 13 1E         [24] 1317 	lcall	_vTaskInternalSetTimeOutState
      003731 D0 06            [24] 1318 	pop	ar6
      003733 D0 07            [24] 1319 	pop	ar7
                           000501  1320 	C$queue.c$895$6_0$200 ==.
                                   1321 ;	src/FreeRTOS/queue.c:895: xEntryTimeSet = pdTRUE;
      003735 E5 0C            [12] 1322 	mov	a,_bp
      003737 24 0B            [12] 1323 	add	a,#0x0b
      003739 F8               [12] 1324 	mov	r0,a
      00373A 76 01            [12] 1325 	mov	@r0,#0x01
      00373C                       1326 00115$:
                           000508  1327 	C$queue.c$904$2_0$187 ==.
                                   1328 ;	src/FreeRTOS/queue.c:904: taskEXIT_CRITICAL();
      00373C D0 E0            [24] 1329 	pop ACC 
      00373E 53 E0 80         [24] 1330 	anl	_ACC,#0x80
      003741 E5 E0            [12] 1331 	mov	a,_ACC
      003743 42 A8            [12] 1332 	orl	_IE,a
      003745 D0 E0            [24] 1333 	pop ACC 
                           000513  1334 	C$queue.c$909$3_0$189 ==.
                                   1335 ;	src/FreeRTOS/queue.c:909: vTaskSuspendAll();
      003747 C0 07            [24] 1336 	push	ar7
      003749 C0 06            [24] 1337 	push	ar6
      00374B 12 09 4A         [24] 1338 	lcall	_vTaskSuspendAll
      00374E D0 06            [24] 1339 	pop	ar6
      003750 D0 07            [24] 1340 	pop	ar7
                           00051E  1341 	C$queue.c$910$3_0$189 ==.
                                   1342 ;	src/FreeRTOS/queue.c:910: prvLockQueue( pxQueue );
      003752 C0 E0            [24] 1343 	push ACC 
      003754 C0 A8            [24] 1344 	push IE 
                                   1345 ;	assignBit
      003756 C2 AF            [12] 1346 	clr	_EA
      003758 E5 0C            [12] 1347 	mov	a,_bp
      00375A 24 0F            [12] 1348 	add	a,#0x0f
      00375C F8               [12] 1349 	mov	r0,a
      00375D 74 27            [12] 1350 	mov	a,#0x27
      00375F 26               [12] 1351 	add	a,@r0
      003760 FA               [12] 1352 	mov	r2,a
      003761 E4               [12] 1353 	clr	a
      003762 08               [12] 1354 	inc	r0
      003763 36               [12] 1355 	addc	a,@r0
      003764 FB               [12] 1356 	mov	r3,a
      003765 08               [12] 1357 	inc	r0
      003766 86 04            [24] 1358 	mov	ar4,@r0
      003768 8A 82            [24] 1359 	mov	dpl,r2
      00376A 8B 83            [24] 1360 	mov	dph,r3
      00376C 8C F0            [24] 1361 	mov	b,r4
      00376E 12 70 5A         [24] 1362 	lcall	__gptrget
      003771 FD               [12] 1363 	mov	r5,a
      003772 BD FF 0A         [24] 1364 	cjne	r5,#0xff,00118$
      003775 8A 82            [24] 1365 	mov	dpl,r2
      003777 8B 83            [24] 1366 	mov	dph,r3
      003779 8C F0            [24] 1367 	mov	b,r4
      00377B E4               [12] 1368 	clr	a
      00377C 12 66 A0         [24] 1369 	lcall	__gptrput
      00377F                       1370 00118$:
      00377F E5 0C            [12] 1371 	mov	a,_bp
      003781 24 0F            [12] 1372 	add	a,#0x0f
      003783 F8               [12] 1373 	mov	r0,a
      003784 74 28            [12] 1374 	mov	a,#0x28
      003786 26               [12] 1375 	add	a,@r0
      003787 FA               [12] 1376 	mov	r2,a
      003788 E4               [12] 1377 	clr	a
      003789 08               [12] 1378 	inc	r0
      00378A 36               [12] 1379 	addc	a,@r0
      00378B FB               [12] 1380 	mov	r3,a
      00378C 08               [12] 1381 	inc	r0
      00378D 86 04            [24] 1382 	mov	ar4,@r0
      00378F 8A 82            [24] 1383 	mov	dpl,r2
      003791 8B 83            [24] 1384 	mov	dph,r3
      003793 8C F0            [24] 1385 	mov	b,r4
      003795 12 70 5A         [24] 1386 	lcall	__gptrget
      003798 FD               [12] 1387 	mov	r5,a
      003799 BD FF 0A         [24] 1388 	cjne	r5,#0xff,00120$
      00379C 8A 82            [24] 1389 	mov	dpl,r2
      00379E 8B 83            [24] 1390 	mov	dph,r3
      0037A0 8C F0            [24] 1391 	mov	b,r4
      0037A2 E4               [12] 1392 	clr	a
      0037A3 12 66 A0         [24] 1393 	lcall	__gptrput
      0037A6                       1394 00120$:
      0037A6 C0 07            [24] 1395 	push	ar7
      0037A8 D0 E0            [24] 1396 	pop ACC 
      0037AA 53 E0 80         [24] 1397 	anl	_ACC,#0x80
      0037AD E5 E0            [12] 1398 	mov	a,_ACC
      0037AF 42 A8            [12] 1399 	orl	_IE,a
      0037B1 D0 E0            [24] 1400 	pop ACC 
                           00057F  1401 	C$queue.c$913$3_0$189 ==.
                                   1402 ;	src/FreeRTOS/queue.c:913: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      0037B3 E5 0C            [12] 1403 	mov	a,_bp
      0037B5 24 F9            [12] 1404 	add	a,#0xf9
      0037B7 FC               [12] 1405 	mov	r4,a
      0037B8 E5 0C            [12] 1406 	mov	a,_bp
      0037BA 24 08            [12] 1407 	add	a,#0x08
      0037BC F8               [12] 1408 	mov	r0,a
      0037BD A6 04            [24] 1409 	mov	@r0,ar4
      0037BF 08               [12] 1410 	inc	r0
      0037C0 76 00            [12] 1411 	mov	@r0,#0x00
      0037C2 08               [12] 1412 	inc	r0
      0037C3 76 40            [12] 1413 	mov	@r0,#0x40
      0037C5 E5 0C            [12] 1414 	mov	a,_bp
      0037C7 24 07            [12] 1415 	add	a,#0x07
      0037C9 F8               [12] 1416 	mov	r0,a
      0037CA 86 04            [24] 1417 	mov	ar4,@r0
      0037CC 7D 00            [12] 1418 	mov	r5,#0x00
      0037CE 7F 40            [12] 1419 	mov	r7,#0x40
      0037D0 C0 06            [24] 1420 	push	ar6
      0037D2 E5 0C            [12] 1421 	mov	a,_bp
      0037D4 24 08            [12] 1422 	add	a,#0x08
      0037D6 F8               [12] 1423 	mov	r0,a
      0037D7 E6               [12] 1424 	mov	a,@r0
      0037D8 C0 E0            [24] 1425 	push	acc
      0037DA 08               [12] 1426 	inc	r0
      0037DB E6               [12] 1427 	mov	a,@r0
      0037DC C0 E0            [24] 1428 	push	acc
      0037DE 08               [12] 1429 	inc	r0
      0037DF E6               [12] 1430 	mov	a,@r0
      0037E0 C0 E0            [24] 1431 	push	acc
      0037E2 8C 82            [24] 1432 	mov	dpl,r4
      0037E4 8D 83            [24] 1433 	mov	dph,r5
      0037E6 8F F0            [24] 1434 	mov	b,r7
      0037E8 12 13 4E         [24] 1435 	lcall	_xTaskCheckForTimeOut
      0037EB AF 82            [24] 1436 	mov	r7,dpl
      0037ED 15 81            [12] 1437 	dec	sp
      0037EF 15 81            [12] 1438 	dec	sp
      0037F1 15 81            [12] 1439 	dec	sp
      0037F3 D0 06            [24] 1440 	pop	ar6
      0037F5 EF               [12] 1441 	mov	a,r7
      0037F6 D0 07            [24] 1442 	pop	ar7
      0037F8 60 03            [24] 1443 	jz	00197$
      0037FA 02 38 88         [24] 1444 	ljmp	00127$
      0037FD                       1445 00197$:
                           0005C9  1446 	C$queue.c$915$4_0$205 ==.
                                   1447 ;	src/FreeRTOS/queue.c:915: if( prvIsQueueFull( pxQueue ) != pdFALSE )
      0037FD E5 0C            [12] 1448 	mov	a,_bp
      0037FF 24 0F            [12] 1449 	add	a,#0x0f
      003801 F8               [12] 1450 	mov	r0,a
      003802 86 82            [24] 1451 	mov	dpl,@r0
      003804 08               [12] 1452 	inc	r0
      003805 86 83            [24] 1453 	mov	dph,@r0
      003807 08               [12] 1454 	inc	r0
      003808 86 F0            [24] 1455 	mov	b,@r0
      00380A C0 07            [24] 1456 	push	ar7
      00380C C0 06            [24] 1457 	push	ar6
      00380E 12 4B 1F         [24] 1458 	lcall	_prvIsQueueFull
      003811 E5 82            [12] 1459 	mov	a,dpl
      003813 D0 06            [24] 1460 	pop	ar6
      003815 D0 07            [24] 1461 	pop	ar7
      003817 60 51            [24] 1462 	jz	00124$
                           0005E5  1463 	C$queue.c$918$5_0$206 ==.
                                   1464 ;	src/FreeRTOS/queue.c:918: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
      003819 E5 0C            [12] 1465 	mov	a,_bp
      00381B 24 0F            [12] 1466 	add	a,#0x0f
      00381D F8               [12] 1467 	mov	r0,a
      00381E 74 0C            [12] 1468 	mov	a,#0x0c
      003820 26               [12] 1469 	add	a,@r0
      003821 FB               [12] 1470 	mov	r3,a
      003822 E4               [12] 1471 	clr	a
      003823 08               [12] 1472 	inc	r0
      003824 36               [12] 1473 	addc	a,@r0
      003825 FC               [12] 1474 	mov	r4,a
      003826 08               [12] 1475 	inc	r0
      003827 86 05            [24] 1476 	mov	ar5,@r0
      003829 C0 07            [24] 1477 	push	ar7
      00382B C0 06            [24] 1478 	push	ar6
      00382D E5 0C            [12] 1479 	mov	a,_bp
      00382F 24 F9            [12] 1480 	add	a,#0xf9
      003831 F8               [12] 1481 	mov	r0,a
      003832 E6               [12] 1482 	mov	a,@r0
      003833 C0 E0            [24] 1483 	push	acc
      003835 08               [12] 1484 	inc	r0
      003836 E6               [12] 1485 	mov	a,@r0
      003837 C0 E0            [24] 1486 	push	acc
      003839 8B 82            [24] 1487 	mov	dpl,r3
      00383B 8C 83            [24] 1488 	mov	dph,r4
      00383D 8D F0            [24] 1489 	mov	b,r5
      00383F 12 0F 92         [24] 1490 	lcall	_vTaskPlaceOnEventList
      003842 15 81            [12] 1491 	dec	sp
      003844 15 81            [12] 1492 	dec	sp
                           000612  1493 	C$queue.c$925$5_0$206 ==.
                                   1494 ;	src/FreeRTOS/queue.c:925: prvUnlockQueue( pxQueue );
      003846 E5 0C            [12] 1495 	mov	a,_bp
      003848 24 0F            [12] 1496 	add	a,#0x0f
      00384A F8               [12] 1497 	mov	r0,a
      00384B 86 82            [24] 1498 	mov	dpl,@r0
      00384D 08               [12] 1499 	inc	r0
      00384E 86 83            [24] 1500 	mov	dph,@r0
      003850 08               [12] 1501 	inc	r0
      003851 86 F0            [24] 1502 	mov	b,@r0
      003853 12 49 52         [24] 1503 	lcall	_prvUnlockQueue
                           000622  1504 	C$queue.c$932$5_0$206 ==.
                                   1505 ;	src/FreeRTOS/queue.c:932: if( xTaskResumeAll() == pdFALSE )
      003856 12 09 52         [24] 1506 	lcall	_xTaskResumeAll
      003859 E5 82            [12] 1507 	mov	a,dpl
      00385B D0 06            [24] 1508 	pop	ar6
      00385D D0 07            [24] 1509 	pop	ar7
      00385F 60 03            [24] 1510 	jz	00199$
      003861 02 36 45         [24] 1511 	ljmp	00130$
      003864                       1512 00199$:
                           000630  1513 	C$queue.c$934$6_0$207 ==.
                                   1514 ;	src/FreeRTOS/queue.c:934: portYIELD_WITHIN_API();
      003864 12 64 B5         [24] 1515 	lcall	_vPortYield
      003867 02 36 45         [24] 1516 	ljmp	00130$
      00386A                       1517 00124$:
                           000636  1518 	C$queue.c$940$5_0$208 ==.
                                   1519 ;	src/FreeRTOS/queue.c:940: prvUnlockQueue( pxQueue );
      00386A E5 0C            [12] 1520 	mov	a,_bp
      00386C 24 0F            [12] 1521 	add	a,#0x0f
      00386E F8               [12] 1522 	mov	r0,a
      00386F 86 82            [24] 1523 	mov	dpl,@r0
      003871 08               [12] 1524 	inc	r0
      003872 86 83            [24] 1525 	mov	dph,@r0
      003874 08               [12] 1526 	inc	r0
      003875 86 F0            [24] 1527 	mov	b,@r0
      003877 C0 07            [24] 1528 	push	ar7
      003879 C0 06            [24] 1529 	push	ar6
      00387B 12 49 52         [24] 1530 	lcall	_prvUnlockQueue
                           00064A  1531 	C$queue.c$941$5_0$208 ==.
                                   1532 ;	src/FreeRTOS/queue.c:941: ( void ) xTaskResumeAll();
      00387E 12 09 52         [24] 1533 	lcall	_xTaskResumeAll
      003881 D0 06            [24] 1534 	pop	ar6
      003883 D0 07            [24] 1535 	pop	ar7
      003885 02 36 45         [24] 1536 	ljmp	00130$
      003888                       1537 00127$:
                           000654  1538 	C$queue.c$947$4_0$209 ==.
                                   1539 ;	src/FreeRTOS/queue.c:947: prvUnlockQueue( pxQueue );
      003888 E5 0C            [12] 1540 	mov	a,_bp
      00388A 24 0F            [12] 1541 	add	a,#0x0f
      00388C F8               [12] 1542 	mov	r0,a
      00388D 86 82            [24] 1543 	mov	dpl,@r0
      00388F 08               [12] 1544 	inc	r0
      003890 86 83            [24] 1545 	mov	dph,@r0
      003892 08               [12] 1546 	inc	r0
      003893 86 F0            [24] 1547 	mov	b,@r0
      003895 12 49 52         [24] 1548 	lcall	_prvUnlockQueue
                           000664  1549 	C$queue.c$948$4_0$209 ==.
                                   1550 ;	src/FreeRTOS/queue.c:948: ( void ) xTaskResumeAll();
      003898 12 09 52         [24] 1551 	lcall	_xTaskResumeAll
                           000667  1552 	C$queue.c$951$4_0$209 ==.
                                   1553 ;	src/FreeRTOS/queue.c:951: return errQUEUE_FULL;
      00389B 75 82 00         [24] 1554 	mov	dpl,#0x00
      00389E                       1555 00132$:
                           00066A  1556 	C$queue.c$954$2_0$187 ==.
                                   1557 ;	src/FreeRTOS/queue.c:954: }
      00389E 85 0C 81         [24] 1558 	mov	sp,_bp
      0038A1 D0 0C            [24] 1559 	pop	_bp
                           00066F  1560 	C$queue.c$954$2_0$187 ==.
                           00066F  1561 	XG$xQueueGenericSend$0$0 ==.
      0038A3 22               [24] 1562 	ret
                                   1563 ;------------------------------------------------------------
                                   1564 ;Allocation info for local variables in function 'xQueueGenericSendFromISR'
                                   1565 ;------------------------------------------------------------
                                   1566 ;pvItemToQueue             Allocated to stack - _bp -5
                                   1567 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
                                   1568 ;xCopyPosition             Allocated to stack - _bp -9
                                   1569 ;xQueue                    Allocated to registers r2 r3 r4 
                                   1570 ;xReturn                   Allocated to registers r7 
                                   1571 ;uxSavedInterruptStatus    Allocated to registers 
                                   1572 ;pxQueue                   Allocated to stack - _bp +1
                                   1573 ;cTxLock                   Allocated to registers r7 
                                   1574 ;------------------------------------------------------------
                           000670  1575 	G$xQueueGenericSendFromISR$0$0 ==.
                           000670  1576 	C$queue.c$957$2_0$211 ==.
                                   1577 ;	src/FreeRTOS/queue.c:957: BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition )
                                   1578 ;	-----------------------------------------
                                   1579 ;	 function xQueueGenericSendFromISR
                                   1580 ;	-----------------------------------------
      0038A4                       1581 _xQueueGenericSendFromISR:
      0038A4 C0 0C            [24] 1582 	push	_bp
      0038A6 85 81 0C         [24] 1583 	mov	_bp,sp
      0038A9 05 81            [12] 1584 	inc	sp
      0038AB 05 81            [12] 1585 	inc	sp
      0038AD 05 81            [12] 1586 	inc	sp
      0038AF AA 82            [24] 1587 	mov	r2,dpl
      0038B1 AB 83            [24] 1588 	mov	r3,dph
      0038B3 AC F0            [24] 1589 	mov	r4,b
                           000681  1590 	C$queue.c$961$2_0$211 ==.
                                   1591 ;	src/FreeRTOS/queue.c:961: Queue_t * const pxQueue = xQueue;
      0038B5 A8 0C            [24] 1592 	mov	r0,_bp
      0038B7 08               [12] 1593 	inc	r0
      0038B8 A6 02            [24] 1594 	mov	@r0,ar2
      0038BA 08               [12] 1595 	inc	r0
      0038BB A6 03            [24] 1596 	mov	@r0,ar3
      0038BD 08               [12] 1597 	inc	r0
      0038BE A6 04            [24] 1598 	mov	@r0,ar4
                           00068C  1599 	C$queue.c$990$2_0$212 ==.
                                   1600 ;	src/FreeRTOS/queue.c:990: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
      0038C0 74 24            [12] 1601 	mov	a,#0x24
      0038C2 2A               [12] 1602 	add	a,r2
      0038C3 FD               [12] 1603 	mov	r5,a
      0038C4 E4               [12] 1604 	clr	a
      0038C5 3B               [12] 1605 	addc	a,r3
      0038C6 FE               [12] 1606 	mov	r6,a
      0038C7 8C 07            [24] 1607 	mov	ar7,r4
      0038C9 8D 82            [24] 1608 	mov	dpl,r5
      0038CB 8E 83            [24] 1609 	mov	dph,r6
      0038CD 8F F0            [24] 1610 	mov	b,r7
      0038CF 12 70 5A         [24] 1611 	lcall	__gptrget
      0038D2 FD               [12] 1612 	mov	r5,a
      0038D3 74 25            [12] 1613 	mov	a,#0x25
      0038D5 2A               [12] 1614 	add	a,r2
      0038D6 FC               [12] 1615 	mov	r4,a
      0038D7 E4               [12] 1616 	clr	a
      0038D8 3B               [12] 1617 	addc	a,r3
      0038D9 FE               [12] 1618 	mov	r6,a
      0038DA 8C 07            [24] 1619 	mov	ar7,r4
      0038DC 8C 82            [24] 1620 	mov	dpl,r4
      0038DE 8E 83            [24] 1621 	mov	dph,r6
      0038E0 8F F0            [24] 1622 	mov	b,r7
      0038E2 12 70 5A         [24] 1623 	lcall	__gptrget
      0038E5 FC               [12] 1624 	mov	r4,a
      0038E6 C3               [12] 1625 	clr	c
      0038E7 ED               [12] 1626 	mov	a,r5
      0038E8 9C               [12] 1627 	subb	a,r4
      0038E9 40 0D            [24] 1628 	jc	00110$
      0038EB E5 0C            [12] 1629 	mov	a,_bp
      0038ED 24 F7            [12] 1630 	add	a,#0xf7
      0038EF F8               [12] 1631 	mov	r0,a
      0038F0 B6 02 02         [24] 1632 	cjne	@r0,#0x02,00139$
      0038F3 80 03            [24] 1633 	sjmp	00140$
      0038F5                       1634 00139$:
      0038F5 02 39 B9         [24] 1635 	ljmp	00111$
      0038F8                       1636 00140$:
      0038F8                       1637 00110$:
                           0006C4  1638 	C$queue.c$992$3_0$213 ==.
                                   1639 ;	src/FreeRTOS/queue.c:992: const int8_t cTxLock = pxQueue->cTxLock;
      0038F8 A8 0C            [24] 1640 	mov	r0,_bp
      0038FA 08               [12] 1641 	inc	r0
      0038FB 74 28            [12] 1642 	mov	a,#0x28
      0038FD 26               [12] 1643 	add	a,@r0
      0038FE FD               [12] 1644 	mov	r5,a
      0038FF E4               [12] 1645 	clr	a
      003900 08               [12] 1646 	inc	r0
      003901 36               [12] 1647 	addc	a,@r0
      003902 FE               [12] 1648 	mov	r6,a
      003903 08               [12] 1649 	inc	r0
      003904 86 07            [24] 1650 	mov	ar7,@r0
      003906 8D 82            [24] 1651 	mov	dpl,r5
      003908 8E 83            [24] 1652 	mov	dph,r6
      00390A 8F F0            [24] 1653 	mov	b,r7
      00390C 12 70 5A         [24] 1654 	lcall	__gptrget
      00390F FF               [12] 1655 	mov	r7,a
                           0006DC  1656 	C$queue.c$1001$3_0$213 ==.
                                   1657 ;	src/FreeRTOS/queue.c:1001: ( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
      003910 C0 07            [24] 1658 	push	ar7
      003912 E5 0C            [12] 1659 	mov	a,_bp
      003914 24 F7            [12] 1660 	add	a,#0xf7
      003916 F8               [12] 1661 	mov	r0,a
      003917 E6               [12] 1662 	mov	a,@r0
      003918 C0 E0            [24] 1663 	push	acc
      00391A E5 0C            [12] 1664 	mov	a,_bp
      00391C 24 FB            [12] 1665 	add	a,#0xfb
      00391E F8               [12] 1666 	mov	r0,a
      00391F E6               [12] 1667 	mov	a,@r0
      003920 C0 E0            [24] 1668 	push	acc
      003922 08               [12] 1669 	inc	r0
      003923 E6               [12] 1670 	mov	a,@r0
      003924 C0 E0            [24] 1671 	push	acc
      003926 08               [12] 1672 	inc	r0
      003927 E6               [12] 1673 	mov	a,@r0
      003928 C0 E0            [24] 1674 	push	acc
      00392A A8 0C            [24] 1675 	mov	r0,_bp
      00392C 08               [12] 1676 	inc	r0
      00392D 86 82            [24] 1677 	mov	dpl,@r0
      00392F 08               [12] 1678 	inc	r0
      003930 86 83            [24] 1679 	mov	dph,@r0
      003932 08               [12] 1680 	inc	r0
      003933 86 F0            [24] 1681 	mov	b,@r0
      003935 12 44 BD         [24] 1682 	lcall	_prvCopyDataToQueue
      003938 E5 81            [12] 1683 	mov	a,sp
      00393A 24 FC            [12] 1684 	add	a,#0xfc
      00393C F5 81            [12] 1685 	mov	sp,a
      00393E D0 07            [24] 1686 	pop	ar7
                           00070C  1687 	C$queue.c$1005$3_0$213 ==.
                                   1688 ;	src/FreeRTOS/queue.c:1005: if( cTxLock == queueUNLOCKED )
      003940 BF FF 58         [24] 1689 	cjne	r7,#0xff,00108$
                           00070F  1690 	C$queue.c$1060$5_0$215 ==.
                                   1691 ;	src/FreeRTOS/queue.c:1060: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      003943 A8 0C            [24] 1692 	mov	r0,_bp
      003945 08               [12] 1693 	inc	r0
      003946 74 18            [12] 1694 	mov	a,#0x18
      003948 26               [12] 1695 	add	a,@r0
      003949 FC               [12] 1696 	mov	r4,a
      00394A E4               [12] 1697 	clr	a
      00394B 08               [12] 1698 	inc	r0
      00394C 36               [12] 1699 	addc	a,@r0
      00394D FD               [12] 1700 	mov	r5,a
      00394E 08               [12] 1701 	inc	r0
      00394F 86 06            [24] 1702 	mov	ar6,@r0
      003951 8C 82            [24] 1703 	mov	dpl,r4
      003953 8D 83            [24] 1704 	mov	dph,r5
      003955 8E F0            [24] 1705 	mov	b,r6
      003957 12 70 5A         [24] 1706 	lcall	__gptrget
      00395A 60 58            [24] 1707 	jz	00109$
                           000728  1708 	C$queue.c$1062$6_0$216 ==.
                                   1709 ;	src/FreeRTOS/queue.c:1062: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      00395C A8 0C            [24] 1710 	mov	r0,_bp
      00395E 08               [12] 1711 	inc	r0
      00395F 74 18            [12] 1712 	mov	a,#0x18
      003961 26               [12] 1713 	add	a,@r0
      003962 FC               [12] 1714 	mov	r4,a
      003963 E4               [12] 1715 	clr	a
      003964 08               [12] 1716 	inc	r0
      003965 36               [12] 1717 	addc	a,@r0
      003966 FD               [12] 1718 	mov	r5,a
      003967 08               [12] 1719 	inc	r0
      003968 86 06            [24] 1720 	mov	ar6,@r0
      00396A 8C 82            [24] 1721 	mov	dpl,r4
      00396C 8D 83            [24] 1722 	mov	dph,r5
      00396E 8E F0            [24] 1723 	mov	b,r6
      003970 12 10 57         [24] 1724 	lcall	_xTaskRemoveFromEventList
      003973 E5 82            [12] 1725 	mov	a,dpl
      003975 60 3D            [24] 1726 	jz	00109$
                           000743  1727 	C$queue.c$1066$7_0$217 ==.
                                   1728 ;	src/FreeRTOS/queue.c:1066: if( pxHigherPriorityTaskWoken != NULL )
      003977 E5 0C            [12] 1729 	mov	a,_bp
      003979 24 F8            [12] 1730 	add	a,#0xf8
      00397B F8               [12] 1731 	mov	r0,a
      00397C E6               [12] 1732 	mov	a,@r0
      00397D 08               [12] 1733 	inc	r0
      00397E 46               [12] 1734 	orl	a,@r0
      00397F 60 33            [24] 1735 	jz	00109$
                           00074D  1736 	C$queue.c$1068$8_0$218 ==.
                                   1737 ;	src/FreeRTOS/queue.c:1068: *pxHigherPriorityTaskWoken = pdTRUE;
      003981 E5 0C            [12] 1738 	mov	a,_bp
      003983 24 F8            [12] 1739 	add	a,#0xf8
      003985 F8               [12] 1740 	mov	r0,a
      003986 86 04            [24] 1741 	mov	ar4,@r0
      003988 08               [12] 1742 	inc	r0
      003989 86 05            [24] 1743 	mov	ar5,@r0
      00398B 08               [12] 1744 	inc	r0
      00398C 86 06            [24] 1745 	mov	ar6,@r0
      00398E 8C 82            [24] 1746 	mov	dpl,r4
      003990 8D 83            [24] 1747 	mov	dph,r5
      003992 8E F0            [24] 1748 	mov	b,r6
      003994 74 01            [12] 1749 	mov	a,#0x01
      003996 12 66 A0         [24] 1750 	lcall	__gptrput
      003999 80 19            [24] 1751 	sjmp	00109$
      00399B                       1752 00108$:
                           000767  1753 	C$queue.c$1091$4_0$222 ==.
                                   1754 ;	src/FreeRTOS/queue.c:1091: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
      00399B A8 0C            [24] 1755 	mov	r0,_bp
      00399D 08               [12] 1756 	inc	r0
      00399E 74 28            [12] 1757 	mov	a,#0x28
      0039A0 26               [12] 1758 	add	a,@r0
      0039A1 FC               [12] 1759 	mov	r4,a
      0039A2 E4               [12] 1760 	clr	a
      0039A3 08               [12] 1761 	inc	r0
      0039A4 36               [12] 1762 	addc	a,@r0
      0039A5 FD               [12] 1763 	mov	r5,a
      0039A6 08               [12] 1764 	inc	r0
      0039A7 86 06            [24] 1765 	mov	ar6,@r0
      0039A9 0F               [12] 1766 	inc	r7
      0039AA 8C 82            [24] 1767 	mov	dpl,r4
      0039AC 8D 83            [24] 1768 	mov	dph,r5
      0039AE 8E F0            [24] 1769 	mov	b,r6
      0039B0 EF               [12] 1770 	mov	a,r7
      0039B1 12 66 A0         [24] 1771 	lcall	__gptrput
      0039B4                       1772 00109$:
                           000780  1773 	C$queue.c$1094$3_0$213 ==.
                                   1774 ;	src/FreeRTOS/queue.c:1094: xReturn = pdPASS;
                           000780  1775 	C$queue.c$1099$3_0$223 ==.
                                   1776 ;	src/FreeRTOS/queue.c:1099: xReturn = errQUEUE_FULL;
                           000780  1777 	C$queue.c$1104$1_0$211 ==.
                                   1778 ;	src/FreeRTOS/queue.c:1104: return xReturn;
                           000780  1779 	C$queue.c$1105$1_0$211 ==.
                                   1780 ;	src/FreeRTOS/queue.c:1105: }
      0039B4 75 82 01         [24] 1781 	mov	dpl,#0x01
      0039B7 80 03            [24] 1782 	sjmp	00112$
      0039B9                       1783 00111$:
      0039B9 75 82 00         [24] 1784 	mov	dpl,#0x00
      0039BC                       1785 00112$:
      0039BC 85 0C 81         [24] 1786 	mov	sp,_bp
      0039BF D0 0C            [24] 1787 	pop	_bp
                           00078D  1788 	C$queue.c$1105$1_0$211 ==.
                           00078D  1789 	XG$xQueueGenericSendFromISR$0$0 ==.
      0039C1 22               [24] 1790 	ret
                                   1791 ;------------------------------------------------------------
                                   1792 ;Allocation info for local variables in function 'xQueueGiveFromISR'
                                   1793 ;------------------------------------------------------------
                                   1794 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
                                   1795 ;xQueue                    Allocated to stack - _bp +1
                                   1796 ;xReturn                   Allocated to registers r7 
                                   1797 ;uxSavedInterruptStatus    Allocated to registers 
                                   1798 ;pxQueue                   Allocated to registers 
                                   1799 ;uxMessagesWaiting         Allocated to stack - _bp +7
                                   1800 ;cTxLock                   Allocated to registers r7 
                                   1801 ;sloc0                     Allocated to stack - _bp +4
                                   1802 ;------------------------------------------------------------
                           00078E  1803 	G$xQueueGiveFromISR$0$0 ==.
                           00078E  1804 	C$queue.c$1108$1_0$225 ==.
                                   1805 ;	src/FreeRTOS/queue.c:1108: BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken )
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function xQueueGiveFromISR
                                   1808 ;	-----------------------------------------
      0039C2                       1809 _xQueueGiveFromISR:
      0039C2 C0 0C            [24] 1810 	push	_bp
      0039C4 85 81 0C         [24] 1811 	mov	_bp,sp
      0039C7 C0 82            [24] 1812 	push	dpl
      0039C9 C0 83            [24] 1813 	push	dph
      0039CB C0 F0            [24] 1814 	push	b
      0039CD E5 81            [12] 1815 	mov	a,sp
      0039CF 24 04            [12] 1816 	add	a,#0x04
      0039D1 F5 81            [12] 1817 	mov	sp,a
                           00079F  1818 	C$queue.c$1149$2_0$226 ==.
                                   1819 ;	src/FreeRTOS/queue.c:1149: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      0039D3 A8 0C            [24] 1820 	mov	r0,_bp
      0039D5 08               [12] 1821 	inc	r0
      0039D6 74 24            [12] 1822 	mov	a,#0x24
      0039D8 26               [12] 1823 	add	a,@r0
      0039D9 FA               [12] 1824 	mov	r2,a
      0039DA E4               [12] 1825 	clr	a
      0039DB 08               [12] 1826 	inc	r0
      0039DC 36               [12] 1827 	addc	a,@r0
      0039DD FB               [12] 1828 	mov	r3,a
      0039DE 08               [12] 1829 	inc	r0
      0039DF 86 04            [24] 1830 	mov	ar4,@r0
      0039E1 8A 82            [24] 1831 	mov	dpl,r2
      0039E3 8B 83            [24] 1832 	mov	dph,r3
      0039E5 8C F0            [24] 1833 	mov	b,r4
      0039E7 E5 0C            [12] 1834 	mov	a,_bp
      0039E9 24 07            [12] 1835 	add	a,#0x07
      0039EB F8               [12] 1836 	mov	r0,a
      0039EC 12 70 5A         [24] 1837 	lcall	__gptrget
      0039EF F6               [12] 1838 	mov	@r0,a
                           0007BC  1839 	C$queue.c$1154$2_0$226 ==.
                                   1840 ;	src/FreeRTOS/queue.c:1154: if( uxMessagesWaiting < pxQueue->uxLength )
      0039F0 A8 0C            [24] 1841 	mov	r0,_bp
      0039F2 08               [12] 1842 	inc	r0
      0039F3 74 25            [12] 1843 	mov	a,#0x25
      0039F5 26               [12] 1844 	add	a,@r0
      0039F6 FD               [12] 1845 	mov	r5,a
      0039F7 E4               [12] 1846 	clr	a
      0039F8 08               [12] 1847 	inc	r0
      0039F9 36               [12] 1848 	addc	a,@r0
      0039FA FE               [12] 1849 	mov	r6,a
      0039FB 08               [12] 1850 	inc	r0
      0039FC 86 07            [24] 1851 	mov	ar7,@r0
      0039FE 8D 82            [24] 1852 	mov	dpl,r5
      003A00 8E 83            [24] 1853 	mov	dph,r6
      003A02 8F F0            [24] 1854 	mov	b,r7
      003A04 12 70 5A         [24] 1855 	lcall	__gptrget
      003A07 FD               [12] 1856 	mov	r5,a
      003A08 E5 0C            [12] 1857 	mov	a,_bp
      003A0A 24 07            [12] 1858 	add	a,#0x07
      003A0C F8               [12] 1859 	mov	r0,a
      003A0D C3               [12] 1860 	clr	c
      003A0E E6               [12] 1861 	mov	a,@r0
      003A0F 9D               [12] 1862 	subb	a,r5
      003A10 40 03            [24] 1863 	jc	00137$
      003A12 02 3A BE         [24] 1864 	ljmp	00111$
      003A15                       1865 00137$:
                           0007E1  1866 	C$queue.c$1156$3_0$227 ==.
                                   1867 ;	src/FreeRTOS/queue.c:1156: const int8_t cTxLock = pxQueue->cTxLock;
      003A15 A8 0C            [24] 1868 	mov	r0,_bp
      003A17 08               [12] 1869 	inc	r0
      003A18 E5 0C            [12] 1870 	mov	a,_bp
      003A1A 24 04            [12] 1871 	add	a,#0x04
      003A1C F9               [12] 1872 	mov	r1,a
      003A1D 74 28            [12] 1873 	mov	a,#0x28
      003A1F 26               [12] 1874 	add	a,@r0
      003A20 F7               [12] 1875 	mov	@r1,a
      003A21 E4               [12] 1876 	clr	a
      003A22 08               [12] 1877 	inc	r0
      003A23 36               [12] 1878 	addc	a,@r0
      003A24 09               [12] 1879 	inc	r1
      003A25 F7               [12] 1880 	mov	@r1,a
      003A26 08               [12] 1881 	inc	r0
      003A27 09               [12] 1882 	inc	r1
      003A28 E6               [12] 1883 	mov	a,@r0
      003A29 F7               [12] 1884 	mov	@r1,a
      003A2A E5 0C            [12] 1885 	mov	a,_bp
      003A2C 24 04            [12] 1886 	add	a,#0x04
      003A2E F8               [12] 1887 	mov	r0,a
      003A2F 86 82            [24] 1888 	mov	dpl,@r0
      003A31 08               [12] 1889 	inc	r0
      003A32 86 83            [24] 1890 	mov	dph,@r0
      003A34 08               [12] 1891 	inc	r0
      003A35 86 F0            [24] 1892 	mov	b,@r0
      003A37 12 70 5A         [24] 1893 	lcall	__gptrget
      003A3A FF               [12] 1894 	mov	r7,a
                           000807  1895 	C$queue.c$1166$3_0$227 ==.
                                   1896 ;	src/FreeRTOS/queue.c:1166: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
      003A3B E5 0C            [12] 1897 	mov	a,_bp
      003A3D 24 07            [12] 1898 	add	a,#0x07
      003A3F F8               [12] 1899 	mov	r0,a
      003A40 E6               [12] 1900 	mov	a,@r0
      003A41 04               [12] 1901 	inc	a
      003A42 FE               [12] 1902 	mov	r6,a
      003A43 8A 82            [24] 1903 	mov	dpl,r2
      003A45 8B 83            [24] 1904 	mov	dph,r3
      003A47 8C F0            [24] 1905 	mov	b,r4
      003A49 12 66 A0         [24] 1906 	lcall	__gptrput
                           000818  1907 	C$queue.c$1170$3_0$227 ==.
                                   1908 ;	src/FreeRTOS/queue.c:1170: if( cTxLock == queueUNLOCKED )
      003A4C BF FF 58         [24] 1909 	cjne	r7,#0xff,00108$
                           00081B  1910 	C$queue.c$1225$5_0$229 ==.
                                   1911 ;	src/FreeRTOS/queue.c:1225: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      003A4F A8 0C            [24] 1912 	mov	r0,_bp
      003A51 08               [12] 1913 	inc	r0
      003A52 74 18            [12] 1914 	mov	a,#0x18
      003A54 26               [12] 1915 	add	a,@r0
      003A55 FC               [12] 1916 	mov	r4,a
      003A56 E4               [12] 1917 	clr	a
      003A57 08               [12] 1918 	inc	r0
      003A58 36               [12] 1919 	addc	a,@r0
      003A59 FD               [12] 1920 	mov	r5,a
      003A5A 08               [12] 1921 	inc	r0
      003A5B 86 06            [24] 1922 	mov	ar6,@r0
      003A5D 8C 82            [24] 1923 	mov	dpl,r4
      003A5F 8D 83            [24] 1924 	mov	dph,r5
      003A61 8E F0            [24] 1925 	mov	b,r6
      003A63 12 70 5A         [24] 1926 	lcall	__gptrget
      003A66 60 51            [24] 1927 	jz	00109$
                           000834  1928 	C$queue.c$1227$6_0$230 ==.
                                   1929 ;	src/FreeRTOS/queue.c:1227: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      003A68 A8 0C            [24] 1930 	mov	r0,_bp
      003A6A 08               [12] 1931 	inc	r0
      003A6B 74 18            [12] 1932 	mov	a,#0x18
      003A6D 26               [12] 1933 	add	a,@r0
      003A6E FC               [12] 1934 	mov	r4,a
      003A6F E4               [12] 1935 	clr	a
      003A70 08               [12] 1936 	inc	r0
      003A71 36               [12] 1937 	addc	a,@r0
      003A72 FD               [12] 1938 	mov	r5,a
      003A73 08               [12] 1939 	inc	r0
      003A74 86 06            [24] 1940 	mov	ar6,@r0
      003A76 8C 82            [24] 1941 	mov	dpl,r4
      003A78 8D 83            [24] 1942 	mov	dph,r5
      003A7A 8E F0            [24] 1943 	mov	b,r6
      003A7C 12 10 57         [24] 1944 	lcall	_xTaskRemoveFromEventList
      003A7F E5 82            [12] 1945 	mov	a,dpl
      003A81 60 36            [24] 1946 	jz	00109$
                           00084F  1947 	C$queue.c$1231$7_0$231 ==.
                                   1948 ;	src/FreeRTOS/queue.c:1231: if( pxHigherPriorityTaskWoken != NULL )
      003A83 E5 0C            [12] 1949 	mov	a,_bp
      003A85 24 FB            [12] 1950 	add	a,#0xfb
      003A87 F8               [12] 1951 	mov	r0,a
      003A88 E6               [12] 1952 	mov	a,@r0
      003A89 08               [12] 1953 	inc	r0
      003A8A 46               [12] 1954 	orl	a,@r0
      003A8B 60 2C            [24] 1955 	jz	00109$
                           000859  1956 	C$queue.c$1233$8_0$232 ==.
                                   1957 ;	src/FreeRTOS/queue.c:1233: *pxHigherPriorityTaskWoken = pdTRUE;
      003A8D E5 0C            [12] 1958 	mov	a,_bp
      003A8F 24 FB            [12] 1959 	add	a,#0xfb
      003A91 F8               [12] 1960 	mov	r0,a
      003A92 86 04            [24] 1961 	mov	ar4,@r0
      003A94 08               [12] 1962 	inc	r0
      003A95 86 05            [24] 1963 	mov	ar5,@r0
      003A97 08               [12] 1964 	inc	r0
      003A98 86 06            [24] 1965 	mov	ar6,@r0
      003A9A 8C 82            [24] 1966 	mov	dpl,r4
      003A9C 8D 83            [24] 1967 	mov	dph,r5
      003A9E 8E F0            [24] 1968 	mov	b,r6
      003AA0 74 01            [12] 1969 	mov	a,#0x01
      003AA2 12 66 A0         [24] 1970 	lcall	__gptrput
      003AA5 80 12            [24] 1971 	sjmp	00109$
      003AA7                       1972 00108$:
                           000873  1973 	C$queue.c$1256$4_0$236 ==.
                                   1974 ;	src/FreeRTOS/queue.c:1256: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
      003AA7 0F               [12] 1975 	inc	r7
      003AA8 E5 0C            [12] 1976 	mov	a,_bp
      003AAA 24 04            [12] 1977 	add	a,#0x04
      003AAC F8               [12] 1978 	mov	r0,a
      003AAD 86 82            [24] 1979 	mov	dpl,@r0
      003AAF 08               [12] 1980 	inc	r0
      003AB0 86 83            [24] 1981 	mov	dph,@r0
      003AB2 08               [12] 1982 	inc	r0
      003AB3 86 F0            [24] 1983 	mov	b,@r0
      003AB5 EF               [12] 1984 	mov	a,r7
      003AB6 12 66 A0         [24] 1985 	lcall	__gptrput
      003AB9                       1986 00109$:
                           000885  1987 	C$queue.c$1259$3_0$227 ==.
                                   1988 ;	src/FreeRTOS/queue.c:1259: xReturn = pdPASS;
                           000885  1989 	C$queue.c$1264$3_0$237 ==.
                                   1990 ;	src/FreeRTOS/queue.c:1264: xReturn = errQUEUE_FULL;
                           000885  1991 	C$queue.c$1269$1_0$225 ==.
                                   1992 ;	src/FreeRTOS/queue.c:1269: return xReturn;
                           000885  1993 	C$queue.c$1270$1_0$225 ==.
                                   1994 ;	src/FreeRTOS/queue.c:1270: }
      003AB9 75 82 01         [24] 1995 	mov	dpl,#0x01
      003ABC 80 03            [24] 1996 	sjmp	00112$
      003ABE                       1997 00111$:
      003ABE 75 82 00         [24] 1998 	mov	dpl,#0x00
      003AC1                       1999 00112$:
      003AC1 85 0C 81         [24] 2000 	mov	sp,_bp
      003AC4 D0 0C            [24] 2001 	pop	_bp
                           000892  2002 	C$queue.c$1270$1_0$225 ==.
                           000892  2003 	XG$xQueueGiveFromISR$0$0 ==.
      003AC6 22               [24] 2004 	ret
                                   2005 ;------------------------------------------------------------
                                   2006 ;Allocation info for local variables in function 'xQueueReceive'
                                   2007 ;------------------------------------------------------------
                                   2008 ;pvBuffer                  Allocated to stack - _bp -5
                                   2009 ;xTicksToWait              Allocated to stack - _bp -7
                                   2010 ;xQueue                    Allocated to registers r4 r5 r7 
                                   2011 ;xEntryTimeSet             Allocated to stack - _bp +5
                                   2012 ;xTimeOut                  Allocated to stack - _bp +6
                                   2013 ;pxQueue                   Allocated to stack - _bp +9
                                   2014 ;uxMessagesWaiting         Allocated to registers r5 
                                   2015 ;sloc0                     Allocated to stack - _bp +1
                                   2016 ;sloc1                     Allocated to stack - _bp +15
                                   2017 ;sloc2                     Allocated to stack - _bp +4
                                   2018 ;------------------------------------------------------------
                           000893  2019 	G$xQueueReceive$0$0 ==.
                           000893  2020 	C$queue.c$1273$1_0$239 ==.
                                   2021 ;	src/FreeRTOS/queue.c:1273: BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait )
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function xQueueReceive
                                   2024 ;	-----------------------------------------
      003AC7                       2025 _xQueueReceive:
      003AC7 C0 0C            [24] 2026 	push	_bp
      003AC9 E5 81            [12] 2027 	mov	a,sp
      003ACB F5 0C            [12] 2028 	mov	_bp,a
      003ACD 24 0B            [12] 2029 	add	a,#0x0b
      003ACF F5 81            [12] 2030 	mov	sp,a
      003AD1 AC 82            [24] 2031 	mov	r4,dpl
      003AD3 AD 83            [24] 2032 	mov	r5,dph
      003AD5 AF F0            [24] 2033 	mov	r7,b
                           0008A3  2034 	C$queue.c$1275$2_0$239 ==.
                                   2035 ;	src/FreeRTOS/queue.c:1275: BaseType_t xEntryTimeSet = pdFALSE;
      003AD7 E5 0C            [12] 2036 	mov	a,_bp
      003AD9 24 05            [12] 2037 	add	a,#0x05
      003ADB F8               [12] 2038 	mov	r0,a
      003ADC 76 00            [12] 2039 	mov	@r0,#0x00
                           0008AA  2040 	C$queue.c$1277$2_0$239 ==.
                                   2041 ;	src/FreeRTOS/queue.c:1277: Queue_t * const pxQueue = xQueue;
      003ADE E5 0C            [12] 2042 	mov	a,_bp
      003AE0 24 09            [12] 2043 	add	a,#0x09
      003AE2 F8               [12] 2044 	mov	r0,a
      003AE3 A6 04            [24] 2045 	mov	@r0,ar4
      003AE5 08               [12] 2046 	inc	r0
      003AE6 A6 05            [24] 2047 	mov	@r0,ar5
      003AE8 08               [12] 2048 	inc	r0
      003AE9 A6 07            [24] 2049 	mov	@r0,ar7
                           0008B7  2050 	C$queue.c$1284$6_0$250 ==.
                                   2051 ;	src/FreeRTOS/queue.c:1284: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
      003AEB E5 0C            [12] 2052 	mov	a,_bp
      003AED 24 06            [12] 2053 	add	a,#0x06
      003AEF FE               [12] 2054 	mov	r6,a
      003AF0 E5 0C            [12] 2055 	mov	a,_bp
      003AF2 24 04            [12] 2056 	add	a,#0x04
      003AF4 F8               [12] 2057 	mov	r0,a
      003AF5 A6 06            [24] 2058 	mov	@r0,ar6
      003AF7 A8 0C            [24] 2059 	mov	r0,_bp
      003AF9 08               [12] 2060 	inc	r0
      003AFA 74 24            [12] 2061 	mov	a,#0x24
      003AFC 2C               [12] 2062 	add	a,r4
      003AFD F6               [12] 2063 	mov	@r0,a
      003AFE E4               [12] 2064 	clr	a
      003AFF 3D               [12] 2065 	addc	a,r5
      003B00 08               [12] 2066 	inc	r0
      003B01 F6               [12] 2067 	mov	@r0,a
      003B02 08               [12] 2068 	inc	r0
      003B03 A6 07            [24] 2069 	mov	@r0,ar7
      003B05                       2070 00128$:
                           0008D1  2071 	C$queue.c$1299$3_0$241 ==.
                                   2072 ;	src/FreeRTOS/queue.c:1299: taskENTER_CRITICAL();
      003B05 C0 E0            [24] 2073 	push ACC 
      003B07 C0 A8            [24] 2074 	push IE 
                                   2075 ;	assignBit
      003B09 C2 AF            [12] 2076 	clr	_EA
                           0008D7  2077 	C$queue.c$1301$4_0$242 ==.
                                   2078 ;	src/FreeRTOS/queue.c:1301: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      003B0B A8 0C            [24] 2079 	mov	r0,_bp
      003B0D 08               [12] 2080 	inc	r0
      003B0E 86 82            [24] 2081 	mov	dpl,@r0
      003B10 08               [12] 2082 	inc	r0
      003B11 86 83            [24] 2083 	mov	dph,@r0
      003B13 08               [12] 2084 	inc	r0
      003B14 86 F0            [24] 2085 	mov	b,@r0
      003B16 12 70 5A         [24] 2086 	lcall	__gptrget
                           0008E5  2087 	C$queue.c$1305$4_0$242 ==.
                                   2088 ;	src/FreeRTOS/queue.c:1305: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      003B19 FC               [12] 2089 	mov	r4,a
      003B1A FD               [12] 2090 	mov	r5,a
      003B1B 70 03            [24] 2091 	jnz	00182$
      003B1D 02 3B B2         [24] 2092 	ljmp	00111$
      003B20                       2093 00182$:
                           0008EC  2094 	C$queue.c$1308$5_0$243 ==.
                                   2095 ;	src/FreeRTOS/queue.c:1308: prvCopyDataFromQueue( pxQueue, pvBuffer );
      003B20 C0 05            [24] 2096 	push	ar5
      003B22 E5 0C            [12] 2097 	mov	a,_bp
      003B24 24 FB            [12] 2098 	add	a,#0xfb
      003B26 F8               [12] 2099 	mov	r0,a
      003B27 E6               [12] 2100 	mov	a,@r0
      003B28 C0 E0            [24] 2101 	push	acc
      003B2A 08               [12] 2102 	inc	r0
      003B2B E6               [12] 2103 	mov	a,@r0
      003B2C C0 E0            [24] 2104 	push	acc
      003B2E 08               [12] 2105 	inc	r0
      003B2F E6               [12] 2106 	mov	a,@r0
      003B30 C0 E0            [24] 2107 	push	acc
      003B32 E5 0C            [12] 2108 	mov	a,_bp
      003B34 24 09            [12] 2109 	add	a,#0x09
      003B36 F8               [12] 2110 	mov	r0,a
      003B37 86 82            [24] 2111 	mov	dpl,@r0
      003B39 08               [12] 2112 	inc	r0
      003B3A 86 83            [24] 2113 	mov	dph,@r0
      003B3C 08               [12] 2114 	inc	r0
      003B3D 86 F0            [24] 2115 	mov	b,@r0
      003B3F 12 48 02         [24] 2116 	lcall	_prvCopyDataFromQueue
      003B42 15 81            [12] 2117 	dec	sp
      003B44 15 81            [12] 2118 	dec	sp
      003B46 15 81            [12] 2119 	dec	sp
      003B48 D0 05            [24] 2120 	pop	ar5
                           000916  2121 	C$queue.c$1310$5_0$243 ==.
                                   2122 ;	src/FreeRTOS/queue.c:1310: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
      003B4A E5 0C            [12] 2123 	mov	a,_bp
      003B4C 24 09            [12] 2124 	add	a,#0x09
      003B4E F8               [12] 2125 	mov	r0,a
      003B4F 74 24            [12] 2126 	mov	a,#0x24
      003B51 26               [12] 2127 	add	a,@r0
      003B52 FB               [12] 2128 	mov	r3,a
      003B53 E4               [12] 2129 	clr	a
      003B54 08               [12] 2130 	inc	r0
      003B55 36               [12] 2131 	addc	a,@r0
      003B56 FC               [12] 2132 	mov	r4,a
      003B57 08               [12] 2133 	inc	r0
      003B58 86 07            [24] 2134 	mov	ar7,@r0
      003B5A ED               [12] 2135 	mov	a,r5
      003B5B 14               [12] 2136 	dec	a
      003B5C FA               [12] 2137 	mov	r2,a
      003B5D 8B 82            [24] 2138 	mov	dpl,r3
      003B5F 8C 83            [24] 2139 	mov	dph,r4
      003B61 8F F0            [24] 2140 	mov	b,r7
      003B63 12 66 A0         [24] 2141 	lcall	__gptrput
                           000932  2142 	C$queue.c$1315$5_0$243 ==.
                                   2143 ;	src/FreeRTOS/queue.c:1315: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      003B66 E5 0C            [12] 2144 	mov	a,_bp
      003B68 24 09            [12] 2145 	add	a,#0x09
      003B6A F8               [12] 2146 	mov	r0,a
      003B6B 74 0C            [12] 2147 	mov	a,#0x0c
      003B6D 26               [12] 2148 	add	a,@r0
      003B6E FB               [12] 2149 	mov	r3,a
      003B6F E4               [12] 2150 	clr	a
      003B70 08               [12] 2151 	inc	r0
      003B71 36               [12] 2152 	addc	a,@r0
      003B72 FC               [12] 2153 	mov	r4,a
      003B73 08               [12] 2154 	inc	r0
      003B74 86 07            [24] 2155 	mov	ar7,@r0
      003B76 8B 82            [24] 2156 	mov	dpl,r3
      003B78 8C 83            [24] 2157 	mov	dph,r4
      003B7A 8F F0            [24] 2158 	mov	b,r7
      003B7C 12 70 5A         [24] 2159 	lcall	__gptrget
      003B7F 60 20            [24] 2160 	jz	00104$
                           00094D  2161 	C$queue.c$1317$6_0$244 ==.
                                   2162 ;	src/FreeRTOS/queue.c:1317: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      003B81 E5 0C            [12] 2163 	mov	a,_bp
      003B83 24 09            [12] 2164 	add	a,#0x09
      003B85 F8               [12] 2165 	mov	r0,a
      003B86 74 0C            [12] 2166 	mov	a,#0x0c
      003B88 26               [12] 2167 	add	a,@r0
      003B89 FB               [12] 2168 	mov	r3,a
      003B8A E4               [12] 2169 	clr	a
      003B8B 08               [12] 2170 	inc	r0
      003B8C 36               [12] 2171 	addc	a,@r0
      003B8D FC               [12] 2172 	mov	r4,a
      003B8E 08               [12] 2173 	inc	r0
      003B8F 86 07            [24] 2174 	mov	ar7,@r0
      003B91 8B 82            [24] 2175 	mov	dpl,r3
      003B93 8C 83            [24] 2176 	mov	dph,r4
      003B95 8F F0            [24] 2177 	mov	b,r7
      003B97 12 10 57         [24] 2178 	lcall	_xTaskRemoveFromEventList
      003B9A E5 82            [12] 2179 	mov	a,dpl
      003B9C 60 03            [24] 2180 	jz	00104$
                           00096A  2181 	C$queue.c$1319$7_0$245 ==.
                                   2182 ;	src/FreeRTOS/queue.c:1319: queueYIELD_IF_USING_PREEMPTION();
      003B9E 12 64 B5         [24] 2183 	lcall	_vPortYield
      003BA1                       2184 00104$:
                           00096D  2185 	C$queue.c$1331$5_0$243 ==.
                                   2186 ;	src/FreeRTOS/queue.c:1331: taskEXIT_CRITICAL();
      003BA1 D0 E0            [24] 2187 	pop ACC 
      003BA3 53 E0 80         [24] 2188 	anl	_ACC,#0x80
      003BA6 E5 E0            [12] 2189 	mov	a,_ACC
      003BA8 42 A8            [12] 2190 	orl	_IE,a
      003BAA D0 E0            [24] 2191 	pop ACC 
                           000978  2192 	C$queue.c$1332$5_0$243 ==.
                                   2193 ;	src/FreeRTOS/queue.c:1332: return pdPASS;
      003BAC 75 82 01         [24] 2194 	mov	dpl,#0x01
      003BAF 02 3D 48         [24] 2195 	ljmp	00130$
      003BB2                       2196 00111$:
                           00097E  2197 	C$queue.c$1336$5_0$248 ==.
                                   2198 ;	src/FreeRTOS/queue.c:1336: if( xTicksToWait == ( TickType_t ) 0 )
      003BB2 E5 0C            [12] 2199 	mov	a,_bp
      003BB4 24 F9            [12] 2200 	add	a,#0xf9
      003BB6 F8               [12] 2201 	mov	r0,a
      003BB7 E6               [12] 2202 	mov	a,@r0
      003BB8 08               [12] 2203 	inc	r0
      003BB9 46               [12] 2204 	orl	a,@r0
      003BBA 70 11            [24] 2205 	jnz	00108$
                           000988  2206 	C$queue.c$1340$6_0$249 ==.
                                   2207 ;	src/FreeRTOS/queue.c:1340: taskEXIT_CRITICAL();
      003BBC D0 E0            [24] 2208 	pop ACC 
      003BBE 53 E0 80         [24] 2209 	anl	_ACC,#0x80
      003BC1 E5 E0            [12] 2210 	mov	a,_ACC
      003BC3 42 A8            [12] 2211 	orl	_IE,a
      003BC5 D0 E0            [24] 2212 	pop ACC 
                           000993  2213 	C$queue.c$1342$6_0$249 ==.
                                   2214 ;	src/FreeRTOS/queue.c:1342: return errQUEUE_EMPTY;
      003BC7 75 82 00         [24] 2215 	mov	dpl,#0x00
      003BCA 02 3D 48         [24] 2216 	ljmp	00130$
      003BCD                       2217 00108$:
                           000999  2218 	C$queue.c$1344$5_0$248 ==.
                                   2219 ;	src/FreeRTOS/queue.c:1344: else if( xEntryTimeSet == pdFALSE )
      003BCD E5 0C            [12] 2220 	mov	a,_bp
      003BCF 24 05            [12] 2221 	add	a,#0x05
      003BD1 F8               [12] 2222 	mov	r0,a
      003BD2 E6               [12] 2223 	mov	a,@r0
                           00099F  2224 	C$queue.c$1348$6_0$250 ==.
                                   2225 ;	src/FreeRTOS/queue.c:1348: vTaskInternalSetTimeOutState( &xTimeOut );
      003BD3 70 19            [24] 2226 	jnz	00112$
      003BD5 8E 03            [24] 2227 	mov	ar3,r6
      003BD7 FC               [12] 2228 	mov	r4,a
      003BD8 7F 40            [12] 2229 	mov	r7,#0x40
      003BDA 8B 82            [24] 2230 	mov	dpl,r3
      003BDC 8C 83            [24] 2231 	mov	dph,r4
      003BDE 8F F0            [24] 2232 	mov	b,r7
      003BE0 C0 06            [24] 2233 	push	ar6
      003BE2 12 13 1E         [24] 2234 	lcall	_vTaskInternalSetTimeOutState
      003BE5 D0 06            [24] 2235 	pop	ar6
                           0009B3  2236 	C$queue.c$1349$6_0$250 ==.
                                   2237 ;	src/FreeRTOS/queue.c:1349: xEntryTimeSet = pdTRUE;
      003BE7 E5 0C            [12] 2238 	mov	a,_bp
      003BE9 24 05            [12] 2239 	add	a,#0x05
      003BEB F8               [12] 2240 	mov	r0,a
      003BEC 76 01            [12] 2241 	mov	@r0,#0x01
      003BEE                       2242 00112$:
                           0009BA  2243 	C$queue.c$1358$3_0$241 ==.
                                   2244 ;	src/FreeRTOS/queue.c:1358: taskEXIT_CRITICAL();
      003BEE D0 E0            [24] 2245 	pop ACC 
      003BF0 53 E0 80         [24] 2246 	anl	_ACC,#0x80
      003BF3 E5 E0            [12] 2247 	mov	a,_ACC
      003BF5 42 A8            [12] 2248 	orl	_IE,a
      003BF7 D0 E0            [24] 2249 	pop ACC 
                           0009C5  2250 	C$queue.c$1363$3_0$241 ==.
                                   2251 ;	src/FreeRTOS/queue.c:1363: vTaskSuspendAll();
      003BF9 C0 06            [24] 2252 	push	ar6
      003BFB 12 09 4A         [24] 2253 	lcall	_vTaskSuspendAll
      003BFE D0 06            [24] 2254 	pop	ar6
                           0009CC  2255 	C$queue.c$1364$3_0$241 ==.
                                   2256 ;	src/FreeRTOS/queue.c:1364: prvLockQueue( pxQueue );
      003C00 C0 E0            [24] 2257 	push ACC 
      003C02 C0 A8            [24] 2258 	push IE 
                                   2259 ;	assignBit
      003C04 C2 AF            [12] 2260 	clr	_EA
      003C06 E5 0C            [12] 2261 	mov	a,_bp
      003C08 24 09            [12] 2262 	add	a,#0x09
      003C0A F8               [12] 2263 	mov	r0,a
      003C0B 74 27            [12] 2264 	mov	a,#0x27
      003C0D 26               [12] 2265 	add	a,@r0
      003C0E FB               [12] 2266 	mov	r3,a
      003C0F E4               [12] 2267 	clr	a
      003C10 08               [12] 2268 	inc	r0
      003C11 36               [12] 2269 	addc	a,@r0
      003C12 FC               [12] 2270 	mov	r4,a
      003C13 08               [12] 2271 	inc	r0
      003C14 86 07            [24] 2272 	mov	ar7,@r0
      003C16 8B 82            [24] 2273 	mov	dpl,r3
      003C18 8C 83            [24] 2274 	mov	dph,r4
      003C1A 8F F0            [24] 2275 	mov	b,r7
      003C1C 12 70 5A         [24] 2276 	lcall	__gptrget
      003C1F FA               [12] 2277 	mov	r2,a
      003C20 BA FF 0A         [24] 2278 	cjne	r2,#0xff,00114$
      003C23 8B 82            [24] 2279 	mov	dpl,r3
      003C25 8C 83            [24] 2280 	mov	dph,r4
      003C27 8F F0            [24] 2281 	mov	b,r7
      003C29 E4               [12] 2282 	clr	a
      003C2A 12 66 A0         [24] 2283 	lcall	__gptrput
      003C2D                       2284 00114$:
      003C2D E5 0C            [12] 2285 	mov	a,_bp
      003C2F 24 09            [12] 2286 	add	a,#0x09
      003C31 F8               [12] 2287 	mov	r0,a
      003C32 74 28            [12] 2288 	mov	a,#0x28
      003C34 26               [12] 2289 	add	a,@r0
      003C35 FB               [12] 2290 	mov	r3,a
      003C36 E4               [12] 2291 	clr	a
      003C37 08               [12] 2292 	inc	r0
      003C38 36               [12] 2293 	addc	a,@r0
      003C39 FC               [12] 2294 	mov	r4,a
      003C3A 08               [12] 2295 	inc	r0
      003C3B 86 07            [24] 2296 	mov	ar7,@r0
      003C3D 8B 82            [24] 2297 	mov	dpl,r3
      003C3F 8C 83            [24] 2298 	mov	dph,r4
      003C41 8F F0            [24] 2299 	mov	b,r7
      003C43 12 70 5A         [24] 2300 	lcall	__gptrget
      003C46 FA               [12] 2301 	mov	r2,a
      003C47 BA FF 0A         [24] 2302 	cjne	r2,#0xff,00116$
      003C4A 8B 82            [24] 2303 	mov	dpl,r3
      003C4C 8C 83            [24] 2304 	mov	dph,r4
      003C4E 8F F0            [24] 2305 	mov	b,r7
      003C50 E4               [12] 2306 	clr	a
      003C51 12 66 A0         [24] 2307 	lcall	__gptrput
      003C54                       2308 00116$:
      003C54 C0 06            [24] 2309 	push	ar6
      003C56 D0 E0            [24] 2310 	pop ACC 
      003C58 53 E0 80         [24] 2311 	anl	_ACC,#0x80
      003C5B E5 E0            [12] 2312 	mov	a,_ACC
      003C5D 42 A8            [12] 2313 	orl	_IE,a
      003C5F D0 E0            [24] 2314 	pop ACC 
                           000A2D  2315 	C$queue.c$1367$3_0$241 ==.
                                   2316 ;	src/FreeRTOS/queue.c:1367: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      003C61 E5 0C            [12] 2317 	mov	a,_bp
      003C63 24 F9            [12] 2318 	add	a,#0xf9
      003C65 FF               [12] 2319 	mov	r7,a
      003C66 7C 00            [12] 2320 	mov	r4,#0x00
      003C68 7B 40            [12] 2321 	mov	r3,#0x40
      003C6A E5 0C            [12] 2322 	mov	a,_bp
      003C6C 24 04            [12] 2323 	add	a,#0x04
      003C6E F8               [12] 2324 	mov	r0,a
      003C6F 86 02            [24] 2325 	mov	ar2,@r0
      003C71 7D 00            [12] 2326 	mov	r5,#0x00
      003C73 7E 40            [12] 2327 	mov	r6,#0x40
      003C75 C0 06            [24] 2328 	push	ar6
      003C77 C0 07            [24] 2329 	push	ar7
      003C79 C0 04            [24] 2330 	push	ar4
      003C7B C0 03            [24] 2331 	push	ar3
      003C7D 8A 82            [24] 2332 	mov	dpl,r2
      003C7F 8D 83            [24] 2333 	mov	dph,r5
      003C81 8E F0            [24] 2334 	mov	b,r6
      003C83 12 13 4E         [24] 2335 	lcall	_xTaskCheckForTimeOut
      003C86 AF 82            [24] 2336 	mov	r7,dpl
      003C88 15 81            [12] 2337 	dec	sp
      003C8A 15 81            [12] 2338 	dec	sp
      003C8C 15 81            [12] 2339 	dec	sp
      003C8E D0 06            [24] 2340 	pop	ar6
      003C90 D0 06            [24] 2341 	pop	ar6
      003C92 EF               [12] 2342 	mov	a,r7
      003C93 60 03            [24] 2343 	jz	00191$
      003C95 02 3D 17         [24] 2344 	ljmp	00125$
      003C98                       2345 00191$:
                           000A64  2346 	C$queue.c$1371$4_0$255 ==.
                                   2347 ;	src/FreeRTOS/queue.c:1371: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      003C98 E5 0C            [12] 2348 	mov	a,_bp
      003C9A 24 09            [12] 2349 	add	a,#0x09
      003C9C F8               [12] 2350 	mov	r0,a
      003C9D 86 82            [24] 2351 	mov	dpl,@r0
      003C9F 08               [12] 2352 	inc	r0
      003CA0 86 83            [24] 2353 	mov	dph,@r0
      003CA2 08               [12] 2354 	inc	r0
      003CA3 86 F0            [24] 2355 	mov	b,@r0
      003CA5 C0 06            [24] 2356 	push	ar6
      003CA7 12 4A CC         [24] 2357 	lcall	_prvIsQueueEmpty
      003CAA E5 82            [12] 2358 	mov	a,dpl
      003CAC D0 06            [24] 2359 	pop	ar6
      003CAE 60 4D            [24] 2360 	jz	00120$
                           000A7C  2361 	C$queue.c$1374$5_0$256 ==.
                                   2362 ;	src/FreeRTOS/queue.c:1374: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      003CB0 E5 0C            [12] 2363 	mov	a,_bp
      003CB2 24 09            [12] 2364 	add	a,#0x09
      003CB4 F8               [12] 2365 	mov	r0,a
      003CB5 74 18            [12] 2366 	mov	a,#0x18
      003CB7 26               [12] 2367 	add	a,@r0
      003CB8 FC               [12] 2368 	mov	r4,a
      003CB9 E4               [12] 2369 	clr	a
      003CBA 08               [12] 2370 	inc	r0
      003CBB 36               [12] 2371 	addc	a,@r0
      003CBC FD               [12] 2372 	mov	r5,a
      003CBD 08               [12] 2373 	inc	r0
      003CBE 86 07            [24] 2374 	mov	ar7,@r0
      003CC0 C0 06            [24] 2375 	push	ar6
      003CC2 E5 0C            [12] 2376 	mov	a,_bp
      003CC4 24 F9            [12] 2377 	add	a,#0xf9
      003CC6 F8               [12] 2378 	mov	r0,a
      003CC7 E6               [12] 2379 	mov	a,@r0
      003CC8 C0 E0            [24] 2380 	push	acc
      003CCA 08               [12] 2381 	inc	r0
      003CCB E6               [12] 2382 	mov	a,@r0
      003CCC C0 E0            [24] 2383 	push	acc
      003CCE 8C 82            [24] 2384 	mov	dpl,r4
      003CD0 8D 83            [24] 2385 	mov	dph,r5
      003CD2 8F F0            [24] 2386 	mov	b,r7
      003CD4 12 0F 92         [24] 2387 	lcall	_vTaskPlaceOnEventList
      003CD7 15 81            [12] 2388 	dec	sp
      003CD9 15 81            [12] 2389 	dec	sp
                           000AA7  2390 	C$queue.c$1375$5_0$256 ==.
                                   2391 ;	src/FreeRTOS/queue.c:1375: prvUnlockQueue( pxQueue );
      003CDB E5 0C            [12] 2392 	mov	a,_bp
      003CDD 24 09            [12] 2393 	add	a,#0x09
      003CDF F8               [12] 2394 	mov	r0,a
      003CE0 86 82            [24] 2395 	mov	dpl,@r0
      003CE2 08               [12] 2396 	inc	r0
      003CE3 86 83            [24] 2397 	mov	dph,@r0
      003CE5 08               [12] 2398 	inc	r0
      003CE6 86 F0            [24] 2399 	mov	b,@r0
      003CE8 12 49 52         [24] 2400 	lcall	_prvUnlockQueue
                           000AB7  2401 	C$queue.c$1376$5_0$256 ==.
                                   2402 ;	src/FreeRTOS/queue.c:1376: if( xTaskResumeAll() == pdFALSE )
      003CEB 12 09 52         [24] 2403 	lcall	_xTaskResumeAll
      003CEE E5 82            [12] 2404 	mov	a,dpl
      003CF0 D0 06            [24] 2405 	pop	ar6
      003CF2 60 03            [24] 2406 	jz	00193$
      003CF4 02 3B 05         [24] 2407 	ljmp	00128$
      003CF7                       2408 00193$:
                           000AC3  2409 	C$queue.c$1378$6_0$257 ==.
                                   2410 ;	src/FreeRTOS/queue.c:1378: portYIELD_WITHIN_API();
      003CF7 12 64 B5         [24] 2411 	lcall	_vPortYield
      003CFA 02 3B 05         [24] 2412 	ljmp	00128$
      003CFD                       2413 00120$:
                           000AC9  2414 	C$queue.c$1389$5_0$259 ==.
                                   2415 ;	src/FreeRTOS/queue.c:1389: prvUnlockQueue( pxQueue );
      003CFD E5 0C            [12] 2416 	mov	a,_bp
      003CFF 24 09            [12] 2417 	add	a,#0x09
      003D01 F8               [12] 2418 	mov	r0,a
      003D02 86 82            [24] 2419 	mov	dpl,@r0
      003D04 08               [12] 2420 	inc	r0
      003D05 86 83            [24] 2421 	mov	dph,@r0
      003D07 08               [12] 2422 	inc	r0
      003D08 86 F0            [24] 2423 	mov	b,@r0
      003D0A C0 06            [24] 2424 	push	ar6
      003D0C 12 49 52         [24] 2425 	lcall	_prvUnlockQueue
                           000ADB  2426 	C$queue.c$1390$5_0$259 ==.
                                   2427 ;	src/FreeRTOS/queue.c:1390: ( void ) xTaskResumeAll();
      003D0F 12 09 52         [24] 2428 	lcall	_xTaskResumeAll
      003D12 D0 06            [24] 2429 	pop	ar6
      003D14 02 3B 05         [24] 2430 	ljmp	00128$
      003D17                       2431 00125$:
                           000AE3  2432 	C$queue.c$1397$4_0$260 ==.
                                   2433 ;	src/FreeRTOS/queue.c:1397: prvUnlockQueue( pxQueue );
      003D17 E5 0C            [12] 2434 	mov	a,_bp
      003D19 24 09            [12] 2435 	add	a,#0x09
      003D1B F8               [12] 2436 	mov	r0,a
      003D1C 86 82            [24] 2437 	mov	dpl,@r0
      003D1E 08               [12] 2438 	inc	r0
      003D1F 86 83            [24] 2439 	mov	dph,@r0
      003D21 08               [12] 2440 	inc	r0
      003D22 86 F0            [24] 2441 	mov	b,@r0
      003D24 C0 06            [24] 2442 	push	ar6
      003D26 12 49 52         [24] 2443 	lcall	_prvUnlockQueue
                           000AF5  2444 	C$queue.c$1398$4_0$260 ==.
                                   2445 ;	src/FreeRTOS/queue.c:1398: ( void ) xTaskResumeAll();
      003D29 12 09 52         [24] 2446 	lcall	_xTaskResumeAll
                           000AF8  2447 	C$queue.c$1400$4_0$260 ==.
                                   2448 ;	src/FreeRTOS/queue.c:1400: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      003D2C E5 0C            [12] 2449 	mov	a,_bp
      003D2E 24 09            [12] 2450 	add	a,#0x09
      003D30 F8               [12] 2451 	mov	r0,a
      003D31 86 82            [24] 2452 	mov	dpl,@r0
      003D33 08               [12] 2453 	inc	r0
      003D34 86 83            [24] 2454 	mov	dph,@r0
      003D36 08               [12] 2455 	inc	r0
      003D37 86 F0            [24] 2456 	mov	b,@r0
      003D39 12 4A CC         [24] 2457 	lcall	_prvIsQueueEmpty
      003D3C E5 82            [12] 2458 	mov	a,dpl
      003D3E D0 06            [24] 2459 	pop	ar6
      003D40 70 03            [24] 2460 	jnz	00194$
      003D42 02 3B 05         [24] 2461 	ljmp	00128$
      003D45                       2462 00194$:
                           000B11  2463 	C$queue.c$1403$5_0$261 ==.
                                   2464 ;	src/FreeRTOS/queue.c:1403: return errQUEUE_EMPTY;
      003D45 75 82 00         [24] 2465 	mov	dpl,#0x00
      003D48                       2466 00130$:
                           000B14  2467 	C$queue.c$1411$2_0$239 ==.
                                   2468 ;	src/FreeRTOS/queue.c:1411: }
      003D48 85 0C 81         [24] 2469 	mov	sp,_bp
      003D4B D0 0C            [24] 2470 	pop	_bp
                           000B19  2471 	C$queue.c$1411$2_0$239 ==.
                           000B19  2472 	XG$xQueueReceive$0$0 ==.
      003D4D 22               [24] 2473 	ret
                                   2474 ;------------------------------------------------------------
                                   2475 ;Allocation info for local variables in function 'xQueueSemaphoreTake'
                                   2476 ;------------------------------------------------------------
                                   2477 ;xTicksToWait              Allocated to stack - _bp -4
                                   2478 ;xQueue                    Allocated to registers r4 r5 r7 
                                   2479 ;xEntryTimeSet             Allocated to stack - _bp +11
                                   2480 ;xTimeOut                  Allocated to stack - _bp +5
                                   2481 ;pxQueue                   Allocated to stack - _bp +8
                                   2482 ;uxSemaphoreCount          Allocated to registers r7 
                                   2483 ;sloc0                     Allocated to stack - _bp +1
                                   2484 ;sloc1                     Allocated to stack - _bp +15
                                   2485 ;sloc2                     Allocated to stack - _bp +4
                                   2486 ;------------------------------------------------------------
                           000B1A  2487 	G$xQueueSemaphoreTake$0$0 ==.
                           000B1A  2488 	C$queue.c$1414$2_0$264 ==.
                                   2489 ;	src/FreeRTOS/queue.c:1414: BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait )
                                   2490 ;	-----------------------------------------
                                   2491 ;	 function xQueueSemaphoreTake
                                   2492 ;	-----------------------------------------
      003D4E                       2493 _xQueueSemaphoreTake:
      003D4E C0 0C            [24] 2494 	push	_bp
      003D50 E5 81            [12] 2495 	mov	a,sp
      003D52 F5 0C            [12] 2496 	mov	_bp,a
      003D54 24 0B            [12] 2497 	add	a,#0x0b
      003D56 F5 81            [12] 2498 	mov	sp,a
      003D58 AC 82            [24] 2499 	mov	r4,dpl
      003D5A AD 83            [24] 2500 	mov	r5,dph
      003D5C AF F0            [24] 2501 	mov	r7,b
                           000B2A  2502 	C$queue.c$1416$2_0$264 ==.
                                   2503 ;	src/FreeRTOS/queue.c:1416: BaseType_t xEntryTimeSet = pdFALSE;
      003D5E E5 0C            [12] 2504 	mov	a,_bp
      003D60 24 0B            [12] 2505 	add	a,#0x0b
      003D62 F8               [12] 2506 	mov	r0,a
      003D63 76 00            [12] 2507 	mov	@r0,#0x00
                           000B31  2508 	C$queue.c$1418$2_0$264 ==.
                                   2509 ;	src/FreeRTOS/queue.c:1418: Queue_t * const pxQueue = xQueue;
      003D65 E5 0C            [12] 2510 	mov	a,_bp
      003D67 24 08            [12] 2511 	add	a,#0x08
      003D69 F8               [12] 2512 	mov	r0,a
      003D6A A6 04            [24] 2513 	mov	@r0,ar4
      003D6C 08               [12] 2514 	inc	r0
      003D6D A6 05            [24] 2515 	mov	@r0,ar5
      003D6F 08               [12] 2516 	inc	r0
      003D70 A6 07            [24] 2517 	mov	@r0,ar7
                           000B3E  2518 	C$queue.c$1429$6_0$275 ==.
                                   2519 ;	src/FreeRTOS/queue.c:1429: configASSERT( pxQueue->uxItemSize == 0 );
      003D72 E5 0C            [12] 2520 	mov	a,_bp
      003D74 24 05            [12] 2521 	add	a,#0x05
      003D76 FE               [12] 2522 	mov	r6,a
      003D77 E5 0C            [12] 2523 	mov	a,_bp
      003D79 24 04            [12] 2524 	add	a,#0x04
      003D7B F8               [12] 2525 	mov	r0,a
      003D7C A6 06            [24] 2526 	mov	@r0,ar6
      003D7E A8 0C            [24] 2527 	mov	r0,_bp
      003D80 08               [12] 2528 	inc	r0
      003D81 74 24            [12] 2529 	mov	a,#0x24
      003D83 2C               [12] 2530 	add	a,r4
      003D84 F6               [12] 2531 	mov	@r0,a
      003D85 E4               [12] 2532 	clr	a
      003D86 3D               [12] 2533 	addc	a,r5
      003D87 08               [12] 2534 	inc	r0
      003D88 F6               [12] 2535 	mov	@r0,a
      003D89 08               [12] 2536 	inc	r0
      003D8A A6 07            [24] 2537 	mov	@r0,ar7
      003D8C                       2538 00128$:
                           000B58  2539 	C$queue.c$1444$3_0$266 ==.
                                   2540 ;	src/FreeRTOS/queue.c:1444: taskENTER_CRITICAL();
      003D8C C0 E0            [24] 2541 	push ACC 
      003D8E C0 A8            [24] 2542 	push IE 
                                   2543 ;	assignBit
      003D90 C2 AF            [12] 2544 	clr	_EA
                           000B5E  2545 	C$queue.c$1448$4_0$267 ==.
                                   2546 ;	src/FreeRTOS/queue.c:1448: const UBaseType_t uxSemaphoreCount = pxQueue->uxMessagesWaiting;
      003D92 A8 0C            [24] 2547 	mov	r0,_bp
      003D94 08               [12] 2548 	inc	r0
      003D95 86 82            [24] 2549 	mov	dpl,@r0
      003D97 08               [12] 2550 	inc	r0
      003D98 86 83            [24] 2551 	mov	dph,@r0
      003D9A 08               [12] 2552 	inc	r0
      003D9B 86 F0            [24] 2553 	mov	b,@r0
      003D9D 12 70 5A         [24] 2554 	lcall	__gptrget
                           000B6C  2555 	C$queue.c$1452$4_0$267 ==.
                                   2556 ;	src/FreeRTOS/queue.c:1452: if( uxSemaphoreCount > ( UBaseType_t ) 0 )
      003DA0 FC               [12] 2557 	mov	r4,a
      003DA1 FF               [12] 2558 	mov	r7,a
      003DA2 60 5E            [24] 2559 	jz	00111$
                           000B70  2560 	C$queue.c$1458$5_0$268 ==.
                                   2561 ;	src/FreeRTOS/queue.c:1458: pxQueue->uxMessagesWaiting = uxSemaphoreCount - ( UBaseType_t ) 1;
      003DA4 EF               [12] 2562 	mov	a,r7
      003DA5 14               [12] 2563 	dec	a
      003DA6 FC               [12] 2564 	mov	r4,a
      003DA7 A8 0C            [24] 2565 	mov	r0,_bp
      003DA9 08               [12] 2566 	inc	r0
      003DAA 86 82            [24] 2567 	mov	dpl,@r0
      003DAC 08               [12] 2568 	inc	r0
      003DAD 86 83            [24] 2569 	mov	dph,@r0
      003DAF 08               [12] 2570 	inc	r0
      003DB0 86 F0            [24] 2571 	mov	b,@r0
      003DB2 EC               [12] 2572 	mov	a,r4
      003DB3 12 66 A0         [24] 2573 	lcall	__gptrput
                           000B82  2574 	C$queue.c$1477$5_0$268 ==.
                                   2575 ;	src/FreeRTOS/queue.c:1477: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      003DB6 E5 0C            [12] 2576 	mov	a,_bp
      003DB8 24 08            [12] 2577 	add	a,#0x08
      003DBA F8               [12] 2578 	mov	r0,a
      003DBB 74 0C            [12] 2579 	mov	a,#0x0c
      003DBD 26               [12] 2580 	add	a,@r0
      003DBE FB               [12] 2581 	mov	r3,a
      003DBF E4               [12] 2582 	clr	a
      003DC0 08               [12] 2583 	inc	r0
      003DC1 36               [12] 2584 	addc	a,@r0
      003DC2 FC               [12] 2585 	mov	r4,a
      003DC3 08               [12] 2586 	inc	r0
      003DC4 86 07            [24] 2587 	mov	ar7,@r0
      003DC6 8B 82            [24] 2588 	mov	dpl,r3
      003DC8 8C 83            [24] 2589 	mov	dph,r4
      003DCA 8F F0            [24] 2590 	mov	b,r7
      003DCC 12 70 5A         [24] 2591 	lcall	__gptrget
      003DCF 60 20            [24] 2592 	jz	00104$
                           000B9D  2593 	C$queue.c$1479$6_0$269 ==.
                                   2594 ;	src/FreeRTOS/queue.c:1479: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      003DD1 E5 0C            [12] 2595 	mov	a,_bp
      003DD3 24 08            [12] 2596 	add	a,#0x08
      003DD5 F8               [12] 2597 	mov	r0,a
      003DD6 74 0C            [12] 2598 	mov	a,#0x0c
      003DD8 26               [12] 2599 	add	a,@r0
      003DD9 FB               [12] 2600 	mov	r3,a
      003DDA E4               [12] 2601 	clr	a
      003DDB 08               [12] 2602 	inc	r0
      003DDC 36               [12] 2603 	addc	a,@r0
      003DDD FC               [12] 2604 	mov	r4,a
      003DDE 08               [12] 2605 	inc	r0
      003DDF 86 07            [24] 2606 	mov	ar7,@r0
      003DE1 8B 82            [24] 2607 	mov	dpl,r3
      003DE3 8C 83            [24] 2608 	mov	dph,r4
      003DE5 8F F0            [24] 2609 	mov	b,r7
      003DE7 12 10 57         [24] 2610 	lcall	_xTaskRemoveFromEventList
      003DEA E5 82            [12] 2611 	mov	a,dpl
      003DEC 60 03            [24] 2612 	jz	00104$
                           000BBA  2613 	C$queue.c$1481$7_0$270 ==.
                                   2614 ;	src/FreeRTOS/queue.c:1481: queueYIELD_IF_USING_PREEMPTION();
      003DEE 12 64 B5         [24] 2615 	lcall	_vPortYield
      003DF1                       2616 00104$:
                           000BBD  2617 	C$queue.c$1493$5_0$268 ==.
                                   2618 ;	src/FreeRTOS/queue.c:1493: taskEXIT_CRITICAL();
      003DF1 D0 E0            [24] 2619 	pop ACC 
      003DF3 53 E0 80         [24] 2620 	anl	_ACC,#0x80
      003DF6 E5 E0            [12] 2621 	mov	a,_ACC
      003DF8 42 A8            [12] 2622 	orl	_IE,a
      003DFA D0 E0            [24] 2623 	pop ACC 
                           000BC8  2624 	C$queue.c$1494$5_0$268 ==.
                                   2625 ;	src/FreeRTOS/queue.c:1494: return pdPASS;
      003DFC 75 82 01         [24] 2626 	mov	dpl,#0x01
      003DFF 02 3F 98         [24] 2627 	ljmp	00130$
      003E02                       2628 00111$:
                           000BCE  2629 	C$queue.c$1498$5_0$273 ==.
                                   2630 ;	src/FreeRTOS/queue.c:1498: if( xTicksToWait == ( TickType_t ) 0 )
      003E02 E5 0C            [12] 2631 	mov	a,_bp
      003E04 24 FC            [12] 2632 	add	a,#0xfc
      003E06 F8               [12] 2633 	mov	r0,a
      003E07 E6               [12] 2634 	mov	a,@r0
      003E08 08               [12] 2635 	inc	r0
      003E09 46               [12] 2636 	orl	a,@r0
      003E0A 70 11            [24] 2637 	jnz	00108$
                           000BD8  2638 	C$queue.c$1511$6_0$274 ==.
                                   2639 ;	src/FreeRTOS/queue.c:1511: taskEXIT_CRITICAL();
      003E0C D0 E0            [24] 2640 	pop ACC 
      003E0E 53 E0 80         [24] 2641 	anl	_ACC,#0x80
      003E11 E5 E0            [12] 2642 	mov	a,_ACC
      003E13 42 A8            [12] 2643 	orl	_IE,a
      003E15 D0 E0            [24] 2644 	pop ACC 
                           000BE3  2645 	C$queue.c$1513$6_0$274 ==.
                                   2646 ;	src/FreeRTOS/queue.c:1513: return errQUEUE_EMPTY;
      003E17 75 82 00         [24] 2647 	mov	dpl,#0x00
      003E1A 02 3F 98         [24] 2648 	ljmp	00130$
      003E1D                       2649 00108$:
                           000BE9  2650 	C$queue.c$1515$5_0$273 ==.
                                   2651 ;	src/FreeRTOS/queue.c:1515: else if( xEntryTimeSet == pdFALSE )
      003E1D E5 0C            [12] 2652 	mov	a,_bp
      003E1F 24 0B            [12] 2653 	add	a,#0x0b
      003E21 F8               [12] 2654 	mov	r0,a
      003E22 E6               [12] 2655 	mov	a,@r0
                           000BEF  2656 	C$queue.c$1519$6_0$275 ==.
                                   2657 ;	src/FreeRTOS/queue.c:1519: vTaskInternalSetTimeOutState( &xTimeOut );
      003E23 70 19            [24] 2658 	jnz	00112$
      003E25 8E 03            [24] 2659 	mov	ar3,r6
      003E27 FC               [12] 2660 	mov	r4,a
      003E28 7F 40            [12] 2661 	mov	r7,#0x40
      003E2A 8B 82            [24] 2662 	mov	dpl,r3
      003E2C 8C 83            [24] 2663 	mov	dph,r4
      003E2E 8F F0            [24] 2664 	mov	b,r7
      003E30 C0 06            [24] 2665 	push	ar6
      003E32 12 13 1E         [24] 2666 	lcall	_vTaskInternalSetTimeOutState
      003E35 D0 06            [24] 2667 	pop	ar6
                           000C03  2668 	C$queue.c$1520$6_0$275 ==.
                                   2669 ;	src/FreeRTOS/queue.c:1520: xEntryTimeSet = pdTRUE;
      003E37 E5 0C            [12] 2670 	mov	a,_bp
      003E39 24 0B            [12] 2671 	add	a,#0x0b
      003E3B F8               [12] 2672 	mov	r0,a
      003E3C 76 01            [12] 2673 	mov	@r0,#0x01
      003E3E                       2674 00112$:
                           000C0A  2675 	C$queue.c$1529$3_0$266 ==.
                                   2676 ;	src/FreeRTOS/queue.c:1529: taskEXIT_CRITICAL();
      003E3E D0 E0            [24] 2677 	pop ACC 
      003E40 53 E0 80         [24] 2678 	anl	_ACC,#0x80
      003E43 E5 E0            [12] 2679 	mov	a,_ACC
      003E45 42 A8            [12] 2680 	orl	_IE,a
      003E47 D0 E0            [24] 2681 	pop ACC 
                           000C15  2682 	C$queue.c$1534$3_0$266 ==.
                                   2683 ;	src/FreeRTOS/queue.c:1534: vTaskSuspendAll();
      003E49 C0 06            [24] 2684 	push	ar6
      003E4B 12 09 4A         [24] 2685 	lcall	_vTaskSuspendAll
      003E4E D0 06            [24] 2686 	pop	ar6
                           000C1C  2687 	C$queue.c$1535$3_0$266 ==.
                                   2688 ;	src/FreeRTOS/queue.c:1535: prvLockQueue( pxQueue );
      003E50 C0 E0            [24] 2689 	push ACC 
      003E52 C0 A8            [24] 2690 	push IE 
                                   2691 ;	assignBit
      003E54 C2 AF            [12] 2692 	clr	_EA
      003E56 E5 0C            [12] 2693 	mov	a,_bp
      003E58 24 08            [12] 2694 	add	a,#0x08
      003E5A F8               [12] 2695 	mov	r0,a
      003E5B 74 27            [12] 2696 	mov	a,#0x27
      003E5D 26               [12] 2697 	add	a,@r0
      003E5E FB               [12] 2698 	mov	r3,a
      003E5F E4               [12] 2699 	clr	a
      003E60 08               [12] 2700 	inc	r0
      003E61 36               [12] 2701 	addc	a,@r0
      003E62 FC               [12] 2702 	mov	r4,a
      003E63 08               [12] 2703 	inc	r0
      003E64 86 07            [24] 2704 	mov	ar7,@r0
      003E66 8B 82            [24] 2705 	mov	dpl,r3
      003E68 8C 83            [24] 2706 	mov	dph,r4
      003E6A 8F F0            [24] 2707 	mov	b,r7
      003E6C 12 70 5A         [24] 2708 	lcall	__gptrget
      003E6F FA               [12] 2709 	mov	r2,a
      003E70 BA FF 0A         [24] 2710 	cjne	r2,#0xff,00114$
      003E73 8B 82            [24] 2711 	mov	dpl,r3
      003E75 8C 83            [24] 2712 	mov	dph,r4
      003E77 8F F0            [24] 2713 	mov	b,r7
      003E79 E4               [12] 2714 	clr	a
      003E7A 12 66 A0         [24] 2715 	lcall	__gptrput
      003E7D                       2716 00114$:
      003E7D E5 0C            [12] 2717 	mov	a,_bp
      003E7F 24 08            [12] 2718 	add	a,#0x08
      003E81 F8               [12] 2719 	mov	r0,a
      003E82 74 28            [12] 2720 	mov	a,#0x28
      003E84 26               [12] 2721 	add	a,@r0
      003E85 FB               [12] 2722 	mov	r3,a
      003E86 E4               [12] 2723 	clr	a
      003E87 08               [12] 2724 	inc	r0
      003E88 36               [12] 2725 	addc	a,@r0
      003E89 FC               [12] 2726 	mov	r4,a
      003E8A 08               [12] 2727 	inc	r0
      003E8B 86 07            [24] 2728 	mov	ar7,@r0
      003E8D 8B 82            [24] 2729 	mov	dpl,r3
      003E8F 8C 83            [24] 2730 	mov	dph,r4
      003E91 8F F0            [24] 2731 	mov	b,r7
      003E93 12 70 5A         [24] 2732 	lcall	__gptrget
      003E96 FA               [12] 2733 	mov	r2,a
      003E97 BA FF 0A         [24] 2734 	cjne	r2,#0xff,00116$
      003E9A 8B 82            [24] 2735 	mov	dpl,r3
      003E9C 8C 83            [24] 2736 	mov	dph,r4
      003E9E 8F F0            [24] 2737 	mov	b,r7
      003EA0 E4               [12] 2738 	clr	a
      003EA1 12 66 A0         [24] 2739 	lcall	__gptrput
      003EA4                       2740 00116$:
      003EA4 C0 06            [24] 2741 	push	ar6
      003EA6 D0 E0            [24] 2742 	pop ACC 
      003EA8 53 E0 80         [24] 2743 	anl	_ACC,#0x80
      003EAB E5 E0            [12] 2744 	mov	a,_ACC
      003EAD 42 A8            [12] 2745 	orl	_IE,a
      003EAF D0 E0            [24] 2746 	pop ACC 
                           000C7D  2747 	C$queue.c$1538$3_0$266 ==.
                                   2748 ;	src/FreeRTOS/queue.c:1538: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      003EB1 E5 0C            [12] 2749 	mov	a,_bp
      003EB3 24 FC            [12] 2750 	add	a,#0xfc
      003EB5 FF               [12] 2751 	mov	r7,a
      003EB6 7C 00            [12] 2752 	mov	r4,#0x00
      003EB8 7B 40            [12] 2753 	mov	r3,#0x40
      003EBA E5 0C            [12] 2754 	mov	a,_bp
      003EBC 24 04            [12] 2755 	add	a,#0x04
      003EBE F8               [12] 2756 	mov	r0,a
      003EBF 86 02            [24] 2757 	mov	ar2,@r0
      003EC1 7D 00            [12] 2758 	mov	r5,#0x00
      003EC3 7E 40            [12] 2759 	mov	r6,#0x40
      003EC5 C0 06            [24] 2760 	push	ar6
      003EC7 C0 07            [24] 2761 	push	ar7
      003EC9 C0 04            [24] 2762 	push	ar4
      003ECB C0 03            [24] 2763 	push	ar3
      003ECD 8A 82            [24] 2764 	mov	dpl,r2
      003ECF 8D 83            [24] 2765 	mov	dph,r5
      003ED1 8E F0            [24] 2766 	mov	b,r6
      003ED3 12 13 4E         [24] 2767 	lcall	_xTaskCheckForTimeOut
      003ED6 AF 82            [24] 2768 	mov	r7,dpl
      003ED8 15 81            [12] 2769 	dec	sp
      003EDA 15 81            [12] 2770 	dec	sp
      003EDC 15 81            [12] 2771 	dec	sp
      003EDE D0 06            [24] 2772 	pop	ar6
      003EE0 D0 06            [24] 2773 	pop	ar6
      003EE2 EF               [12] 2774 	mov	a,r7
      003EE3 60 03            [24] 2775 	jz	00191$
      003EE5 02 3F 67         [24] 2776 	ljmp	00125$
      003EE8                       2777 00191$:
                           000CB4  2778 	C$queue.c$1544$4_0$280 ==.
                                   2779 ;	src/FreeRTOS/queue.c:1544: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      003EE8 E5 0C            [12] 2780 	mov	a,_bp
      003EEA 24 08            [12] 2781 	add	a,#0x08
      003EEC F8               [12] 2782 	mov	r0,a
      003EED 86 82            [24] 2783 	mov	dpl,@r0
      003EEF 08               [12] 2784 	inc	r0
      003EF0 86 83            [24] 2785 	mov	dph,@r0
      003EF2 08               [12] 2786 	inc	r0
      003EF3 86 F0            [24] 2787 	mov	b,@r0
      003EF5 C0 06            [24] 2788 	push	ar6
      003EF7 12 4A CC         [24] 2789 	lcall	_prvIsQueueEmpty
      003EFA E5 82            [12] 2790 	mov	a,dpl
      003EFC D0 06            [24] 2791 	pop	ar6
      003EFE 60 4D            [24] 2792 	jz	00120$
                           000CCC  2793 	C$queue.c$1565$5_0$281 ==.
                                   2794 ;	src/FreeRTOS/queue.c:1565: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      003F00 E5 0C            [12] 2795 	mov	a,_bp
      003F02 24 08            [12] 2796 	add	a,#0x08
      003F04 F8               [12] 2797 	mov	r0,a
      003F05 74 18            [12] 2798 	mov	a,#0x18
      003F07 26               [12] 2799 	add	a,@r0
      003F08 FC               [12] 2800 	mov	r4,a
      003F09 E4               [12] 2801 	clr	a
      003F0A 08               [12] 2802 	inc	r0
      003F0B 36               [12] 2803 	addc	a,@r0
      003F0C FD               [12] 2804 	mov	r5,a
      003F0D 08               [12] 2805 	inc	r0
      003F0E 86 07            [24] 2806 	mov	ar7,@r0
      003F10 C0 06            [24] 2807 	push	ar6
      003F12 E5 0C            [12] 2808 	mov	a,_bp
      003F14 24 FC            [12] 2809 	add	a,#0xfc
      003F16 F8               [12] 2810 	mov	r0,a
      003F17 E6               [12] 2811 	mov	a,@r0
      003F18 C0 E0            [24] 2812 	push	acc
      003F1A 08               [12] 2813 	inc	r0
      003F1B E6               [12] 2814 	mov	a,@r0
      003F1C C0 E0            [24] 2815 	push	acc
      003F1E 8C 82            [24] 2816 	mov	dpl,r4
      003F20 8D 83            [24] 2817 	mov	dph,r5
      003F22 8F F0            [24] 2818 	mov	b,r7
      003F24 12 0F 92         [24] 2819 	lcall	_vTaskPlaceOnEventList
      003F27 15 81            [12] 2820 	dec	sp
      003F29 15 81            [12] 2821 	dec	sp
                           000CF7  2822 	C$queue.c$1566$5_0$281 ==.
                                   2823 ;	src/FreeRTOS/queue.c:1566: prvUnlockQueue( pxQueue );
      003F2B E5 0C            [12] 2824 	mov	a,_bp
      003F2D 24 08            [12] 2825 	add	a,#0x08
      003F2F F8               [12] 2826 	mov	r0,a
      003F30 86 82            [24] 2827 	mov	dpl,@r0
      003F32 08               [12] 2828 	inc	r0
      003F33 86 83            [24] 2829 	mov	dph,@r0
      003F35 08               [12] 2830 	inc	r0
      003F36 86 F0            [24] 2831 	mov	b,@r0
      003F38 12 49 52         [24] 2832 	lcall	_prvUnlockQueue
                           000D07  2833 	C$queue.c$1567$5_0$281 ==.
                                   2834 ;	src/FreeRTOS/queue.c:1567: if( xTaskResumeAll() == pdFALSE )
      003F3B 12 09 52         [24] 2835 	lcall	_xTaskResumeAll
      003F3E E5 82            [12] 2836 	mov	a,dpl
      003F40 D0 06            [24] 2837 	pop	ar6
      003F42 60 03            [24] 2838 	jz	00193$
      003F44 02 3D 8C         [24] 2839 	ljmp	00128$
      003F47                       2840 00193$:
                           000D13  2841 	C$queue.c$1569$6_0$282 ==.
                                   2842 ;	src/FreeRTOS/queue.c:1569: portYIELD_WITHIN_API();
      003F47 12 64 B5         [24] 2843 	lcall	_vPortYield
      003F4A 02 3D 8C         [24] 2844 	ljmp	00128$
      003F4D                       2845 00120$:
                           000D19  2846 	C$queue.c$1580$5_0$284 ==.
                                   2847 ;	src/FreeRTOS/queue.c:1580: prvUnlockQueue( pxQueue );
      003F4D E5 0C            [12] 2848 	mov	a,_bp
      003F4F 24 08            [12] 2849 	add	a,#0x08
      003F51 F8               [12] 2850 	mov	r0,a
      003F52 86 82            [24] 2851 	mov	dpl,@r0
      003F54 08               [12] 2852 	inc	r0
      003F55 86 83            [24] 2853 	mov	dph,@r0
      003F57 08               [12] 2854 	inc	r0
      003F58 86 F0            [24] 2855 	mov	b,@r0
      003F5A C0 06            [24] 2856 	push	ar6
      003F5C 12 49 52         [24] 2857 	lcall	_prvUnlockQueue
                           000D2B  2858 	C$queue.c$1581$5_0$284 ==.
                                   2859 ;	src/FreeRTOS/queue.c:1581: ( void ) xTaskResumeAll();
      003F5F 12 09 52         [24] 2860 	lcall	_xTaskResumeAll
      003F62 D0 06            [24] 2861 	pop	ar6
      003F64 02 3D 8C         [24] 2862 	ljmp	00128$
      003F67                       2863 00125$:
                           000D33  2864 	C$queue.c$1587$4_0$285 ==.
                                   2865 ;	src/FreeRTOS/queue.c:1587: prvUnlockQueue( pxQueue );
      003F67 E5 0C            [12] 2866 	mov	a,_bp
      003F69 24 08            [12] 2867 	add	a,#0x08
      003F6B F8               [12] 2868 	mov	r0,a
      003F6C 86 82            [24] 2869 	mov	dpl,@r0
      003F6E 08               [12] 2870 	inc	r0
      003F6F 86 83            [24] 2871 	mov	dph,@r0
      003F71 08               [12] 2872 	inc	r0
      003F72 86 F0            [24] 2873 	mov	b,@r0
      003F74 C0 06            [24] 2874 	push	ar6
      003F76 12 49 52         [24] 2875 	lcall	_prvUnlockQueue
                           000D45  2876 	C$queue.c$1588$4_0$285 ==.
                                   2877 ;	src/FreeRTOS/queue.c:1588: ( void ) xTaskResumeAll();
      003F79 12 09 52         [24] 2878 	lcall	_xTaskResumeAll
                           000D48  2879 	C$queue.c$1594$4_0$285 ==.
                                   2880 ;	src/FreeRTOS/queue.c:1594: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      003F7C E5 0C            [12] 2881 	mov	a,_bp
      003F7E 24 08            [12] 2882 	add	a,#0x08
      003F80 F8               [12] 2883 	mov	r0,a
      003F81 86 82            [24] 2884 	mov	dpl,@r0
      003F83 08               [12] 2885 	inc	r0
      003F84 86 83            [24] 2886 	mov	dph,@r0
      003F86 08               [12] 2887 	inc	r0
      003F87 86 F0            [24] 2888 	mov	b,@r0
      003F89 12 4A CC         [24] 2889 	lcall	_prvIsQueueEmpty
      003F8C E5 82            [12] 2890 	mov	a,dpl
      003F8E D0 06            [24] 2891 	pop	ar6
      003F90 70 03            [24] 2892 	jnz	00194$
      003F92 02 3D 8C         [24] 2893 	ljmp	00128$
      003F95                       2894 00194$:
                           000D61  2895 	C$queue.c$1621$5_0$286 ==.
                                   2896 ;	src/FreeRTOS/queue.c:1621: return errQUEUE_EMPTY;
      003F95 75 82 00         [24] 2897 	mov	dpl,#0x00
      003F98                       2898 00130$:
                           000D64  2899 	C$queue.c$1629$2_0$264 ==.
                                   2900 ;	src/FreeRTOS/queue.c:1629: }
      003F98 85 0C 81         [24] 2901 	mov	sp,_bp
      003F9B D0 0C            [24] 2902 	pop	_bp
                           000D69  2903 	C$queue.c$1629$2_0$264 ==.
                           000D69  2904 	XG$xQueueSemaphoreTake$0$0 ==.
      003F9D 22               [24] 2905 	ret
                                   2906 ;------------------------------------------------------------
                                   2907 ;Allocation info for local variables in function 'xQueuePeek'
                                   2908 ;------------------------------------------------------------
                                   2909 ;pvBuffer                  Allocated to stack - _bp -5
                                   2910 ;xTicksToWait              Allocated to stack - _bp -7
                                   2911 ;xQueue                    Allocated to registers r5 r3 r7 
                                   2912 ;xEntryTimeSet             Allocated to registers r4 
                                   2913 ;xTimeOut                  Allocated to stack - _bp +8
                                   2914 ;pcOriginalReadPosition    Allocated to registers r6 r5 r4 
                                   2915 ;pxQueue                   Allocated to stack - _bp +11
                                   2916 ;uxMessagesWaiting         Allocated to registers 
                                   2917 ;sloc0                     Allocated to stack - _bp +1
                                   2918 ;sloc1                     Allocated to stack - _bp +4
                                   2919 ;sloc2                     Allocated to stack - _bp +5
                                   2920 ;------------------------------------------------------------
                           000D6A  2921 	G$xQueuePeek$0$0 ==.
                           000D6A  2922 	C$queue.c$1632$2_0$289 ==.
                                   2923 ;	src/FreeRTOS/queue.c:1632: BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait )
                                   2924 ;	-----------------------------------------
                                   2925 ;	 function xQueuePeek
                                   2926 ;	-----------------------------------------
      003F9E                       2927 _xQueuePeek:
      003F9E C0 0C            [24] 2928 	push	_bp
      003FA0 E5 81            [12] 2929 	mov	a,sp
      003FA2 F5 0C            [12] 2930 	mov	_bp,a
      003FA4 24 0D            [12] 2931 	add	a,#0x0d
      003FA6 F5 81            [12] 2932 	mov	sp,a
      003FA8 AD 82            [24] 2933 	mov	r5,dpl
      003FAA AB 83            [24] 2934 	mov	r3,dph
      003FAC AF F0            [24] 2935 	mov	r7,b
                           000D7A  2936 	C$queue.c$1634$2_0$289 ==.
                                   2937 ;	src/FreeRTOS/queue.c:1634: BaseType_t xEntryTimeSet = pdFALSE;
      003FAE 7C 00            [12] 2938 	mov	r4,#0x00
                           000D7C  2939 	C$queue.c$1637$2_0$289 ==.
                                   2940 ;	src/FreeRTOS/queue.c:1637: Queue_t * const pxQueue = xQueue;
      003FB0 E5 0C            [12] 2941 	mov	a,_bp
      003FB2 24 0B            [12] 2942 	add	a,#0x0b
      003FB4 F8               [12] 2943 	mov	r0,a
      003FB5 A6 05            [24] 2944 	mov	@r0,ar5
      003FB7 08               [12] 2945 	inc	r0
      003FB8 A6 03            [24] 2946 	mov	@r0,ar3
      003FBA 08               [12] 2947 	inc	r0
      003FBB A6 07            [24] 2948 	mov	@r0,ar7
                           000D89  2949 	C$queue.c$1644$6_0$300 ==.
                                   2950 ;	src/FreeRTOS/queue.c:1644: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
      003FBD E5 0C            [12] 2951 	mov	a,_bp
      003FBF 24 08            [12] 2952 	add	a,#0x08
      003FC1 FE               [12] 2953 	mov	r6,a
      003FC2 E5 0C            [12] 2954 	mov	a,_bp
      003FC4 24 04            [12] 2955 	add	a,#0x04
      003FC6 F8               [12] 2956 	mov	r0,a
      003FC7 A6 06            [24] 2957 	mov	@r0,ar6
      003FC9 A8 0C            [24] 2958 	mov	r0,_bp
      003FCB 08               [12] 2959 	inc	r0
      003FCC 74 24            [12] 2960 	mov	a,#0x24
      003FCE 2D               [12] 2961 	add	a,r5
      003FCF F6               [12] 2962 	mov	@r0,a
      003FD0 E4               [12] 2963 	clr	a
      003FD1 3B               [12] 2964 	addc	a,r3
      003FD2 08               [12] 2965 	inc	r0
      003FD3 F6               [12] 2966 	mov	@r0,a
      003FD4 08               [12] 2967 	inc	r0
      003FD5 A6 07            [24] 2968 	mov	@r0,ar7
      003FD7                       2969 00128$:
                           000DA3  2970 	C$queue.c$1659$3_0$291 ==.
                                   2971 ;	src/FreeRTOS/queue.c:1659: taskENTER_CRITICAL();
      003FD7 C0 E0            [24] 2972 	push ACC 
      003FD9 C0 A8            [24] 2973 	push IE 
                                   2974 ;	assignBit
      003FDB C2 AF            [12] 2975 	clr	_EA
                           000DA9  2976 	C$queue.c$1661$4_0$292 ==.
                                   2977 ;	src/FreeRTOS/queue.c:1661: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      003FDD A8 0C            [24] 2978 	mov	r0,_bp
      003FDF 08               [12] 2979 	inc	r0
      003FE0 86 82            [24] 2980 	mov	dpl,@r0
      003FE2 08               [12] 2981 	inc	r0
      003FE3 86 83            [24] 2982 	mov	dph,@r0
      003FE5 08               [12] 2983 	inc	r0
      003FE6 86 F0            [24] 2984 	mov	b,@r0
      003FE8 12 70 5A         [24] 2985 	lcall	__gptrget
      003FEB 70 03            [24] 2986 	jnz	00182$
      003FED 02 40 C4         [24] 2987 	ljmp	00111$
      003FF0                       2988 00182$:
                           000DBC  2989 	C$queue.c$1665$4_0$292 ==.
                                   2990 ;	src/FreeRTOS/queue.c:1665: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
                           000DBC  2991 	C$queue.c$1670$5_0$293 ==.
                                   2992 ;	src/FreeRTOS/queue.c:1670: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
      003FF0 E5 0C            [12] 2993 	mov	a,_bp
      003FF2 24 0B            [12] 2994 	add	a,#0x0b
      003FF4 F8               [12] 2995 	mov	r0,a
      003FF5 74 06            [12] 2996 	mov	a,#0x06
      003FF7 26               [12] 2997 	add	a,@r0
      003FF8 FA               [12] 2998 	mov	r2,a
      003FF9 E4               [12] 2999 	clr	a
      003FFA 08               [12] 3000 	inc	r0
      003FFB 36               [12] 3001 	addc	a,@r0
      003FFC FB               [12] 3002 	mov	r3,a
      003FFD 08               [12] 3003 	inc	r0
      003FFE 86 07            [24] 3004 	mov	ar7,@r0
      004000 74 03            [12] 3005 	mov	a,#0x03
      004002 2A               [12] 3006 	add	a,r2
      004003 FA               [12] 3007 	mov	r2,a
      004004 E4               [12] 3008 	clr	a
      004005 3B               [12] 3009 	addc	a,r3
      004006 FB               [12] 3010 	mov	r3,a
      004007 8A 82            [24] 3011 	mov	dpl,r2
      004009 8B 83            [24] 3012 	mov	dph,r3
      00400B 8F F0            [24] 3013 	mov	b,r7
      00400D 12 70 5A         [24] 3014 	lcall	__gptrget
      004010 FE               [12] 3015 	mov	r6,a
      004011 A3               [24] 3016 	inc	dptr
      004012 12 70 5A         [24] 3017 	lcall	__gptrget
      004015 FD               [12] 3018 	mov	r5,a
      004016 A3               [24] 3019 	inc	dptr
      004017 12 70 5A         [24] 3020 	lcall	__gptrget
      00401A FC               [12] 3021 	mov	r4,a
                           000DE7  3022 	C$queue.c$1672$5_0$293 ==.
                                   3023 ;	src/FreeRTOS/queue.c:1672: prvCopyDataFromQueue( pxQueue, pvBuffer );
      00401B C0 06            [24] 3024 	push	ar6
      00401D C0 05            [24] 3025 	push	ar5
      00401F C0 04            [24] 3026 	push	ar4
      004021 E5 0C            [12] 3027 	mov	a,_bp
      004023 24 FB            [12] 3028 	add	a,#0xfb
      004025 F8               [12] 3029 	mov	r0,a
      004026 E6               [12] 3030 	mov	a,@r0
      004027 C0 E0            [24] 3031 	push	acc
      004029 08               [12] 3032 	inc	r0
      00402A E6               [12] 3033 	mov	a,@r0
      00402B C0 E0            [24] 3034 	push	acc
      00402D 08               [12] 3035 	inc	r0
      00402E E6               [12] 3036 	mov	a,@r0
      00402F C0 E0            [24] 3037 	push	acc
      004031 E5 0C            [12] 3038 	mov	a,_bp
      004033 24 0B            [12] 3039 	add	a,#0x0b
      004035 F8               [12] 3040 	mov	r0,a
      004036 86 82            [24] 3041 	mov	dpl,@r0
      004038 08               [12] 3042 	inc	r0
      004039 86 83            [24] 3043 	mov	dph,@r0
      00403B 08               [12] 3044 	inc	r0
      00403C 86 F0            [24] 3045 	mov	b,@r0
      00403E 12 48 02         [24] 3046 	lcall	_prvCopyDataFromQueue
      004041 15 81            [12] 3047 	dec	sp
      004043 15 81            [12] 3048 	dec	sp
      004045 15 81            [12] 3049 	dec	sp
      004047 D0 04            [24] 3050 	pop	ar4
      004049 D0 05            [24] 3051 	pop	ar5
      00404B D0 06            [24] 3052 	pop	ar6
                           000E19  3053 	C$queue.c$1676$5_0$293 ==.
                                   3054 ;	src/FreeRTOS/queue.c:1676: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
      00404D E5 0C            [12] 3055 	mov	a,_bp
      00404F 24 0B            [12] 3056 	add	a,#0x0b
      004051 F8               [12] 3057 	mov	r0,a
      004052 74 06            [12] 3058 	mov	a,#0x06
      004054 26               [12] 3059 	add	a,@r0
      004055 FA               [12] 3060 	mov	r2,a
      004056 E4               [12] 3061 	clr	a
      004057 08               [12] 3062 	inc	r0
      004058 36               [12] 3063 	addc	a,@r0
      004059 FB               [12] 3064 	mov	r3,a
      00405A 08               [12] 3065 	inc	r0
      00405B 86 07            [24] 3066 	mov	ar7,@r0
      00405D 74 03            [12] 3067 	mov	a,#0x03
      00405F 2A               [12] 3068 	add	a,r2
      004060 FA               [12] 3069 	mov	r2,a
      004061 E4               [12] 3070 	clr	a
      004062 3B               [12] 3071 	addc	a,r3
      004063 FB               [12] 3072 	mov	r3,a
      004064 8A 82            [24] 3073 	mov	dpl,r2
      004066 8B 83            [24] 3074 	mov	dph,r3
      004068 8F F0            [24] 3075 	mov	b,r7
      00406A EE               [12] 3076 	mov	a,r6
      00406B 12 66 A0         [24] 3077 	lcall	__gptrput
      00406E A3               [24] 3078 	inc	dptr
      00406F ED               [12] 3079 	mov	a,r5
      004070 12 66 A0         [24] 3080 	lcall	__gptrput
      004073 A3               [24] 3081 	inc	dptr
      004074 EC               [12] 3082 	mov	a,r4
      004075 12 66 A0         [24] 3083 	lcall	__gptrput
                           000E44  3084 	C$queue.c$1680$5_0$293 ==.
                                   3085 ;	src/FreeRTOS/queue.c:1680: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      004078 E5 0C            [12] 3086 	mov	a,_bp
      00407A 24 0B            [12] 3087 	add	a,#0x0b
      00407C F8               [12] 3088 	mov	r0,a
      00407D 74 18            [12] 3089 	mov	a,#0x18
      00407F 26               [12] 3090 	add	a,@r0
      004080 FA               [12] 3091 	mov	r2,a
      004081 E4               [12] 3092 	clr	a
      004082 08               [12] 3093 	inc	r0
      004083 36               [12] 3094 	addc	a,@r0
      004084 FB               [12] 3095 	mov	r3,a
      004085 08               [12] 3096 	inc	r0
      004086 86 07            [24] 3097 	mov	ar7,@r0
      004088 8A 82            [24] 3098 	mov	dpl,r2
      00408A 8B 83            [24] 3099 	mov	dph,r3
      00408C 8F F0            [24] 3100 	mov	b,r7
      00408E 12 70 5A         [24] 3101 	lcall	__gptrget
      004091 60 20            [24] 3102 	jz	00104$
                           000E5F  3103 	C$queue.c$1682$6_0$294 ==.
                                   3104 ;	src/FreeRTOS/queue.c:1682: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      004093 E5 0C            [12] 3105 	mov	a,_bp
      004095 24 0B            [12] 3106 	add	a,#0x0b
      004097 F8               [12] 3107 	mov	r0,a
      004098 74 18            [12] 3108 	mov	a,#0x18
      00409A 26               [12] 3109 	add	a,@r0
      00409B FA               [12] 3110 	mov	r2,a
      00409C E4               [12] 3111 	clr	a
      00409D 08               [12] 3112 	inc	r0
      00409E 36               [12] 3113 	addc	a,@r0
      00409F FB               [12] 3114 	mov	r3,a
      0040A0 08               [12] 3115 	inc	r0
      0040A1 86 07            [24] 3116 	mov	ar7,@r0
      0040A3 8A 82            [24] 3117 	mov	dpl,r2
      0040A5 8B 83            [24] 3118 	mov	dph,r3
      0040A7 8F F0            [24] 3119 	mov	b,r7
      0040A9 12 10 57         [24] 3120 	lcall	_xTaskRemoveFromEventList
      0040AC E5 82            [12] 3121 	mov	a,dpl
      0040AE 60 03            [24] 3122 	jz	00104$
                           000E7C  3123 	C$queue.c$1685$7_0$295 ==.
                                   3124 ;	src/FreeRTOS/queue.c:1685: queueYIELD_IF_USING_PREEMPTION();
      0040B0 12 64 B5         [24] 3125 	lcall	_vPortYield
      0040B3                       3126 00104$:
                           000E7F  3127 	C$queue.c$1697$5_0$293 ==.
                                   3128 ;	src/FreeRTOS/queue.c:1697: taskEXIT_CRITICAL();
      0040B3 D0 E0            [24] 3129 	pop ACC 
      0040B5 53 E0 80         [24] 3130 	anl	_ACC,#0x80
      0040B8 E5 E0            [12] 3131 	mov	a,_ACC
      0040BA 42 A8            [12] 3132 	orl	_IE,a
      0040BC D0 E0            [24] 3133 	pop ACC 
                           000E8A  3134 	C$queue.c$1698$5_0$293 ==.
                                   3135 ;	src/FreeRTOS/queue.c:1698: return pdPASS;
      0040BE 75 82 01         [24] 3136 	mov	dpl,#0x01
      0040C1 02 42 7B         [24] 3137 	ljmp	00130$
      0040C4                       3138 00111$:
                           000E90  3139 	C$queue.c$1702$5_0$298 ==.
                                   3140 ;	src/FreeRTOS/queue.c:1702: if( xTicksToWait == ( TickType_t ) 0 )
      0040C4 E5 0C            [12] 3141 	mov	a,_bp
      0040C6 24 F9            [12] 3142 	add	a,#0xf9
      0040C8 F8               [12] 3143 	mov	r0,a
      0040C9 E6               [12] 3144 	mov	a,@r0
      0040CA 08               [12] 3145 	inc	r0
      0040CB 46               [12] 3146 	orl	a,@r0
      0040CC 70 11            [24] 3147 	jnz	00108$
                           000E9A  3148 	C$queue.c$1706$6_0$299 ==.
                                   3149 ;	src/FreeRTOS/queue.c:1706: taskEXIT_CRITICAL();
      0040CE D0 E0            [24] 3150 	pop ACC 
      0040D0 53 E0 80         [24] 3151 	anl	_ACC,#0x80
      0040D3 E5 E0            [12] 3152 	mov	a,_ACC
      0040D5 42 A8            [12] 3153 	orl	_IE,a
      0040D7 D0 E0            [24] 3154 	pop ACC 
                           000EA5  3155 	C$queue.c$1708$6_0$299 ==.
                                   3156 ;	src/FreeRTOS/queue.c:1708: return errQUEUE_EMPTY;
      0040D9 75 82 00         [24] 3157 	mov	dpl,#0x00
      0040DC 02 42 7B         [24] 3158 	ljmp	00130$
      0040DF                       3159 00108$:
                           000EAB  3160 	C$queue.c$1710$5_0$298 ==.
                                   3161 ;	src/FreeRTOS/queue.c:1710: else if( xEntryTimeSet == pdFALSE )
      0040DF EC               [12] 3162 	mov	a,r4
                           000EAC  3163 	C$queue.c$1715$6_0$300 ==.
                                   3164 ;	src/FreeRTOS/queue.c:1715: vTaskInternalSetTimeOutState( &xTimeOut );
      0040E0 70 14            [24] 3165 	jnz	00112$
      0040E2 8E 02            [24] 3166 	mov	ar2,r6
      0040E4 FB               [12] 3167 	mov	r3,a
      0040E5 7F 40            [12] 3168 	mov	r7,#0x40
      0040E7 8A 82            [24] 3169 	mov	dpl,r2
      0040E9 8B 83            [24] 3170 	mov	dph,r3
      0040EB 8F F0            [24] 3171 	mov	b,r7
      0040ED C0 06            [24] 3172 	push	ar6
      0040EF 12 13 1E         [24] 3173 	lcall	_vTaskInternalSetTimeOutState
      0040F2 D0 06            [24] 3174 	pop	ar6
                           000EC0  3175 	C$queue.c$1716$6_0$300 ==.
                                   3176 ;	src/FreeRTOS/queue.c:1716: xEntryTimeSet = pdTRUE;
      0040F4 7C 01            [12] 3177 	mov	r4,#0x01
      0040F6                       3178 00112$:
                           000EC2  3179 	C$queue.c$1725$2_0$289 ==.
                                   3180 ;	src/FreeRTOS/queue.c:1725: taskEXIT_CRITICAL();
      0040F6 D0 E0            [24] 3181 	pop ACC 
      0040F8 53 E0 80         [24] 3182 	anl	_ACC,#0x80
      0040FB E5 E0            [12] 3183 	mov	a,_ACC
      0040FD 42 A8            [12] 3184 	orl	_IE,a
      0040FF D0 E0            [24] 3185 	pop ACC 
                           000ECD  3186 	C$queue.c$1730$3_0$291 ==.
                                   3187 ;	src/FreeRTOS/queue.c:1730: vTaskSuspendAll();
      004101 C0 06            [24] 3188 	push	ar6
      004103 C0 04            [24] 3189 	push	ar4
      004105 12 09 4A         [24] 3190 	lcall	_vTaskSuspendAll
      004108 D0 04            [24] 3191 	pop	ar4
      00410A D0 06            [24] 3192 	pop	ar6
                           000ED8  3193 	C$queue.c$1731$3_0$291 ==.
                                   3194 ;	src/FreeRTOS/queue.c:1731: prvLockQueue( pxQueue );
      00410C C0 E0            [24] 3195 	push ACC 
      00410E C0 A8            [24] 3196 	push IE 
                                   3197 ;	assignBit
      004110 C2 AF            [12] 3198 	clr	_EA
      004112 E5 0C            [12] 3199 	mov	a,_bp
      004114 24 0B            [12] 3200 	add	a,#0x0b
      004116 F8               [12] 3201 	mov	r0,a
      004117 74 27            [12] 3202 	mov	a,#0x27
      004119 26               [12] 3203 	add	a,@r0
      00411A FA               [12] 3204 	mov	r2,a
      00411B E4               [12] 3205 	clr	a
      00411C 08               [12] 3206 	inc	r0
      00411D 36               [12] 3207 	addc	a,@r0
      00411E FB               [12] 3208 	mov	r3,a
      00411F 08               [12] 3209 	inc	r0
      004120 86 07            [24] 3210 	mov	ar7,@r0
      004122 8A 82            [24] 3211 	mov	dpl,r2
      004124 8B 83            [24] 3212 	mov	dph,r3
      004126 8F F0            [24] 3213 	mov	b,r7
      004128 12 70 5A         [24] 3214 	lcall	__gptrget
      00412B FD               [12] 3215 	mov	r5,a
      00412C BD FF 0A         [24] 3216 	cjne	r5,#0xff,00114$
      00412F 8A 82            [24] 3217 	mov	dpl,r2
      004131 8B 83            [24] 3218 	mov	dph,r3
      004133 8F F0            [24] 3219 	mov	b,r7
      004135 E4               [12] 3220 	clr	a
      004136 12 66 A0         [24] 3221 	lcall	__gptrput
      004139                       3222 00114$:
      004139 E5 0C            [12] 3223 	mov	a,_bp
      00413B 24 0B            [12] 3224 	add	a,#0x0b
      00413D F8               [12] 3225 	mov	r0,a
      00413E 74 28            [12] 3226 	mov	a,#0x28
      004140 26               [12] 3227 	add	a,@r0
      004141 FA               [12] 3228 	mov	r2,a
      004142 E4               [12] 3229 	clr	a
      004143 08               [12] 3230 	inc	r0
      004144 36               [12] 3231 	addc	a,@r0
      004145 FB               [12] 3232 	mov	r3,a
      004146 08               [12] 3233 	inc	r0
      004147 86 07            [24] 3234 	mov	ar7,@r0
      004149 8A 82            [24] 3235 	mov	dpl,r2
      00414B 8B 83            [24] 3236 	mov	dph,r3
      00414D 8F F0            [24] 3237 	mov	b,r7
      00414F 12 70 5A         [24] 3238 	lcall	__gptrget
      004152 FD               [12] 3239 	mov	r5,a
      004153 BD FF 0A         [24] 3240 	cjne	r5,#0xff,00116$
      004156 8A 82            [24] 3241 	mov	dpl,r2
      004158 8B 83            [24] 3242 	mov	dph,r3
      00415A 8F F0            [24] 3243 	mov	b,r7
      00415C E4               [12] 3244 	clr	a
      00415D 12 66 A0         [24] 3245 	lcall	__gptrput
      004160                       3246 00116$:
      004160 C0 04            [24] 3247 	push	ar4
      004162 D0 E0            [24] 3248 	pop ACC 
      004164 53 E0 80         [24] 3249 	anl	_ACC,#0x80
      004167 E5 E0            [12] 3250 	mov	a,_ACC
      004169 42 A8            [12] 3251 	orl	_IE,a
      00416B D0 E0            [24] 3252 	pop ACC 
                           000F39  3253 	C$queue.c$1734$3_0$291 ==.
                                   3254 ;	src/FreeRTOS/queue.c:1734: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      00416D E5 0C            [12] 3255 	mov	a,_bp
      00416F 24 F9            [12] 3256 	add	a,#0xf9
      004171 FF               [12] 3257 	mov	r7,a
      004172 E5 0C            [12] 3258 	mov	a,_bp
      004174 24 05            [12] 3259 	add	a,#0x05
      004176 F8               [12] 3260 	mov	r0,a
      004177 A6 07            [24] 3261 	mov	@r0,ar7
      004179 08               [12] 3262 	inc	r0
      00417A 76 00            [12] 3263 	mov	@r0,#0x00
      00417C 08               [12] 3264 	inc	r0
      00417D 76 40            [12] 3265 	mov	@r0,#0x40
      00417F E5 0C            [12] 3266 	mov	a,_bp
      004181 24 04            [12] 3267 	add	a,#0x04
      004183 F8               [12] 3268 	mov	r0,a
      004184 86 04            [24] 3269 	mov	ar4,@r0
      004186 7D 00            [12] 3270 	mov	r5,#0x00
      004188 7F 40            [12] 3271 	mov	r7,#0x40
      00418A C0 06            [24] 3272 	push	ar6
      00418C C0 04            [24] 3273 	push	ar4
      00418E E5 0C            [12] 3274 	mov	a,_bp
      004190 24 05            [12] 3275 	add	a,#0x05
      004192 F8               [12] 3276 	mov	r0,a
      004193 E6               [12] 3277 	mov	a,@r0
      004194 C0 E0            [24] 3278 	push	acc
      004196 08               [12] 3279 	inc	r0
      004197 E6               [12] 3280 	mov	a,@r0
      004198 C0 E0            [24] 3281 	push	acc
      00419A 08               [12] 3282 	inc	r0
      00419B E6               [12] 3283 	mov	a,@r0
      00419C C0 E0            [24] 3284 	push	acc
      00419E 8C 82            [24] 3285 	mov	dpl,r4
      0041A0 8D 83            [24] 3286 	mov	dph,r5
      0041A2 8F F0            [24] 3287 	mov	b,r7
      0041A4 12 13 4E         [24] 3288 	lcall	_xTaskCheckForTimeOut
      0041A7 AF 82            [24] 3289 	mov	r7,dpl
      0041A9 15 81            [12] 3290 	dec	sp
      0041AB 15 81            [12] 3291 	dec	sp
      0041AD 15 81            [12] 3292 	dec	sp
      0041AF D0 04            [24] 3293 	pop	ar4
      0041B1 D0 06            [24] 3294 	pop	ar6
      0041B3 D0 04            [24] 3295 	pop	ar4
      0041B5 EF               [12] 3296 	mov	a,r7
      0041B6 60 03            [24] 3297 	jz	00191$
      0041B8 02 42 46         [24] 3298 	ljmp	00125$
      0041BB                       3299 00191$:
                           000F87  3300 	C$queue.c$1738$4_0$305 ==.
                                   3301 ;	src/FreeRTOS/queue.c:1738: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      0041BB E5 0C            [12] 3302 	mov	a,_bp
      0041BD 24 0B            [12] 3303 	add	a,#0x0b
      0041BF F8               [12] 3304 	mov	r0,a
      0041C0 86 82            [24] 3305 	mov	dpl,@r0
      0041C2 08               [12] 3306 	inc	r0
      0041C3 86 83            [24] 3307 	mov	dph,@r0
      0041C5 08               [12] 3308 	inc	r0
      0041C6 86 F0            [24] 3309 	mov	b,@r0
      0041C8 C0 06            [24] 3310 	push	ar6
      0041CA C0 04            [24] 3311 	push	ar4
      0041CC 12 4A CC         [24] 3312 	lcall	_prvIsQueueEmpty
      0041CF E5 82            [12] 3313 	mov	a,dpl
      0041D1 D0 04            [24] 3314 	pop	ar4
      0041D3 D0 06            [24] 3315 	pop	ar6
      0041D5 60 51            [24] 3316 	jz	00120$
                           000FA3  3317 	C$queue.c$1741$5_0$306 ==.
                                   3318 ;	src/FreeRTOS/queue.c:1741: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      0041D7 E5 0C            [12] 3319 	mov	a,_bp
      0041D9 24 0B            [12] 3320 	add	a,#0x0b
      0041DB F8               [12] 3321 	mov	r0,a
      0041DC 74 18            [12] 3322 	mov	a,#0x18
      0041DE 26               [12] 3323 	add	a,@r0
      0041DF FB               [12] 3324 	mov	r3,a
      0041E0 E4               [12] 3325 	clr	a
      0041E1 08               [12] 3326 	inc	r0
      0041E2 36               [12] 3327 	addc	a,@r0
      0041E3 FD               [12] 3328 	mov	r5,a
      0041E4 08               [12] 3329 	inc	r0
      0041E5 86 07            [24] 3330 	mov	ar7,@r0
      0041E7 C0 06            [24] 3331 	push	ar6
      0041E9 C0 04            [24] 3332 	push	ar4
      0041EB E5 0C            [12] 3333 	mov	a,_bp
      0041ED 24 F9            [12] 3334 	add	a,#0xf9
      0041EF F8               [12] 3335 	mov	r0,a
      0041F0 E6               [12] 3336 	mov	a,@r0
      0041F1 C0 E0            [24] 3337 	push	acc
      0041F3 08               [12] 3338 	inc	r0
      0041F4 E6               [12] 3339 	mov	a,@r0
      0041F5 C0 E0            [24] 3340 	push	acc
      0041F7 8B 82            [24] 3341 	mov	dpl,r3
      0041F9 8D 83            [24] 3342 	mov	dph,r5
      0041FB 8F F0            [24] 3343 	mov	b,r7
      0041FD 12 0F 92         [24] 3344 	lcall	_vTaskPlaceOnEventList
      004200 15 81            [12] 3345 	dec	sp
      004202 15 81            [12] 3346 	dec	sp
                           000FD0  3347 	C$queue.c$1742$5_0$306 ==.
                                   3348 ;	src/FreeRTOS/queue.c:1742: prvUnlockQueue( pxQueue );
      004204 E5 0C            [12] 3349 	mov	a,_bp
      004206 24 0B            [12] 3350 	add	a,#0x0b
      004208 F8               [12] 3351 	mov	r0,a
      004209 86 82            [24] 3352 	mov	dpl,@r0
      00420B 08               [12] 3353 	inc	r0
      00420C 86 83            [24] 3354 	mov	dph,@r0
      00420E 08               [12] 3355 	inc	r0
      00420F 86 F0            [24] 3356 	mov	b,@r0
      004211 12 49 52         [24] 3357 	lcall	_prvUnlockQueue
                           000FE0  3358 	C$queue.c$1743$5_0$306 ==.
                                   3359 ;	src/FreeRTOS/queue.c:1743: if( xTaskResumeAll() == pdFALSE )
      004214 12 09 52         [24] 3360 	lcall	_xTaskResumeAll
      004217 E5 82            [12] 3361 	mov	a,dpl
      004219 D0 04            [24] 3362 	pop	ar4
      00421B D0 06            [24] 3363 	pop	ar6
      00421D 60 03            [24] 3364 	jz	00193$
      00421F 02 3F D7         [24] 3365 	ljmp	00128$
      004222                       3366 00193$:
                           000FEE  3367 	C$queue.c$1745$6_0$307 ==.
                                   3368 ;	src/FreeRTOS/queue.c:1745: portYIELD_WITHIN_API();
      004222 12 64 B5         [24] 3369 	lcall	_vPortYield
      004225 02 3F D7         [24] 3370 	ljmp	00128$
      004228                       3371 00120$:
                           000FF4  3372 	C$queue.c$1756$5_0$309 ==.
                                   3373 ;	src/FreeRTOS/queue.c:1756: prvUnlockQueue( pxQueue );
      004228 E5 0C            [12] 3374 	mov	a,_bp
      00422A 24 0B            [12] 3375 	add	a,#0x0b
      00422C F8               [12] 3376 	mov	r0,a
      00422D 86 82            [24] 3377 	mov	dpl,@r0
      00422F 08               [12] 3378 	inc	r0
      004230 86 83            [24] 3379 	mov	dph,@r0
      004232 08               [12] 3380 	inc	r0
      004233 86 F0            [24] 3381 	mov	b,@r0
      004235 C0 06            [24] 3382 	push	ar6
      004237 C0 04            [24] 3383 	push	ar4
      004239 12 49 52         [24] 3384 	lcall	_prvUnlockQueue
                           001008  3385 	C$queue.c$1757$5_0$309 ==.
                                   3386 ;	src/FreeRTOS/queue.c:1757: ( void ) xTaskResumeAll();
      00423C 12 09 52         [24] 3387 	lcall	_xTaskResumeAll
      00423F D0 04            [24] 3388 	pop	ar4
      004241 D0 06            [24] 3389 	pop	ar6
      004243 02 3F D7         [24] 3390 	ljmp	00128$
      004246                       3391 00125$:
                           001012  3392 	C$queue.c$1764$4_0$310 ==.
                                   3393 ;	src/FreeRTOS/queue.c:1764: prvUnlockQueue( pxQueue );
      004246 E5 0C            [12] 3394 	mov	a,_bp
      004248 24 0B            [12] 3395 	add	a,#0x0b
      00424A F8               [12] 3396 	mov	r0,a
      00424B 86 82            [24] 3397 	mov	dpl,@r0
      00424D 08               [12] 3398 	inc	r0
      00424E 86 83            [24] 3399 	mov	dph,@r0
      004250 08               [12] 3400 	inc	r0
      004251 86 F0            [24] 3401 	mov	b,@r0
      004253 C0 06            [24] 3402 	push	ar6
      004255 C0 04            [24] 3403 	push	ar4
      004257 12 49 52         [24] 3404 	lcall	_prvUnlockQueue
                           001026  3405 	C$queue.c$1765$4_0$310 ==.
                                   3406 ;	src/FreeRTOS/queue.c:1765: ( void ) xTaskResumeAll();
      00425A 12 09 52         [24] 3407 	lcall	_xTaskResumeAll
                           001029  3408 	C$queue.c$1767$4_0$310 ==.
                                   3409 ;	src/FreeRTOS/queue.c:1767: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      00425D E5 0C            [12] 3410 	mov	a,_bp
      00425F 24 0B            [12] 3411 	add	a,#0x0b
      004261 F8               [12] 3412 	mov	r0,a
      004262 86 82            [24] 3413 	mov	dpl,@r0
      004264 08               [12] 3414 	inc	r0
      004265 86 83            [24] 3415 	mov	dph,@r0
      004267 08               [12] 3416 	inc	r0
      004268 86 F0            [24] 3417 	mov	b,@r0
      00426A 12 4A CC         [24] 3418 	lcall	_prvIsQueueEmpty
      00426D E5 82            [12] 3419 	mov	a,dpl
      00426F D0 04            [24] 3420 	pop	ar4
      004271 D0 06            [24] 3421 	pop	ar6
      004273 70 03            [24] 3422 	jnz	00194$
      004275 02 3F D7         [24] 3423 	ljmp	00128$
      004278                       3424 00194$:
                           001044  3425 	C$queue.c$1770$5_0$311 ==.
                                   3426 ;	src/FreeRTOS/queue.c:1770: return errQUEUE_EMPTY;
      004278 75 82 00         [24] 3427 	mov	dpl,#0x00
      00427B                       3428 00130$:
                           001047  3429 	C$queue.c$1778$2_0$289 ==.
                                   3430 ;	src/FreeRTOS/queue.c:1778: }
      00427B 85 0C 81         [24] 3431 	mov	sp,_bp
      00427E D0 0C            [24] 3432 	pop	_bp
                           00104C  3433 	C$queue.c$1778$2_0$289 ==.
                           00104C  3434 	XG$xQueuePeek$0$0 ==.
      004280 22               [24] 3435 	ret
                                   3436 ;------------------------------------------------------------
                                   3437 ;Allocation info for local variables in function 'xQueueReceiveFromISR'
                                   3438 ;------------------------------------------------------------
                                   3439 ;pvBuffer                  Allocated to stack - _bp -5
                                   3440 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
                                   3441 ;xQueue                    Allocated to stack - _bp +1
                                   3442 ;xReturn                   Allocated to registers r7 
                                   3443 ;uxSavedInterruptStatus    Allocated to registers 
                                   3444 ;pxQueue                   Allocated to registers 
                                   3445 ;uxMessagesWaiting         Allocated to registers r4 
                                   3446 ;cRxLock                   Allocated to registers r7 
                                   3447 ;------------------------------------------------------------
                           00104D  3448 	G$xQueueReceiveFromISR$0$0 ==.
                           00104D  3449 	C$queue.c$1781$2_0$314 ==.
                                   3450 ;	src/FreeRTOS/queue.c:1781: BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken )
                                   3451 ;	-----------------------------------------
                                   3452 ;	 function xQueueReceiveFromISR
                                   3453 ;	-----------------------------------------
      004281                       3454 _xQueueReceiveFromISR:
      004281 C0 0C            [24] 3455 	push	_bp
      004283 85 81 0C         [24] 3456 	mov	_bp,sp
      004286 C0 82            [24] 3457 	push	dpl
      004288 C0 83            [24] 3458 	push	dph
      00428A C0 F0            [24] 3459 	push	b
                           001058  3460 	C$queue.c$1808$2_0$315 ==.
                                   3461 ;	src/FreeRTOS/queue.c:1808: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      00428C A8 0C            [24] 3462 	mov	r0,_bp
      00428E 08               [12] 3463 	inc	r0
      00428F 74 24            [12] 3464 	mov	a,#0x24
      004291 26               [12] 3465 	add	a,@r0
      004292 FA               [12] 3466 	mov	r2,a
      004293 E4               [12] 3467 	clr	a
      004294 08               [12] 3468 	inc	r0
      004295 36               [12] 3469 	addc	a,@r0
      004296 FB               [12] 3470 	mov	r3,a
      004297 08               [12] 3471 	inc	r0
      004298 86 04            [24] 3472 	mov	ar4,@r0
      00429A 8A 82            [24] 3473 	mov	dpl,r2
      00429C 8B 83            [24] 3474 	mov	dph,r3
      00429E 8C F0            [24] 3475 	mov	b,r4
      0042A0 12 70 5A         [24] 3476 	lcall	__gptrget
                           00106F  3477 	C$queue.c$1811$2_0$315 ==.
                                   3478 ;	src/FreeRTOS/queue.c:1811: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      0042A3 FA               [12] 3479 	mov	r2,a
      0042A4 FC               [12] 3480 	mov	r4,a
      0042A5 70 03            [24] 3481 	jnz	00137$
      0042A7 02 43 80         [24] 3482 	ljmp	00111$
      0042AA                       3483 00137$:
                           001076  3484 	C$queue.c$1813$3_0$316 ==.
                                   3485 ;	src/FreeRTOS/queue.c:1813: const int8_t cRxLock = pxQueue->cRxLock;
      0042AA A8 0C            [24] 3486 	mov	r0,_bp
      0042AC 08               [12] 3487 	inc	r0
      0042AD 74 27            [12] 3488 	mov	a,#0x27
      0042AF 26               [12] 3489 	add	a,@r0
      0042B0 FA               [12] 3490 	mov	r2,a
      0042B1 E4               [12] 3491 	clr	a
      0042B2 08               [12] 3492 	inc	r0
      0042B3 36               [12] 3493 	addc	a,@r0
      0042B4 FB               [12] 3494 	mov	r3,a
      0042B5 08               [12] 3495 	inc	r0
      0042B6 86 07            [24] 3496 	mov	ar7,@r0
      0042B8 8A 82            [24] 3497 	mov	dpl,r2
      0042BA 8B 83            [24] 3498 	mov	dph,r3
      0042BC 8F F0            [24] 3499 	mov	b,r7
      0042BE 12 70 5A         [24] 3500 	lcall	__gptrget
      0042C1 FF               [12] 3501 	mov	r7,a
                           00108E  3502 	C$queue.c$1817$3_0$316 ==.
                                   3503 ;	src/FreeRTOS/queue.c:1817: prvCopyDataFromQueue( pxQueue, pvBuffer );
      0042C2 C0 07            [24] 3504 	push	ar7
      0042C4 C0 04            [24] 3505 	push	ar4
      0042C6 E5 0C            [12] 3506 	mov	a,_bp
      0042C8 24 FB            [12] 3507 	add	a,#0xfb
      0042CA F8               [12] 3508 	mov	r0,a
      0042CB E6               [12] 3509 	mov	a,@r0
      0042CC C0 E0            [24] 3510 	push	acc
      0042CE 08               [12] 3511 	inc	r0
      0042CF E6               [12] 3512 	mov	a,@r0
      0042D0 C0 E0            [24] 3513 	push	acc
      0042D2 08               [12] 3514 	inc	r0
      0042D3 E6               [12] 3515 	mov	a,@r0
      0042D4 C0 E0            [24] 3516 	push	acc
      0042D6 A8 0C            [24] 3517 	mov	r0,_bp
      0042D8 08               [12] 3518 	inc	r0
      0042D9 86 82            [24] 3519 	mov	dpl,@r0
      0042DB 08               [12] 3520 	inc	r0
      0042DC 86 83            [24] 3521 	mov	dph,@r0
      0042DE 08               [12] 3522 	inc	r0
      0042DF 86 F0            [24] 3523 	mov	b,@r0
      0042E1 12 48 02         [24] 3524 	lcall	_prvCopyDataFromQueue
      0042E4 15 81            [12] 3525 	dec	sp
      0042E6 15 81            [12] 3526 	dec	sp
      0042E8 15 81            [12] 3527 	dec	sp
      0042EA D0 04            [24] 3528 	pop	ar4
      0042EC D0 07            [24] 3529 	pop	ar7
                           0010BA  3530 	C$queue.c$1818$3_0$316 ==.
                                   3531 ;	src/FreeRTOS/queue.c:1818: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
      0042EE A8 0C            [24] 3532 	mov	r0,_bp
      0042F0 08               [12] 3533 	inc	r0
      0042F1 74 24            [12] 3534 	mov	a,#0x24
      0042F3 26               [12] 3535 	add	a,@r0
      0042F4 FB               [12] 3536 	mov	r3,a
      0042F5 E4               [12] 3537 	clr	a
      0042F6 08               [12] 3538 	inc	r0
      0042F7 36               [12] 3539 	addc	a,@r0
      0042F8 FD               [12] 3540 	mov	r5,a
      0042F9 08               [12] 3541 	inc	r0
      0042FA 86 06            [24] 3542 	mov	ar6,@r0
      0042FC 1C               [12] 3543 	dec	r4
      0042FD 8B 82            [24] 3544 	mov	dpl,r3
      0042FF 8D 83            [24] 3545 	mov	dph,r5
      004301 8E F0            [24] 3546 	mov	b,r6
      004303 EC               [12] 3547 	mov	a,r4
      004304 12 66 A0         [24] 3548 	lcall	__gptrput
                           0010D3  3549 	C$queue.c$1824$3_0$316 ==.
                                   3550 ;	src/FreeRTOS/queue.c:1824: if( cRxLock == queueUNLOCKED )
      004307 BF FF 58         [24] 3551 	cjne	r7,#0xff,00108$
                           0010D6  3552 	C$queue.c$1826$4_0$317 ==.
                                   3553 ;	src/FreeRTOS/queue.c:1826: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      00430A A8 0C            [24] 3554 	mov	r0,_bp
      00430C 08               [12] 3555 	inc	r0
      00430D 74 0C            [12] 3556 	mov	a,#0x0c
      00430F 26               [12] 3557 	add	a,@r0
      004310 FC               [12] 3558 	mov	r4,a
      004311 E4               [12] 3559 	clr	a
      004312 08               [12] 3560 	inc	r0
      004313 36               [12] 3561 	addc	a,@r0
      004314 FD               [12] 3562 	mov	r5,a
      004315 08               [12] 3563 	inc	r0
      004316 86 06            [24] 3564 	mov	ar6,@r0
      004318 8C 82            [24] 3565 	mov	dpl,r4
      00431A 8D 83            [24] 3566 	mov	dph,r5
      00431C 8E F0            [24] 3567 	mov	b,r6
      00431E 12 70 5A         [24] 3568 	lcall	__gptrget
      004321 60 58            [24] 3569 	jz	00109$
                           0010EF  3570 	C$queue.c$1828$5_0$318 ==.
                                   3571 ;	src/FreeRTOS/queue.c:1828: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      004323 A8 0C            [24] 3572 	mov	r0,_bp
      004325 08               [12] 3573 	inc	r0
      004326 74 0C            [12] 3574 	mov	a,#0x0c
      004328 26               [12] 3575 	add	a,@r0
      004329 FC               [12] 3576 	mov	r4,a
      00432A E4               [12] 3577 	clr	a
      00432B 08               [12] 3578 	inc	r0
      00432C 36               [12] 3579 	addc	a,@r0
      00432D FD               [12] 3580 	mov	r5,a
      00432E 08               [12] 3581 	inc	r0
      00432F 86 06            [24] 3582 	mov	ar6,@r0
      004331 8C 82            [24] 3583 	mov	dpl,r4
      004333 8D 83            [24] 3584 	mov	dph,r5
      004335 8E F0            [24] 3585 	mov	b,r6
      004337 12 10 57         [24] 3586 	lcall	_xTaskRemoveFromEventList
      00433A E5 82            [12] 3587 	mov	a,dpl
      00433C 60 3D            [24] 3588 	jz	00109$
                           00110A  3589 	C$queue.c$1832$6_0$319 ==.
                                   3590 ;	src/FreeRTOS/queue.c:1832: if( pxHigherPriorityTaskWoken != NULL )
      00433E E5 0C            [12] 3591 	mov	a,_bp
      004340 24 F8            [12] 3592 	add	a,#0xf8
      004342 F8               [12] 3593 	mov	r0,a
      004343 E6               [12] 3594 	mov	a,@r0
      004344 08               [12] 3595 	inc	r0
      004345 46               [12] 3596 	orl	a,@r0
      004346 60 33            [24] 3597 	jz	00109$
                           001114  3598 	C$queue.c$1834$7_0$320 ==.
                                   3599 ;	src/FreeRTOS/queue.c:1834: *pxHigherPriorityTaskWoken = pdTRUE;
      004348 E5 0C            [12] 3600 	mov	a,_bp
      00434A 24 F8            [12] 3601 	add	a,#0xf8
      00434C F8               [12] 3602 	mov	r0,a
      00434D 86 04            [24] 3603 	mov	ar4,@r0
      00434F 08               [12] 3604 	inc	r0
      004350 86 05            [24] 3605 	mov	ar5,@r0
      004352 08               [12] 3606 	inc	r0
      004353 86 06            [24] 3607 	mov	ar6,@r0
      004355 8C 82            [24] 3608 	mov	dpl,r4
      004357 8D 83            [24] 3609 	mov	dph,r5
      004359 8E F0            [24] 3610 	mov	b,r6
      00435B 74 01            [12] 3611 	mov	a,#0x01
      00435D 12 66 A0         [24] 3612 	lcall	__gptrput
      004360 80 19            [24] 3613 	sjmp	00109$
      004362                       3614 00108$:
                           00112E  3615 	C$queue.c$1855$4_0$324 ==.
                                   3616 ;	src/FreeRTOS/queue.c:1855: pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
      004362 A8 0C            [24] 3617 	mov	r0,_bp
      004364 08               [12] 3618 	inc	r0
      004365 74 27            [12] 3619 	mov	a,#0x27
      004367 26               [12] 3620 	add	a,@r0
      004368 FC               [12] 3621 	mov	r4,a
      004369 E4               [12] 3622 	clr	a
      00436A 08               [12] 3623 	inc	r0
      00436B 36               [12] 3624 	addc	a,@r0
      00436C FD               [12] 3625 	mov	r5,a
      00436D 08               [12] 3626 	inc	r0
      00436E 86 06            [24] 3627 	mov	ar6,@r0
      004370 0F               [12] 3628 	inc	r7
      004371 8C 82            [24] 3629 	mov	dpl,r4
      004373 8D 83            [24] 3630 	mov	dph,r5
      004375 8E F0            [24] 3631 	mov	b,r6
      004377 EF               [12] 3632 	mov	a,r7
      004378 12 66 A0         [24] 3633 	lcall	__gptrput
      00437B                       3634 00109$:
                           001147  3635 	C$queue.c$1858$3_0$316 ==.
                                   3636 ;	src/FreeRTOS/queue.c:1858: xReturn = pdPASS;
                           001147  3637 	C$queue.c$1862$3_0$325 ==.
                                   3638 ;	src/FreeRTOS/queue.c:1862: xReturn = pdFAIL;
                           001147  3639 	C$queue.c$1868$1_0$314 ==.
                                   3640 ;	src/FreeRTOS/queue.c:1868: return xReturn;
                           001147  3641 	C$queue.c$1869$1_0$314 ==.
                                   3642 ;	src/FreeRTOS/queue.c:1869: }
      00437B 75 82 01         [24] 3643 	mov	dpl,#0x01
      00437E 80 03            [24] 3644 	sjmp	00112$
      004380                       3645 00111$:
      004380 75 82 00         [24] 3646 	mov	dpl,#0x00
      004383                       3647 00112$:
      004383 85 0C 81         [24] 3648 	mov	sp,_bp
      004386 D0 0C            [24] 3649 	pop	_bp
                           001154  3650 	C$queue.c$1869$1_0$314 ==.
                           001154  3651 	XG$xQueueReceiveFromISR$0$0 ==.
      004388 22               [24] 3652 	ret
                                   3653 ;------------------------------------------------------------
                                   3654 ;Allocation info for local variables in function 'xQueuePeekFromISR'
                                   3655 ;------------------------------------------------------------
                                   3656 ;pvBuffer                  Allocated to stack - _bp -5
                                   3657 ;xQueue                    Allocated to registers r5 r6 r7 
                                   3658 ;xReturn                   Allocated to registers r7 
                                   3659 ;uxSavedInterruptStatus    Allocated to registers 
                                   3660 ;pcOriginalReadPosition    Allocated to registers r2 r3 r4 
                                   3661 ;pxQueue                   Allocated to registers 
                                   3662 ;------------------------------------------------------------
                           001155  3663 	G$xQueuePeekFromISR$0$0 ==.
                           001155  3664 	C$queue.c$1872$1_0$327 ==.
                                   3665 ;	src/FreeRTOS/queue.c:1872: BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,  void * const pvBuffer )
                                   3666 ;	-----------------------------------------
                                   3667 ;	 function xQueuePeekFromISR
                                   3668 ;	-----------------------------------------
      004389                       3669 _xQueuePeekFromISR:
      004389 C0 0C            [24] 3670 	push	_bp
      00438B 85 81 0C         [24] 3671 	mov	_bp,sp
      00438E AD 82            [24] 3672 	mov	r5,dpl
      004390 AE 83            [24] 3673 	mov	r6,dph
      004392 AF F0            [24] 3674 	mov	r7,b
                           001160  3675 	C$queue.c$1902$2_0$328 ==.
                                   3676 ;	src/FreeRTOS/queue.c:1902: if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
      004394 74 24            [12] 3677 	mov	a,#0x24
      004396 2D               [12] 3678 	add	a,r5
      004397 FA               [12] 3679 	mov	r2,a
      004398 E4               [12] 3680 	clr	a
      004399 3E               [12] 3681 	addc	a,r6
      00439A FB               [12] 3682 	mov	r3,a
      00439B 8F 04            [24] 3683 	mov	ar4,r7
      00439D 8A 82            [24] 3684 	mov	dpl,r2
      00439F 8B 83            [24] 3685 	mov	dph,r3
      0043A1 8C F0            [24] 3686 	mov	b,r4
      0043A3 12 70 5A         [24] 3687 	lcall	__gptrget
      0043A6 70 03            [24] 3688 	jnz	00110$
      0043A8 02 44 2C         [24] 3689 	ljmp	00102$
      0043AB                       3690 00110$:
                           001177  3691 	C$queue.c$1908$3_0$329 ==.
                                   3692 ;	src/FreeRTOS/queue.c:1908: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
      0043AB 74 06            [12] 3693 	mov	a,#0x06
      0043AD 2D               [12] 3694 	add	a,r5
      0043AE FA               [12] 3695 	mov	r2,a
      0043AF E4               [12] 3696 	clr	a
      0043B0 3E               [12] 3697 	addc	a,r6
      0043B1 FB               [12] 3698 	mov	r3,a
      0043B2 8F 04            [24] 3699 	mov	ar4,r7
      0043B4 74 03            [12] 3700 	mov	a,#0x03
      0043B6 2A               [12] 3701 	add	a,r2
      0043B7 FA               [12] 3702 	mov	r2,a
      0043B8 E4               [12] 3703 	clr	a
      0043B9 3B               [12] 3704 	addc	a,r3
      0043BA FB               [12] 3705 	mov	r3,a
      0043BB 8A 82            [24] 3706 	mov	dpl,r2
      0043BD 8B 83            [24] 3707 	mov	dph,r3
      0043BF 8C F0            [24] 3708 	mov	b,r4
      0043C1 12 70 5A         [24] 3709 	lcall	__gptrget
      0043C4 FA               [12] 3710 	mov	r2,a
      0043C5 A3               [24] 3711 	inc	dptr
      0043C6 12 70 5A         [24] 3712 	lcall	__gptrget
      0043C9 FB               [12] 3713 	mov	r3,a
      0043CA A3               [24] 3714 	inc	dptr
      0043CB 12 70 5A         [24] 3715 	lcall	__gptrget
      0043CE FC               [12] 3716 	mov	r4,a
                           00119B  3717 	C$queue.c$1909$3_0$329 ==.
                                   3718 ;	src/FreeRTOS/queue.c:1909: prvCopyDataFromQueue( pxQueue, pvBuffer );
      0043CF C0 07            [24] 3719 	push	ar7
      0043D1 C0 06            [24] 3720 	push	ar6
      0043D3 C0 05            [24] 3721 	push	ar5
      0043D5 C0 04            [24] 3722 	push	ar4
      0043D7 C0 03            [24] 3723 	push	ar3
      0043D9 C0 02            [24] 3724 	push	ar2
      0043DB E5 0C            [12] 3725 	mov	a,_bp
      0043DD 24 FB            [12] 3726 	add	a,#0xfb
      0043DF F8               [12] 3727 	mov	r0,a
      0043E0 E6               [12] 3728 	mov	a,@r0
      0043E1 C0 E0            [24] 3729 	push	acc
      0043E3 08               [12] 3730 	inc	r0
      0043E4 E6               [12] 3731 	mov	a,@r0
      0043E5 C0 E0            [24] 3732 	push	acc
      0043E7 08               [12] 3733 	inc	r0
      0043E8 E6               [12] 3734 	mov	a,@r0
      0043E9 C0 E0            [24] 3735 	push	acc
      0043EB 8D 82            [24] 3736 	mov	dpl,r5
      0043ED 8E 83            [24] 3737 	mov	dph,r6
      0043EF 8F F0            [24] 3738 	mov	b,r7
      0043F1 12 48 02         [24] 3739 	lcall	_prvCopyDataFromQueue
      0043F4 15 81            [12] 3740 	dec	sp
      0043F6 15 81            [12] 3741 	dec	sp
      0043F8 15 81            [12] 3742 	dec	sp
      0043FA D0 02            [24] 3743 	pop	ar2
      0043FC D0 03            [24] 3744 	pop	ar3
      0043FE D0 04            [24] 3745 	pop	ar4
      004400 D0 05            [24] 3746 	pop	ar5
      004402 D0 06            [24] 3747 	pop	ar6
      004404 D0 07            [24] 3748 	pop	ar7
                           0011D2  3749 	C$queue.c$1910$3_0$329 ==.
                                   3750 ;	src/FreeRTOS/queue.c:1910: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
      004406 74 06            [12] 3751 	mov	a,#0x06
      004408 2D               [12] 3752 	add	a,r5
      004409 FD               [12] 3753 	mov	r5,a
      00440A E4               [12] 3754 	clr	a
      00440B 3E               [12] 3755 	addc	a,r6
      00440C FE               [12] 3756 	mov	r6,a
      00440D 74 03            [12] 3757 	mov	a,#0x03
      00440F 2D               [12] 3758 	add	a,r5
      004410 FD               [12] 3759 	mov	r5,a
      004411 E4               [12] 3760 	clr	a
      004412 3E               [12] 3761 	addc	a,r6
      004413 FE               [12] 3762 	mov	r6,a
      004414 8D 82            [24] 3763 	mov	dpl,r5
      004416 8E 83            [24] 3764 	mov	dph,r6
      004418 8F F0            [24] 3765 	mov	b,r7
      00441A EA               [12] 3766 	mov	a,r2
      00441B 12 66 A0         [24] 3767 	lcall	__gptrput
      00441E A3               [24] 3768 	inc	dptr
      00441F EB               [12] 3769 	mov	a,r3
      004420 12 66 A0         [24] 3770 	lcall	__gptrput
      004423 A3               [24] 3771 	inc	dptr
      004424 EC               [12] 3772 	mov	a,r4
      004425 12 66 A0         [24] 3773 	lcall	__gptrput
                           0011F4  3774 	C$queue.c$1912$3_0$329 ==.
                                   3775 ;	src/FreeRTOS/queue.c:1912: xReturn = pdPASS;
      004428 7F 01            [12] 3776 	mov	r7,#0x01
      00442A 80 02            [24] 3777 	sjmp	00103$
      00442C                       3778 00102$:
                           0011F8  3779 	C$queue.c$1916$3_0$330 ==.
                                   3780 ;	src/FreeRTOS/queue.c:1916: xReturn = pdFAIL;
      00442C 7F 00            [12] 3781 	mov	r7,#0x00
      00442E                       3782 00103$:
                           0011FA  3783 	C$queue.c$1922$1_0$327 ==.
                                   3784 ;	src/FreeRTOS/queue.c:1922: return xReturn;
      00442E 8F 82            [24] 3785 	mov	dpl,r7
                           0011FC  3786 	C$queue.c$1923$1_0$327 ==.
                                   3787 ;	src/FreeRTOS/queue.c:1923: }
      004430 D0 0C            [24] 3788 	pop	_bp
                           0011FE  3789 	C$queue.c$1923$1_0$327 ==.
                           0011FE  3790 	XG$xQueuePeekFromISR$0$0 ==.
      004432 22               [24] 3791 	ret
                                   3792 ;------------------------------------------------------------
                                   3793 ;Allocation info for local variables in function 'uxQueueMessagesWaiting'
                                   3794 ;------------------------------------------------------------
                                   3795 ;xQueue                    Allocated to registers r5 r6 r7 
                                   3796 ;uxReturn                  Allocated to registers r5 
                                   3797 ;------------------------------------------------------------
                           0011FF  3798 	G$uxQueueMessagesWaiting$0$0 ==.
                           0011FF  3799 	C$queue.c$1926$1_0$332 ==.
                                   3800 ;	src/FreeRTOS/queue.c:1926: UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
                                   3801 ;	-----------------------------------------
                                   3802 ;	 function uxQueueMessagesWaiting
                                   3803 ;	-----------------------------------------
      004433                       3804 _uxQueueMessagesWaiting:
      004433 AD 82            [24] 3805 	mov	r5,dpl
      004435 AE 83            [24] 3806 	mov	r6,dph
      004437 AF F0            [24] 3807 	mov	r7,b
                           001205  3808 	C$queue.c$1932$1_0$332 ==.
                                   3809 ;	src/FreeRTOS/queue.c:1932: taskENTER_CRITICAL();
      004439 C0 E0            [24] 3810 	push ACC 
      00443B C0 A8            [24] 3811 	push IE 
                                   3812 ;	assignBit
      00443D C2 AF            [12] 3813 	clr	_EA
                           00120B  3814 	C$queue.c$1934$2_0$333 ==.
                                   3815 ;	src/FreeRTOS/queue.c:1934: uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
      00443F 74 24            [12] 3816 	mov	a,#0x24
      004441 2D               [12] 3817 	add	a,r5
      004442 FD               [12] 3818 	mov	r5,a
      004443 E4               [12] 3819 	clr	a
      004444 3E               [12] 3820 	addc	a,r6
      004445 FE               [12] 3821 	mov	r6,a
      004446 8D 82            [24] 3822 	mov	dpl,r5
      004448 8E 83            [24] 3823 	mov	dph,r6
      00444A 8F F0            [24] 3824 	mov	b,r7
      00444C 12 70 5A         [24] 3825 	lcall	__gptrget
      00444F FD               [12] 3826 	mov	r5,a
                           00121C  3827 	C$queue.c$1936$1_0$332 ==.
                                   3828 ;	src/FreeRTOS/queue.c:1936: taskEXIT_CRITICAL();
      004450 D0 E0            [24] 3829 	pop ACC 
      004452 53 E0 80         [24] 3830 	anl	_ACC,#0x80
      004455 E5 E0            [12] 3831 	mov	a,_ACC
      004457 42 A8            [12] 3832 	orl	_IE,a
      004459 D0 E0            [24] 3833 	pop ACC 
                           001227  3834 	C$queue.c$1938$1_0$332 ==.
                                   3835 ;	src/FreeRTOS/queue.c:1938: return uxReturn;
      00445B 8D 82            [24] 3836 	mov	dpl,r5
                           001229  3837 	C$queue.c$1939$1_0$332 ==.
                                   3838 ;	src/FreeRTOS/queue.c:1939: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           001229  3839 	C$queue.c$1939$1_0$332 ==.
                           001229  3840 	XG$uxQueueMessagesWaiting$0$0 ==.
      00445D 22               [24] 3841 	ret
                                   3842 ;------------------------------------------------------------
                                   3843 ;Allocation info for local variables in function 'uxQueueSpacesAvailable'
                                   3844 ;------------------------------------------------------------
                                   3845 ;xQueue                    Allocated to registers r5 r6 r7 
                                   3846 ;uxReturn                  Allocated to registers r2 
                                   3847 ;pxQueue                   Allocated to registers 
                                   3848 ;------------------------------------------------------------
                           00122A  3849 	G$uxQueueSpacesAvailable$0$0 ==.
                           00122A  3850 	C$queue.c$1942$1_0$335 ==.
                                   3851 ;	src/FreeRTOS/queue.c:1942: UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
                                   3852 ;	-----------------------------------------
                                   3853 ;	 function uxQueueSpacesAvailable
                                   3854 ;	-----------------------------------------
      00445E                       3855 _uxQueueSpacesAvailable:
      00445E AD 82            [24] 3856 	mov	r5,dpl
      004460 AE 83            [24] 3857 	mov	r6,dph
      004462 AF F0            [24] 3858 	mov	r7,b
                           001230  3859 	C$queue.c$1949$1_0$335 ==.
                                   3860 ;	src/FreeRTOS/queue.c:1949: taskENTER_CRITICAL();
      004464 C0 E0            [24] 3861 	push ACC 
      004466 C0 A8            [24] 3862 	push IE 
                                   3863 ;	assignBit
      004468 C2 AF            [12] 3864 	clr	_EA
                           001236  3865 	C$queue.c$1951$2_0$336 ==.
                                   3866 ;	src/FreeRTOS/queue.c:1951: uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
      00446A 74 25            [12] 3867 	mov	a,#0x25
      00446C 2D               [12] 3868 	add	a,r5
      00446D FA               [12] 3869 	mov	r2,a
      00446E E4               [12] 3870 	clr	a
      00446F 3E               [12] 3871 	addc	a,r6
      004470 FB               [12] 3872 	mov	r3,a
      004471 8F 04            [24] 3873 	mov	ar4,r7
      004473 8A 82            [24] 3874 	mov	dpl,r2
      004475 8B 83            [24] 3875 	mov	dph,r3
      004477 8C F0            [24] 3876 	mov	b,r4
      004479 12 70 5A         [24] 3877 	lcall	__gptrget
      00447C FA               [12] 3878 	mov	r2,a
      00447D 74 24            [12] 3879 	mov	a,#0x24
      00447F 2D               [12] 3880 	add	a,r5
      004480 FD               [12] 3881 	mov	r5,a
      004481 E4               [12] 3882 	clr	a
      004482 3E               [12] 3883 	addc	a,r6
      004483 FE               [12] 3884 	mov	r6,a
      004484 8D 82            [24] 3885 	mov	dpl,r5
      004486 8E 83            [24] 3886 	mov	dph,r6
      004488 8F F0            [24] 3887 	mov	b,r7
      00448A 12 70 5A         [24] 3888 	lcall	__gptrget
      00448D FD               [12] 3889 	mov	r5,a
      00448E EA               [12] 3890 	mov	a,r2
      00448F C3               [12] 3891 	clr	c
      004490 9D               [12] 3892 	subb	a,r5
      004491 FA               [12] 3893 	mov	r2,a
                           00125E  3894 	C$queue.c$1953$1_0$335 ==.
                                   3895 ;	src/FreeRTOS/queue.c:1953: taskEXIT_CRITICAL();
      004492 D0 E0            [24] 3896 	pop ACC 
      004494 53 E0 80         [24] 3897 	anl	_ACC,#0x80
      004497 E5 E0            [12] 3898 	mov	a,_ACC
      004499 42 A8            [12] 3899 	orl	_IE,a
      00449B D0 E0            [24] 3900 	pop ACC 
                           001269  3901 	C$queue.c$1955$1_0$335 ==.
                                   3902 ;	src/FreeRTOS/queue.c:1955: return uxReturn;
      00449D 8A 82            [24] 3903 	mov	dpl,r2
                           00126B  3904 	C$queue.c$1956$1_0$335 ==.
                                   3905 ;	src/FreeRTOS/queue.c:1956: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           00126B  3906 	C$queue.c$1956$1_0$335 ==.
                           00126B  3907 	XG$uxQueueSpacesAvailable$0$0 ==.
      00449F 22               [24] 3908 	ret
                                   3909 ;------------------------------------------------------------
                                   3910 ;Allocation info for local variables in function 'uxQueueMessagesWaitingFromISR'
                                   3911 ;------------------------------------------------------------
                                   3912 ;xQueue                    Allocated to registers r5 r6 r7 
                                   3913 ;uxReturn                  Allocated to registers r5 
                                   3914 ;pxQueue                   Allocated to registers 
                                   3915 ;------------------------------------------------------------
                           00126C  3916 	G$uxQueueMessagesWaitingFromISR$0$0 ==.
                           00126C  3917 	C$queue.c$1959$1_0$338 ==.
                                   3918 ;	src/FreeRTOS/queue.c:1959: UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
                                   3919 ;	-----------------------------------------
                                   3920 ;	 function uxQueueMessagesWaitingFromISR
                                   3921 ;	-----------------------------------------
      0044A0                       3922 _uxQueueMessagesWaitingFromISR:
      0044A0 AD 82            [24] 3923 	mov	r5,dpl
      0044A2 AE 83            [24] 3924 	mov	r6,dph
      0044A4 AF F0            [24] 3925 	mov	r7,b
                           001272  3926 	C$queue.c$1965$1_0$338 ==.
                                   3927 ;	src/FreeRTOS/queue.c:1965: uxReturn = pxQueue->uxMessagesWaiting;
      0044A6 74 24            [12] 3928 	mov	a,#0x24
      0044A8 2D               [12] 3929 	add	a,r5
      0044A9 FD               [12] 3930 	mov	r5,a
      0044AA E4               [12] 3931 	clr	a
      0044AB 3E               [12] 3932 	addc	a,r6
      0044AC FE               [12] 3933 	mov	r6,a
      0044AD 8D 82            [24] 3934 	mov	dpl,r5
      0044AF 8E 83            [24] 3935 	mov	dph,r6
      0044B1 8F F0            [24] 3936 	mov	b,r7
      0044B3 12 70 5A         [24] 3937 	lcall	__gptrget
                           001282  3938 	C$queue.c$1967$1_0$338 ==.
                                   3939 ;	src/FreeRTOS/queue.c:1967: return uxReturn;
                           001282  3940 	C$queue.c$1968$1_0$338 ==.
                                   3941 ;	src/FreeRTOS/queue.c:1968: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           001282  3942 	C$queue.c$1968$1_0$338 ==.
                           001282  3943 	XG$uxQueueMessagesWaitingFromISR$0$0 ==.
      0044B6 F5 82            [12] 3944 	mov	dpl,a
      0044B8 22               [24] 3945 	ret
                                   3946 ;------------------------------------------------------------
                                   3947 ;Allocation info for local variables in function 'vQueueDelete'
                                   3948 ;------------------------------------------------------------
                                   3949 ;xQueue                    Allocated to registers r5 r6 r7 
                                   3950 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   3951 ;------------------------------------------------------------
                           001285  3952 	G$vQueueDelete$0$0 ==.
                           001285  3953 	C$queue.c$1971$1_0$340 ==.
                                   3954 ;	src/FreeRTOS/queue.c:1971: void vQueueDelete( QueueHandle_t xQueue )
                                   3955 ;	-----------------------------------------
                                   3956 ;	 function vQueueDelete
                                   3957 ;	-----------------------------------------
      0044B9                       3958 _vQueueDelete:
                           001285  3959 	C$queue.c$1973$2_0$340 ==.
                                   3960 ;	src/FreeRTOS/queue.c:1973: Queue_t * const pxQueue = xQueue;
                           001285  3961 	C$queue.c$1988$2_0$341 ==.
                                   3962 ;	src/FreeRTOS/queue.c:1988: vPortFree( pxQueue );
      0044B9 12 62 2D         [24] 3963 	lcall	_vPortFree
                           001288  3964 	C$queue.c$2010$2_0$340 ==.
                                   3965 ;	src/FreeRTOS/queue.c:2010: }
                           001288  3966 	C$queue.c$2010$2_0$340 ==.
                           001288  3967 	XG$vQueueDelete$0$0 ==.
      0044BC 22               [24] 3968 	ret
                                   3969 ;------------------------------------------------------------
                                   3970 ;Allocation info for local variables in function 'prvCopyDataToQueue'
                                   3971 ;------------------------------------------------------------
                                   3972 ;pvItemToQueue             Allocated to stack - _bp -5
                                   3973 ;xPosition                 Allocated to stack - _bp -6
                                   3974 ;pxQueue                   Allocated to stack - _bp +1
                                   3975 ;xReturn                   Allocated to registers 
                                   3976 ;uxMessagesWaiting         Allocated to stack - _bp +13
                                   3977 ;sloc0                     Allocated to stack - _bp +4
                                   3978 ;sloc1                     Allocated to stack - _bp +7
                                   3979 ;sloc2                     Allocated to stack - _bp +10
                                   3980 ;------------------------------------------------------------
                           001289  3981 	Fqueue$prvCopyDataToQueue$0$0 ==.
                           001289  3982 	C$queue.c$2070$2_0$343 ==.
                                   3983 ;	src/FreeRTOS/queue.c:2070: static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition )
                                   3984 ;	-----------------------------------------
                                   3985 ;	 function prvCopyDataToQueue
                                   3986 ;	-----------------------------------------
      0044BD                       3987 _prvCopyDataToQueue:
      0044BD C0 0C            [24] 3988 	push	_bp
      0044BF 85 81 0C         [24] 3989 	mov	_bp,sp
      0044C2 C0 82            [24] 3990 	push	dpl
      0044C4 C0 83            [24] 3991 	push	dph
      0044C6 C0 F0            [24] 3992 	push	b
      0044C8 E5 81            [12] 3993 	mov	a,sp
      0044CA 24 0A            [12] 3994 	add	a,#0x0a
      0044CC F5 81            [12] 3995 	mov	sp,a
                           00129A  3996 	C$queue.c$2077$1_0$343 ==.
                                   3997 ;	src/FreeRTOS/queue.c:2077: uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      0044CE A8 0C            [24] 3998 	mov	r0,_bp
      0044D0 08               [12] 3999 	inc	r0
      0044D1 74 24            [12] 4000 	mov	a,#0x24
      0044D3 26               [12] 4001 	add	a,@r0
      0044D4 FA               [12] 4002 	mov	r2,a
      0044D5 E4               [12] 4003 	clr	a
      0044D6 08               [12] 4004 	inc	r0
      0044D7 36               [12] 4005 	addc	a,@r0
      0044D8 FB               [12] 4006 	mov	r3,a
      0044D9 08               [12] 4007 	inc	r0
      0044DA 86 04            [24] 4008 	mov	ar4,@r0
      0044DC 8A 82            [24] 4009 	mov	dpl,r2
      0044DE 8B 83            [24] 4010 	mov	dph,r3
      0044E0 8C F0            [24] 4011 	mov	b,r4
      0044E2 E5 0C            [12] 4012 	mov	a,_bp
      0044E4 24 0D            [12] 4013 	add	a,#0x0d
      0044E6 F8               [12] 4014 	mov	r0,a
      0044E7 12 70 5A         [24] 4015 	lcall	__gptrget
      0044EA F6               [12] 4016 	mov	@r0,a
                           0012B7  4017 	C$queue.c$2079$1_0$343 ==.
                                   4018 ;	src/FreeRTOS/queue.c:2079: if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
      0044EB A8 0C            [24] 4019 	mov	r0,_bp
      0044ED 08               [12] 4020 	inc	r0
      0044EE E5 0C            [12] 4021 	mov	a,_bp
      0044F0 24 04            [12] 4022 	add	a,#0x04
      0044F2 F9               [12] 4023 	mov	r1,a
      0044F3 74 26            [12] 4024 	mov	a,#0x26
      0044F5 26               [12] 4025 	add	a,@r0
      0044F6 F7               [12] 4026 	mov	@r1,a
      0044F7 E4               [12] 4027 	clr	a
      0044F8 08               [12] 4028 	inc	r0
      0044F9 36               [12] 4029 	addc	a,@r0
      0044FA 09               [12] 4030 	inc	r1
      0044FB F7               [12] 4031 	mov	@r1,a
      0044FC 08               [12] 4032 	inc	r0
      0044FD 09               [12] 4033 	inc	r1
      0044FE E6               [12] 4034 	mov	a,@r0
      0044FF F7               [12] 4035 	mov	@r1,a
      004500 E5 0C            [12] 4036 	mov	a,_bp
      004502 24 04            [12] 4037 	add	a,#0x04
      004504 F8               [12] 4038 	mov	r0,a
      004505 86 82            [24] 4039 	mov	dpl,@r0
      004507 08               [12] 4040 	inc	r0
      004508 86 83            [24] 4041 	mov	dph,@r0
      00450A 08               [12] 4042 	inc	r0
      00450B 86 F0            [24] 4043 	mov	b,@r0
      00450D 12 70 5A         [24] 4044 	lcall	__gptrget
      004510 FE               [12] 4045 	mov	r6,a
      004511 70 03            [24] 4046 	jnz	00141$
      004513 02 47 E9         [24] 4047 	ljmp	00114$
      004516                       4048 00141$:
                           0012E2  4049 	C$queue.c$2096$1_0$343 ==.
                                   4050 ;	src/FreeRTOS/queue.c:2096: else if( xPosition == queueSEND_TO_BACK )
      004516 E5 0C            [12] 4051 	mov	a,_bp
      004518 24 FA            [12] 4052 	add	a,#0xfa
      00451A F8               [12] 4053 	mov	r0,a
      00451B E6               [12] 4054 	mov	a,@r0
      00451C 60 03            [24] 4055 	jz	00142$
      00451E 02 46 73         [24] 4056 	ljmp	00110$
      004521                       4057 00142$:
                           0012ED  4058 	C$queue.c$2098$1_0$343 ==.
                                   4059 ;	src/FreeRTOS/queue.c:2098: ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
      004521 C0 02            [24] 4060 	push	ar2
      004523 C0 03            [24] 4061 	push	ar3
      004525 C0 04            [24] 4062 	push	ar4
      004527 8E 04            [24] 4063 	mov	ar4,r6
      004529 7D 00            [12] 4064 	mov	r5,#0x00
      00452B A8 0C            [24] 4065 	mov	r0,_bp
      00452D 08               [12] 4066 	inc	r0
      00452E E5 0C            [12] 4067 	mov	a,_bp
      004530 24 07            [12] 4068 	add	a,#0x07
      004532 F9               [12] 4069 	mov	r1,a
      004533 74 03            [12] 4070 	mov	a,#0x03
      004535 26               [12] 4071 	add	a,@r0
      004536 F7               [12] 4072 	mov	@r1,a
      004537 E4               [12] 4073 	clr	a
      004538 08               [12] 4074 	inc	r0
      004539 36               [12] 4075 	addc	a,@r0
      00453A 09               [12] 4076 	inc	r1
      00453B F7               [12] 4077 	mov	@r1,a
      00453C 08               [12] 4078 	inc	r0
      00453D 09               [12] 4079 	inc	r1
      00453E E6               [12] 4080 	mov	a,@r0
      00453F F7               [12] 4081 	mov	@r1,a
      004540 E5 0C            [12] 4082 	mov	a,_bp
      004542 24 07            [12] 4083 	add	a,#0x07
      004544 F8               [12] 4084 	mov	r0,a
      004545 86 82            [24] 4085 	mov	dpl,@r0
      004547 08               [12] 4086 	inc	r0
      004548 86 83            [24] 4087 	mov	dph,@r0
      00454A 08               [12] 4088 	inc	r0
      00454B 86 F0            [24] 4089 	mov	b,@r0
      00454D 12 70 5A         [24] 4090 	lcall	__gptrget
      004550 FA               [12] 4091 	mov	r2,a
      004551 A3               [24] 4092 	inc	dptr
      004552 12 70 5A         [24] 4093 	lcall	__gptrget
      004555 FB               [12] 4094 	mov	r3,a
      004556 A3               [24] 4095 	inc	dptr
      004557 12 70 5A         [24] 4096 	lcall	__gptrget
      00455A FF               [12] 4097 	mov	r7,a
      00455B C0 04            [24] 4098 	push	ar4
      00455D C0 03            [24] 4099 	push	ar3
      00455F C0 02            [24] 4100 	push	ar2
      004561 C0 04            [24] 4101 	push	ar4
      004563 C0 05            [24] 4102 	push	ar5
      004565 E5 0C            [12] 4103 	mov	a,_bp
      004567 24 FB            [12] 4104 	add	a,#0xfb
      004569 F8               [12] 4105 	mov	r0,a
      00456A E6               [12] 4106 	mov	a,@r0
      00456B C0 E0            [24] 4107 	push	acc
      00456D 08               [12] 4108 	inc	r0
      00456E E6               [12] 4109 	mov	a,@r0
      00456F C0 E0            [24] 4110 	push	acc
      004571 08               [12] 4111 	inc	r0
      004572 E6               [12] 4112 	mov	a,@r0
      004573 C0 E0            [24] 4113 	push	acc
      004575 8A 82            [24] 4114 	mov	dpl,r2
      004577 8B 83            [24] 4115 	mov	dph,r3
      004579 8F F0            [24] 4116 	mov	b,r7
      00457B 12 67 03         [24] 4117 	lcall	_memcpy
      00457E E5 81            [12] 4118 	mov	a,sp
      004580 24 FB            [12] 4119 	add	a,#0xfb
      004582 F5 81            [12] 4120 	mov	sp,a
      004584 D0 02            [24] 4121 	pop	ar2
      004586 D0 03            [24] 4122 	pop	ar3
      004588 D0 04            [24] 4123 	pop	ar4
                           001356  4124 	C$queue.c$2099$2_0$345 ==.
                                   4125 ;	src/FreeRTOS/queue.c:2099: pxQueue->pcWriteTo += pxQueue->uxItemSize; /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
      00458A E5 0C            [12] 4126 	mov	a,_bp
      00458C 24 07            [12] 4127 	add	a,#0x07
      00458E F8               [12] 4128 	mov	r0,a
      00458F 86 82            [24] 4129 	mov	dpl,@r0
      004591 08               [12] 4130 	inc	r0
      004592 86 83            [24] 4131 	mov	dph,@r0
      004594 08               [12] 4132 	inc	r0
      004595 86 F0            [24] 4133 	mov	b,@r0
      004597 12 70 5A         [24] 4134 	lcall	__gptrget
      00459A FC               [12] 4135 	mov	r4,a
      00459B A3               [24] 4136 	inc	dptr
      00459C 12 70 5A         [24] 4137 	lcall	__gptrget
      00459F FD               [12] 4138 	mov	r5,a
      0045A0 A3               [24] 4139 	inc	dptr
      0045A1 12 70 5A         [24] 4140 	lcall	__gptrget
      0045A4 FF               [12] 4141 	mov	r7,a
      0045A5 E5 0C            [12] 4142 	mov	a,_bp
      0045A7 24 04            [12] 4143 	add	a,#0x04
      0045A9 F8               [12] 4144 	mov	r0,a
      0045AA 86 82            [24] 4145 	mov	dpl,@r0
      0045AC 08               [12] 4146 	inc	r0
      0045AD 86 83            [24] 4147 	mov	dph,@r0
      0045AF 08               [12] 4148 	inc	r0
      0045B0 86 F0            [24] 4149 	mov	b,@r0
      0045B2 12 70 5A         [24] 4150 	lcall	__gptrget
      0045B5 FB               [12] 4151 	mov	r3,a
      0045B6 E5 0C            [12] 4152 	mov	a,_bp
      0045B8 24 0A            [12] 4153 	add	a,#0x0a
      0045BA F8               [12] 4154 	mov	r0,a
      0045BB EB               [12] 4155 	mov	a,r3
      0045BC 2C               [12] 4156 	add	a,r4
      0045BD F6               [12] 4157 	mov	@r0,a
      0045BE E4               [12] 4158 	clr	a
      0045BF 3D               [12] 4159 	addc	a,r5
      0045C0 08               [12] 4160 	inc	r0
      0045C1 F6               [12] 4161 	mov	@r0,a
      0045C2 08               [12] 4162 	inc	r0
      0045C3 A6 07            [24] 4163 	mov	@r0,ar7
      0045C5 E5 0C            [12] 4164 	mov	a,_bp
      0045C7 24 07            [12] 4165 	add	a,#0x07
      0045C9 F8               [12] 4166 	mov	r0,a
      0045CA 86 82            [24] 4167 	mov	dpl,@r0
      0045CC 08               [12] 4168 	inc	r0
      0045CD 86 83            [24] 4169 	mov	dph,@r0
      0045CF 08               [12] 4170 	inc	r0
      0045D0 86 F0            [24] 4171 	mov	b,@r0
      0045D2 E5 0C            [12] 4172 	mov	a,_bp
      0045D4 24 0A            [12] 4173 	add	a,#0x0a
      0045D6 F9               [12] 4174 	mov	r1,a
      0045D7 E7               [12] 4175 	mov	a,@r1
      0045D8 12 66 A0         [24] 4176 	lcall	__gptrput
      0045DB A3               [24] 4177 	inc	dptr
      0045DC 09               [12] 4178 	inc	r1
      0045DD E7               [12] 4179 	mov	a,@r1
      0045DE 12 66 A0         [24] 4180 	lcall	__gptrput
      0045E1 A3               [24] 4181 	inc	dptr
      0045E2 09               [12] 4182 	inc	r1
      0045E3 E7               [12] 4183 	mov	a,@r1
      0045E4 12 66 A0         [24] 4184 	lcall	__gptrput
                           0013B3  4185 	C$queue.c$2100$2_0$345 ==.
                                   4186 ;	src/FreeRTOS/queue.c:2100: if( pxQueue->pcWriteTo >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
      0045E7 A8 0C            [24] 4187 	mov	r0,_bp
      0045E9 08               [12] 4188 	inc	r0
      0045EA 74 06            [12] 4189 	mov	a,#0x06
      0045EC 26               [12] 4190 	add	a,@r0
      0045ED FA               [12] 4191 	mov	r2,a
      0045EE E4               [12] 4192 	clr	a
      0045EF 08               [12] 4193 	inc	r0
      0045F0 36               [12] 4194 	addc	a,@r0
      0045F1 FB               [12] 4195 	mov	r3,a
      0045F2 08               [12] 4196 	inc	r0
      0045F3 86 07            [24] 4197 	mov	ar7,@r0
      0045F5 8A 82            [24] 4198 	mov	dpl,r2
      0045F7 8B 83            [24] 4199 	mov	dph,r3
      0045F9 8F F0            [24] 4200 	mov	b,r7
      0045FB 12 70 5A         [24] 4201 	lcall	__gptrget
      0045FE FA               [12] 4202 	mov	r2,a
      0045FF A3               [24] 4203 	inc	dptr
      004600 12 70 5A         [24] 4204 	lcall	__gptrget
      004603 FB               [12] 4205 	mov	r3,a
      004604 A3               [24] 4206 	inc	dptr
      004605 12 70 5A         [24] 4207 	lcall	__gptrget
      004608 FF               [12] 4208 	mov	r7,a
      004609 E5 0C            [12] 4209 	mov	a,_bp
      00460B 24 0A            [12] 4210 	add	a,#0x0a
      00460D F8               [12] 4211 	mov	r0,a
      00460E C0 02            [24] 4212 	push	ar2
      004610 C0 03            [24] 4213 	push	ar3
      004612 C0 07            [24] 4214 	push	ar7
      004614 86 82            [24] 4215 	mov	dpl,@r0
      004616 08               [12] 4216 	inc	r0
      004617 86 83            [24] 4217 	mov	dph,@r0
      004619 08               [12] 4218 	inc	r0
      00461A 86 F0            [24] 4219 	mov	b,@r0
      00461C 12 00 11         [24] 4220 	lcall	___gptr_cmp
      00461F 15 81            [12] 4221 	dec	sp
      004621 15 81            [12] 4222 	dec	sp
      004623 15 81            [12] 4223 	dec	sp
      004625 D0 04            [24] 4224 	pop	ar4
      004627 D0 03            [24] 4225 	pop	ar3
      004629 D0 02            [24] 4226 	pop	ar2
      00462B 50 03            [24] 4227 	jnc	00143$
      00462D 02 47 E9         [24] 4228 	ljmp	00114$
      004630                       4229 00143$:
                           0013FC  4230 	C$queue.c$2102$1_0$343 ==.
                                   4231 ;	src/FreeRTOS/queue.c:2102: pxQueue->pcWriteTo = pxQueue->pcHead;
      004630 C0 02            [24] 4232 	push	ar2
      004632 C0 03            [24] 4233 	push	ar3
      004634 C0 04            [24] 4234 	push	ar4
      004636 A8 0C            [24] 4235 	mov	r0,_bp
      004638 08               [12] 4236 	inc	r0
      004639 86 82            [24] 4237 	mov	dpl,@r0
      00463B 08               [12] 4238 	inc	r0
      00463C 86 83            [24] 4239 	mov	dph,@r0
      00463E 08               [12] 4240 	inc	r0
      00463F 86 F0            [24] 4241 	mov	b,@r0
      004641 12 70 5A         [24] 4242 	lcall	__gptrget
      004644 FC               [12] 4243 	mov	r4,a
      004645 A3               [24] 4244 	inc	dptr
      004646 12 70 5A         [24] 4245 	lcall	__gptrget
      004649 FD               [12] 4246 	mov	r5,a
      00464A A3               [24] 4247 	inc	dptr
      00464B 12 70 5A         [24] 4248 	lcall	__gptrget
      00464E FF               [12] 4249 	mov	r7,a
      00464F E5 0C            [12] 4250 	mov	a,_bp
      004651 24 07            [12] 4251 	add	a,#0x07
      004653 F8               [12] 4252 	mov	r0,a
      004654 86 82            [24] 4253 	mov	dpl,@r0
      004656 08               [12] 4254 	inc	r0
      004657 86 83            [24] 4255 	mov	dph,@r0
      004659 08               [12] 4256 	inc	r0
      00465A 86 F0            [24] 4257 	mov	b,@r0
      00465C EC               [12] 4258 	mov	a,r4
      00465D 12 66 A0         [24] 4259 	lcall	__gptrput
      004660 A3               [24] 4260 	inc	dptr
      004661 ED               [12] 4261 	mov	a,r5
      004662 12 66 A0         [24] 4262 	lcall	__gptrput
      004665 A3               [24] 4263 	inc	dptr
      004666 EF               [12] 4264 	mov	a,r7
      004667 12 66 A0         [24] 4265 	lcall	__gptrput
      00466A D0 04            [24] 4266 	pop	ar4
      00466C D0 03            [24] 4267 	pop	ar3
      00466E D0 02            [24] 4268 	pop	ar2
      004670 02 47 E9         [24] 4269 	ljmp	00114$
      004673                       4270 00110$:
                           00143F  4271 	C$queue.c$2111$1_0$343 ==.
                                   4272 ;	src/FreeRTOS/queue.c:2111: ( void ) memcpy( ( void * ) pxQueue->u.xQueue.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e9087 !e418 MISRA exception as the casts are only redundant for some ports.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes.  Assert checks null pointer only used when length is 0. */
      004673 C0 02            [24] 4273 	push	ar2
      004675 C0 03            [24] 4274 	push	ar3
      004677 C0 04            [24] 4275 	push	ar4
      004679 7F 00            [12] 4276 	mov	r7,#0x00
      00467B A8 0C            [24] 4277 	mov	r0,_bp
      00467D 08               [12] 4278 	inc	r0
      00467E E5 0C            [12] 4279 	mov	a,_bp
      004680 24 0A            [12] 4280 	add	a,#0x0a
      004682 F9               [12] 4281 	mov	r1,a
      004683 74 06            [12] 4282 	mov	a,#0x06
      004685 26               [12] 4283 	add	a,@r0
      004686 F7               [12] 4284 	mov	@r1,a
      004687 E4               [12] 4285 	clr	a
      004688 08               [12] 4286 	inc	r0
      004689 36               [12] 4287 	addc	a,@r0
      00468A 09               [12] 4288 	inc	r1
      00468B F7               [12] 4289 	mov	@r1,a
      00468C 08               [12] 4290 	inc	r0
      00468D 09               [12] 4291 	inc	r1
      00468E E6               [12] 4292 	mov	a,@r0
      00468F F7               [12] 4293 	mov	@r1,a
      004690 E5 0C            [12] 4294 	mov	a,_bp
      004692 24 0A            [12] 4295 	add	a,#0x0a
      004694 F8               [12] 4296 	mov	r0,a
      004695 E5 0C            [12] 4297 	mov	a,_bp
      004697 24 07            [12] 4298 	add	a,#0x07
      004699 F9               [12] 4299 	mov	r1,a
      00469A 74 03            [12] 4300 	mov	a,#0x03
      00469C 26               [12] 4301 	add	a,@r0
      00469D F7               [12] 4302 	mov	@r1,a
      00469E E4               [12] 4303 	clr	a
      00469F 08               [12] 4304 	inc	r0
      0046A0 36               [12] 4305 	addc	a,@r0
      0046A1 09               [12] 4306 	inc	r1
      0046A2 F7               [12] 4307 	mov	@r1,a
      0046A3 08               [12] 4308 	inc	r0
      0046A4 09               [12] 4309 	inc	r1
      0046A5 E6               [12] 4310 	mov	a,@r0
      0046A6 F7               [12] 4311 	mov	@r1,a
      0046A7 E5 0C            [12] 4312 	mov	a,_bp
      0046A9 24 07            [12] 4313 	add	a,#0x07
      0046AB F8               [12] 4314 	mov	r0,a
      0046AC 86 82            [24] 4315 	mov	dpl,@r0
      0046AE 08               [12] 4316 	inc	r0
      0046AF 86 83            [24] 4317 	mov	dph,@r0
      0046B1 08               [12] 4318 	inc	r0
      0046B2 86 F0            [24] 4319 	mov	b,@r0
      0046B4 12 70 5A         [24] 4320 	lcall	__gptrget
      0046B7 FB               [12] 4321 	mov	r3,a
      0046B8 A3               [24] 4322 	inc	dptr
      0046B9 12 70 5A         [24] 4323 	lcall	__gptrget
      0046BC FC               [12] 4324 	mov	r4,a
      0046BD A3               [24] 4325 	inc	dptr
      0046BE 12 70 5A         [24] 4326 	lcall	__gptrget
      0046C1 FD               [12] 4327 	mov	r5,a
      0046C2 C0 04            [24] 4328 	push	ar4
      0046C4 C0 03            [24] 4329 	push	ar3
      0046C6 C0 02            [24] 4330 	push	ar2
      0046C8 C0 06            [24] 4331 	push	ar6
      0046CA C0 07            [24] 4332 	push	ar7
      0046CC E5 0C            [12] 4333 	mov	a,_bp
      0046CE 24 FB            [12] 4334 	add	a,#0xfb
      0046D0 F8               [12] 4335 	mov	r0,a
      0046D1 E6               [12] 4336 	mov	a,@r0
      0046D2 C0 E0            [24] 4337 	push	acc
      0046D4 08               [12] 4338 	inc	r0
      0046D5 E6               [12] 4339 	mov	a,@r0
      0046D6 C0 E0            [24] 4340 	push	acc
      0046D8 08               [12] 4341 	inc	r0
      0046D9 E6               [12] 4342 	mov	a,@r0
      0046DA C0 E0            [24] 4343 	push	acc
      0046DC 8B 82            [24] 4344 	mov	dpl,r3
      0046DE 8C 83            [24] 4345 	mov	dph,r4
      0046E0 8D F0            [24] 4346 	mov	b,r5
      0046E2 12 67 03         [24] 4347 	lcall	_memcpy
      0046E5 E5 81            [12] 4348 	mov	a,sp
      0046E7 24 FB            [12] 4349 	add	a,#0xfb
      0046E9 F5 81            [12] 4350 	mov	sp,a
      0046EB D0 02            [24] 4351 	pop	ar2
      0046ED D0 03            [24] 4352 	pop	ar3
      0046EF D0 04            [24] 4353 	pop	ar4
                           0014BD  4354 	C$queue.c$2112$2_0$348 ==.
                                   4355 ;	src/FreeRTOS/queue.c:2112: pxQueue->u.xQueue.pcReadFrom -= pxQueue->uxItemSize;
      0046F1 E5 0C            [12] 4356 	mov	a,_bp
      0046F3 24 07            [12] 4357 	add	a,#0x07
      0046F5 F8               [12] 4358 	mov	r0,a
      0046F6 86 82            [24] 4359 	mov	dpl,@r0
      0046F8 08               [12] 4360 	inc	r0
      0046F9 86 83            [24] 4361 	mov	dph,@r0
      0046FB 08               [12] 4362 	inc	r0
      0046FC 86 F0            [24] 4363 	mov	b,@r0
      0046FE 12 70 5A         [24] 4364 	lcall	__gptrget
      004701 FD               [12] 4365 	mov	r5,a
      004702 A3               [24] 4366 	inc	dptr
      004703 12 70 5A         [24] 4367 	lcall	__gptrget
      004706 FE               [12] 4368 	mov	r6,a
      004707 A3               [24] 4369 	inc	dptr
      004708 12 70 5A         [24] 4370 	lcall	__gptrget
      00470B FF               [12] 4371 	mov	r7,a
      00470C E5 0C            [12] 4372 	mov	a,_bp
      00470E 24 04            [12] 4373 	add	a,#0x04
      004710 F8               [12] 4374 	mov	r0,a
      004711 86 82            [24] 4375 	mov	dpl,@r0
      004713 08               [12] 4376 	inc	r0
      004714 86 83            [24] 4377 	mov	dph,@r0
      004716 08               [12] 4378 	inc	r0
      004717 86 F0            [24] 4379 	mov	b,@r0
      004719 12 70 5A         [24] 4380 	lcall	__gptrget
      00471C FC               [12] 4381 	mov	r4,a
      00471D 7B 00            [12] 4382 	mov	r3,#0x00
      00471F ED               [12] 4383 	mov	a,r5
      004720 C3               [12] 4384 	clr	c
      004721 9C               [12] 4385 	subb	a,r4
      004722 FD               [12] 4386 	mov	r5,a
      004723 EE               [12] 4387 	mov	a,r6
      004724 9B               [12] 4388 	subb	a,r3
      004725 FE               [12] 4389 	mov	r6,a
      004726 E5 0C            [12] 4390 	mov	a,_bp
      004728 24 07            [12] 4391 	add	a,#0x07
      00472A F8               [12] 4392 	mov	r0,a
      00472B 86 82            [24] 4393 	mov	dpl,@r0
      00472D 08               [12] 4394 	inc	r0
      00472E 86 83            [24] 4395 	mov	dph,@r0
      004730 08               [12] 4396 	inc	r0
      004731 86 F0            [24] 4397 	mov	b,@r0
      004733 ED               [12] 4398 	mov	a,r5
      004734 12 66 A0         [24] 4399 	lcall	__gptrput
      004737 A3               [24] 4400 	inc	dptr
      004738 EE               [12] 4401 	mov	a,r6
      004739 12 66 A0         [24] 4402 	lcall	__gptrput
      00473C A3               [24] 4403 	inc	dptr
      00473D EF               [12] 4404 	mov	a,r7
      00473E 12 66 A0         [24] 4405 	lcall	__gptrput
                           00150D  4406 	C$queue.c$2113$2_0$348 ==.
                                   4407 ;	src/FreeRTOS/queue.c:2113: if( pxQueue->u.xQueue.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
      004741 A8 0C            [24] 4408 	mov	r0,_bp
      004743 08               [12] 4409 	inc	r0
      004744 86 82            [24] 4410 	mov	dpl,@r0
      004746 08               [12] 4411 	inc	r0
      004747 86 83            [24] 4412 	mov	dph,@r0
      004749 08               [12] 4413 	inc	r0
      00474A 86 F0            [24] 4414 	mov	b,@r0
      00474C 12 70 5A         [24] 4415 	lcall	__gptrget
      00474F FA               [12] 4416 	mov	r2,a
      004750 A3               [24] 4417 	inc	dptr
      004751 12 70 5A         [24] 4418 	lcall	__gptrget
      004754 FB               [12] 4419 	mov	r3,a
      004755 A3               [24] 4420 	inc	dptr
      004756 12 70 5A         [24] 4421 	lcall	__gptrget
      004759 FC               [12] 4422 	mov	r4,a
      00475A C0 02            [24] 4423 	push	ar2
      00475C C0 03            [24] 4424 	push	ar3
      00475E C0 04            [24] 4425 	push	ar4
      004760 8D 82            [24] 4426 	mov	dpl,r5
      004762 8E 83            [24] 4427 	mov	dph,r6
      004764 8F F0            [24] 4428 	mov	b,r7
      004766 12 00 11         [24] 4429 	lcall	___gptr_cmp
      004769 15 81            [12] 4430 	dec	sp
      00476B 15 81            [12] 4431 	dec	sp
      00476D 15 81            [12] 4432 	dec	sp
      00476F D0 04            [24] 4433 	pop	ar4
      004771 D0 03            [24] 4434 	pop	ar3
      004773 D0 02            [24] 4435 	pop	ar2
      004775 50 5C            [24] 4436 	jnc	00104$
                           001543  4437 	C$queue.c$2115$1_0$343 ==.
                                   4438 ;	src/FreeRTOS/queue.c:2115: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
      004777 C0 02            [24] 4439 	push	ar2
      004779 C0 03            [24] 4440 	push	ar3
      00477B C0 04            [24] 4441 	push	ar4
      00477D E5 0C            [12] 4442 	mov	a,_bp
      00477F 24 0A            [12] 4443 	add	a,#0x0a
      004781 F8               [12] 4444 	mov	r0,a
      004782 86 82            [24] 4445 	mov	dpl,@r0
      004784 08               [12] 4446 	inc	r0
      004785 86 83            [24] 4447 	mov	dph,@r0
      004787 08               [12] 4448 	inc	r0
      004788 86 F0            [24] 4449 	mov	b,@r0
      00478A 12 70 5A         [24] 4450 	lcall	__gptrget
      00478D FD               [12] 4451 	mov	r5,a
      00478E A3               [24] 4452 	inc	dptr
      00478F 12 70 5A         [24] 4453 	lcall	__gptrget
      004792 FE               [12] 4454 	mov	r6,a
      004793 A3               [24] 4455 	inc	dptr
      004794 12 70 5A         [24] 4456 	lcall	__gptrget
      004797 FF               [12] 4457 	mov	r7,a
      004798 E5 0C            [12] 4458 	mov	a,_bp
      00479A 24 04            [12] 4459 	add	a,#0x04
      00479C F8               [12] 4460 	mov	r0,a
      00479D 86 82            [24] 4461 	mov	dpl,@r0
      00479F 08               [12] 4462 	inc	r0
      0047A0 86 83            [24] 4463 	mov	dph,@r0
      0047A2 08               [12] 4464 	inc	r0
      0047A3 86 F0            [24] 4465 	mov	b,@r0
      0047A5 12 70 5A         [24] 4466 	lcall	__gptrget
      0047A8 FC               [12] 4467 	mov	r4,a
      0047A9 7B 00            [12] 4468 	mov	r3,#0x00
      0047AB ED               [12] 4469 	mov	a,r5
      0047AC C3               [12] 4470 	clr	c
      0047AD 9C               [12] 4471 	subb	a,r4
      0047AE FD               [12] 4472 	mov	r5,a
      0047AF EE               [12] 4473 	mov	a,r6
      0047B0 9B               [12] 4474 	subb	a,r3
      0047B1 FE               [12] 4475 	mov	r6,a
      0047B2 E5 0C            [12] 4476 	mov	a,_bp
      0047B4 24 07            [12] 4477 	add	a,#0x07
      0047B6 F8               [12] 4478 	mov	r0,a
      0047B7 86 82            [24] 4479 	mov	dpl,@r0
      0047B9 08               [12] 4480 	inc	r0
      0047BA 86 83            [24] 4481 	mov	dph,@r0
      0047BC 08               [12] 4482 	inc	r0
      0047BD 86 F0            [24] 4483 	mov	b,@r0
      0047BF ED               [12] 4484 	mov	a,r5
      0047C0 12 66 A0         [24] 4485 	lcall	__gptrput
      0047C3 A3               [24] 4486 	inc	dptr
      0047C4 EE               [12] 4487 	mov	a,r6
      0047C5 12 66 A0         [24] 4488 	lcall	__gptrput
      0047C8 A3               [24] 4489 	inc	dptr
      0047C9 EF               [12] 4490 	mov	a,r7
      0047CA 12 66 A0         [24] 4491 	lcall	__gptrput
                           001599  4492 	C$queue.c$2145$1_0$343 ==.
                                   4493 ;	src/FreeRTOS/queue.c:2145: return xReturn;
      0047CD D0 04            [24] 4494 	pop	ar4
      0047CF D0 03            [24] 4495 	pop	ar3
      0047D1 D0 02            [24] 4496 	pop	ar2
                           00159F  4497 	C$queue.c$2115$2_0$348 ==.
                                   4498 ;	src/FreeRTOS/queue.c:2115: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
      0047D3                       4499 00104$:
                           00159F  4500 	C$queue.c$2122$2_0$348 ==.
                                   4501 ;	src/FreeRTOS/queue.c:2122: if( xPosition == queueOVERWRITE )
      0047D3 E5 0C            [12] 4502 	mov	a,_bp
      0047D5 24 FA            [12] 4503 	add	a,#0xfa
      0047D7 F8               [12] 4504 	mov	r0,a
      0047D8 B6 02 0E         [24] 4505 	cjne	@r0,#0x02,00114$
                           0015A7  4506 	C$queue.c$2124$3_0$351 ==.
                                   4507 ;	src/FreeRTOS/queue.c:2124: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      0047DB E5 0C            [12] 4508 	mov	a,_bp
      0047DD 24 0D            [12] 4509 	add	a,#0x0d
      0047DF F8               [12] 4510 	mov	r0,a
      0047E0 E6               [12] 4511 	mov	a,@r0
      0047E1 60 06            [24] 4512 	jz	00114$
                           0015AF  4513 	C$queue.c$2130$4_0$352 ==.
                                   4514 ;	src/FreeRTOS/queue.c:2130: --uxMessagesWaiting;
      0047E3 E5 0C            [12] 4515 	mov	a,_bp
      0047E5 24 0D            [12] 4516 	add	a,#0x0d
      0047E7 F8               [12] 4517 	mov	r0,a
      0047E8 16               [12] 4518 	dec	@r0
      0047E9                       4519 00114$:
                           0015B5  4520 	C$queue.c$2143$1_0$343 ==.
                                   4521 ;	src/FreeRTOS/queue.c:2143: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
      0047E9 E5 0C            [12] 4522 	mov	a,_bp
      0047EB 24 0D            [12] 4523 	add	a,#0x0d
      0047ED F8               [12] 4524 	mov	r0,a
      0047EE E6               [12] 4525 	mov	a,@r0
      0047EF 04               [12] 4526 	inc	a
      0047F0 8A 82            [24] 4527 	mov	dpl,r2
      0047F2 8B 83            [24] 4528 	mov	dph,r3
      0047F4 8C F0            [24] 4529 	mov	b,r4
      0047F6 12 66 A0         [24] 4530 	lcall	__gptrput
                           0015C5  4531 	C$queue.c$2145$1_0$343 ==.
                                   4532 ;	src/FreeRTOS/queue.c:2145: return xReturn;
      0047F9 75 82 00         [24] 4533 	mov	dpl,#0x00
                           0015C8  4534 	C$queue.c$2146$1_0$343 ==.
                                   4535 ;	src/FreeRTOS/queue.c:2146: }
      0047FC 85 0C 81         [24] 4536 	mov	sp,_bp
      0047FF D0 0C            [24] 4537 	pop	_bp
                           0015CD  4538 	C$queue.c$2146$1_0$343 ==.
                           0015CD  4539 	XFqueue$prvCopyDataToQueue$0$0 ==.
      004801 22               [24] 4540 	ret
                                   4541 ;------------------------------------------------------------
                                   4542 ;Allocation info for local variables in function 'prvCopyDataFromQueue'
                                   4543 ;------------------------------------------------------------
                                   4544 ;pvBuffer                  Allocated to stack - _bp -5
                                   4545 ;pxQueue                   Allocated to stack - _bp +1
                                   4546 ;sloc0                     Allocated to stack - _bp +4
                                   4547 ;sloc1                     Allocated to stack - _bp +5
                                   4548 ;------------------------------------------------------------
                           0015CE  4549 	Fqueue$prvCopyDataFromQueue$0$0 ==.
                           0015CE  4550 	C$queue.c$2149$1_0$356 ==.
                                   4551 ;	src/FreeRTOS/queue.c:2149: static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
                                   4552 ;	-----------------------------------------
                                   4553 ;	 function prvCopyDataFromQueue
                                   4554 ;	-----------------------------------------
      004802                       4555 _prvCopyDataFromQueue:
      004802 C0 0C            [24] 4556 	push	_bp
      004804 85 81 0C         [24] 4557 	mov	_bp,sp
      004807 C0 82            [24] 4558 	push	dpl
      004809 C0 83            [24] 4559 	push	dph
      00480B C0 F0            [24] 4560 	push	b
      00480D E5 81            [12] 4561 	mov	a,sp
      00480F 24 04            [12] 4562 	add	a,#0x04
      004811 F5 81            [12] 4563 	mov	sp,a
                           0015DF  4564 	C$queue.c$2151$1_0$356 ==.
                                   4565 ;	src/FreeRTOS/queue.c:2151: if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
      004813 A8 0C            [24] 4566 	mov	r0,_bp
      004815 08               [12] 4567 	inc	r0
      004816 74 26            [12] 4568 	mov	a,#0x26
      004818 26               [12] 4569 	add	a,@r0
      004819 FA               [12] 4570 	mov	r2,a
      00481A E4               [12] 4571 	clr	a
      00481B 08               [12] 4572 	inc	r0
      00481C 36               [12] 4573 	addc	a,@r0
      00481D FB               [12] 4574 	mov	r3,a
      00481E 08               [12] 4575 	inc	r0
      00481F 86 04            [24] 4576 	mov	ar4,@r0
      004821 8A 82            [24] 4577 	mov	dpl,r2
      004823 8B 83            [24] 4578 	mov	dph,r3
      004825 8C F0            [24] 4579 	mov	b,r4
      004827 E5 0C            [12] 4580 	mov	a,_bp
      004829 24 04            [12] 4581 	add	a,#0x04
      00482B F8               [12] 4582 	mov	r0,a
      00482C 12 70 5A         [24] 4583 	lcall	__gptrget
      00482F F6               [12] 4584 	mov	@r0,a
      004830 E5 0C            [12] 4585 	mov	a,_bp
      004832 24 04            [12] 4586 	add	a,#0x04
      004834 F8               [12] 4587 	mov	r0,a
      004835 E6               [12] 4588 	mov	a,@r0
      004836 70 03            [24] 4589 	jnz	00115$
      004838 02 49 4C         [24] 4590 	ljmp	00105$
      00483B                       4591 00115$:
                           001607  4592 	C$queue.c$2153$1_0$356 ==.
                                   4593 ;	src/FreeRTOS/queue.c:2153: pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize; /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
      00483B C0 02            [24] 4594 	push	ar2
      00483D C0 03            [24] 4595 	push	ar3
      00483F C0 04            [24] 4596 	push	ar4
      004841 A8 0C            [24] 4597 	mov	r0,_bp
      004843 08               [12] 4598 	inc	r0
      004844 74 06            [12] 4599 	mov	a,#0x06
      004846 26               [12] 4600 	add	a,@r0
      004847 FA               [12] 4601 	mov	r2,a
      004848 E4               [12] 4602 	clr	a
      004849 08               [12] 4603 	inc	r0
      00484A 36               [12] 4604 	addc	a,@r0
      00484B FB               [12] 4605 	mov	r3,a
      00484C 08               [12] 4606 	inc	r0
      00484D 86 04            [24] 4607 	mov	ar4,@r0
      00484F E5 0C            [12] 4608 	mov	a,_bp
      004851 24 05            [12] 4609 	add	a,#0x05
      004853 F8               [12] 4610 	mov	r0,a
      004854 74 03            [12] 4611 	mov	a,#0x03
      004856 2A               [12] 4612 	add	a,r2
      004857 F6               [12] 4613 	mov	@r0,a
      004858 E4               [12] 4614 	clr	a
      004859 3B               [12] 4615 	addc	a,r3
      00485A 08               [12] 4616 	inc	r0
      00485B F6               [12] 4617 	mov	@r0,a
      00485C 08               [12] 4618 	inc	r0
      00485D A6 04            [24] 4619 	mov	@r0,ar4
      00485F E5 0C            [12] 4620 	mov	a,_bp
      004861 24 05            [12] 4621 	add	a,#0x05
      004863 F8               [12] 4622 	mov	r0,a
      004864 86 82            [24] 4623 	mov	dpl,@r0
      004866 08               [12] 4624 	inc	r0
      004867 86 83            [24] 4625 	mov	dph,@r0
      004869 08               [12] 4626 	inc	r0
      00486A 86 F0            [24] 4627 	mov	b,@r0
      00486C 12 70 5A         [24] 4628 	lcall	__gptrget
      00486F FD               [12] 4629 	mov	r5,a
      004870 A3               [24] 4630 	inc	dptr
      004871 12 70 5A         [24] 4631 	lcall	__gptrget
      004874 FE               [12] 4632 	mov	r6,a
      004875 A3               [24] 4633 	inc	dptr
      004876 12 70 5A         [24] 4634 	lcall	__gptrget
      004879 FF               [12] 4635 	mov	r7,a
      00487A E5 0C            [12] 4636 	mov	a,_bp
      00487C 24 04            [12] 4637 	add	a,#0x04
      00487E F8               [12] 4638 	mov	r0,a
      00487F E6               [12] 4639 	mov	a,@r0
      004880 2D               [12] 4640 	add	a,r5
      004881 FD               [12] 4641 	mov	r5,a
      004882 E4               [12] 4642 	clr	a
      004883 3E               [12] 4643 	addc	a,r6
      004884 FE               [12] 4644 	mov	r6,a
      004885 E5 0C            [12] 4645 	mov	a,_bp
      004887 24 05            [12] 4646 	add	a,#0x05
      004889 F8               [12] 4647 	mov	r0,a
      00488A 86 82            [24] 4648 	mov	dpl,@r0
      00488C 08               [12] 4649 	inc	r0
      00488D 86 83            [24] 4650 	mov	dph,@r0
      00488F 08               [12] 4651 	inc	r0
      004890 86 F0            [24] 4652 	mov	b,@r0
      004892 ED               [12] 4653 	mov	a,r5
      004893 12 66 A0         [24] 4654 	lcall	__gptrput
      004896 A3               [24] 4655 	inc	dptr
      004897 EE               [12] 4656 	mov	a,r6
      004898 12 66 A0         [24] 4657 	lcall	__gptrput
      00489B A3               [24] 4658 	inc	dptr
      00489C EF               [12] 4659 	mov	a,r7
      00489D 12 66 A0         [24] 4660 	lcall	__gptrput
                           00166C  4661 	C$queue.c$2154$2_0$357 ==.
                                   4662 ;	src/FreeRTOS/queue.c:2154: if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
      0048A0 8A 82            [24] 4663 	mov	dpl,r2
      0048A2 8B 83            [24] 4664 	mov	dph,r3
      0048A4 8C F0            [24] 4665 	mov	b,r4
      0048A6 12 70 5A         [24] 4666 	lcall	__gptrget
      0048A9 FA               [12] 4667 	mov	r2,a
      0048AA A3               [24] 4668 	inc	dptr
      0048AB 12 70 5A         [24] 4669 	lcall	__gptrget
      0048AE FB               [12] 4670 	mov	r3,a
      0048AF A3               [24] 4671 	inc	dptr
      0048B0 12 70 5A         [24] 4672 	lcall	__gptrget
      0048B3 FC               [12] 4673 	mov	r4,a
      0048B4 C0 02            [24] 4674 	push	ar2
      0048B6 C0 03            [24] 4675 	push	ar3
      0048B8 C0 04            [24] 4676 	push	ar4
      0048BA 8D 82            [24] 4677 	mov	dpl,r5
      0048BC 8E 83            [24] 4678 	mov	dph,r6
      0048BE 8F F0            [24] 4679 	mov	b,r7
      0048C0 12 00 11         [24] 4680 	lcall	___gptr_cmp
      0048C3 15 81            [12] 4681 	dec	sp
      0048C5 15 81            [12] 4682 	dec	sp
      0048C7 15 81            [12] 4683 	dec	sp
      0048C9 D0 04            [24] 4684 	pop	ar4
      0048CB D0 03            [24] 4685 	pop	ar3
      0048CD D0 02            [24] 4686 	pop	ar2
      0048CF 40 34            [24] 4687 	jc	00102$
                           00169D  4688 	C$queue.c$2156$3_0$358 ==.
                                   4689 ;	src/FreeRTOS/queue.c:2156: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
      0048D1 A8 0C            [24] 4690 	mov	r0,_bp
      0048D3 08               [12] 4691 	inc	r0
      0048D4 86 82            [24] 4692 	mov	dpl,@r0
      0048D6 08               [12] 4693 	inc	r0
      0048D7 86 83            [24] 4694 	mov	dph,@r0
      0048D9 08               [12] 4695 	inc	r0
      0048DA 86 F0            [24] 4696 	mov	b,@r0
      0048DC 12 70 5A         [24] 4697 	lcall	__gptrget
      0048DF FD               [12] 4698 	mov	r5,a
      0048E0 A3               [24] 4699 	inc	dptr
      0048E1 12 70 5A         [24] 4700 	lcall	__gptrget
      0048E4 FE               [12] 4701 	mov	r6,a
      0048E5 A3               [24] 4702 	inc	dptr
      0048E6 12 70 5A         [24] 4703 	lcall	__gptrget
      0048E9 FF               [12] 4704 	mov	r7,a
      0048EA E5 0C            [12] 4705 	mov	a,_bp
      0048EC 24 05            [12] 4706 	add	a,#0x05
      0048EE F8               [12] 4707 	mov	r0,a
      0048EF 86 82            [24] 4708 	mov	dpl,@r0
      0048F1 08               [12] 4709 	inc	r0
      0048F2 86 83            [24] 4710 	mov	dph,@r0
      0048F4 08               [12] 4711 	inc	r0
      0048F5 86 F0            [24] 4712 	mov	b,@r0
      0048F7 ED               [12] 4713 	mov	a,r5
      0048F8 12 66 A0         [24] 4714 	lcall	__gptrput
      0048FB A3               [24] 4715 	inc	dptr
      0048FC EE               [12] 4716 	mov	a,r6
      0048FD 12 66 A0         [24] 4717 	lcall	__gptrput
      004900 A3               [24] 4718 	inc	dptr
      004901 EF               [12] 4719 	mov	a,r7
      004902 12 66 A0         [24] 4720 	lcall	__gptrput
      004905                       4721 00102$:
                           0016D1  4722 	C$queue.c$2162$2_0$357 ==.
                                   4723 ;	src/FreeRTOS/queue.c:2162: ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
      004905 8A 82            [24] 4724 	mov	dpl,r2
      004907 8B 83            [24] 4725 	mov	dph,r3
      004909 8C F0            [24] 4726 	mov	b,r4
      00490B 12 70 5A         [24] 4727 	lcall	__gptrget
      00490E FA               [12] 4728 	mov	r2,a
      00490F 7F 00            [12] 4729 	mov	r7,#0x00
      004911 E5 0C            [12] 4730 	mov	a,_bp
      004913 24 05            [12] 4731 	add	a,#0x05
      004915 F8               [12] 4732 	mov	r0,a
      004916 86 82            [24] 4733 	mov	dpl,@r0
      004918 08               [12] 4734 	inc	r0
      004919 86 83            [24] 4735 	mov	dph,@r0
      00491B 08               [12] 4736 	inc	r0
      00491C 86 F0            [24] 4737 	mov	b,@r0
      00491E 12 70 5A         [24] 4738 	lcall	__gptrget
      004921 FC               [12] 4739 	mov	r4,a
      004922 A3               [24] 4740 	inc	dptr
      004923 12 70 5A         [24] 4741 	lcall	__gptrget
      004926 FD               [12] 4742 	mov	r5,a
      004927 A3               [24] 4743 	inc	dptr
      004928 12 70 5A         [24] 4744 	lcall	__gptrget
      00492B FE               [12] 4745 	mov	r6,a
      00492C C0 02            [24] 4746 	push	ar2
      00492E C0 07            [24] 4747 	push	ar7
      004930 C0 04            [24] 4748 	push	ar4
      004932 C0 05            [24] 4749 	push	ar5
      004934 C0 06            [24] 4750 	push	ar6
      004936 E5 0C            [12] 4751 	mov	a,_bp
      004938 24 FB            [12] 4752 	add	a,#0xfb
      00493A F8               [12] 4753 	mov	r0,a
      00493B 86 82            [24] 4754 	mov	dpl,@r0
      00493D 08               [12] 4755 	inc	r0
      00493E 86 83            [24] 4756 	mov	dph,@r0
      004940 08               [12] 4757 	inc	r0
      004941 86 F0            [24] 4758 	mov	b,@r0
      004943 12 67 03         [24] 4759 	lcall	_memcpy
      004946 E5 81            [12] 4760 	mov	a,sp
      004948 24 FB            [12] 4761 	add	a,#0xfb
      00494A F5 81            [12] 4762 	mov	sp,a
      00494C                       4763 00105$:
                           001718  4764 	C$queue.c$2164$1_0$356 ==.
                                   4765 ;	src/FreeRTOS/queue.c:2164: }
      00494C 85 0C 81         [24] 4766 	mov	sp,_bp
      00494F D0 0C            [24] 4767 	pop	_bp
                           00171D  4768 	C$queue.c$2164$1_0$356 ==.
                           00171D  4769 	XFqueue$prvCopyDataFromQueue$0$0 ==.
      004951 22               [24] 4770 	ret
                                   4771 ;------------------------------------------------------------
                                   4772 ;Allocation info for local variables in function 'prvUnlockQueue'
                                   4773 ;------------------------------------------------------------
                                   4774 ;pxQueue                   Allocated to stack - _bp +1
                                   4775 ;cTxLock                   Allocated to registers 
                                   4776 ;cRxLock                   Allocated to registers 
                                   4777 ;sloc0                     Allocated to stack - _bp +4
                                   4778 ;sloc1                     Allocated to stack - _bp +7
                                   4779 ;------------------------------------------------------------
                           00171E  4780 	Fqueue$prvUnlockQueue$0$0 ==.
                           00171E  4781 	C$queue.c$2167$1_0$361 ==.
                                   4782 ;	src/FreeRTOS/queue.c:2167: static void prvUnlockQueue( Queue_t * const pxQueue )
                                   4783 ;	-----------------------------------------
                                   4784 ;	 function prvUnlockQueue
                                   4785 ;	-----------------------------------------
      004952                       4786 _prvUnlockQueue:
      004952 C0 0C            [24] 4787 	push	_bp
      004954 85 81 0C         [24] 4788 	mov	_bp,sp
      004957 C0 82            [24] 4789 	push	dpl
      004959 C0 83            [24] 4790 	push	dph
      00495B C0 F0            [24] 4791 	push	b
      00495D E5 81            [12] 4792 	mov	a,sp
      00495F 24 04            [12] 4793 	add	a,#0x04
      004961 F5 81            [12] 4794 	mov	sp,a
                           00172F  4795 	C$queue.c$2175$1_0$361 ==.
                                   4796 ;	src/FreeRTOS/queue.c:2175: taskENTER_CRITICAL();
      004963 C0 E0            [24] 4797 	push ACC 
      004965 C0 A8            [24] 4798 	push IE 
                                   4799 ;	assignBit
      004967 C2 AF            [12] 4800 	clr	_EA
                           001735  4801 	C$queue.c$2177$2_0$362 ==.
                                   4802 ;	src/FreeRTOS/queue.c:2177: int8_t cTxLock = pxQueue->cTxLock;
      004969 A8 0C            [24] 4803 	mov	r0,_bp
      00496B 08               [12] 4804 	inc	r0
      00496C 74 28            [12] 4805 	mov	a,#0x28
      00496E 26               [12] 4806 	add	a,@r0
      00496F FA               [12] 4807 	mov	r2,a
      004970 E4               [12] 4808 	clr	a
      004971 08               [12] 4809 	inc	r0
      004972 36               [12] 4810 	addc	a,@r0
      004973 FB               [12] 4811 	mov	r3,a
      004974 08               [12] 4812 	inc	r0
      004975 86 04            [24] 4813 	mov	ar4,@r0
      004977 8A 82            [24] 4814 	mov	dpl,r2
      004979 8B 83            [24] 4815 	mov	dph,r3
      00497B 8C F0            [24] 4816 	mov	b,r4
      00497D E5 0C            [12] 4817 	mov	a,_bp
      00497F 24 07            [12] 4818 	add	a,#0x07
      004981 F8               [12] 4819 	mov	r0,a
      004982 12 70 5A         [24] 4820 	lcall	__gptrget
      004985 F6               [12] 4821 	mov	@r0,a
                           001752  4822 	C$queue.c$2180$4_0$364 ==.
                                   4823 ;	src/FreeRTOS/queue.c:2180: while( cTxLock > queueLOCKED_UNMODIFIED )
      004986 A8 0C            [24] 4824 	mov	r0,_bp
      004988 08               [12] 4825 	inc	r0
      004989 E5 0C            [12] 4826 	mov	a,_bp
      00498B 24 04            [12] 4827 	add	a,#0x04
      00498D F9               [12] 4828 	mov	r1,a
      00498E 74 18            [12] 4829 	mov	a,#0x18
      004990 26               [12] 4830 	add	a,@r0
      004991 F7               [12] 4831 	mov	@r1,a
      004992 E4               [12] 4832 	clr	a
      004993 08               [12] 4833 	inc	r0
      004994 36               [12] 4834 	addc	a,@r0
      004995 09               [12] 4835 	inc	r1
      004996 F7               [12] 4836 	mov	@r1,a
      004997 08               [12] 4837 	inc	r0
      004998 09               [12] 4838 	inc	r1
      004999 E6               [12] 4839 	mov	a,@r0
      00499A F7               [12] 4840 	mov	@r1,a
      00499B                       4841 00106$:
      00499B E5 0C            [12] 4842 	mov	a,_bp
      00499D 24 07            [12] 4843 	add	a,#0x07
      00499F F8               [12] 4844 	mov	r0,a
      0049A0 C3               [12] 4845 	clr	c
      0049A1 74 80            [12] 4846 	mov	a,#(0x00 ^ 0x80)
      0049A3 86 F0            [24] 4847 	mov	b,@r0
      0049A5 63 F0 80         [24] 4848 	xrl	b,#0x80
      0049A8 95 F0            [12] 4849 	subb	a,b
      0049AA 50 50            [24] 4850 	jnc	00108$
                           001778  4851 	C$queue.c$2228$4_0$364 ==.
                                   4852 ;	src/FreeRTOS/queue.c:2228: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      0049AC E5 0C            [12] 4853 	mov	a,_bp
      0049AE 24 04            [12] 4854 	add	a,#0x04
      0049B0 F8               [12] 4855 	mov	r0,a
      0049B1 86 82            [24] 4856 	mov	dpl,@r0
      0049B3 08               [12] 4857 	inc	r0
      0049B4 86 83            [24] 4858 	mov	dph,@r0
      0049B6 08               [12] 4859 	inc	r0
      0049B7 86 F0            [24] 4860 	mov	b,@r0
      0049B9 12 70 5A         [24] 4861 	lcall	__gptrget
      0049BC 60 3E            [24] 4862 	jz	00108$
                           00178A  4863 	C$queue.c$2230$5_0$365 ==.
                                   4864 ;	src/FreeRTOS/queue.c:2230: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      0049BE A8 0C            [24] 4865 	mov	r0,_bp
      0049C0 08               [12] 4866 	inc	r0
      0049C1 74 18            [12] 4867 	mov	a,#0x18
      0049C3 26               [12] 4868 	add	a,@r0
      0049C4 FD               [12] 4869 	mov	r5,a
      0049C5 E4               [12] 4870 	clr	a
      0049C6 08               [12] 4871 	inc	r0
      0049C7 36               [12] 4872 	addc	a,@r0
      0049C8 FE               [12] 4873 	mov	r6,a
      0049C9 08               [12] 4874 	inc	r0
      0049CA 86 07            [24] 4875 	mov	ar7,@r0
      0049CC 8D 82            [24] 4876 	mov	dpl,r5
      0049CE 8E 83            [24] 4877 	mov	dph,r6
      0049D0 8F F0            [24] 4878 	mov	b,r7
      0049D2 C0 04            [24] 4879 	push	ar4
      0049D4 C0 03            [24] 4880 	push	ar3
      0049D6 C0 02            [24] 4881 	push	ar2
      0049D8 12 10 57         [24] 4882 	lcall	_xTaskRemoveFromEventList
      0049DB E5 82            [12] 4883 	mov	a,dpl
      0049DD D0 02            [24] 4884 	pop	ar2
      0049DF D0 03            [24] 4885 	pop	ar3
      0049E1 D0 04            [24] 4886 	pop	ar4
      0049E3 60 0F            [24] 4887 	jz	00105$
                           0017B1  4888 	C$queue.c$2234$6_0$366 ==.
                                   4889 ;	src/FreeRTOS/queue.c:2234: vTaskMissedYield();
      0049E5 C0 04            [24] 4890 	push	ar4
      0049E7 C0 03            [24] 4891 	push	ar3
      0049E9 C0 02            [24] 4892 	push	ar2
      0049EB 12 14 4D         [24] 4893 	lcall	_vTaskMissedYield
      0049EE D0 02            [24] 4894 	pop	ar2
      0049F0 D0 03            [24] 4895 	pop	ar3
      0049F2 D0 04            [24] 4896 	pop	ar4
                           0017C0  4897 	C$queue.c$2243$4_0$364 ==.
                                   4898 ;	src/FreeRTOS/queue.c:2243: break;
      0049F4                       4899 00105$:
                           0017C0  4900 	C$queue.c$2248$3_0$363 ==.
                                   4901 ;	src/FreeRTOS/queue.c:2248: --cTxLock;
      0049F4 E5 0C            [12] 4902 	mov	a,_bp
      0049F6 24 07            [12] 4903 	add	a,#0x07
      0049F8 F8               [12] 4904 	mov	r0,a
      0049F9 16               [12] 4905 	dec	@r0
      0049FA 80 9F            [24] 4906 	sjmp	00106$
      0049FC                       4907 00108$:
                           0017C8  4908 	C$queue.c$2251$2_0$362 ==.
                                   4909 ;	src/FreeRTOS/queue.c:2251: pxQueue->cTxLock = queueUNLOCKED;
      0049FC 8A 82            [24] 4910 	mov	dpl,r2
      0049FE 8B 83            [24] 4911 	mov	dph,r3
      004A00 8C F0            [24] 4912 	mov	b,r4
      004A02 74 FF            [12] 4913 	mov	a,#0xff
      004A04 12 66 A0         [24] 4914 	lcall	__gptrput
                           0017D3  4915 	C$queue.c$2253$1_0$361 ==.
                                   4916 ;	src/FreeRTOS/queue.c:2253: taskEXIT_CRITICAL();
      004A07 D0 E0            [24] 4917 	pop ACC 
      004A09 53 E0 80         [24] 4918 	anl	_ACC,#0x80
      004A0C E5 E0            [12] 4919 	mov	a,_ACC
      004A0E 42 A8            [12] 4920 	orl	_IE,a
      004A10 D0 E0            [24] 4921 	pop ACC 
                           0017DE  4922 	C$queue.c$2256$1_0$361 ==.
                                   4923 ;	src/FreeRTOS/queue.c:2256: taskENTER_CRITICAL();
      004A12 C0 E0            [24] 4924 	push ACC 
      004A14 C0 A8            [24] 4925 	push IE 
                                   4926 ;	assignBit
      004A16 C2 AF            [12] 4927 	clr	_EA
                           0017E4  4928 	C$queue.c$2258$2_0$369 ==.
                                   4929 ;	src/FreeRTOS/queue.c:2258: int8_t cRxLock = pxQueue->cRxLock;
      004A18 A8 0C            [24] 4930 	mov	r0,_bp
      004A1A 08               [12] 4931 	inc	r0
      004A1B 74 27            [12] 4932 	mov	a,#0x27
      004A1D 26               [12] 4933 	add	a,@r0
      004A1E FD               [12] 4934 	mov	r5,a
      004A1F E4               [12] 4935 	clr	a
      004A20 08               [12] 4936 	inc	r0
      004A21 36               [12] 4937 	addc	a,@r0
      004A22 FE               [12] 4938 	mov	r6,a
      004A23 08               [12] 4939 	inc	r0
      004A24 86 07            [24] 4940 	mov	ar7,@r0
      004A26 8D 82            [24] 4941 	mov	dpl,r5
      004A28 8E 83            [24] 4942 	mov	dph,r6
      004A2A 8F F0            [24] 4943 	mov	b,r7
      004A2C 12 70 5A         [24] 4944 	lcall	__gptrget
      004A2F FC               [12] 4945 	mov	r4,a
                           0017FC  4946 	C$queue.c$2260$3_0$370 ==.
                                   4947 ;	src/FreeRTOS/queue.c:2260: while( cRxLock > queueLOCKED_UNMODIFIED )
      004A30 A8 0C            [24] 4948 	mov	r0,_bp
      004A32 08               [12] 4949 	inc	r0
      004A33 E5 0C            [12] 4950 	mov	a,_bp
      004A35 24 04            [12] 4951 	add	a,#0x04
      004A37 F9               [12] 4952 	mov	r1,a
      004A38 74 0C            [12] 4953 	mov	a,#0x0c
      004A3A 26               [12] 4954 	add	a,@r0
      004A3B F7               [12] 4955 	mov	@r1,a
      004A3C E4               [12] 4956 	clr	a
      004A3D 08               [12] 4957 	inc	r0
      004A3E 36               [12] 4958 	addc	a,@r0
      004A3F 09               [12] 4959 	inc	r1
      004A40 F7               [12] 4960 	mov	@r1,a
      004A41 08               [12] 4961 	inc	r0
      004A42 09               [12] 4962 	inc	r1
      004A43 E6               [12] 4963 	mov	a,@r0
      004A44 F7               [12] 4964 	mov	@r1,a
      004A45                       4965 00114$:
      004A45 C3               [12] 4966 	clr	c
      004A46 74 80            [12] 4967 	mov	a,#(0x00 ^ 0x80)
      004A48 8C F0            [24] 4968 	mov	b,r4
      004A4A 63 F0 80         [24] 4969 	xrl	b,#0x80
      004A4D 95 F0            [12] 4970 	subb	a,b
      004A4F 50 5F            [24] 4971 	jnc	00116$
                           00181D  4972 	C$queue.c$2262$3_0$370 ==.
                                   4973 ;	src/FreeRTOS/queue.c:2262: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      004A51 E5 0C            [12] 4974 	mov	a,_bp
      004A53 24 04            [12] 4975 	add	a,#0x04
      004A55 F8               [12] 4976 	mov	r0,a
      004A56 86 82            [24] 4977 	mov	dpl,@r0
      004A58 08               [12] 4978 	inc	r0
      004A59 86 83            [24] 4979 	mov	dph,@r0
      004A5B 08               [12] 4980 	inc	r0
      004A5C 86 F0            [24] 4981 	mov	b,@r0
      004A5E 12 70 5A         [24] 4982 	lcall	__gptrget
      004A61 60 4D            [24] 4983 	jz	00116$
                           00182F  4984 	C$queue.c$2264$1_0$361 ==.
                                   4985 ;	src/FreeRTOS/queue.c:2264: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      004A63 C0 05            [24] 4986 	push	ar5
      004A65 C0 06            [24] 4987 	push	ar6
      004A67 C0 07            [24] 4988 	push	ar7
      004A69 A8 0C            [24] 4989 	mov	r0,_bp
      004A6B 08               [12] 4990 	inc	r0
      004A6C 74 0C            [12] 4991 	mov	a,#0x0c
      004A6E 26               [12] 4992 	add	a,@r0
      004A6F FA               [12] 4993 	mov	r2,a
      004A70 E4               [12] 4994 	clr	a
      004A71 08               [12] 4995 	inc	r0
      004A72 36               [12] 4996 	addc	a,@r0
      004A73 FB               [12] 4997 	mov	r3,a
      004A74 08               [12] 4998 	inc	r0
      004A75 86 07            [24] 4999 	mov	ar7,@r0
      004A77 8A 82            [24] 5000 	mov	dpl,r2
      004A79 8B 83            [24] 5001 	mov	dph,r3
      004A7B 8F F0            [24] 5002 	mov	b,r7
      004A7D C0 07            [24] 5003 	push	ar7
      004A7F C0 06            [24] 5004 	push	ar6
      004A81 C0 05            [24] 5005 	push	ar5
      004A83 C0 04            [24] 5006 	push	ar4
      004A85 12 10 57         [24] 5007 	lcall	_xTaskRemoveFromEventList
      004A88 E5 82            [12] 5008 	mov	a,dpl
      004A8A D0 04            [24] 5009 	pop	ar4
      004A8C D0 05            [24] 5010 	pop	ar5
      004A8E D0 06            [24] 5011 	pop	ar6
      004A90 D0 07            [24] 5012 	pop	ar7
      004A92 D0 07            [24] 5013 	pop	ar7
      004A94 D0 06            [24] 5014 	pop	ar6
      004A96 D0 05            [24] 5015 	pop	ar5
      004A98 60 13            [24] 5016 	jz	00110$
                           001866  5017 	C$queue.c$2266$5_0$372 ==.
                                   5018 ;	src/FreeRTOS/queue.c:2266: vTaskMissedYield();
      004A9A C0 07            [24] 5019 	push	ar7
      004A9C C0 06            [24] 5020 	push	ar6
      004A9E C0 05            [24] 5021 	push	ar5
      004AA0 C0 04            [24] 5022 	push	ar4
      004AA2 12 14 4D         [24] 5023 	lcall	_vTaskMissedYield
      004AA5 D0 04            [24] 5024 	pop	ar4
      004AA7 D0 05            [24] 5025 	pop	ar5
      004AA9 D0 06            [24] 5026 	pop	ar6
      004AAB D0 07            [24] 5027 	pop	ar7
      004AAD                       5028 00110$:
                           001879  5029 	C$queue.c$2273$4_0$371 ==.
                                   5030 ;	src/FreeRTOS/queue.c:2273: --cRxLock;
      004AAD 1C               [12] 5031 	dec	r4
                           00187A  5032 	C$queue.c$2277$2_0$369 ==.
                                   5033 ;	src/FreeRTOS/queue.c:2277: break;
      004AAE 80 95            [24] 5034 	sjmp	00114$
      004AB0                       5035 00116$:
                           00187C  5036 	C$queue.c$2281$2_0$369 ==.
                                   5037 ;	src/FreeRTOS/queue.c:2281: pxQueue->cRxLock = queueUNLOCKED;
      004AB0 8D 82            [24] 5038 	mov	dpl,r5
      004AB2 8E 83            [24] 5039 	mov	dph,r6
      004AB4 8F F0            [24] 5040 	mov	b,r7
      004AB6 74 FF            [12] 5041 	mov	a,#0xff
      004AB8 12 66 A0         [24] 5042 	lcall	__gptrput
                           001887  5043 	C$queue.c$2283$1_0$361 ==.
                                   5044 ;	src/FreeRTOS/queue.c:2283: taskEXIT_CRITICAL();
      004ABB D0 E0            [24] 5045 	pop ACC 
      004ABD 53 E0 80         [24] 5046 	anl	_ACC,#0x80
      004AC0 E5 E0            [12] 5047 	mov	a,_ACC
      004AC2 42 A8            [12] 5048 	orl	_IE,a
      004AC4 D0 E0            [24] 5049 	pop ACC 
                           001892  5050 	C$queue.c$2284$1_0$361 ==.
                                   5051 ;	src/FreeRTOS/queue.c:2284: }
      004AC6 85 0C 81         [24] 5052 	mov	sp,_bp
      004AC9 D0 0C            [24] 5053 	pop	_bp
                           001897  5054 	C$queue.c$2284$1_0$361 ==.
                           001897  5055 	XFqueue$prvUnlockQueue$0$0 ==.
      004ACB 22               [24] 5056 	ret
                                   5057 ;------------------------------------------------------------
                                   5058 ;Allocation info for local variables in function 'prvIsQueueEmpty'
                                   5059 ;------------------------------------------------------------
                                   5060 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   5061 ;xReturn                   Allocated to registers r7 
                                   5062 ;------------------------------------------------------------
                           001898  5063 	Fqueue$prvIsQueueEmpty$0$0 ==.
                           001898  5064 	C$queue.c$2287$1_0$376 ==.
                                   5065 ;	src/FreeRTOS/queue.c:2287: static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
                                   5066 ;	-----------------------------------------
                                   5067 ;	 function prvIsQueueEmpty
                                   5068 ;	-----------------------------------------
      004ACC                       5069 _prvIsQueueEmpty:
      004ACC AD 82            [24] 5070 	mov	r5,dpl
      004ACE AE 83            [24] 5071 	mov	r6,dph
      004AD0 AF F0            [24] 5072 	mov	r7,b
                           00189E  5073 	C$queue.c$2291$1_0$376 ==.
                                   5074 ;	src/FreeRTOS/queue.c:2291: taskENTER_CRITICAL();
      004AD2 C0 E0            [24] 5075 	push ACC 
      004AD4 C0 A8            [24] 5076 	push IE 
                                   5077 ;	assignBit
      004AD6 C2 AF            [12] 5078 	clr	_EA
                           0018A4  5079 	C$queue.c$2293$2_0$377 ==.
                                   5080 ;	src/FreeRTOS/queue.c:2293: if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
      004AD8 74 24            [12] 5081 	mov	a,#0x24
      004ADA 2D               [12] 5082 	add	a,r5
      004ADB FD               [12] 5083 	mov	r5,a
      004ADC E4               [12] 5084 	clr	a
      004ADD 3E               [12] 5085 	addc	a,r6
      004ADE FE               [12] 5086 	mov	r6,a
      004ADF 8D 82            [24] 5087 	mov	dpl,r5
      004AE1 8E 83            [24] 5088 	mov	dph,r6
      004AE3 8F F0            [24] 5089 	mov	b,r7
      004AE5 12 70 5A         [24] 5090 	lcall	__gptrget
      004AE8 70 04            [24] 5091 	jnz	00102$
                           0018B6  5092 	C$queue.c$2295$3_0$378 ==.
                                   5093 ;	src/FreeRTOS/queue.c:2295: xReturn = pdTRUE;
      004AEA 7F 01            [12] 5094 	mov	r7,#0x01
      004AEC 80 02            [24] 5095 	sjmp	00103$
      004AEE                       5096 00102$:
                           0018BA  5097 	C$queue.c$2299$3_0$379 ==.
                                   5098 ;	src/FreeRTOS/queue.c:2299: xReturn = pdFALSE;
      004AEE 7F 00            [12] 5099 	mov	r7,#0x00
      004AF0                       5100 00103$:
                           0018BC  5101 	C$queue.c$2302$1_0$376 ==.
                                   5102 ;	src/FreeRTOS/queue.c:2302: taskEXIT_CRITICAL();
      004AF0 D0 E0            [24] 5103 	pop ACC 
      004AF2 53 E0 80         [24] 5104 	anl	_ACC,#0x80
      004AF5 E5 E0            [12] 5105 	mov	a,_ACC
      004AF7 42 A8            [12] 5106 	orl	_IE,a
      004AF9 D0 E0            [24] 5107 	pop ACC 
                           0018C7  5108 	C$queue.c$2304$1_0$376 ==.
                                   5109 ;	src/FreeRTOS/queue.c:2304: return xReturn;
      004AFB 8F 82            [24] 5110 	mov	dpl,r7
                           0018C9  5111 	C$queue.c$2305$1_0$376 ==.
                                   5112 ;	src/FreeRTOS/queue.c:2305: }
                           0018C9  5113 	C$queue.c$2305$1_0$376 ==.
                           0018C9  5114 	XFqueue$prvIsQueueEmpty$0$0 ==.
      004AFD 22               [24] 5115 	ret
                                   5116 ;------------------------------------------------------------
                                   5117 ;Allocation info for local variables in function 'xQueueIsQueueEmptyFromISR'
                                   5118 ;------------------------------------------------------------
                                   5119 ;xQueue                    Allocated to registers r5 r6 r7 
                                   5120 ;xReturn                   Allocated to registers r7 
                                   5121 ;pxQueue                   Allocated to registers 
                                   5122 ;------------------------------------------------------------
                           0018CA  5123 	G$xQueueIsQueueEmptyFromISR$0$0 ==.
                           0018CA  5124 	C$queue.c$2308$1_0$381 ==.
                                   5125 ;	src/FreeRTOS/queue.c:2308: BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
                                   5126 ;	-----------------------------------------
                                   5127 ;	 function xQueueIsQueueEmptyFromISR
                                   5128 ;	-----------------------------------------
      004AFE                       5129 _xQueueIsQueueEmptyFromISR:
      004AFE AD 82            [24] 5130 	mov	r5,dpl
      004B00 AE 83            [24] 5131 	mov	r6,dph
      004B02 AF F0            [24] 5132 	mov	r7,b
                           0018D0  5133 	C$queue.c$2314$1_0$381 ==.
                                   5134 ;	src/FreeRTOS/queue.c:2314: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
      004B04 74 24            [12] 5135 	mov	a,#0x24
      004B06 2D               [12] 5136 	add	a,r5
      004B07 FD               [12] 5137 	mov	r5,a
      004B08 E4               [12] 5138 	clr	a
      004B09 3E               [12] 5139 	addc	a,r6
      004B0A FE               [12] 5140 	mov	r6,a
      004B0B 8D 82            [24] 5141 	mov	dpl,r5
      004B0D 8E 83            [24] 5142 	mov	dph,r6
      004B0F 8F F0            [24] 5143 	mov	b,r7
      004B11 12 70 5A         [24] 5144 	lcall	__gptrget
      004B14 70 04            [24] 5145 	jnz	00102$
                           0018E2  5146 	C$queue.c$2316$2_0$382 ==.
                                   5147 ;	src/FreeRTOS/queue.c:2316: xReturn = pdTRUE;
      004B16 7F 01            [12] 5148 	mov	r7,#0x01
      004B18 80 02            [24] 5149 	sjmp	00103$
      004B1A                       5150 00102$:
                           0018E6  5151 	C$queue.c$2320$2_0$383 ==.
                                   5152 ;	src/FreeRTOS/queue.c:2320: xReturn = pdFALSE;
      004B1A 7F 00            [12] 5153 	mov	r7,#0x00
      004B1C                       5154 00103$:
                           0018E8  5155 	C$queue.c$2323$1_0$381 ==.
                                   5156 ;	src/FreeRTOS/queue.c:2323: return xReturn;
      004B1C 8F 82            [24] 5157 	mov	dpl,r7
                           0018EA  5158 	C$queue.c$2324$1_0$381 ==.
                                   5159 ;	src/FreeRTOS/queue.c:2324: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
                           0018EA  5160 	C$queue.c$2324$1_0$381 ==.
                           0018EA  5161 	XG$xQueueIsQueueEmptyFromISR$0$0 ==.
      004B1E 22               [24] 5162 	ret
                                   5163 ;------------------------------------------------------------
                                   5164 ;Allocation info for local variables in function 'prvIsQueueFull'
                                   5165 ;------------------------------------------------------------
                                   5166 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   5167 ;xReturn                   Allocated to registers r7 
                                   5168 ;------------------------------------------------------------
                           0018EB  5169 	Fqueue$prvIsQueueFull$0$0 ==.
                           0018EB  5170 	C$queue.c$2327$1_0$385 ==.
                                   5171 ;	src/FreeRTOS/queue.c:2327: static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
                                   5172 ;	-----------------------------------------
                                   5173 ;	 function prvIsQueueFull
                                   5174 ;	-----------------------------------------
      004B1F                       5175 _prvIsQueueFull:
      004B1F AD 82            [24] 5176 	mov	r5,dpl
      004B21 AE 83            [24] 5177 	mov	r6,dph
      004B23 AF F0            [24] 5178 	mov	r7,b
                           0018F1  5179 	C$queue.c$2331$1_0$385 ==.
                                   5180 ;	src/FreeRTOS/queue.c:2331: taskENTER_CRITICAL();
      004B25 C0 E0            [24] 5181 	push ACC 
      004B27 C0 A8            [24] 5182 	push IE 
                                   5183 ;	assignBit
      004B29 C2 AF            [12] 5184 	clr	_EA
                           0018F7  5185 	C$queue.c$2333$2_0$386 ==.
                                   5186 ;	src/FreeRTOS/queue.c:2333: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
      004B2B 74 24            [12] 5187 	mov	a,#0x24
      004B2D 2D               [12] 5188 	add	a,r5
      004B2E FA               [12] 5189 	mov	r2,a
      004B2F E4               [12] 5190 	clr	a
      004B30 3E               [12] 5191 	addc	a,r6
      004B31 FB               [12] 5192 	mov	r3,a
      004B32 8F 04            [24] 5193 	mov	ar4,r7
      004B34 8A 82            [24] 5194 	mov	dpl,r2
      004B36 8B 83            [24] 5195 	mov	dph,r3
      004B38 8C F0            [24] 5196 	mov	b,r4
      004B3A 12 70 5A         [24] 5197 	lcall	__gptrget
      004B3D FA               [12] 5198 	mov	r2,a
      004B3E 74 25            [12] 5199 	mov	a,#0x25
      004B40 2D               [12] 5200 	add	a,r5
      004B41 FD               [12] 5201 	mov	r5,a
      004B42 E4               [12] 5202 	clr	a
      004B43 3E               [12] 5203 	addc	a,r6
      004B44 FE               [12] 5204 	mov	r6,a
      004B45 8D 82            [24] 5205 	mov	dpl,r5
      004B47 8E 83            [24] 5206 	mov	dph,r6
      004B49 8F F0            [24] 5207 	mov	b,r7
      004B4B 12 70 5A         [24] 5208 	lcall	__gptrget
      004B4E FD               [12] 5209 	mov	r5,a
      004B4F EA               [12] 5210 	mov	a,r2
      004B50 B5 05 04         [24] 5211 	cjne	a,ar5,00102$
                           00191F  5212 	C$queue.c$2335$3_0$387 ==.
                                   5213 ;	src/FreeRTOS/queue.c:2335: xReturn = pdTRUE;
      004B53 7F 01            [12] 5214 	mov	r7,#0x01
      004B55 80 02            [24] 5215 	sjmp	00103$
      004B57                       5216 00102$:
                           001923  5217 	C$queue.c$2339$3_0$388 ==.
                                   5218 ;	src/FreeRTOS/queue.c:2339: xReturn = pdFALSE;
      004B57 7F 00            [12] 5219 	mov	r7,#0x00
      004B59                       5220 00103$:
                           001925  5221 	C$queue.c$2342$1_0$385 ==.
                                   5222 ;	src/FreeRTOS/queue.c:2342: taskEXIT_CRITICAL();
      004B59 D0 E0            [24] 5223 	pop ACC 
      004B5B 53 E0 80         [24] 5224 	anl	_ACC,#0x80
      004B5E E5 E0            [12] 5225 	mov	a,_ACC
      004B60 42 A8            [12] 5226 	orl	_IE,a
      004B62 D0 E0            [24] 5227 	pop ACC 
                           001930  5228 	C$queue.c$2344$1_0$385 ==.
                                   5229 ;	src/FreeRTOS/queue.c:2344: return xReturn;
      004B64 8F 82            [24] 5230 	mov	dpl,r7
                           001932  5231 	C$queue.c$2345$1_0$385 ==.
                                   5232 ;	src/FreeRTOS/queue.c:2345: }
                           001932  5233 	C$queue.c$2345$1_0$385 ==.
                           001932  5234 	XFqueue$prvIsQueueFull$0$0 ==.
      004B66 22               [24] 5235 	ret
                                   5236 ;------------------------------------------------------------
                                   5237 ;Allocation info for local variables in function 'xQueueIsQueueFullFromISR'
                                   5238 ;------------------------------------------------------------
                                   5239 ;xQueue                    Allocated to registers r5 r6 r7 
                                   5240 ;xReturn                   Allocated to registers r7 
                                   5241 ;pxQueue                   Allocated to registers 
                                   5242 ;------------------------------------------------------------
                           001933  5243 	G$xQueueIsQueueFullFromISR$0$0 ==.
                           001933  5244 	C$queue.c$2348$1_0$390 ==.
                                   5245 ;	src/FreeRTOS/queue.c:2348: BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
                                   5246 ;	-----------------------------------------
                                   5247 ;	 function xQueueIsQueueFullFromISR
                                   5248 ;	-----------------------------------------
      004B67                       5249 _xQueueIsQueueFullFromISR:
      004B67 AD 82            [24] 5250 	mov	r5,dpl
      004B69 AE 83            [24] 5251 	mov	r6,dph
      004B6B AF F0            [24] 5252 	mov	r7,b
                           001939  5253 	C$queue.c$2354$1_0$390 ==.
                                   5254 ;	src/FreeRTOS/queue.c:2354: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
      004B6D 74 24            [12] 5255 	mov	a,#0x24
      004B6F 2D               [12] 5256 	add	a,r5
      004B70 FA               [12] 5257 	mov	r2,a
      004B71 E4               [12] 5258 	clr	a
      004B72 3E               [12] 5259 	addc	a,r6
      004B73 FB               [12] 5260 	mov	r3,a
      004B74 8F 04            [24] 5261 	mov	ar4,r7
      004B76 8A 82            [24] 5262 	mov	dpl,r2
      004B78 8B 83            [24] 5263 	mov	dph,r3
      004B7A 8C F0            [24] 5264 	mov	b,r4
      004B7C 12 70 5A         [24] 5265 	lcall	__gptrget
      004B7F FA               [12] 5266 	mov	r2,a
      004B80 74 25            [12] 5267 	mov	a,#0x25
      004B82 2D               [12] 5268 	add	a,r5
      004B83 FD               [12] 5269 	mov	r5,a
      004B84 E4               [12] 5270 	clr	a
      004B85 3E               [12] 5271 	addc	a,r6
      004B86 FE               [12] 5272 	mov	r6,a
      004B87 8D 82            [24] 5273 	mov	dpl,r5
      004B89 8E 83            [24] 5274 	mov	dph,r6
      004B8B 8F F0            [24] 5275 	mov	b,r7
      004B8D 12 70 5A         [24] 5276 	lcall	__gptrget
      004B90 FD               [12] 5277 	mov	r5,a
      004B91 EA               [12] 5278 	mov	a,r2
      004B92 B5 05 04         [24] 5279 	cjne	a,ar5,00102$
                           001961  5280 	C$queue.c$2356$2_0$391 ==.
                                   5281 ;	src/FreeRTOS/queue.c:2356: xReturn = pdTRUE;
      004B95 7F 01            [12] 5282 	mov	r7,#0x01
      004B97 80 02            [24] 5283 	sjmp	00103$
      004B99                       5284 00102$:
                           001965  5285 	C$queue.c$2360$2_0$392 ==.
                                   5286 ;	src/FreeRTOS/queue.c:2360: xReturn = pdFALSE;
      004B99 7F 00            [12] 5287 	mov	r7,#0x00
      004B9B                       5288 00103$:
                           001967  5289 	C$queue.c$2363$1_0$390 ==.
                                   5290 ;	src/FreeRTOS/queue.c:2363: return xReturn;
      004B9B 8F 82            [24] 5291 	mov	dpl,r7
                           001969  5292 	C$queue.c$2364$1_0$390 ==.
                                   5293 ;	src/FreeRTOS/queue.c:2364: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
                           001969  5294 	C$queue.c$2364$1_0$390 ==.
                           001969  5295 	XG$xQueueIsQueueFullFromISR$0$0 ==.
      004B9D 22               [24] 5296 	ret
                                   5297 	.area CSEG    (CODE)
                                   5298 	.area CONST   (CODE)
                                   5299 	.area CABS    (ABS,CODE)
