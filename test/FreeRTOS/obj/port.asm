;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module port
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getchar
	.globl _putchar
	.globl _vTaskSwitchContext
	.globl _xTaskIncrementTick
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EIRQ7
	.globl _EIRQ6
	.globl _EIRQ5
	.globl _EIRQ4
	.globl _EIRQ3
	.globl _EIRQ2
	.globl _EIRQ1
	.globl _EIRQ0
	.globl _T0CEN
	.globl _T0ARL
	.globl _T0IRQ
	.globl _RXRDY
	.globl _TXRDY
	.globl _RXIRQ
	.globl _TXIRQ
	.globl _EEX
	.globl _ET0
	.globl _ES
	.globl _EA
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _EXTINT
	.globl _T0CH
	.globl _T0CL
	.globl _T0H
	.globl _T0L
	.globl _TCON
	.globl _SBPH
	.globl _SBPL
	.globl _SBUF
	.globl _SCON
	.globl _IE
	.globl _DPL
	.globl _DPH
	.globl _SP
	.globl _PSW
	.globl _B
	.globl _ACC
	.globl _pxPortInitialiseStack
	.globl _xPortStartScheduler
	.globl _vPortEndScheduler
	.globl _vPortYield
	.globl _vTimer0ISR
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$SBPL$0_0$0 == 0x009a
_SBPL	=	0x009a
G$SBPH$0_0$0 == 0x009b
_SBPH	=	0x009b
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$T0L$0_0$0 == 0x008c
_T0L	=	0x008c
G$T0H$0_0$0 == 0x008d
_T0H	=	0x008d
G$T0CL$0_0$0 == 0x008e
_T0CL	=	0x008e
G$T0CH$0_0$0 == 0x008f
_T0CH	=	0x008f
G$EXTINT$0_0$0 == 0x00c0
_EXTINT	=	0x00c0
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EEX$0_0$0 == 0x00a8
_EEX	=	0x00a8
G$TXIRQ$0_0$0 == 0x009c
_TXIRQ	=	0x009c
G$RXIRQ$0_0$0 == 0x009d
_RXIRQ	=	0x009d
G$TXRDY$0_0$0 == 0x009c
_TXRDY	=	0x009c
G$RXRDY$0_0$0 == 0x009d
_RXRDY	=	0x009d
G$T0IRQ$0_0$0 == 0x0088
_T0IRQ	=	0x0088
G$T0ARL$0_0$0 == 0x008c
_T0ARL	=	0x008c
G$T0CEN$0_0$0 == 0x008d
_T0CEN	=	0x008d
G$EIRQ0$0_0$0 == 0x00c0
_EIRQ0	=	0x00c0
G$EIRQ1$0_0$0 == 0x00c1
_EIRQ1	=	0x00c1
G$EIRQ2$0_0$0 == 0x00c2
_EIRQ2	=	0x00c2
G$EIRQ3$0_0$0 == 0x00c3
_EIRQ3	=	0x00c3
G$EIRQ4$0_0$0 == 0x00c4
_EIRQ4	=	0x00c4
G$EIRQ5$0_0$0 == 0x00c5
_EIRQ5	=	0x00c5
G$EIRQ6$0_0$0 == 0x00c6
_EIRQ6	=	0x00c6
G$EIRQ7$0_0$0 == 0x00c7
_EIRQ7	=	0x00c7
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Fport$ucStackBytes$0_0$0==.
_ucStackBytes:
	.ds 1
Fport$pxXRAMStack$0_0$0==.
_pxXRAMStack:
	.ds 2
Fport$pxRAMStack$0_0$0==.
_pxRAMStack:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'pxPortInitialiseStack'
;------------------------------------------------------------
;pxCode                    Allocated to stack - _bp -4
;pvParameters              Allocated to stack - _bp -7
;pxTopOfStack              Allocated to registers r5 r6 r7 
;ulAddress                 Allocated to registers r2 r3 r4 r7 
;pxStartOfStack            Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$pxPortInitialiseStack$0$0 ==.
	C$port.c$213$0_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:213: StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
