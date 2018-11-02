;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module queue
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vTaskInternalSetTimeOutState
	.globl _vTaskMissedYield
	.globl _xTaskCheckForTimeOut
	.globl _xTaskRemoveFromEventList
	.globl _vTaskPlaceOnEventList
	.globl _xTaskResumeAll
	.globl _vTaskSuspendAll
	.globl _vListInitialise
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _vPortYield
	.globl _memcpy
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
	.globl _xQueueGenericReset
	.globl _xQueueGenericCreate
	.globl _xQueueGenericSend
	.globl _xQueueGenericSendFromISR
	.globl _xQueueGiveFromISR
	.globl _xQueueReceive
	.globl _xQueueSemaphoreTake
	.globl _xQueuePeek
	.globl _xQueueReceiveFromISR
	.globl _xQueuePeekFromISR
	.globl _uxQueueMessagesWaiting
	.globl _uxQueueSpacesAvailable
	.globl _uxQueueMessagesWaitingFromISR
	.globl _vQueueDelete
	.globl _xQueueIsQueueEmptyFromISR
	.globl _xQueueIsQueueFullFromISR
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
;Allocation info for local variables in function 'xQueueGenericReset'
;------------------------------------------------------------
;xNewQueue                 Allocated to stack - _bp -3
;xQueue                    Allocated to stack - _bp +1
;pxQueue                   Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +13
;sloc3                     Allocated to stack - _bp +10
;------------------------------------------------------------
	G$xQueueGenericReset$0$0 ==.
	C$queue.c$255$0_0$168 ==.
;	src/FreeRTOS/queue.c:255: BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue )
;	-----------------------------------------
;	 function xQueueGenericReset
;	-----------------------------------------
_xQueueGenericReset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
	C$queue.c$261$1_0$168 ==.
;	src/FreeRTOS/queue.c:261: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$263$2_0$169 ==.
;	src/FreeRTOS/queue.c:263: pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x25
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	b,r6
	mul	ab
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	add	a,@r0
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,b
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$264$2_0$169 ==.
;	src/FreeRTOS/queue.c:264: pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
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
	clr	a
	lcall	__gptrput
	C$queue.c$265$2_0$169 ==.
;	src/FreeRTOS/queue.c:265: pxQueue->pcWriteTo = pxQueue->pcHead;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$266$2_0$169 ==.
;	src/FreeRTOS/queue.c:266: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r7
	add	a,#0xff
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$queue.c$267$2_0$169 ==.
;	src/FreeRTOS/queue.c:267: pxQueue->cRxLock = queueUNLOCKED;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
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
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$268$2_0$169 ==.
;	src/FreeRTOS/queue.c:268: pxQueue->cTxLock = queueUNLOCKED;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
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
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$270$2_0$169 ==.
;	src/FreeRTOS/queue.c:270: if( xNewQueue == pdFALSE )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00106$
	C$queue.c$277$3_0$170 ==.
;	src/FreeRTOS/queue.c:277: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
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
	jz	00107$
	C$queue.c$279$4_0$171 ==.
;	src/FreeRTOS/queue.c:279: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
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
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00107$
	C$queue.c$281$5_0$172 ==.
;	src/FreeRTOS/queue.c:281: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
	sjmp	00107$
00106$:
	C$queue.c$296$3_0$175 ==.
;	src/FreeRTOS/queue.c:296: vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
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
	lcall	_vListInitialise
	C$queue.c$297$3_0$175 ==.
;	src/FreeRTOS/queue.c:297: vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
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
	lcall	_vListInitialise
00107$:
	C$queue.c$300$1_0$168 ==.
;	src/FreeRTOS/queue.c:300: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$304$1_0$168 ==.
;	src/FreeRTOS/queue.c:304: return pdPASS;
	mov	dpl,#0x01
	C$queue.c$305$1_0$168 ==.
;	src/FreeRTOS/queue.c:305: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$305$1_0$168 ==.
	XG$xQueueGenericReset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericCreate'
;------------------------------------------------------------
;uxItemSize                Allocated to stack - _bp -3
;ucQueueType               Allocated to stack - _bp -4
;uxQueueLength             Allocated to stack - _bp +1
;pxNewQueue                Allocated to registers r4 r5 r6 
;xQueueSizeInBytes         Allocated to registers r5 r6 
;pucQueueStorage           Allocated to registers r2 r3 r7 
;------------------------------------------------------------
	G$xQueueGenericCreate$0$0 ==.
	C$queue.c$368$1_0$177 ==.
;	src/FreeRTOS/queue.c:368: QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType )
;	-----------------------------------------
;	 function xQueueGenericCreate
;	-----------------------------------------
_xQueueGenericCreate:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$queue.c$376$1_0$177 ==.
;	src/FreeRTOS/queue.c:376: if( uxItemSize == ( UBaseType_t ) 0 )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	C$queue.c$379$2_0$178 ==.
;	src/FreeRTOS/queue.c:379: xQueueSizeInBytes = ( size_t ) 0;
	jnz	00102$
	mov	r5,a
	mov	r6,a
	sjmp	00103$
00102$:
	C$queue.c$385$2_0$179 ==.
;	src/FreeRTOS/queue.c:385: xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	mul	ab
	mov	r3,a
	mov	r4,b
	mov	ar5,r3
	mov	ar6,r4
00103$:
	C$queue.c$397$1_0$177 ==.
;	src/FreeRTOS/queue.c:397: pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
	mov	a,#0x29
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_pvPortMalloc
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	C$queue.c$399$1_0$177 ==.
;	src/FreeRTOS/queue.c:399: if( pxNewQueue != NULL )
	mov	a,r4
	orl	a,r5
	jz	00106$
	C$queue.c$403$2_0$180 ==.
;	src/FreeRTOS/queue.c:403: pucQueueStorage = ( uint8_t * ) pxNewQueue;
	mov	ar2,r4
	mov	ar3,r5
	mov	ar7,r6
	C$queue.c$404$2_0$180 ==.
;	src/FreeRTOS/queue.c:404: pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	a,#0x29
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	C$queue.c$415$2_0$180 ==.
;	src/FreeRTOS/queue.c:415: prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar7
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_prvInitialiseNewQueue
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	C$queue.c$420$1_0$177 ==.
;	src/FreeRTOS/queue.c:420: mtCOVERAGE_TEST_MARKER();
00106$:
	C$queue.c$423$1_0$177 ==.
;	src/FreeRTOS/queue.c:423: return pxNewQueue;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$queue.c$424$1_0$177 ==.
;	src/FreeRTOS/queue.c:424: }
	dec	sp
	pop	_bp
	C$queue.c$424$1_0$177 ==.
	XG$xQueueGenericCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseNewQueue'
