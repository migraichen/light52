                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module list
                                      6 	.optsdcc -mmcs51 --model-large
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
                                     83 	.globl _vListInitialise
                                     84 	.globl _vListInitialiseItem
                                     85 	.globl _vListInsertEnd
                                     86 	.globl _vListInsert
                                     87 	.globl _uxListRemove
                                     88 ;--------------------------------------------------------
                                     89 ; special function registers
                                     90 ;--------------------------------------------------------
                                     91 	.area RSEG    (ABS,DATA)
      000000                         92 	.org 0x0000
                           0000E0    93 G$ACC$0_0$0 == 0x00e0
                           0000E0    94 _ACC	=	0x00e0
                           0000F0    95 G$B$0_0$0 == 0x00f0
                           0000F0    96 _B	=	0x00f0
                           0000D0    97 G$PSW$0_0$0 == 0x00d0
                           0000D0    98 _PSW	=	0x00d0
                           000081    99 G$SP$0_0$0 == 0x0081
                           000081   100 _SP	=	0x0081
                           000083   101 G$DPH$0_0$0 == 0x0083
                           000083   102 _DPH	=	0x0083
                           000082   103 G$DPL$0_0$0 == 0x0082
                           000082   104 _DPL	=	0x0082
                           0000A8   105 G$IE$0_0$0 == 0x00a8
                           0000A8   106 _IE	=	0x00a8
                           000098   107 G$SCON$0_0$0 == 0x0098
                           000098   108 _SCON	=	0x0098
                           000099   109 G$SBUF$0_0$0 == 0x0099
                           000099   110 _SBUF	=	0x0099
                           00009A   111 G$SBPL$0_0$0 == 0x009a
                           00009A   112 _SBPL	=	0x009a
                           00009B   113 G$SBPH$0_0$0 == 0x009b
                           00009B   114 _SBPH	=	0x009b
                           000088   115 G$TCON$0_0$0 == 0x0088
                           000088   116 _TCON	=	0x0088
                           00008C   117 G$T0L$0_0$0 == 0x008c
                           00008C   118 _T0L	=	0x008c
                           00008D   119 G$T0H$0_0$0 == 0x008d
                           00008D   120 _T0H	=	0x008d
                           00008E   121 G$T0CL$0_0$0 == 0x008e
                           00008E   122 _T0CL	=	0x008e
                           00008F   123 G$T0CH$0_0$0 == 0x008f
                           00008F   124 _T0CH	=	0x008f
                           0000C0   125 G$EXTINT$0_0$0 == 0x00c0
                           0000C0   126 _EXTINT	=	0x00c0
                           000080   127 G$P0$0_0$0 == 0x0080
                           000080   128 _P0	=	0x0080
                           000090   129 G$P1$0_0$0 == 0x0090
                           000090   130 _P1	=	0x0090
                           0000A0   131 G$P2$0_0$0 == 0x00a0
                           0000A0   132 _P2	=	0x00a0
                           0000B0   133 G$P3$0_0$0 == 0x00b0
                           0000B0   134 _P3	=	0x00b0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           0000AF   140 G$EA$0_0$0 == 0x00af
                           0000AF   141 _EA	=	0x00af
                           0000AC   142 G$ES$0_0$0 == 0x00ac
                           0000AC   143 _ES	=	0x00ac
                           0000A9   144 G$ET0$0_0$0 == 0x00a9
                           0000A9   145 _ET0	=	0x00a9
                           0000A8   146 G$EEX$0_0$0 == 0x00a8
                           0000A8   147 _EEX	=	0x00a8
                           00009C   148 G$TXIRQ$0_0$0 == 0x009c
                           00009C   149 _TXIRQ	=	0x009c
                           00009D   150 G$RXIRQ$0_0$0 == 0x009d
                           00009D   151 _RXIRQ	=	0x009d
                           00009C   152 G$TXRDY$0_0$0 == 0x009c
                           00009C   153 _TXRDY	=	0x009c
                           00009D   154 G$RXRDY$0_0$0 == 0x009d
                           00009D   155 _RXRDY	=	0x009d
                           000088   156 G$T0IRQ$0_0$0 == 0x0088
                           000088   157 _T0IRQ	=	0x0088
                           00008C   158 G$T0ARL$0_0$0 == 0x008c
                           00008C   159 _T0ARL	=	0x008c
                           00008D   160 G$T0CEN$0_0$0 == 0x008d
                           00008D   161 _T0CEN	=	0x008d
                           0000C0   162 G$EIRQ0$0_0$0 == 0x00c0
                           0000C0   163 _EIRQ0	=	0x00c0
                           0000C1   164 G$EIRQ1$0_0$0 == 0x00c1
                           0000C1   165 _EIRQ1	=	0x00c1
                           0000C2   166 G$EIRQ2$0_0$0 == 0x00c2
                           0000C2   167 _EIRQ2	=	0x00c2
                           0000C3   168 G$EIRQ3$0_0$0 == 0x00c3
                           0000C3   169 _EIRQ3	=	0x00c3
                           0000C4   170 G$EIRQ4$0_0$0 == 0x00c4
                           0000C4   171 _EIRQ4	=	0x00c4
                           0000C5   172 G$EIRQ5$0_0$0 == 0x00c5
                           0000C5   173 _EIRQ5	=	0x00c5
                           0000C6   174 G$EIRQ6$0_0$0 == 0x00c6
                           0000C6   175 _EIRQ6	=	0x00c6
                           0000C7   176 G$EIRQ7$0_0$0 == 0x00c7
                           0000C7   177 _EIRQ7	=	0x00c7
                           000080   178 G$P0_0$0_0$0 == 0x0080
                           000080   179 _P0_0	=	0x0080
                           000081   180 G$P0_1$0_0$0 == 0x0081
                           000081   181 _P0_1	=	0x0081
                           000082   182 G$P0_2$0_0$0 == 0x0082
                           000082   183 _P0_2	=	0x0082
                           000083   184 G$P0_3$0_0$0 == 0x0083
                           000083   185 _P0_3	=	0x0083
                           000084   186 G$P0_4$0_0$0 == 0x0084
                           000084   187 _P0_4	=	0x0084
                           000085   188 G$P0_5$0_0$0 == 0x0085
                           000085   189 _P0_5	=	0x0085
                           000086   190 G$P0_6$0_0$0 == 0x0086
                           000086   191 _P0_6	=	0x0086
                           000087   192 G$P0_7$0_0$0 == 0x0087
                           000087   193 _P0_7	=	0x0087
                           000090   194 G$P1_0$0_0$0 == 0x0090
                           000090   195 _P1_0	=	0x0090
                           000091   196 G$P1_1$0_0$0 == 0x0091
                           000091   197 _P1_1	=	0x0091
                           000092   198 G$P1_2$0_0$0 == 0x0092
                           000092   199 _P1_2	=	0x0092
                           000093   200 G$P1_3$0_0$0 == 0x0093
                           000093   201 _P1_3	=	0x0093
                           000094   202 G$P1_4$0_0$0 == 0x0094
                           000094   203 _P1_4	=	0x0094
                           000095   204 G$P1_5$0_0$0 == 0x0095
                           000095   205 _P1_5	=	0x0095
                           000096   206 G$P1_6$0_0$0 == 0x0096
                           000096   207 _P1_6	=	0x0096
                           000097   208 G$P1_7$0_0$0 == 0x0097
                           000097   209 _P1_7	=	0x0097
                           0000A0   210 G$P2_0$0_0$0 == 0x00a0
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 G$P2_1$0_0$0 == 0x00a1
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 G$P2_2$0_0$0 == 0x00a2
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 G$P2_3$0_0$0 == 0x00a3
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 G$P2_4$0_0$0 == 0x00a4
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 G$P2_5$0_0$0 == 0x00a5
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 G$P2_6$0_0$0 == 0x00a6
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 G$P2_7$0_0$0 == 0x00a7
                           0000A7   225 _P2_7	=	0x00a7
                           0000B0   226 G$P3_0$0_0$0 == 0x00b0
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 G$P3_1$0_0$0 == 0x00b1
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 G$P3_2$0_0$0 == 0x00b2
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 G$P3_3$0_0$0 == 0x00b3
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 G$P3_4$0_0$0 == 0x00b4
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 G$P3_5$0_0$0 == 0x00b5
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 G$P3_6$0_0$0 == 0x00b6
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 G$P3_7$0_0$0 == 0x00b7
                           0000B7   241 _P3_7	=	0x00b7
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable register banks
                                    244 ;--------------------------------------------------------
                                    245 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        246 	.ds 8
                                    247 ;--------------------------------------------------------
                                    248 ; internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area DSEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 ;--------------------------------------------------------
                                    255 ; indirectly addressable internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area ISEG    (DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area IABS    (ABS,DATA)
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XABS    (ABS,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; external initialized ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; Home
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area HOME    (CODE)
                                    304 ;--------------------------------------------------------
                                    305 ; code
                                    306 ;--------------------------------------------------------
                                    307 	.area CSEG    (CODE)
                                    308 ;------------------------------------------------------------
                                    309 ;Allocation info for local variables in function 'vListInitialise'
                                    310 ;------------------------------------------------------------
                                    311 ;pxList                    Allocated to stack - _bp +1
                                    312 ;sloc0                     Allocated to stack - _bp +4
                                    313 ;sloc1                     Allocated to stack - _bp +7
                                    314 ;------------------------------------------------------------
                           000000   315 	G$vListInitialise$0$0 ==.
                           000000   316 	C$list.c$37$0_0$47 ==.
                                    317 ;	src/FreeRTOS/list.c:37: void vListInitialise( List_t * const pxList )
                                    318 ;	-----------------------------------------
                                    319 ;	 function vListInitialise
                                    320 ;	-----------------------------------------
      002BDD                        321 _vListInitialise:
                           000007   322 	ar7 = 0x07
                           000006   323 	ar6 = 0x06
                           000005   324 	ar5 = 0x05
                           000004   325 	ar4 = 0x04
                           000003   326 	ar3 = 0x03
                           000002   327 	ar2 = 0x02
                           000001   328 	ar1 = 0x01
                           000000   329 	ar0 = 0x00
      002BDD C0 0C            [24]  330 	push	_bp
      002BDF 85 81 0C         [24]  331 	mov	_bp,sp
      002BE2 C0 82            [24]  332 	push	dpl
      002BE4 C0 83            [24]  333 	push	dph
      002BE6 C0 F0            [24]  334 	push	b
      002BE8 05 81            [12]  335 	inc	sp
      002BEA 05 81            [12]  336 	inc	sp
      002BEC 05 81            [12]  337 	inc	sp
                           000011   338 	C$list.c$42$1_0$47 ==.
                                    339 ;	src/FreeRTOS/list.c:42: pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );			/*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      002BEE A8 0C            [24]  340 	mov	r0,_bp
      002BF0 08               [12]  341 	inc	r0
      002BF1 74 01            [12]  342 	mov	a,#0x01
      002BF3 26               [12]  343 	add	a,@r0
      002BF4 FF               [12]  344 	mov	r7,a
      002BF5 E4               [12]  345 	clr	a
      002BF6 08               [12]  346 	inc	r0
      002BF7 36               [12]  347 	addc	a,@r0
      002BF8 FB               [12]  348 	mov	r3,a
      002BF9 08               [12]  349 	inc	r0
      002BFA 86 02            [24]  350 	mov	ar2,@r0
      002BFC A8 0C            [24]  351 	mov	r0,_bp
      002BFE 08               [12]  352 	inc	r0
      002BFF E5 0C            [12]  353 	mov	a,_bp
      002C01 24 04            [12]  354 	add	a,#0x04
      002C03 F9               [12]  355 	mov	r1,a
      002C04 74 04            [12]  356 	mov	a,#0x04
      002C06 26               [12]  357 	add	a,@r0
      002C07 F7               [12]  358 	mov	@r1,a
      002C08 E4               [12]  359 	clr	a
      002C09 08               [12]  360 	inc	r0
      002C0A 36               [12]  361 	addc	a,@r0
      002C0B 09               [12]  362 	inc	r1
      002C0C F7               [12]  363 	mov	@r1,a
      002C0D 08               [12]  364 	inc	r0
      002C0E 09               [12]  365 	inc	r1
      002C0F E6               [12]  366 	mov	a,@r0
      002C10 F7               [12]  367 	mov	@r1,a
      002C11 E5 0C            [12]  368 	mov	a,_bp
      002C13 24 04            [12]  369 	add	a,#0x04
      002C15 F8               [12]  370 	mov	r0,a
      002C16 86 04            [24]  371 	mov	ar4,@r0
      002C18 08               [12]  372 	inc	r0
      002C19 86 05            [24]  373 	mov	ar5,@r0
      002C1B 08               [12]  374 	inc	r0
      002C1C 86 06            [24]  375 	mov	ar6,@r0
      002C1E 8F 82            [24]  376 	mov	dpl,r7
      002C20 8B 83            [24]  377 	mov	dph,r3
      002C22 8A F0            [24]  378 	mov	b,r2
      002C24 EC               [12]  379 	mov	a,r4
      002C25 12 66 A0         [24]  380 	lcall	__gptrput
      002C28 A3               [24]  381 	inc	dptr
      002C29 ED               [12]  382 	mov	a,r5
      002C2A 12 66 A0         [24]  383 	lcall	__gptrput
      002C2D A3               [24]  384 	inc	dptr
      002C2E EE               [12]  385 	mov	a,r6
      002C2F 12 66 A0         [24]  386 	lcall	__gptrput
                           000055   387 	C$list.c$46$1_0$47 ==.
                                    388 ;	src/FreeRTOS/list.c:46: pxList->xListEnd.xItemValue = portMAX_DELAY;
      002C32 E5 0C            [12]  389 	mov	a,_bp
      002C34 24 04            [12]  390 	add	a,#0x04
      002C36 F8               [12]  391 	mov	r0,a
      002C37 86 82            [24]  392 	mov	dpl,@r0
      002C39 08               [12]  393 	inc	r0
      002C3A 86 83            [24]  394 	mov	dph,@r0
      002C3C 08               [12]  395 	inc	r0
      002C3D 86 F0            [24]  396 	mov	b,@r0
      002C3F 74 FF            [12]  397 	mov	a,#0xff
      002C41 12 66 A0         [24]  398 	lcall	__gptrput
      002C44 A3               [24]  399 	inc	dptr
      002C45 12 66 A0         [24]  400 	lcall	__gptrput
                           00006B   401 	C$list.c$50$1_0$47 ==.
                                    402 ;	src/FreeRTOS/list.c:50: pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );	/*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      002C48 E5 0C            [12]  403 	mov	a,_bp
      002C4A 24 04            [12]  404 	add	a,#0x04
      002C4C F8               [12]  405 	mov	r0,a
      002C4D 74 02            [12]  406 	mov	a,#0x02
      002C4F 26               [12]  407 	add	a,@r0
      002C50 FF               [12]  408 	mov	r7,a
      002C51 E4               [12]  409 	clr	a
      002C52 08               [12]  410 	inc	r0
      002C53 36               [12]  411 	addc	a,@r0
      002C54 FD               [12]  412 	mov	r5,a
      002C55 08               [12]  413 	inc	r0
      002C56 86 04            [24]  414 	mov	ar4,@r0
      002C58 E5 0C            [12]  415 	mov	a,_bp
      002C5A 24 04            [12]  416 	add	a,#0x04
      002C5C F8               [12]  417 	mov	r0,a
      002C5D 86 02            [24]  418 	mov	ar2,@r0
      002C5F 08               [12]  419 	inc	r0
      002C60 86 03            [24]  420 	mov	ar3,@r0
      002C62 08               [12]  421 	inc	r0
      002C63 86 06            [24]  422 	mov	ar6,@r0
      002C65 8F 82            [24]  423 	mov	dpl,r7
      002C67 8D 83            [24]  424 	mov	dph,r5
      002C69 8C F0            [24]  425 	mov	b,r4
      002C6B EA               [12]  426 	mov	a,r2
      002C6C 12 66 A0         [24]  427 	lcall	__gptrput
      002C6F A3               [24]  428 	inc	dptr
      002C70 EB               [12]  429 	mov	a,r3
      002C71 12 66 A0         [24]  430 	lcall	__gptrput
      002C74 A3               [24]  431 	inc	dptr
      002C75 EE               [12]  432 	mov	a,r6
      002C76 12 66 A0         [24]  433 	lcall	__gptrput
                           00009C   434 	C$list.c$51$1_0$47 ==.
                                    435 ;	src/FreeRTOS/list.c:51: pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd );/*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      002C79 E5 0C            [12]  436 	mov	a,_bp
      002C7B 24 04            [12]  437 	add	a,#0x04
      002C7D F8               [12]  438 	mov	r0,a
      002C7E 74 05            [12]  439 	mov	a,#0x05
      002C80 26               [12]  440 	add	a,@r0
      002C81 FF               [12]  441 	mov	r7,a
      002C82 E4               [12]  442 	clr	a
      002C83 08               [12]  443 	inc	r0
      002C84 36               [12]  444 	addc	a,@r0
      002C85 FD               [12]  445 	mov	r5,a
      002C86 08               [12]  446 	inc	r0
      002C87 86 04            [24]  447 	mov	ar4,@r0
      002C89 E5 0C            [12]  448 	mov	a,_bp
      002C8B 24 04            [12]  449 	add	a,#0x04
      002C8D F8               [12]  450 	mov	r0,a
      002C8E 86 02            [24]  451 	mov	ar2,@r0
      002C90 08               [12]  452 	inc	r0
      002C91 86 03            [24]  453 	mov	ar3,@r0
      002C93 08               [12]  454 	inc	r0
      002C94 86 06            [24]  455 	mov	ar6,@r0
      002C96 8F 82            [24]  456 	mov	dpl,r7
      002C98 8D 83            [24]  457 	mov	dph,r5
      002C9A 8C F0            [24]  458 	mov	b,r4
      002C9C EA               [12]  459 	mov	a,r2
      002C9D 12 66 A0         [24]  460 	lcall	__gptrput
      002CA0 A3               [24]  461 	inc	dptr
      002CA1 EB               [12]  462 	mov	a,r3
      002CA2 12 66 A0         [24]  463 	lcall	__gptrput
      002CA5 A3               [24]  464 	inc	dptr
      002CA6 EE               [12]  465 	mov	a,r6
      002CA7 12 66 A0         [24]  466 	lcall	__gptrput
                           0000CD   467 	C$list.c$53$1_0$47 ==.
                                    468 ;	src/FreeRTOS/list.c:53: pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
      002CAA A8 0C            [24]  469 	mov	r0,_bp
      002CAC 08               [12]  470 	inc	r0
      002CAD 86 82            [24]  471 	mov	dpl,@r0
      002CAF 08               [12]  472 	inc	r0
      002CB0 86 83            [24]  473 	mov	dph,@r0
      002CB2 08               [12]  474 	inc	r0
      002CB3 86 F0            [24]  475 	mov	b,@r0
      002CB5 E4               [12]  476 	clr	a
      002CB6 12 66 A0         [24]  477 	lcall	__gptrput
                           0000DC   478 	C$list.c$59$1_0$47 ==.
                                    479 ;	src/FreeRTOS/list.c:59: }
      002CB9 85 0C 81         [24]  480 	mov	sp,_bp
      002CBC D0 0C            [24]  481 	pop	_bp
                           0000E1   482 	C$list.c$59$1_0$47 ==.
                           0000E1   483 	XG$vListInitialise$0$0 ==.
      002CBE 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'vListInitialiseItem'
                                    487 ;------------------------------------------------------------
                                    488 ;pxItem                    Allocated to registers r5 r6 r7 
                                    489 ;------------------------------------------------------------
                           0000E2   490 	G$vListInitialiseItem$0$0 ==.
                           0000E2   491 	C$list.c$62$1_0$49 ==.
                                    492 ;	src/FreeRTOS/list.c:62: void vListInitialiseItem( ListItem_t * const pxItem )
                                    493 ;	-----------------------------------------
                                    494 ;	 function vListInitialiseItem
                                    495 ;	-----------------------------------------
      002CBF                        496 _vListInitialiseItem:
      002CBF AD 82            [24]  497 	mov	r5,dpl
      002CC1 AE 83            [24]  498 	mov	r6,dph
      002CC3 AF F0            [24]  499 	mov	r7,b
                           0000E8   500 	C$list.c$65$1_0$49 ==.
                                    501 ;	src/FreeRTOS/list.c:65: pxItem->pxContainer = NULL;
      002CC5 74 0B            [12]  502 	mov	a,#0x0b
      002CC7 2D               [12]  503 	add	a,r5
      002CC8 FD               [12]  504 	mov	r5,a
      002CC9 E4               [12]  505 	clr	a
      002CCA 3E               [12]  506 	addc	a,r6
      002CCB FE               [12]  507 	mov	r6,a
      002CCC 8D 82            [24]  508 	mov	dpl,r5
      002CCE 8E 83            [24]  509 	mov	dph,r6
      002CD0 8F F0            [24]  510 	mov	b,r7
      002CD2 E4               [12]  511 	clr	a
      002CD3 12 66 A0         [24]  512 	lcall	__gptrput
      002CD6 A3               [24]  513 	inc	dptr
      002CD7 12 66 A0         [24]  514 	lcall	__gptrput
      002CDA A3               [24]  515 	inc	dptr
      002CDB 12 66 A0         [24]  516 	lcall	__gptrput
                           000101   517 	C$list.c$71$1_0$49 ==.
                                    518 ;	src/FreeRTOS/list.c:71: }
                           000101   519 	C$list.c$71$1_0$49 ==.
                           000101   520 	XG$vListInitialiseItem$0$0 ==.
      002CDE 22               [24]  521 	ret
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'vListInsertEnd'
                                    524 ;------------------------------------------------------------
                                    525 ;pxNewListItem             Allocated to stack - _bp -5
                                    526 ;pxList                    Allocated to stack - _bp +1
                                    527 ;pxIndex                   Allocated to stack - _bp +10
                                    528 ;sloc0                     Allocated to stack - _bp +4
                                    529 ;sloc1                     Allocated to stack - _bp +7
                                    530 ;------------------------------------------------------------
                           000102   531 	G$vListInsertEnd$0$0 ==.
                           000102   532 	C$list.c$74$1_0$51 ==.
                                    533 ;	src/FreeRTOS/list.c:74: void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem )
                                    534 ;	-----------------------------------------
                                    535 ;	 function vListInsertEnd
                                    536 ;	-----------------------------------------
      002CDF                        537 _vListInsertEnd:
      002CDF C0 0C            [24]  538 	push	_bp
      002CE1 85 81 0C         [24]  539 	mov	_bp,sp
      002CE4 C0 82            [24]  540 	push	dpl
      002CE6 C0 83            [24]  541 	push	dph
      002CE8 C0 F0            [24]  542 	push	b
      002CEA E5 81            [12]  543 	mov	a,sp
      002CEC 24 09            [12]  544 	add	a,#0x09
      002CEE F5 81            [12]  545 	mov	sp,a
                           000113   546 	C$list.c$76$1_0$51 ==.
                                    547 ;	src/FreeRTOS/list.c:76: ListItem_t * const pxIndex = pxList->pxIndex;
      002CF0 A8 0C            [24]  548 	mov	r0,_bp
      002CF2 08               [12]  549 	inc	r0
      002CF3 74 01            [12]  550 	mov	a,#0x01
      002CF5 26               [12]  551 	add	a,@r0
      002CF6 FA               [12]  552 	mov	r2,a
      002CF7 E4               [12]  553 	clr	a
      002CF8 08               [12]  554 	inc	r0
      002CF9 36               [12]  555 	addc	a,@r0
      002CFA FB               [12]  556 	mov	r3,a
      002CFB 08               [12]  557 	inc	r0
      002CFC 86 04            [24]  558 	mov	ar4,@r0
      002CFE 8A 82            [24]  559 	mov	dpl,r2
      002D00 8B 83            [24]  560 	mov	dph,r3
      002D02 8C F0            [24]  561 	mov	b,r4
      002D04 E5 0C            [12]  562 	mov	a,_bp
      002D06 24 0A            [12]  563 	add	a,#0x0a
      002D08 F8               [12]  564 	mov	r0,a
      002D09 12 70 5A         [24]  565 	lcall	__gptrget
      002D0C F6               [12]  566 	mov	@r0,a
      002D0D A3               [24]  567 	inc	dptr
      002D0E 12 70 5A         [24]  568 	lcall	__gptrget
      002D11 08               [12]  569 	inc	r0
      002D12 F6               [12]  570 	mov	@r0,a
      002D13 A3               [24]  571 	inc	dptr
      002D14 12 70 5A         [24]  572 	lcall	__gptrget
      002D17 08               [12]  573 	inc	r0
      002D18 F6               [12]  574 	mov	@r0,a
                           00013C   575 	C$list.c$87$1_0$51 ==.
                                    576 ;	src/FreeRTOS/list.c:87: pxNewListItem->pxNext = pxIndex;
      002D19 E5 0C            [12]  577 	mov	a,_bp
      002D1B 24 FB            [12]  578 	add	a,#0xfb
      002D1D F8               [12]  579 	mov	r0,a
      002D1E 86 02            [24]  580 	mov	ar2,@r0
      002D20 08               [12]  581 	inc	r0
      002D21 86 03            [24]  582 	mov	ar3,@r0
      002D23 08               [12]  583 	inc	r0
      002D24 86 04            [24]  584 	mov	ar4,@r0
      002D26 74 02            [12]  585 	mov	a,#0x02
      002D28 2A               [12]  586 	add	a,r2
      002D29 FD               [12]  587 	mov	r5,a
      002D2A E4               [12]  588 	clr	a
      002D2B 3B               [12]  589 	addc	a,r3
      002D2C FE               [12]  590 	mov	r6,a
      002D2D 8C 07            [24]  591 	mov	ar7,r4
      002D2F 8D 82            [24]  592 	mov	dpl,r5
      002D31 8E 83            [24]  593 	mov	dph,r6
      002D33 8F F0            [24]  594 	mov	b,r7
      002D35 E5 0C            [12]  595 	mov	a,_bp
      002D37 24 0A            [12]  596 	add	a,#0x0a
      002D39 F8               [12]  597 	mov	r0,a
      002D3A E6               [12]  598 	mov	a,@r0
      002D3B 12 66 A0         [24]  599 	lcall	__gptrput
      002D3E A3               [24]  600 	inc	dptr
      002D3F 08               [12]  601 	inc	r0
      002D40 E6               [12]  602 	mov	a,@r0
      002D41 12 66 A0         [24]  603 	lcall	__gptrput
      002D44 A3               [24]  604 	inc	dptr
      002D45 08               [12]  605 	inc	r0
      002D46 E6               [12]  606 	mov	a,@r0
      002D47 12 66 A0         [24]  607 	lcall	__gptrput
                           00016D   608 	C$list.c$88$1_0$51 ==.
                                    609 ;	src/FreeRTOS/list.c:88: pxNewListItem->pxPrevious = pxIndex->pxPrevious;
      002D4A E5 0C            [12]  610 	mov	a,_bp
      002D4C 24 04            [12]  611 	add	a,#0x04
      002D4E F8               [12]  612 	mov	r0,a
      002D4F 74 05            [12]  613 	mov	a,#0x05
      002D51 2A               [12]  614 	add	a,r2
      002D52 F6               [12]  615 	mov	@r0,a
      002D53 E4               [12]  616 	clr	a
      002D54 3B               [12]  617 	addc	a,r3
      002D55 08               [12]  618 	inc	r0
      002D56 F6               [12]  619 	mov	@r0,a
      002D57 08               [12]  620 	inc	r0
      002D58 A6 04            [24]  621 	mov	@r0,ar4
      002D5A E5 0C            [12]  622 	mov	a,_bp
      002D5C 24 0A            [12]  623 	add	a,#0x0a
      002D5E F8               [12]  624 	mov	r0,a
      002D5F E5 0C            [12]  625 	mov	a,_bp
      002D61 24 07            [12]  626 	add	a,#0x07
      002D63 F9               [12]  627 	mov	r1,a
      002D64 74 05            [12]  628 	mov	a,#0x05
      002D66 26               [12]  629 	add	a,@r0
      002D67 F7               [12]  630 	mov	@r1,a
      002D68 E4               [12]  631 	clr	a
      002D69 08               [12]  632 	inc	r0
      002D6A 36               [12]  633 	addc	a,@r0
      002D6B 09               [12]  634 	inc	r1
      002D6C F7               [12]  635 	mov	@r1,a
      002D6D 08               [12]  636 	inc	r0
      002D6E 09               [12]  637 	inc	r1
      002D6F E6               [12]  638 	mov	a,@r0
      002D70 F7               [12]  639 	mov	@r1,a
      002D71 E5 0C            [12]  640 	mov	a,_bp
      002D73 24 07            [12]  641 	add	a,#0x07
      002D75 F8               [12]  642 	mov	r0,a
      002D76 86 82            [24]  643 	mov	dpl,@r0
      002D78 08               [12]  644 	inc	r0
      002D79 86 83            [24]  645 	mov	dph,@r0
      002D7B 08               [12]  646 	inc	r0
      002D7C 86 F0            [24]  647 	mov	b,@r0
      002D7E 12 70 5A         [24]  648 	lcall	__gptrget
      002D81 FD               [12]  649 	mov	r5,a
      002D82 A3               [24]  650 	inc	dptr
      002D83 12 70 5A         [24]  651 	lcall	__gptrget
      002D86 FE               [12]  652 	mov	r6,a
      002D87 A3               [24]  653 	inc	dptr
      002D88 12 70 5A         [24]  654 	lcall	__gptrget
      002D8B FF               [12]  655 	mov	r7,a
      002D8C E5 0C            [12]  656 	mov	a,_bp
      002D8E 24 04            [12]  657 	add	a,#0x04
      002D90 F8               [12]  658 	mov	r0,a
      002D91 86 82            [24]  659 	mov	dpl,@r0
      002D93 08               [12]  660 	inc	r0
      002D94 86 83            [24]  661 	mov	dph,@r0
      002D96 08               [12]  662 	inc	r0
      002D97 86 F0            [24]  663 	mov	b,@r0
      002D99 ED               [12]  664 	mov	a,r5
      002D9A 12 66 A0         [24]  665 	lcall	__gptrput
      002D9D A3               [24]  666 	inc	dptr
      002D9E EE               [12]  667 	mov	a,r6
      002D9F 12 66 A0         [24]  668 	lcall	__gptrput
      002DA2 A3               [24]  669 	inc	dptr
      002DA3 EF               [12]  670 	mov	a,r7
      002DA4 12 66 A0         [24]  671 	lcall	__gptrput
                           0001CA   672 	C$list.c$93$1_0$51 ==.
                                    673 ;	src/FreeRTOS/list.c:93: pxIndex->pxPrevious->pxNext = pxNewListItem;
      002DA7 E5 0C            [12]  674 	mov	a,_bp
      002DA9 24 07            [12]  675 	add	a,#0x07
      002DAB F8               [12]  676 	mov	r0,a
      002DAC 86 82            [24]  677 	mov	dpl,@r0
      002DAE 08               [12]  678 	inc	r0
      002DAF 86 83            [24]  679 	mov	dph,@r0
      002DB1 08               [12]  680 	inc	r0
      002DB2 86 F0            [24]  681 	mov	b,@r0
      002DB4 12 70 5A         [24]  682 	lcall	__gptrget
      002DB7 FD               [12]  683 	mov	r5,a
      002DB8 A3               [24]  684 	inc	dptr
      002DB9 12 70 5A         [24]  685 	lcall	__gptrget
      002DBC FE               [12]  686 	mov	r6,a
      002DBD A3               [24]  687 	inc	dptr
      002DBE 12 70 5A         [24]  688 	lcall	__gptrget
      002DC1 FF               [12]  689 	mov	r7,a
      002DC2 74 02            [12]  690 	mov	a,#0x02
      002DC4 2D               [12]  691 	add	a,r5
      002DC5 FD               [12]  692 	mov	r5,a
      002DC6 E4               [12]  693 	clr	a
      002DC7 3E               [12]  694 	addc	a,r6
      002DC8 FE               [12]  695 	mov	r6,a
      002DC9 8D 82            [24]  696 	mov	dpl,r5
      002DCB 8E 83            [24]  697 	mov	dph,r6
      002DCD 8F F0            [24]  698 	mov	b,r7
      002DCF EA               [12]  699 	mov	a,r2
      002DD0 12 66 A0         [24]  700 	lcall	__gptrput
      002DD3 A3               [24]  701 	inc	dptr
      002DD4 EB               [12]  702 	mov	a,r3
      002DD5 12 66 A0         [24]  703 	lcall	__gptrput
      002DD8 A3               [24]  704 	inc	dptr
      002DD9 EC               [12]  705 	mov	a,r4
      002DDA 12 66 A0         [24]  706 	lcall	__gptrput
                           000200   707 	C$list.c$94$1_0$51 ==.
                                    708 ;	src/FreeRTOS/list.c:94: pxIndex->pxPrevious = pxNewListItem;
      002DDD E5 0C            [12]  709 	mov	a,_bp
      002DDF 24 07            [12]  710 	add	a,#0x07
      002DE1 F8               [12]  711 	mov	r0,a
      002DE2 86 82            [24]  712 	mov	dpl,@r0
      002DE4 08               [12]  713 	inc	r0
      002DE5 86 83            [24]  714 	mov	dph,@r0
      002DE7 08               [12]  715 	inc	r0
      002DE8 86 F0            [24]  716 	mov	b,@r0
      002DEA EA               [12]  717 	mov	a,r2
      002DEB 12 66 A0         [24]  718 	lcall	__gptrput
      002DEE A3               [24]  719 	inc	dptr
      002DEF EB               [12]  720 	mov	a,r3
      002DF0 12 66 A0         [24]  721 	lcall	__gptrput
      002DF3 A3               [24]  722 	inc	dptr
      002DF4 EC               [12]  723 	mov	a,r4
      002DF5 12 66 A0         [24]  724 	lcall	__gptrput
                           00021B   725 	C$list.c$97$1_0$51 ==.
                                    726 ;	src/FreeRTOS/list.c:97: pxNewListItem->pxContainer = pxList;
      002DF8 74 0B            [12]  727 	mov	a,#0x0b
      002DFA 2A               [12]  728 	add	a,r2
      002DFB FA               [12]  729 	mov	r2,a
      002DFC E4               [12]  730 	clr	a
      002DFD 3B               [12]  731 	addc	a,r3
      002DFE FB               [12]  732 	mov	r3,a
      002DFF 8A 82            [24]  733 	mov	dpl,r2
      002E01 8B 83            [24]  734 	mov	dph,r3
      002E03 8C F0            [24]  735 	mov	b,r4
      002E05 A8 0C            [24]  736 	mov	r0,_bp
      002E07 08               [12]  737 	inc	r0
      002E08 E6               [12]  738 	mov	a,@r0
      002E09 12 66 A0         [24]  739 	lcall	__gptrput
      002E0C A3               [24]  740 	inc	dptr
      002E0D 08               [12]  741 	inc	r0
      002E0E E6               [12]  742 	mov	a,@r0
      002E0F 12 66 A0         [24]  743 	lcall	__gptrput
      002E12 A3               [24]  744 	inc	dptr
      002E13 08               [12]  745 	inc	r0
      002E14 E6               [12]  746 	mov	a,@r0
      002E15 12 66 A0         [24]  747 	lcall	__gptrput
                           00023B   748 	C$list.c$99$1_0$51 ==.
                                    749 ;	src/FreeRTOS/list.c:99: ( pxList->uxNumberOfItems )++;
      002E18 A8 0C            [24]  750 	mov	r0,_bp
      002E1A 08               [12]  751 	inc	r0
      002E1B 86 82            [24]  752 	mov	dpl,@r0
      002E1D 08               [12]  753 	inc	r0
      002E1E 86 83            [24]  754 	mov	dph,@r0
      002E20 08               [12]  755 	inc	r0
      002E21 86 F0            [24]  756 	mov	b,@r0
      002E23 12 70 5A         [24]  757 	lcall	__gptrget
      002E26 FF               [12]  758 	mov	r7,a
      002E27 0F               [12]  759 	inc	r7
      002E28 A8 0C            [24]  760 	mov	r0,_bp
      002E2A 08               [12]  761 	inc	r0
      002E2B 86 82            [24]  762 	mov	dpl,@r0
      002E2D 08               [12]  763 	inc	r0
      002E2E 86 83            [24]  764 	mov	dph,@r0
      002E30 08               [12]  765 	inc	r0
      002E31 86 F0            [24]  766 	mov	b,@r0
      002E33 EF               [12]  767 	mov	a,r7
      002E34 12 66 A0         [24]  768 	lcall	__gptrput
                           00025A   769 	C$list.c$100$1_0$51 ==.
                                    770 ;	src/FreeRTOS/list.c:100: }
      002E37 85 0C 81         [24]  771 	mov	sp,_bp
      002E3A D0 0C            [24]  772 	pop	_bp
                           00025F   773 	C$list.c$100$1_0$51 ==.
                           00025F   774 	XG$vListInsertEnd$0$0 ==.
      002E3C 22               [24]  775 	ret
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'vListInsert'
                                    778 ;------------------------------------------------------------
                                    779 ;pxNewListItem             Allocated to stack - _bp -5
                                    780 ;pxList                    Allocated to stack - _bp +1
                                    781 ;pxIterator                Allocated to stack - _bp +10
                                    782 ;xValueOfInsertion         Allocated to stack - _bp +13
                                    783 ;sloc0                     Allocated to stack - _bp +4
                                    784 ;sloc1                     Allocated to stack - _bp +7
                                    785 ;------------------------------------------------------------
                           000260   786 	G$vListInsert$0$0 ==.
                           000260   787 	C$list.c$103$1_0$53 ==.
                                    788 ;	src/FreeRTOS/list.c:103: void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem )
                                    789 ;	-----------------------------------------
                                    790 ;	 function vListInsert
                                    791 ;	-----------------------------------------
      002E3D                        792 _vListInsert:
      002E3D C0 0C            [24]  793 	push	_bp
      002E3F 85 81 0C         [24]  794 	mov	_bp,sp
      002E42 C0 82            [24]  795 	push	dpl
      002E44 C0 83            [24]  796 	push	dph
      002E46 C0 F0            [24]  797 	push	b
      002E48 E5 81            [12]  798 	mov	a,sp
      002E4A 24 0B            [12]  799 	add	a,#0x0b
      002E4C F5 81            [12]  800 	mov	sp,a
                           000271   801 	C$list.c$106$1_0$53 ==.
                                    802 ;	src/FreeRTOS/list.c:106: const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
      002E4E E5 0C            [12]  803 	mov	a,_bp
      002E50 24 FB            [12]  804 	add	a,#0xfb
      002E52 F8               [12]  805 	mov	r0,a
      002E53 86 02            [24]  806 	mov	ar2,@r0
      002E55 08               [12]  807 	inc	r0
      002E56 86 03            [24]  808 	mov	ar3,@r0
      002E58 08               [12]  809 	inc	r0
      002E59 86 04            [24]  810 	mov	ar4,@r0
      002E5B 8A 82            [24]  811 	mov	dpl,r2
      002E5D 8B 83            [24]  812 	mov	dph,r3
      002E5F 8C F0            [24]  813 	mov	b,r4
      002E61 E5 0C            [12]  814 	mov	a,_bp
      002E63 24 0D            [12]  815 	add	a,#0x0d
      002E65 F8               [12]  816 	mov	r0,a
      002E66 12 70 5A         [24]  817 	lcall	__gptrget
      002E69 F6               [12]  818 	mov	@r0,a
      002E6A A3               [24]  819 	inc	dptr
      002E6B 12 70 5A         [24]  820 	lcall	__gptrget
      002E6E 08               [12]  821 	inc	r0
      002E6F F6               [12]  822 	mov	@r0,a
                           000293   823 	C$list.c$122$1_0$53 ==.
                                    824 ;	src/FreeRTOS/list.c:122: if( xValueOfInsertion == portMAX_DELAY )
      002E70 E5 0C            [12]  825 	mov	a,_bp
      002E72 24 0D            [12]  826 	add	a,#0x0d
      002E74 F8               [12]  827 	mov	r0,a
      002E75 B6 FF 43         [24]  828 	cjne	@r0,#0xff,00103$
      002E78 08               [12]  829 	inc	r0
      002E79 B6 FF 3F         [24]  830 	cjne	@r0,#0xff,00103$
                           00029F   831 	C$list.c$124$1_0$53 ==.
                                    832 ;	src/FreeRTOS/list.c:124: pxIterator = pxList->xListEnd.pxPrevious;
      002E7C C0 02            [24]  833 	push	ar2
      002E7E C0 03            [24]  834 	push	ar3
      002E80 C0 04            [24]  835 	push	ar4
      002E82 A8 0C            [24]  836 	mov	r0,_bp
      002E84 08               [12]  837 	inc	r0
      002E85 74 04            [12]  838 	mov	a,#0x04
      002E87 26               [12]  839 	add	a,@r0
      002E88 FA               [12]  840 	mov	r2,a
      002E89 E4               [12]  841 	clr	a
      002E8A 08               [12]  842 	inc	r0
      002E8B 36               [12]  843 	addc	a,@r0
      002E8C FB               [12]  844 	mov	r3,a
      002E8D 08               [12]  845 	inc	r0
      002E8E 86 04            [24]  846 	mov	ar4,@r0
      002E90 74 05            [12]  847 	mov	a,#0x05
      002E92 2A               [12]  848 	add	a,r2
      002E93 FA               [12]  849 	mov	r2,a
      002E94 E4               [12]  850 	clr	a
      002E95 3B               [12]  851 	addc	a,r3
      002E96 FB               [12]  852 	mov	r3,a
      002E97 8A 82            [24]  853 	mov	dpl,r2
      002E99 8B 83            [24]  854 	mov	dph,r3
      002E9B 8C F0            [24]  855 	mov	b,r4
      002E9D E5 0C            [12]  856 	mov	a,_bp
      002E9F 24 0A            [12]  857 	add	a,#0x0a
      002EA1 F8               [12]  858 	mov	r0,a
      002EA2 12 70 5A         [24]  859 	lcall	__gptrget
      002EA5 F6               [12]  860 	mov	@r0,a
      002EA6 A3               [24]  861 	inc	dptr
      002EA7 12 70 5A         [24]  862 	lcall	__gptrget
      002EAA 08               [12]  863 	inc	r0
      002EAB F6               [12]  864 	mov	@r0,a
      002EAC A3               [24]  865 	inc	dptr
      002EAD 12 70 5A         [24]  866 	lcall	__gptrget
      002EB0 08               [12]  867 	inc	r0
      002EB1 F6               [12]  868 	mov	@r0,a
      002EB2 D0 04            [24]  869 	pop	ar4
      002EB4 D0 03            [24]  870 	pop	ar3
      002EB6 D0 02            [24]  871 	pop	ar2
      002EB8 02 2F 3F         [24]  872 	ljmp	00104$
      002EBB                        873 00103$:
                           0002DE   874 	C$list.c$150$3_0$56 ==.
                                    875 ;	src/FreeRTOS/list.c:150: for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
      002EBB A8 0C            [24]  876 	mov	r0,_bp
      002EBD 08               [12]  877 	inc	r0
      002EBE 74 04            [12]  878 	mov	a,#0x04
      002EC0 26               [12]  879 	add	a,@r0
      002EC1 FD               [12]  880 	mov	r5,a
      002EC2 E4               [12]  881 	clr	a
      002EC3 08               [12]  882 	inc	r0
      002EC4 36               [12]  883 	addc	a,@r0
      002EC5 FE               [12]  884 	mov	r6,a
      002EC6 08               [12]  885 	inc	r0
      002EC7 86 07            [24]  886 	mov	ar7,@r0
      002EC9 E5 0C            [12]  887 	mov	a,_bp
      002ECB 24 0A            [12]  888 	add	a,#0x0a
      002ECD F8               [12]  889 	mov	r0,a
      002ECE A6 05            [24]  890 	mov	@r0,ar5
      002ED0 08               [12]  891 	inc	r0
      002ED1 A6 06            [24]  892 	mov	@r0,ar6
      002ED3 08               [12]  893 	inc	r0
      002ED4 A6 07            [24]  894 	mov	@r0,ar7
      002ED6                        895 00106$:
      002ED6 C0 02            [24]  896 	push	ar2
      002ED8 C0 03            [24]  897 	push	ar3
      002EDA C0 04            [24]  898 	push	ar4
      002EDC E5 0C            [12]  899 	mov	a,_bp
      002EDE 24 0A            [12]  900 	add	a,#0x0a
      002EE0 F8               [12]  901 	mov	r0,a
      002EE1 74 02            [12]  902 	mov	a,#0x02
      002EE3 26               [12]  903 	add	a,@r0
      002EE4 FD               [12]  904 	mov	r5,a
      002EE5 E4               [12]  905 	clr	a
      002EE6 08               [12]  906 	inc	r0
      002EE7 36               [12]  907 	addc	a,@r0
      002EE8 FE               [12]  908 	mov	r6,a
      002EE9 08               [12]  909 	inc	r0
      002EEA 86 07            [24]  910 	mov	ar7,@r0
      002EEC 8D 82            [24]  911 	mov	dpl,r5
      002EEE 8E 83            [24]  912 	mov	dph,r6
      002EF0 8F F0            [24]  913 	mov	b,r7
      002EF2 12 70 5A         [24]  914 	lcall	__gptrget
      002EF5 FA               [12]  915 	mov	r2,a
      002EF6 A3               [24]  916 	inc	dptr
      002EF7 12 70 5A         [24]  917 	lcall	__gptrget
      002EFA FB               [12]  918 	mov	r3,a
      002EFB A3               [24]  919 	inc	dptr
      002EFC 12 70 5A         [24]  920 	lcall	__gptrget
      002EFF FC               [12]  921 	mov	r4,a
      002F00 8A 82            [24]  922 	mov	dpl,r2
      002F02 8B 83            [24]  923 	mov	dph,r3
      002F04 8C F0            [24]  924 	mov	b,r4
      002F06 12 70 5A         [24]  925 	lcall	__gptrget
      002F09 FA               [12]  926 	mov	r2,a
      002F0A A3               [24]  927 	inc	dptr
      002F0B 12 70 5A         [24]  928 	lcall	__gptrget
      002F0E FB               [12]  929 	mov	r3,a
      002F0F E5 0C            [12]  930 	mov	a,_bp
      002F11 24 0D            [12]  931 	add	a,#0x0d
      002F13 F8               [12]  932 	mov	r0,a
      002F14 C3               [12]  933 	clr	c
      002F15 E6               [12]  934 	mov	a,@r0
      002F16 9A               [12]  935 	subb	a,r2
      002F17 08               [12]  936 	inc	r0
      002F18 E6               [12]  937 	mov	a,@r0
      002F19 9B               [12]  938 	subb	a,r3
      002F1A D0 04            [24]  939 	pop	ar4
      002F1C D0 03            [24]  940 	pop	ar3
      002F1E D0 02            [24]  941 	pop	ar2
      002F20 40 1D            [24]  942 	jc	00104$
      002F22 8D 82            [24]  943 	mov	dpl,r5
      002F24 8E 83            [24]  944 	mov	dph,r6
      002F26 8F F0            [24]  945 	mov	b,r7
      002F28 E5 0C            [12]  946 	mov	a,_bp
      002F2A 24 0A            [12]  947 	add	a,#0x0a
      002F2C F8               [12]  948 	mov	r0,a
      002F2D 12 70 5A         [24]  949 	lcall	__gptrget
      002F30 F6               [12]  950 	mov	@r0,a
      002F31 A3               [24]  951 	inc	dptr
      002F32 12 70 5A         [24]  952 	lcall	__gptrget
      002F35 08               [12]  953 	inc	r0
      002F36 F6               [12]  954 	mov	@r0,a
      002F37 A3               [24]  955 	inc	dptr
      002F38 12 70 5A         [24]  956 	lcall	__gptrget
      002F3B 08               [12]  957 	inc	r0
      002F3C F6               [12]  958 	mov	@r0,a
      002F3D 80 97            [24]  959 	sjmp	00106$
      002F3F                        960 00104$:
                           000362   961 	C$list.c$157$1_0$53 ==.
                                    962 ;	src/FreeRTOS/list.c:157: pxNewListItem->pxNext = pxIterator->pxNext;
      002F3F E5 0C            [12]  963 	mov	a,_bp
      002F41 24 04            [12]  964 	add	a,#0x04
      002F43 F8               [12]  965 	mov	r0,a
      002F44 74 02            [12]  966 	mov	a,#0x02
      002F46 2A               [12]  967 	add	a,r2
      002F47 F6               [12]  968 	mov	@r0,a
      002F48 E4               [12]  969 	clr	a
      002F49 3B               [12]  970 	addc	a,r3
      002F4A 08               [12]  971 	inc	r0
      002F4B F6               [12]  972 	mov	@r0,a
      002F4C 08               [12]  973 	inc	r0
      002F4D A6 04            [24]  974 	mov	@r0,ar4
      002F4F E5 0C            [12]  975 	mov	a,_bp
      002F51 24 0A            [12]  976 	add	a,#0x0a
      002F53 F8               [12]  977 	mov	r0,a
      002F54 E5 0C            [12]  978 	mov	a,_bp
      002F56 24 07            [12]  979 	add	a,#0x07
      002F58 F9               [12]  980 	mov	r1,a
      002F59 74 02            [12]  981 	mov	a,#0x02
      002F5B 26               [12]  982 	add	a,@r0
      002F5C F7               [12]  983 	mov	@r1,a
      002F5D E4               [12]  984 	clr	a
      002F5E 08               [12]  985 	inc	r0
      002F5F 36               [12]  986 	addc	a,@r0
      002F60 09               [12]  987 	inc	r1
      002F61 F7               [12]  988 	mov	@r1,a
      002F62 08               [12]  989 	inc	r0
      002F63 09               [12]  990 	inc	r1
      002F64 E6               [12]  991 	mov	a,@r0
      002F65 F7               [12]  992 	mov	@r1,a
      002F66 E5 0C            [12]  993 	mov	a,_bp
      002F68 24 07            [12]  994 	add	a,#0x07
      002F6A F8               [12]  995 	mov	r0,a
      002F6B 86 82            [24]  996 	mov	dpl,@r0
      002F6D 08               [12]  997 	inc	r0
      002F6E 86 83            [24]  998 	mov	dph,@r0
      002F70 08               [12]  999 	inc	r0
      002F71 86 F0            [24] 1000 	mov	b,@r0
      002F73 12 70 5A         [24] 1001 	lcall	__gptrget
      002F76 FD               [12] 1002 	mov	r5,a
      002F77 A3               [24] 1003 	inc	dptr
      002F78 12 70 5A         [24] 1004 	lcall	__gptrget
      002F7B FE               [12] 1005 	mov	r6,a
      002F7C A3               [24] 1006 	inc	dptr
      002F7D 12 70 5A         [24] 1007 	lcall	__gptrget
      002F80 FF               [12] 1008 	mov	r7,a
      002F81 E5 0C            [12] 1009 	mov	a,_bp
      002F83 24 04            [12] 1010 	add	a,#0x04
      002F85 F8               [12] 1011 	mov	r0,a
      002F86 86 82            [24] 1012 	mov	dpl,@r0
      002F88 08               [12] 1013 	inc	r0
      002F89 86 83            [24] 1014 	mov	dph,@r0
      002F8B 08               [12] 1015 	inc	r0
      002F8C 86 F0            [24] 1016 	mov	b,@r0
      002F8E ED               [12] 1017 	mov	a,r5
      002F8F 12 66 A0         [24] 1018 	lcall	__gptrput
      002F92 A3               [24] 1019 	inc	dptr
      002F93 EE               [12] 1020 	mov	a,r6
      002F94 12 66 A0         [24] 1021 	lcall	__gptrput
      002F97 A3               [24] 1022 	inc	dptr
      002F98 EF               [12] 1023 	mov	a,r7
      002F99 12 66 A0         [24] 1024 	lcall	__gptrput
                           0003BF  1025 	C$list.c$158$1_0$53 ==.
                                   1026 ;	src/FreeRTOS/list.c:158: pxNewListItem->pxNext->pxPrevious = pxNewListItem;
      002F9C 74 05            [12] 1027 	mov	a,#0x05
      002F9E 2D               [12] 1028 	add	a,r5
      002F9F FD               [12] 1029 	mov	r5,a
      002FA0 E4               [12] 1030 	clr	a
      002FA1 3E               [12] 1031 	addc	a,r6
      002FA2 FE               [12] 1032 	mov	r6,a
      002FA3 8D 82            [24] 1033 	mov	dpl,r5
      002FA5 8E 83            [24] 1034 	mov	dph,r6
      002FA7 8F F0            [24] 1035 	mov	b,r7
      002FA9 EA               [12] 1036 	mov	a,r2
      002FAA 12 66 A0         [24] 1037 	lcall	__gptrput
      002FAD A3               [24] 1038 	inc	dptr
      002FAE EB               [12] 1039 	mov	a,r3
      002FAF 12 66 A0         [24] 1040 	lcall	__gptrput
      002FB2 A3               [24] 1041 	inc	dptr
      002FB3 EC               [12] 1042 	mov	a,r4
      002FB4 12 66 A0         [24] 1043 	lcall	__gptrput
                           0003DA  1044 	C$list.c$159$1_0$53 ==.
                                   1045 ;	src/FreeRTOS/list.c:159: pxNewListItem->pxPrevious = pxIterator;
      002FB7 74 05            [12] 1046 	mov	a,#0x05
      002FB9 2A               [12] 1047 	add	a,r2
      002FBA FD               [12] 1048 	mov	r5,a
      002FBB E4               [12] 1049 	clr	a
      002FBC 3B               [12] 1050 	addc	a,r3
      002FBD FE               [12] 1051 	mov	r6,a
      002FBE 8C 07            [24] 1052 	mov	ar7,r4
      002FC0 8D 82            [24] 1053 	mov	dpl,r5
      002FC2 8E 83            [24] 1054 	mov	dph,r6
      002FC4 8F F0            [24] 1055 	mov	b,r7
      002FC6 E5 0C            [12] 1056 	mov	a,_bp
      002FC8 24 0A            [12] 1057 	add	a,#0x0a
      002FCA F8               [12] 1058 	mov	r0,a
      002FCB E6               [12] 1059 	mov	a,@r0
      002FCC 12 66 A0         [24] 1060 	lcall	__gptrput
      002FCF A3               [24] 1061 	inc	dptr
      002FD0 08               [12] 1062 	inc	r0
      002FD1 E6               [12] 1063 	mov	a,@r0
      002FD2 12 66 A0         [24] 1064 	lcall	__gptrput
      002FD5 A3               [24] 1065 	inc	dptr
      002FD6 08               [12] 1066 	inc	r0
      002FD7 E6               [12] 1067 	mov	a,@r0
      002FD8 12 66 A0         [24] 1068 	lcall	__gptrput
                           0003FE  1069 	C$list.c$160$1_0$53 ==.
                                   1070 ;	src/FreeRTOS/list.c:160: pxIterator->pxNext = pxNewListItem;
      002FDB E5 0C            [12] 1071 	mov	a,_bp
      002FDD 24 07            [12] 1072 	add	a,#0x07
      002FDF F8               [12] 1073 	mov	r0,a
      002FE0 86 82            [24] 1074 	mov	dpl,@r0
      002FE2 08               [12] 1075 	inc	r0
      002FE3 86 83            [24] 1076 	mov	dph,@r0
      002FE5 08               [12] 1077 	inc	r0
      002FE6 86 F0            [24] 1078 	mov	b,@r0
      002FE8 EA               [12] 1079 	mov	a,r2
      002FE9 12 66 A0         [24] 1080 	lcall	__gptrput
      002FEC A3               [24] 1081 	inc	dptr
      002FED EB               [12] 1082 	mov	a,r3
      002FEE 12 66 A0         [24] 1083 	lcall	__gptrput
      002FF1 A3               [24] 1084 	inc	dptr
      002FF2 EC               [12] 1085 	mov	a,r4
      002FF3 12 66 A0         [24] 1086 	lcall	__gptrput
                           000419  1087 	C$list.c$164$1_0$53 ==.
                                   1088 ;	src/FreeRTOS/list.c:164: pxNewListItem->pxContainer = pxList;
      002FF6 74 0B            [12] 1089 	mov	a,#0x0b
      002FF8 2A               [12] 1090 	add	a,r2
      002FF9 FA               [12] 1091 	mov	r2,a
      002FFA E4               [12] 1092 	clr	a
      002FFB 3B               [12] 1093 	addc	a,r3
      002FFC FB               [12] 1094 	mov	r3,a
      002FFD 8A 82            [24] 1095 	mov	dpl,r2
      002FFF 8B 83            [24] 1096 	mov	dph,r3
      003001 8C F0            [24] 1097 	mov	b,r4
      003003 A8 0C            [24] 1098 	mov	r0,_bp
      003005 08               [12] 1099 	inc	r0
      003006 E6               [12] 1100 	mov	a,@r0
      003007 12 66 A0         [24] 1101 	lcall	__gptrput
      00300A A3               [24] 1102 	inc	dptr
      00300B 08               [12] 1103 	inc	r0
      00300C E6               [12] 1104 	mov	a,@r0
      00300D 12 66 A0         [24] 1105 	lcall	__gptrput
      003010 A3               [24] 1106 	inc	dptr
      003011 08               [12] 1107 	inc	r0
      003012 E6               [12] 1108 	mov	a,@r0
      003013 12 66 A0         [24] 1109 	lcall	__gptrput
                           000439  1110 	C$list.c$166$1_0$53 ==.
                                   1111 ;	src/FreeRTOS/list.c:166: ( pxList->uxNumberOfItems )++;
      003016 A8 0C            [24] 1112 	mov	r0,_bp
      003018 08               [12] 1113 	inc	r0
      003019 86 82            [24] 1114 	mov	dpl,@r0
      00301B 08               [12] 1115 	inc	r0
      00301C 86 83            [24] 1116 	mov	dph,@r0
      00301E 08               [12] 1117 	inc	r0
      00301F 86 F0            [24] 1118 	mov	b,@r0
      003021 12 70 5A         [24] 1119 	lcall	__gptrget
      003024 FF               [12] 1120 	mov	r7,a
      003025 0F               [12] 1121 	inc	r7
      003026 A8 0C            [24] 1122 	mov	r0,_bp
      003028 08               [12] 1123 	inc	r0
      003029 86 82            [24] 1124 	mov	dpl,@r0
      00302B 08               [12] 1125 	inc	r0
      00302C 86 83            [24] 1126 	mov	dph,@r0
      00302E 08               [12] 1127 	inc	r0
      00302F 86 F0            [24] 1128 	mov	b,@r0
      003031 EF               [12] 1129 	mov	a,r7
      003032 12 66 A0         [24] 1130 	lcall	__gptrput
                           000458  1131 	C$list.c$167$1_0$53 ==.
                                   1132 ;	src/FreeRTOS/list.c:167: }
      003035 85 0C 81         [24] 1133 	mov	sp,_bp
      003038 D0 0C            [24] 1134 	pop	_bp
                           00045D  1135 	C$list.c$167$1_0$53 ==.
                           00045D  1136 	XG$vListInsert$0$0 ==.
      00303A 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'uxListRemove'
                                   1140 ;------------------------------------------------------------
                                   1141 ;pxItemToRemove            Allocated to stack - _bp +1
                                   1142 ;pxList                    Allocated to stack - _bp +13
                                   1143 ;sloc0                     Allocated to stack - _bp +4
                                   1144 ;sloc1                     Allocated to stack - _bp +7
                                   1145 ;sloc2                     Allocated to stack - _bp +10
                                   1146 ;------------------------------------------------------------
                           00045E  1147 	G$uxListRemove$0$0 ==.
                           00045E  1148 	C$list.c$170$1_0$59 ==.
                                   1149 ;	src/FreeRTOS/list.c:170: UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function uxListRemove
                                   1152 ;	-----------------------------------------
      00303B                       1153 _uxListRemove:
      00303B C0 0C            [24] 1154 	push	_bp
      00303D 85 81 0C         [24] 1155 	mov	_bp,sp
      003040 C0 82            [24] 1156 	push	dpl
      003042 C0 83            [24] 1157 	push	dph
      003044 C0 F0            [24] 1158 	push	b
      003046 E5 81            [12] 1159 	mov	a,sp
      003048 24 0C            [12] 1160 	add	a,#0x0c
      00304A F5 81            [12] 1161 	mov	sp,a
                           00046F  1162 	C$list.c$174$1_0$59 ==.
                                   1163 ;	src/FreeRTOS/list.c:174: List_t * const pxList = pxItemToRemove->pxContainer;
      00304C A8 0C            [24] 1164 	mov	r0,_bp
      00304E 08               [12] 1165 	inc	r0
      00304F 74 0B            [12] 1166 	mov	a,#0x0b
      003051 26               [12] 1167 	add	a,@r0
      003052 FA               [12] 1168 	mov	r2,a
      003053 E4               [12] 1169 	clr	a
      003054 08               [12] 1170 	inc	r0
      003055 36               [12] 1171 	addc	a,@r0
      003056 FB               [12] 1172 	mov	r3,a
      003057 08               [12] 1173 	inc	r0
      003058 86 04            [24] 1174 	mov	ar4,@r0
      00305A 8A 82            [24] 1175 	mov	dpl,r2
      00305C 8B 83            [24] 1176 	mov	dph,r3
      00305E 8C F0            [24] 1177 	mov	b,r4
      003060 E5 0C            [12] 1178 	mov	a,_bp
      003062 24 0D            [12] 1179 	add	a,#0x0d
      003064 F8               [12] 1180 	mov	r0,a
      003065 12 70 5A         [24] 1181 	lcall	__gptrget
      003068 F6               [12] 1182 	mov	@r0,a
      003069 A3               [24] 1183 	inc	dptr
      00306A 12 70 5A         [24] 1184 	lcall	__gptrget
      00306D 08               [12] 1185 	inc	r0
      00306E F6               [12] 1186 	mov	@r0,a
      00306F A3               [24] 1187 	inc	dptr
      003070 12 70 5A         [24] 1188 	lcall	__gptrget
      003073 08               [12] 1189 	inc	r0
      003074 F6               [12] 1190 	mov	@r0,a
                           000498  1191 	C$list.c$176$1_0$59 ==.
                                   1192 ;	src/FreeRTOS/list.c:176: pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
      003075 A8 0C            [24] 1193 	mov	r0,_bp
      003077 08               [12] 1194 	inc	r0
      003078 E5 0C            [12] 1195 	mov	a,_bp
      00307A 24 04            [12] 1196 	add	a,#0x04
      00307C F9               [12] 1197 	mov	r1,a
      00307D 74 02            [12] 1198 	mov	a,#0x02
      00307F 26               [12] 1199 	add	a,@r0
      003080 F7               [12] 1200 	mov	@r1,a
      003081 E4               [12] 1201 	clr	a
      003082 08               [12] 1202 	inc	r0
      003083 36               [12] 1203 	addc	a,@r0
      003084 09               [12] 1204 	inc	r1
      003085 F7               [12] 1205 	mov	@r1,a
      003086 08               [12] 1206 	inc	r0
      003087 09               [12] 1207 	inc	r1
      003088 E6               [12] 1208 	mov	a,@r0
      003089 F7               [12] 1209 	mov	@r1,a
      00308A E5 0C            [12] 1210 	mov	a,_bp
      00308C 24 04            [12] 1211 	add	a,#0x04
      00308E F8               [12] 1212 	mov	r0,a
      00308F 86 82            [24] 1213 	mov	dpl,@r0
      003091 08               [12] 1214 	inc	r0
      003092 86 83            [24] 1215 	mov	dph,@r0
      003094 08               [12] 1216 	inc	r0
      003095 86 F0            [24] 1217 	mov	b,@r0
      003097 12 70 5A         [24] 1218 	lcall	__gptrget
      00309A FD               [12] 1219 	mov	r5,a
      00309B A3               [24] 1220 	inc	dptr
      00309C 12 70 5A         [24] 1221 	lcall	__gptrget
      00309F FE               [12] 1222 	mov	r6,a
      0030A0 A3               [24] 1223 	inc	dptr
      0030A1 12 70 5A         [24] 1224 	lcall	__gptrget
      0030A4 FF               [12] 1225 	mov	r7,a
      0030A5 E5 0C            [12] 1226 	mov	a,_bp
      0030A7 24 0A            [12] 1227 	add	a,#0x0a
      0030A9 F8               [12] 1228 	mov	r0,a
      0030AA 74 05            [12] 1229 	mov	a,#0x05
      0030AC 2D               [12] 1230 	add	a,r5
      0030AD F6               [12] 1231 	mov	@r0,a
      0030AE E4               [12] 1232 	clr	a
      0030AF 3E               [12] 1233 	addc	a,r6
      0030B0 08               [12] 1234 	inc	r0
      0030B1 F6               [12] 1235 	mov	@r0,a
      0030B2 08               [12] 1236 	inc	r0
      0030B3 A6 07            [24] 1237 	mov	@r0,ar7
      0030B5 A8 0C            [24] 1238 	mov	r0,_bp
      0030B7 08               [12] 1239 	inc	r0
      0030B8 E5 0C            [12] 1240 	mov	a,_bp
      0030BA 24 07            [12] 1241 	add	a,#0x07
      0030BC F9               [12] 1242 	mov	r1,a
      0030BD 74 05            [12] 1243 	mov	a,#0x05
      0030BF 26               [12] 1244 	add	a,@r0
      0030C0 F7               [12] 1245 	mov	@r1,a
      0030C1 E4               [12] 1246 	clr	a
      0030C2 08               [12] 1247 	inc	r0
      0030C3 36               [12] 1248 	addc	a,@r0
      0030C4 09               [12] 1249 	inc	r1
      0030C5 F7               [12] 1250 	mov	@r1,a
      0030C6 08               [12] 1251 	inc	r0
      0030C7 09               [12] 1252 	inc	r1
      0030C8 E6               [12] 1253 	mov	a,@r0
      0030C9 F7               [12] 1254 	mov	@r1,a
      0030CA E5 0C            [12] 1255 	mov	a,_bp
      0030CC 24 07            [12] 1256 	add	a,#0x07
      0030CE F8               [12] 1257 	mov	r0,a
      0030CF 86 82            [24] 1258 	mov	dpl,@r0
      0030D1 08               [12] 1259 	inc	r0
      0030D2 86 83            [24] 1260 	mov	dph,@r0
      0030D4 08               [12] 1261 	inc	r0
      0030D5 86 F0            [24] 1262 	mov	b,@r0
      0030D7 12 70 5A         [24] 1263 	lcall	__gptrget
      0030DA FD               [12] 1264 	mov	r5,a
      0030DB A3               [24] 1265 	inc	dptr
      0030DC 12 70 5A         [24] 1266 	lcall	__gptrget
      0030DF FE               [12] 1267 	mov	r6,a
      0030E0 A3               [24] 1268 	inc	dptr
      0030E1 12 70 5A         [24] 1269 	lcall	__gptrget
      0030E4 FF               [12] 1270 	mov	r7,a
      0030E5 E5 0C            [12] 1271 	mov	a,_bp
      0030E7 24 0A            [12] 1272 	add	a,#0x0a
      0030E9 F8               [12] 1273 	mov	r0,a
      0030EA 86 82            [24] 1274 	mov	dpl,@r0
      0030EC 08               [12] 1275 	inc	r0
      0030ED 86 83            [24] 1276 	mov	dph,@r0
      0030EF 08               [12] 1277 	inc	r0
      0030F0 86 F0            [24] 1278 	mov	b,@r0
      0030F2 ED               [12] 1279 	mov	a,r5
      0030F3 12 66 A0         [24] 1280 	lcall	__gptrput
      0030F6 A3               [24] 1281 	inc	dptr
      0030F7 EE               [12] 1282 	mov	a,r6
      0030F8 12 66 A0         [24] 1283 	lcall	__gptrput
      0030FB A3               [24] 1284 	inc	dptr
      0030FC EF               [12] 1285 	mov	a,r7
      0030FD 12 66 A0         [24] 1286 	lcall	__gptrput
                           000523  1287 	C$list.c$177$1_0$59 ==.
                                   1288 ;	src/FreeRTOS/list.c:177: pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
      003100 E5 0C            [12] 1289 	mov	a,_bp
      003102 24 07            [12] 1290 	add	a,#0x07
      003104 F8               [12] 1291 	mov	r0,a
      003105 86 82            [24] 1292 	mov	dpl,@r0
      003107 08               [12] 1293 	inc	r0
      003108 86 83            [24] 1294 	mov	dph,@r0
      00310A 08               [12] 1295 	inc	r0
      00310B 86 F0            [24] 1296 	mov	b,@r0
      00310D 12 70 5A         [24] 1297 	lcall	__gptrget
      003110 FD               [12] 1298 	mov	r5,a
      003111 A3               [24] 1299 	inc	dptr
      003112 12 70 5A         [24] 1300 	lcall	__gptrget
      003115 FE               [12] 1301 	mov	r6,a
      003116 A3               [24] 1302 	inc	dptr
      003117 12 70 5A         [24] 1303 	lcall	__gptrget
      00311A FF               [12] 1304 	mov	r7,a
      00311B E5 0C            [12] 1305 	mov	a,_bp
      00311D 24 0A            [12] 1306 	add	a,#0x0a
      00311F F8               [12] 1307 	mov	r0,a
      003120 74 02            [12] 1308 	mov	a,#0x02
      003122 2D               [12] 1309 	add	a,r5
      003123 F6               [12] 1310 	mov	@r0,a
      003124 E4               [12] 1311 	clr	a
      003125 3E               [12] 1312 	addc	a,r6
      003126 08               [12] 1313 	inc	r0
      003127 F6               [12] 1314 	mov	@r0,a
      003128 08               [12] 1315 	inc	r0
      003129 A6 07            [24] 1316 	mov	@r0,ar7
      00312B E5 0C            [12] 1317 	mov	a,_bp
      00312D 24 04            [12] 1318 	add	a,#0x04
      00312F F8               [12] 1319 	mov	r0,a
      003130 86 82            [24] 1320 	mov	dpl,@r0
      003132 08               [12] 1321 	inc	r0
      003133 86 83            [24] 1322 	mov	dph,@r0
      003135 08               [12] 1323 	inc	r0
      003136 86 F0            [24] 1324 	mov	b,@r0
      003138 12 70 5A         [24] 1325 	lcall	__gptrget
      00313B FD               [12] 1326 	mov	r5,a
      00313C A3               [24] 1327 	inc	dptr
      00313D 12 70 5A         [24] 1328 	lcall	__gptrget
      003140 FE               [12] 1329 	mov	r6,a
      003141 A3               [24] 1330 	inc	dptr
      003142 12 70 5A         [24] 1331 	lcall	__gptrget
      003145 FF               [12] 1332 	mov	r7,a
      003146 E5 0C            [12] 1333 	mov	a,_bp
      003148 24 0A            [12] 1334 	add	a,#0x0a
      00314A F8               [12] 1335 	mov	r0,a
      00314B 86 82            [24] 1336 	mov	dpl,@r0
      00314D 08               [12] 1337 	inc	r0
      00314E 86 83            [24] 1338 	mov	dph,@r0
      003150 08               [12] 1339 	inc	r0
      003151 86 F0            [24] 1340 	mov	b,@r0
      003153 ED               [12] 1341 	mov	a,r5
      003154 12 66 A0         [24] 1342 	lcall	__gptrput
      003157 A3               [24] 1343 	inc	dptr
      003158 EE               [12] 1344 	mov	a,r6
      003159 12 66 A0         [24] 1345 	lcall	__gptrput
      00315C A3               [24] 1346 	inc	dptr
      00315D EF               [12] 1347 	mov	a,r7
      00315E 12 66 A0         [24] 1348 	lcall	__gptrput
                           000584  1349 	C$list.c$183$1_0$59 ==.
                                   1350 ;	src/FreeRTOS/list.c:183: if( pxList->pxIndex == pxItemToRemove )
      003161 E5 0C            [12] 1351 	mov	a,_bp
      003163 24 0D            [12] 1352 	add	a,#0x0d
      003165 F8               [12] 1353 	mov	r0,a
      003166 E5 0C            [12] 1354 	mov	a,_bp
      003168 24 0A            [12] 1355 	add	a,#0x0a
      00316A F9               [12] 1356 	mov	r1,a
      00316B 74 01            [12] 1357 	mov	a,#0x01
      00316D 26               [12] 1358 	add	a,@r0
      00316E F7               [12] 1359 	mov	@r1,a
      00316F E4               [12] 1360 	clr	a
      003170 08               [12] 1361 	inc	r0
      003171 36               [12] 1362 	addc	a,@r0
      003172 09               [12] 1363 	inc	r1
      003173 F7               [12] 1364 	mov	@r1,a
      003174 08               [12] 1365 	inc	r0
      003175 09               [12] 1366 	inc	r1
      003176 E6               [12] 1367 	mov	a,@r0
      003177 F7               [12] 1368 	mov	@r1,a
      003178 E5 0C            [12] 1369 	mov	a,_bp
      00317A 24 0A            [12] 1370 	add	a,#0x0a
      00317C F8               [12] 1371 	mov	r0,a
      00317D 86 82            [24] 1372 	mov	dpl,@r0
      00317F 08               [12] 1373 	inc	r0
      003180 86 83            [24] 1374 	mov	dph,@r0
      003182 08               [12] 1375 	inc	r0
      003183 86 F0            [24] 1376 	mov	b,@r0
      003185 12 70 5A         [24] 1377 	lcall	__gptrget
      003188 FD               [12] 1378 	mov	r5,a
      003189 A3               [24] 1379 	inc	dptr
      00318A 12 70 5A         [24] 1380 	lcall	__gptrget
      00318D FE               [12] 1381 	mov	r6,a
      00318E A3               [24] 1382 	inc	dptr
      00318F 12 70 5A         [24] 1383 	lcall	__gptrget
      003192 FF               [12] 1384 	mov	r7,a
      003193 A8 0C            [24] 1385 	mov	r0,_bp
      003195 08               [12] 1386 	inc	r0
      003196 C0 05            [24] 1387 	push	ar5
      003198 C0 06            [24] 1388 	push	ar6
      00319A C0 07            [24] 1389 	push	ar7
      00319C 86 82            [24] 1390 	mov	dpl,@r0
      00319E 08               [12] 1391 	inc	r0
      00319F 86 83            [24] 1392 	mov	dph,@r0
      0031A1 08               [12] 1393 	inc	r0
      0031A2 86 F0            [24] 1394 	mov	b,@r0
      0031A4 12 00 11         [24] 1395 	lcall	___gptr_cmp
      0031A7 15 81            [12] 1396 	dec	sp
      0031A9 15 81            [12] 1397 	dec	sp
      0031AB 15 81            [12] 1398 	dec	sp
      0031AD 60 02            [24] 1399 	jz	00110$
      0031AF 80 36            [24] 1400 	sjmp	00102$
      0031B1                       1401 00110$:
                           0005D4  1402 	C$list.c$185$2_0$60 ==.
                                   1403 ;	src/FreeRTOS/list.c:185: pxList->pxIndex = pxItemToRemove->pxPrevious;
      0031B1 E5 0C            [12] 1404 	mov	a,_bp
      0031B3 24 07            [12] 1405 	add	a,#0x07
      0031B5 F8               [12] 1406 	mov	r0,a
      0031B6 86 82            [24] 1407 	mov	dpl,@r0
      0031B8 08               [12] 1408 	inc	r0
      0031B9 86 83            [24] 1409 	mov	dph,@r0
      0031BB 08               [12] 1410 	inc	r0
      0031BC 86 F0            [24] 1411 	mov	b,@r0
      0031BE 12 70 5A         [24] 1412 	lcall	__gptrget
      0031C1 FD               [12] 1413 	mov	r5,a
      0031C2 A3               [24] 1414 	inc	dptr
      0031C3 12 70 5A         [24] 1415 	lcall	__gptrget
      0031C6 FE               [12] 1416 	mov	r6,a
      0031C7 A3               [24] 1417 	inc	dptr
      0031C8 12 70 5A         [24] 1418 	lcall	__gptrget
      0031CB FF               [12] 1419 	mov	r7,a
      0031CC E5 0C            [12] 1420 	mov	a,_bp
      0031CE 24 0A            [12] 1421 	add	a,#0x0a
      0031D0 F8               [12] 1422 	mov	r0,a
      0031D1 86 82            [24] 1423 	mov	dpl,@r0
      0031D3 08               [12] 1424 	inc	r0
      0031D4 86 83            [24] 1425 	mov	dph,@r0
      0031D6 08               [12] 1426 	inc	r0
      0031D7 86 F0            [24] 1427 	mov	b,@r0
      0031D9 ED               [12] 1428 	mov	a,r5
      0031DA 12 66 A0         [24] 1429 	lcall	__gptrput
      0031DD A3               [24] 1430 	inc	dptr
      0031DE EE               [12] 1431 	mov	a,r6
      0031DF 12 66 A0         [24] 1432 	lcall	__gptrput
      0031E2 A3               [24] 1433 	inc	dptr
      0031E3 EF               [12] 1434 	mov	a,r7
      0031E4 12 66 A0         [24] 1435 	lcall	__gptrput
      0031E7                       1436 00102$:
                           00060A  1437 	C$list.c$192$1_0$59 ==.
                                   1438 ;	src/FreeRTOS/list.c:192: pxItemToRemove->pxContainer = NULL;
      0031E7 8A 82            [24] 1439 	mov	dpl,r2
      0031E9 8B 83            [24] 1440 	mov	dph,r3
      0031EB 8C F0            [24] 1441 	mov	b,r4
      0031ED E4               [12] 1442 	clr	a
      0031EE 12 66 A0         [24] 1443 	lcall	__gptrput
      0031F1 A3               [24] 1444 	inc	dptr
      0031F2 12 66 A0         [24] 1445 	lcall	__gptrput
      0031F5 A3               [24] 1446 	inc	dptr
      0031F6 12 66 A0         [24] 1447 	lcall	__gptrput
                           00061C  1448 	C$list.c$193$1_0$59 ==.
                                   1449 ;	src/FreeRTOS/list.c:193: ( pxList->uxNumberOfItems )--;
      0031F9 E5 0C            [12] 1450 	mov	a,_bp
      0031FB 24 0D            [12] 1451 	add	a,#0x0d
      0031FD F8               [12] 1452 	mov	r0,a
      0031FE 86 82            [24] 1453 	mov	dpl,@r0
      003200 08               [12] 1454 	inc	r0
      003201 86 83            [24] 1455 	mov	dph,@r0
      003203 08               [12] 1456 	inc	r0
      003204 86 F0            [24] 1457 	mov	b,@r0
      003206 12 70 5A         [24] 1458 	lcall	__gptrget
      003209 FF               [12] 1459 	mov	r7,a
      00320A 1F               [12] 1460 	dec	r7
      00320B E5 0C            [12] 1461 	mov	a,_bp
      00320D 24 0D            [12] 1462 	add	a,#0x0d
      00320F F8               [12] 1463 	mov	r0,a
      003210 86 82            [24] 1464 	mov	dpl,@r0
      003212 08               [12] 1465 	inc	r0
      003213 86 83            [24] 1466 	mov	dph,@r0
      003215 08               [12] 1467 	inc	r0
      003216 86 F0            [24] 1468 	mov	b,@r0
      003218 EF               [12] 1469 	mov	a,r7
      003219 12 66 A0         [24] 1470 	lcall	__gptrput
                           00063F  1471 	C$list.c$195$1_0$59 ==.
                                   1472 ;	src/FreeRTOS/list.c:195: return pxList->uxNumberOfItems;
      00321C E5 0C            [12] 1473 	mov	a,_bp
      00321E 24 0D            [12] 1474 	add	a,#0x0d
      003220 F8               [12] 1475 	mov	r0,a
      003221 86 82            [24] 1476 	mov	dpl,@r0
      003223 08               [12] 1477 	inc	r0
      003224 86 83            [24] 1478 	mov	dph,@r0
      003226 08               [12] 1479 	inc	r0
      003227 86 F0            [24] 1480 	mov	b,@r0
      003229 12 70 5A         [24] 1481 	lcall	__gptrget
      00322C F5 82            [12] 1482 	mov	dpl,a
                           000651  1483 	C$list.c$196$1_0$59 ==.
                                   1484 ;	src/FreeRTOS/list.c:196: }
      00322E 85 0C 81         [24] 1485 	mov	sp,_bp
      003231 D0 0C            [24] 1486 	pop	_bp
                           000656  1487 	C$list.c$196$1_0$59 ==.
                           000656  1488 	XG$uxListRemove$0$0 ==.
      003233 22               [24] 1489 	ret
                                   1490 	.area CSEG    (CODE)
                                   1491 	.area CONST   (CODE)
                                   1492 	.area CABS    (ABS,CODE)
