ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRQDRHf.s 			page 1


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
  13              		.file	"watchdog.cpp"
  14              		.text
  15              		.section	.text._Z14watchdogEnablem,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z14watchdogEnablem
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z14watchdogEnablem, %function
  24              	_Z14watchdogEnablem:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0C4B     		ldr	r3, .L5
  29 0002 0002     		lsls	r0, r0, #8
  30 0004 A3FB0030 		umull	r3, r0, r3, r0
  31 0008 8009     		lsrs	r0, r0, #6
  32 000a 0BD0     		beq	.L3
  33 000c 40F6FF73 		movw	r3, #4095
  34 0010 9842     		cmp	r0, r3
  35 0012 28BF     		it	cs
  36 0014 1846     		movcs	r0, r3
  37 0016 83B2     		uxth	r3, r0
  38 0018 1A46     		mov	r2, r3
  39 001a 4FF40051 		mov	r1, #8192
  40 001e 0648     		ldr	r0, .L5+4
  41 0020 FFF7FEBF 		b	wdt_init
  42              	.L3:
  43 0024 0123     		movs	r3, #1
  44 0026 1A46     		mov	r2, r3
  45 0028 4FF40051 		mov	r1, #8192
  46 002c 0248     		ldr	r0, .L5+4
  47 002e FFF7FEBF 		b	wdt_init
  48              	.L6:
  49 0032 00BF     		.align	2
  50              	.L5:
  51 0034 D34D6210 		.word	274877907
  52 0038 50180E40 		.word	1074665552
  53              		.size	_Z14watchdogEnablem, .-_Z14watchdogEnablem
  54              		.section	.text._Z15watchdogDisablev,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	_Z15watchdogDisablev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccRQDRHf.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	_Z15watchdogDisablev, %function
  63              	_Z15watchdogDisablev:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0148     		ldr	r0, .L8
  68 0002 FFF7FEBF 		b	wdt_disable
  69              	.L9:
  70 0006 00BF     		.align	2
  71              	.L8:
  72 0008 50180E40 		.word	1074665552
  73              		.size	_Z15watchdogDisablev, .-_Z15watchdogDisablev
  74              		.section	.text._Z13watchdogResetv,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_Z13watchdogResetv
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	_Z13watchdogResetv, %function
  83              	_Z13watchdogResetv:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87 0000 0148     		ldr	r0, .L11
  88 0002 FFF7FEBF 		b	wdt_restart
  89              	.L12:
  90 0006 00BF     		.align	2
  91              	.L11:
  92 0008 50180E40 		.word	1074665552
  93              		.size	_Z13watchdogResetv, .-_Z13watchdogResetv
  94              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  95              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  96              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  97              	_ZL28cpu_irq_prev_interrupt_state:
  98 0000 00       		.space	1
  99              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 100              		.align	2
 101              		.type	_ZL32cpu_irq_critical_section_counter, %object
 102              		.size	_ZL32cpu_irq_critical_section_counter, 4
 103              	_ZL32cpu_irq_critical_section_counter:
 104 0000 00000000 		.space	4
 105              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
