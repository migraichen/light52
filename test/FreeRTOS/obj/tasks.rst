                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module tasks
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uxListRemove
                                     12 	.globl _vListInsertEnd
                                     13 	.globl _vListInsert
                                     14 	.globl _vListInitialiseItem
                                     15 	.globl _vListInitialise
                                     16 	.globl _vPortEndScheduler
                                     17 	.globl _xPortStartScheduler
                                     18 	.globl _vPortFree
                                     19 	.globl _pvPortMalloc
                                     20 	.globl _pxPortInitialiseStack
                                     21 	.globl _vPortYield
                                     22 	.globl _P3_7
                                     23 	.globl _P3_6
                                     24 	.globl _P3_5
                                     25 	.globl _P3_4
                                     26 	.globl _P3_3
                                     27 	.globl _P3_2
                                     28 	.globl _P3_1
                                     29 	.globl _P3_0
                                     30 	.globl _P2_7
                                     31 	.globl _P2_6
                                     32 	.globl _P2_5
                                     33 	.globl _P2_4
                                     34 	.globl _P2_3
                                     35 	.globl _P2_2
                                     36 	.globl _P2_1
                                     37 	.globl _P2_0
                                     38 	.globl _P1_7
                                     39 	.globl _P1_6
                                     40 	.globl _P1_5
                                     41 	.globl _P1_4
                                     42 	.globl _P1_3
                                     43 	.globl _P1_2
                                     44 	.globl _P1_1
                                     45 	.globl _P1_0
                                     46 	.globl _P0_7
                                     47 	.globl _P0_6
                                     48 	.globl _P0_5
                                     49 	.globl _P0_4
                                     50 	.globl _P0_3
                                     51 	.globl _P0_2
                                     52 	.globl _P0_1
                                     53 	.globl _P0_0
                                     54 	.globl _EIRQ7
                                     55 	.globl _EIRQ6
                                     56 	.globl _EIRQ5
                                     57 	.globl _EIRQ4
                                     58 	.globl _EIRQ3
                                     59 	.globl _EIRQ2
                                     60 	.globl _EIRQ1
                                     61 	.globl _EIRQ0
                                     62 	.globl _T0CEN
                                     63 	.globl _T0ARL
                                     64 	.globl _T0IRQ
                                     65 	.globl _RXRDY
                                     66 	.globl _TXRDY
                                     67 	.globl _RXIRQ
                                     68 	.globl _TXIRQ
                                     69 	.globl _EEX
                                     70 	.globl _ET0
                                     71 	.globl _ES
                                     72 	.globl _EA
                                     73 	.globl _P3
                                     74 	.globl _P2
                                     75 	.globl _P1
                                     76 	.globl _P0
                                     77 	.globl _EXTINT
                                     78 	.globl _T0CH
                                     79 	.globl _T0CL
                                     80 	.globl _T0H
                                     81 	.globl _T0L
                                     82 	.globl _TCON
                                     83 	.globl _SBPH
                                     84 	.globl _SBPL
                                     85 	.globl _SBUF
                                     86 	.globl _SCON
                                     87 	.globl _IE
                                     88 	.globl _DPL
                                     89 	.globl _DPH
                                     90 	.globl _SP
                                     91 	.globl _PSW
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _pxCurrentTCB
                                     95 	.globl _xTaskCreate
                                     96 	.globl _vTaskDelayUntil
                                     97 	.globl _vTaskDelay
                                     98 	.globl _vTaskStartScheduler
                                     99 	.globl _vTaskEndScheduler
                                    100 	.globl _vTaskSuspendAll
                                    101 	.globl _xTaskResumeAll
                                    102 	.globl _xTaskGetTickCount
                                    103 	.globl _xTaskGetTickCountFromISR
                                    104 	.globl _uxTaskGetNumberOfTasks
                                    105 	.globl _pcTaskGetName
                                    106 	.globl _xTaskIncrementTick
                                    107 	.globl _vTaskSwitchContext
                                    108 	.globl _vTaskPlaceOnEventList
                                    109 	.globl _vTaskPlaceOnUnorderedEventList
                                    110 	.globl _xTaskRemoveFromEventList
                                    111 	.globl _vTaskRemoveFromUnorderedEventList
                                    112 	.globl _vTaskSetTimeOutState
                                    113 	.globl _vTaskInternalSetTimeOutState
                                    114 	.globl _xTaskCheckForTimeOut
                                    115 	.globl _vTaskMissedYield
                                    116 	.globl _xTaskGetCurrentTaskHandle
                                    117 	.globl _uxTaskResetEventItemValue
                                    118 	.globl _ulTaskNotifyTake
                                    119 	.globl _xTaskNotifyWait
                                    120 	.globl _xTaskGenericNotify
                                    121 	.globl _xTaskGenericNotifyFromISR
                                    122 	.globl _vTaskNotifyGiveFromISR
                                    123 	.globl _xTaskNotifyStateClear
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           0000E0   129 G$ACC$0_0$0 == 0x00e0
                           0000E0   130 _ACC	=	0x00e0
                           0000F0   131 G$B$0_0$0 == 0x00f0
                           0000F0   132 _B	=	0x00f0
                           0000D0   133 G$PSW$0_0$0 == 0x00d0
                           0000D0   134 _PSW	=	0x00d0
                           000081   135 G$SP$0_0$0 == 0x0081
                           000081   136 _SP	=	0x0081
                           000083   137 G$DPH$0_0$0 == 0x0083
                           000083   138 _DPH	=	0x0083
                           000082   139 G$DPL$0_0$0 == 0x0082
                           000082   140 _DPL	=	0x0082
                           0000A8   141 G$IE$0_0$0 == 0x00a8
                           0000A8   142 _IE	=	0x00a8
                           000098   143 G$SCON$0_0$0 == 0x0098
                           000098   144 _SCON	=	0x0098
                           000099   145 G$SBUF$0_0$0 == 0x0099
                           000099   146 _SBUF	=	0x0099
                           00009A   147 G$SBPL$0_0$0 == 0x009a
                           00009A   148 _SBPL	=	0x009a
                           00009B   149 G$SBPH$0_0$0 == 0x009b
                           00009B   150 _SBPH	=	0x009b
                           000088   151 G$TCON$0_0$0 == 0x0088
                           000088   152 _TCON	=	0x0088
                           00008C   153 G$T0L$0_0$0 == 0x008c
                           00008C   154 _T0L	=	0x008c
                           00008D   155 G$T0H$0_0$0 == 0x008d
                           00008D   156 _T0H	=	0x008d
                           00008E   157 G$T0CL$0_0$0 == 0x008e
                           00008E   158 _T0CL	=	0x008e
                           00008F   159 G$T0CH$0_0$0 == 0x008f
                           00008F   160 _T0CH	=	0x008f
                           0000C0   161 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   162 _EXTINT	=	0x00c0
                           000080   163 G$P0$0_0$0 == 0x0080
                           000080   164 _P0	=	0x0080
                           000090   165 G$P1$0_0$0 == 0x0090
                           000090   166 _P1	=	0x0090
                           0000A0   167 G$P2$0_0$0 == 0x00a0
                           0000A0   168 _P2	=	0x00a0
                           0000B0   169 G$P3$0_0$0 == 0x00b0
                           0000B0   170 _P3	=	0x00b0
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           0000AF   176 G$EA$0_0$0 == 0x00af
                           0000AF   177 _EA	=	0x00af
                           0000AC   178 G$ES$0_0$0 == 0x00ac
                           0000AC   179 _ES	=	0x00ac
                           0000A9   180 G$ET0$0_0$0 == 0x00a9
                           0000A9   181 _ET0	=	0x00a9
                           0000A8   182 G$EEX$0_0$0 == 0x00a8
                           0000A8   183 _EEX	=	0x00a8
                           00009C   184 G$TXIRQ$0_0$0 == 0x009c
                           00009C   185 _TXIRQ	=	0x009c
                           00009D   186 G$RXIRQ$0_0$0 == 0x009d
                           00009D   187 _RXIRQ	=	0x009d
                           00009C   188 G$TXRDY$0_0$0 == 0x009c
                           00009C   189 _TXRDY	=	0x009c
                           00009D   190 G$RXRDY$0_0$0 == 0x009d
                           00009D   191 _RXRDY	=	0x009d
                           000088   192 G$T0IRQ$0_0$0 == 0x0088
                           000088   193 _T0IRQ	=	0x0088
                           00008C   194 G$T0ARL$0_0$0 == 0x008c
                           00008C   195 _T0ARL	=	0x008c
                           00008D   196 G$T0CEN$0_0$0 == 0x008d
                           00008D   197 _T0CEN	=	0x008d
                           0000C0   198 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   199 _EIRQ0	=	0x00c0
                           0000C1   200 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   201 _EIRQ1	=	0x00c1
                           0000C2   202 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   203 _EIRQ2	=	0x00c2
                           0000C3   204 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   205 _EIRQ3	=	0x00c3
                           0000C4   206 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   207 _EIRQ4	=	0x00c4
                           0000C5   208 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   209 _EIRQ5	=	0x00c5
                           0000C6   210 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   211 _EIRQ6	=	0x00c6
                           0000C7   212 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   213 _EIRQ7	=	0x00c7
                           000080   214 G$P0_0$0_0$0 == 0x0080
                           000080   215 _P0_0	=	0x0080
                           000081   216 G$P0_1$0_0$0 == 0x0081
                           000081   217 _P0_1	=	0x0081
                           000082   218 G$P0_2$0_0$0 == 0x0082
                           000082   219 _P0_2	=	0x0082
                           000083   220 G$P0_3$0_0$0 == 0x0083
                           000083   221 _P0_3	=	0x0083
                           000084   222 G$P0_4$0_0$0 == 0x0084
                           000084   223 _P0_4	=	0x0084
                           000085   224 G$P0_5$0_0$0 == 0x0085
                           000085   225 _P0_5	=	0x0085
                           000086   226 G$P0_6$0_0$0 == 0x0086
                           000086   227 _P0_6	=	0x0086
                           000087   228 G$P0_7$0_0$0 == 0x0087
                           000087   229 _P0_7	=	0x0087
                           000090   230 G$P1_0$0_0$0 == 0x0090
                           000090   231 _P1_0	=	0x0090
                           000091   232 G$P1_1$0_0$0 == 0x0091
                           000091   233 _P1_1	=	0x0091
                           000092   234 G$P1_2$0_0$0 == 0x0092
                           000092   235 _P1_2	=	0x0092
                           000093   236 G$P1_3$0_0$0 == 0x0093
                           000093   237 _P1_3	=	0x0093
                           000094   238 G$P1_4$0_0$0 == 0x0094
                           000094   239 _P1_4	=	0x0094
                           000095   240 G$P1_5$0_0$0 == 0x0095
                           000095   241 _P1_5	=	0x0095
                           000096   242 G$P1_6$0_0$0 == 0x0096
                           000096   243 _P1_6	=	0x0096
                           000097   244 G$P1_7$0_0$0 == 0x0097
                           000097   245 _P1_7	=	0x0097
                           0000A0   246 G$P2_0$0_0$0 == 0x00a0
                           0000A0   247 _P2_0	=	0x00a0
                           0000A1   248 G$P2_1$0_0$0 == 0x00a1
                           0000A1   249 _P2_1	=	0x00a1
                           0000A2   250 G$P2_2$0_0$0 == 0x00a2
                           0000A2   251 _P2_2	=	0x00a2
                           0000A3   252 G$P2_3$0_0$0 == 0x00a3
                           0000A3   253 _P2_3	=	0x00a3
                           0000A4   254 G$P2_4$0_0$0 == 0x00a4
                           0000A4   255 _P2_4	=	0x00a4
                           0000A5   256 G$P2_5$0_0$0 == 0x00a5
                           0000A5   257 _P2_5	=	0x00a5
                           0000A6   258 G$P2_6$0_0$0 == 0x00a6
                           0000A6   259 _P2_6	=	0x00a6
                           0000A7   260 G$P2_7$0_0$0 == 0x00a7
                           0000A7   261 _P2_7	=	0x00a7
                           0000B0   262 G$P3_0$0_0$0 == 0x00b0
                           0000B0   263 _P3_0	=	0x00b0
                           0000B1   264 G$P3_1$0_0$0 == 0x00b1
                           0000B1   265 _P3_1	=	0x00b1
                           0000B2   266 G$P3_2$0_0$0 == 0x00b2
                           0000B2   267 _P3_2	=	0x00b2
                           0000B3   268 G$P3_3$0_0$0 == 0x00b3
                           0000B3   269 _P3_3	=	0x00b3
                           0000B4   270 G$P3_4$0_0$0 == 0x00b4
                           0000B4   271 _P3_4	=	0x00b4
                           0000B5   272 G$P3_5$0_0$0 == 0x00b5
                           0000B5   273 _P3_5	=	0x00b5
                           0000B6   274 G$P3_6$0_0$0 == 0x00b6
                           0000B6   275 _P3_6	=	0x00b6
                           0000B7   276 G$P3_7$0_0$0 == 0x00b7
                           0000B7   277 _P3_7	=	0x00b7
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area DSEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable items in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 ;--------------------------------------------------------
                                    291 ; indirectly addressable internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area ISEG    (DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area IABS    (ABS,DATA)
                                    298 	.area IABS    (ABS,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; bit data
                                    301 ;--------------------------------------------------------
                                    302 	.area BSEG    (BIT)
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
                           000000   311 G$pxCurrentTCB$0_0$0==.
      000009                        312 _pxCurrentTCB::
      000009                        313 	.ds 3
                           000003   314 Ftasks$pxReadyTasksLists$0_0$0==.
      00000C                        315 _pxReadyTasksLists:
      00000C                        316 	.ds 48
                           000033   317 Ftasks$xDelayedTaskList1$0_0$0==.
      00003C                        318 _xDelayedTaskList1:
      00003C                        319 	.ds 12
                           00003F   320 Ftasks$xDelayedTaskList2$0_0$0==.
      000048                        321 _xDelayedTaskList2:
      000048                        322 	.ds 12
                           00004B   323 Ftasks$pxDelayedTaskList$0_0$0==.
      000054                        324 _pxDelayedTaskList:
      000054                        325 	.ds 3
                           00004E   326 Ftasks$pxOverflowDelayedTaskList$0_0$0==.
      000057                        327 _pxOverflowDelayedTaskList:
      000057                        328 	.ds 3
                           000051   329 Ftasks$xPendingReadyList$0_0$0==.
      00005A                        330 _xPendingReadyList:
      00005A                        331 	.ds 12
                           00005D   332 Ftasks$uxCurrentNumberOfTasks$0_0$0==.
      000066                        333 _uxCurrentNumberOfTasks:
      000066                        334 	.ds 1
                           00005E   335 Ftasks$xTickCount$0_0$0==.
      000067                        336 _xTickCount:
      000067                        337 	.ds 2
                           000060   338 Ftasks$uxTopReadyPriority$0_0$0==.
      000069                        339 _uxTopReadyPriority:
      000069                        340 	.ds 1
                           000061   341 Ftasks$xSchedulerRunning$0_0$0==.
      00006A                        342 _xSchedulerRunning:
      00006A                        343 	.ds 1
                           000062   344 Ftasks$uxPendedTicks$0_0$0==.
      00006B                        345 _uxPendedTicks:
      00006B                        346 	.ds 1
                           000063   347 Ftasks$xYieldPending$0_0$0==.
      00006C                        348 _xYieldPending:
      00006C                        349 	.ds 1
                           000064   350 Ftasks$xNumOfOverflows$0_0$0==.
      00006D                        351 _xNumOfOverflows:
      00006D                        352 	.ds 1
                           000065   353 Ftasks$uxTaskNumber$0_0$0==.
      00006E                        354 _uxTaskNumber:
      00006E                        355 	.ds 1
                           000066   356 Ftasks$xNextTaskUnblockTime$0_0$0==.
      00006F                        357 _xNextTaskUnblockTime:
      00006F                        358 	.ds 2
                           000068   359 Ftasks$xIdleTaskHandle$0_0$0==.
      000071                        360 _xIdleTaskHandle:
      000071                        361 	.ds 3
                           00006B   362 Ftasks$uxSchedulerSuspended$0_0$0==.
      000074                        363 _uxSchedulerSuspended:
      000074                        364 	.ds 1
                                    365 ;--------------------------------------------------------
                                    366 ; absolute external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XABS    (ABS,XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; external initialized ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT0 (CODE)
                                    374 	.area GSINIT1 (CODE)
                                    375 	.area GSINIT2 (CODE)
                                    376 	.area GSINIT3 (CODE)
                                    377 	.area GSINIT4 (CODE)
                                    378 	.area GSINIT5 (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area CSEG    (CODE)
                                    382 ;--------------------------------------------------------
                                    383 ; global & static initialisations
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
                                    386 	.area GSINIT  (CODE)
                                    387 	.area GSFINAL (CODE)
                                    388 	.area GSINIT  (CODE)
                           000000   389 	C$tasks.c$351$2_0$400 ==.
                                    390 ;	src/FreeRTOS/tasks.c:351: PRIVILEGED_DATA TCB_t * volatile pxCurrentTCB = NULL;
      000075 90 00 09         [24]  391 	mov	dptr,#_pxCurrentTCB
      000078 E4               [12]  392 	clr	a
      000079 F0               [24]  393 	movx	@dptr,a
      00007A A3               [24]  394 	inc	dptr
      00007B F0               [24]  395 	movx	@dptr,a
      00007C A3               [24]  396 	inc	dptr
      00007D F0               [24]  397 	movx	@dptr,a
                           000009   398 	C$tasks.c$384$2_0$400 ==.
                                    399 ;	src/FreeRTOS/tasks.c:384: PRIVILEGED_DATA static volatile UBaseType_t uxCurrentNumberOfTasks 	= ( UBaseType_t ) 0U;
      00007E 90 00 66         [24]  400 	mov	dptr,#_uxCurrentNumberOfTasks
      000081 F0               [24]  401 	movx	@dptr,a
                           00000D   402 	C$tasks.c$385$2_0$400 ==.
                                    403 ;	src/FreeRTOS/tasks.c:385: PRIVILEGED_DATA static volatile TickType_t xTickCount 				= ( TickType_t ) configINITIAL_TICK_COUNT;
      000082 90 00 67         [24]  404 	mov	dptr,#_xTickCount
      000085 F0               [24]  405 	movx	@dptr,a
      000086 A3               [24]  406 	inc	dptr
      000087 F0               [24]  407 	movx	@dptr,a
                           000013   408 	C$tasks.c$386$2_0$400 ==.
                                    409 ;	src/FreeRTOS/tasks.c:386: PRIVILEGED_DATA static volatile UBaseType_t uxTopReadyPriority 		= tskIDLE_PRIORITY;
      000088 90 00 69         [24]  410 	mov	dptr,#_uxTopReadyPriority
      00008B F0               [24]  411 	movx	@dptr,a
                           000017   412 	C$tasks.c$387$2_0$400 ==.
                                    413 ;	src/FreeRTOS/tasks.c:387: PRIVILEGED_DATA static volatile BaseType_t xSchedulerRunning 		= pdFALSE;
      00008C 90 00 6A         [24]  414 	mov	dptr,#_xSchedulerRunning
      00008F F0               [24]  415 	movx	@dptr,a
                           00001B   416 	C$tasks.c$388$2_0$400 ==.
                                    417 ;	src/FreeRTOS/tasks.c:388: PRIVILEGED_DATA static volatile UBaseType_t uxPendedTicks 			= ( UBaseType_t ) 0U;
      000090 90 00 6B         [24]  418 	mov	dptr,#_uxPendedTicks
      000093 F0               [24]  419 	movx	@dptr,a
                           00001F   420 	C$tasks.c$389$2_0$400 ==.
                                    421 ;	src/FreeRTOS/tasks.c:389: PRIVILEGED_DATA static volatile BaseType_t xYieldPending 			= pdFALSE;
      000094 90 00 6C         [24]  422 	mov	dptr,#_xYieldPending
      000097 F0               [24]  423 	movx	@dptr,a
                           000023   424 	C$tasks.c$390$2_0$400 ==.
                                    425 ;	src/FreeRTOS/tasks.c:390: PRIVILEGED_DATA static volatile BaseType_t xNumOfOverflows 			= ( BaseType_t ) 0;
      000098 90 00 6D         [24]  426 	mov	dptr,#_xNumOfOverflows
      00009B F0               [24]  427 	movx	@dptr,a
                           000027   428 	C$tasks.c$391$2_0$400 ==.
                                    429 ;	src/FreeRTOS/tasks.c:391: PRIVILEGED_DATA static UBaseType_t uxTaskNumber 					= ( UBaseType_t ) 0U;
      00009C 90 00 6E         [24]  430 	mov	dptr,#_uxTaskNumber
      00009F F0               [24]  431 	movx	@dptr,a
                           00002B   432 	C$tasks.c$392$2_0$400 ==.
                                    433 ;	src/FreeRTOS/tasks.c:392: PRIVILEGED_DATA static volatile TickType_t xNextTaskUnblockTime		= ( TickType_t ) 0U; /* Initialised to portMAX_DELAY before the scheduler starts. */
      0000A0 90 00 6F         [24]  434 	mov	dptr,#_xNextTaskUnblockTime
      0000A3 F0               [24]  435 	movx	@dptr,a
      0000A4 A3               [24]  436 	inc	dptr
      0000A5 F0               [24]  437 	movx	@dptr,a
                           000031   438 	C$tasks.c$393$2_0$400 ==.
                                    439 ;	src/FreeRTOS/tasks.c:393: PRIVILEGED_DATA static TaskHandle_t xIdleTaskHandle					= NULL;			/*< Holds the handle of the idle task.  The idle task is created automatically when the scheduler is started. */
      0000A6 90 00 71         [24]  440 	mov	dptr,#_xIdleTaskHandle
      0000A9 F0               [24]  441 	movx	@dptr,a
      0000AA A3               [24]  442 	inc	dptr
      0000AB F0               [24]  443 	movx	@dptr,a
      0000AC A3               [24]  444 	inc	dptr
      0000AD F0               [24]  445 	movx	@dptr,a
                           000039   446 	C$tasks.c$403$2_0$400 ==.
                                    447 ;	src/FreeRTOS/tasks.c:403: PRIVILEGED_DATA static volatile UBaseType_t uxSchedulerSuspended	= ( UBaseType_t ) pdFALSE;
      0000AE 90 00 74         [24]  448 	mov	dptr,#_uxSchedulerSuspended
      0000B1 F0               [24]  449 	movx	@dptr,a
                                    450 ;--------------------------------------------------------
                                    451 ; Home
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area HOME    (CODE)
                                    455 ;--------------------------------------------------------
                                    456 ; code
                                    457 ;--------------------------------------------------------
                                    458 	.area CSEG    (CODE)
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'xTaskCreate'
                                    461 ;------------------------------------------------------------
                                    462 ;pcName                    Allocated to stack - _bp -5
                                    463 ;usStackDepth              Allocated to stack - _bp -7
                                    464 ;pvParameters              Allocated to stack - _bp -10
                                    465 ;uxPriority                Allocated to stack - _bp -11
                                    466 ;pxCreatedTask             Allocated to stack - _bp -14
                                    467 ;pxTaskCode                Allocated to registers r6 r7 
                                    468 ;pxNewTCB                  Allocated to stack - _bp +1
                                    469 ;xReturn                   Allocated to registers r7 
                                    470 ;------------------------------------------------------------
                           000000   471 	G$xTaskCreate$0$0 ==.
                           000000   472 	C$tasks.c$747$0_0$146 ==.
                                    473 ;	src/FreeRTOS/tasks.c:747: BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
                                    474 ;	-----------------------------------------
                                    475 ;	 function xTaskCreate
                                    476 ;	-----------------------------------------
      000280                        477 _xTaskCreate:
                           000007   478 	ar7 = 0x07
                           000006   479 	ar6 = 0x06
                           000005   480 	ar5 = 0x05
                           000004   481 	ar4 = 0x04
                           000003   482 	ar3 = 0x03
                           000002   483 	ar2 = 0x02
                           000001   484 	ar1 = 0x01
                           000000   485 	ar0 = 0x00
      000280 C0 0C            [24]  486 	push	_bp
      000282 85 81 0C         [24]  487 	mov	_bp,sp
      000285 05 81            [12]  488 	inc	sp
      000287 05 81            [12]  489 	inc	sp
      000289 05 81            [12]  490 	inc	sp
      00028B AE 82            [24]  491 	mov	r6,dpl
      00028D AF 83            [24]  492 	mov	r7,dph
                           00000F   493 	C$tasks.c$765$2_0$147 ==.
                                    494 ;	src/FreeRTOS/tasks.c:765: pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
      00028F 90 00 33         [24]  495 	mov	dptr,#0x0033
      000292 C0 07            [24]  496 	push	ar7
      000294 C0 06            [24]  497 	push	ar6
      000296 12 61 84         [24]  498 	lcall	_pvPortMalloc
      000299 AB 82            [24]  499 	mov	r3,dpl
      00029B AC 83            [24]  500 	mov	r4,dph
      00029D AD F0            [24]  501 	mov	r5,b
      00029F D0 06            [24]  502 	pop	ar6
      0002A1 D0 07            [24]  503 	pop	ar7
      0002A3 A8 0C            [24]  504 	mov	r0,_bp
      0002A5 08               [12]  505 	inc	r0
      0002A6 A6 03            [24]  506 	mov	@r0,ar3
      0002A8 08               [12]  507 	inc	r0
      0002A9 A6 04            [24]  508 	mov	@r0,ar4
      0002AB 08               [12]  509 	inc	r0
      0002AC A6 05            [24]  510 	mov	@r0,ar5
                           00002E   511 	C$tasks.c$767$2_0$147 ==.
                                    512 ;	src/FreeRTOS/tasks.c:767: if( pxNewTCB != NULL )
      0002AE A8 0C            [24]  513 	mov	r0,_bp
      0002B0 08               [12]  514 	inc	r0
      0002B1 E6               [12]  515 	mov	a,@r0
      0002B2 08               [12]  516 	inc	r0
      0002B3 46               [12]  517 	orl	a,@r0
      0002B4 60 77            [24]  518 	jz	00104$
                           000036   519 	C$tasks.c$772$1_0$146 ==.
                                    520 ;	src/FreeRTOS/tasks.c:772: pxNewTCB->pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      0002B6 C0 06            [24]  521 	push	ar6
      0002B8 C0 07            [24]  522 	push	ar7
      0002BA A8 0C            [24]  523 	mov	r0,_bp
      0002BC 08               [12]  524 	inc	r0
      0002BD 74 20            [12]  525 	mov	a,#0x20
      0002BF 26               [12]  526 	add	a,@r0
      0002C0 FA               [12]  527 	mov	r2,a
      0002C1 E4               [12]  528 	clr	a
      0002C2 08               [12]  529 	inc	r0
      0002C3 36               [12]  530 	addc	a,@r0
      0002C4 FE               [12]  531 	mov	r6,a
      0002C5 08               [12]  532 	inc	r0
      0002C6 86 07            [24]  533 	mov	ar7,@r0
      0002C8 E5 0C            [12]  534 	mov	a,_bp
      0002CA 24 F9            [12]  535 	add	a,#0xf9
      0002CC F8               [12]  536 	mov	r0,a
      0002CD 86 04            [24]  537 	mov	ar4,@r0
      0002CF 08               [12]  538 	inc	r0
      0002D0 86 05            [24]  539 	mov	ar5,@r0
      0002D2 8C 82            [24]  540 	mov	dpl,r4
      0002D4 8D 83            [24]  541 	mov	dph,r5
      0002D6 C0 07            [24]  542 	push	ar7
      0002D8 C0 06            [24]  543 	push	ar6
      0002DA C0 02            [24]  544 	push	ar2
      0002DC 12 61 84         [24]  545 	lcall	_pvPortMalloc
      0002DF AB 82            [24]  546 	mov	r3,dpl
      0002E1 AC 83            [24]  547 	mov	r4,dph
      0002E3 AD F0            [24]  548 	mov	r5,b
      0002E5 D0 02            [24]  549 	pop	ar2
      0002E7 D0 06            [24]  550 	pop	ar6
      0002E9 D0 07            [24]  551 	pop	ar7
      0002EB 8A 82            [24]  552 	mov	dpl,r2
      0002ED 8E 83            [24]  553 	mov	dph,r6
      0002EF 8F F0            [24]  554 	mov	b,r7
      0002F1 EB               [12]  555 	mov	a,r3
      0002F2 12 66 A0         [24]  556 	lcall	__gptrput
      0002F5 A3               [24]  557 	inc	dptr
      0002F6 EC               [12]  558 	mov	a,r4
      0002F7 12 66 A0         [24]  559 	lcall	__gptrput
      0002FA A3               [24]  560 	inc	dptr
      0002FB ED               [12]  561 	mov	a,r5
      0002FC 12 66 A0         [24]  562 	lcall	__gptrput
                           00007F   563 	C$tasks.c$774$1_0$146 ==.
                                    564 ;	src/FreeRTOS/tasks.c:774: if( pxNewTCB->pxStack == NULL )
      0002FF D0 07            [24]  565 	pop	ar7
      000301 D0 06            [24]  566 	pop	ar6
      000303 EB               [12]  567 	mov	a,r3
      000304 4C               [12]  568 	orl	a,r4
      000305 70 26            [24]  569 	jnz	00104$
                           000087   570 	C$tasks.c$777$4_0$149 ==.
                                    571 ;	src/FreeRTOS/tasks.c:777: vPortFree( pxNewTCB );
      000307 A8 0C            [24]  572 	mov	r0,_bp
      000309 08               [12]  573 	inc	r0
      00030A 86 03            [24]  574 	mov	ar3,@r0
      00030C 08               [12]  575 	inc	r0
      00030D 86 04            [24]  576 	mov	ar4,@r0
      00030F 08               [12]  577 	inc	r0
      000310 86 05            [24]  578 	mov	ar5,@r0
      000312 8B 82            [24]  579 	mov	dpl,r3
      000314 8C 83            [24]  580 	mov	dph,r4
      000316 8D F0            [24]  581 	mov	b,r5
      000318 C0 07            [24]  582 	push	ar7
      00031A C0 06            [24]  583 	push	ar6
      00031C 12 62 2D         [24]  584 	lcall	_vPortFree
      00031F D0 06            [24]  585 	pop	ar6
      000321 D0 07            [24]  586 	pop	ar7
                           0000A3   587 	C$tasks.c$778$4_0$149 ==.
                                    588 ;	src/FreeRTOS/tasks.c:778: pxNewTCB = NULL;
      000323 A8 0C            [24]  589 	mov	r0,_bp
      000325 08               [12]  590 	inc	r0
      000326 E4               [12]  591 	clr	a
      000327 F6               [12]  592 	mov	@r0,a
      000328 08               [12]  593 	inc	r0
      000329 F6               [12]  594 	mov	@r0,a
      00032A 08               [12]  595 	inc	r0
      00032B 76 00            [12]  596 	mov	@r0,#0x00
      00032D                        597 00104$:
                           0000AD   598 	C$tasks.c$813$1_0$146 ==.
                                    599 ;	src/FreeRTOS/tasks.c:813: if( pxNewTCB != NULL )
      00032D A8 0C            [24]  600 	mov	r0,_bp
      00032F 08               [12]  601 	inc	r0
      000330 E6               [12]  602 	mov	a,@r0
      000331 08               [12]  603 	inc	r0
      000332 46               [12]  604 	orl	a,@r0
      000333 70 03            [24]  605 	jnz	00124$
      000335 02 03 B9         [24]  606 	ljmp	00106$
      000338                        607 00124$:
                           0000B8   608 	C$tasks.c$823$2_0$150 ==.
                                    609 ;	src/FreeRTOS/tasks.c:823: prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
      000338 E5 0C            [12]  610 	mov	a,_bp
      00033A 24 F9            [12]  611 	add	a,#0xf9
      00033C F8               [12]  612 	mov	r0,a
      00033D 86 02            [24]  613 	mov	ar2,@r0
      00033F 08               [12]  614 	inc	r0
      000340 86 03            [24]  615 	mov	ar3,@r0
      000342 E4               [12]  616 	clr	a
      000343 FC               [12]  617 	mov	r4,a
      000344 FD               [12]  618 	mov	r5,a
      000345 C0 E0            [24]  619 	push	acc
      000347 C0 E0            [24]  620 	push	acc
      000349 C0 E0            [24]  621 	push	acc
      00034B A8 0C            [24]  622 	mov	r0,_bp
      00034D 08               [12]  623 	inc	r0
      00034E E6               [12]  624 	mov	a,@r0
      00034F C0 E0            [24]  625 	push	acc
      000351 08               [12]  626 	inc	r0
      000352 E6               [12]  627 	mov	a,@r0
      000353 C0 E0            [24]  628 	push	acc
      000355 08               [12]  629 	inc	r0
      000356 E6               [12]  630 	mov	a,@r0
      000357 C0 E0            [24]  631 	push	acc
      000359 E5 0C            [12]  632 	mov	a,_bp
      00035B 24 F2            [12]  633 	add	a,#0xf2
      00035D F8               [12]  634 	mov	r0,a
      00035E E6               [12]  635 	mov	a,@r0
      00035F C0 E0            [24]  636 	push	acc
      000361 08               [12]  637 	inc	r0
      000362 E6               [12]  638 	mov	a,@r0
      000363 C0 E0            [24]  639 	push	acc
      000365 08               [12]  640 	inc	r0
      000366 E6               [12]  641 	mov	a,@r0
      000367 C0 E0            [24]  642 	push	acc
      000369 E5 0C            [12]  643 	mov	a,_bp
      00036B 24 F5            [12]  644 	add	a,#0xf5
      00036D F8               [12]  645 	mov	r0,a
      00036E E6               [12]  646 	mov	a,@r0
      00036F C0 E0            [24]  647 	push	acc
      000371 E5 0C            [12]  648 	mov	a,_bp
      000373 24 F6            [12]  649 	add	a,#0xf6
      000375 F8               [12]  650 	mov	r0,a
      000376 E6               [12]  651 	mov	a,@r0
      000377 C0 E0            [24]  652 	push	acc
      000379 08               [12]  653 	inc	r0
      00037A E6               [12]  654 	mov	a,@r0
      00037B C0 E0            [24]  655 	push	acc
      00037D 08               [12]  656 	inc	r0
      00037E E6               [12]  657 	mov	a,@r0
      00037F C0 E0            [24]  658 	push	acc
      000381 C0 02            [24]  659 	push	ar2
      000383 C0 03            [24]  660 	push	ar3
      000385 C0 04            [24]  661 	push	ar4
      000387 C0 05            [24]  662 	push	ar5
      000389 E5 0C            [12]  663 	mov	a,_bp
      00038B 24 FB            [12]  664 	add	a,#0xfb
      00038D F8               [12]  665 	mov	r0,a
      00038E E6               [12]  666 	mov	a,@r0
      00038F C0 E0            [24]  667 	push	acc
      000391 08               [12]  668 	inc	r0
      000392 E6               [12]  669 	mov	a,@r0
      000393 C0 E0            [24]  670 	push	acc
      000395 08               [12]  671 	inc	r0
      000396 E6               [12]  672 	mov	a,@r0
      000397 C0 E0            [24]  673 	push	acc
      000399 8E 82            [24]  674 	mov	dpl,r6
      00039B 8F 83            [24]  675 	mov	dph,r7
      00039D 12 03 C2         [24]  676 	lcall	_prvInitialiseNewTask
      0003A0 E5 81            [12]  677 	mov	a,sp
      0003A2 24 EC            [12]  678 	add	a,#0xec
      0003A4 F5 81            [12]  679 	mov	sp,a
                           000126   680 	C$tasks.c$824$2_0$150 ==.
                                    681 ;	src/FreeRTOS/tasks.c:824: prvAddNewTaskToReadyList( pxNewTCB );
      0003A6 A8 0C            [24]  682 	mov	r0,_bp
      0003A8 08               [12]  683 	inc	r0
      0003A9 86 82            [24]  684 	mov	dpl,@r0
      0003AB 08               [12]  685 	inc	r0
      0003AC 86 83            [24]  686 	mov	dph,@r0
      0003AE 08               [12]  687 	inc	r0
      0003AF 86 F0            [24]  688 	mov	b,@r0
      0003B1 12 06 BB         [24]  689 	lcall	_prvAddNewTaskToReadyList
                           000134   690 	C$tasks.c$825$2_0$150 ==.
                                    691 ;	src/FreeRTOS/tasks.c:825: xReturn = pdPASS;
                           000134   692 	C$tasks.c$829$2_0$151 ==.
                                    693 ;	src/FreeRTOS/tasks.c:829: xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
                           000134   694 	C$tasks.c$832$1_0$146 ==.
                                    695 ;	src/FreeRTOS/tasks.c:832: return xReturn;
                           000134   696 	C$tasks.c$833$1_0$146 ==.
                                    697 ;	src/FreeRTOS/tasks.c:833: }
      0003B4 75 82 01         [24]  698 	mov	dpl,#0x01
      0003B7 80 03            [24]  699 	sjmp	00107$
      0003B9                        700 00106$:
      0003B9 75 82 FF         [24]  701 	mov	dpl,#0xff
      0003BC                        702 00107$:
      0003BC 85 0C 81         [24]  703 	mov	sp,_bp
      0003BF D0 0C            [24]  704 	pop	_bp
                           000141   705 	C$tasks.c$833$1_0$146 ==.
                           000141   706 	XG$xTaskCreate$0$0 ==.
      0003C1 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'prvInitialiseNewTask'
                                    710 ;------------------------------------------------------------
                                    711 ;pcName                    Allocated to stack - _bp -5
                                    712 ;ulStackDepth              Allocated to stack - _bp -9
                                    713 ;pvParameters              Allocated to stack - _bp -12
                                    714 ;uxPriority                Allocated to stack - _bp -13
                                    715 ;pxCreatedTask             Allocated to stack - _bp -16
                                    716 ;pxNewTCB                  Allocated to stack - _bp -19
                                    717 ;xRegions                  Allocated to stack - _bp -22
                                    718 ;pxTaskCode                Allocated to stack - _bp +1
                                    719 ;pxTopOfStack              Allocated to stack - _bp +12
                                    720 ;x                         Allocated to registers r3 
                                    721 ;sloc0                     Allocated to stack - _bp +3
                                    722 ;sloc1                     Allocated to stack - _bp +6
                                    723 ;sloc2                     Allocated to stack - _bp +9
                                    724 ;------------------------------------------------------------
                           000142   725 	Ftasks$prvInitialiseNewTask$0$0 ==.
                           000142   726 	C$tasks.c$838$1_0$153 ==.
                                    727 ;	src/FreeRTOS/tasks.c:838: static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
                                    728 ;	-----------------------------------------
                                    729 ;	 function prvInitialiseNewTask
                                    730 ;	-----------------------------------------
      0003C2                        731 _prvInitialiseNewTask:
      0003C2 C0 0C            [24]  732 	push	_bp
      0003C4 85 81 0C         [24]  733 	mov	_bp,sp
      0003C7 C0 82            [24]  734 	push	dpl
      0003C9 C0 83            [24]  735 	push	dph
      0003CB E5 81            [12]  736 	mov	a,sp
      0003CD 24 0C            [12]  737 	add	a,#0x0c
      0003CF F5 81            [12]  738 	mov	sp,a
                           000151   739 	C$tasks.c$896$2_0$154 ==.
                                    740 ;	src/FreeRTOS/tasks.c:896: pxTopOfStack = pxNewTCB->pxStack;
      0003D1 E5 0C            [12]  741 	mov	a,_bp
      0003D3 24 ED            [12]  742 	add	a,#0xed
      0003D5 F8               [12]  743 	mov	r0,a
      0003D6 E5 0C            [12]  744 	mov	a,_bp
      0003D8 24 09            [12]  745 	add	a,#0x09
      0003DA F9               [12]  746 	mov	r1,a
      0003DB E6               [12]  747 	mov	a,@r0
      0003DC F7               [12]  748 	mov	@r1,a
      0003DD 08               [12]  749 	inc	r0
      0003DE 09               [12]  750 	inc	r1
      0003DF E6               [12]  751 	mov	a,@r0
      0003E0 F7               [12]  752 	mov	@r1,a
      0003E1 08               [12]  753 	inc	r0
      0003E2 09               [12]  754 	inc	r1
      0003E3 E6               [12]  755 	mov	a,@r0
      0003E4 F7               [12]  756 	mov	@r1,a
      0003E5 E5 0C            [12]  757 	mov	a,_bp
      0003E7 24 09            [12]  758 	add	a,#0x09
      0003E9 F8               [12]  759 	mov	r0,a
      0003EA 74 20            [12]  760 	mov	a,#0x20
      0003EC 26               [12]  761 	add	a,@r0
      0003ED FA               [12]  762 	mov	r2,a
      0003EE E4               [12]  763 	clr	a
      0003EF 08               [12]  764 	inc	r0
      0003F0 36               [12]  765 	addc	a,@r0
      0003F1 FE               [12]  766 	mov	r6,a
      0003F2 08               [12]  767 	inc	r0
      0003F3 86 07            [24]  768 	mov	ar7,@r0
      0003F5 8A 82            [24]  769 	mov	dpl,r2
      0003F7 8E 83            [24]  770 	mov	dph,r6
      0003F9 8F F0            [24]  771 	mov	b,r7
      0003FB E5 0C            [12]  772 	mov	a,_bp
      0003FD 24 0C            [12]  773 	add	a,#0x0c
      0003FF F8               [12]  774 	mov	r0,a
      000400 12 70 5A         [24]  775 	lcall	__gptrget
      000403 F6               [12]  776 	mov	@r0,a
      000404 A3               [24]  777 	inc	dptr
      000405 12 70 5A         [24]  778 	lcall	__gptrget
      000408 08               [12]  779 	inc	r0
      000409 F6               [12]  780 	mov	@r0,a
      00040A A3               [24]  781 	inc	dptr
      00040B 12 70 5A         [24]  782 	lcall	__gptrget
      00040E 08               [12]  783 	inc	r0
      00040F F6               [12]  784 	mov	@r0,a
      000410 E5 0C            [12]  785 	mov	a,_bp
      000412 24 0C            [12]  786 	add	a,#0x0c
      000414 F8               [12]  787 	mov	r0,a
      000415 E5 0C            [12]  788 	mov	a,_bp
      000417 24 03            [12]  789 	add	a,#0x03
      000419 F9               [12]  790 	mov	r1,a
      00041A E6               [12]  791 	mov	a,@r0
      00041B F7               [12]  792 	mov	@r1,a
      00041C 08               [12]  793 	inc	r0
      00041D 09               [12]  794 	inc	r1
      00041E E6               [12]  795 	mov	a,@r0
      00041F F7               [12]  796 	mov	@r1,a
      000420 08               [12]  797 	inc	r0
      000421 09               [12]  798 	inc	r1
      000422 E6               [12]  799 	mov	a,@r0
      000423 F7               [12]  800 	mov	@r1,a
                           0001A4   801 	C$tasks.c$903$2_0$154 ==.
                                    802 ;	src/FreeRTOS/tasks.c:903: pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
      000424 E5 0C            [12]  803 	mov	a,_bp
      000426 24 09            [12]  804 	add	a,#0x09
      000428 F8               [12]  805 	mov	r0,a
      000429 E5 0C            [12]  806 	mov	a,_bp
      00042B 24 06            [12]  807 	add	a,#0x06
      00042D F9               [12]  808 	mov	r1,a
      00042E 74 2B            [12]  809 	mov	a,#0x2b
      000430 26               [12]  810 	add	a,@r0
      000431 F7               [12]  811 	mov	@r1,a
      000432 E4               [12]  812 	clr	a
      000433 08               [12]  813 	inc	r0
      000434 36               [12]  814 	addc	a,@r0
      000435 09               [12]  815 	inc	r1
      000436 F7               [12]  816 	mov	@r1,a
      000437 08               [12]  817 	inc	r0
      000438 09               [12]  818 	inc	r1
      000439 E6               [12]  819 	mov	a,@r0
      00043A F7               [12]  820 	mov	@r1,a
      00043B E5 0C            [12]  821 	mov	a,_bp
      00043D 24 F7            [12]  822 	add	a,#0xf7
      00043F F8               [12]  823 	mov	r0,a
      000440 E6               [12]  824 	mov	a,@r0
      000441 24 FF            [12]  825 	add	a,#0xff
      000443 FA               [12]  826 	mov	r2,a
      000444 08               [12]  827 	inc	r0
      000445 E6               [12]  828 	mov	a,@r0
      000446 34 FF            [12]  829 	addc	a,#0xff
      000448 FE               [12]  830 	mov	r6,a
      000449 08               [12]  831 	inc	r0
      00044A E6               [12]  832 	mov	a,@r0
      00044B 34 FF            [12]  833 	addc	a,#0xff
      00044D 08               [12]  834 	inc	r0
      00044E E6               [12]  835 	mov	a,@r0
      00044F 34 FF            [12]  836 	addc	a,#0xff
      000451 E5 0C            [12]  837 	mov	a,_bp
      000453 24 0C            [12]  838 	add	a,#0x0c
      000455 F8               [12]  839 	mov	r0,a
      000456 EA               [12]  840 	mov	a,r2
      000457 26               [12]  841 	add	a,@r0
      000458 FA               [12]  842 	mov	r2,a
      000459 EE               [12]  843 	mov	a,r6
      00045A 08               [12]  844 	inc	r0
      00045B 36               [12]  845 	addc	a,@r0
      00045C FE               [12]  846 	mov	r6,a
      00045D 08               [12]  847 	inc	r0
      00045E 86 05            [24]  848 	mov	ar5,@r0
      000460 E5 0C            [12]  849 	mov	a,_bp
      000462 24 06            [12]  850 	add	a,#0x06
      000464 F8               [12]  851 	mov	r0,a
      000465 86 82            [24]  852 	mov	dpl,@r0
      000467 08               [12]  853 	inc	r0
      000468 86 83            [24]  854 	mov	dph,@r0
      00046A 08               [12]  855 	inc	r0
      00046B 86 F0            [24]  856 	mov	b,@r0
      00046D EA               [12]  857 	mov	a,r2
      00046E 12 66 A0         [24]  858 	lcall	__gptrput
      000471 A3               [24]  859 	inc	dptr
      000472 EE               [12]  860 	mov	a,r6
      000473 12 66 A0         [24]  861 	lcall	__gptrput
      000476 A3               [24]  862 	inc	dptr
      000477 ED               [12]  863 	mov	a,r5
      000478 12 66 A0         [24]  864 	lcall	__gptrput
                           0001FB   865 	C$tasks.c$908$3_0$156 ==.
                                    866 ;	src/FreeRTOS/tasks.c:908: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
      00047B E5 0C            [12]  867 	mov	a,_bp
      00047D 24 09            [12]  868 	add	a,#0x09
      00047F F8               [12]  869 	mov	r0,a
      000480 74 23            [12]  870 	mov	a,#0x23
      000482 26               [12]  871 	add	a,@r0
      000483 FD               [12]  872 	mov	r5,a
      000484 E4               [12]  873 	clr	a
      000485 08               [12]  874 	inc	r0
      000486 36               [12]  875 	addc	a,@r0
      000487 FE               [12]  876 	mov	r6,a
      000488 08               [12]  877 	inc	r0
      000489 86 07            [24]  878 	mov	ar7,@r0
      00048B 7B 00            [12]  879 	mov	r3,#0x00
      00048D                        880 00108$:
                           00020D   881 	C$tasks.c$910$3_0$156 ==.
                                    882 ;	src/FreeRTOS/tasks.c:910: pxNewTCB->pcTaskName[ x ] = pcName[ x ];
      00048D E5 0C            [12]  883 	mov	a,_bp
      00048F 24 06            [12]  884 	add	a,#0x06
      000491 F8               [12]  885 	mov	r0,a
      000492 EB               [12]  886 	mov	a,r3
      000493 2D               [12]  887 	add	a,r5
      000494 F6               [12]  888 	mov	@r0,a
      000495 E4               [12]  889 	clr	a
      000496 3E               [12]  890 	addc	a,r6
      000497 08               [12]  891 	inc	r0
      000498 F6               [12]  892 	mov	@r0,a
      000499 08               [12]  893 	inc	r0
      00049A A6 07            [24]  894 	mov	@r0,ar7
      00049C C0 05            [24]  895 	push	ar5
      00049E C0 06            [24]  896 	push	ar6
      0004A0 C0 07            [24]  897 	push	ar7
      0004A2 E5 0C            [12]  898 	mov	a,_bp
      0004A4 24 FB            [12]  899 	add	a,#0xfb
      0004A6 F8               [12]  900 	mov	r0,a
      0004A7 EB               [12]  901 	mov	a,r3
      0004A8 26               [12]  902 	add	a,@r0
      0004A9 FD               [12]  903 	mov	r5,a
      0004AA E4               [12]  904 	clr	a
      0004AB 08               [12]  905 	inc	r0
      0004AC 36               [12]  906 	addc	a,@r0
      0004AD FE               [12]  907 	mov	r6,a
      0004AE 08               [12]  908 	inc	r0
      0004AF 86 07            [24]  909 	mov	ar7,@r0
      0004B1 8D 82            [24]  910 	mov	dpl,r5
      0004B3 8E 83            [24]  911 	mov	dph,r6
      0004B5 8F F0            [24]  912 	mov	b,r7
      0004B7 12 70 5A         [24]  913 	lcall	__gptrget
      0004BA FC               [12]  914 	mov	r4,a
      0004BB E5 0C            [12]  915 	mov	a,_bp
      0004BD 24 06            [12]  916 	add	a,#0x06
      0004BF F8               [12]  917 	mov	r0,a
      0004C0 86 82            [24]  918 	mov	dpl,@r0
      0004C2 08               [12]  919 	inc	r0
      0004C3 86 83            [24]  920 	mov	dph,@r0
      0004C5 08               [12]  921 	inc	r0
      0004C6 86 F0            [24]  922 	mov	b,@r0
      0004C8 EC               [12]  923 	mov	a,r4
      0004C9 12 66 A0         [24]  924 	lcall	__gptrput
                           00024C   925 	C$tasks.c$915$3_0$156 ==.
                                    926 ;	src/FreeRTOS/tasks.c:915: if( pcName[ x ] == ( char ) 0x00 )
      0004CC 8D 82            [24]  927 	mov	dpl,r5
      0004CE 8E 83            [24]  928 	mov	dph,r6
      0004D0 8F F0            [24]  929 	mov	b,r7
      0004D2 12 70 5A         [24]  930 	lcall	__gptrget
      0004D5 D0 07            [24]  931 	pop	ar7
      0004D7 D0 06            [24]  932 	pop	ar6
      0004D9 D0 05            [24]  933 	pop	ar5
      0004DB 60 06            [24]  934 	jz	00103$
                           00025D   935 	C$tasks.c$908$2_0$155 ==.
                                    936 ;	src/FreeRTOS/tasks.c:908: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
      0004DD 0B               [12]  937 	inc	r3
      0004DE BB 08 00         [24]  938 	cjne	r3,#0x08,00130$
      0004E1                        939 00130$:
      0004E1 40 AA            [24]  940 	jc	00108$
      0004E3                        941 00103$:
                           000263   942 	C$tasks.c$927$1_0$153 ==.
                                    943 ;	src/FreeRTOS/tasks.c:927: pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
      0004E3 E5 0C            [12]  944 	mov	a,_bp
      0004E5 24 09            [12]  945 	add	a,#0x09
      0004E7 F8               [12]  946 	mov	r0,a
      0004E8 74 2A            [12]  947 	mov	a,#0x2a
      0004EA 26               [12]  948 	add	a,@r0
      0004EB FD               [12]  949 	mov	r5,a
      0004EC E4               [12]  950 	clr	a
      0004ED 08               [12]  951 	inc	r0
      0004EE 36               [12]  952 	addc	a,@r0
      0004EF FE               [12]  953 	mov	r6,a
      0004F0 08               [12]  954 	inc	r0
      0004F1 86 07            [24]  955 	mov	ar7,@r0
      0004F3 8D 82            [24]  956 	mov	dpl,r5
      0004F5 8E 83            [24]  957 	mov	dph,r6
      0004F7 8F F0            [24]  958 	mov	b,r7
      0004F9 E4               [12]  959 	clr	a
      0004FA 12 66 A0         [24]  960 	lcall	__gptrput
                           00027D   961 	C$tasks.c$931$1_0$153 ==.
                                    962 ;	src/FreeRTOS/tasks.c:931: if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
      0004FD E5 0C            [12]  963 	mov	a,_bp
      0004FF 24 F3            [12]  964 	add	a,#0xf3
      000501 F8               [12]  965 	mov	r0,a
      000502 B6 04 00         [24]  966 	cjne	@r0,#0x04,00132$
      000505                        967 00132$:
      000505 40 07            [24]  968 	jc	00105$
                           000287   969 	C$tasks.c$933$2_0$159 ==.
                                    970 ;	src/FreeRTOS/tasks.c:933: uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
      000507 E5 0C            [12]  971 	mov	a,_bp
      000509 24 F3            [12]  972 	add	a,#0xf3
      00050B F8               [12]  973 	mov	r0,a
      00050C 76 03            [12]  974 	mov	@r0,#0x03
      00050E                        975 00105$:
                           00028E   976 	C$tasks.c$940$1_0$153 ==.
                                    977 ;	src/FreeRTOS/tasks.c:940: pxNewTCB->uxPriority = uxPriority;
      00050E E5 0C            [12]  978 	mov	a,_bp
      000510 24 09            [12]  979 	add	a,#0x09
      000512 F8               [12]  980 	mov	r0,a
      000513 74 1F            [12]  981 	mov	a,#0x1f
      000515 26               [12]  982 	add	a,@r0
      000516 FD               [12]  983 	mov	r5,a
      000517 E4               [12]  984 	clr	a
      000518 08               [12]  985 	inc	r0
      000519 36               [12]  986 	addc	a,@r0
      00051A FE               [12]  987 	mov	r6,a
      00051B 08               [12]  988 	inc	r0
      00051C 86 07            [24]  989 	mov	ar7,@r0
      00051E 8D 82            [24]  990 	mov	dpl,r5
      000520 8E 83            [24]  991 	mov	dph,r6
      000522 8F F0            [24]  992 	mov	b,r7
      000524 E5 0C            [12]  993 	mov	a,_bp
      000526 24 F3            [12]  994 	add	a,#0xf3
      000528 F8               [12]  995 	mov	r0,a
      000529 E6               [12]  996 	mov	a,@r0
      00052A 12 66 A0         [24]  997 	lcall	__gptrput
                           0002AD   998 	C$tasks.c$948$1_0$153 ==.
                                    999 ;	src/FreeRTOS/tasks.c:948: vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
      00052D E5 0C            [12] 1000 	mov	a,_bp
      00052F 24 09            [12] 1001 	add	a,#0x09
      000531 F8               [12] 1002 	mov	r0,a
      000532 74 03            [12] 1003 	mov	a,#0x03
      000534 26               [12] 1004 	add	a,@r0
      000535 FD               [12] 1005 	mov	r5,a
      000536 E4               [12] 1006 	clr	a
      000537 08               [12] 1007 	inc	r0
      000538 36               [12] 1008 	addc	a,@r0
      000539 FE               [12] 1009 	mov	r6,a
      00053A 08               [12] 1010 	inc	r0
      00053B 86 07            [24] 1011 	mov	ar7,@r0
      00053D 8D 82            [24] 1012 	mov	dpl,r5
      00053F 8E 83            [24] 1013 	mov	dph,r6
      000541 8F F0            [24] 1014 	mov	b,r7
      000543 12 2C BF         [24] 1015 	lcall	_vListInitialiseItem
                           0002C6  1016 	C$tasks.c$949$1_0$153 ==.
                                   1017 ;	src/FreeRTOS/tasks.c:949: vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
      000546 E5 0C            [12] 1018 	mov	a,_bp
      000548 24 09            [12] 1019 	add	a,#0x09
      00054A F8               [12] 1020 	mov	r0,a
      00054B 74 11            [12] 1021 	mov	a,#0x11
      00054D 26               [12] 1022 	add	a,@r0
      00054E FD               [12] 1023 	mov	r5,a
      00054F E4               [12] 1024 	clr	a
      000550 08               [12] 1025 	inc	r0
      000551 36               [12] 1026 	addc	a,@r0
      000552 FE               [12] 1027 	mov	r6,a
      000553 08               [12] 1028 	inc	r0
      000554 86 07            [24] 1029 	mov	ar7,@r0
      000556 8D 82            [24] 1030 	mov	dpl,r5
      000558 8E 83            [24] 1031 	mov	dph,r6
      00055A 8F F0            [24] 1032 	mov	b,r7
      00055C 12 2C BF         [24] 1033 	lcall	_vListInitialiseItem
                           0002DF  1034 	C$tasks.c$953$1_0$153 ==.
                                   1035 ;	src/FreeRTOS/tasks.c:953: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
      00055F E5 0C            [12] 1036 	mov	a,_bp
      000561 24 09            [12] 1037 	add	a,#0x09
      000563 F8               [12] 1038 	mov	r0,a
      000564 74 0B            [12] 1039 	mov	a,#0x0b
      000566 26               [12] 1040 	add	a,@r0
      000567 FD               [12] 1041 	mov	r5,a
      000568 E4               [12] 1042 	clr	a
      000569 08               [12] 1043 	inc	r0
      00056A 36               [12] 1044 	addc	a,@r0
      00056B FE               [12] 1045 	mov	r6,a
      00056C 08               [12] 1046 	inc	r0
      00056D 86 07            [24] 1047 	mov	ar7,@r0
      00056F E5 0C            [12] 1048 	mov	a,_bp
      000571 24 ED            [12] 1049 	add	a,#0xed
      000573 F8               [12] 1050 	mov	r0,a
      000574 86 02            [24] 1051 	mov	ar2,@r0
      000576 08               [12] 1052 	inc	r0
      000577 86 03            [24] 1053 	mov	ar3,@r0
      000579 08               [12] 1054 	inc	r0
      00057A 86 04            [24] 1055 	mov	ar4,@r0
      00057C 8D 82            [24] 1056 	mov	dpl,r5
      00057E 8E 83            [24] 1057 	mov	dph,r6
      000580 8F F0            [24] 1058 	mov	b,r7
      000582 EA               [12] 1059 	mov	a,r2
      000583 12 66 A0         [24] 1060 	lcall	__gptrput
      000586 A3               [24] 1061 	inc	dptr
      000587 EB               [12] 1062 	mov	a,r3
      000588 12 66 A0         [24] 1063 	lcall	__gptrput
      00058B A3               [24] 1064 	inc	dptr
      00058C EC               [12] 1065 	mov	a,r4
      00058D 12 66 A0         [24] 1066 	lcall	__gptrput
                           000310  1067 	C$tasks.c$956$1_0$153 ==.
                                   1068 ;	src/FreeRTOS/tasks.c:956: listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      000590 E5 0C            [12] 1069 	mov	a,_bp
      000592 24 09            [12] 1070 	add	a,#0x09
      000594 F8               [12] 1071 	mov	r0,a
      000595 E5 0C            [12] 1072 	mov	a,_bp
      000597 24 06            [12] 1073 	add	a,#0x06
      000599 F9               [12] 1074 	mov	r1,a
      00059A 74 11            [12] 1075 	mov	a,#0x11
      00059C 26               [12] 1076 	add	a,@r0
      00059D F7               [12] 1077 	mov	@r1,a
      00059E E4               [12] 1078 	clr	a
      00059F 08               [12] 1079 	inc	r0
      0005A0 36               [12] 1080 	addc	a,@r0
      0005A1 09               [12] 1081 	inc	r1
      0005A2 F7               [12] 1082 	mov	@r1,a
      0005A3 08               [12] 1083 	inc	r0
      0005A4 09               [12] 1084 	inc	r1
      0005A5 E6               [12] 1085 	mov	a,@r0
      0005A6 F7               [12] 1086 	mov	@r1,a
      0005A7 E5 0C            [12] 1087 	mov	a,_bp
      0005A9 24 F3            [12] 1088 	add	a,#0xf3
      0005AB F8               [12] 1089 	mov	r0,a
      0005AC 86 07            [24] 1090 	mov	ar7,@r0
      0005AE 7E 00            [12] 1091 	mov	r6,#0x00
      0005B0 74 04            [12] 1092 	mov	a,#0x04
      0005B2 C3               [12] 1093 	clr	c
      0005B3 9F               [12] 1094 	subb	a,r7
      0005B4 FF               [12] 1095 	mov	r7,a
      0005B5 E4               [12] 1096 	clr	a
      0005B6 9E               [12] 1097 	subb	a,r6
      0005B7 FE               [12] 1098 	mov	r6,a
      0005B8 E5 0C            [12] 1099 	mov	a,_bp
      0005BA 24 06            [12] 1100 	add	a,#0x06
      0005BC F8               [12] 1101 	mov	r0,a
      0005BD 86 82            [24] 1102 	mov	dpl,@r0
      0005BF 08               [12] 1103 	inc	r0
      0005C0 86 83            [24] 1104 	mov	dph,@r0
      0005C2 08               [12] 1105 	inc	r0
      0005C3 86 F0            [24] 1106 	mov	b,@r0
      0005C5 EF               [12] 1107 	mov	a,r7
      0005C6 12 66 A0         [24] 1108 	lcall	__gptrput
      0005C9 A3               [24] 1109 	inc	dptr
      0005CA EE               [12] 1110 	mov	a,r6
      0005CB 12 66 A0         [24] 1111 	lcall	__gptrput
                           00034E  1112 	C$tasks.c$957$1_0$153 ==.
                                   1113 ;	src/FreeRTOS/tasks.c:957: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
      0005CE E5 0C            [12] 1114 	mov	a,_bp
      0005D0 24 09            [12] 1115 	add	a,#0x09
      0005D2 F8               [12] 1116 	mov	r0,a
      0005D3 74 19            [12] 1117 	mov	a,#0x19
      0005D5 26               [12] 1118 	add	a,@r0
      0005D6 FD               [12] 1119 	mov	r5,a
      0005D7 E4               [12] 1120 	clr	a
      0005D8 08               [12] 1121 	inc	r0
      0005D9 36               [12] 1122 	addc	a,@r0
      0005DA FE               [12] 1123 	mov	r6,a
      0005DB 08               [12] 1124 	inc	r0
      0005DC 86 07            [24] 1125 	mov	ar7,@r0
      0005DE 8D 82            [24] 1126 	mov	dpl,r5
      0005E0 8E 83            [24] 1127 	mov	dph,r6
      0005E2 8F F0            [24] 1128 	mov	b,r7
      0005E4 EA               [12] 1129 	mov	a,r2
      0005E5 12 66 A0         [24] 1130 	lcall	__gptrput
      0005E8 A3               [24] 1131 	inc	dptr
      0005E9 EB               [12] 1132 	mov	a,r3
      0005EA 12 66 A0         [24] 1133 	lcall	__gptrput
      0005ED A3               [24] 1134 	inc	dptr
      0005EE EC               [12] 1135 	mov	a,r4
      0005EF 12 66 A0         [24] 1136 	lcall	__gptrput
                           000372  1137 	C$tasks.c$999$2_0$162 ==.
                                   1138 ;	src/FreeRTOS/tasks.c:999: pxNewTCB->ulNotifiedValue = 0;
      0005F2 E5 0C            [12] 1139 	mov	a,_bp
      0005F4 24 09            [12] 1140 	add	a,#0x09
      0005F6 F8               [12] 1141 	mov	r0,a
      0005F7 74 2E            [12] 1142 	mov	a,#0x2e
      0005F9 26               [12] 1143 	add	a,@r0
      0005FA FD               [12] 1144 	mov	r5,a
      0005FB E4               [12] 1145 	clr	a
      0005FC 08               [12] 1146 	inc	r0
      0005FD 36               [12] 1147 	addc	a,@r0
      0005FE FE               [12] 1148 	mov	r6,a
      0005FF 08               [12] 1149 	inc	r0
      000600 86 07            [24] 1150 	mov	ar7,@r0
      000602 8D 82            [24] 1151 	mov	dpl,r5
      000604 8E 83            [24] 1152 	mov	dph,r6
      000606 8F F0            [24] 1153 	mov	b,r7
      000608 E4               [12] 1154 	clr	a
      000609 12 66 A0         [24] 1155 	lcall	__gptrput
      00060C A3               [24] 1156 	inc	dptr
      00060D 12 66 A0         [24] 1157 	lcall	__gptrput
      000610 A3               [24] 1158 	inc	dptr
      000611 12 66 A0         [24] 1159 	lcall	__gptrput
      000614 A3               [24] 1160 	inc	dptr
      000615 12 66 A0         [24] 1161 	lcall	__gptrput
                           000398  1162 	C$tasks.c$1000$2_0$162 ==.
                                   1163 ;	src/FreeRTOS/tasks.c:1000: pxNewTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
      000618 E5 0C            [12] 1164 	mov	a,_bp
      00061A 24 09            [12] 1165 	add	a,#0x09
      00061C F8               [12] 1166 	mov	r0,a
      00061D 74 32            [12] 1167 	mov	a,#0x32
      00061F 26               [12] 1168 	add	a,@r0
      000620 FD               [12] 1169 	mov	r5,a
      000621 E4               [12] 1170 	clr	a
      000622 08               [12] 1171 	inc	r0
      000623 36               [12] 1172 	addc	a,@r0
      000624 FE               [12] 1173 	mov	r6,a
      000625 08               [12] 1174 	inc	r0
      000626 86 07            [24] 1175 	mov	ar7,@r0
      000628 8D 82            [24] 1176 	mov	dpl,r5
      00062A 8E 83            [24] 1177 	mov	dph,r6
      00062C 8F F0            [24] 1178 	mov	b,r7
      00062E E4               [12] 1179 	clr	a
      00062F 12 66 A0         [24] 1180 	lcall	__gptrput
                           0003B2  1181 	C$tasks.c$1027$2_0$163 ==.
                                   1182 ;	src/FreeRTOS/tasks.c:1027: pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
      000632 E5 0C            [12] 1183 	mov	a,_bp
      000634 24 F4            [12] 1184 	add	a,#0xf4
      000636 F8               [12] 1185 	mov	r0,a
      000637 E6               [12] 1186 	mov	a,@r0
      000638 C0 E0            [24] 1187 	push	acc
      00063A 08               [12] 1188 	inc	r0
      00063B E6               [12] 1189 	mov	a,@r0
      00063C C0 E0            [24] 1190 	push	acc
      00063E 08               [12] 1191 	inc	r0
      00063F E6               [12] 1192 	mov	a,@r0
      000640 C0 E0            [24] 1193 	push	acc
      000642 A8 0C            [24] 1194 	mov	r0,_bp
      000644 08               [12] 1195 	inc	r0
      000645 E6               [12] 1196 	mov	a,@r0
      000646 C0 E0            [24] 1197 	push	acc
      000648 08               [12] 1198 	inc	r0
      000649 E6               [12] 1199 	mov	a,@r0
      00064A C0 E0            [24] 1200 	push	acc
      00064C E5 0C            [12] 1201 	mov	a,_bp
      00064E 24 03            [12] 1202 	add	a,#0x03
      000650 F8               [12] 1203 	mov	r0,a
      000651 86 82            [24] 1204 	mov	dpl,@r0
      000653 08               [12] 1205 	inc	r0
      000654 86 83            [24] 1206 	mov	dph,@r0
      000656 08               [12] 1207 	inc	r0
      000657 86 F0            [24] 1208 	mov	b,@r0
      000659 12 62 4B         [24] 1209 	lcall	_pxPortInitialiseStack
      00065C AF 82            [24] 1210 	mov	r7,dpl
      00065E AE 83            [24] 1211 	mov	r6,dph
      000660 AD F0            [24] 1212 	mov	r5,b
      000662 E5 81            [12] 1213 	mov	a,sp
      000664 24 FB            [12] 1214 	add	a,#0xfb
      000666 F5 81            [12] 1215 	mov	sp,a
      000668 E5 0C            [12] 1216 	mov	a,_bp
      00066A 24 09            [12] 1217 	add	a,#0x09
      00066C F8               [12] 1218 	mov	r0,a
      00066D 86 82            [24] 1219 	mov	dpl,@r0
      00066F 08               [12] 1220 	inc	r0
      000670 86 83            [24] 1221 	mov	dph,@r0
      000672 08               [12] 1222 	inc	r0
      000673 86 F0            [24] 1223 	mov	b,@r0
      000675 EF               [12] 1224 	mov	a,r7
      000676 12 66 A0         [24] 1225 	lcall	__gptrput
      000679 A3               [24] 1226 	inc	dptr
      00067A EE               [12] 1227 	mov	a,r6
      00067B 12 66 A0         [24] 1228 	lcall	__gptrput
      00067E A3               [24] 1229 	inc	dptr
      00067F ED               [12] 1230 	mov	a,r5
      000680 12 66 A0         [24] 1231 	lcall	__gptrput
                           000403  1232 	C$tasks.c$1031$1_0$153 ==.
                                   1233 ;	src/FreeRTOS/tasks.c:1031: if( pxCreatedTask != NULL )
      000683 E5 0C            [12] 1234 	mov	a,_bp
      000685 24 F0            [12] 1235 	add	a,#0xf0
      000687 F8               [12] 1236 	mov	r0,a
      000688 E6               [12] 1237 	mov	a,@r0
      000689 08               [12] 1238 	inc	r0
      00068A 46               [12] 1239 	orl	a,@r0
      00068B 60 28            [24] 1240 	jz	00110$
                           00040D  1241 	C$tasks.c$1035$2_0$164 ==.
                                   1242 ;	src/FreeRTOS/tasks.c:1035: *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
      00068D E5 0C            [12] 1243 	mov	a,_bp
      00068F 24 F0            [12] 1244 	add	a,#0xf0
      000691 F8               [12] 1245 	mov	r0,a
      000692 86 05            [24] 1246 	mov	ar5,@r0
      000694 08               [12] 1247 	inc	r0
      000695 86 06            [24] 1248 	mov	ar6,@r0
      000697 08               [12] 1249 	inc	r0
      000698 86 07            [24] 1250 	mov	ar7,@r0
      00069A 8D 82            [24] 1251 	mov	dpl,r5
      00069C 8E 83            [24] 1252 	mov	dph,r6
      00069E 8F F0            [24] 1253 	mov	b,r7
      0006A0 E5 0C            [12] 1254 	mov	a,_bp
      0006A2 24 09            [12] 1255 	add	a,#0x09
      0006A4 F8               [12] 1256 	mov	r0,a
      0006A5 E6               [12] 1257 	mov	a,@r0
      0006A6 12 66 A0         [24] 1258 	lcall	__gptrput
      0006A9 A3               [24] 1259 	inc	dptr
      0006AA 08               [12] 1260 	inc	r0
      0006AB E6               [12] 1261 	mov	a,@r0
      0006AC 12 66 A0         [24] 1262 	lcall	__gptrput
      0006AF A3               [24] 1263 	inc	dptr
      0006B0 08               [12] 1264 	inc	r0
      0006B1 E6               [12] 1265 	mov	a,@r0
      0006B2 12 66 A0         [24] 1266 	lcall	__gptrput
      0006B5                       1267 00110$:
                           000435  1268 	C$tasks.c$1041$1_0$153 ==.
                                   1269 ;	src/FreeRTOS/tasks.c:1041: }
      0006B5 85 0C 81         [24] 1270 	mov	sp,_bp
      0006B8 D0 0C            [24] 1271 	pop	_bp
                           00043A  1272 	C$tasks.c$1041$1_0$153 ==.
                           00043A  1273 	XFtasks$prvInitialiseNewTask$0$0 ==.
      0006BA 22               [24] 1274 	ret
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'prvAddNewTaskToReadyList'
                                   1277 ;------------------------------------------------------------
                                   1278 ;pxNewTCB                  Allocated to registers r5 r6 r7 
                                   1279 ;------------------------------------------------------------
                           00043B  1280 	Ftasks$prvAddNewTaskToReadyList$0$0 ==.
                           00043B  1281 	C$tasks.c$1044$1_0$167 ==.
                                   1282 ;	src/FreeRTOS/tasks.c:1044: static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function prvAddNewTaskToReadyList
                                   1285 ;	-----------------------------------------
      0006BB                       1286 _prvAddNewTaskToReadyList:
      0006BB AD 82            [24] 1287 	mov	r5,dpl
      0006BD AE 83            [24] 1288 	mov	r6,dph
      0006BF AF F0            [24] 1289 	mov	r7,b
                           000441  1290 	C$tasks.c$1048$1_0$167 ==.
                                   1291 ;	src/FreeRTOS/tasks.c:1048: taskENTER_CRITICAL();
      0006C1 C0 E0            [24] 1292 	push ACC 
      0006C3 C0 A8            [24] 1293 	push IE 
                                   1294 ;	assignBit
      0006C5 C2 AF            [12] 1295 	clr	_EA
                           000447  1296 	C$tasks.c$1050$2_0$168 ==.
                                   1297 ;	src/FreeRTOS/tasks.c:1050: uxCurrentNumberOfTasks++;
      0006C7 90 00 66         [24] 1298 	mov	dptr,#_uxCurrentNumberOfTasks
      0006CA E0               [24] 1299 	movx	a,@dptr
      0006CB 24 01            [12] 1300 	add	a,#0x01
      0006CD F0               [24] 1301 	movx	@dptr,a
                           00044E  1302 	C$tasks.c$1051$2_0$168 ==.
                                   1303 ;	src/FreeRTOS/tasks.c:1051: if( pxCurrentTCB == NULL )
      0006CE 90 00 09         [24] 1304 	mov	dptr,#_pxCurrentTCB
      0006D1 E0               [24] 1305 	movx	a,@dptr
      0006D2 FA               [12] 1306 	mov	r2,a
      0006D3 A3               [24] 1307 	inc	dptr
      0006D4 E0               [24] 1308 	movx	a,@dptr
      0006D5 FB               [12] 1309 	mov	r3,a
      0006D6 A3               [24] 1310 	inc	dptr
      0006D7 E0               [24] 1311 	movx	a,@dptr
      0006D8 FC               [12] 1312 	mov	r4,a
      0006D9 EA               [12] 1313 	mov	a,r2
      0006DA 4B               [12] 1314 	orl	a,r3
      0006DB 70 24            [24] 1315 	jnz	00108$
                           00045D  1316 	C$tasks.c$1055$3_0$169 ==.
                                   1317 ;	src/FreeRTOS/tasks.c:1055: pxCurrentTCB = pxNewTCB;
      0006DD 90 00 09         [24] 1318 	mov	dptr,#_pxCurrentTCB
      0006E0 ED               [12] 1319 	mov	a,r5
      0006E1 F0               [24] 1320 	movx	@dptr,a
      0006E2 EE               [12] 1321 	mov	a,r6
      0006E3 A3               [24] 1322 	inc	dptr
      0006E4 F0               [24] 1323 	movx	@dptr,a
      0006E5 EF               [12] 1324 	mov	a,r7
      0006E6 A3               [24] 1325 	inc	dptr
      0006E7 F0               [24] 1326 	movx	@dptr,a
                           000468  1327 	C$tasks.c$1057$3_0$169 ==.
                                   1328 ;	src/FreeRTOS/tasks.c:1057: if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
      0006E8 90 00 66         [24] 1329 	mov	dptr,#_uxCurrentNumberOfTasks
      0006EB E0               [24] 1330 	movx	a,@dptr
      0006EC FC               [12] 1331 	mov	r4,a
      0006ED BC 01 55         [24] 1332 	cjne	r4,#0x01,00109$
                           000470  1333 	C$tasks.c$1062$4_0$170 ==.
                                   1334 ;	src/FreeRTOS/tasks.c:1062: prvInitialiseTaskLists();
      0006F0 C0 07            [24] 1335 	push	ar7
      0006F2 C0 06            [24] 1336 	push	ar6
      0006F4 C0 05            [24] 1337 	push	ar5
      0006F6 12 14 65         [24] 1338 	lcall	_prvInitialiseTaskLists
      0006F9 D0 05            [24] 1339 	pop	ar5
      0006FB D0 06            [24] 1340 	pop	ar6
      0006FD D0 07            [24] 1341 	pop	ar7
      0006FF 80 44            [24] 1342 	sjmp	00109$
      000701                       1343 00108$:
                           000481  1344 	C$tasks.c$1074$3_0$172 ==.
                                   1345 ;	src/FreeRTOS/tasks.c:1074: if( xSchedulerRunning == pdFALSE )
      000701 90 00 6A         [24] 1346 	mov	dptr,#_xSchedulerRunning
      000704 E0               [24] 1347 	movx	a,@dptr
      000705 70 3E            [24] 1348 	jnz	00109$
                           000487  1349 	C$tasks.c$1076$4_0$173 ==.
                                   1350 ;	src/FreeRTOS/tasks.c:1076: if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
      000707 90 00 09         [24] 1351 	mov	dptr,#_pxCurrentTCB
      00070A E0               [24] 1352 	movx	a,@dptr
      00070B FA               [12] 1353 	mov	r2,a
      00070C A3               [24] 1354 	inc	dptr
      00070D E0               [24] 1355 	movx	a,@dptr
      00070E FB               [12] 1356 	mov	r3,a
      00070F A3               [24] 1357 	inc	dptr
      000710 E0               [24] 1358 	movx	a,@dptr
      000711 FC               [12] 1359 	mov	r4,a
      000712 74 1F            [12] 1360 	mov	a,#0x1f
      000714 2A               [12] 1361 	add	a,r2
      000715 FA               [12] 1362 	mov	r2,a
      000716 E4               [12] 1363 	clr	a
      000717 3B               [12] 1364 	addc	a,r3
      000718 FB               [12] 1365 	mov	r3,a
      000719 8A 82            [24] 1366 	mov	dpl,r2
      00071B 8B 83            [24] 1367 	mov	dph,r3
      00071D 8C F0            [24] 1368 	mov	b,r4
      00071F 12 70 5A         [24] 1369 	lcall	__gptrget
      000722 FA               [12] 1370 	mov	r2,a
      000723 74 1F            [12] 1371 	mov	a,#0x1f
      000725 2D               [12] 1372 	add	a,r5
      000726 F9               [12] 1373 	mov	r1,a
      000727 E4               [12] 1374 	clr	a
      000728 3E               [12] 1375 	addc	a,r6
      000729 FB               [12] 1376 	mov	r3,a
      00072A 8F 04            [24] 1377 	mov	ar4,r7
      00072C 89 82            [24] 1378 	mov	dpl,r1
      00072E 8B 83            [24] 1379 	mov	dph,r3
      000730 8C F0            [24] 1380 	mov	b,r4
      000732 12 70 5A         [24] 1381 	lcall	__gptrget
      000735 F9               [12] 1382 	mov	r1,a
      000736 C3               [12] 1383 	clr	c
      000737 9A               [12] 1384 	subb	a,r2
      000738 40 0B            [24] 1385 	jc	00109$
                           0004BA  1386 	C$tasks.c$1078$5_0$174 ==.
                                   1387 ;	src/FreeRTOS/tasks.c:1078: pxCurrentTCB = pxNewTCB;
      00073A 90 00 09         [24] 1388 	mov	dptr,#_pxCurrentTCB
      00073D ED               [12] 1389 	mov	a,r5
      00073E F0               [24] 1390 	movx	@dptr,a
      00073F EE               [12] 1391 	mov	a,r6
      000740 A3               [24] 1392 	inc	dptr
      000741 F0               [24] 1393 	movx	@dptr,a
      000742 EF               [12] 1394 	mov	a,r7
      000743 A3               [24] 1395 	inc	dptr
      000744 F0               [24] 1396 	movx	@dptr,a
      000745                       1397 00109$:
                           0004C5  1398 	C$tasks.c$1091$2_0$168 ==.
                                   1399 ;	src/FreeRTOS/tasks.c:1091: uxTaskNumber++;
      000745 90 00 6E         [24] 1400 	mov	dptr,#_uxTaskNumber
      000748 E0               [24] 1401 	movx	a,@dptr
      000749 24 01            [12] 1402 	add	a,#0x01
      00074B F0               [24] 1403 	movx	@dptr,a
                           0004CC  1404 	C$tasks.c$1101$3_0$177 ==.
                                   1405 ;	src/FreeRTOS/tasks.c:1101: prvAddTaskToReadyList( pxNewTCB );
      00074C 74 1F            [12] 1406 	mov	a,#0x1f
      00074E 2D               [12] 1407 	add	a,r5
      00074F FA               [12] 1408 	mov	r2,a
      000750 E4               [12] 1409 	clr	a
      000751 3E               [12] 1410 	addc	a,r6
      000752 FB               [12] 1411 	mov	r3,a
      000753 8F 04            [24] 1412 	mov	ar4,r7
      000755 8A 82            [24] 1413 	mov	dpl,r2
      000757 8B 83            [24] 1414 	mov	dph,r3
      000759 8C F0            [24] 1415 	mov	b,r4
      00075B 12 70 5A         [24] 1416 	lcall	__gptrget
      00075E F9               [12] 1417 	mov	r1,a
      00075F 90 00 69         [24] 1418 	mov	dptr,#_uxTopReadyPriority
      000762 E0               [24] 1419 	movx	a,@dptr
      000763 C3               [12] 1420 	clr	c
      000764 99               [12] 1421 	subb	a,r1
      000765 50 05            [24] 1422 	jnc	00111$
      000767 90 00 69         [24] 1423 	mov	dptr,#_uxTopReadyPriority
      00076A E9               [12] 1424 	mov	a,r1
      00076B F0               [24] 1425 	movx	@dptr,a
      00076C                       1426 00111$:
      00076C 74 03            [12] 1427 	mov	a,#0x03
      00076E 2D               [12] 1428 	add	a,r5
      00076F FD               [12] 1429 	mov	r5,a
      000770 E4               [12] 1430 	clr	a
      000771 3E               [12] 1431 	addc	a,r6
      000772 FE               [12] 1432 	mov	r6,a
      000773 8A 82            [24] 1433 	mov	dpl,r2
      000775 8B 83            [24] 1434 	mov	dph,r3
      000777 8C F0            [24] 1435 	mov	b,r4
      000779 12 70 5A         [24] 1436 	lcall	__gptrget
      00077C 75 F0 0C         [24] 1437 	mov	b,#0x0c
      00077F A4               [48] 1438 	mul	ab
      000780 24 0C            [12] 1439 	add	a,#_pxReadyTasksLists
      000782 F8               [12] 1440 	mov	r0,a
      000783 74 00            [12] 1441 	mov	a,#(_pxReadyTasksLists >> 8)
      000785 35 F0            [12] 1442 	addc	a,b
      000787 F9               [12] 1443 	mov	r1,a
      000788 C0 02            [24] 1444 	push	ar2
      00078A C0 03            [24] 1445 	push	ar3
      00078C C0 04            [24] 1446 	push	ar4
      00078E 7C 00            [12] 1447 	mov	r4,#0x00
      000790 C0 04            [24] 1448 	push	ar4
      000792 C0 03            [24] 1449 	push	ar3
      000794 C0 02            [24] 1450 	push	ar2
      000796 C0 05            [24] 1451 	push	ar5
      000798 C0 06            [24] 1452 	push	ar6
      00079A C0 07            [24] 1453 	push	ar7
      00079C 88 82            [24] 1454 	mov	dpl,r0
      00079E 89 83            [24] 1455 	mov	dph,r1
      0007A0 8C F0            [24] 1456 	mov	b,r4
      0007A2 12 2C DF         [24] 1457 	lcall	_vListInsertEnd
      0007A5 15 81            [12] 1458 	dec	sp
      0007A7 15 81            [12] 1459 	dec	sp
      0007A9 15 81            [12] 1460 	dec	sp
      0007AB D0 02            [24] 1461 	pop	ar2
      0007AD D0 03            [24] 1462 	pop	ar3
      0007AF D0 04            [24] 1463 	pop	ar4
                           000531  1464 	C$tasks.c$1105$1_0$167 ==.
                                   1465 ;	src/FreeRTOS/tasks.c:1105: taskEXIT_CRITICAL();
      0007B1 D0 E0            [24] 1466 	pop ACC 
      0007B3 53 E0 80         [24] 1467 	anl	_ACC,#0x80
      0007B6 E5 E0            [12] 1468 	mov	a,_ACC
      0007B8 42 A8            [12] 1469 	orl	_IE,a
      0007BA D0 E0            [24] 1470 	pop ACC 
                           00053C  1471 	C$tasks.c$1107$1_0$167 ==.
                                   1472 ;	src/FreeRTOS/tasks.c:1107: if( xSchedulerRunning != pdFALSE )
      0007BC 90 00 6A         [24] 1473 	mov	dptr,#_xSchedulerRunning
      0007BF E0               [24] 1474 	movx	a,@dptr
      0007C0 D0 04            [24] 1475 	pop	ar4
      0007C2 D0 03            [24] 1476 	pop	ar3
      0007C4 D0 02            [24] 1477 	pop	ar2
      0007C6 60 2E            [24] 1478 	jz	00116$
                           000548  1479 	C$tasks.c$1111$2_0$179 ==.
                                   1480 ;	src/FreeRTOS/tasks.c:1111: if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
      0007C8 90 00 09         [24] 1481 	mov	dptr,#_pxCurrentTCB
      0007CB E0               [24] 1482 	movx	a,@dptr
      0007CC FD               [12] 1483 	mov	r5,a
      0007CD A3               [24] 1484 	inc	dptr
      0007CE E0               [24] 1485 	movx	a,@dptr
      0007CF FE               [12] 1486 	mov	r6,a
      0007D0 A3               [24] 1487 	inc	dptr
      0007D1 E0               [24] 1488 	movx	a,@dptr
      0007D2 FF               [12] 1489 	mov	r7,a
      0007D3 74 1F            [12] 1490 	mov	a,#0x1f
      0007D5 2D               [12] 1491 	add	a,r5
      0007D6 FD               [12] 1492 	mov	r5,a
      0007D7 E4               [12] 1493 	clr	a
      0007D8 3E               [12] 1494 	addc	a,r6
      0007D9 FE               [12] 1495 	mov	r6,a
      0007DA 8D 82            [24] 1496 	mov	dpl,r5
      0007DC 8E 83            [24] 1497 	mov	dph,r6
      0007DE 8F F0            [24] 1498 	mov	b,r7
      0007E0 12 70 5A         [24] 1499 	lcall	__gptrget
      0007E3 FD               [12] 1500 	mov	r5,a
      0007E4 8A 82            [24] 1501 	mov	dpl,r2
      0007E6 8B 83            [24] 1502 	mov	dph,r3
      0007E8 8C F0            [24] 1503 	mov	b,r4
      0007EA 12 70 5A         [24] 1504 	lcall	__gptrget
      0007ED FA               [12] 1505 	mov	r2,a
      0007EE C3               [12] 1506 	clr	c
      0007EF ED               [12] 1507 	mov	a,r5
      0007F0 9A               [12] 1508 	subb	a,r2
      0007F1 50 03            [24] 1509 	jnc	00116$
                           000573  1510 	C$tasks.c$1113$3_0$180 ==.
                                   1511 ;	src/FreeRTOS/tasks.c:1113: taskYIELD_IF_USING_PREEMPTION();
      0007F3 12 64 B5         [24] 1512 	lcall	_vPortYield
      0007F6                       1513 00116$:
                           000576  1514 	C$tasks.c$1124$1_0$167 ==.
                                   1515 ;	src/FreeRTOS/tasks.c:1124: }
                           000576  1516 	C$tasks.c$1124$1_0$167 ==.
                           000576  1517 	XFtasks$prvAddNewTaskToReadyList$0$0 ==.
      0007F6 22               [24] 1518 	ret
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'vTaskDelayUntil'
                                   1521 ;------------------------------------------------------------
                                   1522 ;xTimeIncrement            Allocated to stack - _bp -4
                                   1523 ;pxPreviousWakeTime        Allocated to stack - _bp +1
                                   1524 ;xTimeToWake               Allocated to registers r2 r7 
                                   1525 ;xAlreadyYielded           Allocated to registers 
                                   1526 ;xShouldDelay              Allocated to registers r6 
                                   1527 ;xConstTickCount           Allocated to stack - _bp +4
                                   1528 ;------------------------------------------------------------
                           000577  1529 	G$vTaskDelayUntil$0$0 ==.
                           000577  1530 	C$tasks.c$1221$1_0$184 ==.
                                   1531 ;	src/FreeRTOS/tasks.c:1221: void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
                                   1532 ;	-----------------------------------------
                                   1533 ;	 function vTaskDelayUntil
                                   1534 ;	-----------------------------------------
      0007F7                       1535 _vTaskDelayUntil:
      0007F7 C0 0C            [24] 1536 	push	_bp
      0007F9 85 81 0C         [24] 1537 	mov	_bp,sp
      0007FC C0 82            [24] 1538 	push	dpl
      0007FE C0 83            [24] 1539 	push	dph
      000800 C0 F0            [24] 1540 	push	b
      000802 05 81            [12] 1541 	inc	sp
      000804 05 81            [12] 1542 	inc	sp
                           000586  1543 	C$tasks.c$1224$2_0$184 ==.
                                   1544 ;	src/FreeRTOS/tasks.c:1224: BaseType_t xAlreadyYielded, xShouldDelay = pdFALSE;
      000806 7E 00            [12] 1545 	mov	r6,#0x00
                           000588  1546 	C$tasks.c$1230$1_0$184 ==.
                                   1547 ;	src/FreeRTOS/tasks.c:1230: vTaskSuspendAll();
      000808 C0 06            [24] 1548 	push	ar6
      00080A 12 09 4A         [24] 1549 	lcall	_vTaskSuspendAll
      00080D D0 06            [24] 1550 	pop	ar6
                           00058F  1551 	C$tasks.c$1234$3_0$185 ==.
                                   1552 ;	src/FreeRTOS/tasks.c:1234: const TickType_t xConstTickCount = xTickCount;
      00080F 90 00 67         [24] 1553 	mov	dptr,#_xTickCount
      000812 E0               [24] 1554 	movx	a,@dptr
      000813 FA               [12] 1555 	mov	r2,a
      000814 A3               [24] 1556 	inc	dptr
      000815 E0               [24] 1557 	movx	a,@dptr
      000816 FB               [12] 1558 	mov	r3,a
      000817 E5 0C            [12] 1559 	mov	a,_bp
      000819 24 04            [12] 1560 	add	a,#0x04
      00081B F8               [12] 1561 	mov	r0,a
      00081C A6 02            [24] 1562 	mov	@r0,ar2
      00081E 08               [12] 1563 	inc	r0
      00081F A6 03            [24] 1564 	mov	@r0,ar3
                           0005A1  1565 	C$tasks.c$1237$2_0$185 ==.
                                   1566 ;	src/FreeRTOS/tasks.c:1237: xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;
      000821 A8 0C            [24] 1567 	mov	r0,_bp
      000823 08               [12] 1568 	inc	r0
      000824 86 82            [24] 1569 	mov	dpl,@r0
      000826 08               [12] 1570 	inc	r0
      000827 86 83            [24] 1571 	mov	dph,@r0
      000829 08               [12] 1572 	inc	r0
      00082A 86 F0            [24] 1573 	mov	b,@r0
      00082C 12 70 5A         [24] 1574 	lcall	__gptrget
      00082F FB               [12] 1575 	mov	r3,a
      000830 A3               [24] 1576 	inc	dptr
      000831 12 70 5A         [24] 1577 	lcall	__gptrget
      000834 FC               [12] 1578 	mov	r4,a
      000835 E5 0C            [12] 1579 	mov	a,_bp
      000837 24 FC            [12] 1580 	add	a,#0xfc
      000839 F8               [12] 1581 	mov	r0,a
      00083A E6               [12] 1582 	mov	a,@r0
      00083B 2B               [12] 1583 	add	a,r3
      00083C FD               [12] 1584 	mov	r5,a
      00083D 08               [12] 1585 	inc	r0
      00083E E6               [12] 1586 	mov	a,@r0
      00083F 3C               [12] 1587 	addc	a,r4
      000840 FF               [12] 1588 	mov	r7,a
      000841 8D 02            [24] 1589 	mov	ar2,r5
                           0005C3  1590 	C$tasks.c$1239$2_0$185 ==.
                                   1591 ;	src/FreeRTOS/tasks.c:1239: if( xConstTickCount < *pxPreviousWakeTime )
      000843 E5 0C            [12] 1592 	mov	a,_bp
      000845 24 04            [12] 1593 	add	a,#0x04
      000847 F8               [12] 1594 	mov	r0,a
      000848 C3               [12] 1595 	clr	c
      000849 E6               [12] 1596 	mov	a,@r0
      00084A 9B               [12] 1597 	subb	a,r3
      00084B 08               [12] 1598 	inc	r0
      00084C E6               [12] 1599 	mov	a,@r0
      00084D 9C               [12] 1600 	subb	a,r4
      00084E 50 18            [24] 1601 	jnc	00108$
                           0005D0  1602 	C$tasks.c$1246$3_0$186 ==.
                                   1603 ;	src/FreeRTOS/tasks.c:1246: if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
      000850 C3               [12] 1604 	clr	c
      000851 EA               [12] 1605 	mov	a,r2
      000852 9B               [12] 1606 	subb	a,r3
      000853 EF               [12] 1607 	mov	a,r7
      000854 9C               [12] 1608 	subb	a,r4
      000855 50 27            [24] 1609 	jnc	00109$
      000857 E5 0C            [12] 1610 	mov	a,_bp
      000859 24 04            [12] 1611 	add	a,#0x04
      00085B F8               [12] 1612 	mov	r0,a
      00085C C3               [12] 1613 	clr	c
      00085D E6               [12] 1614 	mov	a,@r0
      00085E 9A               [12] 1615 	subb	a,r2
      00085F 08               [12] 1616 	inc	r0
      000860 E6               [12] 1617 	mov	a,@r0
      000861 9F               [12] 1618 	subb	a,r7
      000862 50 1A            [24] 1619 	jnc	00109$
                           0005E4  1620 	C$tasks.c$1248$4_0$187 ==.
                                   1621 ;	src/FreeRTOS/tasks.c:1248: xShouldDelay = pdTRUE;
      000864 7E 01            [12] 1622 	mov	r6,#0x01
      000866 80 16            [24] 1623 	sjmp	00109$
      000868                       1624 00108$:
                           0005E8  1625 	C$tasks.c$1260$3_0$189 ==.
                                   1626 ;	src/FreeRTOS/tasks.c:1260: if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
      000868 C3               [12] 1627 	clr	c
      000869 EA               [12] 1628 	mov	a,r2
      00086A 9B               [12] 1629 	subb	a,r3
      00086B EF               [12] 1630 	mov	a,r7
      00086C 9C               [12] 1631 	subb	a,r4
      00086D 40 0D            [24] 1632 	jc	00104$
      00086F E5 0C            [12] 1633 	mov	a,_bp
      000871 24 04            [12] 1634 	add	a,#0x04
      000873 F8               [12] 1635 	mov	r0,a
      000874 C3               [12] 1636 	clr	c
      000875 E6               [12] 1637 	mov	a,@r0
      000876 9A               [12] 1638 	subb	a,r2
      000877 08               [12] 1639 	inc	r0
      000878 E6               [12] 1640 	mov	a,@r0
      000879 9F               [12] 1641 	subb	a,r7
      00087A 50 02            [24] 1642 	jnc	00109$
      00087C                       1643 00104$:
                           0005FC  1644 	C$tasks.c$1262$4_0$190 ==.
                                   1645 ;	src/FreeRTOS/tasks.c:1262: xShouldDelay = pdTRUE;
      00087C 7E 01            [12] 1646 	mov	r6,#0x01
      00087E                       1647 00109$:
                           0005FE  1648 	C$tasks.c$1271$2_0$185 ==.
                                   1649 ;	src/FreeRTOS/tasks.c:1271: *pxPreviousWakeTime = xTimeToWake;
      00087E A8 0C            [24] 1650 	mov	r0,_bp
      000880 08               [12] 1651 	inc	r0
      000881 86 82            [24] 1652 	mov	dpl,@r0
      000883 08               [12] 1653 	inc	r0
      000884 86 83            [24] 1654 	mov	dph,@r0
      000886 08               [12] 1655 	inc	r0
      000887 86 F0            [24] 1656 	mov	b,@r0
      000889 EA               [12] 1657 	mov	a,r2
      00088A 12 66 A0         [24] 1658 	lcall	__gptrput
      00088D A3               [24] 1659 	inc	dptr
      00088E EF               [12] 1660 	mov	a,r7
      00088F 12 66 A0         [24] 1661 	lcall	__gptrput
                           000612  1662 	C$tasks.c$1273$2_0$185 ==.
                                   1663 ;	src/FreeRTOS/tasks.c:1273: if( xShouldDelay != pdFALSE )
      000892 EE               [12] 1664 	mov	a,r6
      000893 60 19            [24] 1665 	jz	00111$
                           000615  1666 	C$tasks.c$1279$3_0$192 ==.
                                   1667 ;	src/FreeRTOS/tasks.c:1279: prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, pdFALSE );
      000895 E5 0C            [12] 1668 	mov	a,_bp
      000897 24 04            [12] 1669 	add	a,#0x04
      000899 F8               [12] 1670 	mov	r0,a
      00089A EA               [12] 1671 	mov	a,r2
      00089B C3               [12] 1672 	clr	c
      00089C 96               [12] 1673 	subb	a,@r0
      00089D FA               [12] 1674 	mov	r2,a
      00089E EF               [12] 1675 	mov	a,r7
      00089F 08               [12] 1676 	inc	r0
      0008A0 96               [12] 1677 	subb	a,@r0
      0008A1 FF               [12] 1678 	mov	r7,a
      0008A2 E4               [12] 1679 	clr	a
      0008A3 C0 E0            [24] 1680 	push	acc
      0008A5 8A 82            [24] 1681 	mov	dpl,r2
      0008A7 8F 83            [24] 1682 	mov	dph,r7
      0008A9 12 22 38         [24] 1683 	lcall	_prvAddCurrentTaskToDelayedList
      0008AC 15 81            [12] 1684 	dec	sp
      0008AE                       1685 00111$:
                           00062E  1686 	C$tasks.c$1286$1_0$184 ==.
                                   1687 ;	src/FreeRTOS/tasks.c:1286: xAlreadyYielded = xTaskResumeAll();
      0008AE 12 09 52         [24] 1688 	lcall	_xTaskResumeAll
      0008B1 E5 82            [12] 1689 	mov	a,dpl
                           000633  1690 	C$tasks.c$1290$1_0$184 ==.
                                   1691 ;	src/FreeRTOS/tasks.c:1290: if( xAlreadyYielded == pdFALSE )
      0008B3 70 03            [24] 1692 	jnz	00114$
                           000635  1693 	C$tasks.c$1292$2_0$194 ==.
                                   1694 ;	src/FreeRTOS/tasks.c:1292: portYIELD_WITHIN_API();
      0008B5 12 64 B5         [24] 1695 	lcall	_vPortYield
      0008B8                       1696 00114$:
                           000638  1697 	C$tasks.c$1298$1_0$184 ==.
                                   1698 ;	src/FreeRTOS/tasks.c:1298: }
      0008B8 85 0C 81         [24] 1699 	mov	sp,_bp
      0008BB D0 0C            [24] 1700 	pop	_bp
                           00063D  1701 	C$tasks.c$1298$1_0$184 ==.
                           00063D  1702 	XG$vTaskDelayUntil$0$0 ==.
      0008BD 22               [24] 1703 	ret
                                   1704 ;------------------------------------------------------------
                                   1705 ;Allocation info for local variables in function 'vTaskDelay'
                                   1706 ;------------------------------------------------------------
                                   1707 ;xTicksToDelay             Allocated to registers r6 r7 
                                   1708 ;xAlreadyYielded           Allocated to registers r5 
                                   1709 ;------------------------------------------------------------
                           00063E  1710 	G$vTaskDelay$0$0 ==.
                           00063E  1711 	C$tasks.c$1305$1_0$197 ==.
                                   1712 ;	src/FreeRTOS/tasks.c:1305: void vTaskDelay( const TickType_t xTicksToDelay )
                                   1713 ;	-----------------------------------------
                                   1714 ;	 function vTaskDelay
                                   1715 ;	-----------------------------------------
      0008BE                       1716 _vTaskDelay:
      0008BE AE 82            [24] 1717 	mov	r6,dpl
      0008C0 AF 83            [24] 1718 	mov	r7,dph
                           000642  1719 	C$tasks.c$1307$2_0$197 ==.
                                   1720 ;	src/FreeRTOS/tasks.c:1307: BaseType_t xAlreadyYielded = pdFALSE;
      0008C2 7D 00            [12] 1721 	mov	r5,#0x00
                           000644  1722 	C$tasks.c$1310$1_0$197 ==.
                                   1723 ;	src/FreeRTOS/tasks.c:1310: if( xTicksToDelay > ( TickType_t ) 0U )
      0008C4 EE               [12] 1724 	mov	a,r6
      0008C5 4F               [12] 1725 	orl	a,r7
      0008C6 60 1E            [24] 1726 	jz	00102$
                           000648  1727 	C$tasks.c$1313$2_0$198 ==.
                                   1728 ;	src/FreeRTOS/tasks.c:1313: vTaskSuspendAll();
      0008C8 C0 07            [24] 1729 	push	ar7
      0008CA C0 06            [24] 1730 	push	ar6
      0008CC 12 09 4A         [24] 1731 	lcall	_vTaskSuspendAll
      0008CF D0 06            [24] 1732 	pop	ar6
      0008D1 D0 07            [24] 1733 	pop	ar7
                           000653  1734 	C$tasks.c$1324$3_0$199 ==.
                                   1735 ;	src/FreeRTOS/tasks.c:1324: prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
      0008D3 E4               [12] 1736 	clr	a
      0008D4 C0 E0            [24] 1737 	push	acc
      0008D6 8E 82            [24] 1738 	mov	dpl,r6
      0008D8 8F 83            [24] 1739 	mov	dph,r7
      0008DA 12 22 38         [24] 1740 	lcall	_prvAddCurrentTaskToDelayedList
      0008DD 15 81            [12] 1741 	dec	sp
                           00065F  1742 	C$tasks.c$1326$2_0$198 ==.
                                   1743 ;	src/FreeRTOS/tasks.c:1326: xAlreadyYielded = xTaskResumeAll();
      0008DF 12 09 52         [24] 1744 	lcall	_xTaskResumeAll
      0008E2 AF 82            [24] 1745 	mov	r7,dpl
      0008E4 8F 05            [24] 1746 	mov	ar5,r7
      0008E6                       1747 00102$:
                           000666  1748 	C$tasks.c$1335$1_0$197 ==.
                                   1749 ;	src/FreeRTOS/tasks.c:1335: if( xAlreadyYielded == pdFALSE )
      0008E6 ED               [12] 1750 	mov	a,r5
      0008E7 70 03            [24] 1751 	jnz	00105$
                           000669  1752 	C$tasks.c$1337$2_0$201 ==.
                                   1753 ;	src/FreeRTOS/tasks.c:1337: portYIELD_WITHIN_API();
      0008E9 12 64 B5         [24] 1754 	lcall	_vPortYield
      0008EC                       1755 00105$:
                           00066C  1756 	C$tasks.c$1343$1_0$197 ==.
                                   1757 ;	src/FreeRTOS/tasks.c:1343: }
                           00066C  1758 	C$tasks.c$1343$1_0$197 ==.
                           00066C  1759 	XG$vTaskDelay$0$0 ==.
      0008EC 22               [24] 1760 	ret
                                   1761 ;------------------------------------------------------------
                                   1762 ;Allocation info for local variables in function 'vTaskStartScheduler'
                                   1763 ;------------------------------------------------------------
                                   1764 ;xReturn                   Allocated to registers r7 
                                   1765 ;------------------------------------------------------------
                           00066D  1766 	G$vTaskStartScheduler$0$0 ==.
                           00066D  1767 	C$tasks.c$1939$1_0$204 ==.
                                   1768 ;	src/FreeRTOS/tasks.c:1939: void vTaskStartScheduler( void )
                                   1769 ;	-----------------------------------------
                                   1770 ;	 function vTaskStartScheduler
                                   1771 ;	-----------------------------------------
      0008ED                       1772 _vTaskStartScheduler:
                           00066D  1773 	C$tasks.c$1978$2_0$205 ==.
                                   1774 ;	src/FreeRTOS/tasks.c:1978: &xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
                           00066D  1775 	C$tasks.c$1974$2_0$205 ==.
                                   1776 ;	src/FreeRTOS/tasks.c:1974: configIDLE_TASK_NAME,
                           00066D  1777 	C$tasks.c$1973$2_0$205 ==.
                                   1778 ;	src/FreeRTOS/tasks.c:1973: xReturn = xTaskCreate(	prvIdleTask,
      0008ED 74 71            [12] 1779 	mov	a,#_xIdleTaskHandle
      0008EF C0 E0            [24] 1780 	push	acc
      0008F1 74 00            [12] 1781 	mov	a,#(_xIdleTaskHandle >> 8)
      0008F3 C0 E0            [24] 1782 	push	acc
      0008F5 E4               [12] 1783 	clr	a
      0008F6 C0 E0            [24] 1784 	push	acc
      0008F8 C0 E0            [24] 1785 	push	acc
      0008FA C0 E0            [24] 1786 	push	acc
      0008FC C0 E0            [24] 1787 	push	acc
      0008FE C0 E0            [24] 1788 	push	acc
      000900 74 BA            [12] 1789 	mov	a,#0xba
      000902 C0 E0            [24] 1790 	push	acc
      000904 E4               [12] 1791 	clr	a
      000905 C0 E0            [24] 1792 	push	acc
      000907 74 EB            [12] 1793 	mov	a,#___str_0
      000909 C0 E0            [24] 1794 	push	acc
      00090B 74 70            [12] 1795 	mov	a,#(___str_0 >> 8)
      00090D C0 E0            [24] 1796 	push	acc
      00090F 74 80            [12] 1797 	mov	a,#0x80
      000911 C0 E0            [24] 1798 	push	acc
      000913 90 14 54         [24] 1799 	mov	dptr,#_prvIdleTask
      000916 12 02 80         [24] 1800 	lcall	_xTaskCreate
      000919 AF 82            [24] 1801 	mov	r7,dpl
      00091B E5 81            [12] 1802 	mov	a,sp
      00091D 24 F4            [12] 1803 	add	a,#0xf4
      00091F F5 81            [12] 1804 	mov	sp,a
                           0006A1  1805 	C$tasks.c$1995$1_0$204 ==.
                                   1806 ;	src/FreeRTOS/tasks.c:1995: if( xReturn == pdPASS )
      000921 BF 01 1A         [24] 1807 	cjne	r7,#0x01,00105$
                           0006A4  1808 	C$tasks.c$2011$2_0$206 ==.
                                   1809 ;	src/FreeRTOS/tasks.c:2011: portDISABLE_INTERRUPTS();
                                   1810 ;	assignBit
      000924 C2 AF            [12] 1811 	clr	_EA
                           0006A6  1812 	C$tasks.c$2021$2_0$206 ==.
                                   1813 ;	src/FreeRTOS/tasks.c:2021: xNextTaskUnblockTime = portMAX_DELAY;
      000926 90 00 6F         [24] 1814 	mov	dptr,#_xNextTaskUnblockTime
      000929 74 FF            [12] 1815 	mov	a,#0xff
      00092B F0               [24] 1816 	movx	@dptr,a
      00092C A3               [24] 1817 	inc	dptr
      00092D F0               [24] 1818 	movx	@dptr,a
                           0006AE  1819 	C$tasks.c$2022$2_0$206 ==.
                                   1820 ;	src/FreeRTOS/tasks.c:2022: xSchedulerRunning = pdTRUE;
      00092E 90 00 6A         [24] 1821 	mov	dptr,#_xSchedulerRunning
      000931 74 01            [12] 1822 	mov	a,#0x01
      000933 F0               [24] 1823 	movx	@dptr,a
                           0006B4  1824 	C$tasks.c$2023$2_0$206 ==.
                                   1825 ;	src/FreeRTOS/tasks.c:2023: xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
      000934 90 00 67         [24] 1826 	mov	dptr,#_xTickCount
      000937 E4               [12] 1827 	clr	a
      000938 F0               [24] 1828 	movx	@dptr,a
      000939 A3               [24] 1829 	inc	dptr
      00093A F0               [24] 1830 	movx	@dptr,a
                           0006BB  1831 	C$tasks.c$2037$2_0$206 ==.
                                   1832 ;	src/FreeRTOS/tasks.c:2037: if( xPortStartScheduler() != pdFALSE )
      00093B 12 64 41         [24] 1833 	lcall	_xPortStartScheduler
                           0006BE  1834 	C$tasks.c$2057$1_0$204 ==.
                                   1835 ;	src/FreeRTOS/tasks.c:2057: ( void ) xIdleTaskHandle;
      00093E                       1836 00105$:
                           0006BE  1837 	C$tasks.c$2058$1_0$204 ==.
                                   1838 ;	src/FreeRTOS/tasks.c:2058: }
                           0006BE  1839 	C$tasks.c$2058$1_0$204 ==.
                           0006BE  1840 	XG$vTaskStartScheduler$0$0 ==.
      00093E 22               [24] 1841 	ret
                                   1842 ;------------------------------------------------------------
                                   1843 ;Allocation info for local variables in function 'vTaskEndScheduler'
                                   1844 ;------------------------------------------------------------
                           0006BF  1845 	G$vTaskEndScheduler$0$0 ==.
                           0006BF  1846 	C$tasks.c$2061$1_0$211 ==.
                                   1847 ;	src/FreeRTOS/tasks.c:2061: void vTaskEndScheduler( void )
                                   1848 ;	-----------------------------------------
                                   1849 ;	 function vTaskEndScheduler
                                   1850 ;	-----------------------------------------
      00093F                       1851 _vTaskEndScheduler:
                           0006BF  1852 	C$tasks.c$2066$1_0$211 ==.
                                   1853 ;	src/FreeRTOS/tasks.c:2066: portDISABLE_INTERRUPTS();
                                   1854 ;	assignBit
      00093F C2 AF            [12] 1855 	clr	_EA
                           0006C1  1856 	C$tasks.c$2067$1_0$211 ==.
                                   1857 ;	src/FreeRTOS/tasks.c:2067: xSchedulerRunning = pdFALSE;
      000941 90 00 6A         [24] 1858 	mov	dptr,#_xSchedulerRunning
      000944 E4               [12] 1859 	clr	a
      000945 F0               [24] 1860 	movx	@dptr,a
                           0006C6  1861 	C$tasks.c$2068$1_0$211 ==.
                                   1862 ;	src/FreeRTOS/tasks.c:2068: vPortEndScheduler();
      000946 12 64 B4         [24] 1863 	lcall	_vPortEndScheduler
                           0006C9  1864 	C$tasks.c$2069$1_0$211 ==.
                                   1865 ;	src/FreeRTOS/tasks.c:2069: }
                           0006C9  1866 	C$tasks.c$2069$1_0$211 ==.
                           0006C9  1867 	XG$vTaskEndScheduler$0$0 ==.
      000949 22               [24] 1868 	ret
                                   1869 ;------------------------------------------------------------
                                   1870 ;Allocation info for local variables in function 'vTaskSuspendAll'
                                   1871 ;------------------------------------------------------------
                           0006CA  1872 	G$vTaskSuspendAll$0$0 ==.
                           0006CA  1873 	C$tasks.c$2072$1_0$213 ==.
                                   1874 ;	src/FreeRTOS/tasks.c:2072: void vTaskSuspendAll( void )
                                   1875 ;	-----------------------------------------
                                   1876 ;	 function vTaskSuspendAll
                                   1877 ;	-----------------------------------------
      00094A                       1878 _vTaskSuspendAll:
                           0006CA  1879 	C$tasks.c$2078$1_0$213 ==.
                                   1880 ;	src/FreeRTOS/tasks.c:2078: ++uxSchedulerSuspended;
      00094A 90 00 74         [24] 1881 	mov	dptr,#_uxSchedulerSuspended
      00094D E0               [24] 1882 	movx	a,@dptr
      00094E 24 01            [12] 1883 	add	a,#0x01
      000950 F0               [24] 1884 	movx	@dptr,a
                           0006D1  1885 	C$tasks.c$2079$1_0$213 ==.
                                   1886 ;	src/FreeRTOS/tasks.c:2079: }
                           0006D1  1887 	C$tasks.c$2079$1_0$213 ==.
                           0006D1  1888 	XG$vTaskSuspendAll$0$0 ==.
      000951 22               [24] 1889 	ret
                                   1890 ;------------------------------------------------------------
                                   1891 ;Allocation info for local variables in function 'xTaskResumeAll'
                                   1892 ;------------------------------------------------------------
                                   1893 ;pxTCB                     Allocated to stack - _bp +4
                                   1894 ;xAlreadyYielded           Allocated to registers r4 
                                   1895 ;uxPendedCounts            Allocated to registers r6 
                                   1896 ;sloc0                     Allocated to stack - _bp +1
                                   1897 ;sloc1                     Allocated to stack - _bp +9
                                   1898 ;------------------------------------------------------------
                           0006D2  1899 	G$xTaskResumeAll$0$0 ==.
                           0006D2  1900 	C$tasks.c$2145$1_0$215 ==.
                                   1901 ;	src/FreeRTOS/tasks.c:2145: BaseType_t xTaskResumeAll( void )
                                   1902 ;	-----------------------------------------
                                   1903 ;	 function xTaskResumeAll
                                   1904 ;	-----------------------------------------
      000952                       1905 _xTaskResumeAll:
      000952 C0 0C            [24] 1906 	push	_bp
      000954 E5 81            [12] 1907 	mov	a,sp
      000956 F5 0C            [12] 1908 	mov	_bp,a
      000958 24 06            [12] 1909 	add	a,#0x06
      00095A F5 81            [12] 1910 	mov	sp,a
                           0006DC  1911 	C$tasks.c$2147$2_0$215 ==.
                                   1912 ;	src/FreeRTOS/tasks.c:2147: TCB_t *pxTCB = NULL;
      00095C E5 0C            [12] 1913 	mov	a,_bp
      00095E 24 04            [12] 1914 	add	a,#0x04
      000960 F8               [12] 1915 	mov	r0,a
      000961 E4               [12] 1916 	clr	a
      000962 F6               [12] 1917 	mov	@r0,a
      000963 08               [12] 1918 	inc	r0
      000964 F6               [12] 1919 	mov	@r0,a
      000965 08               [12] 1920 	inc	r0
      000966 76 00            [12] 1921 	mov	@r0,#0x00
                           0006E8  1922 	C$tasks.c$2148$2_0$215 ==.
                                   1923 ;	src/FreeRTOS/tasks.c:2148: BaseType_t xAlreadyYielded = pdFALSE;
      000968 7C 00            [12] 1924 	mov	r4,#0x00
                           0006EA  1925 	C$tasks.c$2159$1_0$215 ==.
                                   1926 ;	src/FreeRTOS/tasks.c:2159: taskENTER_CRITICAL();
      00096A C0 E0            [24] 1927 	push ACC 
      00096C C0 A8            [24] 1928 	push IE 
                                   1929 ;	assignBit
      00096E C2 AF            [12] 1930 	clr	_EA
                           0006F0  1931 	C$tasks.c$2161$2_0$216 ==.
                                   1932 ;	src/FreeRTOS/tasks.c:2161: --uxSchedulerSuspended;
      000970 90 00 74         [24] 1933 	mov	dptr,#_uxSchedulerSuspended
      000973 E0               [24] 1934 	movx	a,@dptr
      000974 14               [12] 1935 	dec	a
      000975 F0               [24] 1936 	movx	@dptr,a
                           0006F6  1937 	C$tasks.c$2163$2_0$216 ==.
                                   1938 ;	src/FreeRTOS/tasks.c:2163: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      000976 E0               [24] 1939 	movx	a,@dptr
      000977 60 03            [24] 1940 	jz	00174$
      000979 02 0A F7         [24] 1941 	ljmp	00122$
      00097C                       1942 00174$:
                           0006FC  1943 	C$tasks.c$2165$3_0$217 ==.
                                   1944 ;	src/FreeRTOS/tasks.c:2165: if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
      00097C 90 00 66         [24] 1945 	mov	dptr,#_uxCurrentNumberOfTasks
      00097F E0               [24] 1946 	movx	a,@dptr
      000980 70 03            [24] 1947 	jnz	00175$
      000982 02 0A F7         [24] 1948 	ljmp	00122$
      000985                       1949 00175$:
                           000705  1950 	C$tasks.c$2169$5_0$219 ==.
                                   1951 ;	src/FreeRTOS/tasks.c:2169: while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
      000985                       1952 00105$:
      000985 90 00 5A         [24] 1953 	mov	dptr,#_xPendingReadyList
      000988 E0               [24] 1954 	movx	a,@dptr
      000989 70 03            [24] 1955 	jnz	00176$
      00098B 02 0A B5         [24] 1956 	ljmp	00107$
      00098E                       1957 00176$:
                           00070E  1958 	C$tasks.c$2171$1_0$215 ==.
                                   1959 ;	src/FreeRTOS/tasks.c:2171: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      00098E C0 04            [24] 1960 	push	ar4
      000990 90 00 60         [24] 1961 	mov	dptr,#(_xPendingReadyList + 0x0006)
      000993 E0               [24] 1962 	movx	a,@dptr
      000994 FA               [12] 1963 	mov	r2,a
      000995 A3               [24] 1964 	inc	dptr
      000996 E0               [24] 1965 	movx	a,@dptr
      000997 FB               [12] 1966 	mov	r3,a
      000998 A3               [24] 1967 	inc	dptr
      000999 E0               [24] 1968 	movx	a,@dptr
      00099A FC               [12] 1969 	mov	r4,a
      00099B 74 08            [12] 1970 	mov	a,#0x08
      00099D 2A               [12] 1971 	add	a,r2
      00099E FA               [12] 1972 	mov	r2,a
      00099F E4               [12] 1973 	clr	a
      0009A0 3B               [12] 1974 	addc	a,r3
      0009A1 FB               [12] 1975 	mov	r3,a
      0009A2 8A 82            [24] 1976 	mov	dpl,r2
      0009A4 8B 83            [24] 1977 	mov	dph,r3
      0009A6 8C F0            [24] 1978 	mov	b,r4
      0009A8 12 70 5A         [24] 1979 	lcall	__gptrget
      0009AB FA               [12] 1980 	mov	r2,a
      0009AC A3               [24] 1981 	inc	dptr
      0009AD 12 70 5A         [24] 1982 	lcall	__gptrget
      0009B0 FB               [12] 1983 	mov	r3,a
      0009B1 A3               [24] 1984 	inc	dptr
      0009B2 12 70 5A         [24] 1985 	lcall	__gptrget
      0009B5 FC               [12] 1986 	mov	r4,a
      0009B6 E5 0C            [12] 1987 	mov	a,_bp
      0009B8 24 04            [12] 1988 	add	a,#0x04
      0009BA F8               [12] 1989 	mov	r0,a
      0009BB A6 02            [24] 1990 	mov	@r0,ar2
      0009BD 08               [12] 1991 	inc	r0
      0009BE A6 03            [24] 1992 	mov	@r0,ar3
      0009C0 08               [12] 1993 	inc	r0
      0009C1 A6 04            [24] 1994 	mov	@r0,ar4
                           000743  1995 	C$tasks.c$2172$5_0$219 ==.
                                   1996 ;	src/FreeRTOS/tasks.c:2172: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
      0009C3 E5 0C            [12] 1997 	mov	a,_bp
      0009C5 24 04            [12] 1998 	add	a,#0x04
      0009C7 F8               [12] 1999 	mov	r0,a
      0009C8 74 11            [12] 2000 	mov	a,#0x11
      0009CA 26               [12] 2001 	add	a,@r0
      0009CB FA               [12] 2002 	mov	r2,a
      0009CC E4               [12] 2003 	clr	a
      0009CD 08               [12] 2004 	inc	r0
      0009CE 36               [12] 2005 	addc	a,@r0
      0009CF FB               [12] 2006 	mov	r3,a
      0009D0 08               [12] 2007 	inc	r0
      0009D1 86 04            [24] 2008 	mov	ar4,@r0
      0009D3 8A 82            [24] 2009 	mov	dpl,r2
      0009D5 8B 83            [24] 2010 	mov	dph,r3
      0009D7 8C F0            [24] 2011 	mov	b,r4
      0009D9 C0 04            [24] 2012 	push	ar4
      0009DB 12 30 3B         [24] 2013 	lcall	_uxListRemove
      0009DE D0 04            [24] 2014 	pop	ar4
                           000760  2015 	C$tasks.c$2173$5_0$219 ==.
                                   2016 ;	src/FreeRTOS/tasks.c:2173: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      0009E0 E5 0C            [12] 2017 	mov	a,_bp
      0009E2 24 04            [12] 2018 	add	a,#0x04
      0009E4 F8               [12] 2019 	mov	r0,a
      0009E5 74 03            [12] 2020 	mov	a,#0x03
      0009E7 26               [12] 2021 	add	a,@r0
      0009E8 FA               [12] 2022 	mov	r2,a
      0009E9 E4               [12] 2023 	clr	a
      0009EA 08               [12] 2024 	inc	r0
      0009EB 36               [12] 2025 	addc	a,@r0
      0009EC FB               [12] 2026 	mov	r3,a
      0009ED 08               [12] 2027 	inc	r0
      0009EE 86 04            [24] 2028 	mov	ar4,@r0
      0009F0 8A 82            [24] 2029 	mov	dpl,r2
      0009F2 8B 83            [24] 2030 	mov	dph,r3
      0009F4 8C F0            [24] 2031 	mov	b,r4
      0009F6 C0 04            [24] 2032 	push	ar4
      0009F8 12 30 3B         [24] 2033 	lcall	_uxListRemove
      0009FB D0 04            [24] 2034 	pop	ar4
                           00077D  2035 	C$tasks.c$2174$6_0$220 ==.
                                   2036 ;	src/FreeRTOS/tasks.c:2174: prvAddTaskToReadyList( pxTCB );
      0009FD E5 0C            [12] 2037 	mov	a,_bp
      0009FF 24 04            [12] 2038 	add	a,#0x04
      000A01 F8               [12] 2039 	mov	r0,a
      000A02 A9 0C            [24] 2040 	mov	r1,_bp
      000A04 09               [12] 2041 	inc	r1
      000A05 74 1F            [12] 2042 	mov	a,#0x1f
      000A07 26               [12] 2043 	add	a,@r0
      000A08 F7               [12] 2044 	mov	@r1,a
      000A09 E4               [12] 2045 	clr	a
      000A0A 08               [12] 2046 	inc	r0
      000A0B 36               [12] 2047 	addc	a,@r0
      000A0C 09               [12] 2048 	inc	r1
      000A0D F7               [12] 2049 	mov	@r1,a
      000A0E 08               [12] 2050 	inc	r0
      000A0F 09               [12] 2051 	inc	r1
      000A10 E6               [12] 2052 	mov	a,@r0
      000A11 F7               [12] 2053 	mov	@r1,a
      000A12 A8 0C            [24] 2054 	mov	r0,_bp
      000A14 08               [12] 2055 	inc	r0
      000A15 86 82            [24] 2056 	mov	dpl,@r0
      000A17 08               [12] 2057 	inc	r0
      000A18 86 83            [24] 2058 	mov	dph,@r0
      000A1A 08               [12] 2059 	inc	r0
      000A1B 86 F0            [24] 2060 	mov	b,@r0
      000A1D 12 70 5A         [24] 2061 	lcall	__gptrget
      000A20 FF               [12] 2062 	mov	r7,a
      000A21 90 00 69         [24] 2063 	mov	dptr,#_uxTopReadyPriority
      000A24 E0               [24] 2064 	movx	a,@dptr
      000A25 C3               [12] 2065 	clr	c
      000A26 9F               [12] 2066 	subb	a,r7
      000A27 D0 04            [24] 2067 	pop	ar4
      000A29 50 05            [24] 2068 	jnc	00102$
      000A2B 90 00 69         [24] 2069 	mov	dptr,#_uxTopReadyPriority
      000A2E EF               [12] 2070 	mov	a,r7
      000A2F F0               [24] 2071 	movx	@dptr,a
      000A30                       2072 00102$:
      000A30 C0 04            [24] 2073 	push	ar4
      000A32 E5 0C            [12] 2074 	mov	a,_bp
      000A34 24 04            [12] 2075 	add	a,#0x04
      000A36 F8               [12] 2076 	mov	r0,a
      000A37 74 03            [12] 2077 	mov	a,#0x03
      000A39 26               [12] 2078 	add	a,@r0
      000A3A FA               [12] 2079 	mov	r2,a
      000A3B E4               [12] 2080 	clr	a
      000A3C 08               [12] 2081 	inc	r0
      000A3D 36               [12] 2082 	addc	a,@r0
      000A3E FB               [12] 2083 	mov	r3,a
      000A3F 08               [12] 2084 	inc	r0
      000A40 86 04            [24] 2085 	mov	ar4,@r0
      000A42 A8 0C            [24] 2086 	mov	r0,_bp
      000A44 08               [12] 2087 	inc	r0
      000A45 86 82            [24] 2088 	mov	dpl,@r0
      000A47 08               [12] 2089 	inc	r0
      000A48 86 83            [24] 2090 	mov	dph,@r0
      000A4A 08               [12] 2091 	inc	r0
      000A4B 86 F0            [24] 2092 	mov	b,@r0
      000A4D 12 70 5A         [24] 2093 	lcall	__gptrget
      000A50 75 F0 0C         [24] 2094 	mov	b,#0x0c
      000A53 A4               [48] 2095 	mul	ab
      000A54 24 0C            [12] 2096 	add	a,#_pxReadyTasksLists
      000A56 FE               [12] 2097 	mov	r6,a
      000A57 74 00            [12] 2098 	mov	a,#(_pxReadyTasksLists >> 8)
      000A59 35 F0            [12] 2099 	addc	a,b
      000A5B FF               [12] 2100 	mov	r7,a
      000A5C 7D 00            [12] 2101 	mov	r5,#0x00
      000A5E C0 04            [24] 2102 	push	ar4
      000A60 C0 02            [24] 2103 	push	ar2
      000A62 C0 03            [24] 2104 	push	ar3
      000A64 C0 04            [24] 2105 	push	ar4
      000A66 8E 82            [24] 2106 	mov	dpl,r6
      000A68 8F 83            [24] 2107 	mov	dph,r7
      000A6A 8D F0            [24] 2108 	mov	b,r5
      000A6C 12 2C DF         [24] 2109 	lcall	_vListInsertEnd
      000A6F 15 81            [12] 2110 	dec	sp
      000A71 15 81            [12] 2111 	dec	sp
      000A73 15 81            [12] 2112 	dec	sp
      000A75 D0 04            [24] 2113 	pop	ar4
                           0007F7  2114 	C$tasks.c$2178$5_0$219 ==.
                                   2115 ;	src/FreeRTOS/tasks.c:2178: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
      000A77 A8 0C            [24] 2116 	mov	r0,_bp
      000A79 08               [12] 2117 	inc	r0
      000A7A 86 82            [24] 2118 	mov	dpl,@r0
      000A7C 08               [12] 2119 	inc	r0
      000A7D 86 83            [24] 2120 	mov	dph,@r0
      000A7F 08               [12] 2121 	inc	r0
      000A80 86 F0            [24] 2122 	mov	b,@r0
      000A82 12 70 5A         [24] 2123 	lcall	__gptrget
      000A85 FF               [12] 2124 	mov	r7,a
      000A86 90 00 09         [24] 2125 	mov	dptr,#_pxCurrentTCB
      000A89 E0               [24] 2126 	movx	a,@dptr
      000A8A FC               [12] 2127 	mov	r4,a
      000A8B A3               [24] 2128 	inc	dptr
      000A8C E0               [24] 2129 	movx	a,@dptr
      000A8D FD               [12] 2130 	mov	r5,a
      000A8E A3               [24] 2131 	inc	dptr
      000A8F E0               [24] 2132 	movx	a,@dptr
      000A90 FE               [12] 2133 	mov	r6,a
      000A91 74 1F            [12] 2134 	mov	a,#0x1f
      000A93 2C               [12] 2135 	add	a,r4
      000A94 FC               [12] 2136 	mov	r4,a
      000A95 E4               [12] 2137 	clr	a
      000A96 3D               [12] 2138 	addc	a,r5
      000A97 FD               [12] 2139 	mov	r5,a
      000A98 8C 82            [24] 2140 	mov	dpl,r4
      000A9A 8D 83            [24] 2141 	mov	dph,r5
      000A9C 8E F0            [24] 2142 	mov	b,r6
      000A9E 12 70 5A         [24] 2143 	lcall	__gptrget
      000AA1 FC               [12] 2144 	mov	r4,a
      000AA2 C3               [12] 2145 	clr	c
      000AA3 EF               [12] 2146 	mov	a,r7
      000AA4 9C               [12] 2147 	subb	a,r4
      000AA5 D0 04            [24] 2148 	pop	ar4
      000AA7 50 03            [24] 2149 	jnc	00178$
      000AA9 02 09 85         [24] 2150 	ljmp	00105$
      000AAC                       2151 00178$:
                           00082C  2152 	C$tasks.c$2180$6_0$222 ==.
                                   2153 ;	src/FreeRTOS/tasks.c:2180: xYieldPending = pdTRUE;
      000AAC 90 00 6C         [24] 2154 	mov	dptr,#_xYieldPending
      000AAF 74 01            [12] 2155 	mov	a,#0x01
      000AB1 F0               [24] 2156 	movx	@dptr,a
      000AB2 02 09 85         [24] 2157 	ljmp	00105$
      000AB5                       2158 00107$:
                           000835  2159 	C$tasks.c$2188$4_0$218 ==.
                                   2160 ;	src/FreeRTOS/tasks.c:2188: if( pxTCB != NULL )
      000AB5 E5 0C            [12] 2161 	mov	a,_bp
      000AB7 24 04            [12] 2162 	add	a,#0x04
      000AB9 F8               [12] 2163 	mov	r0,a
      000ABA E6               [12] 2164 	mov	a,@r0
      000ABB 08               [12] 2165 	inc	r0
      000ABC 46               [12] 2166 	orl	a,@r0
      000ABD 60 07            [24] 2167 	jz	00109$
                           00083F  2168 	C$tasks.c$2196$5_0$224 ==.
                                   2169 ;	src/FreeRTOS/tasks.c:2196: prvResetNextTaskUnblockTime();
      000ABF C0 04            [24] 2170 	push	ar4
      000AC1 12 14 C0         [24] 2171 	lcall	_prvResetNextTaskUnblockTime
      000AC4 D0 04            [24] 2172 	pop	ar4
      000AC6                       2173 00109$:
                           000846  2174 	C$tasks.c$2204$6_0$225 ==.
                                   2175 ;	src/FreeRTOS/tasks.c:2204: UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
      000AC6 90 00 6B         [24] 2176 	mov	dptr,#_uxPendedTicks
      000AC9 E0               [24] 2177 	movx	a,@dptr
                           00084A  2178 	C$tasks.c$2206$5_0$225 ==.
                                   2179 ;	src/FreeRTOS/tasks.c:2206: if( uxPendedCounts > ( UBaseType_t ) 0U )
      000ACA FF               [12] 2180 	mov	r7,a
      000ACB FE               [12] 2181 	mov	r6,a
      000ACC 60 1E            [24] 2182 	jz	00116$
                           00084E  2183 	C$tasks.c$2208$1_0$215 ==.
                                   2184 ;	src/FreeRTOS/tasks.c:2208: do
      000ACE 8E 07            [24] 2185 	mov	ar7,r6
      000AD0                       2186 00112$:
                           000850  2187 	C$tasks.c$2210$7_0$227 ==.
                                   2188 ;	src/FreeRTOS/tasks.c:2210: if( xTaskIncrementTick() != pdFALSE )
      000AD0 C0 07            [24] 2189 	push	ar7
      000AD2 C0 04            [24] 2190 	push	ar4
      000AD4 12 0B 66         [24] 2191 	lcall	_xTaskIncrementTick
      000AD7 E5 82            [12] 2192 	mov	a,dpl
      000AD9 D0 04            [24] 2193 	pop	ar4
      000ADB D0 07            [24] 2194 	pop	ar7
      000ADD 60 06            [24] 2195 	jz	00111$
                           00085F  2196 	C$tasks.c$2212$8_0$228 ==.
                                   2197 ;	src/FreeRTOS/tasks.c:2212: xYieldPending = pdTRUE;
      000ADF 90 00 6C         [24] 2198 	mov	dptr,#_xYieldPending
      000AE2 74 01            [12] 2199 	mov	a,#0x01
      000AE4 F0               [24] 2200 	movx	@dptr,a
      000AE5                       2201 00111$:
                           000865  2202 	C$tasks.c$2218$7_0$227 ==.
                                   2203 ;	src/FreeRTOS/tasks.c:2218: --uxPendedCounts;
                           000865  2204 	C$tasks.c$2219$6_0$226 ==.
                                   2205 ;	src/FreeRTOS/tasks.c:2219: } while( uxPendedCounts > ( UBaseType_t ) 0U );
      000AE5 DF E9            [24] 2206 	djnz	r7,00112$
                           000867  2207 	C$tasks.c$2221$6_0$226 ==.
                                   2208 ;	src/FreeRTOS/tasks.c:2221: uxPendedTicks = 0;
      000AE7 90 00 6B         [24] 2209 	mov	dptr,#_uxPendedTicks
      000AEA E4               [12] 2210 	clr	a
      000AEB F0               [24] 2211 	movx	@dptr,a
      000AEC                       2212 00116$:
                           00086C  2213 	C$tasks.c$2229$4_0$218 ==.
                                   2214 ;	src/FreeRTOS/tasks.c:2229: if( xYieldPending != pdFALSE )
      000AEC 90 00 6C         [24] 2215 	mov	dptr,#_xYieldPending
      000AEF E0               [24] 2216 	movx	a,@dptr
      000AF0 60 05            [24] 2217 	jz	00122$
                           000872  2218 	C$tasks.c$2233$6_0$232 ==.
                                   2219 ;	src/FreeRTOS/tasks.c:2233: xAlreadyYielded = pdTRUE;
      000AF2 7C 01            [12] 2220 	mov	r4,#0x01
                           000874  2221 	C$tasks.c$2236$5_0$231 ==.
                                   2222 ;	src/FreeRTOS/tasks.c:2236: taskYIELD_IF_USING_PREEMPTION();
      000AF4 12 64 B5         [24] 2223 	lcall	_vPortYield
      000AF7                       2224 00122$:
                           000877  2225 	C$tasks.c$2249$1_0$215 ==.
                                   2226 ;	src/FreeRTOS/tasks.c:2249: taskEXIT_CRITICAL();
      000AF7 D0 E0            [24] 2227 	pop ACC 
      000AF9 53 E0 80         [24] 2228 	anl	_ACC,#0x80
      000AFC E5 E0            [12] 2229 	mov	a,_ACC
      000AFE 42 A8            [12] 2230 	orl	_IE,a
      000B00 D0 E0            [24] 2231 	pop ACC 
                           000882  2232 	C$tasks.c$2251$1_0$215 ==.
                                   2233 ;	src/FreeRTOS/tasks.c:2251: return xAlreadyYielded;
      000B02 8C 82            [24] 2234 	mov	dpl,r4
                           000884  2235 	C$tasks.c$2252$1_0$215 ==.
                                   2236 ;	src/FreeRTOS/tasks.c:2252: }
      000B04 85 0C 81         [24] 2237 	mov	sp,_bp
      000B07 D0 0C            [24] 2238 	pop	_bp
                           000889  2239 	C$tasks.c$2252$1_0$215 ==.
                           000889  2240 	XG$xTaskResumeAll$0$0 ==.
      000B09 22               [24] 2241 	ret
                                   2242 ;------------------------------------------------------------
                                   2243 ;Allocation info for local variables in function 'xTaskGetTickCount'
                                   2244 ;------------------------------------------------------------
                                   2245 ;xTicks                    Allocated to registers r6 r7 
                                   2246 ;------------------------------------------------------------
                           00088A  2247 	G$xTaskGetTickCount$0$0 ==.
                           00088A  2248 	C$tasks.c$2255$1_0$236 ==.
                                   2249 ;	src/FreeRTOS/tasks.c:2255: TickType_t xTaskGetTickCount( void )
                                   2250 ;	-----------------------------------------
                                   2251 ;	 function xTaskGetTickCount
                                   2252 ;	-----------------------------------------
      000B0A                       2253 _xTaskGetTickCount:
                           00088A  2254 	C$tasks.c$2260$1_0$236 ==.
                                   2255 ;	src/FreeRTOS/tasks.c:2260: portTICK_TYPE_ENTER_CRITICAL();
      000B0A C0 E0            [24] 2256 	push ACC 
      000B0C C0 A8            [24] 2257 	push IE 
                                   2258 ;	assignBit
      000B0E C2 AF            [12] 2259 	clr	_EA
                           000890  2260 	C$tasks.c$2262$2_0$237 ==.
                                   2261 ;	src/FreeRTOS/tasks.c:2262: xTicks = xTickCount;
      000B10 90 00 67         [24] 2262 	mov	dptr,#_xTickCount
      000B13 E0               [24] 2263 	movx	a,@dptr
      000B14 FE               [12] 2264 	mov	r6,a
      000B15 A3               [24] 2265 	inc	dptr
      000B16 E0               [24] 2266 	movx	a,@dptr
      000B17 FF               [12] 2267 	mov	r7,a
                           000898  2268 	C$tasks.c$2264$1_0$236 ==.
                                   2269 ;	src/FreeRTOS/tasks.c:2264: portTICK_TYPE_EXIT_CRITICAL();
      000B18 D0 E0            [24] 2270 	pop ACC 
      000B1A 53 E0 80         [24] 2271 	anl	_ACC,#0x80
      000B1D E5 E0            [12] 2272 	mov	a,_ACC
      000B1F 42 A8            [12] 2273 	orl	_IE,a
      000B21 D0 E0            [24] 2274 	pop ACC 
                           0008A3  2275 	C$tasks.c$2266$1_0$236 ==.
                                   2276 ;	src/FreeRTOS/tasks.c:2266: return xTicks;
      000B23 8E 82            [24] 2277 	mov	dpl,r6
      000B25 8F 83            [24] 2278 	mov	dph,r7
                           0008A7  2279 	C$tasks.c$2267$1_0$236 ==.
                                   2280 ;	src/FreeRTOS/tasks.c:2267: }
                           0008A7  2281 	C$tasks.c$2267$1_0$236 ==.
                           0008A7  2282 	XG$xTaskGetTickCount$0$0 ==.
      000B27 22               [24] 2283 	ret
                                   2284 ;------------------------------------------------------------
                                   2285 ;Allocation info for local variables in function 'xTaskGetTickCountFromISR'
                                   2286 ;------------------------------------------------------------
                                   2287 ;xReturn                   Allocated to registers r6 r7 
                                   2288 ;uxSavedInterruptStatus    Allocated to registers 
                                   2289 ;------------------------------------------------------------
                           0008A8  2290 	G$xTaskGetTickCountFromISR$0$0 ==.
                           0008A8  2291 	C$tasks.c$2270$1_0$239 ==.
                                   2292 ;	src/FreeRTOS/tasks.c:2270: TickType_t xTaskGetTickCountFromISR( void )
                                   2293 ;	-----------------------------------------
                                   2294 ;	 function xTaskGetTickCountFromISR
                                   2295 ;	-----------------------------------------
      000B28                       2296 _xTaskGetTickCountFromISR:
                           0008A8  2297 	C$tasks.c$2293$2_0$240 ==.
                                   2298 ;	src/FreeRTOS/tasks.c:2293: xReturn = xTickCount;
      000B28 90 00 67         [24] 2299 	mov	dptr,#_xTickCount
      000B2B E0               [24] 2300 	movx	a,@dptr
      000B2C FE               [12] 2301 	mov	r6,a
      000B2D A3               [24] 2302 	inc	dptr
      000B2E E0               [24] 2303 	movx	a,@dptr
                           0008AF  2304 	C$tasks.c$2297$1_0$239 ==.
                                   2305 ;	src/FreeRTOS/tasks.c:2297: return xReturn;
                           0008AF  2306 	C$tasks.c$2298$1_0$239 ==.
                                   2307 ;	src/FreeRTOS/tasks.c:2298: }
                           0008AF  2308 	C$tasks.c$2298$1_0$239 ==.
                           0008AF  2309 	XG$xTaskGetTickCountFromISR$0$0 ==.
      000B2F 8E 82            [24] 2310 	mov	dpl,r6
      000B31 F5 83            [12] 2311 	mov	dph,a
      000B33 22               [24] 2312 	ret
                                   2313 ;------------------------------------------------------------
                                   2314 ;Allocation info for local variables in function 'uxTaskGetNumberOfTasks'
                                   2315 ;------------------------------------------------------------
                           0008B4  2316 	G$uxTaskGetNumberOfTasks$0$0 ==.
                           0008B4  2317 	C$tasks.c$2301$1_0$242 ==.
                                   2318 ;	src/FreeRTOS/tasks.c:2301: UBaseType_t uxTaskGetNumberOfTasks( void )
                                   2319 ;	-----------------------------------------
                                   2320 ;	 function uxTaskGetNumberOfTasks
                                   2321 ;	-----------------------------------------
      000B34                       2322 _uxTaskGetNumberOfTasks:
                           0008B4  2323 	C$tasks.c$2305$1_0$242 ==.
                                   2324 ;	src/FreeRTOS/tasks.c:2305: return uxCurrentNumberOfTasks;
      000B34 90 00 66         [24] 2325 	mov	dptr,#_uxCurrentNumberOfTasks
      000B37 E0               [24] 2326 	movx	a,@dptr
                           0008B8  2327 	C$tasks.c$2306$1_0$242 ==.
                                   2328 ;	src/FreeRTOS/tasks.c:2306: }
                           0008B8  2329 	C$tasks.c$2306$1_0$242 ==.
                           0008B8  2330 	XG$uxTaskGetNumberOfTasks$0$0 ==.
      000B38 F5 82            [12] 2331 	mov	dpl,a
      000B3A 22               [24] 2332 	ret
                                   2333 ;------------------------------------------------------------
                                   2334 ;Allocation info for local variables in function 'pcTaskGetName'
                                   2335 ;------------------------------------------------------------
                                   2336 ;xTaskToQuery              Allocated to registers r5 r6 r7 
                                   2337 ;pxTCB                     Allocated to registers r2 r3 r4 
                                   2338 ;------------------------------------------------------------
                           0008BB  2339 	G$pcTaskGetName$0$0 ==.
                           0008BB  2340 	C$tasks.c$2309$1_0$244 ==.
                                   2341 ;	src/FreeRTOS/tasks.c:2309: char *pcTaskGetName( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
                                   2342 ;	-----------------------------------------
                                   2343 ;	 function pcTaskGetName
                                   2344 ;	-----------------------------------------
      000B3B                       2345 _pcTaskGetName:
      000B3B AD 82            [24] 2346 	mov	r5,dpl
      000B3D AE 83            [24] 2347 	mov	r6,dph
      000B3F AF F0            [24] 2348 	mov	r7,b
                           0008C1  2349 	C$tasks.c$2315$1_0$244 ==.
                                   2350 ;	src/FreeRTOS/tasks.c:2315: pxTCB = prvGetTCBFromHandle( xTaskToQuery );
      000B41 ED               [12] 2351 	mov	a,r5
      000B42 4E               [12] 2352 	orl	a,r6
      000B43 70 0D            [24] 2353 	jnz	00103$
      000B45 90 00 09         [24] 2354 	mov	dptr,#_pxCurrentTCB
      000B48 E0               [24] 2355 	movx	a,@dptr
      000B49 FA               [12] 2356 	mov	r2,a
      000B4A A3               [24] 2357 	inc	dptr
      000B4B E0               [24] 2358 	movx	a,@dptr
      000B4C FB               [12] 2359 	mov	r3,a
      000B4D A3               [24] 2360 	inc	dptr
      000B4E E0               [24] 2361 	movx	a,@dptr
      000B4F FC               [12] 2362 	mov	r4,a
      000B50 80 06            [24] 2363 	sjmp	00104$
      000B52                       2364 00103$:
      000B52 8D 02            [24] 2365 	mov	ar2,r5
      000B54 8E 03            [24] 2366 	mov	ar3,r6
      000B56 8F 04            [24] 2367 	mov	ar4,r7
      000B58                       2368 00104$:
                           0008D8  2369 	C$tasks.c$2317$1_0$244 ==.
                                   2370 ;	src/FreeRTOS/tasks.c:2317: return &( pxTCB->pcTaskName[ 0 ] );
      000B58 74 23            [12] 2371 	mov	a,#0x23
      000B5A 2A               [12] 2372 	add	a,r2
      000B5B FA               [12] 2373 	mov	r2,a
      000B5C E4               [12] 2374 	clr	a
      000B5D 3B               [12] 2375 	addc	a,r3
      000B5E FB               [12] 2376 	mov	r3,a
      000B5F 8A 82            [24] 2377 	mov	dpl,r2
      000B61 8B 83            [24] 2378 	mov	dph,r3
      000B63 8C F0            [24] 2379 	mov	b,r4
                           0008E5  2380 	C$tasks.c$2318$1_0$244 ==.
                                   2381 ;	src/FreeRTOS/tasks.c:2318: }
                           0008E5  2382 	C$tasks.c$2318$1_0$244 ==.
                           0008E5  2383 	XG$pcTaskGetName$0$0 ==.
      000B65 22               [24] 2384 	ret
                                   2385 ;------------------------------------------------------------
                                   2386 ;Allocation info for local variables in function 'xTaskIncrementTick'
                                   2387 ;------------------------------------------------------------
                                   2388 ;pxTCB                     Allocated to registers r2 r3 r4 
                                   2389 ;xItemValue                Allocated to registers r7 r6 
                                   2390 ;xSwitchRequired           Allocated to stack - _bp +4
                                   2391 ;xConstTickCount           Allocated to stack - _bp +5
                                   2392 ;pxTemp                    Allocated to registers r2 r5 r6 
                                   2393 ;sloc0                     Allocated to stack - _bp +1
                                   2394 ;------------------------------------------------------------
                           0008E6  2395 	G$xTaskIncrementTick$0$0 ==.
                           0008E6  2396 	C$tasks.c$2636$1_0$246 ==.
                                   2397 ;	src/FreeRTOS/tasks.c:2636: BaseType_t xTaskIncrementTick( void )
                                   2398 ;	-----------------------------------------
                                   2399 ;	 function xTaskIncrementTick
                                   2400 ;	-----------------------------------------
      000B66                       2401 _xTaskIncrementTick:
      000B66 C0 0C            [24] 2402 	push	_bp
      000B68 E5 81            [12] 2403 	mov	a,sp
      000B6A F5 0C            [12] 2404 	mov	_bp,a
      000B6C 24 06            [12] 2405 	add	a,#0x06
      000B6E F5 81            [12] 2406 	mov	sp,a
                           0008F0  2407 	C$tasks.c$2640$2_0$246 ==.
                                   2408 ;	src/FreeRTOS/tasks.c:2640: BaseType_t xSwitchRequired = pdFALSE;
      000B70 E5 0C            [12] 2409 	mov	a,_bp
      000B72 24 04            [12] 2410 	add	a,#0x04
      000B74 F8               [12] 2411 	mov	r0,a
      000B75 76 00            [12] 2412 	mov	@r0,#0x00
                           0008F7  2413 	C$tasks.c$2646$1_0$246 ==.
                                   2414 ;	src/FreeRTOS/tasks.c:2646: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      000B77 90 00 74         [24] 2415 	mov	dptr,#_uxSchedulerSuspended
      000B7A E0               [24] 2416 	movx	a,@dptr
      000B7B 60 03            [24] 2417 	jz	00173$
      000B7D 02 0D F2         [24] 2418 	ljmp	00120$
      000B80                       2419 00173$:
                           000900  2420 	C$tasks.c$2650$2_0$247 ==.
                                   2421 ;	src/FreeRTOS/tasks.c:2650: const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
      000B80 90 00 67         [24] 2422 	mov	dptr,#_xTickCount
      000B83 E0               [24] 2423 	movx	a,@dptr
      000B84 FD               [12] 2424 	mov	r5,a
      000B85 A3               [24] 2425 	inc	dptr
      000B86 E0               [24] 2426 	movx	a,@dptr
      000B87 FE               [12] 2427 	mov	r6,a
      000B88 E5 0C            [12] 2428 	mov	a,_bp
      000B8A 24 05            [12] 2429 	add	a,#0x05
      000B8C F8               [12] 2430 	mov	r0,a
      000B8D 74 01            [12] 2431 	mov	a,#0x01
      000B8F 2D               [12] 2432 	add	a,r5
      000B90 F6               [12] 2433 	mov	@r0,a
      000B91 E4               [12] 2434 	clr	a
      000B92 3E               [12] 2435 	addc	a,r6
      000B93 08               [12] 2436 	inc	r0
      000B94 F6               [12] 2437 	mov	@r0,a
                           000915  2438 	C$tasks.c$2654$2_0$247 ==.
                                   2439 ;	src/FreeRTOS/tasks.c:2654: xTickCount = xConstTickCount;
      000B95 E5 0C            [12] 2440 	mov	a,_bp
      000B97 24 05            [12] 2441 	add	a,#0x05
      000B99 F8               [12] 2442 	mov	r0,a
      000B9A 90 00 67         [24] 2443 	mov	dptr,#_xTickCount
      000B9D E6               [12] 2444 	mov	a,@r0
      000B9E F0               [24] 2445 	movx	@dptr,a
      000B9F 08               [12] 2446 	inc	r0
      000BA0 E6               [12] 2447 	mov	a,@r0
      000BA1 A3               [24] 2448 	inc	dptr
      000BA2 F0               [24] 2449 	movx	@dptr,a
                           000923  2450 	C$tasks.c$2656$2_0$247 ==.
                                   2451 ;	src/FreeRTOS/tasks.c:2656: if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
      000BA3 E5 0C            [12] 2452 	mov	a,_bp
      000BA5 24 05            [12] 2453 	add	a,#0x05
      000BA7 F8               [12] 2454 	mov	r0,a
      000BA8 E6               [12] 2455 	mov	a,@r0
      000BA9 08               [12] 2456 	inc	r0
      000BAA 46               [12] 2457 	orl	a,@r0
      000BAB 70 3A            [24] 2458 	jnz	00102$
                           00092D  2459 	C$tasks.c$2658$1_0$246 ==.
                                   2460 ;	src/FreeRTOS/tasks.c:2658: taskSWITCH_DELAYED_LISTS();
      000BAD 90 00 54         [24] 2461 	mov	dptr,#_pxDelayedTaskList
      000BB0 E0               [24] 2462 	movx	a,@dptr
      000BB1 FA               [12] 2463 	mov	r2,a
      000BB2 A3               [24] 2464 	inc	dptr
      000BB3 E0               [24] 2465 	movx	a,@dptr
      000BB4 FB               [12] 2466 	mov	r3,a
      000BB5 A3               [24] 2467 	inc	dptr
      000BB6 E0               [24] 2468 	movx	a,@dptr
      000BB7 FC               [12] 2469 	mov	r4,a
      000BB8 8B 05            [24] 2470 	mov	ar5,r3
      000BBA 8C 06            [24] 2471 	mov	ar6,r4
      000BBC 90 00 57         [24] 2472 	mov	dptr,#_pxOverflowDelayedTaskList
      000BBF E0               [24] 2473 	movx	a,@dptr
      000BC0 FB               [12] 2474 	mov	r3,a
      000BC1 A3               [24] 2475 	inc	dptr
      000BC2 E0               [24] 2476 	movx	a,@dptr
      000BC3 FC               [12] 2477 	mov	r4,a
      000BC4 A3               [24] 2478 	inc	dptr
      000BC5 E0               [24] 2479 	movx	a,@dptr
      000BC6 FF               [12] 2480 	mov	r7,a
      000BC7 90 00 54         [24] 2481 	mov	dptr,#_pxDelayedTaskList
      000BCA EB               [12] 2482 	mov	a,r3
      000BCB F0               [24] 2483 	movx	@dptr,a
      000BCC EC               [12] 2484 	mov	a,r4
      000BCD A3               [24] 2485 	inc	dptr
      000BCE F0               [24] 2486 	movx	@dptr,a
      000BCF EF               [12] 2487 	mov	a,r7
      000BD0 A3               [24] 2488 	inc	dptr
      000BD1 F0               [24] 2489 	movx	@dptr,a
      000BD2 90 00 57         [24] 2490 	mov	dptr,#_pxOverflowDelayedTaskList
      000BD5 EA               [12] 2491 	mov	a,r2
      000BD6 F0               [24] 2492 	movx	@dptr,a
      000BD7 ED               [12] 2493 	mov	a,r5
      000BD8 A3               [24] 2494 	inc	dptr
      000BD9 F0               [24] 2495 	movx	@dptr,a
      000BDA EE               [12] 2496 	mov	a,r6
      000BDB A3               [24] 2497 	inc	dptr
      000BDC F0               [24] 2498 	movx	@dptr,a
      000BDD 90 00 6D         [24] 2499 	mov	dptr,#_xNumOfOverflows
      000BE0 E0               [24] 2500 	movx	a,@dptr
      000BE1 24 01            [12] 2501 	add	a,#0x01
      000BE3 F0               [24] 2502 	movx	@dptr,a
      000BE4 12 14 C0         [24] 2503 	lcall	_prvResetNextTaskUnblockTime
                           000967  2504 	C$tasks.c$2804$1_0$246 ==.
                                   2505 ;	src/FreeRTOS/tasks.c:2804: return xSwitchRequired;
                           000967  2506 	C$tasks.c$2658$2_0$247 ==.
                                   2507 ;	src/FreeRTOS/tasks.c:2658: taskSWITCH_DELAYED_LISTS();
      000BE7                       2508 00102$:
                           000967  2509 	C$tasks.c$2669$2_0$247 ==.
                                   2510 ;	src/FreeRTOS/tasks.c:2669: if( xConstTickCount >= xNextTaskUnblockTime )
      000BE7 90 00 6F         [24] 2511 	mov	dptr,#_xNextTaskUnblockTime
      000BEA E0               [24] 2512 	movx	a,@dptr
      000BEB FB               [12] 2513 	mov	r3,a
      000BEC A3               [24] 2514 	inc	dptr
      000BED E0               [24] 2515 	movx	a,@dptr
      000BEE FC               [12] 2516 	mov	r4,a
      000BEF E5 0C            [12] 2517 	mov	a,_bp
      000BF1 24 05            [12] 2518 	add	a,#0x05
      000BF3 F8               [12] 2519 	mov	r0,a
      000BF4 C3               [12] 2520 	clr	c
      000BF5 E6               [12] 2521 	mov	a,@r0
      000BF6 9B               [12] 2522 	subb	a,r3
      000BF7 08               [12] 2523 	inc	r0
      000BF8 E6               [12] 2524 	mov	a,@r0
      000BF9 9C               [12] 2525 	subb	a,r4
      000BFA 50 03            [24] 2526 	jnc	00175$
      000BFC 02 0D BB         [24] 2527 	ljmp	00116$
      000BFF                       2528 00175$:
      000BFF                       2529 00124$:
                           00097F  2530 	C$tasks.c$2673$5_0$253 ==.
                                   2531 ;	src/FreeRTOS/tasks.c:2673: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
      000BFF 90 00 54         [24] 2532 	mov	dptr,#_pxDelayedTaskList
      000C02 E0               [24] 2533 	movx	a,@dptr
      000C03 FA               [12] 2534 	mov	r2,a
      000C04 A3               [24] 2535 	inc	dptr
      000C05 E0               [24] 2536 	movx	a,@dptr
      000C06 FB               [12] 2537 	mov	r3,a
      000C07 A3               [24] 2538 	inc	dptr
      000C08 E0               [24] 2539 	movx	a,@dptr
      000C09 FC               [12] 2540 	mov	r4,a
      000C0A 8A 82            [24] 2541 	mov	dpl,r2
      000C0C 8B 83            [24] 2542 	mov	dph,r3
      000C0E 8C F0            [24] 2543 	mov	b,r4
      000C10 12 70 5A         [24] 2544 	lcall	__gptrget
      000C13 70 0B            [24] 2545 	jnz	00112$
                           000995  2546 	C$tasks.c$2680$6_0$254 ==.
                                   2547 ;	src/FreeRTOS/tasks.c:2680: xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      000C15 90 00 6F         [24] 2548 	mov	dptr,#_xNextTaskUnblockTime
      000C18 74 FF            [12] 2549 	mov	a,#0xff
      000C1A F0               [24] 2550 	movx	@dptr,a
      000C1B A3               [24] 2551 	inc	dptr
      000C1C F0               [24] 2552 	movx	@dptr,a
                           00099D  2553 	C$tasks.c$2681$6_0$254 ==.
                                   2554 ;	src/FreeRTOS/tasks.c:2681: break;
      000C1D 02 0D BB         [24] 2555 	ljmp	00116$
      000C20                       2556 00112$:
                           0009A0  2557 	C$tasks.c$2689$1_0$246 ==.
                                   2558 ;	src/FreeRTOS/tasks.c:2689: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      000C20 90 00 54         [24] 2559 	mov	dptr,#_pxDelayedTaskList
      000C23 E0               [24] 2560 	movx	a,@dptr
      000C24 FA               [12] 2561 	mov	r2,a
      000C25 A3               [24] 2562 	inc	dptr
      000C26 E0               [24] 2563 	movx	a,@dptr
      000C27 FB               [12] 2564 	mov	r3,a
      000C28 A3               [24] 2565 	inc	dptr
      000C29 E0               [24] 2566 	movx	a,@dptr
      000C2A FC               [12] 2567 	mov	r4,a
      000C2B 74 04            [12] 2568 	mov	a,#0x04
      000C2D 2A               [12] 2569 	add	a,r2
      000C2E FA               [12] 2570 	mov	r2,a
      000C2F E4               [12] 2571 	clr	a
      000C30 3B               [12] 2572 	addc	a,r3
      000C31 FB               [12] 2573 	mov	r3,a
      000C32 74 02            [12] 2574 	mov	a,#0x02
      000C34 2A               [12] 2575 	add	a,r2
      000C35 FA               [12] 2576 	mov	r2,a
      000C36 E4               [12] 2577 	clr	a
      000C37 3B               [12] 2578 	addc	a,r3
      000C38 FB               [12] 2579 	mov	r3,a
      000C39 8A 82            [24] 2580 	mov	dpl,r2
      000C3B 8B 83            [24] 2581 	mov	dph,r3
      000C3D 8C F0            [24] 2582 	mov	b,r4
      000C3F 12 70 5A         [24] 2583 	lcall	__gptrget
      000C42 FA               [12] 2584 	mov	r2,a
      000C43 A3               [24] 2585 	inc	dptr
      000C44 12 70 5A         [24] 2586 	lcall	__gptrget
      000C47 FB               [12] 2587 	mov	r3,a
      000C48 A3               [24] 2588 	inc	dptr
      000C49 12 70 5A         [24] 2589 	lcall	__gptrget
      000C4C FC               [12] 2590 	mov	r4,a
      000C4D 74 08            [12] 2591 	mov	a,#0x08
      000C4F 2A               [12] 2592 	add	a,r2
      000C50 FA               [12] 2593 	mov	r2,a
      000C51 E4               [12] 2594 	clr	a
      000C52 3B               [12] 2595 	addc	a,r3
      000C53 FB               [12] 2596 	mov	r3,a
      000C54 8A 82            [24] 2597 	mov	dpl,r2
      000C56 8B 83            [24] 2598 	mov	dph,r3
      000C58 8C F0            [24] 2599 	mov	b,r4
      000C5A 12 70 5A         [24] 2600 	lcall	__gptrget
      000C5D FA               [12] 2601 	mov	r2,a
      000C5E A3               [24] 2602 	inc	dptr
      000C5F 12 70 5A         [24] 2603 	lcall	__gptrget
      000C62 FB               [12] 2604 	mov	r3,a
      000C63 A3               [24] 2605 	inc	dptr
      000C64 12 70 5A         [24] 2606 	lcall	__gptrget
      000C67 FC               [12] 2607 	mov	r4,a
                           0009E8  2608 	C$tasks.c$2690$6_0$255 ==.
                                   2609 ;	src/FreeRTOS/tasks.c:2690: xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
      000C68 74 03            [12] 2610 	mov	a,#0x03
      000C6A 2A               [12] 2611 	add	a,r2
      000C6B FD               [12] 2612 	mov	r5,a
      000C6C E4               [12] 2613 	clr	a
      000C6D 3B               [12] 2614 	addc	a,r3
      000C6E FE               [12] 2615 	mov	r6,a
      000C6F 8C 07            [24] 2616 	mov	ar7,r4
      000C71 8D 82            [24] 2617 	mov	dpl,r5
      000C73 8E 83            [24] 2618 	mov	dph,r6
      000C75 8F F0            [24] 2619 	mov	b,r7
      000C77 12 70 5A         [24] 2620 	lcall	__gptrget
      000C7A FF               [12] 2621 	mov	r7,a
      000C7B A3               [24] 2622 	inc	dptr
      000C7C 12 70 5A         [24] 2623 	lcall	__gptrget
      000C7F FE               [12] 2624 	mov	r6,a
                           000A00  2625 	C$tasks.c$2692$6_0$255 ==.
                                   2626 ;	src/FreeRTOS/tasks.c:2692: if( xConstTickCount < xItemValue )
      000C80 E5 0C            [12] 2627 	mov	a,_bp
      000C82 24 05            [12] 2628 	add	a,#0x05
      000C84 F8               [12] 2629 	mov	r0,a
      000C85 C3               [12] 2630 	clr	c
      000C86 E6               [12] 2631 	mov	a,@r0
      000C87 9F               [12] 2632 	subb	a,r7
      000C88 08               [12] 2633 	inc	r0
      000C89 E6               [12] 2634 	mov	a,@r0
      000C8A 9E               [12] 2635 	subb	a,r6
      000C8B 50 0B            [24] 2636 	jnc	00104$
                           000A0D  2637 	C$tasks.c$2699$7_0$256 ==.
                                   2638 ;	src/FreeRTOS/tasks.c:2699: xNextTaskUnblockTime = xItemValue;
      000C8D 90 00 6F         [24] 2639 	mov	dptr,#_xNextTaskUnblockTime
      000C90 EF               [12] 2640 	mov	a,r7
      000C91 F0               [24] 2641 	movx	@dptr,a
      000C92 EE               [12] 2642 	mov	a,r6
      000C93 A3               [24] 2643 	inc	dptr
      000C94 F0               [24] 2644 	movx	@dptr,a
                           000A15  2645 	C$tasks.c$2700$7_0$256 ==.
                                   2646 ;	src/FreeRTOS/tasks.c:2700: break; /*lint !e9011 Code structure here is deedmed easier to understand with multiple breaks. */
      000C95 02 0D BB         [24] 2647 	ljmp	00116$
      000C98                       2648 00104$:
                           000A18  2649 	C$tasks.c$2708$1_0$246 ==.
                                   2650 ;	src/FreeRTOS/tasks.c:2708: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      000C98 74 03            [12] 2651 	mov	a,#0x03
      000C9A 2A               [12] 2652 	add	a,r2
      000C9B FD               [12] 2653 	mov	r5,a
      000C9C E4               [12] 2654 	clr	a
      000C9D 3B               [12] 2655 	addc	a,r3
      000C9E FE               [12] 2656 	mov	r6,a
      000C9F 8C 07            [24] 2657 	mov	ar7,r4
      000CA1 8D 82            [24] 2658 	mov	dpl,r5
      000CA3 8E 83            [24] 2659 	mov	dph,r6
      000CA5 8F F0            [24] 2660 	mov	b,r7
      000CA7 C0 04            [24] 2661 	push	ar4
      000CA9 C0 03            [24] 2662 	push	ar3
      000CAB C0 02            [24] 2663 	push	ar2
      000CAD 12 30 3B         [24] 2664 	lcall	_uxListRemove
      000CB0 D0 02            [24] 2665 	pop	ar2
      000CB2 D0 03            [24] 2666 	pop	ar3
      000CB4 D0 04            [24] 2667 	pop	ar4
                           000A36  2668 	C$tasks.c$2712$6_0$255 ==.
                                   2669 ;	src/FreeRTOS/tasks.c:2712: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
      000CB6 A8 0C            [24] 2670 	mov	r0,_bp
      000CB8 08               [12] 2671 	inc	r0
      000CB9 74 11            [12] 2672 	mov	a,#0x11
      000CBB 2A               [12] 2673 	add	a,r2
      000CBC F6               [12] 2674 	mov	@r0,a
      000CBD E4               [12] 2675 	clr	a
      000CBE 3B               [12] 2676 	addc	a,r3
      000CBF 08               [12] 2677 	inc	r0
      000CC0 F6               [12] 2678 	mov	@r0,a
      000CC1 08               [12] 2679 	inc	r0
      000CC2 A6 04            [24] 2680 	mov	@r0,ar4
      000CC4 74 1C            [12] 2681 	mov	a,#0x1c
      000CC6 2A               [12] 2682 	add	a,r2
      000CC7 FD               [12] 2683 	mov	r5,a
      000CC8 E4               [12] 2684 	clr	a
      000CC9 3B               [12] 2685 	addc	a,r3
      000CCA FE               [12] 2686 	mov	r6,a
      000CCB 8C 07            [24] 2687 	mov	ar7,r4
      000CCD 8D 82            [24] 2688 	mov	dpl,r5
      000CCF 8E 83            [24] 2689 	mov	dph,r6
      000CD1 8F F0            [24] 2690 	mov	b,r7
      000CD3 12 70 5A         [24] 2691 	lcall	__gptrget
      000CD6 FD               [12] 2692 	mov	r5,a
      000CD7 A3               [24] 2693 	inc	dptr
      000CD8 12 70 5A         [24] 2694 	lcall	__gptrget
      000CDB FE               [12] 2695 	mov	r6,a
      000CDC A3               [24] 2696 	inc	dptr
      000CDD 12 70 5A         [24] 2697 	lcall	__gptrget
      000CE0 ED               [12] 2698 	mov	a,r5
      000CE1 4E               [12] 2699 	orl	a,r6
      000CE2 60 1A            [24] 2700 	jz	00106$
                           000A64  2701 	C$tasks.c$2714$7_0$258 ==.
                                   2702 ;	src/FreeRTOS/tasks.c:2714: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
      000CE4 A8 0C            [24] 2703 	mov	r0,_bp
      000CE6 08               [12] 2704 	inc	r0
      000CE7 86 82            [24] 2705 	mov	dpl,@r0
      000CE9 08               [12] 2706 	inc	r0
      000CEA 86 83            [24] 2707 	mov	dph,@r0
      000CEC 08               [12] 2708 	inc	r0
      000CED 86 F0            [24] 2709 	mov	b,@r0
      000CEF C0 04            [24] 2710 	push	ar4
      000CF1 C0 03            [24] 2711 	push	ar3
      000CF3 C0 02            [24] 2712 	push	ar2
      000CF5 12 30 3B         [24] 2713 	lcall	_uxListRemove
      000CF8 D0 02            [24] 2714 	pop	ar2
      000CFA D0 03            [24] 2715 	pop	ar3
      000CFC D0 04            [24] 2716 	pop	ar4
      000CFE                       2717 00106$:
                           000A7E  2718 	C$tasks.c$2723$7_0$260 ==.
                                   2719 ;	src/FreeRTOS/tasks.c:2723: prvAddTaskToReadyList( pxTCB );
      000CFE 74 1F            [12] 2720 	mov	a,#0x1f
      000D00 2A               [12] 2721 	add	a,r2
      000D01 FD               [12] 2722 	mov	r5,a
      000D02 E4               [12] 2723 	clr	a
      000D03 3B               [12] 2724 	addc	a,r3
      000D04 FE               [12] 2725 	mov	r6,a
      000D05 8C 07            [24] 2726 	mov	ar7,r4
      000D07 8D 82            [24] 2727 	mov	dpl,r5
      000D09 8E 83            [24] 2728 	mov	dph,r6
      000D0B 8F F0            [24] 2729 	mov	b,r7
      000D0D A8 0C            [24] 2730 	mov	r0,_bp
      000D0F 08               [12] 2731 	inc	r0
      000D10 12 70 5A         [24] 2732 	lcall	__gptrget
      000D13 F6               [12] 2733 	mov	@r0,a
      000D14 C0 02            [24] 2734 	push	ar2
      000D16 C0 03            [24] 2735 	push	ar3
      000D18 C0 04            [24] 2736 	push	ar4
      000D1A 90 00 69         [24] 2737 	mov	dptr,#_uxTopReadyPriority
      000D1D E0               [24] 2738 	movx	a,@dptr
      000D1E FC               [12] 2739 	mov	r4,a
      000D1F A8 0C            [24] 2740 	mov	r0,_bp
      000D21 08               [12] 2741 	inc	r0
      000D22 C3               [12] 2742 	clr	c
      000D23 EC               [12] 2743 	mov	a,r4
      000D24 96               [12] 2744 	subb	a,@r0
      000D25 D0 04            [24] 2745 	pop	ar4
      000D27 D0 03            [24] 2746 	pop	ar3
      000D29 D0 02            [24] 2747 	pop	ar2
      000D2B 50 08            [24] 2748 	jnc	00108$
      000D2D A8 0C            [24] 2749 	mov	r0,_bp
      000D2F 08               [12] 2750 	inc	r0
      000D30 90 00 69         [24] 2751 	mov	dptr,#_uxTopReadyPriority
      000D33 E6               [12] 2752 	mov	a,@r0
      000D34 F0               [24] 2753 	movx	@dptr,a
      000D35                       2754 00108$:
      000D35 A8 0C            [24] 2755 	mov	r0,_bp
      000D37 08               [12] 2756 	inc	r0
      000D38 74 03            [12] 2757 	mov	a,#0x03
      000D3A 2A               [12] 2758 	add	a,r2
      000D3B F6               [12] 2759 	mov	@r0,a
      000D3C E4               [12] 2760 	clr	a
      000D3D 3B               [12] 2761 	addc	a,r3
      000D3E 08               [12] 2762 	inc	r0
      000D3F F6               [12] 2763 	mov	@r0,a
      000D40 08               [12] 2764 	inc	r0
      000D41 A6 04            [24] 2765 	mov	@r0,ar4
      000D43 8D 82            [24] 2766 	mov	dpl,r5
      000D45 8E 83            [24] 2767 	mov	dph,r6
      000D47 8F F0            [24] 2768 	mov	b,r7
      000D49 12 70 5A         [24] 2769 	lcall	__gptrget
      000D4C 75 F0 0C         [24] 2770 	mov	b,#0x0c
      000D4F A4               [48] 2771 	mul	ab
      000D50 24 0C            [12] 2772 	add	a,#_pxReadyTasksLists
      000D52 FB               [12] 2773 	mov	r3,a
      000D53 74 00            [12] 2774 	mov	a,#(_pxReadyTasksLists >> 8)
      000D55 35 F0            [12] 2775 	addc	a,b
      000D57 FC               [12] 2776 	mov	r4,a
      000D58 7A 00            [12] 2777 	mov	r2,#0x00
      000D5A C0 07            [24] 2778 	push	ar7
      000D5C C0 06            [24] 2779 	push	ar6
      000D5E C0 05            [24] 2780 	push	ar5
      000D60 A8 0C            [24] 2781 	mov	r0,_bp
      000D62 08               [12] 2782 	inc	r0
      000D63 E6               [12] 2783 	mov	a,@r0
      000D64 C0 E0            [24] 2784 	push	acc
      000D66 08               [12] 2785 	inc	r0
      000D67 E6               [12] 2786 	mov	a,@r0
      000D68 C0 E0            [24] 2787 	push	acc
      000D6A 08               [12] 2788 	inc	r0
      000D6B E6               [12] 2789 	mov	a,@r0
      000D6C C0 E0            [24] 2790 	push	acc
      000D6E 8B 82            [24] 2791 	mov	dpl,r3
      000D70 8C 83            [24] 2792 	mov	dph,r4
      000D72 8A F0            [24] 2793 	mov	b,r2
      000D74 12 2C DF         [24] 2794 	lcall	_vListInsertEnd
      000D77 15 81            [12] 2795 	dec	sp
      000D79 15 81            [12] 2796 	dec	sp
      000D7B 15 81            [12] 2797 	dec	sp
      000D7D D0 05            [24] 2798 	pop	ar5
      000D7F D0 06            [24] 2799 	pop	ar6
      000D81 D0 07            [24] 2800 	pop	ar7
                           000B03  2801 	C$tasks.c$2733$7_0$262 ==.
                                   2802 ;	src/FreeRTOS/tasks.c:2733: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
      000D83 8D 82            [24] 2803 	mov	dpl,r5
      000D85 8E 83            [24] 2804 	mov	dph,r6
      000D87 8F F0            [24] 2805 	mov	b,r7
      000D89 12 70 5A         [24] 2806 	lcall	__gptrget
      000D8C FD               [12] 2807 	mov	r5,a
      000D8D 90 00 09         [24] 2808 	mov	dptr,#_pxCurrentTCB
      000D90 E0               [24] 2809 	movx	a,@dptr
      000D91 FC               [12] 2810 	mov	r4,a
      000D92 A3               [24] 2811 	inc	dptr
      000D93 E0               [24] 2812 	movx	a,@dptr
      000D94 FE               [12] 2813 	mov	r6,a
      000D95 A3               [24] 2814 	inc	dptr
      000D96 E0               [24] 2815 	movx	a,@dptr
      000D97 FF               [12] 2816 	mov	r7,a
      000D98 74 1F            [12] 2817 	mov	a,#0x1f
      000D9A 2C               [12] 2818 	add	a,r4
      000D9B FC               [12] 2819 	mov	r4,a
      000D9C E4               [12] 2820 	clr	a
      000D9D 3E               [12] 2821 	addc	a,r6
      000D9E FE               [12] 2822 	mov	r6,a
      000D9F 8C 82            [24] 2823 	mov	dpl,r4
      000DA1 8E 83            [24] 2824 	mov	dph,r6
      000DA3 8F F0            [24] 2825 	mov	b,r7
      000DA5 12 70 5A         [24] 2826 	lcall	__gptrget
      000DA8 FC               [12] 2827 	mov	r4,a
      000DA9 C3               [12] 2828 	clr	c
      000DAA ED               [12] 2829 	mov	a,r5
      000DAB 9C               [12] 2830 	subb	a,r4
      000DAC 50 03            [24] 2831 	jnc	00180$
      000DAE 02 0B FF         [24] 2832 	ljmp	00124$
      000DB1                       2833 00180$:
                           000B31  2834 	C$tasks.c$2735$8_0$263 ==.
                                   2835 ;	src/FreeRTOS/tasks.c:2735: xSwitchRequired = pdTRUE;
      000DB1 E5 0C            [12] 2836 	mov	a,_bp
      000DB3 24 04            [12] 2837 	add	a,#0x04
      000DB5 F8               [12] 2838 	mov	r0,a
      000DB6 76 01            [12] 2839 	mov	@r0,#0x01
      000DB8 02 0B FF         [24] 2840 	ljmp	00124$
      000DBB                       2841 00116$:
                           000B3B  2842 	C$tasks.c$2752$3_0$265 ==.
                                   2843 ;	src/FreeRTOS/tasks.c:2752: if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
      000DBB 90 00 09         [24] 2844 	mov	dptr,#_pxCurrentTCB
      000DBE E0               [24] 2845 	movx	a,@dptr
      000DBF FD               [12] 2846 	mov	r5,a
      000DC0 A3               [24] 2847 	inc	dptr
      000DC1 E0               [24] 2848 	movx	a,@dptr
      000DC2 FE               [12] 2849 	mov	r6,a
      000DC3 A3               [24] 2850 	inc	dptr
      000DC4 E0               [24] 2851 	movx	a,@dptr
      000DC5 FF               [12] 2852 	mov	r7,a
      000DC6 74 1F            [12] 2853 	mov	a,#0x1f
      000DC8 2D               [12] 2854 	add	a,r5
      000DC9 FD               [12] 2855 	mov	r5,a
      000DCA E4               [12] 2856 	clr	a
      000DCB 3E               [12] 2857 	addc	a,r6
      000DCC FE               [12] 2858 	mov	r6,a
      000DCD 8D 82            [24] 2859 	mov	dpl,r5
      000DCF 8E 83            [24] 2860 	mov	dph,r6
      000DD1 8F F0            [24] 2861 	mov	b,r7
      000DD3 12 70 5A         [24] 2862 	lcall	__gptrget
      000DD6 75 F0 0C         [24] 2863 	mov	b,#0x0c
      000DD9 A4               [48] 2864 	mul	ab
      000DDA 24 0C            [12] 2865 	add	a,#_pxReadyTasksLists
      000DDC F5 82            [12] 2866 	mov	dpl,a
      000DDE 74 00            [12] 2867 	mov	a,#(_pxReadyTasksLists >> 8)
      000DE0 35 F0            [12] 2868 	addc	a,b
      000DE2 F5 83            [12] 2869 	mov	dph,a
      000DE4 E0               [24] 2870 	movx	a,@dptr
      000DE5 24 FE            [12] 2871 	add	a,#0xff - 0x01
      000DE7 50 10            [24] 2872 	jnc	00121$
                           000B69  2873 	C$tasks.c$2754$4_0$266 ==.
                                   2874 ;	src/FreeRTOS/tasks.c:2754: xSwitchRequired = pdTRUE;
      000DE9 E5 0C            [12] 2875 	mov	a,_bp
      000DEB 24 04            [12] 2876 	add	a,#0x04
      000DED F8               [12] 2877 	mov	r0,a
      000DEE 76 01            [12] 2878 	mov	@r0,#0x01
      000DF0 80 07            [24] 2879 	sjmp	00121$
      000DF2                       2880 00120$:
                           000B72  2881 	C$tasks.c$2780$2_0$268 ==.
                                   2882 ;	src/FreeRTOS/tasks.c:2780: ++uxPendedTicks;
      000DF2 90 00 6B         [24] 2883 	mov	dptr,#_uxPendedTicks
      000DF5 E0               [24] 2884 	movx	a,@dptr
      000DF6 24 01            [12] 2885 	add	a,#0x01
      000DF8 F0               [24] 2886 	movx	@dptr,a
      000DF9                       2887 00121$:
                           000B79  2888 	C$tasks.c$2793$2_0$269 ==.
                                   2889 ;	src/FreeRTOS/tasks.c:2793: if( xYieldPending != pdFALSE )
      000DF9 90 00 6C         [24] 2890 	mov	dptr,#_xYieldPending
      000DFC E0               [24] 2891 	movx	a,@dptr
      000DFD 60 07            [24] 2892 	jz	00123$
                           000B7F  2893 	C$tasks.c$2795$3_0$270 ==.
                                   2894 ;	src/FreeRTOS/tasks.c:2795: xSwitchRequired = pdTRUE;
      000DFF E5 0C            [12] 2895 	mov	a,_bp
      000E01 24 04            [12] 2896 	add	a,#0x04
      000E03 F8               [12] 2897 	mov	r0,a
      000E04 76 01            [12] 2898 	mov	@r0,#0x01
      000E06                       2899 00123$:
                           000B86  2900 	C$tasks.c$2804$1_0$246 ==.
                                   2901 ;	src/FreeRTOS/tasks.c:2804: return xSwitchRequired;
      000E06 E5 0C            [12] 2902 	mov	a,_bp
      000E08 24 04            [12] 2903 	add	a,#0x04
      000E0A F8               [12] 2904 	mov	r0,a
      000E0B 86 82            [24] 2905 	mov	dpl,@r0
                           000B8D  2906 	C$tasks.c$2805$1_0$246 ==.
                                   2907 ;	src/FreeRTOS/tasks.c:2805: }
      000E0D 85 0C 81         [24] 2908 	mov	sp,_bp
      000E10 D0 0C            [24] 2909 	pop	_bp
                           000B92  2910 	C$tasks.c$2805$1_0$246 ==.
                           000B92  2911 	XG$xTaskIncrementTick$0$0 ==.
      000E12 22               [24] 2912 	ret
                                   2913 ;------------------------------------------------------------
                                   2914 ;Allocation info for local variables in function 'vTaskSwitchContext'
                                   2915 ;------------------------------------------------------------
                                   2916 ;uxTopPriority             Allocated to stack - _bp +7
                                   2917 ;pxConstList               Allocated to stack - _bp +8
                                   2918 ;sloc0                     Allocated to stack - _bp +1
                                   2919 ;sloc1                     Allocated to stack - _bp +4
                                   2920 ;------------------------------------------------------------
                           000B93  2921 	G$vTaskSwitchContext$0$0 ==.
                           000B93  2922 	C$tasks.c$2900$1_0$273 ==.
                                   2923 ;	src/FreeRTOS/tasks.c:2900: void vTaskSwitchContext( void )
                                   2924 ;	-----------------------------------------
                                   2925 ;	 function vTaskSwitchContext
                                   2926 ;	-----------------------------------------
      000E13                       2927 _vTaskSwitchContext:
      000E13 C0 0C            [24] 2928 	push	_bp
      000E15 E5 81            [12] 2929 	mov	a,sp
      000E17 F5 0C            [12] 2930 	mov	_bp,a
      000E19 24 0A            [12] 2931 	add	a,#0x0a
      000E1B F5 81            [12] 2932 	mov	sp,a
                           000B9D  2933 	C$tasks.c$2902$1_0$273 ==.
                                   2934 ;	src/FreeRTOS/tasks.c:2902: if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
      000E1D 90 00 74         [24] 2935 	mov	dptr,#_uxSchedulerSuspended
      000E20 E0               [24] 2936 	movx	a,@dptr
      000E21 60 09            [24] 2937 	jz	00107$
                           000BA3  2938 	C$tasks.c$2906$2_0$274 ==.
                                   2939 ;	src/FreeRTOS/tasks.c:2906: xYieldPending = pdTRUE;
      000E23 90 00 6C         [24] 2940 	mov	dptr,#_xYieldPending
      000E26 74 01            [12] 2941 	mov	a,#0x01
      000E28 F0               [24] 2942 	movx	@dptr,a
      000E29 02 0F 8C         [24] 2943 	ljmp	00109$
      000E2C                       2944 00107$:
                           000BAC  2945 	C$tasks.c$2910$2_0$275 ==.
                                   2946 ;	src/FreeRTOS/tasks.c:2910: xYieldPending = pdFALSE;
      000E2C 90 00 6C         [24] 2947 	mov	dptr,#_xYieldPending
      000E2F E4               [12] 2948 	clr	a
      000E30 F0               [24] 2949 	movx	@dptr,a
                           000BB1  2950 	C$tasks.c$2952$4_0$276 ==.
                                   2951 ;	src/FreeRTOS/tasks.c:2952: taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      000E31 90 00 69         [24] 2952 	mov	dptr,#_uxTopReadyPriority
      000E34 E0               [24] 2953 	movx	a,@dptr
      000E35 FF               [12] 2954 	mov	r7,a
      000E36                       2955 00101$:
      000E36 EF               [12] 2956 	mov	a,r7
      000E37 75 F0 0C         [24] 2957 	mov	b,#0x0c
      000E3A A4               [48] 2958 	mul	ab
      000E3B FD               [12] 2959 	mov	r5,a
      000E3C AE F0            [24] 2960 	mov	r6,b
      000E3E 24 0C            [12] 2961 	add	a,#_pxReadyTasksLists
      000E40 FB               [12] 2962 	mov	r3,a
      000E41 EE               [12] 2963 	mov	a,r6
      000E42 34 00            [12] 2964 	addc	a,#(_pxReadyTasksLists >> 8)
      000E44 FC               [12] 2965 	mov	r4,a
      000E45 8B 82            [24] 2966 	mov	dpl,r3
      000E47 8C 83            [24] 2967 	mov	dph,r4
      000E49 E0               [24] 2968 	movx	a,@dptr
      000E4A 70 03            [24] 2969 	jnz	00115$
      000E4C 1F               [12] 2970 	dec	r7
      000E4D 80 E7            [24] 2971 	sjmp	00101$
      000E4F                       2972 00115$:
      000E4F E5 0C            [12] 2973 	mov	a,_bp
      000E51 24 07            [12] 2974 	add	a,#0x07
      000E53 F8               [12] 2975 	mov	r0,a
      000E54 A6 07            [24] 2976 	mov	@r0,ar7
      000E56 ED               [12] 2977 	mov	a,r5
      000E57 24 0C            [12] 2978 	add	a,#_pxReadyTasksLists
      000E59 FD               [12] 2979 	mov	r5,a
      000E5A EE               [12] 2980 	mov	a,r6
      000E5B 34 00            [12] 2981 	addc	a,#(_pxReadyTasksLists >> 8)
      000E5D FE               [12] 2982 	mov	r6,a
      000E5E E5 0C            [12] 2983 	mov	a,_bp
      000E60 24 08            [12] 2984 	add	a,#0x08
      000E62 F8               [12] 2985 	mov	r0,a
      000E63 A6 05            [24] 2986 	mov	@r0,ar5
      000E65 08               [12] 2987 	inc	r0
      000E66 A6 06            [24] 2988 	mov	@r0,ar6
      000E68 08               [12] 2989 	inc	r0
      000E69 76 00            [12] 2990 	mov	@r0,#0x00
      000E6B E5 0C            [12] 2991 	mov	a,_bp
      000E6D 24 08            [12] 2992 	add	a,#0x08
      000E6F F8               [12] 2993 	mov	r0,a
      000E70 74 01            [12] 2994 	mov	a,#0x01
      000E72 26               [12] 2995 	add	a,@r0
      000E73 FA               [12] 2996 	mov	r2,a
      000E74 E4               [12] 2997 	clr	a
      000E75 08               [12] 2998 	inc	r0
      000E76 36               [12] 2999 	addc	a,@r0
      000E77 FB               [12] 3000 	mov	r3,a
      000E78 08               [12] 3001 	inc	r0
      000E79 86 07            [24] 3002 	mov	ar7,@r0
      000E7B 8A 82            [24] 3003 	mov	dpl,r2
      000E7D 8B 83            [24] 3004 	mov	dph,r3
      000E7F 8F F0            [24] 3005 	mov	b,r7
      000E81 12 70 5A         [24] 3006 	lcall	__gptrget
      000E84 FC               [12] 3007 	mov	r4,a
      000E85 A3               [24] 3008 	inc	dptr
      000E86 12 70 5A         [24] 3009 	lcall	__gptrget
      000E89 FD               [12] 3010 	mov	r5,a
      000E8A A3               [24] 3011 	inc	dptr
      000E8B 12 70 5A         [24] 3012 	lcall	__gptrget
      000E8E FE               [12] 3013 	mov	r6,a
      000E8F 74 02            [12] 3014 	mov	a,#0x02
      000E91 2C               [12] 3015 	add	a,r4
      000E92 FC               [12] 3016 	mov	r4,a
      000E93 E4               [12] 3017 	clr	a
      000E94 3D               [12] 3018 	addc	a,r5
      000E95 FD               [12] 3019 	mov	r5,a
      000E96 8C 82            [24] 3020 	mov	dpl,r4
      000E98 8D 83            [24] 3021 	mov	dph,r5
      000E9A 8E F0            [24] 3022 	mov	b,r6
      000E9C 12 70 5A         [24] 3023 	lcall	__gptrget
      000E9F FC               [12] 3024 	mov	r4,a
      000EA0 A3               [24] 3025 	inc	dptr
      000EA1 12 70 5A         [24] 3026 	lcall	__gptrget
      000EA4 FD               [12] 3027 	mov	r5,a
      000EA5 A3               [24] 3028 	inc	dptr
      000EA6 12 70 5A         [24] 3029 	lcall	__gptrget
      000EA9 FE               [12] 3030 	mov	r6,a
      000EAA 8A 82            [24] 3031 	mov	dpl,r2
      000EAC 8B 83            [24] 3032 	mov	dph,r3
      000EAE 8F F0            [24] 3033 	mov	b,r7
      000EB0 EC               [12] 3034 	mov	a,r4
      000EB1 12 66 A0         [24] 3035 	lcall	__gptrput
      000EB4 A3               [24] 3036 	inc	dptr
      000EB5 ED               [12] 3037 	mov	a,r5
      000EB6 12 66 A0         [24] 3038 	lcall	__gptrput
      000EB9 A3               [24] 3039 	inc	dptr
      000EBA EE               [12] 3040 	mov	a,r6
      000EBB 12 66 A0         [24] 3041 	lcall	__gptrput
      000EBE 8A 82            [24] 3042 	mov	dpl,r2
      000EC0 8B 83            [24] 3043 	mov	dph,r3
      000EC2 8F F0            [24] 3044 	mov	b,r7
      000EC4 A8 0C            [24] 3045 	mov	r0,_bp
      000EC6 08               [12] 3046 	inc	r0
      000EC7 12 70 5A         [24] 3047 	lcall	__gptrget
      000ECA F6               [12] 3048 	mov	@r0,a
      000ECB A3               [24] 3049 	inc	dptr
      000ECC 12 70 5A         [24] 3050 	lcall	__gptrget
      000ECF 08               [12] 3051 	inc	r0
      000ED0 F6               [12] 3052 	mov	@r0,a
      000ED1 A3               [24] 3053 	inc	dptr
      000ED2 12 70 5A         [24] 3054 	lcall	__gptrget
      000ED5 08               [12] 3055 	inc	r0
      000ED6 F6               [12] 3056 	mov	@r0,a
      000ED7 E5 0C            [12] 3057 	mov	a,_bp
      000ED9 24 04            [12] 3058 	add	a,#0x04
      000EDB F8               [12] 3059 	mov	r0,a
      000EDC A6 04            [24] 3060 	mov	@r0,ar4
      000EDE 08               [12] 3061 	inc	r0
      000EDF A6 05            [24] 3062 	mov	@r0,ar5
      000EE1 08               [12] 3063 	inc	r0
      000EE2 A6 06            [24] 3064 	mov	@r0,ar6
      000EE4 E5 0C            [12] 3065 	mov	a,_bp
      000EE6 24 08            [12] 3066 	add	a,#0x08
      000EE8 F8               [12] 3067 	mov	r0,a
      000EE9 74 04            [12] 3068 	mov	a,#0x04
      000EEB 26               [12] 3069 	add	a,@r0
      000EEC FC               [12] 3070 	mov	r4,a
      000EED E4               [12] 3071 	clr	a
      000EEE 08               [12] 3072 	inc	r0
      000EEF 36               [12] 3073 	addc	a,@r0
      000EF0 FD               [12] 3074 	mov	r5,a
      000EF1 08               [12] 3075 	inc	r0
      000EF2 86 06            [24] 3076 	mov	ar6,@r0
      000EF4 E5 0C            [12] 3077 	mov	a,_bp
      000EF6 24 04            [12] 3078 	add	a,#0x04
      000EF8 F8               [12] 3079 	mov	r0,a
      000EF9 C0 04            [24] 3080 	push	ar4
      000EFB C0 05            [24] 3081 	push	ar5
      000EFD C0 06            [24] 3082 	push	ar6
      000EFF 86 82            [24] 3083 	mov	dpl,@r0
      000F01 08               [12] 3084 	inc	r0
      000F02 86 83            [24] 3085 	mov	dph,@r0
      000F04 08               [12] 3086 	inc	r0
      000F05 86 F0            [24] 3087 	mov	b,@r0
      000F07 12 00 11         [24] 3088 	lcall	___gptr_cmp
      000F0A 15 81            [12] 3089 	dec	sp
      000F0C 15 81            [12] 3090 	dec	sp
      000F0E 15 81            [12] 3091 	dec	sp
      000F10 70 36            [24] 3092 	jnz	00105$
      000F12 A8 0C            [24] 3093 	mov	r0,_bp
      000F14 08               [12] 3094 	inc	r0
      000F15 74 02            [12] 3095 	mov	a,#0x02
      000F17 26               [12] 3096 	add	a,@r0
      000F18 FC               [12] 3097 	mov	r4,a
      000F19 E4               [12] 3098 	clr	a
      000F1A 08               [12] 3099 	inc	r0
      000F1B 36               [12] 3100 	addc	a,@r0
      000F1C FD               [12] 3101 	mov	r5,a
      000F1D 08               [12] 3102 	inc	r0
      000F1E 86 06            [24] 3103 	mov	ar6,@r0
      000F20 8C 82            [24] 3104 	mov	dpl,r4
      000F22 8D 83            [24] 3105 	mov	dph,r5
      000F24 8E F0            [24] 3106 	mov	b,r6
      000F26 12 70 5A         [24] 3107 	lcall	__gptrget
      000F29 FC               [12] 3108 	mov	r4,a
      000F2A A3               [24] 3109 	inc	dptr
      000F2B 12 70 5A         [24] 3110 	lcall	__gptrget
      000F2E FD               [12] 3111 	mov	r5,a
      000F2F A3               [24] 3112 	inc	dptr
      000F30 12 70 5A         [24] 3113 	lcall	__gptrget
      000F33 FE               [12] 3114 	mov	r6,a
      000F34 8A 82            [24] 3115 	mov	dpl,r2
      000F36 8B 83            [24] 3116 	mov	dph,r3
      000F38 8F F0            [24] 3117 	mov	b,r7
      000F3A EC               [12] 3118 	mov	a,r4
      000F3B 12 66 A0         [24] 3119 	lcall	__gptrput
      000F3E A3               [24] 3120 	inc	dptr
      000F3F ED               [12] 3121 	mov	a,r5
      000F40 12 66 A0         [24] 3122 	lcall	__gptrput
      000F43 A3               [24] 3123 	inc	dptr
      000F44 EE               [12] 3124 	mov	a,r6
      000F45 12 66 A0         [24] 3125 	lcall	__gptrput
      000F48                       3126 00105$:
      000F48 8A 82            [24] 3127 	mov	dpl,r2
      000F4A 8B 83            [24] 3128 	mov	dph,r3
      000F4C 8F F0            [24] 3129 	mov	b,r7
      000F4E 12 70 5A         [24] 3130 	lcall	__gptrget
      000F51 FA               [12] 3131 	mov	r2,a
      000F52 A3               [24] 3132 	inc	dptr
      000F53 12 70 5A         [24] 3133 	lcall	__gptrget
      000F56 FB               [12] 3134 	mov	r3,a
      000F57 A3               [24] 3135 	inc	dptr
      000F58 12 70 5A         [24] 3136 	lcall	__gptrget
      000F5B FF               [12] 3137 	mov	r7,a
      000F5C 74 08            [12] 3138 	mov	a,#0x08
      000F5E 2A               [12] 3139 	add	a,r2
      000F5F FA               [12] 3140 	mov	r2,a
      000F60 E4               [12] 3141 	clr	a
      000F61 3B               [12] 3142 	addc	a,r3
      000F62 FB               [12] 3143 	mov	r3,a
      000F63 8A 82            [24] 3144 	mov	dpl,r2
      000F65 8B 83            [24] 3145 	mov	dph,r3
      000F67 8F F0            [24] 3146 	mov	b,r7
      000F69 12 70 5A         [24] 3147 	lcall	__gptrget
      000F6C FA               [12] 3148 	mov	r2,a
      000F6D A3               [24] 3149 	inc	dptr
      000F6E 12 70 5A         [24] 3150 	lcall	__gptrget
      000F71 FB               [12] 3151 	mov	r3,a
      000F72 A3               [24] 3152 	inc	dptr
      000F73 12 70 5A         [24] 3153 	lcall	__gptrget
      000F76 FF               [12] 3154 	mov	r7,a
      000F77 90 00 09         [24] 3155 	mov	dptr,#_pxCurrentTCB
      000F7A EA               [12] 3156 	mov	a,r2
      000F7B F0               [24] 3157 	movx	@dptr,a
      000F7C EB               [12] 3158 	mov	a,r3
      000F7D A3               [24] 3159 	inc	dptr
      000F7E F0               [24] 3160 	movx	@dptr,a
      000F7F EF               [12] 3161 	mov	a,r7
      000F80 A3               [24] 3162 	inc	dptr
      000F81 F0               [24] 3163 	movx	@dptr,a
      000F82 E5 0C            [12] 3164 	mov	a,_bp
      000F84 24 07            [12] 3165 	add	a,#0x07
      000F86 F8               [12] 3166 	mov	r0,a
      000F87 90 00 69         [24] 3167 	mov	dptr,#_uxTopReadyPriority
      000F8A E6               [12] 3168 	mov	a,@r0
      000F8B F0               [24] 3169 	movx	@dptr,a
      000F8C                       3170 00109$:
                           000D0C  3171 	C$tasks.c$2970$1_0$273 ==.
                                   3172 ;	src/FreeRTOS/tasks.c:2970: }
      000F8C 85 0C 81         [24] 3173 	mov	sp,_bp
      000F8F D0 0C            [24] 3174 	pop	_bp
                           000D11  3175 	C$tasks.c$2970$1_0$273 ==.
                           000D11  3176 	XG$vTaskSwitchContext$0$0 ==.
      000F91 22               [24] 3177 	ret
                                   3178 ;------------------------------------------------------------
                                   3179 ;Allocation info for local variables in function 'vTaskPlaceOnEventList'
                                   3180 ;------------------------------------------------------------
                                   3181 ;xTicksToWait              Allocated to stack - _bp -4
                                   3182 ;pxEventList               Allocated to registers r5 r6 r7 
                                   3183 ;------------------------------------------------------------
                           000D12  3184 	G$vTaskPlaceOnEventList$0$0 ==.
                           000D12  3185 	C$tasks.c$2973$1_0$281 ==.
                                   3186 ;	src/FreeRTOS/tasks.c:2973: void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
                                   3187 ;	-----------------------------------------
                                   3188 ;	 function vTaskPlaceOnEventList
                                   3189 ;	-----------------------------------------
      000F92                       3190 _vTaskPlaceOnEventList:
      000F92 C0 0C            [24] 3191 	push	_bp
      000F94 85 81 0C         [24] 3192 	mov	_bp,sp
      000F97 AD 82            [24] 3193 	mov	r5,dpl
      000F99 AE 83            [24] 3194 	mov	r6,dph
      000F9B AF F0            [24] 3195 	mov	r7,b
                           000D1D  3196 	C$tasks.c$2984$1_0$281 ==.
                                   3197 ;	src/FreeRTOS/tasks.c:2984: vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
      000F9D 90 00 09         [24] 3198 	mov	dptr,#_pxCurrentTCB
      000FA0 E0               [24] 3199 	movx	a,@dptr
      000FA1 FA               [12] 3200 	mov	r2,a
      000FA2 A3               [24] 3201 	inc	dptr
      000FA3 E0               [24] 3202 	movx	a,@dptr
      000FA4 FB               [12] 3203 	mov	r3,a
      000FA5 A3               [24] 3204 	inc	dptr
      000FA6 E0               [24] 3205 	movx	a,@dptr
      000FA7 FC               [12] 3206 	mov	r4,a
      000FA8 74 11            [12] 3207 	mov	a,#0x11
      000FAA 2A               [12] 3208 	add	a,r2
      000FAB FA               [12] 3209 	mov	r2,a
      000FAC E4               [12] 3210 	clr	a
      000FAD 3B               [12] 3211 	addc	a,r3
      000FAE FB               [12] 3212 	mov	r3,a
      000FAF C0 02            [24] 3213 	push	ar2
      000FB1 C0 03            [24] 3214 	push	ar3
      000FB3 C0 04            [24] 3215 	push	ar4
      000FB5 8D 82            [24] 3216 	mov	dpl,r5
      000FB7 8E 83            [24] 3217 	mov	dph,r6
      000FB9 8F F0            [24] 3218 	mov	b,r7
      000FBB 12 2E 3D         [24] 3219 	lcall	_vListInsert
      000FBE 15 81            [12] 3220 	dec	sp
      000FC0 15 81            [12] 3221 	dec	sp
      000FC2 15 81            [12] 3222 	dec	sp
                           000D44  3223 	C$tasks.c$2986$1_0$281 ==.
                                   3224 ;	src/FreeRTOS/tasks.c:2986: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      000FC4 74 01            [12] 3225 	mov	a,#0x01
      000FC6 C0 E0            [24] 3226 	push	acc
      000FC8 E5 0C            [12] 3227 	mov	a,_bp
      000FCA 24 FC            [12] 3228 	add	a,#0xfc
      000FCC F8               [12] 3229 	mov	r0,a
      000FCD 86 82            [24] 3230 	mov	dpl,@r0
      000FCF 08               [12] 3231 	inc	r0
      000FD0 86 83            [24] 3232 	mov	dph,@r0
      000FD2 12 22 38         [24] 3233 	lcall	_prvAddCurrentTaskToDelayedList
      000FD5 15 81            [12] 3234 	dec	sp
                           000D57  3235 	C$tasks.c$2987$1_0$281 ==.
                                   3236 ;	src/FreeRTOS/tasks.c:2987: }
      000FD7 D0 0C            [24] 3237 	pop	_bp
                           000D59  3238 	C$tasks.c$2987$1_0$281 ==.
                           000D59  3239 	XG$vTaskPlaceOnEventList$0$0 ==.
      000FD9 22               [24] 3240 	ret
                                   3241 ;------------------------------------------------------------
                                   3242 ;Allocation info for local variables in function 'vTaskPlaceOnUnorderedEventList'
                                   3243 ;------------------------------------------------------------
                                   3244 ;xItemValue                Allocated to stack - _bp -4
                                   3245 ;xTicksToWait              Allocated to stack - _bp -6
                                   3246 ;pxEventList               Allocated to stack - _bp +1
                                   3247 ;------------------------------------------------------------
                           000D5A  3248 	G$vTaskPlaceOnUnorderedEventList$0$0 ==.
                           000D5A  3249 	C$tasks.c$2990$1_0$283 ==.
                                   3250 ;	src/FreeRTOS/tasks.c:2990: void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
                                   3251 ;	-----------------------------------------
                                   3252 ;	 function vTaskPlaceOnUnorderedEventList
                                   3253 ;	-----------------------------------------
      000FDA                       3254 _vTaskPlaceOnUnorderedEventList:
      000FDA C0 0C            [24] 3255 	push	_bp
      000FDC 85 81 0C         [24] 3256 	mov	_bp,sp
      000FDF C0 82            [24] 3257 	push	dpl
      000FE1 C0 83            [24] 3258 	push	dph
      000FE3 C0 F0            [24] 3259 	push	b
                           000D65  3260 	C$tasks.c$3001$1_0$283 ==.
                                   3261 ;	src/FreeRTOS/tasks.c:3001: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
      000FE5 90 00 09         [24] 3262 	mov	dptr,#_pxCurrentTCB
      000FE8 E0               [24] 3263 	movx	a,@dptr
      000FE9 FA               [12] 3264 	mov	r2,a
      000FEA A3               [24] 3265 	inc	dptr
      000FEB E0               [24] 3266 	movx	a,@dptr
      000FEC FB               [12] 3267 	mov	r3,a
      000FED A3               [24] 3268 	inc	dptr
      000FEE E0               [24] 3269 	movx	a,@dptr
      000FEF FC               [12] 3270 	mov	r4,a
      000FF0 74 11            [12] 3271 	mov	a,#0x11
      000FF2 2A               [12] 3272 	add	a,r2
      000FF3 FA               [12] 3273 	mov	r2,a
      000FF4 E4               [12] 3274 	clr	a
      000FF5 3B               [12] 3275 	addc	a,r3
      000FF6 FB               [12] 3276 	mov	r3,a
      000FF7 E5 0C            [12] 3277 	mov	a,_bp
      000FF9 24 FC            [12] 3278 	add	a,#0xfc
      000FFB F8               [12] 3279 	mov	r0,a
      000FFC 86 06            [24] 3280 	mov	ar6,@r0
      000FFE 74 80            [12] 3281 	mov	a,#0x80
      001000 08               [12] 3282 	inc	r0
      001001 46               [12] 3283 	orl	a,@r0
      001002 FF               [12] 3284 	mov	r7,a
      001003 8A 82            [24] 3285 	mov	dpl,r2
      001005 8B 83            [24] 3286 	mov	dph,r3
      001007 8C F0            [24] 3287 	mov	b,r4
      001009 EE               [12] 3288 	mov	a,r6
      00100A 12 66 A0         [24] 3289 	lcall	__gptrput
      00100D A3               [24] 3290 	inc	dptr
      00100E EF               [12] 3291 	mov	a,r7
      00100F 12 66 A0         [24] 3292 	lcall	__gptrput
                           000D92  3293 	C$tasks.c$3008$1_0$283 ==.
                                   3294 ;	src/FreeRTOS/tasks.c:3008: vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
      001012 90 00 09         [24] 3295 	mov	dptr,#_pxCurrentTCB
      001015 E0               [24] 3296 	movx	a,@dptr
      001016 FD               [12] 3297 	mov	r5,a
      001017 A3               [24] 3298 	inc	dptr
      001018 E0               [24] 3299 	movx	a,@dptr
      001019 FE               [12] 3300 	mov	r6,a
      00101A A3               [24] 3301 	inc	dptr
      00101B E0               [24] 3302 	movx	a,@dptr
      00101C FF               [12] 3303 	mov	r7,a
      00101D 74 11            [12] 3304 	mov	a,#0x11
      00101F 2D               [12] 3305 	add	a,r5
      001020 FD               [12] 3306 	mov	r5,a
      001021 E4               [12] 3307 	clr	a
      001022 3E               [12] 3308 	addc	a,r6
      001023 FE               [12] 3309 	mov	r6,a
      001024 C0 05            [24] 3310 	push	ar5
      001026 C0 06            [24] 3311 	push	ar6
      001028 C0 07            [24] 3312 	push	ar7
      00102A A8 0C            [24] 3313 	mov	r0,_bp
      00102C 08               [12] 3314 	inc	r0
      00102D 86 82            [24] 3315 	mov	dpl,@r0
      00102F 08               [12] 3316 	inc	r0
      001030 86 83            [24] 3317 	mov	dph,@r0
      001032 08               [12] 3318 	inc	r0
      001033 86 F0            [24] 3319 	mov	b,@r0
      001035 12 2C DF         [24] 3320 	lcall	_vListInsertEnd
      001038 15 81            [12] 3321 	dec	sp
      00103A 15 81            [12] 3322 	dec	sp
      00103C 15 81            [12] 3323 	dec	sp
                           000DBE  3324 	C$tasks.c$3010$1_0$283 ==.
                                   3325 ;	src/FreeRTOS/tasks.c:3010: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      00103E 74 01            [12] 3326 	mov	a,#0x01
      001040 C0 E0            [24] 3327 	push	acc
      001042 E5 0C            [12] 3328 	mov	a,_bp
      001044 24 FA            [12] 3329 	add	a,#0xfa
      001046 F8               [12] 3330 	mov	r0,a
      001047 86 82            [24] 3331 	mov	dpl,@r0
      001049 08               [12] 3332 	inc	r0
      00104A 86 83            [24] 3333 	mov	dph,@r0
      00104C 12 22 38         [24] 3334 	lcall	_prvAddCurrentTaskToDelayedList
      00104F 15 81            [12] 3335 	dec	sp
                           000DD1  3336 	C$tasks.c$3011$1_0$283 ==.
                                   3337 ;	src/FreeRTOS/tasks.c:3011: }
      001051 85 0C 81         [24] 3338 	mov	sp,_bp
      001054 D0 0C            [24] 3339 	pop	_bp
                           000DD6  3340 	C$tasks.c$3011$1_0$283 ==.
                           000DD6  3341 	XG$vTaskPlaceOnUnorderedEventList$0$0 ==.
      001056 22               [24] 3342 	ret
                                   3343 ;------------------------------------------------------------
                                   3344 ;Allocation info for local variables in function 'xTaskRemoveFromEventList'
                                   3345 ;------------------------------------------------------------
                                   3346 ;pxEventList               Allocated to registers r5 r6 r7 
                                   3347 ;pxUnblockedTCB            Allocated to stack - _bp +1
                                   3348 ;xReturn                   Allocated to registers r7 
                                   3349 ;sloc0                     Allocated to stack - _bp +8
                                   3350 ;------------------------------------------------------------
                           000DD7  3351 	G$xTaskRemoveFromEventList$0$0 ==.
                           000DD7  3352 	C$tasks.c$3047$1_0$285 ==.
                                   3353 ;	src/FreeRTOS/tasks.c:3047: BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
                                   3354 ;	-----------------------------------------
                                   3355 ;	 function xTaskRemoveFromEventList
                                   3356 ;	-----------------------------------------
      001057                       3357 _xTaskRemoveFromEventList:
      001057 C0 0C            [24] 3358 	push	_bp
      001059 85 81 0C         [24] 3359 	mov	_bp,sp
      00105C 05 81            [12] 3360 	inc	sp
      00105E 05 81            [12] 3361 	inc	sp
      001060 05 81            [12] 3362 	inc	sp
      001062 AD 82            [24] 3363 	mov	r5,dpl
      001064 AE 83            [24] 3364 	mov	r6,dph
      001066 AF F0            [24] 3365 	mov	r7,b
                           000DE8  3366 	C$tasks.c$3065$1_0$285 ==.
                                   3367 ;	src/FreeRTOS/tasks.c:3065: pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      001068 74 04            [12] 3368 	mov	a,#0x04
      00106A 2D               [12] 3369 	add	a,r5
      00106B FD               [12] 3370 	mov	r5,a
      00106C E4               [12] 3371 	clr	a
      00106D 3E               [12] 3372 	addc	a,r6
      00106E FE               [12] 3373 	mov	r6,a
      00106F 74 02            [12] 3374 	mov	a,#0x02
      001071 2D               [12] 3375 	add	a,r5
      001072 FD               [12] 3376 	mov	r5,a
      001073 E4               [12] 3377 	clr	a
      001074 3E               [12] 3378 	addc	a,r6
      001075 FE               [12] 3379 	mov	r6,a
      001076 8D 82            [24] 3380 	mov	dpl,r5
      001078 8E 83            [24] 3381 	mov	dph,r6
      00107A 8F F0            [24] 3382 	mov	b,r7
      00107C 12 70 5A         [24] 3383 	lcall	__gptrget
      00107F FD               [12] 3384 	mov	r5,a
      001080 A3               [24] 3385 	inc	dptr
      001081 12 70 5A         [24] 3386 	lcall	__gptrget
      001084 FE               [12] 3387 	mov	r6,a
      001085 A3               [24] 3388 	inc	dptr
      001086 12 70 5A         [24] 3389 	lcall	__gptrget
      001089 FF               [12] 3390 	mov	r7,a
      00108A 74 08            [12] 3391 	mov	a,#0x08
      00108C 2D               [12] 3392 	add	a,r5
      00108D FD               [12] 3393 	mov	r5,a
      00108E E4               [12] 3394 	clr	a
      00108F 3E               [12] 3395 	addc	a,r6
      001090 FE               [12] 3396 	mov	r6,a
      001091 8D 82            [24] 3397 	mov	dpl,r5
      001093 8E 83            [24] 3398 	mov	dph,r6
      001095 8F F0            [24] 3399 	mov	b,r7
      001097 12 70 5A         [24] 3400 	lcall	__gptrget
      00109A FD               [12] 3401 	mov	r5,a
      00109B A3               [24] 3402 	inc	dptr
      00109C 12 70 5A         [24] 3403 	lcall	__gptrget
      00109F FE               [12] 3404 	mov	r6,a
      0010A0 A3               [24] 3405 	inc	dptr
      0010A1 12 70 5A         [24] 3406 	lcall	__gptrget
      0010A4 FF               [12] 3407 	mov	r7,a
      0010A5 A8 0C            [24] 3408 	mov	r0,_bp
      0010A7 08               [12] 3409 	inc	r0
      0010A8 A6 05            [24] 3410 	mov	@r0,ar5
      0010AA 08               [12] 3411 	inc	r0
      0010AB A6 06            [24] 3412 	mov	@r0,ar6
      0010AD 08               [12] 3413 	inc	r0
      0010AE A6 07            [24] 3414 	mov	@r0,ar7
                           000E30  3415 	C$tasks.c$3067$1_0$285 ==.
                                   3416 ;	src/FreeRTOS/tasks.c:3067: ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
      0010B0 A8 0C            [24] 3417 	mov	r0,_bp
      0010B2 08               [12] 3418 	inc	r0
      0010B3 74 11            [12] 3419 	mov	a,#0x11
      0010B5 26               [12] 3420 	add	a,@r0
      0010B6 FA               [12] 3421 	mov	r2,a
      0010B7 E4               [12] 3422 	clr	a
      0010B8 08               [12] 3423 	inc	r0
      0010B9 36               [12] 3424 	addc	a,@r0
      0010BA FB               [12] 3425 	mov	r3,a
      0010BB 08               [12] 3426 	inc	r0
      0010BC 86 04            [24] 3427 	mov	ar4,@r0
      0010BE 8A 82            [24] 3428 	mov	dpl,r2
      0010C0 8B 83            [24] 3429 	mov	dph,r3
      0010C2 8C F0            [24] 3430 	mov	b,r4
      0010C4 12 30 3B         [24] 3431 	lcall	_uxListRemove
                           000E47  3432 	C$tasks.c$3069$1_0$285 ==.
                                   3433 ;	src/FreeRTOS/tasks.c:3069: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      0010C7 90 00 74         [24] 3434 	mov	dptr,#_uxSchedulerSuspended
      0010CA E0               [24] 3435 	movx	a,@dptr
      0010CB 60 03            [24] 3436 	jz	00123$
      0010CD 02 11 48         [24] 3437 	ljmp	00104$
      0010D0                       3438 00123$:
                           000E50  3439 	C$tasks.c$3071$2_0$286 ==.
                                   3440 ;	src/FreeRTOS/tasks.c:3071: ( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
      0010D0 A8 0C            [24] 3441 	mov	r0,_bp
      0010D2 08               [12] 3442 	inc	r0
      0010D3 74 03            [12] 3443 	mov	a,#0x03
      0010D5 26               [12] 3444 	add	a,@r0
      0010D6 FA               [12] 3445 	mov	r2,a
      0010D7 E4               [12] 3446 	clr	a
      0010D8 08               [12] 3447 	inc	r0
      0010D9 36               [12] 3448 	addc	a,@r0
      0010DA FB               [12] 3449 	mov	r3,a
      0010DB 08               [12] 3450 	inc	r0
      0010DC 86 04            [24] 3451 	mov	ar4,@r0
      0010DE 8A 82            [24] 3452 	mov	dpl,r2
      0010E0 8B 83            [24] 3453 	mov	dph,r3
      0010E2 8C F0            [24] 3454 	mov	b,r4
      0010E4 12 30 3B         [24] 3455 	lcall	_uxListRemove
                           000E67  3456 	C$tasks.c$3072$3_0$287 ==.
                                   3457 ;	src/FreeRTOS/tasks.c:3072: prvAddTaskToReadyList( pxUnblockedTCB );
      0010E7 A8 0C            [24] 3458 	mov	r0,_bp
      0010E9 08               [12] 3459 	inc	r0
      0010EA 74 1F            [12] 3460 	mov	a,#0x1f
      0010EC 26               [12] 3461 	add	a,@r0
      0010ED FA               [12] 3462 	mov	r2,a
      0010EE E4               [12] 3463 	clr	a
      0010EF 08               [12] 3464 	inc	r0
      0010F0 36               [12] 3465 	addc	a,@r0
      0010F1 FB               [12] 3466 	mov	r3,a
      0010F2 08               [12] 3467 	inc	r0
      0010F3 86 04            [24] 3468 	mov	ar4,@r0
      0010F5 8A 82            [24] 3469 	mov	dpl,r2
      0010F7 8B 83            [24] 3470 	mov	dph,r3
      0010F9 8C F0            [24] 3471 	mov	b,r4
      0010FB 12 70 5A         [24] 3472 	lcall	__gptrget
      0010FE FE               [12] 3473 	mov	r6,a
      0010FF 90 00 69         [24] 3474 	mov	dptr,#_uxTopReadyPriority
      001102 E0               [24] 3475 	movx	a,@dptr
      001103 C3               [12] 3476 	clr	c
      001104 9E               [12] 3477 	subb	a,r6
      001105 50 05            [24] 3478 	jnc	00102$
      001107 90 00 69         [24] 3479 	mov	dptr,#_uxTopReadyPriority
      00110A EE               [12] 3480 	mov	a,r6
      00110B F0               [24] 3481 	movx	@dptr,a
      00110C                       3482 00102$:
      00110C A8 0C            [24] 3483 	mov	r0,_bp
      00110E 08               [12] 3484 	inc	r0
      00110F 74 03            [12] 3485 	mov	a,#0x03
      001111 26               [12] 3486 	add	a,@r0
      001112 FD               [12] 3487 	mov	r5,a
      001113 E4               [12] 3488 	clr	a
      001114 08               [12] 3489 	inc	r0
      001115 36               [12] 3490 	addc	a,@r0
      001116 FE               [12] 3491 	mov	r6,a
      001117 08               [12] 3492 	inc	r0
      001118 86 07            [24] 3493 	mov	ar7,@r0
      00111A 8A 82            [24] 3494 	mov	dpl,r2
      00111C 8B 83            [24] 3495 	mov	dph,r3
      00111E 8C F0            [24] 3496 	mov	b,r4
      001120 12 70 5A         [24] 3497 	lcall	__gptrget
      001123 75 F0 0C         [24] 3498 	mov	b,#0x0c
      001126 A4               [48] 3499 	mul	ab
      001127 24 0C            [12] 3500 	add	a,#_pxReadyTasksLists
      001129 FB               [12] 3501 	mov	r3,a
      00112A 74 00            [12] 3502 	mov	a,#(_pxReadyTasksLists >> 8)
      00112C 35 F0            [12] 3503 	addc	a,b
      00112E FC               [12] 3504 	mov	r4,a
      00112F 7A 00            [12] 3505 	mov	r2,#0x00
      001131 C0 05            [24] 3506 	push	ar5
      001133 C0 06            [24] 3507 	push	ar6
      001135 C0 07            [24] 3508 	push	ar7
      001137 8B 82            [24] 3509 	mov	dpl,r3
      001139 8C 83            [24] 3510 	mov	dph,r4
      00113B 8A F0            [24] 3511 	mov	b,r2
      00113D 12 2C DF         [24] 3512 	lcall	_vListInsertEnd
      001140 15 81            [12] 3513 	dec	sp
      001142 15 81            [12] 3514 	dec	sp
      001144 15 81            [12] 3515 	dec	sp
      001146 80 23            [24] 3516 	sjmp	00105$
      001148                       3517 00104$:
                           000EC8  3518 	C$tasks.c$3078$2_0$289 ==.
                                   3519 ;	src/FreeRTOS/tasks.c:3078: vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
      001148 A8 0C            [24] 3520 	mov	r0,_bp
      00114A 08               [12] 3521 	inc	r0
      00114B 74 11            [12] 3522 	mov	a,#0x11
      00114D 26               [12] 3523 	add	a,@r0
      00114E FD               [12] 3524 	mov	r5,a
      00114F E4               [12] 3525 	clr	a
      001150 08               [12] 3526 	inc	r0
      001151 36               [12] 3527 	addc	a,@r0
      001152 FE               [12] 3528 	mov	r6,a
      001153 08               [12] 3529 	inc	r0
      001154 86 07            [24] 3530 	mov	ar7,@r0
      001156 C0 05            [24] 3531 	push	ar5
      001158 C0 06            [24] 3532 	push	ar6
      00115A C0 07            [24] 3533 	push	ar7
      00115C 90 00 5A         [24] 3534 	mov	dptr,#_xPendingReadyList
      00115F 75 F0 00         [24] 3535 	mov	b,#0x00
      001162 12 2C DF         [24] 3536 	lcall	_vListInsertEnd
      001165 15 81            [12] 3537 	dec	sp
      001167 15 81            [12] 3538 	dec	sp
      001169 15 81            [12] 3539 	dec	sp
      00116B                       3540 00105$:
                           000EEB  3541 	C$tasks.c$3081$1_0$285 ==.
                                   3542 ;	src/FreeRTOS/tasks.c:3081: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
      00116B A8 0C            [24] 3543 	mov	r0,_bp
      00116D 08               [12] 3544 	inc	r0
      00116E 74 1F            [12] 3545 	mov	a,#0x1f
      001170 26               [12] 3546 	add	a,@r0
      001171 FD               [12] 3547 	mov	r5,a
      001172 E4               [12] 3548 	clr	a
      001173 08               [12] 3549 	inc	r0
      001174 36               [12] 3550 	addc	a,@r0
      001175 FE               [12] 3551 	mov	r6,a
      001176 08               [12] 3552 	inc	r0
      001177 86 07            [24] 3553 	mov	ar7,@r0
      001179 8D 82            [24] 3554 	mov	dpl,r5
      00117B 8E 83            [24] 3555 	mov	dph,r6
      00117D 8F F0            [24] 3556 	mov	b,r7
      00117F 12 70 5A         [24] 3557 	lcall	__gptrget
      001182 FD               [12] 3558 	mov	r5,a
      001183 90 00 09         [24] 3559 	mov	dptr,#_pxCurrentTCB
      001186 E0               [24] 3560 	movx	a,@dptr
      001187 FC               [12] 3561 	mov	r4,a
      001188 A3               [24] 3562 	inc	dptr
      001189 E0               [24] 3563 	movx	a,@dptr
      00118A FE               [12] 3564 	mov	r6,a
      00118B A3               [24] 3565 	inc	dptr
      00118C E0               [24] 3566 	movx	a,@dptr
      00118D FF               [12] 3567 	mov	r7,a
      00118E 74 1F            [12] 3568 	mov	a,#0x1f
      001190 2C               [12] 3569 	add	a,r4
      001191 FC               [12] 3570 	mov	r4,a
      001192 E4               [12] 3571 	clr	a
      001193 3E               [12] 3572 	addc	a,r6
      001194 FE               [12] 3573 	mov	r6,a
      001195 8C 82            [24] 3574 	mov	dpl,r4
      001197 8E 83            [24] 3575 	mov	dph,r6
      001199 8F F0            [24] 3576 	mov	b,r7
      00119B 12 70 5A         [24] 3577 	lcall	__gptrget
      00119E C3               [12] 3578 	clr	c
      00119F 9D               [12] 3579 	subb	a,r5
      0011A0 50 09            [24] 3580 	jnc	00107$
                           000F22  3581 	C$tasks.c$3086$2_0$290 ==.
                                   3582 ;	src/FreeRTOS/tasks.c:3086: xReturn = pdTRUE;
      0011A2 7F 01            [12] 3583 	mov	r7,#0x01
                           000F24  3584 	C$tasks.c$3090$2_0$290 ==.
                                   3585 ;	src/FreeRTOS/tasks.c:3090: xYieldPending = pdTRUE;
      0011A4 90 00 6C         [24] 3586 	mov	dptr,#_xYieldPending
      0011A7 EF               [12] 3587 	mov	a,r7
      0011A8 F0               [24] 3588 	movx	@dptr,a
      0011A9 80 02            [24] 3589 	sjmp	00108$
      0011AB                       3590 00107$:
                           000F2B  3591 	C$tasks.c$3094$2_0$291 ==.
                                   3592 ;	src/FreeRTOS/tasks.c:3094: xReturn = pdFALSE;
      0011AB 7F 00            [12] 3593 	mov	r7,#0x00
      0011AD                       3594 00108$:
                           000F2D  3595 	C$tasks.c$3111$1_0$285 ==.
                                   3596 ;	src/FreeRTOS/tasks.c:3111: return xReturn;
      0011AD 8F 82            [24] 3597 	mov	dpl,r7
                           000F2F  3598 	C$tasks.c$3112$1_0$285 ==.
                                   3599 ;	src/FreeRTOS/tasks.c:3112: }
      0011AF 85 0C 81         [24] 3600 	mov	sp,_bp
      0011B2 D0 0C            [24] 3601 	pop	_bp
                           000F34  3602 	C$tasks.c$3112$1_0$285 ==.
                           000F34  3603 	XG$xTaskRemoveFromEventList$0$0 ==.
      0011B4 22               [24] 3604 	ret
                                   3605 ;------------------------------------------------------------
                                   3606 ;Allocation info for local variables in function 'vTaskRemoveFromUnorderedEventList'
                                   3607 ;------------------------------------------------------------
                                   3608 ;xItemValue                Allocated to stack - _bp -4
                                   3609 ;pxEventListItem           Allocated to registers r5 r6 r7 
                                   3610 ;pxUnblockedTCB            Allocated to stack - _bp +4
                                   3611 ;sloc0                     Allocated to stack - _bp +7
                                   3612 ;sloc1                     Allocated to stack - _bp +1
                                   3613 ;------------------------------------------------------------
                           000F35  3614 	G$vTaskRemoveFromUnorderedEventList$0$0 ==.
                           000F35  3615 	C$tasks.c$3115$1_0$293 ==.
                                   3616 ;	src/FreeRTOS/tasks.c:3115: void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
                                   3617 ;	-----------------------------------------
                                   3618 ;	 function vTaskRemoveFromUnorderedEventList
                                   3619 ;	-----------------------------------------
      0011B5                       3620 _vTaskRemoveFromUnorderedEventList:
      0011B5 C0 0C            [24] 3621 	push	_bp
      0011B7 E5 81            [12] 3622 	mov	a,sp
      0011B9 F5 0C            [12] 3623 	mov	_bp,a
      0011BB 24 06            [12] 3624 	add	a,#0x06
      0011BD F5 81            [12] 3625 	mov	sp,a
      0011BF AD 82            [24] 3626 	mov	r5,dpl
      0011C1 AE 83            [24] 3627 	mov	r6,dph
      0011C3 AF F0            [24] 3628 	mov	r7,b
                           000F45  3629 	C$tasks.c$3124$1_0$293 ==.
                                   3630 ;	src/FreeRTOS/tasks.c:3124: listSET_LIST_ITEM_VALUE( pxEventListItem, xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
      0011C5 E5 0C            [12] 3631 	mov	a,_bp
      0011C7 24 FC            [12] 3632 	add	a,#0xfc
      0011C9 F8               [12] 3633 	mov	r0,a
      0011CA 86 03            [24] 3634 	mov	ar3,@r0
      0011CC 74 80            [12] 3635 	mov	a,#0x80
      0011CE 08               [12] 3636 	inc	r0
      0011CF 46               [12] 3637 	orl	a,@r0
      0011D0 FC               [12] 3638 	mov	r4,a
      0011D1 8D 82            [24] 3639 	mov	dpl,r5
      0011D3 8E 83            [24] 3640 	mov	dph,r6
      0011D5 8F F0            [24] 3641 	mov	b,r7
      0011D7 EB               [12] 3642 	mov	a,r3
      0011D8 12 66 A0         [24] 3643 	lcall	__gptrput
      0011DB A3               [24] 3644 	inc	dptr
      0011DC EC               [12] 3645 	mov	a,r4
      0011DD 12 66 A0         [24] 3646 	lcall	__gptrput
                           000F60  3647 	C$tasks.c$3128$1_0$293 ==.
                                   3648 ;	src/FreeRTOS/tasks.c:3128: pxUnblockedTCB = listGET_LIST_ITEM_OWNER( pxEventListItem ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      0011E0 74 08            [12] 3649 	mov	a,#0x08
      0011E2 2D               [12] 3650 	add	a,r5
      0011E3 FA               [12] 3651 	mov	r2,a
      0011E4 E4               [12] 3652 	clr	a
      0011E5 3E               [12] 3653 	addc	a,r6
      0011E6 FB               [12] 3654 	mov	r3,a
      0011E7 8F 04            [24] 3655 	mov	ar4,r7
      0011E9 8A 82            [24] 3656 	mov	dpl,r2
      0011EB 8B 83            [24] 3657 	mov	dph,r3
      0011ED 8C F0            [24] 3658 	mov	b,r4
      0011EF 12 70 5A         [24] 3659 	lcall	__gptrget
      0011F2 FA               [12] 3660 	mov	r2,a
      0011F3 A3               [24] 3661 	inc	dptr
      0011F4 12 70 5A         [24] 3662 	lcall	__gptrget
      0011F7 FB               [12] 3663 	mov	r3,a
      0011F8 A3               [24] 3664 	inc	dptr
      0011F9 12 70 5A         [24] 3665 	lcall	__gptrget
      0011FC FC               [12] 3666 	mov	r4,a
      0011FD E5 0C            [12] 3667 	mov	a,_bp
      0011FF 24 04            [12] 3668 	add	a,#0x04
      001201 F8               [12] 3669 	mov	r0,a
      001202 A6 02            [24] 3670 	mov	@r0,ar2
      001204 08               [12] 3671 	inc	r0
      001205 A6 03            [24] 3672 	mov	@r0,ar3
      001207 08               [12] 3673 	inc	r0
      001208 A6 04            [24] 3674 	mov	@r0,ar4
                           000F8A  3675 	C$tasks.c$3130$1_0$293 ==.
                                   3676 ;	src/FreeRTOS/tasks.c:3130: ( void ) uxListRemove( pxEventListItem );
      00120A 8D 82            [24] 3677 	mov	dpl,r5
      00120C 8E 83            [24] 3678 	mov	dph,r6
      00120E 8F F0            [24] 3679 	mov	b,r7
      001210 12 30 3B         [24] 3680 	lcall	_uxListRemove
                           000F93  3681 	C$tasks.c$3135$1_0$293 ==.
                                   3682 ;	src/FreeRTOS/tasks.c:3135: ( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
      001213 E5 0C            [12] 3683 	mov	a,_bp
      001215 24 04            [12] 3684 	add	a,#0x04
      001217 F8               [12] 3685 	mov	r0,a
      001218 74 03            [12] 3686 	mov	a,#0x03
      00121A 26               [12] 3687 	add	a,@r0
      00121B FD               [12] 3688 	mov	r5,a
      00121C E4               [12] 3689 	clr	a
      00121D 08               [12] 3690 	inc	r0
      00121E 36               [12] 3691 	addc	a,@r0
      00121F FE               [12] 3692 	mov	r6,a
      001220 08               [12] 3693 	inc	r0
      001221 86 07            [24] 3694 	mov	ar7,@r0
      001223 8D 82            [24] 3695 	mov	dpl,r5
      001225 8E 83            [24] 3696 	mov	dph,r6
      001227 8F F0            [24] 3697 	mov	b,r7
      001229 12 30 3B         [24] 3698 	lcall	_uxListRemove
                           000FAC  3699 	C$tasks.c$3136$2_0$294 ==.
                                   3700 ;	src/FreeRTOS/tasks.c:3136: prvAddTaskToReadyList( pxUnblockedTCB );
      00122C E5 0C            [12] 3701 	mov	a,_bp
      00122E 24 04            [12] 3702 	add	a,#0x04
      001230 F8               [12] 3703 	mov	r0,a
      001231 74 1F            [12] 3704 	mov	a,#0x1f
      001233 26               [12] 3705 	add	a,@r0
      001234 FD               [12] 3706 	mov	r5,a
      001235 E4               [12] 3707 	clr	a
      001236 08               [12] 3708 	inc	r0
      001237 36               [12] 3709 	addc	a,@r0
      001238 FE               [12] 3710 	mov	r6,a
      001239 08               [12] 3711 	inc	r0
      00123A 86 07            [24] 3712 	mov	ar7,@r0
      00123C 8D 82            [24] 3713 	mov	dpl,r5
      00123E 8E 83            [24] 3714 	mov	dph,r6
      001240 8F F0            [24] 3715 	mov	b,r7
      001242 12 70 5A         [24] 3716 	lcall	__gptrget
      001245 FB               [12] 3717 	mov	r3,a
      001246 90 00 69         [24] 3718 	mov	dptr,#_uxTopReadyPriority
      001249 E0               [24] 3719 	movx	a,@dptr
      00124A C3               [12] 3720 	clr	c
      00124B 9B               [12] 3721 	subb	a,r3
      00124C 50 05            [24] 3722 	jnc	00102$
      00124E 90 00 69         [24] 3723 	mov	dptr,#_uxTopReadyPriority
      001251 EB               [12] 3724 	mov	a,r3
      001252 F0               [24] 3725 	movx	@dptr,a
      001253                       3726 00102$:
      001253 E5 0C            [12] 3727 	mov	a,_bp
      001255 24 04            [12] 3728 	add	a,#0x04
      001257 F8               [12] 3729 	mov	r0,a
      001258 A9 0C            [24] 3730 	mov	r1,_bp
      00125A 09               [12] 3731 	inc	r1
      00125B 74 03            [12] 3732 	mov	a,#0x03
      00125D 26               [12] 3733 	add	a,@r0
      00125E F7               [12] 3734 	mov	@r1,a
      00125F E4               [12] 3735 	clr	a
      001260 08               [12] 3736 	inc	r0
      001261 36               [12] 3737 	addc	a,@r0
      001262 09               [12] 3738 	inc	r1
      001263 F7               [12] 3739 	mov	@r1,a
      001264 08               [12] 3740 	inc	r0
      001265 09               [12] 3741 	inc	r1
      001266 E6               [12] 3742 	mov	a,@r0
      001267 F7               [12] 3743 	mov	@r1,a
      001268 8D 82            [24] 3744 	mov	dpl,r5
      00126A 8E 83            [24] 3745 	mov	dph,r6
      00126C 8F F0            [24] 3746 	mov	b,r7
      00126E 12 70 5A         [24] 3747 	lcall	__gptrget
      001271 75 F0 0C         [24] 3748 	mov	b,#0x0c
      001274 A4               [48] 3749 	mul	ab
      001275 24 0C            [12] 3750 	add	a,#_pxReadyTasksLists
      001277 FB               [12] 3751 	mov	r3,a
      001278 74 00            [12] 3752 	mov	a,#(_pxReadyTasksLists >> 8)
      00127A 35 F0            [12] 3753 	addc	a,b
      00127C FC               [12] 3754 	mov	r4,a
      00127D 7A 00            [12] 3755 	mov	r2,#0x00
      00127F C0 07            [24] 3756 	push	ar7
      001281 C0 06            [24] 3757 	push	ar6
      001283 C0 05            [24] 3758 	push	ar5
      001285 A8 0C            [24] 3759 	mov	r0,_bp
      001287 08               [12] 3760 	inc	r0
      001288 E6               [12] 3761 	mov	a,@r0
      001289 C0 E0            [24] 3762 	push	acc
      00128B 08               [12] 3763 	inc	r0
      00128C E6               [12] 3764 	mov	a,@r0
      00128D C0 E0            [24] 3765 	push	acc
      00128F 08               [12] 3766 	inc	r0
      001290 E6               [12] 3767 	mov	a,@r0
      001291 C0 E0            [24] 3768 	push	acc
      001293 8B 82            [24] 3769 	mov	dpl,r3
      001295 8C 83            [24] 3770 	mov	dph,r4
      001297 8A F0            [24] 3771 	mov	b,r2
      001299 12 2C DF         [24] 3772 	lcall	_vListInsertEnd
      00129C 15 81            [12] 3773 	dec	sp
      00129E 15 81            [12] 3774 	dec	sp
      0012A0 15 81            [12] 3775 	dec	sp
      0012A2 D0 05            [24] 3776 	pop	ar5
      0012A4 D0 06            [24] 3777 	pop	ar6
      0012A6 D0 07            [24] 3778 	pop	ar7
                           001028  3779 	C$tasks.c$3138$1_0$293 ==.
                                   3780 ;	src/FreeRTOS/tasks.c:3138: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
      0012A8 8D 82            [24] 3781 	mov	dpl,r5
      0012AA 8E 83            [24] 3782 	mov	dph,r6
      0012AC 8F F0            [24] 3783 	mov	b,r7
      0012AE 12 70 5A         [24] 3784 	lcall	__gptrget
      0012B1 FD               [12] 3785 	mov	r5,a
      0012B2 90 00 09         [24] 3786 	mov	dptr,#_pxCurrentTCB
      0012B5 E0               [24] 3787 	movx	a,@dptr
      0012B6 FC               [12] 3788 	mov	r4,a
      0012B7 A3               [24] 3789 	inc	dptr
      0012B8 E0               [24] 3790 	movx	a,@dptr
      0012B9 FE               [12] 3791 	mov	r6,a
      0012BA A3               [24] 3792 	inc	dptr
      0012BB E0               [24] 3793 	movx	a,@dptr
      0012BC FF               [12] 3794 	mov	r7,a
      0012BD 74 1F            [12] 3795 	mov	a,#0x1f
      0012BF 2C               [12] 3796 	add	a,r4
      0012C0 FC               [12] 3797 	mov	r4,a
      0012C1 E4               [12] 3798 	clr	a
      0012C2 3E               [12] 3799 	addc	a,r6
      0012C3 FE               [12] 3800 	mov	r6,a
      0012C4 8C 82            [24] 3801 	mov	dpl,r4
      0012C6 8E 83            [24] 3802 	mov	dph,r6
      0012C8 8F F0            [24] 3803 	mov	b,r7
      0012CA 12 70 5A         [24] 3804 	lcall	__gptrget
      0012CD C3               [12] 3805 	clr	c
      0012CE 9D               [12] 3806 	subb	a,r5
      0012CF 50 06            [24] 3807 	jnc	00105$
                           001051  3808 	C$tasks.c$3144$2_0$296 ==.
                                   3809 ;	src/FreeRTOS/tasks.c:3144: xYieldPending = pdTRUE;
      0012D1 90 00 6C         [24] 3810 	mov	dptr,#_xYieldPending
      0012D4 74 01            [12] 3811 	mov	a,#0x01
      0012D6 F0               [24] 3812 	movx	@dptr,a
      0012D7                       3813 00105$:
                           001057  3814 	C$tasks.c$3146$1_0$293 ==.
                                   3815 ;	src/FreeRTOS/tasks.c:3146: }
      0012D7 85 0C 81         [24] 3816 	mov	sp,_bp
      0012DA D0 0C            [24] 3817 	pop	_bp
                           00105C  3818 	C$tasks.c$3146$1_0$293 ==.
                           00105C  3819 	XG$vTaskRemoveFromUnorderedEventList$0$0 ==.
      0012DC 22               [24] 3820 	ret
                                   3821 ;------------------------------------------------------------
                                   3822 ;Allocation info for local variables in function 'vTaskSetTimeOutState'
                                   3823 ;------------------------------------------------------------
                                   3824 ;pxTimeOut                 Allocated to registers r5 r6 r7 
                                   3825 ;------------------------------------------------------------
                           00105D  3826 	G$vTaskSetTimeOutState$0$0 ==.
                           00105D  3827 	C$tasks.c$3149$1_0$298 ==.
                                   3828 ;	src/FreeRTOS/tasks.c:3149: void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
                                   3829 ;	-----------------------------------------
                                   3830 ;	 function vTaskSetTimeOutState
                                   3831 ;	-----------------------------------------
      0012DD                       3832 _vTaskSetTimeOutState:
      0012DD AD 82            [24] 3833 	mov	r5,dpl
      0012DF AE 83            [24] 3834 	mov	r6,dph
      0012E1 AF F0            [24] 3835 	mov	r7,b
                           001063  3836 	C$tasks.c$3152$1_0$298 ==.
                                   3837 ;	src/FreeRTOS/tasks.c:3152: taskENTER_CRITICAL();
      0012E3 C0 E0            [24] 3838 	push ACC 
      0012E5 C0 A8            [24] 3839 	push IE 
                                   3840 ;	assignBit
      0012E7 C2 AF            [12] 3841 	clr	_EA
                           001069  3842 	C$tasks.c$3154$2_0$299 ==.
                                   3843 ;	src/FreeRTOS/tasks.c:3154: pxTimeOut->xOverflowCount = xNumOfOverflows;
      0012E9 90 00 6D         [24] 3844 	mov	dptr,#_xNumOfOverflows
      0012EC E0               [24] 3845 	movx	a,@dptr
      0012ED 8D 82            [24] 3846 	mov	dpl,r5
      0012EF 8E 83            [24] 3847 	mov	dph,r6
      0012F1 8F F0            [24] 3848 	mov	b,r7
      0012F3 12 66 A0         [24] 3849 	lcall	__gptrput
                           001076  3850 	C$tasks.c$3155$2_0$299 ==.
                                   3851 ;	src/FreeRTOS/tasks.c:3155: pxTimeOut->xTimeOnEntering = xTickCount;
      0012F6 0D               [12] 3852 	inc	r5
      0012F7 BD 00 01         [24] 3853 	cjne	r5,#0x00,00103$
      0012FA 0E               [12] 3854 	inc	r6
      0012FB                       3855 00103$:
      0012FB 90 00 67         [24] 3856 	mov	dptr,#_xTickCount
      0012FE E0               [24] 3857 	movx	a,@dptr
      0012FF FB               [12] 3858 	mov	r3,a
      001300 A3               [24] 3859 	inc	dptr
      001301 E0               [24] 3860 	movx	a,@dptr
      001302 FC               [12] 3861 	mov	r4,a
      001303 8D 82            [24] 3862 	mov	dpl,r5
      001305 8E 83            [24] 3863 	mov	dph,r6
      001307 8F F0            [24] 3864 	mov	b,r7
      001309 EB               [12] 3865 	mov	a,r3
      00130A 12 66 A0         [24] 3866 	lcall	__gptrput
      00130D A3               [24] 3867 	inc	dptr
      00130E EC               [12] 3868 	mov	a,r4
      00130F 12 66 A0         [24] 3869 	lcall	__gptrput
                           001092  3870 	C$tasks.c$3157$1_0$298 ==.
                                   3871 ;	src/FreeRTOS/tasks.c:3157: taskEXIT_CRITICAL();
      001312 D0 E0            [24] 3872 	pop ACC 
      001314 53 E0 80         [24] 3873 	anl	_ACC,#0x80
      001317 E5 E0            [12] 3874 	mov	a,_ACC
      001319 42 A8            [12] 3875 	orl	_IE,a
      00131B D0 E0            [24] 3876 	pop ACC 
                           00109D  3877 	C$tasks.c$3158$1_0$298 ==.
                                   3878 ;	src/FreeRTOS/tasks.c:3158: }
                           00109D  3879 	C$tasks.c$3158$1_0$298 ==.
                           00109D  3880 	XG$vTaskSetTimeOutState$0$0 ==.
      00131D 22               [24] 3881 	ret
                                   3882 ;------------------------------------------------------------
                                   3883 ;Allocation info for local variables in function 'vTaskInternalSetTimeOutState'
                                   3884 ;------------------------------------------------------------
                                   3885 ;pxTimeOut                 Allocated to registers r5 r6 r7 
                                   3886 ;------------------------------------------------------------
                           00109E  3887 	G$vTaskInternalSetTimeOutState$0$0 ==.
                           00109E  3888 	C$tasks.c$3161$1_0$301 ==.
                                   3889 ;	src/FreeRTOS/tasks.c:3161: void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
                                   3890 ;	-----------------------------------------
                                   3891 ;	 function vTaskInternalSetTimeOutState
                                   3892 ;	-----------------------------------------
      00131E                       3893 _vTaskInternalSetTimeOutState:
      00131E AD 82            [24] 3894 	mov	r5,dpl
      001320 AE 83            [24] 3895 	mov	r6,dph
      001322 AF F0            [24] 3896 	mov	r7,b
                           0010A4  3897 	C$tasks.c$3164$1_0$301 ==.
                                   3898 ;	src/FreeRTOS/tasks.c:3164: pxTimeOut->xOverflowCount = xNumOfOverflows;
      001324 90 00 6D         [24] 3899 	mov	dptr,#_xNumOfOverflows
      001327 E0               [24] 3900 	movx	a,@dptr
      001328 8D 82            [24] 3901 	mov	dpl,r5
      00132A 8E 83            [24] 3902 	mov	dph,r6
      00132C 8F F0            [24] 3903 	mov	b,r7
      00132E 12 66 A0         [24] 3904 	lcall	__gptrput
                           0010B1  3905 	C$tasks.c$3165$1_0$301 ==.
                                   3906 ;	src/FreeRTOS/tasks.c:3165: pxTimeOut->xTimeOnEntering = xTickCount;
      001331 0D               [12] 3907 	inc	r5
      001332 BD 00 01         [24] 3908 	cjne	r5,#0x00,00103$
      001335 0E               [12] 3909 	inc	r6
      001336                       3910 00103$:
      001336 90 00 67         [24] 3911 	mov	dptr,#_xTickCount
      001339 E0               [24] 3912 	movx	a,@dptr
      00133A FB               [12] 3913 	mov	r3,a
      00133B A3               [24] 3914 	inc	dptr
      00133C E0               [24] 3915 	movx	a,@dptr
      00133D FC               [12] 3916 	mov	r4,a
      00133E 8D 82            [24] 3917 	mov	dpl,r5
      001340 8E 83            [24] 3918 	mov	dph,r6
      001342 8F F0            [24] 3919 	mov	b,r7
      001344 EB               [12] 3920 	mov	a,r3
      001345 12 66 A0         [24] 3921 	lcall	__gptrput
      001348 A3               [24] 3922 	inc	dptr
      001349 EC               [12] 3923 	mov	a,r4
      00134A 12 66 A0         [24] 3924 	lcall	__gptrput
                           0010CD  3925 	C$tasks.c$3166$1_0$301 ==.
                                   3926 ;	src/FreeRTOS/tasks.c:3166: }
                           0010CD  3927 	C$tasks.c$3166$1_0$301 ==.
                           0010CD  3928 	XG$vTaskInternalSetTimeOutState$0$0 ==.
      00134D 22               [24] 3929 	ret
                                   3930 ;------------------------------------------------------------
                                   3931 ;Allocation info for local variables in function 'xTaskCheckForTimeOut'
                                   3932 ;------------------------------------------------------------
                                   3933 ;pxTicksToWait             Allocated to stack - _bp -5
                                   3934 ;pxTimeOut                 Allocated to stack - _bp +1
                                   3935 ;xReturn                   Allocated to registers r6 
                                   3936 ;xConstTickCount           Allocated to stack - _bp +6
                                   3937 ;xElapsedTime              Allocated to registers r2 r7 
                                   3938 ;sloc0                     Allocated to stack - _bp +4
                                   3939 ;------------------------------------------------------------
                           0010CE  3940 	G$xTaskCheckForTimeOut$0$0 ==.
                           0010CE  3941 	C$tasks.c$3169$1_0$303 ==.
                                   3942 ;	src/FreeRTOS/tasks.c:3169: BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
                                   3943 ;	-----------------------------------------
                                   3944 ;	 function xTaskCheckForTimeOut
                                   3945 ;	-----------------------------------------
      00134E                       3946 _xTaskCheckForTimeOut:
      00134E C0 0C            [24] 3947 	push	_bp
      001350 85 81 0C         [24] 3948 	mov	_bp,sp
      001353 C0 82            [24] 3949 	push	dpl
      001355 C0 83            [24] 3950 	push	dph
      001357 C0 F0            [24] 3951 	push	b
      001359 E5 81            [12] 3952 	mov	a,sp
      00135B 24 04            [12] 3953 	add	a,#0x04
      00135D F5 81            [12] 3954 	mov	sp,a
                           0010DF  3955 	C$tasks.c$3176$1_0$303 ==.
                                   3956 ;	src/FreeRTOS/tasks.c:3176: taskENTER_CRITICAL();
      00135F C0 E0            [24] 3957 	push ACC 
      001361 C0 A8            [24] 3958 	push IE 
                                   3959 ;	assignBit
      001363 C2 AF            [12] 3960 	clr	_EA
                           0010E5  3961 	C$tasks.c$3179$3_0$304 ==.
                                   3962 ;	src/FreeRTOS/tasks.c:3179: const TickType_t xConstTickCount = xTickCount;
      001365 90 00 67         [24] 3963 	mov	dptr,#_xTickCount
      001368 E0               [24] 3964 	movx	a,@dptr
      001369 FB               [12] 3965 	mov	r3,a
      00136A A3               [24] 3966 	inc	dptr
      00136B E0               [24] 3967 	movx	a,@dptr
      00136C FC               [12] 3968 	mov	r4,a
      00136D E5 0C            [12] 3969 	mov	a,_bp
      00136F 24 06            [12] 3970 	add	a,#0x06
      001371 F8               [12] 3971 	mov	r0,a
      001372 A6 03            [24] 3972 	mov	@r0,ar3
      001374 08               [12] 3973 	inc	r0
      001375 A6 04            [24] 3974 	mov	@r0,ar4
                           0010F7  3975 	C$tasks.c$3180$2_0$304 ==.
                                   3976 ;	src/FreeRTOS/tasks.c:3180: const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
      001377 A8 0C            [24] 3977 	mov	r0,_bp
      001379 08               [12] 3978 	inc	r0
      00137A 74 01            [12] 3979 	mov	a,#0x01
      00137C 26               [12] 3980 	add	a,@r0
      00137D FB               [12] 3981 	mov	r3,a
      00137E E4               [12] 3982 	clr	a
      00137F 08               [12] 3983 	inc	r0
      001380 36               [12] 3984 	addc	a,@r0
      001381 FA               [12] 3985 	mov	r2,a
      001382 08               [12] 3986 	inc	r0
      001383 86 04            [24] 3987 	mov	ar4,@r0
      001385 8B 82            [24] 3988 	mov	dpl,r3
      001387 8A 83            [24] 3989 	mov	dph,r2
      001389 8C F0            [24] 3990 	mov	b,r4
      00138B 12 70 5A         [24] 3991 	lcall	__gptrget
      00138E FB               [12] 3992 	mov	r3,a
      00138F A3               [24] 3993 	inc	dptr
      001390 12 70 5A         [24] 3994 	lcall	__gptrget
      001393 FC               [12] 3995 	mov	r4,a
      001394 E5 0C            [12] 3996 	mov	a,_bp
      001396 24 06            [12] 3997 	add	a,#0x06
      001398 F8               [12] 3998 	mov	r0,a
      001399 E6               [12] 3999 	mov	a,@r0
      00139A C3               [12] 4000 	clr	c
      00139B 9B               [12] 4001 	subb	a,r3
      00139C FE               [12] 4002 	mov	r6,a
      00139D 08               [12] 4003 	inc	r0
      00139E E6               [12] 4004 	mov	a,@r0
      00139F 9C               [12] 4005 	subb	a,r4
      0013A0 FF               [12] 4006 	mov	r7,a
      0013A1 8E 02            [24] 4007 	mov	ar2,r6
                           001123  4008 	C$tasks.c$3204$2_0$304 ==.
                                   4009 ;	src/FreeRTOS/tasks.c:3204: if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
      0013A3 A8 0C            [24] 4010 	mov	r0,_bp
      0013A5 08               [12] 4011 	inc	r0
      0013A6 86 82            [24] 4012 	mov	dpl,@r0
      0013A8 08               [12] 4013 	inc	r0
      0013A9 86 83            [24] 4014 	mov	dph,@r0
      0013AB 08               [12] 4015 	inc	r0
      0013AC 86 F0            [24] 4016 	mov	b,@r0
      0013AE 12 70 5A         [24] 4017 	lcall	__gptrget
      0013B1 FE               [12] 4018 	mov	r6,a
      0013B2 90 00 6D         [24] 4019 	mov	dptr,#_xNumOfOverflows
      0013B5 E0               [24] 4020 	movx	a,@dptr
      0013B6 FD               [12] 4021 	mov	r5,a
      0013B7 B5 06 02         [24] 4022 	cjne	a,ar6,00122$
      0013BA 80 11            [24] 4023 	sjmp	00105$
      0013BC                       4024 00122$:
      0013BC E5 0C            [12] 4025 	mov	a,_bp
      0013BE 24 06            [12] 4026 	add	a,#0x06
      0013C0 F8               [12] 4027 	mov	r0,a
      0013C1 C3               [12] 4028 	clr	c
      0013C2 E6               [12] 4029 	mov	a,@r0
      0013C3 9B               [12] 4030 	subb	a,r3
      0013C4 08               [12] 4031 	inc	r0
      0013C5 E6               [12] 4032 	mov	a,@r0
      0013C6 9C               [12] 4033 	subb	a,r4
      0013C7 40 04            [24] 4034 	jc	00105$
                           001149  4035 	C$tasks.c$3211$3_0$305 ==.
                                   4036 ;	src/FreeRTOS/tasks.c:3211: xReturn = pdTRUE;
      0013C9 7E 01            [12] 4037 	mov	r6,#0x01
      0013CB 80 6D            [24] 4038 	sjmp	00106$
      0013CD                       4039 00105$:
                           00114D  4040 	C$tasks.c$3213$2_0$304 ==.
                                   4041 ;	src/FreeRTOS/tasks.c:3213: else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
      0013CD E5 0C            [12] 4042 	mov	a,_bp
      0013CF 24 FB            [12] 4043 	add	a,#0xfb
      0013D1 F8               [12] 4044 	mov	r0,a
      0013D2 86 03            [24] 4045 	mov	ar3,@r0
      0013D4 08               [12] 4046 	inc	r0
      0013D5 86 04            [24] 4047 	mov	ar4,@r0
      0013D7 08               [12] 4048 	inc	r0
      0013D8 86 05            [24] 4049 	mov	ar5,@r0
      0013DA 8B 82            [24] 4050 	mov	dpl,r3
      0013DC 8C 83            [24] 4051 	mov	dph,r4
      0013DE 8D F0            [24] 4052 	mov	b,r5
      0013E0 E5 0C            [12] 4053 	mov	a,_bp
      0013E2 24 04            [12] 4054 	add	a,#0x04
      0013E4 F8               [12] 4055 	mov	r0,a
      0013E5 12 70 5A         [24] 4056 	lcall	__gptrget
      0013E8 F6               [12] 4057 	mov	@r0,a
      0013E9 A3               [24] 4058 	inc	dptr
      0013EA 12 70 5A         [24] 4059 	lcall	__gptrget
      0013ED 08               [12] 4060 	inc	r0
      0013EE F6               [12] 4061 	mov	@r0,a
      0013EF E5 0C            [12] 4062 	mov	a,_bp
      0013F1 24 04            [12] 4063 	add	a,#0x04
      0013F3 F8               [12] 4064 	mov	r0,a
      0013F4 C3               [12] 4065 	clr	c
      0013F5 EA               [12] 4066 	mov	a,r2
      0013F6 96               [12] 4067 	subb	a,@r0
      0013F7 EF               [12] 4068 	mov	a,r7
      0013F8 08               [12] 4069 	inc	r0
      0013F9 96               [12] 4070 	subb	a,@r0
      0013FA 50 2E            [24] 4071 	jnc	00102$
                           00117C  4072 	C$tasks.c$3216$3_0$306 ==.
                                   4073 ;	src/FreeRTOS/tasks.c:3216: *pxTicksToWait -= xElapsedTime;
      0013FC E5 0C            [12] 4074 	mov	a,_bp
      0013FE 24 04            [12] 4075 	add	a,#0x04
      001400 F8               [12] 4076 	mov	r0,a
      001401 E6               [12] 4077 	mov	a,@r0
      001402 C3               [12] 4078 	clr	c
      001403 9A               [12] 4079 	subb	a,r2
      001404 FA               [12] 4080 	mov	r2,a
      001405 08               [12] 4081 	inc	r0
      001406 E6               [12] 4082 	mov	a,@r0
      001407 9F               [12] 4083 	subb	a,r7
      001408 FF               [12] 4084 	mov	r7,a
      001409 8B 82            [24] 4085 	mov	dpl,r3
      00140B 8C 83            [24] 4086 	mov	dph,r4
      00140D 8D F0            [24] 4087 	mov	b,r5
      00140F EA               [12] 4088 	mov	a,r2
      001410 12 66 A0         [24] 4089 	lcall	__gptrput
      001413 A3               [24] 4090 	inc	dptr
      001414 EF               [12] 4091 	mov	a,r7
      001415 12 66 A0         [24] 4092 	lcall	__gptrput
                           001198  4093 	C$tasks.c$3217$3_0$306 ==.
                                   4094 ;	src/FreeRTOS/tasks.c:3217: vTaskInternalSetTimeOutState( pxTimeOut );
      001418 A8 0C            [24] 4095 	mov	r0,_bp
      00141A 08               [12] 4096 	inc	r0
      00141B 86 82            [24] 4097 	mov	dpl,@r0
      00141D 08               [12] 4098 	inc	r0
      00141E 86 83            [24] 4099 	mov	dph,@r0
      001420 08               [12] 4100 	inc	r0
      001421 86 F0            [24] 4101 	mov	b,@r0
      001423 12 13 1E         [24] 4102 	lcall	_vTaskInternalSetTimeOutState
                           0011A6  4103 	C$tasks.c$3218$3_0$306 ==.
                                   4104 ;	src/FreeRTOS/tasks.c:3218: xReturn = pdFALSE;
      001426 7E 00            [12] 4105 	mov	r6,#0x00
      001428 80 10            [24] 4106 	sjmp	00106$
      00142A                       4107 00102$:
                           0011AA  4108 	C$tasks.c$3222$3_0$307 ==.
                                   4109 ;	src/FreeRTOS/tasks.c:3222: *pxTicksToWait = 0;
      00142A 8B 82            [24] 4110 	mov	dpl,r3
      00142C 8C 83            [24] 4111 	mov	dph,r4
      00142E 8D F0            [24] 4112 	mov	b,r5
      001430 E4               [12] 4113 	clr	a
      001431 12 66 A0         [24] 4114 	lcall	__gptrput
      001434 A3               [24] 4115 	inc	dptr
      001435 12 66 A0         [24] 4116 	lcall	__gptrput
                           0011B8  4117 	C$tasks.c$3223$3_0$307 ==.
                                   4118 ;	src/FreeRTOS/tasks.c:3223: xReturn = pdTRUE;
      001438 7E 01            [12] 4119 	mov	r6,#0x01
      00143A                       4120 00106$:
                           0011BA  4121 	C$tasks.c$3226$1_0$303 ==.
                                   4122 ;	src/FreeRTOS/tasks.c:3226: taskEXIT_CRITICAL();
      00143A D0 E0            [24] 4123 	pop ACC 
      00143C 53 E0 80         [24] 4124 	anl	_ACC,#0x80
      00143F E5 E0            [12] 4125 	mov	a,_ACC
      001441 42 A8            [12] 4126 	orl	_IE,a
      001443 D0 E0            [24] 4127 	pop ACC 
                           0011C5  4128 	C$tasks.c$3228$1_0$303 ==.
                                   4129 ;	src/FreeRTOS/tasks.c:3228: return xReturn;
      001445 8E 82            [24] 4130 	mov	dpl,r6
                           0011C7  4131 	C$tasks.c$3229$1_0$303 ==.
                                   4132 ;	src/FreeRTOS/tasks.c:3229: }
      001447 85 0C 81         [24] 4133 	mov	sp,_bp
      00144A D0 0C            [24] 4134 	pop	_bp
                           0011CC  4135 	C$tasks.c$3229$1_0$303 ==.
                           0011CC  4136 	XG$xTaskCheckForTimeOut$0$0 ==.
      00144C 22               [24] 4137 	ret
                                   4138 ;------------------------------------------------------------
                                   4139 ;Allocation info for local variables in function 'vTaskMissedYield'
                                   4140 ;------------------------------------------------------------
                           0011CD  4141 	G$vTaskMissedYield$0$0 ==.
                           0011CD  4142 	C$tasks.c$3232$1_0$309 ==.
                                   4143 ;	src/FreeRTOS/tasks.c:3232: void vTaskMissedYield( void )
                                   4144 ;	-----------------------------------------
                                   4145 ;	 function vTaskMissedYield
                                   4146 ;	-----------------------------------------
      00144D                       4147 _vTaskMissedYield:
                           0011CD  4148 	C$tasks.c$3234$1_0$309 ==.
                                   4149 ;	src/FreeRTOS/tasks.c:3234: xYieldPending = pdTRUE;
      00144D 90 00 6C         [24] 4150 	mov	dptr,#_xYieldPending
      001450 74 01            [12] 4151 	mov	a,#0x01
      001452 F0               [24] 4152 	movx	@dptr,a
                           0011D3  4153 	C$tasks.c$3235$1_0$309 ==.
                                   4154 ;	src/FreeRTOS/tasks.c:3235: }
                           0011D3  4155 	C$tasks.c$3235$1_0$309 ==.
                           0011D3  4156 	XG$vTaskMissedYield$0$0 ==.
      001453 22               [24] 4157 	ret
                                   4158 ;------------------------------------------------------------
                                   4159 ;Allocation info for local variables in function 'prvIdleTask'
                                   4160 ;------------------------------------------------------------
                                   4161 ;pvParameters              Allocated to registers 
                                   4162 ;------------------------------------------------------------
                           0011D4  4163 	Ftasks$prvIdleTask$0$0 ==.
                           0011D4  4164 	C$tasks.c$3287$1_0$311 ==.
                                   4165 ;	src/FreeRTOS/tasks.c:3287: static portTASK_FUNCTION( prvIdleTask, pvParameters )
                                   4166 ;	-----------------------------------------
                                   4167 ;	 function prvIdleTask
                                   4168 ;	-----------------------------------------
      001454                       4169 _prvIdleTask:
                           0011D4  4170 	C$tasks.c$3290$2_0$312 ==.
                                   4171 ;	src/FreeRTOS/tasks.c:3290: ( void ) pvParameters;
      001454                       4172 00104$:
                           0011D4  4173 	C$tasks.c$3304$3_0$313 ==.
                                   4174 ;	src/FreeRTOS/tasks.c:3304: prvCheckTasksWaitingTermination();
      001454 12 14 BF         [24] 4175 	lcall	_prvCheckTasksWaitingTermination
                           0011D7  4176 	C$tasks.c$3327$4_0$314 ==.
                                   4177 ;	src/FreeRTOS/tasks.c:3327: if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
      001457 90 00 0C         [24] 4178 	mov	dptr,#_pxReadyTasksLists
      00145A E0               [24] 4179 	movx	a,@dptr
      00145B 24 FE            [12] 4180 	add	a,#0xff - 0x01
      00145D 50 F5            [24] 4181 	jnc	00104$
                           0011DF  4182 	C$tasks.c$3329$5_0$315 ==.
                                   4183 ;	src/FreeRTOS/tasks.c:3329: taskYIELD();
      00145F 12 64 B5         [24] 4184 	lcall	_vPortYield
      001462 80 F0            [24] 4185 	sjmp	00104$
                           0011E4  4186 	C$tasks.c$3401$2_0$311 ==.
                                   4187 ;	src/FreeRTOS/tasks.c:3401: }
                           0011E4  4188 	C$tasks.c$3401$2_0$311 ==.
                           0011E4  4189 	XFtasks$prvIdleTask$0$0 ==.
      001464 22               [24] 4190 	ret
                                   4191 ;------------------------------------------------------------
                                   4192 ;Allocation info for local variables in function 'prvInitialiseTaskLists'
                                   4193 ;------------------------------------------------------------
                                   4194 ;uxPriority                Allocated to registers r7 
                                   4195 ;------------------------------------------------------------
                           0011E5  4196 	Ftasks$prvInitialiseTaskLists$0$0 ==.
                           0011E5  4197 	C$tasks.c$3499$2_0$318 ==.
                                   4198 ;	src/FreeRTOS/tasks.c:3499: static void prvInitialiseTaskLists( void )
                                   4199 ;	-----------------------------------------
                                   4200 ;	 function prvInitialiseTaskLists
                                   4201 ;	-----------------------------------------
      001465                       4202 _prvInitialiseTaskLists:
                           0011E5  4203 	C$tasks.c$3503$3_0$320 ==.
                                   4204 ;	src/FreeRTOS/tasks.c:3503: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
      001465 7F 00            [12] 4205 	mov	r7,#0x00
      001467                       4206 00102$:
                           0011E7  4207 	C$tasks.c$3505$3_0$320 ==.
                                   4208 ;	src/FreeRTOS/tasks.c:3505: vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
      001467 EF               [12] 4209 	mov	a,r7
      001468 75 F0 0C         [24] 4210 	mov	b,#0x0c
      00146B A4               [48] 4211 	mul	ab
      00146C 24 0C            [12] 4212 	add	a,#_pxReadyTasksLists
      00146E FD               [12] 4213 	mov	r5,a
      00146F 74 00            [12] 4214 	mov	a,#(_pxReadyTasksLists >> 8)
      001471 35 F0            [12] 4215 	addc	a,b
      001473 FE               [12] 4216 	mov	r6,a
      001474 7C 00            [12] 4217 	mov	r4,#0x00
      001476 8D 82            [24] 4218 	mov	dpl,r5
      001478 8E 83            [24] 4219 	mov	dph,r6
      00147A 8C F0            [24] 4220 	mov	b,r4
      00147C C0 07            [24] 4221 	push	ar7
      00147E 12 2B DD         [24] 4222 	lcall	_vListInitialise
      001481 D0 07            [24] 4223 	pop	ar7
                           001203  4224 	C$tasks.c$3503$2_0$319 ==.
                                   4225 ;	src/FreeRTOS/tasks.c:3503: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
      001483 0F               [12] 4226 	inc	r7
      001484 BF 04 00         [24] 4227 	cjne	r7,#0x04,00115$
      001487                       4228 00115$:
      001487 40 DE            [24] 4229 	jc	00102$
                           001209  4230 	C$tasks.c$3508$1_0$318 ==.
                                   4231 ;	src/FreeRTOS/tasks.c:3508: vListInitialise( &xDelayedTaskList1 );
      001489 90 00 3C         [24] 4232 	mov	dptr,#_xDelayedTaskList1
      00148C 75 F0 00         [24] 4233 	mov	b,#0x00
      00148F 12 2B DD         [24] 4234 	lcall	_vListInitialise
                           001212  4235 	C$tasks.c$3509$1_0$318 ==.
                                   4236 ;	src/FreeRTOS/tasks.c:3509: vListInitialise( &xDelayedTaskList2 );
      001492 90 00 48         [24] 4237 	mov	dptr,#_xDelayedTaskList2
      001495 75 F0 00         [24] 4238 	mov	b,#0x00
      001498 12 2B DD         [24] 4239 	lcall	_vListInitialise
                           00121B  4240 	C$tasks.c$3510$1_0$318 ==.
                                   4241 ;	src/FreeRTOS/tasks.c:3510: vListInitialise( &xPendingReadyList );
      00149B 90 00 5A         [24] 4242 	mov	dptr,#_xPendingReadyList
      00149E 75 F0 00         [24] 4243 	mov	b,#0x00
      0014A1 12 2B DD         [24] 4244 	lcall	_vListInitialise
                           001224  4245 	C$tasks.c$3526$1_0$318 ==.
                                   4246 ;	src/FreeRTOS/tasks.c:3526: pxDelayedTaskList = &xDelayedTaskList1;
      0014A4 90 00 54         [24] 4247 	mov	dptr,#_pxDelayedTaskList
      0014A7 74 3C            [12] 4248 	mov	a,#_xDelayedTaskList1
      0014A9 F0               [24] 4249 	movx	@dptr,a
      0014AA 74 00            [12] 4250 	mov	a,#(_xDelayedTaskList1 >> 8)
      0014AC A3               [24] 4251 	inc	dptr
      0014AD F0               [24] 4252 	movx	@dptr,a
      0014AE E4               [12] 4253 	clr	a
      0014AF A3               [24] 4254 	inc	dptr
      0014B0 F0               [24] 4255 	movx	@dptr,a
                           001231  4256 	C$tasks.c$3527$1_0$318 ==.
                                   4257 ;	src/FreeRTOS/tasks.c:3527: pxOverflowDelayedTaskList = &xDelayedTaskList2;
      0014B1 90 00 57         [24] 4258 	mov	dptr,#_pxOverflowDelayedTaskList
      0014B4 74 48            [12] 4259 	mov	a,#_xDelayedTaskList2
      0014B6 F0               [24] 4260 	movx	@dptr,a
      0014B7 74 00            [12] 4261 	mov	a,#(_xDelayedTaskList2 >> 8)
      0014B9 A3               [24] 4262 	inc	dptr
      0014BA F0               [24] 4263 	movx	@dptr,a
      0014BB E4               [12] 4264 	clr	a
      0014BC A3               [24] 4265 	inc	dptr
      0014BD F0               [24] 4266 	movx	@dptr,a
                           00123E  4267 	C$tasks.c$3528$1_0$318 ==.
                                   4268 ;	src/FreeRTOS/tasks.c:3528: }
                           00123E  4269 	C$tasks.c$3528$1_0$318 ==.
                           00123E  4270 	XFtasks$prvInitialiseTaskLists$0$0 ==.
      0014BE 22               [24] 4271 	ret
                                   4272 ;------------------------------------------------------------
                                   4273 ;Allocation info for local variables in function 'prvCheckTasksWaitingTermination'
                                   4274 ;------------------------------------------------------------
                           00123F  4275 	Ftasks$prvCheckTasksWaitingTermination$0$0 ==.
                           00123F  4276 	C$tasks.c$3531$1_0$323 ==.
                                   4277 ;	src/FreeRTOS/tasks.c:3531: static void prvCheckTasksWaitingTermination( void )
                                   4278 ;	-----------------------------------------
                                   4279 ;	 function prvCheckTasksWaitingTermination
                                   4280 ;	-----------------------------------------
      0014BF                       4281 _prvCheckTasksWaitingTermination:
                           00123F  4282 	C$tasks.c$3557$1_0$323 ==.
                                   4283 ;	src/FreeRTOS/tasks.c:3557: }
                           00123F  4284 	C$tasks.c$3557$1_0$323 ==.
                           00123F  4285 	XFtasks$prvCheckTasksWaitingTermination$0$0 ==.
      0014BF 22               [24] 4286 	ret
                                   4287 ;------------------------------------------------------------
                                   4288 ;Allocation info for local variables in function 'prvResetNextTaskUnblockTime'
                                   4289 ;------------------------------------------------------------
                                   4290 ;pxTCB                     Allocated to registers r5 r6 r7 
                                   4291 ;------------------------------------------------------------
                           001240  4292 	Ftasks$prvResetNextTaskUnblockTime$0$0 ==.
                           001240  4293 	C$tasks.c$3793$1_0$325 ==.
                                   4294 ;	src/FreeRTOS/tasks.c:3793: static void prvResetNextTaskUnblockTime( void )
                                   4295 ;	-----------------------------------------
                                   4296 ;	 function prvResetNextTaskUnblockTime
                                   4297 ;	-----------------------------------------
      0014C0                       4298 _prvResetNextTaskUnblockTime:
                           001240  4299 	C$tasks.c$3797$1_0$325 ==.
                                   4300 ;	src/FreeRTOS/tasks.c:3797: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
      0014C0 90 00 54         [24] 4301 	mov	dptr,#_pxDelayedTaskList
      0014C3 E0               [24] 4302 	movx	a,@dptr
      0014C4 FD               [12] 4303 	mov	r5,a
      0014C5 A3               [24] 4304 	inc	dptr
      0014C6 E0               [24] 4305 	movx	a,@dptr
      0014C7 FE               [12] 4306 	mov	r6,a
      0014C8 A3               [24] 4307 	inc	dptr
      0014C9 E0               [24] 4308 	movx	a,@dptr
      0014CA FF               [12] 4309 	mov	r7,a
      0014CB 8D 82            [24] 4310 	mov	dpl,r5
      0014CD 8E 83            [24] 4311 	mov	dph,r6
      0014CF 8F F0            [24] 4312 	mov	b,r7
      0014D1 12 70 5A         [24] 4313 	lcall	__gptrget
      0014D4 70 0A            [24] 4314 	jnz	00102$
                           001256  4315 	C$tasks.c$3803$2_0$326 ==.
                                   4316 ;	src/FreeRTOS/tasks.c:3803: xNextTaskUnblockTime = portMAX_DELAY;
      0014D6 90 00 6F         [24] 4317 	mov	dptr,#_xNextTaskUnblockTime
      0014D9 74 FF            [12] 4318 	mov	a,#0xff
      0014DB F0               [24] 4319 	movx	@dptr,a
      0014DC A3               [24] 4320 	inc	dptr
      0014DD F0               [24] 4321 	movx	@dptr,a
      0014DE 80 66            [24] 4322 	sjmp	00104$
      0014E0                       4323 00102$:
                           001260  4324 	C$tasks.c$3811$2_0$327 ==.
                                   4325 ;	src/FreeRTOS/tasks.c:3811: ( pxTCB ) = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      0014E0 90 00 54         [24] 4326 	mov	dptr,#_pxDelayedTaskList
      0014E3 E0               [24] 4327 	movx	a,@dptr
      0014E4 FD               [12] 4328 	mov	r5,a
      0014E5 A3               [24] 4329 	inc	dptr
      0014E6 E0               [24] 4330 	movx	a,@dptr
      0014E7 FE               [12] 4331 	mov	r6,a
      0014E8 A3               [24] 4332 	inc	dptr
      0014E9 E0               [24] 4333 	movx	a,@dptr
      0014EA FF               [12] 4334 	mov	r7,a
      0014EB 74 04            [12] 4335 	mov	a,#0x04
      0014ED 2D               [12] 4336 	add	a,r5
      0014EE FD               [12] 4337 	mov	r5,a
      0014EF E4               [12] 4338 	clr	a
      0014F0 3E               [12] 4339 	addc	a,r6
      0014F1 FE               [12] 4340 	mov	r6,a
      0014F2 74 02            [12] 4341 	mov	a,#0x02
      0014F4 2D               [12] 4342 	add	a,r5
      0014F5 FD               [12] 4343 	mov	r5,a
      0014F6 E4               [12] 4344 	clr	a
      0014F7 3E               [12] 4345 	addc	a,r6
      0014F8 FE               [12] 4346 	mov	r6,a
      0014F9 8D 82            [24] 4347 	mov	dpl,r5
      0014FB 8E 83            [24] 4348 	mov	dph,r6
      0014FD 8F F0            [24] 4349 	mov	b,r7
      0014FF 12 70 5A         [24] 4350 	lcall	__gptrget
      001502 FD               [12] 4351 	mov	r5,a
      001503 A3               [24] 4352 	inc	dptr
      001504 12 70 5A         [24] 4353 	lcall	__gptrget
      001507 FE               [12] 4354 	mov	r6,a
      001508 A3               [24] 4355 	inc	dptr
      001509 12 70 5A         [24] 4356 	lcall	__gptrget
      00150C FF               [12] 4357 	mov	r7,a
      00150D 74 08            [12] 4358 	mov	a,#0x08
      00150F 2D               [12] 4359 	add	a,r5
      001510 FD               [12] 4360 	mov	r5,a
      001511 E4               [12] 4361 	clr	a
      001512 3E               [12] 4362 	addc	a,r6
      001513 FE               [12] 4363 	mov	r6,a
      001514 8D 82            [24] 4364 	mov	dpl,r5
      001516 8E 83            [24] 4365 	mov	dph,r6
      001518 8F F0            [24] 4366 	mov	b,r7
      00151A 12 70 5A         [24] 4367 	lcall	__gptrget
      00151D FD               [12] 4368 	mov	r5,a
      00151E A3               [24] 4369 	inc	dptr
      00151F 12 70 5A         [24] 4370 	lcall	__gptrget
      001522 FE               [12] 4371 	mov	r6,a
      001523 A3               [24] 4372 	inc	dptr
      001524 12 70 5A         [24] 4373 	lcall	__gptrget
      001527 FF               [12] 4374 	mov	r7,a
                           0012A8  4375 	C$tasks.c$3812$2_0$327 ==.
                                   4376 ;	src/FreeRTOS/tasks.c:3812: xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
      001528 74 03            [12] 4377 	mov	a,#0x03
      00152A 2D               [12] 4378 	add	a,r5
      00152B FD               [12] 4379 	mov	r5,a
      00152C E4               [12] 4380 	clr	a
      00152D 3E               [12] 4381 	addc	a,r6
      00152E FE               [12] 4382 	mov	r6,a
      00152F 8D 82            [24] 4383 	mov	dpl,r5
      001531 8E 83            [24] 4384 	mov	dph,r6
      001533 8F F0            [24] 4385 	mov	b,r7
      001535 12 70 5A         [24] 4386 	lcall	__gptrget
      001538 FD               [12] 4387 	mov	r5,a
      001539 A3               [24] 4388 	inc	dptr
      00153A 12 70 5A         [24] 4389 	lcall	__gptrget
      00153D FE               [12] 4390 	mov	r6,a
      00153E 90 00 6F         [24] 4391 	mov	dptr,#_xNextTaskUnblockTime
      001541 ED               [12] 4392 	mov	a,r5
      001542 F0               [24] 4393 	movx	@dptr,a
      001543 EE               [12] 4394 	mov	a,r6
      001544 A3               [24] 4395 	inc	dptr
      001545 F0               [24] 4396 	movx	@dptr,a
      001546                       4397 00104$:
                           0012C6  4398 	C$tasks.c$3814$1_0$325 ==.
                                   4399 ;	src/FreeRTOS/tasks.c:3814: }
                           0012C6  4400 	C$tasks.c$3814$1_0$325 ==.
                           0012C6  4401 	XFtasks$prvResetNextTaskUnblockTime$0$0 ==.
      001546 22               [24] 4402 	ret
                                   4403 ;------------------------------------------------------------
                                   4404 ;Allocation info for local variables in function 'xTaskGetCurrentTaskHandle'
                                   4405 ;------------------------------------------------------------
                                   4406 ;xReturn                   Allocated to registers r5 r6 r7 
                                   4407 ;------------------------------------------------------------
                           0012C7  4408 	G$xTaskGetCurrentTaskHandle$0$0 ==.
                           0012C7  4409 	C$tasks.c$3819$1_0$329 ==.
                                   4410 ;	src/FreeRTOS/tasks.c:3819: TaskHandle_t xTaskGetCurrentTaskHandle( void )
                                   4411 ;	-----------------------------------------
                                   4412 ;	 function xTaskGetCurrentTaskHandle
                                   4413 ;	-----------------------------------------
      001547                       4414 _xTaskGetCurrentTaskHandle:
                           0012C7  4415 	C$tasks.c$3826$1_0$329 ==.
                                   4416 ;	src/FreeRTOS/tasks.c:3826: xReturn = pxCurrentTCB;
      001547 90 00 09         [24] 4417 	mov	dptr,#_pxCurrentTCB
      00154A E0               [24] 4418 	movx	a,@dptr
      00154B FD               [12] 4419 	mov	r5,a
      00154C A3               [24] 4420 	inc	dptr
      00154D E0               [24] 4421 	movx	a,@dptr
      00154E FE               [12] 4422 	mov	r6,a
      00154F A3               [24] 4423 	inc	dptr
      001550 E0               [24] 4424 	movx	a,@dptr
      001551 FF               [12] 4425 	mov	r7,a
                           0012D2  4426 	C$tasks.c$3828$1_0$329 ==.
                                   4427 ;	src/FreeRTOS/tasks.c:3828: return xReturn;
      001552 8D 82            [24] 4428 	mov	dpl,r5
      001554 8E 83            [24] 4429 	mov	dph,r6
      001556 8F F0            [24] 4430 	mov	b,r7
                           0012D8  4431 	C$tasks.c$3829$1_0$329 ==.
                                   4432 ;	src/FreeRTOS/tasks.c:3829: }
                           0012D8  4433 	C$tasks.c$3829$1_0$329 ==.
                           0012D8  4434 	XG$xTaskGetCurrentTaskHandle$0$0 ==.
      001558 22               [24] 4435 	ret
                                   4436 ;------------------------------------------------------------
                                   4437 ;Allocation info for local variables in function 'uxTaskResetEventItemValue'
                                   4438 ;------------------------------------------------------------
                                   4439 ;uxReturn                  Allocated to stack - _bp +1
                                   4440 ;------------------------------------------------------------
                           0012D9  4441 	G$uxTaskResetEventItemValue$0$0 ==.
                           0012D9  4442 	C$tasks.c$4446$1_0$331 ==.
                                   4443 ;	src/FreeRTOS/tasks.c:4446: TickType_t uxTaskResetEventItemValue( void )
                                   4444 ;	-----------------------------------------
                                   4445 ;	 function uxTaskResetEventItemValue
                                   4446 ;	-----------------------------------------
      001559                       4447 _uxTaskResetEventItemValue:
      001559 C0 0C            [24] 4448 	push	_bp
      00155B 85 81 0C         [24] 4449 	mov	_bp,sp
      00155E 05 81            [12] 4450 	inc	sp
      001560 05 81            [12] 4451 	inc	sp
                           0012E2  4452 	C$tasks.c$4450$1_0$331 ==.
                                   4453 ;	src/FreeRTOS/tasks.c:4450: uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ) );
      001562 90 00 09         [24] 4454 	mov	dptr,#_pxCurrentTCB
      001565 E0               [24] 4455 	movx	a,@dptr
      001566 FD               [12] 4456 	mov	r5,a
      001567 A3               [24] 4457 	inc	dptr
      001568 E0               [24] 4458 	movx	a,@dptr
      001569 FE               [12] 4459 	mov	r6,a
      00156A A3               [24] 4460 	inc	dptr
      00156B E0               [24] 4461 	movx	a,@dptr
      00156C FF               [12] 4462 	mov	r7,a
      00156D 74 11            [12] 4463 	mov	a,#0x11
      00156F 2D               [12] 4464 	add	a,r5
      001570 FD               [12] 4465 	mov	r5,a
      001571 E4               [12] 4466 	clr	a
      001572 3E               [12] 4467 	addc	a,r6
      001573 FE               [12] 4468 	mov	r6,a
      001574 8D 82            [24] 4469 	mov	dpl,r5
      001576 8E 83            [24] 4470 	mov	dph,r6
      001578 8F F0            [24] 4471 	mov	b,r7
      00157A A8 0C            [24] 4472 	mov	r0,_bp
      00157C 08               [12] 4473 	inc	r0
      00157D 12 70 5A         [24] 4474 	lcall	__gptrget
      001580 F6               [12] 4475 	mov	@r0,a
      001581 A3               [24] 4476 	inc	dptr
      001582 12 70 5A         [24] 4477 	lcall	__gptrget
      001585 08               [12] 4478 	inc	r0
      001586 F6               [12] 4479 	mov	@r0,a
                           001307  4480 	C$tasks.c$4454$1_0$331 ==.
                                   4481 ;	src/FreeRTOS/tasks.c:4454: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      001587 90 00 09         [24] 4482 	mov	dptr,#_pxCurrentTCB
      00158A E0               [24] 4483 	movx	a,@dptr
      00158B FB               [12] 4484 	mov	r3,a
      00158C A3               [24] 4485 	inc	dptr
      00158D E0               [24] 4486 	movx	a,@dptr
      00158E FC               [12] 4487 	mov	r4,a
      00158F A3               [24] 4488 	inc	dptr
      001590 E0               [24] 4489 	movx	a,@dptr
      001591 FF               [12] 4490 	mov	r7,a
      001592 74 11            [12] 4491 	mov	a,#0x11
      001594 2B               [12] 4492 	add	a,r3
      001595 FB               [12] 4493 	mov	r3,a
      001596 E4               [12] 4494 	clr	a
      001597 3C               [12] 4495 	addc	a,r4
      001598 FC               [12] 4496 	mov	r4,a
      001599 90 00 09         [24] 4497 	mov	dptr,#_pxCurrentTCB
      00159C E0               [24] 4498 	movx	a,@dptr
      00159D FA               [12] 4499 	mov	r2,a
      00159E A3               [24] 4500 	inc	dptr
      00159F E0               [24] 4501 	movx	a,@dptr
      0015A0 FD               [12] 4502 	mov	r5,a
      0015A1 A3               [24] 4503 	inc	dptr
      0015A2 E0               [24] 4504 	movx	a,@dptr
      0015A3 FE               [12] 4505 	mov	r6,a
      0015A4 74 1F            [12] 4506 	mov	a,#0x1f
      0015A6 2A               [12] 4507 	add	a,r2
      0015A7 FA               [12] 4508 	mov	r2,a
      0015A8 E4               [12] 4509 	clr	a
      0015A9 3D               [12] 4510 	addc	a,r5
      0015AA FD               [12] 4511 	mov	r5,a
      0015AB 8A 82            [24] 4512 	mov	dpl,r2
      0015AD 8D 83            [24] 4513 	mov	dph,r5
      0015AF 8E F0            [24] 4514 	mov	b,r6
      0015B1 12 70 5A         [24] 4515 	lcall	__gptrget
      0015B4 FA               [12] 4516 	mov	r2,a
      0015B5 7E 00            [12] 4517 	mov	r6,#0x00
      0015B7 74 04            [12] 4518 	mov	a,#0x04
      0015B9 C3               [12] 4519 	clr	c
      0015BA 9A               [12] 4520 	subb	a,r2
      0015BB FA               [12] 4521 	mov	r2,a
      0015BC E4               [12] 4522 	clr	a
      0015BD 9E               [12] 4523 	subb	a,r6
      0015BE FE               [12] 4524 	mov	r6,a
      0015BF 8B 82            [24] 4525 	mov	dpl,r3
      0015C1 8C 83            [24] 4526 	mov	dph,r4
      0015C3 8F F0            [24] 4527 	mov	b,r7
      0015C5 EA               [12] 4528 	mov	a,r2
      0015C6 12 66 A0         [24] 4529 	lcall	__gptrput
      0015C9 A3               [24] 4530 	inc	dptr
      0015CA EE               [12] 4531 	mov	a,r6
      0015CB 12 66 A0         [24] 4532 	lcall	__gptrput
                           00134E  4533 	C$tasks.c$4456$1_0$331 ==.
                                   4534 ;	src/FreeRTOS/tasks.c:4456: return uxReturn;
      0015CE A8 0C            [24] 4535 	mov	r0,_bp
      0015D0 08               [12] 4536 	inc	r0
      0015D1 86 82            [24] 4537 	mov	dpl,@r0
      0015D3 08               [12] 4538 	inc	r0
      0015D4 86 83            [24] 4539 	mov	dph,@r0
                           001356  4540 	C$tasks.c$4457$1_0$331 ==.
                                   4541 ;	src/FreeRTOS/tasks.c:4457: }
      0015D6 85 0C 81         [24] 4542 	mov	sp,_bp
      0015D9 D0 0C            [24] 4543 	pop	_bp
                           00135B  4544 	C$tasks.c$4457$1_0$331 ==.
                           00135B  4545 	XG$uxTaskResetEventItemValue$0$0 ==.
      0015DB 22               [24] 4546 	ret
                                   4547 ;------------------------------------------------------------
                                   4548 ;Allocation info for local variables in function 'ulTaskNotifyTake'
                                   4549 ;------------------------------------------------------------
                                   4550 ;xTicksToWait              Allocated to stack - _bp -4
                                   4551 ;xClearCountOnExit         Allocated to registers r7 
                                   4552 ;ulReturn                  Allocated to stack - _bp +4
                                   4553 ;sloc0                     Allocated to stack - _bp +1
                                   4554 ;------------------------------------------------------------
                           00135C  4555 	G$ulTaskNotifyTake$0$0 ==.
                           00135C  4556 	C$tasks.c$4479$1_0$333 ==.
                                   4557 ;	src/FreeRTOS/tasks.c:4479: uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
                                   4558 ;	-----------------------------------------
                                   4559 ;	 function ulTaskNotifyTake
                                   4560 ;	-----------------------------------------
      0015DC                       4561 _ulTaskNotifyTake:
      0015DC C0 0C            [24] 4562 	push	_bp
      0015DE E5 81            [12] 4563 	mov	a,sp
      0015E0 F5 0C            [12] 4564 	mov	_bp,a
      0015E2 24 07            [12] 4565 	add	a,#0x07
      0015E4 F5 81            [12] 4566 	mov	sp,a
      0015E6 AF 82            [24] 4567 	mov	r7,dpl
                           001368  4568 	C$tasks.c$4483$1_0$333 ==.
                                   4569 ;	src/FreeRTOS/tasks.c:4483: taskENTER_CRITICAL();
      0015E8 C0 E0            [24] 4570 	push ACC 
      0015EA C0 A8            [24] 4571 	push IE 
                                   4572 ;	assignBit
      0015EC C2 AF            [12] 4573 	clr	_EA
                           00136E  4574 	C$tasks.c$4486$2_0$334 ==.
                                   4575 ;	src/FreeRTOS/tasks.c:4486: if( pxCurrentTCB->ulNotifiedValue == 0UL )
      0015EE 90 00 09         [24] 4576 	mov	dptr,#_pxCurrentTCB
      0015F1 E0               [24] 4577 	movx	a,@dptr
      0015F2 FC               [12] 4578 	mov	r4,a
      0015F3 A3               [24] 4579 	inc	dptr
      0015F4 E0               [24] 4580 	movx	a,@dptr
      0015F5 FD               [12] 4581 	mov	r5,a
      0015F6 A3               [24] 4582 	inc	dptr
      0015F7 E0               [24] 4583 	movx	a,@dptr
      0015F8 FE               [12] 4584 	mov	r6,a
      0015F9 74 2E            [12] 4585 	mov	a,#0x2e
      0015FB 2C               [12] 4586 	add	a,r4
      0015FC FC               [12] 4587 	mov	r4,a
      0015FD E4               [12] 4588 	clr	a
      0015FE 3D               [12] 4589 	addc	a,r5
      0015FF FD               [12] 4590 	mov	r5,a
      001600 8C 82            [24] 4591 	mov	dpl,r4
      001602 8D 83            [24] 4592 	mov	dph,r5
      001604 8E F0            [24] 4593 	mov	b,r6
      001606 12 70 5A         [24] 4594 	lcall	__gptrget
      001609 FC               [12] 4595 	mov	r4,a
      00160A A3               [24] 4596 	inc	dptr
      00160B 12 70 5A         [24] 4597 	lcall	__gptrget
      00160E FD               [12] 4598 	mov	r5,a
      00160F A3               [24] 4599 	inc	dptr
      001610 12 70 5A         [24] 4600 	lcall	__gptrget
      001613 FE               [12] 4601 	mov	r6,a
      001614 A3               [24] 4602 	inc	dptr
      001615 12 70 5A         [24] 4603 	lcall	__gptrget
      001618 FB               [12] 4604 	mov	r3,a
      001619 EC               [12] 4605 	mov	a,r4
      00161A 4D               [12] 4606 	orl	a,r5
      00161B 4E               [12] 4607 	orl	a,r6
      00161C 4B               [12] 4608 	orl	a,r3
      00161D 70 41            [24] 4609 	jnz	00104$
                           00139F  4610 	C$tasks.c$4489$3_0$335 ==.
                                   4611 ;	src/FreeRTOS/tasks.c:4489: pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
      00161F 90 00 09         [24] 4612 	mov	dptr,#_pxCurrentTCB
      001622 E0               [24] 4613 	movx	a,@dptr
      001623 FC               [12] 4614 	mov	r4,a
      001624 A3               [24] 4615 	inc	dptr
      001625 E0               [24] 4616 	movx	a,@dptr
      001626 FD               [12] 4617 	mov	r5,a
      001627 A3               [24] 4618 	inc	dptr
      001628 E0               [24] 4619 	movx	a,@dptr
      001629 FE               [12] 4620 	mov	r6,a
      00162A 74 32            [12] 4621 	mov	a,#0x32
      00162C 2C               [12] 4622 	add	a,r4
      00162D FC               [12] 4623 	mov	r4,a
      00162E E4               [12] 4624 	clr	a
      00162F 3D               [12] 4625 	addc	a,r5
      001630 FD               [12] 4626 	mov	r5,a
      001631 8C 82            [24] 4627 	mov	dpl,r4
      001633 8D 83            [24] 4628 	mov	dph,r5
      001635 8E F0            [24] 4629 	mov	b,r6
      001637 74 01            [12] 4630 	mov	a,#0x01
      001639 12 66 A0         [24] 4631 	lcall	__gptrput
                           0013BC  4632 	C$tasks.c$4491$3_0$335 ==.
                                   4633 ;	src/FreeRTOS/tasks.c:4491: if( xTicksToWait > ( TickType_t ) 0 )
      00163C E5 0C            [12] 4634 	mov	a,_bp
      00163E 24 FC            [12] 4635 	add	a,#0xfc
      001640 F8               [12] 4636 	mov	r0,a
      001641 E6               [12] 4637 	mov	a,@r0
      001642 08               [12] 4638 	inc	r0
      001643 46               [12] 4639 	orl	a,@r0
      001644 60 1A            [24] 4640 	jz	00104$
                           0013C6  4641 	C$tasks.c$4493$4_0$336 ==.
                                   4642 ;	src/FreeRTOS/tasks.c:4493: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      001646 C0 07            [24] 4643 	push	ar7
      001648 74 01            [12] 4644 	mov	a,#0x01
      00164A C0 E0            [24] 4645 	push	acc
      00164C E5 0C            [12] 4646 	mov	a,_bp
      00164E 24 FC            [12] 4647 	add	a,#0xfc
      001650 F8               [12] 4648 	mov	r0,a
      001651 86 82            [24] 4649 	mov	dpl,@r0
      001653 08               [12] 4650 	inc	r0
      001654 86 83            [24] 4651 	mov	dph,@r0
      001656 12 22 38         [24] 4652 	lcall	_prvAddCurrentTaskToDelayedList
      001659 15 81            [12] 4653 	dec	sp
      00165B D0 07            [24] 4654 	pop	ar7
                           0013DD  4655 	C$tasks.c$4500$4_0$336 ==.
                                   4656 ;	src/FreeRTOS/tasks.c:4500: portYIELD_WITHIN_API();
      00165D 12 64 B5         [24] 4657 	lcall	_vPortYield
      001660                       4658 00104$:
                           0013E0  4659 	C$tasks.c$4512$1_0$333 ==.
                                   4660 ;	src/FreeRTOS/tasks.c:4512: taskEXIT_CRITICAL();
      001660 D0 E0            [24] 4661 	pop ACC 
      001662 53 E0 80         [24] 4662 	anl	_ACC,#0x80
      001665 E5 E0            [12] 4663 	mov	a,_ACC
      001667 42 A8            [12] 4664 	orl	_IE,a
      001669 D0 E0            [24] 4665 	pop ACC 
                           0013EB  4666 	C$tasks.c$4514$1_0$333 ==.
                                   4667 ;	src/FreeRTOS/tasks.c:4514: taskENTER_CRITICAL();
      00166B C0 E0            [24] 4668 	push ACC 
      00166D C0 A8            [24] 4669 	push IE 
                                   4670 ;	assignBit
      00166F C2 AF            [12] 4671 	clr	_EA
                           0013F1  4672 	C$tasks.c$4517$2_0$339 ==.
                                   4673 ;	src/FreeRTOS/tasks.c:4517: ulReturn = pxCurrentTCB->ulNotifiedValue;
      001671 90 00 09         [24] 4674 	mov	dptr,#_pxCurrentTCB
      001674 E0               [24] 4675 	movx	a,@dptr
      001675 FE               [12] 4676 	mov	r6,a
      001676 A3               [24] 4677 	inc	dptr
      001677 E0               [24] 4678 	movx	a,@dptr
      001678 FC               [12] 4679 	mov	r4,a
      001679 A3               [24] 4680 	inc	dptr
      00167A E0               [24] 4681 	movx	a,@dptr
      00167B FD               [12] 4682 	mov	r5,a
      00167C 74 2E            [12] 4683 	mov	a,#0x2e
      00167E 2E               [12] 4684 	add	a,r6
      00167F FE               [12] 4685 	mov	r6,a
      001680 E4               [12] 4686 	clr	a
      001681 3C               [12] 4687 	addc	a,r4
      001682 FC               [12] 4688 	mov	r4,a
      001683 8E 82            [24] 4689 	mov	dpl,r6
      001685 8C 83            [24] 4690 	mov	dph,r4
      001687 8D F0            [24] 4691 	mov	b,r5
      001689 E5 0C            [12] 4692 	mov	a,_bp
      00168B 24 04            [12] 4693 	add	a,#0x04
      00168D F8               [12] 4694 	mov	r0,a
      00168E 12 70 5A         [24] 4695 	lcall	__gptrget
      001691 F6               [12] 4696 	mov	@r0,a
      001692 A3               [24] 4697 	inc	dptr
      001693 12 70 5A         [24] 4698 	lcall	__gptrget
      001696 08               [12] 4699 	inc	r0
      001697 F6               [12] 4700 	mov	@r0,a
      001698 A3               [24] 4701 	inc	dptr
      001699 12 70 5A         [24] 4702 	lcall	__gptrget
      00169C 08               [12] 4703 	inc	r0
      00169D F6               [12] 4704 	mov	@r0,a
      00169E A3               [24] 4705 	inc	dptr
      00169F 12 70 5A         [24] 4706 	lcall	__gptrget
      0016A2 08               [12] 4707 	inc	r0
      0016A3 F6               [12] 4708 	mov	@r0,a
                           001424  4709 	C$tasks.c$4519$2_0$339 ==.
                                   4710 ;	src/FreeRTOS/tasks.c:4519: if( ulReturn != 0UL )
      0016A4 E5 0C            [12] 4711 	mov	a,_bp
      0016A6 24 04            [12] 4712 	add	a,#0x04
      0016A8 F8               [12] 4713 	mov	r0,a
      0016A9 E6               [12] 4714 	mov	a,@r0
      0016AA 08               [12] 4715 	inc	r0
      0016AB 46               [12] 4716 	orl	a,@r0
      0016AC 08               [12] 4717 	inc	r0
      0016AD 46               [12] 4718 	orl	a,@r0
      0016AE 08               [12] 4719 	inc	r0
      0016AF 46               [12] 4720 	orl	a,@r0
      0016B0 70 03            [24] 4721 	jnz	00130$
      0016B2 02 17 31         [24] 4722 	ljmp	00109$
      0016B5                       4723 00130$:
                           001435  4724 	C$tasks.c$4521$3_0$340 ==.
                                   4725 ;	src/FreeRTOS/tasks.c:4521: if( xClearCountOnExit != pdFALSE )
      0016B5 EF               [12] 4726 	mov	a,r7
      0016B6 60 2A            [24] 4727 	jz	00106$
                           001438  4728 	C$tasks.c$4523$1_0$333 ==.
                                   4729 ;	src/FreeRTOS/tasks.c:4523: pxCurrentTCB->ulNotifiedValue = 0UL;
      0016B8 90 00 09         [24] 4730 	mov	dptr,#_pxCurrentTCB
      0016BB E0               [24] 4731 	movx	a,@dptr
      0016BC FA               [12] 4732 	mov	r2,a
      0016BD A3               [24] 4733 	inc	dptr
      0016BE E0               [24] 4734 	movx	a,@dptr
      0016BF FE               [12] 4735 	mov	r6,a
      0016C0 A3               [24] 4736 	inc	dptr
      0016C1 E0               [24] 4737 	movx	a,@dptr
      0016C2 FF               [12] 4738 	mov	r7,a
      0016C3 74 2E            [12] 4739 	mov	a,#0x2e
      0016C5 2A               [12] 4740 	add	a,r2
      0016C6 FA               [12] 4741 	mov	r2,a
      0016C7 E4               [12] 4742 	clr	a
      0016C8 3E               [12] 4743 	addc	a,r6
      0016C9 FE               [12] 4744 	mov	r6,a
      0016CA 8A 82            [24] 4745 	mov	dpl,r2
      0016CC 8E 83            [24] 4746 	mov	dph,r6
      0016CE 8F F0            [24] 4747 	mov	b,r7
      0016D0 E4               [12] 4748 	clr	a
      0016D1 12 66 A0         [24] 4749 	lcall	__gptrput
      0016D4 A3               [24] 4750 	inc	dptr
      0016D5 12 66 A0         [24] 4751 	lcall	__gptrput
      0016D8 A3               [24] 4752 	inc	dptr
      0016D9 12 66 A0         [24] 4753 	lcall	__gptrput
      0016DC A3               [24] 4754 	inc	dptr
      0016DD 12 66 A0         [24] 4755 	lcall	__gptrput
      0016E0 80 4F            [24] 4756 	sjmp	00109$
      0016E2                       4757 00106$:
                           001462  4758 	C$tasks.c$4527$4_0$342 ==.
                                   4759 ;	src/FreeRTOS/tasks.c:4527: pxCurrentTCB->ulNotifiedValue = ulReturn - ( uint32_t ) 1;
      0016E2 90 00 09         [24] 4760 	mov	dptr,#_pxCurrentTCB
      0016E5 E0               [24] 4761 	movx	a,@dptr
      0016E6 FA               [12] 4762 	mov	r2,a
      0016E7 A3               [24] 4763 	inc	dptr
      0016E8 E0               [24] 4764 	movx	a,@dptr
      0016E9 FE               [12] 4765 	mov	r6,a
      0016EA A3               [24] 4766 	inc	dptr
      0016EB E0               [24] 4767 	movx	a,@dptr
      0016EC FF               [12] 4768 	mov	r7,a
      0016ED A8 0C            [24] 4769 	mov	r0,_bp
      0016EF 08               [12] 4770 	inc	r0
      0016F0 74 2E            [12] 4771 	mov	a,#0x2e
      0016F2 2A               [12] 4772 	add	a,r2
      0016F3 F6               [12] 4773 	mov	@r0,a
      0016F4 E4               [12] 4774 	clr	a
      0016F5 3E               [12] 4775 	addc	a,r6
      0016F6 08               [12] 4776 	inc	r0
      0016F7 F6               [12] 4777 	mov	@r0,a
      0016F8 08               [12] 4778 	inc	r0
      0016F9 A6 07            [24] 4779 	mov	@r0,ar7
      0016FB E5 0C            [12] 4780 	mov	a,_bp
      0016FD 24 04            [12] 4781 	add	a,#0x04
      0016FF F8               [12] 4782 	mov	r0,a
      001700 E6               [12] 4783 	mov	a,@r0
      001701 24 FF            [12] 4784 	add	a,#0xff
      001703 FB               [12] 4785 	mov	r3,a
      001704 08               [12] 4786 	inc	r0
      001705 E6               [12] 4787 	mov	a,@r0
      001706 34 FF            [12] 4788 	addc	a,#0xff
      001708 FC               [12] 4789 	mov	r4,a
      001709 08               [12] 4790 	inc	r0
      00170A E6               [12] 4791 	mov	a,@r0
      00170B 34 FF            [12] 4792 	addc	a,#0xff
      00170D FD               [12] 4793 	mov	r5,a
      00170E 08               [12] 4794 	inc	r0
      00170F E6               [12] 4795 	mov	a,@r0
      001710 34 FF            [12] 4796 	addc	a,#0xff
      001712 FF               [12] 4797 	mov	r7,a
      001713 A8 0C            [24] 4798 	mov	r0,_bp
      001715 08               [12] 4799 	inc	r0
      001716 86 82            [24] 4800 	mov	dpl,@r0
      001718 08               [12] 4801 	inc	r0
      001719 86 83            [24] 4802 	mov	dph,@r0
      00171B 08               [12] 4803 	inc	r0
      00171C 86 F0            [24] 4804 	mov	b,@r0
      00171E EB               [12] 4805 	mov	a,r3
      00171F 12 66 A0         [24] 4806 	lcall	__gptrput
      001722 A3               [24] 4807 	inc	dptr
      001723 EC               [12] 4808 	mov	a,r4
      001724 12 66 A0         [24] 4809 	lcall	__gptrput
      001727 A3               [24] 4810 	inc	dptr
      001728 ED               [12] 4811 	mov	a,r5
      001729 12 66 A0         [24] 4812 	lcall	__gptrput
      00172C A3               [24] 4813 	inc	dptr
      00172D EF               [12] 4814 	mov	a,r7
      00172E 12 66 A0         [24] 4815 	lcall	__gptrput
      001731                       4816 00109$:
                           0014B1  4817 	C$tasks.c$4535$2_0$339 ==.
                                   4818 ;	src/FreeRTOS/tasks.c:4535: pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
      001731 90 00 09         [24] 4819 	mov	dptr,#_pxCurrentTCB
      001734 E0               [24] 4820 	movx	a,@dptr
      001735 FD               [12] 4821 	mov	r5,a
      001736 A3               [24] 4822 	inc	dptr
      001737 E0               [24] 4823 	movx	a,@dptr
      001738 FE               [12] 4824 	mov	r6,a
      001739 A3               [24] 4825 	inc	dptr
      00173A E0               [24] 4826 	movx	a,@dptr
      00173B FF               [12] 4827 	mov	r7,a
      00173C 74 32            [12] 4828 	mov	a,#0x32
      00173E 2D               [12] 4829 	add	a,r5
      00173F FD               [12] 4830 	mov	r5,a
      001740 E4               [12] 4831 	clr	a
      001741 3E               [12] 4832 	addc	a,r6
      001742 FE               [12] 4833 	mov	r6,a
      001743 8D 82            [24] 4834 	mov	dpl,r5
      001745 8E 83            [24] 4835 	mov	dph,r6
      001747 8F F0            [24] 4836 	mov	b,r7
      001749 E4               [12] 4837 	clr	a
      00174A 12 66 A0         [24] 4838 	lcall	__gptrput
                           0014CD  4839 	C$tasks.c$4537$1_0$333 ==.
                                   4840 ;	src/FreeRTOS/tasks.c:4537: taskEXIT_CRITICAL();
      00174D D0 E0            [24] 4841 	pop ACC 
      00174F 53 E0 80         [24] 4842 	anl	_ACC,#0x80
      001752 E5 E0            [12] 4843 	mov	a,_ACC
      001754 42 A8            [12] 4844 	orl	_IE,a
      001756 D0 E0            [24] 4845 	pop ACC 
                           0014D8  4846 	C$tasks.c$4539$1_0$333 ==.
                                   4847 ;	src/FreeRTOS/tasks.c:4539: return ulReturn;
      001758 E5 0C            [12] 4848 	mov	a,_bp
      00175A 24 04            [12] 4849 	add	a,#0x04
      00175C F8               [12] 4850 	mov	r0,a
      00175D 86 82            [24] 4851 	mov	dpl,@r0
      00175F 08               [12] 4852 	inc	r0
      001760 86 83            [24] 4853 	mov	dph,@r0
      001762 08               [12] 4854 	inc	r0
      001763 86 F0            [24] 4855 	mov	b,@r0
      001765 08               [12] 4856 	inc	r0
      001766 E6               [12] 4857 	mov	a,@r0
                           0014E7  4858 	C$tasks.c$4540$1_0$333 ==.
                                   4859 ;	src/FreeRTOS/tasks.c:4540: }
      001767 85 0C 81         [24] 4860 	mov	sp,_bp
      00176A D0 0C            [24] 4861 	pop	_bp
                           0014EC  4862 	C$tasks.c$4540$1_0$333 ==.
                           0014EC  4863 	XG$ulTaskNotifyTake$0$0 ==.
      00176C 22               [24] 4864 	ret
                                   4865 ;------------------------------------------------------------
                                   4866 ;Allocation info for local variables in function 'xTaskNotifyWait'
                                   4867 ;------------------------------------------------------------
                                   4868 ;ulBitsToClearOnExit       Allocated to stack - _bp -6
                                   4869 ;pulNotificationValue      Allocated to stack - _bp -9
                                   4870 ;xTicksToWait              Allocated to stack - _bp -11
                                   4871 ;ulBitsToClearOnEntry      Allocated to stack - _bp +1
                                   4872 ;xReturn                   Allocated to registers r7 
                                   4873 ;sloc0                     Allocated to stack - _bp +5
                                   4874 ;sloc1                     Allocated to stack - _bp +8
                                   4875 ;sloc2                     Allocated to stack - _bp +12
                                   4876 ;------------------------------------------------------------
                           0014ED  4877 	G$xTaskNotifyWait$0$0 ==.
                           0014ED  4878 	C$tasks.c$4547$1_0$345 ==.
                                   4879 ;	src/FreeRTOS/tasks.c:4547: BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
                                   4880 ;	-----------------------------------------
                                   4881 ;	 function xTaskNotifyWait
                                   4882 ;	-----------------------------------------
      00176D                       4883 _xTaskNotifyWait:
      00176D C0 0C            [24] 4884 	push	_bp
      00176F 85 81 0C         [24] 4885 	mov	_bp,sp
      001772 C0 82            [24] 4886 	push	dpl
      001774 C0 83            [24] 4887 	push	dph
      001776 C0 F0            [24] 4888 	push	b
      001778 C0 E0            [24] 4889 	push	acc
      00177A E5 81            [12] 4890 	mov	a,sp
      00177C 24 0B            [12] 4891 	add	a,#0x0b
      00177E F5 81            [12] 4892 	mov	sp,a
                           001500  4893 	C$tasks.c$4551$1_0$345 ==.
                                   4894 ;	src/FreeRTOS/tasks.c:4551: taskENTER_CRITICAL();
      001780 C0 E0            [24] 4895 	push ACC 
      001782 C0 A8            [24] 4896 	push IE 
                                   4897 ;	assignBit
      001784 C2 AF            [12] 4898 	clr	_EA
                           001506  4899 	C$tasks.c$4554$2_0$346 ==.
                                   4900 ;	src/FreeRTOS/tasks.c:4554: if( pxCurrentTCB->ucNotifyState != taskNOTIFICATION_RECEIVED )
      001786 90 00 09         [24] 4901 	mov	dptr,#_pxCurrentTCB
      001789 E0               [24] 4902 	movx	a,@dptr
      00178A FA               [12] 4903 	mov	r2,a
      00178B A3               [24] 4904 	inc	dptr
      00178C E0               [24] 4905 	movx	a,@dptr
      00178D FB               [12] 4906 	mov	r3,a
      00178E A3               [24] 4907 	inc	dptr
      00178F E0               [24] 4908 	movx	a,@dptr
      001790 FF               [12] 4909 	mov	r7,a
      001791 74 32            [12] 4910 	mov	a,#0x32
      001793 2A               [12] 4911 	add	a,r2
      001794 FA               [12] 4912 	mov	r2,a
      001795 E4               [12] 4913 	clr	a
      001796 3B               [12] 4914 	addc	a,r3
      001797 FB               [12] 4915 	mov	r3,a
      001798 8A 82            [24] 4916 	mov	dpl,r2
      00179A 8B 83            [24] 4917 	mov	dph,r3
      00179C 8F F0            [24] 4918 	mov	b,r7
      00179E 12 70 5A         [24] 4919 	lcall	__gptrget
      0017A1 FA               [12] 4920 	mov	r2,a
      0017A2 BA 02 03         [24] 4921 	cjne	r2,#0x02,00128$
      0017A5 02 18 79         [24] 4922 	ljmp	00104$
      0017A8                       4923 00128$:
                           001528  4924 	C$tasks.c$4559$3_0$347 ==.
                                   4925 ;	src/FreeRTOS/tasks.c:4559: pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;
      0017A8 90 00 09         [24] 4926 	mov	dptr,#_pxCurrentTCB
      0017AB E0               [24] 4927 	movx	a,@dptr
      0017AC FD               [12] 4928 	mov	r5,a
      0017AD A3               [24] 4929 	inc	dptr
      0017AE E0               [24] 4930 	movx	a,@dptr
      0017AF FE               [12] 4931 	mov	r6,a
      0017B0 A3               [24] 4932 	inc	dptr
      0017B1 E0               [24] 4933 	movx	a,@dptr
      0017B2 FF               [12] 4934 	mov	r7,a
      0017B3 E5 0C            [12] 4935 	mov	a,_bp
      0017B5 24 05            [12] 4936 	add	a,#0x05
      0017B7 F8               [12] 4937 	mov	r0,a
      0017B8 74 2E            [12] 4938 	mov	a,#0x2e
      0017BA 2D               [12] 4939 	add	a,r5
      0017BB F6               [12] 4940 	mov	@r0,a
      0017BC E4               [12] 4941 	clr	a
      0017BD 3E               [12] 4942 	addc	a,r6
      0017BE 08               [12] 4943 	inc	r0
      0017BF F6               [12] 4944 	mov	@r0,a
      0017C0 08               [12] 4945 	inc	r0
      0017C1 A6 07            [24] 4946 	mov	@r0,ar7
      0017C3 90 00 09         [24] 4947 	mov	dptr,#_pxCurrentTCB
      0017C6 E0               [24] 4948 	movx	a,@dptr
      0017C7 FA               [12] 4949 	mov	r2,a
      0017C8 A3               [24] 4950 	inc	dptr
      0017C9 E0               [24] 4951 	movx	a,@dptr
      0017CA FB               [12] 4952 	mov	r3,a
      0017CB A3               [24] 4953 	inc	dptr
      0017CC E0               [24] 4954 	movx	a,@dptr
      0017CD FC               [12] 4955 	mov	r4,a
      0017CE 74 2E            [12] 4956 	mov	a,#0x2e
      0017D0 2A               [12] 4957 	add	a,r2
      0017D1 FA               [12] 4958 	mov	r2,a
      0017D2 E4               [12] 4959 	clr	a
      0017D3 3B               [12] 4960 	addc	a,r3
      0017D4 FB               [12] 4961 	mov	r3,a
      0017D5 8A 82            [24] 4962 	mov	dpl,r2
      0017D7 8B 83            [24] 4963 	mov	dph,r3
      0017D9 8C F0            [24] 4964 	mov	b,r4
      0017DB E5 0C            [12] 4965 	mov	a,_bp
      0017DD 24 08            [12] 4966 	add	a,#0x08
      0017DF F8               [12] 4967 	mov	r0,a
      0017E0 12 70 5A         [24] 4968 	lcall	__gptrget
      0017E3 F6               [12] 4969 	mov	@r0,a
      0017E4 A3               [24] 4970 	inc	dptr
      0017E5 12 70 5A         [24] 4971 	lcall	__gptrget
      0017E8 08               [12] 4972 	inc	r0
      0017E9 F6               [12] 4973 	mov	@r0,a
      0017EA A3               [24] 4974 	inc	dptr
      0017EB 12 70 5A         [24] 4975 	lcall	__gptrget
      0017EE 08               [12] 4976 	inc	r0
      0017EF F6               [12] 4977 	mov	@r0,a
      0017F0 A3               [24] 4978 	inc	dptr
      0017F1 12 70 5A         [24] 4979 	lcall	__gptrget
      0017F4 08               [12] 4980 	inc	r0
      0017F5 F6               [12] 4981 	mov	@r0,a
      0017F6 A8 0C            [24] 4982 	mov	r0,_bp
      0017F8 08               [12] 4983 	inc	r0
      0017F9 E6               [12] 4984 	mov	a,@r0
      0017FA F4               [12] 4985 	cpl	a
      0017FB FD               [12] 4986 	mov	r5,a
      0017FC 08               [12] 4987 	inc	r0
      0017FD E6               [12] 4988 	mov	a,@r0
      0017FE F4               [12] 4989 	cpl	a
      0017FF FE               [12] 4990 	mov	r6,a
      001800 08               [12] 4991 	inc	r0
      001801 E6               [12] 4992 	mov	a,@r0
      001802 F4               [12] 4993 	cpl	a
      001803 FC               [12] 4994 	mov	r4,a
      001804 08               [12] 4995 	inc	r0
      001805 E6               [12] 4996 	mov	a,@r0
      001806 F4               [12] 4997 	cpl	a
      001807 FF               [12] 4998 	mov	r7,a
      001808 E5 0C            [12] 4999 	mov	a,_bp
      00180A 24 08            [12] 5000 	add	a,#0x08
      00180C F8               [12] 5001 	mov	r0,a
      00180D E6               [12] 5002 	mov	a,@r0
      00180E 52 05            [12] 5003 	anl	ar5,a
      001810 08               [12] 5004 	inc	r0
      001811 E6               [12] 5005 	mov	a,@r0
      001812 52 06            [12] 5006 	anl	ar6,a
      001814 08               [12] 5007 	inc	r0
      001815 E6               [12] 5008 	mov	a,@r0
      001816 52 04            [12] 5009 	anl	ar4,a
      001818 08               [12] 5010 	inc	r0
      001819 E6               [12] 5011 	mov	a,@r0
      00181A 52 07            [12] 5012 	anl	ar7,a
      00181C E5 0C            [12] 5013 	mov	a,_bp
      00181E 24 05            [12] 5014 	add	a,#0x05
      001820 F8               [12] 5015 	mov	r0,a
      001821 86 82            [24] 5016 	mov	dpl,@r0
      001823 08               [12] 5017 	inc	r0
      001824 86 83            [24] 5018 	mov	dph,@r0
      001826 08               [12] 5019 	inc	r0
      001827 86 F0            [24] 5020 	mov	b,@r0
      001829 ED               [12] 5021 	mov	a,r5
      00182A 12 66 A0         [24] 5022 	lcall	__gptrput
      00182D A3               [24] 5023 	inc	dptr
      00182E EE               [12] 5024 	mov	a,r6
      00182F 12 66 A0         [24] 5025 	lcall	__gptrput
      001832 A3               [24] 5026 	inc	dptr
      001833 EC               [12] 5027 	mov	a,r4
      001834 12 66 A0         [24] 5028 	lcall	__gptrput
      001837 A3               [24] 5029 	inc	dptr
      001838 EF               [12] 5030 	mov	a,r7
      001839 12 66 A0         [24] 5031 	lcall	__gptrput
                           0015BC  5032 	C$tasks.c$4562$3_0$347 ==.
                                   5033 ;	src/FreeRTOS/tasks.c:4562: pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
      00183C 90 00 09         [24] 5034 	mov	dptr,#_pxCurrentTCB
      00183F E0               [24] 5035 	movx	a,@dptr
      001840 FD               [12] 5036 	mov	r5,a
      001841 A3               [24] 5037 	inc	dptr
      001842 E0               [24] 5038 	movx	a,@dptr
      001843 FE               [12] 5039 	mov	r6,a
      001844 A3               [24] 5040 	inc	dptr
      001845 E0               [24] 5041 	movx	a,@dptr
      001846 FF               [12] 5042 	mov	r7,a
      001847 74 32            [12] 5043 	mov	a,#0x32
      001849 2D               [12] 5044 	add	a,r5
      00184A FD               [12] 5045 	mov	r5,a
      00184B E4               [12] 5046 	clr	a
      00184C 3E               [12] 5047 	addc	a,r6
      00184D FE               [12] 5048 	mov	r6,a
      00184E 8D 82            [24] 5049 	mov	dpl,r5
      001850 8E 83            [24] 5050 	mov	dph,r6
      001852 8F F0            [24] 5051 	mov	b,r7
      001854 74 01            [12] 5052 	mov	a,#0x01
      001856 12 66 A0         [24] 5053 	lcall	__gptrput
                           0015D9  5054 	C$tasks.c$4564$3_0$347 ==.
                                   5055 ;	src/FreeRTOS/tasks.c:4564: if( xTicksToWait > ( TickType_t ) 0 )
      001859 E5 0C            [12] 5056 	mov	a,_bp
      00185B 24 F5            [12] 5057 	add	a,#0xf5
      00185D F8               [12] 5058 	mov	r0,a
      00185E E6               [12] 5059 	mov	a,@r0
      00185F 08               [12] 5060 	inc	r0
      001860 46               [12] 5061 	orl	a,@r0
      001861 60 16            [24] 5062 	jz	00104$
                           0015E3  5063 	C$tasks.c$4566$4_0$348 ==.
                                   5064 ;	src/FreeRTOS/tasks.c:4566: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      001863 74 01            [12] 5065 	mov	a,#0x01
      001865 C0 E0            [24] 5066 	push	acc
      001867 E5 0C            [12] 5067 	mov	a,_bp
      001869 24 F5            [12] 5068 	add	a,#0xf5
      00186B F8               [12] 5069 	mov	r0,a
      00186C 86 82            [24] 5070 	mov	dpl,@r0
      00186E 08               [12] 5071 	inc	r0
      00186F 86 83            [24] 5072 	mov	dph,@r0
      001871 12 22 38         [24] 5073 	lcall	_prvAddCurrentTaskToDelayedList
      001874 15 81            [12] 5074 	dec	sp
                           0015F6  5075 	C$tasks.c$4573$4_0$348 ==.
                                   5076 ;	src/FreeRTOS/tasks.c:4573: portYIELD_WITHIN_API();
      001876 12 64 B5         [24] 5077 	lcall	_vPortYield
      001879                       5078 00104$:
                           0015F9  5079 	C$tasks.c$4585$1_0$345 ==.
                                   5080 ;	src/FreeRTOS/tasks.c:4585: taskEXIT_CRITICAL();
      001879 D0 E0            [24] 5081 	pop ACC 
      00187B 53 E0 80         [24] 5082 	anl	_ACC,#0x80
      00187E E5 E0            [12] 5083 	mov	a,_ACC
      001880 42 A8            [12] 5084 	orl	_IE,a
      001882 D0 E0            [24] 5085 	pop ACC 
                           001604  5086 	C$tasks.c$4587$1_0$345 ==.
                                   5087 ;	src/FreeRTOS/tasks.c:4587: taskENTER_CRITICAL();
      001884 C0 E0            [24] 5088 	push ACC 
      001886 C0 A8            [24] 5089 	push IE 
                                   5090 ;	assignBit
      001888 C2 AF            [12] 5091 	clr	_EA
                           00160A  5092 	C$tasks.c$4591$2_0$351 ==.
                                   5093 ;	src/FreeRTOS/tasks.c:4591: if( pulNotificationValue != NULL )
      00188A E5 0C            [12] 5094 	mov	a,_bp
      00188C 24 F7            [12] 5095 	add	a,#0xf7
      00188E F8               [12] 5096 	mov	r0,a
      00188F E6               [12] 5097 	mov	a,@r0
      001890 08               [12] 5098 	inc	r0
      001891 46               [12] 5099 	orl	a,@r0
      001892 60 5F            [24] 5100 	jz	00106$
                           001614  5101 	C$tasks.c$4595$3_0$352 ==.
                                   5102 ;	src/FreeRTOS/tasks.c:4595: *pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
      001894 E5 0C            [12] 5103 	mov	a,_bp
      001896 24 F7            [12] 5104 	add	a,#0xf7
      001898 F8               [12] 5105 	mov	r0,a
      001899 E5 0C            [12] 5106 	mov	a,_bp
      00189B 24 08            [12] 5107 	add	a,#0x08
      00189D F9               [12] 5108 	mov	r1,a
      00189E E6               [12] 5109 	mov	a,@r0
      00189F F7               [12] 5110 	mov	@r1,a
      0018A0 08               [12] 5111 	inc	r0
      0018A1 09               [12] 5112 	inc	r1
      0018A2 E6               [12] 5113 	mov	a,@r0
      0018A3 F7               [12] 5114 	mov	@r1,a
      0018A4 08               [12] 5115 	inc	r0
      0018A5 09               [12] 5116 	inc	r1
      0018A6 E6               [12] 5117 	mov	a,@r0
      0018A7 F7               [12] 5118 	mov	@r1,a
      0018A8 90 00 09         [24] 5119 	mov	dptr,#_pxCurrentTCB
      0018AB E0               [24] 5120 	movx	a,@dptr
      0018AC FA               [12] 5121 	mov	r2,a
      0018AD A3               [24] 5122 	inc	dptr
      0018AE E0               [24] 5123 	movx	a,@dptr
      0018AF FB               [12] 5124 	mov	r3,a
      0018B0 A3               [24] 5125 	inc	dptr
      0018B1 E0               [24] 5126 	movx	a,@dptr
      0018B2 FC               [12] 5127 	mov	r4,a
      0018B3 74 2E            [12] 5128 	mov	a,#0x2e
      0018B5 2A               [12] 5129 	add	a,r2
      0018B6 FA               [12] 5130 	mov	r2,a
      0018B7 E4               [12] 5131 	clr	a
      0018B8 3B               [12] 5132 	addc	a,r3
      0018B9 FB               [12] 5133 	mov	r3,a
      0018BA 8A 82            [24] 5134 	mov	dpl,r2
      0018BC 8B 83            [24] 5135 	mov	dph,r3
      0018BE 8C F0            [24] 5136 	mov	b,r4
      0018C0 12 70 5A         [24] 5137 	lcall	__gptrget
      0018C3 FA               [12] 5138 	mov	r2,a
      0018C4 A3               [24] 5139 	inc	dptr
      0018C5 12 70 5A         [24] 5140 	lcall	__gptrget
      0018C8 FB               [12] 5141 	mov	r3,a
      0018C9 A3               [24] 5142 	inc	dptr
      0018CA 12 70 5A         [24] 5143 	lcall	__gptrget
      0018CD FC               [12] 5144 	mov	r4,a
      0018CE A3               [24] 5145 	inc	dptr
      0018CF 12 70 5A         [24] 5146 	lcall	__gptrget
      0018D2 FF               [12] 5147 	mov	r7,a
      0018D3 E5 0C            [12] 5148 	mov	a,_bp
      0018D5 24 08            [12] 5149 	add	a,#0x08
      0018D7 F8               [12] 5150 	mov	r0,a
      0018D8 86 82            [24] 5151 	mov	dpl,@r0
      0018DA 08               [12] 5152 	inc	r0
      0018DB 86 83            [24] 5153 	mov	dph,@r0
      0018DD 08               [12] 5154 	inc	r0
      0018DE 86 F0            [24] 5155 	mov	b,@r0
      0018E0 EA               [12] 5156 	mov	a,r2
      0018E1 12 66 A0         [24] 5157 	lcall	__gptrput
      0018E4 A3               [24] 5158 	inc	dptr
      0018E5 EB               [12] 5159 	mov	a,r3
      0018E6 12 66 A0         [24] 5160 	lcall	__gptrput
      0018E9 A3               [24] 5161 	inc	dptr
      0018EA EC               [12] 5162 	mov	a,r4
      0018EB 12 66 A0         [24] 5163 	lcall	__gptrput
      0018EE A3               [24] 5164 	inc	dptr
      0018EF EF               [12] 5165 	mov	a,r7
      0018F0 12 66 A0         [24] 5166 	lcall	__gptrput
      0018F3                       5167 00106$:
                           001673  5168 	C$tasks.c$4602$2_0$351 ==.
                                   5169 ;	src/FreeRTOS/tasks.c:4602: if( pxCurrentTCB->ucNotifyState != taskNOTIFICATION_RECEIVED )
      0018F3 90 00 09         [24] 5170 	mov	dptr,#_pxCurrentTCB
      0018F6 E0               [24] 5171 	movx	a,@dptr
      0018F7 FD               [12] 5172 	mov	r5,a
      0018F8 A3               [24] 5173 	inc	dptr
      0018F9 E0               [24] 5174 	movx	a,@dptr
      0018FA FE               [12] 5175 	mov	r6,a
      0018FB A3               [24] 5176 	inc	dptr
      0018FC E0               [24] 5177 	movx	a,@dptr
      0018FD FF               [12] 5178 	mov	r7,a
      0018FE 74 32            [12] 5179 	mov	a,#0x32
      001900 2D               [12] 5180 	add	a,r5
      001901 FD               [12] 5181 	mov	r5,a
      001902 E4               [12] 5182 	clr	a
      001903 3E               [12] 5183 	addc	a,r6
      001904 FE               [12] 5184 	mov	r6,a
      001905 8D 82            [24] 5185 	mov	dpl,r5
      001907 8E 83            [24] 5186 	mov	dph,r6
      001909 8F F0            [24] 5187 	mov	b,r7
      00190B 12 70 5A         [24] 5188 	lcall	__gptrget
      00190E FD               [12] 5189 	mov	r5,a
      00190F BD 02 02         [24] 5190 	cjne	r5,#0x02,00131$
      001912 80 05            [24] 5191 	sjmp	00108$
      001914                       5192 00131$:
                           001694  5193 	C$tasks.c$4605$3_0$353 ==.
                                   5194 ;	src/FreeRTOS/tasks.c:4605: xReturn = pdFALSE;
      001914 7F 00            [12] 5195 	mov	r7,#0x00
      001916 02 19 B1         [24] 5196 	ljmp	00109$
      001919                       5197 00108$:
                           001699  5198 	C$tasks.c$4611$3_0$354 ==.
                                   5199 ;	src/FreeRTOS/tasks.c:4611: pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
      001919 90 00 09         [24] 5200 	mov	dptr,#_pxCurrentTCB
      00191C E0               [24] 5201 	movx	a,@dptr
      00191D FC               [12] 5202 	mov	r4,a
      00191E A3               [24] 5203 	inc	dptr
      00191F E0               [24] 5204 	movx	a,@dptr
      001920 FD               [12] 5205 	mov	r5,a
      001921 A3               [24] 5206 	inc	dptr
      001922 E0               [24] 5207 	movx	a,@dptr
      001923 FE               [12] 5208 	mov	r6,a
      001924 E5 0C            [12] 5209 	mov	a,_bp
      001926 24 08            [12] 5210 	add	a,#0x08
      001928 F8               [12] 5211 	mov	r0,a
      001929 74 2E            [12] 5212 	mov	a,#0x2e
      00192B 2C               [12] 5213 	add	a,r4
      00192C F6               [12] 5214 	mov	@r0,a
      00192D E4               [12] 5215 	clr	a
      00192E 3D               [12] 5216 	addc	a,r5
      00192F 08               [12] 5217 	inc	r0
      001930 F6               [12] 5218 	mov	@r0,a
      001931 08               [12] 5219 	inc	r0
      001932 A6 06            [24] 5220 	mov	@r0,ar6
      001934 90 00 09         [24] 5221 	mov	dptr,#_pxCurrentTCB
      001937 E0               [24] 5222 	movx	a,@dptr
      001938 FA               [12] 5223 	mov	r2,a
      001939 A3               [24] 5224 	inc	dptr
      00193A E0               [24] 5225 	movx	a,@dptr
      00193B FB               [12] 5226 	mov	r3,a
      00193C A3               [24] 5227 	inc	dptr
      00193D E0               [24] 5228 	movx	a,@dptr
      00193E FE               [12] 5229 	mov	r6,a
      00193F 74 2E            [12] 5230 	mov	a,#0x2e
      001941 2A               [12] 5231 	add	a,r2
      001942 FA               [12] 5232 	mov	r2,a
      001943 E4               [12] 5233 	clr	a
      001944 3B               [12] 5234 	addc	a,r3
      001945 FB               [12] 5235 	mov	r3,a
      001946 8A 82            [24] 5236 	mov	dpl,r2
      001948 8B 83            [24] 5237 	mov	dph,r3
      00194A 8E F0            [24] 5238 	mov	b,r6
      00194C E5 0C            [12] 5239 	mov	a,_bp
      00194E 24 0C            [12] 5240 	add	a,#0x0c
      001950 F8               [12] 5241 	mov	r0,a
      001951 12 70 5A         [24] 5242 	lcall	__gptrget
      001954 F6               [12] 5243 	mov	@r0,a
      001955 A3               [24] 5244 	inc	dptr
      001956 12 70 5A         [24] 5245 	lcall	__gptrget
      001959 08               [12] 5246 	inc	r0
      00195A F6               [12] 5247 	mov	@r0,a
      00195B A3               [24] 5248 	inc	dptr
      00195C 12 70 5A         [24] 5249 	lcall	__gptrget
      00195F 08               [12] 5250 	inc	r0
      001960 F6               [12] 5251 	mov	@r0,a
      001961 A3               [24] 5252 	inc	dptr
      001962 12 70 5A         [24] 5253 	lcall	__gptrget
      001965 08               [12] 5254 	inc	r0
      001966 F6               [12] 5255 	mov	@r0,a
      001967 E5 0C            [12] 5256 	mov	a,_bp
      001969 24 FA            [12] 5257 	add	a,#0xfa
      00196B F8               [12] 5258 	mov	r0,a
      00196C E6               [12] 5259 	mov	a,@r0
      00196D F4               [12] 5260 	cpl	a
      00196E FC               [12] 5261 	mov	r4,a
      00196F 08               [12] 5262 	inc	r0
      001970 E6               [12] 5263 	mov	a,@r0
      001971 F4               [12] 5264 	cpl	a
      001972 FD               [12] 5265 	mov	r5,a
      001973 08               [12] 5266 	inc	r0
      001974 E6               [12] 5267 	mov	a,@r0
      001975 F4               [12] 5268 	cpl	a
      001976 FB               [12] 5269 	mov	r3,a
      001977 08               [12] 5270 	inc	r0
      001978 E6               [12] 5271 	mov	a,@r0
      001979 F4               [12] 5272 	cpl	a
      00197A FE               [12] 5273 	mov	r6,a
      00197B E5 0C            [12] 5274 	mov	a,_bp
      00197D 24 0C            [12] 5275 	add	a,#0x0c
      00197F F8               [12] 5276 	mov	r0,a
      001980 E6               [12] 5277 	mov	a,@r0
      001981 52 04            [12] 5278 	anl	ar4,a
      001983 08               [12] 5279 	inc	r0
      001984 E6               [12] 5280 	mov	a,@r0
      001985 52 05            [12] 5281 	anl	ar5,a
      001987 08               [12] 5282 	inc	r0
      001988 E6               [12] 5283 	mov	a,@r0
      001989 52 03            [12] 5284 	anl	ar3,a
      00198B 08               [12] 5285 	inc	r0
      00198C E6               [12] 5286 	mov	a,@r0
      00198D 52 06            [12] 5287 	anl	ar6,a
      00198F E5 0C            [12] 5288 	mov	a,_bp
      001991 24 08            [12] 5289 	add	a,#0x08
      001993 F8               [12] 5290 	mov	r0,a
      001994 86 82            [24] 5291 	mov	dpl,@r0
      001996 08               [12] 5292 	inc	r0
      001997 86 83            [24] 5293 	mov	dph,@r0
      001999 08               [12] 5294 	inc	r0
      00199A 86 F0            [24] 5295 	mov	b,@r0
      00199C EC               [12] 5296 	mov	a,r4
      00199D 12 66 A0         [24] 5297 	lcall	__gptrput
      0019A0 A3               [24] 5298 	inc	dptr
      0019A1 ED               [12] 5299 	mov	a,r5
      0019A2 12 66 A0         [24] 5300 	lcall	__gptrput
      0019A5 A3               [24] 5301 	inc	dptr
      0019A6 EB               [12] 5302 	mov	a,r3
      0019A7 12 66 A0         [24] 5303 	lcall	__gptrput
      0019AA A3               [24] 5304 	inc	dptr
      0019AB EE               [12] 5305 	mov	a,r6
      0019AC 12 66 A0         [24] 5306 	lcall	__gptrput
                           00172F  5307 	C$tasks.c$4612$3_0$354 ==.
                                   5308 ;	src/FreeRTOS/tasks.c:4612: xReturn = pdTRUE;
      0019AF 7F 01            [12] 5309 	mov	r7,#0x01
      0019B1                       5310 00109$:
                           001731  5311 	C$tasks.c$4615$2_0$351 ==.
                                   5312 ;	src/FreeRTOS/tasks.c:4615: pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
      0019B1 90 00 09         [24] 5313 	mov	dptr,#_pxCurrentTCB
      0019B4 E0               [24] 5314 	movx	a,@dptr
      0019B5 FC               [12] 5315 	mov	r4,a
      0019B6 A3               [24] 5316 	inc	dptr
      0019B7 E0               [24] 5317 	movx	a,@dptr
      0019B8 FD               [12] 5318 	mov	r5,a
      0019B9 A3               [24] 5319 	inc	dptr
      0019BA E0               [24] 5320 	movx	a,@dptr
      0019BB FE               [12] 5321 	mov	r6,a
      0019BC 74 32            [12] 5322 	mov	a,#0x32
      0019BE 2C               [12] 5323 	add	a,r4
      0019BF FC               [12] 5324 	mov	r4,a
      0019C0 E4               [12] 5325 	clr	a
      0019C1 3D               [12] 5326 	addc	a,r5
      0019C2 FD               [12] 5327 	mov	r5,a
      0019C3 8C 82            [24] 5328 	mov	dpl,r4
      0019C5 8D 83            [24] 5329 	mov	dph,r5
      0019C7 8E F0            [24] 5330 	mov	b,r6
      0019C9 E4               [12] 5331 	clr	a
      0019CA 12 66 A0         [24] 5332 	lcall	__gptrput
                           00174D  5333 	C$tasks.c$4617$1_0$345 ==.
                                   5334 ;	src/FreeRTOS/tasks.c:4617: taskEXIT_CRITICAL();
      0019CD D0 E0            [24] 5335 	pop ACC 
      0019CF 53 E0 80         [24] 5336 	anl	_ACC,#0x80
      0019D2 E5 E0            [12] 5337 	mov	a,_ACC
      0019D4 42 A8            [12] 5338 	orl	_IE,a
      0019D6 D0 E0            [24] 5339 	pop ACC 
                           001758  5340 	C$tasks.c$4619$1_0$345 ==.
                                   5341 ;	src/FreeRTOS/tasks.c:4619: return xReturn;
      0019D8 8F 82            [24] 5342 	mov	dpl,r7
                           00175A  5343 	C$tasks.c$4620$1_0$345 ==.
                                   5344 ;	src/FreeRTOS/tasks.c:4620: }
      0019DA 85 0C 81         [24] 5345 	mov	sp,_bp
      0019DD D0 0C            [24] 5346 	pop	_bp
                           00175F  5347 	C$tasks.c$4620$1_0$345 ==.
                           00175F  5348 	XG$xTaskNotifyWait$0$0 ==.
      0019DF 22               [24] 5349 	ret
                                   5350 ;------------------------------------------------------------
                                   5351 ;Allocation info for local variables in function 'xTaskGenericNotify'
                                   5352 ;------------------------------------------------------------
                                   5353 ;ulValue                   Allocated to stack - _bp -6
                                   5354 ;eAction                   Allocated to stack - _bp -7
                                   5355 ;pulPreviousNotificationValue Allocated to stack - _bp -10
                                   5356 ;xTaskToNotify             Allocated to registers r7 r6 r5 
                                   5357 ;pxTCB                     Allocated to stack - _bp +4
                                   5358 ;xReturn                   Allocated to stack - _bp +7
                                   5359 ;ucOriginalNotifyState     Allocated to registers r4 
                                   5360 ;sloc0                     Allocated to stack - _bp +1
                                   5361 ;------------------------------------------------------------
                           001760  5362 	G$xTaskGenericNotify$0$0 ==.
                           001760  5363 	C$tasks.c$4627$1_0$356 ==.
                                   5364 ;	src/FreeRTOS/tasks.c:4627: BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue )
                                   5365 ;	-----------------------------------------
                                   5366 ;	 function xTaskGenericNotify
                                   5367 ;	-----------------------------------------
      0019E0                       5368 _xTaskGenericNotify:
      0019E0 C0 0C            [24] 5369 	push	_bp
      0019E2 E5 81            [12] 5370 	mov	a,sp
      0019E4 F5 0C            [12] 5371 	mov	_bp,a
      0019E6 24 07            [12] 5372 	add	a,#0x07
      0019E8 F5 81            [12] 5373 	mov	sp,a
      0019EA AF 82            [24] 5374 	mov	r7,dpl
      0019EC AE 83            [24] 5375 	mov	r6,dph
      0019EE AD F0            [24] 5376 	mov	r5,b
                           001770  5377 	C$tasks.c$4630$2_0$356 ==.
                                   5378 ;	src/FreeRTOS/tasks.c:4630: BaseType_t xReturn = pdPASS;
      0019F0 E5 0C            [12] 5379 	mov	a,_bp
      0019F2 24 07            [12] 5380 	add	a,#0x07
      0019F4 F8               [12] 5381 	mov	r0,a
      0019F5 76 01            [12] 5382 	mov	@r0,#0x01
                           001777  5383 	C$tasks.c$4634$1_0$356 ==.
                                   5384 ;	src/FreeRTOS/tasks.c:4634: pxTCB = xTaskToNotify;
      0019F7 E5 0C            [12] 5385 	mov	a,_bp
      0019F9 24 04            [12] 5386 	add	a,#0x04
      0019FB F8               [12] 5387 	mov	r0,a
      0019FC A6 07            [24] 5388 	mov	@r0,ar7
      0019FE 08               [12] 5389 	inc	r0
      0019FF A6 06            [24] 5390 	mov	@r0,ar6
      001A01 08               [12] 5391 	inc	r0
      001A02 A6 05            [24] 5392 	mov	@r0,ar5
                           001784  5393 	C$tasks.c$4636$1_0$356 ==.
                                   5394 ;	src/FreeRTOS/tasks.c:4636: taskENTER_CRITICAL();
      001A04 C0 E0            [24] 5395 	push ACC 
      001A06 C0 A8            [24] 5396 	push IE 
                                   5397 ;	assignBit
      001A08 C2 AF            [12] 5398 	clr	_EA
                           00178A  5399 	C$tasks.c$4638$2_0$357 ==.
                                   5400 ;	src/FreeRTOS/tasks.c:4638: if( pulPreviousNotificationValue != NULL )
      001A0A E5 0C            [12] 5401 	mov	a,_bp
      001A0C 24 F6            [12] 5402 	add	a,#0xf6
      001A0E F8               [12] 5403 	mov	r0,a
      001A0F E6               [12] 5404 	mov	a,@r0
      001A10 08               [12] 5405 	inc	r0
      001A11 46               [12] 5406 	orl	a,@r0
      001A12 60 52            [24] 5407 	jz	00102$
                           001794  5408 	C$tasks.c$4640$1_0$356 ==.
                                   5409 ;	src/FreeRTOS/tasks.c:4640: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
      001A14 E5 0C            [12] 5410 	mov	a,_bp
      001A16 24 F6            [12] 5411 	add	a,#0xf6
      001A18 F8               [12] 5412 	mov	r0,a
      001A19 A9 0C            [24] 5413 	mov	r1,_bp
      001A1B 09               [12] 5414 	inc	r1
      001A1C E6               [12] 5415 	mov	a,@r0
      001A1D F7               [12] 5416 	mov	@r1,a
      001A1E 08               [12] 5417 	inc	r0
      001A1F 09               [12] 5418 	inc	r1
      001A20 E6               [12] 5419 	mov	a,@r0
      001A21 F7               [12] 5420 	mov	@r1,a
      001A22 08               [12] 5421 	inc	r0
      001A23 09               [12] 5422 	inc	r1
      001A24 E6               [12] 5423 	mov	a,@r0
      001A25 F7               [12] 5424 	mov	@r1,a
      001A26 74 2E            [12] 5425 	mov	a,#0x2e
      001A28 2F               [12] 5426 	add	a,r7
      001A29 FA               [12] 5427 	mov	r2,a
      001A2A E4               [12] 5428 	clr	a
      001A2B 3E               [12] 5429 	addc	a,r6
      001A2C FB               [12] 5430 	mov	r3,a
      001A2D 8D 04            [24] 5431 	mov	ar4,r5
      001A2F 8A 82            [24] 5432 	mov	dpl,r2
      001A31 8B 83            [24] 5433 	mov	dph,r3
      001A33 8C F0            [24] 5434 	mov	b,r4
      001A35 12 70 5A         [24] 5435 	lcall	__gptrget
      001A38 FA               [12] 5436 	mov	r2,a
      001A39 A3               [24] 5437 	inc	dptr
      001A3A 12 70 5A         [24] 5438 	lcall	__gptrget
      001A3D FB               [12] 5439 	mov	r3,a
      001A3E A3               [24] 5440 	inc	dptr
      001A3F 12 70 5A         [24] 5441 	lcall	__gptrget
      001A42 FC               [12] 5442 	mov	r4,a
      001A43 A3               [24] 5443 	inc	dptr
      001A44 12 70 5A         [24] 5444 	lcall	__gptrget
      001A47 FF               [12] 5445 	mov	r7,a
      001A48 A8 0C            [24] 5446 	mov	r0,_bp
      001A4A 08               [12] 5447 	inc	r0
      001A4B 86 82            [24] 5448 	mov	dpl,@r0
      001A4D 08               [12] 5449 	inc	r0
      001A4E 86 83            [24] 5450 	mov	dph,@r0
      001A50 08               [12] 5451 	inc	r0
      001A51 86 F0            [24] 5452 	mov	b,@r0
      001A53 EA               [12] 5453 	mov	a,r2
      001A54 12 66 A0         [24] 5454 	lcall	__gptrput
      001A57 A3               [24] 5455 	inc	dptr
      001A58 EB               [12] 5456 	mov	a,r3
      001A59 12 66 A0         [24] 5457 	lcall	__gptrput
      001A5C A3               [24] 5458 	inc	dptr
      001A5D EC               [12] 5459 	mov	a,r4
      001A5E 12 66 A0         [24] 5460 	lcall	__gptrput
      001A61 A3               [24] 5461 	inc	dptr
      001A62 EF               [12] 5462 	mov	a,r7
      001A63 12 66 A0         [24] 5463 	lcall	__gptrput
                           0017E6  5464 	C$tasks.c$4733$1_0$356 ==.
                                   5465 ;	src/FreeRTOS/tasks.c:4733: return xReturn;
                           0017E6  5466 	C$tasks.c$4640$2_0$357 ==.
                                   5467 ;	src/FreeRTOS/tasks.c:4640: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
      001A66                       5468 00102$:
                           0017E6  5469 	C$tasks.c$4643$2_0$357 ==.
                                   5470 ;	src/FreeRTOS/tasks.c:4643: ucOriginalNotifyState = pxTCB->ucNotifyState;
      001A66 E5 0C            [12] 5471 	mov	a,_bp
      001A68 24 04            [12] 5472 	add	a,#0x04
      001A6A F8               [12] 5473 	mov	r0,a
      001A6B 74 32            [12] 5474 	mov	a,#0x32
      001A6D 26               [12] 5475 	add	a,@r0
      001A6E FD               [12] 5476 	mov	r5,a
      001A6F E4               [12] 5477 	clr	a
      001A70 08               [12] 5478 	inc	r0
      001A71 36               [12] 5479 	addc	a,@r0
      001A72 FE               [12] 5480 	mov	r6,a
      001A73 08               [12] 5481 	inc	r0
      001A74 86 07            [24] 5482 	mov	ar7,@r0
      001A76 8D 82            [24] 5483 	mov	dpl,r5
      001A78 8E 83            [24] 5484 	mov	dph,r6
      001A7A 8F F0            [24] 5485 	mov	b,r7
      001A7C 12 70 5A         [24] 5486 	lcall	__gptrget
      001A7F FC               [12] 5487 	mov	r4,a
                           001800  5488 	C$tasks.c$4645$2_0$357 ==.
                                   5489 ;	src/FreeRTOS/tasks.c:4645: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
      001A80 8D 82            [24] 5490 	mov	dpl,r5
      001A82 8E 83            [24] 5491 	mov	dph,r6
      001A84 8F F0            [24] 5492 	mov	b,r7
      001A86 74 02            [12] 5493 	mov	a,#0x02
      001A88 12 66 A0         [24] 5494 	lcall	__gptrput
                           00180B  5495 	C$tasks.c$4647$2_0$357 ==.
                                   5496 ;	src/FreeRTOS/tasks.c:4647: switch( eAction )
      001A8B E5 0C            [12] 5497 	mov	a,_bp
      001A8D 24 F9            [12] 5498 	add	a,#0xf9
      001A8F F8               [12] 5499 	mov	r0,a
      001A90 E6               [12] 5500 	mov	a,@r0
      001A91 24 FB            [12] 5501 	add	a,#0xff - 0x04
      001A93 50 03            [24] 5502 	jnc	00146$
      001A95 02 1B F5         [24] 5503 	ljmp	00112$
      001A98                       5504 00146$:
      001A98 E5 0C            [12] 5505 	mov	a,_bp
      001A9A 24 F9            [12] 5506 	add	a,#0xf9
      001A9C F8               [12] 5507 	mov	r0,a
      001A9D E6               [12] 5508 	mov	a,@r0
      001A9E 26               [12] 5509 	add	a,@r0
      001A9F 26               [12] 5510 	add	a,@r0
      001AA0 90 1A A4         [24] 5511 	mov	dptr,#00147$
      001AA3 73               [24] 5512 	jmp	@a+dptr
      001AA4                       5513 00147$:
      001AA4 02 1B F5         [24] 5514 	ljmp	00112$
      001AA7 02 1A B3         [24] 5515 	ljmp	00103$
      001AAA 02 1B 1F         [24] 5516 	ljmp	00104$
      001AAD 02 1B 83         [24] 5517 	ljmp	00105$
      001AB0 02 1B B6         [24] 5518 	ljmp	00106$
                           001833  5519 	C$tasks.c$4649$3_0$359 ==.
                                   5520 ;	src/FreeRTOS/tasks.c:4649: case eSetBits	:
      001AB3                       5521 00103$:
                           001833  5522 	C$tasks.c$4650$1_0$356 ==.
                                   5523 ;	src/FreeRTOS/tasks.c:4650: pxTCB->ulNotifiedValue |= ulValue;
      001AB3 C0 04            [24] 5524 	push	ar4
      001AB5 E5 0C            [12] 5525 	mov	a,_bp
      001AB7 24 04            [12] 5526 	add	a,#0x04
      001AB9 F8               [12] 5527 	mov	r0,a
      001ABA A9 0C            [24] 5528 	mov	r1,_bp
      001ABC 09               [12] 5529 	inc	r1
      001ABD 74 2E            [12] 5530 	mov	a,#0x2e
      001ABF 26               [12] 5531 	add	a,@r0
      001AC0 F7               [12] 5532 	mov	@r1,a
      001AC1 E4               [12] 5533 	clr	a
      001AC2 08               [12] 5534 	inc	r0
      001AC3 36               [12] 5535 	addc	a,@r0
      001AC4 09               [12] 5536 	inc	r1
      001AC5 F7               [12] 5537 	mov	@r1,a
      001AC6 08               [12] 5538 	inc	r0
      001AC7 09               [12] 5539 	inc	r1
      001AC8 E6               [12] 5540 	mov	a,@r0
      001AC9 F7               [12] 5541 	mov	@r1,a
      001ACA A8 0C            [24] 5542 	mov	r0,_bp
      001ACC 08               [12] 5543 	inc	r0
      001ACD 86 82            [24] 5544 	mov	dpl,@r0
      001ACF 08               [12] 5545 	inc	r0
      001AD0 86 83            [24] 5546 	mov	dph,@r0
      001AD2 08               [12] 5547 	inc	r0
      001AD3 86 F0            [24] 5548 	mov	b,@r0
      001AD5 12 70 5A         [24] 5549 	lcall	__gptrget
      001AD8 FA               [12] 5550 	mov	r2,a
      001AD9 A3               [24] 5551 	inc	dptr
      001ADA 12 70 5A         [24] 5552 	lcall	__gptrget
      001ADD FB               [12] 5553 	mov	r3,a
      001ADE A3               [24] 5554 	inc	dptr
      001ADF 12 70 5A         [24] 5555 	lcall	__gptrget
      001AE2 FC               [12] 5556 	mov	r4,a
      001AE3 A3               [24] 5557 	inc	dptr
      001AE4 12 70 5A         [24] 5558 	lcall	__gptrget
      001AE7 FF               [12] 5559 	mov	r7,a
      001AE8 E5 0C            [12] 5560 	mov	a,_bp
      001AEA 24 FA            [12] 5561 	add	a,#0xfa
      001AEC F8               [12] 5562 	mov	r0,a
      001AED E6               [12] 5563 	mov	a,@r0
      001AEE 42 02            [12] 5564 	orl	ar2,a
      001AF0 08               [12] 5565 	inc	r0
      001AF1 E6               [12] 5566 	mov	a,@r0
      001AF2 42 03            [12] 5567 	orl	ar3,a
      001AF4 08               [12] 5568 	inc	r0
      001AF5 E6               [12] 5569 	mov	a,@r0
      001AF6 42 04            [12] 5570 	orl	ar4,a
      001AF8 08               [12] 5571 	inc	r0
      001AF9 E6               [12] 5572 	mov	a,@r0
      001AFA 42 07            [12] 5573 	orl	ar7,a
      001AFC A8 0C            [24] 5574 	mov	r0,_bp
      001AFE 08               [12] 5575 	inc	r0
      001AFF 86 82            [24] 5576 	mov	dpl,@r0
      001B01 08               [12] 5577 	inc	r0
      001B02 86 83            [24] 5578 	mov	dph,@r0
      001B04 08               [12] 5579 	inc	r0
      001B05 86 F0            [24] 5580 	mov	b,@r0
      001B07 EA               [12] 5581 	mov	a,r2
      001B08 12 66 A0         [24] 5582 	lcall	__gptrput
      001B0B A3               [24] 5583 	inc	dptr
      001B0C EB               [12] 5584 	mov	a,r3
      001B0D 12 66 A0         [24] 5585 	lcall	__gptrput
      001B10 A3               [24] 5586 	inc	dptr
      001B11 EC               [12] 5587 	mov	a,r4
      001B12 12 66 A0         [24] 5588 	lcall	__gptrput
      001B15 A3               [24] 5589 	inc	dptr
      001B16 EF               [12] 5590 	mov	a,r7
      001B17 12 66 A0         [24] 5591 	lcall	__gptrput
                           00189A  5592 	C$tasks.c$4651$1_0$356 ==.
                                   5593 ;	src/FreeRTOS/tasks.c:4651: break;
      001B1A D0 04            [24] 5594 	pop	ar4
      001B1C 02 1B F5         [24] 5595 	ljmp	00112$
                           00189F  5596 	C$tasks.c$4653$3_0$359 ==.
                                   5597 ;	src/FreeRTOS/tasks.c:4653: case eIncrement	:
      001B1F                       5598 00104$:
                           00189F  5599 	C$tasks.c$4654$1_0$356 ==.
                                   5600 ;	src/FreeRTOS/tasks.c:4654: ( pxTCB->ulNotifiedValue )++;
      001B1F C0 04            [24] 5601 	push	ar4
      001B21 E5 0C            [12] 5602 	mov	a,_bp
      001B23 24 04            [12] 5603 	add	a,#0x04
      001B25 F8               [12] 5604 	mov	r0,a
      001B26 A9 0C            [24] 5605 	mov	r1,_bp
      001B28 09               [12] 5606 	inc	r1
      001B29 74 2E            [12] 5607 	mov	a,#0x2e
      001B2B 26               [12] 5608 	add	a,@r0
      001B2C F7               [12] 5609 	mov	@r1,a
      001B2D E4               [12] 5610 	clr	a
      001B2E 08               [12] 5611 	inc	r0
      001B2F 36               [12] 5612 	addc	a,@r0
      001B30 09               [12] 5613 	inc	r1
      001B31 F7               [12] 5614 	mov	@r1,a
      001B32 08               [12] 5615 	inc	r0
      001B33 09               [12] 5616 	inc	r1
      001B34 E6               [12] 5617 	mov	a,@r0
      001B35 F7               [12] 5618 	mov	@r1,a
      001B36 A8 0C            [24] 5619 	mov	r0,_bp
      001B38 08               [12] 5620 	inc	r0
      001B39 86 82            [24] 5621 	mov	dpl,@r0
      001B3B 08               [12] 5622 	inc	r0
      001B3C 86 83            [24] 5623 	mov	dph,@r0
      001B3E 08               [12] 5624 	inc	r0
      001B3F 86 F0            [24] 5625 	mov	b,@r0
      001B41 12 70 5A         [24] 5626 	lcall	__gptrget
      001B44 FA               [12] 5627 	mov	r2,a
      001B45 A3               [24] 5628 	inc	dptr
      001B46 12 70 5A         [24] 5629 	lcall	__gptrget
      001B49 FB               [12] 5630 	mov	r3,a
      001B4A A3               [24] 5631 	inc	dptr
      001B4B 12 70 5A         [24] 5632 	lcall	__gptrget
      001B4E FC               [12] 5633 	mov	r4,a
      001B4F A3               [24] 5634 	inc	dptr
      001B50 12 70 5A         [24] 5635 	lcall	__gptrget
      001B53 FF               [12] 5636 	mov	r7,a
      001B54 0A               [12] 5637 	inc	r2
      001B55 BA 00 09         [24] 5638 	cjne	r2,#0x00,00148$
      001B58 0B               [12] 5639 	inc	r3
      001B59 BB 00 05         [24] 5640 	cjne	r3,#0x00,00148$
      001B5C 0C               [12] 5641 	inc	r4
      001B5D BC 00 01         [24] 5642 	cjne	r4,#0x00,00148$
      001B60 0F               [12] 5643 	inc	r7
      001B61                       5644 00148$:
      001B61 A8 0C            [24] 5645 	mov	r0,_bp
      001B63 08               [12] 5646 	inc	r0
      001B64 86 82            [24] 5647 	mov	dpl,@r0
      001B66 08               [12] 5648 	inc	r0
      001B67 86 83            [24] 5649 	mov	dph,@r0
      001B69 08               [12] 5650 	inc	r0
      001B6A 86 F0            [24] 5651 	mov	b,@r0
      001B6C EA               [12] 5652 	mov	a,r2
      001B6D 12 66 A0         [24] 5653 	lcall	__gptrput
      001B70 A3               [24] 5654 	inc	dptr
      001B71 EB               [12] 5655 	mov	a,r3
      001B72 12 66 A0         [24] 5656 	lcall	__gptrput
      001B75 A3               [24] 5657 	inc	dptr
      001B76 EC               [12] 5658 	mov	a,r4
      001B77 12 66 A0         [24] 5659 	lcall	__gptrput
      001B7A A3               [24] 5660 	inc	dptr
      001B7B EF               [12] 5661 	mov	a,r7
      001B7C 12 66 A0         [24] 5662 	lcall	__gptrput
                           0018FF  5663 	C$tasks.c$4655$1_0$356 ==.
                                   5664 ;	src/FreeRTOS/tasks.c:4655: break;
      001B7F D0 04            [24] 5665 	pop	ar4
                           001901  5666 	C$tasks.c$4657$3_0$359 ==.
                                   5667 ;	src/FreeRTOS/tasks.c:4657: case eSetValueWithOverwrite	:
      001B81 80 72            [24] 5668 	sjmp	00112$
      001B83                       5669 00105$:
                           001903  5670 	C$tasks.c$4658$3_0$359 ==.
                                   5671 ;	src/FreeRTOS/tasks.c:4658: pxTCB->ulNotifiedValue = ulValue;
      001B83 E5 0C            [12] 5672 	mov	a,_bp
      001B85 24 04            [12] 5673 	add	a,#0x04
      001B87 F8               [12] 5674 	mov	r0,a
      001B88 74 2E            [12] 5675 	mov	a,#0x2e
      001B8A 26               [12] 5676 	add	a,@r0
      001B8B FD               [12] 5677 	mov	r5,a
      001B8C E4               [12] 5678 	clr	a
      001B8D 08               [12] 5679 	inc	r0
      001B8E 36               [12] 5680 	addc	a,@r0
      001B8F FE               [12] 5681 	mov	r6,a
      001B90 08               [12] 5682 	inc	r0
      001B91 86 07            [24] 5683 	mov	ar7,@r0
      001B93 8D 82            [24] 5684 	mov	dpl,r5
      001B95 8E 83            [24] 5685 	mov	dph,r6
      001B97 8F F0            [24] 5686 	mov	b,r7
      001B99 E5 0C            [12] 5687 	mov	a,_bp
      001B9B 24 FA            [12] 5688 	add	a,#0xfa
      001B9D F8               [12] 5689 	mov	r0,a
      001B9E E6               [12] 5690 	mov	a,@r0
      001B9F 12 66 A0         [24] 5691 	lcall	__gptrput
      001BA2 A3               [24] 5692 	inc	dptr
      001BA3 08               [12] 5693 	inc	r0
      001BA4 E6               [12] 5694 	mov	a,@r0
      001BA5 12 66 A0         [24] 5695 	lcall	__gptrput
      001BA8 A3               [24] 5696 	inc	dptr
      001BA9 08               [12] 5697 	inc	r0
      001BAA E6               [12] 5698 	mov	a,@r0
      001BAB 12 66 A0         [24] 5699 	lcall	__gptrput
      001BAE A3               [24] 5700 	inc	dptr
      001BAF 08               [12] 5701 	inc	r0
      001BB0 E6               [12] 5702 	mov	a,@r0
      001BB1 12 66 A0         [24] 5703 	lcall	__gptrput
                           001934  5704 	C$tasks.c$4659$3_0$359 ==.
                                   5705 ;	src/FreeRTOS/tasks.c:4659: break;
                           001934  5706 	C$tasks.c$4661$3_0$359 ==.
                                   5707 ;	src/FreeRTOS/tasks.c:4661: case eSetValueWithoutOverwrite :
      001BB4 80 3F            [24] 5708 	sjmp	00112$
      001BB6                       5709 00106$:
                           001936  5710 	C$tasks.c$4662$3_0$359 ==.
                                   5711 ;	src/FreeRTOS/tasks.c:4662: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
      001BB6 BC 02 02         [24] 5712 	cjne	r4,#0x02,00149$
      001BB9 80 33            [24] 5713 	sjmp	00108$
      001BBB                       5714 00149$:
                           00193B  5715 	C$tasks.c$4664$4_0$360 ==.
                                   5716 ;	src/FreeRTOS/tasks.c:4664: pxTCB->ulNotifiedValue = ulValue;
      001BBB E5 0C            [12] 5717 	mov	a,_bp
      001BBD 24 04            [12] 5718 	add	a,#0x04
      001BBF F8               [12] 5719 	mov	r0,a
      001BC0 74 2E            [12] 5720 	mov	a,#0x2e
      001BC2 26               [12] 5721 	add	a,@r0
      001BC3 FD               [12] 5722 	mov	r5,a
      001BC4 E4               [12] 5723 	clr	a
      001BC5 08               [12] 5724 	inc	r0
      001BC6 36               [12] 5725 	addc	a,@r0
      001BC7 FE               [12] 5726 	mov	r6,a
      001BC8 08               [12] 5727 	inc	r0
      001BC9 86 07            [24] 5728 	mov	ar7,@r0
      001BCB 8D 82            [24] 5729 	mov	dpl,r5
      001BCD 8E 83            [24] 5730 	mov	dph,r6
      001BCF 8F F0            [24] 5731 	mov	b,r7
      001BD1 E5 0C            [12] 5732 	mov	a,_bp
      001BD3 24 FA            [12] 5733 	add	a,#0xfa
      001BD5 F8               [12] 5734 	mov	r0,a
      001BD6 E6               [12] 5735 	mov	a,@r0
      001BD7 12 66 A0         [24] 5736 	lcall	__gptrput
      001BDA A3               [24] 5737 	inc	dptr
      001BDB 08               [12] 5738 	inc	r0
      001BDC E6               [12] 5739 	mov	a,@r0
      001BDD 12 66 A0         [24] 5740 	lcall	__gptrput
      001BE0 A3               [24] 5741 	inc	dptr
      001BE1 08               [12] 5742 	inc	r0
      001BE2 E6               [12] 5743 	mov	a,@r0
      001BE3 12 66 A0         [24] 5744 	lcall	__gptrput
      001BE6 A3               [24] 5745 	inc	dptr
      001BE7 08               [12] 5746 	inc	r0
      001BE8 E6               [12] 5747 	mov	a,@r0
      001BE9 12 66 A0         [24] 5748 	lcall	__gptrput
      001BEC 80 07            [24] 5749 	sjmp	00112$
      001BEE                       5750 00108$:
                           00196E  5751 	C$tasks.c$4669$4_0$361 ==.
                                   5752 ;	src/FreeRTOS/tasks.c:4669: xReturn = pdFAIL;
      001BEE E5 0C            [12] 5753 	mov	a,_bp
      001BF0 24 07            [12] 5754 	add	a,#0x07
      001BF2 F8               [12] 5755 	mov	r0,a
      001BF3 76 00            [12] 5756 	mov	@r0,#0x00
                           001975  5757 	C$tasks.c$4685$2_0$357 ==.
                                   5758 ;	src/FreeRTOS/tasks.c:4685: }
      001BF5                       5759 00112$:
                           001975  5760 	C$tasks.c$4691$2_0$357 ==.
                                   5761 ;	src/FreeRTOS/tasks.c:4691: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      001BF5 BC 01 02         [24] 5762 	cjne	r4,#0x01,00150$
      001BF8 80 03            [24] 5763 	sjmp	00151$
      001BFA                       5764 00150$:
      001BFA 02 1C BF         [24] 5765 	ljmp	00118$
      001BFD                       5766 00151$:
                           00197D  5767 	C$tasks.c$4693$3_0$362 ==.
                                   5768 ;	src/FreeRTOS/tasks.c:4693: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      001BFD E5 0C            [12] 5769 	mov	a,_bp
      001BFF 24 04            [12] 5770 	add	a,#0x04
      001C01 F8               [12] 5771 	mov	r0,a
      001C02 74 03            [12] 5772 	mov	a,#0x03
      001C04 26               [12] 5773 	add	a,@r0
      001C05 FD               [12] 5774 	mov	r5,a
      001C06 E4               [12] 5775 	clr	a
      001C07 08               [12] 5776 	inc	r0
      001C08 36               [12] 5777 	addc	a,@r0
      001C09 FE               [12] 5778 	mov	r6,a
      001C0A 08               [12] 5779 	inc	r0
      001C0B 86 07            [24] 5780 	mov	ar7,@r0
      001C0D 8D 82            [24] 5781 	mov	dpl,r5
      001C0F 8E 83            [24] 5782 	mov	dph,r6
      001C11 8F F0            [24] 5783 	mov	b,r7
      001C13 12 30 3B         [24] 5784 	lcall	_uxListRemove
                           001996  5785 	C$tasks.c$4694$4_0$363 ==.
                                   5786 ;	src/FreeRTOS/tasks.c:4694: prvAddTaskToReadyList( pxTCB );
      001C16 E5 0C            [12] 5787 	mov	a,_bp
      001C18 24 04            [12] 5788 	add	a,#0x04
      001C1A F8               [12] 5789 	mov	r0,a
      001C1B 74 1F            [12] 5790 	mov	a,#0x1f
      001C1D 26               [12] 5791 	add	a,@r0
      001C1E FD               [12] 5792 	mov	r5,a
      001C1F E4               [12] 5793 	clr	a
      001C20 08               [12] 5794 	inc	r0
      001C21 36               [12] 5795 	addc	a,@r0
      001C22 FE               [12] 5796 	mov	r6,a
      001C23 08               [12] 5797 	inc	r0
      001C24 86 07            [24] 5798 	mov	ar7,@r0
      001C26 8D 82            [24] 5799 	mov	dpl,r5
      001C28 8E 83            [24] 5800 	mov	dph,r6
      001C2A 8F F0            [24] 5801 	mov	b,r7
      001C2C 12 70 5A         [24] 5802 	lcall	__gptrget
      001C2F FC               [12] 5803 	mov	r4,a
      001C30 90 00 69         [24] 5804 	mov	dptr,#_uxTopReadyPriority
      001C33 E0               [24] 5805 	movx	a,@dptr
      001C34 C3               [12] 5806 	clr	c
      001C35 9C               [12] 5807 	subb	a,r4
      001C36 50 05            [24] 5808 	jnc	00114$
      001C38 90 00 69         [24] 5809 	mov	dptr,#_uxTopReadyPriority
      001C3B EC               [12] 5810 	mov	a,r4
      001C3C F0               [24] 5811 	movx	@dptr,a
      001C3D                       5812 00114$:
      001C3D E5 0C            [12] 5813 	mov	a,_bp
      001C3F 24 04            [12] 5814 	add	a,#0x04
      001C41 F8               [12] 5815 	mov	r0,a
      001C42 A9 0C            [24] 5816 	mov	r1,_bp
      001C44 09               [12] 5817 	inc	r1
      001C45 74 03            [12] 5818 	mov	a,#0x03
      001C47 26               [12] 5819 	add	a,@r0
      001C48 F7               [12] 5820 	mov	@r1,a
      001C49 E4               [12] 5821 	clr	a
      001C4A 08               [12] 5822 	inc	r0
      001C4B 36               [12] 5823 	addc	a,@r0
      001C4C 09               [12] 5824 	inc	r1
      001C4D F7               [12] 5825 	mov	@r1,a
      001C4E 08               [12] 5826 	inc	r0
      001C4F 09               [12] 5827 	inc	r1
      001C50 E6               [12] 5828 	mov	a,@r0
      001C51 F7               [12] 5829 	mov	@r1,a
      001C52 8D 82            [24] 5830 	mov	dpl,r5
      001C54 8E 83            [24] 5831 	mov	dph,r6
      001C56 8F F0            [24] 5832 	mov	b,r7
      001C58 12 70 5A         [24] 5833 	lcall	__gptrget
      001C5B 75 F0 0C         [24] 5834 	mov	b,#0x0c
      001C5E A4               [48] 5835 	mul	ab
      001C5F 24 0C            [12] 5836 	add	a,#_pxReadyTasksLists
      001C61 FB               [12] 5837 	mov	r3,a
      001C62 74 00            [12] 5838 	mov	a,#(_pxReadyTasksLists >> 8)
      001C64 35 F0            [12] 5839 	addc	a,b
      001C66 FC               [12] 5840 	mov	r4,a
      001C67 7A 00            [12] 5841 	mov	r2,#0x00
      001C69 C0 07            [24] 5842 	push	ar7
      001C6B C0 06            [24] 5843 	push	ar6
      001C6D C0 05            [24] 5844 	push	ar5
      001C6F A8 0C            [24] 5845 	mov	r0,_bp
      001C71 08               [12] 5846 	inc	r0
      001C72 E6               [12] 5847 	mov	a,@r0
      001C73 C0 E0            [24] 5848 	push	acc
      001C75 08               [12] 5849 	inc	r0
      001C76 E6               [12] 5850 	mov	a,@r0
      001C77 C0 E0            [24] 5851 	push	acc
      001C79 08               [12] 5852 	inc	r0
      001C7A E6               [12] 5853 	mov	a,@r0
      001C7B C0 E0            [24] 5854 	push	acc
      001C7D 8B 82            [24] 5855 	mov	dpl,r3
      001C7F 8C 83            [24] 5856 	mov	dph,r4
      001C81 8A F0            [24] 5857 	mov	b,r2
      001C83 12 2C DF         [24] 5858 	lcall	_vListInsertEnd
      001C86 15 81            [12] 5859 	dec	sp
      001C88 15 81            [12] 5860 	dec	sp
      001C8A 15 81            [12] 5861 	dec	sp
      001C8C D0 05            [24] 5862 	pop	ar5
      001C8E D0 06            [24] 5863 	pop	ar6
      001C90 D0 07            [24] 5864 	pop	ar7
                           001A12  5865 	C$tasks.c$4715$3_0$362 ==.
                                   5866 ;	src/FreeRTOS/tasks.c:4715: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      001C92 8D 82            [24] 5867 	mov	dpl,r5
      001C94 8E 83            [24] 5868 	mov	dph,r6
      001C96 8F F0            [24] 5869 	mov	b,r7
      001C98 12 70 5A         [24] 5870 	lcall	__gptrget
      001C9B FD               [12] 5871 	mov	r5,a
      001C9C 90 00 09         [24] 5872 	mov	dptr,#_pxCurrentTCB
      001C9F E0               [24] 5873 	movx	a,@dptr
      001CA0 FC               [12] 5874 	mov	r4,a
      001CA1 A3               [24] 5875 	inc	dptr
      001CA2 E0               [24] 5876 	movx	a,@dptr
      001CA3 FE               [12] 5877 	mov	r6,a
      001CA4 A3               [24] 5878 	inc	dptr
      001CA5 E0               [24] 5879 	movx	a,@dptr
      001CA6 FF               [12] 5880 	mov	r7,a
      001CA7 74 1F            [12] 5881 	mov	a,#0x1f
      001CA9 2C               [12] 5882 	add	a,r4
      001CAA FC               [12] 5883 	mov	r4,a
      001CAB E4               [12] 5884 	clr	a
      001CAC 3E               [12] 5885 	addc	a,r6
      001CAD FE               [12] 5886 	mov	r6,a
      001CAE 8C 82            [24] 5887 	mov	dpl,r4
      001CB0 8E 83            [24] 5888 	mov	dph,r6
      001CB2 8F F0            [24] 5889 	mov	b,r7
      001CB4 12 70 5A         [24] 5890 	lcall	__gptrget
      001CB7 FC               [12] 5891 	mov	r4,a
      001CB8 C3               [12] 5892 	clr	c
      001CB9 9D               [12] 5893 	subb	a,r5
      001CBA 50 03            [24] 5894 	jnc	00118$
                           001A3C  5895 	C$tasks.c$4719$4_0$365 ==.
                                   5896 ;	src/FreeRTOS/tasks.c:4719: taskYIELD_IF_USING_PREEMPTION();
      001CBC 12 64 B5         [24] 5897 	lcall	_vPortYield
      001CBF                       5898 00118$:
                           001A3F  5899 	C$tasks.c$4731$1_0$356 ==.
                                   5900 ;	src/FreeRTOS/tasks.c:4731: taskEXIT_CRITICAL();
      001CBF D0 E0            [24] 5901 	pop ACC 
      001CC1 53 E0 80         [24] 5902 	anl	_ACC,#0x80
      001CC4 E5 E0            [12] 5903 	mov	a,_ACC
      001CC6 42 A8            [12] 5904 	orl	_IE,a
      001CC8 D0 E0            [24] 5905 	pop ACC 
                           001A4A  5906 	C$tasks.c$4733$1_0$356 ==.
                                   5907 ;	src/FreeRTOS/tasks.c:4733: return xReturn;
      001CCA E5 0C            [12] 5908 	mov	a,_bp
      001CCC 24 07            [12] 5909 	add	a,#0x07
      001CCE F8               [12] 5910 	mov	r0,a
      001CCF 86 82            [24] 5911 	mov	dpl,@r0
                           001A51  5912 	C$tasks.c$4734$1_0$356 ==.
                                   5913 ;	src/FreeRTOS/tasks.c:4734: }
      001CD1 85 0C 81         [24] 5914 	mov	sp,_bp
      001CD4 D0 0C            [24] 5915 	pop	_bp
                           001A56  5916 	C$tasks.c$4734$1_0$356 ==.
                           001A56  5917 	XG$xTaskGenericNotify$0$0 ==.
      001CD6 22               [24] 5918 	ret
                                   5919 ;------------------------------------------------------------
                                   5920 ;Allocation info for local variables in function 'xTaskGenericNotifyFromISR'
                                   5921 ;------------------------------------------------------------
                                   5922 ;ulValue                   Allocated to stack - _bp -6
                                   5923 ;eAction                   Allocated to stack - _bp -7
                                   5924 ;pulPreviousNotificationValue Allocated to stack - _bp -10
                                   5925 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -13
                                   5926 ;xTaskToNotify             Allocated to registers r7 r6 r5 
                                   5927 ;pxTCB                     Allocated to stack - _bp +4
                                   5928 ;ucOriginalNotifyState     Allocated to registers r4 
                                   5929 ;xReturn                   Allocated to stack - _bp +7
                                   5930 ;uxSavedInterruptStatus    Allocated to registers 
                                   5931 ;sloc0                     Allocated to stack - _bp +1
                                   5932 ;------------------------------------------------------------
                           001A57  5933 	G$xTaskGenericNotifyFromISR$0$0 ==.
                           001A57  5934 	C$tasks.c$4741$1_0$369 ==.
                                   5935 ;	src/FreeRTOS/tasks.c:4741: BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken )
                                   5936 ;	-----------------------------------------
                                   5937 ;	 function xTaskGenericNotifyFromISR
                                   5938 ;	-----------------------------------------
      001CD7                       5939 _xTaskGenericNotifyFromISR:
      001CD7 C0 0C            [24] 5940 	push	_bp
      001CD9 E5 81            [12] 5941 	mov	a,sp
      001CDB F5 0C            [12] 5942 	mov	_bp,a
      001CDD 24 07            [12] 5943 	add	a,#0x07
      001CDF F5 81            [12] 5944 	mov	sp,a
      001CE1 AF 82            [24] 5945 	mov	r7,dpl
      001CE3 AE 83            [24] 5946 	mov	r6,dph
      001CE5 AD F0            [24] 5947 	mov	r5,b
                           001A67  5948 	C$tasks.c$4745$2_0$369 ==.
                                   5949 ;	src/FreeRTOS/tasks.c:4745: BaseType_t xReturn = pdPASS;
      001CE7 E5 0C            [12] 5950 	mov	a,_bp
      001CE9 24 07            [12] 5951 	add	a,#0x07
      001CEB F8               [12] 5952 	mov	r0,a
      001CEC 76 01            [12] 5953 	mov	@r0,#0x01
                           001A6E  5954 	C$tasks.c$4768$1_0$369 ==.
                                   5955 ;	src/FreeRTOS/tasks.c:4768: pxTCB = xTaskToNotify;
      001CEE E5 0C            [12] 5956 	mov	a,_bp
      001CF0 24 04            [12] 5957 	add	a,#0x04
      001CF2 F8               [12] 5958 	mov	r0,a
      001CF3 A6 07            [24] 5959 	mov	@r0,ar7
      001CF5 08               [12] 5960 	inc	r0
      001CF6 A6 06            [24] 5961 	mov	@r0,ar6
      001CF8 08               [12] 5962 	inc	r0
      001CF9 A6 05            [24] 5963 	mov	@r0,ar5
                           001A7B  5964 	C$tasks.c$4772$2_0$370 ==.
                                   5965 ;	src/FreeRTOS/tasks.c:4772: if( pulPreviousNotificationValue != NULL )
      001CFB E5 0C            [12] 5966 	mov	a,_bp
      001CFD 24 F6            [12] 5967 	add	a,#0xf6
      001CFF F8               [12] 5968 	mov	r0,a
      001D00 E6               [12] 5969 	mov	a,@r0
      001D01 08               [12] 5970 	inc	r0
      001D02 46               [12] 5971 	orl	a,@r0
      001D03 60 52            [24] 5972 	jz	00102$
                           001A85  5973 	C$tasks.c$4774$1_0$369 ==.
                                   5974 ;	src/FreeRTOS/tasks.c:4774: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
      001D05 E5 0C            [12] 5975 	mov	a,_bp
      001D07 24 F6            [12] 5976 	add	a,#0xf6
      001D09 F8               [12] 5977 	mov	r0,a
      001D0A A9 0C            [24] 5978 	mov	r1,_bp
      001D0C 09               [12] 5979 	inc	r1
      001D0D E6               [12] 5980 	mov	a,@r0
      001D0E F7               [12] 5981 	mov	@r1,a
      001D0F 08               [12] 5982 	inc	r0
      001D10 09               [12] 5983 	inc	r1
      001D11 E6               [12] 5984 	mov	a,@r0
      001D12 F7               [12] 5985 	mov	@r1,a
      001D13 08               [12] 5986 	inc	r0
      001D14 09               [12] 5987 	inc	r1
      001D15 E6               [12] 5988 	mov	a,@r0
      001D16 F7               [12] 5989 	mov	@r1,a
      001D17 74 2E            [12] 5990 	mov	a,#0x2e
      001D19 2F               [12] 5991 	add	a,r7
      001D1A FA               [12] 5992 	mov	r2,a
      001D1B E4               [12] 5993 	clr	a
      001D1C 3E               [12] 5994 	addc	a,r6
      001D1D FB               [12] 5995 	mov	r3,a
      001D1E 8D 04            [24] 5996 	mov	ar4,r5
      001D20 8A 82            [24] 5997 	mov	dpl,r2
      001D22 8B 83            [24] 5998 	mov	dph,r3
      001D24 8C F0            [24] 5999 	mov	b,r4
      001D26 12 70 5A         [24] 6000 	lcall	__gptrget
      001D29 FA               [12] 6001 	mov	r2,a
      001D2A A3               [24] 6002 	inc	dptr
      001D2B 12 70 5A         [24] 6003 	lcall	__gptrget
      001D2E FB               [12] 6004 	mov	r3,a
      001D2F A3               [24] 6005 	inc	dptr
      001D30 12 70 5A         [24] 6006 	lcall	__gptrget
      001D33 FC               [12] 6007 	mov	r4,a
      001D34 A3               [24] 6008 	inc	dptr
      001D35 12 70 5A         [24] 6009 	lcall	__gptrget
      001D38 FF               [12] 6010 	mov	r7,a
      001D39 A8 0C            [24] 6011 	mov	r0,_bp
      001D3B 08               [12] 6012 	inc	r0
      001D3C 86 82            [24] 6013 	mov	dpl,@r0
      001D3E 08               [12] 6014 	inc	r0
      001D3F 86 83            [24] 6015 	mov	dph,@r0
      001D41 08               [12] 6016 	inc	r0
      001D42 86 F0            [24] 6017 	mov	b,@r0
      001D44 EA               [12] 6018 	mov	a,r2
      001D45 12 66 A0         [24] 6019 	lcall	__gptrput
      001D48 A3               [24] 6020 	inc	dptr
      001D49 EB               [12] 6021 	mov	a,r3
      001D4A 12 66 A0         [24] 6022 	lcall	__gptrput
      001D4D A3               [24] 6023 	inc	dptr
      001D4E EC               [12] 6024 	mov	a,r4
      001D4F 12 66 A0         [24] 6025 	lcall	__gptrput
      001D52 A3               [24] 6026 	inc	dptr
      001D53 EF               [12] 6027 	mov	a,r7
      001D54 12 66 A0         [24] 6028 	lcall	__gptrput
                           001AD7  6029 	C$tasks.c$4862$1_0$369 ==.
                                   6030 ;	src/FreeRTOS/tasks.c:4862: return xReturn;
                           001AD7  6031 	C$tasks.c$4774$2_0$370 ==.
                                   6032 ;	src/FreeRTOS/tasks.c:4774: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
      001D57                       6033 00102$:
                           001AD7  6034 	C$tasks.c$4777$2_0$370 ==.
                                   6035 ;	src/FreeRTOS/tasks.c:4777: ucOriginalNotifyState = pxTCB->ucNotifyState;
      001D57 E5 0C            [12] 6036 	mov	a,_bp
      001D59 24 04            [12] 6037 	add	a,#0x04
      001D5B F8               [12] 6038 	mov	r0,a
      001D5C 74 32            [12] 6039 	mov	a,#0x32
      001D5E 26               [12] 6040 	add	a,@r0
      001D5F FD               [12] 6041 	mov	r5,a
      001D60 E4               [12] 6042 	clr	a
      001D61 08               [12] 6043 	inc	r0
      001D62 36               [12] 6044 	addc	a,@r0
      001D63 FE               [12] 6045 	mov	r6,a
      001D64 08               [12] 6046 	inc	r0
      001D65 86 07            [24] 6047 	mov	ar7,@r0
      001D67 8D 82            [24] 6048 	mov	dpl,r5
      001D69 8E 83            [24] 6049 	mov	dph,r6
      001D6B 8F F0            [24] 6050 	mov	b,r7
      001D6D 12 70 5A         [24] 6051 	lcall	__gptrget
      001D70 FC               [12] 6052 	mov	r4,a
                           001AF1  6053 	C$tasks.c$4778$2_0$370 ==.
                                   6054 ;	src/FreeRTOS/tasks.c:4778: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
      001D71 8D 82            [24] 6055 	mov	dpl,r5
      001D73 8E 83            [24] 6056 	mov	dph,r6
      001D75 8F F0            [24] 6057 	mov	b,r7
      001D77 74 02            [12] 6058 	mov	a,#0x02
      001D79 12 66 A0         [24] 6059 	lcall	__gptrput
                           001AFC  6060 	C$tasks.c$4780$2_0$370 ==.
                                   6061 ;	src/FreeRTOS/tasks.c:4780: switch( eAction )
      001D7C E5 0C            [12] 6062 	mov	a,_bp
      001D7E 24 F9            [12] 6063 	add	a,#0xf9
      001D80 F8               [12] 6064 	mov	r0,a
      001D81 E6               [12] 6065 	mov	a,@r0
      001D82 24 FB            [12] 6066 	add	a,#0xff - 0x04
      001D84 50 03            [24] 6067 	jnc	00159$
      001D86 02 1E E6         [24] 6068 	ljmp	00112$
      001D89                       6069 00159$:
      001D89 E5 0C            [12] 6070 	mov	a,_bp
      001D8B 24 F9            [12] 6071 	add	a,#0xf9
      001D8D F8               [12] 6072 	mov	r0,a
      001D8E E6               [12] 6073 	mov	a,@r0
      001D8F 26               [12] 6074 	add	a,@r0
      001D90 26               [12] 6075 	add	a,@r0
      001D91 90 1D 95         [24] 6076 	mov	dptr,#00160$
      001D94 73               [24] 6077 	jmp	@a+dptr
      001D95                       6078 00160$:
      001D95 02 1E E6         [24] 6079 	ljmp	00112$
      001D98 02 1D A4         [24] 6080 	ljmp	00103$
      001D9B 02 1E 10         [24] 6081 	ljmp	00104$
      001D9E 02 1E 74         [24] 6082 	ljmp	00105$
      001DA1 02 1E A7         [24] 6083 	ljmp	00106$
                           001B24  6084 	C$tasks.c$4782$3_0$372 ==.
                                   6085 ;	src/FreeRTOS/tasks.c:4782: case eSetBits	:
      001DA4                       6086 00103$:
                           001B24  6087 	C$tasks.c$4783$1_0$369 ==.
                                   6088 ;	src/FreeRTOS/tasks.c:4783: pxTCB->ulNotifiedValue |= ulValue;
      001DA4 C0 04            [24] 6089 	push	ar4
      001DA6 E5 0C            [12] 6090 	mov	a,_bp
      001DA8 24 04            [12] 6091 	add	a,#0x04
      001DAA F8               [12] 6092 	mov	r0,a
      001DAB A9 0C            [24] 6093 	mov	r1,_bp
      001DAD 09               [12] 6094 	inc	r1
      001DAE 74 2E            [12] 6095 	mov	a,#0x2e
      001DB0 26               [12] 6096 	add	a,@r0
      001DB1 F7               [12] 6097 	mov	@r1,a
      001DB2 E4               [12] 6098 	clr	a
      001DB3 08               [12] 6099 	inc	r0
      001DB4 36               [12] 6100 	addc	a,@r0
      001DB5 09               [12] 6101 	inc	r1
      001DB6 F7               [12] 6102 	mov	@r1,a
      001DB7 08               [12] 6103 	inc	r0
      001DB8 09               [12] 6104 	inc	r1
      001DB9 E6               [12] 6105 	mov	a,@r0
      001DBA F7               [12] 6106 	mov	@r1,a
      001DBB A8 0C            [24] 6107 	mov	r0,_bp
      001DBD 08               [12] 6108 	inc	r0
      001DBE 86 82            [24] 6109 	mov	dpl,@r0
      001DC0 08               [12] 6110 	inc	r0
      001DC1 86 83            [24] 6111 	mov	dph,@r0
      001DC3 08               [12] 6112 	inc	r0
      001DC4 86 F0            [24] 6113 	mov	b,@r0
      001DC6 12 70 5A         [24] 6114 	lcall	__gptrget
      001DC9 FA               [12] 6115 	mov	r2,a
      001DCA A3               [24] 6116 	inc	dptr
      001DCB 12 70 5A         [24] 6117 	lcall	__gptrget
      001DCE FB               [12] 6118 	mov	r3,a
      001DCF A3               [24] 6119 	inc	dptr
      001DD0 12 70 5A         [24] 6120 	lcall	__gptrget
      001DD3 FC               [12] 6121 	mov	r4,a
      001DD4 A3               [24] 6122 	inc	dptr
      001DD5 12 70 5A         [24] 6123 	lcall	__gptrget
      001DD8 FF               [12] 6124 	mov	r7,a
      001DD9 E5 0C            [12] 6125 	mov	a,_bp
      001DDB 24 FA            [12] 6126 	add	a,#0xfa
      001DDD F8               [12] 6127 	mov	r0,a
      001DDE E6               [12] 6128 	mov	a,@r0
      001DDF 42 02            [12] 6129 	orl	ar2,a
      001DE1 08               [12] 6130 	inc	r0
      001DE2 E6               [12] 6131 	mov	a,@r0
      001DE3 42 03            [12] 6132 	orl	ar3,a
      001DE5 08               [12] 6133 	inc	r0
      001DE6 E6               [12] 6134 	mov	a,@r0
      001DE7 42 04            [12] 6135 	orl	ar4,a
      001DE9 08               [12] 6136 	inc	r0
      001DEA E6               [12] 6137 	mov	a,@r0
      001DEB 42 07            [12] 6138 	orl	ar7,a
      001DED A8 0C            [24] 6139 	mov	r0,_bp
      001DEF 08               [12] 6140 	inc	r0
      001DF0 86 82            [24] 6141 	mov	dpl,@r0
      001DF2 08               [12] 6142 	inc	r0
      001DF3 86 83            [24] 6143 	mov	dph,@r0
      001DF5 08               [12] 6144 	inc	r0
      001DF6 86 F0            [24] 6145 	mov	b,@r0
      001DF8 EA               [12] 6146 	mov	a,r2
      001DF9 12 66 A0         [24] 6147 	lcall	__gptrput
      001DFC A3               [24] 6148 	inc	dptr
      001DFD EB               [12] 6149 	mov	a,r3
      001DFE 12 66 A0         [24] 6150 	lcall	__gptrput
      001E01 A3               [24] 6151 	inc	dptr
      001E02 EC               [12] 6152 	mov	a,r4
      001E03 12 66 A0         [24] 6153 	lcall	__gptrput
      001E06 A3               [24] 6154 	inc	dptr
      001E07 EF               [12] 6155 	mov	a,r7
      001E08 12 66 A0         [24] 6156 	lcall	__gptrput
                           001B8B  6157 	C$tasks.c$4784$1_0$369 ==.
                                   6158 ;	src/FreeRTOS/tasks.c:4784: break;
      001E0B D0 04            [24] 6159 	pop	ar4
      001E0D 02 1E E6         [24] 6160 	ljmp	00112$
                           001B90  6161 	C$tasks.c$4786$3_0$372 ==.
                                   6162 ;	src/FreeRTOS/tasks.c:4786: case eIncrement	:
      001E10                       6163 00104$:
                           001B90  6164 	C$tasks.c$4787$1_0$369 ==.
                                   6165 ;	src/FreeRTOS/tasks.c:4787: ( pxTCB->ulNotifiedValue )++;
      001E10 C0 04            [24] 6166 	push	ar4
      001E12 E5 0C            [12] 6167 	mov	a,_bp
      001E14 24 04            [12] 6168 	add	a,#0x04
      001E16 F8               [12] 6169 	mov	r0,a
      001E17 A9 0C            [24] 6170 	mov	r1,_bp
      001E19 09               [12] 6171 	inc	r1
      001E1A 74 2E            [12] 6172 	mov	a,#0x2e
      001E1C 26               [12] 6173 	add	a,@r0
      001E1D F7               [12] 6174 	mov	@r1,a
      001E1E E4               [12] 6175 	clr	a
      001E1F 08               [12] 6176 	inc	r0
      001E20 36               [12] 6177 	addc	a,@r0
      001E21 09               [12] 6178 	inc	r1
      001E22 F7               [12] 6179 	mov	@r1,a
      001E23 08               [12] 6180 	inc	r0
      001E24 09               [12] 6181 	inc	r1
      001E25 E6               [12] 6182 	mov	a,@r0
      001E26 F7               [12] 6183 	mov	@r1,a
      001E27 A8 0C            [24] 6184 	mov	r0,_bp
      001E29 08               [12] 6185 	inc	r0
      001E2A 86 82            [24] 6186 	mov	dpl,@r0
      001E2C 08               [12] 6187 	inc	r0
      001E2D 86 83            [24] 6188 	mov	dph,@r0
      001E2F 08               [12] 6189 	inc	r0
      001E30 86 F0            [24] 6190 	mov	b,@r0
      001E32 12 70 5A         [24] 6191 	lcall	__gptrget
      001E35 FA               [12] 6192 	mov	r2,a
      001E36 A3               [24] 6193 	inc	dptr
      001E37 12 70 5A         [24] 6194 	lcall	__gptrget
      001E3A FB               [12] 6195 	mov	r3,a
      001E3B A3               [24] 6196 	inc	dptr
      001E3C 12 70 5A         [24] 6197 	lcall	__gptrget
      001E3F FC               [12] 6198 	mov	r4,a
      001E40 A3               [24] 6199 	inc	dptr
      001E41 12 70 5A         [24] 6200 	lcall	__gptrget
      001E44 FF               [12] 6201 	mov	r7,a
      001E45 0A               [12] 6202 	inc	r2
      001E46 BA 00 09         [24] 6203 	cjne	r2,#0x00,00161$
      001E49 0B               [12] 6204 	inc	r3
      001E4A BB 00 05         [24] 6205 	cjne	r3,#0x00,00161$
      001E4D 0C               [12] 6206 	inc	r4
      001E4E BC 00 01         [24] 6207 	cjne	r4,#0x00,00161$
      001E51 0F               [12] 6208 	inc	r7
      001E52                       6209 00161$:
      001E52 A8 0C            [24] 6210 	mov	r0,_bp
      001E54 08               [12] 6211 	inc	r0
      001E55 86 82            [24] 6212 	mov	dpl,@r0
      001E57 08               [12] 6213 	inc	r0
      001E58 86 83            [24] 6214 	mov	dph,@r0
      001E5A 08               [12] 6215 	inc	r0
      001E5B 86 F0            [24] 6216 	mov	b,@r0
      001E5D EA               [12] 6217 	mov	a,r2
      001E5E 12 66 A0         [24] 6218 	lcall	__gptrput
      001E61 A3               [24] 6219 	inc	dptr
      001E62 EB               [12] 6220 	mov	a,r3
      001E63 12 66 A0         [24] 6221 	lcall	__gptrput
      001E66 A3               [24] 6222 	inc	dptr
      001E67 EC               [12] 6223 	mov	a,r4
      001E68 12 66 A0         [24] 6224 	lcall	__gptrput
      001E6B A3               [24] 6225 	inc	dptr
      001E6C EF               [12] 6226 	mov	a,r7
      001E6D 12 66 A0         [24] 6227 	lcall	__gptrput
                           001BF0  6228 	C$tasks.c$4788$1_0$369 ==.
                                   6229 ;	src/FreeRTOS/tasks.c:4788: break;
      001E70 D0 04            [24] 6230 	pop	ar4
                           001BF2  6231 	C$tasks.c$4790$3_0$372 ==.
                                   6232 ;	src/FreeRTOS/tasks.c:4790: case eSetValueWithOverwrite	:
      001E72 80 72            [24] 6233 	sjmp	00112$
      001E74                       6234 00105$:
                           001BF4  6235 	C$tasks.c$4791$3_0$372 ==.
                                   6236 ;	src/FreeRTOS/tasks.c:4791: pxTCB->ulNotifiedValue = ulValue;
      001E74 E5 0C            [12] 6237 	mov	a,_bp
      001E76 24 04            [12] 6238 	add	a,#0x04
      001E78 F8               [12] 6239 	mov	r0,a
      001E79 74 2E            [12] 6240 	mov	a,#0x2e
      001E7B 26               [12] 6241 	add	a,@r0
      001E7C FD               [12] 6242 	mov	r5,a
      001E7D E4               [12] 6243 	clr	a
      001E7E 08               [12] 6244 	inc	r0
      001E7F 36               [12] 6245 	addc	a,@r0
      001E80 FE               [12] 6246 	mov	r6,a
      001E81 08               [12] 6247 	inc	r0
      001E82 86 07            [24] 6248 	mov	ar7,@r0
      001E84 8D 82            [24] 6249 	mov	dpl,r5
      001E86 8E 83            [24] 6250 	mov	dph,r6
      001E88 8F F0            [24] 6251 	mov	b,r7
      001E8A E5 0C            [12] 6252 	mov	a,_bp
      001E8C 24 FA            [12] 6253 	add	a,#0xfa
      001E8E F8               [12] 6254 	mov	r0,a
      001E8F E6               [12] 6255 	mov	a,@r0
      001E90 12 66 A0         [24] 6256 	lcall	__gptrput
      001E93 A3               [24] 6257 	inc	dptr
      001E94 08               [12] 6258 	inc	r0
      001E95 E6               [12] 6259 	mov	a,@r0
      001E96 12 66 A0         [24] 6260 	lcall	__gptrput
      001E99 A3               [24] 6261 	inc	dptr
      001E9A 08               [12] 6262 	inc	r0
      001E9B E6               [12] 6263 	mov	a,@r0
      001E9C 12 66 A0         [24] 6264 	lcall	__gptrput
      001E9F A3               [24] 6265 	inc	dptr
      001EA0 08               [12] 6266 	inc	r0
      001EA1 E6               [12] 6267 	mov	a,@r0
      001EA2 12 66 A0         [24] 6268 	lcall	__gptrput
                           001C25  6269 	C$tasks.c$4792$3_0$372 ==.
                                   6270 ;	src/FreeRTOS/tasks.c:4792: break;
                           001C25  6271 	C$tasks.c$4794$3_0$372 ==.
                                   6272 ;	src/FreeRTOS/tasks.c:4794: case eSetValueWithoutOverwrite :
      001EA5 80 3F            [24] 6273 	sjmp	00112$
      001EA7                       6274 00106$:
                           001C27  6275 	C$tasks.c$4795$3_0$372 ==.
                                   6276 ;	src/FreeRTOS/tasks.c:4795: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
      001EA7 BC 02 02         [24] 6277 	cjne	r4,#0x02,00162$
      001EAA 80 33            [24] 6278 	sjmp	00108$
      001EAC                       6279 00162$:
                           001C2C  6280 	C$tasks.c$4797$4_0$373 ==.
                                   6281 ;	src/FreeRTOS/tasks.c:4797: pxTCB->ulNotifiedValue = ulValue;
      001EAC E5 0C            [12] 6282 	mov	a,_bp
      001EAE 24 04            [12] 6283 	add	a,#0x04
      001EB0 F8               [12] 6284 	mov	r0,a
      001EB1 74 2E            [12] 6285 	mov	a,#0x2e
      001EB3 26               [12] 6286 	add	a,@r0
      001EB4 FD               [12] 6287 	mov	r5,a
      001EB5 E4               [12] 6288 	clr	a
      001EB6 08               [12] 6289 	inc	r0
      001EB7 36               [12] 6290 	addc	a,@r0
      001EB8 FE               [12] 6291 	mov	r6,a
      001EB9 08               [12] 6292 	inc	r0
      001EBA 86 07            [24] 6293 	mov	ar7,@r0
      001EBC 8D 82            [24] 6294 	mov	dpl,r5
      001EBE 8E 83            [24] 6295 	mov	dph,r6
      001EC0 8F F0            [24] 6296 	mov	b,r7
      001EC2 E5 0C            [12] 6297 	mov	a,_bp
      001EC4 24 FA            [12] 6298 	add	a,#0xfa
      001EC6 F8               [12] 6299 	mov	r0,a
      001EC7 E6               [12] 6300 	mov	a,@r0
      001EC8 12 66 A0         [24] 6301 	lcall	__gptrput
      001ECB A3               [24] 6302 	inc	dptr
      001ECC 08               [12] 6303 	inc	r0
      001ECD E6               [12] 6304 	mov	a,@r0
      001ECE 12 66 A0         [24] 6305 	lcall	__gptrput
      001ED1 A3               [24] 6306 	inc	dptr
      001ED2 08               [12] 6307 	inc	r0
      001ED3 E6               [12] 6308 	mov	a,@r0
      001ED4 12 66 A0         [24] 6309 	lcall	__gptrput
      001ED7 A3               [24] 6310 	inc	dptr
      001ED8 08               [12] 6311 	inc	r0
      001ED9 E6               [12] 6312 	mov	a,@r0
      001EDA 12 66 A0         [24] 6313 	lcall	__gptrput
      001EDD 80 07            [24] 6314 	sjmp	00112$
      001EDF                       6315 00108$:
                           001C5F  6316 	C$tasks.c$4802$4_0$374 ==.
                                   6317 ;	src/FreeRTOS/tasks.c:4802: xReturn = pdFAIL;
      001EDF E5 0C            [12] 6318 	mov	a,_bp
      001EE1 24 07            [12] 6319 	add	a,#0x07
      001EE3 F8               [12] 6320 	mov	r0,a
      001EE4 76 00            [12] 6321 	mov	@r0,#0x00
                           001C66  6322 	C$tasks.c$4817$2_0$370 ==.
                                   6323 ;	src/FreeRTOS/tasks.c:4817: }
      001EE6                       6324 00112$:
                           001C66  6325 	C$tasks.c$4823$2_0$370 ==.
                                   6326 ;	src/FreeRTOS/tasks.c:4823: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      001EE6 BC 01 02         [24] 6327 	cjne	r4,#0x01,00163$
      001EE9 80 03            [24] 6328 	sjmp	00164$
      001EEB                       6329 00163$:
      001EEB 02 1F FC         [24] 6330 	ljmp	00123$
      001EEE                       6331 00164$:
                           001C6E  6332 	C$tasks.c$4828$3_0$375 ==.
                                   6333 ;	src/FreeRTOS/tasks.c:4828: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      001EEE 90 00 74         [24] 6334 	mov	dptr,#_uxSchedulerSuspended
      001EF1 E0               [24] 6335 	movx	a,@dptr
      001EF2 60 03            [24] 6336 	jz	00165$
      001EF4 02 1F 75         [24] 6337 	ljmp	00116$
      001EF7                       6338 00165$:
                           001C77  6339 	C$tasks.c$4830$4_0$376 ==.
                                   6340 ;	src/FreeRTOS/tasks.c:4830: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      001EF7 E5 0C            [12] 6341 	mov	a,_bp
      001EF9 24 04            [12] 6342 	add	a,#0x04
      001EFB F8               [12] 6343 	mov	r0,a
      001EFC 74 03            [12] 6344 	mov	a,#0x03
      001EFE 26               [12] 6345 	add	a,@r0
      001EFF FD               [12] 6346 	mov	r5,a
      001F00 E4               [12] 6347 	clr	a
      001F01 08               [12] 6348 	inc	r0
      001F02 36               [12] 6349 	addc	a,@r0
      001F03 FE               [12] 6350 	mov	r6,a
      001F04 08               [12] 6351 	inc	r0
      001F05 86 07            [24] 6352 	mov	ar7,@r0
      001F07 8D 82            [24] 6353 	mov	dpl,r5
      001F09 8E 83            [24] 6354 	mov	dph,r6
      001F0B 8F F0            [24] 6355 	mov	b,r7
      001F0D 12 30 3B         [24] 6356 	lcall	_uxListRemove
                           001C90  6357 	C$tasks.c$4831$5_0$377 ==.
                                   6358 ;	src/FreeRTOS/tasks.c:4831: prvAddTaskToReadyList( pxTCB );
      001F10 E5 0C            [12] 6359 	mov	a,_bp
      001F12 24 04            [12] 6360 	add	a,#0x04
      001F14 F8               [12] 6361 	mov	r0,a
      001F15 74 1F            [12] 6362 	mov	a,#0x1f
      001F17 26               [12] 6363 	add	a,@r0
      001F18 FD               [12] 6364 	mov	r5,a
      001F19 E4               [12] 6365 	clr	a
      001F1A 08               [12] 6366 	inc	r0
      001F1B 36               [12] 6367 	addc	a,@r0
      001F1C FE               [12] 6368 	mov	r6,a
      001F1D 08               [12] 6369 	inc	r0
      001F1E 86 07            [24] 6370 	mov	ar7,@r0
      001F20 8D 82            [24] 6371 	mov	dpl,r5
      001F22 8E 83            [24] 6372 	mov	dph,r6
      001F24 8F F0            [24] 6373 	mov	b,r7
      001F26 12 70 5A         [24] 6374 	lcall	__gptrget
      001F29 FC               [12] 6375 	mov	r4,a
      001F2A 90 00 69         [24] 6376 	mov	dptr,#_uxTopReadyPriority
      001F2D E0               [24] 6377 	movx	a,@dptr
      001F2E C3               [12] 6378 	clr	c
      001F2F 9C               [12] 6379 	subb	a,r4
      001F30 50 05            [24] 6380 	jnc	00114$
      001F32 90 00 69         [24] 6381 	mov	dptr,#_uxTopReadyPriority
      001F35 EC               [12] 6382 	mov	a,r4
      001F36 F0               [24] 6383 	movx	@dptr,a
      001F37                       6384 00114$:
      001F37 E5 0C            [12] 6385 	mov	a,_bp
      001F39 24 04            [12] 6386 	add	a,#0x04
      001F3B F8               [12] 6387 	mov	r0,a
      001F3C 74 03            [12] 6388 	mov	a,#0x03
      001F3E 26               [12] 6389 	add	a,@r0
      001F3F FA               [12] 6390 	mov	r2,a
      001F40 E4               [12] 6391 	clr	a
      001F41 08               [12] 6392 	inc	r0
      001F42 36               [12] 6393 	addc	a,@r0
      001F43 FB               [12] 6394 	mov	r3,a
      001F44 08               [12] 6395 	inc	r0
      001F45 86 04            [24] 6396 	mov	ar4,@r0
      001F47 8D 82            [24] 6397 	mov	dpl,r5
      001F49 8E 83            [24] 6398 	mov	dph,r6
      001F4B 8F F0            [24] 6399 	mov	b,r7
      001F4D 12 70 5A         [24] 6400 	lcall	__gptrget
      001F50 75 F0 0C         [24] 6401 	mov	b,#0x0c
      001F53 A4               [48] 6402 	mul	ab
      001F54 24 0C            [12] 6403 	add	a,#_pxReadyTasksLists
      001F56 FE               [12] 6404 	mov	r6,a
      001F57 74 00            [12] 6405 	mov	a,#(_pxReadyTasksLists >> 8)
      001F59 35 F0            [12] 6406 	addc	a,b
      001F5B FF               [12] 6407 	mov	r7,a
      001F5C 7D 00            [12] 6408 	mov	r5,#0x00
      001F5E C0 02            [24] 6409 	push	ar2
      001F60 C0 03            [24] 6410 	push	ar3
      001F62 C0 04            [24] 6411 	push	ar4
      001F64 8E 82            [24] 6412 	mov	dpl,r6
      001F66 8F 83            [24] 6413 	mov	dph,r7
      001F68 8D F0            [24] 6414 	mov	b,r5
      001F6A 12 2C DF         [24] 6415 	lcall	_vListInsertEnd
      001F6D 15 81            [12] 6416 	dec	sp
      001F6F 15 81            [12] 6417 	dec	sp
      001F71 15 81            [12] 6418 	dec	sp
      001F73 80 25            [24] 6419 	sjmp	00117$
      001F75                       6420 00116$:
                           001CF5  6421 	C$tasks.c$4837$4_0$379 ==.
                                   6422 ;	src/FreeRTOS/tasks.c:4837: vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
      001F75 E5 0C            [12] 6423 	mov	a,_bp
      001F77 24 04            [12] 6424 	add	a,#0x04
      001F79 F8               [12] 6425 	mov	r0,a
      001F7A 74 11            [12] 6426 	mov	a,#0x11
      001F7C 26               [12] 6427 	add	a,@r0
      001F7D FD               [12] 6428 	mov	r5,a
      001F7E E4               [12] 6429 	clr	a
      001F7F 08               [12] 6430 	inc	r0
      001F80 36               [12] 6431 	addc	a,@r0
      001F81 FE               [12] 6432 	mov	r6,a
      001F82 08               [12] 6433 	inc	r0
      001F83 86 07            [24] 6434 	mov	ar7,@r0
      001F85 C0 05            [24] 6435 	push	ar5
      001F87 C0 06            [24] 6436 	push	ar6
      001F89 C0 07            [24] 6437 	push	ar7
      001F8B 90 00 5A         [24] 6438 	mov	dptr,#_xPendingReadyList
      001F8E 75 F0 00         [24] 6439 	mov	b,#0x00
      001F91 12 2C DF         [24] 6440 	lcall	_vListInsertEnd
      001F94 15 81            [12] 6441 	dec	sp
      001F96 15 81            [12] 6442 	dec	sp
      001F98 15 81            [12] 6443 	dec	sp
      001F9A                       6444 00117$:
                           001D1A  6445 	C$tasks.c$4840$3_0$375 ==.
                                   6446 ;	src/FreeRTOS/tasks.c:4840: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      001F9A E5 0C            [12] 6447 	mov	a,_bp
      001F9C 24 04            [12] 6448 	add	a,#0x04
      001F9E F8               [12] 6449 	mov	r0,a
      001F9F 74 1F            [12] 6450 	mov	a,#0x1f
      001FA1 26               [12] 6451 	add	a,@r0
      001FA2 FD               [12] 6452 	mov	r5,a
      001FA3 E4               [12] 6453 	clr	a
      001FA4 08               [12] 6454 	inc	r0
      001FA5 36               [12] 6455 	addc	a,@r0
      001FA6 FE               [12] 6456 	mov	r6,a
      001FA7 08               [12] 6457 	inc	r0
      001FA8 86 07            [24] 6458 	mov	ar7,@r0
      001FAA 8D 82            [24] 6459 	mov	dpl,r5
      001FAC 8E 83            [24] 6460 	mov	dph,r6
      001FAE 8F F0            [24] 6461 	mov	b,r7
      001FB0 12 70 5A         [24] 6462 	lcall	__gptrget
      001FB3 FD               [12] 6463 	mov	r5,a
      001FB4 90 00 09         [24] 6464 	mov	dptr,#_pxCurrentTCB
      001FB7 E0               [24] 6465 	movx	a,@dptr
      001FB8 FC               [12] 6466 	mov	r4,a
      001FB9 A3               [24] 6467 	inc	dptr
      001FBA E0               [24] 6468 	movx	a,@dptr
      001FBB FE               [12] 6469 	mov	r6,a
      001FBC A3               [24] 6470 	inc	dptr
      001FBD E0               [24] 6471 	movx	a,@dptr
      001FBE FF               [12] 6472 	mov	r7,a
      001FBF 74 1F            [12] 6473 	mov	a,#0x1f
      001FC1 2C               [12] 6474 	add	a,r4
      001FC2 FC               [12] 6475 	mov	r4,a
      001FC3 E4               [12] 6476 	clr	a
      001FC4 3E               [12] 6477 	addc	a,r6
      001FC5 FE               [12] 6478 	mov	r6,a
      001FC6 8C 82            [24] 6479 	mov	dpl,r4
      001FC8 8E 83            [24] 6480 	mov	dph,r6
      001FCA 8F F0            [24] 6481 	mov	b,r7
      001FCC 12 70 5A         [24] 6482 	lcall	__gptrget
      001FCF FC               [12] 6483 	mov	r4,a
      001FD0 C3               [12] 6484 	clr	c
      001FD1 9D               [12] 6485 	subb	a,r5
      001FD2 50 28            [24] 6486 	jnc	00123$
                           001D54  6487 	C$tasks.c$4844$4_0$380 ==.
                                   6488 ;	src/FreeRTOS/tasks.c:4844: if( pxHigherPriorityTaskWoken != NULL )
      001FD4 E5 0C            [12] 6489 	mov	a,_bp
      001FD6 24 F3            [12] 6490 	add	a,#0xf3
      001FD8 F8               [12] 6491 	mov	r0,a
      001FD9 E6               [12] 6492 	mov	a,@r0
      001FDA 08               [12] 6493 	inc	r0
      001FDB 46               [12] 6494 	orl	a,@r0
      001FDC 60 18            [24] 6495 	jz	00119$
                           001D5E  6496 	C$tasks.c$4846$5_0$381 ==.
                                   6497 ;	src/FreeRTOS/tasks.c:4846: *pxHigherPriorityTaskWoken = pdTRUE;
      001FDE E5 0C            [12] 6498 	mov	a,_bp
      001FE0 24 F3            [12] 6499 	add	a,#0xf3
      001FE2 F8               [12] 6500 	mov	r0,a
      001FE3 86 05            [24] 6501 	mov	ar5,@r0
      001FE5 08               [12] 6502 	inc	r0
      001FE6 86 06            [24] 6503 	mov	ar6,@r0
      001FE8 08               [12] 6504 	inc	r0
      001FE9 86 07            [24] 6505 	mov	ar7,@r0
      001FEB 8D 82            [24] 6506 	mov	dpl,r5
      001FED 8E 83            [24] 6507 	mov	dph,r6
      001FEF 8F F0            [24] 6508 	mov	b,r7
      001FF1 74 01            [12] 6509 	mov	a,#0x01
      001FF3 12 66 A0         [24] 6510 	lcall	__gptrput
      001FF6                       6511 00119$:
                           001D76  6512 	C$tasks.c$4852$4_0$380 ==.
                                   6513 ;	src/FreeRTOS/tasks.c:4852: xYieldPending = pdTRUE;
      001FF6 90 00 6C         [24] 6514 	mov	dptr,#_xYieldPending
      001FF9 74 01            [12] 6515 	mov	a,#0x01
      001FFB F0               [24] 6516 	movx	@dptr,a
      001FFC                       6517 00123$:
                           001D7C  6518 	C$tasks.c$4862$1_0$369 ==.
                                   6519 ;	src/FreeRTOS/tasks.c:4862: return xReturn;
      001FFC E5 0C            [12] 6520 	mov	a,_bp
      001FFE 24 07            [12] 6521 	add	a,#0x07
      002000 F8               [12] 6522 	mov	r0,a
      002001 86 82            [24] 6523 	mov	dpl,@r0
                           001D83  6524 	C$tasks.c$4863$1_0$369 ==.
                                   6525 ;	src/FreeRTOS/tasks.c:4863: }
      002003 85 0C 81         [24] 6526 	mov	sp,_bp
      002006 D0 0C            [24] 6527 	pop	_bp
                           001D88  6528 	C$tasks.c$4863$1_0$369 ==.
                           001D88  6529 	XG$xTaskGenericNotifyFromISR$0$0 ==.
      002008 22               [24] 6530 	ret
                                   6531 ;------------------------------------------------------------
                                   6532 ;Allocation info for local variables in function 'vTaskNotifyGiveFromISR'
                                   6533 ;------------------------------------------------------------
                                   6534 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
                                   6535 ;xTaskToNotify             Allocated to stack - _bp +1
                                   6536 ;pxTCB                     Allocated to stack - _bp +7
                                   6537 ;ucOriginalNotifyState     Allocated to stack - _bp +10
                                   6538 ;uxSavedInterruptStatus    Allocated to registers 
                                   6539 ;sloc0                     Allocated to stack - _bp +4
                                   6540 ;------------------------------------------------------------
                           001D89  6541 	G$vTaskNotifyGiveFromISR$0$0 ==.
                           001D89  6542 	C$tasks.c$4870$1_0$384 ==.
                                   6543 ;	src/FreeRTOS/tasks.c:4870: void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
                                   6544 ;	-----------------------------------------
                                   6545 ;	 function vTaskNotifyGiveFromISR
                                   6546 ;	-----------------------------------------
      002009                       6547 _vTaskNotifyGiveFromISR:
      002009 C0 0C            [24] 6548 	push	_bp
      00200B 85 81 0C         [24] 6549 	mov	_bp,sp
      00200E C0 82            [24] 6550 	push	dpl
      002010 C0 83            [24] 6551 	push	dph
      002012 C0 F0            [24] 6552 	push	b
      002014 E5 81            [12] 6553 	mov	a,sp
      002016 24 07            [12] 6554 	add	a,#0x07
      002018 F5 81            [12] 6555 	mov	sp,a
                           001D9A  6556 	C$tasks.c$4896$1_0$384 ==.
                                   6557 ;	src/FreeRTOS/tasks.c:4896: pxTCB = xTaskToNotify;
      00201A A8 0C            [24] 6558 	mov	r0,_bp
      00201C 08               [12] 6559 	inc	r0
      00201D E5 0C            [12] 6560 	mov	a,_bp
      00201F 24 07            [12] 6561 	add	a,#0x07
      002021 F9               [12] 6562 	mov	r1,a
      002022 E6               [12] 6563 	mov	a,@r0
      002023 F7               [12] 6564 	mov	@r1,a
      002024 08               [12] 6565 	inc	r0
      002025 09               [12] 6566 	inc	r1
      002026 E6               [12] 6567 	mov	a,@r0
      002027 F7               [12] 6568 	mov	@r1,a
      002028 08               [12] 6569 	inc	r0
      002029 09               [12] 6570 	inc	r1
      00202A E6               [12] 6571 	mov	a,@r0
      00202B F7               [12] 6572 	mov	@r1,a
                           001DAC  6573 	C$tasks.c$4900$2_0$385 ==.
                                   6574 ;	src/FreeRTOS/tasks.c:4900: ucOriginalNotifyState = pxTCB->ucNotifyState;
      00202C A8 0C            [24] 6575 	mov	r0,_bp
      00202E 08               [12] 6576 	inc	r0
      00202F 74 32            [12] 6577 	mov	a,#0x32
      002031 26               [12] 6578 	add	a,@r0
      002032 FA               [12] 6579 	mov	r2,a
      002033 E4               [12] 6580 	clr	a
      002034 08               [12] 6581 	inc	r0
      002035 36               [12] 6582 	addc	a,@r0
      002036 FB               [12] 6583 	mov	r3,a
      002037 08               [12] 6584 	inc	r0
      002038 86 04            [24] 6585 	mov	ar4,@r0
      00203A 8A 82            [24] 6586 	mov	dpl,r2
      00203C 8B 83            [24] 6587 	mov	dph,r3
      00203E 8C F0            [24] 6588 	mov	b,r4
      002040 E5 0C            [12] 6589 	mov	a,_bp
      002042 24 0A            [12] 6590 	add	a,#0x0a
      002044 F8               [12] 6591 	mov	r0,a
      002045 12 70 5A         [24] 6592 	lcall	__gptrget
      002048 F6               [12] 6593 	mov	@r0,a
                           001DC9  6594 	C$tasks.c$4901$2_0$385 ==.
                                   6595 ;	src/FreeRTOS/tasks.c:4901: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
      002049 8A 82            [24] 6596 	mov	dpl,r2
      00204B 8B 83            [24] 6597 	mov	dph,r3
      00204D 8C F0            [24] 6598 	mov	b,r4
      00204F 74 02            [12] 6599 	mov	a,#0x02
      002051 12 66 A0         [24] 6600 	lcall	__gptrput
                           001DD4  6601 	C$tasks.c$4905$2_0$385 ==.
                                   6602 ;	src/FreeRTOS/tasks.c:4905: ( pxTCB->ulNotifiedValue )++;
      002054 A8 0C            [24] 6603 	mov	r0,_bp
      002056 08               [12] 6604 	inc	r0
      002057 E5 0C            [12] 6605 	mov	a,_bp
      002059 24 04            [12] 6606 	add	a,#0x04
      00205B F9               [12] 6607 	mov	r1,a
      00205C 74 2E            [12] 6608 	mov	a,#0x2e
      00205E 26               [12] 6609 	add	a,@r0
      00205F F7               [12] 6610 	mov	@r1,a
      002060 E4               [12] 6611 	clr	a
      002061 08               [12] 6612 	inc	r0
      002062 36               [12] 6613 	addc	a,@r0
      002063 09               [12] 6614 	inc	r1
      002064 F7               [12] 6615 	mov	@r1,a
      002065 08               [12] 6616 	inc	r0
      002066 09               [12] 6617 	inc	r1
      002067 E6               [12] 6618 	mov	a,@r0
      002068 F7               [12] 6619 	mov	@r1,a
      002069 E5 0C            [12] 6620 	mov	a,_bp
      00206B 24 04            [12] 6621 	add	a,#0x04
      00206D F8               [12] 6622 	mov	r0,a
      00206E 86 82            [24] 6623 	mov	dpl,@r0
      002070 08               [12] 6624 	inc	r0
      002071 86 83            [24] 6625 	mov	dph,@r0
      002073 08               [12] 6626 	inc	r0
      002074 86 F0            [24] 6627 	mov	b,@r0
      002076 12 70 5A         [24] 6628 	lcall	__gptrget
      002079 FE               [12] 6629 	mov	r6,a
      00207A A3               [24] 6630 	inc	dptr
      00207B 12 70 5A         [24] 6631 	lcall	__gptrget
      00207E FD               [12] 6632 	mov	r5,a
      00207F A3               [24] 6633 	inc	dptr
      002080 12 70 5A         [24] 6634 	lcall	__gptrget
      002083 FC               [12] 6635 	mov	r4,a
      002084 A3               [24] 6636 	inc	dptr
      002085 12 70 5A         [24] 6637 	lcall	__gptrget
      002088 FF               [12] 6638 	mov	r7,a
      002089 0E               [12] 6639 	inc	r6
      00208A BE 00 09         [24] 6640 	cjne	r6,#0x00,00134$
      00208D 0D               [12] 6641 	inc	r5
      00208E BD 00 05         [24] 6642 	cjne	r5,#0x00,00134$
      002091 0C               [12] 6643 	inc	r4
      002092 BC 00 01         [24] 6644 	cjne	r4,#0x00,00134$
      002095 0F               [12] 6645 	inc	r7
      002096                       6646 00134$:
      002096 E5 0C            [12] 6647 	mov	a,_bp
      002098 24 04            [12] 6648 	add	a,#0x04
      00209A F8               [12] 6649 	mov	r0,a
      00209B 86 82            [24] 6650 	mov	dpl,@r0
      00209D 08               [12] 6651 	inc	r0
      00209E 86 83            [24] 6652 	mov	dph,@r0
      0020A0 08               [12] 6653 	inc	r0
      0020A1 86 F0            [24] 6654 	mov	b,@r0
      0020A3 EE               [12] 6655 	mov	a,r6
      0020A4 12 66 A0         [24] 6656 	lcall	__gptrput
      0020A7 A3               [24] 6657 	inc	dptr
      0020A8 ED               [12] 6658 	mov	a,r5
      0020A9 12 66 A0         [24] 6659 	lcall	__gptrput
      0020AC A3               [24] 6660 	inc	dptr
      0020AD EC               [12] 6661 	mov	a,r4
      0020AE 12 66 A0         [24] 6662 	lcall	__gptrput
      0020B1 A3               [24] 6663 	inc	dptr
      0020B2 EF               [12] 6664 	mov	a,r7
      0020B3 12 66 A0         [24] 6665 	lcall	__gptrput
                           001E36  6666 	C$tasks.c$4911$2_0$385 ==.
                                   6667 ;	src/FreeRTOS/tasks.c:4911: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      0020B6 E5 0C            [12] 6668 	mov	a,_bp
      0020B8 24 0A            [12] 6669 	add	a,#0x0a
      0020BA F8               [12] 6670 	mov	r0,a
      0020BB B6 01 02         [24] 6671 	cjne	@r0,#0x01,00135$
      0020BE 80 03            [24] 6672 	sjmp	00136$
      0020C0                       6673 00135$:
      0020C0 02 21 DB         [24] 6674 	ljmp	00112$
      0020C3                       6675 00136$:
                           001E43  6676 	C$tasks.c$4916$3_0$386 ==.
                                   6677 ;	src/FreeRTOS/tasks.c:4916: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      0020C3 90 00 74         [24] 6678 	mov	dptr,#_uxSchedulerSuspended
      0020C6 E0               [24] 6679 	movx	a,@dptr
      0020C7 60 03            [24] 6680 	jz	00137$
      0020C9 02 21 56         [24] 6681 	ljmp	00104$
      0020CC                       6682 00137$:
                           001E4C  6683 	C$tasks.c$4918$4_0$387 ==.
                                   6684 ;	src/FreeRTOS/tasks.c:4918: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      0020CC A8 0C            [24] 6685 	mov	r0,_bp
      0020CE 08               [12] 6686 	inc	r0
      0020CF 74 03            [12] 6687 	mov	a,#0x03
      0020D1 26               [12] 6688 	add	a,@r0
      0020D2 FD               [12] 6689 	mov	r5,a
      0020D3 E4               [12] 6690 	clr	a
      0020D4 08               [12] 6691 	inc	r0
      0020D5 36               [12] 6692 	addc	a,@r0
      0020D6 FE               [12] 6693 	mov	r6,a
      0020D7 08               [12] 6694 	inc	r0
      0020D8 86 07            [24] 6695 	mov	ar7,@r0
      0020DA 8D 82            [24] 6696 	mov	dpl,r5
      0020DC 8E 83            [24] 6697 	mov	dph,r6
      0020DE 8F F0            [24] 6698 	mov	b,r7
      0020E0 12 30 3B         [24] 6699 	lcall	_uxListRemove
                           001E63  6700 	C$tasks.c$4919$5_0$388 ==.
                                   6701 ;	src/FreeRTOS/tasks.c:4919: prvAddTaskToReadyList( pxTCB );
      0020E3 A8 0C            [24] 6702 	mov	r0,_bp
      0020E5 08               [12] 6703 	inc	r0
      0020E6 74 1F            [12] 6704 	mov	a,#0x1f
      0020E8 26               [12] 6705 	add	a,@r0
      0020E9 FD               [12] 6706 	mov	r5,a
      0020EA E4               [12] 6707 	clr	a
      0020EB 08               [12] 6708 	inc	r0
      0020EC 36               [12] 6709 	addc	a,@r0
      0020ED FE               [12] 6710 	mov	r6,a
      0020EE 08               [12] 6711 	inc	r0
      0020EF 86 07            [24] 6712 	mov	ar7,@r0
      0020F1 8D 82            [24] 6713 	mov	dpl,r5
      0020F3 8E 83            [24] 6714 	mov	dph,r6
      0020F5 8F F0            [24] 6715 	mov	b,r7
      0020F7 12 70 5A         [24] 6716 	lcall	__gptrget
      0020FA FF               [12] 6717 	mov	r7,a
      0020FB 90 00 69         [24] 6718 	mov	dptr,#_uxTopReadyPriority
      0020FE E0               [24] 6719 	movx	a,@dptr
      0020FF C3               [12] 6720 	clr	c
      002100 9F               [12] 6721 	subb	a,r7
      002101 50 05            [24] 6722 	jnc	00102$
      002103 90 00 69         [24] 6723 	mov	dptr,#_uxTopReadyPriority
      002106 EF               [12] 6724 	mov	a,r7
      002107 F0               [24] 6725 	movx	@dptr,a
      002108                       6726 00102$:
      002108 E5 0C            [12] 6727 	mov	a,_bp
      00210A 24 07            [12] 6728 	add	a,#0x07
      00210C F8               [12] 6729 	mov	r0,a
      00210D 74 03            [12] 6730 	mov	a,#0x03
      00210F 26               [12] 6731 	add	a,@r0
      002110 FD               [12] 6732 	mov	r5,a
      002111 E4               [12] 6733 	clr	a
      002112 08               [12] 6734 	inc	r0
      002113 36               [12] 6735 	addc	a,@r0
      002114 FE               [12] 6736 	mov	r6,a
      002115 08               [12] 6737 	inc	r0
      002116 86 07            [24] 6738 	mov	ar7,@r0
      002118 E5 0C            [12] 6739 	mov	a,_bp
      00211A 24 07            [12] 6740 	add	a,#0x07
      00211C F8               [12] 6741 	mov	r0,a
      00211D 74 1F            [12] 6742 	mov	a,#0x1f
      00211F 26               [12] 6743 	add	a,@r0
      002120 FA               [12] 6744 	mov	r2,a
      002121 E4               [12] 6745 	clr	a
      002122 08               [12] 6746 	inc	r0
      002123 36               [12] 6747 	addc	a,@r0
      002124 FB               [12] 6748 	mov	r3,a
      002125 08               [12] 6749 	inc	r0
      002126 86 04            [24] 6750 	mov	ar4,@r0
      002128 8A 82            [24] 6751 	mov	dpl,r2
      00212A 8B 83            [24] 6752 	mov	dph,r3
      00212C 8C F0            [24] 6753 	mov	b,r4
      00212E 12 70 5A         [24] 6754 	lcall	__gptrget
      002131 75 F0 0C         [24] 6755 	mov	b,#0x0c
      002134 A4               [48] 6756 	mul	ab
      002135 24 0C            [12] 6757 	add	a,#_pxReadyTasksLists
      002137 FB               [12] 6758 	mov	r3,a
      002138 74 00            [12] 6759 	mov	a,#(_pxReadyTasksLists >> 8)
      00213A 35 F0            [12] 6760 	addc	a,b
      00213C FC               [12] 6761 	mov	r4,a
      00213D 7A 00            [12] 6762 	mov	r2,#0x00
      00213F C0 05            [24] 6763 	push	ar5
      002141 C0 06            [24] 6764 	push	ar6
      002143 C0 07            [24] 6765 	push	ar7
      002145 8B 82            [24] 6766 	mov	dpl,r3
      002147 8C 83            [24] 6767 	mov	dph,r4
      002149 8A F0            [24] 6768 	mov	b,r2
      00214B 12 2C DF         [24] 6769 	lcall	_vListInsertEnd
      00214E 15 81            [12] 6770 	dec	sp
      002150 15 81            [12] 6771 	dec	sp
      002152 15 81            [12] 6772 	dec	sp
      002154 80 23            [24] 6773 	sjmp	00105$
      002156                       6774 00104$:
                           001ED6  6775 	C$tasks.c$4925$4_0$390 ==.
                                   6776 ;	src/FreeRTOS/tasks.c:4925: vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
      002156 A8 0C            [24] 6777 	mov	r0,_bp
      002158 08               [12] 6778 	inc	r0
      002159 74 11            [12] 6779 	mov	a,#0x11
      00215B 26               [12] 6780 	add	a,@r0
      00215C FD               [12] 6781 	mov	r5,a
      00215D E4               [12] 6782 	clr	a
      00215E 08               [12] 6783 	inc	r0
      00215F 36               [12] 6784 	addc	a,@r0
      002160 FE               [12] 6785 	mov	r6,a
      002161 08               [12] 6786 	inc	r0
      002162 86 07            [24] 6787 	mov	ar7,@r0
      002164 C0 05            [24] 6788 	push	ar5
      002166 C0 06            [24] 6789 	push	ar6
      002168 C0 07            [24] 6790 	push	ar7
      00216A 90 00 5A         [24] 6791 	mov	dptr,#_xPendingReadyList
      00216D 75 F0 00         [24] 6792 	mov	b,#0x00
      002170 12 2C DF         [24] 6793 	lcall	_vListInsertEnd
      002173 15 81            [12] 6794 	dec	sp
      002175 15 81            [12] 6795 	dec	sp
      002177 15 81            [12] 6796 	dec	sp
      002179                       6797 00105$:
                           001EF9  6798 	C$tasks.c$4928$3_0$386 ==.
                                   6799 ;	src/FreeRTOS/tasks.c:4928: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      002179 E5 0C            [12] 6800 	mov	a,_bp
      00217B 24 07            [12] 6801 	add	a,#0x07
      00217D F8               [12] 6802 	mov	r0,a
      00217E 74 1F            [12] 6803 	mov	a,#0x1f
      002180 26               [12] 6804 	add	a,@r0
      002181 FD               [12] 6805 	mov	r5,a
      002182 E4               [12] 6806 	clr	a
      002183 08               [12] 6807 	inc	r0
      002184 36               [12] 6808 	addc	a,@r0
      002185 FE               [12] 6809 	mov	r6,a
      002186 08               [12] 6810 	inc	r0
      002187 86 07            [24] 6811 	mov	ar7,@r0
      002189 8D 82            [24] 6812 	mov	dpl,r5
      00218B 8E 83            [24] 6813 	mov	dph,r6
      00218D 8F F0            [24] 6814 	mov	b,r7
      00218F 12 70 5A         [24] 6815 	lcall	__gptrget
      002192 FD               [12] 6816 	mov	r5,a
      002193 90 00 09         [24] 6817 	mov	dptr,#_pxCurrentTCB
      002196 E0               [24] 6818 	movx	a,@dptr
      002197 FC               [12] 6819 	mov	r4,a
      002198 A3               [24] 6820 	inc	dptr
      002199 E0               [24] 6821 	movx	a,@dptr
      00219A FE               [12] 6822 	mov	r6,a
      00219B A3               [24] 6823 	inc	dptr
      00219C E0               [24] 6824 	movx	a,@dptr
      00219D FF               [12] 6825 	mov	r7,a
      00219E 74 1F            [12] 6826 	mov	a,#0x1f
      0021A0 2C               [12] 6827 	add	a,r4
      0021A1 FC               [12] 6828 	mov	r4,a
      0021A2 E4               [12] 6829 	clr	a
      0021A3 3E               [12] 6830 	addc	a,r6
      0021A4 FE               [12] 6831 	mov	r6,a
      0021A5 8C 82            [24] 6832 	mov	dpl,r4
      0021A7 8E 83            [24] 6833 	mov	dph,r6
      0021A9 8F F0            [24] 6834 	mov	b,r7
      0021AB 12 70 5A         [24] 6835 	lcall	__gptrget
      0021AE FC               [12] 6836 	mov	r4,a
      0021AF C3               [12] 6837 	clr	c
      0021B0 9D               [12] 6838 	subb	a,r5
      0021B1 50 28            [24] 6839 	jnc	00112$
                           001F33  6840 	C$tasks.c$4932$4_0$391 ==.
                                   6841 ;	src/FreeRTOS/tasks.c:4932: if( pxHigherPriorityTaskWoken != NULL )
      0021B3 E5 0C            [12] 6842 	mov	a,_bp
      0021B5 24 FB            [12] 6843 	add	a,#0xfb
      0021B7 F8               [12] 6844 	mov	r0,a
      0021B8 E6               [12] 6845 	mov	a,@r0
      0021B9 08               [12] 6846 	inc	r0
      0021BA 46               [12] 6847 	orl	a,@r0
      0021BB 60 18            [24] 6848 	jz	00107$
                           001F3D  6849 	C$tasks.c$4934$5_0$392 ==.
                                   6850 ;	src/FreeRTOS/tasks.c:4934: *pxHigherPriorityTaskWoken = pdTRUE;
      0021BD E5 0C            [12] 6851 	mov	a,_bp
      0021BF 24 FB            [12] 6852 	add	a,#0xfb
      0021C1 F8               [12] 6853 	mov	r0,a
      0021C2 86 05            [24] 6854 	mov	ar5,@r0
      0021C4 08               [12] 6855 	inc	r0
      0021C5 86 06            [24] 6856 	mov	ar6,@r0
      0021C7 08               [12] 6857 	inc	r0
      0021C8 86 07            [24] 6858 	mov	ar7,@r0
      0021CA 8D 82            [24] 6859 	mov	dpl,r5
      0021CC 8E 83            [24] 6860 	mov	dph,r6
      0021CE 8F F0            [24] 6861 	mov	b,r7
      0021D0 74 01            [12] 6862 	mov	a,#0x01
      0021D2 12 66 A0         [24] 6863 	lcall	__gptrput
      0021D5                       6864 00107$:
                           001F55  6865 	C$tasks.c$4940$4_0$391 ==.
                                   6866 ;	src/FreeRTOS/tasks.c:4940: xYieldPending = pdTRUE;
      0021D5 90 00 6C         [24] 6867 	mov	dptr,#_xYieldPending
      0021D8 74 01            [12] 6868 	mov	a,#0x01
      0021DA F0               [24] 6869 	movx	@dptr,a
                           001F5B  6870 	C$tasks.c$4948$1_0$384 ==.
                                   6871 ;	src/FreeRTOS/tasks.c:4948: portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
      0021DB                       6872 00112$:
                           001F5B  6873 	C$tasks.c$4949$1_0$384 ==.
                                   6874 ;	src/FreeRTOS/tasks.c:4949: }
      0021DB 85 0C 81         [24] 6875 	mov	sp,_bp
      0021DE D0 0C            [24] 6876 	pop	_bp
                           001F60  6877 	C$tasks.c$4949$1_0$384 ==.
                           001F60  6878 	XG$vTaskNotifyGiveFromISR$0$0 ==.
      0021E0 22               [24] 6879 	ret
                                   6880 ;------------------------------------------------------------
                                   6881 ;Allocation info for local variables in function 'xTaskNotifyStateClear'
                                   6882 ;------------------------------------------------------------
                                   6883 ;xTask                     Allocated to registers r5 r6 r7 
                                   6884 ;pxTCB                     Allocated to registers r2 r3 r4 
                                   6885 ;xReturn                   Allocated to registers r7 
                                   6886 ;------------------------------------------------------------
                           001F61  6887 	G$xTaskNotifyStateClear$0$0 ==.
                           001F61  6888 	C$tasks.c$4957$1_0$395 ==.
                                   6889 ;	src/FreeRTOS/tasks.c:4957: BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask )
                                   6890 ;	-----------------------------------------
                                   6891 ;	 function xTaskNotifyStateClear
                                   6892 ;	-----------------------------------------
      0021E1                       6893 _xTaskNotifyStateClear:
      0021E1 AD 82            [24] 6894 	mov	r5,dpl
      0021E3 AE 83            [24] 6895 	mov	r6,dph
      0021E5 AF F0            [24] 6896 	mov	r7,b
                           001F67  6897 	C$tasks.c$4964$1_0$395 ==.
                                   6898 ;	src/FreeRTOS/tasks.c:4964: pxTCB = prvGetTCBFromHandle( xTask );
      0021E7 ED               [12] 6899 	mov	a,r5
      0021E8 4E               [12] 6900 	orl	a,r6
      0021E9 70 0D            [24] 6901 	jnz	00106$
      0021EB 90 00 09         [24] 6902 	mov	dptr,#_pxCurrentTCB
      0021EE E0               [24] 6903 	movx	a,@dptr
      0021EF FA               [12] 6904 	mov	r2,a
      0021F0 A3               [24] 6905 	inc	dptr
      0021F1 E0               [24] 6906 	movx	a,@dptr
      0021F2 FB               [12] 6907 	mov	r3,a
      0021F3 A3               [24] 6908 	inc	dptr
      0021F4 E0               [24] 6909 	movx	a,@dptr
      0021F5 FC               [12] 6910 	mov	r4,a
      0021F6 80 06            [24] 6911 	sjmp	00107$
      0021F8                       6912 00106$:
      0021F8 8D 02            [24] 6913 	mov	ar2,r5
      0021FA 8E 03            [24] 6914 	mov	ar3,r6
      0021FC 8F 04            [24] 6915 	mov	ar4,r7
      0021FE                       6916 00107$:
                           001F7E  6917 	C$tasks.c$4966$1_0$395 ==.
                                   6918 ;	src/FreeRTOS/tasks.c:4966: taskENTER_CRITICAL();
      0021FE C0 E0            [24] 6919 	push ACC 
      002200 C0 A8            [24] 6920 	push IE 
                                   6921 ;	assignBit
      002202 C2 AF            [12] 6922 	clr	_EA
                           001F84  6923 	C$tasks.c$4968$2_0$396 ==.
                                   6924 ;	src/FreeRTOS/tasks.c:4968: if( pxTCB->ucNotifyState == taskNOTIFICATION_RECEIVED )
      002204 74 32            [12] 6925 	mov	a,#0x32
      002206 2A               [12] 6926 	add	a,r2
      002207 FD               [12] 6927 	mov	r5,a
      002208 E4               [12] 6928 	clr	a
      002209 3B               [12] 6929 	addc	a,r3
      00220A FE               [12] 6930 	mov	r6,a
      00220B 8C 07            [24] 6931 	mov	ar7,r4
      00220D 8D 82            [24] 6932 	mov	dpl,r5
      00220F 8E 83            [24] 6933 	mov	dph,r6
      002211 8F F0            [24] 6934 	mov	b,r7
      002213 12 70 5A         [24] 6935 	lcall	__gptrget
      002216 FC               [12] 6936 	mov	r4,a
      002217 BC 02 0E         [24] 6937 	cjne	r4,#0x02,00102$
                           001F9A  6938 	C$tasks.c$4970$3_0$397 ==.
                                   6939 ;	src/FreeRTOS/tasks.c:4970: pxTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
      00221A 8D 82            [24] 6940 	mov	dpl,r5
      00221C 8E 83            [24] 6941 	mov	dph,r6
      00221E 8F F0            [24] 6942 	mov	b,r7
      002220 E4               [12] 6943 	clr	a
      002221 12 66 A0         [24] 6944 	lcall	__gptrput
                           001FA4  6945 	C$tasks.c$4971$3_0$397 ==.
                                   6946 ;	src/FreeRTOS/tasks.c:4971: xReturn = pdPASS;
      002224 7F 01            [12] 6947 	mov	r7,#0x01
      002226 80 02            [24] 6948 	sjmp	00103$
      002228                       6949 00102$:
                           001FA8  6950 	C$tasks.c$4975$3_0$398 ==.
                                   6951 ;	src/FreeRTOS/tasks.c:4975: xReturn = pdFAIL;
      002228 7F 00            [12] 6952 	mov	r7,#0x00
      00222A                       6953 00103$:
                           001FAA  6954 	C$tasks.c$4978$1_0$395 ==.
                                   6955 ;	src/FreeRTOS/tasks.c:4978: taskEXIT_CRITICAL();
      00222A D0 E0            [24] 6956 	pop ACC 
      00222C 53 E0 80         [24] 6957 	anl	_ACC,#0x80
      00222F E5 E0            [12] 6958 	mov	a,_ACC
      002231 42 A8            [12] 6959 	orl	_IE,a
      002233 D0 E0            [24] 6960 	pop ACC 
                           001FB5  6961 	C$tasks.c$4980$1_0$395 ==.
                                   6962 ;	src/FreeRTOS/tasks.c:4980: return xReturn;
      002235 8F 82            [24] 6963 	mov	dpl,r7
                           001FB7  6964 	C$tasks.c$4981$1_0$395 ==.
                                   6965 ;	src/FreeRTOS/tasks.c:4981: }
                           001FB7  6966 	C$tasks.c$4981$1_0$395 ==.
                           001FB7  6967 	XG$xTaskNotifyStateClear$0$0 ==.
      002237 22               [24] 6968 	ret
                                   6969 ;------------------------------------------------------------
                                   6970 ;Allocation info for local variables in function 'prvAddCurrentTaskToDelayedList'
                                   6971 ;------------------------------------------------------------
                                   6972 ;xCanBlockIndefinitely     Allocated to stack - _bp -3
                                   6973 ;xTicksToWait              Allocated to stack - _bp +1
                                   6974 ;xTimeToWake               Allocated to stack - _bp +3
                                   6975 ;xConstTickCount           Allocated to stack - _bp +5
                                   6976 ;sloc0                     Allocated to stack - _bp +7
                                   6977 ;------------------------------------------------------------
                           001FB8  6978 	Ftasks$prvAddCurrentTaskToDelayedList$0$0 ==.
                           001FB8  6979 	C$tasks.c$4987$1_0$400 ==.
                                   6980 ;	src/FreeRTOS/tasks.c:4987: static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
                                   6981 ;	-----------------------------------------
                                   6982 ;	 function prvAddCurrentTaskToDelayedList
                                   6983 ;	-----------------------------------------
      002238                       6984 _prvAddCurrentTaskToDelayedList:
      002238 C0 0C            [24] 6985 	push	_bp
      00223A 85 81 0C         [24] 6986 	mov	_bp,sp
      00223D C0 82            [24] 6987 	push	dpl
      00223F C0 83            [24] 6988 	push	dph
      002241 E5 81            [12] 6989 	mov	a,sp
      002243 24 04            [12] 6990 	add	a,#0x04
      002245 F5 81            [12] 6991 	mov	sp,a
                           001FC7  6992 	C$tasks.c$4990$2_0$400 ==.
                                   6993 ;	src/FreeRTOS/tasks.c:4990: const TickType_t xConstTickCount = xTickCount;
      002247 90 00 67         [24] 6994 	mov	dptr,#_xTickCount
      00224A E0               [24] 6995 	movx	a,@dptr
      00224B FC               [12] 6996 	mov	r4,a
      00224C A3               [24] 6997 	inc	dptr
      00224D E0               [24] 6998 	movx	a,@dptr
      00224E FD               [12] 6999 	mov	r5,a
      00224F E5 0C            [12] 7000 	mov	a,_bp
      002251 24 05            [12] 7001 	add	a,#0x05
      002253 F8               [12] 7002 	mov	r0,a
      002254 A6 04            [24] 7003 	mov	@r0,ar4
      002256 08               [12] 7004 	inc	r0
      002257 A6 05            [24] 7005 	mov	@r0,ar5
                           001FD9  7006 	C$tasks.c$5003$1_0$400 ==.
                                   7007 ;	src/FreeRTOS/tasks.c:5003: if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
      002259 90 00 09         [24] 7008 	mov	dptr,#_pxCurrentTCB
      00225C E0               [24] 7009 	movx	a,@dptr
      00225D FA               [12] 7010 	mov	r2,a
      00225E A3               [24] 7011 	inc	dptr
      00225F E0               [24] 7012 	movx	a,@dptr
      002260 FB               [12] 7013 	mov	r3,a
      002261 A3               [24] 7014 	inc	dptr
      002262 E0               [24] 7015 	movx	a,@dptr
      002263 FF               [12] 7016 	mov	r7,a
      002264 74 03            [12] 7017 	mov	a,#0x03
      002266 2A               [12] 7018 	add	a,r2
      002267 FA               [12] 7019 	mov	r2,a
      002268 E4               [12] 7020 	clr	a
      002269 3B               [12] 7021 	addc	a,r3
      00226A FB               [12] 7022 	mov	r3,a
      00226B 8A 82            [24] 7023 	mov	dpl,r2
      00226D 8B 83            [24] 7024 	mov	dph,r3
      00226F 8F F0            [24] 7025 	mov	b,r7
      002271 12 30 3B         [24] 7026 	lcall	_uxListRemove
                           001FF4  7027 	C$tasks.c$5064$2_0$403 ==.
                                   7028 ;	src/FreeRTOS/tasks.c:5064: xTimeToWake = xConstTickCount + xTicksToWait;
      002274 E5 0C            [12] 7029 	mov	a,_bp
      002276 24 05            [12] 7030 	add	a,#0x05
      002278 F8               [12] 7031 	mov	r0,a
      002279 A9 0C            [24] 7032 	mov	r1,_bp
      00227B 09               [12] 7033 	inc	r1
      00227C E7               [12] 7034 	mov	a,@r1
      00227D 26               [12] 7035 	add	a,@r0
      00227E FE               [12] 7036 	mov	r6,a
      00227F 09               [12] 7037 	inc	r1
      002280 E7               [12] 7038 	mov	a,@r1
      002281 08               [12] 7039 	inc	r0
      002282 36               [12] 7040 	addc	a,@r0
      002283 FF               [12] 7041 	mov	r7,a
      002284 E5 0C            [12] 7042 	mov	a,_bp
      002286 24 03            [12] 7043 	add	a,#0x03
      002288 F8               [12] 7044 	mov	r0,a
      002289 A6 06            [24] 7045 	mov	@r0,ar6
      00228B 08               [12] 7046 	inc	r0
      00228C A6 07            [24] 7047 	mov	@r0,ar7
                           00200E  7048 	C$tasks.c$5067$2_0$403 ==.
                                   7049 ;	src/FreeRTOS/tasks.c:5067: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
      00228E 90 00 09         [24] 7050 	mov	dptr,#_pxCurrentTCB
      002291 E0               [24] 7051 	movx	a,@dptr
      002292 FA               [12] 7052 	mov	r2,a
      002293 A3               [24] 7053 	inc	dptr
      002294 E0               [24] 7054 	movx	a,@dptr
      002295 FB               [12] 7055 	mov	r3,a
      002296 A3               [24] 7056 	inc	dptr
      002297 E0               [24] 7057 	movx	a,@dptr
      002298 FD               [12] 7058 	mov	r5,a
      002299 74 03            [12] 7059 	mov	a,#0x03
      00229B 2A               [12] 7060 	add	a,r2
      00229C FA               [12] 7061 	mov	r2,a
      00229D E4               [12] 7062 	clr	a
      00229E 3B               [12] 7063 	addc	a,r3
      00229F FB               [12] 7064 	mov	r3,a
      0022A0 8A 82            [24] 7065 	mov	dpl,r2
      0022A2 8B 83            [24] 7066 	mov	dph,r3
      0022A4 8D F0            [24] 7067 	mov	b,r5
      0022A6 E5 0C            [12] 7068 	mov	a,_bp
      0022A8 24 03            [12] 7069 	add	a,#0x03
      0022AA F8               [12] 7070 	mov	r0,a
      0022AB E6               [12] 7071 	mov	a,@r0
      0022AC 12 66 A0         [24] 7072 	lcall	__gptrput
      0022AF A3               [24] 7073 	inc	dptr
      0022B0 08               [12] 7074 	inc	r0
      0022B1 E6               [12] 7075 	mov	a,@r0
      0022B2 12 66 A0         [24] 7076 	lcall	__gptrput
                           002035  7077 	C$tasks.c$5069$2_0$403 ==.
                                   7078 ;	src/FreeRTOS/tasks.c:5069: if( xTimeToWake < xConstTickCount )
      0022B5 E5 0C            [12] 7079 	mov	a,_bp
      0022B7 24 03            [12] 7080 	add	a,#0x03
      0022B9 F8               [12] 7081 	mov	r0,a
      0022BA E5 0C            [12] 7082 	mov	a,_bp
      0022BC 24 05            [12] 7083 	add	a,#0x05
      0022BE F9               [12] 7084 	mov	r1,a
      0022BF C3               [12] 7085 	clr	c
      0022C0 E6               [12] 7086 	mov	a,@r0
      0022C1 97               [12] 7087 	subb	a,@r1
      0022C2 08               [12] 7088 	inc	r0
      0022C3 E6               [12] 7089 	mov	a,@r0
      0022C4 09               [12] 7090 	inc	r1
      0022C5 97               [12] 7091 	subb	a,@r1
      0022C6 50 36            [24] 7092 	jnc	00106$
                           002048  7093 	C$tasks.c$5072$3_0$404 ==.
                                   7094 ;	src/FreeRTOS/tasks.c:5072: vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
      0022C8 90 00 09         [24] 7095 	mov	dptr,#_pxCurrentTCB
      0022CB E0               [24] 7096 	movx	a,@dptr
      0022CC FB               [12] 7097 	mov	r3,a
      0022CD A3               [24] 7098 	inc	dptr
      0022CE E0               [24] 7099 	movx	a,@dptr
      0022CF FC               [12] 7100 	mov	r4,a
      0022D0 A3               [24] 7101 	inc	dptr
      0022D1 E0               [24] 7102 	movx	a,@dptr
      0022D2 FD               [12] 7103 	mov	r5,a
      0022D3 74 03            [12] 7104 	mov	a,#0x03
      0022D5 2B               [12] 7105 	add	a,r3
      0022D6 FB               [12] 7106 	mov	r3,a
      0022D7 E4               [12] 7107 	clr	a
      0022D8 3C               [12] 7108 	addc	a,r4
      0022D9 FE               [12] 7109 	mov	r6,a
      0022DA 8D 07            [24] 7110 	mov	ar7,r5
      0022DC 90 00 57         [24] 7111 	mov	dptr,#_pxOverflowDelayedTaskList
      0022DF E0               [24] 7112 	movx	a,@dptr
      0022E0 FA               [12] 7113 	mov	r2,a
      0022E1 A3               [24] 7114 	inc	dptr
      0022E2 E0               [24] 7115 	movx	a,@dptr
      0022E3 FC               [12] 7116 	mov	r4,a
      0022E4 A3               [24] 7117 	inc	dptr
      0022E5 E0               [24] 7118 	movx	a,@dptr
      0022E6 FD               [12] 7119 	mov	r5,a
      0022E7 C0 03            [24] 7120 	push	ar3
      0022E9 C0 06            [24] 7121 	push	ar6
      0022EB C0 07            [24] 7122 	push	ar7
      0022ED 8A 82            [24] 7123 	mov	dpl,r2
      0022EF 8C 83            [24] 7124 	mov	dph,r4
      0022F1 8D F0            [24] 7125 	mov	b,r5
      0022F3 12 2E 3D         [24] 7126 	lcall	_vListInsert
      0022F6 15 81            [12] 7127 	dec	sp
      0022F8 15 81            [12] 7128 	dec	sp
      0022FA 15 81            [12] 7129 	dec	sp
      0022FC 80 55            [24] 7130 	sjmp	00108$
      0022FE                       7131 00106$:
                           00207E  7132 	C$tasks.c$5077$3_0$405 ==.
                                   7133 ;	src/FreeRTOS/tasks.c:5077: vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
      0022FE 90 00 09         [24] 7134 	mov	dptr,#_pxCurrentTCB
      002301 E0               [24] 7135 	movx	a,@dptr
      002302 FB               [12] 7136 	mov	r3,a
      002303 A3               [24] 7137 	inc	dptr
      002304 E0               [24] 7138 	movx	a,@dptr
      002305 FC               [12] 7139 	mov	r4,a
      002306 A3               [24] 7140 	inc	dptr
      002307 E0               [24] 7141 	movx	a,@dptr
      002308 FD               [12] 7142 	mov	r5,a
      002309 74 03            [12] 7143 	mov	a,#0x03
      00230B 2B               [12] 7144 	add	a,r3
      00230C FB               [12] 7145 	mov	r3,a
      00230D E4               [12] 7146 	clr	a
      00230E 3C               [12] 7147 	addc	a,r4
      00230F FC               [12] 7148 	mov	r4,a
      002310 90 00 54         [24] 7149 	mov	dptr,#_pxDelayedTaskList
      002313 E0               [24] 7150 	movx	a,@dptr
      002314 FA               [12] 7151 	mov	r2,a
      002315 A3               [24] 7152 	inc	dptr
      002316 E0               [24] 7153 	movx	a,@dptr
      002317 FE               [12] 7154 	mov	r6,a
      002318 A3               [24] 7155 	inc	dptr
      002319 E0               [24] 7156 	movx	a,@dptr
      00231A FF               [12] 7157 	mov	r7,a
      00231B C0 03            [24] 7158 	push	ar3
      00231D C0 04            [24] 7159 	push	ar4
      00231F C0 05            [24] 7160 	push	ar5
      002321 8A 82            [24] 7161 	mov	dpl,r2
      002323 8E 83            [24] 7162 	mov	dph,r6
      002325 8F F0            [24] 7163 	mov	b,r7
      002327 12 2E 3D         [24] 7164 	lcall	_vListInsert
      00232A 15 81            [12] 7165 	dec	sp
      00232C 15 81            [12] 7166 	dec	sp
      00232E 15 81            [12] 7167 	dec	sp
                           0020B0  7168 	C$tasks.c$5082$3_0$405 ==.
                                   7169 ;	src/FreeRTOS/tasks.c:5082: if( xTimeToWake < xNextTaskUnblockTime )
      002330 90 00 6F         [24] 7170 	mov	dptr,#_xNextTaskUnblockTime
      002333 E0               [24] 7171 	movx	a,@dptr
      002334 FE               [12] 7172 	mov	r6,a
      002335 A3               [24] 7173 	inc	dptr
      002336 E0               [24] 7174 	movx	a,@dptr
      002337 FF               [12] 7175 	mov	r7,a
      002338 E5 0C            [12] 7176 	mov	a,_bp
      00233A 24 03            [12] 7177 	add	a,#0x03
      00233C F8               [12] 7178 	mov	r0,a
      00233D C3               [12] 7179 	clr	c
      00233E E6               [12] 7180 	mov	a,@r0
      00233F 9E               [12] 7181 	subb	a,r6
      002340 08               [12] 7182 	inc	r0
      002341 E6               [12] 7183 	mov	a,@r0
      002342 9F               [12] 7184 	subb	a,r7
      002343 50 0E            [24] 7185 	jnc	00108$
                           0020C5  7186 	C$tasks.c$5084$4_0$406 ==.
                                   7187 ;	src/FreeRTOS/tasks.c:5084: xNextTaskUnblockTime = xTimeToWake;
      002345 E5 0C            [12] 7188 	mov	a,_bp
      002347 24 03            [12] 7189 	add	a,#0x03
      002349 F8               [12] 7190 	mov	r0,a
      00234A 90 00 6F         [24] 7191 	mov	dptr,#_xNextTaskUnblockTime
      00234D E6               [12] 7192 	mov	a,@r0
      00234E F0               [24] 7193 	movx	@dptr,a
      00234F 08               [12] 7194 	inc	r0
      002350 E6               [12] 7195 	mov	a,@r0
      002351 A3               [24] 7196 	inc	dptr
      002352 F0               [24] 7197 	movx	@dptr,a
                           0020D3  7198 	C$tasks.c$5093$2_0$400 ==.
                                   7199 ;	src/FreeRTOS/tasks.c:5093: ( void ) xCanBlockIndefinitely;
      002353                       7200 00108$:
                           0020D3  7201 	C$tasks.c$5096$2_0$400 ==.
                                   7202 ;	src/FreeRTOS/tasks.c:5096: }
      002353 85 0C 81         [24] 7203 	mov	sp,_bp
      002356 D0 0C            [24] 7204 	pop	_bp
                           0020D8  7205 	C$tasks.c$5096$2_0$400 ==.
                           0020D8  7206 	XFtasks$prvAddCurrentTaskToDelayedList$0$0 ==.
      002358 22               [24] 7207 	ret
                                   7208 	.area CSEG    (CODE)
                                   7209 	.area CONST   (CODE)
                           000000  7210 Ftasks$__str_0$0_0$0 == .
      0070EB                       7211 ___str_0:
      0070EB 49 44 4C 45           7212 	.ascii "IDLE"
      0070EF 00                    7213 	.db 0x00
                                   7214 	.area CABS    (ABS,CODE)
