ARM GAS  /tmp/ccBD3LlP.s 			page 1


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
  13              		.file	"RandomProbePointSet.cpp"
  14              		.section	.text._ZN19RandomProbePointSetC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN19RandomProbePointSetC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN19RandomProbePointSetC2Ev, %function
  23              	_ZN19RandomProbePointSetC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0021     		movs	r1, #0
  28 0002 30B4     		push	{r4, r5}
  29 0004 0160     		str	r1, [r0]
  30 0006 0025     		movs	r5, #0
  31 0008 00F28313 		addw	r3, r0, #387
  32 000c 00F58272 		add	r2, r0, #260
  33 0010 00F2A314 		addw	r4, r0, #419
  34              	.L2:
  35 0014 03F8011F 		strb	r1, [r3, #1]!
  36 0018 A342     		cmp	r3, r4
  37 001a 42F8045B 		str	r5, [r2], #4	@ float
  38 001e F9D1     		bne	.L2
  39 0020 30BC     		pop	{r4, r5}
  40 0022 7047     		bx	lr
  41              		.size	_ZN19RandomProbePointSetC2Ev, .-_ZN19RandomProbePointSetC2Ev
  42              		.global	_ZN19RandomProbePointSetC1Ev
  43              		.thumb_set _ZN19RandomProbePointSetC1Ev,_ZN19RandomProbePointSetC2Ev
  44              		.section	.text._ZN19RandomProbePointSet18SetXYBedProbePointEjff,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN19RandomProbePointSet18SetXYBedProbePointEjff
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, %function
  53              	_ZN19RandomProbePointSet18SetXYBedProbePointEjff:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 00EB8103 		add	r3, r0, r1, lsl #2
ARM GAS  /tmp/ccBD3LlP.s 			page 2


  58 0004 0844     		add	r0, r0, r1
  59 0006 83ED010A 		vstr.32	s0, [r3, #4]
  60 000a C3ED210A 		vstr.32	s1, [r3, #132]
  61 000e 90F88431 		ldrb	r3, [r0, #388]	@ zero_extendqisi2
  62 0012 43F00103 		orr	r3, r3, #1
  63 0016 80F88431 		strb	r3, [r0, #388]
  64 001a 7047     		bx	lr
  65              		.size	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, .-_ZN19RandomProbePointSet18SetXYBedProbeP
  66              		.section	.text._ZN19RandomProbePointSet17SetZBedProbePointEjfbb,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, %function
  75              	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 10B4     		push	{r4}
  80 0002 00EB8104 		add	r4, r0, r1, lsl #2
  81 0006 0144     		add	r1, r1, r0
  82 0008 84ED410A 		vstr.32	s0, [r4, #260]
  83 000c 91F88441 		ldrb	r4, [r1, #388]	@ zero_extendqisi2
  84 0010 44F00200 		orr	r0, r4, #2
  85 0014 81F88401 		strb	r0, [r1, #388]
  86 0018 5AB1     		cbz	r2, .L8
  87 001a 44F00604 		orr	r4, r4, #6
  88 001e 81F88441 		strb	r4, [r1, #388]
  89 0022 73B9     		cbnz	r3, .L13
  90              	.L10:
  91 0024 24F00804 		bic	r4, r4, #8
  92 0028 81F88441 		strb	r4, [r1, #388]
  93 002c 5DF8044B 		ldr	r4, [sp], #4
  94 0030 7047     		bx	lr
  95              	.L8:
  96 0032 24F00404 		bic	r4, r4, #4
  97 0036 44F00204 		orr	r4, r4, #2
  98 003a 81F88441 		strb	r4, [r1, #388]
  99 003e 002B     		cmp	r3, #0
 100 0040 F0D0     		beq	.L10
 101              	.L13:
 102 0042 44F00804 		orr	r4, r4, #8
 103 0046 81F88441 		strb	r4, [r1, #388]
 104 004a 5DF8044B 		ldr	r4, [sp], #4
 105 004e 7047     		bx	lr
 106              		.size	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, .-_ZN19RandomProbePointSet17SetZBedProbePo
 107              		.section	.text._ZNK19RandomProbePointSet19NumberOfProbePointsEv,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccBD3LlP.s 			page 3


 115              		.type	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, %function
 116              	_ZNK19RandomProbePointSet19NumberOfProbePointsEv:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 00F28312 		addw	r2, r0, #387
 121 0004 0020     		movs	r0, #0
 122 0006 02E0     		b	.L16
 123              	.L18:
 124 0008 0130     		adds	r0, r0, #1
 125 000a 2028     		cmp	r0, #32
 126 000c 05D0     		beq	.L14
 127              	.L16:
 128 000e 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 129 0012 03F00303 		and	r3, r3, #3
 130 0016 032B     		cmp	r3, #3
 131 0018 F6D0     		beq	.L18
 132              	.L14:
 133 001a 7047     		bx	lr
 134              		.size	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, .-_ZNK19RandomProbePointSet19NumberOfProbe
 135              		.section	.text._ZN19RandomProbePointSet17ClearProbeHeightsEv,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZN19RandomProbePointSet17ClearProbeHeightsEv, %function
 144              	_ZN19RandomProbePointSet17ClearProbeHeightsEv:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 00F28313 		addw	r3, r0, #387
 149 0004 00F2A310 		addw	r0, r0, #419
 150              	.L20:
 151 0008 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 152 000c 22F00202 		bic	r2, r2, #2
 153 0010 8342     		cmp	r3, r0
 154 0012 1A70     		strb	r2, [r3]
 155 0014 F8D1     		bne	.L20
 156 0016 7047     		bx	lr
 157              		.size	_ZN19RandomProbePointSet17ClearProbeHeightsEv, .-_ZN19RandomProbePointSet17ClearProbeHeights
 158              		.section	.text._ZNK19RandomProbePointSet15GoodProbePointsEj,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_ZNK19RandomProbePointSet15GoodProbePointsEj
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_ZNK19RandomProbePointSet15GoodProbePointsEj, %function
 167              	_ZNK19RandomProbePointSet15GoodProbePointsEj:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 99B1     		cbz	r1, .L26
ARM GAS  /tmp/ccBD3LlP.s 			page 4


 172 0002 90F88431 		ldrb	r3, [r0, #388]	@ zero_extendqisi2
 173 0006 03F00B03 		and	r3, r3, #11
 174 000a 032B     		cmp	r3, #3
 175 000c 0FD1     		bne	.L28
 176 000e 00F28313 		addw	r3, r0, #387
 177 0012 1944     		add	r1, r1, r3
 178 0014 00F5C270 		add	r0, r0, #388
 179 0018 05E0     		b	.L24
 180              	.L25:
 181 001a 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 182 001e 03F00B03 		and	r3, r3, #11
 183 0022 032B     		cmp	r3, #3
 184 0024 03D1     		bne	.L28
 185              	.L24:
 186 0026 8842     		cmp	r0, r1
 187 0028 F7D1     		bne	.L25
 188              	.L26:
 189 002a 0120     		movs	r0, #1
 190 002c 7047     		bx	lr
 191              	.L28:
 192 002e 0020     		movs	r0, #0
 193 0030 7047     		bx	lr
 194              		.size	_ZNK19RandomProbePointSet15GoodProbePointsEj, .-_ZNK19RandomProbePointSet15GoodProbePointsEj
 195 0032 00BF     		.section	.text._ZNK19RandomProbePointSet22GoodProbePointOrderingEj,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, %function
 204              	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 0129     		cmp	r1, #1
 209 0002 5AD9     		bls	.L38
 210 0004 90ED227A 		vldr.32	s14, [r0, #136]
 211 0008 D0ED217A 		vldr.32	s15, [r0, #132]
 212 000c B4EEE77A 		vcmpe.f32	s14, s15
 213 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 214 0014 4FD9     		bls	.L45
 215 0016 0229     		cmp	r1, #2
 216 0018 4FD0     		beq	.L38
 217 001a 90ED036A 		vldr.32	s12, [r0, #12]
 218 001e D0ED026A 		vldr.32	s13, [r0, #8]
 219 0022 B4EEE66A 		vcmpe.f32	s12, s13
 220 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 221 002a 44D9     		bls	.L45
 222 002c 0329     		cmp	r1, #3
 223 002e 44D0     		beq	.L38
 224 0030 D0ED244A 		vldr.32	s9, [r0, #144]
 225 0034 90ED235A 		vldr.32	s10, [r0, #140]
 226 0038 F4EEC54A 		vcmpe.f32	s9, s10
 227 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 228 0040 39DA     		bge	.L45
ARM GAS  /tmp/ccBD3LlP.s 			page 5


 229 0042 D0ED015A 		vldr.32	s11, [r0, #4]
 230 0046 D0ED043A 		vldr.32	s7, [r0, #16]
 231 004a F4EEE35A 		vcmpe.f32	s11, s7
 232 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 233 0052 30DA     		bge	.L45
 234 0054 0429     		cmp	r1, #4
 235 0056 30D0     		beq	.L38
 236 0058 90ED054A 		vldr.32	s8, [r0, #20]
 237 005c F4EEC45A 		vcmpe.f32	s11, s8
 238 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 239 0064 27DA     		bge	.L45
 240 0066 F4EEC46A 		vcmpe.f32	s13, s8
 241 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 242 006e 22DA     		bge	.L45
 243 0070 B4EEC46A 		vcmpe.f32	s12, s8
 244 0074 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 245 0078 1DD9     		bls	.L45
 246 007a F4EEC43A 		vcmpe.f32	s7, s8
 247 007e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 248 0082 18D9     		bls	.L45
 249 0084 D0ED256A 		vldr.32	s13, [r0, #148]
 250 0088 F4EEE67A 		vcmpe.f32	s15, s13
 251 008c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 252 0090 11DA     		bge	.L45
 253 0092 B4EEE67A 		vcmpe.f32	s14, s13
 254 0096 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 255 009a 0CD9     		bls	.L45
 256 009c B4EEE65A 		vcmpe.f32	s10, s13
 257 00a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 258 00a4 07D9     		bls	.L45
 259 00a6 F4EEE64A 		vcmpe.f32	s9, s13
 260 00aa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 261 00ae B4BF     		ite	lt
 262 00b0 0120     		movlt	r0, #1
 263 00b2 0020     		movge	r0, #0
 264 00b4 7047     		bx	lr
 265              	.L45:
 266 00b6 0020     		movs	r0, #0
 267 00b8 7047     		bx	lr
 268              	.L38:
 269 00ba 0120     		movs	r0, #1
 270 00bc 7047     		bx	lr
 271              		.size	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, .-_ZNK19RandomProbePointSet22GoodProbeP
 272              		.global	__aeabi_f2d
 273 00be 00BF     		.section	.text._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu fpv4-sp-d16
 281              		.type	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, %function
 282              	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  /tmp/ccBD3LlP.s 			page 6


 286 0004 84B0     		sub	sp, sp, #16
 287 0006 1746     		mov	r7, r2
 288 0008 0346     		mov	r3, r0
 289 000a 0E46     		mov	r6, r1
 290 000c FFF7FEFF 		bl	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 291 0010 58B9     		cbnz	r0, .L47
 292 0012 0329     		cmp	r1, #3
 293 0014 1AD8     		bhi	.L64
 294 0016 4A1E     		subs	r2, r1, #1
 295 0018 3846     		mov	r0, r7
 296 001a 7049     		ldr	r1, .L66
 297 001c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 298              	.L63:
 299 0020 0124     		movs	r4, #1
 300 0022 2046     		mov	r0, r4
 301 0024 04B0     		add	sp, sp, #16
 302              		@ sp needed
 303 0026 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 304              	.L47:
 305 002a 0429     		cmp	r1, #4
 306 002c 1ED0     		beq	.L51
 307 002e 0529     		cmp	r1, #5
 308 0030 00F09C80 		beq	.L52
 309 0034 0329     		cmp	r1, #3
 310 0036 57D0     		beq	.L65
 311 0038 0446     		mov	r4, r0
 312 003a 0A46     		mov	r2, r1
 313 003c 3846     		mov	r0, r7
 314 003e 6849     		ldr	r1, .L66+4
 315 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 316 0044 2046     		mov	r0, r4
 317 0046 04B0     		add	sp, sp, #16
 318              		@ sp needed
 319 0048 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 320              	.L64:
 321 004c 0322     		movs	r2, #3
 322 004e 6349     		ldr	r1, .L66
 323 0050 3846     		mov	r0, r7
 324 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 325 0056 042E     		cmp	r6, #4
 326 0058 E2D0     		beq	.L63
 327 005a 3846     		mov	r0, r7
 328 005c 6149     		ldr	r1, .L66+8
 329 005e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 330 0062 0124     		movs	r4, #1
 331 0064 2046     		mov	r0, r4
 332 0066 04B0     		add	sp, sp, #16
 333              		@ sp needed
 334 0068 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 335              	.L51:
 336 006c 93ED016A 		vldr.32	s12, [r3, #4]
 337 0070 D3ED216A 		vldr.32	s13, [r3, #132]
 338 0074 93ED047A 		vldr.32	s14, [r3, #16]
 339 0078 D3ED227A 		vldr.32	s15, [r3, #136]
 340 007c 37EE467A 		vsub.f32	s14, s14, s12
 341 0080 77EEE67A 		vsub.f32	s15, s15, s13
 342 0084 F7EE006A 		vmov.f32	s13, #1.0e+0
ARM GAS  /tmp/ccBD3LlP.s 			page 7


 343 0088 86EE876A 		vdiv.f32	s12, s13, s14
 344 008c 1C1D     		adds	r4, r3, #4
 345 008e 86EEA77A 		vdiv.f32	s14, s13, s15
 346 0092 83ED6C6A 		vstr.32	s12, [r3, #432]
 347 0096 83ED6D7A 		vstr.32	s14, [r3, #436]
 348              	.L54:
 349 009a 1E60     		str	r6, [r3]
 350 009c 5249     		ldr	r1, .L66+12
 351 009e DFF84CA1 		ldr	r10, .L66+16
 352 00a2 3846     		mov	r0, r7
 353 00a4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 354 00a8 0025     		movs	r5, #0
 355              	.L56:
 356 00aa 54F8040B 		ldr	r0, [r4], #4	@ float
 357 00ae FFF7FEFF 		bl	__aeabi_f2d
 358 00b2 8046     		mov	r8, r0
 359 00b4 D4F8FC00 		ldr	r0, [r4, #252]	@ float
 360 00b8 8946     		mov	r9, r1
 361 00ba FFF7FEFF 		bl	__aeabi_f2d
 362 00be CDE90201 		strd	r0, [sp, #8]
 363 00c2 E06F     		ldr	r0, [r4, #124]	@ float
 364 00c4 FFF7FEFF 		bl	__aeabi_f2d
 365 00c8 0135     		adds	r5, r5, #1
 366 00ca CDE90001 		strd	r0, [sp]
 367 00ce 4246     		mov	r2, r8
 368 00d0 4B46     		mov	r3, r9
 369 00d2 5146     		mov	r1, r10
 370 00d4 3846     		mov	r0, r7
 371 00d6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 372 00da AE42     		cmp	r6, r5
 373 00dc E5D8     		bhi	.L56
 374 00de 0024     		movs	r4, #0
 375 00e0 2046     		mov	r0, r4
 376 00e2 04B0     		add	sp, sp, #16
 377              		@ sp needed
 378 00e4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 379              	.L65:
 380 00e8 93ED016A 		vldr.32	s12, [r3, #4]
 381 00ec 93ED023A 		vldr.32	s6, [r3, #8]
 382 00f0 D3ED417A 		vldr.32	s15, [r3, #260]
 383 00f4 D3ED434A 		vldr.32	s9, [r3, #268]
 384 00f8 93ED424A 		vldr.32	s8, [r3, #264]
 385 00fc D3ED215A 		vldr.32	s11, [r3, #132]
 386 0100 93ED037A 		vldr.32	s14, [r3, #12]
 387 0104 93ED235A 		vldr.32	s10, [r3, #140]
 388 0108 D3ED226A 		vldr.32	s13, [r3, #136]
 389 010c 74EEE74A 		vsub.f32	s9, s9, s15
 390 0110 73EE463A 		vsub.f32	s7, s6, s12
 391 0114 37EE467A 		vsub.f32	s14, s14, s12
 392 0118 35EE655A 		vsub.f32	s10, s10, s11
 393 011c 74EE677A 		vsub.f32	s15, s8, s15
 394 0120 24EEE36A 		vnmul.f32	s12, s9, s7
 395 0124 76EEE55A 		vsub.f32	s11, s13, s11
 396 0128 A7EE876A 		vfma.f32	s12, s15, s14
 397 012c 1C1D     		adds	r4, r3, #4
 398 012e 65EE677A 		vnmul.f32	s15, s10, s15
 399 0132 66EE866A 		vmul.f32	s13, s13, s12
ARM GAS  /tmp/ccBD3LlP.s 			page 8


 400 0136 E5EEA47A 		vfma.f32	s15, s11, s9
 401 013a 27EE657A 		vnmul.f32	s14, s14, s11
 402 013e E3EE276A 		vfma.f32	s13, s6, s15
 403 0142 A3EE857A 		vfma.f32	s14, s7, s10
 404 0146 F1EE677A 		vneg.f32	s15, s15
 405 014a E4EE076A 		vfma.f32	s13, s8, s14
 406 014e B1EE466A 		vneg.f32	s12, s12
 407 0152 C6EE875A 		vdiv.f32	s11, s13, s14
 408 0156 C7EE876A 		vdiv.f32	s13, s15, s14
 409 015a C6EE077A 		vdiv.f32	s15, s12, s14
 410 015e C3ED6B5A 		vstr.32	s11, [r3, #428]
 411 0162 C3ED696A 		vstr.32	s13, [r3, #420]
 412 0166 C3ED6A7A 		vstr.32	s15, [r3, #424]
 413 016a 96E7     		b	.L54
 414              	.L52:
 415 016c 1C1D     		adds	r4, r3, #4
 416 016e D3ED054A 		vldr.32	s9, [r3, #20]
 417 0172 93ED255A 		vldr.32	s10, [r3, #148]
 418 0176 D3ED455A 		vldr.32	s11, [r3, #276]
 419 017a 2246     		mov	r2, r4
 420 017c 03F11401 		add	r1, r3, #20
 421 0180 B0EE006A 		vmov.f32	s12, #2.0e+0
 422              	.L55:
 423 0184 F2EC016A 		vldmia.32	r2!, {s13}
 424 0188 76EEE46A 		vsub.f32	s13, s13, s9
 425 018c B0EE644A 		vmov.f32	s8, s9
 426 0190 A6EE864A 		vfma.f32	s8, s13, s12
 427 0194 8A42     		cmp	r2, r1
 428 0196 92ED1F7A 		vldr.32	s14, [r2, #124]
 429 019a D2ED3F7A 		vldr.32	s15, [r2, #252]
 430 019e 37EE457A 		vsub.f32	s14, s14, s10
 431 01a2 F0EE446A 		vmov.f32	s13, s8
 432 01a6 B0EE454A 		vmov.f32	s8, s10
 433 01aa A7EE064A 		vfma.f32	s8, s14, s12
 434 01ae 77EEE57A 		vsub.f32	s15, s15, s11
 435 01b2 B0EE447A 		vmov.f32	s14, s8
 436 01b6 B0EE654A 		vmov.f32	s8, s11
 437 01ba A7EE864A 		vfma.f32	s8, s15, s12
 438 01be C2ED6C6A 		vstr.32	s13, [r2, #432]
 439 01c2 82ED717A 		vstr.32	s14, [r2, #452]
 440 01c6 82ED764A 		vstr.32	s8, [r2, #472]
 441 01ca DBD1     		bne	.L55
 442 01cc C3ED724A 		vstr.32	s9, [r3, #456]
 443 01d0 83ED775A 		vstr.32	s10, [r3, #476]
 444 01d4 C3ED7C5A 		vstr.32	s11, [r3, #496]
 445 01d8 5FE7     		b	.L54
 446              	.L67:
 447 01da 00BF     		.align	2
 448              	.L66:
 449 01dc 00000000 		.word	.LC0
 450 01e0 68000000 		.word	.LC2
 451 01e4 48000000 		.word	.LC1
 452 01e8 C0000000 		.word	.LC4
 453 01ec AC000000 		.word	.LC3
 454              		.size	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, .-_ZN19RandomProbePointSet20Se
 455              		.section	.text._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef,"ax",%progbits
 456              		.align	1
ARM GAS  /tmp/ccBD3LlP.s 			page 9


 457              		.p2align 2,,3
 458              		.global	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, %function
 464              	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 468 0004 2DED048B 		vpush.64	{d8, d9}
 469 0008 0446     		mov	r4, r0
 470 000a 83B0     		sub	sp, sp, #12
 471 000c 8846     		mov	r8, r1
 472 000e 1046     		mov	r0, r2
 473 0010 3649     		ldr	r1, .L80
 474 0012 DFED378A 		vldr.32	s17, .L80+4
 475 0016 1646     		mov	r6, r2
 476 0018 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 477 001c B8F1000F 		cmp	r8, #0
 478 0020 5DD0     		beq	.L75
 479 0022 04EB0807 		add	r7, r4, r8
 480 0026 04F28315 		addw	r5, r4, #387
 481 002a DFF8CCB0 		ldr	fp, .L80+12
 482 002e DFF8CCA0 		ldr	r10, .L80+16
 483 0032 DFF8CC90 		ldr	r9, .L80+20
 484 0036 B0EE689A 		vmov.f32	s18, s17
 485 003a 07F28317 		addw	r7, r7, #387
 486 003e 04F58274 		add	r4, r4, #260
 487 0042 16E0     		b	.L73
 488              	.L70:
 489 0044 13F0080F 		tst	r3, #8
 490 0048 5146     		mov	r1, r10
 491 004a 1AD1     		bne	.L78
 492 004c 2068     		ldr	r0, [r4]	@ float
 493 004e FFF7FEFF 		bl	__aeabi_f2d
 494 0052 0246     		mov	r2, r0
 495 0054 0B46     		mov	r3, r1
 496 0056 3046     		mov	r0, r6
 497 0058 5946     		mov	r1, fp
 498 005a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 499 005e D4ED007A 		vldr.32	s15, [r4]
 500 0062 BD42     		cmp	r5, r7
 501 0064 E7EEA78A 		vfma.f32	s17, s15, s15
 502 0068 04F10404 		add	r4, r4, #4
 503 006c 39EE279A 		vadd.f32	s18, s18, s15
 504 0070 0DD0     		beq	.L69
 505              	.L73:
 506 0072 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 507 0076 03F00302 		and	r2, r3, #3
 508 007a 032A     		cmp	r2, #3
 509 007c 4946     		mov	r1, r9
 510 007e 3046     		mov	r0, r6
 511 0080 E0D0     		beq	.L70
 512              	.L78:
 513 0082 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
ARM GAS  /tmp/ccBD3LlP.s 			page 10


 514 0086 BD42     		cmp	r5, r7
 515 0088 04F10404 		add	r4, r4, #4
 516 008c F1D1     		bne	.L73
 517              	.L69:
 518 008e 07EE908A 		vmov	s15, r8	@ int
 519 0092 B8EEE78A 		vcvt.f32.s32	s16, s15
 520 0096 C9EE089A 		vdiv.f32	s19, s18, s16
 521 009a 19EE900A 		vmov	r0, s19
 522 009e FFF7FEFF 		bl	__aeabi_f2d
 523 00a2 88EE880A 		vdiv.f32	s0, s17, s16
 524 00a6 0446     		mov	r4, r0
 525 00a8 0D46     		mov	r5, r1
 526 00aa A9EEE90A 		vfms.f32	s0, s19, s19
 527 00ae B5EE400A 		vcmp.f32	s0, #0
 528 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 529 00b6 B1EEC08A 		vsqrt.f32	s16, s0
 530 00ba 13D4     		bmi	.L79
 531              	.L74:
 532 00bc 18EE100A 		vmov	r0, s16
 533 00c0 FFF7FEFF 		bl	__aeabi_f2d
 534 00c4 2246     		mov	r2, r4
 535 00c6 CDE90001 		strd	r0, [sp]
 536 00ca 2B46     		mov	r3, r5
 537 00cc 3046     		mov	r0, r6
 538 00ce 0949     		ldr	r1, .L80+8
 539 00d0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 540 00d4 03B0     		add	sp, sp, #12
 541              		@ sp needed
 542 00d6 BDEC048B 		vldm	sp!, {d8-d9}
 543 00da BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 544              	.L75:
 545 00de B0EE689A 		vmov.f32	s18, s17
 546 00e2 D4E7     		b	.L69
 547              	.L79:
 548 00e4 FFF7FEFF 		bl	sqrtf
 549 00e8 E8E7     		b	.L74
 550              	.L81:
 551 00ea 00BF     		.align	2
 552              	.L80:
 553 00ec 00000000 		.word	.LC5
 554 00f0 00000000 		.word	0
 555 00f4 3C000000 		.word	.LC9
 556 00f8 34000000 		.word	.LC8
 557 00fc 24000000 		.word	.LC7
 558 0100 18000000 		.word	.LC6
 559              		.size	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, .-_ZNK19RandomProbePointSet18Re
 560              		.section	.text._ZNK19RandomProbePointSet22SecondDegreeTransformZEff,"ax",%progbits
 561              		.align	1
 562              		.p2align 2,,3
 563              		.global	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 564              		.syntax unified
 565              		.thumb
 566              		.thumb_func
 567              		.fpu fpv4-sp-d16
 568              		.type	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, %function
 569              	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff:
 570              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccBD3LlP.s 			page 11


 571              		@ frame_needed = 0, uses_anonymous_args = 0
 572              		@ link register save eliminated.
 573 0000 D0ED216A 		vldr.32	s13, [r0, #132]
 574 0004 90ED017A 		vldr.32	s14, [r0, #4]
 575 0008 90ED6D4A 		vldr.32	s8, [r0, #436]
 576 000c D0ED6C7A 		vldr.32	s15, [r0, #432]
 577 0010 D0ED444A 		vldr.32	s9, [r0, #272]
 578 0014 90ED415A 		vldr.32	s10, [r0, #260]
 579 0018 D0ED425A 		vldr.32	s11, [r0, #264]
 580 001c 90ED436A 		vldr.32	s12, [r0, #268]
 581 0020 70EEE60A 		vsub.f32	s1, s1, s13
 582 0024 30EE470A 		vsub.f32	s0, s0, s14
 583 0028 60EE840A 		vmul.f32	s1, s1, s8
 584 002c B7EE007A 		vmov.f32	s14, #1.0e+0
 585 0030 77EE606A 		vsub.f32	s13, s14, s1
 586 0034 60EE277A 		vmul.f32	s15, s0, s15
 587 0038 37EE677A 		vsub.f32	s14, s14, s15
 588 003c 26EEA70A 		vmul.f32	s0, s13, s15
 589 0040 67EE266A 		vmul.f32	s13, s14, s13
 590 0044 20EE240A 		vmul.f32	s0, s0, s9
 591 0048 27EE207A 		vmul.f32	s14, s14, s1
 592 004c A6EE850A 		vfma.f32	s0, s13, s10
 593 0050 67EEA07A 		vmul.f32	s15, s15, s1
 594 0054 A7EE250A 		vfma.f32	s0, s14, s11
 595 0058 A7EE860A 		vfma.f32	s0, s15, s12
 596 005c 7047     		bx	lr
 597              		.size	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, .-_ZNK19RandomProbePointSet22SecondDeg
 598 005e 00BF     		.section	.text._ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv4-sp-d16
 606              		.type	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, %function
 607              	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_:
 608              		@ args = 12, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611 0000 00EB8202 		add	r2, r0, r2, lsl #2
 612 0004 00EB8303 		add	r3, r0, r3, lsl #2
 613 0008 00EB8101 		add	r1, r0, r1, lsl #2
 614 000c D3ED737A 		vldr.32	s15, [r3, #460]
 615 0010 93ED6E6A 		vldr.32	s12, [r3, #440]
 616 0014 D1ED735A 		vldr.32	s11, [r1, #460]
 617 0018 92ED6E7A 		vldr.32	s14, [r2, #440]
 618 001c 92ED735A 		vldr.32	s10, [r2, #460]
 619 0020 D1ED6E4A 		vldr.32	s9, [r1, #440]
 620 0024 029A     		ldr	r2, [sp, #8]
 621 0026 75EEE75A 		vsub.f32	s11, s11, s15
 622 002a 36EE477A 		vsub.f32	s14, s12, s14
 623 002e 35EE675A 		vsub.f32	s10, s10, s15
 624 0032 27EE254A 		vmul.f32	s8, s14, s11
 625 0036 74EEC64A 		vsub.f32	s9, s9, s12
 626 003a F7EE006A 		vmov.f32	s13, #1.0e+0
 627 003e A5EE244A 		vfma.f32	s8, s10, s9
ARM GAS  /tmp/ccBD3LlP.s 			page 12


 628 0042 DDE90031 		ldrd	r3, r1, [sp]
 629 0046 C6EE843A 		vdiv.f32	s7, s13, s8
 630 004a 70EEE77A 		vsub.f32	s15, s1, s15
 631 004e 30EE460A 		vsub.f32	s0, s0, s12
 632 0052 27EE277A 		vmul.f32	s14, s14, s15
 633 0056 67EEA47A 		vmul.f32	s15, s15, s9
 634 005a A5EE007A 		vfma.f32	s14, s10, s0
 635 005e E5EEC07A 		vfms.f32	s15, s11, s0
 636 0062 27EE237A 		vmul.f32	s14, s14, s7
 637 0066 67EEA37A 		vmul.f32	s15, s15, s7
 638 006a 83ED007A 		vstr.32	s14, [r3]
 639 006e C1ED007A 		vstr.32	s15, [r1]
 640 0072 93ED007A 		vldr.32	s14, [r3]
 641 0076 76EEC76A 		vsub.f32	s13, s13, s14
 642 007a 76EEE77A 		vsub.f32	s15, s13, s15
 643 007e C2ED007A 		vstr.32	s15, [r2]
 644 0082 7047     		bx	lr
 645              		.size	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, .-_ZNK19RandomProbePointSet
 646              		.section	.text._ZNK19RandomProbePointSet9TriangleZEff,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	_ZNK19RandomProbePointSet9TriangleZEff
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu fpv4-sp-d16
 654              		.type	_ZNK19RandomProbePointSet9TriangleZEff, %function
 655              	_ZNK19RandomProbePointSet9TriangleZEff:
 656              		@ args = 0, pretend = 0, frame = 16
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 659 0004 9FED2A3A 		vldr.32	s6, .L97
 660 0008 88B0     		sub	sp, sp, #32
 661 000a B0EE402A 		vmov.f32	s4, s0
 662 000e F0EE602A 		vmov.f32	s5, s1
 663 0012 0746     		mov	r7, r0
 664 0014 0024     		movs	r4, #0
 665 0016 0DF11C0A 		add	r10, sp, #28
 666 001a 0DF11809 		add	r9, sp, #24
 667 001e 0DF11408 		add	r8, sp, #20
 668              	.L90:
 669 0022 651C     		adds	r5, r4, #1
 670 0024 05F00306 		and	r6, r5, #3
 671 0028 CDE9019A 		strd	r9, r10, [sp, #4]
 672 002c CDF80080 		str	r8, [sp]
 673 0030 3246     		mov	r2, r6
 674 0032 F0EE620A 		vmov.f32	s1, s5
 675 0036 B0EE420A 		vmov.f32	s0, s4
 676 003a 0423     		movs	r3, #4
 677 003c 2146     		mov	r1, r4
 678 003e 3846     		mov	r0, r7
 679 0040 FFF7FEFF 		bl	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 680 0044 DDED057A 		vldr.32	s15, [sp, #20]
 681 0048 F4EEC37A 		vcmpe.f32	s15, s6
 682 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 683 0050 0DDD     		ble	.L85
 684 0052 9DED067A 		vldr.32	s14, [sp, #24]
ARM GAS  /tmp/ccBD3LlP.s 			page 13


 685 0056 B4EEC37A 		vcmpe.f32	s14, s6
 686 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 687 005e 06DD     		ble	.L85
 688 0060 DDED076A 		vldr.32	s13, [sp, #28]
 689 0064 F4EEC36A 		vcmpe.f32	s13, s6
 690 0068 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 691 006c 0EDC     		bgt	.L96
 692              	.L85:
 693 006e 042D     		cmp	r5, #4
 694 0070 2C46     		mov	r4, r5
 695 0072 D6D1     		bne	.L90
 696 0074 0F4B     		ldr	r3, .L97+4
 697 0076 104A     		ldr	r2, .L97+8
 698 0078 1868     		ldr	r0, [r3]	@ unaligned
 699 007a 40F2B521 		movw	r1, #693
 700 007e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 701 0082 9FED0E0A 		vldr.32	s0, .L97+12
 702              	.L84:
 703 0086 08B0     		add	sp, sp, #32
 704              		@ sp needed
 705 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 706              	.L96:
 707 008c 07EB8606 		add	r6, r7, r6, lsl #2
 708 0090 96ED780A 		vldr.32	s0, [r6, #480]
 709 0094 97ED7C6A 		vldr.32	s12, [r7, #496]
 710 0098 07EB8404 		add	r4, r7, r4, lsl #2
 711 009c 27EE000A 		vmul.f32	s0, s14, s0
 712 00a0 94ED787A 		vldr.32	s14, [r4, #480]
 713 00a4 A7EE870A 		vfma.f32	s0, s15, s14
 714 00a8 A6EE860A 		vfma.f32	s0, s13, s12
 715 00ac EBE7     		b	.L84
 716              	.L98:
 717 00ae 00BF     		.align	2
 718              	.L97:
 719 00b0 6F1283BA 		.word	3129152111
 720 00b4 00000000 		.word	reprap
 721 00b8 00000000 		.word	.LC10
 722 00bc 00000000 		.word	0
 723              		.size	_ZNK19RandomProbePointSet9TriangleZEff, .-_ZNK19RandomProbePointSet9TriangleZEff
 724              		.section	.text._ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff,"ax",%progbits
 725              		.align	1
 726              		.p2align 2,,3
 727              		.global	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff
 728              		.syntax unified
 729              		.thumb
 730              		.thumb_func
 731              		.fpu fpv4-sp-d16
 732              		.type	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, %function
 733              	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff:
 734              		@ args = 0, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736              		@ link register save eliminated.
 737 0000 0368     		ldr	r3, [r0]
 738 0002 042B     		cmp	r3, #4
 739 0004 B0EE407A 		vmov.f32	s14, s0
 740 0008 17D0     		beq	.L101
 741 000a 052B     		cmp	r3, #5
ARM GAS  /tmp/ccBD3LlP.s 			page 14


 742 000c 13D0     		beq	.L102
 743 000e 032B     		cmp	r3, #3
 744 0010 02D0     		beq	.L106
 745 0012 9FED0B0A 		vldr.32	s0, .L107
 746 0016 7047     		bx	lr
 747              	.L106:
 748 0018 90ED6A0A 		vldr.32	s0, [r0, #424]
 749 001c 90ED696A 		vldr.32	s12, [r0, #420]
 750 0020 D0ED6B6A 		vldr.32	s13, [r0, #428]
 751 0024 20EE800A 		vmul.f32	s0, s1, s0
 752 0028 F0EE407A 		vmov.f32	s15, s0
 753 002c E6EE077A 		vfma.f32	s15, s12, s14
 754 0030 37EEA60A 		vadd.f32	s0, s15, s13
 755 0034 7047     		bx	lr
 756              	.L102:
 757 0036 FFF7FEBF 		b	_ZNK19RandomProbePointSet9TriangleZEff
 758              	.L101:
 759 003a FFF7FEBF 		b	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 760              	.L108:
 761 003e 00BF     		.align	2
 762              	.L107:
 763 0040 00000000 		.word	0
 764              		.size	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, .-_ZNK19RandomProbePointSet26GetIn
 765              		.section	.text._ZNK19RandomProbePointSet10DebugPrintEj,"ax",%progbits
 766              		.align	1
 767              		.p2align 2,,3
 768              		.global	_ZNK19RandomProbePointSet10DebugPrintEj
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv4-sp-d16
 773              		.type	_ZNK19RandomProbePointSet10DebugPrintEj, %function
 774              	_ZNK19RandomProbePointSet10DebugPrintEj:
 775              		@ args = 0, pretend = 0, frame = 0
 776              		@ frame_needed = 0, uses_anonymous_args = 0
 777 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 778 0002 2DED048B 		vpush.64	{d8, d9}
 779 0006 0446     		mov	r4, r0
 780 0008 83B0     		sub	sp, sp, #12
 781 000a 0D46     		mov	r5, r1
 782 000c 2448     		ldr	r0, .L117
 783 000e 9FED258A 		vldr.32	s16, .L117+4
 784 0012 FFF7FEFF 		bl	debugPrintf
 785 0016 002D     		cmp	r5, #0
 786 0018 3CD0     		beq	.L113
 787 001a 04F58274 		add	r4, r4, #260
 788 001e 224F     		ldr	r7, .L117+8
 789 0020 F0EE488A 		vmov.f32	s17, s16
 790 0024 04EB8506 		add	r6, r4, r5, lsl #2
 791              	.L111:
 792 0028 2068     		ldr	r0, [r4]	@ float
 793 002a FFF7FEFF 		bl	__aeabi_f2d
 794 002e 0246     		mov	r2, r0
 795 0030 0B46     		mov	r3, r1
 796 0032 3846     		mov	r0, r7
 797 0034 FFF7FEFF 		bl	debugPrintf
 798 0038 F4EC017A 		vldmia.32	r4!, {s15}
ARM GAS  /tmp/ccBD3LlP.s 			page 15


 799 003c B442     		cmp	r4, r6
 800 003e 78EEA78A 		vadd.f32	s17, s17, s15
 801 0042 A7EEA78A 		vfma.f32	s16, s15, s15
 802 0046 EFD1     		bne	.L111
 803              	.L110:
 804 0048 07EE905A 		vmov	s15, r5	@ int
 805 004c B8EEE79A 		vcvt.f32.s32	s18, s15
 806 0050 C8EE899A 		vdiv.f32	s19, s17, s18
 807 0054 19EE900A 		vmov	r0, s19
 808 0058 FFF7FEFF 		bl	__aeabi_f2d
 809 005c 88EE090A 		vdiv.f32	s0, s16, s18
 810 0060 0446     		mov	r4, r0
 811 0062 0D46     		mov	r5, r1
 812 0064 A9EEE90A 		vfms.f32	s0, s19, s19
 813 0068 B5EE400A 		vcmp.f32	s0, #0
 814 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 815 0070 B1EEC08A 		vsqrt.f32	s16, s0
 816 0074 11D4     		bmi	.L116
 817              	.L112:
 818 0076 18EE100A 		vmov	r0, s16
 819 007a FFF7FEFF 		bl	__aeabi_f2d
 820 007e 2246     		mov	r2, r4
 821 0080 CDE90001 		strd	r0, [sp]
 822 0084 2B46     		mov	r3, r5
 823 0086 0948     		ldr	r0, .L117+12
 824 0088 FFF7FEFF 		bl	debugPrintf
 825 008c 03B0     		add	sp, sp, #12
 826              		@ sp needed
 827 008e BDEC048B 		vldm	sp!, {d8-d9}
 828 0092 F0BD     		pop	{r4, r5, r6, r7, pc}
 829              	.L113:
 830 0094 F0EE488A 		vmov.f32	s17, s16
 831 0098 D6E7     		b	.L110
 832              	.L116:
 833 009a FFF7FEFF 		bl	sqrtf
 834 009e EAE7     		b	.L112
 835              	.L118:
 836              		.align	2
 837              	.L117:
 838 00a0 00000000 		.word	.LC11
 839 00a4 00000000 		.word	0
 840 00a8 34000000 		.word	.LC8
 841 00ac 14000000 		.word	.LC12
 842              		.size	_ZNK19RandomProbePointSet10DebugPrintEj, .-_ZNK19RandomProbePointSet10DebugPrintEj
 843              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 844              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 845              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 846              	_ZL28cpu_irq_prev_interrupt_state:
 847 0000 00       		.space	1
 848              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 849              		.align	2
 850              		.type	_ZL32cpu_irq_critical_section_counter, %object
 851              		.size	_ZL32cpu_irq_critical_section_counter, 4
 852              	_ZL32cpu_irq_critical_section_counter:
 853 0000 00000000 		.space	4
 854              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 855              		.align	2
ARM GAS  /tmp/ccBD3LlP.s 			page 16


 856              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 857              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 858              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 859 0000 00000000 		.space	4
 860              		.section	.rodata._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef.str1.4,"aMS",%progbi
 861              		.align	2
 862              	.LC0:
 863 0000 50726F62 		.ascii	"Probe points P0 to P%u must be in clockwise order s"
 863      6520706F 
 863      696E7473 
 863      20503020 
 863      746F2050 
 864 0033 74617274 		.ascii	"tarting near X=0 Y=0\000"
 864      696E6720 
 864      6E656172 
 864      20583D30 
 864      20593D30 
 865              	.LC1:
 866 0048 20616E64 		.ascii	" and P4 must be near the centre\000"
 866      20503420 
 866      6D757374 
 866      20626520 
 866      6E656172 
 867              	.LC2:
 868 0068 42656420 		.ascii	"Bed calibration: %d points provided but only 3, 4 a"
 868      63616C69 
 868      62726174 
 868      696F6E3A 
 868      20256420 
 869 009b 6E642035 		.ascii	"nd 5 supported\000"
 869      20737570 
 869      706F7274 
 869      656400
 870 00aa 0000     		.space	2
 871              	.LC3:
 872 00ac 205B252E 		.ascii	" [%.1f, %.1f, %.3f]\000"
 872      31662C20 
 872      252E3166 
 872      2C20252E 
 872      33665D00 
 873              	.LC4:
 874 00c0 42656420 		.ascii	"Bed equation fits points\000"
 874      65717561 
 874      74696F6E 
 874      20666974 
 874      7320706F 
 875              		.section	.rodata._ZNK19RandomProbePointSet10DebugPrintEj.str1.4,"aMS",%progbits,1
 876              		.align	2
 877              	.LC11:
 878 0000 5A207072 		.ascii	"Z probe offsets:\000"
 878      6F626520 
 878      6F666673 
 878      6574733A 
 878      00
 879 0011 000000   		.space	3
 880              	.LC12:
 881 0014 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\012\000"
ARM GAS  /tmp/ccBD3LlP.s 			page 17


 881      616E2025 
 881      2E33662C 
 881      20646576 
 881      69617469 
 882              		.section	.rodata._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef.str1.4,"aMS",%progbit
 883              		.align	2
 884              	.LC5:
 885 0000 47333220 		.ascii	"G32 bed probe heights:\000"
 885      62656420 
 885      70726F62 
 885      65206865 
 885      69676874 
 886 0017 00       		.space	1
 887              	.LC6:
 888 0018 206E6F74 		.ascii	" not set\000"
 888      20736574 
 888      00
 889 0021 000000   		.space	3
 890              	.LC7:
 891 0024 2070726F 		.ascii	" probing failed\000"
 891      62696E67 
 891      20666169 
 891      6C656400 
 892              	.LC8:
 893 0034 20252E33 		.ascii	" %.3f\000"
 893      6600
 894 003a 0000     		.space	2
 895              	.LC9:
 896 003c 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\000"
 896      616E2025 
 896      2E33662C 
 896      20646576 
 896      69617469 
 897              		.section	.rodata._ZNK19RandomProbePointSet9TriangleZEff.str1.4,"aMS",%progbits,1
 898              		.align	2
 899              	.LC10:
 900 0000 54726961 		.ascii	"Triangle interpolation: point outside all triangles"
 900      6E676C65 
 900      20696E74 
 900      6572706F 
 900      6C617469 
 901 0033 210A00   		.ascii	"!\012\000"
 902              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
