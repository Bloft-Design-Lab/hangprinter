ARM GAS  /tmp/ccv4BkYA.s 			page 1


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
  13              		.file	"RestorePoint.cpp"
  14              		.section	.text._ZN12RestorePointC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN12RestorePointC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN12RestorePointC2Ev, %function
  23              	_ZN12RestorePointC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28 0002 0022     		movs	r2, #0
  29 0004 0346     		mov	r3, r0
  30 0006 00F12401 		add	r1, r0, #36
  31              	.L2:
  32 000a 43F8042B 		str	r2, [r3], #4	@ float
  33 000e 8B42     		cmp	r3, r1
  34 0010 FBD1     		bne	.L2
  35 0012 064C     		ldr	r4, .L6
  36 0014 4462     		str	r4, [r0, #36]	@ float
  37 0016 4FF0FF33 		mov	r3, #-1
  38 001a 0021     		movs	r1, #0
  39 001c 8262     		str	r2, [r0, #40]	@ float
  40 001e C262     		str	r2, [r0, #44]	@ float
  41 0020 0363     		str	r3, [r0, #48]
  42 0022 8363     		str	r3, [r0, #56]
  43 0024 8186     		strh	r1, [r0, #52]	@ movhi
  44 0026 5DF8044B 		ldr	r4, [sp], #4
  45 002a 7047     		bx	lr
  46              	.L7:
  47              		.align	2
  48              	.L6:
  49 002c 01004842 		.word	1112014849
  50              		.size	_ZN12RestorePointC2Ev, .-_ZN12RestorePointC2Ev
  51              		.global	_ZN12RestorePointC1Ev
  52              		.thumb_set _ZN12RestorePointC1Ev,_ZN12RestorePointC2Ev
  53              		.section	.text._ZN12RestorePoint4InitEv,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	_ZN12RestorePoint4InitEv
  57              		.syntax unified
ARM GAS  /tmp/ccv4BkYA.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu fpv4-sp-d16
  61              		.type	_ZN12RestorePoint4InitEv, %function
  62              	_ZN12RestorePoint4InitEv:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66 0000 10B4     		push	{r4}
  67 0002 0022     		movs	r2, #0
  68 0004 0346     		mov	r3, r0
  69 0006 00F12401 		add	r1, r0, #36
  70              	.L9:
  71 000a 43F8042B 		str	r2, [r3], #4	@ float
  72 000e 8B42     		cmp	r3, r1
  73 0010 FBD1     		bne	.L9
  74 0012 064C     		ldr	r4, .L12
  75 0014 4462     		str	r4, [r0, #36]	@ float
  76 0016 4FF0FF33 		mov	r3, #-1
  77 001a 0021     		movs	r1, #0
  78 001c 8262     		str	r2, [r0, #40]	@ float
  79 001e C262     		str	r2, [r0, #44]	@ float
  80 0020 0363     		str	r3, [r0, #48]
  81 0022 8363     		str	r3, [r0, #56]
  82 0024 8186     		strh	r1, [r0, #52]	@ movhi
  83 0026 5DF8044B 		ldr	r4, [sp], #4
  84 002a 7047     		bx	lr
  85              	.L13:
  86              		.align	2
  87              	.L12:
  88 002c 01004842 		.word	1112014849
  89              		.size	_ZN12RestorePoint4InitEv, .-_ZN12RestorePoint4InitEv
  90              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  91              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  92              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  93              	_ZL28cpu_irq_prev_interrupt_state:
  94 0000 00       		.space	1
  95              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  96              		.align	2
  97              		.type	_ZL32cpu_irq_critical_section_counter, %object
  98              		.size	_ZL32cpu_irq_critical_section_counter, 4
  99              	_ZL32cpu_irq_critical_section_counter:
 100 0000 00000000 		.space	4
 101              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
