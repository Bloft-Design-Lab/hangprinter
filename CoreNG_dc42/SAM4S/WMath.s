ARM GAS  /tmp/cczhtUVX.s 			page 1


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
  11              		.file	"WMath.cpp"
  12              		.section	.text._Z6randoml,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z6randoml
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z6randoml, %function
  21              	_Z6randoml:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 041E     		subs	r4, r0, #0
  26 0004 16DD     		ble	.L4
  27 0006 0C4D     		ldr	r5, .L8
  28 0008 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  29 000a 33B1     		cbz	r3, .L7
  30 000c FFF7FEFF 		bl	rand
  31 0010 B0FBF4F3 		udiv	r3, r0, r4
  32 0014 03FB1400 		mls	r0, r3, r4, r0
  33 0018 38BD     		pop	{r3, r4, r5, pc}
  34              	.L7:
  35 001a 084B     		ldr	r3, .L8+4
  36 001c 9868     		ldr	r0, [r3, #8]
  37 001e FFF7FEFF 		bl	srand
  38 0022 0123     		movs	r3, #1
  39 0024 2B70     		strb	r3, [r5]
  40 0026 FFF7FEFF 		bl	rand
  41 002a B0FBF4F3 		udiv	r3, r0, r4
  42 002e 03FB1400 		mls	r0, r3, r4, r0
  43 0032 38BD     		pop	{r3, r4, r5, pc}
  44              	.L4:
  45 0034 0020     		movs	r0, #0
  46 0036 38BD     		pop	{r3, r4, r5, pc}
  47              	.L9:
  48              		.align	2
  49              	.L8:
  50 0038 00000000 		.word	.LANCHOR0
  51 003c 10E000E0 		.word	-536813552
  52              		.size	_Z6randoml, .-_Z6randoml
  53              		.section	.text._Z6randomll,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	_Z6randomll
  57              		.syntax unified
ARM GAS  /tmp/cczhtUVX.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu softvfp
  61              		.type	_Z6randomll, %function
  62              	_Z6randomll:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 8842     		cmp	r0, r1
  66 0002 10B5     		push	{r4, lr}
  67 0004 0446     		mov	r4, r0
  68 0006 03DA     		bge	.L11
  69 0008 081A     		subs	r0, r1, r0
  70 000a FFF7FEFF 		bl	_Z6randoml
  71 000e 0444     		add	r4, r4, r0
  72              	.L11:
  73 0010 2046     		mov	r0, r4
  74 0012 10BD     		pop	{r4, pc}
  75              		.size	_Z6randomll, .-_Z6randomll
  76              		.section	.text._Z3maplllll,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	_Z3maplllll
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu softvfp
  84              		.type	_Z3maplllll, %function
  85              	_Z3maplllll:
  86              		@ args = 4, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89 0000 10B4     		push	{r4}
  90 0002 019C     		ldr	r4, [sp, #4]
  91 0004 401A     		subs	r0, r0, r1
  92 0006 E41A     		subs	r4, r4, r3
  93 0008 04FB00F4 		mul	r4, r4, r0
  94 000c 521A     		subs	r2, r2, r1
  95 000e 94FBF2F0 		sdiv	r0, r4, r2
  96 0012 10BC     		pop	{r4}
  97 0014 1844     		add	r0, r0, r3
  98 0016 7047     		bx	lr
  99              		.size	_Z3maplllll, .-_Z3maplllll
 100              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 101              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 102              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 103              	_ZL28cpu_irq_prev_interrupt_state:
 104 0000 00       		.space	1
 105              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 106              		.align	2
 107              		.type	_ZL32cpu_irq_critical_section_counter, %object
 108              		.size	_ZL32cpu_irq_critical_section_counter, 4
 109              	_ZL32cpu_irq_critical_section_counter:
 110 0000 00000000 		.space	4
 111              		.section	.bss._ZZ6randomlE13isInitialised,"aw",%nobits
 112              		.set	.LANCHOR0,. + 0
 113              		.type	_ZZ6randomlE13isInitialised, %object
 114              		.size	_ZZ6randomlE13isInitialised, 1
ARM GAS  /tmp/cczhtUVX.s 			page 3


 115              	_ZZ6randomlE13isInitialised:
 116 0000 00       		.space	1
 117              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
