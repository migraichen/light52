;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module tasks
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uxListRemove
	.globl _vListInsertEnd
	.globl _vListInsert
	.globl _vListInitialiseItem
	.globl _vListInitialise
	.globl _vPortEndScheduler
	.globl _xPortStartScheduler
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _pxPortInitialiseStack
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
	.globl _pxCurrentTCB
	.globl _xTaskCreate
	.globl _vTaskDelayUntil
	.globl _vTaskDelay
	.globl _vTaskStartScheduler
	.globl _vTaskEndScheduler
	.globl _vTaskSuspendAll
	.globl _xTaskResumeAll
	.globl _xTaskGetTickCount
	.globl _xTaskGetTickCountFromISR
	.globl _uxTaskGetNumberOfTasks
	.globl _pcTaskGetName
	.globl _xTaskIncrementTick
	.globl _vTaskSwitchContext
	.globl _vTaskPlaceOnEventList
	.globl _vTaskPlaceOnUnorderedEventList
	.globl _xTaskRemoveFromEventList
	.globl _vTaskRemoveFromUnorderedEventList
	.globl _vTaskSetTimeOutState
	.globl _vTaskInternalSetTimeOutState
	.globl _xTaskCheckForTimeOut
	.globl _vTaskMissedYield
	.globl _xTaskGetCurrentTaskHandle
	.globl _uxTaskResetEventItemValue
	.globl _ulTaskNotifyTake
	.globl _xTaskNotifyWait
	.globl _xTaskGenericNotify
	.globl _xTaskGenericNotifyFromISR
	.globl _vTaskNotifyGiveFromISR
	.globl _xTaskNotifyStateClear
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
G$pxCurrentTCB$0_0$0==.
_pxCurrentTCB::
	.ds 3
Ftasks$pxReadyTasksLists$0_0$0==.
_pxReadyTasksLists:
	.ds 48
Ftasks$xDelayedTaskList1$0_0$0==.
_xDelayedTaskList1:
	.ds 12
Ftasks$xDelayedTaskList2$0_0$0==.
_xDelayedTaskList2:
	.ds 12
Ftasks$pxDelayedTaskList$0_0$0==.
_pxDelayedTaskList:
	.ds 3
Ftasks$pxOverflowDelayedTaskList$0_0$0==.
_pxOverflowDelayedTaskList:
	.ds 3
Ftasks$xPendingReadyList$0_0$0==.
_xPendingReadyList:
	.ds 12
Ftasks$uxCurrentNumberOfTasks$0_0$0==.
_uxCurrentNumberOfTasks:
	.ds 1
Ftasks$xTickCount$0_0$0==.
_xTickCount:
	.ds 2
Ftasks$uxTopReadyPriority$0_0$0==.
_uxTopReadyPriority:
	.ds 1
Ftasks$xSchedulerRunning$0_0$0==.
_xSchedulerRunning:
	.ds 1
Ftasks$uxPendedTicks$0_0$0==.
_uxPendedTicks:
	.ds 1
Ftasks$xYieldPending$0_0$0==.
_xYieldPending:
	.ds 1
Ftasks$xNumOfOverflows$0_0$0==.
_xNumOfOverflows:
	.ds 1
Ftasks$uxTaskNumber$0_0$0==.
_uxTaskNumber:
	.ds 1
Ftasks$xNextTaskUnblockTime$0_0$0==.
_xNextTaskUnblockTime:
	.ds 2
Ftasks$xIdleTaskHandle$0_0$0==.
_xIdleTaskHandle:
	.ds 3
Ftasks$uxSchedulerSuspended$0_0$0==.
_uxSchedulerSuspended:
	.ds 1
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
	C$tasks.c$351$2_0$400 ==.
;	src/FreeRTOS/tasks.c:351: PRIVILEGED_DATA TCB_t * volatile pxCurrentTCB = NULL;
	mov	dptr,#_pxCurrentTCB
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$384$2_0$400 ==.
;	src/FreeRTOS/tasks.c:384: PRIVILEGED_DATA static volatile UBaseType_t uxCurrentNumberOfTasks 	= ( UBaseType_t ) 0U;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	@dptr,a
	C$tasks.c$385$2_0$400 ==.
;	src/FreeRTOS/tasks.c:385: PRIVILEGED_DATA static volatile TickType_t xTickCount 				= ( TickType_t ) configINITIAL_TICK_COUNT;
	mov	dptr,#_xTickCount
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$386$2_0$400 ==.
;	src/FreeRTOS/tasks.c:386: PRIVILEGED_DATA static volatile UBaseType_t uxTopReadyPriority 		= tskIDLE_PRIORITY;
	mov	dptr,#_uxTopReadyPriority
	movx	@dptr,a
	C$tasks.c$387$2_0$400 ==.
;	src/FreeRTOS/tasks.c:387: PRIVILEGED_DATA static volatile BaseType_t xSchedulerRunning 		= pdFALSE;
	mov	dptr,#_xSchedulerRunning
	movx	@dptr,a
	C$tasks.c$388$2_0$400 ==.
;	src/FreeRTOS/tasks.c:388: PRIVILEGED_DATA static volatile UBaseType_t uxPendedTicks 			= ( UBaseType_t ) 0U;
	mov	dptr,#_uxPendedTicks
	movx	@dptr,a
	C$tasks.c$389$2_0$400 ==.
;	src/FreeRTOS/tasks.c:389: PRIVILEGED_DATA static volatile BaseType_t xYieldPending 			= pdFALSE;
	mov	dptr,#_xYieldPending
	movx	@dptr,a
	C$tasks.c$390$2_0$400 ==.
;	src/FreeRTOS/tasks.c:390: PRIVILEGED_DATA static volatile BaseType_t xNumOfOverflows 			= ( BaseType_t ) 0;
	mov	dptr,#_xNumOfOverflows
	movx	@dptr,a
	C$tasks.c$391$2_0$400 ==.
;	src/FreeRTOS/tasks.c:391: PRIVILEGED_DATA static UBaseType_t uxTaskNumber 					= ( UBaseType_t ) 0U;
	mov	dptr,#_uxTaskNumber
	movx	@dptr,a
	C$tasks.c$392$2_0$400 ==.
;	src/FreeRTOS/tasks.c:392: PRIVILEGED_DATA static volatile TickType_t xNextTaskUnblockTime		= ( TickType_t ) 0U; /* Initialised to portMAX_DELAY before the scheduler starts. */
	mov	dptr,#_xNextTaskUnblockTime
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$393$2_0$400 ==.
;	src/FreeRTOS/tasks.c:393: PRIVILEGED_DATA static TaskHandle_t xIdleTaskHandle					= NULL;			/*< Holds the handle of the idle task.  The idle task is created automatically when the scheduler is started. */
	mov	dptr,#_xIdleTaskHandle
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$403$2_0$400 ==.
;	src/FreeRTOS/tasks.c:403: PRIVILEGED_DATA static volatile UBaseType_t uxSchedulerSuspended	= ( UBaseType_t ) pdFALSE;
	mov	dptr,#_uxSchedulerSuspended
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
;Allocation info for local variables in function 'xTaskCreate'
;------------------------------------------------------------
;pcName                    Allocated to stack - _bp -5
;usStackDepth              Allocated to stack - _bp -7
;pvParameters              Allocated to stack - _bp -10
;uxPriority                Allocated to stack - _bp -11
;pxCreatedTask             Allocated to stack - _bp -14
;pxTaskCode                Allocated to registers r6 r7 
;pxNewTCB                  Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$xTaskCreate$0$0 ==.
	C$tasks.c$747$0_0$146 ==.
;	src/FreeRTOS/tasks.c:747: BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
;	-----------------------------------------
;	 function xTaskCreate
;	-----------------------------------------
_xTaskCreate:
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
	inc	sp
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
	C$tasks.c$765$2_0$147 ==.
;	src/FreeRTOS/tasks.c:765: pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
	mov	dptr,#0x0033
	push	ar7
	push	ar6
	lcall	_pvPortMalloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$tasks.c$767$2_0$147 ==.
