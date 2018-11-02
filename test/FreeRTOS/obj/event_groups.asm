;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module event_groups
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uxTaskResetEventItemValue
	.globl _vTaskRemoveFromUnorderedEventList
	.globl _vTaskPlaceOnUnorderedEventList
	.globl _xTaskResumeAll
	.globl _vTaskSuspendAll
	.globl _vListInitialise
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _vPortYield
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
	.globl _xEventGroupCreate
	.globl _xEventGroupSync
	.globl _xEventGroupWaitBits
	.globl _xEventGroupClearBits
	.globl _xEventGroupGetBitsFromISR
	.globl _xEventGroupSetBits
	.globl _vEventGroupDelete
	.globl _vEventGroupSetBitsCallback
	.globl _vEventGroupClearBitsCallback
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
;Allocation info for local variables in function 'xEventGroupCreate'
;------------------------------------------------------------
;pxEventBits               Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$xEventGroupCreate$0$0 ==.
	C$event_groups.c$145$0_0$129 ==.
;	src/FreeRTOS/event_groups.c:145: EventGroupHandle_t xEventGroupCreate( void )
;	-----------------------------------------
;	 function xEventGroupCreate
;	-----------------------------------------
_xEventGroupCreate:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$event_groups.c$162$1_0$129 ==.
;	src/FreeRTOS/event_groups.c:162: pxEventBits = ( EventGroup_t * ) pvPortMalloc( sizeof( EventGroup_t ) ); /*lint !e9087 !e9079 see comment above. */
	mov	dptr,#0x000e
	lcall	_pvPortMalloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$event_groups.c$164$1_0$129 ==.
;	src/FreeRTOS/event_groups.c:164: if( pxEventBits != NULL )
	mov	a,r5
	orl	a,r6
	jz	00102$
	C$event_groups.c$166$2_0$130 ==.
;	src/FreeRTOS/event_groups.c:166: pxEventBits->uxEventBits = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$event_groups.c$167$2_0$130 ==.
;	src/FreeRTOS/event_groups.c:167: vListInitialise( &( pxEventBits->xTasksWaitingForBits ) );
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_vListInitialise
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
	C$event_groups.c$185$1_0$129 ==.
;	src/FreeRTOS/event_groups.c:185: return pxEventBits;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	C$event_groups.c$186$1_0$129 ==.
;	src/FreeRTOS/event_groups.c:186: }
	C$event_groups.c$186$1_0$129 ==.
	XG$xEventGroupCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xEventGroupSync'
;------------------------------------------------------------
;uxBitsToSet               Allocated to stack - _bp -4
;uxBitsToWaitFor           Allocated to stack - _bp -6
;xTicksToWait              Allocated to stack - _bp -8
;xEventGroup               Allocated to stack - _bp +1
;uxOriginalBitValue        Allocated to registers r7 r6 
;uxReturn                  Allocated to stack - _bp +7
;pxEventBits               Allocated to stack - _bp +4
;xAlreadyYielded           Allocated to registers r7 
;xTimeoutOccurred          Allocated to registers 
;sloc0                     Allocated to stack - _bp +13
;------------------------------------------------------------
	G$xEventGroupSync$0$0 ==.
	C$event_groups.c$191$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:191: EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xEventGroupSync
;	-----------------------------------------
_xEventGroupSync:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	C$event_groups.c$194$2_0$133 ==.
;	src/FreeRTOS/event_groups.c:194: EventGroup_t *pxEventBits = xEventGroup;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$event_groups.c$206$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:206: vTaskSuspendAll();
	lcall	_vTaskSuspendAll
	C$event_groups.c$208$2_0$134 ==.
;	src/FreeRTOS/event_groups.c:208: uxOriginalBitValue = pxEventBits->uxEventBits;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	C$event_groups.c$210$2_0$134 ==.
;	src/FreeRTOS/event_groups.c:210: ( void ) xEventGroupSetBits( xEventGroup, uxBitsToSet );
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_xEventGroupSetBits
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$event_groups.c$212$2_0$134 ==.
;	src/FreeRTOS/event_groups.c:212: if( ( ( uxOriginalBitValue | uxBitsToSet ) & uxBitsToWaitFor ) == uxBitsToWaitFor )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	orl	a,r7
	mov	r2,a
	inc	r0
	mov	a,@r0
	orl	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00147$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00147$
	sjmp	00148$
