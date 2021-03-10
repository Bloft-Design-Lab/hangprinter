ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccFCEMXA.s 			page 1


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
  14              		.text
  15              		.section	.text.shiftIn,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	shiftIn
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	shiftIn, %function
  24              	shiftIn:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  28 0004 0025     		movs	r5, #0
  29 0006 9046     		mov	r8, r2
  30 0008 CEB2     		uxtb	r6, r1
  31 000a C7B2     		uxtb	r7, r0
  32 000c 2C46     		mov	r4, r5
  33 000e 0BE0     		b	.L4
  34              	.L9:
  35 0010 FFF7FEFF 		bl	digitalRead
  36 0014 A840     		lsls	r0, r0, r5
  37 0016 0443     		orrs	r4, r4, r0
  38 0018 E4B2     		uxtb	r4, r4
  39              	.L3:
  40 001a 0021     		movs	r1, #0
  41 001c 0135     		adds	r5, r5, #1
  42 001e 3046     		mov	r0, r6
  43 0020 FFF7FEFF 		bl	digitalWrite
  44 0024 082D     		cmp	r5, #8
  45 0026 10D0     		beq	.L8
  46              	.L4:
  47 0028 3046     		mov	r0, r6
  48 002a 0121     		movs	r1, #1
  49 002c FFF7FEFF 		bl	digitalWrite
  50 0030 64B2     		sxtb	r4, r4
  51 0032 3846     		mov	r0, r7
  52 0034 B8F1000F 		cmp	r8, #0
  53 0038 EAD0     		beq	.L9
  54 003a FFF7FEFF 		bl	digitalRead
  55 003e C5F10703 		rsb	r3, r5, #7
  56 0042 9840     		lsls	r0, r0, r3
  57 0044 0443     		orrs	r4, r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccFCEMXA.s 			page 2


  58 0046 E4B2     		uxtb	r4, r4
  59 0048 E7E7     		b	.L3
  60              	.L8:
  61 004a 2046     		mov	r0, r4
  62 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  63              		.size	shiftIn, .-shiftIn
  64              		.section	.text.shiftOut,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	shiftOut
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	shiftOut, %function
  73              	shiftOut:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  77 0004 9146     		mov	r9, r2
  78 0006 9846     		mov	r8, r3
  79 0008 CEB2     		uxtb	r6, r1
  80 000a C7B2     		uxtb	r7, r0
  81 000c 0024     		movs	r4, #0
  82 000e 0125     		movs	r5, #1
  83 0010 11E0     		b	.L13
  84              	.L17:
  85 0012 12EA080F 		tst	r2, r8
  86 0016 14BF     		ite	ne
  87 0018 0121     		movne	r1, #1
  88 001a 0021     		moveq	r1, #0
  89 001c FFF7FEFF 		bl	digitalWrite
  90              	.L12:
  91 0020 0121     		movs	r1, #1
  92 0022 3046     		mov	r0, r6
  93 0024 0C44     		add	r4, r4, r1
  94 0026 FFF7FEFF 		bl	digitalWrite
  95 002a 0021     		movs	r1, #0
  96 002c 3046     		mov	r0, r6
  97 002e FFF7FEFF 		bl	digitalWrite
  98 0032 082C     		cmp	r4, #8
  99 0034 11D0     		beq	.L16
 100              	.L13:
 101 0036 C4F10703 		rsb	r3, r4, #7
 102 003a 05FA04F2 		lsl	r2, r5, r4
 103 003e 05FA03F3 		lsl	r3, r5, r3
 104 0042 3846     		mov	r0, r7
 105 0044 B9F1000F 		cmp	r9, #0
 106 0048 E3D0     		beq	.L17
 107 004a 13EA080F 		tst	r3, r8
 108 004e 14BF     		ite	ne
 109 0050 0121     		movne	r1, #1
 110 0052 0021     		moveq	r1, #0
 111 0054 FFF7FEFF 		bl	digitalWrite
 112 0058 E2E7     		b	.L12
 113              	.L16:
 114 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccFCEMXA.s 			page 3


 115              		.size	shiftOut, .-shiftOut
 116 005e 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
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
 127              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
