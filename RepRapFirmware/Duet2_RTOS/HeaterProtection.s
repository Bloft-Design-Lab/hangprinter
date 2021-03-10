ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5WYEPI.s 			page 1


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
  13              		.file	"HeaterProtection.cpp"
  14              		.text
  15              		.section	.text._ZN16HeaterProtectionC2Ej,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN16HeaterProtectionC2Ej
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN16HeaterProtectionC2Ej, %function
  24              	_ZN16HeaterProtectionC2Ej:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0729     		cmp	r1, #7
  29 0002 94BF     		ite	ls
  30 0004 49B2     		sxtbls	r1, r1
  31 0006 4FF0FF31 		movhi	r1, #-1
  32 000a 0023     		movs	r3, #0
  33 000c 0360     		str	r3, [r0]
  34 000e 4172     		strb	r1, [r0, #9]
  35 0010 0172     		strb	r1, [r0, #8]
  36 0012 7047     		bx	lr
  37              		.size	_ZN16HeaterProtectionC2Ej, .-_ZN16HeaterProtectionC2Ej
  38              		.global	_ZN16HeaterProtectionC1Ej
  39              		.thumb_set _ZN16HeaterProtectionC1Ej,_ZN16HeaterProtectionC2Ej
  40              		.section	.text._ZN16HeaterProtection4InitEf,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN16HeaterProtection4InitEf
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN16HeaterProtection4InitEf, %function
  49              	_ZN16HeaterProtection4InitEf:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 0023     		movs	r3, #0
  54 0002 80ED010A 		vstr.32	s0, [r0, #4]
  55 0006 0360     		str	r3, [r0]
  56 0008 8372     		strb	r3, [r0, #10]
  57 000a C372     		strb	r3, [r0, #11]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5WYEPI.s 			page 2


  58 000c C360     		str	r3, [r0, #12]
  59 000e 7047     		bx	lr
  60              		.size	_ZN16HeaterProtection4InitEf, .-_ZN16HeaterProtection4InitEf
  61              		.section	.text._ZN16HeaterProtection5CheckEv,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZN16HeaterProtection5CheckEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZN16HeaterProtection5CheckEv, %function
  70              	_ZN16HeaterProtection5CheckEv:
  71              		@ args = 0, pretend = 0, frame = 8
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 90F90910 		ldrsb	r1, [r0, #9]
  74 0004 0029     		cmp	r1, #0
  75 0006 22DB     		blt	.L13
  76 0008 30B5     		push	{r4, r5, lr}
  77 000a 1C4D     		ldr	r5, .L19
  78 000c 83B0     		sub	sp, sp, #12
  79 000e 0446     		mov	r4, r0
  80 0010 0DF10702 		add	r2, sp, #7
  81 0014 2869     		ldr	r0, [r5, #16]	@ unaligned
  82 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
  83 001a 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  84 001e 3BB1     		cbz	r3, .L8
  85 0020 E368     		ldr	r3, [r4, #12]
  86 0022 0133     		adds	r3, r3, #1
  87 0024 042B     		cmp	r3, #4
  88 0026 E360     		str	r3, [r4, #12]
  89 0028 13D8     		bhi	.L18
  90              	.L9:
  91 002a 0120     		movs	r0, #1
  92              	.L7:
  93 002c 03B0     		add	sp, sp, #12
  94              		@ sp needed
  95 002e 30BD     		pop	{r4, r5, pc}
  96              	.L8:
  97 0030 E27A     		ldrb	r2, [r4, #11]	@ zero_extendqisi2
  98 0032 E360     		str	r3, [r4, #12]
  99 0034 BAB1     		cbz	r2, .L11
 100 0036 012A     		cmp	r2, #1
 101 0038 F7D1     		bne	.L9
 102 003a D4ED017A 		vldr.32	s15, [r4, #4]
 103 003e F4EEC07A 		vcmpe.f32	s15, s0
 104 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 105 0046 94BF     		ite	ls
 106 0048 0120     		movls	r0, #1
 107 004a 0020     		movhi	r0, #0
 108 004c EEE7     		b	.L7
 109              	.L13:
 110 004e 0120     		movs	r0, #1
 111 0050 7047     		bx	lr
 112              	.L18:
 113 0052 6868     		ldr	r0, [r5, #4]
 114 0054 94F90930 		ldrsb	r3, [r4, #9]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5WYEPI.s 			page 3


 115 0058 094A     		ldr	r2, .L19+4
 116 005a 40F2B511 		movw	r1, #437
 117 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 118 0062 0020     		movs	r0, #0
 119 0064 E2E7     		b	.L7
 120              	.L11:
 121 0066 D4ED017A 		vldr.32	s15, [r4, #4]
 122 006a F4EEC07A 		vcmpe.f32	s15, s0
 123 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 124 0072 ACBF     		ite	ge
 125 0074 0120     		movge	r0, #1
 126 0076 0020     		movlt	r0, #0
 127 0078 D8E7     		b	.L7
 128              	.L20:
 129 007a 00BF     		.align	2
 130              	.L19:
 131 007c 00000000 		.word	reprap
 132 0080 00000000 		.word	.LC0
 133              		.size	_ZN16HeaterProtection5CheckEv, .-_ZN16HeaterProtection5CheckEv
 134              		.section	.text._ZN16HeaterProtection9SetHeaterEa,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN16HeaterProtection9SetHeaterEa
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZN16HeaterProtection9SetHeaterEa, %function
 143              	_ZN16HeaterProtection9SetHeaterEa:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 024B     		ldr	r3, .L22
 148 0002 0172     		strb	r1, [r0, #8]
 149 0004 1869     		ldr	r0, [r3, #16]
 150 0006 FFF7FEBF 		b	_ZN4Heat22UpdateHeaterProtectionEv
 151              	.L23:
 152 000a 00BF     		.align	2
 153              	.L22:
 154 000c 00000000 		.word	reprap
 155              		.size	_ZN16HeaterProtection9SetHeaterEa, .-_ZN16HeaterProtection9SetHeaterEa
 156              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 157              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 158              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 159              	_ZL28cpu_irq_prev_interrupt_state:
 160 0000 00       		.space	1
 161              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 162              		.align	2
 163              		.type	_ZL32cpu_irq_critical_section_counter, %object
 164              		.size	_ZL32cpu_irq_critical_section_counter, 4
 165              	_ZL32cpu_irq_critical_section_counter:
 166 0000 00000000 		.space	4
 167              		.section	.rodata._ZN16HeaterProtection5CheckEv.str1.4,"aMS",%progbits,1
 168              		.align	2
 169              	.LC0:
 170 0000 54656D70 		.ascii	"Temperature reading error on heater %d\012\000"
 170      65726174 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5WYEPI.s 			page 4


 170      75726520 
 170      72656164 
 170      696E6720 
 171              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
