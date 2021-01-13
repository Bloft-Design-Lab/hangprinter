ARM GAS  /tmp/ccjkg0a4.s 			page 1


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
  11              		.file	"watchdog.cpp"
  12              		.section	.text._Z14watchdogEnablem,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z14watchdogEnablem
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z14watchdogEnablem, %function
  21              	_Z14watchdogEnablem:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 094B     		ldr	r3, .L5
  26 0002 0002     		lsls	r0, r0, #8
  27 0004 A3FB0030 		umull	r3, r0, r3, r0
  28 0008 8009     		lsrs	r0, r0, #6
  29 000a 0BD0     		beq	.L3
  30 000c 40F6FF73 		movw	r3, #4095
  31 0010 9842     		cmp	r0, r3
  32 0012 28BF     		it	cs
  33 0014 1846     		movcs	r0, r3
  34              	.L2:
  35 0016 83B2     		uxth	r3, r0
  36 0018 1A46     		mov	r2, r3
  37 001a 4FF40051 		mov	r1, #8192
  38 001e 0348     		ldr	r0, .L5+4
  39 0020 FFF7FEBF 		b	wdt_init
  40              	.L3:
  41 0024 0120     		movs	r0, #1
  42 0026 F6E7     		b	.L2
  43              	.L6:
  44              		.align	2
  45              	.L5:
  46 0028 D34D6210 		.word	274877907
  47 002c 50140E40 		.word	1074664528
  48              		.size	_Z14watchdogEnablem, .-_Z14watchdogEnablem
  49              		.section	.text._Z15watchdogDisablev,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_Z15watchdogDisablev
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	_Z15watchdogDisablev, %function
ARM GAS  /tmp/ccjkg0a4.s 			page 2


  58              	_Z15watchdogDisablev:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0148     		ldr	r0, .L8
  63 0002 FFF7FEBF 		b	wdt_disable
  64              	.L9:
  65 0006 00BF     		.align	2
  66              	.L8:
  67 0008 50140E40 		.word	1074664528
  68              		.size	_Z15watchdogDisablev, .-_Z15watchdogDisablev
  69              		.section	.text._Z13watchdogResetv,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_Z13watchdogResetv
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu softvfp
  77              		.type	_Z13watchdogResetv, %function
  78              	_Z13watchdogResetv:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 0148     		ldr	r0, .L11
  83 0002 FFF7FEBF 		b	wdt_restart
  84              	.L12:
  85 0006 00BF     		.align	2
  86              	.L11:
  87 0008 50140E40 		.word	1074664528
  88              		.size	_Z13watchdogResetv, .-_Z13watchdogResetv
  89              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  90              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  91              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  92              	_ZL28cpu_irq_prev_interrupt_state:
  93 0000 00       		.space	1
  94              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  95              		.align	2
  96              		.type	_ZL32cpu_irq_critical_section_counter, %object
  97              		.size	_ZL32cpu_irq_critical_section_counter, 4
  98              	_ZL32cpu_irq_critical_section_counter:
  99 0000 00000000 		.space	4
 100              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