;------------------------------------------------------------
;uxItemSize                Allocated to stack - _bp -3
;pucQueueStorage           Allocated to stack - _bp -6
;ucQueueType               Allocated to stack - _bp -7
;pxNewQueue                Allocated to stack - _bp -10
;uxQueueLength             Allocated to stack - _bp +1
;------------------------------------------------------------
	Fqueue$prvInitialiseNewQueue$0$0 ==.
	C$queue.c$429$1_0$183 ==.
;	src/FreeRTOS/queue.c:429: static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, const uint8_t ucQueueType, Queue_t *pxNewQueue )
;	-----------------------------------------
;	 function prvInitialiseNewQueue
;	-----------------------------------------
_prvInitialiseNewQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$queue.c$435$1_0$183 ==.
;	src/FreeRTOS/queue.c:435: if( uxItemSize == ( UBaseType_t ) 0 )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00102$
	C$queue.c$441$1_0$183 ==.
;	src/FreeRTOS/queue.c:441: pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	sjmp	00103$
00102$:
	C$queue.c$446$2_0$185 ==.
;	src/FreeRTOS/queue.c:446: pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00103$:
	C$queue.c$451$1_0$183 ==.
;	src/FreeRTOS/queue.c:451: pxNewQueue->uxLength = uxQueueLength;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x25
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$queue.c$452$1_0$183 ==.
;	src/FreeRTOS/queue.c:452: pxNewQueue->uxItemSize = uxItemSize;
	mov	a,#0x26
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$queue.c$453$1_0$183 ==.
;	src/FreeRTOS/queue.c:453: ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_xQueueGenericReset
	dec	sp
	C$queue.c$468$1_0$183 ==.
;	src/FreeRTOS/queue.c:468: }
	dec	sp
	pop	_bp
	C$queue.c$468$1_0$183 ==.
	XFqueue$prvInitialiseNewQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericSend'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xCopyPosition             Allocated to stack - _bp -8
;xQueue                    Allocated to registers r5 r3 r4 
;xEntryTimeSet             Allocated to stack - _bp +11
;xYieldRequired            Allocated to registers r7 
;xTimeOut                  Allocated to stack - _bp +12
;pxQueue                   Allocated to stack - _bp +15
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$xQueueGenericSend$0$0 ==.
	C$queue.c$747$1_0$187 ==.
;	src/FreeRTOS/queue.c:747: BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition )
;	-----------------------------------------
;	 function xQueueGenericSend
;	-----------------------------------------
_xQueueGenericSend:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x11
	mov	sp,a
	mov	r5,dpl
	mov	r3,dph
	mov	r4,b
	C$queue.c$749$2_0$187 ==.
;	src/FreeRTOS/queue.c:749: BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$751$2_0$187 ==.
;	src/FreeRTOS/queue.c:751: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$queue.c$754$4_0$190 ==.
;	src/FreeRTOS/queue.c:754: configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	clr	a
	cjne	@r0,#0x02,00184$
	inc	a
00184$:
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x25
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
00130$:
	C$queue.c$768$2_0$187 ==.
;	src/FreeRTOS/queue.c:768: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$774$4_0$190 ==.
;	src/FreeRTOS/queue.c:774: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00113$
	mov	a,r7
	jnz	00187$
	ljmp	00114$
00187$:
00113$:
	C$queue.c$840$6_0$192 ==.
;	src/FreeRTOS/queue.c:840: xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataToQueue
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar7,r4
	C$queue.c$844$6_0$192 ==.
;	src/FreeRTOS/queue.c:844: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00106$
	C$queue.c$846$7_0$193 ==.
;	src/FreeRTOS/queue.c:846: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00107$
	C$queue.c$852$8_0$194 ==.
;	src/FreeRTOS/queue.c:852: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
	sjmp	00107$
00106$:
	C$queue.c$859$6_0$192 ==.
;	src/FreeRTOS/queue.c:859: else if( xYieldRequired != pdFALSE )
	mov	a,r7
	jz	00107$
	C$queue.c$865$7_0$196 ==.
;	src/FreeRTOS/queue.c:865: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00107$:
	C$queue.c$874$5_0$191 ==.
;	src/FreeRTOS/queue.c:874: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$875$5_0$191 ==.
;	src/FreeRTOS/queue.c:875: return pdPASS;
	mov	dpl,#0x01
	ljmp	00132$
00114$:
	C$queue.c$879$5_0$198 ==.
;	src/FreeRTOS/queue.c:879: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00111$
	C$queue.c$883$6_0$199 ==.
;	src/FreeRTOS/queue.c:883: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$888$6_0$199 ==.
;	src/FreeRTOS/queue.c:888: return errQUEUE_FULL;
	mov	dpl,#0x00
	ljmp	00132$
00111$:
	C$queue.c$890$5_0$198 ==.
;	src/FreeRTOS/queue.c:890: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	C$queue.c$894$6_0$200 ==.
;	src/FreeRTOS/queue.c:894: vTaskInternalSetTimeOutState( &xTimeOut );
	jnz	00115$
	mov	ar2,r6
	mov	r3,a
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	pop	ar7
	C$queue.c$895$6_0$200 ==.
;	src/FreeRTOS/queue.c:895: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x01
00115$:
	C$queue.c$904$2_0$187 ==.
;	src/FreeRTOS/queue.c:904: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$909$3_0$189 ==.
;	src/FreeRTOS/queue.c:909: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	pop	ar7
	C$queue.c$910$3_0$189 ==.
;	src/FreeRTOS/queue.c:910: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00118$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
00118$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00120$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
00120$:
	push	ar7
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$913$3_0$189 ==.
;	src/FreeRTOS/queue.c:913: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	a,r7
	pop	ar7
	jz	00197$
	ljmp	00127$
00197$:
	C$queue.c$915$4_0$205 ==.
