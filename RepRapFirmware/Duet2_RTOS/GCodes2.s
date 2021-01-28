ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 1


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
  13              		.file	"GCodes2.cpp"
  14              		.text
  15              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  24              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0320     		movs	r0, #3
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  31              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40, %function
  39              	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  43 0004 91F85330 		ldrb	r3, [r1, #83]	@ zero_extendqisi2
  44 0008 0C46     		mov	r4, r1
  45 000a 0646     		mov	r6, r0
  46 000c 9046     		mov	r8, r2
  47 000e F3B1     		cbz	r3, .L4
  48 0010 8F6C     		ldr	r7, [r1, #72]
  49 0012 8B6B     		ldr	r3, [r1, #56]
  50 0014 1F44     		add	r7, r7, r3
  51              	.L5:
  52 0016 2146     		mov	r1, r4
  53 0018 3046     		mov	r0, r6
  54 001a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
  55 001e 0546     		mov	r5, r0
  56 0020 90B1     		cbz	r0, .L8
  57 0022 3348     		ldr	r0, .L29
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 2


  58 0024 D0F8EC30 		ldr	r3, [r0, #236]
  59 0028 1BB1     		cbz	r3, .L11
  60 002a D3F89C30 		ldr	r3, [r3, #156]
  61 002e BB42     		cmp	r3, r7
  62 0030 44D0     		beq	.L24
  63              	.L11:
  64 0032 A368     		ldr	r3, [r4, #8]
  65 0034 DF82     		strh	r7, [r3, #22]	@ movhi
  66 0036 96F81836 		ldrb	r3, [r6, #1560]	@ zero_extendqisi2
  67 003a 63B3     		cbz	r3, .L25
  68 003c 0020     		movs	r0, #0
  69              	.L13:
  70 003e A368     		ldr	r3, [r4, #8]
  71 0040 5875     		strb	r0, [r3, #21]
  72 0042 A368     		ldr	r3, [r4, #8]
  73 0044 0622     		movs	r2, #6
  74 0046 1A75     		strb	r2, [r3, #20]
  75              	.L8:
  76 0048 2846     		mov	r0, r5
  77 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  78              	.L4:
  79 004e 5221     		movs	r1, #82
  80 0050 2046     		mov	r0, r4
  81 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  82 0056 0546     		mov	r5, r0
  83 0058 20BB     		cbnz	r0, .L26
  84 005a 254B     		ldr	r3, .L29
  85 005c D3F8EC30 		ldr	r3, [r3, #236]	@ unaligned
  86 0060 A3B1     		cbz	r3, .L27
  87 0062 D3F89C20 		ldr	r2, [r3, #156]
  88 0066 2349     		ldr	r1, .L29+4
  89 0068 4046     		mov	r0, r8
  90 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
  91              	.L12:
  92 006e 2146     		mov	r1, r4
  93 0070 3046     		mov	r0, r6
  94 0072 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
  95 0076 0125     		movs	r5, #1
  96 0078 3046     		mov	r0, r6
  97 007a D8F80030 		ldr	r3, [r8]
  98 007e 2146     		mov	r1, r4
  99 0080 0122     		movs	r2, #1
 100 0082 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 101 0086 2846     		mov	r0, r5
 102 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 103              	.L27:
 104 008c 1A49     		ldr	r1, .L29+8
 105 008e 4046     		mov	r0, r8
 106 0090 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 107 0094 EBE7     		b	.L12
 108              	.L25:
 109 0096 5021     		movs	r1, #80
 110 0098 2046     		mov	r0, r4
 111 009a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 112 009e B0B9     		cbnz	r0, .L28
 113 00a0 0720     		movs	r0, #7
 114 00a2 CCE7     		b	.L13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 3


 115              	.L26:
 116 00a4 2046     		mov	r0, r4
 117 00a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 118 00aa 0528     		cmp	r0, #5
 119 00ac 14D8     		bhi	.L7
 120 00ae C0EB0010 		rsb	r0, r0, r0, lsl #4
 121 00b2 06EB8000 		add	r0, r6, r0, lsl #2
 122 00b6 D0F82072 		ldr	r7, [r0, #544]
 123 00ba ACE7     		b	.L5
 124              	.L24:
 125 00bc 96F81826 		ldrb	r2, [r6, #1560]	@ zero_extendqisi2
 126 00c0 0032     		adds	r2, r2, #0
 127 00c2 3946     		mov	r1, r7
 128 00c4 18BF     		it	ne
 129 00c6 0122     		movne	r2, #1
 130 00c8 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 131 00cc CFE7     		b	.L12
 132              	.L28:
 133 00ce 2046     		mov	r0, r4
 134 00d0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 135 00d4 C0B2     		uxtb	r0, r0
 136 00d6 B2E7     		b	.L13
 137              	.L7:
 138 00d8 2146     		mov	r1, r4
 139 00da 3046     		mov	r0, r6
 140 00dc FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 141 00e0 2146     		mov	r1, r4
 142 00e2 3046     		mov	r0, r6
 143 00e4 054B     		ldr	r3, .L29+12
 144 00e6 0222     		movs	r2, #2
 145 00e8 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 146 00ec ACE7     		b	.L8
 147              	.L30:
 148 00ee 00BF     		.align	2
 149              	.L29:
 150 00f0 00000000 		.word	reprap
 151 00f4 30000000 		.word	.LC3
 152 00f8 1C000000 		.word	.LC2
 153 00fc 00000000 		.word	.LC1
 154              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40, .-_ZN6GCodes11HandleTcodeER11GCo
 155              		.section	.text._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.par
 156              		.align	1
 157              		.p2align 2,,3
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.part.41, %fu
 163              	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.part.41:
 164              		@ args = 0, pretend = 0, frame = 232
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 167 0004 1446     		mov	r4, r2
 168 0006 BAB0     		sub	sp, sp, #232
 169 0008 0746     		mov	r7, r0
 170 000a 0D46     		mov	r5, r1
 171 000c 1E46     		mov	r6, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 4


 172 000e 062A     		cmp	r2, #6
 173 0010 19D8     		bhi	.L32
 174 0012 DFE802F0 		tbb	[pc, r2]
 175              	.L34:
 176 0016 2E       		.byte	(.L39-.L34)/2
 177 0017 18       		.byte	(.L32-.L34)/2
 178 0018 04       		.byte	(.L35-.L34)/2
 179 0019 18       		.byte	(.L32-.L34)/2
 180 001a 32       		.byte	(.L36-.L34)/2
 181 001b 3C       		.byte	(.L37-.L34)/2
 182 001c 4A       		.byte	(.L38-.L34)/2
 183 001d 00       		.p2align 1
 184              	.L35:
 185 001e 0DF1E808 		add	r8, sp, #232
 186 0022 0023     		movs	r3, #0
 187 0024 08F8E03D 		strb	r3, [r8, #-224]!
 188 0028 6946     		mov	r1, sp
 189 002a DD23     		movs	r3, #221
 190 002c 2846     		mov	r0, r5
 191 002e CDE90083 		strd	r8, r3, [sp]
 192 0032 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 193 0036 2249     		ldr	r1, .L43
 194 0038 3046     		mov	r0, r6
 195 003a FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 196 003e 4146     		mov	r1, r8
 197 0040 3046     		mov	r0, r6
 198 0042 FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 199              	.L32:
 200 0046 AB68     		ldr	r3, [r5, #8]
 201 0048 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 202 004a 1BB1     		cbz	r3, .L42
 203 004c 0120     		movs	r0, #1
 204 004e 3AB0     		add	sp, sp, #232
 205              		@ sp needed
 206 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 207              	.L42:
 208 0054 2B71     		strb	r3, [r5, #4]
 209 0056 2946     		mov	r1, r5
 210 0058 3846     		mov	r0, r7
 211 005a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 212 005e 3846     		mov	r0, r7
 213 0060 3368     		ldr	r3, [r6]
 214 0062 2246     		mov	r2, r4
 215 0064 2946     		mov	r1, r5
 216 0066 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 217 006a 0120     		movs	r0, #1
 218 006c 3AB0     		add	sp, sp, #232
 219              		@ sp needed
 220 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 221              	.L39:
 222 0072 0020     		movs	r0, #0
 223 0074 3AB0     		add	sp, sp, #232
 224              		@ sp needed
 225 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 226              	.L36:
 227 007a 3146     		mov	r1, r6
 228 007c 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 5


 229 007e FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 230 0082 1049     		ldr	r1, .L43+4
 231 0084 3046     		mov	r0, r6
 232 0086 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 233 008a 0324     		movs	r4, #3
 234 008c DBE7     		b	.L32
 235              	.L37:
 236 008e 3146     		mov	r1, r6
 237 0090 2846     		mov	r0, r5
 238 0092 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 239 0096 3846     		mov	r0, r7
 240 0098 FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 241 009c 0A49     		ldr	r1, .L43+8
 242 009e 0246     		mov	r2, r0
 243 00a0 3046     		mov	r0, r6
 244 00a2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 245 00a6 0324     		movs	r4, #3
 246 00a8 CDE7     		b	.L32
 247              	.L38:
 248 00aa 3146     		mov	r1, r6
 249 00ac 2846     		mov	r0, r5
 250 00ae FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 251 00b2 0649     		ldr	r1, .L43+12
 252 00b4 3046     		mov	r0, r6
 253 00b6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 254 00ba 0224     		movs	r4, #2
 255 00bc C3E7     		b	.L32
 256              	.L44:
 257 00be 00BF     		.align	2
 258              	.L43:
 259 00c0 68000000 		.word	.LC7
 260 00c4 00000000 		.word	.LC4
 261 00c8 1C000000 		.word	.LC5
 262 00cc 4C000000 		.word	.LC6
 263              		.size	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.part.41, .-_
 264              		.section	.text._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, %function
 273              	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 277 0004 90F81836 		ldrb	r3, [r0, #1560]	@ zero_extendqisi2
 278 0008 8E6C     		ldr	r6, [r1, #72]
 279 000a 82B0     		sub	sp, sp, #8
 280 000c 0446     		mov	r4, r0
 281 000e 0D46     		mov	r5, r1
 282 0010 1746     		mov	r7, r2
 283 0012 C3B1     		cbz	r3, .L46
 284 0014 042E     		cmp	r6, #4
 285 0016 16DD     		ble	.L46
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 6


 286 0018 0A2E     		cmp	r6, #10
 287 001a 7AD0     		beq	.L47
 288 001c 0B2E     		cmp	r6, #11
 289 001e 00F08681 		beq	.L48
 290 0022 142E     		cmp	r6, #20
 291 0024 00F07E81 		beq	.L49
 292 0028 152E     		cmp	r6, #21
 293 002a 00F06D81 		beq	.L50
 294 002e A6F13503 		sub	r3, r6, #53
 295 0032 062B     		cmp	r3, #6
 296 0034 07D9     		bls	.L46
 297 0036 A6F15A03 		sub	r3, r6, #90
 298 003a 022B     		cmp	r3, #2
 299 003c 03D9     		bls	.L46
 300 003e 0120     		movs	r0, #1
 301 0040 02B0     		add	sp, sp, #8
 302              		@ sp needed
 303 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 304              	.L46:
 305 0046 602E     		cmp	r6, #96
 306 0048 00F26A81 		bhi	.L97
 307 004c DFE816F0 		tbh	[pc, r6, lsl #1]
 308              	.L54:
 309 0050 3F01     		.2byte	(.L53-.L54)/2
 310 0052 3F01     		.2byte	(.L53-.L54)/2
 311 0054 D600     		.2byte	(.L55-.L54)/2
 312 0056 D600     		.2byte	(.L55-.L54)/2
 313 0058 D000     		.2byte	(.L56-.L54)/2
 314 005a 6801     		.2byte	(.L97-.L54)/2
 315 005c 6801     		.2byte	(.L97-.L54)/2
 316 005e 6801     		.2byte	(.L97-.L54)/2
 317 0060 6801     		.2byte	(.L97-.L54)/2
 318 0062 6801     		.2byte	(.L97-.L54)/2
 319 0064 6100     		.2byte	(.L47-.L54)/2
 320 0066 6F01     		.2byte	(.L48-.L54)/2
 321 0068 6801     		.2byte	(.L97-.L54)/2
 322 006a 6801     		.2byte	(.L97-.L54)/2
 323 006c 6801     		.2byte	(.L97-.L54)/2
 324 006e 6801     		.2byte	(.L97-.L54)/2
 325 0070 6801     		.2byte	(.L97-.L54)/2
 326 0072 6801     		.2byte	(.L97-.L54)/2
 327 0074 6801     		.2byte	(.L97-.L54)/2
 328 0076 6801     		.2byte	(.L97-.L54)/2
 329 0078 6A01     		.2byte	(.L49-.L54)/2
 330 007a 5C01     		.2byte	(.L50-.L54)/2
 331 007c 6801     		.2byte	(.L97-.L54)/2
 332 007e 6801     		.2byte	(.L97-.L54)/2
 333 0080 6801     		.2byte	(.L97-.L54)/2
 334 0082 6801     		.2byte	(.L97-.L54)/2
 335 0084 6801     		.2byte	(.L97-.L54)/2
 336 0086 6801     		.2byte	(.L97-.L54)/2
 337 0088 F500     		.2byte	(.L57-.L54)/2
 338 008a B300     		.2byte	(.L58-.L54)/2
 339 008c 9600     		.2byte	(.L59-.L54)/2
 340 008e 8F00     		.2byte	(.L60-.L54)/2
 341 0090 8400     		.2byte	(.L61-.L54)/2
 342 0092 6801     		.2byte	(.L97-.L54)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 7


 343 0094 6801     		.2byte	(.L97-.L54)/2
 344 0096 6801     		.2byte	(.L97-.L54)/2
 345 0098 6801     		.2byte	(.L97-.L54)/2
 346 009a 6801     		.2byte	(.L97-.L54)/2
 347 009c 6801     		.2byte	(.L97-.L54)/2
 348 009e 6801     		.2byte	(.L97-.L54)/2
 349 00a0 6801     		.2byte	(.L97-.L54)/2
 350 00a2 6801     		.2byte	(.L97-.L54)/2
 351 00a4 6801     		.2byte	(.L97-.L54)/2
 352 00a6 6801     		.2byte	(.L97-.L54)/2
 353 00a8 6801     		.2byte	(.L97-.L54)/2
 354 00aa 6801     		.2byte	(.L97-.L54)/2
 355 00ac 6801     		.2byte	(.L97-.L54)/2
 356 00ae 6801     		.2byte	(.L97-.L54)/2
 357 00b0 6801     		.2byte	(.L97-.L54)/2
 358 00b2 6801     		.2byte	(.L97-.L54)/2
 359 00b4 6801     		.2byte	(.L97-.L54)/2
 360 00b6 6801     		.2byte	(.L97-.L54)/2
 361 00b8 6801     		.2byte	(.L97-.L54)/2
 362 00ba 7D00     		.2byte	(.L62-.L54)/2
 363 00bc 1101     		.2byte	(.L63-.L54)/2
 364 00be 1101     		.2byte	(.L63-.L54)/2
 365 00c0 1101     		.2byte	(.L63-.L54)/2
 366 00c2 1101     		.2byte	(.L63-.L54)/2
 367 00c4 1101     		.2byte	(.L63-.L54)/2
 368 00c6 1101     		.2byte	(.L63-.L54)/2
 369 00c8 0A01     		.2byte	(.L64-.L54)/2
 370 00ca 6801     		.2byte	(.L97-.L54)/2
 371 00cc 6801     		.2byte	(.L97-.L54)/2
 372 00ce 6801     		.2byte	(.L97-.L54)/2
 373 00d0 6801     		.2byte	(.L97-.L54)/2
 374 00d2 6801     		.2byte	(.L97-.L54)/2
 375 00d4 6801     		.2byte	(.L97-.L54)/2
 376 00d6 6801     		.2byte	(.L97-.L54)/2
 377 00d8 6801     		.2byte	(.L97-.L54)/2
 378 00da 6801     		.2byte	(.L97-.L54)/2
 379 00dc 6801     		.2byte	(.L97-.L54)/2
 380 00de 6801     		.2byte	(.L97-.L54)/2
 381 00e0 6801     		.2byte	(.L97-.L54)/2
 382 00e2 6801     		.2byte	(.L97-.L54)/2
 383 00e4 6801     		.2byte	(.L97-.L54)/2
 384 00e6 6801     		.2byte	(.L97-.L54)/2
 385 00e8 6801     		.2byte	(.L97-.L54)/2
 386 00ea 6801     		.2byte	(.L97-.L54)/2
 387 00ec 6801     		.2byte	(.L97-.L54)/2
 388 00ee 6801     		.2byte	(.L97-.L54)/2
 389 00f0 6801     		.2byte	(.L97-.L54)/2
 390 00f2 6801     		.2byte	(.L97-.L54)/2
 391 00f4 6801     		.2byte	(.L97-.L54)/2
 392 00f6 6801     		.2byte	(.L97-.L54)/2
 393 00f8 6801     		.2byte	(.L97-.L54)/2
 394 00fa 6801     		.2byte	(.L97-.L54)/2
 395 00fc 6801     		.2byte	(.L97-.L54)/2
 396 00fe 6801     		.2byte	(.L97-.L54)/2
 397 0100 6801     		.2byte	(.L97-.L54)/2
 398 0102 6801     		.2byte	(.L97-.L54)/2
 399 0104 0301     		.2byte	(.L65-.L54)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 8


 400 0106 FC00     		.2byte	(.L66-.L54)/2
 401 0108 5601     		.2byte	(.L67-.L54)/2
 402 010a 6801     		.2byte	(.L97-.L54)/2
 403 010c 6801     		.2byte	(.L97-.L54)/2
 404 010e 3101     		.2byte	(.L68-.L54)/2
 405 0110 3801     		.2byte	(.L69-.L54)/2
 406              		.p2align 1
 407              	.L47:
 408 0112 4C21     		movs	r1, #76
 409 0114 2846     		mov	r0, r5
 410 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 411 011a 0028     		cmp	r0, #0
 412 011c 00F00E81 		beq	.L74
 413 0120 2846     		mov	r0, r5
 414 0122 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 415 0126 0228     		cmp	r0, #2
 416 0128 00F06881 		beq	.L76
 417 012c 1428     		cmp	r0, #20
 418 012e 00F05D81 		beq	.L77
 419 0132 0128     		cmp	r0, #1
 420 0134 00F02781 		beq	.L150
 421              	.L75:
 422 0138 0622     		movs	r2, #6
 423              	.L52:
 424 013a 3B46     		mov	r3, r7
 425 013c 2946     		mov	r1, r5
 426 013e 2046     		mov	r0, r4
 427 0140 02B0     		add	sp, sp, #8
 428              		@ sp needed
 429 0142 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 430 0146 FFF7FEBF 		b	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.part.41
 431              	.L62:
 432 014a AA68     		ldr	r2, [r5, #8]
 433 014c 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 434 014e 43F08003 		orr	r3, r3, #128
 435 0152 1376     		strb	r3, [r2, #24]
 436 0154 0122     		movs	r2, #1
 437 0156 F0E7     		b	.L52
 438              	.L61:
 439 0158 2946     		mov	r1, r5
 440 015a 2046     		mov	r0, r4
 441 015c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 442 0160 0028     		cmp	r0, #0
 443 0162 40F01781 		bne	.L157
 444              	.L71:
 445 0166 0020     		movs	r0, #0
 446 0168 02B0     		add	sp, sp, #8
 447              		@ sp needed
 448 016a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 449              	.L60:
 450 016e 3A46     		mov	r2, r7
 451 0170 2946     		mov	r1, r5
 452 0172 2046     		mov	r0, r4
 453 0174 FFF7FEFF 		bl	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
 454 0178 0246     		mov	r2, r0
 455 017a DEE7     		b	.L52
 456              	.L59:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 9


 457 017c 2946     		mov	r1, r5
 458 017e 2046     		mov	r0, r4
 459 0180 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 460 0184 0028     		cmp	r0, #0
 461 0186 EED0     		beq	.L71
 462 0188 A44B     		ldr	r3, .L161
 463 018a A54A     		ldr	r2, .L161+4
 464 018c DB68     		ldr	r3, [r3, #12]
 465 018e D3F8740A 		ldr	r0, [r3, #2676]
 466 0192 0368     		ldr	r3, [r0]
 467 0194 DB6A     		ldr	r3, [r3, #44]
 468 0196 9342     		cmp	r3, r2
 469 0198 40F03281 		bne	.L158
 470 019c 0320     		movs	r0, #3
 471              	.L91:
 472 019e D4F82C35 		ldr	r3, [r4, #1324]
 473 01a2 30EA0303 		bics	r3, r0, r3
 474 01a6 00F00381 		beq	.L92
 475 01aa 9E49     		ldr	r1, .L161+8
 476 01ac 3846     		mov	r0, r7
 477 01ae FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 478 01b2 0222     		movs	r2, #2
 479 01b4 C1E7     		b	.L52
 480              	.L58:
 481 01b6 2946     		mov	r1, r5
 482 01b8 2046     		mov	r0, r4
 483 01ba FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 484 01be 0028     		cmp	r0, #0
 485 01c0 D1D0     		beq	.L71
 486 01c2 5321     		movs	r1, #83
 487 01c4 2846     		mov	r0, r5
 488 01c6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 489 01ca 50B1     		cbz	r0, .L88
 490 01cc 2846     		mov	r0, r5
 491 01ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 492 01d2 0128     		cmp	r0, #1
 493 01d4 00F01B81 		beq	.L89
 494 01d8 0228     		cmp	r0, #2
 495 01da 00F01381 		beq	.L90
 496 01de 0028     		cmp	r0, #0
 497 01e0 AAD1     		bne	.L75
 498              	.L88:
 499 01e2 3A46     		mov	r2, r7
 500 01e4 2946     		mov	r1, r5
 501 01e6 2046     		mov	r0, r4
 502 01e8 FFF7FEFF 		bl	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 503 01ec 0246     		mov	r2, r0
 504 01ee A4E7     		b	.L52
 505              	.L56:
 506 01f0 2946     		mov	r1, r5
 507 01f2 2046     		mov	r0, r4
 508 01f4 FFF7FEFF 		bl	_ZN6GCodes7DoDwellER11GCodeBuffer
 509 01f8 0246     		mov	r2, r0
 510 01fa 9EE7     		b	.L52
 511              	.L55:
 512 01fc D4F86031 		ldr	r3, [r4, #352]
 513 0200 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 10


 514 0202 B0D1     		bne	.L71
 515 0204 2946     		mov	r1, r5
 516 0206 2046     		mov	r0, r4
 517 0208 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 518 020c 0028     		cmp	r0, #0
 519 020e AAD0     		beq	.L71
 520 0210 A6F10202 		sub	r2, r6, #2
 521 0214 B2FA82F2 		clz	r2, r2
 522 0218 5209     		lsrs	r2, r2, #5
 523 021a 2946     		mov	r1, r5
 524 021c 2046     		mov	r0, r4
 525 021e FFF7FEFF 		bl	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 526 0222 0646     		mov	r6, r0
 527 0224 0028     		cmp	r0, #0
 528 0226 67D0     		beq	.L154
 529              	.L155:
 530 0228 2946     		mov	r1, r5
 531 022a 2046     		mov	r0, r4
 532 022c FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 533 0230 AB68     		ldr	r3, [r5, #8]
 534 0232 0122     		movs	r2, #1
 535 0234 1E61     		str	r6, [r3, #16]
 536 0236 1A75     		strb	r2, [r3, #20]
 537 0238 7FE7     		b	.L52
 538              	.L57:
 539 023a 3A46     		mov	r2, r7
 540 023c 2946     		mov	r1, r5
 541 023e 2046     		mov	r0, r4
 542 0240 FFF7FEFF 		bl	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 543 0244 0246     		mov	r2, r0
 544 0246 78E7     		b	.L52
 545              	.L66:
 546 0248 AA68     		ldr	r2, [r5, #8]
 547 024a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 548 024c 43F00203 		orr	r3, r3, #2
 549 0250 1376     		strb	r3, [r2, #24]
 550 0252 0122     		movs	r2, #1
 551 0254 71E7     		b	.L52
 552              	.L65:
 553 0256 AB68     		ldr	r3, [r5, #8]
 554 0258 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 555 025a 6FF34102 		bfc	r2, #1, #1
 556 025e 1A76     		strb	r2, [r3, #24]
 557 0260 0122     		movs	r2, #1
 558 0262 6AE7     		b	.L52
 559              	.L64:
 560 0264 3A46     		mov	r2, r7
 561 0266 2946     		mov	r1, r5
 562 0268 2046     		mov	r0, r4
 563 026a FFF7FEFF 		bl	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 564 026e 0246     		mov	r2, r0
 565 0270 63E7     		b	.L52
 566              	.L63:
 567 0272 2946     		mov	r1, r5
 568 0274 2046     		mov	r0, r4
 569 0276 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 570 027a 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 11


 571 027c 3FF473AF 		beq	.L71
 572 0280 3B2E     		cmp	r6, #59
 573 0282 A6F13603 		sub	r3, r6, #54
 574 0286 44D0     		beq	.L159
 575              	.L93:
 576 0288 C4F8C033 		str	r3, [r4, #960]
 577 028c AB68     		ldr	r3, [r5, #8]
 578 028e 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 579 0290 6FF3C712 		bfc	r2, #7, #1
 580 0294 1A76     		strb	r2, [r3, #24]
 581 0296 AB68     		ldr	r3, [r5, #8]
 582 0298 5A7E     		ldrb	r2, [r3, #25]	@ zero_extendqisi2
 583 029a 6FF30002 		bfc	r2, #0, #1
 584 029e 5A76     		strb	r2, [r3, #25]
 585 02a0 04F1EC01 		add	r1, r4, #236
 586 02a4 04F1C002 		add	r2, r4, #192
 587 02a8 2046     		mov	r0, r4
 588 02aa FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 589 02ae 0122     		movs	r2, #1
 590 02b0 43E7     		b	.L52
 591              	.L68:
 592 02b2 3A46     		mov	r2, r7
 593 02b4 2946     		mov	r1, r5
 594 02b6 2046     		mov	r0, r4
 595 02b8 FFF7FEFF 		bl	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef
 596 02bc 0246     		mov	r2, r0
 597 02be 3CE7     		b	.L52
 598              	.L69:
 599 02c0 3A46     		mov	r2, r7
 600 02c2 2946     		mov	r1, r5
 601 02c4 2046     		mov	r0, r4
 602 02c6 FFF7FEFF 		bl	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef
 603 02ca 0246     		mov	r2, r0
 604 02cc 35E7     		b	.L52
 605              	.L53:
 606 02ce D4F86031 		ldr	r3, [r4, #352]
 607 02d2 002B     		cmp	r3, #0
 608 02d4 7FF447AF 		bne	.L71
 609 02d8 2946     		mov	r1, r5
 610 02da 2046     		mov	r0, r4
 611 02dc FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 612 02e0 0028     		cmp	r0, #0
 613 02e2 3FF440AF 		beq	.L71
 614 02e6 06F00102 		and	r2, r6, #1
 615 02ea 2946     		mov	r1, r5
 616 02ec 2046     		mov	r0, r4
 617 02ee FFF7FEFF 		bl	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 618 02f2 0646     		mov	r6, r0
 619 02f4 0028     		cmp	r0, #0
 620 02f6 97D1     		bne	.L155
 621              	.L154:
 622 02f8 0122     		movs	r2, #1
 623 02fa 1EE7     		b	.L52
 624              	.L67:
 625 02fc 2946     		mov	r1, r5
 626 02fe 2046     		mov	r0, r4
 627 0300 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsER11GCodeBuffer
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 12


 628 0304 0246     		mov	r2, r0
 629 0306 18E7     		b	.L52
 630              	.L50:
 631 0308 4FF07E53 		mov	r3, #1065353216
 632 030c C4F8B833 		str	r3, [r4, #952]	@ float
 633 0310 F2E7     		b	.L154
 634              	.L159:
 635 0312 95F9F720 		ldrsb	r2, [r5, #247]
 636 0316 002A     		cmp	r2, #0
 637 0318 B6DB     		blt	.L93
 638 031a 1344     		add	r3, r3, r2
 639 031c 082B     		cmp	r3, #8
 640 031e B3D9     		bls	.L93
 641              	.L97:
 642 0320 0422     		movs	r2, #4
 643 0322 0AE7     		b	.L52
 644              	.L49:
 645 0324 404B     		ldr	r3, .L161+12
 646 0326 C4F8B833 		str	r3, [r4, #952]	@ float
 647 032a 0122     		movs	r2, #1
 648 032c 05E7     		b	.L52
 649              	.L48:
 650 032e 0022     		movs	r2, #0
 651 0330 2946     		mov	r1, r5
 652 0332 2046     		mov	r0, r4
 653 0334 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 654 0338 0246     		mov	r2, r0
 655 033a FEE6     		b	.L52
 656              	.L74:
 657 033c 5021     		movs	r1, #80
 658 033e 2846     		mov	r0, r5
 659 0340 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 660 0344 0028     		cmp	r0, #0
 661 0346 3AD0     		beq	.L79
 662              	.L153:
 663 0348 D4F86033 		ldr	r3, [r4, #864]
 664 034c BBB1     		cbz	r3, .L80
 665 034e 4FF00108 		mov	r8, #1
 666              	.L81:
 667 0352 04F20F56 		addw	r6, r4, #1295
 668              	.L86:
 669 0356 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 670 0358 2846     		mov	r0, r5
 671 035a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 672 035e A6F20E52 		subw	r2, r6, #1294
 673 0362 D4F86033 		ldr	r3, [r4, #864]
 674 0366 121B     		subs	r2, r2, r4
 675 0368 40EA0808 		orr	r8, r0, r8
 676 036c 9342     		cmp	r3, r2
 677 036e 06F10106 		add	r6, r6, #1
 678 0372 5FFA88F8 		uxtb	r8, r8
 679 0376 EED8     		bhi	.L86
 680              	.L85:
 681 0378 B8F1000F 		cmp	r8, #0
 682 037c 2FD0     		beq	.L160
 683              	.L80:
 684 037e 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 13


 685 0382 002B     		cmp	r3, #0
 686 0384 B8D1     		bne	.L154
 687              	.L150:
 688 0386 3A46     		mov	r2, r7
 689 0388 2946     		mov	r1, r5
 690 038a 2046     		mov	r0, r4
 691 038c FFF7FEFF 		bl	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 692 0390 0246     		mov	r2, r0
 693 0392 D2E6     		b	.L52
 694              	.L157:
 695 0394 2946     		mov	r1, r5
 696 0396 2046     		mov	r0, r4
 697 0398 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 698 039c 0023     		movs	r3, #0
 699 039e 0093     		str	r3, [sp]
 700 03a0 224A     		ldr	r2, .L161+16
 701 03a2 0123     		movs	r3, #1
 702 03a4 2946     		mov	r1, r5
 703 03a6 2046     		mov	r0, r4
 704 03a8 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 705 03ac 0122     		movs	r2, #1
 706 03ae C4E6     		b	.L52
 707              	.L92:
 708 03b0 3A46     		mov	r2, r7
 709 03b2 2946     		mov	r1, r5
 710 03b4 2046     		mov	r0, r4
 711 03b6 FFF7FEFF 		bl	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 712 03ba 0246     		mov	r2, r0
 713 03bc BDE6     		b	.L52
 714              	.L79:
 715 03be 5221     		movs	r1, #82
 716 03c0 2846     		mov	r0, r5
 717 03c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 718 03c6 0028     		cmp	r0, #0
 719 03c8 BED1     		bne	.L153
 720 03ca 5321     		movs	r1, #83
 721 03cc 2846     		mov	r0, r5
 722 03ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 723 03d2 D4F86033 		ldr	r3, [r4, #864]
 724 03d6 8046     		mov	r8, r0
 725 03d8 002B     		cmp	r3, #0
 726 03da BAD1     		bne	.L81
 727 03dc CCE7     		b	.L85
 728              	.L160:
 729 03de 0122     		movs	r2, #1
 730 03e0 2946     		mov	r1, r5
 731 03e2 2046     		mov	r0, r4
 732 03e4 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 733 03e8 0246     		mov	r2, r0
 734 03ea A6E6     		b	.L52
 735              	.L77:
 736 03ec 0123     		movs	r3, #1
 737              	.L156:
 738 03ee 3A46     		mov	r2, r7
 739 03f0 2946     		mov	r1, r5
 740 03f2 2046     		mov	r0, r4
 741 03f4 FFF7FEFF 		bl	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 14


 742 03f8 0246     		mov	r2, r0
 743 03fa 9EE6     		b	.L52
 744              	.L76:
 745 03fc 0023     		movs	r3, #0
 746 03fe F6E7     		b	.L156
 747              	.L158:
 748 0400 9847     		blx	r3
 749 0402 CCE6     		b	.L91
 750              	.L90:
 751 0404 2046     		mov	r0, r4
 752 0406 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 753 040a 0122     		movs	r2, #1
 754 040c 95E6     		b	.L52
 755              	.L89:
 756 040e 3A46     		mov	r2, r7
 757 0410 2946     		mov	r1, r5
 758 0412 2046     		mov	r0, r4
 759 0414 FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 760 0418 0246     		mov	r2, r0
 761 041a 8EE6     		b	.L52
 762              	.L162:
 763              		.align	2
 764              	.L161:
 765 041c 00000000 		.word	reprap
 766 0420 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 767 0424 00000000 		.word	.LC8
 768 0428 3333CB41 		.word	1103835955
 769 042c 28000000 		.word	.LC9
 770              		.size	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleGcodeER11GCodeBuffer
 771              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 772              		.align	1
 773              		.p2align 2,,3
 774              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef
 775              		.syntax unified
 776              		.thumb
 777              		.thumb_func
 778              		.fpu fpv4-sp-d16
 779              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, %function
 780              	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef:
 781              		@ args = 0, pretend = 0, frame = 0
 782              		@ frame_needed = 0, uses_anonymous_args = 0
 783              		@ link register save eliminated.
 784 0000 8B68     		ldr	r3, [r1, #8]
 785 0002 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 786 0004 9B06     		lsls	r3, r3, #26
 787 0006 01D4     		bmi	.L164
 788 0008 FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40
 789              	.L164:
 790 000c 0120     		movs	r0, #1
 791 000e 7047     		bx	lr
 792              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBuffer
 793              		.section	.text._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer,"ax
 794              		.align	1
 795              		.p2align 2,,3
 796              		.global	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer
 797              		.syntax unified
 798              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 15


 799              		.thumb_func
 800              		.fpu fpv4-sp-d16
 801              		.type	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer, %function
 802              	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer:
 803              		@ args = 4, pretend = 0, frame = 0
 804              		@ frame_needed = 0, uses_anonymous_args = 0
 805 0000 70B5     		push	{r4, r5, r6, lr}
 806 0002 049D     		ldr	r5, [sp, #16]
 807 0004 1DB9     		cbnz	r5, .L169
 808 0006 BDE87040 		pop	{r4, r5, r6, lr}
 809 000a FFF7FEBF 		b	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.part.41
 810              	.L169:
 811 000e 0023     		movs	r3, #0
 812 0010 0B71     		strb	r3, [r1, #4]
 813 0012 0646     		mov	r6, r0
 814 0014 0C46     		mov	r4, r1
 815 0016 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 816 001a 3046     		mov	r0, r6
 817 001c 2A46     		mov	r2, r5
 818 001e 2146     		mov	r1, r4
 819 0020 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer
 820 0024 0120     		movs	r0, #1
 821 0026 70BD     		pop	{r4, r5, r6, pc}
 822              		.size	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer, .-_ZN6GCode
 823              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 824              		.align	1
 825              		.p2align 2,,3
 826              		.weak	_ZN6StringILj220EE6printfEPKcz
 827              		.syntax unified
 828              		.thumb
 829              		.thumb_func
 830              		.fpu fpv4-sp-d16
 831              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 832              	_ZN6StringILj220EE6printfEPKcz:
 833              		@ args = 4, pretend = 12, frame = 16
 834              		@ frame_needed = 0, uses_anonymous_args = 1
 835 0000 0EB4     		push	{r1, r2, r3}
 836 0002 00B5     		push	{lr}
 837 0004 84B0     		sub	sp, sp, #16
 838 0006 05AA     		add	r2, sp, #20
 839 0008 0290     		str	r0, [sp, #8]
 840 000a 52F8041B 		ldr	r1, [r2], #4
 841 000e 0192     		str	r2, [sp, #4]
 842 0010 DD23     		movs	r3, #221
 843 0012 02A8     		add	r0, sp, #8
 844 0014 0393     		str	r3, [sp, #12]
 845 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 846 001a 04B0     		add	sp, sp, #16
 847              		@ sp needed
 848 001c 5DF804EB 		ldr	lr, [sp], #4
 849 0020 03B0     		add	sp, sp, #12
 850 0022 7047     		bx	lr
 851              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 852              		.global	__aeabi_f2d
 853              		.global	__aeabi_ui2d
 854              		.global	__aeabi_ddiv
 855              		.global	__aeabi_ul2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 16


 856              		.section	.text._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 857              		.align	1
 858              		.p2align 2,,3
 859              		.global	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 860              		.syntax unified
 861              		.thumb
 862              		.thumb_func
 863              		.fpu fpv4-sp-d16
 864              		.type	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, %function
 865              	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef:
 866              		@ args = 0, pretend = 0, frame = 576
 867              		@ frame_needed = 0, uses_anonymous_args = 0
 868 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 869 0004 2DED028B 		vpush.64	{d8}
 870 0008 ADF5177D 		sub	sp, sp, #604
 871 000c 90F81836 		ldrb	r3, [r0, #1560]	@ zero_extendqisi2
 872 0010 8F6C     		ldr	r7, [r1, #72]
 873 0012 0D46     		mov	r5, r1
 874 0014 0021     		movs	r1, #0
 875 0016 0446     		mov	r4, r0
 876 0018 1646     		mov	r6, r2
 877 001a 0C91     		str	r1, [sp, #48]
 878 001c 33B3     		cbz	r3, .L174
 879 001e A7F11403 		sub	r3, r7, #20
 880 0022 112B     		cmp	r3, #17
 881 0024 22D9     		bls	.L174
 882 0026 012F     		cmp	r7, #1
 883 0028 00F2F887 		bhi	.L1704
 884              	.L175:
 885 002c 0E4B     		ldr	r3, .L1875
 886 002e 1B6A     		ldr	r3, [r3, #32]
 887 0030 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 888 0032 4BB1     		cbz	r3, .L334
 889 0034 A36C     		ldr	r3, [r4, #72]
 890 0036 1B68     		ldr	r3, [r3]
 891 0038 AB42     		cmp	r3, r5
 892 003a 05D0     		beq	.L334
 893 003c 2046     		mov	r0, r4
 894 003e FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 895 0042 0028     		cmp	r0, #0
 896 0044 05F0E181 		beq	.L1705
 897              	.L334:
 898 0048 2946     		mov	r1, r5
 899 004a 2046     		mov	r0, r4
 900 004c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 901 0050 0028     		cmp	r0, #0
 902 0052 43F09585 		bne	.L335
 903              	.L1703:
 904 0056 4FF00009 		mov	r9, #0
 905              	.L1661:
 906 005a 4846     		mov	r0, r9
 907 005c 0DF5177D 		add	sp, sp, #604
 908              		@ sp needed
 909 0060 BDEC028B 		vldm	sp!, {d8}
 910 0064 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 911              	.L1876:
 912              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 17


 913              	.L1875:
 914 0068 00000000 		.word	reprap
 915              	.L174:
 916 006c 40F2E733 		movw	r3, #999
 917 0070 9F42     		cmp	r7, r3
 918 0072 03F22580 		bhi	.L1024
 919 0076 01A2     		adr	r2, .L190
 920 0078 52F827F0 		ldr	pc, [r2, r7, lsl #2]
 921              		.p2align 2
 922              	.L190:
 923 007c 2D000000 		.word	.L175+1
 924 0080 2D000000 		.word	.L175+1
 925 0084 C1300000 		.word	.L1024+1
 926 0088 2D150000 		.word	.L191+1
 927 008c F7140000 		.word	.L192+1
 928 0090 79140000 		.word	.L193+1
 929 0094 C1300000 		.word	.L1024+1
 930 0098 C1300000 		.word	.L1024+1
 931 009c C1300000 		.word	.L1024+1
 932 00a0 C1300000 		.word	.L1024+1
 933 00a4 C1300000 		.word	.L1024+1
 934 00a8 C1300000 		.word	.L1024+1
 935 00ac C1300000 		.word	.L1024+1
 936 00b0 C1300000 		.word	.L1024+1
 937 00b4 C1300000 		.word	.L1024+1
 938 00b8 C1300000 		.word	.L1024+1
 939 00bc C1300000 		.word	.L1024+1
 940 00c0 C1300000 		.word	.L1024+1
 941 00c4 4F130000 		.word	.L194+1
 942 00c8 C1300000 		.word	.L1024+1
 943 00cc 53120000 		.word	.L195+1
 944 00d0 C5140000 		.word	.L196+1
 945 00d4 49140000 		.word	.L197+1
 946 00d8 E7110000 		.word	.L198+1
 947 00dc D5110000 		.word	.L199+1
 948 00e0 C1130000 		.word	.L200+1
 949 00e4 AD130000 		.word	.L201+1
 950 00e8 05140000 		.word	.L202+1
 951 00ec 0F120000 		.word	.L203+1
 952 00f0 C7110000 		.word	.L204+1
 953 00f4 93110000 		.word	.L205+1
 954 00f8 C1300000 		.word	.L1024+1
 955 00fc E7110000 		.word	.L198+1
 956 0100 C1300000 		.word	.L1024+1
 957 0104 C1300000 		.word	.L1024+1
 958 0108 C1300000 		.word	.L1024+1
 959 010c 47110000 		.word	.L206+1
 960 0110 8F170000 		.word	.L207+1
 961 0114 1F2C0000 		.word	.L208+1
 962 0118 B52B0000 		.word	.L209+1
 963 011c C1300000 		.word	.L1024+1
 964 0120 C1300000 		.word	.L1024+1
 965 0124 01210000 		.word	.L210+1
 966 0128 C1300000 		.word	.L1024+1
 967 012c C1300000 		.word	.L1024+1
 968 0130 C1300000 		.word	.L1024+1
 969 0134 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 18


 970 0138 C1300000 		.word	.L1024+1
 971 013c C1300000 		.word	.L1024+1
 972 0140 C1300000 		.word	.L1024+1
 973 0144 C1300000 		.word	.L1024+1
 974 0148 C1300000 		.word	.L1024+1
 975 014c C1300000 		.word	.L1024+1
 976 0150 C1300000 		.word	.L1024+1
 977 0154 C1300000 		.word	.L1024+1
 978 0158 C1300000 		.word	.L1024+1
 979 015c C1300000 		.word	.L1024+1
 980 0160 C1300000 		.word	.L1024+1
 981 0164 C1300000 		.word	.L1024+1
 982 0168 C1300000 		.word	.L1024+1
 983 016c C1300000 		.word	.L1024+1
 984 0170 C1300000 		.word	.L1024+1
 985 0174 C1300000 		.word	.L1024+1
 986 0178 C1300000 		.word	.L1024+1
 987 017c C1300000 		.word	.L1024+1
 988 0180 C1300000 		.word	.L1024+1
 989 0184 C1300000 		.word	.L1024+1
 990 0188 C1300000 		.word	.L1024+1
 991 018c C1300000 		.word	.L1024+1
 992 0190 C1300000 		.word	.L1024+1
 993 0194 C1300000 		.word	.L1024+1
 994 0198 C1300000 		.word	.L1024+1
 995 019c C1300000 		.word	.L1024+1
 996 01a0 C1300000 		.word	.L1024+1
 997 01a4 C1300000 		.word	.L1024+1
 998 01a8 C1300000 		.word	.L1024+1
 999 01ac C1300000 		.word	.L1024+1
 1000 01b0 C1300000 		.word	.L1024+1
 1001 01b4 C1300000 		.word	.L1024+1
 1002 01b8 C1300000 		.word	.L1024+1
 1003 01bc F3200000 		.word	.L211+1
 1004 01c0 D5290000 		.word	.L212+1
 1005 01c4 3D310000 		.word	.L176+1
 1006 01c8 6F100000 		.word	.L177+1
 1007 01cc 4F130000 		.word	.L194+1
 1008 01d0 432F0000 		.word	.L213+1
 1009 01d4 C1300000 		.word	.L1024+1
 1010 01d8 C1300000 		.word	.L1024+1
 1011 01dc C1300000 		.word	.L1024+1
 1012 01e0 C1300000 		.word	.L1024+1
 1013 01e4 C1300000 		.word	.L1024+1
 1014 01e8 C1300000 		.word	.L1024+1
 1015 01ec 291D0000 		.word	.L214+1
 1016 01f0 C1300000 		.word	.L1024+1
 1017 01f4 C1300000 		.word	.L1024+1
 1018 01f8 C1300000 		.word	.L1024+1
 1019 01fc C1300000 		.word	.L1024+1
 1020 0200 C1300000 		.word	.L1024+1
 1021 0204 131D0000 		.word	.L215+1
 1022 0208 031D0000 		.word	.L216+1
 1023 020c C1300000 		.word	.L1024+1
 1024 0210 F71F0000 		.word	.L217+1
 1025 0214 432F0000 		.word	.L213+1
 1026 0218 91160000 		.word	.L218+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 19


 1027 021c B5100000 		.word	.L219+1
 1028 0220 4F310000 		.word	.L178+1
 1029 0224 15180000 		.word	.L220+1
 1030 0228 A3180000 		.word	.L221+1
 1031 022c 8D180000 		.word	.L222+1
 1032 0230 9B100000 		.word	.L179+1
 1033 0234 432F0000 		.word	.L213+1
 1034 0238 5F310000 		.word	.L180+1
 1035 023c C9300000 		.word	.L181+1
 1036 0240 C1300000 		.word	.L1024+1
 1037 0244 3D260000 		.word	.L223+1
 1038 0248 451F0000 		.word	.L224+1
 1039 024c 0D1F0000 		.word	.L225+1
 1040 0250 43190000 		.word	.L226+1
 1041 0254 1B190000 		.word	.L227+1
 1042 0258 B9180000 		.word	.L228+1
 1043 025c E71F0000 		.word	.L229+1
 1044 0260 D71F0000 		.word	.L230+1
 1045 0264 9B300000 		.word	.L182+1
 1046 0268 C1300000 		.word	.L1024+1
 1047 026c C1300000 		.word	.L1024+1
 1048 0270 C1300000 		.word	.L1024+1
 1049 0274 C1300000 		.word	.L1024+1
 1050 0278 C1300000 		.word	.L1024+1
 1051 027c C1300000 		.word	.L1024+1
 1052 0280 C1300000 		.word	.L1024+1
 1053 0284 C1300000 		.word	.L1024+1
 1054 0288 C1300000 		.word	.L1024+1
 1055 028c C1300000 		.word	.L1024+1
 1056 0290 C1300000 		.word	.L1024+1
 1057 0294 C1300000 		.word	.L1024+1
 1058 0298 8F1F0000 		.word	.L231+1
 1059 029c C1300000 		.word	.L1024+1
 1060 02a0 C1300000 		.word	.L1024+1
 1061 02a4 C1300000 		.word	.L1024+1
 1062 02a8 C1300000 		.word	.L1024+1
 1063 02ac 1B200000 		.word	.L232+1
 1064 02b0 1B200000 		.word	.L232+1
 1065 02b4 C1300000 		.word	.L1024+1
 1066 02b8 09200000 		.word	.L233+1
 1067 02bc C7200000 		.word	.L234+1
 1068 02c0 C1300000 		.word	.L1024+1
 1069 02c4 C1300000 		.word	.L1024+1
 1070 02c8 C1300000 		.word	.L1024+1
 1071 02cc C1300000 		.word	.L1024+1
 1072 02d0 C1300000 		.word	.L1024+1
 1073 02d4 C1300000 		.word	.L1024+1
 1074 02d8 C1300000 		.word	.L1024+1
 1075 02dc C1300000 		.word	.L1024+1
 1076 02e0 C1300000 		.word	.L1024+1
 1077 02e4 C1300000 		.word	.L1024+1
 1078 02e8 C1300000 		.word	.L1024+1
 1079 02ec C1300000 		.word	.L1024+1
 1080 02f0 C1300000 		.word	.L1024+1
 1081 02f4 C1300000 		.word	.L1024+1
 1082 02f8 C1300000 		.word	.L1024+1
 1083 02fc C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 20


 1084 0300 C1300000 		.word	.L1024+1
 1085 0304 C1300000 		.word	.L1024+1
 1086 0308 C1300000 		.word	.L1024+1
 1087 030c C1300000 		.word	.L1024+1
 1088 0310 C1300000 		.word	.L1024+1
 1089 0314 C1300000 		.word	.L1024+1
 1090 0318 C1300000 		.word	.L1024+1
 1091 031c C1300000 		.word	.L1024+1
 1092 0320 C1300000 		.word	.L1024+1
 1093 0324 C1300000 		.word	.L1024+1
 1094 0328 C1300000 		.word	.L1024+1
 1095 032c C1300000 		.word	.L1024+1
 1096 0330 C1300000 		.word	.L1024+1
 1097 0334 C1300000 		.word	.L1024+1
 1098 0338 C1300000 		.word	.L1024+1
 1099 033c C1300000 		.word	.L1024+1
 1100 0340 C1300000 		.word	.L1024+1
 1101 0344 C1300000 		.word	.L1024+1
 1102 0348 C1300000 		.word	.L1024+1
 1103 034c C1300000 		.word	.L1024+1
 1104 0350 C1300000 		.word	.L1024+1
 1105 0354 C1300000 		.word	.L1024+1
 1106 0358 C1300000 		.word	.L1024+1
 1107 035c C1300000 		.word	.L1024+1
 1108 0360 C1300000 		.word	.L1024+1
 1109 0364 C1300000 		.word	.L1024+1
 1110 0368 C1300000 		.word	.L1024+1
 1111 036c C1300000 		.word	.L1024+1
 1112 0370 C1300000 		.word	.L1024+1
 1113 0374 41150000 		.word	.L235+1
 1114 0378 41150000 		.word	.L235+1
 1115 037c C1300000 		.word	.L1024+1
 1116 0380 C1300000 		.word	.L1024+1
 1117 0384 C1300000 		.word	.L1024+1
 1118 0388 C1300000 		.word	.L1024+1
 1119 038c C1300000 		.word	.L1024+1
 1120 0390 C1300000 		.word	.L1024+1
 1121 0394 C1300000 		.word	.L1024+1
 1122 0398 C1300000 		.word	.L1024+1
 1123 039c 71300000 		.word	.L183+1
 1124 03a0 CF270000 		.word	.L236+1
 1125 03a4 C1300000 		.word	.L1024+1
 1126 03a8 7B260000 		.word	.L237+1
 1127 03ac 5D300000 		.word	.L184+1
 1128 03b0 E5240000 		.word	.L238+1
 1129 03b4 AF240000 		.word	.L239+1
 1130 03b8 8F2F0000 		.word	.L185+1
 1131 03bc 41270000 		.word	.L240+1
 1132 03c0 C1300000 		.word	.L1024+1
 1133 03c4 432F0000 		.word	.L213+1
 1134 03c8 C1300000 		.word	.L1024+1
 1135 03cc C1300000 		.word	.L1024+1
 1136 03d0 C1300000 		.word	.L1024+1
 1137 03d4 C1300000 		.word	.L1024+1
 1138 03d8 C1300000 		.word	.L1024+1
 1139 03dc C1300000 		.word	.L1024+1
 1140 03e0 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 21


 1141 03e4 C1300000 		.word	.L1024+1
 1142 03e8 C1300000 		.word	.L1024+1
 1143 03ec 8B2E0000 		.word	.L241+1
 1144 03f0 1B2F0000 		.word	.L242+1
 1145 03f4 C1300000 		.word	.L1024+1
 1146 03f8 C1300000 		.word	.L1024+1
 1147 03fc C1300000 		.word	.L1024+1
 1148 0400 C1300000 		.word	.L1024+1
 1149 0404 6B1F0000 		.word	.L243+1
 1150 0408 C1300000 		.word	.L1024+1
 1151 040c C1300000 		.word	.L1024+1
 1152 0410 C1300000 		.word	.L1024+1
 1153 0414 C1300000 		.word	.L1024+1
 1154 0418 C1300000 		.word	.L1024+1
 1155 041c C1300000 		.word	.L1024+1
 1156 0420 C1300000 		.word	.L1024+1
 1157 0424 C1300000 		.word	.L1024+1
 1158 0428 C1300000 		.word	.L1024+1
 1159 042c C1300000 		.word	.L1024+1
 1160 0430 C1300000 		.word	.L1024+1
 1161 0434 C1300000 		.word	.L1024+1
 1162 0438 C1300000 		.word	.L1024+1
 1163 043c C1300000 		.word	.L1024+1
 1164 0440 C1300000 		.word	.L1024+1
 1165 0444 C1300000 		.word	.L1024+1
 1166 0448 C1300000 		.word	.L1024+1
 1167 044c C1300000 		.word	.L1024+1
 1168 0450 C1300000 		.word	.L1024+1
 1169 0454 C1300000 		.word	.L1024+1
 1170 0458 C1300000 		.word	.L1024+1
 1171 045c C1300000 		.word	.L1024+1
 1172 0460 C1300000 		.word	.L1024+1
 1173 0464 C1300000 		.word	.L1024+1
 1174 0468 C1300000 		.word	.L1024+1
 1175 046c C1300000 		.word	.L1024+1
 1176 0470 C1300000 		.word	.L1024+1
 1177 0474 C1300000 		.word	.L1024+1
 1178 0478 C1300000 		.word	.L1024+1
 1179 047c C1300000 		.word	.L1024+1
 1180 0480 C1300000 		.word	.L1024+1
 1181 0484 C1300000 		.word	.L1024+1
 1182 0488 C1300000 		.word	.L1024+1
 1183 048c 532E0000 		.word	.L244+1
 1184 0490 AD290000 		.word	.L245+1
 1185 0494 C1300000 		.word	.L1024+1
 1186 0498 C1300000 		.word	.L1024+1
 1187 049c C1300000 		.word	.L1024+1
 1188 04a0 C1300000 		.word	.L1024+1
 1189 04a4 C1300000 		.word	.L1024+1
 1190 04a8 C1300000 		.word	.L1024+1
 1191 04ac C1300000 		.word	.L1024+1
 1192 04b0 C1300000 		.word	.L1024+1
 1193 04b4 C1300000 		.word	.L1024+1
 1194 04b8 C1300000 		.word	.L1024+1
 1195 04bc C1300000 		.word	.L1024+1
 1196 04c0 C1300000 		.word	.L1024+1
 1197 04c4 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 22


 1198 04c8 C1300000 		.word	.L1024+1
 1199 04cc C1300000 		.word	.L1024+1
 1200 04d0 C1300000 		.word	.L1024+1
 1201 04d4 C1300000 		.word	.L1024+1
 1202 04d8 C1300000 		.word	.L1024+1
 1203 04dc BF290000 		.word	.L246+1
 1204 04e0 C1300000 		.word	.L1024+1
 1205 04e4 C1300000 		.word	.L1024+1
 1206 04e8 C1300000 		.word	.L1024+1
 1207 04ec C1300000 		.word	.L1024+1
 1208 04f0 C1300000 		.word	.L1024+1
 1209 04f4 C1300000 		.word	.L1024+1
 1210 04f8 C1300000 		.word	.L1024+1
 1211 04fc C1300000 		.word	.L1024+1
 1212 0500 C1300000 		.word	.L1024+1
 1213 0504 551A0000 		.word	.L247+1
 1214 0508 E9190000 		.word	.L248+1
 1215 050c B1190000 		.word	.L249+1
 1216 0510 C1300000 		.word	.L1024+1
 1217 0514 C1300000 		.word	.L1024+1
 1218 0518 C1300000 		.word	.L1024+1
 1219 051c C1300000 		.word	.L1024+1
 1220 0520 C1300000 		.word	.L1024+1
 1221 0524 C1300000 		.word	.L1024+1
 1222 0528 C1300000 		.word	.L1024+1
 1223 052c 7D190000 		.word	.L250+1
 1224 0530 69190000 		.word	.L251+1
 1225 0534 912A0000 		.word	.L252+1
 1226 0538 312A0000 		.word	.L253+1
 1227 053c 1D2A0000 		.word	.L254+1
 1228 0540 05180000 		.word	.L255+1
 1229 0544 C1300000 		.word	.L1024+1
 1230 0548 2F270000 		.word	.L256+1
 1231 054c C1300000 		.word	.L1024+1
 1232 0550 C1300000 		.word	.L1024+1
 1233 0554 C1300000 		.word	.L1024+1
 1234 0558 C1300000 		.word	.L1024+1
 1235 055c C1300000 		.word	.L1024+1
 1236 0560 C1300000 		.word	.L1024+1
 1237 0564 C1300000 		.word	.L1024+1
 1238 0568 C1300000 		.word	.L1024+1
 1239 056c C1300000 		.word	.L1024+1
 1240 0570 C1300000 		.word	.L1024+1
 1241 0574 C1300000 		.word	.L1024+1
 1242 0578 C1300000 		.word	.L1024+1
 1243 057c C1300000 		.word	.L1024+1
 1244 0580 C1300000 		.word	.L1024+1
 1245 0584 C1300000 		.word	.L1024+1
 1246 0588 C1300000 		.word	.L1024+1
 1247 058c C1300000 		.word	.L1024+1
 1248 0590 C1300000 		.word	.L1024+1
 1249 0594 C1300000 		.word	.L1024+1
 1250 0598 C1300000 		.word	.L1024+1
 1251 059c C1300000 		.word	.L1024+1
 1252 05a0 C1300000 		.word	.L1024+1
 1253 05a4 C1300000 		.word	.L1024+1
 1254 05a8 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 23


 1255 05ac C1300000 		.word	.L1024+1
 1256 05b0 C1300000 		.word	.L1024+1
 1257 05b4 C1300000 		.word	.L1024+1
 1258 05b8 C1300000 		.word	.L1024+1
 1259 05bc C1300000 		.word	.L1024+1
 1260 05c0 C1300000 		.word	.L1024+1
 1261 05c4 C1300000 		.word	.L1024+1
 1262 05c8 C1300000 		.word	.L1024+1
 1263 05cc C1300000 		.word	.L1024+1
 1264 05d0 C1300000 		.word	.L1024+1
 1265 05d4 C1300000 		.word	.L1024+1
 1266 05d8 C1300000 		.word	.L1024+1
 1267 05dc C1300000 		.word	.L1024+1
 1268 05e0 C1300000 		.word	.L1024+1
 1269 05e4 C1300000 		.word	.L1024+1
 1270 05e8 C1300000 		.word	.L1024+1
 1271 05ec C1300000 		.word	.L1024+1
 1272 05f0 C1300000 		.word	.L1024+1
 1273 05f4 99250000 		.word	.L257+1
 1274 05f8 C1300000 		.word	.L1024+1
 1275 05fc C1300000 		.word	.L1024+1
 1276 0600 C1300000 		.word	.L1024+1
 1277 0604 C1300000 		.word	.L1024+1
 1278 0608 C1300000 		.word	.L1024+1
 1279 060c C1300000 		.word	.L1024+1
 1280 0610 C1300000 		.word	.L1024+1
 1281 0614 C1300000 		.word	.L1024+1
 1282 0618 C1300000 		.word	.L1024+1
 1283 061c C1300000 		.word	.L1024+1
 1284 0620 C1300000 		.word	.L1024+1
 1285 0624 C1300000 		.word	.L1024+1
 1286 0628 C1300000 		.word	.L1024+1
 1287 062c C1300000 		.word	.L1024+1
 1288 0630 C1300000 		.word	.L1024+1
 1289 0634 C1300000 		.word	.L1024+1
 1290 0638 C1300000 		.word	.L1024+1
 1291 063c C1300000 		.word	.L1024+1
 1292 0640 C1300000 		.word	.L1024+1
 1293 0644 C1300000 		.word	.L1024+1
 1294 0648 C1300000 		.word	.L1024+1
 1295 064c C1300000 		.word	.L1024+1
 1296 0650 C1300000 		.word	.L1024+1
 1297 0654 81250000 		.word	.L258+1
 1298 0658 61250000 		.word	.L259+1
 1299 065c 03270000 		.word	.L260+1
 1300 0660 C1300000 		.word	.L1024+1
 1301 0664 C1300000 		.word	.L1024+1
 1302 0668 C1300000 		.word	.L1024+1
 1303 066c C1300000 		.word	.L1024+1
 1304 0670 C1300000 		.word	.L1024+1
 1305 0674 C1300000 		.word	.L1024+1
 1306 0678 C1300000 		.word	.L1024+1
 1307 067c C1300000 		.word	.L1024+1
 1308 0680 C1300000 		.word	.L1024+1
 1309 0684 C1300000 		.word	.L1024+1
 1310 0688 C1300000 		.word	.L1024+1
 1311 068c C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 24


 1312 0690 C1300000 		.word	.L1024+1
 1313 0694 C1300000 		.word	.L1024+1
 1314 0698 C1300000 		.word	.L1024+1
 1315 069c C1300000 		.word	.L1024+1
 1316 06a0 C1300000 		.word	.L1024+1
 1317 06a4 C1300000 		.word	.L1024+1
 1318 06a8 C1300000 		.word	.L1024+1
 1319 06ac C1300000 		.word	.L1024+1
 1320 06b0 C1300000 		.word	.L1024+1
 1321 06b4 C1300000 		.word	.L1024+1
 1322 06b8 C1300000 		.word	.L1024+1
 1323 06bc ED260000 		.word	.L261+1
 1324 06c0 A91D0000 		.word	.L262+1
 1325 06c4 971D0000 		.word	.L263+1
 1326 06c8 C1300000 		.word	.L1024+1
 1327 06cc 51280000 		.word	.L264+1
 1328 06d0 C1300000 		.word	.L1024+1
 1329 06d4 C1300000 		.word	.L1024+1
 1330 06d8 C1300000 		.word	.L1024+1
 1331 06dc 652F0000 		.word	.L186+1
 1332 06e0 C1300000 		.word	.L1024+1
 1333 06e4 C1300000 		.word	.L1024+1
 1334 06e8 C1300000 		.word	.L1024+1
 1335 06ec C1300000 		.word	.L1024+1
 1336 06f0 C1300000 		.word	.L1024+1
 1337 06f4 C1300000 		.word	.L1024+1
 1338 06f8 C1300000 		.word	.L1024+1
 1339 06fc C1300000 		.word	.L1024+1
 1340 0700 C1300000 		.word	.L1024+1
 1341 0704 C1300000 		.word	.L1024+1
 1342 0708 C1300000 		.word	.L1024+1
 1343 070c C1300000 		.word	.L1024+1
 1344 0710 C1300000 		.word	.L1024+1
 1345 0714 C1300000 		.word	.L1024+1
 1346 0718 C1300000 		.word	.L1024+1
 1347 071c C1300000 		.word	.L1024+1
 1348 0720 C1300000 		.word	.L1024+1
 1349 0724 C1300000 		.word	.L1024+1
 1350 0728 C1300000 		.word	.L1024+1
 1351 072c C1300000 		.word	.L1024+1
 1352 0730 C1300000 		.word	.L1024+1
 1353 0734 C1300000 		.word	.L1024+1
 1354 0738 C1300000 		.word	.L1024+1
 1355 073c C1300000 		.word	.L1024+1
 1356 0740 C1300000 		.word	.L1024+1
 1357 0744 C1300000 		.word	.L1024+1
 1358 0748 C1300000 		.word	.L1024+1
 1359 074c C1300000 		.word	.L1024+1
 1360 0750 C1300000 		.word	.L1024+1
 1361 0754 C1300000 		.word	.L1024+1
 1362 0758 C1300000 		.word	.L1024+1
 1363 075c C1300000 		.word	.L1024+1
 1364 0760 C1300000 		.word	.L1024+1
 1365 0764 C1300000 		.word	.L1024+1
 1366 0768 C1300000 		.word	.L1024+1
 1367 076c C1300000 		.word	.L1024+1
 1368 0770 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 25


 1369 0774 C1300000 		.word	.L1024+1
 1370 0778 C1300000 		.word	.L1024+1
 1371 077c C1300000 		.word	.L1024+1
 1372 0780 C1300000 		.word	.L1024+1
 1373 0784 39280000 		.word	.L265+1
 1374 0788 A3280000 		.word	.L266+1
 1375 078c 39210000 		.word	.L267+1
 1376 0790 AB150000 		.word	.L268+1
 1377 0794 C1300000 		.word	.L1024+1
 1378 0798 C1300000 		.word	.L1024+1
 1379 079c C1300000 		.word	.L1024+1
 1380 07a0 C1300000 		.word	.L1024+1
 1381 07a4 C1300000 		.word	.L1024+1
 1382 07a8 C1300000 		.word	.L1024+1
 1383 07ac C1300000 		.word	.L1024+1
 1384 07b0 C1300000 		.word	.L1024+1
 1385 07b4 C1300000 		.word	.L1024+1
 1386 07b8 C1300000 		.word	.L1024+1
 1387 07bc C1300000 		.word	.L1024+1
 1388 07c0 C1300000 		.word	.L1024+1
 1389 07c4 C1300000 		.word	.L1024+1
 1390 07c8 C1300000 		.word	.L1024+1
 1391 07cc C1300000 		.word	.L1024+1
 1392 07d0 C1300000 		.word	.L1024+1
 1393 07d4 C1300000 		.word	.L1024+1
 1394 07d8 C1300000 		.word	.L1024+1
 1395 07dc C1300000 		.word	.L1024+1
 1396 07e0 C1300000 		.word	.L1024+1
 1397 07e4 C1300000 		.word	.L1024+1
 1398 07e8 C1300000 		.word	.L1024+1
 1399 07ec C1300000 		.word	.L1024+1
 1400 07f0 C1300000 		.word	.L1024+1
 1401 07f4 C1300000 		.word	.L1024+1
 1402 07f8 C1300000 		.word	.L1024+1
 1403 07fc C1300000 		.word	.L1024+1
 1404 0800 C1300000 		.word	.L1024+1
 1405 0804 C1300000 		.word	.L1024+1
 1406 0808 C1300000 		.word	.L1024+1
 1407 080c C1300000 		.word	.L1024+1
 1408 0810 C1300000 		.word	.L1024+1
 1409 0814 C1300000 		.word	.L1024+1
 1410 0818 C1300000 		.word	.L1024+1
 1411 081c C1300000 		.word	.L1024+1
 1412 0820 C1300000 		.word	.L1024+1
 1413 0824 C1300000 		.word	.L1024+1
 1414 0828 C1300000 		.word	.L1024+1
 1415 082c C1300000 		.word	.L1024+1
 1416 0830 C1300000 		.word	.L1024+1
 1417 0834 C1300000 		.word	.L1024+1
 1418 0838 C1300000 		.word	.L1024+1
 1419 083c C1300000 		.word	.L1024+1
 1420 0840 C1300000 		.word	.L1024+1
 1421 0844 C1300000 		.word	.L1024+1
 1422 0848 C1300000 		.word	.L1024+1
 1423 084c 9B150000 		.word	.L269+1
 1424 0850 67260000 		.word	.L270+1
 1425 0854 8B150000 		.word	.L271+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 26


 1426 0858 C1230000 		.word	.L272+1
 1427 085c C1300000 		.word	.L1024+1
 1428 0860 C1300000 		.word	.L1024+1
 1429 0864 C1300000 		.word	.L1024+1
 1430 0868 C1300000 		.word	.L1024+1
 1431 086c C1300000 		.word	.L1024+1
 1432 0870 C1300000 		.word	.L1024+1
 1433 0874 C1300000 		.word	.L1024+1
 1434 0878 C1300000 		.word	.L1024+1
 1435 087c C1300000 		.word	.L1024+1
 1436 0880 C1300000 		.word	.L1024+1
 1437 0884 C1300000 		.word	.L1024+1
 1438 0888 C1300000 		.word	.L1024+1
 1439 088c C1300000 		.word	.L1024+1
 1440 0890 C1300000 		.word	.L1024+1
 1441 0894 C1300000 		.word	.L1024+1
 1442 0898 C1300000 		.word	.L1024+1
 1443 089c C1300000 		.word	.L1024+1
 1444 08a0 C1300000 		.word	.L1024+1
 1445 08a4 C1300000 		.word	.L1024+1
 1446 08a8 C1300000 		.word	.L1024+1
 1447 08ac C1300000 		.word	.L1024+1
 1448 08b0 C1300000 		.word	.L1024+1
 1449 08b4 C1300000 		.word	.L1024+1
 1450 08b8 C1300000 		.word	.L1024+1
 1451 08bc C1300000 		.word	.L1024+1
 1452 08c0 C1300000 		.word	.L1024+1
 1453 08c4 C1300000 		.word	.L1024+1
 1454 08c8 C1300000 		.word	.L1024+1
 1455 08cc C1300000 		.word	.L1024+1
 1456 08d0 C1300000 		.word	.L1024+1
 1457 08d4 C1300000 		.word	.L1024+1
 1458 08d8 C1300000 		.word	.L1024+1
 1459 08dc C1300000 		.word	.L1024+1
 1460 08e0 C1300000 		.word	.L1024+1
 1461 08e4 C1300000 		.word	.L1024+1
 1462 08e8 C1300000 		.word	.L1024+1
 1463 08ec 9D230000 		.word	.L273+1
 1464 08f0 C1300000 		.word	.L1024+1
 1465 08f4 C1300000 		.word	.L1024+1
 1466 08f8 C1300000 		.word	.L1024+1
 1467 08fc C1300000 		.word	.L1024+1
 1468 0900 C1300000 		.word	.L1024+1
 1469 0904 C1300000 		.word	.L1024+1
 1470 0908 C1300000 		.word	.L1024+1
 1471 090c C1300000 		.word	.L1024+1
 1472 0910 C1300000 		.word	.L1024+1
 1473 0914 51230000 		.word	.L274+1
 1474 0918 21230000 		.word	.L275+1
 1475 091c AF230000 		.word	.L276+1
 1476 0920 89230000 		.word	.L277+1
 1477 0924 AD1E0000 		.word	.L278+1
 1478 0928 871E0000 		.word	.L279+1
 1479 092c 93220000 		.word	.L280+1
 1480 0930 81220000 		.word	.L281+1
 1481 0934 6F220000 		.word	.L282+1
 1482 0938 E5210000 		.word	.L283+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 27


 1483 093c E5210000 		.word	.L283+1
 1484 0940 F3220000 		.word	.L284+1
 1485 0944 C3220000 		.word	.L285+1
 1486 0948 0F230000 		.word	.L286+1
 1487 094c 4B170000 		.word	.L287+1
 1488 0950 C1300000 		.word	.L1024+1
 1489 0954 E5240000 		.word	.L238+1
 1490 0958 CB1B0000 		.word	.L288+1
 1491 095c BB1B0000 		.word	.L289+1
 1492 0960 A91B0000 		.word	.L290+1
 1493 0964 6F1B0000 		.word	.L291+1
 1494 0968 271C0000 		.word	.L292+1
 1495 096c E11B0000 		.word	.L293+1
 1496 0970 111C0000 		.word	.L294+1
 1497 0974 091B0000 		.word	.L295+1
 1498 0978 4B240000 		.word	.L296+1
 1499 097c C1300000 		.word	.L1024+1
 1500 0980 35240000 		.word	.L297+1
 1501 0984 C1300000 		.word	.L1024+1
 1502 0988 B31C0000 		.word	.L298+1
 1503 098c C1300000 		.word	.L1024+1
 1504 0990 9F1C0000 		.word	.L299+1
 1505 0994 9F1C0000 		.word	.L299+1
 1506 0998 C1300000 		.word	.L1024+1
 1507 099c 9D240000 		.word	.L300+1
 1508 09a0 7D1F0000 		.word	.L301+1
 1509 09a4 61240000 		.word	.L302+1
 1510 09a8 8F2B0000 		.word	.L303+1
 1511 09ac 8F2B0000 		.word	.L303+1
 1512 09b0 8F2B0000 		.word	.L303+1
 1513 09b4 C1300000 		.word	.L1024+1
 1514 09b8 792B0000 		.word	.L304+1
 1515 09bc 632B0000 		.word	.L305+1
 1516 09c0 772E0000 		.word	.L306+1
 1517 09c4 C1300000 		.word	.L1024+1
 1518 09c8 C1300000 		.word	.L1024+1
 1519 09cc C1300000 		.word	.L1024+1
 1520 09d0 C1300000 		.word	.L1024+1
 1521 09d4 C1300000 		.word	.L1024+1
 1522 09d8 C1300000 		.word	.L1024+1
 1523 09dc 7B2D0000 		.word	.L307+1
 1524 09e0 C1300000 		.word	.L1024+1
 1525 09e4 C1300000 		.word	.L1024+1
 1526 09e8 C1300000 		.word	.L1024+1
 1527 09ec C1300000 		.word	.L1024+1
 1528 09f0 C1300000 		.word	.L1024+1
 1529 09f4 C1300000 		.word	.L1024+1
 1530 09f8 C1300000 		.word	.L1024+1
 1531 09fc C1300000 		.word	.L1024+1
 1532 0a00 C1300000 		.word	.L1024+1
 1533 0a04 C1300000 		.word	.L1024+1
 1534 0a08 C1300000 		.word	.L1024+1
 1535 0a0c C1300000 		.word	.L1024+1
 1536 0a10 C1300000 		.word	.L1024+1
 1537 0a14 C1300000 		.word	.L1024+1
 1538 0a18 C1300000 		.word	.L1024+1
 1539 0a1c C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 28


 1540 0a20 C1300000 		.word	.L1024+1
 1541 0a24 C1300000 		.word	.L1024+1
 1542 0a28 C1300000 		.word	.L1024+1
 1543 0a2c C1300000 		.word	.L1024+1
 1544 0a30 C1300000 		.word	.L1024+1
 1545 0a34 C1300000 		.word	.L1024+1
 1546 0a38 C1300000 		.word	.L1024+1
 1547 0a3c C1300000 		.word	.L1024+1
 1548 0a40 C1300000 		.word	.L1024+1
 1549 0a44 C1300000 		.word	.L1024+1
 1550 0a48 C1300000 		.word	.L1024+1
 1551 0a4c C1300000 		.word	.L1024+1
 1552 0a50 C1300000 		.word	.L1024+1
 1553 0a54 C1300000 		.word	.L1024+1
 1554 0a58 C1300000 		.word	.L1024+1
 1555 0a5c C1300000 		.word	.L1024+1
 1556 0a60 C1300000 		.word	.L1024+1
 1557 0a64 C1300000 		.word	.L1024+1
 1558 0a68 C1300000 		.word	.L1024+1
 1559 0a6c C1300000 		.word	.L1024+1
 1560 0a70 C1300000 		.word	.L1024+1
 1561 0a74 C1300000 		.word	.L1024+1
 1562 0a78 C1300000 		.word	.L1024+1
 1563 0a7c C1300000 		.word	.L1024+1
 1564 0a80 C1300000 		.word	.L1024+1
 1565 0a84 C1300000 		.word	.L1024+1
 1566 0a88 C1300000 		.word	.L1024+1
 1567 0a8c C1300000 		.word	.L1024+1
 1568 0a90 C1300000 		.word	.L1024+1
 1569 0a94 C1300000 		.word	.L1024+1
 1570 0a98 C1300000 		.word	.L1024+1
 1571 0a9c C1300000 		.word	.L1024+1
 1572 0aa0 C1300000 		.word	.L1024+1
 1573 0aa4 C1300000 		.word	.L1024+1
 1574 0aa8 C1300000 		.word	.L1024+1
 1575 0aac C1300000 		.word	.L1024+1
 1576 0ab0 C1300000 		.word	.L1024+1
 1577 0ab4 C1300000 		.word	.L1024+1
 1578 0ab8 C1300000 		.word	.L1024+1
 1579 0abc C1300000 		.word	.L1024+1
 1580 0ac0 C1300000 		.word	.L1024+1
 1581 0ac4 C1300000 		.word	.L1024+1
 1582 0ac8 C1300000 		.word	.L1024+1
 1583 0acc C1300000 		.word	.L1024+1
 1584 0ad0 C1300000 		.word	.L1024+1
 1585 0ad4 C1300000 		.word	.L1024+1
 1586 0ad8 C1300000 		.word	.L1024+1
 1587 0adc C1300000 		.word	.L1024+1
 1588 0ae0 8D2D0000 		.word	.L308+1
 1589 0ae4 C11E0000 		.word	.L309+1
 1590 0ae8 0D2D0000 		.word	.L310+1
 1591 0aec C1300000 		.word	.L1024+1
 1592 0af0 3F290000 		.word	.L311+1
 1593 0af4 25290000 		.word	.L312+1
 1594 0af8 BF280000 		.word	.L313+1
 1595 0afc FB2C0000 		.word	.L314+1
 1596 0b00 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 29


 1597 0b04 C1300000 		.word	.L1024+1
 1598 0b08 C1300000 		.word	.L1024+1
 1599 0b0c C1300000 		.word	.L1024+1
 1600 0b10 C1300000 		.word	.L1024+1
 1601 0b14 C1300000 		.word	.L1024+1
 1602 0b18 C1300000 		.word	.L1024+1
 1603 0b1c C1300000 		.word	.L1024+1
 1604 0b20 C1300000 		.word	.L1024+1
 1605 0b24 C1300000 		.word	.L1024+1
 1606 0b28 C1300000 		.word	.L1024+1
 1607 0b2c C1300000 		.word	.L1024+1
 1608 0b30 C1300000 		.word	.L1024+1
 1609 0b34 C1300000 		.word	.L1024+1
 1610 0b38 C1300000 		.word	.L1024+1
 1611 0b3c C1300000 		.word	.L1024+1
 1612 0b40 C1300000 		.word	.L1024+1
 1613 0b44 C1300000 		.word	.L1024+1
 1614 0b48 C1300000 		.word	.L1024+1
 1615 0b4c C1300000 		.word	.L1024+1
 1616 0b50 C1300000 		.word	.L1024+1
 1617 0b54 C1300000 		.word	.L1024+1
 1618 0b58 C1300000 		.word	.L1024+1
 1619 0b5c C1300000 		.word	.L1024+1
 1620 0b60 C1300000 		.word	.L1024+1
 1621 0b64 C1300000 		.word	.L1024+1
 1622 0b68 C1300000 		.word	.L1024+1
 1623 0b6c C1300000 		.word	.L1024+1
 1624 0b70 E92C0000 		.word	.L315+1
 1625 0b74 F5170000 		.word	.L316+1
 1626 0b78 E91D0000 		.word	.L317+1
 1627 0b7c C1300000 		.word	.L1024+1
 1628 0b80 C1300000 		.word	.L1024+1
 1629 0b84 C1300000 		.word	.L1024+1
 1630 0b88 C1300000 		.word	.L1024+1
 1631 0b8c C1300000 		.word	.L1024+1
 1632 0b90 C1300000 		.word	.L1024+1
 1633 0b94 C1300000 		.word	.L1024+1
 1634 0b98 C1300000 		.word	.L1024+1
 1635 0b9c C1300000 		.word	.L1024+1
 1636 0ba0 C1300000 		.word	.L1024+1
 1637 0ba4 C1300000 		.word	.L1024+1
 1638 0ba8 C1300000 		.word	.L1024+1
 1639 0bac C1300000 		.word	.L1024+1
 1640 0bb0 C1300000 		.word	.L1024+1
 1641 0bb4 C1300000 		.word	.L1024+1
 1642 0bb8 C1300000 		.word	.L1024+1
 1643 0bbc C1300000 		.word	.L1024+1
 1644 0bc0 C1300000 		.word	.L1024+1
 1645 0bc4 C1300000 		.word	.L1024+1
 1646 0bc8 C1300000 		.word	.L1024+1
 1647 0bcc C1300000 		.word	.L1024+1
 1648 0bd0 C1300000 		.word	.L1024+1
 1649 0bd4 C1300000 		.word	.L1024+1
 1650 0bd8 C1300000 		.word	.L1024+1
 1651 0bdc C1300000 		.word	.L1024+1
 1652 0be0 C1300000 		.word	.L1024+1
 1653 0be4 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 30


 1654 0be8 C1300000 		.word	.L1024+1
 1655 0bec C1300000 		.word	.L1024+1
 1656 0bf0 C1300000 		.word	.L1024+1
 1657 0bf4 C1300000 		.word	.L1024+1
 1658 0bf8 C1300000 		.word	.L1024+1
 1659 0bfc C1300000 		.word	.L1024+1
 1660 0c00 C1300000 		.word	.L1024+1
 1661 0c04 C1300000 		.word	.L1024+1
 1662 0c08 C1300000 		.word	.L1024+1
 1663 0c0c C1300000 		.word	.L1024+1
 1664 0c10 C1300000 		.word	.L1024+1
 1665 0c14 C1300000 		.word	.L1024+1
 1666 0c18 C1300000 		.word	.L1024+1
 1667 0c1c C1300000 		.word	.L1024+1
 1668 0c20 C1300000 		.word	.L1024+1
 1669 0c24 C1300000 		.word	.L1024+1
 1670 0c28 C1300000 		.word	.L1024+1
 1671 0c2c C1300000 		.word	.L1024+1
 1672 0c30 C1300000 		.word	.L1024+1
 1673 0c34 532B0000 		.word	.L318+1
 1674 0c38 392B0000 		.word	.L319+1
 1675 0c3c 5D2C0000 		.word	.L320+1
 1676 0c40 C5210000 		.word	.L321+1
 1677 0c44 15170000 		.word	.L322+1
 1678 0c48 BF160000 		.word	.L323+1
 1679 0c4c A1160000 		.word	.L324+1
 1680 0c50 C1300000 		.word	.L1024+1
 1681 0c54 C1300000 		.word	.L1024+1
 1682 0c58 C1300000 		.word	.L1024+1
 1683 0c5c C1300000 		.word	.L1024+1
 1684 0c60 C1300000 		.word	.L1024+1
 1685 0c64 C1300000 		.word	.L1024+1
 1686 0c68 C1300000 		.word	.L1024+1
 1687 0c6c C1300000 		.word	.L1024+1
 1688 0c70 C1300000 		.word	.L1024+1
 1689 0c74 C1300000 		.word	.L1024+1
 1690 0c78 C1300000 		.word	.L1024+1
 1691 0c7c C1300000 		.word	.L1024+1
 1692 0c80 C1300000 		.word	.L1024+1
 1693 0c84 C1300000 		.word	.L1024+1
 1694 0c88 C1300000 		.word	.L1024+1
 1695 0c8c C1300000 		.word	.L1024+1
 1696 0c90 C1300000 		.word	.L1024+1
 1697 0c94 C1300000 		.word	.L1024+1
 1698 0c98 C1300000 		.word	.L1024+1
 1699 0c9c C1300000 		.word	.L1024+1
 1700 0ca0 C1300000 		.word	.L1024+1
 1701 0ca4 C1300000 		.word	.L1024+1
 1702 0ca8 C1300000 		.word	.L1024+1
 1703 0cac C1300000 		.word	.L1024+1
 1704 0cb0 C1300000 		.word	.L1024+1
 1705 0cb4 C1300000 		.word	.L1024+1
 1706 0cb8 C1300000 		.word	.L1024+1
 1707 0cbc C1300000 		.word	.L1024+1
 1708 0cc0 C1300000 		.word	.L1024+1
 1709 0cc4 C1300000 		.word	.L1024+1
 1710 0cc8 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 31


 1711 0ccc C1300000 		.word	.L1024+1
 1712 0cd0 C1300000 		.word	.L1024+1
 1713 0cd4 C1300000 		.word	.L1024+1
 1714 0cd8 C1300000 		.word	.L1024+1
 1715 0cdc C1300000 		.word	.L1024+1
 1716 0ce0 C1300000 		.word	.L1024+1
 1717 0ce4 C1300000 		.word	.L1024+1
 1718 0ce8 C1300000 		.word	.L1024+1
 1719 0cec C1300000 		.word	.L1024+1
 1720 0cf0 C1300000 		.word	.L1024+1
 1721 0cf4 C1300000 		.word	.L1024+1
 1722 0cf8 C1300000 		.word	.L1024+1
 1723 0cfc C1300000 		.word	.L1024+1
 1724 0d00 C1300000 		.word	.L1024+1
 1725 0d04 C1300000 		.word	.L1024+1
 1726 0d08 C1300000 		.word	.L1024+1
 1727 0d0c C1300000 		.word	.L1024+1
 1728 0d10 C1300000 		.word	.L1024+1
 1729 0d14 C1300000 		.word	.L1024+1
 1730 0d18 C1300000 		.word	.L1024+1
 1731 0d1c C1300000 		.word	.L1024+1
 1732 0d20 C1300000 		.word	.L1024+1
 1733 0d24 C1300000 		.word	.L1024+1
 1734 0d28 C1300000 		.word	.L1024+1
 1735 0d2c C1300000 		.word	.L1024+1
 1736 0d30 C1300000 		.word	.L1024+1
 1737 0d34 C1300000 		.word	.L1024+1
 1738 0d38 C1300000 		.word	.L1024+1
 1739 0d3c C1300000 		.word	.L1024+1
 1740 0d40 C1300000 		.word	.L1024+1
 1741 0d44 C1300000 		.word	.L1024+1
 1742 0d48 C1300000 		.word	.L1024+1
 1743 0d4c C1300000 		.word	.L1024+1
 1744 0d50 C1300000 		.word	.L1024+1
 1745 0d54 C1300000 		.word	.L1024+1
 1746 0d58 C1300000 		.word	.L1024+1
 1747 0d5c C1300000 		.word	.L1024+1
 1748 0d60 C1300000 		.word	.L1024+1
 1749 0d64 C1300000 		.word	.L1024+1
 1750 0d68 C1300000 		.word	.L1024+1
 1751 0d6c C1300000 		.word	.L1024+1
 1752 0d70 C1300000 		.word	.L1024+1
 1753 0d74 C1300000 		.word	.L1024+1
 1754 0d78 C1300000 		.word	.L1024+1
 1755 0d7c C1300000 		.word	.L1024+1
 1756 0d80 C1300000 		.word	.L1024+1
 1757 0d84 C1300000 		.word	.L1024+1
 1758 0d88 C1300000 		.word	.L1024+1
 1759 0d8c C1300000 		.word	.L1024+1
 1760 0d90 C1300000 		.word	.L1024+1
 1761 0d94 C1300000 		.word	.L1024+1
 1762 0d98 C1300000 		.word	.L1024+1
 1763 0d9c C1300000 		.word	.L1024+1
 1764 0da0 C1300000 		.word	.L1024+1
 1765 0da4 C1300000 		.word	.L1024+1
 1766 0da8 C1300000 		.word	.L1024+1
 1767 0dac C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 32


 1768 0db0 C1300000 		.word	.L1024+1
 1769 0db4 C1300000 		.word	.L1024+1
 1770 0db8 C1300000 		.word	.L1024+1
 1771 0dbc C1300000 		.word	.L1024+1
 1772 0dc0 C1300000 		.word	.L1024+1
 1773 0dc4 C1300000 		.word	.L1024+1
 1774 0dc8 C1300000 		.word	.L1024+1
 1775 0dcc C1300000 		.word	.L1024+1
 1776 0dd0 C1300000 		.word	.L1024+1
 1777 0dd4 C1300000 		.word	.L1024+1
 1778 0dd8 C1300000 		.word	.L1024+1
 1779 0ddc C1300000 		.word	.L1024+1
 1780 0de0 C1300000 		.word	.L1024+1
 1781 0de4 C1300000 		.word	.L1024+1
 1782 0de8 C1300000 		.word	.L1024+1
 1783 0dec C1300000 		.word	.L1024+1
 1784 0df0 C1300000 		.word	.L1024+1
 1785 0df4 C1300000 		.word	.L1024+1
 1786 0df8 C1300000 		.word	.L1024+1
 1787 0dfc C1300000 		.word	.L1024+1
 1788 0e00 C1300000 		.word	.L1024+1
 1789 0e04 C1300000 		.word	.L1024+1
 1790 0e08 C1300000 		.word	.L1024+1
 1791 0e0c C1300000 		.word	.L1024+1
 1792 0e10 C1300000 		.word	.L1024+1
 1793 0e14 C1300000 		.word	.L1024+1
 1794 0e18 C1300000 		.word	.L1024+1
 1795 0e1c C1300000 		.word	.L1024+1
 1796 0e20 C1300000 		.word	.L1024+1
 1797 0e24 C1300000 		.word	.L1024+1
 1798 0e28 C1300000 		.word	.L1024+1
 1799 0e2c C1300000 		.word	.L1024+1
 1800 0e30 C1300000 		.word	.L1024+1
 1801 0e34 C1300000 		.word	.L1024+1
 1802 0e38 C1300000 		.word	.L1024+1
 1803 0e3c C1300000 		.word	.L1024+1
 1804 0e40 C1300000 		.word	.L1024+1
 1805 0e44 C1300000 		.word	.L1024+1
 1806 0e48 C1300000 		.word	.L1024+1
 1807 0e4c C1300000 		.word	.L1024+1
 1808 0e50 C1300000 		.word	.L1024+1
 1809 0e54 C1300000 		.word	.L1024+1
 1810 0e58 C1300000 		.word	.L1024+1
 1811 0e5c C1300000 		.word	.L1024+1
 1812 0e60 C1300000 		.word	.L1024+1
 1813 0e64 C1300000 		.word	.L1024+1
 1814 0e68 C1300000 		.word	.L1024+1
 1815 0e6c C1300000 		.word	.L1024+1
 1816 0e70 C1300000 		.word	.L1024+1
 1817 0e74 C1300000 		.word	.L1024+1
 1818 0e78 C1300000 		.word	.L1024+1
 1819 0e7c C1300000 		.word	.L1024+1
 1820 0e80 C1300000 		.word	.L1024+1
 1821 0e84 C1300000 		.word	.L1024+1
 1822 0e88 C1300000 		.word	.L1024+1
 1823 0e8c C1300000 		.word	.L1024+1
 1824 0e90 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 33


 1825 0e94 C1300000 		.word	.L1024+1
 1826 0e98 C1300000 		.word	.L1024+1
 1827 0e9c C1300000 		.word	.L1024+1
 1828 0ea0 0B2A0000 		.word	.L325+1
 1829 0ea4 E12A0000 		.word	.L326+1
 1830 0ea8 C1300000 		.word	.L1024+1
 1831 0eac C1300000 		.word	.L1024+1
 1832 0eb0 C1300000 		.word	.L1024+1
 1833 0eb4 C1300000 		.word	.L1024+1
 1834 0eb8 511E0000 		.word	.L327+1
 1835 0ebc 2B1E0000 		.word	.L328+1
 1836 0ec0 E12A0000 		.word	.L326+1
 1837 0ec4 C1300000 		.word	.L1024+1
 1838 0ec8 A12B0000 		.word	.L329+1
 1839 0ecc 0B150000 		.word	.L330+1
 1840 0ed0 E12A0000 		.word	.L326+1
 1841 0ed4 C1300000 		.word	.L1024+1
 1842 0ed8 C1300000 		.word	.L1024+1
 1843 0edc C1300000 		.word	.L1024+1
 1844 0ee0 C1300000 		.word	.L1024+1
 1845 0ee4 C1300000 		.word	.L1024+1
 1846 0ee8 C1300000 		.word	.L1024+1
 1847 0eec C1300000 		.word	.L1024+1
 1848 0ef0 C1300000 		.word	.L1024+1
 1849 0ef4 C1300000 		.word	.L1024+1
 1850 0ef8 C1300000 		.word	.L1024+1
 1851 0efc C1300000 		.word	.L1024+1
 1852 0f00 652E0000 		.word	.L331+1
 1853 0f04 C1300000 		.word	.L1024+1
 1854 0f08 C1300000 		.word	.L1024+1
 1855 0f0c C1300000 		.word	.L1024+1
 1856 0f10 C1300000 		.word	.L1024+1
 1857 0f14 C1300000 		.word	.L1024+1
 1858 0f18 C1300000 		.word	.L1024+1
 1859 0f1c C1300000 		.word	.L1024+1
 1860 0f20 C1300000 		.word	.L1024+1
 1861 0f24 C1300000 		.word	.L1024+1
 1862 0f28 C1300000 		.word	.L1024+1
 1863 0f2c C1300000 		.word	.L1024+1
 1864 0f30 C1300000 		.word	.L1024+1
 1865 0f34 C1300000 		.word	.L1024+1
 1866 0f38 C1300000 		.word	.L1024+1
 1867 0f3c C1300000 		.word	.L1024+1
 1868 0f40 C1300000 		.word	.L1024+1
 1869 0f44 C1300000 		.word	.L1024+1
 1870 0f48 C1300000 		.word	.L1024+1
 1871 0f4c C1300000 		.word	.L1024+1
 1872 0f50 C1300000 		.word	.L1024+1
 1873 0f54 C1300000 		.word	.L1024+1
 1874 0f58 C1300000 		.word	.L1024+1
 1875 0f5c C1300000 		.word	.L1024+1
 1876 0f60 C1300000 		.word	.L1024+1
 1877 0f64 C1300000 		.word	.L1024+1
 1878 0f68 C1300000 		.word	.L1024+1
 1879 0f6c C1300000 		.word	.L1024+1
 1880 0f70 C1300000 		.word	.L1024+1
 1881 0f74 C1300000 		.word	.L1024+1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 34


 1882 0f78 C1300000 		.word	.L1024+1
 1883 0f7c C1300000 		.word	.L1024+1
 1884 0f80 C1300000 		.word	.L1024+1
 1885 0f84 C1300000 		.word	.L1024+1
 1886 0f88 C1300000 		.word	.L1024+1
 1887 0f8c C1300000 		.word	.L1024+1
 1888 0f90 C1300000 		.word	.L1024+1
 1889 0f94 C1300000 		.word	.L1024+1
 1890 0f98 C1300000 		.word	.L1024+1
 1891 0f9c C1300000 		.word	.L1024+1
 1892 0fa0 C1300000 		.word	.L1024+1
 1893 0fa4 C1300000 		.word	.L1024+1
 1894 0fa8 C1300000 		.word	.L1024+1
 1895 0fac C1300000 		.word	.L1024+1
 1896 0fb0 C1300000 		.word	.L1024+1
 1897 0fb4 C1300000 		.word	.L1024+1
 1898 0fb8 C1300000 		.word	.L1024+1
 1899 0fbc C1300000 		.word	.L1024+1
 1900 0fc0 C1300000 		.word	.L1024+1
 1901 0fc4 C1300000 		.word	.L1024+1
 1902 0fc8 C1300000 		.word	.L1024+1
 1903 0fcc C1300000 		.word	.L1024+1
 1904 0fd0 C1300000 		.word	.L1024+1
 1905 0fd4 C1300000 		.word	.L1024+1
 1906 0fd8 C1300000 		.word	.L1024+1
 1907 0fdc C1300000 		.word	.L1024+1
 1908 0fe0 C1300000 		.word	.L1024+1
 1909 0fe4 C1300000 		.word	.L1024+1
 1910 0fe8 C1300000 		.word	.L1024+1
 1911 0fec C1300000 		.word	.L1024+1
 1912 0ff0 C1300000 		.word	.L1024+1
 1913 0ff4 C1300000 		.word	.L1024+1
 1914 0ff8 C1300000 		.word	.L1024+1
 1915 0ffc C1300000 		.word	.L1024+1
 1916 1000 C1300000 		.word	.L1024+1
 1917 1004 C1300000 		.word	.L1024+1
 1918 1008 C1300000 		.word	.L1024+1
 1919 100c C1300000 		.word	.L1024+1
 1920 1010 092F0000 		.word	.L332+1
 1921 1014 77180000 		.word	.L333+1
 1922 1018 4B2F0000 		.word	.L188+1
 1923              		.p2align 1
 1924              	.L1704:
 1925 101c 522F     		cmp	r7, #82
 1926 101e 02F08D80 		beq	.L176
 1927 1022 532F     		cmp	r7, #83
 1928 1024 23D0     		beq	.L177
 1929 1026 692F     		cmp	r7, #105
 1930 1028 02F09180 		beq	.L178
 1931 102c 6D2F     		cmp	r7, #109
 1932 102e 34D0     		beq	.L179
 1933 1030 6F2F     		cmp	r7, #111
 1934 1032 02F09480 		beq	.L180
 1935 1036 702F     		cmp	r7, #112
 1936 1038 02F04680 		beq	.L181
 1937 103c 7A2F     		cmp	r7, #122
 1938 103e 02F02C80 		beq	.L182
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 35


 1939 1042 C82F     		cmp	r7, #200
 1940 1044 02F01480 		beq	.L183
 1941 1048 CC2F     		cmp	r7, #204
 1942 104a 02F00780 		beq	.L184
 1943 104e CF2F     		cmp	r7, #207
 1944 1050 01F09D87 		beq	.L185
 1945 1054 B7F5CC7F 		cmp	r7, #408
 1946 1058 01F08487 		beq	.L186
 1947 105c 40F2E733 		movw	r3, #999
 1948 1060 9F42     		cmp	r7, r3
 1949 1062 01F07287 		beq	.L188
 1950 1066 4FF00109 		mov	r9, #1
 1951 106a FEF7F6BF 		b	.L1661
 1952              	.L177:
 1953 106e AA68     		ldr	r2, [r5, #8]
 1954 1070 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1955 1072 43F00103 		orr	r3, r3, #1
 1956 1076 1376     		strb	r3, [r2, #24]
 1957 1078 0020     		movs	r0, #0
 1958 107a 0127     		movs	r7, #1
 1959              	.L189:
 1960 107c 0090     		str	r0, [sp]
 1961 107e 3346     		mov	r3, r6
 1962 1080 3A46     		mov	r2, r7
 1963 1082 2946     		mov	r1, r5
 1964 1084 2046     		mov	r0, r4
 1965 1086 FFF7FEFF 		bl	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer
 1966 108a 8146     		mov	r9, r0
 1967 108c 4846     		mov	r0, r9
 1968 108e 0DF5177D 		add	sp, sp, #604
 1969              		@ sp needed
 1970 1092 BDEC028B 		vldm	sp!, {d8}
 1971 1096 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1972              	.L179:
 1973 109a 2946     		mov	r1, r5
 1974 109c 2046     		mov	r0, r4
 1975 109e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1976 10a2 0028     		cmp	r0, #0
 1977 10a4 3EF4D7AF 		beq	.L1703
 1978 10a8 2046     		mov	r0, r4
 1979 10aa FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 1980 10ae 0028     		cmp	r0, #0
 1981 10b0 3EF4D1AF 		beq	.L1703
 1982              	.L219:
 1983 10b4 5221     		movs	r1, #82
 1984 10b6 2846     		mov	r0, r5
 1985 10b8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1986 10bc 8046     		mov	r8, r0
 1987 10be 0028     		cmp	r0, #0
 1988 10c0 02F08E81 		beq	.L476
 1989 10c4 AA68     		ldr	r2, [r5, #8]
 1990 10c6 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1991 10c8 43F00803 		orr	r3, r3, #8
 1992 10cc 1376     		strb	r3, [r2, #24]
 1993 10ce 2846     		mov	r0, r5
 1994 10d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1995 10d4 B0EE408A 		vmov.f32	s16, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 36


 1996              	.L477:
 1997 10d8 5421     		movs	r1, #84
 1998 10da 2846     		mov	r0, r5
 1999 10dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2000 10e0 0028     		cmp	r0, #0
 2001 10e2 02F0AA83 		beq	.L479
 2002 10e6 2846     		mov	r0, r5
 2003 10e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2004 10ec A96B     		ldr	r1, [r5, #56]
 2005 10ee 0144     		add	r1, r1, r0
 2006 10f0 BC48     		ldr	r0, .L1877
 2007 10f2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 2008 10f6 8046     		mov	r8, r0
 2009              	.L480:
 2010 10f8 B8F1000F 		cmp	r8, #0
 2011 10fc 04F06E81 		beq	.L1706
 2012 1100 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
 2013 1104 33B9     		cbnz	r3, .L482
 2014 1106 B0EE480A 		vmov.f32	s0, s16
 2015 110a 0122     		movs	r2, #1
 2016 110c 4146     		mov	r1, r8
 2017 110e 2046     		mov	r0, r4
 2018 1110 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolfb
 2019              	.L482:
 2020 1114 B34B     		ldr	r3, .L1877
 2021 1116 6D2F     		cmp	r7, #109
 2022 1118 D3F8EC30 		ldr	r3, [r3, #236]
 2023 111c 03F01B85 		beq	.L1707
 2024              	.L483:
 2025 1120 94F81826 		ldrb	r2, [r4, #1560]	@ zero_extendqisi2
 2026 1124 D8F89C10 		ldr	r1, [r8, #156]
 2027 1128 AE48     		ldr	r0, .L1877
 2028 112a 0032     		adds	r2, r2, #0
 2029 112c 18BF     		it	ne
 2030 112e 0122     		movne	r2, #1
 2031 1130 9845     		cmp	r8, r3
 2032 1132 03F07B86 		beq	.L1708
 2033 1136 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 2034              	.L486:
 2035 113a 6D2F     		cmp	r7, #109
 2036 113c 03F03286 		beq	.L487
 2037 1140 0C98     		ldr	r0, [sp, #48]
 2038 1142 0127     		movs	r7, #1
 2039 1144 9AE7     		b	.L189
 2040              	.L206:
 2041 1146 2946     		mov	r1, r5
 2042 1148 2046     		mov	r0, r4
 2043 114a FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2044 114e 0028     		cmp	r0, #0
 2045 1150 3EF481AF 		beq	.L1703
 2046 1154 4FF00008 		mov	r8, #0
 2047 1158 12A9     		add	r1, sp, #72
 2048 115a 54AF     		add	r7, sp, #336
 2049 115c 7923     		movs	r3, #121
 2050 115e 2846     		mov	r0, r5
 2051 1160 CDE91273 		strd	r7, r3, [sp, #72]
 2052 1164 8DF85081 		strb	r8, [sp, #336]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 37


 2053 1168 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2054 116c 4045     		cmp	r0, r8
 2055 116e 14BF     		ite	ne
 2056 1170 3946     		movne	r1, r7
 2057 1172 4146     		moveq	r1, r8
 2058 1174 4346     		mov	r3, r8
 2059 1176 0CAA     		add	r2, sp, #48
 2060 1178 9A48     		ldr	r0, .L1877
 2061 117a FFF7FEFF 		bl	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 2062 117e 0746     		mov	r7, r0
 2063 1180 0C98     		ldr	r0, [sp, #48]
 2064 1182 0028     		cmp	r0, #0
 2065 1184 3FF47AAF 		beq	.L189
 2066 1188 0A21     		movs	r1, #10
 2067 118a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2068 118e 0C98     		ldr	r0, [sp, #48]
 2069 1190 74E7     		b	.L189
 2070              	.L205:
 2071 1192 54AF     		add	r7, sp, #336
 2072 1194 4FF00008 		mov	r8, #0
 2073 1198 7923     		movs	r3, #121
 2074 119a 12A9     		add	r1, sp, #72
 2075 119c 2846     		mov	r0, r5
 2076 119e 8DF85081 		strb	r8, [sp, #336]
 2077 11a2 CDE91273 		strd	r7, r3, [sp, #72]
 2078 11a6 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2079 11aa 0028     		cmp	r0, #0
 2080 11ac 02F03E82 		beq	.L420
 2081 11b0 6368     		ldr	r3, [r4, #4]
 2082 11b2 8D49     		ldr	r1, .L1877+4
 2083 11b4 D3F8DC0B 		ldr	r0, [r3, #3036]
 2084 11b8 3A46     		mov	r2, r7
 2085 11ba 4346     		mov	r3, r8
 2086 11bc FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2087 11c0 0127     		movs	r7, #1
 2088              	.L421:
 2089 11c2 0C98     		ldr	r0, [sp, #48]
 2090 11c4 5AE7     		b	.L189
 2091              	.L204:
 2092 11c6 8949     		ldr	r1, .L1877+8
 2093 11c8 3046     		mov	r0, r6
 2094 11ca FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2095 11ce 0127     		movs	r7, #1
 2096 11d0 0C98     		ldr	r0, [sp, #48]
 2097 11d2 53E7     		b	.L189
 2098              	.L199:
 2099 11d4 2046     		mov	r0, r4
 2100 11d6 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 2101 11da 0028     		cmp	r0, #0
 2102 11dc 03F03580 		beq	.L398
 2103 11e0 0C98     		ldr	r0, [sp, #48]
 2104 11e2 0127     		movs	r7, #1
 2105 11e4 4AE7     		b	.L189
 2106              	.L198:
 2107 11e6 A36C     		ldr	r3, [r4, #72]
 2108 11e8 1868     		ldr	r0, [r3]
 2109 11ea FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 38


 2110 11ee 8368     		ldr	r3, [r0, #8]
 2111 11f0 002B     		cmp	r3, #0
 2112 11f2 02F0D780 		beq	.L388
 2113 11f6 A36C     		ldr	r3, [r4, #72]
 2114 11f8 1B68     		ldr	r3, [r3]
 2115 11fa AB42     		cmp	r3, r5
 2116 11fc 02F0D280 		beq	.L388
 2117 1200 7B49     		ldr	r1, .L1877+12
 2118 1202 3046     		mov	r0, r6
 2119 1204 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2120 1208 0227     		movs	r7, #2
 2121 120a 0C98     		ldr	r0, [sp, #48]
 2122 120c 36E7     		b	.L189
 2123              	.L203:
 2124 120e 54AF     		add	r7, sp, #336
 2125 1210 4FF00008 		mov	r8, #0
 2126 1214 7923     		movs	r3, #121
 2127 1216 12A9     		add	r1, sp, #72
 2128 1218 2846     		mov	r0, r5
 2129 121a 87F80080 		strb	r8, [r7]
 2130 121e CDE91273 		strd	r7, r3, [sp, #72]
 2131 1222 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2132 1226 0028     		cmp	r0, #0
 2133 1228 02F03082 		beq	.L417
 2134 122c 3A46     		mov	r2, r7
 2135 122e CDE90088 		strd	r8, r8, [sp]
 2136 1232 4346     		mov	r3, r8
 2137 1234 6C49     		ldr	r1, .L1877+4
 2138 1236 2846     		mov	r0, r5
 2139 1238 FFF7FEFF 		bl	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm
 2140 123c 3A46     		mov	r2, r7
 2141 123e 0028     		cmp	r0, #0
 2142 1240 03F07583 		beq	.L418
 2143 1244 6B49     		ldr	r1, .L1877+16
 2144 1246 3046     		mov	r0, r6
 2145 1248 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2146 124c 0127     		movs	r7, #1
 2147              	.L419:
 2148 124e 0C98     		ldr	r0, [sp, #48]
 2149 1250 14E7     		b	.L189
 2150              	.L195:
 2151 1252 2946     		mov	r1, r5
 2152 1254 2046     		mov	r0, r4
 2153 1256 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2154 125a 0028     		cmp	r0, #0
 2155 125c 3EF4FBAE 		beq	.L1703
 2156 1260 5321     		movs	r1, #83
 2157 1262 2846     		mov	r0, r5
 2158 1264 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2159 1268 0028     		cmp	r0, #0
 2160 126a 44F04581 		bne	.L1709
 2161 126e 0746     		mov	r7, r0
 2162              	.L366:
 2163 1270 5221     		movs	r1, #82
 2164 1272 2846     		mov	r0, r5
 2165 1274 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2166 1278 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 39


 2167 127a 44F03781 		bne	.L1710
 2168 127e 8146     		mov	r9, r0
 2169              	.L367:
 2170 1280 0DF1480A 		add	r10, sp, #72
 2171 1284 0023     		movs	r3, #0
 2172 1286 5021     		movs	r1, #80
 2173 1288 2846     		mov	r0, r5
 2174 128a 8AF80030 		strb	r3, [r10]
 2175 128e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2176 1292 0DF5A878 		add	r8, sp, #336
 2177 1296 7923     		movs	r3, #121
 2178 1298 0028     		cmp	r0, #0
 2179 129a 03F0D385 		beq	.L368
 2180 129e 4146     		mov	r1, r8
 2181 12a0 2846     		mov	r0, r5
 2182 12a2 C8E900A3 		strd	r10, r3, [r8]
 2183 12a6 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2184              	.L369:
 2185 12aa 022F     		cmp	r7, #2
 2186 12ac 04F08484 		beq	.L1711
 2187 12b0 032F     		cmp	r7, #3
 2188 12b2 04F0C183 		beq	.L1712
 2189 12b6 0CA8     		add	r0, sp, #48
 2190 12b8 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2191 12bc 0746     		mov	r7, r0
 2192 12be 0028     		cmp	r0, #0
 2193 12c0 3EF4C9AE 		beq	.L1703
 2194 12c4 6068     		ldr	r0, [r4, #4]
 2195 12c6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 2196 12ca 0028     		cmp	r0, #0
 2197 12cc 04F02C87 		beq	.L378
 2198 12d0 6068     		ldr	r0, [r4, #4]
 2199 12d2 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 2200 12d6 0128     		cmp	r0, #1
 2201 12d8 04F02687 		beq	.L378
 2202              	.L377:
 2203 12dc E36C     		ldr	r3, [r4, #76]
 2204 12de 1B68     		ldr	r3, [r3]
 2205 12e0 AB42     		cmp	r3, r5
 2206 12e2 05F01480 		beq	.L379
 2207 12e6 636C     		ldr	r3, [r4, #68]
 2208 12e8 1B68     		ldr	r3, [r3]
 2209 12ea AB42     		cmp	r3, r5
 2210 12ec 05F00F80 		beq	.L379
 2211              	.L380:
 2212 12f0 6368     		ldr	r3, [r4, #4]
 2213 12f2 5146     		mov	r1, r10
 2214 12f4 D3F8DC0B 		ldr	r0, [r3, #3036]
 2215 12f8 4246     		mov	r2, r8
 2216 12fa FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 2217 12fe 0028     		cmp	r0, #0
 2218 1300 05F09481 		beq	.L381
 2219 1304 DFF8F4B0 		ldr	fp, .L1877+24
 2220 1308 DFF8F4A0 		ldr	r10, .L1877+28
 2221 130c A946     		mov	r9, r5
 2222 130e 0DE0     		b	.L384
 2223              	.L1714:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 40


 2224 1310 2C25     		movs	r5, #44
 2225 1312 CDE900E5 		strd	lr, r5, [sp]
 2226 1316 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2227              	.L383:
 2228 131a 6368     		ldr	r3, [r4, #4]
 2229 131c 4146     		mov	r1, r8
 2230 131e D3F8DC0B 		ldr	r0, [r3, #3036]
 2231 1322 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 2232 1326 0028     		cmp	r0, #0
 2233 1328 04F0C886 		beq	.L1713
 2234              	.L384:
 2235 132c DDF830C0 		ldr	ip, [sp, #48]
 2236 1330 4FF0220E 		mov	lr, #34
 2237 1334 0DF25113 		addw	r3, sp, #337
 2238 1338 7246     		mov	r2, lr
 2239 133a 5146     		mov	r1, r10
 2240 133c 6046     		mov	r0, ip
 2241 133e 002F     		cmp	r7, #0
 2242 1340 E6D1     		bne	.L1714
 2243 1342 0DF25112 		addw	r2, sp, #337
 2244 1346 5946     		mov	r1, fp
 2245 1348 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2246 134c E5E7     		b	.L383
 2247              	.L194:
 2248 134e 2946     		mov	r1, r5
 2249 1350 2046     		mov	r0, r4
 2250 1352 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2251 1356 0028     		cmp	r0, #0
 2252 1358 3EF47DAE 		beq	.L1703
 2253 135c D4F85C33 		ldr	r3, [r4, #860]
 2254 1360 002B     		cmp	r3, #0
 2255 1362 02F04880 		beq	.L1028
 2256 1366 0027     		movs	r7, #0
 2257 1368 B946     		mov	r9, r7
 2258 136a 04F20F5A 		addw	r10, r4, #1295
 2259 136e 4FF0010B 		mov	fp, #1
 2260 1372 05E0     		b	.L355
 2261              	.L354:
 2262 1374 D4F85C33 		ldr	r3, [r4, #860]
 2263 1378 0137     		adds	r7, r7, #1
 2264 137a BB42     		cmp	r3, r7
 2265 137c 42F23C80 		bls	.L353
 2266              	.L355:
 2267 1380 1AF8011F 		ldrb	r1, [r10, #1]!	@ zero_extendqisi2
 2268 1384 2846     		mov	r0, r5
 2269 1386 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2270 138a 8046     		mov	r8, r0
 2271 138c 0028     		cmp	r0, #0
 2272 138e F1D0     		beq	.L354
 2273 1390 D4F82C35 		ldr	r3, [r4, #1324]
 2274 1394 6068     		ldr	r0, [r4, #4]
 2275 1396 0BFA07F2 		lsl	r2, fp, r7
 2276 139a 23EA0203 		bic	r3, r3, r2
 2277 139e C4F82C35 		str	r3, [r4, #1324]
 2278 13a2 3946     		mov	r1, r7
 2279 13a4 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 2280 13a8 C146     		mov	r9, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 41


 2281 13aa E3E7     		b	.L354
 2282              	.L201:
 2283 13ac 5321     		movs	r1, #83
 2284 13ae 2846     		mov	r0, r5
 2285 13b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2286 13b4 0028     		cmp	r0, #0
 2287 13b6 42F05387 		bne	.L411
 2288 13ba 0C98     		ldr	r0, [sp, #48]
 2289 13bc 0127     		movs	r7, #1
 2290 13be 5DE6     		b	.L189
 2291              	.L200:
 2292 13c0 94F8B630 		ldrb	r3, [r4, #182]	@ zero_extendqisi2
 2293 13c4 002B     		cmp	r3, #0
 2294 13c6 42F04C85 		bne	.L1715
 2295 13ca 064B     		ldr	r3, .L1877
 2296 13cc 1B6A     		ldr	r3, [r3, #32]
 2297 13ce 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2298 13d0 002B     		cmp	r3, #0
 2299 13d2 42F03885 		bne	.L409
 2300 13d6 0849     		ldr	r1, .L1877+20
 2301 13d8 3046     		mov	r0, r6
 2302 13da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2303 13de 0227     		movs	r7, #2
 2304 13e0 0C98     		ldr	r0, [sp, #48]
 2305 13e2 4BE6     		b	.L189
 2306              	.L1878:
 2307              		.align	2
 2308              	.L1877:
 2309 13e4 00000000 		.word	reprap
 2310 13e8 04020000 		.word	.LC43
 2311 13ec 1C040000 		.word	.LC62
 2312 13f0 38020000 		.word	.LC48
 2313 13f4 E8030000 		.word	.LC60
 2314 13f8 80030000 		.word	.LC57
 2315 13fc 2C020000 		.word	.LC46
 2316 1400 20020000 		.word	.LC45
 2317              	.L202:
 2318 1404 BE4B     		ldr	r3, .L1879
 2319 1406 1B6A     		ldr	r3, [r3, #32]
 2320 1408 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2321 140a 002B     		cmp	r3, #0
 2322 140c 02F03681 		beq	.L416
 2323 1410 A36C     		ldr	r3, [r4, #72]
 2324 1412 1868     		ldr	r0, [r3]
 2325 1414 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2326 1418 8146     		mov	r9, r0
 2327 141a 8068     		ldr	r0, [r0, #8]
 2328 141c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2329 1420 8046     		mov	r8, r0
 2330 1422 A068     		ldr	r0, [r4, #8]
 2331 1424 0368     		ldr	r3, [r0]
 2332 1426 9B68     		ldr	r3, [r3, #8]
 2333 1428 9847     		blx	r3
 2334 142a A8EB0008 		sub	r8, r8, r0
 2335 142e D9F80800 		ldr	r0, [r9, #8]
 2336 1432 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2337 1436 4246     		mov	r2, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 42


 2338 1438 0346     		mov	r3, r0
 2339 143a B249     		ldr	r1, .L1879+4
 2340 143c 3046     		mov	r0, r6
 2341 143e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2342 1442 0127     		movs	r7, #1
 2343 1444 0C98     		ldr	r0, [sp, #48]
 2344 1446 19E6     		b	.L189
 2345              	.L197:
 2346 1448 2946     		mov	r1, r5
 2347 144a 2046     		mov	r0, r4
 2348 144c FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2349 1450 0028     		cmp	r0, #0
 2350 1452 3EF400AE 		beq	.L1703
 2351 1456 5021     		movs	r1, #80
 2352 1458 2846     		mov	r0, r5
 2353 145a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2354 145e 0028     		cmp	r0, #0
 2355 1460 43F0DB87 		bne	.L1716
 2356 1464 0146     		mov	r1, r0
 2357              	.L387:
 2358 1466 6368     		ldr	r3, [r4, #4]
 2359 1468 3246     		mov	r2, r6
 2360 146a D3F8DC0B 		ldr	r0, [r3, #3036]
 2361 146e FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjRK9StringRef
 2362 1472 0746     		mov	r7, r0
 2363 1474 0C98     		ldr	r0, [sp, #48]
 2364 1476 01E6     		b	.L189
 2365              	.L193:
 2366 1478 94F8B470 		ldrb	r7, [r4, #180]	@ zero_extendqisi2
 2367 147c 012F     		cmp	r7, #1
 2368 147e 02F05D85 		beq	.L349
 2369 1482 022F     		cmp	r7, #2
 2370 1484 42F05685 		bne	.L1662
 2371 1488 5021     		movs	r1, #80
 2372 148a 2846     		mov	r0, r5
 2373 148c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2374 1490 0028     		cmp	r0, #0
 2375 1492 44F07780 		bne	.L1717
 2376 1496 6068     		ldr	r0, [r4, #4]
 2377 1498 00F63440 		addw	r0, r0, #3124
 2378 149c FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2379 14a0 6068     		ldr	r0, [r4, #4]
 2380 14a2 00F65440 		addw	r0, r0, #3156
 2381 14a6 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2382 14aa 6068     		ldr	r0, [r4, #4]
 2383 14ac 00F67440 		addw	r0, r0, #3188
 2384 14b0 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2385 14b4 6068     		ldr	r0, [r4, #4]
 2386 14b6 00F69440 		addw	r0, r0, #3220
 2387 14ba FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2388 14be 0127     		movs	r7, #1
 2389 14c0 0C98     		ldr	r0, [sp, #48]
 2390 14c2 DBE5     		b	.L189
 2391              	.L196:
 2392 14c4 2946     		mov	r1, r5
 2393 14c6 2046     		mov	r0, r4
 2394 14c8 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 43


 2395 14cc 0028     		cmp	r0, #0
 2396 14ce 3EF4C2AD 		beq	.L1703
 2397 14d2 5021     		movs	r1, #80
 2398 14d4 2846     		mov	r0, r5
 2399 14d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2400 14da 0028     		cmp	r0, #0
 2401 14dc 43F0A387 		bne	.L1718
 2402 14e0 0146     		mov	r1, r0
 2403              	.L386:
 2404 14e2 6368     		ldr	r3, [r4, #4]
 2405 14e4 3246     		mov	r2, r6
 2406 14e6 D3F8DC0B 		ldr	r0, [r3, #3036]
 2407 14ea 0123     		movs	r3, #1
 2408 14ec FFF7FEFF 		bl	_ZN11MassStorage5MountEjRK9StringRefb
 2409 14f0 0746     		mov	r7, r0
 2410 14f2 0C98     		ldr	r0, [sp, #48]
 2411 14f4 C2E5     		b	.L189
 2412              	.L192:
 2413 14f6 5321     		movs	r1, #83
 2414 14f8 2846     		mov	r0, r5
 2415 14fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2416 14fe 0028     		cmp	r0, #0
 2417 1500 42F0F380 		bne	.L346
 2418 1504 0C98     		ldr	r0, [sp, #48]
 2419 1506 0127     		movs	r7, #1
 2420 1508 B8E5     		b	.L189
 2421              	.L330:
 2422 150a 6368     		ldr	r3, [r4, #4]
 2423 150c 7E4A     		ldr	r2, .L1879+8
 2424 150e D3F8DC0B 		ldr	r0, [r3, #3036]
 2425 1512 7E49     		ldr	r1, .L1879+12
 2426 1514 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 2427 1518 0028     		cmp	r0, #0
 2428 151a 42F04780 		bne	.L1000
 2429 151e 7C49     		ldr	r1, .L1879+16
 2430 1520 3046     		mov	r0, r6
 2431 1522 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2432 1526 0227     		movs	r7, #2
 2433 1528 0C98     		ldr	r0, [sp, #48]
 2434 152a A7E5     		b	.L189
 2435              	.L191:
 2436 152c 5321     		movs	r1, #83
 2437 152e 2846     		mov	r0, r5
 2438 1530 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2439 1534 0028     		cmp	r0, #0
 2440 1536 41F0B587 		bne	.L341
 2441 153a 0C98     		ldr	r0, [sp, #48]
 2442 153c 0127     		movs	r7, #1
 2443 153e 9DE5     		b	.L189
 2444              	.L235:
 2445 1540 2946     		mov	r1, r5
 2446 1542 2046     		mov	r0, r4
 2447 1544 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2448 1548 0028     		cmp	r0, #0
 2449 154a 3EF484AD 		beq	.L1703
 2450 154e 2046     		mov	r0, r4
 2451 1550 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 44


 2452 1554 0028     		cmp	r0, #0
 2453 1556 3EF47EAD 		beq	.L1703
 2454 155a 5021     		movs	r1, #80
 2455 155c 2846     		mov	r0, r5
 2456 155e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2457 1562 0246     		mov	r2, r0
 2458 1564 0028     		cmp	r0, #0
 2459 1566 44F07885 		bne	.L1719
 2460 156a BE2F     		cmp	r7, #190
 2461 156c 04F0E683 		beq	.L1016
 2462              	.L1022:
 2463 1570 DFF88CB1 		ldr	fp, .L1879
 2464 1574 DBF81030 		ldr	r3, [fp, #16]
 2465 1578 1344     		add	r3, r3, r2
 2466 157a 93F9DD70 		ldrsb	r7, [r3, #221]
 2467              	.L560:
 2468 157e 002F     		cmp	r7, #0
 2469 1580 84F25885 		bge	.L561
 2470 1584 0C98     		ldr	r0, [sp, #48]
 2471 1586 0127     		movs	r7, #1
 2472 1588 78E5     		b	.L189
 2473              	.L271:
 2474 158a AB68     		ldr	r3, [r5, #8]
 2475 158c 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2476 158e 9806     		lsls	r0, r3, #26
 2477 1590 42F13686 		bpl	.L1720
 2478 1594 0020     		movs	r0, #0
 2479 1596 0127     		movs	r7, #1
 2480 1598 70E5     		b	.L189
 2481              	.L269:
 2482 159a 3246     		mov	r2, r6
 2483 159c 2946     		mov	r1, r5
 2484 159e 2046     		mov	r0, r4
 2485 15a0 FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 2486 15a4 0746     		mov	r7, r0
 2487 15a6 0C98     		ldr	r0, [sp, #48]
 2488 15a8 68E5     		b	.L189
 2489              	.L268:
 2490 15aa 2946     		mov	r1, r5
 2491 15ac 2046     		mov	r0, r4
 2492 15ae FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2493 15b2 0028     		cmp	r0, #0
 2494 15b4 3EF44FAD 		beq	.L1703
 2495 15b8 5321     		movs	r1, #83
 2496 15ba 2846     		mov	r0, r5
 2497 15bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2498 15c0 0028     		cmp	r0, #0
 2499 15c2 03F03B84 		beq	.L1086
 2500 15c6 2846     		mov	r0, r5
 2501 15c8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2502 15cc 0328     		cmp	r0, #3
 2503 15ce 04F29483 		bhi	.L758
 2504 15d2 4301     		lsls	r3, r0, #5
 2505 15d4 03F63443 		addw	r3, r3, #3124
 2506              	.L757:
 2507 15d8 6768     		ldr	r7, [r4, #4]
 2508 15da 5021     		movs	r1, #80
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 45


 2509 15dc 2846     		mov	r0, r5
 2510 15de 1F44     		add	r7, r7, r3
 2511 15e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2512 15e4 B8B3     		cbz	r0, .L759
 2513 15e6 0DF5A878 		add	r8, sp, #336
 2514 15ea 0DF1480A 		add	r10, sp, #72
 2515 15ee 4FF6FF79 		movw	r9, #65535
 2516 15f2 4FF0020C 		mov	ip, #2
 2517 15f6 0023     		movs	r3, #0
 2518 15f8 4146     		mov	r1, r8
 2519 15fa 5246     		mov	r2, r10
 2520 15fc 2846     		mov	r0, r5
 2521 15fe C8E90099 		strd	r9, r9, [r8]
 2522 1602 CAF800C0 		str	ip, [r10]
 2523 1606 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2524 160a D8F80030 		ldr	r3, [r8]
 2525 160e B3F5803F 		cmp	r3, #65536
 2526 1612 DAF80030 		ldr	r3, [r10]
 2527 1616 28BF     		it	cs
 2528 1618 C8F80090 		strcs	r9, [r8]
 2529 161c 012B     		cmp	r3, #1
 2530 161e 04D9     		bls	.L761
 2531 1620 D8F80430 		ldr	r3, [r8, #4]
 2532 1624 B3F5803F 		cmp	r3, #65536
 2533 1628 03D3     		bcc	.L762
 2534              	.L761:
 2535 162a 4FF6FF73 		movw	r3, #65535
 2536 162e C8F80430 		str	r3, [r8, #4]
 2537              	.L762:
 2538 1632 4921     		movs	r1, #73
 2539 1634 2846     		mov	r0, r5
 2540 1636 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2541 163a 0028     		cmp	r0, #0
 2542 163c 44F09784 		bne	.L1721
 2543              	.L763:
 2544 1640 0346     		mov	r3, r0
 2545 1642 B8F80420 		ldrh	r2, [r8, #4]
 2546 1646 B8F80010 		ldrh	r1, [r8]
 2547 164a 3846     		mov	r0, r7
 2548 164c FFF7FEFF 		bl	_ZN7Spindle7SetPinsEttb
 2549 1650 0028     		cmp	r0, #0
 2550 1652 04F08484 		beq	.L1722
 2551              	.L759:
 2552 1656 4621     		movs	r1, #70
 2553 1658 2846     		mov	r0, r5
 2554 165a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2555 165e 0028     		cmp	r0, #0
 2556 1660 44F01183 		bne	.L1723
 2557              	.L765:
 2558 1664 5221     		movs	r1, #82
 2559 1666 2846     		mov	r0, r5
 2560 1668 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2561 166c 0028     		cmp	r0, #0
 2562 166e 44F0FA82 		bne	.L1724
 2563              	.L766:
 2564 1672 5421     		movs	r1, #84
 2565 1674 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 46


 2566 1676 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2567 167a 0028     		cmp	r0, #0
 2568 167c 44F0ED82 		bne	.L1725
 2569              	.L769:
 2570 1680 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 2571 1684 022B     		cmp	r3, #2
 2572 1686 43F02687 		bne	.L770
 2573 168a 0C98     		ldr	r0, [sp, #48]
 2574 168c 0127     		movs	r7, #1
 2575 168e F5E4     		b	.L189
 2576              	.L218:
 2577 1690 0122     		movs	r2, #1
 2578 1692 2946     		mov	r1, r5
 2579 1694 2046     		mov	r0, r4
 2580 1696 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 2581 169a 0746     		mov	r7, r0
 2582 169c 0C98     		ldr	r0, [sp, #48]
 2583 169e EDE4     		b	.L189
 2584              	.L324:
 2585 16a0 174B     		ldr	r3, .L1879
 2586 16a2 D869     		ldr	r0, [r3, #28]
 2587 16a4 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2588 16a6 002B     		cmp	r3, #0
 2589 16a8 01F02D85 		beq	.L958
 2590 16ac 0369     		ldr	r3, [r0, #16]
 2591 16ae 002B     		cmp	r3, #0
 2592 16b0 01F03C85 		beq	.L966
 2593 16b4 FFF7FEFF 		bl	_ZN7Scanner8ShutdownEv
 2594 16b8 0746     		mov	r7, r0
 2595 16ba 0C98     		ldr	r0, [sp, #48]
 2596 16bc DEE4     		b	.L189
 2597              	.L323:
 2598 16be DFF840B0 		ldr	fp, .L1879
 2599 16c2 DBF81C30 		ldr	r3, [fp, #28]
 2600 16c6 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2601 16c8 002A     		cmp	r2, #0
 2602 16ca 01F01C85 		beq	.L958
 2603 16ce 1B69     		ldr	r3, [r3, #16]
 2604 16d0 002B     		cmp	r3, #0
 2605 16d2 01F02B85 		beq	.L966
 2606 16d6 5021     		movs	r1, #80
 2607 16d8 2846     		mov	r0, r5
 2608 16da FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2609 16de 30B1     		cbz	r0, .L968
 2610 16e0 2846     		mov	r0, r5
 2611 16e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2612 16e6 0028     		cmp	r0, #0
 2613 16e8 D4BF     		ite	le
 2614 16ea 0020     		movle	r0, #0
 2615 16ec 0120     		movgt	r0, #1
 2616              	.L968:
 2617 16ee 0146     		mov	r1, r0
 2618 16f0 DBF81C00 		ldr	r0, [fp, #28]
 2619 16f4 FFF7FEFF 		bl	_ZN7Scanner12SetAlignmentEb
 2620 16f8 0746     		mov	r7, r0
 2621 16fa 0C98     		ldr	r0, [sp, #48]
 2622 16fc BEE4     		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 47


 2623              	.L1880:
 2624 16fe 00BF     		.align	2
 2625              	.L1879:
 2626 1700 00000000 		.word	reprap
 2627 1704 B8030000 		.word	.LC58
 2628 1708 AC120000 		.word	.LC189
 2629 170c 3C000000 		.word	.LC19
 2630 1710 B8120000 		.word	.LC190
 2631              	.L322:
 2632 1714 DFF834B3 		ldr	fp, .L1881+20
 2633 1718 DBF81C30 		ldr	r3, [fp, #28]
 2634 171c 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2635 171e 002A     		cmp	r2, #0
 2636 1720 01F0F184 		beq	.L958
 2637 1724 1B69     		ldr	r3, [r3, #16]
 2638 1726 002B     		cmp	r3, #0
 2639 1728 01F00085 		beq	.L966
 2640 172c 4E21     		movs	r1, #78
 2641 172e 2846     		mov	r0, r5
 2642 1730 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2643 1734 0028     		cmp	r0, #0
 2644 1736 43F08287 		bne	.L1726
 2645 173a 0146     		mov	r1, r0
 2646              	.L967:
 2647 173c DBF81C00 		ldr	r0, [fp, #28]
 2648 1740 FFF7FEFF 		bl	_ZN7Scanner9CalibrateEi
 2649 1744 0746     		mov	r7, r0
 2650 1746 0C98     		ldr	r0, [sp, #48]
 2651 1748 98E4     		b	.L189
 2652              	.L287:
 2653 174a 5321     		movs	r1, #83
 2654 174c 2846     		mov	r0, r5
 2655 174e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2656 1752 0028     		cmp	r0, #0
 2657 1754 42F01B87 		bne	.L1727
 2658 1758 4821     		movs	r1, #72
 2659 175a 2846     		mov	r0, r5
 2660 175c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2661 1760 0028     		cmp	r0, #0
 2662 1762 42F08D85 		bne	.L822
 2663 1766 B448     		ldr	r0, .L1881
 2664 1768 94F82575 		ldrb	r7, [r4, #1317]	@ zero_extendqisi2
 2665 176c 94F82425 		ldrb	r2, [r4, #1316]	@ zero_extendqisi2
 2666 1770 B24B     		ldr	r3, .L1881+4
 2667 1772 B349     		ldr	r1, .L1881+8
 2668 1774 002A     		cmp	r2, #0
 2669 1776 0CBF     		ite	eq
 2670 1778 1A46     		moveq	r2, r3
 2671 177a 0246     		movne	r2, r0
 2672 177c 002F     		cmp	r7, #0
 2673 177e 18BF     		it	ne
 2674 1780 0346     		movne	r3, r0
 2675 1782 3046     		mov	r0, r6
 2676 1784 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2677 1788 0127     		movs	r7, #1
 2678 178a 0C98     		ldr	r0, [sp, #48]
 2679 178c 76E4     		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 48


 2680              	.L207:
 2681 178e 0DF5A878 		add	r8, sp, #336
 2682 1792 0020     		movs	r0, #0
 2683 1794 0DF1480A 		add	r10, sp, #72
 2684 1798 7927     		movs	r7, #121
 2685 179a 8DF84000 		strb	r0, [sp, #64]
 2686 179e 88F80000 		strb	r0, [r8]
 2687 17a2 10AB     		add	r3, sp, #64
 2688 17a4 5246     		mov	r2, r10
 2689 17a6 5021     		movs	r1, #80
 2690 17a8 2846     		mov	r0, r5
 2691 17aa CAE90087 		strd	r8, r7, [r10]
 2692 17ae FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 2693 17b2 9DF84070 		ldrb	r7, [sp, #64]	@ zero_extendqisi2
 2694 17b6 002F     		cmp	r7, #0
 2695 17b8 01F06F87 		beq	.L424
 2696 17bc 4621     		movs	r1, #70
 2697 17be 2846     		mov	r0, r5
 2698 17c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2699 17c4 38B1     		cbz	r0, .L425
 2700 17c6 2846     		mov	r0, r5
 2701 17c8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2702 17cc A0F10107 		sub	r7, r0, #1
 2703 17d0 B7FA87F7 		clz	r7, r7
 2704 17d4 7F09     		lsrs	r7, r7, #5
 2705              	.L425:
 2706 17d6 7920     		movs	r0, #121
 2707 17d8 0097     		str	r7, [sp]
 2708 17da 5346     		mov	r3, r10
 2709 17dc CAF80400 		str	r0, [r10, #4]
 2710 17e0 3246     		mov	r2, r6
 2711 17e2 CAF80080 		str	r8, [r10]
 2712 17e6 2946     		mov	r1, r5
 2713 17e8 2046     		mov	r0, r4
 2714 17ea FFF7FEFF 		bl	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
 2715 17ee 0746     		mov	r7, r0
 2716              	.L426:
 2717 17f0 0C98     		ldr	r0, [sp, #48]
 2718 17f2 43E4     		b	.L189
 2719              	.L316:
 2720 17f4 3246     		mov	r2, r6
 2721 17f6 2946     		mov	r1, r5
 2722 17f8 2046     		mov	r0, r4
 2723 17fa FFF7FEFF 		bl	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 2724 17fe 0746     		mov	r7, r0
 2725 1800 0C98     		ldr	r0, [sp, #48]
 2726 1802 3BE4     		b	.L189
 2727              	.L255:
 2728 1804 3246     		mov	r2, r6
 2729 1806 2946     		mov	r1, r5
 2730 1808 2046     		mov	r0, r4
 2731 180a FFF7FEFF 		bl	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
 2732 180e 0746     		mov	r7, r0
 2733 1810 0C98     		ldr	r0, [sp, #48]
 2734 1812 33E4     		b	.L189
 2735              	.L220:
 2736 1814 0DF1400B 		add	fp, sp, #64
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 49


 2737 1818 0DF5A878 		add	r8, sp, #336
 2738 181c 5B46     		mov	r3, fp
 2739 181e 0027     		movs	r7, #0
 2740 1820 4246     		mov	r2, r8
 2741 1822 5021     		movs	r1, #80
 2742 1824 2846     		mov	r0, r5
 2743 1826 8BF80070 		strb	r7, [fp]
 2744 182a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2745 182e 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 2746 1832 002B     		cmp	r3, #0
 2747 1834 42F00382 		bne	.L1728
 2748 1838 0127     		movs	r7, #1
 2749              	.L470:
 2750 183a 5321     		movs	r1, #83
 2751 183c 2846     		mov	r0, r5
 2752 183e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2753 1842 0028     		cmp	r0, #0
 2754 1844 43F05E86 		bne	.L1729
 2755              	.L472:
 2756 1848 5221     		movs	r1, #82
 2757 184a 2846     		mov	r0, r5
 2758 184c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2759 1850 78B1     		cbz	r0, .L474
 2760 1852 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 2761 1856 002B     		cmp	r3, #0
 2762 1858 02F0AE87 		beq	.L475
 2763 185c D8F80010 		ldr	r1, [r8]
 2764 1860 6068     		ldr	r0, [r4, #4]
 2765 1862 01F5A673 		add	r3, r1, #332
 2766 1866 04EB8303 		add	r3, r4, r3, lsl #2
 2767 186a 93ED000A 		vldr.32	s0, [r3]
 2768 186e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 2769              	.L474:
 2770 1872 0C98     		ldr	r0, [sp, #48]
 2771 1874 02E4     		b	.L189
 2772              	.L333:
 2773 1876 5021     		movs	r1, #80
 2774 1878 2846     		mov	r0, r5
 2775 187a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2776 187e 0028     		cmp	r0, #0
 2777 1880 42F0AF80 		bne	.L1002
 2778 1884 0C98     		ldr	r0, [sp, #48]
 2779 1886 0127     		movs	r7, #1
 2780 1888 FFF7F8BB 		b	.L189
 2781              	.L222:
 2782 188c 94F84507 		ldrb	r0, [r4, #1861]	@ zero_extendqisi2
 2783 1890 0127     		movs	r7, #1
 2784 1892 0028     		cmp	r0, #0
 2785 1894 3FF4F2AB 		beq	.L189
 2786 1898 84F84677 		strb	r7, [r4, #1862]
 2787 189c 0020     		movs	r0, #0
 2788 189e FFF7EDBB 		b	.L189
 2789              	.L221:
 2790 18a2 04F25453 		addw	r3, r4, #1364
 2791 18a6 0022     		movs	r2, #0
 2792 18a8 2046     		mov	r0, r4
 2793 18aa 1A60     		str	r2, [r3]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 50


 2794 18ac FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 2795 18b0 0127     		movs	r7, #1
 2796 18b2 0C98     		ldr	r0, [sp, #48]
 2797 18b4 FFF7E2BB 		b	.L189
 2798              	.L228:
 2799 18b8 6249     		ldr	r1, .L1881+12
 2800 18ba 3046     		mov	r0, r6
 2801 18bc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2802 18c0 D4F85C33 		ldr	r3, [r4, #860]
 2803 18c4 CBB1     		cbz	r3, .L526
 2804 18c6 DFF888A1 		ldr	r10, .L1881+24
 2805 18ca 04F20F58 		addw	r8, r4, #1295
 2806 18ce 0027     		movs	r7, #0
 2807              	.L527:
 2808 18d0 3946     		mov	r1, r7
 2809 18d2 6068     		ldr	r0, [r4, #4]
 2810 18d4 18F8019F 		ldrb	r9, [r8, #1]!	@ zero_extendqisi2
 2811 18d8 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 2812 18dc 0146     		mov	r1, r0
 2813 18de 2046     		mov	r0, r4
 2814 18e0 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2815 18e4 4A46     		mov	r2, r9
 2816 18e6 0346     		mov	r3, r0
 2817 18e8 5146     		mov	r1, r10
 2818 18ea 3046     		mov	r0, r6
 2819 18ec FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2820 18f0 D4F85C33 		ldr	r3, [r4, #860]
 2821 18f4 0137     		adds	r7, r7, #1
 2822 18f6 BB42     		cmp	r3, r7
 2823 18f8 EAD8     		bhi	.L527
 2824              	.L526:
 2825 18fa 6068     		ldr	r0, [r4, #4]
 2826 18fc FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2827 1900 0146     		mov	r1, r0
 2828 1902 2046     		mov	r0, r4
 2829 1904 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2830 1908 4F49     		ldr	r1, .L1881+16
 2831 190a 0246     		mov	r2, r0
 2832 190c 3046     		mov	r0, r6
 2833 190e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2834 1912 0127     		movs	r7, #1
 2835 1914 0C98     		ldr	r0, [sp, #48]
 2836 1916 FFF7B1BB 		b	.L189
 2837              	.L227:
 2838 191a 5021     		movs	r1, #80
 2839 191c 2846     		mov	r0, r5
 2840 191e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2841 1922 0028     		cmp	r0, #0
 2842 1924 01F0D783 		beq	.L1053
 2843 1928 2846     		mov	r0, r5
 2844 192a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2845 192e 0428     		cmp	r0, #4
 2846 1930 04F2C181 		bhi	.L518
 2847 1934 DFE810F0 		tbh	[pc, r0, lsl #1]
 2848              	.L520:
 2849 1938 CF0B     		.2byte	(.L1053-.L520)/2
 2850 193a E50B     		.2byte	(.L521-.L520)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 51


 2851 193c DE0B     		.2byte	(.L1054-.L520)/2
 2852 193e E30B     		.2byte	(.L522-.L520)/2
 2853 1940 E10B     		.2byte	(.L523-.L520)/2
 2854              		.p2align 1
 2855              	.L226:
 2856 1942 54AF     		add	r7, sp, #336
 2857 1944 0022     		movs	r2, #0
 2858 1946 7923     		movs	r3, #121
 2859 1948 12A9     		add	r1, sp, #72
 2860 194a 2846     		mov	r0, r5
 2861 194c CDE91273 		strd	r7, r3, [sp, #72]
 2862 1950 8DF85021 		strb	r2, [sp, #336]
 2863 1954 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2864 1958 3946     		mov	r1, r7
 2865 195a 3C48     		ldr	r0, .L1881+20
 2866 195c FFF7FEFF 		bl	_ZN6RepRap10SetMessageEPKc
 2867 1960 0127     		movs	r7, #1
 2868 1962 0C98     		ldr	r0, [sp, #48]
 2869 1964 FFF78ABB 		b	.L189
 2870              	.L251:
 2871 1968 2046     		mov	r0, r4
 2872 196a 3346     		mov	r3, r6
 2873 196c 0122     		movs	r2, #1
 2874 196e 2946     		mov	r1, r5
 2875 1970 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 2876 1974 0127     		movs	r7, #1
 2877 1976 0C98     		ldr	r0, [sp, #48]
 2878 1978 FFF780BB 		b	.L189
 2879              	.L250:
 2880 197c 5021     		movs	r1, #80
 2881 197e 2846     		mov	r0, r5
 2882 1980 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2883 1984 0028     		cmp	r0, #0
 2884 1986 42F03C80 		bne	.L1730
 2885 198a 4FF47A77 		mov	r7, #1000
 2886              	.L697:
 2887 198e 5321     		movs	r1, #83
 2888 1990 2846     		mov	r0, r5
 2889 1992 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2890 1996 0028     		cmp	r0, #0
 2891 1998 42F02D80 		bne	.L1731
 2892 199c 41F2F811 		movw	r1, #4600
 2893              	.L698:
 2894 19a0 3A46     		mov	r2, r7
 2895 19a2 2A48     		ldr	r0, .L1881+20
 2896 19a4 FFF7FEFF 		bl	_ZN6RepRap4BeepEjj
 2897 19a8 0127     		movs	r7, #1
 2898 19aa 0C98     		ldr	r0, [sp, #48]
 2899 19ac FFF766BB 		b	.L189
 2900              	.L249:
 2901 19b0 2648     		ldr	r0, .L1881+20
 2902 19b2 FFF7FEFF 		bl	_ZN6RepRap10ClearAlertEv
 2903 19b6 5021     		movs	r1, #80
 2904 19b8 2846     		mov	r0, r5
 2905 19ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2906 19be 8046     		mov	r8, r0
 2907 19c0 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 52


 2908 19c2 42F00380 		bne	.L1732
 2909              	.L694:
 2910 19c6 04F11807 		add	r7, r4, #24
 2911 19ca 04F13C09 		add	r9, r4, #60
 2912              	.L696:
 2913 19ce 57F8043F 		ldr	r3, [r7, #4]!
 2914 19d2 4146     		mov	r1, r8
 2915 19d4 1846     		mov	r0, r3
 2916 19d6 0BB1     		cbz	r3, .L695
 2917 19d8 FFF7FEFF 		bl	_ZN11GCodeBuffer19MessageAcknowledgedEb
 2918              	.L695:
 2919 19dc B945     		cmp	r9, r7
 2920 19de F6D1     		bne	.L696
 2921 19e0 0C98     		ldr	r0, [sp, #48]
 2922 19e2 0127     		movs	r7, #1
 2923 19e4 FFF74ABB 		b	.L189
 2924              	.L248:
 2925 19e8 0DF5A878 		add	r8, sp, #336
 2926 19ec 0DF1480A 		add	r10, sp, #72
 2927 19f0 0027     		movs	r7, #0
 2928 19f2 0EAB     		add	r3, sp, #56
 2929 19f4 4246     		mov	r2, r8
 2930 19f6 40F20119 		movw	r9, #257
 2931 19fa 5221     		movs	r1, #82
 2932 19fc 0DF1400B 		add	fp, sp, #64
 2933 1a00 2846     		mov	r0, r5
 2934 1a02 8AF80070 		strb	r7, [r10]
 2935 1a06 8DF83870 		strb	r7, [sp, #56]
 2936 1a0a C8E900A9 		strd	r10, r9, [r8]
 2937 1a0e FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2938 1a12 0EAB     		add	r3, sp, #56
 2939 1a14 5A46     		mov	r2, fp
 2940 1a16 5021     		movs	r1, #80
 2941 1a18 2846     		mov	r0, r5
 2942 1a1a 88F80070 		strb	r7, [r8]
 2943 1a1e CBE90089 		strd	r8, r9, [fp]
 2944 1a22 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2945 1a26 9DF83830 		ldrb	r3, [sp, #56]	@ zero_extendqisi2
 2946 1a2a 002B     		cmp	r3, #0
 2947 1a2c 42F06081 		bne	.L1733
 2948              	.L680:
 2949 1a30 0C98     		ldr	r0, [sp, #48]
 2950 1a32 0127     		movs	r7, #1
 2951 1a34 FFF722BB 		b	.L189
 2952              	.L1882:
 2953              		.align	2
 2954              	.L1881:
 2955 1a38 58000000 		.word	.LC22
 2956 1a3c 2C000000 		.word	.LC17
 2957 1a40 EC0D0000 		.word	.LC151
 2958 1a44 C8060000 		.word	.LC86
 2959 1a48 D4060000 		.word	.LC87
 2960 1a4c 00000000 		.word	reprap
 2961 1a50 E0060000 		.word	.LC88
 2962              	.L247:
 2963 1a54 5321     		movs	r1, #83
 2964 1a56 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 53


 2965 1a58 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2966 1a5c 30B9     		cbnz	r0, .L670
 2967 1a5e 5A21     		movs	r1, #90
 2968 1a60 2846     		mov	r0, r5
 2969 1a62 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2970 1a66 0028     		cmp	r0, #0
 2971 1a68 03F09083 		beq	.L1734
 2972              	.L670:
 2973 1a6c 2846     		mov	r0, r5
 2974 1a6e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2975 1a72 2946     		mov	r1, r5
 2976 1a74 2046     		mov	r0, r4
 2977 1a76 B0EE408A 		vmov.f32	s16, s0
 2978 1a7a FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 2979 1a7e 0028     		cmp	r0, #0
 2980 1a80 3EF4E9AA 		beq	.L1703
 2981 1a84 5221     		movs	r1, #82
 2982 1a86 2846     		mov	r0, r5
 2983 1a88 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2984 1a8c 0028     		cmp	r0, #0
 2985 1a8e 43F09B87 		bne	.L671
 2986              	.L674:
 2987 1a92 B4EE488A 		vcmp.f32	s16, s16
 2988 1a96 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2989 1a9a 09D6     		bvs	.L672
 2990 1a9c F7EE007A 		vmov.f32	s15, #1.0e+0
 2991 1aa0 B4EEE78A 		vcmpe.f32	s16, s15
 2992 1aa4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2993 1aa8 03F19E87 		bmi	.L1735
 2994 1aac B0EE678A 		vmov.f32	s16, s15
 2995              	.L672:
 2996 1ab0 04F5B563 		add	r3, r4, #1448
 2997 1ab4 D3ED007A 		vldr.32	s15, [r3]
 2998 1ab8 77EE887A 		vadd.f32	s15, s15, s16
 2999 1abc C3ED007A 		vstr.32	s15, [r3]
 3000              	.L675:
 3001 1ac0 C34F     		ldr	r7, .L1883
 3002 1ac2 B0EE480A 		vmov.f32	s0, s16
 3003 1ac6 F868     		ldr	r0, [r7, #12]
 3004 1ac8 FFF7FEFF 		bl	_ZN4Move16PushBabySteppingEf
 3005 1acc 94ED497A 		vldr.32	s14, [r4, #292]
 3006 1ad0 D4ED3D7A 		vldr.32	s15, [r4, #244]
 3007 1ad4 37EE007A 		vadd.f32	s14, s14, s0
 3008 1ad8 77EE887A 		vadd.f32	s15, s15, s16
 3009 1adc B4EE408A 		vcmp.f32	s16, s0
 3010 1ae0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3011 1ae4 84ED497A 		vstr.32	s14, [r4, #292]
 3012 1ae8 C4ED3D7A 		vstr.32	s15, [r4, #244]
 3013 1aec 08D0     		beq	.L679
 3014 1aee D4F86031 		ldr	r3, [r4, #352]
 3015 1af2 2BB9     		cbnz	r3, .L679
 3016 1af4 FB68     		ldr	r3, [r7, #12]
 3017 1af6 DA68     		ldr	r2, [r3, #12]
 3018 1af8 9968     		ldr	r1, [r3, #8]
 3019 1afa 8A42     		cmp	r2, r1
 3020 1afc 04F0B785 		beq	.L1736
 3021              	.L679:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 54


 3022 1b00 0C98     		ldr	r0, [sp, #48]
 3023 1b02 0127     		movs	r7, #1
 3024 1b04 FFF7BABA 		b	.L189
 3025              	.L295:
 3026 1b08 5321     		movs	r1, #83
 3027 1b0a 2846     		mov	r0, r5
 3028 1b0c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3029 1b10 0028     		cmp	r0, #0
 3030 1b12 42F06E83 		bne	.L1737
 3031 1b16 0123     		movs	r3, #1
 3032 1b18 0793     		str	r3, [sp, #28]
 3033              	.L878:
 3034 1b1a D4F85C33 		ldr	r3, [r4, #860]
 3035 1b1e 002B     		cmp	r3, #0
 3036 1b20 02F01883 		beq	.L884
 3037 1b24 AB4F     		ldr	r7, .L1883+4
 3038 1b26 04F20F58 		addw	r8, r4, #1295
 3039 1b2a 3F1B     		subs	r7, r7, r4
 3040 1b2c 4FF0000B 		mov	fp, #0
 3041 1b30 06E0     		b	.L883
 3042              	.L882:
 3043 1b32 D4F85C23 		ldr	r2, [r4, #860]
 3044 1b36 08EB0703 		add	r3, r8, r7
 3045 1b3a 9A42     		cmp	r2, r3
 3046 1b3c 41F2C383 		bls	.L1738
 3047              	.L883:
 3048 1b40 08EB070A 		add	r10, r8, r7
 3049 1b44 2846     		mov	r0, r5
 3050 1b46 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 3051 1b4a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3052 1b4e 8146     		mov	r9, r0
 3053 1b50 0028     		cmp	r0, #0
 3054 1b52 EED0     		beq	.L882
 3055 1b54 2846     		mov	r0, r5
 3056 1b56 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3057 1b5a 0328     		cmp	r0, #3
 3058 1b5c E9D8     		bhi	.L882
 3059 1b5e 0246     		mov	r2, r0
 3060 1b60 5146     		mov	r1, r10
 3061 1b62 079B     		ldr	r3, [sp, #28]
 3062 1b64 6068     		ldr	r0, [r4, #4]
 3063 1b66 FFF7FEFF 		bl	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3064 1b6a CB46     		mov	fp, r9
 3065 1b6c E1E7     		b	.L882
 3066              	.L291:
 3067 1b6e 5321     		movs	r1, #83
 3068 1b70 2846     		mov	r0, r5
 3069 1b72 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3070 1b76 0746     		mov	r7, r0
 3071 1b78 0028     		cmp	r0, #0
 3072 1b7a 42F0E384 		bne	.L1739
 3073 1b7e 4821     		movs	r1, #72
 3074 1b80 2846     		mov	r0, r5
 3075 1b82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3076 1b86 0028     		cmp	r0, #0
 3077 1b88 42F0D982 		bne	.L853
 3078 1b8c D4F83837 		ldr	r3, [r4, #1848]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 55


 3079 1b90 914A     		ldr	r2, .L1883+8
 3080 1b92 9249     		ldr	r1, .L1883+12
 3081 1b94 A2FB0332 		umull	r3, r2, r2, r3
 3082 1b98 920B     		lsrs	r2, r2, #14
 3083 1b9a 3046     		mov	r0, r6
 3084 1b9c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3085 1ba0 0127     		movs	r7, #1
 3086 1ba2 0C98     		ldr	r0, [sp, #48]
 3087 1ba4 FFF76ABA 		b	.L189
 3088              	.L290:
 3089 1ba8 3246     		mov	r2, r6
 3090 1baa 2946     		mov	r1, r5
 3091 1bac 2046     		mov	r0, r4
 3092 1bae FFF7FEFF 		bl	_ZN6GCodes15ConfigureDriverER11GCodeBufferRK9StringRef
 3093 1bb2 0746     		mov	r7, r0
 3094 1bb4 0C98     		ldr	r0, [sp, #48]
 3095 1bb6 FFF761BA 		b	.L189
 3096              	.L289:
 3097 1bba 8949     		ldr	r1, .L1883+16
 3098 1bbc 3046     		mov	r0, r6
 3099 1bbe FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3100 1bc2 0127     		movs	r7, #1
 3101 1bc4 0C98     		ldr	r0, [sp, #48]
 3102 1bc6 FFF759BA 		b	.L189
 3103              	.L288:
 3104 1bca 5021     		movs	r1, #80
 3105 1bcc 2846     		mov	r0, r5
 3106 1bce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3107 1bd2 0028     		cmp	r0, #0
 3108 1bd4 42F07D84 		bne	.L845
 3109 1bd8 0C98     		ldr	r0, [sp, #48]
 3110 1bda 0127     		movs	r7, #1
 3111 1bdc FFF74EBA 		b	.L189
 3112              	.L293:
 3113 1be0 5321     		movs	r1, #83
 3114 1be2 2846     		mov	r0, r5
 3115 1be4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3116 1be8 0746     		mov	r7, r0
 3117 1bea 0028     		cmp	r0, #0
 3118 1bec 01F08685 		beq	.L866
 3119 1bf0 2846     		mov	r0, r5
 3120 1bf2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3121 1bf6 4421     		movs	r1, #68
 3122 1bf8 2846     		mov	r0, r5
 3123 1bfa B0EE408A 		vmov.f32	s16, s0
 3124 1bfe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3125 1c02 0028     		cmp	r0, #0
 3126 1c04 43F0A381 		bne	.L867
 3127 1c08 0C98     		ldr	r0, [sp, #48]
 3128 1c0a 0127     		movs	r7, #1
 3129 1c0c FFF736BA 		b	.L189
 3130              	.L294:
 3131 1c10 5021     		movs	r1, #80
 3132 1c12 2846     		mov	r0, r5
 3133 1c14 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3134 1c18 0028     		cmp	r0, #0
 3135 1c1a 42F08884 		bne	.L876
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 56


 3136 1c1e 0C98     		ldr	r0, [sp, #48]
 3137 1c20 0127     		movs	r7, #1
 3138 1c22 FFF72BBA 		b	.L189
 3139              	.L292:
 3140 1c26 5021     		movs	r1, #80
 3141 1c28 2846     		mov	r0, r5
 3142 1c2a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3143 1c2e 0746     		mov	r7, r0
 3144 1c30 C8B1     		cbz	r0, .L858
 3145 1c32 2846     		mov	r0, r5
 3146 1c34 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3147 1c38 4921     		movs	r1, #73
 3148 1c3a 8046     		mov	r8, r0
 3149 1c3c 2846     		mov	r0, r5
 3150 1c3e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3151 1c42 30B1     		cbz	r0, .L859
 3152 1c44 2846     		mov	r0, r5
 3153 1c46 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3154 1c4a 0028     		cmp	r0, #0
 3155 1c4c D4BF     		ite	le
 3156 1c4e 0020     		movle	r0, #0
 3157 1c50 0120     		movgt	r0, #1
 3158              	.L859:
 3159 1c52 0246     		mov	r2, r0
 3160 1c54 1FFA88F1 		uxth	r1, r8
 3161 1c58 6068     		ldr	r0, [r4, #4]
 3162 1c5a FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
 3163 1c5e 0746     		mov	r7, r0
 3164 1c60 0028     		cmp	r0, #0
 3165 1c62 03F04381 		beq	.L1740
 3166              	.L858:
 3167 1c66 4621     		movs	r1, #70
 3168 1c68 2846     		mov	r0, r5
 3169 1c6a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3170 1c6e 40B1     		cbz	r0, .L860
 3171 1c70 D4F80480 		ldr	r8, [r4, #4]
 3172 1c74 2846     		mov	r0, r5
 3173 1c76 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3174 1c7a 08F6B840 		addw	r0, r8, #3256
 3175 1c7e FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
 3176              	.L860:
 3177 1c82 5321     		movs	r1, #83
 3178 1c84 2846     		mov	r0, r5
 3179 1c86 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3180 1c8a 0028     		cmp	r0, #0
 3181 1c8c 42F0CF84 		bne	.L1741
 3182 1c90 002F     		cmp	r7, #0
 3183 1c92 02F09F84 		beq	.L864
 3184 1c96 0C98     		ldr	r0, [sp, #48]
 3185 1c98 0127     		movs	r7, #1
 3186 1c9a FFF7EFB9 		b	.L189
 3187              	.L299:
 3188 1c9e 3B46     		mov	r3, r7
 3189 1ca0 3246     		mov	r2, r6
 3190 1ca2 2946     		mov	r1, r5
 3191 1ca4 2046     		mov	r0, r4
 3192 1ca6 FFF7FEFF 		bl	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 57


 3193 1caa 0746     		mov	r7, r0
 3194 1cac 0C98     		ldr	r0, [sp, #48]
 3195 1cae FFF7E5B9 		b	.L189
 3196              	.L298:
 3197 1cb2 0DF5A878 		add	r8, sp, #336
 3198 1cb6 D4F86033 		ldr	r3, [r4, #864]
 3199 1cba 0022     		movs	r2, #0
 3200 1cbc 88F80020 		strb	r2, [r8]
 3201 1cc0 002B     		cmp	r3, #0
 3202 1cc2 02F0AA83 		beq	.L914
 3203 1cc6 04F20F57 		addw	r7, r4, #1295
 3204 1cca 04F55A79 		add	r9, r4, #872
 3205              	.L913:
 3206 1cce 4A46     		mov	r2, r9
 3207 1cd0 4346     		mov	r3, r8
 3208 1cd2 7978     		ldrb	r1, [r7, #1]	@ zero_extendqisi2
 3209 1cd4 2846     		mov	r0, r5
 3210 1cd6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3211 1cda A7F20E53 		subw	r3, r7, #1294
 3212 1cde D4F86023 		ldr	r2, [r4, #864]
 3213 1ce2 1B1B     		subs	r3, r3, r4
 3214 1ce4 9A42     		cmp	r2, r3
 3215 1ce6 07F10107 		add	r7, r7, #1
 3216 1cea 09F10409 		add	r9, r9, #4
 3217 1cee EED8     		bhi	.L913
 3218 1cf0 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 3219 1cf4 002B     		cmp	r3, #0
 3220 1cf6 02F09083 		beq	.L914
 3221              	.L911:
 3222 1cfa 0C98     		ldr	r0, [sp, #48]
 3223 1cfc 0127     		movs	r7, #1
 3224 1cfe FFF7BDB9 		b	.L189
 3225              	.L216:
 3226 1d02 2046     		mov	r0, r4
 3227 1d04 2946     		mov	r1, r5
 3228 1d06 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 3229 1d0a 0127     		movs	r7, #1
 3230 1d0c 0C98     		ldr	r0, [sp, #48]
 3231 1d0e FFF7B5B9 		b	.L189
 3232              	.L215:
 3233 1d12 5021     		movs	r1, #80
 3234 1d14 2846     		mov	r0, r5
 3235 1d16 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3236 1d1a 0028     		cmp	r0, #0
 3237 1d1c 42F0C081 		bne	.L469
 3238 1d20 0C98     		ldr	r0, [sp, #48]
 3239 1d22 0127     		movs	r7, #1
 3240 1d24 FFF7AAB9 		b	.L189
 3241              	.L214:
 3242 1d28 D4F85C33 		ldr	r3, [r4, #860]
 3243 1d2c 002B     		cmp	r3, #0
 3244 1d2e 02F09C84 		beq	.L450
 3245 1d32 0027     		movs	r7, #0
 3246 1d34 BA46     		mov	r10, r7
 3247 1d36 04F21958 		addw	r8, r4, #1305
 3248 1d3a B7EE008A 		vmov.f32	s16, #1.0e+0
 3249 1d3e B146     		mov	r9, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 58


 3250 1d40 05E0     		b	.L454
 3251              	.L451:
 3252 1d42 D4F85C33 		ldr	r3, [r4, #860]
 3253 1d46 0137     		adds	r7, r7, #1
 3254 1d48 BB42     		cmp	r3, r7
 3255 1d4a 41F2F382 		bls	.L1742
 3256              	.L454:
 3257 1d4e 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 3258 1d52 2846     		mov	r0, r5
 3259 1d54 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3260 1d58 0028     		cmp	r0, #0
 3261 1d5a F2D0     		beq	.L451
 3262 1d5c 2946     		mov	r1, r5
 3263 1d5e 2046     		mov	r0, r4
 3264 1d60 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3265 1d64 8246     		mov	r10, r0
 3266 1d66 0028     		cmp	r0, #0
 3267 1d68 3EF475A9 		beq	.L1703
 3268 1d6c 2846     		mov	r0, r5
 3269 1d6e 6668     		ldr	r6, [r4, #4]
 3270 1d70 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3271 1d74 B4EE400A 		vcmp.f32	s0, s0
 3272 1d78 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3273 1d7c 06D6     		bvs	.L452
 3274 1d7e B4EEC80A 		vcmpe.f32	s0, s16
 3275 1d82 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3276 1d86 D8BF     		it	le
 3277 1d88 B0EE480A 		vmovle.f32	s0, s16
 3278              	.L452:
 3279 1d8c 06EB8706 		add	r6, r6, r7, lsl #2
 3280 1d90 86ED770A 		vstr.32	s0, [r6, #476]
 3281 1d94 D5E7     		b	.L451
 3282              	.L263:
 3283 1d96 6368     		ldr	r3, [r4, #4]
 3284 1d98 93F8CC00 		ldrb	r0, [r3, #204]	@ zero_extendqisi2
 3285 1d9c 0028     		cmp	r0, #0
 3286 1d9e 42F08B83 		bne	.L1743
 3287 1da2 0127     		movs	r7, #1
 3288 1da4 FFF76AB9 		b	.L189
 3289              	.L262:
 3290 1da8 6368     		ldr	r3, [r4, #4]
 3291 1daa 93F8CC00 		ldrb	r0, [r3, #204]	@ zero_extendqisi2
 3292 1dae 0127     		movs	r7, #1
 3293 1db0 0028     		cmp	r0, #0
 3294 1db2 3FF463A9 		beq	.L189
 3295 1db6 0023     		movs	r3, #0
 3296 1db8 84F81176 		strb	r7, [r4, #1553]
 3297 1dbc 094A     		ldr	r2, .L1883+20
 3298 1dbe 0093     		str	r3, [sp]
 3299 1dc0 2946     		mov	r1, r5
 3300 1dc2 2046     		mov	r0, r4
 3301 1dc4 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3302 1dc8 0C98     		ldr	r0, [sp, #48]
 3303 1dca FFF757B9 		b	.L189
 3304              	.L1884:
 3305 1dce 00BF     		.align	2
 3306              	.L1883:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 59


 3307 1dd0 00000000 		.word	reprap
 3308 1dd4 F1FAFFFF 		.word	-1295
 3309 1dd8 73B2E745 		.word	1172812403
 3310 1ddc 0C0F0000 		.word	.LC157
 3311 1de0 9C0E0000 		.word	.LC155
 3312 1de4 E80B0000 		.word	.LC127
 3313              	.L317:
 3314 1de8 CB4B     		ldr	r3, .L1885
 3315 1dea D3F8EC30 		ldr	r3, [r3, #236]
 3316 1dee 002B     		cmp	r3, #0
 3317 1df0 03F08580 		beq	.L956
 3318 1df4 5868     		ldr	r0, [r3, #4]
 3319 1df6 0028     		cmp	r0, #0
 3320 1df8 01F01C85 		beq	.L1128
 3321 1dfc 0027     		movs	r7, #0
 3322 1dfe 8DF85071 		strb	r7, [sp, #336]
 3323 1e02 5B68     		ldr	r3, [r3, #4]
 3324 1e04 C54A     		ldr	r2, .L1885+4
 3325 1e06 0092     		str	r2, [sp]
 3326 1e08 0833     		adds	r3, r3, #8
 3327 1e0a C54A     		ldr	r2, .L1885+8
 3328 1e0c C549     		ldr	r1, .L1885+12
 3329 1e0e 54A8     		add	r0, sp, #336
 3330 1e10 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 3331 1e14 0097     		str	r7, [sp]
 3332 1e16 3B46     		mov	r3, r7
 3333 1e18 54AA     		add	r2, sp, #336
 3334 1e1a 2946     		mov	r1, r5
 3335 1e1c 2046     		mov	r0, r4
 3336 1e1e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3337 1e22 0127     		movs	r7, #1
 3338 1e24 0C98     		ldr	r0, [sp, #48]
 3339 1e26 FFF729B9 		b	.L189
 3340              	.L328:
 3341 1e2a 5321     		movs	r1, #83
 3342 1e2c 2846     		mov	r0, r5
 3343 1e2e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3344 1e32 0028     		cmp	r0, #0
 3345 1e34 01F01284 		beq	.L999
 3346 1e38 2846     		mov	r0, r5
 3347 1e3a 6768     		ldr	r7, [r4, #4]
 3348 1e3c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3349 1e40 07F5F367 		add	r7, r7, #1944
 3350 1e44 87ED000A 		vstr.32	s0, [r7]
 3351 1e48 0C98     		ldr	r0, [sp, #48]
 3352 1e4a 0127     		movs	r7, #1
 3353 1e4c FFF716B9 		b	.L189
 3354              	.L327:
 3355 1e50 5321     		movs	r1, #83
 3356 1e52 2846     		mov	r0, r5
 3357 1e54 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3358 1e58 0028     		cmp	r0, #0
 3359 1e5a 01F05E83 		beq	.L990
 3360 1e5e 2846     		mov	r0, r5
 3361 1e60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3362 1e64 F2EE047A 		vmov.f32	s15, #1.0e+1
 3363 1e68 B4EEE70A 		vcmpe.f32	s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 60


 3364 1e6c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3365 1e70 B0EE408A 		vmov.f32	s16, s0
 3366 1e74 42F16E85 		bpl	.L1694
 3367 1e78 6068     		ldr	r0, [r4, #4]
 3368 1e7a FFF7FEFF 		bl	_ZN8Platform15DisableAutoSaveEv
 3369 1e7e 0127     		movs	r7, #1
 3370 1e80 0C98     		ldr	r0, [sp, #48]
 3371 1e82 FFF7FBB8 		b	.L189
 3372              	.L279:
 3373 1e86 5021     		movs	r1, #80
 3374 1e88 2846     		mov	r0, r5
 3375 1e8a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3376 1e8e 0028     		cmp	r0, #0
 3377 1e90 01F06484 		beq	.L799
 3378 1e94 2846     		mov	r0, r5
 3379 1e96 6768     		ldr	r7, [r4, #4]
 3380 1e98 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3381 1e9c C1B2     		uxtb	r1, r0
 3382 1e9e 3846     		mov	r0, r7
 3383 1ea0 FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 3384 1ea4 0127     		movs	r7, #1
 3385 1ea6 0C98     		ldr	r0, [sp, #48]
 3386 1ea8 FFF7E8B8 		b	.L189
 3387              	.L278:
 3388 1eac AB68     		ldr	r3, [r5, #8]
 3389 1eae 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 3390 1eb0 13F02007 		ands	r7, r3, #32
 3391 1eb4 01F0B087 		beq	.L1744
 3392 1eb8 0020     		movs	r0, #0
 3393 1eba 0127     		movs	r7, #1
 3394 1ebc FFF7DEB8 		b	.L189
 3395              	.L309:
 3396 1ec0 2946     		mov	r1, r5
 3397 1ec2 2046     		mov	r0, r4
 3398 1ec4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3399 1ec8 0028     		cmp	r0, #0
 3400 1eca 3EF4C4A8 		beq	.L1703
 3401 1ece 924B     		ldr	r3, .L1885
 3402 1ed0 0DF5A878 		add	r8, sp, #336
 3403 1ed4 DB68     		ldr	r3, [r3, #12]
 3404 1ed6 0027     		movs	r7, #0
 3405 1ed8 88F80070 		strb	r7, [r8]
 3406 1edc D3F8740A 		ldr	r0, [r3, #2676]
 3407 1ee0 0368     		ldr	r3, [r0]
 3408 1ee2 CDF80080 		str	r8, [sp]
 3409 1ee6 D3F80490 		ldr	r9, [r3, #4]
 3410 1eea 2A46     		mov	r2, r5
 3411 1eec 3346     		mov	r3, r6
 3412 1eee 40F29A21 		movw	r1, #666
 3413 1ef2 C847     		blx	r9
 3414 1ef4 08B1     		cbz	r0, .L934
 3415 1ef6 C4F82C75 		str	r7, [r4, #1324]
 3416              	.L934:
 3417 1efa 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 3418 1efe 0C98     		ldr	r0, [sp, #48]
 3419 1f00 002B     		cmp	r3, #0
 3420 1f02 0CBF     		ite	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 61


 3421 1f04 0127     		moveq	r7, #1
 3422 1f06 0227     		movne	r7, #2
 3423 1f08 FFF7B8B8 		b	.L189
 3424              	.L225:
 3425 1f0c 2946     		mov	r1, r5
 3426 1f0e 2046     		mov	r0, r4
 3427 1f10 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3428 1f14 0028     		cmp	r0, #0
 3429 1f16 3EF49EA8 		beq	.L1703
 3430 1f1a 2046     		mov	r0, r4
 3431 1f1c FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 3432 1f20 0028     		cmp	r0, #0
 3433 1f22 3EF498A8 		beq	.L1703
 3434 1f26 94F84697 		ldrb	r9, [r4, #1862]	@ zero_extendqisi2
 3435 1f2a B9F1000F 		cmp	r9, #0
 3436 1f2e 03F00E87 		beq	.L1745
 3437              	.L515:
 3438 1f32 0023     		movs	r3, #0
 3439 1f34 0C98     		ldr	r0, [sp, #48]
 3440 1f36 84F84537 		strb	r3, [r4, #1861]
 3441 1f3a 84F84637 		strb	r3, [r4, #1862]
 3442 1f3e 0127     		movs	r7, #1
 3443 1f40 FFF79CB8 		b	.L189
 3444              	.L224:
 3445 1f44 5021     		movs	r1, #80
 3446 1f46 2846     		mov	r0, r5
 3447 1f48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3448 1f4c 0028     		cmp	r0, #0
 3449 1f4e 01F06D82 		beq	.L493
 3450 1f52 2846     		mov	r0, r5
 3451 1f54 6768     		ldr	r7, [r4, #4]
 3452 1f56 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3453 1f5a C1B2     		uxtb	r1, r0
 3454 1f5c 3846     		mov	r0, r7
 3455 1f5e FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 3456 1f62 0127     		movs	r7, #1
 3457 1f64 0C98     		ldr	r0, [sp, #48]
 3458 1f66 FFF789B8 		b	.L189
 3459              	.L243:
 3460 1f6a A36C     		ldr	r3, [r4, #72]
 3461 1f6c 1B68     		ldr	r3, [r3]
 3462 1f6e AB42     		cmp	r3, r5
 3463 1f70 02F0CD87 		beq	.L1746
 3464 1f74 0020     		movs	r0, #0
 3465 1f76 0127     		movs	r7, #1
 3466 1f78 FFF780B8 		b	.L189
 3467              	.L301:
 3468 1f7c 3246     		mov	r2, r6
 3469 1f7e 2946     		mov	r1, r5
 3470 1f80 2046     		mov	r0, r4
 3471 1f82 FFF7FEFF 		bl	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
 3472 1f86 0746     		mov	r7, r0
 3473 1f88 0C98     		ldr	r0, [sp, #48]
 3474 1f8a FFF777B8 		b	.L189
 3475              	.L231:
 3476 1f8e 5321     		movs	r1, #83
 3477 1f90 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 62


 3478 1f92 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3479 1f96 0028     		cmp	r0, #0
 3480 1f98 01F02F83 		beq	.L530
 3481 1f9c 2846     		mov	r0, r5
 3482 1f9e D4F80480 		ldr	r8, [r4, #4]
 3483 1fa2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3484 1fa6 DFED607A 		vldr.32	s15, .L1885+16
 3485 1faa 20EE270A 		vmul.f32	s0, s0, s15
 3486 1fae B5EEC00A 		vcmpe.f32	s0, #0
 3487 1fb2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3488 1fb6 42F33D87 		ble	.L1747
 3489 1fba DFED5C7A 		vldr.32	s15, .L1885+20
 3490 1fbe 0C98     		ldr	r0, [sp, #48]
 3491 1fc0 20EE270A 		vmul.f32	s0, s0, s15
 3492 1fc4 0127     		movs	r7, #1
 3493 1fc6 BCEEC00A 		vcvt.u32.f32	s0, s0
 3494 1fca 10EE103A 		vmov	r3, s0	@ int
 3495 1fce C8F83838 		str	r3, [r8, #2104]
 3496 1fd2 FFF753B8 		b	.L189
 3497              	.L230:
 3498 1fd6 2046     		mov	r0, r4
 3499 1fd8 2946     		mov	r1, r5
 3500 1fda FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 3501 1fde 0127     		movs	r7, #1
 3502 1fe0 0C98     		ldr	r0, [sp, #48]
 3503 1fe2 FFF74BB8 		b	.L189
 3504              	.L229:
 3505 1fe6 2946     		mov	r1, r5
 3506 1fe8 2046     		mov	r0, r4
 3507 1fea FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 3508 1fee 0127     		movs	r7, #1
 3509 1ff0 0C98     		ldr	r0, [sp, #48]
 3510 1ff2 FFF743B8 		b	.L189
 3511              	.L217:
 3512 1ff6 0022     		movs	r2, #0
 3513 1ff8 2946     		mov	r1, r5
 3514 1ffa 2046     		mov	r0, r4
 3515 1ffc FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3516 2000 0746     		mov	r7, r0
 3517 2002 0C98     		ldr	r0, [sp, #48]
 3518 2004 FFF73AB8 		b	.L189
 3519              	.L233:
 3520 2008 3246     		mov	r2, r6
 3521 200a 2946     		mov	r1, r5
 3522 200c 2046     		mov	r0, r4
 3523 200e FFF7FEFF 		bl	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 3524 2012 0746     		mov	r7, r0
 3525 2014 0C98     		ldr	r0, [sp, #48]
 3526 2016 FFF731B8 		b	.L189
 3527              	.L232:
 3528 201a DFF8FCB0 		ldr	fp, .L1885
 3529 201e 5021     		movs	r1, #80
 3530 2020 2846     		mov	r0, r5
 3531 2022 DBF81090 		ldr	r9, [fp, #16]
 3532 2026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3533 202a 8046     		mov	r8, r0
 3534 202c 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 63


 3535 202e 42F06281 		bne	.L1748
 3536 2032 8C2F     		cmp	r7, #140
 3537 2034 02F01F85 		beq	.L1014
 3538              	.L535:
 3539 2038 4821     		movs	r1, #72
 3540 203a 2846     		mov	r0, r5
 3541 203c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3542 2040 0346     		mov	r3, r0
 3543 2042 0028     		cmp	r0, #0
 3544 2044 43F07784 		bne	.L1021
 3545              	.L536:
 3546 2048 8D2F     		cmp	r7, #141
 3547 204a 4246     		mov	r2, r8
 3548 204c 42F01D85 		bne	.L540
 3549 2050 09EB0802 		add	r2, r9, r8
 3550 2054 364F     		ldr	r7, .L1885+24
 3551 2056 92F9DDA0 		ldrsb	r10, [r2, #221]
 3552              	.L541:
 3553 205a 0793     		str	r3, [sp, #28]
 3554 205c 5321     		movs	r1, #83
 3555 205e 2846     		mov	r0, r5
 3556 2060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3557 2064 079B     		ldr	r3, [sp, #28]
 3558 2066 0028     		cmp	r0, #0
 3559 2068 43F00385 		bne	.L1749
 3560 206c 5221     		movs	r1, #82
 3561 206e 2846     		mov	r0, r5
 3562 2070 0793     		str	r3, [sp, #28]
 3563 2072 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3564 2076 079B     		ldr	r3, [sp, #28]
 3565 2078 0028     		cmp	r0, #0
 3566 207a 43F0ED84 		bne	.L1750
 3567 207e 002B     		cmp	r3, #0
 3568 2080 44F09683 		bne	.L1751
 3569 2084 BAF1000F 		cmp	r10, #0
 3570 2088 C4F22880 		blt	.L1752
 3571 208c B946     		mov	r9, r7
 3572 208e 0127     		movs	r7, #1
 3573 2090 19F8010B 		ldrb	r0, [r9], #1	@ zero_extendqisi2
 3574 2094 FFF7FEFF 		bl	toupper
 3575 2098 5146     		mov	r1, r10
 3576 209a 0790     		str	r0, [sp, #28]
 3577 209c DBF81000 		ldr	r0, [fp, #16]
 3578 20a0 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 3579 20a4 10EE100A 		vmov	r0, s0
 3580 20a8 FFF7FEFF 		bl	__aeabi_f2d
 3581 20ac 4B46     		mov	r3, r9
 3582 20ae CDE90201 		strd	r0, [sp, #8]
 3583 20b2 079A     		ldr	r2, [sp, #28]
 3584 20b4 1F49     		ldr	r1, .L1885+28
 3585 20b6 CDE900A8 		strd	r10, r8, [sp]
 3586 20ba 3046     		mov	r0, r6
 3587 20bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3588 20c0 0C98     		ldr	r0, [sp, #48]
 3589 20c2 FEF7DBBF 		b	.L189
 3590              	.L234:
 3591 20c6 5021     		movs	r1, #80
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 64


 3592 20c8 2846     		mov	r0, r5
 3593 20ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3594 20ce 0028     		cmp	r0, #0
 3595 20d0 41F08786 		bne	.L1753
 3596              	.L553:
 3597 20d4 DFF840B0 		ldr	fp, .L1885
 3598 20d8 DBF81030 		ldr	r3, [fp, #16]
 3599 20dc 1844     		add	r0, r0, r3
 3600 20de 90F9D980 		ldrsb	r8, [r0, #217]
 3601 20e2 B8F1000F 		cmp	r8, #0
 3602 20e6 81F28F83 		bge	.L554
 3603 20ea 0C98     		ldr	r0, [sp, #48]
 3604 20ec 0127     		movs	r7, #1
 3605 20ee FEF7C5BF 		b	.L189
 3606              	.L211:
 3607 20f2 6068     		ldr	r0, [r4, #4]
 3608 20f4 FFF7FEFF 		bl	_ZN8Platform10AtxPowerOnEv
 3609 20f8 0127     		movs	r7, #1
 3610 20fa 0C98     		ldr	r0, [sp, #48]
 3611 20fc FEF7BEBF 		b	.L189
 3612              	.L210:
 3613 2100 5021     		movs	r1, #80
 3614 2102 2846     		mov	r0, r5
 3615 2104 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3616 2108 0028     		cmp	r0, #0
 3617 210a 42F03082 		bne	.L440
 3618 210e 0C98     		ldr	r0, [sp, #48]
 3619 2110 0127     		movs	r7, #1
 3620 2112 FEF7B3BF 		b	.L189
 3621              	.L1886:
 3622 2116 00BF     		.align	2
 3623              	.L1885:
 3624 2118 00000000 		.word	reprap
 3625 211c 30000000 		.word	.LC18
 3626 2120 3C110000 		.word	.LC174
 3627 2124 4C110000 		.word	.LC175
 3628 2128 6F12833A 		.word	981668463
 3629 212c 00007A44 		.word	1148846080
 3630 2130 18000000 		.word	.LC14
 3631 2134 78070000 		.word	.LC93
 3632              	.L267:
 3633 2138 2946     		mov	r1, r5
 3634 213a 2046     		mov	r0, r4
 3635 213c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3636 2140 0028     		cmp	r0, #0
 3637 2142 3DF488AF 		beq	.L1703
 3638 2146 0123     		movs	r3, #1
 3639 2148 84F8B430 		strb	r3, [r4, #180]
 3640 214c 5021     		movs	r1, #80
 3641 214e 2846     		mov	r0, r5
 3642 2150 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3643 2154 F8B1     		cbz	r0, .L750
 3644 2156 2846     		mov	r0, r5
 3645 2158 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 3646 215c 4FF6FF77 		movw	r7, #65535
 3647 2160 8742     		cmp	r7, r0
 3648 2162 28BF     		it	cs
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 65


 3649 2164 0746     		movcs	r7, r0
 3650 2166 4921     		movs	r1, #73
 3651 2168 2846     		mov	r0, r5
 3652 216a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3653 216e 30B1     		cbz	r0, .L751
 3654 2170 2846     		mov	r0, r5
 3655 2172 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3656 2176 0028     		cmp	r0, #0
 3657 2178 D4BF     		ite	le
 3658 217a 0020     		movle	r0, #0
 3659 217c 0120     		movgt	r0, #1
 3660              	.L751:
 3661 217e 0246     		mov	r2, r0
 3662 2180 B9B2     		uxth	r1, r7
 3663 2182 6068     		ldr	r0, [r4, #4]
 3664 2184 FFF7FEFF 		bl	_ZN8Platform11SetLaserPinEtb
 3665 2188 0028     		cmp	r0, #0
 3666 218a 03F04D84 		beq	.L752
 3667 218e CC49     		ldr	r1, .L1887
 3668 2190 3046     		mov	r0, r6
 3669 2192 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3670              	.L750:
 3671 2196 4621     		movs	r1, #70
 3672 2198 2846     		mov	r0, r5
 3673 219a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3674 219e 30B1     		cbz	r0, .L753
 3675 21a0 6768     		ldr	r7, [r4, #4]
 3676 21a2 2846     		mov	r0, r5
 3677 21a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3678 21a8 3846     		mov	r0, r7
 3679 21aa FFF7FEFF 		bl	_ZN8Platform20SetLaserPwmFrequencyEf
 3680              	.L753:
 3681 21ae 5221     		movs	r1, #82
 3682 21b0 2846     		mov	r0, r5
 3683 21b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3684 21b6 0028     		cmp	r0, #0
 3685 21b8 44F08680 		bne	.L754
 3686 21bc 0C98     		ldr	r0, [sp, #48]
 3687 21be 0127     		movs	r7, #1
 3688 21c0 FEF75CBF 		b	.L189
 3689              	.L321:
 3690 21c4 BF4B     		ldr	r3, .L1887+4
 3691 21c6 D869     		ldr	r0, [r3, #28]
 3692 21c8 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 3693 21ca 002B     		cmp	r3, #0
 3694 21cc 00F09B87 		beq	.L958
 3695 21d0 0369     		ldr	r3, [r0, #16]
 3696 21d2 002B     		cmp	r3, #0
 3697 21d4 00F0AA87 		beq	.L966
 3698 21d8 FFF7FEFF 		bl	_ZN7Scanner6CancelEv
 3699 21dc 0746     		mov	r7, r0
 3700 21de 0C98     		ldr	r0, [sp, #48]
 3701 21e0 FEF74CBF 		b	.L189
 3702              	.L283:
 3703 21e4 B849     		ldr	r1, .L1887+8
 3704 21e6 B948     		ldr	r0, .L1887+12
 3705 21e8 DFF8ECC2 		ldr	ip, .L1887+24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 66


 3706 21ec B84A     		ldr	r2, .L1887+16
 3707 21ee B7F50C7F 		cmp	r7, #560
 3708 21f2 0DF5A878 		add	r8, sp, #336
 3709 21f6 14BF     		ite	ne
 3710 21f8 0F46     		movne	r7, r1
 3711 21fa 8146     		moveq	r9, r0
 3712 21fc 4FF00003 		mov	r3, #0
 3713 2200 4FF05001 		mov	r1, #80
 3714 2204 2846     		mov	r0, r5
 3715 2206 0CBF     		ite	eq
 3716 2208 6746     		moveq	r7, ip
 3717 220a 9146     		movne	r9, r2
 3718 220c 88F80030 		strb	r3, [r8]
 3719 2210 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3720 2214 0028     		cmp	r0, #0
 3721 2216 01F0E781 		beq	.L812
 3722 221a 7923     		movs	r3, #121
 3723 221c 12A9     		add	r1, sp, #72
 3724 221e 2846     		mov	r0, r5
 3725 2220 CDE91283 		strd	r8, r3, [sp, #72]
 3726 2224 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 3727              	.L813:
 3728 2228 5321     		movs	r1, #83
 3729 222a 2846     		mov	r0, r5
 3730 222c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3731 2230 0028     		cmp	r0, #0
 3732 2232 41F02386 		bne	.L1754
 3733 2236 8246     		mov	r10, r0
 3734              	.L814:
 3735 2238 4321     		movs	r1, #67
 3736 223a 2846     		mov	r0, r5
 3737 223c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3738 2240 0028     		cmp	r0, #0
 3739 2242 41F01686 		bne	.L1755
 3740              	.L815:
 3741 2246 0127     		movs	r7, #1
 3742 2248 0190     		str	r0, [sp, #4]
 3743 224a 4246     		mov	r2, r8
 3744 224c 5346     		mov	r3, r10
 3745 224e 4946     		mov	r1, r9
 3746 2250 0097     		str	r7, [sp]
 3747 2252 2846     		mov	r0, r5
 3748 2254 FFF7FEFF 		bl	_ZN11GCodeBuffer15OpenFileToWriteEPKcS1_mbm
 3749 2258 4246     		mov	r2, r8
 3750 225a 0028     		cmp	r0, #0
 3751 225c 01F0BD81 		beq	.L816
 3752 2260 9C49     		ldr	r1, .L1887+20
 3753 2262 3046     		mov	r0, r6
 3754 2264 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3755              	.L817:
 3756 2268 0C98     		ldr	r0, [sp, #48]
 3757 226a FEF707BF 		b	.L189
 3758              	.L282:
 3759 226e 3246     		mov	r2, r6
 3760 2270 2946     		mov	r1, r5
 3761 2272 2046     		mov	r0, r4
 3762 2274 FFF7FEFF 		bl	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 67


 3763 2278 0746     		mov	r7, r0
 3764 227a 0C98     		ldr	r0, [sp, #48]
 3765 227c FEF7FEBE 		b	.L189
 3766              	.L281:
 3767 2280 3246     		mov	r2, r6
 3768 2282 2946     		mov	r1, r5
 3769 2284 2046     		mov	r0, r4
 3770 2286 FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 3771 228a 0746     		mov	r7, r0
 3772 228c 0C98     		ldr	r0, [sp, #48]
 3773 228e FEF7F5BE 		b	.L189
 3774              	.L280:
 3775 2292 5321     		movs	r1, #83
 3776 2294 2846     		mov	r0, r5
 3777 2296 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3778 229a 0028     		cmp	r0, #0
 3779 229c 01F00E81 		beq	.L807
 3780 22a0 2846     		mov	r0, r5
 3781 22a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3782 22a6 F2EE047A 		vmov.f32	s15, #1.0e+1
 3783 22aa B4EEE70A 		vcmpe.f32	s0, s15
 3784 22ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3785 22b2 B0EE408A 		vmov.f32	s16, s0
 3786 22b6 82F25B82 		bge	.L808
 3787 22ba 0C98     		ldr	r0, [sp, #48]
 3788 22bc 0127     		movs	r7, #1
 3789 22be FEF7DDBE 		b	.L189
 3790              	.L285:
 3791 22c2 5021     		movs	r1, #80
 3792 22c4 2846     		mov	r0, r5
 3793 22c6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3794 22ca 0028     		cmp	r0, #0
 3795 22cc 41F04883 		bne	.L1756
 3796 22d0 DFF8F081 		ldr	r8, .L1887+4
 3797 22d4 0746     		mov	r7, r0
 3798              	.L818:
 3799 22d6 79B2     		sxtb	r1, r7
 3800 22d8 4046     		mov	r0, r8
 3801 22da 0137     		adds	r7, r7, #1
 3802 22dc FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 3803 22e0 082F     		cmp	r7, #8
 3804 22e2 F8D1     		bne	.L818
 3805 22e4 0127     		movs	r7, #1
 3806              	.L820:
 3807 22e6 0023     		movs	r3, #0
 3808 22e8 0C98     		ldr	r0, [sp, #48]
 3809 22ea 84F83037 		strb	r3, [r4, #1840]
 3810 22ee FEF7C5BE 		b	.L189
 3811              	.L284:
 3812 22f2 2946     		mov	r1, r5
 3813 22f4 2046     		mov	r0, r4
 3814 22f6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3815 22fa 0028     		cmp	r0, #0
 3816 22fc 3DF4ABAE 		beq	.L1703
 3817 2300 2046     		mov	r0, r4
 3818 2302 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 3819 2306 0127     		movs	r7, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 68


 3820 2308 0C98     		ldr	r0, [sp, #48]
 3821 230a FEF7B7BE 		b	.L189
 3822              	.L286:
 3823 230e 3246     		mov	r2, r6
 3824 2310 2946     		mov	r1, r5
 3825 2312 2046     		mov	r0, r4
 3826 2314 FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
 3827 2318 0746     		mov	r7, r0
 3828 231a 0C98     		ldr	r0, [sp, #48]
 3829 231c FEF7AEBE 		b	.L189
 3830              	.L275:
 3831 2320 0021     		movs	r1, #0
 3832 2322 1520     		movs	r0, #21
 3833 2324 54AF     		add	r7, sp, #336
 3834 2326 10AB     		add	r3, sp, #64
 3835 2328 8DF85011 		strb	r1, [sp, #336]
 3836 232c 8DF84010 		strb	r1, [sp, #64]
 3837 2330 CDE91270 		strd	r7, r0, [sp, #72]
 3838 2334 12AA     		add	r2, sp, #72
 3839 2336 5021     		movs	r1, #80
 3840 2338 2846     		mov	r0, r5
 3841 233a FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 3842 233e 9DF84030 		ldrb	r3, [sp, #64]	@ zero_extendqisi2
 3843 2342 002B     		cmp	r3, #0
 3844 2344 41F06383 		bne	.L1757
 3845              	.L783:
 3846 2348 0C98     		ldr	r0, [sp, #48]
 3847 234a 0127     		movs	r7, #1
 3848 234c FEF796BE 		b	.L189
 3849              	.L274:
 3850 2350 0021     		movs	r1, #0
 3851 2352 2920     		movs	r0, #41
 3852 2354 54AF     		add	r7, sp, #336
 3853 2356 10AB     		add	r3, sp, #64
 3854 2358 8DF85011 		strb	r1, [sp, #336]
 3855 235c 8DF84010 		strb	r1, [sp, #64]
 3856 2360 CDE91270 		strd	r7, r0, [sp, #72]
 3857 2364 12AA     		add	r2, sp, #72
 3858 2366 5021     		movs	r1, #80
 3859 2368 2846     		mov	r0, r5
 3860 236a FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 3861 236e 9DF84030 		ldrb	r3, [sp, #64]	@ zero_extendqisi2
 3862 2372 002B     		cmp	r3, #0
 3863 2374 01F01081 		beq	.L781
 3864 2378 3946     		mov	r1, r7
 3865 237a 5248     		ldr	r0, .L1887+4
 3866 237c FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 3867              	.L782:
 3868 2380 0C98     		ldr	r0, [sp, #48]
 3869 2382 0127     		movs	r7, #1
 3870 2384 FEF77ABE 		b	.L189
 3871              	.L277:
 3872 2388 AB68     		ldr	r3, [r5, #8]
 3873 238a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 3874 238c 13F02007 		ands	r7, r3, #32
 3875 2390 01F04383 		beq	.L1758
 3876 2394 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 69


 3877 2396 0127     		movs	r7, #1
 3878 2398 FEF770BE 		b	.L189
 3879              	.L273:
 3880 239c AB68     		ldr	r3, [r5, #8]
 3881 239e 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 3882 23a0 9906     		lsls	r1, r3, #26
 3883 23a2 41F17185 		bpl	.L1759
 3884 23a6 0020     		movs	r0, #0
 3885 23a8 0127     		movs	r7, #1
 3886 23aa FEF767BE 		b	.L189
 3887              	.L276:
 3888 23ae AB68     		ldr	r3, [r5, #8]
 3889 23b0 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 3890 23b2 9A06     		lsls	r2, r3, #26
 3891 23b4 41F14883 		bpl	.L1760
 3892 23b8 0020     		movs	r0, #0
 3893 23ba 0127     		movs	r7, #1
 3894 23bc FEF75EBE 		b	.L189
 3895              	.L272:
 3896 23c0 2946     		mov	r1, r5
 3897 23c2 2046     		mov	r0, r4
 3898 23c4 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3899 23c8 0028     		cmp	r0, #0
 3900 23ca 3DF444AE 		beq	.L1703
 3901 23ce 0CA8     		add	r0, sp, #48
 3902 23d0 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3903 23d4 0028     		cmp	r0, #0
 3904 23d6 3DF43EAE 		beq	.L1703
 3905 23da 6368     		ldr	r3, [r4, #4]
 3906 23dc 3A4A     		ldr	r2, .L1887+8
 3907 23de D3F8DC0B 		ldr	r0, [r3, #3036]
 3908 23e2 3B49     		ldr	r1, .L1887+16
 3909 23e4 0023     		movs	r3, #0
 3910 23e6 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 3911 23ea 8146     		mov	r9, r0
 3912 23ec 0028     		cmp	r0, #0
 3913 23ee 03F0CC86 		beq	.L1761
 3914 23f2 0C98     		ldr	r0, [sp, #48]
 3915 23f4 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3916 23f8 0DF5A878 		add	r8, sp, #336
 3917 23fc 0746     		mov	r7, r0
 3918 23fe 0BE0     		b	.L776
 3919              	.L1762:
 3920 2400 8FB1     		cbz	r7, .L773
 3921 2402 8742     		cmp	r7, r0
 3922 2404 86BF     		itte	hi
 3923 2406 3B1A     		subhi	r3, r7, r0
 3924 2408 0746     		movhi	r7, r0
 3925 240a 0023     		movls	r3, #0
 3926 240c 3A46     		mov	r2, r7
 3927 240e 4146     		mov	r1, r8
 3928 2410 0C98     		ldr	r0, [sp, #48]
 3929 2412 1F46     		mov	r7, r3
 3930 2414 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 3931              	.L776:
 3932 2418 8022     		movs	r2, #128
 3933 241a 4146     		mov	r1, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 70


 3934 241c 4846     		mov	r0, r9
 3935 241e FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 3936 2422 0028     		cmp	r0, #0
 3937 2424 ECD1     		bne	.L1762
 3938              	.L773:
 3939 2426 4846     		mov	r0, r9
 3940 2428 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3941 242c 0127     		movs	r7, #1
 3942 242e 0C98     		ldr	r0, [sp, #48]
 3943 2430 FEF724BE 		b	.L189
 3944              	.L297:
 3945 2434 5321     		movs	r1, #83
 3946 2436 2846     		mov	r0, r5
 3947 2438 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3948 243c 0028     		cmp	r0, #0
 3949 243e 41F01882 		bne	.L898
 3950 2442 0C98     		ldr	r0, [sp, #48]
 3951 2444 0127     		movs	r7, #1
 3952 2446 FEF719BE 		b	.L189
 3953              	.L296:
 3954 244a 5021     		movs	r1, #80
 3955 244c 2846     		mov	r0, r5
 3956 244e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3957 2452 0028     		cmp	r0, #0
 3958 2454 41F07982 		bne	.L890
 3959 2458 0C98     		ldr	r0, [sp, #48]
 3960 245a 0127     		movs	r7, #1
 3961 245c FEF70EBE 		b	.L189
 3962              	.L302:
 3963 2460 4921     		movs	r1, #73
 3964 2462 2846     		mov	r0, r5
 3965 2464 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3966 2468 0028     		cmp	r0, #0
 3967 246a 41F0A982 		bne	.L1763
 3968 246e 0746     		mov	r7, r0
 3969              	.L916:
 3970 2470 5021     		movs	r1, #80
 3971 2472 2846     		mov	r0, r5
 3972 2474 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3973 2478 0028     		cmp	r0, #0
 3974 247a 01F00980 		beq	.L917
 3975 247e 2846     		mov	r0, r5
 3976 2480 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 3977 2484 5321     		movs	r1, #83
 3978 2486 8046     		mov	r8, r0
 3979 2488 2846     		mov	r0, r5
 3980 248a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3981 248e 0028     		cmp	r0, #0
 3982 2490 42F04A85 		bne	.L918
 3983 2494 0C98     		ldr	r0, [sp, #48]
 3984 2496 0127     		movs	r7, #1
 3985 2498 FEF7F0BD 		b	.L189
 3986              	.L300:
 3987 249c 3246     		mov	r2, r6
 3988 249e 2946     		mov	r1, r5
 3989 24a0 2046     		mov	r0, r4
 3990 24a2 FFF7FEFF 		bl	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 71


 3991 24a6 0746     		mov	r7, r0
 3992 24a8 0C98     		ldr	r0, [sp, #48]
 3993 24aa FEF7E7BD 		b	.L189
 3994              	.L239:
 3995 24ae 3246     		mov	r2, r6
 3996 24b0 2946     		mov	r1, r5
 3997 24b2 2046     		mov	r0, r4
 3998 24b4 FFF7FEFF 		bl	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 3999 24b8 0746     		mov	r7, r0
 4000 24ba 0C98     		ldr	r0, [sp, #48]
 4001 24bc FEF7DEBD 		b	.L189
 4002              	.L1888:
 4003              		.align	2
 4004              	.L1887:
 4005 24c0 480C0000 		.word	.LC131
 4006 24c4 00000000 		.word	reprap
 4007 24c8 30000000 		.word	.LC18
 4008 24cc 50000000 		.word	.LC21
 4009 24d0 3C000000 		.word	.LC19
 4010 24d4 E8030000 		.word	.LC60
 4011 24d8 44000000 		.word	.LC20
 4012 24dc 8988883C 		.word	1015580809
 4013 24e0 CDCCCC3D 		.word	1036831949
 4014              	.L238:
 4015 24e4 40F23623 		movw	r3, #566
 4016 24e8 9F42     		cmp	r7, r3
 4017 24ea 94EDEE8A 		vldr.32	s16, [r4, #952]
 4018 24ee 08BF     		it	eq
 4019 24f0 5FED067A 		vldreq.32	s15, .L1887+28
 4020 24f4 D4F85C33 		ldr	r3, [r4, #860]
 4021 24f8 08BF     		it	eq
 4022 24fa 28EE278A 		vmuleq.f32	s16, s16, s15
 4023 24fe 002B     		cmp	r3, #0
 4024 2500 01F0E284 		beq	.L826
 4025 2504 0027     		movs	r7, #0
 4026 2506 5FED0A8A 		vldr.32	s17, .L1887+32
 4027 250a BA46     		mov	r10, r7
 4028 250c 04F21959 		addw	r9, r4, #1305
 4029 2510 B346     		mov	fp, r6
 4030 2512 05E0     		b	.L831
 4031              	.L827:
 4032 2514 D4F85C33 		ldr	r3, [r4, #860]
 4033 2518 0137     		adds	r7, r7, #1
 4034 251a BB42     		cmp	r3, r7
 4035 251c 40F2E486 		bls	.L1764
 4036              	.L831:
 4037 2520 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 4038 2524 2846     		mov	r0, r5
 4039 2526 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4040 252a 8046     		mov	r8, r0
 4041 252c 0028     		cmp	r0, #0
 4042 252e F1D0     		beq	.L827
 4043 2530 2846     		mov	r0, r5
 4044 2532 6668     		ldr	r6, [r4, #4]
 4045 2534 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4046 2538 20EE080A 		vmul.f32	s0, s0, s16
 4047 253c 06EB8706 		add	r6, r6, r7, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 72


 4048 2540 B4EE400A 		vcmp.f32	s0, s0
 4049 2544 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4050 2548 06D6     		bvs	.L828
 4051 254a B4EEE80A 		vcmpe.f32	s0, s17
 4052 254e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4053 2552 D8BF     		it	le
 4054 2554 B0EE680A 		vmovle.f32	s0, s17
 4055              	.L828:
 4056 2558 86ED830A 		vstr.32	s0, [r6, #524]
 4057 255c C246     		mov	r10, r8
 4058 255e D9E7     		b	.L827
 4059              	.L259:
 4060 2560 2946     		mov	r1, r5
 4061 2562 2046     		mov	r0, r4
 4062 2564 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4063 2568 0028     		cmp	r0, #0
 4064 256a 3DF474AD 		beq	.L1703
 4065 256e 3246     		mov	r2, r6
 4066 2570 2946     		mov	r1, r5
 4067 2572 2046     		mov	r0, r4
 4068 2574 FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 4069 2578 0746     		mov	r7, r0
 4070 257a 0C98     		ldr	r0, [sp, #48]
 4071 257c FEF77EBD 		b	.L189
 4072              	.L258:
 4073 2580 3246     		mov	r2, r6
 4074 2582 2946     		mov	r1, r5
 4075 2584 2046     		mov	r0, r4
 4076 2586 FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 4077 258a 0028     		cmp	r0, #0
 4078 258c 01F0E280 		beq	.L734
 4079 2590 0C98     		ldr	r0, [sp, #48]
 4080 2592 0227     		movs	r7, #2
 4081 2594 FEF772BD 		b	.L189
 4082              	.L257:
 4083 2598 4921     		movs	r1, #73
 4084 259a 2846     		mov	r0, r5
 4085 259c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4086 25a0 0790     		str	r0, [sp, #28]
 4087 25a2 0028     		cmp	r0, #0
 4088 25a4 41F07982 		bne	.L1765
 4089              	.L714:
 4090 25a8 D4F85C33 		ldr	r3, [r4, #860]
 4091 25ac 002B     		cmp	r3, #0
 4092 25ae 02F04181 		beq	.L715
 4093 25b2 D34B     		ldr	r3, .L1889
 4094 25b4 D34A     		ldr	r2, .L1889+4
 4095 25b6 0799     		ldr	r1, [sp, #28]
 4096 25b8 0896     		str	r6, [sp, #32]
 4097 25ba 0127     		movs	r7, #1
 4098 25bc 0029     		cmp	r1, #0
 4099 25be 08BF     		it	eq
 4100 25c0 1A46     		moveq	r2, r3
 4101 25c2 6FF4A369 		mvn	r9, #1304
 4102 25c6 0023     		movs	r3, #0
 4103 25c8 BB46     		mov	fp, r7
 4104 25ca 0992     		str	r2, [sp, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 73


 4105 25cc A9EB0409 		sub	r9, r9, r4
 4106 25d0 04F21958 		addw	r8, r4, #1305
 4107 25d4 1F46     		mov	r7, r3
 4108 25d6 06E0     		b	.L719
 4109              	.L716:
 4110 25d8 D4F85C23 		ldr	r2, [r4, #860]
 4111 25dc 08EB0903 		add	r3, r8, r9
 4112 25e0 9A42     		cmp	r2, r3
 4113 25e2 40F29686 		bls	.L1766
 4114              	.L719:
 4115 25e6 08EB0906 		add	r6, r8, r9
 4116 25ea 2846     		mov	r0, r5
 4117 25ec 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 4118 25f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4119 25f4 0028     		cmp	r0, #0
 4120 25f6 EFD0     		beq	.L716
 4121 25f8 2946     		mov	r1, r5
 4122 25fa 2046     		mov	r0, r4
 4123 25fc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4124 2600 0746     		mov	r7, r0
 4125 2602 0028     		cmp	r0, #0
 4126 2604 3DF427AD 		beq	.L1703
 4127 2608 2846     		mov	r0, r5
 4128 260a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 4129 260e 3146     		mov	r1, r6
 4130 2610 8246     		mov	r10, r0
 4131 2612 079B     		ldr	r3, [sp, #28]
 4132 2614 0246     		mov	r2, r0
 4133 2616 2046     		mov	r0, r4
 4134 2618 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
 4135 261c 0123     		movs	r3, #1
 4136 261e 03FA06F6 		lsl	r6, r3, r6
 4137 2622 B949     		ldr	r1, .L1889+8
 4138 2624 5346     		mov	r3, r10
 4139 2626 0028     		cmp	r0, #0
 4140 2628 00F07585 		beq	.L717
 4141 262c D4F82C35 		ldr	r3, [r4, #1324]
 4142 2630 23EA0606 		bic	r6, r3, r6
 4143 2634 0746     		mov	r7, r0
 4144 2636 C4F82C65 		str	r6, [r4, #1324]
 4145 263a CDE7     		b	.L716
 4146              	.L223:
 4147 263c 5321     		movs	r1, #83
 4148 263e 2846     		mov	r0, r5
 4149 2640 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4150 2644 0028     		cmp	r0, #0
 4151 2646 00F01487 		beq	.L490
 4152 264a 2846     		mov	r0, r5
 4153 264c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4154 2650 0128     		cmp	r0, #1
 4155 2652 0746     		mov	r7, r0
 4156 2654 03F06881 		beq	.L1767
 4157 2658 0228     		cmp	r0, #2
 4158 265a 03F06282 		beq	.L492
 4159 265e 0C98     		ldr	r0, [sp, #48]
 4160 2660 0127     		movs	r7, #1
 4161 2662 FEF70BBD 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 74


 4162              	.L270:
 4163 2666 AB68     		ldr	r3, [r5, #8]
 4164 2668 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4165 266a 13F0300F 		tst	r3, #48
 4166 266e 02F02A81 		beq	.L1768
 4167 2672 0020     		movs	r0, #0
 4168 2674 0127     		movs	r7, #1
 4169 2676 FEF701BD 		b	.L189
 4170              	.L237:
 4171 267a D4F85C33 		ldr	r3, [r4, #860]
 4172 267e 002B     		cmp	r3, #0
 4173 2680 01F06D86 		beq	.L594
 4174 2684 0027     		movs	r7, #0
 4175 2686 DFEDA18A 		vldr.32	s17, .L1889+12
 4176 268a BB46     		mov	fp, r7
 4177 268c 04F20F59 		addw	r9, r4, #1295
 4178 2690 B7EE008A 		vmov.f32	s16, #1.0e+0
 4179 2694 B246     		mov	r10, r6
 4180 2696 05E0     		b	.L598
 4181              	.L595:
 4182 2698 D4F85C33 		ldr	r3, [r4, #860]
 4183 269c 0137     		adds	r7, r7, #1
 4184 269e BB42     		cmp	r3, r7
 4185 26a0 40F28A85 		bls	.L1769
 4186              	.L598:
 4187 26a4 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 4188 26a8 2846     		mov	r0, r5
 4189 26aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4190 26ae 8046     		mov	r8, r0
 4191 26b0 0028     		cmp	r0, #0
 4192 26b2 F1D0     		beq	.L595
 4193 26b4 2846     		mov	r0, r5
 4194 26b6 6668     		ldr	r6, [r4, #4]
 4195 26b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4196 26bc D4EDEE7A 		vldr.32	s15, [r4, #952]
 4197 26c0 60EE277A 		vmul.f32	s15, s0, s15
 4198 26c4 06EB8706 		add	r6, r6, r7, lsl #2
 4199 26c8 67EEA87A 		vmul.f32	s15, s15, s17
 4200 26cc C346     		mov	fp, r8
 4201 26ce F4EE677A 		vcmp.f32	s15, s15
 4202 26d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4203 26d6 06D6     		bvs	.L596
 4204 26d8 F4EEC87A 		vcmpe.f32	s15, s16
 4205 26dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4206 26e0 D8BF     		it	le
 4207 26e2 F0EE487A 		vmovle.f32	s15, s16
 4208              	.L596:
 4209 26e6 C6ED5F7A 		vstr.32	s15, [r6, #380]
 4210 26ea D5E7     		b	.L595
 4211              	.L261:
 4212 26ec 2946     		mov	r1, r5
 4213 26ee 2046     		mov	r0, r4
 4214 26f0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4215 26f4 0028     		cmp	r0, #0
 4216 26f6 3DF4AEAC 		beq	.L1703
 4217 26fa 0C98     		ldr	r0, [sp, #48]
 4218 26fc 0127     		movs	r7, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 75


 4219 26fe FEF7BDBC 		b	.L189
 4220              	.L260:
 4221 2702 834B     		ldr	r3, .L1889+16
 4222 2704 4821     		movs	r1, #72
 4223 2706 2846     		mov	r0, r5
 4224 2708 DF68     		ldr	r7, [r3, #12]
 4225 270a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4226 270e 0028     		cmp	r0, #0
 4227 2710 41F07986 		bne	.L1770
 4228 2714 97F8693A 		ldrb	r3, [r7, #2665]	@ zero_extendqisi2
 4229 2718 002B     		cmp	r3, #0
 4230 271a 41F05C86 		bne	.L1771
 4231              	.L736:
 4232 271e 7D49     		ldr	r1, .L1889+20
 4233 2720 3046     		mov	r0, r6
 4234 2722 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4235 2726 0127     		movs	r7, #1
 4236 2728 0C98     		ldr	r0, [sp, #48]
 4237 272a FEF7A7BC 		b	.L189
 4238              	.L256:
 4239 272e 3246     		mov	r2, r6
 4240 2730 2946     		mov	r1, r5
 4241 2732 2046     		mov	r0, r4
 4242 2734 FFF7FEFF 		bl	_ZN6GCodes14SetHeaterModelER11GCodeBufferRK9StringRef
 4243 2738 0746     		mov	r7, r0
 4244 273a 0C98     		ldr	r0, [sp, #48]
 4245 273c FEF79EBC 		b	.L189
 4246              	.L240:
 4247 2740 5321     		movs	r1, #83
 4248 2742 2846     		mov	r0, r5
 4249 2744 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4250 2748 0790     		str	r0, [sp, #28]
 4251 274a 0028     		cmp	r0, #0
 4252 274c 41F0F280 		bne	.L1772
 4253              	.L629:
 4254 2750 D4F85C33 		ldr	r3, [r4, #860]
 4255 2754 002B     		cmp	r3, #0
 4256 2756 01F08B82 		beq	.L638
 4257 275a 6F4F     		ldr	r7, .L1889+24
 4258 275c 0896     		str	r6, [sp, #32]
 4259 275e 04F20F58 		addw	r8, r4, #1295
 4260 2762 3F1B     		subs	r7, r7, r4
 4261 2764 4FF0000B 		mov	fp, #0
 4262 2768 06E0     		b	.L637
 4263              	.L633:
 4264 276a D4F85C23 		ldr	r2, [r4, #860]
 4265 276e 08EB0703 		add	r3, r8, r7
 4266 2772 9A42     		cmp	r2, r3
 4267 2774 40F2AF85 		bls	.L1773
 4268              	.L637:
 4269 2778 08EB070A 		add	r10, r8, r7
 4270 277c 2846     		mov	r0, r5
 4271 277e 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 4272 2782 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4273 2786 8146     		mov	r9, r0
 4274 2788 0028     		cmp	r0, #0
 4275 278a EED0     		beq	.L633
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 76


 4276 278c 0023     		movs	r3, #0
 4277 278e 0226     		movs	r6, #2
 4278 2790 12AA     		add	r2, sp, #72
 4279 2792 54A9     		add	r1, sp, #336
 4280 2794 2846     		mov	r0, r5
 4281 2796 1296     		str	r6, [sp, #72]
 4282 2798 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4283 279c 129B     		ldr	r3, [sp, #72]
 4284 279e B342     		cmp	r3, r6
 4285 27a0 AB68     		ldr	r3, [r5, #8]
 4286 27a2 01F05080 		beq	.L1774
 4287 27a6 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4288 27a8 D4F804C0 		ldr	ip, [r4, #4]
 4289 27ac DDED547A 		vldr.32	s15, [sp, #336]
 4290 27b0 079E     		ldr	r6, [sp, #28]
 4291 27b2 C3F30013 		ubfx	r3, r3, #4, #1
 4292 27b6 5146     		mov	r1, r10
 4293 27b8 B0EE670A 		vmov.f32	s0, s15
 4294 27bc 6046     		mov	r0, ip
 4295 27be 1A46     		mov	r2, r3
 4296 27c0 002E     		cmp	r6, #0
 4297 27c2 00F0A185 		beq	.L636
 4298 27c6 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 4299 27ca CB46     		mov	fp, r9
 4300 27cc CDE7     		b	.L633
 4301              	.L236:
 4302 27ce D4F85C33 		ldr	r3, [r4, #860]
 4303 27d2 002B     		cmp	r3, #0
 4304 27d4 01F0FB81 		beq	.L577
 4305 27d8 0027     		movs	r7, #0
 4306 27da BA46     		mov	r10, r7
 4307 27dc 04F20F59 		addw	r9, r4, #1295
 4308 27e0 B7EE008A 		vmov.f32	s16, #1.0e+0
 4309 27e4 B346     		mov	fp, r6
 4310 27e6 05E0     		b	.L581
 4311              	.L578:
 4312 27e8 D4F85C33 		ldr	r3, [r4, #860]
 4313 27ec 0137     		adds	r7, r7, #1
 4314 27ee BB42     		cmp	r3, r7
 4315 27f0 40F2F284 		bls	.L1775
 4316              	.L581:
 4317 27f4 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 4318 27f8 2846     		mov	r0, r5
 4319 27fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4320 27fe 8046     		mov	r8, r0
 4321 2800 0028     		cmp	r0, #0
 4322 2802 F1D0     		beq	.L578
 4323 2804 2846     		mov	r0, r5
 4324 2806 6668     		ldr	r6, [r4, #4]
 4325 2808 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4326 280c D4EDEE7A 		vldr.32	s15, [r4, #952]
 4327 2810 20EE270A 		vmul.f32	s0, s0, s15
 4328 2814 06EB8706 		add	r6, r6, r7, lsl #2
 4329 2818 B4EE400A 		vcmp.f32	s0, s0
 4330 281c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4331 2820 06D6     		bvs	.L579
 4332 2822 B4EEC80A 		vcmpe.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 77


 4333 2826 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4334 282a D8BF     		it	le
 4335 282c B0EE480A 		vmovle.f32	s0, s16
 4336              	.L579:
 4337 2830 86ED6B0A 		vstr.32	s0, [r6, #428]
 4338 2834 C246     		mov	r10, r8
 4339 2836 D7E7     		b	.L578
 4340              	.L265:
 4341 2838 2046     		mov	r0, r4
 4342 283a FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 4343 283e 3749     		ldr	r1, .L1889+28
 4344 2840 0246     		mov	r2, r0
 4345 2842 3046     		mov	r0, r6
 4346 2844 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4347 2848 0127     		movs	r7, #1
 4348 284a 0C98     		ldr	r0, [sp, #48]
 4349 284c FEF716BC 		b	.L189
 4350              	.L264:
 4351 2850 4E21     		movs	r1, #78
 4352 2852 2846     		mov	r0, r5
 4353 2854 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4354 2858 0028     		cmp	r0, #0
 4355 285a 41F06E85 		bne	.L1776
 4356 285e 4421     		movs	r1, #68
 4357 2860 2846     		mov	r0, r5
 4358 2862 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4359 2866 0028     		cmp	r0, #0
 4360 2868 41F05B85 		bne	.L739
 4361 286c D4F804A0 		ldr	r10, [r4, #4]
 4362 2870 0AF6F433 		addw	r3, r10, #3060
 4363 2874 0AF6F83A 		addw	r10, r10, #3064
 4364 2878 1868     		ldr	r0, [r3]	@ float
 4365 287a FFF7FEFF 		bl	__aeabi_f2d
 4366 287e 8046     		mov	r8, r0
 4367 2880 DAF80000 		ldr	r0, [r10]	@ float
 4368 2884 8946     		mov	r9, r1
 4369 2886 FFF7FEFF 		bl	__aeabi_f2d
 4370 288a 4246     		mov	r2, r8
 4371 288c CDE90001 		strd	r0, [sp]
 4372 2890 4B46     		mov	r3, r9
 4373 2892 2349     		ldr	r1, .L1889+32
 4374 2894 3046     		mov	r0, r6
 4375 2896 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4376 289a 0127     		movs	r7, #1
 4377 289c 0C98     		ldr	r0, [sp, #48]
 4378 289e FEF7EDBB 		b	.L189
 4379              	.L266:
 4380 28a2 2946     		mov	r1, r5
 4381 28a4 2046     		mov	r0, r4
 4382 28a6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4383 28aa 0028     		cmp	r0, #0
 4384 28ac 3DF4D3AB 		beq	.L1703
 4385 28b0 0023     		movs	r3, #0
 4386 28b2 0C98     		ldr	r0, [sp, #48]
 4387 28b4 84F8B430 		strb	r3, [r4, #180]
 4388 28b8 0127     		movs	r7, #1
 4389 28ba FEF7DFBB 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 78


 4390              	.L313:
 4391 28be 2946     		mov	r1, r5
 4392 28c0 2046     		mov	r0, r4
 4393 28c2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4394 28c6 0028     		cmp	r0, #0
 4395 28c8 3DF4C5AB 		beq	.L1703
 4396 28cc 104B     		ldr	r3, .L1889+16
 4397 28ce 0022     		movs	r2, #0
 4398 28d0 DB68     		ldr	r3, [r3, #12]
 4399 28d2 8DF85021 		strb	r2, [sp, #336]
 4400 28d6 D3F8740A 		ldr	r0, [r3, #2676]
 4401 28da 54AF     		add	r7, sp, #336
 4402 28dc 0368     		ldr	r3, [r0]
 4403 28de 0097     		str	r7, [sp]
 4404 28e0 D3F80480 		ldr	r8, [r3, #4]
 4405 28e4 2A46     		mov	r2, r5
 4406 28e6 3346     		mov	r3, r6
 4407 28e8 40F29F21 		movw	r1, #671
 4408 28ec C047     		blx	r8
 4409 28ee 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 4410 28f0 0C98     		ldr	r0, [sp, #48]
 4411 28f2 002B     		cmp	r3, #0
 4412 28f4 0CBF     		ite	eq
 4413 28f6 0127     		moveq	r7, #1
 4414 28f8 0227     		movne	r7, #2
 4415 28fa FEF7BFBB 		b	.L189
 4416              	.L1890:
 4417 28fe 00BF     		.align	2
 4418              	.L1889:
 4419 2900 2C000000 		.word	.LC17
 4420 2904 000B0000 		.word	.LC118
 4421 2908 140B0000 		.word	.LC119
 4422 290c 8988883C 		.word	1015580809
 4423 2910 00000000 		.word	reprap
 4424 2914 C80B0000 		.word	.LC126
 4425 2918 F1FAFFFF 		.word	-1295
 4426 291c 380C0000 		.word	.LC130
 4427 2920 080C0000 		.word	.LC129
 4428              	.L312:
 4429 2924 C84B     		ldr	r3, .L1891
 4430 2926 3246     		mov	r2, r6
 4431 2928 586A     		ldr	r0, [r3, #36]
 4432 292a 2946     		mov	r1, r5
 4433 292c FFF7FEFF 		bl	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef
 4434 2930 0028     		cmp	r0, #0
 4435 2932 00F04E86 		beq	.L954
 4436 2936 0C98     		ldr	r0, [sp, #48]
 4437 2938 0227     		movs	r7, #2
 4438 293a FEF79FBB 		b	.L189
 4439              	.L311:
 4440 293e 2946     		mov	r1, r5
 4441 2940 2046     		mov	r0, r4
 4442 2942 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4443 2946 0028     		cmp	r0, #0
 4444 2948 3DF485AB 		beq	.L1703
 4445 294c DFF8F8B2 		ldr	fp, .L1891
 4446 2950 DBF80C80 		ldr	r8, [fp, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 79


 4447 2954 D8F8743A 		ldr	r3, [r8, #2676]
 4448 2958 4B21     		movs	r1, #75
 4449 295a 2846     		mov	r0, r5
 4450 295c 93F80FA0 		ldrb	r10, [r3, #15]	@ zero_extendqisi2
 4451 2960 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4452 2964 8146     		mov	r9, r0
 4453 2966 0028     		cmp	r0, #0
 4454 2968 42F0C984 		bne	.L1777
 4455              	.L946:
 4456 296c 0023     		movs	r3, #0
 4457 296e 8DF85031 		strb	r3, [sp, #336]
 4458 2972 D8F8740A 		ldr	r0, [r8, #2676]
 4459 2976 54AA     		add	r2, sp, #336
 4460 2978 0368     		ldr	r3, [r0]
 4461 297a 0092     		str	r2, [sp]
 4462 297c 5B68     		ldr	r3, [r3, #4]
 4463 297e 0792     		str	r2, [sp, #28]
 4464 2980 1F46     		mov	r7, r3
 4465 2982 2A46     		mov	r2, r5
 4466 2984 3346     		mov	r3, r6
 4467 2986 40F29D21 		movw	r1, #669
 4468 298a B847     		blx	r7
 4469 298c 0028     		cmp	r0, #0
 4470 298e 42F05085 		bne	.L949
 4471 2992 079A     		ldr	r2, [sp, #28]
 4472 2994 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 4473 2996 002B     		cmp	r3, #0
 4474 2998 0CBF     		ite	eq
 4475 299a 0127     		moveq	r7, #1
 4476 299c 0227     		movne	r7, #2
 4477 299e B9F1000F 		cmp	r9, #0
 4478 29a2 42F04C85 		bne	.L1012
 4479              	.L951:
 4480 29a6 0C98     		ldr	r0, [sp, #48]
 4481 29a8 FEF768BB 		b	.L189
 4482              	.L245:
 4483 29ac 3246     		mov	r2, r6
 4484 29ae 2946     		mov	r1, r5
 4485 29b0 2046     		mov	r0, r4
 4486 29b2 FFF7FEFF 		bl	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 4487 29b6 0746     		mov	r7, r0
 4488 29b8 0C98     		ldr	r0, [sp, #48]
 4489 29ba FEF75FBB 		b	.L189
 4490              	.L246:
 4491 29be 5021     		movs	r1, #80
 4492 29c0 2846     		mov	r0, r5
 4493 29c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4494 29c6 0028     		cmp	r0, #0
 4495 29c8 41F09483 		bne	.L655
 4496 29cc 0C98     		ldr	r0, [sp, #48]
 4497 29ce 0127     		movs	r7, #1
 4498 29d0 FEF754BB 		b	.L189
 4499              	.L212:
 4500 29d4 2946     		mov	r1, r5
 4501 29d6 2046     		mov	r0, r4
 4502 29d8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4503 29dc 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 80


 4504 29de 3DF43AAB 		beq	.L1703
 4505 29e2 5321     		movs	r1, #83
 4506 29e4 2846     		mov	r0, r5
 4507 29e6 6768     		ldr	r7, [r4, #4]
 4508 29e8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4509 29ec 28B1     		cbz	r0, .L449
 4510 29ee 2846     		mov	r0, r5
 4511 29f0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 4512 29f4 0030     		adds	r0, r0, #0
 4513 29f6 18BF     		it	ne
 4514 29f8 0120     		movne	r0, #1
 4515              	.L449:
 4516 29fa 0146     		mov	r1, r0
 4517 29fc 3846     		mov	r0, r7
 4518 29fe FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 4519 2a02 0127     		movs	r7, #1
 4520 2a04 0C98     		ldr	r0, [sp, #48]
 4521 2a06 FEF739BB 		b	.L189
 4522              	.L325:
 4523 2a0a 3246     		mov	r2, r6
 4524 2a0c 2946     		mov	r1, r5
 4525 2a0e 2046     		mov	r0, r4
 4526 2a10 FFF7FEFF 		bl	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 4527 2a14 0746     		mov	r7, r0
 4528 2a16 0C98     		ldr	r0, [sp, #48]
 4529 2a18 FEF730BB 		b	.L189
 4530              	.L254:
 4531 2a1c 2046     		mov	r0, r4
 4532 2a1e 3346     		mov	r3, r6
 4533 2a20 0022     		movs	r2, #0
 4534 2a22 2946     		mov	r1, r5
 4535 2a24 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 4536 2a28 0127     		movs	r7, #1
 4537 2a2a 0C98     		ldr	r0, [sp, #48]
 4538 2a2c FEF726BB 		b	.L189
 4539              	.L253:
 4540 2a30 4821     		movs	r1, #72
 4541 2a32 2846     		mov	r0, r5
 4542 2a34 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4543 2a38 0028     		cmp	r0, #0
 4544 2a3a 00F00686 		beq	.L704
 4545 2a3e 2846     		mov	r0, r5
 4546 2a40 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 4547 2a44 5321     		movs	r1, #83
 4548 2a46 0746     		mov	r7, r0
 4549 2a48 2846     		mov	r0, r5
 4550 2a4a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4551 2a4e 0028     		cmp	r0, #0
 4552 2a50 01F0BD86 		beq	.L705
 4553 2a54 2846     		mov	r0, r5
 4554 2a56 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4555 2a5a B0EE408A 		vmov.f32	s16, s0
 4556              	.L706:
 4557 2a5e 5021     		movs	r1, #80
 4558 2a60 2846     		mov	r0, r5
 4559 2a62 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4560 2a66 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 81


 4561 2a68 42F0CB82 		bne	.L1778
 4562 2a6c 764B     		ldr	r3, .L1891
 4563 2a6e 1B69     		ldr	r3, [r3, #16]
 4564 2a70 03EB8703 		add	r3, r3, r7, lsl #2
 4565 2a74 5B6C     		ldr	r3, [r3, #68]
 4566 2a76 D3ED0F8A 		vldr.32	s17, [r3, #60]
 4567              	.L708:
 4568 2a7a 072F     		cmp	r7, #7
 4569 2a7c 41F23687 		bls	.L709
 4570 2a80 7249     		ldr	r1, .L1891+4
 4571 2a82 3046     		mov	r0, r6
 4572 2a84 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4573 2a88 0127     		movs	r7, #1
 4574 2a8a 0C98     		ldr	r0, [sp, #48]
 4575 2a8c FEF7F6BA 		b	.L189
 4576              	.L252:
 4577 2a90 5021     		movs	r1, #80
 4578 2a92 2846     		mov	r0, r5
 4579 2a94 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4580 2a98 0746     		mov	r7, r0
 4581 2a9a 0028     		cmp	r0, #0
 4582 2a9c 41F00F84 		bne	.L1779
 4583              	.L699:
 4584 2aa0 5321     		movs	r1, #83
 4585 2aa2 2846     		mov	r0, r5
 4586 2aa4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4587 2aa8 0028     		cmp	r0, #0
 4588 2aaa 41F0F683 		bne	.L1780
 4589 2aae 5221     		movs	r1, #82
 4590 2ab0 2846     		mov	r0, r5
 4591 2ab2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4592 2ab6 0028     		cmp	r0, #0
 4593 2ab8 41F01084 		bne	.L1781
 4594 2abc 002F     		cmp	r7, #0
 4595 2abe 43F09885 		bne	.L1782
 4596 2ac2 614B     		ldr	r3, .L1891
 4597 2ac4 1F69     		ldr	r7, [r3, #16]
 4598 2ac6 97F8D830 		ldrb	r3, [r7, #216]	@ zero_extendqisi2
 4599 2aca 002B     		cmp	r3, #0
 4600 2acc 02F0F582 		beq	.L703
 4601 2ad0 5F49     		ldr	r1, .L1891+8
 4602 2ad2 3046     		mov	r0, r6
 4603 2ad4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4604 2ad8 0127     		movs	r7, #1
 4605 2ada 0C98     		ldr	r0, [sp, #48]
 4606 2adc FEF7CEBA 		b	.L189
 4607              	.L326:
 4608 2ae0 D4F85C33 		ldr	r3, [r4, #860]
 4609 2ae4 002B     		cmp	r3, #0
 4610 2ae6 02F02184 		beq	.L1132
 4611 2aea 6FF4A369 		mvn	r9, #1304
 4612 2aee A9EB0409 		sub	r9, r9, r4
 4613 2af2 04F21958 		addw	r8, r4, #1305
 4614 2af6 4FF0000B 		mov	fp, #0
 4615 2afa 0796     		str	r6, [sp, #28]
 4616 2afc 06E0     		b	.L971
 4617              	.L970:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 82


 4618 2afe D4F85C23 		ldr	r2, [r4, #860]
 4619 2b02 09EB0803 		add	r3, r9, r8
 4620 2b06 9A42     		cmp	r2, r3
 4621 2b08 40F27683 		bls	.L1783
 4622              	.L971:
 4623 2b0c 09EB080A 		add	r10, r9, r8
 4624 2b10 2846     		mov	r0, r5
 4625 2b12 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 4626 2b16 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4627 2b1a 0646     		mov	r6, r0
 4628 2b1c 0028     		cmp	r0, #0
 4629 2b1e EED0     		beq	.L970
 4630 2b20 D4F804B0 		ldr	fp, [r4, #4]
 4631 2b24 2846     		mov	r0, r5
 4632 2b26 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4633 2b2a 5846     		mov	r0, fp
 4634 2b2c 3A46     		mov	r2, r7
 4635 2b2e 5146     		mov	r1, r10
 4636 2b30 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
 4637 2b34 B346     		mov	fp, r6
 4638 2b36 E2E7     		b	.L970
 4639              	.L319:
 4640 2b38 E36C     		ldr	r3, [r4, #76]
 4641 2b3a 1B68     		ldr	r3, [r3]
 4642 2b3c AB42     		cmp	r3, r5
 4643 2b3e 00F05386 		beq	.L1784
 4644 2b42 4449     		ldr	r1, .L1891+12
 4645 2b44 3046     		mov	r0, r6
 4646 2b46 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4647 2b4a 0227     		movs	r7, #2
 4648 2b4c 0C98     		ldr	r0, [sp, #48]
 4649 2b4e FEF795BA 		b	.L189
 4650              	.L318:
 4651 2b52 3D4B     		ldr	r3, .L1891
 4652 2b54 D869     		ldr	r0, [r3, #28]
 4653 2b56 FFF7FEFF 		bl	_ZN7Scanner6EnableEv
 4654 2b5a 0127     		movs	r7, #1
 4655 2b5c 0C98     		ldr	r0, [sp, #48]
 4656 2b5e FEF78DBA 		b	.L189
 4657              	.L305:
 4658 2b62 4421     		movs	r1, #68
 4659 2b64 2846     		mov	r0, r5
 4660 2b66 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4661 2b6a 0028     		cmp	r0, #0
 4662 2b6c 41F06782 		bne	.L924
 4663 2b70 0C98     		ldr	r0, [sp, #48]
 4664 2b72 0127     		movs	r7, #1
 4665 2b74 FEF782BA 		b	.L189
 4666              	.L304:
 4667 2b78 4421     		movs	r1, #68
 4668 2b7a 2846     		mov	r0, r5
 4669 2b7c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4670 2b80 0028     		cmp	r0, #0
 4671 2b82 41F03D81 		bne	.L922
 4672 2b86 0C98     		ldr	r0, [sp, #48]
 4673 2b88 0127     		movs	r7, #1
 4674 2b8a FEF777BA 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 83


 4675              	.L303:
 4676 2b8e AB68     		ldr	r3, [r5, #8]
 4677 2b90 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4678 2b92 9B06     		lsls	r3, r3, #26
 4679 2b94 41F10E80 		bpl	.L1785
 4680 2b98 0020     		movs	r0, #0
 4681 2b9a 0127     		movs	r7, #1
 4682 2b9c FEF76EBA 		b	.L189
 4683              	.L329:
 4684 2ba0 0CAB     		add	r3, sp, #48
 4685 2ba2 3246     		mov	r2, r6
 4686 2ba4 2946     		mov	r1, r5
 4687 2ba6 6068     		ldr	r0, [r4, #4]
 4688 2ba8 FFF7FEFF 		bl	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRefRP12OutputBuffer
 4689 2bac 0746     		mov	r7, r0
 4690 2bae 0C98     		ldr	r0, [sp, #48]
 4691 2bb0 FEF764BA 		b	.L189
 4692              	.L209:
 4693 2bb4 0027     		movs	r7, #0
 4694 2bb6 0DAA     		add	r2, sp, #52
 4695 2bb8 0DF12F03 		add	r3, sp, #47
 4696 2bbc 5021     		movs	r1, #80
 4697 2bbe 2846     		mov	r0, r5
 4698 2bc0 0D97     		str	r7, [sp, #52]
 4699 2bc2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 4700 2bc6 0DF12F03 		add	r3, sp, #47
 4701 2bca 0EAA     		add	r2, sp, #56
 4702 2bcc 5321     		movs	r1, #83
 4703 2bce 2846     		mov	r0, r5
 4704 2bd0 0E97     		str	r7, [sp, #56]
 4705 2bd2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4706 2bd6 6368     		ldr	r3, [r4, #4]
 4707 2bd8 0D99     		ldr	r1, [sp, #52]
 4708 2bda D3F8DC0B 		ldr	r0, [r3, #3036]
 4709 2bde 0DF14008 		add	r8, sp, #64
 4710 2be2 0DF13C09 		add	r9, sp, #60
 4711 2be6 54AB     		add	r3, sp, #336
 4712 2be8 12AA     		add	r2, sp, #72
 4713 2bea CDE90098 		strd	r9, r8, [sp]
 4714 2bee FFF7FEFF 		bl	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 4715 2bf2 0E9B     		ldr	r3, [sp, #56]
 4716 2bf4 022B     		cmp	r3, #2
 4717 2bf6 0746     		mov	r7, r0
 4718 2bf8 02F0E780 		beq	.L1786
 4719 2bfc 0128     		cmp	r0, #1
 4720 2bfe DDF834A0 		ldr	r10, [sp, #52]
 4721 2c02 01F07885 		beq	.L437
 4722 2c06 0228     		cmp	r0, #2
 4723 2c08 01F07D85 		beq	.L438
 4724 2c0c 5246     		mov	r2, r10
 4725 2c0e 1249     		ldr	r1, .L1891+16
 4726 2c10 3046     		mov	r0, r6
 4727 2c12 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4728 2c16 0227     		movs	r7, #2
 4729              	.L435:
 4730 2c18 0C98     		ldr	r0, [sp, #48]
 4731 2c1a FEF72FBA 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 84


 4732              	.L208:
 4733 2c1e 2946     		mov	r1, r5
 4734 2c20 2046     		mov	r0, r4
 4735 2c22 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 4736 2c26 0028     		cmp	r0, #0
 4737 2c28 3DF415AA 		beq	.L1703
 4738 2c2c D4F8BC76 		ldr	r7, [r4, #1724]
 4739 2c30 002F     		cmp	r7, #0
 4740 2c32 02F07E83 		beq	.L1787
 4741 2c36 3146     		mov	r1, r6
 4742 2c38 2046     		mov	r0, r4
 4743 2c3a FFF7FEFF 		bl	_ZN6GCodes11AdvanceHashERK9StringRef
 4744 2c3e 0746     		mov	r7, r0
 4745 2c40 0C98     		ldr	r0, [sp, #48]
 4746 2c42 FEF71BBA 		b	.L189
 4747              	.L1892:
 4748 2c46 00BF     		.align	2
 4749              	.L1891:
 4750 2c48 00000000 		.word	reprap
 4751 2c4c 900A0000 		.word	.LC115
 4752 2c50 DC090000 		.word	.LC113
 4753 2c54 8C110000 		.word	.LC178
 4754 2c58 00050000 		.word	.LC68
 4755              	.L320:
 4756 2c5c 5021     		movs	r1, #80
 4757 2c5e 2846     		mov	r0, r5
 4758 2c60 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4759 2c64 0028     		cmp	r0, #0
 4760 2c66 00F0E884 		beq	.L959
 4761 2c6a 0DF5A878 		add	r8, sp, #336
 4762 2c6e 0022     		movs	r2, #0
 4763 2c70 7923     		movs	r3, #121
 4764 2c72 12A9     		add	r1, sp, #72
 4765 2c74 2846     		mov	r0, r5
 4766 2c76 88F80020 		strb	r2, [r8]
 4767 2c7a CDE91283 		strd	r8, r3, [sp, #72]
 4768 2c7e FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 4769 2c82 5321     		movs	r1, #83
 4770 2c84 2846     		mov	r0, r5
 4771 2c86 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4772 2c8a 0028     		cmp	r0, #0
 4773 2c8c 01F08D85 		beq	.L960
 4774 2c90 DFF80CB5 		ldr	fp, .L1893
 4775 2c94 2846     		mov	r0, r5
 4776 2c96 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4777 2c9a DBF81C30 		ldr	r3, [fp, #28]
 4778 2c9e 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 4779 2ca0 8146     		mov	r9, r0
 4780 2ca2 002A     		cmp	r2, #0
 4781 2ca4 02F01187 		beq	.L961
 4782 2ca8 1B69     		ldr	r3, [r3, #16]
 4783 2caa 002B     		cmp	r3, #0
 4784 2cac 02F00687 		beq	.L962
 4785 2cb0 5221     		movs	r1, #82
 4786 2cb2 2846     		mov	r0, r5
 4787 2cb4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4788 2cb8 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 85


 4789 2cba 43F05183 		bne	.L1788
 4790 2cbe 6427     		movs	r7, #100
 4791              	.L963:
 4792 2cc0 4E21     		movs	r1, #78
 4793 2cc2 2846     		mov	r0, r5
 4794 2cc4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4795 2cc8 10B1     		cbz	r0, .L964
 4796 2cca 2846     		mov	r0, r5
 4797 2ccc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4798              	.L964:
 4799 2cd0 0090     		str	r0, [sp]
 4800 2cd2 3B46     		mov	r3, r7
 4801 2cd4 4A46     		mov	r2, r9
 4802 2cd6 4146     		mov	r1, r8
 4803 2cd8 DBF81C00 		ldr	r0, [fp, #28]
 4804 2cdc FFF7FEFF 		bl	_ZN7Scanner9StartScanEPKciii
 4805 2ce0 0746     		mov	r7, r0
 4806              	.L965:
 4807 2ce2 0C98     		ldr	r0, [sp, #48]
 4808 2ce4 FEF7CAB9 		b	.L189
 4809              	.L315:
 4810 2ce8 3246     		mov	r2, r6
 4811 2cea 2946     		mov	r1, r5
 4812 2cec 2046     		mov	r0, r4
 4813 2cee FFF7FEFF 		bl	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 4814 2cf2 0746     		mov	r7, r0
 4815 2cf4 0C98     		ldr	r0, [sp, #48]
 4816 2cf6 FEF7C1B9 		b	.L189
 4817              	.L314:
 4818 2cfa 3246     		mov	r2, r6
 4819 2cfc 2946     		mov	r1, r5
 4820 2cfe 6068     		ldr	r0, [r4, #4]
 4821 2d00 FFF7FEFF 		bl	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 4822 2d04 0746     		mov	r7, r0
 4823 2d06 0C98     		ldr	r0, [sp, #48]
 4824 2d08 FEF7B8B9 		b	.L189
 4825              	.L310:
 4826 2d0c 2946     		mov	r1, r5
 4827 2d0e 2046     		mov	r0, r4
 4828 2d10 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4829 2d14 0028     		cmp	r0, #0
 4830 2d16 3DF49EA9 		beq	.L1703
 4831 2d1a DFF884B4 		ldr	fp, .L1893
 4832 2d1e DBF80C80 		ldr	r8, [fp, #12]
 4833 2d22 D8F8743A 		ldr	r3, [r8, #2676]
 4834 2d26 5321     		movs	r1, #83
 4835 2d28 2846     		mov	r0, r5
 4836 2d2a 93F80FA0 		ldrb	r10, [r3, #15]	@ zero_extendqisi2
 4837 2d2e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4838 2d32 8146     		mov	r9, r0
 4839 2d34 0028     		cmp	r0, #0
 4840 2d36 42F0B883 		bne	.L1789
 4841              	.L936:
 4842 2d3a 0023     		movs	r3, #0
 4843 2d3c 8DF85031 		strb	r3, [sp, #336]
 4844 2d40 D8F8740A 		ldr	r0, [r8, #2676]
 4845 2d44 54AA     		add	r2, sp, #336
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 86


 4846 2d46 0368     		ldr	r3, [r0]
 4847 2d48 0092     		str	r2, [sp]
 4848 2d4a 5B68     		ldr	r3, [r3, #4]
 4849 2d4c 0792     		str	r2, [sp, #28]
 4850 2d4e 1F46     		mov	r7, r3
 4851 2d50 2A46     		mov	r2, r5
 4852 2d52 3346     		mov	r3, r6
 4853 2d54 40F29B21 		movw	r1, #667
 4854 2d58 B847     		blx	r7
 4855 2d5a 0028     		cmp	r0, #0
 4856 2d5c 43F0DF82 		bne	.L942
 4857 2d60 079A     		ldr	r2, [sp, #28]
 4858 2d62 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 4859 2d64 002B     		cmp	r3, #0
 4860 2d66 0CBF     		ite	eq
 4861 2d68 0127     		moveq	r7, #1
 4862 2d6a 0227     		movne	r7, #2
 4863 2d6c B9F1000F 		cmp	r9, #0
 4864 2d70 43F07780 		bne	.L941
 4865 2d74 0C98     		ldr	r0, [sp, #48]
 4866 2d76 FEF781B9 		b	.L189
 4867              	.L307:
 4868 2d7a A36C     		ldr	r3, [r4, #72]
 4869 2d7c 1B68     		ldr	r3, [r3]
 4870 2d7e AB42     		cmp	r3, r5
 4871 2d80 02F07282 		beq	.L1790
 4872 2d84 0020     		movs	r0, #0
 4873 2d86 0127     		movs	r7, #1
 4874 2d88 FEF778B9 		b	.L189
 4875              	.L308:
 4876 2d8c 2946     		mov	r1, r5
 4877 2d8e 2046     		mov	r0, r4
 4878 2d90 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4879 2d94 0028     		cmp	r0, #0
 4880 2d96 3DF45EA9 		beq	.L1703
 4881 2d9a DFF804B4 		ldr	fp, .L1893
 4882 2d9e 4C21     		movs	r1, #76
 4883 2da0 2846     		mov	r0, r5
 4884 2da2 DBF80C70 		ldr	r7, [fp, #12]
 4885 2da6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4886 2daa 0028     		cmp	r0, #0
 4887 2dac 01F02487 		beq	.L927
 4888              	.L930:
 4889 2db0 D7F8740A 		ldr	r0, [r7, #2676]
 4890 2db4 C37B     		ldrb	r3, [r0, #15]	@ zero_extendqisi2
 4891 2db6 032B     		cmp	r3, #3
 4892 2db8 01F02787 		beq	.L929
 4893 2dbc 0321     		movs	r1, #3
 4894 2dbe 3846     		mov	r0, r7
 4895 2dc0 0DF5A878 		add	r8, sp, #336
 4896 2dc4 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 4897 2dc8 0023     		movs	r3, #0
 4898 2dca 88F80030 		strb	r3, [r8]
 4899 2dce D7F8740A 		ldr	r0, [r7, #2676]
 4900 2dd2 0368     		ldr	r3, [r0]
 4901 2dd4 CDF80080 		str	r8, [sp]
 4902 2dd8 D3F80490 		ldr	r9, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 87


 4903 2ddc 2A46     		mov	r2, r5
 4904 2dde 3346     		mov	r3, r6
 4905 2de0 40F29921 		movw	r1, #665
 4906 2de4 C847     		blx	r9
 4907 2de6 D7F8740A 		ldr	r0, [r7, #2676]
 4908 2dea D4F86013 		ldr	r1, [r4, #864]
 4909 2dee 0368     		ldr	r3, [r0]
 4910 2df0 04F1EC07 		add	r7, r4, #236
 4911 2df4 3A46     		mov	r2, r7
 4912 2df6 1B6B     		ldr	r3, [r3, #48]
 4913 2df8 9847     		blx	r3
 4914 2dfa 3946     		mov	r1, r7
 4915 2dfc 04F1C002 		add	r2, r4, #192
 4916 2e00 2046     		mov	r0, r4
 4917 2e02 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 4918              	.L1011:
 4919 2e06 DBF80C20 		ldr	r2, [fp, #12]
 4920 2e0a D4F82C35 		ldr	r3, [r4, #1324]
 4921 2e0e D2F8740A 		ldr	r0, [r2, #2676]
 4922 2e12 D4F86023 		ldr	r2, [r4, #864]
 4923 2e16 0168     		ldr	r1, [r0]
 4924 2e18 4FF0000C 		mov	ip, #0
 4925 2e1c CDF800C0 		str	ip, [sp]
 4926 2e20 D1F82890 		ldr	r9, [r1, #40]
 4927 2e24 3946     		mov	r1, r7
 4928 2e26 C847     		blx	r9
 4929 2e28 0028     		cmp	r0, #0
 4930 2e2a 42F09186 		bne	.L1791
 4931              	.L932:
 4932 2e2e 3946     		mov	r1, r7
 4933 2e30 DBF80C00 		ldr	r0, [fp, #12]
 4934 2e34 0122     		movs	r2, #1
 4935 2e36 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 4936 2e3a 0023     		movs	r3, #0
 4937 2e3c C4F82C35 		str	r3, [r4, #1324]
 4938              	.L1010:
 4939 2e40 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4940 2e44 0C98     		ldr	r0, [sp, #48]
 4941 2e46 002B     		cmp	r3, #0
 4942 2e48 0CBF     		ite	eq
 4943 2e4a 0127     		moveq	r7, #1
 4944 2e4c 0227     		movne	r7, #2
 4945 2e4e FEF715B9 		b	.L189
 4946              	.L244:
 4947 2e52 3246     		mov	r2, r6
 4948 2e54 2946     		mov	r1, r5
 4949 2e56 2046     		mov	r0, r4
 4950 2e58 FFF7FEFF 		bl	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 4951 2e5c 0746     		mov	r7, r0
 4952 2e5e 0C98     		ldr	r0, [sp, #48]
 4953 2e60 FEF70CB9 		b	.L189
 4954              	.L331:
 4955 2e64 3246     		mov	r2, r6
 4956 2e66 2946     		mov	r1, r5
 4957 2e68 6068     		ldr	r0, [r4, #4]
 4958 2e6a FFF7FEFF 		bl	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 4959 2e6e 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 88


 4960 2e70 0C98     		ldr	r0, [sp, #48]
 4961 2e72 FEF703B9 		b	.L189
 4962              	.L306:
 4963 2e76 CA4B     		ldr	r3, .L1893
 4964 2e78 3246     		mov	r2, r6
 4965 2e7a D868     		ldr	r0, [r3, #12]
 4966 2e7c 2946     		mov	r1, r5
 4967 2e7e FFF7FEFF 		bl	_ZN4Move28ConfigureDynamicAccelerationER11GCodeBufferRK9StringRef
 4968 2e82 0746     		mov	r7, r0
 4969 2e84 0C98     		ldr	r0, [sp, #48]
 4970 2e86 FEF7F9B8 		b	.L189
 4971              	.L241:
 4972 2e8a 5321     		movs	r1, #83
 4973 2e8c 2846     		mov	r0, r5
 4974 2e8e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4975 2e92 0028     		cmp	r0, #0
 4976 2e94 00F09984 		beq	.L640
 4977 2e98 2846     		mov	r0, r5
 4978 2e9a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4979 2e9e F2EE047A 		vmov.f32	s15, #1.0e+1
 4980 2ea2 B4EEE70A 		vcmpe.f32	s0, s15
 4981 2ea6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4982 2eaa 42F3DD80 		ble	.L1674
 4983 2eae 04F25C50 		addw	r0, r4, #1372
 4984 2eb2 D0ED007A 		vldr.32	s15, [r0]
 4985 2eb6 80EE277A 		vdiv.f32	s14, s0, s15
 4986 2eba 04F11802 		add	r2, r4, #24
 4987 2ebe 04F13C01 		add	r1, r4, #60
 4988              	.L645:
 4989 2ec2 52F8043F 		ldr	r3, [r2, #4]!
 4990 2ec6 53B1     		cbz	r3, .L646
 4991 2ec8 9B68     		ldr	r3, [r3, #8]
 4992 2eca 43B1     		cbz	r3, .L646
 4993              	.L647:
 4994 2ecc D3ED017A 		vldr.32	s15, [r3, #4]
 4995 2ed0 67EE877A 		vmul.f32	s15, s15, s14
 4996 2ed4 C3ED017A 		vstr.32	s15, [r3, #4]
 4997 2ed8 1B68     		ldr	r3, [r3]
 4998 2eda 002B     		cmp	r3, #0
 4999 2edc F6D1     		bne	.L647
 5000              	.L646:
 5001 2ede 9142     		cmp	r1, r2
 5002 2ee0 EFD1     		bne	.L645
 5003 2ee2 D4F86031 		ldr	r3, [r4, #352]
 5004 2ee6 4BB1     		cbz	r3, .L648
 5005 2ee8 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 5006 2eec DF07     		lsls	r7, r3, #31
 5007 2eee 05D4     		bmi	.L648
 5008 2ef0 D4ED507A 		vldr.32	s15, [r4, #320]
 5009 2ef4 27EE877A 		vmul.f32	s14, s15, s14
 5010 2ef8 84ED507A 		vstr.32	s14, [r4, #320]
 5011              	.L648:
 5012 2efc 80ED000A 		vstr.32	s0, [r0]
 5013 2f00 0127     		movs	r7, #1
 5014 2f02 0C98     		ldr	r0, [sp, #48]
 5015 2f04 FEF7BAB8 		b	.L189
 5016              	.L332:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 89


 5017 2f08 3246     		mov	r2, r6
 5018 2f0a 2946     		mov	r1, r5
 5019 2f0c 2046     		mov	r0, r4
 5020 2f0e FFF7FEFF 		bl	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 5021 2f12 0746     		mov	r7, r0
 5022 2f14 0C98     		ldr	r0, [sp, #48]
 5023 2f16 FEF7B1B8 		b	.L189
 5024              	.L242:
 5025 2f1a 0027     		movs	r7, #0
 5026 2f1c 12AB     		add	r3, sp, #72
 5027 2f1e 54AA     		add	r2, sp, #336
 5028 2f20 4421     		movs	r1, #68
 5029 2f22 2846     		mov	r0, r5
 5030 2f24 5497     		str	r7, [sp, #336]
 5031 2f26 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 5032 2f2a 549B     		ldr	r3, [sp, #336]
 5033 2f2c BB42     		cmp	r3, r7
 5034 2f2e 04DB     		blt	.L650
 5035 2f30 D4F86423 		ldr	r2, [r4, #868]
 5036 2f34 9342     		cmp	r3, r2
 5037 2f36 C1F25787 		blt	.L1792
 5038              	.L650:
 5039 2f3a 0C98     		ldr	r0, [sp, #48]
 5040 2f3c 0127     		movs	r7, #1
 5041 2f3e FEF79DB8 		b	.L189
 5042              	.L213:
 5043 2f42 0020     		movs	r0, #0
 5044 2f44 0127     		movs	r7, #1
 5045 2f46 FEF799B8 		b	.L189
 5046              	.L188:
 5047 2f4a 4FF47A72 		mov	r2, #1000
 5048 2f4e 2946     		mov	r1, r5
 5049 2f50 2046     		mov	r0, r4
 5050 2f52 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 5051 2f56 0746     		mov	r7, r0
 5052 2f58 0028     		cmp	r0, #0
 5053 2f5a 40F03087 		bne	.L1004
 5054 2f5e 0C98     		ldr	r0, [sp, #48]
 5055 2f60 FEF78CB8 		b	.L189
 5056              	.L186:
 5057 2f64 5021     		movs	r1, #80
 5058 2f66 2846     		mov	r0, r5
 5059 2f68 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5060 2f6c 0028     		cmp	r0, #0
 5061 2f6e 00F0F881 		beq	.L740
 5062 2f72 2846     		mov	r0, r5
 5063 2f74 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5064 2f78 0746     		mov	r7, r0
 5065 2f7a 0028     		cmp	r0, #0
 5066 2f7c 00F0F181 		beq	.L740
 5067 2f80 0128     		cmp	r0, #1
 5068 2f82 02F04580 		beq	.L742
 5069 2f86 0C98     		ldr	r0, [sp, #48]
 5070 2f88 0127     		movs	r7, #1
 5071 2f8a FEF777B8 		b	.L189
 5072              	.L185:
 5073 2f8e 5321     		movs	r1, #83
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 90


 5074 2f90 2846     		mov	r0, r5
 5075 2f92 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5076 2f96 8046     		mov	r8, r0
 5077 2f98 0028     		cmp	r0, #0
 5078 2f9a 40F0BC85 		bne	.L1793
 5079              	.L611:
 5080 2f9e 5221     		movs	r1, #82
 5081 2fa0 2846     		mov	r0, r5
 5082 2fa2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5083 2fa6 0746     		mov	r7, r0
 5084 2fa8 0028     		cmp	r0, #0
 5085 2faa 40F09785 		bne	.L1794
 5086              	.L614:
 5087 2fae 4621     		movs	r1, #70
 5088 2fb0 2846     		mov	r0, r5
 5089 2fb2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5090 2fb6 0746     		mov	r7, r0
 5091 2fb8 0028     		cmp	r0, #0
 5092 2fba 40F0C185 		bne	.L1795
 5093              	.L617:
 5094 2fbe 5421     		movs	r1, #84
 5095 2fc0 2846     		mov	r0, r5
 5096 2fc2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5097 2fc6 0028     		cmp	r0, #0
 5098 2fc8 40F0D784 		bne	.L1796
 5099 2fcc 5A21     		movs	r1, #90
 5100 2fce 2846     		mov	r0, r5
 5101 2fd0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5102 2fd4 0028     		cmp	r0, #0
 5103 2fd6 40F06A85 		bne	.L623
 5104 2fda B8F1000F 		cmp	r8, #0
 5105 2fde 42F08A81 		bne	.L1797
 5106 2fe2 04F21C63 		addw	r3, r4, #1564
 5107 2fe6 93ED008A 		vldr.32	s16, [r3]
 5108 2fea 18EE100A 		vmov	r0, s16
 5109 2fee FFF7FEFF 		bl	__aeabi_f2d
 5110 2ff2 04F22C63 		addw	r3, r4, #1580
 5111 2ff6 8046     		mov	r8, r0
 5112 2ff8 1868     		ldr	r0, [r3]	@ float
 5113 2ffa 8946     		mov	r9, r1
 5114 2ffc FFF7FEFF 		bl	__aeabi_f2d
 5115 3000 04F5C563 		add	r3, r4, #1576
 5116 3004 93ED007A 		vldr.32	s14, [r3]
 5117 3008 DFED666A 		vldr.32	s13, .L1893+4
 5118 300c 04F22463 		addw	r3, r4, #1572
 5119 3010 D3ED007A 		vldr.32	s15, [r3]
 5120 3014 27EE267A 		vmul.f32	s14, s14, s13
 5121 3018 04F5C463 		add	r3, r4, #1568
 5122 301c 67EEA67A 		vmul.f32	s15, s15, s13
 5123 3020 BDEEC77A 		vcvt.s32.f32	s14, s14
 5124 3024 D3ED006A 		vldr.32	s13, [r3]
 5125 3028 8DED037A 		vstr.32	s14, [sp, #12]	@ int
 5126 302c 38EE267A 		vadd.f32	s14, s16, s13
 5127 3030 FDEEE77A 		vcvt.s32.f32	s15, s15
 5128 3034 CDE90401 		strd	r0, [sp, #16]
 5129 3038 17EE100A 		vmov	r0, s14
 5130 303c CDED027A 		vstr.32	s15, [sp, #8]	@ int
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 91


 5131 3040 FFF7FEFF 		bl	__aeabi_f2d
 5132 3044 4246     		mov	r2, r8
 5133 3046 CDE90001 		strd	r0, [sp]
 5134 304a 4B46     		mov	r3, r9
 5135 304c 5649     		ldr	r1, .L1893+8
 5136 304e 3046     		mov	r0, r6
 5137 3050 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5138 3054 0127     		movs	r7, #1
 5139 3056 0C98     		ldr	r0, [sp, #48]
 5140 3058 FEF710B8 		b	.L189
 5141              	.L184:
 5142 305c 504B     		ldr	r3, .L1893
 5143 305e 3246     		mov	r2, r6
 5144 3060 D868     		ldr	r0, [r3, #12]
 5145 3062 2946     		mov	r1, r5
 5146 3064 FFF7FEFF 		bl	_ZN4Move22ConfigureAccelerationsER11GCodeBufferRK9StringRef
 5147 3068 0746     		mov	r7, r0
 5148 306a 0C98     		ldr	r0, [sp, #48]
 5149 306c FEF706B8 		b	.L189
 5150              	.L183:
 5151 3070 4421     		movs	r1, #68
 5152 3072 2846     		mov	r0, r5
 5153 3074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5154 3078 0746     		mov	r7, r0
 5155 307a 0028     		cmp	r0, #0
 5156 307c 40F0A387 		bne	.L1798
 5157 3080 AB68     		ldr	r3, [r5, #8]
 5158 3082 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5159 3084 5B06     		lsls	r3, r3, #25
 5160 3086 00F16087 		bmi	.L571
 5161 308a 4849     		ldr	r1, .L1893+12
 5162 308c 3046     		mov	r0, r6
 5163 308e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5164 3092 0127     		movs	r7, #1
 5165 3094 0C98     		ldr	r0, [sp, #48]
 5166 3096 FDF7F1BF 		b	.L189
 5167              	.L182:
 5168 309a 5021     		movs	r1, #80
 5169 309c 2846     		mov	r0, r5
 5170 309e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5171 30a2 28B1     		cbz	r0, .L529
 5172 30a4 2846     		mov	r0, r5
 5173 30a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5174 30aa 0028     		cmp	r0, #0
 5175 30ac 42F06480 		bne	.L1799
 5176              	.L529:
 5177 30b0 3B48     		ldr	r0, .L1893
 5178 30b2 A98F     		ldrh	r1, [r5, #60]
 5179 30b4 FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 5180 30b8 0127     		movs	r7, #1
 5181 30ba 0C98     		ldr	r0, [sp, #48]
 5182 30bc FDF7DEBF 		b	.L189
 5183              	.L1024:
 5184 30c0 0020     		movs	r0, #0
 5185 30c2 0427     		movs	r7, #4
 5186 30c4 FDF7DABF 		b	.L189
 5187              	.L181:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 92


 5188 30c8 2046     		mov	r0, r4
 5189 30ca FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 5190 30ce 0127     		movs	r7, #1
 5191 30d0 0C98     		ldr	r0, [sp, #48]
 5192 30d2 FDF7D3BF 		b	.L189
 5193              	.L1053:
 5194 30d6 3527     		movs	r7, #53
 5195              	.L517:
 5196 30d8 0023     		movs	r3, #0
 5197 30da 5321     		movs	r1, #83
 5198 30dc 2846     		mov	r0, r5
 5199 30de 8DF85031 		strb	r3, [sp, #336]
 5200 30e2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5201 30e6 0028     		cmp	r0, #0
 5202 30e8 41F06582 		bne	.L1800
 5203              	.L524:
 5204 30ec 0C98     		ldr	r0, [sp, #48]
 5205 30ee 0127     		movs	r7, #1
 5206 30f0 FDF7C4BF 		b	.L189
 5207              	.L1054:
 5208 30f4 40F20447 		movw	r7, #1028
 5209 30f8 EEE7     		b	.L517
 5210              	.L523:
 5211 30fa 2027     		movs	r7, #32
 5212 30fc ECE7     		b	.L517
 5213              	.L522:
 5214 30fe 1027     		movs	r7, #16
 5215 3100 EAE7     		b	.L517
 5216              	.L521:
 5217 3102 0127     		movs	r7, #1
 5218 3104 E8E7     		b	.L517
 5219              	.L958:
 5220 3106 2A49     		ldr	r1, .L1893+16
 5221 3108 3046     		mov	r0, r6
 5222 310a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5223 310e 0227     		movs	r7, #2
 5224 3110 0C98     		ldr	r0, [sp, #48]
 5225 3112 FDF7B3BF 		b	.L189
 5226              	.L717:
 5227 3116 0998     		ldr	r0, [sp, #36]
 5228 3118 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 5229 311c 0090     		str	r0, [sp]
 5230 311e 0898     		ldr	r0, [sp, #32]
 5231 3120 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5232 3124 4FF0020B 		mov	fp, #2
 5233 3128 FFF756BA 		b	.L716
 5234              	.L966:
 5235 312c 2149     		ldr	r1, .L1893+20
 5236 312e 3046     		mov	r0, r6
 5237 3130 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5238 3134 0227     		movs	r7, #2
 5239 3136 0C98     		ldr	r0, [sp, #48]
 5240 3138 FDF7A0BF 		b	.L189
 5241              	.L176:
 5242 313c AB68     		ldr	r3, [r5, #8]
 5243 313e 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 5244 3140 6FF30002 		bfc	r2, #0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 93


 5245 3144 1A76     		strb	r2, [r3, #24]
 5246 3146 0020     		movs	r0, #0
 5247 3148 0127     		movs	r7, #1
 5248 314a FDF797BF 		b	.L189
 5249              	.L178:
 5250 314e 2046     		mov	r0, r4
 5251 3150 3146     		mov	r1, r6
 5252 3152 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 5253 3156 0127     		movs	r7, #1
 5254 3158 0C98     		ldr	r0, [sp, #48]
 5255 315a FDF78FBF 		b	.L189
 5256              	.L180:
 5257 315e 5321     		movs	r1, #83
 5258 3160 2846     		mov	r0, r5
 5259 3162 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5260 3166 0028     		cmp	r0, #0
 5261 3168 00F08B81 		beq	.L488
 5262 316c 2846     		mov	r0, r5
 5263 316e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5264 3172 5021     		movs	r1, #80
 5265 3174 071C     		adds	r7, r0, #0
 5266 3176 2846     		mov	r0, r5
 5267 3178 18BF     		it	ne
 5268 317a 0127     		movne	r7, #1
 5269 317c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5270 3180 0028     		cmp	r0, #0
 5271 3182 01F01884 		beq	.L489
 5272 3186 2846     		mov	r0, r5
 5273 3188 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5274 318c 3A46     		mov	r2, r7
 5275 318e C1B2     		uxtb	r1, r0
 5276 3190 0348     		ldr	r0, .L1893
 5277 3192 FFF7FEFF 		bl	_ZN6RepRap8SetDebugE6Moduleb
 5278 3196 0127     		movs	r7, #1
 5279 3198 0C98     		ldr	r0, [sp, #48]
 5280 319a FDF76FBF 		b	.L189
 5281              	.L1894:
 5282 319e 00BF     		.align	2
 5283              	.L1893:
 5284 31a0 00000000 		.word	reprap
 5285 31a4 00007042 		.word	1114636288
 5286 31a8 98080000 		.word	.LC104
 5287 31ac E8070000 		.word	.LC96
 5288 31b0 68110000 		.word	.LC177
 5289 31b4 9C110000 		.word	.LC179
 5290              	.L1769:
 5291 31b8 4521     		movs	r1, #69
 5292 31ba 2846     		mov	r0, r5
 5293 31bc 5646     		mov	r6, r10
 5294 31be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5295 31c2 0028     		cmp	r0, #0
 5296 31c4 41F0D280 		bne	.L1018
 5297 31c8 BBF1000F 		cmp	fp, #0
 5298 31cc 01F06384 		beq	.L605
 5299 31d0 0C98     		ldr	r0, [sp, #48]
 5300 31d2 0127     		movs	r7, #1
 5301 31d4 FDF752BF 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 94


 5302              	.L1775:
 5303 31d8 4521     		movs	r1, #69
 5304 31da 2846     		mov	r0, r5
 5305 31dc 5E46     		mov	r6, fp
 5306 31de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5307 31e2 0028     		cmp	r0, #0
 5308 31e4 40F0FA84 		bne	.L1017
 5309 31e8 BAF1000F 		cmp	r10, #0
 5310 31ec 01F0EB83 		beq	.L588
 5311 31f0 0C98     		ldr	r0, [sp, #48]
 5312 31f2 0127     		movs	r7, #1
 5313 31f4 FDF742BF 		b	.L189
 5314              	.L1783:
 5315 31f8 079E     		ldr	r6, [sp, #28]
 5316              	.L969:
 5317 31fa 4521     		movs	r1, #69
 5318 31fc 2846     		mov	r0, r5
 5319 31fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5320 3202 0028     		cmp	r0, #0
 5321 3204 40F0B085 		bne	.L1801
 5322 3208 40F28A33 		movw	r3, #906
 5323 320c 9F42     		cmp	r7, r3
 5324 320e 02F0ED80 		beq	.L1802
 5325 3212 BBF1000F 		cmp	fp, #0
 5326 3216 42F0DA80 		bne	.L1803
 5327 321a 40F29133 		movw	r3, #913
 5328 321e 9F42     		cmp	r7, r3
 5329 3220 02F06680 		beq	.L1133
 5330 3224 40F29533 		movw	r3, #917
 5331 3228 9F42     		cmp	r7, r3
 5332 322a 41F05785 		bne	.L1020
 5333 322e CC49     		ldr	r1, .L1895
 5334              	.L982:
 5335 3230 3046     		mov	r0, r6
 5336 3232 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5337 3236 D4F85C33 		ldr	r3, [r4, #860]
 5338 323a DBB1     		cbz	r3, .L986
 5339 323c DFF850A3 		ldr	r10, .L1895+48
 5340 3240 04F21959 		addw	r9, r4, #1305
 5341 3244 4FF00008 		mov	r8, #0
 5342              	.L987:
 5343 3248 4146     		mov	r1, r8
 5344 324a 3A46     		mov	r2, r7
 5345 324c 6068     		ldr	r0, [r4, #4]
 5346 324e 19F801BF 		ldrb	fp, [r9, #1]!	@ zero_extendqisi2
 5347 3252 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 5348 3256 FDEEC07A 		vcvt.s32.f32	s15, s0
 5349 325a 5A46     		mov	r2, fp
 5350 325c 17EE903A 		vmov	r3, s15	@ int
 5351 3260 5146     		mov	r1, r10
 5352 3262 3046     		mov	r0, r6
 5353 3264 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5354 3268 D4F85C33 		ldr	r3, [r4, #860]
 5355 326c 08F10108 		add	r8, r8, #1
 5356 3270 4345     		cmp	r3, r8
 5357 3272 E9D8     		bhi	.L987
 5358              	.L986:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 95


 5359 3274 BB49     		ldr	r1, .L1895+4
 5360 3276 3046     		mov	r0, r6
 5361 3278 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5362 327c D4F86433 		ldr	r3, [r4, #868]
 5363 3280 C3B1     		cbz	r3, .L984
 5364 3282 DFF81093 		ldr	r9, .L1895+52
 5365 3286 4FF00008 		mov	r8, #0
 5366              	.L985:
 5367 328a D4F85C13 		ldr	r1, [r4, #860]
 5368 328e 6068     		ldr	r0, [r4, #4]
 5369 3290 4144     		add	r1, r1, r8
 5370 3292 3A46     		mov	r2, r7
 5371 3294 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 5372 3298 FDEEC07A 		vcvt.s32.f32	s15, s0
 5373 329c 4946     		mov	r1, r9
 5374 329e 17EE902A 		vmov	r2, s15	@ int
 5375 32a2 3046     		mov	r0, r6
 5376 32a4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5377 32a8 D4F86433 		ldr	r3, [r4, #868]
 5378 32ac 08F10108 		add	r8, r8, #1
 5379 32b0 4345     		cmp	r3, r8
 5380 32b2 EAD8     		bhi	.L985
 5381              	.L984:
 5382 32b4 40F28A33 		movw	r3, #906
 5383 32b8 9F42     		cmp	r7, r3
 5384 32ba 02F07083 		beq	.L1804
 5385 32be 0C98     		ldr	r0, [sp, #48]
 5386 32c0 0127     		movs	r7, #1
 5387 32c2 FDF7DBBE 		b	.L189
 5388              	.L1738:
 5389 32c6 BBF1000F 		cmp	fp, #0
 5390 32ca 00F04387 		beq	.L884
 5391 32ce 0C98     		ldr	r0, [sp, #48]
 5392 32d0 0127     		movs	r7, #1
 5393 32d2 FDF7D3BE 		b	.L189
 5394              	.L1773:
 5395 32d6 089E     		ldr	r6, [sp, #32]
 5396 32d8 BBF1000F 		cmp	fp, #0
 5397 32dc 00F0C884 		beq	.L638
 5398 32e0 0C98     		ldr	r0, [sp, #48]
 5399 32e2 0127     		movs	r7, #1
 5400 32e4 FDF7CABE 		b	.L189
 5401              	.L1764:
 5402 32e8 4521     		movs	r1, #69
 5403 32ea 2846     		mov	r0, r5
 5404 32ec 5E46     		mov	r6, fp
 5405 32ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5406 32f2 0028     		cmp	r0, #0
 5407 32f4 40F0EF85 		bne	.L832
 5408 32f8 BAF1000F 		cmp	r10, #0
 5409 32fc 01F09A84 		beq	.L841
 5410 3300 0C98     		ldr	r0, [sp, #48]
 5411 3302 0127     		movs	r7, #1
 5412 3304 FDF7BABE 		b	.L189
 5413              	.L636:
 5414 3308 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 5415 330c CB46     		mov	fp, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 96


 5416 330e FFF72CBA 		b	.L633
 5417              	.L1766:
 5418 3312 4521     		movs	r1, #69
 5419 3314 2846     		mov	r0, r5
 5420 3316 B846     		mov	r8, r7
 5421 3318 089E     		ldr	r6, [sp, #32]
 5422 331a 5F46     		mov	r7, fp
 5423 331c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5424 3320 0028     		cmp	r0, #0
 5425 3322 41F08F82 		bne	.L720
 5426 3326 4346     		mov	r3, r8
 5427 3328 002B     		cmp	r3, #0
 5428 332a 01F0DA84 		beq	.L721
 5429 332e 0C98     		ldr	r0, [sp, #48]
 5430 3330 FDF7A4BE 		b	.L189
 5431              	.L1742:
 5432 3334 4521     		movs	r1, #69
 5433 3336 2846     		mov	r0, r5
 5434 3338 4E46     		mov	r6, r9
 5435 333a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5436 333e 0028     		cmp	r0, #0
 5437 3340 41F09A81 		bne	.L1013
 5438 3344 BAF1000F 		cmp	r10, #0
 5439 3348 01F08485 		beq	.L463
 5440              	.L458:
 5441 334c 864B     		ldr	r3, .L1895+8
 5442 334e 0122     		movs	r2, #1
 5443 3350 D868     		ldr	r0, [r3, #12]
 5444 3352 04F1EC01 		add	r1, r4, #236
 5445 3356 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 5446 335a 0127     		movs	r7, #1
 5447 335c 0C98     		ldr	r0, [sp, #48]
 5448 335e FDF78DBE 		b	.L189
 5449              	.L740:
 5450 3362 5321     		movs	r1, #83
 5451 3364 2846     		mov	r0, r5
 5452 3366 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5453 336a 0028     		cmp	r0, #0
 5454 336c 41F01E84 		bne	.L1805
 5455 3370 0746     		mov	r7, r0
 5456              	.L743:
 5457 3372 5221     		movs	r1, #82
 5458 3374 2846     		mov	r0, r5
 5459 3376 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5460 337a 0028     		cmp	r0, #0
 5461 337c 41F01084 		bne	.L1806
 5462 3380 4FF0FF32 		mov	r2, #-1
 5463              	.L744:
 5464 3384 236D     		ldr	r3, [r4, #80]
 5465 3386 1968     		ldr	r1, [r3]
 5466 3388 A942     		cmp	r1, r5
 5467 338a 01F01285 		beq	.L745
 5468              	.L748:
 5469 338e 0223     		movs	r3, #2
 5470              	.L746:
 5471 3390 3946     		mov	r1, r7
 5472 3392 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 97


 5473 3394 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 5474 3398 071C     		adds	r7, r0, #0
 5475 339a 0C90     		str	r0, [sp, #48]
 5476 339c 18BF     		it	ne
 5477 339e 0127     		movne	r7, #1
 5478 33a0 FDF76CBE 		b	.L189
 5479              	.L388:
 5480 33a4 202F     		cmp	r7, #32
 5481 33a6 01F0F283 		beq	.L390
 5482              	.L393:
 5483 33aa 0DF5A878 		add	r8, sp, #336
 5484 33ae 0022     		movs	r2, #0
 5485 33b0 7923     		movs	r3, #121
 5486 33b2 12A9     		add	r1, sp, #72
 5487 33b4 2846     		mov	r0, r5
 5488 33b6 88F80020 		strb	r2, [r8]
 5489 33ba CDE91283 		strd	r8, r3, [sp, #72]
 5490 33be FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 5491 33c2 0028     		cmp	r0, #0
 5492 33c4 01F08D81 		beq	.L1807
 5493 33c8 3246     		mov	r2, r6
 5494 33ca 4146     		mov	r1, r8
 5495 33cc 2046     		mov	r0, r4
 5496 33ce FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 5497 33d2 0028     		cmp	r0, #0
 5498 33d4 42F06382 		bne	.L1808
 5499 33d8 0227     		movs	r7, #2
 5500              	.L394:
 5501 33da 0C98     		ldr	r0, [sp, #48]
 5502 33dc FDF74EBE 		b	.L189
 5503              	.L476:
 5504 33e0 5321     		movs	r1, #83
 5505 33e2 2846     		mov	r0, r5
 5506 33e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5507 33e8 0028     		cmp	r0, #0
 5508 33ea 41F0CF84 		bne	.L478
 5509 33ee 0C98     		ldr	r0, [sp, #48]
 5510 33f0 0127     		movs	r7, #1
 5511 33f2 FDF743BE 		b	.L189
 5512              	.L1028:
 5513 33f6 9946     		mov	r9, r3
 5514              	.L353:
 5515 33f8 4521     		movs	r1, #69
 5516 33fa 2846     		mov	r0, r5
 5517 33fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5518 3400 0746     		mov	r7, r0
 5519 3402 0028     		cmp	r0, #0
 5520 3404 41F0FD86 		bne	.L1809
 5521              	.L356:
 5522 3408 5321     		movs	r1, #83
 5523 340a 2846     		mov	r0, r5
 5524 340c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5525 3410 0028     		cmp	r0, #0
 5526 3412 41F0CB87 		bne	.L1810
 5527 3416 B9F1000F 		cmp	r9, #0
 5528 341a 42F09F81 		bne	.L1811
 5529 341e 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 98


 5530 3420 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 5531 3424 0127     		movs	r7, #1
 5532 3426 0C98     		ldr	r0, [sp, #48]
 5533 3428 FDF728BE 		b	.L189
 5534              	.L493:
 5535 342c 6068     		ldr	r0, [r4, #4]
 5536 342e FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 5537 3432 4E4B     		ldr	r3, .L1895+12
 5538 3434 0090     		str	r0, [sp]
 5539 3436 4E4A     		ldr	r2, .L1895+16
 5540 3438 4E49     		ldr	r1, .L1895+20
 5541 343a 3046     		mov	r0, r6
 5542 343c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5543 3440 FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 5544 3444 20B1     		cbz	r0, .L494
 5545 3446 0246     		mov	r2, r0
 5546 3448 4B49     		ldr	r1, .L1895+24
 5547 344a 3046     		mov	r0, r6
 5548 344c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5549              	.L494:
 5550 3450 FFF7FEFF 		bl	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv
 5551 3454 20B1     		cbz	r0, .L495
 5552 3456 0246     		mov	r2, r0
 5553 3458 4749     		ldr	r1, .L1895+24
 5554 345a 3046     		mov	r0, r6
 5555 345c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5556              	.L495:
 5557 3460 464A     		ldr	r2, .L1895+28
 5558 3462 4749     		ldr	r1, .L1895+32
 5559 3464 3046     		mov	r0, r6
 5560 3466 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5561 346a 0127     		movs	r7, #1
 5562 346c 0C98     		ldr	r0, [sp, #48]
 5563 346e FDF705BE 		b	.L189
 5564              	.L490:
 5565 3472 2046     		mov	r0, r4
 5566 3474 3146     		mov	r1, r6
 5567 3476 FFF7FEFF 		bl	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 5568 347a 0127     		movs	r7, #1
 5569 347c 0C98     		ldr	r0, [sp, #48]
 5570 347e FDF7FDBD 		b	.L189
 5571              	.L488:
 5572 3482 3948     		ldr	r0, .L1895+8
 5573 3484 FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 5574 3488 0127     		movs	r7, #1
 5575 348a 0C98     		ldr	r0, [sp, #48]
 5576 348c FDF7F6BD 		b	.L189
 5577              	.L917:
 5578 3490 354B     		ldr	r3, .L1895+8
 5579 3492 3946     		mov	r1, r7
 5580 3494 9868     		ldr	r0, [r3, #8]
 5581 3496 3246     		mov	r2, r6
 5582 3498 FFF7FEFF 		bl	_ZNK7Network15ReportProtocolsEjRK9StringRef
 5583 349c 0746     		mov	r7, r0
 5584 349e 0C98     		ldr	r0, [sp, #48]
 5585 34a0 FDF7ECBD 		b	.L189
 5586              	.L341:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 99


 5587 34a4 94F8B470 		ldrb	r7, [r4, #180]	@ zero_extendqisi2
 5588 34a8 012F     		cmp	r7, #1
 5589 34aa 01F09B86 		beq	.L343
 5590 34ae 022F     		cmp	r7, #2
 5591 34b0 01F07B86 		beq	.L344
 5592 34b4 0C98     		ldr	r0, [sp, #48]
 5593 34b6 0527     		movs	r7, #5
 5594 34b8 FDF7E0BD 		b	.L189
 5595              	.L807:
 5596 34bc 2A4F     		ldr	r7, .L1895+8
 5597 34be 0146     		mov	r1, r0
 5598 34c0 F868     		ldr	r0, [r7, #12]
 5599 34c2 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 5600 34c6 F868     		ldr	r0, [r7, #12]
 5601 34c8 0121     		movs	r1, #1
 5602 34ca 10EE108A 		vmov	r8, s0
 5603 34ce FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 5604 34d2 F868     		ldr	r0, [r7, #12]
 5605 34d4 0221     		movs	r1, #2
 5606 34d6 10EE10AA 		vmov	r10, s0
 5607 34da FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 5608 34de 4046     		mov	r0, r8	@ float
 5609 34e0 8DED070A 		vstr.32	s0, [sp, #28]	@ int
 5610 34e4 FFF7FEFF 		bl	__aeabi_f2d
 5611 34e8 9DED070A 		vldr.32	s0, [sp, #28]	@ int
 5612 34ec 8046     		mov	r8, r0
 5613 34ee 10EE100A 		vmov	r0, s0
 5614 34f2 8946     		mov	r9, r1
 5615 34f4 FFF7FEFF 		bl	__aeabi_f2d
 5616 34f8 CDE90201 		strd	r0, [sp, #8]
 5617 34fc 5046     		mov	r0, r10	@ float
 5618 34fe FFF7FEFF 		bl	__aeabi_f2d
 5619 3502 4246     		mov	r2, r8
 5620 3504 CDE90001 		strd	r0, [sp]
 5621 3508 4B46     		mov	r3, r9
 5622 350a 1E49     		ldr	r1, .L1895+36
 5623 350c 3046     		mov	r0, r6
 5624 350e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5625 3512 0127     		movs	r7, #1
 5626 3514 0C98     		ldr	r0, [sp, #48]
 5627 3516 FDF7B1BD 		b	.L189
 5628              	.L990:
 5629 351a 54AA     		add	r2, sp, #336
 5630 351c 12A9     		add	r1, sp, #72
 5631 351e 6068     		ldr	r0, [r4, #4]
 5632 3520 FFF7FEFF 		bl	_ZN8Platform19GetAutoSaveSettingsERfS0_
 5633 3524 0028     		cmp	r0, #0
 5634 3526 01F0F185 		beq	.L996
 5635 352a 1298     		ldr	r0, [sp, #72]	@ float
 5636 352c FFF7FEFF 		bl	__aeabi_f2d
 5637 3530 8046     		mov	r8, r0
 5638 3532 5498     		ldr	r0, [sp, #336]	@ float
 5639 3534 8946     		mov	r9, r1
 5640 3536 FFF7FEFF 		bl	__aeabi_f2d
 5641 353a D4F8BC70 		ldr	r7, [r4, #188]
 5642 353e 124B     		ldr	r3, .L1895+40
 5643 3540 002F     		cmp	r7, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 100


 5644 3542 08BF     		it	eq
 5645 3544 1F46     		moveq	r7, r3
 5646 3546 CDE90001 		strd	r0, [sp]
 5647 354a 4246     		mov	r2, r8
 5648 354c 4B46     		mov	r3, r9
 5649 354e 0297     		str	r7, [sp, #8]
 5650 3550 0E49     		ldr	r1, .L1895+44
 5651 3552 3046     		mov	r0, r6
 5652 3554 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5653              	.L998:
 5654 3558 0C98     		ldr	r0, [sp, #48]
 5655 355a 0127     		movs	r7, #1
 5656 355c FDF78EBD 		b	.L189
 5657              	.L1896:
 5658              		.align	2
 5659              	.L1895:
 5660 3560 3C010000 		.word	.LC37
 5661 3564 880B0000 		.word	.LC122
 5662 3568 00000000 		.word	reprap
 5663 356c 10060000 		.word	.LC79
 5664 3570 20060000 		.word	.LC80
 5665 3574 48060000 		.word	.LC81
 5666 3578 80060000 		.word	.LC82
 5667 357c 88060000 		.word	.LC83
 5668 3580 98060000 		.word	.LC84
 5669 3584 B80D0000 		.word	.LC150
 5670 3588 2C000000 		.word	.LC17
 5671 358c 2C120000 		.word	.LC186
 5672 3590 EC110000 		.word	.LC182
 5673 3594 F4110000 		.word	.LC183
 5674              	.L781:
 5675 3598 BF48     		ldr	r0, .L1897
 5676 359a FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 5677 359e BF49     		ldr	r1, .L1897+4
 5678 35a0 0246     		mov	r2, r0
 5679 35a2 3046     		mov	r0, r6
 5680 35a4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5681 35a8 FEF7EABE 		b	.L782
 5682              	.L1000:
 5683 35ac 6368     		ldr	r3, [r4, #4]
 5684 35ae BC4A     		ldr	r2, .L1897+8
 5685 35b0 D3F8DC0B 		ldr	r0, [r3, #3036]
 5686 35b4 BB49     		ldr	r1, .L1897+12
 5687 35b6 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 5688 35ba 0028     		cmp	r0, #0
 5689 35bc 41F0BE81 		bne	.L1001
 5690 35c0 B74A     		ldr	r2, .L1897+8
 5691 35c2 B949     		ldr	r1, .L1897+16
 5692 35c4 3046     		mov	r0, r6
 5693 35c6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5694 35ca 0227     		movs	r7, #2
 5695 35cc 0C98     		ldr	r0, [sp, #48]
 5696 35ce FDF755BD 		b	.L189
 5697              	.L954:
 5698 35d2 0C98     		ldr	r0, [sp, #48]
 5699 35d4 0127     		movs	r7, #1
 5700 35d6 FDF751BD 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 101


 5701              	.L816:
 5702 35da B449     		ldr	r1, .L1897+20
 5703 35dc 3046     		mov	r0, r6
 5704 35de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5705 35e2 0227     		movs	r7, #2
 5706 35e4 FEF740BE 		b	.L817
 5707              	.L812:
 5708 35e8 7923     		movs	r3, #121
 5709 35ea 3946     		mov	r1, r7
 5710 35ec 12A8     		add	r0, sp, #72
 5711 35ee CDE91283 		strd	r8, r3, [sp, #72]
 5712 35f2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5713 35f6 FEF717BE 		b	.L813
 5714              	.L530:
 5715 35fa 6368     		ldr	r3, [r4, #4]
 5716 35fc 9FEDAC7A 		vldr.32	s14, .L1897+24
 5717 3600 D3F83838 		ldr	r3, [r3, #2104]
 5718 3604 07EE903A 		vmov	s15, r3	@ int
 5719 3608 F8EE677A 		vcvt.f32.u32	s15, s15
 5720 360c 0127     		movs	r7, #1
 5721 360e C7EE877A 		vdiv.f32	s15, s15, s14
 5722 3612 17EE900A 		vmov	r0, s15
 5723 3616 FFF7FEFF 		bl	__aeabi_f2d
 5724 361a 0246     		mov	r2, r0
 5725 361c 0B46     		mov	r3, r1
 5726 361e 3046     		mov	r0, r6
 5727 3620 A449     		ldr	r1, .L1897+28
 5728 3622 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5729 3626 0C98     		ldr	r0, [sp, #48]
 5730 3628 FDF728BD 		b	.L189
 5731              	.L420:
 5732 362c A249     		ldr	r1, .L1897+32
 5733 362e 3046     		mov	r0, r6
 5734 3630 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5735 3634 0227     		movs	r7, #2
 5736 3636 FDF7C4BD 		b	.L421
 5737              	.L959:
 5738 363a A049     		ldr	r1, .L1897+36
 5739 363c 3046     		mov	r0, r6
 5740 363e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5741 3642 0227     		movs	r7, #2
 5742 3644 0C98     		ldr	r0, [sp, #48]
 5743 3646 FDF719BD 		b	.L189
 5744              	.L704:
 5745 364a 934B     		ldr	r3, .L1897
 5746 364c 3146     		mov	r1, r6
 5747 364e 1869     		ldr	r0, [r3, #16]
 5748 3650 FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 5749 3654 0127     		movs	r7, #1
 5750 3656 0C98     		ldr	r0, [sp, #48]
 5751 3658 FDF710BD 		b	.L189
 5752              	.L999:
 5753 365c 6368     		ldr	r3, [r4, #4]
 5754 365e 03F5F363 		add	r3, r3, #1944
 5755 3662 0127     		movs	r7, #1
 5756 3664 1868     		ldr	r0, [r3]	@ float
 5757 3666 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 102


 5758 366a 0246     		mov	r2, r0
 5759 366c 0B46     		mov	r3, r1
 5760 366e 3046     		mov	r0, r6
 5761 3670 9349     		ldr	r1, .L1897+40
 5762 3672 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5763 3676 0C98     		ldr	r0, [sp, #48]
 5764 3678 FDF700BD 		b	.L189
 5765              	.L416:
 5766 367c 9149     		ldr	r1, .L1897+44
 5767 367e 3046     		mov	r0, r6
 5768 3680 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5769 3684 0127     		movs	r7, #1
 5770 3686 0C98     		ldr	r0, [sp, #48]
 5771 3688 FDF7F8BC 		b	.L189
 5772              	.L417:
 5773 368c 8A49     		ldr	r1, .L1897+32
 5774 368e 3046     		mov	r0, r6
 5775 3690 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5776 3694 0227     		movs	r7, #2
 5777 3696 FDF7DABD 		b	.L419
 5778              	.L424:
 5779 369a 10AB     		add	r3, sp, #64
 5780 369c 5246     		mov	r2, r10
 5781 369e 5321     		movs	r1, #83
 5782 36a0 2846     		mov	r0, r5
 5783 36a2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 5784 36a6 9DF84030 		ldrb	r3, [sp, #64]	@ zero_extendqisi2
 5785 36aa 002B     		cmp	r3, #0
 5786 36ac 41F03C85 		bne	.L1812
 5787 36b0 04F21463 		addw	r3, r4, #1556
 5788 36b4 94F81816 		ldrb	r1, [r4, #1560]	@ zero_extendqisi2
 5789 36b8 834A     		ldr	r2, .L1897+48
 5790 36ba 844F     		ldr	r7, .L1897+52
 5791 36bc 1868     		ldr	r0, [r3]	@ float
 5792 36be 0029     		cmp	r1, #0
 5793 36c0 18BF     		it	ne
 5794 36c2 1746     		movne	r7, r2
 5795 36c4 FFF7FEFF 		bl	__aeabi_f2d
 5796 36c8 CDE90201 		strd	r0, [sp, #8]
 5797 36cc 724B     		ldr	r3, .L1897
 5798 36ce DB68     		ldr	r3, [r3, #12]
 5799 36d0 D86B     		ldr	r0, [r3, #60]	@ float
 5800 36d2 FFF7FEFF 		bl	__aeabi_f2d
 5801 36d6 3A46     		mov	r2, r7
 5802 36d8 CDE90001 		strd	r0, [sp]
 5803 36dc 7C49     		ldr	r1, .L1897+56
 5804 36de 3046     		mov	r0, r6
 5805 36e0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5806 36e4 0127     		movs	r7, #1
 5807 36e6 FEF783B8 		b	.L426
 5808              	.L346:
 5809 36ea 94F8B470 		ldrb	r7, [r4, #180]	@ zero_extendqisi2
 5810 36ee 022F     		cmp	r7, #2
 5811 36f0 02F03881 		beq	.L347
 5812 36f4 0C98     		ldr	r0, [sp, #48]
 5813 36f6 0527     		movs	r7, #5
 5814 36f8 FDF7C0BC 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 103


 5815              	.L866:
 5816 36fc 7549     		ldr	r1, .L1897+60
 5817 36fe 3046     		mov	r0, r6
 5818 3700 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5819 3704 D4F86433 		ldr	r3, [r4, #868]
 5820 3708 002B     		cmp	r3, #0
 5821 370a 02F0C482 		beq	.L1813
 5822 370e 4FF00008 		mov	r8, #0
 5823 3712 4FF00009 		mov	r9, #0
 5824 3716 DFF8DCB1 		ldr	fp, .L1897+92
 5825 371a 4FF03A0A 		mov	r10, #58
 5826 371e 14E0     		b	.L874
 5827              	.L1815:
 5828 3720 6368     		ldr	r3, [r4, #4]
 5829 3722 03EB8703 		add	r3, r3, r7, lsl #2
 5830 3726 D3F83C02 		ldr	r0, [r3, #572]	@ float
 5831 372a FFF7FEFF 		bl	__aeabi_f2d
 5832              	.L875:
 5833 372e CDE90001 		strd	r0, [sp]
 5834 3732 5246     		mov	r2, r10
 5835 3734 5946     		mov	r1, fp
 5836 3736 3046     		mov	r0, r6
 5837 3738 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5838 373c D4F86433 		ldr	r3, [r4, #868]
 5839 3740 0137     		adds	r7, r7, #1
 5840 3742 BB42     		cmp	r3, r7
 5841 3744 4FF02C0A 		mov	r10, #44
 5842 3748 5AD9     		bls	.L1814
 5843              	.L874:
 5844 374a 082F     		cmp	r7, #8
 5845 374c E8D9     		bls	.L1815
 5846 374e 4046     		mov	r0, r8
 5847 3750 4946     		mov	r1, r9
 5848 3752 ECE7     		b	.L875
 5849              	.L734:
 5850 3754 0C98     		ldr	r0, [sp, #48]
 5851 3756 0127     		movs	r7, #1
 5852 3758 FDF790BC 		b	.L189
 5853              	.L799:
 5854 375c 5E49     		ldr	r1, .L1897+64
 5855 375e 3046     		mov	r0, r6
 5856 3760 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5857 3764 6068     		ldr	r0, [r4, #4]
 5858 3766 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5859 376a 0528     		cmp	r0, #5
 5860 376c 02F29782 		bhi	.L800
 5861 3770 DFE800F0 		tbb	[pc, r0]
 5862              	.L802:
 5863 3774 23       		.byte	(.L801-.L802)/2
 5864 3775 23       		.byte	(.L801-.L802)/2
 5865 3776 1B       		.byte	(.L803-.L802)/2
 5866 3777 13       		.byte	(.L804-.L802)/2
 5867 3778 0B       		.byte	(.L805-.L802)/2
 5868 3779 03       		.byte	(.L806-.L802)/2
 5869              		.p2align 1
 5870              	.L806:
 5871 377a 5849     		ldr	r1, .L1897+68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 104


 5872 377c 3046     		mov	r0, r6
 5873 377e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5874 3782 0127     		movs	r7, #1
 5875 3784 0C98     		ldr	r0, [sp, #48]
 5876 3786 FDF779BC 		b	.L189
 5877              	.L805:
 5878 378a 5549     		ldr	r1, .L1897+72
 5879 378c 3046     		mov	r0, r6
 5880 378e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5881 3792 0127     		movs	r7, #1
 5882 3794 0C98     		ldr	r0, [sp, #48]
 5883 3796 FDF771BC 		b	.L189
 5884              	.L804:
 5885 379a 5249     		ldr	r1, .L1897+76
 5886 379c 3046     		mov	r0, r6
 5887 379e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5888 37a2 0127     		movs	r7, #1
 5889 37a4 0C98     		ldr	r0, [sp, #48]
 5890 37a6 FDF769BC 		b	.L189
 5891              	.L803:
 5892 37aa 4F49     		ldr	r1, .L1897+80
 5893 37ac 3046     		mov	r0, r6
 5894 37ae FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5895 37b2 0127     		movs	r7, #1
 5896 37b4 0C98     		ldr	r0, [sp, #48]
 5897 37b6 FDF761BC 		b	.L189
 5898              	.L801:
 5899 37ba 4C49     		ldr	r1, .L1897+84
 5900 37bc 3046     		mov	r0, r6
 5901 37be FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5902 37c2 0127     		movs	r7, #1
 5903 37c4 0C98     		ldr	r0, [sp, #48]
 5904 37c6 FDF759BC 		b	.L189
 5905              	.L640:
 5906 37ca 04F25C53 		addw	r3, r4, #1372
 5907 37ce 0127     		movs	r7, #1
 5908 37d0 1868     		ldr	r0, [r3]	@ float
 5909 37d2 FFF7FEFF 		bl	__aeabi_f2d
 5910 37d6 0246     		mov	r2, r0
 5911 37d8 0B46     		mov	r3, r1
 5912 37da 3046     		mov	r0, r6
 5913 37dc 4449     		ldr	r1, .L1897+88
 5914 37de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5915 37e2 0C98     		ldr	r0, [sp, #48]
 5916 37e4 FDF74ABC 		b	.L189
 5917              	.L1784:
 5918 37e8 2B4B     		ldr	r3, .L1897
 5919 37ea D869     		ldr	r0, [r3, #28]
 5920 37ec 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 5921 37ee 002B     		cmp	r3, #0
 5922 37f0 3FF489AC 		beq	.L958
 5923 37f4 FFF7FEFF 		bl	_ZN7Scanner8RegisterEv
 5924 37f8 0027     		movs	r7, #0
 5925 37fa 0C98     		ldr	r0, [sp, #48]
 5926 37fc FDF73EBC 		b	.L189
 5927              	.L1814:
 5928 3800 0C98     		ldr	r0, [sp, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 105


 5929 3802 0127     		movs	r7, #1
 5930 3804 FDF73ABC 		b	.L189
 5931              	.L554:
 5932 3808 5321     		movs	r1, #83
 5933 380a 2846     		mov	r0, r5
 5934 380c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5935 3810 30B1     		cbz	r0, .L556
 5936 3812 2846     		mov	r0, r5
 5937 3814 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5938 3818 0128     		cmp	r0, #1
 5939 381a 0746     		mov	r7, r0
 5940 381c 02F08A84 		beq	.L1816
 5941              	.L556:
 5942 3820 DBF81000 		ldr	r0, [fp, #16]
 5943 3824 4146     		mov	r1, r8
 5944 3826 0022     		movs	r2, #0
 5945 3828 FFF7FEFF 		bl	_ZN4Heat7StandbyEaPK4Tool
 5946 382c 0127     		movs	r7, #1
 5947 382e 0C98     		ldr	r0, [sp, #48]
 5948 3830 FDF724BC 		b	.L189
 5949              	.L1128:
 5950 3834 0127     		movs	r7, #1
 5951 3836 FDF721BC 		b	.L189
 5952              	.L479:
 5953 383a 1748     		ldr	r0, .L1897
 5954 383c FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 5955 3840 8046     		mov	r8, r0
 5956 3842 FDF759BC 		b	.L480
 5957              	.L1774:
 5958 3846 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 5959 3848 9DED540A 		vldr.32	s0, [sp, #336]
 5960 384c 6068     		ldr	r0, [r4, #4]
 5961 384e C2F30012 		ubfx	r2, r2, #4, #1
 5962 3852 5146     		mov	r1, r10
 5963 3854 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 5964 3858 AB68     		ldr	r3, [r5, #8]
 5965 385a 9DED550A 		vldr.32	s0, [sp, #340]
 5966 385e 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 5967 3860 6068     		ldr	r0, [r4, #4]
 5968 3862 5146     		mov	r1, r10
 5969 3864 C2F30012 		ubfx	r2, r2, #4, #1
 5970 3868 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 5971 386c CB46     		mov	fp, r9
 5972 386e FEF77CBF 		b	.L633
 5973              	.L898:
 5974 3872 2846     		mov	r0, r5
 5975 3874 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5976 3878 D4F85C33 		ldr	r3, [r4, #860]
 5977 387c 0028     		cmp	r0, #0
 5978 387e D4BF     		ite	le
 5979 3880 4FF00009 		movle	r9, #0
 5980 3884 4FF00109 		movgt	r9, #1
 5981 3888 002B     		cmp	r3, #0
 5982 388a 00F03187 		beq	.L902
 5983 388e 04F20F58 		addw	r8, r4, #1295
 5984 3892 0027     		movs	r7, #0
 5985 3894 36E0     		b	.L903
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 106


 5986              	.L1898:
 5987 3896 00BF     		.align	2
 5988              	.L1897:
 5989 3898 00000000 		.word	reprap
 5990 389c E80C0000 		.word	.LC138
 5991 38a0 D0120000 		.word	.LC191
 5992 38a4 3C000000 		.word	.LC19
 5993 38a8 E8120000 		.word	.LC192
 5994 38ac FC030000 		.word	.LC61
 5995 38b0 00007A44 		.word	1148846080
 5996 38b4 EC060000 		.word	.LC89
 5997 38b8 B8020000 		.word	.LC51
 5998 38bc D8110000 		.word	.LC181
 5999 38c0 78120000 		.word	.LC188
 6000 38c4 D4030000 		.word	.LC59
 6001 38c8 10000000 		.word	.LC12
 6002 38cc 14000000 		.word	.LC13
 6003 38d0 44040000 		.word	.LC63
 6004 38d4 F40F0000 		.word	.LC161
 6005 38d8 4C0D0000 		.word	.LC143
 6006 38dc 9C0D0000 		.word	.LC148
 6007 38e0 900D0000 		.word	.LC147
 6008 38e4 880D0000 		.word	.LC146
 6009 38e8 800D0000 		.word	.LC145
 6010 38ec 580D0000 		.word	.LC144
 6011 38f0 24090000 		.word	.LC108
 6012 38f4 10100000 		.word	.LC162
 6013              	.L904:
 6014 38f8 D4F85C33 		ldr	r3, [r4, #860]
 6015 38fc 0137     		adds	r7, r7, #1
 6016 38fe BB42     		cmp	r3, r7
 6017 3900 40F2F686 		bls	.L902
 6018              	.L903:
 6019 3904 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 6020 3908 2846     		mov	r0, r5
 6021 390a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6022 390e 0028     		cmp	r0, #0
 6023 3910 F2D0     		beq	.L904
 6024 3912 3946     		mov	r1, r7
 6025 3914 6068     		ldr	r0, [r4, #4]
 6026 3916 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 6027 391a 4845     		cmp	r0, r9
 6028 391c ECD0     		beq	.L904
 6029 391e 0027     		movs	r7, #0
 6030              	.L900:
 6031 3920 4521     		movs	r1, #69
 6032 3922 2846     		mov	r0, r5
 6033 3924 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6034 3928 0028     		cmp	r0, #0
 6035 392a 41F05086 		bne	.L905
 6036 392e 0C98     		ldr	r0, [sp, #48]
 6037 3930 FDF7A4BB 		b	.L189
 6038              	.L1772:
 6039 3934 2846     		mov	r0, r5
 6040 3936 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6041 393a A0F10103 		sub	r3, r0, #1
 6042 393e B3FA83F3 		clz	r3, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 107


 6043 3942 5B09     		lsrs	r3, r3, #5
 6044 3944 0793     		str	r3, [sp, #28]
 6045 3946 FEF703BF 		b	.L629
 6046              	.L890:
 6047 394a 2846     		mov	r0, r5
 6048 394c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6049 3950 0228     		cmp	r0, #2
 6050 3952 8046     		mov	r8, r0
 6051 3954 41F23787 		bls	.L891
 6052 3958 0C98     		ldr	r0, [sp, #48]
 6053 395a 0127     		movs	r7, #1
 6054 395c FDF78EBB 		b	.L189
 6055              	.L1756:
 6056 3960 2846     		mov	r0, r5
 6057 3962 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6058 3966 0728     		cmp	r0, #7
 6059 3968 01F2D683 		bhi	.L819
 6060 396c 41B2     		sxtb	r1, r0
 6061 396e DA48     		ldr	r0, .L1899
 6062 3970 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 6063 3974 0127     		movs	r7, #1
 6064 3976 FEF7B6BC 		b	.L820
 6065              	.L1796:
 6066 397a 2846     		mov	r0, r5
 6067 397c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6068 3980 B4EE400A 		vcmp.f32	s0, s0
 6069 3984 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6070 3988 08D6     		bvs	.L621
 6071 398a DFEDD47A 		vldr.32	s15, .L1899+4
 6072 398e B4EEE70A 		vcmpe.f32	s0, s15
 6073 3992 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6074 3996 D8BF     		it	le
 6075 3998 B0EE670A 		vmovle.f32	s0, s15
 6076              	.L621:
 6077 399c DFEDD07A 		vldr.32	s15, .L1899+8
 6078 39a0 20EE270A 		vmul.f32	s0, s0, s15
 6079 39a4 04F5C563 		add	r3, r4, #1576
 6080 39a8 83ED000A 		vstr.32	s0, [r3]
 6081 39ac 5A21     		movs	r1, #90
 6082 39ae 2846     		mov	r0, r5
 6083 39b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6084 39b4 0028     		cmp	r0, #0
 6085 39b6 7AD1     		bne	.L623
 6086 39b8 0C98     		ldr	r0, [sp, #48]
 6087 39ba 0127     		movs	r7, #1
 6088 39bc FDF75EBB 		b	.L189
 6089              	.L1763:
 6090 39c0 2846     		mov	r0, r5
 6091 39c2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6092 39c6 0746     		mov	r7, r0
 6093 39c8 FEF752BD 		b	.L916
 6094              	.L1732:
 6095 39cc 2846     		mov	r0, r5
 6096 39ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6097 39d2 A0F10108 		sub	r8, r0, #1
 6098 39d6 B8FA88F8 		clz	r8, r8
 6099 39da 4FEA5818 		lsr	r8, r8, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 108


 6100 39de FDF7F2BF 		b	.L694
 6101              	.L1002:
 6102 39e2 2846     		mov	r0, r5
 6103 39e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6104 39e8 0028     		cmp	r0, #0
 6105 39ea 41F01F86 		bne	.L1003
 6106 39ee 0C98     		ldr	r0, [sp, #48]
 6107 39f0 0127     		movs	r7, #1
 6108 39f2 FDF743BB 		b	.L189
 6109              	.L1731:
 6110 39f6 2846     		mov	r0, r5
 6111 39f8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6112 39fc 0146     		mov	r1, r0
 6113 39fe FDF7CFBF 		b	.L698
 6114              	.L1730:
 6115 3a02 2846     		mov	r0, r5
 6116 3a04 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6117 3a08 0746     		mov	r7, r0
 6118 3a0a FDF7C0BF 		b	.L697
 6119              	.L1757:
 6120 3a0e 3946     		mov	r1, r7
 6121 3a10 B148     		ldr	r0, .L1899
 6122 3a12 FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 6123 3a16 FEF797BC 		b	.L783
 6124              	.L1758:
 6125 3a1a 5021     		movs	r1, #80
 6126 3a1c 2846     		mov	r0, r5
 6127 3a1e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6128 3a22 0028     		cmp	r0, #0
 6129 3a24 01F05F83 		beq	.L793
 6130 3a28 54A9     		add	r1, sp, #336
 6131 3a2a 2846     		mov	r0, r5
 6132 3a2c 5497     		str	r7, [sp, #336]
 6133 3a2e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 6134 3a32 0028     		cmp	r0, #0
 6135 3a34 02F0D380 		beq	.L794
 6136 3a38 5499     		ldr	r1, [sp, #336]
 6137 3a3a 6068     		ldr	r0, [r4, #4]
 6138 3a3c FFF7FEFF 		bl	_ZN8Platform10SetNetMaskE9IPAddress
 6139 3a40 0127     		movs	r7, #1
 6140              	.L795:
 6141 3a42 0C98     		ldr	r0, [sp, #48]
 6142 3a44 FDF71ABB 		b	.L189
 6143              	.L1760:
 6144 3a48 4921     		movs	r1, #73
 6145 3a4a 2846     		mov	r0, r5
 6146 3a4c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6147 3a50 0028     		cmp	r0, #0
 6148 3a52 41F01687 		bne	.L1817
 6149 3a56 0746     		mov	r7, r0
 6150              	.L784:
 6151 3a58 DFF87CB2 		ldr	fp, .L1899
 6152 3a5c 0DF5A878 		add	r8, sp, #336
 6153 3a60 0023     		movs	r3, #0
 6154 3a62 DBF80800 		ldr	r0, [fp, #8]
 6155 3a66 88F80030 		strb	r3, [r8]
 6156 3a6a 3946     		mov	r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 109


 6157 3a6c FFF7FEFF 		bl	_ZNK7Network15IsWiFiInterfaceEj
 6158 3a70 8146     		mov	r9, r0
 6159 3a72 0028     		cmp	r0, #0
 6160 3a74 01F00083 		beq	.L785
 6161 3a78 5321     		movs	r1, #83
 6162 3a7a 2846     		mov	r0, r5
 6163 3a7c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6164 3a80 0028     		cmp	r0, #0
 6165 3a82 42F00083 		bne	.L1818
 6166              	.L786:
 6167 3a86 3946     		mov	r1, r7
 6168 3a88 DBF80800 		ldr	r0, [fp, #8]
 6169 3a8c 3246     		mov	r2, r6
 6170 3a8e FFF7FEFF 		bl	_ZN7Network15GetNetworkStateEjRK9StringRef
 6171 3a92 0746     		mov	r7, r0
 6172              	.L788:
 6173 3a94 0C98     		ldr	r0, [sp, #48]
 6174 3a96 FDF7F1BA 		b	.L189
 6175              	.L1765:
 6176 3a9a 2846     		mov	r0, r5
 6177 3a9c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6178 3aa0 0028     		cmp	r0, #0
 6179 3aa2 D4BF     		ite	le
 6180 3aa4 0023     		movle	r3, #0
 6181 3aa6 0123     		movgt	r3, #1
 6182 3aa8 0793     		str	r3, [sp, #28]
 6183 3aaa FEF77DBD 		b	.L714
 6184              	.L623:
 6185 3aae 2846     		mov	r0, r5
 6186 3ab0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6187 3ab4 B4EE400A 		vcmp.f32	s0, s0
 6188 3ab8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6189 3abc 06D6     		bvs	.L624
 6190 3abe B5EEC00A 		vcmpe.f32	s0, #0
 6191 3ac2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6192 3ac6 D8BF     		it	le
 6193 3ac8 9FED860A 		vldrle.32	s0, .L1899+12
 6194              	.L624:
 6195 3acc 0C98     		ldr	r0, [sp, #48]
 6196 3ace 04F22C63 		addw	r3, r4, #1580
 6197 3ad2 83ED000A 		vstr.32	s0, [r3]
 6198 3ad6 0127     		movs	r7, #1
 6199 3ad8 FDF7D0BA 		b	.L189
 6200              	.L1794:
 6201 3adc 2846     		mov	r0, r5
 6202 3ade FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6203 3ae2 04F21C63 		addw	r3, r4, #1564
 6204 3ae6 D3ED007A 		vldr.32	s15, [r3]
 6205 3aea B4EE400A 		vcmp.f32	s0, s0
 6206 3aee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6207 3af2 F1EE677A 		vneg.f32	s15, s15
 6208 3af6 82F1B484 		bvs	.L1064
 6209 3afa B4EE670A 		vcmp.f32	s0, s15
 6210 3afe F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6211 3b02 C8BF     		it	gt
 6212 3b04 F0EE407A 		vmovgt.f32	s15, s0
 6213              	.L615:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 110


 6214 3b08 04F5C463 		add	r3, r4, #1568
 6215 3b0c B846     		mov	r8, r7
 6216 3b0e C3ED007A 		vstr.32	s15, [r3]
 6217 3b12 FFF74CBA 		b	.L614
 6218              	.L1793:
 6219 3b16 2846     		mov	r0, r5
 6220 3b18 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6221 3b1c B4EE400A 		vcmp.f32	s0, s0
 6222 3b20 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6223 3b24 06D6     		bvs	.L612
 6224 3b26 B5EEC00A 		vcmpe.f32	s0, #0
 6225 3b2a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6226 3b2e D8BF     		it	le
 6227 3b30 9FED6C0A 		vldrle.32	s0, .L1899+12
 6228              	.L612:
 6229 3b34 04F21C63 		addw	r3, r4, #1564
 6230 3b38 83ED000A 		vstr.32	s0, [r3]
 6231 3b3c FFF72FBA 		b	.L611
 6232              	.L1795:
 6233 3b40 2846     		mov	r0, r5
 6234 3b42 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6235 3b46 B4EE400A 		vcmp.f32	s0, s0
 6236 3b4a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6237 3b4e 08D6     		bvs	.L618
 6238 3b50 DFED627A 		vldr.32	s15, .L1899+4
 6239 3b54 B4EEE70A 		vcmpe.f32	s0, s15
 6240 3b58 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6241 3b5c D8BF     		it	le
 6242 3b5e B0EE670A 		vmovle.f32	s0, s15
 6243              	.L618:
 6244 3b62 DFED5F7A 		vldr.32	s15, .L1899+8
 6245 3b66 20EE270A 		vmul.f32	s0, s0, s15
 6246 3b6a 04F22462 		addw	r2, r4, #1572
 6247 3b6e 04F5C563 		add	r3, r4, #1576
 6248 3b72 82ED000A 		vstr.32	s0, [r2]
 6249 3b76 B846     		mov	r8, r7
 6250 3b78 83ED000A 		vstr.32	s0, [r3]
 6251 3b7c FFF71FBA 		b	.L617
 6252              	.L335:
 6253 3b80 2046     		mov	r0, r4
 6254 3b82 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 6255 3b86 0028     		cmp	r0, #0
 6256 3b88 3CF465AA 		beq	.L1703
 6257 3b8c A36C     		ldr	r3, [r4, #72]
 6258 3b8e 94F81896 		ldrb	r9, [r4, #1560]	@ zero_extendqisi2
 6259 3b92 1968     		ldr	r1, [r3]
 6260 3b94 94F8B680 		ldrb	r8, [r4, #182]	@ zero_extendqisi2
 6261 3b98 491B     		subs	r1, r1, r5
 6262 3b9a 18BF     		it	ne
 6263 3b9c 0121     		movne	r1, #1
 6264 3b9e 2046     		mov	r0, r4
 6265 3ba0 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 6266 3ba4 B9F1000F 		cmp	r9, #0
 6267 3ba8 01F02987 		beq	.L337
 6268 3bac 0C98     		ldr	r0, [sp, #48]
 6269 3bae 0127     		movs	r7, #1
 6270 3bb0 FDF764BA 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 111


 6271              	.L1785:
 6272 3bb4 484B     		ldr	r3, .L1899
 6273 3bb6 0CAA     		add	r2, sp, #48
 6274 3bb8 0092     		str	r2, [sp]
 6275 3bba 9868     		ldr	r0, [r3, #8]
 6276 3bbc 3946     		mov	r1, r7
 6277 3bbe 3346     		mov	r3, r6
 6278 3bc0 2A46     		mov	r2, r5
 6279 3bc2 FFF7FEFF 		bl	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 6280 3bc6 0746     		mov	r7, r0
 6281 3bc8 0C98     		ldr	r0, [sp, #48]
 6282 3bca FDF757BA 		b	.L189
 6283              	.L577:
 6284 3bce 4521     		movs	r1, #69
 6285 3bd0 2846     		mov	r0, r5
 6286 3bd2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6287 3bd6 0028     		cmp	r0, #0
 6288 3bd8 00F0F586 		beq	.L588
 6289              	.L1017:
 6290 3bdc D4F86433 		ldr	r3, [r4, #868]
 6291 3be0 1293     		str	r3, [sp, #72]
 6292 3be2 12AA     		add	r2, sp, #72
 6293 3be4 54A9     		add	r1, sp, #336
 6294 3be6 0123     		movs	r3, #1
 6295 3be8 2846     		mov	r0, r5
 6296 3bea FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6297 3bee 129F     		ldr	r7, [sp, #72]
 6298 3bf0 0FB3     		cbz	r7, .L586
 6299 3bf2 54A9     		add	r1, sp, #336
 6300 3bf4 0022     		movs	r2, #0
 6301 3bf6 F7EE006A 		vmov.f32	s13, #1.0e+0
 6302              	.L587:
 6303 3bfa B1EC017A 		vldmia.32	r1!, {s14}
 6304 3bfe D4EDEE7A 		vldr.32	s15, [r4, #952]
 6305 3c02 D4F85C03 		ldr	r0, [r4, #860]
 6306 3c06 6368     		ldr	r3, [r4, #4]
 6307 3c08 67EE277A 		vmul.f32	s15, s14, s15
 6308 3c0c 1044     		add	r0, r0, r2
 6309 3c0e F4EE677A 		vcmp.f32	s15, s15
 6310 3c12 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6311 3c16 03EB8003 		add	r3, r3, r0, lsl #2
 6312 3c1a 02F10102 		add	r2, r2, #1
 6313 3c1e 06D6     		bvs	.L584
 6314 3c20 F4EEE67A 		vcmpe.f32	s15, s13
 6315 3c24 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6316 3c28 D8BF     		it	le
 6317 3c2a F0EE667A 		vmovle.f32	s15, s13
 6318              	.L584:
 6319 3c2e BA42     		cmp	r2, r7
 6320 3c30 C3ED6B7A 		vstr.32	s15, [r3, #428]
 6321 3c34 E1D1     		bne	.L587
 6322              	.L586:
 6323 3c36 0C98     		ldr	r0, [sp, #48]
 6324 3c38 0127     		movs	r7, #1
 6325 3c3a FDF71FBA 		b	.L189
 6326              	.L1728:
 6327 3c3e 0DF14809 		add	r9, sp, #72
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 112


 6328 3c42 D8F80020 		ldr	r2, [r8]
 6329 3c46 6068     		ldr	r0, [r4, #4]
 6330 3c48 0096     		str	r6, [sp]
 6331 3c4a 2B46     		mov	r3, r5
 6332 3c4c CDF80490 		str	r9, [sp, #4]
 6333 3c50 6A21     		movs	r1, #106
 6334 3c52 8DF84870 		strb	r7, [sp, #72]
 6335 3c56 FFF7FEFF 		bl	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 6336 3c5a 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 6337 3c5e BB42     		cmp	r3, r7
 6338 3c60 0CBF     		ite	eq
 6339 3c62 0127     		moveq	r7, #1
 6340 3c64 0227     		movne	r7, #2
 6341 3c66 0028     		cmp	r0, #0
 6342 3c68 7DF4EEAD 		bne	.L472
 6343 3c6c FDF7E5BD 		b	.L470
 6344              	.L638:
 6345 3c70 1D49     		ldr	r1, .L1899+16
 6346 3c72 3046     		mov	r0, r6
 6347 3c74 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6348 3c78 D4F85C33 		ldr	r3, [r4, #860]
 6349 3c7c 002B     		cmp	r3, #0
 6350 3c7e 02F0FE81 		beq	.L1819
 6351 3c82 04F21959 		addw	r9, r4, #1305
 6352 3c86 4FF00008 		mov	r8, #0
 6353 3c8a 4FF0730A 		mov	r10, #115
 6354              	.L639:
 6355 3c8e 6768     		ldr	r7, [r4, #4]
 6356 3c90 19F801BF 		ldrb	fp, [r9, #1]!	@ zero_extendqisi2
 6357 3c94 07EB8807 		add	r7, r7, r8, lsl #2
 6358 3c98 07F29C73 		addw	r3, r7, #1948
 6359 3c9c 07F5F867 		add	r7, r7, #1984
 6360 3ca0 1868     		ldr	r0, [r3]	@ float
 6361 3ca2 FFF7FEFF 		bl	__aeabi_f2d
 6362 3ca6 CDE90201 		strd	r0, [sp, #8]
 6363 3caa 3868     		ldr	r0, [r7]	@ float
 6364 3cac FFF7FEFF 		bl	__aeabi_f2d
 6365 3cb0 5246     		mov	r2, r10
 6366 3cb2 CDE90001 		strd	r0, [sp]
 6367 3cb6 5B46     		mov	r3, fp
 6368 3cb8 0C49     		ldr	r1, .L1899+20
 6369 3cba 3046     		mov	r0, r6
 6370 3cbc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6371 3cc0 D4F85C33 		ldr	r3, [r4, #860]
 6372 3cc4 08F10108 		add	r8, r8, #1
 6373 3cc8 4345     		cmp	r3, r8
 6374 3cca 4FF02C0A 		mov	r10, #44
 6375 3cce DED8     		bhi	.L639
 6376 3cd0 0C98     		ldr	r0, [sp, #48]
 6377 3cd2 0127     		movs	r7, #1
 6378 3cd4 FDF7D2B9 		b	.L189
 6379              	.L1900:
 6380              		.align	2
 6381              	.L1899:
 6382 3cd8 00000000 		.word	reprap
 6383 3cdc 00007042 		.word	1114636288
 6384 3ce0 8988883C 		.word	1015580809
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 113


 6385 3ce4 00000000 		.word	0
 6386 3ce8 F0080000 		.word	.LC105
 6387 3cec FC080000 		.word	.LC106
 6388              	.L1733:
 6389 3cf0 0EAB     		add	r3, sp, #56
 6390 3cf2 0127     		movs	r7, #1
 6391 3cf4 0FAA     		add	r2, sp, #60
 6392 3cf6 5321     		movs	r1, #83
 6393 3cf8 2846     		mov	r0, r5
 6394 3cfa 0F97     		str	r7, [sp, #60]
 6395 3cfc FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 6396 3d00 0F9B     		ldr	r3, [sp, #60]
 6397 3d02 032B     		cmp	r3, #3
 6398 3d04 01F2C385 		bhi	.L1820
 6399 3d08 012B     		cmp	r3, #1
 6400 3d0a 01F32284 		bgt	.L682
 6401              	.L685:
 6402 3d0e 0F9B     		ldr	r3, [sp, #60]
 6403 3d10 012B     		cmp	r3, #1
 6404 3d12 42F20F83 		bls	.L1821
 6405 3d16 0023     		movs	r3, #0
 6406 3d18 CBF80030 		str	r3, [fp]	@ float
 6407              	.L686:
 6408 3d1c D4F85C33 		ldr	r3, [r4, #860]
 6409 3d20 0793     		str	r3, [sp, #28]
 6410 3d22 002B     		cmp	r3, #0
 6411 3d24 01F0CC82 		beq	.L687
 6412 3d28 0023     		movs	r3, #0
 6413 3d2a 0793     		str	r3, [sp, #28]
 6414 3d2c 9946     		mov	r9, r3
 6415 3d2e 04F20F57 		addw	r7, r4, #1295
 6416 3d32 06E0     		b	.L689
 6417              	.L688:
 6418 3d34 D4F85C33 		ldr	r3, [r4, #860]
 6419 3d38 09F10109 		add	r9, r9, #1
 6420 3d3c 4B45     		cmp	r3, r9
 6421 3d3e 41F2BF82 		bls	.L687
 6422              	.L689:
 6423 3d42 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 6424 3d46 2846     		mov	r0, r5
 6425 3d48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6426 3d4c 0028     		cmp	r0, #0
 6427 3d4e F1D0     		beq	.L688
 6428 3d50 2846     		mov	r0, r5
 6429 3d52 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6430 3d56 0028     		cmp	r0, #0
 6431 3d58 ECDD     		ble	.L688
 6432 3d5a 079A     		ldr	r2, [sp, #28]
 6433 3d5c 0123     		movs	r3, #1
 6434 3d5e 03FA09F3 		lsl	r3, r3, r9
 6435 3d62 1A43     		orrs	r2, r2, r3
 6436 3d64 0792     		str	r2, [sp, #28]
 6437 3d66 E5E7     		b	.L688
 6438              	.L1801:
 6439 3d68 0DF1480A 		add	r10, sp, #72
 6440 3d6c D4F86433 		ldr	r3, [r4, #868]
 6441 3d70 CAF80030 		str	r3, [r10]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 114


 6442 3d74 5246     		mov	r2, r10
 6443 3d76 0123     		movs	r3, #1
 6444 3d78 54A9     		add	r1, sp, #336
 6445 3d7a 2846     		mov	r0, r5
 6446 3d7c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6447 3d80 DAF80030 		ldr	r3, [r10]
 6448 3d84 93B1     		cbz	r3, .L977
 6449 3d86 0DF5A879 		add	r9, sp, #336
 6450 3d8a 4FF00008 		mov	r8, #0
 6451              	.L978:
 6452 3d8e D4F85C13 		ldr	r1, [r4, #860]
 6453 3d92 B9EC010A 		vldmia.32	r9!, {s0}
 6454 3d96 6068     		ldr	r0, [r4, #4]
 6455 3d98 4144     		add	r1, r1, r8
 6456 3d9a 3A46     		mov	r2, r7
 6457 3d9c FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
 6458 3da0 DAF80030 		ldr	r3, [r10]
 6459 3da4 08F10108 		add	r8, r8, #1
 6460 3da8 4345     		cmp	r3, r8
 6461 3daa F0D8     		bhi	.L978
 6462              	.L977:
 6463 3dac 40F28A33 		movw	r3, #906
 6464 3db0 9F42     		cmp	r7, r3
 6465 3db2 01F0AA87 		beq	.L1822
 6466 3db6 0C98     		ldr	r0, [sp, #48]
 6467 3db8 0127     		movs	r7, #1
 6468 3dba FDF75FB9 		b	.L189
 6469              	.L1004:
 6470 3dbe C448     		ldr	r0, .L1901
 6471 3dc0 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 6472 3dc4 5021     		movs	r1, #80
 6473 3dc6 2846     		mov	r0, r5
 6474 3dc8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6475 3dcc 0028     		cmp	r0, #0
 6476 3dce 41F0AA83 		bne	.L1823
 6477              	.L1005:
 6478 3dd2 0021     		movs	r1, #0
 6479              	.L1006:
 6480 3dd4 6068     		ldr	r0, [r4, #4]
 6481 3dd6 0022     		movs	r2, #0
 6482 3dd8 FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 6483 3ddc 0C98     		ldr	r0, [sp, #48]
 6484 3dde FDF74DB9 		b	.L189
 6485              	.L1753:
 6486 3de2 2846     		mov	r0, r5
 6487 3de4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6488 3de8 0328     		cmp	r0, #3
 6489 3dea 7EF673A9 		bls	.L553
 6490 3dee 0246     		mov	r2, r0
 6491 3df0 B849     		ldr	r1, .L1901+4
 6492 3df2 3046     		mov	r0, r6
 6493 3df4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6494 3df8 0227     		movs	r7, #2
 6495 3dfa 0C98     		ldr	r0, [sp, #48]
 6496 3dfc FDF73EB9 		b	.L189
 6497              	.L922:
 6498 3e00 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 115


 6499 3e02 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6500 3e06 D4F86433 		ldr	r3, [r4, #868]
 6501 3e0a 8342     		cmp	r3, r0
 6502 3e0c 01F2B183 		bhi	.L923
 6503 3e10 0C98     		ldr	r0, [sp, #48]
 6504 3e12 0127     		movs	r7, #1
 6505 3e14 FDF732B9 		b	.L189
 6506              	.L1744:
 6507 3e18 5021     		movs	r1, #80
 6508 3e1a 2846     		mov	r0, r5
 6509 3e1c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6510 3e20 0028     		cmp	r0, #0
 6511 3e22 01F00E81 		beq	.L796
 6512 3e26 54A9     		add	r1, sp, #336
 6513 3e28 2846     		mov	r0, r5
 6514 3e2a 5497     		str	r7, [sp, #336]
 6515 3e2c FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 6516 3e30 0028     		cmp	r0, #0
 6517 3e32 01F07E86 		beq	.L797
 6518 3e36 5499     		ldr	r1, [sp, #336]
 6519 3e38 6068     		ldr	r0, [r4, #4]
 6520 3e3a FFF7FEFF 		bl	_ZN8Platform10SetGateWayE9IPAddress
 6521 3e3e 0127     		movs	r7, #1
 6522              	.L798:
 6523 3e40 0C98     		ldr	r0, [sp, #48]
 6524 3e42 FDF71BB9 		b	.L189
 6525              	.L409:
 6526 3e46 A36C     		ldr	r3, [r4, #72]
 6527 3e48 1868     		ldr	r0, [r3]
 6528 3e4a FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 6529 3e4e 0746     		mov	r7, r0
 6530 3e50 0028     		cmp	r0, #0
 6531 3e52 01F00585 		beq	.L410
 6532 3e56 0127     		movs	r7, #1
 6533 3e58 0C98     		ldr	r0, [sp, #48]
 6534 3e5a 84F8B770 		strb	r7, [r4, #183]
 6535 3e5e FDF70DB9 		b	.L189
 6536              	.L1715:
 6537 3e62 9D49     		ldr	r1, .L1901+8
 6538 3e64 3046     		mov	r0, r6
 6539 3e66 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6540 3e6a 0227     		movs	r7, #2
 6541 3e6c 0C98     		ldr	r0, [sp, #48]
 6542 3e6e FDF705B9 		b	.L189
 6543              	.L1755:
 6544 3e72 2846     		mov	r0, r5
 6545 3e74 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6546 3e78 FEF7E5B9 		b	.L815
 6547              	.L1754:
 6548 3e7c 2846     		mov	r0, r5
 6549 3e7e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6550 3e82 8246     		mov	r10, r0
 6551 3e84 FEF7D8B9 		b	.L814
 6552              	.L1759:
 6553 3e88 4921     		movs	r1, #73
 6554 3e8a 2846     		mov	r0, r5
 6555 3e8c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 116


 6556 3e90 0028     		cmp	r0, #0
 6557 3e92 41F06883 		bne	.L1824
 6558 3e96 0746     		mov	r7, r0
 6559              	.L777:
 6560 3e98 5021     		movs	r1, #80
 6561 3e9a 2846     		mov	r0, r5
 6562 3e9c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6563 3ea0 0028     		cmp	r0, #0
 6564 3ea2 01F0F681 		beq	.L778
 6565 3ea6 54A9     		add	r1, sp, #336
 6566 3ea8 2846     		mov	r0, r5
 6567 3eaa FFF7FEFF 		bl	_ZN11GCodeBuffer13GetMacAddressEPh
 6568 3eae 0028     		cmp	r0, #0
 6569 3eb0 01F0CC86 		beq	.L779
 6570 3eb4 864B     		ldr	r3, .L1901
 6571 3eb6 3946     		mov	r1, r7
 6572 3eb8 54AA     		add	r2, sp, #336
 6573 3eba 9868     		ldr	r0, [r3, #8]
 6574 3ebc FFF7FEFF 		bl	_ZN7Network13SetMacAddressEjPKh
 6575 3ec0 0127     		movs	r7, #1
 6576              	.L780:
 6577 3ec2 0C98     		ldr	r0, [sp, #48]
 6578 3ec4 FDF7DAB8 		b	.L189
 6579              	.L826:
 6580 3ec8 4521     		movs	r1, #69
 6581 3eca 2846     		mov	r0, r5
 6582 3ecc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6583 3ed0 0028     		cmp	r0, #0
 6584 3ed2 00F0AF86 		beq	.L841
 6585              	.L832:
 6586 3ed6 D4F86433 		ldr	r3, [r4, #868]
 6587 3eda 1293     		str	r3, [sp, #72]
 6588 3edc 12AA     		add	r2, sp, #72
 6589 3ede 54A9     		add	r1, sp, #336
 6590 3ee0 0123     		movs	r3, #1
 6591 3ee2 2846     		mov	r0, r5
 6592 3ee4 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6593 3ee8 129F     		ldr	r7, [sp, #72]
 6594 3eea FFB1     		cbz	r7, .L835
 6595 3eec 9FED7B7A 		vldr.32	s14, .L1901+12
 6596 3ef0 54A9     		add	r1, sp, #336
 6597 3ef2 0022     		movs	r2, #0
 6598              	.L840:
 6599 3ef4 F1EC017A 		vldmia.32	r1!, {s15}
 6600 3ef8 D4F85C03 		ldr	r0, [r4, #860]
 6601 3efc 6368     		ldr	r3, [r4, #4]
 6602 3efe 67EE887A 		vmul.f32	s15, s15, s16
 6603 3f02 1044     		add	r0, r0, r2
 6604 3f04 F4EE677A 		vcmp.f32	s15, s15
 6605 3f08 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6606 3f0c 03EB8003 		add	r3, r3, r0, lsl #2
 6607 3f10 02F10102 		add	r2, r2, #1
 6608 3f14 06D6     		bvs	.L838
 6609 3f16 F4EEC77A 		vcmpe.f32	s15, s14
 6610 3f1a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6611 3f1e D8BF     		it	le
 6612 3f20 F0EE477A 		vmovle.f32	s15, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 117


 6613              	.L838:
 6614 3f24 BA42     		cmp	r2, r7
 6615 3f26 C3ED837A 		vstr.32	s15, [r3, #524]
 6616 3f2a E3D1     		bne	.L840
 6617              	.L835:
 6618 3f2c 0C98     		ldr	r0, [sp, #48]
 6619 3f2e 0127     		movs	r7, #1
 6620 3f30 FDF7A4B8 		b	.L189
 6621              	.L1662:
 6622 3f34 0020     		movs	r0, #0
 6623 3f36 0527     		movs	r7, #5
 6624 3f38 FDF7A0B8 		b	.L189
 6625              	.L349:
 6626 3f3c 6068     		ldr	r0, [r4, #4]
 6627 3f3e 0021     		movs	r1, #0
 6628 3f40 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEt
 6629 3f44 0C98     		ldr	r0, [sp, #48]
 6630 3f46 FDF799B8 		b	.L189
 6631              	.L571:
 6632 3f4a 6549     		ldr	r1, .L1901+16
 6633 3f4c 3046     		mov	r0, r6
 6634 3f4e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6635 3f52 D4F86433 		ldr	r3, [r4, #868]
 6636 3f56 002B     		cmp	r3, #0
 6637 3f58 02F01F81 		beq	.L1825
 6638 3f5c DFED618A 		vldr.32	s17, .L1901+20
 6639 3f60 DFF888A1 		ldr	r10, .L1901+28
 6640 3f64 DFF88891 		ldr	r9, .L1901+32
 6641 3f68 04F28458 		addw	r8, r4, #1412
 6642 3f6c 07E0     		b	.L576
 6643              	.L1827:
 6644 3f6e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6645              	.L574:
 6646 3f72 D4F86433 		ldr	r3, [r4, #868]
 6647 3f76 0137     		adds	r7, r7, #1
 6648 3f78 BB42     		cmp	r3, r7
 6649 3f7a 40F27283 		bls	.L1826
 6650              	.L576:
 6651 3f7e F8EC017A 		vldmia.32	r8!, {s15}
 6652 3f82 B7EE007A 		vmov.f32	s14, #1.0e+0
 6653 3f86 F4EE477A 		vcmp.f32	s15, s14
 6654 3f8a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6655 3f8e 4946     		mov	r1, r9
 6656 3f90 3046     		mov	r0, r6
 6657 3f92 ECD0     		beq	.L1827
 6658 3f94 27EEA80A 		vmul.f32	s0, s15, s17
 6659 3f98 B5EE400A 		vcmp.f32	s0, #0
 6660 3f9c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6661 3fa0 B1EEC08A 		vsqrt.f32	s16, s0
 6662 3fa4 02F1C282 		bmi	.L1828
 6663              	.L575:
 6664 3fa8 F0EE007A 		vmov.f32	s15, #2.0e+0
 6665 3fac C7EE887A 		vdiv.f32	s15, s15, s16
 6666 3fb0 17EE900A 		vmov	r0, s15
 6667 3fb4 FFF7FEFF 		bl	__aeabi_f2d
 6668 3fb8 0246     		mov	r2, r0
 6669 3fba 0B46     		mov	r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 118


 6670 3fbc 3046     		mov	r0, r6
 6671 3fbe 5146     		mov	r1, r10
 6672 3fc0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6673 3fc4 D5E7     		b	.L574
 6674              	.L1798:
 6675 3fc6 0DF5A878 		add	r8, sp, #336
 6676 3fca 0123     		movs	r3, #1
 6677 3fcc 0927     		movs	r7, #9
 6678 3fce 12AA     		add	r2, sp, #72
 6679 3fd0 4146     		mov	r1, r8
 6680 3fd2 2846     		mov	r0, r5
 6681 3fd4 1297     		str	r7, [sp, #72]
 6682 3fd6 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6683 3fda 129B     		ldr	r3, [sp, #72]
 6684 3fdc EBB1     		cbz	r3, .L569
 6685 3fde 04EB8303 		add	r3, r4, r3, lsl #2
 6686 3fe2 9FED406A 		vldr.32	s12, .L1901+20
 6687 3fe6 03F28451 		addw	r1, r3, #1412
 6688 3fea 4246     		mov	r2, r8
 6689 3fec 04F28453 		addw	r3, r4, #1412
 6690 3ff0 F1EE006A 		vmov.f32	s13, #4.0e+0
 6691              	.L570:
 6692 3ff4 F2EC017A 		vldmia.32	r2!, {s15}
 6693 3ff8 F5EEC07A 		vcmpe.f32	s15, #0
 6694 3ffc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6695 4000 89BF     		itett	hi
 6696 4002 67EEA77A 		vmulhi.f32	s15, s15, s15
 6697 4006 B7EE007A 		vmovls.f32	s14, #1.0e+0
 6698 400a 67EE867A 		vmulhi.f32	s15, s15, s12
 6699 400e 86EEA77A 		vdivhi.f32	s14, s13, s15
 6700 4012 A3EC017A 		vstmia.32	r3!, {s14}
 6701 4016 9942     		cmp	r1, r3
 6702 4018 ECD1     		bne	.L570
 6703              	.L569:
 6704 401a D8ED007A 		vldr.32	s15, [r8]
 6705 401e AB68     		ldr	r3, [r5, #8]
 6706 4020 0C98     		ldr	r0, [sp, #48]
 6707 4022 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 6708 4024 F5EEC07A 		vcmpe.f32	s15, #0
 6709 4028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 6710 402c CCBF     		ite	gt
 6711 402e 0121     		movgt	r1, #1
 6712 4030 0021     		movle	r1, #0
 6713 4032 61F38612 		bfi	r2, r1, #6, #1
 6714 4036 1A76     		strb	r2, [r3, #24]
 6715 4038 0127     		movs	r7, #1
 6716 403a FDF71FB8 		b	.L189
 6717              	.L924:
 6718 403e 2846     		mov	r0, r5
 6719 4040 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6720 4044 0021     		movs	r1, #0
 6721 4046 8046     		mov	r8, r0
 6722 4048 0020     		movs	r0, #0
 6723 404a 1090     		str	r0, [sp, #64]	@ float
 6724 404c 0FAB     		add	r3, sp, #60
 6725 404e 10AA     		add	r2, sp, #64
 6726 4050 8DF83C10 		strb	r1, [sp, #60]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 119


 6727 4054 1290     		str	r0, [sp, #72]	@ float
 6728 4056 4121     		movs	r1, #65
 6729 4058 234F     		ldr	r7, .L1901+24
 6730 405a 5497     		str	r7, [sp, #336]	@ float
 6731 405c 2846     		mov	r0, r5
 6732 405e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 6733 4062 0FAB     		add	r3, sp, #60
 6734 4064 12AA     		add	r2, sp, #72
 6735 4066 4221     		movs	r1, #66
 6736 4068 2846     		mov	r0, r5
 6737 406a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 6738 406e 0FAB     		add	r3, sp, #60
 6739 4070 54AA     		add	r2, sp, #336
 6740 4072 4C21     		movs	r1, #76
 6741 4074 2846     		mov	r0, r5
 6742 4076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 6743 407a 9DF83C30 		ldrb	r3, [sp, #60]	@ zero_extendqisi2
 6744 407e 002B     		cmp	r3, #0
 6745 4080 01F05C80 		beq	.L925
 6746 4084 4146     		mov	r1, r8
 6747 4086 9DED541A 		vldr.32	s2, [sp, #336]
 6748 408a DDED120A 		vldr.32	s1, [sp, #72]
 6749 408e 9DED100A 		vldr.32	s0, [sp, #64]
 6750 4092 6068     		ldr	r0, [r4, #4]
 6751 4094 FFF7FEFF 		bl	_ZN8Platform21SetNonlinearExtrusionEjfff
 6752              	.L926:
 6753 4098 0C98     		ldr	r0, [sp, #48]
 6754 409a 0127     		movs	r7, #1
 6755 409c FCF7EEBF 		b	.L189
 6756              	.L469:
 6757 40a0 54AF     		add	r7, sp, #336
 6758 40a2 0022     		movs	r2, #0
 6759 40a4 7923     		movs	r3, #121
 6760 40a6 12A9     		add	r1, sp, #72
 6761 40a8 2846     		mov	r0, r5
 6762 40aa CDE91273 		strd	r7, r3, [sp, #72]
 6763 40ae 8DF85021 		strb	r2, [sp, #336]
 6764 40b2 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 6765 40b6 6223     		movs	r3, #98
 6766 40b8 3A46     		mov	r2, r7
 6767 40ba 0093     		str	r3, [sp]
 6768 40bc 2946     		mov	r1, r5
 6769 40be 0123     		movs	r3, #1
 6770 40c0 2046     		mov	r0, r4
 6771 40c2 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 6772 40c6 0127     		movs	r7, #1
 6773 40c8 0C98     		ldr	r0, [sp, #48]
 6774 40ca FCF7D7BF 		b	.L189
 6775              	.L1902:
 6776 40ce 00BF     		.align	2
 6777              	.L1901:
 6778 40d0 00000000 		.word	reprap
 6779 40d4 AC070000 		.word	.LC94
 6780 40d8 60030000 		.word	.LC56
 6781 40dc CDCCCC3D 		.word	1036831949
 6782 40e0 20080000 		.word	.LC97
 6783 40e4 DB0F4940 		.word	1078530011
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 120


 6784 40e8 CDCC4C3E 		.word	1045220557
 6785 40ec 58080000 		.word	.LC99
 6786 40f0 50080000 		.word	.LC98
 6787              	.L655:
 6788 40f4 2846     		mov	r0, r5
 6789 40f6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6790 40fa 0DF1480A 		add	r10, sp, #72
 6791 40fe 0746     		mov	r7, r0
 6792 4100 0DF5A878 		add	r8, sp, #336
 6793 4104 6068     		ldr	r0, [r4, #4]
 6794 4106 CDF80080 		str	r8, [sp]
 6795 410a B9B2     		uxth	r1, r7
 6796 410c 5346     		mov	r3, r10
 6797 410e 0322     		movs	r2, #3
 6798 4110 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 6799 4114 0028     		cmp	r0, #0
 6800 4116 01F0B480 		beq	.L656
 6801 411a 4921     		movs	r1, #73
 6802 411c 2846     		mov	r0, r5
 6803 411e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6804 4122 0028     		cmp	r0, #0
 6805 4124 41F00D87 		bne	.L1829
 6806              	.L658:
 6807 4128 5321     		movs	r1, #83
 6808 412a 2846     		mov	r0, r5
 6809 412c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6810 4130 0028     		cmp	r0, #0
 6811 4132 41F04587 		bne	.L1830
 6812 4136 0127     		movs	r7, #1
 6813              	.L660:
 6814 4138 0C98     		ldr	r0, [sp, #48]
 6815 413a FCF79FBF 		b	.L189
 6816              	.L853:
 6817 413e 2846     		mov	r0, r5
 6818 4140 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6819 4144 0728     		cmp	r0, #7
 6820 4146 8146     		mov	r9, r0
 6821 4148 41F20C83 		bls	.L855
 6822 414c 0C98     		ldr	r0, [sp, #48]
 6823 414e 0127     		movs	r7, #1
 6824 4150 FCF794BF 		b	.L189
 6825              	.L884:
 6826 4154 C749     		ldr	r1, .L1903
 6827 4156 3046     		mov	r0, r6
 6828 4158 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6829 415c D4F85C33 		ldr	r3, [r4, #860]
 6830 4160 002B     		cmp	r3, #0
 6831 4162 42D0     		beq	.L880
 6832 4164 DFF848B3 		ldr	fp, .L1903+60
 6833 4168 04F20F59 		addw	r9, r4, #1295
 6834 416c 0027     		movs	r7, #0
 6835 416e 0DF1480A 		add	r10, sp, #72
 6836 4172 0DF5A878 		add	r8, sp, #336
 6837 4176 21E0     		b	.L889
 6838              	.L1832:
 6839 4178 BF49     		ldr	r1, .L1903+4
 6840 417a 012B     		cmp	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 121


 6841 417c 18BF     		it	ne
 6842 417e 5946     		movne	r1, fp
 6843 4180 0B46     		mov	r3, r1
 6844              	.L885:
 6845 4182 BE49     		ldr	r1, .L1903+8
 6846 4184 3046     		mov	r0, r6
 6847 4186 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6848 418a DAF80030 		ldr	r3, [r10]
 6849 418e 1BB3     		cbz	r3, .L1831
 6850 4190 D8F80030 		ldr	r3, [r8]
 6851 4194 012B     		cmp	r3, #1
 6852 4196 24D0     		beq	.L1112
 6853 4198 2BB3     		cbz	r3, .L1113
 6854 419a 022B     		cmp	r3, #2
 6855 419c 01F01B81 		beq	.L1114
 6856 41a0 B74A     		ldr	r2, .L1903+12
 6857 41a2 B849     		ldr	r1, .L1903+16
 6858 41a4 032B     		cmp	r3, #3
 6859 41a6 08BF     		it	eq
 6860 41a8 0A46     		moveq	r2, r1
 6861              	.L888:
 6862 41aa B749     		ldr	r1, .L1903+20
 6863 41ac 3046     		mov	r0, r6
 6864 41ae FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6865              	.L887:
 6866 41b2 D4F85C33 		ldr	r3, [r4, #860]
 6867 41b6 0137     		adds	r7, r7, #1
 6868 41b8 BB42     		cmp	r3, r7
 6869 41ba 16D9     		bls	.L880
 6870              	.L889:
 6871 41bc 4346     		mov	r3, r8
 6872 41be 5246     		mov	r2, r10
 6873 41c0 3946     		mov	r1, r7
 6874 41c2 6068     		ldr	r0, [r4, #4]
 6875 41c4 FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 6876 41c8 DAF80030 		ldr	r3, [r10]
 6877 41cc 19F8012F 		ldrb	r2, [r9, #1]!	@ zero_extendqisi2
 6878 41d0 022B     		cmp	r3, #2
 6879 41d2 D1D1     		bne	.L1832
 6880 41d4 AD4B     		ldr	r3, .L1903+24
 6881 41d6 D4E7     		b	.L885
 6882              	.L1831:
 6883 41d8 2C21     		movs	r1, #44
 6884 41da 3046     		mov	r0, r6
 6885 41dc FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6886 41e0 E7E7     		b	.L887
 6887              	.L1112:
 6888 41e2 AB4A     		ldr	r2, .L1903+28
 6889 41e4 E1E7     		b	.L888
 6890              	.L1113:
 6891 41e6 AB4A     		ldr	r2, .L1903+32
 6892 41e8 DFE7     		b	.L888
 6893              	.L880:
 6894 41ea 0C98     		ldr	r0, [sp, #48]
 6895 41ec 0127     		movs	r7, #1
 6896 41ee FCF745BF 		b	.L189
 6897              	.L1737:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 122


 6898 41f2 2846     		mov	r0, r5
 6899 41f4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6900 41f8 C3B2     		uxtb	r3, r0
 6901 41fa 0793     		str	r3, [sp, #28]
 6902 41fc FDF78DBC 		b	.L878
 6903              	.L1720:
 6904 4200 2946     		mov	r1, r5
 6905 4202 2046     		mov	r0, r4
 6906 4204 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6907 4208 0028     		cmp	r0, #0
 6908 420a 3BF424AF 		beq	.L1703
 6909 420e A24F     		ldr	r7, .L1903+36
 6910 4210 0121     		movs	r1, #1
 6911 4212 3869     		ldr	r0, [r7, #16]
 6912 4214 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 6913 4218 3869     		ldr	r0, [r7, #16]
 6914 421a FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 6915 421e FB68     		ldr	r3, [r7, #12]
 6916 4220 D3F8740A 		ldr	r0, [r3, #2676]
 6917 4224 0368     		ldr	r3, [r0]
 6918 4226 9B69     		ldr	r3, [r3, #24]
 6919 4228 9847     		blx	r3
 6920 422a 6068     		ldr	r0, [r4, #4]
 6921 422c FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 6922 4230 4FF4FB73 		mov	r3, #502
 6923 4234 0093     		str	r3, [sp]
 6924 4236 994A     		ldr	r2, .L1903+40
 6925 4238 0123     		movs	r3, #1
 6926 423a 2946     		mov	r1, r5
 6927 423c 2046     		mov	r0, r4
 6928 423e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 6929 4242 0127     		movs	r7, #1
 6930 4244 0C98     		ldr	r0, [sp, #48]
 6931 4246 FCF719BF 		b	.L189
 6932              	.L398:
 6933 424a 2046     		mov	r0, r4
 6934 424c FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
 6935 4250 0746     		mov	r7, r0
 6936 4252 0028     		cmp	r0, #0
 6937 4254 01F0DA82 		beq	.L399
 6938 4258 0C98     		ldr	r0, [sp, #48]
 6939 425a 0127     		movs	r7, #1
 6940 425c FCF70EBF 		b	.L189
 6941              	.L411:
 6942 4260 2846     		mov	r0, r5
 6943 4262 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 6944 4266 5021     		movs	r1, #80
 6945 4268 C4F80C05 		str	r0, [r4, #1292]
 6946 426c 2846     		mov	r0, r5
 6947 426e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6948 4272 0028     		cmp	r0, #0
 6949 4274 41F09381 		bne	.L412
 6950 4278 0C98     		ldr	r0, [sp, #48]
 6951 427a 0127     		movs	r7, #1
 6952 427c FCF7FEBE 		b	.L189
 6953              	.L822:
 6954 4280 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 123


 6955 4282 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6956 4286 0028     		cmp	r0, #0
 6957 4288 D4BF     		ite	le
 6958 428a 0020     		movle	r0, #0
 6959 428c 0120     		movgt	r0, #1
 6960 428e 84F82505 		strb	r0, [r4, #1317]
 6961 4292 0127     		movs	r7, #1
 6962 4294 0C98     		ldr	r0, [sp, #48]
 6963 4296 FCF7F1BE 		b	.L189
 6964              	.L1780:
 6965 429a DFF8FCB1 		ldr	fp, .L1903+36
 6966 429e 2846     		mov	r0, r5
 6967 42a0 DBF81070 		ldr	r7, [fp, #16]
 6968 42a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6969 42a8 5221     		movs	r1, #82
 6970 42aa 87ED340A 		vstr.32	s0, [r7, #208]
 6971 42ae 2846     		mov	r0, r5
 6972 42b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6973 42b4 A0B9     		cbnz	r0, .L701
 6974 42b6 0C98     		ldr	r0, [sp, #48]
 6975 42b8 0127     		movs	r7, #1
 6976 42ba FCF7DFBE 		b	.L189
 6977              	.L1779:
 6978 42be DFF8D8B1 		ldr	fp, .L1903+36
 6979 42c2 2846     		mov	r0, r5
 6980 42c4 DBF81080 		ldr	r8, [fp, #16]
 6981 42c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6982 42cc 0028     		cmp	r0, #0
 6983 42ce D4BF     		ite	le
 6984 42d0 0020     		movle	r0, #0
 6985 42d2 0120     		movgt	r0, #1
 6986 42d4 88F8D800 		strb	r0, [r8, #216]
 6987 42d8 FEF7E2BB 		b	.L699
 6988              	.L1781:
 6989 42dc DFF8B8B1 		ldr	fp, .L1903+36
 6990              	.L701:
 6991 42e0 DBF81080 		ldr	r8, [fp, #16]
 6992 42e4 2846     		mov	r0, r5
 6993 42e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6994 42ea 0127     		movs	r7, #1
 6995 42ec 88ED350A 		vstr.32	s0, [r8, #212]
 6996 42f0 0C98     		ldr	r0, [sp, #48]
 6997 42f2 FCF7C3BE 		b	.L189
 6998              	.L1748:
 6999 42f6 2846     		mov	r0, r5
 7000 42f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7001 42fc B0F10008 		subs	r8, r0, #0
 7002 4300 06DB     		blt	.L533
 7003 4302 8C2F     		cmp	r7, #140
 7004 4304 14BF     		ite	ne
 7005 4306 0223     		movne	r3, #2
 7006 4308 0423     		moveq	r3, #4
 7007 430a 4345     		cmp	r3, r8
 7008 430c 3DF794AE 		bgt	.L535
 7009              	.L533:
 7010 4310 4246     		mov	r2, r8
 7011 4312 6349     		ldr	r1, .L1903+44
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 124


 7012 4314 3046     		mov	r0, r6
 7013 4316 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7014 431a 0227     		movs	r7, #2
 7015 431c 0C98     		ldr	r0, [sp, #48]
 7016 431e FCF7ADBE 		b	.L189
 7017              	.L739:
 7018 4322 2846     		mov	r0, r5
 7019 4324 6768     		ldr	r7, [r4, #4]
 7020 4326 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7021 432a 07F6F837 		addw	r7, r7, #3064
 7022 432e 87ED000A 		vstr.32	s0, [r7]
 7023 4332 0C98     		ldr	r0, [sp, #48]
 7024 4334 0127     		movs	r7, #1
 7025 4336 FCF7A1BE 		b	.L189
 7026              	.L1776:
 7027 433a 2846     		mov	r0, r5
 7028 433c 6768     		ldr	r7, [r4, #4]
 7029 433e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7030 4342 07F6F437 		addw	r7, r7, #3060
 7031 4346 87ED000A 		vstr.32	s0, [r7]
 7032 434a 4421     		movs	r1, #68
 7033 434c 2846     		mov	r0, r5
 7034 434e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7035 4352 0028     		cmp	r0, #0
 7036 4354 E5D1     		bne	.L739
 7037 4356 0C98     		ldr	r0, [sp, #48]
 7038 4358 0127     		movs	r7, #1
 7039 435a FCF78FBE 		b	.L189
 7040              	.L594:
 7041 435e 4521     		movs	r1, #69
 7042 4360 2846     		mov	r0, r5
 7043 4362 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7044 4366 0028     		cmp	r0, #0
 7045 4368 00F09583 		beq	.L605
 7046              	.L1018:
 7047 436c D4F86433 		ldr	r3, [r4, #868]
 7048 4370 1293     		str	r3, [sp, #72]
 7049 4372 12AA     		add	r2, sp, #72
 7050 4374 54A9     		add	r1, sp, #336
 7051 4376 0123     		movs	r3, #1
 7052 4378 2846     		mov	r0, r5
 7053 437a FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7054 437e 129F     		ldr	r7, [sp, #72]
 7055 4380 2FB3     		cbz	r7, .L603
 7056 4382 9FED486A 		vldr.32	s12, .L1903+48
 7057 4386 54A9     		add	r1, sp, #336
 7058 4388 0022     		movs	r2, #0
 7059 438a F7EE006A 		vmov.f32	s13, #1.0e+0
 7060              	.L604:
 7061 438e B1EC017A 		vldmia.32	r1!, {s14}
 7062 4392 D4EDEE7A 		vldr.32	s15, [r4, #952]
 7063 4396 D4F85C03 		ldr	r0, [r4, #860]
 7064 439a 6368     		ldr	r3, [r4, #4]
 7065 439c 67EE277A 		vmul.f32	s15, s14, s15
 7066 43a0 1044     		add	r0, r0, r2
 7067 43a2 67EE867A 		vmul.f32	s15, s15, s12
 7068 43a6 03EB8003 		add	r3, r3, r0, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 125


 7069 43aa F4EE677A 		vcmp.f32	s15, s15
 7070 43ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7071 43b2 02F10102 		add	r2, r2, #1
 7072 43b6 06D6     		bvs	.L601
 7073 43b8 F4EEE67A 		vcmpe.f32	s15, s13
 7074 43bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7075 43c0 D8BF     		it	le
 7076 43c2 F0EE667A 		vmovle.f32	s15, s13
 7077              	.L601:
 7078 43c6 BA42     		cmp	r2, r7
 7079 43c8 C3ED5F7A 		vstr.32	s15, [r3, #380]
 7080 43cc DFD1     		bne	.L604
 7081              	.L603:
 7082 43ce 0C98     		ldr	r0, [sp, #48]
 7083 43d0 0127     		movs	r7, #1
 7084 43d2 FCF753BE 		b	.L189
 7085              	.L1771:
 7086 43d6 07F65C27 		addw	r7, r7, #2652
 7087 43da D7ED007A 		vldr.32	s15, [r7]
 7088 43de F5EEC07A 		vcmpe.f32	s15, #0
 7089 43e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7090 43e6 7EF79AA9 		ble	.L736
 7091 43ea 17EE900A 		vmov	r0, s15
 7092 43ee FFF7FEFF 		bl	__aeabi_f2d
 7093 43f2 0246     		mov	r2, r0
 7094 43f4 0B46     		mov	r3, r1
 7095 43f6 3046     		mov	r0, r6
 7096 43f8 2B49     		ldr	r1, .L1903+52
 7097 43fa FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7098 43fe 0127     		movs	r7, #1
 7099 4400 0C98     		ldr	r0, [sp, #48]
 7100 4402 FCF73BBE 		b	.L189
 7101              	.L1770:
 7102 4406 2846     		mov	r0, r5
 7103 4408 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7104 440c 3846     		mov	r0, r7
 7105 440e FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 7106 4412 0127     		movs	r7, #1
 7107 4414 0C98     		ldr	r0, [sp, #48]
 7108 4416 FCF731BE 		b	.L189
 7109              	.L914:
 7110 441a 2449     		ldr	r1, .L1903+56
 7111 441c 3046     		mov	r0, r6
 7112 441e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7113 4422 D4F86033 		ldr	r3, [r4, #864]
 7114 4426 002B     		cmp	r3, #0
 7115 4428 3DF467AC 		beq	.L911
 7116 442c DFF88490 		ldr	r9, .L1903+64
 7117 4430 04F20F57 		addw	r7, r4, #1295
 7118 4434 04F55A78 		add	r8, r4, #872
 7119 4438 4FF03A0A 		mov	r10, #58
 7120              	.L915:
 7121 443c 58F8040B 		ldr	r0, [r8], #4	@ float
 7122 4440 97F801B0 		ldrb	fp, [r7, #1]	@ zero_extendqisi2
 7123 4444 FFF7FEFF 		bl	__aeabi_f2d
 7124 4448 5246     		mov	r2, r10
 7125 444a CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 126


 7126 444e 5B46     		mov	r3, fp
 7127 4450 4946     		mov	r1, r9
 7128 4452 3046     		mov	r0, r6
 7129 4454 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7130 4458 A7F20E53 		subw	r3, r7, #1294
 7131 445c D4F86023 		ldr	r2, [r4, #864]
 7132 4460 1B1B     		subs	r3, r3, r4
 7133 4462 9A42     		cmp	r2, r3
 7134 4464 07F10107 		add	r7, r7, #1
 7135 4468 4FF02C0A 		mov	r10, #44
 7136 446c E6D8     		bhi	.L915
 7137 446e FDF744BC 		b	.L911
 7138              	.L1904:
 7139 4472 00BF     		.align	2
 7140              	.L1903:
 7141 4474 34100000 		.word	.LC164
 7142 4478 90000000 		.word	.LC27
 7143 447c 4C100000 		.word	.LC165
 7144 4480 C8000000 		.word	.LC31
 7145 4484 D8000000 		.word	.LC32
 7146 4488 54100000 		.word	.LC166
 7147 448c 84000000 		.word	.LC26
 7148 4490 AC000000 		.word	.LC29
 7149 4494 98000000 		.word	.LC28
 7150 4498 00000000 		.word	reprap
 7151 449c 30000000 		.word	.LC18
 7152 44a0 10070000 		.word	.LC90
 7153 44a4 8988883C 		.word	1015580809
 7154 44a8 A00B0000 		.word	.LC125
 7155 44ac A0100000 		.word	.LC169
 7156 44b0 7C000000 		.word	.LC25
 7157 44b4 B4100000 		.word	.LC170
 7158              	.L1743:
 7159 44b8 0023     		movs	r3, #0
 7160 44ba 84F81136 		strb	r3, [r4, #1553]
 7161 44be D04A     		ldr	r2, .L1905+16
 7162 44c0 0093     		str	r3, [sp]
 7163 44c2 2946     		mov	r1, r5
 7164 44c4 2046     		mov	r0, r4
 7165 44c6 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 7166 44ca 0127     		movs	r7, #1
 7167 44cc 0C98     		ldr	r0, [sp, #48]
 7168 44ce FCF7D5BD 		b	.L189
 7169              	.L845:
 7170 44d2 2846     		mov	r0, r5
 7171 44d4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7172 44d8 4FFA80F9 		sxtb	r9, r0
 7173 44dc 4946     		mov	r1, r9
 7174 44de C948     		ldr	r0, .L1905+20
 7175 44e0 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 7176 44e4 8046     		mov	r8, r0
 7177 44e6 0028     		cmp	r0, #0
 7178 44e8 00F03F87 		beq	.L1833
 7179 44ec 4521     		movs	r1, #69
 7180 44ee 2846     		mov	r0, r5
 7181 44f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7182 44f4 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 127


 7183 44f6 0028     		cmp	r0, #0
 7184 44f8 01F0F081 		beq	.L847
 7185 44fc D8F89430 		ldr	r3, [r8, #148]
 7186 4500 1293     		str	r3, [sp, #72]
 7187 4502 12AA     		add	r2, sp, #72
 7188 4504 0023     		movs	r3, #0
 7189 4506 54A9     		add	r1, sp, #336
 7190 4508 2846     		mov	r0, r5
 7191 450a FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7192 450e 129A     		ldr	r2, [sp, #72]
 7193 4510 D8F89430 		ldr	r3, [r8, #148]
 7194 4514 9A42     		cmp	r2, r3
 7195 4516 01F03B87 		beq	.L848
 7196 451a 05F15502 		add	r2, r5, #85
 7197 451e BA49     		ldr	r1, .L1905+24
 7198 4520 3046     		mov	r0, r6
 7199 4522 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7200              	.L849:
 7201 4526 0C98     		ldr	r0, [sp, #48]
 7202 4528 0127     		movs	r7, #1
 7203 452a FCF7A7BD 		b	.L189
 7204              	.L876:
 7205 452e 2846     		mov	r0, r5
 7206 4530 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7207 4534 0728     		cmp	r0, #7
 7208 4536 0746     		mov	r7, r0
 7209 4538 41F28780 		bls	.L877
 7210 453c 0C98     		ldr	r0, [sp, #48]
 7211 453e 0127     		movs	r7, #1
 7212 4540 FCF79CBD 		b	.L189
 7213              	.L1739:
 7214 4544 2846     		mov	r0, r5
 7215 4546 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7216 454a 4EF66023 		movw	r3, #60000
 7217 454e 03FB00F3 		mul	r3, r3, r0
 7218 4552 C4F83837 		str	r3, [r4, #1848]
 7219 4556 4821     		movs	r1, #72
 7220 4558 2846     		mov	r0, r5
 7221 455a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7222 455e 0746     		mov	r7, r0
 7223 4560 0028     		cmp	r0, #0
 7224 4562 7FF4ECAD 		bne	.L853
 7225 4566 0C98     		ldr	r0, [sp, #48]
 7226 4568 0127     		movs	r7, #1
 7227 456a FCF787BD 		b	.L189
 7228              	.L440:
 7229 456e 2846     		mov	r0, r5
 7230 4570 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7231 4574 5321     		movs	r1, #83
 7232 4576 8146     		mov	r9, r0
 7233 4578 2846     		mov	r0, r5
 7234 457a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7235 457e 8046     		mov	r8, r0
 7236 4580 0028     		cmp	r0, #0
 7237 4582 41F07680 		bne	.L441
 7238 4586 0C98     		ldr	r0, [sp, #48]
 7239 4588 0127     		movs	r7, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 128


 7240 458a FCF777BD 		b	.L189
 7241              	.L1727:
 7242 458e 2846     		mov	r0, r5
 7243 4590 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7244 4594 0028     		cmp	r0, #0
 7245 4596 D4BF     		ite	le
 7246 4598 0020     		movle	r0, #0
 7247 459a 0120     		movgt	r0, #1
 7248 459c 84F82405 		strb	r0, [r4, #1316]
 7249 45a0 4821     		movs	r1, #72
 7250 45a2 2846     		mov	r0, r5
 7251 45a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7252 45a8 0028     		cmp	r0, #0
 7253 45aa 7FF469AE 		bne	.L822
 7254 45ae 0C98     		ldr	r0, [sp, #48]
 7255 45b0 0127     		movs	r7, #1
 7256 45b2 FCF763BD 		b	.L189
 7257              	.L1800:
 7258 45b6 54AA     		add	r2, sp, #336
 7259 45b8 A223     		movs	r3, #162
 7260 45ba 12A9     		add	r1, sp, #72
 7261 45bc 2846     		mov	r0, r5
 7262 45be CDE91223 		strd	r2, r3, [sp, #72]
 7263 45c2 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 7264 45c6 54AA     		add	r2, sp, #336
 7265 45c8 3946     		mov	r1, r7
 7266 45ca 6068     		ldr	r0, [r4, #4]
 7267 45cc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7268 45d0 FEF78CBD 		b	.L524
 7269              	.L864:
 7270 45d4 D4F804A0 		ldr	r10, [r4, #4]
 7271 45d8 0AF6B443 		addw	r3, r10, #3252
 7272 45dc 0127     		movs	r7, #1
 7273 45de 1868     		ldr	r0, [r3]	@ float
 7274 45e0 FFF7FEFF 		bl	__aeabi_f2d
 7275 45e4 8046     		mov	r8, r0
 7276 45e6 BAF8BC0C 		ldrh	r0, [r10, #3260]
 7277 45ea 07EE900A 		vmov	s15, r0	@ int
 7278 45ee F8EE677A 		vcvt.f32.u32	s15, s15
 7279 45f2 8946     		mov	r9, r1
 7280 45f4 17EE900A 		vmov	r0, s15
 7281 45f8 FFF7FEFF 		bl	__aeabi_f2d
 7282 45fc BAF8B82C 		ldrh	r2, [r10, #3256]
 7283 4600 9AF8BBCC 		ldrb	ip, [r10, #3259]	@ zero_extendqisi2
 7284 4604 814B     		ldr	r3, .L1905+28
 7285 4606 0292     		str	r2, [sp, #8]
 7286 4608 814A     		ldr	r2, .L1905+32
 7287 460a BCF1000F 		cmp	ip, #0
 7288 460e 0CBF     		ite	eq
 7289 4610 9C46     		moveq	ip, r3
 7290 4612 9446     		movne	ip, r2
 7291 4614 CDE90001 		strd	r0, [sp]
 7292 4618 4246     		mov	r2, r8
 7293 461a 4B46     		mov	r3, r9
 7294 461c CDF80CC0 		str	ip, [sp, #12]
 7295 4620 7C49     		ldr	r1, .L1905+36
 7296 4622 3046     		mov	r0, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 129


 7297 4624 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7298 4628 0C98     		ldr	r0, [sp, #48]
 7299 462a FCF727BD 		b	.L189
 7300              	.L1741:
 7301 462e 2846     		mov	r0, r5
 7302 4630 6768     		ldr	r7, [r4, #4]
 7303 4632 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7304 4636 B4EE400A 		vcmp.f32	s0, s0
 7305 463a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7306 463e 08D6     		bvs	.L862
 7307 4640 F7EE007A 		vmov.f32	s15, #1.0e+0
 7308 4644 B4EEE70A 		vcmpe.f32	s0, s15
 7309 4648 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7310 464c 58BF     		it	pl
 7311 464e B0EE670A 		vmovpl.f32	s0, s15
 7312              	.L862:
 7313 4652 07F6B447 		addw	r7, r7, #3252
 7314 4656 87ED000A 		vstr.32	s0, [r7]
 7315 465a 0C98     		ldr	r0, [sp, #48]
 7316 465c 0127     		movs	r7, #1
 7317 465e FCF70DBD 		b	.L189
 7318              	.L1826:
 7319 4662 0C98     		ldr	r0, [sp, #48]
 7320 4664 0127     		movs	r7, #1
 7321 4666 FCF709BD 		b	.L189
 7322              	.L450:
 7323 466a 4521     		movs	r1, #69
 7324 466c 2846     		mov	r0, r5
 7325 466e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7326 4672 0028     		cmp	r0, #0
 7327 4674 00F0EE83 		beq	.L463
 7328              	.L1013:
 7329 4678 2946     		mov	r1, r5
 7330 467a 2046     		mov	r0, r4
 7331 467c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7332 4680 8146     		mov	r9, r0
 7333 4682 0028     		cmp	r0, #0
 7334 4684 3BF4E9AC 		beq	.L1661
 7335 4688 D4F86433 		ldr	r3, [r4, #868]
 7336 468c 1293     		str	r3, [sp, #72]
 7337 468e 12AA     		add	r2, sp, #72
 7338 4690 54A9     		add	r1, sp, #336
 7339 4692 0123     		movs	r3, #1
 7340 4694 2846     		mov	r0, r5
 7341 4696 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7342 469a 129F     		ldr	r7, [sp, #72]
 7343 469c 002F     		cmp	r7, #0
 7344 469e 3EF455AE 		beq	.L458
 7345 46a2 54A8     		add	r0, sp, #336
 7346 46a4 0022     		movs	r2, #0
 7347 46a6 B7EE007A 		vmov.f32	s14, #1.0e+0
 7348              	.L462:
 7349 46aa F0EC017A 		vldmia.32	r0!, {s15}
 7350 46ae D4F85C13 		ldr	r1, [r4, #860]
 7351 46b2 6368     		ldr	r3, [r4, #4]
 7352 46b4 F4EE677A 		vcmp.f32	s15, s15
 7353 46b8 1144     		add	r1, r1, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 130


 7354 46ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7355 46be 03EB8103 		add	r3, r3, r1, lsl #2
 7356 46c2 02F10102 		add	r2, r2, #1
 7357 46c6 06D6     		bvs	.L459
 7358 46c8 F4EEC77A 		vcmpe.f32	s15, s14
 7359 46cc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7360 46d0 D8BF     		it	le
 7361 46d2 F0EE477A 		vmovle.f32	s15, s14
 7362              	.L459:
 7363 46d6 9742     		cmp	r7, r2
 7364 46d8 C3ED777A 		vstr.32	s15, [r3, #476]
 7365 46dc E5D1     		bne	.L462
 7366 46de FEF735BE 		b	.L458
 7367              	.L1807:
 7368 46e2 4D49     		ldr	r1, .L1905+40
 7369 46e4 3046     		mov	r0, r6
 7370 46e6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7371 46ea 0227     		movs	r7, #2
 7372 46ec FEF775BE 		b	.L394
 7373              	.L902:
 7374 46f0 0127     		movs	r7, #1
 7375 46f2 FFF715B9 		b	.L900
 7376              	.L437:
 7377 46f6 5246     		mov	r2, r10
 7378 46f8 4849     		ldr	r1, .L1905+44
 7379 46fa 3046     		mov	r0, r6
 7380 46fc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7381 4700 0227     		movs	r7, #2
 7382 4702 FEF789BA 		b	.L435
 7383              	.L438:
 7384 4706 D9F80000 		ldr	r0, [r9]
 7385 470a FFF7FEFF 		bl	__aeabi_ui2d
 7386 470e 38A3     		adr	r3, .L1905
 7387 4710 D3E90023 		ldrd	r2, [r3]
 7388 4714 FFF7FEFF 		bl	__aeabi_ddiv
 7389 4718 CDE90401 		strd	r0, [sp, #16]
 7390 471c 54AB     		add	r3, sp, #336
 7391 471e D3E90001 		ldrd	r0, [r3]
 7392 4722 FFF7FEFF 		bl	__aeabi_ul2d
 7393 4726 34A3     		adr	r3, .L1905+8
 7394 4728 D3E90023 		ldrd	r2, [r3]
 7395 472c FFF7FEFF 		bl	__aeabi_ddiv
 7396 4730 CDE90201 		strd	r0, [sp, #8]
 7397 4734 DDE91201 		ldrd	r0, [sp, #72]
 7398 4738 FFF7FEFF 		bl	__aeabi_ul2d
 7399 473c 2EA3     		adr	r3, .L1905+8
 7400 473e D3E90023 		ldrd	r2, [r3]
 7401 4742 FFF7FEFF 		bl	__aeabi_ddiv
 7402 4746 5246     		mov	r2, r10
 7403 4748 CDE90001 		strd	r0, [sp]
 7404 474c 3449     		ldr	r1, .L1905+48
 7405 474e 3046     		mov	r0, r6
 7406 4750 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7407 4754 D8F80020 		ldr	r2, [r8]
 7408 4758 B2F5806F 		cmp	r2, #1024
 7409 475c 32BF     		itee	cc
 7410 475e 3149     		ldrcc	r1, .L1905+52
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 131


 7411 4760 3149     		ldrcs	r1, .L1905+56
 7412 4762 920A     		lsrcs	r2, r2, #10
 7413 4764 3046     		mov	r0, r6
 7414 4766 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7415 476a 0127     		movs	r7, #1
 7416 476c FEF754BA 		b	.L435
 7417              	.L808:
 7418 4770 DFF89090 		ldr	r9, .L1905+20
 7419 4774 04F5A268 		add	r8, r4, #1296
 7420 4778 0027     		movs	r7, #0
 7421              	.L810:
 7422 477a 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 7423 477e 2846     		mov	r0, r5
 7424 4780 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7425 4784 50B1     		cbz	r0, .L809
 7426 4786 2846     		mov	r0, r5
 7427 4788 D9F80CA0 		ldr	r10, [r9, #12]
 7428 478c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7429 4790 5046     		mov	r0, r10
 7430 4792 80EE080A 		vdiv.f32	s0, s0, s16
 7431 4796 3946     		mov	r1, r7
 7432 4798 FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEjf
 7433              	.L809:
 7434 479c 0137     		adds	r7, r7, #1
 7435 479e 032F     		cmp	r7, #3
 7436 47a0 EBD1     		bne	.L810
 7437 47a2 0C98     		ldr	r0, [sp, #48]
 7438 47a4 0127     		movs	r7, #1
 7439 47a6 FCF769BC 		b	.L189
 7440              	.L960:
 7441 47aa 2049     		ldr	r1, .L1905+60
 7442 47ac 3046     		mov	r0, r6
 7443 47ae FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7444 47b2 0227     		movs	r7, #2
 7445 47b4 FEF795BA 		b	.L965
 7446              	.L475:
 7447 47b8 04F5AB63 		add	r3, r4, #1368
 7448 47bc 2046     		mov	r0, r4
 7449 47be 1A68     		ldr	r2, [r3]	@ float
 7450 47c0 04F25453 		addw	r3, r4, #1364
 7451 47c4 1A60     		str	r2, [r3]	@ float
 7452 47c6 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 7453 47ca FDF752B8 		b	.L474
 7454              	.L705:
 7455 47ce DFF83480 		ldr	r8, .L1905+20
 7456 47d2 4FFA87F9 		sxtb	r9, r7
 7457 47d6 D8F81000 		ldr	r0, [r8, #16]
 7458 47da 4946     		mov	r1, r9
 7459 47dc FFF7FEFF 		bl	_ZNK4Heat11IsBedHeaterEa
 7460 47e0 0028     		cmp	r0, #0
 7461 47e2 01F0BD81 		beq	.L1834
 7462 47e6 9FED128A 		vldr.32	s16, .L1905+64
 7463 47ea FEF738B9 		b	.L706
 7464              	.L1906:
 7465 47ee 00BF     		.align	3
 7466              	.L1905:
 7467 47f0 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 132


 7468 47f4 80842E41 		.word	1093567616
 7469 47f8 00000000 		.word	0
 7470 47fc 65CDCD41 		.word	1104006501
 7471 4800 F80B0000 		.word	.LC128
 7472 4804 00000000 		.word	reprap
 7473 4808 540E0000 		.word	.LC153
 7474 480c 6C000000 		.word	.LC24
 7475 4810 60000000 		.word	.LC23
 7476 4814 9C0F0000 		.word	.LC159
 7477 4818 B8020000 		.word	.LC51
 7478 481c 18050000 		.word	.LC69
 7479 4820 38050000 		.word	.LC70
 7480 4824 98050000 		.word	.LC71
 7481 4828 A4050000 		.word	.LC72
 7482 482c B8110000 		.word	.LC180
 7483 4830 00009642 		.word	1117126656
 7484              	.L715:
 7485 4834 4521     		movs	r1, #69
 7486 4836 2846     		mov	r0, r5
 7487 4838 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7488 483c 0127     		movs	r7, #1
 7489 483e 0028     		cmp	r0, #0
 7490 4840 00F04F82 		beq	.L721
 7491              	.L720:
 7492 4844 2946     		mov	r1, r5
 7493 4846 2046     		mov	r0, r4
 7494 4848 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7495 484c 8146     		mov	r9, r0
 7496 484e 0028     		cmp	r0, #0
 7497 4850 3BF403AC 		beq	.L1661
 7498 4854 0DF1480A 		add	r10, sp, #72
 7499 4858 D4F86433 		ldr	r3, [r4, #868]
 7500 485c CAF80030 		str	r3, [r10]
 7501 4860 0DF5A878 		add	r8, sp, #336
 7502 4864 0123     		movs	r3, #1
 7503 4866 5246     		mov	r2, r10
 7504 4868 4146     		mov	r1, r8
 7505 486a 2846     		mov	r0, r5
 7506 486c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 7507 4870 DAF80030 		ldr	r3, [r10]
 7508 4874 23B3     		cbz	r3, .L724
 7509 4876 D04A     		ldr	r2, .L1907
 7510 4878 D04B     		ldr	r3, .L1907+4
 7511 487a 0799     		ldr	r1, [sp, #28]
 7512 487c DFF870B3 		ldr	fp, .L1907+56
 7513 4880 0029     		cmp	r1, #0
 7514 4882 08BF     		it	eq
 7515 4884 1A46     		moveq	r2, r3
 7516 4886 0892     		str	r2, [sp, #32]
 7517 4888 4FF00009 		mov	r9, #0
 7518              	.L726:
 7519 488c D4F85C13 		ldr	r1, [r4, #860]
 7520 4890 58F82920 		ldr	r2, [r8, r9, lsl #2]
 7521 4894 079B     		ldr	r3, [sp, #28]
 7522 4896 4944     		add	r1, r1, r9
 7523 4898 2046     		mov	r0, r4
 7524 489a FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 133


 7525 489e 4A46     		mov	r2, r9
 7526 48a0 5946     		mov	r1, fp
 7527 48a2 38B9     		cbnz	r0, .L725
 7528 48a4 0898     		ldr	r0, [sp, #32]
 7529 48a6 58F82930 		ldr	r3, [r8, r9, lsl #2]
 7530 48aa 0090     		str	r0, [sp]
 7531 48ac 3046     		mov	r0, r6
 7532 48ae FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7533 48b2 0227     		movs	r7, #2
 7534              	.L725:
 7535 48b4 DAF80030 		ldr	r3, [r10]
 7536 48b8 09F10109 		add	r9, r9, #1
 7537 48bc 4B45     		cmp	r3, r9
 7538 48be E5D8     		bhi	.L726
 7539              	.L724:
 7540 48c0 0C98     		ldr	r0, [sp, #48]
 7541 48c2 FCF7DBBB 		b	.L189
 7542              	.L1768:
 7543 48c6 94F8B930 		ldrb	r3, [r4, #185]	@ zero_extendqisi2
 7544 48ca 13B1     		cbz	r3, .L771
 7545 48cc 0123     		movs	r3, #1
 7546 48ce 84F84837 		strb	r3, [r4, #1864]
 7547              	.L771:
 7548 48d2 40F2F513 		movw	r3, #501
 7549 48d6 0093     		str	r3, [sp]
 7550 48d8 B94A     		ldr	r2, .L1907+8
 7551 48da 0123     		movs	r3, #1
 7552 48dc 2946     		mov	r1, r5
 7553 48de 2046     		mov	r0, r4
 7554 48e0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 7555 48e4 0127     		movs	r7, #1
 7556 48e6 0C98     		ldr	r0, [sp, #48]
 7557 48e8 FCF7C8BB 		b	.L189
 7558              	.L709:
 7559 48ec DFF8E482 		ldr	r8, .L1907+28
 7560 48f0 3946     		mov	r1, r7
 7561 48f2 D8F81000 		ldr	r0, [r8, #16]
 7562 48f6 FFF7FEFF 		bl	_ZN4Heat11CheckHeaterEj
 7563 48fa 0028     		cmp	r0, #0
 7564 48fc 01F02081 		beq	.L1835
 7565 4900 DFEDB07A 		vldr.32	s15, .L1907+12
 7566 4904 F4EEE78A 		vcmpe.f32	s17, s15
 7567 4908 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7568 490c 07D4     		bmi	.L711
 7569 490e F7EE007A 		vmov.f32	s15, #1.0e+0
 7570 4912 F4EEE78A 		vcmpe.f32	s17, s15
 7571 4916 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7572 491a 41F36585 		ble	.L1683
 7573              	.L711:
 7574 491e AA49     		ldr	r1, .L1907+16
 7575 4920 3046     		mov	r0, r6
 7576 4922 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7577 4926 0127     		movs	r7, #1
 7578 4928 0C98     		ldr	r0, [sp, #48]
 7579 492a FCF7A7BB 		b	.L189
 7580              	.L418:
 7581 492e A749     		ldr	r1, .L1907+20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 134


 7582 4930 3046     		mov	r0, r6
 7583 4932 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7584 4936 0227     		movs	r7, #2
 7585 4938 FCF789BC 		b	.L419
 7586              	.L1001:
 7587 493c 0023     		movs	r3, #0
 7588 493e 0093     		str	r3, [sp]
 7589 4940 A34A     		ldr	r2, .L1907+24
 7590 4942 0123     		movs	r3, #1
 7591 4944 2946     		mov	r1, r5
 7592 4946 2046     		mov	r0, r4
 7593 4948 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 7594 494c 0127     		movs	r7, #1
 7595 494e 0C98     		ldr	r0, [sp, #48]
 7596 4950 FCF794BB 		b	.L189
 7597              	.L1694:
 7598 4954 F7EE007A 		vmov.f32	s15, #1.0e+0
 7599 4958 70EE277A 		vadd.f32	s15, s0, s15
 7600 495c 0DF1400B 		add	fp, sp, #64
 7601 4960 5A46     		mov	r2, fp
 7602 4962 0EAB     		add	r3, sp, #56
 7603 4964 5221     		movs	r1, #82
 7604 4966 54AF     		add	r7, sp, #336
 7605 4968 2846     		mov	r0, r5
 7606 496a CBED007A 		vstr.32	s15, [fp]
 7607 496e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7608 4972 0021     		movs	r1, #0
 7609 4974 5120     		movs	r0, #81
 7610 4976 0FAB     		add	r3, sp, #60
 7611 4978 3970     		strb	r1, [r7]
 7612 497a 8DF83C10 		strb	r1, [sp, #60]
 7613 497e CDE91270 		strd	r7, r0, [sp, #72]
 7614 4982 12AA     		add	r2, sp, #72
 7615 4984 5021     		movs	r1, #80
 7616 4986 2846     		mov	r0, r5
 7617 4988 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 7618 498c 9DF83C30 		ldrb	r3, [sp, #60]	@ zero_extendqisi2
 7619 4990 002B     		cmp	r3, #0
 7620 4992 41F0B080 		bne	.L1836
 7621 4996 D4F8BC30 		ldr	r3, [r4, #188]
 7622 499a 002B     		cmp	r3, #0
 7623 499c 01F06585 		beq	.L1837
 7624              	.L995:
 7625 49a0 6068     		ldr	r0, [r4, #4]
 7626 49a2 DBED000A 		vldr.32	s1, [fp]
 7627 49a6 B0EE480A 		vmov.f32	s0, s16
 7628 49aa FFF7FEFF 		bl	_ZN8Platform14EnableAutoSaveEff
 7629 49ae 0127     		movs	r7, #1
 7630 49b0 0C98     		ldr	r0, [sp, #48]
 7631 49b2 FCF763BB 		b	.L189
 7632              	.L489:
 7633 49b6 3946     		mov	r1, r7
 7634 49b8 8648     		ldr	r0, .L1907+28
 7635 49ba FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 7636 49be 0127     		movs	r7, #1
 7637 49c0 0C98     		ldr	r0, [sp, #48]
 7638 49c2 FCF75BBB 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 135


 7639              	.L588:
 7640 49c6 8449     		ldr	r1, .L1907+32
 7641 49c8 3046     		mov	r0, r6
 7642 49ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7643 49ce D4F85C33 		ldr	r3, [r4, #860]
 7644 49d2 FBB1     		cbz	r3, .L592
 7645 49d4 DFF81C92 		ldr	r9, .L1907+60
 7646 49d8 04F20F58 		addw	r8, r4, #1295
 7647 49dc 0027     		movs	r7, #0
 7648              	.L593:
 7649 49de 6368     		ldr	r3, [r4, #4]
 7650 49e0 D4EDEE7A 		vldr.32	s15, [r4, #952]
 7651 49e4 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 7652 49e8 03EB8703 		add	r3, r3, r7, lsl #2
 7653 49ec 93ED6B7A 		vldr.32	s14, [r3, #428]
 7654 49f0 C7EE277A 		vdiv.f32	s15, s14, s15
 7655 49f4 0137     		adds	r7, r7, #1
 7656 49f6 17EE900A 		vmov	r0, s15
 7657 49fa FFF7FEFF 		bl	__aeabi_f2d
 7658 49fe 5246     		mov	r2, r10
 7659 4a00 CDE90001 		strd	r0, [sp]
 7660 4a04 4946     		mov	r1, r9
 7661 4a06 3046     		mov	r0, r6
 7662 4a08 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7663 4a0c D4F85C33 		ldr	r3, [r4, #860]
 7664 4a10 BB42     		cmp	r3, r7
 7665 4a12 E4D8     		bhi	.L593
 7666              	.L592:
 7667 4a14 7149     		ldr	r1, .L1907+36
 7668 4a16 3046     		mov	r0, r6
 7669 4a18 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7670 4a1c D4F86433 		ldr	r3, [r4, #868]
 7671 4a20 002B     		cmp	r3, #0
 7672 4a22 01F08384 		beq	.L590
 7673 4a26 6E4F     		ldr	r7, .L1907+40
 7674 4a28 4FF00008 		mov	r8, #0
 7675 4a2c 4FF02009 		mov	r9, #32
 7676              	.L591:
 7677 4a30 D4F85C13 		ldr	r1, [r4, #860]
 7678 4a34 6368     		ldr	r3, [r4, #4]
 7679 4a36 D4EDEE7A 		vldr.32	s15, [r4, #952]
 7680 4a3a 4144     		add	r1, r1, r8
 7681 4a3c 03EB8103 		add	r3, r3, r1, lsl #2
 7682 4a40 93ED6B7A 		vldr.32	s14, [r3, #428]
 7683 4a44 C7EE277A 		vdiv.f32	s15, s14, s15
 7684 4a48 08F10108 		add	r8, r8, #1
 7685 4a4c 17EE900A 		vmov	r0, s15
 7686 4a50 FFF7FEFF 		bl	__aeabi_f2d
 7687 4a54 4A46     		mov	r2, r9
 7688 4a56 CDE90001 		strd	r0, [sp]
 7689 4a5a 3946     		mov	r1, r7
 7690 4a5c 3046     		mov	r0, r6
 7691 4a5e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7692 4a62 D4F86433 		ldr	r3, [r4, #868]
 7693 4a66 4345     		cmp	r3, r8
 7694 4a68 4FF03A09 		mov	r9, #58
 7695 4a6c E0D8     		bhi	.L591
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 136


 7696 4a6e 0C98     		ldr	r0, [sp, #48]
 7697 4a70 0127     		movs	r7, #1
 7698 4a72 FCF703BB 		b	.L189
 7699              	.L1014:
 7700 4a76 4821     		movs	r1, #72
 7701 4a78 2846     		mov	r0, r5
 7702 4a7a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7703 4a7e 0346     		mov	r3, r0
 7704 4a80 0028     		cmp	r0, #0
 7705 4a82 40F05887 		bne	.L1021
 7706 4a86 0246     		mov	r2, r0
 7707 4a88 8046     		mov	r8, r0
 7708              	.L540:
 7709 4a8a 4A44     		add	r2, r2, r9
 7710 4a8c 554F     		ldr	r7, .L1907+44
 7711 4a8e 92F9D9A0 		ldrsb	r10, [r2, #217]
 7712 4a92 FDF7E2BA 		b	.L541
 7713              	.L605:
 7714 4a96 5449     		ldr	r1, .L1907+48
 7715 4a98 3046     		mov	r0, r6
 7716 4a9a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7717 4a9e D4F85C33 		ldr	r3, [r4, #860]
 7718 4aa2 1BB3     		cbz	r3, .L609
 7719 4aa4 9FED518A 		vldr.32	s16, .L1907+52
 7720 4aa8 DFF84891 		ldr	r9, .L1907+60
 7721 4aac 04F20F58 		addw	r8, r4, #1295
 7722 4ab0 0027     		movs	r7, #0
 7723              	.L610:
 7724 4ab2 6368     		ldr	r3, [r4, #4]
 7725 4ab4 D4EDEE7A 		vldr.32	s15, [r4, #952]
 7726 4ab8 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 7727 4abc 03EB8703 		add	r3, r3, r7, lsl #2
 7728 4ac0 93ED5F7A 		vldr.32	s14, [r3, #380]
 7729 4ac4 67EE887A 		vmul.f32	s15, s15, s16
 7730 4ac8 0137     		adds	r7, r7, #1
 7731 4aca C7EE277A 		vdiv.f32	s15, s14, s15
 7732 4ace 17EE900A 		vmov	r0, s15
 7733 4ad2 FFF7FEFF 		bl	__aeabi_f2d
 7734 4ad6 5246     		mov	r2, r10
 7735 4ad8 CDE90001 		strd	r0, [sp]
 7736 4adc 4946     		mov	r1, r9
 7737 4ade 3046     		mov	r0, r6
 7738 4ae0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7739 4ae4 D4F85C33 		ldr	r3, [r4, #860]
 7740 4ae8 BB42     		cmp	r3, r7
 7741 4aea E2D8     		bhi	.L610
 7742              	.L609:
 7743 4aec 3B49     		ldr	r1, .L1907+36
 7744 4aee 3046     		mov	r0, r6
 7745 4af0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7746 4af4 D4F86433 		ldr	r3, [r4, #868]
 7747 4af8 002B     		cmp	r3, #0
 7748 4afa 01F0F983 		beq	.L607
 7749 4afe 9FED3B8A 		vldr.32	s16, .L1907+52
 7750 4b02 374F     		ldr	r7, .L1907+40
 7751 4b04 4FF00008 		mov	r8, #0
 7752 4b08 4FF02009 		mov	r9, #32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 137


 7753              	.L608:
 7754 4b0c D4F85C13 		ldr	r1, [r4, #860]
 7755 4b10 6368     		ldr	r3, [r4, #4]
 7756 4b12 D4EDEE7A 		vldr.32	s15, [r4, #952]
 7757 4b16 4144     		add	r1, r1, r8
 7758 4b18 03EB8103 		add	r3, r3, r1, lsl #2
 7759 4b1c 93ED5F7A 		vldr.32	s14, [r3, #380]
 7760 4b20 67EE887A 		vmul.f32	s15, s15, s16
 7761 4b24 08F10108 		add	r8, r8, #1
 7762 4b28 C7EE277A 		vdiv.f32	s15, s14, s15
 7763 4b2c 17EE900A 		vmov	r0, s15
 7764 4b30 FFF7FEFF 		bl	__aeabi_f2d
 7765 4b34 4A46     		mov	r2, r9
 7766 4b36 CDE90001 		strd	r0, [sp]
 7767 4b3a 3946     		mov	r1, r7
 7768 4b3c 3046     		mov	r0, r6
 7769 4b3e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7770 4b42 D4F86433 		ldr	r3, [r4, #868]
 7771 4b46 4345     		cmp	r3, r8
 7772 4b48 4FF03A09 		mov	r9, #58
 7773 4b4c DED8     		bhi	.L608
 7774 4b4e 0C98     		ldr	r0, [sp, #48]
 7775 4b50 0127     		movs	r7, #1
 7776 4b52 FCF793BA 		b	.L189
 7777              	.L1707:
 7778 4b56 002B     		cmp	r3, #0
 7779 4b58 7CF4E2AA 		bne	.L483
 7780 4b5c 2946     		mov	r1, r5
 7781 4b5e 2046     		mov	r0, r4
 7782 4b60 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7783 4b64 0028     		cmp	r0, #0
 7784 4b66 3BF476AA 		beq	.L1703
 7785 4b6a AB68     		ldr	r3, [r5, #8]
 7786 4b6c D8F89C20 		ldr	r2, [r8, #156]
 7787 4b70 DA82     		strh	r2, [r3, #22]	@ movhi
 7788 4b72 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
 7789 4b76 AA68     		ldr	r2, [r5, #8]
 7790 4b78 0C98     		ldr	r0, [sp, #48]
 7791 4b7a 002B     		cmp	r3, #0
 7792 4b7c 18BF     		it	ne
 7793 4b7e 0723     		movne	r3, #7
 7794 4b80 5375     		strb	r3, [r2, #21]
 7795 4b82 AB68     		ldr	r3, [r5, #8]
 7796 4b84 0A22     		movs	r2, #10
 7797 4b86 1A75     		strb	r2, [r3, #20]
 7798 4b88 0127     		movs	r7, #1
 7799 4b8a FCF777BA 		b	.L189
 7800              	.L390:
 7801 4b8e 2946     		mov	r1, r5
 7802 4b90 2046     		mov	r0, r4
 7803 4b92 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7804 4b96 0028     		cmp	r0, #0
 7805 4b98 7EF407AC 		bne	.L393
 7806 4b9c FBF75BBA 		b	.L1703
 7807              	.L1806:
 7808 4ba0 2846     		mov	r0, r5
 7809 4ba2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 138


 7810 4ba6 0246     		mov	r2, r0
 7811 4ba8 FEF7ECBB 		b	.L744
 7812              	.L1805:
 7813 4bac 2846     		mov	r0, r5
 7814 4bae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7815 4bb2 0746     		mov	r7, r0
 7816 4bb4 FEF7DDBB 		b	.L743
 7817              	.L1908:
 7818              		.align	2
 7819              	.L1907:
 7820 4bb8 000B0000 		.word	.LC118
 7821 4bbc 2C000000 		.word	.LC17
 7822 4bc0 800C0000 		.word	.LC134
 7823 4bc4 CDCCCC3D 		.word	1036831949
 7824 4bc8 E40A0000 		.word	.LC117
 7825 4bcc FC030000 		.word	.LC61
 7826 4bd0 AC120000 		.word	.LC189
 7827 4bd4 00000000 		.word	reprap
 7828 4bd8 60080000 		.word	.LC100
 7829 4bdc E4050000 		.word	.LC75
 7830 4be0 7C080000 		.word	.LC102
 7831 4be4 20000000 		.word	.LC15
 7832 4be8 84080000 		.word	.LC103
 7833 4bec 8988883C 		.word	1015580809
 7834 4bf0 440B0000 		.word	.LC120
 7835 4bf4 70080000 		.word	.LC101
 7836              	.L927:
 7837 4bf8 4421     		movs	r1, #68
 7838 4bfa 2846     		mov	r0, r5
 7839 4bfc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7840 4c00 0028     		cmp	r0, #0
 7841 4c02 7EF4D5A8 		bne	.L930
 7842 4c06 D7F8740A 		ldr	r0, [r7, #2676]
 7843              	.L929:
 7844 4c0a 0368     		ldr	r3, [r0]
 7845 4c0c 0DF5A878 		add	r8, sp, #336
 7846 4c10 0022     		movs	r2, #0
 7847 4c12 CDF80080 		str	r8, [sp]
 7848 4c16 5F68     		ldr	r7, [r3, #4]
 7849 4c18 88F80020 		strb	r2, [r8]
 7850 4c1c 3346     		mov	r3, r6
 7851 4c1e 2A46     		mov	r2, r5
 7852 4c20 40F29921 		movw	r1, #665
 7853 4c24 B847     		blx	r7
 7854 4c26 0028     		cmp	r0, #0
 7855 4c28 3EF40AA9 		beq	.L1010
 7856 4c2c 04F1EC07 		add	r7, r4, #236
 7857 4c30 FEF7E9B8 		b	.L1011
 7858              	.L841:
 7859 4c34 D349     		ldr	r1, .L1909
 7860 4c36 3046     		mov	r0, r6
 7861 4c38 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7862 4c3c D4F85C33 		ldr	r3, [r4, #860]
 7863 4c40 EBB1     		cbz	r3, .L833
 7864 4c42 DFF88893 		ldr	r9, .L1909+72
 7865 4c46 04F21958 		addw	r8, r4, #1305
 7866 4c4a 0027     		movs	r7, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 139


 7867              	.L844:
 7868 4c4c 6368     		ldr	r3, [r4, #4]
 7869 4c4e 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 7870 4c52 03EB8703 		add	r3, r3, r7, lsl #2
 7871 4c56 D3ED837A 		vldr.32	s15, [r3, #524]
 7872 4c5a C7EE887A 		vdiv.f32	s15, s15, s16
 7873 4c5e 0137     		adds	r7, r7, #1
 7874 4c60 17EE900A 		vmov	r0, s15
 7875 4c64 FFF7FEFF 		bl	__aeabi_f2d
 7876 4c68 5246     		mov	r2, r10
 7877 4c6a CDE90001 		strd	r0, [sp]
 7878 4c6e 4946     		mov	r1, r9
 7879 4c70 3046     		mov	r0, r6
 7880 4c72 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7881 4c76 D4F85C33 		ldr	r3, [r4, #860]
 7882 4c7a BB42     		cmp	r3, r7
 7883 4c7c E6D8     		bhi	.L844
 7884              	.L833:
 7885 4c7e C249     		ldr	r1, .L1909+4
 7886 4c80 3046     		mov	r0, r6
 7887 4c82 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7888 4c86 D4F86433 		ldr	r3, [r4, #868]
 7889 4c8a 002B     		cmp	r3, #0
 7890 4c8c 01F03483 		beq	.L842
 7891 4c90 BE4F     		ldr	r7, .L1909+8
 7892 4c92 4FF00008 		mov	r8, #0
 7893 4c96 4FF02009 		mov	r9, #32
 7894              	.L843:
 7895 4c9a D4F85C13 		ldr	r1, [r4, #860]
 7896 4c9e 6368     		ldr	r3, [r4, #4]
 7897 4ca0 4144     		add	r1, r1, r8
 7898 4ca2 03EB8103 		add	r3, r3, r1, lsl #2
 7899 4ca6 D3ED837A 		vldr.32	s15, [r3, #524]
 7900 4caa C7EE887A 		vdiv.f32	s15, s15, s16
 7901 4cae 08F10108 		add	r8, r8, #1
 7902 4cb2 17EE900A 		vmov	r0, s15
 7903 4cb6 FFF7FEFF 		bl	__aeabi_f2d
 7904 4cba 4A46     		mov	r2, r9
 7905 4cbc CDE90001 		strd	r0, [sp]
 7906 4cc0 3946     		mov	r1, r7
 7907 4cc2 3046     		mov	r0, r6
 7908 4cc4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7909 4cc8 D4F86433 		ldr	r3, [r4, #868]
 7910 4ccc 4345     		cmp	r3, r8
 7911 4cce 4FF03A09 		mov	r9, #58
 7912 4cd2 E2D8     		bhi	.L843
 7913 4cd4 0C98     		ldr	r0, [sp, #48]
 7914 4cd6 0127     		movs	r7, #1
 7915 4cd8 FCF7D0B9 		b	.L189
 7916              	.L1020:
 7917 4cdc AC49     		ldr	r1, .L1909+12
 7918 4cde FEF7A7BA 		b	.L982
 7919              	.L721:
 7920 4ce2 AC49     		ldr	r1, .L1909+16
 7921 4ce4 3046     		mov	r0, r6
 7922 4ce6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7923 4cea D4F85C33 		ldr	r3, [r4, #860]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 140


 7924 4cee 0BB3     		cbz	r3, .L731
 7925 4cf0 DFF8DCB2 		ldr	fp, .L1909+76
 7926 4cf4 04F2195A 		addw	r10, r4, #1305
 7927 4cf8 4FF00009 		mov	r9, #0
 7928 4cfc 0DF5A878 		add	r8, sp, #336
 7929              	.L732:
 7930 4d00 4946     		mov	r1, r9
 7931 4d02 4246     		mov	r2, r8
 7932 4d04 6068     		ldr	r0, [r4, #4]
 7933 4d06 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 7934 4d0a 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 7935 4d0e A24B     		ldr	r3, .L1909+20
 7936 4d10 1AF8012F 		ldrb	r2, [r10, #1]!	@ zero_extendqisi2
 7937 4d14 0029     		cmp	r1, #0
 7938 4d16 08BF     		it	eq
 7939 4d18 5B46     		moveq	r3, fp
 7940 4d1a 1946     		mov	r1, r3
 7941 4d1c 0091     		str	r1, [sp]
 7942 4d1e 0346     		mov	r3, r0
 7943 4d20 9E49     		ldr	r1, .L1909+24
 7944 4d22 3046     		mov	r0, r6
 7945 4d24 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7946 4d28 D4F85C33 		ldr	r3, [r4, #860]
 7947 4d2c 09F10109 		add	r9, r9, #1
 7948 4d30 4B45     		cmp	r3, r9
 7949 4d32 E5D8     		bhi	.L732
 7950              	.L731:
 7951 4d34 9A49     		ldr	r1, .L1909+28
 7952 4d36 3046     		mov	r0, r6
 7953 4d38 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7954 4d3c D4F86433 		ldr	r3, [r4, #868]
 7955 4d40 002B     		cmp	r3, #0
 7956 4d42 01F00283 		beq	.L728
 7957 4d46 DFF888B2 		ldr	fp, .L1909+76
 7958 4d4a DFF84CA2 		ldr	r10, .L1909+20
 7959 4d4e 4FF00009 		mov	r9, #0
 7960 4d52 0DF5A878 		add	r8, sp, #336
 7961              	.L729:
 7962 4d56 D4F85C13 		ldr	r1, [r4, #860]
 7963 4d5a 6068     		ldr	r0, [r4, #4]
 7964 4d5c 4944     		add	r1, r1, r9
 7965 4d5e 4246     		mov	r2, r8
 7966 4d60 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 7967 4d64 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 7968 4d68 8E49     		ldr	r1, .L1909+32
 7969 4d6a 002B     		cmp	r3, #0
 7970 4d6c 0CBF     		ite	eq
 7971 4d6e 5B46     		moveq	r3, fp
 7972 4d70 5346     		movne	r3, r10
 7973 4d72 0246     		mov	r2, r0
 7974 4d74 3046     		mov	r0, r6
 7975 4d76 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7976 4d7a D4F86433 		ldr	r3, [r4, #868]
 7977 4d7e 09F10109 		add	r9, r9, #1
 7978 4d82 4B45     		cmp	r3, r9
 7979 4d84 E7D8     		bhi	.L729
 7980 4d86 0C98     		ldr	r0, [sp, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 141


 7981 4d88 FCF778B9 		b	.L189
 7982              	.L478:
 7983 4d8c AB68     		ldr	r3, [r5, #8]
 7984 4d8e 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 7985 4d90 68F3C302 		bfi	r2, r8, #3, #1
 7986 4d94 1A76     		strb	r2, [r3, #24]
 7987 4d96 2846     		mov	r0, r5
 7988 4d98 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7989 4d9c B0EE408A 		vmov.f32	s16, s0
 7990 4da0 FCF79AB9 		b	.L477
 7991              	.L487:
 7992 4da4 AB68     		ldr	r3, [r5, #8]
 7993 4da6 0C98     		ldr	r0, [sp, #48]
 7994 4da8 0E22     		movs	r2, #14
 7995 4daa 1A75     		strb	r2, [r3, #20]
 7996 4dac 0127     		movs	r7, #1
 7997 4dae FCF765B9 		b	.L189
 7998              	.L745:
 7999 4db2 37F00201 		bics	r1, r7, #2
 8000 4db6 05D1     		bne	.L747
 8001 4db8 84F84477 		strb	r7, [r4, #1860]
 8002 4dbc 1B68     		ldr	r3, [r3]
 8003 4dbe 9D42     		cmp	r5, r3
 8004 4dc0 7EF4E5AA 		bne	.L748
 8005              	.L747:
 8006 4dc4 0123     		movs	r3, #1
 8007 4dc6 FEF7E3BA 		b	.L746
 8008              	.L1786:
 8009 4dca 0D9A     		ldr	r2, [sp, #52]
 8010 4dcc 7649     		ldr	r1, .L1909+36
 8011 4dce 3046     		mov	r0, r6
 8012 4dd0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8013 4dd4 022F     		cmp	r7, #2
 8014 4dd6 00F07C87 		beq	.L1838
 8015 4dda 7449     		ldr	r1, .L1909+40
 8016 4ddc 3046     		mov	r0, r6
 8017 4dde FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 8018 4de2 0127     		movs	r7, #1
 8019 4de4 FDF718BF 		b	.L435
 8020              	.L1792:
 8021 4de8 5321     		movs	r1, #83
 8022 4dea 2846     		mov	r0, r5
 8023 4dec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8024 4df0 0028     		cmp	r0, #0
 8025 4df2 00F08284 		beq	.L652
 8026 4df6 2846     		mov	r0, r5
 8027 4df8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8028 4dfc DFED6C7A 		vldr.32	s15, .L1909+44
 8029 4e00 80EE270A 		vdiv.f32	s0, s0, s15
 8030 4e04 B5EEC00A 		vcmpe.f32	s0, #0
 8031 4e08 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8032 4e0c FEF695A8 		blt	.L650
 8033 4e10 D4F86021 		ldr	r2, [r4, #352]
 8034 4e14 549B     		ldr	r3, [sp, #336]
 8035 4e16 002A     		cmp	r2, #0
 8036 4e18 41F0E181 		bne	.L1675
 8037 4e1c 03F5AC72 		add	r2, r3, #344
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 142


 8038              	.L654:
 8039 4e20 04EB8202 		add	r2, r4, r2, lsl #2
 8040 4e24 82ED000A 		vstr.32	s0, [r2]
 8041 4e28 FEF787B8 		b	.L650
 8042              	.L1708:
 8043 4e2c FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 8044 4e30 FCF783B9 		b	.L486
 8045              	.L1747:
 8046 4e34 0C98     		ldr	r0, [sp, #48]
 8047 4e36 0127     		movs	r7, #1
 8048 4e38 FCF720B9 		b	.L189
 8049              	.L1086:
 8050 4e3c 40F63443 		movw	r3, #3124
 8051 4e40 FCF7CABB 		b	.L757
 8052              	.L368:
 8053 4e44 4046     		mov	r0, r8
 8054 4e46 5B49     		ldr	r1, .L1909+48
 8055 4e48 C8E900A3 		strd	r10, r3, [r8]
 8056 4e4c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8057 4e50 FCF72BBA 		b	.L369
 8058              	.L463:
 8059 4e54 5849     		ldr	r1, .L1909+52
 8060 4e56 3046     		mov	r0, r6
 8061 4e58 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8062 4e5c D4F85C33 		ldr	r3, [r4, #860]
 8063 4e60 CBB1     		cbz	r3, .L467
 8064 4e62 DFF87091 		ldr	r9, .L1909+80
 8065 4e66 04F21958 		addw	r8, r4, #1305
 8066 4e6a 0027     		movs	r7, #0
 8067              	.L468:
 8068 4e6c 6368     		ldr	r3, [r4, #4]
 8069 4e6e 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 8070 4e72 03EB8703 		add	r3, r3, r7, lsl #2
 8071 4e76 0137     		adds	r7, r7, #1
 8072 4e78 D3F8DC01 		ldr	r0, [r3, #476]	@ float
 8073 4e7c FFF7FEFF 		bl	__aeabi_f2d
 8074 4e80 5246     		mov	r2, r10
 8075 4e82 CDE90001 		strd	r0, [sp]
 8076 4e86 4946     		mov	r1, r9
 8077 4e88 3046     		mov	r0, r6
 8078 4e8a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8079 4e8e D4F85C33 		ldr	r3, [r4, #860]
 8080 4e92 BB42     		cmp	r3, r7
 8081 4e94 EAD8     		bhi	.L468
 8082              	.L467:
 8083 4e96 3C49     		ldr	r1, .L1909+4
 8084 4e98 3046     		mov	r0, r6
 8085 4e9a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8086 4e9e D4F86433 		ldr	r3, [r4, #868]
 8087 4ea2 002B     		cmp	r3, #0
 8088 4ea4 01F07A82 		beq	.L465
 8089 4ea8 444F     		ldr	r7, .L1909+56
 8090 4eaa 4FF00008 		mov	r8, #0
 8091 4eae 4FF02009 		mov	r9, #32
 8092              	.L466:
 8093 4eb2 D4F85C13 		ldr	r1, [r4, #860]
 8094 4eb6 6368     		ldr	r3, [r4, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 143


 8095 4eb8 4144     		add	r1, r1, r8
 8096 4eba 03EB8103 		add	r3, r3, r1, lsl #2
 8097 4ebe 08F10108 		add	r8, r8, #1
 8098 4ec2 D3F8DC01 		ldr	r0, [r3, #476]	@ float
 8099 4ec6 FFF7FEFF 		bl	__aeabi_f2d
 8100 4eca 4A46     		mov	r2, r9
 8101 4ecc CDE90001 		strd	r0, [sp]
 8102 4ed0 3946     		mov	r1, r7
 8103 4ed2 3046     		mov	r0, r6
 8104 4ed4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8105 4ed8 D4F86433 		ldr	r3, [r4, #868]
 8106 4edc 4345     		cmp	r3, r8
 8107 4ede 4FF03A09 		mov	r9, #58
 8108 4ee2 E6D8     		bhi	.L466
 8109 4ee4 0C98     		ldr	r0, [sp, #48]
 8110 4ee6 0127     		movs	r7, #1
 8111 4ee8 FCF7C8B8 		b	.L189
 8112              	.L1740:
 8113 4eec 4246     		mov	r2, r8
 8114 4eee 3449     		ldr	r1, .L1909+60
 8115 4ef0 3046     		mov	r0, r6
 8116 4ef2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8117 4ef6 0127     		movs	r7, #1
 8118 4ef8 0C98     		ldr	r0, [sp, #48]
 8119 4efa FCF7BFB8 		b	.L189
 8120              	.L956:
 8121 4efe 3149     		ldr	r1, .L1909+64
 8122 4f00 3046     		mov	r0, r6
 8123 4f02 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8124 4f06 0227     		movs	r7, #2
 8125 4f08 0C98     		ldr	r0, [sp, #48]
 8126 4f0a FCF7B7B8 		b	.L189
 8127              	.L1746:
 8128 4f0e 2846     		mov	r0, r5
 8129 4f10 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8130 4f14 0746     		mov	r7, r0
 8131 4f16 0028     		cmp	r0, #0
 8132 4f18 00F07E87 		beq	.L406
 8133 4f1c 0127     		movs	r7, #1
 8134 4f1e 0C98     		ldr	r0, [sp, #48]
 8135 4f20 84F8B770 		strb	r7, [r4, #183]
 8136 4f24 FCF7AAB8 		b	.L189
 8137              	.L918:
 8138 4f28 2846     		mov	r0, r5
 8139 4f2a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8140 4f2e 0128     		cmp	r0, #1
 8141 4f30 5FFA88F8 		uxtb	r8, r8
 8142 4f34 00F0C887 		beq	.L1839
 8143 4f38 234B     		ldr	r3, .L1909+68
 8144 4f3a 3946     		mov	r1, r7
 8145 4f3c 9868     		ldr	r0, [r3, #8]
 8146 4f3e 4246     		mov	r2, r8
 8147 4f40 3346     		mov	r3, r6
 8148 4f42 FFF7FEFF 		bl	_ZN7Network15DisableProtocolEjhRK9StringRef
 8149 4f46 0746     		mov	r7, r0
 8150 4f48 0C98     		ldr	r0, [sp, #48]
 8151 4f4a FCF797B8 		b	.L189
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 144


 8152              	.L867:
 8153 4f4e 0DF1480A 		add	r10, sp, #72
 8154 4f52 0DF5A878 		add	r8, sp, #336
 8155 4f56 0023     		movs	r3, #0
 8156 4f58 0927     		movs	r7, #9
 8157 4f5a 5246     		mov	r2, r10
 8158 4f5c 4146     		mov	r1, r8
 8159 4f5e 2846     		mov	r0, r5
 8160 4f60 CAF80070 		str	r7, [r10]
 8161 4f64 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8162 4f68 DAF80030 		ldr	r3, [r10]
 8163 4f6c 002B     		cmp	r3, #0
 8164 4f6e 44D0     		beq	.L872
 8165 4f70 D8F80010 		ldr	r1, [r8]
 8166 4f74 D4F86433 		ldr	r3, [r4, #868]
 8167 4f78 9942     		cmp	r1, r3
 8168 4f7a 80F03786 		bcs	.L870
 8169 4f7e 0027     		movs	r7, #0
 8170 4f80 31E0     		b	.L871
 8171              	.L1910:
 8172 4f82 00BF     		.align	2
 8173              	.L1909:
 8174 4f84 3C0E0000 		.word	.LC152
 8175 4f88 E4050000 		.word	.LC75
 8176 4f8c 7C080000 		.word	.LC102
 8177 4f90 04010000 		.word	.LC35
 8178 4f94 740B0000 		.word	.LC121
 8179 4f98 24000000 		.word	.LC16
 8180 4f9c 8C0B0000 		.word	.LC123
 8181 4fa0 880B0000 		.word	.LC122
 8182 4fa4 980B0000 		.word	.LC124
 8183 4fa8 9C040000 		.word	.LC65
 8184 4fac FC040000 		.word	.LC67
 8185 4fb0 0000C842 		.word	1120403456
 8186 4fb4 04020000 		.word	.LC43
 8187 4fb8 D8050000 		.word	.LC74
 8188 4fbc F4050000 		.word	.LC77
 8189 4fc0 580F0000 		.word	.LC158
 8190 4fc4 54110000 		.word	.LC176
 8191 4fc8 00000000 		.word	reprap
 8192 4fcc 70080000 		.word	.LC101
 8193 4fd0 2C000000 		.word	.LC17
 8194 4fd4 E8050000 		.word	.LC76
 8195              	.L1687:
 8196 4fd8 58F82710 		ldr	r1, [r8, r7, lsl #2]
 8197 4fdc D4F86433 		ldr	r3, [r4, #868]
 8198 4fe0 9942     		cmp	r1, r3
 8199 4fe2 80F00386 		bcs	.L870
 8200              	.L871:
 8201 4fe6 B0EE480A 		vmov.f32	s0, s16
 8202 4fea 6068     		ldr	r0, [r4, #4]
 8203 4fec FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 8204 4ff0 DAF80030 		ldr	r3, [r10]
 8205 4ff4 0137     		adds	r7, r7, #1
 8206 4ff6 BB42     		cmp	r3, r7
 8207 4ff8 EED8     		bhi	.L1687
 8208              	.L872:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 145


 8209 4ffa 0127     		movs	r7, #1
 8210              	.L869:
 8211 4ffc 0C98     		ldr	r0, [sp, #48]
 8212 4ffe FCF73DB8 		b	.L189
 8213              	.L1778:
 8214 5002 2846     		mov	r0, r5
 8215 5004 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8216 5008 F0EE408A 		vmov.f32	s17, s0
 8217 500c FDF735BD 		b	.L708
 8218              	.L742:
 8219 5010 7920     		movs	r0, #121
 8220 5012 0DF5A878 		add	r8, sp, #336
 8221 5016 CDE91280 		strd	r8, r0, [sp, #72]
 8222 501a 4FF00009 		mov	r9, #0
 8223 501e 12AA     		add	r2, sp, #72
 8224 5020 10AB     		add	r3, sp, #64
 8225 5022 4621     		movs	r1, #70
 8226 5024 2846     		mov	r0, r5
 8227 5026 8DF85091 		strb	r9, [sp, #336]
 8228 502a FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 8229 502e 0CA8     		add	r0, sp, #48
 8230 5030 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 8231 5034 0028     		cmp	r0, #0
 8232 5036 40F00887 		bne	.L1840
 8233 503a 0746     		mov	r7, r0
 8234              	.L749:
 8235 503c 0C98     		ldr	r0, [sp, #48]
 8236 503e FCF71DB8 		b	.L189
 8237              	.L796:
 8238 5042 6368     		ldr	r3, [r4, #4]
 8239 5044 CB49     		ldr	r1, .L1911
 8240 5046 D3F8D820 		ldr	r2, [r3, #216]
 8241 504a 100E     		lsrs	r0, r2, #24
 8242 504c C2F30743 		ubfx	r3, r2, #16, #8
 8243 5050 CDE90030 		strd	r3, r0, [sp]
 8244 5054 C2F30723 		ubfx	r3, r2, #8, #8
 8245 5058 3046     		mov	r0, r6
 8246 505a D2B2     		uxtb	r2, r2
 8247 505c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8248 5060 0127     		movs	r7, #1
 8249 5062 0C98     		ldr	r0, [sp, #48]
 8250 5064 FCF70AB8 		b	.L189
 8251              	.L1674:
 8252 5068 C349     		ldr	r1, .L1911+4
 8253 506a 3046     		mov	r0, r6
 8254 506c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8255 5070 0227     		movs	r7, #2
 8256 5072 0C98     		ldr	r0, [sp, #48]
 8257 5074 FCF702B8 		b	.L189
 8258              	.L785:
 8259 5078 5021     		movs	r1, #80
 8260 507a 2846     		mov	r0, r5
 8261 507c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8262 5080 0028     		cmp	r0, #0
 8263 5082 00F07C85 		beq	.L790
 8264 5086 0DF1480A 		add	r10, sp, #72
 8265 508a 5146     		mov	r1, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 146


 8266 508c 2846     		mov	r0, r5
 8267 508e CDF84890 		str	r9, [sp, #72]
 8268 5092 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 8269 5096 0028     		cmp	r0, #0
 8270 5098 01F02A80 		beq	.L791
 8271 509c DAF80010 		ldr	r1, [r10]
 8272 50a0 6068     		ldr	r0, [r4, #4]
 8273 50a2 FFF7FEFF 		bl	_ZN8Platform12SetIPAddressE9IPAddress
 8274 50a6 5321     		movs	r1, #83
 8275 50a8 2846     		mov	r0, r5
 8276 50aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8277 50ae 0028     		cmp	r0, #0
 8278 50b0 40F06E85 		bne	.L792
 8279 50b4 0127     		movs	r7, #1
 8280 50b6 FEF7EDBC 		b	.L788
 8281              	.L703:
 8282 50ba D7F8D000 		ldr	r0, [r7, #208]	@ float
 8283 50be FFF7FEFF 		bl	__aeabi_f2d
 8284 50c2 8046     		mov	r8, r0
 8285 50c4 D7F8D400 		ldr	r0, [r7, #212]	@ float
 8286 50c8 8946     		mov	r9, r1
 8287 50ca FFF7FEFF 		bl	__aeabi_f2d
 8288 50ce 4246     		mov	r2, r8
 8289 50d0 CDE90001 		strd	r0, [sp]
 8290 50d4 4B46     		mov	r3, r9
 8291 50d6 A949     		ldr	r1, .L1911+8
 8292 50d8 3046     		mov	r0, r6
 8293 50da FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8294 50de 0127     		movs	r7, #1
 8295 50e0 0C98     		ldr	r0, [sp, #48]
 8296 50e2 FBF7CBBF 		b	.L189
 8297              	.L793:
 8298 50e6 6368     		ldr	r3, [r4, #4]
 8299 50e8 A549     		ldr	r1, .L1911+12
 8300 50ea D3F8D420 		ldr	r2, [r3, #212]
 8301 50ee 100E     		lsrs	r0, r2, #24
 8302 50f0 C2F30743 		ubfx	r3, r2, #16, #8
 8303 50f4 CDE90030 		strd	r3, r0, [sp]
 8304 50f8 C2F30723 		ubfx	r3, r2, #8, #8
 8305 50fc 3046     		mov	r0, r6
 8306 50fe D2B2     		uxtb	r2, r2
 8307 5100 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8308 5104 0127     		movs	r7, #1
 8309 5106 0C98     		ldr	r0, [sp, #48]
 8310 5108 FBF7B8BF 		b	.L189
 8311              	.L996:
 8312 510c 9D49     		ldr	r1, .L1911+16
 8313 510e 3046     		mov	r0, r6
 8314 5110 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8315 5114 FEF720BA 		b	.L998
 8316              	.L819:
 8317 5118 0246     		mov	r2, r0
 8318 511a 9B49     		ldr	r1, .L1911+20
 8319 511c 3046     		mov	r0, r6
 8320 511e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8321 5122 0227     		movs	r7, #2
 8322 5124 FDF7DFB8 		b	.L820
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 147


 8323              	.L1812:
 8324 5128 DAF80030 		ldr	r3, [r10]
 8325 512c 3246     		mov	r2, r6
 8326 512e 2946     		mov	r1, r5
 8327 5130 2046     		mov	r0, r4
 8328 5132 FFF7FEFF 		bl	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 8329 5136 0746     		mov	r7, r0
 8330 5138 FCF75ABB 		b	.L426
 8331              	.L925:
 8332 513c 54AB     		add	r3, sp, #336
 8333 513e 10AA     		add	r2, sp, #64
 8334 5140 6068     		ldr	r0, [r4, #4]
 8335 5142 0093     		str	r3, [sp]
 8336 5144 4146     		mov	r1, r8
 8337 5146 12AB     		add	r3, sp, #72
 8338 5148 FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 8339 514c 5498     		ldr	r0, [sp, #336]	@ float
 8340 514e FFF7FEFF 		bl	__aeabi_f2d
 8341 5152 CDE90401 		strd	r0, [sp, #16]
 8342 5156 1298     		ldr	r0, [sp, #72]	@ float
 8343 5158 FFF7FEFF 		bl	__aeabi_f2d
 8344 515c CDE90201 		strd	r0, [sp, #8]
 8345 5160 1098     		ldr	r0, [sp, #64]	@ float
 8346 5162 FFF7FEFF 		bl	__aeabi_f2d
 8347 5166 4246     		mov	r2, r8
 8348 5168 CDE90001 		strd	r0, [sp]
 8349 516c 8749     		ldr	r1, .L1911+24
 8350 516e 3046     		mov	r0, r6
 8351 5170 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8352 5174 FEF790BF 		b	.L926
 8353              	.L1799:
 8354 5178 0346     		mov	r3, r0
 8355 517a 3246     		mov	r2, r6
 8356 517c 2946     		mov	r1, r5
 8357 517e 6068     		ldr	r0, [r4, #4]
 8358 5180 FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 8359 5184 0746     		mov	r7, r0
 8360 5186 0C98     		ldr	r0, [sp, #48]
 8361 5188 FBF778BF 		b	.L189
 8362              	.L1734:
 8363 518c 04F5B563 		add	r3, r4, #1448
 8364 5190 0127     		movs	r7, #1
 8365 5192 1868     		ldr	r0, [r3]	@ float
 8366 5194 FFF7FEFF 		bl	__aeabi_f2d
 8367 5198 0246     		mov	r2, r0
 8368 519a 0B46     		mov	r3, r1
 8369 519c 3046     		mov	r0, r6
 8370 519e 7C49     		ldr	r1, .L1911+28
 8371 51a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8372 51a4 0C98     		ldr	r0, [sp, #48]
 8373 51a6 FBF769BF 		b	.L189
 8374              	.L344:
 8375 51aa 2846     		mov	r0, r5
 8376 51ac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8377 51b0 5021     		movs	r1, #80
 8378 51b2 2846     		mov	r0, r5
 8379 51b4 B0EE408A 		vmov.f32	s16, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 148


 8380 51b8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8381 51bc 28B1     		cbz	r0, .L345
 8382 51be 2846     		mov	r0, r5
 8383 51c0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8384 51c4 0328     		cmp	r0, #3
 8385 51c6 01F29B80 		bhi	.L1841
 8386              	.L345:
 8387 51ca 4301     		lsls	r3, r0, #5
 8388 51cc 6068     		ldr	r0, [r4, #4]
 8389 51ce 03F63443 		addw	r3, r3, #3124
 8390 51d2 1844     		add	r0, r0, r3
 8391 51d4 B0EE480A 		vmov.f32	s0, s16
 8392 51d8 FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 8393 51dc 0127     		movs	r7, #1
 8394 51de 0C98     		ldr	r0, [sp, #48]
 8395 51e0 FBF74CBF 		b	.L189
 8396              	.L343:
 8397 51e4 2846     		mov	r0, r5
 8398 51e6 D4F80480 		ldr	r8, [r4, #4]
 8399 51ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8400 51ee 2046     		mov	r0, r4
 8401 51f0 FFF7FEFF 		bl	_ZNK6GCodes15ConvertLaserPwmEf
 8402 51f4 0146     		mov	r1, r0
 8403 51f6 4046     		mov	r0, r8
 8404 51f8 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEt
 8405 51fc 0C98     		ldr	r0, [sp, #48]
 8406 51fe FBF73DBF 		b	.L189
 8407              	.L1809:
 8408 5202 0DF1480A 		add	r10, sp, #72
 8409 5206 D4F86433 		ldr	r3, [r4, #868]
 8410 520a CAF80030 		str	r3, [r10]
 8411 520e 0DF5A878 		add	r8, sp, #336
 8412 5212 0023     		movs	r3, #0
 8413 5214 5246     		mov	r2, r10
 8414 5216 4146     		mov	r1, r8
 8415 5218 2846     		mov	r0, r5
 8416 521a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8417 521e DAF80030 		ldr	r3, [r10]
 8418 5222 002B     		cmp	r3, #0
 8419 5224 01F01F82 		beq	.L1029
 8420 5228 D8F80020 		ldr	r2, [r8]
 8421 522c D4F86433 		ldr	r3, [r4, #868]
 8422 5230 9A42     		cmp	r2, r3
 8423 5232 80F05184 		bcs	.L358
 8424 5236 4FF00009 		mov	r9, #0
 8425 523a 06E0     		b	.L359
 8426              	.L361:
 8427 523c 58F82920 		ldr	r2, [r8, r9, lsl #2]
 8428 5240 D4F86433 		ldr	r3, [r4, #868]
 8429 5244 9A42     		cmp	r2, r3
 8430 5246 80F04784 		bcs	.L358
 8431              	.L359:
 8432 524a D4F85C13 		ldr	r1, [r4, #860]
 8433 524e 6068     		ldr	r0, [r4, #4]
 8434 5250 1144     		add	r1, r1, r2
 8435 5252 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 8436 5256 DAF80030 		ldr	r3, [r10]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 149


 8437 525a 09F10109 		add	r9, r9, #1
 8438 525e 4B45     		cmp	r3, r9
 8439 5260 ECD8     		bhi	.L361
 8440 5262 B946     		mov	r9, r7
 8441 5264 FEF7D0B8 		b	.L356
 8442              	.L1790:
 8443 5268 2846     		mov	r0, r5
 8444 526a FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8445 526e 0746     		mov	r7, r0
 8446 5270 0028     		cmp	r0, #0
 8447 5272 00F05586 		beq	.L407
 8448 5276 0127     		movs	r7, #1
 8449 5278 0C98     		ldr	r0, [sp, #48]
 8450 527a 84F8B870 		strb	r7, [r4, #184]
 8451 527e FBF7FDBE 		b	.L189
 8452              	.L656:
 8453 5282 BAB2     		uxth	r2, r7
 8454 5284 4349     		ldr	r1, .L1911+32
 8455 5286 3046     		mov	r0, r6
 8456 5288 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8457 528c 0227     		movs	r7, #2
 8458 528e FEF753BF 		b	.L660
 8459              	.L778:
 8460 5292 414B     		ldr	r3, .L1911+36
 8461 5294 3946     		mov	r1, r7
 8462 5296 9868     		ldr	r0, [r3, #8]
 8463 5298 FFF7FEFF 		bl	_ZNK7Network13GetMacAddressEj
 8464 529c 4779     		ldrb	r7, [r0, #5]	@ zero_extendqisi2
 8465 529e 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 8466 52a0 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 8467 52a2 0397     		str	r7, [sp, #12]
 8468 52a4 0779     		ldrb	r7, [r0, #4]	@ zero_extendqisi2
 8469 52a6 0297     		str	r7, [sp, #8]
 8470 52a8 C778     		ldrb	r7, [r0, #3]	@ zero_extendqisi2
 8471 52aa 0197     		str	r7, [sp, #4]
 8472 52ac 8078     		ldrb	r0, [r0, #2]	@ zero_extendqisi2
 8473 52ae 0090     		str	r0, [sp]
 8474 52b0 3A49     		ldr	r1, .L1911+40
 8475 52b2 3046     		mov	r0, r6
 8476 52b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8477 52b8 0127     		movs	r7, #1
 8478 52ba 0C98     		ldr	r0, [sp, #48]
 8479 52bc FBF7DEBE 		b	.L189
 8480              	.L687:
 8481 52c0 0F9B     		ldr	r3, [sp, #60]
 8482 52c2 023B     		subs	r3, r3, #2
 8483 52c4 012B     		cmp	r3, #1
 8484 52c6 40F26C87 		bls	.L1842
 8485              	.L691:
 8486 52ca 2946     		mov	r1, r5
 8487 52cc 2046     		mov	r0, r4
 8488 52ce FFF7FEFF 		bl	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 8489 52d2 6768     		ldr	r7, [r4, #4]
 8490 52d4 0F9B     		ldr	r3, [sp, #60]
 8491 52d6 9BED000A 		vldr.32	s0, [fp]
 8492 52da 0093     		str	r3, [sp]
 8493 52dc 079B     		ldr	r3, [sp, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 150


 8494 52de 0193     		str	r3, [sp, #4]
 8495 52e0 0146     		mov	r1, r0
 8496 52e2 5346     		mov	r3, r10
 8497 52e4 4246     		mov	r2, r8
 8498 52e6 3846     		mov	r0, r7
 8499 52e8 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8500 52ec FCF7A0BB 		b	.L680
 8501              	.L1133:
 8502 52f0 2B49     		ldr	r1, .L1911+44
 8503 52f2 FDF79DBF 		b	.L982
 8504              	.L1797:
 8505 52f6 0C98     		ldr	r0, [sp, #48]
 8506 52f8 0127     		movs	r7, #1
 8507 52fa FBF7BFBE 		b	.L189
 8508              	.L1777:
 8509 52fe 2846     		mov	r0, r5
 8510 5300 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8511 5304 0A28     		cmp	r0, #10
 8512 5306 0746     		mov	r7, r0
 8513 5308 07D8     		bhi	.L948
 8514 530a C1B2     		uxtb	r1, r0
 8515 530c 4046     		mov	r0, r8
 8516 530e FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 8517 5312 8146     		mov	r9, r0
 8518 5314 0028     		cmp	r0, #0
 8519 5316 7DF429AB 		bne	.L946
 8520              	.L948:
 8521 531a 3A46     		mov	r2, r7
 8522 531c 2149     		ldr	r1, .L1911+48
 8523 531e 3046     		mov	r0, r6
 8524 5320 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8525 5324 0227     		movs	r7, #2
 8526 5326 0C98     		ldr	r0, [sp, #48]
 8527 5328 FBF7A8BE 		b	.L189
 8528              	.L1132:
 8529 532c 9B46     		mov	fp, r3
 8530 532e FDF764BF 		b	.L969
 8531              	.L1787:
 8532 5332 0DF5A878 		add	r8, sp, #336
 8533 5336 7923     		movs	r3, #121
 8534 5338 12A9     		add	r1, sp, #72
 8535 533a 2846     		mov	r0, r5
 8536 533c 8DF85071 		strb	r7, [sp, #336]
 8537 5340 CDE91283 		strd	r8, r3, [sp, #72]
 8538 5344 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 8539 5348 0028     		cmp	r0, #0
 8540 534a 00F04184 		beq	.L431
 8541 534e 4146     		mov	r1, r8
 8542 5350 2046     		mov	r0, r4
 8543 5352 FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
 8544 5356 28B9     		cbnz	r0, .L432
 8545 5358 4246     		mov	r2, r8
 8546 535a 1349     		ldr	r1, .L1911+52
 8547 535c 3046     		mov	r0, r6
 8548 535e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8549 5362 0227     		movs	r7, #2
 8550              	.L432:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 151


 8551 5364 0C98     		ldr	r0, [sp, #48]
 8552 5366 FBF789BE 		b	.L189
 8553              	.L1833:
 8554 536a 0C98     		ldr	r0, [sp, #48]
 8555 536c 0127     		movs	r7, #1
 8556 536e FBF785BE 		b	.L189
 8557              	.L1912:
 8558 5372 00BF     		.align	2
 8559              	.L1911:
 8560 5374 340D0000 		.word	.LC142
 8561 5378 0C090000 		.word	.LC107
 8562 537c 140A0000 		.word	.LC114
 8563 5380 1C0D0000 		.word	.LC141
 8564 5384 60120000 		.word	.LC187
 8565 5388 2C070000 		.word	.LC91
 8566 538c C0100000 		.word	.LC171
 8567 5390 A0090000 		.word	.LC111
 8568 5394 78090000 		.word	.LC110
 8569 5398 00000000 		.word	reprap
 8570 539c C40C0000 		.word	.LC137
 8571 53a0 1C010000 		.word	.LC36
 8572 53a4 20110000 		.word	.LC173
 8573 53a8 84040000 		.word	.LC64
 8574              	.L1810:
 8575 53ac 0127     		movs	r7, #1
 8576              	.L360:
 8577 53ae 2846     		mov	r0, r5
 8578 53b0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8579 53b4 B5EEC00A 		vcmpe.f32	s0, #0
 8580 53b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8581 53bc 00F13D85 		bmi	.L1843
 8582 53c0 DA4B     		ldr	r3, .L1913
 8583 53c2 D868     		ldr	r0, [r3, #12]
 8584 53c4 FFF7FEFF 		bl	_ZN4Move14SetIdleTimeoutEf
 8585 53c8 0C98     		ldr	r0, [sp, #48]
 8586 53ca FBF757BE 		b	.L189
 8587              	.L1803:
 8588 53ce 0C98     		ldr	r0, [sp, #48]
 8589 53d0 0127     		movs	r7, #1
 8590 53d2 FBF753BE 		b	.L189
 8591              	.L1114:
 8592 53d6 D64A     		ldr	r2, .L1913+4
 8593 53d8 FEF7E7BE 		b	.L888
 8594              	.L1706:
 8595 53dc D549     		ldr	r1, .L1913+8
 8596 53de 3046     		mov	r0, r6
 8597 53e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8598 53e4 0227     		movs	r7, #2
 8599 53e6 0C98     		ldr	r0, [sp, #48]
 8600 53e8 FBF748BE 		b	.L189
 8601              	.L1802:
 8602 53ec 4921     		movs	r1, #73
 8603 53ee 2846     		mov	r0, r5
 8604 53f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8605 53f4 0028     		cmp	r0, #0
 8606 53f6 40F08F84 		bne	.L975
 8607 53fa BBF1000F 		cmp	fp, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 152


 8608 53fe 3FF46DAC 		beq	.L1020
 8609              	.L976:
 8610 5402 0C98     		ldr	r0, [sp, #48]
 8611 5404 0127     		movs	r7, #1
 8612 5406 FBF739BE 		b	.L189
 8613              	.L1705:
 8614 540a CB49     		ldr	r1, .L1913+12
 8615 540c 3046     		mov	r0, r6
 8616 540e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8617 5412 0227     		movs	r7, #2
 8618 5414 0C98     		ldr	r0, [sp, #48]
 8619 5416 FBF731BE 		b	.L189
 8620              	.L1716:
 8621 541a 2846     		mov	r0, r5
 8622 541c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8623 5420 0146     		mov	r1, r0
 8624 5422 FCF720B8 		b	.L387
 8625              	.L1718:
 8626 5426 2846     		mov	r0, r5
 8627 5428 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8628 542c 0146     		mov	r1, r0
 8629 542e FCF758B8 		b	.L386
 8630              	.L949:
 8631 5432 079B     		ldr	r3, [sp, #28]
 8632 5434 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 8633 5436 002B     		cmp	r3, #0
 8634 5438 0CBF     		ite	eq
 8635 543a 0127     		moveq	r7, #1
 8636 543c 0227     		movne	r7, #2
 8637              	.L1012:
 8638 543e D8F8740A 		ldr	r0, [r8, #2676]
 8639 5442 C37B     		ldrb	r3, [r0, #15]	@ zero_extendqisi2
 8640 5444 5345     		cmp	r3, r10
 8641 5446 04F1EC08 		add	r8, r4, #236
 8642 544a 0BD0     		beq	.L952
 8643 544c 0368     		ldr	r3, [r0]
 8644 544e D4F86013 		ldr	r1, [r4, #864]
 8645 5452 1B6B     		ldr	r3, [r3, #48]
 8646 5454 4246     		mov	r2, r8
 8647 5456 9847     		blx	r3
 8648 5458 04F1C002 		add	r2, r4, #192
 8649 545c 4146     		mov	r1, r8
 8650 545e 2046     		mov	r0, r4
 8651 5460 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8652              	.L952:
 8653 5464 DBF80C20 		ldr	r2, [fp, #12]
 8654 5468 D4F82C35 		ldr	r3, [r4, #1324]
 8655 546c D2F8740A 		ldr	r0, [r2, #2676]
 8656 5470 D4F86023 		ldr	r2, [r4, #864]
 8657 5474 0168     		ldr	r1, [r0]
 8658 5476 4FF0000C 		mov	ip, #0
 8659 547a CDF800C0 		str	ip, [sp]
 8660 547e D1F82890 		ldr	r9, [r1, #40]
 8661 5482 4146     		mov	r1, r8
 8662 5484 C847     		blx	r9
 8663 5486 28B1     		cbz	r0, .L953
 8664 5488 04F1C002 		add	r2, r4, #192
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 153


 8665 548c 4146     		mov	r1, r8
 8666 548e 2046     		mov	r0, r4
 8667 5490 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8668              	.L953:
 8669 5494 4146     		mov	r1, r8
 8670 5496 DBF80C00 		ldr	r0, [fp, #12]
 8671 549a 0122     		movs	r2, #1
 8672 549c FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 8673 54a0 0023     		movs	r3, #0
 8674 54a2 C4F82C35 		str	r3, [r4, #1324]
 8675 54a6 FDF77EBA 		b	.L951
 8676              	.L1789:
 8677 54aa 2846     		mov	r0, r5
 8678 54ac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8679 54b0 0128     		cmp	r0, #1
 8680 54b2 0146     		mov	r1, r0
 8681 54b4 00F00884 		beq	.L939
 8682 54b8 0228     		cmp	r0, #2
 8683 54ba 00F00584 		beq	.L939
 8684 54be 0028     		cmp	r0, #0
 8685 54c0 00F0CB84 		beq	.L1844
 8686 54c4 0246     		mov	r2, r0
 8687 54c6 9D49     		ldr	r1, .L1913+16
 8688 54c8 3046     		mov	r0, r6
 8689 54ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8690 54ce 0227     		movs	r7, #2
 8691 54d0 0C98     		ldr	r0, [sp, #48]
 8692 54d2 FBF7D3BD 		b	.L189
 8693              	.L770:
 8694 54d6 0223     		movs	r3, #2
 8695 54d8 84F8B430 		strb	r3, [r4, #180]
 8696 54dc 9849     		ldr	r1, .L1913+20
 8697 54de 3046     		mov	r0, r6
 8698 54e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8699 54e4 0127     		movs	r7, #1
 8700 54e6 0C98     		ldr	r0, [sp, #48]
 8701 54e8 FBF7C8BD 		b	.L189
 8702              	.L1710:
 8703 54ec 2846     		mov	r0, r5
 8704 54ee FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8705 54f2 8146     		mov	r9, r0
 8706 54f4 FBF7C4BE 		b	.L367
 8707              	.L1709:
 8708 54f8 2846     		mov	r0, r5
 8709 54fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8710 54fe 0746     		mov	r7, r0
 8711 5500 FBF7B6BE 		b	.L366
 8712              	.L1729:
 8713 5504 2846     		mov	r0, r5
 8714 5506 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8715 550a FFF7FEFF 		bl	_Z18ConvertOldStylePwmf
 8716 550e 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 8717 5512 002B     		cmp	r3, #0
 8718 5514 00F03485 		beq	.L473
 8719 5518 D8F80010 		ldr	r1, [r8]
 8720 551c 6068     		ldr	r0, [r4, #4]
 8721 551e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 154


 8722 5522 FCF791B9 		b	.L472
 8723              	.L1823:
 8724 5526 0DF5A878 		add	r8, sp, #336
 8725 552a 0022     		movs	r2, #0
 8726 552c 0923     		movs	r3, #9
 8727 552e 12A9     		add	r1, sp, #72
 8728 5530 2846     		mov	r0, r5
 8729 5532 8DF85021 		strb	r2, [sp, #336]
 8730 5536 CDE91283 		strd	r8, r3, [sp, #72]
 8731 553a FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 8732 553e 4046     		mov	r0, r8
 8733 5540 8049     		ldr	r1, .L1913+24
 8734 5542 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8735 5546 0028     		cmp	r0, #0
 8736 5548 3EF443AC 		beq	.L1005
 8737 554c 1021     		movs	r1, #16
 8738 554e FEF741BC 		b	.L1006
 8739              	.L682:
 8740 5552 2946     		mov	r1, r5
 8741 5554 2046     		mov	r0, r4
 8742 5556 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8743 555a 8146     		mov	r9, r0
 8744 555c 0028     		cmp	r0, #0
 8745 555e 7EF4D6AB 		bne	.L685
 8746 5562 FAF77ABD 		b	.L1661
 8747              	.L1824:
 8748 5566 2846     		mov	r0, r5
 8749 5568 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8750 556c 0746     		mov	r7, r0
 8751 556e FEF793BC 		b	.L777
 8752              	.L923:
 8753 5572 0246     		mov	r2, r0
 8754 5574 3146     		mov	r1, r6
 8755 5576 2846     		mov	r0, r5
 8756 5578 FFF7FEFF 		bl	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
 8757 557c 0746     		mov	r7, r0
 8758 557e 0C98     		ldr	r0, [sp, #48]
 8759 5580 FBF77CBD 		b	.L189
 8760              	.L1717:
 8761 5584 2846     		mov	r0, r5
 8762 5586 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8763 558a 0328     		cmp	r0, #3
 8764 558c 40F2BD84 		bls	.L352
 8765 5590 6D49     		ldr	r1, .L1913+28
 8766 5592 3046     		mov	r0, r6
 8767 5594 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8768 5598 0C98     		ldr	r0, [sp, #48]
 8769 559a FBF76FBD 		b	.L189
 8770              	.L412:
 8771 559e 2846     		mov	r0, r5
 8772 55a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8773 55a4 B4EE400A 		vcmp.f32	s0, s0
 8774 55a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8775 55ac 09D6     		bvs	.L413
 8776 55ae F7EE007A 		vmov.f32	s15, #1.0e+0
 8777 55b2 B4EEE70A 		vcmpe.f32	s0, s15
 8778 55b6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 155


 8779 55ba 00F1D786 		bmi	.L1845
 8780 55be B0EE670A 		vmov.f32	s0, s15
 8781              	.L413:
 8782 55c2 84ED5B0A 		vstr.32	s0, [r4, #364]
 8783 55c6 0C98     		ldr	r0, [sp, #48]
 8784 55c8 0127     		movs	r7, #1
 8785 55ca FBF757BD 		b	.L189
 8786              	.L905:
 8787 55ce 0DF1480A 		add	r10, sp, #72
 8788 55d2 0DF5A878 		add	r8, sp, #336
 8789 55d6 4FF0090C 		mov	ip, #9
 8790 55da 0023     		movs	r3, #0
 8791 55dc 5246     		mov	r2, r10
 8792 55de 4146     		mov	r1, r8
 8793 55e0 2846     		mov	r0, r5
 8794 55e2 CAF800C0 		str	ip, [r10]
 8795 55e6 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8796 55ea DAF80030 		ldr	r3, [r10]
 8797 55ee D3B1     		cbz	r3, .L906
 8798 55f0 D8F80020 		ldr	r2, [r8]
 8799 55f4 082A     		cmp	r2, #8
 8800 55f6 00F2AC86 		bhi	.L907
 8801 55fa 4FF0000B 		mov	fp, #0
 8802 55fe 1146     		mov	r1, r2
 8803 5600 08E0     		b	.L908
 8804              	.L1847:
 8805 5602 DAF80030 		ldr	r3, [r10]
 8806 5606 5B45     		cmp	r3, fp
 8807 5608 0DD9     		bls	.L906
 8808 560a 58F82B10 		ldr	r1, [r8, fp, lsl #2]
 8809 560e 0829     		cmp	r1, #8
 8810 5610 00F29E86 		bhi	.L1846
 8811              	.L908:
 8812 5614 0331     		adds	r1, r1, #3
 8813 5616 6068     		ldr	r0, [r4, #4]
 8814 5618 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 8815 561c 4845     		cmp	r0, r9
 8816 561e 0BF1010B 		add	fp, fp, #1
 8817 5622 EED0     		beq	.L1847
 8818 5624 0027     		movs	r7, #0
 8819              	.L906:
 8820 5626 0C98     		ldr	r0, [sp, #48]
 8821 5628 FBF728BD 		b	.L189
 8822              	.L1003:
 8823 562c 0246     		mov	r2, r0
 8824 562e 4749     		ldr	r1, .L1913+32
 8825 5630 3046     		mov	r0, r6
 8826 5632 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8827 5636 0127     		movs	r7, #1
 8828 5638 0C98     		ldr	r0, [sp, #48]
 8829 563a FBF71FBD 		b	.L189
 8830              	.L1726:
 8831 563e 2846     		mov	r0, r5
 8832 5640 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8833 5644 0146     		mov	r1, r0
 8834 5646 FCF779B8 		b	.L967
 8835              	.L877:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 156


 8836 564a 384B     		ldr	r3, .L1913
 8837 564c 0146     		mov	r1, r0
 8838 564e 1869     		ldr	r0, [r3, #16]
 8839 5650 FFF7FEFF 		bl	_ZNK4Heat13GetAveragePWMEj
 8840 5654 10EE100A 		vmov	r0, s0
 8841 5658 FFF7FEFF 		bl	__aeabi_f2d
 8842 565c 3A46     		mov	r2, r7
 8843 565e CDE90001 		strd	r0, [sp]
 8844 5662 3B49     		ldr	r1, .L1913+36
 8845 5664 3046     		mov	r0, r6
 8846 5666 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8847 566a 0127     		movs	r7, #1
 8848 566c 0C98     		ldr	r0, [sp, #48]
 8849 566e FBF705BD 		b	.L189
 8850              	.L441:
 8851 5672 2846     		mov	r0, r5
 8852 5674 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8853 5678 FFF7FEFF 		bl	_Z18ConvertOldStylePwmf
 8854 567c 4621     		movs	r1, #70
 8855 567e 2846     		mov	r0, r5
 8856 5680 B0EE408A 		vmov.f32	s16, s0
 8857 5684 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8858 5688 0028     		cmp	r0, #0
 8859 568a 40F0BB86 		bne	.L1848
 8860 568e B5EE408A 		vcmp.f32	s16, #0
 8861 5692 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8862 5696 00F05585 		beq	.L444
 8863 569a F7EE007A 		vmov.f32	s15, #1.0e+0
 8864 569e B4EE678A 		vcmp.f32	s16, s15
 8865 56a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8866 56a6 00F04D85 		beq	.L444
 8867 56aa 4FF4FA77 		mov	r7, #500
 8868              	.L443:
 8869 56ae 6068     		ldr	r0, [r4, #4]
 8870 56b0 0222     		movs	r2, #2
 8871              	.L1008:
 8872 56b2 0DF1480A 		add	r10, sp, #72
 8873 56b6 0DF5A87B 		add	fp, sp, #336
 8874 56ba 5346     		mov	r3, r10
 8875 56bc CDF800B0 		str	fp, [sp]
 8876 56c0 1FFA89F1 		uxth	r1, r9
 8877 56c4 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 8878 56c8 0028     		cmp	r0, #0
 8879 56ca 00F07F85 		beq	.L445
 8880 56ce 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 8881 56d2 1BB1     		cbz	r3, .L446
 8882 56d4 F7EE007A 		vmov.f32	s15, #1.0e+0
 8883 56d8 37EEC88A 		vsub.f32	s16, s15, s16
 8884              	.L446:
 8885 56dc 9AF80000 		ldrb	r0, [r10]	@ zero_extendqisi2
 8886 56e0 B8F1000F 		cmp	r8, #0
 8887 56e4 00F09685 		beq	.L447
 8888 56e8 3946     		mov	r1, r7
 8889 56ea B0EE480A 		vmov.f32	s0, s16
 8890 56ee FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 8891 56f2 0127     		movs	r7, #1
 8892              	.L448:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 157


 8893 56f4 0C98     		ldr	r0, [sp, #48]
 8894 56f6 FBF7C1BC 		b	.L189
 8895              	.L652:
 8896 56fa 549F     		ldr	r7, [sp, #336]
 8897 56fc DFED157A 		vldr.32	s15, .L1913+40
 8898 5700 07F5AC73 		add	r3, r7, #344
 8899 5704 04EB8303 		add	r3, r4, r3, lsl #2
 8900 5708 93ED007A 		vldr.32	s14, [r3]
 8901 570c 67EE277A 		vmul.f32	s15, s14, s15
 8902 5710 17EE900A 		vmov	r0, s15
 8903 5714 FFF7FEFF 		bl	__aeabi_f2d
 8904 5718 3A46     		mov	r2, r7
 8905 571a CDE90001 		strd	r0, [sp]
 8906 571e 0E49     		ldr	r1, .L1913+44
 8907 5720 3046     		mov	r0, r6
 8908 5722 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8909 5726 FDF708BC 		b	.L650
 8910              	.L1914:
 8911 572a 00BF     		.align	2
 8912              	.L1913:
 8913 572c 00000000 		.word	reprap
 8914 5730 C0000000 		.word	.LC30
 8915 5734 FC050000 		.word	.LC78
 8916 5738 64010000 		.word	.LC38
 8917 573c 08110000 		.word	.LC172
 8918 5740 6C0C0000 		.word	.LC133
 8919 5744 28130000 		.word	.LC194
 8920 5748 A0010000 		.word	.LC40
 8921 574c 0C130000 		.word	.LC193
 8922 5750 18100000 		.word	.LC163
 8923 5754 0000C842 		.word	1120403456
 8924 5758 44090000 		.word	.LC109
 8925              	.L1811:
 8926 575c 0C98     		ldr	r0, [sp, #48]
 8927 575e 0127     		movs	r7, #1
 8928 5760 FBF78CBC 		b	.L189
 8929              	.L855:
 8930 5764 DFF898A4 		ldr	r10, .L1915+4
 8931 5768 00F11008 		add	r8, r0, #16
 8932 576c DAF81030 		ldr	r3, [r10, #16]
 8933 5770 4FEA8808 		lsl	r8, r8, #2
 8934 5774 0022     		movs	r2, #0
 8935 5776 4344     		add	r3, r3, r8
 8936 5778 8DF84020 		strb	r2, [sp, #64]
 8937 577c 5B68     		ldr	r3, [r3, #4]
 8938 577e 1A69     		ldr	r2, [r3, #16]	@ float
 8939 5780 1292     		str	r2, [sp, #72]	@ float
 8940 5782 D3F814C0 		ldr	ip, [r3, #20]	@ float
 8941 5786 CDF850C1 		str	ip, [sp, #336]	@ float
 8942 578a 10AB     		add	r3, sp, #64
 8943 578c 54AA     		add	r2, sp, #336
 8944 578e 5021     		movs	r1, #80
 8945 5790 2846     		mov	r0, r5
 8946 5792 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 8947 5796 10AB     		add	r3, sp, #64
 8948 5798 12AA     		add	r2, sp, #72
 8949 579a 5421     		movs	r1, #84
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 158


 8950 579c 2846     		mov	r0, r5
 8951 579e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 8952 57a2 9DF84030 		ldrb	r3, [sp, #64]	@ zero_extendqisi2
 8953 57a6 002B     		cmp	r3, #0
 8954 57a8 00F0AA84 		beq	.L856
 8955 57ac DAF81030 		ldr	r3, [r10, #16]
 8956 57b0 549A     		ldr	r2, [sp, #336]	@ float
 8957 57b2 1299     		ldr	r1, [sp, #72]	@ float
 8958 57b4 9844     		add	r8, r8, r3
 8959 57b6 D8F80430 		ldr	r3, [r8, #4]
 8960 57ba 1961     		str	r1, [r3, #16]	@ float
 8961 57bc 5A61     		str	r2, [r3, #20]	@ float
 8962              	.L857:
 8963 57be 0C98     		ldr	r0, [sp, #48]
 8964 57c0 0127     		movs	r7, #1
 8965 57c2 FBF75BBC 		b	.L189
 8966              	.L891:
 8967 57c6 4221     		movs	r1, #66
 8968 57c8 2846     		mov	r0, r5
 8969 57ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8970 57ce 0028     		cmp	r0, #0
 8971 57d0 40F04885 		bne	.L1849
 8972 57d4 5321     		movs	r1, #83
 8973 57d6 2846     		mov	r0, r5
 8974 57d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8975 57dc 0028     		cmp	r0, #0
 8976 57de 00F02785 		beq	.L1850
 8977              	.L893:
 8978 57e2 2846     		mov	r0, r5
 8979 57e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8980 57e8 4146     		mov	r1, r8
 8981 57ea 0746     		mov	r7, r0
 8982 57ec 0246     		mov	r2, r0
 8983 57ee 6068     		ldr	r0, [r4, #4]
 8984 57f0 FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 8985 57f4 B8F1000F 		cmp	r8, #0
 8986 57f8 00F06487 		beq	.L895
 8987 57fc B8F1010F 		cmp	r8, #1
 8988 5800 00F05087 		beq	.L896
 8989 5804 0C98     		ldr	r0, [sp, #48]
 8990 5806 0127     		movs	r7, #1
 8991 5808 FBF738BC 		b	.L189
 8992              	.L399:
 8993 580c 2946     		mov	r1, r5
 8994 580e 2046     		mov	r0, r4
 8995 5810 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8996 5814 0028     		cmp	r0, #0
 8997 5816 3AF41EAC 		beq	.L1703
 8998 581a 2046     		mov	r0, r4
 8999 581c FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 9000 5820 0028     		cmp	r0, #0
 9001 5822 40F06187 		bne	.L1851
 9002 5826 D4F80835 		ldr	r3, [r4, #1288]
 9003 582a 002B     		cmp	r3, #0
 9004 582c 00F05487 		beq	.L1852
 9005 5830 6068     		ldr	r0, [r4, #4]
 9006 5832 FFF7FEFF 		bl	_ZNK8Platform9IsPowerOkEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 159


 9007 5836 0028     		cmp	r0, #0
 9008 5838 00F08E87 		beq	.L1853
 9009 583c D4F80C35 		ldr	r3, [r4, #1292]
 9010 5840 002B     		cmp	r3, #0
 9011 5842 0CBF     		ite	eq
 9012 5844 4FF00108 		moveq	r8, #1
 9013 5848 4FF00008 		movne	r8, #0
 9014 584c 40F05987 		bne	.L1854
 9015              	.L405:
 9016 5850 2046     		mov	r0, r4
 9017 5852 4146     		mov	r1, r8
 9018 5854 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 9019 5858 0127     		movs	r7, #1
 9020 585a 0C98     		ldr	r0, [sp, #48]
 9021 585c FBF70EBC 		b	.L189
 9022              	.L410:
 9023 5860 2946     		mov	r1, r5
 9024 5862 2046     		mov	r0, r4
 9025 5864 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 9026 5868 0028     		cmp	r0, #0
 9027 586a 3AF4F4AB 		beq	.L1703
 9028 586e 3B46     		mov	r3, r7
 9029 5870 3A46     		mov	r2, r7
 9030 5872 2046     		mov	r0, r4
 9031 5874 2946     		mov	r1, r5
 9032 5876 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9033 587a 0127     		movs	r7, #1
 9034 587c 0C98     		ldr	r0, [sp, #48]
 9035 587e FBF7FDBB 		b	.L189
 9036              	.L1817:
 9037 5882 2846     		mov	r0, r5
 9038 5884 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9039 5888 0746     		mov	r7, r0
 9040 588a FEF7E5B8 		b	.L784
 9041              	.L1820:
 9042 588e DB49     		ldr	r1, .L1915
 9043 5890 3046     		mov	r0, r6
 9044 5892 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9045 5896 0227     		movs	r7, #2
 9046 5898 0C98     		ldr	r0, [sp, #48]
 9047 589a FBF7EFBB 		b	.L189
 9048              	.L1808:
 9049 589e D84B     		ldr	r3, .L1915+4
 9050 58a0 4146     		mov	r1, r8
 9051 58a2 186A     		ldr	r0, [r3, #32]
 9052 58a4 FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 9053 58a8 6068     		ldr	r0, [r4, #4]
 9054 58aa FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9055 58ae 0228     		cmp	r0, #2
 9056 58b0 09D1     		bne	.L395
 9057 58b2 E36C     		ldr	r3, [r4, #76]
 9058 58b4 1B68     		ldr	r3, [r3]
 9059 58b6 AB42     		cmp	r3, r5
 9060 58b8 00F00286 		beq	.L396
 9061 58bc 636C     		ldr	r3, [r4, #68]
 9062 58be 1B68     		ldr	r3, [r3]
 9063 58c0 AB42     		cmp	r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 160


 9064 58c2 00F0FD85 		beq	.L396
 9065              	.L395:
 9066 58c6 4246     		mov	r2, r8
 9067 58c8 CE49     		ldr	r1, .L1915+8
 9068 58ca 3046     		mov	r0, r6
 9069 58cc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9070              	.L397:
 9071 58d0 202F     		cmp	r7, #32
 9072 58d2 00F02F86 		beq	.L1855
 9073 58d6 0127     		movs	r7, #1
 9074 58d8 FDF77FBD 		b	.L394
 9075              	.L847:
 9076 58dc 4A46     		mov	r2, r9
 9077 58de CA49     		ldr	r1, .L1915+12
 9078 58e0 3046     		mov	r0, r6
 9079 58e2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9080 58e6 D8F89430 		ldr	r3, [r8, #148]
 9081 58ea 002B     		cmp	r3, #0
 9082 58ec 00F0EE85 		beq	.L1856
 9083 58f0 DFF854A3 		ldr	r10, .L1915+76
 9084 58f4 08F1300B 		add	fp, r8, #48
 9085 58f8 4FF02009 		mov	r9, #32
 9086              	.L851:
 9087 58fc 5BF8040B 		ldr	r0, [fp], #4	@ float
 9088 5900 FFF7FEFF 		bl	__aeabi_f2d
 9089 5904 4A46     		mov	r2, r9
 9090 5906 CDE90001 		strd	r0, [sp]
 9091 590a 5146     		mov	r1, r10
 9092 590c 3046     		mov	r0, r6
 9093 590e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9094 5912 D8F89430 		ldr	r3, [r8, #148]
 9095 5916 0137     		adds	r7, r7, #1
 9096 5918 9F42     		cmp	r7, r3
 9097 591a 4FF03A09 		mov	r9, #58
 9098 591e EDD3     		bcc	.L851
 9099 5920 0C98     		ldr	r0, [sp, #48]
 9100 5922 0127     		movs	r7, #1
 9101 5924 FBF7AABB 		b	.L189
 9102              	.L1767:
 9103 5928 3146     		mov	r1, r6
 9104 592a 2046     		mov	r0, r4
 9105 592c FFF7FEFF 		bl	_ZN6GCodes31GetAxisPositionsFromEncodersI2CERK9StringRef
 9106 5930 0C98     		ldr	r0, [sp, #48]
 9107 5932 FBF7A3BB 		b	.L189
 9108              	.L1021:
 9109 5936 2846     		mov	r0, r5
 9110 5938 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9111 593c 021E     		subs	r2, r0, #0
 9112 593e C0F21F85 		blt	.L1056
 9113 5942 072A     		cmp	r2, #7
 9114 5944 00F3AD85 		bgt	.L1857
 9115              	.L537:
 9116 5948 8D2F     		cmp	r7, #141
 9117 594a 52B2     		sxtb	r2, r2
 9118 594c 4146     		mov	r1, r8
 9119 594e 4846     		mov	r0, r9
 9120 5950 00F01A85 		beq	.L1858
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 161


 9121 5954 FFF7FEFF 		bl	_ZN4Heat12SetBedHeaterEja
 9122              	.L539:
 9123 5958 6068     		ldr	r0, [r4, #4]
 9124 595a FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 9125 595e 0123     		movs	r3, #1
 9126 5960 FCF772BB 		b	.L536
 9127              	.L347:
 9128 5964 2846     		mov	r0, r5
 9129 5966 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9130 596a 5021     		movs	r1, #80
 9131 596c 2846     		mov	r0, r5
 9132 596e B0EE408A 		vmov.f32	s16, s0
 9133 5972 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9134 5976 28B1     		cbz	r0, .L348
 9135 5978 2846     		mov	r0, r5
 9136 597a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9137 597e 0328     		cmp	r0, #3
 9138 5980 00F26A86 		bhi	.L1859
 9139              	.L348:
 9140 5984 4301     		lsls	r3, r0, #5
 9141 5986 6068     		ldr	r0, [r4, #4]
 9142 5988 03F63443 		addw	r3, r3, #3124
 9143 598c 1844     		add	r0, r0, r3
 9144 598e B1EE480A 		vneg.f32	s0, s16
 9145 5992 FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 9146 5996 0127     		movs	r7, #1
 9147 5998 0C98     		ldr	r0, [sp, #48]
 9148 599a FBF76FBB 		b	.L189
 9149              	.L1804:
 9150 599e 6368     		ldr	r3, [r4, #4]
 9151 59a0 9FED9A7A 		vldr.32	s14, .L1915+16
 9152 59a4 9A49     		ldr	r1, .L1915+20
 9153 59a6 03F58363 		add	r3, r3, #1048
 9154 59aa D3ED007A 		vldr.32	s15, [r3]
 9155 59ae 67EE877A 		vmul.f32	s15, s15, s14
 9156 59b2 3046     		mov	r0, r6
 9157 59b4 FDEEE77A 		vcvt.s32.f32	s15, s15
 9158 59b8 0127     		movs	r7, #1
 9159 59ba 17EE902A 		vmov	r2, s15	@ int
 9160 59be FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9161 59c2 0C98     		ldr	r0, [sp, #48]
 9162 59c4 FBF75ABB 		b	.L189
 9163              	.L671:
 9164 59c8 2846     		mov	r0, r5
 9165 59ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9166 59ce 0028     		cmp	r0, #0
 9167 59d0 7CF45FA8 		bne	.L674
 9168 59d4 04F5B563 		add	r3, r4, #1448
 9169 59d8 D3ED007A 		vldr.32	s15, [r3]
 9170 59dc 83ED008A 		vstr.32	s16, [r3]
 9171 59e0 38EE678A 		vsub.f32	s16, s16, s15
 9172 59e4 FCF76CB8 		b	.L675
 9173              	.L1735:
 9174 59e8 FFEE007A 		vmov.f32	s15, #-1.0e+0
 9175 59ec B4EEE78A 		vcmpe.f32	s16, s15
 9176 59f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9177 59f4 D8BF     		it	le
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 162


 9178 59f6 B0EE678A 		vmovle.f32	s16, s15
 9179 59fa FCF759B8 		b	.L672
 9180              	.L337:
 9181 59fe B8F1000F 		cmp	r8, #0
 9182 5a02 40F0AC83 		bne	.L1860
 9183 5a06 002F     		cmp	r7, #0
 9184 5a08 40F0A483 		bne	.L339
 9185              	.L340:
 9186 5a0c AB68     		ldr	r3, [r5, #8]
 9187 5a0e 814A     		ldr	r2, .L1915+24
 9188 5a10 1821     		movs	r1, #24
 9189 5a12 1975     		strb	r1, [r3, #20]
 9190              	.L1007:
 9191 5a14 0023     		movs	r3, #0
 9192 5a16 0093     		str	r3, [sp]
 9193 5a18 2946     		mov	r1, r5
 9194 5a1a 2046     		mov	r0, r4
 9195 5a1c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9196 5a20 0127     		movs	r7, #1
 9197 5a22 0C98     		ldr	r0, [sp, #48]
 9198 5a24 FBF72ABB 		b	.L189
 9199              	.L752:
 9200 5a28 7B49     		ldr	r1, .L1915+28
 9201 5a2a 3046     		mov	r0, r6
 9202 5a2c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9203 5a30 0227     		movs	r7, #2
 9204 5a32 0C98     		ldr	r0, [sp, #48]
 9205 5a34 FBF722BB 		b	.L189
 9206              	.L1712:
 9207 5a38 4A46     		mov	r2, r9
 9208 5a3a 5146     		mov	r1, r10
 9209 5a3c 7048     		ldr	r0, .L1915+4
 9210 5a3e FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKcj
 9211 5a42 0C90     		str	r0, [sp, #48]
 9212 5a44 0028     		cmp	r0, #0
 9213 5a46 3AF406AB 		beq	.L1703
 9214              	.L1701:
 9215 5a4a 0A21     		movs	r1, #10
 9216 5a4c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 9217              	.L372:
 9218 5a50 0C98     		ldr	r0, [sp, #48]
 9219 5a52 0127     		movs	r7, #1
 9220 5a54 FBF712BB 		b	.L189
 9221              	.L1750:
 9222 5a58 BAF1000F 		cmp	r10, #0
 9223 5a5c 23DA     		bge	.L549
 9224              	.L546:
 9225 5a5e 3A46     		mov	r2, r7
 9226 5a60 4346     		mov	r3, r8
 9227 5a62 6E49     		ldr	r1, .L1915+32
 9228 5a64 3046     		mov	r0, r6
 9229 5a66 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9230 5a6a 0227     		movs	r7, #2
 9231 5a6c 0C98     		ldr	r0, [sp, #48]
 9232 5a6e FBF705BB 		b	.L189
 9233              	.L1749:
 9234 5a72 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 163


 9235 5a74 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9236 5a78 BAF1000F 		cmp	r10, #0
 9237 5a7c C0F2E184 		blt	.L1861
 9238 5a80 9FED677A 		vldr.32	s14, .L1915+36
 9239 5a84 B4EEC70A 		vcmpe.f32	s0, s14
 9240 5a88 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9241 5a8c 5146     		mov	r1, r10
 9242 5a8e 4846     		mov	r0, r9
 9243 5a90 40F1C684 		bpl	.L1669
 9244 5a94 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 9245 5a98 5221     		movs	r1, #82
 9246 5a9a 2846     		mov	r0, r5
 9247 5a9c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9248 5aa0 0028     		cmp	r0, #0
 9249 5aa2 00F0A586 		beq	.L1862
 9250              	.L549:
 9251 5aa6 2846     		mov	r0, r5
 9252 5aa8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9253 5aac 4846     		mov	r0, r9
 9254 5aae 5146     		mov	r1, r10
 9255 5ab0 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 9256 5ab4 0127     		movs	r7, #1
 9257 5ab6 0C98     		ldr	r0, [sp, #48]
 9258 5ab8 FBF7E0BA 		b	.L189
 9259              	.L962:
 9260 5abc 5949     		ldr	r1, .L1915+40
 9261 5abe 3046     		mov	r0, r6
 9262 5ac0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9263 5ac4 0227     		movs	r7, #2
 9264 5ac6 FDF70CB9 		b	.L965
 9265              	.L961:
 9266 5aca 5749     		ldr	r1, .L1915+44
 9267 5acc 3046     		mov	r0, r6
 9268 5ace FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9269 5ad2 0227     		movs	r7, #2
 9270 5ad4 FDF705B9 		b	.L965
 9271              	.L358:
 9272 5ad8 5449     		ldr	r1, .L1915+48
 9273 5ada 3046     		mov	r0, r6
 9274 5adc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9275 5ae0 5321     		movs	r1, #83
 9276 5ae2 2846     		mov	r0, r5
 9277 5ae4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9278 5ae8 0028     		cmp	r0, #0
 9279 5aea 40F0C684 		bne	.L1030
 9280 5aee 0C98     		ldr	r0, [sp, #48]
 9281 5af0 0227     		movs	r7, #2
 9282 5af2 FBF7C3BA 		b	.L189
 9283              	.L1836:
 9284 5af6 5021     		movs	r1, #80
 9285 5af8 3846     		mov	r0, r7
 9286 5afa FFF7FEFF 		bl	_Z7StrnlenPKcj
 9287 5afe 0130     		adds	r0, r0, #1
 9288 5b00 FFF7FEFF 		bl	_Znaj
 9289 5b04 3946     		mov	r1, r7
 9290 5b06 FFF7FEFF 		bl	strcpy
 9291 5b0a 0346     		mov	r3, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 164


 9292 5b0c D4F8BC00 		ldr	r0, [r4, #188]
 9293 5b10 C4F8BC30 		str	r3, [r4, #188]
 9294 5b14 0028     		cmp	r0, #0
 9295 5b16 3EF443AF 		beq	.L995
 9296 5b1a FFF7FEFF 		bl	_ZdaPv
 9297 5b1e FEF73FBF 		b	.L995
 9298              	.L492:
 9299 5b22 2046     		mov	r0, r4
 9300 5b24 3146     		mov	r1, r6
 9301 5b26 FFF7FEFF 		bl	_ZN6GCodes23GetEncoderPositionsUARTERK9StringRef
 9302 5b2a 0127     		movs	r7, #1
 9303 5b2c 0C98     		ldr	r0, [sp, #48]
 9304 5b2e FBF7A5BA 		b	.L189
 9305              	.L797:
 9306 5b32 3F49     		ldr	r1, .L1915+52
 9307 5b34 3046     		mov	r0, r6
 9308 5b36 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9309 5b3a 0227     		movs	r7, #2
 9310 5b3c FEF780B9 		b	.L798
 9311              	.L1835:
 9312 5b40 3C49     		ldr	r1, .L1915+56
 9313 5b42 3046     		mov	r0, r6
 9314 5b44 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9315 5b48 0127     		movs	r7, #1
 9316 5b4a 0C98     		ldr	r0, [sp, #48]
 9317 5b4c FBF796BA 		b	.L189
 9318              	.L1791:
 9319 5b50 04F1C002 		add	r2, r4, #192
 9320 5b54 3946     		mov	r1, r7
 9321 5b56 2046     		mov	r0, r4
 9322 5b58 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9323 5b5c FDF767B9 		b	.L932
 9324              	.L1834:
 9325 5b60 4946     		mov	r1, r9
 9326 5b62 D8F81000 		ldr	r0, [r8, #16]
 9327 5b66 9FED348A 		vldr.32	s16, .L1915+60
 9328 5b6a FFF7FEFF 		bl	_ZNK4Heat15IsChamberHeaterEa
 9329 5b6e DFED337A 		vldr.32	s15, .L1915+64
 9330 5b72 0028     		cmp	r0, #0
 9331 5b74 18BF     		it	ne
 9332 5b76 B0EE678A 		vmovne.f32	s16, s15
 9333 5b7a FCF770BF 		b	.L706
 9334              	.L790:
 9335 5b7e 5321     		movs	r1, #83
 9336 5b80 2846     		mov	r0, r5
 9337 5b82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9338 5b86 0028     		cmp	r0, #0
 9339 5b88 3DF47DAF 		beq	.L786
 9340 5b8c 0DF1480A 		add	r10, sp, #72
 9341              	.L792:
 9342 5b90 2846     		mov	r0, r5
 9343 5b92 DBF80890 		ldr	r9, [fp, #8]
 9344 5b96 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9345 5b9a 0096     		str	r6, [sp]
 9346 5b9c 0246     		mov	r2, r0
 9347 5b9e 3946     		mov	r1, r7
 9348 5ba0 4846     		mov	r0, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 165


 9349              	.L1702:
 9350 5ba2 2127     		movs	r7, #33
 9351 5ba4 CAF80470 		str	r7, [r10, #4]
 9352 5ba8 CAF80080 		str	r8, [r10]
 9353 5bac 5346     		mov	r3, r10
 9354 5bae FFF7FEFF 		bl	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 9355 5bb2 0746     		mov	r7, r0
 9356 5bb4 FDF76EBF 		b	.L788
 9357              	.L1711:
 9358 5bb8 4A46     		mov	r2, r9
 9359 5bba 5146     		mov	r1, r10
 9360 5bbc 0123     		movs	r3, #1
 9361 5bbe 1048     		ldr	r0, .L1915+4
 9362 5bc0 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcjb
 9363 5bc4 0C90     		str	r0, [sp, #48]
 9364 5bc6 0028     		cmp	r0, #0
 9365 5bc8 7FF43FAF 		bne	.L1701
 9366 5bcc FAF743BA 		b	.L1703
 9367              	.L431:
 9368 5bd0 1B49     		ldr	r1, .L1915+68
 9369 5bd2 3046     		mov	r0, r6
 9370 5bd4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9371 5bd8 0227     		movs	r7, #2
 9372 5bda FFF7C3BB 		b	.L432
 9373              	.L794:
 9374 5bde 1449     		ldr	r1, .L1915+52
 9375 5be0 3046     		mov	r0, r6
 9376 5be2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9377 5be6 0227     		movs	r7, #2
 9378 5be8 FDF72BBF 		b	.L795
 9379              	.L870:
 9380 5bec 0A46     		mov	r2, r1
 9381 5bee 3046     		mov	r0, r6
 9382 5bf0 1449     		ldr	r1, .L1915+72
 9383 5bf2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9384 5bf6 0227     		movs	r7, #2
 9385 5bf8 FFF700BA 		b	.L869
 9386              	.L1916:
 9387              		.align	2
 9388              	.L1915:
 9389 5bfc C0090000 		.word	.LC112
 9390 5c00 00000000 		.word	reprap
 9391 5c04 7C020000 		.word	.LC49
 9392 5c08 880E0000 		.word	.LC154
 9393 5c0c 0000C842 		.word	1120403456
 9394 5c10 F8110000 		.word	.LC184
 9395 5c14 08000000 		.word	.LC11
 9396 5c18 5C0C0000 		.word	.LC132
 9397 5c1c 48070000 		.word	.LC92
 9398 5c20 008088C3 		.word	-1014464512
 9399 5c24 9C110000 		.word	.LC179
 9400 5c28 68110000 		.word	.LC177
 9401 5c2c B8010000 		.word	.LC41
 9402 5c30 0C0D0000 		.word	.LC140
 9403 5c34 B40A0000 		.word	.LC116
 9404 5c38 00004843 		.word	1128792064
 9405 5c3c 00004842 		.word	1112014848
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 166


 9406 5c40 B8020000 		.word	.LC51
 9407 5c44 D40F0000 		.word	.LC160
 9408 5c48 F4050000 		.word	.LC77
 9409              	.L779:
 9410 5c4c CF49     		ldr	r1, .L1917
 9411 5c4e 3046     		mov	r0, r6
 9412 5c50 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9413 5c54 0227     		movs	r7, #2
 9414 5c56 FEF734B9 		b	.L780
 9415              	.L1725:
 9416 5c5a 2846     		mov	r0, r5
 9417 5c5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9418 5c60 F861     		str	r0, [r7, #28]
 9419 5c62 FBF70DBD 		b	.L769
 9420              	.L1724:
 9421 5c66 2846     		mov	r0, r5
 9422 5c68 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9423 5c6c F7EE007A 		vmov.f32	s15, #1.0e+0
 9424 5c70 B4EE670A 		vcmp.f32	s0, s15
 9425 5c74 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9426 5c78 48BF     		it	mi
 9427 5c7a B0EE670A 		vmovmi.f32	s0, s15
 9428 5c7e 87ED060A 		vstr.32	s0, [r7, #24]
 9429 5c82 FBF7F6BC 		b	.L766
 9430              	.L1723:
 9431 5c86 2846     		mov	r0, r5
 9432 5c88 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9433 5c8c 3846     		mov	r0, r7
 9434 5c8e FFF7FEFF 		bl	_ZN7Spindle15SetPwmFrequencyEf
 9435 5c92 FBF7E7BC 		b	.L765
 9436              	.L1813:
 9437 5c96 0C98     		ldr	r0, [sp, #48]
 9438 5c98 0127     		movs	r7, #1
 9439 5c9a FBF7EFB9 		b	.L189
 9440              	.L800:
 9441 5c9e 6068     		ldr	r0, [r4, #4]
 9442 5ca0 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9443 5ca4 BA49     		ldr	r1, .L1917+4
 9444 5ca6 0246     		mov	r2, r0
 9445 5ca8 3046     		mov	r0, r6
 9446 5caa FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9447 5cae 0127     		movs	r7, #1
 9448 5cb0 0C98     		ldr	r0, [sp, #48]
 9449 5cb2 FBF7E3B9 		b	.L189
 9450              	.L518:
 9451 5cb6 3522     		movs	r2, #53
 9452 5cb8 B649     		ldr	r1, .L1917+8
 9453 5cba 3046     		mov	r0, r6
 9454 5cbc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9455 5cc0 0227     		movs	r7, #2
 9456 5cc2 0C98     		ldr	r0, [sp, #48]
 9457 5cc4 FBF7DAB9 		b	.L189
 9458              	.L939:
 9459 5cc8 4046     		mov	r0, r8
 9460 5cca FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9461 5cce FDF734B8 		b	.L936
 9462              	.L1838:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 167


 9463 5cd2 54AB     		add	r3, sp, #336
 9464 5cd4 D3E90023 		ldrd	r2, [r3]
 9465 5cd8 D8F80000 		ldr	r0, [r8]
 9466 5cdc D9F80010 		ldr	r1, [r9]
 9467 5ce0 CDE90023 		strd	r2, [sp]
 9468 5ce4 CDE90210 		strd	r1, r0, [sp, #8]
 9469 5ce8 DDE91223 		ldrd	r2, [sp, #72]
 9470 5cec AA49     		ldr	r1, .L1917+12
 9471 5cee 3046     		mov	r0, r6
 9472 5cf0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9473 5cf4 0127     		movs	r7, #1
 9474 5cf6 FCF78FBF 		b	.L435
 9475              	.L758:
 9476 5cfa A849     		ldr	r1, .L1917+16
 9477 5cfc 3046     		mov	r0, r6
 9478 5cfe FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9479 5d02 0227     		movs	r7, #2
 9480 5d04 0C98     		ldr	r0, [sp, #48]
 9481 5d06 FBF7B9B9 		b	.L189
 9482              	.L1822:
 9483 5d0a 4921     		movs	r1, #73
 9484 5d0c 2846     		mov	r0, r5
 9485 5d0e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9486 5d12 0028     		cmp	r0, #0
 9487 5d14 3FF475AB 		beq	.L976
 9488              	.L975:
 9489 5d18 2846     		mov	r0, r5
 9490 5d1a 6768     		ldr	r7, [r4, #4]
 9491 5d1c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9492 5d20 DFED9F7A 		vldr.32	s15, .L1917+20
 9493 5d24 3846     		mov	r0, r7
 9494 5d26 80EE270A 		vdiv.f32	s0, s0, s15
 9495 5d2a FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 9496 5d2e 0127     		movs	r7, #1
 9497 5d30 0C98     		ldr	r0, [sp, #48]
 9498 5d32 FBF7A3B9 		b	.L189
 9499              	.L1869:
 9500 5d36 0328     		cmp	r0, #3
 9501 5d38 00F29981 		bhi	.L1015
 9502              	.L1016:
 9503 5d3c DFF864B2 		ldr	fp, .L1917+24
 9504 5d40 DBF81030 		ldr	r3, [fp, #16]
 9505 5d44 1344     		add	r3, r3, r2
 9506 5d46 93F9D970 		ldrsb	r7, [r3, #217]
 9507 5d4a FBF718BC 		b	.L560
 9508              	.L1745:
 9509 5d4e 5321     		movs	r1, #83
 9510 5d50 2846     		mov	r0, r5
 9511 5d52 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9512 5d56 0028     		cmp	r0, #0
 9513 5d58 40F0F383 		bne	.L1863
 9514 5d5c B7EE008A 		vmov.f32	s16, #1.0e+0
 9515              	.L497:
 9516 5d60 5021     		movs	r1, #80
 9517 5d62 2846     		mov	r0, r5
 9518 5d64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9519 5d68 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 168


 9520 5d6a 90B1     		cbz	r0, .L499
 9521 5d6c 2846     		mov	r0, r5
 9522 5d6e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9523 5d72 A96B     		ldr	r1, [r5, #56]
 9524 5d74 0144     		add	r1, r1, r0
 9525 5d76 8B48     		ldr	r0, .L1917+24
 9526 5d78 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 9527 5d7c B0EE480A 		vmov.f32	s0, s16
 9528 5d80 0146     		mov	r1, r0
 9529 5d82 0122     		movs	r2, #1
 9530 5d84 2046     		mov	r0, r4
 9531 5d86 FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf
 9532 5d8a 0746     		mov	r7, r0
 9533 5d8c 0028     		cmp	r0, #0
 9534 5d8e 00F09182 		beq	.L516
 9535              	.L499:
 9536 5d92 4821     		movs	r1, #72
 9537 5d94 2846     		mov	r0, r5
 9538 5d96 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9539 5d9a 0028     		cmp	r0, #0
 9540 5d9c 00F07682 		beq	.L500
 9541 5da0 0DF1480A 		add	r10, sp, #72
 9542 5da4 0DF5A878 		add	r8, sp, #336
 9543 5da8 0023     		movs	r3, #0
 9544 5daa 0827     		movs	r7, #8
 9545 5dac 5246     		mov	r2, r10
 9546 5dae 4146     		mov	r1, r8
 9547 5db0 2846     		mov	r0, r5
 9548 5db2 CAF80070 		str	r7, [r10]
 9549 5db6 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 9550 5dba DAF80030 		ldr	r3, [r10]
 9551 5dbe 002B     		cmp	r3, #0
 9552 5dc0 00F0DA83 		beq	.L504
 9553 5dc4 53AB     		add	r3, sp, #332
 9554 5dc6 CDF81C80 		str	r8, [sp, #28]
 9555 5dca DFF8D8B1 		ldr	fp, .L1917+24
 9556 5dce B046     		mov	r8, r6
 9557 5dd0 0027     		movs	r7, #0
 9558 5dd2 2E46     		mov	r6, r5
 9559 5dd4 2546     		mov	r5, r4
 9560 5dd6 1C46     		mov	r4, r3
 9561 5dd8 04E0     		b	.L505
 9562              	.L503:
 9563 5dda DAF80020 		ldr	r2, [r10]
 9564 5dde BA42     		cmp	r2, r7
 9565 5de0 40F2C583 		bls	.L1864
 9566              	.L505:
 9567 5de4 54F8041F 		ldr	r1, [r4, #4]!
 9568 5de8 DBF81000 		ldr	r0, [fp, #16]
 9569 5dec 49B2     		sxtb	r1, r1
 9570 5dee B0EE480A 		vmov.f32	s0, s16
 9571 5df2 0122     		movs	r2, #1
 9572 5df4 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 9573 5df8 0137     		adds	r7, r7, #1
 9574 5dfa 0028     		cmp	r0, #0
 9575 5dfc EDD1     		bne	.L503
 9576 5dfe 2C46     		mov	r4, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 169


 9577 5e00 3546     		mov	r5, r6
 9578 5e02 4246     		mov	r2, r8
 9579 5e04 8146     		mov	r9, r0
 9580 5e06 2946     		mov	r1, r5
 9581 5e08 2046     		mov	r0, r4
 9582 5e0a FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 9583 5e0e 0122     		movs	r2, #1
 9584 5e10 84F84527 		strb	r2, [r4, #1861]
 9585 5e14 FAF721B9 		b	.L1661
 9586              	.L406:
 9587 5e18 2946     		mov	r1, r5
 9588 5e1a 2046     		mov	r0, r4
 9589 5e1c FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 9590 5e20 0028     		cmp	r0, #0
 9591 5e22 3AF418A9 		beq	.L1703
 9592 5e26 3B46     		mov	r3, r7
 9593 5e28 2046     		mov	r0, r4
 9594 5e2a 0122     		movs	r2, #1
 9595 5e2c 2946     		mov	r1, r5
 9596 5e2e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9597 5e32 0127     		movs	r7, #1
 9598 5e34 0C98     		ldr	r0, [sp, #48]
 9599 5e36 FBF721B9 		b	.L189
 9600              	.L1843:
 9601 5e3a 5B49     		ldr	r1, .L1917+28
 9602 5e3c 3046     		mov	r0, r6
 9603 5e3e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9604 5e42 0227     		movs	r7, #2
 9605 5e44 0C98     		ldr	r0, [sp, #48]
 9606 5e46 FBF719B9 		b	.L189
 9607              	.L1840:
 9608 5e4a 4B46     		mov	r3, r9
 9609 5e4c 4246     		mov	r2, r8
 9610 5e4e 0C99     		ldr	r1, [sp, #48]
 9611 5e50 5448     		ldr	r0, .L1917+24
 9612 5e52 FFF7FEFF 		bl	_ZN11ObjectModel12ReportAsJsonEP12OutputBufferPKcNS_11ReportFlagsE
 9613 5e56 FFF7F1B8 		b	.L749
 9614              	.L1844:
 9615 5e5a 4046     		mov	r0, r8
 9616 5e5c FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9617 5e60 0127     		movs	r7, #1
 9618              	.L941:
 9619 5e62 D8F8740A 		ldr	r0, [r8, #2676]
 9620 5e66 C37B     		ldrb	r3, [r0, #15]	@ zero_extendqisi2
 9621 5e68 5345     		cmp	r3, r10
 9622 5e6a 04F1EC08 		add	r8, r4, #236
 9623 5e6e 0BD0     		beq	.L944
 9624 5e70 0368     		ldr	r3, [r0]
 9625 5e72 D4F86013 		ldr	r1, [r4, #864]
 9626 5e76 1B6B     		ldr	r3, [r3, #48]
 9627 5e78 4246     		mov	r2, r8
 9628 5e7a 9847     		blx	r3
 9629 5e7c 04F1C002 		add	r2, r4, #192
 9630 5e80 4146     		mov	r1, r8
 9631 5e82 2046     		mov	r0, r4
 9632 5e84 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9633              	.L944:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 170


 9634 5e88 DBF80C20 		ldr	r2, [fp, #12]
 9635 5e8c D4F82C35 		ldr	r3, [r4, #1324]
 9636 5e90 D2F8740A 		ldr	r0, [r2, #2676]
 9637 5e94 D4F86023 		ldr	r2, [r4, #864]
 9638 5e98 0168     		ldr	r1, [r0]
 9639 5e9a 4FF0000C 		mov	ip, #0
 9640 5e9e CDF800C0 		str	ip, [sp]
 9641 5ea2 D1F82890 		ldr	r9, [r1, #40]
 9642 5ea6 4146     		mov	r1, r8
 9643 5ea8 C847     		blx	r9
 9644 5eaa 0028     		cmp	r0, #0
 9645 5eac 40F00183 		bne	.L1865
 9646              	.L945:
 9647 5eb0 DBF80C00 		ldr	r0, [fp, #12]
 9648 5eb4 4146     		mov	r1, r8
 9649 5eb6 0122     		movs	r2, #1
 9650 5eb8 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 9651 5ebc 0023     		movs	r3, #0
 9652 5ebe 0C98     		ldr	r0, [sp, #48]
 9653 5ec0 C4F82C35 		str	r3, [r4, #1324]
 9654 5ec4 FBF7DAB8 		b	.L189
 9655              	.L1839:
 9656 5ec8 5221     		movs	r1, #82
 9657 5eca 2846     		mov	r0, r5
 9658 5ecc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9659 5ed0 0028     		cmp	r0, #0
 9660 5ed2 40F02683 		bne	.L1866
 9661 5ed6 4FF0FF39 		mov	r9, #-1
 9662              	.L920:
 9663 5eda 5421     		movs	r1, #84
 9664 5edc 2846     		mov	r0, r5
 9665 5ede FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9666 5ee2 0028     		cmp	r0, #0
 9667 5ee4 40F01983 		bne	.L1867
 9668 5ee8 4FF0FF30 		mov	r0, #-1
 9669              	.L921:
 9670 5eec CDE90006 		strd	r0, r6, [sp]
 9671 5ef0 DFF8B0C0 		ldr	ip, .L1917+24
 9672 5ef4 3946     		mov	r1, r7
 9673 5ef6 4B46     		mov	r3, r9
 9674 5ef8 4246     		mov	r2, r8
 9675 5efa DCF80800 		ldr	r0, [ip, #8]
 9676 5efe FFF7FEFF 		bl	_ZN7Network14EnableProtocolEjhiiRK9StringRef
 9677 5f02 0746     		mov	r7, r0
 9678 5f04 0C98     		ldr	r0, [sp, #48]
 9679 5f06 FBF7B9B8 		b	.L189
 9680              	.L352:
 9681 5f0a 4301     		lsls	r3, r0, #5
 9682 5f0c 6068     		ldr	r0, [r4, #4]
 9683 5f0e 03F63443 		addw	r3, r3, #3124
 9684 5f12 1844     		add	r0, r0, r3
 9685 5f14 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 9686 5f18 0127     		movs	r7, #1
 9687 5f1a 0C98     		ldr	r0, [sp, #48]
 9688 5f1c FBF7AEB8 		b	.L189
 9689              	.L407:
 9690 5f20 2946     		mov	r1, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 171


 9691 5f22 2046     		mov	r0, r4
 9692 5f24 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 9693 5f28 0028     		cmp	r0, #0
 9694 5f2a 3AF494A8 		beq	.L1703
 9695 5f2e 3B46     		mov	r3, r7
 9696 5f30 2046     		mov	r0, r4
 9697 5f32 0222     		movs	r2, #2
 9698 5f34 2946     		mov	r1, r5
 9699 5f36 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9700 5f3a 0127     		movs	r7, #1
 9701 5f3c 0C98     		ldr	r0, [sp, #48]
 9702 5f3e FBF79DB8 		b	.L189
 9703              	.L1829:
 9704 5f42 2846     		mov	r0, r5
 9705 5f44 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9706 5f48 0028     		cmp	r0, #0
 9707 5f4a 7EF7EDA8 		ble	.L658
 9708 5f4e 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 9709 5f52 83F00103 		eor	r3, r3, #1
 9710 5f56 88F80030 		strb	r3, [r8]
 9711 5f5a FEF7E5B8 		b	.L658
 9712              	.L1722:
 9713 5f5e 1349     		ldr	r1, .L1917+32
 9714 5f60 3046     		mov	r0, r6
 9715 5f62 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9716 5f66 0227     		movs	r7, #2
 9717 5f68 0C98     		ldr	r0, [sp, #48]
 9718 5f6a FBF787B8 		b	.L189
 9719              	.L1721:
 9720 5f6e 2846     		mov	r0, r5
 9721 5f70 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9722 5f74 0028     		cmp	r0, #0
 9723 5f76 D4BF     		ite	le
 9724 5f78 0020     		movle	r0, #0
 9725 5f7a 0120     		movgt	r0, #1
 9726 5f7c FBF760BB 		b	.L763
 9727              	.L473:
 9728 5f80 2046     		mov	r0, r4
 9729 5f82 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEf
 9730 5f86 FBF75FBC 		b	.L472
 9731              	.L1918:
 9732 5f8a 00BF     		.align	2
 9733              	.L1917:
 9734 5f8c B40C0000 		.word	.LC136
 9735 5f90 A80D0000 		.word	.LC149
 9736 5f94 AC060000 		.word	.LC85
 9737 5f98 C0040000 		.word	.LC66
 9738 5f9c A0010000 		.word	.LC40
 9739 5fa0 0000C842 		.word	1120403456
 9740 5fa4 00000000 		.word	reprap
 9741 5fa8 E0010000 		.word	.LC42
 9742 5fac 5C0C0000 		.word	.LC132
 9743 5fb0 00003443 		.word	1127481344
 9744 5fb4 50FA2441 		.word	1092942416
 9745 5fb8 00000844 		.word	1141374976
 9746 5fbc 17B75138 		.word	944879383
 9747              	.L1830:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 172


 9748 5fc0 2846     		mov	r0, r5
 9749 5fc2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9750 5fc6 B5EEC00A 		vcmpe.f32	s0, #0
 9751 5fca F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9752 5fce 00F19282 		bmi	.L1868
 9753 5fd2 5FED077A 		vldr.32	s15, .L1917+44
 9754 5fd6 B4EEE70A 		vcmpe.f32	s0, s15
 9755 5fda F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9756 5fde 40F18082 		bpl	.L1678
 9757 5fe2 B4EE400A 		vcmp.f32	s0, s0
 9758 5fe6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9759 5fea 08D6     		bvs	.L666
 9760 5fec 5FED107A 		vldr.32	s15, .L1917+36
 9761 5ff0 B4EEE70A 		vcmpe.f32	s0, s15
 9762 5ff4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9763 5ff8 58BF     		it	pl
 9764 5ffa B0EE670A 		vmovpl.f32	s0, s15
 9765              	.L666:
 9766 5ffe 1FED137A 		vldr.32	s14, .L1917+40
 9767 6002 5FED137A 		vldr.32	s15, .L1917+44
 9768 6006 E0EE077A 		vfma.f32	s15, s0, s14
 9769 600a B0EE670A 		vmov.f32	s0, s15
 9770              	.L668:
 9771 600e 5FED157A 		vldr.32	s15, .L1917+48
 9772 6012 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 9773 6016 20EE270A 		vmul.f32	s0, s0, s15
 9774 601a 1BB1     		cbz	r3, .L669
 9775 601c F7EE007A 		vmov.f32	s15, #1.0e+0
 9776 6020 37EEC00A 		vsub.f32	s0, s15, s0
 9777              	.L669:
 9778 6024 9AF80000 		ldrb	r0, [r10]	@ zero_extendqisi2
 9779 6028 3221     		movs	r1, #50
 9780 602a FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 9781 602e 0127     		movs	r7, #1
 9782 6030 FEF782B8 		b	.L660
 9783              	.L561:
 9784 6034 5221     		movs	r1, #82
 9785 6036 2846     		mov	r0, r5
 9786 6038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9787 603c 8046     		mov	r8, r0
 9788 603e 0028     		cmp	r0, #0
 9789 6040 40F0DB82 		bne	.L564
 9790 6044 5321     		movs	r1, #83
 9791 6046 2846     		mov	r0, r5
 9792 6048 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9793 604c 0028     		cmp	r0, #0
 9794 604e 40F0D482 		bne	.L564
 9795 6052 0C98     		ldr	r0, [sp, #48]
 9796 6054 0127     		movs	r7, #1
 9797 6056 FBF711B8 		b	.L189
 9798              	.L1719:
 9799 605a 2846     		mov	r0, r5
 9800 605c FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9801 6060 BE2F     		cmp	r7, #190
 9802 6062 0246     		mov	r2, r0
 9803 6064 3FF467AE 		beq	.L1869
 9804 6068 0128     		cmp	r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 173


 9805 606a 7BF681AA 		bls	.L1022
 9806              	.L1015:
 9807 606e CD49     		ldr	r1, .L1919
 9808 6070 3046     		mov	r0, r6
 9809 6072 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9810 6076 0227     		movs	r7, #2
 9811 6078 0C98     		ldr	r0, [sp, #48]
 9812 607a FAF7FFBF 		b	.L189
 9813              	.L1819:
 9814 607e 0C98     		ldr	r0, [sp, #48]
 9815 6080 0127     		movs	r7, #1
 9816 6082 FAF7FBBF 		b	.L189
 9817              	.L1818:
 9818 6086 2846     		mov	r0, r5
 9819 6088 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9820 608c 5021     		movs	r1, #80
 9821 608e 8146     		mov	r9, r0
 9822 6090 2846     		mov	r0, r5
 9823 6092 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9824 6096 0DF1480A 		add	r10, sp, #72
 9825 609a 48B1     		cbz	r0, .L789
 9826 609c 2123     		movs	r3, #33
 9827 609e 5146     		mov	r1, r10
 9828 60a0 2846     		mov	r0, r5
 9829 60a2 CAE90083 		strd	r8, r3, [r10]
 9830 60a6 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 9831 60aa 0028     		cmp	r0, #0
 9832 60ac 00F01282 		beq	.L1870
 9833              	.L789:
 9834 60b0 DBF80800 		ldr	r0, [fp, #8]
 9835 60b4 0096     		str	r6, [sp]
 9836 60b6 4A46     		mov	r2, r9
 9837 60b8 3946     		mov	r1, r7
 9838 60ba 72E5     		b	.L1702
 9839              	.L1713:
 9840 60bc 4D46     		mov	r5, r9
 9841 60be 8146     		mov	r9, r0
 9842 60c0 002F     		cmp	r7, #0
 9843 60c2 3FF4C5AC 		beq	.L372
 9844 60c6 0C9F     		ldr	r7, [sp, #48]
 9845 60c8 3846     		mov	r0, r7
 9846 60ca FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 9847 60ce 411E     		subs	r1, r0, #1
 9848 60d0 3846     		mov	r0, r7
 9849 60d2 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 9850 60d6 80F80090 		strb	r9, [r0]
 9851 60da B9E4     		b	.L372
 9852              	.L1752:
 9853 60dc 3A46     		mov	r2, r7
 9854 60de 4346     		mov	r3, r8
 9855 60e0 B149     		ldr	r1, .L1919+4
 9856 60e2 3046     		mov	r0, r6
 9857 60e4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9858 60e8 0127     		movs	r7, #1
 9859 60ea 0C98     		ldr	r0, [sp, #48]
 9860 60ec FAF7C6BF 		b	.L189
 9861              	.L791:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 174


 9862 60f0 AE49     		ldr	r1, .L1919+8
 9863 60f2 3046     		mov	r0, r6
 9864 60f4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9865 60f8 0227     		movs	r7, #2
 9866 60fa 0C98     		ldr	r0, [sp, #48]
 9867 60fc FAF7BEBF 		b	.L189
 9868              	.L856:
 9869 6100 002F     		cmp	r7, #0
 9870 6102 7FF45CAB 		bne	.L857
 9871 6106 5498     		ldr	r0, [sp, #336]	@ float
 9872 6108 FFF7FEFF 		bl	__aeabi_f2d
 9873 610c CDE90201 		strd	r0, [sp, #8]
 9874 6110 1298     		ldr	r0, [sp, #72]	@ float
 9875 6112 FFF7FEFF 		bl	__aeabi_f2d
 9876 6116 4A46     		mov	r2, r9
 9877 6118 CDE90001 		strd	r0, [sp]
 9878 611c A449     		ldr	r1, .L1919+12
 9879 611e 3046     		mov	r0, r6
 9880 6120 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9881 6124 FFF74BBB 		b	.L857
 9882              	.L378:
 9883 6128 A249     		ldr	r1, .L1919+16
 9884 612a 0C98     		ldr	r0, [sp, #48]
 9885 612c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 9886 6130 FBF7D4B8 		b	.L377
 9887              	.L1816:
 9888 6134 DBF81000 		ldr	r0, [fp, #16]
 9889 6138 4146     		mov	r1, r8
 9890 613a FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 9891 613e 0C98     		ldr	r0, [sp, #48]
 9892 6140 FAF79CBF 		b	.L189
 9893              	.L444:
 9894 6144 6068     		ldr	r0, [r4, #4]
 9895 6146 4FF00008 		mov	r8, #0
 9896 614a 4FF4FA77 		mov	r7, #500
 9897 614e 0122     		movs	r2, #1
 9898 6150 FFF7AFBA 		b	.L1008
 9899              	.L339:
 9900 6154 AB68     		ldr	r3, [r5, #8]
 9901 6156 984A     		ldr	r2, .L1919+20
 9902 6158 1921     		movs	r1, #25
 9903 615a 1975     		strb	r1, [r3, #20]
 9904 615c 5AE4     		b	.L1007
 9905              	.L1860:
 9906 615e 002F     		cmp	r7, #0
 9907 6160 F8D1     		bne	.L339
 9908 6162 2046     		mov	r0, r4
 9909 6164 FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 9910 6168 0028     		cmp	r0, #0
 9911 616a 3FF44FAC 		beq	.L340
 9912 616e 0097     		str	r7, [sp]
 9913 6170 3B46     		mov	r3, r7
 9914 6172 924A     		ldr	r2, .L1919+24
 9915 6174 2946     		mov	r1, r5
 9916 6176 2046     		mov	r0, r4
 9917 6178 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9918 617c 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 175


 9919 617e 3FF445AC 		beq	.L340
 9920 6182 0C98     		ldr	r0, [sp, #48]
 9921 6184 0127     		movs	r7, #1
 9922 6186 FAF779BF 		b	.L189
 9923              	.L1761:
 9924 618a 8D49     		ldr	r1, .L1919+28
 9925 618c 3046     		mov	r0, r6
 9926 618e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9927 6192 0227     		movs	r7, #2
 9928 6194 0C98     		ldr	r0, [sp, #48]
 9929 6196 FAF771BF 		b	.L189
 9930              	.L1825:
 9931 619a 0C98     		ldr	r0, [sp, #48]
 9932 619c 0127     		movs	r7, #1
 9933 619e FAF76DBF 		b	.L189
 9934              	.L1842:
 9935 61a2 2946     		mov	r1, r5
 9936 61a4 2046     		mov	r0, r4
 9937 61a6 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 9938 61aa 0028     		cmp	r0, #0
 9939 61ac 3FF48DA8 		beq	.L691
 9940 61b0 AF68     		ldr	r7, [r5, #8]
 9941 61b2 B868     		ldr	r0, [r7, #8]
 9942 61b4 20B1     		cbz	r0, .L693
 9943 61b6 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9944 61ba 0023     		movs	r3, #0
 9945 61bc BB60     		str	r3, [r7, #8]
 9946 61be AF68     		ldr	r7, [r5, #8]
 9947              	.L693:
 9948 61c0 7B7E     		ldrb	r3, [r7, #25]	@ zero_extendqisi2
 9949 61c2 43F00203 		orr	r3, r3, #2
 9950 61c6 7B76     		strb	r3, [r7, #25]
 9951 61c8 FFF77FB8 		b	.L691
 9952              	.L445:
 9953 61cc 1FFA89F2 		uxth	r2, r9
 9954 61d0 7C49     		ldr	r1, .L1919+32
 9955 61d2 3046     		mov	r0, r6
 9956 61d4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9957 61d8 0227     		movs	r7, #2
 9958 61da FFF78BBA 		b	.L448
 9959              	.L1675:
 9960 61de 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 9961 61e2 12F0010F 		tst	r2, #1
 9962 61e6 03F5AC72 		add	r2, r3, #344
 9963 61ea 7EF419AE 		bne	.L654
 9964 61ee 04EB8201 		add	r1, r4, r2, lsl #2
 9965 61f2 D1ED007A 		vldr.32	s15, [r1]
 9966 61f6 D4F85C13 		ldr	r1, [r4, #860]
 9967 61fa 80EE277A 		vdiv.f32	s14, s0, s15
 9968 61fe 0B44     		add	r3, r3, r1
 9969 6200 04EB8303 		add	r3, r4, r3, lsl #2
 9970 6204 D3ED3B7A 		vldr.32	s15, [r3, #236]
 9971 6208 67EE877A 		vmul.f32	s15, s15, s14
 9972 620c C3ED3B7A 		vstr.32	s15, [r3, #236]
 9973 6210 FEF706BE 		b	.L654
 9974              	.L447:
 9975 6214 F7EE007A 		vmov.f32	s15, #1.0e+0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 176


 9976 6218 B4EE678A 		vcmp.f32	s16, s15
 9977 621c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9978 6220 0CBF     		ite	eq
 9979 6222 0121     		moveq	r1, #1
 9980 6224 0021     		movne	r1, #0
 9981 6226 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 9982 622a 0127     		movs	r7, #1
 9983 622c FFF762BA 		b	.L448
 9984              	.L1850:
 9985 6230 4146     		mov	r1, r8
 9986 6232 6068     		ldr	r0, [r4, #4]
 9987 6234 FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 9988 6238 4146     		mov	r1, r8
 9989 623a 0746     		mov	r7, r0
 9990 623c 6068     		ldr	r0, [r4, #4]
 9991 623e FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 9992 6242 614B     		ldr	r3, .L1919+36
 9993 6244 6149     		ldr	r1, .L1919+40
 9994 6246 17F0010F 		tst	r7, #1
 9995 624a 18BF     		it	ne
 9996 624c 1946     		movne	r1, r3
 9997 624e 0091     		str	r1, [sp]
 9998 6250 0346     		mov	r3, r0
 9999 6252 4246     		mov	r2, r8
 10000 6254 5E49     		ldr	r1, .L1919+44
 10001 6256 3046     		mov	r0, r6
 10002 6258 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10003 625c 0127     		movs	r7, #1
 10004 625e 0C98     		ldr	r0, [sp, #48]
 10005 6260 FAF70CBF 		b	.L189
 10006              	.L1849:
 10007 6264 2846     		mov	r0, r5
 10008 6266 6768     		ldr	r7, [r4, #4]
 10009 6268 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10010 626c 4146     		mov	r1, r8
 10011 626e 0246     		mov	r2, r0
 10012 6270 3846     		mov	r0, r7
 10013 6272 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 10014 6276 5321     		movs	r1, #83
 10015 6278 2846     		mov	r0, r5
 10016 627a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10017 627e 0028     		cmp	r0, #0
 10018 6280 7FF4AFAA 		bne	.L893
 10019 6284 0C98     		ldr	r0, [sp, #48]
 10020 6286 0127     		movs	r7, #1
 10021 6288 FAF7F8BE 		b	.L189
 10022              	.L500:
 10023 628c 4321     		movs	r1, #67
 10024 628e 2846     		mov	r0, r5
 10025 6290 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10026 6294 0028     		cmp	r0, #0
 10027 6296 40F0DA81 		bne	.L1871
 10028 629a 002F     		cmp	r7, #0
 10029 629c 7BF449AE 		bne	.L515
 10030 62a0 4C4B     		ldr	r3, .L1919+48
 10031 62a2 B0EE480A 		vmov.f32	s0, s16
 10032 62a6 1869     		ldr	r0, [r3, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 177


 10033 62a8 0121     		movs	r1, #1
 10034 62aa FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEbf
 10035 62ae 0028     		cmp	r0, #0
 10036 62b0 7BF43FAE 		bne	.L515
 10037              	.L516:
 10038 62b4 3246     		mov	r2, r6
 10039 62b6 2946     		mov	r1, r5
 10040 62b8 2046     		mov	r0, r4
 10041 62ba FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 10042 62be 0123     		movs	r3, #1
 10043 62c0 84F84537 		strb	r3, [r4, #1861]
 10044 62c4 F9F7C7BE 		b	.L1703
 10045              	.L754:
 10046 62c8 2846     		mov	r0, r5
 10047 62ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 10048 62ce F7EE007A 		vmov.f32	s15, #1.0e+0
 10049 62d2 B4EE670A 		vcmp.f32	s0, s15
 10050 62d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10051 62da 48BF     		it	mi
 10052 62dc B0EE670A 		vmovmi.f32	s0, s15
 10053 62e0 04F22C73 		addw	r3, r4, #1836
 10054 62e4 0C98     		ldr	r0, [sp, #48]
 10055 62e6 83ED000A 		vstr.32	s0, [r3]
 10056 62ea 0127     		movs	r7, #1
 10057 62ec FAF7C6BE 		b	.L189
 10058              	.L607:
 10059 62f0 0C98     		ldr	r0, [sp, #48]
 10060 62f2 0127     		movs	r7, #1
 10061 62f4 FAF7C2BE 		b	.L189
 10062              	.L842:
 10063 62f8 0C98     		ldr	r0, [sp, #48]
 10064 62fa 0127     		movs	r7, #1
 10065 62fc FAF7BEBE 		b	.L189
 10066              	.L1841:
 10067 6300 3549     		ldr	r1, .L1919+52
 10068 6302 3046     		mov	r0, r6
 10069 6304 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10070 6308 0C98     		ldr	r0, [sp, #48]
 10071 630a FAF7B7BE 		b	.L189
 10072              	.L379:
 10073 630e 6068     		ldr	r0, [r4, #4]
 10074 6310 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 10075 6314 871E     		subs	r7, r0, #2
 10076 6316 18BF     		it	ne
 10077 6318 0127     		movne	r7, #1
 10078 631a FAF7E9BF 		b	.L380
 10079              	.L942:
 10080 631e 079B     		ldr	r3, [sp, #28]
 10081 6320 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 10082 6322 002B     		cmp	r3, #0
 10083 6324 14BF     		ite	ne
 10084 6326 0227     		movne	r7, #2
 10085 6328 0127     		moveq	r7, #1
 10086 632a 9AE5     		b	.L941
 10087              	.L590:
 10088 632c 0C98     		ldr	r0, [sp, #48]
 10089 632e 0127     		movs	r7, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 178


 10090 6330 FAF7A4BE 		b	.L189
 10091              	.L1821:
 10092 6334 294F     		ldr	r7, .L1919+56
 10093 6336 CBF80070 		str	r7, [fp]	@ float
 10094 633a 0EAB     		add	r3, sp, #56
 10095 633c 5A46     		mov	r2, fp
 10096 633e 5421     		movs	r1, #84
 10097 6340 2846     		mov	r0, r5
 10098 6342 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 10099 6346 FDF7E9BC 		b	.L686
 10100              	.L728:
 10101 634a 0C98     		ldr	r0, [sp, #48]
 10102 634c FAF796BE 		b	.L189
 10103              	.L1846:
 10104 6350 0A46     		mov	r2, r1
 10105              	.L907:
 10106 6352 2349     		ldr	r1, .L1919+60
 10107 6354 3046     		mov	r0, r6
 10108 6356 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10109 635a 0227     		movs	r7, #2
 10110 635c FFF763B9 		b	.L906
 10111              	.L1788:
 10112 6360 2846     		mov	r0, r5
 10113 6362 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10114 6366 0746     		mov	r7, r0
 10115 6368 FCF7AABC 		b	.L963
 10116              	.L1845:
 10117 636c B5EEC00A 		vcmpe.f32	s0, #0
 10118 6370 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10119 6374 3FF725A9 		bgt	.L413
 10120 6378 9FED1A0A 		vldr.32	s0, .L1919+64
 10121 637c FFF721B9 		b	.L413
 10122              	.L1056:
 10123 6380 4FF0FF32 		mov	r2, #-1
 10124 6384 FFF7E0BA 		b	.L537
 10125              	.L1858:
 10126 6388 FFF7FEFF 		bl	_ZN4Heat16SetChamberHeaterEja
 10127 638c FFF7E4BA 		b	.L539
 10128              	.L848:
 10129 6390 54A9     		add	r1, sp, #336
 10130 6392 4046     		mov	r0, r8
 10131 6394 FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 10132 6398 FEF7C5B8 		b	.L849
 10133              	.L465:
 10134 639c 0C98     		ldr	r0, [sp, #48]
 10135 639e 0127     		movs	r7, #1
 10136 63a0 FAF76CBE 		b	.L189
 10137              	.L1920:
 10138              		.align	2
 10139              	.L1919:
 10140 63a4 CC070000 		.word	.LC95
 10141 63a8 48070000 		.word	.LC92
 10142 63ac 0C0D0000 		.word	.LC140
 10143 63b0 C40E0000 		.word	.LC156
 10144 63b4 10020000 		.word	.LC44
 10145 63b8 00000000 		.word	.LC10
 10146 63bc 94010000 		.word	.LC39
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 179


 10147 63c0 940C0000 		.word	.LC135
 10148 63c4 AC050000 		.word	.LC73
 10149 63c8 E4000000 		.word	.LC33
 10150 63cc F0000000 		.word	.LC34
 10151 63d0 5C100000 		.word	.LC167
 10152 63d4 00000000 		.word	reprap
 10153 63d8 A0010000 		.word	.LC40
 10154 63dc 00002041 		.word	1092616192
 10155 63e0 84100000 		.word	.LC168
 10156 63e4 00000000 		.word	0
 10157              	.L1683:
 10158 63e8 3946     		mov	r1, r7
 10159 63ea D8F81000 		ldr	r0, [r8, #16]
 10160 63ee F0EE680A 		vmov.f32	s1, s17
 10161 63f2 B0EE480A 		vmov.f32	s0, s16
 10162 63f6 3246     		mov	r2, r6
 10163 63f8 FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 10164 63fc 0127     		movs	r7, #1
 10165 63fe 0C98     		ldr	r0, [sp, #48]
 10166 6400 FAF73CBE 		b	.L189
 10167              	.L1848:
 10168 6404 2846     		mov	r0, r5
 10169 6406 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10170 640a 0128     		cmp	r0, #1
 10171 640c B8BF     		it	lt
 10172 640e 0120     		movlt	r0, #1
 10173 6410 B0F5803F 		cmp	r0, #65536
 10174 6414 A8BF     		it	ge
 10175 6416 4FF48030 		movge	r0, #65536
 10176 641a 87B2     		uxth	r7, r0
 10177 641c FFF747B9 		b	.L443
 10178              	.L1669:
 10179 6420 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 10180 6424 5146     		mov	r1, r10
 10181 6426 4846     		mov	r0, r9
 10182 6428 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 10183 642c 5221     		movs	r1, #82
 10184 642e 2846     		mov	r0, r5
 10185 6430 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10186 6434 0028     		cmp	r0, #0
 10187 6436 7FF436AB 		bne	.L549
 10188 643a 0C98     		ldr	r0, [sp, #48]
 10189 643c 0127     		movs	r7, #1
 10190 643e FAF71DBE 		b	.L189
 10191              	.L1861:
 10192 6442 B5EEC00A 		vcmpe.f32	s0, #0
 10193 6446 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10194 644a 19DC     		bgt	.L1872
 10195 644c 5221     		movs	r1, #82
 10196 644e 2846     		mov	r0, r5
 10197 6450 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10198 6454 0028     		cmp	r0, #0
 10199 6456 7FF402AB 		bne	.L546
 10200 645a 0C98     		ldr	r0, [sp, #48]
 10201 645c 0127     		movs	r7, #1
 10202 645e FAF70DBE 		b	.L189
 10203              	.L1064:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 180


 10204 6462 F0EE407A 		vmov.f32	s15, s0
 10205 6466 FDF74FBB 		b	.L615
 10206              	.L1837:
 10207 646a D349     		ldr	r1, .L1921
 10208 646c 3046     		mov	r0, r6
 10209 646e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10210 6472 0227     		movs	r7, #2
 10211 6474 0C98     		ldr	r0, [sp, #48]
 10212 6476 FAF701BE 		b	.L189
 10213              	.L1030:
 10214 647a 0227     		movs	r7, #2
 10215 647c FEF797BF 		b	.L360
 10216              	.L1872:
 10217 6480 CE49     		ldr	r1, .L1921+4
 10218 6482 4346     		mov	r3, r8
 10219 6484 3A46     		mov	r2, r7
 10220 6486 3046     		mov	r0, r6
 10221 6488 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10222 648c 5221     		movs	r1, #82
 10223 648e 2846     		mov	r0, r5
 10224 6490 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10225 6494 0028     		cmp	r0, #0
 10226 6496 7FF4E2AA 		bne	.L546
 10227 649a 0C98     		ldr	r0, [sp, #48]
 10228 649c 0227     		movs	r7, #2
 10229 649e FAF7EDBD 		b	.L189
 10230              	.L1857:
 10231 64a2 C749     		ldr	r1, .L1921+8
 10232 64a4 3046     		mov	r0, r6
 10233 64a6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10234 64aa 0227     		movs	r7, #2
 10235 64ac 0C98     		ldr	r0, [sp, #48]
 10236 64ae FAF7E5BD 		b	.L189
 10237              	.L1865:
 10238 64b2 04F1C002 		add	r2, r4, #192
 10239 64b6 4146     		mov	r1, r8
 10240 64b8 2046     		mov	r0, r4
 10241 64ba FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 10242 64be F7E4     		b	.L945
 10243              	.L396:
 10244 64c0 C049     		ldr	r1, .L1921+12
 10245 64c2 3046     		mov	r0, r6
 10246 64c4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10247 64c8 FFF702BA 		b	.L397
 10248              	.L1856:
 10249 64cc 0C98     		ldr	r0, [sp, #48]
 10250 64ce 0127     		movs	r7, #1
 10251 64d0 FAF7D4BD 		b	.L189
 10252              	.L1870:
 10253 64d4 BC49     		ldr	r1, .L1921+16
 10254 64d6 3046     		mov	r0, r6
 10255 64d8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10256 64dc 0227     		movs	r7, #2
 10257 64de FDF7D9BA 		b	.L788
 10258              	.L1678:
 10259 64e2 DFEDBA7A 		vldr.32	s15, .L1921+20
 10260 64e6 B4EE670A 		vcmp.f32	s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 181


 10261 64ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10262 64ee C8BF     		it	gt
 10263 64f0 B0EE670A 		vmovgt.f32	s0, s15
 10264 64f4 8BE5     		b	.L668
 10265              	.L1868:
 10266 64f6 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 10267 64fa 9FEDB50A 		vldr.32	s0, .L1921+24
 10268 64fe 9AF80000 		ldrb	r0, [r10]	@ zero_extendqisi2
 10269 6502 002B     		cmp	r3, #0
 10270 6504 F7EE007A 		vmov.f32	s15, #1.0e+0
 10271 6508 18BF     		it	ne
 10272 650a B0EE670A 		vmovne.f32	s0, s15
 10273 650e 3221     		movs	r1, #50
 10274 6510 FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 10275 6514 0127     		movs	r7, #1
 10276 6516 FDF70FBE 		b	.L660
 10277              	.L1867:
 10278 651a 2846     		mov	r0, r5
 10279 651c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10280 6520 E4E4     		b	.L921
 10281              	.L1866:
 10282 6522 2846     		mov	r0, r5
 10283 6524 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10284 6528 8146     		mov	r9, r0
 10285 652a D6E4     		b	.L920
 10286              	.L1828:
 10287 652c FFF7FEFF 		bl	sqrtf
 10288 6530 FDF73ABD 		b	.L575
 10289              	.L1855:
 10290 6534 0121     		movs	r1, #1
 10291 6536 2046     		mov	r0, r4
 10292 6538 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 10293 653c 0127     		movs	r7, #1
 10294 653e FCF74CBF 		b	.L394
 10295              	.L1863:
 10296 6542 2846     		mov	r0, r5
 10297 6544 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 10298 6548 B4EE400A 		vcmp.f32	s0, s0
 10299 654c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10300 6550 B0EE408A 		vmov.f32	s16, s0
 10301 6554 BFF504AC 		bvs	.L497
 10302 6558 DFED9E7A 		vldr.32	s15, .L1921+28
 10303 655c B4EEE70A 		vcmpe.f32	s0, s15
 10304 6560 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10305 6564 D8BF     		it	le
 10306 6566 B0EE678A 		vmovle.f32	s16, s15
 10307 656a FFF7F9BB 		b	.L497
 10308              	.L1864:
 10309 656e 2C46     		mov	r4, r5
 10310 6570 3546     		mov	r5, r6
 10311 6572 4646     		mov	r6, r8
 10312 6574 DDF81C80 		ldr	r8, [sp, #28]
 10313              	.L504:
 10314 6578 4321     		movs	r1, #67
 10315 657a 2846     		mov	r0, r5
 10316 657c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10317 6580 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 182


 10318 6582 3BF4D6AC 		beq	.L515
 10319              	.L502:
 10320 6586 0023     		movs	r3, #0
 10321 6588 0227     		movs	r7, #2
 10322 658a 5246     		mov	r2, r10
 10323 658c 4146     		mov	r1, r8
 10324 658e 2846     		mov	r0, r5
 10325 6590 CAF80070 		str	r7, [r10]
 10326 6594 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 10327 6598 DAF80030 		ldr	r3, [r10]
 10328 659c 002B     		cmp	r3, #0
 10329 659e 00F0EF80 		beq	.L506
 10330 65a2 0027     		movs	r7, #0
 10331 65a4 DFF844B2 		ldr	fp, .L1921+52
 10332 65a8 00E0     		b	.L507
 10333              	.L514:
 10334 65aa 0137     		adds	r7, r7, #1
 10335              	.L507:
 10336 65ac DAF80030 		ldr	r3, [r10]
 10337 65b0 BB42     		cmp	r3, r7
 10338 65b2 7BF6BEAC 		bls	.L515
 10339 65b6 58F82730 		ldr	r3, [r8, r7, lsl #2]
 10340 65ba 012B     		cmp	r3, #1
 10341 65bc F5D8     		bhi	.L514
 10342 65be DBF81000 		ldr	r0, [fp, #16]
 10343 65c2 0344     		add	r3, r3, r0
 10344 65c4 B0EE480A 		vmov.f32	s0, s16
 10345 65c8 93F9DD30 		ldrsb	r3, [r3, #221]
 10346 65cc 002B     		cmp	r3, #0
 10347 65ce 4FF00102 		mov	r2, #1
 10348 65d2 1946     		mov	r1, r3
 10349 65d4 E9DB     		blt	.L514
 10350 65d6 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 10351 65da 0028     		cmp	r0, #0
 10352 65dc E5D1     		bne	.L514
 10353              	.L510:
 10354 65de 3246     		mov	r2, r6
 10355 65e0 2946     		mov	r1, r5
 10356 65e2 2046     		mov	r0, r4
 10357 65e4 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 10358 65e8 0123     		movs	r3, #1
 10359 65ea 84F84537 		strb	r3, [r4, #1861]
 10360 65ee F9F734BD 		b	.L1661
 10361              	.L1782:
 10362 65f2 0C98     		ldr	r0, [sp, #48]
 10363 65f4 0127     		movs	r7, #1
 10364 65f6 FAF741BD 		b	.L189
 10365              	.L564:
 10366 65fa 2846     		mov	r0, r5
 10367 65fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 10368 6600 3946     		mov	r1, r7
 10369 6602 DBF81000 		ldr	r0, [fp, #16]
 10370 6606 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 10371 660a 3946     		mov	r1, r7
 10372 660c DBF81000 		ldr	r0, [fp, #16]
 10373 6610 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 10374 6614 94F84637 		ldrb	r3, [r4, #1862]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 183


 10375 6618 73B1     		cbz	r3, .L1873
 10376              	.L565:
 10377 661a 0023     		movs	r3, #0
 10378 661c 0C98     		ldr	r0, [sp, #48]
 10379 661e 84F84537 		strb	r3, [r4, #1861]
 10380 6622 84F84637 		strb	r3, [r4, #1862]
 10381 6626 0127     		movs	r7, #1
 10382 6628 FAF728BD 		b	.L189
 10383              	.L381:
 10384 662c 6A49     		ldr	r1, .L1921+32
 10385 662e 0C98     		ldr	r0, [sp, #48]
 10386 6630 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 10387 6634 FFF70CBA 		b	.L372
 10388              	.L1873:
 10389 6638 4246     		mov	r2, r8
 10390 663a 3946     		mov	r1, r7
 10391 663c DBF81000 		ldr	r0, [fp, #16]
 10392 6640 B7EE000A 		vmov.f32	s0, #1.0e+0
 10393 6644 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 10394 6648 0028     		cmp	r0, #0
 10395 664a E6D1     		bne	.L565
 10396 664c 32E6     		b	.L516
 10397              	.L1871:
 10398 664e 0DF1480A 		add	r10, sp, #72
 10399 6652 0DF5A878 		add	r8, sp, #336
 10400 6656 96E7     		b	.L502
 10401              	.L1859:
 10402 6658 6049     		ldr	r1, .L1921+36
 10403 665a 3046     		mov	r0, r6
 10404 665c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10405 6660 0C98     		ldr	r0, [sp, #48]
 10406 6662 FAF70BBD 		b	.L189
 10407              	.L1029:
 10408 6666 4F46     		mov	r7, r9
 10409 6668 B946     		mov	r9, r7
 10410 666a FCF7CDBE 		b	.L356
 10411              	.L1736:
 10412 666e 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 10413 6670 002A     		cmp	r2, #0
 10414 6672 7BF445AA 		bne	.L679
 10415 6676 5B68     		ldr	r3, [r3, #4]
 10416 6678 002B     		cmp	r3, #0
 10417 667a 7BF441AA 		bne	.L679
 10418 667e 04F1EC00 		add	r0, r4, #236
 10419 6682 FFF7FEFF 		bl	_ZN6GCodes7RawMove11SetDefaultsEv
 10420 6686 6368     		ldr	r3, [r4, #4]
 10421 6688 0127     		movs	r7, #1
 10422 668a D3F88431 		ldr	r3, [r3, #388]	@ float
 10423 668e C4F84031 		str	r3, [r4, #320]	@ float
 10424 6692 C4F86471 		str	r7, [r4, #356]
 10425              		.syntax unified
 10426              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10427 6696 BFF35F8F 		dmb
 10428              	@ 0 "" 2
 10429              		.thumb
 10430              		.syntax unified
 10431 669a C4F86071 		str	r7, [r4, #352]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 184


 10432 669e 0C98     		ldr	r0, [sp, #48]
 10433 66a0 FAF7ECBC 		b	.L189
 10434              	.L896:
 10435 66a4 236D     		ldr	r3, [r4, #80]
 10436 66a6 0C98     		ldr	r0, [sp, #48]
 10437 66a8 1A68     		ldr	r2, [r3]
 10438 66aa 002A     		cmp	r2, #0
 10439 66ac 00F0AF80 		beq	.L1116
 10440 66b0 07F00103 		and	r3, r7, #1
 10441 66b4 82F8F630 		strb	r3, [r2, #246]
 10442 66b8 6368     		ldr	r3, [r4, #4]
 10443 66ba 4746     		mov	r7, r8
 10444 66bc 83F8648B 		strb	r8, [r3, #2916]
 10445 66c0 FAF7DCBC 		b	.L189
 10446              	.L895:
 10447 66c4 E36C     		ldr	r3, [r4, #76]
 10448 66c6 0C98     		ldr	r0, [sp, #48]
 10449 66c8 1A68     		ldr	r2, [r3]
 10450 66ca 07F00103 		and	r3, r7, #1
 10451 66ce 82F8F630 		strb	r3, [r2, #246]
 10452 66d2 0127     		movs	r7, #1
 10453 66d4 FAF7D2BC 		b	.L189
 10454              	.L1852:
 10455 66d8 4149     		ldr	r1, .L1921+40
 10456 66da 3046     		mov	r0, r6
 10457 66dc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10458 66e0 0227     		movs	r7, #2
 10459 66e2 0C98     		ldr	r0, [sp, #48]
 10460 66e4 FAF7CABC 		b	.L189
 10461              	.L1851:
 10462 66e8 6068     		ldr	r0, [r4, #4]
 10463 66ea FFF7FEFF 		bl	_ZNK8Platform9IsPowerOkEv
 10464 66ee 0028     		cmp	r0, #0
 10465 66f0 3AD1     		bne	.L401
 10466 66f2 3C49     		ldr	r1, .L1921+44
 10467 66f4 3046     		mov	r0, r6
 10468 66f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10469 66fa 0227     		movs	r7, #2
 10470 66fc 0C98     		ldr	r0, [sp, #48]
 10471 66fe FAF7BDBC 		b	.L189
 10472              	.L1854:
 10473 6702 A36C     		ldr	r3, [r4, #72]
 10474 6704 AA68     		ldr	r2, [r5, #8]
 10475 6706 1868     		ldr	r0, [r3]
 10476 6708 177E     		ldrb	r7, [r2, #24]	@ zero_extendqisi2
 10477 670a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10478 670e 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 10479 6710 07F00107 		and	r7, r7, #1
 10480 6714 67F30003 		bfi	r3, r7, #0, #1
 10481 6718 0376     		strb	r3, [r0, #24]
 10482 671a A26C     		ldr	r2, [r4, #72]
 10483 671c AB68     		ldr	r3, [r5, #8]
 10484 671e 1068     		ldr	r0, [r2]
 10485 6720 5F68     		ldr	r7, [r3, #4]	@ float
 10486 6722 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10487 6726 4760     		str	r7, [r0, #4]	@ float
 10488 6728 A36C     		ldr	r3, [r4, #72]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 185


 10489 672a AA68     		ldr	r2, [r5, #8]
 10490 672c 1868     		ldr	r0, [r3]
 10491 672e 177E     		ldrb	r7, [r2, #24]	@ zero_extendqisi2
 10492 6730 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10493 6734 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 10494 6736 C7F38017 		ubfx	r7, r7, #6, #1
 10495 673a 67F38613 		bfi	r3, r7, #6, #1
 10496 673e 0376     		strb	r3, [r0, #24]
 10497 6740 D4F80C15 		ldr	r1, [r4, #1292]
 10498 6744 D4F80805 		ldr	r0, [r4, #1288]
 10499 6748 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 10500 674c D4F86C31 		ldr	r3, [r4, #364]	@ float
 10501 6750 C4F87031 		str	r3, [r4, #368]	@ float
 10502 6754 FFF77CB8 		b	.L405
 10503              	.L1853:
 10504 6758 2349     		ldr	r1, .L1921+48
 10505 675a 3046     		mov	r0, r6
 10506 675c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10507 6760 0227     		movs	r7, #2
 10508 6762 0C98     		ldr	r0, [sp, #48]
 10509 6764 FAF78ABC 		b	.L189
 10510              	.L401:
 10511 6768 AB68     		ldr	r3, [r5, #8]
 10512 676a 1322     		movs	r2, #19
 10513 676c 1A75     		strb	r2, [r3, #20]
 10514 676e 2046     		mov	r0, r4
 10515 6770 FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 10516 6774 0028     		cmp	r0, #0
 10517 6776 3FD1     		bne	.L402
 10518 6778 0C98     		ldr	r0, [sp, #48]
 10519 677a 0127     		movs	r7, #1
 10520 677c FAF77EBC 		b	.L189
 10521              	.L506:
 10522 6780 DFF868B0 		ldr	fp, .L1921+52
 10523 6784 DBF81000 		ldr	r0, [fp, #16]
 10524 6788 90F9DD10 		ldrsb	r1, [r0, #221]
 10525 678c 0029     		cmp	r1, #0
 10526 678e 41DA     		bge	.L1874
 10527              	.L509:
 10528 6790 DBF81000 		ldr	r0, [fp, #16]
 10529 6794 90F9DE10 		ldrsb	r1, [r0, #222]
 10530 6798 0029     		cmp	r1, #0
 10531 679a FBF6CAAB 		blt	.L515
 10532 679e B0EE480A 		vmov.f32	s0, s16
 10533 67a2 0122     		movs	r2, #1
 10534 67a4 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 10535 67a8 0028     		cmp	r0, #0
 10536 67aa 7BF4C2AB 		bne	.L515
 10537 67ae 16E7     		b	.L510
 10538              	.L1751:
 10539 67b0 0C98     		ldr	r0, [sp, #48]
 10540 67b2 0127     		movs	r7, #1
 10541 67b4 FAF762BC 		b	.L189
 10542              	.L1922:
 10543              		.align	2
 10544              	.L1921:
 10545 67b8 0C120000 		.word	.LC185
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 186


 10546 67bc 48070000 		.word	.LC92
 10547 67c0 2C070000 		.word	.LC91
 10548 67c4 9C020000 		.word	.LC50
 10549 67c8 F80C0000 		.word	.LC139
 10550 67cc 00001645 		.word	1159069696
 10551 67d0 00000000 		.word	0
 10552 67d4 CDCCCC3D 		.word	1036831949
 10553 67d8 30020000 		.word	.LC47
 10554 67dc A0010000 		.word	.LC40
 10555 67e0 04030000 		.word	.LC54
 10556 67e4 CC020000 		.word	.LC52
 10557 67e8 30030000 		.word	.LC55
 10558 67ec 00000000 		.word	reprap
 10559              	.L1862:
 10560 67f0 0C98     		ldr	r0, [sp, #48]
 10561 67f2 0127     		movs	r7, #1
 10562 67f4 FAF742BC 		b	.L189
 10563              	.L402:
 10564 67f8 0097     		str	r7, [sp]
 10565 67fa 0123     		movs	r3, #1
 10566 67fc 094A     		ldr	r2, .L1923
 10567 67fe 2946     		mov	r1, r5
 10568 6800 2046     		mov	r0, r4
 10569 6802 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10570 6806 0127     		movs	r7, #1
 10571 6808 0C98     		ldr	r0, [sp, #48]
 10572 680a FAF737BC 		b	.L189
 10573              	.L1116:
 10574 680e 4746     		mov	r7, r8
 10575 6810 FAF734BC 		b	.L189
 10576              	.L1874:
 10577 6814 B0EE480A 		vmov.f32	s0, s16
 10578 6818 0122     		movs	r2, #1
 10579 681a FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 10580 681e 0028     		cmp	r0, #0
 10581 6820 B6D1     		bne	.L509
 10582 6822 DCE6     		b	.L510
 10583              	.L1924:
 10584              		.align	2
 10585              	.L1923:
 10586 6824 F8020000 		.word	.LC53
 10587              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBuffer
 10588              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 10589              		.align	1
 10590              		.p2align 2,,3
 10591              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 10592              		.syntax unified
 10593              		.thumb
 10594              		.thumb_func
 10595              		.fpu fpv4-sp-d16
 10596              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, %function
 10597              	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef:
 10598              		@ args = 0, pretend = 0, frame = 0
 10599              		@ frame_needed = 0, uses_anonymous_args = 0
 10600 0000 70B5     		push	{r4, r5, r6, lr}
 10601 0002 0646     		mov	r6, r0
 10602 0004 0846     		mov	r0, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 187


 10603 0006 0C46     		mov	r4, r1
 10604 0008 1546     		mov	r5, r2
 10605 000a FFF7FEFF 		bl	_ZNK11GCodeBuffer13CanQueueCodesEv
 10606 000e E8B9     		cbnz	r0, .L1951
 10607              	.L1926:
 10608 0010 94F85430 		ldrb	r3, [r4, #84]	@ zero_extendqisi2
 10609 0014 4D2B     		cmp	r3, #77
 10610 0016 2FD0     		beq	.L1930
 10611 0018 542B     		cmp	r3, #84
 10612 001a 10D0     		beq	.L1931
 10613 001c 472B     		cmp	r3, #71
 10614 001e 20D0     		beq	.L1952
 10615              	.L1929:
 10616 0020 04F15502 		add	r2, r4, #85
 10617 0024 2549     		ldr	r1, .L1954
 10618 0026 2846     		mov	r0, r5
 10619 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10620 002c 2B68     		ldr	r3, [r5]
 10621 002e 2146     		mov	r1, r4
 10622 0030 3046     		mov	r0, r6
 10623 0032 0222     		movs	r2, #2
 10624 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 10625 0038 0125     		movs	r5, #1
 10626              	.L1928:
 10627 003a 2846     		mov	r0, r5
 10628 003c 70BD     		pop	{r4, r5, r6, pc}
 10629              	.L1931:
 10630 003e A368     		ldr	r3, [r4, #8]
 10631 0040 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 10632 0042 9B06     		lsls	r3, r3, #26
 10633 0044 23D5     		bpl	.L1953
 10634 0046 0125     		movs	r5, #1
 10635 0048 2846     		mov	r0, r5
 10636 004a 70BD     		pop	{r4, r5, r6, pc}
 10637              	.L1951:
 10638 004c 2046     		mov	r0, r4
 10639 004e FFF7FEFF 		bl	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
 10640 0052 0028     		cmp	r0, #0
 10641 0054 DCD0     		beq	.L1926
 10642 0056 D6F86031 		ldr	r3, [r6, #352]
 10643 005a FBB1     		cbz	r3, .L1927
 10644              	.L1933:
 10645 005c 0025     		movs	r5, #0
 10646 005e 2846     		mov	r0, r5
 10647 0060 70BD     		pop	{r4, r5, r6, pc}
 10648              	.L1952:
 10649 0062 94F85330 		ldrb	r3, [r4, #83]	@ zero_extendqisi2
 10650 0066 002B     		cmp	r3, #0
 10651 0068 DAD0     		beq	.L1929
 10652 006a 2A46     		mov	r2, r5
 10653 006c 2146     		mov	r1, r4
 10654 006e 3046     		mov	r0, r6
 10655 0070 BDE87040 		pop	{r4, r5, r6, lr}
 10656 0074 FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 10657              	.L1930:
 10658 0078 94F85330 		ldrb	r3, [r4, #83]	@ zero_extendqisi2
 10659 007c 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 188


 10660 007e CFD0     		beq	.L1929
 10661 0080 2A46     		mov	r2, r5
 10662 0082 2146     		mov	r1, r4
 10663 0084 3046     		mov	r0, r6
 10664 0086 BDE87040 		pop	{r4, r5, r6, lr}
 10665 008a FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 10666              	.L1953:
 10667 008e 2A46     		mov	r2, r5
 10668 0090 2146     		mov	r1, r4
 10669 0092 3046     		mov	r0, r6
 10670 0094 BDE87040 		pop	{r4, r5, r6, lr}
 10671 0098 FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40
 10672              	.L1927:
 10673 009c 2146     		mov	r1, r4
 10674 009e D6F8B806 		ldr	r0, [r6, #1720]
 10675 00a2 FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 10676 00a6 0546     		mov	r5, r0
 10677 00a8 0028     		cmp	r0, #0
 10678 00aa D7D0     		beq	.L1933
 10679 00ac 2146     		mov	r1, r4
 10680 00ae 3046     		mov	r0, r6
 10681 00b0 034B     		ldr	r3, .L1954+4
 10682 00b2 0122     		movs	r2, #1
 10683 00b4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 10684 00b8 BFE7     		b	.L1928
 10685              	.L1955:
 10686 00ba 00BF     		.align	2
 10687              	.L1954:
 10688 00bc 00000000 		.word	.LC195
 10689 00c0 2C000000 		.word	.LC17
 10690              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferRK9Str
 10691              		.section	.text.startup._GLOBAL__sub_I__ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef,"ax",%progbi
 10692              		.align	1
 10693              		.p2align 2,,3
 10694              		.syntax unified
 10695              		.thumb
 10696              		.thumb_func
 10697              		.fpu fpv4-sp-d16
 10698              		.type	_GLOBAL__sub_I__ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, %function
 10699              	_GLOBAL__sub_I__ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef:
 10700              		@ args = 0, pretend = 0, frame = 0
 10701              		@ frame_needed = 0, uses_anonymous_args = 0
 10702              		@ link register save eliminated.
 10703 0000 0149     		ldr	r1, .L1957
 10704 0002 0248     		ldr	r0, .L1957+4
 10705 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 10706              	.L1958:
 10707              		.align	2
 10708              	.L1957:
 10709 0008 00000000 		.word	.LANCHOR0
 10710 000c 00000000 		.word	.LANCHOR1
 10711              		.size	_GLOBAL__sub_I__ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, .-_GLOBAL__sub_I__ZN6GCodes9
 10712              		.section	.init_array,"aw",%init_array
 10713              		.align	2
 10714 0000 00000000 		.word	_GLOBAL__sub_I__ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef(target1)
 10715              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 10716              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 189


 10717              		.set	.LANCHOR1,. + 0
 10718              		.type	_ZL14DefaultNetMask, %object
 10719              		.size	_ZL14DefaultNetMask, 4
 10720              	_ZL14DefaultNetMask:
 10721 0000 00000000 		.space	4
 10722              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 10723              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 10724              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 10725              	_ZL28cpu_irq_prev_interrupt_state:
 10726 0000 00       		.space	1
 10727              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 10728              		.align	2
 10729              		.type	_ZL32cpu_irq_critical_section_counter, %object
 10730              		.size	_ZL32cpu_irq_critical_section_counter, 4
 10731              	_ZL32cpu_irq_critical_section_counter:
 10732 0000 00000000 		.space	4
 10733              		.section	.rodata.._157,"a",%progbits
 10734              		.align	2
 10735              		.set	.LANCHOR0,. + 0
 10736              		.type	._157, %object
 10737              		.size	._157, 4
 10738              	._157:
 10739 0000 FF       		.byte	-1
 10740 0001 FF       		.byte	-1
 10741 0002 FF       		.byte	-1
 10742 0003 00       		.byte	0
 10743              		.section	.rodata._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10744              		.align	2
 10745              	.LC8:
 10746 0000 496E7375 		.ascii	"Insufficient axes homed for bed probing\000"
 10746      66666963 
 10746      69656E74 
 10746      20617865 
 10746      7320686F 
 10747              	.LC9:
 10748 0028 6265642E 		.ascii	"bed.g\000"
 10748      6700
 10749              		.section	.rodata._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10750              		.align	2
 10751              	.LC10:
 10752 0000 736C6565 		.ascii	"sleep.g\000"
 10752      702E6700 
 10753              	.LC11:
 10754 0008 73746F70 		.ascii	"stop.g\000"
 10754      2E6700
 10755 000f 00       		.space	1
 10756              	.LC12:
 10757 0010 6F6E00   		.ascii	"on\000"
 10758 0013 00       		.space	1
 10759              	.LC13:
 10760 0014 6F666600 		.ascii	"off\000"
 10761              	.LC14:
 10762 0018 6368616D 		.ascii	"chamber\000"
 10762      62657200 
 10763              	.LC15:
 10764 0020 62656400 		.ascii	"bed\000"
 10765              	.LC16:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 190


 10766 0024 286F6E29 		.ascii	"(on)\000"
 10766      00
 10767 0029 000000   		.space	3
 10768              	.LC17:
 10769 002c 00       		.ascii	"\000"
 10770 002d 000000   		.space	3
 10771              	.LC18:
 10772 0030 636F6E66 		.ascii	"config.g\000"
 10772      69672E67 
 10772      00
 10773 0039 000000   		.space	3
 10774              	.LC19:
 10775 003c 303A2F73 		.ascii	"0:/sys/\000"
 10775      79732F00 
 10776              	.LC20:
 10777 0044 72657072 		.ascii	"reprap.htm\000"
 10777      61702E68 
 10777      746D00
 10778 004f 00       		.space	1
 10779              	.LC21:
 10780 0050 303A2F77 		.ascii	"0:/www/\000"
 10780      77772F00 
 10781              	.LC22:
 10782 0058 6E6F7420 		.ascii	"not \000"
 10782      00
 10783 005d 000000   		.space	3
 10784              	.LC23:
 10785 0060 696E7665 		.ascii	"inverted\000"
 10785      72746564 
 10785      00
 10786 0069 000000   		.space	3
 10787              	.LC24:
 10788 006c 6E6F7420 		.ascii	"not inverted\000"
 10788      696E7665 
 10788      72746564 
 10788      00
 10789 0079 000000   		.space	3
 10790              	.LC25:
 10791 007c 6E6F6E65 		.ascii	"none\000"
 10791      00
 10792 0081 000000   		.space	3
 10793              	.LC26:
 10794 0084 68696768 		.ascii	"high end\000"
 10794      20656E64 
 10794      00
 10795 008d 000000   		.space	3
 10796              	.LC27:
 10797 0090 6C6F7720 		.ascii	"low end\000"
 10797      656E6400 
 10798              	.LC28:
 10799 0098 61637469 		.ascii	"active low switch\000"
 10799      7665206C 
 10799      6F772073 
 10799      77697463 
 10799      6800
 10800 00aa 0000     		.space	2
 10801              	.LC29:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 191


 10802 00ac 61637469 		.ascii	"active high switch\000"
 10802      76652068 
 10802      69676820 
 10802      73776974 
 10802      636800
 10803 00bf 00       		.space	1
 10804              	.LC30:
 10805 00c0 5A207072 		.ascii	"Z probe\000"
 10805      6F626500 
 10806              	.LC31:
 10807 00c8 756E6B6E 		.ascii	"unknown type\000"
 10807      6F776E20 
 10807      74797065 
 10807      00
 10808 00d5 000000   		.space	3
 10809              	.LC32:
 10810 00d8 6D6F746F 		.ascii	"motor stall\000"
 10810      72207374 
 10810      616C6C00 
 10811              	.LC33:
 10812 00e4 72657175 		.ascii	"requires\000"
 10812      69726573 
 10812      00
 10813 00ed 000000   		.space	3
 10814              	.LC34:
 10815 00f0 646F6573 		.ascii	"does not require\000"
 10815      206E6F74 
 10815      20726571 
 10815      75697265 
 10815      00
 10816 0101 000000   		.space	3
 10817              	.LC35:
 10818 0104 4D6F746F 		.ascii	"Motor current (mA) - \000"
 10818      72206375 
 10818      7272656E 
 10818      7420286D 
 10818      4129202D 
 10819 011a 0000     		.space	2
 10820              	.LC36:
 10821 011c 4D6F746F 		.ascii	"Motor current % of normal - \000"
 10821      72206375 
 10821      7272656E 
 10821      74202520 
 10821      6F66206E 
 10822 0139 000000   		.space	3
 10823              	.LC37:
 10824 013c 4D6F746F 		.ascii	"Motor standstill current % of normal - \000"
 10824      72207374 
 10824      616E6473 
 10824      74696C6C 
 10824      20637572 
 10825              	.LC38:
 10826 0164 50617573 		.ascii	"Pause the print before attempting to cancel it\000"
 10826      65207468 
 10826      65207072 
 10826      696E7420 
 10826      6265666F 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 192


 10827 0193 00       		.space	1
 10828              	.LC39:
 10829 0194 63616E63 		.ascii	"cancel.g\000"
 10829      656C2E67 
 10829      00
 10830 019d 000000   		.space	3
 10831              	.LC40:
 10832 01a0 496E7661 		.ascii	"Invalid spindle index\000"
 10832      6C696420 
 10832      7370696E 
 10832      646C6520 
 10832      696E6465 
 10833 01b6 0000     		.space	2
 10834              	.LC41:
 10835 01b8 496E7661 		.ascii	"Invalid extruder number specified: %lu\000"
 10835      6C696420 
 10835      65787472 
 10835      75646572 
 10835      206E756D 
 10836 01df 00       		.space	1
 10837              	.LC42:
 10838 01e0 49646C65 		.ascii	"Idle timeouts cannot be negative\000"
 10838      2074696D 
 10838      656F7574 
 10838      73206361 
 10838      6E6E6F74 
 10839 0201 000000   		.space	3
 10840              	.LC43:
 10841 0204 303A2F67 		.ascii	"0:/gcodes/\000"
 10841      636F6465 
 10841      732F00
 10842 020f 00       		.space	1
 10843              	.LC44:
 10844 0210 47436F64 		.ascii	"GCode files:\012\000"
 10844      65206669 
 10844      6C65733A 
 10844      0A00
 10845 021e 0000     		.space	2
 10846              	.LC45:
 10847 0220 25632573 		.ascii	"%c%s%c%c\000"
 10847      25632563 
 10847      00
 10848 0229 000000   		.space	3
 10849              	.LC46:
 10850 022c 25730A00 		.ascii	"%s\012\000"
 10851              	.LC47:
 10852 0230 4E4F4E45 		.ascii	"NONE\012\000"
 10852      0A00
 10853 0236 0000     		.space	2
 10854              	.LC48:
 10855 0238 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 10855      6F742073 
 10855      65742066 
 10855      696C6520 
 10855      746F2070 
 10856 026b 20626569 		.ascii	" being printed\000"
 10856      6E672070 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 193


 10856      72696E74 
 10856      656400
 10857 027a 0000     		.space	2
 10858              	.LC49:
 10859 027c 46696C65 		.ascii	"File %s selected for printing\000"
 10859      20257320 
 10859      73656C65 
 10859      63746564 
 10859      20666F72 
 10860 029a 0000     		.space	2
 10861              	.LC50:
 10862 029c 46696C65 		.ascii	"File opened\012File selected\000"
 10862      206F7065 
 10862      6E65640A 
 10862      46696C65 
 10862      2073656C 
 10863 02b6 0000     		.space	2
 10864              	.LC51:
 10865 02b8 46696C65 		.ascii	"Filename expected\000"
 10865      6E616D65 
 10865      20657870 
 10865      65637465 
 10865      6400
 10866 02ca 0000     		.space	2
 10867              	.LC52:
 10868 02cc 43616E6E 		.ascii	"Cannot resume while power voltage is low\000"
 10868      6F742072 
 10868      6573756D 
 10868      65207768 
 10868      696C6520 
 10869 02f5 000000   		.space	3
 10870              	.LC53:
 10871 02f8 72657375 		.ascii	"resume.g\000"
 10871      6D652E67 
 10871      00
 10872 0301 000000   		.space	3
 10873              	.LC54:
 10874 0304 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 10874      6F742070 
 10874      72696E74 
 10874      2C206265 
 10874      63617573 
 10875 032f 00       		.space	1
 10876              	.LC55:
 10877 0330 43616E6E 		.ascii	"Cannot start a print while power voltage is low\000"
 10877      6F742073 
 10877      74617274 
 10877      20612070 
 10877      72696E74 
 10878              	.LC56:
 10879 0360 5072696E 		.ascii	"Printing is already paused!!\000"
 10879      74696E67 
 10879      20697320 
 10879      616C7265 
 10879      61647920 
 10880 037d 000000   		.space	3
 10881              	.LC57:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 194


 10882 0380 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 10882      6F742070 
 10882      61757365 
 10882      20707269 
 10882      6E742C20 
 10883 03b3 642100   		.ascii	"d!\000"
 10884 03b6 0000     		.space	2
 10885              	.LC58:
 10886 03b8 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 10886      72696E74 
 10886      696E6720 
 10886      62797465 
 10886      20256C75 
 10887 03d1 000000   		.space	3
 10888              	.LC59:
 10889 03d4 4E6F7420 		.ascii	"Not SD printing.\000"
 10889      53442070 
 10889      72696E74 
 10889      696E672E 
 10889      00
 10890 03e5 000000   		.space	3
 10891              	.LC60:
 10892 03e8 57726974 		.ascii	"Writing to file: %s\000"
 10892      696E6720 
 10892      746F2066 
 10892      696C653A 
 10892      20257300 
 10893              	.LC61:
 10894 03fc 43616E27 		.ascii	"Can't open file %s for writing.\000"
 10894      74206F70 
 10894      656E2066 
 10894      696C6520 
 10894      25732066 
 10895              	.LC62:
 10896 041c 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
 10896      6520656E 
 10896      642D6F66 
 10896      2D66696C 
 10896      65206265 
 10897 0441 000000   		.space	3
 10898              	.LC63:
 10899 0444 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 10899      6C617469 
 10899      6F6E206D 
 10899      6F64653A 
 10899      2025732C 
 10900 0477 653A2025 		.ascii	"e: %.1f sec\000"
 10900      2E316620 
 10900      73656300 
 10901 0483 00       		.space	1
 10902              	.LC64:
 10903 0484 43616E6E 		.ascii	"Cannot open file: %s\000"
 10903      6F74206F 
 10903      70656E20 
 10903      66696C65 
 10903      3A202573 
 10904 0499 000000   		.space	3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 195


 10905              	.LC65:
 10906 049c 7B225344 		.ascii	"{\"SDinfo\":{\"slot\":%lu,\"present\":\000"
 10906      696E666F 
 10906      223A7B22 
 10906      736C6F74 
 10906      223A256C 
 10907 04bd 000000   		.space	3
 10908              	.LC66:
 10909 04c0 312C2263 		.ascii	"1,\"capacity\":%llu,\"free\":%llu,\"speed\":%lu,\"c"
 10909      61706163 
 10909      69747922 
 10909      3A256C6C 
 10909      752C2266 
 10910 04ec 6C73697A 		.ascii	"lsize\":%lu}}\000"
 10910      65223A25 
 10910      6C757D7D 
 10910      00
 10911 04f9 000000   		.space	3
 10912              	.LC67:
 10913 04fc 307D7D00 		.ascii	"0}}\000"
 10914              	.LC68:
 10915 0500 42616420 		.ascii	"Bad SD slot number: %lu\000"
 10915      53442073 
 10915      6C6F7420 
 10915      6E756D62 
 10915      65723A20 
 10916              	.LC69:
 10917 0518 4E6F2053 		.ascii	"No SD card mounted in slot %lu\000"
 10917      44206361 
 10917      7264206D 
 10917      6F756E74 
 10917      65642069 
 10918 0537 00       		.space	1
 10919              	.LC70:
 10920 0538 53442063 		.ascii	"SD card in slot %lu: capacity %.2fGb, free space %."
 10920      61726420 
 10920      696E2073 
 10920      6C6F7420 
 10920      256C753A 
 10921 056b 32664762 		.ascii	"2fGb, speed %.2fMBytes/sec, cluster size \000"
 10921      2C207370 
 10921      65656420 
 10921      252E3266 
 10921      4D427974 
 10922 0595 000000   		.space	3
 10923              	.LC71:
 10924 0598 256C7520 		.ascii	"%lu bytes\000"
 10924      62797465 
 10924      7300
 10925 05a2 0000     		.space	2
 10926              	.LC72:
 10927 05a4 256C756B 		.ascii	"%lukb\000"
 10927      6200
 10928 05aa 0000     		.space	2
 10929              	.LC73:
 10930 05ac 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 10930      63616C20 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 196


 10930      70696E20 
 10930      25642069 
 10930      73206E6F 
 10931              	.LC74:
 10932 05d8 53746570 		.ascii	"Steps/mm: \000"
 10932      732F6D6D 
 10932      3A2000
 10933 05e3 00       		.space	1
 10934              	.LC75:
 10935 05e4 453A00   		.ascii	"E:\000"
 10936 05e7 00       		.space	1
 10937              	.LC76:
 10938 05e8 25633A20 		.ascii	"%c: %.3f, \000"
 10938      252E3366 
 10938      2C2000
 10939 05f3 00       		.space	1
 10940              	.LC77:
 10941 05f4 2563252E 		.ascii	"%c%.3f\000"
 10941      336600
 10942 05fb 00       		.space	1
 10943              	.LC78:
 10944 05fc 496E7661 		.ascii	"Invalid tool number\000"
 10944      6C696420 
 10944      746F6F6C 
 10944      206E756D 
 10944      62657200 
 10945              	.LC79:
 10946 0610 322E3032 		.ascii	"2.02RC4(RTOS)\000"
 10946      52433428 
 10946      52544F53 
 10946      2900
 10947 061e 0000     		.space	2
 10948              	.LC80:
 10949 0620 52657052 		.ascii	"RepRapFirmware for Duet 2 WiFi/Ethernet\000"
 10949      61704669 
 10949      726D7761 
 10949      72652066 
 10949      6F722044 
 10950              	.LC81:
 10951 0648 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 10951      57415245 
 10951      5F4E414D 
 10951      453A2025 
 10951      73204649 
 10952 067b 20257300 		.ascii	" %s\000"
 10953 067f 00       		.space	1
 10954              	.LC82:
 10955 0680 202B2025 		.ascii	" + %s\000"
 10955      7300
 10956 0686 0000     		.space	2
 10957              	.LC83:
 10958 0688 32303138 		.ascii	"2018-11-18b5\000"
 10958      2D31312D 
 10958      31386235 
 10958      00
 10959 0695 000000   		.space	3
 10960              	.LC84:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 197


 10961 0698 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 10961      4D574152 
 10961      455F4441 
 10961      54453A20 
 10961      257300
 10962 06ab 00       		.space	1
 10963              	.LC85:
 10964 06ac 496E7661 		.ascii	"Invalid message type: %d\000"
 10964      6C696420 
 10964      6D657373 
 10964      61676520 
 10964      74797065 
 10965 06c5 000000   		.space	3
 10966              	.LC86:
 10967 06c8 456E6473 		.ascii	"Endstops - \000"
 10967      746F7073 
 10967      202D2000 
 10968              	.LC87:
 10969 06d4 5A207072 		.ascii	"Z probe: %s\000"
 10969      6F62653A 
 10969      20257300 
 10970              	.LC88:
 10971 06e0 25633A20 		.ascii	"%c: %s, \000"
 10971      25732C20 
 10971      00
 10972 06e9 000000   		.space	3
 10973              	.LC89:
 10974 06ec 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 10974      2073616D 
 10974      706C6520 
 10974      74696D65 
 10974      20697320 
 10975 070d 000000   		.space	3
 10976              	.LC90:
 10977 0710 496E7661 		.ascii	"Invalid heater index '%d'\000"
 10977      6C696420 
 10977      68656174 
 10977      65722069 
 10977      6E646578 
 10978 072a 0000     		.space	2
 10979              	.LC91:
 10980 072c 496E7661 		.ascii	"Invalid heater number '%d'\000"
 10980      6C696420 
 10980      68656174 
 10980      6572206E 
 10980      756D6265 
 10981 0747 00       		.space	1
 10982              	.LC92:
 10983 0748 4E6F2025 		.ascii	"No %s heater has been configured for slot %d\000"
 10983      73206865 
 10983      61746572 
 10983      20686173 
 10983      20626565 
 10984 0775 000000   		.space	3
 10985              	.LC93:
 10986 0778 25632573 		.ascii	"%c%s heater %d (slot %d) is currently at %.1f\302\260"
 10986      20686561 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 198


 10986      74657220 
 10986      25642028 
 10986      736C6F74 
 10987 07a7 4300     		.ascii	"C\000"
 10988 07a9 000000   		.space	3
 10989              	.LC94:
 10990 07ac 496E7661 		.ascii	"Invalid bed heater index '%u'\000"
 10990      6C696420 
 10990      62656420 
 10990      68656174 
 10990      65722069 
 10991 07ca 0000     		.space	2
 10992              	.LC95:
 10993 07cc 496E7661 		.ascii	"Invalid heater index '%lu'\000"
 10993      6C696420 
 10993      68656174 
 10993      65722069 
 10993      6E646578 
 10994 07e7 00       		.space	1
 10995              	.LC96:
 10996 07e8 566F6C75 		.ascii	"Volumetric extrusion is disabled for this input sou"
 10996      6D657472 
 10996      69632065 
 10996      78747275 
 10996      73696F6E 
 10997 081b 72636500 		.ascii	"rce\000"
 10998 081f 00       		.space	1
 10999              	.LC97:
 11000 0820 46696C61 		.ascii	"Filament diameters for volumetric extrusion:\000"
 11000      6D656E74 
 11000      20646961 
 11000      6D657465 
 11000      72732066 
 11001 084d 000000   		.space	3
 11002              	.LC98:
 11003 0850 206E2F61 		.ascii	" n/a\000"
 11003      00
 11004 0855 000000   		.space	3
 11005              	.LC99:
 11006 0858 20252E30 		.ascii	" %.03f\000"
 11006      336600
 11007 085f 00       		.space	1
 11008              	.LC100:
 11009 0860 41636365 		.ascii	"Accelerations: \000"
 11009      6C657261 
 11009      74696F6E 
 11009      733A2000 
 11010              	.LC101:
 11011 0870 25633A20 		.ascii	"%c: %.1f, \000"
 11011      252E3166 
 11011      2C2000
 11012 087b 00       		.space	1
 11013              	.LC102:
 11014 087c 2563252E 		.ascii	"%c%.1f\000"
 11014      316600
 11015 0883 00       		.space	1
 11016              	.LC103:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 199


 11017 0884 4D617869 		.ascii	"Maximum feedrates: \000"
 11017      6D756D20 
 11017      66656564 
 11017      72617465 
 11017      733A2000 
 11018              	.LC104:
 11019 0898 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 11019      61637469 
 11019      6F6E2F75 
 11019      6E2D7265 
 11019      74726163 
 11020 08cb 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 11020      73706565 
 11020      64202564 
 11020      2F25646D 
 11020      6D2F6D69 
 11021 08ef 00       		.space	1
 11022              	.LC105:
 11023 08f0 41786973 		.ascii	"Axis limit\000"
 11023      206C696D 
 11023      697400
 11024 08fb 00       		.space	1
 11025              	.LC106:
 11026 08fc 25632025 		.ascii	"%c %c%.1f:%.1f\000"
 11026      63252E31 
 11026      663A252E 
 11026      316600
 11027 090b 00       		.space	1
 11028              	.LC107:
 11029 090c 496E7661 		.ascii	"Invalid speed factor\000"
 11029      6C696420 
 11029      73706565 
 11029      64206661 
 11029      63746F72 
 11030 0921 000000   		.space	3
 11031              	.LC108:
 11032 0924 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 11032      64206661 
 11032      63746F72 
 11032      206F7665 
 11032      72726964 
 11033 0942 0000     		.space	2
 11034              	.LC109:
 11035 0944 45787472 		.ascii	"Extrusion factor override for extruder %li: %.1f%%\000"
 11035      7573696F 
 11035      6E206661 
 11035      63746F72 
 11035      206F7665 
 11036 0977 00       		.space	1
 11037              	.LC110:
 11038 0978 496E7661 		.ascii	"Invalid servo index %d in M280 command\012\000"
 11038      6C696420 
 11038      73657276 
 11038      6F20696E 
 11038      64657820 
 11039              	.LC111:
 11040 09a0 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 200


 11040      20737465 
 11040      7070696E 
 11040      67206F66 
 11040      66736574 
 11041 09bf 00       		.space	1
 11042              	.LC112:
 11043 09c0 496E7661 		.ascii	"Invalid message box mode\000"
 11043      6C696420 
 11043      6D657373 
 11043      61676520 
 11043      626F7820 
 11044 09d9 000000   		.space	3
 11045              	.LC113:
 11046 09dc 436F6C64 		.ascii	"Cold extrusion is allowed (use M302 P0 to forbid it"
 11046      20657874 
 11046      72757369 
 11046      6F6E2069 
 11046      7320616C 
 11047 0a0f 2900     		.ascii	")\000"
 11048 0a11 000000   		.space	3
 11049              	.LC114:
 11050 0a14 436F6C64 		.ascii	"Cold extrusion is forbidden (use M302 P1 to allow i"
 11050      20657874 
 11050      72757369 
 11050      6F6E2069 
 11050      7320666F 
 11051 0a47 74292C20 		.ascii	"t), min. extrusion temperature %.1fC, min. retracti"
 11051      6D696E2E 
 11051      20657874 
 11051      72757369 
 11051      6F6E2074 
 11052 0a7a 6F6E2074 		.ascii	"on temperature %.1fC\000"
 11052      656D7065 
 11052      72617475 
 11052      72652025 
 11052      2E316643 
 11053 0a8f 00       		.space	1
 11054              	.LC115:
 11055 0a90 42616420 		.ascii	"Bad heater number in M303 command\000"
 11055      68656174 
 11055      6572206E 
 11055      756D6265 
 11055      7220696E 
 11056 0ab2 0000     		.space	2
 11057              	.LC116:
 11058 0ab4 48656174 		.ascii	"Heater is not ready to perform PID auto-tuning\000"
 11058      65722069 
 11058      73206E6F 
 11058      74207265 
 11058      61647920 
 11059 0ae3 00       		.space	1
 11060              	.LC117:
 11061 0ae4 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 11061      6C696420 
 11061      50574D20 
 11061      696E204D 
 11061      33303320 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 201


 11062              	.LC118:
 11063 0b00 20776974 		.ascii	" with interpolation\000"
 11063      6820696E 
 11063      74657270 
 11063      6F6C6174 
 11063      696F6E00 
 11064              	.LC119:
 11065 0b14 44726976 		.ascii	"Drive %c does not support %ux microstepping%s\000"
 11065      65202563 
 11065      20646F65 
 11065      73206E6F 
 11065      74207375 
 11066 0b42 0000     		.space	2
 11067              	.LC120:
 11068 0b44 44726976 		.ascii	"Drive E%u does not support %ux microstepping%s\000"
 11068      65204525 
 11068      7520646F 
 11068      6573206E 
 11068      6F742073 
 11069 0b73 00       		.space	1
 11070              	.LC121:
 11071 0b74 4D696372 		.ascii	"Microstepping - \000"
 11071      6F737465 
 11071      7070696E 
 11071      67202D20 
 11071      00
 11072 0b85 000000   		.space	3
 11073              	.LC122:
 11074 0b88 4500     		.ascii	"E\000"
 11075 0b8a 0000     		.space	2
 11076              	.LC123:
 11077 0b8c 25633A25 		.ascii	"%c:%u%s, \000"
 11077      7525732C 
 11077      2000
 11078 0b96 0000     		.space	2
 11079              	.LC124:
 11080 0b98 3A257525 		.ascii	":%u%s\000"
 11080      7300
 11081 0b9e 0000     		.space	2
 11082              	.LC125:
 11083 0ba0 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 11083      636F6D70 
 11083      656E7361 
 11083      74696F6E 
 11083      20746170 
 11084              	.LC126:
 11085 0bc8 42656420 		.ascii	"Bed compensation is not tapered\000"
 11085      636F6D70 
 11085      656E7361 
 11085      74696F6E 
 11085      20697320 
 11086              	.LC127:
 11087 0be8 6465706C 		.ascii	"deployprobe.g\000"
 11087      6F797072 
 11087      6F62652E 
 11087      6700
 11088 0bf6 0000     		.space	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 202


 11089              	.LC128:
 11090 0bf8 72657472 		.ascii	"retractprobe.g\000"
 11090      61637470 
 11090      726F6265 
 11090      2E6700
 11091 0c07 00       		.space	1
 11092              	.LC129:
 11093 0c08 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 11093      6D656E74 
 11093      20776964 
 11093      74683A20 
 11093      252E3266 
 11094              	.LC130:
 11095 0c38 5072696E 		.ascii	"PrinterMode:%s\000"
 11095      7465724D 
 11095      6F64653A 
 11095      257300
 11096 0c47 00       		.space	1
 11097              	.LC131:
 11098 0c48 4C617365 		.ascii	"Laser mode selected\000"
 11098      72206D6F 
 11098      64652073 
 11098      656C6563 
 11098      74656400 
 11099              	.LC132:
 11100 0c5c 42616420 		.ascii	"Bad P parameter\000"
 11100      50207061 
 11100      72616D65 
 11100      74657200 
 11101              	.LC133:
 11102 0c6c 434E4320 		.ascii	"CNC mode selected\000"
 11102      6D6F6465 
 11102      2073656C 
 11102      65637465 
 11102      6400
 11103 0c7e 0000     		.space	2
 11104              	.LC134:
 11105 0c80 636F6E66 		.ascii	"config-override.g\000"
 11105      69672D6F 
 11105      76657272 
 11105      6964652E 
 11105      6700
 11106 0c92 0000     		.space	2
 11107              	.LC135:
 11108 0c94 436F6E66 		.ascii	"Configuration file not found\000"
 11108      69677572 
 11108      6174696F 
 11108      6E206669 
 11108      6C65206E 
 11109 0cb1 000000   		.space	3
 11110              	.LC136:
 11111 0cb4 42616420 		.ascii	"Bad MAC address\000"
 11111      4D414320 
 11111      61646472 
 11111      65737300 
 11112              	.LC137:
 11113 0cc4 4D41433A 		.ascii	"MAC: %02x:%02x:%02x:%02x:%02x:%02x\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 203


 11113      20253032 
 11113      783A2530 
 11113      32783A25 
 11113      3032783A 
 11114 0ce7 00       		.space	1
 11115              	.LC138:
 11116 0ce8 52657052 		.ascii	"RepRap name: %s\000"
 11116      6170206E 
 11116      616D653A 
 11116      20257300 
 11117              	.LC139:
 11118 0cf8 42616420 		.ascii	"Bad or missing SSID\000"
 11118      6F72206D 
 11118      69737369 
 11118      6E672053 
 11118      53494400 
 11119              	.LC140:
 11120 0d0c 42616420 		.ascii	"Bad IP address\000"
 11120      49502061 
 11120      64647265 
 11120      737300
 11121 0d1b 00       		.space	1
 11122              	.LC141:
 11123 0d1c 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 11123      6D61736B 
 11123      3A202564 
 11123      2E25642E 
 11123      25642E25 
 11124 0d33 00       		.space	1
 11125              	.LC142:
 11126 0d34 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 11126      7761793A 
 11126      2025642E 
 11126      25642E25 
 11126      642E2564 
 11127 0d4a 0000     		.space	2
 11128              	.LC143:
 11129 0d4c 456D756C 		.ascii	"Emulating \000"
 11129      6174696E 
 11129      672000
 11130 0d57 00       		.space	1
 11131              	.LC144:
 11132 0d58 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 11132      61702046 
 11132      69726D77 
 11132      61726520 
 11132      28692E65 
 11133 0d7e 0000     		.space	2
 11134              	.LC145:
 11135 0d80 4D61726C 		.ascii	"Marlin\000"
 11135      696E00
 11136 0d87 00       		.space	1
 11137              	.LC146:
 11138 0d88 54656163 		.ascii	"Teacup\000"
 11138      757000
 11139 0d8f 00       		.space	1
 11140              	.LC147:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 204


 11141 0d90 53707269 		.ascii	"Sprinter\000"
 11141      6E746572 
 11141      00
 11142 0d99 000000   		.space	3
 11143              	.LC148:
 11144 0d9c 52657065 		.ascii	"Repetier\000"
 11144      74696572 
 11144      00
 11145 0da5 000000   		.space	3
 11146              	.LC149:
 11147 0da8 556E6B6E 		.ascii	"Unknown: (%u)\000"
 11147      6F776E3A 
 11147      20282575 
 11147      2900
 11148 0db6 0000     		.space	2
 11149              	.LC150:
 11150 0db8 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 11150      20636F6D 
 11150      70656E73 
 11150      6174696F 
 11150      6E73202D 
 11151 0dea 0000     		.space	2
 11152              	.LC151:
 11153 0dec 4D6F7665 		.ascii	"Movement outside the bed is %spermitted, movement b"
 11153      6D656E74 
 11153      206F7574 
 11153      73696465 
 11153      20746865 
 11154 0e1f 65666F72 		.ascii	"efore homing is %spermitted\000"
 11154      6520686F 
 11154      6D696E67 
 11154      20697320 
 11154      25737065 
 11155 0e3b 00       		.space	1
 11156              	.LC152:
 11157 0e3c 4D617869 		.ascii	"Maximum jerk rates: \000"
 11157      6D756D20 
 11157      6A65726B 
 11157      20726174 
 11157      65733A20 
 11158 0e51 000000   		.space	3
 11159              	.LC153:
 11160 0e54 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 11160      696E6720 
 11160      6D697820 
 11160      72617469 
 11160      6F73202D 
 11161 0e86 0000     		.space	2
 11162              	.LC154:
 11163 0e88 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 11163      20256420 
 11163      6D697820 
 11163      72617469 
 11163      6F733A00 
 11164              	.LC155:
 11165 0e9c 54686520 		.ascii	"The M568 command is no longer needed\000"
 11165      4D353638 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 205


 11165      20636F6D 
 11165      6D616E64 
 11165      20697320 
 11166 0ec1 000000   		.space	3
 11167              	.LC156:
 11168 0ec4 48656174 		.ascii	"Heater %u allowed excursion %.1f\302\260C, fault tr"
 11168      65722025 
 11168      7520616C 
 11168      6C6F7765 
 11168      64206578 
 11169 0ef1 69676765 		.ascii	"igger time %.1f seconds\000"
 11169      72207469 
 11169      6D652025 
 11169      2E316620 
 11169      7365636F 
 11170 0f09 000000   		.space	3
 11171              	.LC157:
 11172 0f0c 5072696E 		.ascii	"Print will be terminated if a heater fault is not r"
 11172      74207769 
 11172      6C6C2062 
 11172      65207465 
 11172      726D696E 
 11173 0f3f 65736574 		.ascii	"eset within %lu minutes\000"
 11173      20776974 
 11173      68696E20 
 11173      256C7520 
 11173      6D696E75 
 11174 0f57 00       		.space	1
 11175              	.LC158:
 11176 0f58 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
 11176      63616C20 
 11176      70696E20 
 11176      25642069 
 11176      7320616C 
 11177 0f8b 6F722075 		.ascii	"or use by M571\000"
 11177      73652062 
 11177      79204D35 
 11177      373100
 11178 0f9a 0000     		.space	2
 11179              	.LC159:
 11180 0f9c 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u, %"
 11180      7573696F 
 11180      6E20616E 
 11180      63696C6C 
 11180      61727920 
 11181 0fcf 7300     		.ascii	"s\000"
 11182 0fd1 000000   		.space	3
 11183              	.LC160:
 11184 0fd4 496E7661 		.ascii	"Invalid extruder number '%lu'\000"
 11184      6C696420 
 11184      65787472 
 11184      75646572 
 11184      206E756D 
 11185 0ff2 0000     		.space	2
 11186              	.LC161:
 11187 0ff4 45787472 		.ascii	"Extruder pressure advance\000"
 11187      75646572 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 206


 11187      20707265 
 11187      73737572 
 11187      65206164 
 11188 100e 0000     		.space	2
 11189              	.LC162:
 11190 1010 25632025 		.ascii	"%c %.3f\000"
 11190      2E336600 
 11191              	.LC163:
 11192 1018 41766572 		.ascii	"Average heater %u PWM: %.3f\000"
 11192      61676520 
 11192      68656174 
 11192      65722025 
 11192      75205057 
 11193              	.LC164:
 11194 1034 456E6473 		.ascii	"Endstop configuration:\000"
 11194      746F7020 
 11194      636F6E66 
 11194      69677572 
 11194      6174696F 
 11195 104b 00       		.space	1
 11196              	.LC165:
 11197 104c 2025633A 		.ascii	" %c: %s\000"
 11197      20257300 
 11198              	.LC166:
 11199 1054 2025732C 		.ascii	" %s,\000"
 11199      00
 11200 1059 000000   		.space	3
 11201              	.LC167:
 11202 105c 4368616E 		.ascii	"Channel %d: baud rate %lu, %s checksum\000"
 11202      6E656C20 
 11202      25643A20 
 11202      62617564 
 11202      20726174 
 11203 1083 00       		.space	1
 11204              	.LC168:
 11205 1084 496E7661 		.ascii	"Invalid extruder drive '%u'\000"
 11205      6C696420 
 11205      65787472 
 11205      75646572 
 11205      20647269 
 11206              	.LC169:
 11207 10a0 41786973 		.ascii	"Axis scale factors\000"
 11207      20736361 
 11207      6C652066 
 11207      6163746F 
 11207      727300
 11208 10b3 00       		.space	1
 11209              	.LC170:
 11210 10b4 25632025 		.ascii	"%c %c: %.3f\000"
 11210      633A2025 
 11210      2E336600 
 11211              	.LC171:
 11212 10c0 44726976 		.ascii	"Drive %u nonlinear extrusion coefficients: A=%.3f, "
 11212      65202575 
 11212      206E6F6E 
 11212      6C696E65 
 11212      61722065 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 207


 11213 10f3 423D252E 		.ascii	"B=%.4f, limit=%.2f\000"
 11213      34662C20 
 11213      6C696D69 
 11213      743D252E 
 11213      326600
 11214 1106 0000     		.space	2
 11215              	.LC172:
 11216 1108 4D6F6465 		.ascii	"Mode %d is not valid\000"
 11216      20256420 
 11216      6973206E 
 11216      6F742076 
 11216      616C6964 
 11217 111d 000000   		.space	3
 11218              	.LC173:
 11219 1120 556E6B6E 		.ascii	"Unknown kinematics type %d\000"
 11219      6F776E20 
 11219      6B696E65 
 11219      6D617469 
 11219      63732074 
 11220 113b 00       		.space	1
 11221              	.LC174:
 11222 113c 303A2F66 		.ascii	"0:/filaments/\000"
 11222      696C616D 
 11222      656E7473 
 11222      2F00
 11223 114a 0000     		.space	2
 11224              	.LC175:
 11225 114c 25732573 		.ascii	"%s%s/%s\000"
 11225      2F257300 
 11226              	.LC176:
 11227 1154 4E6F2074 		.ascii	"No tool selected\000"
 11227      6F6F6C20 
 11227      73656C65 
 11227      63746564 
 11227      00
 11228 1165 000000   		.space	3
 11229              	.LC177:
 11230 1168 5363616E 		.ascii	"Scanner extension is not enabled\000"
 11230      6E657220 
 11230      65787465 
 11230      6E73696F 
 11230      6E206973 
 11231 1189 000000   		.space	3
 11232              	.LC178:
 11233 118c 496E7661 		.ascii	"Invalid source\000"
 11233      6C696420 
 11233      736F7572 
 11233      636500
 11234 119b 00       		.space	1
 11235              	.LC179:
 11236 119c 5363616E 		.ascii	"Scanner is not registered\000"
 11236      6E657220 
 11236      6973206E 
 11236      6F742072 
 11236      65676973 
 11237 11b6 0000     		.space	2
 11238              	.LC180:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 208


 11239 11b8 4D697373 		.ascii	"Missing length/degree parameter\000"
 11239      696E6720 
 11239      6C656E67 
 11239      74682F64 
 11239      65677265 
 11240              	.LC181:
 11241 11d8 4D697373 		.ascii	"Missing filename\000"
 11241      696E6720 
 11241      66696C65 
 11241      6E616D65 
 11241      00
 11242 11e9 000000   		.space	3
 11243              	.LC182:
 11244 11ec 25633A25 		.ascii	"%c:%d, \000"
 11244      642C2000 
 11245              	.LC183:
 11246 11f4 3A256400 		.ascii	":%d\000"
 11247              	.LC184:
 11248 11f8 2C206964 		.ascii	", idle factor %d%%\000"
 11248      6C652066 
 11248      6163746F 
 11248      72202564 
 11248      252500
 11249 120b 00       		.space	1
 11250              	.LC185:
 11251 120c 4E6F2070 		.ascii	"No power fail script provided\000"
 11251      6F776572 
 11251      20666169 
 11251      6C207363 
 11251      72697074 
 11252 122a 0000     		.space	2
 11253              	.LC186:
 11254 122c 4175746F 		.ascii	"Auto save voltage %.1fV, resume %.1fV, script \"%s\""
 11254      20736176 
 11254      6520766F 
 11254      6C746167 
 11254      6520252E 
 11255 125e 00       		.ascii	"\000"
 11256 125f 00       		.space	1
 11257              	.LC187:
 11258 1260 4175746F 		.ascii	"Auto save is disabled\000"
 11258      20736176 
 11258      65206973 
 11258      20646973 
 11258      61626C65 
 11259 1276 0000     		.space	2
 11260              	.LC188:
 11261 1278 4D435520 		.ascii	"MCU temperature calibration adjustment is %.1f\302\260"
 11261      74656D70 
 11261      65726174 
 11261      75726520 
 11261      63616C69 
 11262 12a8 4300     		.ascii	"C\000"
 11263 12aa 0000     		.space	2
 11264              	.LC189:
 11265 12ac 72657375 		.ascii	"resurrect.g\000"
 11265      72726563 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 209


 11265      742E6700 
 11266              	.LC190:
 11267 12b8 4E6F2072 		.ascii	"No resume file found\000"
 11267      6573756D 
 11267      65206669 
 11267      6C652066 
 11267      6F756E64 
 11268 12cd 000000   		.space	3
 11269              	.LC191:
 11270 12d0 72657375 		.ascii	"resurrect-prologue.g\000"
 11270      72726563 
 11270      742D7072 
 11270      6F6C6F67 
 11270      75652E67 
 11271 12e5 000000   		.space	3
 11272              	.LC192:
 11273 12e8 52657375 		.ascii	"Resume prologue file '%s' not found\000"
 11273      6D652070 
 11273      726F6C6F 
 11273      67756520 
 11273      66696C65 
 11274              	.LC193:
 11275 130c 43686563 		.ascii	"Checksum error on line %d\000"
 11275      6B73756D 
 11275      20657272 
 11275      6F72206F 
 11275      6E206C69 
 11276 1326 0000     		.space	2
 11277              	.LC194:
 11278 1328 45524153 		.ascii	"ERASE\000"
 11278      4500
 11279              		.section	.rodata._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.40.str1.4,"aMS",%progbits
 11280              		.align	2
 11281              	.LC1:
 11282 0000 543A2062 		.ascii	"T: bad restore point number\000"
 11282      61642072 
 11282      6573746F 
 11282      72652070 
 11282      6F696E74 
 11283              	.LC2:
 11284 001c 4E6F2074 		.ascii	"No tool is selected\000"
 11284      6F6F6C20 
 11284      69732073 
 11284      656C6563 
 11284      74656400 
 11285              	.LC3:
 11286 0030 546F6F6C 		.ascii	"Tool %d is selected\000"
 11286      20256420 
 11286      69732073 
 11286      656C6563 
 11286      74656400 
 11287              		.section	.rodata._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRefP12OutputBuffer.p
 11288              		.align	2
 11289              	.LC4:
 11290 0000 20636F6D 		.ascii	" command is not supported\000"
 11290      6D616E64 
 11290      20697320 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSayiH3.s 			page 210


 11290      6E6F7420 
 11290      73757070 
 11291 001a 0000     		.space	2
 11292              	.LC5:
 11293 001c 20636F6D 		.ascii	" command is not supported in machine mode %s\000"
 11293      6D616E64 
 11293      20697320 
 11293      6E6F7420 
 11293      73757070 
 11294 0049 000000   		.space	3
 11295              	.LC6:
 11296 004c 3A206261 		.ascii	": bad or missing parameter\000"
 11296      64206F72 
 11296      206D6973 
 11296      73696E67 
 11296      20706172 
 11297 0067 00       		.space	1
 11298              	.LC7:
 11299 0068 3A2000   		.ascii	": \000"
 11300              		.section	.rodata._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 11301              		.align	2
 11302              	.LC195:
 11303 0000 42616420 		.ascii	"Bad command: %s\000"
 11303      636F6D6D 
 11303      616E643A 
 11303      20257300 
 11304              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
