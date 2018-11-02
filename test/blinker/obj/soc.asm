;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.7.2 #10505 (Linux)
;--------------------------------------------------------
	.module soc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _seconds
	.globl _soc_init
	.globl _soc_get_msecs
	.globl _cpu_enable_interrupts
	.globl _timer0_init
	.globl _timer0_enable
	.globl _timer0_counter
	.globl _timer0_enable_irq
	.globl _timer0_isr
	.globl _putchar
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
G$seconds$0_0$0==.
_seconds::
	.ds 4
Lsoc.timer0_isr$q$1_0$40==.
_timer0_isr_q_65536_40:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Lsoc.timer0_counter$h$1_0$35==.
_timer0_counter_h_65536_35:
	.ds 1
Lsoc.timer0_counter$l0$1_0$35==.
_timer0_counter_l0_65536_35:
	.ds 1
Lsoc.timer0_counter$l1$1_0$35==.
_timer0_counter_l1_65536_35:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;q                         Allocated with name '_timer0_isr_q_65536_40'
;------------------------------------------------------------
	G$timer0_isr$0$0 ==.
	C$soc.c$104$1_0$40 ==.
;	../common/soc.c:104: static uint8_t q = 0;
	mov	_timer0_isr_q_65536_40,#0x00
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
;Allocation info for local variables in function 'soc_init'
;------------------------------------------------------------
	G$soc_init$0$0 ==.
	C$soc.c$30$0_0$23 ==.
;	../common/soc.c:30: void soc_init(void){
;	-----------------------------------------
;	 function soc_init
;	-----------------------------------------
_soc_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$soc.c$31$1_0$23 ==.
;	../common/soc.c:31: seconds = 0;
	clr	a
	mov	_seconds,a
	mov	(_seconds + 1),a
	mov	(_seconds + 2),a
	mov	(_seconds + 3),a
	C$soc.c$33$1_0$23 ==.
;	../common/soc.c:33: timer0_init(CLOCK_RATE/TIMER0_PRESCALER);
	mov	dptr,#0xc350
	lcall	_timer0_init
	C$soc.c$35$1_0$23 ==.
;	../common/soc.c:35: timer0_enable_irq(1);
	mov	dpl,#0x01
	lcall	_timer0_enable_irq
	C$soc.c$36$1_0$23 ==.
;	../common/soc.c:36: cpu_enable_interrupts(1);
	mov	dpl,#0x01
	lcall	_cpu_enable_interrupts
	C$soc.c$38$1_0$23 ==.
;	../common/soc.c:38: timer0_enable(1);
	mov	dpl,#0x01
	lcall	_timer0_enable
	C$soc.c$39$1_0$23 ==.
;	../common/soc.c:39: }
	C$soc.c$39$1_0$23 ==.
	XG$soc_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'soc_get_msecs'
;------------------------------------------------------------
;msecs                     Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	G$soc_get_msecs$0$0 ==.
	C$soc.c$41$1_0$25 ==.
;	../common/soc.c:41: uint32_t soc_get_msecs(void){
;	-----------------------------------------
;	 function soc_get_msecs
;	-----------------------------------------
_soc_get_msecs:
	C$soc.c$44$1_0$25 ==.
;	../common/soc.c:44: msecs = timer0_counter();           /* Get the counter... */
	lcall	_timer0_counter
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	r4,#0x00
	C$soc.c$45$1_0$25 ==.
;	../common/soc.c:45: msecs = msecs/TIMER0_COUNTS_PER_MS; /* ...and convert it to milliseconds */
	mov	__divulong_PARM_2,#0x32
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$soc.c$47$1_0$25 ==.
;	../common/soc.c:47: msecs = msecs + seconds*1000;
	mov	__mullong_PARM_2,_seconds
	mov	(__mullong_PARM_2 + 1),(_seconds + 1)
	mov	(__mullong_PARM_2 + 2),(_seconds + 2)
	mov	(__mullong_PARM_2 + 3),(_seconds + 3)
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	C$soc.c$48$1_0$25 ==.
;	../common/soc.c:48: return msecs;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$soc.c$49$1_0$25 ==.
;	../common/soc.c:49: }
	C$soc.c$49$1_0$25 ==.
	XG$soc_get_msecs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cpu_enable_interrupts'
