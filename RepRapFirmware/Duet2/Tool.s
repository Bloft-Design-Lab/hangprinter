ARM GAS  /tmp/ccN8ORdD.s 			page 1


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
  13              		.file	"Tool.cpp"
  14              		.section	.text._ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef, %function
  23              	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef:
  24              		@ args = 24, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  27 0004 764C     		ldr	r4, .L58
  28 0006 82B0     		sub	sp, sp, #8
  29 0008 2469     		ldr	r4, [r4, #16]	@ unaligned
  30 000a 0B9D     		ldr	r5, [sp, #44]
  31 000c D4F8A0C2 		ldr	ip, [r4, #672]
  32 0010 092B     		cmp	r3, #9
  33 0012 00F2C680 		bhi	.L54
  34 0016 082D     		cmp	r5, #8
  35 0018 00F2CA80 		bhi	.L55
  36 001c 1E46     		mov	r6, r3
  37 001e 8046     		mov	r8, r0
  38 0020 0F46     		mov	r7, r1
  39 0022 1446     		mov	r4, r2
  40 0024 A3B1     		cbz	r3, .L5
  41 0026 1368     		ldr	r3, [r2]
  42 0028 002B     		cmp	r3, #0
  43 002a C0F29180 		blt	.L6
  44 002e 6345     		cmp	r3, ip
  45 0030 80F28E80 		bge	.L6
  46 0034 101F     		subs	r0, r2, #4
  47 0036 00EB8600 		add	r0, r0, r6, lsl #2
  48 003a 07E0     		b	.L8
  49              	.L9:
  50 003c 52F8041F 		ldr	r1, [r2, #4]!
  51 0040 0029     		cmp	r1, #0
  52 0042 C0F28580 		blt	.L6
  53 0046 6145     		cmp	r1, ip
  54 0048 80F28280 		bge	.L6
  55              	.L8:
  56 004c 8242     		cmp	r2, r0
  57 004e F5D1     		bne	.L9
ARM GAS  /tmp/ccN8ORdD.s 			page 2


  58              	.L5:
  59 0050 85B1     		cbz	r5, .L10
  60 0052 0A9B     		ldr	r3, [sp, #40]
  61 0054 1B68     		ldr	r3, [r3]
  62 0056 072B     		cmp	r3, #7
  63 0058 00F28480 		bhi	.L11
  64 005c 0A9B     		ldr	r3, [sp, #40]
  65 005e 0A9A     		ldr	r2, [sp, #40]
  66 0060 0433     		adds	r3, r3, #4
  67 0062 02EB8501 		add	r1, r2, r5, lsl #2
  68 0066 03E0     		b	.L13
  69              	.L14:
  70 0068 53F8042B 		ldr	r2, [r3], #4
  71 006c 072A     		cmp	r2, #7
  72 006e 79D8     		bhi	.L11
  73              	.L13:
  74 0070 8B42     		cmp	r3, r1
  75 0072 F9D1     		bne	.L14
  76              	.L10:
  77 0074 5B4B     		ldr	r3, .L58+4
  78 0076 D3F80090 		ldr	r9, [r3]
  79 007a B9F1000F 		cmp	r9, #0
  80 007e 00F08780 		beq	.L15
  81 0082 D9F80020 		ldr	r2, [r9]
  82 0086 1A60     		str	r2, [r3]
  83              	.L29:
  84 0088 012E     		cmp	r6, #1
  85 008a 00F09880 		beq	.L56
  86 008e 0023     		movs	r3, #0
  87              	.L52:
  88 0090 C9F80430 		str	r3, [r9, #4]
  89 0094 3846     		mov	r0, r7
  90 0096 FFF7FEFF 		bl	strlen
  91 009a 0028     		cmp	r0, #0
  92 009c 6CD1     		bne	.L57
  93 009e C9F80800 		str	r0, [r9, #8]
  94              	.L20:
  95 00a2 0C9A     		ldr	r2, [sp, #48]
  96 00a4 C9F8A020 		str	r2, [r9, #160]
  97 00a8 C9E92565 		strd	r6, r5, [r9, #148]
  98 00ac 0D9A     		ldr	r2, [sp, #52]
  99 00ae C9F8A420 		str	r2, [r9, #164]
 100 00b2 0023     		movs	r3, #0
 101 00b4 0E9A     		ldr	r2, [sp, #56]
 102 00b6 C9F8AC20 		str	r2, [r9, #172]
 103 00ba C9F80030 		str	r3, [r9]
 104 00be 89F8C130 		strb	r3, [r9, #193]
 105 00c2 89F8C230 		strb	r3, [r9, #194]
 106 00c6 C9F8A830 		str	r3, [r9, #168]
 107 00ca 89F8C330 		strb	r3, [r9, #195]
 108 00ce 0021     		movs	r1, #0
 109 00d0 C9F89C80 		str	r8, [r9, #156]
 110 00d4 09F10C02 		add	r2, r9, #12
 111 00d8 09F13003 		add	r3, r9, #48
 112              	.L21:
 113 00dc 42F8041B 		str	r1, [r2], #4	@ float
 114 00e0 9A42     		cmp	r2, r3
ARM GAS  /tmp/ccN8ORdD.s 			page 3


 115 00e2 FBD1     		bne	.L21
 116 00e4 CEB1     		cbz	r6, .L26
 117 00e6 043C     		subs	r4, r4, #4
 118 00e8 DFED3F6A 		vldr.32	s13, .L58+8
 119 00ec 04EB8606 		add	r6, r4, r6, lsl #2
 120 00f0 09F1AF01 		add	r1, r9, #175
 121 00f4 0023     		movs	r3, #0
 122 00f6 B7EE007A 		vmov.f32	s14, #1.0e+0
 123              	.L27:
 124 00fa 54F8040F 		ldr	r0, [r4, #4]!
 125 00fe 01F8010F 		strb	r0, [r1, #1]!
 126 0102 002B     		cmp	r3, #0
 127 0104 14BF     		ite	ne
 128 0106 F0EE667A 		vmovne.f32	s15, s13
 129 010a F0EE477A 		vmoveq.f32	s15, s14
 130 010e B442     		cmp	r4, r6
 131 0110 03F10103 		add	r3, r3, #1
 132 0114 E2EC017A 		vstmia.32	r2!, {s15}
 133 0118 EFD1     		bne	.L27
 134              	.L26:
 135 011a 9DB1     		cbz	r5, .L23
 136 011c 0A9B     		ldr	r3, [sp, #40]
 137 011e 334C     		ldr	r4, .L58+12
 138 0120 03EB8505 		add	r5, r3, r5, lsl #2
 139 0124 09F1B900 		add	r0, r9, #185
 140 0128 09F15401 		add	r1, r9, #84
 141 012c 09F17402 		add	r2, r9, #116
 142              	.L28:
 143 0130 53F8046B 		ldr	r6, [r3], #4
 144 0134 00F8016B 		strb	r6, [r0], #1
 145 0138 9D42     		cmp	r5, r3
 146 013a 41F8044B 		str	r4, [r1], #4	@ float
 147 013e 42F8044B 		str	r4, [r2], #4	@ float
 148 0142 F5D1     		bne	.L28
 149              	.L23:
 150 0144 D9F80400 		ldr	r0, [r9, #4]
 151 0148 40B1     		cbz	r0, .L1
 152 014a FFF7FEFF 		bl	_ZN8Filament14LoadAssignmentEv
 153 014e 05E0     		b	.L1
 154              	.L6:
 155 0150 2749     		ldr	r1, .L58+16
 156 0152 0F98     		ldr	r0, [sp, #60]
 157 0154 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 158 0158 4FF00009 		mov	r9, #0
 159              	.L1:
 160 015c 4846     		mov	r0, r9
 161 015e 02B0     		add	sp, sp, #8
 162              		@ sp needed
 163 0160 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 164              	.L11:
 165 0164 2349     		ldr	r1, .L58+20
 166 0166 0F98     		ldr	r0, [sp, #60]
 167 0168 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 168 016c 4FF00009 		mov	r9, #0
 169 0170 4846     		mov	r0, r9
 170 0172 02B0     		add	sp, sp, #8
 171              		@ sp needed
ARM GAS  /tmp/ccN8ORdD.s 			page 4


 172 0174 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 173              	.L57:
 174 0178 00F1010A 		add	r10, r0, #1
 175 017c 5046     		mov	r0, r10
 176 017e FFF7FEFF 		bl	_Znaj
 177 0182 5246     		mov	r2, r10
 178 0184 C9F80800 		str	r0, [r9, #8]
 179 0188 3946     		mov	r1, r7
 180 018a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 181 018e 88E7     		b	.L20
 182              	.L15:
 183 0190 C420     		movs	r0, #196
 184 0192 FFF7FEFF 		bl	_Znwj
 185 0196 0023     		movs	r3, #0
 186 0198 8146     		mov	r9, r0
 187 019a C0E90033 		strd	r3, r3, [r0]
 188 019e 8360     		str	r3, [r0, #8]
 189 01a0 72E7     		b	.L29
 190              	.L54:
 191 01a2 1549     		ldr	r1, .L58+24
 192 01a4 0F98     		ldr	r0, [sp, #60]
 193 01a6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 194 01aa 4FF00009 		mov	r9, #0
 195 01ae D5E7     		b	.L1
 196              	.L55:
 197 01b0 1249     		ldr	r1, .L58+28
 198 01b2 0F98     		ldr	r0, [sp, #60]
 199 01b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 200 01b8 4FF00009 		mov	r9, #0
 201 01bc CEE7     		b	.L1
 202              	.L56:
 203 01be 2068     		ldr	r0, [r4]
 204 01c0 FFF7FEFF 		bl	_ZN8Filament21GetFilamentByExtruderEi
 205 01c4 0346     		mov	r3, r0
 206 01c6 0028     		cmp	r0, #0
 207 01c8 7FF462AF 		bne	.L52
 208 01cc 2820     		movs	r0, #40
 209 01ce FFF7FEFF 		bl	_Znwj
 210 01d2 2168     		ldr	r1, [r4]
 211 01d4 0190     		str	r0, [sp, #4]
 212 01d6 FFF7FEFF 		bl	_ZN8FilamentC1Ei
 213 01da 019B     		ldr	r3, [sp, #4]
 214 01dc 58E7     		b	.L52
 215              	.L59:
 216 01de 00BF     		.align	2
 217              	.L58:
 218 01e0 00000000 		.word	reprap
 219 01e4 00000000 		.word	.LANCHOR0
 220 01e8 00000000 		.word	0
 221 01ec 339388C3 		.word	-1014459597
 222 01f0 40000000 		.word	.LC2
 223 01f4 60000000 		.word	.LC3
 224 01f8 00000000 		.word	.LC0
 225 01fc 20000000 		.word	.LC1
 226              		.size	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef, .-_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
 227              		.section	.text._ZN4Tool6DeleteEPS_,"ax",%progbits
 228              		.align	1
ARM GAS  /tmp/ccN8ORdD.s 			page 5


 229              		.p2align 2,,3
 230              		.global	_ZN4Tool6DeleteEPS_
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 235              		.type	_ZN4Tool6DeleteEPS_, %function
 236              	_ZN4Tool6DeleteEPS_:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 68B1     		cbz	r0, .L66
 240 0002 10B5     		push	{r4, lr}
 241 0004 0121     		movs	r1, #1
 242 0006 0446     		mov	r4, r0
 243 0008 8068     		ldr	r0, [r0, #8]
 244 000a FFF7FEFF 		bl	_ZdlPvj
 245 000e 044A     		ldr	r2, .L69
 246 0010 0023     		movs	r3, #0
 247 0012 1168     		ldr	r1, [r2]
 248 0014 2160     		str	r1, [r4]
 249 0016 A360     		str	r3, [r4, #8]
 250 0018 6360     		str	r3, [r4, #4]
 251 001a 1460     		str	r4, [r2]
 252 001c 10BD     		pop	{r4, pc}
 253              	.L66:
 254 001e 7047     		bx	lr
 255              	.L70:
 256              		.align	2
 257              	.L69:
 258 0020 00000000 		.word	.LANCHOR0
 259              		.size	_ZN4Tool6DeleteEPS_, .-_ZN4Tool6DeleteEPS_
 260              		.global	__aeabi_f2d
 261              		.section	.text._ZNK4Tool5PrintERK9StringRef,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_ZNK4Tool5PrintERK9StringRef
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	_ZNK4Tool5PrintERK9StringRef, %function
 270              	_ZNK4Tool5PrintERK9StringRef:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 274 0004 0446     		mov	r4, r0
 275 0006 0E46     		mov	r6, r1
 276 0008 D0F89C20 		ldr	r2, [r0, #156]
 277 000c 6349     		ldr	r1, .L113
 278 000e 85B0     		sub	sp, sp, #20
 279 0010 3046     		mov	r0, r6
 280 0012 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 281 0016 A268     		ldr	r2, [r4, #8]
 282 0018 1AB1     		cbz	r2, .L72
 283 001a 6149     		ldr	r1, .L113+4
 284 001c 3046     		mov	r0, r6
 285 001e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccN8ORdD.s 			page 6


 286              	.L72:
 287 0022 6049     		ldr	r1, .L113+8
 288 0024 3046     		mov	r0, r6
 289 0026 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 290 002a D4F89430 		ldr	r3, [r4, #148]
 291 002e 9BB1     		cbz	r3, .L73
 292 0030 5D4F     		ldr	r7, .L113+12
 293 0032 04F1AF05 		add	r5, r4, #175
 294 0036 2022     		movs	r2, #32
 295              	.L74:
 296 0038 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 297 003a 3946     		mov	r1, r7
 298 003c 3046     		mov	r0, r6
 299 003e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 300 0042 A5F1AE03 		sub	r3, r5, #174
 301 0046 D4F89410 		ldr	r1, [r4, #148]
 302 004a 1B1B     		subs	r3, r3, r4
 303 004c 9942     		cmp	r1, r3
 304 004e 05F10105 		add	r5, r5, #1
 305 0052 4FF02C02 		mov	r2, #44
 306 0056 EFD8     		bhi	.L74
 307              	.L73:
 308 0058 5449     		ldr	r1, .L113+16
 309 005a 3046     		mov	r0, r6
 310 005c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 311 0060 D4F89830 		ldr	r3, [r4, #152]
 312 0064 2BB3     		cbz	r3, .L75
 313 0066 6FF0B809 		mvn	r9, #184
 314 006a A9EB0409 		sub	r9, r9, r4
 315 006e 04F1B907 		add	r7, r4, #185
 316 0072 04F15405 		add	r5, r4, #84
 317 0076 4FF02008 		mov	r8, #32
 318              	.L76:
 319 007a 55F804AB 		ldr	r10, [r5], #4	@ float
 320 007e 17F901BB 		ldrsb	fp, [r7], #1
 321 0082 E869     		ldr	r0, [r5, #28]	@ float
 322 0084 FFF7FEFF 		bl	__aeabi_f2d
 323 0088 CDE90201 		strd	r0, [sp, #8]
 324 008c 5046     		mov	r0, r10	@ float
 325 008e FFF7FEFF 		bl	__aeabi_f2d
 326 0092 4246     		mov	r2, r8
 327 0094 CDE90001 		strd	r0, [sp]
 328 0098 5B46     		mov	r3, fp
 329 009a 4549     		ldr	r1, .L113+20
 330 009c 3046     		mov	r0, r6
 331 009e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 332 00a2 D4F89820 		ldr	r2, [r4, #152]
 333 00a6 09EB0703 		add	r3, r9, r7
 334 00aa 9A42     		cmp	r2, r3
 335 00ac 4FF02C08 		mov	r8, #44
 336 00b0 E3D8     		bhi	.L76
 337              	.L75:
 338 00b2 4049     		ldr	r1, .L113+24
 339 00b4 DFF81891 		ldr	r9, .L113+52
 340 00b8 DFF81881 		ldr	r8, .L113+56
 341 00bc 3046     		mov	r0, r6
 342 00be FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
ARM GAS  /tmp/ccN8ORdD.s 			page 7


 343 00c2 0025     		movs	r5, #0
 344 00c4 2022     		movs	r2, #32
 345 00c6 0127     		movs	r7, #1
 346 00c8 02E0     		b	.L78
 347              	.L77:
 348 00ca 0135     		adds	r5, r5, #1
 349 00cc 092D     		cmp	r5, #9
 350 00ce 13D0     		beq	.L110
 351              	.L78:
 352 00d0 D4F8A030 		ldr	r3, [r4, #160]
 353 00d4 07FA05F1 		lsl	r1, r7, r5
 354 00d8 1942     		tst	r1, r3
 355 00da F6D0     		beq	.L77
 356 00dc D9F81030 		ldr	r3, [r9, #16]
 357 00e0 2B44     		add	r3, r3, r5
 358 00e2 4146     		mov	r1, r8
 359 00e4 93F85A34 		ldrb	r3, [r3, #1114]	@ zero_extendqisi2
 360 00e8 3046     		mov	r0, r6
 361 00ea 0135     		adds	r5, r5, #1
 362 00ec FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 363 00f0 092D     		cmp	r5, #9
 364 00f2 4FF02C02 		mov	r2, #44
 365 00f6 EBD1     		bne	.L78
 366              	.L110:
 367 00f8 2F49     		ldr	r1, .L113+28
 368 00fa DFF8D490 		ldr	r9, .L113+52
 369 00fe DFF8D480 		ldr	r8, .L113+56
 370 0102 3046     		mov	r0, r6
 371 0104 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 372 0108 0025     		movs	r5, #0
 373 010a 2022     		movs	r2, #32
 374 010c 0127     		movs	r7, #1
 375 010e 02E0     		b	.L80
 376              	.L79:
 377 0110 0135     		adds	r5, r5, #1
 378 0112 092D     		cmp	r5, #9
 379 0114 13D0     		beq	.L111
 380              	.L80:
 381 0116 D4F8A430 		ldr	r3, [r4, #164]
 382 011a 07FA05F1 		lsl	r1, r7, r5
 383 011e 1942     		tst	r1, r3
 384 0120 F6D0     		beq	.L79
 385 0122 D9F81030 		ldr	r3, [r9, #16]
 386 0126 2B44     		add	r3, r3, r5
 387 0128 4146     		mov	r1, r8
 388 012a 93F85A34 		ldrb	r3, [r3, #1114]	@ zero_extendqisi2
 389 012e 3046     		mov	r0, r6
 390 0130 0135     		adds	r5, r5, #1
 391 0132 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 392 0136 092D     		cmp	r5, #9
 393 0138 4FF02C02 		mov	r2, #44
 394 013c EBD1     		bne	.L80
 395              	.L111:
 396 013e 1F49     		ldr	r1, .L113+32
 397 0140 DFF89480 		ldr	r8, .L113+60
 398 0144 3046     		mov	r0, r6
 399 0146 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
ARM GAS  /tmp/ccN8ORdD.s 			page 8


 400 014a 0025     		movs	r5, #0
 401 014c 2022     		movs	r2, #32
 402 014e 0127     		movs	r7, #1
 403 0150 02E0     		b	.L82
 404              	.L81:
 405 0152 0135     		adds	r5, r5, #1
 406 0154 092D     		cmp	r5, #9
 407 0156 0FD0     		beq	.L112
 408              	.L82:
 409 0158 D4F8AC30 		ldr	r3, [r4, #172]
 410 015c 07FA05F1 		lsl	r1, r7, r5
 411 0160 1942     		tst	r1, r3
 412 0162 F6D0     		beq	.L81
 413 0164 2B46     		mov	r3, r5
 414 0166 4146     		mov	r1, r8
 415 0168 3046     		mov	r0, r6
 416 016a 0135     		adds	r5, r5, #1
 417 016c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 418 0170 092D     		cmp	r5, #9
 419 0172 4FF02C02 		mov	r2, #44
 420 0176 EFD1     		bne	.L82
 421              	.L112:
 422 0178 94F8C130 		ldrb	r3, [r4, #193]	@ zero_extendqisi2
 423 017c 012B     		cmp	r3, #1
 424 017e 0BD0     		beq	.L84
 425 0180 0F4A     		ldr	r2, .L113+36
 426 0182 1049     		ldr	r1, .L113+40
 427 0184 022B     		cmp	r3, #2
 428 0186 18BF     		it	ne
 429 0188 0A46     		movne	r2, r1
 430              	.L83:
 431 018a 0F49     		ldr	r1, .L113+44
 432 018c 3046     		mov	r0, r6
 433 018e 05B0     		add	sp, sp, #20
 434              		@ sp needed
 435 0190 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 436 0194 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 437              	.L84:
 438 0198 0C4A     		ldr	r2, .L113+48
 439 019a F6E7     		b	.L83
 440              	.L114:
 441              		.align	2
 442              	.L113:
 443 019c 18000000 		.word	.LC7
 444 01a0 24000000 		.word	.LC8
 445 01a4 30000000 		.word	.LC9
 446 01a8 38000000 		.word	.LC10
 447 01ac 40000000 		.word	.LC11
 448 01b0 64000000 		.word	.LC12
 449 01b4 78000000 		.word	.LC13
 450 01b8 88000000 		.word	.LC15
 451 01bc 90000000 		.word	.LC16
 452 01c0 10000000 		.word	.LC6
 453 01c4 00000000 		.word	.LC4
 454 01c8 A0000000 		.word	.LC18
 455 01cc 04000000 		.word	.LC5
 456 01d0 00000000 		.word	reprap
ARM GAS  /tmp/ccN8ORdD.s 			page 9


 457 01d4 80000000 		.word	.LC14
 458 01d8 98000000 		.word	.LC17
 459              		.size	_ZNK4Tool5PrintERK9StringRef, .-_ZNK4Tool5PrintERK9StringRef
 460              		.section	.text._ZNK4Tool11MaxFeedrateEv,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	_ZNK4Tool11MaxFeedrateEv
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu fpv4-sp-d16
 468              		.type	_ZNK4Tool11MaxFeedrateEv, %function
 469              	_ZNK4Tool11MaxFeedrateEv:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472 0000 38B5     		push	{r3, r4, r5, lr}
 473 0002 144B     		ldr	r3, .L124
 474 0004 D0F89410 		ldr	r1, [r0, #148]
 475 0008 1C68     		ldr	r4, [r3]
 476 000a C9B1     		cbz	r1, .L123
 477 000c 1B69     		ldr	r3, [r3, #16]
 478 000e 9FED120A 		vldr.32	s0, .L124+4
 479 0012 D3F89852 		ldr	r5, [r3, #664]
 480 0016 0144     		add	r1, r1, r0
 481 0018 AF31     		adds	r1, r1, #175
 482 001a 00F1AF02 		add	r2, r0, #175
 483              	.L119:
 484 001e 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 485 0022 2B44     		add	r3, r3, r5
 486 0024 04EB8303 		add	r3, r4, r3, lsl #2
 487 0028 D3ED507A 		vldr.32	s15, [r3, #320]
 488 002c F4EE407A 		vcmp.f32	s15, s0
 489 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 490 0034 C8BF     		it	gt
 491 0036 B0EE670A 		vmovgt.f32	s0, s15
 492 003a 8A42     		cmp	r2, r1
 493 003c EFD1     		bne	.L119
 494 003e 38BD     		pop	{r3, r4, r5, pc}
 495              	.L123:
 496 0040 2046     		mov	r0, r4
 497 0042 064A     		ldr	r2, .L124+8
 498 0044 40F2B511 		movw	r1, #437
 499 0048 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 500 004c B7EE000A 		vmov.f32	s0, #1.0e+0
 501 0050 38BD     		pop	{r3, r4, r5, pc}
 502              	.L125:
 503 0052 00BF     		.align	2
 504              	.L124:
 505 0054 00000000 		.word	reprap
 506 0058 00000000 		.word	0
 507 005c 00000000 		.word	.LC19
 508              		.size	_ZNK4Tool11MaxFeedrateEv, .-_ZNK4Tool11MaxFeedrateEv
 509              		.section	.text._ZN4Tool20FlagTemperatureFaultEa,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	_ZN4Tool20FlagTemperatureFaultEa
 513              		.syntax unified
ARM GAS  /tmp/ccN8ORdD.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu fpv4-sp-d16
 517              		.type	_ZN4Tool20FlagTemperatureFaultEa, %function
 518              	_ZN4Tool20FlagTemperatureFaultEa:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521              		@ link register save eliminated.
 522 0000 30B4     		push	{r4, r5}
 523 0002 0125     		movs	r5, #1
 524              	.L132:
 525 0004 D0F89820 		ldr	r2, [r0, #152]
 526 0008 72B1     		cbz	r2, .L127
 527 000a 90F9B930 		ldrsb	r3, [r0, #185]
 528 000e 8B42     		cmp	r3, r1
 529 0010 0FD0     		beq	.L128
 530 0012 0244     		add	r2, r2, r0
 531 0014 B932     		adds	r2, r2, #185
 532 0016 00F1BA03 		add	r3, r0, #186
 533 001a 03E0     		b	.L130
 534              	.L131:
 535 001c 13F9014B 		ldrsb	r4, [r3], #1
 536 0020 A142     		cmp	r1, r4
 537 0022 06D0     		beq	.L128
 538              	.L130:
 539 0024 9342     		cmp	r3, r2
 540 0026 F9D1     		bne	.L131
 541              	.L127:
 542 0028 0068     		ldr	r0, [r0]
 543 002a 0028     		cmp	r0, #0
 544 002c EAD1     		bne	.L132
 545              	.L140:
 546 002e 30BC     		pop	{r4, r5}
 547 0030 7047     		bx	lr
 548              	.L128:
 549 0032 80F8C250 		strb	r5, [r0, #194]
 550 0036 0068     		ldr	r0, [r0]
 551 0038 0028     		cmp	r0, #0
 552 003a E3D1     		bne	.L132
 553 003c F7E7     		b	.L140
 554              		.size	_ZN4Tool20FlagTemperatureFaultEa, .-_ZN4Tool20FlagTemperatureFaultEa
 555 003e 00BF     		.section	.text._ZN4Tool21ClearTemperatureFaultEa,"ax",%progbits
 556              		.align	1
 557              		.p2align 2,,3
 558              		.global	_ZN4Tool21ClearTemperatureFaultEa
 559              		.syntax unified
 560              		.thumb
 561              		.thumb_func
 562              		.fpu fpv4-sp-d16
 563              		.type	_ZN4Tool21ClearTemperatureFaultEa, %function
 564              	_ZN4Tool21ClearTemperatureFaultEa:
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 568 0000 30B4     		push	{r4, r5}
 569 0002 0025     		movs	r5, #0
 570              	.L147:
ARM GAS  /tmp/ccN8ORdD.s 			page 11


 571 0004 D0F89820 		ldr	r2, [r0, #152]
 572 0008 72B1     		cbz	r2, .L142
 573 000a 90F9B930 		ldrsb	r3, [r0, #185]
 574 000e 8B42     		cmp	r3, r1
 575 0010 0FD0     		beq	.L143
 576 0012 0244     		add	r2, r2, r0
 577 0014 B932     		adds	r2, r2, #185
 578 0016 00F1BA03 		add	r3, r0, #186
 579 001a 03E0     		b	.L145
 580              	.L146:
 581 001c 13F9014B 		ldrsb	r4, [r3], #1
 582 0020 A142     		cmp	r1, r4
 583 0022 06D0     		beq	.L143
 584              	.L145:
 585 0024 9342     		cmp	r3, r2
 586 0026 F9D1     		bne	.L146
 587              	.L142:
 588 0028 0068     		ldr	r0, [r0]
 589 002a 0028     		cmp	r0, #0
 590 002c EAD1     		bne	.L147
 591              	.L155:
 592 002e 30BC     		pop	{r4, r5}
 593 0030 7047     		bx	lr
 594              	.L143:
 595 0032 80F8C250 		strb	r5, [r0, #194]
 596 0036 0068     		ldr	r0, [r0]
 597 0038 0028     		cmp	r0, #0
 598 003a E3D1     		bne	.L147
 599 003c F7E7     		b	.L155
 600              		.size	_ZN4Tool21ClearTemperatureFaultEa, .-_ZN4Tool21ClearTemperatureFaultEa
 601 003e 00BF     		.section	.text._ZN4Tool19SetTemperatureFaultEa,"ax",%progbits
 602              		.align	1
 603              		.p2align 2,,3
 604              		.global	_ZN4Tool19SetTemperatureFaultEa
 605              		.syntax unified
 606              		.thumb
 607              		.thumb_func
 608              		.fpu fpv4-sp-d16
 609              		.type	_ZN4Tool19SetTemperatureFaultEa, %function
 610              	_ZN4Tool19SetTemperatureFaultEa:
 611              		@ args = 0, pretend = 0, frame = 0
 612              		@ frame_needed = 0, uses_anonymous_args = 0
 613              		@ link register save eliminated.
 614 0000 D0F89820 		ldr	r2, [r0, #152]
 615 0004 D2B1     		cbz	r2, .L168
 616 0006 90F9B930 		ldrsb	r3, [r0, #185]
 617 000a 8B42     		cmp	r3, r1
 618 000c 17D0     		beq	.L172
 619 000e 0244     		add	r2, r2, r0
 620 0010 B932     		adds	r2, r2, #185
 621 0012 00F1BA03 		add	r3, r0, #186
 622 0016 9342     		cmp	r3, r2
 623 0018 15D0     		beq	.L173
 624 001a 10B4     		push	{r4}
 625 001c 13F9014B 		ldrsb	r4, [r3], #1
 626 0020 8C42     		cmp	r4, r1
 627 0022 05D0     		beq	.L174
ARM GAS  /tmp/ccN8ORdD.s 			page 12


 628              	.L160:
 629 0024 9342     		cmp	r3, r2
 630 0026 06D0     		beq	.L156
 631 0028 13F9014B 		ldrsb	r4, [r3], #1
 632 002c 8C42     		cmp	r4, r1
 633 002e F9D1     		bne	.L160
 634              	.L174:
 635 0030 0123     		movs	r3, #1
 636 0032 80F8C230 		strb	r3, [r0, #194]
 637              	.L156:
 638 0036 5DF8044B 		ldr	r4, [sp], #4
 639 003a 7047     		bx	lr
 640              	.L168:
 641 003c 7047     		bx	lr
 642              	.L172:
 643 003e 0123     		movs	r3, #1
 644 0040 80F8C230 		strb	r3, [r0, #194]
 645 0044 7047     		bx	lr
 646              	.L173:
 647 0046 7047     		bx	lr
 648              		.size	_ZN4Tool19SetTemperatureFaultEa, .-_ZN4Tool19SetTemperatureFaultEa
 649              		.section	.text._ZN4Tool21ResetTemperatureFaultEa,"ax",%progbits
 650              		.align	1
 651              		.p2align 2,,3
 652              		.global	_ZN4Tool21ResetTemperatureFaultEa
 653              		.syntax unified
 654              		.thumb
 655              		.thumb_func
 656              		.fpu fpv4-sp-d16
 657              		.type	_ZN4Tool21ResetTemperatureFaultEa, %function
 658              	_ZN4Tool21ResetTemperatureFaultEa:
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661              		@ link register save eliminated.
 662 0000 D0F89820 		ldr	r2, [r0, #152]
 663 0004 D2B1     		cbz	r2, .L187
 664 0006 90F9B930 		ldrsb	r3, [r0, #185]
 665 000a 8B42     		cmp	r3, r1
 666 000c 17D0     		beq	.L191
 667 000e 0244     		add	r2, r2, r0
 668 0010 B932     		adds	r2, r2, #185
 669 0012 00F1BA03 		add	r3, r0, #186
 670 0016 9342     		cmp	r3, r2
 671 0018 15D0     		beq	.L192
 672 001a 10B4     		push	{r4}
 673 001c 13F9014B 		ldrsb	r4, [r3], #1
 674 0020 8C42     		cmp	r4, r1
 675 0022 05D0     		beq	.L193
 676              	.L179:
 677 0024 9342     		cmp	r3, r2
 678 0026 06D0     		beq	.L175
 679 0028 13F9014B 		ldrsb	r4, [r3], #1
 680 002c 8C42     		cmp	r4, r1
 681 002e F9D1     		bne	.L179
 682              	.L193:
 683 0030 0023     		movs	r3, #0
 684 0032 80F8C230 		strb	r3, [r0, #194]
ARM GAS  /tmp/ccN8ORdD.s 			page 13


 685              	.L175:
 686 0036 5DF8044B 		ldr	r4, [sp], #4
 687 003a 7047     		bx	lr
 688              	.L187:
 689 003c 7047     		bx	lr
 690              	.L191:
 691 003e 0023     		movs	r3, #0
 692 0040 80F8C230 		strb	r3, [r0, #194]
 693 0044 7047     		bx	lr
 694              	.L192:
 695 0046 7047     		bx	lr
 696              		.size	_ZN4Tool21ResetTemperatureFaultEa, .-_ZN4Tool21ResetTemperatureFaultEa
 697              		.section	.text._ZNK4Tool27AllHeatersAtHighTemperatureEb,"ax",%progbits
 698              		.align	1
 699              		.p2align 2,,3
 700              		.global	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 701              		.syntax unified
 702              		.thumb
 703              		.thumb_func
 704              		.fpu fpv4-sp-d16
 705              		.type	_ZNK4Tool27AllHeatersAtHighTemperatureEb, %function
 706              	_ZNK4Tool27AllHeatersAtHighTemperatureEb:
 707              		@ args = 0, pretend = 0, frame = 0
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709 0000 D0F89830 		ldr	r3, [r0, #152]
 710 0004 8BB3     		cbz	r3, .L208
 711 0006 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 712 000a 0F46     		mov	r7, r1
 713 000c 2DED028B 		vpush.64	{d8}
 714 0010 0546     		mov	r5, r0
 715 0012 DFF86480 		ldr	r8, .L213+8
 716 0016 9FED168A 		vldr.32	s16, .L213
 717 001a DFED168A 		vldr.32	s17, .L213+4
 718 001e 00F1B904 		add	r4, r0, #185
 719 0022 6FF0B806 		mvn	r6, #184
 720 0026 09E0     		b	.L199
 721              	.L212:
 722 0028 B4EEE80A 		vcmpe.f32	s0, s17
 723 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 724 0030 00D5     		bpl	.L197
 725 0032 87B9     		cbnz	r7, .L201
 726              	.L197:
 727 0034 D5F89820 		ldr	r2, [r5, #152]
 728 0038 9A42     		cmp	r2, r3
 729 003a 11D9     		bls	.L211
 730              	.L199:
 731 003c 14F9011B 		ldrsb	r1, [r4], #1
 732 0040 D8F80C00 		ldr	r0, [r8, #12]
 733 0044 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 734 0048 B4EEC80A 		vcmpe.f32	s0, s16
 735 004c 731B     		subs	r3, r6, r5
 736 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 737 0052 2344     		add	r3, r3, r4
 738 0054 E8D5     		bpl	.L212
 739              	.L201:
 740 0056 BDEC028B 		vldm	sp!, {d8}
 741 005a 0020     		movs	r0, #0
ARM GAS  /tmp/ccN8ORdD.s 			page 14


 742 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 743              	.L211:
 744 0060 BDEC028B 		vldm	sp!, {d8}
 745 0064 0120     		movs	r0, #1
 746 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 747              	.L208:
 748 006a 0120     		movs	r0, #1
 749 006c 7047     		bx	lr
 750              	.L214:
 751 006e 00BF     		.align	2
 752              	.L213:
 753 0070 0000B442 		.word	1119092736
 754 0074 00002043 		.word	1126170624
 755 0078 00000000 		.word	reprap
 756              		.size	_ZNK4Tool27AllHeatersAtHighTemperatureEb, .-_ZNK4Tool27AllHeatersAtHighTemperatureEb
 757              		.section	.text._ZN4Tool8ActivateEv,"ax",%progbits
 758              		.align	1
 759              		.p2align 2,,3
 760              		.global	_ZN4Tool8ActivateEv
 761              		.syntax unified
 762              		.thumb
 763              		.thumb_func
 764              		.fpu fpv4-sp-d16
 765              		.type	_ZN4Tool8ActivateEv, %function
 766              	_ZN4Tool8ActivateEv:
 767              		@ args = 0, pretend = 0, frame = 0
 768              		@ frame_needed = 0, uses_anonymous_args = 0
 769 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 770 0004 D0F89830 		ldr	r3, [r0, #152]
 771 0008 8046     		mov	r8, r0
 772 000a 1BB3     		cbz	r3, .L216
 773 000c 6FF0B809 		mvn	r9, #184
 774 0010 134D     		ldr	r5, .L223
 775 0012 A9EB0009 		sub	r9, r9, r0
 776 0016 00F1B904 		add	r4, r0, #185
 777 001a 00F15407 		add	r7, r0, #84
 778 001e 00F17406 		add	r6, r0, #116
 779              	.L217:
 780 0022 B7EC010A 		vldmia.32	r7!, {s0}
 781 0026 94F90010 		ldrsb	r1, [r4]
 782 002a E868     		ldr	r0, [r5, #12]
 783 002c FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 784 0030 14F9011B 		ldrsb	r1, [r4], #1
 785 0034 B6EC010A 		vldmia.32	r6!, {s0}
 786 0038 E868     		ldr	r0, [r5, #12]
 787 003a FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 788 003e 14F9011C 		ldrsb	r1, [r4, #-1]
 789 0042 E868     		ldr	r0, [r5, #12]
 790 0044 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 791 0048 D8F89820 		ldr	r2, [r8, #152]
 792 004c 09EB0403 		add	r3, r9, r4
 793 0050 9A42     		cmp	r2, r3
 794 0052 E6D8     		bhi	.L217
 795              	.L216:
 796 0054 0123     		movs	r3, #1
 797 0056 88F8C130 		strb	r3, [r8, #193]
 798 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/ccN8ORdD.s 			page 15


 799              	.L224:
 800 005e 00BF     		.align	2
 801              	.L223:
 802 0060 00000000 		.word	reprap
 803              		.size	_ZN4Tool8ActivateEv, .-_ZN4Tool8ActivateEv
 804              		.section	.text._ZN4Tool7StandbyEv,"ax",%progbits
 805              		.align	1
 806              		.p2align 2,,3
 807              		.global	_ZN4Tool7StandbyEv
 808              		.syntax unified
 809              		.thumb
 810              		.thumb_func
 811              		.fpu fpv4-sp-d16
 812              		.type	_ZN4Tool7StandbyEv, %function
 813              	_ZN4Tool7StandbyEv:
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 817 0004 D0F89830 		ldr	r3, [r0, #152]
 818 0008 0546     		mov	r5, r0
 819 000a DBB1     		cbz	r3, .L226
 820 000c 6FF0B808 		mvn	r8, #184
 821 0010 0F4F     		ldr	r7, .L233
 822 0012 A8EB0008 		sub	r8, r8, r0
 823 0016 00F1B904 		add	r4, r0, #185
 824 001a 00F17406 		add	r6, r0, #116
 825              	.L227:
 826 001e B6EC010A 		vldmia.32	r6!, {s0}
 827 0022 94F90010 		ldrsb	r1, [r4]
 828 0026 F868     		ldr	r0, [r7, #12]
 829 0028 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 830 002c 2A46     		mov	r2, r5
 831 002e 14F9011B 		ldrsb	r1, [r4], #1
 832 0032 F868     		ldr	r0, [r7, #12]
 833 0034 FFF7FEFF 		bl	_ZN4Heat7StandbyEaPK4Tool
 834 0038 D5F89820 		ldr	r2, [r5, #152]
 835 003c 08EB0403 		add	r3, r8, r4
 836 0040 9A42     		cmp	r2, r3
 837 0042 ECD8     		bhi	.L227
 838              	.L226:
 839 0044 0223     		movs	r3, #2
 840 0046 85F8C130 		strb	r3, [r5, #193]
 841 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 842              	.L234:
 843 004e 00BF     		.align	2
 844              	.L233:
 845 0050 00000000 		.word	reprap
 846              		.size	_ZN4Tool7StandbyEv, .-_ZN4Tool7StandbyEv
 847              		.section	.text._ZN4Tool12ToolCanDriveEb,"ax",%progbits
 848              		.align	1
 849              		.p2align 2,,3
 850              		.global	_ZN4Tool12ToolCanDriveEb
 851              		.syntax unified
 852              		.thumb
 853              		.thumb_func
 854              		.fpu fpv4-sp-d16
 855              		.type	_ZN4Tool12ToolCanDriveEb, %function
ARM GAS  /tmp/ccN8ORdD.s 			page 16


 856              	_ZN4Tool12ToolCanDriveEb:
 857              		@ args = 0, pretend = 0, frame = 0
 858              		@ frame_needed = 0, uses_anonymous_args = 0
 859 0000 10B5     		push	{r4, lr}
 860 0002 90F8C230 		ldrb	r3, [r0, #194]	@ zero_extendqisi2
 861 0006 0446     		mov	r4, r0
 862 0008 23B1     		cbz	r3, .L236
 863              	.L238:
 864 000a 0123     		movs	r3, #1
 865 000c 84F8C330 		strb	r3, [r4, #195]
 866 0010 0020     		movs	r0, #0
 867 0012 10BD     		pop	{r4, pc}
 868              	.L236:
 869 0014 FFF7FEFF 		bl	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 870 0018 0028     		cmp	r0, #0
 871 001a F6D0     		beq	.L238
 872 001c 10BD     		pop	{r4, pc}
 873              		.size	_ZN4Tool12ToolCanDriveEb, .-_ZN4Tool12ToolCanDriveEb
 874 001e 00BF     		.section	.text._ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_,"ax",%progbits
 875              		.align	1
 876              		.p2align 2,,3
 877              		.global	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 878              		.syntax unified
 879              		.thumb
 880              		.thumb_func
 881              		.fpu fpv4-sp-d16
 882              		.type	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, %function
 883              	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_:
 884              		@ args = 0, pretend = 0, frame = 0
 885              		@ frame_needed = 0, uses_anonymous_args = 0
 886 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 887 0004 D0F89470 		ldr	r7, [r0, #148]
 888 0008 97B1     		cbz	r7, .L248
 889 000a 00F1AF03 		add	r3, r0, #175
 890              	.L249:
 891 000e 5C78     		ldrb	r4, [r3, #1]	@ zero_extendqisi2
 892 0010 0E88     		ldrh	r6, [r1]
 893 0012 B442     		cmp	r4, r6
 894 0014 04F10104 		add	r4, r4, #1
 895 0018 A8BF     		it	ge
 896 001a 0C80     		strhge	r4, [r1]	@ movhi
 897 001c A3F1AE05 		sub	r5, r3, #174
 898 0020 A8BF     		it	ge
 899 0022 D0F89470 		ldrge	r7, [r0, #148]
 900 0026 2D1A     		subs	r5, r5, r0
 901 0028 AF42     		cmp	r7, r5
 902 002a 03F10103 		add	r3, r3, #1
 903 002e EED8     		bhi	.L249
 904              	.L248:
 905 0030 D0F89830 		ldr	r3, [r0, #152]
 906 0034 DBB1     		cbz	r3, .L243
 907 0036 6FF0B806 		mvn	r6, #184
 908 003a DFF83880 		ldr	r8, .L258
 909 003e 1746     		mov	r7, r2
 910 0040 0446     		mov	r4, r0
 911 0042 361A     		subs	r6, r6, r0
 912 0044 00F1B905 		add	r5, r0, #185
ARM GAS  /tmp/ccN8ORdD.s 			page 17


 913              	.L251:
 914 0048 15F9011B 		ldrsb	r1, [r5], #1
 915 004c D8F80C00 		ldr	r0, [r8, #12]
 916 0050 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 917 0054 7319     		adds	r3, r6, r5
 918 0056 30B9     		cbnz	r0, .L250
 919 0058 15F9011C 		ldrsb	r1, [r5, #-1]
 920 005c 3A88     		ldrh	r2, [r7]
 921 005e 9142     		cmp	r1, r2
 922 0060 A4BF     		itt	ge
 923 0062 0131     		addge	r1, r1, #1
 924 0064 3980     		strhge	r1, [r7]	@ movhi
 925              	.L250:
 926 0066 D4F89810 		ldr	r1, [r4, #152]
 927 006a 9942     		cmp	r1, r3
 928 006c ECD8     		bhi	.L251
 929              	.L243:
 930 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 931              	.L259:
 932 0072 00BF     		.align	2
 933              	.L258:
 934 0074 00000000 		.word	reprap
 935              		.size	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, .-_ZNK4Tool28UpdateExtruderAndHeaterCountERtS
 936              		.section	.text._ZN4Tool25DisplayColdExtrudeWarningEv,"ax",%progbits
 937              		.align	1
 938              		.p2align 2,,3
 939              		.global	_ZN4Tool25DisplayColdExtrudeWarningEv
 940              		.syntax unified
 941              		.thumb
 942              		.thumb_func
 943              		.fpu fpv4-sp-d16
 944              		.type	_ZN4Tool25DisplayColdExtrudeWarningEv, %function
 945              	_ZN4Tool25DisplayColdExtrudeWarningEv:
 946              		@ args = 0, pretend = 0, frame = 0
 947              		@ frame_needed = 0, uses_anonymous_args = 0
 948              		@ link register save eliminated.
 949 0000 0346     		mov	r3, r0
 950 0002 0022     		movs	r2, #0
 951 0004 90F8C300 		ldrb	r0, [r0, #195]	@ zero_extendqisi2
 952 0008 83F8C320 		strb	r2, [r3, #195]
 953 000c 7047     		bx	lr
 954              		.size	_ZN4Tool25DisplayColdExtrudeWarningEv, .-_ZN4Tool25DisplayColdExtrudeWarningEv
 955 000e 00BF     		.section	.text._ZN4Tool9DefineMixEPKf,"ax",%progbits
 956              		.align	1
 957              		.p2align 2,,3
 958              		.global	_ZN4Tool9DefineMixEPKf
 959              		.syntax unified
 960              		.thumb
 961              		.thumb_func
 962              		.fpu fpv4-sp-d16
 963              		.type	_ZN4Tool9DefineMixEPKf, %function
 964              	_ZN4Tool9DefineMixEPKf:
 965              		@ args = 0, pretend = 0, frame = 0
 966              		@ frame_needed = 0, uses_anonymous_args = 0
 967              		@ link register save eliminated.
 968 0000 D0F89420 		ldr	r2, [r0, #148]
 969 0004 42B1     		cbz	r2, .L261
ARM GAS  /tmp/ccN8ORdD.s 			page 18


 970 0006 01EB8202 		add	r2, r1, r2, lsl #2
 971 000a 3030     		adds	r0, r0, #48
 972              	.L263:
 973 000c 51F8043B 		ldr	r3, [r1], #4	@ float
 974 0010 40F8043B 		str	r3, [r0], #4	@ float
 975 0014 9142     		cmp	r1, r2
 976 0016 F9D1     		bne	.L263
 977              	.L261:
 978 0018 7047     		bx	lr
 979              		.size	_ZN4Tool9DefineMixEPKf, .-_ZN4Tool9DefineMixEPKf
 980 001a 00BF     		.section	.text._ZNK4Tool13WriteSettingsEP9FileStore,"ax",%progbits
 981              		.align	1
 982              		.p2align 2,,3
 983              		.global	_ZNK4Tool13WriteSettingsEP9FileStore
 984              		.syntax unified
 985              		.thumb
 986              		.thumb_func
 987              		.fpu fpv4-sp-d16
 988              		.type	_ZNK4Tool13WriteSettingsEP9FileStore, %function
 989              	_ZNK4Tool13WriteSettingsEP9FileStore:
 990              		@ args = 0, pretend = 0, frame = 64
 991              		@ frame_needed = 0, uses_anonymous_args = 0
 992 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 993 0004 90B0     		sub	sp, sp, #64
 994 0006 03AA     		add	r2, sp, #12
 995 0008 D0F89830 		ldr	r3, [r0, #152]
 996 000c 0192     		str	r2, [sp, #4]
 997 000e 3222     		movs	r2, #50
 998 0010 0446     		mov	r4, r0
 999 0012 0F46     		mov	r7, r1
 1000 0014 0292     		str	r2, [sp, #8]
 1001 0016 3BB9     		cbnz	r3, .L269
 1002 0018 94F8C130 		ldrb	r3, [r4, #193]	@ zero_extendqisi2
 1003 001c 002B     		cmp	r3, #0
 1004 001e 4FD1     		bne	.L270
 1005              	.L287:
 1006 0020 0120     		movs	r0, #1
 1007              	.L271:
 1008 0022 10B0     		add	sp, sp, #64
 1009              		@ sp needed
 1010 0024 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1011              	.L269:
 1012 0028 01A8     		add	r0, sp, #4
 1013 002a D4F89C20 		ldr	r2, [r4, #156]
 1014 002e 2B49     		ldr	r1, .L288
 1015 0030 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1016 0034 D4F89830 		ldr	r3, [r4, #152]
 1017 0038 B3B1     		cbz	r3, .L272
 1018 003a DFF8A880 		ldr	r8, .L288+8
 1019 003e 04F15406 		add	r6, r4, #84
 1020 0042 0025     		movs	r5, #0
 1021 0044 5322     		movs	r2, #83
 1022              	.L273:
 1023 0046 F6EC017A 		vldmia.32	r6!, {s15}
 1024 004a FDEEE77A 		vcvt.s32.f32	s15, s15
 1025 004e 4146     		mov	r1, r8
 1026 0050 17EE903A 		vmov	r3, s15	@ int
ARM GAS  /tmp/ccN8ORdD.s 			page 19


 1027 0054 01A8     		add	r0, sp, #4
 1028 0056 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1029 005a D4F89830 		ldr	r3, [r4, #152]
 1030 005e 0135     		adds	r5, r5, #1
 1031 0060 AB42     		cmp	r3, r5
 1032 0062 4FF03A02 		mov	r2, #58
 1033 0066 EED8     		bhi	.L273
 1034              	.L272:
 1035 0068 2021     		movs	r1, #32
 1036 006a 01A8     		add	r0, sp, #4
 1037 006c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1038 0070 D4F89830 		ldr	r3, [r4, #152]
 1039 0074 B3B1     		cbz	r3, .L274
 1040 0076 DFF86C80 		ldr	r8, .L288+8
 1041 007a 04F17406 		add	r6, r4, #116
 1042 007e 0025     		movs	r5, #0
 1043 0080 5222     		movs	r2, #82
 1044              	.L275:
 1045 0082 F6EC017A 		vldmia.32	r6!, {s15}
 1046 0086 FDEEE77A 		vcvt.s32.f32	s15, s15
 1047 008a 4146     		mov	r1, r8
 1048 008c 17EE903A 		vmov	r3, s15	@ int
 1049 0090 01A8     		add	r0, sp, #4
 1050 0092 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1051 0096 D4F89830 		ldr	r3, [r4, #152]
 1052 009a 0135     		adds	r5, r5, #1
 1053 009c AB42     		cmp	r3, r5
 1054 009e 4FF03A02 		mov	r2, #58
 1055 00a2 EED8     		bhi	.L275
 1056              	.L274:
 1057 00a4 0A21     		movs	r1, #10
 1058 00a6 01A8     		add	r0, sp, #4
 1059 00a8 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1060 00ac 0199     		ldr	r1, [sp, #4]
 1061 00ae 3846     		mov	r0, r7
 1062 00b0 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1063 00b4 0028     		cmp	r0, #0
 1064 00b6 B4D0     		beq	.L271
 1065 00b8 94F8C130 		ldrb	r3, [r4, #193]	@ zero_extendqisi2
 1066 00bc 002B     		cmp	r3, #0
 1067 00be AFD0     		beq	.L287
 1068              	.L270:
 1069 00c0 D4F89C20 		ldr	r2, [r4, #156]
 1070 00c4 0649     		ldr	r1, .L288+4
 1071 00c6 01A8     		add	r0, sp, #4
 1072 00c8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1073 00cc 3846     		mov	r0, r7
 1074 00ce 0199     		ldr	r1, [sp, #4]
 1075 00d0 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1076 00d4 10B0     		add	sp, sp, #64
 1077              		@ sp needed
 1078 00d6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1079              	.L289:
 1080 00da 00BF     		.align	2
 1081              	.L288:
 1082 00dc 00000000 		.word	.LC20
 1083 00e0 0C000000 		.word	.LC21
ARM GAS  /tmp/ccN8ORdD.s 			page 20


 1084 00e4 38000000 		.word	.LC10
 1085              		.size	_ZNK4Tool13WriteSettingsEP9FileStore, .-_ZNK4Tool13WriteSettingsEP9FileStore
 1086              		.section	.text._ZN4Tool9SetOffsetEjfb,"ax",%progbits
 1087              		.align	1
 1088              		.p2align 2,,3
 1089              		.global	_ZN4Tool9SetOffsetEjfb
 1090              		.syntax unified
 1091              		.thumb
 1092              		.thumb_func
 1093              		.fpu fpv4-sp-d16
 1094              		.type	_ZN4Tool9SetOffsetEjfb, %function
 1095              	_ZN4Tool9SetOffsetEjfb:
 1096              		@ args = 0, pretend = 0, frame = 0
 1097              		@ frame_needed = 0, uses_anonymous_args = 0
 1098              		@ link register save eliminated.
 1099 0000 00EB8103 		add	r3, r0, r1, lsl #2
 1100 0004 83ED030A 		vstr.32	s0, [r3, #12]
 1101 0008 3AB1     		cbz	r2, .L290
 1102 000a D0F8A830 		ldr	r3, [r0, #168]
 1103 000e 0122     		movs	r2, #1
 1104 0010 02FA01F1 		lsl	r1, r2, r1
 1105 0014 0B43     		orrs	r3, r3, r1
 1106 0016 C0F8A830 		str	r3, [r0, #168]
 1107              	.L290:
 1108 001a 7047     		bx	lr
 1109              		.size	_ZN4Tool9SetOffsetEjfb, .-_ZN4Tool9SetOffsetEjfb
 1110              		.section	.text._ZNK4Tool30GetToolHeaterActiveTemperatureEj,"ax",%progbits
 1111              		.align	1
 1112              		.p2align 2,,3
 1113              		.global	_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 1114              		.syntax unified
 1115              		.thumb
 1116              		.thumb_func
 1117              		.fpu fpv4-sp-d16
 1118              		.type	_ZNK4Tool30GetToolHeaterActiveTemperatureEj, %function
 1119              	_ZNK4Tool30GetToolHeaterActiveTemperatureEj:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122              		@ link register save eliminated.
 1123 0000 D0F89830 		ldr	r3, [r0, #152]
 1124 0004 8B42     		cmp	r3, r1
 1125 0006 86BF     		itte	hi
 1126 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 1127 000c 90ED150A 		vldrhi.32	s0, [r0, #84]
 1128 0010 9FED010A 		vldrls.32	s0, .L298
 1129 0014 7047     		bx	lr
 1130              	.L299:
 1131 0016 00BF     		.align	2
 1132              	.L298:
 1133 0018 00000000 		.word	0
 1134              		.size	_ZNK4Tool30GetToolHeaterActiveTemperatureEj, .-_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 1135              		.section	.text._ZNK4Tool31GetToolHeaterStandbyTemperatureEj,"ax",%progbits
 1136              		.align	1
 1137              		.p2align 2,,3
 1138              		.global	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 1139              		.syntax unified
 1140              		.thumb
ARM GAS  /tmp/ccN8ORdD.s 			page 21


 1141              		.thumb_func
 1142              		.fpu fpv4-sp-d16
 1143              		.type	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj, %function
 1144              	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj:
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147              		@ link register save eliminated.
 1148 0000 D0F89830 		ldr	r3, [r0, #152]
 1149 0004 8B42     		cmp	r3, r1
 1150 0006 86BF     		itte	hi
 1151 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 1152 000c 90ED1D0A 		vldrhi.32	s0, [r0, #116]
 1153 0010 9FED010A 		vldrls.32	s0, .L303
 1154 0014 7047     		bx	lr
 1155              	.L304:
 1156 0016 00BF     		.align	2
 1157              	.L303:
 1158 0018 00000000 		.word	0
 1159              		.size	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj, .-_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 1160              		.section	.text._ZN4Tool30SetToolHeaterActiveTemperatureEjf,"ax",%progbits
 1161              		.align	1
 1162              		.p2align 2,,3
 1163              		.global	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 1164              		.syntax unified
 1165              		.thumb
 1166              		.thumb_func
 1167              		.fpu fpv4-sp-d16
 1168              		.type	_ZN4Tool30SetToolHeaterActiveTemperatureEjf, %function
 1169              	_ZN4Tool30SetToolHeaterActiveTemperatureEjf:
 1170              		@ args = 0, pretend = 0, frame = 0
 1171              		@ frame_needed = 0, uses_anonymous_args = 0
 1172 0000 D0F89830 		ldr	r3, [r0, #152]
 1173 0004 8B42     		cmp	r3, r1
 1174 0006 28D9     		bls	.L333
 1175 0008 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1176 000c 2C4E     		ldr	r6, .L339
 1177 000e DFED2D7A 		vldr.32	s15, .L339+4
 1178 0012 336B     		ldr	r3, [r6, #48]
 1179 0014 2DED028B 		vpush.64	{d8}
 1180 0018 B4EEE70A 		vcmpe.f32	s0, s15
 1181 001c 63B1     		cbz	r3, .L338
 1182 001e 9842     		cmp	r0, r3
 1183 0020 0AD0     		beq	.L338
 1184 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1185 0026 48D5     		bpl	.L331
 1186 0028 00EB8100 		add	r0, r0, r1, lsl #2
 1187 002c 0023     		movs	r3, #0
 1188 002e 4365     		str	r3, [r0, #84]	@ float
 1189              	.L305:
 1190 0030 BDEC028B 		vldm	sp!, {d8}
 1191 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1192              	.L338:
 1193 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1194 003c 0ED5     		bpl	.L330
 1195 003e 00EB8103 		add	r3, r0, r1, lsl #2
 1196 0042 0022     		movs	r2, #0
 1197 0044 5A65     		str	r2, [r3, #84]	@ float
ARM GAS  /tmp/ccN8ORdD.s 			page 22


 1198 0046 BDEC028B 		vldm	sp!, {d8}
 1199 004a 0144     		add	r1, r1, r0
 1200 004c F068     		ldr	r0, [r6, #12]
 1201 004e 91F9B910 		ldrsb	r1, [r1, #185]
 1202 0052 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1203 0056 FFF7FEBF 		b	_ZN4Heat9SwitchOffEa
 1204              	.L333:
 1205 005a 7047     		bx	lr
 1206              	.L330:
 1207 005c 4FF00108 		mov	r8, #1
 1208              	.L309:
 1209 0060 4718     		adds	r7, r0, r1
 1210 0062 0D46     		mov	r5, r1
 1211 0064 0446     		mov	r4, r0
 1212 0066 97F9B910 		ldrsb	r1, [r7, #185]
 1213 006a F068     		ldr	r0, [r6, #12]
 1214 006c B0EE408A 		vmov.f32	s16, s0
 1215 0070 FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 1216 0074 97F9B910 		ldrsb	r1, [r7, #185]
 1217 0078 F068     		ldr	r0, [r6, #12]
 1218 007a F0EE408A 		vmov.f32	s17, s0
 1219 007e FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 1220 0082 B4EEE88A 		vcmpe.f32	s16, s17
 1221 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1222 008a D1DD     		ble	.L305
 1223 008c B4EEC08A 		vcmpe.f32	s16, s0
 1224 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1225 0094 CCD5     		bpl	.L305
 1226 0096 04EB8500 		add	r0, r4, r5, lsl #2
 1227 009a 80ED158A 		vstr.32	s16, [r0, #84]
 1228 009e B8F1000F 		cmp	r8, #0
 1229 00a2 C5D0     		beq	.L305
 1230 00a4 B0EE480A 		vmov.f32	s0, s16
 1231 00a8 BDEC028B 		vldm	sp!, {d8}
 1232 00ac 97F9B910 		ldrsb	r1, [r7, #185]
 1233 00b0 F068     		ldr	r0, [r6, #12]
 1234 00b2 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1235 00b6 FFF7FEBF 		b	_ZN4Heat20SetActiveTemperatureEaf
 1236              	.L331:
 1237 00ba 4FF00008 		mov	r8, #0
 1238 00be CFE7     		b	.L309
 1239              	.L340:
 1240              		.align	2
 1241              	.L339:
 1242 00c0 00000000 		.word	reprap
 1243 00c4 008088C3 		.word	3280502784
 1244              		.size	_ZN4Tool30SetToolHeaterActiveTemperatureEjf, .-_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 1245              		.section	.text._ZN4Tool31SetToolHeaterStandbyTemperatureEjf,"ax",%progbits
 1246              		.align	1
 1247              		.p2align 2,,3
 1248              		.global	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 1249              		.syntax unified
 1250              		.thumb
 1251              		.thumb_func
 1252              		.fpu fpv4-sp-d16
 1253              		.type	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf, %function
 1254              	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf:
ARM GAS  /tmp/ccN8ORdD.s 			page 23


 1255              		@ args = 0, pretend = 0, frame = 0
 1256              		@ frame_needed = 0, uses_anonymous_args = 0
 1257 0000 D0F89830 		ldr	r3, [r0, #152]
 1258 0004 8B42     		cmp	r3, r1
 1259 0006 54D9     		bls	.L378
 1260 0008 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1261 000c 3C4F     		ldr	r7, .L385
 1262 000e 2DED028B 		vpush.64	{d8}
 1263 0012 00EB0108 		add	r8, r0, r1
 1264 0016 3B6B     		ldr	r3, [r7, #48]
 1265 0018 FA68     		ldr	r2, [r7, #12]
 1266 001a 98F9B9C0 		ldrsb	ip, [r8, #185]
 1267 001e B3B1     		cbz	r3, .L350
 1268 0020 9842     		cmp	r0, r3
 1269 0022 53D0     		beq	.L382
 1270 0024 02EB8C03 		add	r3, r2, ip, lsl #2
 1271 0028 5B6E     		ldr	r3, [r3, #100]
 1272 002a 83B1     		cbz	r3, .L350
 1273 002c DFED357A 		vldr.32	s15, .L385+4
 1274 0030 9842     		cmp	r0, r3
 1275 0032 B4EEE70A 		vcmpe.f32	s0, s15
 1276 0036 5CD0     		beq	.L383
 1277 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1278 003c 5DD5     		bpl	.L376
 1279 003e 00EB8101 		add	r1, r0, r1, lsl #2
 1280 0042 0023     		movs	r3, #0
 1281 0044 4B67     		str	r3, [r1, #116]	@ float
 1282              	.L341:
 1283 0046 BDEC028B 		vldm	sp!, {d8}
 1284 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1285              	.L350:
 1286 004e DFED2D7A 		vldr.32	s15, .L385+4
 1287 0052 B4EEE70A 		vcmpe.f32	s0, s15
 1288 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1289 005a 2BD4     		bmi	.L384
 1290              	.L375:
 1291 005c 0126     		movs	r6, #1
 1292              	.L345:
 1293 005e 0D46     		mov	r5, r1
 1294 0060 0446     		mov	r4, r0
 1295 0062 6146     		mov	r1, ip
 1296 0064 1046     		mov	r0, r2
 1297 0066 B0EE408A 		vmov.f32	s16, s0
 1298 006a FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 1299 006e 98F9B910 		ldrsb	r1, [r8, #185]
 1300 0072 F868     		ldr	r0, [r7, #12]
 1301 0074 F0EE408A 		vmov.f32	s17, s0
 1302 0078 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 1303 007c B4EEE88A 		vcmpe.f32	s16, s17
 1304 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1305 0084 DFDD     		ble	.L341
 1306 0086 B4EEC08A 		vcmpe.f32	s16, s0
 1307 008a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1308 008e DAD5     		bpl	.L341
 1309 0090 04EB8504 		add	r4, r4, r5, lsl #2
 1310 0094 84ED1D8A 		vstr.32	s16, [r4, #116]
 1311 0098 002E     		cmp	r6, #0
ARM GAS  /tmp/ccN8ORdD.s 			page 24


 1312 009a D4D0     		beq	.L341
 1313 009c B0EE480A 		vmov.f32	s0, s16
 1314 00a0 BDEC028B 		vldm	sp!, {d8}
 1315 00a4 98F9B910 		ldrsb	r1, [r8, #185]
 1316 00a8 F868     		ldr	r0, [r7, #12]
 1317 00aa BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1318 00ae FFF7FEBF 		b	_ZN4Heat21SetStandbyTemperatureEaf
 1319              	.L378:
 1320 00b2 7047     		bx	lr
 1321              	.L384:
 1322 00b4 00EB8104 		add	r4, r0, r1, lsl #2
 1323 00b8 0023     		movs	r3, #0
 1324 00ba 6367     		str	r3, [r4, #116]	@ float
 1325 00bc BDEC028B 		vldm	sp!, {d8}
 1326 00c0 6146     		mov	r1, ip
 1327 00c2 1046     		mov	r0, r2
 1328 00c4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1329 00c8 FFF7FEBF 		b	_ZN4Heat9SwitchOffEa
 1330              	.L382:
 1331 00cc DFED0D7A 		vldr.32	s15, .L385+4
 1332 00d0 B4EEE70A 		vcmpe.f32	s0, s15
 1333 00d4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1334 00d8 C0D5     		bpl	.L375
 1335              	.L381:
 1336 00da 00EB8101 		add	r1, r0, r1, lsl #2
 1337 00de 0023     		movs	r3, #0
 1338 00e0 4B67     		str	r3, [r1, #116]	@ float
 1339 00e2 BDEC028B 		vldm	sp!, {d8}
 1340 00e6 6146     		mov	r1, ip
 1341 00e8 1046     		mov	r0, r2
 1342 00ea BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1343 00ee FFF7FEBF 		b	_ZN4Heat9SwitchOffEa
 1344              	.L383:
 1345 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1346 00f6 F0D4     		bmi	.L381
 1347 00f8 B0E7     		b	.L375
 1348              	.L376:
 1349 00fa 0026     		movs	r6, #0
 1350 00fc AFE7     		b	.L345
 1351              	.L386:
 1352 00fe 00BF     		.align	2
 1353              	.L385:
 1354 0100 00000000 		.word	reprap
 1355 0104 008088C3 		.word	3280502784
 1356              		.size	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf, .-_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 1357              		.global	_ZN4Tool8freelistE
 1358              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1359              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1360              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1361              	_ZL28cpu_irq_prev_interrupt_state:
 1362 0000 00       		.space	1
 1363              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1364              		.align	2
 1365              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1366              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1367              	_ZL32cpu_irq_critical_section_counter:
 1368 0000 00000000 		.space	4
ARM GAS  /tmp/ccN8ORdD.s 			page 25


 1369              		.section	.bss._ZN4Tool8freelistE,"aw",%nobits
 1370              		.align	2
 1371              		.set	.LANCHOR0,. + 0
 1372              		.type	_ZN4Tool8freelistE, %object
 1373              		.size	_ZN4Tool8freelistE, 4
 1374              	_ZN4Tool8freelistE:
 1375 0000 00000000 		.space	4
 1376              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1377              		.align	2
 1378              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1379              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1380              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1381 0000 00000000 		.space	4
 1382              		.section	.rodata._ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef.str1.4,"aMS",%progbits,1
 1383              		.align	2
 1384              	.LC0:
 1385 0000 546F6F6C 		.ascii	"Tool creation: too many drives\000"
 1385      20637265 
 1385      6174696F 
 1385      6E3A2074 
 1385      6F6F206D 
 1386 001f 00       		.space	1
 1387              	.LC1:
 1388 0020 546F6F6C 		.ascii	"Tool creation: too many heaters\000"
 1388      20637265 
 1388      6174696F 
 1388      6E3A2074 
 1388      6F6F206D 
 1389              	.LC2:
 1390 0040 546F6F6C 		.ascii	"Tool creation: bad drive number\000"
 1390      20637265 
 1390      6174696F 
 1390      6E3A2062 
 1390      61642064 
 1391              	.LC3:
 1392 0060 546F6F6C 		.ascii	"Tool creation: bad heater number\000"
 1392      20637265 
 1392      6174696F 
 1392      6E3A2062 
 1392      61642068 
 1393              		.section	.rodata._ZNK4Tool11MaxFeedrateEv.str1.4,"aMS",%progbits,1
 1394              		.align	2
 1395              	.LC19:
 1396 0000 41747465 		.ascii	"Attempt to get maximum feedrate for a tool with no "
 1396      6D707420 
 1396      746F2067 
 1396      6574206D 
 1396      6178696D 
 1397 0033 64726976 		.ascii	"drives.\012\000"
 1397      65732E0A 
 1397      00
 1398              		.section	.rodata._ZNK4Tool13WriteSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 1399              		.align	2
 1400              	.LC20:
 1401 0000 47313020 		.ascii	"G10 P%d \000"
 1401      50256420 
 1401      00
ARM GAS  /tmp/ccN8ORdD.s 			page 26


 1402 0009 000000   		.space	3
 1403              	.LC21:
 1404 000c 54256420 		.ascii	"T%d P0\012\000"
 1404      50300A00 
 1405              		.section	.rodata._ZNK4Tool5PrintERK9StringRef.str1.4,"aMS",%progbits,1
 1406              		.align	2
 1407              	.LC4:
 1408 0000 6F666600 		.ascii	"off\000"
 1409              	.LC5:
 1410 0004 73656C65 		.ascii	"selected\000"
 1410      63746564 
 1410      00
 1411 000d 000000   		.space	3
 1412              	.LC6:
 1413 0010 7374616E 		.ascii	"standby\000"
 1413      64627900 
 1414              	.LC7:
 1415 0018 546F6F6C 		.ascii	"Tool %d - \000"
 1415      20256420 
 1415      2D2000
 1416 0023 00       		.space	1
 1417              	.LC8:
 1418 0024 6E616D65 		.ascii	"name: %s; \000"
 1418      3A202573 
 1418      3B2000
 1419 002f 00       		.space	1
 1420              	.LC9:
 1421 0030 64726976 		.ascii	"drives:\000"
 1421      65733A00 
 1422              	.LC10:
 1423 0038 25632564 		.ascii	"%c%d\000"
 1423      00
 1424 003d 000000   		.space	3
 1425              	.LC11:
 1426 0040 3B206865 		.ascii	"; heaters (active/standby temps):\000"
 1426      61746572 
 1426      73202861 
 1426      63746976 
 1426      652F7374 
 1427 0062 0000     		.space	2
 1428              	.LC12:
 1429 0064 25632564 		.ascii	"%c%d (%.1f/%.1f)\000"
 1429      2028252E 
 1429      31662F25 
 1429      2E316629 
 1429      00
 1430 0075 000000   		.space	3
 1431              	.LC13:
 1432 0078 3B20786D 		.ascii	"; xmap:\000"
 1432      61703A00 
 1433              	.LC14:
 1434 0080 25632563 		.ascii	"%c%c\000"
 1434      00
 1435 0085 000000   		.space	3
 1436              	.LC15:
 1437 0088 3B20796D 		.ascii	"; ymap:\000"
 1437      61703A00 
ARM GAS  /tmp/ccN8ORdD.s 			page 27


 1438              	.LC16:
 1439 0090 3B206661 		.ascii	"; fans:\000"
 1439      6E733A00 
 1440              	.LC17:
 1441 0098 25632575 		.ascii	"%c%u\000"
 1441      00
 1442 009d 000000   		.space	3
 1443              	.LC18:
 1444 00a0 3B207374 		.ascii	"; status: %s\000"
 1444      61747573 
 1444      3A202573 
 1444      00
 1445              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
