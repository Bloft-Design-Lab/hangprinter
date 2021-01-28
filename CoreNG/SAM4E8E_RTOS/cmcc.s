ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpJjdfI.s 			page 1


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
  14              		.text
  15              		.section	.text.cmcc_get_config_defaults,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	cmcc_get_config_defaults
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	cmcc_get_config_defaults, %function
  24              	cmcc_get_config_defaults:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0122     		movs	r2, #1
  29 0002 0223     		movs	r3, #2
  30 0004 0270     		strb	r2, [r0]
  31 0006 4370     		strb	r3, [r0, #1]
  32 0008 7047     		bx	lr
  33              		.size	cmcc_get_config_defaults, .-cmcc_get_config_defaults
  34 000a 00BF     		.section	.text.cmcc_init,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	cmcc_init
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	cmcc_init, %function
  43              	cmcc_init:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
  48 0002 2BB1     		cbz	r3, .L4
  49 0004 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
  50 0006 8362     		str	r3, [r0, #40]
  51 0008 C36A     		ldr	r3, [r0, #44]
  52 000a 43F00103 		orr	r3, r3, #1
  53 000e C362     		str	r3, [r0, #44]
  54              	.L4:
  55 0010 0120     		movs	r0, #1
  56 0012 7047     		bx	lr
  57              		.size	cmcc_init, .-cmcc_init
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpJjdfI.s 			page 2


  58              		.section	.text.cmcc_enable,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	cmcc_enable
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	cmcc_enable, %function
  67              	cmcc_enable:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 C368     		ldr	r3, [r0, #12]
  72 0002 012B     		cmp	r3, #1
  73 0004 03D0     		beq	.L8
  74 0006 8368     		ldr	r3, [r0, #8]
  75 0008 43F00103 		orr	r3, r3, #1
  76 000c 8360     		str	r3, [r0, #8]
  77              	.L8:
  78 000e 7047     		bx	lr
  79              		.size	cmcc_enable, .-cmcc_enable
  80              		.section	.text.cmcc_invalidate_line,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	cmcc_invalidate_line
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	cmcc_invalidate_line, %function
  89              	cmcc_invalidate_line:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 0023     		movs	r3, #0
  94 0002 8360     		str	r3, [r0, #8]
  95              	.L14:
  96 0004 C368     		ldr	r3, [r0, #12]
  97 0006 DB07     		lsls	r3, r3, #31
  98 0008 FCD4     		bmi	.L14
  99 000a 1201     		lsls	r2, r2, #4
 100 000c 42EA8171 		orr	r1, r2, r1, lsl #30
 101 0010 4162     		str	r1, [r0, #36]
 102 0012 C368     		ldr	r3, [r0, #12]
 103 0014 012B     		cmp	r3, #1
 104 0016 03D0     		beq	.L13
 105 0018 8368     		ldr	r3, [r0, #8]
 106 001a 43F00103 		orr	r3, r3, #1
 107 001e 8360     		str	r3, [r0, #8]
 108              	.L13:
 109 0020 7047     		bx	lr
 110              		.size	cmcc_invalidate_line, .-cmcc_invalidate_line
 111 0022 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 112              		.align	2
 113              		.type	cpu_irq_critical_section_counter, %object
 114              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpJjdfI.s 			page 3


 115              	cpu_irq_critical_section_counter:
 116 0000 00000000 		.space	4
 117              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 118              		.type	cpu_irq_prev_interrupt_state, %object
 119              		.size	cpu_irq_prev_interrupt_state, 1
 120              	cpu_irq_prev_interrupt_state:
 121 0000 00       		.space	1
 122              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
