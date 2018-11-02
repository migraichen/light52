                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stream_buffer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _xTaskCheckForTimeOut
                                     12 	.globl _vTaskSetTimeOutState
                                     13 	.globl _xTaskGetCurrentTaskHandle
                                     14 	.globl _xTaskNotifyStateClear
                                     15 	.globl _xTaskNotifyWait
                                     16 	.globl _xTaskGenericNotifyFromISR
                                     17 	.globl _xTaskGenericNotify
                                     18 	.globl _xTaskResumeAll
                                     19 	.globl _vTaskSuspendAll
                                     20 	.globl _vPortFree
                                     21 	.globl _pvPortMalloc
                                     22 	.globl _memset
                                     23 	.globl _memcpy
                                     24 	.globl _P3_7
                                     25 	.globl _P3_6
                                     26 	.globl _P3_5
                                     27 	.globl _P3_4
                                     28 	.globl _P3_3
                                     29 	.globl _P3_2
                                     30 	.globl _P3_1
                                     31 	.globl _P3_0
                                     32 	.globl _P2_7
                                     33 	.globl _P2_6
                                     34 	.globl _P2_5
                                     35 	.globl _P2_4
                                     36 	.globl _P2_3
                                     37 	.globl _P2_2
                                     38 	.globl _P2_1
                                     39 	.globl _P2_0
                                     40 	.globl _P1_7
                                     41 	.globl _P1_6
                                     42 	.globl _P1_5
                                     43 	.globl _P1_4
                                     44 	.globl _P1_3
                                     45 	.globl _P1_2
                                     46 	.globl _P1_1
                                     47 	.globl _P1_0
                                     48 	.globl _P0_7
                                     49 	.globl _P0_6
                                     50 	.globl _P0_5
                                     51 	.globl _P0_4
                                     52 	.globl _P0_3
                                     53 	.globl _P0_2
                                     54 	.globl _P0_1
                                     55 	.globl _P0_0
                                     56 	.globl _EIRQ7
                                     57 	.globl _EIRQ6
                                     58 	.globl _EIRQ5
                                     59 	.globl _EIRQ4
                                     60 	.globl _EIRQ3
                                     61 	.globl _EIRQ2
                                     62 	.globl _EIRQ1
                                     63 	.globl _EIRQ0
                                     64 	.globl _T0CEN
                                     65 	.globl _T0ARL
                                     66 	.globl _T0IRQ
                                     67 	.globl _RXRDY
                                     68 	.globl _TXRDY
                                     69 	.globl _RXIRQ
                                     70 	.globl _TXIRQ
                                     71 	.globl _EEX
                                     72 	.globl _ET0
                                     73 	.globl _ES
                                     74 	.globl _EA
                                     75 	.globl _P3
                                     76 	.globl _P2
                                     77 	.globl _P1
                                     78 	.globl _P0
                                     79 	.globl _EXTINT
                                     80 	.globl _T0CH
                                     81 	.globl _T0CL
                                     82 	.globl _T0H
                                     83 	.globl _T0L
                                     84 	.globl _TCON
                                     85 	.globl _SBPH
                                     86 	.globl _SBPL
                                     87 	.globl _SBUF
                                     88 	.globl _SCON
                                     89 	.globl _IE
                                     90 	.globl _DPL
                                     91 	.globl _DPH
                                     92 	.globl _SP
                                     93 	.globl _PSW
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _xStreamBufferGenericCreate
                                     97 	.globl _vStreamBufferDelete
                                     98 	.globl _xStreamBufferReset
                                     99 	.globl _xStreamBufferSetTriggerLevel
                                    100 	.globl _xStreamBufferSpacesAvailable
                                    101 	.globl _xStreamBufferBytesAvailable
                                    102 	.globl _xStreamBufferSend
                                    103 	.globl _xStreamBufferSendFromISR
                                    104 	.globl _xStreamBufferReceive
                                    105 	.globl _xStreamBufferNextMessageLengthBytes
                                    106 	.globl _xStreamBufferReceiveFromISR
                                    107 	.globl _xStreamBufferIsEmpty
                                    108 	.globl _xStreamBufferIsFull
                                    109 	.globl _xStreamBufferSendCompletedFromISR
                                    110 	.globl _xStreamBufferReceiveCompletedFromISR
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
                                    271 ; overlayable bit register bank
                                    272 ;--------------------------------------------------------
                                    273 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        274 bits:
      000020                        275 	.ds 1
                           008000   276 	b0 = bits[0]
                           008100   277 	b1 = bits[1]
                           008200   278 	b2 = bits[2]
                           008300   279 	b3 = bits[3]
                           008400   280 	b4 = bits[4]
                           008500   281 	b5 = bits[5]
                           008600   282 	b6 = bits[6]
                           008700   283 	b7 = bits[7]
                                    284 ;--------------------------------------------------------
                                    285 ; internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area DSEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable items in internal ram 
                                    290 ;--------------------------------------------------------
                                    291 ;--------------------------------------------------------
                                    292 ; indirectly addressable internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area ISEG    (DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area IABS    (ABS,DATA)
                                    299 	.area IABS    (ABS,DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; bit data
                                    302 ;--------------------------------------------------------
                                    303 	.area BSEG    (BIT)
                                    304 ;--------------------------------------------------------
                                    305 ; paged external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area PSEG    (PAG,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XSEG    (XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XABS    (ABS,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external initialized ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT0 (CODE)
                                    321 	.area GSINIT1 (CODE)
                                    322 	.area GSINIT2 (CODE)
                                    323 	.area GSINIT3 (CODE)
                                    324 	.area GSINIT4 (CODE)
                                    325 	.area GSINIT5 (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area CSEG    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; global & static initialisations
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; Home
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
                                    340 	.area HOME    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'xStreamBufferGenericCreate'
                                    347 ;------------------------------------------------------------
                                    348 ;xTriggerLevelBytes        Allocated to stack - _bp -4
                                    349 ;xIsMessageBuffer          Allocated to stack - _bp -5
                                    350 ;xBufferSizeBytes          Allocated to stack - _bp +1
                                    351 ;pucAllocatedMemory        Allocated to stack - _bp +3
                                    352 ;ucFlags                   Allocated to stack - _bp +6
                                    353 ;------------------------------------------------------------
                           000000   354 	G$xStreamBufferGenericCreate$0$0 ==.
                           000000   355 	C$stream_buffer.c$219$0_0$119 ==.
                                    356 ;	src/FreeRTOS/stream_buffer.c:219: StreamBufferHandle_t xStreamBufferGenericCreate( size_t xBufferSizeBytes, size_t xTriggerLevelBytes, BaseType_t xIsMessageBuffer )
                                    357 ;	-----------------------------------------
                                    358 ;	 function xStreamBufferGenericCreate
                                    359 ;	-----------------------------------------
      004B9E                        360 _xStreamBufferGenericCreate:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
      004B9E C0 0C            [24]  369 	push	_bp
      004BA0 E5 81            [12]  370 	mov	a,sp
      004BA2 F5 0C            [12]  371 	mov	_bp,a
      004BA4 24 06            [12]  372 	add	a,#0x06
      004BA6 F5 81            [12]  373 	mov	sp,a
      004BA8 AE 82            [24]  374 	mov	r6,dpl
      004BAA AF 83            [24]  375 	mov	r7,dph
                           00000E   376 	C$stream_buffer.c$228$1_0$119 ==.
                                    377 ;	src/FreeRTOS/stream_buffer.c:228: if( xIsMessageBuffer == pdTRUE )
      004BAC E5 0C            [12]  378 	mov	a,_bp
      004BAE 24 FB            [12]  379 	add	a,#0xfb
      004BB0 F8               [12]  380 	mov	r0,a
      004BB1 B6 01 09         [24]  381 	cjne	@r0,#0x01,00102$
                           000016   382 	C$stream_buffer.c$231$2_0$120 ==.
                                    383 ;	src/FreeRTOS/stream_buffer.c:231: ucFlags = sbFLAGS_IS_MESSAGE_BUFFER;
      004BB4 E5 0C            [12]  384 	mov	a,_bp
      004BB6 24 06            [12]  385 	add	a,#0x06
      004BB8 F8               [12]  386 	mov	r0,a
      004BB9 76 01            [12]  387 	mov	@r0,#0x01
      004BBB 80 07            [24]  388 	sjmp	00103$
      004BBD                        389 00102$:
                           00001F   390 	C$stream_buffer.c$237$2_0$121 ==.
                                    391 ;	src/FreeRTOS/stream_buffer.c:237: ucFlags = 0;
      004BBD E5 0C            [12]  392 	mov	a,_bp
      004BBF 24 06            [12]  393 	add	a,#0x06
      004BC1 F8               [12]  394 	mov	r0,a
      004BC2 76 00            [12]  395 	mov	@r0,#0x00
      004BC4                        396 00103$:
                           000026   397 	C$stream_buffer.c$244$1_0$119 ==.
                                    398 ;	src/FreeRTOS/stream_buffer.c:244: if( xTriggerLevelBytes == ( size_t ) 0 )
      004BC4 E5 0C            [12]  399 	mov	a,_bp
      004BC6 24 FC            [12]  400 	add	a,#0xfc
      004BC8 F8               [12]  401 	mov	r0,a
      004BC9 E6               [12]  402 	mov	a,@r0
      004BCA 08               [12]  403 	inc	r0
      004BCB 46               [12]  404 	orl	a,@r0
      004BCC 70 0A            [24]  405 	jnz	00105$
                           000030   406 	C$stream_buffer.c$246$2_0$122 ==.
                                    407 ;	src/FreeRTOS/stream_buffer.c:246: xTriggerLevelBytes = ( size_t ) 1;
      004BCE E5 0C            [12]  408 	mov	a,_bp
      004BD0 24 FC            [12]  409 	add	a,#0xfc
      004BD2 F8               [12]  410 	mov	r0,a
      004BD3 76 01            [12]  411 	mov	@r0,#0x01
      004BD5 08               [12]  412 	inc	r0
      004BD6 76 00            [12]  413 	mov	@r0,#0x00
      004BD8                        414 00105$:
                           00003A   415 	C$stream_buffer.c$257$1_0$119 ==.
                                    416 ;	src/FreeRTOS/stream_buffer.c:257: xBufferSizeBytes++;
      004BD8 A8 0C            [24]  417 	mov	r0,_bp
      004BDA 08               [12]  418 	inc	r0
      004BDB 74 01            [12]  419 	mov	a,#0x01
      004BDD 2E               [12]  420 	add	a,r6
      004BDE F6               [12]  421 	mov	@r0,a
      004BDF E4               [12]  422 	clr	a
      004BE0 3F               [12]  423 	addc	a,r7
      004BE1 08               [12]  424 	inc	r0
      004BE2 F6               [12]  425 	mov	@r0,a
                           000045   426 	C$stream_buffer.c$258$1_0$119 ==.
                                    427 ;	src/FreeRTOS/stream_buffer.c:258: pucAllocatedMemory = ( uint8_t * ) pvPortMalloc( xBufferSizeBytes + sizeof( StreamBuffer_t ) ); /*lint !e9079 malloc() only returns void*. */
      004BE3 A8 0C            [24]  428 	mov	r0,_bp
      004BE5 08               [12]  429 	inc	r0
      004BE6 74 12            [12]  430 	mov	a,#0x12
      004BE8 26               [12]  431 	add	a,@r0
      004BE9 FB               [12]  432 	mov	r3,a
      004BEA E4               [12]  433 	clr	a
      004BEB 08               [12]  434 	inc	r0
      004BEC 36               [12]  435 	addc	a,@r0
      004BED FC               [12]  436 	mov	r4,a
      004BEE 8B 82            [24]  437 	mov	dpl,r3
      004BF0 8C 83            [24]  438 	mov	dph,r4
      004BF2 12 61 84         [24]  439 	lcall	_pvPortMalloc
      004BF5 AA 82            [24]  440 	mov	r2,dpl
      004BF7 AB 83            [24]  441 	mov	r3,dph
      004BF9 AC F0            [24]  442 	mov	r4,b
      004BFB E5 0C            [12]  443 	mov	a,_bp
      004BFD 24 03            [12]  444 	add	a,#0x03
      004BFF F8               [12]  445 	mov	r0,a
      004C00 A6 02            [24]  446 	mov	@r0,ar2
      004C02 08               [12]  447 	inc	r0
      004C03 A6 03            [24]  448 	mov	@r0,ar3
      004C05 08               [12]  449 	inc	r0
      004C06 A6 04            [24]  450 	mov	@r0,ar4
                           00006A   451 	C$stream_buffer.c$260$1_0$119 ==.
                                    452 ;	src/FreeRTOS/stream_buffer.c:260: if( pucAllocatedMemory != NULL )
      004C08 E5 0C            [12]  453 	mov	a,_bp
      004C0A 24 03            [12]  454 	add	a,#0x03
      004C0C F8               [12]  455 	mov	r0,a
      004C0D E6               [12]  456 	mov	a,@r0
      004C0E 08               [12]  457 	inc	r0
      004C0F 46               [12]  458 	orl	a,@r0
      004C10 60 50            [24]  459 	jz	00107$
                           000074   460 	C$stream_buffer.c$263$2_0$123 ==.
                                    461 ;	src/FreeRTOS/stream_buffer.c:263: pucAllocatedMemory + sizeof( StreamBuffer_t ),  /* Storage area follows. */ /*lint !e9016 Indexing past structure valid for uint8_t pointer, also storage area has no alignment requirement. */
      004C12 E5 0C            [12]  462 	mov	a,_bp
      004C14 24 03            [12]  463 	add	a,#0x03
      004C16 F8               [12]  464 	mov	r0,a
      004C17 74 12            [12]  465 	mov	a,#0x12
      004C19 26               [12]  466 	add	a,@r0
      004C1A FD               [12]  467 	mov	r5,a
      004C1B E4               [12]  468 	clr	a
      004C1C 08               [12]  469 	inc	r0
      004C1D 36               [12]  470 	addc	a,@r0
      004C1E FE               [12]  471 	mov	r6,a
      004C1F 08               [12]  472 	inc	r0
      004C20 86 07            [24]  473 	mov	ar7,@r0
                           000084   474 	C$stream_buffer.c$262$2_0$123 ==.
                                    475 ;	src/FreeRTOS/stream_buffer.c:262: prvInitialiseNewStreamBuffer( ( StreamBuffer_t * ) pucAllocatedMemory, /* Structure at the start of the allocated memory. */ /*lint !e9087 Safe cast as allocated memory is aligned. */ /*lint !e826 Area is not too small and alignment is guaranteed provided malloc() behaves as expected and returns aligned buffer. */
      004C22 E5 0C            [12]  476 	mov	a,_bp
      004C24 24 03            [12]  477 	add	a,#0x03
      004C26 F8               [12]  478 	mov	r0,a
      004C27 86 02            [24]  479 	mov	ar2,@r0
      004C29 08               [12]  480 	inc	r0
      004C2A 86 03            [24]  481 	mov	ar3,@r0
      004C2C 08               [12]  482 	inc	r0
      004C2D 86 04            [24]  483 	mov	ar4,@r0
      004C2F E5 0C            [12]  484 	mov	a,_bp
      004C31 24 06            [12]  485 	add	a,#0x06
      004C33 F8               [12]  486 	mov	r0,a
      004C34 E6               [12]  487 	mov	a,@r0
      004C35 C0 E0            [24]  488 	push	acc
      004C37 E5 0C            [12]  489 	mov	a,_bp
      004C39 24 FC            [12]  490 	add	a,#0xfc
      004C3B F8               [12]  491 	mov	r0,a
      004C3C E6               [12]  492 	mov	a,@r0
      004C3D C0 E0            [24]  493 	push	acc
      004C3F 08               [12]  494 	inc	r0
      004C40 E6               [12]  495 	mov	a,@r0
      004C41 C0 E0            [24]  496 	push	acc
      004C43 A8 0C            [24]  497 	mov	r0,_bp
      004C45 08               [12]  498 	inc	r0
      004C46 E6               [12]  499 	mov	a,@r0
      004C47 C0 E0            [24]  500 	push	acc
      004C49 08               [12]  501 	inc	r0
      004C4A E6               [12]  502 	mov	a,@r0
      004C4B C0 E0            [24]  503 	push	acc
      004C4D C0 05            [24]  504 	push	ar5
      004C4F C0 06            [24]  505 	push	ar6
      004C51 C0 07            [24]  506 	push	ar7
      004C53 8A 82            [24]  507 	mov	dpl,r2
      004C55 8B 83            [24]  508 	mov	dph,r3
      004C57 8C F0            [24]  509 	mov	b,r4
      004C59 12 60 D6         [24]  510 	lcall	_prvInitialiseNewStreamBuffer
      004C5C E5 81            [12]  511 	mov	a,sp
      004C5E 24 F8            [12]  512 	add	a,#0xf8
      004C60 F5 81            [12]  513 	mov	sp,a
      004C62                        514 00107$:
                           0000C4   515 	C$stream_buffer.c$275$1_0$119 ==.
                                    516 ;	src/FreeRTOS/stream_buffer.c:275: return ( StreamBufferHandle_t ) pucAllocatedMemory; /*lint !e9087 !e826 Safe cast as allocated memory is aligned. */
      004C62 E5 0C            [12]  517 	mov	a,_bp
      004C64 24 03            [12]  518 	add	a,#0x03
      004C66 F8               [12]  519 	mov	r0,a
      004C67 86 02            [24]  520 	mov	ar2,@r0
      004C69 08               [12]  521 	inc	r0
      004C6A 86 03            [24]  522 	mov	ar3,@r0
      004C6C 08               [12]  523 	inc	r0
      004C6D 86 04            [24]  524 	mov	ar4,@r0
      004C6F 8A 82            [24]  525 	mov	dpl,r2
      004C71 8B 83            [24]  526 	mov	dph,r3
      004C73 8C F0            [24]  527 	mov	b,r4
                           0000D7   528 	C$stream_buffer.c$276$1_0$119 ==.
                                    529 ;	src/FreeRTOS/stream_buffer.c:276: }
      004C75 85 0C 81         [24]  530 	mov	sp,_bp
      004C78 D0 0C            [24]  531 	pop	_bp
                           0000DC   532 	C$stream_buffer.c$276$1_0$119 ==.
                           0000DC   533 	XG$xStreamBufferGenericCreate$0$0 ==.
      004C7A 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'vStreamBufferDelete'
                                    537 ;------------------------------------------------------------
                                    538 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                    539 ;pxStreamBuffer            Allocated to registers r2 r3 r4 
                                    540 ;------------------------------------------------------------
                           0000DD   541 	G$vStreamBufferDelete$0$0 ==.
                           0000DD   542 	C$stream_buffer.c$359$1_0$126 ==.
                                    543 ;	src/FreeRTOS/stream_buffer.c:359: void vStreamBufferDelete( StreamBufferHandle_t xStreamBuffer )
                                    544 ;	-----------------------------------------
                                    545 ;	 function vStreamBufferDelete
                                    546 ;	-----------------------------------------
      004C7B                        547 _vStreamBufferDelete:
      004C7B AD 82            [24]  548 	mov	r5,dpl
      004C7D AE 83            [24]  549 	mov	r6,dph
      004C7F AF F0            [24]  550 	mov	r7,b
                           0000E3   551 	C$stream_buffer.c$361$2_0$126 ==.
                                    552 ;	src/FreeRTOS/stream_buffer.c:361: StreamBuffer_t * pxStreamBuffer = xStreamBuffer;
      004C81 8D 02            [24]  553 	mov	ar2,r5
      004C83 8E 03            [24]  554 	mov	ar3,r6
      004C85 8F 04            [24]  555 	mov	ar4,r7
                           0000E9   556 	C$stream_buffer.c$367$1_0$126 ==.
                                    557 ;	src/FreeRTOS/stream_buffer.c:367: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_STATICALLY_ALLOCATED ) == ( uint8_t ) pdFALSE )
      004C87 74 11            [12]  558 	mov	a,#0x11
      004C89 2D               [12]  559 	add	a,r5
      004C8A FD               [12]  560 	mov	r5,a
      004C8B E4               [12]  561 	clr	a
      004C8C 3E               [12]  562 	addc	a,r6
      004C8D FE               [12]  563 	mov	r6,a
      004C8E 8D 82            [24]  564 	mov	dpl,r5
      004C90 8E 83            [24]  565 	mov	dph,r6
      004C92 8F F0            [24]  566 	mov	b,r7
      004C94 12 70 5A         [24]  567 	lcall	__gptrget
      004C97 20 E1 11         [24]  568 	jb	acc.1,00102$
                           0000FC   569 	C$stream_buffer.c$373$3_0$128 ==.
                                    570 ;	src/FreeRTOS/stream_buffer.c:373: vPortFree( ( void * ) pxStreamBuffer ); /*lint !e9087 Standard free() semantics require void *, plus pxStreamBuffer was allocated by pvPortMalloc(). */
      004C9A 8A 05            [24]  571 	mov	ar5,r2
      004C9C 8B 06            [24]  572 	mov	ar6,r3
      004C9E 8C 07            [24]  573 	mov	ar7,r4
      004CA0 8D 82            [24]  574 	mov	dpl,r5
      004CA2 8E 83            [24]  575 	mov	dph,r6
      004CA4 8F F0            [24]  576 	mov	b,r7
      004CA6 12 62 2D         [24]  577 	lcall	_vPortFree
      004CA9 80 18            [24]  578 	sjmp	00104$
      004CAB                        579 00102$:
                           00010D   580 	C$stream_buffer.c$387$2_0$129 ==.
                                    581 ;	src/FreeRTOS/stream_buffer.c:387: ( void ) memset( pxStreamBuffer, 0x00, sizeof( StreamBuffer_t ) );
      004CAB 74 12            [12]  582 	mov	a,#0x12
      004CAD C0 E0            [24]  583 	push	acc
      004CAF E4               [12]  584 	clr	a
      004CB0 C0 E0            [24]  585 	push	acc
      004CB2 C0 E0            [24]  586 	push	acc
      004CB4 8A 82            [24]  587 	mov	dpl,r2
      004CB6 8B 83            [24]  588 	mov	dph,r3
      004CB8 8C F0            [24]  589 	mov	b,r4
      004CBA 12 66 DB         [24]  590 	lcall	_memset
      004CBD 15 81            [12]  591 	dec	sp
      004CBF 15 81            [12]  592 	dec	sp
      004CC1 15 81            [12]  593 	dec	sp
      004CC3                        594 00104$:
                           000125   595 	C$stream_buffer.c$389$1_0$126 ==.
                                    596 ;	src/FreeRTOS/stream_buffer.c:389: }
                           000125   597 	C$stream_buffer.c$389$1_0$126 ==.
                           000125   598 	XG$vStreamBufferDelete$0$0 ==.
      004CC3 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'xStreamBufferReset'
                                    602 ;------------------------------------------------------------
                                    603 ;xStreamBuffer             Allocated to stack - _bp +1
                                    604 ;pxStreamBuffer            Allocated to registers 
                                    605 ;xReturn                   Allocated to registers r7 
                                    606 ;sloc0                     Allocated to stack - _bp +4
                                    607 ;sloc1                     Allocated to stack - _bp +5
                                    608 ;------------------------------------------------------------
                           000126   609 	G$xStreamBufferReset$0$0 ==.
                           000126   610 	C$stream_buffer.c$392$1_0$131 ==.
                                    611 ;	src/FreeRTOS/stream_buffer.c:392: BaseType_t xStreamBufferReset( StreamBufferHandle_t xStreamBuffer )
                                    612 ;	-----------------------------------------
                                    613 ;	 function xStreamBufferReset
                                    614 ;	-----------------------------------------
      004CC4                        615 _xStreamBufferReset:
      004CC4 C0 0C            [24]  616 	push	_bp
      004CC6 85 81 0C         [24]  617 	mov	_bp,sp
      004CC9 C0 82            [24]  618 	push	dpl
      004CCB C0 83            [24]  619 	push	dph
      004CCD C0 F0            [24]  620 	push	b
      004CCF 05 81            [12]  621 	inc	sp
      004CD1 05 81            [12]  622 	inc	sp
      004CD3 05 81            [12]  623 	inc	sp
                           000137   624 	C$stream_buffer.c$395$2_0$131 ==.
                                    625 ;	src/FreeRTOS/stream_buffer.c:395: BaseType_t xReturn = pdFAIL;
      004CD5 7F 00            [12]  626 	mov	r7,#0x00
                           000139   627 	C$stream_buffer.c$412$1_0$131 ==.
                                    628 ;	src/FreeRTOS/stream_buffer.c:412: taskENTER_CRITICAL();
      004CD7 C0 E0            [24]  629 	push ACC 
      004CD9 C0 A8            [24]  630 	push IE 
                                    631 ;	assignBit
      004CDB C2 AF            [12]  632 	clr	_EA
                           00013F   633 	C$stream_buffer.c$414$2_0$132 ==.
                                    634 ;	src/FreeRTOS/stream_buffer.c:414: if( pxStreamBuffer->xTaskWaitingToReceive == NULL )
      004CDD A8 0C            [24]  635 	mov	r0,_bp
      004CDF 08               [12]  636 	inc	r0
      004CE0 74 08            [12]  637 	mov	a,#0x08
      004CE2 26               [12]  638 	add	a,@r0
      004CE3 FA               [12]  639 	mov	r2,a
      004CE4 E4               [12]  640 	clr	a
      004CE5 08               [12]  641 	inc	r0
      004CE6 36               [12]  642 	addc	a,@r0
      004CE7 FB               [12]  643 	mov	r3,a
      004CE8 08               [12]  644 	inc	r0
      004CE9 86 04            [24]  645 	mov	ar4,@r0
      004CEB 8A 82            [24]  646 	mov	dpl,r2
      004CED 8B 83            [24]  647 	mov	dph,r3
      004CEF 8C F0            [24]  648 	mov	b,r4
      004CF1 12 70 5A         [24]  649 	lcall	__gptrget
      004CF4 FA               [12]  650 	mov	r2,a
      004CF5 A3               [24]  651 	inc	dptr
      004CF6 12 70 5A         [24]  652 	lcall	__gptrget
      004CF9 FB               [12]  653 	mov	r3,a
      004CFA A3               [24]  654 	inc	dptr
      004CFB 12 70 5A         [24]  655 	lcall	__gptrget
      004CFE FC               [12]  656 	mov	r4,a
      004CFF EA               [12]  657 	mov	a,r2
      004D00 4B               [12]  658 	orl	a,r3
      004D01 60 03            [24]  659 	jz	00115$
      004D03 02 4D E2         [24]  660 	ljmp	00104$
      004D06                        661 00115$:
                           000168   662 	C$stream_buffer.c$416$3_0$133 ==.
                                    663 ;	src/FreeRTOS/stream_buffer.c:416: if( pxStreamBuffer->xTaskWaitingToSend == NULL )
      004D06 A8 0C            [24]  664 	mov	r0,_bp
      004D08 08               [12]  665 	inc	r0
      004D09 74 0B            [12]  666 	mov	a,#0x0b
      004D0B 26               [12]  667 	add	a,@r0
      004D0C FA               [12]  668 	mov	r2,a
      004D0D E4               [12]  669 	clr	a
      004D0E 08               [12]  670 	inc	r0
      004D0F 36               [12]  671 	addc	a,@r0
      004D10 FB               [12]  672 	mov	r3,a
      004D11 08               [12]  673 	inc	r0
      004D12 86 04            [24]  674 	mov	ar4,@r0
      004D14 8A 82            [24]  675 	mov	dpl,r2
      004D16 8B 83            [24]  676 	mov	dph,r3
      004D18 8C F0            [24]  677 	mov	b,r4
      004D1A 12 70 5A         [24]  678 	lcall	__gptrget
      004D1D FA               [12]  679 	mov	r2,a
      004D1E A3               [24]  680 	inc	dptr
      004D1F 12 70 5A         [24]  681 	lcall	__gptrget
      004D22 FB               [12]  682 	mov	r3,a
      004D23 A3               [24]  683 	inc	dptr
      004D24 12 70 5A         [24]  684 	lcall	__gptrget
      004D27 FC               [12]  685 	mov	r4,a
      004D28 EA               [12]  686 	mov	a,r2
      004D29 4B               [12]  687 	orl	a,r3
      004D2A 60 03            [24]  688 	jz	00116$
      004D2C 02 4D E2         [24]  689 	ljmp	00104$
      004D2F                        690 00116$:
                           000191   691 	C$stream_buffer.c$422$4_0$134 ==.
                                    692 ;	src/FreeRTOS/stream_buffer.c:422: pxStreamBuffer->ucFlags );
      004D2F A8 0C            [24]  693 	mov	r0,_bp
      004D31 08               [12]  694 	inc	r0
      004D32 74 11            [12]  695 	mov	a,#0x11
      004D34 26               [12]  696 	add	a,@r0
      004D35 FA               [12]  697 	mov	r2,a
      004D36 E4               [12]  698 	clr	a
      004D37 08               [12]  699 	inc	r0
      004D38 36               [12]  700 	addc	a,@r0
      004D39 FB               [12]  701 	mov	r3,a
      004D3A 08               [12]  702 	inc	r0
      004D3B 86 04            [24]  703 	mov	ar4,@r0
      004D3D 8A 82            [24]  704 	mov	dpl,r2
      004D3F 8B 83            [24]  705 	mov	dph,r3
      004D41 8C F0            [24]  706 	mov	b,r4
      004D43 E5 0C            [12]  707 	mov	a,_bp
      004D45 24 04            [12]  708 	add	a,#0x04
      004D47 F8               [12]  709 	mov	r0,a
      004D48 12 70 5A         [24]  710 	lcall	__gptrget
      004D4B F6               [12]  711 	mov	@r0,a
                           0001AE   712 	C$stream_buffer.c$421$4_0$134 ==.
                                    713 ;	src/FreeRTOS/stream_buffer.c:421: pxStreamBuffer->xTriggerLevelBytes,
      004D4C A8 0C            [24]  714 	mov	r0,_bp
      004D4E 08               [12]  715 	inc	r0
      004D4F 74 06            [12]  716 	mov	a,#0x06
      004D51 26               [12]  717 	add	a,@r0
      004D52 FB               [12]  718 	mov	r3,a
      004D53 E4               [12]  719 	clr	a
      004D54 08               [12]  720 	inc	r0
      004D55 36               [12]  721 	addc	a,@r0
      004D56 FC               [12]  722 	mov	r4,a
      004D57 08               [12]  723 	inc	r0
      004D58 86 07            [24]  724 	mov	ar7,@r0
      004D5A 8B 82            [24]  725 	mov	dpl,r3
      004D5C 8C 83            [24]  726 	mov	dph,r4
      004D5E 8F F0            [24]  727 	mov	b,r7
      004D60 12 70 5A         [24]  728 	lcall	__gptrget
      004D63 FB               [12]  729 	mov	r3,a
      004D64 A3               [24]  730 	inc	dptr
      004D65 12 70 5A         [24]  731 	lcall	__gptrget
      004D68 FC               [12]  732 	mov	r4,a
                           0001CB   733 	C$stream_buffer.c$420$4_0$134 ==.
                                    734 ;	src/FreeRTOS/stream_buffer.c:420: pxStreamBuffer->xLength,
      004D69 A8 0C            [24]  735 	mov	r0,_bp
      004D6B 08               [12]  736 	inc	r0
      004D6C 74 04            [12]  737 	mov	a,#0x04
      004D6E 26               [12]  738 	add	a,@r0
      004D6F FD               [12]  739 	mov	r5,a
      004D70 E4               [12]  740 	clr	a
      004D71 08               [12]  741 	inc	r0
      004D72 36               [12]  742 	addc	a,@r0
      004D73 FE               [12]  743 	mov	r6,a
      004D74 08               [12]  744 	inc	r0
      004D75 86 07            [24]  745 	mov	ar7,@r0
      004D77 8D 82            [24]  746 	mov	dpl,r5
      004D79 8E 83            [24]  747 	mov	dph,r6
      004D7B 8F F0            [24]  748 	mov	b,r7
      004D7D E5 0C            [12]  749 	mov	a,_bp
      004D7F 24 05            [12]  750 	add	a,#0x05
      004D81 F8               [12]  751 	mov	r0,a
      004D82 12 70 5A         [24]  752 	lcall	__gptrget
      004D85 F6               [12]  753 	mov	@r0,a
      004D86 A3               [24]  754 	inc	dptr
      004D87 12 70 5A         [24]  755 	lcall	__gptrget
      004D8A 08               [12]  756 	inc	r0
      004D8B F6               [12]  757 	mov	@r0,a
                           0001EE   758 	C$stream_buffer.c$419$4_0$134 ==.
                                    759 ;	src/FreeRTOS/stream_buffer.c:419: pxStreamBuffer->pucBuffer,
      004D8C A8 0C            [24]  760 	mov	r0,_bp
      004D8E 08               [12]  761 	inc	r0
      004D8F 74 0E            [12]  762 	mov	a,#0x0e
      004D91 26               [12]  763 	add	a,@r0
      004D92 FA               [12]  764 	mov	r2,a
      004D93 E4               [12]  765 	clr	a
      004D94 08               [12]  766 	inc	r0
      004D95 36               [12]  767 	addc	a,@r0
      004D96 FE               [12]  768 	mov	r6,a
      004D97 08               [12]  769 	inc	r0
      004D98 86 07            [24]  770 	mov	ar7,@r0
      004D9A 8A 82            [24]  771 	mov	dpl,r2
      004D9C 8E 83            [24]  772 	mov	dph,r6
      004D9E 8F F0            [24]  773 	mov	b,r7
      004DA0 12 70 5A         [24]  774 	lcall	__gptrget
      004DA3 FA               [12]  775 	mov	r2,a
      004DA4 A3               [24]  776 	inc	dptr
      004DA5 12 70 5A         [24]  777 	lcall	__gptrget
      004DA8 FE               [12]  778 	mov	r6,a
      004DA9 A3               [24]  779 	inc	dptr
      004DAA 12 70 5A         [24]  780 	lcall	__gptrget
      004DAD FF               [12]  781 	mov	r7,a
                           000210   782 	C$stream_buffer.c$418$4_0$134 ==.
                                    783 ;	src/FreeRTOS/stream_buffer.c:418: prvInitialiseNewStreamBuffer( pxStreamBuffer,
      004DAE E5 0C            [12]  784 	mov	a,_bp
      004DB0 24 04            [12]  785 	add	a,#0x04
      004DB2 F8               [12]  786 	mov	r0,a
      004DB3 E6               [12]  787 	mov	a,@r0
      004DB4 C0 E0            [24]  788 	push	acc
      004DB6 C0 03            [24]  789 	push	ar3
      004DB8 C0 04            [24]  790 	push	ar4
      004DBA E5 0C            [12]  791 	mov	a,_bp
      004DBC 24 05            [12]  792 	add	a,#0x05
      004DBE F8               [12]  793 	mov	r0,a
      004DBF E6               [12]  794 	mov	a,@r0
      004DC0 C0 E0            [24]  795 	push	acc
      004DC2 08               [12]  796 	inc	r0
      004DC3 E6               [12]  797 	mov	a,@r0
      004DC4 C0 E0            [24]  798 	push	acc
      004DC6 C0 02            [24]  799 	push	ar2
      004DC8 C0 06            [24]  800 	push	ar6
      004DCA C0 07            [24]  801 	push	ar7
      004DCC A8 0C            [24]  802 	mov	r0,_bp
      004DCE 08               [12]  803 	inc	r0
      004DCF 86 82            [24]  804 	mov	dpl,@r0
      004DD1 08               [12]  805 	inc	r0
      004DD2 86 83            [24]  806 	mov	dph,@r0
      004DD4 08               [12]  807 	inc	r0
      004DD5 86 F0            [24]  808 	mov	b,@r0
      004DD7 12 60 D6         [24]  809 	lcall	_prvInitialiseNewStreamBuffer
      004DDA E5 81            [12]  810 	mov	a,sp
      004DDC 24 F8            [12]  811 	add	a,#0xf8
      004DDE F5 81            [12]  812 	mov	sp,a
                           000242   813 	C$stream_buffer.c$423$4_0$134 ==.
                                    814 ;	src/FreeRTOS/stream_buffer.c:423: xReturn = pdPASS;
      004DE0 7F 01            [12]  815 	mov	r7,#0x01
      004DE2                        816 00104$:
                           000244   817 	C$stream_buffer.c$435$1_0$131 ==.
                                    818 ;	src/FreeRTOS/stream_buffer.c:435: taskEXIT_CRITICAL();
      004DE2 D0 E0            [24]  819 	pop ACC 
      004DE4 53 E0 80         [24]  820 	anl	_ACC,#0x80
      004DE7 E5 E0            [12]  821 	mov	a,_ACC
      004DE9 42 A8            [12]  822 	orl	_IE,a
      004DEB D0 E0            [24]  823 	pop ACC 
                           00024F   824 	C$stream_buffer.c$437$1_0$131 ==.
                                    825 ;	src/FreeRTOS/stream_buffer.c:437: return xReturn;
      004DED 8F 82            [24]  826 	mov	dpl,r7
                           000251   827 	C$stream_buffer.c$438$1_0$131 ==.
                                    828 ;	src/FreeRTOS/stream_buffer.c:438: }
      004DEF 85 0C 81         [24]  829 	mov	sp,_bp
      004DF2 D0 0C            [24]  830 	pop	_bp
                           000256   831 	C$stream_buffer.c$438$1_0$131 ==.
                           000256   832 	XG$xStreamBufferReset$0$0 ==.
      004DF4 22               [24]  833 	ret
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'xStreamBufferSetTriggerLevel'
                                    836 ;------------------------------------------------------------
                                    837 ;xTriggerLevel             Allocated to stack - _bp -4
                                    838 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                    839 ;pxStreamBuffer            Allocated to registers r5 r6 r7 
                                    840 ;xReturn                   Allocated to registers r7 
                                    841 ;------------------------------------------------------------
                           000257   842 	G$xStreamBufferSetTriggerLevel$0$0 ==.
                           000257   843 	C$stream_buffer.c$441$1_0$136 ==.
                                    844 ;	src/FreeRTOS/stream_buffer.c:441: BaseType_t xStreamBufferSetTriggerLevel( StreamBufferHandle_t xStreamBuffer, size_t xTriggerLevel )
                                    845 ;	-----------------------------------------
                                    846 ;	 function xStreamBufferSetTriggerLevel
                                    847 ;	-----------------------------------------
      004DF5                        848 _xStreamBufferSetTriggerLevel:
      004DF5 C0 0C            [24]  849 	push	_bp
      004DF7 85 81 0C         [24]  850 	mov	_bp,sp
      004DFA AD 82            [24]  851 	mov	r5,dpl
      004DFC AE 83            [24]  852 	mov	r6,dph
      004DFE AF F0            [24]  853 	mov	r7,b
                           000262   854 	C$stream_buffer.c$443$2_0$136 ==.
                                    855 ;	src/FreeRTOS/stream_buffer.c:443: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
                           000262   856 	C$stream_buffer.c$449$1_0$136 ==.
                                    857 ;	src/FreeRTOS/stream_buffer.c:449: if( xTriggerLevel == ( size_t ) 0 )
      004E00 E5 0C            [12]  858 	mov	a,_bp
      004E02 24 FC            [12]  859 	add	a,#0xfc
      004E04 F8               [12]  860 	mov	r0,a
      004E05 E6               [12]  861 	mov	a,@r0
      004E06 08               [12]  862 	inc	r0
      004E07 46               [12]  863 	orl	a,@r0
      004E08 70 0A            [24]  864 	jnz	00102$
                           00026C   865 	C$stream_buffer.c$451$2_0$137 ==.
                                    866 ;	src/FreeRTOS/stream_buffer.c:451: xTriggerLevel = ( size_t ) 1;
      004E0A E5 0C            [12]  867 	mov	a,_bp
      004E0C 24 FC            [12]  868 	add	a,#0xfc
      004E0E F8               [12]  869 	mov	r0,a
      004E0F 76 01            [12]  870 	mov	@r0,#0x01
      004E11 08               [12]  871 	inc	r0
      004E12 76 00            [12]  872 	mov	@r0,#0x00
      004E14                        873 00102$:
                           000276   874 	C$stream_buffer.c$456$1_0$136 ==.
                                    875 ;	src/FreeRTOS/stream_buffer.c:456: if( xTriggerLevel <= pxStreamBuffer->xLength )
      004E14 74 04            [12]  876 	mov	a,#0x04
      004E16 2D               [12]  877 	add	a,r5
      004E17 FA               [12]  878 	mov	r2,a
      004E18 E4               [12]  879 	clr	a
      004E19 3E               [12]  880 	addc	a,r6
      004E1A FB               [12]  881 	mov	r3,a
      004E1B 8F 04            [24]  882 	mov	ar4,r7
      004E1D 8A 82            [24]  883 	mov	dpl,r2
      004E1F 8B 83            [24]  884 	mov	dph,r3
      004E21 8C F0            [24]  885 	mov	b,r4
      004E23 12 70 5A         [24]  886 	lcall	__gptrget
      004E26 FA               [12]  887 	mov	r2,a
      004E27 A3               [24]  888 	inc	dptr
      004E28 12 70 5A         [24]  889 	lcall	__gptrget
      004E2B FB               [12]  890 	mov	r3,a
      004E2C E5 0C            [12]  891 	mov	a,_bp
      004E2E 24 FC            [12]  892 	add	a,#0xfc
      004E30 F8               [12]  893 	mov	r0,a
      004E31 C3               [12]  894 	clr	c
      004E32 EA               [12]  895 	mov	a,r2
      004E33 96               [12]  896 	subb	a,@r0
      004E34 EB               [12]  897 	mov	a,r3
      004E35 08               [12]  898 	inc	r0
      004E36 96               [12]  899 	subb	a,@r0
      004E37 40 20            [24]  900 	jc	00104$
                           00029B   901 	C$stream_buffer.c$458$2_0$138 ==.
                                    902 ;	src/FreeRTOS/stream_buffer.c:458: pxStreamBuffer->xTriggerLevelBytes = xTriggerLevel;
      004E39 74 06            [12]  903 	mov	a,#0x06
      004E3B 2D               [12]  904 	add	a,r5
      004E3C FD               [12]  905 	mov	r5,a
      004E3D E4               [12]  906 	clr	a
      004E3E 3E               [12]  907 	addc	a,r6
      004E3F FE               [12]  908 	mov	r6,a
      004E40 8D 82            [24]  909 	mov	dpl,r5
      004E42 8E 83            [24]  910 	mov	dph,r6
      004E44 8F F0            [24]  911 	mov	b,r7
      004E46 E5 0C            [12]  912 	mov	a,_bp
      004E48 24 FC            [12]  913 	add	a,#0xfc
      004E4A F8               [12]  914 	mov	r0,a
      004E4B E6               [12]  915 	mov	a,@r0
      004E4C 12 66 A0         [24]  916 	lcall	__gptrput
      004E4F A3               [24]  917 	inc	dptr
      004E50 08               [12]  918 	inc	r0
      004E51 E6               [12]  919 	mov	a,@r0
      004E52 12 66 A0         [24]  920 	lcall	__gptrput
                           0002B7   921 	C$stream_buffer.c$459$2_0$138 ==.
                                    922 ;	src/FreeRTOS/stream_buffer.c:459: xReturn = pdPASS;
      004E55 7F 01            [12]  923 	mov	r7,#0x01
      004E57 80 02            [24]  924 	sjmp	00105$
      004E59                        925 00104$:
                           0002BB   926 	C$stream_buffer.c$463$2_0$139 ==.
                                    927 ;	src/FreeRTOS/stream_buffer.c:463: xReturn = pdFALSE;
      004E59 7F 00            [12]  928 	mov	r7,#0x00
      004E5B                        929 00105$:
                           0002BD   930 	C$stream_buffer.c$466$1_0$136 ==.
                                    931 ;	src/FreeRTOS/stream_buffer.c:466: return xReturn;
      004E5B 8F 82            [24]  932 	mov	dpl,r7
                           0002BF   933 	C$stream_buffer.c$467$1_0$136 ==.
                                    934 ;	src/FreeRTOS/stream_buffer.c:467: }
      004E5D D0 0C            [24]  935 	pop	_bp
                           0002C1   936 	C$stream_buffer.c$467$1_0$136 ==.
                           0002C1   937 	XG$xStreamBufferSetTriggerLevel$0$0 ==.
      004E5F 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'xStreamBufferSpacesAvailable'
                                    941 ;------------------------------------------------------------
                                    942 ;xStreamBuffer             Allocated to stack - _bp +1
                                    943 ;pxStreamBuffer            Allocated to registers 
                                    944 ;xSpace                    Allocated to registers r5 r6 
                                    945 ;sloc0                     Allocated to stack - _bp +4
                                    946 ;------------------------------------------------------------
                           0002C2   947 	G$xStreamBufferSpacesAvailable$0$0 ==.
                           0002C2   948 	C$stream_buffer.c$470$1_0$141 ==.
                                    949 ;	src/FreeRTOS/stream_buffer.c:470: size_t xStreamBufferSpacesAvailable( StreamBufferHandle_t xStreamBuffer )
                                    950 ;	-----------------------------------------
                                    951 ;	 function xStreamBufferSpacesAvailable
                                    952 ;	-----------------------------------------
      004E60                        953 _xStreamBufferSpacesAvailable:
      004E60 C0 0C            [24]  954 	push	_bp
      004E62 85 81 0C         [24]  955 	mov	_bp,sp
      004E65 C0 82            [24]  956 	push	dpl
      004E67 C0 83            [24]  957 	push	dph
      004E69 C0 F0            [24]  958 	push	b
      004E6B 05 81            [12]  959 	inc	sp
      004E6D 05 81            [12]  960 	inc	sp
                           0002D1   961 	C$stream_buffer.c$477$1_0$141 ==.
                                    962 ;	src/FreeRTOS/stream_buffer.c:477: xSpace = pxStreamBuffer->xLength + pxStreamBuffer->xTail;
      004E6F A8 0C            [24]  963 	mov	r0,_bp
      004E71 08               [12]  964 	inc	r0
      004E72 74 04            [12]  965 	mov	a,#0x04
      004E74 26               [12]  966 	add	a,@r0
      004E75 FB               [12]  967 	mov	r3,a
      004E76 E4               [12]  968 	clr	a
      004E77 08               [12]  969 	inc	r0
      004E78 36               [12]  970 	addc	a,@r0
      004E79 FA               [12]  971 	mov	r2,a
      004E7A 08               [12]  972 	inc	r0
      004E7B 86 04            [24]  973 	mov	ar4,@r0
      004E7D 8B 82            [24]  974 	mov	dpl,r3
      004E7F 8A 83            [24]  975 	mov	dph,r2
      004E81 8C F0            [24]  976 	mov	b,r4
      004E83 12 70 5A         [24]  977 	lcall	__gptrget
      004E86 FB               [12]  978 	mov	r3,a
      004E87 A3               [24]  979 	inc	dptr
      004E88 12 70 5A         [24]  980 	lcall	__gptrget
      004E8B FC               [12]  981 	mov	r4,a
      004E8C A8 0C            [24]  982 	mov	r0,_bp
      004E8E 08               [12]  983 	inc	r0
      004E8F 86 82            [24]  984 	mov	dpl,@r0
      004E91 08               [12]  985 	inc	r0
      004E92 86 83            [24]  986 	mov	dph,@r0
      004E94 08               [12]  987 	inc	r0
      004E95 86 F0            [24]  988 	mov	b,@r0
      004E97 12 70 5A         [24]  989 	lcall	__gptrget
      004E9A FA               [12]  990 	mov	r2,a
      004E9B A3               [24]  991 	inc	dptr
      004E9C 12 70 5A         [24]  992 	lcall	__gptrget
      004E9F FF               [12]  993 	mov	r7,a
      004EA0 E5 0C            [12]  994 	mov	a,_bp
      004EA2 24 04            [12]  995 	add	a,#0x04
      004EA4 F8               [12]  996 	mov	r0,a
      004EA5 EA               [12]  997 	mov	a,r2
      004EA6 2B               [12]  998 	add	a,r3
      004EA7 F6               [12]  999 	mov	@r0,a
      004EA8 EF               [12] 1000 	mov	a,r7
      004EA9 3C               [12] 1001 	addc	a,r4
      004EAA 08               [12] 1002 	inc	r0
      004EAB F6               [12] 1003 	mov	@r0,a
                           00030E  1004 	C$stream_buffer.c$478$1_0$141 ==.
                                   1005 ;	src/FreeRTOS/stream_buffer.c:478: xSpace -= pxStreamBuffer->xHead;
      004EAC A8 0C            [24] 1006 	mov	r0,_bp
      004EAE 08               [12] 1007 	inc	r0
      004EAF 74 02            [12] 1008 	mov	a,#0x02
      004EB1 26               [12] 1009 	add	a,@r0
      004EB2 FD               [12] 1010 	mov	r5,a
      004EB3 E4               [12] 1011 	clr	a
      004EB4 08               [12] 1012 	inc	r0
      004EB5 36               [12] 1013 	addc	a,@r0
      004EB6 FE               [12] 1014 	mov	r6,a
      004EB7 08               [12] 1015 	inc	r0
      004EB8 86 07            [24] 1016 	mov	ar7,@r0
      004EBA 8D 82            [24] 1017 	mov	dpl,r5
      004EBC 8E 83            [24] 1018 	mov	dph,r6
      004EBE 8F F0            [24] 1019 	mov	b,r7
      004EC0 12 70 5A         [24] 1020 	lcall	__gptrget
      004EC3 FD               [12] 1021 	mov	r5,a
      004EC4 A3               [24] 1022 	inc	dptr
      004EC5 12 70 5A         [24] 1023 	lcall	__gptrget
      004EC8 FE               [12] 1024 	mov	r6,a
      004EC9 E5 0C            [12] 1025 	mov	a,_bp
      004ECB 24 04            [12] 1026 	add	a,#0x04
      004ECD F8               [12] 1027 	mov	r0,a
      004ECE E6               [12] 1028 	mov	a,@r0
      004ECF C3               [12] 1029 	clr	c
      004ED0 9D               [12] 1030 	subb	a,r5
      004ED1 FD               [12] 1031 	mov	r5,a
      004ED2 08               [12] 1032 	inc	r0
      004ED3 E6               [12] 1033 	mov	a,@r0
      004ED4 9E               [12] 1034 	subb	a,r6
      004ED5 FE               [12] 1035 	mov	r6,a
                           000338  1036 	C$stream_buffer.c$479$1_0$141 ==.
                                   1037 ;	src/FreeRTOS/stream_buffer.c:479: xSpace -= ( size_t ) 1;
      004ED6 ED               [12] 1038 	mov	a,r5
      004ED7 24 FF            [12] 1039 	add	a,#0xff
      004ED9 FF               [12] 1040 	mov	r7,a
      004EDA EE               [12] 1041 	mov	a,r6
      004EDB 34 FF            [12] 1042 	addc	a,#0xff
      004EDD FE               [12] 1043 	mov	r6,a
                           000340  1044 	C$stream_buffer.c$481$1_0$141 ==.
                                   1045 ;	src/FreeRTOS/stream_buffer.c:481: if( xSpace >= pxStreamBuffer->xLength )
      004EDE C3               [12] 1046 	clr	c
      004EDF EF               [12] 1047 	mov	a,r7
      004EE0 9B               [12] 1048 	subb	a,r3
      004EE1 EE               [12] 1049 	mov	a,r6
      004EE2 9C               [12] 1050 	subb	a,r4
      004EE3 40 07            [24] 1051 	jc	00102$
                           000347  1052 	C$stream_buffer.c$483$2_0$142 ==.
                                   1053 ;	src/FreeRTOS/stream_buffer.c:483: xSpace -= pxStreamBuffer->xLength;
      004EE5 EF               [12] 1054 	mov	a,r7
      004EE6 C3               [12] 1055 	clr	c
      004EE7 9B               [12] 1056 	subb	a,r3
      004EE8 FF               [12] 1057 	mov	r7,a
      004EE9 EE               [12] 1058 	mov	a,r6
      004EEA 9C               [12] 1059 	subb	a,r4
      004EEB FE               [12] 1060 	mov	r6,a
      004EEC                       1061 00102$:
                           00034E  1062 	C$stream_buffer.c$490$1_0$141 ==.
                                   1063 ;	src/FreeRTOS/stream_buffer.c:490: return xSpace;
      004EEC 8F 82            [24] 1064 	mov	dpl,r7
      004EEE 8E 83            [24] 1065 	mov	dph,r6
                           000352  1066 	C$stream_buffer.c$491$1_0$141 ==.
                                   1067 ;	src/FreeRTOS/stream_buffer.c:491: }
      004EF0 85 0C 81         [24] 1068 	mov	sp,_bp
      004EF3 D0 0C            [24] 1069 	pop	_bp
                           000357  1070 	C$stream_buffer.c$491$1_0$141 ==.
                           000357  1071 	XG$xStreamBufferSpacesAvailable$0$0 ==.
      004EF5 22               [24] 1072 	ret
                                   1073 ;------------------------------------------------------------
                                   1074 ;Allocation info for local variables in function 'xStreamBufferBytesAvailable'
                                   1075 ;------------------------------------------------------------
                                   1076 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   1077 ;pxStreamBuffer            Allocated to registers 
                                   1078 ;xReturn                   Allocated to registers r6 r7 
                                   1079 ;------------------------------------------------------------
                           000358  1080 	G$xStreamBufferBytesAvailable$0$0 ==.
                           000358  1081 	C$stream_buffer.c$494$1_0$145 ==.
                                   1082 ;	src/FreeRTOS/stream_buffer.c:494: size_t xStreamBufferBytesAvailable( StreamBufferHandle_t xStreamBuffer )
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function xStreamBufferBytesAvailable
                                   1085 ;	-----------------------------------------
      004EF6                       1086 _xStreamBufferBytesAvailable:
                           000358  1087 	C$stream_buffer.c$501$1_0$145 ==.
                                   1088 ;	src/FreeRTOS/stream_buffer.c:501: xReturn = prvBytesInBuffer( pxStreamBuffer );
      004EF6 12 60 56         [24] 1089 	lcall	_prvBytesInBuffer
                           00035B  1090 	C$stream_buffer.c$502$1_0$145 ==.
                                   1091 ;	src/FreeRTOS/stream_buffer.c:502: return xReturn;
                           00035B  1092 	C$stream_buffer.c$503$1_0$145 ==.
                                   1093 ;	src/FreeRTOS/stream_buffer.c:503: }
                           00035B  1094 	C$stream_buffer.c$503$1_0$145 ==.
                           00035B  1095 	XG$xStreamBufferBytesAvailable$0$0 ==.
      004EF9 22               [24] 1096 	ret
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'xStreamBufferSend'
                                   1099 ;------------------------------------------------------------
                                   1100 ;pvTxData                  Allocated to stack - _bp -5
                                   1101 ;xDataLengthBytes          Allocated to stack - _bp -7
                                   1102 ;xTicksToWait              Allocated to stack - _bp -9
                                   1103 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   1104 ;pxStreamBuffer            Allocated to stack - _bp +4
                                   1105 ;xReturn                   Allocated to stack - _bp +2
                                   1106 ;xSpace                    Allocated to stack - _bp +7
                                   1107 ;xRequiredSpace            Allocated to stack - _bp +9
                                   1108 ;xTimeOut                  Allocated to stack - _bp +11
                                   1109 ;sloc0                     Allocated to stack - _bp +1
                                   1110 ;sloc1                     Allocated to stack - _bp +2
                                   1111 ;------------------------------------------------------------
                           00035C  1112 	G$xStreamBufferSend$0$0 ==.
                           00035C  1113 	C$stream_buffer.c$506$1_0$147 ==.
                                   1114 ;	src/FreeRTOS/stream_buffer.c:506: size_t xStreamBufferSend( StreamBufferHandle_t xStreamBuffer,
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function xStreamBufferSend
                                   1117 ;	-----------------------------------------
      004EFA                       1118 _xStreamBufferSend:
      004EFA C0 0C            [24] 1119 	push	_bp
      004EFC E5 81            [12] 1120 	mov	a,sp
      004EFE F5 0C            [12] 1121 	mov	_bp,a
      004F00 24 0D            [12] 1122 	add	a,#0x0d
      004F02 F5 81            [12] 1123 	mov	sp,a
      004F04 AD 82            [24] 1124 	mov	r5,dpl
      004F06 AE 83            [24] 1125 	mov	r6,dph
      004F08 AF F0            [24] 1126 	mov	r7,b
                           00036C  1127 	C$stream_buffer.c$511$2_0$147 ==.
                                   1128 ;	src/FreeRTOS/stream_buffer.c:511: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
      004F0A E5 0C            [12] 1129 	mov	a,_bp
      004F0C 24 04            [12] 1130 	add	a,#0x04
      004F0E F8               [12] 1131 	mov	r0,a
      004F0F A6 05            [24] 1132 	mov	@r0,ar5
      004F11 08               [12] 1133 	inc	r0
      004F12 A6 06            [24] 1134 	mov	@r0,ar6
      004F14 08               [12] 1135 	inc	r0
      004F15 A6 07            [24] 1136 	mov	@r0,ar7
                           000379  1137 	C$stream_buffer.c$512$2_0$147 ==.
                                   1138 ;	src/FreeRTOS/stream_buffer.c:512: size_t xReturn, xSpace = 0;
      004F17 E5 0C            [12] 1139 	mov	a,_bp
      004F19 24 07            [12] 1140 	add	a,#0x07
      004F1B F8               [12] 1141 	mov	r0,a
      004F1C E4               [12] 1142 	clr	a
      004F1D F6               [12] 1143 	mov	@r0,a
      004F1E 08               [12] 1144 	inc	r0
      004F1F F6               [12] 1145 	mov	@r0,a
                           000382  1146 	C$stream_buffer.c$513$2_0$147 ==.
                                   1147 ;	src/FreeRTOS/stream_buffer.c:513: size_t xRequiredSpace = xDataLengthBytes;
      004F20 E5 0C            [12] 1148 	mov	a,_bp
      004F22 24 F9            [12] 1149 	add	a,#0xf9
      004F24 F8               [12] 1150 	mov	r0,a
      004F25 E5 0C            [12] 1151 	mov	a,_bp
      004F27 24 09            [12] 1152 	add	a,#0x09
      004F29 F9               [12] 1153 	mov	r1,a
      004F2A E6               [12] 1154 	mov	a,@r0
      004F2B F7               [12] 1155 	mov	@r1,a
      004F2C 08               [12] 1156 	inc	r0
      004F2D 09               [12] 1157 	inc	r1
      004F2E E6               [12] 1158 	mov	a,@r0
      004F2F F7               [12] 1159 	mov	@r1,a
                           000392  1160 	C$stream_buffer.c$523$1_0$147 ==.
                                   1161 ;	src/FreeRTOS/stream_buffer.c:523: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      004F30 74 11            [12] 1162 	mov	a,#0x11
      004F32 2D               [12] 1163 	add	a,r5
      004F33 FD               [12] 1164 	mov	r5,a
      004F34 E4               [12] 1165 	clr	a
      004F35 3E               [12] 1166 	addc	a,r6
      004F36 FE               [12] 1167 	mov	r6,a
      004F37 8D 82            [24] 1168 	mov	dpl,r5
      004F39 8E 83            [24] 1169 	mov	dph,r6
      004F3B 8F F0            [24] 1170 	mov	b,r7
      004F3D 12 70 5A         [24] 1171 	lcall	__gptrget
      004F40 FD               [12] 1172 	mov	r5,a
      004F41 30 E0 0D         [24] 1173 	jnb	acc.0,00102$
                           0003A6  1174 	C$stream_buffer.c$525$2_0$148 ==.
                                   1175 ;	src/FreeRTOS/stream_buffer.c:525: xRequiredSpace += sbBYTES_TO_STORE_MESSAGE_LENGTH;
      004F44 E5 0C            [12] 1176 	mov	a,_bp
      004F46 24 09            [12] 1177 	add	a,#0x09
      004F48 F8               [12] 1178 	mov	r0,a
      004F49 74 02            [12] 1179 	mov	a,#0x02
      004F4B 26               [12] 1180 	add	a,@r0
      004F4C F6               [12] 1181 	mov	@r0,a
      004F4D E4               [12] 1182 	clr	a
      004F4E 08               [12] 1183 	inc	r0
      004F4F 36               [12] 1184 	addc	a,@r0
      004F50 F6               [12] 1185 	mov	@r0,a
      004F51                       1186 00102$:
                           0003B3  1187 	C$stream_buffer.c$535$1_0$147 ==.
                                   1188 ;	src/FreeRTOS/stream_buffer.c:535: if( xTicksToWait != ( TickType_t ) 0 )
      004F51 E5 0C            [12] 1189 	mov	a,_bp
      004F53 24 F7            [12] 1190 	add	a,#0xf7
      004F55 F8               [12] 1191 	mov	r0,a
      004F56 E6               [12] 1192 	mov	a,@r0
      004F57 08               [12] 1193 	inc	r0
      004F58 46               [12] 1194 	orl	a,@r0
      004F59 70 03            [24] 1195 	jnz	00155$
      004F5B 02 50 8D         [24] 1196 	ljmp	00110$
      004F5E                       1197 00155$:
                           0003C0  1198 	C$stream_buffer.c$537$1_0$147 ==.
                                   1199 ;	src/FreeRTOS/stream_buffer.c:537: vTaskSetTimeOutState( &xTimeOut );
      004F5E E5 0C            [12] 1200 	mov	a,_bp
      004F60 24 0B            [12] 1201 	add	a,#0x0b
      004F62 FF               [12] 1202 	mov	r7,a
      004F63 FC               [12] 1203 	mov	r4,a
      004F64 7D 00            [12] 1204 	mov	r5,#0x00
      004F66 7E 40            [12] 1205 	mov	r6,#0x40
      004F68 8C 82            [24] 1206 	mov	dpl,r4
      004F6A 8D 83            [24] 1207 	mov	dph,r5
      004F6C 8E F0            [24] 1208 	mov	b,r6
      004F6E C0 07            [24] 1209 	push	ar7
      004F70 12 12 DD         [24] 1210 	lcall	_vTaskSetTimeOutState
      004F73 D0 07            [24] 1211 	pop	ar7
                           0003D7  1212 	C$stream_buffer.c$539$2_0$150 ==.
                                   1213 ;	src/FreeRTOS/stream_buffer.c:539: do
      004F75 A8 0C            [24] 1214 	mov	r0,_bp
      004F77 08               [12] 1215 	inc	r0
      004F78 A6 07            [24] 1216 	mov	@r0,ar7
                           0003DC  1217 	C$stream_buffer.c$606$1_0$147 ==.
                                   1218 ;	src/FreeRTOS/stream_buffer.c:606: return xReturn;
                           0003DC  1219 	C$stream_buffer.c$539$2_0$150 ==.
                                   1220 ;	src/FreeRTOS/stream_buffer.c:539: do
      004F7A                       1221 00106$:
                           0003DC  1222 	C$stream_buffer.c$543$3_0$151 ==.
                                   1223 ;	src/FreeRTOS/stream_buffer.c:543: taskENTER_CRITICAL();
      004F7A C0 E0            [24] 1224 	push ACC 
      004F7C C0 A8            [24] 1225 	push IE 
                                   1226 ;	assignBit
      004F7E C2 AF            [12] 1227 	clr	_EA
                           0003E2  1228 	C$stream_buffer.c$545$4_0$152 ==.
                                   1229 ;	src/FreeRTOS/stream_buffer.c:545: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
      004F80 E5 0C            [12] 1230 	mov	a,_bp
      004F82 24 04            [12] 1231 	add	a,#0x04
      004F84 F8               [12] 1232 	mov	r0,a
      004F85 86 82            [24] 1233 	mov	dpl,@r0
      004F87 08               [12] 1234 	inc	r0
      004F88 86 83            [24] 1235 	mov	dph,@r0
      004F8A 08               [12] 1236 	inc	r0
      004F8B 86 F0            [24] 1237 	mov	b,@r0
      004F8D 12 4E 60         [24] 1238 	lcall	_xStreamBufferSpacesAvailable
      004F90 AE 82            [24] 1239 	mov	r6,dpl
      004F92 AF 83            [24] 1240 	mov	r7,dph
      004F94 E5 0C            [12] 1241 	mov	a,_bp
      004F96 24 07            [12] 1242 	add	a,#0x07
      004F98 F8               [12] 1243 	mov	r0,a
      004F99 A6 06            [24] 1244 	mov	@r0,ar6
      004F9B 08               [12] 1245 	inc	r0
      004F9C A6 07            [24] 1246 	mov	@r0,ar7
                           000400  1247 	C$stream_buffer.c$547$4_0$152 ==.
                                   1248 ;	src/FreeRTOS/stream_buffer.c:547: if( xSpace < xRequiredSpace )
      004F9E E5 0C            [12] 1249 	mov	a,_bp
      004FA0 24 07            [12] 1250 	add	a,#0x07
      004FA2 F8               [12] 1251 	mov	r0,a
      004FA3 E5 0C            [12] 1252 	mov	a,_bp
      004FA5 24 09            [12] 1253 	add	a,#0x09
      004FA7 F9               [12] 1254 	mov	r1,a
      004FA8 C3               [12] 1255 	clr	c
      004FA9 E6               [12] 1256 	mov	a,@r0
      004FAA 97               [12] 1257 	subb	a,@r1
      004FAB 08               [12] 1258 	inc	r0
      004FAC E6               [12] 1259 	mov	a,@r0
      004FAD 09               [12] 1260 	inc	r1
      004FAE 97               [12] 1261 	subb	a,@r1
      004FAF 50 44            [24] 1262 	jnc	00104$
                           000413  1263 	C$stream_buffer.c$550$5_0$153 ==.
                                   1264 ;	src/FreeRTOS/stream_buffer.c:550: ( void ) xTaskNotifyStateClear( NULL );
      004FB1 90 00 00         [24] 1265 	mov	dptr,#0x0000
      004FB4 75 F0 00         [24] 1266 	mov	b,#0x00
      004FB7 12 21 E1         [24] 1267 	lcall	_xTaskNotifyStateClear
                           00041C  1268 	C$stream_buffer.c$554$5_0$153 ==.
                                   1269 ;	src/FreeRTOS/stream_buffer.c:554: pxStreamBuffer->xTaskWaitingToSend = xTaskGetCurrentTaskHandle();
      004FBA E5 0C            [12] 1270 	mov	a,_bp
      004FBC 24 04            [12] 1271 	add	a,#0x04
      004FBE F8               [12] 1272 	mov	r0,a
      004FBF 74 0B            [12] 1273 	mov	a,#0x0b
      004FC1 26               [12] 1274 	add	a,@r0
      004FC2 FD               [12] 1275 	mov	r5,a
      004FC3 E4               [12] 1276 	clr	a
      004FC4 08               [12] 1277 	inc	r0
      004FC5 36               [12] 1278 	addc	a,@r0
      004FC6 FE               [12] 1279 	mov	r6,a
      004FC7 08               [12] 1280 	inc	r0
      004FC8 86 07            [24] 1281 	mov	ar7,@r0
      004FCA C0 07            [24] 1282 	push	ar7
      004FCC C0 06            [24] 1283 	push	ar6
      004FCE C0 05            [24] 1284 	push	ar5
      004FD0 12 15 47         [24] 1285 	lcall	_xTaskGetCurrentTaskHandle
      004FD3 AA 82            [24] 1286 	mov	r2,dpl
      004FD5 AB 83            [24] 1287 	mov	r3,dph
      004FD7 AC F0            [24] 1288 	mov	r4,b
      004FD9 D0 05            [24] 1289 	pop	ar5
      004FDB D0 06            [24] 1290 	pop	ar6
      004FDD D0 07            [24] 1291 	pop	ar7
      004FDF 8D 82            [24] 1292 	mov	dpl,r5
      004FE1 8E 83            [24] 1293 	mov	dph,r6
      004FE3 8F F0            [24] 1294 	mov	b,r7
      004FE5 EA               [12] 1295 	mov	a,r2
      004FE6 12 66 A0         [24] 1296 	lcall	__gptrput
      004FE9 A3               [24] 1297 	inc	dptr
      004FEA EB               [12] 1298 	mov	a,r3
      004FEB 12 66 A0         [24] 1299 	lcall	__gptrput
      004FEE A3               [24] 1300 	inc	dptr
      004FEF EC               [12] 1301 	mov	a,r4
      004FF0 12 66 A0         [24] 1302 	lcall	__gptrput
      004FF3 80 0E            [24] 1303 	sjmp	00105$
      004FF5                       1304 00104$:
                           000457  1305 	C$stream_buffer.c$558$5_0$154 ==.
                                   1306 ;	src/FreeRTOS/stream_buffer.c:558: taskEXIT_CRITICAL();
      004FF5 D0 E0            [24] 1307 	pop ACC 
      004FF7 53 E0 80         [24] 1308 	anl	_ACC,#0x80
      004FFA E5 E0            [12] 1309 	mov	a,_ACC
      004FFC 42 A8            [12] 1310 	orl	_IE,a
      004FFE D0 E0            [24] 1311 	pop ACC 
                           000462  1312 	C$stream_buffer.c$559$5_0$154 ==.
                                   1313 ;	src/FreeRTOS/stream_buffer.c:559: break;
      005000 02 50 8D         [24] 1314 	ljmp	00110$
      005003                       1315 00105$:
                           000465  1316 	C$stream_buffer.c$562$1_0$147 ==.
                                   1317 ;	src/FreeRTOS/stream_buffer.c:562: taskEXIT_CRITICAL();
      005003 D0 E0            [24] 1318 	pop ACC 
      005005 53 E0 80         [24] 1319 	anl	_ACC,#0x80
      005008 E5 E0            [12] 1320 	mov	a,_ACC
      00500A 42 A8            [12] 1321 	orl	_IE,a
      00500C D0 E0            [24] 1322 	pop ACC 
                           000470  1323 	C$stream_buffer.c$565$3_0$151 ==.
                                   1324 ;	src/FreeRTOS/stream_buffer.c:565: ( void ) xTaskNotifyWait( ( uint32_t ) 0, ( uint32_t ) 0, NULL, xTicksToWait );
      00500E C0 07            [24] 1325 	push	ar7
      005010 C0 06            [24] 1326 	push	ar6
      005012 C0 05            [24] 1327 	push	ar5
      005014 E5 0C            [12] 1328 	mov	a,_bp
      005016 24 F7            [12] 1329 	add	a,#0xf7
      005018 F8               [12] 1330 	mov	r0,a
      005019 E6               [12] 1331 	mov	a,@r0
      00501A C0 E0            [24] 1332 	push	acc
      00501C 08               [12] 1333 	inc	r0
      00501D E6               [12] 1334 	mov	a,@r0
      00501E C0 E0            [24] 1335 	push	acc
      005020 E4               [12] 1336 	clr	a
      005021 C0 E0            [24] 1337 	push	acc
      005023 C0 E0            [24] 1338 	push	acc
      005025 C0 E0            [24] 1339 	push	acc
      005027 C0 E0            [24] 1340 	push	acc
      005029 C0 E0            [24] 1341 	push	acc
      00502B C0 E0            [24] 1342 	push	acc
      00502D C0 E0            [24] 1343 	push	acc
      00502F 90 00 00         [24] 1344 	mov	dptr,#(0x00&0x00ff)
      005032 E4               [12] 1345 	clr	a
      005033 F5 F0            [12] 1346 	mov	b,a
      005035 12 17 6D         [24] 1347 	lcall	_xTaskNotifyWait
      005038 E5 81            [12] 1348 	mov	a,sp
      00503A 24 F7            [12] 1349 	add	a,#0xf7
      00503C F5 81            [12] 1350 	mov	sp,a
      00503E D0 05            [24] 1351 	pop	ar5
      005040 D0 06            [24] 1352 	pop	ar6
      005042 D0 07            [24] 1353 	pop	ar7
                           0004A6  1354 	C$stream_buffer.c$566$3_0$151 ==.
                                   1355 ;	src/FreeRTOS/stream_buffer.c:566: pxStreamBuffer->xTaskWaitingToSend = NULL;
      005044 7A 00            [12] 1356 	mov	r2,#0x00
      005046 7B 00            [12] 1357 	mov	r3,#0x00
      005048 7C 00            [12] 1358 	mov	r4,#0x00
      00504A 8D 82            [24] 1359 	mov	dpl,r5
      00504C 8E 83            [24] 1360 	mov	dph,r6
      00504E 8F F0            [24] 1361 	mov	b,r7
      005050 EA               [12] 1362 	mov	a,r2
      005051 12 66 A0         [24] 1363 	lcall	__gptrput
      005054 A3               [24] 1364 	inc	dptr
      005055 EB               [12] 1365 	mov	a,r3
      005056 12 66 A0         [24] 1366 	lcall	__gptrput
      005059 A3               [24] 1367 	inc	dptr
      00505A EC               [12] 1368 	mov	a,r4
      00505B 12 66 A0         [24] 1369 	lcall	__gptrput
                           0004C0  1370 	C$stream_buffer.c$568$2_0$150 ==.
                                   1371 ;	src/FreeRTOS/stream_buffer.c:568: } while( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE );
      00505E E5 0C            [12] 1372 	mov	a,_bp
      005060 24 F7            [12] 1373 	add	a,#0xf7
      005062 FF               [12] 1374 	mov	r7,a
      005063 7E 00            [12] 1375 	mov	r6,#0x00
      005065 7D 40            [12] 1376 	mov	r5,#0x40
      005067 A8 0C            [24] 1377 	mov	r0,_bp
      005069 08               [12] 1378 	inc	r0
      00506A 86 02            [24] 1379 	mov	ar2,@r0
      00506C 7B 00            [12] 1380 	mov	r3,#0x00
      00506E 7C 40            [12] 1381 	mov	r4,#0x40
      005070 C0 07            [24] 1382 	push	ar7
      005072 C0 06            [24] 1383 	push	ar6
      005074 C0 05            [24] 1384 	push	ar5
      005076 8A 82            [24] 1385 	mov	dpl,r2
      005078 8B 83            [24] 1386 	mov	dph,r3
      00507A 8C F0            [24] 1387 	mov	b,r4
      00507C 12 13 4E         [24] 1388 	lcall	_xTaskCheckForTimeOut
      00507F AF 82            [24] 1389 	mov	r7,dpl
      005081 15 81            [12] 1390 	dec	sp
      005083 15 81            [12] 1391 	dec	sp
      005085 15 81            [12] 1392 	dec	sp
      005087 EF               [12] 1393 	mov	a,r7
      005088 70 03            [24] 1394 	jnz	00157$
      00508A 02 4F 7A         [24] 1395 	ljmp	00106$
      00508D                       1396 00157$:
      00508D                       1397 00110$:
                           0004EF  1398 	C$stream_buffer.c$575$1_0$147 ==.
                                   1399 ;	src/FreeRTOS/stream_buffer.c:575: if( xSpace == ( size_t ) 0 )
      00508D E5 0C            [12] 1400 	mov	a,_bp
      00508F 24 07            [12] 1401 	add	a,#0x07
      005091 F8               [12] 1402 	mov	r0,a
      005092 E6               [12] 1403 	mov	a,@r0
      005093 08               [12] 1404 	inc	r0
      005094 46               [12] 1405 	orl	a,@r0
      005095 70 1E            [24] 1406 	jnz	00112$
                           0004F9  1407 	C$stream_buffer.c$577$2_0$156 ==.
                                   1408 ;	src/FreeRTOS/stream_buffer.c:577: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
      005097 E5 0C            [12] 1409 	mov	a,_bp
      005099 24 04            [12] 1410 	add	a,#0x04
      00509B F8               [12] 1411 	mov	r0,a
      00509C 86 82            [24] 1412 	mov	dpl,@r0
      00509E 08               [12] 1413 	inc	r0
      00509F 86 83            [24] 1414 	mov	dph,@r0
      0050A1 08               [12] 1415 	inc	r0
      0050A2 86 F0            [24] 1416 	mov	b,@r0
      0050A4 12 4E 60         [24] 1417 	lcall	_xStreamBufferSpacesAvailable
      0050A7 AE 82            [24] 1418 	mov	r6,dpl
      0050A9 AF 83            [24] 1419 	mov	r7,dph
      0050AB E5 0C            [12] 1420 	mov	a,_bp
      0050AD 24 07            [12] 1421 	add	a,#0x07
      0050AF F8               [12] 1422 	mov	r0,a
      0050B0 A6 06            [24] 1423 	mov	@r0,ar6
      0050B2 08               [12] 1424 	inc	r0
      0050B3 A6 07            [24] 1425 	mov	@r0,ar7
      0050B5                       1426 00112$:
                           000517  1427 	C$stream_buffer.c$584$1_0$147 ==.
                                   1428 ;	src/FreeRTOS/stream_buffer.c:584: xReturn = prvWriteMessageToBuffer( pxStreamBuffer, pvTxData, xDataLengthBytes, xSpace, xRequiredSpace );
      0050B5 E5 0C            [12] 1429 	mov	a,_bp
      0050B7 24 09            [12] 1430 	add	a,#0x09
      0050B9 F8               [12] 1431 	mov	r0,a
      0050BA E6               [12] 1432 	mov	a,@r0
      0050BB C0 E0            [24] 1433 	push	acc
      0050BD 08               [12] 1434 	inc	r0
      0050BE E6               [12] 1435 	mov	a,@r0
      0050BF C0 E0            [24] 1436 	push	acc
      0050C1 E5 0C            [12] 1437 	mov	a,_bp
      0050C3 24 07            [12] 1438 	add	a,#0x07
      0050C5 F8               [12] 1439 	mov	r0,a
      0050C6 E6               [12] 1440 	mov	a,@r0
      0050C7 C0 E0            [24] 1441 	push	acc
      0050C9 08               [12] 1442 	inc	r0
      0050CA E6               [12] 1443 	mov	a,@r0
      0050CB C0 E0            [24] 1444 	push	acc
      0050CD E5 0C            [12] 1445 	mov	a,_bp
      0050CF 24 F9            [12] 1446 	add	a,#0xf9
      0050D1 F8               [12] 1447 	mov	r0,a
      0050D2 E6               [12] 1448 	mov	a,@r0
      0050D3 C0 E0            [24] 1449 	push	acc
      0050D5 08               [12] 1450 	inc	r0
      0050D6 E6               [12] 1451 	mov	a,@r0
      0050D7 C0 E0            [24] 1452 	push	acc
      0050D9 E5 0C            [12] 1453 	mov	a,_bp
      0050DB 24 FB            [12] 1454 	add	a,#0xfb
      0050DD F8               [12] 1455 	mov	r0,a
      0050DE E6               [12] 1456 	mov	a,@r0
      0050DF C0 E0            [24] 1457 	push	acc
      0050E1 08               [12] 1458 	inc	r0
      0050E2 E6               [12] 1459 	mov	a,@r0
      0050E3 C0 E0            [24] 1460 	push	acc
      0050E5 08               [12] 1461 	inc	r0
      0050E6 E6               [12] 1462 	mov	a,@r0
      0050E7 C0 E0            [24] 1463 	push	acc
      0050E9 E5 0C            [12] 1464 	mov	a,_bp
      0050EB 24 04            [12] 1465 	add	a,#0x04
      0050ED F8               [12] 1466 	mov	r0,a
      0050EE 86 82            [24] 1467 	mov	dpl,@r0
      0050F0 08               [12] 1468 	inc	r0
      0050F1 86 83            [24] 1469 	mov	dph,@r0
      0050F3 08               [12] 1470 	inc	r0
      0050F4 86 F0            [24] 1471 	mov	b,@r0
      0050F6 12 53 65         [24] 1472 	lcall	_prvWriteMessageToBuffer
      0050F9 AE 82            [24] 1473 	mov	r6,dpl
      0050FB AF 83            [24] 1474 	mov	r7,dph
      0050FD E5 81            [12] 1475 	mov	a,sp
      0050FF 24 F7            [12] 1476 	add	a,#0xf7
      005101 F5 81            [12] 1477 	mov	sp,a
      005103 A8 0C            [24] 1478 	mov	r0,_bp
      005105 08               [12] 1479 	inc	r0
      005106 08               [12] 1480 	inc	r0
      005107 A6 06            [24] 1481 	mov	@r0,ar6
      005109 08               [12] 1482 	inc	r0
      00510A A6 07            [24] 1483 	mov	@r0,ar7
                           00056E  1484 	C$stream_buffer.c$586$1_0$147 ==.
                                   1485 ;	src/FreeRTOS/stream_buffer.c:586: if( xReturn > ( size_t ) 0 )
      00510C EE               [12] 1486 	mov	a,r6
      00510D 4F               [12] 1487 	orl	a,r7
      00510E 70 03            [24] 1488 	jnz	00159$
      005110 02 51 D7         [24] 1489 	ljmp	00119$
      005113                       1490 00159$:
                           000575  1491 	C$stream_buffer.c$591$1_0$147 ==.
                                   1492 ;	src/FreeRTOS/stream_buffer.c:591: if( prvBytesInBuffer( pxStreamBuffer ) >= pxStreamBuffer->xTriggerLevelBytes )
      005113 E5 0C            [12] 1493 	mov	a,_bp
      005115 24 04            [12] 1494 	add	a,#0x04
      005117 F8               [12] 1495 	mov	r0,a
      005118 86 82            [24] 1496 	mov	dpl,@r0
      00511A 08               [12] 1497 	inc	r0
      00511B 86 83            [24] 1498 	mov	dph,@r0
      00511D 08               [12] 1499 	inc	r0
      00511E 86 F0            [24] 1500 	mov	b,@r0
      005120 12 60 56         [24] 1501 	lcall	_prvBytesInBuffer
      005123 AE 82            [24] 1502 	mov	r6,dpl
      005125 AF 83            [24] 1503 	mov	r7,dph
      005127 E5 0C            [12] 1504 	mov	a,_bp
      005129 24 04            [12] 1505 	add	a,#0x04
      00512B F8               [12] 1506 	mov	r0,a
      00512C 74 06            [12] 1507 	mov	a,#0x06
      00512E 26               [12] 1508 	add	a,@r0
      00512F FB               [12] 1509 	mov	r3,a
      005130 E4               [12] 1510 	clr	a
      005131 08               [12] 1511 	inc	r0
      005132 36               [12] 1512 	addc	a,@r0
      005133 FC               [12] 1513 	mov	r4,a
      005134 08               [12] 1514 	inc	r0
      005135 86 05            [24] 1515 	mov	ar5,@r0
      005137 8B 82            [24] 1516 	mov	dpl,r3
      005139 8C 83            [24] 1517 	mov	dph,r4
      00513B 8D F0            [24] 1518 	mov	b,r5
      00513D 12 70 5A         [24] 1519 	lcall	__gptrget
      005140 FB               [12] 1520 	mov	r3,a
      005141 A3               [24] 1521 	inc	dptr
      005142 12 70 5A         [24] 1522 	lcall	__gptrget
      005145 FC               [12] 1523 	mov	r4,a
      005146 C3               [12] 1524 	clr	c
      005147 EE               [12] 1525 	mov	a,r6
      005148 9B               [12] 1526 	subb	a,r3
      005149 EF               [12] 1527 	mov	a,r7
      00514A 9C               [12] 1528 	subb	a,r4
      00514B 50 03            [24] 1529 	jnc	00160$
      00514D 02 51 D7         [24] 1530 	ljmp	00119$
      005150                       1531 00160$:
                           0005B2  1532 	C$stream_buffer.c$593$3_0$159 ==.
                                   1533 ;	src/FreeRTOS/stream_buffer.c:593: sbSEND_COMPLETED( pxStreamBuffer );
      005150 12 09 4A         [24] 1534 	lcall	_vTaskSuspendAll
      005153 E5 0C            [12] 1535 	mov	a,_bp
      005155 24 04            [12] 1536 	add	a,#0x04
      005157 F8               [12] 1537 	mov	r0,a
      005158 74 08            [12] 1538 	mov	a,#0x08
      00515A 26               [12] 1539 	add	a,@r0
      00515B FB               [12] 1540 	mov	r3,a
      00515C E4               [12] 1541 	clr	a
      00515D 08               [12] 1542 	inc	r0
      00515E 36               [12] 1543 	addc	a,@r0
      00515F FC               [12] 1544 	mov	r4,a
      005160 08               [12] 1545 	inc	r0
      005161 86 06            [24] 1546 	mov	ar6,@r0
      005163 8B 82            [24] 1547 	mov	dpl,r3
      005165 8C 83            [24] 1548 	mov	dph,r4
      005167 8E F0            [24] 1549 	mov	b,r6
      005169 12 70 5A         [24] 1550 	lcall	__gptrget
      00516C FA               [12] 1551 	mov	r2,a
      00516D A3               [24] 1552 	inc	dptr
      00516E 12 70 5A         [24] 1553 	lcall	__gptrget
      005171 FD               [12] 1554 	mov	r5,a
      005172 A3               [24] 1555 	inc	dptr
      005173 12 70 5A         [24] 1556 	lcall	__gptrget
      005176 EA               [12] 1557 	mov	a,r2
      005177 4D               [12] 1558 	orl	a,r5
      005178 60 5A            [24] 1559 	jz	00114$
      00517A 8B 82            [24] 1560 	mov	dpl,r3
      00517C 8C 83            [24] 1561 	mov	dph,r4
      00517E 8E F0            [24] 1562 	mov	b,r6
      005180 12 70 5A         [24] 1563 	lcall	__gptrget
      005183 FA               [12] 1564 	mov	r2,a
      005184 A3               [24] 1565 	inc	dptr
      005185 12 70 5A         [24] 1566 	lcall	__gptrget
      005188 FD               [12] 1567 	mov	r5,a
      005189 A3               [24] 1568 	inc	dptr
      00518A 12 70 5A         [24] 1569 	lcall	__gptrget
      00518D FF               [12] 1570 	mov	r7,a
      00518E C0 06            [24] 1571 	push	ar6
      005190 C0 04            [24] 1572 	push	ar4
      005192 C0 03            [24] 1573 	push	ar3
      005194 E4               [12] 1574 	clr	a
      005195 C0 E0            [24] 1575 	push	acc
      005197 C0 E0            [24] 1576 	push	acc
      005199 C0 E0            [24] 1577 	push	acc
      00519B C0 E0            [24] 1578 	push	acc
      00519D C0 E0            [24] 1579 	push	acc
      00519F C0 E0            [24] 1580 	push	acc
      0051A1 C0 E0            [24] 1581 	push	acc
      0051A3 C0 E0            [24] 1582 	push	acc
      0051A5 8A 82            [24] 1583 	mov	dpl,r2
      0051A7 8D 83            [24] 1584 	mov	dph,r5
      0051A9 8F F0            [24] 1585 	mov	b,r7
      0051AB 12 19 E0         [24] 1586 	lcall	_xTaskGenericNotify
      0051AE E5 81            [12] 1587 	mov	a,sp
      0051B0 24 F8            [12] 1588 	add	a,#0xf8
      0051B2 F5 81            [12] 1589 	mov	sp,a
      0051B4 D0 03            [24] 1590 	pop	ar3
      0051B6 D0 04            [24] 1591 	pop	ar4
      0051B8 D0 06            [24] 1592 	pop	ar6
      0051BA 7A 00            [12] 1593 	mov	r2,#0x00
      0051BC 7D 00            [12] 1594 	mov	r5,#0x00
      0051BE 7F 00            [12] 1595 	mov	r7,#0x00
      0051C0 8B 82            [24] 1596 	mov	dpl,r3
      0051C2 8C 83            [24] 1597 	mov	dph,r4
      0051C4 8E F0            [24] 1598 	mov	b,r6
      0051C6 EA               [12] 1599 	mov	a,r2
      0051C7 12 66 A0         [24] 1600 	lcall	__gptrput
      0051CA A3               [24] 1601 	inc	dptr
      0051CB ED               [12] 1602 	mov	a,r5
      0051CC 12 66 A0         [24] 1603 	lcall	__gptrput
      0051CF A3               [24] 1604 	inc	dptr
      0051D0 EF               [12] 1605 	mov	a,r7
      0051D1 12 66 A0         [24] 1606 	lcall	__gptrput
      0051D4                       1607 00114$:
      0051D4 12 09 52         [24] 1608 	lcall	_xTaskResumeAll
                           000639  1609 	C$stream_buffer.c$603$1_0$147 ==.
                                   1610 ;	src/FreeRTOS/stream_buffer.c:603: traceSTREAM_BUFFER_SEND_FAILED( xStreamBuffer );
      0051D7                       1611 00119$:
                           000639  1612 	C$stream_buffer.c$606$1_0$147 ==.
                                   1613 ;	src/FreeRTOS/stream_buffer.c:606: return xReturn;
      0051D7 A8 0C            [24] 1614 	mov	r0,_bp
      0051D9 08               [12] 1615 	inc	r0
      0051DA 08               [12] 1616 	inc	r0
      0051DB 86 82            [24] 1617 	mov	dpl,@r0
      0051DD 08               [12] 1618 	inc	r0
      0051DE 86 83            [24] 1619 	mov	dph,@r0
                           000642  1620 	C$stream_buffer.c$607$1_0$147 ==.
                                   1621 ;	src/FreeRTOS/stream_buffer.c:607: }
      0051E0 85 0C 81         [24] 1622 	mov	sp,_bp
      0051E3 D0 0C            [24] 1623 	pop	_bp
                           000647  1624 	C$stream_buffer.c$607$1_0$147 ==.
                           000647  1625 	XG$xStreamBufferSend$0$0 ==.
      0051E5 22               [24] 1626 	ret
                                   1627 ;------------------------------------------------------------
                                   1628 ;Allocation info for local variables in function 'xStreamBufferSendFromISR'
                                   1629 ;------------------------------------------------------------
                                   1630 ;pvTxData                  Allocated to stack - _bp -5
                                   1631 ;xDataLengthBytes          Allocated to stack - _bp -7
                                   1632 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -10
                                   1633 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   1634 ;pxStreamBuffer            Allocated to stack - _bp +3
                                   1635 ;xReturn                   Allocated to stack - _bp +1
                                   1636 ;xSpace                    Allocated to registers 
                                   1637 ;xRequiredSpace            Allocated to registers r4 r3 
                                   1638 ;uxSavedInterruptStatus    Allocated to registers 
                                   1639 ;sloc0                     Allocated to stack - _bp +1
                                   1640 ;------------------------------------------------------------
                           000648  1641 	G$xStreamBufferSendFromISR$0$0 ==.
                           000648  1642 	C$stream_buffer.c$610$1_0$165 ==.
                                   1643 ;	src/FreeRTOS/stream_buffer.c:610: size_t xStreamBufferSendFromISR( StreamBufferHandle_t xStreamBuffer,
                                   1644 ;	-----------------------------------------
                                   1645 ;	 function xStreamBufferSendFromISR
                                   1646 ;	-----------------------------------------
      0051E6                       1647 _xStreamBufferSendFromISR:
      0051E6 C0 0C            [24] 1648 	push	_bp
      0051E8 E5 81            [12] 1649 	mov	a,sp
      0051EA F5 0C            [12] 1650 	mov	_bp,a
      0051EC 24 05            [12] 1651 	add	a,#0x05
      0051EE F5 81            [12] 1652 	mov	sp,a
      0051F0 AD 82            [24] 1653 	mov	r5,dpl
      0051F2 AE 83            [24] 1654 	mov	r6,dph
      0051F4 AF F0            [24] 1655 	mov	r7,b
                           000658  1656 	C$stream_buffer.c$615$2_0$165 ==.
                                   1657 ;	src/FreeRTOS/stream_buffer.c:615: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
      0051F6 E5 0C            [12] 1658 	mov	a,_bp
      0051F8 24 03            [12] 1659 	add	a,#0x03
      0051FA F8               [12] 1660 	mov	r0,a
      0051FB A6 05            [24] 1661 	mov	@r0,ar5
      0051FD 08               [12] 1662 	inc	r0
      0051FE A6 06            [24] 1663 	mov	@r0,ar6
      005200 08               [12] 1664 	inc	r0
      005201 A6 07            [24] 1665 	mov	@r0,ar7
                           000665  1666 	C$stream_buffer.c$617$2_0$165 ==.
                                   1667 ;	src/FreeRTOS/stream_buffer.c:617: size_t xRequiredSpace = xDataLengthBytes;
      005203 E5 0C            [12] 1668 	mov	a,_bp
      005205 24 F9            [12] 1669 	add	a,#0xf9
      005207 F8               [12] 1670 	mov	r0,a
      005208 86 04            [24] 1671 	mov	ar4,@r0
      00520A 08               [12] 1672 	inc	r0
      00520B 86 03            [24] 1673 	mov	ar3,@r0
                           00066F  1674 	C$stream_buffer.c$626$1_0$165 ==.
                                   1675 ;	src/FreeRTOS/stream_buffer.c:626: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      00520D 74 11            [12] 1676 	mov	a,#0x11
      00520F 2D               [12] 1677 	add	a,r5
      005210 FD               [12] 1678 	mov	r5,a
      005211 E4               [12] 1679 	clr	a
      005212 3E               [12] 1680 	addc	a,r6
      005213 FE               [12] 1681 	mov	r6,a
      005214 8D 82            [24] 1682 	mov	dpl,r5
      005216 8E 83            [24] 1683 	mov	dph,r6
      005218 8F F0            [24] 1684 	mov	b,r7
      00521A 12 70 5A         [24] 1685 	lcall	__gptrget
      00521D 30 E0 07         [24] 1686 	jnb	acc.0,00102$
                           000682  1687 	C$stream_buffer.c$628$2_0$166 ==.
                                   1688 ;	src/FreeRTOS/stream_buffer.c:628: xRequiredSpace += sbBYTES_TO_STORE_MESSAGE_LENGTH;
      005220 74 02            [12] 1689 	mov	a,#0x02
      005222 2C               [12] 1690 	add	a,r4
      005223 FC               [12] 1691 	mov	r4,a
      005224 E4               [12] 1692 	clr	a
      005225 3B               [12] 1693 	addc	a,r3
      005226 FB               [12] 1694 	mov	r3,a
      005227                       1695 00102$:
                           000689  1696 	C$stream_buffer.c$635$1_0$165 ==.
                                   1697 ;	src/FreeRTOS/stream_buffer.c:635: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
      005227 E5 0C            [12] 1698 	mov	a,_bp
      005229 24 03            [12] 1699 	add	a,#0x03
      00522B F8               [12] 1700 	mov	r0,a
      00522C 86 82            [24] 1701 	mov	dpl,@r0
      00522E 08               [12] 1702 	inc	r0
      00522F 86 83            [24] 1703 	mov	dph,@r0
      005231 08               [12] 1704 	inc	r0
      005232 86 F0            [24] 1705 	mov	b,@r0
      005234 C0 04            [24] 1706 	push	ar4
      005236 C0 03            [24] 1707 	push	ar3
      005238 12 4E 60         [24] 1708 	lcall	_xStreamBufferSpacesAvailable
      00523B AE 82            [24] 1709 	mov	r6,dpl
      00523D AF 83            [24] 1710 	mov	r7,dph
                           0006A1  1711 	C$stream_buffer.c$636$1_0$165 ==.
                                   1712 ;	src/FreeRTOS/stream_buffer.c:636: xReturn = prvWriteMessageToBuffer( pxStreamBuffer, pvTxData, xDataLengthBytes, xSpace, xRequiredSpace );
      00523F C0 06            [24] 1713 	push	ar6
      005241 C0 07            [24] 1714 	push	ar7
      005243 E5 0C            [12] 1715 	mov	a,_bp
      005245 24 F9            [12] 1716 	add	a,#0xf9
      005247 F8               [12] 1717 	mov	r0,a
      005248 E6               [12] 1718 	mov	a,@r0
      005249 C0 E0            [24] 1719 	push	acc
      00524B 08               [12] 1720 	inc	r0
      00524C E6               [12] 1721 	mov	a,@r0
      00524D C0 E0            [24] 1722 	push	acc
      00524F E5 0C            [12] 1723 	mov	a,_bp
      005251 24 FB            [12] 1724 	add	a,#0xfb
      005253 F8               [12] 1725 	mov	r0,a
      005254 E6               [12] 1726 	mov	a,@r0
      005255 C0 E0            [24] 1727 	push	acc
      005257 08               [12] 1728 	inc	r0
      005258 E6               [12] 1729 	mov	a,@r0
      005259 C0 E0            [24] 1730 	push	acc
      00525B 08               [12] 1731 	inc	r0
      00525C E6               [12] 1732 	mov	a,@r0
      00525D C0 E0            [24] 1733 	push	acc
      00525F E5 0C            [12] 1734 	mov	a,_bp
      005261 24 03            [12] 1735 	add	a,#0x03
      005263 F8               [12] 1736 	mov	r0,a
      005264 86 82            [24] 1737 	mov	dpl,@r0
      005266 08               [12] 1738 	inc	r0
      005267 86 83            [24] 1739 	mov	dph,@r0
      005269 08               [12] 1740 	inc	r0
      00526A 86 F0            [24] 1741 	mov	b,@r0
      00526C 12 53 65         [24] 1742 	lcall	_prvWriteMessageToBuffer
      00526F AE 82            [24] 1743 	mov	r6,dpl
      005271 AF 83            [24] 1744 	mov	r7,dph
      005273 E5 81            [12] 1745 	mov	a,sp
      005275 24 F7            [12] 1746 	add	a,#0xf7
      005277 F5 81            [12] 1747 	mov	sp,a
      005279 A8 0C            [24] 1748 	mov	r0,_bp
      00527B 08               [12] 1749 	inc	r0
      00527C A6 06            [24] 1750 	mov	@r0,ar6
      00527E 08               [12] 1751 	inc	r0
      00527F A6 07            [24] 1752 	mov	@r0,ar7
                           0006E3  1753 	C$stream_buffer.c$638$1_0$165 ==.
                                   1754 ;	src/FreeRTOS/stream_buffer.c:638: if( xReturn > ( size_t ) 0 )
      005281 EE               [12] 1755 	mov	a,r6
      005282 4F               [12] 1756 	orl	a,r7
      005283 70 03            [24] 1757 	jnz	00128$
      005285 02 53 57         [24] 1758 	ljmp	00108$
      005288                       1759 00128$:
                           0006EA  1760 	C$stream_buffer.c$641$1_0$165 ==.
                                   1761 ;	src/FreeRTOS/stream_buffer.c:641: if( prvBytesInBuffer( pxStreamBuffer ) >= pxStreamBuffer->xTriggerLevelBytes )
      005288 E5 0C            [12] 1762 	mov	a,_bp
      00528A 24 03            [12] 1763 	add	a,#0x03
      00528C F8               [12] 1764 	mov	r0,a
      00528D 86 82            [24] 1765 	mov	dpl,@r0
      00528F 08               [12] 1766 	inc	r0
      005290 86 83            [24] 1767 	mov	dph,@r0
      005292 08               [12] 1768 	inc	r0
      005293 86 F0            [24] 1769 	mov	b,@r0
      005295 12 60 56         [24] 1770 	lcall	_prvBytesInBuffer
      005298 AE 82            [24] 1771 	mov	r6,dpl
      00529A AF 83            [24] 1772 	mov	r7,dph
      00529C E5 0C            [12] 1773 	mov	a,_bp
      00529E 24 03            [12] 1774 	add	a,#0x03
      0052A0 F8               [12] 1775 	mov	r0,a
      0052A1 74 06            [12] 1776 	mov	a,#0x06
      0052A3 26               [12] 1777 	add	a,@r0
      0052A4 FB               [12] 1778 	mov	r3,a
      0052A5 E4               [12] 1779 	clr	a
      0052A6 08               [12] 1780 	inc	r0
      0052A7 36               [12] 1781 	addc	a,@r0
      0052A8 FC               [12] 1782 	mov	r4,a
      0052A9 08               [12] 1783 	inc	r0
      0052AA 86 05            [24] 1784 	mov	ar5,@r0
      0052AC 8B 82            [24] 1785 	mov	dpl,r3
      0052AE 8C 83            [24] 1786 	mov	dph,r4
      0052B0 8D F0            [24] 1787 	mov	b,r5
      0052B2 12 70 5A         [24] 1788 	lcall	__gptrget
      0052B5 FB               [12] 1789 	mov	r3,a
      0052B6 A3               [24] 1790 	inc	dptr
      0052B7 12 70 5A         [24] 1791 	lcall	__gptrget
      0052BA FC               [12] 1792 	mov	r4,a
      0052BB C3               [12] 1793 	clr	c
      0052BC EE               [12] 1794 	mov	a,r6
      0052BD 9B               [12] 1795 	subb	a,r3
      0052BE EF               [12] 1796 	mov	a,r7
      0052BF 9C               [12] 1797 	subb	a,r4
      0052C0 50 03            [24] 1798 	jnc	00129$
      0052C2 02 53 57         [24] 1799 	ljmp	00108$
      0052C5                       1800 00129$:
                           000727  1801 	C$stream_buffer.c$643$5_0$171 ==.
                                   1802 ;	src/FreeRTOS/stream_buffer.c:643: sbSEND_COMPLETE_FROM_ISR( pxStreamBuffer, pxHigherPriorityTaskWoken );
      0052C5 E5 0C            [12] 1803 	mov	a,_bp
      0052C7 24 03            [12] 1804 	add	a,#0x03
      0052C9 F8               [12] 1805 	mov	r0,a
      0052CA 74 08            [12] 1806 	mov	a,#0x08
      0052CC 26               [12] 1807 	add	a,@r0
      0052CD FB               [12] 1808 	mov	r3,a
      0052CE E4               [12] 1809 	clr	a
      0052CF 08               [12] 1810 	inc	r0
      0052D0 36               [12] 1811 	addc	a,@r0
      0052D1 FC               [12] 1812 	mov	r4,a
      0052D2 08               [12] 1813 	inc	r0
      0052D3 86 06            [24] 1814 	mov	ar6,@r0
      0052D5 8B 82            [24] 1815 	mov	dpl,r3
      0052D7 8C 83            [24] 1816 	mov	dph,r4
      0052D9 8E F0            [24] 1817 	mov	b,r6
      0052DB 12 70 5A         [24] 1818 	lcall	__gptrget
      0052DE FA               [12] 1819 	mov	r2,a
      0052DF A3               [24] 1820 	inc	dptr
      0052E0 12 70 5A         [24] 1821 	lcall	__gptrget
      0052E3 FD               [12] 1822 	mov	r5,a
      0052E4 A3               [24] 1823 	inc	dptr
      0052E5 12 70 5A         [24] 1824 	lcall	__gptrget
      0052E8 FF               [12] 1825 	mov	r7,a
      0052E9 EA               [12] 1826 	mov	a,r2
      0052EA 4D               [12] 1827 	orl	a,r5
      0052EB 60 6A            [24] 1828 	jz	00108$
      0052ED 8B 82            [24] 1829 	mov	dpl,r3
      0052EF 8C 83            [24] 1830 	mov	dph,r4
      0052F1 8E F0            [24] 1831 	mov	b,r6
      0052F3 12 70 5A         [24] 1832 	lcall	__gptrget
      0052F6 FA               [12] 1833 	mov	r2,a
      0052F7 A3               [24] 1834 	inc	dptr
      0052F8 12 70 5A         [24] 1835 	lcall	__gptrget
      0052FB FD               [12] 1836 	mov	r5,a
      0052FC A3               [24] 1837 	inc	dptr
      0052FD 12 70 5A         [24] 1838 	lcall	__gptrget
      005300 FF               [12] 1839 	mov	r7,a
      005301 C0 06            [24] 1840 	push	ar6
      005303 C0 04            [24] 1841 	push	ar4
      005305 C0 03            [24] 1842 	push	ar3
      005307 E5 0C            [12] 1843 	mov	a,_bp
      005309 24 F6            [12] 1844 	add	a,#0xf6
      00530B F8               [12] 1845 	mov	r0,a
      00530C E6               [12] 1846 	mov	a,@r0
      00530D C0 E0            [24] 1847 	push	acc
      00530F 08               [12] 1848 	inc	r0
      005310 E6               [12] 1849 	mov	a,@r0
      005311 C0 E0            [24] 1850 	push	acc
      005313 08               [12] 1851 	inc	r0
      005314 E6               [12] 1852 	mov	a,@r0
      005315 C0 E0            [24] 1853 	push	acc
      005317 E4               [12] 1854 	clr	a
      005318 C0 E0            [24] 1855 	push	acc
      00531A C0 E0            [24] 1856 	push	acc
      00531C C0 E0            [24] 1857 	push	acc
      00531E C0 E0            [24] 1858 	push	acc
      005320 C0 E0            [24] 1859 	push	acc
      005322 C0 E0            [24] 1860 	push	acc
      005324 C0 E0            [24] 1861 	push	acc
      005326 C0 E0            [24] 1862 	push	acc
      005328 8A 82            [24] 1863 	mov	dpl,r2
      00532A 8D 83            [24] 1864 	mov	dph,r5
      00532C 8F F0            [24] 1865 	mov	b,r7
      00532E 12 1C D7         [24] 1866 	lcall	_xTaskGenericNotifyFromISR
      005331 E5 81            [12] 1867 	mov	a,sp
      005333 24 F5            [12] 1868 	add	a,#0xf5
      005335 F5 81            [12] 1869 	mov	sp,a
      005337 D0 03            [24] 1870 	pop	ar3
      005339 D0 04            [24] 1871 	pop	ar4
      00533B D0 06            [24] 1872 	pop	ar6
      00533D 7A 00            [12] 1873 	mov	r2,#0x00
      00533F 7D 00            [12] 1874 	mov	r5,#0x00
      005341 7F 00            [12] 1875 	mov	r7,#0x00
      005343 8B 82            [24] 1876 	mov	dpl,r3
      005345 8C 83            [24] 1877 	mov	dph,r4
      005347 8E F0            [24] 1878 	mov	b,r6
      005349 EA               [12] 1879 	mov	a,r2
      00534A 12 66 A0         [24] 1880 	lcall	__gptrput
      00534D A3               [24] 1881 	inc	dptr
      00534E ED               [12] 1882 	mov	a,r5
      00534F 12 66 A0         [24] 1883 	lcall	__gptrput
      005352 A3               [24] 1884 	inc	dptr
      005353 EF               [12] 1885 	mov	a,r7
      005354 12 66 A0         [24] 1886 	lcall	__gptrput
      005357                       1887 00108$:
                           0007B9  1888 	C$stream_buffer.c$657$1_0$165 ==.
                                   1889 ;	src/FreeRTOS/stream_buffer.c:657: return xReturn;
      005357 A8 0C            [24] 1890 	mov	r0,_bp
      005359 08               [12] 1891 	inc	r0
      00535A 86 82            [24] 1892 	mov	dpl,@r0
      00535C 08               [12] 1893 	inc	r0
      00535D 86 83            [24] 1894 	mov	dph,@r0
                           0007C1  1895 	C$stream_buffer.c$658$1_0$165 ==.
                                   1896 ;	src/FreeRTOS/stream_buffer.c:658: }
      00535F 85 0C 81         [24] 1897 	mov	sp,_bp
      005362 D0 0C            [24] 1898 	pop	_bp
                           0007C6  1899 	C$stream_buffer.c$658$1_0$165 ==.
                           0007C6  1900 	XG$xStreamBufferSendFromISR$0$0 ==.
      005364 22               [24] 1901 	ret
                                   1902 ;------------------------------------------------------------
                                   1903 ;Allocation info for local variables in function 'prvWriteMessageToBuffer'
                                   1904 ;------------------------------------------------------------
                                   1905 ;pvTxData                  Allocated to stack - _bp -5
                                   1906 ;xDataLengthBytes          Allocated to stack - _bp -7
                                   1907 ;xSpace                    Allocated to stack - _bp -9
                                   1908 ;xRequiredSpace            Allocated to stack - _bp -11
                                   1909 ;pxStreamBuffer            Allocated to stack - _bp +1
                                   1910 ;xShouldWrite              Allocated to registers r4 
                                   1911 ;xReturn                   Allocated to registers r6 r7 
                                   1912 ;------------------------------------------------------------
                           0007C7  1913 	Fstream_buffer$prvWriteMessageToBuffer$0$0 ==.
                           0007C7  1914 	C$stream_buffer.c$661$1_0$176 ==.
                                   1915 ;	src/FreeRTOS/stream_buffer.c:661: static size_t prvWriteMessageToBuffer( StreamBuffer_t * const pxStreamBuffer,
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function prvWriteMessageToBuffer
                                   1918 ;	-----------------------------------------
      005365                       1919 _prvWriteMessageToBuffer:
      005365 C0 0C            [24] 1920 	push	_bp
      005367 85 81 0C         [24] 1921 	mov	_bp,sp
      00536A C0 82            [24] 1922 	push	dpl
      00536C C0 83            [24] 1923 	push	dph
      00536E C0 F0            [24] 1924 	push	b
                           0007D2  1925 	C$stream_buffer.c$670$1_0$176 ==.
                                   1926 ;	src/FreeRTOS/stream_buffer.c:670: if( xSpace == ( size_t ) 0 )
      005370 E5 0C            [12] 1927 	mov	a,_bp
      005372 24 F7            [12] 1928 	add	a,#0xf7
      005374 F8               [12] 1929 	mov	r0,a
      005375 E6               [12] 1930 	mov	a,@r0
      005376 08               [12] 1931 	inc	r0
      005377 46               [12] 1932 	orl	a,@r0
                           0007DA  1933 	C$stream_buffer.c$674$2_0$177 ==.
                                   1934 ;	src/FreeRTOS/stream_buffer.c:674: xShouldWrite = pdFALSE;
      005378 70 04            [24] 1935 	jnz	00108$
      00537A FC               [12] 1936 	mov	r4,a
      00537B 02 54 17         [24] 1937 	ljmp	00109$
      00537E                       1938 00108$:
                           0007E0  1939 	C$stream_buffer.c$676$1_0$176 ==.
                                   1940 ;	src/FreeRTOS/stream_buffer.c:676: else if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) == ( uint8_t ) 0 )
      00537E A8 0C            [24] 1941 	mov	r0,_bp
      005380 08               [12] 1942 	inc	r0
      005381 74 11            [12] 1943 	mov	a,#0x11
      005383 26               [12] 1944 	add	a,@r0
      005384 FA               [12] 1945 	mov	r2,a
      005385 E4               [12] 1946 	clr	a
      005386 08               [12] 1947 	inc	r0
      005387 36               [12] 1948 	addc	a,@r0
      005388 FB               [12] 1949 	mov	r3,a
      005389 08               [12] 1950 	inc	r0
      00538A 86 07            [24] 1951 	mov	ar7,@r0
      00538C 8A 82            [24] 1952 	mov	dpl,r2
      00538E 8B 83            [24] 1953 	mov	dph,r3
      005390 8F F0            [24] 1954 	mov	b,r7
      005392 12 70 5A         [24] 1955 	lcall	__gptrget
      005395 FA               [12] 1956 	mov	r2,a
      005396 20 E0 37         [24] 1957 	jb	acc.0,00105$
                           0007FB  1958 	C$stream_buffer.c$681$2_0$178 ==.
                                   1959 ;	src/FreeRTOS/stream_buffer.c:681: xShouldWrite = pdTRUE;
      005399 7C 01            [12] 1960 	mov	r4,#0x01
                           0007FD  1961 	C$stream_buffer.c$682$2_0$178 ==.
                                   1962 ;	src/FreeRTOS/stream_buffer.c:682: xDataLengthBytes = configMIN( xDataLengthBytes, xSpace );
      00539B E5 0C            [12] 1963 	mov	a,_bp
      00539D 24 F9            [12] 1964 	add	a,#0xf9
      00539F F8               [12] 1965 	mov	r0,a
      0053A0 E5 0C            [12] 1966 	mov	a,_bp
      0053A2 24 F7            [12] 1967 	add	a,#0xf7
      0053A4 F9               [12] 1968 	mov	r1,a
      0053A5 C3               [12] 1969 	clr	c
      0053A6 E6               [12] 1970 	mov	a,@r0
      0053A7 97               [12] 1971 	subb	a,@r1
      0053A8 08               [12] 1972 	inc	r0
      0053A9 E6               [12] 1973 	mov	a,@r0
      0053AA 09               [12] 1974 	inc	r1
      0053AB 97               [12] 1975 	subb	a,@r1
      0053AC 50 0C            [24] 1976 	jnc	00115$
      0053AE E5 0C            [12] 1977 	mov	a,_bp
      0053B0 24 F9            [12] 1978 	add	a,#0xf9
      0053B2 F8               [12] 1979 	mov	r0,a
      0053B3 86 06            [24] 1980 	mov	ar6,@r0
      0053B5 08               [12] 1981 	inc	r0
      0053B6 86 07            [24] 1982 	mov	ar7,@r0
      0053B8 80 0A            [24] 1983 	sjmp	00116$
      0053BA                       1984 00115$:
      0053BA E5 0C            [12] 1985 	mov	a,_bp
      0053BC 24 F7            [12] 1986 	add	a,#0xf7
      0053BE F8               [12] 1987 	mov	r0,a
      0053BF 86 06            [24] 1988 	mov	ar6,@r0
      0053C1 08               [12] 1989 	inc	r0
      0053C2 86 07            [24] 1990 	mov	ar7,@r0
      0053C4                       1991 00116$:
      0053C4 E5 0C            [12] 1992 	mov	a,_bp
      0053C6 24 F9            [12] 1993 	add	a,#0xf9
      0053C8 F8               [12] 1994 	mov	r0,a
      0053C9 A6 06            [24] 1995 	mov	@r0,ar6
      0053CB 08               [12] 1996 	inc	r0
      0053CC A6 07            [24] 1997 	mov	@r0,ar7
      0053CE 80 47            [24] 1998 	sjmp	00109$
      0053D0                       1999 00105$:
                           000832  2000 	C$stream_buffer.c$684$1_0$176 ==.
                                   2001 ;	src/FreeRTOS/stream_buffer.c:684: else if( xSpace >= xRequiredSpace )
      0053D0 E5 0C            [12] 2002 	mov	a,_bp
      0053D2 24 F7            [12] 2003 	add	a,#0xf7
      0053D4 F8               [12] 2004 	mov	r0,a
      0053D5 E5 0C            [12] 2005 	mov	a,_bp
      0053D7 24 F5            [12] 2006 	add	a,#0xf5
      0053D9 F9               [12] 2007 	mov	r1,a
      0053DA C3               [12] 2008 	clr	c
      0053DB E6               [12] 2009 	mov	a,@r0
      0053DC 97               [12] 2010 	subb	a,@r1
      0053DD 08               [12] 2011 	inc	r0
      0053DE E6               [12] 2012 	mov	a,@r0
      0053DF 09               [12] 2013 	inc	r1
      0053E0 97               [12] 2014 	subb	a,@r1
      0053E1 40 32            [24] 2015 	jc	00102$
                           000845  2016 	C$stream_buffer.c$690$2_0$179 ==.
                                   2017 ;	src/FreeRTOS/stream_buffer.c:690: xShouldWrite = pdTRUE;
      0053E3 7C 01            [12] 2018 	mov	r4,#0x01
                           000847  2019 	C$stream_buffer.c$691$2_0$179 ==.
                                   2020 ;	src/FreeRTOS/stream_buffer.c:691: ( void ) prvWriteBytesToBuffer( pxStreamBuffer, ( const uint8_t * ) &( xDataLengthBytes ), sbBYTES_TO_STORE_MESSAGE_LENGTH );
      0053E5 E5 0C            [12] 2021 	mov	a,_bp
      0053E7 24 F9            [12] 2022 	add	a,#0xf9
      0053E9 FF               [12] 2023 	mov	r7,a
      0053EA 7E 00            [12] 2024 	mov	r6,#0x00
      0053EC 7D 40            [12] 2025 	mov	r5,#0x40
      0053EE C0 04            [24] 2026 	push	ar4
      0053F0 74 02            [12] 2027 	mov	a,#0x02
      0053F2 C0 E0            [24] 2028 	push	acc
      0053F4 E4               [12] 2029 	clr	a
      0053F5 C0 E0            [24] 2030 	push	acc
      0053F7 C0 07            [24] 2031 	push	ar7
      0053F9 C0 06            [24] 2032 	push	ar6
      0053FB C0 05            [24] 2033 	push	ar5
      0053FD A8 0C            [24] 2034 	mov	r0,_bp
      0053FF 08               [12] 2035 	inc	r0
      005400 86 82            [24] 2036 	mov	dpl,@r0
      005402 08               [12] 2037 	inc	r0
      005403 86 83            [24] 2038 	mov	dph,@r0
      005405 08               [12] 2039 	inc	r0
      005406 86 F0            [24] 2040 	mov	b,@r0
      005408 12 5B F4         [24] 2041 	lcall	_prvWriteBytesToBuffer
      00540B E5 81            [12] 2042 	mov	a,sp
      00540D 24 FB            [12] 2043 	add	a,#0xfb
      00540F F5 81            [12] 2044 	mov	sp,a
      005411 D0 04            [24] 2045 	pop	ar4
      005413 80 02            [24] 2046 	sjmp	00109$
      005415                       2047 00102$:
                           000877  2048 	C$stream_buffer.c$696$2_0$180 ==.
                                   2049 ;	src/FreeRTOS/stream_buffer.c:696: xShouldWrite = pdFALSE;
      005415 7C 00            [12] 2050 	mov	r4,#0x00
      005417                       2051 00109$:
                           000879  2052 	C$stream_buffer.c$699$1_0$176 ==.
                                   2053 ;	src/FreeRTOS/stream_buffer.c:699: if( xShouldWrite != pdFALSE )
      005417 EC               [12] 2054 	mov	a,r4
      005418 60 39            [24] 2055 	jz	00111$
                           00087C  2056 	C$stream_buffer.c$702$2_0$181 ==.
                                   2057 ;	src/FreeRTOS/stream_buffer.c:702: xReturn = prvWriteBytesToBuffer( pxStreamBuffer, ( const uint8_t * ) pvTxData, xDataLengthBytes ); /*lint !e9079 Storage buffer is implemented as uint8_t for ease of sizing, alighment and access. */
      00541A E5 0C            [12] 2058 	mov	a,_bp
      00541C 24 FB            [12] 2059 	add	a,#0xfb
      00541E F8               [12] 2060 	mov	r0,a
      00541F 86 05            [24] 2061 	mov	ar5,@r0
      005421 08               [12] 2062 	inc	r0
      005422 86 06            [24] 2063 	mov	ar6,@r0
      005424 08               [12] 2064 	inc	r0
      005425 86 07            [24] 2065 	mov	ar7,@r0
      005427 E5 0C            [12] 2066 	mov	a,_bp
      005429 24 F9            [12] 2067 	add	a,#0xf9
      00542B F8               [12] 2068 	mov	r0,a
      00542C E6               [12] 2069 	mov	a,@r0
      00542D C0 E0            [24] 2070 	push	acc
      00542F 08               [12] 2071 	inc	r0
      005430 E6               [12] 2072 	mov	a,@r0
      005431 C0 E0            [24] 2073 	push	acc
      005433 C0 05            [24] 2074 	push	ar5
      005435 C0 06            [24] 2075 	push	ar6
      005437 C0 07            [24] 2076 	push	ar7
      005439 A8 0C            [24] 2077 	mov	r0,_bp
      00543B 08               [12] 2078 	inc	r0
      00543C 86 82            [24] 2079 	mov	dpl,@r0
      00543E 08               [12] 2080 	inc	r0
      00543F 86 83            [24] 2081 	mov	dph,@r0
      005441 08               [12] 2082 	inc	r0
      005442 86 F0            [24] 2083 	mov	b,@r0
      005444 12 5B F4         [24] 2084 	lcall	_prvWriteBytesToBuffer
      005447 AE 82            [24] 2085 	mov	r6,dpl
      005449 AF 83            [24] 2086 	mov	r7,dph
      00544B E5 81            [12] 2087 	mov	a,sp
      00544D 24 FB            [12] 2088 	add	a,#0xfb
      00544F F5 81            [12] 2089 	mov	sp,a
      005451 80 04            [24] 2090 	sjmp	00112$
      005453                       2091 00111$:
                           0008B5  2092 	C$stream_buffer.c$706$2_0$182 ==.
                                   2093 ;	src/FreeRTOS/stream_buffer.c:706: xReturn = 0;
      005453 7E 00            [12] 2094 	mov	r6,#0x00
      005455 7F 00            [12] 2095 	mov	r7,#0x00
      005457                       2096 00112$:
                           0008B9  2097 	C$stream_buffer.c$709$1_0$176 ==.
                                   2098 ;	src/FreeRTOS/stream_buffer.c:709: return xReturn;
      005457 8E 82            [24] 2099 	mov	dpl,r6
      005459 8F 83            [24] 2100 	mov	dph,r7
                           0008BD  2101 	C$stream_buffer.c$710$1_0$176 ==.
                                   2102 ;	src/FreeRTOS/stream_buffer.c:710: }
      00545B 85 0C 81         [24] 2103 	mov	sp,_bp
      00545E D0 0C            [24] 2104 	pop	_bp
                           0008C2  2105 	C$stream_buffer.c$710$1_0$176 ==.
                           0008C2  2106 	XFstream_buffer$prvWriteMessageToBuffer$0$0 ==.
      005460 22               [24] 2107 	ret
                                   2108 ;------------------------------------------------------------
                                   2109 ;Allocation info for local variables in function 'xStreamBufferReceive'
                                   2110 ;------------------------------------------------------------
                                   2111 ;pvRxData                  Allocated to stack - _bp -5
                                   2112 ;xBufferLengthBytes        Allocated to stack - _bp -7
                                   2113 ;xTicksToWait              Allocated to stack - _bp -9
                                   2114 ;xStreamBuffer             Allocated to registers r7 r6 r5 
                                   2115 ;pxStreamBuffer            Allocated to stack - _bp +3
                                   2116 ;xReceivedLength           Allocated to stack - _bp +1
                                   2117 ;xBytesAvailable           Allocated to stack - _bp +6
                                   2118 ;xBytesToStoreMessageLength Allocated to stack - _bp +8
                                   2119 ;sloc0                     Allocated to stack - _bp +1
                                   2120 ;------------------------------------------------------------
                           0008C3  2121 	G$xStreamBufferReceive$0$0 ==.
                           0008C3  2122 	C$stream_buffer.c$713$1_0$184 ==.
                                   2123 ;	src/FreeRTOS/stream_buffer.c:713: size_t xStreamBufferReceive( StreamBufferHandle_t xStreamBuffer,
                                   2124 ;	-----------------------------------------
                                   2125 ;	 function xStreamBufferReceive
                                   2126 ;	-----------------------------------------
      005461                       2127 _xStreamBufferReceive:
      005461 C0 0C            [24] 2128 	push	_bp
      005463 E5 81            [12] 2129 	mov	a,sp
      005465 F5 0C            [12] 2130 	mov	_bp,a
      005467 24 09            [12] 2131 	add	a,#0x09
      005469 F5 81            [12] 2132 	mov	sp,a
      00546B AF 82            [24] 2133 	mov	r7,dpl
      00546D AE 83            [24] 2134 	mov	r6,dph
      00546F AD F0            [24] 2135 	mov	r5,b
                           0008D3  2136 	C$stream_buffer.c$718$2_0$184 ==.
                                   2137 ;	src/FreeRTOS/stream_buffer.c:718: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
      005471 E5 0C            [12] 2138 	mov	a,_bp
      005473 24 03            [12] 2139 	add	a,#0x03
      005475 F8               [12] 2140 	mov	r0,a
      005476 A6 07            [24] 2141 	mov	@r0,ar7
      005478 08               [12] 2142 	inc	r0
      005479 A6 06            [24] 2143 	mov	@r0,ar6
      00547B 08               [12] 2144 	inc	r0
      00547C A6 05            [24] 2145 	mov	@r0,ar5
                           0008E0  2146 	C$stream_buffer.c$719$2_0$184 ==.
                                   2147 ;	src/FreeRTOS/stream_buffer.c:719: size_t xReceivedLength = 0, xBytesAvailable, xBytesToStoreMessageLength;
      00547E A8 0C            [24] 2148 	mov	r0,_bp
      005480 08               [12] 2149 	inc	r0
      005481 E4               [12] 2150 	clr	a
      005482 F6               [12] 2151 	mov	@r0,a
      005483 08               [12] 2152 	inc	r0
      005484 F6               [12] 2153 	mov	@r0,a
                           0008E7  2154 	C$stream_buffer.c$729$1_0$184 ==.
                                   2155 ;	src/FreeRTOS/stream_buffer.c:729: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      005485 74 11            [12] 2156 	mov	a,#0x11
      005487 2F               [12] 2157 	add	a,r7
      005488 FB               [12] 2158 	mov	r3,a
      005489 E4               [12] 2159 	clr	a
      00548A 3E               [12] 2160 	addc	a,r6
      00548B FC               [12] 2161 	mov	r4,a
      00548C 8B 82            [24] 2162 	mov	dpl,r3
      00548E 8C 83            [24] 2163 	mov	dph,r4
      005490 8D F0            [24] 2164 	mov	b,r5
      005492 12 70 5A         [24] 2165 	lcall	__gptrget
      005495 FB               [12] 2166 	mov	r3,a
      005496 30 E0 0C         [24] 2167 	jnb	acc.0,00102$
                           0008FB  2168 	C$stream_buffer.c$731$2_0$185 ==.
                                   2169 ;	src/FreeRTOS/stream_buffer.c:731: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
      005499 E5 0C            [12] 2170 	mov	a,_bp
      00549B 24 08            [12] 2171 	add	a,#0x08
      00549D F8               [12] 2172 	mov	r0,a
      00549E 76 02            [12] 2173 	mov	@r0,#0x02
      0054A0 08               [12] 2174 	inc	r0
      0054A1 76 00            [12] 2175 	mov	@r0,#0x00
      0054A3 80 09            [24] 2176 	sjmp	00103$
      0054A5                       2177 00102$:
                           000907  2178 	C$stream_buffer.c$735$2_0$186 ==.
                                   2179 ;	src/FreeRTOS/stream_buffer.c:735: xBytesToStoreMessageLength = 0;
      0054A5 E5 0C            [12] 2180 	mov	a,_bp
      0054A7 24 08            [12] 2181 	add	a,#0x08
      0054A9 F8               [12] 2182 	mov	r0,a
      0054AA E4               [12] 2183 	clr	a
      0054AB F6               [12] 2184 	mov	@r0,a
      0054AC 08               [12] 2185 	inc	r0
      0054AD F6               [12] 2186 	mov	@r0,a
      0054AE                       2187 00103$:
                           000910  2188 	C$stream_buffer.c$738$1_0$184 ==.
                                   2189 ;	src/FreeRTOS/stream_buffer.c:738: if( xTicksToWait != ( TickType_t ) 0 )
      0054AE E5 0C            [12] 2190 	mov	a,_bp
      0054B0 24 F7            [12] 2191 	add	a,#0xf7
      0054B2 F8               [12] 2192 	mov	r0,a
      0054B3 E6               [12] 2193 	mov	a,@r0
      0054B4 08               [12] 2194 	inc	r0
      0054B5 46               [12] 2195 	orl	a,@r0
      0054B6 70 03            [24] 2196 	jnz	00149$
      0054B8 02 55 C3         [24] 2197 	ljmp	00109$
      0054BB                       2198 00149$:
                           00091D  2199 	C$stream_buffer.c$742$2_0$187 ==.
                                   2200 ;	src/FreeRTOS/stream_buffer.c:742: taskENTER_CRITICAL();
      0054BB C0 E0            [24] 2201 	push ACC 
      0054BD C0 A8            [24] 2202 	push IE 
                                   2203 ;	assignBit
      0054BF C2 AF            [12] 2204 	clr	_EA
                           000923  2205 	C$stream_buffer.c$744$3_0$188 ==.
                                   2206 ;	src/FreeRTOS/stream_buffer.c:744: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
      0054C1 E5 0C            [12] 2207 	mov	a,_bp
      0054C3 24 03            [12] 2208 	add	a,#0x03
      0054C5 F8               [12] 2209 	mov	r0,a
      0054C6 86 82            [24] 2210 	mov	dpl,@r0
      0054C8 08               [12] 2211 	inc	r0
      0054C9 86 83            [24] 2212 	mov	dph,@r0
      0054CB 08               [12] 2213 	inc	r0
      0054CC 86 F0            [24] 2214 	mov	b,@r0
      0054CE 12 60 56         [24] 2215 	lcall	_prvBytesInBuffer
      0054D1 AA 82            [24] 2216 	mov	r2,dpl
      0054D3 AB 83            [24] 2217 	mov	r3,dph
      0054D5 E5 0C            [12] 2218 	mov	a,_bp
      0054D7 24 06            [12] 2219 	add	a,#0x06
      0054D9 F8               [12] 2220 	mov	r0,a
      0054DA A6 02            [24] 2221 	mov	@r0,ar2
      0054DC 08               [12] 2222 	inc	r0
      0054DD A6 03            [24] 2223 	mov	@r0,ar3
                           000941  2224 	C$stream_buffer.c$751$3_0$188 ==.
                                   2225 ;	src/FreeRTOS/stream_buffer.c:751: if( xBytesAvailable <= xBytesToStoreMessageLength )
      0054DF E5 0C            [12] 2226 	mov	a,_bp
      0054E1 24 06            [12] 2227 	add	a,#0x06
      0054E3 F8               [12] 2228 	mov	r0,a
      0054E4 E5 0C            [12] 2229 	mov	a,_bp
      0054E6 24 08            [12] 2230 	add	a,#0x08
      0054E8 F9               [12] 2231 	mov	r1,a
      0054E9 C3               [12] 2232 	clr	c
      0054EA E7               [12] 2233 	mov	a,@r1
      0054EB 96               [12] 2234 	subb	a,@r0
      0054EC 09               [12] 2235 	inc	r1
      0054ED E7               [12] 2236 	mov	a,@r1
      0054EE 08               [12] 2237 	inc	r0
      0054EF 96               [12] 2238 	subb	a,@r0
      0054F0 92 00            [24] 2239 	mov	b0,c
      0054F2 40 4A            [24] 2240 	jc	00105$
                           000956  2241 	C$stream_buffer.c$754$4_0$189 ==.
                                   2242 ;	src/FreeRTOS/stream_buffer.c:754: ( void ) xTaskNotifyStateClear( NULL );
      0054F4 90 00 00         [24] 2243 	mov	dptr,#0x0000
      0054F7 75 F0 00         [24] 2244 	mov	b,#0x00
      0054FA C0 20            [24] 2245 	push	bits
      0054FC 12 21 E1         [24] 2246 	lcall	_xTaskNotifyStateClear
      0054FF D0 20            [24] 2247 	pop	bits
                           000963  2248 	C$stream_buffer.c$758$4_0$189 ==.
                                   2249 ;	src/FreeRTOS/stream_buffer.c:758: pxStreamBuffer->xTaskWaitingToReceive = xTaskGetCurrentTaskHandle();
      005501 E5 0C            [12] 2250 	mov	a,_bp
      005503 24 03            [12] 2251 	add	a,#0x03
      005505 F8               [12] 2252 	mov	r0,a
      005506 74 08            [12] 2253 	mov	a,#0x08
      005508 26               [12] 2254 	add	a,@r0
      005509 FA               [12] 2255 	mov	r2,a
      00550A E4               [12] 2256 	clr	a
      00550B 08               [12] 2257 	inc	r0
      00550C 36               [12] 2258 	addc	a,@r0
      00550D FB               [12] 2259 	mov	r3,a
      00550E 08               [12] 2260 	inc	r0
      00550F 86 05            [24] 2261 	mov	ar5,@r0
      005511 C0 05            [24] 2262 	push	ar5
      005513 C0 03            [24] 2263 	push	ar3
      005515 C0 02            [24] 2264 	push	ar2
      005517 C0 20            [24] 2265 	push	bits
      005519 12 15 47         [24] 2266 	lcall	_xTaskGetCurrentTaskHandle
      00551C AC 82            [24] 2267 	mov	r4,dpl
      00551E AE 83            [24] 2268 	mov	r6,dph
      005520 AF F0            [24] 2269 	mov	r7,b
      005522 D0 20            [24] 2270 	pop	bits
      005524 D0 02            [24] 2271 	pop	ar2
      005526 D0 03            [24] 2272 	pop	ar3
      005528 D0 05            [24] 2273 	pop	ar5
      00552A 8A 82            [24] 2274 	mov	dpl,r2
      00552C 8B 83            [24] 2275 	mov	dph,r3
      00552E 8D F0            [24] 2276 	mov	b,r5
      005530 EC               [12] 2277 	mov	a,r4
      005531 12 66 A0         [24] 2278 	lcall	__gptrput
      005534 A3               [24] 2279 	inc	dptr
      005535 EE               [12] 2280 	mov	a,r6
      005536 12 66 A0         [24] 2281 	lcall	__gptrput
      005539 A3               [24] 2282 	inc	dptr
      00553A EF               [12] 2283 	mov	a,r7
      00553B 12 66 A0         [24] 2284 	lcall	__gptrput
      00553E                       2285 00105$:
                           0009A0  2286 	C$stream_buffer.c$765$2_0$187 ==.
                                   2287 ;	src/FreeRTOS/stream_buffer.c:765: taskEXIT_CRITICAL();
      00553E D0 E0            [24] 2288 	pop ACC 
      005540 53 E0 80         [24] 2289 	anl	_ACC,#0x80
      005543 E5 E0            [12] 2290 	mov	a,_ACC
      005545 42 A8            [12] 2291 	orl	_IE,a
      005547 D0 E0            [24] 2292 	pop ACC 
                           0009AB  2293 	C$stream_buffer.c$767$2_0$187 ==.
                                   2294 ;	src/FreeRTOS/stream_buffer.c:767: if( xBytesAvailable <= xBytesToStoreMessageLength )
      005549 30 00 03         [24] 2295 	jnb	b0,00151$
      00554C 02 55 E1         [24] 2296 	ljmp	00110$
      00554F                       2297 00151$:
                           0009B1  2298 	C$stream_buffer.c$771$3_0$191 ==.
                                   2299 ;	src/FreeRTOS/stream_buffer.c:771: ( void ) xTaskNotifyWait( ( uint32_t ) 0, ( uint32_t ) 0, NULL, xTicksToWait );
      00554F E5 0C            [12] 2300 	mov	a,_bp
      005551 24 F7            [12] 2301 	add	a,#0xf7
      005553 F8               [12] 2302 	mov	r0,a
      005554 E6               [12] 2303 	mov	a,@r0
      005555 C0 E0            [24] 2304 	push	acc
      005557 08               [12] 2305 	inc	r0
      005558 E6               [12] 2306 	mov	a,@r0
      005559 C0 E0            [24] 2307 	push	acc
      00555B E4               [12] 2308 	clr	a
      00555C C0 E0            [24] 2309 	push	acc
      00555E C0 E0            [24] 2310 	push	acc
      005560 C0 E0            [24] 2311 	push	acc
      005562 C0 E0            [24] 2312 	push	acc
      005564 C0 E0            [24] 2313 	push	acc
      005566 C0 E0            [24] 2314 	push	acc
      005568 C0 E0            [24] 2315 	push	acc
      00556A 90 00 00         [24] 2316 	mov	dptr,#(0x00&0x00ff)
      00556D E4               [12] 2317 	clr	a
      00556E F5 F0            [12] 2318 	mov	b,a
      005570 12 17 6D         [24] 2319 	lcall	_xTaskNotifyWait
      005573 E5 81            [12] 2320 	mov	a,sp
      005575 24 F7            [12] 2321 	add	a,#0xf7
      005577 F5 81            [12] 2322 	mov	sp,a
                           0009DB  2323 	C$stream_buffer.c$772$3_0$191 ==.
                                   2324 ;	src/FreeRTOS/stream_buffer.c:772: pxStreamBuffer->xTaskWaitingToReceive = NULL;
      005579 E5 0C            [12] 2325 	mov	a,_bp
      00557B 24 03            [12] 2326 	add	a,#0x03
      00557D F8               [12] 2327 	mov	r0,a
      00557E 74 08            [12] 2328 	mov	a,#0x08
      005580 26               [12] 2329 	add	a,@r0
      005581 FD               [12] 2330 	mov	r5,a
      005582 E4               [12] 2331 	clr	a
      005583 08               [12] 2332 	inc	r0
      005584 36               [12] 2333 	addc	a,@r0
      005585 FE               [12] 2334 	mov	r6,a
      005586 08               [12] 2335 	inc	r0
      005587 86 07            [24] 2336 	mov	ar7,@r0
      005589 7A 00            [12] 2337 	mov	r2,#0x00
      00558B 7B 00            [12] 2338 	mov	r3,#0x00
      00558D 7C 00            [12] 2339 	mov	r4,#0x00
      00558F 8D 82            [24] 2340 	mov	dpl,r5
      005591 8E 83            [24] 2341 	mov	dph,r6
      005593 8F F0            [24] 2342 	mov	b,r7
      005595 EA               [12] 2343 	mov	a,r2
      005596 12 66 A0         [24] 2344 	lcall	__gptrput
      005599 A3               [24] 2345 	inc	dptr
      00559A EB               [12] 2346 	mov	a,r3
      00559B 12 66 A0         [24] 2347 	lcall	__gptrput
      00559E A3               [24] 2348 	inc	dptr
      00559F EC               [12] 2349 	mov	a,r4
      0055A0 12 66 A0         [24] 2350 	lcall	__gptrput
                           000A05  2351 	C$stream_buffer.c$775$3_0$191 ==.
                                   2352 ;	src/FreeRTOS/stream_buffer.c:775: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
      0055A3 E5 0C            [12] 2353 	mov	a,_bp
      0055A5 24 03            [12] 2354 	add	a,#0x03
      0055A7 F8               [12] 2355 	mov	r0,a
      0055A8 86 82            [24] 2356 	mov	dpl,@r0
      0055AA 08               [12] 2357 	inc	r0
      0055AB 86 83            [24] 2358 	mov	dph,@r0
      0055AD 08               [12] 2359 	inc	r0
      0055AE 86 F0            [24] 2360 	mov	b,@r0
      0055B0 12 60 56         [24] 2361 	lcall	_prvBytesInBuffer
      0055B3 AE 82            [24] 2362 	mov	r6,dpl
      0055B5 AF 83            [24] 2363 	mov	r7,dph
      0055B7 E5 0C            [12] 2364 	mov	a,_bp
      0055B9 24 06            [12] 2365 	add	a,#0x06
      0055BB F8               [12] 2366 	mov	r0,a
      0055BC A6 06            [24] 2367 	mov	@r0,ar6
      0055BE 08               [12] 2368 	inc	r0
      0055BF A6 07            [24] 2369 	mov	@r0,ar7
      0055C1 80 1E            [24] 2370 	sjmp	00110$
      0055C3                       2371 00109$:
                           000A25  2372 	C$stream_buffer.c$784$2_0$193 ==.
                                   2373 ;	src/FreeRTOS/stream_buffer.c:784: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
      0055C3 E5 0C            [12] 2374 	mov	a,_bp
      0055C5 24 03            [12] 2375 	add	a,#0x03
      0055C7 F8               [12] 2376 	mov	r0,a
      0055C8 86 82            [24] 2377 	mov	dpl,@r0
      0055CA 08               [12] 2378 	inc	r0
      0055CB 86 83            [24] 2379 	mov	dph,@r0
      0055CD 08               [12] 2380 	inc	r0
      0055CE 86 F0            [24] 2381 	mov	b,@r0
      0055D0 12 60 56         [24] 2382 	lcall	_prvBytesInBuffer
      0055D3 AE 82            [24] 2383 	mov	r6,dpl
      0055D5 AF 83            [24] 2384 	mov	r7,dph
      0055D7 E5 0C            [12] 2385 	mov	a,_bp
      0055D9 24 06            [12] 2386 	add	a,#0x06
      0055DB F8               [12] 2387 	mov	r0,a
      0055DC A6 06            [24] 2388 	mov	@r0,ar6
      0055DE 08               [12] 2389 	inc	r0
      0055DF A6 07            [24] 2390 	mov	@r0,ar7
      0055E1                       2391 00110$:
                           000A43  2392 	C$stream_buffer.c$792$1_0$184 ==.
                                   2393 ;	src/FreeRTOS/stream_buffer.c:792: if( xBytesAvailable > xBytesToStoreMessageLength )
      0055E1 E5 0C            [12] 2394 	mov	a,_bp
      0055E3 24 06            [12] 2395 	add	a,#0x06
      0055E5 F8               [12] 2396 	mov	r0,a
      0055E6 E5 0C            [12] 2397 	mov	a,_bp
      0055E8 24 08            [12] 2398 	add	a,#0x08
      0055EA F9               [12] 2399 	mov	r1,a
      0055EB C3               [12] 2400 	clr	c
      0055EC E7               [12] 2401 	mov	a,@r1
      0055ED 96               [12] 2402 	subb	a,@r0
      0055EE 09               [12] 2403 	inc	r1
      0055EF E7               [12] 2404 	mov	a,@r1
      0055F0 08               [12] 2405 	inc	r0
      0055F1 96               [12] 2406 	subb	a,@r0
      0055F2 40 03            [24] 2407 	jc	00152$
      0055F4 02 56 DB         [24] 2408 	ljmp	00117$
      0055F7                       2409 00152$:
                           000A59  2410 	C$stream_buffer.c$794$2_0$194 ==.
                                   2411 ;	src/FreeRTOS/stream_buffer.c:794: xReceivedLength = prvReadMessageFromBuffer( pxStreamBuffer, pvRxData, xBufferLengthBytes, xBytesAvailable, xBytesToStoreMessageLength );
      0055F7 E5 0C            [12] 2412 	mov	a,_bp
      0055F9 24 08            [12] 2413 	add	a,#0x08
      0055FB F8               [12] 2414 	mov	r0,a
      0055FC E6               [12] 2415 	mov	a,@r0
      0055FD C0 E0            [24] 2416 	push	acc
      0055FF 08               [12] 2417 	inc	r0
      005600 E6               [12] 2418 	mov	a,@r0
      005601 C0 E0            [24] 2419 	push	acc
      005603 E5 0C            [12] 2420 	mov	a,_bp
      005605 24 06            [12] 2421 	add	a,#0x06
      005607 F8               [12] 2422 	mov	r0,a
      005608 E6               [12] 2423 	mov	a,@r0
      005609 C0 E0            [24] 2424 	push	acc
      00560B 08               [12] 2425 	inc	r0
      00560C E6               [12] 2426 	mov	a,@r0
      00560D C0 E0            [24] 2427 	push	acc
      00560F E5 0C            [12] 2428 	mov	a,_bp
      005611 24 F9            [12] 2429 	add	a,#0xf9
      005613 F8               [12] 2430 	mov	r0,a
      005614 E6               [12] 2431 	mov	a,@r0
      005615 C0 E0            [24] 2432 	push	acc
      005617 08               [12] 2433 	inc	r0
      005618 E6               [12] 2434 	mov	a,@r0
      005619 C0 E0            [24] 2435 	push	acc
      00561B E5 0C            [12] 2436 	mov	a,_bp
      00561D 24 FB            [12] 2437 	add	a,#0xfb
      00561F F8               [12] 2438 	mov	r0,a
      005620 E6               [12] 2439 	mov	a,@r0
      005621 C0 E0            [24] 2440 	push	acc
      005623 08               [12] 2441 	inc	r0
      005624 E6               [12] 2442 	mov	a,@r0
      005625 C0 E0            [24] 2443 	push	acc
      005627 08               [12] 2444 	inc	r0
      005628 E6               [12] 2445 	mov	a,@r0
      005629 C0 E0            [24] 2446 	push	acc
      00562B E5 0C            [12] 2447 	mov	a,_bp
      00562D 24 03            [12] 2448 	add	a,#0x03
      00562F F8               [12] 2449 	mov	r0,a
      005630 86 82            [24] 2450 	mov	dpl,@r0
      005632 08               [12] 2451 	inc	r0
      005633 86 83            [24] 2452 	mov	dph,@r0
      005635 08               [12] 2453 	inc	r0
      005636 86 F0            [24] 2454 	mov	b,@r0
      005638 12 59 18         [24] 2455 	lcall	_prvReadMessageFromBuffer
      00563B AE 82            [24] 2456 	mov	r6,dpl
      00563D AF 83            [24] 2457 	mov	r7,dph
      00563F E5 81            [12] 2458 	mov	a,sp
      005641 24 F7            [12] 2459 	add	a,#0xf7
      005643 F5 81            [12] 2460 	mov	sp,a
      005645 A8 0C            [24] 2461 	mov	r0,_bp
      005647 08               [12] 2462 	inc	r0
      005648 A6 06            [24] 2463 	mov	@r0,ar6
      00564A 08               [12] 2464 	inc	r0
      00564B A6 07            [24] 2465 	mov	@r0,ar7
                           000AAF  2466 	C$stream_buffer.c$797$2_0$194 ==.
                                   2467 ;	src/FreeRTOS/stream_buffer.c:797: if( xReceivedLength != ( size_t ) 0 )
      00564D EE               [12] 2468 	mov	a,r6
      00564E 4F               [12] 2469 	orl	a,r7
      00564F 70 03            [24] 2470 	jnz	00153$
      005651 02 56 DB         [24] 2471 	ljmp	00117$
      005654                       2472 00153$:
                           000AB6  2473 	C$stream_buffer.c$800$3_0$195 ==.
                                   2474 ;	src/FreeRTOS/stream_buffer.c:800: sbRECEIVE_COMPLETED( pxStreamBuffer );
      005654 12 09 4A         [24] 2475 	lcall	_vTaskSuspendAll
      005657 E5 0C            [12] 2476 	mov	a,_bp
      005659 24 03            [12] 2477 	add	a,#0x03
      00565B F8               [12] 2478 	mov	r0,a
      00565C 74 0B            [12] 2479 	mov	a,#0x0b
      00565E 26               [12] 2480 	add	a,@r0
      00565F FD               [12] 2481 	mov	r5,a
      005660 E4               [12] 2482 	clr	a
      005661 08               [12] 2483 	inc	r0
      005662 36               [12] 2484 	addc	a,@r0
      005663 FE               [12] 2485 	mov	r6,a
      005664 08               [12] 2486 	inc	r0
      005665 86 07            [24] 2487 	mov	ar7,@r0
      005667 8D 82            [24] 2488 	mov	dpl,r5
      005669 8E 83            [24] 2489 	mov	dph,r6
      00566B 8F F0            [24] 2490 	mov	b,r7
      00566D 12 70 5A         [24] 2491 	lcall	__gptrget
      005670 FA               [12] 2492 	mov	r2,a
      005671 A3               [24] 2493 	inc	dptr
      005672 12 70 5A         [24] 2494 	lcall	__gptrget
      005675 FB               [12] 2495 	mov	r3,a
      005676 A3               [24] 2496 	inc	dptr
      005677 12 70 5A         [24] 2497 	lcall	__gptrget
      00567A EA               [12] 2498 	mov	a,r2
      00567B 4B               [12] 2499 	orl	a,r3
      00567C 60 5A            [24] 2500 	jz	00112$
      00567E 8D 82            [24] 2501 	mov	dpl,r5
      005680 8E 83            [24] 2502 	mov	dph,r6
      005682 8F F0            [24] 2503 	mov	b,r7
      005684 12 70 5A         [24] 2504 	lcall	__gptrget
      005687 FA               [12] 2505 	mov	r2,a
      005688 A3               [24] 2506 	inc	dptr
      005689 12 70 5A         [24] 2507 	lcall	__gptrget
      00568C FB               [12] 2508 	mov	r3,a
      00568D A3               [24] 2509 	inc	dptr
      00568E 12 70 5A         [24] 2510 	lcall	__gptrget
      005691 FC               [12] 2511 	mov	r4,a
      005692 C0 07            [24] 2512 	push	ar7
      005694 C0 06            [24] 2513 	push	ar6
      005696 C0 05            [24] 2514 	push	ar5
      005698 E4               [12] 2515 	clr	a
      005699 C0 E0            [24] 2516 	push	acc
      00569B C0 E0            [24] 2517 	push	acc
      00569D C0 E0            [24] 2518 	push	acc
      00569F C0 E0            [24] 2519 	push	acc
      0056A1 C0 E0            [24] 2520 	push	acc
      0056A3 C0 E0            [24] 2521 	push	acc
      0056A5 C0 E0            [24] 2522 	push	acc
      0056A7 C0 E0            [24] 2523 	push	acc
      0056A9 8A 82            [24] 2524 	mov	dpl,r2
      0056AB 8B 83            [24] 2525 	mov	dph,r3
      0056AD 8C F0            [24] 2526 	mov	b,r4
      0056AF 12 19 E0         [24] 2527 	lcall	_xTaskGenericNotify
      0056B2 E5 81            [12] 2528 	mov	a,sp
      0056B4 24 F8            [12] 2529 	add	a,#0xf8
      0056B6 F5 81            [12] 2530 	mov	sp,a
      0056B8 D0 05            [24] 2531 	pop	ar5
      0056BA D0 06            [24] 2532 	pop	ar6
      0056BC D0 07            [24] 2533 	pop	ar7
      0056BE 7A 00            [12] 2534 	mov	r2,#0x00
      0056C0 7B 00            [12] 2535 	mov	r3,#0x00
      0056C2 7C 00            [12] 2536 	mov	r4,#0x00
      0056C4 8D 82            [24] 2537 	mov	dpl,r5
      0056C6 8E 83            [24] 2538 	mov	dph,r6
      0056C8 8F F0            [24] 2539 	mov	b,r7
      0056CA EA               [12] 2540 	mov	a,r2
      0056CB 12 66 A0         [24] 2541 	lcall	__gptrput
      0056CE A3               [24] 2542 	inc	dptr
      0056CF EB               [12] 2543 	mov	a,r3
      0056D0 12 66 A0         [24] 2544 	lcall	__gptrput
      0056D3 A3               [24] 2545 	inc	dptr
      0056D4 EC               [12] 2546 	mov	a,r4
      0056D5 12 66 A0         [24] 2547 	lcall	__gptrput
      0056D8                       2548 00112$:
      0056D8 12 09 52         [24] 2549 	lcall	_xTaskResumeAll
                           000B3D  2550 	C$stream_buffer.c$810$1_0$184 ==.
                                   2551 ;	src/FreeRTOS/stream_buffer.c:810: mtCOVERAGE_TEST_MARKER();
      0056DB                       2552 00117$:
                           000B3D  2553 	C$stream_buffer.c$813$1_0$184 ==.
                                   2554 ;	src/FreeRTOS/stream_buffer.c:813: return xReceivedLength;
      0056DB A8 0C            [24] 2555 	mov	r0,_bp
      0056DD 08               [12] 2556 	inc	r0
      0056DE 86 82            [24] 2557 	mov	dpl,@r0
      0056E0 08               [12] 2558 	inc	r0
      0056E1 86 83            [24] 2559 	mov	dph,@r0
                           000B45  2560 	C$stream_buffer.c$814$1_0$184 ==.
                                   2561 ;	src/FreeRTOS/stream_buffer.c:814: }
      0056E3 85 0C 81         [24] 2562 	mov	sp,_bp
      0056E6 D0 0C            [24] 2563 	pop	_bp
                           000B4A  2564 	C$stream_buffer.c$814$1_0$184 ==.
                           000B4A  2565 	XG$xStreamBufferReceive$0$0 ==.
      0056E8 22               [24] 2566 	ret
                                   2567 ;------------------------------------------------------------
                                   2568 ;Allocation info for local variables in function 'xStreamBufferNextMessageLengthBytes'
                                   2569 ;------------------------------------------------------------
                                   2570 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   2571 ;pxStreamBuffer            Allocated to registers 
                                   2572 ;xReturn                   Allocated to registers r3 r4 
                                   2573 ;xBytesAvailable           Allocated to stack - _bp +1
                                   2574 ;xOriginalTail             Allocated to stack - _bp +3
                                   2575 ;xTempReturn               Allocated to stack - _bp +5
                                   2576 ;------------------------------------------------------------
                           000B4B  2577 	G$xStreamBufferNextMessageLengthBytes$0$0 ==.
                           000B4B  2578 	C$stream_buffer.c$817$1_0$201 ==.
                                   2579 ;	src/FreeRTOS/stream_buffer.c:817: size_t xStreamBufferNextMessageLengthBytes( StreamBufferHandle_t xStreamBuffer )
                                   2580 ;	-----------------------------------------
                                   2581 ;	 function xStreamBufferNextMessageLengthBytes
                                   2582 ;	-----------------------------------------
      0056E9                       2583 _xStreamBufferNextMessageLengthBytes:
      0056E9 C0 0C            [24] 2584 	push	_bp
      0056EB E5 81            [12] 2585 	mov	a,sp
      0056ED F5 0C            [12] 2586 	mov	_bp,a
      0056EF 24 06            [12] 2587 	add	a,#0x06
      0056F1 F5 81            [12] 2588 	mov	sp,a
      0056F3 AD 82            [24] 2589 	mov	r5,dpl
      0056F5 AE 83            [24] 2590 	mov	r6,dph
      0056F7 AF F0            [24] 2591 	mov	r7,b
                           000B5B  2592 	C$stream_buffer.c$826$1_0$201 ==.
                                   2593 ;	src/FreeRTOS/stream_buffer.c:826: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      0056F9 74 11            [12] 2594 	mov	a,#0x11
      0056FB 2D               [12] 2595 	add	a,r5
      0056FC FA               [12] 2596 	mov	r2,a
      0056FD E4               [12] 2597 	clr	a
      0056FE 3E               [12] 2598 	addc	a,r6
      0056FF FB               [12] 2599 	mov	r3,a
      005700 8F 04            [24] 2600 	mov	ar4,r7
      005702 8A 82            [24] 2601 	mov	dpl,r2
      005704 8B 83            [24] 2602 	mov	dph,r3
      005706 8C F0            [24] 2603 	mov	b,r4
      005708 12 70 5A         [24] 2604 	lcall	__gptrget
      00570B FA               [12] 2605 	mov	r2,a
      00570C 20 E0 03         [24] 2606 	jb	acc.0,00117$
      00570F 02 57 B6         [24] 2607 	ljmp	00105$
      005712                       2608 00117$:
                           000B74  2609 	C$stream_buffer.c$828$2_0$202 ==.
                                   2610 ;	src/FreeRTOS/stream_buffer.c:828: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
      005712 8D 82            [24] 2611 	mov	dpl,r5
      005714 8E 83            [24] 2612 	mov	dph,r6
      005716 8F F0            [24] 2613 	mov	b,r7
      005718 C0 07            [24] 2614 	push	ar7
      00571A C0 06            [24] 2615 	push	ar6
      00571C C0 05            [24] 2616 	push	ar5
      00571E 12 60 56         [24] 2617 	lcall	_prvBytesInBuffer
      005721 AB 82            [24] 2618 	mov	r3,dpl
      005723 AC 83            [24] 2619 	mov	r4,dph
      005725 D0 05            [24] 2620 	pop	ar5
      005727 D0 06            [24] 2621 	pop	ar6
      005729 D0 07            [24] 2622 	pop	ar7
      00572B A8 0C            [24] 2623 	mov	r0,_bp
      00572D 08               [12] 2624 	inc	r0
      00572E A6 03            [24] 2625 	mov	@r0,ar3
      005730 08               [12] 2626 	inc	r0
      005731 A6 04            [24] 2627 	mov	@r0,ar4
                           000B95  2628 	C$stream_buffer.c$829$2_0$202 ==.
                                   2629 ;	src/FreeRTOS/stream_buffer.c:829: if( xBytesAvailable > sbBYTES_TO_STORE_MESSAGE_LENGTH )
      005733 A8 0C            [24] 2630 	mov	r0,_bp
      005735 08               [12] 2631 	inc	r0
      005736 C3               [12] 2632 	clr	c
      005737 74 02            [12] 2633 	mov	a,#0x02
      005739 96               [12] 2634 	subb	a,@r0
      00573A E4               [12] 2635 	clr	a
      00573B 08               [12] 2636 	inc	r0
      00573C 96               [12] 2637 	subb	a,@r0
      00573D 50 71            [24] 2638 	jnc	00102$
                           000BA1  2639 	C$stream_buffer.c$837$3_0$203 ==.
                                   2640 ;	src/FreeRTOS/stream_buffer.c:837: xOriginalTail = pxStreamBuffer->xTail;
      00573F 8D 82            [24] 2641 	mov	dpl,r5
      005741 8E 83            [24] 2642 	mov	dph,r6
      005743 8F F0            [24] 2643 	mov	b,r7
      005745 E5 0C            [12] 2644 	mov	a,_bp
      005747 24 03            [12] 2645 	add	a,#0x03
      005749 F8               [12] 2646 	mov	r0,a
      00574A 12 70 5A         [24] 2647 	lcall	__gptrget
      00574D F6               [12] 2648 	mov	@r0,a
      00574E A3               [24] 2649 	inc	dptr
      00574F 12 70 5A         [24] 2650 	lcall	__gptrget
      005752 08               [12] 2651 	inc	r0
      005753 F6               [12] 2652 	mov	@r0,a
                           000BB6  2653 	C$stream_buffer.c$838$3_0$203 ==.
                                   2654 ;	src/FreeRTOS/stream_buffer.c:838: ( void ) prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) &xTempReturn, sbBYTES_TO_STORE_MESSAGE_LENGTH, xBytesAvailable );
      005754 E5 0C            [12] 2655 	mov	a,_bp
      005756 24 05            [12] 2656 	add	a,#0x05
      005758 FA               [12] 2657 	mov	r2,a
      005759 7B 00            [12] 2658 	mov	r3,#0x00
      00575B 7C 40            [12] 2659 	mov	r4,#0x40
      00575D C0 07            [24] 2660 	push	ar7
      00575F C0 06            [24] 2661 	push	ar6
      005761 C0 05            [24] 2662 	push	ar5
      005763 A8 0C            [24] 2663 	mov	r0,_bp
      005765 08               [12] 2664 	inc	r0
      005766 E6               [12] 2665 	mov	a,@r0
      005767 C0 E0            [24] 2666 	push	acc
      005769 08               [12] 2667 	inc	r0
      00576A E6               [12] 2668 	mov	a,@r0
      00576B C0 E0            [24] 2669 	push	acc
      00576D 74 02            [12] 2670 	mov	a,#0x02
      00576F C0 E0            [24] 2671 	push	acc
      005771 E4               [12] 2672 	clr	a
      005772 C0 E0            [24] 2673 	push	acc
      005774 C0 02            [24] 2674 	push	ar2
      005776 C0 03            [24] 2675 	push	ar3
      005778 C0 04            [24] 2676 	push	ar4
      00577A 8D 82            [24] 2677 	mov	dpl,r5
      00577C 8E 83            [24] 2678 	mov	dph,r6
      00577E 8F F0            [24] 2679 	mov	b,r7
      005780 12 5E 2E         [24] 2680 	lcall	_prvReadBytesFromBuffer
      005783 E5 81            [12] 2681 	mov	a,sp
      005785 24 F9            [12] 2682 	add	a,#0xf9
      005787 F5 81            [12] 2683 	mov	sp,a
      005789 D0 05            [24] 2684 	pop	ar5
      00578B D0 06            [24] 2685 	pop	ar6
      00578D D0 07            [24] 2686 	pop	ar7
                           000BF1  2687 	C$stream_buffer.c$839$3_0$203 ==.
                                   2688 ;	src/FreeRTOS/stream_buffer.c:839: xReturn = ( size_t ) xTempReturn;
      00578F E5 0C            [12] 2689 	mov	a,_bp
      005791 24 05            [12] 2690 	add	a,#0x05
      005793 F8               [12] 2691 	mov	r0,a
      005794 86 03            [24] 2692 	mov	ar3,@r0
      005796 08               [12] 2693 	inc	r0
      005797 86 04            [24] 2694 	mov	ar4,@r0
                           000BFB  2695 	C$stream_buffer.c$840$3_0$203 ==.
                                   2696 ;	src/FreeRTOS/stream_buffer.c:840: pxStreamBuffer->xTail = xOriginalTail;
      005799 8D 82            [24] 2697 	mov	dpl,r5
      00579B 8E 83            [24] 2698 	mov	dph,r6
      00579D 8F F0            [24] 2699 	mov	b,r7
      00579F E5 0C            [12] 2700 	mov	a,_bp
      0057A1 24 03            [12] 2701 	add	a,#0x03
      0057A3 F8               [12] 2702 	mov	r0,a
      0057A4 E6               [12] 2703 	mov	a,@r0
      0057A5 12 66 A0         [24] 2704 	lcall	__gptrput
      0057A8 A3               [24] 2705 	inc	dptr
      0057A9 08               [12] 2706 	inc	r0
      0057AA E6               [12] 2707 	mov	a,@r0
      0057AB 12 66 A0         [24] 2708 	lcall	__gptrput
      0057AE 80 0A            [24] 2709 	sjmp	00106$
      0057B0                       2710 00102$:
                           000C12  2711 	C$stream_buffer.c$849$3_0$204 ==.
                                   2712 ;	src/FreeRTOS/stream_buffer.c:849: xReturn = 0;
      0057B0 7B 00            [12] 2713 	mov	r3,#0x00
      0057B2 7C 00            [12] 2714 	mov	r4,#0x00
      0057B4 80 04            [24] 2715 	sjmp	00106$
      0057B6                       2716 00105$:
                           000C18  2717 	C$stream_buffer.c$854$2_0$205 ==.
                                   2718 ;	src/FreeRTOS/stream_buffer.c:854: xReturn = 0;
      0057B6 7B 00            [12] 2719 	mov	r3,#0x00
      0057B8 7C 00            [12] 2720 	mov	r4,#0x00
      0057BA                       2721 00106$:
                           000C1C  2722 	C$stream_buffer.c$857$1_0$201 ==.
                                   2723 ;	src/FreeRTOS/stream_buffer.c:857: return xReturn;
      0057BA 8B 82            [24] 2724 	mov	dpl,r3
      0057BC 8C 83            [24] 2725 	mov	dph,r4
                           000C20  2726 	C$stream_buffer.c$858$1_0$201 ==.
                                   2727 ;	src/FreeRTOS/stream_buffer.c:858: }
      0057BE 85 0C 81         [24] 2728 	mov	sp,_bp
      0057C1 D0 0C            [24] 2729 	pop	_bp
                           000C25  2730 	C$stream_buffer.c$858$1_0$201 ==.
                           000C25  2731 	XG$xStreamBufferNextMessageLengthBytes$0$0 ==.
      0057C3 22               [24] 2732 	ret
                                   2733 ;------------------------------------------------------------
                                   2734 ;Allocation info for local variables in function 'xStreamBufferReceiveFromISR'
                                   2735 ;------------------------------------------------------------
                                   2736 ;pvRxData                  Allocated to stack - _bp -5
                                   2737 ;xBufferLengthBytes        Allocated to stack - _bp -7
                                   2738 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -10
                                   2739 ;xStreamBuffer             Allocated to registers r7 r6 r5 
                                   2740 ;pxStreamBuffer            Allocated to stack - _bp +3
                                   2741 ;xReceivedLength           Allocated to stack - _bp +1
                                   2742 ;xBytesAvailable           Allocated to registers r2 r3 
                                   2743 ;xBytesToStoreMessageLength Allocated to registers r4 r5 
                                   2744 ;uxSavedInterruptStatus    Allocated to registers 
                                   2745 ;sloc0                     Allocated to stack - _bp +1
                                   2746 ;------------------------------------------------------------
                           000C26  2747 	G$xStreamBufferReceiveFromISR$0$0 ==.
                           000C26  2748 	C$stream_buffer.c$861$1_0$207 ==.
                                   2749 ;	src/FreeRTOS/stream_buffer.c:861: size_t xStreamBufferReceiveFromISR( StreamBufferHandle_t xStreamBuffer,
                                   2750 ;	-----------------------------------------
                                   2751 ;	 function xStreamBufferReceiveFromISR
                                   2752 ;	-----------------------------------------
      0057C4                       2753 _xStreamBufferReceiveFromISR:
      0057C4 C0 0C            [24] 2754 	push	_bp
      0057C6 E5 81            [12] 2755 	mov	a,sp
      0057C8 F5 0C            [12] 2756 	mov	_bp,a
      0057CA 24 05            [12] 2757 	add	a,#0x05
      0057CC F5 81            [12] 2758 	mov	sp,a
      0057CE AF 82            [24] 2759 	mov	r7,dpl
      0057D0 AE 83            [24] 2760 	mov	r6,dph
      0057D2 AD F0            [24] 2761 	mov	r5,b
                           000C36  2762 	C$stream_buffer.c$866$2_0$207 ==.
                                   2763 ;	src/FreeRTOS/stream_buffer.c:866: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
      0057D4 E5 0C            [12] 2764 	mov	a,_bp
      0057D6 24 03            [12] 2765 	add	a,#0x03
      0057D8 F8               [12] 2766 	mov	r0,a
      0057D9 A6 07            [24] 2767 	mov	@r0,ar7
      0057DB 08               [12] 2768 	inc	r0
      0057DC A6 06            [24] 2769 	mov	@r0,ar6
      0057DE 08               [12] 2770 	inc	r0
      0057DF A6 05            [24] 2771 	mov	@r0,ar5
                           000C43  2772 	C$stream_buffer.c$867$2_0$207 ==.
                                   2773 ;	src/FreeRTOS/stream_buffer.c:867: size_t xReceivedLength = 0, xBytesAvailable, xBytesToStoreMessageLength;
      0057E1 A8 0C            [24] 2774 	mov	r0,_bp
      0057E3 08               [12] 2775 	inc	r0
      0057E4 E4               [12] 2776 	clr	a
      0057E5 F6               [12] 2777 	mov	@r0,a
      0057E6 08               [12] 2778 	inc	r0
      0057E7 F6               [12] 2779 	mov	@r0,a
                           000C4A  2780 	C$stream_buffer.c$877$1_0$207 ==.
                                   2781 ;	src/FreeRTOS/stream_buffer.c:877: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      0057E8 74 11            [12] 2782 	mov	a,#0x11
      0057EA 2F               [12] 2783 	add	a,r7
      0057EB FB               [12] 2784 	mov	r3,a
      0057EC E4               [12] 2785 	clr	a
      0057ED 3E               [12] 2786 	addc	a,r6
      0057EE FC               [12] 2787 	mov	r4,a
      0057EF 8B 82            [24] 2788 	mov	dpl,r3
      0057F1 8C 83            [24] 2789 	mov	dph,r4
      0057F3 8D F0            [24] 2790 	mov	b,r5
      0057F5 12 70 5A         [24] 2791 	lcall	__gptrget
      0057F8 30 E0 06         [24] 2792 	jnb	acc.0,00102$
                           000C5D  2793 	C$stream_buffer.c$879$2_0$208 ==.
                                   2794 ;	src/FreeRTOS/stream_buffer.c:879: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
      0057FB 7C 02            [12] 2795 	mov	r4,#0x02
      0057FD 7D 00            [12] 2796 	mov	r5,#0x00
      0057FF 80 04            [24] 2797 	sjmp	00103$
      005801                       2798 00102$:
                           000C63  2799 	C$stream_buffer.c$883$2_0$209 ==.
                                   2800 ;	src/FreeRTOS/stream_buffer.c:883: xBytesToStoreMessageLength = 0;
      005801 7C 00            [12] 2801 	mov	r4,#0x00
      005803 7D 00            [12] 2802 	mov	r5,#0x00
      005805                       2803 00103$:
                           000C67  2804 	C$stream_buffer.c$886$1_0$207 ==.
                                   2805 ;	src/FreeRTOS/stream_buffer.c:886: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
      005805 E5 0C            [12] 2806 	mov	a,_bp
      005807 24 03            [12] 2807 	add	a,#0x03
      005809 F8               [12] 2808 	mov	r0,a
      00580A 86 82            [24] 2809 	mov	dpl,@r0
      00580C 08               [12] 2810 	inc	r0
      00580D 86 83            [24] 2811 	mov	dph,@r0
      00580F 08               [12] 2812 	inc	r0
      005810 86 F0            [24] 2813 	mov	b,@r0
      005812 C0 05            [24] 2814 	push	ar5
      005814 C0 04            [24] 2815 	push	ar4
      005816 12 60 56         [24] 2816 	lcall	_prvBytesInBuffer
      005819 AA 82            [24] 2817 	mov	r2,dpl
      00581B AB 83            [24] 2818 	mov	r3,dph
      00581D D0 04            [24] 2819 	pop	ar4
      00581F D0 05            [24] 2820 	pop	ar5
                           000C83  2821 	C$stream_buffer.c$893$1_0$207 ==.
                                   2822 ;	src/FreeRTOS/stream_buffer.c:893: if( xBytesAvailable > xBytesToStoreMessageLength )
      005821 C3               [12] 2823 	clr	c
      005822 EC               [12] 2824 	mov	a,r4
      005823 9A               [12] 2825 	subb	a,r2
      005824 ED               [12] 2826 	mov	a,r5
      005825 9B               [12] 2827 	subb	a,r3
      005826 40 03            [24] 2828 	jc	00129$
      005828 02 59 0A         [24] 2829 	ljmp	00109$
      00582B                       2830 00129$:
                           000C8D  2831 	C$stream_buffer.c$895$2_0$210 ==.
                                   2832 ;	src/FreeRTOS/stream_buffer.c:895: xReceivedLength = prvReadMessageFromBuffer( pxStreamBuffer, pvRxData, xBufferLengthBytes, xBytesAvailable, xBytesToStoreMessageLength );
      00582B C0 04            [24] 2833 	push	ar4
      00582D C0 05            [24] 2834 	push	ar5
      00582F C0 02            [24] 2835 	push	ar2
      005831 C0 03            [24] 2836 	push	ar3
      005833 E5 0C            [12] 2837 	mov	a,_bp
      005835 24 F9            [12] 2838 	add	a,#0xf9
      005837 F8               [12] 2839 	mov	r0,a
      005838 E6               [12] 2840 	mov	a,@r0
      005839 C0 E0            [24] 2841 	push	acc
      00583B 08               [12] 2842 	inc	r0
      00583C E6               [12] 2843 	mov	a,@r0
      00583D C0 E0            [24] 2844 	push	acc
      00583F E5 0C            [12] 2845 	mov	a,_bp
      005841 24 FB            [12] 2846 	add	a,#0xfb
      005843 F8               [12] 2847 	mov	r0,a
      005844 E6               [12] 2848 	mov	a,@r0
      005845 C0 E0            [24] 2849 	push	acc
      005847 08               [12] 2850 	inc	r0
      005848 E6               [12] 2851 	mov	a,@r0
      005849 C0 E0            [24] 2852 	push	acc
      00584B 08               [12] 2853 	inc	r0
      00584C E6               [12] 2854 	mov	a,@r0
      00584D C0 E0            [24] 2855 	push	acc
      00584F E5 0C            [12] 2856 	mov	a,_bp
      005851 24 03            [12] 2857 	add	a,#0x03
      005853 F8               [12] 2858 	mov	r0,a
      005854 86 82            [24] 2859 	mov	dpl,@r0
      005856 08               [12] 2860 	inc	r0
      005857 86 83            [24] 2861 	mov	dph,@r0
      005859 08               [12] 2862 	inc	r0
      00585A 86 F0            [24] 2863 	mov	b,@r0
      00585C 12 59 18         [24] 2864 	lcall	_prvReadMessageFromBuffer
      00585F AC 82            [24] 2865 	mov	r4,dpl
      005861 AD 83            [24] 2866 	mov	r5,dph
      005863 E5 81            [12] 2867 	mov	a,sp
      005865 24 F7            [12] 2868 	add	a,#0xf7
      005867 F5 81            [12] 2869 	mov	sp,a
      005869 A8 0C            [24] 2870 	mov	r0,_bp
      00586B 08               [12] 2871 	inc	r0
      00586C A6 04            [24] 2872 	mov	@r0,ar4
      00586E 08               [12] 2873 	inc	r0
      00586F A6 05            [24] 2874 	mov	@r0,ar5
                           000CD3  2875 	C$stream_buffer.c$898$2_0$210 ==.
                                   2876 ;	src/FreeRTOS/stream_buffer.c:898: if( xReceivedLength != ( size_t ) 0 )
      005871 EC               [12] 2877 	mov	a,r4
      005872 4D               [12] 2878 	orl	a,r5
      005873 70 03            [24] 2879 	jnz	00130$
      005875 02 59 0A         [24] 2880 	ljmp	00109$
      005878                       2881 00130$:
                           000CDA  2882 	C$stream_buffer.c$900$5_0$213 ==.
                                   2883 ;	src/FreeRTOS/stream_buffer.c:900: sbRECEIVE_COMPLETED_FROM_ISR( pxStreamBuffer, pxHigherPriorityTaskWoken );
      005878 E5 0C            [12] 2884 	mov	a,_bp
      00587A 24 03            [12] 2885 	add	a,#0x03
      00587C F8               [12] 2886 	mov	r0,a
      00587D 74 0B            [12] 2887 	mov	a,#0x0b
      00587F 26               [12] 2888 	add	a,@r0
      005880 FB               [12] 2889 	mov	r3,a
      005881 E4               [12] 2890 	clr	a
      005882 08               [12] 2891 	inc	r0
      005883 36               [12] 2892 	addc	a,@r0
      005884 FC               [12] 2893 	mov	r4,a
      005885 08               [12] 2894 	inc	r0
      005886 86 05            [24] 2895 	mov	ar5,@r0
      005888 8B 82            [24] 2896 	mov	dpl,r3
      00588A 8C 83            [24] 2897 	mov	dph,r4
      00588C 8D F0            [24] 2898 	mov	b,r5
      00588E 12 70 5A         [24] 2899 	lcall	__gptrget
      005891 FA               [12] 2900 	mov	r2,a
      005892 A3               [24] 2901 	inc	dptr
      005893 12 70 5A         [24] 2902 	lcall	__gptrget
      005896 FE               [12] 2903 	mov	r6,a
      005897 A3               [24] 2904 	inc	dptr
      005898 12 70 5A         [24] 2905 	lcall	__gptrget
      00589B FF               [12] 2906 	mov	r7,a
      00589C EA               [12] 2907 	mov	a,r2
      00589D 4E               [12] 2908 	orl	a,r6
      00589E 60 6A            [24] 2909 	jz	00109$
      0058A0 8B 82            [24] 2910 	mov	dpl,r3
      0058A2 8C 83            [24] 2911 	mov	dph,r4
      0058A4 8D F0            [24] 2912 	mov	b,r5
      0058A6 12 70 5A         [24] 2913 	lcall	__gptrget
      0058A9 FA               [12] 2914 	mov	r2,a
      0058AA A3               [24] 2915 	inc	dptr
      0058AB 12 70 5A         [24] 2916 	lcall	__gptrget
      0058AE FE               [12] 2917 	mov	r6,a
      0058AF A3               [24] 2918 	inc	dptr
      0058B0 12 70 5A         [24] 2919 	lcall	__gptrget
      0058B3 FF               [12] 2920 	mov	r7,a
      0058B4 C0 05            [24] 2921 	push	ar5
      0058B6 C0 04            [24] 2922 	push	ar4
      0058B8 C0 03            [24] 2923 	push	ar3
      0058BA E5 0C            [12] 2924 	mov	a,_bp
      0058BC 24 F6            [12] 2925 	add	a,#0xf6
      0058BE F8               [12] 2926 	mov	r0,a
      0058BF E6               [12] 2927 	mov	a,@r0
      0058C0 C0 E0            [24] 2928 	push	acc
      0058C2 08               [12] 2929 	inc	r0
      0058C3 E6               [12] 2930 	mov	a,@r0
      0058C4 C0 E0            [24] 2931 	push	acc
      0058C6 08               [12] 2932 	inc	r0
      0058C7 E6               [12] 2933 	mov	a,@r0
      0058C8 C0 E0            [24] 2934 	push	acc
      0058CA E4               [12] 2935 	clr	a
      0058CB C0 E0            [24] 2936 	push	acc
      0058CD C0 E0            [24] 2937 	push	acc
      0058CF C0 E0            [24] 2938 	push	acc
      0058D1 C0 E0            [24] 2939 	push	acc
      0058D3 C0 E0            [24] 2940 	push	acc
      0058D5 C0 E0            [24] 2941 	push	acc
      0058D7 C0 E0            [24] 2942 	push	acc
      0058D9 C0 E0            [24] 2943 	push	acc
      0058DB 8A 82            [24] 2944 	mov	dpl,r2
      0058DD 8E 83            [24] 2945 	mov	dph,r6
      0058DF 8F F0            [24] 2946 	mov	b,r7
      0058E1 12 1C D7         [24] 2947 	lcall	_xTaskGenericNotifyFromISR
      0058E4 E5 81            [12] 2948 	mov	a,sp
      0058E6 24 F5            [12] 2949 	add	a,#0xf5
      0058E8 F5 81            [12] 2950 	mov	sp,a
      0058EA D0 03            [24] 2951 	pop	ar3
      0058EC D0 04            [24] 2952 	pop	ar4
      0058EE D0 05            [24] 2953 	pop	ar5
      0058F0 7A 00            [12] 2954 	mov	r2,#0x00
      0058F2 7E 00            [12] 2955 	mov	r6,#0x00
      0058F4 7F 00            [12] 2956 	mov	r7,#0x00
      0058F6 8B 82            [24] 2957 	mov	dpl,r3
      0058F8 8C 83            [24] 2958 	mov	dph,r4
      0058FA 8D F0            [24] 2959 	mov	b,r5
      0058FC EA               [12] 2960 	mov	a,r2
      0058FD 12 66 A0         [24] 2961 	lcall	__gptrput
      005900 A3               [24] 2962 	inc	dptr
      005901 EE               [12] 2963 	mov	a,r6
      005902 12 66 A0         [24] 2964 	lcall	__gptrput
      005905 A3               [24] 2965 	inc	dptr
      005906 EF               [12] 2966 	mov	a,r7
      005907 12 66 A0         [24] 2967 	lcall	__gptrput
      00590A                       2968 00109$:
                           000D6C  2969 	C$stream_buffer.c$914$1_0$207 ==.
                                   2970 ;	src/FreeRTOS/stream_buffer.c:914: return xReceivedLength;
      00590A A8 0C            [24] 2971 	mov	r0,_bp
      00590C 08               [12] 2972 	inc	r0
      00590D 86 82            [24] 2973 	mov	dpl,@r0
      00590F 08               [12] 2974 	inc	r0
      005910 86 83            [24] 2975 	mov	dph,@r0
                           000D74  2976 	C$stream_buffer.c$915$1_0$207 ==.
                                   2977 ;	src/FreeRTOS/stream_buffer.c:915: }
      005912 85 0C 81         [24] 2978 	mov	sp,_bp
      005915 D0 0C            [24] 2979 	pop	_bp
                           000D79  2980 	C$stream_buffer.c$915$1_0$207 ==.
                           000D79  2981 	XG$xStreamBufferReceiveFromISR$0$0 ==.
      005917 22               [24] 2982 	ret
                                   2983 ;------------------------------------------------------------
                                   2984 ;Allocation info for local variables in function 'prvReadMessageFromBuffer'
                                   2985 ;------------------------------------------------------------
                                   2986 ;pvRxData                  Allocated to stack - _bp -5
                                   2987 ;xBufferLengthBytes        Allocated to stack - _bp -7
                                   2988 ;xBytesAvailable           Allocated to stack - _bp -9
                                   2989 ;xBytesToStoreMessageLength Allocated to stack - _bp -11
                                   2990 ;pxStreamBuffer            Allocated to registers r5 r6 r7 
                                   2991 ;xOriginalTail             Allocated to stack - _bp +1
                                   2992 ;xReceivedLength           Allocated to registers r6 r7 
                                   2993 ;xNextMessageLength        Allocated to stack - _bp +3
                                   2994 ;xTempNextMessageLength    Allocated to stack - _bp +5
                                   2995 ;------------------------------------------------------------
                           000D7A  2996 	Fstream_buffer$prvReadMessageFromBuffer$0$0 ==.
                           000D7A  2997 	C$stream_buffer.c$918$1_0$218 ==.
                                   2998 ;	src/FreeRTOS/stream_buffer.c:918: static size_t prvReadMessageFromBuffer( StreamBuffer_t *pxStreamBuffer,
                                   2999 ;	-----------------------------------------
                                   3000 ;	 function prvReadMessageFromBuffer
                                   3001 ;	-----------------------------------------
      005918                       3002 _prvReadMessageFromBuffer:
      005918 C0 0C            [24] 3003 	push	_bp
      00591A E5 81            [12] 3004 	mov	a,sp
      00591C F5 0C            [12] 3005 	mov	_bp,a
      00591E 24 06            [12] 3006 	add	a,#0x06
      005920 F5 81            [12] 3007 	mov	sp,a
      005922 AD 82            [24] 3008 	mov	r5,dpl
      005924 AE 83            [24] 3009 	mov	r6,dph
      005926 AF F0            [24] 3010 	mov	r7,b
                           000D8A  3011 	C$stream_buffer.c$927$1_0$218 ==.
                                   3012 ;	src/FreeRTOS/stream_buffer.c:927: if( xBytesToStoreMessageLength != ( size_t ) 0 )
      005928 E5 0C            [12] 3013 	mov	a,_bp
      00592A 24 F5            [12] 3014 	add	a,#0xf5
      00592C F8               [12] 3015 	mov	r0,a
      00592D E6               [12] 3016 	mov	a,@r0
      00592E 08               [12] 3017 	inc	r0
      00592F 46               [12] 3018 	orl	a,@r0
      005930 70 03            [24] 3019 	jnz	00116$
      005932 02 59 DE         [24] 3020 	ljmp	00104$
      005935                       3021 00116$:
                           000D97  3022 	C$stream_buffer.c$933$2_0$219 ==.
                                   3023 ;	src/FreeRTOS/stream_buffer.c:933: xOriginalTail = pxStreamBuffer->xTail;
      005935 8D 82            [24] 3024 	mov	dpl,r5
      005937 8E 83            [24] 3025 	mov	dph,r6
      005939 8F F0            [24] 3026 	mov	b,r7
      00593B A8 0C            [24] 3027 	mov	r0,_bp
      00593D 08               [12] 3028 	inc	r0
      00593E 12 70 5A         [24] 3029 	lcall	__gptrget
      005941 F6               [12] 3030 	mov	@r0,a
      005942 A3               [24] 3031 	inc	dptr
      005943 12 70 5A         [24] 3032 	lcall	__gptrget
      005946 08               [12] 3033 	inc	r0
      005947 F6               [12] 3034 	mov	@r0,a
                           000DAA  3035 	C$stream_buffer.c$934$2_0$219 ==.
                                   3036 ;	src/FreeRTOS/stream_buffer.c:934: ( void ) prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) &xTempNextMessageLength, xBytesToStoreMessageLength, xBytesAvailable );
      005948 E5 0C            [12] 3037 	mov	a,_bp
      00594A 24 05            [12] 3038 	add	a,#0x05
      00594C FA               [12] 3039 	mov	r2,a
      00594D 7B 00            [12] 3040 	mov	r3,#0x00
      00594F 7C 40            [12] 3041 	mov	r4,#0x40
      005951 C0 07            [24] 3042 	push	ar7
      005953 C0 06            [24] 3043 	push	ar6
      005955 C0 05            [24] 3044 	push	ar5
      005957 E5 0C            [12] 3045 	mov	a,_bp
      005959 24 F7            [12] 3046 	add	a,#0xf7
      00595B F8               [12] 3047 	mov	r0,a
      00595C E6               [12] 3048 	mov	a,@r0
      00595D C0 E0            [24] 3049 	push	acc
      00595F 08               [12] 3050 	inc	r0
      005960 E6               [12] 3051 	mov	a,@r0
      005961 C0 E0            [24] 3052 	push	acc
      005963 E5 0C            [12] 3053 	mov	a,_bp
      005965 24 F5            [12] 3054 	add	a,#0xf5
      005967 F8               [12] 3055 	mov	r0,a
      005968 E6               [12] 3056 	mov	a,@r0
      005969 C0 E0            [24] 3057 	push	acc
      00596B 08               [12] 3058 	inc	r0
      00596C E6               [12] 3059 	mov	a,@r0
      00596D C0 E0            [24] 3060 	push	acc
      00596F C0 02            [24] 3061 	push	ar2
      005971 C0 03            [24] 3062 	push	ar3
      005973 C0 04            [24] 3063 	push	ar4
      005975 8D 82            [24] 3064 	mov	dpl,r5
      005977 8E 83            [24] 3065 	mov	dph,r6
      005979 8F F0            [24] 3066 	mov	b,r7
      00597B 12 5E 2E         [24] 3067 	lcall	_prvReadBytesFromBuffer
      00597E E5 81            [12] 3068 	mov	a,sp
      005980 24 F9            [12] 3069 	add	a,#0xf9
      005982 F5 81            [12] 3070 	mov	sp,a
      005984 D0 05            [24] 3071 	pop	ar5
      005986 D0 06            [24] 3072 	pop	ar6
      005988 D0 07            [24] 3073 	pop	ar7
                           000DEC  3074 	C$stream_buffer.c$935$2_0$219 ==.
                                   3075 ;	src/FreeRTOS/stream_buffer.c:935: xNextMessageLength = ( size_t ) xTempNextMessageLength;
      00598A E5 0C            [12] 3076 	mov	a,_bp
      00598C 24 05            [12] 3077 	add	a,#0x05
      00598E F8               [12] 3078 	mov	r0,a
      00598F E5 0C            [12] 3079 	mov	a,_bp
      005991 24 03            [12] 3080 	add	a,#0x03
      005993 F9               [12] 3081 	mov	r1,a
      005994 E6               [12] 3082 	mov	a,@r0
      005995 F7               [12] 3083 	mov	@r1,a
      005996 08               [12] 3084 	inc	r0
      005997 09               [12] 3085 	inc	r1
      005998 E6               [12] 3086 	mov	a,@r0
      005999 F7               [12] 3087 	mov	@r1,a
                           000DFC  3088 	C$stream_buffer.c$939$2_0$219 ==.
                                   3089 ;	src/FreeRTOS/stream_buffer.c:939: xBytesAvailable -= xBytesToStoreMessageLength;
      00599A E5 0C            [12] 3090 	mov	a,_bp
      00599C 24 F7            [12] 3091 	add	a,#0xf7
      00599E F8               [12] 3092 	mov	r0,a
      00599F E5 0C            [12] 3093 	mov	a,_bp
      0059A1 24 F5            [12] 3094 	add	a,#0xf5
      0059A3 F9               [12] 3095 	mov	r1,a
      0059A4 E6               [12] 3096 	mov	a,@r0
      0059A5 C3               [12] 3097 	clr	c
      0059A6 97               [12] 3098 	subb	a,@r1
      0059A7 F6               [12] 3099 	mov	@r0,a
      0059A8 08               [12] 3100 	inc	r0
      0059A9 E6               [12] 3101 	mov	a,@r0
      0059AA 09               [12] 3102 	inc	r1
      0059AB 97               [12] 3103 	subb	a,@r1
      0059AC F6               [12] 3104 	mov	@r0,a
                           000E0F  3105 	C$stream_buffer.c$943$2_0$219 ==.
                                   3106 ;	src/FreeRTOS/stream_buffer.c:943: if( xNextMessageLength > xBufferLengthBytes )
      0059AD E5 0C            [12] 3107 	mov	a,_bp
      0059AF 24 03            [12] 3108 	add	a,#0x03
      0059B1 F8               [12] 3109 	mov	r0,a
      0059B2 E5 0C            [12] 3110 	mov	a,_bp
      0059B4 24 F9            [12] 3111 	add	a,#0xf9
      0059B6 F9               [12] 3112 	mov	r1,a
      0059B7 C3               [12] 3113 	clr	c
      0059B8 E7               [12] 3114 	mov	a,@r1
      0059B9 96               [12] 3115 	subb	a,@r0
      0059BA 09               [12] 3116 	inc	r1
      0059BB E7               [12] 3117 	mov	a,@r1
      0059BC 08               [12] 3118 	inc	r0
      0059BD 96               [12] 3119 	subb	a,@r0
      0059BE 50 2E            [24] 3120 	jnc	00105$
                           000E22  3121 	C$stream_buffer.c$948$3_0$220 ==.
                                   3122 ;	src/FreeRTOS/stream_buffer.c:948: pxStreamBuffer->xTail = xOriginalTail;
      0059C0 8D 82            [24] 3123 	mov	dpl,r5
      0059C2 8E 83            [24] 3124 	mov	dph,r6
      0059C4 8F F0            [24] 3125 	mov	b,r7
      0059C6 A8 0C            [24] 3126 	mov	r0,_bp
      0059C8 08               [12] 3127 	inc	r0
      0059C9 E6               [12] 3128 	mov	a,@r0
      0059CA 12 66 A0         [24] 3129 	lcall	__gptrput
      0059CD A3               [24] 3130 	inc	dptr
      0059CE 08               [12] 3131 	inc	r0
      0059CF E6               [12] 3132 	mov	a,@r0
      0059D0 12 66 A0         [24] 3133 	lcall	__gptrput
                           000E35  3134 	C$stream_buffer.c$949$3_0$220 ==.
                                   3135 ;	src/FreeRTOS/stream_buffer.c:949: xNextMessageLength = 0;
      0059D3 E5 0C            [12] 3136 	mov	a,_bp
      0059D5 24 03            [12] 3137 	add	a,#0x03
      0059D7 F8               [12] 3138 	mov	r0,a
      0059D8 E4               [12] 3139 	clr	a
      0059D9 F6               [12] 3140 	mov	@r0,a
      0059DA 08               [12] 3141 	inc	r0
      0059DB F6               [12] 3142 	mov	@r0,a
      0059DC 80 10            [24] 3143 	sjmp	00105$
      0059DE                       3144 00104$:
                           000E40  3145 	C$stream_buffer.c$960$2_0$222 ==.
                                   3146 ;	src/FreeRTOS/stream_buffer.c:960: xNextMessageLength = xBufferLengthBytes;
      0059DE E5 0C            [12] 3147 	mov	a,_bp
      0059E0 24 F9            [12] 3148 	add	a,#0xf9
      0059E2 F8               [12] 3149 	mov	r0,a
      0059E3 E5 0C            [12] 3150 	mov	a,_bp
      0059E5 24 03            [12] 3151 	add	a,#0x03
      0059E7 F9               [12] 3152 	mov	r1,a
      0059E8 E6               [12] 3153 	mov	a,@r0
      0059E9 F7               [12] 3154 	mov	@r1,a
      0059EA 08               [12] 3155 	inc	r0
      0059EB 09               [12] 3156 	inc	r1
      0059EC E6               [12] 3157 	mov	a,@r0
      0059ED F7               [12] 3158 	mov	@r1,a
      0059EE                       3159 00105$:
                           000E50  3160 	C$stream_buffer.c$964$1_0$218 ==.
                                   3161 ;	src/FreeRTOS/stream_buffer.c:964: xReceivedLength = prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) pvRxData, xNextMessageLength, xBytesAvailable ); /*lint !e9079 Data storage area is implemented as uint8_t array for ease of sizing, indexing and alignment. */
      0059EE E5 0C            [12] 3162 	mov	a,_bp
      0059F0 24 FB            [12] 3163 	add	a,#0xfb
      0059F2 F8               [12] 3164 	mov	r0,a
      0059F3 86 02            [24] 3165 	mov	ar2,@r0
      0059F5 08               [12] 3166 	inc	r0
      0059F6 86 03            [24] 3167 	mov	ar3,@r0
      0059F8 08               [12] 3168 	inc	r0
      0059F9 86 04            [24] 3169 	mov	ar4,@r0
      0059FB E5 0C            [12] 3170 	mov	a,_bp
      0059FD 24 F7            [12] 3171 	add	a,#0xf7
      0059FF F8               [12] 3172 	mov	r0,a
      005A00 E6               [12] 3173 	mov	a,@r0
      005A01 C0 E0            [24] 3174 	push	acc
      005A03 08               [12] 3175 	inc	r0
      005A04 E6               [12] 3176 	mov	a,@r0
      005A05 C0 E0            [24] 3177 	push	acc
      005A07 E5 0C            [12] 3178 	mov	a,_bp
      005A09 24 03            [12] 3179 	add	a,#0x03
      005A0B F8               [12] 3180 	mov	r0,a
      005A0C E6               [12] 3181 	mov	a,@r0
      005A0D C0 E0            [24] 3182 	push	acc
      005A0F 08               [12] 3183 	inc	r0
      005A10 E6               [12] 3184 	mov	a,@r0
      005A11 C0 E0            [24] 3185 	push	acc
      005A13 C0 02            [24] 3186 	push	ar2
      005A15 C0 03            [24] 3187 	push	ar3
      005A17 C0 04            [24] 3188 	push	ar4
      005A19 8D 82            [24] 3189 	mov	dpl,r5
      005A1B 8E 83            [24] 3190 	mov	dph,r6
      005A1D 8F F0            [24] 3191 	mov	b,r7
      005A1F 12 5E 2E         [24] 3192 	lcall	_prvReadBytesFromBuffer
      005A22 AE 82            [24] 3193 	mov	r6,dpl
      005A24 AF 83            [24] 3194 	mov	r7,dph
      005A26 E5 81            [12] 3195 	mov	a,sp
      005A28 24 F9            [12] 3196 	add	a,#0xf9
      005A2A F5 81            [12] 3197 	mov	sp,a
                           000E8E  3198 	C$stream_buffer.c$966$1_0$218 ==.
                                   3199 ;	src/FreeRTOS/stream_buffer.c:966: return xReceivedLength;
      005A2C 8E 82            [24] 3200 	mov	dpl,r6
      005A2E 8F 83            [24] 3201 	mov	dph,r7
                           000E92  3202 	C$stream_buffer.c$967$1_0$218 ==.
                                   3203 ;	src/FreeRTOS/stream_buffer.c:967: }
      005A30 85 0C 81         [24] 3204 	mov	sp,_bp
      005A33 D0 0C            [24] 3205 	pop	_bp
                           000E97  3206 	C$stream_buffer.c$967$1_0$218 ==.
                           000E97  3207 	XFstream_buffer$prvReadMessageFromBuffer$0$0 ==.
      005A35 22               [24] 3208 	ret
                                   3209 ;------------------------------------------------------------
                                   3210 ;Allocation info for local variables in function 'xStreamBufferIsEmpty'
                                   3211 ;------------------------------------------------------------
                                   3212 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   3213 ;pxStreamBuffer            Allocated to registers 
                                   3214 ;xReturn                   Allocated to registers r7 
                                   3215 ;xTail                     Allocated to registers r3 r4 
                                   3216 ;------------------------------------------------------------
                           000E98  3217 	G$xStreamBufferIsEmpty$0$0 ==.
                           000E98  3218 	C$stream_buffer.c$970$1_0$224 ==.
                                   3219 ;	src/FreeRTOS/stream_buffer.c:970: BaseType_t xStreamBufferIsEmpty( StreamBufferHandle_t xStreamBuffer )
                                   3220 ;	-----------------------------------------
                                   3221 ;	 function xStreamBufferIsEmpty
                                   3222 ;	-----------------------------------------
      005A36                       3223 _xStreamBufferIsEmpty:
                           000E98  3224 	C$stream_buffer.c$979$1_0$224 ==.
                                   3225 ;	src/FreeRTOS/stream_buffer.c:979: xTail = pxStreamBuffer->xTail;
      005A36 AD 82            [24] 3226 	mov	r5,dpl
      005A38 AE 83            [24] 3227 	mov	r6,dph
      005A3A AF F0            [24] 3228 	mov	r7,b
      005A3C 12 70 5A         [24] 3229 	lcall	__gptrget
      005A3F FB               [12] 3230 	mov	r3,a
      005A40 A3               [24] 3231 	inc	dptr
      005A41 12 70 5A         [24] 3232 	lcall	__gptrget
      005A44 FC               [12] 3233 	mov	r4,a
                           000EA7  3234 	C$stream_buffer.c$980$1_0$224 ==.
                                   3235 ;	src/FreeRTOS/stream_buffer.c:980: if( pxStreamBuffer->xHead == xTail )
      005A45 74 02            [12] 3236 	mov	a,#0x02
      005A47 2D               [12] 3237 	add	a,r5
      005A48 FD               [12] 3238 	mov	r5,a
      005A49 E4               [12] 3239 	clr	a
      005A4A 3E               [12] 3240 	addc	a,r6
      005A4B FE               [12] 3241 	mov	r6,a
      005A4C 8D 82            [24] 3242 	mov	dpl,r5
      005A4E 8E 83            [24] 3243 	mov	dph,r6
      005A50 8F F0            [24] 3244 	mov	b,r7
      005A52 12 70 5A         [24] 3245 	lcall	__gptrget
      005A55 FD               [12] 3246 	mov	r5,a
      005A56 A3               [24] 3247 	inc	dptr
      005A57 12 70 5A         [24] 3248 	lcall	__gptrget
      005A5A FE               [12] 3249 	mov	r6,a
      005A5B ED               [12] 3250 	mov	a,r5
      005A5C B5 03 08         [24] 3251 	cjne	a,ar3,00102$
      005A5F EE               [12] 3252 	mov	a,r6
      005A60 B5 04 04         [24] 3253 	cjne	a,ar4,00102$
                           000EC5  3254 	C$stream_buffer.c$982$2_0$225 ==.
                                   3255 ;	src/FreeRTOS/stream_buffer.c:982: xReturn = pdTRUE;
      005A63 7F 01            [12] 3256 	mov	r7,#0x01
      005A65 80 02            [24] 3257 	sjmp	00103$
      005A67                       3258 00102$:
                           000EC9  3259 	C$stream_buffer.c$986$2_0$226 ==.
                                   3260 ;	src/FreeRTOS/stream_buffer.c:986: xReturn = pdFALSE;
      005A67 7F 00            [12] 3261 	mov	r7,#0x00
      005A69                       3262 00103$:
                           000ECB  3263 	C$stream_buffer.c$989$1_0$224 ==.
                                   3264 ;	src/FreeRTOS/stream_buffer.c:989: return xReturn;
      005A69 8F 82            [24] 3265 	mov	dpl,r7
                           000ECD  3266 	C$stream_buffer.c$990$1_0$224 ==.
                                   3267 ;	src/FreeRTOS/stream_buffer.c:990: }
                           000ECD  3268 	C$stream_buffer.c$990$1_0$224 ==.
                           000ECD  3269 	XG$xStreamBufferIsEmpty$0$0 ==.
      005A6B 22               [24] 3270 	ret
                                   3271 ;------------------------------------------------------------
                                   3272 ;Allocation info for local variables in function 'xStreamBufferIsFull'
                                   3273 ;------------------------------------------------------------
                                   3274 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   3275 ;xReturn                   Allocated to registers r7 
                                   3276 ;xBytesToStoreMessageLength Allocated to registers r3 r4 
                                   3277 ;pxStreamBuffer            Allocated to registers 
                                   3278 ;------------------------------------------------------------
                           000ECE  3279 	G$xStreamBufferIsFull$0$0 ==.
                           000ECE  3280 	C$stream_buffer.c$993$1_0$228 ==.
                                   3281 ;	src/FreeRTOS/stream_buffer.c:993: BaseType_t xStreamBufferIsFull( StreamBufferHandle_t xStreamBuffer )
                                   3282 ;	-----------------------------------------
                                   3283 ;	 function xStreamBufferIsFull
                                   3284 ;	-----------------------------------------
      005A6C                       3285 _xStreamBufferIsFull:
      005A6C AD 82            [24] 3286 	mov	r5,dpl
      005A6E AE 83            [24] 3287 	mov	r6,dph
      005A70 AF F0            [24] 3288 	mov	r7,b
                           000ED4  3289 	C$stream_buffer.c$1005$1_0$228 ==.
                                   3290 ;	src/FreeRTOS/stream_buffer.c:1005: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
      005A72 74 11            [12] 3291 	mov	a,#0x11
      005A74 2D               [12] 3292 	add	a,r5
      005A75 FA               [12] 3293 	mov	r2,a
      005A76 E4               [12] 3294 	clr	a
      005A77 3E               [12] 3295 	addc	a,r6
      005A78 FB               [12] 3296 	mov	r3,a
      005A79 8F 04            [24] 3297 	mov	ar4,r7
      005A7B 8A 82            [24] 3298 	mov	dpl,r2
      005A7D 8B 83            [24] 3299 	mov	dph,r3
      005A7F 8C F0            [24] 3300 	mov	b,r4
      005A81 12 70 5A         [24] 3301 	lcall	__gptrget
      005A84 30 E0 06         [24] 3302 	jnb	acc.0,00102$
                           000EE9  3303 	C$stream_buffer.c$1007$2_0$229 ==.
                                   3304 ;	src/FreeRTOS/stream_buffer.c:1007: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
      005A87 7B 02            [12] 3305 	mov	r3,#0x02
      005A89 7C 00            [12] 3306 	mov	r4,#0x00
      005A8B 80 04            [24] 3307 	sjmp	00103$
      005A8D                       3308 00102$:
                           000EEF  3309 	C$stream_buffer.c$1011$2_0$230 ==.
                                   3310 ;	src/FreeRTOS/stream_buffer.c:1011: xBytesToStoreMessageLength = 0;
      005A8D 7B 00            [12] 3311 	mov	r3,#0x00
      005A8F 7C 00            [12] 3312 	mov	r4,#0x00
      005A91                       3313 00103$:
                           000EF3  3314 	C$stream_buffer.c$1015$1_0$228 ==.
                                   3315 ;	src/FreeRTOS/stream_buffer.c:1015: if( xStreamBufferSpacesAvailable( xStreamBuffer ) <= xBytesToStoreMessageLength )
      005A91 8D 82            [24] 3316 	mov	dpl,r5
      005A93 8E 83            [24] 3317 	mov	dph,r6
      005A95 8F F0            [24] 3318 	mov	b,r7
      005A97 C0 04            [24] 3319 	push	ar4
      005A99 C0 03            [24] 3320 	push	ar3
      005A9B 12 4E 60         [24] 3321 	lcall	_xStreamBufferSpacesAvailable
      005A9E AE 82            [24] 3322 	mov	r6,dpl
      005AA0 AF 83            [24] 3323 	mov	r7,dph
      005AA2 D0 03            [24] 3324 	pop	ar3
      005AA4 D0 04            [24] 3325 	pop	ar4
      005AA6 C3               [12] 3326 	clr	c
      005AA7 EB               [12] 3327 	mov	a,r3
      005AA8 9E               [12] 3328 	subb	a,r6
      005AA9 EC               [12] 3329 	mov	a,r4
      005AAA 9F               [12] 3330 	subb	a,r7
      005AAB 40 04            [24] 3331 	jc	00105$
                           000F0F  3332 	C$stream_buffer.c$1017$2_0$231 ==.
                                   3333 ;	src/FreeRTOS/stream_buffer.c:1017: xReturn = pdTRUE;
      005AAD 7F 01            [12] 3334 	mov	r7,#0x01
      005AAF 80 02            [24] 3335 	sjmp	00106$
      005AB1                       3336 00105$:
                           000F13  3337 	C$stream_buffer.c$1021$2_0$232 ==.
                                   3338 ;	src/FreeRTOS/stream_buffer.c:1021: xReturn = pdFALSE;
      005AB1 7F 00            [12] 3339 	mov	r7,#0x00
      005AB3                       3340 00106$:
                           000F15  3341 	C$stream_buffer.c$1024$1_0$228 ==.
                                   3342 ;	src/FreeRTOS/stream_buffer.c:1024: return xReturn;
      005AB3 8F 82            [24] 3343 	mov	dpl,r7
                           000F17  3344 	C$stream_buffer.c$1025$1_0$228 ==.
                                   3345 ;	src/FreeRTOS/stream_buffer.c:1025: }
                           000F17  3346 	C$stream_buffer.c$1025$1_0$228 ==.
                           000F17  3347 	XG$xStreamBufferIsFull$0$0 ==.
      005AB5 22               [24] 3348 	ret
                                   3349 ;------------------------------------------------------------
                                   3350 ;Allocation info for local variables in function 'xStreamBufferSendCompletedFromISR'
                                   3351 ;------------------------------------------------------------
                                   3352 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
                                   3353 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   3354 ;pxStreamBuffer            Allocated to registers 
                                   3355 ;xReturn                   Allocated to registers r7 
                                   3356 ;uxSavedInterruptStatus    Allocated to registers 
                                   3357 ;------------------------------------------------------------
                           000F18  3358 	G$xStreamBufferSendCompletedFromISR$0$0 ==.
                           000F18  3359 	C$stream_buffer.c$1028$1_0$234 ==.
                                   3360 ;	src/FreeRTOS/stream_buffer.c:1028: BaseType_t xStreamBufferSendCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken )
                                   3361 ;	-----------------------------------------
                                   3362 ;	 function xStreamBufferSendCompletedFromISR
                                   3363 ;	-----------------------------------------
      005AB6                       3364 _xStreamBufferSendCompletedFromISR:
      005AB6 C0 0C            [24] 3365 	push	_bp
      005AB8 85 81 0C         [24] 3366 	mov	_bp,sp
      005ABB AD 82            [24] 3367 	mov	r5,dpl
      005ABD AE 83            [24] 3368 	mov	r6,dph
      005ABF AF F0            [24] 3369 	mov	r7,b
                           000F23  3370 	C$stream_buffer.c$1038$2_0$235 ==.
                                   3371 ;	src/FreeRTOS/stream_buffer.c:1038: if( ( pxStreamBuffer )->xTaskWaitingToReceive != NULL )
      005AC1 74 08            [12] 3372 	mov	a,#0x08
      005AC3 2D               [12] 3373 	add	a,r5
      005AC4 FD               [12] 3374 	mov	r5,a
      005AC5 E4               [12] 3375 	clr	a
      005AC6 3E               [12] 3376 	addc	a,r6
      005AC7 FE               [12] 3377 	mov	r6,a
      005AC8 8D 82            [24] 3378 	mov	dpl,r5
      005ACA 8E 83            [24] 3379 	mov	dph,r6
      005ACC 8F F0            [24] 3380 	mov	b,r7
      005ACE 12 70 5A         [24] 3381 	lcall	__gptrget
      005AD1 FA               [12] 3382 	mov	r2,a
      005AD2 A3               [24] 3383 	inc	dptr
      005AD3 12 70 5A         [24] 3384 	lcall	__gptrget
      005AD6 FB               [12] 3385 	mov	r3,a
      005AD7 A3               [24] 3386 	inc	dptr
      005AD8 12 70 5A         [24] 3387 	lcall	__gptrget
      005ADB FC               [12] 3388 	mov	r4,a
      005ADC EA               [12] 3389 	mov	a,r2
      005ADD 4B               [12] 3390 	orl	a,r3
      005ADE 60 6E            [24] 3391 	jz	00102$
                           000F42  3392 	C$stream_buffer.c$1040$3_0$236 ==.
                                   3393 ;	src/FreeRTOS/stream_buffer.c:1040: ( void ) xTaskNotifyFromISR( ( pxStreamBuffer )->xTaskWaitingToReceive,
      005AE0 8D 82            [24] 3394 	mov	dpl,r5
      005AE2 8E 83            [24] 3395 	mov	dph,r6
      005AE4 8F F0            [24] 3396 	mov	b,r7
      005AE6 12 70 5A         [24] 3397 	lcall	__gptrget
      005AE9 FA               [12] 3398 	mov	r2,a
      005AEA A3               [24] 3399 	inc	dptr
      005AEB 12 70 5A         [24] 3400 	lcall	__gptrget
      005AEE FB               [12] 3401 	mov	r3,a
      005AEF A3               [24] 3402 	inc	dptr
      005AF0 12 70 5A         [24] 3403 	lcall	__gptrget
      005AF3 FC               [12] 3404 	mov	r4,a
      005AF4 C0 07            [24] 3405 	push	ar7
      005AF6 C0 06            [24] 3406 	push	ar6
      005AF8 C0 05            [24] 3407 	push	ar5
      005AFA E5 0C            [12] 3408 	mov	a,_bp
      005AFC 24 FB            [12] 3409 	add	a,#0xfb
      005AFE F8               [12] 3410 	mov	r0,a
      005AFF E6               [12] 3411 	mov	a,@r0
      005B00 C0 E0            [24] 3412 	push	acc
      005B02 08               [12] 3413 	inc	r0
      005B03 E6               [12] 3414 	mov	a,@r0
      005B04 C0 E0            [24] 3415 	push	acc
      005B06 08               [12] 3416 	inc	r0
      005B07 E6               [12] 3417 	mov	a,@r0
      005B08 C0 E0            [24] 3418 	push	acc
      005B0A E4               [12] 3419 	clr	a
      005B0B C0 E0            [24] 3420 	push	acc
      005B0D C0 E0            [24] 3421 	push	acc
      005B0F C0 E0            [24] 3422 	push	acc
      005B11 C0 E0            [24] 3423 	push	acc
      005B13 C0 E0            [24] 3424 	push	acc
      005B15 C0 E0            [24] 3425 	push	acc
      005B17 C0 E0            [24] 3426 	push	acc
      005B19 C0 E0            [24] 3427 	push	acc
      005B1B 8A 82            [24] 3428 	mov	dpl,r2
      005B1D 8B 83            [24] 3429 	mov	dph,r3
      005B1F 8C F0            [24] 3430 	mov	b,r4
      005B21 12 1C D7         [24] 3431 	lcall	_xTaskGenericNotifyFromISR
      005B24 E5 81            [12] 3432 	mov	a,sp
      005B26 24 F5            [12] 3433 	add	a,#0xf5
      005B28 F5 81            [12] 3434 	mov	sp,a
      005B2A D0 05            [24] 3435 	pop	ar5
      005B2C D0 06            [24] 3436 	pop	ar6
      005B2E D0 07            [24] 3437 	pop	ar7
                           000F92  3438 	C$stream_buffer.c$1044$3_0$236 ==.
                                   3439 ;	src/FreeRTOS/stream_buffer.c:1044: ( pxStreamBuffer )->xTaskWaitingToReceive = NULL;
      005B30 7A 00            [12] 3440 	mov	r2,#0x00
      005B32 7B 00            [12] 3441 	mov	r3,#0x00
      005B34 7C 00            [12] 3442 	mov	r4,#0x00
      005B36 8D 82            [24] 3443 	mov	dpl,r5
      005B38 8E 83            [24] 3444 	mov	dph,r6
      005B3A 8F F0            [24] 3445 	mov	b,r7
      005B3C EA               [12] 3446 	mov	a,r2
      005B3D 12 66 A0         [24] 3447 	lcall	__gptrput
      005B40 A3               [24] 3448 	inc	dptr
      005B41 EB               [12] 3449 	mov	a,r3
      005B42 12 66 A0         [24] 3450 	lcall	__gptrput
      005B45 A3               [24] 3451 	inc	dptr
      005B46 EC               [12] 3452 	mov	a,r4
      005B47 12 66 A0         [24] 3453 	lcall	__gptrput
                           000FAC  3454 	C$stream_buffer.c$1045$3_0$236 ==.
                                   3455 ;	src/FreeRTOS/stream_buffer.c:1045: xReturn = pdTRUE;
      005B4A 7F 01            [12] 3456 	mov	r7,#0x01
      005B4C 80 02            [24] 3457 	sjmp	00103$
      005B4E                       3458 00102$:
                           000FB0  3459 	C$stream_buffer.c$1049$3_0$237 ==.
                                   3460 ;	src/FreeRTOS/stream_buffer.c:1049: xReturn = pdFALSE;
      005B4E 7F 00            [12] 3461 	mov	r7,#0x00
      005B50                       3462 00103$:
                           000FB2  3463 	C$stream_buffer.c$1054$1_0$234 ==.
                                   3464 ;	src/FreeRTOS/stream_buffer.c:1054: return xReturn;
      005B50 8F 82            [24] 3465 	mov	dpl,r7
                           000FB4  3466 	C$stream_buffer.c$1055$1_0$234 ==.
                                   3467 ;	src/FreeRTOS/stream_buffer.c:1055: }
      005B52 D0 0C            [24] 3468 	pop	_bp
                           000FB6  3469 	C$stream_buffer.c$1055$1_0$234 ==.
                           000FB6  3470 	XG$xStreamBufferSendCompletedFromISR$0$0 ==.
      005B54 22               [24] 3471 	ret
                                   3472 ;------------------------------------------------------------
                                   3473 ;Allocation info for local variables in function 'xStreamBufferReceiveCompletedFromISR'
                                   3474 ;------------------------------------------------------------
                                   3475 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
                                   3476 ;xStreamBuffer             Allocated to registers r5 r6 r7 
                                   3477 ;pxStreamBuffer            Allocated to registers 
                                   3478 ;xReturn                   Allocated to registers r7 
                                   3479 ;uxSavedInterruptStatus    Allocated to registers 
                                   3480 ;------------------------------------------------------------
                           000FB7  3481 	G$xStreamBufferReceiveCompletedFromISR$0$0 ==.
                           000FB7  3482 	C$stream_buffer.c$1058$1_0$239 ==.
                                   3483 ;	src/FreeRTOS/stream_buffer.c:1058: BaseType_t xStreamBufferReceiveCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken )
                                   3484 ;	-----------------------------------------
                                   3485 ;	 function xStreamBufferReceiveCompletedFromISR
                                   3486 ;	-----------------------------------------
      005B55                       3487 _xStreamBufferReceiveCompletedFromISR:
      005B55 C0 0C            [24] 3488 	push	_bp
      005B57 85 81 0C         [24] 3489 	mov	_bp,sp
      005B5A AD 82            [24] 3490 	mov	r5,dpl
      005B5C AE 83            [24] 3491 	mov	r6,dph
      005B5E AF F0            [24] 3492 	mov	r7,b
                           000FC2  3493 	C$stream_buffer.c$1068$2_0$240 ==.
                                   3494 ;	src/FreeRTOS/stream_buffer.c:1068: if( ( pxStreamBuffer )->xTaskWaitingToSend != NULL )
      005B60 74 0B            [12] 3495 	mov	a,#0x0b
      005B62 2D               [12] 3496 	add	a,r5
      005B63 FD               [12] 3497 	mov	r5,a
      005B64 E4               [12] 3498 	clr	a
      005B65 3E               [12] 3499 	addc	a,r6
      005B66 FE               [12] 3500 	mov	r6,a
      005B67 8D 82            [24] 3501 	mov	dpl,r5
      005B69 8E 83            [24] 3502 	mov	dph,r6
      005B6B 8F F0            [24] 3503 	mov	b,r7
      005B6D 12 70 5A         [24] 3504 	lcall	__gptrget
      005B70 FA               [12] 3505 	mov	r2,a
      005B71 A3               [24] 3506 	inc	dptr
      005B72 12 70 5A         [24] 3507 	lcall	__gptrget
      005B75 FB               [12] 3508 	mov	r3,a
      005B76 A3               [24] 3509 	inc	dptr
      005B77 12 70 5A         [24] 3510 	lcall	__gptrget
      005B7A FC               [12] 3511 	mov	r4,a
      005B7B EA               [12] 3512 	mov	a,r2
      005B7C 4B               [12] 3513 	orl	a,r3
      005B7D 60 6E            [24] 3514 	jz	00102$
                           000FE1  3515 	C$stream_buffer.c$1070$3_0$241 ==.
                                   3516 ;	src/FreeRTOS/stream_buffer.c:1070: ( void ) xTaskNotifyFromISR( ( pxStreamBuffer )->xTaskWaitingToSend,
      005B7F 8D 82            [24] 3517 	mov	dpl,r5
      005B81 8E 83            [24] 3518 	mov	dph,r6
      005B83 8F F0            [24] 3519 	mov	b,r7
      005B85 12 70 5A         [24] 3520 	lcall	__gptrget
      005B88 FA               [12] 3521 	mov	r2,a
      005B89 A3               [24] 3522 	inc	dptr
      005B8A 12 70 5A         [24] 3523 	lcall	__gptrget
      005B8D FB               [12] 3524 	mov	r3,a
      005B8E A3               [24] 3525 	inc	dptr
      005B8F 12 70 5A         [24] 3526 	lcall	__gptrget
      005B92 FC               [12] 3527 	mov	r4,a
      005B93 C0 07            [24] 3528 	push	ar7
      005B95 C0 06            [24] 3529 	push	ar6
      005B97 C0 05            [24] 3530 	push	ar5
      005B99 E5 0C            [12] 3531 	mov	a,_bp
      005B9B 24 FB            [12] 3532 	add	a,#0xfb
      005B9D F8               [12] 3533 	mov	r0,a
      005B9E E6               [12] 3534 	mov	a,@r0
      005B9F C0 E0            [24] 3535 	push	acc
      005BA1 08               [12] 3536 	inc	r0
      005BA2 E6               [12] 3537 	mov	a,@r0
      005BA3 C0 E0            [24] 3538 	push	acc
      005BA5 08               [12] 3539 	inc	r0
      005BA6 E6               [12] 3540 	mov	a,@r0
      005BA7 C0 E0            [24] 3541 	push	acc
      005BA9 E4               [12] 3542 	clr	a
      005BAA C0 E0            [24] 3543 	push	acc
      005BAC C0 E0            [24] 3544 	push	acc
      005BAE C0 E0            [24] 3545 	push	acc
      005BB0 C0 E0            [24] 3546 	push	acc
      005BB2 C0 E0            [24] 3547 	push	acc
      005BB4 C0 E0            [24] 3548 	push	acc
      005BB6 C0 E0            [24] 3549 	push	acc
      005BB8 C0 E0            [24] 3550 	push	acc
      005BBA 8A 82            [24] 3551 	mov	dpl,r2
      005BBC 8B 83            [24] 3552 	mov	dph,r3
      005BBE 8C F0            [24] 3553 	mov	b,r4
      005BC0 12 1C D7         [24] 3554 	lcall	_xTaskGenericNotifyFromISR
      005BC3 E5 81            [12] 3555 	mov	a,sp
      005BC5 24 F5            [12] 3556 	add	a,#0xf5
      005BC7 F5 81            [12] 3557 	mov	sp,a
      005BC9 D0 05            [24] 3558 	pop	ar5
      005BCB D0 06            [24] 3559 	pop	ar6
      005BCD D0 07            [24] 3560 	pop	ar7
                           001031  3561 	C$stream_buffer.c$1074$3_0$241 ==.
                                   3562 ;	src/FreeRTOS/stream_buffer.c:1074: ( pxStreamBuffer )->xTaskWaitingToSend = NULL;
      005BCF 7A 00            [12] 3563 	mov	r2,#0x00
      005BD1 7B 00            [12] 3564 	mov	r3,#0x00
      005BD3 7C 00            [12] 3565 	mov	r4,#0x00
      005BD5 8D 82            [24] 3566 	mov	dpl,r5
      005BD7 8E 83            [24] 3567 	mov	dph,r6
      005BD9 8F F0            [24] 3568 	mov	b,r7
      005BDB EA               [12] 3569 	mov	a,r2
      005BDC 12 66 A0         [24] 3570 	lcall	__gptrput
      005BDF A3               [24] 3571 	inc	dptr
      005BE0 EB               [12] 3572 	mov	a,r3
      005BE1 12 66 A0         [24] 3573 	lcall	__gptrput
      005BE4 A3               [24] 3574 	inc	dptr
      005BE5 EC               [12] 3575 	mov	a,r4
      005BE6 12 66 A0         [24] 3576 	lcall	__gptrput
                           00104B  3577 	C$stream_buffer.c$1075$3_0$241 ==.
                                   3578 ;	src/FreeRTOS/stream_buffer.c:1075: xReturn = pdTRUE;
      005BE9 7F 01            [12] 3579 	mov	r7,#0x01
      005BEB 80 02            [24] 3580 	sjmp	00103$
      005BED                       3581 00102$:
                           00104F  3582 	C$stream_buffer.c$1079$3_0$242 ==.
                                   3583 ;	src/FreeRTOS/stream_buffer.c:1079: xReturn = pdFALSE;
      005BED 7F 00            [12] 3584 	mov	r7,#0x00
      005BEF                       3585 00103$:
                           001051  3586 	C$stream_buffer.c$1084$1_0$239 ==.
                                   3587 ;	src/FreeRTOS/stream_buffer.c:1084: return xReturn;
      005BEF 8F 82            [24] 3588 	mov	dpl,r7
                           001053  3589 	C$stream_buffer.c$1085$1_0$239 ==.
                                   3590 ;	src/FreeRTOS/stream_buffer.c:1085: }
      005BF1 D0 0C            [24] 3591 	pop	_bp
                           001055  3592 	C$stream_buffer.c$1085$1_0$239 ==.
                           001055  3593 	XG$xStreamBufferReceiveCompletedFromISR$0$0 ==.
      005BF3 22               [24] 3594 	ret
                                   3595 ;------------------------------------------------------------
                                   3596 ;Allocation info for local variables in function 'prvWriteBytesToBuffer'
                                   3597 ;------------------------------------------------------------
                                   3598 ;pucData                   Allocated to stack - _bp -5
                                   3599 ;xCount                    Allocated to stack - _bp -7
                                   3600 ;pxStreamBuffer            Allocated to stack - _bp +1
                                   3601 ;xNextHead                 Allocated to registers r6 r7 
                                   3602 ;xFirstLength              Allocated to stack - _bp +14
                                   3603 ;sloc0                     Allocated to stack - _bp +4
                                   3604 ;sloc1                     Allocated to stack - _bp +6
                                   3605 ;sloc2                     Allocated to stack - _bp +9
                                   3606 ;sloc3                     Allocated to stack - _bp +11
                                   3607 ;------------------------------------------------------------
                           001056  3608 	Fstream_buffer$prvWriteBytesToBuffer$0$0 ==.
                           001056  3609 	C$stream_buffer.c$1088$1_0$244 ==.
                                   3610 ;	src/FreeRTOS/stream_buffer.c:1088: static size_t prvWriteBytesToBuffer( StreamBuffer_t * const pxStreamBuffer, const uint8_t *pucData, size_t xCount )
                                   3611 ;	-----------------------------------------
                                   3612 ;	 function prvWriteBytesToBuffer
                                   3613 ;	-----------------------------------------
      005BF4                       3614 _prvWriteBytesToBuffer:
      005BF4 C0 0C            [24] 3615 	push	_bp
      005BF6 85 81 0C         [24] 3616 	mov	_bp,sp
      005BF9 C0 82            [24] 3617 	push	dpl
      005BFB C0 83            [24] 3618 	push	dph
      005BFD C0 F0            [24] 3619 	push	b
      005BFF E5 81            [12] 3620 	mov	a,sp
      005C01 24 0C            [12] 3621 	add	a,#0x0c
      005C03 F5 81            [12] 3622 	mov	sp,a
                           001067  3623 	C$stream_buffer.c$1094$1_0$244 ==.
                                   3624 ;	src/FreeRTOS/stream_buffer.c:1094: xNextHead = pxStreamBuffer->xHead;
      005C05 A8 0C            [24] 3625 	mov	r0,_bp
      005C07 08               [12] 3626 	inc	r0
      005C08 74 02            [12] 3627 	mov	a,#0x02
      005C0A 26               [12] 3628 	add	a,@r0
      005C0B FA               [12] 3629 	mov	r2,a
      005C0C E4               [12] 3630 	clr	a
      005C0D 08               [12] 3631 	inc	r0
      005C0E 36               [12] 3632 	addc	a,@r0
      005C0F FB               [12] 3633 	mov	r3,a
      005C10 08               [12] 3634 	inc	r0
      005C11 86 04            [24] 3635 	mov	ar4,@r0
      005C13 8A 82            [24] 3636 	mov	dpl,r2
      005C15 8B 83            [24] 3637 	mov	dph,r3
      005C17 8C F0            [24] 3638 	mov	b,r4
      005C19 E5 0C            [12] 3639 	mov	a,_bp
      005C1B 24 04            [12] 3640 	add	a,#0x04
      005C1D F8               [12] 3641 	mov	r0,a
      005C1E 12 70 5A         [24] 3642 	lcall	__gptrget
      005C21 F6               [12] 3643 	mov	@r0,a
      005C22 A3               [24] 3644 	inc	dptr
      005C23 12 70 5A         [24] 3645 	lcall	__gptrget
      005C26 08               [12] 3646 	inc	r0
      005C27 F6               [12] 3647 	mov	@r0,a
                           00108A  3648 	C$stream_buffer.c$1099$1_0$244 ==.
                                   3649 ;	src/FreeRTOS/stream_buffer.c:1099: xFirstLength = configMIN( pxStreamBuffer->xLength - xNextHead, xCount );
      005C28 A8 0C            [24] 3650 	mov	r0,_bp
      005C2A 08               [12] 3651 	inc	r0
      005C2B E5 0C            [12] 3652 	mov	a,_bp
      005C2D 24 06            [12] 3653 	add	a,#0x06
      005C2F F9               [12] 3654 	mov	r1,a
      005C30 74 04            [12] 3655 	mov	a,#0x04
      005C32 26               [12] 3656 	add	a,@r0
      005C33 F7               [12] 3657 	mov	@r1,a
      005C34 E4               [12] 3658 	clr	a
      005C35 08               [12] 3659 	inc	r0
      005C36 36               [12] 3660 	addc	a,@r0
      005C37 09               [12] 3661 	inc	r1
      005C38 F7               [12] 3662 	mov	@r1,a
      005C39 08               [12] 3663 	inc	r0
      005C3A 09               [12] 3664 	inc	r1
      005C3B E6               [12] 3665 	mov	a,@r0
      005C3C F7               [12] 3666 	mov	@r1,a
      005C3D E5 0C            [12] 3667 	mov	a,_bp
      005C3F 24 06            [12] 3668 	add	a,#0x06
      005C41 F8               [12] 3669 	mov	r0,a
      005C42 86 82            [24] 3670 	mov	dpl,@r0
      005C44 08               [12] 3671 	inc	r0
      005C45 86 83            [24] 3672 	mov	dph,@r0
      005C47 08               [12] 3673 	inc	r0
      005C48 86 F0            [24] 3674 	mov	b,@r0
      005C4A E5 0C            [12] 3675 	mov	a,_bp
      005C4C 24 09            [12] 3676 	add	a,#0x09
      005C4E F9               [12] 3677 	mov	r1,a
      005C4F 12 70 5A         [24] 3678 	lcall	__gptrget
      005C52 F7               [12] 3679 	mov	@r1,a
      005C53 A3               [24] 3680 	inc	dptr
      005C54 12 70 5A         [24] 3681 	lcall	__gptrget
      005C57 09               [12] 3682 	inc	r1
      005C58 F7               [12] 3683 	mov	@r1,a
      005C59 E5 0C            [12] 3684 	mov	a,_bp
      005C5B 24 09            [12] 3685 	add	a,#0x09
      005C5D F8               [12] 3686 	mov	r0,a
      005C5E E5 0C            [12] 3687 	mov	a,_bp
      005C60 24 04            [12] 3688 	add	a,#0x04
      005C62 F9               [12] 3689 	mov	r1,a
      005C63 E6               [12] 3690 	mov	a,@r0
      005C64 C3               [12] 3691 	clr	c
      005C65 97               [12] 3692 	subb	a,@r1
      005C66 FE               [12] 3693 	mov	r6,a
      005C67 08               [12] 3694 	inc	r0
      005C68 E6               [12] 3695 	mov	a,@r0
      005C69 09               [12] 3696 	inc	r1
      005C6A 97               [12] 3697 	subb	a,@r1
      005C6B FF               [12] 3698 	mov	r7,a
      005C6C E5 0C            [12] 3699 	mov	a,_bp
      005C6E 24 F9            [12] 3700 	add	a,#0xf9
      005C70 F8               [12] 3701 	mov	r0,a
      005C71 C3               [12] 3702 	clr	c
      005C72 EE               [12] 3703 	mov	a,r6
      005C73 96               [12] 3704 	subb	a,@r0
      005C74 EF               [12] 3705 	mov	a,r7
      005C75 08               [12] 3706 	inc	r0
      005C76 96               [12] 3707 	subb	a,@r0
      005C77 50 15            [24] 3708 	jnc	00107$
      005C79 E5 0C            [12] 3709 	mov	a,_bp
      005C7B 24 09            [12] 3710 	add	a,#0x09
      005C7D F8               [12] 3711 	mov	r0,a
      005C7E E5 0C            [12] 3712 	mov	a,_bp
      005C80 24 04            [12] 3713 	add	a,#0x04
      005C82 F9               [12] 3714 	mov	r1,a
      005C83 E6               [12] 3715 	mov	a,@r0
      005C84 C3               [12] 3716 	clr	c
      005C85 97               [12] 3717 	subb	a,@r1
      005C86 FE               [12] 3718 	mov	r6,a
      005C87 08               [12] 3719 	inc	r0
      005C88 E6               [12] 3720 	mov	a,@r0
      005C89 09               [12] 3721 	inc	r1
      005C8A 97               [12] 3722 	subb	a,@r1
      005C8B FF               [12] 3723 	mov	r7,a
      005C8C 80 0A            [24] 3724 	sjmp	00108$
      005C8E                       3725 00107$:
      005C8E E5 0C            [12] 3726 	mov	a,_bp
      005C90 24 F9            [12] 3727 	add	a,#0xf9
      005C92 F8               [12] 3728 	mov	r0,a
      005C93 86 06            [24] 3729 	mov	ar6,@r0
      005C95 08               [12] 3730 	inc	r0
      005C96 86 07            [24] 3731 	mov	ar7,@r0
      005C98                       3732 00108$:
      005C98 C0 02            [24] 3733 	push	ar2
      005C9A C0 03            [24] 3734 	push	ar3
      005C9C C0 04            [24] 3735 	push	ar4
      005C9E E5 0C            [12] 3736 	mov	a,_bp
      005CA0 24 0E            [12] 3737 	add	a,#0x0e
      005CA2 F8               [12] 3738 	mov	r0,a
      005CA3 A6 06            [24] 3739 	mov	@r0,ar6
      005CA5 08               [12] 3740 	inc	r0
      005CA6 A6 07            [24] 3741 	mov	@r0,ar7
                           00110A  3742 	C$stream_buffer.c$1103$1_0$244 ==.
                                   3743 ;	src/FreeRTOS/stream_buffer.c:1103: ( void ) memcpy( ( void* ) ( &( pxStreamBuffer->pucBuffer[ xNextHead ] ) ), ( const void * ) pucData, xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005CA8 E5 0C            [12] 3744 	mov	a,_bp
      005CAA 24 FB            [12] 3745 	add	a,#0xfb
      005CAC F8               [12] 3746 	mov	r0,a
      005CAD 86 03            [24] 3747 	mov	ar3,@r0
      005CAF 08               [12] 3748 	inc	r0
      005CB0 86 04            [24] 3749 	mov	ar4,@r0
      005CB2 08               [12] 3750 	inc	r0
      005CB3 86 05            [24] 3751 	mov	ar5,@r0
      005CB5 A8 0C            [24] 3752 	mov	r0,_bp
      005CB7 08               [12] 3753 	inc	r0
      005CB8 E5 0C            [12] 3754 	mov	a,_bp
      005CBA 24 0B            [12] 3755 	add	a,#0x0b
      005CBC F9               [12] 3756 	mov	r1,a
      005CBD 74 0E            [12] 3757 	mov	a,#0x0e
      005CBF 26               [12] 3758 	add	a,@r0
      005CC0 F7               [12] 3759 	mov	@r1,a
      005CC1 E4               [12] 3760 	clr	a
      005CC2 08               [12] 3761 	inc	r0
      005CC3 36               [12] 3762 	addc	a,@r0
      005CC4 09               [12] 3763 	inc	r1
      005CC5 F7               [12] 3764 	mov	@r1,a
      005CC6 08               [12] 3765 	inc	r0
      005CC7 09               [12] 3766 	inc	r1
      005CC8 E6               [12] 3767 	mov	a,@r0
      005CC9 F7               [12] 3768 	mov	@r1,a
      005CCA E5 0C            [12] 3769 	mov	a,_bp
      005CCC 24 0B            [12] 3770 	add	a,#0x0b
      005CCE F8               [12] 3771 	mov	r0,a
      005CCF 86 82            [24] 3772 	mov	dpl,@r0
      005CD1 08               [12] 3773 	inc	r0
      005CD2 86 83            [24] 3774 	mov	dph,@r0
      005CD4 08               [12] 3775 	inc	r0
      005CD5 86 F0            [24] 3776 	mov	b,@r0
      005CD7 12 70 5A         [24] 3777 	lcall	__gptrget
      005CDA FA               [12] 3778 	mov	r2,a
      005CDB A3               [24] 3779 	inc	dptr
      005CDC 12 70 5A         [24] 3780 	lcall	__gptrget
      005CDF FE               [12] 3781 	mov	r6,a
      005CE0 A3               [24] 3782 	inc	dptr
      005CE1 12 70 5A         [24] 3783 	lcall	__gptrget
      005CE4 FF               [12] 3784 	mov	r7,a
      005CE5 E5 0C            [12] 3785 	mov	a,_bp
      005CE7 24 04            [12] 3786 	add	a,#0x04
      005CE9 F8               [12] 3787 	mov	r0,a
      005CEA E6               [12] 3788 	mov	a,@r0
      005CEB 2A               [12] 3789 	add	a,r2
      005CEC FA               [12] 3790 	mov	r2,a
      005CED 08               [12] 3791 	inc	r0
      005CEE E6               [12] 3792 	mov	a,@r0
      005CEF 3E               [12] 3793 	addc	a,r6
      005CF0 FE               [12] 3794 	mov	r6,a
      005CF1 C0 04            [24] 3795 	push	ar4
      005CF3 C0 03            [24] 3796 	push	ar3
      005CF5 C0 02            [24] 3797 	push	ar2
      005CF7 E5 0C            [12] 3798 	mov	a,_bp
      005CF9 24 0E            [12] 3799 	add	a,#0x0e
      005CFB F8               [12] 3800 	mov	r0,a
      005CFC E6               [12] 3801 	mov	a,@r0
      005CFD C0 E0            [24] 3802 	push	acc
      005CFF 08               [12] 3803 	inc	r0
      005D00 E6               [12] 3804 	mov	a,@r0
      005D01 C0 E0            [24] 3805 	push	acc
      005D03 C0 03            [24] 3806 	push	ar3
      005D05 C0 04            [24] 3807 	push	ar4
      005D07 C0 05            [24] 3808 	push	ar5
      005D09 8A 82            [24] 3809 	mov	dpl,r2
      005D0B 8E 83            [24] 3810 	mov	dph,r6
      005D0D 8F F0            [24] 3811 	mov	b,r7
      005D0F 12 67 03         [24] 3812 	lcall	_memcpy
      005D12 E5 81            [12] 3813 	mov	a,sp
      005D14 24 FB            [12] 3814 	add	a,#0xfb
      005D16 F5 81            [12] 3815 	mov	sp,a
      005D18 D0 02            [24] 3816 	pop	ar2
      005D1A D0 03            [24] 3817 	pop	ar3
      005D1C D0 04            [24] 3818 	pop	ar4
                           001180  3819 	C$stream_buffer.c$1107$1_0$244 ==.
                                   3820 ;	src/FreeRTOS/stream_buffer.c:1107: if( xCount > xFirstLength )
      005D1E E5 0C            [12] 3821 	mov	a,_bp
      005D20 24 F9            [12] 3822 	add	a,#0xf9
      005D22 F8               [12] 3823 	mov	r0,a
      005D23 E5 0C            [12] 3824 	mov	a,_bp
      005D25 24 0E            [12] 3825 	add	a,#0x0e
      005D27 F9               [12] 3826 	mov	r1,a
      005D28 C3               [12] 3827 	clr	c
      005D29 E7               [12] 3828 	mov	a,@r1
      005D2A 96               [12] 3829 	subb	a,@r0
      005D2B 09               [12] 3830 	inc	r1
      005D2C E7               [12] 3831 	mov	a,@r1
      005D2D 08               [12] 3832 	inc	r0
      005D2E 96               [12] 3833 	subb	a,@r0
      005D2F D0 04            [24] 3834 	pop	ar4
      005D31 D0 03            [24] 3835 	pop	ar3
      005D33 D0 02            [24] 3836 	pop	ar2
      005D35 40 03            [24] 3837 	jc	00125$
      005D37 02 5D C7         [24] 3838 	ljmp	00102$
      005D3A                       3839 00125$:
                           00119C  3840 	C$stream_buffer.c$1111$1_0$244 ==.
                                   3841 ;	src/FreeRTOS/stream_buffer.c:1111: ( void ) memcpy( ( void * ) pxStreamBuffer->pucBuffer, ( const void * ) &( pucData[ xFirstLength ] ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005D3A C0 02            [24] 3842 	push	ar2
      005D3C C0 03            [24] 3843 	push	ar3
      005D3E C0 04            [24] 3844 	push	ar4
      005D40 E5 0C            [12] 3845 	mov	a,_bp
      005D42 24 F9            [12] 3846 	add	a,#0xf9
      005D44 F8               [12] 3847 	mov	r0,a
      005D45 E5 0C            [12] 3848 	mov	a,_bp
      005D47 24 0E            [12] 3849 	add	a,#0x0e
      005D49 F9               [12] 3850 	mov	r1,a
      005D4A E6               [12] 3851 	mov	a,@r0
      005D4B C3               [12] 3852 	clr	c
      005D4C 97               [12] 3853 	subb	a,@r1
      005D4D C0 E0            [24] 3854 	push	acc
      005D4F 08               [12] 3855 	inc	r0
      005D50 E6               [12] 3856 	mov	a,@r0
      005D51 09               [12] 3857 	inc	r1
      005D52 97               [12] 3858 	subb	a,@r1
      005D53 C0 E0            [24] 3859 	push	acc
      005D55 E5 0C            [12] 3860 	mov	a,_bp
      005D57 24 0A            [12] 3861 	add	a,#0x0a
      005D59 F8               [12] 3862 	mov	r0,a
      005D5A D0 E0            [24] 3863 	pop	acc
      005D5C F6               [12] 3864 	mov	@r0,a
      005D5D 18               [12] 3865 	dec	r0
      005D5E D0 E0            [24] 3866 	pop	acc
      005D60 F6               [12] 3867 	mov	@r0,a
      005D61 E5 0C            [12] 3868 	mov	a,_bp
      005D63 24 FB            [12] 3869 	add	a,#0xfb
      005D65 F8               [12] 3870 	mov	r0,a
      005D66 E5 0C            [12] 3871 	mov	a,_bp
      005D68 24 0E            [12] 3872 	add	a,#0x0e
      005D6A F9               [12] 3873 	mov	r1,a
      005D6B E7               [12] 3874 	mov	a,@r1
      005D6C 26               [12] 3875 	add	a,@r0
      005D6D FB               [12] 3876 	mov	r3,a
      005D6E 09               [12] 3877 	inc	r1
      005D6F E7               [12] 3878 	mov	a,@r1
      005D70 08               [12] 3879 	inc	r0
      005D71 36               [12] 3880 	addc	a,@r0
      005D72 08               [12] 3881 	inc	r0
      005D73 86 05            [24] 3882 	mov	ar5,@r0
      005D75 7D 00            [12] 3883 	mov	r5,#0x00
      005D77 7C 40            [12] 3884 	mov	r4,#0x40
      005D79 E5 0C            [12] 3885 	mov	a,_bp
      005D7B 24 0B            [12] 3886 	add	a,#0x0b
      005D7D F8               [12] 3887 	mov	r0,a
      005D7E 86 82            [24] 3888 	mov	dpl,@r0
      005D80 08               [12] 3889 	inc	r0
      005D81 86 83            [24] 3890 	mov	dph,@r0
      005D83 08               [12] 3891 	inc	r0
      005D84 86 F0            [24] 3892 	mov	b,@r0
      005D86 12 70 5A         [24] 3893 	lcall	__gptrget
      005D89 FA               [12] 3894 	mov	r2,a
      005D8A A3               [24] 3895 	inc	dptr
      005D8B 12 70 5A         [24] 3896 	lcall	__gptrget
      005D8E FE               [12] 3897 	mov	r6,a
      005D8F A3               [24] 3898 	inc	dptr
      005D90 12 70 5A         [24] 3899 	lcall	__gptrget
      005D93 FF               [12] 3900 	mov	r7,a
      005D94 C0 04            [24] 3901 	push	ar4
      005D96 C0 03            [24] 3902 	push	ar3
      005D98 C0 02            [24] 3903 	push	ar2
      005D9A E5 0C            [12] 3904 	mov	a,_bp
      005D9C 24 09            [12] 3905 	add	a,#0x09
      005D9E F8               [12] 3906 	mov	r0,a
      005D9F E6               [12] 3907 	mov	a,@r0
      005DA0 C0 E0            [24] 3908 	push	acc
      005DA2 08               [12] 3909 	inc	r0
      005DA3 E6               [12] 3910 	mov	a,@r0
      005DA4 C0 E0            [24] 3911 	push	acc
      005DA6 C0 03            [24] 3912 	push	ar3
      005DA8 C0 05            [24] 3913 	push	ar5
      005DAA C0 04            [24] 3914 	push	ar4
      005DAC 8A 82            [24] 3915 	mov	dpl,r2
      005DAE 8E 83            [24] 3916 	mov	dph,r6
      005DB0 8F F0            [24] 3917 	mov	b,r7
      005DB2 12 67 03         [24] 3918 	lcall	_memcpy
      005DB5 E5 81            [12] 3919 	mov	a,sp
      005DB7 24 FB            [12] 3920 	add	a,#0xfb
      005DB9 F5 81            [12] 3921 	mov	sp,a
      005DBB D0 02            [24] 3922 	pop	ar2
      005DBD D0 03            [24] 3923 	pop	ar3
      005DBF D0 04            [24] 3924 	pop	ar4
                           001223  3925 	C$stream_buffer.c$1130$1_0$244 ==.
                                   3926 ;	src/FreeRTOS/stream_buffer.c:1130: return xCount;
      005DC1 D0 04            [24] 3927 	pop	ar4
      005DC3 D0 03            [24] 3928 	pop	ar3
      005DC5 D0 02            [24] 3929 	pop	ar2
                           001229  3930 	C$stream_buffer.c$1111$1_0$244 ==.
                                   3931 ;	src/FreeRTOS/stream_buffer.c:1111: ( void ) memcpy( ( void * ) pxStreamBuffer->pucBuffer, ( const void * ) &( pucData[ xFirstLength ] ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005DC7                       3932 00102$:
                           001229  3933 	C$stream_buffer.c$1118$1_0$244 ==.
                                   3934 ;	src/FreeRTOS/stream_buffer.c:1118: xNextHead += xCount;
      005DC7 E5 0C            [12] 3935 	mov	a,_bp
      005DC9 24 04            [12] 3936 	add	a,#0x04
      005DCB F8               [12] 3937 	mov	r0,a
      005DCC E5 0C            [12] 3938 	mov	a,_bp
      005DCE 24 F9            [12] 3939 	add	a,#0xf9
      005DD0 F9               [12] 3940 	mov	r1,a
      005DD1 E7               [12] 3941 	mov	a,@r1
      005DD2 26               [12] 3942 	add	a,@r0
      005DD3 FE               [12] 3943 	mov	r6,a
      005DD4 09               [12] 3944 	inc	r1
      005DD5 E7               [12] 3945 	mov	a,@r1
      005DD6 08               [12] 3946 	inc	r0
      005DD7 36               [12] 3947 	addc	a,@r0
      005DD8 FF               [12] 3948 	mov	r7,a
                           00123B  3949 	C$stream_buffer.c$1119$1_0$244 ==.
                                   3950 ;	src/FreeRTOS/stream_buffer.c:1119: if( xNextHead >= pxStreamBuffer->xLength )
      005DD9 E5 0C            [12] 3951 	mov	a,_bp
      005DDB 24 06            [12] 3952 	add	a,#0x06
      005DDD F8               [12] 3953 	mov	r0,a
      005DDE 86 82            [24] 3954 	mov	dpl,@r0
      005DE0 08               [12] 3955 	inc	r0
      005DE1 86 83            [24] 3956 	mov	dph,@r0
      005DE3 08               [12] 3957 	inc	r0
      005DE4 86 F0            [24] 3958 	mov	b,@r0
      005DE6 E5 0C            [12] 3959 	mov	a,_bp
      005DE8 24 0B            [12] 3960 	add	a,#0x0b
      005DEA F9               [12] 3961 	mov	r1,a
      005DEB 12 70 5A         [24] 3962 	lcall	__gptrget
      005DEE F7               [12] 3963 	mov	@r1,a
      005DEF A3               [24] 3964 	inc	dptr
      005DF0 12 70 5A         [24] 3965 	lcall	__gptrget
      005DF3 09               [12] 3966 	inc	r1
      005DF4 F7               [12] 3967 	mov	@r1,a
      005DF5 E5 0C            [12] 3968 	mov	a,_bp
      005DF7 24 0B            [12] 3969 	add	a,#0x0b
      005DF9 F8               [12] 3970 	mov	r0,a
      005DFA C3               [12] 3971 	clr	c
      005DFB EE               [12] 3972 	mov	a,r6
      005DFC 96               [12] 3973 	subb	a,@r0
      005DFD EF               [12] 3974 	mov	a,r7
      005DFE 08               [12] 3975 	inc	r0
      005DFF 96               [12] 3976 	subb	a,@r0
      005E00 40 0D            [24] 3977 	jc	00104$
                           001264  3978 	C$stream_buffer.c$1121$2_0$247 ==.
                                   3979 ;	src/FreeRTOS/stream_buffer.c:1121: xNextHead -= pxStreamBuffer->xLength;
      005E02 E5 0C            [12] 3980 	mov	a,_bp
      005E04 24 0B            [12] 3981 	add	a,#0x0b
      005E06 F8               [12] 3982 	mov	r0,a
      005E07 EE               [12] 3983 	mov	a,r6
      005E08 C3               [12] 3984 	clr	c
      005E09 96               [12] 3985 	subb	a,@r0
      005E0A FE               [12] 3986 	mov	r6,a
      005E0B EF               [12] 3987 	mov	a,r7
      005E0C 08               [12] 3988 	inc	r0
      005E0D 96               [12] 3989 	subb	a,@r0
      005E0E FF               [12] 3990 	mov	r7,a
      005E0F                       3991 00104$:
                           001271  3992 	C$stream_buffer.c$1128$1_0$244 ==.
                                   3993 ;	src/FreeRTOS/stream_buffer.c:1128: pxStreamBuffer->xHead = xNextHead;
      005E0F 8A 82            [24] 3994 	mov	dpl,r2
      005E11 8B 83            [24] 3995 	mov	dph,r3
      005E13 8C F0            [24] 3996 	mov	b,r4
      005E15 EE               [12] 3997 	mov	a,r6
      005E16 12 66 A0         [24] 3998 	lcall	__gptrput
      005E19 A3               [24] 3999 	inc	dptr
      005E1A EF               [12] 4000 	mov	a,r7
      005E1B 12 66 A0         [24] 4001 	lcall	__gptrput
                           001280  4002 	C$stream_buffer.c$1130$1_0$244 ==.
                                   4003 ;	src/FreeRTOS/stream_buffer.c:1130: return xCount;
      005E1E E5 0C            [12] 4004 	mov	a,_bp
      005E20 24 F9            [12] 4005 	add	a,#0xf9
      005E22 F8               [12] 4006 	mov	r0,a
      005E23 86 82            [24] 4007 	mov	dpl,@r0
      005E25 08               [12] 4008 	inc	r0
      005E26 86 83            [24] 4009 	mov	dph,@r0
                           00128A  4010 	C$stream_buffer.c$1131$1_0$244 ==.
                                   4011 ;	src/FreeRTOS/stream_buffer.c:1131: }
      005E28 85 0C 81         [24] 4012 	mov	sp,_bp
      005E2B D0 0C            [24] 4013 	pop	_bp
                           00128F  4014 	C$stream_buffer.c$1131$1_0$244 ==.
                           00128F  4015 	XFstream_buffer$prvWriteBytesToBuffer$0$0 ==.
      005E2D 22               [24] 4016 	ret
                                   4017 ;------------------------------------------------------------
                                   4018 ;Allocation info for local variables in function 'prvReadBytesFromBuffer'
                                   4019 ;------------------------------------------------------------
                                   4020 ;pucData                   Allocated to stack - _bp -5
                                   4021 ;xMaxCount                 Allocated to stack - _bp -7
                                   4022 ;xBytesAvailable           Allocated to stack - _bp -9
                                   4023 ;pxStreamBuffer            Allocated to stack - _bp +1
                                   4024 ;xCount                    Allocated to stack - _bp +12
                                   4025 ;xFirstLength              Allocated to stack - _bp +14
                                   4026 ;xNextTail                 Allocated to registers r7 r6 
                                   4027 ;sloc0                     Allocated to stack - _bp +4
                                   4028 ;sloc1                     Allocated to stack - _bp +7
                                   4029 ;sloc2                     Allocated to stack - _bp +9
                                   4030 ;------------------------------------------------------------
                           001290  4031 	Fstream_buffer$prvReadBytesFromBuffer$0$0 ==.
                           001290  4032 	C$stream_buffer.c$1134$1_0$250 ==.
                                   4033 ;	src/FreeRTOS/stream_buffer.c:1134: static size_t prvReadBytesFromBuffer( StreamBuffer_t *pxStreamBuffer, uint8_t *pucData, size_t xMaxCount, size_t xBytesAvailable )
                                   4034 ;	-----------------------------------------
                                   4035 ;	 function prvReadBytesFromBuffer
                                   4036 ;	-----------------------------------------
      005E2E                       4037 _prvReadBytesFromBuffer:
      005E2E C0 0C            [24] 4038 	push	_bp
      005E30 85 81 0C         [24] 4039 	mov	_bp,sp
      005E33 C0 82            [24] 4040 	push	dpl
      005E35 C0 83            [24] 4041 	push	dph
      005E37 C0 F0            [24] 4042 	push	b
      005E39 E5 81            [12] 4043 	mov	a,sp
      005E3B 24 0C            [12] 4044 	add	a,#0x0c
      005E3D F5 81            [12] 4045 	mov	sp,a
                           0012A1  4046 	C$stream_buffer.c$1139$1_0$250 ==.
                                   4047 ;	src/FreeRTOS/stream_buffer.c:1139: xCount = configMIN( xBytesAvailable, xMaxCount );
      005E3F E5 0C            [12] 4048 	mov	a,_bp
      005E41 24 F7            [12] 4049 	add	a,#0xf7
      005E43 F8               [12] 4050 	mov	r0,a
      005E44 E5 0C            [12] 4051 	mov	a,_bp
      005E46 24 F9            [12] 4052 	add	a,#0xf9
      005E48 F9               [12] 4053 	mov	r1,a
      005E49 C3               [12] 4054 	clr	c
      005E4A E6               [12] 4055 	mov	a,@r0
      005E4B 97               [12] 4056 	subb	a,@r1
      005E4C 08               [12] 4057 	inc	r0
      005E4D E6               [12] 4058 	mov	a,@r0
      005E4E 09               [12] 4059 	inc	r1
      005E4F 97               [12] 4060 	subb	a,@r1
      005E50 50 0C            [24] 4061 	jnc	00109$
      005E52 E5 0C            [12] 4062 	mov	a,_bp
      005E54 24 F7            [12] 4063 	add	a,#0xf7
      005E56 F8               [12] 4064 	mov	r0,a
      005E57 86 03            [24] 4065 	mov	ar3,@r0
      005E59 08               [12] 4066 	inc	r0
      005E5A 86 04            [24] 4067 	mov	ar4,@r0
      005E5C 80 0A            [24] 4068 	sjmp	00110$
      005E5E                       4069 00109$:
      005E5E E5 0C            [12] 4070 	mov	a,_bp
      005E60 24 F9            [12] 4071 	add	a,#0xf9
      005E62 F8               [12] 4072 	mov	r0,a
      005E63 86 03            [24] 4073 	mov	ar3,@r0
      005E65 08               [12] 4074 	inc	r0
      005E66 86 04            [24] 4075 	mov	ar4,@r0
      005E68                       4076 00110$:
      005E68 E5 0C            [12] 4077 	mov	a,_bp
      005E6A 24 0C            [12] 4078 	add	a,#0x0c
      005E6C F8               [12] 4079 	mov	r0,a
      005E6D A6 03            [24] 4080 	mov	@r0,ar3
      005E6F 08               [12] 4081 	inc	r0
      005E70 A6 04            [24] 4082 	mov	@r0,ar4
                           0012D4  4083 	C$stream_buffer.c$1141$1_0$250 ==.
                                   4084 ;	src/FreeRTOS/stream_buffer.c:1141: if( xCount > ( size_t ) 0 )
      005E72 E5 0C            [12] 4085 	mov	a,_bp
      005E74 24 0C            [12] 4086 	add	a,#0x0c
      005E76 F8               [12] 4087 	mov	r0,a
      005E77 E6               [12] 4088 	mov	a,@r0
      005E78 08               [12] 4089 	inc	r0
      005E79 46               [12] 4090 	orl	a,@r0
      005E7A 70 03            [24] 4091 	jnz	00139$
      005E7C 02 60 46         [24] 4092 	ljmp	00106$
      005E7F                       4093 00139$:
                           0012E1  4094 	C$stream_buffer.c$1143$2_0$251 ==.
                                   4095 ;	src/FreeRTOS/stream_buffer.c:1143: xNextTail = pxStreamBuffer->xTail;
      005E7F A8 0C            [24] 4096 	mov	r0,_bp
      005E81 08               [12] 4097 	inc	r0
      005E82 86 82            [24] 4098 	mov	dpl,@r0
      005E84 08               [12] 4099 	inc	r0
      005E85 86 83            [24] 4100 	mov	dph,@r0
      005E87 08               [12] 4101 	inc	r0
      005E88 86 F0            [24] 4102 	mov	b,@r0
      005E8A 12 70 5A         [24] 4103 	lcall	__gptrget
      005E8D FA               [12] 4104 	mov	r2,a
      005E8E A3               [24] 4105 	inc	dptr
      005E8F 12 70 5A         [24] 4106 	lcall	__gptrget
      005E92 FC               [12] 4107 	mov	r4,a
                           0012F5  4108 	C$stream_buffer.c$1148$2_0$251 ==.
                                   4109 ;	src/FreeRTOS/stream_buffer.c:1148: xFirstLength = configMIN( pxStreamBuffer->xLength - xNextTail, xCount );
      005E93 A8 0C            [24] 4110 	mov	r0,_bp
      005E95 08               [12] 4111 	inc	r0
      005E96 E5 0C            [12] 4112 	mov	a,_bp
      005E98 24 04            [12] 4113 	add	a,#0x04
      005E9A F9               [12] 4114 	mov	r1,a
      005E9B 74 04            [12] 4115 	mov	a,#0x04
      005E9D 26               [12] 4116 	add	a,@r0
      005E9E F7               [12] 4117 	mov	@r1,a
      005E9F E4               [12] 4118 	clr	a
      005EA0 08               [12] 4119 	inc	r0
      005EA1 36               [12] 4120 	addc	a,@r0
      005EA2 09               [12] 4121 	inc	r1
      005EA3 F7               [12] 4122 	mov	@r1,a
      005EA4 08               [12] 4123 	inc	r0
      005EA5 09               [12] 4124 	inc	r1
      005EA6 E6               [12] 4125 	mov	a,@r0
      005EA7 F7               [12] 4126 	mov	@r1,a
      005EA8 E5 0C            [12] 4127 	mov	a,_bp
      005EAA 24 04            [12] 4128 	add	a,#0x04
      005EAC F8               [12] 4129 	mov	r0,a
      005EAD 86 82            [24] 4130 	mov	dpl,@r0
      005EAF 08               [12] 4131 	inc	r0
      005EB0 86 83            [24] 4132 	mov	dph,@r0
      005EB2 08               [12] 4133 	inc	r0
      005EB3 86 F0            [24] 4134 	mov	b,@r0
      005EB5 12 70 5A         [24] 4135 	lcall	__gptrget
      005EB8 FE               [12] 4136 	mov	r6,a
      005EB9 A3               [24] 4137 	inc	dptr
      005EBA 12 70 5A         [24] 4138 	lcall	__gptrget
      005EBD FD               [12] 4139 	mov	r5,a
      005EBE EE               [12] 4140 	mov	a,r6
      005EBF C3               [12] 4141 	clr	c
      005EC0 9A               [12] 4142 	subb	a,r2
      005EC1 FB               [12] 4143 	mov	r3,a
      005EC2 ED               [12] 4144 	mov	a,r5
      005EC3 9C               [12] 4145 	subb	a,r4
      005EC4 FF               [12] 4146 	mov	r7,a
      005EC5 E5 0C            [12] 4147 	mov	a,_bp
      005EC7 24 0C            [12] 4148 	add	a,#0x0c
      005EC9 F8               [12] 4149 	mov	r0,a
      005ECA C3               [12] 4150 	clr	c
      005ECB EB               [12] 4151 	mov	a,r3
      005ECC 96               [12] 4152 	subb	a,@r0
      005ECD EF               [12] 4153 	mov	a,r7
      005ECE 08               [12] 4154 	inc	r0
      005ECF 96               [12] 4155 	subb	a,@r0
      005ED0 50 09            [24] 4156 	jnc	00111$
      005ED2 EE               [12] 4157 	mov	a,r6
      005ED3 C3               [12] 4158 	clr	c
      005ED4 9A               [12] 4159 	subb	a,r2
      005ED5 FE               [12] 4160 	mov	r6,a
      005ED6 ED               [12] 4161 	mov	a,r5
      005ED7 9C               [12] 4162 	subb	a,r4
      005ED8 FF               [12] 4163 	mov	r7,a
      005ED9 80 0A            [24] 4164 	sjmp	00112$
      005EDB                       4165 00111$:
      005EDB E5 0C            [12] 4166 	mov	a,_bp
      005EDD 24 0C            [12] 4167 	add	a,#0x0c
      005EDF F8               [12] 4168 	mov	r0,a
      005EE0 86 06            [24] 4169 	mov	ar6,@r0
      005EE2 08               [12] 4170 	inc	r0
      005EE3 86 07            [24] 4171 	mov	ar7,@r0
      005EE5                       4172 00112$:
      005EE5 E5 0C            [12] 4173 	mov	a,_bp
      005EE7 24 0E            [12] 4174 	add	a,#0x0e
      005EE9 F8               [12] 4175 	mov	r0,a
      005EEA A6 06            [24] 4176 	mov	@r0,ar6
      005EEC 08               [12] 4177 	inc	r0
      005EED A6 07            [24] 4178 	mov	@r0,ar7
                           001351  4179 	C$stream_buffer.c$1154$2_0$251 ==.
                                   4180 ;	src/FreeRTOS/stream_buffer.c:1154: ( void ) memcpy( ( void * ) pucData, ( const void * ) &( pxStreamBuffer->pucBuffer[ xNextTail ] ), xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005EEF A8 0C            [24] 4181 	mov	r0,_bp
      005EF1 08               [12] 4182 	inc	r0
      005EF2 E5 0C            [12] 4183 	mov	a,_bp
      005EF4 24 09            [12] 4184 	add	a,#0x09
      005EF6 F9               [12] 4185 	mov	r1,a
      005EF7 74 0E            [12] 4186 	mov	a,#0x0e
      005EF9 26               [12] 4187 	add	a,@r0
      005EFA F7               [12] 4188 	mov	@r1,a
      005EFB E4               [12] 4189 	clr	a
      005EFC 08               [12] 4190 	inc	r0
      005EFD 36               [12] 4191 	addc	a,@r0
      005EFE 09               [12] 4192 	inc	r1
      005EFF F7               [12] 4193 	mov	@r1,a
      005F00 08               [12] 4194 	inc	r0
      005F01 09               [12] 4195 	inc	r1
      005F02 E6               [12] 4196 	mov	a,@r0
      005F03 F7               [12] 4197 	mov	@r1,a
      005F04 E5 0C            [12] 4198 	mov	a,_bp
      005F06 24 09            [12] 4199 	add	a,#0x09
      005F08 F8               [12] 4200 	mov	r0,a
      005F09 86 82            [24] 4201 	mov	dpl,@r0
      005F0B 08               [12] 4202 	inc	r0
      005F0C 86 83            [24] 4203 	mov	dph,@r0
      005F0E 08               [12] 4204 	inc	r0
      005F0F 86 F0            [24] 4205 	mov	b,@r0
      005F11 12 70 5A         [24] 4206 	lcall	__gptrget
      005F14 FD               [12] 4207 	mov	r5,a
      005F15 A3               [24] 4208 	inc	dptr
      005F16 12 70 5A         [24] 4209 	lcall	__gptrget
      005F19 FE               [12] 4210 	mov	r6,a
      005F1A A3               [24] 4211 	inc	dptr
      005F1B 12 70 5A         [24] 4212 	lcall	__gptrget
      005F1E FF               [12] 4213 	mov	r7,a
      005F1F EA               [12] 4214 	mov	a,r2
      005F20 2D               [12] 4215 	add	a,r5
      005F21 FD               [12] 4216 	mov	r5,a
      005F22 EC               [12] 4217 	mov	a,r4
      005F23 3E               [12] 4218 	addc	a,r6
      005F24 FE               [12] 4219 	mov	r6,a
      005F25 C0 02            [24] 4220 	push	ar2
      005F27 C0 04            [24] 4221 	push	ar4
      005F29 E5 0C            [12] 4222 	mov	a,_bp
      005F2B 24 FB            [12] 4223 	add	a,#0xfb
      005F2D F8               [12] 4224 	mov	r0,a
      005F2E 86 02            [24] 4225 	mov	ar2,@r0
      005F30 08               [12] 4226 	inc	r0
      005F31 86 03            [24] 4227 	mov	ar3,@r0
      005F33 08               [12] 4228 	inc	r0
      005F34 86 04            [24] 4229 	mov	ar4,@r0
      005F36 C0 04            [24] 4230 	push	ar4
      005F38 C0 02            [24] 4231 	push	ar2
      005F3A E5 0C            [12] 4232 	mov	a,_bp
      005F3C 24 0E            [12] 4233 	add	a,#0x0e
      005F3E F8               [12] 4234 	mov	r0,a
      005F3F E6               [12] 4235 	mov	a,@r0
      005F40 C0 E0            [24] 4236 	push	acc
      005F42 08               [12] 4237 	inc	r0
      005F43 E6               [12] 4238 	mov	a,@r0
      005F44 C0 E0            [24] 4239 	push	acc
      005F46 C0 05            [24] 4240 	push	ar5
      005F48 C0 06            [24] 4241 	push	ar6
      005F4A C0 07            [24] 4242 	push	ar7
      005F4C 8A 82            [24] 4243 	mov	dpl,r2
      005F4E 8B 83            [24] 4244 	mov	dph,r3
      005F50 8C F0            [24] 4245 	mov	b,r4
      005F52 12 67 03         [24] 4246 	lcall	_memcpy
      005F55 E5 81            [12] 4247 	mov	a,sp
      005F57 24 FB            [12] 4248 	add	a,#0xfb
      005F59 F5 81            [12] 4249 	mov	sp,a
      005F5B D0 02            [24] 4250 	pop	ar2
      005F5D D0 04            [24] 4251 	pop	ar4
                           0013C1  4252 	C$stream_buffer.c$1158$2_0$251 ==.
                                   4253 ;	src/FreeRTOS/stream_buffer.c:1158: if( xCount > xFirstLength )
      005F5F E5 0C            [12] 4254 	mov	a,_bp
      005F61 24 0C            [12] 4255 	add	a,#0x0c
      005F63 F8               [12] 4256 	mov	r0,a
      005F64 E5 0C            [12] 4257 	mov	a,_bp
      005F66 24 0E            [12] 4258 	add	a,#0x0e
      005F68 F9               [12] 4259 	mov	r1,a
      005F69 C3               [12] 4260 	clr	c
      005F6A E7               [12] 4261 	mov	a,@r1
      005F6B 96               [12] 4262 	subb	a,@r0
      005F6C 09               [12] 4263 	inc	r1
      005F6D E7               [12] 4264 	mov	a,@r1
      005F6E 08               [12] 4265 	inc	r0
      005F6F 96               [12] 4266 	subb	a,@r0
      005F70 D0 04            [24] 4267 	pop	ar4
      005F72 D0 02            [24] 4268 	pop	ar2
      005F74 40 03            [24] 4269 	jc	00141$
      005F76 02 5F FE         [24] 4270 	ljmp	00102$
      005F79                       4271 00141$:
                           0013DB  4272 	C$stream_buffer.c$1162$1_0$250 ==.
                                   4273 ;	src/FreeRTOS/stream_buffer.c:1162: ( void ) memcpy( ( void * ) &( pucData[ xFirstLength ] ), ( void * ) ( pxStreamBuffer->pucBuffer ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005F79 C0 02            [24] 4274 	push	ar2
      005F7B C0 04            [24] 4275 	push	ar4
      005F7D E5 0C            [12] 4276 	mov	a,_bp
      005F7F 24 0C            [12] 4277 	add	a,#0x0c
      005F81 F8               [12] 4278 	mov	r0,a
      005F82 E5 0C            [12] 4279 	mov	a,_bp
      005F84 24 0E            [12] 4280 	add	a,#0x0e
      005F86 F9               [12] 4281 	mov	r1,a
      005F87 E6               [12] 4282 	mov	a,@r0
      005F88 C3               [12] 4283 	clr	c
      005F89 97               [12] 4284 	subb	a,@r1
      005F8A C0 E0            [24] 4285 	push	acc
      005F8C 08               [12] 4286 	inc	r0
      005F8D E6               [12] 4287 	mov	a,@r0
      005F8E 09               [12] 4288 	inc	r1
      005F8F 97               [12] 4289 	subb	a,@r1
      005F90 C0 E0            [24] 4290 	push	acc
      005F92 E5 0C            [12] 4291 	mov	a,_bp
      005F94 24 08            [12] 4292 	add	a,#0x08
      005F96 F8               [12] 4293 	mov	r0,a
      005F97 D0 E0            [24] 4294 	pop	acc
      005F99 F6               [12] 4295 	mov	@r0,a
      005F9A 18               [12] 4296 	dec	r0
      005F9B D0 E0            [24] 4297 	pop	acc
      005F9D F6               [12] 4298 	mov	@r0,a
      005F9E E5 0C            [12] 4299 	mov	a,_bp
      005FA0 24 09            [12] 4300 	add	a,#0x09
      005FA2 F8               [12] 4301 	mov	r0,a
      005FA3 86 82            [24] 4302 	mov	dpl,@r0
      005FA5 08               [12] 4303 	inc	r0
      005FA6 86 83            [24] 4304 	mov	dph,@r0
      005FA8 08               [12] 4305 	inc	r0
      005FA9 86 F0            [24] 4306 	mov	b,@r0
      005FAB 12 70 5A         [24] 4307 	lcall	__gptrget
      005FAE FB               [12] 4308 	mov	r3,a
      005FAF A3               [24] 4309 	inc	dptr
      005FB0 12 70 5A         [24] 4310 	lcall	__gptrget
      005FB3 FC               [12] 4311 	mov	r4,a
      005FB4 A3               [24] 4312 	inc	dptr
      005FB5 12 70 5A         [24] 4313 	lcall	__gptrget
      005FB8 FD               [12] 4314 	mov	r5,a
      005FB9 E5 0C            [12] 4315 	mov	a,_bp
      005FBB 24 FB            [12] 4316 	add	a,#0xfb
      005FBD F8               [12] 4317 	mov	r0,a
      005FBE E5 0C            [12] 4318 	mov	a,_bp
      005FC0 24 0E            [12] 4319 	add	a,#0x0e
      005FC2 F9               [12] 4320 	mov	r1,a
      005FC3 E7               [12] 4321 	mov	a,@r1
      005FC4 26               [12] 4322 	add	a,@r0
      005FC5 FA               [12] 4323 	mov	r2,a
      005FC6 09               [12] 4324 	inc	r1
      005FC7 E7               [12] 4325 	mov	a,@r1
      005FC8 08               [12] 4326 	inc	r0
      005FC9 36               [12] 4327 	addc	a,@r0
      005FCA 08               [12] 4328 	inc	r0
      005FCB 86 07            [24] 4329 	mov	ar7,@r0
      005FCD 7F 00            [12] 4330 	mov	r7,#0x00
      005FCF 7E 40            [12] 4331 	mov	r6,#0x40
      005FD1 C0 04            [24] 4332 	push	ar4
      005FD3 C0 02            [24] 4333 	push	ar2
      005FD5 E5 0C            [12] 4334 	mov	a,_bp
      005FD7 24 07            [12] 4335 	add	a,#0x07
      005FD9 F8               [12] 4336 	mov	r0,a
      005FDA E6               [12] 4337 	mov	a,@r0
      005FDB C0 E0            [24] 4338 	push	acc
      005FDD 08               [12] 4339 	inc	r0
      005FDE E6               [12] 4340 	mov	a,@r0
      005FDF C0 E0            [24] 4341 	push	acc
      005FE1 C0 03            [24] 4342 	push	ar3
      005FE3 C0 04            [24] 4343 	push	ar4
      005FE5 C0 05            [24] 4344 	push	ar5
      005FE7 8A 82            [24] 4345 	mov	dpl,r2
      005FE9 8F 83            [24] 4346 	mov	dph,r7
      005FEB 8E F0            [24] 4347 	mov	b,r6
      005FED 12 67 03         [24] 4348 	lcall	_memcpy
      005FF0 E5 81            [12] 4349 	mov	a,sp
      005FF2 24 FB            [12] 4350 	add	a,#0xfb
      005FF4 F5 81            [12] 4351 	mov	sp,a
      005FF6 D0 02            [24] 4352 	pop	ar2
      005FF8 D0 04            [24] 4353 	pop	ar4
                           00145C  4354 	C$stream_buffer.c$1185$1_0$250 ==.
                                   4355 ;	src/FreeRTOS/stream_buffer.c:1185: return xCount;
      005FFA D0 04            [24] 4356 	pop	ar4
      005FFC D0 02            [24] 4357 	pop	ar2
                           001460  4358 	C$stream_buffer.c$1162$2_0$251 ==.
                                   4359 ;	src/FreeRTOS/stream_buffer.c:1162: ( void ) memcpy( ( void * ) &( pucData[ xFirstLength ] ), ( void * ) ( pxStreamBuffer->pucBuffer ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
      005FFE                       4360 00102$:
                           001460  4361 	C$stream_buffer.c$1171$2_0$251 ==.
                                   4362 ;	src/FreeRTOS/stream_buffer.c:1171: xNextTail += xCount;
      005FFE E5 0C            [12] 4363 	mov	a,_bp
      006000 24 0C            [12] 4364 	add	a,#0x0c
      006002 F8               [12] 4365 	mov	r0,a
      006003 E6               [12] 4366 	mov	a,@r0
      006004 2A               [12] 4367 	add	a,r2
      006005 FA               [12] 4368 	mov	r2,a
      006006 08               [12] 4369 	inc	r0
      006007 E6               [12] 4370 	mov	a,@r0
      006008 3C               [12] 4371 	addc	a,r4
      006009 FC               [12] 4372 	mov	r4,a
      00600A 8A 07            [24] 4373 	mov	ar7,r2
      00600C 8C 06            [24] 4374 	mov	ar6,r4
                           001470  4375 	C$stream_buffer.c$1173$2_0$251 ==.
                                   4376 ;	src/FreeRTOS/stream_buffer.c:1173: if( xNextTail >= pxStreamBuffer->xLength )
      00600E E5 0C            [12] 4377 	mov	a,_bp
      006010 24 04            [12] 4378 	add	a,#0x04
      006012 F8               [12] 4379 	mov	r0,a
      006013 86 82            [24] 4380 	mov	dpl,@r0
      006015 08               [12] 4381 	inc	r0
      006016 86 83            [24] 4382 	mov	dph,@r0
      006018 08               [12] 4383 	inc	r0
      006019 86 F0            [24] 4384 	mov	b,@r0
      00601B 12 70 5A         [24] 4385 	lcall	__gptrget
      00601E FC               [12] 4386 	mov	r4,a
      00601F A3               [24] 4387 	inc	dptr
      006020 12 70 5A         [24] 4388 	lcall	__gptrget
      006023 FD               [12] 4389 	mov	r5,a
      006024 C3               [12] 4390 	clr	c
      006025 EF               [12] 4391 	mov	a,r7
      006026 9C               [12] 4392 	subb	a,r4
      006027 EE               [12] 4393 	mov	a,r6
      006028 9D               [12] 4394 	subb	a,r5
      006029 40 07            [24] 4395 	jc	00104$
                           00148D  4396 	C$stream_buffer.c$1175$3_0$254 ==.
                                   4397 ;	src/FreeRTOS/stream_buffer.c:1175: xNextTail -= pxStreamBuffer->xLength;
      00602B EF               [12] 4398 	mov	a,r7
      00602C C3               [12] 4399 	clr	c
      00602D 9C               [12] 4400 	subb	a,r4
      00602E FF               [12] 4401 	mov	r7,a
      00602F EE               [12] 4402 	mov	a,r6
      006030 9D               [12] 4403 	subb	a,r5
      006031 FE               [12] 4404 	mov	r6,a
      006032                       4405 00104$:
                           001494  4406 	C$stream_buffer.c$1178$2_0$251 ==.
                                   4407 ;	src/FreeRTOS/stream_buffer.c:1178: pxStreamBuffer->xTail = xNextTail;
      006032 A8 0C            [24] 4408 	mov	r0,_bp
      006034 08               [12] 4409 	inc	r0
      006035 86 82            [24] 4410 	mov	dpl,@r0
      006037 08               [12] 4411 	inc	r0
      006038 86 83            [24] 4412 	mov	dph,@r0
      00603A 08               [12] 4413 	inc	r0
      00603B 86 F0            [24] 4414 	mov	b,@r0
      00603D EF               [12] 4415 	mov	a,r7
      00603E 12 66 A0         [24] 4416 	lcall	__gptrput
      006041 A3               [24] 4417 	inc	dptr
      006042 EE               [12] 4418 	mov	a,r6
      006043 12 66 A0         [24] 4419 	lcall	__gptrput
      006046                       4420 00106$:
                           0014A8  4421 	C$stream_buffer.c$1185$1_0$250 ==.
                                   4422 ;	src/FreeRTOS/stream_buffer.c:1185: return xCount;
      006046 E5 0C            [12] 4423 	mov	a,_bp
      006048 24 0C            [12] 4424 	add	a,#0x0c
      00604A F8               [12] 4425 	mov	r0,a
      00604B 86 82            [24] 4426 	mov	dpl,@r0
      00604D 08               [12] 4427 	inc	r0
      00604E 86 83            [24] 4428 	mov	dph,@r0
                           0014B2  4429 	C$stream_buffer.c$1186$1_0$250 ==.
                                   4430 ;	src/FreeRTOS/stream_buffer.c:1186: }
      006050 85 0C 81         [24] 4431 	mov	sp,_bp
      006053 D0 0C            [24] 4432 	pop	_bp
                           0014B7  4433 	C$stream_buffer.c$1186$1_0$250 ==.
                           0014B7  4434 	XFstream_buffer$prvReadBytesFromBuffer$0$0 ==.
      006055 22               [24] 4435 	ret
                                   4436 ;------------------------------------------------------------
                                   4437 ;Allocation info for local variables in function 'prvBytesInBuffer'
                                   4438 ;------------------------------------------------------------
                                   4439 ;pxStreamBuffer            Allocated to stack - _bp +1
                                   4440 ;xCount                    Allocated to registers r6 r7 
                                   4441 ;------------------------------------------------------------
                           0014B8  4442 	Fstream_buffer$prvBytesInBuffer$0$0 ==.
                           0014B8  4443 	C$stream_buffer.c$1189$1_0$257 ==.
                                   4444 ;	src/FreeRTOS/stream_buffer.c:1189: static size_t prvBytesInBuffer( const StreamBuffer_t * const pxStreamBuffer )
                                   4445 ;	-----------------------------------------
                                   4446 ;	 function prvBytesInBuffer
                                   4447 ;	-----------------------------------------
      006056                       4448 _prvBytesInBuffer:
      006056 C0 0C            [24] 4449 	push	_bp
      006058 85 81 0C         [24] 4450 	mov	_bp,sp
      00605B C0 82            [24] 4451 	push	dpl
      00605D C0 83            [24] 4452 	push	dph
      00605F C0 F0            [24] 4453 	push	b
                           0014C3  4454 	C$stream_buffer.c$1194$1_0$257 ==.
                                   4455 ;	src/FreeRTOS/stream_buffer.c:1194: xCount = pxStreamBuffer->xLength + pxStreamBuffer->xHead;
      006061 A8 0C            [24] 4456 	mov	r0,_bp
      006063 08               [12] 4457 	inc	r0
      006064 74 04            [12] 4458 	mov	a,#0x04
      006066 26               [12] 4459 	add	a,@r0
      006067 FB               [12] 4460 	mov	r3,a
      006068 E4               [12] 4461 	clr	a
      006069 08               [12] 4462 	inc	r0
      00606A 36               [12] 4463 	addc	a,@r0
      00606B FA               [12] 4464 	mov	r2,a
      00606C 08               [12] 4465 	inc	r0
      00606D 86 04            [24] 4466 	mov	ar4,@r0
      00606F 8B 82            [24] 4467 	mov	dpl,r3
      006071 8A 83            [24] 4468 	mov	dph,r2
      006073 8C F0            [24] 4469 	mov	b,r4
      006075 12 70 5A         [24] 4470 	lcall	__gptrget
      006078 FB               [12] 4471 	mov	r3,a
      006079 A3               [24] 4472 	inc	dptr
      00607A 12 70 5A         [24] 4473 	lcall	__gptrget
      00607D FC               [12] 4474 	mov	r4,a
      00607E A8 0C            [24] 4475 	mov	r0,_bp
      006080 08               [12] 4476 	inc	r0
      006081 74 02            [12] 4477 	mov	a,#0x02
      006083 26               [12] 4478 	add	a,@r0
      006084 FA               [12] 4479 	mov	r2,a
      006085 E4               [12] 4480 	clr	a
      006086 08               [12] 4481 	inc	r0
      006087 36               [12] 4482 	addc	a,@r0
      006088 FE               [12] 4483 	mov	r6,a
      006089 08               [12] 4484 	inc	r0
      00608A 86 07            [24] 4485 	mov	ar7,@r0
      00608C 8A 82            [24] 4486 	mov	dpl,r2
      00608E 8E 83            [24] 4487 	mov	dph,r6
      006090 8F F0            [24] 4488 	mov	b,r7
      006092 12 70 5A         [24] 4489 	lcall	__gptrget
      006095 FA               [12] 4490 	mov	r2,a
      006096 A3               [24] 4491 	inc	dptr
      006097 12 70 5A         [24] 4492 	lcall	__gptrget
      00609A FE               [12] 4493 	mov	r6,a
      00609B EA               [12] 4494 	mov	a,r2
      00609C 2B               [12] 4495 	add	a,r3
      00609D FA               [12] 4496 	mov	r2,a
      00609E EE               [12] 4497 	mov	a,r6
      00609F 3C               [12] 4498 	addc	a,r4
      0060A0 FE               [12] 4499 	mov	r6,a
                           001503  4500 	C$stream_buffer.c$1195$1_0$257 ==.
                                   4501 ;	src/FreeRTOS/stream_buffer.c:1195: xCount -= pxStreamBuffer->xTail;
      0060A1 A8 0C            [24] 4502 	mov	r0,_bp
      0060A3 08               [12] 4503 	inc	r0
      0060A4 86 82            [24] 4504 	mov	dpl,@r0
      0060A6 08               [12] 4505 	inc	r0
      0060A7 86 83            [24] 4506 	mov	dph,@r0
      0060A9 08               [12] 4507 	inc	r0
      0060AA 86 F0            [24] 4508 	mov	b,@r0
      0060AC 12 70 5A         [24] 4509 	lcall	__gptrget
      0060AF FD               [12] 4510 	mov	r5,a
      0060B0 A3               [24] 4511 	inc	dptr
      0060B1 12 70 5A         [24] 4512 	lcall	__gptrget
      0060B4 FF               [12] 4513 	mov	r7,a
      0060B5 EA               [12] 4514 	mov	a,r2
      0060B6 C3               [12] 4515 	clr	c
      0060B7 9D               [12] 4516 	subb	a,r5
      0060B8 FD               [12] 4517 	mov	r5,a
      0060B9 EE               [12] 4518 	mov	a,r6
      0060BA 9F               [12] 4519 	subb	a,r7
      0060BB FF               [12] 4520 	mov	r7,a
      0060BC 8D 06            [24] 4521 	mov	ar6,r5
                           001520  4522 	C$stream_buffer.c$1196$1_0$257 ==.
                                   4523 ;	src/FreeRTOS/stream_buffer.c:1196: if ( xCount >= pxStreamBuffer->xLength )
      0060BE C3               [12] 4524 	clr	c
      0060BF EE               [12] 4525 	mov	a,r6
      0060C0 9B               [12] 4526 	subb	a,r3
      0060C1 EF               [12] 4527 	mov	a,r7
      0060C2 9C               [12] 4528 	subb	a,r4
      0060C3 40 07            [24] 4529 	jc	00102$
                           001527  4530 	C$stream_buffer.c$1198$2_0$258 ==.
                                   4531 ;	src/FreeRTOS/stream_buffer.c:1198: xCount -= pxStreamBuffer->xLength;
      0060C5 EE               [12] 4532 	mov	a,r6
      0060C6 C3               [12] 4533 	clr	c
      0060C7 9B               [12] 4534 	subb	a,r3
      0060C8 FE               [12] 4535 	mov	r6,a
      0060C9 EF               [12] 4536 	mov	a,r7
      0060CA 9C               [12] 4537 	subb	a,r4
      0060CB FF               [12] 4538 	mov	r7,a
      0060CC                       4539 00102$:
                           00152E  4540 	C$stream_buffer.c$1205$1_0$257 ==.
                                   4541 ;	src/FreeRTOS/stream_buffer.c:1205: return xCount;
      0060CC 8E 82            [24] 4542 	mov	dpl,r6
      0060CE 8F 83            [24] 4543 	mov	dph,r7
                           001532  4544 	C$stream_buffer.c$1206$1_0$257 ==.
                                   4545 ;	src/FreeRTOS/stream_buffer.c:1206: }
      0060D0 85 0C 81         [24] 4546 	mov	sp,_bp
      0060D3 D0 0C            [24] 4547 	pop	_bp
                           001537  4548 	C$stream_buffer.c$1206$1_0$257 ==.
                           001537  4549 	XFstream_buffer$prvBytesInBuffer$0$0 ==.
      0060D5 22               [24] 4550 	ret
                                   4551 ;------------------------------------------------------------
                                   4552 ;Allocation info for local variables in function 'prvInitialiseNewStreamBuffer'
                                   4553 ;------------------------------------------------------------
                                   4554 ;pucBuffer                 Allocated to stack - _bp -5
                                   4555 ;xBufferSizeBytes          Allocated to stack - _bp -7
                                   4556 ;xTriggerLevelBytes        Allocated to stack - _bp -9
                                   4557 ;ucFlags                   Allocated to stack - _bp -10
                                   4558 ;pxStreamBuffer            Allocated to registers r5 r6 r7 
                                   4559 ;------------------------------------------------------------
                           001538  4560 	Fstream_buffer$prvInitialiseNewStreamBuffer$0$0 ==.
                           001538  4561 	C$stream_buffer.c$1209$1_0$261 ==.
                                   4562 ;	src/FreeRTOS/stream_buffer.c:1209: static void prvInitialiseNewStreamBuffer( StreamBuffer_t * const pxStreamBuffer,
                                   4563 ;	-----------------------------------------
                                   4564 ;	 function prvInitialiseNewStreamBuffer
                                   4565 ;	-----------------------------------------
      0060D6                       4566 _prvInitialiseNewStreamBuffer:
      0060D6 C0 0C            [24] 4567 	push	_bp
      0060D8 85 81 0C         [24] 4568 	mov	_bp,sp
      0060DB AD 82            [24] 4569 	mov	r5,dpl
      0060DD AE 83            [24] 4570 	mov	r6,dph
      0060DF AF F0            [24] 4571 	mov	r7,b
                           001543  4572 	C$stream_buffer.c$1228$1_0$261 ==.
                                   4573 ;	src/FreeRTOS/stream_buffer.c:1228: ( void ) memset( ( void * ) pxStreamBuffer, 0x00, sizeof( StreamBuffer_t ) ); /*lint !e9087 memset() requires void *. */
      0060E1 8D 02            [24] 4574 	mov	ar2,r5
      0060E3 8E 03            [24] 4575 	mov	ar3,r6
      0060E5 8F 04            [24] 4576 	mov	ar4,r7
      0060E7 C0 07            [24] 4577 	push	ar7
      0060E9 C0 06            [24] 4578 	push	ar6
      0060EB C0 05            [24] 4579 	push	ar5
      0060ED 74 12            [12] 4580 	mov	a,#0x12
      0060EF C0 E0            [24] 4581 	push	acc
      0060F1 E4               [12] 4582 	clr	a
      0060F2 C0 E0            [24] 4583 	push	acc
      0060F4 C0 E0            [24] 4584 	push	acc
      0060F6 8A 82            [24] 4585 	mov	dpl,r2
      0060F8 8B 83            [24] 4586 	mov	dph,r3
      0060FA 8C F0            [24] 4587 	mov	b,r4
      0060FC 12 66 DB         [24] 4588 	lcall	_memset
      0060FF 15 81            [12] 4589 	dec	sp
      006101 15 81            [12] 4590 	dec	sp
      006103 15 81            [12] 4591 	dec	sp
      006105 D0 05            [24] 4592 	pop	ar5
      006107 D0 06            [24] 4593 	pop	ar6
      006109 D0 07            [24] 4594 	pop	ar7
                           00156D  4595 	C$stream_buffer.c$1229$1_0$261 ==.
                                   4596 ;	src/FreeRTOS/stream_buffer.c:1229: pxStreamBuffer->pucBuffer = pucBuffer;
      00610B 74 0E            [12] 4597 	mov	a,#0x0e
      00610D 2D               [12] 4598 	add	a,r5
      00610E FA               [12] 4599 	mov	r2,a
      00610F E4               [12] 4600 	clr	a
      006110 3E               [12] 4601 	addc	a,r6
      006111 FB               [12] 4602 	mov	r3,a
      006112 8F 04            [24] 4603 	mov	ar4,r7
      006114 8A 82            [24] 4604 	mov	dpl,r2
      006116 8B 83            [24] 4605 	mov	dph,r3
      006118 8C F0            [24] 4606 	mov	b,r4
      00611A E5 0C            [12] 4607 	mov	a,_bp
      00611C 24 FB            [12] 4608 	add	a,#0xfb
      00611E F8               [12] 4609 	mov	r0,a
      00611F E6               [12] 4610 	mov	a,@r0
      006120 12 66 A0         [24] 4611 	lcall	__gptrput
      006123 A3               [24] 4612 	inc	dptr
      006124 08               [12] 4613 	inc	r0
      006125 E6               [12] 4614 	mov	a,@r0
      006126 12 66 A0         [24] 4615 	lcall	__gptrput
      006129 A3               [24] 4616 	inc	dptr
      00612A 08               [12] 4617 	inc	r0
      00612B E6               [12] 4618 	mov	a,@r0
      00612C 12 66 A0         [24] 4619 	lcall	__gptrput
                           001591  4620 	C$stream_buffer.c$1230$1_0$261 ==.
                                   4621 ;	src/FreeRTOS/stream_buffer.c:1230: pxStreamBuffer->xLength = xBufferSizeBytes;
      00612F 74 04            [12] 4622 	mov	a,#0x04
      006131 2D               [12] 4623 	add	a,r5
      006132 FA               [12] 4624 	mov	r2,a
      006133 E4               [12] 4625 	clr	a
      006134 3E               [12] 4626 	addc	a,r6
      006135 FB               [12] 4627 	mov	r3,a
      006136 8F 04            [24] 4628 	mov	ar4,r7
      006138 8A 82            [24] 4629 	mov	dpl,r2
      00613A 8B 83            [24] 4630 	mov	dph,r3
      00613C 8C F0            [24] 4631 	mov	b,r4
      00613E E5 0C            [12] 4632 	mov	a,_bp
      006140 24 F9            [12] 4633 	add	a,#0xf9
      006142 F8               [12] 4634 	mov	r0,a
      006143 E6               [12] 4635 	mov	a,@r0
      006144 12 66 A0         [24] 4636 	lcall	__gptrput
      006147 A3               [24] 4637 	inc	dptr
      006148 08               [12] 4638 	inc	r0
      006149 E6               [12] 4639 	mov	a,@r0
      00614A 12 66 A0         [24] 4640 	lcall	__gptrput
                           0015AF  4641 	C$stream_buffer.c$1231$1_0$261 ==.
                                   4642 ;	src/FreeRTOS/stream_buffer.c:1231: pxStreamBuffer->xTriggerLevelBytes = xTriggerLevelBytes;
      00614D 74 06            [12] 4643 	mov	a,#0x06
      00614F 2D               [12] 4644 	add	a,r5
      006150 FA               [12] 4645 	mov	r2,a
      006151 E4               [12] 4646 	clr	a
      006152 3E               [12] 4647 	addc	a,r6
      006153 FB               [12] 4648 	mov	r3,a
      006154 8F 04            [24] 4649 	mov	ar4,r7
      006156 8A 82            [24] 4650 	mov	dpl,r2
      006158 8B 83            [24] 4651 	mov	dph,r3
      00615A 8C F0            [24] 4652 	mov	b,r4
      00615C E5 0C            [12] 4653 	mov	a,_bp
      00615E 24 F7            [12] 4654 	add	a,#0xf7
      006160 F8               [12] 4655 	mov	r0,a
      006161 E6               [12] 4656 	mov	a,@r0
      006162 12 66 A0         [24] 4657 	lcall	__gptrput
      006165 A3               [24] 4658 	inc	dptr
      006166 08               [12] 4659 	inc	r0
      006167 E6               [12] 4660 	mov	a,@r0
      006168 12 66 A0         [24] 4661 	lcall	__gptrput
                           0015CD  4662 	C$stream_buffer.c$1232$1_0$261 ==.
                                   4663 ;	src/FreeRTOS/stream_buffer.c:1232: pxStreamBuffer->ucFlags = ucFlags;
      00616B 74 11            [12] 4664 	mov	a,#0x11
      00616D 2D               [12] 4665 	add	a,r5
      00616E FD               [12] 4666 	mov	r5,a
      00616F E4               [12] 4667 	clr	a
      006170 3E               [12] 4668 	addc	a,r6
      006171 FE               [12] 4669 	mov	r6,a
      006172 8D 82            [24] 4670 	mov	dpl,r5
      006174 8E 83            [24] 4671 	mov	dph,r6
      006176 8F F0            [24] 4672 	mov	b,r7
      006178 E5 0C            [12] 4673 	mov	a,_bp
      00617A 24 F6            [12] 4674 	add	a,#0xf6
      00617C F8               [12] 4675 	mov	r0,a
      00617D E6               [12] 4676 	mov	a,@r0
      00617E 12 66 A0         [24] 4677 	lcall	__gptrput
                           0015E3  4678 	C$stream_buffer.c$1233$1_0$261 ==.
                                   4679 ;	src/FreeRTOS/stream_buffer.c:1233: }
      006181 D0 0C            [24] 4680 	pop	_bp
                           0015E5  4681 	C$stream_buffer.c$1233$1_0$261 ==.
                           0015E5  4682 	XFstream_buffer$prvInitialiseNewStreamBuffer$0$0 ==.
      006183 22               [24] 4683 	ret
                                   4684 	.area CSEG    (CODE)
                                   4685 	.area CONST   (CODE)
                                   4686 	.area CABS    (ABS,CODE)
