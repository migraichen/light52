                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.7.2 #10505 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module soc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P3_7
                                     12 	.globl _P3_6
                                     13 	.globl _P3_5
                                     14 	.globl _P3_4
                                     15 	.globl _P3_3
                                     16 	.globl _P3_2
                                     17 	.globl _P3_1
                                     18 	.globl _P3_0
                                     19 	.globl _P2_7
                                     20 	.globl _P2_6
                                     21 	.globl _P2_5
                                     22 	.globl _P2_4
                                     23 	.globl _P2_3
                                     24 	.globl _P2_2
                                     25 	.globl _P2_1
                                     26 	.globl _P2_0
                                     27 	.globl _P1_7
                                     28 	.globl _P1_6
                                     29 	.globl _P1_5
                                     30 	.globl _P1_4
                                     31 	.globl _P1_3
                                     32 	.globl _P1_2
                                     33 	.globl _P1_1
                                     34 	.globl _P1_0
                                     35 	.globl _P0_7
                                     36 	.globl _P0_6
                                     37 	.globl _P0_5
                                     38 	.globl _P0_4
                                     39 	.globl _P0_3
                                     40 	.globl _P0_2
                                     41 	.globl _P0_1
                                     42 	.globl _P0_0
                                     43 	.globl _EIRQ7
                                     44 	.globl _EIRQ6
                                     45 	.globl _EIRQ5
                                     46 	.globl _EIRQ4
                                     47 	.globl _EIRQ3
                                     48 	.globl _EIRQ2
                                     49 	.globl _EIRQ1
                                     50 	.globl _EIRQ0
                                     51 	.globl _T0CEN
                                     52 	.globl _T0ARL
                                     53 	.globl _T0IRQ
                                     54 	.globl _RXRDY
                                     55 	.globl _TXRDY
                                     56 	.globl _RXIRQ
                                     57 	.globl _TXIRQ
                                     58 	.globl _EEX
                                     59 	.globl _ET0
                                     60 	.globl _ES
                                     61 	.globl _EA
                                     62 	.globl _P3
                                     63 	.globl _P2
                                     64 	.globl _P1
                                     65 	.globl _P0
                                     66 	.globl _EXTINT
                                     67 	.globl _T0CH
                                     68 	.globl _T0CL
                                     69 	.globl _T0H
                                     70 	.globl _T0L
                                     71 	.globl _TCON
                                     72 	.globl _SBPH
                                     73 	.globl _SBPL
                                     74 	.globl _SBUF
                                     75 	.globl _SCON
                                     76 	.globl _IE
                                     77 	.globl _DPL
                                     78 	.globl _DPH
                                     79 	.globl _SP
                                     80 	.globl _PSW
                                     81 	.globl _B
                                     82 	.globl _ACC
                                     83 	.globl _seconds
                                     84 	.globl _soc_init
                                     85 	.globl _soc_get_msecs
                                     86 	.globl _cpu_enable_interrupts
                                     87 	.globl _timer0_init
                                     88 	.globl _timer0_enable
                                     89 	.globl _timer0_counter
                                     90 	.globl _timer0_enable_irq
                                     91 	.globl _timer0_isr
                                     92 	.globl _putchar
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
                           000000   256 G$seconds$0_0$0==.
      000008                        257 _seconds::
      000008                        258 	.ds 4
                           000004   259 Lsoc.timer0_isr$q$1_0$40==.
      00000C                        260 _timer0_isr_q_65536_40:
      00000C                        261 	.ds 1
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable items in internal ram 
                                    264 ;--------------------------------------------------------
                                    265 	.area	OSEG    (OVR,DATA)
                                    266 	.area	OSEG    (OVR,DATA)
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 	.area	OSEG    (OVR,DATA)
                           000000   269 Lsoc.timer0_counter$h$1_0$35==.
      000037                        270 _timer0_counter_h_65536_35:
      000037                        271 	.ds 1
                           000001   272 Lsoc.timer0_counter$l0$1_0$35==.
      000038                        273 _timer0_counter_l0_65536_35:
      000038                        274 	.ds 1
                           000002   275 Lsoc.timer0_counter$l1$1_0$35==.
      000039                        276 _timer0_counter_l1_65536_35:
      000039                        277 	.ds 1
                                    278 	.area	OSEG    (OVR,DATA)
                                    279 	.area	OSEG    (OVR,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; indirectly addressable internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area ISEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area IABS    (ABS,DATA)
                                    288 	.area IABS    (ABS,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; bit data
                                    291 ;--------------------------------------------------------
                                    292 	.area BSEG    (BIT)
                                    293 ;--------------------------------------------------------
                                    294 ; paged external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area PSEG    (PAG,XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XSEG    (XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XABS    (ABS,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external initialized ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XISEG   (XDATA)
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT0 (CODE)
                                    311 	.area GSINIT1 (CODE)
                                    312 	.area GSINIT2 (CODE)
                                    313 	.area GSINIT3 (CODE)
                                    314 	.area GSINIT4 (CODE)
                                    315 	.area GSINIT5 (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area CSEG    (CODE)
                                    319 ;--------------------------------------------------------
                                    320 ; global & static initialisations
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'timer0_isr'
                                    328 ;------------------------------------------------------------
                                    329 ;q                         Allocated with name '_timer0_isr_q_65536_40'
                                    330 ;------------------------------------------------------------
                           000000   331 	G$timer0_isr$0$0 ==.
                           000000   332 	C$soc.c$104$1_0$40 ==.
                                    333 ;	../common/soc.c:104: static uint8_t q = 0;
      00006A 75 0C 00         [24]  334 	mov	_timer0_isr_q_65536_40,#0x00
                                    335 ;--------------------------------------------------------
                                    336 ; Home
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area HOME    (CODE)
                                    340 ;--------------------------------------------------------
                                    341 ; code
                                    342 ;--------------------------------------------------------
                                    343 	.area CSEG    (CODE)
                                    344 ;------------------------------------------------------------
                                    345 ;Allocation info for local variables in function 'soc_init'
                                    346 ;------------------------------------------------------------
                           000000   347 	G$soc_init$0$0 ==.
                           000000   348 	C$soc.c$30$0_0$23 ==.
                                    349 ;	../common/soc.c:30: void soc_init(void){
                                    350 ;	-----------------------------------------
                                    351 ;	 function soc_init
                                    352 ;	-----------------------------------------
      0000DF                        353 _soc_init:
                           000007   354 	ar7 = 0x07
                           000006   355 	ar6 = 0x06
                           000005   356 	ar5 = 0x05
                           000004   357 	ar4 = 0x04
                           000003   358 	ar3 = 0x03
                           000002   359 	ar2 = 0x02
                           000001   360 	ar1 = 0x01
                           000000   361 	ar0 = 0x00
                           000000   362 	C$soc.c$31$1_0$23 ==.
                                    363 ;	../common/soc.c:31: seconds = 0;
      0000DF E4               [12]  364 	clr	a
      0000E0 F5 08            [12]  365 	mov	_seconds,a
      0000E2 F5 09            [12]  366 	mov	(_seconds + 1),a
      0000E4 F5 0A            [12]  367 	mov	(_seconds + 2),a
      0000E6 F5 0B            [12]  368 	mov	(_seconds + 3),a
                           000009   369 	C$soc.c$33$1_0$23 ==.
                                    370 ;	../common/soc.c:33: timer0_init(CLOCK_RATE/TIMER0_PRESCALER);
      0000E8 90 C3 50         [24]  371 	mov	dptr,#0xc350
      0000EB 12 01 6E         [24]  372 	lcall	_timer0_init
                           00000F   373 	C$soc.c$35$1_0$23 ==.
                                    374 ;	../common/soc.c:35: timer0_enable_irq(1);
      0000EE 75 82 01         [24]  375 	mov	dpl,#0x01
      0000F1 12 01 B7         [24]  376 	lcall	_timer0_enable_irq
                           000015   377 	C$soc.c$36$1_0$23 ==.
                                    378 ;	../common/soc.c:36: cpu_enable_interrupts(1);
      0000F4 75 82 01         [24]  379 	mov	dpl,#0x01
      0000F7 12 01 65         [24]  380 	lcall	_cpu_enable_interrupts
                           00001B   381 	C$soc.c$38$1_0$23 ==.
                                    382 ;	../common/soc.c:38: timer0_enable(1);
      0000FA 75 82 01         [24]  383 	mov	dpl,#0x01
      0000FD 12 01 87         [24]  384 	lcall	_timer0_enable
                           000021   385 	C$soc.c$39$1_0$23 ==.
                                    386 ;	../common/soc.c:39: }
                           000021   387 	C$soc.c$39$1_0$23 ==.
                           000021   388 	XG$soc_init$0$0 ==.
      000100 22               [24]  389 	ret
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'soc_get_msecs'
                                    392 ;------------------------------------------------------------
                                    393 ;msecs                     Allocated to registers r4 r5 r6 r7 
                                    394 ;------------------------------------------------------------
                           000022   395 	G$soc_get_msecs$0$0 ==.
                           000022   396 	C$soc.c$41$1_0$25 ==.
                                    397 ;	../common/soc.c:41: uint32_t soc_get_msecs(void){
                                    398 ;	-----------------------------------------
                                    399 ;	 function soc_get_msecs
                                    400 ;	-----------------------------------------
      000101                        401 _soc_get_msecs:
                           000022   402 	C$soc.c$44$1_0$25 ==.
                                    403 ;	../common/soc.c:44: msecs = timer0_counter();           /* Get the counter... */
      000101 12 01 90         [24]  404 	lcall	_timer0_counter
      000104 AE 82            [24]  405 	mov	r6,dpl
      000106 AF 83            [24]  406 	mov	r7,dph
      000108 7D 00            [12]  407 	mov	r5,#0x00
      00010A 7C 00            [12]  408 	mov	r4,#0x00
                           00002D   409 	C$soc.c$45$1_0$25 ==.
                                    410 ;	../common/soc.c:45: msecs = msecs/TIMER0_COUNTS_PER_MS; /* ...and convert it to milliseconds */
      00010C 75 37 32         [24]  411 	mov	__divulong_PARM_2,#0x32
      00010F E4               [12]  412 	clr	a
      000110 F5 38            [12]  413 	mov	(__divulong_PARM_2 + 1),a
      000112 F5 39            [12]  414 	mov	(__divulong_PARM_2 + 2),a
      000114 F5 3A            [12]  415 	mov	(__divulong_PARM_2 + 3),a
      000116 8E 82            [24]  416 	mov	dpl,r6
      000118 8F 83            [24]  417 	mov	dph,r7
      00011A 8D F0            [24]  418 	mov	b,r5
      00011C EC               [12]  419 	mov	a,r4
      00011D 12 01 FB         [24]  420 	lcall	__divulong
      000120 AC 82            [24]  421 	mov	r4,dpl
      000122 AD 83            [24]  422 	mov	r5,dph
      000124 AE F0            [24]  423 	mov	r6,b
      000126 FF               [12]  424 	mov	r7,a
                           000048   425 	C$soc.c$47$1_0$25 ==.
                                    426 ;	../common/soc.c:47: msecs = msecs + seconds*1000;
      000127 85 08 37         [24]  427 	mov	__mullong_PARM_2,_seconds
      00012A 85 09 38         [24]  428 	mov	(__mullong_PARM_2 + 1),(_seconds + 1)
      00012D 85 0A 39         [24]  429 	mov	(__mullong_PARM_2 + 2),(_seconds + 2)
      000130 85 0B 3A         [24]  430 	mov	(__mullong_PARM_2 + 3),(_seconds + 3)
      000133 90 03 E8         [24]  431 	mov	dptr,#0x03e8
      000136 E4               [12]  432 	clr	a
      000137 F5 F0            [12]  433 	mov	b,a
      000139 C0 07            [24]  434 	push	ar7
      00013B C0 06            [24]  435 	push	ar6
      00013D C0 05            [24]  436 	push	ar5
      00013F C0 04            [24]  437 	push	ar4
      000141 12 02 60         [24]  438 	lcall	__mullong
      000144 A8 82            [24]  439 	mov	r0,dpl
      000146 A9 83            [24]  440 	mov	r1,dph
      000148 AA F0            [24]  441 	mov	r2,b
      00014A FB               [12]  442 	mov	r3,a
      00014B D0 04            [24]  443 	pop	ar4
      00014D D0 05            [24]  444 	pop	ar5
      00014F D0 06            [24]  445 	pop	ar6
      000151 D0 07            [24]  446 	pop	ar7
      000153 E8               [12]  447 	mov	a,r0
      000154 2C               [12]  448 	add	a,r4
      000155 FC               [12]  449 	mov	r4,a
      000156 E9               [12]  450 	mov	a,r1
      000157 3D               [12]  451 	addc	a,r5
      000158 FD               [12]  452 	mov	r5,a
      000159 EA               [12]  453 	mov	a,r2
      00015A 3E               [12]  454 	addc	a,r6
      00015B FE               [12]  455 	mov	r6,a
      00015C EB               [12]  456 	mov	a,r3
      00015D 3F               [12]  457 	addc	a,r7
                           00007F   458 	C$soc.c$48$1_0$25 ==.
                                    459 ;	../common/soc.c:48: return msecs;
      00015E 8C 82            [24]  460 	mov	dpl,r4
      000160 8D 83            [24]  461 	mov	dph,r5
      000162 8E F0            [24]  462 	mov	b,r6
                           000085   463 	C$soc.c$49$1_0$25 ==.
                                    464 ;	../common/soc.c:49: }
                           000085   465 	C$soc.c$49$1_0$25 ==.
                           000085   466 	XG$soc_get_msecs$0$0 ==.
      000164 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'cpu_enable_interrupts'
                                    470 ;------------------------------------------------------------
                                    471 ;enable                    Allocated to registers r7 
                                    472 ;------------------------------------------------------------
                           000086   473 	G$cpu_enable_interrupts$0$0 ==.
                           000086   474 	C$soc.c$54$1_0$27 ==.
                                    475 ;	../common/soc.c:54: void cpu_enable_interrupts(uint8_t enable){
                                    476 ;	-----------------------------------------
                                    477 ;	 function cpu_enable_interrupts
                                    478 ;	-----------------------------------------
      000165                        479 _cpu_enable_interrupts:
                           000086   480 	C$soc.c$55$1_0$27 ==.
                                    481 ;	../common/soc.c:55: EA = enable & 0x01;
      000165 E5 82            [12]  482 	mov	a,dpl
      000167 54 01            [12]  483 	anl	a,#0x01
      000169 24 FF            [12]  484 	add	a,#0xff
      00016B 92 AF            [24]  485 	mov	_EA,c
                           00008E   486 	C$soc.c$56$1_0$27 ==.
                                    487 ;	../common/soc.c:56: }
                           00008E   488 	C$soc.c$56$1_0$27 ==.
                           00008E   489 	XG$cpu_enable_interrupts$0$0 ==.
      00016D 22               [24]  490 	ret
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'timer0_init'
                                    493 ;------------------------------------------------------------
                                    494 ;reload                    Allocated to registers r6 r7 
                                    495 ;------------------------------------------------------------
                           00008F   496 	G$timer0_init$0$0 ==.
                           00008F   497 	C$soc.c$60$1_0$29 ==.
                                    498 ;	../common/soc.c:60: void timer0_init(uint16_t reload){
                                    499 ;	-----------------------------------------
                                    500 ;	 function timer0_init
                                    501 ;	-----------------------------------------
      00016E                        502 _timer0_init:
      00016E AE 82            [24]  503 	mov	r6,dpl
      000170 AF 83            [24]  504 	mov	r7,dph
                           000093   505 	C$soc.c$61$1_0$29 ==.
                                    506 ;	../common/soc.c:61: if(reload!=0xffff){
      000172 BE FF 05         [24]  507 	cjne	r6,#0xff,00110$
      000175 BF FF 02         [24]  508 	cjne	r7,#0xff,00110$
      000178 80 08            [24]  509 	sjmp	00102$
      00017A                        510 00110$:
                           00009B   511 	C$soc.c$62$2_0$30 ==.
                                    512 ;	../common/soc.c:62: T0CH = (uint8_t)(reload >> 8);
      00017A 8F 8F            [24]  513 	mov	_T0CH,r7
                           00009D   514 	C$soc.c$63$1_0$29 ==.
                                    515 ;	../common/soc.c:63: T0CL = (uint8_t)(reload & 0xff);
      00017C 8E 8E            [24]  516 	mov	_T0CL,r6
                           00009F   517 	C$soc.c$64$2_0$30 ==.
                                    518 ;	../common/soc.c:64: T0ARL = 1;
                                    519 ;	assignBit
      00017E D2 8C            [12]  520 	setb	_T0ARL
      000180 80 02            [24]  521 	sjmp	00103$
      000182                        522 00102$:
                           0000A3   523 	C$soc.c$67$2_0$31 ==.
                                    524 ;	../common/soc.c:67: T0ARL = 0;
                                    525 ;	assignBit
      000182 C2 8C            [12]  526 	clr	_T0ARL
      000184                        527 00103$:
                           0000A5   528 	C$soc.c$69$1_0$29 ==.
                                    529 ;	../common/soc.c:69: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
                                    530 ;	assignBit
      000184 D2 88            [12]  531 	setb	_T0IRQ
                           0000A7   532 	C$soc.c$70$1_0$29 ==.
                                    533 ;	../common/soc.c:70: }
                           0000A7   534 	C$soc.c$70$1_0$29 ==.
                           0000A7   535 	XG$timer0_init$0$0 ==.
      000186 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'timer0_enable'
                                    539 ;------------------------------------------------------------
                                    540 ;enable                    Allocated to registers r7 
                                    541 ;------------------------------------------------------------
                           0000A8   542 	G$timer0_enable$0$0 ==.
                           0000A8   543 	C$soc.c$72$1_0$33 ==.
                                    544 ;	../common/soc.c:72: void timer0_enable(uint8_t enable){
                                    545 ;	-----------------------------------------
                                    546 ;	 function timer0_enable
                                    547 ;	-----------------------------------------
      000187                        548 _timer0_enable:
                           0000A8   549 	C$soc.c$73$1_0$33 ==.
                                    550 ;	../common/soc.c:73: T0CEN = enable & 0x01;
      000187 E5 82            [12]  551 	mov	a,dpl
      000189 54 01            [12]  552 	anl	a,#0x01
      00018B 24 FF            [12]  553 	add	a,#0xff
      00018D 92 8D            [24]  554 	mov	_T0CEN,c
                           0000B0   555 	C$soc.c$74$1_0$33 ==.
                                    556 ;	../common/soc.c:74: }
                           0000B0   557 	C$soc.c$74$1_0$33 ==.
                           0000B0   558 	XG$timer0_enable$0$0 ==.
      00018F 22               [24]  559 	ret
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'timer0_counter'
                                    562 ;------------------------------------------------------------
                                    563 ;h                         Allocated with name '_timer0_counter_h_65536_35'
                                    564 ;l0                        Allocated with name '_timer0_counter_l0_65536_35'
                                    565 ;l1                        Allocated with name '_timer0_counter_l1_65536_35'
                                    566 ;value                     Allocated to registers 
                                    567 ;retried                   Allocated to registers 
                                    568 ;------------------------------------------------------------
                           0000B1   569 	G$timer0_counter$0$0 ==.
                           0000B1   570 	C$soc.c$76$1_0$35 ==.
                                    571 ;	../common/soc.c:76: uint16_t timer0_counter(void){
                                    572 ;	-----------------------------------------
                                    573 ;	 function timer0_counter
                                    574 ;	-----------------------------------------
      000190                        575 _timer0_counter:
                           0000B1   576 	C$soc.c$82$1_0$35 ==.
                                    577 ;	../common/soc.c:82: h = T0H;
      000190 85 8D 37         [24]  578 	mov	_timer0_counter_h_65536_35,_T0H
                           0000B4   579 	C$soc.c$83$1_0$35 ==.
                                    580 ;	../common/soc.c:83: l0 = T0L;
      000193 85 8C 38         [24]  581 	mov	_timer0_counter_l0_65536_35,_T0L
                           0000B7   582 	C$soc.c$84$1_0$35 ==.
                                    583 ;	../common/soc.c:84: l1 = T0L;
      000196 85 8C 39         [24]  584 	mov	_timer0_counter_l1_65536_35,_T0L
                           0000BA   585 	C$soc.c$86$1_0$35 ==.
                                    586 ;	../common/soc.c:86: if(l0!=l1){
      000199 E5 39            [12]  587 	mov	a,_timer0_counter_l1_65536_35
      00019B B5 38 02         [24]  588 	cjne	a,_timer0_counter_l0_65536_35,00109$
      00019E 80 06            [24]  589 	sjmp	00102$
      0001A0                        590 00109$:
                           0000C1   591 	C$soc.c$89$2_0$36 ==.
                                    592 ;	../common/soc.c:89: h = T0H;
      0001A0 85 8D 37         [24]  593 	mov	_timer0_counter_h_65536_35,_T0H
                           0000C4   594 	C$soc.c$90$2_0$36 ==.
                                    595 ;	../common/soc.c:90: l0 = T0L;
      0001A3 85 8C 38         [24]  596 	mov	_timer0_counter_l0_65536_35,_T0L
      0001A6                        597 00102$:
                           0000C7   598 	C$soc.c$93$1_0$35 ==.
                                    599 ;	../common/soc.c:93: value = ((uint16_t)h)<<8 | (uint16_t)l0;
      0001A6 AF 37            [24]  600 	mov	r7,_timer0_counter_h_65536_35
      0001A8 7E 00            [12]  601 	mov	r6,#0x00
      0001AA AC 38            [24]  602 	mov	r4,_timer0_counter_l0_65536_35
      0001AC 7D 00            [12]  603 	mov	r5,#0x00
      0001AE EC               [12]  604 	mov	a,r4
      0001AF 4E               [12]  605 	orl	a,r6
      0001B0 F5 82            [12]  606 	mov	dpl,a
      0001B2 ED               [12]  607 	mov	a,r5
      0001B3 4F               [12]  608 	orl	a,r7
      0001B4 F5 83            [12]  609 	mov	dph,a
                           0000D7   610 	C$soc.c$94$1_0$35 ==.
                                    611 ;	../common/soc.c:94: return value;
                           0000D7   612 	C$soc.c$95$1_0$35 ==.
                                    613 ;	../common/soc.c:95: }
                           0000D7   614 	C$soc.c$95$1_0$35 ==.
                           0000D7   615 	XG$timer0_counter$0$0 ==.
      0001B6 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'timer0_enable_irq'
                                    619 ;------------------------------------------------------------
                                    620 ;enable                    Allocated to registers r7 
                                    621 ;------------------------------------------------------------
                           0000D8   622 	G$timer0_enable_irq$0$0 ==.
                           0000D8   623 	C$soc.c$97$1_0$38 ==.
                                    624 ;	../common/soc.c:97: void timer0_enable_irq(uint8_t enable){
                                    625 ;	-----------------------------------------
                                    626 ;	 function timer0_enable_irq
                                    627 ;	-----------------------------------------
      0001B7                        628 _timer0_enable_irq:
                           0000D8   629 	C$soc.c$98$1_0$38 ==.
                                    630 ;	../common/soc.c:98: ET0 = enable & 0x01;
      0001B7 E5 82            [12]  631 	mov	a,dpl
      0001B9 54 01            [12]  632 	anl	a,#0x01
      0001BB 24 FF            [12]  633 	add	a,#0xff
      0001BD 92 A9            [24]  634 	mov	_ET0,c
                           0000E0   635 	C$soc.c$99$1_0$38 ==.
                                    636 ;	../common/soc.c:99: }
                           0000E0   637 	C$soc.c$99$1_0$38 ==.
                           0000E0   638 	XG$timer0_enable_irq$0$0 ==.
      0001BF 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'timer0_isr'
                                    642 ;------------------------------------------------------------
                                    643 ;q                         Allocated with name '_timer0_isr_q_65536_40'
                                    644 ;------------------------------------------------------------
                           0000E1   645 	G$timer0_isr$0$0 ==.
                           0000E1   646 	C$soc.c$103$1_0$40 ==.
                                    647 ;	../common/soc.c:103: void timer0_isr(void) __interrupt(1) {
                                    648 ;	-----------------------------------------
                                    649 ;	 function timer0_isr
                                    650 ;	-----------------------------------------
      0001C0                        651 _timer0_isr:
      0001C0 C0 E0            [24]  652 	push	acc
      0001C2 C0 D0            [24]  653 	push	psw
                           0000E5   654 	C$soc.c$106$1_0$40 ==.
                                    655 ;	../common/soc.c:106: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
                                    656 ;	assignBit
      0001C4 D2 88            [12]  657 	setb	_T0IRQ
                           0000E7   658 	C$soc.c$107$1_0$40 ==.
                                    659 ;	../common/soc.c:107: P1 = q;
      0001C6 85 0C 90         [24]  660 	mov	_P1,_timer0_isr_q_65536_40
                           0000EA   661 	C$soc.c$108$1_0$40 ==.
                                    662 ;	../common/soc.c:108: q++;
      0001C9 05 0C            [12]  663 	inc	_timer0_isr_q_65536_40
                           0000EC   664 	C$soc.c$110$1_0$40 ==.
                                    665 ;	../common/soc.c:110: seconds++;
      0001CB 74 01            [12]  666 	mov	a,#0x01
      0001CD 25 08            [12]  667 	add	a,_seconds
      0001CF F5 08            [12]  668 	mov	_seconds,a
      0001D1 E4               [12]  669 	clr	a
      0001D2 35 09            [12]  670 	addc	a,(_seconds + 1)
      0001D4 F5 09            [12]  671 	mov	(_seconds + 1),a
      0001D6 E4               [12]  672 	clr	a
      0001D7 35 0A            [12]  673 	addc	a,(_seconds + 2)
      0001D9 F5 0A            [12]  674 	mov	(_seconds + 2),a
      0001DB E4               [12]  675 	clr	a
      0001DC 35 0B            [12]  676 	addc	a,(_seconds + 3)
      0001DE F5 0B            [12]  677 	mov	(_seconds + 3),a
                           000101   678 	C$soc.c$111$1_0$40 ==.
                                    679 ;	../common/soc.c:111: }
      0001E0 D0 D0            [24]  680 	pop	psw
      0001E2 D0 E0            [24]  681 	pop	acc
                           000105   682 	C$soc.c$111$1_0$40 ==.
                           000105   683 	XG$timer0_isr$0$0 ==.
      0001E4 32               [24]  684 	reti
                                    685 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    686 ;	eliminated unneeded push/pop dpl
                                    687 ;	eliminated unneeded push/pop dph
                                    688 ;	eliminated unneeded push/pop b
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'putchar'
                                    691 ;------------------------------------------------------------
                                    692 ;c                         Allocated to registers r6 r7 
                                    693 ;------------------------------------------------------------
                           000106   694 	G$putchar$0$0 ==.
                           000106   695 	C$soc.c$121$1_0$42 ==.
                                    696 ;	../common/soc.c:121: int putchar (int c) 
                                    697 ;	-----------------------------------------
                                    698 ;	 function putchar
                                    699 ;	-----------------------------------------
      0001E5                        700 _putchar:
      0001E5 AE 82            [24]  701 	mov	r6,dpl
      0001E7 AF 83            [24]  702 	mov	r7,dph
                           00010A   703 	C$soc.c$123$1_0$42 ==.
                                    704 ;	../common/soc.c:123: while (!TXRDY);
      0001E9                        705 00101$:
      0001E9 30 9C FD         [24]  706 	jnb	_TXRDY,00101$
                           00010D   707 	C$soc.c$124$1_0$42 ==.
                                    708 ;	../common/soc.c:124: SBUF = c;
      0001EC 8E 99            [24]  709 	mov	_SBUF,r6
                           00010F   710 	C$soc.c$125$1_0$42 ==.
                                    711 ;	../common/soc.c:125: if( c == '\n' )
      0001EE BE 0A 09         [24]  712 	cjne	r6,#0x0a,00109$
      0001F1 BF 00 06         [24]  713 	cjne	r7,#0x00,00109$
                           000115   714 	C$soc.c$127$2_0$43 ==.
                                    715 ;	../common/soc.c:127: while (!TXRDY);
      0001F4                        716 00104$:
      0001F4 30 9C FD         [24]  717 	jnb	_TXRDY,00104$
                           000118   718 	C$soc.c$128$2_0$43 ==.
                                    719 ;	../common/soc.c:128: SBUF = '\r';
      0001F7 75 99 0D         [24]  720 	mov	_SBUF,#0x0d
      0001FA                        721 00109$:
                           00011B   722 	C$soc.c$130$1_0$42 ==.
                                    723 ;	../common/soc.c:130: }
                           00011B   724 	C$soc.c$130$1_0$42 ==.
                           00011B   725 	XG$putchar$0$0 ==.
      0001FA 22               [24]  726 	ret
                                    727 	.area CSEG    (CODE)
                                    728 	.area CONST   (CODE)
                                    729 	.area XINIT   (CODE)
                                    730 	.area CABS    (ABS,CODE)
