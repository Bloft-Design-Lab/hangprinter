ARM GAS  /tmp/ccTJGEOM.s 			page 1


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
  13              		.file	"wiring.c"
  14              		.section	.text.TimeTick_Increment,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	TimeTick_Increment
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	TimeTick_Increment, %function
  23              	TimeTick_Increment:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28              		.syntax unified
  29              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  30 0002 EFF31083 		MRS r3, primask
  31              	@ 0 "" 2
  32              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  33 0006 72B6     		cpsid i
  34              	@ 0 "" 2
  35              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  36 0008 BFF35F8F 		dmb
  37              	@ 0 "" 2
  38              		.thumb
  39              		.syntax unified
  40 000c 094C     		ldr	r4, .L5
  41 000e 0A4A     		ldr	r2, .L5+4
  42 0010 0021     		movs	r1, #0
  43 0012 2170     		strb	r1, [r4]
  44 0014 D2E90001 		ldrd	r0, [r2]
  45 0018 0130     		adds	r0, r0, #1
  46 001a 41F10001 		adc	r1, r1, #0
  47 001e C2E90001 		strd	r0, [r2]
  48 0022 23B9     		cbnz	r3, .L1
  49 0024 0123     		movs	r3, #1
  50 0026 2370     		strb	r3, [r4]
  51              		.syntax unified
  52              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
  53 0028 BFF35F8F 		dmb
  54              	@ 0 "" 2
  55              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  56 002c 62B6     		cpsie i
  57              	@ 0 "" 2
ARM GAS  /tmp/ccTJGEOM.s 			page 2


  58              		.thumb
  59              		.syntax unified
  60              	.L1:
  61 002e 5DF8044B 		ldr	r4, [sp], #4
  62 0032 7047     		bx	lr
  63              	.L6:
  64              		.align	2
  65              	.L5:
  66 0034 00000000 		.word	g_interrupt_enabled
  67 0038 00000000 		.word	.LANCHOR0
  68              		.size	TimeTick_Increment, .-TimeTick_Increment
  69              		.section	.text.millis,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	millis
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	millis, %function
  78              	millis:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 014B     		ldr	r3, .L8
  83 0002 D3E90001 		ldrd	r0, [r3]
  84 0006 7047     		bx	lr
  85              	.L9:
  86              		.align	2
  87              	.L8:
  88 0008 00000000 		.word	.LANCHOR0
  89              		.size	millis, .-millis
  90              		.section	.text.millis64,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	millis64
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	millis64, %function
  99              	millis64:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103              		.syntax unified
 104              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 105 0000 EFF31083 		MRS r3, primask
 106              	@ 0 "" 2
 107              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 108 0004 72B6     		cpsid i
 109              	@ 0 "" 2
 110              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 111 0006 BFF35F8F 		dmb
 112              	@ 0 "" 2
 113              		.thumb
 114              		.syntax unified
ARM GAS  /tmp/ccTJGEOM.s 			page 3


 115 000a 064A     		ldr	r2, .L12
 116 000c 0649     		ldr	r1, .L12+4
 117 000e 0020     		movs	r0, #0
 118 0010 1070     		strb	r0, [r2]
 119 0012 D1E90001 		ldrd	r0, [r1]
 120 0016 23B9     		cbnz	r3, .L11
 121 0018 0123     		movs	r3, #1
 122 001a 1370     		strb	r3, [r2]
 123              		.syntax unified
 124              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 125 001c BFF35F8F 		dmb
 126              	@ 0 "" 2
 127              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 128 0020 62B6     		cpsie i
 129              	@ 0 "" 2
 130              		.thumb
 131              		.syntax unified
 132              	.L11:
 133 0022 7047     		bx	lr
 134              	.L13:
 135              		.align	2
 136              	.L12:
 137 0024 00000000 		.word	g_interrupt_enabled
 138 0028 00000000 		.word	.LANCHOR0
 139              		.size	millis64, .-millis64
 140              		.section	.text.coreDelay,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	coreDelay
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	coreDelay, %function
 149              	coreDelay:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152 0000 68B1     		cbz	r0, .L20
 153 0002 70B5     		push	{r4, r5, r6, lr}
 154 0004 064E     		ldr	r6, .L23
 155 0006 D6E90023 		ldrd	r2, [r6]
 156 000a 0446     		mov	r4, r0
 157 000c 1546     		mov	r5, r2
 158              	.L16:
 159 000e FFF7FEFF 		bl	yield
 160 0012 D6E90023 		ldrd	r2, [r6]
 161 0016 521B     		subs	r2, r2, r5
 162 0018 9442     		cmp	r4, r2
 163 001a F8D8     		bhi	.L16
 164 001c 70BD     		pop	{r4, r5, r6, pc}
 165              	.L20:
 166 001e 7047     		bx	lr
 167              	.L24:
 168              		.align	2
 169              	.L23:
 170 0020 00000000 		.word	.LANCHOR0
 171              		.size	coreDelay, .-coreDelay
ARM GAS  /tmp/ccTJGEOM.s 			page 4


 172              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 173              		.align	2
 174              		.type	cpu_irq_critical_section_counter, %object
 175              		.size	cpu_irq_critical_section_counter, 4
 176              	cpu_irq_critical_section_counter:
 177 0000 00000000 		.space	4
 178              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 179              		.type	cpu_irq_prev_interrupt_state, %object
 180              		.size	cpu_irq_prev_interrupt_state, 1
 181              	cpu_irq_prev_interrupt_state:
 182 0000 00       		.space	1
 183              		.section	.bss.g_ms_ticks,"aw",%nobits
 184              		.align	3
 185              		.set	.LANCHOR0,. + 0
 186              		.type	g_ms_ticks, %object
 187              		.size	g_ms_ticks, 8
 188              	g_ms_ticks:
 189 0000 00000000 		.space	8
 189      00000000 
 190              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