00147$:
	sjmp	00105$
00148$:
	C$event_groups.c$215$3_0$135 ==.
;	src/FreeRTOS/event_groups.c:215: uxReturn = ( uxOriginalBitValue | uxBitsToSet );
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	orl	a,r7
	mov	r3,a
	inc	r0
	mov	a,@r0
	orl	a,r6
	mov	r4,a
	C$event_groups.c$219$3_0$135 ==.
;	src/FreeRTOS/event_groups.c:219: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r5,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r6,a
	mov	a,r5
	anl	ar2,a
	mov	a,r6
	anl	ar7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$event_groups.c$221$3_0$135 ==.
;	src/FreeRTOS/event_groups.c:221: xTicksToWait = 0;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	sjmp	00106$
00105$:
	C$event_groups.c$225$3_0$136 ==.
;	src/FreeRTOS/event_groups.c:225: if( xTicksToWait != ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
	C$event_groups.c$232$4_0$137 ==.
;	src/FreeRTOS/event_groups.c:232: vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | eventCLEAR_EVENTS_ON_EXIT_BIT | eventWAIT_FOR_ALL_BITS ), xTicksToWait );
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0x05
	inc	r0
	orl	a,@r0
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar4
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnUnorderedEventList
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$event_groups.c$238$4_0$137 ==.
;	src/FreeRTOS/event_groups.c:238: uxReturn = 0;
	mov	r3,#0x00
	mov	r4,#0x00
	sjmp	00106$
00102$:
	C$event_groups.c$244$4_0$138 ==.
;	src/FreeRTOS/event_groups.c:244: uxReturn = pxEventBits->uxEventBits;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$event_groups.c$245$2_0$134 ==.
;	src/FreeRTOS/event_groups.c:245: xTimeoutOccurred = pdTRUE;
00106$:
	C$event_groups.c$249$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:249: xAlreadyYielded = xTaskResumeAll();
	push	ar4
	push	ar3
	lcall	_xTaskResumeAll
	mov	r7,dpl
	pop	ar3
	pop	ar4
	C$event_groups.c$251$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:251: if( xTicksToWait != ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00150$
	ljmp	00114$
00150$:
	C$event_groups.c$253$2_0$139 ==.
;	src/FreeRTOS/event_groups.c:253: if( xAlreadyYielded == pdFALSE )
	mov	a,r7
	jnz	00108$
	C$event_groups.c$255$3_0$140 ==.
;	src/FreeRTOS/event_groups.c:255: portYIELD_WITHIN_API();
	lcall	_vPortYield
00108$:
	C$event_groups.c$266$2_0$139 ==.
;	src/FreeRTOS/event_groups.c:266: uxReturn = uxTaskResetEventItemValue();
	lcall	_uxTaskResetEventItemValue
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$event_groups.c$268$2_0$139 ==.
;	src/FreeRTOS/event_groups.c:268: if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	r0
	mov	a,@r0
	jnb	acc.1,00152$
	ljmp	00112$
00152$:
	C$event_groups.c$271$3_0$142 ==.
;	src/FreeRTOS/event_groups.c:271: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$event_groups.c$273$4_0$143 ==.
;	src/FreeRTOS/event_groups.c:273: uxReturn = pxEventBits->uxEventBits;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
	C$event_groups.c$279$4_0$143 ==.
;	src/FreeRTOS/event_groups.c:279: if( ( uxReturn & uxBitsToWaitFor ) == uxBitsToWaitFor )
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0xfa
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00153$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00153$
	sjmp	00154$
00153$:
	sjmp	00110$
00154$:
	C$event_groups.c$281$5_0$144 ==.
;	src/FreeRTOS/event_groups.c:281: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r6,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00110$:
	C$event_groups.c$288$3_0$142 ==.
;	src/FreeRTOS/event_groups.c:288: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$event_groups.c$290$2_0$139 ==.
;	src/FreeRTOS/event_groups.c:290: xTimeoutOccurred = pdTRUE;
00112$:
	C$event_groups.c$299$2_0$139 ==.
;	src/FreeRTOS/event_groups.c:299: uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
00114$:
	C$event_groups.c$307$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:307: return uxReturn;
	mov	dpl,r3
	mov	dph,r4
	C$event_groups.c$308$1_0$133 ==.
;	src/FreeRTOS/event_groups.c:308: }
	mov	sp,_bp
	pop	_bp
	C$event_groups.c$308$1_0$133 ==.
	XG$xEventGroupSync$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xEventGroupWaitBits'
