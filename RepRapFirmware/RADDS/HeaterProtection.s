ARM GAS  /tmp/cc63nu4B.s 			page 1


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
  11              		.file	"HeaterProtection.cpp"
  12              		.section	.text._ZN16HeaterProtectionC2Ej,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN16HeaterProtectionC2Ej
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN16HeaterProtectionC2Ej, %function
  21              	_ZN16HeaterProtectionC2Ej:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0329     		cmp	r1, #3
  26 0002 88BF     		it	hi
  27 0004 4FF0FF31 		movhi	r1, #-1
  28 0008 4FF00003 		mov	r3, #0
  29 000c 98BF     		it	ls
  30 000e 49B2     		sxtbls	r1, r1
  31 0010 0360     		str	r3, [r0]
  32 0012 4172     		strb	r1, [r0, #9]
  33 0014 0172     		strb	r1, [r0, #8]
  34 0016 7047     		bx	lr
  35              		.size	_ZN16HeaterProtectionC2Ej, .-_ZN16HeaterProtectionC2Ej
  36              		.global	_ZN16HeaterProtectionC1Ej
  37              		.thumb_set _ZN16HeaterProtectionC1Ej,_ZN16HeaterProtectionC2Ej
  38              		.section	.text._ZN16HeaterProtection4InitEf,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_ZN16HeaterProtection4InitEf
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu softvfp
  46              		.type	_ZN16HeaterProtection4InitEf, %function
  47              	_ZN16HeaterProtection4InitEf:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 0023     		movs	r3, #0
  52 0002 4160     		str	r1, [r0, #4]	@ float
  53 0004 0360     		str	r3, [r0]
  54 0006 8372     		strb	r3, [r0, #10]
  55 0008 C372     		strb	r3, [r0, #11]
  56 000a C360     		str	r3, [r0, #12]
  57 000c 7047     		bx	lr
ARM GAS  /tmp/cc63nu4B.s 			page 2


  58              		.size	_ZN16HeaterProtection4InitEf, .-_ZN16HeaterProtection4InitEf
  59              		.global	__aeabi_fcmple
  60              		.global	__aeabi_fcmpge
  61 000e 00BF     		.section	.text._ZN16HeaterProtection5CheckEv,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZN16HeaterProtection5CheckEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu softvfp
  69              		.type	_ZN16HeaterProtection5CheckEv, %function
  70              	_ZN16HeaterProtection5CheckEv:
  71              		@ args = 0, pretend = 0, frame = 8
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 90F90910 		ldrsb	r1, [r0, #9]
  74 0004 0029     		cmp	r1, #0
  75 0006 21DB     		blt	.L15
  76 0008 30B5     		push	{r4, r5, lr}
  77 000a 1C4D     		ldr	r5, .L22
  78 000c 83B0     		sub	sp, sp, #12
  79 000e 0DF10702 		add	r2, sp, #7
  80 0012 0446     		mov	r4, r0
  81 0014 E868     		ldr	r0, [r5, #12]	@ unaligned
  82 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
  83 001a 9DF80720 		ldrb	r2, [sp, #7]	@ zero_extendqisi2
  84 001e 6AB9     		cbnz	r2, .L20
  85 0020 E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
  86 0022 E260     		str	r2, [r4, #12]
  87 0024 FBB1     		cbz	r3, .L11
  88 0026 012B     		cmp	r3, #1
  89 0028 0DD1     		bne	.L9
  90 002a 6168     		ldr	r1, [r4, #4]	@ float
  91 002c 1C46     		mov	r4, r3
  92 002e FFF7FEFF 		bl	__aeabi_fcmpge
  93 0032 00B9     		cbnz	r0, .L14
  94 0034 0446     		mov	r4, r0
  95              	.L14:
  96 0036 E0B2     		uxtb	r0, r4
  97 0038 03B0     		add	sp, sp, #12
  98              		@ sp needed
  99 003a 30BD     		pop	{r4, r5, pc}
 100              	.L20:
 101 003c E368     		ldr	r3, [r4, #12]
 102 003e 0133     		adds	r3, r3, #1
 103 0040 042B     		cmp	r3, #4
 104 0042 E360     		str	r3, [r4, #12]
 105 0044 04D8     		bhi	.L21
 106              	.L9:
 107 0046 0120     		movs	r0, #1
 108 0048 03B0     		add	sp, sp, #12
 109              		@ sp needed
 110 004a 30BD     		pop	{r4, r5, pc}
 111              	.L15:
 112 004c 0120     		movs	r0, #1
 113 004e 7047     		bx	lr
 114              	.L21:
ARM GAS  /tmp/cc63nu4B.s 			page 3


 115 0050 2868     		ldr	r0, [r5]
 116 0052 94F90930 		ldrsb	r3, [r4, #9]
 117 0056 0A4A     		ldr	r2, .L22+4
 118 0058 40F2B511 		movw	r1, #437
 119 005c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 120 0060 0020     		movs	r0, #0
 121 0062 03B0     		add	sp, sp, #12
 122              		@ sp needed
 123 0064 30BD     		pop	{r4, r5, pc}
 124              	.L11:
 125 0066 6168     		ldr	r1, [r4, #4]	@ float
 126 0068 FFF7FEFF 		bl	__aeabi_fcmple
 127 006c 4FF00103 		mov	r3, #1
 128 0070 00B9     		cbnz	r0, .L13
 129 0072 0346     		mov	r3, r0
 130              	.L13:
 131 0074 D8B2     		uxtb	r0, r3
 132 0076 03B0     		add	sp, sp, #12
 133              		@ sp needed
 134 0078 30BD     		pop	{r4, r5, pc}
 135              	.L23:
 136 007a 00BF     		.align	2
 137              	.L22:
 138 007c 00000000 		.word	reprap
 139 0080 00000000 		.word	.LC0
 140              		.size	_ZN16HeaterProtection5CheckEv, .-_ZN16HeaterProtection5CheckEv
 141              		.section	.text._ZN16HeaterProtection9SetHeaterEa,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	_ZN16HeaterProtection9SetHeaterEa
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu softvfp
 149              		.type	_ZN16HeaterProtection9SetHeaterEa, %function
 150              	_ZN16HeaterProtection9SetHeaterEa:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 024B     		ldr	r3, .L25
 155 0002 0172     		strb	r1, [r0, #8]
 156 0004 D868     		ldr	r0, [r3, #12]
 157 0006 FFF7FEBF 		b	_ZN4Heat22UpdateHeaterProtectionEv
 158              	.L26:
 159 000a 00BF     		.align	2
 160              	.L25:
 161 000c 00000000 		.word	reprap
 162              		.size	_ZN16HeaterProtection9SetHeaterEa, .-_ZN16HeaterProtection9SetHeaterEa
 163              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 164              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 165              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 166              	_ZL28cpu_irq_prev_interrupt_state:
 167 0000 00       		.space	1
 168              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 169              		.align	2
 170              		.type	_ZL32cpu_irq_critical_section_counter, %object
 171              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/cc63nu4B.s 			page 4


 172              	_ZL32cpu_irq_critical_section_counter:
 173 0000 00000000 		.space	4
 174              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 175              		.align	2
 176              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 177              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 178              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 179 0000 00000000 		.space	4
 180              		.section	.rodata._ZN16HeaterProtection5CheckEv.str1.4,"aMS",%progbits,1
 181              		.align	2
 182              	.LC0:
 183 0000 54656D70 		.ascii	"Temperature reading error on heater %d\012\000"
 183      65726174 
 183      75726520 
 183      72656164 
 183      696E6720 
 184              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
