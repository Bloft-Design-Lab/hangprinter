ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQqL5u.s 			page 1


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
  14              		.text
  15              		.section	.text.gpbr_read,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	gpbr_read
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	gpbr_read, %function
  24              	gpbr_read:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 014B     		ldr	r3, .L3
  29 0002 53F82000 		ldr	r0, [r3, r0, lsl #2]
  30 0006 7047     		bx	lr
  31              	.L4:
  32              		.align	2
  33              	.L3:
  34 0008 90180E40 		.word	1074665616
  35              		.size	gpbr_read, .-gpbr_read
  36              		.section	.text.gpbr_write,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	gpbr_write
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu fpv4-sp-d16
  44              		.type	gpbr_write, %function
  45              	gpbr_write:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48              		@ link register save eliminated.
  49 0000 014B     		ldr	r3, .L6
  50 0002 43F82010 		str	r1, [r3, r0, lsl #2]
  51 0006 7047     		bx	lr
  52              	.L7:
  53              		.align	2
  54              	.L6:
  55 0008 90180E40 		.word	1074665616
  56              		.size	gpbr_write, .-gpbr_write
  57              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQqL5u.s 			page 2


  58              		.align	2
  59              		.type	cpu_irq_critical_section_counter, %object
  60              		.size	cpu_irq_critical_section_counter, 4
  61              	cpu_irq_critical_section_counter:
  62 0000 00000000 		.space	4
  63              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  64              		.type	cpu_irq_prev_interrupt_state, %object
  65              		.size	cpu_irq_prev_interrupt_state, 1
  66              	cpu_irq_prev_interrupt_state:
  67 0000 00       		.space	1
  68              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