;	src/FreeRTOS/queue.c:915: if( prvIsQueueFull( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	lcall	_prvIsQueueFull
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00124$
	C$queue.c$918$5_0$206 ==.
;	src/FreeRTOS/queue.c:918: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	C$queue.c$925$5_0$206 ==.
;	src/FreeRTOS/queue.c:925: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$932$5_0$206 ==.
;	src/FreeRTOS/queue.c:932: if( xTaskResumeAll() == pdFALSE )
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00199$
	ljmp	00130$
00199$:
	C$queue.c$934$6_0$207 ==.
;	src/FreeRTOS/queue.c:934: portYIELD_WITHIN_API();
	lcall	_vPortYield
	ljmp	00130$
00124$:
	C$queue.c$940$5_0$208 ==.
;	src/FreeRTOS/queue.c:940: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	lcall	_prvUnlockQueue
	C$queue.c$941$5_0$208 ==.
;	src/FreeRTOS/queue.c:941: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	pop	ar6
	pop	ar7
	ljmp	00130$
00127$:
	C$queue.c$947$4_0$209 ==.
;	src/FreeRTOS/queue.c:947: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$948$4_0$209 ==.
;	src/FreeRTOS/queue.c:948: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$queue.c$951$4_0$209 ==.
;	src/FreeRTOS/queue.c:951: return errQUEUE_FULL;
	mov	dpl,#0x00
00132$:
	C$queue.c$954$2_0$187 ==.
;	src/FreeRTOS/queue.c:954: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$954$2_0$187 ==.
	XG$xQueueGenericSend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericSendFromISR'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
;xCopyPosition             Allocated to stack - _bp -9
;xQueue                    Allocated to registers r2 r3 r4 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to stack - _bp +1
;cTxLock                   Allocated to registers r7 
;------------------------------------------------------------
	G$xQueueGenericSendFromISR$0$0 ==.
	C$queue.c$957$2_0$211 ==.
;	src/FreeRTOS/queue.c:957: BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition )
;	-----------------------------------------
;	 function xQueueGenericSendFromISR
;	-----------------------------------------
_xQueueGenericSendFromISR:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$queue.c$961$2_0$211 ==.
;	src/FreeRTOS/queue.c:961: Queue_t * const pxQueue = xQueue;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$queue.c$990$2_0$212 ==.
;	src/FreeRTOS/queue.c:990: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
	mov	a,#0x24
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x25
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00110$
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0x02,00139$
	sjmp	00140$
00139$:
	ljmp	00111$
00140$:
00110$:
	C$queue.c$992$3_0$213 ==.
;	src/FreeRTOS/queue.c:992: const int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
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
	mov	r7,a
	C$queue.c$1001$3_0$213 ==.
;	src/FreeRTOS/queue.c:1001: ( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
	push	ar7
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	lcall	_prvCopyDataToQueue
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	C$queue.c$1005$3_0$213 ==.
;	src/FreeRTOS/queue.c:1005: if( cTxLock == queueUNLOCKED )
	cjne	r7,#0xff,00108$
	C$queue.c$1060$5_0$215 ==.
;	src/FreeRTOS/queue.c:1060: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jz	00109$
	C$queue.c$1062$6_0$216 ==.
;	src/FreeRTOS/queue.c:1062: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00109$
	C$queue.c$1066$7_0$217 ==.
;	src/FreeRTOS/queue.c:1066: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
	C$queue.c$1068$8_0$218 ==.
;	src/FreeRTOS/queue.c:1068: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00109$
00108$:
	C$queue.c$1091$4_0$222 ==.
;	src/FreeRTOS/queue.c:1091: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	inc	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1094$3_0$213 ==.
;	src/FreeRTOS/queue.c:1094: xReturn = pdPASS;
	C$queue.c$1099$3_0$223 ==.
;	src/FreeRTOS/queue.c:1099: xReturn = errQUEUE_FULL;
	C$queue.c$1104$1_0$211 ==.
;	src/FreeRTOS/queue.c:1104: return xReturn;
	C$queue.c$1105$1_0$211 ==.
;	src/FreeRTOS/queue.c:1105: }
	mov	dpl,#0x01
	sjmp	00112$
00111$:
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	C$queue.c$1105$1_0$211 ==.
	XG$xQueueGenericSendFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGiveFromISR'
;------------------------------------------------------------
;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
;xQueue                    Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to registers 
;uxMessagesWaiting         Allocated to stack - _bp +7
;cTxLock                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueGiveFromISR$0$0 ==.
	C$queue.c$1108$1_0$225 ==.
;	src/FreeRTOS/queue.c:1108: BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function xQueueGiveFromISR
;	-----------------------------------------
_xQueueGiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$1149$2_0$226 ==.
;	src/FreeRTOS/queue.c:1149: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$1154$2_0$226 ==.
;	src/FreeRTOS/queue.c:1154: if( uxMessagesWaiting < pxQueue->uxLength )
	mov	r0,_bp
	inc	r0
	mov	a,#0x25
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	jc	00137$
	ljmp	00111$
00137$:
	C$queue.c$1156$3_0$227 ==.
;	src/FreeRTOS/queue.c:1156: const int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x28
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	C$queue.c$1166$3_0$227 ==.
;	src/FreeRTOS/queue.c:1166: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	C$queue.c$1170$3_0$227 ==.
;	src/FreeRTOS/queue.c:1170: if( cTxLock == queueUNLOCKED )
	cjne	r7,#0xff,00108$
	C$queue.c$1225$5_0$229 ==.
;	src/FreeRTOS/queue.c:1225: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jz	00109$
	C$queue.c$1227$6_0$230 ==.
;	src/FreeRTOS/queue.c:1227: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00109$
	C$queue.c$1231$7_0$231 ==.
;	src/FreeRTOS/queue.c:1231: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
	C$queue.c$1233$8_0$232 ==.
;	src/FreeRTOS/queue.c:1233: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00109$
00108$:
	C$queue.c$1256$4_0$236 ==.
;	src/FreeRTOS/queue.c:1256: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
	inc	r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1259$3_0$227 ==.
;	src/FreeRTOS/queue.c:1259: xReturn = pdPASS;
	C$queue.c$1264$3_0$237 ==.
;	src/FreeRTOS/queue.c:1264: xReturn = errQUEUE_FULL;
	C$queue.c$1269$1_0$225 ==.
;	src/FreeRTOS/queue.c:1269: return xReturn;
	C$queue.c$1270$1_0$225 ==.
;	src/FreeRTOS/queue.c:1270: }
	mov	dpl,#0x01
	sjmp	00112$
00111$:
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	C$queue.c$1270$1_0$225 ==.
	XG$xQueueGiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueReceive'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xQueue                    Allocated to registers r4 r5 r7 
;xEntryTimeSet             Allocated to stack - _bp +5
;xTimeOut                  Allocated to stack - _bp +6
;pxQueue                   Allocated to stack - _bp +9
;uxMessagesWaiting         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +15
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueReceive$0$0 ==.
	C$queue.c$1273$1_0$239 ==.
;	src/FreeRTOS/queue.c:1273: BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xQueueReceive
;	-----------------------------------------
_xQueueReceive:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	C$queue.c$1275$2_0$239 ==.
;	src/FreeRTOS/queue.c:1275: BaseType_t xEntryTimeSet = pdFALSE;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$1277$2_0$239 ==.
;	src/FreeRTOS/queue.c:1277: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	C$queue.c$1284$6_0$250 ==.
;	src/FreeRTOS/queue.c:1284: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0x06
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1299$3_0$241 ==.
;	src/FreeRTOS/queue.c:1299: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1301$4_0$242 ==.
;	src/FreeRTOS/queue.c:1301: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	C$queue.c$1305$4_0$242 ==.
;	src/FreeRTOS/queue.c:1305: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	r4,a
	mov	r5,a
	jnz	00182$
	ljmp	00111$
00182$:
	C$queue.c$1308$5_0$243 ==.
;	src/FreeRTOS/queue.c:1308: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	C$queue.c$1310$5_0$243 ==.
;	src/FreeRTOS/queue.c:1310: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x24
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	a,r5
	dec	a
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrput
	C$queue.c$1315$5_0$243 ==.