;------------------------------------------------------------
;uxBitsToWaitFor           Allocated to stack - _bp -4
;xClearOnExit              Allocated to stack - _bp -5
;xWaitForAllBits           Allocated to stack - _bp -6
;xTicksToWait              Allocated to stack - _bp -8
;xEventGroup               Allocated to stack - _bp +1
;pxEventBits               Allocated to stack - _bp +4
;uxReturn                  Allocated to registers r6 r7 
;uxControlBits             Allocated to registers r7 r6 
;xWaitConditionMet         Allocated to registers r4 
;xAlreadyYielded           Allocated to registers r7 
;xTimeoutOccurred          Allocated to registers 
;uxCurrentEventBits        Allocated to registers r5 r2 
;sloc0                     Allocated to stack - _bp +16
;------------------------------------------------------------
	G$xEventGroupWaitBits$0$0 ==.
	C$event_groups.c$311$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:311: EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xEventGroupWaitBits
;	-----------------------------------------
_xEventGroupWaitBits:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
	C$event_groups.c$313$2_0$148 ==.
;	src/FreeRTOS/event_groups.c:313: EventGroup_t *pxEventBits = xEventGroup;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$event_groups.c$314$2_0$148 ==.
;	src/FreeRTOS/event_groups.c:314: EventBits_t uxReturn, uxControlBits = 0;
	mov	r7,#0x00
	mov	r6,#0x00
	C$event_groups.c$329$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:329: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	C$event_groups.c$331$2_0$149 ==.
;	src/FreeRTOS/event_groups.c:331: const EventBits_t uxCurrentEventBits = pxEventBits->uxEventBits;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	C$event_groups.c$334$2_0$149 ==.
;	src/FreeRTOS/event_groups.c:334: xWaitConditionMet = prvTestWaitCondition( uxCurrentEventBits, uxBitsToWaitFor, xWaitForAllBits );
	push	ar5
	push	ar2
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r2
	lcall	_prvTestWaitCondition
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	C$event_groups.c$336$2_0$149 ==.
;	src/FreeRTOS/event_groups.c:336: if( xWaitConditionMet != pdFALSE )
	mov	a,r4
	jz	00111$
	C$event_groups.c$340$3_0$150 ==.
;	src/FreeRTOS/event_groups.c:340: uxReturn = uxCurrentEventBits;
	mov	ar3,r5
	mov	ar4,r2
	C$event_groups.c$341$3_0$150 ==.
;	src/FreeRTOS/event_groups.c:341: xTicksToWait = ( TickType_t ) 0;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$event_groups.c$344$3_0$150 ==.
;	src/FreeRTOS/event_groups.c:344: if( xClearOnExit != pdFALSE )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00176$
	ljmp	00112$
00176$:
	C$event_groups.c$346$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:346: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r3,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	a,r3
	anl	ar2,a
	mov	a,r7
	anl	ar4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	pop	ar4
	pop	ar3
	sjmp	00112$
00111$:
	C$event_groups.c$353$2_0$149 ==.
;	src/FreeRTOS/event_groups.c:353: else if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	C$event_groups.c$357$3_0$153 ==.
;	src/FreeRTOS/event_groups.c:357: uxReturn = uxCurrentEventBits;
	mov	ar3,r5
	mov	ar4,r2
	C$event_groups.c$358$2_0$149 ==.
