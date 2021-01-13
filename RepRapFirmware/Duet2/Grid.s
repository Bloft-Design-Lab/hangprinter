ARM GAS  /tmp/ccmrYpeN.s 			page 1


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
  14              		.section	.text._ZN14GridDefinition13CheckValidityEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN14GridDefinition13CheckValidityEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14GridDefinition13CheckValidityEv, %function
  23              	_ZN14GridDefinition13CheckValidityEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 90ED007A 		vldr.32	s14, [r0]
  28 0004 D0ED017A 		vldr.32	s15, [r0, #4]
  29 0008 77EEC77A 		vsub.f32	s15, s15, s14
  30 000c B7EE007A 		vmov.f32	s14, #1.0e+0
  31 0010 F4EEC77A 		vcmpe.f32	s15, s14
  32 0014 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  33 0018 08DB     		blt	.L18
  34 001a D0ED056A 		vldr.32	s13, [r0, #20]
  35 001e 9FED2C7A 		vldr.32	s14, .L21
  36 0022 F4EEC76A 		vcmpe.f32	s13, s14
  37 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  38 002a 49DA     		bge	.L20
  39              	.L18:
  40 002c 0023     		movs	r3, #0
  41              	.L2:
  42 002e D0ED037A 		vldr.32	s15, [r0, #12]
  43 0032 90ED027A 		vldr.32	s14, [r0, #8]
  44 0036 C361     		str	r3, [r0, #28]
  45 0038 77EEC77A 		vsub.f32	s15, s15, s14
  46 003c F7EE006A 		vmov.f32	s13, #1.0e+0
  47 0040 F4EEE67A 		vcmpe.f32	s15, s13
  48 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  49 0048 34DB     		blt	.L5
  50 004a 90ED066A 		vldr.32	s12, [r0, #24]
  51 004e 9FED207A 		vldr.32	s14, .L21
  52 0052 B4EEC76A 		vcmpe.f32	s12, s14
  53 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  54 005a 2BDB     		blt	.L5
  55 005c 87EE867A 		vdiv.f32	s14, s15, s12
  56 0060 FCEEC77A 		vcvt.u32.f32	s15, s14
  57 0064 17EE902A 		vmov	r2, s15	@ int
ARM GAS  /tmp/ccmrYpeN.s 			page 2


  58 0068 0132     		adds	r2, r2, #1
  59 006a 02FB03F1 		mul	r1, r2, r3
  60 006e 0139     		subs	r1, r1, #1
  61 0070 B1F5DC7F 		cmp	r1, #440
  62 0074 0262     		str	r2, [r0, #32]
  63 0076 1FD8     		bhi	.L8
  64 0078 D0ED047A 		vldr.32	s15, [r0, #16]
  65 007c F5EEC07A 		vcmpe.f32	s15, #0
  66 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  67 0084 04D4     		bmi	.L9
  68 0086 F4EEE67A 		vcmpe.f32	s15, s13
  69 008a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  70 008e 13DB     		blt	.L8
  71              	.L9:
  72 0090 292B     		cmp	r3, #41
  73 0092 11D8     		bhi	.L8
  74 0094 90ED057A 		vldr.32	s14, [r0, #20]
  75 0098 F7EE007A 		vmov.f32	s15, #1.0e+0
  76 009c C7EE876A 		vdiv.f32	s13, s15, s14
  77 00a0 0123     		movs	r3, #1
  78 00a2 80F82C30 		strb	r3, [r0, #44]
  79 00a6 87EE867A 		vdiv.f32	s14, s15, s12
  80 00aa C0ED096A 		vstr.32	s13, [r0, #36]
  81 00ae 80ED0A7A 		vstr.32	s14, [r0, #40]
  82 00b2 7047     		bx	lr
  83              	.L5:
  84 00b4 0023     		movs	r3, #0
  85 00b6 0362     		str	r3, [r0, #32]
  86              	.L8:
  87 00b8 0023     		movs	r3, #0
  88 00ba 80F82C30 		strb	r3, [r0, #44]
  89 00be 7047     		bx	lr
  90              	.L20:
  91 00c0 87EEA67A 		vdiv.f32	s14, s15, s13
  92 00c4 FCEEC77A 		vcvt.u32.f32	s15, s14
  93 00c8 17EE903A 		vmov	r3, s15	@ int
  94 00cc 0133     		adds	r3, r3, #1
  95 00ce AEE7     		b	.L2
  96              	.L22:
  97              		.align	2
  98              	.L21:
  99 00d0 CDCCCC3D 		.word	1036831949
 100              		.size	_ZN14GridDefinition13CheckValidityEv, .-_ZN14GridDefinition13CheckValidityEv
 101              		.section	.text._ZN14GridDefinitionC2Ev,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN14GridDefinitionC2Ev
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN14GridDefinitionC2Ev, %function
 110              	_ZN14GridDefinitionC2Ev:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 10B5     		push	{r4, lr}
 114 0002 0023     		movs	r3, #0
ARM GAS  /tmp/ccmrYpeN.s 			page 3


 115 0004 054A     		ldr	r2, .L25
 116 0006 0360     		str	r3, [r0]	@ float
 117 0008 8360     		str	r3, [r0, #8]	@ float
 118 000a 4361     		str	r3, [r0, #20]	@ float
 119 000c 8361     		str	r3, [r0, #24]	@ float
 120 000e 4260     		str	r2, [r0, #4]	@ float
 121 0010 C260     		str	r2, [r0, #12]	@ float
 122 0012 0261     		str	r2, [r0, #16]	@ float
 123 0014 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 124 0018 10BD     		pop	{r4, pc}
 125              	.L26:
 126 001a 00BF     		.align	2
 127              	.L25:
 128 001c 000080BF 		.word	-1082130432
 129              		.size	_ZN14GridDefinitionC2Ev, .-_ZN14GridDefinitionC2Ev
 130              		.global	_ZN14GridDefinitionC1Ev
 131              		.thumb_set _ZN14GridDefinitionC1Ev,_ZN14GridDefinitionC2Ev
 132              		.section	.text._ZN14GridDefinition3SetEPKfS1_fS1_,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	_ZN14GridDefinition3SetEPKfS1_fS1_
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	_ZN14GridDefinition3SetEPKfS1_fS1_, %function
 141              	_ZN14GridDefinition3SetEPKfS1_fS1_:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144 0000 38B5     		push	{r3, r4, r5, lr}
 145 0002 0D68     		ldr	r5, [r1]	@ float
 146 0004 0560     		str	r5, [r0]	@ float
 147 0006 4968     		ldr	r1, [r1, #4]	@ float
 148 0008 4160     		str	r1, [r0, #4]	@ float
 149 000a 1168     		ldr	r1, [r2]	@ float
 150 000c 8160     		str	r1, [r0, #8]	@ float
 151 000e 5268     		ldr	r2, [r2, #4]	@ float
 152 0010 C260     		str	r2, [r0, #12]	@ float
 153 0012 80ED040A 		vstr.32	s0, [r0, #16]
 154 0016 1A68     		ldr	r2, [r3]	@ float
 155 0018 4261     		str	r2, [r0, #20]	@ float
 156 001a 5B68     		ldr	r3, [r3, #4]	@ float
 157 001c 8361     		str	r3, [r0, #24]	@ float
 158 001e FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 159 0022 90F82C00 		ldrb	r0, [r0, #44]	@ zero_extendqisi2
 160 0026 38BD     		pop	{r3, r4, r5, pc}
 161              		.size	_ZN14GridDefinition3SetEPKfS1_fS1_, .-_ZN14GridDefinition3SetEPKfS1_fS1_
 162              		.section	.text._ZNK14GridDefinition14GetXCoordinateEj,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	_ZNK14GridDefinition14GetXCoordinateEj
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv4-sp-d16
 170              		.type	_ZNK14GridDefinition14GetXCoordinateEj, %function
 171              	_ZNK14GridDefinition14GetXCoordinateEj:
ARM GAS  /tmp/ccmrYpeN.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174              		@ link register save eliminated.
 175 0000 07EE101A 		vmov	s14, r1	@ int
 176 0004 D0ED057A 		vldr.32	s15, [r0, #20]
 177 0008 90ED000A 		vldr.32	s0, [r0]
 178 000c B8EE477A 		vcvt.f32.u32	s14, s14
 179 0010 A7EE270A 		vfma.f32	s0, s14, s15
 180 0014 7047     		bx	lr
 181              		.size	_ZNK14GridDefinition14GetXCoordinateEj, .-_ZNK14GridDefinition14GetXCoordinateEj
 182 0016 00BF     		.section	.text._ZNK14GridDefinition14GetYCoordinateEj,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZNK14GridDefinition14GetYCoordinateEj
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZNK14GridDefinition14GetYCoordinateEj, %function
 191              	_ZNK14GridDefinition14GetYCoordinateEj:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 07EE101A 		vmov	s14, r1	@ int
 196 0004 D0ED067A 		vldr.32	s15, [r0, #24]
 197 0008 90ED020A 		vldr.32	s0, [r0, #8]
 198 000c B8EE477A 		vcvt.f32.u32	s14, s14
 199 0010 A7EE270A 		vfma.f32	s0, s14, s15
 200 0014 7047     		bx	lr
 201              		.size	_ZNK14GridDefinition14GetYCoordinateEj, .-_ZNK14GridDefinition14GetYCoordinateEj
 202 0016 00BF     		.section	.text._ZNK14GridDefinition10IsInRadiusEff,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	_ZNK14GridDefinition10IsInRadiusEff
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	_ZNK14GridDefinition10IsInRadiusEff, %function
 211              	_ZNK14GridDefinition10IsInRadiusEff:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 D0ED047A 		vldr.32	s15, [r0, #16]
 216 0004 F5EEC07A 		vcmpe.f32	s15, #0
 217 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 218 000c 0DD4     		bmi	.L33
 219 000e 60EEA00A 		vmul.f32	s1, s1, s1
 220 0012 67EEA77A 		vmul.f32	s15, s15, s15
 221 0016 E0EE000A 		vfma.f32	s1, s0, s0
 222 001a F4EEE70A 		vcmpe.f32	s1, s15
 223 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 224 0022 4CBF     		ite	mi
 225 0024 0120     		movmi	r0, #1
 226 0026 0020     		movpl	r0, #0
 227 0028 7047     		bx	lr
 228              	.L33:
ARM GAS  /tmp/ccmrYpeN.s 			page 5


 229 002a 0120     		movs	r0, #1
 230 002c 7047     		bx	lr
 231              		.size	_ZNK14GridDefinition10IsInRadiusEff, .-_ZNK14GridDefinition10IsInRadiusEff
 232              		.global	__aeabi_f2d
 233 002e 00BF     		.section	.text._ZNK14GridDefinition15PrintParametersERK9StringRef,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZNK14GridDefinition15PrintParametersERK9StringRef
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZNK14GridDefinition15PrintParametersERK9StringRef, %function
 242              	_ZNK14GridDefinition15PrintParametersERK9StringRef:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 246 0002 0446     		mov	r4, r0
 247 0004 8FB0     		sub	sp, sp, #60
 248 0006 0068     		ldr	r0, [r0]	@ float
 249 0008 0D46     		mov	r5, r1
 250 000a FFF7FEFF 		bl	__aeabi_f2d
 251 000e D4E90723 		ldrd	r2, r3, [r4, #28]
 252 0012 0646     		mov	r6, r0
 253 0014 03FB02F3 		mul	r3, r3, r2
 254 0018 A069     		ldr	r0, [r4, #24]	@ float
 255 001a 0C93     		str	r3, [sp, #48]
 256 001c 0F46     		mov	r7, r1
 257 001e FFF7FEFF 		bl	__aeabi_f2d
 258 0022 CDE90A01 		strd	r0, [sp, #40]
 259 0026 6069     		ldr	r0, [r4, #20]	@ float
 260 0028 FFF7FEFF 		bl	__aeabi_f2d
 261 002c CDE90801 		strd	r0, [sp, #32]
 262 0030 2069     		ldr	r0, [r4, #16]	@ float
 263 0032 FFF7FEFF 		bl	__aeabi_f2d
 264 0036 CDE90601 		strd	r0, [sp, #24]
 265 003a E068     		ldr	r0, [r4, #12]	@ float
 266 003c FFF7FEFF 		bl	__aeabi_f2d
 267 0040 CDE90401 		strd	r0, [sp, #16]
 268 0044 A068     		ldr	r0, [r4, #8]	@ float
 269 0046 FFF7FEFF 		bl	__aeabi_f2d
 270 004a CDE90201 		strd	r0, [sp, #8]
 271 004e 6068     		ldr	r0, [r4, #4]	@ float
 272 0050 FFF7FEFF 		bl	__aeabi_f2d
 273 0054 3246     		mov	r2, r6
 274 0056 CDE90001 		strd	r0, [sp]
 275 005a 3B46     		mov	r3, r7
 276 005c 2846     		mov	r0, r5
 277 005e 0249     		ldr	r1, .L36
 278 0060 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 279 0064 0FB0     		add	sp, sp, #60
 280              		@ sp needed
 281 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 282              	.L37:
 283              		.align	2
 284              	.L36:
 285 0068 00000000 		.word	.LC0
ARM GAS  /tmp/ccmrYpeN.s 			page 6


 286              		.size	_ZNK14GridDefinition15PrintParametersERK9StringRef, .-_ZNK14GridDefinition15PrintParametersE
 287              		.section	.text._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, %function
 296              	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 30B5     		push	{r4, r5, lr}
 300 0002 D0E90732 		ldrd	r3, r2, [r0, #28]
 301 0006 91B0     		sub	sp, sp, #68
 302 0008 0446     		mov	r4, r0
 303 000a 8069     		ldr	r0, [r0, #24]	@ float
 304 000c 0D46     		mov	r5, r1
 305 000e CDE90E32 		strd	r3, r2, [sp, #56]
 306 0012 FFF7FEFF 		bl	__aeabi_f2d
 307 0016 CDE90C01 		strd	r0, [sp, #48]
 308 001a 6069     		ldr	r0, [r4, #20]	@ float
 309 001c FFF7FEFF 		bl	__aeabi_f2d
 310 0020 CDE90A01 		strd	r0, [sp, #40]
 311 0024 2069     		ldr	r0, [r4, #16]	@ float
 312 0026 FFF7FEFF 		bl	__aeabi_f2d
 313 002a CDE90801 		strd	r0, [sp, #32]
 314 002e E068     		ldr	r0, [r4, #12]	@ float
 315 0030 FFF7FEFF 		bl	__aeabi_f2d
 316 0034 CDE90601 		strd	r0, [sp, #24]
 317 0038 A068     		ldr	r0, [r4, #8]	@ float
 318 003a FFF7FEFF 		bl	__aeabi_f2d
 319 003e CDE90401 		strd	r0, [sp, #16]
 320 0042 6068     		ldr	r0, [r4, #4]	@ float
 321 0044 FFF7FEFF 		bl	__aeabi_f2d
 322 0048 CDE90201 		strd	r0, [sp, #8]
 323 004c 2068     		ldr	r0, [r4]	@ float
 324 004e FFF7FEFF 		bl	__aeabi_f2d
 325 0052 044A     		ldr	r2, .L40
 326 0054 CDE90001 		strd	r0, [sp]
 327 0058 2846     		mov	r0, r5
 328 005a 0349     		ldr	r1, .L40+4
 329 005c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 330 0060 11B0     		add	sp, sp, #68
 331              		@ sp needed
 332 0062 30BD     		pop	{r4, r5, pc}
 333              	.L41:
 334              		.align	2
 335              	.L40:
 336 0064 00000000 		.word	.LC1
 337 0068 38000000 		.word	.LC2
 338              		.size	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef, .-_ZNK14GridDefinition25WriteH
 339              		.section	.text._ZN14GridDefinition12CheckHeadingERK9StringRef,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN14GridDefinition12CheckHeadingERK9StringRef
ARM GAS  /tmp/ccmrYpeN.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	_ZN14GridDefinition12CheckHeadingERK9StringRef, %function
 348              	_ZN14GridDefinition12CheckHeadingERK9StringRef:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 10B5     		push	{r4, lr}
 352 0002 0949     		ldr	r1, .L48
 353 0004 0446     		mov	r4, r0
 354 0006 0068     		ldr	r0, [r0]
 355 0008 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 356 000c 48B9     		cbnz	r0, .L45
 357 000e 2068     		ldr	r0, [r4]
 358 0010 0649     		ldr	r1, .L48+4
 359 0012 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 360 0016 0028     		cmp	r0, #0
 361 0018 0CBF     		ite	eq
 362 001a 4FF0FF30 		moveq	r0, #-1
 363 001e 0120     		movne	r0, #1
 364 0020 10BD     		pop	{r4, pc}
 365              	.L45:
 366 0022 0020     		movs	r0, #0
 367 0024 10BD     		pop	{r4, pc}
 368              	.L49:
 369 0026 00BF     		.align	2
 370              	.L48:
 371 0028 00000000 		.word	.LC3
 372 002c 00000000 		.word	.LC1
 373              		.size	_ZN14GridDefinition12CheckHeadingERK9StringRef, .-_ZN14GridDefinition12CheckHeadingERK9Strin
 374              		.section	.text._ZN14GridDefinition14ReadParametersERK9StringRefi,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	_ZN14GridDefinition14ReadParametersERK9StringRefi
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu fpv4-sp-d16
 382              		.type	_ZN14GridDefinition14ReadParametersERK9StringRefi, %function
 383              	_ZN14GridDefinition14ReadParametersERK9StringRefi:
 384              		@ args = 0, pretend = 0, frame = 8
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 387 0002 0C68     		ldr	r4, [r1]
 388 0004 83B0     		sub	sp, sp, #12
 389 0006 0023     		movs	r3, #0
 390 0008 0546     		mov	r5, r0
 391 000a 80F82C30 		strb	r3, [r0, #44]
 392 000e 01A9     		add	r1, sp, #4
 393 0010 2046     		mov	r0, r4
 394 0012 1646     		mov	r6, r2
 395 0014 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 396 0018 0198     		ldr	r0, [sp, #4]
 397 001a 85ED000A 		vstr.32	s0, [r5]
 398 001e A042     		cmp	r0, r4
 399 0020 02D0     		beq	.L53
ARM GAS  /tmp/ccmrYpeN.s 			page 8


 400 0022 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 401 0024 2C2B     		cmp	r3, #44
 402 0026 02D0     		beq	.L57
 403              	.L53:
 404 0028 0020     		movs	r0, #0
 405              	.L52:
 406 002a 03B0     		add	sp, sp, #12
 407              		@ sp needed
 408 002c F0BD     		pop	{r4, r5, r6, r7, pc}
 409              	.L57:
 410 002e 441C     		adds	r4, r0, #1
 411 0030 2046     		mov	r0, r4
 412 0032 01A9     		add	r1, sp, #4
 413 0034 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 414 0038 019B     		ldr	r3, [sp, #4]
 415 003a 85ED010A 		vstr.32	s0, [r5, #4]
 416 003e A342     		cmp	r3, r4
 417 0040 F2D0     		beq	.L53
 418 0042 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 419 0044 2C2A     		cmp	r2, #44
 420 0046 EFD1     		bne	.L53
 421 0048 5C1C     		adds	r4, r3, #1
 422 004a 2046     		mov	r0, r4
 423 004c 01A9     		add	r1, sp, #4
 424 004e FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 425 0052 019B     		ldr	r3, [sp, #4]
 426 0054 85ED020A 		vstr.32	s0, [r5, #8]
 427 0058 A342     		cmp	r3, r4
 428 005a E5D0     		beq	.L53
 429 005c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 430 005e 2C2A     		cmp	r2, #44
 431 0060 E2D1     		bne	.L53
 432 0062 5C1C     		adds	r4, r3, #1
 433 0064 2046     		mov	r0, r4
 434 0066 01A9     		add	r1, sp, #4
 435 0068 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 436 006c 019B     		ldr	r3, [sp, #4]
 437 006e 85ED030A 		vstr.32	s0, [r5, #12]
 438 0072 A342     		cmp	r3, r4
 439 0074 D8D0     		beq	.L53
 440 0076 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 441 0078 2C2A     		cmp	r2, #44
 442 007a D5D1     		bne	.L53
 443 007c 5C1C     		adds	r4, r3, #1
 444 007e 2046     		mov	r0, r4
 445 0080 01A9     		add	r1, sp, #4
 446 0082 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 447 0086 019F     		ldr	r7, [sp, #4]
 448 0088 85ED040A 		vstr.32	s0, [r5, #16]
 449 008c A742     		cmp	r7, r4
 450 008e CBD0     		beq	.L53
 451 0090 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 452 0092 2C2A     		cmp	r2, #44
 453 0094 C8D1     		bne	.L53
 454 0096 0137     		adds	r7, r7, #1
 455 0098 3846     		mov	r0, r7
 456 009a 01A9     		add	r1, sp, #4
ARM GAS  /tmp/ccmrYpeN.s 			page 9


 457 009c FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 458 00a0 019C     		ldr	r4, [sp, #4]
 459 00a2 85ED050A 		vstr.32	s0, [r5, #20]
 460 00a6 BC42     		cmp	r4, r7
 461 00a8 BED0     		beq	.L53
 462 00aa 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 463 00ac 2C2B     		cmp	r3, #44
 464 00ae BBD1     		bne	.L53
 465 00b0 0134     		adds	r4, r4, #1
 466 00b2 E6B9     		cbnz	r6, .L54
 467 00b4 85ED060A 		vstr.32	s0, [r5, #24]
 468              	.L55:
 469 00b8 0A22     		movs	r2, #10
 470 00ba 01A9     		add	r1, sp, #4
 471 00bc 2046     		mov	r0, r4
 472 00be FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 473 00c2 019B     		ldr	r3, [sp, #4]
 474 00c4 E861     		str	r0, [r5, #28]
 475 00c6 A342     		cmp	r3, r4
 476 00c8 AED0     		beq	.L53
 477 00ca 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 478 00cc 2C2A     		cmp	r2, #44
 479 00ce ABD1     		bne	.L53
 480 00d0 5C1C     		adds	r4, r3, #1
 481 00d2 01A9     		add	r1, sp, #4
 482 00d4 2046     		mov	r0, r4
 483 00d6 0A22     		movs	r2, #10
 484 00d8 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 485 00dc 019B     		ldr	r3, [sp, #4]
 486 00de 2862     		str	r0, [r5, #32]
 487 00e0 A342     		cmp	r3, r4
 488 00e2 A1D0     		beq	.L53
 489 00e4 2846     		mov	r0, r5
 490 00e6 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 491 00ea 0120     		movs	r0, #1
 492 00ec 9DE7     		b	.L52
 493              	.L54:
 494 00ee 01A9     		add	r1, sp, #4
 495 00f0 2046     		mov	r0, r4
 496 00f2 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 497 00f6 019B     		ldr	r3, [sp, #4]
 498 00f8 85ED060A 		vstr.32	s0, [r5, #24]
 499 00fc A342     		cmp	r3, r4
 500 00fe 93D0     		beq	.L53
 501 0100 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 502 0102 2C2A     		cmp	r2, #44
 503 0104 90D1     		bne	.L53
 504 0106 5C1C     		adds	r4, r3, #1
 505 0108 D6E7     		b	.L55
 506              		.size	_ZN14GridDefinition14ReadParametersERK9StringRefi, .-_ZN14GridDefinition14ReadParametersERK9
 507 010a 00BF     		.section	.text._ZNK14GridDefinition10PrintErrorEffRK9StringRef,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  /tmp/ccmrYpeN.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, %function
 516              	_ZNK14GridDefinition10PrintErrorEffRK9StringRef:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 90ED057A 		vldr.32	s14, [r0, #20]
 520 0004 DFED357A 		vldr.32	s15, .L76
 521 0008 B4EEE77A 		vcmpe.f32	s14, s15
 522 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 523 0010 51D4     		bmi	.L59
 524 0012 90ED067A 		vldr.32	s14, [r0, #24]
 525 0016 B4EEE77A 		vcmpe.f32	s14, s15
 526 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 527 001e 4AD4     		bmi	.L59
 528 0020 C369     		ldr	r3, [r0, #28]
 529 0022 002B     		cmp	r3, #0
 530 0024 4FD0     		beq	.L73
 531 0026 026A     		ldr	r2, [r0, #32]
 532 0028 002A     		cmp	r2, #0
 533 002a 48D0     		beq	.L74
 534 002c 292B     		cmp	r3, #41
 535 002e 07D8     		bhi	.L64
 536 0030 B2F5DD7F 		cmp	r2, #442
 537 0034 04D2     		bcs	.L64
 538 0036 02FB03F3 		mul	r3, r2, r3
 539 003a B3F5DD7F 		cmp	r3, #442
 540 003e 46D3     		bcc	.L65
 541              	.L64:
 542 0040 10B5     		push	{r4, lr}
 543 0042 DFED277A 		vldr.32	s15, .L76+4
 544 0046 2DED048B 		vpush.64	{d8, d9}
 545 004a F0EE408A 		vmov.f32	s17, s0
 546 004e 20EE200A 		vmul.f32	s0, s0, s1
 547 0052 38EEA08A 		vadd.f32	s16, s17, s1
 548 0056 20EE270A 		vmul.f32	s0, s0, s15
 549 005a 0C46     		mov	r4, r1
 550 005c A8EE080A 		vfma.f32	s0, s16, s16
 551 0060 B5EE400A 		vcmp.f32	s0, #0
 552 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 553 0068 B1EEC09A 		vsqrt.f32	s18, s0
 554 006c 33D4     		bmi	.L75
 555              	.L66:
 556 006e 9FED1D7A 		vldr.32	s14, .L76+8
 557 0072 DFED1D6A 		vldr.32	s13, .L76+12
 558 0076 39EE088A 		vadd.f32	s16, s18, s16
 559 007a C8EE077A 		vdiv.f32	s15, s16, s14
 560 007e 88EEA67A 		vdiv.f32	s14, s17, s13
 561 0082 F4EE677A 		vcmp.f32	s15, s15
 562 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 563 008a 06D6     		bvs	.L67
 564 008c F4EEC77A 		vcmpe.f32	s15, s14
 565 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 566 0094 D8BF     		it	le
 567 0096 F0EE477A 		vmovle.f32	s15, s14
 568              	.L67:
 569 009a 17EE900A 		vmov	r0, s15
 570 009e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccmrYpeN.s 			page 11


 571 00a2 BDEC048B 		vldm	sp!, {d8-d9}
 572 00a6 0246     		mov	r2, r0
 573 00a8 0B46     		mov	r3, r1
 574 00aa 2046     		mov	r0, r4
 575 00ac 0F49     		ldr	r1, .L76+16
 576 00ae BDE81040 		pop	{r4, lr}
 577 00b2 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 578              	.L59:
 579 00b6 0846     		mov	r0, r1
 580 00b8 0D49     		ldr	r1, .L76+20
 581 00ba FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 582              	.L74:
 583 00be 0846     		mov	r0, r1
 584 00c0 0C49     		ldr	r1, .L76+24
 585 00c2 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 586              	.L73:
 587 00c6 0846     		mov	r0, r1
 588 00c8 0B49     		ldr	r1, .L76+28
 589 00ca FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 590              	.L65:
 591 00ce 0846     		mov	r0, r1
 592 00d0 0A49     		ldr	r1, .L76+32
 593 00d2 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 594              	.L75:
 595 00d6 FFF7FEFF 		bl	sqrtf
 596 00da C8E7     		b	.L66
 597              	.L77:
 598              		.align	2
 599              	.L76:
 600 00dc CDCCCC3D 		.word	1036831949
 601 00e0 0000DC44 		.word	1155268608
 602 00e4 00005C44 		.word	1146880000
 603 00e8 00002042 		.word	1109393408
 604 00ec 48000000 		.word	.LC8
 605 00f0 00000000 		.word	.LC4
 606 00f4 28000000 		.word	.LC6
 607 00f8 14000000 		.word	.LC5
 608 00fc 3C000000 		.word	.LC7
 609              		.size	_ZNK14GridDefinition10PrintErrorEffRK9StringRef, .-_ZNK14GridDefinition10PrintErrorEffRK9Str
 610              		.section	.text._ZN9HeightMapC2Ev,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	_ZN9HeightMapC2Ev
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 618              		.type	_ZN9HeightMapC2Ev, %function
 619              	_ZN9HeightMapC2Ev:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 0023     		movs	r3, #0
 623 0002 074A     		ldr	r2, .L80
 624 0004 0360     		str	r3, [r0]	@ float
 625 0006 10B5     		push	{r4, lr}
 626 0008 8360     		str	r3, [r0, #8]	@ float
 627 000a 4361     		str	r3, [r0, #20]	@ float
ARM GAS  /tmp/ccmrYpeN.s 			page 12


 628 000c 8361     		str	r3, [r0, #24]	@ float
 629 000e 4260     		str	r2, [r0, #4]	@ float
 630 0010 C260     		str	r2, [r0, #12]	@ float
 631 0012 0261     		str	r2, [r0, #16]	@ float
 632 0014 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 633 0018 0023     		movs	r3, #0
 634 001a 80F84C37 		strb	r3, [r0, #1868]
 635 001e 10BD     		pop	{r4, pc}
 636              	.L81:
 637              		.align	2
 638              	.L80:
 639 0020 000080BF 		.word	-1082130432
 640              		.size	_ZN9HeightMapC2Ev, .-_ZN9HeightMapC2Ev
 641              		.global	_ZN9HeightMapC1Ev
 642              		.thumb_set _ZN9HeightMapC1Ev,_ZN9HeightMapC2Ev
 643              		.section	.text._ZN9HeightMap7SetGridERK14GridDefinition,"ax",%progbits
 644              		.align	1
 645              		.p2align 2,,3
 646              		.global	_ZN9HeightMap7SetGridERK14GridDefinition
 647              		.syntax unified
 648              		.thumb
 649              		.thumb_func
 650              		.fpu fpv4-sp-d16
 651              		.type	_ZN9HeightMap7SetGridERK14GridDefinition, %function
 652              	_ZN9HeightMap7SetGridERK14GridDefinition:
 653              		@ args = 0, pretend = 0, frame = 0
 654              		@ frame_needed = 0, uses_anonymous_args = 0
 655              		@ link register save eliminated.
 656 0000 0023     		movs	r3, #0
 657 0002 F0B4     		push	{r4, r5, r6, r7}
 658 0004 01F12002 		add	r2, r1, #32
 659 0008 80F84C37 		strb	r3, [r0, #1868]
 660 000c 0346     		mov	r3, r0
 661              	.L83:
 662 000e 0E68     		ldr	r6, [r1]	@ unaligned
 663 0010 4D68     		ldr	r5, [r1, #4]	@ unaligned
 664 0012 8C68     		ldr	r4, [r1, #8]	@ unaligned
 665 0014 CF68     		ldr	r7, [r1, #12]	@ unaligned
 666 0016 DF60     		str	r7, [r3, #12]	@ unaligned
 667 0018 1031     		adds	r1, r1, #16
 668 001a 9142     		cmp	r1, r2
 669 001c 1E60     		str	r6, [r3]	@ unaligned
 670 001e 5D60     		str	r5, [r3, #4]	@ unaligned
 671 0020 9C60     		str	r4, [r3, #8]	@ unaligned
 672 0022 03F11003 		add	r3, r3, #16
 673 0026 F2D1     		bne	.L83
 674 0028 4A68     		ldr	r2, [r1, #4]	@ unaligned
 675 002a 0C68     		ldr	r4, [r1]	@ unaligned
 676 002c 8D68     		ldr	r5, [r1, #8]	@ unaligned
 677 002e 9D60     		str	r5, [r3, #8]	@ unaligned
 678 0030 1C60     		str	r4, [r3]	@ unaligned
 679 0032 5A60     		str	r2, [r3, #4]	@ unaligned
 680 0034 0A7B     		ldrb	r2, [r1, #12]	@ zero_extendqisi2
 681 0036 1A73     		strb	r2, [r3, #12]
 682 0038 00F5E263 		add	r3, r0, #1808
 683 003c 0022     		movs	r2, #0
 684 003e 00F5E960 		add	r0, r0, #1864
ARM GAS  /tmp/ccmrYpeN.s 			page 13


 685              	.L84:
 686 0042 43F8042F 		str	r2, [r3, #4]!
 687 0046 8342     		cmp	r3, r0
 688 0048 FBD1     		bne	.L84
 689 004a F0BC     		pop	{r4, r5, r6, r7}
 690 004c 7047     		bx	lr
 691              		.size	_ZN9HeightMap7SetGridERK14GridDefinition, .-_ZN9HeightMap7SetGridERK14GridDefinition
 692 004e 00BF     		.section	.text._ZN9HeightMap16ClearGridHeightsEv,"ax",%progbits
 693              		.align	1
 694              		.p2align 2,,3
 695              		.global	_ZN9HeightMap16ClearGridHeightsEv
 696              		.syntax unified
 697              		.thumb
 698              		.thumb_func
 699              		.fpu fpv4-sp-d16
 700              		.type	_ZN9HeightMap16ClearGridHeightsEv, %function
 701              	_ZN9HeightMap16ClearGridHeightsEv:
 702              		@ args = 0, pretend = 0, frame = 0
 703              		@ frame_needed = 0, uses_anonymous_args = 0
 704              		@ link register save eliminated.
 705 0000 00F5E263 		add	r3, r0, #1808
 706 0004 0022     		movs	r2, #0
 707 0006 00F5E960 		add	r0, r0, #1864
 708              	.L89:
 709 000a 43F8042F 		str	r2, [r3, #4]!
 710 000e 8342     		cmp	r3, r0
 711 0010 FBD1     		bne	.L89
 712 0012 7047     		bx	lr
 713              		.size	_ZN9HeightMap16ClearGridHeightsEv, .-_ZN9HeightMap16ClearGridHeightsEv
 714              		.section	.text._ZN9HeightMap13SetGridHeightEjjf,"ax",%progbits
 715              		.align	1
 716              		.p2align 2,,3
 717              		.global	_ZN9HeightMap13SetGridHeightEjjf
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu fpv4-sp-d16
 722              		.type	_ZN9HeightMap13SetGridHeightEjjf, %function
 723              	_ZN9HeightMap13SetGridHeightEjjf:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 727 0000 C369     		ldr	r3, [r0, #28]
 728 0002 03FB0212 		mla	r2, r3, r2, r1
 729 0006 B2F5DC7F 		cmp	r2, #440
 730 000a 10D8     		bhi	.L91
 731 000c 5309     		lsrs	r3, r2, #5
 732 000e 00EB8303 		add	r3, r0, r3, lsl #2
 733 0012 00EB8200 		add	r0, r0, r2, lsl #2
 734 0016 80ED0C0A 		vstr.32	s0, [r0, #48]
 735 001a D3F81407 		ldr	r0, [r3, #1812]
 736 001e 02F01F02 		and	r2, r2, #31
 737 0022 0121     		movs	r1, #1
 738 0024 01FA02F2 		lsl	r2, r1, r2
 739 0028 1043     		orrs	r0, r0, r2
 740 002a C3F81407 		str	r0, [r3, #1812]
 741              	.L91:
ARM GAS  /tmp/ccmrYpeN.s 			page 14


 742 002e 7047     		bx	lr
 743              		.size	_ZN9HeightMap13SetGridHeightEjjf, .-_ZN9HeightMap13SetGridHeightEjjf
 744              		.section	.text._ZNK9HeightMap18GetMinimumSegmentsEff,"ax",%progbits
 745              		.align	1
 746              		.p2align 2,,3
 747              		.global	_ZNK9HeightMap18GetMinimumSegmentsEff
 748              		.syntax unified
 749              		.thumb
 750              		.thumb_func
 751              		.fpu fpv4-sp-d16
 752              		.type	_ZNK9HeightMap18GetMinimumSegmentsEff, %function
 753              	_ZNK9HeightMap18GetMinimumSegmentsEff:
 754              		@ args = 0, pretend = 0, frame = 0
 755              		@ frame_needed = 0, uses_anonymous_args = 0
 756              		@ link register save eliminated.
 757 0000 B0EEC00A 		vabs.f32	s0, s0
 758 0004 B5EEC00A 		vcmpe.f32	s0, #0
 759 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 760 000c F0EEE00A 		vabs.f32	s1, s1
 761 0010 21DD     		ble	.L103
 762 0012 90ED097A 		vldr.32	s14, [r0, #36]
 763 0016 DFED147A 		vldr.32	s15, .L107
 764 001a E7EE007A 		vfma.f32	s15, s14, s0
 765 001e F5EEC00A 		vcmpe.f32	s1, #0
 766 0022 FCEEE77A 		vcvt.u32.f32	s15, s15
 767 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 768 002a 17EE903A 		vmov	r3, s15	@ int
 769 002e 0DDD     		ble	.L105
 770              	.L98:
 771 0030 90ED0A7A 		vldr.32	s14, [r0, #40]
 772 0034 DFED0C7A 		vldr.32	s15, .L107
 773 0038 E7EE207A 		vfma.f32	s15, s14, s1
 774 003c FCEEE77A 		vcvt.u32.f32	s15, s15
 775 0040 17EE900A 		vmov	r0, s15	@ int
 776 0044 9842     		cmp	r0, r3
 777 0046 38BF     		it	cc
 778 0048 1846     		movcc	r0, r3
 779 004a 7047     		bx	lr
 780              	.L105:
 781 004c 0120     		movs	r0, #1
 782 004e 9842     		cmp	r0, r3
 783 0050 38BF     		it	cc
 784 0052 1846     		movcc	r0, r3
 785 0054 7047     		bx	lr
 786              	.L103:
 787 0056 F5EEC00A 		vcmpe.f32	s1, #0
 788 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 789 005e 01DD     		ble	.L106
 790 0060 0123     		movs	r3, #1
 791 0062 E5E7     		b	.L98
 792              	.L106:
 793 0064 0120     		movs	r0, #1
 794 0066 7047     		bx	lr
 795              	.L108:
 796              		.align	2
 797              	.L107:
 798 0068 CDCCCC3E 		.word	1053609165
ARM GAS  /tmp/ccmrYpeN.s 			page 15


 799              		.size	_ZNK9HeightMap18GetMinimumSegmentsEff, .-_ZNK9HeightMap18GetMinimumSegmentsEff
 800              		.global	__aeabi_dadd
 801              		.global	__aeabi_dmul
 802              		.global	__aeabi_ui2d
 803              		.global	__aeabi_ddiv
 804              		.global	__aeabi_d2f
 805              		.global	__aeabi_dsub
 806              		.section	.text._ZNK9HeightMap13GetStatisticsERfS0_,"ax",%progbits
 807              		.align	1
 808              		.p2align 2,,3
 809              		.global	_ZNK9HeightMap13GetStatisticsERfS0_
 810              		.syntax unified
 811              		.thumb
 812              		.thumb_func
 813              		.fpu fpv4-sp-d16
 814              		.type	_ZNK9HeightMap13GetStatisticsERfS0_, %function
 815              	_ZNK9HeightMap13GetStatisticsERfS0_:
 816              		@ args = 0, pretend = 0, frame = 24
 817              		@ frame_needed = 0, uses_anonymous_args = 0
 818 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 819 0004 D0E90737 		ldrd	r3, r7, [r0, #28]
 820 0008 87B0     		sub	sp, sp, #28
 821 000a 07FB03F7 		mul	r7, r7, r3
 822 000e 0491     		str	r1, [sp, #16]
 823 0010 0592     		str	r2, [sp, #20]
 824 0012 002F     		cmp	r7, #0
 825 0014 3AD0     		beq	.L110
 826 0016 9FED407B 		vldr.64	d7, .L123
 827 001a 8DED027B 		vstr.64	d7, [sp, #8]
 828 001e 8DED007B 		vstr.64	d7, [sp]
 829 0022 0024     		movs	r4, #0
 830 0024 8246     		mov	r10, r0
 831 0026 2646     		mov	r6, r4
 832 0028 00F13005 		add	r5, r0, #48
 833 002c 4FF0010B 		mov	fp, #1
 834              	.L112:
 835 0030 6209     		lsrs	r2, r4, #5
 836 0032 0AEB8202 		add	r2, r10, r2, lsl #2
 837 0036 04F01F03 		and	r3, r4, #31
 838 003a D2F81427 		ldr	r2, [r2, #1812]
 839 003e 0BFA03F3 		lsl	r3, fp, r3
 840 0042 1342     		tst	r3, r2
 841 0044 04F10104 		add	r4, r4, #1
 842 0048 1BD0     		beq	.L111
 843 004a 2868     		ldr	r0, [r5]	@ float
 844 004c FFF7FEFF 		bl	__aeabi_f2d
 845 0050 8046     		mov	r8, r0
 846 0052 8946     		mov	r9, r1
 847 0054 0246     		mov	r2, r0
 848 0056 0B46     		mov	r3, r1
 849 0058 DDE90001 		ldrd	r0, [sp]
 850 005c FFF7FEFF 		bl	__aeabi_dadd
 851 0060 4246     		mov	r2, r8
 852 0062 CDE90001 		strd	r0, [sp]
 853 0066 4B46     		mov	r3, r9
 854 0068 4046     		mov	r0, r8
 855 006a 4946     		mov	r1, r9
ARM GAS  /tmp/ccmrYpeN.s 			page 16


 856 006c FFF7FEFF 		bl	__aeabi_dmul
 857 0070 0246     		mov	r2, r0
 858 0072 0B46     		mov	r3, r1
 859 0074 DDE90201 		ldrd	r0, [sp, #8]
 860 0078 FFF7FEFF 		bl	__aeabi_dadd
 861 007c CDE90201 		strd	r0, [sp, #8]
 862 0080 0136     		adds	r6, r6, #1
 863              	.L111:
 864 0082 BC42     		cmp	r4, r7
 865 0084 05F10405 		add	r5, r5, #4
 866 0088 D2D1     		bne	.L112
 867 008a 4EB9     		cbnz	r6, .L113
 868              	.L110:
 869 008c 059A     		ldr	r2, [sp, #20]
 870 008e 0023     		movs	r3, #0
 871 0090 1360     		str	r3, [r2]	@ float
 872 0092 0026     		movs	r6, #0
 873 0094 049A     		ldr	r2, [sp, #16]
 874 0096 3046     		mov	r0, r6
 875 0098 1360     		str	r3, [r2]	@ float
 876 009a 07B0     		add	sp, sp, #28
 877              		@ sp needed
 878 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 879              	.L113:
 880 00a0 3046     		mov	r0, r6
 881 00a2 FFF7FEFF 		bl	__aeabi_ui2d
 882 00a6 DDE90078 		ldrd	r7, [sp]
 883 00aa 0246     		mov	r2, r0
 884 00ac 0B46     		mov	r3, r1
 885 00ae 0446     		mov	r4, r0
 886 00b0 0D46     		mov	r5, r1
 887 00b2 3846     		mov	r0, r7
 888 00b4 4146     		mov	r1, r8
 889 00b6 FFF7FEFF 		bl	__aeabi_ddiv
 890 00ba FFF7FEFF 		bl	__aeabi_d2f
 891 00be 0499     		ldr	r1, [sp, #16]
 892 00c0 DDE90223 		ldrd	r2, [sp, #8]
 893 00c4 0860     		str	r0, [r1]	@ float
 894 00c6 2046     		mov	r0, r4
 895 00c8 2946     		mov	r1, r5
 896 00ca FFF7FEFF 		bl	__aeabi_dmul
 897 00ce 3A46     		mov	r2, r7
 898 00d0 0446     		mov	r4, r0
 899 00d2 0D46     		mov	r5, r1
 900 00d4 4346     		mov	r3, r8
 901 00d6 3846     		mov	r0, r7
 902 00d8 4146     		mov	r1, r8
 903 00da FFF7FEFF 		bl	__aeabi_dmul
 904 00de 0246     		mov	r2, r0
 905 00e0 0B46     		mov	r3, r1
 906 00e2 2046     		mov	r0, r4
 907 00e4 2946     		mov	r1, r5
 908 00e6 FFF7FEFF 		bl	__aeabi_dsub
 909 00ea 41EC100B 		vmov	d0, r0, r1
 910 00ee FFF7FEFF 		bl	sqrt
 911 00f2 51EC100B 		vmov	r0, r1, d0
 912 00f6 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  /tmp/ccmrYpeN.s 			page 17


 913 00fa 07EE906A 		vmov	s15, r6	@ int
 914 00fe B8EE677A 		vcvt.f32.u32	s14, s15
 915 0102 07EE900A 		vmov	s15, r0
 916 0106 C7EE877A 		vdiv.f32	s15, s15, s14
 917 010a 059B     		ldr	r3, [sp, #20]
 918 010c 3046     		mov	r0, r6
 919 010e C3ED007A 		vstr.32	s15, [r3]
 920 0112 07B0     		add	sp, sp, #28
 921              		@ sp needed
 922 0114 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 923              	.L124:
 924              		.align	3
 925              	.L123:
 926 0118 00000000 		.word	0
 927 011c 00000000 		.word	0
 928              		.size	_ZNK9HeightMap13GetStatisticsERfS0_, .-_ZNK9HeightMap13GetStatisticsERfS0_
 929              		.section	.text._ZNK9HeightMap10SaveToFileEP9FileStoref,"ax",%progbits
 930              		.align	1
 931              		.p2align 2,,3
 932              		.global	_ZNK9HeightMap10SaveToFileEP9FileStoref
 933              		.syntax unified
 934              		.thumb
 935              		.thumb_func
 936              		.fpu fpv4-sp-d16
 937              		.type	_ZNK9HeightMap10SaveToFileEP9FileStoref, %function
 938              	_ZNK9HeightMap10SaveToFileEP9FileStoref:
 939              		@ args = 0, pretend = 0, frame = 536
 940              		@ frame_needed = 0, uses_anonymous_args = 0
 941 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 942 0004 2DED028B 		vpush.64	{d8}
 943 0008 ADF50B7D 		sub	sp, sp, #556
 944 000c 0CAB     		add	r3, sp, #48
 945 000e 5E4C     		ldr	r4, .L159
 946 0010 0A93     		str	r3, [sp, #40]
 947 0012 0591     		str	r1, [sp, #20]
 948 0014 0022     		movs	r2, #0
 949 0016 40F2F513 		movw	r3, #501
 950 001a 0646     		mov	r6, r0
 951 001c 5B49     		ldr	r1, .L159+4
 952 001e 8DF83020 		strb	r2, [sp, #48]
 953 0022 0AA8     		add	r0, sp, #40
 954 0024 B0EE408A 		vmov.f32	s16, s0
 955 0028 0B93     		str	r3, [sp, #44]
 956 002a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 957 002e 2068     		ldr	r0, [r4]	@ unaligned
 958 0030 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 959 0034 0028     		cmp	r0, #0
 960 0036 40F08E80 		bne	.L155
 961 003a 08AC     		add	r4, sp, #32
 962              	.L126:
 963 003c 2246     		mov	r2, r4
 964 003e 07A9     		add	r1, sp, #28
 965 0040 3046     		mov	r0, r6
 966 0042 FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 967 0046 DDED077A 		vldr.32	s15, [sp, #28]
 968 004a 78EE277A 		vadd.f32	s15, s16, s15
 969 004e 17EE900A 		vmov	r0, s15
ARM GAS  /tmp/ccmrYpeN.s 			page 18


 970 0052 FFF7FEFF 		bl	__aeabi_f2d
 971 0056 8046     		mov	r8, r0
 972 0058 2068     		ldr	r0, [r4]	@ float
 973 005a 8946     		mov	r9, r1
 974 005c FFF7FEFF 		bl	__aeabi_f2d
 975 0060 4246     		mov	r2, r8
 976 0062 CDE90001 		strd	r0, [sp]
 977 0066 4B46     		mov	r3, r9
 978 0068 4949     		ldr	r1, .L159+8
 979 006a 0AA8     		add	r0, sp, #40
 980 006c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 981 0070 0A99     		ldr	r1, [sp, #40]
 982 0072 0598     		ldr	r0, [sp, #20]
 983 0074 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 984 0078 30B9     		cbnz	r0, .L157
 985              	.L127:
 986 007a 0120     		movs	r0, #1
 987 007c 0DF50B7D 		add	sp, sp, #556
 988              		@ sp needed
 989 0080 BDEC028B 		vldm	sp!, {d8}
 990 0084 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 991              	.L157:
 992 0088 0AA9     		add	r1, sp, #40
 993 008a 3046     		mov	r0, r6
 994 008c FFF7FEFF 		bl	_ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef
 995 0090 0A99     		ldr	r1, [sp, #40]
 996 0092 0598     		ldr	r0, [sp, #20]
 997 0094 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 998 0098 0028     		cmp	r0, #0
 999 009a EED0     		beq	.L127
 1000 009c 336A     		ldr	r3, [r6, #32]
 1001 009e 002B     		cmp	r3, #0
 1002 00a0 52D0     		beq	.L136
 1003 00a2 4FF0000A 		mov	r10, #0
 1004 00a6 DFF8F090 		ldr	r9, .L159+16
 1005 00aa DFF8F0B0 		ldr	fp, .L159+20
 1006 00ae 5446     		mov	r4, r10
 1007              	.L128:
 1008 00b0 0A9B     		ldr	r3, [sp, #40]
 1009 00b2 4FF00002 		mov	r2, #0
 1010 00b6 1A70     		strb	r2, [r3]
 1011 00b8 F369     		ldr	r3, [r6, #28]
 1012 00ba B3B3     		cbz	r3, .L130
 1013 00bc 04F10C07 		add	r7, r4, #12
 1014 00c0 06EB8707 		add	r7, r6, r7, lsl #2
 1015 00c4 0025     		movs	r5, #0
 1016 00c6 4FF00108 		mov	r8, #1
 1017 00ca 19E0     		b	.L131
 1018              	.L158:
 1019 00cc D7ED007A 		vldr.32	s15, [r7]
 1020 00d0 78EE277A 		vadd.f32	s15, s16, s15
 1021 00d4 0135     		adds	r5, r5, #1
 1022 00d6 17EE900A 		vmov	r0, s15
 1023 00da FFF7FEFF 		bl	__aeabi_f2d
 1024 00de 0B46     		mov	r3, r1
 1025 00e0 0246     		mov	r2, r0
 1026 00e2 5946     		mov	r1, fp
ARM GAS  /tmp/ccmrYpeN.s 			page 19


 1027 00e4 0AA8     		add	r0, sp, #40
 1028 00e6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1029 00ea F369     		ldr	r3, [r6, #28]
 1030 00ec AB42     		cmp	r3, r5
 1031 00ee 04F10104 		add	r4, r4, #1
 1032 00f2 1AD9     		bls	.L130
 1033              	.L135:
 1034 00f4 1DB1     		cbz	r5, .L132
 1035 00f6 2C21     		movs	r1, #44
 1036 00f8 0AA8     		add	r0, sp, #40
 1037 00fa FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1038              	.L132:
 1039 00fe 0437     		adds	r7, r7, #4
 1040              	.L131:
 1041 0100 6209     		lsrs	r2, r4, #5
 1042 0102 06EB8202 		add	r2, r6, r2, lsl #2
 1043 0106 04F01F03 		and	r3, r4, #31
 1044 010a D2F81427 		ldr	r2, [r2, #1812]
 1045 010e 08FA03F3 		lsl	r3, r8, r3
 1046 0112 1342     		tst	r3, r2
 1047 0114 4946     		mov	r1, r9
 1048 0116 0AA8     		add	r0, sp, #40
 1049 0118 D8D1     		bne	.L158
 1050 011a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1051 011e F369     		ldr	r3, [r6, #28]
 1052 0120 0135     		adds	r5, r5, #1
 1053 0122 AB42     		cmp	r3, r5
 1054 0124 04F10104 		add	r4, r4, #1
 1055 0128 E4D8     		bhi	.L135
 1056              	.L130:
 1057 012a 0A21     		movs	r1, #10
 1058 012c 0AA8     		add	r0, sp, #40
 1059 012e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1060 0132 0A99     		ldr	r1, [sp, #40]
 1061 0134 0598     		ldr	r0, [sp, #20]
 1062 0136 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1063 013a 0028     		cmp	r0, #0
 1064 013c 9DD0     		beq	.L127
 1065 013e 336A     		ldr	r3, [r6, #32]
 1066 0140 0AF1010A 		add	r10, r10, #1
 1067 0144 5345     		cmp	r3, r10
 1068 0146 B3D8     		bhi	.L128
 1069              	.L136:
 1070 0148 0020     		movs	r0, #0
 1071 014a 0DF50B7D 		add	sp, sp, #556
 1072              		@ sp needed
 1073 014e BDEC028B 		vldm	sp!, {d8}
 1074 0152 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1075              	.L155:
 1076 0156 2068     		ldr	r0, [r4]
 1077 0158 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1078 015c 08AC     		add	r4, sp, #32
 1079 015e CDE90801 		strd	r0, [sp, #32]
 1080 0162 2046     		mov	r0, r4
 1081 0164 FFF7FEFF 		bl	gmtime
 1082 0168 4568     		ldr	r5, [r0, #4]
 1083 016a 0A49     		ldr	r1, .L159+12
ARM GAS  /tmp/ccmrYpeN.s 			page 20


 1084 016c D0E90432 		ldrd	r3, r2, [r0, #16]
 1085 0170 0295     		str	r5, [sp, #8]
 1086 0172 8568     		ldr	r5, [r0, #8]
 1087 0174 0195     		str	r5, [sp, #4]
 1088 0176 C068     		ldr	r0, [r0, #12]
 1089 0178 0090     		str	r0, [sp]
 1090 017a 02F26C72 		addw	r2, r2, #1900
 1091 017e 0AA8     		add	r0, sp, #40
 1092 0180 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1093 0184 5AE7     		b	.L126
 1094              	.L160:
 1095 0186 00BF     		.align	2
 1096              	.L159:
 1097 0188 00000000 		.word	reprap
 1098 018c 00000000 		.word	.LC9
 1099 0190 4C000000 		.word	.LC11
 1100 0194 24000000 		.word	.LC10
 1101 0198 78000000 		.word	.LC13
 1102 019c 70000000 		.word	.LC12
 1103              		.size	_ZNK9HeightMap10SaveToFileEP9FileStoref, .-_ZNK9HeightMap10SaveToFileEP9FileStoref
 1104              		.section	.text._ZN9HeightMap12UseHeightMapEb,"ax",%progbits
 1105              		.align	1
 1106              		.p2align 2,,3
 1107              		.global	_ZN9HeightMap12UseHeightMapEb
 1108              		.syntax unified
 1109              		.thumb
 1110              		.thumb_func
 1111              		.fpu fpv4-sp-d16
 1112              		.type	_ZN9HeightMap12UseHeightMapEb, %function
 1113              	_ZN9HeightMap12UseHeightMapEb:
 1114              		@ args = 0, pretend = 0, frame = 0
 1115              		@ frame_needed = 0, uses_anonymous_args = 0
 1116              		@ link register save eliminated.
 1117 0000 09B1     		cbz	r1, .L162
 1118 0002 90F82C10 		ldrb	r1, [r0, #44]	@ zero_extendqisi2
 1119              	.L162:
 1120 0006 80F84C17 		strb	r1, [r0, #1868]
 1121 000a 0846     		mov	r0, r1
 1122 000c 7047     		bx	lr
 1123              		.size	_ZN9HeightMap12UseHeightMapEb, .-_ZN9HeightMap12UseHeightMapEb
 1124 000e 00BF     		.section	.text._ZNK9HeightMap26GetInterpolatedHeightErrorEff,"ax",%progbits
 1125              		.align	1
 1126              		.p2align 2,,3
 1127              		.global	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1128              		.syntax unified
 1129              		.thumb
 1130              		.thumb_func
 1131              		.fpu fpv4-sp-d16
 1132              		.type	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, %function
 1133              	_ZNK9HeightMap26GetInterpolatedHeightErrorEff:
 1134              		@ args = 0, pretend = 0, frame = 0
 1135              		@ frame_needed = 0, uses_anonymous_args = 0
 1136 0000 38B5     		push	{r3, r4, r5, lr}
 1137 0002 90F84C37 		ldrb	r3, [r0, #1868]	@ zero_extendqisi2
 1138 0006 2DED048B 		vpush.64	{d8, d9}
 1139 000a 002B     		cmp	r3, #0
 1140 000c 00F08B80 		beq	.L174
ARM GAS  /tmp/ccmrYpeN.s 			page 21


 1141 0010 C569     		ldr	r5, [r0, #28]
 1142 0012 90ED008A 		vldr.32	s16, [r0]
 1143 0016 90ED057A 		vldr.32	s14, [r0, #20]
 1144 001a 036A     		ldr	r3, [r0, #32]
 1145 001c D0ED029A 		vldr.32	s19, [r0, #8]
 1146 0020 9FED436A 		vldr.32	s12, .L180
 1147 0024 D0ED065A 		vldr.32	s11, [r0, #24]
 1148 0028 D0ED097A 		vldr.32	s15, [r0, #36]
 1149 002c 6A1E     		subs	r2, r5, #1
 1150 002e 06EE902A 		vmov	s13, r2	@ int
 1151 0032 F8EE666A 		vcvt.f32.u32	s13, s13
 1152 0036 B0EE485A 		vmov.f32	s10, s16
 1153 003a 013B     		subs	r3, r3, #1
 1154 003c A6EE875A 		vfma.f32	s10, s13, s14
 1155 0040 0446     		mov	r4, r0
 1156 0042 07EE103A 		vmov	s14, r3	@ int
 1157 0046 B4EE408A 		vcmp.f32	s16, s0
 1158 004a B8EE477A 		vcvt.f32.u32	s14, s14
 1159 004e 75EE466A 		vsub.f32	s13, s10, s12
 1160 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1161 0056 B0EE695A 		vmov.f32	s10, s19
 1162 005a F4EE609A 		vcmp.f32	s19, s1
 1163 005e C8BF     		it	gt
 1164 0060 B0EE480A 		vmovgt.f32	s0, s16
 1165 0064 A7EE255A 		vfma.f32	s10, s14, s11
 1166 0068 F0EE608A 		vmov.f32	s17, s1
 1167 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1168 0070 F4EE406A 		vcmp.f32	s13, s0
 1169 0074 C8BF     		it	gt
 1170 0076 F0EE698A 		vmovgt.f32	s17, s19
 1171 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1172 007e 48BF     		it	mi
 1173 0080 B0EE660A 		vmovmi.f32	s0, s13
 1174 0084 35EE467A 		vsub.f32	s14, s10, s12
 1175 0088 30EE480A 		vsub.f32	s0, s0, s16
 1176 008c B4EE687A 		vcmp.f32	s14, s17
 1177 0090 20EE278A 		vmul.f32	s16, s0, s15
 1178 0094 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1179 0098 48BF     		it	mi
 1180 009a F0EE478A 		vmovmi.f32	s17, s14
 1181 009e B0EE480A 		vmov.f32	s0, s16
 1182 00a2 FFF7FEFF 		bl	floorf
 1183 00a6 78EEE98A 		vsub.f32	s17, s17, s19
 1184 00aa D4ED0A0A 		vldr.32	s1, [r4, #40]
 1185 00ae 68EEA08A 		vmul.f32	s17, s17, s1
 1186 00b2 B0EE409A 		vmov.f32	s18, s0
 1187 00b6 B0EE680A 		vmov.f32	s0, s17
 1188 00ba FFF7FEFF 		bl	floorf
 1189 00be BDEEC97A 		vcvt.s32.f32	s14, s18
 1190 00c2 78EEC08A 		vsub.f32	s17, s17, s0
 1191 00c6 BDEEC00A 		vcvt.s32.f32	s0, s0
 1192 00ca 78EE497A 		vsub.f32	s15, s16, s18
 1193 00ce 10EE103A 		vmov	r3, s0	@ int
 1194 00d2 17EE100A 		vmov	r0, s14	@ int
 1195 00d6 B7EE007A 		vmov.f32	s14, #1.0e+0
 1196 00da 67EEA86A 		vmul.f32	s13, s15, s17
 1197 00de 05FB0300 		mla	r0, r5, r3, r0
ARM GAS  /tmp/ccmrYpeN.s 			page 22


 1198 00e2 37EE677A 		vsub.f32	s14, s14, s15
 1199 00e6 04EB8003 		add	r3, r4, r0, lsl #2
 1200 00ea 37EEE60A 		vsub.f32	s0, s15, s13
 1201 00ee D3ED0D5A 		vldr.32	s11, [r3, #52]
 1202 00f2 93ED0C6A 		vldr.32	s12, [r3, #48]
 1203 00f6 77EE687A 		vsub.f32	s15, s14, s17
 1204 00fa 20EE250A 		vmul.f32	s0, s0, s11
 1205 00fe 77EEA67A 		vadd.f32	s15, s15, s13
 1206 0102 2844     		add	r0, r0, r5
 1207 0104 A6EE270A 		vfma.f32	s0, s12, s15
 1208 0108 04EB8004 		add	r4, r4, r0, lsl #2
 1209 010c 78EEE68A 		vsub.f32	s17, s17, s13
 1210 0110 94ED0C7A 		vldr.32	s14, [r4, #48]
 1211 0114 D4ED0D7A 		vldr.32	s15, [r4, #52]
 1212 0118 A7EE280A 		vfma.f32	s0, s14, s17
 1213 011c BDEC048B 		vldm	sp!, {d8-d9}
 1214 0120 A6EEA70A 		vfma.f32	s0, s13, s15
 1215 0124 38BD     		pop	{r3, r4, r5, pc}
 1216              	.L174:
 1217 0126 BDEC048B 		vldm	sp!, {d8-d9}
 1218 012a 9FED020A 		vldr.32	s0, .L180+4
 1219 012e 38BD     		pop	{r3, r4, r5, pc}
 1220              	.L181:
 1221              		.align	2
 1222              	.L180:
 1223 0130 0AD7233C 		.word	1008981770
 1224 0134 00000000 		.word	0
 1225              		.size	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, .-_ZNK9HeightMap26GetInterpolatedHeightErrorE
 1226              		.section	.text._ZNK9HeightMap13InterpolateXYEmmff,"ax",%progbits
 1227              		.align	1
 1228              		.p2align 2,,3
 1229              		.global	_ZNK9HeightMap13InterpolateXYEmmff
 1230              		.syntax unified
 1231              		.thumb
 1232              		.thumb_func
 1233              		.fpu fpv4-sp-d16
 1234              		.type	_ZNK9HeightMap13InterpolateXYEmmff, %function
 1235              	_ZNK9HeightMap13InterpolateXYEmmff:
 1236              		@ args = 0, pretend = 0, frame = 0
 1237              		@ frame_needed = 0, uses_anonymous_args = 0
 1238              		@ link register save eliminated.
 1239 0000 C369     		ldr	r3, [r0, #28]
 1240 0002 F7EE007A 		vmov.f32	s15, #1.0e+0
 1241 0006 20EE207A 		vmul.f32	s14, s0, s1
 1242 000a 03FB0212 		mla	r2, r3, r2, r1
 1243 000e 77EEC07A 		vsub.f32	s15, s15, s0
 1244 0012 00EB8201 		add	r1, r0, r2, lsl #2
 1245 0016 91ED0D6A 		vldr.32	s12, [r1, #52]
 1246 001a D1ED0C6A 		vldr.32	s13, [r1, #48]
 1247 001e 30EE470A 		vsub.f32	s0, s0, s14
 1248 0022 77EEE07A 		vsub.f32	s15, s15, s1
 1249 0026 20EE060A 		vmul.f32	s0, s0, s12
 1250 002a 77EE877A 		vadd.f32	s15, s15, s14
 1251 002e 1344     		add	r3, r3, r2
 1252 0030 A6EEA70A 		vfma.f32	s0, s13, s15
 1253 0034 00EB8300 		add	r0, r0, r3, lsl #2
 1254 0038 70EEC70A 		vsub.f32	s1, s1, s14
ARM GAS  /tmp/ccmrYpeN.s 			page 23


 1255 003c D0ED0C6A 		vldr.32	s13, [r0, #48]
 1256 0040 D0ED0D7A 		vldr.32	s15, [r0, #52]
 1257 0044 A6EEA00A 		vfma.f32	s0, s13, s1
 1258 0048 A7EE870A 		vfma.f32	s0, s15, s14
 1259 004c 7047     		bx	lr
 1260              		.size	_ZNK9HeightMap13InterpolateXYEmmff, .-_ZNK9HeightMap13InterpolateXYEmmff
 1261 004e 00BF     		.section	.text._ZN9HeightMap18ExtrapolateMissingEv,"ax",%progbits
 1262              		.align	1
 1263              		.p2align 2,,3
 1264              		.global	_ZN9HeightMap18ExtrapolateMissingEv
 1265              		.syntax unified
 1266              		.thumb
 1267              		.thumb_func
 1268              		.fpu fpv4-sp-d16
 1269              		.type	_ZN9HeightMap18ExtrapolateMissingEv, %function
 1270              	_ZN9HeightMap18ExtrapolateMissingEv:
 1271              		@ args = 0, pretend = 0, frame = 8
 1272              		@ frame_needed = 0, uses_anonymous_args = 0
 1273 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1274 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 1275 0008 066A     		ldr	r6, [r0, #32]
 1276 000a 83B0     		sub	sp, sp, #12
 1277 000c 002E     		cmp	r6, #0
 1278 000e 00F01981 		beq	.L183
 1279 0012 9FED996A 		vldr.32	s12, .L228
 1280 0016 C469     		ldr	r4, [r0, #28]
 1281 0018 00F13003 		add	r3, r0, #48
 1282 001c 0027     		movs	r7, #0
 1283 001e B0EE465A 		vmov.f32	s10, s12
 1284 0022 F0EE464A 		vmov.f32	s9, s12
 1285 0026 0093     		str	r3, [sp]
 1286 0028 4FEA8409 		lsl	r9, r4, #2
 1287 002c 9E46     		mov	lr, r3
 1288 002e 9B46     		mov	fp, r3
 1289 0030 B846     		mov	r8, r7
 1290 0032 BC46     		mov	ip, r7
 1291 0034 4FF0010A 		mov	r10, #1
 1292              	.L189:
 1293 0038 94B3     		cbz	r4, .L185
 1294 003a 03EE108A 		vmov	s6, r8	@ int
 1295 003e 5946     		mov	r1, fp
 1296 0040 0022     		movs	r2, #0
 1297              	.L187:
 1298 0042 BB18     		adds	r3, r7, r2
 1299 0044 5D09     		lsrs	r5, r3, #5
 1300 0046 00EB8505 		add	r5, r0, r5, lsl #2
 1301 004a 03F01F03 		and	r3, r3, #31
 1302 004e D5F81457 		ldr	r5, [r5, #1812]
 1303 0052 0AFA03F3 		lsl	r3, r10, r3
 1304 0056 2B42     		tst	r3, r5
 1305 0058 1BD0     		beq	.L186
 1306 005a 06EE902A 		vmov	s13, r2	@ int
 1307 005e D0ED053A 		vldr.32	s7, [r0, #20]
 1308 0062 90ED007A 		vldr.32	s14, [r0]
 1309 0066 90ED064A 		vldr.32	s8, [r0, #24]
 1310 006a D0ED027A 		vldr.32	s15, [r0, #8]
 1311 006e D1ED005A 		vldr.32	s11, [r1]
ARM GAS  /tmp/ccmrYpeN.s 			page 24


 1312 0072 F8EE666A 		vcvt.f32.u32	s13, s13
 1313 0076 36EE256A 		vadd.f32	s12, s12, s11
 1314 007a A3EEA67A 		vfma.f32	s14, s7, s13
 1315 007e 0CF1010C 		add	ip, ip, #1
 1316 0082 F8EE436A 		vcvt.f32.u32	s13, s6
 1317 0086 74EE874A 		vadd.f32	s9, s9, s14
 1318 008a E4EE267A 		vfma.f32	s15, s8, s13
 1319 008e 35EE275A 		vadd.f32	s10, s10, s15
 1320              	.L186:
 1321 0092 0132     		adds	r2, r2, #1
 1322 0094 A242     		cmp	r2, r4
 1323 0096 01F10401 		add	r1, r1, #4
 1324 009a D2D1     		bne	.L187
 1325 009c 13EE108A 		vmov	r8, s6	@ int
 1326              	.L185:
 1327 00a0 08F10108 		add	r8, r8, #1
 1328 00a4 B045     		cmp	r8, r6
 1329 00a6 CB44     		add	fp, fp, r9
 1330 00a8 2744     		add	r7, r7, r4
 1331 00aa C5D1     		bne	.L189
 1332 00ac 07EE90CA 		vmov	s15, ip	@ int
 1333 00b0 F8EEE77A 		vcvt.f32.s32	s15, s15
 1334 00b4 B7EE007A 		vmov.f32	s14, #1.0e+0
 1335 00b8 87EE279A 		vdiv.f32	s18, s14, s15
 1336 00bc 0027     		movs	r7, #0
 1337 00be BA46     		mov	r10, r7
 1338 00c0 4FF0010C 		mov	ip, #1
 1339 00c4 DFED6C5A 		vldr.32	s11, .L228
 1340 00c8 69EE248A 		vmul.f32	s17, s18, s9
 1341 00cc 29EE058A 		vmul.f32	s16, s18, s10
 1342 00d0 29EE069A 		vmul.f32	s18, s18, s12
 1343 00d4 F0EE654A 		vmov.f32	s9, s11
 1344 00d8 F0EE653A 		vmov.f32	s7, s11
 1345 00dc B0EE654A 		vmov.f32	s8, s11
 1346 00e0 B0EE655A 		vmov.f32	s10, s11
 1347              	.L193:
 1348 00e4 C4B3     		cbz	r4, .L190
 1349 00e6 7546     		mov	r5, lr
 1350 00e8 0022     		movs	r2, #0
 1351              	.L192:
 1352 00ea BB18     		adds	r3, r7, r2
 1353 00ec 5909     		lsrs	r1, r3, #5
 1354 00ee 00EB8101 		add	r1, r0, r1, lsl #2
 1355 00f2 03F01F03 		and	r3, r3, #31
 1356 00f6 D1F81417 		ldr	r1, [r1, #1812]
 1357 00fa 0CFA03F3 		lsl	r3, ip, r3
 1358 00fe 0B42     		tst	r3, r1
 1359 0100 25D0     		beq	.L191
 1360 0102 06EE102A 		vmov	s12, r2	@ int
 1361 0106 90ED052A 		vldr.32	s4, [r0, #20]
 1362 010a 90ED007A 		vldr.32	s14, [r0]
 1363 010e D0ED062A 		vldr.32	s5, [r0, #24]
 1364 0112 D0ED027A 		vldr.32	s15, [r0, #8]
 1365 0116 D5ED006A 		vldr.32	s13, [r5]
 1366 011a B8EE466A 		vcvt.f32.u32	s12, s12
 1367 011e 76EEC96A 		vsub.f32	s13, s13, s18
 1368 0122 A2EE067A 		vfma.f32	s14, s4, s12
ARM GAS  /tmp/ccmrYpeN.s 			page 25


 1369 0126 06EE10AA 		vmov	s12, r10	@ int
 1370 012a B8EE466A 		vcvt.f32.u32	s12, s12
 1371 012e 37EE687A 		vsub.f32	s14, s14, s17
 1372 0132 E2EE867A 		vfma.f32	s15, s5, s12
 1373 0136 A7EE075A 		vfma.f32	s10, s14, s14
 1374 013a 77EEC87A 		vsub.f32	s15, s15, s16
 1375 013e E7EE263A 		vfma.f32	s7, s14, s13
 1376 0142 A7EE274A 		vfma.f32	s8, s14, s15
 1377 0146 E7EEA74A 		vfma.f32	s9, s15, s15
 1378 014a E7EEA65A 		vfma.f32	s11, s15, s13
 1379              	.L191:
 1380 014e 0132     		adds	r2, r2, #1
 1381 0150 A242     		cmp	r2, r4
 1382 0152 05F10405 		add	r5, r5, #4
 1383 0156 C8D1     		bne	.L192
 1384              	.L190:
 1385 0158 0AF1010A 		add	r10, r10, #1
 1386 015c D045     		cmp	r8, r10
 1387 015e CE44     		add	lr, lr, r9
 1388 0160 2744     		add	r7, r7, r4
 1389 0162 BFD1     		bne	.L193
 1390 0164 64EE447A 		vnmul.f32	s15, s8, s8
 1391 0168 E5EE247A 		vfma.f32	s15, s10, s9
 1392 016c F5EEC07A 		vcmpe.f32	s15, #0
 1393 0170 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1394 0174 66D9     		bls	.L183
 1395 0176 25EEC55A 		vnmul.f32	s10, s11, s10
 1396 017a 64EEE34A 		vnmul.f32	s9, s9, s7
 1397 017e A4EE235A 		vfma.f32	s10, s8, s7
 1398 0182 E4EE254A 		vfma.f32	s9, s8, s11
 1399 0186 85EE27AA 		vdiv.f32	s20, s10, s15
 1400 018a C4EEA79A 		vdiv.f32	s19, s9, s15
 1401 018e 2AEE0A0A 		vmul.f32	s0, s20, s20
 1402 0192 B7EE00BA 		vmov.f32	s22, #1.0e+0
 1403 0196 A9EEA90A 		vfma.f32	s0, s19, s19
 1404 019a 30EE0B0A 		vadd.f32	s0, s0, s22
 1405 019e B5EE400A 		vcmp.f32	s0, #0
 1406 01a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1407 01a6 F1EEC0AA 		vsqrt.f32	s21, s0
 1408 01aa 50D4     		bmi	.L227
 1409 01ac CBEE2A7A 		vdiv.f32	s15, s22, s21
 1410 01b0 2AEE274A 		vmul.f32	s8, s20, s15
 1411 01b4 69EEA74A 		vmul.f32	s9, s19, s15
 1412 01b8 28EE045A 		vmul.f32	s10, s16, s8
 1413 01bc A8EEA45A 		vfma.f32	s10, s17, s9
 1414 01c0 A9EE275A 		vfma.f32	s10, s18, s15
 1415              	.L199:
 1416 01c4 0027     		movs	r7, #0
 1417 01c6 DDF80080 		ldr	r8, [sp]
 1418 01ca B946     		mov	r9, r7
 1419 01cc 4FEA840E 		lsl	lr, r4, #2
 1420 01d0 4FF0010C 		mov	ip, #1
 1421              	.L198:
 1422 01d4 84B3     		cbz	r4, .L195
 1423 01d6 4546     		mov	r5, r8
 1424 01d8 0022     		movs	r2, #0
 1425              	.L197:
ARM GAS  /tmp/ccmrYpeN.s 			page 26


 1426 01da BB18     		adds	r3, r7, r2
 1427 01dc 5909     		lsrs	r1, r3, #5
 1428 01de 00EB8101 		add	r1, r0, r1, lsl #2
 1429 01e2 03F01F03 		and	r3, r3, #31
 1430 01e6 D1F81417 		ldr	r1, [r1, #1812]
 1431 01ea 0CFA03F3 		lsl	r3, ip, r3
 1432 01ee 0B42     		tst	r3, r1
 1433 01f0 1DD1     		bne	.L196
 1434 01f2 06EE909A 		vmov	s13, r9	@ int
 1435 01f6 D0ED065A 		vldr.32	s11, [r0, #24]
 1436 01fa D0ED027A 		vldr.32	s15, [r0, #8]
 1437 01fe 90ED056A 		vldr.32	s12, [r0, #20]
 1438 0202 90ED007A 		vldr.32	s14, [r0]
 1439 0206 F8EE666A 		vcvt.f32.u32	s13, s13
 1440 020a E5EEA67A 		vfma.f32	s15, s11, s13
 1441 020e 06EE902A 		vmov	s13, r2	@ int
 1442 0212 F8EE666A 		vcvt.f32.u32	s13, s13
 1443 0216 67EE847A 		vmul.f32	s15, s15, s8
 1444 021a A6EE267A 		vfma.f32	s14, s12, s13
 1445 021e E7EE247A 		vfma.f32	s15, s14, s9
 1446 0222 75EE677A 		vsub.f32	s15, s10, s15
 1447 0226 67EEAA7A 		vmul.f32	s15, s15, s21
 1448 022a C5ED007A 		vstr.32	s15, [r5]
 1449              	.L196:
 1450 022e 0132     		adds	r2, r2, #1
 1451 0230 A242     		cmp	r2, r4
 1452 0232 05F10405 		add	r5, r5, #4
 1453 0236 D0D1     		bne	.L197
 1454              	.L195:
 1455 0238 09F10109 		add	r9, r9, #1
 1456 023c B145     		cmp	r9, r6
 1457 023e F044     		add	r8, r8, lr
 1458 0240 2744     		add	r7, r7, r4
 1459 0242 C7D1     		bne	.L198
 1460              	.L183:
 1461 0244 03B0     		add	sp, sp, #12
 1462              		@ sp needed
 1463 0246 BDEC088B 		vldm	sp!, {d8-d11}
 1464 024a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1465              	.L227:
 1466 024e 0190     		str	r0, [sp, #4]
 1467 0250 FFF7FEFF 		bl	sqrtf
 1468 0254 CBEE2A7A 		vdiv.f32	s15, s22, s21
 1469 0258 0198     		ldr	r0, [sp, #4]
 1470 025a 066A     		ldr	r6, [r0, #32]
 1471 025c 2AEE274A 		vmul.f32	s8, s20, s15
 1472 0260 69EEA74A 		vmul.f32	s9, s19, s15
 1473 0264 28EE045A 		vmul.f32	s10, s16, s8
 1474 0268 A8EEA45A 		vfma.f32	s10, s17, s9
 1475 026c A9EE275A 		vfma.f32	s10, s18, s15
 1476 0270 002E     		cmp	r6, #0
 1477 0272 E7D0     		beq	.L183
 1478 0274 C469     		ldr	r4, [r0, #28]
 1479 0276 A5E7     		b	.L199
 1480              	.L229:
 1481              		.align	2
 1482              	.L228:
ARM GAS  /tmp/ccmrYpeN.s 			page 27


 1483 0278 00000000 		.word	0
 1484              		.size	_ZN9HeightMap18ExtrapolateMissingEv, .-_ZN9HeightMap18ExtrapolateMissingEv
 1485              		.section	.text._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef,"ax",%progbits
 1486              		.align	1
 1487              		.p2align 2,,3
 1488              		.global	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef
 1489              		.syntax unified
 1490              		.thumb
 1491              		.thumb_func
 1492              		.fpu fpv4-sp-d16
 1493              		.type	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, %function
 1494              	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef:
 1495              		@ args = 0, pretend = 0, frame = 400
 1496              		@ frame_needed = 0, uses_anonymous_args = 0
 1497 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1498 0004 E5B0     		sub	sp, sp, #404
 1499 0006 0546     		mov	r5, r0
 1500 0008 00F5E267 		add	r7, r0, #1808
 1501 000c 11AE     		add	r6, sp, #68
 1502 000e 40F24B10 		movw	r0, #331
 1503 0012 CDE90360 		strd	r6, r0, [sp, #12]
 1504 0016 8946     		mov	r9, r1
 1505 0018 9246     		mov	r10, r2
 1506 001a 3C46     		mov	r4, r7
 1507 001c 05F5E963 		add	r3, r5, #1864
 1508 0020 4FF0000B 		mov	fp, #0
 1509              	.L231:
 1510 0024 44F804BF 		str	fp, [r4, #4]!
 1511 0028 9C42     		cmp	r4, r3
 1512 002a FBD1     		bne	.L231
 1513 002c 0023     		movs	r3, #0
 1514 002e 774A     		ldr	r2, .L280
 1515 0030 0593     		str	r3, [sp, #20]	@ float
 1516 0032 05A8     		add	r0, sp, #20
 1517 0034 0793     		str	r3, [sp, #28]	@ float
 1518 0036 0A93     		str	r3, [sp, #40]	@ float
 1519 0038 0B93     		str	r3, [sp, #44]	@ float
 1520 003a 0692     		str	r2, [sp, #24]	@ float
 1521 003c 0892     		str	r2, [sp, #32]	@ float
 1522 003e 0992     		str	r2, [sp, #36]	@ float
 1523 0040 FFF7FEFF 		bl	_ZN14GridDefinition13CheckValidityEv
 1524 0044 40F24B12 		movw	r2, #331
 1525 0048 3146     		mov	r1, r6
 1526 004a 4846     		mov	r0, r9
 1527 004c FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1528 0050 0028     		cmp	r0, #0
 1529 0052 40F38B80 		ble	.L235
 1530 0056 6E49     		ldr	r1, .L280+4
 1531 0058 3046     		mov	r0, r6
 1532 005a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1533 005e 8046     		mov	r8, r0
 1534 0060 0028     		cmp	r0, #0
 1535 0062 00F08D80 		beq	.L275
 1536 0066 40F24B12 		movw	r2, #331
 1537 006a 3146     		mov	r1, r6
 1538 006c 4846     		mov	r0, r9
 1539 006e FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
ARM GAS  /tmp/ccmrYpeN.s 			page 28


 1540 0072 0028     		cmp	r0, #0
 1541 0074 7ADD     		ble	.L235
 1542 0076 03A8     		add	r0, sp, #12
 1543 0078 FFF7FEFF 		bl	_ZN14GridDefinition12CheckHeadingERK9StringRef
 1544 007c 031E     		subs	r3, r0, #0
 1545 007e C0F28980 		blt	.L276
 1546 0082 40F24B12 		movw	r2, #331
 1547 0086 3146     		mov	r1, r6
 1548 0088 4846     		mov	r0, r9
 1549 008a 0193     		str	r3, [sp, #4]
 1550 008c FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1551 0090 0028     		cmp	r0, #0
 1552 0092 6BDD     		ble	.L235
 1553 0094 019B     		ldr	r3, [sp, #4]
 1554 0096 03A9     		add	r1, sp, #12
 1555 0098 1A46     		mov	r2, r3
 1556 009a 05A8     		add	r0, sp, #20
 1557 009c FFF7FEFF 		bl	_ZN14GridDefinition14ReadParametersERK9StringRefi
 1558 00a0 0346     		mov	r3, r0
 1559 00a2 0028     		cmp	r0, #0
 1560 00a4 00F0A680 		beq	.L277
 1561 00a8 9DF84080 		ldrb	r8, [sp, #64]	@ zero_extendqisi2
 1562 00ac B8F1000F 		cmp	r8, #0
 1563 00b0 00F0A580 		beq	.L278
 1564 00b4 85F84CB7 		strb	fp, [r5, #1868]
 1565 00b8 AC46     		mov	ip, r5
 1566 00ba 0DF1140B 		add	fp, sp, #20
 1567              	.L239:
 1568 00be DE46     		mov	lr, fp
 1569 00c0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1570 00c4 CCF80C30 		str	r3, [ip, #12]	@ unaligned
 1571 00c8 0DAB     		add	r3, sp, #52
 1572 00ca 9E45     		cmp	lr, r3
 1573 00cc CCF80000 		str	r0, [ip]	@ unaligned
 1574 00d0 CCF80410 		str	r1, [ip, #4]	@ unaligned
 1575 00d4 CCF80820 		str	r2, [ip, #8]	@ unaligned
 1576 00d8 F346     		mov	fp, lr
 1577 00da 0CF1100C 		add	ip, ip, #16
 1578 00de EED1     		bne	.L239
 1579 00e0 7346     		mov	r3, lr
 1580 00e2 07CB     		ldmia	r3!, {r0, r1, r2}
 1581 00e4 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1582 00e6 8CF80C30 		strb	r3, [ip, #12]
 1583 00ea CCF80000 		str	r0, [ip]	@ unaligned
 1584 00ee CCF80410 		str	r1, [ip, #4]	@ unaligned
 1585 00f2 CCF80820 		str	r2, [ip, #8]	@ unaligned
 1586 00f6 0023     		movs	r3, #0
 1587              	.L240:
 1588 00f8 47F8043F 		str	r3, [r7, #4]!
 1589 00fc BC42     		cmp	r4, r7
 1590 00fe FBD1     		bne	.L240
 1591 0100 2B6A     		ldr	r3, [r5, #32]
 1592 0102 6BB3     		cbz	r3, .L241
 1593 0104 0024     		movs	r4, #0
 1594 0106 CDF80480 		str	r8, [sp, #4]
 1595              	.L252:
 1596 010a 40F24B12 		movw	r2, #331
ARM GAS  /tmp/ccmrYpeN.s 			page 29


 1597 010e 3146     		mov	r1, r6
 1598 0110 4846     		mov	r0, r9
 1599 0112 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1600 0116 0028     		cmp	r0, #0
 1601 0118 28DD     		ble	.L235
 1602 011a EB69     		ldr	r3, [r5, #28]
 1603 011c E3B1     		cbz	r3, .L242
 1604 011e 4FF00008 		mov	r8, #0
 1605 0122 3346     		mov	r3, r6
 1606 0124 0127     		movs	r7, #1
 1607              	.L243:
 1608 0126 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1609 0128 2029     		cmp	r1, #32
 1610 012a 9B46     		mov	fp, r3
 1611 012c 03F10103 		add	r3, r3, #1
 1612 0130 F9D0     		beq	.L243
 1613 0132 0929     		cmp	r1, #9
 1614 0134 F7D0     		beq	.L243
 1615 0136 3029     		cmp	r1, #48
 1616 0138 31D1     		bne	.L245
 1617 013a 9BF80110 		ldrb	r1, [fp, #1]	@ zero_extendqisi2
 1618 013e 2C29     		cmp	r1, #44
 1619 0140 00D0     		beq	.L246
 1620 0142 61BB     		cbnz	r1, .L245
 1621              	.L246:
 1622 0144 EA69     		ldr	r2, [r5, #28]
 1623 0146 0BF10103 		add	r3, fp, #1
 1624              	.L247:
 1625 014a 2C29     		cmp	r1, #44
 1626 014c 08F10108 		add	r8, r8, #1
 1627 0150 08BF     		it	eq
 1628 0152 0133     		addeq	r3, r3, #1
 1629 0154 4245     		cmp	r2, r8
 1630 0156 E6D8     		bhi	.L243
 1631              	.L242:
 1632 0158 2B6A     		ldr	r3, [r5, #32]
 1633 015a 0134     		adds	r4, r4, #1
 1634 015c A342     		cmp	r3, r4
 1635 015e D4D8     		bhi	.L252
 1636              	.L241:
 1637 0160 2846     		mov	r0, r5
 1638 0162 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 1639 0166 4FF00008 		mov	r8, #0
 1640 016a 05E0     		b	.L233
 1641              	.L235:
 1642 016c 5046     		mov	r0, r10
 1643 016e 2949     		ldr	r1, .L280+8
 1644 0170 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1645 0174 4FF00108 		mov	r8, #1
 1646              	.L233:
 1647 0178 4046     		mov	r0, r8
 1648 017a 65B0     		add	sp, sp, #404
 1649              		@ sp needed
 1650 017c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1651              	.L275:
 1652 0180 5046     		mov	r0, r10
 1653 0182 2549     		ldr	r1, .L280+12
ARM GAS  /tmp/ccmrYpeN.s 			page 30


 1654 0184 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1655 0188 4FF00108 		mov	r8, #1
 1656 018c 4046     		mov	r0, r8
 1657 018e 65B0     		add	sp, sp, #404
 1658              		@ sp needed
 1659 0190 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1660              	.L276:
 1661 0194 5046     		mov	r0, r10
 1662 0196 2149     		ldr	r1, .L280+16
 1663 0198 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1664 019c ECE7     		b	.L233
 1665              	.L245:
 1666 019e 02A9     		add	r1, sp, #8
 1667 01a0 5846     		mov	r0, fp
 1668 01a2 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 1669 01a6 029B     		ldr	r3, [sp, #8]
 1670 01a8 5B45     		cmp	r3, fp
 1671 01aa 18D0     		beq	.L279
 1672 01ac EA69     		ldr	r2, [r5, #28]
 1673 01ae 04FB0281 		mla	r1, r4, r2, r8
 1674 01b2 B1F5DC7F 		cmp	r1, #440
 1675 01b6 10D8     		bhi	.L249
 1676 01b8 4FEA511E 		lsr	lr, r1, #5
 1677 01bc 05EB8100 		add	r0, r5, r1, lsl #2
 1678 01c0 05EB8E0E 		add	lr, r5, lr, lsl #2
 1679 01c4 80ED0C0A 		vstr.32	s0, [r0, #48]
 1680 01c8 DEF81407 		ldr	r0, [lr, #1812]
 1681 01cc 01F01F01 		and	r1, r1, #31
 1682 01d0 07FA01F1 		lsl	r1, r7, r1
 1683 01d4 0143     		orrs	r1, r1, r0
 1684 01d6 CEF81417 		str	r1, [lr, #1812]
 1685              	.L249:
 1686 01da 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1687 01dc B5E7     		b	.L247
 1688              	.L279:
 1689 01de ABEB0603 		sub	r3, fp, r6
 1690 01e2 0133     		adds	r3, r3, #1
 1691 01e4 E21C     		adds	r2, r4, #3
 1692 01e6 5046     		mov	r0, r10
 1693 01e8 0D49     		ldr	r1, .L280+20
 1694 01ea DDF80480 		ldr	r8, [sp, #4]
 1695 01ee FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1696 01f2 C1E7     		b	.L233
 1697              	.L277:
 1698 01f4 5046     		mov	r0, r10
 1699 01f6 0B49     		ldr	r1, .L280+24
 1700 01f8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1701 01fc BCE7     		b	.L233
 1702              	.L278:
 1703 01fe 5046     		mov	r0, r10
 1704 0200 0949     		ldr	r1, .L280+28
 1705 0202 9846     		mov	r8, r3
 1706 0204 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1707 0208 B6E7     		b	.L233
 1708              	.L281:
 1709 020a 00BF     		.align	2
 1710              	.L280:
ARM GAS  /tmp/ccmrYpeN.s 			page 31


 1711 020c 000080BF 		.word	-1082130432
 1712 0210 00000000 		.word	.LC9
 1713 0214 00000000 		.word	.LC14
 1714 0218 20000000 		.word	.LC15
 1715 021c 48000000 		.word	.LC16
 1716 0220 88000000 		.word	.LC19
 1717 0224 58000000 		.word	.LC17
 1718 0228 78000000 		.word	.LC18
 1719              		.size	_ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef, .-_ZN9HeightMap12LoadFromFileEP9FileSto
 1720              		.global	_ZN9HeightMap16HeightMapCommentE
 1721              		.global	_ZN14GridDefinition19HeightMapLabelLinesE
 1722              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1723              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1724              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1725              	_ZL28cpu_irq_prev_interrupt_state:
 1726 0000 00       		.space	1
 1727              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1728              		.align	2
 1729              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1730              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1731              	_ZL32cpu_irq_critical_section_counter:
 1732 0000 00000000 		.space	4
 1733              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1734              		.align	2
 1735              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1736              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1737              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1738 0000 00000000 		.space	4
 1739              		.section	.rodata._ZN14GridDefinition12CheckHeadingERK9StringRef.str1.4,"aMS",%progbits,1
 1740              		.align	2
 1741              	.LC3:
 1742 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,spacing,xnum,ynum\000"
 1742      2C786D61 
 1742      782C796D 
 1742      696E2C79 
 1742      6D61782C 
 1743              		.section	.rodata._ZN14GridDefinition19HeightMapLabelLinesE,"a",%progbits
 1744              		.align	2
 1745              		.type	_ZN14GridDefinition19HeightMapLabelLinesE, %object
 1746              		.size	_ZN14GridDefinition19HeightMapLabelLinesE, 8
 1747              	_ZN14GridDefinition19HeightMapLabelLinesE:
 1748 0000 00000000 		.word	.LC3
 1749 0004 00000000 		.word	.LC1
 1750              		.section	.rodata._ZN9HeightMap12LoadFromFileEP9FileStoreRK9StringRef.str1.4,"aMS",%progbits,1
 1751              		.align	2
 1752              	.LC14:
 1753 0000 6661696C 		.ascii	"failed to read line from file\000"
 1753      65642074 
 1753      6F207265 
 1753      6164206C 
 1753      696E6520 
 1754 001e 0000     		.space	2
 1755              	.LC15:
 1756 0020 62616420 		.ascii	"bad header line or wrong version header\000"
 1756      68656164 
 1756      6572206C 
 1756      696E6520 
ARM GAS  /tmp/ccmrYpeN.s 			page 32


 1756      6F722077 
 1757              	.LC16:
 1758 0048 62616420 		.ascii	"bad label line\000"
 1758      6C616265 
 1758      6C206C69 
 1758      6E6500
 1759 0057 00       		.space	1
 1760              	.LC17:
 1761 0058 6661696C 		.ascii	"failed to parse grid parameters\000"
 1761      65642074 
 1761      6F207061 
 1761      72736520 
 1761      67726964 
 1762              	.LC18:
 1763 0078 696E7661 		.ascii	"invalid grid\000"
 1763      6C696420 
 1763      67726964 
 1763      00
 1764 0085 000000   		.space	3
 1765              	.LC19:
 1766 0088 6E756D62 		.ascii	"number expected at line %lu column %d\000"
 1766      65722065 
 1766      78706563 
 1766      74656420 
 1766      6174206C 
 1767              		.section	.rodata._ZN9HeightMap16HeightMapCommentE,"a",%progbits
 1768              		.align	2
 1769              		.type	_ZN9HeightMap16HeightMapCommentE, %object
 1770              		.size	_ZN9HeightMap16HeightMapCommentE, 4
 1771              	_ZN9HeightMap16HeightMapCommentE:
 1772 0000 00000000 		.word	.LC9
 1773              		.section	.rodata._ZNK14GridDefinition10PrintErrorEffRK9StringRef.str1.4,"aMS",%progbits,1
 1774              		.align	2
 1775              	.LC4:
 1776 0000 53706163 		.ascii	"Spacing too small\000"
 1776      696E6720 
 1776      746F6F20 
 1776      736D616C 
 1776      6C00
 1777 0012 0000     		.space	2
 1778              	.LC5:
 1779 0014 58207261 		.ascii	"X range too small\000"
 1779      6E676520 
 1779      746F6F20 
 1779      736D616C 
 1779      6C00
 1780 0026 0000     		.space	2
 1781              	.LC6:
 1782 0028 59207261 		.ascii	"Y range too small\000"
 1782      6E676520 
 1782      746F6F20 
 1782      736D616C 
 1782      6C00
 1783 003a 0000     		.space	2
 1784              	.LC7:
 1785 003c 42616420 		.ascii	"Bad radius\000"
 1785      72616469 
ARM GAS  /tmp/ccmrYpeN.s 			page 33


 1785      757300
 1786 0047 00       		.space	1
 1787              	.LC8:
 1788 0048 546F6F20 		.ascii	"Too many grid points; suggest increase spacing to %"
 1788      6D616E79 
 1788      20677269 
 1788      6420706F 
 1788      696E7473 
 1789 007b 2E31666D 		.ascii	".1fmm\000"
 1789      6D00
 1790              		.section	.rodata._ZNK14GridDefinition15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,1
 1791              		.align	2
 1792              	.LC0:
 1793 0000 58252E31 		.ascii	"X%.1f:%.1f, Y%.1f:%.1f, radius %.1f, X spacing %.1f"
 1793      663A252E 
 1793      31662C20 
 1793      59252E31 
 1793      663A252E 
 1794 0033 2C205920 		.ascii	", Y spacing %.1f, %lu points\000"
 1794      73706163 
 1794      696E6720 
 1794      252E3166 
 1794      2C20256C 
 1795              		.section	.rodata._ZNK14GridDefinition25WriteHeadingAndParametersERK9StringRef.str1.4,"aMS",%progbi
 1796              		.align	2
 1797              	.LC1:
 1798 0000 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,xspacing,yspacing,xnum,y"
 1798      2C786D61 
 1798      782C796D 
 1798      696E2C79 
 1798      6D61782C 
 1799 0033 6E756D00 		.ascii	"num\000"
 1800 0037 00       		.space	1
 1801              	.LC2:
 1802 0038 25730A25 		.ascii	"%s\012%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%li,%li\012"
 1802      2E32662C 
 1802      252E3266 
 1802      2C252E32 
 1802      662C252E 
 1803 0066 00       		.ascii	"\000"
 1804              		.section	.rodata._ZNK9HeightMap10SaveToFileEP9FileStoref.str1.4,"aMS",%progbits,1
 1805              		.align	2
 1806              	.LC9:
 1807 0000 52657052 		.ascii	"RepRapFirmware height map file v2\000"
 1807      61704669 
 1807      726D7761 
 1807      72652068 
 1807      65696768 
 1808 0022 0000     		.space	2
 1809              	.LC10:
 1810 0024 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 1810      65726174 
 1810      65642061 
 1810      74202530 
 1810      34752D25 
 1811 004b 00       		.space	1
 1812              	.LC11:
ARM GAS  /tmp/ccmrYpeN.s 			page 34


 1813 004c 2C206D65 		.ascii	", mean error %.3f, deviation %.3f\012\000"
 1813      616E2065 
 1813      72726F72 
 1813      20252E33 
 1813      662C2064 
 1814 006f 00       		.space	1
 1815              	.LC12:
 1816 0070 25372E33 		.ascii	"%7.3f\000"
 1816      6600
 1817 0076 0000     		.space	2
 1818              	.LC13:
 1819 0078 20202020 		.ascii	"      0\000"
 1819      20203000 
 1820              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