;	src/FreeRTOS/queue.c:1315: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	jz	00104$
	C$queue.c$1317$6_0$244 ==.
;	src/FreeRTOS/queue.c:1317: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00104$
	C$queue.c$1319$7_0$245 ==.
;	src/FreeRTOS/queue.c:1319: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00104$:
	C$queue.c$1331$5_0$243 ==.
;	src/FreeRTOS/queue.c:1331: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1332$5_0$243 ==.
;	src/FreeRTOS/queue.c:1332: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1336$5_0$248 ==.
;	src/FreeRTOS/queue.c:1336: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	C$queue.c$1340$6_0$249 ==.
;	src/FreeRTOS/queue.c:1340: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1342$6_0$249 ==.
;	src/FreeRTOS/queue.c:1342: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1344$5_0$248 ==.
;	src/FreeRTOS/queue.c:1344: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	C$queue.c$1348$6_0$250 ==.
;	src/FreeRTOS/queue.c:1348: vTaskInternalSetTimeOutState( &xTimeOut );
	jnz	00112$
	mov	ar3,r6
	mov	r4,a
	mov	r7,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1349$6_0$250 ==.
;	src/FreeRTOS/queue.c:1349: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x01
00112$:
	C$queue.c$1358$3_0$241 ==.
;	src/FreeRTOS/queue.c:1358: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1363$3_0$241 ==.
;	src/FreeRTOS/queue.c:1363: vTaskSuspendAll();
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	C$queue.c$1364$3_0$241 ==.
;	src/FreeRTOS/queue.c:1364: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00114$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00116$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00116$:
	push	ar6
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1367$3_0$241 ==.
;	src/FreeRTOS/queue.c:1367: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r7,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar6
	push	ar7
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar6
	mov	a,r7
	jz	00191$
	ljmp	00125$
00191$:
	C$queue.c$1371$4_0$255 ==.
;	src/FreeRTOS/queue.c:1371: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jz	00120$
	C$queue.c$1374$5_0$256 ==.
;	src/FreeRTOS/queue.c:1374: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	C$queue.c$1375$5_0$256 ==.
;	src/FreeRTOS/queue.c:1375: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$1376$5_0$256 ==.
;	src/FreeRTOS/queue.c:1376: if( xTaskResumeAll() == pdFALSE )
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	jz	00193$
	ljmp	00128$
00193$:
	C$queue.c$1378$6_0$257 ==.
;	src/FreeRTOS/queue.c:1378: portYIELD_WITHIN_API();
	lcall	_vPortYield
	ljmp	00128$
00120$:
	C$queue.c$1389$5_0$259 ==.
;	src/FreeRTOS/queue.c:1389: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	C$queue.c$1390$5_0$259 ==.
;	src/FreeRTOS/queue.c:1390: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1397$4_0$260 ==.
;	src/FreeRTOS/queue.c:1397: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	C$queue.c$1398$4_0$260 ==.
;	src/FreeRTOS/queue.c:1398: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$queue.c$1400$4_0$260 ==.
;	src/FreeRTOS/queue.c:1400: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00194$
	ljmp	00128$
00194$:
	C$queue.c$1403$5_0$261 ==.
;	src/FreeRTOS/queue.c:1403: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1411$2_0$239 ==.
;	src/FreeRTOS/queue.c:1411: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1411$2_0$239 ==.
	XG$xQueueReceive$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueSemaphoreTake'
;------------------------------------------------------------
;xTicksToWait              Allocated to stack - _bp -4
;xQueue                    Allocated to registers r4 r5 r7 
;xEntryTimeSet             Allocated to stack - _bp +11
;xTimeOut                  Allocated to stack - _bp +5
;pxQueue                   Allocated to stack - _bp +8
;uxSemaphoreCount          Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +15
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueSemaphoreTake$0$0 ==.
	C$queue.c$1414$2_0$264 ==.
;	src/FreeRTOS/queue.c:1414: BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xQueueSemaphoreTake
;	-----------------------------------------
_xQueueSemaphoreTake:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	C$queue.c$1416$2_0$264 ==.
;	src/FreeRTOS/queue.c:1416: BaseType_t xEntryTimeSet = pdFALSE;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$1418$2_0$264 ==.
;	src/FreeRTOS/queue.c:1418: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	C$queue.c$1429$6_0$275 ==.
;	src/FreeRTOS/queue.c:1429: configASSERT( pxQueue->uxItemSize == 0 );
	mov	a,_bp
	add	a,#0x05
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1444$3_0$266 ==.
;	src/FreeRTOS/queue.c:1444: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1448$4_0$267 ==.
;	src/FreeRTOS/queue.c:1448: const UBaseType_t uxSemaphoreCount = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	C$queue.c$1452$4_0$267 ==.
;	src/FreeRTOS/queue.c:1452: if( uxSemaphoreCount > ( UBaseType_t ) 0 )
	mov	r4,a
	mov	r7,a
	jz	00111$
	C$queue.c$1458$5_0$268 ==.
;	src/FreeRTOS/queue.c:1458: pxQueue->uxMessagesWaiting = uxSemaphoreCount - ( UBaseType_t ) 1;
	mov	a,r7
	dec	a
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1477$5_0$268 ==.
;	src/FreeRTOS/queue.c:1477: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	jz	00104$
	C$queue.c$1479$6_0$269 ==.
;	src/FreeRTOS/queue.c:1479: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00104$
	C$queue.c$1481$7_0$270 ==.
;	src/FreeRTOS/queue.c:1481: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00104$:
	C$queue.c$1493$5_0$268 ==.
;	src/FreeRTOS/queue.c:1493: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1494$5_0$268 ==.
;	src/FreeRTOS/queue.c:1494: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1498$5_0$273 ==.
;	src/FreeRTOS/queue.c:1498: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	C$queue.c$1511$6_0$274 ==.
;	src/FreeRTOS/queue.c:1511: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1513$6_0$274 ==.
;	src/FreeRTOS/queue.c:1513: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1515$5_0$273 ==.
;	src/FreeRTOS/queue.c:1515: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	C$queue.c$1519$6_0$275 ==.
;	src/FreeRTOS/queue.c:1519: vTaskInternalSetTimeOutState( &xTimeOut );
	jnz	00112$
	mov	ar3,r6
	mov	r4,a
	mov	r7,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1520$6_0$275 ==.
;	src/FreeRTOS/queue.c:1520: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x01
00112$:
	C$queue.c$1529$3_0$266 ==.
;	src/FreeRTOS/queue.c:1529: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1534$3_0$266 ==.
;	src/FreeRTOS/queue.c:1534: vTaskSuspendAll();
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	C$queue.c$1535$3_0$266 ==.
;	src/FreeRTOS/queue.c:1535: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00114$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00116$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00116$:
	push	ar6
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1538$3_0$266 ==.
;	src/FreeRTOS/queue.c:1538: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xfc
	mov	r7,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar6
	push	ar7
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar6
	mov	a,r7
	jz	00191$
	ljmp	00125$