;	-----------------------------------------
;	 function pxPortInitialiseStack
;	-----------------------------------------
_pxPortInitialiseStack:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$port.c$219$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:219: pxStartOfStack = pxTopOfStack;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$port.c$220$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:220: pxTopOfStack++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	C$port.c$236$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:236: ulAddress = ( uint32_t ) pxCode;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x80
	mov	r7,#0x00
	C$port.c$237$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:237: *pxTopOfStack = ( StackType_t ) ulAddress;
	mov	ar6,r2
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	C$port.c$238$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:238: ulAddress >>= 8;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	C$port.c$239$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:239: pxTopOfStack++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	C$port.c$240$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:240: *pxTopOfStack = ( StackType_t ) ( ulAddress );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	C$port.c$241$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:241: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	C$port.c$244$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:244: *pxTopOfStack = 0xaa;	/* acc */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xaa
	lcall	__gptrput
	C$port.c$245$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:245: pxTopOfStack++;	
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
00104$:
	C$port.c$248$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:248: *pxTopOfStack = portGLOBAL_INTERRUPT_BIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x80
	lcall	__gptrput
	C$port.c$249$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:249: pxTopOfStack++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	C$port.c$253$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:253: ulAddress = ( uint32_t ) pvParameters;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r7,#0x00
	C$port.c$254$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:254: *pxTopOfStack = ( StackType_t ) ulAddress;	/* DPL */
	mov	ar6,r2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	C$port.c$255$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:255: ulAddress >>= 8;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	C$port.c$256$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:256: *pxTopOfStack++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	C$port.c$257$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:257: *pxTopOfStack = ( StackType_t ) ulAddress;	/* DPH */
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	C$port.c$258$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:258: ulAddress >>= 8;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	@r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	mov	@r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	C$port.c$259$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:259: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
00105$:
	C$port.c$260$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:260: *pxTopOfStack = ( StackType_t ) ulAddress;	/* b */
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	C$port.c$261$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:261: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00106$
	inc	r6
00106$:
	C$port.c$264$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:264: *pxTopOfStack = 0x02;	/* R2 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	C$port.c$265$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:265: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
00107$:
	C$port.c$266$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:266: *pxTopOfStack = 0x03;	/* R3 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	C$port.c$267$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:267: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00108$
	inc	r6
00108$:
	C$port.c$268$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:268: *pxTopOfStack = 0x04;	/* R4 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
	C$port.c$269$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:269: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
00109$:
	C$port.c$270$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:270: *pxTopOfStack = 0x05;	/* R5 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
	C$port.c$271$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:271: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
00110$:
	C$port.c$272$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:272: *pxTopOfStack = 0x06;	/* R6 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
	C$port.c$273$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:273: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	C$port.c$274$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:274: *pxTopOfStack = 0x07;	/* R7 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
	C$port.c$275$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:275: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00112$
	inc	r6
00112$:
	C$port.c$276$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:276: *pxTopOfStack = 0x00;	/* R0 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$port.c$277$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:277: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
00113$:
	C$port.c$278$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:278: *pxTopOfStack = 0x01;	/* R1 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	C$port.c$279$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:279: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	C$port.c$280$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:280: *pxTopOfStack = 0x00;	/* PSW */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$port.c$281$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:281: pxTopOfStack++;
	inc	r5
	cjne	r5,#0x00,00115$
	inc	r6
00115$:
	C$port.c$282$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:282: *pxTopOfStack = 0xbb;	/* BP */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xbb
	lcall	__gptrput
	C$port.c$288$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:288: *pxStartOfStack = ( StackType_t ) ( pxTopOfStack - pxStartOfStack );
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r5
	clr	c
	subb	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	C$port.c$292$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:292: return pxStartOfStack;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	C$port.c$293$1_0$98 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:293: }
	mov	sp,_bp
	pop	_bp
	C$port.c$293$1_0$98 ==.
	XG$pxPortInitialiseStack$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xPortStartScheduler'
