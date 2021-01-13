ARM GAS  /tmp/ccQX9asG.s 			page 1


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
  11              		.file	"RandomProbePointSet.cpp"
  12              		.section	.text._ZN19RandomProbePointSetC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN19RandomProbePointSetC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN19RandomProbePointSetC2Ev, %function
  21              	_ZN19RandomProbePointSetC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0023     		movs	r3, #0
  26 0002 30B4     		push	{r4, r5}
  27 0004 0024     		movs	r4, #0
  28 0006 1D46     		mov	r5, r3
  29 0008 0360     		str	r3, [r0]
  30 000a 00F58072 		add	r2, r0, #256
  31 000e 00F28313 		addw	r3, r0, #387
  32 0012 00F2A311 		addw	r1, r0, #419
  33              	.L2:
  34 0016 03F8015F 		strb	r5, [r3, #1]!
  35 001a 8B42     		cmp	r3, r1
  36 001c 42F8044F 		str	r4, [r2, #4]!	@ float
  37 0020 F9D1     		bne	.L2
  38 0022 30BC     		pop	{r4, r5}
  39 0024 7047     		bx	lr
  40              		.size	_ZN19RandomProbePointSetC2Ev, .-_ZN19RandomProbePointSetC2Ev
  41              		.global	_ZN19RandomProbePointSetC1Ev
  42              		.thumb_set _ZN19RandomProbePointSetC1Ev,_ZN19RandomProbePointSetC2Ev
  43 0026 00BF     		.section	.text._ZN19RandomProbePointSet18SetXYBedProbePointEjff,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZN19RandomProbePointSet18SetXYBedProbePointEjff
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu softvfp
  51              		.type	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, %function
  52              	_ZN19RandomProbePointSet18SetXYBedProbePointEjff:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 10B4     		push	{r4}
  57 0002 00EB8104 		add	r4, r0, r1, lsl #2
ARM GAS  /tmp/ccQX9asG.s 			page 2


  58 0006 6260     		str	r2, [r4, #4]	@ float
  59 0008 C4F88430 		str	r3, [r4, #132]	@ float
  60 000c 0844     		add	r0, r0, r1
  61 000e 90F88431 		ldrb	r3, [r0, #388]	@ zero_extendqisi2
  62 0012 43F00103 		orr	r3, r3, #1
  63 0016 80F88431 		strb	r3, [r0, #388]
  64 001a 10BC     		pop	{r4}
  65 001c 7047     		bx	lr
  66              		.size	_ZN19RandomProbePointSet18SetXYBedProbePointEjff, .-_ZN19RandomProbePointSet18SetXYBedProbeP
  67 001e 00BF     		.section	.text._ZN19RandomProbePointSet17SetZBedProbePointEjfbb,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu softvfp
  75              		.type	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, %function
  76              	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb:
  77              		@ args = 4, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 10B4     		push	{r4}
  81 0002 00EB8104 		add	r4, r0, r1, lsl #2
  82 0006 C4F80421 		str	r2, [r4, #260]	@ float
  83 000a 0144     		add	r1, r1, r0
  84 000c 91F88421 		ldrb	r2, [r1, #388]	@ zero_extendqisi2
  85 0010 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
  86 0014 42F00204 		orr	r4, r2, #2
  87 0018 81F88441 		strb	r4, [r1, #388]
  88 001c 53B1     		cbz	r3, .L9
  89 001e 42F00602 		orr	r2, r2, #6
  90 0022 81F88421 		strb	r2, [r1, #388]
  91 0026 68B9     		cbnz	r0, .L14
  92              	.L11:
  93 0028 22F00802 		bic	r2, r2, #8
  94 002c 81F88421 		strb	r2, [r1, #388]
  95 0030 10BC     		pop	{r4}
  96 0032 7047     		bx	lr
  97              	.L9:
  98 0034 22F00402 		bic	r2, r2, #4
  99 0038 42F00202 		orr	r2, r2, #2
 100 003c 81F88421 		strb	r2, [r1, #388]
 101 0040 0028     		cmp	r0, #0
 102 0042 F1D0     		beq	.L11
 103              	.L14:
 104 0044 42F00802 		orr	r2, r2, #8
 105 0048 81F88421 		strb	r2, [r1, #388]
 106 004c 10BC     		pop	{r4}
 107 004e 7047     		bx	lr
 108              		.size	_ZN19RandomProbePointSet17SetZBedProbePointEjfbb, .-_ZN19RandomProbePointSet17SetZBedProbePo
 109              		.section	.text._ZNK19RandomProbePointSet19NumberOfProbePointsEv,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccQX9asG.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, %function
 118              	_ZNK19RandomProbePointSet19NumberOfProbePointsEv:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 0022     		movs	r2, #0
 123 0002 00F28310 		addw	r0, r0, #387
 124 0006 02E0     		b	.L17
 125              	.L19:
 126 0008 0132     		adds	r2, r2, #1
 127 000a 202A     		cmp	r2, #32
 128 000c 05D0     		beq	.L15
 129              	.L17:
 130 000e 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 131 0012 03F00303 		and	r3, r3, #3
 132 0016 032B     		cmp	r3, #3
 133 0018 F6D0     		beq	.L19
 134              	.L15:
 135 001a 1046     		mov	r0, r2
 136 001c 7047     		bx	lr
 137              		.size	_ZNK19RandomProbePointSet19NumberOfProbePointsEv, .-_ZNK19RandomProbePointSet19NumberOfProbe
 138 001e 00BF     		.section	.text._ZN19RandomProbePointSet17ClearProbeHeightsEv,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	_ZN19RandomProbePointSet17ClearProbeHeightsEv
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu softvfp
 146              		.type	_ZN19RandomProbePointSet17ClearProbeHeightsEv, %function
 147              	_ZN19RandomProbePointSet17ClearProbeHeightsEv:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 00F28313 		addw	r3, r0, #387
 152 0004 00F2A310 		addw	r0, r0, #419
 153              	.L21:
 154 0008 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 155 000a 02F0FD02 		and	r2, r2, #253
 156 000e 03F8012F 		strb	r2, [r3, #1]!
 157 0012 8342     		cmp	r3, r0
 158 0014 F8D1     		bne	.L21
 159 0016 7047     		bx	lr
 160              		.size	_ZN19RandomProbePointSet17ClearProbeHeightsEv, .-_ZN19RandomProbePointSet17ClearProbeHeights
 161              		.section	.text._ZNK19RandomProbePointSet15GoodProbePointsEj,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	_ZNK19RandomProbePointSet15GoodProbePointsEj
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu softvfp
 169              		.type	_ZNK19RandomProbePointSet15GoodProbePointsEj, %function
 170              	_ZNK19RandomProbePointSet15GoodProbePointsEj:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccQX9asG.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 99B1     		cbz	r1, .L27
 175 0002 90F88431 		ldrb	r3, [r0, #388]	@ zero_extendqisi2
 176 0006 03F00B03 		and	r3, r3, #11
 177 000a 032B     		cmp	r3, #3
 178 000c 0FD1     		bne	.L29
 179 000e 01F28311 		addw	r1, r1, #387
 180 0012 0144     		add	r1, r1, r0
 181 0014 00F5C270 		add	r0, r0, #388
 182 0018 05E0     		b	.L25
 183              	.L26:
 184 001a 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 185 001e 03F00B03 		and	r3, r3, #11
 186 0022 032B     		cmp	r3, #3
 187 0024 03D1     		bne	.L29
 188              	.L25:
 189 0026 8842     		cmp	r0, r1
 190 0028 F7D1     		bne	.L26
 191              	.L27:
 192 002a 0120     		movs	r0, #1
 193 002c 7047     		bx	lr
 194              	.L29:
 195 002e 0020     		movs	r0, #0
 196 0030 7047     		bx	lr
 197              		.size	_ZNK19RandomProbePointSet15GoodProbePointsEj, .-_ZNK19RandomProbePointSet15GoodProbePointsEj
 198              		.global	__aeabi_fcmple
 199              		.global	__aeabi_fcmpge
 200 0032 00BF     		.section	.text._ZNK19RandomProbePointSet22GoodProbePointOrderingEj,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu softvfp
 208              		.type	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, %function
 209              	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj:
 210              		@ args = 0, pretend = 0, frame = 8
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212 0000 0129     		cmp	r1, #1
 213 0002 6DD9     		bls	.L33
 214 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 215 0008 D0F88450 		ldr	r5, [r0, #132]	@ float
 216 000c D0F88860 		ldr	r6, [r0, #136]	@ float
 217 0010 83B0     		sub	sp, sp, #12
 218 0012 8346     		mov	fp, r0
 219 0014 0C46     		mov	r4, r1
 220 0016 3046     		mov	r0, r6
 221 0018 2946     		mov	r1, r5
 222 001a FFF7FEFF 		bl	__aeabi_fcmple
 223 001e 0028     		cmp	r0, #0
 224 0020 5AD1     		bne	.L43
 225 0022 022C     		cmp	r4, #2
 226 0024 5ED0     		beq	.L40
 227 0026 DBF80C80 		ldr	r8, [fp, #12]	@ float
 228 002a DBF80870 		ldr	r7, [fp, #8]	@ float
ARM GAS  /tmp/ccQX9asG.s 			page 5


 229 002e 4046     		mov	r0, r8
 230 0030 3946     		mov	r1, r7
 231 0032 FFF7FEFF 		bl	__aeabi_fcmple
 232 0036 0028     		cmp	r0, #0
 233 0038 4ED1     		bne	.L43
 234 003a 032C     		cmp	r4, #3
 235 003c 52D0     		beq	.L40
 236 003e DBF890A0 		ldr	r10, [fp, #144]	@ float
 237 0042 DBF88C90 		ldr	r9, [fp, #140]	@ float
 238 0046 5046     		mov	r0, r10
 239 0048 4946     		mov	r1, r9
 240 004a FFF7FEFF 		bl	__aeabi_fcmpge
 241 004e 0028     		cmp	r0, #0
 242 0050 42D1     		bne	.L43
 243 0052 DBF80420 		ldr	r2, [fp, #4]	@ float
 244 0056 DBF81030 		ldr	r3, [fp, #16]	@ float
 245 005a 1046     		mov	r0, r2
 246 005c 1946     		mov	r1, r3
 247 005e 0092     		str	r2, [sp]
 248 0060 0193     		str	r3, [sp, #4]	@ float
 249 0062 FFF7FEFF 		bl	__aeabi_fcmpge
 250 0066 0028     		cmp	r0, #0
 251 0068 36D1     		bne	.L43
 252 006a 042C     		cmp	r4, #4
 253 006c 3AD0     		beq	.L40
 254 006e DBF81440 		ldr	r4, [fp, #20]	@ float
 255 0072 009A     		ldr	r2, [sp]
 256 0074 2146     		mov	r1, r4
 257 0076 1046     		mov	r0, r2
 258 0078 FFF7FEFF 		bl	__aeabi_fcmpge
 259 007c 60BB     		cbnz	r0, .L43
 260 007e 3846     		mov	r0, r7
 261 0080 2146     		mov	r1, r4
 262 0082 FFF7FEFF 		bl	__aeabi_fcmpge
 263 0086 38BB     		cbnz	r0, .L43
 264 0088 4046     		mov	r0, r8
 265 008a 2146     		mov	r1, r4
 266 008c FFF7FEFF 		bl	__aeabi_fcmple
 267 0090 10BB     		cbnz	r0, .L43
 268 0092 2146     		mov	r1, r4
 269 0094 0198     		ldr	r0, [sp, #4]	@ float
 270 0096 FFF7FEFF 		bl	__aeabi_fcmple
 271 009a E8B9     		cbnz	r0, .L43
 272 009c DBF89470 		ldr	r7, [fp, #148]	@ float
 273 00a0 2846     		mov	r0, r5
 274 00a2 3946     		mov	r1, r7
 275 00a4 FFF7FEFF 		bl	__aeabi_fcmpge
 276 00a8 B0B9     		cbnz	r0, .L43
 277 00aa 3046     		mov	r0, r6
 278 00ac 3946     		mov	r1, r7
 279 00ae FFF7FEFF 		bl	__aeabi_fcmple
 280 00b2 0546     		mov	r5, r0
 281 00b4 80B9     		cbnz	r0, .L43
 282 00b6 4846     		mov	r0, r9
 283 00b8 3946     		mov	r1, r7
 284 00ba FFF7FEFF 		bl	__aeabi_fcmple
 285 00be 98B9     		cbnz	r0, .L47
ARM GAS  /tmp/ccQX9asG.s 			page 6


 286 00c0 3946     		mov	r1, r7
 287 00c2 5046     		mov	r0, r10
 288 00c4 FFF7FEFF 		bl	__aeabi_fcmpge
 289 00c8 4FF00103 		mov	r3, #1
 290 00cc 00B9     		cbnz	r0, .L32
 291 00ce 0346     		mov	r3, r0
 292              	.L32:
 293 00d0 83F00103 		eor	r3, r3, #1
 294 00d4 D8B2     		uxtb	r0, r3
 295 00d6 00E0     		b	.L31
 296              	.L43:
 297 00d8 0020     		movs	r0, #0
 298              	.L31:
 299 00da 03B0     		add	sp, sp, #12
 300              		@ sp needed
 301 00dc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 302              	.L33:
 303 00e0 0120     		movs	r0, #1
 304 00e2 7047     		bx	lr
 305              	.L40:
 306 00e4 0120     		movs	r0, #1
 307 00e6 F8E7     		b	.L31
 308              	.L47:
 309 00e8 2846     		mov	r0, r5
 310 00ea F6E7     		b	.L31
 311              		.size	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj, .-_ZNK19RandomProbePointSet22GoodProbeP
 312              		.global	__aeabi_fsub
 313              		.global	__aeabi_fmul
 314              		.global	__aeabi_fdiv
 315              		.global	__aeabi_fadd
 316              		.global	__aeabi_f2d
 317              		.section	.text._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu softvfp
 325              		.type	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, %function
 326              	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef:
 327              		@ args = 0, pretend = 0, frame = 24
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 330 0004 8BB0     		sub	sp, sp, #44
 331 0006 1546     		mov	r5, r2
 332 0008 8346     		mov	fp, r0
 333 000a 0C46     		mov	r4, r1
 334 000c FFF7FEFF 		bl	_ZNK19RandomProbePointSet22GoodProbePointOrderingEj
 335 0010 58B9     		cbnz	r0, .L53
 336 0012 032C     		cmp	r4, #3
 337 0014 1AD8     		bhi	.L70
 338 0016 621E     		subs	r2, r4, #1
 339 0018 2846     		mov	r0, r5
 340 001a 9D49     		ldr	r1, .L72
 341 001c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 342              	.L69:
ARM GAS  /tmp/ccQX9asG.s 			page 7


 343 0020 0126     		movs	r6, #1
 344 0022 3046     		mov	r0, r6
 345 0024 0BB0     		add	sp, sp, #44
 346              		@ sp needed
 347 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 348              	.L53:
 349 002a 042C     		cmp	r4, #4
 350 002c 1ED0     		beq	.L57
 351 002e 052C     		cmp	r4, #5
 352 0030 00F0E780 		beq	.L58
 353 0034 032C     		cmp	r4, #3
 354 0036 5DD0     		beq	.L71
 355 0038 0646     		mov	r6, r0
 356 003a 2246     		mov	r2, r4
 357 003c 2846     		mov	r0, r5
 358 003e 9549     		ldr	r1, .L72+4
 359 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 360 0044 3046     		mov	r0, r6
 361 0046 0BB0     		add	sp, sp, #44
 362              		@ sp needed
 363 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 364              	.L70:
 365 004c 0322     		movs	r2, #3
 366 004e 9049     		ldr	r1, .L72
 367 0050 2846     		mov	r0, r5
 368 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 369 0056 042C     		cmp	r4, #4
 370 0058 E2D0     		beq	.L69
 371 005a 0126     		movs	r6, #1
 372 005c 2846     		mov	r0, r5
 373 005e 8E49     		ldr	r1, .L72+8
 374 0060 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 375 0064 3046     		mov	r0, r6
 376 0066 0BB0     		add	sp, sp, #44
 377              		@ sp needed
 378 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 379              	.L57:
 380 006c DBF80410 		ldr	r1, [fp, #4]	@ float
 381 0070 DBF81000 		ldr	r0, [fp, #16]	@ float
 382 0074 FFF7FEFF 		bl	__aeabi_fsub
 383 0078 0146     		mov	r1, r0
 384 007a 4FF07E50 		mov	r0, #1065353216
 385 007e FFF7FEFF 		bl	__aeabi_fdiv
 386 0082 DBF88410 		ldr	r1, [fp, #132]	@ float
 387 0086 CBF8B001 		str	r0, [fp, #432]	@ float
 388 008a DBF88800 		ldr	r0, [fp, #136]	@ float
 389 008e FFF7FEFF 		bl	__aeabi_fsub
 390 0092 0146     		mov	r1, r0
 391 0094 4FF07E50 		mov	r0, #1065353216
 392 0098 FFF7FEFF 		bl	__aeabi_fdiv
 393 009c CBF8B401 		str	r0, [fp, #436]	@ float
 394              	.L60:
 395 00a0 CBF80040 		str	r4, [fp]
 396 00a4 7D49     		ldr	r1, .L72+12
 397 00a6 2846     		mov	r0, r5
 398 00a8 5E46     		mov	r6, fp
 399 00aa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  /tmp/ccQX9asG.s 			page 8


 400 00ae 0027     		movs	r7, #0
 401 00b0 DFF8ECA1 		ldr	r10, .L72+16
 402              	.L62:
 403 00b4 56F8040F 		ldr	r0, [r6, #4]!	@ float
 404 00b8 FFF7FEFF 		bl	__aeabi_f2d
 405 00bc 8046     		mov	r8, r0
 406 00be D6F80001 		ldr	r0, [r6, #256]	@ float
 407 00c2 8946     		mov	r9, r1
 408 00c4 FFF7FEFF 		bl	__aeabi_f2d
 409 00c8 CDE90201 		strd	r0, [sp, #8]
 410 00cc D6F88000 		ldr	r0, [r6, #128]	@ float
 411 00d0 FFF7FEFF 		bl	__aeabi_f2d
 412 00d4 0137     		adds	r7, r7, #1
 413 00d6 CDE90001 		strd	r0, [sp]
 414 00da 4246     		mov	r2, r8
 415 00dc 4B46     		mov	r3, r9
 416 00de 5146     		mov	r1, r10
 417 00e0 2846     		mov	r0, r5
 418 00e2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 419 00e6 BC42     		cmp	r4, r7
 420 00e8 E4D8     		bhi	.L62
 421 00ea 0026     		movs	r6, #0
 422 00ec 3046     		mov	r0, r6
 423 00ee 0BB0     		add	sp, sp, #44
 424              		@ sp needed
 425 00f0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 426              	.L71:
 427 00f4 DBF80820 		ldr	r2, [fp, #8]	@ float
 428 00f8 DBF80480 		ldr	r8, [fp, #4]	@ float
 429 00fc 1046     		mov	r0, r2
 430 00fe 4146     		mov	r1, r8
 431 0100 0992     		str	r2, [sp, #36]
 432 0102 FFF7FEFF 		bl	__aeabi_fsub
 433 0106 DBF88830 		ldr	r3, [fp, #136]	@ float
 434 010a DBF884A0 		ldr	r10, [fp, #132]	@ float
 435 010e 8146     		mov	r9, r0
 436 0110 5146     		mov	r1, r10
 437 0112 1846     		mov	r0, r3
 438 0114 0693     		str	r3, [sp, #24]	@ float
 439 0116 FFF7FEFF 		bl	__aeabi_fsub
 440 011a DBF80821 		ldr	r2, [fp, #264]	@ float
 441 011e DBF80471 		ldr	r7, [fp, #260]	@ float
 442 0122 0590     		str	r0, [sp, #20]	@ float
 443 0124 3946     		mov	r1, r7
 444 0126 1046     		mov	r0, r2
 445 0128 0792     		str	r2, [sp, #28]	@ float
 446 012a FFF7FEFF 		bl	__aeabi_fsub
 447 012e 4146     		mov	r1, r8
 448 0130 0646     		mov	r6, r0
 449 0132 DBF80C00 		ldr	r0, [fp, #12]	@ float
 450 0136 FFF7FEFF 		bl	__aeabi_fsub
 451 013a 5146     		mov	r1, r10
 452 013c 8046     		mov	r8, r0
 453 013e DBF88C00 		ldr	r0, [fp, #140]	@ float
 454 0142 FFF7FEFF 		bl	__aeabi_fsub
 455 0146 3946     		mov	r1, r7
 456 0148 8246     		mov	r10, r0
ARM GAS  /tmp/ccQX9asG.s 			page 9


 457 014a DBF80C01 		ldr	r0, [fp, #268]	@ float
 458 014e FFF7FEFF 		bl	__aeabi_fsub
 459 0152 0146     		mov	r1, r0
 460 0154 0890     		str	r0, [sp, #32]
 461 0156 0598     		ldr	r0, [sp, #20]	@ float
 462 0158 FFF7FEFF 		bl	__aeabi_fmul
 463 015c 5146     		mov	r1, r10
 464 015e 0746     		mov	r7, r0
 465 0160 3046     		mov	r0, r6
 466 0162 FFF7FEFF 		bl	__aeabi_fmul
 467 0166 0146     		mov	r1, r0
 468 0168 3846     		mov	r0, r7
 469 016a FFF7FEFF 		bl	__aeabi_fsub
 470 016e 4146     		mov	r1, r8
 471 0170 0746     		mov	r7, r0
 472 0172 3046     		mov	r0, r6
 473 0174 FFF7FEFF 		bl	__aeabi_fmul
 474 0178 089B     		ldr	r3, [sp, #32]
 475 017a 0646     		mov	r6, r0
 476 017c 1946     		mov	r1, r3
 477 017e 4846     		mov	r0, r9
 478 0180 FFF7FEFF 		bl	__aeabi_fmul
 479 0184 0146     		mov	r1, r0
 480 0186 3046     		mov	r0, r6
 481 0188 FFF7FEFF 		bl	__aeabi_fsub
 482 018c 5146     		mov	r1, r10
 483 018e 0646     		mov	r6, r0
 484 0190 4846     		mov	r0, r9
 485 0192 FFF7FEFF 		bl	__aeabi_fmul
 486 0196 4146     		mov	r1, r8
 487 0198 8146     		mov	r9, r0
 488 019a 0598     		ldr	r0, [sp, #20]	@ float
 489 019c FFF7FEFF 		bl	__aeabi_fmul
 490 01a0 0146     		mov	r1, r0
 491 01a2 4846     		mov	r0, r9
 492 01a4 FFF7FEFF 		bl	__aeabi_fsub
 493 01a8 8046     		mov	r8, r0
 494 01aa 07F10040 		add	r0, r7, #-2147483648
 495 01ae 4146     		mov	r1, r8
 496 01b0 FFF7FEFF 		bl	__aeabi_fdiv
 497 01b4 06F10043 		add	r3, r6, #-2147483648
 498 01b8 CBF8A401 		str	r0, [fp, #420]	@ float
 499 01bc 4146     		mov	r1, r8
 500 01be 1846     		mov	r0, r3
 501 01c0 FFF7FEFF 		bl	__aeabi_fdiv
 502 01c4 099A     		ldr	r2, [sp, #36]
 503 01c6 3946     		mov	r1, r7
 504 01c8 CBF8A801 		str	r0, [fp, #424]	@ float
 505 01cc 1046     		mov	r0, r2
 506 01ce FFF7FEFF 		bl	__aeabi_fmul
 507 01d2 3146     		mov	r1, r6
 508 01d4 0746     		mov	r7, r0
 509 01d6 0698     		ldr	r0, [sp, #24]	@ float
 510 01d8 FFF7FEFF 		bl	__aeabi_fmul
 511 01dc 0146     		mov	r1, r0
 512 01de 3846     		mov	r0, r7
 513 01e0 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  /tmp/ccQX9asG.s 			page 10


 514 01e4 4146     		mov	r1, r8
 515 01e6 0646     		mov	r6, r0
 516 01e8 0798     		ldr	r0, [sp, #28]	@ float
 517 01ea FFF7FEFF 		bl	__aeabi_fmul
 518 01ee 0146     		mov	r1, r0
 519 01f0 3046     		mov	r0, r6
 520 01f2 FFF7FEFF 		bl	__aeabi_fadd
 521 01f6 4146     		mov	r1, r8
 522 01f8 FFF7FEFF 		bl	__aeabi_fdiv
 523 01fc CBF8AC01 		str	r0, [fp, #428]	@ float
 524 0200 4EE7     		b	.L60
 525              	.L58:
 526 0202 0BF11403 		add	r3, fp, #20
 527 0206 DBF81490 		ldr	r9, [fp, #20]	@ float
 528 020a DBF89480 		ldr	r8, [fp, #148]	@ float
 529 020e DBF81471 		ldr	r7, [fp, #276]	@ float
 530 0212 0BF10406 		add	r6, fp, #4
 531 0216 CDF814B0 		str	fp, [sp, #20]
 532 021a 9B46     		mov	fp, r3
 533 021c 0694     		str	r4, [sp, #24]
 534 021e 0795     		str	r5, [sp, #28]
 535              	.L61:
 536 0220 56F8045B 		ldr	r5, [r6], #4	@ float
 537 0224 4146     		mov	r1, r8
 538 0226 F06F     		ldr	r0, [r6, #124]	@ float
 539 0228 FFF7FEFF 		bl	__aeabi_fsub
 540 022c 3946     		mov	r1, r7
 541 022e 0446     		mov	r4, r0
 542 0230 D6F8FC00 		ldr	r0, [r6, #252]	@ float
 543 0234 FFF7FEFF 		bl	__aeabi_fsub
 544 0238 4946     		mov	r1, r9
 545 023a 8246     		mov	r10, r0
 546 023c 2846     		mov	r0, r5
 547 023e FFF7FEFF 		bl	__aeabi_fsub
 548 0242 0146     		mov	r1, r0
 549 0244 FFF7FEFF 		bl	__aeabi_fadd
 550 0248 4946     		mov	r1, r9
 551 024a FFF7FEFF 		bl	__aeabi_fadd
 552 024e 2146     		mov	r1, r4
 553 0250 C6F8B001 		str	r0, [r6, #432]	@ float
 554 0254 2046     		mov	r0, r4
 555 0256 FFF7FEFF 		bl	__aeabi_fadd
 556 025a 4146     		mov	r1, r8
 557 025c FFF7FEFF 		bl	__aeabi_fadd
 558 0260 5146     		mov	r1, r10
 559 0262 C6F8C401 		str	r0, [r6, #452]	@ float
 560 0266 5046     		mov	r0, r10
 561 0268 FFF7FEFF 		bl	__aeabi_fadd
 562 026c 3946     		mov	r1, r7
 563 026e FFF7FEFF 		bl	__aeabi_fadd
 564 0272 5E45     		cmp	r6, fp
 565 0274 C6F8D801 		str	r0, [r6, #472]	@ float
 566 0278 D2D1     		bne	.L61
 567 027a DDF814B0 		ldr	fp, [sp, #20]
 568 027e 069C     		ldr	r4, [sp, #24]
 569 0280 079D     		ldr	r5, [sp, #28]
 570 0282 CBF8C891 		str	r9, [fp, #456]	@ float
ARM GAS  /tmp/ccQX9asG.s 			page 11


 571 0286 CBF8DC81 		str	r8, [fp, #476]	@ float
 572 028a CBF8F071 		str	r7, [fp, #496]	@ float
 573 028e 07E7     		b	.L60
 574              	.L73:
 575              		.align	2
 576              	.L72:
 577 0290 00000000 		.word	.LC0
 578 0294 68000000 		.word	.LC2
 579 0298 48000000 		.word	.LC1
 580 029c C0000000 		.word	.LC4
 581 02a0 AC000000 		.word	.LC3
 582              		.size	_ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef, .-_ZN19RandomProbePointSet20Se
 583              		.global	__aeabi_ui2f
 584              		.section	.text._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu softvfp
 592              		.type	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, %function
 593              	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef:
 594              		@ args = 0, pretend = 0, frame = 8
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 597 0004 0C46     		mov	r4, r1
 598 0006 85B0     		sub	sp, sp, #20
 599 0008 0391     		str	r1, [sp, #12]
 600 000a 0546     		mov	r5, r0
 601 000c 3A49     		ldr	r1, .L84
 602 000e 1046     		mov	r0, r2
 603 0010 1746     		mov	r7, r2
 604 0012 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 605 0016 002C     		cmp	r4, #0
 606 0018 6AD0     		beq	.L80
 607 001a 4FF00008 		mov	r8, #0
 608 001e 04F28316 		addw	r6, r4, #387
 609 0022 2E44     		add	r6, r6, r5
 610 0024 05F28314 		addw	r4, r5, #387
 611 0028 C146     		mov	r9, r8
 612 002a DFF8DCA0 		ldr	r10, .L84+16
 613 002e 05F58275 		add	r5, r5, #260
 614 0032 07E0     		b	.L79
 615              	.L83:
 616 0034 5146     		mov	r1, r10
 617 0036 3846     		mov	r0, r7
 618 0038 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 619              	.L77:
 620 003c B442     		cmp	r4, r6
 621 003e 05F10405 		add	r5, r5, #4
 622 0042 0FD0     		beq	.L75
 623              	.L79:
 624 0044 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 625 0048 03F00302 		and	r2, r3, #3
 626 004c 032A     		cmp	r2, #3
 627 004e F1D1     		bne	.L83
ARM GAS  /tmp/ccQX9asG.s 			page 12


 628 0050 1B07     		lsls	r3, r3, #28
 629 0052 33D5     		bpl	.L78
 630 0054 2949     		ldr	r1, .L84+4
 631 0056 3846     		mov	r0, r7
 632 0058 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 633 005c B442     		cmp	r4, r6
 634 005e 05F10405 		add	r5, r5, #4
 635 0062 EFD1     		bne	.L79
 636              	.L75:
 637 0064 0398     		ldr	r0, [sp, #12]
 638 0066 FFF7FEFF 		bl	__aeabi_ui2f
 639 006a 0546     		mov	r5, r0
 640 006c 0146     		mov	r1, r0
 641 006e 4846     		mov	r0, r9
 642 0070 FFF7FEFF 		bl	__aeabi_fdiv
 643 0074 2946     		mov	r1, r5
 644 0076 0446     		mov	r4, r0
 645 0078 4046     		mov	r0, r8
 646 007a FFF7FEFF 		bl	__aeabi_fdiv
 647 007e 2146     		mov	r1, r4
 648 0080 0546     		mov	r5, r0
 649 0082 2046     		mov	r0, r4
 650 0084 FFF7FEFF 		bl	__aeabi_fmul
 651 0088 0146     		mov	r1, r0
 652 008a 2846     		mov	r0, r5
 653 008c FFF7FEFF 		bl	__aeabi_fsub
 654 0090 FFF7FEFF 		bl	sqrtf
 655 0094 0646     		mov	r6, r0
 656 0096 2046     		mov	r0, r4
 657 0098 FFF7FEFF 		bl	__aeabi_f2d
 658 009c 0446     		mov	r4, r0
 659 009e 3046     		mov	r0, r6
 660 00a0 0D46     		mov	r5, r1
 661 00a2 FFF7FEFF 		bl	__aeabi_f2d
 662 00a6 2246     		mov	r2, r4
 663 00a8 CDE90001 		strd	r0, [sp]
 664 00ac 2B46     		mov	r3, r5
 665 00ae 3846     		mov	r0, r7
 666 00b0 1349     		ldr	r1, .L84+8
 667 00b2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 668 00b6 05B0     		add	sp, sp, #20
 669              		@ sp needed
 670 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 671              	.L78:
 672 00bc 2868     		ldr	r0, [r5]	@ float
 673 00be FFF7FEFF 		bl	__aeabi_f2d
 674 00c2 0246     		mov	r2, r0
 675 00c4 0B46     		mov	r3, r1
 676 00c6 3846     		mov	r0, r7
 677 00c8 0E49     		ldr	r1, .L84+12
 678 00ca FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 679 00ce D5F800B0 		ldr	fp, [r5]	@ float
 680 00d2 4846     		mov	r0, r9
 681 00d4 5946     		mov	r1, fp
 682 00d6 FFF7FEFF 		bl	__aeabi_fadd
 683 00da 5946     		mov	r1, fp
 684 00dc 8146     		mov	r9, r0
ARM GAS  /tmp/ccQX9asG.s 			page 13


 685 00de 5846     		mov	r0, fp
 686 00e0 FFF7FEFF 		bl	__aeabi_fmul
 687 00e4 0146     		mov	r1, r0
 688 00e6 4046     		mov	r0, r8
 689 00e8 FFF7FEFF 		bl	__aeabi_fadd
 690 00ec 8046     		mov	r8, r0
 691 00ee A5E7     		b	.L77
 692              	.L80:
 693 00f0 4FF00008 		mov	r8, #0
 694 00f4 C146     		mov	r9, r8
 695 00f6 B5E7     		b	.L75
 696              	.L85:
 697              		.align	2
 698              	.L84:
 699 00f8 00000000 		.word	.LC5
 700 00fc 24000000 		.word	.LC7
 701 0100 3C000000 		.word	.LC9
 702 0104 34000000 		.word	.LC8
 703 0108 18000000 		.word	.LC6
 704              		.size	_ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef, .-_ZNK19RandomProbePointSet18Re
 705              		.section	.text._ZNK19RandomProbePointSet22SecondDegreeTransformZEff,"ax",%progbits
 706              		.align	1
 707              		.p2align 2,,3
 708              		.global	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu softvfp
 713              		.type	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, %function
 714              	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff:
 715              		@ args = 0, pretend = 0, frame = 0
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 718 0004 0446     		mov	r4, r0
 719 0006 0846     		mov	r0, r1
 720 0008 6168     		ldr	r1, [r4, #4]	@ float
 721 000a 1646     		mov	r6, r2
 722 000c FFF7FEFF 		bl	__aeabi_fsub
 723 0010 D4F8B011 		ldr	r1, [r4, #432]	@ float
 724 0014 FFF7FEFF 		bl	__aeabi_fmul
 725 0018 D4F88410 		ldr	r1, [r4, #132]	@ float
 726 001c 0546     		mov	r5, r0
 727 001e 3046     		mov	r0, r6
 728 0020 FFF7FEFF 		bl	__aeabi_fsub
 729 0024 D4F8B411 		ldr	r1, [r4, #436]	@ float
 730 0028 FFF7FEFF 		bl	__aeabi_fmul
 731 002c 2946     		mov	r1, r5
 732 002e 0646     		mov	r6, r0
 733 0030 4FF07E50 		mov	r0, #1065353216
 734 0034 FFF7FEFF 		bl	__aeabi_fsub
 735 0038 3146     		mov	r1, r6
 736 003a 0746     		mov	r7, r0
 737 003c 4FF07E50 		mov	r0, #1065353216
 738 0040 FFF7FEFF 		bl	__aeabi_fsub
 739 0044 8046     		mov	r8, r0
 740 0046 0146     		mov	r1, r0
 741 0048 3846     		mov	r0, r7
ARM GAS  /tmp/ccQX9asG.s 			page 14


 742 004a FFF7FEFF 		bl	__aeabi_fmul
 743 004e D4F80411 		ldr	r1, [r4, #260]	@ float
 744 0052 FFF7FEFF 		bl	__aeabi_fmul
 745 0056 4146     		mov	r1, r8
 746 0058 8146     		mov	r9, r0
 747 005a 2846     		mov	r0, r5
 748 005c FFF7FEFF 		bl	__aeabi_fmul
 749 0060 D4F81011 		ldr	r1, [r4, #272]	@ float
 750 0064 FFF7FEFF 		bl	__aeabi_fmul
 751 0068 0146     		mov	r1, r0
 752 006a 4846     		mov	r0, r9
 753 006c FFF7FEFF 		bl	__aeabi_fadd
 754 0070 3946     		mov	r1, r7
 755 0072 8046     		mov	r8, r0
 756 0074 3046     		mov	r0, r6
 757 0076 FFF7FEFF 		bl	__aeabi_fmul
 758 007a D4F80811 		ldr	r1, [r4, #264]	@ float
 759 007e FFF7FEFF 		bl	__aeabi_fmul
 760 0082 0146     		mov	r1, r0
 761 0084 4046     		mov	r0, r8
 762 0086 FFF7FEFF 		bl	__aeabi_fadd
 763 008a 3146     		mov	r1, r6
 764 008c 0746     		mov	r7, r0
 765 008e 2846     		mov	r0, r5
 766 0090 FFF7FEFF 		bl	__aeabi_fmul
 767 0094 D4F80C11 		ldr	r1, [r4, #268]	@ float
 768 0098 FFF7FEFF 		bl	__aeabi_fmul
 769 009c 0146     		mov	r1, r0
 770 009e 3846     		mov	r0, r7
 771 00a0 FFF7FEFF 		bl	__aeabi_fadd
 772 00a4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 773              		.size	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff, .-_ZNK19RandomProbePointSet22SecondDeg
 774              		.section	.text._ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu softvfp
 782              		.type	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, %function
 783              	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_:
 784              		@ args = 20, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 787 0004 00EB8307 		add	r7, r0, r3, lsl #2
 788 0008 D7F8CC51 		ldr	r5, [r7, #460]	@ float
 789 000c 00EB8206 		add	r6, r0, r2, lsl #2
 790 0010 8A46     		mov	r10, r1
 791 0012 0446     		mov	r4, r0
 792 0014 2946     		mov	r1, r5
 793 0016 D6F8CC01 		ldr	r0, [r6, #460]	@ float
 794 001a FFF7FEFF 		bl	__aeabi_fsub
 795 001e D7F8B871 		ldr	r7, [r7, #440]	@ float
 796 0022 8146     		mov	r9, r0
 797 0024 3946     		mov	r1, r7
 798 0026 0898     		ldr	r0, [sp, #32]	@ float
ARM GAS  /tmp/ccQX9asG.s 			page 15


 799 0028 FFF7FEFF 		bl	__aeabi_fsub
 800 002c D6F8B811 		ldr	r1, [r6, #440]	@ float
 801 0030 8046     		mov	r8, r0
 802 0032 3846     		mov	r0, r7
 803 0034 FFF7FEFF 		bl	__aeabi_fsub
 804 0038 04EB8A04 		add	r4, r4, r10, lsl #2
 805 003c 2946     		mov	r1, r5
 806 003e 8246     		mov	r10, r0
 807 0040 0998     		ldr	r0, [sp, #36]	@ float
 808 0042 FFF7FEFF 		bl	__aeabi_fsub
 809 0046 3946     		mov	r1, r7
 810 0048 0646     		mov	r6, r0
 811 004a D4F8B801 		ldr	r0, [r4, #440]	@ float
 812 004e FFF7FEFF 		bl	__aeabi_fsub
 813 0052 2946     		mov	r1, r5
 814 0054 0746     		mov	r7, r0
 815 0056 D4F8CC01 		ldr	r0, [r4, #460]	@ float
 816 005a FFF7FEFF 		bl	__aeabi_fsub
 817 005e 3946     		mov	r1, r7
 818 0060 0446     		mov	r4, r0
 819 0062 4846     		mov	r0, r9
 820 0064 FFF7FEFF 		bl	__aeabi_fmul
 821 0068 2146     		mov	r1, r4
 822 006a 0546     		mov	r5, r0
 823 006c 5046     		mov	r0, r10
 824 006e FFF7FEFF 		bl	__aeabi_fmul
 825 0072 0146     		mov	r1, r0
 826 0074 2846     		mov	r0, r5
 827 0076 FFF7FEFF 		bl	__aeabi_fadd
 828 007a 0146     		mov	r1, r0
 829 007c 4FF07E50 		mov	r0, #1065353216
 830 0080 FFF7FEFF 		bl	__aeabi_fdiv
 831 0084 4146     		mov	r1, r8
 832 0086 0546     		mov	r5, r0
 833 0088 4846     		mov	r0, r9
 834 008a FFF7FEFF 		bl	__aeabi_fmul
 835 008e 3146     		mov	r1, r6
 836 0090 8146     		mov	r9, r0
 837 0092 5046     		mov	r0, r10
 838 0094 FFF7FEFF 		bl	__aeabi_fmul
 839 0098 0146     		mov	r1, r0
 840 009a 4846     		mov	r0, r9
 841 009c FFF7FEFF 		bl	__aeabi_fadd
 842 00a0 2946     		mov	r1, r5
 843 00a2 FFF7FEFF 		bl	__aeabi_fmul
 844 00a6 DDF82890 		ldr	r9, [sp, #40]
 845 00aa 04F10044 		add	r4, r4, #-2147483648
 846 00ae 4146     		mov	r1, r8
 847 00b0 C9F80000 		str	r0, [r9]	@ float
 848 00b4 2046     		mov	r0, r4
 849 00b6 FFF7FEFF 		bl	__aeabi_fmul
 850 00ba 3946     		mov	r1, r7
 851 00bc 0446     		mov	r4, r0
 852 00be 3046     		mov	r0, r6
 853 00c0 FFF7FEFF 		bl	__aeabi_fmul
 854 00c4 0146     		mov	r1, r0
 855 00c6 2046     		mov	r0, r4
ARM GAS  /tmp/ccQX9asG.s 			page 16


 856 00c8 FFF7FEFF 		bl	__aeabi_fadd
 857 00cc 2946     		mov	r1, r5
 858 00ce FFF7FEFF 		bl	__aeabi_fmul
 859 00d2 0446     		mov	r4, r0
 860 00d4 0B9B     		ldr	r3, [sp, #44]
 861 00d6 4FF07E50 		mov	r0, #1065353216
 862 00da 1C60     		str	r4, [r3]	@ float
 863 00dc D9F80010 		ldr	r1, [r9]	@ float
 864 00e0 FFF7FEFF 		bl	__aeabi_fsub
 865 00e4 2146     		mov	r1, r4
 866 00e6 FFF7FEFF 		bl	__aeabi_fsub
 867 00ea 0C9B     		ldr	r3, [sp, #48]
 868 00ec 1860     		str	r0, [r3]	@ float
 869 00ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 870              		.size	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_, .-_ZNK19RandomProbePointSet
 871              		.global	__aeabi_fcmpgt
 872 00f2 00BF     		.section	.text._ZNK19RandomProbePointSet9TriangleZEff,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	_ZNK19RandomProbePointSet9TriangleZEff
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu softvfp
 880              		.type	_ZNK19RandomProbePointSet9TriangleZEff, %function
 881              	_ZNK19RandomProbePointSet9TriangleZEff:
 882              		@ args = 0, pretend = 0, frame = 24
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 885 0004 8146     		mov	r9, r0
 886 0006 8A46     		mov	r10, r1
 887 0008 9346     		mov	fp, r2
 888 000a 0024     		movs	r4, #0
 889 000c DFF8AC80 		ldr	r8, .L103+8
 890 0010 8DB0     		sub	sp, sp, #52
 891              	.L96:
 892 0012 0BAB     		add	r3, sp, #44
 893 0014 0493     		str	r3, [sp, #16]
 894 0016 651C     		adds	r5, r4, #1
 895 0018 0AAB     		add	r3, sp, #40
 896 001a 0393     		str	r3, [sp, #12]
 897 001c 05F00306 		and	r6, r5, #3
 898 0020 09AB     		add	r3, sp, #36
 899 0022 0293     		str	r3, [sp, #8]
 900 0024 2146     		mov	r1, r4
 901 0026 4846     		mov	r0, r9
 902 0028 CDF804B0 		str	fp, [sp, #4]	@ float
 903 002c CDF800A0 		str	r10, [sp]	@ float
 904 0030 3246     		mov	r2, r6
 905 0032 0423     		movs	r3, #4
 906 0034 FFF7FEFF 		bl	_ZNK19RandomProbePointSet22BarycentricCoordinatesEjjjffRfS0_S0_
 907 0038 099F     		ldr	r7, [sp, #36]	@ float
 908 003a 4146     		mov	r1, r8
 909 003c 3846     		mov	r0, r7
 910 003e FFF7FEFF 		bl	__aeabi_fcmpgt
 911 0042 68B1     		cbz	r0, .L91
 912 0044 0A9B     		ldr	r3, [sp, #40]	@ float
ARM GAS  /tmp/ccQX9asG.s 			page 17


 913 0046 4146     		mov	r1, r8
 914 0048 1846     		mov	r0, r3
 915 004a 0693     		str	r3, [sp, #24]	@ float
 916 004c FFF7FEFF 		bl	__aeabi_fcmpgt
 917 0050 30B1     		cbz	r0, .L91
 918 0052 0B9B     		ldr	r3, [sp, #44]	@ float
 919 0054 4146     		mov	r1, r8
 920 0056 1846     		mov	r0, r3
 921 0058 0793     		str	r3, [sp, #28]	@ float
 922 005a FFF7FEFF 		bl	__aeabi_fcmpgt
 923 005e 68B9     		cbnz	r0, .L102
 924              	.L91:
 925 0060 042D     		cmp	r5, #4
 926 0062 2C46     		mov	r4, r5
 927 0064 D5D1     		bne	.L96
 928 0066 134B     		ldr	r3, .L103
 929 0068 134A     		ldr	r2, .L103+4
 930 006a 1868     		ldr	r0, [r3]	@ unaligned
 931 006c 40F2B521 		movw	r1, #693
 932 0070 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 933 0074 0020     		movs	r0, #0
 934              	.L90:
 935 0076 0DB0     		add	sp, sp, #52
 936              		@ sp needed
 937 0078 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 938              	.L102:
 939 007c 7834     		adds	r4, r4, #120
 940 007e 59F82410 		ldr	r1, [r9, r4, lsl #2]	@ float
 941 0082 3846     		mov	r0, r7
 942 0084 FFF7FEFF 		bl	__aeabi_fmul
 943 0088 7836     		adds	r6, r6, #120
 944 008a 0446     		mov	r4, r0
 945 008c 59F82610 		ldr	r1, [r9, r6, lsl #2]	@ float
 946 0090 0698     		ldr	r0, [sp, #24]	@ float
 947 0092 FFF7FEFF 		bl	__aeabi_fmul
 948 0096 0146     		mov	r1, r0
 949 0098 2046     		mov	r0, r4
 950 009a FFF7FEFF 		bl	__aeabi_fadd
 951 009e D9F8F011 		ldr	r1, [r9, #496]	@ float
 952 00a2 0446     		mov	r4, r0
 953 00a4 0798     		ldr	r0, [sp, #28]	@ float
 954 00a6 FFF7FEFF 		bl	__aeabi_fmul
 955 00aa 0146     		mov	r1, r0
 956 00ac 2046     		mov	r0, r4
 957 00ae FFF7FEFF 		bl	__aeabi_fadd
 958 00b2 E0E7     		b	.L90
 959              	.L104:
 960              		.align	2
 961              	.L103:
 962 00b4 00000000 		.word	reprap
 963 00b8 00000000 		.word	.LC10
 964 00bc 6F1283BA 		.word	-1165815185
 965              		.size	_ZNK19RandomProbePointSet9TriangleZEff, .-_ZNK19RandomProbePointSet9TriangleZEff
 966              		.section	.text._ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff,"ax",%progbits
 967              		.align	1
 968              		.p2align 2,,3
 969              		.global	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff
ARM GAS  /tmp/ccQX9asG.s 			page 18


 970              		.syntax unified
 971              		.thumb
 972              		.thumb_func
 973              		.fpu softvfp
 974              		.type	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, %function
 975              	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff:
 976              		@ args = 0, pretend = 0, frame = 0
 977              		@ frame_needed = 0, uses_anonymous_args = 0
 978 0000 70B5     		push	{r4, r5, r6, lr}
 979 0002 0468     		ldr	r4, [r0]
 980 0004 042C     		cmp	r4, #4
 981 0006 20D0     		beq	.L107
 982 0008 052C     		cmp	r4, #5
 983 000a 1AD0     		beq	.L108
 984 000c 032C     		cmp	r4, #3
 985 000e 01D0     		beq	.L113
 986 0010 0020     		movs	r0, #0
 987 0012 70BD     		pop	{r4, r5, r6, pc}
 988              	.L113:
 989 0014 0346     		mov	r3, r0
 990 0016 0846     		mov	r0, r1
 991 0018 D3F8A411 		ldr	r1, [r3, #420]	@ float
 992 001c 1C46     		mov	r4, r3
 993 001e 1546     		mov	r5, r2
 994 0020 FFF7FEFF 		bl	__aeabi_fmul
 995 0024 D4F8A811 		ldr	r1, [r4, #424]	@ float
 996 0028 0646     		mov	r6, r0
 997 002a 2846     		mov	r0, r5
 998 002c FFF7FEFF 		bl	__aeabi_fmul
 999 0030 0146     		mov	r1, r0
 1000 0032 3046     		mov	r0, r6
 1001 0034 FFF7FEFF 		bl	__aeabi_fadd
 1002 0038 D4F8AC11 		ldr	r1, [r4, #428]	@ float
 1003 003c FFF7FEFF 		bl	__aeabi_fadd
 1004 0040 70BD     		pop	{r4, r5, r6, pc}
 1005              	.L108:
 1006 0042 BDE87040 		pop	{r4, r5, r6, lr}
 1007 0046 FFF7FEBF 		b	_ZNK19RandomProbePointSet9TriangleZEff
 1008              	.L107:
 1009 004a BDE87040 		pop	{r4, r5, r6, lr}
 1010 004e FFF7FEBF 		b	_ZNK19RandomProbePointSet22SecondDegreeTransformZEff
 1011              		.size	_ZNK19RandomProbePointSet26GetInterpolatedHeightErrorEff, .-_ZNK19RandomProbePointSet26GetIn
 1012 0052 00BF     		.section	.text._ZNK19RandomProbePointSet10DebugPrintEj,"ax",%progbits
 1013              		.align	1
 1014              		.p2align 2,,3
 1015              		.global	_ZNK19RandomProbePointSet10DebugPrintEj
 1016              		.syntax unified
 1017              		.thumb
 1018              		.thumb_func
 1019              		.fpu softvfp
 1020              		.type	_ZNK19RandomProbePointSet10DebugPrintEj, %function
 1021              	_ZNK19RandomProbePointSet10DebugPrintEj:
 1022              		@ args = 0, pretend = 0, frame = 0
 1023              		@ frame_needed = 0, uses_anonymous_args = 0
 1024 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1025 0004 8946     		mov	r9, r1
 1026 0006 82B0     		sub	sp, sp, #8
ARM GAS  /tmp/ccQX9asG.s 			page 19


 1027 0008 0446     		mov	r4, r0
 1028 000a 2A48     		ldr	r0, .L120
 1029 000c FFF7FEFF 		bl	debugPrintf
 1030 0010 0027     		movs	r7, #0
 1031 0012 B9F1000F 		cmp	r9, #0
 1032 0016 4BD0     		beq	.L117
 1033 0018 0025     		movs	r5, #0
 1034 001a B846     		mov	r8, r7
 1035 001c DFF89CA0 		ldr	r10, .L120+8
 1036 0020 04F58074 		add	r4, r4, #256
 1037              	.L116:
 1038 0024 6068     		ldr	r0, [r4, #4]	@ float
 1039 0026 FFF7FEFF 		bl	__aeabi_f2d
 1040 002a 0246     		mov	r2, r0
 1041 002c 0B46     		mov	r3, r1
 1042 002e 5046     		mov	r0, r10
 1043 0030 FFF7FEFF 		bl	debugPrintf
 1044 0034 54F8046F 		ldr	r6, [r4, #4]!	@ float
 1045 0038 4046     		mov	r0, r8
 1046 003a 3146     		mov	r1, r6
 1047 003c FFF7FEFF 		bl	__aeabi_fadd
 1048 0040 3146     		mov	r1, r6
 1049 0042 8046     		mov	r8, r0
 1050 0044 3046     		mov	r0, r6
 1051 0046 FFF7FEFF 		bl	__aeabi_fmul
 1052 004a 0146     		mov	r1, r0
 1053 004c 3846     		mov	r0, r7
 1054 004e FFF7FEFF 		bl	__aeabi_fadd
 1055 0052 0135     		adds	r5, r5, #1
 1056 0054 A945     		cmp	r9, r5
 1057 0056 0746     		mov	r7, r0
 1058 0058 E4D1     		bne	.L116
 1059              	.L115:
 1060 005a 4846     		mov	r0, r9
 1061 005c FFF7FEFF 		bl	__aeabi_ui2f
 1062 0060 0546     		mov	r5, r0
 1063 0062 0146     		mov	r1, r0
 1064 0064 4046     		mov	r0, r8
 1065 0066 FFF7FEFF 		bl	__aeabi_fdiv
 1066 006a 2946     		mov	r1, r5
 1067 006c 0446     		mov	r4, r0
 1068 006e 3846     		mov	r0, r7
 1069 0070 FFF7FEFF 		bl	__aeabi_fdiv
 1070 0074 2146     		mov	r1, r4
 1071 0076 0546     		mov	r5, r0
 1072 0078 2046     		mov	r0, r4
 1073 007a FFF7FEFF 		bl	__aeabi_fmul
 1074 007e 0146     		mov	r1, r0
 1075 0080 2846     		mov	r0, r5
 1076 0082 FFF7FEFF 		bl	__aeabi_fsub
 1077 0086 FFF7FEFF 		bl	sqrtf
 1078 008a 0646     		mov	r6, r0
 1079 008c 2046     		mov	r0, r4
 1080 008e FFF7FEFF 		bl	__aeabi_f2d
 1081 0092 0446     		mov	r4, r0
 1082 0094 3046     		mov	r0, r6
 1083 0096 0D46     		mov	r5, r1
ARM GAS  /tmp/ccQX9asG.s 			page 20


 1084 0098 FFF7FEFF 		bl	__aeabi_f2d
 1085 009c 2246     		mov	r2, r4
 1086 009e CDE90001 		strd	r0, [sp]
 1087 00a2 2B46     		mov	r3, r5
 1088 00a4 0448     		ldr	r0, .L120+4
 1089 00a6 FFF7FEFF 		bl	debugPrintf
 1090 00aa 02B0     		add	sp, sp, #8
 1091              		@ sp needed
 1092 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1093              	.L117:
 1094 00b0 B846     		mov	r8, r7
 1095 00b2 D2E7     		b	.L115
 1096              	.L121:
 1097              		.align	2
 1098              	.L120:
 1099 00b4 00000000 		.word	.LC11
 1100 00b8 14000000 		.word	.LC12
 1101 00bc 34000000 		.word	.LC8
 1102              		.size	_ZNK19RandomProbePointSet10DebugPrintEj, .-_ZNK19RandomProbePointSet10DebugPrintEj
 1103              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1104              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1105              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1106              	_ZL28cpu_irq_prev_interrupt_state:
 1107 0000 00       		.space	1
 1108              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1109              		.align	2
 1110              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1111              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1112              	_ZL32cpu_irq_critical_section_counter:
 1113 0000 00000000 		.space	4
 1114              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1115              		.align	2
 1116              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1117              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1118              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1119 0000 00000000 		.space	4
 1120              		.section	.rodata._ZN19RandomProbePointSet20SetProbedBedEquationEjRK9StringRef.str1.4,"aMS",%progbi
 1121              		.align	2
 1122              	.LC0:
 1123 0000 50726F62 		.ascii	"Probe points P0 to P%u must be in clockwise order s"
 1123      6520706F 
 1123      696E7473 
 1123      20503020 
 1123      746F2050 
 1124 0033 74617274 		.ascii	"tarting near X=0 Y=0\000"
 1124      696E6720 
 1124      6E656172 
 1124      20583D30 
 1124      20593D30 
 1125              	.LC1:
 1126 0048 20616E64 		.ascii	" and P4 must be near the centre\000"
 1126      20503420 
 1126      6D757374 
 1126      20626520 
 1126      6E656172 
 1127              	.LC2:
 1128 0068 42656420 		.ascii	"Bed calibration: %d points provided but only 3, 4 a"
ARM GAS  /tmp/ccQX9asG.s 			page 21


 1128      63616C69 
 1128      62726174 
 1128      696F6E3A 
 1128      20256420 
 1129 009b 6E642035 		.ascii	"nd 5 supported\000"
 1129      20737570 
 1129      706F7274 
 1129      656400
 1130 00aa 0000     		.space	2
 1131              	.LC3:
 1132 00ac 205B252E 		.ascii	" [%.1f, %.1f, %.3f]\000"
 1132      31662C20 
 1132      252E3166 
 1132      2C20252E 
 1132      33665D00 
 1133              	.LC4:
 1134 00c0 42656420 		.ascii	"Bed equation fits points\000"
 1134      65717561 
 1134      74696F6E 
 1134      20666974 
 1134      7320706F 
 1135              		.section	.rodata._ZNK19RandomProbePointSet10DebugPrintEj.str1.4,"aMS",%progbits,1
 1136              		.align	2
 1137              	.LC11:
 1138 0000 5A207072 		.ascii	"Z probe offsets:\000"
 1138      6F626520 
 1138      6F666673 
 1138      6574733A 
 1138      00
 1139 0011 000000   		.space	3
 1140              	.LC12:
 1141 0014 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\012\000"
 1141      616E2025 
 1141      2E33662C 
 1141      20646576 
 1141      69617469 
 1142              		.section	.rodata._ZNK19RandomProbePointSet18ReportProbeHeightsEjRK9StringRef.str1.4,"aMS",%progbit
 1143              		.align	2
 1144              	.LC5:
 1145 0000 47333220 		.ascii	"G32 bed probe heights:\000"
 1145      62656420 
 1145      70726F62 
 1145      65206865 
 1145      69676874 
 1146 0017 00       		.space	1
 1147              	.LC6:
 1148 0018 206E6F74 		.ascii	" not set\000"
 1148      20736574 
 1148      00
 1149 0021 000000   		.space	3
 1150              	.LC7:
 1151 0024 2070726F 		.ascii	" probing failed\000"
 1151      62696E67 
 1151      20666169 
 1151      6C656400 
 1152              	.LC8:
 1153 0034 20252E33 		.ascii	" %.3f\000"
ARM GAS  /tmp/ccQX9asG.s 			page 22


 1153      6600
 1154 003a 0000     		.space	2
 1155              	.LC9:
 1156 003c 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\000"
 1156      616E2025 
 1156      2E33662C 
 1156      20646576 
 1156      69617469 
 1157              		.section	.rodata._ZNK19RandomProbePointSet9TriangleZEff.str1.4,"aMS",%progbits,1
 1158              		.align	2
 1159              	.LC10:
 1160 0000 54726961 		.ascii	"Triangle interpolation: point outside all triangles"
 1160      6E676C65 
 1160      20696E74 
 1160      6572706F 
 1160      6C617469 
 1161 0033 210A00   		.ascii	"!\012\000"
 1162              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