;	src/FreeRTOS/tasks.c:767: if( pxNewTCB != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	C$tasks.c$772$1_0$146 ==.
;	src/FreeRTOS/tasks.c:772: pxNewTCB->pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar2
	lcall	_pvPortMalloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$774$1_0$146 ==.
;	src/FreeRTOS/tasks.c:774: if( pxNewTCB->pxStack == NULL )
	pop	ar7
	pop	ar6
	mov	a,r3
	orl	a,r4
	jnz	00104$
	C$tasks.c$777$4_0$149 ==.
;	src/FreeRTOS/tasks.c:777: vPortFree( pxNewTCB );
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_vPortFree
	pop	ar6
	pop	ar7
	C$tasks.c$778$4_0$149 ==.
;	src/FreeRTOS/tasks.c:778: pxNewTCB = NULL;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
00104$:
	C$tasks.c$813$1_0$146 ==.
;	src/FreeRTOS/tasks.c:813: if( pxNewTCB != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00124$
	ljmp	00106$
00124$:
	C$tasks.c$823$2_0$150 ==.
;	src/FreeRTOS/tasks.c:823: prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r4,a
	mov	r5,a
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf2
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
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
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
	push	ar2
	push	ar3
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
	mov	dpl,r6
	mov	dph,r7
	lcall	_prvInitialiseNewTask
	mov	a,sp
	add	a,#0xec
	mov	sp,a
	C$tasks.c$824$2_0$150 ==.
;	src/FreeRTOS/tasks.c:824: prvAddNewTaskToReadyList( pxNewTCB );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvAddNewTaskToReadyList
	C$tasks.c$825$2_0$150 ==.
;	src/FreeRTOS/tasks.c:825: xReturn = pdPASS;
	C$tasks.c$829$2_0$151 ==.
;	src/FreeRTOS/tasks.c:829: xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	C$tasks.c$832$1_0$146 ==.
;	src/FreeRTOS/tasks.c:832: return xReturn;
	C$tasks.c$833$1_0$146 ==.
;	src/FreeRTOS/tasks.c:833: }
	mov	dpl,#0x01
	sjmp	00107$
00106$:
	mov	dpl,#0xff
00107$:
	mov	sp,_bp
	pop	_bp
	C$tasks.c$833$1_0$146 ==.
	XG$xTaskCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseNewTask'
;------------------------------------------------------------
;pcName                    Allocated to stack - _bp -5
;ulStackDepth              Allocated to stack - _bp -9
;pvParameters              Allocated to stack - _bp -12
;uxPriority                Allocated to stack - _bp -13
;pxCreatedTask             Allocated to stack - _bp -16
;pxNewTCB                  Allocated to stack - _bp -19
;xRegions                  Allocated to stack - _bp -22
;pxTaskCode                Allocated to stack - _bp +1
;pxTopOfStack              Allocated to stack - _bp +12
;x                         Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +9
;------------------------------------------------------------
	Ftasks$prvInitialiseNewTask$0$0 ==.
	C$tasks.c$838$1_0$153 ==.
;	src/FreeRTOS/tasks.c:838: static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
;	-----------------------------------------
;	 function prvInitialiseNewTask
;	-----------------------------------------
_prvInitialiseNewTask:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
	C$tasks.c$896$2_0$154 ==.
;	src/FreeRTOS/tasks.c:896: pxTopOfStack = pxNewTCB->pxStack;
	mov	a,_bp
	add	a,#0xed
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
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x20
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
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
	mov	a,_bp
	add	a,#0x0c
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
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$tasks.c$903$2_0$154 ==.
;	src/FreeRTOS/tasks.c:903: pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,#0x2b
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
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$908$3_0$156 ==.
;	src/FreeRTOS/tasks.c:908: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r3,#0x00
00108$:
	C$tasks.c$910$3_0$156 ==.
;	src/FreeRTOS/tasks.c:910: pxNewTCB->pcTaskName[ x ] = pcName[ x ];
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r3
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r3
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$915$3_0$156 ==.
;	src/FreeRTOS/tasks.c:915: if( pcName[ x ] == ( char ) 0x00 )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00103$
	C$tasks.c$908$2_0$155 ==.
;	src/FreeRTOS/tasks.c:908: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
	inc	r3
	cjne	r3,#0x08,00130$
00130$:
	jc	00108$
00103$:
	C$tasks.c$927$1_0$153 ==.
;	src/FreeRTOS/tasks.c:927: pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x2a
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
	C$tasks.c$931$1_0$153 ==.
;	src/FreeRTOS/tasks.c:931: if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	cjne	@r0,#0x04,00132$
00132$:
	jc	00105$
	C$tasks.c$933$2_0$159 ==.
;	src/FreeRTOS/tasks.c:933: uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,#0x03
00105$:
	C$tasks.c$940$1_0$153 ==.
;	src/FreeRTOS/tasks.c:940: pxNewTCB->uxPriority = uxPriority;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x1f
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
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$948$1_0$153 ==.
;	src/FreeRTOS/tasks.c:948: vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x03
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
	lcall	_vListInitialiseItem
	C$tasks.c$949$1_0$153 ==.
;	src/FreeRTOS/tasks.c:949: vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x11
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
	lcall	_vListInitialiseItem
	C$tasks.c$953$1_0$153 ==.
;	src/FreeRTOS/tasks.c:953: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
	mov	a,_bp
	add	a,#0x09
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
	mov	a,_bp
	add	a,#0xed
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	C$tasks.c$956$1_0$153 ==.
;	src/FreeRTOS/tasks.c:956: listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,#0x11
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
	add	a,#0xf3
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	a,#0x04
	clr	c
	subb	a,r7
	mov	r7,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
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
	C$tasks.c$957$1_0$153 ==.
;	src/FreeRTOS/tasks.c:957: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x19
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$999$2_0$162 ==.
;	src/FreeRTOS/tasks.c:999: pxNewTCB->ulNotifiedValue = 0;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x2e
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
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$tasks.c$1000$2_0$162 ==.
;	src/FreeRTOS/tasks.c:1000: pxNewTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x32
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
	C$tasks.c$1027$2_0$163 ==.
;	src/FreeRTOS/tasks.c:1027: pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
	mov	a,_bp
	add	a,#0xf4
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
	lcall	_pxPortInitialiseStack
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
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
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$1031$1_0$153 ==.
;	src/FreeRTOS/tasks.c:1031: if( pxCreatedTask != NULL )
	mov	a,_bp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
	C$tasks.c$1035$2_0$164 ==.
;	src/FreeRTOS/tasks.c:1035: *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
	mov	a,_bp
	add	a,#0xf0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x09
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
00110$:
	C$tasks.c$1041$1_0$153 ==.
;	src/FreeRTOS/tasks.c:1041: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$1041$1_0$153 ==.
	XFtasks$prvInitialiseNewTask$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvAddNewTaskToReadyList'
;------------------------------------------------------------
;pxNewTCB                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Ftasks$prvAddNewTaskToReadyList$0$0 ==.
	C$tasks.c$1044$1_0$167 ==.
;	src/FreeRTOS/tasks.c:1044: static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
;	-----------------------------------------
;	 function prvAddNewTaskToReadyList
;	-----------------------------------------
_prvAddNewTaskToReadyList:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$1048$1_0$167 ==.
;	src/FreeRTOS/tasks.c:1048: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$1050$2_0$168 ==.
;	src/FreeRTOS/tasks.c:1050: uxCurrentNumberOfTasks++;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$tasks.c$1051$2_0$168 ==.
;	src/FreeRTOS/tasks.c:1051: if( pxCurrentTCB == NULL )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00108$
	C$tasks.c$1055$3_0$169 ==.
;	src/FreeRTOS/tasks.c:1055: pxCurrentTCB = pxNewTCB;
	mov	dptr,#_pxCurrentTCB
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$tasks.c$1057$3_0$169 ==.
;	src/FreeRTOS/tasks.c:1057: if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00109$
	C$tasks.c$1062$4_0$170 ==.
;	src/FreeRTOS/tasks.c:1062: prvInitialiseTaskLists();
	push	ar7
	push	ar6
	push	ar5
	lcall	_prvInitialiseTaskLists
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00108$:
	C$tasks.c$1074$3_0$172 ==.
;	src/FreeRTOS/tasks.c:1074: if( xSchedulerRunning == pdFALSE )
	mov	dptr,#_xSchedulerRunning
	movx	a,@dptr
	jnz	00109$
	C$tasks.c$1076$4_0$173 ==.
;	src/FreeRTOS/tasks.c:1076: if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1f
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
	mov	a,#0x1f
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	clr	c
	subb	a,r2
	jc	00109$
	C$tasks.c$1078$5_0$174 ==.
;	src/FreeRTOS/tasks.c:1078: pxCurrentTCB = pxNewTCB;
	mov	dptr,#_pxCurrentTCB
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00109$:
	C$tasks.c$1091$2_0$168 ==.
;	src/FreeRTOS/tasks.c:1091: uxTaskNumber++;
	mov	dptr,#_uxTaskNumber
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$tasks.c$1101$3_0$177 ==.
;	src/FreeRTOS/tasks.c:1101: prvAddTaskToReadyList( pxNewTCB );
	mov	a,#0x1f
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
	mov	r1,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r1
	jnc	00111$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r1
	movx	@dptr,a
00111$:
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r0,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r1,a
	push	ar2
	push	ar3
	push	ar4
	mov	r4,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	C$tasks.c$1105$1_0$167 ==.
;	src/FreeRTOS/tasks.c:1105: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$1107$1_0$167 ==.
;	src/FreeRTOS/tasks.c:1107: if( xSchedulerRunning != pdFALSE )
	mov	dptr,#_xSchedulerRunning
	movx	a,@dptr
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00116$
	C$tasks.c$1111$2_0$179 ==.
;	src/FreeRTOS/tasks.c:1111: if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r5
	subb	a,r2
	jnc	00116$
	C$tasks.c$1113$3_0$180 ==.
;	src/FreeRTOS/tasks.c:1113: taskYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00116$:
	C$tasks.c$1124$1_0$167 ==.
;	src/FreeRTOS/tasks.c:1124: }
	C$tasks.c$1124$1_0$167 ==.
	XFtasks$prvAddNewTaskToReadyList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskDelayUntil'
;------------------------------------------------------------
;xTimeIncrement            Allocated to stack - _bp -4
;pxPreviousWakeTime        Allocated to stack - _bp +1
;xTimeToWake               Allocated to registers r2 r7 
;xAlreadyYielded           Allocated to registers 
;xShouldDelay              Allocated to registers r6 
;xConstTickCount           Allocated to stack - _bp +4
;------------------------------------------------------------
	G$vTaskDelayUntil$0$0 ==.
	C$tasks.c$1221$1_0$184 ==.
;	src/FreeRTOS/tasks.c:1221: void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
;	-----------------------------------------
;	 function vTaskDelayUntil
;	-----------------------------------------
_vTaskDelayUntil:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	C$tasks.c$1224$2_0$184 ==.
;	src/FreeRTOS/tasks.c:1224: BaseType_t xAlreadyYielded, xShouldDelay = pdFALSE;
	mov	r6,#0x00
	C$tasks.c$1230$1_0$184 ==.
;	src/FreeRTOS/tasks.c:1230: vTaskSuspendAll();
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	C$tasks.c$1234$3_0$185 ==.
;	src/FreeRTOS/tasks.c:1234: const TickType_t xConstTickCount = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	C$tasks.c$1237$2_0$185 ==.
;	src/FreeRTOS/tasks.c:1237: xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;
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
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	C$tasks.c$1239$2_0$185 ==.
;	src/FreeRTOS/tasks.c:1239: if( xConstTickCount < *pxPreviousWakeTime )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00108$
	C$tasks.c$1246$3_0$186 ==.
;	src/FreeRTOS/tasks.c:1246: if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00109$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00109$
	C$tasks.c$1248$4_0$187 ==.
;	src/FreeRTOS/tasks.c:1248: xShouldDelay = pdTRUE;
	mov	r6,#0x01
	sjmp	00109$
00108$:
	C$tasks.c$1260$3_0$189 ==.
;	src/FreeRTOS/tasks.c:1260: if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jc	00104$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00109$
00104$:
	C$tasks.c$1262$4_0$190 ==.
;	src/FreeRTOS/tasks.c:1262: xShouldDelay = pdTRUE;
	mov	r6,#0x01
00109$:
	C$tasks.c$1271$2_0$185 ==.
;	src/FreeRTOS/tasks.c:1271: *pxPreviousWakeTime = xTimeToWake;
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
	C$tasks.c$1273$2_0$185 ==.
;	src/FreeRTOS/tasks.c:1273: if( xShouldDelay != pdFALSE )
	mov	a,r6
	jz	00111$
	C$tasks.c$1279$3_0$192 ==.
;	src/FreeRTOS/tasks.c:1279: prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, pdFALSE );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r7
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
00111$:
	C$tasks.c$1286$1_0$184 ==.
;	src/FreeRTOS/tasks.c:1286: xAlreadyYielded = xTaskResumeAll();
	lcall	_xTaskResumeAll
	mov	a,dpl
	C$tasks.c$1290$1_0$184 ==.
;	src/FreeRTOS/tasks.c:1290: if( xAlreadyYielded == pdFALSE )
	jnz	00114$
	C$tasks.c$1292$2_0$194 ==.
