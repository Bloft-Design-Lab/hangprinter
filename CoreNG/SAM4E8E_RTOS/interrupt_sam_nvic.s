ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccP81qR3.s 			page 1


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
  14              		.text
  15              		.section	.text.cpu_irq_enter_critical,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	cpu_irq_enter_critical
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	cpu_irq_enter_critical, %function
  24              	cpu_irq_enter_critical:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0B4B     		ldr	r3, .L6
  29 0002 1A68     		ldr	r2, [r3]
  30 0004 22B9     		cbnz	r2, .L2
  31              		.syntax unified
  32              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  33 0006 EFF31081 		MRS r1, primask
  34              	@ 0 "" 2
  35              		.thumb
  36              		.syntax unified
  37 000a 29B1     		cbz	r1, .L5
  38 000c 0949     		ldr	r1, .L6+4
  39 000e 0A70     		strb	r2, [r1]
  40              	.L2:
  41 0010 1A68     		ldr	r2, [r3]
  42 0012 0132     		adds	r2, r2, #1
  43 0014 1A60     		str	r2, [r3]
  44 0016 7047     		bx	lr
  45              	.L5:
  46              		.syntax unified
  47              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  48 0018 72B6     		cpsid i
  49              	@ 0 "" 2
  50              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  51 001a BFF35F8F 		dmb
  52              	@ 0 "" 2
  53              		.thumb
  54              		.syntax unified
  55 001e 0648     		ldr	r0, .L6+8
  56 0020 044A     		ldr	r2, .L6+4
  57 0022 0170     		strb	r1, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccP81qR3.s 			page 2


  58 0024 0121     		movs	r1, #1
  59 0026 1170     		strb	r1, [r2]
  60 0028 1A68     		ldr	r2, [r3]
  61 002a 0132     		adds	r2, r2, #1
  62 002c 1A60     		str	r2, [r3]
  63 002e 7047     		bx	lr
  64              	.L7:
  65              		.align	2
  66              	.L6:
  67 0030 00000000 		.word	.LANCHOR0
  68 0034 00000000 		.word	.LANCHOR2
  69 0038 00000000 		.word	.LANCHOR1
  70              		.size	cpu_irq_enter_critical, .-cpu_irq_enter_critical
  71              		.section	.text.cpu_irq_leave_critical,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	cpu_irq_leave_critical
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	cpu_irq_leave_critical, %function
  80              	cpu_irq_leave_critical:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 074B     		ldr	r3, .L13
  85 0002 1A68     		ldr	r2, [r3]
  86 0004 013A     		subs	r2, r2, #1
  87 0006 1A60     		str	r2, [r3]
  88 0008 1B68     		ldr	r3, [r3]
  89 000a 43B9     		cbnz	r3, .L8
  90 000c 054B     		ldr	r3, .L13+4
  91 000e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
  92 0010 2BB1     		cbz	r3, .L8
  93 0012 054B     		ldr	r3, .L13+8
  94 0014 0122     		movs	r2, #1
  95 0016 1A70     		strb	r2, [r3]
  96              		.syntax unified
  97              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  98 0018 BFF35F8F 		dmb
  99              	@ 0 "" 2
 100              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 101 001c 62B6     		cpsie i
 102              	@ 0 "" 2
 103              		.thumb
 104              		.syntax unified
 105              	.L8:
 106 001e 7047     		bx	lr
 107              	.L14:
 108              		.align	2
 109              	.L13:
 110 0020 00000000 		.word	.LANCHOR0
 111 0024 00000000 		.word	.LANCHOR2
 112 0028 00000000 		.word	.LANCHOR1
 113              		.size	cpu_irq_leave_critical, .-cpu_irq_leave_critical
 114              		.global	g_interrupt_enabled
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccP81qR3.s 			page 3


 115              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 116              		.align	2
 117              		.set	.LANCHOR0,. + 0
 118              		.type	cpu_irq_critical_section_counter, %object
 119              		.size	cpu_irq_critical_section_counter, 4
 120              	cpu_irq_critical_section_counter:
 121 0000 00000000 		.space	4
 122              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 123              		.set	.LANCHOR2,. + 0
 124              		.type	cpu_irq_prev_interrupt_state, %object
 125              		.size	cpu_irq_prev_interrupt_state, 1
 126              	cpu_irq_prev_interrupt_state:
 127 0000 00       		.space	1
 128              		.section	.data.g_interrupt_enabled,"aw",%progbits
 129              		.set	.LANCHOR1,. + 0
 130              		.type	g_interrupt_enabled, %object
 131              		.size	g_interrupt_enabled, 1
 132              	g_interrupt_enabled:
 133 0000 01       		.byte	1
 134              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