00191$:
	C$queue.c$1544$4_0$280 ==.
;	src/FreeRTOS/queue.c:1544: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jz	00120$
	C$queue.c$1565$5_0$281 ==.
;	src/FreeRTOS/queue.c:1565: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	C$queue.c$1566$5_0$281 ==.
;	src/FreeRTOS/queue.c:1566: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$1567$5_0$281 ==.
;	src/FreeRTOS/queue.c:1567: if( xTaskResumeAll() == pdFALSE )
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	jz	00193$
	ljmp	00128$
00193$:
	C$queue.c$1569$6_0$282 ==.
;	src/FreeRTOS/queue.c:1569: portYIELD_WITHIN_API();
	lcall	_vPortYield
	ljmp	00128$
00120$:
	C$queue.c$1580$5_0$284 ==.
;	src/FreeRTOS/queue.c:1580: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	C$queue.c$1581$5_0$284 ==.
;	src/FreeRTOS/queue.c:1581: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1587$4_0$285 ==.
;	src/FreeRTOS/queue.c:1587: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	C$queue.c$1588$4_0$285 ==.
;	src/FreeRTOS/queue.c:1588: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$queue.c$1594$4_0$285 ==.
;	src/FreeRTOS/queue.c:1594: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00194$
	ljmp	00128$
00194$:
	C$queue.c$1621$5_0$286 ==.
;	src/FreeRTOS/queue.c:1621: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1629$2_0$264 ==.
;	src/FreeRTOS/queue.c:1629: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1629$2_0$264 ==.
	XG$xQueueSemaphoreTake$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueuePeek'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xQueue                    Allocated to registers r5 r3 r7 
;xEntryTimeSet             Allocated to registers r4 
;xTimeOut                  Allocated to stack - _bp +8
;pcOriginalReadPosition    Allocated to registers r6 r5 r4 
;pxQueue                   Allocated to stack - _bp +11
;uxMessagesWaiting         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +5
;------------------------------------------------------------
	G$xQueuePeek$0$0 ==.
	C$queue.c$1632$2_0$289 ==.
;	src/FreeRTOS/queue.c:1632: BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xQueuePeek
;	-----------------------------------------
_xQueuePeek:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0d
	mov	sp,a
	mov	r5,dpl
	mov	r3,dph
	mov	r7,b
	C$queue.c$1634$2_0$289 ==.
;	src/FreeRTOS/queue.c:1634: BaseType_t xEntryTimeSet = pdFALSE;
	mov	r4,#0x00
	C$queue.c$1637$2_0$289 ==.
;	src/FreeRTOS/queue.c:1637: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	C$queue.c$1644$6_0$300 ==.
;	src/FreeRTOS/queue.c:1644: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0x08
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1659$3_0$291 ==.
;	src/FreeRTOS/queue.c:1659: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1661$4_0$292 ==.
;	src/FreeRTOS/queue.c:1661: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00182$
	ljmp	00111$
00182$:
	C$queue.c$1665$4_0$292 ==.
;	src/FreeRTOS/queue.c:1665: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	C$queue.c$1670$5_0$293 ==.
;	src/FreeRTOS/queue.c:1670: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$queue.c$1672$5_0$293 ==.
;	src/FreeRTOS/queue.c:1672: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar6
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	C$queue.c$1676$5_0$293 ==.
;	src/FreeRTOS/queue.c:1676: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1680$5_0$293 ==.
;	src/FreeRTOS/queue.c:1680: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	jz	00104$
	C$queue.c$1682$6_0$294 ==.
;	src/FreeRTOS/queue.c:1682: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00104$
	C$queue.c$1685$7_0$295 ==.
;	src/FreeRTOS/queue.c:1685: queueYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00104$:
	C$queue.c$1697$5_0$293 ==.
;	src/FreeRTOS/queue.c:1697: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1698$5_0$293 ==.
;	src/FreeRTOS/queue.c:1698: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1702$5_0$298 ==.
;	src/FreeRTOS/queue.c:1702: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	C$queue.c$1706$6_0$299 ==.
;	src/FreeRTOS/queue.c:1706: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1708$6_0$299 ==.
;	src/FreeRTOS/queue.c:1708: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1710$5_0$298 ==.
;	src/FreeRTOS/queue.c:1710: else if( xEntryTimeSet == pdFALSE )
	mov	a,r4
	C$queue.c$1715$6_0$300 ==.
;	src/FreeRTOS/queue.c:1715: vTaskInternalSetTimeOutState( &xTimeOut );
	jnz	00112$
	mov	ar2,r6
	mov	r3,a
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1716$6_0$300 ==.
;	src/FreeRTOS/queue.c:1716: xEntryTimeSet = pdTRUE;
	mov	r4,#0x01
00112$:
	C$queue.c$1725$2_0$289 ==.
;	src/FreeRTOS/queue.c:1725: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1730$3_0$291 ==.
;	src/FreeRTOS/queue.c:1730: vTaskSuspendAll();
	push	ar6
	push	ar4
	lcall	_vTaskSuspendAll
	pop	ar4
	pop	ar6
	C$queue.c$1731$3_0$291 ==.
;	src/FreeRTOS/queue.c:1731: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00114$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	clr	a
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00116$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	clr	a
	lcall	__gptrput
00116$:
	push	ar4
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1734$3_0$291 ==.
;	src/FreeRTOS/queue.c:1734: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar6
	pop	ar4
	mov	a,r7
	jz	00191$
	ljmp	00125$
00191$:
	C$queue.c$1738$4_0$305 ==.
;	src/FreeRTOS/queue.c:1738: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar4
	pop	ar6
	jz	00120$
	C$queue.c$1741$5_0$306 ==.
;	src/FreeRTOS/queue.c:1741: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar4
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	C$queue.c$1742$5_0$306 ==.
;	src/FreeRTOS/queue.c:1742: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$1743$5_0$306 ==.
;	src/FreeRTOS/queue.c:1743: if( xTaskResumeAll() == pdFALSE )
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar4
	pop	ar6
	jz	00193$
	ljmp	00128$
00193$:
	C$queue.c$1745$6_0$307 ==.
;	src/FreeRTOS/queue.c:1745: portYIELD_WITHIN_API();
	lcall	_vPortYield
	ljmp	00128$
00120$:
	C$queue.c$1756$5_0$309 ==.
;	src/FreeRTOS/queue.c:1756: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvUnlockQueue
	C$queue.c$1757$5_0$309 ==.
;	src/FreeRTOS/queue.c:1757: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	pop	ar4
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1764$4_0$310 ==.
;	src/FreeRTOS/queue.c:1764: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvUnlockQueue
	C$queue.c$1765$4_0$310 ==.