;	src/FreeRTOS/tasks.c:1292: portYIELD_WITHIN_API();
	lcall	_vPortYield
00114$:
	C$tasks.c$1298$1_0$184 ==.
;	src/FreeRTOS/tasks.c:1298: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$1298$1_0$184 ==.
	XG$vTaskDelayUntil$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskDelay'
;------------------------------------------------------------
;xTicksToDelay             Allocated to registers r6 r7 
;xAlreadyYielded           Allocated to registers r5 
;------------------------------------------------------------
	G$vTaskDelay$0$0 ==.
	C$tasks.c$1305$1_0$197 ==.
;	src/FreeRTOS/tasks.c:1305: void vTaskDelay( const TickType_t xTicksToDelay )
;	-----------------------------------------
;	 function vTaskDelay
;	-----------------------------------------
_vTaskDelay:
	mov	r6,dpl
	mov	r7,dph
	C$tasks.c$1307$2_0$197 ==.
;	src/FreeRTOS/tasks.c:1307: BaseType_t xAlreadyYielded = pdFALSE;
	mov	r5,#0x00
	C$tasks.c$1310$1_0$197 ==.
;	src/FreeRTOS/tasks.c:1310: if( xTicksToDelay > ( TickType_t ) 0U )
	mov	a,r6
	orl	a,r7
	jz	00102$
	C$tasks.c$1313$2_0$198 ==.
;	src/FreeRTOS/tasks.c:1313: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	pop	ar7
	C$tasks.c$1324$3_0$199 ==.
;	src/FreeRTOS/tasks.c:1324: prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$1326$2_0$198 ==.
;	src/FreeRTOS/tasks.c:1326: xAlreadyYielded = xTaskResumeAll();
	lcall	_xTaskResumeAll
	mov	r7,dpl
	mov	ar5,r7
00102$:
	C$tasks.c$1335$1_0$197 ==.
;	src/FreeRTOS/tasks.c:1335: if( xAlreadyYielded == pdFALSE )
	mov	a,r5
	jnz	00105$
	C$tasks.c$1337$2_0$201 ==.
;	src/FreeRTOS/tasks.c:1337: portYIELD_WITHIN_API();
	lcall	_vPortYield
00105$:
	C$tasks.c$1343$1_0$197 ==.
;	src/FreeRTOS/tasks.c:1343: }
	C$tasks.c$1343$1_0$197 ==.
	XG$vTaskDelay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskStartScheduler'
;------------------------------------------------------------
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$vTaskStartScheduler$0$0 ==.
	C$tasks.c$1939$1_0$204 ==.
;	src/FreeRTOS/tasks.c:1939: void vTaskStartScheduler( void )
;	-----------------------------------------
;	 function vTaskStartScheduler
;	-----------------------------------------
_vTaskStartScheduler:
	C$tasks.c$1978$2_0$205 ==.
;	src/FreeRTOS/tasks.c:1978: &xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
	C$tasks.c$1974$2_0$205 ==.
;	src/FreeRTOS/tasks.c:1974: configIDLE_TASK_NAME,
	C$tasks.c$1973$2_0$205 ==.
;	src/FreeRTOS/tasks.c:1973: xReturn = xTaskCreate(	prvIdleTask,
	mov	a,#_xIdleTaskHandle
	push	acc
	mov	a,#(_xIdleTaskHandle >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0xba
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_prvIdleTask
	lcall	_xTaskCreate
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$tasks.c$1995$1_0$204 ==.
;	src/FreeRTOS/tasks.c:1995: if( xReturn == pdPASS )
	cjne	r7,#0x01,00105$
	C$tasks.c$2011$2_0$206 ==.
;	src/FreeRTOS/tasks.c:2011: portDISABLE_INTERRUPTS();
;	assignBit
	clr	_EA
	C$tasks.c$2021$2_0$206 ==.
;	src/FreeRTOS/tasks.c:2021: xNextTaskUnblockTime = portMAX_DELAY;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2022$2_0$206 ==.
;	src/FreeRTOS/tasks.c:2022: xSchedulerRunning = pdTRUE;
	mov	dptr,#_xSchedulerRunning
	mov	a,#0x01
	movx	@dptr,a
	C$tasks.c$2023$2_0$206 ==.
;	src/FreeRTOS/tasks.c:2023: xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
	mov	dptr,#_xTickCount
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2037$2_0$206 ==.
;	src/FreeRTOS/tasks.c:2037: if( xPortStartScheduler() != pdFALSE )
	lcall	_xPortStartScheduler
	C$tasks.c$2057$1_0$204 ==.
;	src/FreeRTOS/tasks.c:2057: ( void ) xIdleTaskHandle;
00105$:
	C$tasks.c$2058$1_0$204 ==.
;	src/FreeRTOS/tasks.c:2058: }
	C$tasks.c$2058$1_0$204 ==.
	XG$vTaskStartScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskEndScheduler'
;------------------------------------------------------------
	G$vTaskEndScheduler$0$0 ==.
	C$tasks.c$2061$1_0$211 ==.
;	src/FreeRTOS/tasks.c:2061: void vTaskEndScheduler( void )
;	-----------------------------------------
;	 function vTaskEndScheduler
;	-----------------------------------------
_vTaskEndScheduler:
	C$tasks.c$2066$1_0$211 ==.
;	src/FreeRTOS/tasks.c:2066: portDISABLE_INTERRUPTS();
;	assignBit
	clr	_EA
	C$tasks.c$2067$1_0$211 ==.
;	src/FreeRTOS/tasks.c:2067: xSchedulerRunning = pdFALSE;
	mov	dptr,#_xSchedulerRunning
	clr	a
	movx	@dptr,a
	C$tasks.c$2068$1_0$211 ==.
;	src/FreeRTOS/tasks.c:2068: vPortEndScheduler();
	lcall	_vPortEndScheduler
	C$tasks.c$2069$1_0$211 ==.
;	src/FreeRTOS/tasks.c:2069: }
	C$tasks.c$2069$1_0$211 ==.
	XG$vTaskEndScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSuspendAll'
;------------------------------------------------------------
	G$vTaskSuspendAll$0$0 ==.
	C$tasks.c$2072$1_0$213 ==.
;	src/FreeRTOS/tasks.c:2072: void vTaskSuspendAll( void )
;	-----------------------------------------
;	 function vTaskSuspendAll
;	-----------------------------------------
_vTaskSuspendAll:
	C$tasks.c$2078$1_0$213 ==.
;	src/FreeRTOS/tasks.c:2078: ++uxSchedulerSuspended;
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$tasks.c$2079$1_0$213 ==.
;	src/FreeRTOS/tasks.c:2079: }
	C$tasks.c$2079$1_0$213 ==.
	XG$vTaskSuspendAll$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskResumeAll'
;------------------------------------------------------------
;pxTCB                     Allocated to stack - _bp +4
;xAlreadyYielded           Allocated to registers r4 
;uxPendedCounts            Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +9
;------------------------------------------------------------
	G$xTaskResumeAll$0$0 ==.
	C$tasks.c$2145$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2145: BaseType_t xTaskResumeAll( void )
;	-----------------------------------------
;	 function xTaskResumeAll
;	-----------------------------------------
_xTaskResumeAll:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	C$tasks.c$2147$2_0$215 ==.
;	src/FreeRTOS/tasks.c:2147: TCB_t *pxTCB = NULL;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	C$tasks.c$2148$2_0$215 ==.
;	src/FreeRTOS/tasks.c:2148: BaseType_t xAlreadyYielded = pdFALSE;
	mov	r4,#0x00
	C$tasks.c$2159$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2159: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$2161$2_0$216 ==.
;	src/FreeRTOS/tasks.c:2161: --uxSchedulerSuspended;
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	C$tasks.c$2163$2_0$216 ==.
;	src/FreeRTOS/tasks.c:2163: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	movx	a,@dptr
	jz	00174$
	ljmp	00122$
00174$:
	C$tasks.c$2165$3_0$217 ==.
;	src/FreeRTOS/tasks.c:2165: if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	jnz	00175$
	ljmp	00122$
00175$:
	C$tasks.c$2169$5_0$219 ==.
;	src/FreeRTOS/tasks.c:2169: while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
00105$:
	mov	dptr,#_xPendingReadyList
	movx	a,@dptr
	jnz	00176$
	ljmp	00107$
00176$:
	C$tasks.c$2171$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2171: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	push	ar4
	mov	dptr,#(_xPendingReadyList + 0x0006)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$2172$5_0$219 ==.
;	src/FreeRTOS/tasks.c:2172: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	push	ar4
	lcall	_uxListRemove
	pop	ar4
	C$tasks.c$2173$5_0$219 ==.
;	src/FreeRTOS/tasks.c:2173: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
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
	push	ar4
	lcall	_uxListRemove
	pop	ar4
	C$tasks.c$2174$6_0$220 ==.
;	src/FreeRTOS/tasks.c:2174: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x1f
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
	mov	r7,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r7
	pop	ar4
	jnc	00102$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r7
	movx	@dptr,a
00102$:
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
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
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	C$tasks.c$2178$5_0$219 ==.
;	src/FreeRTOS/tasks.c:2178: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r7
	subb	a,r4
	pop	ar4
	jnc	00178$
	ljmp	00105$
00178$:
	C$tasks.c$2180$6_0$222 ==.
;	src/FreeRTOS/tasks.c:2180: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00105$
00107$:
	C$tasks.c$2188$4_0$218 ==.
;	src/FreeRTOS/tasks.c:2188: if( pxTCB != NULL )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
	C$tasks.c$2196$5_0$224 ==.
;	src/FreeRTOS/tasks.c:2196: prvResetNextTaskUnblockTime();
	push	ar4
	lcall	_prvResetNextTaskUnblockTime
	pop	ar4
00109$:
	C$tasks.c$2204$6_0$225 ==.
;	src/FreeRTOS/tasks.c:2204: UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
	mov	dptr,#_uxPendedTicks
	movx	a,@dptr
	C$tasks.c$2206$5_0$225 ==.
;	src/FreeRTOS/tasks.c:2206: if( uxPendedCounts > ( UBaseType_t ) 0U )
	mov	r7,a
	mov	r6,a
	jz	00116$
	C$tasks.c$2208$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2208: do
	mov	ar7,r6
00112$:
	C$tasks.c$2210$7_0$227 ==.
;	src/FreeRTOS/tasks.c:2210: if( xTaskIncrementTick() != pdFALSE )
	push	ar7
	push	ar4
	lcall	_xTaskIncrementTick
	mov	a,dpl
	pop	ar4
	pop	ar7
	jz	00111$
	C$tasks.c$2212$8_0$228 ==.
;	src/FreeRTOS/tasks.c:2212: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00111$:
	C$tasks.c$2218$7_0$227 ==.
