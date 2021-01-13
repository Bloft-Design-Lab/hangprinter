ARM GAS  /tmp/cczPBqDM.s 			page 1


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
  14              		.section	.text._Z14watchdogEnablem,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z14watchdogEnablem
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z14watchdogEnablem, %function
  23              	_Z14watchdogEnablem:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 094B     		ldr	r3, .L5
  28 0002 0002     		lsls	r0, r0, #8
  29 0004 A3FB0030 		umull	r3, r0, r3, r0
  30 0008 8009     		lsrs	r0, r0, #6
  31 000a 0BD0     		beq	.L3
  32 000c 40F6FF73 		movw	r3, #4095
  33 0010 9842     		cmp	r0, r3
  34 0012 28BF     		it	cs
  35 0014 1846     		movcs	r0, r3
  36              	.L2:
  37 0016 83B2     		uxth	r3, r0
  38 0018 1A46     		mov	r2, r3
  39 001a 4FF40051 		mov	r1, #8192
  40 001e 0348     		ldr	r0, .L5+4
  41 0020 FFF7FEBF 		b	wdt_init
  42              	.L3:
  43 0024 0120     		movs	r0, #1
  44 0026 F6E7     		b	.L2
  45              	.L6:
  46              		.align	2
  47              	.L5:
  48 0028 D34D6210 		.word	274877907
  49 002c 50180E40 		.word	1074665552
  50              		.size	_Z14watchdogEnablem, .-_Z14watchdogEnablem
  51              		.section	.text._Z15watchdogDisablev,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_Z15watchdogDisablev
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cczPBqDM.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_Z15watchdogDisablev, %function
  60              	_Z15watchdogDisablev:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0148     		ldr	r0, .L8
  65 0002 FFF7FEBF 		b	wdt_disable
  66              	.L9:
  67 0006 00BF     		.align	2
  68              	.L8:
  69 0008 50180E40 		.word	1074665552
  70              		.size	_Z15watchdogDisablev, .-_Z15watchdogDisablev
  71              		.section	.text._Z13watchdogResetv,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_Z13watchdogResetv
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_Z13watchdogResetv, %function
  80              	_Z13watchdogResetv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0148     		ldr	r0, .L11
  85 0002 FFF7FEBF 		b	wdt_restart
  86              	.L12:
  87 0006 00BF     		.align	2
  88              	.L11:
  89 0008 50180E40 		.word	1074665552
  90              		.size	_Z13watchdogResetv, .-_Z13watchdogResetv
  91              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  92              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  93              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  94              	_ZL28cpu_irq_prev_interrupt_state:
  95 0000 00       		.space	1
  96              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  97              		.align	2
  98              		.type	_ZL32cpu_irq_critical_section_counter, %object
  99              		.size	_ZL32cpu_irq_critical_section_counter, 4
 100              	_ZL32cpu_irq_critical_section_counter:
 101 0000 00000000 		.space	4
 102              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
