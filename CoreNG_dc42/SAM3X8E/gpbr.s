ARM GAS  /tmp/cctpLxDD.s 			page 1


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
  11              		.file	"gpbr.c"
  12              		.section	.text.gpbr_read,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	gpbr_read
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	gpbr_read, %function
  21              	gpbr_read:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 014B     		ldr	r3, .L2
  26 0002 53F82000 		ldr	r0, [r3, r0, lsl #2]
  27 0006 7047     		bx	lr
  28              	.L3:
  29              		.align	2
  30              	.L2:
  31 0008 901A0E40 		.word	1074666128
  32              		.size	gpbr_read, .-gpbr_read
  33              		.section	.text.gpbr_write,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	gpbr_write
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu softvfp
  41              		.type	gpbr_write, %function
  42              	gpbr_write:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 014B     		ldr	r3, .L5
  47 0002 43F82010 		str	r1, [r3, r0, lsl #2]
  48 0006 7047     		bx	lr
  49              	.L6:
  50              		.align	2
  51              	.L5:
  52 0008 901A0E40 		.word	1074666128
  53              		.size	gpbr_write, .-gpbr_write
  54              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  55              		.align	2
  56              		.type	cpu_irq_critical_section_counter, %object
  57              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/cctpLxDD.s 			page 2


  58              	cpu_irq_critical_section_counter:
  59 0000 00000000 		.space	4
  60              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  61              		.type	cpu_irq_prev_interrupt_state, %object
  62              		.size	cpu_irq_prev_interrupt_state, 1
  63              	cpu_irq_prev_interrupt_state:
  64 0000 00       		.space	1
  65              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