;	src/FreeRTOS/tasks.c:2218: --uxPendedCounts;
	C$tasks.c$2219$6_0$226 ==.
;	src/FreeRTOS/tasks.c:2219: } while( uxPendedCounts > ( UBaseType_t ) 0U );
	djnz	r7,00112$
	C$tasks.c$2221$6_0$226 ==.
;	src/FreeRTOS/tasks.c:2221: uxPendedTicks = 0;
	mov	dptr,#_uxPendedTicks
	clr	a
	movx	@dptr,a
00116$:
	C$tasks.c$2229$4_0$218 ==.
;	src/FreeRTOS/tasks.c:2229: if( xYieldPending != pdFALSE )
	mov	dptr,#_xYieldPending
	movx	a,@dptr
	jz	00122$
	C$tasks.c$2233$6_0$232 ==.
;	src/FreeRTOS/tasks.c:2233: xAlreadyYielded = pdTRUE;
	mov	r4,#0x01
	C$tasks.c$2236$5_0$231 ==.
;	src/FreeRTOS/tasks.c:2236: taskYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00122$:
	C$tasks.c$2249$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2249: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$2251$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2251: return xAlreadyYielded;
	mov	dpl,r4
	C$tasks.c$2252$1_0$215 ==.
;	src/FreeRTOS/tasks.c:2252: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$2252$1_0$215 ==.
	XG$xTaskResumeAll$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGetTickCount'
;------------------------------------------------------------
;xTicks                    Allocated to registers r6 r7 
;------------------------------------------------------------
	G$xTaskGetTickCount$0$0 ==.
	C$tasks.c$2255$1_0$236 ==.
;	src/FreeRTOS/tasks.c:2255: TickType_t xTaskGetTickCount( void )
;	-----------------------------------------
;	 function xTaskGetTickCount
;	-----------------------------------------
_xTaskGetTickCount:
	C$tasks.c$2260$1_0$236 ==.
;	src/FreeRTOS/tasks.c:2260: portTICK_TYPE_ENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$2262$2_0$237 ==.
;	src/FreeRTOS/tasks.c:2262: xTicks = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$tasks.c$2264$1_0$236 ==.
;	src/FreeRTOS/tasks.c:2264: portTICK_TYPE_EXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$2266$1_0$236 ==.
;	src/FreeRTOS/tasks.c:2266: return xTicks;
	mov	dpl,r6
	mov	dph,r7
	C$tasks.c$2267$1_0$236 ==.
;	src/FreeRTOS/tasks.c:2267: }
	C$tasks.c$2267$1_0$236 ==.
	XG$xTaskGetTickCount$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGetTickCountFromISR'
;------------------------------------------------------------
;xReturn                   Allocated to registers r6 r7 
;uxSavedInterruptStatus    Allocated to registers 
;------------------------------------------------------------
	G$xTaskGetTickCountFromISR$0$0 ==.
	C$tasks.c$2270$1_0$239 ==.
;	src/FreeRTOS/tasks.c:2270: TickType_t xTaskGetTickCountFromISR( void )
;	-----------------------------------------
;	 function xTaskGetTickCountFromISR
;	-----------------------------------------
_xTaskGetTickCountFromISR:
	C$tasks.c$2293$2_0$240 ==.
;	src/FreeRTOS/tasks.c:2293: xReturn = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$tasks.c$2297$1_0$239 ==.
;	src/FreeRTOS/tasks.c:2297: return xReturn;
	C$tasks.c$2298$1_0$239 ==.
;	src/FreeRTOS/tasks.c:2298: }
	C$tasks.c$2298$1_0$239 ==.
	XG$xTaskGetTickCountFromISR$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxTaskGetNumberOfTasks'
;------------------------------------------------------------
	G$uxTaskGetNumberOfTasks$0$0 ==.
	C$tasks.c$2301$1_0$242 ==.
;	src/FreeRTOS/tasks.c:2301: UBaseType_t uxTaskGetNumberOfTasks( void )
;	-----------------------------------------
;	 function uxTaskGetNumberOfTasks
;	-----------------------------------------
_uxTaskGetNumberOfTasks:
	C$tasks.c$2305$1_0$242 ==.
;	src/FreeRTOS/tasks.c:2305: return uxCurrentNumberOfTasks;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	C$tasks.c$2306$1_0$242 ==.
;	src/FreeRTOS/tasks.c:2306: }
	C$tasks.c$2306$1_0$242 ==.
	XG$uxTaskGetNumberOfTasks$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pcTaskGetName'
;------------------------------------------------------------
;xTaskToQuery              Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$pcTaskGetName$0$0 ==.
	C$tasks.c$2309$1_0$244 ==.
;	src/FreeRTOS/tasks.c:2309: char *pcTaskGetName( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
;	-----------------------------------------
;	 function pcTaskGetName
;	-----------------------------------------
_pcTaskGetName:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$2315$1_0$244 ==.
;	src/FreeRTOS/tasks.c:2315: pxTCB = prvGetTCBFromHandle( xTaskToQuery );
	mov	a,r5
	orl	a,r6
	jnz	00103$
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	sjmp	00104$
00103$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00104$:
	C$tasks.c$2317$1_0$244 ==.
;	src/FreeRTOS/tasks.c:2317: return &( pxTCB->pcTaskName[ 0 ] );
	mov	a,#0x23
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	C$tasks.c$2318$1_0$244 ==.
;	src/FreeRTOS/tasks.c:2318: }
	C$tasks.c$2318$1_0$244 ==.
	XG$pcTaskGetName$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskIncrementTick'
;------------------------------------------------------------
;pxTCB                     Allocated to registers r2 r3 r4 
;xItemValue                Allocated to registers r7 r6 
;xSwitchRequired           Allocated to stack - _bp +4
;xConstTickCount           Allocated to stack - _bp +5
;pxTemp                    Allocated to registers r2 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xTaskIncrementTick$0$0 ==.
	C$tasks.c$2636$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2636: BaseType_t xTaskIncrementTick( void )
;	-----------------------------------------
;	 function xTaskIncrementTick
;	-----------------------------------------
_xTaskIncrementTick:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	C$tasks.c$2640$2_0$246 ==.
;	src/FreeRTOS/tasks.c:2640: BaseType_t xSwitchRequired = pdFALSE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
	C$tasks.c$2646$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2646: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00173$
	ljmp	00120$
00173$:
	C$tasks.c$2650$2_0$247 ==.
;	src/FreeRTOS/tasks.c:2650: const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	C$tasks.c$2654$2_0$247 ==.
;	src/FreeRTOS/tasks.c:2654: xTickCount = xConstTickCount;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dptr,#_xTickCount
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2656$2_0$247 ==.
;	src/FreeRTOS/tasks.c:2656: if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	C$tasks.c$2658$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2658: taskSWITCH_DELAYED_LISTS();
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r3
	mov	ar6,r4
	mov	dptr,#_pxOverflowDelayedTaskList
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pxDelayedTaskList
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pxOverflowDelayedTaskList
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	lcall	_prvResetNextTaskUnblockTime
	C$tasks.c$2804$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2804: return xSwitchRequired;
	C$tasks.c$2658$2_0$247 ==.
;	src/FreeRTOS/tasks.c:2658: taskSWITCH_DELAYED_LISTS();
00102$:
	C$tasks.c$2669$2_0$247 ==.
;	src/FreeRTOS/tasks.c:2669: if( xConstTickCount >= xNextTaskUnblockTime )
	mov	dptr,#_xNextTaskUnblockTime
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00175$
	ljmp	00116$
00175$:
00124$:
	C$tasks.c$2673$5_0$253 ==.
;	src/FreeRTOS/tasks.c:2673: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00112$
	C$tasks.c$2680$6_0$254 ==.
;	src/FreeRTOS/tasks.c:2680: xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2681$6_0$254 ==.
;	src/FreeRTOS/tasks.c:2681: break;
	ljmp	00116$
00112$:
	C$tasks.c$2689$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2689: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x02
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
	mov	a,#0x08
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
	C$tasks.c$2690$6_0$255 ==.
;	src/FreeRTOS/tasks.c:2690: xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
	mov	a,#0x03
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	C$tasks.c$2692$6_0$255 ==.
;	src/FreeRTOS/tasks.c:2692: if( xConstTickCount < xItemValue )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r6
	jnc	00104$
	C$tasks.c$2699$7_0$256 ==.
;	src/FreeRTOS/tasks.c:2699: xNextTaskUnblockTime = xItemValue;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2700$7_0$256 ==.
;	src/FreeRTOS/tasks.c:2700: break; /*lint !e9011 Code structure here is deedmed easier to understand with multiple breaks. */
	ljmp	00116$
00104$:
	C$tasks.c$2708$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2708: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_uxListRemove
	pop	ar2
	pop	ar3
	pop	ar4
	C$tasks.c$2712$6_0$255 ==.
;	src/FreeRTOS/tasks.c:2712: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,#0x1c
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	a,r5
	orl	a,r6
	jz	00106$
	C$tasks.c$2714$7_0$258 ==.
;	src/FreeRTOS/tasks.c:2714: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_uxListRemove
	pop	ar2
	pop	ar3
	pop	ar4
00106$:
	C$tasks.c$2723$7_0$260 ==.
;	src/FreeRTOS/tasks.c:2723: prvAddTaskToReadyList( pxTCB );
	mov	a,#0x1f
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,r4
	subb	a,@r0
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00108$
	mov	r0,_bp
	inc	r0
	mov	dptr,#_uxTopReadyPriority
	mov	a,@r0
	movx	@dptr,a
00108$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x00
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$tasks.c$2733$7_0$262 ==.
;	src/FreeRTOS/tasks.c:2733: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00180$
	ljmp	00124$
00180$:
	C$tasks.c$2735$8_0$263 ==.
;	src/FreeRTOS/tasks.c:2735: xSwitchRequired = pdTRUE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x01
	ljmp	00124$
00116$:
	C$tasks.c$2752$3_0$265 ==.
;	src/FreeRTOS/tasks.c:2752: if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	dpl,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00121$
	C$tasks.c$2754$4_0$266 ==.
;	src/FreeRTOS/tasks.c:2754: xSwitchRequired = pdTRUE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00121$
00120$:
	C$tasks.c$2780$2_0$268 ==.
;	src/FreeRTOS/tasks.c:2780: ++uxPendedTicks;
	mov	dptr,#_uxPendedTicks
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00121$:
	C$tasks.c$2793$2_0$269 ==.
;	src/FreeRTOS/tasks.c:2793: if( xYieldPending != pdFALSE )
	mov	dptr,#_xYieldPending
	movx	a,@dptr
	jz	00123$
	C$tasks.c$2795$3_0$270 ==.