;	src/FreeRTOS/queue.c:1765: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$queue.c$1767$4_0$310 ==.
;	src/FreeRTOS/queue.c:1767: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar4
	pop	ar6
	jnz	00194$
	ljmp	00128$
00194$:
	C$queue.c$1770$5_0$311 ==.
;	src/FreeRTOS/queue.c:1770: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1778$2_0$289 ==.
;	src/FreeRTOS/queue.c:1778: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1778$2_0$289 ==.
	XG$xQueuePeek$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueReceiveFromISR'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
;xQueue                    Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to registers 
;uxMessagesWaiting         Allocated to registers r4 
;cRxLock                   Allocated to registers r7 
;------------------------------------------------------------
	G$xQueueReceiveFromISR$0$0 ==.
	C$queue.c$1781$2_0$314 ==.
;	src/FreeRTOS/queue.c:1781: BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function xQueueReceiveFromISR
;	-----------------------------------------
_xQueueReceiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$queue.c$1808$2_0$315 ==.
;	src/FreeRTOS/queue.c:1808: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	C$queue.c$1811$2_0$315 ==.
;	src/FreeRTOS/queue.c:1811: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	r2,a
	mov	r4,a
	jnz	00137$
	ljmp	00111$
00137$:
	C$queue.c$1813$3_0$316 ==.
;	src/FreeRTOS/queue.c:1813: const int8_t cRxLock = pxQueue->cRxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	C$queue.c$1817$3_0$316 ==.
;	src/FreeRTOS/queue.c:1817: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar7
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar7
	C$queue.c$1818$3_0$316 ==.
;	src/FreeRTOS/queue.c:1818: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	dec	r4
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1824$3_0$316 ==.
;	src/FreeRTOS/queue.c:1824: if( cRxLock == queueUNLOCKED )
	cjne	r7,#0xff,00108$
	C$queue.c$1826$4_0$317 ==.
;	src/FreeRTOS/queue.c:1826: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jz	00109$
	C$queue.c$1828$5_0$318 ==.
;	src/FreeRTOS/queue.c:1828: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jz	00109$
	C$queue.c$1832$6_0$319 ==.
;	src/FreeRTOS/queue.c:1832: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
	C$queue.c$1834$7_0$320 ==.
;	src/FreeRTOS/queue.c:1834: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00109$
00108$:
	C$queue.c$1855$4_0$324 ==.
;	src/FreeRTOS/queue.c:1855: pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	inc	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1858$3_0$316 ==.
;	src/FreeRTOS/queue.c:1858: xReturn = pdPASS;
	C$queue.c$1862$3_0$325 ==.
;	src/FreeRTOS/queue.c:1862: xReturn = pdFAIL;
	C$queue.c$1868$1_0$314 ==.
;	src/FreeRTOS/queue.c:1868: return xReturn;
	C$queue.c$1869$1_0$314 ==.
;	src/FreeRTOS/queue.c:1869: }
	mov	dpl,#0x01
	sjmp	00112$
00111$:
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	C$queue.c$1869$1_0$314 ==.
	XG$xQueueReceiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueuePeekFromISR'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pcOriginalReadPosition    Allocated to registers r2 r3 r4 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueuePeekFromISR$0$0 ==.
	C$queue.c$1872$1_0$327 ==.
;	src/FreeRTOS/queue.c:1872: BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,  void * const pvBuffer )
;	-----------------------------------------
;	 function xQueuePeekFromISR
;	-----------------------------------------
_xQueuePeekFromISR:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$1902$2_0$328 ==.
;	src/FreeRTOS/queue.c:1902: if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00110$
	ljmp	00102$
00110$:
	C$queue.c$1908$3_0$329 ==.
;	src/FreeRTOS/queue.c:1908: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$queue.c$1909$3_0$329 ==.
;	src/FreeRTOS/queue.c:1909: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$queue.c$1910$3_0$329 ==.
;	src/FreeRTOS/queue.c:1910: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1912$3_0$329 ==.
;	src/FreeRTOS/queue.c:1912: xReturn = pdPASS;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$queue.c$1916$3_0$330 ==.
;	src/FreeRTOS/queue.c:1916: xReturn = pdFAIL;
	mov	r7,#0x00
00103$:
	C$queue.c$1922$1_0$327 ==.
;	src/FreeRTOS/queue.c:1922: return xReturn;
	mov	dpl,r7
	C$queue.c$1923$1_0$327 ==.
;	src/FreeRTOS/queue.c:1923: }
	pop	_bp
	C$queue.c$1923$1_0$327 ==.
	XG$xQueuePeekFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueMessagesWaiting'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r5 
;------------------------------------------------------------
	G$uxQueueMessagesWaiting$0$0 ==.
	C$queue.c$1926$1_0$332 ==.
;	src/FreeRTOS/queue.c:1926: UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueMessagesWaiting
;	-----------------------------------------
_uxQueueMessagesWaiting:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$1932$1_0$332 ==.
;	src/FreeRTOS/queue.c:1932: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1934$2_0$333 ==.
;	src/FreeRTOS/queue.c:1934: uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	C$queue.c$1936$1_0$332 ==.
;	src/FreeRTOS/queue.c:1936: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1938$1_0$332 ==.
;	src/FreeRTOS/queue.c:1938: return uxReturn;
	mov	dpl,r5
	C$queue.c$1939$1_0$332 ==.
;	src/FreeRTOS/queue.c:1939: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$1939$1_0$332 ==.
	XG$uxQueueMessagesWaiting$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueSpacesAvailable'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r2 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$uxQueueSpacesAvailable$0$0 ==.
	C$queue.c$1942$1_0$335 ==.
;	src/FreeRTOS/queue.c:1942: UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueSpacesAvailable
;	-----------------------------------------
_uxQueueSpacesAvailable:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$1949$1_0$335 ==.
;	src/FreeRTOS/queue.c:1949: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1951$2_0$336 ==.
;	src/FreeRTOS/queue.c:1951: uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
	mov	a,#0x25
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	C$queue.c$1953$1_0$335 ==.
;	src/FreeRTOS/queue.c:1953: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1955$1_0$335 ==.
;	src/FreeRTOS/queue.c:1955: return uxReturn;
	mov	dpl,r2
	C$queue.c$1956$1_0$335 ==.
;	src/FreeRTOS/queue.c:1956: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$1956$1_0$335 ==.
	XG$uxQueueSpacesAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueMessagesWaitingFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r5 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$uxQueueMessagesWaitingFromISR$0$0 ==.
	C$queue.c$1959$1_0$338 ==.
;	src/FreeRTOS/queue.c:1959: UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueMessagesWaitingFromISR
;	-----------------------------------------
_uxQueueMessagesWaitingFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$1965$1_0$338 ==.
;	src/FreeRTOS/queue.c:1965: uxReturn = pxQueue->uxMessagesWaiting;
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	C$queue.c$1967$1_0$338 ==.
;	src/FreeRTOS/queue.c:1967: return uxReturn;
	C$queue.c$1968$1_0$338 ==.
