;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _vTaskStartScheduler
	.globl _vTaskDelay
	.globl _xTaskCreate
	.globl _putchar
	.globl _getchar
	.globl _printf
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
	.globl _block
	.globl _ATaskFunction
	.globl _ATaskFunction2
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
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
G$block$0_0$0==.
_block::
	.ds 2
Lmain.main$pcTextForTask1$1_0$93==.
_main_pcTextForTask1_65536_93:
	.ds 3
Lmain.main$pcTextForTask2$1_0$93==.
_main_pcTextForTask2_65536_93:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_vTimer0ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;pcTextForTask1            Allocated with name '_main_pcTextForTask1_65536_93'
;pcTextForTask2            Allocated with name '_main_pcTextForTask2_65536_93'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$46$1_0$93 ==.
;	src/main.c:46: static const char *pcTextForTask1 = "Task 1";
	mov	dptr,#_main_pcTextForTask1_65536_93
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	C$main.c$47$1_0$93 ==.
;	src/main.c:47: static const char *pcTextForTask2 = "Task 2";
	mov	dptr,#_main_pcTextForTask2_65536_93
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	C$main.c$41$1_0$100 ==.
;	src/main.c:41: unsigned int block = 0;
	mov	dptr,#_block
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;pcTextForTask1            Allocated with name '_main_pcTextForTask1_65536_93'
;pcTextForTask2            Allocated with name '_main_pcTextForTask2_65536_93'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$43$0_0$93 ==.
;	src/main.c:43: int main( void )
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$50$1_0$93 ==.
;	src/main.c:50: prvSetupHardware();
	lcall	_prvSetupHardware
	C$main.c$53$1_0$93 ==.
;	src/main.c:53: printf("\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$main.c$54$1_0$93 ==.
;	src/main.c:54: printf("Light52 project -- " __DATE__ " " __TIME__ "\n\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$main.c$55$1_0$93 ==.
;	src/main.c:55: printf("FreeRTOS test.\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$main.c$57$1_0$93 ==.
;	src/main.c:57: xTaskCreate( ATaskFunction, "BlinkTask", 1000, (void*)pcTextForTask1, main_TASK_PRIORITY, NULL );
	mov	dptr,#_main_pcTextForTask1_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	inc	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_ATaskFunction
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$58$1_0$93 ==.
;	src/main.c:58: xTaskCreate( ATaskFunction2, "RXTask", 1000, (void*)pcTextForTask2, main_TASK_PRIORITY, NULL );
	mov	dptr,#_main_pcTextForTask2_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	inc	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_ATaskFunction2
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$61$1_0$93 ==.
;	src/main.c:61: vTaskStartScheduler();
	lcall	_vTaskStartScheduler
	C$main.c$65$1_0$93 ==.
;	src/main.c:65: while(1);
00102$:
	C$main.c$67$1_0$93 ==.
;	src/main.c:67: return 0;
	sjmp	00102$
	C$main.c$68$1_0$93 ==.
;	src/main.c:68: }
	C$main.c$68$1_0$93 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvSetupHardware'
;------------------------------------------------------------
	Fmain$prvSetupHardware$0$0 ==.
	C$main.c$70$1_0$95 ==.
;	src/main.c:70: static void prvSetupHardware( void )
;	-----------------------------------------
;	 function prvSetupHardware
;	-----------------------------------------
_prvSetupHardware:
	C$main.c$72$1_0$95 ==.
;	src/main.c:72: P0 = 0x00;
	mov	_P0,#0x00
	C$main.c$73$1_0$95 ==.
;	src/main.c:73: P1 = 0x00;
	mov	_P1,#0x00
	C$main.c$74$1_0$95 ==.
;	src/main.c:74: }
	C$main.c$74$1_0$95 ==.
	XFmain$prvSetupHardware$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ATaskFunction'
;------------------------------------------------------------
;pvParameters              Allocated to registers r5 r6 r7 
;pcTaskName                Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$ATaskFunction$0$0 ==.
	C$main.c$76$1_0$97 ==.
;	src/main.c:76: void ATaskFunction( void *pvParameters )
;	-----------------------------------------
;	 function ATaskFunction
;	-----------------------------------------
_ATaskFunction:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$main.c$80$1_0$97 ==.
;	src/main.c:80: pcTaskName = ( char * ) pvParameters;
	C$main.c$82$1_0$97 ==.
;	src/main.c:82: while(block);
00101$:
	mov	dptr,#_block
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00101$
	C$main.c$83$1_0$97 ==.
;	src/main.c:83: block = 1;
	mov	dptr,#_block
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$main.c$84$1_0$97 ==.
;	src/main.c:84: printf("Hallo von %s!\n\r", pcTaskName);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	C$main.c$85$1_0$97 ==.
;	src/main.c:85: block = 0;
	mov	dptr,#_block
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$main.c$90$2_0$98 ==.
;	src/main.c:90: while(block);
00104$:
	mov	dptr,#_block
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
	C$main.c$91$2_0$98 ==.
;	src/main.c:91: block = 1;
	mov	dptr,#_block
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$main.c$92$2_0$98 ==.
;	src/main.c:92: printf("%c", 0x57);
	mov	a,#0x57
	push	acc
	clr	a
	push	acc
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$main.c$93$2_0$98 ==.
;	src/main.c:93: block = 0;
	mov	dptr,#_block
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$main.c$94$2_0$98 ==.
;	src/main.c:94: P0 ^= 0xff;
	mov	r6,_P0
	xrl	ar6,#0xff
	mov	_P0,r6
	C$main.c$95$2_0$98 ==.
;	src/main.c:95: P1 ^= 0xff;
	mov	r6,_P1
	xrl	ar6,#0xff
	mov	_P1,r6
	C$main.c$96$2_0$98 ==.
;	src/main.c:96: vTaskDelay(100);
	mov	dptr,#0x0064
	lcall	_vTaskDelay
	C$main.c$99$1_0$97 ==.
;	src/main.c:99: vTaskDelete( NULL );
	sjmp	00104$
	C$main.c$100$1_0$97 ==.
;	src/main.c:100: }
	C$main.c$100$1_0$97 ==.
	XG$ATaskFunction$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ATaskFunction2'
