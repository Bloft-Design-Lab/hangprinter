ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 1


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
  13              		.file	"GCodeBuffer.cpp"
  14              		.text
  15              		.section	.text._ZN11GCodeBufferC2EPKc11MessageTypeb,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN11GCodeBufferC2EPKc11MessageTypeb
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN11GCodeBufferC2EPKc11MessageTypeb, %function
  24              	_ZN11GCodeBufferC2EPKc11MessageTypeb:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  28 0004 0446     		mov	r4, r0
  29 0006 1C20     		movs	r0, #28
  30 0008 8846     		mov	r8, r1
  31 000a 1746     		mov	r7, r2
  32 000c 1E46     		mov	r6, r3
  33 000e FFF7FEFF 		bl	_Znwj
  34 0012 8146     		mov	r9, r0
  35 0014 FFF7FEFF 		bl	_ZN17GCodeMachineStateC1Ev
  36 0018 0020     		movs	r0, #0
  37 001a C4E90B00 		strd	r0, r0, [r4, #44]
  38 001e C4E90700 		strd	r0, r0, [r4, #28]
  39 0022 C4E90298 		strd	r9, r8, [r4, #8]
  40 0026 4FF0FF35 		mov	r5, #-1
  41 002a 84F83400 		strb	r0, [r4, #52]
  42 002e A063     		str	r0, [r4, #56]
  43 0030 84F8F600 		strb	r0, [r4, #246]
  44 0034 84F8F900 		strb	r0, [r4, #249]
  45 0038 2071     		strb	r0, [r4, #4]
  46 003a 84F85200 		strb	r0, [r4, #82]
  47 003e 84F85100 		strb	r0, [r4, #81]
  48 0042 84F85000 		strb	r0, [r4, #80]
  49 0046 84F82800 		strb	r0, [r4, #40]
  50 004a A787     		strh	r7, [r4, #60]	@ movhi
  51 004c 84F8F860 		strb	r6, [r4, #248]
  52 0050 6562     		str	r5, [r4, #36]
  53 0052 2046     		mov	r0, r4
  54 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  55              		.size	_ZN11GCodeBufferC2EPKc11MessageTypeb, .-_ZN11GCodeBufferC2EPKc11MessageTypeb
  56              		.global	_ZN11GCodeBufferC1EPKc11MessageTypeb
  57              		.thumb_set _ZN11GCodeBufferC1EPKc11MessageTypeb,_ZN11GCodeBufferC2EPKc11MessageTypeb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 2


  58              		.section	.text._ZN11GCodeBuffer5ResetEv,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	_ZN11GCodeBuffer5ResetEv
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZN11GCodeBuffer5ResetEv, %function
  67              	_ZN11GCodeBuffer5ResetEv:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 10B5     		push	{r4, lr}
  71 0002 0446     		mov	r4, r0
  72 0004 8068     		ldr	r0, [r0, #8]
  73 0006 0368     		ldr	r3, [r0]
  74 0008 33B1     		cbz	r3, .L6
  75              	.L5:
  76 000a A360     		str	r3, [r4, #8]
  77 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
  78 0010 A068     		ldr	r0, [r4, #8]
  79 0012 0368     		ldr	r3, [r0]
  80 0014 002B     		cmp	r3, #0
  81 0016 F8D1     		bne	.L5
  82              	.L6:
  83 0018 427E     		ldrb	r2, [r0, #25]	@ zero_extendqisi2
  84 001a 02F0FB02 		and	r2, r2, #251
  85 001e 0023     		movs	r3, #0
  86 0020 6FF34102 		bfc	r2, #1, #1
  87 0024 4276     		strb	r2, [r0, #25]
  88 0026 C4E90733 		strd	r3, r3, [r4, #28]
  89 002a 4FF0FF31 		mov	r1, #-1
  90 002e 2371     		strb	r3, [r4, #4]
  91 0030 84F85230 		strb	r3, [r4, #82]
  92 0034 84F85130 		strb	r3, [r4, #81]
  93 0038 84F85030 		strb	r3, [r4, #80]
  94 003c 84F82830 		strb	r3, [r4, #40]
  95 0040 6162     		str	r1, [r4, #36]
  96 0042 10BD     		pop	{r4, pc}
  97              		.size	_ZN11GCodeBuffer5ResetEv, .-_ZN11GCodeBuffer5ResetEv
  98              		.section	.text._ZN11GCodeBuffer4InitEv,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN11GCodeBuffer4InitEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZN11GCodeBuffer4InitEv, %function
 107              	_ZN11GCodeBuffer4InitEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0023     		movs	r3, #0
 112 0002 4FF0FF32 		mov	r2, #-1
 113 0006 C0E90832 		strd	r3, r2, [r0, #32]
 114 000a C361     		str	r3, [r0, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 3


 115 000c 0371     		strb	r3, [r0, #4]
 116 000e 80F85230 		strb	r3, [r0, #82]
 117 0012 80F85130 		strb	r3, [r0, #81]
 118 0016 80F85030 		strb	r3, [r0, #80]
 119 001a 80F82830 		strb	r3, [r0, #40]
 120 001e 7047     		bx	lr
 121              		.size	_ZN11GCodeBuffer4InitEv, .-_ZN11GCodeBuffer4InitEv
 122              		.section	.text._ZN11GCodeBuffer13DecodeCommandEv,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_ZN11GCodeBuffer13DecodeCommandEv
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	_ZN11GCodeBuffer13DecodeCommandEv, %function
 131              	_ZN11GCodeBuffer13DecodeCommandEv:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 135 0004 0569     		ldr	r5, [r0, #16]
 136 0006 4319     		adds	r3, r0, r5
 137 0008 0646     		mov	r6, r0
 138 000a 93F85500 		ldrb	r0, [r3, #85]	@ zero_extendqisi2
 139 000e FFF7FEFF 		bl	toupper
 140 0012 C0B2     		uxtb	r0, r0
 141 0014 A0F14703 		sub	r3, r0, #71
 142 0018 DBB2     		uxtb	r3, r3
 143 001a 4FF0FF32 		mov	r2, #-1
 144 001e 0021     		movs	r1, #0
 145 0020 0D2B     		cmp	r3, #13
 146 0022 86F85400 		strb	r0, [r6, #84]
 147 0026 86F85310 		strb	r1, [r6, #83]
 148 002a B264     		str	r2, [r6, #72]
 149 002c 86F8F720 		strb	r2, [r6, #247]
 150 0030 07D9     		bls	.L15
 151 0032 326A     		ldr	r2, [r6, #32]
 152              	.L16:
 153 0034 C6E90552 		strd	r5, r2, [r6, #20]
 154              	.L22:
 155 0038 0823     		movs	r3, #8
 156 003a 86F82830 		strb	r3, [r6, #40]
 157 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 158              	.L15:
 159 0042 42F24102 		movw	r2, #8257
 160 0046 22FA03F3 		lsr	r3, r2, r3
 161 004a DB07     		lsls	r3, r3, #31
 162 004c 326A     		ldr	r2, [r6, #32]
 163 004e F1D5     		bpl	.L16
 164 0050 6C1C     		adds	r4, r5, #1
 165 0052 3319     		adds	r3, r6, r4
 166 0054 7461     		str	r4, [r6, #20]
 167 0056 93F855C0 		ldrb	ip, [r3, #85]	@ zero_extendqisi2
 168 005a BCF12D0F 		cmp	ip, #45
 169 005e 64D0     		beq	.L40
 170 0060 93F85530 		ldrb	r3, [r3, #85]	@ zero_extendqisi2
 171 0064 303B     		subs	r3, r3, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 4


 172 0066 092B     		cmp	r3, #9
 173 0068 2ED9     		bls	.L41
 174              	.L18:
 175 006a A242     		cmp	r2, r4
 176 006c B461     		str	r4, [r6, #24]
 177 006e E3D9     		bls	.L22
 178 0070 06EB0209 		add	r9, r6, r2
 179 0074 5534     		adds	r4, r4, #85
 180 0076 0022     		movs	r2, #0
 181 0078 6FF05408 		mvn	r8, #84
 182 007c 3444     		add	r4, r4, r6
 183 007e 09F15509 		add	r9, r9, #85
 184 0082 1746     		mov	r7, r2
 185 0084 A8EB0608 		sub	r8, r8, r6
 186 0088 16E0     		b	.L27
 187              	.L23:
 188 008a 87B9     		cbnz	r7, .L24
 189 008c 2846     		mov	r0, r5
 190 008e 32B1     		cbz	r2, .L25
 191 0090 FFF7FEFF 		bl	toupper
 192 0094 C0B2     		uxtb	r0, r0
 193 0096 4728     		cmp	r0, #71
 194 0098 CED0     		beq	.L22
 195 009a 4D28     		cmp	r0, #77
 196 009c CCD0     		beq	.L22
 197              	.L25:
 198 009e 202D     		cmp	r5, #32
 199 00a0 1DBF     		ittte	ne
 200 00a2 A5F10902 		subne	r2, r5, #9
 201 00a6 B2FA82F2 		clzne	r2, r2
 202 00aa 5209     		lsrne	r2, r2, #5
 203 00ac 0122     		moveq	r2, #1
 204              	.L24:
 205 00ae 08EB0403 		add	r3, r8, r4
 206 00b2 A145     		cmp	r9, r4
 207 00b4 B361     		str	r3, [r6, #24]
 208 00b6 BFD0     		beq	.L22
 209              	.L27:
 210 00b8 14F8015B 		ldrb	r5, [r4], #1	@ zero_extendqisi2
 211 00bc 222D     		cmp	r5, #34
 212 00be E4D1     		bne	.L23
 213 00c0 87F00107 		eor	r7, r7, #1
 214 00c4 0022     		movs	r2, #0
 215 00c6 F2E7     		b	.L24
 216              	.L41:
 217 00c8 0121     		movs	r1, #1
 218 00ca 0023     		movs	r3, #0
 219 00cc 04F15500 		add	r0, r4, #85
 220 00d0 86F85310 		strb	r1, [r6, #83]
 221 00d4 B364     		str	r3, [r6, #72]
 222 00d6 3044     		add	r0, r0, r6
 223 00d8 A646     		mov	lr, r4
 224 00da 00E0     		b	.L19
 225              	.L28:
 226 00dc A646     		mov	lr, r4
 227              	.L19:
 228 00de 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 5


 229 00e0 10F8015F 		ldrb	r5, [r0, #1]!	@ zero_extendqisi2
 230 00e4 A5F13007 		sub	r7, r5, #48
 231 00e8 03EB8303 		add	r3, r3, r3, lsl #2
 232 00ec 3039     		subs	r1, r1, #48
 233 00ee 092F     		cmp	r7, #9
 234 00f0 04F10104 		add	r4, r4, #1
 235 00f4 01EB4303 		add	r3, r1, r3, lsl #1
 236 00f8 F0D9     		bls	.L28
 237 00fa BCF12D0F 		cmp	ip, #45
 238 00fe B364     		str	r3, [r6, #72]
 239 0100 04BF     		itt	eq
 240 0102 5B42     		rsbeq	r3, r3, #0
 241 0104 B364     		streq	r3, [r6, #72]
 242 0106 2E2D     		cmp	r5, #46
 243 0108 7461     		str	r4, [r6, #20]
 244 010a AED1     		bne	.L18
 245 010c 0EF10204 		add	r4, lr, #2
 246 0110 3319     		adds	r3, r6, r4
 247 0112 7461     		str	r4, [r6, #20]
 248 0114 93F85530 		ldrb	r3, [r3, #85]	@ zero_extendqisi2
 249 0118 303B     		subs	r3, r3, #48
 250 011a 092B     		cmp	r3, #9
 251 011c A5D8     		bhi	.L18
 252 011e 0EF10304 		add	r4, lr, #3
 253 0122 7461     		str	r4, [r6, #20]
 254 0124 86F8F730 		strb	r3, [r6, #247]
 255 0128 9FE7     		b	.L18
 256              	.L40:
 257 012a AC1C     		adds	r4, r5, #2
 258 012c 3319     		adds	r3, r6, r4
 259 012e 7461     		str	r4, [r6, #20]
 260 0130 93F85530 		ldrb	r3, [r3, #85]	@ zero_extendqisi2
 261 0134 303B     		subs	r3, r3, #48
 262 0136 092B     		cmp	r3, #9
 263 0138 97D8     		bhi	.L18
 264 013a C5E7     		b	.L41
 265              		.size	_ZN11GCodeBuffer13DecodeCommandEv, .-_ZN11GCodeBuffer13DecodeCommandEv
 266              		.section	.text._ZN11GCodeBuffer12LineFinishedEv,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	_ZN11GCodeBuffer12LineFinishedEv
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv4-sp-d16
 274              		.type	_ZN11GCodeBuffer12LineFinishedEv, %function
 275              	_ZN11GCodeBuffer12LineFinishedEv:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 036A     		ldr	r3, [r0, #32]
 279 0002 6BB3     		cbz	r3, .L79
 280 0004 10B5     		push	{r4, lr}
 281 0006 A12B     		cmp	r3, #161
 282 0008 82B0     		sub	sp, sp, #8
 283 000a 0446     		mov	r4, r0
 284 000c 51D0     		beq	.L80
 285 000e 0344     		add	r3, r3, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 6


 286 0010 0022     		movs	r2, #0
 287 0012 83F85520 		strb	r2, [r3, #85]
 288 0016 90F85230 		ldrb	r3, [r0, #82]	@ zero_extendqisi2
 289 001a 494A     		ldr	r2, .L87
 290 001c 7BB3     		cbz	r3, .L46
 291 001e 90F85000 		ldrb	r0, [r0, #80]	@ zero_extendqisi2
 292 0022 616C     		ldr	r1, [r4, #68]
 293 0024 D2F80831 		ldr	r3, [r2, #264]
 294 0028 8842     		cmp	r0, r1
 295 002a 03F00803 		and	r3, r3, #8
 296 002e 2DD0     		beq	.L72
 297 0030 002B     		cmp	r3, #0
 298 0032 6BD1     		bne	.L81
 299              	.L53:
 300 0034 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 301 0038 002B     		cmp	r3, #0
 302 003a 43D1     		bne	.L82
 303              	.L56:
 304 003c 0023     		movs	r3, #0
 305 003e 4FF0FF32 		mov	r2, #-1
 306 0042 1846     		mov	r0, r3
 307 0044 C4E90733 		strd	r3, r3, [r4, #28]
 308 0048 2371     		strb	r3, [r4, #4]
 309 004a 84F85230 		strb	r3, [r4, #82]
 310 004e 84F85130 		strb	r3, [r4, #81]
 311 0052 84F85030 		strb	r3, [r4, #80]
 312 0056 84F82830 		strb	r3, [r4, #40]
 313 005a 6262     		str	r2, [r4, #36]
 314 005c 02B0     		add	sp, sp, #8
 315              		@ sp needed
 316 005e 10BD     		pop	{r4, pc}
 317              	.L79:
 318 0060 4FF0FF32 		mov	r2, #-1
 319 0064 C361     		str	r3, [r0, #28]
 320 0066 0371     		strb	r3, [r0, #4]
 321 0068 80F85230 		strb	r3, [r0, #82]
 322 006c 80F85130 		strb	r3, [r0, #81]
 323 0070 80F85030 		strb	r3, [r0, #80]
 324 0074 80F82830 		strb	r3, [r0, #40]
 325 0078 4262     		str	r2, [r0, #36]
 326 007a 1846     		mov	r0, r3
 327 007c 7047     		bx	lr
 328              	.L46:
 329 007e D2F80831 		ldr	r3, [r2, #264]
 330 0082 90F8F610 		ldrb	r1, [r0, #246]	@ zero_extendqisi2
 331 0086 03F00803 		and	r3, r3, #8
 332 008a 61B9     		cbnz	r1, .L83
 333              	.L72:
 334 008c 13B1     		cbz	r3, .L57
 335 008e E36A     		ldr	r3, [r4, #44]
 336 0090 002B     		cmp	r3, #0
 337 0092 2FD0     		beq	.L84
 338              	.L57:
 339 0094 0023     		movs	r3, #0
 340 0096 2361     		str	r3, [r4, #16]
 341 0098 2046     		mov	r0, r4
 342 009a FFF7FEFF 		bl	_ZN11GCodeBuffer13DecodeCommandEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 7


 343 009e 0123     		movs	r3, #1
 344 00a0 1846     		mov	r0, r3
 345 00a2 02B0     		add	sp, sp, #8
 346              		@ sp needed
 347 00a4 10BD     		pop	{r4, pc}
 348              	.L83:
 349 00a6 A168     		ldr	r1, [r4, #8]
 350 00a8 0968     		ldr	r1, [r1]
 351 00aa 9BB9     		cbnz	r3, .L85
 352              	.L51:
 353 00ac 0029     		cmp	r1, #0
 354 00ae C5D0     		beq	.L56
 355 00b0 F0E7     		b	.L57
 356              	.L80:
 357 00b2 234A     		ldr	r2, .L87
 358 00b4 C368     		ldr	r3, [r0, #12]
 359 00b6 5068     		ldr	r0, [r2, #4]	@ unaligned
 360 00b8 224A     		ldr	r2, .L87+4
 361 00ba 40F2B511 		movw	r1, #437
 362 00be FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 363 00c2 BBE7     		b	.L56
 364              	.L82:
 365 00c4 236C     		ldr	r3, [r4, #64]
 366 00c6 204A     		ldr	r2, .L87+8
 367 00c8 A121     		movs	r1, #161
 368 00ca 04F15500 		add	r0, r4, #85
 369 00ce FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
 370 00d2 DFE7     		b	.L57
 371              	.L85:
 372 00d4 E36A     		ldr	r3, [r4, #44]
 373 00d6 002B     		cmp	r3, #0
 374 00d8 E8D1     		bne	.L51
 375 00da 5068     		ldr	r0, [r2, #4]
 376 00dc E368     		ldr	r3, [r4, #12]
 377 00de 21BB     		cbnz	r1, .L86
 378 00e0 1A4A     		ldr	r2, .L87+12
 379 00e2 04F15501 		add	r1, r4, #85
 380 00e6 CDE90021 		strd	r2, r1, [sp]
 381 00ea 194A     		ldr	r2, .L87+16
 382 00ec 0221     		movs	r1, #2
 383 00ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 384 00f2 A3E7     		b	.L56
 385              	.L84:
 386 00f4 5068     		ldr	r0, [r2, #4]
 387 00f6 174A     		ldr	r2, .L87+20
 388 00f8 E368     		ldr	r3, [r4, #12]
 389 00fa 0092     		str	r2, [sp]
 390 00fc 04F15502 		add	r2, r4, #85
 391 0100 0192     		str	r2, [sp, #4]
 392 0102 0221     		movs	r1, #2
 393 0104 124A     		ldr	r2, .L87+16
 394 0106 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 395 010a C3E7     		b	.L57
 396              	.L81:
 397 010c E36A     		ldr	r3, [r4, #44]
 398 010e 002B     		cmp	r3, #0
 399 0110 90D1     		bne	.L53
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 8


 400 0112 5068     		ldr	r0, [r2, #4]
 401 0114 104A     		ldr	r2, .L87+24
 402 0116 E368     		ldr	r3, [r4, #12]
 403 0118 0092     		str	r2, [sp]
 404 011a 04F15502 		add	r2, r4, #85
 405 011e 0192     		str	r2, [sp, #4]
 406 0120 0221     		movs	r1, #2
 407 0122 0B4A     		ldr	r2, .L87+16
 408 0124 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 409 0128 84E7     		b	.L53
 410              	.L86:
 411 012a 0A4A     		ldr	r2, .L87+20
 412 012c 04F15501 		add	r1, r4, #85
 413 0130 CDE90021 		strd	r2, r1, [sp]
 414 0134 064A     		ldr	r2, .L87+16
 415 0136 0221     		movs	r1, #2
 416 0138 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 417 013c AAE7     		b	.L57
 418              	.L88:
 419 013e 00BF     		.align	2
 420              	.L87:
 421 0140 00000000 		.word	reprap
 422 0144 00000000 		.word	.LC0
 423 0148 4C000000 		.word	.LC5
 424 014c 40000000 		.word	.LC4
 425 0150 24000000 		.word	.LC1
 426 0154 30000000 		.word	.LC2
 427 0158 34000000 		.word	.LC3
 428              		.size	_ZN11GCodeBuffer12LineFinishedEv, .-_ZN11GCodeBuffer12LineFinishedEv
 429              		.section	.text.hot._ZN11GCodeBuffer3PutEc,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	_ZN11GCodeBuffer3PutEc
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv4-sp-d16
 437              		.type	_ZN11GCodeBuffer3PutEc, %function
 438              	_ZN11GCodeBuffer3PutEc:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442 0000 A1B1     		cbz	r1, .L91
 443 0002 C369     		ldr	r3, [r0, #28]
 444 0004 0A29     		cmp	r1, #10
 445 0006 03F10103 		add	r3, r3, #1
 446 000a C361     		str	r3, [r0, #28]
 447 000c 0ED0     		beq	.L91
 448 000e 0D29     		cmp	r1, #13
 449 0010 0CD0     		beq	.L91
 450 0012 7F29     		cmp	r1, #127
 451 0014 90F82830 		ldrb	r3, [r0, #40]	@ zero_extendqisi2
 452 0018 00F09280 		beq	.L150
 453 001c 062B     		cmp	r3, #6
 454 001e 0FD8     		bhi	.L139
 455 0020 DFE803F0 		tbb	[pc, r3]
 456              	.L96:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 9


 457 0024 7A       		.byte	(.L95-.L96)/2
 458 0025 2C       		.byte	(.L97-.L96)/2
 459 0026 34       		.byte	(.L98-.L96)/2
 460 0027 3D       		.byte	(.L99-.L96)/2
 461 0028 23       		.byte	(.L100-.L96)/2
 462 0029 10       		.byte	(.L101-.L96)/2
 463 002a 06       		.byte	(.L102-.L96)/2
 464 002b 00       		.p2align 1
 465              	.L91:
 466 002c FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 467              	.L102:
 468 0030 A1F13003 		sub	r3, r1, #48
 469 0034 092B     		cmp	r3, #9
 470 0036 40F2C980 		bls	.L151
 471              	.L117:
 472 003a 0723     		movs	r3, #7
 473 003c 80F82830 		strb	r3, [r0, #40]
 474              	.L139:
 475 0040 0020     		movs	r0, #0
 476 0042 7047     		bx	lr
 477              	.L101:
 478 0044 90F85020 		ldrb	r2, [r0, #80]	@ zero_extendqisi2
 479 0048 036A     		ldr	r3, [r0, #32]
 480 004a 4A40     		eors	r2, r2, r1
 481 004c A02B     		cmp	r3, #160
 482 004e 80F85020 		strb	r2, [r0, #80]
 483 0052 04D8     		bhi	.L115
 484 0054 C218     		adds	r2, r0, r3
 485 0056 0133     		adds	r3, r3, #1
 486 0058 0362     		str	r3, [r0, #32]
 487 005a 82F85510 		strb	r1, [r2, #85]
 488              	.L115:
 489 005e 2229     		cmp	r1, #34
 490 0060 EED1     		bne	.L139
 491              	.L116:
 492 0062 0323     		movs	r3, #3
 493 0064 80F82830 		strb	r3, [r0, #40]
 494 0068 EAE7     		b	.L139
 495              	.L100:
 496 006a 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 497 006e 2929     		cmp	r1, #41
 498 0070 83EA0103 		eor	r3, r3, r1
 499 0074 80F85030 		strb	r3, [r0, #80]
 500 0078 E2D1     		bne	.L139
 501 007a F2E7     		b	.L116
 502              	.L97:
 503 007c A1F13003 		sub	r3, r1, #48
 504 0080 092B     		cmp	r3, #9
 505 0082 40F2AB80 		bls	.L152
 506 0086 0223     		movs	r3, #2
 507 0088 80F82830 		strb	r3, [r0, #40]
 508              	.L98:
 509 008c 0929     		cmp	r1, #9
 510 008e 62D0     		beq	.L104
 511 0090 2029     		cmp	r1, #32
 512 0092 60D0     		beq	.L104
 513              	.L103:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 10


 514 0094 0322     		movs	r2, #3
 515 0096 0023     		movs	r3, #0
 516 0098 80F82820 		strb	r2, [r0, #40]
 517 009c 0361     		str	r3, [r0, #16]
 518              	.L99:
 519 009e A1F12203 		sub	r3, r1, #34
 520 00a2 192B     		cmp	r3, #25
 521 00a4 00F28380 		bhi	.L108
 522 00a8 01A2     		adr	r2, .L110
 523 00aa 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 524 00ae 00BF     		.p2align 2
 525              	.L110:
 526 00b0 63010000 		.word	.L109+1
 527 00b4 AF010000 		.word	.L108+1
 528 00b8 AF010000 		.word	.L108+1
 529 00bc AF010000 		.word	.L108+1
 530 00c0 AF010000 		.word	.L108+1
 531 00c4 AF010000 		.word	.L108+1
 532 00c8 9B010000 		.word	.L111+1
 533 00cc AF010000 		.word	.L108+1
 534 00d0 89010000 		.word	.L112+1
 535 00d4 AF010000 		.word	.L108+1
 536 00d8 AF010000 		.word	.L108+1
 537 00dc AF010000 		.word	.L108+1
 538 00e0 AF010000 		.word	.L108+1
 539 00e4 AF010000 		.word	.L108+1
 540 00e8 AF010000 		.word	.L108+1
 541 00ec AF010000 		.word	.L108+1
 542 00f0 AF010000 		.word	.L108+1
 543 00f4 AF010000 		.word	.L108+1
 544 00f8 AF010000 		.word	.L108+1
 545 00fc AF010000 		.word	.L108+1
 546 0100 AF010000 		.word	.L108+1
 547 0104 AF010000 		.word	.L108+1
 548 0108 AF010000 		.word	.L108+1
 549 010c AF010000 		.word	.L108+1
 550 0110 AF010000 		.word	.L108+1
 551 0114 3B000000 		.word	.L117+1
 552              		.p2align 1
 553              	.L95:
 554 0118 2029     		cmp	r1, #32
 555 011a 1CD0     		beq	.L104
 556 011c 19D9     		bls	.L153
 557 011e 4E29     		cmp	r1, #78
 558 0120 01D0     		beq	.L106
 559 0122 6E29     		cmp	r1, #110
 560 0124 B6D1     		bne	.L103
 561              	.L106:
 562 0126 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 563 012a 0122     		movs	r2, #1
 564 012c 5940     		eors	r1, r1, r3
 565 012e 0023     		movs	r3, #0
 566 0130 80F85010 		strb	r1, [r0, #80]
 567 0134 80F85120 		strb	r2, [r0, #81]
 568 0138 80F82820 		strb	r2, [r0, #40]
 569 013c 0364     		str	r3, [r0, #64]
 570 013e 7FE7     		b	.L139
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 11


 571              	.L150:
 572 0140 072B     		cmp	r3, #7
 573 0142 3FF47DAF 		beq	.L139
 574 0146 0022     		movs	r2, #0
 575 0148 0723     		movs	r3, #7
 576 014a 0262     		str	r2, [r0, #32]
 577 014c 80F82830 		strb	r3, [r0, #40]
 578 0150 76E7     		b	.L139
 579              	.L153:
 580 0152 0929     		cmp	r1, #9
 581 0154 9ED1     		bne	.L103
 582              	.L104:
 583 0156 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 584 015a 5940     		eors	r1, r1, r3
 585 015c 80F85010 		strb	r1, [r0, #80]
 586 0160 6EE7     		b	.L139
 587              	.L109:
 588 0162 90F85020 		ldrb	r2, [r0, #80]	@ zero_extendqisi2
 589 0166 036A     		ldr	r3, [r0, #32]
 590 0168 82F02202 		eor	r2, r2, #34
 591 016c A02B     		cmp	r3, #160
 592 016e 80F85020 		strb	r2, [r0, #80]
 593 0172 05D8     		bhi	.L114
 594 0174 C218     		adds	r2, r0, r3
 595 0176 2221     		movs	r1, #34
 596 0178 0133     		adds	r3, r3, #1
 597 017a 0362     		str	r3, [r0, #32]
 598 017c 82F85510 		strb	r1, [r2, #85]
 599              	.L114:
 600 0180 0523     		movs	r3, #5
 601 0182 80F82830 		strb	r3, [r0, #40]
 602 0186 5BE7     		b	.L139
 603              	.L112:
 604 0188 0021     		movs	r1, #0
 605 018a 0122     		movs	r2, #1
 606 018c 0623     		movs	r3, #6
 607 018e 4164     		str	r1, [r0, #68]
 608 0190 80F85220 		strb	r2, [r0, #82]
 609 0194 80F82830 		strb	r3, [r0, #40]
 610 0198 52E7     		b	.L139
 611              	.L111:
 612 019a 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 613 019e 0422     		movs	r2, #4
 614 01a0 83F02803 		eor	r3, r3, #40
 615 01a4 80F85030 		strb	r3, [r0, #80]
 616 01a8 80F82820 		strb	r2, [r0, #40]
 617 01ac 48E7     		b	.L139
 618              	.L108:
 619 01ae 90F85020 		ldrb	r2, [r0, #80]	@ zero_extendqisi2
 620 01b2 036A     		ldr	r3, [r0, #32]
 621 01b4 4A40     		eors	r2, r2, r1
 622 01b6 A02B     		cmp	r3, #160
 623 01b8 80F85020 		strb	r2, [r0, #80]
 624 01bc 3FF640AF 		bhi	.L139
 625 01c0 C218     		adds	r2, r0, r3
 626 01c2 0133     		adds	r3, r3, #1
 627 01c4 0362     		str	r3, [r0, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 12


 628 01c6 82F85510 		strb	r1, [r2, #85]
 629 01ca 39E7     		b	.L139
 630              	.L151:
 631 01cc 436C     		ldr	r3, [r0, #68]
 632 01ce 03EB8303 		add	r3, r3, r3, lsl #2
 633 01d2 01EB4303 		add	r3, r1, r3, lsl #1
 634 01d6 303B     		subs	r3, r3, #48
 635 01d8 4364     		str	r3, [r0, #68]
 636 01da 31E7     		b	.L139
 637              	.L152:
 638 01dc 036C     		ldr	r3, [r0, #64]
 639 01de 90F85020 		ldrb	r2, [r0, #80]	@ zero_extendqisi2
 640 01e2 03EB8303 		add	r3, r3, r3, lsl #2
 641 01e6 01EB4303 		add	r3, r1, r3, lsl #1
 642 01ea 303B     		subs	r3, r3, #48
 643 01ec 5140     		eors	r1, r1, r2
 644 01ee 0364     		str	r3, [r0, #64]
 645 01f0 80F85010 		strb	r1, [r0, #80]
 646 01f4 24E7     		b	.L139
 647              		.size	_ZN11GCodeBuffer3PutEc, .-_ZN11GCodeBuffer3PutEc
 648 01f6 00BF     		.section	.text._ZN11GCodeBuffer3PutEPKcj,"ax",%progbits
 649              		.align	1
 650              		.p2align 2,,3
 651              		.global	_ZN11GCodeBuffer3PutEPKcj
 652              		.syntax unified
 653              		.thumb
 654              		.thumb_func
 655              		.fpu fpv4-sp-d16
 656              		.type	_ZN11GCodeBuffer3PutEPKcj, %function
 657              	_ZN11GCodeBuffer3PutEPKcj:
 658              		@ args = 0, pretend = 0, frame = 0
 659              		@ frame_needed = 0, uses_anonymous_args = 0
 660 0000 70B5     		push	{r4, r5, r6, lr}
 661 0002 0546     		mov	r5, r0
 662 0004 0023     		movs	r3, #0
 663 0006 4FF0FF30 		mov	r0, #-1
 664 000a C5E90830 		strd	r3, r0, [r5, #32]
 665 000e EB61     		str	r3, [r5, #28]
 666 0010 2B71     		strb	r3, [r5, #4]
 667 0012 85F85230 		strb	r3, [r5, #82]
 668 0016 85F85130 		strb	r3, [r5, #81]
 669 001a 85F85030 		strb	r3, [r5, #80]
 670 001e 85F82830 		strb	r3, [r5, #40]
 671 0022 AAB1     		cbz	r2, .L158
 672 0024 0A44     		add	r2, r2, r1
 673 0026 1618     		adds	r6, r2, r0
 674 0028 0C18     		adds	r4, r1, r0
 675 002a 01E0     		b	.L157
 676              	.L162:
 677 002c B442     		cmp	r4, r6
 678 002e 07D0     		beq	.L161
 679              	.L157:
 680 0030 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 681 0034 2846     		mov	r0, r5
 682 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 683 003a 0028     		cmp	r0, #0
 684 003c F6D0     		beq	.L162
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 13


 685 003e 70BD     		pop	{r4, r5, r6, pc}
 686              	.L161:
 687 0040 EB69     		ldr	r3, [r5, #28]
 688 0042 0133     		adds	r3, r3, #1
 689              	.L155:
 690 0044 EB61     		str	r3, [r5, #28]
 691 0046 2846     		mov	r0, r5
 692 0048 BDE87040 		pop	{r4, r5, r6, lr}
 693 004c FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 694              	.L158:
 695 0050 0123     		movs	r3, #1
 696 0052 F7E7     		b	.L155
 697              		.size	_ZN11GCodeBuffer3PutEPKcj, .-_ZN11GCodeBuffer3PutEPKcj
 698              		.section	.text._ZN11GCodeBuffer3PutEPKc,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	_ZN11GCodeBuffer3PutEPKc
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv4-sp-d16
 706              		.type	_ZN11GCodeBuffer3PutEPKc, %function
 707              	_ZN11GCodeBuffer3PutEPKc:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 38B5     		push	{r3, r4, r5, lr}
 711 0002 0546     		mov	r5, r0
 712 0004 0846     		mov	r0, r1
 713 0006 0C46     		mov	r4, r1
 714 0008 FFF7FEFF 		bl	strlen
 715 000c 2146     		mov	r1, r4
 716 000e 0246     		mov	r2, r0
 717 0010 2846     		mov	r0, r5
 718 0012 BDE83840 		pop	{r3, r4, r5, lr}
 719 0016 FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKcj
 720              		.size	_ZN11GCodeBuffer3PutEPKc, .-_ZN11GCodeBuffer3PutEPKc
 721 001a 00BF     		.section	.text._ZN11GCodeBuffer11SetFinishedEb,"ax",%progbits
 722              		.align	1
 723              		.p2align 2,,3
 724              		.global	_ZN11GCodeBuffer11SetFinishedEb
 725              		.syntax unified
 726              		.thumb
 727              		.thumb_func
 728              		.fpu fpv4-sp-d16
 729              		.type	_ZN11GCodeBuffer11SetFinishedEb, %function
 730              	_ZN11GCodeBuffer11SetFinishedEb:
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733              		@ link register save eliminated.
 734 0000 0346     		mov	r3, r0
 735 0002 D9B1     		cbz	r1, .L166
 736 0004 8269     		ldr	r2, [r0, #24]
 737 0006 016A     		ldr	r1, [r0, #32]
 738 0008 8A42     		cmp	r2, r1
 739 000a 1BD3     		bcc	.L172
 740 000c 10B4     		push	{r4}
 741 000e 8168     		ldr	r1, [r0, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 14


 742 0010 087E     		ldrb	r0, [r1, #24]	@ zero_extendqisi2
 743 0012 0022     		movs	r2, #0
 744 0014 6FF3C710 		bfc	r0, #7, #1
 745 0018 0876     		strb	r0, [r1, #24]
 746 001a C3E90722 		strd	r2, r2, [r3, #28]
 747 001e 4FF0FF34 		mov	r4, #-1
 748 0022 1A71     		strb	r2, [r3, #4]
 749 0024 83F85220 		strb	r2, [r3, #82]
 750 0028 83F85120 		strb	r2, [r3, #81]
 751 002c 83F85020 		strb	r2, [r3, #80]
 752 0030 83F82820 		strb	r2, [r3, #40]
 753 0034 5C62     		str	r4, [r3, #36]
 754 0036 5DF8044B 		ldr	r4, [sp], #4
 755 003a 7047     		bx	lr
 756              	.L166:
 757 003c 0922     		movs	r2, #9
 758 003e 80F82820 		strb	r2, [r0, #40]
 759 0042 7047     		bx	lr
 760              	.L172:
 761 0044 0261     		str	r2, [r0, #16]
 762 0046 FFF7FEBF 		b	_ZN11GCodeBuffer13DecodeCommandEv
 763              		.size	_ZN11GCodeBuffer11SetFinishedEb, .-_ZN11GCodeBuffer11SetFinishedEb
 764 004a 00BF     		.section	.text._ZNK11GCodeBuffer15GetFilePositionEj,"ax",%progbits
 765              		.align	1
 766              		.p2align 2,,3
 767              		.global	_ZNK11GCodeBuffer15GetFilePositionEj
 768              		.syntax unified
 769              		.thumb
 770              		.thumb_func
 771              		.fpu fpv4-sp-d16
 772              		.type	_ZNK11GCodeBuffer15GetFilePositionEj, %function
 773              	_ZNK11GCodeBuffer15GetFilePositionEj:
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 38B5     		push	{r3, r4, r5, lr}
 777 0002 8368     		ldr	r3, [r0, #8]
 778 0004 9B68     		ldr	r3, [r3, #8]
 779 0006 53B1     		cbz	r3, .L175
 780 0008 0446     		mov	r4, r0
 781 000a 1846     		mov	r0, r3
 782 000c 0D46     		mov	r5, r1
 783 000e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 784 0012 2169     		ldr	r1, [r4, #16]
 785 0014 E269     		ldr	r2, [r4, #28]
 786 0016 491B     		subs	r1, r1, r5
 787 0018 891A     		subs	r1, r1, r2
 788 001a 0844     		add	r0, r0, r1
 789 001c 38BD     		pop	{r3, r4, r5, pc}
 790              	.L175:
 791 001e 4FF0FF30 		mov	r0, #-1
 792 0022 38BD     		pop	{r3, r4, r5, pc}
 793              		.size	_ZNK11GCodeBuffer15GetFilePositionEj, .-_ZNK11GCodeBuffer15GetFilePositionEj
 794              		.section	.text.hot._ZN11GCodeBuffer4SeenEc,"ax",%progbits
 795              		.align	1
 796              		.p2align 2,,3
 797              		.global	_ZN11GCodeBuffer4SeenEc
 798              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 15


 799              		.thumb
 800              		.thumb_func
 801              		.fpu fpv4-sp-d16
 802              		.type	_ZN11GCodeBuffer4SeenEc, %function
 803              	_ZN11GCodeBuffer4SeenEc:
 804              		@ args = 0, pretend = 0, frame = 0
 805              		@ frame_needed = 0, uses_anonymous_args = 0
 806 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 807 0004 D0E9054A 		ldrd	r4, r10, [r0, #20]
 808 0008 5445     		cmp	r4, r10
 809 000a 0646     		mov	r6, r0
 810 000c 4462     		str	r4, [r0, #36]
 811 000e 27D2     		bcs	.L178
 812 0010 5534     		adds	r4, r4, #85
 813 0012 4FF0000B 		mov	fp, #0
 814 0016 6FF05409 		mvn	r9, #84
 815 001a 8846     		mov	r8, r1
 816 001c 0444     		add	r4, r4, r0
 817 001e 5F46     		mov	r7, fp
 818 0020 A9EB0009 		sub	r9, r9, r0
 819 0024 11E0     		b	.L184
 820              	.L179:
 821 0026 5FB9     		cbnz	r7, .L180
 822 0028 BBF1000F 		cmp	fp, #0
 823 002c 04D1     		bne	.L181
 824 002e 2846     		mov	r0, r5
 825 0030 FFF7FEFF 		bl	toupper
 826 0034 4045     		cmp	r0, r8
 827 0036 22D0     		beq	.L185
 828              	.L181:
 829 0038 5B2D     		cmp	r5, #91
 830 003a 17D0     		beq	.L191
 831 003c 5D2D     		cmp	r5, #93
 832 003e 18D0     		beq	.L192
 833              	.L180:
 834 0040 09EB0403 		add	r3, r9, r4
 835 0044 9A45     		cmp	r10, r3
 836 0046 7362     		str	r3, [r6, #36]
 837 0048 0AD9     		bls	.L178
 838              	.L184:
 839 004a 14F8015B 		ldrb	r5, [r4], #1	@ zero_extendqisi2
 840 004e 222D     		cmp	r5, #34
 841 0050 E9D1     		bne	.L179
 842 0052 09EB0403 		add	r3, r9, r4
 843 0056 9A45     		cmp	r10, r3
 844 0058 87F00107 		eor	r7, r7, #1
 845 005c 7362     		str	r3, [r6, #36]
 846 005e F4D8     		bhi	.L184
 847              	.L178:
 848 0060 4FF0FF33 		mov	r3, #-1
 849 0064 7362     		str	r3, [r6, #36]
 850 0066 0020     		movs	r0, #0
 851 0068 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 852              	.L191:
 853 006c 0BF1010B 		add	fp, fp, #1
 854 0070 E6E7     		b	.L180
 855              	.L192:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 16


 856 0072 BBF1000F 		cmp	fp, #0
 857 0076 E3D0     		beq	.L180
 858 0078 0BF1FF3B 		add	fp, fp, #-1
 859 007c E0E7     		b	.L180
 860              	.L185:
 861 007e 0120     		movs	r0, #1
 862 0080 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 863              		.size	_ZN11GCodeBuffer4SeenEc, .-_ZN11GCodeBuffer4SeenEc
 864              		.section	.text._ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef,"ax",%progbits
 865              		.align	1
 866              		.p2align 2,,3
 867              		.global	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 868              		.syntax unified
 869              		.thumb
 870              		.thumb_func
 871              		.fpu fpv4-sp-d16
 872              		.type	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, %function
 873              	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef:
 874              		@ args = 0, pretend = 0, frame = 0
 875              		@ frame_needed = 0, uses_anonymous_args = 0
 876 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 877 0004 0B68     		ldr	r3, [r1]
 878 0006 0022     		movs	r2, #0
 879 0008 1A70     		strb	r2, [r3]
 880 000a 436A     		ldr	r3, [r0, #36]
 881 000c 5D1C     		adds	r5, r3, #1
 882 000e 4219     		adds	r2, r0, r5
 883 0010 0233     		adds	r3, r3, #2
 884 0012 4362     		str	r3, [r0, #36]
 885 0014 92F85540 		ldrb	r4, [r2, #85]	@ zero_extendqisi2
 886 0018 1F2C     		cmp	r4, #31
 887 001a 30D9     		bls	.L194
 888 001c 0F46     		mov	r7, r1
 889 001e 0646     		mov	r6, r0
 890 0020 0DE0     		b	.L199
 891              	.L195:
 892 0022 272C     		cmp	r4, #39
 893 0024 17D0     		beq	.L203
 894              	.L197:
 895 0026 2146     		mov	r1, r4
 896 0028 3846     		mov	r0, r7
 897 002a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 898 002e 756A     		ldr	r5, [r6, #36]
 899 0030 6B1C     		adds	r3, r5, #1
 900 0032 7219     		adds	r2, r6, r5
 901 0034 7362     		str	r3, [r6, #36]
 902 0036 92F85540 		ldrb	r4, [r2, #85]	@ zero_extendqisi2
 903 003a 1F2C     		cmp	r4, #31
 904 003c 1FD9     		bls	.L194
 905              	.L199:
 906 003e 222C     		cmp	r4, #34
 907 0040 EFD1     		bne	.L195
 908 0042 0235     		adds	r5, r5, #2
 909 0044 3344     		add	r3, r3, r6
 910 0046 7562     		str	r5, [r6, #36]
 911 0048 93F85540 		ldrb	r4, [r3, #85]	@ zero_extendqisi2
 912 004c 222C     		cmp	r4, #34
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 17


 913 004e EAD0     		beq	.L197
 914 0050 0120     		movs	r0, #1
 915 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 916              	.L203:
 917 0056 3344     		add	r3, r3, r6
 918 0058 93F85580 		ldrb	r8, [r3, #85]	@ zero_extendqisi2
 919 005c 4046     		mov	r0, r8
 920 005e FFF7FEFF 		bl	isalpha
 921 0062 AB1C     		adds	r3, r5, #2
 922 0064 28B1     		cbz	r0, .L198
 923 0066 7362     		str	r3, [r6, #36]
 924 0068 4046     		mov	r0, r8
 925 006a FFF7FEFF 		bl	tolower
 926 006e C4B2     		uxtb	r4, r0
 927 0070 D9E7     		b	.L197
 928              	.L198:
 929 0072 B8F1270F 		cmp	r8, #39
 930 0076 04BF     		itt	eq
 931 0078 0235     		addeq	r5, r5, #2
 932 007a 7562     		streq	r5, [r6, #36]
 933 007c D3E7     		b	.L197
 934              	.L194:
 935 007e 0020     		movs	r0, #0
 936 0080 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 937              		.size	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23InternalGetQuote
 938              		.section	.text._ZN11GCodeBuffer10GetUIValueEv,"ax",%progbits
 939              		.align	1
 940              		.p2align 2,,3
 941              		.global	_ZN11GCodeBuffer10GetUIValueEv
 942              		.syntax unified
 943              		.thumb
 944              		.thumb_func
 945              		.fpu fpv4-sp-d16
 946              		.type	_ZN11GCodeBuffer10GetUIValueEv, %function
 947              	_ZN11GCodeBuffer10GetUIValueEv:
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950 0000 10B5     		push	{r4, lr}
 951 0002 0446     		mov	r4, r0
 952 0004 406A     		ldr	r0, [r0, #36]
 953 0006 0028     		cmp	r0, #0
 954 0008 09DB     		blt	.L205
 955 000a 5630     		adds	r0, r0, #86
 956 000c 2044     		add	r0, r0, r4
 957 000e 0A22     		movs	r2, #10
 958 0010 0021     		movs	r1, #0
 959 0012 FFF7FEFF 		bl	_Z11SafeStrtoulPcPS_i
 960 0016 4FF0FF33 		mov	r3, #-1
 961 001a 6362     		str	r3, [r4, #36]
 962 001c 10BD     		pop	{r4, pc}
 963              	.L205:
 964 001e 40F2F323 		movw	r3, #755
 965 0022 034A     		ldr	r2, .L208
 966 0024 0349     		ldr	r1, .L208+4
 967 0026 0448     		ldr	r0, .L208+8
 968 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 969 002c 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 18


 970 002e 10BD     		pop	{r4, pc}
 971              	.L209:
 972              		.align	2
 973              	.L208:
 974 0030 00000000 		.word	.LANCHOR0
 975 0034 00000000 		.word	.LC6
 976 0038 00000000 		.word	reprap
 977              		.size	_ZN11GCodeBuffer10GetUIValueEv, .-_ZN11GCodeBuffer10GetUIValueEv
 978              		.section	.text._ZN11GCodeBuffer18GetUIValueMaybeHexEv,"ax",%progbits
 979              		.align	1
 980              		.p2align 2,,3
 981              		.global	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 982              		.syntax unified
 983              		.thumb
 984              		.thumb_func
 985              		.fpu fpv4-sp-d16
 986              		.type	_ZN11GCodeBuffer18GetUIValueMaybeHexEv, %function
 987              	_ZN11GCodeBuffer18GetUIValueMaybeHexEv:
 988              		@ args = 0, pretend = 0, frame = 0
 989              		@ frame_needed = 0, uses_anonymous_args = 0
 990 0000 10B5     		push	{r4, lr}
 991 0002 436A     		ldr	r3, [r0, #36]
 992 0004 002B     		cmp	r3, #0
 993 0006 24DB     		blt	.L211
 994 0008 C218     		adds	r2, r0, r3
 995 000a 0446     		mov	r4, r0
 996 000c 92F85610 		ldrb	r1, [r2, #86]	@ zero_extendqisi2
 997 0010 2229     		cmp	r1, #34
 998 0012 0BD0     		beq	.L227
 999              	.L225:
 1000 0014 0120     		movs	r0, #1
 1001 0016 0A22     		movs	r2, #10
 1002              	.L212:
 1003 0018 5533     		adds	r3, r3, #85
 1004 001a 1844     		add	r0, r0, r3
 1005 001c 2044     		add	r0, r0, r4
 1006 001e 0021     		movs	r1, #0
 1007 0020 FFF7FEFF 		bl	_Z11SafeStrtoulPcPS_i
 1008 0024 4FF0FF33 		mov	r3, #-1
 1009 0028 6362     		str	r3, [r4, #36]
 1010 002a 10BD     		pop	{r4, pc}
 1011              	.L227:
 1012 002c 92F85710 		ldrb	r1, [r2, #87]	@ zero_extendqisi2
 1013 0030 5829     		cmp	r1, #88
 1014 0032 17D0     		beq	.L213
 1015 0034 7829     		cmp	r1, #120
 1016 0036 15D0     		beq	.L213
 1017 0038 3029     		cmp	r1, #48
 1018 003a EBD1     		bne	.L225
 1019 003c 92F85820 		ldrb	r2, [r2, #88]	@ zero_extendqisi2
 1020 0040 02F0DF02 		and	r2, r2, #223
 1021 0044 582A     		cmp	r2, #88
 1022 0046 15BF     		itete	ne
 1023 0048 0120     		movne	r0, #1
 1024 004a 0420     		moveq	r0, #4
 1025 004c 0A22     		movne	r2, #10
 1026 004e 1022     		moveq	r2, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 19


 1027 0050 E2E7     		b	.L212
 1028              	.L211:
 1029 0052 40F21A33 		movw	r3, #794
 1030 0056 054A     		ldr	r2, .L228
 1031 0058 0549     		ldr	r1, .L228+4
 1032 005a 0648     		ldr	r0, .L228+8
 1033 005c FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1034 0060 0020     		movs	r0, #0
 1035 0062 10BD     		pop	{r4, pc}
 1036              	.L213:
 1037 0064 0320     		movs	r0, #3
 1038 0066 1022     		movs	r2, #16
 1039 0068 D6E7     		b	.L212
 1040              	.L229:
 1041 006a 00BF     		.align	2
 1042              	.L228:
 1043 006c 00000000 		.word	.LANCHOR1
 1044 0070 00000000 		.word	.LC6
 1045 0074 00000000 		.word	reprap
 1046              		.size	_ZN11GCodeBuffer18GetUIValueMaybeHexEv, .-_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 1047              		.section	.text._ZN11GCodeBuffer13TryGetUIValueEcRmRb,"ax",%progbits
 1048              		.align	1
 1049              		.p2align 2,,3
 1050              		.global	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1051              		.syntax unified
 1052              		.thumb
 1053              		.thumb_func
 1054              		.fpu fpv4-sp-d16
 1055              		.type	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, %function
 1056              	_ZN11GCodeBuffer13TryGetUIValueEcRmRb:
 1057              		@ args = 0, pretend = 0, frame = 0
 1058              		@ frame_needed = 0, uses_anonymous_args = 0
 1059 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1060 0002 1646     		mov	r6, r2
 1061 0004 1D46     		mov	r5, r3
 1062 0006 0746     		mov	r7, r0
 1063 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1064 000c 0446     		mov	r4, r0
 1065 000e 28B1     		cbz	r0, .L231
 1066 0010 3846     		mov	r0, r7
 1067 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1068 0016 0123     		movs	r3, #1
 1069 0018 3060     		str	r0, [r6]
 1070 001a 2B70     		strb	r3, [r5]
 1071              	.L231:
 1072 001c 2046     		mov	r0, r4
 1073 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1074              		.size	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, .-_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1075              		.section	.text._ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb,"ax",%progbits
 1076              		.align	1
 1077              		.p2align 2,,3
 1078              		.global	_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb
 1079              		.syntax unified
 1080              		.thumb
 1081              		.thumb_func
 1082              		.fpu fpv4-sp-d16
 1083              		.type	_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 20


 1084              	_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb:
 1085              		@ args = 0, pretend = 0, frame = 0
 1086              		@ frame_needed = 0, uses_anonymous_args = 0
 1087 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1088 0002 1646     		mov	r6, r2
 1089 0004 1D46     		mov	r5, r3
 1090 0006 0746     		mov	r7, r0
 1091 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1092 000c 0446     		mov	r4, r0
 1093 000e 28B1     		cbz	r0, .L237
 1094 0010 3846     		mov	r0, r7
 1095 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 1096 0016 0123     		movs	r3, #1
 1097 0018 3060     		str	r0, [r6]
 1098 001a 2B70     		strb	r3, [r5]
 1099              	.L237:
 1100 001c 2046     		mov	r0, r4
 1101 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1102              		.size	_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRmRb, .-_ZN11GCodeBuffer21TryGetUIValueMaybeHexEcRm
 1103              		.section	.text._ZN11GCodeBuffer12GetIPAddressER9IPAddress,"ax",%progbits
 1104              		.align	1
 1105              		.p2align 2,,3
 1106              		.global	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1107              		.syntax unified
 1108              		.thumb
 1109              		.thumb_func
 1110              		.fpu fpv4-sp-d16
 1111              		.type	_ZN11GCodeBuffer12GetIPAddressER9IPAddress, %function
 1112              	_ZN11GCodeBuffer12GetIPAddressER9IPAddress:
 1113              		@ args = 0, pretend = 0, frame = 8
 1114              		@ frame_needed = 0, uses_anonymous_args = 0
 1115 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1116 0002 446A     		ldr	r4, [r0, #36]
 1117 0004 002C     		cmp	r4, #0
 1118 0006 83B0     		sub	sp, sp, #12
 1119 0008 1FDB     		blt	.L254
 1120 000a 5634     		adds	r4, r4, #86
 1121 000c 0646     		mov	r6, r0
 1122 000e 0F46     		mov	r7, r1
 1123 0010 0444     		add	r4, r4, r0
 1124 0012 0025     		movs	r5, #0
 1125              	.L248:
 1126 0014 0A22     		movs	r2, #10
 1127 0016 01A9     		add	r1, sp, #4
 1128 0018 2046     		mov	r0, r4
 1129 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1130 001e 019B     		ldr	r3, [sp, #4]
 1131 0020 A342     		cmp	r3, r4
 1132 0022 0CD0     		beq	.L245
 1133 0024 FF28     		cmp	r0, #255
 1134 0026 0AD8     		bhi	.L245
 1135 0028 0DF80500 		strb	r0, [sp, r5]
 1136 002c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1137 002e 2E2A     		cmp	r2, #46
 1138 0030 05F10105 		add	r5, r5, #1
 1139 0034 13D1     		bne	.L247
 1140 0036 042D     		cmp	r5, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 21


 1141 0038 01D0     		beq	.L245
 1142 003a 5C1C     		adds	r4, r3, #1
 1143 003c EAE7     		b	.L248
 1144              	.L245:
 1145 003e 4FF0FF33 		mov	r3, #-1
 1146 0042 7362     		str	r3, [r6, #36]
 1147 0044 0020     		movs	r0, #0
 1148              	.L244:
 1149 0046 03B0     		add	sp, sp, #12
 1150              		@ sp needed
 1151 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1152              	.L254:
 1153 004a 40F2A333 		movw	r3, #931
 1154 004e 0B4A     		ldr	r2, .L256
 1155 0050 0B49     		ldr	r1, .L256+4
 1156 0052 0C48     		ldr	r0, .L256+8
 1157 0054 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1158 0058 0020     		movs	r0, #0
 1159 005a 03B0     		add	sp, sp, #12
 1160              		@ sp needed
 1161 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 1162              	.L247:
 1163 005e 4FF0FF33 		mov	r3, #-1
 1164 0062 042D     		cmp	r5, #4
 1165 0064 7362     		str	r3, [r6, #36]
 1166 0066 02D0     		beq	.L255
 1167 0068 0020     		movs	r0, #0
 1168 006a 3860     		str	r0, [r7]
 1169 006c EBE7     		b	.L244
 1170              	.L255:
 1171 006e 3846     		mov	r0, r7
 1172 0070 6946     		mov	r1, sp
 1173 0072 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 1174 0076 0120     		movs	r0, #1
 1175 0078 E5E7     		b	.L244
 1176              	.L257:
 1177 007a 00BF     		.align	2
 1178              	.L256:
 1179 007c 00000000 		.word	.LANCHOR2
 1180 0080 00000000 		.word	.LC6
 1181 0084 00000000 		.word	reprap
 1182              		.size	_ZN11GCodeBuffer12GetIPAddressER9IPAddress, .-_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1183              		.section	.text._ZN11GCodeBuffer13GetMacAddressEPh,"ax",%progbits
 1184              		.align	1
 1185              		.p2align 2,,3
 1186              		.global	_ZN11GCodeBuffer13GetMacAddressEPh
 1187              		.syntax unified
 1188              		.thumb
 1189              		.thumb_func
 1190              		.fpu fpv4-sp-d16
 1191              		.type	_ZN11GCodeBuffer13GetMacAddressEPh, %function
 1192              	_ZN11GCodeBuffer13GetMacAddressEPh:
 1193              		@ args = 0, pretend = 0, frame = 8
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 1195 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1196 0002 446A     		ldr	r4, [r0, #36]
 1197 0004 002C     		cmp	r4, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 22


 1198 0006 83B0     		sub	sp, sp, #12
 1199 0008 1FDB     		blt	.L269
 1200 000a 0444     		add	r4, r4, r0
 1201 000c 0646     		mov	r6, r0
 1202 000e 5634     		adds	r4, r4, #86
 1203 0010 4F1E     		subs	r7, r1, #1
 1204 0012 0025     		movs	r5, #0
 1205              	.L264:
 1206 0014 1022     		movs	r2, #16
 1207 0016 01A9     		add	r1, sp, #4
 1208 0018 2046     		mov	r0, r4
 1209 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1210 001e 019B     		ldr	r3, [sp, #4]
 1211 0020 A342     		cmp	r3, r4
 1212 0022 05F10105 		add	r5, r5, #1
 1213 0026 0AD0     		beq	.L261
 1214 0028 FF28     		cmp	r0, #255
 1215 002a 08D8     		bhi	.L261
 1216 002c 07F8010F 		strb	r0, [r7, #1]!
 1217 0030 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1218 0032 3A2A     		cmp	r2, #58
 1219 0034 13D1     		bne	.L263
 1220 0036 062D     		cmp	r5, #6
 1221 0038 01D0     		beq	.L261
 1222 003a 5C1C     		adds	r4, r3, #1
 1223 003c EAE7     		b	.L264
 1224              	.L261:
 1225 003e 4FF0FF33 		mov	r3, #-1
 1226 0042 0020     		movs	r0, #0
 1227 0044 7362     		str	r3, [r6, #36]
 1228 0046 03B0     		add	sp, sp, #12
 1229              		@ sp needed
 1230 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1231              	.L269:
 1232 004a 4FF47473 		mov	r3, #976
 1233 004e 094A     		ldr	r2, .L270
 1234 0050 0949     		ldr	r1, .L270+4
 1235 0052 0A48     		ldr	r0, .L270+8
 1236 0054 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1237 0058 0020     		movs	r0, #0
 1238 005a 03B0     		add	sp, sp, #12
 1239              		@ sp needed
 1240 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 1241              	.L263:
 1242 005e A5F10600 		sub	r0, r5, #6
 1243 0062 B0FA80F0 		clz	r0, r0
 1244 0066 4FF0FF33 		mov	r3, #-1
 1245 006a 4009     		lsrs	r0, r0, #5
 1246 006c 7362     		str	r3, [r6, #36]
 1247 006e 03B0     		add	sp, sp, #12
 1248              		@ sp needed
 1249 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 1250              	.L271:
 1251 0072 00BF     		.align	2
 1252              	.L270:
 1253 0074 00000000 		.word	.LANCHOR3
 1254 0078 00000000 		.word	.LC6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 23


 1255 007c 00000000 		.word	reprap
 1256              		.size	_ZN11GCodeBuffer13GetMacAddressEPh, .-_ZN11GCodeBuffer13GetMacAddressEPh
 1257              		.section	.text._ZNK11GCodeBuffer20OriginalMachineStateEv,"ax",%progbits
 1258              		.align	1
 1259              		.p2align 2,,3
 1260              		.global	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu fpv4-sp-d16
 1265              		.type	_ZNK11GCodeBuffer20OriginalMachineStateEv, %function
 1266              	_ZNK11GCodeBuffer20OriginalMachineStateEv:
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269              		@ link register save eliminated.
 1270 0000 8068     		ldr	r0, [r0, #8]
 1271 0002 00E0     		b	.L273
 1272              	.L274:
 1273 0004 1846     		mov	r0, r3
 1274              	.L273:
 1275 0006 0368     		ldr	r3, [r0]
 1276 0008 002B     		cmp	r3, #0
 1277 000a FBD1     		bne	.L274
 1278 000c 7047     		bx	lr
 1279              		.size	_ZNK11GCodeBuffer20OriginalMachineStateEv, .-_ZNK11GCodeBuffer20OriginalMachineStateEv
 1280 000e 00BF     		.section	.text._ZN11GCodeBuffer9PushStateEv,"ax",%progbits
 1281              		.align	1
 1282              		.p2align 2,,3
 1283              		.global	_ZN11GCodeBuffer9PushStateEv
 1284              		.syntax unified
 1285              		.thumb
 1286              		.thumb_func
 1287              		.fpu fpv4-sp-d16
 1288              		.type	_ZN11GCodeBuffer9PushStateEv, %function
 1289              	_ZN11GCodeBuffer9PushStateEv:
 1290              		@ args = 0, pretend = 0, frame = 0
 1291              		@ frame_needed = 0, uses_anonymous_args = 0
 1292 0000 8368     		ldr	r3, [r0, #8]
 1293 0002 43B1     		cbz	r3, .L276
 1294 0004 0022     		movs	r2, #0
 1295              	.L277:
 1296 0006 1B68     		ldr	r3, [r3]
 1297 0008 0132     		adds	r2, r2, #1
 1298 000a 002B     		cmp	r3, #0
 1299 000c FBD1     		bne	.L277
 1300 000e 052A     		cmp	r2, #5
 1301 0010 01D9     		bls	.L276
 1302 0012 1846     		mov	r0, r3
 1303 0014 7047     		bx	lr
 1304              	.L276:
 1305 0016 70B5     		push	{r4, r5, r6, lr}
 1306 0018 0546     		mov	r5, r0
 1307 001a FFF7FEFF 		bl	_ZN17GCodeMachineState8AllocateEv
 1308 001e AB68     		ldr	r3, [r5, #8]
 1309 0020 0360     		str	r3, [r0]
 1310 0022 AB68     		ldr	r3, [r5, #8]
 1311 0024 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 24


 1312 0026 5B68     		ldr	r3, [r3, #4]	@ float
 1313 0028 8068     		ldr	r0, [r0, #8]
 1314 002a 6360     		str	r3, [r4, #4]	@ float
 1315 002c AE68     		ldr	r6, [r5, #8]
 1316 002e 18B1     		cbz	r0, .L279
 1317 0030 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1318 0034 0023     		movs	r3, #0
 1319 0036 A360     		str	r3, [r4, #8]
 1320              	.L279:
 1321 0038 B068     		ldr	r0, [r6, #8]
 1322 003a A060     		str	r0, [r4, #8]
 1323 003c 08B1     		cbz	r0, .L280
 1324 003e FFF7FEFF 		bl	_ZN9FileStore9DuplicateEv
 1325              	.L280:
 1326 0042 AB68     		ldr	r3, [r5, #8]
 1327 0044 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 1328 0046 DB68     		ldr	r3, [r3, #12]
 1329 0048 E360     		str	r3, [r4, #12]
 1330 004a A968     		ldr	r1, [r5, #8]
 1331 004c 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 1332 004e 097E     		ldrb	r1, [r1, #24]	@ zero_extendqisi2
 1333 0050 61F30002 		bfi	r2, r1, #0, #1
 1334 0054 2276     		strb	r2, [r4, #24]
 1335 0056 AA68     		ldr	r2, [r5, #8]
 1336 0058 217E     		ldrb	r1, [r4, #24]	@ zero_extendqisi2
 1337 005a 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 1338 005c C2F34002 		ubfx	r2, r2, #1, #1
 1339 0060 62F34101 		bfi	r1, r2, #1, #1
 1340 0064 2176     		strb	r1, [r4, #24]
 1341 0066 AA68     		ldr	r2, [r5, #8]
 1342 0068 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 1343 006a C9B2     		uxtb	r1, r1
 1344 006c C2F38002 		ubfx	r2, r2, #2, #1
 1345 0070 62F38201 		bfi	r1, r2, #2, #1
 1346 0074 2176     		strb	r1, [r4, #24]
 1347 0076 AA68     		ldr	r2, [r5, #8]
 1348 0078 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 1349 007a C9B2     		uxtb	r1, r1
 1350 007c C2F3C002 		ubfx	r2, r2, #3, #1
 1351 0080 62F3C301 		bfi	r1, r2, #3, #1
 1352 0084 2176     		strb	r1, [r4, #24]
 1353 0086 AA68     		ldr	r2, [r5, #8]
 1354 0088 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 1355 008a C9B2     		uxtb	r1, r1
 1356 008c C2F30012 		ubfx	r2, r2, #4, #1
 1357 0090 62F30411 		bfi	r1, r2, #4, #1
 1358 0094 2176     		strb	r1, [r4, #24]
 1359 0096 A968     		ldr	r1, [r5, #8]
 1360 0098 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 1361 009a 097E     		ldrb	r1, [r1, #24]	@ zero_extendqisi2
 1362 009c C1F34011 		ubfx	r1, r1, #5, #1
 1363 00a0 61F34512 		bfi	r2, r1, #5, #1
 1364 00a4 02F0BF02 		and	r2, r2, #191
 1365 00a8 6FF3C712 		bfc	r2, #7, #1
 1366 00ac 2276     		strb	r2, [r4, #24]
 1367 00ae AA68     		ldr	r2, [r5, #8]
 1368 00b0 128B     		ldrh	r2, [r2, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 25


 1369 00b2 02F4C072 		and	r2, r2, #384
 1370 00b6 0032     		adds	r2, r2, #0
 1371 00b8 18BF     		it	ne
 1372 00ba 0122     		movne	r2, #1
 1373 00bc 62F30003 		bfi	r3, r2, #0, #1
 1374 00c0 03F0FB03 		and	r3, r3, #251
 1375 00c4 6FF34103 		bfc	r3, #1, #1
 1376 00c8 6376     		strb	r3, [r4, #25]
 1377 00ca AC60     		str	r4, [r5, #8]
 1378 00cc 0120     		movs	r0, #1
 1379 00ce 70BD     		pop	{r4, r5, r6, pc}
 1380              		.size	_ZN11GCodeBuffer9PushStateEv, .-_ZN11GCodeBuffer9PushStateEv
 1381              		.section	.text._ZN11GCodeBuffer8PopStateEv,"ax",%progbits
 1382              		.align	1
 1383              		.p2align 2,,3
 1384              		.global	_ZN11GCodeBuffer8PopStateEv
 1385              		.syntax unified
 1386              		.thumb
 1387              		.thumb_func
 1388              		.fpu fpv4-sp-d16
 1389              		.type	_ZN11GCodeBuffer8PopStateEv, %function
 1390              	_ZN11GCodeBuffer8PopStateEv:
 1391              		@ args = 0, pretend = 0, frame = 0
 1392              		@ frame_needed = 0, uses_anonymous_args = 0
 1393 0000 08B5     		push	{r3, lr}
 1394 0002 8168     		ldr	r1, [r0, #8]
 1395 0004 0B68     		ldr	r3, [r1]
 1396 0006 2BB1     		cbz	r3, .L299
 1397 0008 8360     		str	r3, [r0, #8]
 1398 000a 0846     		mov	r0, r1
 1399 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 1400 0010 0120     		movs	r0, #1
 1401 0012 08BD     		pop	{r3, pc}
 1402              	.L299:
 1403 0014 4A7E     		ldrb	r2, [r1, #25]	@ zero_extendqisi2
 1404 0016 63F38202 		bfi	r2, r3, #2, #1
 1405 001a 63F34102 		bfi	r2, r3, #1, #1
 1406 001e 4A76     		strb	r2, [r1, #25]
 1407 0020 1846     		mov	r0, r3
 1408 0022 08BD     		pop	{r3, pc}
 1409              		.size	_ZN11GCodeBuffer8PopStateEv, .-_ZN11GCodeBuffer8PopStateEv
 1410              		.section	.text._ZN11GCodeBuffer9AbortFileEP14FileGCodeInput,"ax",%progbits
 1411              		.align	1
 1412              		.p2align 2,,3
 1413              		.global	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 1414              		.syntax unified
 1415              		.thumb
 1416              		.thumb_func
 1417              		.fpu fpv4-sp-d16
 1418              		.type	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, %function
 1419              	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput:
 1420              		@ args = 0, pretend = 0, frame = 0
 1421              		@ frame_needed = 0, uses_anonymous_args = 0
 1422 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1423 0002 8468     		ldr	r4, [r0, #8]
 1424 0004 A368     		ldr	r3, [r4, #8]
 1425 0006 13B3     		cbz	r3, .L300
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 26


 1426 0008 0E46     		mov	r6, r1
 1427 000a 0546     		mov	r5, r0
 1428 000c 0027     		movs	r7, #0
 1429              	.L313:
 1430 000e 04F10801 		add	r1, r4, #8
 1431 0012 3046     		mov	r0, r6
 1432 0014 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 1433 0018 AC68     		ldr	r4, [r5, #8]
 1434 001a A068     		ldr	r0, [r4, #8]
 1435 001c 18B1     		cbz	r0, .L309
 1436 001e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1437 0022 A760     		str	r7, [r4, #8]
 1438 0024 AC68     		ldr	r4, [r5, #8]
 1439              	.L309:
 1440 0026 2368     		ldr	r3, [r4]
 1441 0028 2046     		mov	r0, r4
 1442 002a 53B1     		cbz	r3, .L316
 1443              	.L303:
 1444 002c AB60     		str	r3, [r5, #8]
 1445 002e FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 1446 0032 AC68     		ldr	r4, [r5, #8]
 1447 0034 A368     		ldr	r3, [r4, #8]
 1448 0036 002B     		cmp	r3, #0
 1449 0038 E9D1     		bne	.L313
 1450 003a 2368     		ldr	r3, [r4]
 1451 003c 2046     		mov	r0, r4
 1452 003e 002B     		cmp	r3, #0
 1453 0040 F4D1     		bne	.L303
 1454              	.L316:
 1455 0042 627E     		ldrb	r2, [r4, #25]	@ zero_extendqisi2
 1456 0044 63F38202 		bfi	r2, r3, #2, #1
 1457 0048 63F34102 		bfi	r2, r3, #1, #1
 1458 004c 6276     		strb	r2, [r4, #25]
 1459              	.L300:
 1460 004e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1461              		.size	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, .-_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 1462              		.section	.text._ZNK11GCodeBuffer16IsDoingFileMacroEv,"ax",%progbits
 1463              		.align	1
 1464              		.p2align 2,,3
 1465              		.global	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1466              		.syntax unified
 1467              		.thumb
 1468              		.thumb_func
 1469              		.fpu fpv4-sp-d16
 1470              		.type	_ZNK11GCodeBuffer16IsDoingFileMacroEv, %function
 1471              	_ZNK11GCodeBuffer16IsDoingFileMacroEv:
 1472              		@ args = 0, pretend = 0, frame = 0
 1473              		@ frame_needed = 0, uses_anonymous_args = 0
 1474              		@ link register save eliminated.
 1475 0000 8368     		ldr	r3, [r0, #8]
 1476 0002 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 1477 0004 C0F38000 		ubfx	r0, r0, #2, #1
 1478 0008 7047     		bx	lr
 1479              		.size	_ZNK11GCodeBuffer16IsDoingFileMacroEv, .-_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1480 000a 00BF     		.section	.text._ZN11GCodeBuffer19MessageAcknowledgedEb,"ax",%progbits
 1481              		.align	1
 1482              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 27


 1483              		.global	_ZN11GCodeBuffer19MessageAcknowledgedEb
 1484              		.syntax unified
 1485              		.thumb
 1486              		.thumb_func
 1487              		.fpu fpv4-sp-d16
 1488              		.type	_ZN11GCodeBuffer19MessageAcknowledgedEb, %function
 1489              	_ZN11GCodeBuffer19MessageAcknowledgedEb:
 1490              		@ args = 0, pretend = 0, frame = 0
 1491              		@ frame_needed = 0, uses_anonymous_args = 0
 1492              		@ link register save eliminated.
 1493 0000 8268     		ldr	r2, [r0, #8]
 1494 0002 6AB1     		cbz	r2, .L318
 1495              	.L321:
 1496 0004 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 1497 0006 13F0020F 		tst	r3, #2
 1498 000a 03F0FD03 		and	r3, r3, #253
 1499 000e 04D0     		beq	.L320
 1500 0010 43F00403 		orr	r3, r3, #4
 1501 0014 61F3C303 		bfi	r3, r1, #3, #1
 1502 0018 5376     		strb	r3, [r2, #25]
 1503              	.L320:
 1504 001a 1268     		ldr	r2, [r2]
 1505 001c 002A     		cmp	r2, #0
 1506 001e F1D1     		bne	.L321
 1507              	.L318:
 1508 0020 7047     		bx	lr
 1509              		.size	_ZN11GCodeBuffer19MessageAcknowledgedEb, .-_ZN11GCodeBuffer19MessageAcknowledgedEb
 1510 0022 00BF     		.section	.text._ZNK11GCodeBuffer13CanQueueCodesEv,"ax",%progbits
 1511              		.align	1
 1512              		.p2align 2,,3
 1513              		.global	_ZNK11GCodeBuffer13CanQueueCodesEv
 1514              		.syntax unified
 1515              		.thumb
 1516              		.thumb_func
 1517              		.fpu fpv4-sp-d16
 1518              		.type	_ZNK11GCodeBuffer13CanQueueCodesEv, %function
 1519              	_ZNK11GCodeBuffer13CanQueueCodesEv:
 1520              		@ args = 0, pretend = 0, frame = 0
 1521              		@ frame_needed = 0, uses_anonymous_args = 0
 1522              		@ link register save eliminated.
 1523 0000 90F8F830 		ldrb	r3, [r0, #248]	@ zero_extendqisi2
 1524 0004 1BB9     		cbnz	r3, .L330
 1525 0006 8368     		ldr	r3, [r0, #8]
 1526 0008 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1527 000a C3F38003 		ubfx	r3, r3, #2, #1
 1528              	.L330:
 1529 000e 1846     		mov	r0, r3
 1530 0010 7047     		bx	lr
 1531              		.size	_ZNK11GCodeBuffer13CanQueueCodesEv, .-_ZNK11GCodeBuffer13CanQueueCodesEv
 1532 0012 00BF     		.section	.text._ZNK11GCodeBuffer12PrintCommandERK9StringRef,"ax",%progbits
 1533              		.align	1
 1534              		.p2align 2,,3
 1535              		.global	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 1536              		.syntax unified
 1537              		.thumb
 1538              		.thumb_func
 1539              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 28


 1540              		.type	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, %function
 1541              	_ZNK11GCodeBuffer12PrintCommandERK9StringRef:
 1542              		@ args = 0, pretend = 0, frame = 0
 1543              		@ frame_needed = 0, uses_anonymous_args = 0
 1544 0000 38B5     		push	{r3, r4, r5, lr}
 1545 0002 0446     		mov	r4, r0
 1546 0004 0D46     		mov	r5, r1
 1547 0006 90F85420 		ldrb	r2, [r0, #84]	@ zero_extendqisi2
 1548 000a 836C     		ldr	r3, [r0, #72]
 1549 000c 0749     		ldr	r1, .L334
 1550 000e 2846     		mov	r0, r5
 1551 0010 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1552 0014 94F9F720 		ldrsb	r2, [r4, #247]
 1553 0018 002A     		cmp	r2, #0
 1554 001a 05DB     		blt	.L331
 1555 001c 2846     		mov	r0, r5
 1556 001e 0449     		ldr	r1, .L334+4
 1557 0020 BDE83840 		pop	{r3, r4, r5, lr}
 1558 0024 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 1559              	.L331:
 1560 0028 38BD     		pop	{r3, r4, r5, pc}
 1561              	.L335:
 1562 002a 00BF     		.align	2
 1563              	.L334:
 1564 002c 00000000 		.word	.LC7
 1565 0030 08000000 		.word	.LC8
 1566              		.size	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, .-_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 1567              		.section	.text._ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm,"ax",%progbits
 1568              		.align	1
 1569              		.p2align 2,,3
 1570              		.global	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm
 1571              		.syntax unified
 1572              		.thumb
 1573              		.thumb_func
 1574              		.fpu fpv4-sp-d16
 1575              		.type	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm, %function
 1576              	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm:
 1577              		@ args = 8, pretend = 0, frame = 0
 1578              		@ frame_needed = 0, uses_anonymous_args = 0
 1579 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1580 0002 0B4C     		ldr	r4, .L340
 1581 0004 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
 1582 0008 6668     		ldr	r6, [r4, #4]
 1583 000a 1D46     		mov	r5, r3
 1584 000c 0446     		mov	r4, r0
 1585 000e 0123     		movs	r3, #1
 1586 0010 D6F8DC0B 		ldr	r0, [r6, #3036]
 1587 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1588 0018 0023     		movs	r3, #0
 1589 001a C4E90B05 		strd	r0, r5, [r4, #44]
 1590 001e 84F83430 		strb	r3, [r4, #52]
 1591 0022 20B1     		cbz	r0, .L337
 1592 0024 079B     		ldr	r3, [sp, #28]
 1593 0026 E364     		str	r3, [r4, #76]
 1594 0028 84F8F970 		strb	r7, [r4, #249]
 1595 002c 0120     		movs	r0, #1
 1596              	.L337:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 29


 1597 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1598              	.L341:
 1599              		.align	2
 1600              	.L340:
 1601 0030 00000000 		.word	reprap
 1602              		.size	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm, .-_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm
 1603              		.section	.text._ZN11GCodeBuffer19FinishWritingBinaryEv,"ax",%progbits
 1604              		.align	1
 1605              		.p2align 2,,3
 1606              		.global	_ZN11GCodeBuffer19FinishWritingBinaryEv
 1607              		.syntax unified
 1608              		.thumb
 1609              		.thumb_func
 1610              		.fpu fpv4-sp-d16
 1611              		.type	_ZN11GCodeBuffer19FinishWritingBinaryEv, %function
 1612              	_ZN11GCodeBuffer19FinishWritingBinaryEv:
 1613              		@ args = 0, pretend = 0, frame = 0
 1614              		@ frame_needed = 0, uses_anonymous_args = 0
 1615 0000 70B5     		push	{r4, r5, r6, lr}
 1616 0002 0446     		mov	r4, r0
 1617 0004 C06A     		ldr	r0, [r0, #44]
 1618 0006 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1619 000a E36A     		ldr	r3, [r4, #44]
 1620 000c E26C     		ldr	r2, [r4, #76]
 1621 000e 5B6B     		ldr	r3, [r3, #52]
 1622 0010 DB43     		mvns	r3, r3
 1623 0012 9A42     		cmp	r2, r3
 1624 0014 00D0     		beq	.L345
 1625 0016 9AB9     		cbnz	r2, .L351
 1626              	.L345:
 1627 0018 104D     		ldr	r5, .L352
 1628 001a 0023     		movs	r3, #0
 1629 001c E362     		str	r3, [r4, #44]
 1630 001e 84F8F930 		strb	r3, [r4, #249]
 1631 0022 6868     		ldr	r0, [r5, #4]
 1632 0024 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 1633 0028 0D4A     		ldr	r2, .L352+4
 1634 002a 0E4B     		ldr	r3, .L352+8
 1635 002c 2146     		mov	r1, r4
 1636 002e 0228     		cmp	r0, #2
 1637 0030 08BF     		it	eq
 1638 0032 1346     		moveq	r3, r2
 1639 0034 6869     		ldr	r0, [r5, #20]
 1640 0036 0122     		movs	r2, #1
 1641 0038 BDE87040 		pop	{r4, r5, r6, lr}
 1642 003c FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 1643              	.L351:
 1644 0040 064A     		ldr	r2, .L352
 1645 0042 094B     		ldr	r3, .L352+12
 1646 0044 5069     		ldr	r0, [r2, #20]
 1647 0046 0022     		movs	r2, #0
 1648 0048 E262     		str	r2, [r4, #44]
 1649 004a 84F8F920 		strb	r2, [r4, #249]
 1650 004e 2146     		mov	r1, r4
 1651 0050 0222     		movs	r2, #2
 1652 0052 BDE87040 		pop	{r4, r5, r6, lr}
 1653 0056 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 30


 1654              	.L353:
 1655 005a 00BF     		.align	2
 1656              	.L352:
 1657 005c 00000000 		.word	reprap
 1658 0060 00000000 		.word	.LC9
 1659 0064 30000000 		.word	.LC2
 1660 0068 14000000 		.word	.LC10
 1661              		.size	_ZN11GCodeBuffer19FinishWritingBinaryEv, .-_ZN11GCodeBuffer19FinishWritingBinaryEv
 1662              		.section	.text._ZN11GCodeBuffer17WriteBinaryToFileEc,"ax",%progbits
 1663              		.align	1
 1664              		.p2align 2,,3
 1665              		.global	_ZN11GCodeBuffer17WriteBinaryToFileEc
 1666              		.syntax unified
 1667              		.thumb
 1668              		.thumb_func
 1669              		.fpu fpv4-sp-d16
 1670              		.type	_ZN11GCodeBuffer17WriteBinaryToFileEc, %function
 1671              	_ZN11GCodeBuffer17WriteBinaryToFileEc:
 1672              		@ args = 0, pretend = 0, frame = 0
 1673              		@ frame_needed = 0, uses_anonymous_args = 0
 1674 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1675 0002 1C4E     		ldr	r6, .L373
 1676 0004 90F83430 		ldrb	r3, [r0, #52]	@ zero_extendqisi2
 1677 0008 F25C     		ldrb	r2, [r6, r3]	@ zero_extendqisi2
 1678 000a 8A42     		cmp	r2, r1
 1679 000c 0546     		mov	r5, r0
 1680 000e 0F46     		mov	r7, r1
 1681 0010 17D0     		beq	.L370
 1682              	.L355:
 1683 0012 7BB1     		cbz	r3, .L358
 1684 0014 3C21     		movs	r1, #60
 1685 0016 0024     		movs	r4, #0
 1686 0018 00E0     		b	.L360
 1687              	.L371:
 1688 001a 315D     		ldrb	r1, [r6, r4]	@ zero_extendqisi2
 1689              	.L360:
 1690 001c E86A     		ldr	r0, [r5, #44]
 1691 001e FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 1692 0022 0134     		adds	r4, r4, #1
 1693 0024 95F83430 		ldrb	r3, [r5, #52]	@ zero_extendqisi2
 1694 0028 E4B2     		uxtb	r4, r4
 1695 002a A342     		cmp	r3, r4
 1696 002c F5D8     		bhi	.L371
 1697 002e 0023     		movs	r3, #0
 1698 0030 85F83430 		strb	r3, [r5, #52]
 1699              	.L358:
 1700 0034 3946     		mov	r1, r7
 1701 0036 E86A     		ldr	r0, [r5, #44]
 1702 0038 FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 1703 003c 2B6B     		ldr	r3, [r5, #48]
 1704 003e 73B9     		cbnz	r3, .L372
 1705              	.L354:
 1706 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1707              	.L370:
 1708 0042 026B     		ldr	r2, [r0, #48]
 1709 0044 002A     		cmp	r2, #0
 1710 0046 E4D1     		bne	.L355
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 31


 1711 0048 0133     		adds	r3, r3, #1
 1712 004a DBB2     		uxtb	r3, r3
 1713 004c 0F2B     		cmp	r3, #15
 1714 004e 80F83430 		strb	r3, [r0, #52]
 1715 0052 F5D9     		bls	.L354
 1716 0054 2846     		mov	r0, r5
 1717 0056 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1718 005a FFF7FEBF 		b	_ZN11GCodeBuffer19FinishWritingBinaryEv
 1719              	.L372:
 1720 005e E86A     		ldr	r0, [r5, #44]
 1721 0060 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1722 0064 2B6B     		ldr	r3, [r5, #48]
 1723 0066 9842     		cmp	r0, r3
 1724 0068 EAD3     		bcc	.L354
 1725 006a 2846     		mov	r0, r5
 1726 006c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1727 0070 FFF7FEBF 		b	_ZN11GCodeBuffer19FinishWritingBinaryEv
 1728              	.L374:
 1729              		.align	2
 1730              	.L373:
 1731 0074 00000000 		.word	.LANCHOR4
 1732              		.size	_ZN11GCodeBuffer17WriteBinaryToFileEc, .-_ZN11GCodeBuffer17WriteBinaryToFileEc
 1733              		.section	.text._ZN11GCodeBuffer9FileEndedEv,"ax",%progbits
 1734              		.align	1
 1735              		.p2align 2,,3
 1736              		.global	_ZN11GCodeBuffer9FileEndedEv
 1737              		.syntax unified
 1738              		.thumb
 1739              		.thumb_func
 1740              		.fpu fpv4-sp-d16
 1741              		.type	_ZN11GCodeBuffer9FileEndedEv, %function
 1742              	_ZN11GCodeBuffer9FileEndedEv:
 1743              		@ args = 0, pretend = 0, frame = 0
 1744              		@ frame_needed = 0, uses_anonymous_args = 0
 1745 0000 70B5     		push	{r4, r5, r6, lr}
 1746 0002 C36A     		ldr	r3, [r0, #44]
 1747 0004 0446     		mov	r4, r0
 1748 0006 2BB3     		cbz	r3, .L376
 1749 0008 90F8F920 		ldrb	r2, [r0, #249]	@ zero_extendqisi2
 1750 000c F2B9     		cbnz	r2, .L390
 1751 000e 026A     		ldr	r2, [r0, #32]
 1752 0010 1ABB     		cbnz	r2, .L383
 1753 0012 94F82820 		ldrb	r2, [r4, #40]	@ zero_extendqisi2
 1754 0016 082A     		cmp	r2, #8
 1755 0018 2CD0     		beq	.L391
 1756              	.L380:
 1757 001a E06A     		ldr	r0, [r4, #44]
 1758 001c 1E4D     		ldr	r5, .L392
 1759 001e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1760 0022 0023     		movs	r3, #0
 1761 0024 E362     		str	r3, [r4, #44]
 1762 0026 0121     		movs	r1, #1
 1763 0028 2046     		mov	r0, r4
 1764 002a FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 1765 002e 6868     		ldr	r0, [r5, #4]
 1766 0030 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 1767 0034 194A     		ldr	r2, .L392+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 32


 1768 0036 1A4B     		ldr	r3, .L392+8
 1769 0038 2146     		mov	r1, r4
 1770 003a 0228     		cmp	r0, #2
 1771 003c 18BF     		it	ne
 1772 003e 1346     		movne	r3, r2
 1773 0040 6869     		ldr	r0, [r5, #20]
 1774 0042 0122     		movs	r2, #1
 1775 0044 BDE87040 		pop	{r4, r5, r6, lr}
 1776 0048 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 1777              	.L390:
 1778 004c BDE87040 		pop	{r4, r5, r6, lr}
 1779 0050 FFF7FEBF 		b	_ZN11GCodeBuffer19FinishWritingBinaryEv
 1780              	.L376:
 1781 0054 036A     		ldr	r3, [r0, #32]
 1782 0056 03B9     		cbnz	r3, .L383
 1783              	.L375:
 1784 0058 70BD     		pop	{r4, r5, r6, pc}
 1785              	.L383:
 1786 005a E369     		ldr	r3, [r4, #28]
 1787 005c 0133     		adds	r3, r3, #1
 1788 005e E361     		str	r3, [r4, #28]
 1789 0060 2046     		mov	r0, r4
 1790 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer12LineFinishedEv
 1791 0066 E36A     		ldr	r3, [r4, #44]
 1792 0068 002B     		cmp	r3, #0
 1793 006a F5D0     		beq	.L375
 1794 006c 94F82820 		ldrb	r2, [r4, #40]	@ zero_extendqisi2
 1795 0070 082A     		cmp	r2, #8
 1796 0072 D2D1     		bne	.L380
 1797              	.L391:
 1798 0074 94F85420 		ldrb	r2, [r4, #84]	@ zero_extendqisi2
 1799 0078 4D2A     		cmp	r2, #77
 1800 007a 02D1     		bne	.L381
 1801 007c A26C     		ldr	r2, [r4, #72]
 1802 007e 1D2A     		cmp	r2, #29
 1803 0080 CBD0     		beq	.L380
 1804              	.L381:
 1805 0082 04F15501 		add	r1, r4, #85
 1806 0086 1846     		mov	r0, r3
 1807 0088 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1808 008c 0A21     		movs	r1, #10
 1809 008e E06A     		ldr	r0, [r4, #44]
 1810 0090 FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 1811 0094 C1E7     		b	.L380
 1812              	.L393:
 1813 0096 00BF     		.align	2
 1814              	.L392:
 1815 0098 00000000 		.word	reprap
 1816 009c 30000000 		.word	.LC2
 1817 00a0 00000000 		.word	.LC9
 1818              		.size	_ZN11GCodeBuffer9FileEndedEv, .-_ZN11GCodeBuffer9FileEndedEv
 1819              		.section	.text._ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue,"ax",%progbits
 1820              		.align	1
 1821              		.p2align 2,,3
 1822              		.global	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue
 1823              		.syntax unified
 1824              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 33


 1825              		.thumb_func
 1826              		.fpu fpv4-sp-d16
 1827              		.type	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue, %function
 1828              	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue:
 1829              		@ args = 0, pretend = 0, frame = 136
 1830              		@ frame_needed = 0, uses_anonymous_args = 0
 1831 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1832 0004 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 1833 0006 A3B0     		sub	sp, sp, #140
 1834 0008 2046     		mov	r0, r4
 1835 000a 8846     		mov	r8, r1
 1836 000c 1746     		mov	r7, r2
 1837 000e 9946     		mov	r9, r3
 1838 0010 FFF7FEFF 		bl	isalpha
 1839 0014 0028     		cmp	r0, #0
 1840 0016 3AD0     		beq	.L395
 1841 0018 08F10108 		add	r8, r8, #1
 1842 001c 4546     		mov	r5, r8
 1843 001e 0026     		movs	r6, #0
 1844 0020 A0B9     		cbnz	r0, .L396
 1845              	.L423:
 1846 0022 A4F13003 		sub	r3, r4, #48
 1847 0026 092B     		cmp	r3, #9
 1848 0028 10D9     		bls	.L396
 1849 002a 5F2C     		cmp	r4, #95
 1850 002c 07D0     		beq	.L397
 1851 002e 2E2C     		cmp	r4, #46
 1852 0030 05D0     		beq	.L397
 1853 0032 5B2C     		cmp	r4, #91
 1854 0034 0FD0     		beq	.L398
 1855 0036 5D2C     		cmp	r4, #93
 1856 0038 0FD1     		bne	.L399
 1857 003a 76B1     		cbz	r6, .L399
 1858              	.L400:
 1859 003c 013E     		subs	r6, r6, #1
 1860              	.L397:
 1861 003e 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 1862 0042 2046     		mov	r0, r4
 1863 0044 FFF7FEFF 		bl	isalpha
 1864 0048 0028     		cmp	r0, #0
 1865 004a EAD0     		beq	.L423
 1866              	.L396:
 1867 004c 5B2C     		cmp	r4, #91
 1868 004e 02D0     		beq	.L398
 1869 0050 5D2C     		cmp	r4, #93
 1870 0052 F4D1     		bne	.L397
 1871 0054 F2E7     		b	.L400
 1872              	.L398:
 1873 0056 0136     		adds	r6, r6, #1
 1874 0058 F1E7     		b	.L397
 1875              	.L399:
 1876 005a 22AE     		add	r6, sp, #136
 1877 005c 0024     		movs	r4, #0
 1878 005e 06F87C4D 		strb	r4, [r6, #-124]!
 1879 0062 7923     		movs	r3, #121
 1880 0064 A5EB0802 		sub	r2, r5, r8
 1881 0068 4146     		mov	r1, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 34


 1882 006a 01A8     		add	r0, sp, #4
 1883 006c CDE90163 		strd	r6, r3, [sp, #4]
 1884 0070 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKcj
 1885 0074 70B9     		cbnz	r0, .L406
 1886 0076 3246     		mov	r2, r6
 1887 0078 4946     		mov	r1, r9
 1888 007a 0B48     		ldr	r0, .L425
 1889 007c FFF7FEFF 		bl	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc
 1890 0080 43B2     		sxtb	r3, r0
 1891 0082 A342     		cmp	r3, r4
 1892 0084 02DD     		ble	.L404
 1893 0086 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1894 0088 5D2B     		cmp	r3, #93
 1895 008a 07D0     		beq	.L424
 1896              	.L404:
 1897 008c 0020     		movs	r0, #0
 1898              	.L395:
 1899 008e 23B0     		add	sp, sp, #140
 1900              		@ sp needed
 1901 0090 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1902              	.L406:
 1903 0094 2046     		mov	r0, r4
 1904 0096 23B0     		add	sp, sp, #140
 1905              		@ sp needed
 1906 0098 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1907              	.L424:
 1908 009c 002F     		cmp	r7, #0
 1909 009e F6D0     		beq	.L395
 1910 00a0 0135     		adds	r5, r5, #1
 1911 00a2 3D60     		str	r5, [r7]
 1912 00a4 F3E7     		b	.L395
 1913              	.L426:
 1914 00a6 00BF     		.align	2
 1915              	.L425:
 1916 00a8 00000000 		.word	reprap
 1917              		.size	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue, .-_ZN11GCodeBuffer18Evaluate
 1918              		.section	.text._ZN11GCodeBuffer14ReadFloatValueEPKcPS1_,"ax",%progbits
 1919              		.align	1
 1920              		.p2align 2,,3
 1921              		.global	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_
 1922              		.syntax unified
 1923              		.thumb
 1924              		.thumb_func
 1925              		.fpu fpv4-sp-d16
 1926              		.type	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_, %function
 1927              	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_:
 1928              		@ args = 0, pretend = 0, frame = 8
 1929              		@ frame_needed = 0, uses_anonymous_args = 0
 1930 0000 30B5     		push	{r4, r5, lr}
 1931 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 1932 0004 5B2C     		cmp	r4, #91
 1933 0006 83B0     		sub	sp, sp, #12
 1934 0008 06D0     		beq	.L437
 1935 000a 0B46     		mov	r3, r1
 1936 000c 1846     		mov	r0, r3
 1937 000e 1146     		mov	r1, r2
 1938 0010 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 35


 1939              	.L427:
 1940 0014 03B0     		add	sp, sp, #12
 1941              		@ sp needed
 1942 0016 30BD     		pop	{r4, r5, pc}
 1943              	.L437:
 1944 0018 01AB     		add	r3, sp, #4
 1945 001a FFF7FEFF 		bl	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue
 1946 001e 0328     		cmp	r0, #3
 1947 0020 09D0     		beq	.L430
 1948 0022 0428     		cmp	r0, #4
 1949 0024 04D0     		beq	.L431
 1950 0026 0228     		cmp	r0, #2
 1951 0028 0AD0     		beq	.L438
 1952 002a B7EE000A 		vmov.f32	s0, #1.0e+0
 1953 002e F1E7     		b	.L427
 1954              	.L431:
 1955 0030 9DED010A 		vldr.32	s0, [sp, #4]
 1956 0034 EEE7     		b	.L427
 1957              	.L430:
 1958 0036 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 1959 003a B8EEE70A 		vcvt.f32.s32	s0, s15
 1960 003e E9E7     		b	.L427
 1961              	.L438:
 1962 0040 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 1963 0044 B8EE670A 		vcvt.f32.u32	s0, s15
 1964 0048 E4E7     		b	.L427
 1965              		.size	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_, .-_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_
 1966              		.section	.text.hot._ZN11GCodeBuffer9GetFValueEv,"ax",%progbits
 1967              		.align	1
 1968              		.p2align 2,,3
 1969              		.global	_ZN11GCodeBuffer9GetFValueEv
 1970              		.syntax unified
 1971              		.thumb
 1972              		.thumb_func
 1973              		.fpu fpv4-sp-d16
 1974              		.type	_ZN11GCodeBuffer9GetFValueEv, %function
 1975              	_ZN11GCodeBuffer9GetFValueEv:
 1976              		@ args = 0, pretend = 0, frame = 0
 1977              		@ frame_needed = 0, uses_anonymous_args = 0
 1978 0000 10B5     		push	{r4, lr}
 1979 0002 416A     		ldr	r1, [r0, #36]
 1980 0004 0029     		cmp	r1, #0
 1981 0006 09DB     		blt	.L440
 1982 0008 5631     		adds	r1, r1, #86
 1983 000a 0446     		mov	r4, r0
 1984 000c 0144     		add	r1, r1, r0
 1985 000e 0022     		movs	r2, #0
 1986 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_
 1987 0014 4FF0FF33 		mov	r3, #-1
 1988 0018 6362     		str	r3, [r4, #36]
 1989 001a 10BD     		pop	{r4, pc}
 1990              	.L440:
 1991 001c 4FF4E673 		mov	r3, #460
 1992 0020 034A     		ldr	r2, .L443
 1993 0022 0449     		ldr	r1, .L443+4
 1994 0024 0448     		ldr	r0, .L443+8
 1995 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 36


 1996 002a 9FED040A 		vldr.32	s0, .L443+12
 1997 002e 10BD     		pop	{r4, pc}
 1998              	.L444:
 1999              		.align	2
 2000              	.L443:
 2001 0030 00000000 		.word	.LANCHOR5
 2002 0034 00000000 		.word	.LC6
 2003 0038 00000000 		.word	reprap
 2004 003c 00000000 		.word	0
 2005              		.size	_ZN11GCodeBuffer9GetFValueEv, .-_ZN11GCodeBuffer9GetFValueEv
 2006              		.section	.text._ZN11GCodeBuffer12TryGetFValueEcRfRb,"ax",%progbits
 2007              		.align	1
 2008              		.p2align 2,,3
 2009              		.global	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2010              		.syntax unified
 2011              		.thumb
 2012              		.thumb_func
 2013              		.fpu fpv4-sp-d16
 2014              		.type	_ZN11GCodeBuffer12TryGetFValueEcRfRb, %function
 2015              	_ZN11GCodeBuffer12TryGetFValueEcRfRb:
 2016              		@ args = 0, pretend = 0, frame = 0
 2017              		@ frame_needed = 0, uses_anonymous_args = 0
 2018 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2019 0002 1646     		mov	r6, r2
 2020 0004 1D46     		mov	r5, r3
 2021 0006 0746     		mov	r7, r0
 2022 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2023 000c 0446     		mov	r4, r0
 2024 000e 30B1     		cbz	r0, .L446
 2025 0010 3846     		mov	r0, r7
 2026 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2027 0016 0123     		movs	r3, #1
 2028 0018 86ED000A 		vstr.32	s0, [r6]
 2029 001c 2B70     		strb	r3, [r5]
 2030              	.L446:
 2031 001e 2046     		mov	r0, r4
 2032 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2033              		.size	_ZN11GCodeBuffer12TryGetFValueEcRfRb, .-_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2034 0022 00BF     		.section	.text.hot._ZN11GCodeBuffer13GetFloatArrayEPfRjb,"ax",%progbits
 2035              		.align	1
 2036              		.p2align 2,,3
 2037              		.global	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2038              		.syntax unified
 2039              		.thumb
 2040              		.thumb_func
 2041              		.fpu fpv4-sp-d16
 2042              		.type	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, %function
 2043              	_ZN11GCodeBuffer13GetFloatArrayEPfRjb:
 2044              		@ args = 0, pretend = 0, frame = 8
 2045              		@ frame_needed = 0, uses_anonymous_args = 0
 2046 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2047 0004 0E46     		mov	r6, r1
 2048 0006 416A     		ldr	r1, [r0, #36]
 2049 0008 0029     		cmp	r1, #0
 2050 000a 82B0     		sub	sp, sp, #8
 2051 000c 1546     		mov	r5, r2
 2052 000e 35DB     		blt	.L452
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 37


 2053 0010 1F46     		mov	r7, r3
 2054 0012 1368     		ldr	r3, [r2]
 2055 0014 0131     		adds	r1, r1, #1
 2056 0016 00F15508 		add	r8, r0, #85
 2057 001a 0446     		mov	r4, r0
 2058 001c 4144     		add	r1, r1, r8
 2059 001e EBB1     		cbz	r3, .L456
 2060 0020 B246     		mov	r10, r6
 2061 0022 4FF00009 		mov	r9, #0
 2062 0026 02E0     		b	.L457
 2063              	.L466:
 2064 0028 2B68     		ldr	r3, [r5]
 2065 002a 4B45     		cmp	r3, r9
 2066 002c 16D9     		bls	.L456
 2067              	.L457:
 2068 002e 01AA     		add	r2, sp, #4
 2069 0030 2046     		mov	r0, r4
 2070 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer14ReadFloatValueEPKcPS1_
 2071 0036 0199     		ldr	r1, [sp, #4]
 2072 0038 AAEC010A 		vstmia.32	r10!, {s0}
 2073 003c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2074 003e 3A2B     		cmp	r3, #58
 2075 0040 09F10109 		add	r9, r9, #1
 2076 0044 01F10101 		add	r1, r1, #1
 2077 0048 EED0     		beq	.L466
 2078 004a 1FBB     		cbnz	r7, .L467
 2079              	.L458:
 2080 004c C5F80090 		str	r9, [r5]
 2081              	.L459:
 2082 0050 4FF0FF33 		mov	r3, #-1
 2083 0054 6362     		str	r3, [r4, #36]
 2084 0056 02B0     		add	sp, sp, #8
 2085              		@ sp needed
 2086 0058 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2087              	.L456:
 2088 005c 154B     		ldr	r3, .L468
 2089 005e 164A     		ldr	r2, .L468+4
 2090 0060 5868     		ldr	r0, [r3, #4]
 2091 0062 40F2B511 		movw	r1, #437
 2092 0066 4346     		mov	r3, r8
 2093 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2094 006c 4FF0FF32 		mov	r2, #-1
 2095 0070 0023     		movs	r3, #0
 2096 0072 6262     		str	r2, [r4, #36]
 2097 0074 2B60     		str	r3, [r5]
 2098 0076 02B0     		add	sp, sp, #8
 2099              		@ sp needed
 2100 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2101              	.L452:
 2102 007c 4FF4FE73 		mov	r3, #508
 2103 0080 0E4A     		ldr	r2, .L468+8
 2104 0082 0F49     		ldr	r1, .L468+12
 2105 0084 0B48     		ldr	r0, .L468
 2106 0086 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2107 008a 0023     		movs	r3, #0
 2108 008c 2B60     		str	r3, [r5]
 2109 008e 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 38


 2110              		@ sp needed
 2111 0090 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2112              	.L467:
 2113 0094 B9F1010F 		cmp	r9, #1
 2114 0098 D8D1     		bne	.L458
 2115 009a 2968     		ldr	r1, [r5]
 2116 009c 0129     		cmp	r1, #1
 2117 009e D5D9     		bls	.L458
 2118 00a0 06EB8101 		add	r1, r6, r1, lsl #2
 2119 00a4 331D     		adds	r3, r6, #4
 2120              	.L460:
 2121 00a6 3268     		ldr	r2, [r6]	@ float
 2122 00a8 43F8042B 		str	r2, [r3], #4	@ float
 2123 00ac 8B42     		cmp	r3, r1
 2124 00ae FAD1     		bne	.L460
 2125 00b0 CEE7     		b	.L459
 2126              	.L469:
 2127 00b2 00BF     		.align	2
 2128              	.L468:
 2129 00b4 00000000 		.word	reprap
 2130 00b8 00000000 		.word	.LC11
 2131 00bc 00000000 		.word	.LANCHOR6
 2132 00c0 00000000 		.word	.LC6
 2133              		.size	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, .-_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2134              		.section	.text._ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb,"ax",%progbits
 2135              		.align	1
 2136              		.p2align 2,,3
 2137              		.global	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 2138              		.syntax unified
 2139              		.thumb
 2140              		.thumb_func
 2141              		.fpu fpv4-sp-d16
 2142              		.type	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, %function
 2143              	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb:
 2144              		@ args = 12, pretend = 0, frame = 8
 2145              		@ frame_needed = 0, uses_anonymous_args = 0
 2146 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2147 0004 83B0     		sub	sp, sp, #12
 2148 0006 1546     		mov	r5, r2
 2149 0008 1F46     		mov	r7, r3
 2150 000a 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 2151 000e 0646     		mov	r6, r0
 2152 0010 8946     		mov	r9, r1
 2153 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2154 0016 0446     		mov	r4, r0
 2155 0018 18B9     		cbnz	r0, .L477
 2156 001a 2046     		mov	r0, r4
 2157 001c 03B0     		add	sp, sp, #12
 2158              		@ sp needed
 2159 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2160              	.L477:
 2161 0022 02AA     		add	r2, sp, #8
 2162 0024 4346     		mov	r3, r8
 2163 0026 42F8045D 		str	r5, [r2, #-4]!
 2164 002a 3946     		mov	r1, r7
 2165 002c 3046     		mov	r0, r6
 2166 002e FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 39


 2167 0032 019B     		ldr	r3, [sp, #4]
 2168 0034 AB42     		cmp	r3, r5
 2169 0036 09D0     		beq	.L478
 2170 0038 2B46     		mov	r3, r5
 2171 003a 4A46     		mov	r2, r9
 2172 003c 0749     		ldr	r1, .L479
 2173 003e 0A98     		ldr	r0, [sp, #40]
 2174 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2175 0044 2046     		mov	r0, r4
 2176 0046 03B0     		add	sp, sp, #12
 2177              		@ sp needed
 2178 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2179              	.L478:
 2180 004c 0B9A     		ldr	r2, [sp, #44]
 2181 004e 0024     		movs	r4, #0
 2182 0050 0123     		movs	r3, #1
 2183 0052 2046     		mov	r0, r4
 2184 0054 1370     		strb	r3, [r2]
 2185 0056 03B0     		add	sp, sp, #12
 2186              		@ sp needed
 2187 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2188              	.L480:
 2189              		.align	2
 2190              	.L479:
 2191 005c 00000000 		.word	.LC12
 2192              		.size	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, .-_ZN11GCodeBuffer16TryGetFloatArray
 2193              		.section	.text._ZN11GCodeBuffer11ReadUIValueEPKcPS1_,"ax",%progbits
 2194              		.align	1
 2195              		.p2align 2,,3
 2196              		.global	_ZN11GCodeBuffer11ReadUIValueEPKcPS1_
 2197              		.syntax unified
 2198              		.thumb
 2199              		.thumb_func
 2200              		.fpu fpv4-sp-d16
 2201              		.type	_ZN11GCodeBuffer11ReadUIValueEPKcPS1_, %function
 2202              	_ZN11GCodeBuffer11ReadUIValueEPKcPS1_:
 2203              		@ args = 0, pretend = 0, frame = 8
 2204              		@ frame_needed = 0, uses_anonymous_args = 0
 2205 0000 30B5     		push	{r4, r5, lr}
 2206 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 2207 0004 5B2C     		cmp	r4, #91
 2208 0006 83B0     		sub	sp, sp, #12
 2209 0008 07D0     		beq	.L491
 2210 000a 0B46     		mov	r3, r1
 2211 000c 1846     		mov	r0, r3
 2212 000e 1146     		mov	r1, r2
 2213 0010 0A22     		movs	r2, #10
 2214 0012 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 2215 0016 03B0     		add	sp, sp, #12
 2216              		@ sp needed
 2217 0018 30BD     		pop	{r4, r5, pc}
 2218              	.L491:
 2219 001a 01AB     		add	r3, sp, #4
 2220 001c FFF7FEFF 		bl	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue
 2221 0020 0228     		cmp	r0, #2
 2222 0022 09D0     		beq	.L484
 2223 0024 0328     		cmp	r0, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 40


 2224 0026 04D1     		bne	.L492
 2225 0028 0198     		ldr	r0, [sp, #4]
 2226 002a 20EAE070 		bic	r0, r0, r0, asr #31
 2227 002e 03B0     		add	sp, sp, #12
 2228              		@ sp needed
 2229 0030 30BD     		pop	{r4, r5, pc}
 2230              	.L492:
 2231 0032 0020     		movs	r0, #0
 2232 0034 03B0     		add	sp, sp, #12
 2233              		@ sp needed
 2234 0036 30BD     		pop	{r4, r5, pc}
 2235              	.L484:
 2236 0038 0198     		ldr	r0, [sp, #4]
 2237 003a 03B0     		add	sp, sp, #12
 2238              		@ sp needed
 2239 003c 30BD     		pop	{r4, r5, pc}
 2240              		.size	_ZN11GCodeBuffer11ReadUIValueEPKcPS1_, .-_ZN11GCodeBuffer11ReadUIValueEPKcPS1_
 2241 003e 00BF     		.section	.text._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb,"ax",%progbits
 2242              		.align	1
 2243              		.p2align 2,,3
 2244              		.global	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2245              		.syntax unified
 2246              		.thumb
 2247              		.thumb_func
 2248              		.fpu fpv4-sp-d16
 2249              		.type	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, %function
 2250              	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb:
 2251              		@ args = 0, pretend = 0, frame = 8
 2252              		@ frame_needed = 0, uses_anonymous_args = 0
 2253 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2254 0004 0F46     		mov	r7, r1
 2255 0006 416A     		ldr	r1, [r0, #36]
 2256 0008 0029     		cmp	r1, #0
 2257 000a 83B0     		sub	sp, sp, #12
 2258 000c 1646     		mov	r6, r2
 2259 000e 37DB     		blt	.L494
 2260 0010 9A46     		mov	r10, r3
 2261 0012 1368     		ldr	r3, [r2]
 2262 0014 0131     		adds	r1, r1, #1
 2263 0016 00F15508 		add	r8, r0, #85
 2264 001a 0546     		mov	r5, r0
 2265 001c 4144     		add	r1, r1, r8
 2266 001e FBB1     		cbz	r3, .L498
 2267 0020 A7F10409 		sub	r9, r7, #4
 2268 0024 CB46     		mov	fp, r9
 2269 0026 0024     		movs	r4, #0
 2270 0028 02E0     		b	.L499
 2271              	.L507:
 2272 002a 3368     		ldr	r3, [r6]
 2273 002c A342     		cmp	r3, r4
 2274 002e 17D9     		bls	.L498
 2275              	.L499:
 2276 0030 01AA     		add	r2, sp, #4
 2277 0032 2846     		mov	r0, r5
 2278 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer11ReadUIValueEPKcPS1_
 2279 0038 0199     		ldr	r1, [sp, #4]
 2280 003a 4BF8040F 		str	r0, [fp, #4]!
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 41


 2281 003e 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2282 0040 3A2B     		cmp	r3, #58
 2283 0042 04F10104 		add	r4, r4, #1
 2284 0046 01F10101 		add	r1, r1, #1
 2285 004a EED0     		beq	.L507
 2286 004c BAF1000F 		cmp	r10, #0
 2287 0050 22D1     		bne	.L508
 2288              	.L500:
 2289 0052 3460     		str	r4, [r6]
 2290              	.L501:
 2291 0054 4FF0FF33 		mov	r3, #-1
 2292 0058 6B62     		str	r3, [r5, #36]
 2293 005a 03B0     		add	sp, sp, #12
 2294              		@ sp needed
 2295 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2296              	.L498:
 2297 0060 144B     		ldr	r3, .L509
 2298 0062 154A     		ldr	r2, .L509+4
 2299 0064 5868     		ldr	r0, [r3, #4]
 2300 0066 40F2B511 		movw	r1, #437
 2301 006a 4346     		mov	r3, r8
 2302 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2303 0070 4FF0FF32 		mov	r2, #-1
 2304 0074 0023     		movs	r3, #0
 2305 0076 6A62     		str	r2, [r5, #36]
 2306 0078 3360     		str	r3, [r6]
 2307 007a 03B0     		add	sp, sp, #12
 2308              		@ sp needed
 2309 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2310              	.L494:
 2311 0080 40F25B23 		movw	r3, #603
 2312 0084 0D4A     		ldr	r2, .L509+8
 2313 0086 0E49     		ldr	r1, .L509+12
 2314 0088 0A48     		ldr	r0, .L509
 2315 008a FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2316 008e 0023     		movs	r3, #0
 2317 0090 3360     		str	r3, [r6]
 2318 0092 03B0     		add	sp, sp, #12
 2319              		@ sp needed
 2320 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2321              	.L508:
 2322 0098 012C     		cmp	r4, #1
 2323 009a DAD1     		bne	.L500
 2324 009c 3368     		ldr	r3, [r6]
 2325 009e 012B     		cmp	r3, #1
 2326 00a0 D7D9     		bls	.L500
 2327 00a2 09EB8309 		add	r9, r9, r3, lsl #2
 2328 00a6 3B46     		mov	r3, r7
 2329              	.L502:
 2330 00a8 3A68     		ldr	r2, [r7]
 2331 00aa 43F8042F 		str	r2, [r3, #4]!
 2332 00ae 4B45     		cmp	r3, r9
 2333 00b0 FAD1     		bne	.L502
 2334 00b2 CFE7     		b	.L501
 2335              	.L510:
 2336              		.align	2
 2337              	.L509:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 42


 2338 00b4 00000000 		.word	reprap
 2339 00b8 00000000 		.word	.LC13
 2340 00bc 00000000 		.word	.LANCHOR7
 2341 00c0 00000000 		.word	.LC6
 2342              		.size	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, .-_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2343              		.section	.text._ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb,"ax",%progbits
 2344              		.align	1
 2345              		.p2align 2,,3
 2346              		.global	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 2347              		.syntax unified
 2348              		.thumb
 2349              		.thumb_func
 2350              		.fpu fpv4-sp-d16
 2351              		.type	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, %function
 2352              	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb:
 2353              		@ args = 12, pretend = 0, frame = 8
 2354              		@ frame_needed = 0, uses_anonymous_args = 0
 2355 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2356 0004 83B0     		sub	sp, sp, #12
 2357 0006 1546     		mov	r5, r2
 2358 0008 1F46     		mov	r7, r3
 2359 000a 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 2360 000e 0646     		mov	r6, r0
 2361 0010 8946     		mov	r9, r1
 2362 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2363 0016 0446     		mov	r4, r0
 2364 0018 18B9     		cbnz	r0, .L518
 2365 001a 2046     		mov	r0, r4
 2366 001c 03B0     		add	sp, sp, #12
 2367              		@ sp needed
 2368 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2369              	.L518:
 2370 0022 02AA     		add	r2, sp, #8
 2371 0024 4346     		mov	r3, r8
 2372 0026 42F8045D 		str	r5, [r2, #-4]!
 2373 002a 3946     		mov	r1, r7
 2374 002c 3046     		mov	r0, r6
 2375 002e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2376 0032 019B     		ldr	r3, [sp, #4]
 2377 0034 AB42     		cmp	r3, r5
 2378 0036 09D0     		beq	.L519
 2379 0038 2B46     		mov	r3, r5
 2380 003a 4A46     		mov	r2, r9
 2381 003c 0749     		ldr	r1, .L520
 2382 003e 0A98     		ldr	r0, [sp, #40]
 2383 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2384 0044 2046     		mov	r0, r4
 2385 0046 03B0     		add	sp, sp, #12
 2386              		@ sp needed
 2387 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2388              	.L519:
 2389 004c 0B9A     		ldr	r2, [sp, #44]
 2390 004e 0024     		movs	r4, #0
 2391 0050 0123     		movs	r3, #1
 2392 0052 2046     		mov	r0, r4
 2393 0054 1370     		strb	r3, [r2]
 2394 0056 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 43


 2395              		@ sp needed
 2396 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2397              	.L521:
 2398              		.align	2
 2399              	.L520:
 2400 005c 00000000 		.word	.LC12
 2401              		.size	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, .-_ZN11GCodeBuffer13TryGetUIArrayEcjPmR
 2402              		.section	.text._ZN11GCodeBuffer10ReadIValueEPKcPS1_,"ax",%progbits
 2403              		.align	1
 2404              		.p2align 2,,3
 2405              		.global	_ZN11GCodeBuffer10ReadIValueEPKcPS1_
 2406              		.syntax unified
 2407              		.thumb
 2408              		.thumb_func
 2409              		.fpu fpv4-sp-d16
 2410              		.type	_ZN11GCodeBuffer10ReadIValueEPKcPS1_, %function
 2411              	_ZN11GCodeBuffer10ReadIValueEPKcPS1_:
 2412              		@ args = 0, pretend = 0, frame = 8
 2413              		@ frame_needed = 0, uses_anonymous_args = 0
 2414 0000 30B5     		push	{r4, r5, lr}
 2415 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 2416 0004 5B2C     		cmp	r4, #91
 2417 0006 83B0     		sub	sp, sp, #12
 2418 0008 07D0     		beq	.L531
 2419 000a 0B46     		mov	r3, r1
 2420 000c 1846     		mov	r0, r3
 2421 000e 1146     		mov	r1, r2
 2422 0010 0A22     		movs	r2, #10
 2423 0012 FFF7FEFF 		bl	strtol
 2424 0016 03B0     		add	sp, sp, #12
 2425              		@ sp needed
 2426 0018 30BD     		pop	{r4, r5, pc}
 2427              	.L531:
 2428 001a 01AB     		add	r3, sp, #4
 2429 001c FFF7FEFF 		bl	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue
 2430 0020 0228     		cmp	r0, #2
 2431 0022 01D0     		beq	.L525
 2432 0024 0328     		cmp	r0, #3
 2433 0026 02D1     		bne	.L529
 2434              	.L525:
 2435 0028 0198     		ldr	r0, [sp, #4]
 2436 002a 03B0     		add	sp, sp, #12
 2437              		@ sp needed
 2438 002c 30BD     		pop	{r4, r5, pc}
 2439              	.L529:
 2440 002e 0020     		movs	r0, #0
 2441 0030 03B0     		add	sp, sp, #12
 2442              		@ sp needed
 2443 0032 30BD     		pop	{r4, r5, pc}
 2444              		.size	_ZN11GCodeBuffer10ReadIValueEPKcPS1_, .-_ZN11GCodeBuffer10ReadIValueEPKcPS1_
 2445              		.section	.text._ZN11GCodeBuffer11GetIntArrayEPlRjb,"ax",%progbits
 2446              		.align	1
 2447              		.p2align 2,,3
 2448              		.global	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 2449              		.syntax unified
 2450              		.thumb
 2451              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 44


 2452              		.fpu fpv4-sp-d16
 2453              		.type	_ZN11GCodeBuffer11GetIntArrayEPlRjb, %function
 2454              	_ZN11GCodeBuffer11GetIntArrayEPlRjb:
 2455              		@ args = 0, pretend = 0, frame = 8
 2456              		@ frame_needed = 0, uses_anonymous_args = 0
 2457 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2458 0004 0F46     		mov	r7, r1
 2459 0006 416A     		ldr	r1, [r0, #36]
 2460 0008 0029     		cmp	r1, #0
 2461 000a 83B0     		sub	sp, sp, #12
 2462 000c 1646     		mov	r6, r2
 2463 000e 37DB     		blt	.L533
 2464 0010 9A46     		mov	r10, r3
 2465 0012 1368     		ldr	r3, [r2]
 2466 0014 0131     		adds	r1, r1, #1
 2467 0016 00F15508 		add	r8, r0, #85
 2468 001a 0546     		mov	r5, r0
 2469 001c 4144     		add	r1, r1, r8
 2470 001e FBB1     		cbz	r3, .L537
 2471 0020 A7F10409 		sub	r9, r7, #4
 2472 0024 CB46     		mov	fp, r9
 2473 0026 0024     		movs	r4, #0
 2474 0028 02E0     		b	.L538
 2475              	.L546:
 2476 002a 3368     		ldr	r3, [r6]
 2477 002c A342     		cmp	r3, r4
 2478 002e 17D9     		bls	.L537
 2479              	.L538:
 2480 0030 01AA     		add	r2, sp, #4
 2481 0032 2846     		mov	r0, r5
 2482 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer10ReadIValueEPKcPS1_
 2483 0038 0199     		ldr	r1, [sp, #4]
 2484 003a 4BF8040F 		str	r0, [fp, #4]!
 2485 003e 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2486 0040 3A2B     		cmp	r3, #58
 2487 0042 04F10104 		add	r4, r4, #1
 2488 0046 01F10101 		add	r1, r1, #1
 2489 004a EED0     		beq	.L546
 2490 004c BAF1000F 		cmp	r10, #0
 2491 0050 22D1     		bne	.L547
 2492              	.L539:
 2493 0052 3460     		str	r4, [r6]
 2494              	.L540:
 2495 0054 4FF0FF33 		mov	r3, #-1
 2496 0058 6B62     		str	r3, [r5, #36]
 2497 005a 03B0     		add	sp, sp, #12
 2498              		@ sp needed
 2499 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2500              	.L537:
 2501 0060 144B     		ldr	r3, .L548
 2502 0062 154A     		ldr	r2, .L548+4
 2503 0064 5868     		ldr	r0, [r3, #4]
 2504 0066 40F2B511 		movw	r1, #437
 2505 006a 4346     		mov	r3, r8
 2506 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2507 0070 4FF0FF32 		mov	r2, #-1
 2508 0074 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 45


 2509 0076 6A62     		str	r2, [r5, #36]
 2510 0078 3360     		str	r3, [r6]
 2511 007a 03B0     		add	sp, sp, #12
 2512              		@ sp needed
 2513 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2514              	.L533:
 2515 0080 40F22B23 		movw	r3, #555
 2516 0084 0D4A     		ldr	r2, .L548+8
 2517 0086 0E49     		ldr	r1, .L548+12
 2518 0088 0A48     		ldr	r0, .L548
 2519 008a FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2520 008e 0023     		movs	r3, #0
 2521 0090 3360     		str	r3, [r6]
 2522 0092 03B0     		add	sp, sp, #12
 2523              		@ sp needed
 2524 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2525              	.L547:
 2526 0098 012C     		cmp	r4, #1
 2527 009a DAD1     		bne	.L539
 2528 009c 3368     		ldr	r3, [r6]
 2529 009e 012B     		cmp	r3, #1
 2530 00a0 D7D9     		bls	.L539
 2531 00a2 09EB8309 		add	r9, r9, r3, lsl #2
 2532 00a6 3B46     		mov	r3, r7
 2533              	.L541:
 2534 00a8 3A68     		ldr	r2, [r7]
 2535 00aa 43F8042F 		str	r2, [r3, #4]!
 2536 00ae 4B45     		cmp	r3, r9
 2537 00b0 FAD1     		bne	.L541
 2538 00b2 CFE7     		b	.L540
 2539              	.L549:
 2540              		.align	2
 2541              	.L548:
 2542 00b4 00000000 		.word	reprap
 2543 00b8 00000000 		.word	.LC14
 2544 00bc 00000000 		.word	.LANCHOR8
 2545 00c0 00000000 		.word	.LC6
 2546              		.size	_ZN11GCodeBuffer11GetIntArrayEPlRjb, .-_ZN11GCodeBuffer11GetIntArrayEPlRjb
 2547              		.section	.text.hot._ZN11GCodeBuffer9GetIValueEv,"ax",%progbits
 2548              		.align	1
 2549              		.p2align 2,,3
 2550              		.global	_ZN11GCodeBuffer9GetIValueEv
 2551              		.syntax unified
 2552              		.thumb
 2553              		.thumb_func
 2554              		.fpu fpv4-sp-d16
 2555              		.type	_ZN11GCodeBuffer9GetIValueEv, %function
 2556              	_ZN11GCodeBuffer9GetIValueEv:
 2557              		@ args = 0, pretend = 0, frame = 0
 2558              		@ frame_needed = 0, uses_anonymous_args = 0
 2559 0000 10B5     		push	{r4, lr}
 2560 0002 416A     		ldr	r1, [r0, #36]
 2561 0004 0029     		cmp	r1, #0
 2562 0006 09DB     		blt	.L551
 2563 0008 5631     		adds	r1, r1, #86
 2564 000a 0446     		mov	r4, r0
 2565 000c 0144     		add	r1, r1, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 46


 2566 000e 0022     		movs	r2, #0
 2567 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer10ReadIValueEPKcPS1_
 2568 0014 4FF0FF33 		mov	r3, #-1
 2569 0018 6362     		str	r3, [r4, #36]
 2570 001a 10BD     		pop	{r4, pc}
 2571              	.L551:
 2572 001c 40F2E523 		movw	r3, #741
 2573 0020 034A     		ldr	r2, .L554
 2574 0022 0449     		ldr	r1, .L554+4
 2575 0024 0448     		ldr	r0, .L554+8
 2576 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2577 002a 0020     		movs	r0, #0
 2578 002c 10BD     		pop	{r4, pc}
 2579              	.L555:
 2580 002e 00BF     		.align	2
 2581              	.L554:
 2582 0030 00000000 		.word	.LANCHOR9
 2583 0034 00000000 		.word	.LC6
 2584 0038 00000000 		.word	reprap
 2585              		.size	_ZN11GCodeBuffer9GetIValueEv, .-_ZN11GCodeBuffer9GetIValueEv
 2586              		.section	.text._ZN11GCodeBuffer12TryGetIValueEcRlRb,"ax",%progbits
 2587              		.align	1
 2588              		.p2align 2,,3
 2589              		.global	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2590              		.syntax unified
 2591              		.thumb
 2592              		.thumb_func
 2593              		.fpu fpv4-sp-d16
 2594              		.type	_ZN11GCodeBuffer12TryGetIValueEcRlRb, %function
 2595              	_ZN11GCodeBuffer12TryGetIValueEcRlRb:
 2596              		@ args = 0, pretend = 0, frame = 0
 2597              		@ frame_needed = 0, uses_anonymous_args = 0
 2598 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2599 0002 1646     		mov	r6, r2
 2600 0004 1D46     		mov	r5, r3
 2601 0006 0746     		mov	r7, r0
 2602 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2603 000c 0446     		mov	r4, r0
 2604 000e 28B1     		cbz	r0, .L557
 2605 0010 3846     		mov	r0, r7
 2606 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2607 0016 0123     		movs	r3, #1
 2608 0018 3060     		str	r0, [r6]
 2609 001a 2B70     		strb	r3, [r5]
 2610              	.L557:
 2611 001c 2046     		mov	r0, r4
 2612 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2613              		.size	_ZN11GCodeBuffer12TryGetIValueEcRlRb, .-_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2614              		.section	.text._ZN11GCodeBuffer12TryGetBValueEcRbS0_,"ax",%progbits
 2615              		.align	1
 2616              		.p2align 2,,3
 2617              		.global	_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 2618              		.syntax unified
 2619              		.thumb
 2620              		.thumb_func
 2621              		.fpu fpv4-sp-d16
 2622              		.type	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 47


 2623              	_ZN11GCodeBuffer12TryGetBValueEcRbS0_:
 2624              		@ args = 0, pretend = 0, frame = 0
 2625              		@ frame_needed = 0, uses_anonymous_args = 0
 2626 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2627 0002 1646     		mov	r6, r2
 2628 0004 1D46     		mov	r5, r3
 2629 0006 0746     		mov	r7, r0
 2630 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2631 000c 0446     		mov	r4, r0
 2632 000e 50B1     		cbz	r0, .L563
 2633 0010 3846     		mov	r0, r7
 2634 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2635 0016 0028     		cmp	r0, #0
 2636 0018 4FF00103 		mov	r3, #1
 2637 001c D4BF     		ite	le
 2638 001e 0020     		movle	r0, #0
 2639 0020 0120     		movgt	r0, #1
 2640 0022 3070     		strb	r0, [r6]
 2641 0024 2B70     		strb	r3, [r5]
 2642              	.L563:
 2643 0026 2046     		mov	r0, r4
 2644 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2645              		.size	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, .-_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 2646              		.global	__aeabi_f2d
 2647 002a 00BF     		.section	.text._ZN11GCodeBuffer19GetStringExpressionERK9StringRef,"ax",%progbits
 2648              		.align	1
 2649              		.p2align 2,,3
 2650              		.global	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef
 2651              		.syntax unified
 2652              		.thumb
 2653              		.thumb_func
 2654              		.fpu fpv4-sp-d16
 2655              		.type	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef, %function
 2656              	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef:
 2657              		@ args = 0, pretend = 0, frame = 24
 2658              		@ frame_needed = 0, uses_anonymous_args = 0
 2659 0000 30B5     		push	{r4, r5, lr}
 2660 0002 426A     		ldr	r2, [r0, #36]
 2661 0004 87B0     		sub	sp, sp, #28
 2662 0006 00F15504 		add	r4, r0, #85
 2663 000a 0D46     		mov	r5, r1
 2664 000c 01AB     		add	r3, sp, #4
 2665 000e A118     		adds	r1, r4, r2
 2666 0010 0022     		movs	r2, #0
 2667 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer18EvaluateExpressionEPKcPS1_R15ExpressionValue
 2668 0016 0138     		subs	r0, r0, #1
 2669 0018 0A28     		cmp	r0, #10
 2670 001a 5BD8     		bhi	.L580
 2671 001c DFE800F0 		tbb	[pc, r0]
 2672              	.L571:
 2673 0020 11       		.byte	(.L570-.L571)/2
 2674 0021 1F       		.byte	(.L572-.L571)/2
 2675 0022 27       		.byte	(.L573-.L571)/2
 2676 0023 2F       		.byte	(.L574-.L571)/2
 2677 0024 3B       		.byte	(.L575-.L571)/2
 2678 0025 47       		.byte	(.L576-.L571)/2
 2679 0026 5A       		.byte	(.L580-.L571)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 48


 2680 0027 5A       		.byte	(.L580-.L571)/2
 2681 0028 5A       		.byte	(.L580-.L571)/2
 2682 0029 53       		.byte	(.L577-.L571)/2
 2683 002a 06       		.byte	(.L578-.L571)/2
 2684 002b 00       		.p2align 1
 2685              	.L578:
 2686 002c 0199     		ldr	r1, [sp, #4]
 2687 002e 02A8     		add	r0, sp, #8
 2688 0030 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 2689 0034 02A9     		add	r1, sp, #8
 2690 0036 2846     		mov	r0, r5
 2691 0038 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2692 003c 0120     		movs	r0, #1
 2693              	.L569:
 2694 003e 07B0     		add	sp, sp, #28
 2695              		@ sp needed
 2696 0040 30BD     		pop	{r4, r5, pc}
 2697              	.L570:
 2698 0042 9DF80410 		ldrb	r1, [sp, #4]	@ zero_extendqisi2
 2699 0046 244A     		ldr	r2, .L583
 2700 0048 244B     		ldr	r3, .L583+4
 2701 004a 2846     		mov	r0, r5
 2702 004c 0029     		cmp	r1, #0
 2703 004e 14BF     		ite	ne
 2704 0050 1146     		movne	r1, r2
 2705 0052 1946     		moveq	r1, r3
 2706 0054 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2707 0058 0120     		movs	r0, #1
 2708 005a 07B0     		add	sp, sp, #28
 2709              		@ sp needed
 2710 005c 30BD     		pop	{r4, r5, pc}
 2711              	.L572:
 2712 005e 2846     		mov	r0, r5
 2713 0060 019A     		ldr	r2, [sp, #4]
 2714 0062 1F49     		ldr	r1, .L583+8
 2715 0064 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2716 0068 0120     		movs	r0, #1
 2717 006a 07B0     		add	sp, sp, #28
 2718              		@ sp needed
 2719 006c 30BD     		pop	{r4, r5, pc}
 2720              	.L573:
 2721 006e 2846     		mov	r0, r5
 2722 0070 019A     		ldr	r2, [sp, #4]
 2723 0072 1C49     		ldr	r1, .L583+12
 2724 0074 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2725 0078 0120     		movs	r0, #1
 2726 007a 07B0     		add	sp, sp, #28
 2727              		@ sp needed
 2728 007c 30BD     		pop	{r4, r5, pc}
 2729              	.L574:
 2730 007e 0198     		ldr	r0, [sp, #4]	@ float
 2731 0080 FFF7FEFF 		bl	__aeabi_f2d
 2732 0084 0246     		mov	r2, r0
 2733 0086 0B46     		mov	r3, r1
 2734 0088 2846     		mov	r0, r5
 2735 008a 1749     		ldr	r1, .L583+16
 2736 008c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 49


 2737 0090 0120     		movs	r0, #1
 2738 0092 07B0     		add	sp, sp, #28
 2739              		@ sp needed
 2740 0094 30BD     		pop	{r4, r5, pc}
 2741              	.L575:
 2742 0096 0198     		ldr	r0, [sp, #4]	@ float
 2743 0098 FFF7FEFF 		bl	__aeabi_f2d
 2744 009c 0246     		mov	r2, r0
 2745 009e 0B46     		mov	r3, r1
 2746 00a0 2846     		mov	r0, r5
 2747 00a2 1249     		ldr	r1, .L583+20
 2748 00a4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2749 00a8 0120     		movs	r0, #1
 2750 00aa 07B0     		add	sp, sp, #28
 2751              		@ sp needed
 2752 00ac 30BD     		pop	{r4, r5, pc}
 2753              	.L576:
 2754 00ae 0198     		ldr	r0, [sp, #4]	@ float
 2755 00b0 FFF7FEFF 		bl	__aeabi_f2d
 2756 00b4 0246     		mov	r2, r0
 2757 00b6 0B46     		mov	r3, r1
 2758 00b8 2846     		mov	r0, r5
 2759 00ba 0D49     		ldr	r1, .L583+24
 2760 00bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2761 00c0 0120     		movs	r0, #1
 2762 00c2 07B0     		add	sp, sp, #28
 2763              		@ sp needed
 2764 00c4 30BD     		pop	{r4, r5, pc}
 2765              	.L577:
 2766 00c6 2846     		mov	r0, r5
 2767 00c8 0199     		ldr	r1, [sp, #4]
 2768 00ca FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2769 00ce 0120     		movs	r0, #1
 2770 00d0 07B0     		add	sp, sp, #28
 2771              		@ sp needed
 2772 00d2 30BD     		pop	{r4, r5, pc}
 2773              	.L580:
 2774 00d4 0020     		movs	r0, #0
 2775 00d6 B2E7     		b	.L569
 2776              	.L584:
 2777              		.align	2
 2778              	.L583:
 2779 00d8 00000000 		.word	.LC15
 2780 00dc 08000000 		.word	.LC16
 2781 00e0 28000000 		.word	.LC20
 2782 00e4 2C000000 		.word	.LC21
 2783 00e8 10000000 		.word	.LC17
 2784 00ec 18000000 		.word	.LC18
 2785 00f0 20000000 		.word	.LC19
 2786              		.size	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef, .-_ZN11GCodeBuffer19GetStringExpressionE
 2787              		.section	.text._ZN11GCodeBuffer15GetQuotedStringERK9StringRef,"ax",%progbits
 2788              		.align	1
 2789              		.p2align 2,,3
 2790              		.global	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 2791              		.syntax unified
 2792              		.thumb
 2793              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 50


 2794              		.fpu fpv4-sp-d16
 2795              		.type	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, %function
 2796              	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef:
 2797              		@ args = 0, pretend = 0, frame = 0
 2798              		@ frame_needed = 0, uses_anonymous_args = 0
 2799 0000 10B5     		push	{r4, lr}
 2800 0002 0B68     		ldr	r3, [r1]
 2801 0004 0024     		movs	r4, #0
 2802 0006 1C70     		strb	r4, [r3]
 2803 0008 436A     		ldr	r3, [r0, #36]
 2804 000a A342     		cmp	r3, r4
 2805 000c 0CDB     		blt	.L586
 2806 000e 0133     		adds	r3, r3, #1
 2807 0010 C418     		adds	r4, r0, r3
 2808 0012 4362     		str	r3, [r0, #36]
 2809 0014 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 2810 0018 222B     		cmp	r3, #34
 2811 001a 0ED0     		beq	.L588
 2812 001c 5B2B     		cmp	r3, #91
 2813 001e 0AD1     		bne	.L587
 2814 0020 BDE81040 		pop	{r4, lr}
 2815 0024 FFF7FEBF 		b	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef
 2816              	.L586:
 2817 0028 40F27623 		movw	r3, #630
 2818 002c 054A     		ldr	r2, .L592
 2819 002e 0649     		ldr	r1, .L592+4
 2820 0030 0648     		ldr	r0, .L592+8
 2821 0032 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2822              	.L587:
 2823 0036 0020     		movs	r0, #0
 2824 0038 10BD     		pop	{r4, pc}
 2825              	.L588:
 2826 003a BDE81040 		pop	{r4, lr}
 2827 003e FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 2828              	.L593:
 2829 0042 00BF     		.align	2
 2830              	.L592:
 2831 0044 00000000 		.word	.LANCHOR10
 2832 0048 00000000 		.word	.LC6
 2833 004c 00000000 		.word	reprap
 2834              		.size	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer15GetQuotedStringERK9Strin
 2835              		.section	.text._ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb,"ax",%progbits
 2836              		.align	1
 2837              		.p2align 2,,3
 2838              		.global	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2839              		.syntax unified
 2840              		.thumb
 2841              		.thumb_func
 2842              		.fpu fpv4-sp-d16
 2843              		.type	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, %function
 2844              	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb:
 2845              		@ args = 0, pretend = 0, frame = 0
 2846              		@ frame_needed = 0, uses_anonymous_args = 0
 2847 0000 70B5     		push	{r4, r5, r6, lr}
 2848 0002 1546     		mov	r5, r2
 2849 0004 1E46     		mov	r6, r3
 2850 0006 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 51


 2851 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2852 000c 08B9     		cbnz	r0, .L595
 2853              	.L597:
 2854 000e 0020     		movs	r0, #0
 2855 0010 70BD     		pop	{r4, r5, r6, pc}
 2856              	.L595:
 2857 0012 2946     		mov	r1, r5
 2858 0014 2046     		mov	r0, r4
 2859 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 2860 001a 0028     		cmp	r0, #0
 2861 001c F7D0     		beq	.L597
 2862 001e 0123     		movs	r3, #1
 2863 0020 3370     		strb	r3, [r6]
 2864 0022 70BD     		pop	{r4, r5, r6, pc}
 2865              		.size	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer18TryGetQuotedString
 2866              		.section	.text._ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 2867              		.align	1
 2868              		.p2align 2,,3
 2869              		.global	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 2870              		.syntax unified
 2871              		.thumb
 2872              		.thumb_func
 2873              		.fpu fpv4-sp-d16
 2874              		.type	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, %function
 2875              	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef:
 2876              		@ args = 0, pretend = 0, frame = 0
 2877              		@ frame_needed = 0, uses_anonymous_args = 0
 2878 0000 38B5     		push	{r3, r4, r5, lr}
 2879 0002 0B68     		ldr	r3, [r1]
 2880 0004 0022     		movs	r2, #0
 2881 0006 1A70     		strb	r2, [r3]
 2882 0008 426A     		ldr	r2, [r0, #36]
 2883 000a 8318     		adds	r3, r0, r2
 2884 000c 93F85530 		ldrb	r3, [r3, #85]	@ zero_extendqisi2
 2885 0010 222B     		cmp	r3, #34
 2886 0012 1ED0     		beq	.L609
 2887 0014 5B2B     		cmp	r3, #91
 2888 0016 20D0     		beq	.L610
 2889 0018 0D46     		mov	r5, r1
 2890 001a 0132     		adds	r2, r2, #1
 2891 001c 016A     		ldr	r1, [r0, #32]
 2892 001e 4262     		str	r2, [r0, #36]
 2893 0020 1F2B     		cmp	r3, #31
 2894 0022 0446     		mov	r4, r0
 2895 0024 8161     		str	r1, [r0, #24]
 2896 0026 0BD9     		bls	.L605
 2897              	.L606:
 2898 0028 1946     		mov	r1, r3
 2899 002a 2846     		mov	r0, r5
 2900 002c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2901 0030 636A     		ldr	r3, [r4, #36]
 2902 0032 5A1C     		adds	r2, r3, #1
 2903 0034 2344     		add	r3, r3, r4
 2904 0036 6262     		str	r2, [r4, #36]
 2905 0038 93F85530 		ldrb	r3, [r3, #85]	@ zero_extendqisi2
 2906 003c 1F2B     		cmp	r3, #31
 2907 003e F3D8     		bhi	.L606
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 52


 2908              	.L605:
 2909 0040 2846     		mov	r0, r5
 2910 0042 FFF7FEFF 		bl	_ZNK9StringRef19StripTrailingSpacesEv
 2911 0046 2B68     		ldr	r3, [r5]
 2912 0048 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 2913 004a 0030     		adds	r0, r0, #0
 2914 004c 18BF     		it	ne
 2915 004e 0120     		movne	r0, #1
 2916 0050 38BD     		pop	{r3, r4, r5, pc}
 2917              	.L609:
 2918 0052 BDE83840 		pop	{r3, r4, r5, lr}
 2919 0056 FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 2920              	.L610:
 2921 005a BDE83840 		pop	{r3, r4, r5, lr}
 2922 005e FFF7FEBF 		b	_ZN11GCodeBuffer19GetStringExpressionERK9StringRef
 2923              		.size	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer31Internal
 2924 0062 00BF     		.section	.text._ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 2925              		.align	1
 2926              		.p2align 2,,3
 2927              		.global	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2928              		.syntax unified
 2929              		.thumb
 2930              		.thumb_func
 2931              		.fpu fpv4-sp-d16
 2932              		.type	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, %function
 2933              	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef:
 2934              		@ args = 0, pretend = 0, frame = 0
 2935              		@ frame_needed = 0, uses_anonymous_args = 0
 2936 0000 08B5     		push	{r3, lr}
 2937 0002 436A     		ldr	r3, [r0, #36]
 2938 0004 002B     		cmp	r3, #0
 2939 0006 05DB     		blt	.L612
 2940 0008 0133     		adds	r3, r3, #1
 2941 000a 4362     		str	r3, [r0, #36]
 2942 000c BDE80840 		pop	{r3, lr}
 2943 0010 FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 2944              	.L612:
 2945 0014 40F2A923 		movw	r3, #681
 2946 0018 034A     		ldr	r2, .L614
 2947 001a 0449     		ldr	r1, .L614+4
 2948 001c 0448     		ldr	r0, .L614+8
 2949 001e FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2950 0022 0020     		movs	r0, #0
 2951 0024 08BD     		pop	{r3, pc}
 2952              	.L615:
 2953 0026 00BF     		.align	2
 2954              	.L614:
 2955 0028 00000000 		.word	.LANCHOR11
 2956 002c 00000000 		.word	.LC6
 2957 0030 00000000 		.word	reprap
 2958              		.size	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23GetPossiblyQuote
 2959              		.section	.text._ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb,"ax",%progbits
 2960              		.align	1
 2961              		.p2align 2,,3
 2962              		.global	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 2963              		.syntax unified
 2964              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 53


 2965              		.thumb_func
 2966              		.fpu fpv4-sp-d16
 2967              		.type	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, %function
 2968              	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb:
 2969              		@ args = 0, pretend = 0, frame = 0
 2970              		@ frame_needed = 0, uses_anonymous_args = 0
 2971 0000 70B5     		push	{r4, r5, r6, lr}
 2972 0002 1546     		mov	r5, r2
 2973 0004 1E46     		mov	r6, r3
 2974 0006 0446     		mov	r4, r0
 2975 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2976 000c 08B9     		cbnz	r0, .L617
 2977              	.L619:
 2978 000e 0020     		movs	r0, #0
 2979 0010 70BD     		pop	{r4, r5, r6, pc}
 2980              	.L617:
 2981 0012 2946     		mov	r1, r5
 2982 0014 2046     		mov	r0, r4
 2983 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2984 001a 0028     		cmp	r0, #0
 2985 001c F7D0     		beq	.L619
 2986 001e 0123     		movs	r3, #1
 2987 0020 3370     		strb	r3, [r6]
 2988 0022 70BD     		pop	{r4, r5, r6, pc}
 2989              		.size	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer26TryGetPoss
 2990              		.section	.text._ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef,"ax",%progbits
 2991              		.align	1
 2992              		.p2align 2,,3
 2993              		.global	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2994              		.syntax unified
 2995              		.thumb
 2996              		.thumb_func
 2997              		.fpu fpv4-sp-d16
 2998              		.type	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, %function
 2999              	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef:
 3000              		@ args = 0, pretend = 0, frame = 0
 3001              		@ frame_needed = 0, uses_anonymous_args = 0
 3002              		@ link register save eliminated.
 3003 0000 30B4     		push	{r4, r5}
 3004 0002 D0E90535 		ldrd	r3, r5, [r0, #20]
 3005 0006 AB42     		cmp	r3, r5
 3006 0008 4362     		str	r3, [r0, #36]
 3007 000a 0DD2     		bcs	.L627
 3008 000c 03F15504 		add	r4, r3, #85
 3009 0010 0444     		add	r4, r4, r0
 3010              	.L628:
 3011 0012 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 3012 0016 202A     		cmp	r2, #32
 3013 0018 03F10103 		add	r3, r3, #1
 3014 001c 01D0     		beq	.L626
 3015 001e 092A     		cmp	r2, #9
 3016 0020 02D1     		bne	.L627
 3017              	.L626:
 3018 0022 9D42     		cmp	r5, r3
 3019 0024 4362     		str	r3, [r0, #36]
 3020 0026 F4D8     		bhi	.L628
 3021              	.L627:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 54


 3022 0028 30BC     		pop	{r4, r5}
 3023 002a FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 3024              		.size	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, .-_ZN11GCodeBuffer22GetUnprecedentedS
 3025 002e 00BF     		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 3026              		.align	1
 3027              		.p2align 2,,3
 3028              		.weak	_ZN6StringILj220EE6printfEPKcz
 3029              		.syntax unified
 3030              		.thumb
 3031              		.thumb_func
 3032              		.fpu fpv4-sp-d16
 3033              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 3034              	_ZN6StringILj220EE6printfEPKcz:
 3035              		@ args = 4, pretend = 12, frame = 16
 3036              		@ frame_needed = 0, uses_anonymous_args = 1
 3037 0000 0EB4     		push	{r1, r2, r3}
 3038 0002 00B5     		push	{lr}
 3039 0004 84B0     		sub	sp, sp, #16
 3040 0006 05AA     		add	r2, sp, #20
 3041 0008 0290     		str	r0, [sp, #8]
 3042 000a 52F8041B 		ldr	r1, [r2], #4
 3043 000e 0192     		str	r2, [sp, #4]
 3044 0010 DD23     		movs	r3, #221
 3045 0012 02A8     		add	r0, sp, #8
 3046 0014 0393     		str	r3, [sp, #12]
 3047 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3048 001a 04B0     		add	sp, sp, #16
 3049              		@ sp needed
 3050 001c 5DF804EB 		ldr	lr, [sp], #4
 3051 0020 03B0     		add	sp, sp, #12
 3052 0022 7047     		bx	lr
 3053              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 3054              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 3055              		.align	1
 3056              		.p2align 2,,3
 3057              		.weak	_ZN6StringILj220EE4catfEPKcz
 3058              		.syntax unified
 3059              		.thumb
 3060              		.thumb_func
 3061              		.fpu fpv4-sp-d16
 3062              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 3063              	_ZN6StringILj220EE4catfEPKcz:
 3064              		@ args = 4, pretend = 12, frame = 16
 3065              		@ frame_needed = 0, uses_anonymous_args = 1
 3066 0000 0EB4     		push	{r1, r2, r3}
 3067 0002 00B5     		push	{lr}
 3068 0004 84B0     		sub	sp, sp, #16
 3069 0006 05AA     		add	r2, sp, #20
 3070 0008 0290     		str	r0, [sp, #8]
 3071 000a 52F8041B 		ldr	r1, [r2], #4
 3072 000e 0192     		str	r2, [sp, #4]
 3073 0010 DD23     		movs	r3, #221
 3074 0012 02A8     		add	r0, sp, #8
 3075 0014 0393     		str	r3, [sp, #12]
 3076 0016 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 3077 001a 04B0     		add	sp, sp, #16
 3078              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 55


 3079 001c 5DF804EB 		ldr	lr, [sp], #4
 3080 0020 03B0     		add	sp, sp, #12
 3081 0022 7047     		bx	lr
 3082              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 3083              		.section	.text._ZN11GCodeBuffer11DiagnosticsE11MessageType,"ax",%progbits
 3084              		.align	1
 3085              		.p2align 2,,3
 3086              		.global	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 3087              		.syntax unified
 3088              		.thumb
 3089              		.thumb_func
 3090              		.fpu fpv4-sp-d16
 3091              		.type	_ZN11GCodeBuffer11DiagnosticsE11MessageType, %function
 3092              	_ZN11GCodeBuffer11DiagnosticsE11MessageType:
 3093              		@ args = 0, pretend = 0, frame = 232
 3094              		@ frame_needed = 0, uses_anonymous_args = 0
 3095 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3096 0002 0446     		mov	r4, r0
 3097 0004 BBB0     		sub	sp, sp, #236
 3098 0006 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 3099 000a E268     		ldr	r2, [r4, #12]
 3100 000c 0020     		movs	r0, #0
 3101 000e 02AD     		add	r5, sp, #8
 3102 0010 082B     		cmp	r3, #8
 3103 0012 8DF80800 		strb	r0, [sp, #8]
 3104 0016 0F46     		mov	r7, r1
 3105 0018 2846     		mov	r0, r5
 3106 001a 2FD0     		beq	.L640
 3107 001c 092B     		cmp	r3, #9
 3108 001e 27D0     		beq	.L641
 3109 0020 13B3     		cbz	r3, .L648
 3110 0022 1949     		ldr	r1, .L649
 3111 0024 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3112              	.L643:
 3113 0028 DD23     		movs	r3, #221
 3114 002a 6846     		mov	r0, sp
 3115 002c 1749     		ldr	r1, .L649+4
 3116 002e 184E     		ldr	r6, .L649+8
 3117 0030 CDE90053 		strd	r5, r3, [sp]
 3118 0034 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 3119 0038 A468     		ldr	r4, [r4, #8]
 3120              	.L644:
 3121 003a 227D     		ldrb	r2, [r4, #20]	@ zero_extendqisi2
 3122 003c 3146     		mov	r1, r6
 3123 003e 2846     		mov	r0, r5
 3124 0040 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 3125 0044 2468     		ldr	r4, [r4]
 3126 0046 002C     		cmp	r4, #0
 3127 0048 F7D1     		bne	.L644
 3128 004a DD23     		movs	r3, #221
 3129 004c 6846     		mov	r0, sp
 3130 004e 0A21     		movs	r1, #10
 3131 0050 CDE90053 		strd	r5, r3, [sp]
 3132 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 3133 0058 0E4B     		ldr	r3, .L649+12
 3134 005a 2A46     		mov	r2, r5
 3135 005c 3946     		mov	r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 56


 3136 005e 5868     		ldr	r0, [r3, #4]
 3137 0060 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3138 0064 3BB0     		add	sp, sp, #236
 3139              		@ sp needed
 3140 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 3141              	.L648:
 3142 0068 0B49     		ldr	r1, .L649+16
 3143 006a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3144 006e DBE7     		b	.L643
 3145              	.L641:
 3146 0070 04F15503 		add	r3, r4, #85
 3147 0074 0949     		ldr	r1, .L649+20
 3148 0076 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3149 007a D5E7     		b	.L643
 3150              	.L640:
 3151 007c 04F15503 		add	r3, r4, #85
 3152 0080 0749     		ldr	r1, .L649+24
 3153 0082 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3154 0086 CFE7     		b	.L643
 3155              	.L650:
 3156              		.align	2
 3157              	.L649:
 3158 0088 38000000 		.word	.LC25
 3159 008c 54000000 		.word	.LC26
 3160 0090 64000000 		.word	.LC27
 3161 0094 00000000 		.word	reprap
 3162 0098 00000000 		.word	.LC22
 3163 009c 24000000 		.word	.LC24
 3164 00a0 0C000000 		.word	.LC23
 3165              		.size	_ZN11GCodeBuffer11DiagnosticsE11MessageType, .-_ZN11GCodeBuffer11DiagnosticsE11MessageType
 3166              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 3167              		.align	1
 3168              		.p2align 2,,3
 3169              		.weak	_ZN6StringILj50EE6printfEPKcz
 3170              		.syntax unified
 3171              		.thumb
 3172              		.thumb_func
 3173              		.fpu fpv4-sp-d16
 3174              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 3175              	_ZN6StringILj50EE6printfEPKcz:
 3176              		@ args = 4, pretend = 12, frame = 16
 3177              		@ frame_needed = 0, uses_anonymous_args = 1
 3178 0000 0EB4     		push	{r1, r2, r3}
 3179 0002 00B5     		push	{lr}
 3180 0004 84B0     		sub	sp, sp, #16
 3181 0006 05AA     		add	r2, sp, #20
 3182 0008 0290     		str	r0, [sp, #8]
 3183 000a 52F8041B 		ldr	r1, [r2], #4
 3184 000e 0192     		str	r2, [sp, #4]
 3185 0010 3323     		movs	r3, #51
 3186 0012 02A8     		add	r0, sp, #8
 3187 0014 0393     		str	r3, [sp, #12]
 3188 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3189 001a 04B0     		add	sp, sp, #16
 3190              		@ sp needed
 3191 001c 5DF804EB 		ldr	lr, [sp], #4
 3192 0020 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 57


 3193 0022 7047     		bx	lr
 3194              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 3195              		.section	.text._ZN11GCodeBuffer11WriteToFileEv,"ax",%progbits
 3196              		.align	1
 3197              		.p2align 2,,3
 3198              		.global	_ZN11GCodeBuffer11WriteToFileEv
 3199              		.syntax unified
 3200              		.thumb
 3201              		.thumb_func
 3202              		.fpu fpv4-sp-d16
 3203              		.type	_ZN11GCodeBuffer11WriteToFileEv, %function
 3204              	_ZN11GCodeBuffer11WriteToFileEv:
 3205              		@ args = 0, pretend = 0, frame = 56
 3206              		@ frame_needed = 0, uses_anonymous_args = 0
 3207 0000 30B5     		push	{r4, r5, lr}
 3208 0002 90F85430 		ldrb	r3, [r0, #84]	@ zero_extendqisi2
 3209 0006 4D2B     		cmp	r3, #77
 3210 0008 8FB0     		sub	sp, sp, #60
 3211 000a 0446     		mov	r4, r0
 3212 000c 32D0     		beq	.L664
 3213 000e 472B     		cmp	r3, #71
 3214 0010 0ED0     		beq	.L658
 3215              	.L663:
 3216 0012 E06A     		ldr	r0, [r4, #44]
 3217              	.L655:
 3218 0014 04F15501 		add	r1, r4, #85
 3219 0018 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3220 001c 0A21     		movs	r1, #10
 3221 001e E06A     		ldr	r0, [r4, #44]
 3222 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3223 0024 2046     		mov	r0, r4
 3224 0026 0121     		movs	r1, #1
 3225 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 3226              	.L653:
 3227 002c 0FB0     		add	sp, sp, #60
 3228              		@ sp needed
 3229 002e 30BD     		pop	{r4, r5, pc}
 3230              	.L658:
 3231 0030 826C     		ldr	r2, [r0, #72]
 3232 0032 40F2E633 		movw	r3, #998
 3233 0036 9A42     		cmp	r2, r3
 3234 0038 EBD1     		bne	.L663
 3235 003a 5021     		movs	r1, #80
 3236 003c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3237 0040 0028     		cmp	r0, #0
 3238 0042 E6D0     		beq	.L663
 3239 0044 0EAD     		add	r5, sp, #56
 3240 0046 0121     		movs	r1, #1
 3241 0048 2046     		mov	r0, r4
 3242 004a FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 3243 004e 0023     		movs	r3, #0
 3244 0050 2046     		mov	r0, r4
 3245 0052 05F8343D 		strb	r3, [r5, #-52]!
 3246 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3247 005a 1449     		ldr	r1, .L665
 3248 005c 0246     		mov	r2, r0
 3249 005e 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 58


 3250 0060 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 3251 0064 124A     		ldr	r2, .L665+4
 3252 0066 2B46     		mov	r3, r5
 3253 0068 5069     		ldr	r0, [r2, #20]
 3254 006a 2146     		mov	r1, r4
 3255 006c 0122     		movs	r2, #1
 3256 006e FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3257 0072 DBE7     		b	.L653
 3258              	.L664:
 3259 0074 836C     		ldr	r3, [r0, #72]
 3260 0076 C06A     		ldr	r0, [r0, #44]
 3261 0078 1D2B     		cmp	r3, #29
 3262 007a CBD1     		bne	.L655
 3263 007c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3264 0080 0B4D     		ldr	r5, .L665+4
 3265 0082 0023     		movs	r3, #0
 3266 0084 E362     		str	r3, [r4, #44]
 3267 0086 0121     		movs	r1, #1
 3268 0088 2046     		mov	r0, r4
 3269 008a FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 3270 008e 6868     		ldr	r0, [r5, #4]
 3271 0090 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3272 0094 074A     		ldr	r2, .L665+8
 3273 0096 084B     		ldr	r3, .L665+12
 3274 0098 2146     		mov	r1, r4
 3275 009a 0228     		cmp	r0, #2
 3276 009c 18BF     		it	ne
 3277 009e 1346     		movne	r3, r2
 3278 00a0 0122     		movs	r2, #1
 3279 00a2 6869     		ldr	r0, [r5, #20]
 3280 00a4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3281 00a8 C0E7     		b	.L653
 3282              	.L666:
 3283 00aa 00BF     		.align	2
 3284              	.L665:
 3285 00ac 00000000 		.word	.LC28
 3286 00b0 00000000 		.word	reprap
 3287 00b4 30000000 		.word	.LC2
 3288 00b8 00000000 		.word	.LC9
 3289              		.size	_ZN11GCodeBuffer11WriteToFileEv, .-_ZN11GCodeBuffer11WriteToFileEv
 3290              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3291              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3292              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3293              	_ZL28cpu_irq_prev_interrupt_state:
 3294 0000 00       		.space	1
 3295              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3296              		.align	2
 3297              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3298              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3299              	_ZL32cpu_irq_critical_section_counter:
 3300 0000 00000000 		.space	4
 3301              		.section	.rodata._ZL9eofString,"a",%progbits
 3302              		.align	2
 3303              		.set	.LANCHOR4,. + 0
 3304              		.type	_ZL9eofString, %object
 3305              		.size	_ZL9eofString, 17
 3306              	_ZL9eofString:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 59


 3307 0000 3C212D2D 		.ascii	"<!-- **EoF** -->\000"
 3307      202A2A45 
 3307      6F462A2A 
 3307      202D2D3E 
 3307      00
 3308              		.section	.rodata._ZN11GCodeBuffer10GetUIValueEv.str1.4,"aMS",%progbits,1
 3309              		.align	2
 3310              	.LC6:
 3311 0000 2E2E2F73 		.ascii	"../src/GCodes/GCodeBuffer.cpp\000"
 3311      72632F47 
 3311      436F6465 
 3311      732F4743 
 3311      6F646542 
 3312              		.section	.rodata._ZN11GCodeBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 3313              		.align	2
 3314              	.LC22:
 3315 0000 25732069 		.ascii	"%s is idle\000"
 3315      73206964 
 3315      6C6500
 3316 000b 00       		.space	1
 3317              	.LC23:
 3318 000c 25732069 		.ascii	"%s is ready with \"%s\"\000"
 3318      73207265 
 3318      61647920 
 3318      77697468 
 3318      20222573 
 3319 0022 0000     		.space	2
 3320              	.LC24:
 3321 0024 25732069 		.ascii	"%s is doing \"%s\"\000"
 3321      7320646F 
 3321      696E6720 
 3321      22257322 
 3321      00
 3322 0035 000000   		.space	3
 3323              	.LC25:
 3324 0038 25732069 		.ascii	"%s is assembling a command\000"
 3324      73206173 
 3324      73656D62 
 3324      6C696E67 
 3324      20612063 
 3325 0053 00       		.space	1
 3326              	.LC26:
 3327 0054 20696E20 		.ascii	" in state(s)\000"
 3327      73746174 
 3327      65287329 
 3327      00
 3328 0061 000000   		.space	3
 3329              	.LC27:
 3330 0064 20256400 		.ascii	" %d\000"
 3331              		.section	.rodata._ZN11GCodeBuffer11GetIntArrayEPlRjb.str1.4,"aMS",%progbits,1
 3332              		.align	2
 3333              	.LC14:
 3334 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode int array that is t"
 3334      65733A20 
 3334      41747465 
 3334      6D707420 
 3334      746F2072 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 60


 3335 0033 6F6F206C 		.ascii	"oo long: %s\012\000"
 3335      6F6E673A 
 3335      2025730A 
 3335      00
 3336              		.section	.rodata._ZN11GCodeBuffer11WriteToFileEv.str1.4,"aMS",%progbits,1
 3337              		.align	2
 3338              	.LC28:
 3339 0000 256C690A 		.ascii	"%li\012\000"
 3339      00
 3340              		.section	.rodata._ZN11GCodeBuffer12LineFinishedEv.str1.4,"aMS",%progbits,1
 3341              		.align	2
 3342              	.LC0:
 3343 0000 472D436F 		.ascii	"G-Code buffer '%s' length overflow\012\000"
 3343      64652062 
 3343      75666665 
 3343      72202725 
 3343      7327206C 
 3344              	.LC1:
 3345 0024 25732573 		.ascii	"%s%s: %s\012\000"
 3345      3A202573 
 3345      0A00
 3346 002e 0000     		.space	2
 3347              	.LC2:
 3348 0030 00       		.ascii	"\000"
 3349 0031 000000   		.space	3
 3350              	.LC3:
 3351 0034 28626164 		.ascii	"(bad-csum)\000"
 3351      2D637375 
 3351      6D2900
 3352 003f 00       		.space	1
 3353              	.LC4:
 3354 0040 286E6F2D 		.ascii	"(no-csum)\000"
 3354      6373756D 
 3354      2900
 3355 004a 0000     		.space	2
 3356              	.LC5:
 3357 004c 4D393938 		.ascii	"M998 P%u\000"
 3357      20502575 
 3357      00
 3358              		.section	.rodata._ZN11GCodeBuffer13GetFloatArrayEPfRjb.str1.4,"aMS",%progbits,1
 3359              		.align	2
 3360              	.LC11:
 3361 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode float array that is"
 3361      65733A20 
 3361      41747465 
 3361      6D707420 
 3361      746F2072 
 3362 0033 20746F6F 		.ascii	" too long: %s\012\000"
 3362      206C6F6E 
 3362      673A2025 
 3362      730A00
 3363              		.section	.rodata._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb.str1.4,"aMS",%progbits,1
 3364              		.align	2
 3365              	.LC13:
 3366 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode unsigned array that"
 3366      65733A20 
 3366      41747465 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 61


 3366      6D707420 
 3366      746F2072 
 3367 0033 20697320 		.ascii	" is too long: %s\012\000"
 3367      746F6F20 
 3367      6C6F6E67 
 3367      3A202573 
 3367      0A00
 3368              		.section	.rodata._ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb.str1.4,"aMS",%progbits,1
 3369              		.align	2
 3370              	.LC12:
 3371 0000 57726F6E 		.ascii	"Wrong number of values after '''%c''', expected %d\000"
 3371      67206E75 
 3371      6D626572 
 3371      206F6620 
 3371      76616C75 
 3372              		.section	.rodata._ZN11GCodeBuffer19FinishWritingBinaryEv.str1.4,"aMS",%progbits,1
 3373              		.align	2
 3374              	.LC9:
 3375 0000 446F6E65 		.ascii	"Done saving file.\000"
 3375      20736176 
 3375      696E6720 
 3375      66696C65 
 3375      2E00
 3376 0012 0000     		.space	2
 3377              	.LC10:
 3378 0014 43524333 		.ascii	"CRC32 checksum doesn't match\000"
 3378      32206368 
 3378      65636B73 
 3378      756D2064 
 3378      6F65736E 
 3379              		.section	.rodata._ZN11GCodeBuffer19GetStringExpressionERK9StringRef.str1.4,"aMS",%progbits,1
 3380              		.align	2
 3381              	.LC15:
 3382 0000 74727565 		.ascii	"true\000"
 3382      00
 3383 0005 000000   		.space	3
 3384              	.LC16:
 3385 0008 66616C73 		.ascii	"false\000"
 3385      6500
 3386 000e 0000     		.space	2
 3387              	.LC17:
 3388 0010 252E3166 		.ascii	"%.1f\000"
 3388      00
 3389 0015 000000   		.space	3
 3390              	.LC18:
 3391 0018 252E3266 		.ascii	"%.2f\000"
 3391      00
 3392 001d 000000   		.space	3
 3393              	.LC19:
 3394 0020 252E3366 		.ascii	"%.3f\000"
 3394      00
 3395 0025 000000   		.space	3
 3396              	.LC20:
 3397 0028 256C7500 		.ascii	"%lu\000"
 3398              	.LC21:
 3399 002c 256C6900 		.ascii	"%li\000"
 3400              		.section	.rodata._ZNK11GCodeBuffer12PrintCommandERK9StringRef.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 62


 3401              		.align	2
 3402              	.LC7:
 3403 0000 25632564 		.ascii	"%c%d\000"
 3403      00
 3404 0005 000000   		.space	3
 3405              	.LC8:
 3406 0008 2E256400 		.ascii	".%d\000"
 3407              		.section	.rodata._ZZN11GCodeBuffer10GetUIValueEvE8__func__,"a",%progbits
 3408              		.align	2
 3409              		.set	.LANCHOR0,. + 0
 3410              		.type	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, %object
 3411              		.size	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, 11
 3412              	_ZZN11GCodeBuffer10GetUIValueEvE8__func__:
 3413 0000 47657455 		.ascii	"GetUIValue\000"
 3413      4956616C 
 3413      756500
 3414              		.section	.rodata._ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__,"a",%progbits
 3415              		.align	2
 3416              		.set	.LANCHOR8,. + 0
 3417              		.type	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, %object
 3418              		.size	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, 12
 3419              	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__:
 3420 0000 47657449 		.ascii	"GetIntArray\000"
 3420      6E744172 
 3420      72617900 
 3421              		.section	.rodata._ZZN11GCodeBuffer12GetIPAddressER9IPAddressE8__func__,"a",%progbits
 3422              		.align	2
 3423              		.set	.LANCHOR2,. + 0
 3424              		.type	_ZZN11GCodeBuffer12GetIPAddressER9IPAddressE8__func__, %object
 3425              		.size	_ZZN11GCodeBuffer12GetIPAddressER9IPAddressE8__func__, 13
 3426              	_ZZN11GCodeBuffer12GetIPAddressER9IPAddressE8__func__:
 3427 0000 47657449 		.ascii	"GetIPAddress\000"
 3427      50416464 
 3427      72657373 
 3427      00
 3428              		.section	.rodata._ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__,"a",%progbits
 3429              		.align	2
 3430              		.set	.LANCHOR6,. + 0
 3431              		.type	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, %object
 3432              		.size	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, 14
 3433              	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__:
 3434 0000 47657446 		.ascii	"GetFloatArray\000"
 3434      6C6F6174 
 3434      41727261 
 3434      7900
 3435              		.section	.rodata._ZZN11GCodeBuffer13GetMacAddressEPhE8__func__,"a",%progbits
 3436              		.align	2
 3437              		.set	.LANCHOR3,. + 0
 3438              		.type	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, %object
 3439              		.size	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, 14
 3440              	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__:
 3441 0000 4765744D 		.ascii	"GetMacAddress\000"
 3441      61634164 
 3441      64726573 
 3441      7300
 3442              		.section	.rodata._ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__,"a",%progbits
 3443              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 63


 3444              		.set	.LANCHOR10,. + 0
 3445              		.type	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, %object
 3446              		.size	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, 16
 3447              	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__:
 3448 0000 47657451 		.ascii	"GetQuotedString\000"
 3448      756F7465 
 3448      64537472 
 3448      696E6700 
 3449              		.section	.rodata._ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__,"a",%progbits
 3450              		.align	2
 3451              		.set	.LANCHOR7,. + 0
 3452              		.type	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, %object
 3453              		.size	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, 17
 3454              	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__:
 3455 0000 47657455 		.ascii	"GetUnsignedArray\000"
 3455      6E736967 
 3455      6E656441 
 3455      72726179 
 3455      00
 3456              		.section	.rodata._ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__,"a",%progbits
 3457              		.align	2
 3458              		.set	.LANCHOR1,. + 0
 3459              		.type	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__, %object
 3460              		.size	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__, 19
 3461              	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__:
 3462 0000 47657455 		.ascii	"GetUIValueMaybeHex\000"
 3462      4956616C 
 3462      75654D61 
 3462      79626548 
 3462      657800
 3463              		.section	.rodata._ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__,"a",%progbits
 3464              		.align	2
 3465              		.set	.LANCHOR11,. + 0
 3466              		.type	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, %object
 3467              		.size	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, 24
 3468              	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__:
 3469 0000 47657450 		.ascii	"GetPossiblyQuotedString\000"
 3469      6F737369 
 3469      626C7951 
 3469      756F7465 
 3469      64537472 
 3470              		.section	.rodata._ZZN11GCodeBuffer9GetFValueEvE8__func__,"a",%progbits
 3471              		.align	2
 3472              		.set	.LANCHOR5,. + 0
 3473              		.type	_ZZN11GCodeBuffer9GetFValueEvE8__func__, %object
 3474              		.size	_ZZN11GCodeBuffer9GetFValueEvE8__func__, 10
 3475              	_ZZN11GCodeBuffer9GetFValueEvE8__func__:
 3476 0000 47657446 		.ascii	"GetFValue\000"
 3476      56616C75 
 3476      6500
 3477              		.section	.rodata._ZZN11GCodeBuffer9GetIValueEvE8__func__,"a",%progbits
 3478              		.align	2
 3479              		.set	.LANCHOR9,. + 0
 3480              		.type	_ZZN11GCodeBuffer9GetIValueEvE8__func__, %object
 3481              		.size	_ZZN11GCodeBuffer9GetIValueEvE8__func__, 10
 3482              	_ZZN11GCodeBuffer9GetIValueEvE8__func__:
 3483 0000 47657449 		.ascii	"GetIValue\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpPBf34.s 			page 64


 3483      56616C75 
 3483      6500
 3484              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