;	src/FreeRTOS/tasks.c:2795: xSwitchRequired = pdTRUE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x01
00123$:
	C$tasks.c$2804$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2804: return xSwitchRequired;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	C$tasks.c$2805$1_0$246 ==.
;	src/FreeRTOS/tasks.c:2805: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$2805$1_0$246 ==.
	XG$xTaskIncrementTick$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSwitchContext'
;------------------------------------------------------------
;uxTopPriority             Allocated to stack - _bp +7
;pxConstList               Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$vTaskSwitchContext$0$0 ==.
	C$tasks.c$2900$1_0$273 ==.
;	src/FreeRTOS/tasks.c:2900: void vTaskSwitchContext( void )
;	-----------------------------------------
;	 function vTaskSwitchContext
;	-----------------------------------------
_vTaskSwitchContext:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0a
	mov	sp,a
	C$tasks.c$2902$1_0$273 ==.
;	src/FreeRTOS/tasks.c:2902: if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00107$
	C$tasks.c$2906$2_0$274 ==.
;	src/FreeRTOS/tasks.c:2906: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00109$
00107$:
	C$tasks.c$2910$2_0$275 ==.
;	src/FreeRTOS/tasks.c:2910: xYieldPending = pdFALSE;
	mov	dptr,#_xYieldPending
	clr	a
	movx	@dptr,a
	C$tasks.c$2952$4_0$276 ==.
;	src/FreeRTOS/tasks.c:2952: taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,r6
	addc	a,#(_pxReadyTasksLists >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jnz	00115$
	dec	r7
	sjmp	00101$
00115$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
	mov	a,r5
	add	a,#_pxReadyTasksLists
	mov	r5,a
	mov	a,r6
	addc	a,#(_pxReadyTasksLists >> 8)
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x01
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00105$
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00105$:
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
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
	mov	dptr,#_pxCurrentTCB
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dptr,#_uxTopReadyPriority
	mov	a,@r0
	movx	@dptr,a
00109$:
	C$tasks.c$2970$1_0$273 ==.
;	src/FreeRTOS/tasks.c:2970: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$2970$1_0$273 ==.
	XG$vTaskSwitchContext$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskPlaceOnEventList'
;------------------------------------------------------------
;xTicksToWait              Allocated to stack - _bp -4
;pxEventList               Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskPlaceOnEventList$0$0 ==.
	C$tasks.c$2973$1_0$281 ==.
;	src/FreeRTOS/tasks.c:2973: void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
;	-----------------------------------------
;	 function vTaskPlaceOnEventList
;	-----------------------------------------
_vTaskPlaceOnEventList:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$2984$1_0$281 ==.
;	src/FreeRTOS/tasks.c:2984: vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$2986$1_0$281 ==.
;	src/FreeRTOS/tasks.c:2986: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$2987$1_0$281 ==.
;	src/FreeRTOS/tasks.c:2987: }
	pop	_bp
	C$tasks.c$2987$1_0$281 ==.
	XG$vTaskPlaceOnEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskPlaceOnUnorderedEventList'
;------------------------------------------------------------
;xItemValue                Allocated to stack - _bp -4
;xTicksToWait              Allocated to stack - _bp -6
;pxEventList               Allocated to stack - _bp +1
;------------------------------------------------------------
	G$vTaskPlaceOnUnorderedEventList$0$0 ==.
	C$tasks.c$2990$1_0$283 ==.
;	src/FreeRTOS/tasks.c:2990: void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
;	-----------------------------------------
;	 function vTaskPlaceOnUnorderedEventList
;	-----------------------------------------
_vTaskPlaceOnUnorderedEventList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$tasks.c$3001$1_0$283 ==.
;	src/FreeRTOS/tasks.c:3001: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0x80
	inc	r0
	orl	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3008$1_0$283 ==.
;	src/FreeRTOS/tasks.c:3008: vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$3010$1_0$283 ==.
;	src/FreeRTOS/tasks.c:3010: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$3011$1_0$283 ==.
;	src/FreeRTOS/tasks.c:3011: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3011$1_0$283 ==.
	XG$vTaskPlaceOnUnorderedEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskRemoveFromEventList'
;------------------------------------------------------------
;pxEventList               Allocated to registers r5 r6 r7 
;pxUnblockedTCB            Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$xTaskRemoveFromEventList$0$0 ==.
	C$tasks.c$3047$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3047: BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
;	-----------------------------------------
;	 function xTaskRemoveFromEventList
;	-----------------------------------------
_xTaskRemoveFromEventList:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3065$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3065: pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$tasks.c$3067$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3067: ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
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
	lcall	_uxListRemove
	C$tasks.c$3069$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3069: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00123$
	ljmp	00104$
00123$:
	C$tasks.c$3071$2_0$286 ==.
;	src/FreeRTOS/tasks.c:3071: ( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$3072$3_0$287 ==.
;	src/FreeRTOS/tasks.c:3072: prvAddTaskToReadyList( pxUnblockedTCB );
	mov	r0,_bp
	inc	r0
	mov	a,#0x1f
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
	mov	r6,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r6
	jnc	00102$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r6
	movx	@dptr,a
00102$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	sjmp	00105$
00104$:
	C$tasks.c$3078$2_0$289 ==.
;	src/FreeRTOS/tasks.c:3078: vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_xPendingReadyList
	mov	b,#0x00
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
00105$:
	C$tasks.c$3081$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3081: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	r0,_bp
	inc	r0
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	clr	c
	subb	a,r5
	jnc	00107$
	C$tasks.c$3086$2_0$290 ==.
;	src/FreeRTOS/tasks.c:3086: xReturn = pdTRUE;
	mov	r7,#0x01
	C$tasks.c$3090$2_0$290 ==.
;	src/FreeRTOS/tasks.c:3090: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,r7
	movx	@dptr,a
	sjmp	00108$
00107$:
	C$tasks.c$3094$2_0$291 ==.
;	src/FreeRTOS/tasks.c:3094: xReturn = pdFALSE;
	mov	r7,#0x00
00108$:
	C$tasks.c$3111$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3111: return xReturn;
	mov	dpl,r7
	C$tasks.c$3112$1_0$285 ==.
;	src/FreeRTOS/tasks.c:3112: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3112$1_0$285 ==.
	XG$xTaskRemoveFromEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskRemoveFromUnorderedEventList'
;------------------------------------------------------------
;xItemValue                Allocated to stack - _bp -4
;pxEventListItem           Allocated to registers r5 r6 r7 
;pxUnblockedTCB            Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$vTaskRemoveFromUnorderedEventList$0$0 ==.
	C$tasks.c$3115$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3115: void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
;	-----------------------------------------
;	 function vTaskRemoveFromUnorderedEventList
;	-----------------------------------------
_vTaskRemoveFromUnorderedEventList:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3124$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3124: listSET_LIST_ITEM_VALUE( pxEventListItem, xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	mov	a,#0x80
	inc	r0
	orl	a,@r0
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3128$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3128: pxUnblockedTCB = listGET_LIST_ITEM_OWNER( pxEventListItem ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$3130$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3130: ( void ) uxListRemove( pxEventListItem );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_uxListRemove
	C$tasks.c$3135$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3135: ( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$3136$2_0$294 ==.
;	src/FreeRTOS/tasks.c:3136: prvAddTaskToReadyList( pxUnblockedTCB );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1f
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
	mov	r3,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r3
	jnc	00102$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r3
	movx	@dptr,a
00102$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x00
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$tasks.c$3138$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3138: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	clr	c
	subb	a,r5
	jnc	00105$
	C$tasks.c$3144$2_0$296 ==.
;	src/FreeRTOS/tasks.c:3144: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00105$:
	C$tasks.c$3146$1_0$293 ==.
;	src/FreeRTOS/tasks.c:3146: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3146$1_0$293 ==.
	XG$vTaskRemoveFromUnorderedEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSetTimeOutState'
;------------------------------------------------------------
;pxTimeOut                 Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskSetTimeOutState$0$0 ==.
	C$tasks.c$3149$1_0$298 ==.
;	src/FreeRTOS/tasks.c:3149: void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
;	-----------------------------------------
;	 function vTaskSetTimeOutState
;	-----------------------------------------
_vTaskSetTimeOutState:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3152$1_0$298 ==.
;	src/FreeRTOS/tasks.c:3152: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$3154$2_0$299 ==.
;	src/FreeRTOS/tasks.c:3154: pxTimeOut->xOverflowCount = xNumOfOverflows;
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$tasks.c$3155$2_0$299 ==.
;	src/FreeRTOS/tasks.c:3155: pxTimeOut->xTimeOnEntering = xTickCount;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3157$1_0$298 ==.
;	src/FreeRTOS/tasks.c:3157: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$3158$1_0$298 ==.
;	src/FreeRTOS/tasks.c:3158: }
	C$tasks.c$3158$1_0$298 ==.
	XG$vTaskSetTimeOutState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskInternalSetTimeOutState'
;------------------------------------------------------------
;pxTimeOut                 Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskInternalSetTimeOutState$0$0 ==.
	C$tasks.c$3161$1_0$301 ==.
;	src/FreeRTOS/tasks.c:3161: void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
;	-----------------------------------------
;	 function vTaskInternalSetTimeOutState
;	-----------------------------------------
_vTaskInternalSetTimeOutState:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3164$1_0$301 ==.
;	src/FreeRTOS/tasks.c:3164: pxTimeOut->xOverflowCount = xNumOfOverflows;
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$tasks.c$3165$1_0$301 ==.
;	src/FreeRTOS/tasks.c:3165: pxTimeOut->xTimeOnEntering = xTickCount;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3166$1_0$301 ==.
;	src/FreeRTOS/tasks.c:3166: }
	C$tasks.c$3166$1_0$301 ==.
	XG$vTaskInternalSetTimeOutState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskCheckForTimeOut'
;------------------------------------------------------------
;pxTicksToWait             Allocated to stack - _bp -5
;pxTimeOut                 Allocated to stack - _bp +1
;xReturn                   Allocated to registers r6 
;xConstTickCount           Allocated to stack - _bp +6
;xElapsedTime              Allocated to registers r2 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xTaskCheckForTimeOut$0$0 ==.
	C$tasks.c$3169$1_0$303 ==.
;	src/FreeRTOS/tasks.c:3169: BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
;	-----------------------------------------
;	 function xTaskCheckForTimeOut
;	-----------------------------------------
_xTaskCheckForTimeOut:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$tasks.c$3176$1_0$303 ==.
;	src/FreeRTOS/tasks.c:3176: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$3179$3_0$304 ==.
;	src/FreeRTOS/tasks.c:3179: const TickType_t xConstTickCount = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$3180$2_0$304 ==.
;	src/FreeRTOS/tasks.c:3180: const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r7,a
	mov	ar2,r6
	C$tasks.c$3204$2_0$304 ==.
;	src/FreeRTOS/tasks.c:3204: if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	r5,a
	cjne	a,ar6,00122$
	sjmp	00105$
00122$:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00105$
	C$tasks.c$3211$3_0$305 ==.
;	src/FreeRTOS/tasks.c:3211: xReturn = pdTRUE;
	mov	r6,#0x01
	sjmp	00106$
00105$:
	C$tasks.c$3213$2_0$304 ==.
;	src/FreeRTOS/tasks.c:3213: else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00102$
	C$tasks.c$3216$3_0$306 ==.
;	src/FreeRTOS/tasks.c:3216: *pxTicksToWait -= xElapsedTime;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3217$3_0$306 ==.
;	src/FreeRTOS/tasks.c:3217: vTaskInternalSetTimeOutState( pxTimeOut );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vTaskInternalSetTimeOutState
	C$tasks.c$3218$3_0$306 ==.
;	src/FreeRTOS/tasks.c:3218: xReturn = pdFALSE;
	mov	r6,#0x00
	sjmp	00106$
00102$:
	C$tasks.c$3222$3_0$307 ==.
;	src/FreeRTOS/tasks.c:3222: *pxTicksToWait = 0;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$tasks.c$3223$3_0$307 ==.
;	src/FreeRTOS/tasks.c:3223: xReturn = pdTRUE;
	mov	r6,#0x01
00106$:
	C$tasks.c$3226$1_0$303 ==.
;	src/FreeRTOS/tasks.c:3226: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$3228$1_0$303 ==.
;	src/FreeRTOS/tasks.c:3228: return xReturn;
	mov	dpl,r6
	C$tasks.c$3229$1_0$303 ==.
;	src/FreeRTOS/tasks.c:3229: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3229$1_0$303 ==.
	XG$xTaskCheckForTimeOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskMissedYield'
;------------------------------------------------------------
	G$vTaskMissedYield$0$0 ==.
	C$tasks.c$3232$1_0$309 ==.
;	src/FreeRTOS/tasks.c:3232: void vTaskMissedYield( void )
;	-----------------------------------------
;	 function vTaskMissedYield
;	-----------------------------------------
_vTaskMissedYield:
	C$tasks.c$3234$1_0$309 ==.
;	src/FreeRTOS/tasks.c:3234: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	C$tasks.c$3235$1_0$309 ==.
;	src/FreeRTOS/tasks.c:3235: }
	C$tasks.c$3235$1_0$309 ==.
	XG$vTaskMissedYield$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIdleTask'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	Ftasks$prvIdleTask$0$0 ==.
	C$tasks.c$3287$1_0$311 ==.
;	src/FreeRTOS/tasks.c:3287: static portTASK_FUNCTION( prvIdleTask, pvParameters )
;	-----------------------------------------
;	 function prvIdleTask
;	-----------------------------------------
_prvIdleTask:
	C$tasks.c$3290$2_0$312 ==.
;	src/FreeRTOS/tasks.c:3290: ( void ) pvParameters;
00104$:
	C$tasks.c$3304$3_0$313 ==.
;	src/FreeRTOS/tasks.c:3304: prvCheckTasksWaitingTermination();
	lcall	_prvCheckTasksWaitingTermination
	C$tasks.c$3327$4_0$314 ==.
;	src/FreeRTOS/tasks.c:3327: if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
	mov	dptr,#_pxReadyTasksLists
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00104$
	C$tasks.c$3329$5_0$315 ==.
;	src/FreeRTOS/tasks.c:3329: taskYIELD();
	lcall	_vPortYield
	sjmp	00104$
	C$tasks.c$3401$2_0$311 ==.
;	src/FreeRTOS/tasks.c:3401: }
	C$tasks.c$3401$2_0$311 ==.
	XFtasks$prvIdleTask$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseTaskLists'