;------------------------------------------------------------
;pvParameters              Allocated to registers r5 r6 r7 
;pcTaskName                Allocated to registers r5 r6 r7 
;ucRx                      Allocated to registers r6 
;------------------------------------------------------------
	G$ATaskFunction2$0$0 ==.
	C$main.c$102$1_0$100 ==.
;	src/main.c:102: void ATaskFunction2( void *pvParameters )
;	-----------------------------------------
;	 function ATaskFunction2
;	-----------------------------------------
_ATaskFunction2:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$main.c$108$1_0$100 ==.
;	src/main.c:108: pcTaskName = ( char * ) pvParameters;
	C$main.c$110$1_0$100 ==.
;	src/main.c:110: while(block);
00101$:
	mov	dptr,#_block
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00101$
	C$main.c$111$1_0$100 ==.
;	src/main.c:111: block = 1;
	mov	dptr,#_block
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$main.c$112$1_0$100 ==.
;	src/main.c:112: printf("Hallo von %s!\n\r", pcTaskName);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	C$main.c$113$1_0$100 ==.
;	src/main.c:113: block = 0;
	mov	dptr,#_block
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$main.c$117$1_0$100 ==.
;	src/main.c:117: while(1)
00108$:
	C$main.c$119$2_0$101 ==.
;	src/main.c:119: ucRx = getchar();
	lcall	_getchar
	mov	r6,dpl
	C$main.c$120$2_0$101 ==.
;	src/main.c:120: while(block);
00104$:
	mov	dptr,#_block
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
	C$main.c$121$2_0$101 ==.
;	src/main.c:121: block = 1;
	mov	dptr,#_block
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$main.c$122$2_0$101 ==.
;	src/main.c:122: putchar(ucRx);
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
	C$main.c$123$2_0$101 ==.
;	src/main.c:123: block = 0;
	mov	dptr,#_block
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$main.c$126$1_0$100 ==.
;	src/main.c:126: vTaskDelete( NULL );
	sjmp	00108$
	C$main.c$127$1_0$100 ==.
;	src/main.c:127: }
	C$main.c$127$1_0$100 ==.
	XG$ATaskFunction2$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "Task 1"
	.db 0x00
Fmain$__str_1$0_0$0 == .
___str_1:
	.ascii "Task 2"
	.db 0x00
Fmain$__str_2$0_0$0 == .
___str_2:
	.db 0x0a
	.db 0x0d
	.db 0x00
Fmain$__str_3$0_0$0 == .
___str_3:
	.ascii "Light52 project -- Nov  2 2018 17:18:17"
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.db 0x00
Fmain$__str_4$0_0$0 == .
___str_4:
	.ascii "FreeRTOS test."
	.db 0x0a
	.db 0x0d
	.db 0x00
Fmain$__str_5$0_0$0 == .
___str_5:
	.ascii "BlinkTask"
	.db 0x00
Fmain$__str_6$0_0$0 == .
___str_6:
	.ascii "RXTask"
	.db 0x00
Fmain$__str_7$0_0$0 == .
___str_7:
	.ascii "Hallo von %s!"
	.db 0x0a
	.db 0x0d
	.db 0x00
Fmain$__str_8$0_0$0 == .
___str_8:
	.ascii "%c"
	.db 0x00
	.area CABS    (ABS,CODE)
