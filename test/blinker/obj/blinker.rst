                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.7.2 #10505 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module blinker
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _soc_get_msecs
                                     13 	.globl _soc_init
                                     14 	.globl _printf
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
                                     87 ;--------------------------------------------------------
                                     88 ; special function registers
                                     89 ;--------------------------------------------------------
                                     90 	.area RSEG    (ABS,DATA)
      000000                         91 	.org 0x0000
                           0000E0    92 G$ACC$0_0$0 == 0x00e0
                           0000E0    93 _ACC	=	0x00e0
                           0000F0    94 G$B$0_0$0 == 0x00f0
                           0000F0    95 _B	=	0x00f0
                           0000D0    96 G$PSW$0_0$0 == 0x00d0
                           0000D0    97 _PSW	=	0x00d0
                           000081    98 G$SP$0_0$0 == 0x0081
                           000081    99 _SP	=	0x0081
                           000083   100 G$DPH$0_0$0 == 0x0083
                           000083   101 _DPH	=	0x0083
                           000082   102 G$DPL$0_0$0 == 0x0082
                           000082   103 _DPL	=	0x0082
                           0000A8   104 G$IE$0_0$0 == 0x00a8
                           0000A8   105 _IE	=	0x00a8
                           000098   106 G$SCON$0_0$0 == 0x0098
                           000098   107 _SCON	=	0x0098
                           000099   108 G$SBUF$0_0$0 == 0x0099
                           000099   109 _SBUF	=	0x0099
                           00009A   110 G$SBPL$0_0$0 == 0x009a
                           00009A   111 _SBPL	=	0x009a
                           00009B   112 G$SBPH$0_0$0 == 0x009b
                           00009B   113 _SBPH	=	0x009b
                           000088   114 G$TCON$0_0$0 == 0x0088
                           000088   115 _TCON	=	0x0088
                           00008C   116 G$T0L$0_0$0 == 0x008c
                           00008C   117 _T0L	=	0x008c
                           00008D   118 G$T0H$0_0$0 == 0x008d
                           00008D   119 _T0H	=	0x008d
                           00008E   120 G$T0CL$0_0$0 == 0x008e
                           00008E   121 _T0CL	=	0x008e
                           00008F   122 G$T0CH$0_0$0 == 0x008f
                           00008F   123 _T0CH	=	0x008f
                           0000C0   124 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   125 _EXTINT	=	0x00c0
                           000080   126 G$P0$0_0$0 == 0x0080
                           000080   127 _P0	=	0x0080
                           000090   128 G$P1$0_0$0 == 0x0090
                           000090   129 _P1	=	0x0090
                           0000A0   130 G$P2$0_0$0 == 0x00a0
                           0000A0   131 _P2	=	0x00a0
                           0000B0   132 G$P3$0_0$0 == 0x00b0
                           0000B0   133 _P3	=	0x00b0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           0000AF   139 G$EA$0_0$0 == 0x00af
                           0000AF   140 _EA	=	0x00af
                           0000AC   141 G$ES$0_0$0 == 0x00ac
                           0000AC   142 _ES	=	0x00ac
                           0000A9   143 G$ET0$0_0$0 == 0x00a9
                           0000A9   144 _ET0	=	0x00a9
                           0000A8   145 G$EEX$0_0$0 == 0x00a8
                           0000A8   146 _EEX	=	0x00a8
                           00009C   147 G$TXIRQ$0_0$0 == 0x009c
                           00009C   148 _TXIRQ	=	0x009c
                           00009D   149 G$RXIRQ$0_0$0 == 0x009d
                           00009D   150 _RXIRQ	=	0x009d
                           00009C   151 G$TXRDY$0_0$0 == 0x009c
                           00009C   152 _TXRDY	=	0x009c
                           00009D   153 G$RXRDY$0_0$0 == 0x009d
                           00009D   154 _RXRDY	=	0x009d
                           000088   155 G$T0IRQ$0_0$0 == 0x0088
                           000088   156 _T0IRQ	=	0x0088
                           00008C   157 G$T0ARL$0_0$0 == 0x008c
                           00008C   158 _T0ARL	=	0x008c
                           00008D   159 G$T0CEN$0_0$0 == 0x008d
                           00008D   160 _T0CEN	=	0x008d
                           0000C0   161 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   162 _EIRQ0	=	0x00c0
                           0000C1   163 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   164 _EIRQ1	=	0x00c1
                           0000C2   165 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   166 _EIRQ2	=	0x00c2
                           0000C3   167 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   168 _EIRQ3	=	0x00c3
                           0000C4   169 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   170 _EIRQ4	=	0x00c4
                           0000C5   171 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   172 _EIRQ5	=	0x00c5
                           0000C6   173 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   174 _EIRQ6	=	0x00c6
                           0000C7   175 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   176 _EIRQ7	=	0x00c7
                           000080   177 G$P0_0$0_0$0 == 0x0080
                           000080   178 _P0_0	=	0x0080
                           000081   179 G$P0_1$0_0$0 == 0x0081
                           000081   180 _P0_1	=	0x0081
                           000082   181 G$P0_2$0_0$0 == 0x0082
                           000082   182 _P0_2	=	0x0082
                           000083   183 G$P0_3$0_0$0 == 0x0083
                           000083   184 _P0_3	=	0x0083
                           000084   185 G$P0_4$0_0$0 == 0x0084
                           000084   186 _P0_4	=	0x0084
                           000085   187 G$P0_5$0_0$0 == 0x0085
                           000085   188 _P0_5	=	0x0085
                           000086   189 G$P0_6$0_0$0 == 0x0086
                           000086   190 _P0_6	=	0x0086
                           000087   191 G$P0_7$0_0$0 == 0x0087
                           000087   192 _P0_7	=	0x0087
                           000090   193 G$P1_0$0_0$0 == 0x0090
                           000090   194 _P1_0	=	0x0090
                           000091   195 G$P1_1$0_0$0 == 0x0091
                           000091   196 _P1_1	=	0x0091
                           000092   197 G$P1_2$0_0$0 == 0x0092
                           000092   198 _P1_2	=	0x0092
                           000093   199 G$P1_3$0_0$0 == 0x0093
                           000093   200 _P1_3	=	0x0093
                           000094   201 G$P1_4$0_0$0 == 0x0094
                           000094   202 _P1_4	=	0x0094
                           000095   203 G$P1_5$0_0$0 == 0x0095
                           000095   204 _P1_5	=	0x0095
                           000096   205 G$P1_6$0_0$0 == 0x0096
                           000096   206 _P1_6	=	0x0096
                           000097   207 G$P1_7$0_0$0 == 0x0097
                           000097   208 _P1_7	=	0x0097
                           0000A0   209 G$P2_0$0_0$0 == 0x00a0
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 G$P2_1$0_0$0 == 0x00a1
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 G$P2_2$0_0$0 == 0x00a2
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 G$P2_3$0_0$0 == 0x00a3
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 G$P2_4$0_0$0 == 0x00a4
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 G$P2_5$0_0$0 == 0x00a5
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 G$P2_6$0_0$0 == 0x00a6
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 G$P2_7$0_0$0 == 0x00a7
                           0000A7   224 _P2_7	=	0x00a7
                           0000B0   225 G$P3_0$0_0$0 == 0x00b0
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 G$P3_1$0_0$0 == 0x00b1
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 G$P3_2$0_0$0 == 0x00b2
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 G$P3_3$0_0$0 == 0x00b3
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 G$P3_4$0_0$0 == 0x00b4
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 G$P3_5$0_0$0 == 0x00b5
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 G$P3_6$0_0$0 == 0x00b6
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 G$P3_7$0_0$0 == 0x00b7
                           0000B7   240 _P3_7	=	0x00b7
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable register banks
                                    243 ;--------------------------------------------------------
                                    244 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        245 	.ds 8
                                    246 ;--------------------------------------------------------
                                    247 ; internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area DSEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      000041                        257 __start__stack:
      000041                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; external initialized ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector 
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 11         [24]  304 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  305 	reti
      000004                        306 	.ds	7
      00000B 02 01 C0         [24]  307 	ljmp	_timer0_isr
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 	.area GSFINAL (CODE)
      00006D 02 00 0E         [24]  322 	ljmp	__sdcc_program_startup
                                    323 ;--------------------------------------------------------
                                    324 ; Home
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area HOME    (CODE)
      00000E                        328 __sdcc_program_startup:
      00000E 02 00 70         [24]  329 	ljmp	_main
                                    330 ;	return from main will return to caller
                                    331 ;--------------------------------------------------------
                                    332 ; code
                                    333 ;--------------------------------------------------------
                                    334 	.area CSEG    (CODE)
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'main'
                                    337 ;------------------------------------------------------------
                                    338 ;msecs                     Allocated to registers r4 r5 r6 r7 
                                    339 ;secs                      Allocated to registers r4 r5 r6 r7 
                                    340 ;------------------------------------------------------------
                           000000   341 	G$main$0$0 ==.
                           000000   342 	C$blinker.c$23$0_0$23 ==.
                                    343 ;	src/blinker.c:23: void main(void)
                                    344 ;	-----------------------------------------
                                    345 ;	 function main
                                    346 ;	-----------------------------------------
      000070                        347 _main:
                           000007   348 	ar7 = 0x07
                           000006   349 	ar6 = 0x06
                           000005   350 	ar5 = 0x05
                           000004   351 	ar4 = 0x04
                           000003   352 	ar3 = 0x03
                           000002   353 	ar2 = 0x02
                           000001   354 	ar1 = 0x01
                           000000   355 	ar0 = 0x00
                           000000   356 	C$blinker.c$30$1_0$23 ==.
                                    357 ;	src/blinker.c:30: soc_init();
      000070 12 00 DF         [24]  358 	lcall	_soc_init
                           000003   359 	C$blinker.c$36$1_0$23 ==.
                                    360 ;	src/blinker.c:36: printf("\n\r");
      000073 74 B8            [12]  361 	mov	a,#___str_0
      000075 C0 E0            [24]  362 	push	acc
      000077 74 0A            [12]  363 	mov	a,#(___str_0 >> 8)
      000079 C0 E0            [24]  364 	push	acc
      00007B 74 80            [12]  365 	mov	a,#0x80
      00007D C0 E0            [24]  366 	push	acc
      00007F 12 02 F6         [24]  367 	lcall	_printf
      000082 15 81            [12]  368 	dec	sp
      000084 15 81            [12]  369 	dec	sp
      000086 15 81            [12]  370 	dec	sp
                           000018   371 	C$blinker.c$37$1_0$23 ==.
                                    372 ;	src/blinker.c:37: printf("Light52 project -- " __DATE__ "\n\n\r");
      000088 74 BB            [12]  373 	mov	a,#___str_1
      00008A C0 E0            [24]  374 	push	acc
      00008C 74 0A            [12]  375 	mov	a,#(___str_1 >> 8)
      00008E C0 E0            [24]  376 	push	acc
      000090 74 80            [12]  377 	mov	a,#0x80
      000092 C0 E0            [24]  378 	push	acc
      000094 12 02 F6         [24]  379 	lcall	_printf
      000097 15 81            [12]  380 	dec	sp
      000099 15 81            [12]  381 	dec	sp
      00009B 15 81            [12]  382 	dec	sp
                           00002D   383 	C$blinker.c$38$1_0$23 ==.
                                    384 ;	src/blinker.c:38: printf("LED blinker test.\n\r");
      00009D 74 DD            [12]  385 	mov	a,#___str_2
      00009F C0 E0            [24]  386 	push	acc
      0000A1 74 0A            [12]  387 	mov	a,#(___str_2 >> 8)
      0000A3 C0 E0            [24]  388 	push	acc
      0000A5 74 80            [12]  389 	mov	a,#0x80
      0000A7 C0 E0            [24]  390 	push	acc
      0000A9 12 02 F6         [24]  391 	lcall	_printf
      0000AC 15 81            [12]  392 	dec	sp
      0000AE 15 81            [12]  393 	dec	sp
      0000B0 15 81            [12]  394 	dec	sp
                           000042   395 	C$blinker.c$40$1_0$23 ==.
                                    396 ;	src/blinker.c:40: while(1){
      0000B2                        397 00102$:
                           000042   398 	C$blinker.c$41$2_0$24 ==.
                                    399 ;	src/blinker.c:41: msecs = soc_get_msecs();
      0000B2 12 01 01         [24]  400 	lcall	_soc_get_msecs
      0000B5 AC 82            [24]  401 	mov	r4,dpl
      0000B7 AD 83            [24]  402 	mov	r5,dph
      0000B9 AE F0            [24]  403 	mov	r6,b
      0000BB FF               [12]  404 	mov	r7,a
                           00004C   405 	C$blinker.c$42$1_0$23 ==.
                                    406 ;	src/blinker.c:42: secs = msecs/1000;
      0000BC 75 37 E8         [24]  407 	mov	__divulong_PARM_2,#0xe8
      0000BF 75 38 03         [24]  408 	mov	(__divulong_PARM_2 + 1),#0x03
      0000C2 E4               [12]  409 	clr	a
      0000C3 F5 39            [12]  410 	mov	(__divulong_PARM_2 + 2),a
      0000C5 F5 3A            [12]  411 	mov	(__divulong_PARM_2 + 3),a
      0000C7 8C 82            [24]  412 	mov	dpl,r4
      0000C9 8D 83            [24]  413 	mov	dph,r5
      0000CB 8E F0            [24]  414 	mov	b,r6
      0000CD EF               [12]  415 	mov	a,r7
      0000CE 12 01 FB         [24]  416 	lcall	__divulong
      0000D1 AC 82            [24]  417 	mov	r4,dpl
      0000D3 AD 83            [24]  418 	mov	r5,dph
      0000D5 AE F0            [24]  419 	mov	r6,b
      0000D7 FF               [12]  420 	mov	r7,a
                           000068   421 	C$blinker.c$43$1_0$23 ==.
                                    422 ;	src/blinker.c:43: P1 = (uint8_t)(secs & 0xff);
      0000D8 8C 90            [24]  423 	mov	_P1,r4
                           00006A   424 	C$blinker.c$44$2_0$24 ==.
                                    425 ;	src/blinker.c:44: P0 = (uint8_t)((secs>>8) & 0xff);
      0000DA 8D 80            [24]  426 	mov	_P0,r5
      0000DC 80 D4            [24]  427 	sjmp	00102$
                           00006E   428 	C$blinker.c$46$1_0$23 ==.
                                    429 ;	src/blinker.c:46: }
                           00006E   430 	C$blinker.c$46$1_0$23 ==.
                           00006E   431 	XG$main$0$0 ==.
      0000DE 22               [24]  432 	ret
                                    433 	.area CSEG    (CODE)
                                    434 	.area CONST   (CODE)
                           000000   435 Fblinker$__str_0$0_0$0 == .
      000AB8                        436 ___str_0:
      000AB8 0A                     437 	.db 0x0a
      000AB9 0D                     438 	.db 0x0d
      000ABA 00                     439 	.db 0x00
                           000003   440 Fblinker$__str_1$0_0$0 == .
      000ABB                        441 ___str_1:
      000ABB 4C 69 67 68 74 35 32   442 	.ascii "Light52 project -- Aug 20 2018"
             20 70 72 6F 6A 65 63
             74 20 2D 2D 20 41 75
             67 20 32 30 20 32 30
             31 38
      000AD9 0A                     443 	.db 0x0a
      000ADA 0A                     444 	.db 0x0a
      000ADB 0D                     445 	.db 0x0d
      000ADC 00                     446 	.db 0x00
                           000025   447 Fblinker$__str_2$0_0$0 == .
      000ADD                        448 ___str_2:
      000ADD 4C 45 44 20 62 6C 69   449 	.ascii "LED blinker test."
             6E 6B 65 72 20 74 65
             73 74 2E
      000AEE 0A                     450 	.db 0x0a
      000AEF 0D                     451 	.db 0x0d
      000AF0 00                     452 	.db 0x00
                                    453 	.area XINIT   (CODE)
                                    454 	.area CABS    (ABS,CODE)
