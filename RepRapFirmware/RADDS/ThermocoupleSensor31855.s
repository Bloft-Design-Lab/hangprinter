ARM GAS  /tmp/ccyuKsUZ.s 			page 1


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
  11              		.file	"ThermocoupleSensor31855.cpp"
  12              		.section	.text._ZN23ThermocoupleSensor318554InitEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN23ThermocoupleSensor318554InitEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN23ThermocoupleSensor318554InitEv, %function
  21              	_ZN23ThermocoupleSensor318554InitEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
  27 0008 FFF7FEFF 		bl	millis
  28 000c A061     		str	r0, [r4, #24]
  29 000e 10BD     		pop	{r4, pc}
  30              		.size	_ZN23ThermocoupleSensor318554InitEv, .-_ZN23ThermocoupleSensor318554InitEv
  31              		.global	__aeabi_i2f
  32              		.global	__aeabi_fmul
  33              		.section	.text._ZN23ThermocoupleSensor3185514GetTemperatureERf,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN23ThermocoupleSensor3185514GetTemperatureERf
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu softvfp
  41              		.type	_ZN23ThermocoupleSensor3185514GetTemperatureERf, %function
  42              	_ZN23ThermocoupleSensor3185514GetTemperatureERf:
  43              		@ args = 0, pretend = 0, frame = 8
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 70B5     		push	{r4, r5, r6, lr}
  46 0002 82B0     		sub	sp, sp, #8
  47 0004 0446     		mov	r4, r0
  48 0006 0E46     		mov	r6, r1
  49 0008 FFF7FEFF 		bl	_Z11inInterruptv
  50 000c 30B1     		cbz	r0, .L28
  51              	.L4:
  52 000e E369     		ldr	r3, [r4, #28]	@ float
  53 0010 94F82050 		ldrb	r5, [r4, #32]	@ zero_extendqisi2
  54 0014 3360     		str	r3, [r6]	@ float
  55              	.L20:
  56 0016 2846     		mov	r0, r5
  57 0018 02B0     		add	sp, sp, #8
ARM GAS  /tmp/ccyuKsUZ.s 			page 2


  58              		@ sp needed
  59 001a 70BD     		pop	{r4, r5, r6, pc}
  60              	.L28:
  61 001c 0546     		mov	r5, r0
  62 001e FFF7FEFF 		bl	millis
  63 0022 A369     		ldr	r3, [r4, #24]
  64 0024 C01A     		subs	r0, r0, r3
  65 0026 6328     		cmp	r0, #99
  66 0028 F1D9     		bls	.L4
  67 002a 2946     		mov	r1, r5
  68 002c 01AB     		add	r3, sp, #4
  69 002e 0422     		movs	r2, #4
  70 0030 2046     		mov	r0, r4
  71 0032 FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
  72 0036 0546     		mov	r5, r0
  73 0038 20B1     		cbz	r0, .L29
  74              	.L24:
  75 003a 2846     		mov	r0, r5
  76 003c 84F82050 		strb	r5, [r4, #32]
  77 0040 02B0     		add	sp, sp, #8
  78              		@ sp needed
  79 0042 70BD     		pop	{r4, r5, r6, pc}
  80              	.L29:
  81 0044 FFF7FEFF 		bl	millis
  82 0048 019A     		ldr	r2, [sp, #4]
  83 004a 134B     		ldr	r3, .L30
  84 004c A061     		str	r0, [r4, #24]
  85 004e 1340     		ands	r3, r3, r2
  86 0050 4BB9     		cbnz	r3, .L9
  87 0052 124B     		ldr	r3, .L30+4
  88 0054 1340     		ands	r3, r3, r2
  89 0056 53B1     		cbz	r3, .L8
  90 0058 D003     		lsls	r0, r2, #15
  91 005a 04D5     		bpl	.L9
  92 005c D107     		lsls	r1, r2, #31
  93 005e 14D5     		bpl	.L10
  94 0060 0423     		movs	r3, #4
  95 0062 84F82030 		strb	r3, [r4, #32]
  96              	.L9:
  97 0066 0625     		movs	r5, #6
  98 0068 84F82050 		strb	r5, [r4, #32]
  99 006c D3E7     		b	.L20
 100              	.L8:
 101 006e 920C     		lsrs	r2, r2, #18
 102 0070 02F40050 		and	r0, r2, #8192
 103 0074 4042     		negs	r0, r0
 104 0076 1043     		orrs	r0, r0, r2
 105 0078 FFF7FEFF 		bl	__aeabi_i2f
 106 007c 4FF07A51 		mov	r1, #1048576000
 107 0080 FFF7FEFF 		bl	__aeabi_fmul
 108 0084 E061     		str	r0, [r4, #28]	@ float
 109 0086 3060     		str	r0, [r6]	@ float
 110 0088 D7E7     		b	.L24
 111              	.L10:
 112 008a 9307     		lsls	r3, r2, #30
 113 008c EBD4     		bmi	.L9
 114 008e 0225     		movs	r5, #2
ARM GAS  /tmp/ccyuKsUZ.s 			page 3


 115 0090 84F82050 		strb	r5, [r4, #32]
 116 0094 BFE7     		b	.L20
 117              	.L31:
 118 0096 00BF     		.align	2
 119              	.L30:
 120 0098 08000200 		.word	131080
 121 009c 07000100 		.word	65543
 122              		.size	_ZN23ThermocoupleSensor3185514GetTemperatureERf, .-_ZN23ThermocoupleSensor3185514GetTemperat
 123              		.section	.text._ZN23ThermocoupleSensor31855D2Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 124              		.align	1
 125              		.p2align 2,,3
 126              		.weak	_ZN23ThermocoupleSensor31855D2Ev
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu softvfp
 131              		.type	_ZN23ThermocoupleSensor31855D2Ev, %function
 132              	_ZN23ThermocoupleSensor31855D2Ev:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135 0000 10B5     		push	{r4, lr}
 136 0002 0446     		mov	r4, r0
 137 0004 024B     		ldr	r3, .L34
 138 0006 0360     		str	r3, [r0]
 139 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 140 000c 2046     		mov	r0, r4
 141 000e 10BD     		pop	{r4, pc}
 142              	.L35:
 143              		.align	2
 144              	.L34:
 145 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 146              		.size	_ZN23ThermocoupleSensor31855D2Ev, .-_ZN23ThermocoupleSensor31855D2Ev
 147              		.weak	_ZN23ThermocoupleSensor31855D1Ev
 148              		.thumb_set _ZN23ThermocoupleSensor31855D1Ev,_ZN23ThermocoupleSensor31855D2Ev
 149              		.section	.text._ZN23ThermocoupleSensor31855D0Ev,"axG",%progbits,_ZN23ThermocoupleSensor31855D5Ev,c
 150              		.align	1
 151              		.p2align 2,,3
 152              		.weak	_ZN23ThermocoupleSensor31855D0Ev
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu softvfp
 157              		.type	_ZN23ThermocoupleSensor31855D0Ev, %function
 158              	_ZN23ThermocoupleSensor31855D0Ev:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161 0000 10B5     		push	{r4, lr}
 162 0002 0446     		mov	r4, r0
 163 0004 044B     		ldr	r3, .L38
 164 0006 0360     		str	r3, [r0]
 165 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
 166 000c 2046     		mov	r0, r4
 167 000e 2421     		movs	r1, #36
 168 0010 FFF7FEFF 		bl	_ZdlPvj
 169 0014 2046     		mov	r0, r4
 170 0016 10BD     		pop	{r4, pc}
 171              	.L39:
ARM GAS  /tmp/ccyuKsUZ.s 			page 4


 172              		.align	2
 173              	.L38:
 174 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
 175              		.size	_ZN23ThermocoupleSensor31855D0Ev, .-_ZN23ThermocoupleSensor31855D0Ev
 176              		.section	.text._ZN23ThermocoupleSensor31855C2Ej,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN23ThermocoupleSensor31855C2Ej
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu softvfp
 184              		.type	_ZN23ThermocoupleSensor31855C2Ej, %function
 185              	_ZN23ThermocoupleSensor31855C2Ej:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188 0000 0022     		movs	r2, #0
 189 0002 10B5     		push	{r4, lr}
 190 0004 0446     		mov	r4, r0
 191 0006 074B     		ldr	r3, .L42
 192 0008 82B0     		sub	sp, sp, #8
 193 000a 8DE80C00 		stm	sp, {r2, r3}
 194 000e A1F16403 		sub	r3, r1, #100
 195 0012 054A     		ldr	r2, .L42+4
 196 0014 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 197 0018 2046     		mov	r0, r4
 198 001a 044B     		ldr	r3, .L42+8
 199 001c 2360     		str	r3, [r4]
 200 001e 02B0     		add	sp, sp, #8
 201              		@ sp needed
 202 0020 10BD     		pop	{r4, pc}
 203              	.L43:
 204 0022 00BF     		.align	2
 205              	.L42:
 206 0024 00093D00 		.word	4000000
 207 0028 00000000 		.word	.LC0
 208 002c 08000000 		.word	.LANCHOR0+8
 209              		.size	_ZN23ThermocoupleSensor31855C2Ej, .-_ZN23ThermocoupleSensor31855C2Ej
 210              		.global	_ZN23ThermocoupleSensor31855C1Ej
 211              		.thumb_set _ZN23ThermocoupleSensor31855C1Ej,_ZN23ThermocoupleSensor31855C2Ej
 212              		.weak	_ZTV20SpiTemperatureSensor
 213              		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 214              		.align	2
 215              		.type	_ZTV20SpiTemperatureSensor, %object
 216              		.size	_ZTV20SpiTemperatureSensor, 28
 217              	_ZTV20SpiTemperatureSensor:
 218 0000 00000000 		.word	0
 219 0004 00000000 		.word	0
 220 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 221 000c 00000000 		.word	__cxa_pure_virtual
 222 0010 00000000 		.word	__cxa_pure_virtual
 223 0014 00000000 		.word	0
 224 0018 00000000 		.word	0
 225              		.global	_ZTV23ThermocoupleSensor31855
 226              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 227              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 228              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccyuKsUZ.s 			page 5


 229              	_ZL28cpu_irq_prev_interrupt_state:
 230 0000 00       		.space	1
 231              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 232              		.align	2
 233              		.type	_ZL32cpu_irq_critical_section_counter, %object
 234              		.size	_ZL32cpu_irq_critical_section_counter, 4
 235              	_ZL32cpu_irq_critical_section_counter:
 236 0000 00000000 		.space	4
 237              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 238              		.align	2
 239              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 240              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 241              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 242 0000 00000000 		.space	4
 243              		.section	.rodata._ZN23ThermocoupleSensor31855C2Ej.str1.4,"aMS",%progbits,1
 244              		.align	2
 245              	.LC0:
 246 0000 54686572 		.ascii	"Thermocouple (MAX31855)\000"
 246      6D6F636F 
 246      75706C65 
 246      20284D41 
 246      58333138 
 247              		.section	.rodata._ZTV23ThermocoupleSensor31855,"a",%progbits
 248              		.align	2
 249              		.set	.LANCHOR0,. + 0
 250              		.type	_ZTV23ThermocoupleSensor31855, %object
 251              		.size	_ZTV23ThermocoupleSensor31855, 28
 252              	_ZTV23ThermocoupleSensor31855:
 253 0000 00000000 		.word	0
 254 0004 00000000 		.word	0
 255 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 256 000c 00000000 		.word	_ZN23ThermocoupleSensor318554InitEv
 257 0010 00000000 		.word	_ZN23ThermocoupleSensor3185514GetTemperatureERf
 258 0014 00000000 		.word	_ZN23ThermocoupleSensor31855D1Ev
 259 0018 00000000 		.word	_ZN23ThermocoupleSensor31855D0Ev
 260              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