;------------------------------------------------------------
	G$xPortStartScheduler$0$0 ==.
	C$port.c$299$1_0$100 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:299: BaseType_t xPortStartScheduler( void )
;	-----------------------------------------
;	 function xPortStartScheduler
;	-----------------------------------------
_xPortStartScheduler:
	C$port.c$302$1_0$100 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:302: prvSetupTimerInterrupt();	
	lcall	_prvSetupTimerInterrupt
	C$port.c$306$2_0$101 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:306: portCOPY_XRAM_TO_STACK();
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_pxXRAMStack,a
	inc	dptr
	lcall	__gptrget
	mov	(_pxXRAMStack + 1),a
	mov	_pxRAMStack,#0x0d
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	_ucStackBytes,a
00101$:
	inc	_pxXRAMStack
	clr	a
	cjne	a,_pxXRAMStack,00114$
	inc	(_pxXRAMStack + 1)
00114$:
	inc	_pxRAMStack
	mov	r1,_pxRAMStack
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	r7,a
	mov	@r1,a
	djnz	_ucStackBytes,00101$
	mov	_SP,_pxRAMStack
	C$port.c$307$2_0$103 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:307: portRESTORE_CONTEXT();
	pop _bp 
	pop PSW 
	pop ar1 
	pop ar0 
	pop ar7 
	pop ar6 
	pop ar5 
	pop ar4 
	pop ar3 
	pop ar2 
	pop b 
	pop DPH 
	pop DPL 
	pop ACC 
	JB ACC.7,0098$ 
	CLR IE.7 
	LJMP 0099$ 
	 0098$:
	SETB IE.7 
	 0099$:
	pop ACC 
	reti 
	C$port.c$310$1_0$100 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:310: return pdTRUE;
	mov	dpl,#0x01
	C$port.c$311$1_0$100 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:311: }
	C$port.c$311$1_0$100 ==.
	XG$xPortStartScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vPortEndScheduler'
;------------------------------------------------------------
	G$vPortEndScheduler$0$0 ==.
	C$port.c$314$1_0$106 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:314: void vPortEndScheduler( void )
;	-----------------------------------------
;	 function vPortEndScheduler
;	-----------------------------------------
_vPortEndScheduler:
	C$port.c$317$1_0$106 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:317: }
	C$port.c$317$1_0$106 ==.
	XG$vPortEndScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vPortYield'
;------------------------------------------------------------
	G$vPortYield$0$0 ==.
	C$port.c$324$1_0$108 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:324: void vPortYield( void ) __naked
;	-----------------------------------------
;	 function vPortYield
;	-----------------------------------------
_vPortYield:
;	naked function: no prologue.
	C$port.c$332$2_0$109 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:332: portSAVE_CONTEXT();
	push ACC 
	push IE 
	clr _EA 
	push DPL 
	push DPH 
	push b 
	push ar2 
	push ar3 
	push ar4 
	push ar5 
	push ar6 
	push ar7 
	push ar0 
	push ar1 
	push PSW 
	mov	_PSW,#0x00
	push _bp 
	C$port.c$333$2_0$110 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:333: portCOPY_STACK_TO_XRAM();
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_pxXRAMStack,a
	inc	dptr
	lcall	__gptrget
	mov	(_pxXRAMStack + 1),a
	mov	_pxRAMStack,#0x0e
	mov	a,_SP
	mov	r7,a
	add	a,#0xf3
	mov	_ucStackBytes,a
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	@dptr,a
00101$:
	mov	a,_ucStackBytes
	jz	00103$
	inc	_pxXRAMStack
	clr	a
	cjne	a,_pxXRAMStack,00126$
	inc	(_pxXRAMStack + 1)
00126$:
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	mov	r1,_pxRAMStack
	mov	a,@r1
	mov	r7,a
	movx	@dptr,a
	inc	_pxRAMStack
	dec	_ucStackBytes
	sjmp	00101$
