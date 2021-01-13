ARM GAS  /tmp/ccBJhqBT.s 			page 1


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
  13              		.file	"gpbr.c"
  14              		.section	.text.gpbr_read,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	gpbr_read
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	gpbr_read, %function
  23              	gpbr_read:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 014B     		ldr	r3, .L2
  28 0002 53F82000 		ldr	r0, [r3, r0, lsl #2]
  29 0006 7047     		bx	lr
  30              	.L3:
  31              		.align	2
  32              	.L2:
  33 0008 90180E40 		.word	1074665616
  34              		.size	gpbr_read, .-gpbr_read
  35              		.section	.text.gpbr_write,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	gpbr_write
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	gpbr_write, %function
  44              	gpbr_write:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 014B     		ldr	r3, .L5
  49 0002 43F82010 		str	r1, [r3, r0, lsl #2]
  50 0006 7047     		bx	lr
  51              	.L6:
  52              		.align	2
  53              	.L5:
  54 0008 90180E40 		.word	1074665616
  55              		.size	gpbr_write, .-gpbr_write
  56              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  57              		.align	2
ARM GAS  /tmp/ccBJhqBT.s 			page 2


  58              		.type	cpu_irq_critical_section_counter, %object
  59              		.size	cpu_irq_critical_section_counter, 4
  60              	cpu_irq_critical_section_counter:
  61 0000 00000000 		.space	4
  62              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  63              		.type	cpu_irq_prev_interrupt_state, %object
  64              		.size	cpu_irq_prev_interrupt_state, 1
  65              	cpu_irq_prev_interrupt_state:
  66 0000 00       		.space	1
  67              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