;	src/FreeRTOS/event_groups.c:358: xTimeoutOccurred = pdTRUE;
	sjmp	00112$
00108$:
	C$event_groups.c$366$3_0$154 ==.
;	src/FreeRTOS/event_groups.c:366: if( xClearOnExit != pdFALSE )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00104$
	C$event_groups.c$368$4_0$155 ==.
;	src/FreeRTOS/event_groups.c:368: uxControlBits |= eventCLEAR_EVENTS_ON_EXIT_BIT;
	mov	r7,#0x00
	mov	r6,#0x01
00104$:
	C$event_groups.c$375$3_0$154 ==.
;	src/FreeRTOS/event_groups.c:375: if( xWaitForAllBits != pdFALSE )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	jz	00106$
	C$event_groups.c$377$4_0$157 ==.
;	src/FreeRTOS/event_groups.c:377: uxControlBits |= eventWAIT_FOR_ALL_BITS;
	orl	ar6,#0x04
00106$:
	C$event_groups.c$387$3_0$154 ==.
;	src/FreeRTOS/event_groups.c:387: vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | uxControlBits ), xTicksToWait );
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r7
	orl	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar6
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnUnorderedEventList
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$event_groups.c$392$3_0$154 ==.
;	src/FreeRTOS/event_groups.c:392: uxReturn = 0;
	mov	r3,#0x00
	mov	r4,#0x00
00112$:
	C$event_groups.c$397$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:397: xAlreadyYielded = xTaskResumeAll();
	push	ar4
	push	ar3
	lcall	_xTaskResumeAll
	mov	r7,dpl
	pop	ar3
	pop	ar4
	C$event_groups.c$399$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:399: if( xTicksToWait != ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00180$
	ljmp	00122$
00180$:
	C$event_groups.c$401$2_0$159 ==.
;	src/FreeRTOS/event_groups.c:401: if( xAlreadyYielded == pdFALSE )
	mov	a,r7
	jnz	00114$
	C$event_groups.c$403$3_0$160 ==.
;	src/FreeRTOS/event_groups.c:403: portYIELD_WITHIN_API();
	lcall	_vPortYield
00114$:
	C$event_groups.c$414$2_0$159 ==.
;	src/FreeRTOS/event_groups.c:414: uxReturn = uxTaskResetEventItemValue();
	lcall	_uxTaskResetEventItemValue
	mov	r6,dpl
	C$event_groups.c$416$2_0$159 ==.
;	src/FreeRTOS/event_groups.c:416: if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
	mov	a,dph
	mov	r7,a
	jnb	acc.1,00182$
	ljmp	00120$
00182$:
	C$event_groups.c$418$3_0$162 ==.
;	src/FreeRTOS/event_groups.c:418: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$event_groups.c$421$4_0$163 ==.
;	src/FreeRTOS/event_groups.c:421: uxReturn = pxEventBits->uxEventBits;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$event_groups.c$425$4_0$163 ==.
;	src/FreeRTOS/event_groups.c:425: if( prvTestWaitCondition( uxReturn, uxBitsToWaitFor, xWaitForAllBits ) != pdFALSE )
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_prvTestWaitCondition
	mov	r5,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	a,r5
	jz	00118$
	C$event_groups.c$427$5_0$164 ==.
;	src/FreeRTOS/event_groups.c:427: if( xClearOnExit != pdFALSE )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00118$
	C$event_groups.c$429$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:429: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r6,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$event_groups.c$457$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:457: return uxReturn;
	pop	ar7
	pop	ar6
	C$event_groups.c$429$4_0$163 ==.
;	src/FreeRTOS/event_groups.c:429: pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
00118$:
	C$event_groups.c$442$3_0$162 ==.
;	src/FreeRTOS/event_groups.c:442: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
00120$:
	C$event_groups.c$450$2_0$159 ==.
;	src/FreeRTOS/event_groups.c:450: uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
	mov	ar3,r6
	mov	r4,#0x00
00122$:
	C$event_groups.c$457$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:457: return uxReturn;
	mov	dpl,r3
	mov	dph,r4
	C$event_groups.c$458$1_0$148 ==.
;	src/FreeRTOS/event_groups.c:458: }
	mov	sp,_bp
	pop	_bp
	C$event_groups.c$458$1_0$148 ==.
	XG$xEventGroupWaitBits$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xEventGroupClearBits'