;------------------------------------------------------------
;uxPriority                Allocated to registers r7 
;------------------------------------------------------------
	Ftasks$prvInitialiseTaskLists$0$0 ==.
	C$tasks.c$3499$2_0$318 ==.
;	src/FreeRTOS/tasks.c:3499: static void prvInitialiseTaskLists( void )
;	-----------------------------------------
;	 function prvInitialiseTaskLists
;	-----------------------------------------
_prvInitialiseTaskLists:
	C$tasks.c$3503$3_0$320 ==.
;	src/FreeRTOS/tasks.c:3503: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
	mov	r7,#0x00
00102$:
	C$tasks.c$3505$3_0$320 ==.
;	src/FreeRTOS/tasks.c:3505: vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r5,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	push	ar7
	lcall	_vListInitialise
	pop	ar7
	C$tasks.c$3503$2_0$319 ==.
;	src/FreeRTOS/tasks.c:3503: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
	inc	r7
	cjne	r7,#0x04,00115$
00115$:
	jc	00102$
	C$tasks.c$3508$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3508: vListInitialise( &xDelayedTaskList1 );
	mov	dptr,#_xDelayedTaskList1
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3509$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3509: vListInitialise( &xDelayedTaskList2 );
	mov	dptr,#_xDelayedTaskList2
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3510$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3510: vListInitialise( &xPendingReadyList );
	mov	dptr,#_xPendingReadyList
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3526$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3526: pxDelayedTaskList = &xDelayedTaskList1;
	mov	dptr,#_pxDelayedTaskList
	mov	a,#_xDelayedTaskList1
	movx	@dptr,a
	mov	a,#(_xDelayedTaskList1 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$3527$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3527: pxOverflowDelayedTaskList = &xDelayedTaskList2;
	mov	dptr,#_pxOverflowDelayedTaskList
	mov	a,#_xDelayedTaskList2
	movx	@dptr,a
	mov	a,#(_xDelayedTaskList2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$3528$1_0$318 ==.
;	src/FreeRTOS/tasks.c:3528: }
	C$tasks.c$3528$1_0$318 ==.
	XFtasks$prvInitialiseTaskLists$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCheckTasksWaitingTermination'
;------------------------------------------------------------
	Ftasks$prvCheckTasksWaitingTermination$0$0 ==.
	C$tasks.c$3531$1_0$323 ==.
;	src/FreeRTOS/tasks.c:3531: static void prvCheckTasksWaitingTermination( void )
;	-----------------------------------------
;	 function prvCheckTasksWaitingTermination
;	-----------------------------------------
_prvCheckTasksWaitingTermination:
	C$tasks.c$3557$1_0$323 ==.
;	src/FreeRTOS/tasks.c:3557: }
	C$tasks.c$3557$1_0$323 ==.
	XFtasks$prvCheckTasksWaitingTermination$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvResetNextTaskUnblockTime'
;------------------------------------------------------------
;pxTCB                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Ftasks$prvResetNextTaskUnblockTime$0$0 ==.
	C$tasks.c$3793$1_0$325 ==.
;	src/FreeRTOS/tasks.c:3793: static void prvResetNextTaskUnblockTime( void )
;	-----------------------------------------
;	 function prvResetNextTaskUnblockTime
;	-----------------------------------------
_prvResetNextTaskUnblockTime:
	C$tasks.c$3797$1_0$325 ==.
;	src/FreeRTOS/tasks.c:3797: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
	mov	dptr,#_pxDelayedTaskList
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
	jnz	00102$
	C$tasks.c$3803$2_0$326 ==.
;	src/FreeRTOS/tasks.c:3803: xNextTaskUnblockTime = portMAX_DELAY;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
	C$tasks.c$3811$2_0$327 ==.
;	src/FreeRTOS/tasks.c:3811: ( pxTCB ) = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$tasks.c$3812$2_0$327 ==.
;	src/FreeRTOS/tasks.c:3812: xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
	mov	a,#0x03
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
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00104$:
	C$tasks.c$3814$1_0$325 ==.
;	src/FreeRTOS/tasks.c:3814: }
	C$tasks.c$3814$1_0$325 ==.
	XFtasks$prvResetNextTaskUnblockTime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGetCurrentTaskHandle'
;------------------------------------------------------------
;xReturn                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$xTaskGetCurrentTaskHandle$0$0 ==.
	C$tasks.c$3819$1_0$329 ==.
;	src/FreeRTOS/tasks.c:3819: TaskHandle_t xTaskGetCurrentTaskHandle( void )
;	-----------------------------------------
;	 function xTaskGetCurrentTaskHandle
;	-----------------------------------------
_xTaskGetCurrentTaskHandle:
	C$tasks.c$3826$1_0$329 ==.
;	src/FreeRTOS/tasks.c:3826: xReturn = pxCurrentTCB;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$tasks.c$3828$1_0$329 ==.
;	src/FreeRTOS/tasks.c:3828: return xReturn;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	C$tasks.c$3829$1_0$329 ==.
;	src/FreeRTOS/tasks.c:3829: }
	C$tasks.c$3829$1_0$329 ==.
	XG$xTaskGetCurrentTaskHandle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxTaskResetEventItemValue'
;------------------------------------------------------------
;uxReturn                  Allocated to stack - _bp +1
;------------------------------------------------------------
	G$uxTaskResetEventItemValue$0$0 ==.
	C$tasks.c$4446$1_0$331 ==.
;	src/FreeRTOS/tasks.c:4446: TickType_t uxTaskResetEventItemValue( void )
;	-----------------------------------------
;	 function uxTaskResetEventItemValue
;	-----------------------------------------
_uxTaskResetEventItemValue:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$tasks.c$4450$1_0$331 ==.
;	src/FreeRTOS/tasks.c:4450: uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	C$tasks.c$4454$1_0$331 ==.
;	src/FreeRTOS/tasks.c:4454: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x1f
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	r6,#0x00
	mov	a,#0x04
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$tasks.c$4456$1_0$331 ==.
;	src/FreeRTOS/tasks.c:4456: return uxReturn;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	C$tasks.c$4457$1_0$331 ==.
;	src/FreeRTOS/tasks.c:4457: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4457$1_0$331 ==.
	XG$uxTaskResetEventItemValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ulTaskNotifyTake'
;------------------------------------------------------------
;xTicksToWait              Allocated to stack - _bp -4
;xClearCountOnExit         Allocated to registers r7 
;ulReturn                  Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$ulTaskNotifyTake$0$0 ==.
	C$tasks.c$4479$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4479: uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function ulTaskNotifyTake
;	-----------------------------------------
_ulTaskNotifyTake:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	mov	r7,dpl
	C$tasks.c$4483$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4483: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4486$2_0$334 ==.
;	src/FreeRTOS/tasks.c:4486: if( pxCurrentTCB->ulNotifiedValue == 0UL )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r3
	jnz	00104$
	C$tasks.c$4489$3_0$335 ==.
