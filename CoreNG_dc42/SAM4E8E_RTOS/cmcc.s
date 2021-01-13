ARM GAS  /tmp/ccHumWud.s 			page 1


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
  13              		.file	"cmcc.c"
  14              		.section	.text.cmcc_get_config_defaults,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	cmcc_get_config_defaults
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	cmcc_get_config_defaults, %function
  23              	cmcc_get_config_defaults:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0122     		movs	r2, #1
  28 0002 0223     		movs	r3, #2
  29 0004 0270     		strb	r2, [r0]
  30 0006 4370     		strb	r3, [r0, #1]
  31 0008 7047     		bx	lr
  32              		.size	cmcc_get_config_defaults, .-cmcc_get_config_defaults
  33 000a 00BF     		.section	.text.cmcc_init,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	cmcc_init
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	cmcc_init, %function
  42              	cmcc_init:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
  47 0002 2BB1     		cbz	r3, .L3
  48 0004 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
  49 0006 8362     		str	r3, [r0, #40]
  50 0008 C36A     		ldr	r3, [r0, #44]
  51 000a 43F00103 		orr	r3, r3, #1
  52 000e C362     		str	r3, [r0, #44]
  53              	.L3:
  54 0010 0120     		movs	r0, #1
  55 0012 7047     		bx	lr
  56              		.size	cmcc_init, .-cmcc_init
  57              		.section	.text.cmcc_enable,"ax",%progbits
ARM GAS  /tmp/ccHumWud.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	cmcc_enable
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	cmcc_enable, %function
  66              	cmcc_enable:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 C368     		ldr	r3, [r0, #12]
  71 0002 012B     		cmp	r3, #1
  72 0004 03D0     		beq	.L8
  73 0006 8368     		ldr	r3, [r0, #8]
  74 0008 43F00103 		orr	r3, r3, #1
  75 000c 8360     		str	r3, [r0, #8]
  76              	.L8:
  77 000e 7047     		bx	lr
  78              		.size	cmcc_enable, .-cmcc_enable
  79              		.section	.text.cmcc_invalidate_line,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	cmcc_invalidate_line
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  87              		.type	cmcc_invalidate_line, %function
  88              	cmcc_invalidate_line:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 0023     		movs	r3, #0
  93 0002 8360     		str	r3, [r0, #8]
  94              	.L14:
  95 0004 C368     		ldr	r3, [r0, #12]
  96 0006 DB07     		lsls	r3, r3, #31
  97 0008 FCD4     		bmi	.L14
  98 000a 1201     		lsls	r2, r2, #4
  99 000c 42EA8171 		orr	r1, r2, r1, lsl #30
 100 0010 4162     		str	r1, [r0, #36]
 101 0012 C368     		ldr	r3, [r0, #12]
 102 0014 012B     		cmp	r3, #1
 103 0016 03D0     		beq	.L13
 104 0018 8368     		ldr	r3, [r0, #8]
 105 001a 43F00103 		orr	r3, r3, #1
 106 001e 8360     		str	r3, [r0, #8]
 107              	.L13:
 108 0020 7047     		bx	lr
 109              		.size	cmcc_invalidate_line, .-cmcc_invalidate_line
 110 0022 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 111              		.align	2
 112              		.type	cpu_irq_critical_section_counter, %object
 113              		.size	cpu_irq_critical_section_counter, 4
 114              	cpu_irq_critical_section_counter:
ARM GAS  /tmp/ccHumWud.s 			page 3


 115 0000 00000000 		.space	4
 116              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 117              		.type	cpu_irq_prev_interrupt_state, %object
 118              		.size	cpu_irq_prev_interrupt_state, 1
 119              	cpu_irq_prev_interrupt_state:
 120 0000 00       		.space	1
 121              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
