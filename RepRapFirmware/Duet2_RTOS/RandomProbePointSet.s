ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN19RandomProbePointSetUlP11ObjectModelE_4_FUNES1_,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN19RandomProbePointSetUlP11ObjectModelE_4_FUNES1_, %function
  23              	_ZN19RandomProbePointSetUlP11ObjectModelE_4_FUNES1_:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0430     		adds	r0, r0, #4
  28 0002 7047     		bx	lr
  29              		.size	_ZN19RandomProbePointSetUlP11ObjectModelE_4_FUNES1_, .-_ZN19RandomProbePointSetUlP11ObjectMo
  30              		.section	.text._ZNK19RandomProbePointSet19GetObjectModelTableERj,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZNK19RandomProbePointSet19GetObjectModelTableERj
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK19RandomProbePointSet19GetObjectModelTableERj, %function
  39              	_ZNK19RandomProbePointSet19GetObjectModelTableERj:
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
  51              		.size	_ZNK19RandomProbePointSet19GetObjectModelTableERj, .-_ZNK19RandomProbePointSet19GetObjectMod
  52              		.section	.text._ZN19RandomProbePointSetC2Ev,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN19RandomProbePointSetC2Ev
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN19RandomProbePointSetC2Ev, %function
  61              	_ZN19RandomProbePointSetC2Ev:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 38B5     		push	{r3, r4, r5, lr}
  65 0002 0546     		mov	r5, r0
  66 0004 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
  67 0008 094B     		ldr	r3, .L10
  68 000a 2B60     		str	r3, [r5]
  69 000c 0021     		movs	r1, #0
  70 000e 0024     		movs	r4, #0
  71 0010 6960     		str	r1, [r5, #4]
  72 0012 05F28713 		addw	r3, r5, #391
  73 0016 05F58472 		add	r2, r5, #264
  74 001a 05F2A710 		addw	r0, r5, #423
  75              	.L7:
  76 001e 03F8011F 		strb	r1, [r3, #1]!
  77 0022 8342     		cmp	r3, r0
  78 0024 42F8044B 		str	r4, [r2], #4	@ float
  79 0028 F9D1     		bne	.L7
  80 002a 2846     		mov	r0, r5
  81 002c 38BD     		pop	{r3, r4, r5, pc}
  82              	.L11:
  83 002e 00BF     		.align	2
  84              	.L10:
  85 0030 08000000 		.word	.LANCHOR1+8
  86              		.size	_ZN19RandomProbePointSetC2Ev, .-_ZN19RandomProbePointSetC2Ev
  87              		.global	_ZN19RandomProbePointSetC1Ev
  88              		.thumb_set _ZN19RandomProbePointSetC1Ev,_ZN19RandomProbePointSetC2Ev
  89              		.section	.text._ZN19RandomProbePointSet18SetXYBedProbePointEjff,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	_ZN19RandomProbePointSet18SetXYBedProbePointEjff
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, %function
  98              	_ZN19RandomProbePointSet18SetXYBedProbePointEjff:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 00EB8103 		add	r3, r0, r1, lsl #2
 103 0004 0844     		add	r0, r0, r1
 104 0006 83ED020A 		vstr.32	s0, [r3, #8]
 105 000a C3ED220A 		vstr.32	s1, [r3, #136]
 106 000e 90F88831 		ldrb	r3, [r0, #392]	@ zero_extendqisi2
 107 0012 43F00103 		orr	r3, r3, #1
 108 0016 80F88831 		strb	r3, [r0, #392]
 109 001a 7047     		bx	lr
 110              		.size	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, .-_ZN19RandomProbePointSet18SetXYBedProbeP
 111              		.section	.text._ZN19RandomProbePointSet17SetZBedProbePointEjfbb,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, %function
 120              	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123              		@ link register save eliminated.
 124 0000 10B4     		push	{r4}
 125 0002 00EB8104 		add	r4, r0, r1, lsl #2
 126 0006 0144     		add	r1, r1, r0
 127 0008 84ED420A 		vstr.32	s0, [r4, #264]
 128 000c 91F88841 		ldrb	r4, [r1, #392]	@ zero_extendqisi2
 129 0010 44F00200 		orr	r0, r4, #2
 130 0014 81F88801 		strb	r0, [r1, #392]
 131 0018 5AB1     		cbz	r2, .L14
 132 001a 44F00604 		orr	r4, r4, #6
 133 001e 81F88841 		strb	r4, [r1, #392]
 134 0022 73B9     		cbnz	r3, .L19
 135              	.L16:
 136 0024 24F00804 		bic	r4, r4, #8
 137 0028 81F88841 		strb	r4, [r1, #392]
 138 002c 5DF8044B 		ldr	r4, [sp], #4
 139 0030 7047     		bx	lr
 140              	.L14:
 141 0032 24F00404 		bic	r4, r4, #4
 142 0036 44F00204 		orr	r4, r4, #2
 143 003a 81F88841 		strb	r4, [r1, #392]
 144 003e 002B     		cmp	r3, #0
 145 0040 F0D0     		beq	.L16
 146              	.L19:
 147 0042 44F00804 		orr	r4, r4, #8
 148 0046 81F88841 		strb	r4, [r1, #392]
 149 004a 5DF8044B 		ldr	r4, [sp], #4
 150 004e 7047     		bx	lr
 151              		.size	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, .-_ZN19RandomProbePointSet17SetZBedProbePo
 152              		.section	.text._ZNK19RandomProbePointSet19NumberOfProbePointsEv,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv4-sp-d16
 160              		.type	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, %function
 161              	_ZNK19RandomProbePointSet19NumberOfProbePointsEv:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 00F28712 		addw	r2, r0, #391
 166 0004 0020     		movs	r0, #0
 167 0006 02E0     		b	.L22
 168              	.L24:
 169 0008 0130     		adds	r0, r0, #1
 170 000a 2028     		cmp	r0, #32
 171 000c 05D0     		beq	.L20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 4


 172              	.L22:
 173 000e 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 174 0012 03F00303 		and	r3, r3, #3
 175 0016 032B     		cmp	r3, #3
 176 0018 F6D0     		beq	.L24
 177              	.L20:
 178 001a 7047     		bx	lr
 179              		.size	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, .-_ZNK19RandomProbePointSet19NumberOfProbe
 180              		.section	.text._ZN19RandomProbePointSet17ClearProbeHeightsEv,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	_ZN19RandomProbePointSet17ClearProbeHeightsEv, %function
 189              	_ZN19RandomProbePointSet17ClearProbeHeightsEv:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 00F28713 		addw	r3, r0, #391
 194 0004 00F2A710 		addw	r0, r0, #423
 195              	.L26:
 196 0008 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 197 000c 22F00202 		bic	r2, r2, #2
 198 0010 8342     		cmp	r3, r0
 199 0012 1A70     		strb	r2, [r3]
 200 0014 F8D1     		bne	.L26
 201 0016 7047     		bx	lr
 202              		.size	_ZN19RandomProbePointSet17ClearProbeHeightsEv, .-_ZN19RandomProbePointSet17ClearProbeHeights
 203              		.section	.text._ZNK19RandomProbePointSet15GoodProbePointsEj,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	_ZNK19RandomProbePointSet15GoodProbePointsEj
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	_ZNK19RandomProbePointSet15GoodProbePointsEj, %function
 212              	_ZNK19RandomProbePointSet15GoodProbePointsEj:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 99B1     		cbz	r1, .L32
 217 0002 90F88831 		ldrb	r3, [r0, #392]	@ zero_extendqisi2
 218 0006 03F00B03 		and	r3, r3, #11
 219 000a 032B     		cmp	r3, #3
 220 000c 0FD1     		bne	.L34
 221 000e 00F28713 		addw	r3, r0, #391
 222 0012 1944     		add	r1, r1, r3
 223 0014 00F5C470 		add	r0, r0, #392
 224 0018 05E0     		b	.L30
 225              	.L31:
 226 001a 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 227 001e 03F00B03 		and	r3, r3, #11
 228 0022 032B     		cmp	r3, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 5


 229 0024 03D1     		bne	.L34
 230              	.L30:
 231 0026 8842     		cmp	r0, r1
 232 0028 F7D1     		bne	.L31
 233              	.L32:
 234 002a 0120     		movs	r0, #1
 235 002c 7047     		bx	lr
 236              	.L34:
 237 002e 0020     		movs	r0, #0
 238 0030 7047     		bx	lr
 239              		.size	_ZNK19RandomProbePointSet15GoodProbePointsEj, .-_ZNK19RandomProbePointSet15GoodProbePointsEj
 240 0032 00BF     		.section	.text._ZNK19RandomProbePointSet22GoodProbePointOrderingEj,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu fpv4-sp-d16
 248              		.type	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, %function
 249              	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              		@ link register save eliminated.
 253 0000 0129     		cmp	r1, #1
 254 0002 5AD9     		bls	.L44
 255 0004 90ED237A 		vldr.32	s14, [r0, #140]
 256 0008 D0ED227A 		vldr.32	s15, [r0, #136]
 257 000c B4EEE77A 		vcmpe.f32	s14, s15
 258 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 259 0014 4FD9     		bls	.L51
 260 0016 0229     		cmp	r1, #2
 261 0018 4FD0     		beq	.L44
 262 001a 90ED046A 		vldr.32	s12, [r0, #16]
 263 001e D0ED036A 		vldr.32	s13, [r0, #12]
 264 0022 B4EEE66A 		vcmpe.f32	s12, s13
 265 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 266 002a 44D9     		bls	.L51
 267 002c 0329     		cmp	r1, #3
 268 002e 44D0     		beq	.L44
 269 0030 D0ED254A 		vldr.32	s9, [r0, #148]
 270 0034 90ED245A 		vldr.32	s10, [r0, #144]
 271 0038 F4EEC54A 		vcmpe.f32	s9, s10
 272 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 273 0040 39DA     		bge	.L51
 274 0042 D0ED025A 		vldr.32	s11, [r0, #8]
 275 0046 D0ED053A 		vldr.32	s7, [r0, #20]
 276 004a F4EEE35A 		vcmpe.f32	s11, s7
 277 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 278 0052 30DA     		bge	.L51
 279 0054 0429     		cmp	r1, #4
 280 0056 30D0     		beq	.L44
 281 0058 90ED064A 		vldr.32	s8, [r0, #24]
 282 005c F4EEC45A 		vcmpe.f32	s11, s8
 283 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 284 0064 27DA     		bge	.L51
 285 0066 F4EEC46A 		vcmpe.f32	s13, s8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 6


 286 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 287 006e 22DA     		bge	.L51
 288 0070 B4EEC46A 		vcmpe.f32	s12, s8
 289 0074 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 290 0078 1DD9     		bls	.L51
 291 007a F4EEC43A 		vcmpe.f32	s7, s8
 292 007e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 293 0082 18D9     		bls	.L51
 294 0084 D0ED266A 		vldr.32	s13, [r0, #152]
 295 0088 F4EEE67A 		vcmpe.f32	s15, s13
 296 008c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 297 0090 11DA     		bge	.L51
 298 0092 B4EEE67A 		vcmpe.f32	s14, s13
 299 0096 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 300 009a 0CD9     		bls	.L51
 301 009c B4EEE65A 		vcmpe.f32	s10, s13
 302 00a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 303 00a4 07D9     		bls	.L51
 304 00a6 F4EEE64A 		vcmpe.f32	s9, s13
 305 00aa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 306 00ae B4BF     		ite	lt
 307 00b0 0120     		movlt	r0, #1
 308 00b2 0020     		movge	r0, #0
 309 00b4 7047     		bx	lr
 310              	.L51:
 311 00b6 0020     		movs	r0, #0
 312 00b8 7047     		bx	lr
 313              	.L44:
 314 00ba 0120     		movs	r0, #1
 315 00bc 7047     		bx	lr
 316              		.size	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, .-_ZNK19RandomProbePointSet22GoodProbeP
 317              		.global	__aeabi_f2d
 318 00be 00BF     		.section	.text._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef,"ax",%progbits
 319              		.align	1
 320              		.p2align 2,,3
 321              		.global	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu fpv4-sp-d16
 326              		.type	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, %function
 327              	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef:
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 331 0004 84B0     		sub	sp, sp, #16
 332 0006 1746     		mov	r7, r2
 333 0008 0346     		mov	r3, r0
 334 000a 0E46     		mov	r6, r1
 335 000c FFF7FEFF 		bl	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 336 0010 58B9     		cbnz	r0, .L53
 337 0012 0329     		cmp	r1, #3
 338 0014 1AD8     		bhi	.L70
 339 0016 4A1E     		subs	r2, r1, #1
 340 0018 3846     		mov	r0, r7
 341 001a 7549     		ldr	r1, .L72
 342 001c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 7


 343              	.L69:
 344 0020 0124     		movs	r4, #1
 345 0022 2046     		mov	r0, r4
 346 0024 04B0     		add	sp, sp, #16
 347              		@ sp needed
 348 0026 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 349              	.L53:
 350 002a 0429     		cmp	r1, #4
 351 002c 1ED0     		beq	.L57
 352 002e 0529     		cmp	r1, #5
 353 0030 00F0A580 		beq	.L58
 354 0034 0329     		cmp	r1, #3
 355 0036 5FD0     		beq	.L71
 356 0038 0446     		mov	r4, r0
 357 003a 0A46     		mov	r2, r1
 358 003c 3846     		mov	r0, r7
 359 003e 6D49     		ldr	r1, .L72+4
 360 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 361 0044 2046     		mov	r0, r4
 362 0046 04B0     		add	sp, sp, #16
 363              		@ sp needed
 364 0048 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 365              	.L70:
 366 004c 0322     		movs	r2, #3
 367 004e 6849     		ldr	r1, .L72
 368 0050 3846     		mov	r0, r7
 369 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 370 0056 042E     		cmp	r6, #4
 371 0058 E2D0     		beq	.L69
 372 005a 3846     		mov	r0, r7
 373 005c 6649     		ldr	r1, .L72+8
 374 005e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 375 0062 0124     		movs	r4, #1
 376 0064 2046     		mov	r0, r4
 377 0066 04B0     		add	sp, sp, #16
 378              		@ sp needed
 379 0068 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 380              	.L57:
 381 006c 93ED026A 		vldr.32	s12, [r3, #8]
 382 0070 D3ED226A 		vldr.32	s13, [r3, #136]
 383 0074 93ED057A 		vldr.32	s14, [r3, #20]
 384 0078 D3ED237A 		vldr.32	s15, [r3, #140]
 385 007c 37EE467A 		vsub.f32	s14, s14, s12
 386 0080 77EEE67A 		vsub.f32	s15, s15, s13
 387 0084 F7EE006A 		vmov.f32	s13, #1.0e+0
 388 0088 86EE876A 		vdiv.f32	s12, s13, s14
 389 008c 03F10804 		add	r4, r3, #8
 390 0090 86EEA77A 		vdiv.f32	s14, s13, s15
 391 0094 83ED6D6A 		vstr.32	s12, [r3, #436]
 392 0098 83ED6E7A 		vstr.32	s14, [r3, #440]
 393              	.L60:
 394 009c 574A     		ldr	r2, .L72+12
 395 009e 5E60     		str	r6, [r3, #4]
 396 00a0 5068     		ldr	r0, [r2, #4]	@ unaligned
 397 00a2 574A     		ldr	r2, .L72+16
 398 00a4 DFF860A1 		ldr	r10, .L72+24
 399 00a8 40F2B521 		movw	r1, #693
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 8


 400 00ac FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 401 00b0 5449     		ldr	r1, .L72+20
 402 00b2 3846     		mov	r0, r7
 403 00b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 404 00b8 0025     		movs	r5, #0
 405              	.L62:
 406 00ba 54F8040B 		ldr	r0, [r4], #4	@ float
 407 00be FFF7FEFF 		bl	__aeabi_f2d
 408 00c2 8046     		mov	r8, r0
 409 00c4 D4F8FC00 		ldr	r0, [r4, #252]	@ float
 410 00c8 8946     		mov	r9, r1
 411 00ca FFF7FEFF 		bl	__aeabi_f2d
 412 00ce CDE90201 		strd	r0, [sp, #8]
 413 00d2 E06F     		ldr	r0, [r4, #124]	@ float
 414 00d4 FFF7FEFF 		bl	__aeabi_f2d
 415 00d8 0135     		adds	r5, r5, #1
 416 00da CDE90001 		strd	r0, [sp]
 417 00de 4246     		mov	r2, r8
 418 00e0 4B46     		mov	r3, r9
 419 00e2 5146     		mov	r1, r10
 420 00e4 3846     		mov	r0, r7
 421 00e6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 422 00ea AE42     		cmp	r6, r5
 423 00ec E5D8     		bhi	.L62
 424 00ee 0024     		movs	r4, #0
 425 00f0 2046     		mov	r0, r4
 426 00f2 04B0     		add	sp, sp, #16
 427              		@ sp needed
 428 00f4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 429              	.L71:
 430 00f8 93ED026A 		vldr.32	s12, [r3, #8]
 431 00fc 93ED033A 		vldr.32	s6, [r3, #12]
 432 0100 D3ED427A 		vldr.32	s15, [r3, #264]
 433 0104 D3ED444A 		vldr.32	s9, [r3, #272]
 434 0108 93ED434A 		vldr.32	s8, [r3, #268]
 435 010c D3ED225A 		vldr.32	s11, [r3, #136]
 436 0110 93ED047A 		vldr.32	s14, [r3, #16]
 437 0114 93ED245A 		vldr.32	s10, [r3, #144]
 438 0118 D3ED236A 		vldr.32	s13, [r3, #140]
 439 011c 74EEE74A 		vsub.f32	s9, s9, s15
 440 0120 73EE463A 		vsub.f32	s7, s6, s12
 441 0124 37EE467A 		vsub.f32	s14, s14, s12
 442 0128 35EE655A 		vsub.f32	s10, s10, s11
 443 012c 74EE677A 		vsub.f32	s15, s8, s15
 444 0130 24EEE36A 		vnmul.f32	s12, s9, s7
 445 0134 76EEE55A 		vsub.f32	s11, s13, s11
 446 0138 A7EE876A 		vfma.f32	s12, s15, s14
 447 013c 03F10804 		add	r4, r3, #8
 448 0140 65EE677A 		vnmul.f32	s15, s10, s15
 449 0144 66EE866A 		vmul.f32	s13, s13, s12
 450 0148 E5EEA47A 		vfma.f32	s15, s11, s9
 451 014c 27EE657A 		vnmul.f32	s14, s14, s11
 452 0150 E3EE276A 		vfma.f32	s13, s6, s15
 453 0154 A3EE857A 		vfma.f32	s14, s7, s10
 454 0158 F1EE677A 		vneg.f32	s15, s15
 455 015c E4EE076A 		vfma.f32	s13, s8, s14
 456 0160 B1EE466A 		vneg.f32	s12, s12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 9


 457 0164 C6EE875A 		vdiv.f32	s11, s13, s14
 458 0168 C7EE876A 		vdiv.f32	s13, s15, s14
 459 016c C6EE077A 		vdiv.f32	s15, s12, s14
 460 0170 C3ED6C5A 		vstr.32	s11, [r3, #432]
 461 0174 C3ED6A6A 		vstr.32	s13, [r3, #424]
 462 0178 C3ED6B7A 		vstr.32	s15, [r3, #428]
 463 017c 8EE7     		b	.L60
 464              	.L58:
 465 017e 03F10804 		add	r4, r3, #8
 466 0182 D3ED064A 		vldr.32	s9, [r3, #24]
 467 0186 93ED265A 		vldr.32	s10, [r3, #152]
 468 018a D3ED465A 		vldr.32	s11, [r3, #280]
 469 018e 2246     		mov	r2, r4
 470 0190 03F11801 		add	r1, r3, #24
 471 0194 B0EE006A 		vmov.f32	s12, #2.0e+0
 472              	.L61:
 473 0198 F2EC016A 		vldmia.32	r2!, {s13}
 474 019c 76EEE46A 		vsub.f32	s13, s13, s9
 475 01a0 B0EE644A 		vmov.f32	s8, s9
 476 01a4 A6EE864A 		vfma.f32	s8, s13, s12
 477 01a8 8A42     		cmp	r2, r1
 478 01aa 92ED1F7A 		vldr.32	s14, [r2, #124]
 479 01ae D2ED3F7A 		vldr.32	s15, [r2, #252]
 480 01b2 37EE457A 		vsub.f32	s14, s14, s10
 481 01b6 F0EE446A 		vmov.f32	s13, s8
 482 01ba B0EE454A 		vmov.f32	s8, s10
 483 01be A7EE064A 		vfma.f32	s8, s14, s12
 484 01c2 77EEE57A 		vsub.f32	s15, s15, s11
 485 01c6 B0EE447A 		vmov.f32	s14, s8
 486 01ca B0EE654A 		vmov.f32	s8, s11
 487 01ce A7EE864A 		vfma.f32	s8, s15, s12
 488 01d2 C2ED6C6A 		vstr.32	s13, [r2, #432]
 489 01d6 82ED717A 		vstr.32	s14, [r2, #452]
 490 01da 82ED764A 		vstr.32	s8, [r2, #472]
 491 01de DBD1     		bne	.L61
 492 01e0 C3ED734A 		vstr.32	s9, [r3, #460]
 493 01e4 83ED785A 		vstr.32	s10, [r3, #480]
 494 01e8 C3ED7D5A 		vstr.32	s11, [r3, #500]
 495 01ec 56E7     		b	.L60
 496              	.L73:
 497 01ee 00BF     		.align	2
 498              	.L72:
 499 01f0 00000000 		.word	.LC0
 500 01f4 74000000 		.word	.LC2
 501 01f8 50000000 		.word	.LC1
 502 01fc 00000000 		.word	reprap
 503 0200 CC000000 		.word	.LC4
 504 0204 58010000 		.word	.LC5
 505 0208 B8000000 		.word	.LC3
 506              		.size	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, .-_ZN19RandomProbePointSet20Se
 507              		.section	.text._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, %function
 516              	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 520 0004 2DED048B 		vpush.64	{d8, d9}
 521 0008 0446     		mov	r4, r0
 522 000a 83B0     		sub	sp, sp, #12
 523 000c 8846     		mov	r8, r1
 524 000e 1046     		mov	r0, r2
 525 0010 3649     		ldr	r1, .L86
 526 0012 DFED378A 		vldr.32	s17, .L86+4
 527 0016 1646     		mov	r6, r2
 528 0018 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 529 001c B8F1000F 		cmp	r8, #0
 530 0020 5DD0     		beq	.L81
 531 0022 04EB0807 		add	r7, r4, r8
 532 0026 04F28715 		addw	r5, r4, #391
 533 002a DFF8CCB0 		ldr	fp, .L86+12
 534 002e DFF8CCA0 		ldr	r10, .L86+16
 535 0032 DFF8CC90 		ldr	r9, .L86+20
 536 0036 B0EE689A 		vmov.f32	s18, s17
 537 003a 07F28717 		addw	r7, r7, #391
 538 003e 04F58474 		add	r4, r4, #264
 539 0042 16E0     		b	.L79
 540              	.L76:
 541 0044 13F0080F 		tst	r3, #8
 542 0048 5146     		mov	r1, r10
 543 004a 1AD1     		bne	.L84
 544 004c 2068     		ldr	r0, [r4]	@ float
 545 004e FFF7FEFF 		bl	__aeabi_f2d
 546 0052 0246     		mov	r2, r0
 547 0054 0B46     		mov	r3, r1
 548 0056 3046     		mov	r0, r6
 549 0058 5946     		mov	r1, fp
 550 005a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 551 005e D4ED007A 		vldr.32	s15, [r4]
 552 0062 BD42     		cmp	r5, r7
 553 0064 E7EEA78A 		vfma.f32	s17, s15, s15
 554 0068 04F10404 		add	r4, r4, #4
 555 006c 39EE279A 		vadd.f32	s18, s18, s15
 556 0070 0DD0     		beq	.L75
 557              	.L79:
 558 0072 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 559 0076 03F00302 		and	r2, r3, #3
 560 007a 032A     		cmp	r2, #3
 561 007c 4946     		mov	r1, r9
 562 007e 3046     		mov	r0, r6
 563 0080 E0D0     		beq	.L76
 564              	.L84:
 565 0082 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 566 0086 BD42     		cmp	r5, r7
 567 0088 04F10404 		add	r4, r4, #4
 568 008c F1D1     		bne	.L79
 569              	.L75:
 570 008e 07EE908A 		vmov	s15, r8	@ int
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 11


 571 0092 B8EEE78A 		vcvt.f32.s32	s16, s15
 572 0096 C9EE089A 		vdiv.f32	s19, s18, s16
 573 009a 19EE900A 		vmov	r0, s19
 574 009e FFF7FEFF 		bl	__aeabi_f2d
 575 00a2 88EE880A 		vdiv.f32	s0, s17, s16
 576 00a6 0446     		mov	r4, r0
 577 00a8 0D46     		mov	r5, r1
 578 00aa A9EEE90A 		vfms.f32	s0, s19, s19
 579 00ae B5EE400A 		vcmp.f32	s0, #0
 580 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 581 00b6 B1EEC08A 		vsqrt.f32	s16, s0
 582 00ba 13D4     		bmi	.L85
 583              	.L80:
 584 00bc 18EE100A 		vmov	r0, s16
 585 00c0 FFF7FEFF 		bl	__aeabi_f2d
 586 00c4 2246     		mov	r2, r4
 587 00c6 CDE90001 		strd	r0, [sp]
 588 00ca 2B46     		mov	r3, r5
 589 00cc 3046     		mov	r0, r6
 590 00ce 0949     		ldr	r1, .L86+8
 591 00d0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 592 00d4 03B0     		add	sp, sp, #12
 593              		@ sp needed
 594 00d6 BDEC048B 		vldm	sp!, {d8-d9}
 595 00da BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 596              	.L81:
 597 00de B0EE689A 		vmov.f32	s18, s17
 598 00e2 D4E7     		b	.L75
 599              	.L85:
 600 00e4 FFF7FEFF 		bl	sqrtf
 601 00e8 E8E7     		b	.L80
 602              	.L87:
 603 00ea 00BF     		.align	2
 604              	.L86:
 605 00ec 00000000 		.word	.LC6
 606 00f0 00000000 		.word	0
 607 00f4 3C000000 		.word	.LC10
 608 00f8 34000000 		.word	.LC9
 609 00fc 24000000 		.word	.LC8
 610 0100 18000000 		.word	.LC7
 611              		.size	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, .-_ZNK19RandomProbePointSet18Re
 612              		.section	.text._ZNK19RandomProbePointSet22SecondDegreeTransformZEff,"ax",%progbits
 613              		.align	1
 614              		.p2align 2,,3
 615              		.global	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 616              		.syntax unified
 617              		.thumb
 618              		.thumb_func
 619              		.fpu fpv4-sp-d16
 620              		.type	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, %function
 621              	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff:
 622              		@ args = 0, pretend = 0, frame = 0
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624              		@ link register save eliminated.
 625 0000 D0ED226A 		vldr.32	s13, [r0, #136]
 626 0004 90ED027A 		vldr.32	s14, [r0, #8]
 627 0008 90ED6E4A 		vldr.32	s8, [r0, #440]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 12


 628 000c D0ED6D7A 		vldr.32	s15, [r0, #436]
 629 0010 D0ED454A 		vldr.32	s9, [r0, #276]
 630 0014 90ED425A 		vldr.32	s10, [r0, #264]
 631 0018 D0ED435A 		vldr.32	s11, [r0, #268]
 632 001c 90ED446A 		vldr.32	s12, [r0, #272]
 633 0020 70EEE60A 		vsub.f32	s1, s1, s13
 634 0024 30EE470A 		vsub.f32	s0, s0, s14
 635 0028 60EE840A 		vmul.f32	s1, s1, s8
 636 002c B7EE007A 		vmov.f32	s14, #1.0e+0
 637 0030 77EE606A 		vsub.f32	s13, s14, s1
 638 0034 60EE277A 		vmul.f32	s15, s0, s15
 639 0038 37EE677A 		vsub.f32	s14, s14, s15
 640 003c 26EEA70A 		vmul.f32	s0, s13, s15
 641 0040 67EE266A 		vmul.f32	s13, s14, s13
 642 0044 20EE240A 		vmul.f32	s0, s0, s9
 643 0048 27EE207A 		vmul.f32	s14, s14, s1
 644 004c A6EE850A 		vfma.f32	s0, s13, s10
 645 0050 67EEA07A 		vmul.f32	s15, s15, s1
 646 0054 A7EE250A 		vfma.f32	s0, s14, s11
 647 0058 A7EE860A 		vfma.f32	s0, s15, s12
 648 005c 7047     		bx	lr
 649              		.size	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, .-_ZNK19RandomProbePointSet22SecondDeg
 650 005e 00BF     		.section	.text._ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_,"ax",%progbits
 651              		.align	1
 652              		.p2align 2,,3
 653              		.global	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 654              		.syntax unified
 655              		.thumb
 656              		.thumb_func
 657              		.fpu fpv4-sp-d16
 658              		.type	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, %function
 659              	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_:
 660              		@ args = 12, pretend = 0, frame = 0
 661              		@ frame_needed = 0, uses_anonymous_args = 0
 662              		@ link register save eliminated.
 663 0000 00EB8202 		add	r2, r0, r2, lsl #2
 664 0004 00EB8303 		add	r3, r0, r3, lsl #2
 665 0008 00EB8101 		add	r1, r0, r1, lsl #2
 666 000c D3ED747A 		vldr.32	s15, [r3, #464]
 667 0010 93ED6F6A 		vldr.32	s12, [r3, #444]
 668 0014 D1ED745A 		vldr.32	s11, [r1, #464]
 669 0018 92ED6F7A 		vldr.32	s14, [r2, #444]
 670 001c 92ED745A 		vldr.32	s10, [r2, #464]
 671 0020 D1ED6F4A 		vldr.32	s9, [r1, #444]
 672 0024 029A     		ldr	r2, [sp, #8]
 673 0026 75EEE75A 		vsub.f32	s11, s11, s15
 674 002a 36EE477A 		vsub.f32	s14, s12, s14
 675 002e 35EE675A 		vsub.f32	s10, s10, s15
 676 0032 27EE254A 		vmul.f32	s8, s14, s11
 677 0036 74EEC64A 		vsub.f32	s9, s9, s12
 678 003a F7EE006A 		vmov.f32	s13, #1.0e+0
 679 003e A5EE244A 		vfma.f32	s8, s10, s9
 680 0042 DDE90031 		ldrd	r3, r1, [sp]
 681 0046 C6EE843A 		vdiv.f32	s7, s13, s8
 682 004a 70EEE77A 		vsub.f32	s15, s1, s15
 683 004e 30EE460A 		vsub.f32	s0, s0, s12
 684 0052 27EE277A 		vmul.f32	s14, s14, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 13


 685 0056 67EEA47A 		vmul.f32	s15, s15, s9
 686 005a A5EE007A 		vfma.f32	s14, s10, s0
 687 005e E5EEC07A 		vfms.f32	s15, s11, s0
 688 0062 27EE237A 		vmul.f32	s14, s14, s7
 689 0066 67EEA37A 		vmul.f32	s15, s15, s7
 690 006a 83ED007A 		vstr.32	s14, [r3]
 691 006e C1ED007A 		vstr.32	s15, [r1]
 692 0072 93ED007A 		vldr.32	s14, [r3]
 693 0076 76EEC76A 		vsub.f32	s13, s13, s14
 694 007a 76EEE77A 		vsub.f32	s15, s13, s15
 695 007e C2ED007A 		vstr.32	s15, [r2]
 696 0082 7047     		bx	lr
 697              		.size	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, .-_ZNK19RandomProbePointSet
 698              		.section	.text._ZNK19RandomProbePointSet9TriangleZEff,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	_ZNK19RandomProbePointSet9TriangleZEff
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv4-sp-d16
 706              		.type	_ZNK19RandomProbePointSet9TriangleZEff, %function
 707              	_ZNK19RandomProbePointSet9TriangleZEff:
 708              		@ args = 0, pretend = 0, frame = 16
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 711 0004 9FED2A3A 		vldr.32	s6, .L103
 712 0008 88B0     		sub	sp, sp, #32
 713 000a B0EE402A 		vmov.f32	s4, s0
 714 000e F0EE602A 		vmov.f32	s5, s1
 715 0012 0746     		mov	r7, r0
 716 0014 0024     		movs	r4, #0
 717 0016 0DF11C0A 		add	r10, sp, #28
 718 001a 0DF11809 		add	r9, sp, #24
 719 001e 0DF11408 		add	r8, sp, #20
 720              	.L96:
 721 0022 651C     		adds	r5, r4, #1
 722 0024 05F00306 		and	r6, r5, #3
 723 0028 CDE9019A 		strd	r9, r10, [sp, #4]
 724 002c CDF80080 		str	r8, [sp]
 725 0030 3246     		mov	r2, r6
 726 0032 F0EE620A 		vmov.f32	s1, s5
 727 0036 B0EE420A 		vmov.f32	s0, s4
 728 003a 0423     		movs	r3, #4
 729 003c 2146     		mov	r1, r4
 730 003e 3846     		mov	r0, r7
 731 0040 FFF7FEFF 		bl	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 732 0044 DDED057A 		vldr.32	s15, [sp, #20]
 733 0048 F4EEC37A 		vcmpe.f32	s15, s6
 734 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 735 0050 0DDD     		ble	.L91
 736 0052 9DED067A 		vldr.32	s14, [sp, #24]
 737 0056 B4EEC37A 		vcmpe.f32	s14, s6
 738 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 739 005e 06DD     		ble	.L91
 740 0060 DDED076A 		vldr.32	s13, [sp, #28]
 741 0064 F4EEC36A 		vcmpe.f32	s13, s6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 14


 742 0068 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 743 006c 0EDC     		bgt	.L102
 744              	.L91:
 745 006e 042D     		cmp	r5, #4
 746 0070 2C46     		mov	r4, r5
 747 0072 D6D1     		bne	.L96
 748 0074 0F4B     		ldr	r3, .L103+4
 749 0076 104A     		ldr	r2, .L103+8
 750 0078 5868     		ldr	r0, [r3, #4]
 751 007a 40F2B521 		movw	r1, #693
 752 007e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 753 0082 9FED0E0A 		vldr.32	s0, .L103+12
 754              	.L90:
 755 0086 08B0     		add	sp, sp, #32
 756              		@ sp needed
 757 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 758              	.L102:
 759 008c 07EB8606 		add	r6, r7, r6, lsl #2
 760 0090 96ED790A 		vldr.32	s0, [r6, #484]
 761 0094 97ED7D6A 		vldr.32	s12, [r7, #500]
 762 0098 07EB8404 		add	r4, r7, r4, lsl #2
 763 009c 27EE000A 		vmul.f32	s0, s14, s0
 764 00a0 94ED797A 		vldr.32	s14, [r4, #484]
 765 00a4 A7EE870A 		vfma.f32	s0, s15, s14
 766 00a8 A6EE860A 		vfma.f32	s0, s13, s12
 767 00ac EBE7     		b	.L90
 768              	.L104:
 769 00ae 00BF     		.align	2
 770              	.L103:
 771 00b0 6F1283BA 		.word	-1165815185
 772 00b4 00000000 		.word	reprap
 773 00b8 00000000 		.word	.LC11
 774 00bc 00000000 		.word	0
 775              		.size	_ZNK19RandomProbePointSet9TriangleZEff, .-_ZNK19RandomProbePointSet9TriangleZEff
 776              		.section	.text._ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff,"ax",%progbits
 777              		.align	1
 778              		.p2align 2,,3
 779              		.global	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff
 780              		.syntax unified
 781              		.thumb
 782              		.thumb_func
 783              		.fpu fpv4-sp-d16
 784              		.type	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, %function
 785              	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff:
 786              		@ args = 0, pretend = 0, frame = 0
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 788              		@ link register save eliminated.
 789 0000 4368     		ldr	r3, [r0, #4]
 790 0002 042B     		cmp	r3, #4
 791 0004 B0EE407A 		vmov.f32	s14, s0
 792 0008 17D0     		beq	.L107
 793 000a 052B     		cmp	r3, #5
 794 000c 13D0     		beq	.L108
 795 000e 032B     		cmp	r3, #3
 796 0010 02D0     		beq	.L112
 797 0012 9FED0B0A 		vldr.32	s0, .L113
 798 0016 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 15


 799              	.L112:
 800 0018 90ED6B0A 		vldr.32	s0, [r0, #428]
 801 001c 90ED6A6A 		vldr.32	s12, [r0, #424]
 802 0020 D0ED6C6A 		vldr.32	s13, [r0, #432]
 803 0024 20EE800A 		vmul.f32	s0, s1, s0
 804 0028 F0EE407A 		vmov.f32	s15, s0
 805 002c E6EE077A 		vfma.f32	s15, s12, s14
 806 0030 37EEA60A 		vadd.f32	s0, s15, s13
 807 0034 7047     		bx	lr
 808              	.L108:
 809 0036 FFF7FEBF 		b	_ZNK19RandomProbePointSet9TriangleZEff
 810              	.L107:
 811 003a FFF7FEBF 		b	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 812              	.L114:
 813 003e 00BF     		.align	2
 814              	.L113:
 815 0040 00000000 		.word	0
 816              		.size	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, .-_ZNK19RandomProbePointSet26GetIn
 817              		.section	.text._ZNK19RandomProbePointSet10DebugPrintEj,"ax",%progbits
 818              		.align	1
 819              		.p2align 2,,3
 820              		.global	_ZNK19RandomProbePointSet10DebugPrintEj
 821              		.syntax unified
 822              		.thumb
 823              		.thumb_func
 824              		.fpu fpv4-sp-d16
 825              		.type	_ZNK19RandomProbePointSet10DebugPrintEj, %function
 826              	_ZNK19RandomProbePointSet10DebugPrintEj:
 827              		@ args = 0, pretend = 0, frame = 0
 828              		@ frame_needed = 0, uses_anonymous_args = 0
 829 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 830 0002 2DED048B 		vpush.64	{d8, d9}
 831 0006 0446     		mov	r4, r0
 832 0008 83B0     		sub	sp, sp, #12
 833 000a 0D46     		mov	r5, r1
 834 000c 2448     		ldr	r0, .L123
 835 000e 9FED258A 		vldr.32	s16, .L123+4
 836 0012 FFF7FEFF 		bl	debugPrintf
 837 0016 002D     		cmp	r5, #0
 838 0018 3CD0     		beq	.L119
 839 001a 04F58474 		add	r4, r4, #264
 840 001e 224F     		ldr	r7, .L123+8
 841 0020 F0EE488A 		vmov.f32	s17, s16
 842 0024 04EB8506 		add	r6, r4, r5, lsl #2
 843              	.L117:
 844 0028 2068     		ldr	r0, [r4]	@ float
 845 002a FFF7FEFF 		bl	__aeabi_f2d
 846 002e 0246     		mov	r2, r0
 847 0030 0B46     		mov	r3, r1
 848 0032 3846     		mov	r0, r7
 849 0034 FFF7FEFF 		bl	debugPrintf
 850 0038 F4EC017A 		vldmia.32	r4!, {s15}
 851 003c B442     		cmp	r4, r6
 852 003e 78EEA78A 		vadd.f32	s17, s17, s15
 853 0042 A7EEA78A 		vfma.f32	s16, s15, s15
 854 0046 EFD1     		bne	.L117
 855              	.L116:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 16


 856 0048 07EE905A 		vmov	s15, r5	@ int
 857 004c B8EEE79A 		vcvt.f32.s32	s18, s15
 858 0050 C8EE899A 		vdiv.f32	s19, s17, s18
 859 0054 19EE900A 		vmov	r0, s19
 860 0058 FFF7FEFF 		bl	__aeabi_f2d
 861 005c 88EE090A 		vdiv.f32	s0, s16, s18
 862 0060 0446     		mov	r4, r0
 863 0062 0D46     		mov	r5, r1
 864 0064 A9EEE90A 		vfms.f32	s0, s19, s19
 865 0068 B5EE400A 		vcmp.f32	s0, #0
 866 006c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 867 0070 B1EEC08A 		vsqrt.f32	s16, s0
 868 0074 11D4     		bmi	.L122
 869              	.L118:
 870 0076 18EE100A 		vmov	r0, s16
 871 007a FFF7FEFF 		bl	__aeabi_f2d
 872 007e 2246     		mov	r2, r4
 873 0080 CDE90001 		strd	r0, [sp]
 874 0084 2B46     		mov	r3, r5
 875 0086 0948     		ldr	r0, .L123+12
 876 0088 FFF7FEFF 		bl	debugPrintf
 877 008c 03B0     		add	sp, sp, #12
 878              		@ sp needed
 879 008e BDEC048B 		vldm	sp!, {d8-d9}
 880 0092 F0BD     		pop	{r4, r5, r6, r7, pc}
 881              	.L119:
 882 0094 F0EE488A 		vmov.f32	s17, s16
 883 0098 D6E7     		b	.L116
 884              	.L122:
 885 009a FFF7FEFF 		bl	sqrtf
 886 009e EAE7     		b	.L118
 887              	.L124:
 888              		.align	2
 889              	.L123:
 890 00a0 00000000 		.word	.LC12
 891 00a4 00000000 		.word	0
 892 00a8 34000000 		.word	.LC9
 893 00ac 14000000 		.word	.LC13
 894              		.size	_ZNK19RandomProbePointSet10DebugPrintEj, .-_ZNK19RandomProbePointSet10DebugPrintEj
 895              		.global	_ZTV19RandomProbePointSet
 896              		.global	_ZN19RandomProbePointSet16objectModelTableE
 897              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 898              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 899              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 900              	_ZL28cpu_irq_prev_interrupt_state:
 901 0000 00       		.space	1
 902              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 903              		.align	2
 904              		.type	_ZL32cpu_irq_critical_section_counter, %object
 905              		.size	_ZL32cpu_irq_critical_section_counter, 4
 906              	_ZL32cpu_irq_critical_section_counter:
 907 0000 00000000 		.space	4
 908              		.section	.rodata._ZN19RandomProbePointSet16objectModelTableE,"a",%progbits
 909              		.align	2
 910              		.set	.LANCHOR0,. + 0
 911              		.type	_ZN19RandomProbePointSet16objectModelTableE, %object
 912              		.size	_ZN19RandomProbePointSet16objectModelTableE, 12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 17


 913              	_ZN19RandomProbePointSet16objectModelTableE:
 914 0000 00000000 		.word	.LC14
 915 0004 00000000 		.word	_ZN19RandomProbePointSetUlP11ObjectModelE_4_FUNES1_
 916 0008 02       		.byte	2
 917 0009 00       		.space	1
 918 000a 0000     		.short	0
 919              		.section	.rodata._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef.str1.4,"aMS",%progbi
 920              		.align	2
 921              	.LC0:
 922 0000 50726F62 		.ascii	"Probe points P0 to P%u must be in clockwise order s"
 922      6520706F 
 922      696E7473 
 922      20503020 
 922      746F2050 
 923 0033 74617274 		.ascii	"tarting near minimum X and Y\000"
 923      696E6720 
 923      6E656172 
 923      206D696E 
 923      696D756D 
 924              	.LC1:
 925 0050 2C20616E 		.ascii	", and P4 must be near the centre\000"
 925      64205034 
 925      206D7573 
 925      74206265 
 925      206E6561 
 926 0071 000000   		.space	3
 927              	.LC2:
 928 0074 42656420 		.ascii	"Bed calibration: %d points provided but only 3, 4 a"
 928      63616C69 
 928      62726174 
 928      696F6E3A 
 928      20256420 
 929 00a7 6E642035 		.ascii	"nd 5 supported\000"
 929      20737570 
 929      706F7274 
 929      656400
 930 00b6 0000     		.space	2
 931              	.LC3:
 932 00b8 205B252E 		.ascii	" [%.1f, %.1f, %.3f]\000"
 932      31662C20 
 932      252E3166 
 932      2C20252E 
 932      33665D00 
 933              	.LC4:
 934 00cc 332F342F 		.ascii	"3/4/5-point bed compensation is deprecated and will"
 934      352D706F 
 934      696E7420 
 934      62656420 
 934      636F6D70 
 935 00ff 20626520 		.ascii	" be removed in a future firmware release. Please us"
 935      72656D6F 
 935      76656420 
 935      696E2061 
 935      20667574 
 936 0132 65204732 		.ascii	"e G29 mesh bed compensation instead.\012\000"
 936      39206D65 
 936      73682062 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 18


 936      65642063 
 936      6F6D7065 
 937              	.LC5:
 938 0158 42656420 		.ascii	"Bed equation fits points\000"
 938      65717561 
 938      74696F6E 
 938      20666974 
 938      7320706F 
 939              		.section	.rodata._ZNK19RandomProbePointSet10DebugPrintEj.str1.4,"aMS",%progbits,1
 940              		.align	2
 941              	.LC12:
 942 0000 5A207072 		.ascii	"Z probe offsets:\000"
 942      6F626520 
 942      6F666673 
 942      6574733A 
 942      00
 943 0011 000000   		.space	3
 944              	.LC13:
 945 0014 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\012\000"
 945      616E2025 
 945      2E33662C 
 945      20646576 
 945      69617469 
 946              		.section	.rodata._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef.str1.4,"aMS",%progbit
 947              		.align	2
 948              	.LC6:
 949 0000 47333220 		.ascii	"G32 bed probe heights:\000"
 949      62656420 
 949      70726F62 
 949      65206865 
 949      69676874 
 950 0017 00       		.space	1
 951              	.LC7:
 952 0018 206E6F74 		.ascii	" not set\000"
 952      20736574 
 952      00
 953 0021 000000   		.space	3
 954              	.LC8:
 955 0024 2070726F 		.ascii	" probing failed\000"
 955      62696E67 
 955      20666169 
 955      6C656400 
 956              	.LC9:
 957 0034 20252E33 		.ascii	" %.3f\000"
 957      6600
 958 003a 0000     		.space	2
 959              	.LC10:
 960 003c 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\000"
 960      616E2025 
 960      2E33662C 
 960      20646576 
 960      69617469 
 961              		.section	.rodata._ZNK19RandomProbePointSet9TriangleZEff.str1.4,"aMS",%progbits,1
 962              		.align	2
 963              	.LC11:
 964 0000 54726961 		.ascii	"Triangle interpolation: point outside all triangles"
 964      6E676C65 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6E2fbw.s 			page 19


 964      20696E74 
 964      6572706F 
 964      6C617469 
 965 0033 210A00   		.ascii	"!\012\000"
 966              		.section	.rodata._ZTV19RandomProbePointSet,"a",%progbits
 967              		.align	2
 968              		.set	.LANCHOR1,. + 0
 969              		.type	_ZTV19RandomProbePointSet, %object
 970              		.size	_ZTV19RandomProbePointSet, 12
 971              	_ZTV19RandomProbePointSet:
 972 0000 00000000 		.word	0
 973 0004 00000000 		.word	0
 974 0008 00000000 		.word	_ZNK19RandomProbePointSet19GetObjectModelTableERj
 975              		.section	.rodata.str1.4,"aMS",%progbits,1
 976              		.align	2
 977              	.LC14:
 978 0000 6E756D50 		.ascii	"numPointsProbed\000"
 978      6F696E74 
 978      7350726F 
 978      62656400 
 979              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