;	src/FreeRTOS/queue.c:1968: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$1968$1_0$338 ==.
	XG$uxQueueMessagesWaitingFromISR$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vQueueDelete'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;pxQueue                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vQueueDelete$0$0 ==.
	C$queue.c$1971$1_0$340 ==.
;	src/FreeRTOS/queue.c:1971: void vQueueDelete( QueueHandle_t xQueue )
;	-----------------------------------------
;	 function vQueueDelete
;	-----------------------------------------
_vQueueDelete:
	C$queue.c$1973$2_0$340 ==.
;	src/FreeRTOS/queue.c:1973: Queue_t * const pxQueue = xQueue;
	C$queue.c$1988$2_0$341 ==.
;	src/FreeRTOS/queue.c:1988: vPortFree( pxQueue );
	lcall	_vPortFree
	C$queue.c$2010$2_0$340 ==.
;	src/FreeRTOS/queue.c:2010: }
	C$queue.c$2010$2_0$340 ==.
	XG$vQueueDelete$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCopyDataToQueue'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;xPosition                 Allocated to stack - _bp -6
;pxQueue                   Allocated to stack - _bp +1
;xReturn                   Allocated to registers 
;uxMessagesWaiting         Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +10
;------------------------------------------------------------
	Fqueue$prvCopyDataToQueue$0$0 ==.
	C$queue.c$2070$2_0$343 ==.
;	src/FreeRTOS/queue.c:2070: static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition )
;	-----------------------------------------
;	 function prvCopyDataToQueue
;	-----------------------------------------
_prvCopyDataToQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
	C$queue.c$2077$1_0$343 ==.
;	src/FreeRTOS/queue.c:2077: uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$2079$1_0$343 ==.
;	src/FreeRTOS/queue.c:2079: if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
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
	jnz	00141$
	ljmp	00114$
00141$:
	C$queue.c$2096$1_0$343 ==.
;	src/FreeRTOS/queue.c:2096: else if( xPosition == queueSEND_TO_BACK )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	jz	00142$
	ljmp	00110$
00142$:
	C$queue.c$2098$1_0$343 ==.
