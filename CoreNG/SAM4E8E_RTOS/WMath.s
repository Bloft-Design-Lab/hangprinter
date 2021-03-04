ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccqWY2Tq.s 			page 1


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
  13              		.file	"WMath.cpp"
  14              		.text
  15              		.section	.text._Z6randoml.part.0,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z6randoml.part.0, %function
  23              	_Z6randoml.part.0:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0C4D     		ldr	r5, .L6
  28 0004 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  29 0006 0446     		mov	r4, r0
  30 0008 33B1     		cbz	r3, .L5
  31 000a FFF7FEFF 		bl	rand
  32 000e B0FBF4F3 		udiv	r3, r0, r4
  33 0012 03FB1400 		mls	r0, r3, r4, r0
  34 0016 38BD     		pop	{r3, r4, r5, pc}
  35              	.L5:
  36 0018 074B     		ldr	r3, .L6+4
  37 001a 9868     		ldr	r0, [r3, #8]
  38 001c FFF7FEFF 		bl	srand
  39 0020 0123     		movs	r3, #1
  40 0022 2B70     		strb	r3, [r5]
  41 0024 FFF7FEFF 		bl	rand
  42 0028 B0FBF4F3 		udiv	r3, r0, r4
  43 002c 03FB1400 		mls	r0, r3, r4, r0
  44 0030 38BD     		pop	{r3, r4, r5, pc}
  45              	.L7:
  46 0032 00BF     		.align	2
  47              	.L6:
  48 0034 00000000 		.word	.LANCHOR0
  49 0038 10E000E0 		.word	-536813552
  50              		.size	_Z6randoml.part.0, .-_Z6randoml.part.0
  51              		.section	.text._Z6randoml,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_Z6randoml
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccqWY2Tq.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_Z6randoml, %function
  60              	_Z6randoml:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0028     		cmp	r0, #0
  65 0002 01DD     		ble	.L9
  66 0004 FFF7FEBF 		b	_Z6randoml.part.0
  67              	.L9:
  68 0008 0020     		movs	r0, #0
  69 000a 7047     		bx	lr
  70              		.size	_Z6randoml, .-_Z6randoml
  71              		.section	.text._Z6randomll,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_Z6randomll
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_Z6randomll, %function
  80              	_Z6randomll:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83 0000 8842     		cmp	r0, r1
  84 0002 06DA     		bge	.L14
  85 0004 10B5     		push	{r4, lr}
  86 0006 0446     		mov	r4, r0
  87 0008 081A     		subs	r0, r1, r0
  88 000a FFF7FEFF 		bl	_Z6randoml.part.0
  89 000e 2044     		add	r0, r0, r4
  90 0010 10BD     		pop	{r4, pc}
  91              	.L14:
  92 0012 7047     		bx	lr
  93              		.size	_Z6randomll, .-_Z6randomll
  94              		.section	.text._Z3maplllll,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_Z3maplllll
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_Z3maplllll, %function
 103              	_Z3maplllll:
 104              		@ args = 4, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 10B4     		push	{r4}
 108 0002 019C     		ldr	r4, [sp, #4]
 109 0004 401A     		subs	r0, r0, r1
 110 0006 E41A     		subs	r4, r4, r3
 111 0008 04FB00F4 		mul	r4, r4, r0
 112 000c 521A     		subs	r2, r2, r1
 113 000e 94FBF2F0 		sdiv	r0, r4, r2
 114 0012 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccqWY2Tq.s 			page 3


 115 0016 1844     		add	r0, r0, r3
 116 0018 7047     		bx	lr
 117              		.size	_Z3maplllll, .-_Z3maplllll
 118 001a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 119              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 120              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 121              	_ZL28cpu_irq_prev_interrupt_state:
 122 0000 00       		.space	1
 123              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 124              		.align	2
 125              		.type	_ZL32cpu_irq_critical_section_counter, %object
 126              		.size	_ZL32cpu_irq_critical_section_counter, 4
 127              	_ZL32cpu_irq_critical_section_counter:
 128 0000 00000000 		.space	4
 129              		.section	.bss._ZZ6randomlE13isInitialised,"aw",%nobits
 130              		.set	.LANCHOR0,. + 0
 131              		.type	_ZZ6randomlE13isInitialised, %object
 132              		.size	_ZZ6randomlE13isInitialised, 1
 133              	_ZZ6randomlE13isInitialised:
 134 0000 00       		.space	1
 135              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