;------------------------------------------------------------
;enable                    Allocated to registers r7 
;------------------------------------------------------------
	G$cpu_enable_interrupts$0$0 ==.
	C$soc.c$54$1_0$27 ==.
;	../common/soc.c:54: void cpu_enable_interrupts(uint8_t enable){
;	-----------------------------------------
;	 function cpu_enable_interrupts
;	-----------------------------------------
_cpu_enable_interrupts:
	C$soc.c$55$1_0$27 ==.
;	../common/soc.c:55: EA = enable & 0x01;
	mov	a,dpl
	anl	a,#0x01
	add	a,#0xff
	mov	_EA,c
	C$soc.c$56$1_0$27 ==.
;	../common/soc.c:56: }
	C$soc.c$56$1_0$27 ==.
	XG$cpu_enable_interrupts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;reload                    Allocated to registers r6 r7 
;------------------------------------------------------------
	G$timer0_init$0$0 ==.
	C$soc.c$60$1_0$29 ==.
;	../common/soc.c:60: void timer0_init(uint16_t reload){
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
	mov	r6,dpl
	mov	r7,dph
	C$soc.c$61$1_0$29 ==.
;	../common/soc.c:61: if(reload!=0xffff){
	cjne	r6,#0xff,00110$
	cjne	r7,#0xff,00110$
	sjmp	00102$
00110$:
	C$soc.c$62$2_0$30 ==.
;	../common/soc.c:62: T0CH = (uint8_t)(reload >> 8);
	mov	_T0CH,r7
	C$soc.c$63$1_0$29 ==.
;	../common/soc.c:63: T0CL = (uint8_t)(reload & 0xff);
	mov	_T0CL,r6
	C$soc.c$64$2_0$30 ==.
;	../common/soc.c:64: T0ARL = 1;
;	assignBit
	setb	_T0ARL
	sjmp	00103$
00102$:
	C$soc.c$67$2_0$31 ==.
;	../common/soc.c:67: T0ARL = 0;
;	assignBit
	clr	_T0ARL
00103$:
	C$soc.c$69$1_0$29 ==.
;	../common/soc.c:69: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
;	assignBit
	setb	_T0IRQ
	C$soc.c$70$1_0$29 ==.
;	../common/soc.c:70: }
	C$soc.c$70$1_0$29 ==.
	XG$timer0_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_enable'
;------------------------------------------------------------
;enable                    Allocated to registers r7 
;------------------------------------------------------------
	G$timer0_enable$0$0 ==.
	C$soc.c$72$1_0$33 ==.
;	../common/soc.c:72: void timer0_enable(uint8_t enable){
;	-----------------------------------------
;	 function timer0_enable
;	-----------------------------------------
_timer0_enable:
	C$soc.c$73$1_0$33 ==.
;	../common/soc.c:73: T0CEN = enable & 0x01;
	mov	a,dpl
	anl	a,#0x01
	add	a,#0xff
	mov	_T0CEN,c
	C$soc.c$74$1_0$33 ==.
;	../common/soc.c:74: }
	C$soc.c$74$1_0$33 ==.
	XG$timer0_enable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_counter'
;------------------------------------------------------------
;h                         Allocated with name '_timer0_counter_h_65536_35'
;l0                        Allocated with name '_timer0_counter_l0_65536_35'
;l1                        Allocated with name '_timer0_counter_l1_65536_35'
;value                     Allocated to registers 
;retried                   Allocated to registers 
;------------------------------------------------------------
	G$timer0_counter$0$0 ==.
	C$soc.c$76$1_0$35 ==.
;	../common/soc.c:76: uint16_t timer0_counter(void){
;	-----------------------------------------
;	 function timer0_counter
;	-----------------------------------------
_timer0_counter:
	C$soc.c$82$1_0$35 ==.
;	../common/soc.c:82: h = T0H;
	mov	_timer0_counter_h_65536_35,_T0H
	C$soc.c$83$1_0$35 ==.
;	../common/soc.c:83: l0 = T0L;
	mov	_timer0_counter_l0_65536_35,_T0L
	C$soc.c$84$1_0$35 ==.
;	../common/soc.c:84: l1 = T0L;
	mov	_timer0_counter_l1_65536_35,_T0L
	C$soc.c$86$1_0$35 ==.
;	../common/soc.c:86: if(l0!=l1){
	mov	a,_timer0_counter_l1_65536_35
	cjne	a,_timer0_counter_l0_65536_35,00109$
	sjmp	00102$
00109$:
	C$soc.c$89$2_0$36 ==.
;	../common/soc.c:89: h = T0H;
	mov	_timer0_counter_h_65536_35,_T0H
	C$soc.c$90$2_0$36 ==.
;	../common/soc.c:90: l0 = T0L;
	mov	_timer0_counter_l0_65536_35,_T0L
00102$:
	C$soc.c$93$1_0$35 ==.
;	../common/soc.c:93: value = ((uint16_t)h)<<8 | (uint16_t)l0;
	mov	r7,_timer0_counter_h_65536_35
	mov	r6,#0x00
	mov	r4,_timer0_counter_l0_65536_35
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
	C$soc.c$94$1_0$35 ==.
;	../common/soc.c:94: return value;
	C$soc.c$95$1_0$35 ==.
;	../common/soc.c:95: }
	C$soc.c$95$1_0$35 ==.
	XG$timer0_counter$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_enable_irq'
;------------------------------------------------------------
;enable                    Allocated to registers r7 
;------------------------------------------------------------
	G$timer0_enable_irq$0$0 ==.
	C$soc.c$97$1_0$38 ==.
;	../common/soc.c:97: void timer0_enable_irq(uint8_t enable){
;	-----------------------------------------
;	 function timer0_enable_irq
;	-----------------------------------------
_timer0_enable_irq:
	C$soc.c$98$1_0$38 ==.
;	../common/soc.c:98: ET0 = enable & 0x01;
	mov	a,dpl
	anl	a,#0x01
	add	a,#0xff
	mov	_ET0,c
	C$soc.c$99$1_0$38 ==.
;	../common/soc.c:99: }
	C$soc.c$99$1_0$38 ==.
	XG$timer0_enable_irq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;q                         Allocated with name '_timer0_isr_q_65536_40'
;------------------------------------------------------------
	G$timer0_isr$0$0 ==.
	C$soc.c$103$1_0$40 ==.
;	../common/soc.c:103: void timer0_isr(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	push	acc
	push	psw
	C$soc.c$106$1_0$40 ==.
;	../common/soc.c:106: T0IRQ = 1; /* Clear IRQ flag by writing a 1 on it */
;	assignBit
	setb	_T0IRQ
	C$soc.c$107$1_0$40 ==.
;	../common/soc.c:107: P1 = q;
	mov	_P1,_timer0_isr_q_65536_40
	C$soc.c$108$1_0$40 ==.
;	../common/soc.c:108: q++;
	inc	_timer0_isr_q_65536_40
	C$soc.c$110$1_0$40 ==.
;	../common/soc.c:110: seconds++;
	mov	a,#0x01
	add	a,_seconds
	mov	_seconds,a
	clr	a
	addc	a,(_seconds + 1)
	mov	(_seconds + 1),a
	clr	a
	addc	a,(_seconds + 2)
	mov	(_seconds + 2),a
	clr	a
	addc	a,(_seconds + 3)
	mov	(_seconds + 3),a
	C$soc.c$111$1_0$40 ==.
;	../common/soc.c:111: }
	pop	psw
	pop	acc
	C$soc.c$111$1_0$40 ==.
	XG$timer0_isr$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$soc.c$121$1_0$42 ==.
;	../common/soc.c:121: int putchar (int c) 
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r6,dpl
	mov	r7,dph
	C$soc.c$123$1_0$42 ==.
;	../common/soc.c:123: while (!TXRDY);
00101$:
	jnb	_TXRDY,00101$
	C$soc.c$124$1_0$42 ==.
;	../common/soc.c:124: SBUF = c;
	mov	_SBUF,r6
	C$soc.c$125$1_0$42 ==.
;	../common/soc.c:125: if( c == '\n' )
	cjne	r6,#0x0a,00109$
	cjne	r7,#0x00,00109$
	C$soc.c$127$2_0$43 ==.
;	../common/soc.c:127: while (!TXRDY);
00104$:
	jnb	_TXRDY,00104$
	C$soc.c$128$2_0$43 ==.
;	../common/soc.c:128: SBUF = '\r';
	mov	_SBUF,#0x0d
00109$:
	C$soc.c$130$1_0$42 ==.
;	../common/soc.c:130: }
	C$soc.c$130$1_0$42 ==.
	XG$putchar$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
