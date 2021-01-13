ARM GAS  /tmp/ccuS9OvL.s 			page 1


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
  11              		.file	"interrupt_sam_nvic.c"
  12              		.section	.text.cpu_irq_enter_critical,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	cpu_irq_enter_critical
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	cpu_irq_enter_critical, %function
  21              	cpu_irq_enter_critical:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0C4B     		ldr	r3, .L10
  26 0002 1A68     		ldr	r2, [r3]
  27 0004 22B9     		cbnz	r2, .L5
  28              		.syntax unified
  29              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  30 0006 EFF31081 		MRS r1, primask
  31              	@ 0 "" 2
  32              		.thumb
  33              		.syntax unified
  34 000a 29B1     		cbz	r1, .L9
  35 000c 0A49     		ldr	r1, .L10+4
  36 000e 0A70     		strb	r2, [r1]
  37              	.L5:
  38 0010 1A68     		ldr	r2, [r3]
  39 0012 0132     		adds	r2, r2, #1
  40 0014 1A60     		str	r2, [r3]
  41 0016 7047     		bx	lr
  42              	.L9:
  43 0018 10B4     		push	{r4}
  44              		.syntax unified
  45              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  46 001a 72B6     		cpsid i
  47              	@ 0 "" 2
  48              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  49 001c BFF35F8F 		dmb
  50              	@ 0 "" 2
  51              		.thumb
  52              		.syntax unified
  53 0020 0120     		movs	r0, #1
  54 0022 064C     		ldr	r4, .L10+8
  55 0024 044A     		ldr	r2, .L10+4
  56 0026 2170     		strb	r1, [r4]
  57 0028 1070     		strb	r0, [r2]
ARM GAS  /tmp/ccuS9OvL.s 			page 2


  58 002a 1A68     		ldr	r2, [r3]
  59 002c 10BC     		pop	{r4}
  60 002e 0132     		adds	r2, r2, #1
  61 0030 1A60     		str	r2, [r3]
  62 0032 7047     		bx	lr
  63              	.L11:
  64              		.align	2
  65              	.L10:
  66 0034 00000000 		.word	.LANCHOR0
  67 0038 00000000 		.word	.LANCHOR2
  68 003c 00000000 		.word	.LANCHOR1
  69              		.size	cpu_irq_enter_critical, .-cpu_irq_enter_critical
  70              		.section	.text.cpu_irq_leave_critical,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	cpu_irq_leave_critical
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
  78              		.type	cpu_irq_leave_critical, %function
  79              	cpu_irq_leave_critical:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 074B     		ldr	r3, .L17
  84 0002 1A68     		ldr	r2, [r3]
  85 0004 013A     		subs	r2, r2, #1
  86 0006 1A60     		str	r2, [r3]
  87 0008 1B68     		ldr	r3, [r3]
  88 000a 43B9     		cbnz	r3, .L12
  89 000c 054B     		ldr	r3, .L17+4
  90 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
  91 0010 2BB1     		cbz	r3, .L12
  92 0012 0122     		movs	r2, #1
  93 0014 044B     		ldr	r3, .L17+8
  94 0016 1A70     		strb	r2, [r3]
  95              		.syntax unified
  96              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  97 0018 BFF35F8F 		dmb
  98              	@ 0 "" 2
  99              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 100 001c 62B6     		cpsie i
 101              	@ 0 "" 2
 102              		.thumb
 103              		.syntax unified
 104              	.L12:
 105 001e 7047     		bx	lr
 106              	.L18:
 107              		.align	2
 108              	.L17:
 109 0020 00000000 		.word	.LANCHOR0
 110 0024 00000000 		.word	.LANCHOR2
 111 0028 00000000 		.word	.LANCHOR1
 112              		.size	cpu_irq_leave_critical, .-cpu_irq_leave_critical
 113              		.global	g_interrupt_enabled
 114              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  /tmp/ccuS9OvL.s 			page 3


 115              		.align	2
 116              		.set	.LANCHOR0,. + 0
 117              		.type	cpu_irq_critical_section_counter, %object
 118              		.size	cpu_irq_critical_section_counter, 4
 119              	cpu_irq_critical_section_counter:
 120 0000 00000000 		.space	4
 121              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 122              		.set	.LANCHOR2,. + 0
 123              		.type	cpu_irq_prev_interrupt_state, %object
 124              		.size	cpu_irq_prev_interrupt_state, 1
 125              	cpu_irq_prev_interrupt_state:
 126 0000 00       		.space	1
 127              		.section	.data.g_interrupt_enabled,"aw",%progbits
 128              		.set	.LANCHOR1,. + 0
 129              		.type	g_interrupt_enabled, %object
 130              		.size	g_interrupt_enabled, 1
 131              	g_interrupt_enabled:
 132 0000 01       		.byte	1
 133              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
