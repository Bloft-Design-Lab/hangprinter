ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 1


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
  13              		.file	"ObjectModel.cpp"
  14              		.text
  15              		.section	.text._ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0, %function
  23              	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0268     		ldr	r2, [r0]
  28 0002 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
  29 0004 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  30 0006 8342     		cmp	r3, r0
  31 0008 08D1     		bne	.L2
  32 000a 0BB9     		cbnz	r3, .L4
  33 000c 12E0     		b	.L11
  34              	.L5:
  35 000e 90B1     		cbz	r0, .L1
  36              	.L4:
  37 0010 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
  38 0014 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
  39 0018 9842     		cmp	r0, r3
  40 001a F8D0     		beq	.L5
  41              	.L2:
  42 001c 2BB1     		cbz	r3, .L14
  43              	.L6:
  44 001e 8342     		cmp	r3, r0
  45 0020 34BF     		ite	cc
  46 0022 0120     		movcc	r0, #1
  47 0024 4FF0FF30 		movcs	r0, #-1
  48 0028 7047     		bx	lr
  49              	.L14:
  50 002a 20B1     		cbz	r0, .L1
  51 002c 2E28     		cmp	r0, #46
  52 002e 01D0     		beq	.L11
  53 0030 5B28     		cmp	r0, #91
  54 0032 F4D1     		bne	.L6
  55              	.L11:
  56 0034 1846     		mov	r0, r3
  57              	.L1:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 2


  58 0036 7047     		bx	lr
  59              		.size	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0, .-_ZNK21ObjectModelTableEntry9IdCompareEPK
  60              		.section	.text._ZN11ObjectModelC2Ev,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN11ObjectModelC2Ev
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN11ObjectModelC2Ev, %function
  69              	_ZN11ObjectModelC2Ev:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 014B     		ldr	r3, .L16
  74 0002 0360     		str	r3, [r0]
  75 0004 7047     		bx	lr
  76              	.L17:
  77 0006 00BF     		.align	2
  78              	.L16:
  79 0008 08000000 		.word	_ZTV11ObjectModel+8
  80              		.size	_ZN11ObjectModelC2Ev, .-_ZN11ObjectModelC2Ev
  81              		.global	_ZN11ObjectModelC1Ev
  82              		.thumb_set _ZN11ObjectModelC1Ev,_ZN11ObjectModelC2Ev
  83              		.section	.text._ZN11ObjectModel25FindObjectModelTableEntryEPKc,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	_ZN11ObjectModel25FindObjectModelTableEntryEPKc
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZN11ObjectModel25FindObjectModelTableEntryEPKc, %function
  92              	_ZN11ObjectModel25FindObjectModelTableEntryEPKc:
  93              		@ args = 0, pretend = 0, frame = 8
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  96 0004 0368     		ldr	r3, [r0]
  97 0006 82B0     		sub	sp, sp, #8
  98 0008 0F46     		mov	r7, r1
  99 000a 1B68     		ldr	r3, [r3]
 100 000c 01A9     		add	r1, sp, #4
 101 000e 9847     		blx	r3
 102 0010 DDF80490 		ldr	r9, [sp, #4]
 103 0014 8046     		mov	r8, r0
 104 0016 4FF0000A 		mov	r10, #0
 105 001a 4E46     		mov	r6, r9
 106              	.L24:
 107 001c 5645     		cmp	r6, r10
 108 001e 38D9     		bls	.L19
 109 0020 A6EB0A04 		sub	r4, r6, r10
 110 0024 0AEB5404 		add	r4, r10, r4, lsr #1
 111 0028 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 112 002a 04EB4405 		add	r5, r4, r4, lsl #1
 113 002e 08EB8505 		add	r5, r8, r5, lsl #2
 114 0032 A3B1     		cbz	r3, .L18
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 3


 115 0034 2A2B     		cmp	r3, #42
 116 0036 0AD1     		bne	.L21
 117 0038 11E0     		b	.L18
 118              	.L48:
 119 003a 14DC     		bgt	.L47
 120 003c A245     		cmp	r10, r4
 121 003e 15D2     		bcs	.L22
 122 0040 2646     		mov	r6, r4
 123 0042 0AEB5304 		add	r4, r10, r3, lsr #1
 124 0046 04EB4405 		add	r5, r4, r4, lsl #1
 125 004a 08EB8505 		add	r5, r8, r5, lsl #2
 126              	.L21:
 127 004e 3946     		mov	r1, r7
 128 0050 2846     		mov	r0, r5
 129 0052 FFF7FEFF 		bl	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0
 130 0056 0028     		cmp	r0, #0
 131 0058 A4EB0A03 		sub	r3, r4, r10
 132 005c EDD1     		bne	.L48
 133              	.L18:
 134 005e 2846     		mov	r0, r5
 135 0060 02B0     		add	sp, sp, #8
 136              		@ sp needed
 137 0062 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 138              	.L47:
 139 0066 04F1010A 		add	r10, r4, #1
 140 006a D7E7     		b	.L24
 141              	.L22:
 142 006c D145     		cmp	r9, r10
 143 006e 04D8     		bhi	.L26
 144              	.L46:
 145 0070 0025     		movs	r5, #0
 146 0072 2846     		mov	r0, r5
 147 0074 02B0     		add	sp, sp, #8
 148              		@ sp needed
 149 0076 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 150              	.L26:
 151 007a 0AEB4A05 		add	r5, r10, r10, lsl #1
 152 007e 08EB8505 		add	r5, r8, r5, lsl #2
 153              	.L25:
 154 0082 2846     		mov	r0, r5
 155 0084 3946     		mov	r1, r7
 156 0086 FFF7FEFF 		bl	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0
 157 008a 0028     		cmp	r0, #0
 158 008c 18BF     		it	ne
 159 008e 0025     		movne	r5, #0
 160 0090 E5E7     		b	.L18
 161              	.L19:
 162 0092 D145     		cmp	r9, r10
 163 0094 ECD9     		bls	.L46
 164 0096 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 165 0098 0AEB4A05 		add	r5, r10, r10, lsl #1
 166 009c 08EB8505 		add	r5, r8, r5, lsl #2
 167 00a0 002B     		cmp	r3, #0
 168 00a2 DCD0     		beq	.L18
 169 00a4 2A2B     		cmp	r3, #42
 170 00a6 DAD0     		beq	.L18
 171 00a8 EBE7     		b	.L25
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 4


 172              		.size	_ZN11ObjectModel25FindObjectModelTableEntryEPKc, .-_ZN11ObjectModel25FindObjectModelTableEnt
 173 00aa 00BF     		.section	.text._ZN11ObjectModel14GetNextElementEPKc,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZN11ObjectModel14GetNextElementEPKc
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZN11ObjectModel14GetNextElementEPKc, %function
 182              	_ZN11ObjectModel14GetNextElementEPKc:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 186 0000 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 187 0002 73B1     		cbz	r3, .L59
 188 0004 2E2B     		cmp	r3, #46
 189 0006 0BD0     		beq	.L51
 190 0008 5B2B     		cmp	r3, #91
 191 000a 04D1     		bne	.L52
 192 000c 0AE0     		b	.L70
 193              	.L53:
 194 000e 2E2B     		cmp	r3, #46
 195 0010 06D0     		beq	.L51
 196 0012 5B2B     		cmp	r3, #91
 197 0014 05D0     		beq	.L59
 198              	.L52:
 199 0016 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 200 001a 002B     		cmp	r3, #0
 201 001c F7D1     		bne	.L53
 202 001e 7047     		bx	lr
 203              	.L51:
 204 0020 0130     		adds	r0, r0, #1
 205              	.L59:
 206 0022 7047     		bx	lr
 207              	.L70:
 208 0024 7047     		bx	lr
 209              		.size	_ZN11ObjectModel14GetNextElementEPKc, .-_ZN11ObjectModel14GetNextElementEPKc
 210 0026 00BF     		.section	.text._ZNK21ObjectModelTableEntry7MatchesEPKcm,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_ZNK21ObjectModelTableEntry7MatchesEPKcm
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu fpv4-sp-d16
 218              		.type	_ZNK21ObjectModelTableEntry7MatchesEPKcm, %function
 219              	_ZNK21ObjectModelTableEntry7MatchesEPKcm:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222 0000 38B5     		push	{r3, r4, r5, lr}
 223 0002 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 224 0004 1446     		mov	r4, r2
 225 0006 0546     		mov	r5, r0
 226 0008 0BB1     		cbz	r3, .L72
 227 000a 2A2B     		cmp	r3, #42
 228 000c 06D1     		bne	.L82
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 5


 229              	.L72:
 230 000e 6B89     		ldrh	r3, [r5, #10]
 231 0010 34EA0303 		bics	r3, r4, r3
 232 0014 0CBF     		ite	eq
 233 0016 0120     		moveq	r0, #1
 234 0018 0020     		movne	r0, #0
 235 001a 38BD     		pop	{r3, r4, r5, pc}
 236              	.L82:
 237 001c FFF7FEFF 		bl	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0
 238 0020 0028     		cmp	r0, #0
 239 0022 F4D0     		beq	.L72
 240 0024 0020     		movs	r0, #0
 241 0026 38BD     		pop	{r3, r4, r5, pc}
 242              		.size	_ZNK21ObjectModelTableEntry7MatchesEPKcm, .-_ZNK21ObjectModelTableEntry7MatchesEPKcm
 243              		.section	.text._ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11Rep
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11ReportFlag
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	_ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11ReportFlagsE
 252              	_ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11ReportFlagsE:
 253              		@ args = 4, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 256 0004 0446     		mov	r4, r0
 257 0006 82B0     		sub	sp, sp, #8
 258 0008 0D46     		mov	r5, r1
 259 000a 0846     		mov	r0, r1
 260 000c 2168     		ldr	r1, [r4]
 261 000e BDF82880 		ldrh	r8, [sp, #40]
 262 0012 1F46     		mov	r7, r3
 263 0014 1646     		mov	r6, r2
 264 0016 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 265 001a 2846     		mov	r0, r5
 266 001c 3A21     		movs	r1, #58
 267 001e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 268 0022 94F90830 		ldrsb	r3, [r4, #8]
 269 0026 002B     		cmp	r3, #0
 270 0028 0EDB     		blt	.L93
 271 002a 6368     		ldr	r3, [r4, #4]
 272 002c 3046     		mov	r0, r6
 273 002e 9847     		blx	r3
 274 0030 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 275 0032 0093     		str	r3, [sp]
 276 0034 4246     		mov	r2, r8
 277 0036 0346     		mov	r3, r0
 278 0038 3946     		mov	r1, r7
 279 003a 2846     		mov	r0, r5
 280 003c FFF7FEFF 		bl	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlagsEPvh
 281              	.L88:
 282 0040 0120     		movs	r0, #1
 283 0042 02B0     		add	sp, sp, #8
 284              		@ sp needed
 285 0044 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 6


 286              	.L93:
 287 0048 5B21     		movs	r1, #91
 288 004a 2846     		mov	r0, r5
 289 004c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 290 0050 6368     		ldr	r3, [r4, #4]
 291 0052 3046     		mov	r0, r6
 292 0054 9847     		blx	r3
 293 0056 4FF00009 		mov	r9, #0
 294 005a 8246     		mov	r10, r0
 295 005c 10E0     		b	.L87
 296              	.L86:
 297 005e 4946     		mov	r1, r9
 298 0060 DAF80430 		ldr	r3, [r10, #4]
 299 0064 3046     		mov	r0, r6
 300 0066 9847     		blx	r3
 301 0068 227A     		ldrb	r2, [r4, #8]	@ zero_extendqisi2
 302 006a 02F07F02 		and	r2, r2, #127
 303 006e 0346     		mov	r3, r0
 304 0070 0092     		str	r2, [sp]
 305 0072 3946     		mov	r1, r7
 306 0074 4246     		mov	r2, r8
 307 0076 2846     		mov	r0, r5
 308 0078 09F10109 		add	r9, r9, #1
 309 007c FFF7FEFF 		bl	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlagsEPvh
 310              	.L87:
 311 0080 DAF80030 		ldr	r3, [r10]
 312 0084 3046     		mov	r0, r6
 313 0086 9847     		blx	r3
 314 0088 4845     		cmp	r0, r9
 315 008a 07D9     		bls	.L85
 316 008c B9F1000F 		cmp	r9, #0
 317 0090 E5D0     		beq	.L86
 318 0092 2C21     		movs	r1, #44
 319 0094 2846     		mov	r0, r5
 320 0096 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 321 009a E0E7     		b	.L86
 322              	.L85:
 323 009c 2846     		mov	r0, r5
 324 009e 5D21     		movs	r1, #93
 325 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 326 00a4 CCE7     		b	.L88
 327              		.size	_ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11ReportFlagsE
 328 00a6 00BF     		.section	.text._ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE, %function
 337              	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE:
 338              		@ args = 0, pretend = 0, frame = 8
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 341 0004 8146     		mov	r9, r0
 342 0006 85B0     		sub	sp, sp, #20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 7


 343 0008 0846     		mov	r0, r1
 344 000a 8846     		mov	r8, r1
 345 000c 7B21     		movs	r1, #123
 346 000e 1646     		mov	r6, r2
 347 0010 1F46     		mov	r7, r3
 348 0012 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 349 0016 D9F80030 		ldr	r3, [r9]
 350 001a 4846     		mov	r0, r9
 351 001c 1B68     		ldr	r3, [r3]
 352 001e 03A9     		add	r1, sp, #12
 353 0020 9847     		blx	r3
 354 0022 DDF80CA0 		ldr	r10, [sp, #12]
 355 0026 BAF1000F 		cmp	r10, #0
 356 002a 37D0     		beq	.L95
 357 002c 0446     		mov	r4, r0
 358 002e 4FF0000B 		mov	fp, #0
 359 0032 07E0     		b	.L102
 360              	.L96:
 361 0034 0AF1FF3A 		add	r10, r10, #-1
 362 0038 CDF80CA0 		str	r10, [sp, #12]
 363 003c 0C34     		adds	r4, r4, #12
 364 003e BAF1000F 		cmp	r10, #0
 365 0042 2BD0     		beq	.L95
 366              	.L102:
 367 0044 3A46     		mov	r2, r7
 368 0046 3146     		mov	r1, r6
 369 0048 2046     		mov	r0, r4
 370 004a FFF7FEFF 		bl	_ZNK21ObjectModelTableEntry7MatchesEPKcm
 371 004e 0546     		mov	r5, r0
 372 0050 0028     		cmp	r0, #0
 373 0052 EFD0     		beq	.L96
 374 0054 BBF1000F 		cmp	fp, #0
 375 0058 2BD1     		bne	.L124
 376              	.L97:
 377 005a 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 378 005c 73B3     		cbz	r3, .L103
 379 005e 2E2B     		cmp	r3, #46
 380 0060 24D0     		beq	.L104
 381 0062 5B2B     		cmp	r3, #91
 382 0064 3346     		mov	r3, r6
 383 0066 04D1     		bne	.L100
 384 0068 07E0     		b	.L98
 385              	.L101:
 386 006a 2E2A     		cmp	r2, #46
 387 006c 1FD0     		beq	.L99
 388 006e 5B2A     		cmp	r2, #91
 389 0070 03D0     		beq	.L98
 390              	.L100:
 391 0072 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 392 0076 002A     		cmp	r2, #0
 393 0078 F7D1     		bne	.L101
 394              	.L98:
 395 007a 2046     		mov	r0, r4
 396 007c 0097     		str	r7, [sp]
 397 007e 4A46     		mov	r2, r9
 398 0080 4146     		mov	r1, r8
 399 0082 FFF7FEFF 		bl	_ZNK21ObjectModelTableEntry12ReportAsJsonEP12OutputBufferP11ObjectModelPKcNS2_11ReportFlagsE
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 8


 400 0086 DDF80CA0 		ldr	r10, [sp, #12]
 401 008a 0AF1FF3A 		add	r10, r10, #-1
 402 008e AB46     		mov	fp, r5
 403 0090 CDF80CA0 		str	r10, [sp, #12]
 404 0094 0C34     		adds	r4, r4, #12
 405 0096 BAF1000F 		cmp	r10, #0
 406 009a D3D1     		bne	.L102
 407              	.L95:
 408 009c 4046     		mov	r0, r8
 409 009e 7D21     		movs	r1, #125
 410 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 411 00a4 0120     		movs	r0, #1
 412 00a6 05B0     		add	sp, sp, #20
 413              		@ sp needed
 414 00a8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 415              	.L104:
 416 00ac 3346     		mov	r3, r6
 417              	.L99:
 418 00ae 0133     		adds	r3, r3, #1
 419 00b0 E3E7     		b	.L98
 420              	.L124:
 421 00b2 2C21     		movs	r1, #44
 422 00b4 4046     		mov	r0, r8
 423 00b6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 424 00ba CEE7     		b	.L97
 425              	.L103:
 426 00bc 3346     		mov	r3, r6
 427 00be DCE7     		b	.L98
 428              		.size	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE, .-_ZN11ObjectModel12Repo
 429              		.global	__aeabi_f2d
 430              		.section	.text._ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11Repo
 431              		.align	1
 432              		.p2align 2,,3
 433              		.global	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlags
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu fpv4-sp-d16
 438              		.type	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlagsEP
 439              	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlagsEPvh:
 440              		@ args = 4, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 443 0002 83B0     		sub	sp, sp, #12
 444 0004 0446     		mov	r4, r0
 445 0006 9DF82050 		ldrb	r5, [sp, #32]	@ zero_extendqisi2
 446 000a 013D     		subs	r5, r5, #1
 447 000c 1E46     		mov	r6, r3
 448 000e 0A2D     		cmp	r5, #10
 449 0010 68D8     		bhi	.L125
 450 0012 DFE805F0 		tbb	[pc, r5]
 451              	.L128:
 452 0016 80       		.byte	(.L127-.L128)/2
 453 0017 09       		.byte	(.L160-.L128)/2
 454 0018 11       		.byte	(.L130-.L128)/2
 455 0019 14       		.byte	(.L131-.L128)/2
 456 001a 20       		.byte	(.L132-.L128)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 9


 457 001b 28       		.byte	(.L133-.L128)/2
 458 001c 30       		.byte	(.L134-.L128)/2
 459 001d 06       		.byte	(.L135-.L128)/2
 460 001e 52       		.byte	(.L136-.L128)/2
 461 001f 5B       		.byte	(.L137-.L128)/2
 462 0020 69       		.byte	(.L138-.L128)/2
 463 0021 00       		.p2align 1
 464              	.L135:
 465 0022 D107     		lsls	r1, r2, #31
 466 0024 40F18980 		bpl	.L143
 467              	.L160:
 468 0028 3268     		ldr	r2, [r6]
 469 002a 4749     		ldr	r1, .L163
 470              	.L156:
 471 002c 2046     		mov	r0, r4
 472              	.L159:
 473 002e 03B0     		add	sp, sp, #12
 474              		@ sp needed
 475 0030 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 476 0034 FFF7FEBF 		b	_ZN12OutputBuffer4catfEPKcz
 477              	.L130:
 478 0038 3268     		ldr	r2, [r6]
 479 003a 4449     		ldr	r1, .L163+4
 480 003c F6E7     		b	.L156
 481              	.L131:
 482 003e 3068     		ldr	r0, [r6]	@ float
 483 0040 FFF7FEFF 		bl	__aeabi_f2d
 484 0044 0B46     		mov	r3, r1
 485 0046 4249     		ldr	r1, .L163+8
 486 0048 0246     		mov	r2, r0
 487 004a 2046     		mov	r0, r4
 488              	.L155:
 489 004c 03B0     		add	sp, sp, #12
 490              		@ sp needed
 491 004e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 492 0052 FFF7FEBF 		b	_ZN12OutputBuffer4catfEPKcz
 493              	.L132:
 494 0056 3068     		ldr	r0, [r6]	@ float
 495 0058 FFF7FEFF 		bl	__aeabi_f2d
 496 005c 0246     		mov	r2, r0
 497 005e 0B46     		mov	r3, r1
 498 0060 2046     		mov	r0, r4
 499 0062 3C49     		ldr	r1, .L163+12
 500 0064 F2E7     		b	.L155
 501              	.L133:
 502 0066 3068     		ldr	r0, [r6]	@ float
 503 0068 FFF7FEFF 		bl	__aeabi_f2d
 504 006c 0246     		mov	r2, r0
 505 006e 0B46     		mov	r3, r1
 506 0070 2046     		mov	r0, r4
 507 0072 3949     		ldr	r1, .L163+16
 508 0074 EAE7     		b	.L155
 509              	.L134:
 510 0076 D007     		lsls	r0, r2, #31
 511 0078 3568     		ldr	r5, [r6]
 512 007a 60D4     		bmi	.L161
 513 007c 5B21     		movs	r1, #91
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 10


 514 007e 2046     		mov	r0, r4
 515 0080 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 516 0084 15F0010F 		tst	r5, #1
 517 0088 0CBF     		ite	eq
 518 008a 3021     		moveq	r1, #48
 519 008c 3121     		movne	r1, #49
 520 008e 2046     		mov	r0, r4
 521 0090 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 522 0094 1F26     		movs	r6, #31
 523              	.L142:
 524 0096 2C21     		movs	r1, #44
 525 0098 6D08     		lsrs	r5, r5, #1
 526 009a 2046     		mov	r0, r4
 527 009c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 528 00a0 15F0010F 		tst	r5, #1
 529 00a4 0CBF     		ite	eq
 530 00a6 3021     		moveq	r1, #48
 531 00a8 3121     		movne	r1, #49
 532 00aa 2046     		mov	r0, r4
 533 00ac FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 534 00b0 013E     		subs	r6, r6, #1
 535 00b2 F0D1     		bne	.L142
 536 00b4 2046     		mov	r0, r4
 537 00b6 5D21     		movs	r1, #93
 538 00b8 28E0     		b	.L157
 539              	.L136:
 540 00ba 1346     		mov	r3, r2
 541 00bc 0A46     		mov	r2, r1
 542 00be 0146     		mov	r1, r0
 543 00c0 3046     		mov	r0, r6
 544 00c2 03B0     		add	sp, sp, #12
 545              		@ sp needed
 546 00c4 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 547 00c8 FFF7FEBF 		b	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE
 548              	.L137:
 549 00cc 3046     		mov	r0, r6
 550 00ce FFF7FEFF 		bl	strlen
 551 00d2 0025     		movs	r5, #0
 552 00d4 0123     		movs	r3, #1
 553 00d6 0246     		mov	r2, r0
 554 00d8 3146     		mov	r1, r6
 555 00da 2046     		mov	r0, r4
 556 00dc CDE90035 		strd	r3, r5, [sp]
 557 00e0 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 558              	.L125:
 559 00e4 03B0     		add	sp, sp, #12
 560              		@ sp needed
 561 00e6 F0BD     		pop	{r4, r5, r6, r7, pc}
 562              	.L138:
 563 00e8 3768     		ldr	r7, [r6]
 564 00ea 1C4E     		ldr	r6, .L163+20
 565 00ec 0025     		movs	r5, #0
 566 00ee 2222     		movs	r2, #34
 567              	.L147:
 568 00f0 27FA05F3 		lsr	r3, r7, r5
 569 00f4 DBB2     		uxtb	r3, r3
 570 00f6 0835     		adds	r5, r5, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 11


 571 00f8 3146     		mov	r1, r6
 572 00fa 2046     		mov	r0, r4
 573 00fc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 574 0100 202D     		cmp	r5, #32
 575 0102 4FF02E02 		mov	r2, #46
 576 0106 F3D1     		bne	.L147
 577 0108 2046     		mov	r0, r4
 578 010a 2221     		movs	r1, #34
 579              	.L157:
 580 010c 03B0     		add	sp, sp, #12
 581              		@ sp needed
 582 010e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 583 0112 FFF7FEBF 		b	_ZN12OutputBuffer3catEc
 584              	.L127:
 585 0116 D207     		lsls	r2, r2, #31
 586 0118 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 587 011a 09D4     		bmi	.L162
 588 011c 1049     		ldr	r1, .L163+24
 589 011e 114A     		ldr	r2, .L163+28
 590 0120 002B     		cmp	r3, #0
 591 0122 18BF     		it	ne
 592 0124 1146     		movne	r1, r2
 593              	.L158:
 594 0126 03B0     		add	sp, sp, #12
 595              		@ sp needed
 596 0128 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 597 012c FFF7FEBF 		b	_ZN12OutputBuffer3catEPKc
 598              	.L162:
 599 0130 002B     		cmp	r3, #0
 600 0132 0CBF     		ite	eq
 601 0134 3021     		moveq	r1, #48
 602 0136 3121     		movne	r1, #49
 603 0138 E8E7     		b	.L157
 604              	.L143:
 605 013a 0B49     		ldr	r1, .L163+32
 606 013c F3E7     		b	.L158
 607              	.L161:
 608 013e 2A46     		mov	r2, r5
 609 0140 2046     		mov	r0, r4
 610 0142 0149     		ldr	r1, .L163
 611 0144 73E7     		b	.L159
 612              	.L164:
 613 0146 00BF     		.align	2
 614              	.L163:
 615 0148 28000000 		.word	.LC5
 616 014c 2C000000 		.word	.LC6
 617 0150 10000000 		.word	.LC2
 618 0154 18000000 		.word	.LC3
 619 0158 20000000 		.word	.LC4
 620 015c 40000000 		.word	.LC8
 621 0160 08000000 		.word	.LC1
 622 0164 00000000 		.word	.LC0
 623 0168 30000000 		.word	.LC7
 624              		.size	_ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11ReportFlagsEP
 625              		.section	.text._ZNK21ObjectModelTableEntry9IdCompareEPKc,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 12


 628              		.global	_ZNK21ObjectModelTableEntry9IdCompareEPKc
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu fpv4-sp-d16
 633              		.type	_ZNK21ObjectModelTableEntry9IdCompareEPKc, %function
 634              	_ZNK21ObjectModelTableEntry9IdCompareEPKc:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 639 0002 1BB1     		cbz	r3, .L165
 640 0004 2A2B     		cmp	r3, #42
 641 0006 01D0     		beq	.L165
 642 0008 FFF7FEBF 		b	_ZNK21ObjectModelTableEntry9IdCompareEPKc.part.0
 643              	.L165:
 644 000c 0020     		movs	r0, #0
 645 000e 7047     		bx	lr
 646              		.size	_ZNK21ObjectModelTableEntry9IdCompareEPKc, .-_ZNK21ObjectModelTableEntry9IdCompareEPKc
 647              		.section	.text._ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu fpv4-sp-d16
 655              		.type	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc, %function
 656              	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc:
 657              		@ args = 0, pretend = 0, frame = 8
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 660 0004 0F46     		mov	r7, r1
 661 0006 83B0     		sub	sp, sp, #12
 662 0008 1146     		mov	r1, r2
 663 000a 1446     		mov	r4, r2
 664 000c 0646     		mov	r6, r0
 665 000e FFF7FEFF 		bl	_ZN11ObjectModel25FindObjectModelTableEntryEPKc
 666 0012 0546     		mov	r5, r0
 667 0014 00B3     		cbz	r0, .L206
 668 0016 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 669 0018 2BB9     		cbnz	r3, .L176
 670 001a 07E0     		b	.L173
 671              	.L209:
 672 001c 5B2B     		cmp	r3, #91
 673 001e 05D0     		beq	.L173
 674 0020 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 675 0024 13B1     		cbz	r3, .L173
 676              	.L176:
 677 0026 2E2B     		cmp	r3, #46
 678 0028 F8D1     		bne	.L209
 679 002a 0134     		adds	r4, r4, #1
 680              	.L173:
 681 002c 6B68     		ldr	r3, [r5, #4]
 682 002e 3046     		mov	r0, r6
 683 0030 9847     		blx	r3
 684 0032 2D7A     		ldrb	r5, [r5, #8]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 13


 685 0034 2B06     		lsls	r3, r5, #24
 686 0036 8046     		mov	r8, r0
 687 0038 0AD4     		bmi	.L210
 688              	.L177:
 689 003a 6B1E     		subs	r3, r5, #1
 690 003c 0A2B     		cmp	r3, #10
 691 003e 0AD8     		bhi	.L190
 692 0040 DFE803F0 		tbb	[pc, r3]
 693              	.L182:
 694 0044 15       		.byte	(.L181-.L182)/2
 695 0045 0E       		.byte	(.L188-.L182)/2
 696 0046 0E       		.byte	(.L188-.L182)/2
 697 0047 20       		.byte	(.L185-.L182)/2
 698 0048 20       		.byte	(.L185-.L182)/2
 699 0049 20       		.byte	(.L185-.L182)/2
 700 004a 0E       		.byte	(.L188-.L182)/2
 701 004b 0E       		.byte	(.L188-.L182)/2
 702 004c 19       		.byte	(.L186-.L182)/2
 703 004d 24       		.byte	(.L187-.L182)/2
 704 004e 0E       		.byte	(.L188-.L182)/2
 705 004f 00       		.p2align 1
 706              	.L210:
 707 0050 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 708 0052 5B2B     		cmp	r3, #91
 709 0054 1DD0     		beq	.L211
 710              	.L190:
 711 0056 0025     		movs	r5, #0
 712              	.L206:
 713 0058 2846     		mov	r0, r5
 714 005a 03B0     		add	sp, sp, #12
 715              		@ sp needed
 716 005c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 717              	.L188:
 718 0060 D8F80030 		ldr	r3, [r8]
 719 0064 3B60     		str	r3, [r7]
 720 0066 2846     		mov	r0, r5
 721 0068 03B0     		add	sp, sp, #12
 722              		@ sp needed
 723 006a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 724              	.L181:
 725 006e 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 726 0072 3B70     		strb	r3, [r7]
 727 0074 F0E7     		b	.L206
 728              	.L186:
 729 0076 2246     		mov	r2, r4
 730 0078 3946     		mov	r1, r7
 731 007a 4046     		mov	r0, r8
 732 007c FFF7FEFF 		bl	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc
 733 0080 0546     		mov	r5, r0
 734 0082 E9E7     		b	.L206
 735              	.L185:
 736 0084 D8F80030 		ldr	r3, [r8]	@ float
 737 0088 3B60     		str	r3, [r7]	@ float
 738 008a E5E7     		b	.L206
 739              	.L187:
 740 008c C7F80080 		str	r8, [r7]
 741 0090 E2E7     		b	.L206
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 14


 742              	.L211:
 743 0092 0134     		adds	r4, r4, #1
 744 0094 2046     		mov	r0, r4
 745 0096 0A22     		movs	r2, #10
 746 0098 01A9     		add	r1, sp, #4
 747 009a FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 748 009e 019B     		ldr	r3, [sp, #4]
 749 00a0 9C42     		cmp	r4, r3
 750 00a2 8146     		mov	r9, r0
 751 00a4 D7D0     		beq	.L190
 752 00a6 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 753 00a8 5D2B     		cmp	r3, #93
 754 00aa D4D1     		bne	.L190
 755 00ac D8F80030 		ldr	r3, [r8]
 756 00b0 3046     		mov	r0, r6
 757 00b2 9847     		blx	r3
 758 00b4 4845     		cmp	r0, r9
 759 00b6 CED9     		bls	.L190
 760 00b8 019C     		ldr	r4, [sp, #4]
 761 00ba 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 762 00bc 4946     		mov	r1, r9
 763 00be 2E2B     		cmp	r3, #46
 764 00c0 3046     		mov	r0, r6
 765 00c2 D8F80430 		ldr	r3, [r8, #4]
 766 00c6 14BF     		ite	ne
 767 00c8 0134     		addne	r4, r4, #1
 768 00ca 0234     		addeq	r4, r4, #2
 769 00cc 9847     		blx	r3
 770 00ce 05F07F05 		and	r5, r5, #127
 771 00d2 8046     		mov	r8, r0
 772 00d4 B1E7     		b	.L177
 773              		.size	_ZN11ObjectModel14GetObjectValueER15ExpressionValuePKc, .-_ZN11ObjectModel14GetObjectValueER
 774 00d6 00BF     		.section	.text._ZN11ObjectModel14GetObjectValueERfPKc,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	_ZN11ObjectModel14GetObjectValueERfPKc
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	_ZN11ObjectModel14GetObjectValueERfPKc, %function
 783              	_ZN11ObjectModel14GetObjectValueERfPKc:
 784              		@ args = 0, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786 0000 70B5     		push	{r4, r5, r6, lr}
 787 0002 0546     		mov	r5, r0
 788 0004 0E46     		mov	r6, r1
 789 0006 1446     		mov	r4, r2
 790              	.L213:
 791 0008 2146     		mov	r1, r4
 792 000a 2846     		mov	r0, r5
 793 000c FFF7FEFF 		bl	_ZN11ObjectModel25FindObjectModelTableEntryEPKc
 794 0010 60B1     		cbz	r0, .L246
 795 0012 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 796 0014 1A06     		lsls	r2, r3, #24
 797 0016 08D4     		bmi	.L226
 798 0018 023B     		subs	r3, r3, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 15


 799 001a 072B     		cmp	r3, #7
 800 001c 05D8     		bhi	.L226
 801 001e DFE803F0 		tbb	[pc, r3]
 802              	.L216:
 803 0022 29       		.byte	(.L215-.L216)/2
 804 0023 1E       		.byte	(.L217-.L216)/2
 805 0024 17       		.byte	(.L218-.L216)/2
 806 0025 04       		.byte	(.L226-.L216)/2
 807 0026 04       		.byte	(.L226-.L216)/2
 808 0027 04       		.byte	(.L226-.L216)/2
 809 0028 04       		.byte	(.L226-.L216)/2
 810 0029 06       		.byte	(.L219-.L216)/2
 811              		.p2align 1
 812              	.L226:
 813 002a 0020     		movs	r0, #0
 814              	.L246:
 815 002c 70BD     		pop	{r4, r5, r6, pc}
 816              	.L219:
 817 002e 4368     		ldr	r3, [r0, #4]
 818 0030 2846     		mov	r0, r5
 819 0032 9847     		blx	r3
 820 0034 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 821 0036 0546     		mov	r5, r0
 822 0038 33B9     		cbnz	r3, .L245
 823 003a E5E7     		b	.L213
 824              	.L251:
 825 003c 5B2B     		cmp	r3, #91
 826 003e E3D0     		beq	.L213
 827 0040 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 828 0044 002B     		cmp	r3, #0
 829 0046 DFD0     		beq	.L213
 830              	.L245:
 831 0048 2E2B     		cmp	r3, #46
 832 004a F7D1     		bne	.L251
 833 004c 0134     		adds	r4, r4, #1
 834 004e DBE7     		b	.L213
 835              	.L218:
 836 0050 4368     		ldr	r3, [r0, #4]
 837 0052 2846     		mov	r0, r5
 838 0054 9847     		blx	r3
 839 0056 0368     		ldr	r3, [r0]	@ float
 840 0058 3360     		str	r3, [r6]	@ float
 841 005a 0120     		movs	r0, #1
 842 005c 70BD     		pop	{r4, r5, r6, pc}
 843              	.L217:
 844 005e 4368     		ldr	r3, [r0, #4]
 845 0060 2846     		mov	r0, r5
 846 0062 9847     		blx	r3
 847 0064 D0ED007A 		vldr.32	s15, [r0]	@ int
 848 0068 F8EEE77A 		vcvt.f32.s32	s15, s15
 849 006c 0120     		movs	r0, #1
 850 006e C6ED007A 		vstr.32	s15, [r6]
 851 0072 70BD     		pop	{r4, r5, r6, pc}
 852              	.L215:
 853 0074 4368     		ldr	r3, [r0, #4]
 854 0076 2846     		mov	r0, r5
 855 0078 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 16


 856 007a D0ED007A 		vldr.32	s15, [r0]	@ int
 857 007e F8EE677A 		vcvt.f32.u32	s15, s15
 858 0082 0120     		movs	r0, #1
 859 0084 C6ED007A 		vstr.32	s15, [r6]
 860 0088 70BD     		pop	{r4, r5, r6, pc}
 861              		.size	_ZN11ObjectModel14GetObjectValueERfPKc, .-_ZN11ObjectModel14GetObjectValueERfPKc
 862 008a 00BF     		.section	.text._ZN11ObjectModel14GetObjectValueERlPKc,"ax",%progbits
 863              		.align	1
 864              		.p2align 2,,3
 865              		.global	_ZN11ObjectModel14GetObjectValueERlPKc
 866              		.syntax unified
 867              		.thumb
 868              		.thumb_func
 869              		.fpu fpv4-sp-d16
 870              		.type	_ZN11ObjectModel14GetObjectValueERlPKc, %function
 871              	_ZN11ObjectModel14GetObjectValueERlPKc:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874 0000 70B5     		push	{r4, r5, r6, lr}
 875 0002 0546     		mov	r5, r0
 876 0004 0E46     		mov	r6, r1
 877 0006 1446     		mov	r4, r2
 878              	.L253:
 879 0008 2146     		mov	r1, r4
 880 000a 2846     		mov	r0, r5
 881 000c FFF7FEFF 		bl	_ZN11ObjectModel25FindObjectModelTableEntryEPKc
 882 0010 48B1     		cbz	r0, .L285
 883 0012 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 884 0014 1A06     		lsls	r2, r3, #24
 885 0016 05D4     		bmi	.L283
 886 0018 032B     		cmp	r3, #3
 887 001a 05D0     		beq	.L257
 888 001c 092B     		cmp	r3, #9
 889 001e 0AD0     		beq	.L256
 890 0020 022B     		cmp	r3, #2
 891 0022 01D0     		beq	.L257
 892              	.L283:
 893 0024 0020     		movs	r0, #0
 894              	.L285:
 895 0026 70BD     		pop	{r4, r5, r6, pc}
 896              	.L257:
 897 0028 4368     		ldr	r3, [r0, #4]
 898 002a 2846     		mov	r0, r5
 899 002c 9847     		blx	r3
 900 002e 0368     		ldr	r3, [r0]
 901 0030 3360     		str	r3, [r6]
 902 0032 0120     		movs	r0, #1
 903 0034 70BD     		pop	{r4, r5, r6, pc}
 904              	.L256:
 905 0036 4368     		ldr	r3, [r0, #4]
 906 0038 2846     		mov	r0, r5
 907 003a 9847     		blx	r3
 908 003c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 909 003e 0546     		mov	r5, r0
 910 0040 33B9     		cbnz	r3, .L284
 911 0042 E1E7     		b	.L253
 912              	.L290:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 17


 913 0044 5B2B     		cmp	r3, #91
 914 0046 DFD0     		beq	.L253
 915 0048 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 916 004c 002B     		cmp	r3, #0
 917 004e DBD0     		beq	.L253
 918              	.L284:
 919 0050 2E2B     		cmp	r3, #46
 920 0052 F7D1     		bne	.L290
 921 0054 0134     		adds	r4, r4, #1
 922 0056 D7E7     		b	.L253
 923              		.size	_ZN11ObjectModel14GetObjectValueERlPKc, .-_ZN11ObjectModel14GetObjectValueERlPKc
 924              		.weak	_ZTV11ObjectModel
 925              		.section	.rodata._ZTV11ObjectModel,"aG",%progbits,_ZTV11ObjectModel,comdat
 926              		.align	2
 927              		.type	_ZTV11ObjectModel, %object
 928              		.size	_ZTV11ObjectModel, 12
 929              	_ZTV11ObjectModel:
 930 0000 00000000 		.word	0
 931 0004 00000000 		.word	0
 932 0008 00000000 		.word	__cxa_pure_virtual
 933              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 934              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 935              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 936              	_ZL28cpu_irq_prev_interrupt_state:
 937 0000 00       		.space	1
 938              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 939              		.align	2
 940              		.type	_ZL32cpu_irq_critical_section_counter, %object
 941              		.size	_ZL32cpu_irq_critical_section_counter, 4
 942              	_ZL32cpu_irq_critical_section_counter:
 943 0000 00000000 		.space	4
 944              		.section	.rodata._ZN21ObjectModelTableEntry16ReportItemAsJsonEP12OutputBufferPKcN11ObjectModel11Re
 945              		.align	2
 946              	.LC0:
 947 0000 22796573 		.ascii	"\"yes\"\000"
 947      2200
 948 0006 0000     		.space	2
 949              	.LC1:
 950 0008 226E6F22 		.ascii	"\"no\"\000"
 950      00
 951 000d 000000   		.space	3
 952              	.LC2:
 953 0010 252E3166 		.ascii	"%.1f\000"
 953      00
 954 0015 000000   		.space	3
 955              	.LC3:
 956 0018 252E3266 		.ascii	"%.2f\000"
 956      00
 957 001d 000000   		.space	3
 958              	.LC4:
 959 0020 252E3366 		.ascii	"%.3f\000"
 959      00
 960 0025 000000   		.space	3
 961              	.LC5:
 962 0028 256C7500 		.ascii	"%lu\000"
 963              	.LC6:
 964 002c 256C6900 		.ascii	"%li\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccb3cmfu.s 			page 18


 965              	.LC7:
 966 0030 22756E69 		.ascii	"\"unimplemented\"\000"
 966      6D706C65 
 966      6D656E74 
 966      65642200 
 967              	.LC8:
 968 0040 25632575 		.ascii	"%c%u\000"
 968      00
 969              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