00103$:
	C$port.c$336$1_0$108 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:336: vTaskSwitchContext();
	lcall	_vTaskSwitchContext
	C$port.c$340$2_0$112 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:340: portCOPY_XRAM_TO_STACK();
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_pxXRAMStack,a
	inc	dptr
	lcall	__gptrget
	mov	(_pxXRAMStack + 1),a
	mov	_pxRAMStack,#0x0d
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	_ucStackBytes,a
00104$:
	inc	_pxXRAMStack
	clr	a
	cjne	a,_pxXRAMStack,00127$
	inc	(_pxXRAMStack + 1)
00127$:
	inc	_pxRAMStack
	mov	r1,_pxRAMStack
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	r7,a
	mov	@r1,a
	djnz	_ucStackBytes,00104$
	mov	_SP,_pxRAMStack
	C$port.c$341$2_0$114 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:341: portRESTORE_CONTEXT();
	pop _bp 
	pop PSW 
	pop ar1 
	pop ar0 
	pop ar7 
	pop ar6 
	pop ar5 
	pop ar4 
	pop ar3 
	pop ar2 
	pop b 
	pop DPH 
	pop DPL 
	pop ACC 
	JB ACC.7,0098$ 
	CLR IE.7 
	LJMP 0099$ 
	 0098$:
	SETB IE.7 
	 0099$:
	pop ACC 
	reti 
	C$port.c$342$2_0$108 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:342: }
;	naked function: no epilogue.
	C$port.c$342$2_0$108 ==.
	XG$vPortYield$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'vTimer0ISR'
;------------------------------------------------------------
	G$vTimer0ISR$0$0 ==.
	C$port.c$346$2_0$116 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:346: void vTimer0ISR( void ) __interrupt(1) __naked
;	-----------------------------------------
;	 function vTimer0ISR
;	-----------------------------------------
_vTimer0ISR:
;	naked function: no prologue.
	C$port.c$352$2_0$117 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:352: portSAVE_CONTEXT();
	push ACC 
	push IE 
	clr _EA 
	push DPL 
	push DPH 
	push b 
	push ar2 
	push ar3 
	push ar4 
	push ar5 
	push ar6 
	push ar7 
	push ar0 
	push ar1 
	push PSW 
	mov	_PSW,#0x00
	push _bp 
	C$port.c$353$2_0$118 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:353: portCOPY_STACK_TO_XRAM();
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_pxXRAMStack,a
	inc	dptr
	lcall	__gptrget
	mov	(_pxXRAMStack + 1),a
	mov	_pxRAMStack,#0x0e
	mov	a,_SP
	mov	r7,a
	add	a,#0xf3
	mov	_ucStackBytes,a
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	@dptr,a
00101$:
	mov	a,_ucStackBytes
	jz	00103$
	inc	_pxXRAMStack
	clr	a
	cjne	a,_pxXRAMStack,00132$
	inc	(_pxXRAMStack + 1)
00132$:
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	mov	r1,_pxRAMStack
	mov	a,@r1
	mov	r7,a
	movx	@dptr,a
	inc	_pxRAMStack
	dec	_ucStackBytes
	sjmp	00101$
00103$:
	C$port.c$355$1_0$116 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:355: if( xTaskIncrementTick() != pdFALSE )
	lcall	_xTaskIncrementTick
	mov	a,dpl
	jz	00105$
	C$port.c$357$2_0$120 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:357: vTaskSwitchContext();
	lcall	_vTaskSwitchContext
00105$:
	C$port.c$360$1_0$116 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:360: portCLEAR_INTERRUPT_FLAG();
;	assignBit
	setb	_T0IRQ
	C$port.c$361$2_0$121 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:361: portCOPY_XRAM_TO_STACK();
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_pxXRAMStack,a
	inc	dptr
	lcall	__gptrget
	mov	(_pxXRAMStack + 1),a
	mov	_pxRAMStack,#0x0d
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	_ucStackBytes,a
00106$:
	inc	_pxXRAMStack
	clr	a
	cjne	a,_pxXRAMStack,00134$
	inc	(_pxXRAMStack + 1)
