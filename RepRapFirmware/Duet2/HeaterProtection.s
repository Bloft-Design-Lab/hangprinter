ARM GAS  /tmp/cc1E90ug.s 			page 1


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
  14              		.section	.text._ZN16HeaterProtectionC2Ej,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN16HeaterProtectionC2Ej
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN16HeaterProtectionC2Ej, %function
  23              	_ZN16HeaterProtectionC2Ej:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0729     		cmp	r1, #7
  28 0002 94BF     		ite	ls
  29 0004 49B2     		sxtbls	r1, r1
  30 0006 4FF0FF31 		movhi	r1, #-1
  31 000a 0023     		movs	r3, #0
  32 000c 0360     		str	r3, [r0]
  33 000e 4172     		strb	r1, [r0, #9]
  34 0010 0172     		strb	r1, [r0, #8]
  35 0012 7047     		bx	lr
  36              		.size	_ZN16HeaterProtectionC2Ej, .-_ZN16HeaterProtectionC2Ej
  37              		.global	_ZN16HeaterProtectionC1Ej
  38              		.thumb_set _ZN16HeaterProtectionC1Ej,_ZN16HeaterProtectionC2Ej
  39              		.section	.text._ZN16HeaterProtection4InitEf,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	_ZN16HeaterProtection4InitEf
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	_ZN16HeaterProtection4InitEf, %function
  48              	_ZN16HeaterProtection4InitEf:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 0023     		movs	r3, #0
  53 0002 80ED010A 		vstr.32	s0, [r0, #4]
  54 0006 0360     		str	r3, [r0]
  55 0008 8372     		strb	r3, [r0, #10]
  56 000a C372     		strb	r3, [r0, #11]
  57 000c C360     		str	r3, [r0, #12]
ARM GAS  /tmp/cc1E90ug.s 			page 2


  58 000e 7047     		bx	lr
  59              		.size	_ZN16HeaterProtection4InitEf, .-_ZN16HeaterProtection4InitEf
  60              		.section	.text._ZN16HeaterProtection5CheckEv,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN16HeaterProtection5CheckEv
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN16HeaterProtection5CheckEv, %function
  69              	_ZN16HeaterProtection5CheckEv:
  70              		@ args = 0, pretend = 0, frame = 8
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 90F90910 		ldrsb	r1, [r0, #9]
  73 0004 0029     		cmp	r1, #0
  74 0006 22DB     		blt	.L13
  75 0008 30B5     		push	{r4, r5, lr}
  76 000a 1C4D     		ldr	r5, .L19
  77 000c 83B0     		sub	sp, sp, #12
  78 000e 0446     		mov	r4, r0
  79 0010 0DF10702 		add	r2, sp, #7
  80 0014 E868     		ldr	r0, [r5, #12]	@ unaligned
  81 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
  82 001a 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  83 001e 3BB1     		cbz	r3, .L8
  84 0020 E368     		ldr	r3, [r4, #12]
  85 0022 0133     		adds	r3, r3, #1
  86 0024 042B     		cmp	r3, #4
  87 0026 E360     		str	r3, [r4, #12]
  88 0028 13D8     		bhi	.L18
  89              	.L9:
  90 002a 0120     		movs	r0, #1
  91              	.L7:
  92 002c 03B0     		add	sp, sp, #12
  93              		@ sp needed
  94 002e 30BD     		pop	{r4, r5, pc}
  95              	.L8:
  96 0030 E27A     		ldrb	r2, [r4, #11]	@ zero_extendqisi2
  97 0032 E360     		str	r3, [r4, #12]
  98 0034 BAB1     		cbz	r2, .L11
  99 0036 012A     		cmp	r2, #1
 100 0038 F7D1     		bne	.L9
 101 003a D4ED017A 		vldr.32	s15, [r4, #4]
 102 003e F4EEC07A 		vcmpe.f32	s15, s0
 103 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 104 0046 94BF     		ite	ls
 105 0048 0120     		movls	r0, #1
 106 004a 0020     		movhi	r0, #0
 107 004c EEE7     		b	.L7
 108              	.L13:
 109 004e 0120     		movs	r0, #1
 110 0050 7047     		bx	lr
 111              	.L18:
 112 0052 2868     		ldr	r0, [r5]
 113 0054 94F90930 		ldrsb	r3, [r4, #9]
 114 0058 094A     		ldr	r2, .L19+4
ARM GAS  /tmp/cc1E90ug.s 			page 3


 115 005a 40F2B511 		movw	r1, #437
 116 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 117 0062 0020     		movs	r0, #0
 118 0064 E2E7     		b	.L7
 119              	.L11:
 120 0066 D4ED017A 		vldr.32	s15, [r4, #4]
 121 006a F4EEC07A 		vcmpe.f32	s15, s0
 122 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 123 0072 ACBF     		ite	ge
 124 0074 0120     		movge	r0, #1
 125 0076 0020     		movlt	r0, #0
 126 0078 D8E7     		b	.L7
 127              	.L20:
 128 007a 00BF     		.align	2
 129              	.L19:
 130 007c 00000000 		.word	reprap
 131 0080 00000000 		.word	.LC0
 132              		.size	_ZN16HeaterProtection5CheckEv, .-_ZN16HeaterProtection5CheckEv
 133              		.section	.text._ZN16HeaterProtection9SetHeaterEa,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	_ZN16HeaterProtection9SetHeaterEa
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZN16HeaterProtection9SetHeaterEa, %function
 142              	_ZN16HeaterProtection9SetHeaterEa:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 024B     		ldr	r3, .L22
 147 0002 0172     		strb	r1, [r0, #8]
 148 0004 D868     		ldr	r0, [r3, #12]
 149 0006 FFF7FEBF 		b	_ZN4Heat22UpdateHeaterProtectionEv
 150              	.L23:
 151 000a 00BF     		.align	2
 152              	.L22:
 153 000c 00000000 		.word	reprap
 154              		.size	_ZN16HeaterProtection9SetHeaterEa, .-_ZN16HeaterProtection9SetHeaterEa
 155              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 156              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 157              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 158              	_ZL28cpu_irq_prev_interrupt_state:
 159 0000 00       		.space	1
 160              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 161              		.align	2
 162              		.type	_ZL32cpu_irq_critical_section_counter, %object
 163              		.size	_ZL32cpu_irq_critical_section_counter, 4
 164              	_ZL32cpu_irq_critical_section_counter:
 165 0000 00000000 		.space	4
 166              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 167              		.align	2
 168              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 169              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 170              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 171 0000 00000000 		.space	4
ARM GAS  /tmp/cc1E90ug.s 			page 4


 172              		.section	.rodata._ZN16HeaterProtection5CheckEv.str1.4,"aMS",%progbits,1
 173              		.align	2
 174              	.LC0:
 175 0000 54656D70 		.ascii	"Temperature reading error on heater %d\012\000"
 175      65726174 
 175      75726520 
 175      72656164 
 175      696E6720 
 176              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
