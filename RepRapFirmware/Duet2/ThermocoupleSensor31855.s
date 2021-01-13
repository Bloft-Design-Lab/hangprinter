ARM GAS  /tmp/ccIHumcJ.s 			page 1


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
  13              		.file	"ThermocoupleSensor31855.cpp"
  14              		.section	.text._ZN23ThermocoupleSensor318554InitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN23ThermocoupleSensor318554InitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN23ThermocoupleSensor318554InitEv, %function
  23              	_ZN23ThermocoupleSensor318554InitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
  29 0008 FFF7FEFF 		bl	millis
  30 000c A061     		str	r0, [r4, #24]
  31 000e 10BD     		pop	{r4, pc}
  32              		.size	_ZN23ThermocoupleSensor318554InitEv, .-_ZN23ThermocoupleSensor318554InitEv
  33              		.section	.text._ZN23ThermocoupleSensor3185514GetTemperatureERf,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN23ThermocoupleSensor3185514GetTemperatureERf
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	_ZN23ThermocoupleSensor3185514GetTemperatureERf, %function
  42              	_ZN23ThermocoupleSensor3185514GetTemperatureERf:
  43              		@ args = 0, pretend = 0, frame = 8
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 70B5     		push	{r4, r5, r6, lr}
  46 0002 82B0     		sub	sp, sp, #8
  47 0004 0446     		mov	r4, r0
  48 0006 0E46     		mov	r6, r1
  49 0008 FFF7FEFF 		bl	_Z11inInterruptv
  50 000c 30B1     		cbz	r0, .L5
  51              	.L7:
  52 000e E369     		ldr	r3, [r4, #28]	@ float
  53 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
  54 0014 3360     		str	r3, [r6]	@ float
  55              	.L18:
  56 0016 2846     		mov	r0, r5
  57 0018 02B0     		add	sp, sp, #8
ARM GAS  /tmp/ccIHumcJ.s 			page 2


  58              		@ sp needed
  59 001a 70BD     		pop	{r4, r5, r6, pc}
  60              	.L5:
  61 001c 0546     		mov	r5, r0
  62 001e FFF7FEFF 		bl	millis
  63 0022 A369     		ldr	r3, [r4, #24]
  64 0024 C01A     		subs	r0, r0, r3
  65 0026 6328     		cmp	r0, #99
  66 0028 F1D9     		bls	.L7
  67 002a 2946     		mov	r1, r5
  68 002c 01AB     		add	r3, sp, #4
  69 002e 0422     		movs	r2, #4
  70 0030 2046     		mov	r0, r4
  71 0032 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  72 0036 0546     		mov	r5, r0
  73 0038 10B1     		cbz	r0, .L8
  74              	.L21:
  75 003a 84F82050 		strb	r5, [r4, #32]
  76 003e EAE7     		b	.L18
  77              	.L8:
  78 0040 FFF7FEFF 		bl	millis
  79 0044 019A     		ldr	r2, [sp, #4]
  80 0046 134B     		ldr	r3, .L22
  81 0048 A061     		str	r0, [r4, #24]
  82 004a 1340     		ands	r3, r3, r2
  83 004c 73B9     		cbnz	r3, .L12
  84 004e 124B     		ldr	r3, .L22+4
  85 0050 1340     		ands	r3, r3, r2
  86 0052 7BB1     		cbz	r3, .L11
  87 0054 D103     		lsls	r1, r2, #15
  88 0056 09D5     		bpl	.L12
  89 0058 02F00203 		and	r3, r2, #2
  90 005c D207     		lsls	r2, r2, #31
  91 005e 02D4     		bmi	.L13
  92 0060 23B9     		cbnz	r3, .L12
  93 0062 0225     		movs	r5, #2
  94 0064 E9E7     		b	.L21
  95              	.L13:
  96 0066 0423     		movs	r3, #4
  97 0068 84F82030 		strb	r3, [r4, #32]
  98              	.L12:
  99 006c 0625     		movs	r5, #6
 100 006e 84F82050 		strb	r5, [r4, #32]
 101 0072 D0E7     		b	.L18
 102              	.L11:
 103 0074 920C     		lsrs	r2, r2, #18
 104 0076 02F40053 		and	r3, r2, #8192
 105 007a 5B42     		negs	r3, r3
 106 007c 1343     		orrs	r3, r3, r2
 107 007e 07EE903A 		vmov	s15, r3	@ int
 108 0082 FAEECF7A 		vcvt.f32.s32	s15, s15, #2
 109 0086 C4ED077A 		vstr.32	s15, [r4, #28]
 110 008a C6ED007A 		vstr.32	s15, [r6]
 111 008e 84F82050 		strb	r5, [r4, #32]
 112 0092 C0E7     		b	.L18
 113              	.L23:
 114              		.align	2
ARM GAS  /tmp/ccIHumcJ.s 			page 3


 115              	.L22:
 116 0094 08000200 		.word	131080
 117 0098 07000100 		.word	65543
 118              		.size	_ZN23ThermocoupleSensor3185514GetTemperatureERf, .-_ZN23ThermocoupleSensor3185514GetTemperat
 119              		.section	.text._ZN23ThermocoupleSensor31855D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 120              		.align	1
 121              		.p2align 2,,3
 122              		.weak	_ZN23ThermocoupleSensor31855D2Ev
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	_ZN23ThermocoupleSensor31855D2Ev, %function
 128              	_ZN23ThermocoupleSensor31855D2Ev:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 10B5     		push	{r4, lr}
 132 0002 034B     		ldr	r3, .L26
 133 0004 0360     		str	r3, [r0]
 134 0006 0446     		mov	r4, r0
 135 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 136 000c 2046     		mov	r0, r4
 137 000e 10BD     		pop	{r4, pc}
 138              	.L27:
 139              		.align	2
 140              	.L26:
 141 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 142              		.size	_ZN23ThermocoupleSensor31855D2Ev, .-_ZN23ThermocoupleSensor31855D2Ev
 143              		.weak	_ZN23ThermocoupleSensor31855D1Ev
 144              		.thumb_set _ZN23ThermocoupleSensor31855D1Ev,_ZN23ThermocoupleSensor31855D2Ev
 145              		.section	.text._ZN23ThermocoupleSensor31855D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 146              		.align	1
 147              		.p2align 2,,3
 148              		.weak	_ZN23ThermocoupleSensor31855D0Ev
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN23ThermocoupleSensor31855D0Ev, %function
 154              	_ZN23ThermocoupleSensor31855D0Ev:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157 0000 10B5     		push	{r4, lr}
 158 0002 054B     		ldr	r3, .L30
 159 0004 0360     		str	r3, [r0]
 160 0006 0446     		mov	r4, r0
 161 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 162 000c 2046     		mov	r0, r4
 163 000e 2421     		movs	r1, #36
 164 0010 FFF7FEFF 		bl	_ZdlPvj
 165 0014 2046     		mov	r0, r4
 166 0016 10BD     		pop	{r4, pc}
 167              	.L31:
 168              		.align	2
 169              	.L30:
 170 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 171              		.size	_ZN23ThermocoupleSensor31855D0Ev, .-_ZN23ThermocoupleSensor31855D0Ev
ARM GAS  /tmp/ccIHumcJ.s 			page 4


 172              		.section	.text._ZN23ThermocoupleSensor31855C2Ej,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZN23ThermocoupleSensor31855C2Ej
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN23ThermocoupleSensor31855C2Ej, %function
 181              	_ZN23ThermocoupleSensor31855C2Ej:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 10B5     		push	{r4, lr}
 185 0002 084A     		ldr	r2, .L34
 186 0004 82B0     		sub	sp, sp, #8
 187 0006 0023     		movs	r3, #0
 188 0008 CDE90032 		strd	r3, r2, [sp]
 189 000c A1F16403 		sub	r3, r1, #100
 190 0010 054A     		ldr	r2, .L34+4
 191 0012 0446     		mov	r4, r0
 192 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 193 0018 044B     		ldr	r3, .L34+8
 194 001a 2360     		str	r3, [r4]
 195 001c 2046     		mov	r0, r4
 196 001e 02B0     		add	sp, sp, #8
 197              		@ sp needed
 198 0020 10BD     		pop	{r4, pc}
 199              	.L35:
 200 0022 00BF     		.align	2
 201              	.L34:
 202 0024 00093D00 		.word	4000000
 203 0028 00000000 		.word	.LC0
 204 002c 08000000 		.word	.LANCHOR0+8
 205              		.size	_ZN23ThermocoupleSensor31855C2Ej, .-_ZN23ThermocoupleSensor31855C2Ej
 206              		.global	_ZN23ThermocoupleSensor31855C1Ej
 207              		.thumb_set _ZN23ThermocoupleSensor31855C1Ej,_ZN23ThermocoupleSensor31855C2Ej
 208              		.weak	_ZTV20SpiTemperatureSensor
 209              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 210              		.align	2
 211              		.type	_ZTV20SpiTemperatureSensor, %object
 212              		.size	_ZTV20SpiTemperatureSensor, 28
 213              	_ZTV20SpiTemperatureSensor:
 214 0000 00000000 		.word	0
 215 0004 00000000 		.word	0
 216 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 217 000c 00000000 		.word	__cxa_pure_virtual
 218 0010 00000000 		.word	__cxa_pure_virtual
 219 0014 00000000 		.word	0
 220 0018 00000000 		.word	0
 221              		.global	_ZTV23ThermocoupleSensor31855
 222              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 223              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 224              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 225              	_ZL28cpu_irq_prev_interrupt_state:
 226 0000 00       		.space	1
 227              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 228              		.align	2
ARM GAS  /tmp/ccIHumcJ.s 			page 5


 229              		.type	_ZL32cpu_irq_critical_section_counter, %object
 230              		.size	_ZL32cpu_irq_critical_section_counter, 4
 231              	_ZL32cpu_irq_critical_section_counter:
 232 0000 00000000 		.space	4
 233              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 234              		.align	2
 235              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 236              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 237              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 238 0000 00000000 		.space	4
 239              		.section	.rodata._ZN23ThermocoupleSensor31855C2Ej.str1.4,"aMS",%progbits,1
 240              		.align	2
 241              	.LC0:
 242 0000 54686572 		.ascii	"Thermocouple (MAX31855)\000"
 242      6D6F636F 
 242      75706C65 
 242      20284D41 
 242      58333138 
 243              		.section	.rodata._ZTV23ThermocoupleSensor31855,"a",%progbits
 244              		.align	2
 245              		.set	.LANCHOR0,. + 0
 246              		.type	_ZTV23ThermocoupleSensor31855, %object
 247              		.size	_ZTV23ThermocoupleSensor31855, 28
 248              	_ZTV23ThermocoupleSensor31855:
 249 0000 00000000 		.word	0
 250 0004 00000000 		.word	0
 251 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 252 000c 00000000 		.word	_ZN23ThermocoupleSensor318554InitEv
 253 0010 00000000 		.word	_ZN23ThermocoupleSensor3185514GetTemperatureERf
 254 0014 00000000 		.word	_ZN23ThermocoupleSensor31855D1Ev
 255 0018 00000000 		.word	_ZN23ThermocoupleSensor31855D0Ev
 256              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
