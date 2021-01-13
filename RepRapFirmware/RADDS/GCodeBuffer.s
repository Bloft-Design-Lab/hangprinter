ARM GAS  /tmp/ccgspWsN.s 			page 1


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
  11              		.file	"GCodeBuffer.cpp"
  12              		.section	.text._ZN11GCodeBufferC2EPKc11MessageTypeb,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN11GCodeBufferC2EPKc11MessageTypeb
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN11GCodeBufferC2EPKc11MessageTypeb, %function
  21              	_ZN11GCodeBufferC2EPKc11MessageTypeb:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  25 0004 0446     		mov	r4, r0
  26 0006 1C20     		movs	r0, #28
  27 0008 8846     		mov	r8, r1
  28 000a 1746     		mov	r7, r2
  29 000c 1E46     		mov	r6, r3
  30 000e FFF7FEFF 		bl	_Znwj
  31 0012 8146     		mov	r9, r0
  32 0014 FFF7FEFF 		bl	_ZN17GCodeMachineStateC1Ev
  33 0018 0020     		movs	r0, #0
  34 001a 4FF0FF35 		mov	r5, #-1
  35 001e 84F84800 		strb	r0, [r4, #72]
  36 0022 E062     		str	r0, [r4, #44]
  37 0024 2063     		str	r0, [r4, #48]
  38 0026 84F8B200 		strb	r0, [r4, #178]
  39 002a 84F8B500 		strb	r0, [r4, #181]
  40 002e 2062     		str	r0, [r4, #32]
  41 0030 E061     		str	r0, [r4, #28]
  42 0032 2071     		strb	r0, [r4, #4]
  43 0034 84F84A00 		strb	r0, [r4, #74]
  44 0038 84F84900 		strb	r0, [r4, #73]
  45 003c 84F82800 		strb	r0, [r4, #40]
  46 0040 C4F80890 		str	r9, [r4, #8]
  47 0044 C4F80C80 		str	r8, [r4, #12]
  48 0048 A786     		strh	r7, [r4, #52]	@ movhi
  49 004a 84F8B460 		strb	r6, [r4, #180]
  50 004e 6562     		str	r5, [r4, #36]
  51 0050 2046     		mov	r0, r4
  52 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  53              		.size	_ZN11GCodeBufferC2EPKc11MessageTypeb, .-_ZN11GCodeBufferC2EPKc11MessageTypeb
  54              		.global	_ZN11GCodeBufferC1EPKc11MessageTypeb
  55              		.thumb_set _ZN11GCodeBufferC1EPKc11MessageTypeb,_ZN11GCodeBufferC2EPKc11MessageTypeb
  56 0056 00BF     		.section	.text._ZN11GCodeBuffer5ResetEv,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccgspWsN.s 			page 2


  58              		.p2align 2,,3
  59              		.global	_ZN11GCodeBuffer5ResetEv
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu softvfp
  64              		.type	_ZN11GCodeBuffer5ResetEv, %function
  65              	_ZN11GCodeBuffer5ResetEv:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 10B5     		push	{r4, lr}
  69 0002 0446     		mov	r4, r0
  70 0004 8068     		ldr	r0, [r0, #8]
  71 0006 0368     		ldr	r3, [r0]
  72 0008 33B1     		cbz	r3, .L5
  73              	.L6:
  74 000a A360     		str	r3, [r4, #8]
  75 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
  76 0010 A068     		ldr	r0, [r4, #8]
  77 0012 0368     		ldr	r3, [r0]
  78 0014 002B     		cmp	r3, #0
  79 0016 F8D1     		bne	.L6
  80              	.L5:
  81 0018 0023     		movs	r3, #0
  82 001a 4FF0FF31 		mov	r1, #-1
  83 001e 427E     		ldrb	r2, [r0, #25]	@ zero_extendqisi2
  84 0020 02F0FB02 		and	r2, r2, #251
  85 0024 6FF34102 		bfc	r2, #1, #1
  86 0028 4276     		strb	r2, [r0, #25]
  87 002a 84F84830 		strb	r3, [r4, #72]
  88 002e 2362     		str	r3, [r4, #32]
  89 0030 E361     		str	r3, [r4, #28]
  90 0032 2371     		strb	r3, [r4, #4]
  91 0034 84F84A30 		strb	r3, [r4, #74]
  92 0038 84F84930 		strb	r3, [r4, #73]
  93 003c 84F82830 		strb	r3, [r4, #40]
  94 0040 6162     		str	r1, [r4, #36]
  95 0042 10BD     		pop	{r4, pc}
  96              		.size	_ZN11GCodeBuffer5ResetEv, .-_ZN11GCodeBuffer5ResetEv
  97              		.section	.text._ZN11GCodeBuffer4InitEv,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN11GCodeBuffer4InitEv
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu softvfp
 105              		.type	_ZN11GCodeBuffer4InitEv, %function
 106              	_ZN11GCodeBuffer4InitEv:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0023     		movs	r3, #0
 111 0002 4FF0FF32 		mov	r2, #-1
 112 0006 0362     		str	r3, [r0, #32]
 113 0008 4262     		str	r2, [r0, #36]
 114 000a C361     		str	r3, [r0, #28]
ARM GAS  /tmp/ccgspWsN.s 			page 3


 115 000c 0371     		strb	r3, [r0, #4]
 116 000e 80F84A30 		strb	r3, [r0, #74]
 117 0012 80F84930 		strb	r3, [r0, #73]
 118 0016 80F84830 		strb	r3, [r0, #72]
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
 129              		.fpu softvfp
 130              		.type	_ZN11GCodeBuffer13DecodeCommandEv, %function
 131              	_ZN11GCodeBuffer13DecodeCommandEv:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 135 0004 0669     		ldr	r6, [r0, #16]
 136 0006 0546     		mov	r5, r0
 137 0008 8319     		adds	r3, r0, r6
 138 000a 93F84D00 		ldrb	r0, [r3, #77]	@ zero_extendqisi2
 139 000e FFF7FEFF 		bl	toupper
 140 0012 4FF0FF32 		mov	r2, #-1
 141 0016 0021     		movs	r1, #0
 142 0018 C0B2     		uxtb	r0, r0
 143 001a A0F14703 		sub	r3, r0, #71
 144 001e DBB2     		uxtb	r3, r3
 145 0020 0D2B     		cmp	r3, #13
 146 0022 85F84C00 		strb	r0, [r5, #76]
 147 0026 85F84B10 		strb	r1, [r5, #75]
 148 002a 2A64     		str	r2, [r5, #64]
 149 002c 85F8B320 		strb	r2, [r5, #179]
 150 0030 07D9     		bls	.L47
 151              	.L15:
 152 0032 2B6A     		ldr	r3, [r5, #32]
 153 0034 6E61     		str	r6, [r5, #20]
 154 0036 AB61     		str	r3, [r5, #24]
 155              	.L23:
 156 0038 0823     		movs	r3, #8
 157 003a 85F82830 		strb	r3, [r5, #40]
 158 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 159              	.L47:
 160 0042 42F24102 		movw	r2, #8257
 161 0046 22FA03F3 		lsr	r3, r2, r3
 162 004a DB07     		lsls	r3, r3, #31
 163 004c F1D5     		bpl	.L15
 164 004e 741C     		adds	r4, r6, #1
 165 0050 6C61     		str	r4, [r5, #20]
 166 0052 2B19     		adds	r3, r5, r4
 167 0054 93F84D10 		ldrb	r1, [r3, #77]	@ zero_extendqisi2
 168 0058 2D29     		cmp	r1, #45
 169 005a 5BD0     		beq	.L48
 170 005c 0E46     		mov	r6, r1
 171              	.L16:
ARM GAS  /tmp/ccgspWsN.s 			page 4


 172 005e A6F13000 		sub	r0, r6, #48
 173 0062 0928     		cmp	r0, #9
 174 0064 26D8     		bhi	.L18
 175 0066 0126     		movs	r6, #1
 176 0068 0023     		movs	r3, #0
 177 006a 04F14D02 		add	r2, r4, #77
 178 006e 85F84B60 		strb	r6, [r5, #75]
 179 0072 2B64     		str	r3, [r5, #64]
 180 0074 2A44     		add	r2, r2, r5
 181              	.L19:
 182 0076 12F8016F 		ldrb	r6, [r2, #1]!	@ zero_extendqisi2
 183 007a 03EB8303 		add	r3, r3, r3, lsl #2
 184 007e 00EB4303 		add	r3, r0, r3, lsl #1
 185 0082 A6F13000 		sub	r0, r6, #48
 186 0086 0928     		cmp	r0, #9
 187 0088 04F10107 		add	r7, r4, #1
 188 008c 01D8     		bhi	.L49
 189 008e 3C46     		mov	r4, r7
 190 0090 F1E7     		b	.L19
 191              	.L49:
 192 0092 2D29     		cmp	r1, #45
 193 0094 2B64     		str	r3, [r5, #64]
 194 0096 04BF     		itt	eq
 195 0098 5B42     		rsbeq	r3, r3, #0
 196 009a 2B64     		streq	r3, [r5, #64]
 197 009c 2E2E     		cmp	r6, #46
 198 009e 6F61     		str	r7, [r5, #20]
 199 00a0 3ED1     		bne	.L32
 200 00a2 A21C     		adds	r2, r4, #2
 201 00a4 6A61     		str	r2, [r5, #20]
 202 00a6 AB18     		adds	r3, r5, r2
 203 00a8 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 204 00ac 303B     		subs	r3, r3, #48
 205 00ae 092B     		cmp	r3, #9
 206 00b0 38D9     		bls	.L21
 207 00b2 1446     		mov	r4, r2
 208              	.L18:
 209 00b4 2B6A     		ldr	r3, [r5, #32]
 210 00b6 AC61     		str	r4, [r5, #24]
 211 00b8 A342     		cmp	r3, r4
 212 00ba BDD9     		bls	.L23
 213 00bc 0022     		movs	r2, #0
 214 00be 4C34     		adds	r4, r4, #76
 215 00c0 03F14C08 		add	r8, r3, #76
 216 00c4 9146     		mov	r9, r2
 217 00c6 2C44     		add	r4, r4, r5
 218 00c8 A844     		add	r8, r8, r5
 219 00ca 19E0     		b	.L28
 220              	.L24:
 221 00cc B9F1000F 		cmp	r9, #0
 222 00d0 0FD1     		bne	.L25
 223 00d2 3AB1     		cbz	r2, .L26
 224 00d4 3046     		mov	r0, r6
 225 00d6 FFF7FEFF 		bl	toupper
 226 00da C0B2     		uxtb	r0, r0
 227 00dc 4728     		cmp	r0, #71
 228 00de ABD0     		beq	.L23
ARM GAS  /tmp/ccgspWsN.s 			page 5


 229 00e0 4D28     		cmp	r0, #77
 230 00e2 A9D0     		beq	.L23
 231              	.L26:
 232 00e4 202E     		cmp	r6, #32
 233 00e6 13D0     		beq	.L50
 234 00e8 A6F10902 		sub	r2, r6, #9
 235 00ec B2FA82F2 		clz	r2, r2
 236 00f0 5209     		lsrs	r2, r2, #5
 237              	.L25:
 238 00f2 A4F14B03 		sub	r3, r4, #75
 239 00f6 5B1B     		subs	r3, r3, r5
 240 00f8 4745     		cmp	r7, r8
 241 00fa 3C46     		mov	r4, r7
 242 00fc AB61     		str	r3, [r5, #24]
 243 00fe 9BD0     		beq	.L23
 244              	.L28:
 245 0100 6678     		ldrb	r6, [r4, #1]	@ zero_extendqisi2
 246 0102 671C     		adds	r7, r4, #1
 247 0104 222E     		cmp	r6, #34
 248 0106 E1D1     		bne	.L24
 249 0108 89F00109 		eor	r9, r9, #1
 250 010c 0022     		movs	r2, #0
 251 010e F0E7     		b	.L25
 252              	.L50:
 253 0110 0122     		movs	r2, #1
 254 0112 EEE7     		b	.L25
 255              	.L48:
 256 0114 B41C     		adds	r4, r6, #2
 257 0116 6C61     		str	r4, [r5, #20]
 258 0118 2B19     		adds	r3, r5, r4
 259 011a 93F84D60 		ldrb	r6, [r3, #77]	@ zero_extendqisi2
 260 011e 9EE7     		b	.L16
 261              	.L32:
 262 0120 3C46     		mov	r4, r7
 263 0122 C7E7     		b	.L18
 264              	.L21:
 265 0124 0334     		adds	r4, r4, #3
 266 0126 6C61     		str	r4, [r5, #20]
 267 0128 85F8B330 		strb	r3, [r5, #179]
 268 012c C2E7     		b	.L18
 269              		.size	_ZN11GCodeBuffer13DecodeCommandEv, .-_ZN11GCodeBuffer13DecodeCommandEv
 270 012e 00BF     		.section	.text._ZN11GCodeBuffer12LineFinishedEv,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZN11GCodeBuffer12LineFinishedEv
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu softvfp
 278              		.type	_ZN11GCodeBuffer12LineFinishedEv, %function
 279              	_ZN11GCodeBuffer12LineFinishedEv:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282 0000 036A     		ldr	r3, [r0, #32]
 283 0002 002B     		cmp	r3, #0
 284 0004 56D0     		beq	.L88
 285 0006 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/ccgspWsN.s 			page 6


 286 0008 652B     		cmp	r3, #101
 287 000a 82B0     		sub	sp, sp, #8
 288 000c 0446     		mov	r4, r0
 289 000e 7ED0     		beq	.L89
 290 0010 0022     		movs	r2, #0
 291 0012 0344     		add	r3, r3, r0
 292 0014 83F84D20 		strb	r2, [r3, #77]
 293 0018 90F84A60 		ldrb	r6, [r0, #74]	@ zero_extendqisi2
 294 001c 0EB3     		cbz	r6, .L55
 295 001e 90F84810 		ldrb	r1, [r0, #72]	@ zero_extendqisi2
 296 0022 C36B     		ldr	r3, [r0, #60]
 297 0024 9942     		cmp	r1, r3
 298 0026 70D0     		beq	.L90
 299 0028 90F8B230 		ldrb	r3, [r0, #178]	@ zero_extendqisi2
 300 002c EBB1     		cbz	r3, .L57
 301 002e 4149     		ldr	r1, .L93
 302 0030 486C     		ldr	r0, [r1, #68]
 303 0032 0007     		lsls	r0, r0, #28
 304 0034 74D4     		bmi	.L91
 305              	.L70:
 306 0036 94F84930 		ldrb	r3, [r4, #73]	@ zero_extendqisi2
 307 003a 002B     		cmp	r3, #0
 308 003c 5DD1     		bne	.L92
 309              	.L64:
 310 003e 0023     		movs	r3, #0
 311 0040 4FF0FF32 		mov	r2, #-1
 312 0044 1846     		mov	r0, r3
 313 0046 2362     		str	r3, [r4, #32]
 314 0048 E361     		str	r3, [r4, #28]
 315 004a 2371     		strb	r3, [r4, #4]
 316 004c 84F84A30 		strb	r3, [r4, #74]
 317 0050 84F84930 		strb	r3, [r4, #73]
 318 0054 84F84830 		strb	r3, [r4, #72]
 319 0058 84F82830 		strb	r3, [r4, #40]
 320 005c 6262     		str	r2, [r4, #36]
 321 005e 02B0     		add	sp, sp, #8
 322              		@ sp needed
 323 0060 70BD     		pop	{r4, r5, r6, pc}
 324              	.L55:
 325 0062 90F8B250 		ldrb	r5, [r0, #178]	@ zero_extendqisi2
 326 0066 002D     		cmp	r5, #0
 327 0068 36D1     		bne	.L68
 328              	.L57:
 329 006a 324B     		ldr	r3, .L93
 330 006c 5A6C     		ldr	r2, [r3, #68]
 331 006e 1507     		lsls	r5, r2, #28
 332 0070 2FD5     		bpl	.L59
 333 0072 E56A     		ldr	r5, [r4, #44]
 334 0074 6DB1     		cbz	r5, .L60
 335 0076 0025     		movs	r5, #0
 336              	.L61:
 337 0078 002E     		cmp	r6, #0
 338 007a DCD1     		bne	.L70
 339              	.L63:
 340 007c 002D     		cmp	r5, #0
 341 007e DED1     		bne	.L64
 342              	.L65:
ARM GAS  /tmp/ccgspWsN.s 			page 7


 343 0080 0023     		movs	r3, #0
 344 0082 2046     		mov	r0, r4
 345 0084 2361     		str	r3, [r4, #16]
 346 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer13DecodeCommandEv
 347 008a 0123     		movs	r3, #1
 348 008c 1846     		mov	r0, r3
 349 008e 02B0     		add	sp, sp, #8
 350              		@ sp needed
 351 0090 70BD     		pop	{r4, r5, r6, pc}
 352              	.L60:
 353 0092 1868     		ldr	r0, [r3]
 354 0094 E368     		ldr	r3, [r4, #12]
 355 0096 002E     		cmp	r6, #0
 356 0098 2DD1     		bne	.L75
 357 009a 3546     		mov	r5, r6
 358 009c 2649     		ldr	r1, .L93+4
 359              	.L62:
 360 009e 04F14D02 		add	r2, r4, #77
 361 00a2 8DE80600 		stm	sp, {r1, r2}
 362 00a6 254A     		ldr	r2, .L93+8
 363 00a8 0221     		movs	r1, #2
 364 00aa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 365 00ae 002E     		cmp	r6, #0
 366 00b0 E4D0     		beq	.L63
 367 00b2 C0E7     		b	.L70
 368              	.L88:
 369 00b4 4FF0FF32 		mov	r2, #-1
 370 00b8 C361     		str	r3, [r0, #28]
 371 00ba 0371     		strb	r3, [r0, #4]
 372 00bc 80F84A30 		strb	r3, [r0, #74]
 373 00c0 80F84930 		strb	r3, [r0, #73]
 374 00c4 80F84830 		strb	r3, [r0, #72]
 375 00c8 80F82830 		strb	r3, [r0, #40]
 376 00cc 4262     		str	r2, [r0, #36]
 377 00ce 1846     		mov	r0, r3
 378 00d0 7047     		bx	lr
 379              	.L59:
 380 00d2 002E     		cmp	r6, #0
 381 00d4 D4D0     		beq	.L65
 382 00d6 AEE7     		b	.L70
 383              	.L68:
 384 00d8 A368     		ldr	r3, [r4, #8]
 385 00da 1B68     		ldr	r3, [r3]
 386 00dc 002B     		cmp	r3, #0
 387 00de C4D1     		bne	.L57
 388 00e0 144B     		ldr	r3, .L93
 389 00e2 5A6C     		ldr	r2, [r3, #68]
 390 00e4 1207     		lsls	r2, r2, #28
 391 00e6 AAD5     		bpl	.L64
 392 00e8 E26A     		ldr	r2, [r4, #44]
 393 00ea 002A     		cmp	r2, #0
 394 00ec C6D1     		bne	.L63
 395 00ee 1868     		ldr	r0, [r3]
 396 00f0 1349     		ldr	r1, .L93+12
 397 00f2 E368     		ldr	r3, [r4, #12]
 398 00f4 D3E7     		b	.L62
 399              	.L75:
ARM GAS  /tmp/ccgspWsN.s 			page 8


 400 00f6 1349     		ldr	r1, .L93+16
 401 00f8 D1E7     		b	.L62
 402              	.L92:
 403 00fa A36B     		ldr	r3, [r4, #56]
 404 00fc 124A     		ldr	r2, .L93+20
 405 00fe 6521     		movs	r1, #101
 406 0100 04F14D00 		add	r0, r4, #77
 407 0104 FFF7FEFF 		bl	_Z12SafeSnprintfPcjPKcz
 408 0108 BAE7     		b	.L65
 409              	.L90:
 410 010a 1646     		mov	r6, r2
 411 010c ADE7     		b	.L57
 412              	.L89:
 413 010e 094A     		ldr	r2, .L93
 414 0110 C368     		ldr	r3, [r0, #12]
 415 0112 40F2B511 		movw	r1, #437
 416 0116 1068     		ldr	r0, [r2]	@ unaligned
 417 0118 0C4A     		ldr	r2, .L93+24
 418 011a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 419 011e 8EE7     		b	.L64
 420              	.L91:
 421 0120 E56A     		ldr	r5, [r4, #44]
 422 0122 15B1     		cbz	r5, .L72
 423 0124 1E46     		mov	r6, r3
 424 0126 1546     		mov	r5, r2
 425 0128 A6E7     		b	.L61
 426              	.L72:
 427 012a 0868     		ldr	r0, [r1]
 428 012c 1E46     		mov	r6, r3
 429 012e 0549     		ldr	r1, .L93+16
 430 0130 E368     		ldr	r3, [r4, #12]
 431 0132 B4E7     		b	.L62
 432              	.L94:
 433              		.align	2
 434              	.L93:
 435 0134 00000000 		.word	reprap
 436 0138 0C000000 		.word	.LC1
 437 013c 40000000 		.word	.LC4
 438 0140 10000000 		.word	.LC2
 439 0144 00000000 		.word	.LC0
 440 0148 4C000000 		.word	.LC5
 441 014c 1C000000 		.word	.LC3
 442              		.size	_ZN11GCodeBuffer12LineFinishedEv, .-_ZN11GCodeBuffer12LineFinishedEv
 443              		.section	.text.hot._ZN11GCodeBuffer3PutEc,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.global	_ZN11GCodeBuffer3PutEc
 447              		.syntax unified
 448              		.thumb
 449              		.thumb_func
 450              		.fpu softvfp
 451              		.type	_ZN11GCodeBuffer3PutEc, %function
 452              	_ZN11GCodeBuffer3PutEc:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 09B9     		cbnz	r1, .L96
ARM GAS  /tmp/ccgspWsN.s 			page 9


 457              	.L97:
 458 0002 FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 459              	.L96:
 460 0006 C369     		ldr	r3, [r0, #28]
 461 0008 0A29     		cmp	r1, #10
 462 000a 03F10103 		add	r3, r3, #1
 463 000e C361     		str	r3, [r0, #28]
 464 0010 F7D0     		beq	.L97
 465 0012 0D29     		cmp	r1, #13
 466 0014 F5D0     		beq	.L97
 467 0016 7F29     		cmp	r1, #127
 468 0018 90F82830 		ldrb	r3, [r0, #40]	@ zero_extendqisi2
 469 001c 00F0C180 		beq	.L98
 470 0020 062B     		cmp	r3, #6
 471 0022 0DD8     		bhi	.L160
 472 0024 DFE803F0 		tbb	[pc, r3]
 473              	.L101:
 474 0028 78       		.byte	(.L100-.L101)/2
 475 0029 2B       		.byte	(.L102-.L101)/2
 476 002a 33       		.byte	(.L103-.L101)/2
 477 002b 3C       		.byte	(.L104-.L101)/2
 478 002c 22       		.byte	(.L105-.L101)/2
 479 002d 0E       		.byte	(.L106-.L101)/2
 480 002e 04       		.byte	(.L107-.L101)/2
 481 002f 00       		.p2align 1
 482              	.L107:
 483 0030 A1F13003 		sub	r3, r1, #48
 484 0034 092B     		cmp	r3, #9
 485 0036 40F2CC80 		bls	.L162
 486              	.L124:
 487 003a 0723     		movs	r3, #7
 488 003c 80F82830 		strb	r3, [r0, #40]
 489              	.L160:
 490 0040 0020     		movs	r0, #0
 491 0042 7047     		bx	lr
 492              	.L106:
 493 0044 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 494 0048 026A     		ldr	r2, [r0, #32]
 495 004a 4B40     		eors	r3, r3, r1
 496 004c 642A     		cmp	r2, #100
 497 004e 80F84830 		strb	r3, [r0, #72]
 498 0052 04D8     		bhi	.L123
 499 0054 531C     		adds	r3, r2, #1
 500 0056 0244     		add	r2, r2, r0
 501 0058 0362     		str	r3, [r0, #32]
 502 005a 82F84D10 		strb	r1, [r2, #77]
 503              	.L123:
 504 005e 2229     		cmp	r1, #34
 505 0060 EED1     		bne	.L160
 506              	.L125:
 507 0062 0323     		movs	r3, #3
 508 0064 80F82830 		strb	r3, [r0, #40]
 509 0068 0020     		movs	r0, #0
 510 006a 7047     		bx	lr
 511              	.L105:
 512 006c 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 513 0070 2929     		cmp	r1, #41
ARM GAS  /tmp/ccgspWsN.s 			page 10


 514 0072 83EA0103 		eor	r3, r3, r1
 515 0076 80F84830 		strb	r3, [r0, #72]
 516 007a F2D0     		beq	.L125
 517 007c E0E7     		b	.L160
 518              	.L102:
 519 007e A1F13003 		sub	r3, r1, #48
 520 0082 092B     		cmp	r3, #9
 521 0084 40F2AD80 		bls	.L163
 522 0088 0223     		movs	r3, #2
 523 008a 80F82830 		strb	r3, [r0, #40]
 524              	.L103:
 525 008e 0929     		cmp	r1, #9
 526 0090 5BD0     		beq	.L115
 527 0092 2029     		cmp	r1, #32
 528 0094 59D0     		beq	.L115
 529              	.L158:
 530 0096 0322     		movs	r2, #3
 531 0098 0023     		movs	r3, #0
 532 009a 80F82820 		strb	r2, [r0, #40]
 533 009e 0361     		str	r3, [r0, #16]
 534              	.L104:
 535 00a0 A1F12203 		sub	r3, r1, #34
 536 00a4 192B     		cmp	r3, #25
 537 00a6 00F28580 		bhi	.L116
 538 00aa 01A2     		adr	r2, .L118
 539 00ac 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 540              		.p2align 2
 541              	.L118:
 542 00b0 6B010000 		.word	.L117+1
 543 00b4 B5010000 		.word	.L116+1
 544 00b8 B5010000 		.word	.L116+1
 545 00bc B5010000 		.word	.L116+1
 546 00c0 B5010000 		.word	.L116+1
 547 00c4 B5010000 		.word	.L116+1
 548 00c8 57010000 		.word	.L119+1
 549 00cc B5010000 		.word	.L116+1
 550 00d0 91010000 		.word	.L120+1
 551 00d4 B5010000 		.word	.L116+1
 552 00d8 B5010000 		.word	.L116+1
 553 00dc B5010000 		.word	.L116+1
 554 00e0 B5010000 		.word	.L116+1
 555 00e4 B5010000 		.word	.L116+1
 556 00e8 B5010000 		.word	.L116+1
 557 00ec B5010000 		.word	.L116+1
 558 00f0 B5010000 		.word	.L116+1
 559 00f4 B5010000 		.word	.L116+1
 560 00f8 B5010000 		.word	.L116+1
 561 00fc B5010000 		.word	.L116+1
 562 0100 B5010000 		.word	.L116+1
 563 0104 B5010000 		.word	.L116+1
 564 0108 B5010000 		.word	.L116+1
 565 010c B5010000 		.word	.L116+1
 566 0110 B5010000 		.word	.L116+1
 567 0114 3B000000 		.word	.L124+1
 568              		.p2align 1
 569              	.L100:
 570 0118 2029     		cmp	r1, #32
ARM GAS  /tmp/ccgspWsN.s 			page 11


 571 011a 16D0     		beq	.L115
 572 011c 13D9     		bls	.L164
 573 011e 4E29     		cmp	r1, #78
 574 0120 01D0     		beq	.L112
 575 0122 6E29     		cmp	r1, #110
 576 0124 B7D1     		bne	.L158
 577              	.L112:
 578 0126 10B4     		push	{r4}
 579 0128 0122     		movs	r2, #1
 580 012a 0024     		movs	r4, #0
 581 012c 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 582 0130 8463     		str	r4, [r0, #56]
 583 0132 5940     		eors	r1, r1, r3
 584 0134 80F84810 		strb	r1, [r0, #72]
 585 0138 80F84920 		strb	r2, [r0, #73]
 586 013c 80F82820 		strb	r2, [r0, #40]
 587 0140 10BC     		pop	{r4}
 588 0142 0020     		movs	r0, #0
 589 0144 7047     		bx	lr
 590              	.L164:
 591 0146 0929     		cmp	r1, #9
 592 0148 A5D1     		bne	.L158
 593              	.L115:
 594 014a 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 595 014e 5940     		eors	r1, r1, r3
 596 0150 80F84810 		strb	r1, [r0, #72]
 597 0154 74E7     		b	.L160
 598              	.L119:
 599 0156 0422     		movs	r2, #4
 600 0158 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 601 015c 80F82820 		strb	r2, [r0, #40]
 602 0160 83F02803 		eor	r3, r3, #40
 603 0164 80F84830 		strb	r3, [r0, #72]
 604 0168 6AE7     		b	.L160
 605              	.L117:
 606 016a 90F84830 		ldrb	r3, [r0, #72]	@ zero_extendqisi2
 607 016e 026A     		ldr	r2, [r0, #32]
 608 0170 83F02203 		eor	r3, r3, #34
 609 0174 642A     		cmp	r2, #100
 610 0176 80F84830 		strb	r3, [r0, #72]
 611 017a 05D8     		bhi	.L122
 612 017c 2223     		movs	r3, #34
 613 017e 511C     		adds	r1, r2, #1
 614 0180 0244     		add	r2, r2, r0
 615 0182 0162     		str	r1, [r0, #32]
 616 0184 82F84D30 		strb	r3, [r2, #77]
 617              	.L122:
 618 0188 0523     		movs	r3, #5
 619 018a 80F82830 		strb	r3, [r0, #40]
 620 018e 57E7     		b	.L160
 621              	.L120:
 622 0190 0021     		movs	r1, #0
 623 0192 0122     		movs	r2, #1
 624 0194 0623     		movs	r3, #6
 625 0196 C163     		str	r1, [r0, #60]
 626 0198 80F84A20 		strb	r2, [r0, #74]
 627 019c 80F82830 		strb	r3, [r0, #40]
ARM GAS  /tmp/ccgspWsN.s 			page 12


 628 01a0 4EE7     		b	.L160
 629              	.L98:
 630 01a2 072B     		cmp	r3, #7
 631 01a4 3FF44CAF 		beq	.L160
 632 01a8 0022     		movs	r2, #0
 633 01aa 0723     		movs	r3, #7
 634 01ac 0262     		str	r2, [r0, #32]
 635 01ae 80F82830 		strb	r3, [r0, #40]
 636 01b2 45E7     		b	.L160
 637              	.L116:
 638 01b4 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 639 01b8 036A     		ldr	r3, [r0, #32]
 640 01ba 4A40     		eors	r2, r2, r1
 641 01bc 642B     		cmp	r3, #100
 642 01be 80F84820 		strb	r2, [r0, #72]
 643 01c2 3FF63DAF 		bhi	.L160
 644 01c6 5A1C     		adds	r2, r3, #1
 645 01c8 0344     		add	r3, r3, r0
 646 01ca 0262     		str	r2, [r0, #32]
 647 01cc 83F84D10 		strb	r1, [r3, #77]
 648 01d0 36E7     		b	.L160
 649              	.L162:
 650 01d2 C36B     		ldr	r3, [r0, #60]
 651 01d4 03EB8303 		add	r3, r3, r3, lsl #2
 652 01d8 01EB4303 		add	r3, r1, r3, lsl #1
 653 01dc 303B     		subs	r3, r3, #48
 654 01de C363     		str	r3, [r0, #60]
 655 01e0 2EE7     		b	.L160
 656              	.L163:
 657 01e2 836B     		ldr	r3, [r0, #56]
 658 01e4 90F84820 		ldrb	r2, [r0, #72]	@ zero_extendqisi2
 659 01e8 03EB8303 		add	r3, r3, r3, lsl #2
 660 01ec 01EB4303 		add	r3, r1, r3, lsl #1
 661 01f0 303B     		subs	r3, r3, #48
 662 01f2 5140     		eors	r1, r1, r2
 663 01f4 8363     		str	r3, [r0, #56]
 664 01f6 80F84810 		strb	r1, [r0, #72]
 665 01fa 21E7     		b	.L160
 666              		.size	_ZN11GCodeBuffer3PutEc, .-_ZN11GCodeBuffer3PutEc
 667              		.section	.text._ZN11GCodeBuffer3PutEPKcj,"ax",%progbits
 668              		.align	1
 669              		.p2align 2,,3
 670              		.global	_ZN11GCodeBuffer3PutEPKcj
 671              		.syntax unified
 672              		.thumb
 673              		.thumb_func
 674              		.fpu softvfp
 675              		.type	_ZN11GCodeBuffer3PutEPKcj, %function
 676              	_ZN11GCodeBuffer3PutEPKcj:
 677              		@ args = 0, pretend = 0, frame = 0
 678              		@ frame_needed = 0, uses_anonymous_args = 0
 679 0000 70B5     		push	{r4, r5, r6, lr}
 680 0002 0023     		movs	r3, #0
 681 0004 0546     		mov	r5, r0
 682 0006 4FF0FF30 		mov	r0, #-1
 683 000a 2B62     		str	r3, [r5, #32]
 684 000c 6862     		str	r0, [r5, #36]
ARM GAS  /tmp/ccgspWsN.s 			page 13


 685 000e EB61     		str	r3, [r5, #28]
 686 0010 2B71     		strb	r3, [r5, #4]
 687 0012 85F84A30 		strb	r3, [r5, #74]
 688 0016 85F84930 		strb	r3, [r5, #73]
 689 001a 85F84830 		strb	r3, [r5, #72]
 690 001e 85F82830 		strb	r3, [r5, #40]
 691 0022 A2B1     		cbz	r2, .L169
 692 0024 0C46     		mov	r4, r1
 693 0026 8E18     		adds	r6, r1, r2
 694 0028 01E0     		b	.L168
 695              	.L173:
 696 002a A642     		cmp	r6, r4
 697 002c 07D0     		beq	.L172
 698              	.L168:
 699 002e 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 700 0032 2846     		mov	r0, r5
 701 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 702 0038 0028     		cmp	r0, #0
 703 003a F6D0     		beq	.L173
 704 003c 70BD     		pop	{r4, r5, r6, pc}
 705              	.L172:
 706 003e EB69     		ldr	r3, [r5, #28]
 707 0040 0133     		adds	r3, r3, #1
 708              	.L166:
 709 0042 EB61     		str	r3, [r5, #28]
 710 0044 2846     		mov	r0, r5
 711 0046 BDE87040 		pop	{r4, r5, r6, lr}
 712 004a FFF7FEBF 		b	_ZN11GCodeBuffer12LineFinishedEv
 713              	.L169:
 714 004e 0123     		movs	r3, #1
 715 0050 F7E7     		b	.L166
 716              		.size	_ZN11GCodeBuffer3PutEPKcj, .-_ZN11GCodeBuffer3PutEPKcj
 717 0052 00BF     		.section	.text._ZN11GCodeBuffer3PutEPKc,"ax",%progbits
 718              		.align	1
 719              		.p2align 2,,3
 720              		.global	_ZN11GCodeBuffer3PutEPKc
 721              		.syntax unified
 722              		.thumb
 723              		.thumb_func
 724              		.fpu softvfp
 725              		.type	_ZN11GCodeBuffer3PutEPKc, %function
 726              	_ZN11GCodeBuffer3PutEPKc:
 727              		@ args = 0, pretend = 0, frame = 0
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729 0000 38B5     		push	{r3, r4, r5, lr}
 730 0002 0546     		mov	r5, r0
 731 0004 0846     		mov	r0, r1
 732 0006 0C46     		mov	r4, r1
 733 0008 FFF7FEFF 		bl	strlen
 734 000c 2146     		mov	r1, r4
 735 000e 0246     		mov	r2, r0
 736 0010 2846     		mov	r0, r5
 737 0012 BDE83840 		pop	{r3, r4, r5, lr}
 738 0016 FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKcj
 739              		.size	_ZN11GCodeBuffer3PutEPKc, .-_ZN11GCodeBuffer3PutEPKc
 740 001a 00BF     		.section	.text._ZN11GCodeBuffer11SetFinishedEb,"ax",%progbits
 741              		.align	1
ARM GAS  /tmp/ccgspWsN.s 			page 14


 742              		.p2align 2,,3
 743              		.global	_ZN11GCodeBuffer11SetFinishedEb
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu softvfp
 748              		.type	_ZN11GCodeBuffer11SetFinishedEb, %function
 749              	_ZN11GCodeBuffer11SetFinishedEb:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 0346     		mov	r3, r0
 754 0002 D1B1     		cbz	r1, .L177
 755 0004 8269     		ldr	r2, [r0, #24]
 756 0006 016A     		ldr	r1, [r0, #32]
 757 0008 8A42     		cmp	r2, r1
 758 000a 1AD3     		bcc	.L183
 759 000c 0022     		movs	r2, #0
 760 000e 10B4     		push	{r4}
 761 0010 4FF0FF34 		mov	r4, #-1
 762 0014 8168     		ldr	r1, [r0, #8]
 763 0016 087E     		ldrb	r0, [r1, #24]	@ zero_extendqisi2
 764 0018 6FF3C710 		bfc	r0, #7, #1
 765 001c 0876     		strb	r0, [r1, #24]
 766 001e 83F84820 		strb	r2, [r3, #72]
 767 0022 5C62     		str	r4, [r3, #36]
 768 0024 1A62     		str	r2, [r3, #32]
 769 0026 DA61     		str	r2, [r3, #28]
 770 0028 1A71     		strb	r2, [r3, #4]
 771 002a 83F84A20 		strb	r2, [r3, #74]
 772 002e 83F84920 		strb	r2, [r3, #73]
 773 0032 83F82820 		strb	r2, [r3, #40]
 774 0036 10BC     		pop	{r4}
 775 0038 7047     		bx	lr
 776              	.L177:
 777 003a 0922     		movs	r2, #9
 778 003c 80F82820 		strb	r2, [r0, #40]
 779 0040 7047     		bx	lr
 780              	.L183:
 781 0042 0261     		str	r2, [r0, #16]
 782 0044 FFF7FEBF 		b	_ZN11GCodeBuffer13DecodeCommandEv
 783              		.size	_ZN11GCodeBuffer11SetFinishedEb, .-_ZN11GCodeBuffer11SetFinishedEb
 784              		.section	.text._ZNK11GCodeBuffer15GetFilePositionEj,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	_ZNK11GCodeBuffer15GetFilePositionEj
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu softvfp
 792              		.type	_ZNK11GCodeBuffer15GetFilePositionEj, %function
 793              	_ZNK11GCodeBuffer15GetFilePositionEj:
 794              		@ args = 0, pretend = 0, frame = 0
 795              		@ frame_needed = 0, uses_anonymous_args = 0
 796 0000 38B5     		push	{r3, r4, r5, lr}
 797 0002 8368     		ldr	r3, [r0, #8]
 798 0004 9B68     		ldr	r3, [r3, #8]
ARM GAS  /tmp/ccgspWsN.s 			page 15


 799 0006 53B1     		cbz	r3, .L186
 800 0008 0446     		mov	r4, r0
 801 000a 0D46     		mov	r5, r1
 802 000c 1846     		mov	r0, r3
 803 000e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 804 0012 2169     		ldr	r1, [r4, #16]
 805 0014 E269     		ldr	r2, [r4, #28]
 806 0016 491B     		subs	r1, r1, r5
 807 0018 891A     		subs	r1, r1, r2
 808 001a 0844     		add	r0, r0, r1
 809 001c 38BD     		pop	{r3, r4, r5, pc}
 810              	.L186:
 811 001e 4FF0FF30 		mov	r0, #-1
 812 0022 38BD     		pop	{r3, r4, r5, pc}
 813              		.size	_ZNK11GCodeBuffer15GetFilePositionEj, .-_ZNK11GCodeBuffer15GetFilePositionEj
 814              		.section	.text.hot._ZN11GCodeBuffer4SeenEc,"ax",%progbits
 815              		.align	1
 816              		.p2align 2,,3
 817              		.global	_ZN11GCodeBuffer4SeenEc
 818              		.syntax unified
 819              		.thumb
 820              		.thumb_func
 821              		.fpu softvfp
 822              		.type	_ZN11GCodeBuffer4SeenEc, %function
 823              	_ZN11GCodeBuffer4SeenEc:
 824              		@ args = 0, pretend = 0, frame = 0
 825              		@ frame_needed = 0, uses_anonymous_args = 0
 826 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 827 0004 4469     		ldr	r4, [r0, #20]
 828 0006 D0F81880 		ldr	r8, [r0, #24]
 829 000a 0646     		mov	r6, r0
 830 000c 4445     		cmp	r4, r8
 831 000e 4462     		str	r4, [r0, #36]
 832 0010 18D2     		bcs	.L193
 833 0012 04F14C05 		add	r5, r4, #76
 834 0016 8946     		mov	r9, r1
 835 0018 0027     		movs	r7, #0
 836 001a 0544     		add	r5, r5, r0
 837 001c 08E0     		b	.L194
 838              	.L191:
 839 001e 1FB9     		cbnz	r7, .L192
 840 0020 FFF7FEFF 		bl	toupper
 841 0024 4845     		cmp	r0, r9
 842 0026 13D0     		beq	.L195
 843              	.L192:
 844 0028 0134     		adds	r4, r4, #1
 845 002a 4445     		cmp	r4, r8
 846 002c 7462     		str	r4, [r6, #36]
 847 002e 09D2     		bcs	.L193
 848              	.L194:
 849 0030 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 850 0034 2228     		cmp	r0, #34
 851 0036 F2D1     		bne	.L191
 852 0038 0134     		adds	r4, r4, #1
 853 003a 4445     		cmp	r4, r8
 854 003c 87F00107 		eor	r7, r7, #1
 855 0040 7462     		str	r4, [r6, #36]
ARM GAS  /tmp/ccgspWsN.s 			page 16


 856 0042 F5D3     		bcc	.L194
 857              	.L193:
 858 0044 4FF0FF33 		mov	r3, #-1
 859 0048 0020     		movs	r0, #0
 860 004a 7362     		str	r3, [r6, #36]
 861 004c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 862              	.L195:
 863 0050 0120     		movs	r0, #1
 864 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 865              		.size	_ZN11GCodeBuffer4SeenEc, .-_ZN11GCodeBuffer4SeenEc
 866 0056 00BF     		.section	.text.hot._ZN11GCodeBuffer9GetFValueEv,"ax",%progbits
 867              		.align	1
 868              		.p2align 2,,3
 869              		.global	_ZN11GCodeBuffer9GetFValueEv
 870              		.syntax unified
 871              		.thumb
 872              		.thumb_func
 873              		.fpu softvfp
 874              		.type	_ZN11GCodeBuffer9GetFValueEv, %function
 875              	_ZN11GCodeBuffer9GetFValueEv:
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878 0000 10B5     		push	{r4, lr}
 879 0002 0446     		mov	r4, r0
 880 0004 406A     		ldr	r0, [r0, #36]
 881 0006 0028     		cmp	r0, #0
 882 0008 08DB     		blt	.L198
 883 000a 4E30     		adds	r0, r0, #78
 884 000c 2044     		add	r0, r0, r4
 885 000e 0021     		movs	r1, #0
 886 0010 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 887 0014 4FF0FF33 		mov	r3, #-1
 888 0018 6362     		str	r3, [r4, #36]
 889 001a 10BD     		pop	{r4, pc}
 890              	.L198:
 891 001c 40F2BD13 		movw	r3, #445
 892 0020 034A     		ldr	r2, .L201
 893 0022 0449     		ldr	r1, .L201+4
 894 0024 0448     		ldr	r0, .L201+8
 895 0026 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 896 002a 0020     		movs	r0, #0
 897 002c 10BD     		pop	{r4, pc}
 898              	.L202:
 899 002e 00BF     		.align	2
 900              	.L201:
 901 0030 00000000 		.word	.LANCHOR0
 902 0034 00000000 		.word	.LC6
 903 0038 00000000 		.word	reprap
 904              		.size	_ZN11GCodeBuffer9GetFValueEv, .-_ZN11GCodeBuffer9GetFValueEv
 905              		.section	.text.hot._ZN11GCodeBuffer13GetFloatArrayEPfRjb,"ax",%progbits
 906              		.align	1
 907              		.p2align 2,,3
 908              		.global	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu softvfp
ARM GAS  /tmp/ccgspWsN.s 			page 17


 913              		.type	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, %function
 914              	_ZN11GCodeBuffer13GetFloatArrayEPfRjb:
 915              		@ args = 0, pretend = 0, frame = 8
 916              		@ frame_needed = 0, uses_anonymous_args = 0
 917 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 918 0004 0546     		mov	r5, r0
 919 0006 406A     		ldr	r0, [r0, #36]
 920 0008 82B0     		sub	sp, sp, #8
 921 000a 0028     		cmp	r0, #0
 922 000c 1446     		mov	r4, r2
 923 000e 44DB     		blt	.L204
 924 0010 1F46     		mov	r7, r3
 925 0012 1368     		ldr	r3, [r2]
 926 0014 0130     		adds	r0, r0, #1
 927 0016 05F14D08 		add	r8, r5, #77
 928 001a 4044     		add	r0, r0, r8
 929 001c 0BB3     		cbz	r3, .L208
 930 001e 0E46     		mov	r6, r1
 931 0020 4FF00009 		mov	r9, #0
 932 0024 A1F1040A 		sub	r10, r1, #4
 933 0028 02E0     		b	.L209
 934              	.L218:
 935 002a 2368     		ldr	r3, [r4]
 936 002c 4B45     		cmp	r3, r9
 937 002e 18D9     		bls	.L208
 938              	.L209:
 939 0030 01A9     		add	r1, sp, #4
 940 0032 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 941 0036 019B     		ldr	r3, [sp, #4]
 942 0038 4AF8040F 		str	r0, [r10, #4]!	@ float
 943 003c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 944 003e 09F10109 		add	r9, r9, #1
 945 0042 3A2A     		cmp	r2, #58
 946 0044 03F10100 		add	r0, r3, #1
 947 0048 EFD0     		beq	.L218
 948 004a 17B1     		cbz	r7, .L210
 949 004c B9F1010F 		cmp	r9, #1
 950 0050 17D0     		beq	.L219
 951              	.L210:
 952 0052 C4F80090 		str	r9, [r4]
 953              	.L211:
 954 0056 4FF0FF33 		mov	r3, #-1
 955 005a 6B62     		str	r3, [r5, #36]
 956 005c 02B0     		add	sp, sp, #8
 957              		@ sp needed
 958 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 959              	.L208:
 960 0062 144A     		ldr	r2, .L220
 961 0064 4346     		mov	r3, r8
 962 0066 1068     		ldr	r0, [r2]
 963 0068 40F2B511 		movw	r1, #437
 964 006c 124A     		ldr	r2, .L220+4
 965 006e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 966 0072 4FF0FF32 		mov	r2, #-1
 967 0076 0023     		movs	r3, #0
 968 0078 6A62     		str	r2, [r5, #36]
 969 007a 2360     		str	r3, [r4]
ARM GAS  /tmp/ccgspWsN.s 			page 18


 970 007c 02B0     		add	sp, sp, #8
 971              		@ sp needed
 972 007e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 973              	.L219:
 974 0082 2168     		ldr	r1, [r4]
 975 0084 0129     		cmp	r1, #1
 976 0086 E4D9     		bls	.L210
 977 0088 06EB8101 		add	r1, r6, r1, lsl #2
 978 008c 331D     		adds	r3, r6, #4
 979              	.L212:
 980 008e 3268     		ldr	r2, [r6]	@ float
 981 0090 43F8042B 		str	r2, [r3], #4	@ float
 982 0094 8B42     		cmp	r3, r1
 983 0096 FAD1     		bne	.L212
 984 0098 DDE7     		b	.L211
 985              	.L204:
 986 009a 40F2ED13 		movw	r3, #493
 987 009e 074A     		ldr	r2, .L220+8
 988 00a0 0749     		ldr	r1, .L220+12
 989 00a2 0448     		ldr	r0, .L220
 990 00a4 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 991 00a8 0023     		movs	r3, #0
 992 00aa 2360     		str	r3, [r4]
 993 00ac 02B0     		add	sp, sp, #8
 994              		@ sp needed
 995 00ae BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 996              	.L221:
 997 00b2 00BF     		.align	2
 998              	.L220:
 999 00b4 00000000 		.word	reprap
 1000 00b8 00000000 		.word	.LC7
 1001 00bc 00000000 		.word	.LANCHOR1
 1002 00c0 00000000 		.word	.LC6
 1003              		.size	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, .-_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1004              		.section	.text._ZN11GCodeBuffer11GetIntArrayEPlRjb,"ax",%progbits
 1005              		.align	1
 1006              		.p2align 2,,3
 1007              		.global	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 1008              		.syntax unified
 1009              		.thumb
 1010              		.thumb_func
 1011              		.fpu softvfp
 1012              		.type	_ZN11GCodeBuffer11GetIntArrayEPlRjb, %function
 1013              	_ZN11GCodeBuffer11GetIntArrayEPlRjb:
 1014              		@ args = 0, pretend = 0, frame = 8
 1015              		@ frame_needed = 0, uses_anonymous_args = 0
 1016 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1017 0004 0546     		mov	r5, r0
 1018 0006 406A     		ldr	r0, [r0, #36]
 1019 0008 82B0     		sub	sp, sp, #8
 1020 000a 0028     		cmp	r0, #0
 1021 000c 1446     		mov	r4, r2
 1022 000e 45DB     		blt	.L223
 1023 0010 1F46     		mov	r7, r3
 1024 0012 1368     		ldr	r3, [r2]
 1025 0014 0130     		adds	r0, r0, #1
 1026 0016 05F14D08 		add	r8, r5, #77
ARM GAS  /tmp/ccgspWsN.s 			page 19


 1027 001a 4044     		add	r0, r0, r8
 1028 001c 13B3     		cbz	r3, .L227
 1029 001e 0E46     		mov	r6, r1
 1030 0020 4FF00009 		mov	r9, #0
 1031 0024 A1F1040A 		sub	r10, r1, #4
 1032 0028 02E0     		b	.L228
 1033              	.L237:
 1034 002a 2368     		ldr	r3, [r4]
 1035 002c 4B45     		cmp	r3, r9
 1036 002e 19D9     		bls	.L227
 1037              	.L228:
 1038 0030 0A22     		movs	r2, #10
 1039 0032 01A9     		add	r1, sp, #4
 1040 0034 FFF7FEFF 		bl	strtol
 1041 0038 019B     		ldr	r3, [sp, #4]
 1042 003a 4AF8040F 		str	r0, [r10, #4]!
 1043 003e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1044 0040 09F10109 		add	r9, r9, #1
 1045 0044 3A2A     		cmp	r2, #58
 1046 0046 03F10100 		add	r0, r3, #1
 1047 004a EED0     		beq	.L237
 1048 004c 17B1     		cbz	r7, .L229
 1049 004e B9F1010F 		cmp	r9, #1
 1050 0052 17D0     		beq	.L238
 1051              	.L229:
 1052 0054 C4F80090 		str	r9, [r4]
 1053              	.L230:
 1054 0058 4FF0FF33 		mov	r3, #-1
 1055 005c 6B62     		str	r3, [r5, #36]
 1056 005e 02B0     		add	sp, sp, #8
 1057              		@ sp needed
 1058 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1059              	.L227:
 1060 0064 134A     		ldr	r2, .L239
 1061 0066 4346     		mov	r3, r8
 1062 0068 1068     		ldr	r0, [r2]
 1063 006a 40F2B511 		movw	r1, #437
 1064 006e 124A     		ldr	r2, .L239+4
 1065 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1066 0074 4FF0FF32 		mov	r2, #-1
 1067 0078 0023     		movs	r3, #0
 1068 007a 6A62     		str	r2, [r5, #36]
 1069 007c 2360     		str	r3, [r4]
 1070 007e 02B0     		add	sp, sp, #8
 1071              		@ sp needed
 1072 0080 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1073              	.L238:
 1074 0084 2168     		ldr	r1, [r4]
 1075 0086 0129     		cmp	r1, #1
 1076 0088 E4D9     		bls	.L229
 1077 008a 06EB8101 		add	r1, r6, r1, lsl #2
 1078 008e 331D     		adds	r3, r6, #4
 1079              	.L231:
 1080 0090 3268     		ldr	r2, [r6]
 1081 0092 43F8042B 		str	r2, [r3], #4
 1082 0096 8B42     		cmp	r3, r1
 1083 0098 FAD1     		bne	.L231
ARM GAS  /tmp/ccgspWsN.s 			page 20


 1084 009a DDE7     		b	.L230
 1085              	.L223:
 1086 009c 4FF40773 		mov	r3, #540
 1087 00a0 064A     		ldr	r2, .L239+8
 1088 00a2 0749     		ldr	r1, .L239+12
 1089 00a4 0348     		ldr	r0, .L239
 1090 00a6 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1091 00aa 0023     		movs	r3, #0
 1092 00ac 2360     		str	r3, [r4]
 1093 00ae 02B0     		add	sp, sp, #8
 1094              		@ sp needed
 1095 00b0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1096              	.L240:
 1097              		.align	2
 1098              	.L239:
 1099 00b4 00000000 		.word	reprap
 1100 00b8 00000000 		.word	.LC8
 1101 00bc 00000000 		.word	.LANCHOR2
 1102 00c0 00000000 		.word	.LC6
 1103              		.size	_ZN11GCodeBuffer11GetIntArrayEPlRjb, .-_ZN11GCodeBuffer11GetIntArrayEPlRjb
 1104              		.section	.text._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb,"ax",%progbits
 1105              		.align	1
 1106              		.p2align 2,,3
 1107              		.global	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1108              		.syntax unified
 1109              		.thumb
 1110              		.thumb_func
 1111              		.fpu softvfp
 1112              		.type	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, %function
 1113              	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb:
 1114              		@ args = 0, pretend = 0, frame = 8
 1115              		@ frame_needed = 0, uses_anonymous_args = 0
 1116 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1117 0004 0546     		mov	r5, r0
 1118 0006 406A     		ldr	r0, [r0, #36]
 1119 0008 82B0     		sub	sp, sp, #8
 1120 000a 0028     		cmp	r0, #0
 1121 000c 1446     		mov	r4, r2
 1122 000e 45DB     		blt	.L242
 1123 0010 1F46     		mov	r7, r3
 1124 0012 1368     		ldr	r3, [r2]
 1125 0014 0130     		adds	r0, r0, #1
 1126 0016 05F14D08 		add	r8, r5, #77
 1127 001a 4044     		add	r0, r0, r8
 1128 001c 13B3     		cbz	r3, .L246
 1129 001e 0E46     		mov	r6, r1
 1130 0020 4FF00009 		mov	r9, #0
 1131 0024 A1F1040A 		sub	r10, r1, #4
 1132 0028 02E0     		b	.L247
 1133              	.L256:
 1134 002a 2368     		ldr	r3, [r4]
 1135 002c 4B45     		cmp	r3, r9
 1136 002e 19D9     		bls	.L246
 1137              	.L247:
 1138 0030 0A22     		movs	r2, #10
 1139 0032 01A9     		add	r1, sp, #4
 1140 0034 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
ARM GAS  /tmp/ccgspWsN.s 			page 21


 1141 0038 019B     		ldr	r3, [sp, #4]
 1142 003a 4AF8040F 		str	r0, [r10, #4]!
 1143 003e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1144 0040 09F10109 		add	r9, r9, #1
 1145 0044 3A2A     		cmp	r2, #58
 1146 0046 03F10100 		add	r0, r3, #1
 1147 004a EED0     		beq	.L256
 1148 004c 17B1     		cbz	r7, .L248
 1149 004e B9F1010F 		cmp	r9, #1
 1150 0052 17D0     		beq	.L257
 1151              	.L248:
 1152 0054 C4F80090 		str	r9, [r4]
 1153              	.L249:
 1154 0058 4FF0FF33 		mov	r3, #-1
 1155 005c 6B62     		str	r3, [r5, #36]
 1156 005e 02B0     		add	sp, sp, #8
 1157              		@ sp needed
 1158 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1159              	.L246:
 1160 0064 134A     		ldr	r2, .L258
 1161 0066 4346     		mov	r3, r8
 1162 0068 1068     		ldr	r0, [r2]
 1163 006a 40F2B511 		movw	r1, #437
 1164 006e 124A     		ldr	r2, .L258+4
 1165 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1166 0074 4FF0FF32 		mov	r2, #-1
 1167 0078 0023     		movs	r3, #0
 1168 007a 6A62     		str	r2, [r5, #36]
 1169 007c 2360     		str	r3, [r4]
 1170 007e 02B0     		add	sp, sp, #8
 1171              		@ sp needed
 1172 0080 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1173              	.L257:
 1174 0084 2168     		ldr	r1, [r4]
 1175 0086 0129     		cmp	r1, #1
 1176 0088 E4D9     		bls	.L248
 1177 008a 06EB8101 		add	r1, r6, r1, lsl #2
 1178 008e 331D     		adds	r3, r6, #4
 1179              	.L250:
 1180 0090 3268     		ldr	r2, [r6]
 1181 0092 43F8042B 		str	r2, [r3], #4
 1182 0096 8B42     		cmp	r3, r1
 1183 0098 FAD1     		bne	.L250
 1184 009a DDE7     		b	.L249
 1185              	.L242:
 1186 009c 4FF41373 		mov	r3, #588
 1187 00a0 064A     		ldr	r2, .L258+8
 1188 00a2 0749     		ldr	r1, .L258+12
 1189 00a4 0348     		ldr	r0, .L258
 1190 00a6 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1191 00aa 0023     		movs	r3, #0
 1192 00ac 2360     		str	r3, [r4]
 1193 00ae 02B0     		add	sp, sp, #8
 1194              		@ sp needed
 1195 00b0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1196              	.L259:
 1197              		.align	2
ARM GAS  /tmp/ccgspWsN.s 			page 22


 1198              	.L258:
 1199 00b4 00000000 		.word	reprap
 1200 00b8 00000000 		.word	.LC9
 1201 00bc 00000000 		.word	.LANCHOR3
 1202 00c0 00000000 		.word	.LC6
 1203              		.size	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb, .-_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1204              		.section	.text._ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef,"ax",%progbits
 1205              		.align	1
 1206              		.p2align 2,,3
 1207              		.global	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1208              		.syntax unified
 1209              		.thumb
 1210              		.thumb_func
 1211              		.fpu softvfp
 1212              		.type	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, %function
 1213              	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef:
 1214              		@ args = 0, pretend = 0, frame = 0
 1215              		@ frame_needed = 0, uses_anonymous_args = 0
 1216 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1217 0004 436A     		ldr	r3, [r0, #36]
 1218 0006 5D1C     		adds	r5, r3, #1
 1219 0008 0233     		adds	r3, r3, #2
 1220 000a 4362     		str	r3, [r0, #36]
 1221 000c 4219     		adds	r2, r0, r5
 1222 000e 92F84D40 		ldrb	r4, [r2, #77]	@ zero_extendqisi2
 1223 0012 1F2C     		cmp	r4, #31
 1224 0014 30DD     		ble	.L266
 1225 0016 0646     		mov	r6, r0
 1226 0018 0F46     		mov	r7, r1
 1227 001a 0DE0     		b	.L267
 1228              	.L263:
 1229 001c 272C     		cmp	r4, #39
 1230 001e 17D0     		beq	.L272
 1231              	.L264:
 1232 0020 2146     		mov	r1, r4
 1233 0022 3846     		mov	r0, r7
 1234 0024 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1235 0028 756A     		ldr	r5, [r6, #36]
 1236 002a 6B1C     		adds	r3, r5, #1
 1237 002c 7362     		str	r3, [r6, #36]
 1238 002e 7219     		adds	r2, r6, r5
 1239 0030 92F84D40 		ldrb	r4, [r2, #77]	@ zero_extendqisi2
 1240 0034 1F2C     		cmp	r4, #31
 1241 0036 1FDD     		ble	.L266
 1242              	.L267:
 1243 0038 222C     		cmp	r4, #34
 1244 003a EFD1     		bne	.L263
 1245 003c 0235     		adds	r5, r5, #2
 1246 003e 7562     		str	r5, [r6, #36]
 1247 0040 3344     		add	r3, r3, r6
 1248 0042 93F84D40 		ldrb	r4, [r3, #77]	@ zero_extendqisi2
 1249 0046 222C     		cmp	r4, #34
 1250 0048 EAD0     		beq	.L264
 1251 004a 0120     		movs	r0, #1
 1252 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1253              	.L272:
 1254 0050 3344     		add	r3, r3, r6
ARM GAS  /tmp/ccgspWsN.s 			page 23


 1255 0052 93F84D80 		ldrb	r8, [r3, #77]	@ zero_extendqisi2
 1256 0056 4046     		mov	r0, r8
 1257 0058 FFF7FEFF 		bl	isalpha
 1258 005c AB1C     		adds	r3, r5, #2
 1259 005e 28B1     		cbz	r0, .L265
 1260 0060 7362     		str	r3, [r6, #36]
 1261 0062 4046     		mov	r0, r8
 1262 0064 FFF7FEFF 		bl	tolower
 1263 0068 C4B2     		uxtb	r4, r0
 1264 006a D9E7     		b	.L264
 1265              	.L265:
 1266 006c B8F1270F 		cmp	r8, #39
 1267 0070 04BF     		itt	eq
 1268 0072 0235     		addeq	r5, r5, #2
 1269 0074 7562     		streq	r5, [r6, #36]
 1270 0076 D3E7     		b	.L264
 1271              	.L266:
 1272 0078 0020     		movs	r0, #0
 1273 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1274              		.size	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23InternalGetQuote
 1275 007e 00BF     		.section	.text._ZN11GCodeBuffer15GetQuotedStringERK9StringRef,"ax",%progbits
 1276              		.align	1
 1277              		.p2align 2,,3
 1278              		.global	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1279              		.syntax unified
 1280              		.thumb
 1281              		.thumb_func
 1282              		.fpu softvfp
 1283              		.type	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, %function
 1284              	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef:
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287 0000 10B5     		push	{r4, lr}
 1288 0002 0024     		movs	r4, #0
 1289 0004 0A68     		ldr	r2, [r1]
 1290 0006 1470     		strb	r4, [r2]
 1291 0008 426A     		ldr	r2, [r0, #36]
 1292 000a A242     		cmp	r2, r4
 1293 000c 0DDB     		blt	.L274
 1294 000e 0346     		mov	r3, r0
 1295 0010 0132     		adds	r2, r2, #1
 1296 0012 4262     		str	r2, [r0, #36]
 1297 0014 1344     		add	r3, r3, r2
 1298 0016 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 1299 001a 222B     		cmp	r3, #34
 1300 001c 01D0     		beq	.L278
 1301 001e 0020     		movs	r0, #0
 1302 0020 10BD     		pop	{r4, pc}
 1303              	.L278:
 1304 0022 BDE81040 		pop	{r4, lr}
 1305 0026 FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1306              	.L274:
 1307 002a 40F25B23 		movw	r3, #603
 1308 002e 034A     		ldr	r2, .L279
 1309 0030 0349     		ldr	r1, .L279+4
 1310 0032 0448     		ldr	r0, .L279+8
 1311 0034 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
ARM GAS  /tmp/ccgspWsN.s 			page 24


 1312 0038 0020     		movs	r0, #0
 1313 003a 10BD     		pop	{r4, pc}
 1314              	.L280:
 1315              		.align	2
 1316              	.L279:
 1317 003c 00000000 		.word	.LANCHOR4
 1318 0040 00000000 		.word	.LC6
 1319 0044 00000000 		.word	reprap
 1320              		.size	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef, .-_ZN11GCodeBuffer15GetQuotedStringERK9Strin
 1321              		.section	.text._ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 1322              		.align	1
 1323              		.p2align 2,,3
 1324              		.global	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1325              		.syntax unified
 1326              		.thumb
 1327              		.thumb_func
 1328              		.fpu softvfp
 1329              		.type	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, %function
 1330              	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef:
 1331              		@ args = 0, pretend = 0, frame = 0
 1332              		@ frame_needed = 0, uses_anonymous_args = 0
 1333 0000 0022     		movs	r2, #0
 1334 0002 38B5     		push	{r3, r4, r5, lr}
 1335 0004 0B68     		ldr	r3, [r1]
 1336 0006 1A70     		strb	r2, [r3]
 1337 0008 426A     		ldr	r2, [r0, #36]
 1338 000a 8318     		adds	r3, r0, r2
 1339 000c 93F84D30 		ldrb	r3, [r3, #77]	@ zero_extendqisi2
 1340 0010 222B     		cmp	r3, #34
 1341 0012 1CD0     		beq	.L289
 1342 0014 0D46     		mov	r5, r1
 1343 0016 016A     		ldr	r1, [r0, #32]
 1344 0018 0132     		adds	r2, r2, #1
 1345 001a 1F2B     		cmp	r3, #31
 1346 001c 0446     		mov	r4, r0
 1347 001e 4262     		str	r2, [r0, #36]
 1348 0020 8161     		str	r1, [r0, #24]
 1349 0022 0BDD     		ble	.L285
 1350 0024 1946     		mov	r1, r3
 1351              	.L286:
 1352 0026 2846     		mov	r0, r5
 1353 0028 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1354 002c 636A     		ldr	r3, [r4, #36]
 1355 002e 5A1C     		adds	r2, r3, #1
 1356 0030 6262     		str	r2, [r4, #36]
 1357 0032 2344     		add	r3, r3, r4
 1358 0034 93F84D10 		ldrb	r1, [r3, #77]	@ zero_extendqisi2
 1359 0038 1F29     		cmp	r1, #31
 1360 003a F4DC     		bgt	.L286
 1361              	.L285:
 1362 003c 2846     		mov	r0, r5
 1363 003e FFF7FEFF 		bl	_ZNK9StringRef19StripTrailingSpacesEv
 1364 0042 2B68     		ldr	r3, [r5]
 1365 0044 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 1366 0046 0030     		adds	r0, r0, #0
 1367 0048 18BF     		it	ne
 1368 004a 0120     		movne	r0, #1
ARM GAS  /tmp/ccgspWsN.s 			page 25


 1369 004c 38BD     		pop	{r3, r4, r5, pc}
 1370              	.L289:
 1371 004e BDE83840 		pop	{r3, r4, r5, lr}
 1372 0052 FFF7FEBF 		b	_ZN11GCodeBuffer23InternalGetQuotedStringERK9StringRef
 1373              		.size	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer31Internal
 1374 0056 00BF     		.section	.text._ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef,"ax",%progbits
 1375              		.align	1
 1376              		.p2align 2,,3
 1377              		.global	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 1378              		.syntax unified
 1379              		.thumb
 1380              		.thumb_func
 1381              		.fpu softvfp
 1382              		.type	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, %function
 1383              	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef:
 1384              		@ args = 0, pretend = 0, frame = 0
 1385              		@ frame_needed = 0, uses_anonymous_args = 0
 1386 0000 08B5     		push	{r3, lr}
 1387 0002 436A     		ldr	r3, [r0, #36]
 1388 0004 002B     		cmp	r3, #0
 1389 0006 05DB     		blt	.L291
 1390 0008 0133     		adds	r3, r3, #1
 1391 000a 4362     		str	r3, [r0, #36]
 1392 000c BDE80840 		pop	{r3, lr}
 1393 0010 FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1394              	.L291:
 1395 0014 4FF42373 		mov	r3, #652
 1396 0018 034A     		ldr	r2, .L293
 1397 001a 0449     		ldr	r1, .L293+4
 1398 001c 0448     		ldr	r0, .L293+8
 1399 001e FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1400 0022 0020     		movs	r0, #0
 1401 0024 08BD     		pop	{r3, pc}
 1402              	.L294:
 1403 0026 00BF     		.align	2
 1404              	.L293:
 1405 0028 00000000 		.word	.LANCHOR5
 1406 002c 00000000 		.word	.LC6
 1407 0030 00000000 		.word	reprap
 1408              		.size	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef, .-_ZN11GCodeBuffer23GetPossiblyQuote
 1409              		.section	.text._ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef,"ax",%progbits
 1410              		.align	1
 1411              		.p2align 2,,3
 1412              		.global	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 1413              		.syntax unified
 1414              		.thumb
 1415              		.thumb_func
 1416              		.fpu softvfp
 1417              		.type	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, %function
 1418              	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef:
 1419              		@ args = 0, pretend = 0, frame = 0
 1420              		@ frame_needed = 0, uses_anonymous_args = 0
 1421              		@ link register save eliminated.
 1422 0000 30B4     		push	{r4, r5}
 1423 0002 4369     		ldr	r3, [r0, #20]
 1424 0004 8569     		ldr	r5, [r0, #24]
 1425 0006 4362     		str	r3, [r0, #36]
ARM GAS  /tmp/ccgspWsN.s 			page 26


 1426 0008 AB42     		cmp	r3, r5
 1427 000a 0DD2     		bcs	.L298
 1428 000c 03F14C02 		add	r2, r3, #76
 1429 0010 0244     		add	r2, r2, r0
 1430 0012 02E0     		b	.L299
 1431              	.L297:
 1432 0014 9D42     		cmp	r5, r3
 1433 0016 4362     		str	r3, [r0, #36]
 1434 0018 06D9     		bls	.L298
 1435              	.L299:
 1436 001a 12F8014F 		ldrb	r4, [r2, #1]!	@ zero_extendqisi2
 1437 001e 0133     		adds	r3, r3, #1
 1438 0020 202C     		cmp	r4, #32
 1439 0022 F7D0     		beq	.L297
 1440 0024 092C     		cmp	r4, #9
 1441 0026 F5D0     		beq	.L297
 1442              	.L298:
 1443 0028 30BC     		pop	{r4, r5}
 1444 002a FFF7FEBF 		b	_ZN11GCodeBuffer31InternalGetPossiblyQuotedStringERK9StringRef
 1445              		.size	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef, .-_ZN11GCodeBuffer22GetUnprecedentedS
 1446 002e 00BF     		.section	.text.hot._ZN11GCodeBuffer9GetIValueEv,"ax",%progbits
 1447              		.align	1
 1448              		.p2align 2,,3
 1449              		.global	_ZN11GCodeBuffer9GetIValueEv
 1450              		.syntax unified
 1451              		.thumb
 1452              		.thumb_func
 1453              		.fpu softvfp
 1454              		.type	_ZN11GCodeBuffer9GetIValueEv, %function
 1455              	_ZN11GCodeBuffer9GetIValueEv:
 1456              		@ args = 0, pretend = 0, frame = 0
 1457              		@ frame_needed = 0, uses_anonymous_args = 0
 1458 0000 10B5     		push	{r4, lr}
 1459 0002 0446     		mov	r4, r0
 1460 0004 406A     		ldr	r0, [r0, #36]
 1461 0006 0028     		cmp	r0, #0
 1462 0008 09DB     		blt	.L306
 1463 000a 4E30     		adds	r0, r0, #78
 1464 000c 2044     		add	r0, r0, r4
 1465 000e 0A22     		movs	r2, #10
 1466 0010 0021     		movs	r1, #0
 1467 0012 FFF7FEFF 		bl	strtol
 1468 0016 4FF0FF33 		mov	r3, #-1
 1469 001a 6362     		str	r3, [r4, #36]
 1470 001c 10BD     		pop	{r4, pc}
 1471              	.L306:
 1472 001e 40F2C123 		movw	r3, #705
 1473 0022 034A     		ldr	r2, .L309
 1474 0024 0349     		ldr	r1, .L309+4
 1475 0026 0448     		ldr	r0, .L309+8
 1476 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1477 002c 0020     		movs	r0, #0
 1478 002e 10BD     		pop	{r4, pc}
 1479              	.L310:
 1480              		.align	2
 1481              	.L309:
 1482 0030 00000000 		.word	.LANCHOR6
ARM GAS  /tmp/ccgspWsN.s 			page 27


 1483 0034 00000000 		.word	.LC6
 1484 0038 00000000 		.word	reprap
 1485              		.size	_ZN11GCodeBuffer9GetIValueEv, .-_ZN11GCodeBuffer9GetIValueEv
 1486              		.section	.text._ZN11GCodeBuffer10GetUIValueEv,"ax",%progbits
 1487              		.align	1
 1488              		.p2align 2,,3
 1489              		.global	_ZN11GCodeBuffer10GetUIValueEv
 1490              		.syntax unified
 1491              		.thumb
 1492              		.thumb_func
 1493              		.fpu softvfp
 1494              		.type	_ZN11GCodeBuffer10GetUIValueEv, %function
 1495              	_ZN11GCodeBuffer10GetUIValueEv:
 1496              		@ args = 0, pretend = 0, frame = 0
 1497              		@ frame_needed = 0, uses_anonymous_args = 0
 1498 0000 10B5     		push	{r4, lr}
 1499 0002 0446     		mov	r4, r0
 1500 0004 406A     		ldr	r0, [r0, #36]
 1501 0006 0028     		cmp	r0, #0
 1502 0008 09DB     		blt	.L312
 1503 000a 4E30     		adds	r0, r0, #78
 1504 000c 2044     		add	r0, r0, r4
 1505 000e 0A22     		movs	r2, #10
 1506 0010 0021     		movs	r1, #0
 1507 0012 FFF7FEFF 		bl	_Z11SafeStrtoulPcPS_i
 1508 0016 4FF0FF33 		mov	r3, #-1
 1509 001a 6362     		str	r3, [r4, #36]
 1510 001c 10BD     		pop	{r4, pc}
 1511              	.L312:
 1512 001e 40F2CF23 		movw	r3, #719
 1513 0022 034A     		ldr	r2, .L315
 1514 0024 0349     		ldr	r1, .L315+4
 1515 0026 0448     		ldr	r0, .L315+8
 1516 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1517 002c 0020     		movs	r0, #0
 1518 002e 10BD     		pop	{r4, pc}
 1519              	.L316:
 1520              		.align	2
 1521              	.L315:
 1522 0030 00000000 		.word	.LANCHOR7
 1523 0034 00000000 		.word	.LC6
 1524 0038 00000000 		.word	reprap
 1525              		.size	_ZN11GCodeBuffer10GetUIValueEv, .-_ZN11GCodeBuffer10GetUIValueEv
 1526              		.section	.text._ZN11GCodeBuffer12TryGetFValueEcRfRb,"ax",%progbits
 1527              		.align	1
 1528              		.p2align 2,,3
 1529              		.global	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1530              		.syntax unified
 1531              		.thumb
 1532              		.thumb_func
 1533              		.fpu softvfp
 1534              		.type	_ZN11GCodeBuffer12TryGetFValueEcRfRb, %function
 1535              	_ZN11GCodeBuffer12TryGetFValueEcRfRb:
 1536              		@ args = 0, pretend = 0, frame = 0
 1537              		@ frame_needed = 0, uses_anonymous_args = 0
 1538 0000 70B5     		push	{r4, r5, r6, lr}
 1539 0002 1546     		mov	r5, r2
ARM GAS  /tmp/ccgspWsN.s 			page 28


 1540 0004 1C46     		mov	r4, r3
 1541 0006 0646     		mov	r6, r0
 1542 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1543 000c 28B1     		cbz	r0, .L317
 1544 000e 3046     		mov	r0, r6
 1545 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1546 0014 0123     		movs	r3, #1
 1547 0016 2860     		str	r0, [r5]	@ float
 1548 0018 2370     		strb	r3, [r4]
 1549              	.L317:
 1550 001a 70BD     		pop	{r4, r5, r6, pc}
 1551              		.size	_ZN11GCodeBuffer12TryGetFValueEcRfRb, .-_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1552              		.section	.text._ZN11GCodeBuffer12TryGetIValueEcRlRb,"ax",%progbits
 1553              		.align	1
 1554              		.p2align 2,,3
 1555              		.global	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1556              		.syntax unified
 1557              		.thumb
 1558              		.thumb_func
 1559              		.fpu softvfp
 1560              		.type	_ZN11GCodeBuffer12TryGetIValueEcRlRb, %function
 1561              	_ZN11GCodeBuffer12TryGetIValueEcRlRb:
 1562              		@ args = 0, pretend = 0, frame = 0
 1563              		@ frame_needed = 0, uses_anonymous_args = 0
 1564 0000 70B5     		push	{r4, r5, r6, lr}
 1565 0002 1546     		mov	r5, r2
 1566 0004 1C46     		mov	r4, r3
 1567 0006 0646     		mov	r6, r0
 1568 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1569 000c 28B1     		cbz	r0, .L323
 1570 000e 3046     		mov	r0, r6
 1571 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1572 0014 0123     		movs	r3, #1
 1573 0016 2860     		str	r0, [r5]
 1574 0018 2370     		strb	r3, [r4]
 1575              	.L323:
 1576 001a 70BD     		pop	{r4, r5, r6, pc}
 1577              		.size	_ZN11GCodeBuffer12TryGetIValueEcRlRb, .-_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1578              		.section	.text._ZN11GCodeBuffer13TryGetUIValueEcRmRb,"ax",%progbits
 1579              		.align	1
 1580              		.p2align 2,,3
 1581              		.global	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1582              		.syntax unified
 1583              		.thumb
 1584              		.thumb_func
 1585              		.fpu softvfp
 1586              		.type	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, %function
 1587              	_ZN11GCodeBuffer13TryGetUIValueEcRmRb:
 1588              		@ args = 0, pretend = 0, frame = 0
 1589              		@ frame_needed = 0, uses_anonymous_args = 0
 1590 0000 70B5     		push	{r4, r5, r6, lr}
 1591 0002 1546     		mov	r5, r2
 1592 0004 1C46     		mov	r4, r3
 1593 0006 0646     		mov	r6, r0
 1594 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1595 000c 28B1     		cbz	r0, .L329
 1596 000e 3046     		mov	r0, r6
ARM GAS  /tmp/ccgspWsN.s 			page 29


 1597 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1598 0014 0123     		movs	r3, #1
 1599 0016 2860     		str	r0, [r5]
 1600 0018 2370     		strb	r3, [r4]
 1601              	.L329:
 1602 001a 70BD     		pop	{r4, r5, r6, pc}
 1603              		.size	_ZN11GCodeBuffer13TryGetUIValueEcRmRb, .-_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 1604              		.section	.text._ZN11GCodeBuffer12TryGetBValueEcRbS0_,"ax",%progbits
 1605              		.align	1
 1606              		.p2align 2,,3
 1607              		.global	_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 1608              		.syntax unified
 1609              		.thumb
 1610              		.thumb_func
 1611              		.fpu softvfp
 1612              		.type	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, %function
 1613              	_ZN11GCodeBuffer12TryGetBValueEcRbS0_:
 1614              		@ args = 0, pretend = 0, frame = 0
 1615              		@ frame_needed = 0, uses_anonymous_args = 0
 1616 0000 70B5     		push	{r4, r5, r6, lr}
 1617 0002 1546     		mov	r5, r2
 1618 0004 1C46     		mov	r4, r3
 1619 0006 0646     		mov	r6, r0
 1620 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1621 000c 50B1     		cbz	r0, .L335
 1622 000e 3046     		mov	r0, r6
 1623 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1624 0014 0028     		cmp	r0, #0
 1625 0016 4FF00103 		mov	r3, #1
 1626 001a D4BF     		ite	le
 1627 001c 0020     		movle	r0, #0
 1628 001e 0120     		movgt	r0, #1
 1629 0020 2870     		strb	r0, [r5]
 1630 0022 2370     		strb	r3, [r4]
 1631              	.L335:
 1632 0024 70BD     		pop	{r4, r5, r6, pc}
 1633              		.size	_ZN11GCodeBuffer12TryGetBValueEcRbS0_, .-_ZN11GCodeBuffer12TryGetBValueEcRbS0_
 1634 0026 00BF     		.section	.text._ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb,"ax",%progbits
 1635              		.align	1
 1636              		.p2align 2,,3
 1637              		.global	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1638              		.syntax unified
 1639              		.thumb
 1640              		.thumb_func
 1641              		.fpu softvfp
 1642              		.type	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, %function
 1643              	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb:
 1644              		@ args = 12, pretend = 0, frame = 8
 1645              		@ frame_needed = 0, uses_anonymous_args = 0
 1646 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1647 0004 83B0     		sub	sp, sp, #12
 1648 0006 1546     		mov	r5, r2
 1649 0008 1F46     		mov	r7, r3
 1650 000a 0646     		mov	r6, r0
 1651 000c 8946     		mov	r9, r1
 1652 000e 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 1653 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccgspWsN.s 			page 30


 1654 0016 0446     		mov	r4, r0
 1655 0018 18B9     		cbnz	r0, .L348
 1656 001a 2046     		mov	r0, r4
 1657 001c 03B0     		add	sp, sp, #12
 1658              		@ sp needed
 1659 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1660              	.L348:
 1661 0022 02AA     		add	r2, sp, #8
 1662 0024 4346     		mov	r3, r8
 1663 0026 42F8045D 		str	r5, [r2, #-4]!
 1664 002a 3946     		mov	r1, r7
 1665 002c 3046     		mov	r0, r6
 1666 002e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1667 0032 019B     		ldr	r3, [sp, #4]
 1668 0034 9D42     		cmp	r5, r3
 1669 0036 09D0     		beq	.L349
 1670 0038 2B46     		mov	r3, r5
 1671 003a 4A46     		mov	r2, r9
 1672 003c 0749     		ldr	r1, .L350
 1673 003e 0A98     		ldr	r0, [sp, #40]
 1674 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1675 0044 2046     		mov	r0, r4
 1676 0046 03B0     		add	sp, sp, #12
 1677              		@ sp needed
 1678 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1679              	.L349:
 1680 004c 0024     		movs	r4, #0
 1681 004e 0123     		movs	r3, #1
 1682 0050 2046     		mov	r0, r4
 1683 0052 0B9A     		ldr	r2, [sp, #44]
 1684 0054 1370     		strb	r3, [r2]
 1685 0056 03B0     		add	sp, sp, #12
 1686              		@ sp needed
 1687 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1688              	.L351:
 1689              		.align	2
 1690              	.L350:
 1691 005c 00000000 		.word	.LC10
 1692              		.size	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb, .-_ZN11GCodeBuffer13TryGetUIArrayEcjPmR
 1693              		.section	.text._ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb,"ax",%progbits
 1694              		.align	1
 1695              		.p2align 2,,3
 1696              		.global	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1697              		.syntax unified
 1698              		.thumb
 1699              		.thumb_func
 1700              		.fpu softvfp
 1701              		.type	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, %function
 1702              	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb:
 1703              		@ args = 12, pretend = 0, frame = 8
 1704              		@ frame_needed = 0, uses_anonymous_args = 0
 1705 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1706 0004 83B0     		sub	sp, sp, #12
 1707 0006 1546     		mov	r5, r2
 1708 0008 1F46     		mov	r7, r3
 1709 000a 0646     		mov	r6, r0
 1710 000c 8946     		mov	r9, r1
ARM GAS  /tmp/ccgspWsN.s 			page 31


 1711 000e 9DF83080 		ldrb	r8, [sp, #48]	@ zero_extendqisi2
 1712 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1713 0016 0446     		mov	r4, r0
 1714 0018 18B9     		cbnz	r0, .L359
 1715 001a 2046     		mov	r0, r4
 1716 001c 03B0     		add	sp, sp, #12
 1717              		@ sp needed
 1718 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1719              	.L359:
 1720 0022 02AA     		add	r2, sp, #8
 1721 0024 4346     		mov	r3, r8
 1722 0026 42F8045D 		str	r5, [r2, #-4]!
 1723 002a 3946     		mov	r1, r7
 1724 002c 3046     		mov	r0, r6
 1725 002e FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1726 0032 019B     		ldr	r3, [sp, #4]
 1727 0034 9D42     		cmp	r5, r3
 1728 0036 09D0     		beq	.L360
 1729 0038 2B46     		mov	r3, r5
 1730 003a 4A46     		mov	r2, r9
 1731 003c 0749     		ldr	r1, .L361
 1732 003e 0A98     		ldr	r0, [sp, #40]
 1733 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1734 0044 2046     		mov	r0, r4
 1735 0046 03B0     		add	sp, sp, #12
 1736              		@ sp needed
 1737 0048 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1738              	.L360:
 1739 004c 0024     		movs	r4, #0
 1740 004e 0123     		movs	r3, #1
 1741 0050 2046     		mov	r0, r4
 1742 0052 0B9A     		ldr	r2, [sp, #44]
 1743 0054 1370     		strb	r3, [r2]
 1744 0056 03B0     		add	sp, sp, #12
 1745              		@ sp needed
 1746 0058 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1747              	.L362:
 1748              		.align	2
 1749              	.L361:
 1750 005c 00000000 		.word	.LC10
 1751              		.size	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb, .-_ZN11GCodeBuffer16TryGetFloatArray
 1752              		.section	.text._ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb,"ax",%progbits
 1753              		.align	1
 1754              		.p2align 2,,3
 1755              		.global	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 1756              		.syntax unified
 1757              		.thumb
 1758              		.thumb_func
 1759              		.fpu softvfp
 1760              		.type	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, %function
 1761              	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb:
 1762              		@ args = 0, pretend = 0, frame = 0
 1763              		@ frame_needed = 0, uses_anonymous_args = 0
 1764 0000 70B5     		push	{r4, r5, r6, lr}
 1765 0002 1646     		mov	r6, r2
 1766 0004 1C46     		mov	r4, r3
 1767 0006 0546     		mov	r5, r0
ARM GAS  /tmp/ccgspWsN.s 			page 32


 1768 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1769 000c 08B9     		cbnz	r0, .L364
 1770              	.L367:
 1771 000e 0020     		movs	r0, #0
 1772 0010 70BD     		pop	{r4, r5, r6, pc}
 1773              	.L364:
 1774 0012 3146     		mov	r1, r6
 1775 0014 2846     		mov	r0, r5
 1776 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1777 001a 0028     		cmp	r0, #0
 1778 001c F7D0     		beq	.L367
 1779 001e 0123     		movs	r3, #1
 1780 0020 2370     		strb	r3, [r4]
 1781 0022 70BD     		pop	{r4, r5, r6, pc}
 1782              		.size	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer18TryGetQuotedString
 1783              		.section	.text._ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb,"ax",%progbits
 1784              		.align	1
 1785              		.p2align 2,,3
 1786              		.global	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 1787              		.syntax unified
 1788              		.thumb
 1789              		.thumb_func
 1790              		.fpu softvfp
 1791              		.type	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, %function
 1792              	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb:
 1793              		@ args = 0, pretend = 0, frame = 0
 1794              		@ frame_needed = 0, uses_anonymous_args = 0
 1795 0000 70B5     		push	{r4, r5, r6, lr}
 1796 0002 1646     		mov	r6, r2
 1797 0004 1C46     		mov	r4, r3
 1798 0006 0546     		mov	r5, r0
 1799 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1800 000c 08B9     		cbnz	r0, .L371
 1801              	.L374:
 1802 000e 0020     		movs	r0, #0
 1803 0010 70BD     		pop	{r4, r5, r6, pc}
 1804              	.L371:
 1805 0012 3146     		mov	r1, r6
 1806 0014 2846     		mov	r0, r5
 1807 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 1808 001a 0028     		cmp	r0, #0
 1809 001c F7D0     		beq	.L374
 1810 001e 0123     		movs	r3, #1
 1811 0020 2370     		strb	r3, [r4]
 1812 0022 70BD     		pop	{r4, r5, r6, pc}
 1813              		.size	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb, .-_ZN11GCodeBuffer26TryGetPoss
 1814              		.section	.text._ZN11GCodeBuffer12GetIPAddressEPh,"ax",%progbits
 1815              		.align	1
 1816              		.p2align 2,,3
 1817              		.global	_ZN11GCodeBuffer12GetIPAddressEPh
 1818              		.syntax unified
 1819              		.thumb
 1820              		.thumb_func
 1821              		.fpu softvfp
 1822              		.type	_ZN11GCodeBuffer12GetIPAddressEPh, %function
 1823              	_ZN11GCodeBuffer12GetIPAddressEPh:
 1824              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccgspWsN.s 			page 33


 1825              		@ frame_needed = 0, uses_anonymous_args = 0
 1826 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1827 0002 446A     		ldr	r4, [r0, #36]
 1828 0004 83B0     		sub	sp, sp, #12
 1829 0006 002C     		cmp	r4, #0
 1830 0008 1EDB     		blt	.L388
 1831 000a 0646     		mov	r6, r0
 1832 000c 0025     		movs	r5, #0
 1833 000e 4E34     		adds	r4, r4, #78
 1834 0010 0444     		add	r4, r4, r0
 1835 0012 4F1E     		subs	r7, r1, #1
 1836              	.L383:
 1837 0014 0A22     		movs	r2, #10
 1838 0016 01A9     		add	r1, sp, #4
 1839 0018 2046     		mov	r0, r4
 1840 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1841 001e 019B     		ldr	r3, [sp, #4]
 1842 0020 0135     		adds	r5, r5, #1
 1843 0022 9C42     		cmp	r4, r3
 1844 0024 0AD0     		beq	.L380
 1845 0026 FF28     		cmp	r0, #255
 1846 0028 08D8     		bhi	.L380
 1847 002a 07F8010F 		strb	r0, [r7, #1]!
 1848 002e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1849 0030 2E2A     		cmp	r2, #46
 1850 0032 12D1     		bne	.L382
 1851 0034 042D     		cmp	r5, #4
 1852 0036 01D0     		beq	.L380
 1853 0038 5C1C     		adds	r4, r3, #1
 1854 003a EBE7     		b	.L383
 1855              	.L380:
 1856 003c 4FF0FF33 		mov	r3, #-1
 1857 0040 0020     		movs	r0, #0
 1858 0042 7362     		str	r3, [r6, #36]
 1859              	.L379:
 1860 0044 03B0     		add	sp, sp, #12
 1861              		@ sp needed
 1862 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 1863              	.L388:
 1864 0048 0848     		ldr	r0, .L389
 1865 004a 4FF45173 		mov	r3, #836
 1866 004e 084A     		ldr	r2, .L389+4
 1867 0050 0849     		ldr	r1, .L389+8
 1868 0052 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1869 0056 0020     		movs	r0, #0
 1870 0058 F4E7     		b	.L379
 1871              	.L382:
 1872 005a A5F10400 		sub	r0, r5, #4
 1873 005e 4FF0FF33 		mov	r3, #-1
 1874 0062 B0FA80F0 		clz	r0, r0
 1875 0066 7362     		str	r3, [r6, #36]
 1876 0068 4009     		lsrs	r0, r0, #5
 1877 006a EBE7     		b	.L379
 1878              	.L390:
 1879              		.align	2
 1880              	.L389:
 1881 006c 00000000 		.word	reprap
ARM GAS  /tmp/ccgspWsN.s 			page 34


 1882 0070 00000000 		.word	.LANCHOR8
 1883 0074 00000000 		.word	.LC6
 1884              		.size	_ZN11GCodeBuffer12GetIPAddressEPh, .-_ZN11GCodeBuffer12GetIPAddressEPh
 1885              		.section	.text._ZN11GCodeBuffer12GetIPAddressERm,"ax",%progbits
 1886              		.align	1
 1887              		.p2align 2,,3
 1888              		.global	_ZN11GCodeBuffer12GetIPAddressERm
 1889              		.syntax unified
 1890              		.thumb
 1891              		.thumb_func
 1892              		.fpu softvfp
 1893              		.type	_ZN11GCodeBuffer12GetIPAddressERm, %function
 1894              	_ZN11GCodeBuffer12GetIPAddressERm:
 1895              		@ args = 0, pretend = 0, frame = 8
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897 0000 10B5     		push	{r4, lr}
 1898 0002 436A     		ldr	r3, [r0, #36]
 1899 0004 82B0     		sub	sp, sp, #8
 1900 0006 002B     		cmp	r3, #0
 1901 0008 09DB     		blt	.L396
 1902 000a 0C46     		mov	r4, r1
 1903 000c 01A9     		add	r1, sp, #4
 1904 000e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 1905 0012 10B1     		cbz	r0, .L393
 1906 0014 0120     		movs	r0, #1
 1907 0016 019B     		ldr	r3, [sp, #4]
 1908 0018 2360     		str	r3, [r4]
 1909              	.L393:
 1910 001a 02B0     		add	sp, sp, #8
 1911              		@ sp needed
 1912 001c 10BD     		pop	{r4, pc}
 1913              	.L396:
 1914 001e 40F26A33 		movw	r3, #874
 1915 0022 044A     		ldr	r2, .L397
 1916 0024 0449     		ldr	r1, .L397+4
 1917 0026 0548     		ldr	r0, .L397+8
 1918 0028 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1919 002c 0020     		movs	r0, #0
 1920 002e 02B0     		add	sp, sp, #8
 1921              		@ sp needed
 1922 0030 10BD     		pop	{r4, pc}
 1923              	.L398:
 1924 0032 00BF     		.align	2
 1925              	.L397:
 1926 0034 00000000 		.word	.LANCHOR9
 1927 0038 00000000 		.word	.LC6
 1928 003c 00000000 		.word	reprap
 1929              		.size	_ZN11GCodeBuffer12GetIPAddressERm, .-_ZN11GCodeBuffer12GetIPAddressERm
 1930              		.section	.text._ZN11GCodeBuffer13GetMacAddressEPh,"ax",%progbits
 1931              		.align	1
 1932              		.p2align 2,,3
 1933              		.global	_ZN11GCodeBuffer13GetMacAddressEPh
 1934              		.syntax unified
 1935              		.thumb
 1936              		.thumb_func
 1937              		.fpu softvfp
 1938              		.type	_ZN11GCodeBuffer13GetMacAddressEPh, %function
ARM GAS  /tmp/ccgspWsN.s 			page 35


 1939              	_ZN11GCodeBuffer13GetMacAddressEPh:
 1940              		@ args = 0, pretend = 0, frame = 8
 1941              		@ frame_needed = 0, uses_anonymous_args = 0
 1942 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1943 0002 446A     		ldr	r4, [r0, #36]
 1944 0004 83B0     		sub	sp, sp, #12
 1945 0006 002C     		cmp	r4, #0
 1946 0008 27DB     		blt	.L410
 1947 000a 0646     		mov	r6, r0
 1948 000c 0025     		movs	r5, #0
 1949 000e 0444     		add	r4, r4, r0
 1950 0010 4E34     		adds	r4, r4, #78
 1951 0012 4F1E     		subs	r7, r1, #1
 1952              	.L405:
 1953 0014 1022     		movs	r2, #16
 1954 0016 01A9     		add	r1, sp, #4
 1955 0018 2046     		mov	r0, r4
 1956 001a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1957 001e 019B     		ldr	r3, [sp, #4]
 1958 0020 0135     		adds	r5, r5, #1
 1959 0022 9C42     		cmp	r4, r3
 1960 0024 0AD0     		beq	.L402
 1961 0026 FF28     		cmp	r0, #255
 1962 0028 08D8     		bhi	.L402
 1963 002a 07F8010F 		strb	r0, [r7, #1]!
 1964 002e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1965 0030 3A2A     		cmp	r2, #58
 1966 0032 09D1     		bne	.L404
 1967 0034 062D     		cmp	r5, #6
 1968 0036 01D0     		beq	.L402
 1969 0038 5C1C     		adds	r4, r3, #1
 1970 003a EBE7     		b	.L405
 1971              	.L402:
 1972 003c 4FF0FF33 		mov	r3, #-1
 1973 0040 0020     		movs	r0, #0
 1974 0042 7362     		str	r3, [r6, #36]
 1975              	.L401:
 1976 0044 03B0     		add	sp, sp, #12
 1977              		@ sp needed
 1978 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 1979              	.L404:
 1980 0048 A5F10600 		sub	r0, r5, #6
 1981 004c 4FF0FF33 		mov	r3, #-1
 1982 0050 B0FA80F0 		clz	r0, r0
 1983 0054 7362     		str	r3, [r6, #36]
 1984 0056 4009     		lsrs	r0, r0, #5
 1985 0058 F4E7     		b	.L401
 1986              	.L410:
 1987 005a 0448     		ldr	r0, .L411
 1988 005c 4FF45F73 		mov	r3, #892
 1989 0060 034A     		ldr	r2, .L411+4
 1990 0062 0449     		ldr	r1, .L411+8
 1991 0064 FFF7FEFF 		bl	_ZNK6RepRap19ReportInternalErrorEPKcS1_i
 1992 0068 0020     		movs	r0, #0
 1993 006a EBE7     		b	.L401
 1994              	.L412:
 1995              		.align	2
ARM GAS  /tmp/ccgspWsN.s 			page 36


 1996              	.L411:
 1997 006c 00000000 		.word	reprap
 1998 0070 00000000 		.word	.LANCHOR10
 1999 0074 00000000 		.word	.LC6
 2000              		.size	_ZN11GCodeBuffer13GetMacAddressEPh, .-_ZN11GCodeBuffer13GetMacAddressEPh
 2001              		.section	.text._ZNK11GCodeBuffer20OriginalMachineStateEv,"ax",%progbits
 2002              		.align	1
 2003              		.p2align 2,,3
 2004              		.global	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2005              		.syntax unified
 2006              		.thumb
 2007              		.thumb_func
 2008              		.fpu softvfp
 2009              		.type	_ZNK11GCodeBuffer20OriginalMachineStateEv, %function
 2010              	_ZNK11GCodeBuffer20OriginalMachineStateEv:
 2011              		@ args = 0, pretend = 0, frame = 0
 2012              		@ frame_needed = 0, uses_anonymous_args = 0
 2013              		@ link register save eliminated.
 2014 0000 8068     		ldr	r0, [r0, #8]
 2015 0002 00E0     		b	.L414
 2016              	.L415:
 2017 0004 1846     		mov	r0, r3
 2018              	.L414:
 2019 0006 0368     		ldr	r3, [r0]
 2020 0008 002B     		cmp	r3, #0
 2021 000a FBD1     		bne	.L415
 2022 000c 7047     		bx	lr
 2023              		.size	_ZNK11GCodeBuffer20OriginalMachineStateEv, .-_ZNK11GCodeBuffer20OriginalMachineStateEv
 2024 000e 00BF     		.section	.text._ZN11GCodeBuffer9PushStateEv,"ax",%progbits
 2025              		.align	1
 2026              		.p2align 2,,3
 2027              		.global	_ZN11GCodeBuffer9PushStateEv
 2028              		.syntax unified
 2029              		.thumb
 2030              		.thumb_func
 2031              		.fpu softvfp
 2032              		.type	_ZN11GCodeBuffer9PushStateEv, %function
 2033              	_ZN11GCodeBuffer9PushStateEv:
 2034              		@ args = 0, pretend = 0, frame = 0
 2035              		@ frame_needed = 0, uses_anonymous_args = 0
 2036 0000 8368     		ldr	r3, [r0, #8]
 2037 0002 43B1     		cbz	r3, .L417
 2038 0004 0022     		movs	r2, #0
 2039              	.L418:
 2040 0006 1B68     		ldr	r3, [r3]
 2041 0008 0132     		adds	r2, r2, #1
 2042 000a 002B     		cmp	r3, #0
 2043 000c FBD1     		bne	.L418
 2044 000e 052A     		cmp	r2, #5
 2045 0010 01D9     		bls	.L417
 2046 0012 1846     		mov	r0, r3
 2047 0014 7047     		bx	lr
 2048              	.L417:
 2049 0016 70B5     		push	{r4, r5, r6, lr}
 2050 0018 0546     		mov	r5, r0
 2051 001a FFF7FEFF 		bl	_ZN17GCodeMachineState8AllocateEv
 2052 001e 0446     		mov	r4, r0
ARM GAS  /tmp/ccgspWsN.s 			page 37


 2053 0020 AE68     		ldr	r6, [r5, #8]
 2054 0022 8068     		ldr	r0, [r0, #8]
 2055 0024 7368     		ldr	r3, [r6, #4]	@ float
 2056 0026 2660     		str	r6, [r4]
 2057 0028 6360     		str	r3, [r4, #4]	@ float
 2058 002a 18B1     		cbz	r0, .L420
 2059 002c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2060 0030 0023     		movs	r3, #0
 2061 0032 A360     		str	r3, [r4, #8]
 2062              	.L420:
 2063 0034 B068     		ldr	r0, [r6, #8]
 2064 0036 A060     		str	r0, [r4, #8]
 2065 0038 08B1     		cbz	r0, .L421
 2066 003a FFF7FEFF 		bl	_ZN9FileStore9DuplicateEv
 2067              	.L421:
 2068 003e AB68     		ldr	r3, [r5, #8]
 2069 0040 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 2070 0042 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2071 0044 D968     		ldr	r1, [r3, #12]
 2072 0046 60F30002 		bfi	r2, r0, #0, #1
 2073 004a 2276     		strb	r2, [r4, #24]
 2074 004c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2075 004e 207E     		ldrb	r0, [r4, #24]	@ zero_extendqisi2
 2076 0050 C2F34002 		ubfx	r2, r2, #1, #1
 2077 0054 62F34100 		bfi	r0, r2, #1, #1
 2078 0058 2076     		strb	r0, [r4, #24]
 2079 005a 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2080 005c C0B2     		uxtb	r0, r0
 2081 005e C2F38002 		ubfx	r2, r2, #2, #1
 2082 0062 62F38200 		bfi	r0, r2, #2, #1
 2083 0066 2076     		strb	r0, [r4, #24]
 2084 0068 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2085 006a C0B2     		uxtb	r0, r0
 2086 006c C2F3C002 		ubfx	r2, r2, #3, #1
 2087 0070 62F3C300 		bfi	r0, r2, #3, #1
 2088 0074 2076     		strb	r0, [r4, #24]
 2089 0076 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2090 0078 C0B2     		uxtb	r0, r0
 2091 007a C2F30012 		ubfx	r2, r2, #4, #1
 2092 007e 62F30410 		bfi	r0, r2, #4, #1
 2093 0082 2076     		strb	r0, [r4, #24]
 2094 0084 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2095 0086 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 2096 0088 C0F34010 		ubfx	r0, r0, #5, #1
 2097 008c 60F34512 		bfi	r2, r0, #5, #1
 2098 0090 02F0BF02 		and	r2, r2, #191
 2099 0094 6FF3C712 		bfc	r2, #7, #1
 2100 0098 2276     		strb	r2, [r4, #24]
 2101 009a 1A8B     		ldrh	r2, [r3, #24]
 2102 009c 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 2103 009e 02F4C072 		and	r2, r2, #384
 2104 00a2 0032     		adds	r2, r2, #0
 2105 00a4 18BF     		it	ne
 2106 00a6 0122     		movne	r2, #1
 2107 00a8 62F30003 		bfi	r3, r2, #0, #1
 2108 00ac 03F0FB03 		and	r3, r3, #251
 2109 00b0 6FF34103 		bfc	r3, #1, #1
ARM GAS  /tmp/ccgspWsN.s 			page 38


 2110 00b4 6376     		strb	r3, [r4, #25]
 2111 00b6 E160     		str	r1, [r4, #12]
 2112 00b8 0120     		movs	r0, #1
 2113 00ba AC60     		str	r4, [r5, #8]
 2114 00bc 70BD     		pop	{r4, r5, r6, pc}
 2115              		.size	_ZN11GCodeBuffer9PushStateEv, .-_ZN11GCodeBuffer9PushStateEv
 2116 00be 00BF     		.section	.text._ZN11GCodeBuffer8PopStateEv,"ax",%progbits
 2117              		.align	1
 2118              		.p2align 2,,3
 2119              		.global	_ZN11GCodeBuffer8PopStateEv
 2120              		.syntax unified
 2121              		.thumb
 2122              		.thumb_func
 2123              		.fpu softvfp
 2124              		.type	_ZN11GCodeBuffer8PopStateEv, %function
 2125              	_ZN11GCodeBuffer8PopStateEv:
 2126              		@ args = 0, pretend = 0, frame = 0
 2127              		@ frame_needed = 0, uses_anonymous_args = 0
 2128 0000 8168     		ldr	r1, [r0, #8]
 2129 0002 08B5     		push	{r3, lr}
 2130 0004 0A68     		ldr	r2, [r1]
 2131 0006 2AB1     		cbz	r2, .L440
 2132 0008 8260     		str	r2, [r0, #8]
 2133 000a 0846     		mov	r0, r1
 2134 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 2135 0010 0120     		movs	r0, #1
 2136 0012 08BD     		pop	{r3, pc}
 2137              	.L440:
 2138 0014 4B7E     		ldrb	r3, [r1, #25]	@ zero_extendqisi2
 2139 0016 1046     		mov	r0, r2
 2140 0018 62F38203 		bfi	r3, r2, #2, #1
 2141 001c 62F34103 		bfi	r3, r2, #1, #1
 2142 0020 4B76     		strb	r3, [r1, #25]
 2143 0022 08BD     		pop	{r3, pc}
 2144              		.size	_ZN11GCodeBuffer8PopStateEv, .-_ZN11GCodeBuffer8PopStateEv
 2145              		.section	.text._ZN11GCodeBuffer9AbortFileEP14FileGCodeInput,"ax",%progbits
 2146              		.align	1
 2147              		.p2align 2,,3
 2148              		.global	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 2149              		.syntax unified
 2150              		.thumb
 2151              		.thumb_func
 2152              		.fpu softvfp
 2153              		.type	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, %function
 2154              	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput:
 2155              		@ args = 0, pretend = 0, frame = 0
 2156              		@ frame_needed = 0, uses_anonymous_args = 0
 2157 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2158 0002 0546     		mov	r5, r0
 2159 0004 0E46     		mov	r6, r1
 2160 0006 0027     		movs	r7, #0
 2161 0008 03E0     		b	.L444
 2162              	.L443:
 2163 000a AB60     		str	r3, [r5, #8]
 2164 000c 2046     		mov	r0, r4
 2165 000e FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 2166              	.L444:
ARM GAS  /tmp/ccgspWsN.s 			page 39


 2167 0012 AC68     		ldr	r4, [r5, #8]
 2168 0014 A368     		ldr	r3, [r4, #8]
 2169 0016 04F10801 		add	r1, r4, #8
 2170 001a 4BB1     		cbz	r3, .L442
 2171 001c 3046     		mov	r0, r6
 2172 001e FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2173 0022 AC68     		ldr	r4, [r5, #8]
 2174 0024 A068     		ldr	r0, [r4, #8]
 2175 0026 18B1     		cbz	r0, .L442
 2176 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2177 002c A760     		str	r7, [r4, #8]
 2178 002e AC68     		ldr	r4, [r5, #8]
 2179              	.L442:
 2180 0030 2368     		ldr	r3, [r4]
 2181 0032 002B     		cmp	r3, #0
 2182 0034 E9D1     		bne	.L443
 2183 0036 627E     		ldrb	r2, [r4, #25]	@ zero_extendqisi2
 2184 0038 63F38202 		bfi	r2, r3, #2, #1
 2185 003c 63F34102 		bfi	r2, r3, #1, #1
 2186 0040 6276     		strb	r2, [r4, #25]
 2187 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2188              		.size	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput, .-_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 2189              		.section	.text._ZNK11GCodeBuffer16IsDoingFileMacroEv,"ax",%progbits
 2190              		.align	1
 2191              		.p2align 2,,3
 2192              		.global	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2193              		.syntax unified
 2194              		.thumb
 2195              		.thumb_func
 2196              		.fpu softvfp
 2197              		.type	_ZNK11GCodeBuffer16IsDoingFileMacroEv, %function
 2198              	_ZNK11GCodeBuffer16IsDoingFileMacroEv:
 2199              		@ args = 0, pretend = 0, frame = 0
 2200              		@ frame_needed = 0, uses_anonymous_args = 0
 2201              		@ link register save eliminated.
 2202 0000 8368     		ldr	r3, [r0, #8]
 2203 0002 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2204 0004 C0F38000 		ubfx	r0, r0, #2, #1
 2205 0008 7047     		bx	lr
 2206              		.size	_ZNK11GCodeBuffer16IsDoingFileMacroEv, .-_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2207 000a 00BF     		.section	.text._ZN11GCodeBuffer19MessageAcknowledgedEb,"ax",%progbits
 2208              		.align	1
 2209              		.p2align 2,,3
 2210              		.global	_ZN11GCodeBuffer19MessageAcknowledgedEb
 2211              		.syntax unified
 2212              		.thumb
 2213              		.thumb_func
 2214              		.fpu softvfp
 2215              		.type	_ZN11GCodeBuffer19MessageAcknowledgedEb, %function
 2216              	_ZN11GCodeBuffer19MessageAcknowledgedEb:
 2217              		@ args = 0, pretend = 0, frame = 0
 2218              		@ frame_needed = 0, uses_anonymous_args = 0
 2219              		@ link register save eliminated.
 2220 0000 8268     		ldr	r2, [r0, #8]
 2221 0002 62B1     		cbz	r2, .L454
 2222              	.L458:
 2223 0004 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
ARM GAS  /tmp/ccgspWsN.s 			page 40


 2224 0006 9807     		lsls	r0, r3, #30
 2225 0008 06D5     		bpl	.L456
 2226 000a 03F0FD03 		and	r3, r3, #253
 2227 000e 43F00403 		orr	r3, r3, #4
 2228 0012 61F3C303 		bfi	r3, r1, #3, #1
 2229 0016 5376     		strb	r3, [r2, #25]
 2230              	.L456:
 2231 0018 1268     		ldr	r2, [r2]
 2232 001a 002A     		cmp	r2, #0
 2233 001c F2D1     		bne	.L458
 2234              	.L454:
 2235 001e 7047     		bx	lr
 2236              		.size	_ZN11GCodeBuffer19MessageAcknowledgedEb, .-_ZN11GCodeBuffer19MessageAcknowledgedEb
 2237              		.section	.text._ZNK11GCodeBuffer13CanQueueCodesEv,"ax",%progbits
 2238              		.align	1
 2239              		.p2align 2,,3
 2240              		.global	_ZNK11GCodeBuffer13CanQueueCodesEv
 2241              		.syntax unified
 2242              		.thumb
 2243              		.thumb_func
 2244              		.fpu softvfp
 2245              		.type	_ZNK11GCodeBuffer13CanQueueCodesEv, %function
 2246              	_ZNK11GCodeBuffer13CanQueueCodesEv:
 2247              		@ args = 0, pretend = 0, frame = 0
 2248              		@ frame_needed = 0, uses_anonymous_args = 0
 2249              		@ link register save eliminated.
 2250 0000 90F8B430 		ldrb	r3, [r0, #180]	@ zero_extendqisi2
 2251 0004 1BB9     		cbnz	r3, .L466
 2252 0006 8368     		ldr	r3, [r0, #8]
 2253 0008 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2254 000a C3F38003 		ubfx	r3, r3, #2, #1
 2255              	.L466:
 2256 000e 1846     		mov	r0, r3
 2257 0010 7047     		bx	lr
 2258              		.size	_ZNK11GCodeBuffer13CanQueueCodesEv, .-_ZNK11GCodeBuffer13CanQueueCodesEv
 2259 0012 00BF     		.section	.text._ZNK11GCodeBuffer12PrintCommandERK9StringRef,"ax",%progbits
 2260              		.align	1
 2261              		.p2align 2,,3
 2262              		.global	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 2263              		.syntax unified
 2264              		.thumb
 2265              		.thumb_func
 2266              		.fpu softvfp
 2267              		.type	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, %function
 2268              	_ZNK11GCodeBuffer12PrintCommandERK9StringRef:
 2269              		@ args = 0, pretend = 0, frame = 0
 2270              		@ frame_needed = 0, uses_anonymous_args = 0
 2271 0000 38B5     		push	{r3, r4, r5, lr}
 2272 0002 0446     		mov	r4, r0
 2273 0004 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
 2274 0008 036C     		ldr	r3, [r0, #64]
 2275 000a 0D46     		mov	r5, r1
 2276 000c 0846     		mov	r0, r1
 2277 000e 0749     		ldr	r1, .L470
 2278 0010 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2279 0014 94F9B320 		ldrsb	r2, [r4, #179]
 2280 0018 002A     		cmp	r2, #0
ARM GAS  /tmp/ccgspWsN.s 			page 41


 2281 001a 05DB     		blt	.L467
 2282 001c 2846     		mov	r0, r5
 2283 001e BDE83840 		pop	{r3, r4, r5, lr}
 2284 0022 0349     		ldr	r1, .L470+4
 2285 0024 FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 2286              	.L467:
 2287 0028 38BD     		pop	{r3, r4, r5, pc}
 2288              	.L471:
 2289 002a 00BF     		.align	2
 2290              	.L470:
 2291 002c 00000000 		.word	.LC11
 2292 0030 08000000 		.word	.LC12
 2293              		.size	_ZNK11GCodeBuffer12PrintCommandERK9StringRef, .-_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 2294              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 2295              		.align	1
 2296              		.p2align 2,,3
 2297              		.weak	_ZN6StringILj220EE6printfEPKcz
 2298              		.syntax unified
 2299              		.thumb
 2300              		.thumb_func
 2301              		.fpu softvfp
 2302              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 2303              	_ZN6StringILj220EE6printfEPKcz:
 2304              		@ args = 4, pretend = 12, frame = 16
 2305              		@ frame_needed = 0, uses_anonymous_args = 1
 2306 0000 0EB4     		push	{r1, r2, r3}
 2307 0002 10B5     		push	{r4, lr}
 2308 0004 DD24     		movs	r4, #221
 2309 0006 85B0     		sub	sp, sp, #20
 2310 0008 07AB     		add	r3, sp, #28
 2311 000a 53F8041B 		ldr	r1, [r3], #4
 2312 000e 0290     		str	r0, [sp, #8]
 2313 0010 1A46     		mov	r2, r3
 2314 0012 02A8     		add	r0, sp, #8
 2315 0014 0193     		str	r3, [sp, #4]
 2316 0016 0394     		str	r4, [sp, #12]
 2317 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2318 001c 05B0     		add	sp, sp, #20
 2319              		@ sp needed
 2320 001e BDE81040 		pop	{r4, lr}
 2321 0022 03B0     		add	sp, sp, #12
 2322 0024 7047     		bx	lr
 2323              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 2324 0026 00BF     		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 2325              		.align	1
 2326              		.p2align 2,,3
 2327              		.weak	_ZN6StringILj220EE4catfEPKcz
 2328              		.syntax unified
 2329              		.thumb
 2330              		.thumb_func
 2331              		.fpu softvfp
 2332              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 2333              	_ZN6StringILj220EE4catfEPKcz:
 2334              		@ args = 4, pretend = 12, frame = 16
 2335              		@ frame_needed = 0, uses_anonymous_args = 1
 2336 0000 0EB4     		push	{r1, r2, r3}
 2337 0002 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccgspWsN.s 			page 42


 2338 0004 DD24     		movs	r4, #221
 2339 0006 85B0     		sub	sp, sp, #20
 2340 0008 07AB     		add	r3, sp, #28
 2341 000a 53F8041B 		ldr	r1, [r3], #4
 2342 000e 0290     		str	r0, [sp, #8]
 2343 0010 1A46     		mov	r2, r3
 2344 0012 02A8     		add	r0, sp, #8
 2345 0014 0193     		str	r3, [sp, #4]
 2346 0016 0394     		str	r4, [sp, #12]
 2347 0018 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 2348 001c 05B0     		add	sp, sp, #20
 2349              		@ sp needed
 2350 001e BDE81040 		pop	{r4, lr}
 2351 0022 03B0     		add	sp, sp, #12
 2352 0024 7047     		bx	lr
 2353              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 2354 0026 00BF     		.section	.text._ZN11GCodeBuffer11DiagnosticsE11MessageType,"ax",%progbits
 2355              		.align	1
 2356              		.p2align 2,,3
 2357              		.global	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 2358              		.syntax unified
 2359              		.thumb
 2360              		.thumb_func
 2361              		.fpu softvfp
 2362              		.type	_ZN11GCodeBuffer11DiagnosticsE11MessageType, %function
 2363              	_ZN11GCodeBuffer11DiagnosticsE11MessageType:
 2364              		@ args = 0, pretend = 0, frame = 232
 2365              		@ frame_needed = 0, uses_anonymous_args = 0
 2366 0000 0022     		movs	r2, #0
 2367 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 2368 0004 90F82830 		ldrb	r3, [r0, #40]	@ zero_extendqisi2
 2369 0008 BBB0     		sub	sp, sp, #236
 2370 000a 02AD     		add	r5, sp, #8
 2371 000c 082B     		cmp	r3, #8
 2372 000e 0446     		mov	r4, r0
 2373 0010 0F46     		mov	r7, r1
 2374 0012 8DF80820 		strb	r2, [sp, #8]
 2375 0016 2846     		mov	r0, r5
 2376 0018 31D0     		beq	.L478
 2377 001a 092B     		cmp	r3, #9
 2378 001c 28D0     		beq	.L479
 2379 001e E268     		ldr	r2, [r4, #12]
 2380 0020 13B3     		cbz	r3, .L486
 2381 0022 1A49     		ldr	r1, .L487
 2382 0024 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2383              	.L481:
 2384 0028 DD23     		movs	r3, #221
 2385 002a 6846     		mov	r0, sp
 2386 002c 1849     		ldr	r1, .L487+4
 2387 002e 0095     		str	r5, [sp]
 2388 0030 0193     		str	r3, [sp, #4]
 2389 0032 184E     		ldr	r6, .L487+8
 2390 0034 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2391 0038 A468     		ldr	r4, [r4, #8]
 2392              	.L482:
 2393 003a 227D     		ldrb	r2, [r4, #20]	@ zero_extendqisi2
 2394 003c 3146     		mov	r1, r6
ARM GAS  /tmp/ccgspWsN.s 			page 43


 2395 003e 2846     		mov	r0, r5
 2396 0040 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 2397 0044 2468     		ldr	r4, [r4]
 2398 0046 002C     		cmp	r4, #0
 2399 0048 F7D1     		bne	.L482
 2400 004a DD23     		movs	r3, #221
 2401 004c 6846     		mov	r0, sp
 2402 004e 0A21     		movs	r1, #10
 2403 0050 0193     		str	r3, [sp, #4]
 2404 0052 0095     		str	r5, [sp]
 2405 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2406 0058 0F4B     		ldr	r3, .L487+12
 2407 005a 2A46     		mov	r2, r5
 2408 005c 3946     		mov	r1, r7
 2409 005e 1868     		ldr	r0, [r3]
 2410 0060 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2411 0064 3BB0     		add	sp, sp, #236
 2412              		@ sp needed
 2413 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 2414              	.L486:
 2415 0068 0C49     		ldr	r1, .L487+16
 2416 006a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2417 006e DBE7     		b	.L481
 2418              	.L479:
 2419 0070 04F14D03 		add	r3, r4, #77
 2420 0074 E268     		ldr	r2, [r4, #12]
 2421 0076 0A49     		ldr	r1, .L487+20
 2422 0078 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2423 007c D4E7     		b	.L481
 2424              	.L478:
 2425 007e 04F14D03 		add	r3, r4, #77
 2426 0082 E268     		ldr	r2, [r4, #12]
 2427 0084 0749     		ldr	r1, .L487+24
 2428 0086 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 2429 008a CDE7     		b	.L481
 2430              	.L488:
 2431              		.align	2
 2432              	.L487:
 2433 008c 38000000 		.word	.LC16
 2434 0090 54000000 		.word	.LC17
 2435 0094 64000000 		.word	.LC18
 2436 0098 00000000 		.word	reprap
 2437 009c 00000000 		.word	.LC13
 2438 00a0 24000000 		.word	.LC15
 2439 00a4 0C000000 		.word	.LC14
 2440              		.size	_ZN11GCodeBuffer11DiagnosticsE11MessageType, .-_ZN11GCodeBuffer11DiagnosticsE11MessageType
 2441              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2442              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2443              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2444              	_ZL28cpu_irq_prev_interrupt_state:
 2445 0000 00       		.space	1
 2446              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2447              		.align	2
 2448              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2449              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2450              	_ZL32cpu_irq_critical_section_counter:
 2451 0000 00000000 		.space	4
ARM GAS  /tmp/ccgspWsN.s 			page 44


 2452              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2453              		.align	2
 2454              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2455              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2456              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2457 0000 00000000 		.space	4
 2458              		.section	.rodata._ZN11GCodeBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 2459              		.align	2
 2460              	.LC13:
 2461 0000 25732069 		.ascii	"%s is idle\000"
 2461      73206964 
 2461      6C6500
 2462 000b 00       		.space	1
 2463              	.LC14:
 2464 000c 25732069 		.ascii	"%s is ready with \"%s\"\000"
 2464      73207265 
 2464      61647920 
 2464      77697468 
 2464      20222573 
 2465 0022 0000     		.space	2
 2466              	.LC15:
 2467 0024 25732069 		.ascii	"%s is doing \"%s\"\000"
 2467      7320646F 
 2467      696E6720 
 2467      22257322 
 2467      00
 2468 0035 000000   		.space	3
 2469              	.LC16:
 2470 0038 25732069 		.ascii	"%s is assembling a command\000"
 2470      73206173 
 2470      73656D62 
 2470      6C696E67 
 2470      20612063 
 2471 0053 00       		.space	1
 2472              	.LC17:
 2473 0054 20696E20 		.ascii	" in state(s)\000"
 2473      73746174 
 2473      65287329 
 2473      00
 2474 0061 000000   		.space	3
 2475              	.LC18:
 2476 0064 20256400 		.ascii	" %d\000"
 2477              		.section	.rodata._ZN11GCodeBuffer11GetIntArrayEPlRjb.str1.4,"aMS",%progbits,1
 2478              		.align	2
 2479              	.LC8:
 2480 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode int array that is t"
 2480      65733A20 
 2480      41747465 
 2480      6D707420 
 2480      746F2072 
 2481 0033 6F6F206C 		.ascii	"oo long: %s\012\000"
 2481      6F6E673A 
 2481      2025730A 
 2481      00
 2482              		.section	.rodata._ZN11GCodeBuffer12LineFinishedEv.str1.4,"aMS",%progbits,1
 2483              		.align	2
 2484              	.LC0:
ARM GAS  /tmp/ccgspWsN.s 			page 45


 2485 0000 28626164 		.ascii	"(bad-csum)\000"
 2485      2D637375 
 2485      6D2900
 2486 000b 00       		.space	1
 2487              	.LC1:
 2488 000c 00       		.ascii	"\000"
 2489 000d 000000   		.space	3
 2490              	.LC2:
 2491 0010 286E6F2D 		.ascii	"(no-csum)\000"
 2491      6373756D 
 2491      2900
 2492 001a 0000     		.space	2
 2493              	.LC3:
 2494 001c 472D436F 		.ascii	"G-Code buffer '%s' length overflow\012\000"
 2494      64652062 
 2494      75666665 
 2494      72202725 
 2494      7327206C 
 2495              	.LC4:
 2496 0040 25732573 		.ascii	"%s%s: %s\012\000"
 2496      3A202573 
 2496      0A00
 2497 004a 0000     		.space	2
 2498              	.LC5:
 2499 004c 4D393938 		.ascii	"M998 P%u\000"
 2499      20502575 
 2499      00
 2500              		.section	.rodata._ZN11GCodeBuffer13GetFloatArrayEPfRjb.str1.4,"aMS",%progbits,1
 2501              		.align	2
 2502              	.LC7:
 2503 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode float array that is"
 2503      65733A20 
 2503      41747465 
 2503      6D707420 
 2503      746F2072 
 2504 0033 20746F6F 		.ascii	" too long: %s\012\000"
 2504      206C6F6E 
 2504      673A2025 
 2504      730A00
 2505              		.section	.rodata._ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb.str1.4,"aMS",%progbits,1
 2506              		.align	2
 2507              	.LC10:
 2508 0000 57726F6E 		.ascii	"Wrong number of values after '''%c''', expected %d\000"
 2508      67206E75 
 2508      6D626572 
 2508      206F6620 
 2508      76616C75 
 2509              		.section	.rodata._ZN11GCodeBuffer16GetUnsignedArrayEPmRjb.str1.4,"aMS",%progbits,1
 2510              		.align	2
 2511              	.LC9:
 2512 0000 47436F64 		.ascii	"GCodes: Attempt to read a GCode unsigned array that"
 2512      65733A20 
 2512      41747465 
 2512      6D707420 
 2512      746F2072 
 2513 0033 20697320 		.ascii	" is too long: %s\012\000"
 2513      746F6F20 
ARM GAS  /tmp/ccgspWsN.s 			page 46


 2513      6C6F6E67 
 2513      3A202573 
 2513      0A00
 2514              		.section	.rodata._ZN11GCodeBuffer9GetFValueEv.str1.4,"aMS",%progbits,1
 2515              		.align	2
 2516              	.LC6:
 2517 0000 2E2E2F73 		.ascii	"../src/GCodes/GCodeBuffer.cpp\000"
 2517      72632F47 
 2517      436F6465 
 2517      732F4743 
 2517      6F646542 
 2518              		.section	.rodata._ZNK11GCodeBuffer12PrintCommandERK9StringRef.str1.4,"aMS",%progbits,1
 2519              		.align	2
 2520              	.LC11:
 2521 0000 25632564 		.ascii	"%c%d\000"
 2521      00
 2522 0005 000000   		.space	3
 2523              	.LC12:
 2524 0008 2E256400 		.ascii	".%d\000"
 2525              		.section	.rodata._ZZN11GCodeBuffer10GetUIValueEvE8__func__,"a",%progbits
 2526              		.align	2
 2527              		.set	.LANCHOR7,. + 0
 2528              		.type	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, %object
 2529              		.size	_ZZN11GCodeBuffer10GetUIValueEvE8__func__, 11
 2530              	_ZZN11GCodeBuffer10GetUIValueEvE8__func__:
 2531 0000 47657455 		.ascii	"GetUIValue\000"
 2531      4956616C 
 2531      756500
 2532              		.section	.rodata._ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__,"a",%progbits
 2533              		.align	2
 2534              		.set	.LANCHOR2,. + 0
 2535              		.type	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, %object
 2536              		.size	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__, 12
 2537              	_ZZN11GCodeBuffer11GetIntArrayEPlRjbE8__func__:
 2538 0000 47657449 		.ascii	"GetIntArray\000"
 2538      6E744172 
 2538      72617900 
 2539              		.section	.rodata._ZZN11GCodeBuffer12GetIPAddressEPhE8__func__,"a",%progbits
 2540              		.align	2
 2541              		.set	.LANCHOR8,. + 0
 2542              		.type	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__, %object
 2543              		.size	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__, 13
 2544              	_ZZN11GCodeBuffer12GetIPAddressEPhE8__func__:
 2545 0000 47657449 		.ascii	"GetIPAddress\000"
 2545      50416464 
 2545      72657373 
 2545      00
 2546              		.section	.rodata._ZZN11GCodeBuffer12GetIPAddressERmE8__func__,"a",%progbits
 2547              		.align	2
 2548              		.set	.LANCHOR9,. + 0
 2549              		.type	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__, %object
 2550              		.size	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__, 13
 2551              	_ZZN11GCodeBuffer12GetIPAddressERmE8__func__:
 2552 0000 47657449 		.ascii	"GetIPAddress\000"
 2552      50416464 
 2552      72657373 
 2552      00
ARM GAS  /tmp/ccgspWsN.s 			page 47


 2553              		.section	.rodata._ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__,"a",%progbits
 2554              		.align	2
 2555              		.set	.LANCHOR1,. + 0
 2556              		.type	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, %object
 2557              		.size	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__, 14
 2558              	_ZZN11GCodeBuffer13GetFloatArrayEPfRjbE8__func__:
 2559 0000 47657446 		.ascii	"GetFloatArray\000"
 2559      6C6F6174 
 2559      41727261 
 2559      7900
 2560              		.section	.rodata._ZZN11GCodeBuffer13GetMacAddressEPhE8__func__,"a",%progbits
 2561              		.align	2
 2562              		.set	.LANCHOR10,. + 0
 2563              		.type	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, %object
 2564              		.size	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__, 14
 2565              	_ZZN11GCodeBuffer13GetMacAddressEPhE8__func__:
 2566 0000 4765744D 		.ascii	"GetMacAddress\000"
 2566      61634164 
 2566      64726573 
 2566      7300
 2567              		.section	.rodata._ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__,"a",%progbits
 2568              		.align	2
 2569              		.set	.LANCHOR4,. + 0
 2570              		.type	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, %object
 2571              		.size	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__, 16
 2572              	_ZZN11GCodeBuffer15GetQuotedStringERK9StringRefE8__func__:
 2573 0000 47657451 		.ascii	"GetQuotedString\000"
 2573      756F7465 
 2573      64537472 
 2573      696E6700 
 2574              		.section	.rodata._ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__,"a",%progbits
 2575              		.align	2
 2576              		.set	.LANCHOR3,. + 0
 2577              		.type	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, %object
 2578              		.size	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__, 17
 2579              	_ZZN11GCodeBuffer16GetUnsignedArrayEPmRjbE8__func__:
 2580 0000 47657455 		.ascii	"GetUnsignedArray\000"
 2580      6E736967 
 2580      6E656441 
 2580      72726179 
 2580      00
 2581              		.section	.rodata._ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__,"a",%progbits
 2582              		.align	2
 2583              		.set	.LANCHOR5,. + 0
 2584              		.type	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, %object
 2585              		.size	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__, 24
 2586              	_ZZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRefE8__func__:
 2587 0000 47657450 		.ascii	"GetPossiblyQuotedString\000"
 2587      6F737369 
 2587      626C7951 
 2587      756F7465 
 2587      64537472 
 2588              		.section	.rodata._ZZN11GCodeBuffer9GetFValueEvE8__func__,"a",%progbits
 2589              		.align	2
 2590              		.set	.LANCHOR0,. + 0
 2591              		.type	_ZZN11GCodeBuffer9GetFValueEvE8__func__, %object
 2592              		.size	_ZZN11GCodeBuffer9GetFValueEvE8__func__, 10
ARM GAS  /tmp/ccgspWsN.s 			page 48


 2593              	_ZZN11GCodeBuffer9GetFValueEvE8__func__:
 2594 0000 47657446 		.ascii	"GetFValue\000"
 2594      56616C75 
 2594      6500
 2595              		.section	.rodata._ZZN11GCodeBuffer9GetIValueEvE8__func__,"a",%progbits
 2596              		.align	2
 2597              		.set	.LANCHOR6,. + 0
 2598              		.type	_ZZN11GCodeBuffer9GetIValueEvE8__func__, %object
 2599              		.size	_ZZN11GCodeBuffer9GetIValueEvE8__func__, 10
 2600              	_ZZN11GCodeBuffer9GetIValueEvE8__func__:
 2601 0000 47657449 		.ascii	"GetIValue\000"
 2601      56616C75 
 2601      6500
 2602              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
