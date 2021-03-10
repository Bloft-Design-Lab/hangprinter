ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 1


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
  14              		.text
  15              		.section	.text._ZL9Wire_Initv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZL9Wire_Initv, %function
  23              	_ZL9Wire_Initv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 1120     		movs	r0, #17
  28 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
  29 0008 0548     		ldr	r0, .L4
  30 000a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  31 000e 054B     		ldr	r3, .L4+4
  32 0010 4FF40032 		mov	r2, #131072
  33 0014 C3F88020 		str	r2, [r3, #128]
  34 0018 C3F88021 		str	r2, [r3, #384]
  35 001c 08BD     		pop	{r3, pc}
  36              	.L5:
  37 001e 00BF     		.align	2
  38              	.L4:
  39 0020 D00B0000 		.word	g_APinDescription+3024
  40 0024 00E100E0 		.word	-536813312
  41              		.size	_ZL9Wire_Initv, .-_ZL9Wire_Initv
  42              		.section	.text._ZN7TwoWire11ErrorCounts5ClearEv,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	_ZN7TwoWire11ErrorCounts5ClearEv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  50              		.type	_ZN7TwoWire11ErrorCounts5ClearEv, %function
  51              	_ZN7TwoWire11ErrorCounts5ClearEv:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 0023     		movs	r3, #0
  56 0002 C0E90233 		strd	r3, r3, [r0, #8]
  57 0006 C0E90033 		strd	r3, r3, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 2


  58 000a 7047     		bx	lr
  59              		.size	_ZN7TwoWire11ErrorCounts5ClearEv, .-_ZN7TwoWire11ErrorCounts5ClearEv
  60              		.section	.text._ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim, %function
  69              	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 70B5     		push	{r4, r5, r6, lr}
  73 0002 0546     		mov	r5, r0
  74 0004 0E46     		mov	r6, r1
  75 0006 FFF7FEFF 		bl	millis
  76 000a 0446     		mov	r4, r0
  77 000c 01E0     		b	.L9
  78              	.L13:
  79 000e 3042     		tst	r0, r6
  80 0010 05D1     		bne	.L7
  81              	.L9:
  82 0012 FFF7FEFF 		bl	millis
  83 0016 031B     		subs	r3, r0, r4
  84 0018 022B     		cmp	r3, #2
  85 001a 286A     		ldr	r0, [r5, #32]
  86 001c F7D9     		bls	.L13
  87              	.L7:
  88 001e 70BD     		pop	{r4, r5, r6, pc}
  89              		.size	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim, .-_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
  90              		.section	.text._ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE, %function
  99              	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 70B5     		push	{r4, r5, r6, lr}
 103 0002 0546     		mov	r5, r0
 104 0004 0C46     		mov	r4, r1
 105 0006 0068     		ldr	r0, [r0]
 106 0008 41F48071 		orr	r1, r1, #256
 107 000c 1646     		mov	r6, r2
 108 000e 9847     		blx	r3
 109 0010 C305     		lsls	r3, r0, #23
 110 0012 06D4     		bmi	.L19
 111 0014 2040     		ands	r0, r4, r0
 112 0016 03BF     		ittte	eq
 113 0018 3368     		ldreq	r3, [r6]
 114 001a 0133     		addeq	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 3


 115 001c 3360     		streq	r3, [r6]
 116 001e 0120     		movne	r0, #1
 117 0020 70BD     		pop	{r4, r5, r6, pc}
 118              	.L19:
 119 0022 AB68     		ldr	r3, [r5, #8]
 120 0024 0133     		adds	r3, r3, #1
 121 0026 AB60     		str	r3, [r5, #8]
 122 0028 0020     		movs	r0, #0
 123 002a 70BD     		pop	{r4, r5, r6, pc}
 124              		.size	_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE, .-_ZN7TwoWire13WaitForStatusEmRmPFmP3TwimE
 125              		.section	.text._ZN7TwoWireC2EP3TwiPFvvE,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN7TwoWireC2EP3TwiPFvvE
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN7TwoWireC2EP3TwiPFvvE, %function
 134              	_ZN7TwoWireC2EP3TwiPFvvE:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 C0E90012 		strd	r1, r2, [r0]
 139 0004 7047     		bx	lr
 140              		.size	_ZN7TwoWireC2EP3TwiPFvvE, .-_ZN7TwoWireC2EP3TwiPFvvE
 141              		.global	_ZN7TwoWireC1EP3TwiPFvvE
 142              		.thumb_set _ZN7TwoWireC1EP3TwiPFvvE,_ZN7TwoWireC2EP3TwiPFvvE
 143 0006 00BF     		.section	.text._ZN7TwoWire11BeginMasterEm,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	_ZN7TwoWire11BeginMasterEm
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	_ZN7TwoWire11BeginMasterEm, %function
 152              	_ZN7TwoWire11BeginMasterEm:
 153              		@ args = 0, pretend = 0, frame = 16
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155 0000 30B5     		push	{r4, r5, lr}
 156 0002 4368     		ldr	r3, [r0, #4]
 157 0004 85B0     		sub	sp, sp, #20
 158 0006 0446     		mov	r4, r0
 159 0008 0D46     		mov	r5, r1
 160 000a 03B1     		cbz	r3, .L22
 161 000c 9847     		blx	r3
 162              	.L22:
 163 000e 2068     		ldr	r0, [r4]
 164 0010 094B     		ldr	r3, .L27
 165 0012 0295     		str	r5, [sp, #8]
 166 0014 40F20222 		movw	r2, #514
 167 0018 0025     		movs	r5, #0
 168 001a C0F82021 		str	r2, [r0, #288]
 169 001e 01A9     		add	r1, sp, #4
 170 0020 0193     		str	r3, [sp, #4]
 171 0022 ADF80C50 		strh	r5, [sp, #12]	@ movhi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 4


 172 0026 FFF7FEFF 		bl	twi_master_init
 173 002a C4E90455 		strd	r5, r5, [r4, #16]
 174 002e C4E90255 		strd	r5, r5, [r4, #8]
 175 0032 05B0     		add	sp, sp, #20
 176              		@ sp needed
 177 0034 30BD     		pop	{r4, r5, pc}
 178              	.L28:
 179 0036 00BF     		.align	2
 180              	.L27:
 181 0038 000E2707 		.word	120000000
 182              		.size	_ZN7TwoWire11BeginMasterEm, .-_ZN7TwoWire11BeginMasterEm
 183              		.section	.text._ZN7TwoWire8TransferEtPhjjPFmP3TwimE,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE, %function
 192              	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE:
 193              		@ args = 8, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 196 0004 DDE90A97 		ldrd	r9, r7, [sp, #40]
 197 0008 19EB0305 		adds	r5, r9, r3
 198 000c 72D0     		beq	.L29
 199 000e 7F29     		cmp	r1, #127
 200 0010 1E46     		mov	r6, r3
 201 0012 8346     		mov	fp, r0
 202 0014 1446     		mov	r4, r2
 203 0016 0368     		ldr	r3, [r0]
 204 0018 6FD9     		bls	.L31
 205 001a 0A02     		lsls	r2, r1, #8
 206 001c 02F44032 		and	r2, r2, #196608
 207 0020 42F4F002 		orr	r2, r2, #7864320
 208 0024 42F48072 		orr	r2, r2, #256
 209 0028 C9B2     		uxtb	r1, r1
 210 002a 5A60     		str	r2, [r3, #4]
 211 002c D960     		str	r1, [r3, #12]
 212              	.L32:
 213 002e 002E     		cmp	r6, #0
 214 0030 3CD0     		beq	.L33
 215 0032 04EB060A 		add	r10, r4, r6
 216 0036 0025     		movs	r5, #0
 217 0038 09E0     		b	.L37
 218              	.L82:
 219 003a 5A63     		str	r2, [r3, #52]
 220 003c B847     		blx	r7
 221 003e C105     		lsls	r1, r0, #23
 222 0040 77D4     		bmi	.L80
 223 0042 4207     		lsls	r2, r0, #29
 224 0044 DBF80030 		ldr	r3, [fp]
 225 0048 40F18380 		bpl	.L81
 226 004c 4546     		mov	r5, r8
 227              	.L37:
 228 004e 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 5


 229 0052 5445     		cmp	r4, r10
 230 0054 1846     		mov	r0, r3
 231 0056 4FF48271 		mov	r1, #260
 232 005a 05F10108 		add	r8, r5, #1
 233 005e ECD1     		bne	.L82
 234 0060 0221     		movs	r1, #2
 235 0062 5A63     		str	r2, [r3, #52]
 236 0064 1960     		str	r1, [r3]
 237 0066 4FF48271 		mov	r1, #260
 238 006a B847     		blx	r7
 239 006c C105     		lsls	r1, r0, #23
 240 006e 00F1AC80 		bmi	.L83
 241 0072 4207     		lsls	r2, r0, #29
 242 0074 5DBF     		ittte	pl
 243 0076 DBF80C30 		ldrpl	r3, [fp, #12]
 244 007a 0133     		addpl	r3, r3, #1
 245 007c CBF80C30 		strpl	r3, [fp, #12]
 246 0080 4546     		movmi	r5, r8
 247              	.L40:
 248 0082 40F20111 		movw	r1, #257
 249 0086 DBF80000 		ldr	r0, [fp]
 250 008a B847     		blx	r7
 251 008c C305     		lsls	r3, r0, #23
 252 008e 40F1A280 		bpl	.L41
 253 0092 DBF80830 		ldr	r3, [fp, #8]
 254 0096 0133     		adds	r3, r3, #1
 255 0098 CBF80830 		str	r3, [fp, #8]
 256              	.L42:
 257 009c B542     		cmp	r5, r6
 258 009e 29D3     		bcc	.L29
 259 00a0 B9F1000F 		cmp	r9, #0
 260 00a4 26D0     		beq	.L29
 261 00a6 DBF80030 		ldr	r3, [fp]
 262 00aa 2E46     		mov	r6, r5
 263              	.L33:
 264 00ac 5A68     		ldr	r2, [r3, #4]
 265 00ae B9F1010F 		cmp	r9, #1
 266 00b2 42F48052 		orr	r2, r2, #4096
 267 00b6 5A60     		str	r2, [r3, #4]
 268 00b8 51D1     		bne	.L43
 269 00ba 0322     		movs	r2, #3
 270 00bc 1A60     		str	r2, [r3]
 271 00be 1846     		mov	r0, r3
 272 00c0 4FF48171 		mov	r1, #258
 273 00c4 B847     		blx	r7
 274 00c6 C205     		lsls	r2, r0, #23
 275 00c8 0346     		mov	r3, r0
 276 00ca 1BD4     		bmi	.L84
 277 00cc 9D07     		lsls	r5, r3, #30
 278 00ce DBF80000 		ldr	r0, [fp]
 279 00d2 74D4     		bmi	.L46
 280 00d4 DBF81030 		ldr	r3, [fp, #16]
 281 00d8 0133     		adds	r3, r3, #1
 282 00da 3546     		mov	r5, r6
 283 00dc CBF81030 		str	r3, [fp, #16]
 284              	.L45:
 285 00e0 40F20111 		movw	r1, #257
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 6


 286 00e4 B847     		blx	r7
 287 00e6 C405     		lsls	r4, r0, #23
 288 00e8 19D5     		bpl	.L47
 289              	.L75:
 290 00ea DBF80830 		ldr	r3, [fp, #8]
 291 00ee 0133     		adds	r3, r3, #1
 292 00f0 CBF80830 		str	r3, [fp, #8]
 293              	.L29:
 294 00f4 2846     		mov	r0, r5
 295 00f6 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 296              	.L31:
 297 00fa 0904     		lsls	r1, r1, #16
 298 00fc 0022     		movs	r2, #0
 299 00fe 5960     		str	r1, [r3, #4]
 300 0100 DA60     		str	r2, [r3, #12]
 301 0102 94E7     		b	.L32
 302              	.L84:
 303 0104 DBF80830 		ldr	r3, [fp, #8]
 304 0108 DBF80000 		ldr	r0, [fp]
 305 010c 0133     		adds	r3, r3, #1
 306 010e CBF80830 		str	r3, [fp, #8]
 307 0112 40F20111 		movw	r1, #257
 308 0116 B847     		blx	r7
 309 0118 C405     		lsls	r4, r0, #23
 310 011a 3546     		mov	r5, r6
 311 011c E5D4     		bmi	.L75
 312              	.L47:
 313 011e C007     		lsls	r0, r0, #31
 314 0120 E8D4     		bmi	.L29
 315 0122 DBF81430 		ldr	r3, [fp, #20]
 316 0126 0133     		adds	r3, r3, #1
 317 0128 CBF81430 		str	r3, [fp, #20]
 318 012c 2846     		mov	r0, r5
 319 012e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 320              	.L80:
 321 0132 DBF80820 		ldr	r2, [fp, #8]
 322 0136 DBF80030 		ldr	r3, [fp]
 323 013a 0132     		adds	r2, r2, #1
 324 013c CBF80820 		str	r2, [fp, #8]
 325              	.L36:
 326 0140 0222     		movs	r2, #2
 327 0142 1A60     		str	r2, [r3]
 328 0144 1846     		mov	r0, r3
 329 0146 40F20111 		movw	r1, #257
 330 014a B847     		blx	r7
 331 014c C405     		lsls	r4, r0, #23
 332 014e E6D5     		bpl	.L47
 333 0150 CBE7     		b	.L75
 334              	.L81:
 335 0152 DBF80C20 		ldr	r2, [fp, #12]
 336 0156 0132     		adds	r2, r2, #1
 337 0158 CBF80C20 		str	r2, [fp, #12]
 338 015c F0E7     		b	.L36
 339              	.L43:
 340 015e 0122     		movs	r2, #1
 341 0160 A9F10208 		sub	r8, r9, #2
 342 0164 1A60     		str	r2, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 7


 343 0166 A044     		add	r8, r8, r4
 344 0168 0025     		movs	r5, #0
 345 016a 0CE0     		b	.L56
 346              	.L49:
 347 016c 8207     		lsls	r2, r0, #30
 348 016e DBF80030 		ldr	r3, [fp]
 349 0172 42D5     		bpl	.L85
 350 0174 A045     		cmp	r8, r4
 351 0176 05F10105 		add	r5, r5, #1
 352 017a 44D0     		beq	.L86
 353 017c 1B6B     		ldr	r3, [r3, #48]
 354 017e 04F8013B 		strb	r3, [r4], #1
 355 0182 DBF80030 		ldr	r3, [fp]
 356              	.L56:
 357 0186 4FF48171 		mov	r1, #258
 358 018a 1846     		mov	r0, r3
 359 018c B847     		blx	r7
 360 018e C105     		lsls	r1, r0, #23
 361 0190 ECD5     		bpl	.L49
 362 0192 DBF80820 		ldr	r2, [fp, #8]
 363 0196 DBF80030 		ldr	r3, [fp]
 364 019a 0132     		adds	r2, r2, #1
 365 019c CBF80820 		str	r2, [fp, #8]
 366              	.L50:
 367 01a0 0222     		movs	r2, #2
 368 01a2 1A60     		str	r2, [r3]
 369              	.L58:
 370 01a4 1846     		mov	r0, r3
 371 01a6 40F20111 		movw	r1, #257
 372 01aa B847     		blx	r7
 373 01ac C205     		lsls	r2, r0, #23
 374 01ae 1BD5     		bpl	.L60
 375 01b0 DBF80830 		ldr	r3, [fp, #8]
 376 01b4 0133     		adds	r3, r3, #1
 377 01b6 CBF80830 		str	r3, [fp, #8]
 378              	.L61:
 379 01ba 3544     		add	r5, r5, r6
 380 01bc 9AE7     		b	.L29
 381              	.L46:
 382 01be 036B     		ldr	r3, [r0, #48]
 383 01c0 2370     		strb	r3, [r4]
 384 01c2 DBF80000 		ldr	r0, [fp]
 385 01c6 751C     		adds	r5, r6, #1
 386 01c8 8AE7     		b	.L45
 387              	.L83:
 388 01ca DBF80830 		ldr	r3, [fp, #8]
 389 01ce 0133     		adds	r3, r3, #1
 390 01d0 CBF80830 		str	r3, [fp, #8]
 391 01d4 55E7     		b	.L40
 392              	.L41:
 393 01d6 C107     		lsls	r1, r0, #31
 394 01d8 3FF560AF 		bmi	.L42
 395 01dc DBF81430 		ldr	r3, [fp, #20]
 396 01e0 0133     		adds	r3, r3, #1
 397 01e2 CBF81430 		str	r3, [fp, #20]
 398 01e6 59E7     		b	.L42
 399              	.L60:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 8


 400 01e8 C307     		lsls	r3, r0, #31
 401 01ea E6D4     		bmi	.L61
 402 01ec DBF81430 		ldr	r3, [fp, #20]
 403 01f0 0133     		adds	r3, r3, #1
 404 01f2 CBF81430 		str	r3, [fp, #20]
 405 01f6 3544     		add	r5, r5, r6
 406 01f8 7CE7     		b	.L29
 407              	.L85:
 408 01fa DBF81020 		ldr	r2, [fp, #16]
 409 01fe 0132     		adds	r2, r2, #1
 410 0200 CBF81020 		str	r2, [fp, #16]
 411 0204 CCE7     		b	.L50
 412              	.L86:
 413 0206 0222     		movs	r2, #2
 414 0208 1A60     		str	r2, [r3]
 415 020a 1B6B     		ldr	r3, [r3, #48]
 416 020c 88F80030 		strb	r3, [r8]
 417 0210 DBF80000 		ldr	r0, [fp]
 418 0214 4FF48171 		mov	r1, #258
 419 0218 B847     		blx	r7
 420 021a C405     		lsls	r4, r0, #23
 421 021c 07D5     		bpl	.L57
 422 021e DBF80820 		ldr	r2, [fp, #8]
 423 0222 DBF80030 		ldr	r3, [fp]
 424 0226 0132     		adds	r2, r2, #1
 425 0228 CBF80820 		str	r2, [fp, #8]
 426 022c BAE7     		b	.L58
 427              	.L57:
 428 022e 8107     		lsls	r1, r0, #30
 429 0230 DBF80030 		ldr	r3, [fp]
 430 0234 05D4     		bmi	.L59
 431 0236 DBF81020 		ldr	r2, [fp, #16]
 432 023a 0132     		adds	r2, r2, #1
 433 023c CBF81020 		str	r2, [fp, #16]
 434 0240 B0E7     		b	.L58
 435              	.L59:
 436 0242 1B6B     		ldr	r3, [r3, #48]
 437 0244 88F80130 		strb	r3, [r8, #1]
 438 0248 DBF80030 		ldr	r3, [fp]
 439 024c 4D46     		mov	r5, r9
 440 024e A9E7     		b	.L58
 441              		.size	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE, .-_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 442              		.section	.text._ZN7TwoWire14GetErrorCountsEb,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	_ZN7TwoWire14GetErrorCountsEb
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu fpv4-sp-d16
 450              		.type	_ZN7TwoWire14GetErrorCountsEb, %function
 451              	_ZN7TwoWire14GetErrorCountsEb:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 F0B4     		push	{r4, r5, r6, r7}
 456 0002 9446     		mov	ip, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 9


 457 0004 0446     		mov	r4, r0
 458 0006 0D46     		mov	r5, r1
 459              		.syntax unified
 460              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 461 0008 EFF31087 		MRS r7, primask
 462              	@ 0 "" 2
 463              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 464 000c 72B6     		cpsid i
 465              	@ 0 "" 2
 466              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 467 000e BFF35F8F 		dmb
 468              	@ 0 "" 2
 469              		.thumb
 470              		.syntax unified
 471 0012 01F10803 		add	r3, r1, #8
 472 0016 0FCB     		ldm	r3, {r0, r1, r2, r3}
 473 0018 0A4E     		ldr	r6, .L94
 474 001a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 475 001e 0023     		movs	r3, #0
 476 0020 3370     		strb	r3, [r6]
 477 0022 BCF1000F 		cmp	ip, #0
 478 0026 03D0     		beq	.L88
 479 0028 C5E90433 		strd	r3, r3, [r5, #16]
 480 002c C5E90233 		strd	r3, r3, [r5, #8]
 481              	.L88:
 482 0030 27B9     		cbnz	r7, .L87
 483 0032 0123     		movs	r3, #1
 484 0034 3370     		strb	r3, [r6]
 485              		.syntax unified
 486              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 487 0036 BFF35F8F 		dmb
 488              	@ 0 "" 2
 489              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 490 003a 62B6     		cpsie i
 491              	@ 0 "" 2
 492              		.thumb
 493              		.syntax unified
 494              	.L87:
 495 003c 2046     		mov	r0, r4
 496 003e F0BC     		pop	{r4, r5, r6, r7}
 497 0040 7047     		bx	lr
 498              	.L95:
 499 0042 00BF     		.align	2
 500              	.L94:
 501 0044 00000000 		.word	g_interrupt_enabled
 502              		.size	_ZN7TwoWire14GetErrorCountsEb, .-_ZN7TwoWire14GetErrorCountsEb
 503              		.section	.text.startup._GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv,"ax",%progbits
 504              		.align	1
 505              		.p2align 2,,3
 506              		.syntax unified
 507              		.thumb
 508              		.thumb_func
 509              		.fpu fpv4-sp-d16
 510              		.type	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv, %function
 511              	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv:
 512              		@ args = 0, pretend = 0, frame = 0
 513              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cceEABHE.s 			page 10


 514              		@ link register save eliminated.
 515 0000 024B     		ldr	r3, .L97
 516 0002 0349     		ldr	r1, .L97+4
 517 0004 034A     		ldr	r2, .L97+8
 518 0006 C3E90012 		strd	r1, r2, [r3]
 519 000a 7047     		bx	lr
 520              	.L98:
 521              		.align	2
 522              	.L97:
 523 000c 00000000 		.word	.LANCHOR0
 524 0010 00800A40 		.word	1074429952
 525 0014 00000000 		.word	_ZL9Wire_Initv
 526              		.size	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv, .-_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5C
 527              		.section	.init_array,"aw",%init_array
 528              		.align	2
 529 0000 00000000 		.word	_GLOBAL__sub_I__ZN7TwoWire11ErrorCounts5ClearEv(target1)
 530              		.global	Wire
 531              		.section	.bss.Wire,"aw",%nobits
 532              		.align	2
 533              		.set	.LANCHOR0,. + 0
 534              		.type	Wire, %object
 535              		.size	Wire, 24
 536              	Wire:
 537 0000 00000000 		.space	24
 537      00000000 
 537      00000000 
 537      00000000 
 537      00000000 
 538              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 539              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 540              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 541              	_ZL28cpu_irq_prev_interrupt_state:
 542 0000 00       		.space	1
 543              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 544              		.align	2
 545              		.type	_ZL32cpu_irq_critical_section_counter, %object
 546              		.size	_ZL32cpu_irq_critical_section_counter, 4
 547              	_ZL32cpu_irq_critical_section_counter:
 548 0000 00000000 		.space	4
 549              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
