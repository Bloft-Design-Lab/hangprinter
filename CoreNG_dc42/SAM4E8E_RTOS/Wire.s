ARM GAS  /tmp/ccNf2cVs.s 			page 1


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
  13              		.file	"Wire.cpp"
  14              		.section	.text._ZL9Wire_Initv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZL9Wire_Initv, %function
  22              	_ZL9Wire_Initv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 08B5     		push	{r3, lr}
  26 0002 1120     		movs	r0, #17
  27 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
  28 0008 0548     		ldr	r0, .L3
  29 000a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  30 000e 054B     		ldr	r3, .L3+4
  31 0010 4FF40032 		mov	r2, #131072
  32 0014 C3F88020 		str	r2, [r3, #128]
  33 0018 C3F88021 		str	r2, [r3, #384]
  34 001c 08BD     		pop	{r3, pc}
  35              	.L4:
  36 001e 00BF     		.align	2
  37              	.L3:
  38 0020 D00B0000 		.word	g_APinDescription+3024
  39 0024 00E100E0 		.word	-536813312
  40              		.size	_ZL9Wire_Initv, .-_ZL9Wire_Initv
  41              		.section	.text._ZN7TwoWire11ErrorCounts5ClearEv,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN7TwoWire11ErrorCounts5ClearEv
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN7TwoWire11ErrorCounts5ClearEv, %function
  50              	_ZN7TwoWire11ErrorCounts5ClearEv:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 0023     		movs	r3, #0
  55 0002 C360     		str	r3, [r0, #12]
  56 0004 8360     		str	r3, [r0, #8]
  57 0006 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/ccNf2cVs.s 			page 2


  58 0008 0360     		str	r3, [r0]
  59 000a 7047     		bx	lr
  60              		.size	_ZN7TwoWire11ErrorCounts5ClearEv, .-_ZN7TwoWire11ErrorCounts5ClearEv
  61              		.section	.text._ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim, %function
  70              	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 70B5     		push	{r4, r5, r6, lr}
  74 0002 0546     		mov	r5, r0
  75 0004 0E46     		mov	r6, r1
  76 0006 FFF7FEFF 		bl	millis
  77 000a 0446     		mov	r4, r0
  78 000c 01E0     		b	.L9
  79              	.L12:
  80 000e 3042     		tst	r0, r6
  81 0010 05D1     		bne	.L6
  82              	.L9:
  83 0012 FFF7FEFF 		bl	millis
  84 0016 031B     		subs	r3, r0, r4
  85 0018 022B     		cmp	r3, #2
  86 001a 286A     		ldr	r0, [r5, #32]
  87 001c F7D9     		bls	.L12
  88              	.L6:
  89 001e 70BD     		pop	{r4, r5, r6, pc}
  90              		.size	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim, .-_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
  91              		.section	.text._ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE, %function
 100              	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103 0000 70B5     		push	{r4, r5, r6, lr}
 104 0002 0546     		mov	r5, r0
 105 0004 0C46     		mov	r4, r1
 106 0006 0068     		ldr	r0, [r0]
 107 0008 41F48071 		orr	r1, r1, #256
 108 000c 1646     		mov	r6, r2
 109 000e 9847     		blx	r3
 110 0010 C305     		lsls	r3, r0, #23
 111 0012 06D4     		bmi	.L18
 112 0014 2040     		ands	r0, r4, r0
 113 0016 03BF     		ittte	eq
 114 0018 3368     		ldreq	r3, [r6]
ARM GAS  /tmp/ccNf2cVs.s 			page 3


 115 001a 0133     		addeq	r3, r3, #1
 116 001c 3360     		streq	r3, [r6]
 117 001e 0120     		movne	r0, #1
 118 0020 70BD     		pop	{r4, r5, r6, pc}
 119              	.L18:
 120 0022 AB68     		ldr	r3, [r5, #8]
 121 0024 0133     		adds	r3, r3, #1
 122 0026 AB60     		str	r3, [r5, #8]
 123 0028 0020     		movs	r0, #0
 124 002a 70BD     		pop	{r4, r5, r6, pc}
 125              		.size	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE, .-_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE
 126              		.section	.text._ZN7TwoWireC2EP3TwiPFvvE,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	_ZN7TwoWireC2EP3TwiPFvvE
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_ZN7TwoWireC2EP3TwiPFvvE, %function
 135              	_ZN7TwoWireC2EP3TwiPFvvE:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 80E80600 		stm	r0, {r1, r2}
 140 0004 7047     		bx	lr
 141              		.size	_ZN7TwoWireC2EP3TwiPFvvE, .-_ZN7TwoWireC2EP3TwiPFvvE
 142              		.global	_ZN7TwoWireC1EP3TwiPFvvE
 143              		.thumb_set _ZN7TwoWireC1EP3TwiPFvvE,_ZN7TwoWireC2EP3TwiPFvvE
 144 0006 00BF     		.section	.text._ZN7TwoWire11BeginMasterEm,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN7TwoWire11BeginMasterEm
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN7TwoWire11BeginMasterEm, %function
 153              	_ZN7TwoWire11BeginMasterEm:
 154              		@ args = 0, pretend = 0, frame = 16
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 30B5     		push	{r4, r5, lr}
 157 0002 4368     		ldr	r3, [r0, #4]
 158 0004 85B0     		sub	sp, sp, #20
 159 0006 0446     		mov	r4, r0
 160 0008 0D46     		mov	r5, r1
 161 000a 03B1     		cbz	r3, .L21
 162 000c 9847     		blx	r3
 163              	.L21:
 164 000e 2068     		ldr	r0, [r4]
 165 0010 0A4B     		ldr	r3, .L26
 166 0012 0295     		str	r5, [sp, #8]
 167 0014 40F20222 		movw	r2, #514
 168 0018 0025     		movs	r5, #0
 169 001a C0F82021 		str	r2, [r0, #288]
 170 001e 01A9     		add	r1, sp, #4
 171 0020 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccNf2cVs.s 			page 4


 172 0022 8DF80D50 		strb	r5, [sp, #13]
 173 0026 8DF80C50 		strb	r5, [sp, #12]
 174 002a FFF7FEFF 		bl	twi_master_init
 175 002e 6561     		str	r5, [r4, #20]
 176 0030 2561     		str	r5, [r4, #16]
 177 0032 E560     		str	r5, [r4, #12]
 178 0034 A560     		str	r5, [r4, #8]
 179 0036 05B0     		add	sp, sp, #20
 180              		@ sp needed
 181 0038 30BD     		pop	{r4, r5, pc}
 182              	.L27:
 183 003a 00BF     		.align	2
 184              	.L26:
 185 003c 000E2707 		.word	120000000
 186              		.size	_ZN7TwoWire11BeginMasterEm, .-_ZN7TwoWire11BeginMasterEm
 187              		.section	.text._ZN7TwoWire8TransferEtPhjjPFmP3TwimE,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE, %function
 196              	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE:
 197              		@ args = 8, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 200 0004 DDF82090 		ldr	r9, [sp, #32]
 201 0008 099F     		ldr	r7, [sp, #36]
 202 000a 19EB0306 		adds	r6, r9, r3
 203 000e 30D0     		beq	.L28
 204 0010 7F29     		cmp	r1, #127
 205 0012 9846     		mov	r8, r3
 206 0014 0446     		mov	r4, r0
 207 0016 1546     		mov	r5, r2
 208 0018 2EDD     		ble	.L30
 209 001a 0A02     		lsls	r2, r1, #8
 210 001c 02F44032 		and	r2, r2, #196608
 211 0020 0368     		ldr	r3, [r0]
 212 0022 42F4F002 		orr	r2, r2, #7864320
 213 0026 42F48072 		orr	r2, r2, #256
 214 002a C9B2     		uxtb	r1, r1
 215 002c 5A60     		str	r2, [r3, #4]
 216 002e D960     		str	r1, [r3, #12]
 217 0030 B8F1000F 		cmp	r8, #0
 218 0034 28D0     		beq	.L32
 219              	.L84:
 220 0036 0026     		movs	r6, #0
 221 0038 06F1010A 		add	r10, r6, #1
 222 003c D045     		cmp	r8, r10
 223 003e 4FF48271 		mov	r1, #260
 224 0042 1846     		mov	r0, r3
 225 0044 51D0     		beq	.L33
 226              	.L86:
 227 0046 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 228 0048 5A63     		str	r2, [r3, #52]
ARM GAS  /tmp/ccNf2cVs.s 			page 5


 229 004a B847     		blx	r7
 230 004c C305     		lsls	r3, r0, #23
 231 004e 05F10105 		add	r5, r5, #1
 232 0052 3FD5     		bpl	.L34
 233 0054 A368     		ldr	r3, [r4, #8]
 234 0056 0133     		adds	r3, r3, #1
 235 0058 A360     		str	r3, [r4, #8]
 236              	.L35:
 237 005a 2068     		ldr	r0, [r4]
 238 005c 0223     		movs	r3, #2
 239 005e 0360     		str	r3, [r0]
 240 0060 40F20111 		movw	r1, #257
 241 0064 B847     		blx	r7
 242 0066 C205     		lsls	r2, r0, #23
 243 0068 00F1A180 		bmi	.L82
 244 006c C207     		lsls	r2, r0, #31
 245 006e 40F1BD80 		bpl	.L83
 246              	.L28:
 247 0072 3046     		mov	r0, r6
 248 0074 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 249              	.L30:
 250 0078 0368     		ldr	r3, [r0]
 251 007a 0904     		lsls	r1, r1, #16
 252 007c 0022     		movs	r2, #0
 253 007e 5960     		str	r1, [r3, #4]
 254 0080 DA60     		str	r2, [r3, #12]
 255 0082 B8F1000F 		cmp	r8, #0
 256 0086 D6D1     		bne	.L84
 257              	.L32:
 258 0088 5A68     		ldr	r2, [r3, #4]
 259 008a B9F1010F 		cmp	r9, #1
 260 008e 42F48052 		orr	r2, r2, #4096
 261 0092 5A60     		str	r2, [r3, #4]
 262 0094 00F08F80 		beq	.L85
 263 0098 0122     		movs	r2, #1
 264 009a A9F1020A 		sub	r10, r9, #2
 265 009e 1A60     		str	r2, [r3]
 266 00a0 AA44     		add	r10, r10, r5
 267 00a2 0026     		movs	r6, #0
 268              	.L52:
 269 00a4 1846     		mov	r0, r3
 270 00a6 4FF48171 		mov	r1, #258
 271 00aa B847     		blx	r7
 272 00ac C305     		lsls	r3, r0, #23
 273 00ae 3FD5     		bpl	.L48
 274 00b0 A368     		ldr	r3, [r4, #8]
 275 00b2 0133     		adds	r3, r3, #1
 276 00b4 A360     		str	r3, [r4, #8]
 277              	.L49:
 278 00b6 2068     		ldr	r0, [r4]
 279 00b8 0223     		movs	r3, #2
 280 00ba 0360     		str	r3, [r0]
 281 00bc 40F20111 		movw	r1, #257
 282 00c0 B847     		blx	r7
 283 00c2 C305     		lsls	r3, r0, #23
 284 00c4 58D5     		bpl	.L56
 285              	.L79:
ARM GAS  /tmp/ccNf2cVs.s 			page 6


 286 00c6 A368     		ldr	r3, [r4, #8]
 287 00c8 0133     		adds	r3, r3, #1
 288 00ca A360     		str	r3, [r4, #8]
 289              	.L57:
 290 00cc 4644     		add	r6, r6, r8
 291              	.L88:
 292 00ce 3046     		mov	r0, r6
 293 00d0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 294              	.L34:
 295 00d4 4107     		lsls	r1, r0, #29
 296 00d6 27D5     		bpl	.L36
 297 00d8 5646     		mov	r6, r10
 298 00da 2368     		ldr	r3, [r4]
 299 00dc 06F1010A 		add	r10, r6, #1
 300 00e0 D045     		cmp	r8, r10
 301 00e2 4FF48271 		mov	r1, #260
 302 00e6 1846     		mov	r0, r3
 303 00e8 ADD1     		bne	.L86
 304              	.L33:
 305 00ea 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 306 00ec 5A63     		str	r2, [r3, #52]
 307 00ee 0222     		movs	r2, #2
 308 00f0 1A60     		str	r2, [r3]
 309 00f2 1846     		mov	r0, r3
 310 00f4 4FF48271 		mov	r1, #260
 311 00f8 B847     		blx	r7
 312 00fa C305     		lsls	r3, r0, #23
 313 00fc 49D5     		bpl	.L38
 314 00fe A368     		ldr	r3, [r4, #8]
 315 0100 0133     		adds	r3, r3, #1
 316 0102 A360     		str	r3, [r4, #8]
 317              	.L39:
 318 0104 40F20111 		movw	r1, #257
 319 0108 2068     		ldr	r0, [r4]
 320 010a B847     		blx	r7
 321 010c C205     		lsls	r2, r0, #23
 322 010e 3AD5     		bpl	.L40
 323 0110 A368     		ldr	r3, [r4, #8]
 324 0112 0133     		adds	r3, r3, #1
 325 0114 A360     		str	r3, [r4, #8]
 326              	.L41:
 327 0116 5645     		cmp	r6, r10
 328 0118 ABD3     		bcc	.L28
 329 011a B9F1000F 		cmp	r9, #0
 330 011e A8D0     		beq	.L28
 331 0120 2368     		ldr	r3, [r4]
 332 0122 0135     		adds	r5, r5, #1
 333 0124 B046     		mov	r8, r6
 334 0126 AFE7     		b	.L32
 335              	.L36:
 336 0128 E368     		ldr	r3, [r4, #12]
 337 012a 0133     		adds	r3, r3, #1
 338 012c E360     		str	r3, [r4, #12]
 339 012e 94E7     		b	.L35
 340              	.L48:
 341 0130 8107     		lsls	r1, r0, #30
 342 0132 03D4     		bmi	.L50
ARM GAS  /tmp/ccNf2cVs.s 			page 7


 343 0134 2369     		ldr	r3, [r4, #16]
 344 0136 0133     		adds	r3, r3, #1
 345 0138 2361     		str	r3, [r4, #16]
 346 013a BCE7     		b	.L49
 347              	.L50:
 348 013c 5545     		cmp	r5, r10
 349 013e 06F10106 		add	r6, r6, #1
 350 0142 05D0     		beq	.L87
 351 0144 2368     		ldr	r3, [r4]
 352 0146 1B6B     		ldr	r3, [r3, #48]
 353 0148 05F8013B 		strb	r3, [r5], #1
 354 014c 2368     		ldr	r3, [r4]
 355 014e A9E7     		b	.L52
 356              	.L87:
 357 0150 2368     		ldr	r3, [r4]
 358 0152 0222     		movs	r2, #2
 359 0154 1A60     		str	r2, [r3]
 360 0156 1B6B     		ldr	r3, [r3, #48]
 361 0158 2B70     		strb	r3, [r5]
 362 015a 2068     		ldr	r0, [r4]
 363 015c 4FF48171 		mov	r1, #258
 364 0160 B847     		blx	r7
 365 0162 C205     		lsls	r2, r0, #23
 366 0164 1CD5     		bpl	.L53
 367 0166 A368     		ldr	r3, [r4, #8]
 368 0168 0133     		adds	r3, r3, #1
 369 016a A360     		str	r3, [r4, #8]
 370              	.L54:
 371 016c 40F20111 		movw	r1, #257
 372 0170 2068     		ldr	r0, [r4]
 373 0172 B847     		blx	r7
 374 0174 C505     		lsls	r5, r0, #23
 375 0176 A6D4     		bmi	.L79
 376              	.L56:
 377 0178 C107     		lsls	r1, r0, #31
 378 017a A7D4     		bmi	.L57
 379 017c 6369     		ldr	r3, [r4, #20]
 380 017e 0133     		adds	r3, r3, #1
 381 0180 6361     		str	r3, [r4, #20]
 382 0182 4644     		add	r6, r6, r8
 383 0184 A3E7     		b	.L88
 384              	.L40:
 385 0186 C307     		lsls	r3, r0, #31
 386 0188 C5D4     		bmi	.L41
 387 018a 6369     		ldr	r3, [r4, #20]
 388 018c 0133     		adds	r3, r3, #1
 389 018e 6361     		str	r3, [r4, #20]
 390 0190 C1E7     		b	.L41
 391              	.L38:
 392 0192 4107     		lsls	r1, r0, #29
 393 0194 5DBF     		ittte	pl
 394 0196 E368     		ldrpl	r3, [r4, #12]
 395 0198 0133     		addpl	r3, r3, #1
 396 019a E360     		strpl	r3, [r4, #12]
 397 019c 5646     		movmi	r6, r10
 398 019e B1E7     		b	.L39
 399              	.L53:
ARM GAS  /tmp/ccNf2cVs.s 			page 8


 400 01a0 8307     		lsls	r3, r0, #30
 401 01a2 27D5     		bpl	.L89
 402 01a4 2368     		ldr	r3, [r4]
 403 01a6 1B6B     		ldr	r3, [r3, #48]
 404 01a8 6B70     		strb	r3, [r5, #1]
 405 01aa 4E46     		mov	r6, r9
 406 01ac DEE7     		b	.L54
 407              	.L82:
 408 01ae A368     		ldr	r3, [r4, #8]
 409 01b0 0133     		adds	r3, r3, #1
 410 01b2 A360     		str	r3, [r4, #8]
 411 01b4 5DE7     		b	.L28
 412              	.L85:
 413 01b6 0322     		movs	r2, #3
 414 01b8 1A60     		str	r2, [r3]
 415 01ba 1846     		mov	r0, r3
 416 01bc 4FF48171 		mov	r1, #258
 417 01c0 B847     		blx	r7
 418 01c2 C605     		lsls	r6, r0, #23
 419 01c4 1AD4     		bmi	.L90
 420 01c6 10F00200 		ands	r0, r0, #2
 421 01ca 23D1     		bne	.L45
 422 01cc 2369     		ldr	r3, [r4, #16]
 423 01ce 0133     		adds	r3, r3, #1
 424 01d0 8146     		mov	r9, r0
 425 01d2 2361     		str	r3, [r4, #16]
 426              	.L44:
 427 01d4 40F20111 		movw	r1, #257
 428 01d8 2068     		ldr	r0, [r4]
 429 01da B847     		blx	r7
 430 01dc C105     		lsls	r1, r0, #23
 431 01de 13D5     		bpl	.L46
 432 01e0 A368     		ldr	r3, [r4, #8]
 433 01e2 0133     		adds	r3, r3, #1
 434 01e4 A360     		str	r3, [r4, #8]
 435              	.L47:
 436 01e6 08EB0906 		add	r6, r8, r9
 437 01ea 42E7     		b	.L28
 438              	.L83:
 439 01ec 6369     		ldr	r3, [r4, #20]
 440 01ee 0133     		adds	r3, r3, #1
 441 01f0 6361     		str	r3, [r4, #20]
 442 01f2 3EE7     		b	.L28
 443              	.L89:
 444 01f4 2369     		ldr	r3, [r4, #16]
 445 01f6 0133     		adds	r3, r3, #1
 446 01f8 2361     		str	r3, [r4, #16]
 447 01fa B7E7     		b	.L54
 448              	.L90:
 449 01fc A368     		ldr	r3, [r4, #8]
 450 01fe 0133     		adds	r3, r3, #1
 451 0200 A360     		str	r3, [r4, #8]
 452 0202 4FF00009 		mov	r9, #0
 453 0206 E5E7     		b	.L44
 454              	.L46:
 455 0208 C207     		lsls	r2, r0, #31
 456 020a ECD4     		bmi	.L47
ARM GAS  /tmp/ccNf2cVs.s 			page 9


 457 020c 6369     		ldr	r3, [r4, #20]
 458 020e 0133     		adds	r3, r3, #1
 459 0210 6361     		str	r3, [r4, #20]
 460 0212 E8E7     		b	.L47
 461              	.L45:
 462 0214 2368     		ldr	r3, [r4]
 463 0216 1B6B     		ldr	r3, [r3, #48]
 464 0218 2B70     		strb	r3, [r5]
 465 021a DBE7     		b	.L44
 466              		.size	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE, .-_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 467              		.section	.text._ZN7TwoWire14GetErrorCountsEb,"ax",%progbits
 468              		.align	1
 469              		.p2align 2,,3
 470              		.global	_ZN7TwoWire14GetErrorCountsEb
 471              		.syntax unified
 472              		.thumb
 473              		.thumb_func
 474              		.fpu fpv4-sp-d16
 475              		.type	_ZN7TwoWire14GetErrorCountsEb, %function
 476              	_ZN7TwoWire14GetErrorCountsEb:
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 480 0002 0446     		mov	r4, r0
 481 0004 0D46     		mov	r5, r1
 482 0006 9646     		mov	lr, r2
 483              		.syntax unified
 484              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 485 0008 EFF31087 		MRS r7, primask
 486              	@ 0 "" 2
 487              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 488 000c 72B6     		cpsid i
 489              	@ 0 "" 2
 490              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 491 000e BFF35F8F 		dmb
 492              	@ 0 "" 2
 493              		.thumb
 494              		.syntax unified
 495 0012 01F10803 		add	r3, r1, #8
 496 0016 0FCB     		ldm	r3, {r0, r1, r2, r3}
 497 0018 094E     		ldr	r6, .L98
 498 001a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 499 001e 0023     		movs	r3, #0
 500 0020 3370     		strb	r3, [r6]
 501 0022 BEF1000F 		cmp	lr, #0
 502 0026 03D0     		beq	.L92
 503 0028 6B61     		str	r3, [r5, #20]
 504 002a 2B61     		str	r3, [r5, #16]
 505 002c EB60     		str	r3, [r5, #12]
 506 002e AB60     		str	r3, [r5, #8]
 507              	.L92:
 508 0030 27B9     		cbnz	r7, .L91
 509 0032 0123     		movs	r3, #1
 510 0034 3370     		strb	r3, [r6]
 511              		.syntax unified
 512              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 513 0036 BFF35F8F 		dmb
ARM GAS  /tmp/ccNf2cVs.s 			page 10


 514              	@ 0 "" 2
 515              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 516 003a 62B6     		cpsie i
 517              	@ 0 "" 2
 518              		.thumb
 519              		.syntax unified
 520              	.L91:
 521 003c 2046     		mov	r0, r4
 522 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 523              	.L99:
 524              		.align	2
 525              	.L98:
 526 0040 00000000 		.word	g_interrupt_enabled
 527              		.size	_ZN7TwoWire14GetErrorCountsEb, .-_ZN7TwoWire14GetErrorCountsEb
 528              		.section	.text.startup._GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv,"ax",%progbits
 529              		.align	1
 530              		.p2align 2,,3
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 535              		.type	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv, %function
 536              	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv:
 537              		@ args = 0, pretend = 0, frame = 0
 538              		@ frame_needed = 0, uses_anonymous_args = 0
 539              		@ link register save eliminated.
 540 0000 024B     		ldr	r3, .L101
 541 0002 0349     		ldr	r1, .L101+4
 542 0004 034A     		ldr	r2, .L101+8
 543 0006 83E80600 		stm	r3, {r1, r2}
 544 000a 7047     		bx	lr
 545              	.L102:
 546              		.align	2
 547              	.L101:
 548 000c 00000000 		.word	.LANCHOR0
 549 0010 00800A40 		.word	1074429952
 550 0014 00000000 		.word	_ZL9Wire_Initv
 551              		.size	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv, .-_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5C
 552              		.section	.init_array,"aw",%init_array
 553              		.align	2
 554 0000 00000000 		.word	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv(target1)
 555              		.global	Wire
 556              		.section	.bss.Wire,"aw",%nobits
 557              		.align	2
 558              		.set	.LANCHOR0,. + 0
 559              		.type	Wire, %object
 560              		.size	Wire, 24
 561              	Wire:
 562 0000 00000000 		.space	24
 562      00000000 
 562      00000000 
 562      00000000 
 562      00000000 
 563              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 564              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 565              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 566              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  /tmp/ccNf2cVs.s 			page 11


 567 0000 00       		.space	1
 568              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 569              		.align	2
 570              		.type	_ZL32cpu_irq_critical_section_counter, %object
 571              		.size	_ZL32cpu_irq_critical_section_counter, 4
 572              	_ZL32cpu_irq_critical_section_counter:
 573 0000 00000000 		.space	4
 574              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
