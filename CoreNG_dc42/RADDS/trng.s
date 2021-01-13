ARM GAS  /tmp/ccgzSTsH.s 			page 1


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
  11              		.file	"trng.c"
  12              		.section	.text.trng_enable,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	trng_enable
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	trng_enable, %function
  21              	trng_enable:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 014B     		ldr	r3, .L2
  26 0002 0360     		str	r3, [r0]
  27 0004 7047     		bx	lr
  28              	.L3:
  29 0006 00BF     		.align	2
  30              	.L2:
  31 0008 01474E52 		.word	1380861697
  32              		.size	trng_enable, .-trng_enable
  33              		.section	.text.trng_disable,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	trng_disable
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu softvfp
  41              		.type	trng_disable, %function
  42              	trng_disable:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 014B     		ldr	r3, .L5
  47 0002 0360     		str	r3, [r0]
  48 0004 7047     		bx	lr
  49              	.L6:
  50 0006 00BF     		.align	2
  51              	.L5:
  52 0008 00474E52 		.word	1380861696
  53              		.size	trng_disable, .-trng_disable
  54              		.section	.text.trng_enable_interrupt,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	trng_enable_interrupt
ARM GAS  /tmp/ccgzSTsH.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu softvfp
  62              		.type	trng_enable_interrupt, %function
  63              	trng_enable_interrupt:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0123     		movs	r3, #1
  68 0002 0361     		str	r3, [r0, #16]
  69 0004 7047     		bx	lr
  70              		.size	trng_enable_interrupt, .-trng_enable_interrupt
  71 0006 00BF     		.section	.text.trng_disable_interrupt,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	trng_disable_interrupt
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	trng_disable_interrupt, %function
  80              	trng_disable_interrupt:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0123     		movs	r3, #1
  85 0002 4361     		str	r3, [r0, #20]
  86 0004 7047     		bx	lr
  87              		.size	trng_disable_interrupt, .-trng_disable_interrupt
  88 0006 00BF     		.section	.text.trng_get_interrupt_mask,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	trng_get_interrupt_mask
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu softvfp
  96              		.type	trng_get_interrupt_mask, %function
  97              	trng_get_interrupt_mask:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 8069     		ldr	r0, [r0, #24]
 102 0002 7047     		bx	lr
 103              		.size	trng_get_interrupt_mask, .-trng_get_interrupt_mask
 104              		.section	.text.trng_get_interrupt_status,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	trng_get_interrupt_status
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu softvfp
 112              		.type	trng_get_interrupt_status, %function
 113              	trng_get_interrupt_status:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccgzSTsH.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 C069     		ldr	r0, [r0, #28]
 118 0002 7047     		bx	lr
 119              		.size	trng_get_interrupt_status, .-trng_get_interrupt_status
 120              		.section	.text.trng_read_output_data,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	trng_read_output_data
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu softvfp
 128              		.type	trng_read_output_data, %function
 129              	trng_read_output_data:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 006D     		ldr	r0, [r0, #80]
 134 0002 7047     		bx	lr
 135              		.size	trng_read_output_data, .-trng_read_output_data
 136              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 137              		.align	2
 138              		.type	cpu_irq_critical_section_counter, %object
 139              		.size	cpu_irq_critical_section_counter, 4
 140              	cpu_irq_critical_section_counter:
 141 0000 00000000 		.space	4
 142              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 143              		.type	cpu_irq_prev_interrupt_state, %object
 144              		.size	cpu_irq_prev_interrupt_state, 1
 145              	cpu_irq_prev_interrupt_state:
 146 0000 00       		.space	1
 147              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
