ARM GAS  /tmp/ccTlVFRe.s 			page 1


   1              		.cpu cortex-m4
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
  26 0006 CEB2     		uxtb	r6, r1
  27 0008 C7B2     		uxtb	r7, r0
  28 000a 0725     		movs	r5, #7
  29 000c 0024     		movs	r4, #0
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
  43 002a 0ED0     		beq	.L8
  44              	.L4:
  45 002c 3046     		mov	r0, r6
  46 002e 0121     		movs	r1, #1
  47 0030 FFF7FEFF 		bl	digitalWrite
  48 0034 3846     		mov	r0, r7
  49 0036 B8F1000F 		cmp	r8, #0
  50 003a E9D0     		beq	.L9
  51 003c 3846     		mov	r0, r7
  52 003e FFF7FEFF 		bl	digitalRead
  53 0042 A840     		lsls	r0, r0, r5
  54 0044 0443     		orrs	r4, r4, r0
  55 0046 E4B2     		uxtb	r4, r4
  56 0048 E9E7     		b	.L3
  57              	.L8:
ARM GAS  /tmp/ccTlVFRe.s 			page 2


  58 004a 2046     		mov	r0, r4
  59 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  60              		.size	shiftIn, .-shiftIn
  61              		.section	.text.shiftOut,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	shiftOut
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu softvfp
  69              		.type	shiftOut, %function
  70              	shiftOut:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  74 0004 9146     		mov	r9, r2
  75 0006 9846     		mov	r8, r3
  76 0008 CEB2     		uxtb	r6, r1
  77 000a C7B2     		uxtb	r7, r0
  78 000c 0724     		movs	r4, #7
  79 000e 0125     		movs	r5, #1
  80 0010 11E0     		b	.L13
  81              	.L17:
  82 0012 13EA080F 		tst	r3, r8
  83 0016 14BF     		ite	ne
  84 0018 0121     		movne	r1, #1
  85 001a 0021     		moveq	r1, #0
  86 001c FFF7FEFF 		bl	digitalWrite
  87              	.L12:
  88 0020 0121     		movs	r1, #1
  89 0022 3046     		mov	r0, r6
  90 0024 FFF7FEFF 		bl	digitalWrite
  91 0028 013C     		subs	r4, r4, #1
  92 002a 0021     		movs	r1, #0
  93 002c 3046     		mov	r0, r6
  94 002e FFF7FEFF 		bl	digitalWrite
  95 0032 631C     		adds	r3, r4, #1
  96 0034 12D0     		beq	.L16
  97              	.L13:
  98 0036 C4F10703 		rsb	r3, r4, #7
  99 003a 05FA03F3 		lsl	r3, r5, r3
 100 003e 05FA04F2 		lsl	r2, r5, r4
 101 0042 3846     		mov	r0, r7
 102 0044 B9F1000F 		cmp	r9, #0
 103 0048 E3D0     		beq	.L17
 104 004a 12EA080F 		tst	r2, r8
 105 004e 14BF     		ite	ne
 106 0050 0121     		movne	r1, #1
 107 0052 0021     		moveq	r1, #0
 108 0054 3846     		mov	r0, r7
 109 0056 FFF7FEFF 		bl	digitalWrite
 110 005a E1E7     		b	.L12
 111              	.L16:
 112 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 113              		.size	shiftOut, .-shiftOut
 114              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  /tmp/ccTlVFRe.s 			page 3


 115              		.align	2
 116              		.type	cpu_irq_critical_section_counter, %object
 117              		.size	cpu_irq_critical_section_counter, 4
 118              	cpu_irq_critical_section_counter:
 119 0000 00000000 		.space	4
 120              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 121              		.type	cpu_irq_prev_interrupt_state, %object
 122              		.size	cpu_irq_prev_interrupt_state, 1
 123              	cpu_irq_prev_interrupt_state:
 124 0000 00       		.space	1
 125              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
