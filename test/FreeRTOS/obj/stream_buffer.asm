;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module stream_buffer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _xTaskCheckForTimeOut
	.globl _vTaskSetTimeOutState
	.globl _xTaskGetCurrentTaskHandle
	.globl _xTaskNotifyStateClear
	.globl _xTaskNotifyWait
	.globl _xTaskGenericNotifyFromISR
	.globl _xTaskGenericNotify
	.globl _xTaskResumeAll
	.globl _vTaskSuspendAll
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _memset
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
	.globl _xStreamBufferGenericCreate
	.globl _vStreamBufferDelete
	.globl _xStreamBufferReset
	.globl _xStreamBufferSetTriggerLevel
	.globl _xStreamBufferSpacesAvailable
	.globl _xStreamBufferBytesAvailable
	.globl _xStreamBufferSend
	.globl _xStreamBufferSendFromISR
	.globl _xStreamBufferReceive
	.globl _xStreamBufferNextMessageLengthBytes
	.globl _xStreamBufferReceiveFromISR
	.globl _xStreamBufferIsEmpty
	.globl _xStreamBufferIsFull
	.globl _xStreamBufferSendCompletedFromISR
	.globl _xStreamBufferReceiveCompletedFromISR
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function 'xStreamBufferGenericCreate'
;------------------------------------------------------------
;xTriggerLevelBytes        Allocated to stack - _bp -4
;xIsMessageBuffer          Allocated to stack - _bp -5
;xBufferSizeBytes          Allocated to stack - _bp +1
;pucAllocatedMemory        Allocated to stack - _bp +3
;ucFlags                   Allocated to stack - _bp +6
;------------------------------------------------------------
	G$xStreamBufferGenericCreate$0$0 ==.
	C$stream_buffer.c$219$0_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:219: StreamBufferHandle_t xStreamBufferGenericCreate( size_t xBufferSizeBytes, size_t xTriggerLevelBytes, BaseType_t xIsMessageBuffer )
;	-----------------------------------------
;	 function xStreamBufferGenericCreate
;	-----------------------------------------
_xStreamBufferGenericCreate:
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
	add	a,#0x06
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
	C$stream_buffer.c$228$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:228: if( xIsMessageBuffer == pdTRUE )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	cjne	@r0,#0x01,00102$
	C$stream_buffer.c$231$2_0$120 ==.
;	src/FreeRTOS/stream_buffer.c:231: ucFlags = sbFLAGS_IS_MESSAGE_BUFFER;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00103$
00102$:
	C$stream_buffer.c$237$2_0$121 ==.
