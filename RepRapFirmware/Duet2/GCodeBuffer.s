ARM GAS  /tmp/ccwFUzuL.s 			page 1


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
  14              		.section	.text._ZN11GCodeBufferC2EPKc11MessageTypeb,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN11GCodeBufferC2EPKc11MessageTypeb
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN11GCodeBufferC2EPKc11MessageTypeb, %function
  23              	_ZN11GCodeBufferC2EPKc11MessageTypeb:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  27 0004 0446     		mov	r4, r0
  28 0006 1C20     		movs	r0, #28
  29 0008 8846     		mov	r8, r1
  30 000a 1746     		mov	r7, r2
  31 000c 1E46     		mov	r6, r3
  32 000e FFF7FEFF 		bl	_Znwj
  33 0012 8146     		mov	r9, r0
  34 0014 FFF7FEFF 		bl	_ZN17GCodeMachineStateC1Ev
  35 0018 0020     		movs	r0, #0
  36 001a C4E90B00 		strd	r0, r0, [r4, #44]
  37 001e C4E90700 		strd	r0, r0, [r4, #28]
  38 0022 C4E90298 		strd	r9, r8, [r4, #8]
  39 0026 4FF0FF35 		mov	r5, #-1
  40 002a 84F8EE00 		strb	r0, [r4, #238]
  41 002e 84F8F100 		strb	r0, [r4, #241]
  42 0032 2071     		strb	r0, [r4, #4]
  43 0034 84F84A00 		strb	r0, [r4, #74]
  44 0038 84F84900 		strb	r0, [r4, #73]
  45 003c 84F84800 		strb	r0, [r4, #72]
  46 0040 84F82800 		strb	r0, [r4, #40]
  47 0044 A786     		strh	r7, [r4, #52]	@ movhi
  48 0046 84F8F060 		strb	r6, [r4, #240]
  49 004a 6562     		str	r5, [r4, #36]
  50 004c 2046     		mov	r0, r4
  51 004e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  52              		.size	_ZN11GCodeBufferC2EPKc11MessageTypeb, .-_ZN11GCodeBufferC2EPKc11MessageTypeb
  53              		.global	_ZN11GCodeBufferC1EPKc11MessageTypeb
  54              		.thumb_set _ZN11GCodeBufferC1EPKc11MessageTypeb,_ZN11GCodeBufferC2EPKc11MessageTypeb
  55 0052 00BF     		.section	.text._ZN11GCodeBuffer5ResetEv,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/ccwFUzuL.s 			page 2


  58              		.global	_ZN11GCodeBuffer5ResetEv
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	_ZN11GCodeBuffer5ResetEv, %function
  64              	_ZN11GCodeBuffer5ResetEv:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 10B5     		push	{r4, lr}
  68 0002 0446     		mov	r4, r0
  69 0004 8068     		ldr	r0, [r0, #8]
  70 0006 0368     		ldr	r3, [r0]
  71 0008 33B1     		cbz	r3, .L6
  72              	.L5:
  73 000a A360     		str	r3, [r4, #8]
  74 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
  75 0010 A068     		ldr	r0, [r4, #8]
  76 0012 0368     		ldr	r3, [r0]
  77 0014 002B     		cmp	r3, #0
  78 0016 F8D1     		bne	.L5
  79              	.L6:
  80 0018 427E     		ldrb	r2, [r0, #25]	@ zero_extendqisi2
  81 001a 02F0FB02 		and	r2, r2, #251
  82 001e 0023     		movs	r3, #0
  83 0020 6FF34102 		bfc	r2, #1, #1
  84 0024 4276     		strb	r2, [r0, #25]
  85 0026 C4E90733 		strd	r3, r3, [r4, #28]
  86 002a 4FF0FF31 		mov	r1, #-1
  87 002e 2371     		strb	r3, [r4, #4]
  88 0030 84F84A30 		strb	r3, [r4, #74]
  89 0034 84F84930 		strb	r3, [r4, #73]
  90 0038 84F84830 		strb	r3, [r4, #72]
  91 003c 84F82830 		strb	r3, [r4, #40]
  92 0040 6162     		str	r1, [r4, #36]
  93 0042 10BD     		pop	{r4, pc}
  94              		.size	_ZN11GCodeBuffer5ResetEv, .-_ZN11GCodeBuffer5ResetEv
  95              		.section	.text._ZN11GCodeBuffer4InitEv,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN11GCodeBuffer4InitEv
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	_ZN11GCodeBuffer4InitEv, %function
 104              	_ZN11GCodeBuffer4InitEv:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108 0000 0023     		movs	r3, #0
 109 0002 4FF0FF32 		mov	r2, #-1
 110 0006 C0E90832 		strd	r3, r2, [r0, #32]
 111 000a C361     		str	r3, [r0, #28]
 112 000c 0371     		strb	r3, [r0, #4]
 113 000e 80F84A30 		strb	r3, [r0, #74]
 114 0012 80F84930 		strb	r3, [r0, #73]
ARM GAS  /tmp/ccwFUzuL.s 			page 3


 115 0016 80F84830 		strb	r3, [r0, #72]
 116 001a 80F82830 		strb	r3, [r0, #40]
 117 001e 7047     		bx	lr
 118              		.size	_ZN11GCodeBuffer4InitEv, .-_ZN11GCodeBuffer4InitEv
 119              		.section	.text._ZN11GCodeBuffer13DecodeCommandEv,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	_ZN11GCodeBuffer13DecodeCommandEv
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	_ZN11GCodeBuffer13DecodeCommandEv, %function
 128              	_ZN11GCodeBuffer13DecodeCommandEv:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 132 0004 0569     		ldr	r5, [r0, #16]
 133 0006 4319     		adds	r3, r0, r5
 134 0008 0646     		mov	r6, r0
 135 000a 93F84D00 		ldrb	r0, [r3, #77]	@ zero_extendqisi2
 136 000e FFF7FEFF 		bl	toupper
 137 0012 C0B2     		uxtb	r0, r0
 138 0014 A0F14703 		sub	r3, r0, #71
 139 0018 DBB2     		uxtb	r3, r3
 140 001a 4FF0FF32 		mov	r2, #-1
 141 001e 0021     		movs	r1, #0
 142 0020 0D2B     		cmp	r3, #13
 143 0022 86F84C00 		strb	r0, [r6, #76]
 144 0026 86F84B10 		strb	r1, [r6, #75]
 145 002a 3264     		str	r2, [r6, #64]
 146 002c 86F8EF20 		strb	r2, [r6, #239]
 147 0030 07D9     		bls	.L15
 148 0032 326A     		ldr	r2, [r6, #32]
 149              	.L16:
 150 0034 C6E90552 		strd	r5, r2, [r6, #20]
 151              	.L22:
 152 0038 0823     		movs	r3, #8
 153 003a 86F82830 		strb	r3, [r6, #40]
 154 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 155              	.L15:
 156 0042 42F24102 		movw	r2, #8257
 157 0046 22FA03F3 		lsr	r3, r2, r3
 158 004a DB07     		lsls	r3, r3, #31
 159 004c 326A     		ldr	r2, [r6, #32]
 160 004e F1D5     		bpl	.L16
 161 0050 6C1C     		adds	r4, r5, #1
 162 0052 3319     		adds	r3, r6, r4
 163 0054 7461     		str	r4, [r6, #20]
 164 0056 93F84DC0 		ldrb	ip, [r3, #77]	@ zero_extendqisi2
 165 005a BCF12D0F 		cmp	ip, #45
 166 005e 64D0     		beq	.L40
 167 0060 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 168 0064 303B     		subs	r3, r3, #48
 169 0066 092B     		cmp	r3, #9
 170 0068 2ED9     		bls	.L41
 171              	.L18:
ARM GAS  /tmp/ccwFUzuL.s 			page 4


 172 006a A242     		cmp	r2, r4
 173 006c B461     		str	r4, [r6, #24]
 174 006e E3D9     		bls	.L22
 175 0070 06EB0209 		add	r9, r6, r2
 176 0074 4D34     		adds	r4, r4, #77
 177 0076 0022     		movs	r2, #0
 178 0078 6FF04C08 		mvn	r8, #76
 179 007c 3444     		add	r4, r4, r6
 180 007e 09F14D09 		add	r9, r9, #77
 181 0082 1746     		mov	r7, r2
 182 0084 A8EB0608 		sub	r8, r8, r6
 183 0088 16E0     		b	.L27
 184              	.L23:
 185 008a 87B9     		cbnz	r7, .L24
 186 008c 2846     		mov	r0, r5
 187 008e 32B1     		cbz	r2, .L25
 188 0090 FFF7FEFF 		bl	toupper
 189 0094 C0B2     		uxtb	r0, r0
 190 0096 4728     		cmp	r0, #71
 191 0098 CED0     		beq	.L22
 192 009a 4D28     		cmp	r0, #77
 193 009c CCD0     		beq	.L22
 194              	.L25:
 195 009e 202D     		cmp	r5, #32
 196 00a0 1DBF     		ittte	ne
 197 00a2 A5F10902 		subne	r2, r5, #9
 198 00a6 B2FA82F2 		clzne	r2, r2
 199 00aa 5209     		lsrne	r2, r2, #5
 200 00ac 0122     		moveq	r2, #1
 201              	.L24:
 202 00ae 08EB0403 		add	r3, r8, r4
 203 00b2 A145     		cmp	r9, r4
 204 00b4 B361     		str	r3, [r6, #24]
 205 00b6 BFD0     		beq	.L22
 206              	.L27:
 207 00b8 14F8015B 		ldrb	r5, [r4], #1	@ zero_extendqisi2
 208 00bc 222D     		cmp	r5, #34
 209 00be E4D1     		bne	.L23
 210 00c0 87F00107 		eor	r7, r7, #1
 211 00c4 0022     		movs	r2, #0
 212 00c6 F2E7     		b	.L24
 213              	.L41:
 214 00c8 0121     		movs	r1, #1
 215 00ca 0023     		movs	r3, #0
 216 00cc 04F14D00 		add	r0, r4, #77
 217 00d0 86F84B10 		strb	r1, [r6, #75]
 218 00d4 3364     		str	r3, [r6, #64]
 219 00d6 3044     		add	r0, r0, r6
 220 00d8 A646     		mov	lr, r4
 221 00da 00E0     		b	.L19
 222              	.L28:
 223 00dc A646     		mov	lr, r4
 224              	.L19:
 225 00de 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 226 00e0 10F8015F 		ldrb	r5, [r0, #1]!	@ zero_extendqisi2
 227 00e4 A5F13007 		sub	r7, r5, #48
 228 00e8 03EB8303 		add	r3, r3, r3, lsl #2
ARM GAS  /tmp/ccwFUzuL.s 			page 5


 229 00ec 3039     		subs	r1, r1, #48
 230 00ee 092F     		cmp	r7, #9
 231 00f0 04F10104 		add	r4, r4, #1
 232 00f4 01EB4303 		add	r3, r1, r3, lsl #1
 233 00f8 F0D9     		bls	.L28
 234 00fa BCF12D0F 		cmp	ip, #45
 235 00fe 3364     		str	r3, [r6, #64]
 236 0100 04BF     		itt	eq
 237 0102 5B42     		rsbeq	r3, r3, #0
 238 0104 3364     		streq	r3, [r6, #64]
 239 0106 2E2D     		cmp	r5, #46
 240 0108 7461     		str	r4, [r6, #20]
 241 010a AED1     		bne	.L18
 242 010c 0EF10204 		add	r4, lr, #2
 243 0110 3319     		adds	r3, r6, r4
 244 0112 7461     		str	r4, [r6, #20]
 245 0114 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 246 0118 303B     		subs	r3, r3, #48
 247 011a 092B     		cmp	r3, #9
 248 011c A5D8     		bhi	.L18
 249 011e 0EF10304 		add	r4, lr, #3
 250 0122 7461     		str	r4, [r6, #20]
 251 0124 86F8EF30 		strb	r3, [r6, #239]
 252 0128 9FE7     		b	.L18
 253              	.L40:
 254 012a AC1C     		adds	r4, r5, #2
 255 012c 3319     		adds	r3, r6, r4
 256 012e 7461     		str	r4, [r6, #20]
 257 0130 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 258 0134 303B     		subs	r3, r3, #48
 259 0136 092B     		cmp	r3, #9
 260 0138 97D8     		bhi	.L18
 261 013a C5E7     		b	.L41
 262              		.size	_ZN11GCodeBuffer13DecodeCommandEv, .-_ZN11GCodeBuffer13DecodeCommandEv
 263              		.section	.text._ZN11GCodeBuffer12LineFinishedEv,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	_ZN11GCodeBuffer12LineFinishedEv
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	_ZN11GCodeBuffer12LineFinishedEv, %function
 272              	_ZN11GCodeBuffer12LineFinishedEv:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275 0000 036A     		ldr	r3, [r0, #32]
 276 0002 63B3     		cbz	r3, .L79
 277 0004 10B5     		push	{r4, lr}
 278 0006 A12B     		cmp	r3, #161
 279 0008 82B0     		sub	sp, sp, #8
 280 000a 0446     		mov	r4, r0
 281 000c 4CD0     		beq	.L80
 282 000e 0344     		add	r3, r3, r0
 283 0010 0021     		movs	r1, #0
 284 0012 484A     		ldr	r2, .L87
 285 0014 83F84D10 		strb	r1, [r3, #77]
ARM GAS  /tmp/ccwFUzuL.s 			page 6


 286 0018 90F84A10 		ldrb	r1, [r0, #74]	@ zero_extendqisi2
 287 001c 936C     		ldr	r3, [r2, #72]
 288 001e 03F00803 		and	r3, r3, #8
 289 0022 59B3     		cbz	r1, .L46
 290 0024 90F84800 		ldrb	r0, [r0, #72]	@ zero_extendqisi2
 291 0028 E16B     		ldr	r1, [r4, #60]
 292 002a 8842     		cmp	r0, r1
 293 002c 29D0     		beq	.L72
 294 002e 002B     		cmp	r3, #0
 295 0030 67D1     		bne	.L81
 296              	.L53:
 297 0032 94F84930 		ldrb	r3, [r4, #73]	@ zero_extendqisi2
 298 0036 002B     		cmp	r3, #0
 299 0038 3FD1     		bne	.L82
 300              	.L56:
 301 003a 0023     		movs	r3, #0
 302 003c 4FF0FF32 		mov	r2, #-1
 303 0040 1846     		mov	r0, r3
 304 0042 C4E90733 		strd	r3, r3, [r4, #28]
 305 0046 2371     		strb	r3, [r4, #4]
 306 0048 84F84A30 		strb	r3, [r4, #74]
 307 004c 84F84930 		strb	r3, [r4, #73]
 308 0050 84F84830 		strb	r3, [r4, #72]
 309 0054 84F82830 		strb	r3, [r4, #40]
 310 0058 6262     		str	r2, [r4, #36]
 311 005a 02B0     		add	sp, sp, #8
 312              		@ sp needed
 313 005c 10BD     		pop	{r4, pc}
 314              	.L79:
 315 005e 4FF0FF32 		mov	r2, #-1
 316 0062 C361     		str	r3, [r0, #28]
 317 0064 0371     		strb	r3, [r0, #4]
 318 0066 80F84A30 		strb	r3, [r0, #74]
 319 006a 80F84930 		strb	r3, [r0, #73]
 320 006e 80F84830 		strb	r3, [r0, #72]
 321 0072 80F82830 		strb	r3, [r0, #40]
 322 0076 4262     		str	r2, [r0, #36]
 323 0078 1846     		mov	r0, r3
 324 007a 7047     		bx	lr
 325              	.L46:
 326 007c 90F8EE10 		ldrb	r1, [r0, #238]	@ zero_extendqisi2
 327 0080 61B9     		cbnz	r1, .L83
 328              	.L72:
 329 0082 13B1     		cbz	r3, .L57
 330 0084 E36A     		ldr	r3, [r4, #44]
 331 0086 002B     		cmp	r3, #0
 332 0088 2FD0     		beq	.L84
 333              	.L57:
 334 008a 0023     		movs	r3, #0
 335 008c 2361     		str	r3, [r4, #16]
 336 008e 2046     		mov	r0, r4
 337 0090 FFF7FEFF 		bl	_ZN11GCodeBuffer13DecodeCommandEv
 338 0094 0123     		movs	r3, #1
 339 0096 1846     		mov	r0, r3
 340 0098 02B0     		add	sp, sp, #8
 341              		@ sp needed
 342 009a 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccwFUzuL.s 			page 7


 343              	.L83:
 344 009c A168     		ldr	r1, [r4, #8]
 345 009e 0968     		ldr	r1, [r1]
 346 00a0 9BB9     		cbnz	r3, .L85
 347              	.L51:
 348 00a2 0029     		cmp	r1, #0
 349 00a4 C9D0     		beq	.L56
 350 00a6 F0E7     		b	.L57
 351              	.L80:
 352 00a8 224A     		ldr	r2, .L87
 353 00aa C368     		ldr	r3, [r0, #12]
 354 00ac 1068     		ldr	r0, [r2]	@ unaligned
 355 00ae 224A     		ldr	r2, .L87+4
 356 00b0 40F2B511 		movw	r1, #437
 357 00b4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 358 00b8 BFE7     		b	.L56
 359              	.L82:
 360 00ba A36B     		ldr	r3, [r4, #56]
 361 00bc 1F4A     		ldr	r2, .L87+8
 362 00be A121     		movs	r1, #161
 363 00c0 04F14D00 		add	r0, r4, #77
 364 00c4 FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
 365 00c8 DFE7     		b	.L57
 366              	.L85:
 367 00ca E36A     		ldr	r3, [r4, #44]
 368 00cc 002B     		cmp	r3, #0
 369 00ce E8D1     		bne	.L51
 370 00d0 1068     		ldr	r0, [r2]
 371 00d2 E368     		ldr	r3, [r4, #12]
 372 00d4 21BB     		cbnz	r1, .L86
 373 00d6 1A4A     		ldr	r2, .L87+12
 374 00d8 04F14D01 		add	r1, r4, #77
 375 00dc CDE90021 		strd	r2, r1, [sp]
 376 00e0 184A     		ldr	r2, .L87+16
 377 00e2 0221     		movs	r1, #2
 378 00e4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 379 00e8 A7E7     		b	.L56
 380              	.L84:
 381 00ea 1068     		ldr	r0, [r2]
 382 00ec 164A     		ldr	r2, .L87+20
 383 00ee E368     		ldr	r3, [r4, #12]
 384 00f0 0092     		str	r2, [sp]
 385 00f2 04F14D02 		add	r2, r4, #77
 386 00f6 0192     		str	r2, [sp, #4]
 387 00f8 0221     		movs	r1, #2
 388 00fa 124A     		ldr	r2, .L87+16
 389 00fc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 390 0100 C3E7     		b	.L57
 391              	.L81:
 392 0102 E36A     		ldr	r3, [r4, #44]
 393 0104 002B     		cmp	r3, #0
 394 0106 94D1     		bne	.L53
 395 0108 1068     		ldr	r0, [r2]
 396 010a 104A     		ldr	r2, .L87+24
 397 010c E368     		ldr	r3, [r4, #12]
 398 010e 0092     		str	r2, [sp]
 399 0110 04F14D02 		add	r2, r4, #77
ARM GAS  /tmp/ccwFUzuL.s 			page 8


 400 0114 0192     		str	r2, [sp, #4]
 401 0116 0221     		movs	r1, #2
 402 0118 0A4A     		ldr	r2, .L87+16
 403 011a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 404 011e 88E7     		b	.L53
 405              	.L86:
 406 0120 094A     		ldr	r2, .L87+20
 407 0122 04F14D01 		add	r1, r4, #77
 408 0126 CDE90021 		strd	r2, r1, [sp]
 409 012a 064A     		ldr	r2, .L87+16
 410 012c 0221     		movs	r1, #2
 411 012e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 412 0132 AAE7     		b	.L57
 413              	.L88:
 414              		.align	2
 415              	.L87:
 416 0134 00000000 		.word	reprap
 417 0138 00000000 		.word	.LC0
 418 013c 4C000000 		.word	.LC5
 419 0140 40000000 		.word	.LC4
 420 0144 24000000 		.word	.LC1
 421 0148 30000000 		.word	.LC2
 422 014c 34000000 		.word	.LC3
 423              		.size	_ZN11GCodeBuffer12LineFinishedEv, .-_ZN11GCodeBuffer12LineFinishedEv
 424              		.section	.text.hot._ZN11GCodeBuffer3PutEc,"ax",%progbits
 425              		.align	1
 426              		.p2align 2,,3
 427              		.global	_ZN11GCodeBuffer3PutEc
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu fpv4-sp-d16
 432              		.type	_ZN11GCodeBuffer3PutEc, %function
 433              	_ZN11GCodeBuffer3PutEc:
 434              		@ args = 0, pretend = 0, frame = 0
 435              		@ frame_needed = 0, uses_anonymous_args = 0
 436              		@ link register save eliminated.
 437 0000 A1B1     		cbz	r1, .L91
 438 0002 C369     		ldr	r3, [r0, #28]
 439 0004 0A29     		cmp	r1, #10
 440 0006 03F10103 		add	r3, r3, #1
 441 000a C361     		str	r3, [r0, #28]
 442 000c 0ED0     		beq	.L91
 443 000e 0D29     		cmp	r1, #13
 444 0010 0CD0     		beq	.L91
 445 0012 7F29     		cmp	r1, #127
 446 0014 90F82830 		ldrb	r3, [r0, #40]	@ zero_extendqisi2
 447 0018 00F09280 		beq	.L150
 448 001c 062B     		cmp	r3, #6
 449 001e 0FD8     		bhi	.L139
 450 0020 DFE803F0 		tbb	[pc, r3]
 451              	.L96:
 452 0024 7A       		.byte	(.L95-.L96)/2
 453 0025 2C       		.byte	(.L97-.L96)/2
 454 0026 34       		.byte	(.L98-.L96)/2
 455 0027 3D       		.byte	(.L99-.L96)/2
 456 0028 23       		.byte	(.L100-.L96)/2
ARM GAS  /tmp/ccwFUzuL.s 			page 9


 457 0029 10       		.byte	(.L101-.L96)/2
 458 002a 06       		.byte	(.L102-.L96)/2
 459 002b 00       		.p2align 1
 460              	.L91:
 461 002c FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 462              	.L102:
 463 0030 A1F13003 		sub	r3, r1, #48
 464 0034 092B     		cmp	r3, #9
 465 0036 40F2C980 		bls	.L151
 466              	.L117:
 467 003a 0723     		movs	r3, #7
 468 003c 80F82830 		strb	r3, [r0, #40]
 469              	.L139:
 470 0040 0020     		movs	r0, #0
 471 0042 7047     		bx	lr
 472              	.L101:
 473 0044 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 474 0048 036A     		ldr	r3, [r0, #32]
 475 004a 4A40     		eors	r2, r2, r1
 476 004c A02B     		cmp	r3, #160
 477 004e 80F84820 		strb	r2, [r0, #72]
 478 0052 04D8     		bhi	.L115
 479 0054 C218     		adds	r2, r0, r3
 480 0056 0133     		adds	r3, r3, #1
 481 0058 0362     		str	r3, [r0, #32]
 482 005a 82F84D10 		strb	r1, [r2, #77]
 483              	.L115:
 484 005e 2229     		cmp	r1, #34
 485 0060 EED1     		bne	.L139
 486              	.L116:
 487 0062 0323     		movs	r3, #3
 488 0064 80F82830 		strb	r3, [r0, #40]
 489 0068 EAE7     		b	.L139
 490              	.L100:
 491 006a 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 492 006e 2929     		cmp	r1, #41
 493 0070 83EA0103 		eor	r3, r3, r1
 494 0074 80F84830 		strb	r3, [r0, #72]
 495 0078 E2D1     		bne	.L139
 496 007a F2E7     		b	.L116
 497              	.L97:
 498 007c A1F13003 		sub	r3, r1, #48
 499 0080 092B     		cmp	r3, #9
 500 0082 40F2AB80 		bls	.L152
 501 0086 0223     		movs	r3, #2
 502 0088 80F82830 		strb	r3, [r0, #40]
 503              	.L98:
 504 008c 0929     		cmp	r1, #9
 505 008e 62D0     		beq	.L104
 506 0090 2029     		cmp	r1, #32
 507 0092 60D0     		beq	.L104
 508              	.L103:
 509 0094 0322     		movs	r2, #3
 510 0096 0023     		movs	r3, #0
 511 0098 80F82820 		strb	r2, [r0, #40]
 512 009c 0361     		str	r3, [r0, #16]
 513              	.L99:
ARM GAS  /tmp/ccwFUzuL.s 			page 10


 514 009e A1F12203 		sub	r3, r1, #34
 515 00a2 192B     		cmp	r3, #25
 516 00a4 00F28380 		bhi	.L108
 517 00a8 01A2     		adr	r2, .L110
 518 00aa 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 519 00ae 00BF     		.p2align 2
 520              	.L110:
 521 00b0 63010000 		.word	.L109+1
 522 00b4 AF010000 		.word	.L108+1
 523 00b8 AF010000 		.word	.L108+1
 524 00bc AF010000 		.word	.L108+1
 525 00c0 AF010000 		.word	.L108+1
 526 00c4 AF010000 		.word	.L108+1
 527 00c8 9B010000 		.word	.L111+1
 528 00cc AF010000 		.word	.L108+1
 529 00d0 89010000 		.word	.L112+1
 530 00d4 AF010000 		.word	.L108+1
 531 00d8 AF010000 		.word	.L108+1
 532 00dc AF010000 		.word	.L108+1
 533 00e0 AF010000 		.word	.L108+1
 534 00e4 AF010000 		.word	.L108+1
 535 00e8 AF010000 		.word	.L108+1
 536 00ec AF010000 		.word	.L108+1
 537 00f0 AF010000 		.word	.L108+1
 538 00f4 AF010000 		.word	.L108+1
 539 00f8 AF010000 		.word	.L108+1
 540 00fc AF010000 		.word	.L108+1
 541 0100 AF010000 		.word	.L108+1
 542 0104 AF010000 		.word	.L108+1
 543 0108 AF010000 		.word	.L108+1
 544 010c AF010000 		.word	.L108+1
 545 0110 AF010000 		.word	.L108+1
 546 0114 3B000000 		.word	.L117+1
 547              		.p2align 1
 548              	.L95:
 549 0118 2029     		cmp	r1, #32
 550 011a 1CD0     		beq	.L104
 551 011c 19D9     		bls	.L153
 552 011e 4E29     		cmp	r1, #78
 553 0120 01D0     		beq	.L106
 554 0122 6E29     		cmp	r1, #110
 555 0124 B6D1     		bne	.L103
 556              	.L106:
 557 0126 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 558 012a 0122     		movs	r2, #1
 559 012c 5940     		eors	r1, r1, r3
 560 012e 0023     		movs	r3, #0
 561 0130 80F84810 		strb	r1, [r0, #72]
 562 0134 80F84920 		strb	r2, [r0, #73]
 563 0138 80F82820 		strb	r2, [r0, #40]
 564 013c 8363     		str	r3, [r0, #56]
 565 013e 7FE7     		b	.L139
 566              	.L150:
 567 0140 072B     		cmp	r3, #7
 568 0142 3FF47DAF 		beq	.L139
 569 0146 0022     		movs	r2, #0
 570 0148 0723     		movs	r3, #7
ARM GAS  /tmp/ccwFUzuL.s 			page 11


 571 014a 0262     		str	r2, [r0, #32]
 572 014c 80F82830 		strb	r3, [r0, #40]
 573 0150 76E7     		b	.L139
 574              	.L153:
 575 0152 0929     		cmp	r1, #9
 576 0154 9ED1     		bne	.L103
 577              	.L104:
 578 0156 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 579 015a 5940     		eors	r1, r1, r3
 580 015c 80F84810 		strb	r1, [r0, #72]
 581 0160 6EE7     		b	.L139
 582              	.L109:
 583 0162 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 584 0166 036A     		ldr	r3, [r0, #32]
 585 0168 82F02202 		eor	r2, r2, #34
 586 016c A02B     		cmp	r3, #160
 587 016e 80F84820 		strb	r2, [r0, #72]
 588 0172 05D8     		bhi	.L114
 589 0174 C218     		adds	r2, r0, r3
 590 0176 2221     		movs	r1, #34
 591 0178 0133     		adds	r3, r3, #1
 592 017a 0362     		str	r3, [r0, #32]
 593 017c 82F84D10 		strb	r1, [r2, #77]
 594              	.L114:
 595 0180 0523     		movs	r3, #5
 596 0182 80F82830 		strb	r3, [r0, #40]
 597 0186 5BE7     		b	.L139
 598              	.L112:
 599 0188 0021     		movs	r1, #0
 600 018a 0122     		movs	r2, #1
 601 018c 0623     		movs	r3, #6
 602 018e C163     		str	r1, [r0, #60]
 603 0190 80F84A20 		strb	r2, [r0, #74]
 604 0194 80F82830 		strb	r3, [r0, #40]
 605 0198 52E7     		b	.L139
 606              	.L111:
 607 019a 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 608 019e 0422     		movs	r2, #4
 609 01a0 83F02803 		eor	r3, r3, #40
 610 01a4 80F84830 		strb	r3, [r0, #72]
 611 01a8 80F82820 		strb	r2, [r0, #40]
 612 01ac 48E7     		b	.L139
 613              	.L108:
 614 01ae 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 615 01b2 036A     		ldr	r3, [r0, #32]
 616 01b4 4A40     		eors	r2, r2, r1
 617 01b6 A02B     		cmp	r3, #160
 618 01b8 80F84820 		strb	r2, [r0, #72]
 619 01bc 3FF640AF 		bhi	.L139
 620 01c0 C218     		adds	r2, r0, r3
 621 01c2 0133     		adds	r3, r3, #1
 622 01c4 0362     		str	r3, [r0, #32]
 623 01c6 82F84D10 		strb	r1, [r2, #77]
 624 01ca 39E7     		b	.L139
 625              	.L151:
 626 01cc C36B     		ldr	r3, [r0, #60]
 627 01ce 03EB8303 		add	r3, r3, r3, lsl #2
ARM GAS  /tmp/ccwFUzuL.s 			page 12


 628 01d2 01EB4303 		add	r3, r1, r3, lsl #1
 629 01d6 303B     		subs	r3, r3, #48
 630 01d8 C363     		str	r3, [r0, #60]
 631 01da 31E7     		b	.L139
 632              	.L152:
 633 01dc 836B     		ldr	r3, [r0, #56]
 634 01de 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 635 01e2 03EB8303 		add	r3, r3, r3, lsl #2
 636 01e6 01EB4303 		add	r3, r1, r3, lsl #1
 637 01ea 303B     		subs	r3, r3, #48
 638 01ec 5140     		eors	r1, r1, r2
 639 01ee 8363     		str	r3, [r0, #56]
 640 01f0 80F84810 		strb	r1, [r0, #72]
 641 01f4 24E7     		b	.L139
 642              		.size	_ZN11GCodeBuffer3PutEc, .-_ZN11GCodeBuffer3PutEc
 643 01f6 00BF     		.section	.text._ZN11GCodeBuffer3PutEPKcj,"ax",%progbits
 644              		.align	1
 645              		.p2align 2,,3
 646              		.global	_ZN11GCodeBuffer3PutEPKcj
 647              		.syntax unified
 648              		.thumb
 649              		.thumb_func
 650              		.fpu fpv4-sp-d16
 651              		.type	_ZN11GCodeBuffer3PutEPKcj, %function
 652              	_ZN11GCodeBuffer3PutEPKcj:
 653              		@ args = 0, pretend = 0, frame = 0
 654              		@ frame_needed = 0, uses_anonymous_args = 0
 655 0000 70B5     		push	{r4, r5, r6, lr}
 656 0002 0546     		mov	r5, r0
 657 0004 0023     		movs	r3, #0
 658 0006 4FF0FF30 		mov	r0, #-1
 659 000a C5E90830 		strd	r3, r0, [r5, #32]
 660 000e EB61     		str	r3, [r5, #28]
 661 0010 2B71     		strb	r3, [r5, #4]
 662 0012 85F84A30 		strb	r3, [r5, #74]
 663 0016 85F84930 		strb	r3, [r5, #73]
 664 001a 85F84830 		strb	r3, [r5, #72]
 665 001e 85F82830 		strb	r3, [r5, #40]
 666 0022 AAB1     		cbz	r2, .L158
 667 0024 0A44     		add	r2, r2, r1
 668 0026 1618     		adds	r6, r2, r0
 669 0028 0C18     		adds	r4, r1, r0
 670 002a 01E0     		b	.L157
 671              	.L162:
 672 002c B442     		cmp	r4, r6
 673 002e 07D0     		beq	.L161
 674              	.L157:
 675 0030 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 676 0034 2846     		mov	r0, r5
 677 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 678 003a 0028     		cmp	r0, #0
 679 003c F6D0     		beq	.L162
 680 003e 70BD     		pop	{r4, r5, r6, pc}
 681              	.L161:
 682 0040 EB69     		ldr	r3, [r5, #28]
 683 0042 0133     		adds	r3, r3, #1
 684              	.L155:
ARM GAS  /tmp/ccwFUzuL.s 			page 13


 685 0044 EB61     		str	r3, [r5, #28]
 686 0046 2846     		mov	r0, r5
 687 0048 BDE87040 		pop	{r4, r5, r6, lr}
 688 004c FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 689              	.L158:
 690 0050 0123     		movs	r3, #1
 691 0052 F7E7     		b	.L155
 692              		.size	_ZN11GCodeBuffer3PutEPKcj, .-_ZN11GCodeBuffer3PutEPKcj
 693              		.section	.text._ZN11GCodeBuffer3PutEPKc,"ax",%progbits
 694              		.align	1
 695              		.p2align 2,,3
 696              		.global	_ZN11GCodeBuffer3PutEPKc
 697              		.syntax unified
 698              		.thumb
 699              		.thumb_func
 700              		.fpu fpv4-sp-d16
 701              		.type	_ZN11GCodeBuffer3PutEPKc, %function
 702              	_ZN11GCodeBuffer3PutEPKc:
 703              		@ args = 0, pretend = 0, frame = 0
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705 0000 38B5     		push	{r3, r4, r5, lr}
 706 0002 0546     		mov	r5, r0
 707 0004 0846     		mov	r0, r1
 708 0006 0C46     		mov	r4, r1
 709 0008 FFF7FEFF 		bl	strlen
 710 000c 2146     		mov	r1, r4
 711 000e 0246     		mov	r2, r0
 712 0010 2846     		mov	r0, r5
 713 0012 BDE83840 		pop	{r3, r4, r5, lr}
 714 0016 FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKcj
 715              		.size	_ZN11GCodeBuffer3PutEPKc, .-_ZN11GCodeBuffer3PutEPKc
 716 001a 00BF     		.section	.text._ZN11GCodeBuffer11SetFinishedEb,"ax",%progbits
 717              		.align	1
 718              		.p2align 2,,3
 719              		.global	_ZN11GCodeBuffer11SetFinishedEb
 720              		.syntax unified
 721              		.thumb
 722              		.thumb_func
 723              		.fpu fpv4-sp-d16
 724              		.type	_ZN11GCodeBuffer11SetFinishedEb, %function
 725              	_ZN11GCodeBuffer11SetFinishedEb:
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728              		@ link register save eliminated.
 729 0000 0346     		mov	r3, r0
 730 0002 D9B1     		cbz	r1, .L166
 731 0004 8269     		ldr	r2, [r0, #24]
 732 0006 016A     		ldr	r1, [r0, #32]
 733 0008 8A42     		cmp	r2, r1
 734 000a 1BD3     		bcc	.L172
 735 000c 10B4     		push	{r4}
 736 000e 8168     		ldr	r1, [r0, #8]
 737 0010 087E     		ldrb	r0, [r1, #24]	@ zero_extendqisi2
 738 0012 0022     		movs	r2, #0
 739 0014 6FF3C710 		bfc	r0, #7, #1
 740 0018 0876     		strb	r0, [r1, #24]
 741 001a C3E90722 		strd	r2, r2, [r3, #28]
ARM GAS  /tmp/ccwFUzuL.s 			page 14


 742 001e 4FF0FF34 		mov	r4, #-1
 743 0022 1A71     		strb	r2, [r3, #4]
 744 0024 83F84A20 		strb	r2, [r3, #74]
 745 0028 83F84920 		strb	r2, [r3, #73]
 746 002c 83F84820 		strb	r2, [r3, #72]
 747 0030 83F82820 		strb	r2, [r3, #40]
 748 0034 5C62     		str	r4, [r3, #36]
 749 0036 5DF8044B 		ldr	r4, [sp], #4
 750 003a 7047     		bx	lr
 751              	.L166:
 752 003c 0922     		movs	r2, #9
 753 003e 80F82820 		strb	r2, [r0, #40]
 754 0042 7047     		bx	lr
 755              	.L172:
 756 0044 0261     		str	r2, [r0, #16]
 757 0046 FFF7FEBF 		b	_ZN11GCodeBuffer13DecodeCommandEv
 758              		.size	_ZN11GCodeBuffer11SetFinishedEb, .-_ZN11GCodeBuffer11SetFinishedEb
 759 004a 00BF     		.section	.text._ZNK11GCodeBuffer15GetFilePositionEj,"ax",%progbits
 760              		.align	1
 761              		.p2align 2,,3
 762              		.global	_ZNK11GCodeBuffer15GetFilePositionEj
 763              		.syntax unified
 764              		.thumb
 765              		.thumb_func
 766              		.fpu fpv4-sp-d16
 767              		.type	_ZNK11GCodeBuffer15GetFilePositionEj, %function
 768              	_ZNK11GCodeBuffer15GetFilePositionEj:
 769              		@ args = 0, pretend = 0, frame = 0
 770              		@ frame_needed = 0, uses_anonymous_args = 0
 771 0000 38B5     		push	{r3, r4, r5, lr}
 772 0002 8368     		ldr	r3, [r0, #8]
 773 0004 9B68     		ldr	r3, [r3, #8]
 774 0006 53B1     		cbz	r3, .L175
 775 0008 0446     		mov	r4, r0
 776 000a 1846     		mov	r0, r3
 777 000c 0D46     		mov	r5, r1
 778 000e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 779 0012 2169     		ldr	r1, [r4, #16]
 780 0014 E269     		ldr	r2, [r4, #28]
 781 0016 491B     		subs	r1, r1, r5
 782 0018 891A     		subs	r1, r1, r2
 783 001a 0844     		add	r0, r0, r1
 784 001c 38BD     		pop	{r3, r4, r5, pc}
 785              	.L175:
 786 001e 4FF0FF30 		mov	r0, #-1
 787 0022 38BD     		pop	{r3, r4, r5, pc}
 788              		.size	_ZNK11GCodeBuffer15GetFilePositionEj, .-_ZNK11GCodeBuffer15GetFilePositionEj
 789              		.section	.text.hot._ZN11GCodeBuffer4SeenEc,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	_ZN11GCodeBuffer4SeenEc
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu fpv4-sp-d16
 797              		.type	_ZN11GCodeBuffer4SeenEc, %function
 798              	_ZN11GCodeBuffer4SeenEc:
ARM GAS  /tmp/ccwFUzuL.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 802 0004 D0E90549 		ldrd	r4, r9, [r0, #20]
 803 0008 4C45     		cmp	r4, r9
 804 000a 0546     		mov	r5, r0
 805 000c 4462     		str	r4, [r0, #36]
 806 000e 1DD2     		bcs	.L178
 807 0010 4D34     		adds	r4, r4, #77
 808 0012 6FF04C08 		mvn	r8, #76
 809 0016 0F46     		mov	r7, r1
 810 0018 0444     		add	r4, r4, r0
 811 001a A8EB0008 		sub	r8, r8, r0
 812 001e 0026     		movs	r6, #0
 813 0020 09E0     		b	.L182
 814              	.L179:
 815 0022 1EB9     		cbnz	r6, .L180
 816 0024 FFF7FEFF 		bl	toupper
 817 0028 B842     		cmp	r0, r7
 818 002a 15D0     		beq	.L183
 819              	.L180:
 820 002c 08EB0403 		add	r3, r8, r4
 821 0030 9945     		cmp	r9, r3
 822 0032 6B62     		str	r3, [r5, #36]
 823 0034 0AD9     		bls	.L178
 824              	.L182:
 825 0036 14F8010B 		ldrb	r0, [r4], #1	@ zero_extendqisi2
 826 003a 2228     		cmp	r0, #34
 827 003c F1D1     		bne	.L179
 828 003e 08EB0403 		add	r3, r8, r4
 829 0042 9945     		cmp	r9, r3
 830 0044 86F00106 		eor	r6, r6, #1
 831 0048 6B62     		str	r3, [r5, #36]
 832 004a F4D8     		bhi	.L182
 833              	.L178:
 834 004c 4FF0FF33 		mov	r3, #-1
 835 0050 6B62     		str	r3, [r5, #36]
 836 0052 0020     		movs	r0, #0
 837 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 838              	.L183:
 839 0058 0120     		movs	r0, #1
 840 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 841              		.size	_ZN11GCodeBuffer4SeenEc, .-_ZN11GCodeBuffer4SeenEc
 842 005e 00BF     		.section	.text.hot._ZN11GCodeBuffer9SeenParamEc,"ax",%progbits
 843              		.align	1
 844              		.p2align 2,,3
 845              		.global	_ZN11GCodeBuffer9SeenParamEc
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu fpv4-sp-d16
 850              		.type	_ZN11GCodeBuffer9SeenParamEc, %function
 851              	_ZN11GCodeBuffer9SeenParamEc:
 852              		@ args = 0, pretend = 0, frame = 0
 853              		@ frame_needed = 0, uses_anonymous_args = 0
 854 0000 10B5     		push	{r4, lr}
 855 0002 0446     		mov	r4, r0
ARM GAS  /tmp/ccwFUzuL.s 			page 16


 856 0004 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 857 0008 40B1     		cbz	r0, .L187
 858 000a 636A     		ldr	r3, [r4, #36]
 859 000c 1C44     		add	r4, r4, r3
 860 000e 94F84C00 		ldrb	r0, [r4, #76]	@ zero_extendqisi2
 861 0012 A0F12000 		sub	r0, #32
 862 0016 B0FA80F0 		clz	r0, r0
 863 001a 4009     		lsrs	r0, r0, #5
 864              	.L187:
 865 001c 10BD     		pop	{r4, pc}
 866              		.size	_ZN11GCodeBuffer9SeenParamEc, .-_ZN11GCodeBuffer9SeenParamEc
 867 001e 00BF     		.section	.text.hot._ZN11GCodeBuffer9GetFValueEv,"ax",%progbits
 868              		.align	1
 869              		.p2align 2,,3
 870              		.global	_ZN11GCodeBuffer9GetFValueEv
 871              		.syntax unified
 872              		.thumb
 873              		.thumb_func
 874              		.fpu fpv4-sp-d16
 875              		.type	_ZN11GCodeBuffer9GetFValueEv, %function
 876              	_ZN11GCodeBuffer9GetFValueEv:
 877              		@ args = 0, pretend = 0, frame = 0
 878              		@ frame_needed = 0, uses_anonymous_args = 0
 879 0000 10B5     		push	{r4, lr}
 880 0002 0446     		mov	r4, r0
 881 0004 406A     		ldr	r0, [r0, #36]
 882 0006 0028     		cmp	r0, #0
 883 0008 08DB     		blt	.L193
 884 000a 4E30     		adds	r0, r0, #78
 885 000c 2044     		add	r0, r0, r4
 886 000e 0021     		movs	r1, #0
 887 0010 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 888 0014 4FF0FF33 		mov	r3, #-1
 889 0018 6362     		str	r3, [r4, #36]
 890 001a 10BD     		pop	{r4, pc}
 891              	.L193:
 892 001c 4FF4E373 		mov	r3, #454
 893 0020 034A     		ldr	r2, .L196
 894 0022 0449     		ldr	r1, .L196+4
 895 0024 0448     		ldr	r0, .L196+8
 896 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 897 002a 9FED040A 		vldr.32	s0, .L196+12
 898 002e 10BD     		pop	{r4, pc}
 899              	.L197:
 900              		.align	2
 901              	.L196:
 902 0030 00000000 		.word	.LANCHOR0
 903 0034 00000000 		.word	.LC6
 904 0038 00000000 		.word	reprap
 905 003c 00000000 		.word	0
 906              		.size	_ZN11GCodeBuffer9GetFValueEv, .-_ZN11GCodeBuffer9GetFValueEv
 907              		.section	.text.hot._ZN11GCodeBuffer13GetFloatArrayEPfRjb,"ax",%progbits
 908              		.align	1
 909              		.p2align 2,,3
 910              		.global	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 911              		.syntax unified
 912              		.thumb
ARM GAS  /tmp/ccwFUzuL.s 			page 17


 913              		.thumb_func
 914              		.fpu fpv4-sp-d16
 915              		.type	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, %function
 916              	_ZN11GCodeBuffer13GetFloatArrayEPfRjb:
 917              		@ args = 0, pretend = 0, frame = 8
 918              		@ frame_needed = 0, uses_anonymous_args = 0
 919 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 920 0004 0546     		mov	r5, r0
 921 0006 406A     		ldr	r0, [r0, #36]
 922 0008 0028     		cmp	r0, #0
 923 000a 82B0     		sub	sp, sp, #8
 924 000c 1446     		mov	r4, r2
 925 000e 34DB     		blt	.L199
 926 0010 1F46     		mov	r7, r3
 927 0012 1368     		ldr	r3, [r2]
 928 0014 0130     		adds	r0, r0, #1
 929 0016 05F14D08 		add	r8, r5, #77
 930 001a 4044     		add	r0, r0, r8
 931 001c EBB1     		cbz	r3, .L203
 932 001e 0E46     		mov	r6, r1
 933 0020 8A46     		mov	r10, r1
 934 0022 4FF00009 		mov	r9, #0
 935 0026 02E0     		b	.L204
 936              	.L213:
 937 0028 2368     		ldr	r3, [r4]
 938 002a 4B45     		cmp	r3, r9
 939 002c 15D9     		bls	.L203
 940              	.L204:
 941 002e 01A9     		add	r1, sp, #4
 942 0030 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 943 0034 0198     		ldr	r0, [sp, #4]
 944 0036 AAEC010A 		vstmia.32	r10!, {s0}
 945 003a 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 946 003c 3A2B     		cmp	r3, #58
 947 003e 09F10109 		add	r9, r9, #1
 948 0042 00F10100 		add	r0, r0, #1
 949 0046 EFD0     		beq	.L213
 950 0048 1FBB     		cbnz	r7, .L214
 951              	.L205:
 952 004a C4F80090 		str	r9, [r4]
 953              	.L206:
 954 004e 4FF0FF33 		mov	r3, #-1
 955 0052 6B62     		str	r3, [r5, #36]
 956 0054 02B0     		add	sp, sp, #8
 957              		@ sp needed
 958 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 959              	.L203:
 960 005a 154B     		ldr	r3, .L215
 961 005c 154A     		ldr	r2, .L215+4
 962 005e 1868     		ldr	r0, [r3]
 963 0060 40F2B511 		movw	r1, #437
 964 0064 4346     		mov	r3, r8
 965 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 966 006a 4FF0FF32 		mov	r2, #-1
 967 006e 0023     		movs	r3, #0
 968 0070 6A62     		str	r2, [r5, #36]
 969 0072 2360     		str	r3, [r4]
ARM GAS  /tmp/ccwFUzuL.s 			page 18


 970 0074 02B0     		add	sp, sp, #8
 971              		@ sp needed
 972 0076 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 973              	.L199:
 974 007a 4FF4FB73 		mov	r3, #502
 975 007e 0E4A     		ldr	r2, .L215+8
 976 0080 0E49     		ldr	r1, .L215+12
 977 0082 0B48     		ldr	r0, .L215
 978 0084 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 979 0088 0023     		movs	r3, #0
 980 008a 2360     		str	r3, [r4]
 981 008c 02B0     		add	sp, sp, #8
 982              		@ sp needed
 983 008e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 984              	.L214:
 985 0092 B9F1010F 		cmp	r9, #1
 986 0096 D8D1     		bne	.L205
 987 0098 2168     		ldr	r1, [r4]
 988 009a 0129     		cmp	r1, #1
 989 009c D5D9     		bls	.L205
 990 009e 06EB8101 		add	r1, r6, r1, lsl #2
 991 00a2 331D     		adds	r3, r6, #4
 992              	.L207:
 993 00a4 3268     		ldr	r2, [r6]	@ float
 994 00a6 43F8042B 		str	r2, [r3], #4	@ float
 995 00aa 8B42     		cmp	r3, r1
 996 00ac FAD1     		bne	.L207
 997 00ae CEE7     		b	.L206
 998              	.L216:
 999              		.align	2
 1000              	.L215:
 1001 00b0 00000000 		.word	reprap
 1002 00b4 00000000 		.word	.LC7
 1003 00b8 00000000 		.word	.LANCHOR1
 1004 00bc 00000000 		.word	.LC6
 1005              		.size	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, .-_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1006              		.section	.text._ZN11GCodeBuffer11GetIntArrayEPlRjb,"ax",%progbits
 1007              		.align	1
 1008              		.p2align 2,,3
 1009              		.global	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 1010              		.syntax unified
 1011              		.thumb
 1012              		.thumb_func
 1013              		.fpu fpv4-sp-d16
 1014              		.type	_ZN11GCodeBuffer11GetIntArrayEPlRjb, %function
 1015              	_ZN11GCodeBuffer11GetIntArrayEPlRjb:
 1016              		@ args = 0, pretend = 0, frame = 8
 1017              		@ frame_needed = 0, uses_anonymous_args = 0
 1018 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1019 0004 0646     		mov	r6, r0
 1020 0006 406A     		ldr	r0, [r0, #36]
 1021 0008 0028     		cmp	r0, #0
 1022 000a 83B0     		sub	sp, sp, #12
 1023 000c 1546     		mov	r5, r2
 1024 000e 37DB     		blt	.L218
 1025 0010 9A46     		mov	r10, r3
 1026 0012 1368     		ldr	r3, [r2]
ARM GAS  /tmp/ccwFUzuL.s 			page 19


 1027 0014 0130     		adds	r0, r0, #1
 1028 0016 06F14D08 		add	r8, r6, #77
 1029 001a 4044     		add	r0, r0, r8
 1030 001c 03B3     		cbz	r3, .L222
 1031 001e A1F10409 		sub	r9, r1, #4
 1032 0022 0F46     		mov	r7, r1
 1033 0024 CB46     		mov	fp, r9
 1034 0026 0024     		movs	r4, #0
 1035 0028 02E0     		b	.L223
 1036              	.L231:
 1037 002a 2B68     		ldr	r3, [r5]
 1038 002c A342     		cmp	r3, r4
 1039 002e 17D9     		bls	.L222
 1040              	.L223:
 1041 0030 0A22     		movs	r2, #10
 1042 0032 01A9     		add	r1, sp, #4
 1043 0034 FFF7FEFF 		bl	strtol
 1044 0038 019B     		ldr	r3, [sp, #4]
 1045 003a 4BF8040F 		str	r0, [fp, #4]!
 1046 003e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1047 0040 3A2A     		cmp	r2, #58
 1048 0042 04F10104 		add	r4, r4, #1
 1049 0046 03F10100 		add	r0, r3, #1
 1050 004a EED0     		beq	.L231
 1051 004c BAF1000F 		cmp	r10, #0
 1052 0050 22D1     		bne	.L232
 1053              	.L224:
 1054 0052 2C60     		str	r4, [r5]
 1055              	.L225:
 1056 0054 4FF0FF33 		mov	r3, #-1
 1057 0058 7362     		str	r3, [r6, #36]
 1058 005a 03B0     		add	sp, sp, #12
 1059              		@ sp needed
 1060 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1061              	.L222:
 1062 0060 144B     		ldr	r3, .L233
 1063 0062 154A     		ldr	r2, .L233+4
 1064 0064 1868     		ldr	r0, [r3]
 1065 0066 40F2B511 		movw	r1, #437
 1066 006a 4346     		mov	r3, r8
 1067 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1068 0070 4FF0FF32 		mov	r2, #-1
 1069 0074 0023     		movs	r3, #0
 1070 0076 7262     		str	r2, [r6, #36]
 1071 0078 2B60     		str	r3, [r5]
 1072 007a 03B0     		add	sp, sp, #12
 1073              		@ sp needed
 1074 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1075              	.L218:
 1076 0080 40F22523 		movw	r3, #549
 1077 0084 0D4A     		ldr	r2, .L233+8
 1078 0086 0E49     		ldr	r1, .L233+12
 1079 0088 0A48     		ldr	r0, .L233
 1080 008a FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1081 008e 0023     		movs	r3, #0
 1082 0090 2B60     		str	r3, [r5]
 1083 0092 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccwFUzuL.s 			page 20


 1084              		@ sp needed
 1085 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1086              	.L232:
 1087 0098 012C     		cmp	r4, #1
 1088 009a DAD1     		bne	.L224
 1089 009c 2B68     		ldr	r3, [r5]
 1090 009e 012B     		cmp	r3, #1
 1091 00a0 D7D9     		bls	.L224
 1092 00a2 09EB8309 		add	r9, r9, r3, lsl #2
 1093 00a6 3B46     		mov	r3, r7
 1094              	.L226:
 1095 00a8 3A68     		ldr	r2, [r7]
 1096 00aa 43F8042F 		str	r2, [r3, #4]!
 1097 00ae 4B45     		cmp	r3, r9
 1098 00b0 FAD1     		bne	.L226
 1099 00b2 CFE7     		b	.L225
 1100              	.L234:
 1101              		.align	2
 1102              	.L233:
 1103 00b4 00000000 		.word	reprap
 1104 00b8 00000000 		.word	.LC8
 1105 00bc 00000000 		.word	.LANCHOR2
 1106 00c0 00000000 		.word	.LC6
 1107              		.size	_ZN11GCodeBuffer11GetIntArrayEPlRjb, .-_ZN11GCodeBuffer11GetIntArrayEPlRjb
 1108              		.section	.text._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb,"ax",%progbits
 1109              		.align	1
 1110              		.p2align 2,,3
 1111              		.global	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1112              		.syntax unified
 1113              		.thumb
 1114              		.thumb_func
 1115              		.fpu fpv4-sp-d16
 1116              		.type	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, %function
 1117              	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb:
 1118              		@ args = 0, pretend = 0, frame = 8
 1119              		@ frame_needed = 0, uses_anonymous_args = 0
 1120 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1121 0004 0646     		mov	r6, r0
 1122 0006 406A     		ldr	r0, [r0, #36]
 1123 0008 0028     		cmp	r0, #0
 1124 000a 83B0     		sub	sp, sp, #12
 1125 000c 1546     		mov	r5, r2
 1126 000e 37DB     		blt	.L236
 1127 0010 9A46     		mov	r10, r3
 1128 0012 1368     		ldr	r3, [r2]
 1129 0014 0130     		adds	r0, r0, #1
 1130 0016 06F14D08 		add	r8, r6, #77
 1131 001a 4044     		add	r0, r0, r8
 1132 001c 03B3     		cbz	r3, .L240
 1133 001e A1F10409 		sub	r9, r1, #4
 1134 0022 0F46     		mov	r7, r1
 1135 0024 CB46     		mov	fp, r9
 1136 0026 0024     		movs	r4, #0
 1137 0028 02E0     		b	.L241
 1138              	.L249:
 1139 002a 2B68     		ldr	r3, [r5]
 1140 002c A342     		cmp	r3, r4
ARM GAS  /tmp/ccwFUzuL.s 			page 21


 1141 002e 17D9     		bls	.L240
 1142              	.L241:
 1143 0030 0A22     		movs	r2, #10
 1144 0032 01A9     		add	r1, sp, #4
 1145 0034 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1146 0038 019B     		ldr	r3, [sp, #4]
 1147 003a 4BF8040F 		str	r0, [fp, #4]!
 1148 003e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1149 0040 3A2A     		cmp	r2, #58
 1150 0042 04F10104 		add	r4, r4, #1
 1151 0046 03F10100 		add	r0, r3, #1
 1152 004a EED0     		beq	.L249
 1153 004c BAF1000F 		cmp	r10, #0
 1154 0050 22D1     		bne	.L250
 1155              	.L242:
 1156 0052 2C60     		str	r4, [r5]
 1157              	.L243:
 1158 0054 4FF0FF33 		mov	r3, #-1
 1159 0058 7362     		str	r3, [r6, #36]
 1160 005a 03B0     		add	sp, sp, #12
 1161              		@ sp needed
 1162 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1163              	.L240:
 1164 0060 144B     		ldr	r3, .L251
 1165 0062 154A     		ldr	r2, .L251+4
 1166 0064 1868     		ldr	r0, [r3]
 1167 0066 40F2B511 		movw	r1, #437
 1168 006a 4346     		mov	r3, r8
 1169 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1170 0070 4FF0FF32 		mov	r2, #-1
 1171 0074 0023     		movs	r3, #0
 1172 0076 7262     		str	r2, [r6, #36]
 1173 0078 2B60     		str	r3, [r5]
 1174 007a 03B0     		add	sp, sp, #12
 1175              		@ sp needed
 1176 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1177              	.L236:
 1178 0080 40F25523 		movw	r3, #597
 1179 0084 0D4A     		ldr	r2, .L251+8
 1180 0086 0E49     		ldr	r1, .L251+12
 1181 0088 0A48     		ldr	r0, .L251
 1182 008a FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1183 008e 0023     		movs	r3, #0
 1184 0090 2B60     		str	r3, [r5]
 1185 0092 03B0     		add	sp, sp, #12
 1186              		@ sp needed
 1187 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1188              	.L250:
 1189 0098 012C     		cmp	r4, #1
 1190 009a DAD1     		bne	.L242
 1191 009c 2B68     		ldr	r3, [r5]
 1192 009e 012B     		cmp	r3, #1
 1193 00a0 D7D9     		bls	.L242
 1194 00a2 09EB8309 		add	r9, r9, r3, lsl #2
 1195 00a6 3B46     		mov	r3, r7
 1196              	.L244:
 1197 00a8 3A68     		ldr	r2, [r7]
ARM GAS  /tmp/ccwFUzuL.s 			page 22


 1198 00aa 43F8042F 		str	r2, [r3, #4]!
 1199 00ae 4B45     		cmp	r3, r9
 1200 00b0 FAD1     		bne	.L244
 1201 00b2 CFE7     		b	.L243
 1202              	.L252:
 1203              		.align	2
 1204              	.L251:
 1205 00b4 00000000 		.word	reprap
 1206 00b8 00000000 		.word	.LC9
 1207 00bc 00000000 		.word	.LANCHOR3
 1208 00c0 00000000 		.word	.LC6
 1209              		.size	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, .-_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1210              		.section	.text._ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef,"ax",%progbits
 1211              		.align	1
 1212              		.p2align 2,,3
 1213              		.global	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1214              		.syntax unified
 1215              		.thumb
 1216              		.thumb_func
 1217              		.fpu fpv4-sp-d16
 1218              		.type	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, %function
 1219              	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef:
 1220              		@ args = 0, pretend = 0, frame = 0
 1221              		@ frame_needed = 0, uses_anonymous_args = 0
 1222 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1223 0004 436A     		ldr	r3, [r0, #36]
 1224 0006 5D1C     		adds	r5, r3, #1
 1225 0008 4219     		adds	r2, r0, r5
 1226 000a 0233     		adds	r3, r3, #2
 1227 000c 4362     		str	r3, [r0, #36]
 1228 000e 92F84D40 		ldrb	r4, [r2, #77]	@ zero_extendqisi2
 1229 0012 1F2C     		cmp	r4, #31
 1230 0014 30D9     		bls	.L254
 1231 0016 0646     		mov	r6, r0
 1232 0018 0F46     		mov	r7, r1
 1233 001a 0DE0     		b	.L259
 1234              	.L255:
 1235 001c 272C     		cmp	r4, #39
 1236 001e 17D0     		beq	.L263
 1237              	.L257:
 1238 0020 2146     		mov	r1, r4
 1239 0022 3846     		mov	r0, r7
 1240 0024 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1241 0028 756A     		ldr	r5, [r6, #36]
 1242 002a 6B1C     		adds	r3, r5, #1
 1243 002c 7219     		adds	r2, r6, r5
 1244 002e 7362     		str	r3, [r6, #36]
 1245 0030 92F84D40 		ldrb	r4, [r2, #77]	@ zero_extendqisi2
 1246 0034 1F2C     		cmp	r4, #31
 1247 0036 1FD9     		bls	.L254
 1248              	.L259:
 1249 0038 222C     		cmp	r4, #34
 1250 003a EFD1     		bne	.L255
 1251 003c 0235     		adds	r5, r5, #2
 1252 003e 3344     		add	r3, r3, r6
 1253 0040 7562     		str	r5, [r6, #36]
 1254 0042 93F84D40 		ldrb	r4, [r3, #77]	@ zero_extendqisi2
ARM GAS  /tmp/ccwFUzuL.s 			page 23


 1255 0046 222C     		cmp	r4, #34
 1256 0048 EAD0     		beq	.L257
 1257 004a 0120     		movs	r0, #1
 1258 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1259              	.L263:
 1260 0050 3344     		add	r3, r3, r6
 1261 0052 93F84D80 		ldrb	r8, [r3, #77]	@ zero_extendqisi2
 1262 0056 4046     		mov	r0, r8
 1263 0058 FFF7FEFF 		bl	isalpha
 1264 005c AB1C     		adds	r3, r5, #2
 1265 005e 28B1     		cbz	r0, .L258
 1266 0060 7362     		str	r3, [r6, #36]
 1267 0062 4046     		mov	r0, r8
 1268 0064 FFF7FEFF 		bl	tolower
 1269 0068 C4B2     		uxtb	r4, r0
 1270 006a D9E7     		b	.L257
 1271              	.L258:
 1272 006c B8F1270F 		cmp	r8, #39
 1273 0070 04BF     		itt	eq
 1274 0072 0235     		addeq	r5, r5, #2
 1275 0074 7562     		streq	r5, [r6, #36]
 1276 0076 D3E7     		b	.L257
 1277              	.L254:
 1278 0078 0020     		movs	r0, #0
 1279 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1280              		.size	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23InternalGetQuote
 1281 007e 00BF     		.section	.text._ZN11GCodeBuffer15GetQuotedStringERK9StringRef,"ax",%progbits
 1282              		.align	1
 1283              		.p2align 2,,3
 1284              		.global	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1285              		.syntax unified
 1286              		.thumb
 1287              		.thumb_func
 1288              		.fpu fpv4-sp-d16
 1289              		.type	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, %function
 1290              	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef:
 1291              		@ args = 0, pretend = 0, frame = 0
 1292              		@ frame_needed = 0, uses_anonymous_args = 0
 1293 0000 10B5     		push	{r4, lr}
 1294 0002 0B68     		ldr	r3, [r1]
 1295 0004 0024     		movs	r4, #0
 1296 0006 1C70     		strb	r4, [r3]
 1297 0008 436A     		ldr	r3, [r0, #36]
 1298 000a A342     		cmp	r3, r4
 1299 000c 08DB     		blt	.L265
 1300 000e 0133     		adds	r3, r3, #1
 1301 0010 C418     		adds	r4, r0, r3
 1302 0012 4362     		str	r3, [r0, #36]
 1303 0014 94F84D30 		ldrb	r3, [r4, #77]	@ zero_extendqisi2
 1304 0018 222B     		cmp	r3, #34
 1305 001a 0AD0     		beq	.L269
 1306 001c 0020     		movs	r0, #0
 1307 001e 10BD     		pop	{r4, pc}
 1308              	.L265:
 1309 0020 4FF41973 		mov	r3, #612
 1310 0024 054A     		ldr	r2, .L270
 1311 0026 0649     		ldr	r1, .L270+4
ARM GAS  /tmp/ccwFUzuL.s 			page 24


 1312 0028 0648     		ldr	r0, .L270+8
 1313 002a FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1314 002e 0020     		movs	r0, #0
 1315 0030 10BD     		pop	{r4, pc}
 1316              	.L269:
 1317 0032 BDE81040 		pop	{r4, lr}
 1318 0036 FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1319              	.L271:
 1320 003a 00BF     		.align	2
 1321              	.L270:
 1322 003c 00000000 		.word	.LANCHOR4
 1323 0040 00000000 		.word	.LC6
 1324 0044 00000000 		.word	reprap
 1325              		.size	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer15GetQuotedStringERK9Strin
 1326              		.section	.text._ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 1327              		.align	1
 1328              		.p2align 2,,3
 1329              		.global	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1330              		.syntax unified
 1331              		.thumb
 1332              		.thumb_func
 1333              		.fpu fpv4-sp-d16
 1334              		.type	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, %function
 1335              	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef:
 1336              		@ args = 0, pretend = 0, frame = 0
 1337              		@ frame_needed = 0, uses_anonymous_args = 0
 1338 0000 38B5     		push	{r3, r4, r5, lr}
 1339 0002 0B68     		ldr	r3, [r1]
 1340 0004 0022     		movs	r2, #0
 1341 0006 1A70     		strb	r2, [r3]
 1342 0008 426A     		ldr	r2, [r0, #36]
 1343 000a 8318     		adds	r3, r0, r2
 1344 000c 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 1345 0010 222B     		cmp	r3, #34
 1346 0012 1CD0     		beq	.L278
 1347 0014 0D46     		mov	r5, r1
 1348 0016 0132     		adds	r2, r2, #1
 1349 0018 016A     		ldr	r1, [r0, #32]
 1350 001a 4262     		str	r2, [r0, #36]
 1351 001c 1F2B     		cmp	r3, #31
 1352 001e 0446     		mov	r4, r0
 1353 0020 8161     		str	r1, [r0, #24]
 1354 0022 0BD9     		bls	.L274
 1355              	.L275:
 1356 0024 1946     		mov	r1, r3
 1357 0026 2846     		mov	r0, r5
 1358 0028 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1359 002c 636A     		ldr	r3, [r4, #36]
 1360 002e 5A1C     		adds	r2, r3, #1
 1361 0030 2344     		add	r3, r3, r4
 1362 0032 6262     		str	r2, [r4, #36]
 1363 0034 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 1364 0038 1F2B     		cmp	r3, #31
 1365 003a F3D8     		bhi	.L275
 1366              	.L274:
 1367 003c 2846     		mov	r0, r5
 1368 003e FFF7FEFF 		bl	_ZNK9StringRef19StripTrailingSpacesEv
ARM GAS  /tmp/ccwFUzuL.s 			page 25


 1369 0042 2B68     		ldr	r3, [r5]
 1370 0044 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 1371 0046 0030     		adds	r0, r0, #0
 1372 0048 18BF     		it	ne
 1373 004a 0120     		movne	r0, #1
 1374 004c 38BD     		pop	{r3, r4, r5, pc}
 1375              	.L278:
 1376 004e BDE83840 		pop	{r3, r4, r5, lr}
 1377 0052 FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1378              		.size	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer31Internal
 1379 0056 00BF     		.section	.text._ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 1380              		.align	1
 1381              		.p2align 2,,3
 1382              		.global	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 1383              		.syntax unified
 1384              		.thumb
 1385              		.thumb_func
 1386              		.fpu fpv4-sp-d16
 1387              		.type	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, %function
 1388              	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef:
 1389              		@ args = 0, pretend = 0, frame = 0
 1390              		@ frame_needed = 0, uses_anonymous_args = 0
 1391 0000 08B5     		push	{r3, lr}
 1392 0002 436A     		ldr	r3, [r0, #36]
 1393 0004 002B     		cmp	r3, #0
 1394 0006 05DB     		blt	.L280
 1395 0008 0133     		adds	r3, r3, #1
 1396 000a 4362     		str	r3, [r0, #36]
 1397 000c BDE80840 		pop	{r3, lr}
 1398 0010 FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1399              	.L280:
 1400 0014 40F29523 		movw	r3, #661
 1401 0018 034A     		ldr	r2, .L282
 1402 001a 0449     		ldr	r1, .L282+4
 1403 001c 0448     		ldr	r0, .L282+8
 1404 001e FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1405 0022 0020     		movs	r0, #0
 1406 0024 08BD     		pop	{r3, pc}
 1407              	.L283:
 1408 0026 00BF     		.align	2
 1409              	.L282:
 1410 0028 00000000 		.word	.LANCHOR5
 1411 002c 00000000 		.word	.LC6
 1412 0030 00000000 		.word	reprap
 1413              		.size	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23GetPossiblyQuote
 1414              		.section	.text._ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef,"ax",%progbits
 1415              		.align	1
 1416              		.p2align 2,,3
 1417              		.global	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 1418              		.syntax unified
 1419              		.thumb
 1420              		.thumb_func
 1421              		.fpu fpv4-sp-d16
 1422              		.type	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, %function
 1423              	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef:
 1424              		@ args = 0, pretend = 0, frame = 0
 1425              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccwFUzuL.s 			page 26


 1426              		@ link register save eliminated.
 1427 0000 30B4     		push	{r4, r5}
 1428 0002 D0E90535 		ldrd	r3, r5, [r0, #20]
 1429 0006 AB42     		cmp	r3, r5
 1430 0008 4362     		str	r3, [r0, #36]
 1431 000a 0DD2     		bcs	.L287
 1432 000c 03F14D04 		add	r4, r3, #77
 1433 0010 0444     		add	r4, r4, r0
 1434              	.L288:
 1435 0012 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 1436 0016 202A     		cmp	r2, #32
 1437 0018 03F10103 		add	r3, r3, #1
 1438 001c 01D0     		beq	.L286
 1439 001e 092A     		cmp	r2, #9
 1440 0020 02D1     		bne	.L287
 1441              	.L286:
 1442 0022 9D42     		cmp	r5, r3
 1443 0024 4362     		str	r3, [r0, #36]
 1444 0026 F4D8     		bhi	.L288
 1445              	.L287:
 1446 0028 30BC     		pop	{r4, r5}
 1447 002a FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1448              		.size	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, .-_ZN11GCodeBuffer22GetUnprecedentedS
 1449 002e 00BF     		.section	.text.hot._ZN11GCodeBuffer9GetIValueEv,"ax",%progbits
 1450              		.align	1
 1451              		.p2align 2,,3
 1452              		.global	_ZN11GCodeBuffer9GetIValueEv
 1453              		.syntax unified
 1454              		.thumb
 1455              		.thumb_func
 1456              		.fpu fpv4-sp-d16
 1457              		.type	_ZN11GCodeBuffer9GetIValueEv, %function
 1458              	_ZN11GCodeBuffer9GetIValueEv:
 1459              		@ args = 0, pretend = 0, frame = 0
 1460              		@ frame_needed = 0, uses_anonymous_args = 0
 1461 0000 10B5     		push	{r4, lr}
 1462 0002 0446     		mov	r4, r0
 1463 0004 406A     		ldr	r0, [r0, #36]
 1464 0006 0028     		cmp	r0, #0
 1465 0008 09DB     		blt	.L295
 1466 000a 4E30     		adds	r0, r0, #78
 1467 000c 2044     		add	r0, r0, r4
 1468 000e 0A22     		movs	r2, #10
 1469 0010 0021     		movs	r1, #0
 1470 0012 FFF7FEFF 		bl	strtol
 1471 0016 4FF0FF33 		mov	r3, #-1
 1472 001a 6362     		str	r3, [r4, #36]
 1473 001c 10BD     		pop	{r4, pc}
 1474              	.L295:
 1475 001e 40F2CA23 		movw	r3, #714
 1476 0022 034A     		ldr	r2, .L298
 1477 0024 0349     		ldr	r1, .L298+4
 1478 0026 0448     		ldr	r0, .L298+8
 1479 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1480 002c 0020     		movs	r0, #0
 1481 002e 10BD     		pop	{r4, pc}
 1482              	.L299:
ARM GAS  /tmp/ccwFUzuL.s 			page 27


 1483              		.align	2
 1484              	.L298:
 1485 0030 00000000 		.word	.LANCHOR6
 1486 0034 00000000 		.word	.LC6
 1487 0038 00000000 		.word	reprap
 1488              		.size	_ZN11GCodeBuffer9GetIValueEv, .-_ZN11GCodeBuffer9GetIValueEv
 1489              		.section	.text._ZN11GCodeBuffer18GetUIValueMaybeHexEv,"ax",%progbits
 1490              		.align	1
 1491              		.p2align 2,,3
 1492              		.global	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 1493              		.syntax unified
 1494              		.thumb
 1495              		.thumb_func
 1496              		.fpu fpv4-sp-d16
 1497              		.type	_ZN11GCodeBuffer18GetUIValueMaybeHexEv, %function
 1498              	_ZN11GCodeBuffer18GetUIValueMaybeHexEv:
 1499              		@ args = 0, pretend = 0, frame = 0
 1500              		@ frame_needed = 0, uses_anonymous_args = 0
 1501 0000 10B5     		push	{r4, lr}
 1502 0002 436A     		ldr	r3, [r0, #36]
 1503 0004 002B     		cmp	r3, #0
 1504 0006 1ADB     		blt	.L301
 1505 0008 0446     		mov	r4, r0
 1506 000a 581C     		adds	r0, r3, #1
 1507 000c 2218     		adds	r2, r4, r0
 1508 000e 92F84D20 		ldrb	r2, [r2, #77]	@ zero_extendqisi2
 1509 0012 302A     		cmp	r2, #48
 1510 0014 09D0     		beq	.L307
 1511              	.L305:
 1512 0016 0A22     		movs	r2, #10
 1513              	.L302:
 1514 0018 4D30     		adds	r0, r0, #77
 1515 001a 2044     		add	r0, r0, r4
 1516 001c 0021     		movs	r1, #0
 1517 001e FFF7FEFF 		bl	_Z11SafeStrtoulPcPS_i
 1518 0022 4FF0FF33 		mov	r3, #-1
 1519 0026 6362     		str	r3, [r4, #36]
 1520 0028 10BD     		pop	{r4, pc}
 1521              	.L307:
 1522 002a E218     		adds	r2, r4, r3
 1523 002c 92F84F20 		ldrb	r2, [r2, #79]	@ zero_extendqisi2
 1524 0030 02F0DF02 		and	r2, r2, #223
 1525 0034 582A     		cmp	r2, #88
 1526 0036 EED1     		bne	.L305
 1527 0038 D81C     		adds	r0, r3, #3
 1528 003a 1022     		movs	r2, #16
 1529 003c ECE7     		b	.L302
 1530              	.L301:
 1531 003e 4FF43873 		mov	r3, #736
 1532 0042 034A     		ldr	r2, .L308
 1533 0044 0349     		ldr	r1, .L308+4
 1534 0046 0448     		ldr	r0, .L308+8
 1535 0048 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1536 004c 0020     		movs	r0, #0
 1537 004e 10BD     		pop	{r4, pc}
 1538              	.L309:
 1539              		.align	2
ARM GAS  /tmp/ccwFUzuL.s 			page 28


 1540              	.L308:
 1541 0050 00000000 		.word	.LANCHOR7
 1542 0054 00000000 		.word	.LC6
 1543 0058 00000000 		.word	reprap
 1544              		.size	_ZN11GCodeBuffer18GetUIValueMaybeHexEv, .-_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 1545              		.section	.text._ZN11GCodeBuffer10GetUIValueEv,"ax",%progbits
 1546              		.align	1
 1547              		.p2align 2,,3
 1548              		.global	_ZN11GCodeBuffer10GetUIValueEv
 1549              		.syntax unified
 1550              		.thumb
 1551              		.thumb_func
 1552              		.fpu fpv4-sp-d16
 1553              		.type	_ZN11GCodeBuffer10GetUIValueEv, %function
 1554              	_ZN11GCodeBuffer10GetUIValueEv:
 1555              		@ args = 0, pretend = 0, frame = 0
 1556              		@ frame_needed = 0, uses_anonymous_args = 0
 1557 0000 10B5     		push	{r4, lr}
 1558 0002 0446     		mov	r4, r0
 1559 0004 406A     		ldr	r0, [r0, #36]
 1560 0006 0028     		cmp	r0, #0
 1561 0008 09DB     		blt	.L311
 1562 000a 4E30     		adds	r0, r0, #78
 1563 000c 2044     		add	r0, r0, r4
 1564 000e 0A22     		movs	r2, #10
 1565 0010 0021     		movs	r1, #0
 1566 0012 FFF7FEFF 		bl	_Z11SafeStrtoulPcPS_i
 1567 0016 4FF0FF33 		mov	r3, #-1
 1568 001a 6362     		str	r3, [r4, #36]
 1569 001c 10BD     		pop	{r4, pc}
 1570              	.L311:
 1571 001e 40F2EE23 		movw	r3, #750
 1572 0022 034A     		ldr	r2, .L314
 1573 0024 0349     		ldr	r1, .L314+4
 1574 0026 0448     		ldr	r0, .L314+8
 1575 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1576 002c 0020     		movs	r0, #0
 1577 002e 10BD     		pop	{r4, pc}
 1578              	.L315:
 1579              		.align	2
 1580              	.L314:
 1581 0030 00000000 		.word	.LANCHOR8
 1582 0034 00000000 		.word	.LC6
 1583 0038 00000000 		.word	reprap
 1584              		.size	_ZN11GCodeBuffer10GetUIValueEv, .-_ZN11GCodeBuffer10GetUIValueEv
 1585              		.section	.text._ZN11GCodeBuffer12TryGetFValueEcRfRb,"ax",%progbits
 1586              		.align	1
 1587              		.p2align 2,,3
 1588              		.global	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1589              		.syntax unified
 1590              		.thumb
 1591              		.thumb_func
 1592              		.fpu fpv4-sp-d16
 1593              		.type	_ZN11GCodeBuffer12TryGetFValueEcRfRb, %function
 1594              	_ZN11GCodeBuffer12TryGetFValueEcRfRb:
 1595              		@ args = 0, pretend = 0, frame = 0
 1596              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccwFUzuL.s 			page 29


 1597 0000 70B5     		push	{r4, r5, r6, lr}
 1598 0002 1546     		mov	r5, r2
 1599 0004 1C46     		mov	r4, r3
 1600 0006 0646     		mov	r6, r0
 1601 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1602 000c 00B9     		cbnz	r0, .L322
 1603 000e 70BD     		pop	{r4, r5, r6, pc}
 1604              	.L322:
 1605 0010 3046     		mov	r0, r6
 1606 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1607 0016 0123     		movs	r3, #1
 1608 0018 85ED000A 		vstr.32	s0, [r5]
 1609 001c 2370     		strb	r3, [r4]
 1610 001e 70BD     		pop	{r4, r5, r6, pc}
 1611              		.size	_ZN11GCodeBuffer12TryGetFValueEcRfRb, .-_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1612              		.section	.text._ZN11GCodeBuffer12TryGetIValueEcRlRb,"ax",%progbits
 1613              		.align	1
 1614              		.p2align 2,,3
 1615              		.global	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1616              		.syntax unified
 1617              		.thumb
 1618              		.thumb_func
 1619              		.fpu fpv4-sp-d16
 1620              		.type	_ZN11GCodeBuffer12TryGetIValueEcRlRb, %function
 1621              	_ZN11GCodeBuffer12TryGetIValueEcRlRb:
 1622              		@ args = 0, pretend = 0, frame = 0
 1623              		@ frame_needed = 0, uses_anonymous_args = 0
 1624 0000 70B5     		push	{r4, r5, r6, lr}
 1625 0002 1546     		mov	r5, r2
 1626 0004 1C46     		mov	r4, r3
 1627 0006 0646     		mov	r6, r0
 1628 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1629 000c 00B9     		cbnz	r0, .L329
 1630 000e 70BD     		pop	{r4, r5, r6, pc}
 1631              	.L329:
 1632 0010 3046     		mov	r0, r6
 1633 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1634 0016 0123     		movs	r3, #1
 1635 0018 2860     		str	r0, [r5]
 1636 001a 2370     		strb	r3, [r4]
 1637 001c 70BD     		pop	{r4, r5, r6, pc}
 1638              		.size	_ZN11GCodeBuffer12TryGetIValueEcRlRb, .-_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1639 001e 00BF     		.section	.text._ZN11GCodeBuffer13TryGetUIValueEcRmRb,"ax",%progbits
 1640              		.align	1
 1641              		.p2align 2,,3
 1642              		.global	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1643              		.syntax unified
 1644              		.thumb
 1645              		.thumb_func
 1646              		.fpu fpv4-sp-d16
 1647              		.type	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, %function
 1648              	_ZN11GCodeBuffer13TryGetUIValueEcRmRb:
 1649              		@ args = 0, pretend = 0, frame = 0
 1650              		@ frame_needed = 0, uses_anonymous_args = 0
 1651 0000 70B5     		push	{r4, r5, r6, lr}
 1652 0002 1546     		mov	r5, r2
 1653 0004 1C46     		mov	r4, r3
ARM GAS  /tmp/ccwFUzuL.s 			page 30


 1654 0006 0646     		mov	r6, r0
 1655 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1656 000c 00B9     		cbnz	r0, .L336
 1657 000e 70BD     		pop	{r4, r5, r6, pc}
 1658              	.L336:
 1659 0010 3046     		mov	r0, r6
 1660 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1661 0016 0123     		movs	r3, #1
 1662 0018 2860     		str	r0, [r5]
 1663 001a 2370     		strb	r3, [r4]
 1664 001c 70BD     		pop	{r4, r5, r6, pc}
 1665              		.size	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, .-_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1666 001e 00BF     		.section	.text._ZN11GCodeBuffer12TryGetBValueEcRbS0_,"ax",%progbits
 1667              		.align	1
 1668              		.p2align 2,,3
 1669              		.global	_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 1670              		.syntax unified
 1671              		.thumb
 1672              		.thumb_func
 1673              		.fpu fpv4-sp-d16
 1674              		.type	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, %function
 1675              	_ZN11GCodeBuffer12TryGetBValueEcRbS0_:
 1676              		@ args = 0, pretend = 0, frame = 0
 1677              		@ frame_needed = 0, uses_anonymous_args = 0
 1678 0000 70B5     		push	{r4, r5, r6, lr}
 1679 0002 1546     		mov	r5, r2
 1680 0004 1C46     		mov	r4, r3
 1681 0006 0646     		mov	r6, r0
 1682 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1683 000c 00B9     		cbnz	r0, .L343
 1684 000e 70BD     		pop	{r4, r5, r6, pc}
 1685              	.L343:
 1686 0010 3046     		mov	r0, r6
 1687 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1688 0016 0028     		cmp	r0, #0
 1689 0018 4FF00103 		mov	r3, #1
 1690 001c D4BF     		ite	le
 1691 001e 0020     		movle	r0, #0
 1692 0020 0120     		movgt	r0, #1
 1693 0022 2870     		strb	r0, [r5]
 1694 0024 2370     		strb	r3, [r4]
 1695 0026 70BD     		pop	{r4, r5, r6, pc}
 1696              		.size	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, .-_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 1697              		.section	.text._ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb,"ax",%progbits
 1698              		.align	1
 1699              		.p2align 2,,3
 1700              		.global	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1701              		.syntax unified
 1702              		.thumb
 1703              		.thumb_func
 1704              		.fpu fpv4-sp-d16
 1705              		.type	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, %function
 1706              	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb:
 1707              		@ args = 12, pretend = 0, frame = 8
 1708              		@ frame_needed = 0, uses_anonymous_args = 0
 1709 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1710 0004 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccwFUzuL.s 			page 31


 1711 0006 1546     		mov	r5, r2
 1712 0008 1F46     		mov	r7, r3
 1713 000a 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 1714 000e 0646     		mov	r6, r0
 1715 0010 8946     		mov	r9, r1
 1716 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1717 0016 0446     		mov	r4, r0
 1718 0018 18B9     		cbnz	r0, .L351
 1719 001a 2046     		mov	r0, r4
 1720 001c 03B0     		add	sp, sp, #12
 1721              		@ sp needed
 1722 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1723              	.L351:
 1724 0022 02AA     		add	r2, sp, #8
 1725 0024 4346     		mov	r3, r8
 1726 0026 42F8045D 		str	r5, [r2, #-4]!
 1727 002a 3946     		mov	r1, r7
 1728 002c 3046     		mov	r0, r6
 1729 002e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1730 0032 019B     		ldr	r3, [sp, #4]
 1731 0034 AB42     		cmp	r3, r5
 1732 0036 09D0     		beq	.L352
 1733 0038 2B46     		mov	r3, r5
 1734 003a 4A46     		mov	r2, r9
 1735 003c 0749     		ldr	r1, .L353
 1736 003e 0A98     		ldr	r0, [sp, #40]
 1737 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1738 0044 2046     		mov	r0, r4
 1739 0046 03B0     		add	sp, sp, #12
 1740              		@ sp needed
 1741 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1742              	.L352:
 1743 004c 0B9A     		ldr	r2, [sp, #44]
 1744 004e 0024     		movs	r4, #0
 1745 0050 0123     		movs	r3, #1
 1746 0052 2046     		mov	r0, r4
 1747 0054 1370     		strb	r3, [r2]
 1748 0056 03B0     		add	sp, sp, #12
 1749              		@ sp needed
 1750 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1751              	.L354:
 1752              		.align	2
 1753              	.L353:
 1754 005c 00000000 		.word	.LC10
 1755              		.size	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, .-_ZN11GCodeBuffer13TryGetUIArrayEcjPmR
 1756              		.section	.text._ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb,"ax",%progbits
 1757              		.align	1
 1758              		.p2align 2,,3
 1759              		.global	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1760              		.syntax unified
 1761              		.thumb
 1762              		.thumb_func
 1763              		.fpu fpv4-sp-d16
 1764              		.type	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, %function
 1765              	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb:
 1766              		@ args = 12, pretend = 0, frame = 8
 1767              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccwFUzuL.s 			page 32


 1768 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1769 0004 83B0     		sub	sp, sp, #12
 1770 0006 1546     		mov	r5, r2
 1771 0008 1F46     		mov	r7, r3
 1772 000a 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 1773 000e 0646     		mov	r6, r0
 1774 0010 8946     		mov	r9, r1
 1775 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1776 0016 0446     		mov	r4, r0
 1777 0018 18B9     		cbnz	r0, .L362
 1778 001a 2046     		mov	r0, r4
 1779 001c 03B0     		add	sp, sp, #12
 1780              		@ sp needed
 1781 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1782              	.L362:
 1783 0022 02AA     		add	r2, sp, #8
 1784 0024 4346     		mov	r3, r8
 1785 0026 42F8045D 		str	r5, [r2, #-4]!
 1786 002a 3946     		mov	r1, r7
 1787 002c 3046     		mov	r0, r6
 1788 002e FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1789 0032 019B     		ldr	r3, [sp, #4]
 1790 0034 AB42     		cmp	r3, r5
 1791 0036 09D0     		beq	.L363
 1792 0038 2B46     		mov	r3, r5
 1793 003a 4A46     		mov	r2, r9
 1794 003c 0749     		ldr	r1, .L364
 1795 003e 0A98     		ldr	r0, [sp, #40]
 1796 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1797 0044 2046     		mov	r0, r4
 1798 0046 03B0     		add	sp, sp, #12
 1799              		@ sp needed
 1800 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1801              	.L363:
 1802 004c 0B9A     		ldr	r2, [sp, #44]
 1803 004e 0024     		movs	r4, #0
 1804 0050 0123     		movs	r3, #1
 1805 0052 2046     		mov	r0, r4
 1806 0054 1370     		strb	r3, [r2]
 1807 0056 03B0     		add	sp, sp, #12
 1808              		@ sp needed
 1809 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1810              	.L365:
 1811              		.align	2
 1812              	.L364:
 1813 005c 00000000 		.word	.LC10
 1814              		.size	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, .-_ZN11GCodeBuffer16TryGetFloatArray
 1815              		.section	.text._ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb,"ax",%progbits
 1816              		.align	1
 1817              		.p2align 2,,3
 1818              		.global	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 1819              		.syntax unified
 1820              		.thumb
 1821              		.thumb_func
 1822              		.fpu fpv4-sp-d16
 1823              		.type	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, %function
 1824              	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb:
ARM GAS  /tmp/ccwFUzuL.s 			page 33


 1825              		@ args = 0, pretend = 0, frame = 0
 1826              		@ frame_needed = 0, uses_anonymous_args = 0
 1827 0000 70B5     		push	{r4, r5, r6, lr}
 1828 0002 1546     		mov	r5, r2
 1829 0004 1E46     		mov	r6, r3
 1830 0006 0446     		mov	r4, r0
 1831 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1832 000c 08B9     		cbnz	r0, .L367
 1833              	.L369:
 1834 000e 0020     		movs	r0, #0
 1835 0010 70BD     		pop	{r4, r5, r6, pc}
 1836              	.L367:
 1837 0012 2946     		mov	r1, r5
 1838 0014 2046     		mov	r0, r4
 1839 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1840 001a 0028     		cmp	r0, #0
 1841 001c F7D0     		beq	.L369
 1842 001e 0123     		movs	r3, #1
 1843 0020 3370     		strb	r3, [r6]
 1844 0022 70BD     		pop	{r4, r5, r6, pc}
 1845              		.size	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer18TryGetQuotedString
 1846              		.section	.text._ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb,"ax",%progbits
 1847              		.align	1
 1848              		.p2align 2,,3
 1849              		.global	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 1850              		.syntax unified
 1851              		.thumb
 1852              		.thumb_func
 1853              		.fpu fpv4-sp-d16
 1854              		.type	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, %function
 1855              	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb:
 1856              		@ args = 0, pretend = 0, frame = 0
 1857              		@ frame_needed = 0, uses_anonymous_args = 0
 1858 0000 70B5     		push	{r4, r5, r6, lr}
 1859 0002 1546     		mov	r5, r2
 1860 0004 1E46     		mov	r6, r3
 1861 0006 0446     		mov	r4, r0
 1862 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1863 000c 08B9     		cbnz	r0, .L375
 1864              	.L377:
 1865 000e 0020     		movs	r0, #0
 1866 0010 70BD     		pop	{r4, r5, r6, pc}
 1867              	.L375:
 1868 0012 2946     		mov	r1, r5
 1869 0014 2046     		mov	r0, r4
 1870 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 1871 001a 0028     		cmp	r0, #0
 1872 001c F7D0     		beq	.L377
 1873 001e 0123     		movs	r3, #1
 1874 0020 3370     		strb	r3, [r6]
 1875 0022 70BD     		pop	{r4, r5, r6, pc}
 1876              		.size	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer26TryGetPoss
 1877              		.section	.text._ZN11GCodeBuffer12GetIPAddressEPh,"ax",%progbits
 1878              		.align	1
 1879              		.p2align 2,,3
 1880              		.global	_ZN11GCodeBuffer12GetIPAddressEPh
 1881              		.syntax unified
ARM GAS  /tmp/ccwFUzuL.s 			page 34


 1882              		.thumb
 1883              		.thumb_func
 1884              		.fpu fpv4-sp-d16
 1885              		.type	_ZN11GCodeBuffer12GetIPAddressEPh, %function
 1886              	_ZN11GCodeBuffer12GetIPAddressEPh:
 1887              		@ args = 0, pretend = 0, frame = 8
 1888              		@ frame_needed = 0, uses_anonymous_args = 0
 1889 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1890 0002 446A     		ldr	r4, [r0, #36]
 1891 0004 002C     		cmp	r4, #0
 1892 0006 83B0     		sub	sp, sp, #12
 1893 0008 1FDB     		blt	.L393
 1894 000a 4E34     		adds	r4, r4, #78
 1895 000c 0746     		mov	r7, r0
 1896 000e 0444     		add	r4, r4, r0
 1897 0010 4E1E     		subs	r6, r1, #1
 1898 0012 0025     		movs	r5, #0
 1899              	.L388:
 1900 0014 0A22     		movs	r2, #10
 1901 0016 01A9     		add	r1, sp, #4
 1902 0018 2046     		mov	r0, r4
 1903 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1904 001e 019B     		ldr	r3, [sp, #4]
 1905 0020 A342     		cmp	r3, r4
 1906 0022 05F10105 		add	r5, r5, #1
 1907 0026 0AD0     		beq	.L385
 1908 0028 FF28     		cmp	r0, #255
 1909 002a 08D8     		bhi	.L385
 1910 002c 06F8010F 		strb	r0, [r6, #1]!
 1911 0030 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1912 0032 2E2A     		cmp	r2, #46
 1913 0034 13D1     		bne	.L387
 1914 0036 042D     		cmp	r5, #4
 1915 0038 01D0     		beq	.L385
 1916 003a 5C1C     		adds	r4, r3, #1
 1917 003c EAE7     		b	.L388
 1918              	.L385:
 1919 003e 4FF0FF33 		mov	r3, #-1
 1920 0042 7B62     		str	r3, [r7, #36]
 1921 0044 0020     		movs	r0, #0
 1922              	.L384:
 1923 0046 03B0     		add	sp, sp, #12
 1924              		@ sp needed
 1925 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1926              	.L393:
 1927 004a 40F26333 		movw	r3, #867
 1928 004e 084A     		ldr	r2, .L394
 1929 0050 0849     		ldr	r1, .L394+4
 1930 0052 0948     		ldr	r0, .L394+8
 1931 0054 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1932 0058 0020     		movs	r0, #0
 1933 005a 03B0     		add	sp, sp, #12
 1934              		@ sp needed
 1935 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 1936              	.L387:
 1937 005e A5F10400 		sub	r0, r5, #4
 1938 0062 4FF0FF33 		mov	r3, #-1
ARM GAS  /tmp/ccwFUzuL.s 			page 35


 1939 0066 B0FA80F0 		clz	r0, r0
 1940 006a 4009     		lsrs	r0, r0, #5
 1941 006c 7B62     		str	r3, [r7, #36]
 1942 006e EAE7     		b	.L384
 1943              	.L395:
 1944              		.align	2
 1945              	.L394:
 1946 0070 00000000 		.word	.LANCHOR9
 1947 0074 00000000 		.word	.LC6
 1948 0078 00000000 		.word	reprap
 1949              		.size	_ZN11GCodeBuffer12GetIPAddressEPh, .-_ZN11GCodeBuffer12GetIPAddressEPh
 1950              		.section	.text._ZN11GCodeBuffer12GetIPAddressERm,"ax",%progbits
 1951              		.align	1
 1952              		.p2align 2,,3
 1953              		.global	_ZN11GCodeBuffer12GetIPAddressERm
 1954              		.syntax unified
 1955              		.thumb
 1956              		.thumb_func
 1957              		.fpu fpv4-sp-d16
 1958              		.type	_ZN11GCodeBuffer12GetIPAddressERm, %function
 1959              	_ZN11GCodeBuffer12GetIPAddressERm:
 1960              		@ args = 0, pretend = 0, frame = 8
 1961              		@ frame_needed = 0, uses_anonymous_args = 0
 1962 0000 10B5     		push	{r4, lr}
 1963 0002 436A     		ldr	r3, [r0, #36]
 1964 0004 002B     		cmp	r3, #0
 1965 0006 82B0     		sub	sp, sp, #8
 1966 0008 09DB     		blt	.L403
 1967 000a 0C46     		mov	r4, r1
 1968 000c 01A9     		add	r1, sp, #4
 1969 000e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 1970 0012 10B1     		cbz	r0, .L398
 1971 0014 019B     		ldr	r3, [sp, #4]
 1972 0016 2360     		str	r3, [r4]
 1973 0018 0120     		movs	r0, #1
 1974              	.L398:
 1975 001a 02B0     		add	sp, sp, #8
 1976              		@ sp needed
 1977 001c 10BD     		pop	{r4, pc}
 1978              	.L403:
 1979 001e 40F28933 		movw	r3, #905
 1980 0022 044A     		ldr	r2, .L404
 1981 0024 0449     		ldr	r1, .L404+4
 1982 0026 0548     		ldr	r0, .L404+8
 1983 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1984 002c 0020     		movs	r0, #0
 1985 002e 02B0     		add	sp, sp, #8
 1986              		@ sp needed
 1987 0030 10BD     		pop	{r4, pc}
 1988              	.L405:
 1989 0032 00BF     		.align	2
 1990              	.L404:
 1991 0034 00000000 		.word	.LANCHOR10
 1992 0038 00000000 		.word	.LC6
 1993 003c 00000000 		.word	reprap
 1994              		.size	_ZN11GCodeBuffer12GetIPAddressERm, .-_ZN11GCodeBuffer12GetIPAddressERm
 1995              		.section	.text._ZN11GCodeBuffer13GetMacAddressEPh,"ax",%progbits
ARM GAS  /tmp/ccwFUzuL.s 			page 36


 1996              		.align	1
 1997              		.p2align 2,,3
 1998              		.global	_ZN11GCodeBuffer13GetMacAddressEPh
 1999              		.syntax unified
 2000              		.thumb
 2001              		.thumb_func
 2002              		.fpu fpv4-sp-d16
 2003              		.type	_ZN11GCodeBuffer13GetMacAddressEPh, %function
 2004              	_ZN11GCodeBuffer13GetMacAddressEPh:
 2005              		@ args = 0, pretend = 0, frame = 8
 2006              		@ frame_needed = 0, uses_anonymous_args = 0
 2007 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2008 0002 446A     		ldr	r4, [r0, #36]
 2009 0004 002C     		cmp	r4, #0
 2010 0006 83B0     		sub	sp, sp, #12
 2011 0008 1FDB     		blt	.L417
 2012 000a 0444     		add	r4, r4, r0
 2013 000c 0646     		mov	r6, r0
 2014 000e 4E34     		adds	r4, r4, #78
 2015 0010 4F1E     		subs	r7, r1, #1
 2016 0012 0025     		movs	r5, #0
 2017              	.L412:
 2018 0014 1022     		movs	r2, #16
 2019 0016 01A9     		add	r1, sp, #4
 2020 0018 2046     		mov	r0, r4
 2021 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 2022 001e 019B     		ldr	r3, [sp, #4]
 2023 0020 A342     		cmp	r3, r4
 2024 0022 05F10105 		add	r5, r5, #1
 2025 0026 0AD0     		beq	.L409
 2026 0028 FF28     		cmp	r0, #255
 2027 002a 08D8     		bhi	.L409
 2028 002c 07F8010F 		strb	r0, [r7, #1]!
 2029 0030 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2030 0032 3A2A     		cmp	r2, #58
 2031 0034 13D1     		bne	.L411
 2032 0036 062D     		cmp	r5, #6
 2033 0038 01D0     		beq	.L409
 2034 003a 5C1C     		adds	r4, r3, #1
 2035 003c EAE7     		b	.L412
 2036              	.L409:
 2037 003e 4FF0FF33 		mov	r3, #-1
 2038 0042 0020     		movs	r0, #0
 2039 0044 7362     		str	r3, [r6, #36]
 2040 0046 03B0     		add	sp, sp, #12
 2041              		@ sp needed
 2042 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 2043              	.L417:
 2044 004a 40F29B33 		movw	r3, #923
 2045 004e 094A     		ldr	r2, .L418
 2046 0050 0949     		ldr	r1, .L418+4
 2047 0052 0A48     		ldr	r0, .L418+8
 2048 0054 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 2049 0058 0020     		movs	r0, #0
 2050 005a 03B0     		add	sp, sp, #12
 2051              		@ sp needed
 2052 005c F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccwFUzuL.s 			page 37


 2053              	.L411:
 2054 005e A5F10600 		sub	r0, r5, #6
 2055 0062 B0FA80F0 		clz	r0, r0
 2056 0066 4FF0FF33 		mov	r3, #-1
 2057 006a 4009     		lsrs	r0, r0, #5
 2058 006c 7362     		str	r3, [r6, #36]
 2059 006e 03B0     		add	sp, sp, #12
 2060              		@ sp needed
 2061 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2062              	.L419:
 2063 0072 00BF     		.align	2
 2064              	.L418:
 2065 0074 00000000 		.word	.LANCHOR11
 2066 0078 00000000 		.word	.LC6
 2067 007c 00000000 		.word	reprap
 2068              		.size	_ZN11GCodeBuffer13GetMacAddressEPh, .-_ZN11GCodeBuffer13GetMacAddressEPh
 2069              		.section	.text._ZNK11GCodeBuffer20OriginalMachineStateEv,"ax",%progbits
 2070              		.align	1
 2071              		.p2align 2,,3
 2072              		.global	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2073              		.syntax unified
 2074              		.thumb
 2075              		.thumb_func
 2076              		.fpu fpv4-sp-d16
 2077              		.type	_ZNK11GCodeBuffer20OriginalMachineStateEv, %function
 2078              	_ZNK11GCodeBuffer20OriginalMachineStateEv:
 2079              		@ args = 0, pretend = 0, frame = 0
 2080              		@ frame_needed = 0, uses_anonymous_args = 0
 2081              		@ link register save eliminated.
 2082 0000 8068     		ldr	r0, [r0, #8]
 2083 0002 00E0     		b	.L421
 2084              	.L422:
 2085 0004 1846     		mov	r0, r3
 2086              	.L421:
 2087 0006 0368     		ldr	r3, [r0]
 2088 0008 002B     		cmp	r3, #0
 2089 000a FBD1     		bne	.L422
 2090 000c 7047     		bx	lr
 2091              		.size	_ZNK11GCodeBuffer20OriginalMachineStateEv, .-_ZNK11GCodeBuffer20OriginalMachineStateEv
 2092 000e 00BF     		.section	.text._ZN11GCodeBuffer9PushStateEv,"ax",%progbits
 2093              		.align	1
 2094              		.p2align 2,,3
 2095              		.global	_ZN11GCodeBuffer9PushStateEv
 2096              		.syntax unified
 2097              		.thumb
 2098              		.thumb_func
 2099              		.fpu fpv4-sp-d16
 2100              		.type	_ZN11GCodeBuffer9PushStateEv, %function
 2101              	_ZN11GCodeBuffer9PushStateEv:
 2102              		@ args = 0, pretend = 0, frame = 0
 2103              		@ frame_needed = 0, uses_anonymous_args = 0
 2104 0000 8368     		ldr	r3, [r0, #8]
 2105 0002 43B1     		cbz	r3, .L424
 2106 0004 0022     		movs	r2, #0
 2107              	.L425:
 2108 0006 1B68     		ldr	r3, [r3]
 2109 0008 0132     		adds	r2, r2, #1
ARM GAS  /tmp/ccwFUzuL.s 			page 38


 2110 000a 002B     		cmp	r3, #0
 2111 000c FBD1     		bne	.L425
 2112 000e 052A     		cmp	r2, #5
 2113 0010 01D9     		bls	.L424
 2114 0012 1846     		mov	r0, r3
 2115 0014 7047     		bx	lr
 2116              	.L424:
 2117 0016 70B5     		push	{r4, r5, r6, lr}
 2118 0018 0546     		mov	r5, r0
 2119 001a FFF7FEFF 		bl	_ZN17GCodeMachineState8AllocateEv
 2120 001e AB68     		ldr	r3, [r5, #8]
 2121 0020 0360     		str	r3, [r0]
 2122 0022 AB68     		ldr	r3, [r5, #8]
 2123 0024 0446     		mov	r4, r0
 2124 0026 5B68     		ldr	r3, [r3, #4]	@ float
 2125 0028 8068     		ldr	r0, [r0, #8]
 2126 002a 6360     		str	r3, [r4, #4]	@ float
 2127 002c AE68     		ldr	r6, [r5, #8]
 2128 002e 18B1     		cbz	r0, .L427
 2129 0030 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2130 0034 0023     		movs	r3, #0
 2131 0036 A360     		str	r3, [r4, #8]
 2132              	.L427:
 2133 0038 B068     		ldr	r0, [r6, #8]
 2134 003a A060     		str	r0, [r4, #8]
 2135 003c 08B1     		cbz	r0, .L428
 2136 003e FFF7FEFF 		bl	_ZN9FileStore9DuplicateEv
 2137              	.L428:
 2138 0042 AB68     		ldr	r3, [r5, #8]
 2139 0044 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 2140 0046 DB68     		ldr	r3, [r3, #12]
 2141 0048 E360     		str	r3, [r4, #12]
 2142 004a A968     		ldr	r1, [r5, #8]
 2143 004c 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 2144 004e 097E     		ldrb	r1, [r1, #24]	@ zero_extendqisi2
 2145 0050 61F30002 		bfi	r2, r1, #0, #1
 2146 0054 2276     		strb	r2, [r4, #24]
 2147 0056 AA68     		ldr	r2, [r5, #8]
 2148 0058 217E     		ldrb	r1, [r4, #24]	@ zero_extendqisi2
 2149 005a 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 2150 005c C2F34002 		ubfx	r2, r2, #1, #1
 2151 0060 62F34101 		bfi	r1, r2, #1, #1
 2152 0064 2176     		strb	r1, [r4, #24]
 2153 0066 AA68     		ldr	r2, [r5, #8]
 2154 0068 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 2155 006a C9B2     		uxtb	r1, r1
 2156 006c C2F38002 		ubfx	r2, r2, #2, #1
 2157 0070 62F38201 		bfi	r1, r2, #2, #1
 2158 0074 2176     		strb	r1, [r4, #24]
 2159 0076 AA68     		ldr	r2, [r5, #8]
 2160 0078 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 2161 007a C9B2     		uxtb	r1, r1
 2162 007c C2F3C002 		ubfx	r2, r2, #3, #1
 2163 0080 62F3C301 		bfi	r1, r2, #3, #1
 2164 0084 2176     		strb	r1, [r4, #24]
 2165 0086 AA68     		ldr	r2, [r5, #8]
 2166 0088 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
ARM GAS  /tmp/ccwFUzuL.s 			page 39


 2167 008a C9B2     		uxtb	r1, r1
 2168 008c C2F30012 		ubfx	r2, r2, #4, #1
 2169 0090 62F30411 		bfi	r1, r2, #4, #1
 2170 0094 2176     		strb	r1, [r4, #24]
 2171 0096 A968     		ldr	r1, [r5, #8]
 2172 0098 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 2173 009a 097E     		ldrb	r1, [r1, #24]	@ zero_extendqisi2
 2174 009c C1F34011 		ubfx	r1, r1, #5, #1
 2175 00a0 61F34512 		bfi	r2, r1, #5, #1
 2176 00a4 02F0BF02 		and	r2, r2, #191
 2177 00a8 6FF3C712 		bfc	r2, #7, #1
 2178 00ac 2276     		strb	r2, [r4, #24]
 2179 00ae AA68     		ldr	r2, [r5, #8]
 2180 00b0 128B     		ldrh	r2, [r2, #24]
 2181 00b2 02F4C072 		and	r2, r2, #384
 2182 00b6 0032     		adds	r2, r2, #0
 2183 00b8 18BF     		it	ne
 2184 00ba 0122     		movne	r2, #1
 2185 00bc 62F30003 		bfi	r3, r2, #0, #1
 2186 00c0 03F0FB03 		and	r3, r3, #251
 2187 00c4 6FF34103 		bfc	r3, #1, #1
 2188 00c8 6376     		strb	r3, [r4, #25]
 2189 00ca AC60     		str	r4, [r5, #8]
 2190 00cc 0120     		movs	r0, #1
 2191 00ce 70BD     		pop	{r4, r5, r6, pc}
 2192              		.size	_ZN11GCodeBuffer9PushStateEv, .-_ZN11GCodeBuffer9PushStateEv
 2193              		.section	.text._ZN11GCodeBuffer8PopStateEv,"ax",%progbits
 2194              		.align	1
 2195              		.p2align 2,,3
 2196              		.global	_ZN11GCodeBuffer8PopStateEv
 2197              		.syntax unified
 2198              		.thumb
 2199              		.thumb_func
 2200              		.fpu fpv4-sp-d16
 2201              		.type	_ZN11GCodeBuffer8PopStateEv, %function
 2202              	_ZN11GCodeBuffer8PopStateEv:
 2203              		@ args = 0, pretend = 0, frame = 0
 2204              		@ frame_needed = 0, uses_anonymous_args = 0
 2205 0000 08B5     		push	{r3, lr}
 2206 0002 8168     		ldr	r1, [r0, #8]
 2207 0004 0B68     		ldr	r3, [r1]
 2208 0006 2BB1     		cbz	r3, .L447
 2209 0008 8360     		str	r3, [r0, #8]
 2210 000a 0846     		mov	r0, r1
 2211 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 2212 0010 0120     		movs	r0, #1
 2213 0012 08BD     		pop	{r3, pc}
 2214              	.L447:
 2215 0014 4A7E     		ldrb	r2, [r1, #25]	@ zero_extendqisi2
 2216 0016 63F38202 		bfi	r2, r3, #2, #1
 2217 001a 63F34102 		bfi	r2, r3, #1, #1
 2218 001e 4A76     		strb	r2, [r1, #25]
 2219 0020 1846     		mov	r0, r3
 2220 0022 08BD     		pop	{r3, pc}
 2221              		.size	_ZN11GCodeBuffer8PopStateEv, .-_ZN11GCodeBuffer8PopStateEv
 2222              		.section	.text._ZN11GCodeBuffer9AbortFileEP14FileGCodeInput,"ax",%progbits
 2223              		.align	1
ARM GAS  /tmp/ccwFUzuL.s 			page 40


 2224              		.p2align 2,,3
 2225              		.global	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 2226              		.syntax unified
 2227              		.thumb
 2228              		.thumb_func
 2229              		.fpu fpv4-sp-d16
 2230              		.type	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, %function
 2231              	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput:
 2232              		@ args = 0, pretend = 0, frame = 0
 2233              		@ frame_needed = 0, uses_anonymous_args = 0
 2234 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2235 0002 0546     		mov	r5, r0
 2236 0004 0E46     		mov	r6, r1
 2237 0006 0027     		movs	r7, #0
 2238 0008 02E0     		b	.L451
 2239              	.L450:
 2240 000a AB60     		str	r3, [r5, #8]
 2241 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 2242              	.L451:
 2243 0010 AC68     		ldr	r4, [r5, #8]
 2244 0012 A368     		ldr	r3, [r4, #8]
 2245 0014 3046     		mov	r0, r6
 2246 0016 04F10801 		add	r1, r4, #8
 2247 001a 4BB1     		cbz	r3, .L449
 2248 001c FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2249 0020 AC68     		ldr	r4, [r5, #8]
 2250 0022 A368     		ldr	r3, [r4, #8]
 2251 0024 1846     		mov	r0, r3
 2252 0026 1BB1     		cbz	r3, .L449
 2253 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2254 002c A760     		str	r7, [r4, #8]
 2255 002e AC68     		ldr	r4, [r5, #8]
 2256              	.L449:
 2257 0030 2368     		ldr	r3, [r4]
 2258 0032 2046     		mov	r0, r4
 2259 0034 002B     		cmp	r3, #0
 2260 0036 E8D1     		bne	.L450
 2261 0038 627E     		ldrb	r2, [r4, #25]	@ zero_extendqisi2
 2262 003a 63F38202 		bfi	r2, r3, #2, #1
 2263 003e 63F34102 		bfi	r2, r3, #1, #1
 2264 0042 6276     		strb	r2, [r4, #25]
 2265 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2266              		.size	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, .-_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 2267 0046 00BF     		.section	.text._ZNK11GCodeBuffer16IsDoingFileMacroEv,"ax",%progbits
 2268              		.align	1
 2269              		.p2align 2,,3
 2270              		.global	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2271              		.syntax unified
 2272              		.thumb
 2273              		.thumb_func
 2274              		.fpu fpv4-sp-d16
 2275              		.type	_ZNK11GCodeBuffer16IsDoingFileMacroEv, %function
 2276              	_ZNK11GCodeBuffer16IsDoingFileMacroEv:
 2277              		@ args = 0, pretend = 0, frame = 0
 2278              		@ frame_needed = 0, uses_anonymous_args = 0
 2279              		@ link register save eliminated.
 2280 0000 8368     		ldr	r3, [r0, #8]
ARM GAS  /tmp/ccwFUzuL.s 			page 41


 2281 0002 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2282 0004 C0F38000 		ubfx	r0, r0, #2, #1
 2283 0008 7047     		bx	lr
 2284              		.size	_ZNK11GCodeBuffer16IsDoingFileMacroEv, .-_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2285 000a 00BF     		.section	.text._ZN11GCodeBuffer19MessageAcknowledgedEb,"ax",%progbits
 2286              		.align	1
 2287              		.p2align 2,,3
 2288              		.global	_ZN11GCodeBuffer19MessageAcknowledgedEb
 2289              		.syntax unified
 2290              		.thumb
 2291              		.thumb_func
 2292              		.fpu fpv4-sp-d16
 2293              		.type	_ZN11GCodeBuffer19MessageAcknowledgedEb, %function
 2294              	_ZN11GCodeBuffer19MessageAcknowledgedEb:
 2295              		@ args = 0, pretend = 0, frame = 0
 2296              		@ frame_needed = 0, uses_anonymous_args = 0
 2297              		@ link register save eliminated.
 2298 0000 8268     		ldr	r2, [r0, #8]
 2299 0002 6AB1     		cbz	r2, .L461
 2300              	.L464:
 2301 0004 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 2302 0006 13F0020F 		tst	r3, #2
 2303 000a 03F0FD03 		and	r3, r3, #253
 2304 000e 04D0     		beq	.L463
 2305 0010 43F00403 		orr	r3, r3, #4
 2306 0014 61F3C303 		bfi	r3, r1, #3, #1
 2307 0018 5376     		strb	r3, [r2, #25]
 2308              	.L463:
 2309 001a 1268     		ldr	r2, [r2]
 2310 001c 002A     		cmp	r2, #0
 2311 001e F1D1     		bne	.L464
 2312              	.L461:
 2313 0020 7047     		bx	lr
 2314              		.size	_ZN11GCodeBuffer19MessageAcknowledgedEb, .-_ZN11GCodeBuffer19MessageAcknowledgedEb
 2315 0022 00BF     		.section	.text._ZNK11GCodeBuffer13CanQueueCodesEv,"ax",%progbits
 2316              		.align	1
 2317              		.p2align 2,,3
 2318              		.global	_ZNK11GCodeBuffer13CanQueueCodesEv
 2319              		.syntax unified
 2320              		.thumb
 2321              		.thumb_func
 2322              		.fpu fpv4-sp-d16
 2323              		.type	_ZNK11GCodeBuffer13CanQueueCodesEv, %function
 2324              	_ZNK11GCodeBuffer13CanQueueCodesEv:
 2325              		@ args = 0, pretend = 0, frame = 0
 2326              		@ frame_needed = 0, uses_anonymous_args = 0
 2327              		@ link register save eliminated.
 2328 0000 90F8F030 		ldrb	r3, [r0, #240]	@ zero_extendqisi2
 2329 0004 1BB9     		cbnz	r3, .L473
 2330 0006 8368     		ldr	r3, [r0, #8]
 2331 0008 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2332 000a C3F38003 		ubfx	r3, r3, #2, #1
 2333              	.L473:
 2334 000e 1846     		mov	r0, r3
 2335 0010 7047     		bx	lr
 2336              		.size	_ZNK11GCodeBuffer13CanQueueCodesEv, .-_ZNK11GCodeBuffer13CanQueueCodesEv
 2337 0012 00BF     		.section	.text._ZNK11GCodeBuffer12PrintCommandERK9StringRef,"ax",%progbits
ARM GAS  /tmp/ccwFUzuL.s 			page 42


 2338              		.align	1
 2339              		.p2align 2,,3
 2340              		.global	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 2341              		.syntax unified
 2342              		.thumb
 2343              		.thumb_func
 2344              		.fpu fpv4-sp-d16
 2345              		.type	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, %function
 2346              	_ZNK11GCodeBuffer12PrintCommandERK9StringRef:
 2347              		@ args = 0, pretend = 0, frame = 0
 2348              		@ frame_needed = 0, uses_anonymous_args = 0
 2349 0000 38B5     		push	{r3, r4, r5, lr}
 2350 0002 0446     		mov	r4, r0
 2351 0004 0D46     		mov	r5, r1
 2352 0006 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
 2353 000a 036C     		ldr	r3, [r0, #64]
 2354 000c 0749     		ldr	r1, .L477
 2355 000e 2846     		mov	r0, r5
 2356 0010 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2357 0014 94F9EF20 		ldrsb	r2, [r4, #239]
 2358 0018 002A     		cmp	r2, #0
 2359 001a 05DB     		blt	.L474
 2360 001c 2846     		mov	r0, r5
 2361 001e 0449     		ldr	r1, .L477+4
 2362 0020 BDE83840 		pop	{r3, r4, r5, lr}
 2363 0024 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 2364              	.L474:
 2365 0028 38BD     		pop	{r3, r4, r5, pc}
 2366              	.L478:
 2367 002a 00BF     		.align	2
 2368              	.L477:
 2369 002c 00000000 		.word	.LC11
 2370 0030 08000000 		.word	.LC12
 2371              		.size	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, .-_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 2372              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 2373              		.align	1
 2374              		.p2align 2,,3
 2375              		.weak	_ZN6StringILj220EE6printfEPKcz
 2376              		.syntax unified
 2377              		.thumb
 2378              		.thumb_func
 2379              		.fpu fpv4-sp-d16
 2380              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 2381              	_ZN6StringILj220EE6printfEPKcz:
 2382              		@ args = 4, pretend = 12, frame = 16
 2383              		@ frame_needed = 0, uses_anonymous_args = 1
 2384 0000 0EB4     		push	{r1, r2, r3}
 2385 0002 00B5     		push	{lr}
 2386 0004 84B0     		sub	sp, sp, #16
 2387 0006 05AA     		add	r2, sp, #20
 2388 0008 0290     		str	r0, [sp, #8]
 2389 000a 52F8041B 		ldr	r1, [r2], #4
 2390 000e 0192     		str	r2, [sp, #4]
 2391 0010 DD23     		movs	r3, #221
 2392 0012 02A8     		add	r0, sp, #8
 2393 0014 0393     		str	r3, [sp, #12]
 2394 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
ARM GAS  /tmp/ccwFUzuL.s 			page 43


 2395 001a 04B0     		add	sp, sp, #16
 2396              		@ sp needed
 2397 001c 5DF804EB 		ldr	lr, [sp], #4
 2398 0020 03B0     		add	sp, sp, #12
 2399 0022 7047     		bx	lr
 2400              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 2401              		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 2402              		.align	1
 2403              		.p2align 2,,3
 2404              		.weak	_ZN6StringILj220EE4catfEPKcz
 2405              		.syntax unified
 2406              		.thumb
 2407              		.thumb_func
 2408              		.fpu fpv4-sp-d16
 2409              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 2410              	_ZN6StringILj220EE4catfEPKcz:
 2411              		@ args = 4, pretend = 12, frame = 16
 2412              		@ frame_needed = 0, uses_anonymous_args = 1
 2413 0000 0EB4     		push	{r1, r2, r3}
 2414 0002 00B5     		push	{lr}
 2415 0004 84B0     		sub	sp, sp, #16
 2416 0006 05AA     		add	r2, sp, #20
 2417 0008 0290     		str	r0, [sp, #8]
 2418 000a 52F8041B 		ldr	r1, [r2], #4
 2419 000e 0192     		str	r2, [sp, #4]
 2420 0010 DD23     		movs	r3, #221
 2421 0012 02A8     		add	r0, sp, #8
 2422 0014 0393     		str	r3, [sp, #12]
 2423 0016 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 2424 001a 04B0     		add	sp, sp, #16
 2425              		@ sp needed
 2426 001c 5DF804EB 		ldr	lr, [sp], #4
 2427 0020 03B0     		add	sp, sp, #12
 2428 0022 7047     		bx	lr
 2429              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 2430              		.section	.text._ZN11GCodeBuffer11DiagnosticsE11MessageType,"ax",%progbits
 2431              		.align	1
 2432              		.p2align 2,,3
 2433              		.global	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 2434              		.syntax unified
 2435              		.thumb
 2436              		.thumb_func
 2437              		.fpu fpv4-sp-d16
 2438              		.type	_ZN11GCodeBuffer11DiagnosticsE11MessageType, %function
 2439              	_ZN11GCodeBuffer11DiagnosticsE11MessageType:
 2440              		@ args = 0, pretend = 0, frame = 232
 2441              		@ frame_needed = 0, uses_anonymous_args = 0
 2442 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2443 0002 0446     		mov	r4, r0
 2444 0004 BBB0     		sub	sp, sp, #236
 2445 0006 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 2446 000a E268     		ldr	r2, [r4, #12]
 2447 000c 0020     		movs	r0, #0
 2448 000e 02AD     		add	r5, sp, #8
 2449 0010 082B     		cmp	r3, #8
 2450 0012 8DF80800 		strb	r0, [sp, #8]
 2451 0016 0F46     		mov	r7, r1
ARM GAS  /tmp/ccwFUzuL.s 			page 44


 2452 0018 2846     		mov	r0, r5
 2453 001a 2FD0     		beq	.L485
 2454 001c 092B     		cmp	r3, #9
 2455 001e 27D0     		beq	.L486
 2456 0020 13B3     		cbz	r3, .L493
 2457 0022 1949     		ldr	r1, .L494
 2458 0024 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2459              	.L488:
 2460 0028 DD23     		movs	r3, #221
 2461 002a 6846     		mov	r0, sp
 2462 002c 1749     		ldr	r1, .L494+4
 2463 002e 184E     		ldr	r6, .L494+8
 2464 0030 CDE90053 		strd	r5, r3, [sp]
 2465 0034 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2466 0038 A468     		ldr	r4, [r4, #8]
 2467              	.L489:
 2468 003a 227D     		ldrb	r2, [r4, #20]	@ zero_extendqisi2
 2469 003c 3146     		mov	r1, r6
 2470 003e 2846     		mov	r0, r5
 2471 0040 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 2472 0044 2468     		ldr	r4, [r4]
 2473 0046 002C     		cmp	r4, #0
 2474 0048 F7D1     		bne	.L489
 2475 004a DD23     		movs	r3, #221
 2476 004c 6846     		mov	r0, sp
 2477 004e 0A21     		movs	r1, #10
 2478 0050 CDE90053 		strd	r5, r3, [sp]
 2479 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2480 0058 0E4B     		ldr	r3, .L494+12
 2481 005a 2A46     		mov	r2, r5
 2482 005c 3946     		mov	r1, r7
 2483 005e 1868     		ldr	r0, [r3]
 2484 0060 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2485 0064 3BB0     		add	sp, sp, #236
 2486              		@ sp needed
 2487 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 2488              	.L493:
 2489 0068 0B49     		ldr	r1, .L494+16
 2490 006a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2491 006e DBE7     		b	.L488
 2492              	.L486:
 2493 0070 04F14D03 		add	r3, r4, #77
 2494 0074 0949     		ldr	r1, .L494+20
 2495 0076 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2496 007a D5E7     		b	.L488
 2497              	.L485:
 2498 007c 04F14D03 		add	r3, r4, #77
 2499 0080 0749     		ldr	r1, .L494+24
 2500 0082 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2501 0086 CFE7     		b	.L488
 2502              	.L495:
 2503              		.align	2
 2504              	.L494:
 2505 0088 38000000 		.word	.LC16
 2506 008c 54000000 		.word	.LC17
 2507 0090 64000000 		.word	.LC18
 2508 0094 00000000 		.word	reprap
ARM GAS  /tmp/ccwFUzuL.s 			page 45


 2509 0098 00000000 		.word	.LC13
 2510 009c 24000000 		.word	.LC15
 2511 00a0 0C000000 		.word	.LC14
 2512              		.size	_ZN11GCodeBuffer11DiagnosticsE11MessageType, .-_ZN11GCodeBuffer11DiagnosticsE11MessageType
 2513              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2514              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2515              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2516              	_ZL28cpu_irq_prev_interrupt_state:
 2517 0000 00       		.space	1
 2518              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2519              		.align	2
 2520              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2521              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2522              	_ZL32cpu_irq_critical_section_counter:
 2523 0000 00000000 		.space	4
 2524              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2525              		.align	2
 2526              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2527              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2528              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2529 0000 00000000 		.space	4
 2530              		.section	.rodata._ZN11GCodeBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 2531              		.align	2
 2532              	.LC13:
 2533 0000 25732069 		.ascii	"%s is idle\000"
 2533      73206964 
 2533      6C6500
 2534 000b 00       		.space	1
 2535              	.LC14:
 2536 000c 25732069 		.ascii	"%s is ready with \"%s\"\000"
 2536      73207265 
 2536      61647920 
 2536      77697468 
 2536      20222573 
 2537 0022 0000     		.space	2
 2538              	.LC15:
 2539 0024 25732069 		.ascii	"%s is doing \"%s\"\000"
 2539      7320646F 
 2539      696E6720 
 2539      22257322 
 2539      00
 2540 0035 000000   		.space	3
 2541              	.LC16:
 2542 0038 25732069 		.ascii	"%s is assembling a command\000"
 2542      73206173 
 2542      73656D62 
 2542      6C696E67 
 2542      20612063 
 2543 0053 00       		.space	1
 2544              	.LC17:
 2545 0054 20696E20 		.ascii	" in state(s)\000"
 2545      73746174 
 2545      65287329 
 2545      00
 2546 0061 000000   		.space	3
 2547              	.LC18:
 2548 0064 20256400 		.ascii	" %d\000"
ARM GAS  /tmp/ccwFUzuL.s 			page 46


 2549              		.section	.rodata._ZN11GCodeBuffer11GetIntArrayEPlRjb.str1.4,"aMS",%progbits,1
 2550              		.align	2
 2551              	.LC8:
 2552 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode int array that is t"
 2552      65733A20 
 2552      41747465 
 2552      6D707420 
 2552      746F2072 
 2553 0033 6F6F206C 		.ascii	"oo long: %s\012\000"
 2553      6F6E673A 
 2553      2025730A 
 2553      00
 2554              		.section	.rodata._ZN11GCodeBuffer12LineFinishedEv.str1.4,"aMS",%progbits,1
 2555              		.align	2
 2556              	.LC0:
 2557 0000 472D436F 		.ascii	"G-Code buffer '%s' length overflow\012\000"
 2557      64652062 
 2557      75666665 
 2557      72202725 
 2557      7327206C 
 2558              	.LC1:
 2559 0024 25732573 		.ascii	"%s%s: %s\012\000"
 2559      3A202573 
 2559      0A00
 2560 002e 0000     		.space	2
 2561              	.LC2:
 2562 0030 00       		.ascii	"\000"
 2563 0031 000000   		.space	3
 2564              	.LC3:
 2565 0034 28626164 		.ascii	"(bad-csum)\000"
 2565      2D637375 
 2565      6D2900
 2566 003f 00       		.space	1
 2567              	.LC4:
 2568 0040 286E6F2D 		.ascii	"(no-csum)\000"
 2568      6373756D 
 2568      2900
 2569 004a 0000     		.space	2
 2570              	.LC5:
 2571 004c 4D393938 		.ascii	"M998 P%u\000"
 2571      20502575 
 2571      00
 2572              		.section	.rodata._ZN11GCodeBuffer13GetFloatArrayEPfRjb.str1.4,"aMS",%progbits,1
 2573              		.align	2
 2574              	.LC7:
 2575 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode float array that is"
 2575      65733A20 
 2575      41747465 
 2575      6D707420 
 2575      746F2072 
 2576 0033 20746F6F 		.ascii	" too long: %s\012\000"
 2576      206C6F6E 
 2576      673A2025 
 2576      730A00
 2577              		.section	.rodata._ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb.str1.4,"aMS",%progbits,1
 2578              		.align	2
 2579              	.LC10:
ARM GAS  /tmp/ccwFUzuL.s 			page 47


 2580 0000 57726F6E 		.ascii	"Wrong number of values after '''%c''', expected %d\000"
 2580      67206E75 
 2580      6D626572 
 2580      206F6620 
 2580      76616C75 
 2581              		.section	.rodata._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb.str1.4,"aMS",%progbits,1
 2582              		.align	2
 2583              	.LC9:
 2584 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode unsigned array that"
 2584      65733A20 
 2584      41747465 
 2584      6D707420 
 2584      746F2072 
 2585 0033 20697320 		.ascii	" is too long: %s\012\000"
 2585      746F6F20 
 2585      6C6F6E67 
 2585      3A202573 
 2585      0A00
 2586              		.section	.rodata._ZN11GCodeBuffer9GetFValueEv.str1.4,"aMS",%progbits,1
 2587              		.align	2
 2588              	.LC6:
 2589 0000 2E2E2F73 		.ascii	"../src/GCodes/GCodeBuffer.cpp\000"
 2589      72632F47 
 2589      436F6465 
 2589      732F4743 
 2589      6F646542 
 2590              		.section	.rodata._ZNK11GCodeBuffer12PrintCommandERK9StringRef.str1.4,"aMS",%progbits,1
 2591              		.align	2
 2592              	.LC11:
 2593 0000 25632564 		.ascii	"%c%d\000"
 2593      00
 2594 0005 000000   		.space	3
 2595              	.LC12:
 2596 0008 2E256400 		.ascii	".%d\000"
 2597              		.section	.rodata._ZZN11GCodeBuffer10GetUIValueEvE8__func__,"a",%progbits
 2598              		.align	2
 2599              		.set	.LANCHOR8,. + 0
 2600              		.type	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, %object
 2601              		.size	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, 11
 2602              	_ZZN11GCodeBuffer10GetUIValueEvE8__func__:
 2603 0000 47657455 		.ascii	"GetUIValue\000"
 2603      4956616C 
 2603      756500
 2604              		.section	.rodata._ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__,"a",%progbits
 2605              		.align	2
 2606              		.set	.LANCHOR2,. + 0
 2607              		.type	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, %object
 2608              		.size	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, 12
 2609              	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__:
 2610 0000 47657449 		.ascii	"GetIntArray\000"
 2610      6E744172 
 2610      72617900 
 2611              		.section	.rodata._ZZN11GCodeBuffer12GetIPAddressEPhE8__func__,"a",%progbits
 2612              		.align	2
 2613              		.set	.LANCHOR9,. + 0
 2614              		.type	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__, %object
 2615              		.size	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__, 13
ARM GAS  /tmp/ccwFUzuL.s 			page 48


 2616              	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__:
 2617 0000 47657449 		.ascii	"GetIPAddress\000"
 2617      50416464 
 2617      72657373 
 2617      00
 2618              		.section	.rodata._ZZN11GCodeBuffer12GetIPAddressERmE8__func__,"a",%progbits
 2619              		.align	2
 2620              		.set	.LANCHOR10,. + 0
 2621              		.type	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__, %object
 2622              		.size	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__, 13
 2623              	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__:
 2624 0000 47657449 		.ascii	"GetIPAddress\000"
 2624      50416464 
 2624      72657373 
 2624      00
 2625              		.section	.rodata._ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__,"a",%progbits
 2626              		.align	2
 2627              		.set	.LANCHOR1,. + 0
 2628              		.type	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, %object
 2629              		.size	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, 14
 2630              	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__:
 2631 0000 47657446 		.ascii	"GetFloatArray\000"
 2631      6C6F6174 
 2631      41727261 
 2631      7900
 2632              		.section	.rodata._ZZN11GCodeBuffer13GetMacAddressEPhE8__func__,"a",%progbits
 2633              		.align	2
 2634              		.set	.LANCHOR11,. + 0
 2635              		.type	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, %object
 2636              		.size	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, 14
 2637              	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__:
 2638 0000 4765744D 		.ascii	"GetMacAddress\000"
 2638      61634164 
 2638      64726573 
 2638      7300
 2639              		.section	.rodata._ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__,"a",%progbits
 2640              		.align	2
 2641              		.set	.LANCHOR4,. + 0
 2642              		.type	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, %object
 2643              		.size	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, 16
 2644              	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__:
 2645 0000 47657451 		.ascii	"GetQuotedString\000"
 2645      756F7465 
 2645      64537472 
 2645      696E6700 
 2646              		.section	.rodata._ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__,"a",%progbits
 2647              		.align	2
 2648              		.set	.LANCHOR3,. + 0
 2649              		.type	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, %object
 2650              		.size	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, 17
 2651              	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__:
 2652 0000 47657455 		.ascii	"GetUnsignedArray\000"
 2652      6E736967 
 2652      6E656441 
 2652      72726179 
 2652      00
 2653              		.section	.rodata._ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__,"a",%progbits
ARM GAS  /tmp/ccwFUzuL.s 			page 49


 2654              		.align	2
 2655              		.set	.LANCHOR7,. + 0
 2656              		.type	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__, %object
 2657              		.size	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__, 19
 2658              	_ZZN11GCodeBuffer18GetUIValueMaybeHexEvE8__func__:
 2659 0000 47657455 		.ascii	"GetUIValueMaybeHex\000"
 2659      4956616C 
 2659      75654D61 
 2659      79626548 
 2659      657800
 2660              		.section	.rodata._ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__,"a",%progbits
 2661              		.align	2
 2662              		.set	.LANCHOR5,. + 0
 2663              		.type	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, %object
 2664              		.size	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, 24
 2665              	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__:
 2666 0000 47657450 		.ascii	"GetPossiblyQuotedString\000"
 2666      6F737369 
 2666      626C7951 
 2666      756F7465 
 2666      64537472 
 2667              		.section	.rodata._ZZN11GCodeBuffer9GetFValueEvE8__func__,"a",%progbits
 2668              		.align	2
 2669              		.set	.LANCHOR0,. + 0
 2670              		.type	_ZZN11GCodeBuffer9GetFValueEvE8__func__, %object
 2671              		.size	_ZZN11GCodeBuffer9GetFValueEvE8__func__, 10
 2672              	_ZZN11GCodeBuffer9GetFValueEvE8__func__:
 2673 0000 47657446 		.ascii	"GetFValue\000"
 2673      56616C75 
 2673      6500
 2674              		.section	.rodata._ZZN11GCodeBuffer9GetIValueEvE8__func__,"a",%progbits
 2675              		.align	2
 2676              		.set	.LANCHOR6,. + 0
 2677              		.type	_ZZN11GCodeBuffer9GetIValueEvE8__func__, %object
 2678              		.size	_ZZN11GCodeBuffer9GetIValueEvE8__func__, 10
 2679              	_ZZN11GCodeBuffer9GetIValueEvE8__func__:
 2680 0000 47657449 		.ascii	"GetIValue\000"
 2680      56616C75 
 2680      6500
 2681              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
