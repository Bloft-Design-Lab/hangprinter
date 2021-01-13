ARM GAS  /tmp/cci3KbNQ.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"wiring_shift.c"
  12              		.section	.text.shiftIn,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	shiftIn
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	shiftIn, %function
  21              	shiftIn:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  25 0004 9046     		mov	r8, r2
  26 0006 0725     		movs	r5, #7
  27 0008 0024     		movs	r4, #0
  28 000a CEB2     		uxtb	r6, r1
  29 000c C7B2     		uxtb	r7, r0
  30 000e 0DE0     		b	.L4
  31              	.L9:
  32 0010 FFF7FEFF 		bl	digitalRead
  33 0014 C5F10703 		rsb	r3, r5, #7
  34 0018 9840     		lsls	r0, r0, r3
  35 001a 0443     		orrs	r4, r4, r0
  36 001c E4B2     		uxtb	r4, r4
  37              	.L3:
  38 001e 0021     		movs	r1, #0
  39 0020 013D     		subs	r5, r5, #1
  40 0022 3046     		mov	r0, r6
  41 0024 FFF7FEFF 		bl	digitalWrite
  42 0028 6B1C     		adds	r3, r5, #1
  43 002a 0DD0     		beq	.L8
  44              	.L4:
  45 002c 3046     		mov	r0, r6
  46 002e 0121     		movs	r1, #1
  47 0030 FFF7FEFF 		bl	digitalWrite
  48 0034 3846     		mov	r0, r7
  49 0036 B8F1000F 		cmp	r8, #0
  50 003a E9D0     		beq	.L9
  51 003c FFF7FEFF 		bl	digitalRead
  52 0040 A840     		lsls	r0, r0, r5
  53 0042 0443     		orrs	r4, r4, r0
  54 0044 E4B2     		uxtb	r4, r4
  55 0046 EAE7     		b	.L3
  56              	.L8:
  57 0048 2046     		mov	r0, r4
ARM GAS  /tmp/cci3KbNQ.s 			page 2


  58 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  59              		.size	shiftIn, .-shiftIn
  60 004e 00BF     		.section	.text.shiftOut,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	shiftOut
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu softvfp
  68              		.type	shiftOut, %function
  69              	shiftOut:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  73 0004 9146     		mov	r9, r2
  74 0006 9846     		mov	r8, r3
  75 0008 0724     		movs	r4, #7
  76 000a 0126     		movs	r6, #1
  77 000c CDB2     		uxtb	r5, r1
  78 000e C7B2     		uxtb	r7, r0
  79 0010 12E0     		b	.L13
  80              	.L17:
  81 0012 13EA080F 		tst	r3, r8
  82 0016 14BF     		ite	ne
  83 0018 0121     		movne	r1, #1
  84 001a 0021     		moveq	r1, #0
  85 001c 3846     		mov	r0, r7
  86 001e FFF7FEFF 		bl	digitalWrite
  87              	.L12:
  88 0022 0121     		movs	r1, #1
  89 0024 2846     		mov	r0, r5
  90 0026 FFF7FEFF 		bl	digitalWrite
  91 002a 013C     		subs	r4, r4, #1
  92 002c 0021     		movs	r1, #0
  93 002e 2846     		mov	r0, r5
  94 0030 FFF7FEFF 		bl	digitalWrite
  95 0034 631C     		adds	r3, r4, #1
  96 0036 11D0     		beq	.L16
  97              	.L13:
  98 0038 C4F10703 		rsb	r3, r4, #7
  99 003c 06FA03F3 		lsl	r3, r6, r3
 100 0040 06FA04F2 		lsl	r2, r6, r4
 101 0044 B9F1000F 		cmp	r9, #0
 102 0048 E3D0     		beq	.L17
 103 004a 12EA080F 		tst	r2, r8
 104 004e 14BF     		ite	ne
 105 0050 0121     		movne	r1, #1
 106 0052 0021     		moveq	r1, #0
 107 0054 3846     		mov	r0, r7
 108 0056 FFF7FEFF 		bl	digitalWrite
 109 005a E2E7     		b	.L12
 110              	.L16:
 111 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 112              		.size	shiftOut, .-shiftOut
 113              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 114              		.align	2
ARM GAS  /tmp/cci3KbNQ.s 			page 3


 115              		.type	cpu_irq_critical_section_counter, %object
 116              		.size	cpu_irq_critical_section_counter, 4
 117              	cpu_irq_critical_section_counter:
 118 0000 00000000 		.space	4
 119              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 120              		.type	cpu_irq_prev_interrupt_state, %object
 121              		.size	cpu_irq_prev_interrupt_state, 1
 122              	cpu_irq_prev_interrupt_state:
 123 0000 00       		.space	1
 124              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