;	src/FreeRTOS/stream_buffer.c:237: ucFlags = 0;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x00
00103$:
	C$stream_buffer.c$244$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:244: if( xTriggerLevelBytes == ( size_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
	C$stream_buffer.c$246$2_0$122 ==.
;	src/FreeRTOS/stream_buffer.c:246: xTriggerLevelBytes = ( size_t ) 1;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00105$:
	C$stream_buffer.c$257$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:257: xBufferSizeBytes++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$258$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:258: pucAllocatedMemory = ( uint8_t * ) pvPortMalloc( xBufferSizeBytes + sizeof( StreamBuffer_t ) ); /*lint !e9079 malloc() only returns void*. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	_pvPortMalloc
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$stream_buffer.c$260$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:260: if( pucAllocatedMemory != NULL )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
	C$stream_buffer.c$263$2_0$123 ==.
;	src/FreeRTOS/stream_buffer.c:263: pucAllocatedMemory + sizeof( StreamBuffer_t ),  /* Storage area follows. */ /*lint !e9016 Indexing past structure valid for uint8_t pointer, also storage area has no alignment requirement. */
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	C$stream_buffer.c$262$2_0$123 ==.
;	src/FreeRTOS/stream_buffer.c:262: prvInitialiseNewStreamBuffer( ( StreamBuffer_t * ) pucAllocatedMemory, /* Structure at the start of the allocated memory. */ /*lint !e9087 Safe cast as allocated memory is aligned. */ /*lint !e826 Area is not too small and alignment is guaranteed provided malloc() behaves as expected and returns aligned buffer. */
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x06
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
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_prvInitialiseNewStreamBuffer
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
00107$:
	C$stream_buffer.c$275$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:275: return ( StreamBufferHandle_t ) pucAllocatedMemory; /*lint !e9087 !e826 Safe cast as allocated memory is aligned. */
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	C$stream_buffer.c$276$1_0$119 ==.
;	src/FreeRTOS/stream_buffer.c:276: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$276$1_0$119 ==.
	XG$xStreamBufferGenericCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vStreamBufferDelete'
;------------------------------------------------------------
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$vStreamBufferDelete$0$0 ==.
	C$stream_buffer.c$359$1_0$126 ==.
;	src/FreeRTOS/stream_buffer.c:359: void vStreamBufferDelete( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function vStreamBufferDelete
;	-----------------------------------------
_vStreamBufferDelete:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$361$2_0$126 ==.
;	src/FreeRTOS/stream_buffer.c:361: StreamBuffer_t * pxStreamBuffer = xStreamBuffer;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	C$stream_buffer.c$367$1_0$126 ==.
;	src/FreeRTOS/stream_buffer.c:367: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_STATICALLY_ALLOCATED ) == ( uint8_t ) pdFALSE )
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jb	acc.1,00102$
	C$stream_buffer.c$373$3_0$128 ==.
;	src/FreeRTOS/stream_buffer.c:373: vPortFree( ( void * ) pxStreamBuffer ); /*lint !e9087 Standard free() semantics require void *, plus pxStreamBuffer was allocated by pvPortMalloc(). */
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vPortFree
	sjmp	00104$
00102$:
	C$stream_buffer.c$387$2_0$129 ==.
;	src/FreeRTOS/stream_buffer.c:387: ( void ) memset( pxStreamBuffer, 0x00, sizeof( StreamBuffer_t ) );
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
00104$:
	C$stream_buffer.c$389$1_0$126 ==.
;	src/FreeRTOS/stream_buffer.c:389: }
	C$stream_buffer.c$389$1_0$126 ==.
	XG$vStreamBufferDelete$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferReset'
;------------------------------------------------------------
;xStreamBuffer             Allocated to stack - _bp +1
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
	G$xStreamBufferReset$0$0 ==.
	C$stream_buffer.c$392$1_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:392: BaseType_t xStreamBufferReset( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferReset
;	-----------------------------------------
_xStreamBufferReset:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
	C$stream_buffer.c$395$2_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:395: BaseType_t xReturn = pdFAIL;
	mov	r7,#0x00
	C$stream_buffer.c$412$1_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:412: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$stream_buffer.c$414$2_0$132 ==.
;	src/FreeRTOS/stream_buffer.c:414: if( pxStreamBuffer->xTaskWaitingToReceive == NULL )
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00115$
	ljmp	00104$
00115$:
	C$stream_buffer.c$416$3_0$133 ==.
;	src/FreeRTOS/stream_buffer.c:416: if( pxStreamBuffer->xTaskWaitingToSend == NULL )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0b
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00116$
	ljmp	00104$
00116$:
	C$stream_buffer.c$422$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:422: pxStreamBuffer->ucFlags );
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
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
	C$stream_buffer.c$421$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:421: pxStreamBuffer->xTriggerLevelBytes,
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$stream_buffer.c$420$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:420: pxStreamBuffer->xLength,
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$419$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:419: pxStreamBuffer->pucBuffer,
	mov	r0,_bp
	inc	r0
	mov	a,#0x0e
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$stream_buffer.c$418$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:418: prvInitialiseNewStreamBuffer( pxStreamBuffer,
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvInitialiseNewStreamBuffer
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	C$stream_buffer.c$423$4_0$134 ==.
;	src/FreeRTOS/stream_buffer.c:423: xReturn = pdPASS;
	mov	r7,#0x01
00104$:
	C$stream_buffer.c$435$1_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:435: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$stream_buffer.c$437$1_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:437: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$438$1_0$131 ==.
;	src/FreeRTOS/stream_buffer.c:438: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$438$1_0$131 ==.
	XG$xStreamBufferReset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferSetTriggerLevel'
;------------------------------------------------------------
;xTriggerLevel             Allocated to stack - _bp -4
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$xStreamBufferSetTriggerLevel$0$0 ==.
	C$stream_buffer.c$441$1_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:441: BaseType_t xStreamBufferSetTriggerLevel( StreamBufferHandle_t xStreamBuffer, size_t xTriggerLevel )
;	-----------------------------------------
;	 function xStreamBufferSetTriggerLevel
;	-----------------------------------------
_xStreamBufferSetTriggerLevel:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$443$2_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:443: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
	C$stream_buffer.c$449$1_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:449: if( xTriggerLevel == ( size_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	C$stream_buffer.c$451$2_0$137 ==.
;	src/FreeRTOS/stream_buffer.c:451: xTriggerLevel = ( size_t ) 1;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00102$:
	C$stream_buffer.c$456$1_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:456: if( xTriggerLevel <= pxStreamBuffer->xLength )
	mov	a,#0x04
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	jc	00104$
	C$stream_buffer.c$458$2_0$138 ==.
;	src/FreeRTOS/stream_buffer.c:458: pxStreamBuffer->xTriggerLevelBytes = xTriggerLevel;
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$459$2_0$138 ==.
;	src/FreeRTOS/stream_buffer.c:459: xReturn = pdPASS;
	mov	r7,#0x01
	sjmp	00105$
00104$:
	C$stream_buffer.c$463$2_0$139 ==.
;	src/FreeRTOS/stream_buffer.c:463: xReturn = pdFALSE;
	mov	r7,#0x00
00105$:
	C$stream_buffer.c$466$1_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:466: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$467$1_0$136 ==.
;	src/FreeRTOS/stream_buffer.c:467: }
	pop	_bp
	C$stream_buffer.c$467$1_0$136 ==.
	XG$xStreamBufferSetTriggerLevel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferSpacesAvailable'
;------------------------------------------------------------
;xStreamBuffer             Allocated to stack - _bp +1
;pxStreamBuffer            Allocated to registers 
;xSpace                    Allocated to registers r5 r6 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xStreamBufferSpacesAvailable$0$0 ==.
	C$stream_buffer.c$470$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:470: size_t xStreamBufferSpacesAvailable( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferSpacesAvailable
;	-----------------------------------------
_xStreamBufferSpacesAvailable:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	C$stream_buffer.c$477$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:477: xSpace = pxStreamBuffer->xLength + pxStreamBuffer->xTail;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
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
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	add	a,r3
	mov	@r0,a
	mov	a,r7
	addc	a,r4
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$478$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:478: xSpace -= pxStreamBuffer->xHead;
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	C$stream_buffer.c$479$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:479: xSpace -= ( size_t ) 1;
	mov	a,r5
	add	a,#0xff
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	C$stream_buffer.c$481$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:481: if( xSpace >= pxStreamBuffer->xLength )
	clr	c
	mov	a,r7
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jc	00102$
	C$stream_buffer.c$483$2_0$142 ==.
;	src/FreeRTOS/stream_buffer.c:483: xSpace -= pxStreamBuffer->xLength;
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
00102$:
	C$stream_buffer.c$490$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:490: return xSpace;
	mov	dpl,r7
	mov	dph,r6
	C$stream_buffer.c$491$1_0$141 ==.
;	src/FreeRTOS/stream_buffer.c:491: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$491$1_0$141 ==.
	XG$xStreamBufferSpacesAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferBytesAvailable'
;------------------------------------------------------------
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r6 r7 
;------------------------------------------------------------
	G$xStreamBufferBytesAvailable$0$0 ==.
	C$stream_buffer.c$494$1_0$145 ==.
;	src/FreeRTOS/stream_buffer.c:494: size_t xStreamBufferBytesAvailable( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferBytesAvailable
;	-----------------------------------------
_xStreamBufferBytesAvailable:
	C$stream_buffer.c$501$1_0$145 ==.
;	src/FreeRTOS/stream_buffer.c:501: xReturn = prvBytesInBuffer( pxStreamBuffer );
	lcall	_prvBytesInBuffer
	C$stream_buffer.c$502$1_0$145 ==.
;	src/FreeRTOS/stream_buffer.c:502: return xReturn;
	C$stream_buffer.c$503$1_0$145 ==.
;	src/FreeRTOS/stream_buffer.c:503: }
	C$stream_buffer.c$503$1_0$145 ==.
	XG$xStreamBufferBytesAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferSend'
;------------------------------------------------------------
;pvTxData                  Allocated to stack - _bp -5
;xDataLengthBytes          Allocated to stack - _bp -7
;xTicksToWait              Allocated to stack - _bp -9
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to stack - _bp +4
;xReturn                   Allocated to stack - _bp +2
;xSpace                    Allocated to stack - _bp +7
;xRequiredSpace            Allocated to stack - _bp +9
;xTimeOut                  Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
	G$xStreamBufferSend$0$0 ==.
	C$stream_buffer.c$506$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:506: size_t xStreamBufferSend( StreamBufferHandle_t xStreamBuffer,
;	-----------------------------------------
;	 function xStreamBufferSend
;	-----------------------------------------
_xStreamBufferSend:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0d
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$511$2_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:511: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$512$2_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:512: size_t xReturn, xSpace = 0;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$513$2_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:513: size_t xRequiredSpace = xDataLengthBytes;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$stream_buffer.c$523$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:523: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
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
	jnb	acc.0,00102$
	C$stream_buffer.c$525$2_0$148 ==.
;	src/FreeRTOS/stream_buffer.c:525: xRequiredSpace += sbBYTES_TO_STORE_MESSAGE_LENGTH;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00102$:
	C$stream_buffer.c$535$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:535: if( xTicksToWait != ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00155$
	ljmp	00110$
00155$:
	C$stream_buffer.c$537$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:537: vTaskSetTimeOutState( &xTimeOut );
	mov	a,_bp
	add	a,#0x0b
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_vTaskSetTimeOutState
	pop	ar7
	C$stream_buffer.c$539$2_0$150 ==.
;	src/FreeRTOS/stream_buffer.c:539: do
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$606$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:606: return xReturn;
	C$stream_buffer.c$539$2_0$150 ==.
;	src/FreeRTOS/stream_buffer.c:539: do
00106$:
	C$stream_buffer.c$543$3_0$151 ==.
;	src/FreeRTOS/stream_buffer.c:543: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$stream_buffer.c$545$4_0$152 ==.
;	src/FreeRTOS/stream_buffer.c:545: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_xStreamBufferSpacesAvailable
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$547$4_0$152 ==.
;	src/FreeRTOS/stream_buffer.c:547: if( xSpace < xRequiredSpace )
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00104$
	C$stream_buffer.c$550$5_0$153 ==.
;	src/FreeRTOS/stream_buffer.c:550: ( void ) xTaskNotifyStateClear( NULL );
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_xTaskNotifyStateClear
	C$stream_buffer.c$554$5_0$153 ==.
;	src/FreeRTOS/stream_buffer.c:554: pxStreamBuffer->xTaskWaitingToSend = xTaskGetCurrentTaskHandle();
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_xTaskGetCurrentTaskHandle
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
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
	sjmp	00105$
00104$:
	C$stream_buffer.c$558$5_0$154 ==.
;	src/FreeRTOS/stream_buffer.c:558: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$stream_buffer.c$559$5_0$154 ==.
;	src/FreeRTOS/stream_buffer.c:559: break;
	ljmp	00110$
00105$:
	C$stream_buffer.c$562$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:562: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$stream_buffer.c$565$3_0$151 ==.
;	src/FreeRTOS/stream_buffer.c:565: ( void ) xTaskNotifyWait( ( uint32_t ) 0, ( uint32_t ) 0, NULL, xTicksToWait );
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_xTaskNotifyWait
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$566$3_0$151 ==.
;	src/FreeRTOS/stream_buffer.c:566: pxStreamBuffer->xTaskWaitingToSend = NULL;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
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
	C$stream_buffer.c$568$2_0$150 ==.
;	src/FreeRTOS/stream_buffer.c:568: } while( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE );
	mov	a,_bp
	add	a,#0xf7
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jnz	00157$
	ljmp	00106$
00157$:
00110$:
	C$stream_buffer.c$575$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:575: if( xSpace == ( size_t ) 0 )
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00112$
	C$stream_buffer.c$577$2_0$156 ==.
;	src/FreeRTOS/stream_buffer.c:577: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_xStreamBufferSpacesAvailable
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00112$:
	C$stream_buffer.c$584$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:584: xReturn = prvWriteMessageToBuffer( pxStreamBuffer, pvTxData, xDataLengthBytes, xSpace, xRequiredSpace );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvWriteMessageToBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$586$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:586: if( xReturn > ( size_t ) 0 )
	mov	a,r6
	orl	a,r7
	jnz	00159$
	ljmp	00119$
00159$:
	C$stream_buffer.c$591$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:591: if( prvBytesInBuffer( pxStreamBuffer ) >= pxStreamBuffer->xTriggerLevelBytes )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvBytesInBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00160$
	ljmp	00119$
00160$:
	C$stream_buffer.c$593$3_0$159 ==.
;	src/FreeRTOS/stream_buffer.c:593: sbSEND_COMPLETED( pxStreamBuffer );
	lcall	_vTaskSuspendAll
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	a,r2
	orl	a,r5
	jz	00114$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar4
	push	ar3
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskGenericNotify
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar6
	mov	r2,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00114$:
	lcall	_xTaskResumeAll
	C$stream_buffer.c$603$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:603: traceSTREAM_BUFFER_SEND_FAILED( xStreamBuffer );
00119$:
	C$stream_buffer.c$606$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:606: return xReturn;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$607$1_0$147 ==.
;	src/FreeRTOS/stream_buffer.c:607: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$607$1_0$147 ==.
	XG$xStreamBufferSend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferSendFromISR'
;------------------------------------------------------------
;pvTxData                  Allocated to stack - _bp -5
;xDataLengthBytes          Allocated to stack - _bp -7
;pxHigherPriorityTaskWoken Allocated to stack - _bp -10
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to stack - _bp +3
;xReturn                   Allocated to stack - _bp +1
;xSpace                    Allocated to registers 
;xRequiredSpace            Allocated to registers r4 r3 
;uxSavedInterruptStatus    Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xStreamBufferSendFromISR$0$0 ==.
	C$stream_buffer.c$610$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:610: size_t xStreamBufferSendFromISR( StreamBufferHandle_t xStreamBuffer,
;	-----------------------------------------
;	 function xStreamBufferSendFromISR
;	-----------------------------------------
_xStreamBufferSendFromISR:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$615$2_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:615: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$617$2_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:617: size_t xRequiredSpace = xDataLengthBytes;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	C$stream_buffer.c$626$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:626: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnb	acc.0,00102$
	C$stream_buffer.c$628$2_0$166 ==.
;	src/FreeRTOS/stream_buffer.c:628: xRequiredSpace += sbBYTES_TO_STORE_MESSAGE_LENGTH;
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
00102$:
	C$stream_buffer.c$635$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:635: xSpace = xStreamBufferSpacesAvailable( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	lcall	_xStreamBufferSpacesAvailable
	mov	r6,dpl
	mov	r7,dph
	C$stream_buffer.c$636$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:636: xReturn = prvWriteMessageToBuffer( pxStreamBuffer, pvTxData, xDataLengthBytes, xSpace, xRequiredSpace );
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvWriteMessageToBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$638$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:638: if( xReturn > ( size_t ) 0 )
	mov	a,r6
	orl	a,r7
	jnz	00128$
	ljmp	00108$
00128$:
	C$stream_buffer.c$641$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:641: if( prvBytesInBuffer( pxStreamBuffer ) >= pxStreamBuffer->xTriggerLevelBytes )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvBytesInBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00129$
	ljmp	00108$
00129$:
	C$stream_buffer.c$643$5_0$171 ==.
;	src/FreeRTOS/stream_buffer.c:643: sbSEND_COMPLETE_FROM_ISR( pxStreamBuffer, pxHigherPriorityTaskWoken );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r5
	jz	00108$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskGenericNotifyFromISR
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar6
	mov	r2,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00108$:
	C$stream_buffer.c$657$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:657: return xReturn;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$658$1_0$165 ==.
;	src/FreeRTOS/stream_buffer.c:658: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$658$1_0$165 ==.
	XG$xStreamBufferSendFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvWriteMessageToBuffer'
;------------------------------------------------------------
;pvTxData                  Allocated to stack - _bp -5
;xDataLengthBytes          Allocated to stack - _bp -7
;xSpace                    Allocated to stack - _bp -9
;xRequiredSpace            Allocated to stack - _bp -11
;pxStreamBuffer            Allocated to stack - _bp +1
;xShouldWrite              Allocated to registers r4 
;xReturn                   Allocated to registers r6 r7 
;------------------------------------------------------------
	Fstream_buffer$prvWriteMessageToBuffer$0$0 ==.
	C$stream_buffer.c$661$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:661: static size_t prvWriteMessageToBuffer( StreamBuffer_t * const pxStreamBuffer,
;	-----------------------------------------
;	 function prvWriteMessageToBuffer
;	-----------------------------------------
_prvWriteMessageToBuffer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$stream_buffer.c$670$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:670: if( xSpace == ( size_t ) 0 )
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	C$stream_buffer.c$674$2_0$177 ==.
;	src/FreeRTOS/stream_buffer.c:674: xShouldWrite = pdFALSE;
	jnz	00108$
	mov	r4,a
	ljmp	00109$
00108$:
	C$stream_buffer.c$676$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:676: else if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) == ( uint8_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
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
	jb	acc.0,00105$
	C$stream_buffer.c$681$2_0$178 ==.
;	src/FreeRTOS/stream_buffer.c:681: xShouldWrite = pdTRUE;
	mov	r4,#0x01
	C$stream_buffer.c$682$2_0$178 ==.
;	src/FreeRTOS/stream_buffer.c:682: xDataLengthBytes = configMIN( xDataLengthBytes, xSpace );
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00115$
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00116$
00115$:
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00116$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00109$
00105$:
	C$stream_buffer.c$684$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:684: else if( xSpace >= xRequiredSpace )
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0xf5
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jc	00102$
	C$stream_buffer.c$690$2_0$179 ==.
;	src/FreeRTOS/stream_buffer.c:690: xShouldWrite = pdTRUE;
	mov	r4,#0x01
	C$stream_buffer.c$691$2_0$179 ==.
;	src/FreeRTOS/stream_buffer.c:691: ( void ) prvWriteBytesToBuffer( pxStreamBuffer, ( const uint8_t * ) &( xDataLengthBytes ), sbBYTES_TO_STORE_MESSAGE_LENGTH );
	mov	a,_bp
	add	a,#0xf9
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvWriteBytesToBuffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	sjmp	00109$
00102$:
	C$stream_buffer.c$696$2_0$180 ==.
;	src/FreeRTOS/stream_buffer.c:696: xShouldWrite = pdFALSE;
	mov	r4,#0x00
00109$:
	C$stream_buffer.c$699$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:699: if( xShouldWrite != pdFALSE )
	mov	a,r4
	jz	00111$
	C$stream_buffer.c$702$2_0$181 ==.
;	src/FreeRTOS/stream_buffer.c:702: xReturn = prvWriteBytesToBuffer( pxStreamBuffer, ( const uint8_t * ) pvTxData, xDataLengthBytes ); /*lint !e9079 Storage buffer is implemented as uint8_t for ease of sizing, alighment and access. */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	lcall	_prvWriteBytesToBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	sjmp	00112$
00111$:
	C$stream_buffer.c$706$2_0$182 ==.
;	src/FreeRTOS/stream_buffer.c:706: xReturn = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00112$:
	C$stream_buffer.c$709$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:709: return xReturn;
	mov	dpl,r6
	mov	dph,r7
	C$stream_buffer.c$710$1_0$176 ==.
;	src/FreeRTOS/stream_buffer.c:710: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$710$1_0$176 ==.
	XFstream_buffer$prvWriteMessageToBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferReceive'
;------------------------------------------------------------
;pvRxData                  Allocated to stack - _bp -5
;xBufferLengthBytes        Allocated to stack - _bp -7
;xTicksToWait              Allocated to stack - _bp -9
;xStreamBuffer             Allocated to registers r7 r6 r5 
;pxStreamBuffer            Allocated to stack - _bp +3
;xReceivedLength           Allocated to stack - _bp +1
;xBytesAvailable           Allocated to stack - _bp +6
;xBytesToStoreMessageLength Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xStreamBufferReceive$0$0 ==.
	C$stream_buffer.c$713$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:713: size_t xStreamBufferReceive( StreamBufferHandle_t xStreamBuffer,
;	-----------------------------------------
;	 function xStreamBufferReceive
;	-----------------------------------------
_xStreamBufferReceive:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$stream_buffer.c$718$2_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:718: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$stream_buffer.c$719$2_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:719: size_t xReceivedLength = 0, xBytesAvailable, xBytesToStoreMessageLength;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$729$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:729: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	jnb	acc.0,00102$
	C$stream_buffer.c$731$2_0$185 ==.
;	src/FreeRTOS/stream_buffer.c:731: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x02
	inc	r0
	mov	@r0,#0x00
	sjmp	00103$
00102$:
	C$stream_buffer.c$735$2_0$186 ==.
;	src/FreeRTOS/stream_buffer.c:735: xBytesToStoreMessageLength = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	C$stream_buffer.c$738$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:738: if( xTicksToWait != ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00149$
	ljmp	00109$
00149$:
	C$stream_buffer.c$742$2_0$187 ==.
;	src/FreeRTOS/stream_buffer.c:742: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$stream_buffer.c$744$3_0$188 ==.
;	src/FreeRTOS/stream_buffer.c:744: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvBytesInBuffer
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	C$stream_buffer.c$751$3_0$188 ==.
;	src/FreeRTOS/stream_buffer.c:751: if( xBytesAvailable <= xBytesToStoreMessageLength )
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	mov	b0,c
	jc	00105$
	C$stream_buffer.c$754$4_0$189 ==.
;	src/FreeRTOS/stream_buffer.c:754: ( void ) xTaskNotifyStateClear( NULL );
	mov	dptr,#0x0000
	mov	b,#0x00
	push	bits
	lcall	_xTaskNotifyStateClear
	pop	bits
	C$stream_buffer.c$758$4_0$189 ==.
;	src/FreeRTOS/stream_buffer.c:758: pxStreamBuffer->xTaskWaitingToReceive = xTaskGetCurrentTaskHandle();
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	push	ar5
	push	ar3
	push	ar2
	push	bits
	lcall	_xTaskGetCurrentTaskHandle
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	bits
	pop	ar2
	pop	ar3
	pop	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00105$:
	C$stream_buffer.c$765$2_0$187 ==.
;	src/FreeRTOS/stream_buffer.c:765: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$stream_buffer.c$767$2_0$187 ==.
;	src/FreeRTOS/stream_buffer.c:767: if( xBytesAvailable <= xBytesToStoreMessageLength )
	jnb	b0,00151$
	ljmp	00110$
00151$:
	C$stream_buffer.c$771$3_0$191 ==.
;	src/FreeRTOS/stream_buffer.c:771: ( void ) xTaskNotifyWait( ( uint32_t ) 0, ( uint32_t ) 0, NULL, xTicksToWait );
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_xTaskNotifyWait
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	C$stream_buffer.c$772$3_0$191 ==.
;	src/FreeRTOS/stream_buffer.c:772: pxStreamBuffer->xTaskWaitingToReceive = NULL;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
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
	C$stream_buffer.c$775$3_0$191 ==.
;	src/FreeRTOS/stream_buffer.c:775: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvBytesInBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00110$
00109$:
	C$stream_buffer.c$784$2_0$193 ==.
;	src/FreeRTOS/stream_buffer.c:784: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvBytesInBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00110$:
	C$stream_buffer.c$792$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:792: if( xBytesAvailable > xBytesToStoreMessageLength )
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	jc	00152$
	ljmp	00117$
00152$:
	C$stream_buffer.c$794$2_0$194 ==.
;	src/FreeRTOS/stream_buffer.c:794: xReceivedLength = prvReadMessageFromBuffer( pxStreamBuffer, pvRxData, xBufferLengthBytes, xBytesAvailable, xBytesToStoreMessageLength );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvReadMessageFromBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$797$2_0$194 ==.
;	src/FreeRTOS/stream_buffer.c:797: if( xReceivedLength != ( size_t ) 0 )
	mov	a,r6
	orl	a,r7
	jnz	00153$
	ljmp	00117$
00153$:
	C$stream_buffer.c$800$3_0$195 ==.
;	src/FreeRTOS/stream_buffer.c:800: sbRECEIVE_COMPLETED( pxStreamBuffer );
	lcall	_vTaskSuspendAll
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x0b
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	a,r2
	orl	a,r3
	jz	00112$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskGenericNotify
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
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
00112$:
	lcall	_xTaskResumeAll
	C$stream_buffer.c$810$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:810: mtCOVERAGE_TEST_MARKER();
00117$:
	C$stream_buffer.c$813$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:813: return xReceivedLength;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$814$1_0$184 ==.
;	src/FreeRTOS/stream_buffer.c:814: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$814$1_0$184 ==.
	XG$xStreamBufferReceive$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferNextMessageLengthBytes'
;------------------------------------------------------------
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r3 r4 
;xBytesAvailable           Allocated to stack - _bp +1
;xOriginalTail             Allocated to stack - _bp +3
;xTempReturn               Allocated to stack - _bp +5
;------------------------------------------------------------
	G$xStreamBufferNextMessageLengthBytes$0$0 ==.
	C$stream_buffer.c$817$1_0$201 ==.
;	src/FreeRTOS/stream_buffer.c:817: size_t xStreamBufferNextMessageLengthBytes( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferNextMessageLengthBytes
;	-----------------------------------------
_xStreamBufferNextMessageLengthBytes:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$826$1_0$201 ==.
;	src/FreeRTOS/stream_buffer.c:826: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
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
	jb	acc.0,00117$
	ljmp	00105$
00117$:
	C$stream_buffer.c$828$2_0$202 ==.
;	src/FreeRTOS/stream_buffer.c:828: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_prvBytesInBuffer
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$stream_buffer.c$829$2_0$202 ==.
;	src/FreeRTOS/stream_buffer.c:829: if( xBytesAvailable > sbBYTES_TO_STORE_MESSAGE_LENGTH )
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,#0x02
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00102$
	C$stream_buffer.c$837$3_0$203 ==.
;	src/FreeRTOS/stream_buffer.c:837: xOriginalTail = pxStreamBuffer->xTail;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$838$3_0$203 ==.
;	src/FreeRTOS/stream_buffer.c:838: ( void ) prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) &xTempReturn, sbBYTES_TO_STORE_MESSAGE_LENGTH, xBytesAvailable );
	mov	a,_bp
	add	a,#0x05
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvReadBytesFromBuffer
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$839$3_0$203 ==.
;	src/FreeRTOS/stream_buffer.c:839: xReturn = ( size_t ) xTempReturn;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	C$stream_buffer.c$840$3_0$203 ==.
;	src/FreeRTOS/stream_buffer.c:840: pxStreamBuffer->xTail = xOriginalTail;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00106$
00102$:
	C$stream_buffer.c$849$3_0$204 ==.
;	src/FreeRTOS/stream_buffer.c:849: xReturn = 0;
	mov	r3,#0x00
	mov	r4,#0x00
	sjmp	00106$
00105$:
	C$stream_buffer.c$854$2_0$205 ==.
;	src/FreeRTOS/stream_buffer.c:854: xReturn = 0;
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	C$stream_buffer.c$857$1_0$201 ==.
;	src/FreeRTOS/stream_buffer.c:857: return xReturn;
	mov	dpl,r3
	mov	dph,r4
	C$stream_buffer.c$858$1_0$201 ==.
;	src/FreeRTOS/stream_buffer.c:858: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$858$1_0$201 ==.
	XG$xStreamBufferNextMessageLengthBytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferReceiveFromISR'
;------------------------------------------------------------
;pvRxData                  Allocated to stack - _bp -5
;xBufferLengthBytes        Allocated to stack - _bp -7
;pxHigherPriorityTaskWoken Allocated to stack - _bp -10
;xStreamBuffer             Allocated to registers r7 r6 r5 
;pxStreamBuffer            Allocated to stack - _bp +3
;xReceivedLength           Allocated to stack - _bp +1
;xBytesAvailable           Allocated to registers r2 r3 
;xBytesToStoreMessageLength Allocated to registers r4 r5 
;uxSavedInterruptStatus    Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xStreamBufferReceiveFromISR$0$0 ==.
	C$stream_buffer.c$861$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:861: size_t xStreamBufferReceiveFromISR( StreamBufferHandle_t xStreamBuffer,
;	-----------------------------------------
;	 function xStreamBufferReceiveFromISR
;	-----------------------------------------
_xStreamBufferReceiveFromISR:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$stream_buffer.c$866$2_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:866: StreamBuffer_t * const pxStreamBuffer = xStreamBuffer;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$stream_buffer.c$867$2_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:867: size_t xReceivedLength = 0, xBytesAvailable, xBytesToStoreMessageLength;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$877$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:877: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	jnb	acc.0,00102$
	C$stream_buffer.c$879$2_0$208 ==.
;	src/FreeRTOS/stream_buffer.c:879: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00103$
00102$:
	C$stream_buffer.c$883$2_0$209 ==.
;	src/FreeRTOS/stream_buffer.c:883: xBytesToStoreMessageLength = 0;
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	C$stream_buffer.c$886$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:886: xBytesAvailable = prvBytesInBuffer( pxStreamBuffer );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar4
	lcall	_prvBytesInBuffer
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	C$stream_buffer.c$893$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:893: if( xBytesAvailable > xBytesToStoreMessageLength )
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jc	00129$
	ljmp	00109$
00129$:
	C$stream_buffer.c$895$2_0$210 ==.
;	src/FreeRTOS/stream_buffer.c:895: xReceivedLength = prvReadMessageFromBuffer( pxStreamBuffer, pvRxData, xBufferLengthBytes, xBytesAvailable, xBytesToStoreMessageLength );
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvReadMessageFromBuffer
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$stream_buffer.c$898$2_0$210 ==.
;	src/FreeRTOS/stream_buffer.c:898: if( xReceivedLength != ( size_t ) 0 )
	mov	a,r4
	orl	a,r5
	jnz	00130$
	ljmp	00109$
00130$:
	C$stream_buffer.c$900$5_0$213 ==.
;	src/FreeRTOS/stream_buffer.c:900: sbRECEIVE_COMPLETED_FROM_ISR( pxStreamBuffer, pxHigherPriorityTaskWoken );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	orl	a,r6
	jz	00109$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_xTaskGenericNotifyFromISR
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r2,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00109$:
	C$stream_buffer.c$914$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:914: return xReceivedLength;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$915$1_0$207 ==.
;	src/FreeRTOS/stream_buffer.c:915: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$915$1_0$207 ==.
	XG$xStreamBufferReceiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvReadMessageFromBuffer'
;------------------------------------------------------------
;pvRxData                  Allocated to stack - _bp -5
;xBufferLengthBytes        Allocated to stack - _bp -7
;xBytesAvailable           Allocated to stack - _bp -9
;xBytesToStoreMessageLength Allocated to stack - _bp -11
;pxStreamBuffer            Allocated to registers r5 r6 r7 
;xOriginalTail             Allocated to stack - _bp +1
;xReceivedLength           Allocated to registers r6 r7 
;xNextMessageLength        Allocated to stack - _bp +3
;xTempNextMessageLength    Allocated to stack - _bp +5
;------------------------------------------------------------
	Fstream_buffer$prvReadMessageFromBuffer$0$0 ==.
	C$stream_buffer.c$918$1_0$218 ==.
;	src/FreeRTOS/stream_buffer.c:918: static size_t prvReadMessageFromBuffer( StreamBuffer_t *pxStreamBuffer,
;	-----------------------------------------
;	 function prvReadMessageFromBuffer
;	-----------------------------------------
_prvReadMessageFromBuffer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$927$1_0$218 ==.
;	src/FreeRTOS/stream_buffer.c:927: if( xBytesToStoreMessageLength != ( size_t ) 0 )
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00116$
	ljmp	00104$
00116$:
	C$stream_buffer.c$933$2_0$219 ==.
;	src/FreeRTOS/stream_buffer.c:933: xOriginalTail = pxStreamBuffer->xTail;
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
	C$stream_buffer.c$934$2_0$219 ==.
;	src/FreeRTOS/stream_buffer.c:934: ( void ) prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) &xTempNextMessageLength, xBytesToStoreMessageLength, xBytesAvailable );
	mov	a,_bp
	add	a,#0x05
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvReadBytesFromBuffer
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$935$2_0$219 ==.
;	src/FreeRTOS/stream_buffer.c:935: xNextMessageLength = ( size_t ) xTempNextMessageLength;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$stream_buffer.c$939$2_0$219 ==.
;	src/FreeRTOS/stream_buffer.c:939: xBytesAvailable -= xBytesToStoreMessageLength;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0xf5
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	C$stream_buffer.c$943$2_0$219 ==.
;	src/FreeRTOS/stream_buffer.c:943: if( xNextMessageLength > xBufferLengthBytes )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	jnc	00105$
	C$stream_buffer.c$948$3_0$220 ==.
;	src/FreeRTOS/stream_buffer.c:948: pxStreamBuffer->xTail = xOriginalTail;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$949$3_0$220 ==.
;	src/FreeRTOS/stream_buffer.c:949: xNextMessageLength = 0;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	sjmp	00105$
00104$:
	C$stream_buffer.c$960$2_0$222 ==.
;	src/FreeRTOS/stream_buffer.c:960: xNextMessageLength = xBufferLengthBytes;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00105$:
	C$stream_buffer.c$964$1_0$218 ==.
;	src/FreeRTOS/stream_buffer.c:964: xReceivedLength = prvReadBytesFromBuffer( pxStreamBuffer, ( uint8_t * ) pvRxData, xNextMessageLength, xBytesAvailable ); /*lint !e9079 Data storage area is implemented as uint8_t array for ease of sizing, indexing and alignment. */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvReadBytesFromBuffer
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$stream_buffer.c$966$1_0$218 ==.
;	src/FreeRTOS/stream_buffer.c:966: return xReceivedLength;
	mov	dpl,r6
	mov	dph,r7
	C$stream_buffer.c$967$1_0$218 ==.
;	src/FreeRTOS/stream_buffer.c:967: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$967$1_0$218 ==.
	XFstream_buffer$prvReadMessageFromBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferIsEmpty'
;------------------------------------------------------------
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r7 
;xTail                     Allocated to registers r3 r4 
;------------------------------------------------------------
	G$xStreamBufferIsEmpty$0$0 ==.
	C$stream_buffer.c$970$1_0$224 ==.
;	src/FreeRTOS/stream_buffer.c:970: BaseType_t xStreamBufferIsEmpty( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferIsEmpty
;	-----------------------------------------
_xStreamBufferIsEmpty:
	C$stream_buffer.c$979$1_0$224 ==.
;	src/FreeRTOS/stream_buffer.c:979: xTail = pxStreamBuffer->xTail;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$stream_buffer.c$980$1_0$224 ==.
;	src/FreeRTOS/stream_buffer.c:980: if( pxStreamBuffer->xHead == xTail )
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r5
	cjne	a,ar3,00102$
	mov	a,r6
	cjne	a,ar4,00102$
	C$stream_buffer.c$982$2_0$225 ==.
;	src/FreeRTOS/stream_buffer.c:982: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$stream_buffer.c$986$2_0$226 ==.
;	src/FreeRTOS/stream_buffer.c:986: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$stream_buffer.c$989$1_0$224 ==.
;	src/FreeRTOS/stream_buffer.c:989: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$990$1_0$224 ==.
;	src/FreeRTOS/stream_buffer.c:990: }
	C$stream_buffer.c$990$1_0$224 ==.
	XG$xStreamBufferIsEmpty$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferIsFull'
;------------------------------------------------------------
;xStreamBuffer             Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;xBytesToStoreMessageLength Allocated to registers r3 r4 
;pxStreamBuffer            Allocated to registers 
;------------------------------------------------------------
	G$xStreamBufferIsFull$0$0 ==.
	C$stream_buffer.c$993$1_0$228 ==.
;	src/FreeRTOS/stream_buffer.c:993: BaseType_t xStreamBufferIsFull( StreamBufferHandle_t xStreamBuffer )
;	-----------------------------------------
;	 function xStreamBufferIsFull
;	-----------------------------------------
_xStreamBufferIsFull:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$1005$1_0$228 ==.
;	src/FreeRTOS/stream_buffer.c:1005: if( ( pxStreamBuffer->ucFlags & sbFLAGS_IS_MESSAGE_BUFFER ) != ( uint8_t ) 0 )
	mov	a,#0x11
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
	jnb	acc.0,00102$
	C$stream_buffer.c$1007$2_0$229 ==.
;	src/FreeRTOS/stream_buffer.c:1007: xBytesToStoreMessageLength = sbBYTES_TO_STORE_MESSAGE_LENGTH;
	mov	r3,#0x02
	mov	r4,#0x00
	sjmp	00103$
00102$:
	C$stream_buffer.c$1011$2_0$230 ==.
;	src/FreeRTOS/stream_buffer.c:1011: xBytesToStoreMessageLength = 0;
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	C$stream_buffer.c$1015$1_0$228 ==.
;	src/FreeRTOS/stream_buffer.c:1015: if( xStreamBufferSpacesAvailable( xStreamBuffer ) <= xBytesToStoreMessageLength )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_xStreamBufferSpacesAvailable
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jc	00105$
	C$stream_buffer.c$1017$2_0$231 ==.
;	src/FreeRTOS/stream_buffer.c:1017: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00106$
00105$:
	C$stream_buffer.c$1021$2_0$232 ==.
;	src/FreeRTOS/stream_buffer.c:1021: xReturn = pdFALSE;
	mov	r7,#0x00
00106$:
	C$stream_buffer.c$1024$1_0$228 ==.
;	src/FreeRTOS/stream_buffer.c:1024: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$1025$1_0$228 ==.
;	src/FreeRTOS/stream_buffer.c:1025: }
	C$stream_buffer.c$1025$1_0$228 ==.
	XG$xStreamBufferIsFull$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferSendCompletedFromISR'
;------------------------------------------------------------
;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;------------------------------------------------------------
	G$xStreamBufferSendCompletedFromISR$0$0 ==.
	C$stream_buffer.c$1028$1_0$234 ==.
;	src/FreeRTOS/stream_buffer.c:1028: BaseType_t xStreamBufferSendCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function xStreamBufferSendCompletedFromISR
;	-----------------------------------------
_xStreamBufferSendCompletedFromISR:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$1038$2_0$235 ==.
;	src/FreeRTOS/stream_buffer.c:1038: if( ( pxStreamBuffer )->xTaskWaitingToReceive != NULL )
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00102$
	C$stream_buffer.c$1040$3_0$236 ==.
;	src/FreeRTOS/stream_buffer.c:1040: ( void ) xTaskNotifyFromISR( ( pxStreamBuffer )->xTaskWaitingToReceive,
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
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
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskGenericNotifyFromISR
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$1044$3_0$236 ==.
;	src/FreeRTOS/stream_buffer.c:1044: ( pxStreamBuffer )->xTaskWaitingToReceive = NULL;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
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
	C$stream_buffer.c$1045$3_0$236 ==.
;	src/FreeRTOS/stream_buffer.c:1045: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$stream_buffer.c$1049$3_0$237 ==.
;	src/FreeRTOS/stream_buffer.c:1049: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$stream_buffer.c$1054$1_0$234 ==.
;	src/FreeRTOS/stream_buffer.c:1054: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$1055$1_0$234 ==.
;	src/FreeRTOS/stream_buffer.c:1055: }
	pop	_bp
	C$stream_buffer.c$1055$1_0$234 ==.
	XG$xStreamBufferSendCompletedFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xStreamBufferReceiveCompletedFromISR'
;------------------------------------------------------------
;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
;xStreamBuffer             Allocated to registers r5 r6 r7 
;pxStreamBuffer            Allocated to registers 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;------------------------------------------------------------
	G$xStreamBufferReceiveCompletedFromISR$0$0 ==.
	C$stream_buffer.c$1058$1_0$239 ==.
;	src/FreeRTOS/stream_buffer.c:1058: BaseType_t xStreamBufferReceiveCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function xStreamBufferReceiveCompletedFromISR
;	-----------------------------------------
_xStreamBufferReceiveCompletedFromISR:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$1068$2_0$240 ==.
;	src/FreeRTOS/stream_buffer.c:1068: if( ( pxStreamBuffer )->xTaskWaitingToSend != NULL )
	mov	a,#0x0b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00102$
	C$stream_buffer.c$1070$3_0$241 ==.
;	src/FreeRTOS/stream_buffer.c:1070: ( void ) xTaskNotifyFromISR( ( pxStreamBuffer )->xTaskWaitingToSend,
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
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
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskGenericNotifyFromISR
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$1074$3_0$241 ==.
;	src/FreeRTOS/stream_buffer.c:1074: ( pxStreamBuffer )->xTaskWaitingToSend = NULL;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
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
	C$stream_buffer.c$1075$3_0$241 ==.
;	src/FreeRTOS/stream_buffer.c:1075: xReturn = pdTRUE;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$stream_buffer.c$1079$3_0$242 ==.
;	src/FreeRTOS/stream_buffer.c:1079: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$stream_buffer.c$1084$1_0$239 ==.
;	src/FreeRTOS/stream_buffer.c:1084: return xReturn;
	mov	dpl,r7
	C$stream_buffer.c$1085$1_0$239 ==.
;	src/FreeRTOS/stream_buffer.c:1085: }
	pop	_bp
	C$stream_buffer.c$1085$1_0$239 ==.
	XG$xStreamBufferReceiveCompletedFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvWriteBytesToBuffer'
;------------------------------------------------------------
;pucData                   Allocated to stack - _bp -5
;xCount                    Allocated to stack - _bp -7
;pxStreamBuffer            Allocated to stack - _bp +1
;xNextHead                 Allocated to registers r6 r7 
;xFirstLength              Allocated to stack - _bp +14
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +9
;sloc3                     Allocated to stack - _bp +11
;------------------------------------------------------------
	Fstream_buffer$prvWriteBytesToBuffer$0$0 ==.
	C$stream_buffer.c$1088$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1088: static size_t prvWriteBytesToBuffer( StreamBuffer_t * const pxStreamBuffer, const uint8_t *pucData, size_t xCount )
;	-----------------------------------------
;	 function prvWriteBytesToBuffer
;	-----------------------------------------
_prvWriteBytesToBuffer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
	C$stream_buffer.c$1094$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1094: xNextHead = pxStreamBuffer->xHead;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$stream_buffer.c$1099$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1099: xFirstLength = configMIN( pxStreamBuffer->xLength - xNextHead, xCount );
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,#0x04
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
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r6,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00107$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r6,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	r7,a
	sjmp	00108$
00107$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00108$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$1103$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1103: ( void ) memcpy( ( void* ) ( &( pxStreamBuffer->pucBuffer[ xNextHead ] ) ), ( const void * ) pucData, xFirstLength ); /*lint !e9087 memcpy() requires void *. */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x0e
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
	add	a,#0x0b
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$stream_buffer.c$1107$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1107: if( xCount > xFirstLength )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00125$
	ljmp	00102$
00125$:
	C$stream_buffer.c$1111$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1111: ( void ) memcpy( ( void * ) pxStreamBuffer->pucBuffer, ( const void * ) &( pucData[ xFirstLength ] ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	inc	r0
	mov	ar5,@r0
	mov	r5,#0x00
	mov	r4,#0x40
	mov	a,_bp
	add	a,#0x0b
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$stream_buffer.c$1130$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1130: return xCount;
	pop	ar4
	pop	ar3
	pop	ar2
	C$stream_buffer.c$1111$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1111: ( void ) memcpy( ( void * ) pxStreamBuffer->pucBuffer, ( const void * ) &( pucData[ xFirstLength ] ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
00102$:
	C$stream_buffer.c$1118$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1118: xNextHead += xCount;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	C$stream_buffer.c$1119$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1119: if( xNextHead >= pxStreamBuffer->xLength )
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00104$
	C$stream_buffer.c$1121$2_0$247 ==.
;	src/FreeRTOS/stream_buffer.c:1121: xNextHead -= pxStreamBuffer->xLength;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
00104$:
	C$stream_buffer.c$1128$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1128: pxStreamBuffer->xHead = xNextHead;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$stream_buffer.c$1130$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1130: return xCount;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$1131$1_0$244 ==.
;	src/FreeRTOS/stream_buffer.c:1131: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$1131$1_0$244 ==.
	XFstream_buffer$prvWriteBytesToBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvReadBytesFromBuffer'
;------------------------------------------------------------
;pucData                   Allocated to stack - _bp -5
;xMaxCount                 Allocated to stack - _bp -7
;xBytesAvailable           Allocated to stack - _bp -9
;pxStreamBuffer            Allocated to stack - _bp +1
;xCount                    Allocated to stack - _bp +12
;xFirstLength              Allocated to stack - _bp +14
;xNextTail                 Allocated to registers r7 r6 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +9
;------------------------------------------------------------
	Fstream_buffer$prvReadBytesFromBuffer$0$0 ==.
	C$stream_buffer.c$1134$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1134: static size_t prvReadBytesFromBuffer( StreamBuffer_t *pxStreamBuffer, uint8_t *pucData, size_t xMaxCount, size_t xBytesAvailable )
;	-----------------------------------------
;	 function prvReadBytesFromBuffer
;	-----------------------------------------
_prvReadBytesFromBuffer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
	C$stream_buffer.c$1139$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1139: xCount = configMIN( xBytesAvailable, xMaxCount );
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00109$
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	sjmp	00110$
00109$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00110$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$stream_buffer.c$1141$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1141: if( xCount > ( size_t ) 0 )
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00139$
	ljmp	00106$
00139$:
	C$stream_buffer.c$1143$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1143: xNextTail = pxStreamBuffer->xTail;
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
	C$stream_buffer.c$1148$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1148: xFirstLength = configMIN( pxStreamBuffer->xLength - xNextTail, xCount );
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x04
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
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r5
	subb	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00111$
	mov	a,r6
	clr	c
	subb	a,r2
	mov	r6,a
	mov	a,r5
	subb	a,r4
	mov	r7,a
	sjmp	00112$
00111$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00112$:
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$stream_buffer.c$1154$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1154: ( void ) memcpy( ( void * ) pucData, ( const void * ) &( pxStreamBuffer->pucBuffer[ xNextTail ] ), xFirstLength ); /*lint !e9087 memcpy() requires void *. */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x0e
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
	add	a,#0x09
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
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar2
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
	C$stream_buffer.c$1158$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1158: if( xCount > xFirstLength )
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	pop	ar4
	pop	ar2
	jc	00141$
	ljmp	00102$
00141$:
	C$stream_buffer.c$1162$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1162: ( void ) memcpy( ( void * ) &( pucData[ xFirstLength ] ), ( void * ) ( pxStreamBuffer->pucBuffer ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
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
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	inc	r0
	mov	ar7,@r0
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar4
	push	ar2
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
	C$stream_buffer.c$1185$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1185: return xCount;
	pop	ar4
	pop	ar2
	C$stream_buffer.c$1162$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1162: ( void ) memcpy( ( void * ) &( pucData[ xFirstLength ] ), ( void * ) ( pxStreamBuffer->pucBuffer ), xCount - xFirstLength ); /*lint !e9087 memcpy() requires void *. */
00102$:
	C$stream_buffer.c$1171$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1171: xNextTail += xCount;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	ar7,r2
	mov	ar6,r4
	C$stream_buffer.c$1173$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1173: if( xNextTail >= pxStreamBuffer->xLength )
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
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	clr	c
	mov	a,r7
	subb	a,r4
	mov	a,r6
	subb	a,r5
	jc	00104$
	C$stream_buffer.c$1175$3_0$254 ==.
;	src/FreeRTOS/stream_buffer.c:1175: xNextTail -= pxStreamBuffer->xLength;
	mov	a,r7
	clr	c
	subb	a,r4
	mov	r7,a
	mov	a,r6
	subb	a,r5
	mov	r6,a
00104$:
	C$stream_buffer.c$1178$2_0$251 ==.
;	src/FreeRTOS/stream_buffer.c:1178: pxStreamBuffer->xTail = xNextTail;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00106$:
	C$stream_buffer.c$1185$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1185: return xCount;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$stream_buffer.c$1186$1_0$250 ==.
;	src/FreeRTOS/stream_buffer.c:1186: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$1186$1_0$250 ==.
	XFstream_buffer$prvReadBytesFromBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvBytesInBuffer'
;------------------------------------------------------------
;pxStreamBuffer            Allocated to stack - _bp +1
;xCount                    Allocated to registers r6 r7 
;------------------------------------------------------------
	Fstream_buffer$prvBytesInBuffer$0$0 ==.
	C$stream_buffer.c$1189$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1189: static size_t prvBytesInBuffer( const StreamBuffer_t * const pxStreamBuffer )
;	-----------------------------------------
;	 function prvBytesInBuffer
;	-----------------------------------------
_prvBytesInBuffer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$stream_buffer.c$1194$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1194: xCount = pxStreamBuffer->xLength + pxStreamBuffer->xHead;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	add	a,r3
	mov	r2,a
	mov	a,r6
	addc	a,r4
	mov	r6,a
	C$stream_buffer.c$1195$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1195: xCount -= pxStreamBuffer->xTail;
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
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r7,a
	mov	ar6,r5
	C$stream_buffer.c$1196$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1196: if ( xCount >= pxStreamBuffer->xLength )
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jc	00102$
	C$stream_buffer.c$1198$2_0$258 ==.
;	src/FreeRTOS/stream_buffer.c:1198: xCount -= pxStreamBuffer->xLength;
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
00102$:
	C$stream_buffer.c$1205$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1205: return xCount;
	mov	dpl,r6
	mov	dph,r7
	C$stream_buffer.c$1206$1_0$257 ==.
;	src/FreeRTOS/stream_buffer.c:1206: }
	mov	sp,_bp
	pop	_bp
	C$stream_buffer.c$1206$1_0$257 ==.
	XFstream_buffer$prvBytesInBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseNewStreamBuffer'
;------------------------------------------------------------
;pucBuffer                 Allocated to stack - _bp -5
;xBufferSizeBytes          Allocated to stack - _bp -7
;xTriggerLevelBytes        Allocated to stack - _bp -9
;ucFlags                   Allocated to stack - _bp -10
;pxStreamBuffer            Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Fstream_buffer$prvInitialiseNewStreamBuffer$0$0 ==.
	C$stream_buffer.c$1209$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1209: static void prvInitialiseNewStreamBuffer( StreamBuffer_t * const pxStreamBuffer,
;	-----------------------------------------
;	 function prvInitialiseNewStreamBuffer
;	-----------------------------------------
_prvInitialiseNewStreamBuffer:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$stream_buffer.c$1228$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1228: ( void ) memset( ( void * ) pxStreamBuffer, 0x00, sizeof( StreamBuffer_t ) ); /*lint !e9087 memset() requires void *. */
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$stream_buffer.c$1229$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1229: pxStreamBuffer->pucBuffer = pucBuffer;
	mov	a,#0x0e
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
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$1230$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1230: pxStreamBuffer->xLength = xBufferSizeBytes;
	mov	a,#0x04
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
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$1231$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1231: pxStreamBuffer->xTriggerLevelBytes = xTriggerLevelBytes;
	mov	a,#0x06
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
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$1232$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1232: pxStreamBuffer->ucFlags = ucFlags;
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$stream_buffer.c$1233$1_0$261 ==.
;	src/FreeRTOS/stream_buffer.c:1233: }
	pop	_bp
	C$stream_buffer.c$1233$1_0$261 ==.
	XFstream_buffer$prvInitialiseNewStreamBuffer$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