;	src/FreeRTOS/queue.c:2098: ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
	push	ar2
	push	ar3
	push	ar4
	mov	ar4,r6
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2099$2_0$345 ==.
;	src/FreeRTOS/queue.c:2099: pxQueue->pcWriteTo += pxQueue->uxItemSize; /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r3
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	C$queue.c$2100$2_0$345 ==.
;	src/FreeRTOS/queue.c:2100: if( pxQueue->pcWriteTo >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	push	ar2
	push	ar3
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00143$
	ljmp	00114$
00143$:
	C$queue.c$2102$1_0$343 ==.
;	src/FreeRTOS/queue.c:2102: pxQueue->pcWriteTo = pxQueue->pcHead;
	push	ar2
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00114$
00110$:
	C$queue.c$2111$1_0$343 ==.
;	src/FreeRTOS/queue.c:2111: ( void ) memcpy( ( void * ) pxQueue->u.xQueue.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e9087 !e418 MISRA exception as the casts are only redundant for some ports.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes.  Assert checks null pointer only used when length is 0. */
	push	ar2
	push	ar3
	push	ar4
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x06
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
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
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2112$2_0$348 ==.
;	src/FreeRTOS/queue.c:2112: pxQueue->u.xQueue.pcReadFrom -= pxQueue->uxItemSize;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2113$2_0$348 ==.
;	src/FreeRTOS/queue.c:2113: if( pxQueue->u.xQueue.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00104$
	C$queue.c$2115$1_0$343 ==.
;	src/FreeRTOS/queue.c:2115: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2145$1_0$343 ==.
;	src/FreeRTOS/queue.c:2145: return xReturn;
	pop	ar4
	pop	ar3
	pop	ar2
	C$queue.c$2115$2_0$348 ==.
;	src/FreeRTOS/queue.c:2115: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
00104$:
	C$queue.c$2122$2_0$348 ==.
;	src/FreeRTOS/queue.c:2122: if( xPosition == queueOVERWRITE )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x02,00114$
	C$queue.c$2124$3_0$351 ==.
;	src/FreeRTOS/queue.c:2124: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	jz	00114$
	C$queue.c$2130$4_0$352 ==.
;	src/FreeRTOS/queue.c:2130: --uxMessagesWaiting;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	dec	@r0
00114$:
	C$queue.c$2143$1_0$343 ==.
;	src/FreeRTOS/queue.c:2143: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	C$queue.c$2145$1_0$343 ==.
;	src/FreeRTOS/queue.c:2145: return xReturn;
	mov	dpl,#0x00
	C$queue.c$2146$1_0$343 ==.
;	src/FreeRTOS/queue.c:2146: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2146$1_0$343 ==.
	XFqueue$prvCopyDataToQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCopyDataFromQueue'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;pxQueue                   Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
	Fqueue$prvCopyDataFromQueue$0$0 ==.
	C$queue.c$2149$1_0$356 ==.
;	src/FreeRTOS/queue.c:2149: static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
;	-----------------------------------------
;	 function prvCopyDataFromQueue
;	-----------------------------------------
_prvCopyDataFromQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$2151$1_0$356 ==.
;	src/FreeRTOS/queue.c:2151: if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,#0x26
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jnz	00115$
	ljmp	00105$
00115$:
	C$queue.c$2153$1_0$356 ==.
;	src/FreeRTOS/queue.c:2153: pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize; /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2154$2_0$357 ==.
;	src/FreeRTOS/queue.c:2154: if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00102$
	C$queue.c$2156$3_0$358 ==.
;	src/FreeRTOS/queue.c:2156: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00102$:
	C$queue.c$2162$2_0$357 ==.
;	src/FreeRTOS/queue.c:2162: ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar2
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00105$:
	C$queue.c$2164$1_0$356 ==.
;	src/FreeRTOS/queue.c:2164: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2164$1_0$356 ==.
	XFqueue$prvCopyDataFromQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvUnlockQueue'
;------------------------------------------------------------
;pxQueue                   Allocated to stack - _bp +1
;cTxLock                   Allocated to registers 
;cRxLock                   Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
	Fqueue$prvUnlockQueue$0$0 ==.
	C$queue.c$2167$1_0$361 ==.
;	src/FreeRTOS/queue.c:2167: static void prvUnlockQueue( Queue_t * const pxQueue )
;	-----------------------------------------
;	 function prvUnlockQueue
;	-----------------------------------------
_prvUnlockQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$2175$1_0$361 ==.
;	src/FreeRTOS/queue.c:2175: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2177$2_0$362 ==.
;	src/FreeRTOS/queue.c:2177: int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$2180$4_0$364 ==.
;	src/FreeRTOS/queue.c:2180: while( cTxLock > queueLOCKED_UNMODIFIED )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00106$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
	C$queue.c$2228$4_0$364 ==.
;	src/FreeRTOS/queue.c:2228: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00108$
	C$queue.c$2230$5_0$365 ==.
;	src/FreeRTOS/queue.c:2230: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
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
	push	ar4
	push	ar3
	push	ar2
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00105$
	C$queue.c$2234$6_0$366 ==.
;	src/FreeRTOS/queue.c:2234: vTaskMissedYield();
	push	ar4
	push	ar3
	push	ar2
	lcall	_vTaskMissedYield
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2243$4_0$364 ==.
;	src/FreeRTOS/queue.c:2243: break;
00105$:
	C$queue.c$2248$3_0$363 ==.
;	src/FreeRTOS/queue.c:2248: --cTxLock;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	dec	@r0
	sjmp	00106$
00108$:
	C$queue.c$2251$2_0$362 ==.
;	src/FreeRTOS/queue.c:2251: pxQueue->cTxLock = queueUNLOCKED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$2253$1_0$361 ==.
;	src/FreeRTOS/queue.c:2253: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2256$1_0$361 ==.
;	src/FreeRTOS/queue.c:2256: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2258$2_0$369 ==.
;	src/FreeRTOS/queue.c:2258: int8_t cRxLock = pxQueue->cRxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
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
	mov	r4,a
	C$queue.c$2260$3_0$370 ==.
;	src/FreeRTOS/queue.c:2260: while( cRxLock > queueLOCKED_UNMODIFIED )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0c
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00114$:
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
	C$queue.c$2262$3_0$370 ==.
;	src/FreeRTOS/queue.c:2262: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jz	00116$
	C$queue.c$2264$1_0$361 ==.
;	src/FreeRTOS/queue.c:2264: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00110$
	C$queue.c$2266$5_0$372 ==.
;	src/FreeRTOS/queue.c:2266: vTaskMissedYield();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_vTaskMissedYield
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00110$:
	C$queue.c$2273$4_0$371 ==.
;	src/FreeRTOS/queue.c:2273: --cRxLock;
	dec	r4
	C$queue.c$2277$2_0$369 ==.
;	src/FreeRTOS/queue.c:2277: break;
	sjmp	00114$
00116$:
	C$queue.c$2281$2_0$369 ==.
;	src/FreeRTOS/queue.c:2281: pxQueue->cRxLock = queueUNLOCKED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$2283$1_0$361 ==.
;	src/FreeRTOS/queue.c:2283: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2284$1_0$361 ==.
;	src/FreeRTOS/queue.c:2284: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2284$1_0$361 ==.
	XFqueue$prvUnlockQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIsQueueEmpty'
;------------------------------------------------------------
;pxQueue                   Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	Fqueue$prvIsQueueEmpty$0$0 ==.
	C$queue.c$2287$1_0$376 ==.
;	src/FreeRTOS/queue.c:2287: static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
;	-----------------------------------------
;	 function prvIsQueueEmpty
;	-----------------------------------------
_prvIsQueueEmpty:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2291$1_0$376 ==.
;	src/FreeRTOS/queue.c:2291: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2293$2_0$377 ==.
;	src/FreeRTOS/queue.c:2293: if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00102$
	C$queue.c$2295$3_0$378 ==.
;	src/FreeRTOS/queue.c:2295: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$queue.c$2299$3_0$379 ==.
;	src/FreeRTOS/queue.c:2299: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2302$1_0$376 ==.
;	src/FreeRTOS/queue.c:2302: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2304$1_0$376 ==.
;	src/FreeRTOS/queue.c:2304: return xReturn;
	mov	dpl,r7
	C$queue.c$2305$1_0$376 ==.
;	src/FreeRTOS/queue.c:2305: }
	C$queue.c$2305$1_0$376 ==.
	XFqueue$prvIsQueueEmpty$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueIsQueueEmptyFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueueIsQueueEmptyFromISR$0$0 ==.
	C$queue.c$2308$1_0$381 ==.
;	src/FreeRTOS/queue.c:2308: BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function xQueueIsQueueEmptyFromISR
;	-----------------------------------------
_xQueueIsQueueEmptyFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2314$1_0$381 ==.
;	src/FreeRTOS/queue.c:2314: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00102$
	C$queue.c$2316$2_0$382 ==.
;	src/FreeRTOS/queue.c:2316: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$queue.c$2320$2_0$383 ==.
;	src/FreeRTOS/queue.c:2320: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2323$1_0$381 ==.
;	src/FreeRTOS/queue.c:2323: return xReturn;
	mov	dpl,r7
	C$queue.c$2324$1_0$381 ==.
;	src/FreeRTOS/queue.c:2324: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
	C$queue.c$2324$1_0$381 ==.
	XG$xQueueIsQueueEmptyFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIsQueueFull'
;------------------------------------------------------------
;pxQueue                   Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	Fqueue$prvIsQueueFull$0$0 ==.
	C$queue.c$2327$1_0$385 ==.
;	src/FreeRTOS/queue.c:2327: static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
;	-----------------------------------------
;	 function prvIsQueueFull
;	-----------------------------------------
_prvIsQueueFull:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2331$1_0$385 ==.
;	src/FreeRTOS/queue.c:2331: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2333$2_0$386 ==.
;	src/FreeRTOS/queue.c:2333: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	cjne	a,ar5,00102$
	C$queue.c$2335$3_0$387 ==.
;	src/FreeRTOS/queue.c:2335: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$queue.c$2339$3_0$388 ==.
;	src/FreeRTOS/queue.c:2339: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2342$1_0$385 ==.
;	src/FreeRTOS/queue.c:2342: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2344$1_0$385 ==.
;	src/FreeRTOS/queue.c:2344: return xReturn;
	mov	dpl,r7
	C$queue.c$2345$1_0$385 ==.
;	src/FreeRTOS/queue.c:2345: }
	C$queue.c$2345$1_0$385 ==.
	XFqueue$prvIsQueueFull$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueIsQueueFullFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueueIsQueueFullFromISR$0$0 ==.
	C$queue.c$2348$1_0$390 ==.
;	src/FreeRTOS/queue.c:2348: BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function xQueueIsQueueFullFromISR
;	-----------------------------------------
_xQueueIsQueueFullFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2354$1_0$390 ==.
;	src/FreeRTOS/queue.c:2354: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	cjne	a,ar5,00102$
	C$queue.c$2356$2_0$391 ==.
;	src/FreeRTOS/queue.c:2356: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$queue.c$2360$2_0$392 ==.
;	src/FreeRTOS/queue.c:2360: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2363$1_0$390 ==.
;	src/FreeRTOS/queue.c:2363: return xReturn;
	mov	dpl,r7
	C$queue.c$2364$1_0$390 ==.
;	src/FreeRTOS/queue.c:2364: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
	C$queue.c$2364$1_0$390 ==.
	XG$xQueueIsQueueFullFromISR$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
