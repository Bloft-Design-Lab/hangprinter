ARM GAS  C:\Users\paja\AppData\Local\Temp\cc94QBAs.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN23ThermocoupleSensor318554InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN23ThermocoupleSensor318554InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN23ThermocoupleSensor318554InitEv, %function
  24              	_ZN23ThermocoupleSensor318554InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
  30 0008 FFF7FEFF 		bl	millis
  31 000c A061     		str	r0, [r4, #24]
  32 000e 10BD     		pop	{r4, pc}
  33              		.size	_ZN23ThermocoupleSensor318554InitEv, .-_ZN23ThermocoupleSensor318554InitEv
  34              		.section	.text._ZN23ThermocoupleSensor3185514GetTemperatureERf,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN23ThermocoupleSensor3185514GetTemperatureERf
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN23ThermocoupleSensor3185514GetTemperatureERf, %function
  43              	_ZN23ThermocoupleSensor3185514GetTemperatureERf:
  44              		@ args = 0, pretend = 0, frame = 8
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 70B5     		push	{r4, r5, r6, lr}
  47 0002 82B0     		sub	sp, sp, #8
  48 0004 0446     		mov	r4, r0
  49 0006 0E46     		mov	r6, r1
  50 0008 FFF7FEFF 		bl	_Z11inInterruptv
  51 000c 30B1     		cbz	r0, .L5
  52              	.L7:
  53 000e E369     		ldr	r3, [r4, #28]	@ float
  54 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
  55 0014 3360     		str	r3, [r6]	@ float
  56              	.L18:
  57 0016 2846     		mov	r0, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc94QBAs.s 			page 2


  58 0018 02B0     		add	sp, sp, #8
  59              		@ sp needed
  60 001a 70BD     		pop	{r4, r5, r6, pc}
  61              	.L5:
  62 001c 0546     		mov	r5, r0
  63 001e FFF7FEFF 		bl	millis
  64 0022 A369     		ldr	r3, [r4, #24]
  65 0024 C01A     		subs	r0, r0, r3
  66 0026 6328     		cmp	r0, #99
  67 0028 F1D9     		bls	.L7
  68 002a 2946     		mov	r1, r5
  69 002c 01AB     		add	r3, sp, #4
  70 002e 0422     		movs	r2, #4
  71 0030 2046     		mov	r0, r4
  72 0032 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  73 0036 0546     		mov	r5, r0
  74 0038 10B1     		cbz	r0, .L8
  75              	.L21:
  76 003a 84F82050 		strb	r5, [r4, #32]
  77 003e EAE7     		b	.L18
  78              	.L8:
  79 0040 FFF7FEFF 		bl	millis
  80 0044 019A     		ldr	r2, [sp, #4]
  81 0046 134B     		ldr	r3, .L22
  82 0048 A061     		str	r0, [r4, #24]
  83 004a 1340     		ands	r3, r3, r2
  84 004c 73B9     		cbnz	r3, .L12
  85 004e 124B     		ldr	r3, .L22+4
  86 0050 1340     		ands	r3, r3, r2
  87 0052 7BB1     		cbz	r3, .L11
  88 0054 D103     		lsls	r1, r2, #15
  89 0056 09D5     		bpl	.L12
  90 0058 02F00203 		and	r3, r2, #2
  91 005c D207     		lsls	r2, r2, #31
  92 005e 02D4     		bmi	.L13
  93 0060 23B9     		cbnz	r3, .L12
  94 0062 0225     		movs	r5, #2
  95 0064 E9E7     		b	.L21
  96              	.L13:
  97 0066 0423     		movs	r3, #4
  98 0068 84F82030 		strb	r3, [r4, #32]
  99              	.L12:
 100 006c 0625     		movs	r5, #6
 101 006e 84F82050 		strb	r5, [r4, #32]
 102 0072 D0E7     		b	.L18
 103              	.L11:
 104 0074 920C     		lsrs	r2, r2, #18
 105 0076 02F40053 		and	r3, r2, #8192
 106 007a 5B42     		negs	r3, r3
 107 007c 1343     		orrs	r3, r3, r2
 108 007e 07EE903A 		vmov	s15, r3	@ int
 109 0082 FAEECF7A 		vcvt.f32.s32	s15, s15, #2
 110 0086 C4ED077A 		vstr.32	s15, [r4, #28]
 111 008a C6ED007A 		vstr.32	s15, [r6]
 112 008e 84F82050 		strb	r5, [r4, #32]
 113 0092 C0E7     		b	.L18
 114              	.L23:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc94QBAs.s 			page 3


 115              		.align	2
 116              	.L22:
 117 0094 08000200 		.word	131080
 118 0098 07000100 		.word	65543
 119              		.size	_ZN23ThermocoupleSensor3185514GetTemperatureERf, .-_ZN23ThermocoupleSensor3185514GetTemperat
 120              		.section	.text._ZN23ThermocoupleSensor31855D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 121              		.align	1
 122              		.p2align 2,,3
 123              		.weak	_ZN23ThermocoupleSensor31855D2Ev
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	_ZN23ThermocoupleSensor31855D2Ev, %function
 129              	_ZN23ThermocoupleSensor31855D2Ev:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132 0000 10B5     		push	{r4, lr}
 133 0002 034B     		ldr	r3, .L26
 134 0004 0360     		str	r3, [r0]
 135 0006 0446     		mov	r4, r0
 136 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 137 000c 2046     		mov	r0, r4
 138 000e 10BD     		pop	{r4, pc}
 139              	.L27:
 140              		.align	2
 141              	.L26:
 142 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 143              		.size	_ZN23ThermocoupleSensor31855D2Ev, .-_ZN23ThermocoupleSensor31855D2Ev
 144              		.weak	_ZN23ThermocoupleSensor31855D1Ev
 145              		.thumb_set _ZN23ThermocoupleSensor31855D1Ev,_ZN23ThermocoupleSensor31855D2Ev
 146              		.section	.text._ZN23ThermocoupleSensor31855D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 147              		.align	1
 148              		.p2align 2,,3
 149              		.weak	_ZN23ThermocoupleSensor31855D0Ev
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZN23ThermocoupleSensor31855D0Ev, %function
 155              	_ZN23ThermocoupleSensor31855D0Ev:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 10B5     		push	{r4, lr}
 159 0002 054B     		ldr	r3, .L30
 160 0004 0360     		str	r3, [r0]
 161 0006 0446     		mov	r4, r0
 162 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 163 000c 2046     		mov	r0, r4
 164 000e 2421     		movs	r1, #36
 165 0010 FFF7FEFF 		bl	_ZdlPvj
 166 0014 2046     		mov	r0, r4
 167 0016 10BD     		pop	{r4, pc}
 168              	.L31:
 169              		.align	2
 170              	.L30:
 171 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc94QBAs.s 			page 4


 172              		.size	_ZN23ThermocoupleSensor31855D0Ev, .-_ZN23ThermocoupleSensor31855D0Ev
 173              		.section	.text._ZN23ThermocoupleSensor31855C2Ej,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZN23ThermocoupleSensor31855C2Ej
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZN23ThermocoupleSensor31855C2Ej, %function
 182              	_ZN23ThermocoupleSensor31855C2Ej:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 10B5     		push	{r4, lr}
 186 0002 084A     		ldr	r2, .L34
 187 0004 82B0     		sub	sp, sp, #8
 188 0006 0023     		movs	r3, #0
 189 0008 CDE90032 		strd	r3, r2, [sp]
 190 000c A1F16403 		sub	r3, r1, #100
 191 0010 054A     		ldr	r2, .L34+4
 192 0012 0446     		mov	r4, r0
 193 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 194 0018 044B     		ldr	r3, .L34+8
 195 001a 2360     		str	r3, [r4]
 196 001c 2046     		mov	r0, r4
 197 001e 02B0     		add	sp, sp, #8
 198              		@ sp needed
 199 0020 10BD     		pop	{r4, pc}
 200              	.L35:
 201 0022 00BF     		.align	2
 202              	.L34:
 203 0024 00093D00 		.word	4000000
 204 0028 00000000 		.word	.LC0
 205 002c 08000000 		.word	.LANCHOR0+8
 206              		.size	_ZN23ThermocoupleSensor31855C2Ej, .-_ZN23ThermocoupleSensor31855C2Ej
 207              		.global	_ZN23ThermocoupleSensor31855C1Ej
 208              		.thumb_set _ZN23ThermocoupleSensor31855C1Ej,_ZN23ThermocoupleSensor31855C2Ej
 209              		.weak	_ZTV20SpiTemperatureSensor
 210              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 211              		.align	2
 212              		.type	_ZTV20SpiTemperatureSensor, %object
 213              		.size	_ZTV20SpiTemperatureSensor, 28
 214              	_ZTV20SpiTemperatureSensor:
 215 0000 00000000 		.word	0
 216 0004 00000000 		.word	0
 217 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 218 000c 00000000 		.word	__cxa_pure_virtual
 219 0010 00000000 		.word	__cxa_pure_virtual
 220 0014 00000000 		.word	0
 221 0018 00000000 		.word	0
 222              		.global	_ZTV23ThermocoupleSensor31855
 223              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 224              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 225              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 226              	_ZL28cpu_irq_prev_interrupt_state:
 227 0000 00       		.space	1
 228              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc94QBAs.s 			page 5


 229              		.align	2
 230              		.type	_ZL32cpu_irq_critical_section_counter, %object
 231              		.size	_ZL32cpu_irq_critical_section_counter, 4
 232              	_ZL32cpu_irq_critical_section_counter:
 233 0000 00000000 		.space	4
 234              		.section	.rodata._ZN23ThermocoupleSensor31855C2Ej.str1.4,"aMS",%progbits,1
 235              		.align	2
 236              	.LC0:
 237 0000 54686572 		.ascii	"Thermocouple (MAX31855)\000"
 237      6D6F636F 
 237      75706C65 
 237      20284D41 
 237      58333138 
 238              		.section	.rodata._ZTV23ThermocoupleSensor31855,"a",%progbits
 239              		.align	2
 240              		.set	.LANCHOR0,. + 0
 241              		.type	_ZTV23ThermocoupleSensor31855, %object
 242              		.size	_ZTV23ThermocoupleSensor31855, 28
 243              	_ZTV23ThermocoupleSensor31855:
 244 0000 00000000 		.word	0
 245 0004 00000000 		.word	0
 246 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 247 000c 00000000 		.word	_ZN23ThermocoupleSensor318554InitEv
 248 0010 00000000 		.word	_ZN23ThermocoupleSensor3185514GetTemperatureERf
 249 0014 00000000 		.word	_ZN23ThermocoupleSensor31855D1Ev
 250 0018 00000000 		.word	_ZN23ThermocoupleSensor31855D0Ev
 251              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
