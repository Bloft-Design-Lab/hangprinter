ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchyj7ff.s 			page 1


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
  14              		.text
  15              		.section	.text.TimeTick_Increment,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	TimeTick_Increment
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	TimeTick_Increment, %function
  24              	TimeTick_Increment:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 2DE91008 		push	{r4, fp}
  29              		.syntax unified
  30              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  31 0004 EFF31084 		MRS r4, primask
  32              	@ 0 "" 2
  33              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  34 0008 72B6     		cpsid i
  35              	@ 0 "" 2
  36              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  37 000a BFF35F8F 		dmb
  38              	@ 0 "" 2
  39              		.thumb
  40              		.syntax unified
  41 000e 0A48     		ldr	r0, .L5
  42 0010 0A49     		ldr	r1, .L5+4
  43 0012 0023     		movs	r3, #0
  44 0014 0370     		strb	r3, [r0]
  45 0016 D1E900BC 		ldrd	fp, [r1]
  46 001a 1BF10102 		adds	r2, fp, #1
  47 001e 4CF10003 		adc	r3, ip, #0
  48 0022 C1E90023 		strd	r2, [r1]
  49 0026 24B9     		cbnz	r4, .L1
  50 0028 0123     		movs	r3, #1
  51 002a 0370     		strb	r3, [r0]
  52              		.syntax unified
  53              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  54 002c BFF35F8F 		dmb
  55              	@ 0 "" 2
  56              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  57 0030 62B6     		cpsie i
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchyj7ff.s 			page 2


  58              	@ 0 "" 2
  59              		.thumb
  60              		.syntax unified
  61              	.L1:
  62 0032 BDE81008 		pop	{r4, fp}
  63 0036 7047     		bx	lr
  64              	.L6:
  65              		.align	2
  66              	.L5:
  67 0038 00000000 		.word	g_interrupt_enabled
  68 003c 00000000 		.word	.LANCHOR0
  69              		.size	TimeTick_Increment, .-TimeTick_Increment
  70              		.section	.text.millis,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	millis
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	millis, %function
  79              	millis:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 014B     		ldr	r3, .L8
  84 0002 D3E90001 		ldrd	r0, [r3]
  85 0006 7047     		bx	lr
  86              	.L9:
  87              		.align	2
  88              	.L8:
  89 0008 00000000 		.word	.LANCHOR0
  90              		.size	millis, .-millis
  91              		.section	.text.millis64,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	millis64
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	millis64, %function
 100              	millis64:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104              		.syntax unified
 105              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 106 0000 EFF31082 		MRS r2, primask
 107              	@ 0 "" 2
 108              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 109 0004 72B6     		cpsid i
 110              	@ 0 "" 2
 111              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 112 0006 BFF35F8F 		dmb
 113              	@ 0 "" 2
 114              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchyj7ff.s 			page 3


 115              		.syntax unified
 116 000a 064B     		ldr	r3, .L12
 117 000c 0649     		ldr	r1, .L12+4
 118 000e 0020     		movs	r0, #0
 119 0010 1870     		strb	r0, [r3]
 120 0012 D1E90001 		ldrd	r0, [r1]
 121 0016 22B9     		cbnz	r2, .L10
 122 0018 0122     		movs	r2, #1
 123 001a 1A70     		strb	r2, [r3]
 124              		.syntax unified
 125              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 126 001c BFF35F8F 		dmb
 127              	@ 0 "" 2
 128              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 129 0020 62B6     		cpsie i
 130              	@ 0 "" 2
 131              		.thumb
 132              		.syntax unified
 133              	.L10:
 134 0022 7047     		bx	lr
 135              	.L13:
 136              		.align	2
 137              	.L12:
 138 0024 00000000 		.word	g_interrupt_enabled
 139 0028 00000000 		.word	.LANCHOR0
 140              		.size	millis64, .-millis64
 141              		.section	.text.coreDelay,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	coreDelay
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	coreDelay, %function
 150              	coreDelay:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153 0000 68B1     		cbz	r0, .L22
 154 0002 70B5     		push	{r4, r5, r6, lr}
 155 0004 064E     		ldr	r6, .L25
 156 0006 D6E90023 		ldrd	r2, [r6]
 157 000a 0446     		mov	r4, r0
 158 000c 1546     		mov	r5, r2
 159              	.L16:
 160 000e FFF7FEFF 		bl	yield
 161 0012 D6E90023 		ldrd	r2, [r6]
 162 0016 521B     		subs	r2, r2, r5
 163 0018 A242     		cmp	r2, r4
 164 001a F8D3     		bcc	.L16
 165 001c 70BD     		pop	{r4, r5, r6, pc}
 166              	.L22:
 167 001e 7047     		bx	lr
 168              	.L26:
 169              		.align	2
 170              	.L25:
 171 0020 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchyj7ff.s 			page 4


 172              		.size	coreDelay, .-coreDelay
 173              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 174              		.align	2
 175              		.type	cpu_irq_critical_section_counter, %object
 176              		.size	cpu_irq_critical_section_counter, 4
 177              	cpu_irq_critical_section_counter:
 178 0000 00000000 		.space	4
 179              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 180              		.type	cpu_irq_prev_interrupt_state, %object
 181              		.size	cpu_irq_prev_interrupt_state, 1
 182              	cpu_irq_prev_interrupt_state:
 183 0000 00       		.space	1
 184              		.section	.bss.g_ms_ticks,"aw",%nobits
 185              		.align	3
 186              		.set	.LANCHOR0,. + 0
 187              		.type	g_ms_ticks, %object
 188              		.size	g_ms_ticks, 8
 189              	g_ms_ticks:
 190 0000 00000000 		.space	8
 190      00000000 
 191              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
