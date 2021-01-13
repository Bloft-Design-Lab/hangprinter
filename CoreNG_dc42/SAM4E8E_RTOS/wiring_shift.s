ARM GAS  /tmp/ccu1CsMX.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 27, 1
   3              		.eabi_attribute 28, 1
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 2
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.file	"wiring_shift.c"
  14              		.section	.text.shiftIn,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	shiftIn
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	shiftIn, %function
  23              	shiftIn:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  27 0004 9046     		mov	r8, r2
  28 0006 CEB2     		uxtb	r6, r1
  29 0008 C7B2     		uxtb	r7, r0
  30 000a 0725     		movs	r5, #7
  31 000c 0024     		movs	r4, #0
  32 000e 0DE0     		b	.L4
  33              	.L9:
  34 0010 FFF7FEFF 		bl	digitalRead
  35 0014 C5F10703 		rsb	r3, r5, #7
  36 0018 9840     		lsls	r0, r0, r3
  37 001a 0443     		orrs	r4, r4, r0
  38 001c E4B2     		uxtb	r4, r4
  39              	.L3:
  40 001e 0021     		movs	r1, #0
  41 0020 013D     		subs	r5, r5, #1
  42 0022 3046     		mov	r0, r6
  43 0024 FFF7FEFF 		bl	digitalWrite
  44 0028 6B1C     		adds	r3, r5, #1
  45 002a 0ED0     		beq	.L8
  46              	.L4:
  47 002c 3046     		mov	r0, r6
  48 002e 0121     		movs	r1, #1
  49 0030 FFF7FEFF 		bl	digitalWrite
  50 0034 3846     		mov	r0, r7
  51 0036 B8F1000F 		cmp	r8, #0
  52 003a E9D0     		beq	.L9
  53 003c 3846     		mov	r0, r7
  54 003e FFF7FEFF 		bl	digitalRead
  55 0042 A840     		lsls	r0, r0, r5
  56 0044 0443     		orrs	r4, r4, r0
  57 0046 E4B2     		uxtb	r4, r4
ARM GAS  /tmp/ccu1CsMX.s 			page 2


  58 0048 E9E7     		b	.L3
  59              	.L8:
  60 004a 2046     		mov	r0, r4
  61 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  62              		.size	shiftIn, .-shiftIn
  63              		.section	.text.shiftOut,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	shiftOut
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	shiftOut, %function
  72              	shiftOut:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  76 0004 9146     		mov	r9, r2
  77 0006 9846     		mov	r8, r3
  78 0008 CEB2     		uxtb	r6, r1
  79 000a C7B2     		uxtb	r7, r0
  80 000c 0724     		movs	r4, #7
  81 000e 0125     		movs	r5, #1
  82 0010 11E0     		b	.L13
  83              	.L17:
  84 0012 13EA080F 		tst	r3, r8
  85 0016 14BF     		ite	ne
  86 0018 0121     		movne	r1, #1
  87 001a 0021     		moveq	r1, #0
  88 001c FFF7FEFF 		bl	digitalWrite
  89              	.L12:
  90 0020 0121     		movs	r1, #1
  91 0022 3046     		mov	r0, r6
  92 0024 FFF7FEFF 		bl	digitalWrite
  93 0028 013C     		subs	r4, r4, #1
  94 002a 0021     		movs	r1, #0
  95 002c 3046     		mov	r0, r6
  96 002e FFF7FEFF 		bl	digitalWrite
  97 0032 631C     		adds	r3, r4, #1
  98 0034 12D0     		beq	.L16
  99              	.L13:
 100 0036 C4F10703 		rsb	r3, r4, #7
 101 003a 05FA03F3 		lsl	r3, r5, r3
 102 003e 05FA04F2 		lsl	r2, r5, r4
 103 0042 3846     		mov	r0, r7
 104 0044 B9F1000F 		cmp	r9, #0
 105 0048 E3D0     		beq	.L17
 106 004a 12EA080F 		tst	r2, r8
 107 004e 14BF     		ite	ne
 108 0050 0121     		movne	r1, #1
 109 0052 0021     		moveq	r1, #0
 110 0054 3846     		mov	r0, r7
 111 0056 FFF7FEFF 		bl	digitalWrite
 112 005a E1E7     		b	.L12
 113              	.L16:
 114 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/ccu1CsMX.s 			page 3


 115              		.size	shiftOut, .-shiftOut
 116              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 117              		.align	2
 118              		.type	cpu_irq_critical_section_counter, %object
 119              		.size	cpu_irq_critical_section_counter, 4
 120              	cpu_irq_critical_section_counter:
 121 0000 00000000 		.space	4
 122              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 123              		.type	cpu_irq_prev_interrupt_state, %object
 124              		.size	cpu_irq_prev_interrupt_state, 1
 125              	cpu_irq_prev_interrupt_state:
 126 0000 00       		.space	1
 127              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