;------------------------------------------------------------
;uxBitsToClear             Allocated to stack - _bp -4
;xEventGroup               Allocated to stack - _bp +1
;pxEventBits               Allocated to registers 
;uxReturn                  Allocated to registers r2 r4 
;------------------------------------------------------------
	G$xEventGroupClearBits$0$0 ==.
	C$event_groups.c$461$1_0$170 ==.
;	src/FreeRTOS/event_groups.c:461: EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
;	-----------------------------------------
;	 function xEventGroupClearBits
;	-----------------------------------------
_xEventGroupClearBits:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$event_groups.c$471$1_0$170 ==.
;	src/FreeRTOS/event_groups.c:471: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$event_groups.c$477$2_0$171 ==.
;	src/FreeRTOS/event_groups.c:477: uxReturn = pxEventBits->uxEventBits;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	ar2,r6
	mov	ar4,r5
	C$event_groups.c$480$2_0$171 ==.
;	src/FreeRTOS/event_groups.c:480: pxEventBits->uxEventBits &= ~uxBitsToClear;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r3,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	a,r6
	anl	ar3,a
	mov	a,r5
	anl	ar7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$event_groups.c$482$1_0$170 ==.
;	src/FreeRTOS/event_groups.c:482: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$event_groups.c$484$1_0$170 ==.
;	src/FreeRTOS/event_groups.c:484: return uxReturn;
	mov	dpl,r2
	mov	dph,r4
	C$event_groups.c$485$1_0$170 ==.
;	src/FreeRTOS/event_groups.c:485: }
	mov	sp,_bp
	pop	_bp
	C$event_groups.c$485$1_0$170 ==.
	XG$xEventGroupClearBits$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xEventGroupGetBitsFromISR'
;------------------------------------------------------------
;xEventGroup               Allocated to registers r5 r6 r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxEventBits               Allocated to registers 
;uxReturn                  Allocated to registers r5 r6 
;------------------------------------------------------------
	G$xEventGroupGetBitsFromISR$0$0 ==.
	C$event_groups.c$503$1_0$173 ==.
;	src/FreeRTOS/event_groups.c:503: EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup )
;	-----------------------------------------
;	 function xEventGroupGetBitsFromISR
;	-----------------------------------------
_xEventGroupGetBitsFromISR:
	C$event_groups.c$511$2_0$174 ==.
;	src/FreeRTOS/event_groups.c:511: uxReturn = pxEventBits->uxEventBits;
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	C$event_groups.c$515$1_0$173 ==.
;	src/FreeRTOS/event_groups.c:515: return uxReturn;
	C$event_groups.c$516$1_0$173 ==.
;	src/FreeRTOS/event_groups.c:516: } /*lint !e818 EventGroupHandle_t is a typedef used in other functions to so can't be pointer to const. */
	C$event_groups.c$516$1_0$173 ==.
	XG$xEventGroupGetBitsFromISR$0$0 ==.
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xEventGroupSetBits'
;------------------------------------------------------------
;uxBitsToSet               Allocated to stack - _bp -4
;xEventGroup               Allocated to registers r2 r3 r4 
;pxListItem                Allocated to stack - _bp +1
;pxNext                    Allocated to registers r5 r6 r7 
;pxListEnd                 Allocated to stack - _bp +4
;pxList                    Allocated to stack - _bp +7
;uxBitsToClear             Allocated to stack - _bp +10
;uxBitsWaitedFor           Allocated to registers r3 r4 
;uxControlBits             Allocated to stack - _bp +12
;pxEventBits               Allocated to stack - _bp +14
;xMatchFound               Allocated to registers r2 
;------------------------------------------------------------
	G$xEventGroupSetBits$0$0 ==.
	C$event_groups.c$519$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:519: EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet )
