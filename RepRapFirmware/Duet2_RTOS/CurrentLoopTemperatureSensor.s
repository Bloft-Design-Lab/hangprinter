ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 1


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
  13              		.file	"CurrentLoopTemperatureSensor.cpp"
  14              		.text
  15              		.section	.text._ZN28CurrentLoopTemperatureSensorD2Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN28CurrentLoopTemperatureSensorD2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN28CurrentLoopTemperatureSensorD2Ev, %function
  24              	_ZN28CurrentLoopTemperatureSensorD2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 034B     		ldr	r3, .L4
  29 0004 0360     		str	r3, [r0]
  30 0006 0446     		mov	r4, r0
  31 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
  32 000c 2046     		mov	r0, r4
  33 000e 10BD     		pop	{r4, pc}
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 0010 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  38              		.size	_ZN28CurrentLoopTemperatureSensorD2Ev, .-_ZN28CurrentLoopTemperatureSensorD2Ev
  39              		.weak	_ZN28CurrentLoopTemperatureSensorD1Ev
  40              		.thumb_set _ZN28CurrentLoopTemperatureSensorD1Ev,_ZN28CurrentLoopTemperatureSensorD2Ev
  41              		.section	.text._ZN28CurrentLoopTemperatureSensorD0Ev,"axG",%progbits,_ZN28CurrentLoopTemperatureSe
  42              		.align	1
  43              		.p2align 2,,3
  44              		.weak	_ZN28CurrentLoopTemperatureSensorD0Ev
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN28CurrentLoopTemperatureSensorD0Ev, %function
  50              	_ZN28CurrentLoopTemperatureSensorD0Ev:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 10B5     		push	{r4, lr}
  54 0002 054B     		ldr	r3, .L8
  55 0004 0360     		str	r3, [r0]
  56 0006 0446     		mov	r4, r0
  57 0008 FFF7FEFF 		bl	_ZN17TemperatureSensorD2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 2


  58 000c 2046     		mov	r0, r4
  59 000e 3C21     		movs	r1, #60
  60 0010 FFF7FEFF 		bl	_ZdlPvj
  61 0014 2046     		mov	r0, r4
  62 0016 10BD     		pop	{r4, pc}
  63              	.L9:
  64              		.align	2
  65              	.L8:
  66 0018 08000000 		.word	_ZTV20SpiTemperatureSensor+8
  67              		.size	_ZN28CurrentLoopTemperatureSensorD0Ev, .-_ZN28CurrentLoopTemperatureSensorD0Ev
  68              		.global	__aeabi_f2d
  69              		.section	.text._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef,"ax",%prog
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, %function
  78              	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef:
  79              		@ args = 4, pretend = 0, frame = 8
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  82 0002 40F23114 		movw	r4, #305
  83 0006 A142     		cmp	r1, r4
  84 0008 85B0     		sub	sp, sp, #20
  85 000a 02D0     		beq	.L15
  86              	.L11:
  87 000c 0120     		movs	r0, #1
  88 000e 05B0     		add	sp, sp, #20
  89              		@ sp needed
  90 0010 F0BD     		pop	{r4, r5, r6, r7, pc}
  91              	.L15:
  92 0012 04AE     		add	r6, sp, #16
  93 0014 1D46     		mov	r5, r3
  94 0016 0023     		movs	r3, #0
  95 0018 06F8013D 		strb	r3, [r6, #-1]!
  96 001c 0446     		mov	r4, r0
  97 001e 3346     		mov	r3, r6
  98 0020 4C21     		movs	r1, #76
  99 0022 1746     		mov	r7, r2
 100 0024 00F12402 		add	r2, r0, #36
 101 0028 2846     		mov	r0, r5
 102 002a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 103 002e 3346     		mov	r3, r6
 104 0030 04F12802 		add	r2, r4, #40
 105 0034 4821     		movs	r1, #72
 106 0036 2846     		mov	r0, r5
 107 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 108 003c 3346     		mov	r3, r6
 109 003e 04F12C02 		add	r2, r4, #44
 110 0042 4321     		movs	r1, #67
 111 0044 2846     		mov	r0, r5
 112 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 113 004a 3346     		mov	r3, r6
 114 004c 04F13002 		add	r2, r4, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 3


 115 0050 4421     		movs	r1, #68
 116 0052 2846     		mov	r0, r5
 117 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 118 0058 3246     		mov	r2, r6
 119 005a 2946     		mov	r1, r5
 120 005c 2046     		mov	r0, r4
 121 005e FFF7FEFF 		bl	_ZN17TemperatureSensor22TryConfigureHeaterNameER11GCodeBufferRb
 122 0062 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 123 0066 B3B1     		cbz	r3, .L12
 124 0068 94ED097A 		vldr.32	s14, [r4, #36]
 125 006c D4ED0A7A 		vldr.32	s15, [r4, #40]
 126 0070 DFED176A 		vldr.32	s13, .L16
 127 0074 77EEC75A 		vsub.f32	s11, s15, s14
 128 0078 B5EE006A 		vmov.f32	s12, #2.5e-1
 129 007c A5EEC67A 		vfms.f32	s14, s11, s12
 130 0080 0120     		movs	r0, #1
 131 0082 77EEC77A 		vsub.f32	s15, s15, s14
 132 0086 84ED0D7A 		vstr.32	s14, [r4, #52]
 133 008a 67EEA67A 		vmul.f32	s15, s15, s13
 134 008e C4ED0E7A 		vstr.32	s15, [r4, #56]
 135 0092 05B0     		add	sp, sp, #20
 136              		@ sp needed
 137 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 138              	.L12:
 139 0096 2846     		mov	r0, r5
 140 0098 5821     		movs	r1, #88
 141 009a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 142 009e 0028     		cmp	r0, #0
 143 00a0 B4D1     		bne	.L11
 144 00a2 0A9A     		ldr	r2, [sp, #40]
 145 00a4 3946     		mov	r1, r7
 146 00a6 2046     		mov	r0, r4
 147 00a8 FFF7FEFF 		bl	_ZNK17TemperatureSensor22CopyBasicHeaterDetailsEjRK9StringRef
 148 00ac 606A     		ldr	r0, [r4, #36]	@ float
 149 00ae FFF7FEFF 		bl	__aeabi_f2d
 150 00b2 0646     		mov	r6, r0
 151 00b4 A06A     		ldr	r0, [r4, #40]	@ float
 152 00b6 0F46     		mov	r7, r1
 153 00b8 FFF7FEFF 		bl	__aeabi_f2d
 154 00bc 3246     		mov	r2, r6
 155 00be CDE90001 		strd	r0, [sp]
 156 00c2 3B46     		mov	r3, r7
 157 00c4 0349     		ldr	r1, .L16+4
 158 00c6 0A98     		ldr	r0, [sp, #40]
 159 00c8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 160 00cc 9EE7     		b	.L11
 161              	.L17:
 162 00ce 00BF     		.align	2
 163              	.L16:
 164 00d0 00008039 		.word	964689920
 165 00d4 00000000 		.word	.LC0
 166              		.size	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef, .-_ZN28CurrentLoop
 167              		.section	.text._ZN28CurrentLoopTemperatureSensorC2Ej,"ax",%progbits
 168              		.align	1
 169              		.p2align 2,,3
 170              		.global	_ZN28CurrentLoopTemperatureSensorC2Ej
 171              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu fpv4-sp-d16
 175              		.type	_ZN28CurrentLoopTemperatureSensorC2Ej, %function
 176              	_ZN28CurrentLoopTemperatureSensorC2Ej:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 70B5     		push	{r4, r5, r6, lr}
 180 0002 0D4B     		ldr	r3, .L20
 181 0004 0D4A     		ldr	r2, .L20+4
 182 0006 0E4E     		ldr	r6, .L20+8
 183 0008 82B0     		sub	sp, sp, #8
 184 000a 0025     		movs	r5, #0
 185 000c CDE90053 		strd	r5, r3, [sp]
 186 0010 A1F59673 		sub	r3, r1, #300
 187 0014 0446     		mov	r4, r0
 188 0016 FFF7FEFF 		bl	_ZN20SpiTemperatureSensorC2EjPKcjhm
 189 001a 0A48     		ldr	r0, .L20+12
 190 001c 0A49     		ldr	r1, .L20+16
 191 001e 0B4A     		ldr	r2, .L20+20
 192 0020 0B4B     		ldr	r3, .L20+24
 193 0022 6062     		str	r0, [r4, #36]	@ float
 194 0024 2046     		mov	r0, r4
 195 0026 C4E90B55 		strd	r5, r5, [r4, #44]
 196 002a 2660     		str	r6, [r4]
 197 002c A162     		str	r1, [r4, #40]	@ float
 198 002e 6263     		str	r2, [r4, #52]	@ float
 199 0030 A363     		str	r3, [r4, #56]	@ float
 200 0032 02B0     		add	sp, sp, #8
 201              		@ sp needed
 202 0034 70BD     		pop	{r4, r5, r6, pc}
 203              	.L21:
 204 0036 00BF     		.align	2
 205              	.L20:
 206 0038 40420F00 		.word	1000000
 207 003c 00000000 		.word	.LC1
 208 0040 08000000 		.word	.LANCHOR0+8
 209 0044 0080C043 		.word	1136689152
 210 0048 0000C844 		.word	1153957888
 211 004c 0080A242 		.word	1117945856
 212 0050 00D8BD3E 		.word	1052628992
 213              		.size	_ZN28CurrentLoopTemperatureSensorC2Ej, .-_ZN28CurrentLoopTemperatureSensorC2Ej
 214              		.global	_ZN28CurrentLoopTemperatureSensorC1Ej
 215              		.thumb_set _ZN28CurrentLoopTemperatureSensorC1Ej,_ZN28CurrentLoopTemperatureSensorC2Ej
 216              		.section	.text._ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, %function
 225              	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 5


 229 0000 90ED097A 		vldr.32	s14, [r0, #36]
 230 0004 D0ED0A7A 		vldr.32	s15, [r0, #40]
 231 0008 DFED086A 		vldr.32	s13, .L23
 232 000c 77EEC75A 		vsub.f32	s11, s15, s14
 233 0010 B5EE006A 		vmov.f32	s12, #2.5e-1
 234 0014 A5EEC67A 		vfms.f32	s14, s11, s12
 235 0018 77EEC77A 		vsub.f32	s15, s15, s14
 236 001c 80ED0D7A 		vstr.32	s14, [r0, #52]
 237 0020 67EEA67A 		vmul.f32	s15, s15, s13
 238 0024 C0ED0E7A 		vstr.32	s15, [r0, #56]
 239 0028 7047     		bx	lr
 240              	.L24:
 241 002a 00BF     		.align	2
 242              	.L23:
 243 002c 00008039 		.word	964689920
 244              		.size	_ZN28CurrentLoopTemperatureSensor21CalcDerivedParametersEv, .-_ZN28CurrentLoopTemperatureSen
 245              		.section	.text._ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, %function
 254              	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv:
 255              		@ args = 0, pretend = 0, frame = 8
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 70B5     		push	{r4, r5, r6, lr}
 258 0002 274B     		ldr	r3, .L33
 259 0004 026B     		ldr	r2, [r0, #48]
 260 0006 1968     		ldr	r1, [r3]
 261 0008 002A     		cmp	r2, #0
 262 000a 14BF     		ite	ne
 263 000c 8022     		movne	r2, #128
 264 000e C022     		moveq	r2, #192
 265 0010 C907     		lsls	r1, r1, #31
 266 0012 82B0     		sub	sp, sp, #8
 267 0014 0446     		mov	r4, r0
 268 0016 06D4     		bmi	.L27
 269 0018 C16A     		ldr	r1, [r0, #44]
 270 001a 2248     		ldr	r0, .L33+4
 271 001c 42EAC102 		orr	r2, r2, r1, lsl #3
 272 0020 0121     		movs	r1, #1
 273 0022 0270     		strb	r2, [r0]
 274 0024 1960     		str	r1, [r3]
 275              	.L27:
 276 0026 01AB     		add	r3, sp, #4
 277 0028 0322     		movs	r2, #3
 278 002a 1E49     		ldr	r1, .L33+4
 279 002c 2046     		mov	r0, r4
 280 002e FFF7FEFF 		bl	_ZNK20SpiTemperatureSensor16DoSpiTransactionEPKhjRm
 281 0032 84F82000 		strb	r0, [r4, #32]
 282 0036 18BB     		cbnz	r0, .L25
 283 0038 019A     		ldr	r2, [sp, #4]
 284 003a 5109     		lsrs	r1, r2, #5
 285 003c C1F30C00 		ubfx	r0, r1, #0, #13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 6


 286 0040 B0F5805F 		cmp	r0, #4096
 287 0044 19D2     		bcs	.L29
 288 0046 D308     		lsrs	r3, r2, #3
 289 0048 01F00106 		and	r6, r1, #1
 290 004c 5508     		lsrs	r5, r2, #1
 291 004e 03F00203 		and	r3, r3, #2
 292 0052 3343     		orrs	r3, r3, r6
 293 0054 05F00405 		and	r5, r5, #4
 294 0058 5600     		lsls	r6, r2, #1
 295 005a 2B43     		orrs	r3, r3, r5
 296 005c 06F00806 		and	r6, r6, #8
 297 0060 D500     		lsls	r5, r2, #3
 298 0062 3343     		orrs	r3, r3, r6
 299 0064 05F01005 		and	r5, r5, #16
 300 0068 5201     		lsls	r2, r2, #5
 301 006a 2B43     		orrs	r3, r3, r5
 302 006c 02F02002 		and	r2, r2, #32
 303 0070 01F03F01 		and	r1, r1, #63
 304 0074 1343     		orrs	r3, r3, r2
 305 0076 9942     		cmp	r1, r3
 306 0078 04D0     		beq	.L30
 307              	.L29:
 308 007a 0923     		movs	r3, #9
 309 007c 84F82030 		strb	r3, [r4, #32]
 310              	.L25:
 311 0080 02B0     		add	sp, sp, #8
 312              		@ sp needed
 313 0082 70BD     		pop	{r4, r5, r6, pc}
 314              	.L30:
 315 0084 07EE900A 		vmov	s15, r0	@ int
 316 0088 D4ED0E6A 		vldr.32	s13, [r4, #56]
 317 008c 94ED0D7A 		vldr.32	s14, [r4, #52]
 318 0090 F8EEE77A 		vcvt.f32.s32	s15, s15
 319 0094 A6EEA77A 		vfma.f32	s14, s13, s15
 320 0098 84ED077A 		vstr.32	s14, [r4, #28]
 321 009c 02B0     		add	sp, sp, #8
 322              		@ sp needed
 323 009e 70BD     		pop	{r4, r5, r6, pc}
 324              	.L34:
 325              		.align	2
 326              	.L33:
 327 00a0 00000000 		.word	.LANCHOR1
 328 00a4 00000000 		.word	.LANCHOR2
 329              		.size	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv, .-_ZN28CurrentLoopTemperatu
 330              		.section	.text._ZN28CurrentLoopTemperatureSensor4InitEv,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZN28CurrentLoopTemperatureSensor4InitEv
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZN28CurrentLoopTemperatureSensor4InitEv, %function
 339              	_ZN28CurrentLoopTemperatureSensor4InitEv:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 7


 343 0002 0446     		mov	r4, r0
 344 0004 FFF7FEFF 		bl	_ZN20SpiTemperatureSensor7InitSpiEv
 345 0008 0325     		movs	r5, #3
 346              	.L37:
 347 000a 2046     		mov	r0, r4
 348 000c FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 349 0010 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 350 0014 6420     		movs	r0, #100
 351 0016 1BB1     		cbz	r3, .L36
 352 0018 FFF7FEFF 		bl	_Z5delaym
 353 001c 013D     		subs	r5, r5, #1
 354 001e F4D1     		bne	.L37
 355              	.L36:
 356 0020 FFF7FEFF 		bl	millis
 357 0024 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 358 0028 A061     		str	r0, [r4, #24]
 359 002a 03B9     		cbnz	r3, .L44
 360 002c 70BD     		pop	{r4, r5, r6, pc}
 361              	.L44:
 362 002e 074A     		ldr	r2, .L45
 363 0030 1846     		mov	r0, r3
 364 0032 5468     		ldr	r4, [r2, #4]	@ unaligned
 365 0034 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 366 0038 054A     		ldr	r2, .L45+4
 367 003a 0346     		mov	r3, r0
 368 003c 40F2B511 		movw	r1, #437
 369 0040 2046     		mov	r0, r4
 370 0042 BDE87040 		pop	{r4, r5, r6, lr}
 371 0046 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 372              	.L46:
 373 004a 00BF     		.align	2
 374              	.L45:
 375 004c 00000000 		.word	reprap
 376 0050 00000000 		.word	.LC2
 377              		.size	_ZN28CurrentLoopTemperatureSensor4InitEv, .-_ZN28CurrentLoopTemperatureSensor4InitEv
 378              		.section	.text._ZN28CurrentLoopTemperatureSensor14GetTemperatureERf,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv4-sp-d16
 386              		.type	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, %function
 387              	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf:
 388              		@ args = 0, pretend = 0, frame = 0
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 38B5     		push	{r3, r4, r5, lr}
 391 0002 0446     		mov	r4, r0
 392 0004 0D46     		mov	r5, r1
 393 0006 FFF7FEFF 		bl	_Z11inInterruptv
 394 000a 20B1     		cbz	r0, .L52
 395              	.L49:
 396 000c E369     		ldr	r3, [r4, #28]	@ float
 397 000e 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 398 0012 2B60     		str	r3, [r5]	@ float
 399 0014 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 8


 400              	.L52:
 401 0016 FFF7FEFF 		bl	millis
 402 001a A369     		ldr	r3, [r4, #24]
 403 001c C01A     		subs	r0, r0, r3
 404 001e 6328     		cmp	r0, #99
 405 0020 F4D9     		bls	.L49
 406 0022 2046     		mov	r0, r4
 407 0024 FFF7FEFF 		bl	_ZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEv
 408 0028 E369     		ldr	r3, [r4, #28]	@ float
 409 002a 94F82000 		ldrb	r0, [r4, #32]	@ zero_extendqisi2
 410 002e 2B60     		str	r3, [r5]	@ float
 411 0030 38BD     		pop	{r3, r4, r5, pc}
 412              		.size	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf, .-_ZN28CurrentLoopTemperatureSensor14G
 413              		.weak	_ZTV20SpiTemperatureSensor
 414 0032 00BF     		.section	.rodata._ZTV20SpiTemperatureSensor,"aG",%progbits,_ZTV20SpiTemperatureSensor,comdat
 415              		.align	2
 416              		.type	_ZTV20SpiTemperatureSensor, %object
 417              		.size	_ZTV20SpiTemperatureSensor, 28
 418              	_ZTV20SpiTemperatureSensor:
 419 0000 00000000 		.word	0
 420 0004 00000000 		.word	0
 421 0008 00000000 		.word	_ZN17TemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 422 000c 00000000 		.word	__cxa_pure_virtual
 423 0010 00000000 		.word	__cxa_pure_virtual
 424 0014 00000000 		.word	0
 425 0018 00000000 		.word	0
 426              		.global	_ZTV28CurrentLoopTemperatureSensor
 427              		.section	.bss._ZGVZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData,"aw",%no
 428              		.align	2
 429              		.set	.LANCHOR1,. + 0
 430              		.type	_ZGVZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, %object
 431              		.size	_ZGVZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, 4
 432              	_ZGVZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData:
 433 0000 00000000 		.space	4
 434              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 435              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 436              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 437              	_ZL28cpu_irq_prev_interrupt_state:
 438 0000 00       		.space	1
 439              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 440              		.align	2
 441              		.type	_ZL32cpu_irq_critical_section_counter, %object
 442              		.size	_ZL32cpu_irq_critical_section_counter, 4
 443              	_ZL32cpu_irq_critical_section_counter:
 444 0000 00000000 		.space	4
 445              		.section	.bss._ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData,"aw",%nobi
 446              		.align	2
 447              		.set	.LANCHOR2,. + 0
 448              		.type	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, %object
 449              		.size	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData, 3
 450              	_ZZN28CurrentLoopTemperatureSensor26TryGetLinearAdcTemperatureEvE7adcData:
 451 0000 000000   		.space	3
 452              		.section	.rodata._ZN28CurrentLoopTemperatureSensor4InitEv.str1.4,"aMS",%progbits,1
 453              		.align	2
 454              	.LC2:
 455 0000 4661696C 		.ascii	"Failed to initialise daughter board ADC: %s\012\000"
 455      65642074 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccWOFJue.s 			page 9


 455      6F20696E 
 455      69746961 
 455      6C697365 
 456              		.section	.rodata._ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef.str1.4,"
 457              		.align	2
 458              	.LC0:
 459 0000 2C207465 		.ascii	", temperature range %.1f to %.1fC\000"
 459      6D706572 
 459      61747572 
 459      65207261 
 459      6E676520 
 460              		.section	.rodata._ZN28CurrentLoopTemperatureSensorC2Ej.str1.4,"aMS",%progbits,1
 461              		.align	2
 462              	.LC1:
 463 0000 43757272 		.ascii	"Current Loop\000"
 463      656E7420 
 463      4C6F6F70 
 463      00
 464              		.section	.rodata._ZTV28CurrentLoopTemperatureSensor,"a",%progbits
 465              		.align	2
 466              		.set	.LANCHOR0,. + 0
 467              		.type	_ZTV28CurrentLoopTemperatureSensor, %object
 468              		.size	_ZTV28CurrentLoopTemperatureSensor, 28
 469              	_ZTV28CurrentLoopTemperatureSensor:
 470 0000 00000000 		.word	0
 471 0004 00000000 		.word	0
 472 0008 00000000 		.word	_ZN28CurrentLoopTemperatureSensor9ConfigureEjjR11GCodeBufferRK9StringRef
 473 000c 00000000 		.word	_ZN28CurrentLoopTemperatureSensor4InitEv
 474 0010 00000000 		.word	_ZN28CurrentLoopTemperatureSensor14GetTemperatureERf
 475 0014 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD1Ev
 476 0018 00000000 		.word	_ZN28CurrentLoopTemperatureSensorD0Ev
 477              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
