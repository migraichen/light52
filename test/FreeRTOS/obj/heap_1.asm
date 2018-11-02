;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module heap_1
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _xTaskResumeAll
	.globl _vTaskSuspendAll
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
	.globl _pvPortMalloc
	.globl _vPortFree
	.globl _vPortInitialiseBlocks
	.globl _xPortGetFreeHeapSize
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
Fheap_1$ucHeap$0_0$0==.
_ucHeap:
	.ds 6144
Fheap_1$xNextFreeByte$0_0$0==.
_xNextFreeByte:
	.ds 2
Lheap_1.pvPortMalloc$pucAlignedHeap$1_0$105==.
_pvPortMalloc_pucAlignedHeap_65536_105:
	.ds 3
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
;------------------------------------------------------------
;Allocation info for local variables in function 'pvPortMalloc'
;------------------------------------------------------------
;xWantedSize               Allocated to stack - _bp +1
;pvReturn                  Allocated to stack - _bp +3
;sloc0                     Allocated to stack - _bp +3
;pucAlignedHeap            Allocated with name '_pvPortMalloc_pucAlignedHeap_65536_105'
;------------------------------------------------------------
	G$pvPortMalloc$0$0 ==.
	C$heap_1.c$72$1_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:72: static uint8_t *pucAlignedHeap = NULL;
	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$heap_1.c$65$1_0$114 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:65: static size_t xNextFreeByte = ( size_t ) 0;
	mov	dptr,#_xNextFreeByte
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;Allocation info for local variables in function 'pvPortMalloc'
;------------------------------------------------------------
;xWantedSize               Allocated to stack - _bp +1
;pvReturn                  Allocated to stack - _bp +3
;sloc0                     Allocated to stack - _bp +3
;pucAlignedHeap            Allocated with name '_pvPortMalloc_pucAlignedHeap_65536_105'
;------------------------------------------------------------
	G$pvPortMalloc$0$0 ==.
	C$heap_1.c$69$0_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:69: void *pvPortMalloc( size_t xWantedSize )
;	-----------------------------------------
;	 function pvPortMalloc
;	-----------------------------------------
_pvPortMalloc:
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
	inc	sp
	inc	sp
	inc	sp
	C$heap_1.c$71$2_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:71: void *pvReturn = NULL;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	C$heap_1.c$85$1_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:85: vTaskSuspendAll();
	lcall	_vTaskSuspendAll
	C$heap_1.c$87$2_0$106 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:87: if( pucAlignedHeap == NULL )
	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	C$heap_1.c$90$3_0$107 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:90: pucAlignedHeap = ( uint8_t * ) ( ( ( portPOINTER_SIZE_TYPE ) &ucHeap[ portBYTE_ALIGNMENT ] ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) );
	jnz	00102$
	mov	r2,#(_ucHeap + 0x0001)
	mov	r5,#((_ucHeap + 0x0001) >> 8)
	mov	r6,a
	mov	r7,a
	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00102$:
	C$heap_1.c$94$2_0$106 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:94: if( ( ( xNextFreeByte + xWantedSize ) < configADJUSTED_HEAP_SIZE ) &&
	mov	dptr,#_xNextFreeByte
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r6
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0xff
	mov	a,r5
	subb	a,#0x17
	jnc	00104$
	C$heap_1.c$95$2_0$106 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:95: ( ( xNextFreeByte + xWantedSize ) > xNextFreeByte )	)/* Check for overflow. */
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r6
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00104$
	C$heap_1.c$99$3_0$108 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:99: pvReturn = pucAlignedHeap + xNextFreeByte;
	mov	dptr,#_pvPortMalloc_pucAlignedHeap_65536_105
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$heap_1.c$100$3_0$108 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:100: xNextFreeByte += xWantedSize;
	mov	r0,_bp
	inc	r0
	mov	dptr,#_xNextFreeByte
	mov	a,@r0
	add	a,r6
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00104$:
	C$heap_1.c$105$1_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:105: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$heap_1.c$117$1_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:117: return pvReturn;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	C$heap_1.c$118$1_0$105 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:118: }
	mov	sp,_bp
	pop	_bp
	C$heap_1.c$118$1_0$105 ==.
	XG$pvPortMalloc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vPortFree'
;------------------------------------------------------------
;pv                        Allocated to registers 
;------------------------------------------------------------
	G$vPortFree$0$0 ==.
	C$heap_1.c$121$1_0$110 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:121: void vPortFree( void *pv )
;	-----------------------------------------
;	 function vPortFree
;	-----------------------------------------
_vPortFree:
	C$heap_1.c$126$1_0$110 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:126: ( void ) pv;
	C$heap_1.c$130$1_0$110 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:130: }
	C$heap_1.c$130$1_0$110 ==.
	XG$vPortFree$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vPortInitialiseBlocks'
;------------------------------------------------------------
	G$vPortInitialiseBlocks$0$0 ==.
	C$heap_1.c$133$1_0$112 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:133: void vPortInitialiseBlocks( void )
;	-----------------------------------------
;	 function vPortInitialiseBlocks
;	-----------------------------------------
_vPortInitialiseBlocks:
	C$heap_1.c$136$1_0$112 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:136: xNextFreeByte = ( size_t ) 0;
	mov	dptr,#_xNextFreeByte
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$heap_1.c$137$1_0$112 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:137: }
	C$heap_1.c$137$1_0$112 ==.
	XG$vPortInitialiseBlocks$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xPortGetFreeHeapSize'
;------------------------------------------------------------
	G$xPortGetFreeHeapSize$0$0 ==.
	C$heap_1.c$140$1_0$114 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:140: size_t xPortGetFreeHeapSize( void )
;	-----------------------------------------
;	 function xPortGetFreeHeapSize
;	-----------------------------------------
_xPortGetFreeHeapSize:
	C$heap_1.c$142$1_0$114 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:142: return ( configADJUSTED_HEAP_SIZE - xNextFreeByte );
	mov	dptr,#_xNextFreeByte
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xff
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0x17
	subb	a,r7
	C$heap_1.c$143$1_0$114 ==.
;	src/FreeRTOS/portable/MemMang/heap_1.c:143: }
	C$heap_1.c$143$1_0$114 ==.
	XG$xPortGetFreeHeapSize$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