;	-----------------------------------------
;	 function xEventGroupSetBits
;	-----------------------------------------
_xEventGroupSetBits:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$event_groups.c$524$2_0$176 ==.
;	src/FreeRTOS/event_groups.c:524: EventBits_t uxBitsToClear = 0, uxBitsWaitedFor, uxControlBits;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$event_groups.c$525$2_0$176 ==.
;	src/FreeRTOS/event_groups.c:525: EventGroup_t *pxEventBits = xEventGroup;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$event_groups.c$533$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:533: pxList = &( pxEventBits->xTasksWaitingForBits );
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	C$event_groups.c$534$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:534: pxListEnd = listGET_END_MARKER( pxList ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$event_groups.c$535$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:535: vTaskSuspendAll();
	push	ar4
	push	ar3
	push	ar2
	lcall	_vTaskSuspendAll
	pop	ar2
	pop	ar3
	pop	ar4
	C$event_groups.c$539$2_0$177 ==.
;	src/FreeRTOS/event_groups.c:539: pxListItem = listGET_HEAD_ENTRY( pxList );
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$event_groups.c$542$2_0$177 ==.
;	src/FreeRTOS/event_groups.c:542: pxEventBits->uxEventBits |= uxBitsToSet;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$event_groups.c$545$2_0$177 ==.
;	src/FreeRTOS/event_groups.c:545: while( pxListItem != pxListEnd )
00112$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00152$
	ljmp	00114$
00152$:
	C$event_groups.c$547$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:547: pxNext = listGET_NEXT( pxListItem );
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$event_groups.c$548$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:548: uxBitsWaitedFor = listGET_LIST_ITEM_VALUE( pxListItem );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$event_groups.c$549$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:549: xMatchFound = pdFALSE;
	mov	r2,#0x00
	C$event_groups.c$552$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:552: uxControlBits = uxBitsWaitedFor & eventEVENT_BITS_CONTROL_BYTES;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,ar4
	C$event_groups.c$553$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:553: uxBitsWaitedFor &= ~eventEVENT_BITS_CONTROL_BYTES;
	mov	r4,#0x00
	C$event_groups.c$555$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:555: if( ( uxControlBits & eventWAIT_FOR_ALL_BITS ) == ( EventBits_t ) 0 )
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	r0
	mov	a,@r0
	jb	acc.2,00106$
	C$event_groups.c$558$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:558: if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) != ( EventBits_t ) 0 )
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	anl	ar6,a
	mov	a,r4
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00107$
	C$event_groups.c$560$5_0$180 ==.
;	src/FreeRTOS/event_groups.c:560: xMatchFound = pdTRUE;
	mov	r2,#0x01
	sjmp	00107$
00106$:
	C$event_groups.c$567$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:567: else if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) == uxBitsWaitedFor )
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	anl	ar6,a
	mov	a,r4
	anl	ar7,a
	mov	a,r6
	cjne	a,ar3,00155$
	mov	a,r7
	cjne	a,ar4,00155$
	sjmp	00156$
00155$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00107$
00156$:
	pop	ar7
	pop	ar6
	pop	ar5
	C$event_groups.c$570$4_0$182 ==.
;	src/FreeRTOS/event_groups.c:570: xMatchFound = pdTRUE;
	mov	r2,#0x01
00107$:
	C$event_groups.c$577$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:577: if( xMatchFound != pdFALSE )
	mov	a,r2
	jz	00111$
	C$event_groups.c$580$4_0$184 ==.
;	src/FreeRTOS/event_groups.c:580: if( ( uxControlBits & eventCLEAR_EVENTS_ON_EXIT_BIT ) != ( EventBits_t ) 0 )
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	r0
	mov	a,@r0
	jnb	acc.0,00109$
	C$event_groups.c$582$5_0$185 ==.
