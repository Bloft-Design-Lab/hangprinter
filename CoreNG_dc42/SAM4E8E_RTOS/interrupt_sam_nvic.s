ARM GAS  /tmp/ccB3d2Zp.s 			page 1


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
  13              		.file	"interrupt_sam_nvic.c"
  14              		.section	.text.cpu_irq_enter_critical,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	cpu_irq_enter_critical
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	cpu_irq_enter_critical, %function
  23              	cpu_irq_enter_critical:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0B4B     		ldr	r3, .L6
  28 0002 1A68     		ldr	r2, [r3]
  29 0004 22B9     		cbnz	r2, .L2
  30              		.syntax unified
  31              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  32 0006 EFF31081 		MRS r1, primask
  33              	@ 0 "" 2
  34              		.thumb
  35              		.syntax unified
  36 000a 29B1     		cbz	r1, .L5
  37 000c 0949     		ldr	r1, .L6+4
  38 000e 0A70     		strb	r2, [r1]
  39              	.L2:
  40 0010 1A68     		ldr	r2, [r3]
  41 0012 0132     		adds	r2, r2, #1
  42 0014 1A60     		str	r2, [r3]
  43 0016 7047     		bx	lr
  44              	.L5:
  45              		.syntax unified
  46              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  47 0018 72B6     		cpsid i
  48              	@ 0 "" 2
  49              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  50 001a BFF35F8F 		dmb
  51              	@ 0 "" 2
  52              		.thumb
  53              		.syntax unified
  54 001e 0648     		ldr	r0, .L6+8
  55 0020 044A     		ldr	r2, .L6+4
  56 0022 0170     		strb	r1, [r0]
  57 0024 0121     		movs	r1, #1
ARM GAS  /tmp/ccB3d2Zp.s 			page 2


  58 0026 1170     		strb	r1, [r2]
  59 0028 1A68     		ldr	r2, [r3]
  60 002a 0132     		adds	r2, r2, #1
  61 002c 1A60     		str	r2, [r3]
  62 002e 7047     		bx	lr
  63              	.L7:
  64              		.align	2
  65              	.L6:
  66 0030 00000000 		.word	.LANCHOR0
  67 0034 00000000 		.word	.LANCHOR2
  68 0038 00000000 		.word	.LANCHOR1
  69              		.size	cpu_irq_enter_critical, .-cpu_irq_enter_critical
  70              		.section	.text.cpu_irq_leave_critical,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	cpu_irq_leave_critical
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	cpu_irq_leave_critical, %function
  79              	cpu_irq_leave_critical:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 074B     		ldr	r3, .L13
  84 0002 1A68     		ldr	r2, [r3]
  85 0004 013A     		subs	r2, r2, #1
  86 0006 1A60     		str	r2, [r3]
  87 0008 1B68     		ldr	r3, [r3]
  88 000a 43B9     		cbnz	r3, .L8
  89 000c 054B     		ldr	r3, .L13+4
  90 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
  91 0010 2BB1     		cbz	r3, .L8
  92 0012 054B     		ldr	r3, .L13+8
  93 0014 0122     		movs	r2, #1
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
 104              	.L8:
 105 001e 7047     		bx	lr
 106              	.L14:
 107              		.align	2
 108              	.L13:
 109 0020 00000000 		.word	.LANCHOR0
 110 0024 00000000 		.word	.LANCHOR2
 111 0028 00000000 		.word	.LANCHOR1
 112              		.size	cpu_irq_leave_critical, .-cpu_irq_leave_critical
 113              		.global	g_interrupt_enabled
 114              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  /tmp/ccB3d2Zp.s 			page 3


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