;	src/FreeRTOS/tasks.c:4489: pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	C$tasks.c$4491$3_0$335 ==.
;	src/FreeRTOS/tasks.c:4491: if( xTicksToWait > ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	C$tasks.c$4493$4_0$336 ==.
;	src/FreeRTOS/tasks.c:4493: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	push	ar7
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	pop	ar7
	C$tasks.c$4500$4_0$336 ==.
;	src/FreeRTOS/tasks.c:4500: portYIELD_WITHIN_API();
	lcall	_vPortYield
00104$:
	C$tasks.c$4512$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4512: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4514$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4514: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4517$2_0$339 ==.
;	src/FreeRTOS/tasks.c:4517: ulReturn = pxCurrentTCB->ulNotifiedValue;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x2e
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$tasks.c$4519$2_0$339 ==.
;	src/FreeRTOS/tasks.c:4519: if( ulReturn != 0UL )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	ljmp	00109$
00130$:
	C$tasks.c$4521$3_0$340 ==.
;	src/FreeRTOS/tasks.c:4521: if( xClearCountOnExit != pdFALSE )
	mov	a,r7
	jz	00106$
	C$tasks.c$4523$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4523: pxCurrentTCB->ulNotifiedValue = 0UL;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	sjmp	00109$
00106$:
	C$tasks.c$4527$4_0$342 ==.
;	src/FreeRTOS/tasks.c:4527: pxCurrentTCB->ulNotifiedValue = ulReturn - ( uint32_t ) 1;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x2e
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r7,a
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
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00109$:
	C$tasks.c$4535$2_0$339 ==.
;	src/FreeRTOS/tasks.c:4535: pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$tasks.c$4537$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4537: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4539$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4539: return ulReturn;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	C$tasks.c$4540$1_0$333 ==.
;	src/FreeRTOS/tasks.c:4540: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4540$1_0$333 ==.
	XG$ulTaskNotifyTake$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskNotifyWait'
;------------------------------------------------------------
;ulBitsToClearOnExit       Allocated to stack - _bp -6
;pulNotificationValue      Allocated to stack - _bp -9
;xTicksToWait              Allocated to stack - _bp -11
;ulBitsToClearOnEntry      Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +12
;------------------------------------------------------------
	G$xTaskNotifyWait$0$0 ==.
	C$tasks.c$4547$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4547: BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
;	-----------------------------------------
;	 function xTaskNotifyWait
;	-----------------------------------------
_xTaskNotifyWait:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	C$tasks.c$4551$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4551: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4554$2_0$346 ==.
;	src/FreeRTOS/tasks.c:4554: if( pxCurrentTCB->ucNotifyState != taskNOTIFICATION_RECEIVED )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x02,00128$
	ljmp	00104$
00128$:
	C$tasks.c$4559$3_0$347 ==.
;	src/FreeRTOS/tasks.c:4559: pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x2e
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
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
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r5,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r6,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r4,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
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
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4562$3_0$347 ==.
;	src/FreeRTOS/tasks.c:4562: pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	C$tasks.c$4564$3_0$347 ==.
;	src/FreeRTOS/tasks.c:4564: if( xTicksToWait > ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	C$tasks.c$4566$4_0$348 ==.
;	src/FreeRTOS/tasks.c:4566: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$4573$4_0$348 ==.
;	src/FreeRTOS/tasks.c:4573: portYIELD_WITHIN_API();
	lcall	_vPortYield
00104$:
	C$tasks.c$4585$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4585: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4587$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4587: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4591$2_0$351 ==.
;	src/FreeRTOS/tasks.c:4591: if( pulNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
	C$tasks.c$4595$3_0$352 ==.
;	src/FreeRTOS/tasks.c:4595: *pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2e
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00106$:
	C$tasks.c$4602$2_0$351 ==.
;	src/FreeRTOS/tasks.c:4602: if( pxCurrentTCB->ucNotifyState != taskNOTIFICATION_RECEIVED )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
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
	cjne	r5,#0x02,00131$
	sjmp	00108$
00131$:
	C$tasks.c$4605$3_0$353 ==.
;	src/FreeRTOS/tasks.c:4605: xReturn = pdFALSE;
	mov	r7,#0x00
	ljmp	00109$
00108$:
	C$tasks.c$4611$3_0$354 ==.
;	src/FreeRTOS/tasks.c:4611: pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x2e
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
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
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	r4,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r5,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r3,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	r6,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	mov	a,_bp
	add	a,#0x08
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$tasks.c$4612$3_0$354 ==.
;	src/FreeRTOS/tasks.c:4612: xReturn = pdTRUE;
	mov	r7,#0x01
00109$:
	C$tasks.c$4615$2_0$351 ==.
;	src/FreeRTOS/tasks.c:4615: pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
	C$tasks.c$4617$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4617: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4619$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4619: return xReturn;
	mov	dpl,r7
	C$tasks.c$4620$1_0$345 ==.
;	src/FreeRTOS/tasks.c:4620: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4620$1_0$345 ==.
	XG$xTaskNotifyWait$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotify'
;------------------------------------------------------------
;ulValue                   Allocated to stack - _bp -6
;eAction                   Allocated to stack - _bp -7
;pulPreviousNotificationValue Allocated to stack - _bp -10
;xTaskToNotify             Allocated to registers r7 r6 r5 
;pxTCB                     Allocated to stack - _bp +4
;xReturn                   Allocated to stack - _bp +7
;ucOriginalNotifyState     Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xTaskGenericNotify$0$0 ==.
	C$tasks.c$4627$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4627: BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue )
;	-----------------------------------------
;	 function xTaskGenericNotify
;	-----------------------------------------
_xTaskGenericNotify:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$tasks.c$4630$2_0$356 ==.
;	src/FreeRTOS/tasks.c:4630: BaseType_t xReturn = pdPASS;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x01
	C$tasks.c$4634$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4634: pxTCB = xTaskToNotify;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$tasks.c$4636$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4636: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4638$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4638: if( pulPreviousNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
	C$tasks.c$4640$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4640: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	a,#0x2e
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4733$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4733: return xReturn;
	C$tasks.c$4640$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4640: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
00102$:
	C$tasks.c$4643$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4643: ucOriginalNotifyState = pxTCB->ucNotifyState;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x32
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
	C$tasks.c$4645$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4645: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$4647$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4647: switch( eAction )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x04
	jnc	00146$
	ljmp	00112$
00146$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	add	a,@r0
	mov	dptr,#00147$
	jmp	@a+dptr
00147$:
	ljmp	00112$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	C$tasks.c$4649$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4649: case eSetBits	:
00103$:
	C$tasks.c$4650$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4650: pxTCB->ulNotifiedValue |= ulValue;
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x2e
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4651$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4651: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$4653$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4653: case eIncrement	:
00104$:
	C$tasks.c$4654$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4654: ( pxTCB->ulNotifiedValue )++;
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x2e
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
	cjne	r3,#0x00,00148$
	inc	r4
	cjne	r4,#0x00,00148$
	inc	r7
00148$:
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4655$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4655: break;
	pop	ar4
	C$tasks.c$4657$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4657: case eSetValueWithOverwrite	:
	sjmp	00112$
00105$:
	C$tasks.c$4658$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4658: pxTCB->ulNotifiedValue = ulValue;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x2e
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
	add	a,#0xfa
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$4659$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4659: break;
	C$tasks.c$4661$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4661: case eSetValueWithoutOverwrite :
	sjmp	00112$
00106$:
	C$tasks.c$4662$3_0$359 ==.
;	src/FreeRTOS/tasks.c:4662: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
	cjne	r4,#0x02,00149$
	sjmp	00108$
00149$:
	C$tasks.c$4664$4_0$360 ==.
;	src/FreeRTOS/tasks.c:4664: pxTCB->ulNotifiedValue = ulValue;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x2e
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
	add	a,#0xfa
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00112$
00108$:
	C$tasks.c$4669$4_0$361 ==.
;	src/FreeRTOS/tasks.c:4669: xReturn = pdFAIL;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x00
	C$tasks.c$4685$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4685: }
00112$:
	C$tasks.c$4691$2_0$357 ==.
;	src/FreeRTOS/tasks.c:4691: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	cjne	r4,#0x01,00150$
	sjmp	00151$
00150$:
	ljmp	00118$
00151$:
	C$tasks.c$4693$3_0$362 ==.
;	src/FreeRTOS/tasks.c:4693: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$4694$4_0$363 ==.
;	src/FreeRTOS/tasks.c:4694: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r4
	jnc	00114$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00114$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x00
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$tasks.c$4715$3_0$362 ==.
;	src/FreeRTOS/tasks.c:4715: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	subb	a,r5
	jnc	00118$
	C$tasks.c$4719$4_0$365 ==.
;	src/FreeRTOS/tasks.c:4719: taskYIELD_IF_USING_PREEMPTION();
	lcall	_vPortYield
00118$:
	C$tasks.c$4731$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4731: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4733$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4733: return xReturn;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	C$tasks.c$4734$1_0$356 ==.
;	src/FreeRTOS/tasks.c:4734: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4734$1_0$356 ==.
	XG$xTaskGenericNotify$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotifyFromISR'
;------------------------------------------------------------
;ulValue                   Allocated to stack - _bp -6
;eAction                   Allocated to stack - _bp -7
;pulPreviousNotificationValue Allocated to stack - _bp -10
;pxHigherPriorityTaskWoken Allocated to stack - _bp -13
;xTaskToNotify             Allocated to registers r7 r6 r5 
;pxTCB                     Allocated to stack - _bp +4
;ucOriginalNotifyState     Allocated to registers r4 
;xReturn                   Allocated to stack - _bp +7
;uxSavedInterruptStatus    Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xTaskGenericNotifyFromISR$0$0 ==.
	C$tasks.c$4741$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4741: BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function xTaskGenericNotifyFromISR
;	-----------------------------------------
_xTaskGenericNotifyFromISR:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$tasks.c$4745$2_0$369 ==.
;	src/FreeRTOS/tasks.c:4745: BaseType_t xReturn = pdPASS;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x01
	C$tasks.c$4768$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4768: pxTCB = xTaskToNotify;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$tasks.c$4772$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4772: if( pulPreviousNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
	C$tasks.c$4774$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4774: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	a,#0x2e
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4862$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4862: return xReturn;
	C$tasks.c$4774$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4774: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
00102$:
	C$tasks.c$4777$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4777: ucOriginalNotifyState = pxTCB->ucNotifyState;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x32
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
	C$tasks.c$4778$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4778: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$4780$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4780: switch( eAction )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x04
	jnc	00159$
	ljmp	00112$
00159$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	add	a,@r0
	mov	dptr,#00160$
	jmp	@a+dptr
00160$:
	ljmp	00112$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	C$tasks.c$4782$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4782: case eSetBits	:
00103$:
	C$tasks.c$4783$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4783: pxTCB->ulNotifiedValue |= ulValue;
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x2e
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4784$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4784: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$4786$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4786: case eIncrement	:
00104$:
	C$tasks.c$4787$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4787: ( pxTCB->ulNotifiedValue )++;
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x2e
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00161$
	inc	r3
	cjne	r3,#0x00,00161$
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r7
00161$:
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4788$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4788: break;
	pop	ar4
	C$tasks.c$4790$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4790: case eSetValueWithOverwrite	:
	sjmp	00112$
00105$:
	C$tasks.c$4791$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4791: pxTCB->ulNotifiedValue = ulValue;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x2e
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
	add	a,#0xfa
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$4792$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4792: break;
	C$tasks.c$4794$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4794: case eSetValueWithoutOverwrite :
	sjmp	00112$
00106$:
	C$tasks.c$4795$3_0$372 ==.
;	src/FreeRTOS/tasks.c:4795: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
	cjne	r4,#0x02,00162$
	sjmp	00108$
00162$:
	C$tasks.c$4797$4_0$373 ==.
;	src/FreeRTOS/tasks.c:4797: pxTCB->ulNotifiedValue = ulValue;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x2e
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
	add	a,#0xfa
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00112$
00108$:
	C$tasks.c$4802$4_0$374 ==.
;	src/FreeRTOS/tasks.c:4802: xReturn = pdFAIL;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x00
	C$tasks.c$4817$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4817: }
00112$:
	C$tasks.c$4823$2_0$370 ==.
;	src/FreeRTOS/tasks.c:4823: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	cjne	r4,#0x01,00163$
	sjmp	00164$
00163$:
	ljmp	00123$
00164$:
	C$tasks.c$4828$3_0$375 ==.
;	src/FreeRTOS/tasks.c:4828: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00165$
	ljmp	00116$
00165$:
	C$tasks.c$4830$4_0$376 ==.
;	src/FreeRTOS/tasks.c:4830: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$4831$5_0$377 ==.
;	src/FreeRTOS/tasks.c:4831: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r4
	jnc	00114$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00114$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	sjmp	00117$
00116$:
	C$tasks.c$4837$4_0$379 ==.
;	src/FreeRTOS/tasks.c:4837: vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_xPendingReadyList
	mov	b,#0x00
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
00117$:
	C$tasks.c$4840$3_0$375 ==.
;	src/FreeRTOS/tasks.c:4840: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	subb	a,r5
	jnc	00123$
	C$tasks.c$4844$4_0$380 ==.
;	src/FreeRTOS/tasks.c:4844: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00119$
	C$tasks.c$4846$5_0$381 ==.
;	src/FreeRTOS/tasks.c:4846: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00119$:
	C$tasks.c$4852$4_0$380 ==.
;	src/FreeRTOS/tasks.c:4852: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00123$:
	C$tasks.c$4862$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4862: return xReturn;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	C$tasks.c$4863$1_0$369 ==.
;	src/FreeRTOS/tasks.c:4863: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4863$1_0$369 ==.
	XG$xTaskGenericNotifyFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskNotifyGiveFromISR'
;------------------------------------------------------------
;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
;xTaskToNotify             Allocated to stack - _bp +1
;pxTCB                     Allocated to stack - _bp +7
;ucOriginalNotifyState     Allocated to stack - _bp +10
;uxSavedInterruptStatus    Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$vTaskNotifyGiveFromISR$0$0 ==.
	C$tasks.c$4870$1_0$384 ==.
;	src/FreeRTOS/tasks.c:4870: void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
;	-----------------------------------------
;	 function vTaskNotifyGiveFromISR
;	-----------------------------------------
_vTaskNotifyGiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	C$tasks.c$4896$1_0$384 ==.
;	src/FreeRTOS/tasks.c:4896: pxTCB = xTaskToNotify;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
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
	C$tasks.c$4900$2_0$385 ==.
;	src/FreeRTOS/tasks.c:4900: ucOriginalNotifyState = pxTCB->ucNotifyState;
	mov	r0,_bp
	inc	r0
	mov	a,#0x32
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
	add	a,#0x0a
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$tasks.c$4901$2_0$385 ==.
;	src/FreeRTOS/tasks.c:4901: pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$4905$2_0$385 ==.
;	src/FreeRTOS/tasks.c:4905: ( pxTCB->ulNotifiedValue )++;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x2e
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00134$
	inc	r5
	cjne	r5,#0x00,00134$
	inc	r4
	cjne	r4,#0x00,00134$
	inc	r7
00134$:
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
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4911$2_0$385 ==.
;	src/FreeRTOS/tasks.c:4911: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x01,00135$
	sjmp	00136$
00135$:
	ljmp	00112$
00136$:
	C$tasks.c$4916$3_0$386 ==.
;	src/FreeRTOS/tasks.c:4916: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00137$
	ljmp	00104$
00137$:
	C$tasks.c$4918$4_0$387 ==.
;	src/FreeRTOS/tasks.c:4918: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$4919$5_0$388 ==.
;	src/FreeRTOS/tasks.c:4919: prvAddTaskToReadyList( pxTCB );
	mov	r0,_bp
	inc	r0
	mov	a,#0x1f
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
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	clr	c
	subb	a,r7
	jnc	00102$
	mov	dptr,#_uxTopReadyPriority
	mov	a,r7
	movx	@dptr,a
00102$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x1f
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
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	sjmp	00105$
00104$:
	C$tasks.c$4925$4_0$390 ==.
;	src/FreeRTOS/tasks.c:4925: vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_xPendingReadyList
	mov	b,#0x00
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
00105$:
	C$tasks.c$4928$3_0$386 ==.
;	src/FreeRTOS/tasks.c:4928: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	subb	a,r5
	jnc	00112$
	C$tasks.c$4932$4_0$391 ==.
;	src/FreeRTOS/tasks.c:4932: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
	C$tasks.c$4934$5_0$392 ==.
;	src/FreeRTOS/tasks.c:4934: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00107$:
	C$tasks.c$4940$4_0$391 ==.
;	src/FreeRTOS/tasks.c:4940: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	C$tasks.c$4948$1_0$384 ==.
;	src/FreeRTOS/tasks.c:4948: portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
00112$:
	C$tasks.c$4949$1_0$384 ==.
;	src/FreeRTOS/tasks.c:4949: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4949$1_0$384 ==.
	XG$vTaskNotifyGiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskNotifyStateClear'
;------------------------------------------------------------
;xTask                     Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to registers r2 r3 r4 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$xTaskNotifyStateClear$0$0 ==.
	C$tasks.c$4957$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4957: BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask )
;	-----------------------------------------
;	 function xTaskNotifyStateClear
;	-----------------------------------------
_xTaskNotifyStateClear:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$4964$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4964: pxTCB = prvGetTCBFromHandle( xTask );
	mov	a,r5
	orl	a,r6
	jnz	00106$
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	sjmp	00107$
00106$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00107$:
	C$tasks.c$4966$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4966: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4968$2_0$396 ==.
;	src/FreeRTOS/tasks.c:4968: if( pxTCB->ucNotifyState == taskNOTIFICATION_RECEIVED )
	mov	a,#0x32
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
	mov	r4,a
	cjne	r4,#0x02,00102$
	C$tasks.c$4970$3_0$397 ==.
;	src/FreeRTOS/tasks.c:4970: pxTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$tasks.c$4971$3_0$397 ==.
;	src/FreeRTOS/tasks.c:4971: xReturn = pdPASS;
	mov	r7,#0x01
	sjmp	00103$
00102$:
	C$tasks.c$4975$3_0$398 ==.
;	src/FreeRTOS/tasks.c:4975: xReturn = pdFAIL;
	mov	r7,#0x00
00103$:
	C$tasks.c$4978$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4978: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4980$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4980: return xReturn;
	mov	dpl,r7
	C$tasks.c$4981$1_0$395 ==.
;	src/FreeRTOS/tasks.c:4981: }
	C$tasks.c$4981$1_0$395 ==.
	XG$xTaskNotifyStateClear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvAddCurrentTaskToDelayedList'
