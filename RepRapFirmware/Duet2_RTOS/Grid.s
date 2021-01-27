ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 1


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
  13              		.file	"Grid.cpp"
  14              		.text
  15              		.section	.text._ZN14GridDefinitionUlP11ObjectModelE_4_FUNES1_,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14GridDefinitionUlP11ObjectModelE_4_FUNES1_, %function
  23              	_ZN14GridDefinitionUlP11ObjectModelE_4_FUNES1_:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 1430     		adds	r0, r0, #20
  28 0002 7047     		bx	lr
  29              		.size	_ZN14GridDefinitionUlP11ObjectModelE_4_FUNES1_, .-_ZN14GridDefinitionUlP11ObjectModelE_4_FUN
  30              		.section	.text._ZNK14GridDefinition19GetObjectModelTableERj,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZNK14GridDefinition19GetObjectModelTableERj
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK14GridDefinition19GetObjectModelTableERj, %function
  39              	_ZNK14GridDefinition19GetObjectModelTableERj:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0123     		movs	r3, #1
  44 0002 0B60     		str	r3, [r1]
  45 0004 0048     		ldr	r0, .L4
  46 0006 7047     		bx	lr
  47              	.L5:
  48              		.align	2
  49              	.L4:
  50 0008 00000000 		.word	.LANCHOR0
  51              		.size	_ZNK14GridDefinition19GetObjectModelTableERj, .-_ZNK14GridDefinition19GetObjectModelTableERj
  52              		.section	.text._ZN14GridDefinition13CheckValidityEv,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN14GridDefinition13CheckValidityEv
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN14GridDefinition13CheckValidityEv, %function
  61              	_ZN14GridDefinition13CheckValidityEv:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 90ED017A 		vldr.32	s14, [r0, #4]
  66 0004 D0ED027A 		vldr.32	s15, [r0, #8]
  67 0008 77EEC77A 		vsub.f32	s15, s15, s14
  68 000c B7EE007A 		vmov.f32	s14, #1.0e+0
  69 0010 F4EEC77A 		vcmpe.f32	s15, s14
  70 0014 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  71 0018 08DB     		blt	.L23
  72 001a D0ED066A 		vldr.32	s13, [r0, #24]
  73 001e 9FED2C7A 		vldr.32	s14, .L25
  74 0022 F4EEC76A 		vcmpe.f32	s13, s14
  75 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  76 002a 49DA     		bge	.L24
  77              	.L23:
  78 002c 0023     		movs	r3, #0
  79              	.L7:
  80 002e D0ED047A 		vldr.32	s15, [r0, #16]
  81 0032 90ED037A 		vldr.32	s14, [r0, #12]
  82 0036 0362     		str	r3, [r0, #32]
  83 0038 77EEC77A 		vsub.f32	s15, s15, s14
  84 003c F7EE006A 		vmov.f32	s13, #1.0e+0
  85 0040 F4EEE67A 		vcmpe.f32	s15, s13
  86 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  87 0048 34DB     		blt	.L10
  88 004a 90ED076A 		vldr.32	s12, [r0, #28]
  89 004e 9FED207A 		vldr.32	s14, .L25
  90 0052 B4EEC76A 		vcmpe.f32	s12, s14
  91 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  92 005a 2BDB     		blt	.L10
  93 005c 87EE867A 		vdiv.f32	s14, s15, s12
  94 0060 FCEEC77A 		vcvt.u32.f32	s15, s14
  95 0064 17EE902A 		vmov	r2, s15	@ int
  96 0068 0132     		adds	r2, r2, #1
  97 006a 02FB03F1 		mul	r1, r2, r3
  98 006e 0139     		subs	r1, r1, #1
  99 0070 B1F5DC7F 		cmp	r1, #440
 100 0074 4262     		str	r2, [r0, #36]
 101 0076 1FD8     		bhi	.L13
 102 0078 D0ED057A 		vldr.32	s15, [r0, #20]
 103 007c F5EEC07A 		vcmpe.f32	s15, #0
 104 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 105 0084 04D4     		bmi	.L14
 106 0086 F4EEE67A 		vcmpe.f32	s15, s13
 107 008a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 108 008e 13DB     		blt	.L13
 109              	.L14:
 110 0090 292B     		cmp	r3, #41
 111 0092 11D8     		bhi	.L13
 112 0094 90ED067A 		vldr.32	s14, [r0, #24]
 113 0098 F7EE007A 		vmov.f32	s15, #1.0e+0
 114 009c C7EE876A 		vdiv.f32	s13, s15, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 3


 115 00a0 0123     		movs	r3, #1
 116 00a2 80F83030 		strb	r3, [r0, #48]
 117 00a6 87EE867A 		vdiv.f32	s14, s15, s12
 118 00aa C0ED0A6A 		vstr.32	s13, [r0, #40]
 119 00ae 80ED0B7A 		vstr.32	s14, [r0, #44]
 120 00b2 7047     		bx	lr
 121              	.L10:
 122 00b4 0023     		movs	r3, #0
 123 00b6 4362     		str	r3, [r0, #36]
 124              	.L13:
 125 00b8 0023     		movs	r3, #0
 126 00ba 80F83030 		strb	r3, [r0, #48]
 127 00be 7047     		bx	lr
 128              	.L24:
 129 00c0 87EEA67A 		vdiv.f32	s14, s15, s13
 130 00c4 FCEEC77A 		vcvt.u32.f32	s15, s14
 131 00c8 17EE903A 		vmov	r3, s15	@ int
 132 00cc 0133     		adds	r3, r3, #1
 133 00ce AEE7     		b	.L7
 134              	.L26:
 135              		.align	2
 136              	.L25:
 137 00d0 CDCCCC3D 		.word	1036831949
 138              		.size	_ZN14GridDefinition13CheckValidityEv, .-_ZN14GridDefinition13CheckValidityEv
 139              		.section	.text._ZN14GridDefinitionC2Ev,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_ZN14GridDefinitionC2Ev
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv4-sp-d16
 147              		.type	_ZN14GridDefinitionC2Ev, %function
 148              	_ZN14GridDefinitionC2Ev:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151 0000 10B5     		push	{r4, lr}
 152 0002 0446     		mov	r4, r0
 153 0004 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
 154 0008 074A     		ldr	r2, .L29
 155 000a 2260     		str	r2, [r4]
 156 000c 0023     		movs	r3, #0
 157 000e 074A     		ldr	r2, .L29+4
 158 0010 6360     		str	r3, [r4, #4]	@ float
 159 0012 2046     		mov	r0, r4
 160 0014 E360     		str	r3, [r4, #12]	@ float
 161 0016 A361     		str	r3, [r4, #24]	@ float
 162 0018 E361     		str	r3, [r4, #28]	@ float
 163 001a A260     		str	r2, [r4, #8]	@ float
 164 001c 2261     		str	r2, [r4, #16]	@ float
 165 001e 6261     		str	r2, [r4, #20]	@ float
 166 0020 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 167 0024 10BD     		pop	{r4, pc}
 168              	.L30:
 169 0026 00BF     		.align	2
 170              	.L29:
 171 0028 08000000 		.word	.LANCHOR1+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 4


 172 002c 000080BF 		.word	-1082130432
 173              		.size	_ZN14GridDefinitionC2Ev, .-_ZN14GridDefinitionC2Ev
 174              		.global	_ZN14GridDefinitionC1Ev
 175              		.thumb_set _ZN14GridDefinitionC1Ev,_ZN14GridDefinitionC2Ev
 176              		.section	.text._ZN14GridDefinition3SetEPKfS1_fS1_,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN14GridDefinition3SetEPKfS1_fS1_
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	_ZN14GridDefinition3SetEPKfS1_fS1_, %function
 185              	_ZN14GridDefinition3SetEPKfS1_fS1_:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188 0000 38B5     		push	{r3, r4, r5, lr}
 189 0002 0D68     		ldr	r5, [r1]	@ float
 190 0004 4560     		str	r5, [r0, #4]	@ float
 191 0006 4968     		ldr	r1, [r1, #4]	@ float
 192 0008 8160     		str	r1, [r0, #8]	@ float
 193 000a 1168     		ldr	r1, [r2]	@ float
 194 000c C160     		str	r1, [r0, #12]	@ float
 195 000e 5268     		ldr	r2, [r2, #4]	@ float
 196 0010 0261     		str	r2, [r0, #16]	@ float
 197 0012 80ED050A 		vstr.32	s0, [r0, #20]
 198 0016 1A68     		ldr	r2, [r3]	@ float
 199 0018 8261     		str	r2, [r0, #24]	@ float
 200 001a 5B68     		ldr	r3, [r3, #4]	@ float
 201 001c C361     		str	r3, [r0, #28]	@ float
 202 001e FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 203 0022 90F83000 		ldrb	r0, [r0, #48]	@ zero_extendqisi2
 204 0026 38BD     		pop	{r3, r4, r5, pc}
 205              		.size	_ZN14GridDefinition3SetEPKfS1_fS1_, .-_ZN14GridDefinition3SetEPKfS1_fS1_
 206              		.section	.text._ZNK14GridDefinition14GetXCoordinateEj,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	_ZNK14GridDefinition14GetXCoordinateEj
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv4-sp-d16
 214              		.type	_ZNK14GridDefinition14GetXCoordinateEj, %function
 215              	_ZNK14GridDefinition14GetXCoordinateEj:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219 0000 07EE101A 		vmov	s14, r1	@ int
 220 0004 D0ED067A 		vldr.32	s15, [r0, #24]
 221 0008 90ED010A 		vldr.32	s0, [r0, #4]
 222 000c B8EE477A 		vcvt.f32.u32	s14, s14
 223 0010 A7EE270A 		vfma.f32	s0, s14, s15
 224 0014 7047     		bx	lr
 225              		.size	_ZNK14GridDefinition14GetXCoordinateEj, .-_ZNK14GridDefinition14GetXCoordinateEj
 226 0016 00BF     		.section	.text._ZNK14GridDefinition14GetYCoordinateEj,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 5


 229              		.global	_ZNK14GridDefinition14GetYCoordinateEj
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu fpv4-sp-d16
 234              		.type	_ZNK14GridDefinition14GetYCoordinateEj, %function
 235              	_ZNK14GridDefinition14GetYCoordinateEj:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238              		@ link register save eliminated.
 239 0000 07EE101A 		vmov	s14, r1	@ int
 240 0004 D0ED077A 		vldr.32	s15, [r0, #28]
 241 0008 90ED030A 		vldr.32	s0, [r0, #12]
 242 000c B8EE477A 		vcvt.f32.u32	s14, s14
 243 0010 A7EE270A 		vfma.f32	s0, s14, s15
 244 0014 7047     		bx	lr
 245              		.size	_ZNK14GridDefinition14GetYCoordinateEj, .-_ZNK14GridDefinition14GetYCoordinateEj
 246 0016 00BF     		.section	.text._ZNK14GridDefinition10IsInRadiusEff,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK14GridDefinition10IsInRadiusEff
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK14GridDefinition10IsInRadiusEff, %function
 255              	_ZNK14GridDefinition10IsInRadiusEff:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 D0ED057A 		vldr.32	s15, [r0, #20]
 260 0004 F5EEC07A 		vcmpe.f32	s15, #0
 261 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 262 000c 0DD4     		bmi	.L37
 263 000e 60EEA00A 		vmul.f32	s1, s1, s1
 264 0012 67EEA77A 		vmul.f32	s15, s15, s15
 265 0016 E0EE000A 		vfma.f32	s1, s0, s0
 266 001a F4EEE70A 		vcmpe.f32	s1, s15
 267 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 268 0022 4CBF     		ite	mi
 269 0024 0120     		movmi	r0, #1
 270 0026 0020     		movpl	r0, #0
 271 0028 7047     		bx	lr
 272              	.L37:
 273 002a 0120     		movs	r0, #1
 274 002c 7047     		bx	lr
 275              		.size	_ZNK14GridDefinition10IsInRadiusEff, .-_ZNK14GridDefinition10IsInRadiusEff
 276              		.global	__aeabi_f2d
 277 002e 00BF     		.section	.text._ZNK14GridDefinition15PrintParametersERK9StringRef,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZNK14GridDefinition15PrintParametersERK9StringRef
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZNK14GridDefinition15PrintParametersERK9StringRef, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 6


 286              	_ZNK14GridDefinition15PrintParametersERK9StringRef:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 290 0002 0446     		mov	r4, r0
 291 0004 8FB0     		sub	sp, sp, #60
 292 0006 4068     		ldr	r0, [r0, #4]	@ float
 293 0008 0D46     		mov	r5, r1
 294 000a FFF7FEFF 		bl	__aeabi_f2d
 295 000e D4E90823 		ldrd	r2, r3, [r4, #32]
 296 0012 0646     		mov	r6, r0
 297 0014 03FB02F3 		mul	r3, r3, r2
 298 0018 E069     		ldr	r0, [r4, #28]	@ float
 299 001a 0C93     		str	r3, [sp, #48]
 300 001c 0F46     		mov	r7, r1
 301 001e FFF7FEFF 		bl	__aeabi_f2d
 302 0022 CDE90A01 		strd	r0, [sp, #40]
 303 0026 A069     		ldr	r0, [r4, #24]	@ float
 304 0028 FFF7FEFF 		bl	__aeabi_f2d
 305 002c CDE90801 		strd	r0, [sp, #32]
 306 0030 6069     		ldr	r0, [r4, #20]	@ float
 307 0032 FFF7FEFF 		bl	__aeabi_f2d
 308 0036 CDE90601 		strd	r0, [sp, #24]
 309 003a 2069     		ldr	r0, [r4, #16]	@ float
 310 003c FFF7FEFF 		bl	__aeabi_f2d
 311 0040 CDE90401 		strd	r0, [sp, #16]
 312 0044 E068     		ldr	r0, [r4, #12]	@ float
 313 0046 FFF7FEFF 		bl	__aeabi_f2d
 314 004a CDE90201 		strd	r0, [sp, #8]
 315 004e A068     		ldr	r0, [r4, #8]	@ float
 316 0050 FFF7FEFF 		bl	__aeabi_f2d
 317 0054 3246     		mov	r2, r6
 318 0056 CDE90001 		strd	r0, [sp]
 319 005a 3B46     		mov	r3, r7
 320 005c 2846     		mov	r0, r5
 321 005e 0249     		ldr	r1, .L40
 322 0060 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 323 0064 0FB0     		add	sp, sp, #60
 324              		@ sp needed
 325 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 326              	.L41:
 327              		.align	2
 328              	.L40:
 329 0068 00000000 		.word	.LC0
 330              		.size	_ZNK14GridDefinition15PrintParametersERK9StringRef, .-_ZNK14GridDefinition15PrintParametersE
 331              		.section	.text._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu fpv4-sp-d16
 339              		.type	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, %function
 340              	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 7


 343 0000 30B5     		push	{r4, r5, lr}
 344 0002 D0E90832 		ldrd	r3, r2, [r0, #32]
 345 0006 91B0     		sub	sp, sp, #68
 346 0008 0446     		mov	r4, r0
 347 000a C069     		ldr	r0, [r0, #28]	@ float
 348 000c 0D46     		mov	r5, r1
 349 000e CDE90E32 		strd	r3, r2, [sp, #56]
 350 0012 FFF7FEFF 		bl	__aeabi_f2d
 351 0016 CDE90C01 		strd	r0, [sp, #48]
 352 001a A069     		ldr	r0, [r4, #24]	@ float
 353 001c FFF7FEFF 		bl	__aeabi_f2d
 354 0020 CDE90A01 		strd	r0, [sp, #40]
 355 0024 6069     		ldr	r0, [r4, #20]	@ float
 356 0026 FFF7FEFF 		bl	__aeabi_f2d
 357 002a CDE90801 		strd	r0, [sp, #32]
 358 002e 2069     		ldr	r0, [r4, #16]	@ float
 359 0030 FFF7FEFF 		bl	__aeabi_f2d
 360 0034 CDE90601 		strd	r0, [sp, #24]
 361 0038 E068     		ldr	r0, [r4, #12]	@ float
 362 003a FFF7FEFF 		bl	__aeabi_f2d
 363 003e CDE90401 		strd	r0, [sp, #16]
 364 0042 A068     		ldr	r0, [r4, #8]	@ float
 365 0044 FFF7FEFF 		bl	__aeabi_f2d
 366 0048 CDE90201 		strd	r0, [sp, #8]
 367 004c 6068     		ldr	r0, [r4, #4]	@ float
 368 004e FFF7FEFF 		bl	__aeabi_f2d
 369 0052 044A     		ldr	r2, .L44
 370 0054 CDE90001 		strd	r0, [sp]
 371 0058 2846     		mov	r0, r5
 372 005a 0349     		ldr	r1, .L44+4
 373 005c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 374 0060 11B0     		add	sp, sp, #68
 375              		@ sp needed
 376 0062 30BD     		pop	{r4, r5, pc}
 377              	.L45:
 378              		.align	2
 379              	.L44:
 380 0064 00000000 		.word	.LC1
 381 0068 38000000 		.word	.LC2
 382              		.size	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, .-_ZNK14GridDefinition25WriteH
 383              		.section	.text._ZN14GridDefinition12CheckHeadingERK9StringRef,"ax",%progbits
 384              		.align	1
 385              		.p2align 2,,3
 386              		.global	_ZN14GridDefinition12CheckHeadingERK9StringRef
 387              		.syntax unified
 388              		.thumb
 389              		.thumb_func
 390              		.fpu fpv4-sp-d16
 391              		.type	_ZN14GridDefinition12CheckHeadingERK9StringRef, %function
 392              	_ZN14GridDefinition12CheckHeadingERK9StringRef:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 10B5     		push	{r4, lr}
 396 0002 0949     		ldr	r1, .L52
 397 0004 0446     		mov	r4, r0
 398 0006 0068     		ldr	r0, [r0]
 399 0008 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 8


 400 000c 48B9     		cbnz	r0, .L49
 401 000e 2068     		ldr	r0, [r4]
 402 0010 0649     		ldr	r1, .L52+4
 403 0012 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 404 0016 0028     		cmp	r0, #0
 405 0018 0CBF     		ite	eq
 406 001a 4FF0FF30 		moveq	r0, #-1
 407 001e 0120     		movne	r0, #1
 408 0020 10BD     		pop	{r4, pc}
 409              	.L49:
 410 0022 0020     		movs	r0, #0
 411 0024 10BD     		pop	{r4, pc}
 412              	.L53:
 413 0026 00BF     		.align	2
 414              	.L52:
 415 0028 00000000 		.word	.LC3
 416 002c 00000000 		.word	.LC1
 417              		.size	_ZN14GridDefinition12CheckHeadingERK9StringRef, .-_ZN14GridDefinition12CheckHeadingERK9Strin
 418              		.section	.text._ZN14GridDefinition14ReadParametersERK9StringRefi,"ax",%progbits
 419              		.align	1
 420              		.p2align 2,,3
 421              		.global	_ZN14GridDefinition14ReadParametersERK9StringRefi
 422              		.syntax unified
 423              		.thumb
 424              		.thumb_func
 425              		.fpu fpv4-sp-d16
 426              		.type	_ZN14GridDefinition14ReadParametersERK9StringRefi, %function
 427              	_ZN14GridDefinition14ReadParametersERK9StringRefi:
 428              		@ args = 0, pretend = 0, frame = 8
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 431 0002 0C68     		ldr	r4, [r1]
 432 0004 83B0     		sub	sp, sp, #12
 433 0006 0023     		movs	r3, #0
 434 0008 0546     		mov	r5, r0
 435 000a 80F83030 		strb	r3, [r0, #48]
 436 000e 01A9     		add	r1, sp, #4
 437 0010 2046     		mov	r0, r4
 438 0012 1646     		mov	r6, r2
 439 0014 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 440 0018 0198     		ldr	r0, [sp, #4]
 441 001a 85ED010A 		vstr.32	s0, [r5, #4]
 442 001e A042     		cmp	r0, r4
 443 0020 02D0     		beq	.L57
 444 0022 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 445 0024 2C2B     		cmp	r3, #44
 446 0026 02D0     		beq	.L61
 447              	.L57:
 448 0028 0020     		movs	r0, #0
 449              	.L56:
 450 002a 03B0     		add	sp, sp, #12
 451              		@ sp needed
 452 002c F0BD     		pop	{r4, r5, r6, r7, pc}
 453              	.L61:
 454 002e 441C     		adds	r4, r0, #1
 455 0030 2046     		mov	r0, r4
 456 0032 01A9     		add	r1, sp, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 9


 457 0034 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 458 0038 019B     		ldr	r3, [sp, #4]
 459 003a 85ED020A 		vstr.32	s0, [r5, #8]
 460 003e A342     		cmp	r3, r4
 461 0040 F2D0     		beq	.L57
 462 0042 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 463 0044 2C2A     		cmp	r2, #44
 464 0046 EFD1     		bne	.L57
 465 0048 5C1C     		adds	r4, r3, #1
 466 004a 2046     		mov	r0, r4
 467 004c 01A9     		add	r1, sp, #4
 468 004e FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 469 0052 019B     		ldr	r3, [sp, #4]
 470 0054 85ED030A 		vstr.32	s0, [r5, #12]
 471 0058 A342     		cmp	r3, r4
 472 005a E5D0     		beq	.L57
 473 005c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 474 005e 2C2A     		cmp	r2, #44
 475 0060 E2D1     		bne	.L57
 476 0062 5C1C     		adds	r4, r3, #1
 477 0064 2046     		mov	r0, r4
 478 0066 01A9     		add	r1, sp, #4
 479 0068 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 480 006c 019B     		ldr	r3, [sp, #4]
 481 006e 85ED040A 		vstr.32	s0, [r5, #16]
 482 0072 A342     		cmp	r3, r4
 483 0074 D8D0     		beq	.L57
 484 0076 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 485 0078 2C2A     		cmp	r2, #44
 486 007a D5D1     		bne	.L57
 487 007c 5C1C     		adds	r4, r3, #1
 488 007e 2046     		mov	r0, r4
 489 0080 01A9     		add	r1, sp, #4
 490 0082 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 491 0086 019F     		ldr	r7, [sp, #4]
 492 0088 85ED050A 		vstr.32	s0, [r5, #20]
 493 008c A742     		cmp	r7, r4
 494 008e CBD0     		beq	.L57
 495 0090 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 496 0092 2C2A     		cmp	r2, #44
 497 0094 C8D1     		bne	.L57
 498 0096 0137     		adds	r7, r7, #1
 499 0098 3846     		mov	r0, r7
 500 009a 01A9     		add	r1, sp, #4
 501 009c FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 502 00a0 019C     		ldr	r4, [sp, #4]
 503 00a2 85ED060A 		vstr.32	s0, [r5, #24]
 504 00a6 BC42     		cmp	r4, r7
 505 00a8 BED0     		beq	.L57
 506 00aa 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 507 00ac 2C2B     		cmp	r3, #44
 508 00ae BBD1     		bne	.L57
 509 00b0 0134     		adds	r4, r4, #1
 510 00b2 E6B9     		cbnz	r6, .L58
 511 00b4 85ED070A 		vstr.32	s0, [r5, #28]
 512              	.L59:
 513 00b8 0A22     		movs	r2, #10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 10


 514 00ba 01A9     		add	r1, sp, #4
 515 00bc 2046     		mov	r0, r4
 516 00be FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 517 00c2 019B     		ldr	r3, [sp, #4]
 518 00c4 2862     		str	r0, [r5, #32]
 519 00c6 A342     		cmp	r3, r4
 520 00c8 AED0     		beq	.L57
 521 00ca 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 522 00cc 2C2A     		cmp	r2, #44
 523 00ce ABD1     		bne	.L57
 524 00d0 5C1C     		adds	r4, r3, #1
 525 00d2 01A9     		add	r1, sp, #4
 526 00d4 2046     		mov	r0, r4
 527 00d6 0A22     		movs	r2, #10
 528 00d8 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 529 00dc 019B     		ldr	r3, [sp, #4]
 530 00de 6862     		str	r0, [r5, #36]
 531 00e0 A342     		cmp	r3, r4
 532 00e2 A1D0     		beq	.L57
 533 00e4 2846     		mov	r0, r5
 534 00e6 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 535 00ea 0120     		movs	r0, #1
 536 00ec 9DE7     		b	.L56
 537              	.L58:
 538 00ee 01A9     		add	r1, sp, #4
 539 00f0 2046     		mov	r0, r4
 540 00f2 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 541 00f6 019B     		ldr	r3, [sp, #4]
 542 00f8 85ED070A 		vstr.32	s0, [r5, #28]
 543 00fc A342     		cmp	r3, r4
 544 00fe 93D0     		beq	.L57
 545 0100 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 546 0102 2C2A     		cmp	r2, #44
 547 0104 90D1     		bne	.L57
 548 0106 5C1C     		adds	r4, r3, #1
 549 0108 D6E7     		b	.L59
 550              		.size	_ZN14GridDefinition14ReadParametersERK9StringRefi, .-_ZN14GridDefinition14ReadParametersERK9
 551 010a 00BF     		.section	.text._ZNK14GridDefinition10PrintErrorEffRK9StringRef,"ax",%progbits
 552              		.align	1
 553              		.p2align 2,,3
 554              		.global	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 559              		.type	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, %function
 560              	_ZNK14GridDefinition10PrintErrorEffRK9StringRef:
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563 0000 90ED067A 		vldr.32	s14, [r0, #24]
 564 0004 DFED357A 		vldr.32	s15, .L80
 565 0008 B4EEE77A 		vcmpe.f32	s14, s15
 566 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 567 0010 51D4     		bmi	.L63
 568 0012 90ED077A 		vldr.32	s14, [r0, #28]
 569 0016 B4EEE77A 		vcmpe.f32	s14, s15
 570 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 11


 571 001e 4AD4     		bmi	.L63
 572 0020 036A     		ldr	r3, [r0, #32]
 573 0022 002B     		cmp	r3, #0
 574 0024 4FD0     		beq	.L77
 575 0026 426A     		ldr	r2, [r0, #36]
 576 0028 002A     		cmp	r2, #0
 577 002a 48D0     		beq	.L78
 578 002c 292B     		cmp	r3, #41
 579 002e 07D8     		bhi	.L68
 580 0030 B2F5DD7F 		cmp	r2, #442
 581 0034 04D2     		bcs	.L68
 582 0036 02FB03F3 		mul	r3, r2, r3
 583 003a B3F5DD7F 		cmp	r3, #442
 584 003e 46D3     		bcc	.L69
 585              	.L68:
 586 0040 10B5     		push	{r4, lr}
 587 0042 DFED277A 		vldr.32	s15, .L80+4
 588 0046 2DED048B 		vpush.64	{d8, d9}
 589 004a F0EE408A 		vmov.f32	s17, s0
 590 004e 20EE200A 		vmul.f32	s0, s0, s1
 591 0052 38EEA08A 		vadd.f32	s16, s17, s1
 592 0056 20EE270A 		vmul.f32	s0, s0, s15
 593 005a 0C46     		mov	r4, r1
 594 005c A8EE080A 		vfma.f32	s0, s16, s16
 595 0060 B5EE400A 		vcmp.f32	s0, #0
 596 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 597 0068 B1EEC09A 		vsqrt.f32	s18, s0
 598 006c 33D4     		bmi	.L79
 599              	.L70:
 600 006e 9FED1D7A 		vldr.32	s14, .L80+8
 601 0072 DFED1D6A 		vldr.32	s13, .L80+12
 602 0076 39EE088A 		vadd.f32	s16, s18, s16
 603 007a C8EE077A 		vdiv.f32	s15, s16, s14
 604 007e 88EEA67A 		vdiv.f32	s14, s17, s13
 605 0082 F4EE677A 		vcmp.f32	s15, s15
 606 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 607 008a 06D6     		bvs	.L71
 608 008c F4EEC77A 		vcmpe.f32	s15, s14
 609 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 610 0094 D8BF     		it	le
 611 0096 F0EE477A 		vmovle.f32	s15, s14
 612              	.L71:
 613 009a 17EE900A 		vmov	r0, s15
 614 009e FFF7FEFF 		bl	__aeabi_f2d
 615 00a2 BDEC048B 		vldm	sp!, {d8-d9}
 616 00a6 0246     		mov	r2, r0
 617 00a8 0B46     		mov	r3, r1
 618 00aa 2046     		mov	r0, r4
 619 00ac 0F49     		ldr	r1, .L80+16
 620 00ae BDE81040 		pop	{r4, lr}
 621 00b2 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 622              	.L63:
 623 00b6 0846     		mov	r0, r1
 624 00b8 0D49     		ldr	r1, .L80+20
 625 00ba FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 626              	.L78:
 627 00be 0846     		mov	r0, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 12


 628 00c0 0C49     		ldr	r1, .L80+24
 629 00c2 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 630              	.L77:
 631 00c6 0846     		mov	r0, r1
 632 00c8 0B49     		ldr	r1, .L80+28
 633 00ca FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 634              	.L69:
 635 00ce 0846     		mov	r0, r1
 636 00d0 0A49     		ldr	r1, .L80+32
 637 00d2 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 638              	.L79:
 639 00d6 FFF7FEFF 		bl	sqrtf
 640 00da C8E7     		b	.L70
 641              	.L81:
 642              		.align	2
 643              	.L80:
 644 00dc CDCCCC3D 		.word	1036831949
 645 00e0 0000DC44 		.word	1155268608
 646 00e4 00005C44 		.word	1146880000
 647 00e8 00002042 		.word	1109393408
 648 00ec 48000000 		.word	.LC8
 649 00f0 00000000 		.word	.LC4
 650 00f4 28000000 		.word	.LC6
 651 00f8 14000000 		.word	.LC5
 652 00fc 3C000000 		.word	.LC7
 653              		.size	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, .-_ZNK14GridDefinition10PrintErrorEffRK9Str
 654              		.section	.text._ZN9HeightMapC2Ev,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	_ZN9HeightMapC2Ev
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	_ZN9HeightMapC2Ev, %function
 663              	_ZN9HeightMapC2Ev:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666 0000 10B5     		push	{r4, lr}
 667 0002 0446     		mov	r4, r0
 668 0004 FFF7FEFF 		bl	_ZN14GridDefinitionC1Ev
 669 0008 0023     		movs	r3, #0
 670 000a 84F85037 		strb	r3, [r4, #1872]
 671 000e 2046     		mov	r0, r4
 672 0010 10BD     		pop	{r4, pc}
 673              		.size	_ZN9HeightMapC2Ev, .-_ZN9HeightMapC2Ev
 674              		.global	_ZN9HeightMapC1Ev
 675              		.thumb_set _ZN9HeightMapC1Ev,_ZN9HeightMapC2Ev
 676 0012 00BF     		.section	.text._ZN9HeightMap7SetGridERK14GridDefinition,"ax",%progbits
 677              		.align	1
 678              		.p2align 2,,3
 679              		.global	_ZN9HeightMap7SetGridERK14GridDefinition
 680              		.syntax unified
 681              		.thumb
 682              		.thumb_func
 683              		.fpu fpv4-sp-d16
 684              		.type	_ZN9HeightMap7SetGridERK14GridDefinition, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 13


 685              	_ZN9HeightMap7SetGridERK14GridDefinition:
 686              		@ args = 0, pretend = 0, frame = 0
 687              		@ frame_needed = 0, uses_anonymous_args = 0
 688              		@ link register save eliminated.
 689 0000 70B4     		push	{r4, r5, r6}
 690 0002 8A68     		ldr	r2, [r1, #8]	@ float
 691 0004 4C68     		ldr	r4, [r1, #4]	@ float
 692 0006 CB68     		ldr	r3, [r1, #12]	@ float
 693 0008 0D69     		ldr	r5, [r1, #16]	@ float
 694 000a 4460     		str	r4, [r0, #4]	@ float
 695 000c 4C69     		ldr	r4, [r1, #20]	@ float
 696 000e 8260     		str	r2, [r0, #8]	@ float
 697 0010 8A69     		ldr	r2, [r1, #24]	@ float
 698 0012 C360     		str	r3, [r0, #12]	@ float
 699 0014 CB69     		ldr	r3, [r1, #28]	@ float
 700 0016 0561     		str	r5, [r0, #16]	@ float
 701 0018 8D6A     		ldr	r5, [r1, #40]	@ float
 702 001a 4461     		str	r4, [r0, #20]	@ float
 703 001c CC6A     		ldr	r4, [r1, #44]	@ float
 704 001e 8261     		str	r2, [r0, #24]	@ float
 705 0020 0A6A     		ldr	r2, [r1, #32]
 706 0022 4E6A     		ldr	r6, [r1, #36]
 707 0024 C361     		str	r3, [r0, #28]	@ float
 708 0026 91F83030 		ldrb	r3, [r1, #48]	@ zero_extendqisi2
 709 002a 0262     		str	r2, [r0, #32]
 710 002c 0022     		movs	r2, #0
 711 002e 80F83030 		strb	r3, [r0, #48]
 712 0032 4662     		str	r6, [r0, #36]
 713 0034 8562     		str	r5, [r0, #40]	@ float
 714 0036 C462     		str	r4, [r0, #44]	@ float
 715 0038 80F85027 		strb	r2, [r0, #1872]
 716 003c 00F21473 		addw	r3, r0, #1812
 717 0040 00F24C70 		addw	r0, r0, #1868
 718              	.L85:
 719 0044 43F8042F 		str	r2, [r3, #4]!
 720 0048 8342     		cmp	r3, r0
 721 004a FBD1     		bne	.L85
 722 004c 70BC     		pop	{r4, r5, r6}
 723 004e 7047     		bx	lr
 724              		.size	_ZN9HeightMap7SetGridERK14GridDefinition, .-_ZN9HeightMap7SetGridERK14GridDefinition
 725              		.section	.text._ZN9HeightMap16ClearGridHeightsEv,"ax",%progbits
 726              		.align	1
 727              		.p2align 2,,3
 728              		.global	_ZN9HeightMap16ClearGridHeightsEv
 729              		.syntax unified
 730              		.thumb
 731              		.thumb_func
 732              		.fpu fpv4-sp-d16
 733              		.type	_ZN9HeightMap16ClearGridHeightsEv, %function
 734              	_ZN9HeightMap16ClearGridHeightsEv:
 735              		@ args = 0, pretend = 0, frame = 0
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737              		@ link register save eliminated.
 738 0000 00F21473 		addw	r3, r0, #1812
 739 0004 0022     		movs	r2, #0
 740 0006 00F24C70 		addw	r0, r0, #1868
 741              	.L89:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 14


 742 000a 43F8042F 		str	r2, [r3, #4]!
 743 000e 8342     		cmp	r3, r0
 744 0010 FBD1     		bne	.L89
 745 0012 7047     		bx	lr
 746              		.size	_ZN9HeightMap16ClearGridHeightsEv, .-_ZN9HeightMap16ClearGridHeightsEv
 747              		.section	.text._ZN9HeightMap13SetGridHeightEjjf,"ax",%progbits
 748              		.align	1
 749              		.p2align 2,,3
 750              		.global	_ZN9HeightMap13SetGridHeightEjjf
 751              		.syntax unified
 752              		.thumb
 753              		.thumb_func
 754              		.fpu fpv4-sp-d16
 755              		.type	_ZN9HeightMap13SetGridHeightEjjf, %function
 756              	_ZN9HeightMap13SetGridHeightEjjf:
 757              		@ args = 0, pretend = 0, frame = 0
 758              		@ frame_needed = 0, uses_anonymous_args = 0
 759              		@ link register save eliminated.
 760 0000 036A     		ldr	r3, [r0, #32]
 761 0002 03FB0212 		mla	r2, r3, r2, r1
 762 0006 B2F5DC7F 		cmp	r2, #440
 763 000a 10D8     		bhi	.L91
 764 000c 5309     		lsrs	r3, r2, #5
 765 000e 00EB8303 		add	r3, r0, r3, lsl #2
 766 0012 00EB8200 		add	r0, r0, r2, lsl #2
 767 0016 80ED0D0A 		vstr.32	s0, [r0, #52]
 768 001a D3F81807 		ldr	r0, [r3, #1816]
 769 001e 02F01F02 		and	r2, r2, #31
 770 0022 0121     		movs	r1, #1
 771 0024 01FA02F2 		lsl	r2, r1, r2
 772 0028 1043     		orrs	r0, r0, r2
 773 002a C3F81807 		str	r0, [r3, #1816]
 774              	.L91:
 775 002e 7047     		bx	lr
 776              		.size	_ZN9HeightMap13SetGridHeightEjjf, .-_ZN9HeightMap13SetGridHeightEjjf
 777              		.section	.text._ZNK9HeightMap18GetMinimumSegmentsEff,"ax",%progbits
 778              		.align	1
 779              		.p2align 2,,3
 780              		.global	_ZNK9HeightMap18GetMinimumSegmentsEff
 781              		.syntax unified
 782              		.thumb
 783              		.thumb_func
 784              		.fpu fpv4-sp-d16
 785              		.type	_ZNK9HeightMap18GetMinimumSegmentsEff, %function
 786              	_ZNK9HeightMap18GetMinimumSegmentsEff:
 787              		@ args = 0, pretend = 0, frame = 0
 788              		@ frame_needed = 0, uses_anonymous_args = 0
 789              		@ link register save eliminated.
 790 0000 B0EEC00A 		vabs.f32	s0, s0
 791 0004 B5EEC00A 		vcmpe.f32	s0, #0
 792 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 793 000c F0EEE00A 		vabs.f32	s1, s1
 794 0010 21DD     		ble	.L103
 795 0012 90ED0A7A 		vldr.32	s14, [r0, #40]
 796 0016 DFED147A 		vldr.32	s15, .L107
 797 001a E7EE007A 		vfma.f32	s15, s14, s0
 798 001e F5EEC00A 		vcmpe.f32	s1, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 15


 799 0022 FCEEE77A 		vcvt.u32.f32	s15, s15
 800 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 801 002a 17EE903A 		vmov	r3, s15	@ int
 802 002e 0DDD     		ble	.L105
 803              	.L98:
 804 0030 90ED0B7A 		vldr.32	s14, [r0, #44]
 805 0034 DFED0C7A 		vldr.32	s15, .L107
 806 0038 E7EE207A 		vfma.f32	s15, s14, s1
 807 003c FCEEE77A 		vcvt.u32.f32	s15, s15
 808 0040 17EE900A 		vmov	r0, s15	@ int
 809 0044 9842     		cmp	r0, r3
 810 0046 38BF     		it	cc
 811 0048 1846     		movcc	r0, r3
 812 004a 7047     		bx	lr
 813              	.L105:
 814 004c 0120     		movs	r0, #1
 815 004e 9842     		cmp	r0, r3
 816 0050 38BF     		it	cc
 817 0052 1846     		movcc	r0, r3
 818 0054 7047     		bx	lr
 819              	.L103:
 820 0056 F5EEC00A 		vcmpe.f32	s1, #0
 821 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 822 005e 01DD     		ble	.L106
 823 0060 0123     		movs	r3, #1
 824 0062 E5E7     		b	.L98
 825              	.L106:
 826 0064 0120     		movs	r0, #1
 827 0066 7047     		bx	lr
 828              	.L108:
 829              		.align	2
 830              	.L107:
 831 0068 CDCCCC3E 		.word	1053609165
 832              		.size	_ZNK9HeightMap18GetMinimumSegmentsEff, .-_ZNK9HeightMap18GetMinimumSegmentsEff
 833              		.global	__aeabi_dadd
 834              		.global	__aeabi_dmul
 835              		.global	__aeabi_ui2d
 836              		.global	__aeabi_ddiv
 837              		.global	__aeabi_d2f
 838              		.global	__aeabi_dsub
 839              		.section	.text._ZNK9HeightMap13GetStatisticsERfS0_,"ax",%progbits
 840              		.align	1
 841              		.p2align 2,,3
 842              		.global	_ZNK9HeightMap13GetStatisticsERfS0_
 843              		.syntax unified
 844              		.thumb
 845              		.thumb_func
 846              		.fpu fpv4-sp-d16
 847              		.type	_ZNK9HeightMap13GetStatisticsERfS0_, %function
 848              	_ZNK9HeightMap13GetStatisticsERfS0_:
 849              		@ args = 0, pretend = 0, frame = 24
 850              		@ frame_needed = 0, uses_anonymous_args = 0
 851 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 852 0004 D0E90837 		ldrd	r3, r7, [r0, #32]
 853 0008 87B0     		sub	sp, sp, #28
 854 000a 07FB03F7 		mul	r7, r7, r3
 855 000e 0491     		str	r1, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 16


 856 0010 0592     		str	r2, [sp, #20]
 857 0012 002F     		cmp	r7, #0
 858 0014 3AD0     		beq	.L110
 859 0016 9FED407B 		vldr.64	d7, .L123
 860 001a 8DED027B 		vstr.64	d7, [sp, #8]
 861 001e 8DED007B 		vstr.64	d7, [sp]
 862 0022 0024     		movs	r4, #0
 863 0024 8246     		mov	r10, r0
 864 0026 2646     		mov	r6, r4
 865 0028 00F13405 		add	r5, r0, #52
 866 002c 4FF0010B 		mov	fp, #1
 867              	.L112:
 868 0030 6209     		lsrs	r2, r4, #5
 869 0032 02F5E372 		add	r2, r2, #454
 870 0036 04F01F03 		and	r3, r4, #31
 871 003a 5AF82220 		ldr	r2, [r10, r2, lsl #2]
 872 003e 0BFA03F3 		lsl	r3, fp, r3
 873 0042 1342     		tst	r3, r2
 874 0044 04F10104 		add	r4, r4, #1
 875 0048 1BD0     		beq	.L111
 876 004a 2868     		ldr	r0, [r5]	@ float
 877 004c FFF7FEFF 		bl	__aeabi_f2d
 878 0050 8046     		mov	r8, r0
 879 0052 8946     		mov	r9, r1
 880 0054 0246     		mov	r2, r0
 881 0056 0B46     		mov	r3, r1
 882 0058 DDE90001 		ldrd	r0, [sp]
 883 005c FFF7FEFF 		bl	__aeabi_dadd
 884 0060 4246     		mov	r2, r8
 885 0062 CDE90001 		strd	r0, [sp]
 886 0066 4B46     		mov	r3, r9
 887 0068 4046     		mov	r0, r8
 888 006a 4946     		mov	r1, r9
 889 006c FFF7FEFF 		bl	__aeabi_dmul
 890 0070 0246     		mov	r2, r0
 891 0072 0B46     		mov	r3, r1
 892 0074 DDE90201 		ldrd	r0, [sp, #8]
 893 0078 FFF7FEFF 		bl	__aeabi_dadd
 894 007c CDE90201 		strd	r0, [sp, #8]
 895 0080 0136     		adds	r6, r6, #1
 896              	.L111:
 897 0082 BC42     		cmp	r4, r7
 898 0084 05F10405 		add	r5, r5, #4
 899 0088 D2D1     		bne	.L112
 900 008a 4EB9     		cbnz	r6, .L113
 901              	.L110:
 902 008c 059A     		ldr	r2, [sp, #20]
 903 008e 0023     		movs	r3, #0
 904 0090 1360     		str	r3, [r2]	@ float
 905 0092 0026     		movs	r6, #0
 906 0094 049A     		ldr	r2, [sp, #16]
 907 0096 3046     		mov	r0, r6
 908 0098 1360     		str	r3, [r2]	@ float
 909 009a 07B0     		add	sp, sp, #28
 910              		@ sp needed
 911 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 912              	.L113:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 17


 913 00a0 3046     		mov	r0, r6
 914 00a2 FFF7FEFF 		bl	__aeabi_ui2d
 915 00a6 DDE90078 		ldrd	r7, [sp]
 916 00aa 0246     		mov	r2, r0
 917 00ac 0B46     		mov	r3, r1
 918 00ae 0446     		mov	r4, r0
 919 00b0 0D46     		mov	r5, r1
 920 00b2 3846     		mov	r0, r7
 921 00b4 4146     		mov	r1, r8
 922 00b6 FFF7FEFF 		bl	__aeabi_ddiv
 923 00ba FFF7FEFF 		bl	__aeabi_d2f
 924 00be 0499     		ldr	r1, [sp, #16]
 925 00c0 DDE90223 		ldrd	r2, [sp, #8]
 926 00c4 0860     		str	r0, [r1]	@ float
 927 00c6 2046     		mov	r0, r4
 928 00c8 2946     		mov	r1, r5
 929 00ca FFF7FEFF 		bl	__aeabi_dmul
 930 00ce 3A46     		mov	r2, r7
 931 00d0 0446     		mov	r4, r0
 932 00d2 0D46     		mov	r5, r1
 933 00d4 4346     		mov	r3, r8
 934 00d6 3846     		mov	r0, r7
 935 00d8 4146     		mov	r1, r8
 936 00da FFF7FEFF 		bl	__aeabi_dmul
 937 00de 0246     		mov	r2, r0
 938 00e0 0B46     		mov	r3, r1
 939 00e2 2046     		mov	r0, r4
 940 00e4 2946     		mov	r1, r5
 941 00e6 FFF7FEFF 		bl	__aeabi_dsub
 942 00ea 41EC100B 		vmov	d0, r0, r1
 943 00ee FFF7FEFF 		bl	sqrt
 944 00f2 51EC100B 		vmov	r0, r1, d0
 945 00f6 FFF7FEFF 		bl	__aeabi_d2f
 946 00fa 07EE906A 		vmov	s15, r6	@ int
 947 00fe B8EE677A 		vcvt.f32.u32	s14, s15
 948 0102 07EE900A 		vmov	s15, r0
 949 0106 C7EE877A 		vdiv.f32	s15, s15, s14
 950 010a 059B     		ldr	r3, [sp, #20]
 951 010c 3046     		mov	r0, r6
 952 010e C3ED007A 		vstr.32	s15, [r3]
 953 0112 07B0     		add	sp, sp, #28
 954              		@ sp needed
 955 0114 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 956              	.L124:
 957              		.align	3
 958              	.L123:
 959 0118 00000000 		.word	0
 960 011c 00000000 		.word	0
 961              		.size	_ZNK9HeightMap13GetStatisticsERfS0_, .-_ZNK9HeightMap13GetStatisticsERfS0_
 962              		.section	.text._ZNK9HeightMap10SaveToFileEP9FileStoref,"ax",%progbits
 963              		.align	1
 964              		.p2align 2,,3
 965              		.global	_ZNK9HeightMap10SaveToFileEP9FileStoref
 966              		.syntax unified
 967              		.thumb
 968              		.thumb_func
 969              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 18


 970              		.type	_ZNK9HeightMap10SaveToFileEP9FileStoref, %function
 971              	_ZNK9HeightMap10SaveToFileEP9FileStoref:
 972              		@ args = 0, pretend = 0, frame = 536
 973              		@ frame_needed = 0, uses_anonymous_args = 0
 974 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 975 0004 2DED028B 		vpush.64	{d8}
 976 0008 ADF50B7D 		sub	sp, sp, #556
 977 000c 0CAB     		add	r3, sp, #48
 978 000e 5E4C     		ldr	r4, .L159
 979 0010 0A93     		str	r3, [sp, #40]
 980 0012 0591     		str	r1, [sp, #20]
 981 0014 0022     		movs	r2, #0
 982 0016 40F2F513 		movw	r3, #501
 983 001a 0646     		mov	r6, r0
 984 001c 5B49     		ldr	r1, .L159+4
 985 001e 8DF83020 		strb	r2, [sp, #48]
 986 0022 0AA8     		add	r0, sp, #40
 987 0024 B0EE408A 		vmov.f32	s16, s0
 988 0028 0B93     		str	r3, [sp, #44]
 989 002a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 990 002e 6068     		ldr	r0, [r4, #4]	@ unaligned
 991 0030 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 992 0034 0028     		cmp	r0, #0
 993 0036 40F08E80 		bne	.L155
 994 003a 08AC     		add	r4, sp, #32
 995              	.L126:
 996 003c 2246     		mov	r2, r4
 997 003e 07A9     		add	r1, sp, #28
 998 0040 3046     		mov	r0, r6
 999 0042 FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 1000 0046 DDED077A 		vldr.32	s15, [sp, #28]
 1001 004a 78EE277A 		vadd.f32	s15, s16, s15
 1002 004e 17EE900A 		vmov	r0, s15
 1003 0052 FFF7FEFF 		bl	__aeabi_f2d
 1004 0056 8046     		mov	r8, r0
 1005 0058 2068     		ldr	r0, [r4]	@ float
 1006 005a 8946     		mov	r9, r1
 1007 005c FFF7FEFF 		bl	__aeabi_f2d
 1008 0060 4246     		mov	r2, r8
 1009 0062 CDE90001 		strd	r0, [sp]
 1010 0066 4B46     		mov	r3, r9
 1011 0068 4949     		ldr	r1, .L159+8
 1012 006a 0AA8     		add	r0, sp, #40
 1013 006c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1014 0070 0A99     		ldr	r1, [sp, #40]
 1015 0072 0598     		ldr	r0, [sp, #20]
 1016 0074 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1017 0078 30B9     		cbnz	r0, .L157
 1018              	.L127:
 1019 007a 0120     		movs	r0, #1
 1020 007c 0DF50B7D 		add	sp, sp, #556
 1021              		@ sp needed
 1022 0080 BDEC028B 		vldm	sp!, {d8}
 1023 0084 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1024              	.L157:
 1025 0088 0AA9     		add	r1, sp, #40
 1026 008a 3046     		mov	r0, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 19


 1027 008c FFF7FEFF 		bl	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 1028 0090 0A99     		ldr	r1, [sp, #40]
 1029 0092 0598     		ldr	r0, [sp, #20]
 1030 0094 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1031 0098 0028     		cmp	r0, #0
 1032 009a EED0     		beq	.L127
 1033 009c 736A     		ldr	r3, [r6, #36]
 1034 009e 002B     		cmp	r3, #0
 1035 00a0 52D0     		beq	.L136
 1036 00a2 4FF0000A 		mov	r10, #0
 1037 00a6 DFF8F090 		ldr	r9, .L159+16
 1038 00aa DFF8F0B0 		ldr	fp, .L159+20
 1039 00ae 5446     		mov	r4, r10
 1040              	.L128:
 1041 00b0 0A9B     		ldr	r3, [sp, #40]
 1042 00b2 4FF00002 		mov	r2, #0
 1043 00b6 1A70     		strb	r2, [r3]
 1044 00b8 336A     		ldr	r3, [r6, #32]
 1045 00ba B3B3     		cbz	r3, .L130
 1046 00bc 04F10D07 		add	r7, r4, #13
 1047 00c0 06EB8707 		add	r7, r6, r7, lsl #2
 1048 00c4 0025     		movs	r5, #0
 1049 00c6 4FF00108 		mov	r8, #1
 1050 00ca 19E0     		b	.L131
 1051              	.L158:
 1052 00cc D7ED007A 		vldr.32	s15, [r7]
 1053 00d0 78EE277A 		vadd.f32	s15, s16, s15
 1054 00d4 0135     		adds	r5, r5, #1
 1055 00d6 17EE900A 		vmov	r0, s15
 1056 00da FFF7FEFF 		bl	__aeabi_f2d
 1057 00de 0B46     		mov	r3, r1
 1058 00e0 0246     		mov	r2, r0
 1059 00e2 5946     		mov	r1, fp
 1060 00e4 0AA8     		add	r0, sp, #40
 1061 00e6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1062 00ea 336A     		ldr	r3, [r6, #32]
 1063 00ec AB42     		cmp	r3, r5
 1064 00ee 04F10104 		add	r4, r4, #1
 1065 00f2 1AD9     		bls	.L130
 1066              	.L135:
 1067 00f4 1DB1     		cbz	r5, .L132
 1068 00f6 2C21     		movs	r1, #44
 1069 00f8 0AA8     		add	r0, sp, #40
 1070 00fa FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1071              	.L132:
 1072 00fe 0437     		adds	r7, r7, #4
 1073              	.L131:
 1074 0100 6209     		lsrs	r2, r4, #5
 1075 0102 02F5E372 		add	r2, r2, #454
 1076 0106 04F01F03 		and	r3, r4, #31
 1077 010a 56F82220 		ldr	r2, [r6, r2, lsl #2]
 1078 010e 08FA03F3 		lsl	r3, r8, r3
 1079 0112 1342     		tst	r3, r2
 1080 0114 4946     		mov	r1, r9
 1081 0116 0AA8     		add	r0, sp, #40
 1082 0118 D8D1     		bne	.L158
 1083 011a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 20


 1084 011e 336A     		ldr	r3, [r6, #32]
 1085 0120 0135     		adds	r5, r5, #1
 1086 0122 AB42     		cmp	r3, r5
 1087 0124 04F10104 		add	r4, r4, #1
 1088 0128 E4D8     		bhi	.L135
 1089              	.L130:
 1090 012a 0A21     		movs	r1, #10
 1091 012c 0AA8     		add	r0, sp, #40
 1092 012e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1093 0132 0A99     		ldr	r1, [sp, #40]
 1094 0134 0598     		ldr	r0, [sp, #20]
 1095 0136 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1096 013a 0028     		cmp	r0, #0
 1097 013c 9DD0     		beq	.L127
 1098 013e 736A     		ldr	r3, [r6, #36]
 1099 0140 0AF1010A 		add	r10, r10, #1
 1100 0144 5345     		cmp	r3, r10
 1101 0146 B3D8     		bhi	.L128
 1102              	.L136:
 1103 0148 0020     		movs	r0, #0
 1104 014a 0DF50B7D 		add	sp, sp, #556
 1105              		@ sp needed
 1106 014e BDEC028B 		vldm	sp!, {d8}
 1107 0152 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1108              	.L155:
 1109 0156 6068     		ldr	r0, [r4, #4]
 1110 0158 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1111 015c 08AC     		add	r4, sp, #32
 1112 015e CDE90801 		strd	r0, [sp, #32]
 1113 0162 2046     		mov	r0, r4
 1114 0164 FFF7FEFF 		bl	gmtime
 1115 0168 4568     		ldr	r5, [r0, #4]
 1116 016a 0A49     		ldr	r1, .L159+12
 1117 016c D0E90432 		ldrd	r3, r2, [r0, #16]
 1118 0170 0295     		str	r5, [sp, #8]
 1119 0172 8568     		ldr	r5, [r0, #8]
 1120 0174 0195     		str	r5, [sp, #4]
 1121 0176 C068     		ldr	r0, [r0, #12]
 1122 0178 0090     		str	r0, [sp]
 1123 017a 02F26C72 		addw	r2, r2, #1900
 1124 017e 0AA8     		add	r0, sp, #40
 1125 0180 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1126 0184 5AE7     		b	.L126
 1127              	.L160:
 1128 0186 00BF     		.align	2
 1129              	.L159:
 1130 0188 00000000 		.word	reprap
 1131 018c 00000000 		.word	.LC9
 1132 0190 4C000000 		.word	.LC11
 1133 0194 24000000 		.word	.LC10
 1134 0198 78000000 		.word	.LC13
 1135 019c 70000000 		.word	.LC12
 1136              		.size	_ZNK9HeightMap10SaveToFileEP9FileStoref, .-_ZNK9HeightMap10SaveToFileEP9FileStoref
 1137              		.section	.text._ZN9HeightMap12UseHeightMapEb,"ax",%progbits
 1138              		.align	1
 1139              		.p2align 2,,3
 1140              		.global	_ZN9HeightMap12UseHeightMapEb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 21


 1141              		.syntax unified
 1142              		.thumb
 1143              		.thumb_func
 1144              		.fpu fpv4-sp-d16
 1145              		.type	_ZN9HeightMap12UseHeightMapEb, %function
 1146              	_ZN9HeightMap12UseHeightMapEb:
 1147              		@ args = 0, pretend = 0, frame = 0
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 1149              		@ link register save eliminated.
 1150 0000 09B1     		cbz	r1, .L162
 1151 0002 90F83010 		ldrb	r1, [r0, #48]	@ zero_extendqisi2
 1152              	.L162:
 1153 0006 80F85017 		strb	r1, [r0, #1872]
 1154 000a 0846     		mov	r0, r1
 1155 000c 7047     		bx	lr
 1156              		.size	_ZN9HeightMap12UseHeightMapEb, .-_ZN9HeightMap12UseHeightMapEb
 1157 000e 00BF     		.section	.text._ZNK9HeightMap26GetInterpolatedHeightErrorEff,"ax",%progbits
 1158              		.align	1
 1159              		.p2align 2,,3
 1160              		.global	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1161              		.syntax unified
 1162              		.thumb
 1163              		.thumb_func
 1164              		.fpu fpv4-sp-d16
 1165              		.type	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, %function
 1166              	_ZNK9HeightMap26GetInterpolatedHeightErrorEff:
 1167              		@ args = 0, pretend = 0, frame = 0
 1168              		@ frame_needed = 0, uses_anonymous_args = 0
 1169 0000 38B5     		push	{r3, r4, r5, lr}
 1170 0002 90F85037 		ldrb	r3, [r0, #1872]	@ zero_extendqisi2
 1171 0006 2DED048B 		vpush.64	{d8, d9}
 1172 000a 002B     		cmp	r3, #0
 1173 000c 00F08B80 		beq	.L174
 1174 0010 056A     		ldr	r5, [r0, #32]
 1175 0012 90ED018A 		vldr.32	s16, [r0, #4]
 1176 0016 90ED067A 		vldr.32	s14, [r0, #24]
 1177 001a 436A     		ldr	r3, [r0, #36]
 1178 001c D0ED039A 		vldr.32	s19, [r0, #12]
 1179 0020 9FED436A 		vldr.32	s12, .L180
 1180 0024 D0ED075A 		vldr.32	s11, [r0, #28]
 1181 0028 D0ED0A7A 		vldr.32	s15, [r0, #40]
 1182 002c 6A1E     		subs	r2, r5, #1
 1183 002e 06EE902A 		vmov	s13, r2	@ int
 1184 0032 F8EE666A 		vcvt.f32.u32	s13, s13
 1185 0036 B0EE485A 		vmov.f32	s10, s16
 1186 003a 013B     		subs	r3, r3, #1
 1187 003c A6EE875A 		vfma.f32	s10, s13, s14
 1188 0040 0446     		mov	r4, r0
 1189 0042 07EE103A 		vmov	s14, r3	@ int
 1190 0046 B4EE408A 		vcmp.f32	s16, s0
 1191 004a B8EE477A 		vcvt.f32.u32	s14, s14
 1192 004e 75EE466A 		vsub.f32	s13, s10, s12
 1193 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1194 0056 B0EE695A 		vmov.f32	s10, s19
 1195 005a F4EE609A 		vcmp.f32	s19, s1
 1196 005e C8BF     		it	gt
 1197 0060 B0EE480A 		vmovgt.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 22


 1198 0064 A7EE255A 		vfma.f32	s10, s14, s11
 1199 0068 F0EE608A 		vmov.f32	s17, s1
 1200 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1201 0070 F4EE406A 		vcmp.f32	s13, s0
 1202 0074 C8BF     		it	gt
 1203 0076 F0EE698A 		vmovgt.f32	s17, s19
 1204 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1205 007e 48BF     		it	mi
 1206 0080 B0EE660A 		vmovmi.f32	s0, s13
 1207 0084 35EE467A 		vsub.f32	s14, s10, s12
 1208 0088 30EE480A 		vsub.f32	s0, s0, s16
 1209 008c B4EE687A 		vcmp.f32	s14, s17
 1210 0090 20EE278A 		vmul.f32	s16, s0, s15
 1211 0094 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1212 0098 48BF     		it	mi
 1213 009a F0EE478A 		vmovmi.f32	s17, s14
 1214 009e B0EE480A 		vmov.f32	s0, s16
 1215 00a2 FFF7FEFF 		bl	floorf
 1216 00a6 78EEE98A 		vsub.f32	s17, s17, s19
 1217 00aa D4ED0B0A 		vldr.32	s1, [r4, #44]
 1218 00ae 68EEA08A 		vmul.f32	s17, s17, s1
 1219 00b2 B0EE409A 		vmov.f32	s18, s0
 1220 00b6 B0EE680A 		vmov.f32	s0, s17
 1221 00ba FFF7FEFF 		bl	floorf
 1222 00be BDEEC97A 		vcvt.s32.f32	s14, s18
 1223 00c2 78EEC08A 		vsub.f32	s17, s17, s0
 1224 00c6 BDEEC00A 		vcvt.s32.f32	s0, s0
 1225 00ca 78EE497A 		vsub.f32	s15, s16, s18
 1226 00ce 10EE103A 		vmov	r3, s0	@ int
 1227 00d2 17EE100A 		vmov	r0, s14	@ int
 1228 00d6 B7EE007A 		vmov.f32	s14, #1.0e+0
 1229 00da 67EEA86A 		vmul.f32	s13, s15, s17
 1230 00de 05FB0300 		mla	r0, r5, r3, r0
 1231 00e2 37EE677A 		vsub.f32	s14, s14, s15
 1232 00e6 04EB8003 		add	r3, r4, r0, lsl #2
 1233 00ea 37EEE60A 		vsub.f32	s0, s15, s13
 1234 00ee D3ED0E5A 		vldr.32	s11, [r3, #56]
 1235 00f2 93ED0D6A 		vldr.32	s12, [r3, #52]
 1236 00f6 77EE687A 		vsub.f32	s15, s14, s17
 1237 00fa 20EE250A 		vmul.f32	s0, s0, s11
 1238 00fe 77EEA67A 		vadd.f32	s15, s15, s13
 1239 0102 2844     		add	r0, r0, r5
 1240 0104 A6EE270A 		vfma.f32	s0, s12, s15
 1241 0108 04EB8004 		add	r4, r4, r0, lsl #2
 1242 010c 78EEE68A 		vsub.f32	s17, s17, s13
 1243 0110 94ED0D7A 		vldr.32	s14, [r4, #52]
 1244 0114 D4ED0E7A 		vldr.32	s15, [r4, #56]
 1245 0118 A7EE280A 		vfma.f32	s0, s14, s17
 1246 011c BDEC048B 		vldm	sp!, {d8-d9}
 1247 0120 A6EEA70A 		vfma.f32	s0, s13, s15
 1248 0124 38BD     		pop	{r3, r4, r5, pc}
 1249              	.L174:
 1250 0126 BDEC048B 		vldm	sp!, {d8-d9}
 1251 012a 9FED020A 		vldr.32	s0, .L180+4
 1252 012e 38BD     		pop	{r3, r4, r5, pc}
 1253              	.L181:
 1254              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 23


 1255              	.L180:
 1256 0130 0AD7233C 		.word	1008981770
 1257 0134 00000000 		.word	0
 1258              		.size	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, .-_ZNK9HeightMap26GetInterpolatedHeightErrorE
 1259              		.section	.text._ZNK9HeightMap13InterpolateXYEmmff,"ax",%progbits
 1260              		.align	1
 1261              		.p2align 2,,3
 1262              		.global	_ZNK9HeightMap13InterpolateXYEmmff
 1263              		.syntax unified
 1264              		.thumb
 1265              		.thumb_func
 1266              		.fpu fpv4-sp-d16
 1267              		.type	_ZNK9HeightMap13InterpolateXYEmmff, %function
 1268              	_ZNK9HeightMap13InterpolateXYEmmff:
 1269              		@ args = 0, pretend = 0, frame = 0
 1270              		@ frame_needed = 0, uses_anonymous_args = 0
 1271              		@ link register save eliminated.
 1272 0000 036A     		ldr	r3, [r0, #32]
 1273 0002 F7EE007A 		vmov.f32	s15, #1.0e+0
 1274 0006 20EE207A 		vmul.f32	s14, s0, s1
 1275 000a 03FB0212 		mla	r2, r3, r2, r1
 1276 000e 77EEC07A 		vsub.f32	s15, s15, s0
 1277 0012 00EB8201 		add	r1, r0, r2, lsl #2
 1278 0016 91ED0E6A 		vldr.32	s12, [r1, #56]
 1279 001a D1ED0D6A 		vldr.32	s13, [r1, #52]
 1280 001e 30EE470A 		vsub.f32	s0, s0, s14
 1281 0022 77EEE07A 		vsub.f32	s15, s15, s1
 1282 0026 20EE060A 		vmul.f32	s0, s0, s12
 1283 002a 77EE877A 		vadd.f32	s15, s15, s14
 1284 002e 1344     		add	r3, r3, r2
 1285 0030 A6EEA70A 		vfma.f32	s0, s13, s15
 1286 0034 00EB8300 		add	r0, r0, r3, lsl #2
 1287 0038 70EEC70A 		vsub.f32	s1, s1, s14
 1288 003c D0ED0D6A 		vldr.32	s13, [r0, #52]
 1289 0040 D0ED0E7A 		vldr.32	s15, [r0, #56]
 1290 0044 A6EEA00A 		vfma.f32	s0, s13, s1
 1291 0048 A7EE870A 		vfma.f32	s0, s15, s14
 1292 004c 7047     		bx	lr
 1293              		.size	_ZNK9HeightMap13InterpolateXYEmmff, .-_ZNK9HeightMap13InterpolateXYEmmff
 1294 004e 00BF     		.section	.text._ZN9HeightMap18ExtrapolateMissingEv,"ax",%progbits
 1295              		.align	1
 1296              		.p2align 2,,3
 1297              		.global	_ZN9HeightMap18ExtrapolateMissingEv
 1298              		.syntax unified
 1299              		.thumb
 1300              		.thumb_func
 1301              		.fpu fpv4-sp-d16
 1302              		.type	_ZN9HeightMap18ExtrapolateMissingEv, %function
 1303              	_ZN9HeightMap18ExtrapolateMissingEv:
 1304              		@ args = 0, pretend = 0, frame = 8
 1305              		@ frame_needed = 0, uses_anonymous_args = 0
 1306 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1307 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1308 0008 466A     		ldr	r6, [r0, #36]
 1309 000a 83B0     		sub	sp, sp, #12
 1310 000c 002E     		cmp	r6, #0
 1311 000e 00F01981 		beq	.L183
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 24


 1312 0012 9FED996A 		vldr.32	s12, .L228
 1313 0016 046A     		ldr	r4, [r0, #32]
 1314 0018 00F13403 		add	r3, r0, #52
 1315 001c 0027     		movs	r7, #0
 1316 001e B0EE465A 		vmov.f32	s10, s12
 1317 0022 F0EE464A 		vmov.f32	s9, s12
 1318 0026 0093     		str	r3, [sp]
 1319 0028 4FEA8409 		lsl	r9, r4, #2
 1320 002c 9E46     		mov	lr, r3
 1321 002e 9B46     		mov	fp, r3
 1322 0030 B846     		mov	r8, r7
 1323 0032 BC46     		mov	ip, r7
 1324 0034 4FF0010A 		mov	r10, #1
 1325              	.L189:
 1326 0038 94B3     		cbz	r4, .L185
 1327 003a 03EE108A 		vmov	s6, r8	@ int
 1328 003e 5946     		mov	r1, fp
 1329 0040 0022     		movs	r2, #0
 1330              	.L187:
 1331 0042 BB18     		adds	r3, r7, r2
 1332 0044 5D09     		lsrs	r5, r3, #5
 1333 0046 05F5E375 		add	r5, r5, #454
 1334 004a 03F01F03 		and	r3, r3, #31
 1335 004e 50F82550 		ldr	r5, [r0, r5, lsl #2]
 1336 0052 0AFA03F3 		lsl	r3, r10, r3
 1337 0056 2B42     		tst	r3, r5
 1338 0058 1BD0     		beq	.L186
 1339 005a 06EE902A 		vmov	s13, r2	@ int
 1340 005e D0ED063A 		vldr.32	s7, [r0, #24]
 1341 0062 90ED017A 		vldr.32	s14, [r0, #4]
 1342 0066 90ED074A 		vldr.32	s8, [r0, #28]
 1343 006a D0ED037A 		vldr.32	s15, [r0, #12]
 1344 006e D1ED005A 		vldr.32	s11, [r1]
 1345 0072 F8EE666A 		vcvt.f32.u32	s13, s13
 1346 0076 36EE256A 		vadd.f32	s12, s12, s11
 1347 007a A3EEA67A 		vfma.f32	s14, s7, s13
 1348 007e 0CF1010C 		add	ip, ip, #1
 1349 0082 F8EE436A 		vcvt.f32.u32	s13, s6
 1350 0086 74EE874A 		vadd.f32	s9, s9, s14
 1351 008a E4EE267A 		vfma.f32	s15, s8, s13
 1352 008e 35EE275A 		vadd.f32	s10, s10, s15
 1353              	.L186:
 1354 0092 0132     		adds	r2, r2, #1
 1355 0094 A242     		cmp	r2, r4
 1356 0096 01F10401 		add	r1, r1, #4
 1357 009a D2D1     		bne	.L187
 1358 009c 13EE108A 		vmov	r8, s6	@ int
 1359              	.L185:
 1360 00a0 08F10108 		add	r8, r8, #1
 1361 00a4 B045     		cmp	r8, r6
 1362 00a6 CB44     		add	fp, fp, r9
 1363 00a8 2744     		add	r7, r7, r4
 1364 00aa C5D1     		bne	.L189
 1365 00ac 07EE90CA 		vmov	s15, ip	@ int
 1366 00b0 F8EEE77A 		vcvt.f32.s32	s15, s15
 1367 00b4 B7EE007A 		vmov.f32	s14, #1.0e+0
 1368 00b8 87EE279A 		vdiv.f32	s18, s14, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 25


 1369 00bc 0027     		movs	r7, #0
 1370 00be BA46     		mov	r10, r7
 1371 00c0 4FF0010C 		mov	ip, #1
 1372 00c4 DFED6C5A 		vldr.32	s11, .L228
 1373 00c8 69EE248A 		vmul.f32	s17, s18, s9
 1374 00cc 29EE058A 		vmul.f32	s16, s18, s10
 1375 00d0 29EE069A 		vmul.f32	s18, s18, s12
 1376 00d4 F0EE654A 		vmov.f32	s9, s11
 1377 00d8 F0EE653A 		vmov.f32	s7, s11
 1378 00dc B0EE654A 		vmov.f32	s8, s11
 1379 00e0 B0EE655A 		vmov.f32	s10, s11
 1380              	.L193:
 1381 00e4 C4B3     		cbz	r4, .L190
 1382 00e6 7546     		mov	r5, lr
 1383 00e8 0022     		movs	r2, #0
 1384              	.L192:
 1385 00ea BB18     		adds	r3, r7, r2
 1386 00ec 5909     		lsrs	r1, r3, #5
 1387 00ee 01F5E371 		add	r1, r1, #454
 1388 00f2 03F01F03 		and	r3, r3, #31
 1389 00f6 50F82110 		ldr	r1, [r0, r1, lsl #2]
 1390 00fa 0CFA03F3 		lsl	r3, ip, r3
 1391 00fe 0B42     		tst	r3, r1
 1392 0100 25D0     		beq	.L191
 1393 0102 06EE102A 		vmov	s12, r2	@ int
 1394 0106 90ED062A 		vldr.32	s4, [r0, #24]
 1395 010a 90ED017A 		vldr.32	s14, [r0, #4]
 1396 010e D0ED072A 		vldr.32	s5, [r0, #28]
 1397 0112 D0ED037A 		vldr.32	s15, [r0, #12]
 1398 0116 D5ED006A 		vldr.32	s13, [r5]
 1399 011a B8EE466A 		vcvt.f32.u32	s12, s12
 1400 011e 76EEC96A 		vsub.f32	s13, s13, s18
 1401 0122 A2EE067A 		vfma.f32	s14, s4, s12
 1402 0126 06EE10AA 		vmov	s12, r10	@ int
 1403 012a B8EE466A 		vcvt.f32.u32	s12, s12
 1404 012e 37EE687A 		vsub.f32	s14, s14, s17
 1405 0132 E2EE867A 		vfma.f32	s15, s5, s12
 1406 0136 A7EE075A 		vfma.f32	s10, s14, s14
 1407 013a 77EEC87A 		vsub.f32	s15, s15, s16
 1408 013e E7EE263A 		vfma.f32	s7, s14, s13
 1409 0142 A7EE274A 		vfma.f32	s8, s14, s15
 1410 0146 E7EEA74A 		vfma.f32	s9, s15, s15
 1411 014a E7EEA65A 		vfma.f32	s11, s15, s13
 1412              	.L191:
 1413 014e 0132     		adds	r2, r2, #1
 1414 0150 A242     		cmp	r2, r4
 1415 0152 05F10405 		add	r5, r5, #4
 1416 0156 C8D1     		bne	.L192
 1417              	.L190:
 1418 0158 0AF1010A 		add	r10, r10, #1
 1419 015c D045     		cmp	r8, r10
 1420 015e CE44     		add	lr, lr, r9
 1421 0160 2744     		add	r7, r7, r4
 1422 0162 BFD1     		bne	.L193
 1423 0164 64EE447A 		vnmul.f32	s15, s8, s8
 1424 0168 E5EE247A 		vfma.f32	s15, s10, s9
 1425 016c F5EEC07A 		vcmpe.f32	s15, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 26


 1426 0170 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1427 0174 66D9     		bls	.L183
 1428 0176 25EEC55A 		vnmul.f32	s10, s11, s10
 1429 017a 64EEE34A 		vnmul.f32	s9, s9, s7
 1430 017e A4EE235A 		vfma.f32	s10, s8, s7
 1431 0182 E4EE254A 		vfma.f32	s9, s8, s11
 1432 0186 85EE27AA 		vdiv.f32	s20, s10, s15
 1433 018a C4EEA79A 		vdiv.f32	s19, s9, s15
 1434 018e 2AEE0A0A 		vmul.f32	s0, s20, s20
 1435 0192 B7EE00BA 		vmov.f32	s22, #1.0e+0
 1436 0196 A9EEA90A 		vfma.f32	s0, s19, s19
 1437 019a 30EE0B0A 		vadd.f32	s0, s0, s22
 1438 019e B5EE400A 		vcmp.f32	s0, #0
 1439 01a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1440 01a6 F1EEC0AA 		vsqrt.f32	s21, s0
 1441 01aa 50D4     		bmi	.L227
 1442 01ac CBEE2A7A 		vdiv.f32	s15, s22, s21
 1443 01b0 2AEE274A 		vmul.f32	s8, s20, s15
 1444 01b4 69EEA74A 		vmul.f32	s9, s19, s15
 1445 01b8 28EE045A 		vmul.f32	s10, s16, s8
 1446 01bc A8EEA45A 		vfma.f32	s10, s17, s9
 1447 01c0 A9EE275A 		vfma.f32	s10, s18, s15
 1448              	.L199:
 1449 01c4 0027     		movs	r7, #0
 1450 01c6 DDF80080 		ldr	r8, [sp]
 1451 01ca B946     		mov	r9, r7
 1452 01cc 4FEA840E 		lsl	lr, r4, #2
 1453 01d0 4FF0010C 		mov	ip, #1
 1454              	.L198:
 1455 01d4 84B3     		cbz	r4, .L195
 1456 01d6 4546     		mov	r5, r8
 1457 01d8 0022     		movs	r2, #0
 1458              	.L197:
 1459 01da BB18     		adds	r3, r7, r2
 1460 01dc 5909     		lsrs	r1, r3, #5
 1461 01de 01F5E371 		add	r1, r1, #454
 1462 01e2 03F01F03 		and	r3, r3, #31
 1463 01e6 50F82110 		ldr	r1, [r0, r1, lsl #2]
 1464 01ea 0CFA03F3 		lsl	r3, ip, r3
 1465 01ee 0B42     		tst	r3, r1
 1466 01f0 1DD1     		bne	.L196
 1467 01f2 06EE909A 		vmov	s13, r9	@ int
 1468 01f6 D0ED075A 		vldr.32	s11, [r0, #28]
 1469 01fa D0ED037A 		vldr.32	s15, [r0, #12]
 1470 01fe 90ED066A 		vldr.32	s12, [r0, #24]
 1471 0202 90ED017A 		vldr.32	s14, [r0, #4]
 1472 0206 F8EE666A 		vcvt.f32.u32	s13, s13
 1473 020a E5EEA67A 		vfma.f32	s15, s11, s13
 1474 020e 06EE902A 		vmov	s13, r2	@ int
 1475 0212 F8EE666A 		vcvt.f32.u32	s13, s13
 1476 0216 67EE847A 		vmul.f32	s15, s15, s8
 1477 021a A6EE267A 		vfma.f32	s14, s12, s13
 1478 021e E7EE247A 		vfma.f32	s15, s14, s9
 1479 0222 75EE677A 		vsub.f32	s15, s10, s15
 1480 0226 67EEAA7A 		vmul.f32	s15, s15, s21
 1481 022a C5ED007A 		vstr.32	s15, [r5]
 1482              	.L196:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 27


 1483 022e 0132     		adds	r2, r2, #1
 1484 0230 A242     		cmp	r2, r4
 1485 0232 05F10405 		add	r5, r5, #4
 1486 0236 D0D1     		bne	.L197
 1487              	.L195:
 1488 0238 09F10109 		add	r9, r9, #1
 1489 023c B145     		cmp	r9, r6
 1490 023e F044     		add	r8, r8, lr
 1491 0240 2744     		add	r7, r7, r4
 1492 0242 C7D1     		bne	.L198
 1493              	.L183:
 1494 0244 03B0     		add	sp, sp, #12
 1495              		@ sp needed
 1496 0246 BDEC088B 		vldm	sp!, {d8-d11}
 1497 024a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1498              	.L227:
 1499 024e 0190     		str	r0, [sp, #4]
 1500 0250 FFF7FEFF 		bl	sqrtf
 1501 0254 CBEE2A7A 		vdiv.f32	s15, s22, s21
 1502 0258 0198     		ldr	r0, [sp, #4]
 1503 025a 466A     		ldr	r6, [r0, #36]
 1504 025c 2AEE274A 		vmul.f32	s8, s20, s15
 1505 0260 69EEA74A 		vmul.f32	s9, s19, s15
 1506 0264 28EE045A 		vmul.f32	s10, s16, s8
 1507 0268 A8EEA45A 		vfma.f32	s10, s17, s9
 1508 026c A9EE275A 		vfma.f32	s10, s18, s15
 1509 0270 002E     		cmp	r6, #0
 1510 0272 E7D0     		beq	.L183
 1511 0274 046A     		ldr	r4, [r0, #32]
 1512 0276 A5E7     		b	.L199
 1513              	.L229:
 1514              		.align	2
 1515              	.L228:
 1516 0278 00000000 		.word	0
 1517              		.size	_ZN9HeightMap18ExtrapolateMissingEv, .-_ZN9HeightMap18ExtrapolateMissingEv
 1518              		.section	.text._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef,"ax",%progbits
 1519              		.align	1
 1520              		.p2align 2,,3
 1521              		.global	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef
 1522              		.syntax unified
 1523              		.thumb
 1524              		.thumb_func
 1525              		.fpu fpv4-sp-d16
 1526              		.type	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, %function
 1527              	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef:
 1528              		@ args = 0, pretend = 0, frame = 408
 1529              		@ frame_needed = 0, uses_anonymous_args = 0
 1530 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1531 0004 E7B0     		sub	sp, sp, #412
 1532 0006 0546     		mov	r5, r0
 1533 0008 00F2147B 		addw	fp, r0, #1812
 1534 000c 13AE     		add	r6, sp, #76
 1535 000e 40F24B10 		movw	r0, #331
 1536 0012 CDE90460 		strd	r6, r0, [sp, #16]
 1537 0016 8846     		mov	r8, r1
 1538 0018 9146     		mov	r9, r2
 1539 001a 5C46     		mov	r4, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 28


 1540 001c 05F24C73 		addw	r3, r5, #1868
 1541 0020 4FF0000A 		mov	r10, #0
 1542              	.L231:
 1543 0024 44F804AF 		str	r10, [r4, #4]!
 1544 0028 9C42     		cmp	r4, r3
 1545 002a FBD1     		bne	.L231
 1546 002c 06A8     		add	r0, sp, #24
 1547 002e FFF7FEFF 		bl	_ZN14GridDefinitionC1Ev
 1548 0032 40F24B12 		movw	r2, #331
 1549 0036 3146     		mov	r1, r6
 1550 0038 4046     		mov	r0, r8
 1551 003a FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1552 003e 0028     		cmp	r0, #0
 1553 0040 7CDD     		ble	.L235
 1554 0042 6549     		ldr	r1, .L277
 1555 0044 3046     		mov	r0, r6
 1556 0046 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1557 004a 0746     		mov	r7, r0
 1558 004c 0028     		cmp	r0, #0
 1559 004e 7ED0     		beq	.L272
 1560 0050 40F24B12 		movw	r2, #331
 1561 0054 3146     		mov	r1, r6
 1562 0056 4046     		mov	r0, r8
 1563 0058 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1564 005c 0028     		cmp	r0, #0
 1565 005e 6DDD     		ble	.L235
 1566 0060 04A8     		add	r0, sp, #16
 1567 0062 FFF7FEFF 		bl	_ZN14GridDefinition12CheckHeadingERK9StringRef
 1568 0066 031E     		subs	r3, r0, #0
 1569 0068 7ADB     		blt	.L273
 1570 006a 40F24B12 		movw	r2, #331
 1571 006e 3146     		mov	r1, r6
 1572 0070 4046     		mov	r0, r8
 1573 0072 0193     		str	r3, [sp, #4]
 1574 0074 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1575 0078 0028     		cmp	r0, #0
 1576 007a 5FDD     		ble	.L235
 1577 007c 019B     		ldr	r3, [sp, #4]
 1578 007e 04A9     		add	r1, sp, #16
 1579 0080 1A46     		mov	r2, r3
 1580 0082 06A8     		add	r0, sp, #24
 1581 0084 FFF7FEFF 		bl	_ZN14GridDefinition14ReadParametersERK9StringRefi
 1582 0088 0346     		mov	r3, r0
 1583 008a 0028     		cmp	r0, #0
 1584 008c 00F09880 		beq	.L274
 1585 0090 9DF84870 		ldrb	r7, [sp, #72]	@ zero_extendqisi2
 1586 0094 002F     		cmp	r7, #0
 1587 0096 00F09880 		beq	.L275
 1588 009a 089A     		ldr	r2, [sp, #32]	@ float
 1589 009c AA60     		str	r2, [r5, #8]	@ float
 1590 009e 0A9A     		ldr	r2, [sp, #40]	@ float
 1591 00a0 2A61     		str	r2, [r5, #16]	@ float
 1592 00a2 0C9A     		ldr	r2, [sp, #48]	@ float
 1593 00a4 079B     		ldr	r3, [sp, #28]	@ float
 1594 00a6 AA61     		str	r2, [r5, #24]	@ float
 1595 00a8 109A     		ldr	r2, [sp, #64]	@ float
 1596 00aa 6B60     		str	r3, [r5, #4]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 29


 1597 00ac AA62     		str	r2, [r5, #40]	@ float
 1598 00ae 099B     		ldr	r3, [sp, #36]	@ float
 1599 00b0 EB60     		str	r3, [r5, #12]	@ float
 1600 00b2 DDE90E12 		ldrd	r1, r2, [sp, #56]
 1601 00b6 0B9B     		ldr	r3, [sp, #44]	@ float
 1602 00b8 6B61     		str	r3, [r5, #20]	@ float
 1603 00ba 0D9B     		ldr	r3, [sp, #52]	@ float
 1604 00bc EB61     		str	r3, [r5, #28]	@ float
 1605 00be C5E90812 		strd	r1, r2, [r5, #32]
 1606 00c2 119B     		ldr	r3, [sp, #68]	@ float
 1607 00c4 EB62     		str	r3, [r5, #44]	@ float
 1608 00c6 0123     		movs	r3, #1
 1609 00c8 85F83030 		strb	r3, [r5, #48]
 1610 00cc 85F850A7 		strb	r10, [r5, #1872]
 1611 00d0 0023     		movs	r3, #0
 1612              	.L239:
 1613 00d2 4BF8043F 		str	r3, [fp, #4]!
 1614 00d6 A345     		cmp	fp, r4
 1615 00d8 FBD1     		bne	.L239
 1616 00da 52B3     		cbz	r2, .L240
 1617 00dc 0024     		movs	r4, #0
 1618              	.L251:
 1619 00de 40F24B12 		movw	r2, #331
 1620 00e2 3146     		mov	r1, r6
 1621 00e4 4046     		mov	r0, r8
 1622 00e6 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1623 00ea 0028     		cmp	r0, #0
 1624 00ec 26DD     		ble	.L235
 1625 00ee 2B6A     		ldr	r3, [r5, #32]
 1626 00f0 DBB1     		cbz	r3, .L241
 1627 00f2 4FF0000A 		mov	r10, #0
 1628 00f6 3346     		mov	r3, r6
 1629              	.L242:
 1630 00f8 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1631 00fa 2029     		cmp	r1, #32
 1632 00fc 9B46     		mov	fp, r3
 1633 00fe 03F10103 		add	r3, r3, #1
 1634 0102 F9D0     		beq	.L242
 1635 0104 0929     		cmp	r1, #9
 1636 0106 F7D0     		beq	.L242
 1637 0108 3029     		cmp	r1, #48
 1638 010a 2ED1     		bne	.L244
 1639 010c 9BF80110 		ldrb	r1, [fp, #1]	@ zero_extendqisi2
 1640 0110 2C29     		cmp	r1, #44
 1641 0112 00D0     		beq	.L245
 1642 0114 49BB     		cbnz	r1, .L244
 1643              	.L245:
 1644 0116 2A6A     		ldr	r2, [r5, #32]
 1645 0118 0BF10103 		add	r3, fp, #1
 1646              	.L246:
 1647 011c 2C29     		cmp	r1, #44
 1648 011e 0AF1010A 		add	r10, r10, #1
 1649 0122 08BF     		it	eq
 1650 0124 0133     		addeq	r3, r3, #1
 1651 0126 5245     		cmp	r2, r10
 1652 0128 E6D8     		bhi	.L242
 1653              	.L241:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 30


 1654 012a 6B6A     		ldr	r3, [r5, #36]
 1655 012c 0134     		adds	r4, r4, #1
 1656 012e A342     		cmp	r3, r4
 1657 0130 D5D8     		bhi	.L251
 1658              	.L240:
 1659 0132 2846     		mov	r0, r5
 1660 0134 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 1661 0138 0027     		movs	r7, #0
 1662 013a 04E0     		b	.L233
 1663              	.L235:
 1664 013c 4846     		mov	r0, r9
 1665 013e 2749     		ldr	r1, .L277+4
 1666 0140 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1667 0144 0127     		movs	r7, #1
 1668              	.L233:
 1669 0146 3846     		mov	r0, r7
 1670 0148 67B0     		add	sp, sp, #412
 1671              		@ sp needed
 1672 014a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1673              	.L272:
 1674 014e 4846     		mov	r0, r9
 1675 0150 2349     		ldr	r1, .L277+8
 1676 0152 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1677 0156 0127     		movs	r7, #1
 1678 0158 3846     		mov	r0, r7
 1679 015a 67B0     		add	sp, sp, #412
 1680              		@ sp needed
 1681 015c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1682              	.L273:
 1683 0160 4846     		mov	r0, r9
 1684 0162 2049     		ldr	r1, .L277+12
 1685 0164 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1686 0168 EDE7     		b	.L233
 1687              	.L244:
 1688 016a 03A9     		add	r1, sp, #12
 1689 016c 5846     		mov	r0, fp
 1690 016e FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 1691 0172 039B     		ldr	r3, [sp, #12]
 1692 0174 5B45     		cmp	r3, fp
 1693 0176 1AD0     		beq	.L276
 1694 0178 2A6A     		ldr	r2, [r5, #32]
 1695 017a 04FB02A1 		mla	r1, r4, r2, r10
 1696 017e B1F5DC7F 		cmp	r1, #440
 1697 0182 12D8     		bhi	.L248
 1698 0184 4FEA511E 		lsr	lr, r1, #5
 1699 0188 05EB8100 		add	r0, r5, r1, lsl #2
 1700 018c 05EB8E0E 		add	lr, r5, lr, lsl #2
 1701 0190 80ED0D0A 		vstr.32	s0, [r0, #52]
 1702 0194 DEF81807 		ldr	r0, [lr, #1816]
 1703 0198 01F01F01 		and	r1, r1, #31
 1704 019c 4FF0010C 		mov	ip, #1
 1705 01a0 0CFA01F1 		lsl	r1, ip, r1
 1706 01a4 0143     		orrs	r1, r1, r0
 1707 01a6 CEF81817 		str	r1, [lr, #1816]
 1708              	.L248:
 1709 01aa 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1710 01ac B6E7     		b	.L246
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 31


 1711              	.L276:
 1712 01ae ABEB0603 		sub	r3, fp, r6
 1713 01b2 0133     		adds	r3, r3, #1
 1714 01b4 E21C     		adds	r2, r4, #3
 1715 01b6 4846     		mov	r0, r9
 1716 01b8 0B49     		ldr	r1, .L277+16
 1717 01ba FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1718 01be C2E7     		b	.L233
 1719              	.L274:
 1720 01c0 4846     		mov	r0, r9
 1721 01c2 0A49     		ldr	r1, .L277+20
 1722 01c4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1723 01c8 BDE7     		b	.L233
 1724              	.L275:
 1725 01ca 4846     		mov	r0, r9
 1726 01cc 0849     		ldr	r1, .L277+24
 1727 01ce 1F46     		mov	r7, r3
 1728 01d0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1729 01d4 B7E7     		b	.L233
 1730              	.L278:
 1731 01d6 00BF     		.align	2
 1732              	.L277:
 1733 01d8 00000000 		.word	.LC9
 1734 01dc 00000000 		.word	.LC14
 1735 01e0 20000000 		.word	.LC15
 1736 01e4 48000000 		.word	.LC16
 1737 01e8 88000000 		.word	.LC19
 1738 01ec 58000000 		.word	.LC17
 1739 01f0 78000000 		.word	.LC18
 1740              		.size	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, .-_ZN9HeightMap12LoadFromFileEP9FileSto
 1741              		.global	_ZTV14GridDefinition
 1742              		.global	_ZN9HeightMap16HeightMapCommentE
 1743              		.global	_ZN14GridDefinition16objectModelTableE
 1744              		.global	_ZN14GridDefinition19HeightMapLabelLinesE
 1745              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1746              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1747              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1748              	_ZL28cpu_irq_prev_interrupt_state:
 1749 0000 00       		.space	1
 1750              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1751              		.align	2
 1752              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1753              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1754              	_ZL32cpu_irq_critical_section_counter:
 1755 0000 00000000 		.space	4
 1756              		.section	.rodata._ZN14GridDefinition12CheckHeadingERK9StringRef.str1.4,"aMS",%progbits,1
 1757              		.align	2
 1758              	.LC3:
 1759 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,spacing,xnum,ynum\000"
 1759      2C786D61 
 1759      782C796D 
 1759      696E2C79 
 1759      6D61782C 
 1760              		.section	.rodata._ZN14GridDefinition16objectModelTableE,"a",%progbits
 1761              		.align	2
 1762              		.set	.LANCHOR0,. + 0
 1763              		.type	_ZN14GridDefinition16objectModelTableE, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 32


 1764              		.size	_ZN14GridDefinition16objectModelTableE, 12
 1765              	_ZN14GridDefinition16objectModelTableE:
 1766 0000 00000000 		.word	.LC20
 1767 0004 00000000 		.word	_ZN14GridDefinitionUlP11ObjectModelE_4_FUNES1_
 1768 0008 04       		.byte	4
 1769 0009 00       		.space	1
 1770 000a 0000     		.short	0
 1771              		.section	.rodata._ZN14GridDefinition19HeightMapLabelLinesE,"a",%progbits
 1772              		.align	2
 1773              		.type	_ZN14GridDefinition19HeightMapLabelLinesE, %object
 1774              		.size	_ZN14GridDefinition19HeightMapLabelLinesE, 8
 1775              	_ZN14GridDefinition19HeightMapLabelLinesE:
 1776 0000 00000000 		.word	.LC3
 1777 0004 00000000 		.word	.LC1
 1778              		.section	.rodata._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef.str1.4,"aMS",%progbits,1
 1779              		.align	2
 1780              	.LC14:
 1781 0000 6661696C 		.ascii	"failed to read line from file\000"
 1781      65642074 
 1781      6F207265 
 1781      6164206C 
 1781      696E6520 
 1782 001e 0000     		.space	2
 1783              	.LC15:
 1784 0020 62616420 		.ascii	"bad header line or wrong version header\000"
 1784      68656164 
 1784      6572206C 
 1784      696E6520 
 1784      6F722077 
 1785              	.LC16:
 1786 0048 62616420 		.ascii	"bad label line\000"
 1786      6C616265 
 1786      6C206C69 
 1786      6E6500
 1787 0057 00       		.space	1
 1788              	.LC17:
 1789 0058 6661696C 		.ascii	"failed to parse grid parameters\000"
 1789      65642074 
 1789      6F207061 
 1789      72736520 
 1789      67726964 
 1790              	.LC18:
 1791 0078 696E7661 		.ascii	"invalid grid\000"
 1791      6C696420 
 1791      67726964 
 1791      00
 1792 0085 000000   		.space	3
 1793              	.LC19:
 1794 0088 6E756D62 		.ascii	"number expected at line %lu column %d\000"
 1794      65722065 
 1794      78706563 
 1794      74656420 
 1794      6174206C 
 1795              		.section	.rodata._ZN9HeightMap16HeightMapCommentE,"a",%progbits
 1796              		.align	2
 1797              		.type	_ZN9HeightMap16HeightMapCommentE, %object
 1798              		.size	_ZN9HeightMap16HeightMapCommentE, 4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 33


 1799              	_ZN9HeightMap16HeightMapCommentE:
 1800 0000 00000000 		.word	.LC9
 1801              		.section	.rodata._ZNK14GridDefinition10PrintErrorEffRK9StringRef.str1.4,"aMS",%progbits,1
 1802              		.align	2
 1803              	.LC4:
 1804 0000 53706163 		.ascii	"Spacing too small\000"
 1804      696E6720 
 1804      746F6F20 
 1804      736D616C 
 1804      6C00
 1805 0012 0000     		.space	2
 1806              	.LC5:
 1807 0014 58207261 		.ascii	"X range too small\000"
 1807      6E676520 
 1807      746F6F20 
 1807      736D616C 
 1807      6C00
 1808 0026 0000     		.space	2
 1809              	.LC6:
 1810 0028 59207261 		.ascii	"Y range too small\000"
 1810      6E676520 
 1810      746F6F20 
 1810      736D616C 
 1810      6C00
 1811 003a 0000     		.space	2
 1812              	.LC7:
 1813 003c 42616420 		.ascii	"Bad radius\000"
 1813      72616469 
 1813      757300
 1814 0047 00       		.space	1
 1815              	.LC8:
 1816 0048 546F6F20 		.ascii	"Too many grid points; suggest increase spacing to %"
 1816      6D616E79 
 1816      20677269 
 1816      6420706F 
 1816      696E7473 
 1817 007b 2E31666D 		.ascii	".1fmm\000"
 1817      6D00
 1818              		.section	.rodata._ZNK14GridDefinition15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,1
 1819              		.align	2
 1820              	.LC0:
 1821 0000 58252E31 		.ascii	"X%.1f:%.1f, Y%.1f:%.1f, radius %.1f, X spacing %.1f"
 1821      663A252E 
 1821      31662C20 
 1821      59252E31 
 1821      663A252E 
 1822 0033 2C205920 		.ascii	", Y spacing %.1f, %lu points\000"
 1822      73706163 
 1822      696E6720 
 1822      252E3166 
 1822      2C20256C 
 1823              		.section	.rodata._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef.str1.4,"aMS",%progbi
 1824              		.align	2
 1825              	.LC1:
 1826 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,xspacing,yspacing,xnum,y"
 1826      2C786D61 
 1826      782C796D 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc5f126X.s 			page 34


 1826      696E2C79 
 1826      6D61782C 
 1827 0033 6E756D00 		.ascii	"num\000"
 1828 0037 00       		.space	1
 1829              	.LC2:
 1830 0038 25730A25 		.ascii	"%s\012%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%li,%li\012"
 1830      2E32662C 
 1830      252E3266 
 1830      2C252E32 
 1830      662C252E 
 1831 0066 00       		.ascii	"\000"
 1832              		.section	.rodata._ZNK9HeightMap10SaveToFileEP9FileStoref.str1.4,"aMS",%progbits,1
 1833              		.align	2
 1834              	.LC9:
 1835 0000 52657052 		.ascii	"RepRapFirmware height map file v2\000"
 1835      61704669 
 1835      726D7761 
 1835      72652068 
 1835      65696768 
 1836 0022 0000     		.space	2
 1837              	.LC10:
 1838 0024 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 1838      65726174 
 1838      65642061 
 1838      74202530 
 1838      34752D25 
 1839 004b 00       		.space	1
 1840              	.LC11:
 1841 004c 2C206D65 		.ascii	", mean error %.3f, deviation %.3f\012\000"
 1841      616E2065 
 1841      72726F72 
 1841      20252E33 
 1841      662C2064 
 1842 006f 00       		.space	1
 1843              	.LC12:
 1844 0070 25372E33 		.ascii	"%7.3f\000"
 1844      6600
 1845 0076 0000     		.space	2
 1846              	.LC13:
 1847 0078 20202020 		.ascii	"      0\000"
 1847      20203000 
 1848              		.section	.rodata._ZTV14GridDefinition,"a",%progbits
 1849              		.align	2
 1850              		.set	.LANCHOR1,. + 0
 1851              		.type	_ZTV14GridDefinition, %object
 1852              		.size	_ZTV14GridDefinition, 12
 1853              	_ZTV14GridDefinition:
 1854 0000 00000000 		.word	0
 1855 0004 00000000 		.word	0
 1856 0008 00000000 		.word	_ZNK14GridDefinition19GetObjectModelTableERj
 1857              		.section	.rodata.str1.4,"aMS",%progbits,1
 1858              		.align	2
 1859              	.LC20:
 1860 0000 72616469 		.ascii	"radius\000"
 1860      757300
 1861              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