00134$:
	inc	_pxRAMStack
	mov	r1,_pxRAMStack
	mov	dpl,_pxXRAMStack
	mov	dph,(_pxXRAMStack + 1)
	movx	a,@dptr
	mov	r7,a
	mov	@r1,a
	djnz	_ucStackBytes,00106$
	mov	_SP,_pxRAMStack
	C$port.c$362$2_0$123 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:362: portRESTORE_CONTEXT();
	pop _bp 
	pop PSW 
	pop ar1 
	pop ar0 
	pop ar7 
	pop ar6 
	pop ar5 
	pop ar4 
	pop ar3 
	pop ar2 
	pop b 
	pop DPH 
	pop DPL 
	pop ACC 
	JB ACC.7,0098$ 
	CLR IE.7 
	LJMP 0099$ 
	 0098$:
	SETB IE.7 
	 0099$:
	pop ACC 
	reti 
	C$port.c$363$2_0$116 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:363: }
;	naked function: no epilogue.
	C$port.c$363$2_0$116 ==.
	XG$vTimer0ISR$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'prvSetupTimerInterrupt'
;------------------------------------------------------------
;ulTicksPerSecond          Allocated to registers 
;ulCaptureTime             Allocated to registers 
;ulCaptureValue            Allocated to registers 
;ucLowCaptureByte          Allocated to registers 
;ucHighCaptureByte         Allocated to registers 
;------------------------------------------------------------
	Fport$prvSetupTimerInterrupt$0$0 ==.
	C$port.c$376$2_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:376: static void prvSetupTimerInterrupt( void )
;	-----------------------------------------
;	 function prvSetupTimerInterrupt
;	-----------------------------------------
_prvSetupTimerInterrupt:
	C$port.c$387$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:387: T0CH = ucHighCaptureByte;
	mov	_T0CH,#0xfc
	C$port.c$388$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:388: T0CL = ucLowCaptureByte;
	mov	_T0CL,#0x18
	C$port.c$390$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:390: T0ARL = 1;
;	assignBit
	setb	_T0ARL
	C$port.c$391$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:391: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
;	assignBit
	setb	_T0IRQ
	C$port.c$394$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:394: ET0 = 1;
;	assignBit
	setb	_ET0
	C$port.c$396$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:396: EA = 1;
;	assignBit
	setb	_EA
	C$port.c$398$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:398: T0CEN = 1;
;	assignBit
	setb	_T0CEN
	C$port.c$400$1_0$125 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:400: }
	C$port.c$400$1_0$125 ==.
	XFport$prvSetupTimerInterrupt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$port.c$410$1_0$127 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:410: void putchar (char c) 
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$port.c$412$1_0$127 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:412: while (!TXRDY);
00101$:
	jnb	_TXRDY,00101$
	C$port.c$413$1_0$127 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:413: SBUF = c;
	mov	_SBUF,r7
	C$port.c$414$1_0$127 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:414: if( c == '\n' )
	cjne	r7,#0x0a,00109$
	C$port.c$416$2_0$128 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:416: while(!TXRDY);
00104$:
	jnb	_TXRDY,00104$
	C$port.c$417$2_0$128 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:417: SBUF = '\r';
	mov	_SBUF,#0x0d
00109$:
	C$port.c$419$1_0$127 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:419: }
	C$port.c$419$1_0$127 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$port.c$425$1_0$130 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:425: unsigned char getchar(void) 
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$port.c$429$1_0$130 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:429: while (!RXRDY);
00101$:
	jnb	_RXRDY,00101$
	C$port.c$430$1_0$130 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:430: c = SBUF;
	mov	r7,_SBUF
	C$port.c$432$1_0$130 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:432: return c;
	mov	dpl,r7
	C$port.c$433$1_0$130 ==.
;	src/FreeRTOS/portable/SDCC/light52/port.c:433: }
	C$port.c$433$1_0$130 ==.
	XG$getchar$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