;	src/FreeRTOS/event_groups.c:582: uxBitsToClear |= uxBitsWaitedFor;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r3
	orl	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	orl	a,@r0
	mov	@r0,a
00109$:
	C$event_groups.c$594$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:594: vTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | eventUNBLOCKED_DUE_TO_BIT_SET );
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	ar7,#0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vTaskRemoveFromUnorderedEventList
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$event_groups.c$609$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:609: return pxEventBits->uxEventBits;
	pop	ar7
	pop	ar6
	pop	ar5
	C$event_groups.c$594$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:594: vTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | eventUNBLOCKED_DUE_TO_BIT_SET );
00111$:
	C$event_groups.c$600$3_0$178 ==.
;	src/FreeRTOS/event_groups.c:600: pxListItem = pxNext;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00112$
00114$:
	C$event_groups.c$605$2_0$177 ==.
;	src/FreeRTOS/event_groups.c:605: pxEventBits->uxEventBits &= ~uxBitsToClear;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r4,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$event_groups.c$607$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:607: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$event_groups.c$609$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:609: return pxEventBits->uxEventBits;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	C$event_groups.c$610$1_0$176 ==.
;	src/FreeRTOS/event_groups.c:610: }
	mov	sp,_bp
	pop	_bp
	C$event_groups.c$610$1_0$176 ==.
	XG$xEventGroupSetBits$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vEventGroupDelete'
;------------------------------------------------------------
;xEventGroup               Allocated to registers r5 r6 r7 
;pxEventBits               Allocated to stack - _bp +1
;pxTasksWaitingForBits     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vEventGroupDelete$0$0 ==.
	C$event_groups.c$613$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:613: void vEventGroupDelete( EventGroupHandle_t xEventGroup )
;	-----------------------------------------
;	 function vEventGroupDelete
;	-----------------------------------------
_vEventGroupDelete:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$event_groups.c$615$2_0$188 ==.
;	src/FreeRTOS/event_groups.c:615: EventGroup_t *pxEventBits = xEventGroup;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$event_groups.c$616$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:616: const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	C$event_groups.c$618$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:618: vTaskSuspendAll();
	push	ar7
	push	ar6
	push	ar5
	lcall	_vTaskSuspendAll
	pop	ar5
	pop	ar6
	pop	ar7
	C$event_groups.c$622$3_0$190 ==.
;	src/FreeRTOS/event_groups.c:622: while( listCURRENT_LIST_LENGTH( pxTasksWaitingForBits ) > ( UBaseType_t ) 0 )
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00103$
	C$event_groups.c$627$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:627: vTaskRemoveFromUnorderedEventList( pxTasksWaitingForBits->xListEnd.pxNext, eventUNBLOCKED_DUE_TO_BIT_SET );
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vTaskRemoveFromUnorderedEventList
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00101$
00103$:
	C$event_groups.c$634$3_0$191 ==.
;	src/FreeRTOS/event_groups.c:634: vPortFree( pxEventBits );
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_vPortFree
	C$event_groups.c$651$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:651: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$event_groups.c$652$1_0$188 ==.
;	src/FreeRTOS/event_groups.c:652: }
	mov	sp,_bp
	pop	_bp
	C$event_groups.c$652$1_0$188 ==.
	XG$vEventGroupDelete$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vEventGroupSetBitsCallback'
;------------------------------------------------------------
;ulBitsToSet               Allocated to stack - _bp -6
;pvEventGroup              Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vEventGroupSetBitsCallback$0$0 ==.
	C$event_groups.c$657$1_0$193 ==.
;	src/FreeRTOS/event_groups.c:657: void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet )
;	-----------------------------------------
;	 function vEventGroupSetBitsCallback
;	-----------------------------------------
_vEventGroupSetBitsCallback:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$event_groups.c$659$1_0$193 ==.
;	src/FreeRTOS/event_groups.c:659: ( void ) xEventGroupSetBits( pvEventGroup, ( EventBits_t ) ulBitsToSet ); /*lint !e9079 Can't avoid cast to void* as a generic timer callback prototype. Callback casts back to original type so safe. */
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_xEventGroupSetBits
	dec	sp
	dec	sp
	C$event_groups.c$660$1_0$193 ==.