;------------------------------------------------------------
;xCanBlockIndefinitely     Allocated to stack - _bp -3
;xTicksToWait              Allocated to stack - _bp +1
;xTimeToWake               Allocated to stack - _bp +3
;xConstTickCount           Allocated to stack - _bp +5
;sloc0                     Allocated to stack - _bp +7
;------------------------------------------------------------
	Ftasks$prvAddCurrentTaskToDelayedList$0$0 ==.
	C$tasks.c$4987$1_0$400 ==.
;	src/FreeRTOS/tasks.c:4987: static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
;	-----------------------------------------
;	 function prvAddCurrentTaskToDelayedList
;	-----------------------------------------
_prvAddCurrentTaskToDelayedList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$tasks.c$4990$2_0$400 ==.
;	src/FreeRTOS/tasks.c:4990: const TickType_t xConstTickCount = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$tasks.c$5003$1_0$400 ==.
;	src/FreeRTOS/tasks.c:5003: if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_uxListRemove
	C$tasks.c$5064$2_0$403 ==.
;	src/FreeRTOS/tasks.c:5064: xTimeToWake = xConstTickCount + xTicksToWait;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$tasks.c$5067$2_0$403 ==.
;	src/FreeRTOS/tasks.c:5067: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$5069$2_0$403 ==.
;	src/FreeRTOS/tasks.c:5069: if( xTimeToWake < xConstTickCount )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00106$
	C$tasks.c$5072$3_0$404 ==.
;	src/FreeRTOS/tasks.c:5072: vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dptr,#_pxOverflowDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	sjmp	00108$
00106$:
	C$tasks.c$5077$3_0$405 ==.
;	src/FreeRTOS/tasks.c:5077: vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$5082$3_0$405 ==.
;	src/FreeRTOS/tasks.c:5082: if( xTimeToWake < xNextTaskUnblockTime )
	mov	dptr,#_xNextTaskUnblockTime
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00108$
	C$tasks.c$5084$4_0$406 ==.
;	src/FreeRTOS/tasks.c:5084: xNextTaskUnblockTime = xTimeToWake;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$tasks.c$5093$2_0$400 ==.
;	src/FreeRTOS/tasks.c:5093: ( void ) xCanBlockIndefinitely;
00108$:
	C$tasks.c$5096$2_0$400 ==.
;	src/FreeRTOS/tasks.c:5096: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$5096$2_0$400 ==.
	XFtasks$prvAddCurrentTaskToDelayedList$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Ftasks$__str_0$0_0$0 == .
___str_0:
	.ascii "IDLE"
	.db 0x00
	.area CABS    (ABS,CODE)
