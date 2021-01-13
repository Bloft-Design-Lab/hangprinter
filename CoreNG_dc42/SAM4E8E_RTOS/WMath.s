ARM GAS  /tmp/ccR2N5Cq.s 			page 1


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
  14              		.section	.text._Z6randoml,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z6randoml
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z6randoml, %function
  23              	_Z6randoml:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 041E     		subs	r4, r0, #0
  28 0004 16DD     		ble	.L4
  29 0006 0C4D     		ldr	r5, .L8
  30 0008 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  31 000a 33B1     		cbz	r3, .L7
  32 000c FFF7FEFF 		bl	rand
  33 0010 B0FBF4F3 		udiv	r3, r0, r4
  34 0014 03FB1400 		mls	r0, r3, r4, r0
  35 0018 38BD     		pop	{r3, r4, r5, pc}
  36              	.L7:
  37 001a 084B     		ldr	r3, .L8+4
  38 001c 9868     		ldr	r0, [r3, #8]
  39 001e FFF7FEFF 		bl	srand
  40 0022 0123     		movs	r3, #1
  41 0024 2B70     		strb	r3, [r5]
  42 0026 FFF7FEFF 		bl	rand
  43 002a B0FBF4F3 		udiv	r3, r0, r4
  44 002e 03FB1400 		mls	r0, r3, r4, r0
  45 0032 38BD     		pop	{r3, r4, r5, pc}
  46              	.L4:
  47 0034 0020     		movs	r0, #0
  48 0036 38BD     		pop	{r3, r4, r5, pc}
  49              	.L9:
  50              		.align	2
  51              	.L8:
  52 0038 00000000 		.word	.LANCHOR0
  53 003c 10E000E0 		.word	-536813552
  54              		.size	_Z6randoml, .-_Z6randoml
  55              		.section	.text._Z6randomll,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/ccR2N5Cq.s 			page 2


  58              		.global	_Z6randomll
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	_Z6randomll, %function
  64              	_Z6randomll:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 8842     		cmp	r0, r1
  68 0002 10B5     		push	{r4, lr}
  69 0004 0446     		mov	r4, r0
  70 0006 03DA     		bge	.L11
  71 0008 081A     		subs	r0, r1, r0
  72 000a FFF7FEFF 		bl	_Z6randoml
  73 000e 0444     		add	r4, r4, r0
  74              	.L11:
  75 0010 2046     		mov	r0, r4
  76 0012 10BD     		pop	{r4, pc}
  77              		.size	_Z6randomll, .-_Z6randomll
  78              		.section	.text._Z3maplllll,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	_Z3maplllll
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_Z3maplllll, %function
  87              	_Z3maplllll:
  88              		@ args = 4, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 10B4     		push	{r4}
  92 0002 019C     		ldr	r4, [sp, #4]
  93 0004 401A     		subs	r0, r0, r1
  94 0006 E41A     		subs	r4, r4, r3
  95 0008 04FB00F4 		mul	r4, r4, r0
  96 000c 521A     		subs	r2, r2, r1
  97 000e 94FBF2F0 		sdiv	r0, r4, r2
  98 0012 5DF8044B 		ldr	r4, [sp], #4
  99 0016 1844     		add	r0, r0, r3
 100 0018 7047     		bx	lr
 101              		.size	_Z3maplllll, .-_Z3maplllll
 102 001a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 103              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 104              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 105              	_ZL28cpu_irq_prev_interrupt_state:
 106 0000 00       		.space	1
 107              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 108              		.align	2
 109              		.type	_ZL32cpu_irq_critical_section_counter, %object
 110              		.size	_ZL32cpu_irq_critical_section_counter, 4
 111              	_ZL32cpu_irq_critical_section_counter:
 112 0000 00000000 		.space	4
 113              		.section	.bss._ZZ6randomlE13isInitialised,"aw",%nobits
 114              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccR2N5Cq.s 			page 3


 115              		.type	_ZZ6randomlE13isInitialised, %object
 116              		.size	_ZZ6randomlE13isInitialised, 1
 117              	_ZZ6randomlE13isInitialised:
 118 0000 00       		.space	1
 119              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