;	src/FreeRTOS/event_groups.c:660: }
	pop	_bp
	C$event_groups.c$660$1_0$193 ==.
	XG$vEventGroupSetBitsCallback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vEventGroupClearBitsCallback'
;------------------------------------------------------------
;ulBitsToClear             Allocated to stack - _bp -6
;pvEventGroup              Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vEventGroupClearBitsCallback$0$0 ==.
	C$event_groups.c$665$1_0$195 ==.
;	src/FreeRTOS/event_groups.c:665: void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear )
;	-----------------------------------------
;	 function vEventGroupClearBitsCallback
;	-----------------------------------------
_vEventGroupClearBitsCallback:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$event_groups.c$667$1_0$195 ==.
;	src/FreeRTOS/event_groups.c:667: ( void ) xEventGroupClearBits( pvEventGroup, ( EventBits_t ) ulBitsToClear ); /*lint !e9079 Can't avoid cast to void* as a generic timer callback prototype. Callback casts back to original type so safe. */
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_xEventGroupClearBits
	dec	sp
	dec	sp
	C$event_groups.c$668$1_0$195 ==.
;	src/FreeRTOS/event_groups.c:668: }
	pop	_bp
	C$event_groups.c$668$1_0$195 ==.
	XG$vEventGroupClearBitsCallback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvTestWaitCondition'
;------------------------------------------------------------
;uxBitsToWaitFor           Allocated to stack - _bp -4
;xWaitForAllBits           Allocated to stack - _bp -5
;uxCurrentEventBits        Allocated to registers r6 r7 
;xWaitConditionMet         Allocated to registers r5 
;------------------------------------------------------------
	Fevent_groups$prvTestWaitCondition$0$0 ==.
	C$event_groups.c$671$1_0$197 ==.
;	src/FreeRTOS/event_groups.c:671: static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits )
;	-----------------------------------------
;	 function prvTestWaitCondition
;	-----------------------------------------
_prvTestWaitCondition:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
	C$event_groups.c$673$2_0$197 ==.
;	src/FreeRTOS/event_groups.c:673: BaseType_t xWaitConditionMet = pdFALSE;
	mov	r5,#0x00
	C$event_groups.c$675$1_0$197 ==.
;	src/FreeRTOS/event_groups.c:675: if( xWaitForAllBits == pdFALSE )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jnz	00106$
	C$event_groups.c$679$2_0$198 ==.
;	src/FreeRTOS/event_groups.c:679: if( ( uxCurrentEventBits & uxBitsToWaitFor ) != ( EventBits_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	anl	a,r6
	mov	r3,a
	inc	r0
	mov	a,@r0
	anl	a,r7
	mov	r4,a
	orl	a,r3
	jz	00107$
	C$event_groups.c$681$3_0$199 ==.
;	src/FreeRTOS/event_groups.c:681: xWaitConditionMet = pdTRUE;
	mov	r5,#0x01
	sjmp	00107$
00106$:
	C$event_groups.c$692$2_0$201 ==.
;	src/FreeRTOS/event_groups.c:692: if( ( uxCurrentEventBits & uxBitsToWaitFor ) == uxBitsToWaitFor )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00124$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00124$
	sjmp	00125$
00124$:
	sjmp	00107$
00125$:
	C$event_groups.c$694$3_0$202 ==.
;	src/FreeRTOS/event_groups.c:694: xWaitConditionMet = pdTRUE;
	mov	r5,#0x01
00107$:
	C$event_groups.c$702$1_0$197 ==.
;	src/FreeRTOS/event_groups.c:702: return xWaitConditionMet;
	mov	dpl,r5
	C$event_groups.c$703$1_0$197 ==.
;	src/FreeRTOS/event_groups.c:703: }
	pop	_bp
	C$event_groups.c$703$1_0$197 ==.
	XFevent_groups$prvTestWaitCondition$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
