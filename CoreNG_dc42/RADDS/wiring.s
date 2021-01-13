ARM GAS  /tmp/ccF5a59e.s 			page 1


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
  11              		.file	"wiring.c"
  12              		.section	.text.TimeTick_Increment,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	TimeTick_Increment
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	TimeTick_Increment, %function
  21              	TimeTick_Increment:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0449     		ldr	r1, .L2
  26 0002 D1E90023 		ldrd	r2, [r1]
  27 0006 0132     		adds	r2, r2, #1
  28 0008 43F10003 		adc	r3, r3, #0
  29 000c C1E90023 		strd	r2, [r1]
  30 0010 7047     		bx	lr
  31              	.L3:
  32 0012 00BF     		.align	2
  33              	.L2:
  34 0014 00000000 		.word	.LANCHOR0
  35              		.size	TimeTick_Increment, .-TimeTick_Increment
  36              		.section	.text.millis,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	millis
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu softvfp
  44              		.type	millis, %function
  45              	millis:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48              		@ link register save eliminated.
  49 0000 014B     		ldr	r3, .L5
  50 0002 D3E90001 		ldrd	r0, [r3]
  51 0006 7047     		bx	lr
  52              	.L6:
  53              		.align	2
  54              	.L5:
  55 0008 00000000 		.word	.LANCHOR0
  56              		.size	millis, .-millis
  57              		.section	.text.millis64,"ax",%progbits
ARM GAS  /tmp/ccF5a59e.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	millis64
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  65              		.type	millis64, %function
  66              	millis64:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70              		.syntax unified
  71              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  72 0000 EFF31083 		MRS r3, primask
  73              	@ 0 "" 2
  74              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  75 0004 72B6     		cpsid i
  76              	@ 0 "" 2
  77              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  78 0006 BFF35F8F 		dmb
  79              	@ 0 "" 2
  80              		.thumb
  81              		.syntax unified
  82 000a 0020     		movs	r0, #0
  83 000c 054A     		ldr	r2, .L10
  84 000e 0649     		ldr	r1, .L10+4
  85 0010 1070     		strb	r0, [r2]
  86 0012 D1E90001 		ldrd	r0, [r1]
  87 0016 23B9     		cbnz	r3, .L8
  88 0018 0123     		movs	r3, #1
  89 001a 1370     		strb	r3, [r2]
  90              		.syntax unified
  91              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  92 001c BFF35F8F 		dmb
  93              	@ 0 "" 2
  94              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  95 0020 62B6     		cpsie i
  96              	@ 0 "" 2
  97              		.thumb
  98              		.syntax unified
  99              	.L8:
 100 0022 7047     		bx	lr
 101              	.L11:
 102              		.align	2
 103              	.L10:
 104 0024 00000000 		.word	g_interrupt_enabled
 105 0028 00000000 		.word	.LANCHOR0
 106              		.size	millis64, .-millis64
 107              		.section	.text.coreDelay,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	coreDelay
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu softvfp
ARM GAS  /tmp/ccF5a59e.s 			page 3


 115              		.type	coreDelay, %function
 116              	coreDelay:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119 0000 68B1     		cbz	r0, .L18
 120 0002 70B5     		push	{r4, r5, r6, lr}
 121 0004 064E     		ldr	r6, .L21
 122 0006 0446     		mov	r4, r0
 123 0008 D6E90023 		ldrd	r2, [r6]
 124 000c 1546     		mov	r5, r2
 125              	.L14:
 126 000e FFF7FEFF 		bl	yield
 127 0012 D6E90023 		ldrd	r2, [r6]
 128 0016 521B     		subs	r2, r2, r5
 129 0018 9442     		cmp	r4, r2
 130 001a F8D8     		bhi	.L14
 131 001c 70BD     		pop	{r4, r5, r6, pc}
 132              	.L18:
 133 001e 7047     		bx	lr
 134              	.L22:
 135              		.align	2
 136              	.L21:
 137 0020 00000000 		.word	.LANCHOR0
 138              		.size	coreDelay, .-coreDelay
 139              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 140              		.align	2
 141              		.type	cpu_irq_critical_section_counter, %object
 142              		.size	cpu_irq_critical_section_counter, 4
 143              	cpu_irq_critical_section_counter:
 144 0000 00000000 		.space	4
 145              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 146              		.type	cpu_irq_prev_interrupt_state, %object
 147              		.size	cpu_irq_prev_interrupt_state, 1
 148              	cpu_irq_prev_interrupt_state:
 149 0000 00       		.space	1
 150              		.section	.bss.g_ms_ticks,"aw",%nobits
 151              		.align	3
 152              		.set	.LANCHOR0,. + 0
 153              		.type	g_ms_ticks, %object
 154              		.size	g_ms_ticks, 8
 155              	g_ms_ticks:
 156 0000 00000000 		.space	8
 156      00000000 
 157              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
