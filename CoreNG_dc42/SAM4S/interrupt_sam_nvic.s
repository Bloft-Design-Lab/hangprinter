ARM GAS  /tmp/ccg3rBLZ.s 			page 1


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
  25 0000 0B4B     		ldr	r3, .L6
  26 0002 1A68     		ldr	r2, [r3]
  27 0004 22B9     		cbnz	r2, .L2
  28              		.syntax unified
  29              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  30 0006 EFF31081 		MRS r1, primask
  31              	@ 0 "" 2
  32              		.thumb
  33              		.syntax unified
  34 000a 29B1     		cbz	r1, .L5
  35 000c 0949     		ldr	r1, .L6+4
  36 000e 0A70     		strb	r2, [r1]
  37              	.L2:
  38 0010 1A68     		ldr	r2, [r3]
  39 0012 0132     		adds	r2, r2, #1
  40 0014 1A60     		str	r2, [r3]
  41 0016 7047     		bx	lr
  42              	.L5:
  43              		.syntax unified
  44              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  45 0018 72B6     		cpsid i
  46              	@ 0 "" 2
  47              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  48 001a BFF35F8F 		dmb
  49              	@ 0 "" 2
  50              		.thumb
  51              		.syntax unified
  52 001e 0648     		ldr	r0, .L6+8
  53 0020 044A     		ldr	r2, .L6+4
  54 0022 0170     		strb	r1, [r0]
  55 0024 0121     		movs	r1, #1
  56 0026 1170     		strb	r1, [r2]
  57 0028 1A68     		ldr	r2, [r3]
ARM GAS  /tmp/ccg3rBLZ.s 			page 2


  58 002a 0132     		adds	r2, r2, #1
  59 002c 1A60     		str	r2, [r3]
  60 002e 7047     		bx	lr
  61              	.L7:
  62              		.align	2
  63              	.L6:
  64 0030 00000000 		.word	.LANCHOR0
  65 0034 00000000 		.word	.LANCHOR2
  66 0038 00000000 		.word	.LANCHOR1
  67              		.size	cpu_irq_enter_critical, .-cpu_irq_enter_critical
  68              		.section	.text.cpu_irq_leave_critical,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	cpu_irq_leave_critical
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	cpu_irq_leave_critical, %function
  77              	cpu_irq_leave_critical:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 074B     		ldr	r3, .L13
  82 0002 1A68     		ldr	r2, [r3]
  83 0004 013A     		subs	r2, r2, #1
  84 0006 1A60     		str	r2, [r3]
  85 0008 1B68     		ldr	r3, [r3]
  86 000a 43B9     		cbnz	r3, .L8
  87 000c 054B     		ldr	r3, .L13+4
  88 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
  89 0010 2BB1     		cbz	r3, .L8
  90 0012 054B     		ldr	r3, .L13+8
  91 0014 0122     		movs	r2, #1
  92 0016 1A70     		strb	r2, [r3]
  93              		.syntax unified
  94              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  95 0018 BFF35F8F 		dmb
  96              	@ 0 "" 2
  97              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  98 001c 62B6     		cpsie i
  99              	@ 0 "" 2
 100              		.thumb
 101              		.syntax unified
 102              	.L8:
 103 001e 7047     		bx	lr
 104              	.L14:
 105              		.align	2
 106              	.L13:
 107 0020 00000000 		.word	.LANCHOR0
 108 0024 00000000 		.word	.LANCHOR2
 109 0028 00000000 		.word	.LANCHOR1
 110              		.size	cpu_irq_leave_critical, .-cpu_irq_leave_critical
 111              		.global	g_interrupt_enabled
 112              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 113              		.align	2
 114              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccg3rBLZ.s 			page 3


 115              		.type	cpu_irq_critical_section_counter, %object
 116              		.size	cpu_irq_critical_section_counter, 4
 117              	cpu_irq_critical_section_counter:
 118 0000 00000000 		.space	4
 119              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 120              		.set	.LANCHOR2,. + 0
 121              		.type	cpu_irq_prev_interrupt_state, %object
 122              		.size	cpu_irq_prev_interrupt_state, 1
 123              	cpu_irq_prev_interrupt_state:
 124 0000 00       		.space	1
 125              		.section	.data.g_interrupt_enabled,"aw",%progbits
 126              		.set	.LANCHOR1,. + 0
 127              		.type	g_interrupt_enabled, %object
 128              		.size	g_interrupt_enabled, 1
 129              	g_interrupt_enabled:
 130 0000 01       		.byte	1
 131              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
