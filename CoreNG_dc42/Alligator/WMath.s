ARM GAS  /tmp/ccbSFzhC.s 			page 1


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
  11              		.file	"WMath.cpp"
  12              		.section	.text.trueRandom,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	trueRandom
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	trueRandom, %function
  21              	trueRandom:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 024A     		ldr	r2, .L6
  26              	.L2:
  27 0002 D369     		ldr	r3, [r2, #28]
  28 0004 DB07     		lsls	r3, r3, #31
  29 0006 FCD5     		bpl	.L2
  30 0008 106D     		ldr	r0, [r2, #80]
  31 000a 7047     		bx	lr
  32              	.L7:
  33              		.align	2
  34              	.L6:
  35 000c 00C00B40 		.word	1074511872
  36              		.size	trueRandom, .-trueRandom
  37              		.section	.text._Z6randoml,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_Z6randoml
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	_Z6randoml, %function
  46              	_Z6randoml:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 0028     		cmp	r0, #0
  51 0002 09DD     		ble	.L11
  52 0004 054A     		ldr	r2, .L15
  53              	.L13:
  54 0006 D369     		ldr	r3, [r2, #28]
  55 0008 DB07     		lsls	r3, r3, #31
  56 000a FCD5     		bpl	.L13
  57 000c 126D     		ldr	r2, [r2, #80]
ARM GAS  /tmp/ccbSFzhC.s 			page 2


  58 000e B2FBF0F3 		udiv	r3, r2, r0
  59 0012 00FB1320 		mls	r0, r0, r3, r2
  60 0016 7047     		bx	lr
  61              	.L11:
  62 0018 0020     		movs	r0, #0
  63 001a 7047     		bx	lr
  64              	.L16:
  65              		.align	2
  66              	.L15:
  67 001c 00C00B40 		.word	1074511872
  68              		.size	_Z6randoml, .-_Z6randoml
  69              		.section	.text._Z6randomll,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_Z6randomll
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu softvfp
  77              		.type	_Z6randomll, %function
  78              	_Z6randomll:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 8842     		cmp	r0, r1
  83 0002 0ADA     		bge	.L17
  84 0004 054A     		ldr	r2, .L23
  85 0006 091A     		subs	r1, r1, r0
  86              	.L19:
  87 0008 D369     		ldr	r3, [r2, #28]
  88 000a DB07     		lsls	r3, r3, #31
  89 000c FCD5     		bpl	.L19
  90 000e 126D     		ldr	r2, [r2, #80]
  91 0010 B2FBF1F3 		udiv	r3, r2, r1
  92 0014 01FB1321 		mls	r1, r1, r3, r2
  93 0018 0844     		add	r0, r0, r1
  94              	.L17:
  95 001a 7047     		bx	lr
  96              	.L24:
  97              		.align	2
  98              	.L23:
  99 001c 00C00B40 		.word	1074511872
 100              		.size	_Z6randomll, .-_Z6randomll
 101              		.section	.text._Z3maplllll,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_Z3maplllll
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu softvfp
 109              		.type	_Z3maplllll, %function
 110              	_Z3maplllll:
 111              		@ args = 4, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 10B4     		push	{r4}
ARM GAS  /tmp/ccbSFzhC.s 			page 3


 115 0002 019C     		ldr	r4, [sp, #4]
 116 0004 401A     		subs	r0, r0, r1
 117 0006 E41A     		subs	r4, r4, r3
 118 0008 04FB00F0 		mul	r0, r4, r0
 119 000c 521A     		subs	r2, r2, r1
 120 000e 90FBF2F0 		sdiv	r0, r0, r2
 121 0012 10BC     		pop	{r4}
 122 0014 1844     		add	r0, r0, r3
 123 0016 7047     		bx	lr
 124              		.size	_Z3maplllll, .-_Z3maplllll
 125              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 126              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 127              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 128              	_ZL28cpu_irq_prev_interrupt_state:
 129 0000 00       		.space	1
 130              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 131              		.align	2
 132              		.type	_ZL32cpu_irq_critical_section_counter, %object
 133              		.size	_ZL32cpu_irq_critical_section_counter, 4
 134              	_ZL32cpu_irq_critical_section_counter:
 135 0000 00000000 		.space	4
 136              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
