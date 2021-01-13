ARM GAS  /tmp/ccIESeqr.s 			page 1


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
  11              		.file	"GCodes2.cpp"
  12              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  21              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0320     		movs	r0, #3
  26 0002 7047     		bx	lr
  27              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  28              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, %function
  37              	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40 0000 8B68     		ldr	r3, [r1, #8]
  41 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  42 0006 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
  43 0008 9B06     		lsls	r3, r3, #26
  44 000a 24D4     		bmi	.L16
  45 000c 91F84B30 		ldrb	r3, [r1, #75]	@ zero_extendqisi2
  46 0010 1746     		mov	r7, r2
  47 0012 0646     		mov	r6, r0
  48 0014 0C46     		mov	r4, r1
  49 0016 13B3     		cbz	r3, .L4
  50 0018 096C     		ldr	r1, [r1, #64]
  51 001a 236B     		ldr	r3, [r4, #48]
  52 001c 01EB0308 		add	r8, r1, r3
  53              	.L5:
  54 0020 2146     		mov	r1, r4
  55 0022 3046     		mov	r0, r6
  56 0024 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
  57 0028 0546     		mov	r5, r0
ARM GAS  /tmp/ccIESeqr.s 			page 2


  58 002a 88B1     		cbz	r0, .L25
  59 002c 2B48     		ldr	r0, .L36
  60 002e C36A     		ldr	r3, [r0, #44]	@ unaligned
  61 0030 13B1     		cbz	r3, .L8
  62 0032 5B6E     		ldr	r3, [r3, #100]
  63 0034 4345     		cmp	r3, r8
  64 0036 3CD0     		beq	.L32
  65              	.L8:
  66 0038 A768     		ldr	r7, [r4, #8]
  67 003a A7F81680 		strh	r8, [r7, #22]	@ movhi
  68 003e 96F83033 		ldrb	r3, [r6, #816]	@ zero_extendqisi2
  69 0042 002B     		cmp	r3, #0
  70 0044 3ED0     		beq	.L15
  71 0046 0020     		movs	r0, #0
  72              	.L10:
  73 0048 0622     		movs	r2, #6
  74 004a 7875     		strb	r0, [r7, #21]
  75 004c A368     		ldr	r3, [r4, #8]
  76 004e 1A75     		strb	r2, [r3, #20]
  77              	.L25:
  78 0050 2846     		mov	r0, r5
  79 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  80              	.L16:
  81 0056 0125     		movs	r5, #1
  82 0058 2846     		mov	r0, r5
  83 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  84              	.L4:
  85 005e 5221     		movs	r1, #82
  86 0060 2046     		mov	r0, r4
  87 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  88 0066 D0B9     		cbnz	r0, .L33
  89              	.L6:
  90 0068 1C4B     		ldr	r3, .L36
  91 006a DB6A     		ldr	r3, [r3, #44]
  92 006c 93B1     		cbz	r3, .L34
  93 006e 5A6E     		ldr	r2, [r3, #100]
  94 0070 1B49     		ldr	r1, .L36+4
  95 0072 3846     		mov	r0, r7
  96 0074 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
  97              	.L11:
  98 0078 0125     		movs	r5, #1
  99 007a 2146     		mov	r1, r4
 100 007c 3046     		mov	r0, r6
 101 007e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 102 0082 3046     		mov	r0, r6
 103 0084 3B68     		ldr	r3, [r7]
 104 0086 2146     		mov	r1, r4
 105 0088 0122     		movs	r2, #1
 106 008a FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 107 008e 2846     		mov	r0, r5
 108 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 109              	.L34:
 110 0094 1349     		ldr	r1, .L36+8
 111 0096 3846     		mov	r0, r7
 112 0098 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 113 009c ECE7     		b	.L11
 114              	.L33:
ARM GAS  /tmp/ccIESeqr.s 			page 3


 115 009e 2046     		mov	r0, r4
 116 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 117 00a4 0128     		cmp	r0, #1
 118 00a6 DFD1     		bne	.L6
 119 00a8 D6F8F031 		ldr	r3, [r6, #496]
 120 00ac D3F82880 		ldr	r8, [r3, #40]
 121 00b0 B6E7     		b	.L5
 122              	.L32:
 123 00b2 96F83023 		ldrb	r2, [r6, #816]	@ zero_extendqisi2
 124 00b6 4146     		mov	r1, r8
 125 00b8 0032     		adds	r2, r2, #0
 126 00ba 18BF     		it	ne
 127 00bc 0122     		movne	r2, #1
 128 00be FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 129 00c2 D9E7     		b	.L11
 130              	.L15:
 131 00c4 5021     		movs	r1, #80
 132 00c6 2046     		mov	r0, r4
 133 00c8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 134 00cc 08B9     		cbnz	r0, .L35
 135 00ce 0720     		movs	r0, #7
 136 00d0 BAE7     		b	.L10
 137              	.L35:
 138 00d2 2046     		mov	r0, r4
 139 00d4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 140 00d8 C0B2     		uxtb	r0, r0
 141 00da B5E7     		b	.L10
 142              	.L37:
 143              		.align	2
 144              	.L36:
 145 00dc 00000000 		.word	reprap
 146 00e0 14000000 		.word	.LC2
 147 00e4 00000000 		.word	.LC1
 148              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBuffer
 149              		.section	.text._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu softvfp
 157              		.type	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef, %function
 158              	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef:
 159              		@ args = 0, pretend = 0, frame = 232
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 162 0004 1446     		mov	r4, r2
 163 0006 BAB0     		sub	sp, sp, #232
 164 0008 0746     		mov	r7, r0
 165 000a 0D46     		mov	r5, r1
 166 000c 1E46     		mov	r6, r3
 167 000e 062A     		cmp	r2, #6
 168 0010 12D8     		bhi	.L39
 169 0012 DFE802F0 		tbb	[pc, r2]
 170              	.L41:
 171 0016 27       		.byte	(.L46-.L41)/2
ARM GAS  /tmp/ccIESeqr.s 			page 4


 172 0017 11       		.byte	(.L39-.L41)/2
 173 0018 2B       		.byte	(.L42-.L41)/2
 174 0019 11       		.byte	(.L39-.L41)/2
 175 001a 41       		.byte	(.L43-.L41)/2
 176 001b 04       		.byte	(.L44-.L41)/2
 177 001c 4B       		.byte	(.L45-.L41)/2
 178 001d 00       		.p2align 1
 179              	.L44:
 180 001e 3146     		mov	r1, r6
 181 0020 2846     		mov	r0, r5
 182 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 183 0026 3846     		mov	r0, r7
 184 0028 FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 185 002c 2449     		ldr	r1, .L50
 186 002e 0246     		mov	r2, r0
 187 0030 3046     		mov	r0, r6
 188 0032 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 189 0036 0324     		movs	r4, #3
 190              	.L39:
 191 0038 AB68     		ldr	r3, [r5, #8]
 192 003a 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 193 003c 1BB1     		cbz	r3, .L49
 194 003e 0120     		movs	r0, #1
 195 0040 3AB0     		add	sp, sp, #232
 196              		@ sp needed
 197 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 198              	.L49:
 199 0046 2B71     		strb	r3, [r5, #4]
 200 0048 2946     		mov	r1, r5
 201 004a 3846     		mov	r0, r7
 202 004c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 203 0050 3846     		mov	r0, r7
 204 0052 3368     		ldr	r3, [r6]
 205 0054 2246     		mov	r2, r4
 206 0056 2946     		mov	r1, r5
 207 0058 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 208 005c 0120     		movs	r0, #1
 209 005e 3AB0     		add	sp, sp, #232
 210              		@ sp needed
 211 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 212              	.L46:
 213 0064 0020     		movs	r0, #0
 214 0066 3AB0     		add	sp, sp, #232
 215              		@ sp needed
 216 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 217              	.L42:
 218 006c 0022     		movs	r2, #0
 219 006e DD23     		movs	r3, #221
 220 0070 0DF1E808 		add	r8, sp, #232
 221 0074 08F8E02D 		strb	r2, [r8, #-224]!
 222 0078 6946     		mov	r1, sp
 223 007a 2846     		mov	r0, r5
 224 007c 0193     		str	r3, [sp, #4]
 225 007e CDF80080 		str	r8, [sp]
 226 0082 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 227 0086 0F49     		ldr	r1, .L50+4
 228 0088 3046     		mov	r0, r6
ARM GAS  /tmp/ccIESeqr.s 			page 5


 229 008a FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 230 008e 4146     		mov	r1, r8
 231 0090 3046     		mov	r0, r6
 232 0092 FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 233 0096 CFE7     		b	.L39
 234              	.L43:
 235 0098 3146     		mov	r1, r6
 236 009a 2846     		mov	r0, r5
 237 009c FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 238 00a0 0949     		ldr	r1, .L50+8
 239 00a2 3046     		mov	r0, r6
 240 00a4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 241 00a8 0324     		movs	r4, #3
 242 00aa C5E7     		b	.L39
 243              	.L45:
 244 00ac 3146     		mov	r1, r6
 245 00ae 2846     		mov	r0, r5
 246 00b0 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 247 00b4 0549     		ldr	r1, .L50+12
 248 00b6 3046     		mov	r0, r6
 249 00b8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 250 00bc 0224     		movs	r4, #2
 251 00be BBE7     		b	.L39
 252              	.L51:
 253              		.align	2
 254              	.L50:
 255 00c0 1C000000 		.word	.LC4
 256 00c4 68000000 		.word	.LC6
 257 00c8 00000000 		.word	.LC3
 258 00cc 4C000000 		.word	.LC5
 259              		.size	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef, .-_ZN6GCodes12HandleResult
 260              		.section	.text._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu softvfp
 268              		.type	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, %function
 269              	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 273 0004 90F83033 		ldrb	r3, [r0, #816]	@ zero_extendqisi2
 274 0008 83B0     		sub	sp, sp, #12
 275 000a 0446     		mov	r4, r0
 276 000c 0D46     		mov	r5, r1
 277 000e 1746     		mov	r7, r2
 278 0010 0E6C     		ldr	r6, [r1, #64]
 279 0012 B3B1     		cbz	r3, .L53
 280 0014 042E     		cmp	r6, #4
 281 0016 14DD     		ble	.L53
 282 0018 0A2E     		cmp	r6, #10
 283 001a 74D0     		beq	.L54
 284 001c 0B2E     		cmp	r6, #11
 285 001e 00F03E81 		beq	.L55
ARM GAS  /tmp/ccIESeqr.s 			page 6


 286 0022 142E     		cmp	r6, #20
 287 0024 00F03681 		beq	.L56
 288 0028 152E     		cmp	r6, #21
 289 002a 00F02D81 		beq	.L57
 290 002e A6F13503 		sub	r3, r6, #53
 291 0032 062B     		cmp	r3, #6
 292 0034 05D9     		bls	.L53
 293 0036 A6F15A03 		sub	r3, r6, #90
 294 003a 022B     		cmp	r3, #2
 295 003c 01D9     		bls	.L53
 296 003e 0120     		movs	r0, #1
 297 0040 9AE0     		b	.L137
 298              	.L53:
 299 0042 5C2E     		cmp	r6, #92
 300 0044 00F23281 		bhi	.L89
 301 0048 DFE816F0 		tbh	[pc, r6, lsl #1]
 302              	.L61:
 303 004c 9000     		.2byte	(.L60-.L61)/2
 304 004e 9000     		.2byte	(.L60-.L61)/2
 305 0050 9900     		.2byte	(.L62-.L61)/2
 306 0052 9900     		.2byte	(.L62-.L61)/2
 307 0054 CC00     		.2byte	(.L63-.L61)/2
 308 0056 3001     		.2byte	(.L89-.L61)/2
 309 0058 3001     		.2byte	(.L89-.L61)/2
 310 005a 3001     		.2byte	(.L89-.L61)/2
 311 005c 3001     		.2byte	(.L89-.L61)/2
 312 005e 3001     		.2byte	(.L89-.L61)/2
 313 0060 5D00     		.2byte	(.L54-.L61)/2
 314 0062 2901     		.2byte	(.L55-.L61)/2
 315 0064 3001     		.2byte	(.L89-.L61)/2
 316 0066 3001     		.2byte	(.L89-.L61)/2
 317 0068 3001     		.2byte	(.L89-.L61)/2
 318 006a 3001     		.2byte	(.L89-.L61)/2
 319 006c 3001     		.2byte	(.L89-.L61)/2
 320 006e 3001     		.2byte	(.L89-.L61)/2
 321 0070 3001     		.2byte	(.L89-.L61)/2
 322 0072 3001     		.2byte	(.L89-.L61)/2
 323 0074 2401     		.2byte	(.L56-.L61)/2
 324 0076 1E01     		.2byte	(.L57-.L61)/2
 325 0078 3001     		.2byte	(.L89-.L61)/2
 326 007a 3001     		.2byte	(.L89-.L61)/2
 327 007c 3001     		.2byte	(.L89-.L61)/2
 328 007e 3001     		.2byte	(.L89-.L61)/2
 329 0080 3001     		.2byte	(.L89-.L61)/2
 330 0082 3001     		.2byte	(.L89-.L61)/2
 331 0084 B100     		.2byte	(.L64-.L61)/2
 332 0086 B800     		.2byte	(.L65-.L61)/2
 333 0088 D200     		.2byte	(.L66-.L61)/2
 334 008a EF00     		.2byte	(.L67-.L61)/2
 335 008c F600     		.2byte	(.L68-.L61)/2
 336 008e 3001     		.2byte	(.L89-.L61)/2
 337 0090 3001     		.2byte	(.L89-.L61)/2
 338 0092 3001     		.2byte	(.L89-.L61)/2
 339 0094 3001     		.2byte	(.L89-.L61)/2
 340 0096 3001     		.2byte	(.L89-.L61)/2
 341 0098 3001     		.2byte	(.L89-.L61)/2
 342 009a 3001     		.2byte	(.L89-.L61)/2
ARM GAS  /tmp/ccIESeqr.s 			page 7


 343 009c 3001     		.2byte	(.L89-.L61)/2
 344 009e 3001     		.2byte	(.L89-.L61)/2
 345 00a0 3001     		.2byte	(.L89-.L61)/2
 346 00a2 3001     		.2byte	(.L89-.L61)/2
 347 00a4 3001     		.2byte	(.L89-.L61)/2
 348 00a6 3001     		.2byte	(.L89-.L61)/2
 349 00a8 3001     		.2byte	(.L89-.L61)/2
 350 00aa 3001     		.2byte	(.L89-.L61)/2
 351 00ac 3001     		.2byte	(.L89-.L61)/2
 352 00ae 3001     		.2byte	(.L89-.L61)/2
 353 00b0 3001     		.2byte	(.L89-.L61)/2
 354 00b2 3001     		.2byte	(.L89-.L61)/2
 355 00b4 3001     		.2byte	(.L89-.L61)/2
 356 00b6 3001     		.2byte	(.L89-.L61)/2
 357 00b8 3001     		.2byte	(.L89-.L61)/2
 358 00ba 3001     		.2byte	(.L89-.L61)/2
 359 00bc 3001     		.2byte	(.L89-.L61)/2
 360 00be 3001     		.2byte	(.L89-.L61)/2
 361 00c0 3001     		.2byte	(.L89-.L61)/2
 362 00c2 3001     		.2byte	(.L89-.L61)/2
 363 00c4 0901     		.2byte	(.L69-.L61)/2
 364 00c6 3001     		.2byte	(.L89-.L61)/2
 365 00c8 3001     		.2byte	(.L89-.L61)/2
 366 00ca 3001     		.2byte	(.L89-.L61)/2
 367 00cc 3001     		.2byte	(.L89-.L61)/2
 368 00ce 3001     		.2byte	(.L89-.L61)/2
 369 00d0 3001     		.2byte	(.L89-.L61)/2
 370 00d2 3001     		.2byte	(.L89-.L61)/2
 371 00d4 3001     		.2byte	(.L89-.L61)/2
 372 00d6 3001     		.2byte	(.L89-.L61)/2
 373 00d8 3001     		.2byte	(.L89-.L61)/2
 374 00da 3001     		.2byte	(.L89-.L61)/2
 375 00dc 3001     		.2byte	(.L89-.L61)/2
 376 00de 3001     		.2byte	(.L89-.L61)/2
 377 00e0 3001     		.2byte	(.L89-.L61)/2
 378 00e2 3001     		.2byte	(.L89-.L61)/2
 379 00e4 3001     		.2byte	(.L89-.L61)/2
 380 00e6 3001     		.2byte	(.L89-.L61)/2
 381 00e8 3001     		.2byte	(.L89-.L61)/2
 382 00ea 3001     		.2byte	(.L89-.L61)/2
 383 00ec 3001     		.2byte	(.L89-.L61)/2
 384 00ee 3001     		.2byte	(.L89-.L61)/2
 385 00f0 3001     		.2byte	(.L89-.L61)/2
 386 00f2 3001     		.2byte	(.L89-.L61)/2
 387 00f4 3001     		.2byte	(.L89-.L61)/2
 388 00f6 3001     		.2byte	(.L89-.L61)/2
 389 00f8 3001     		.2byte	(.L89-.L61)/2
 390 00fa 3001     		.2byte	(.L89-.L61)/2
 391 00fc 3001     		.2byte	(.L89-.L61)/2
 392 00fe 3001     		.2byte	(.L89-.L61)/2
 393 0100 1001     		.2byte	(.L70-.L61)/2
 394 0102 1701     		.2byte	(.L71-.L61)/2
 395 0104 8300     		.2byte	(.L72-.L61)/2
 396              		.p2align 1
 397              	.L54:
 398 0106 5021     		movs	r1, #80
 399 0108 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 8


 400 010a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 401 010e 0028     		cmp	r0, #0
 402 0110 00F0E980 		beq	.L143
 403              	.L77:
 404 0114 D4F8FC31 		ldr	r3, [r4, #508]
 405 0118 A3B1     		cbz	r3, .L86
 406 011a 0126     		movs	r6, #1
 407              	.L87:
 408 011c 4FF00008 		mov	r8, #0
 409 0120 04F27229 		addw	r9, r4, #626
 410              	.L79:
 411 0124 19F8011B 		ldrb	r1, [r9], #1	@ zero_extendqisi2
 412 0128 2846     		mov	r0, r5
 413 012a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 414 012e D4F8FC31 		ldr	r3, [r4, #508]
 415 0132 08F10108 		add	r8, r8, #1
 416 0136 0643     		orrs	r6, r6, r0
 417 0138 4345     		cmp	r3, r8
 418 013a F6B2     		uxtb	r6, r6
 419 013c F2D8     		bhi	.L79
 420              	.L78:
 421 013e 002E     		cmp	r6, #0
 422 0140 00F0E380 		beq	.L80
 423              	.L86:
 424 0144 94F83033 		ldrb	r3, [r4, #816]	@ zero_extendqisi2
 425 0148 002B     		cmp	r3, #0
 426 014a 00F0E580 		beq	.L144
 427              	.L140:
 428 014e 0122     		movs	r2, #1
 429 0150 04E0     		b	.L59
 430              	.L72:
 431 0152 2946     		mov	r1, r5
 432 0154 2046     		mov	r0, r4
 433 0156 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsER11GCodeBuffer
 434 015a 0246     		mov	r2, r0
 435              	.L59:
 436 015c 3B46     		mov	r3, r7
 437 015e 2946     		mov	r1, r5
 438 0160 2046     		mov	r0, r4
 439 0162 03B0     		add	sp, sp, #12
 440              		@ sp needed
 441 0164 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 442 0168 FFF7FEBF 		b	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 443              	.L60:
 444 016c D4F8FC30 		ldr	r3, [r4, #252]
 445 0170 002B     		cmp	r3, #0
 446 0172 00F09D80 		beq	.L73
 447              	.L74:
 448 0176 0020     		movs	r0, #0
 449              	.L137:
 450 0178 03B0     		add	sp, sp, #12
 451              		@ sp needed
 452 017a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 453              	.L62:
 454 017e D4F8FC30 		ldr	r3, [r4, #252]
 455 0182 002B     		cmp	r3, #0
 456 0184 F7D1     		bne	.L74
ARM GAS  /tmp/ccIESeqr.s 			page 9


 457 0186 2946     		mov	r1, r5
 458 0188 2046     		mov	r0, r4
 459 018a FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 460 018e 0028     		cmp	r0, #0
 461 0190 F1D0     		beq	.L74
 462 0192 A6F10202 		sub	r2, r6, #2
 463 0196 B2FA82F2 		clz	r2, r2
 464 019a 2946     		mov	r1, r5
 465 019c 5209     		lsrs	r2, r2, #5
 466 019e 2046     		mov	r0, r4
 467 01a0 FFF7FEFF 		bl	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 468 01a4 0646     		mov	r6, r0
 469 01a6 0028     		cmp	r0, #0
 470 01a8 40F09380 		bne	.L141
 471 01ac CFE7     		b	.L140
 472              	.L64:
 473 01ae 3A46     		mov	r2, r7
 474 01b0 2946     		mov	r1, r5
 475 01b2 2046     		mov	r0, r4
 476 01b4 FFF7FEFF 		bl	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 477 01b8 0246     		mov	r2, r0
 478 01ba CFE7     		b	.L59
 479              	.L65:
 480 01bc 2946     		mov	r1, r5
 481 01be 2046     		mov	r0, r4
 482 01c0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 483 01c4 0028     		cmp	r0, #0
 484 01c6 D6D0     		beq	.L74
 485 01c8 5321     		movs	r1, #83
 486 01ca 2846     		mov	r0, r5
 487 01cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 488 01d0 0028     		cmp	r0, #0
 489 01d2 40F0AF80 		bne	.L145
 490              	.L81:
 491 01d6 3A46     		mov	r2, r7
 492 01d8 2946     		mov	r1, r5
 493 01da 2046     		mov	r0, r4
 494 01dc FFF7FEFF 		bl	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 495 01e0 0246     		mov	r2, r0
 496 01e2 BBE7     		b	.L59
 497              	.L63:
 498 01e4 2946     		mov	r1, r5
 499 01e6 2046     		mov	r0, r4
 500 01e8 FFF7FEFF 		bl	_ZN6GCodes7DoDwellER11GCodeBuffer
 501 01ec 0246     		mov	r2, r0
 502 01ee B5E7     		b	.L59
 503              	.L66:
 504 01f0 2946     		mov	r1, r5
 505 01f2 2046     		mov	r0, r4
 506 01f4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 507 01f8 0028     		cmp	r0, #0
 508 01fa BCD0     		beq	.L74
 509 01fc 584B     		ldr	r3, .L148
 510 01fe 594A     		ldr	r2, .L148+4
 511 0200 9B68     		ldr	r3, [r3, #8]
 512 0202 D3F8FC04 		ldr	r0, [r3, #1276]
 513 0206 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccIESeqr.s 			page 10


 514 0208 DB6A     		ldr	r3, [r3, #44]
 515 020a 9342     		cmp	r3, r2
 516 020c 40F0A680 		bne	.L146
 517 0210 0320     		movs	r0, #3
 518              	.L84:
 519 0212 D4F88032 		ldr	r3, [r4, #640]
 520 0216 30EA0303 		bics	r3, r0, r3
 521 021a 00F08480 		beq	.L85
 522 021e 5249     		ldr	r1, .L148+8
 523 0220 3846     		mov	r0, r7
 524 0222 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 525 0226 0222     		movs	r2, #2
 526 0228 98E7     		b	.L59
 527              	.L67:
 528 022a 3A46     		mov	r2, r7
 529 022c 2946     		mov	r1, r5
 530 022e 2046     		mov	r0, r4
 531 0230 FFF7FEFF 		bl	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
 532 0234 0246     		mov	r2, r0
 533 0236 91E7     		b	.L59
 534              	.L68:
 535 0238 2946     		mov	r1, r5
 536 023a 2046     		mov	r0, r4
 537 023c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 538 0240 0028     		cmp	r0, #0
 539 0242 98D0     		beq	.L74
 540 0244 2946     		mov	r1, r5
 541 0246 2046     		mov	r0, r4
 542 0248 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 543 024c 0022     		movs	r2, #0
 544 024e 0123     		movs	r3, #1
 545 0250 0092     		str	r2, [sp]
 546 0252 2946     		mov	r1, r5
 547 0254 454A     		ldr	r2, .L148+12
 548 0256 2046     		mov	r0, r4
 549 0258 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 550 025c 77E7     		b	.L140
 551              	.L69:
 552 025e 3A46     		mov	r2, r7
 553 0260 2946     		mov	r1, r5
 554 0262 2046     		mov	r0, r4
 555 0264 FFF7FEFF 		bl	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 556 0268 0246     		mov	r2, r0
 557 026a 77E7     		b	.L59
 558              	.L70:
 559 026c AB68     		ldr	r3, [r5, #8]
 560 026e 0122     		movs	r2, #1
 561 0270 197E     		ldrb	r1, [r3, #24]	@ zero_extendqisi2
 562 0272 6FF34101 		bfc	r1, #1, #1
 563 0276 1976     		strb	r1, [r3, #24]
 564 0278 70E7     		b	.L59
 565              	.L71:
 566 027a A968     		ldr	r1, [r5, #8]
 567 027c 0122     		movs	r2, #1
 568 027e 0B7E     		ldrb	r3, [r1, #24]	@ zero_extendqisi2
 569 0280 43F00203 		orr	r3, r3, #2
 570 0284 0B76     		strb	r3, [r1, #24]
ARM GAS  /tmp/ccIESeqr.s 			page 11


 571 0286 69E7     		b	.L59
 572              	.L57:
 573 0288 4FF07E53 		mov	r3, #1065353216
 574 028c 0122     		movs	r2, #1
 575 028e C4F83C32 		str	r3, [r4, #572]	@ float
 576 0292 63E7     		b	.L59
 577              	.L56:
 578 0294 364B     		ldr	r3, .L148+16
 579 0296 0122     		movs	r2, #1
 580 0298 C4F83C32 		str	r3, [r4, #572]	@ float
 581 029c 5EE7     		b	.L59
 582              	.L55:
 583 029e 0022     		movs	r2, #0
 584 02a0 2946     		mov	r1, r5
 585 02a2 2046     		mov	r0, r4
 586 02a4 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 587 02a8 0246     		mov	r2, r0
 588 02aa 57E7     		b	.L59
 589              	.L89:
 590 02ac 0422     		movs	r2, #4
 591 02ae 55E7     		b	.L59
 592              	.L73:
 593 02b0 2946     		mov	r1, r5
 594 02b2 2046     		mov	r0, r4
 595 02b4 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 596 02b8 0028     		cmp	r0, #0
 597 02ba 3FF45CAF 		beq	.L74
 598 02be 06F00102 		and	r2, r6, #1
 599 02c2 2946     		mov	r1, r5
 600 02c4 2046     		mov	r0, r4
 601 02c6 FFF7FEFF 		bl	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 602 02ca 0646     		mov	r6, r0
 603 02cc 0028     		cmp	r0, #0
 604 02ce 3FF43EAF 		beq	.L140
 605              	.L141:
 606 02d2 2946     		mov	r1, r5
 607 02d4 2046     		mov	r0, r4
 608 02d6 FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 609 02da 0121     		movs	r1, #1
 610 02dc AB68     		ldr	r3, [r5, #8]
 611 02de 0A46     		mov	r2, r1
 612 02e0 1975     		strb	r1, [r3, #20]
 613 02e2 1E61     		str	r6, [r3, #16]
 614 02e4 3AE7     		b	.L59
 615              	.L143:
 616 02e6 5221     		movs	r1, #82
 617 02e8 2846     		mov	r0, r5
 618 02ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 619 02ee 0028     		cmp	r0, #0
 620 02f0 7FF410AF 		bne	.L77
 621 02f4 5321     		movs	r1, #83
 622 02f6 2846     		mov	r0, r5
 623 02f8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 624 02fc D4F8FC31 		ldr	r3, [r4, #508]
 625 0300 0646     		mov	r6, r0
 626 0302 002B     		cmp	r3, #0
 627 0304 7FF40AAF 		bne	.L87
ARM GAS  /tmp/ccIESeqr.s 			page 12


 628 0308 19E7     		b	.L78
 629              	.L80:
 630 030a 0122     		movs	r2, #1
 631 030c 2946     		mov	r1, r5
 632 030e 2046     		mov	r0, r4
 633 0310 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 634 0314 0246     		mov	r2, r0
 635 0316 21E7     		b	.L59
 636              	.L144:
 637 0318 3A46     		mov	r2, r7
 638 031a 2946     		mov	r1, r5
 639 031c 2046     		mov	r0, r4
 640 031e FFF7FEFF 		bl	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 641 0322 0246     		mov	r2, r0
 642 0324 1AE7     		b	.L59
 643              	.L85:
 644 0326 3A46     		mov	r2, r7
 645 0328 2946     		mov	r1, r5
 646 032a 2046     		mov	r0, r4
 647 032c FFF7FEFF 		bl	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 648 0330 0246     		mov	r2, r0
 649 0332 13E7     		b	.L59
 650              	.L145:
 651 0334 2846     		mov	r0, r5
 652 0336 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 653 033a 0028     		cmp	r0, #0
 654 033c 3FF44BAF 		beq	.L81
 655 0340 0128     		cmp	r0, #1
 656 0342 06D1     		bne	.L147
 657 0344 3A46     		mov	r2, r7
 658 0346 2946     		mov	r1, r5
 659 0348 2046     		mov	r0, r4
 660 034a FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 661 034e 0246     		mov	r2, r0
 662 0350 04E7     		b	.L59
 663              	.L147:
 664 0352 2046     		mov	r0, r4
 665 0354 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 666 0358 0122     		movs	r2, #1
 667 035a FFE6     		b	.L59
 668              	.L146:
 669 035c 9847     		blx	r3
 670 035e 58E7     		b	.L84
 671              	.L149:
 672              		.align	2
 673              	.L148:
 674 0360 00000000 		.word	reprap
 675 0364 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 676 0368 00000000 		.word	.LC7
 677 036c 28000000 		.word	.LC8
 678 0370 3333CB41 		.word	1103835955
 679              		.size	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleGcodeER11GCodeBuffer
 680              		.global	__aeabi_fdiv
 681              		.global	__aeabi_fcmplt
 682              		.global	__aeabi_fcmpun
 683              		.global	__aeabi_f2d
 684              		.global	__aeabi_ui2d
ARM GAS  /tmp/ccIESeqr.s 			page 13


 685              		.global	__aeabi_ddiv
 686              		.global	__aeabi_ul2d
 687              		.global	__aeabi_fcmpgt
 688              		.global	__aeabi_fcmpeq
 689              		.global	__aeabi_fsub
 690              		.global	__aeabi_fmul
 691              		.global	__aeabi_f2uiz
 692              		.global	__aeabi_ui2f
 693              		.global	__aeabi_fcmple
 694              		.global	__aeabi_f2iz
 695              		.global	__aeabi_fadd
 696              		.global	__aeabi_fcmpge
 697              		.section	.text._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 698              		.align	1
 699              		.p2align 2,,3
 700              		.global	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 701              		.syntax unified
 702              		.thumb
 703              		.thumb_func
 704              		.fpu softvfp
 705              		.type	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, %function
 706              	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef:
 707              		@ args = 0, pretend = 0, frame = 592
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 710 0004 90F83033 		ldrb	r3, [r0, #816]	@ zero_extendqisi2
 711 0008 ADF5217D 		sub	sp, sp, #644
 712 000c 0446     		mov	r4, r0
 713 000e 0D46     		mov	r5, r1
 714 0010 1646     		mov	r6, r2
 715 0012 D1F840A0 		ldr	r10, [r1, #64]
 716 0016 7BB3     		cbz	r3, .L151
 717 0018 AAF11403 		sub	r3, r10, #20
 718 001c 112B     		cmp	r3, #17
 719 001e 2BD9     		bls	.L151
 720 0020 BAF1010F 		cmp	r10, #1
 721 0024 01F20080 		bhi	.L1793
 722              	.L152:
 723 0028 114B     		ldr	r3, .L1956
 724 002a DB69     		ldr	r3, [r3, #28]
 725 002c 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 726 002e 002B     		cmp	r3, #0
 727 0030 03F0FD85 		beq	.L307
 728 0034 236C     		ldr	r3, [r4, #64]
 729 0036 1B68     		ldr	r3, [r3]
 730 0038 9D42     		cmp	r5, r3
 731 003a 03F0F885 		beq	.L307
 732 003e 2046     		mov	r0, r4
 733 0040 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 734 0044 0028     		cmp	r0, #0
 735 0046 43F0F285 		bne	.L307
 736 004a 0A49     		ldr	r1, .L1956+4
 737 004c 3046     		mov	r0, r6
 738 004e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 739 0052 0223     		movs	r3, #2
 740 0054 0D93     		str	r3, [sp, #52]
 741              	.L166:
ARM GAS  /tmp/ccIESeqr.s 			page 14


 742 0056 3346     		mov	r3, r6
 743 0058 0D9A     		ldr	r2, [sp, #52]
 744 005a 2946     		mov	r1, r5
 745 005c 2046     		mov	r0, r4
 746 005e FFF7FEFF 		bl	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 747 0062 8246     		mov	r10, r0
 748              	.L1671:
 749 0064 5046     		mov	r0, r10
 750 0066 0DF5217D 		add	sp, sp, #644
 751              		@ sp needed
 752 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 753              	.L1957:
 754 006e 00BF     		.align	2
 755              	.L1956:
 756 0070 00000000 		.word	reprap
 757 0074 00120000 		.word	.LC191
 758              	.L151:
 759 0078 40F2E733 		movw	r3, #999
 760 007c 9A45     		cmp	r10, r3
 761 007e 03F21983 		bhi	.L991
 762 0082 01A2     		adr	r2, .L167
 763 0084 52F82AF0 		ldr	pc, [r2, r10, lsl #2]
 764              		.p2align 2
 765              	.L167:
 766 0088 29000000 		.word	.L152+1
 767 008c 29000000 		.word	.L152+1
 768 0090 B5360000 		.word	.L991+1
 769 0094 FD110000 		.word	.L168+1
 770 0098 47110000 		.word	.L169+1
 771 009c C72A0000 		.word	.L170+1
 772 00a0 B5360000 		.word	.L991+1
 773 00a4 B5360000 		.word	.L991+1
 774 00a8 B5360000 		.word	.L991+1
 775 00ac B5360000 		.word	.L991+1
 776 00b0 B5360000 		.word	.L991+1
 777 00b4 B5360000 		.word	.L991+1
 778 00b8 B5360000 		.word	.L991+1
 779 00bc B5360000 		.word	.L991+1
 780 00c0 B5360000 		.word	.L991+1
 781 00c4 B5360000 		.word	.L991+1
 782 00c8 B5360000 		.word	.L991+1
 783 00cc B5360000 		.word	.L991+1
 784 00d0 BD300000 		.word	.L171+1
 785 00d4 B5360000 		.word	.L991+1
 786 00d8 2B220000 		.word	.L172+1
 787 00dc F9210000 		.word	.L173+1
 788 00e0 C9210000 		.word	.L174+1
 789 00e4 9F210000 		.word	.L175+1
 790 00e8 F5200000 		.word	.L176+1
 791 00ec A9340000 		.word	.L177+1
 792 00f0 D5320000 		.word	.L178+1
 793 00f4 F7270000 		.word	.L179+1
 794 00f8 A9270000 		.word	.L180+1
 795 00fc CF340000 		.word	.L181+1
 796 0100 B12E0000 		.word	.L182+1
 797 0104 B5360000 		.word	.L991+1
 798 0108 9F210000 		.word	.L175+1
ARM GAS  /tmp/ccIESeqr.s 			page 15


 799 010c B5360000 		.word	.L991+1
 800 0110 B5360000 		.word	.L991+1
 801 0114 B5360000 		.word	.L991+1
 802 0118 43340000 		.word	.L183+1
 803 011c B91C0000 		.word	.L184+1
 804 0120 73320000 		.word	.L185+1
 805 0124 0D320000 		.word	.L186+1
 806 0128 B5360000 		.word	.L991+1
 807 012c B5360000 		.word	.L991+1
 808 0130 C5280000 		.word	.L187+1
 809 0134 B5360000 		.word	.L991+1
 810 0138 B5360000 		.word	.L991+1
 811 013c B5360000 		.word	.L991+1
 812 0140 B5360000 		.word	.L991+1
 813 0144 B5360000 		.word	.L991+1
 814 0148 B5360000 		.word	.L991+1
 815 014c B5360000 		.word	.L991+1
 816 0150 B5360000 		.word	.L991+1
 817 0154 B5360000 		.word	.L991+1
 818 0158 B5360000 		.word	.L991+1
 819 015c B5360000 		.word	.L991+1
 820 0160 B5360000 		.word	.L991+1
 821 0164 B5360000 		.word	.L991+1
 822 0168 B5360000 		.word	.L991+1
 823 016c B5360000 		.word	.L991+1
 824 0170 B5360000 		.word	.L991+1
 825 0174 B5360000 		.word	.L991+1
 826 0178 B5360000 		.word	.L991+1
 827 017c B5360000 		.word	.L991+1
 828 0180 B5360000 		.word	.L991+1
 829 0184 B5360000 		.word	.L991+1
 830 0188 B5360000 		.word	.L991+1
 831 018c B5360000 		.word	.L991+1
 832 0190 B5360000 		.word	.L991+1
 833 0194 B5360000 		.word	.L991+1
 834 0198 B5360000 		.word	.L991+1
 835 019c B5360000 		.word	.L991+1
 836 01a0 B5360000 		.word	.L991+1
 837 01a4 B5360000 		.word	.L991+1
 838 01a8 B5360000 		.word	.L991+1
 839 01ac B5360000 		.word	.L991+1
 840 01b0 B5360000 		.word	.L991+1
 841 01b4 B5360000 		.word	.L991+1
 842 01b8 B5360000 		.word	.L991+1
 843 01bc B5360000 		.word	.L991+1
 844 01c0 B5360000 		.word	.L991+1
 845 01c4 B5360000 		.word	.L991+1
 846 01c8 83280000 		.word	.L188+1
 847 01cc F1330000 		.word	.L189+1
 848 01d0 67380000 		.word	.L153+1
 849 01d4 8F100000 		.word	.L154+1
 850 01d8 BD300000 		.word	.L171+1
 851 01dc DF340000 		.word	.L190+1
 852 01e0 B5360000 		.word	.L991+1
 853 01e4 B5360000 		.word	.L991+1
 854 01e8 B5360000 		.word	.L991+1
 855 01ec B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 16


 856 01f0 B5360000 		.word	.L991+1
 857 01f4 B5360000 		.word	.L991+1
 858 01f8 672F0000 		.word	.L191+1
 859 01fc B5360000 		.word	.L991+1
 860 0200 B5360000 		.word	.L991+1
 861 0204 B5360000 		.word	.L991+1
 862 0208 B5360000 		.word	.L991+1
 863 020c B5360000 		.word	.L991+1
 864 0210 DB1D0000 		.word	.L192+1
 865 0214 CB1D0000 		.word	.L193+1
 866 0218 B5360000 		.word	.L991+1
 867 021c BD250000 		.word	.L194+1
 868 0220 DF340000 		.word	.L190+1
 869 0224 FB150000 		.word	.L195+1
 870 0228 BB100000 		.word	.L196+1
 871 022c 79380000 		.word	.L155+1
 872 0230 0B160000 		.word	.L197+1
 873 0234 C3160000 		.word	.L198+1
 874 0238 AD160000 		.word	.L199+1
 875 023c A1100000 		.word	.L156+1
 876 0240 DF340000 		.word	.L190+1
 877 0244 29370000 		.word	.L157+1
 878 0248 DB360000 		.word	.L158+1
 879 024c B5360000 		.word	.L991+1
 880 0250 09180000 		.word	.L200+1
 881 0254 E3170000 		.word	.L201+1
 882 0258 AD170000 		.word	.L202+1
 883 025c 65170000 		.word	.L203+1
 884 0260 39170000 		.word	.L204+1
 885 0264 D7160000 		.word	.L205+1
 886 0268 AD250000 		.word	.L206+1
 887 026c 032C0000 		.word	.L207+1
 888 0270 BD360000 		.word	.L159+1
 889 0274 B5360000 		.word	.L991+1
 890 0278 B5360000 		.word	.L991+1
 891 027c B5360000 		.word	.L991+1
 892 0280 B5360000 		.word	.L991+1
 893 0284 B5360000 		.word	.L991+1
 894 0288 B5360000 		.word	.L991+1
 895 028c B5360000 		.word	.L991+1
 896 0290 B5360000 		.word	.L991+1
 897 0294 B5360000 		.word	.L991+1
 898 0298 B5360000 		.word	.L991+1
 899 029c B5360000 		.word	.L991+1
 900 02a0 B5360000 		.word	.L991+1
 901 02a4 69250000 		.word	.L208+1
 902 02a8 B5360000 		.word	.L991+1
 903 02ac B5360000 		.word	.L991+1
 904 02b0 B5360000 		.word	.L991+1
 905 02b4 B5360000 		.word	.L991+1
 906 02b8 13130000 		.word	.L209+1
 907 02bc 13130000 		.word	.L209+1
 908 02c0 B5360000 		.word	.L991+1
 909 02c4 FD120000 		.word	.L210+1
 910 02c8 BB120000 		.word	.L211+1
 911 02cc B5360000 		.word	.L991+1
 912 02d0 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 17


 913 02d4 B5360000 		.word	.L991+1
 914 02d8 B5360000 		.word	.L991+1
 915 02dc B5360000 		.word	.L991+1
 916 02e0 B5360000 		.word	.L991+1
 917 02e4 B5360000 		.word	.L991+1
 918 02e8 B5360000 		.word	.L991+1
 919 02ec B5360000 		.word	.L991+1
 920 02f0 B5360000 		.word	.L991+1
 921 02f4 B5360000 		.word	.L991+1
 922 02f8 B5360000 		.word	.L991+1
 923 02fc B5360000 		.word	.L991+1
 924 0300 B5360000 		.word	.L991+1
 925 0304 B5360000 		.word	.L991+1
 926 0308 B5360000 		.word	.L991+1
 927 030c B5360000 		.word	.L991+1
 928 0310 B5360000 		.word	.L991+1
 929 0314 B5360000 		.word	.L991+1
 930 0318 B5360000 		.word	.L991+1
 931 031c B5360000 		.word	.L991+1
 932 0320 B5360000 		.word	.L991+1
 933 0324 B5360000 		.word	.L991+1
 934 0328 B5360000 		.word	.L991+1
 935 032c B5360000 		.word	.L991+1
 936 0330 B5360000 		.word	.L991+1
 937 0334 B5360000 		.word	.L991+1
 938 0338 B5360000 		.word	.L991+1
 939 033c B5360000 		.word	.L991+1
 940 0340 B5360000 		.word	.L991+1
 941 0344 B5360000 		.word	.L991+1
 942 0348 B5360000 		.word	.L991+1
 943 034c B5360000 		.word	.L991+1
 944 0350 B5360000 		.word	.L991+1
 945 0354 B5360000 		.word	.L991+1
 946 0358 B5360000 		.word	.L991+1
 947 035c B5360000 		.word	.L991+1
 948 0360 B5360000 		.word	.L991+1
 949 0364 B5360000 		.word	.L991+1
 950 0368 B5360000 		.word	.L991+1
 951 036c B5360000 		.word	.L991+1
 952 0370 B5360000 		.word	.L991+1
 953 0374 B5360000 		.word	.L991+1
 954 0378 B5360000 		.word	.L991+1
 955 037c B5360000 		.word	.L991+1
 956 0380 9F120000 		.word	.L212+1
 957 0384 9F120000 		.word	.L212+1
 958 0388 B5360000 		.word	.L991+1
 959 038c B5360000 		.word	.L991+1
 960 0390 B5360000 		.word	.L991+1
 961 0394 B5360000 		.word	.L991+1
 962 0398 B5360000 		.word	.L991+1
 963 039c B5360000 		.word	.L991+1
 964 03a0 B5360000 		.word	.L991+1
 965 03a4 B5360000 		.word	.L991+1
 966 03a8 8B360000 		.word	.L160+1
 967 03ac 392A0000 		.word	.L213+1
 968 03b0 B5360000 		.word	.L991+1
 969 03b4 A5180000 		.word	.L214+1
ARM GAS  /tmp/ccIESeqr.s 			page 18


 970 03b8 29360000 		.word	.L161+1
 971 03bc B5360000 		.word	.L991+1
 972 03c0 95180000 		.word	.L215+1
 973 03c4 77350000 		.word	.L162+1
 974 03c8 29180000 		.word	.L216+1
 975 03cc B5360000 		.word	.L991+1
 976 03d0 DF340000 		.word	.L190+1
 977 03d4 B5360000 		.word	.L991+1
 978 03d8 B5360000 		.word	.L991+1
 979 03dc B5360000 		.word	.L991+1
 980 03e0 B5360000 		.word	.L991+1
 981 03e4 B5360000 		.word	.L991+1
 982 03e8 B5360000 		.word	.L991+1
 983 03ec B5360000 		.word	.L991+1
 984 03f0 B5360000 		.word	.L991+1
 985 03f4 B5360000 		.word	.L991+1
 986 03f8 77110000 		.word	.L217+1
 987 03fc 092A0000 		.word	.L218+1
 988 0400 B5360000 		.word	.L991+1
 989 0404 B5360000 		.word	.L991+1
 990 0408 B5360000 		.word	.L991+1
 991 040c B5360000 		.word	.L991+1
 992 0410 A32A0000 		.word	.L219+1
 993 0414 B5360000 		.word	.L991+1
 994 0418 B5360000 		.word	.L991+1
 995 041c B5360000 		.word	.L991+1
 996 0420 B5360000 		.word	.L991+1
 997 0424 B5360000 		.word	.L991+1
 998 0428 B5360000 		.word	.L991+1
 999 042c B5360000 		.word	.L991+1
 1000 0430 B5360000 		.word	.L991+1
 1001 0434 B5360000 		.word	.L991+1
 1002 0438 B5360000 		.word	.L991+1
 1003 043c B5360000 		.word	.L991+1
 1004 0440 B5360000 		.word	.L991+1
 1005 0444 B5360000 		.word	.L991+1
 1006 0448 B5360000 		.word	.L991+1
 1007 044c B5360000 		.word	.L991+1
 1008 0450 B5360000 		.word	.L991+1
 1009 0454 B5360000 		.word	.L991+1
 1010 0458 B5360000 		.word	.L991+1
 1011 045c B5360000 		.word	.L991+1
 1012 0460 B5360000 		.word	.L991+1
 1013 0464 B5360000 		.word	.L991+1
 1014 0468 B5360000 		.word	.L991+1
 1015 046c B5360000 		.word	.L991+1
 1016 0470 B5360000 		.word	.L991+1
 1017 0474 B5360000 		.word	.L991+1
 1018 0478 B5360000 		.word	.L991+1
 1019 047c B5360000 		.word	.L991+1
 1020 0480 B5360000 		.word	.L991+1
 1021 0484 B5360000 		.word	.L991+1
 1022 0488 B5360000 		.word	.L991+1
 1023 048c B5360000 		.word	.L991+1
 1024 0490 B5360000 		.word	.L991+1
 1025 0494 B5360000 		.word	.L991+1
 1026 0498 F9290000 		.word	.L220+1
ARM GAS  /tmp/ccIESeqr.s 			page 19


 1027 049c 7D2C0000 		.word	.L221+1
 1028 04a0 B5360000 		.word	.L991+1
 1029 04a4 B5360000 		.word	.L991+1
 1030 04a8 B5360000 		.word	.L991+1
 1031 04ac B5360000 		.word	.L991+1
 1032 04b0 B5360000 		.word	.L991+1
 1033 04b4 B5360000 		.word	.L991+1
 1034 04b8 B5360000 		.word	.L991+1
 1035 04bc B5360000 		.word	.L991+1
 1036 04c0 B5360000 		.word	.L991+1
 1037 04c4 B5360000 		.word	.L991+1
 1038 04c8 B5360000 		.word	.L991+1
 1039 04cc B5360000 		.word	.L991+1
 1040 04d0 B5360000 		.word	.L991+1
 1041 04d4 B5360000 		.word	.L991+1
 1042 04d8 B5360000 		.word	.L991+1
 1043 04dc B5360000 		.word	.L991+1
 1044 04e0 B5360000 		.word	.L991+1
 1045 04e4 B5360000 		.word	.L991+1
 1046 04e8 252C0000 		.word	.L222+1
 1047 04ec B5360000 		.word	.L991+1
 1048 04f0 B5360000 		.word	.L991+1
 1049 04f4 B5360000 		.word	.L991+1
 1050 04f8 B5360000 		.word	.L991+1
 1051 04fc B5360000 		.word	.L991+1
 1052 0500 B5360000 		.word	.L991+1
 1053 0504 B5360000 		.word	.L991+1
 1054 0508 B5360000 		.word	.L991+1
 1055 050c B5360000 		.word	.L991+1
 1056 0510 8D2C0000 		.word	.L223+1
 1057 0514 9B290000 		.word	.L224+1
 1058 0518 C3200000 		.word	.L225+1
 1059 051c B5360000 		.word	.L991+1
 1060 0520 B5360000 		.word	.L991+1
 1061 0524 B5360000 		.word	.L991+1
 1062 0528 B5360000 		.word	.L991+1
 1063 052c B5360000 		.word	.L991+1
 1064 0530 B5360000 		.word	.L991+1
 1065 0534 B5360000 		.word	.L991+1
 1066 0538 8F200000 		.word	.L226+1
 1067 053c 7B200000 		.word	.L227+1
 1068 0540 4B200000 		.word	.L228+1
 1069 0544 ED1F0000 		.word	.L229+1
 1070 0548 D91F0000 		.word	.L230+1
 1071 054c C91F0000 		.word	.L231+1
 1072 0550 B5360000 		.word	.L991+1
 1073 0554 351E0000 		.word	.L232+1
 1074 0558 B5360000 		.word	.L991+1
 1075 055c B5360000 		.word	.L991+1
 1076 0560 B5360000 		.word	.L991+1
 1077 0564 B5360000 		.word	.L991+1
 1078 0568 B5360000 		.word	.L991+1
 1079 056c B5360000 		.word	.L991+1
 1080 0570 B5360000 		.word	.L991+1
 1081 0574 B5360000 		.word	.L991+1
 1082 0578 B5360000 		.word	.L991+1
 1083 057c B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 20


 1084 0580 B5360000 		.word	.L991+1
 1085 0584 B5360000 		.word	.L991+1
 1086 0588 B5360000 		.word	.L991+1
 1087 058c B5360000 		.word	.L991+1
 1088 0590 B5360000 		.word	.L991+1
 1089 0594 B5360000 		.word	.L991+1
 1090 0598 B5360000 		.word	.L991+1
 1091 059c B5360000 		.word	.L991+1
 1092 05a0 B5360000 		.word	.L991+1
 1093 05a4 B5360000 		.word	.L991+1
 1094 05a8 B5360000 		.word	.L991+1
 1095 05ac B5360000 		.word	.L991+1
 1096 05b0 B5360000 		.word	.L991+1
 1097 05b4 B5360000 		.word	.L991+1
 1098 05b8 B5360000 		.word	.L991+1
 1099 05bc B5360000 		.word	.L991+1
 1100 05c0 B5360000 		.word	.L991+1
 1101 05c4 B5360000 		.word	.L991+1
 1102 05c8 B5360000 		.word	.L991+1
 1103 05cc B5360000 		.word	.L991+1
 1104 05d0 B5360000 		.word	.L991+1
 1105 05d4 B5360000 		.word	.L991+1
 1106 05d8 B5360000 		.word	.L991+1
 1107 05dc B5360000 		.word	.L991+1
 1108 05e0 B5360000 		.word	.L991+1
 1109 05e4 B5360000 		.word	.L991+1
 1110 05e8 B5360000 		.word	.L991+1
 1111 05ec B5360000 		.word	.L991+1
 1112 05f0 B5360000 		.word	.L991+1
 1113 05f4 B5360000 		.word	.L991+1
 1114 05f8 B5360000 		.word	.L991+1
 1115 05fc B5360000 		.word	.L991+1
 1116 0600 BF260000 		.word	.L233+1
 1117 0604 B5360000 		.word	.L991+1
 1118 0608 B5360000 		.word	.L991+1
 1119 060c B5360000 		.word	.L991+1
 1120 0610 B5360000 		.word	.L991+1
 1121 0614 B5360000 		.word	.L991+1
 1122 0618 B5360000 		.word	.L991+1
 1123 061c B5360000 		.word	.L991+1
 1124 0620 B5360000 		.word	.L991+1
 1125 0624 B5360000 		.word	.L991+1
 1126 0628 B5360000 		.word	.L991+1
 1127 062c B5360000 		.word	.L991+1
 1128 0630 B5360000 		.word	.L991+1
 1129 0634 B5360000 		.word	.L991+1
 1130 0638 B5360000 		.word	.L991+1
 1131 063c B5360000 		.word	.L991+1
 1132 0640 B5360000 		.word	.L991+1
 1133 0644 B5360000 		.word	.L991+1
 1134 0648 B5360000 		.word	.L991+1
 1135 064c B5360000 		.word	.L991+1
 1136 0650 B5360000 		.word	.L991+1
 1137 0654 B5360000 		.word	.L991+1
 1138 0658 B5360000 		.word	.L991+1
 1139 065c B5360000 		.word	.L991+1
 1140 0660 A7260000 		.word	.L234+1
ARM GAS  /tmp/ccIESeqr.s 			page 21


 1141 0664 89260000 		.word	.L235+1
 1142 0668 5D260000 		.word	.L236+1
 1143 066c B5360000 		.word	.L991+1
 1144 0670 B5360000 		.word	.L991+1
 1145 0674 B5360000 		.word	.L991+1
 1146 0678 B5360000 		.word	.L991+1
 1147 067c B5360000 		.word	.L991+1
 1148 0680 B5360000 		.word	.L991+1
 1149 0684 B5360000 		.word	.L991+1
 1150 0688 B5360000 		.word	.L991+1
 1151 068c B5360000 		.word	.L991+1
 1152 0690 B5360000 		.word	.L991+1
 1153 0694 B5360000 		.word	.L991+1
 1154 0698 B5360000 		.word	.L991+1
 1155 069c B5360000 		.word	.L991+1
 1156 06a0 B5360000 		.word	.L991+1
 1157 06a4 B5360000 		.word	.L991+1
 1158 06a8 B5360000 		.word	.L991+1
 1159 06ac B5360000 		.word	.L991+1
 1160 06b0 B5360000 		.word	.L991+1
 1161 06b4 B5360000 		.word	.L991+1
 1162 06b8 B5360000 		.word	.L991+1
 1163 06bc B5360000 		.word	.L991+1
 1164 06c0 B5360000 		.word	.L991+1
 1165 06c4 B5360000 		.word	.L991+1
 1166 06c8 4B260000 		.word	.L237+1
 1167 06cc 25260000 		.word	.L238+1
 1168 06d0 FF250000 		.word	.L239+1
 1169 06d4 B5360000 		.word	.L991+1
 1170 06d8 CD250000 		.word	.L240+1
 1171 06dc B5360000 		.word	.L991+1
 1172 06e0 B5360000 		.word	.L991+1
 1173 06e4 B5360000 		.word	.L991+1
 1174 06e8 E7340000 		.word	.L163+1
 1175 06ec B5360000 		.word	.L991+1
 1176 06f0 B5360000 		.word	.L991+1
 1177 06f4 B5360000 		.word	.L991+1
 1178 06f8 B5360000 		.word	.L991+1
 1179 06fc B5360000 		.word	.L991+1
 1180 0700 B5360000 		.word	.L991+1
 1181 0704 B5360000 		.word	.L991+1
 1182 0708 B5360000 		.word	.L991+1
 1183 070c B5360000 		.word	.L991+1
 1184 0710 B5360000 		.word	.L991+1
 1185 0714 B5360000 		.word	.L991+1
 1186 0718 B5360000 		.word	.L991+1
 1187 071c B5360000 		.word	.L991+1
 1188 0720 B5360000 		.word	.L991+1
 1189 0724 B5360000 		.word	.L991+1
 1190 0728 B5360000 		.word	.L991+1
 1191 072c B5360000 		.word	.L991+1
 1192 0730 B5360000 		.word	.L991+1
 1193 0734 B5360000 		.word	.L991+1
 1194 0738 B5360000 		.word	.L991+1
 1195 073c B5360000 		.word	.L991+1
 1196 0740 B5360000 		.word	.L991+1
 1197 0744 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 22


 1198 0748 B5360000 		.word	.L991+1
 1199 074c B5360000 		.word	.L991+1
 1200 0750 B5360000 		.word	.L991+1
 1201 0754 B5360000 		.word	.L991+1
 1202 0758 B5360000 		.word	.L991+1
 1203 075c B5360000 		.word	.L991+1
 1204 0760 B5360000 		.word	.L991+1
 1205 0764 B5360000 		.word	.L991+1
 1206 0768 B5360000 		.word	.L991+1
 1207 076c B5360000 		.word	.L991+1
 1208 0770 B5360000 		.word	.L991+1
 1209 0774 B5360000 		.word	.L991+1
 1210 0778 B5360000 		.word	.L991+1
 1211 077c B5360000 		.word	.L991+1
 1212 0780 B5360000 		.word	.L991+1
 1213 0784 B5360000 		.word	.L991+1
 1214 0788 B5360000 		.word	.L991+1
 1215 078c B5360000 		.word	.L991+1
 1216 0790 E3150000 		.word	.L241+1
 1217 0794 C7150000 		.word	.L242+1
 1218 0798 5B150000 		.word	.L243+1
 1219 079c 6F140000 		.word	.L244+1
 1220 07a0 B5360000 		.word	.L991+1
 1221 07a4 B5360000 		.word	.L991+1
 1222 07a8 B5360000 		.word	.L991+1
 1223 07ac B5360000 		.word	.L991+1
 1224 07b0 B5360000 		.word	.L991+1
 1225 07b4 B5360000 		.word	.L991+1
 1226 07b8 B5360000 		.word	.L991+1
 1227 07bc B5360000 		.word	.L991+1
 1228 07c0 B5360000 		.word	.L991+1
 1229 07c4 B5360000 		.word	.L991+1
 1230 07c8 B5360000 		.word	.L991+1
 1231 07cc B5360000 		.word	.L991+1
 1232 07d0 B5360000 		.word	.L991+1
 1233 07d4 B5360000 		.word	.L991+1
 1234 07d8 B5360000 		.word	.L991+1
 1235 07dc B5360000 		.word	.L991+1
 1236 07e0 B5360000 		.word	.L991+1
 1237 07e4 B5360000 		.word	.L991+1
 1238 07e8 B5360000 		.word	.L991+1
 1239 07ec B5360000 		.word	.L991+1
 1240 07f0 B5360000 		.word	.L991+1
 1241 07f4 B5360000 		.word	.L991+1
 1242 07f8 B5360000 		.word	.L991+1
 1243 07fc B5360000 		.word	.L991+1
 1244 0800 B5360000 		.word	.L991+1
 1245 0804 B5360000 		.word	.L991+1
 1246 0808 B5360000 		.word	.L991+1
 1247 080c B5360000 		.word	.L991+1
 1248 0810 B5360000 		.word	.L991+1
 1249 0814 B5360000 		.word	.L991+1
 1250 0818 B5360000 		.word	.L991+1
 1251 081c B5360000 		.word	.L991+1
 1252 0820 B5360000 		.word	.L991+1
 1253 0824 B5360000 		.word	.L991+1
 1254 0828 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 23


 1255 082c B5360000 		.word	.L991+1
 1256 0830 B5360000 		.word	.L991+1
 1257 0834 B5360000 		.word	.L991+1
 1258 0838 B5360000 		.word	.L991+1
 1259 083c B5360000 		.word	.L991+1
 1260 0840 B5360000 		.word	.L991+1
 1261 0844 B5360000 		.word	.L991+1
 1262 0848 B5360000 		.word	.L991+1
 1263 084c B5360000 		.word	.L991+1
 1264 0850 B5360000 		.word	.L991+1
 1265 0854 B5360000 		.word	.L991+1
 1266 0858 5F140000 		.word	.L245+1
 1267 085c 2D140000 		.word	.L246+1
 1268 0860 55270000 		.word	.L247+1
 1269 0864 9B130000 		.word	.L248+1
 1270 0868 B5360000 		.word	.L991+1
 1271 086c B5360000 		.word	.L991+1
 1272 0870 B5360000 		.word	.L991+1
 1273 0874 B5360000 		.word	.L991+1
 1274 0878 B5360000 		.word	.L991+1
 1275 087c B5360000 		.word	.L991+1
 1276 0880 B5360000 		.word	.L991+1
 1277 0884 B5360000 		.word	.L991+1
 1278 0888 B5360000 		.word	.L991+1
 1279 088c B5360000 		.word	.L991+1
 1280 0890 B5360000 		.word	.L991+1
 1281 0894 B5360000 		.word	.L991+1
 1282 0898 B5360000 		.word	.L991+1
 1283 089c B5360000 		.word	.L991+1
 1284 08a0 B5360000 		.word	.L991+1
 1285 08a4 B5360000 		.word	.L991+1
 1286 08a8 B5360000 		.word	.L991+1
 1287 08ac B5360000 		.word	.L991+1
 1288 08b0 B5360000 		.word	.L991+1
 1289 08b4 B5360000 		.word	.L991+1
 1290 08b8 B5360000 		.word	.L991+1
 1291 08bc B5360000 		.word	.L991+1
 1292 08c0 B5360000 		.word	.L991+1
 1293 08c4 B5360000 		.word	.L991+1
 1294 08c8 B5360000 		.word	.L991+1
 1295 08cc B5360000 		.word	.L991+1
 1296 08d0 B5360000 		.word	.L991+1
 1297 08d4 B5360000 		.word	.L991+1
 1298 08d8 B5360000 		.word	.L991+1
 1299 08dc B5360000 		.word	.L991+1
 1300 08e0 B5360000 		.word	.L991+1
 1301 08e4 B5360000 		.word	.L991+1
 1302 08e8 B5360000 		.word	.L991+1
 1303 08ec B5360000 		.word	.L991+1
 1304 08f0 B5360000 		.word	.L991+1
 1305 08f4 B5360000 		.word	.L991+1
 1306 08f8 99320000 		.word	.L249+1
 1307 08fc B5360000 		.word	.L991+1
 1308 0900 B5360000 		.word	.L991+1
 1309 0904 B5360000 		.word	.L991+1
 1310 0908 B5360000 		.word	.L991+1
 1311 090c B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 24


 1312 0910 B5360000 		.word	.L991+1
 1313 0914 B5360000 		.word	.L991+1
 1314 0918 B5360000 		.word	.L991+1
 1315 091c B5360000 		.word	.L991+1
 1316 0920 85300000 		.word	.L250+1
 1317 0924 812E0000 		.word	.L251+1
 1318 0928 1F2E0000 		.word	.L252+1
 1319 092c 29300000 		.word	.L253+1
 1320 0930 D72F0000 		.word	.L254+1
 1321 0934 5F300000 		.word	.L255+1
 1322 0938 3D280000 		.word	.L256+1
 1323 093c C72D0000 		.word	.L257+1
 1324 0940 B72D0000 		.word	.L258+1
 1325 0944 272D0000 		.word	.L259+1
 1326 0948 272D0000 		.word	.L259+1
 1327 094c 192D0000 		.word	.L260+1
 1328 0950 EF2D0000 		.word	.L261+1
 1329 0954 D72D0000 		.word	.L262+1
 1330 0958 851D0000 		.word	.L263+1
 1331 095c B5360000 		.word	.L991+1
 1332 0960 171D0000 		.word	.L264+1
 1333 0964 992B0000 		.word	.L265+1
 1334 0968 892B0000 		.word	.L266+1
 1335 096c 1B310000 		.word	.L267+1
 1336 0970 FD2A0000 		.word	.L268+1
 1337 0974 2B330000 		.word	.L269+1
 1338 0978 E72E0000 		.word	.L270+1
 1339 097c CD310000 		.word	.L271+1
 1340 0980 75230000 		.word	.L272+1
 1341 0984 FD240000 		.word	.L273+1
 1342 0988 B5360000 		.word	.L991+1
 1343 098c 2D240000 		.word	.L274+1
 1344 0990 B5360000 		.word	.L991+1
 1345 0994 E3230000 		.word	.L275+1
 1346 0998 B5360000 		.word	.L991+1
 1347 099c D1230000 		.word	.L276+1
 1348 09a0 D1230000 		.word	.L276+1
 1349 09a4 B5360000 		.word	.L991+1
 1350 09a8 8F120000 		.word	.L277+1
 1351 09ac 7F120000 		.word	.L278+1
 1352 09b0 43120000 		.word	.L279+1
 1353 09b4 B5360000 		.word	.L991+1
 1354 09b8 B5360000 		.word	.L991+1
 1355 09bc B5360000 		.word	.L991+1
 1356 09c0 B5360000 		.word	.L991+1
 1357 09c4 ED1B0000 		.word	.L280+1
 1358 09c8 491C0000 		.word	.L281+1
 1359 09cc DF340000 		.word	.L190+1
 1360 09d0 B5360000 		.word	.L991+1
 1361 09d4 B5360000 		.word	.L991+1
 1362 09d8 B5360000 		.word	.L991+1
 1363 09dc B5360000 		.word	.L991+1
 1364 09e0 B5360000 		.word	.L991+1
 1365 09e4 B5360000 		.word	.L991+1
 1366 09e8 B5360000 		.word	.L991+1
 1367 09ec B5360000 		.word	.L991+1
 1368 09f0 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 25


 1369 09f4 B5360000 		.word	.L991+1
 1370 09f8 B5360000 		.word	.L991+1
 1371 09fc B5360000 		.word	.L991+1
 1372 0a00 B5360000 		.word	.L991+1
 1373 0a04 B5360000 		.word	.L991+1
 1374 0a08 B5360000 		.word	.L991+1
 1375 0a0c B5360000 		.word	.L991+1
 1376 0a10 B5360000 		.word	.L991+1
 1377 0a14 B5360000 		.word	.L991+1
 1378 0a18 B5360000 		.word	.L991+1
 1379 0a1c B5360000 		.word	.L991+1
 1380 0a20 B5360000 		.word	.L991+1
 1381 0a24 B5360000 		.word	.L991+1
 1382 0a28 B5360000 		.word	.L991+1
 1383 0a2c B5360000 		.word	.L991+1
 1384 0a30 B5360000 		.word	.L991+1
 1385 0a34 B5360000 		.word	.L991+1
 1386 0a38 B5360000 		.word	.L991+1
 1387 0a3c B5360000 		.word	.L991+1
 1388 0a40 B5360000 		.word	.L991+1
 1389 0a44 B5360000 		.word	.L991+1
 1390 0a48 B5360000 		.word	.L991+1
 1391 0a4c B5360000 		.word	.L991+1
 1392 0a50 B5360000 		.word	.L991+1
 1393 0a54 B5360000 		.word	.L991+1
 1394 0a58 B5360000 		.word	.L991+1
 1395 0a5c B5360000 		.word	.L991+1
 1396 0a60 B5360000 		.word	.L991+1
 1397 0a64 B5360000 		.word	.L991+1
 1398 0a68 B5360000 		.word	.L991+1
 1399 0a6c B5360000 		.word	.L991+1
 1400 0a70 B5360000 		.word	.L991+1
 1401 0a74 B5360000 		.word	.L991+1
 1402 0a78 B5360000 		.word	.L991+1
 1403 0a7c B5360000 		.word	.L991+1
 1404 0a80 B5360000 		.word	.L991+1
 1405 0a84 B5360000 		.word	.L991+1
 1406 0a88 B5360000 		.word	.L991+1
 1407 0a8c B5360000 		.word	.L991+1
 1408 0a90 B5360000 		.word	.L991+1
 1409 0a94 B5360000 		.word	.L991+1
 1410 0a98 B5360000 		.word	.L991+1
 1411 0a9c B5360000 		.word	.L991+1
 1412 0aa0 B5360000 		.word	.L991+1
 1413 0aa4 B5360000 		.word	.L991+1
 1414 0aa8 B5360000 		.word	.L991+1
 1415 0aac B5360000 		.word	.L991+1
 1416 0ab0 B5360000 		.word	.L991+1
 1417 0ab4 B5360000 		.word	.L991+1
 1418 0ab8 B5360000 		.word	.L991+1
 1419 0abc B5360000 		.word	.L991+1
 1420 0ac0 B5360000 		.word	.L991+1
 1421 0ac4 B5360000 		.word	.L991+1
 1422 0ac8 B5360000 		.word	.L991+1
 1423 0acc B5360000 		.word	.L991+1
 1424 0ad0 B5360000 		.word	.L991+1
 1425 0ad4 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 26


 1426 0ad8 B5360000 		.word	.L991+1
 1427 0adc B5360000 		.word	.L991+1
 1428 0ae0 B5360000 		.word	.L991+1
 1429 0ae4 B5360000 		.word	.L991+1
 1430 0ae8 B5360000 		.word	.L991+1
 1431 0aec 191B0000 		.word	.L282+1
 1432 0af0 CF1A0000 		.word	.L283+1
 1433 0af4 A3190000 		.word	.L284+1
 1434 0af8 B5360000 		.word	.L991+1
 1435 0afc 55190000 		.word	.L285+1
 1436 0b00 B5360000 		.word	.L991+1
 1437 0b04 15190000 		.word	.L286+1
 1438 0b08 6D1A0000 		.word	.L287+1
 1439 0b0c B5360000 		.word	.L991+1
 1440 0b10 B5360000 		.word	.L991+1
 1441 0b14 B5360000 		.word	.L991+1
 1442 0b18 B5360000 		.word	.L991+1
 1443 0b1c B5360000 		.word	.L991+1
 1444 0b20 B5360000 		.word	.L991+1
 1445 0b24 B5360000 		.word	.L991+1
 1446 0b28 B5360000 		.word	.L991+1
 1447 0b2c B5360000 		.word	.L991+1
 1448 0b30 B5360000 		.word	.L991+1
 1449 0b34 B5360000 		.word	.L991+1
 1450 0b38 B5360000 		.word	.L991+1
 1451 0b3c B5360000 		.word	.L991+1
 1452 0b40 B5360000 		.word	.L991+1
 1453 0b44 B5360000 		.word	.L991+1
 1454 0b48 B5360000 		.word	.L991+1
 1455 0b4c B5360000 		.word	.L991+1
 1456 0b50 B5360000 		.word	.L991+1
 1457 0b54 B5360000 		.word	.L991+1
 1458 0b58 B5360000 		.word	.L991+1
 1459 0b5c B5360000 		.word	.L991+1
 1460 0b60 B5360000 		.word	.L991+1
 1461 0b64 B5360000 		.word	.L991+1
 1462 0b68 B5360000 		.word	.L991+1
 1463 0b6c B5360000 		.word	.L991+1
 1464 0b70 B5360000 		.word	.L991+1
 1465 0b74 B5360000 		.word	.L991+1
 1466 0b78 B5360000 		.word	.L991+1
 1467 0b7c 391C0000 		.word	.L288+1
 1468 0b80 5D1A0000 		.word	.L289+1
 1469 0b84 B5360000 		.word	.L991+1
 1470 0b88 B5360000 		.word	.L991+1
 1471 0b8c B5360000 		.word	.L991+1
 1472 0b90 B5360000 		.word	.L991+1
 1473 0b94 B5360000 		.word	.L991+1
 1474 0b98 B5360000 		.word	.L991+1
 1475 0b9c B5360000 		.word	.L991+1
 1476 0ba0 B5360000 		.word	.L991+1
 1477 0ba4 B5360000 		.word	.L991+1
 1478 0ba8 B5360000 		.word	.L991+1
 1479 0bac B5360000 		.word	.L991+1
 1480 0bb0 B5360000 		.word	.L991+1
 1481 0bb4 B5360000 		.word	.L991+1
 1482 0bb8 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 27


 1483 0bbc B5360000 		.word	.L991+1
 1484 0bc0 B5360000 		.word	.L991+1
 1485 0bc4 B5360000 		.word	.L991+1
 1486 0bc8 B5360000 		.word	.L991+1
 1487 0bcc B5360000 		.word	.L991+1
 1488 0bd0 B5360000 		.word	.L991+1
 1489 0bd4 B5360000 		.word	.L991+1
 1490 0bd8 B5360000 		.word	.L991+1
 1491 0bdc B5360000 		.word	.L991+1
 1492 0be0 B5360000 		.word	.L991+1
 1493 0be4 B5360000 		.word	.L991+1
 1494 0be8 B5360000 		.word	.L991+1
 1495 0bec B5360000 		.word	.L991+1
 1496 0bf0 B5360000 		.word	.L991+1
 1497 0bf4 B5360000 		.word	.L991+1
 1498 0bf8 B5360000 		.word	.L991+1
 1499 0bfc B5360000 		.word	.L991+1
 1500 0c00 B5360000 		.word	.L991+1
 1501 0c04 B5360000 		.word	.L991+1
 1502 0c08 B5360000 		.word	.L991+1
 1503 0c0c B5360000 		.word	.L991+1
 1504 0c10 B5360000 		.word	.L991+1
 1505 0c14 B5360000 		.word	.L991+1
 1506 0c18 B5360000 		.word	.L991+1
 1507 0c1c B5360000 		.word	.L991+1
 1508 0c20 B5360000 		.word	.L991+1
 1509 0c24 B5360000 		.word	.L991+1
 1510 0c28 B5360000 		.word	.L991+1
 1511 0c2c B5360000 		.word	.L991+1
 1512 0c30 B5360000 		.word	.L991+1
 1513 0c34 B5360000 		.word	.L991+1
 1514 0c38 B5360000 		.word	.L991+1
 1515 0c3c B5360000 		.word	.L991+1
 1516 0c40 291C0000 		.word	.L290+1
 1517 0c44 291C0000 		.word	.L290+1
 1518 0c48 291C0000 		.word	.L290+1
 1519 0c4c 291C0000 		.word	.L290+1
 1520 0c50 291C0000 		.word	.L290+1
 1521 0c54 291C0000 		.word	.L290+1
 1522 0c58 291C0000 		.word	.L290+1
 1523 0c5c B5360000 		.word	.L991+1
 1524 0c60 B5360000 		.word	.L991+1
 1525 0c64 B5360000 		.word	.L991+1
 1526 0c68 B5360000 		.word	.L991+1
 1527 0c6c B5360000 		.word	.L991+1
 1528 0c70 B5360000 		.word	.L991+1
 1529 0c74 B5360000 		.word	.L991+1
 1530 0c78 B5360000 		.word	.L991+1
 1531 0c7c B5360000 		.word	.L991+1
 1532 0c80 B5360000 		.word	.L991+1
 1533 0c84 B5360000 		.word	.L991+1
 1534 0c88 B5360000 		.word	.L991+1
 1535 0c8c B5360000 		.word	.L991+1
 1536 0c90 B5360000 		.word	.L991+1
 1537 0c94 B5360000 		.word	.L991+1
 1538 0c98 B5360000 		.word	.L991+1
 1539 0c9c B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 28


 1540 0ca0 B5360000 		.word	.L991+1
 1541 0ca4 B5360000 		.word	.L991+1
 1542 0ca8 B5360000 		.word	.L991+1
 1543 0cac B5360000 		.word	.L991+1
 1544 0cb0 B5360000 		.word	.L991+1
 1545 0cb4 B5360000 		.word	.L991+1
 1546 0cb8 B5360000 		.word	.L991+1
 1547 0cbc B5360000 		.word	.L991+1
 1548 0cc0 B5360000 		.word	.L991+1
 1549 0cc4 B5360000 		.word	.L991+1
 1550 0cc8 B5360000 		.word	.L991+1
 1551 0ccc B5360000 		.word	.L991+1
 1552 0cd0 B5360000 		.word	.L991+1
 1553 0cd4 B5360000 		.word	.L991+1
 1554 0cd8 B5360000 		.word	.L991+1
 1555 0cdc B5360000 		.word	.L991+1
 1556 0ce0 B5360000 		.word	.L991+1
 1557 0ce4 B5360000 		.word	.L991+1
 1558 0ce8 B5360000 		.word	.L991+1
 1559 0cec B5360000 		.word	.L991+1
 1560 0cf0 B5360000 		.word	.L991+1
 1561 0cf4 B5360000 		.word	.L991+1
 1562 0cf8 B5360000 		.word	.L991+1
 1563 0cfc B5360000 		.word	.L991+1
 1564 0d00 B5360000 		.word	.L991+1
 1565 0d04 B5360000 		.word	.L991+1
 1566 0d08 B5360000 		.word	.L991+1
 1567 0d0c B5360000 		.word	.L991+1
 1568 0d10 B5360000 		.word	.L991+1
 1569 0d14 B5360000 		.word	.L991+1
 1570 0d18 B5360000 		.word	.L991+1
 1571 0d1c B5360000 		.word	.L991+1
 1572 0d20 B5360000 		.word	.L991+1
 1573 0d24 B5360000 		.word	.L991+1
 1574 0d28 B5360000 		.word	.L991+1
 1575 0d2c B5360000 		.word	.L991+1
 1576 0d30 B5360000 		.word	.L991+1
 1577 0d34 B5360000 		.word	.L991+1
 1578 0d38 B5360000 		.word	.L991+1
 1579 0d3c B5360000 		.word	.L991+1
 1580 0d40 B5360000 		.word	.L991+1
 1581 0d44 B5360000 		.word	.L991+1
 1582 0d48 B5360000 		.word	.L991+1
 1583 0d4c B5360000 		.word	.L991+1
 1584 0d50 B5360000 		.word	.L991+1
 1585 0d54 B5360000 		.word	.L991+1
 1586 0d58 B5360000 		.word	.L991+1
 1587 0d5c B5360000 		.word	.L991+1
 1588 0d60 B5360000 		.word	.L991+1
 1589 0d64 B5360000 		.word	.L991+1
 1590 0d68 B5360000 		.word	.L991+1
 1591 0d6c B5360000 		.word	.L991+1
 1592 0d70 B5360000 		.word	.L991+1
 1593 0d74 B5360000 		.word	.L991+1
 1594 0d78 B5360000 		.word	.L991+1
 1595 0d7c B5360000 		.word	.L991+1
 1596 0d80 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 29


 1597 0d84 B5360000 		.word	.L991+1
 1598 0d88 B5360000 		.word	.L991+1
 1599 0d8c B5360000 		.word	.L991+1
 1600 0d90 B5360000 		.word	.L991+1
 1601 0d94 B5360000 		.word	.L991+1
 1602 0d98 B5360000 		.word	.L991+1
 1603 0d9c B5360000 		.word	.L991+1
 1604 0da0 B5360000 		.word	.L991+1
 1605 0da4 B5360000 		.word	.L991+1
 1606 0da8 B5360000 		.word	.L991+1
 1607 0dac B5360000 		.word	.L991+1
 1608 0db0 B5360000 		.word	.L991+1
 1609 0db4 B5360000 		.word	.L991+1
 1610 0db8 B5360000 		.word	.L991+1
 1611 0dbc B5360000 		.word	.L991+1
 1612 0dc0 B5360000 		.word	.L991+1
 1613 0dc4 B5360000 		.word	.L991+1
 1614 0dc8 B5360000 		.word	.L991+1
 1615 0dcc B5360000 		.word	.L991+1
 1616 0dd0 B5360000 		.word	.L991+1
 1617 0dd4 B5360000 		.word	.L991+1
 1618 0dd8 B5360000 		.word	.L991+1
 1619 0ddc B5360000 		.word	.L991+1
 1620 0de0 B5360000 		.word	.L991+1
 1621 0de4 B5360000 		.word	.L991+1
 1622 0de8 B5360000 		.word	.L991+1
 1623 0dec B5360000 		.word	.L991+1
 1624 0df0 B5360000 		.word	.L991+1
 1625 0df4 B5360000 		.word	.L991+1
 1626 0df8 B5360000 		.word	.L991+1
 1627 0dfc B5360000 		.word	.L991+1
 1628 0e00 B5360000 		.word	.L991+1
 1629 0e04 B5360000 		.word	.L991+1
 1630 0e08 B5360000 		.word	.L991+1
 1631 0e0c B5360000 		.word	.L991+1
 1632 0e10 B5360000 		.word	.L991+1
 1633 0e14 B5360000 		.word	.L991+1
 1634 0e18 B5360000 		.word	.L991+1
 1635 0e1c B5360000 		.word	.L991+1
 1636 0e20 B5360000 		.word	.L991+1
 1637 0e24 B5360000 		.word	.L991+1
 1638 0e28 B5360000 		.word	.L991+1
 1639 0e2c B5360000 		.word	.L991+1
 1640 0e30 B5360000 		.word	.L991+1
 1641 0e34 B5360000 		.word	.L991+1
 1642 0e38 B5360000 		.word	.L991+1
 1643 0e3c B5360000 		.word	.L991+1
 1644 0e40 B5360000 		.word	.L991+1
 1645 0e44 B5360000 		.word	.L991+1
 1646 0e48 B5360000 		.word	.L991+1
 1647 0e4c B5360000 		.word	.L991+1
 1648 0e50 B5360000 		.word	.L991+1
 1649 0e54 B5360000 		.word	.L991+1
 1650 0e58 B5360000 		.word	.L991+1
 1651 0e5c B5360000 		.word	.L991+1
 1652 0e60 B5360000 		.word	.L991+1
 1653 0e64 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 30


 1654 0e68 B5360000 		.word	.L991+1
 1655 0e6c B5360000 		.word	.L991+1
 1656 0e70 B5360000 		.word	.L991+1
 1657 0e74 B5360000 		.word	.L991+1
 1658 0e78 B5360000 		.word	.L991+1
 1659 0e7c B5360000 		.word	.L991+1
 1660 0e80 B5360000 		.word	.L991+1
 1661 0e84 B5360000 		.word	.L991+1
 1662 0e88 B5360000 		.word	.L991+1
 1663 0e8c B5360000 		.word	.L991+1
 1664 0e90 B5360000 		.word	.L991+1
 1665 0e94 B5360000 		.word	.L991+1
 1666 0e98 B5360000 		.word	.L991+1
 1667 0e9c B5360000 		.word	.L991+1
 1668 0ea0 B5360000 		.word	.L991+1
 1669 0ea4 B5360000 		.word	.L991+1
 1670 0ea8 B5360000 		.word	.L991+1
 1671 0eac 67110000 		.word	.L291+1
 1672 0eb0 851A0000 		.word	.L292+1
 1673 0eb4 B5360000 		.word	.L991+1
 1674 0eb8 B5360000 		.word	.L991+1
 1675 0ebc B5360000 		.word	.L991+1
 1676 0ec0 B5360000 		.word	.L991+1
 1677 0ec4 B5360000 		.word	.L991+1
 1678 0ec8 B5360000 		.word	.L991+1
 1679 0ecc 851A0000 		.word	.L292+1
 1680 0ed0 B5360000 		.word	.L991+1
 1681 0ed4 B5360000 		.word	.L991+1
 1682 0ed8 1F340000 		.word	.L293+1
 1683 0edc B5360000 		.word	.L991+1
 1684 0ee0 B5360000 		.word	.L991+1
 1685 0ee4 B5360000 		.word	.L991+1
 1686 0ee8 B5360000 		.word	.L991+1
 1687 0eec B5360000 		.word	.L991+1
 1688 0ef0 B5360000 		.word	.L991+1
 1689 0ef4 B5360000 		.word	.L991+1
 1690 0ef8 B5360000 		.word	.L991+1
 1691 0efc B5360000 		.word	.L991+1
 1692 0f00 B5360000 		.word	.L991+1
 1693 0f04 B5360000 		.word	.L991+1
 1694 0f08 B5360000 		.word	.L991+1
 1695 0f0c D91B0000 		.word	.L294+1
 1696 0f10 B5360000 		.word	.L991+1
 1697 0f14 B5360000 		.word	.L991+1
 1698 0f18 B5360000 		.word	.L991+1
 1699 0f1c B5360000 		.word	.L991+1
 1700 0f20 B5360000 		.word	.L991+1
 1701 0f24 B5360000 		.word	.L991+1
 1702 0f28 B5360000 		.word	.L991+1
 1703 0f2c B5360000 		.word	.L991+1
 1704 0f30 B5360000 		.word	.L991+1
 1705 0f34 B5360000 		.word	.L991+1
 1706 0f38 B5360000 		.word	.L991+1
 1707 0f3c B5360000 		.word	.L991+1
 1708 0f40 B5360000 		.word	.L991+1
 1709 0f44 B5360000 		.word	.L991+1
 1710 0f48 B5360000 		.word	.L991+1
ARM GAS  /tmp/ccIESeqr.s 			page 31


 1711 0f4c B5360000 		.word	.L991+1
 1712 0f50 B5360000 		.word	.L991+1
 1713 0f54 B5360000 		.word	.L991+1
 1714 0f58 B5360000 		.word	.L991+1
 1715 0f5c B5360000 		.word	.L991+1
 1716 0f60 B5360000 		.word	.L991+1
 1717 0f64 B5360000 		.word	.L991+1
 1718 0f68 B5360000 		.word	.L991+1
 1719 0f6c B5360000 		.word	.L991+1
 1720 0f70 B5360000 		.word	.L991+1
 1721 0f74 B5360000 		.word	.L991+1
 1722 0f78 B5360000 		.word	.L991+1
 1723 0f7c B5360000 		.word	.L991+1
 1724 0f80 B5360000 		.word	.L991+1
 1725 0f84 B5360000 		.word	.L991+1
 1726 0f88 B5360000 		.word	.L991+1
 1727 0f8c B5360000 		.word	.L991+1
 1728 0f90 B5360000 		.word	.L991+1
 1729 0f94 B5360000 		.word	.L991+1
 1730 0f98 B5360000 		.word	.L991+1
 1731 0f9c B5360000 		.word	.L991+1
 1732 0fa0 B5360000 		.word	.L991+1
 1733 0fa4 B5360000 		.word	.L991+1
 1734 0fa8 B5360000 		.word	.L991+1
 1735 0fac B5360000 		.word	.L991+1
 1736 0fb0 B5360000 		.word	.L991+1
 1737 0fb4 B5360000 		.word	.L991+1
 1738 0fb8 B5360000 		.word	.L991+1
 1739 0fbc B5360000 		.word	.L991+1
 1740 0fc0 B5360000 		.word	.L991+1
 1741 0fc4 B5360000 		.word	.L991+1
 1742 0fc8 B5360000 		.word	.L991+1
 1743 0fcc B5360000 		.word	.L991+1
 1744 0fd0 B5360000 		.word	.L991+1
 1745 0fd4 B5360000 		.word	.L991+1
 1746 0fd8 B5360000 		.word	.L991+1
 1747 0fdc B5360000 		.word	.L991+1
 1748 0fe0 B5360000 		.word	.L991+1
 1749 0fe4 B5360000 		.word	.L991+1
 1750 0fe8 B5360000 		.word	.L991+1
 1751 0fec B5360000 		.word	.L991+1
 1752 0ff0 B5360000 		.word	.L991+1
 1753 0ff4 B5360000 		.word	.L991+1
 1754 0ff8 B5360000 		.word	.L991+1
 1755 0ffc B5360000 		.word	.L991+1
 1756 1000 B5360000 		.word	.L991+1
 1757 1004 B5360000 		.word	.L991+1
 1758 1008 B5360000 		.word	.L991+1
 1759 100c B5360000 		.word	.L991+1
 1760 1010 B5360000 		.word	.L991+1
 1761 1014 B5360000 		.word	.L991+1
 1762 1018 B5360000 		.word	.L991+1
 1763 101c 19180000 		.word	.L295+1
 1764 1020 81160000 		.word	.L296+1
 1765 1024 41350000 		.word	.L165+1
 1766              		.p2align 1
 1767              	.L1793:
ARM GAS  /tmp/ccIESeqr.s 			page 32


 1768 1028 BAF1520F 		cmp	r10, #82
 1769 102c 02F01B84 		beq	.L153
 1770 1030 BAF1530F 		cmp	r10, #83
 1771 1034 2BD0     		beq	.L154
 1772 1036 BAF1690F 		cmp	r10, #105
 1773 103a 02F01D84 		beq	.L155
 1774 103e BAF16D0F 		cmp	r10, #109
 1775 1042 2DD0     		beq	.L156
 1776 1044 BAF16F0F 		cmp	r10, #111
 1777 1048 02F06E83 		beq	.L157
 1778 104c BAF1700F 		cmp	r10, #112
 1779 1050 02F04383 		beq	.L158
 1780 1054 BAF17A0F 		cmp	r10, #122
 1781 1058 02F03083 		beq	.L159
 1782 105c BAF1C80F 		cmp	r10, #200
 1783 1060 02F01383 		beq	.L160
 1784 1064 BAF1CC0F 		cmp	r10, #204
 1785 1068 02F0DE82 		beq	.L161
 1786 106c BAF1CF0F 		cmp	r10, #207
 1787 1070 02F08182 		beq	.L162
 1788 1074 BAF5CC7F 		cmp	r10, #408
 1789 1078 02F03582 		beq	.L163
 1790 107c 40F2E733 		movw	r3, #999
 1791 1080 9A45     		cmp	r10, r3
 1792 1082 02F05D82 		beq	.L165
 1793 1086 4FF0010A 		mov	r10, #1
 1794 108a FEF7EBBF 		b	.L1671
 1795              	.L154:
 1796 108e 0123     		movs	r3, #1
 1797 1090 AA68     		ldr	r2, [r5, #8]
 1798 1092 0D93     		str	r3, [sp, #52]
 1799 1094 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1800 1096 43F00103 		orr	r3, r3, #1
 1801 109a 1376     		strb	r3, [r2, #24]
 1802 109c FEF7DBBF 		b	.L166
 1803              	.L156:
 1804 10a0 2946     		mov	r1, r5
 1805 10a2 2046     		mov	r0, r4
 1806 10a4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1807 10a8 0028     		cmp	r0, #0
 1808 10aa 00F0FF80 		beq	.L704
 1809 10ae 2046     		mov	r0, r4
 1810 10b0 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 1811 10b4 0028     		cmp	r0, #0
 1812 10b6 00F0F980 		beq	.L704
 1813              	.L196:
 1814 10ba 5221     		movs	r1, #82
 1815 10bc 2846     		mov	r0, r5
 1816 10be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1817 10c2 0746     		mov	r7, r0
 1818 10c4 0028     		cmp	r0, #0
 1819 10c6 02F0E485 		beq	.L437
 1820 10ca AA68     		ldr	r2, [r5, #8]
 1821 10cc 2846     		mov	r0, r5
 1822 10ce 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1823 10d0 43F00803 		orr	r3, r3, #8
 1824 10d4 1376     		strb	r3, [r2, #24]
ARM GAS  /tmp/ccIESeqr.s 			page 33


 1825 10d6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1826 10da 8046     		mov	r8, r0
 1827              	.L438:
 1828 10dc 5421     		movs	r1, #84
 1829 10de 2846     		mov	r0, r5
 1830 10e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1831 10e4 0028     		cmp	r0, #0
 1832 10e6 02F01987 		beq	.L439
 1833 10ea 2846     		mov	r0, r5
 1834 10ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1835 10f0 296B     		ldr	r1, [r5, #48]
 1836 10f2 0144     		add	r1, r1, r0
 1837 10f4 C748     		ldr	r0, .L1958
 1838 10f6 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1839 10fa 0746     		mov	r7, r0
 1840              	.L440:
 1841 10fc 002F     		cmp	r7, #0
 1842 10fe 04F06C84 		beq	.L1794
 1843 1102 94F83033 		ldrb	r3, [r4, #816]	@ zero_extendqisi2
 1844 1106 002B     		cmp	r3, #0
 1845 1108 03F09085 		beq	.L1795
 1846              	.L442:
 1847 110c C14B     		ldr	r3, .L1958
 1848 110e BAF16D0F 		cmp	r10, #109
 1849 1112 DB6A     		ldr	r3, [r3, #44]
 1850 1114 03F04086 		beq	.L1796
 1851              	.L443:
 1852 1118 94F83023 		ldrb	r2, [r4, #816]	@ zero_extendqisi2
 1853 111c 796E     		ldr	r1, [r7, #100]
 1854 111e 0032     		adds	r2, r2, #0
 1855 1120 18BF     		it	ne
 1856 1122 0122     		movne	r2, #1
 1857 1124 9F42     		cmp	r7, r3
 1858 1126 BB48     		ldr	r0, .L1958
 1859 1128 04F0CD80 		beq	.L1797
 1860 112c FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 1861              	.L446:
 1862 1130 BAF16D0F 		cmp	r10, #109
 1863 1134 40F09F80 		bne	.L313
 1864 1138 0E22     		movs	r2, #14
 1865 113a 0121     		movs	r1, #1
 1866 113c AB68     		ldr	r3, [r5, #8]
 1867 113e 0D91     		str	r1, [sp, #52]
 1868 1140 1A75     		strb	r2, [r3, #20]
 1869 1142 FEF788BF 		b	.L166
 1870              	.L169:
 1871 1146 5321     		movs	r1, #83
 1872 1148 2846     		mov	r0, r5
 1873 114a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1874 114e 0028     		cmp	r0, #0
 1875 1150 00F09180 		beq	.L313
 1876 1154 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 1877 1158 022B     		cmp	r3, #2
 1878 115a 04F04E84 		beq	.L1798
 1879 115e 0523     		movs	r3, #5
 1880 1160 0D93     		str	r3, [sp, #52]
 1881 1162 FEF778BF 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 34


 1882              	.L291:
 1883 1166 3246     		mov	r2, r6
 1884 1168 2946     		mov	r1, r5
 1885 116a 2046     		mov	r0, r4
 1886 116c FFF7FEFF 		bl	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 1887 1170 0D90     		str	r0, [sp, #52]
 1888 1172 FEF770BF 		b	.L166
 1889              	.L217:
 1890 1176 5321     		movs	r1, #83
 1891 1178 2846     		mov	r0, r5
 1892 117a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1893 117e 0028     		cmp	r0, #0
 1894 1180 02F0FB86 		beq	.L583
 1895 1184 2846     		mov	r0, r5
 1896 1186 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1897 118a A349     		ldr	r1, .L1958+4
 1898 118c FFF7FEFF 		bl	__aeabi_fmul
 1899 1190 A249     		ldr	r1, .L1958+8
 1900 1192 FFF7FEFF 		bl	__aeabi_fmul
 1901 1196 0021     		movs	r1, #0
 1902 1198 8346     		mov	fp, r0
 1903 119a FFF7FEFF 		bl	__aeabi_fcmpgt
 1904 119e 0028     		cmp	r0, #0
 1905 11a0 04F01384 		beq	.L1695
 1906 11a4 D4F89412 		ldr	r1, [r4, #660]	@ float
 1907 11a8 5846     		mov	r0, fp
 1908 11aa FFF7FEFF 		bl	__aeabi_fdiv
 1909 11ae 8046     		mov	r8, r0
 1910 11b0 04F11809 		add	r9, r4, #24
 1911 11b4 04F1380A 		add	r10, r4, #56
 1912              	.L588:
 1913 11b8 59F8043B 		ldr	r3, [r9], #4
 1914 11bc 9F68     		ldr	r7, [r3, #8]
 1915 11be 3FB1     		cbz	r7, .L589
 1916              	.L590:
 1917 11c0 7868     		ldr	r0, [r7, #4]	@ float
 1918 11c2 4146     		mov	r1, r8
 1919 11c4 FFF7FEFF 		bl	__aeabi_fmul
 1920 11c8 7860     		str	r0, [r7, #4]	@ float
 1921 11ca 3F68     		ldr	r7, [r7]
 1922 11cc 002F     		cmp	r7, #0
 1923 11ce F7D1     		bne	.L590
 1924              	.L589:
 1925 11d0 CA45     		cmp	r10, r9
 1926 11d2 F1D1     		bne	.L588
 1927 11d4 D4F8FC30 		ldr	r3, [r4, #252]
 1928 11d8 53B1     		cbz	r3, .L591
 1929 11da 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1930 11de DA07     		lsls	r2, r3, #31
 1931 11e0 06D4     		bmi	.L591
 1932 11e2 D4F8DC00 		ldr	r0, [r4, #220]	@ float
 1933 11e6 4146     		mov	r1, r8
 1934 11e8 FFF7FEFF 		bl	__aeabi_fmul
 1935 11ec C4F8DC00 		str	r0, [r4, #220]	@ float
 1936              	.L591:
 1937 11f0 0123     		movs	r3, #1
 1938 11f2 C4F894B2 		str	fp, [r4, #660]	@ float
ARM GAS  /tmp/ccIESeqr.s 			page 35


 1939 11f6 0D93     		str	r3, [sp, #52]
 1940 11f8 FEF72DBF 		b	.L166
 1941              	.L168:
 1942 11fc 5321     		movs	r1, #83
 1943 11fe 2846     		mov	r0, r5
 1944 1200 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1945 1204 B8B3     		cbz	r0, .L313
 1946 1206 94F87C70 		ldrb	r7, [r4, #124]	@ zero_extendqisi2
 1947 120a 012F     		cmp	r7, #1
 1948 120c 03F0AD87 		beq	.L314
 1949 1210 022F     		cmp	r7, #2
 1950 1212 43F0A687 		bne	.L1672
 1951 1216 2846     		mov	r0, r5
 1952 1218 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1953 121c 5021     		movs	r1, #80
 1954 121e 0746     		mov	r7, r0
 1955 1220 2846     		mov	r0, r5
 1956 1222 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1957 1226 0028     		cmp	r0, #0
 1958 1228 44F01C85 		bne	.L1799
 1959 122c 4FF4B263 		mov	r3, #1424
 1960              	.L316:
 1961 1230 2068     		ldr	r0, [r4]
 1962 1232 3946     		mov	r1, r7
 1963 1234 1844     		add	r0, r0, r3
 1964 1236 FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 1965 123a 0123     		movs	r3, #1
 1966 123c 0D93     		str	r3, [sp, #52]
 1967 123e FEF70ABF 		b	.L166
 1968              	.L279:
 1969 1242 4921     		movs	r1, #73
 1970 1244 2846     		mov	r0, r5
 1971 1246 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1972 124a 0028     		cmp	r0, #0
 1973 124c 43F02784 		bne	.L1800
 1974 1250 0746     		mov	r7, r0
 1975              	.L830:
 1976 1252 5021     		movs	r1, #80
 1977 1254 2846     		mov	r0, r5
 1978 1256 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1979 125a 0028     		cmp	r0, #0
 1980 125c 02F05387 		beq	.L831
 1981 1260 2846     		mov	r0, r5
 1982 1262 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1983 1266 5321     		movs	r1, #83
 1984 1268 8046     		mov	r8, r0
 1985 126a 2846     		mov	r0, r5
 1986 126c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1987 1270 0028     		cmp	r0, #0
 1988 1272 43F0EC87 		bne	.L1801
 1989              	.L313:
 1990 1276 0123     		movs	r3, #1
 1991 1278 0D93     		str	r3, [sp, #52]
 1992 127a FEF7ECBE 		b	.L166
 1993              	.L278:
 1994 127e 3246     		mov	r2, r6
 1995 1280 2946     		mov	r1, r5
ARM GAS  /tmp/ccIESeqr.s 			page 36


 1996 1282 2046     		mov	r0, r4
 1997 1284 FFF7FEFF 		bl	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
 1998 1288 0D90     		str	r0, [sp, #52]
 1999 128a FEF7E4BE 		b	.L166
 2000              	.L277:
 2001 128e 3246     		mov	r2, r6
 2002 1290 2946     		mov	r1, r5
 2003 1292 2046     		mov	r0, r4
 2004 1294 FFF7FEFF 		bl	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
 2005 1298 0D90     		str	r0, [sp, #52]
 2006 129a FEF7DCBE 		b	.L166
 2007              	.L212:
 2008 129e 2946     		mov	r1, r5
 2009 12a0 2046     		mov	r0, r4
 2010 12a2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2011 12a6 0028     		cmp	r0, #0
 2012 12a8 43F0A783 		bne	.L1802
 2013              	.L704:
 2014 12ac 4FF0000A 		mov	r10, #0
 2015 12b0 5046     		mov	r0, r10
 2016 12b2 0DF5217D 		add	sp, sp, #644
 2017              		@ sp needed
 2018 12b6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2019              	.L211:
 2020 12ba 5021     		movs	r1, #80
 2021 12bc 2846     		mov	r0, r5
 2022 12be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2023 12c2 0028     		cmp	r0, #0
 2024 12c4 43F0BA84 		bne	.L1803
 2025              	.L505:
 2026 12c8 DFF848B1 		ldr	fp, .L1958
 2027 12cc DBF80C30 		ldr	r3, [fp, #12]
 2028 12d0 93F98280 		ldrsb	r8, [r3, #130]
 2029 12d4 B8F1000F 		cmp	r8, #0
 2030 12d8 CDDB     		blt	.L313
 2031 12da 5321     		movs	r1, #83
 2032 12dc 2846     		mov	r0, r5
 2033 12de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2034 12e2 0028     		cmp	r0, #0
 2035 12e4 44F0F980 		bne	.L1804
 2036              	.L506:
 2037 12e8 4146     		mov	r1, r8
 2038 12ea DBF80C00 		ldr	r0, [fp, #12]
 2039 12ee 0022     		movs	r2, #0
 2040 12f0 FFF7FEFF 		bl	_ZN4Heat7StandbyEaPK4Tool
 2041 12f4 0123     		movs	r3, #1
 2042 12f6 0D93     		str	r3, [sp, #52]
 2043 12f8 FEF7ADBE 		b	.L166
 2044              	.L210:
 2045 12fc 3246     		mov	r2, r6
 2046 12fe 2946     		mov	r1, r5
 2047 1300 2046     		mov	r0, r4
 2048 1302 FFF7FEFF 		bl	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 2049 1306 0028     		cmp	r0, #0
 2050 1308 B5D0     		beq	.L313
 2051              	.L504:
 2052 130a 0223     		movs	r3, #2
ARM GAS  /tmp/ccIESeqr.s 			page 37


 2053 130c 0D93     		str	r3, [sp, #52]
 2054 130e FEF7A2BE 		b	.L166
 2055              	.L209:
 2056 1312 DFF800B1 		ldr	fp, .L1958
 2057 1316 5021     		movs	r1, #80
 2058 1318 2846     		mov	r0, r5
 2059 131a DBF80C70 		ldr	r7, [fp, #12]
 2060 131e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2061 1322 8046     		mov	r8, r0
 2062 1324 0028     		cmp	r0, #0
 2063 1326 43F0BD84 		bne	.L1805
 2064 132a BAF18C0F 		cmp	r10, #140
 2065 132e 03F0BA86 		beq	.L1806
 2066              	.L487:
 2067 1332 4821     		movs	r1, #72
 2068 1334 2846     		mov	r0, r5
 2069 1336 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2070 133a 0346     		mov	r3, r0
 2071 133c 0028     		cmp	r0, #0
 2072 133e 44F0A783 		bne	.L989
 2073              	.L488:
 2074 1342 BAF18D0F 		cmp	r10, #141
 2075 1346 43F0B786 		bne	.L492
 2076 134a 07EB0802 		add	r2, r7, r8
 2077 134e 92F983A0 		ldrsb	r10, [r2, #131]
 2078 1352 DFF8D490 		ldr	r9, .L1958+20
 2079              	.L493:
 2080 1356 5321     		movs	r1, #83
 2081 1358 2846     		mov	r0, r5
 2082 135a 0D93     		str	r3, [sp, #52]
 2083 135c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2084 1360 0D9B     		ldr	r3, [sp, #52]
 2085 1362 0028     		cmp	r0, #0
 2086 1364 44F06582 		bne	.L1807
 2087 1368 5221     		movs	r1, #82
 2088 136a 2846     		mov	r0, r5
 2089 136c 0D93     		str	r3, [sp, #52]
 2090 136e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2091 1372 0D9B     		ldr	r3, [sp, #52]
 2092 1374 0028     		cmp	r0, #0
 2093 1376 04F02E82 		beq	.L501
 2094 137a BAF1000F 		cmp	r10, #0
 2095 137e C4F2D585 		blt	.L985
 2096              	.L502:
 2097 1382 2846     		mov	r0, r5
 2098 1384 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2099 1388 5146     		mov	r1, r10
 2100 138a 0246     		mov	r2, r0
 2101 138c 3846     		mov	r0, r7
 2102 138e FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 2103 1392 0123     		movs	r3, #1
 2104 1394 0D93     		str	r3, [sp, #52]
 2105 1396 FEF75EBE 		b	.L166
 2106              	.L248:
 2107 139a 2946     		mov	r1, r5
 2108 139c 2046     		mov	r0, r4
 2109 139e FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
ARM GAS  /tmp/ccIESeqr.s 			page 38


 2110 13a2 0028     		cmp	r0, #0
 2111 13a4 82D0     		beq	.L704
 2112 13a6 0DF17009 		add	r9, sp, #112
 2113 13aa 4846     		mov	r0, r9
 2114 13ac FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2115 13b0 8246     		mov	r10, r0
 2116 13b2 0028     		cmp	r0, #0
 2117 13b4 3FF47AAF 		beq	.L704
 2118 13b8 2268     		ldr	r2, [r4]
 2119 13ba 0023     		movs	r3, #0
 2120 13bc D2F86805 		ldr	r0, [r2, #1384]
 2121 13c0 1749     		ldr	r1, .L1958+12
 2122 13c2 184A     		ldr	r2, .L1958+16
 2123 13c4 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2124 13c8 0746     		mov	r7, r0
 2125 13ca 0028     		cmp	r0, #0
 2126 13cc 04F0FE84 		beq	.L1808
 2127 13d0 D9F80000 		ldr	r0, [r9]
 2128 13d4 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 2129 13d8 0646     		mov	r6, r0
 2130 13da 0DF5BC78 		add	r8, sp, #376
 2131              	.L708:
 2132 13de 8022     		movs	r2, #128
 2133 13e0 4146     		mov	r1, r8
 2134 13e2 3846     		mov	r0, r7
 2135 13e4 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 2136 13e8 0346     		mov	r3, r0
 2137 13ea 10B1     		cbz	r0, .L706
 2138 13ec 002E     		cmp	r6, #0
 2139 13ee 42F08781 		bne	.L707
 2140              	.L706:
 2141 13f2 3846     		mov	r0, r7
 2142 13f4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2143 13f8 2946     		mov	r1, r5
 2144 13fa 2046     		mov	r0, r4
 2145 13fc FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 2146 1400 D9F80030 		ldr	r3, [r9]
 2147 1404 2946     		mov	r1, r5
 2148 1406 2046     		mov	r0, r4
 2149 1408 0022     		movs	r2, #0
 2150 140a FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 2151 140e FEF729BE 		b	.L1671
 2152              	.L1959:
 2153 1412 00BF     		.align	2
 2154              	.L1958:
 2155 1414 00000000 		.word	reprap
 2156 1418 0AD7233C 		.word	1008981770
 2157 141c 8988883C 		.word	1015580809
 2158 1420 B0000000 		.word	.LC27
 2159 1424 A4000000 		.word	.LC26
 2160 1428 1C000000 		.word	.LC14
 2161              	.L246:
 2162 142c AB68     		ldr	r3, [r5, #8]
 2163 142e 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2164 1430 13F0300F 		tst	r3, #48
 2165 1434 7FF41FAF 		bne	.L313
 2166 1438 94F88030 		ldrb	r3, [r4, #128]	@ zero_extendqisi2
ARM GAS  /tmp/ccIESeqr.s 			page 39


 2167 143c 13B1     		cbz	r3, .L944
 2168 143e 0123     		movs	r3, #1
 2169 1440 84F86034 		strb	r3, [r4, #1120]
 2170              	.L944:
 2171 1444 40F2F512 		movw	r2, #501
 2172 1448 0123     		movs	r3, #1
 2173 144a 0092     		str	r2, [sp]
 2174 144c 2946     		mov	r1, r5
 2175 144e CF4A     		ldr	r2, .L1960
 2176 1450 2046     		mov	r0, r4
 2177 1452 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2178 1456 0123     		movs	r3, #1
 2179 1458 0D93     		str	r3, [sp, #52]
 2180 145a FEF7FCBD 		b	.L166
 2181              	.L245:
 2182 145e 3246     		mov	r2, r6
 2183 1460 2946     		mov	r1, r5
 2184 1462 2046     		mov	r0, r4
 2185 1464 FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 2186 1468 0D90     		str	r0, [sp, #52]
 2187 146a FEF7F4BD 		b	.L166
 2188              	.L244:
 2189 146e 2946     		mov	r1, r5
 2190 1470 2046     		mov	r0, r4
 2191 1472 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2192 1476 0028     		cmp	r0, #0
 2193 1478 3FF418AF 		beq	.L704
 2194 147c 5321     		movs	r1, #83
 2195 147e 2846     		mov	r0, r5
 2196 1480 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2197 1484 0028     		cmp	r0, #0
 2198 1486 44F04480 		bne	.L1809
 2199 148a 4FF4B263 		mov	r3, #1424
 2200              	.L691:
 2201 148e 2768     		ldr	r7, [r4]
 2202 1490 5021     		movs	r1, #80
 2203 1492 2846     		mov	r0, r5
 2204 1494 1F44     		add	r7, r7, r3
 2205 1496 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2206 149a C8B3     		cbz	r0, .L692
 2207 149c 4FF6FF7A 		movw	r10, #65535
 2208 14a0 4FF0020E 		mov	lr, #2
 2209 14a4 0DF5BC78 		add	r8, sp, #376
 2210 14a8 0DF17009 		add	r9, sp, #112
 2211 14ac 0023     		movs	r3, #0
 2212 14ae 4146     		mov	r1, r8
 2213 14b0 4A46     		mov	r2, r9
 2214 14b2 2846     		mov	r0, r5
 2215 14b4 C8F800A0 		str	r10, [r8]
 2216 14b8 C8F804A0 		str	r10, [r8, #4]
 2217 14bc C9F800E0 		str	lr, [r9]
 2218 14c0 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2219 14c4 D8F80030 		ldr	r3, [r8]
 2220 14c8 B3F5803F 		cmp	r3, #65536
 2221 14cc D9F80030 		ldr	r3, [r9]
 2222 14d0 28BF     		it	cs
 2223 14d2 C8F800A0 		strcs	r10, [r8]
ARM GAS  /tmp/ccIESeqr.s 			page 40


 2224 14d6 012B     		cmp	r3, #1
 2225 14d8 04D9     		bls	.L694
 2226 14da D8F80430 		ldr	r3, [r8, #4]
 2227 14de B3F5803F 		cmp	r3, #65536
 2228 14e2 03D3     		bcc	.L695
 2229              	.L694:
 2230 14e4 4FF6FF73 		movw	r3, #65535
 2231 14e8 C8F80430 		str	r3, [r8, #4]
 2232              	.L695:
 2233 14ec 4921     		movs	r1, #73
 2234 14ee 2846     		mov	r0, r5
 2235 14f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2236 14f4 0028     		cmp	r0, #0
 2237 14f6 44F0AD84 		bne	.L1810
 2238              	.L696:
 2239 14fa 0346     		mov	r3, r0
 2240 14fc B8F80420 		ldrh	r2, [r8, #4]
 2241 1500 B8F80010 		ldrh	r1, [r8]
 2242 1504 3846     		mov	r0, r7
 2243 1506 FFF7FEFF 		bl	_ZN7Spindle7SetPinsEttb
 2244 150a 0028     		cmp	r0, #0
 2245 150c 04F07984 		beq	.L1811
 2246              	.L692:
 2247 1510 4621     		movs	r1, #70
 2248 1512 2846     		mov	r0, r5
 2249 1514 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2250 1518 0028     		cmp	r0, #0
 2251 151a 44F02D84 		bne	.L1812
 2252              	.L698:
 2253 151e 5221     		movs	r1, #82
 2254 1520 2846     		mov	r0, r5
 2255 1522 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2256 1526 0028     		cmp	r0, #0
 2257 1528 44F01784 		bne	.L1813
 2258              	.L699:
 2259 152c 5421     		movs	r1, #84
 2260 152e 2846     		mov	r0, r5
 2261 1530 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2262 1534 0028     		cmp	r0, #0
 2263 1536 44F00A84 		bne	.L1814
 2264              	.L702:
 2265 153a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 2266 153e 022B     		cmp	r3, #2
 2267 1540 3FF499AE 		beq	.L313
 2268 1544 0223     		movs	r3, #2
 2269 1546 9249     		ldr	r1, .L1960+4
 2270 1548 84F87C30 		strb	r3, [r4, #124]
 2271 154c 3046     		mov	r0, r6
 2272 154e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2273 1552 0123     		movs	r3, #1
 2274 1554 0D93     		str	r3, [sp, #52]
 2275 1556 FEF77EBD 		b	.L166
 2276              	.L243:
 2277 155a 2946     		mov	r1, r5
 2278 155c 2046     		mov	r0, r4
 2279 155e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2280 1562 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 41


 2281 1564 3FF4A2AE 		beq	.L704
 2282 1568 0123     		movs	r3, #1
 2283 156a 5021     		movs	r1, #80
 2284 156c 84F87C30 		strb	r3, [r4, #124]
 2285 1570 2846     		mov	r0, r5
 2286 1572 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2287 1576 0028     		cmp	r0, #0
 2288 1578 43F09287 		bne	.L1815
 2289              	.L688:
 2290 157c 4621     		movs	r1, #70
 2291 157e 2846     		mov	r0, r5
 2292 1580 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2293 1584 38B1     		cbz	r0, .L940
 2294 1586 2846     		mov	r0, r5
 2295 1588 2768     		ldr	r7, [r4]
 2296 158a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2297 158e 0146     		mov	r1, r0
 2298 1590 3846     		mov	r0, r7
 2299 1592 FFF7FEFF 		bl	_ZN8Platform20SetLaserPwmFrequencyEf
 2300              	.L940:
 2301 1596 5221     		movs	r1, #82
 2302 1598 2846     		mov	r0, r5
 2303 159a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2304 159e 0028     		cmp	r0, #0
 2305 15a0 3FF469AE 		beq	.L313
 2306 15a4 2846     		mov	r0, r5
 2307 15a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2308 15aa 4FF07E51 		mov	r1, #1065353216
 2309 15ae 0746     		mov	r7, r0
 2310 15b0 FFF7FEFF 		bl	__aeabi_fcmplt
 2311 15b4 0028     		cmp	r0, #0
 2312 15b6 44F0E184 		bne	.L1816
 2313              	.L941:
 2314 15ba 0123     		movs	r3, #1
 2315 15bc C4F84474 		str	r7, [r4, #1092]	@ float
 2316 15c0 0D93     		str	r3, [sp, #52]
 2317 15c2 FEF748BD 		b	.L166
 2318              	.L242:
 2319 15c6 2946     		mov	r1, r5
 2320 15c8 2046     		mov	r0, r4
 2321 15ca FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2322 15ce 0028     		cmp	r0, #0
 2323 15d0 3FF46CAE 		beq	.L704
 2324 15d4 0023     		movs	r3, #0
 2325 15d6 0122     		movs	r2, #1
 2326 15d8 84F87C30 		strb	r3, [r4, #124]
 2327 15dc 0D92     		str	r2, [sp, #52]
 2328 15de FEF73ABD 		b	.L166
 2329              	.L241:
 2330 15e2 2046     		mov	r0, r4
 2331 15e4 FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 2332 15e8 6A49     		ldr	r1, .L1960+8
 2333 15ea 0246     		mov	r2, r0
 2334 15ec 3046     		mov	r0, r6
 2335 15ee FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2336 15f2 0123     		movs	r3, #1
 2337 15f4 0D93     		str	r3, [sp, #52]
ARM GAS  /tmp/ccIESeqr.s 			page 42


 2338 15f6 FEF72EBD 		b	.L166
 2339              	.L195:
 2340 15fa 0122     		movs	r2, #1
 2341 15fc 2946     		mov	r1, r5
 2342 15fe 2046     		mov	r0, r4
 2343 1600 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 2344 1604 0D90     		str	r0, [sp, #52]
 2345 1606 FEF726BD 		b	.L166
 2346              	.L197:
 2347 160a 4FF00009 		mov	r9, #0
 2348 160e 0DF5BC78 		add	r8, sp, #376
 2349 1612 1AAB     		add	r3, sp, #104
 2350 1614 4246     		mov	r2, r8
 2351 1616 5021     		movs	r1, #80
 2352 1618 2846     		mov	r0, r5
 2353 161a 1CAF     		add	r7, sp, #112
 2354 161c 0E93     		str	r3, [sp, #56]
 2355 161e 83F80090 		strb	r9, [r3]
 2356 1622 C8F80090 		str	r9, [r8]
 2357 1626 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2358 162a D8F80020 		ldr	r2, [r8]
 2359 162e 2068     		ldr	r0, [r4]
 2360 1630 2B46     		mov	r3, r5
 2361 1632 8DE8C000 		stm	sp, {r6, r7}
 2362 1636 6A21     		movs	r1, #106
 2363 1638 8DF87090 		strb	r9, [sp, #112]
 2364 163c FFF7FEFF 		bl	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 2365 1640 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 2366 1642 4B45     		cmp	r3, r9
 2367 1644 0CBF     		ite	eq
 2368 1646 0123     		moveq	r3, #1
 2369 1648 0223     		movne	r3, #2
 2370 164a 0D93     		str	r3, [sp, #52]
 2371 164c 0028     		cmp	r0, #0
 2372 164e 03F02281 		beq	.L1817
 2373              	.L431:
 2374 1652 5221     		movs	r1, #82
 2375 1654 2846     		mov	r0, r5
 2376 1656 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2377 165a 0028     		cmp	r0, #0
 2378 165c 3EF4FBAC 		beq	.L166
 2379 1660 0E9B     		ldr	r3, [sp, #56]
 2380 1662 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2381 1664 002B     		cmp	r3, #0
 2382 1666 03F0DD83 		beq	.L436
 2383 166a D8F80010 		ldr	r1, [r8]
 2384 166e 2068     		ldr	r0, [r4]
 2385 1670 04EB8103 		add	r3, r4, r1, lsl #2
 2386 1674 D3F88422 		ldr	r2, [r3, #644]	@ float
 2387 1678 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 2388 167c FEF7EBBC 		b	.L166
 2389              	.L296:
 2390 1680 5021     		movs	r1, #80
 2391 1682 2846     		mov	r0, r5
 2392 1684 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2393 1688 0028     		cmp	r0, #0
 2394 168a 3FF4F4AD 		beq	.L313
ARM GAS  /tmp/ccIESeqr.s 			page 43


 2395 168e 2846     		mov	r0, r5
 2396 1690 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2397 1694 0028     		cmp	r0, #0
 2398 1696 3FF4EEAD 		beq	.L313
 2399 169a 0246     		mov	r2, r0
 2400 169c 3E49     		ldr	r1, .L1960+12
 2401 169e 3046     		mov	r0, r6
 2402 16a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2403 16a4 0123     		movs	r3, #1
 2404 16a6 0D93     		str	r3, [sp, #52]
 2405 16a8 FEF7D5BC 		b	.L166
 2406              	.L199:
 2407 16ac 94F85D34 		ldrb	r3, [r4, #1117]	@ zero_extendqisi2
 2408 16b0 002B     		cmp	r3, #0
 2409 16b2 3FF4E0AD 		beq	.L313
 2410 16b6 0127     		movs	r7, #1
 2411 16b8 84F85E74 		strb	r7, [r4, #1118]
 2412 16bc 0D97     		str	r7, [sp, #52]
 2413 16be FEF7CABC 		b	.L166
 2414              	.L198:
 2415 16c2 0023     		movs	r3, #0
 2416 16c4 2046     		mov	r0, r4
 2417 16c6 C4F88C32 		str	r3, [r4, #652]	@ float
 2418 16ca FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 2419 16ce 0123     		movs	r3, #1
 2420 16d0 0D93     		str	r3, [sp, #52]
 2421 16d2 FEF7C0BC 		b	.L166
 2422              	.L205:
 2423 16d6 3149     		ldr	r1, .L1960+16
 2424 16d8 3046     		mov	r0, r6
 2425 16da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2426 16de D4F8F831 		ldr	r3, [r4, #504]
 2427 16e2 CBB1     		cbz	r3, .L478
 2428 16e4 0027     		movs	r7, #0
 2429 16e6 DFF8C0A0 		ldr	r10, .L1960+28
 2430 16ea 04F27228 		addw	r8, r4, #626
 2431              	.L479:
 2432 16ee 3946     		mov	r1, r7
 2433 16f0 2068     		ldr	r0, [r4]
 2434 16f2 18F8019B 		ldrb	r9, [r8], #1	@ zero_extendqisi2
 2435 16f6 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 2436 16fa 0146     		mov	r1, r0
 2437 16fc 2046     		mov	r0, r4
 2438 16fe FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2439 1702 4A46     		mov	r2, r9
 2440 1704 0346     		mov	r3, r0
 2441 1706 5146     		mov	r1, r10
 2442 1708 3046     		mov	r0, r6
 2443 170a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2444 170e D4F8F831 		ldr	r3, [r4, #504]
 2445 1712 0137     		adds	r7, r7, #1
 2446 1714 BB42     		cmp	r3, r7
 2447 1716 EAD8     		bhi	.L479
 2448              	.L478:
 2449 1718 2068     		ldr	r0, [r4]
 2450 171a FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2451 171e 0146     		mov	r1, r0
ARM GAS  /tmp/ccIESeqr.s 			page 44


 2452 1720 2046     		mov	r0, r4
 2453 1722 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2454 1726 1E49     		ldr	r1, .L1960+20
 2455 1728 0246     		mov	r2, r0
 2456 172a 3046     		mov	r0, r6
 2457 172c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2458 1730 0123     		movs	r3, #1
 2459 1732 0D93     		str	r3, [sp, #52]
 2460 1734 FEF78FBC 		b	.L166
 2461              	.L204:
 2462 1738 5021     		movs	r1, #80
 2463 173a 2846     		mov	r0, r5
 2464 173c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2465 1740 0028     		cmp	r0, #0
 2466 1742 43F08880 		bne	.L1818
 2467              	.L1013:
 2468 1746 3527     		movs	r7, #53
 2469              	.L470:
 2470 1748 0023     		movs	r3, #0
 2471 174a 5321     		movs	r1, #83
 2472 174c 2846     		mov	r0, r5
 2473 174e 8DF87831 		strb	r3, [sp, #376]
 2474 1752 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2475 1756 0028     		cmp	r0, #0
 2476 1758 43F0E585 		bne	.L1819
 2477              	.L909:
 2478 175c 0123     		movs	r3, #1
 2479 175e 0D93     		str	r3, [sp, #52]
 2480 1760 FEF779BC 		b	.L166
 2481              	.L203:
 2482 1764 6523     		movs	r3, #101
 2483 1766 0022     		movs	r2, #0
 2484 1768 5EAF     		add	r7, sp, #376
 2485 176a 1CA9     		add	r1, sp, #112
 2486 176c 2846     		mov	r0, r5
 2487 176e 1D93     		str	r3, [sp, #116]
 2488 1770 8DF87821 		strb	r2, [sp, #376]
 2489 1774 1C97     		str	r7, [sp, #112]
 2490 1776 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 2491 177a 3946     		mov	r1, r7
 2492 177c 0948     		ldr	r0, .L1960+24
 2493 177e FFF7FEFF 		bl	_ZN6RepRap10SetMessageEPKc
 2494 1782 0123     		movs	r3, #1
 2495 1784 0D93     		str	r3, [sp, #52]
 2496 1786 FEF766BC 		b	.L166
 2497              	.L1961:
 2498 178a 00BF     		.align	2
 2499              	.L1960:
 2500 178c 9C0C0000 		.word	.LC142
 2501 1790 880C0000 		.word	.LC141
 2502 1794 540C0000 		.word	.LC138
 2503 1798 DC110000 		.word	.LC189
 2504 179c 04060000 		.word	.LC89
 2505 17a0 10060000 		.word	.LC90
 2506 17a4 00000000 		.word	reprap
 2507 17a8 1C060000 		.word	.LC91
 2508              	.L202:
ARM GAS  /tmp/ccIESeqr.s 			page 45


 2509 17ac 2946     		mov	r1, r5
 2510 17ae 2046     		mov	r0, r4
 2511 17b0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2512 17b4 0028     		cmp	r0, #0
 2513 17b6 3FF479AD 		beq	.L704
 2514 17ba 2046     		mov	r0, r4
 2515 17bc FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 2516 17c0 0028     		cmp	r0, #0
 2517 17c2 3FF473AD 		beq	.L704
 2518 17c6 94F85E34 		ldrb	r3, [r4, #1118]	@ zero_extendqisi2
 2519 17ca 002B     		cmp	r3, #0
 2520 17cc 03F0DD84 		beq	.L1820
 2521              	.L468:
 2522 17d0 0023     		movs	r3, #0
 2523 17d2 0122     		movs	r2, #1
 2524 17d4 84F85D34 		strb	r3, [r4, #1117]
 2525 17d8 0D92     		str	r2, [sp, #52]
 2526 17da 84F85E34 		strb	r3, [r4, #1118]
 2527 17de FEF73ABC 		b	.L166
 2528              	.L201:
 2529 17e2 5021     		movs	r1, #80
 2530 17e4 2846     		mov	r0, r5
 2531 17e6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2532 17ea 0028     		cmp	r0, #0
 2533 17ec 02F02784 		beq	.L449
 2534 17f0 2846     		mov	r0, r5
 2535 17f2 2768     		ldr	r7, [r4]
 2536 17f4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2537 17f8 C1B2     		uxtb	r1, r0
 2538 17fa 3846     		mov	r0, r7
 2539 17fc FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 2540 1800 0123     		movs	r3, #1
 2541 1802 0D93     		str	r3, [sp, #52]
 2542 1804 FEF727BC 		b	.L166
 2543              	.L200:
 2544 1808 3146     		mov	r1, r6
 2545 180a 2046     		mov	r0, r4
 2546 180c FFF7FEFF 		bl	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 2547 1810 0123     		movs	r3, #1
 2548 1812 0D93     		str	r3, [sp, #52]
 2549 1814 FEF71FBC 		b	.L166
 2550              	.L295:
 2551 1818 3246     		mov	r2, r6
 2552 181a 2946     		mov	r1, r5
 2553 181c 2046     		mov	r0, r4
 2554 181e FFF7FEFF 		bl	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 2555 1822 0D90     		str	r0, [sp, #52]
 2556 1824 FEF717BC 		b	.L166
 2557              	.L216:
 2558 1828 5321     		movs	r1, #83
 2559 182a 2846     		mov	r0, r5
 2560 182c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2561 1830 8246     		mov	r10, r0
 2562 1832 0028     		cmp	r0, #0
 2563 1834 42F06787 		bne	.L1821
 2564              	.L575:
 2565 1838 D4F8F831 		ldr	r3, [r4, #504]
ARM GAS  /tmp/ccIESeqr.s 			page 46


 2566 183c 002B     		cmp	r3, #0
 2567 183e 02F0EE80 		beq	.L581
 2568 1842 0027     		movs	r7, #0
 2569 1844 04F27229 		addw	r9, r4, #626
 2570 1848 BB46     		mov	fp, r7
 2571 184a 05E0     		b	.L580
 2572              	.L578:
 2573 184c D4F8F831 		ldr	r3, [r4, #504]
 2574 1850 0137     		adds	r7, r7, #1
 2575 1852 BB42     		cmp	r3, r7
 2576 1854 42F2DF80 		bls	.L1822
 2577              	.L580:
 2578 1858 19F8011B 		ldrb	r1, [r9], #1	@ zero_extendqisi2
 2579 185c 2846     		mov	r0, r5
 2580 185e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2581 1862 8046     		mov	r8, r0
 2582 1864 0028     		cmp	r0, #0
 2583 1866 F1D0     		beq	.L578
 2584 1868 2846     		mov	r0, r5
 2585 186a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2586 186e D4F83C12 		ldr	r1, [r4, #572]	@ float
 2587 1872 FFF7FEFF 		bl	__aeabi_fmul
 2588 1876 AB68     		ldr	r3, [r5, #8]
 2589 1878 0246     		mov	r2, r0
 2590 187a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2591 187c 3946     		mov	r1, r7
 2592 187e C3F30013 		ubfx	r3, r3, #4, #1
 2593 1882 2068     		ldr	r0, [r4]
 2594 1884 BAF1000F 		cmp	r10, #0
 2595 1888 01F04987 		beq	.L579
 2596 188c FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 2597 1890 D346     		mov	fp, r10
 2598 1892 DBE7     		b	.L578
 2599              	.L215:
 2600 1894 3246     		mov	r2, r6
 2601 1896 2946     		mov	r1, r5
 2602 1898 2046     		mov	r0, r4
 2603 189a FFF7FEFF 		bl	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 2604 189e 0D90     		str	r0, [sp, #52]
 2605 18a0 FEF7D9BB 		b	.L166
 2606              	.L214:
 2607 18a4 D4F8F831 		ldr	r3, [r4, #504]
 2608 18a8 002B     		cmp	r3, #0
 2609 18aa 02F00B86 		beq	.L1823
 2610 18ae 0027     		movs	r7, #0
 2611 18b0 04F27228 		addw	r8, r4, #626
 2612 18b4 0D97     		str	r7, [sp, #52]
 2613 18b6 05E0     		b	.L544
 2614              	.L541:
 2615 18b8 D4F8F831 		ldr	r3, [r4, #504]
 2616 18bc 0137     		adds	r7, r7, #1
 2617 18be BB42     		cmp	r3, r7
 2618 18c0 41F2E287 		bls	.L1824
 2619              	.L544:
 2620 18c4 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 2621 18c8 2846     		mov	r0, r5
 2622 18ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccIESeqr.s 			page 47


 2623 18ce 8146     		mov	r9, r0
 2624 18d0 0028     		cmp	r0, #0
 2625 18d2 F1D0     		beq	.L541
 2626 18d4 2846     		mov	r0, r5
 2627 18d6 D4F800B0 		ldr	fp, [r4]
 2628 18da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2629 18de D4F83C12 		ldr	r1, [r4, #572]	@ float
 2630 18e2 FFF7FEFF 		bl	__aeabi_fmul
 2631 18e6 CD49     		ldr	r1, .L1962
 2632 18e8 FFF7FEFF 		bl	__aeabi_fmul
 2633 18ec 0146     		mov	r1, r0
 2634 18ee 8246     		mov	r10, r0
 2635 18f0 FFF7FEFF 		bl	__aeabi_fcmpun
 2636 18f4 38B9     		cbnz	r0, .L916
 2637 18f6 4FF07E51 		mov	r1, #1065353216
 2638 18fa 5046     		mov	r0, r10
 2639 18fc FFF7FEFF 		bl	__aeabi_fcmpgt
 2640 1900 0028     		cmp	r0, #0
 2641 1902 02F09883 		beq	.L1825
 2642              	.L916:
 2643 1906 0BEB870B 		add	fp, fp, r7, lsl #2
 2644 190a CDF83490 		str	r9, [sp, #52]
 2645 190e CBF8D4A0 		str	r10, [fp, #212]	@ float
 2646 1912 D1E7     		b	.L541
 2647              	.L286:
 2648 1914 2946     		mov	r1, r5
 2649 1916 2046     		mov	r0, r4
 2650 1918 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2651 191c 0028     		cmp	r0, #0
 2652 191e 3FF4C5AC 		beq	.L704
 2653 1922 0022     		movs	r2, #0
 2654 1924 BE4B     		ldr	r3, .L1962+4
 2655 1926 5EAF     		add	r7, sp, #376
 2656 1928 9B68     		ldr	r3, [r3, #8]
 2657 192a 8DF87821 		strb	r2, [sp, #376]
 2658 192e D3F8FC04 		ldr	r0, [r3, #1276]
 2659 1932 40F29F21 		movw	r1, #671
 2660 1936 0268     		ldr	r2, [r0]
 2661 1938 0097     		str	r7, [sp]
 2662 193a 3346     		mov	r3, r6
 2663 193c D2F80480 		ldr	r8, [r2, #4]
 2664 1940 2A46     		mov	r2, r5
 2665 1942 C047     		blx	r8
 2666 1944 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 2667 1946 002B     		cmp	r3, #0
 2668 1948 0CBF     		ite	eq
 2669 194a 0123     		moveq	r3, #1
 2670 194c 0223     		movne	r3, #2
 2671 194e 0D93     		str	r3, [sp, #52]
 2672 1950 FEF781BB 		b	.L166
 2673              	.L285:
 2674 1954 2946     		mov	r1, r5
 2675 1956 2046     		mov	r0, r4
 2676 1958 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2677 195c 0028     		cmp	r0, #0
 2678 195e 3FF4A5AC 		beq	.L704
 2679 1962 DFF8BCB2 		ldr	fp, .L1962+4
ARM GAS  /tmp/ccIESeqr.s 			page 48


 2680 1966 4B21     		movs	r1, #75
 2681 1968 DBF80880 		ldr	r8, [fp, #8]
 2682 196c 2846     		mov	r0, r5
 2683 196e D8F8FC34 		ldr	r3, [r8, #1276]
 2684 1972 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 2685 1974 0E93     		str	r3, [sp, #56]
 2686 1976 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2687 197a 8146     		mov	r9, r0
 2688 197c 0028     		cmp	r0, #0
 2689 197e 02F0ED84 		beq	.L854
 2690 1982 2846     		mov	r0, r5
 2691 1984 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2692 1988 0828     		cmp	r0, #8
 2693 198a 0746     		mov	r7, r0
 2694 198c 42F2DE84 		bls	.L1826
 2695              	.L855:
 2696 1990 3A46     		mov	r2, r7
 2697 1992 A449     		ldr	r1, .L1962+8
 2698 1994 3046     		mov	r0, r6
 2699 1996 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2700 199a 0223     		movs	r3, #2
 2701 199c 0D93     		str	r3, [sp, #52]
 2702 199e FEF75ABB 		b	.L166
 2703              	.L284:
 2704 19a2 2946     		mov	r1, r5
 2705 19a4 2046     		mov	r0, r4
 2706 19a6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2707 19aa 0028     		cmp	r0, #0
 2708 19ac 3FF47EAC 		beq	.L704
 2709 19b0 DFF86CB2 		ldr	fp, .L1962+4
 2710 19b4 5321     		movs	r1, #83
 2711 19b6 DBF80890 		ldr	r9, [fp, #8]
 2712 19ba 2846     		mov	r0, r5
 2713 19bc D9F8FC34 		ldr	r3, [r9, #1276]
 2714 19c0 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 2715 19c2 0E93     		str	r3, [sp, #56]
 2716 19c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2717 19c8 0746     		mov	r7, r0
 2718 19ca 0028     		cmp	r0, #0
 2719 19cc 43F05285 		bne	.L1827
 2720              	.L845:
 2721 19d0 0023     		movs	r3, #0
 2722 19d2 D9F8FC04 		ldr	r0, [r9, #1276]
 2723 19d6 0DF5BC78 		add	r8, sp, #376
 2724 19da 0268     		ldr	r2, [r0]
 2725 19dc CDF80080 		str	r8, [sp]
 2726 19e0 D2F804A0 		ldr	r10, [r2, #4]
 2727 19e4 40F29B21 		movw	r1, #667
 2728 19e8 8DF87831 		strb	r3, [sp, #376]
 2729 19ec 2A46     		mov	r2, r5
 2730 19ee 3346     		mov	r3, r6
 2731 19f0 D047     		blx	r10
 2732 19f2 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 2733 19f6 0028     		cmp	r0, #0
 2734 19f8 08BF     		it	eq
 2735 19fa 3846     		moveq	r0, r7
 2736 19fc 002B     		cmp	r3, #0
ARM GAS  /tmp/ccIESeqr.s 			page 49


 2737 19fe 0CBF     		ite	eq
 2738 1a00 0123     		moveq	r3, #1
 2739 1a02 0223     		movne	r3, #2
 2740 1a04 0D93     		str	r3, [sp, #52]
 2741 1a06 0028     		cmp	r0, #0
 2742 1a08 3EF425AB 		beq	.L166
 2743              	.L850:
 2744 1a0c D9F8FC04 		ldr	r0, [r9, #1276]
 2745 1a10 0E9A     		ldr	r2, [sp, #56]
 2746 1a12 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 2747 1a14 9342     		cmp	r3, r2
 2748 1a16 44F0A182 		bne	.L1712
 2749 1a1a 04F1A009 		add	r9, r4, #160
 2750              	.L852:
 2751 1a1e 4FF0000E 		mov	lr, #0
 2752 1a22 DBF80820 		ldr	r2, [fp, #8]
 2753 1a26 D4F88032 		ldr	r3, [r4, #640]
 2754 1a2a D2F8FC04 		ldr	r0, [r2, #1276]
 2755 1a2e D4F8FC21 		ldr	r2, [r4, #508]
 2756 1a32 0168     		ldr	r1, [r0]
 2757 1a34 CDF800E0 		str	lr, [sp]
 2758 1a38 D1F82880 		ldr	r8, [r1, #40]
 2759 1a3c 4946     		mov	r1, r9
 2760 1a3e C047     		blx	r8
 2761 1a40 0028     		cmp	r0, #0
 2762 1a42 44F09E83 		bne	.L1828
 2763              	.L853:
 2764 1a46 DBF80800 		ldr	r0, [fp, #8]
 2765 1a4a 4946     		mov	r1, r9
 2766 1a4c 0122     		movs	r2, #1
 2767 1a4e FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 2768 1a52 2046     		mov	r0, r4
 2769 1a54 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 2770 1a58 FEF7FDBA 		b	.L166
 2771              	.L289:
 2772 1a5c 3246     		mov	r2, r6
 2773 1a5e 2946     		mov	r1, r5
 2774 1a60 2046     		mov	r0, r4
 2775 1a62 FFF7FEFF 		bl	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 2776 1a66 0D90     		str	r0, [sp, #52]
 2777 1a68 FEF7F5BA 		b	.L166
 2778              	.L287:
 2779 1a6c 3246     		mov	r2, r6
 2780 1a6e 2946     		mov	r1, r5
 2781 1a70 2068     		ldr	r0, [r4]
 2782 1a72 FFF7FEFF 		bl	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 2783 1a76 0028     		cmp	r0, #0
 2784 1a78 3FF4FDAB 		beq	.L313
 2785              	.L883:
 2786 1a7c 0223     		movs	r3, #2
 2787 1a7e 0D93     		str	r3, [sp, #52]
 2788 1a80 FEF7E9BA 		b	.L166
 2789              	.L292:
 2790 1a84 D4F8F831 		ldr	r3, [r4, #504]
 2791 1a88 002B     		cmp	r3, #0
 2792 1a8a 01F08386 		beq	.L1829
 2793 1a8e 0027     		movs	r7, #0
ARM GAS  /tmp/ccIESeqr.s 			page 50


 2794 1a90 04F27229 		addw	r9, r4, #626
 2795 1a94 BB46     		mov	fp, r7
 2796 1a96 05E0     		b	.L863
 2797              	.L862:
 2798 1a98 D4F8F831 		ldr	r3, [r4, #504]
 2799 1a9c 0137     		adds	r7, r7, #1
 2800 1a9e BB42     		cmp	r3, r7
 2801 1aa0 41F27986 		bls	.L297
 2802              	.L863:
 2803 1aa4 19F8011B 		ldrb	r1, [r9], #1	@ zero_extendqisi2
 2804 1aa8 2846     		mov	r0, r5
 2805 1aaa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2806 1aae 8046     		mov	r8, r0
 2807 1ab0 0028     		cmp	r0, #0
 2808 1ab2 F1D0     		beq	.L862
 2809 1ab4 2846     		mov	r0, r5
 2810 1ab6 D4F800B0 		ldr	fp, [r4]
 2811 1aba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2812 1abe 5346     		mov	r3, r10
 2813 1ac0 0246     		mov	r2, r0
 2814 1ac2 3946     		mov	r1, r7
 2815 1ac4 5846     		mov	r0, fp
 2816 1ac6 C346     		mov	fp, r8
 2817 1ac8 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
 2818 1acc E4E7     		b	.L862
 2819              	.L283:
 2820 1ace 2946     		mov	r1, r5
 2821 1ad0 2046     		mov	r0, r4
 2822 1ad2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2823 1ad6 0028     		cmp	r0, #0
 2824 1ad8 3FF4E8AB 		beq	.L704
 2825 1adc 0022     		movs	r2, #0
 2826 1ade 504B     		ldr	r3, .L1962+4
 2827 1ae0 0DF5BC78 		add	r8, sp, #376
 2828 1ae4 9B68     		ldr	r3, [r3, #8]
 2829 1ae6 88F80020 		strb	r2, [r8]
 2830 1aea D3F8FC04 		ldr	r0, [r3, #1276]
 2831 1aee 40F29A21 		movw	r1, #666
 2832 1af2 0268     		ldr	r2, [r0]
 2833 1af4 CDF80080 		str	r8, [sp]
 2834 1af8 5768     		ldr	r7, [r2, #4]
 2835 1afa 3346     		mov	r3, r6
 2836 1afc 2A46     		mov	r2, r5
 2837 1afe B847     		blx	r7
 2838 1b00 0028     		cmp	r0, #0
 2839 1b02 43F00185 		bne	.L1830
 2840              	.L843:
 2841 1b06 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 2842 1b0a 002B     		cmp	r3, #0
 2843 1b0c 0CBF     		ite	eq
 2844 1b0e 0123     		moveq	r3, #1
 2845 1b10 0223     		movne	r3, #2
 2846 1b12 0D93     		str	r3, [sp, #52]
 2847 1b14 FEF79FBA 		b	.L166
 2848              	.L282:
 2849 1b18 2946     		mov	r1, r5
 2850 1b1a 2046     		mov	r0, r4
ARM GAS  /tmp/ccIESeqr.s 			page 51


 2851 1b1c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2852 1b20 0028     		cmp	r0, #0
 2853 1b22 3FF4C3AB 		beq	.L704
 2854 1b26 DFF8F8B0 		ldr	fp, .L1962+4
 2855 1b2a 4C21     		movs	r1, #76
 2856 1b2c 2846     		mov	r0, r5
 2857 1b2e DBF80870 		ldr	r7, [fp, #8]
 2858 1b32 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2859 1b36 0028     		cmp	r0, #0
 2860 1b38 03F00881 		beq	.L837
 2861              	.L840:
 2862 1b3c D7F8FC04 		ldr	r0, [r7, #1276]
 2863 1b40 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 2864 1b42 032B     		cmp	r3, #3
 2865 1b44 03F00B81 		beq	.L839
 2866 1b48 0321     		movs	r1, #3
 2867 1b4a 3846     		mov	r0, r7
 2868 1b4c FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 2869 1b50 0023     		movs	r3, #0
 2870 1b52 D7F8FC04 		ldr	r0, [r7, #1276]
 2871 1b56 0DF5BC78 		add	r8, sp, #376
 2872 1b5a 0268     		ldr	r2, [r0]
 2873 1b5c CDF80080 		str	r8, [sp]
 2874 1b60 D2F80490 		ldr	r9, [r2, #4]
 2875 1b64 40F29921 		movw	r1, #665
 2876 1b68 88F80030 		strb	r3, [r8]
 2877 1b6c 2A46     		mov	r2, r5
 2878 1b6e 3346     		mov	r3, r6
 2879 1b70 C847     		blx	r9
 2880 1b72 D7F8FC04 		ldr	r0, [r7, #1276]
 2881 1b76 04F1A009 		add	r9, r4, #160
 2882 1b7a 0368     		ldr	r3, [r0]
 2883 1b7c 4A46     		mov	r2, r9
 2884 1b7e D4F8FC11 		ldr	r1, [r4, #508]
 2885 1b82 1B6B     		ldr	r3, [r3, #48]
 2886 1b84 9847     		blx	r3
 2887 1b86 4946     		mov	r1, r9
 2888 1b88 04F18402 		add	r2, r4, #132
 2889 1b8c 2046     		mov	r0, r4
 2890 1b8e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 2891              	.L963:
 2892 1b92 0027     		movs	r7, #0
 2893 1b94 DBF80820 		ldr	r2, [fp, #8]
 2894 1b98 D4F88032 		ldr	r3, [r4, #640]
 2895 1b9c D2F8FC04 		ldr	r0, [r2, #1276]
 2896 1ba0 D4F8FC21 		ldr	r2, [r4, #508]
 2897 1ba4 0168     		ldr	r1, [r0]
 2898 1ba6 0097     		str	r7, [sp]
 2899 1ba8 8F6A     		ldr	r7, [r1, #40]
 2900 1baa 4946     		mov	r1, r9
 2901 1bac B847     		blx	r7
 2902 1bae 0028     		cmp	r0, #0
 2903 1bb0 43F01B87 		bne	.L1831
 2904              	.L841:
 2905 1bb4 DBF80800 		ldr	r0, [fp, #8]
 2906 1bb8 4946     		mov	r1, r9
 2907 1bba 0122     		movs	r2, #1
ARM GAS  /tmp/ccIESeqr.s 			page 52


 2908 1bbc FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 2909 1bc0 2046     		mov	r0, r4
 2910 1bc2 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 2911              	.L964:
 2912 1bc6 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 2913 1bca 002B     		cmp	r3, #0
 2914 1bcc 0CBF     		ite	eq
 2915 1bce 0123     		moveq	r3, #1
 2916 1bd0 0223     		movne	r3, #2
 2917 1bd2 0D93     		str	r3, [sp, #52]
 2918 1bd4 FEF73FBA 		b	.L166
 2919              	.L294:
 2920 1bd8 3246     		mov	r2, r6
 2921 1bda 2946     		mov	r1, r5
 2922 1bdc 2068     		ldr	r0, [r4]
 2923 1bde FFF7FEFF 		bl	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 2924 1be2 0028     		cmp	r0, #0
 2925 1be4 7FF44AAF 		bne	.L883
 2926 1be8 FFF745BB 		b	.L313
 2927              	.L280:
 2928 1bec 4421     		movs	r1, #68
 2929 1bee 2846     		mov	r0, r5
 2930 1bf0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2931 1bf4 0028     		cmp	r0, #0
 2932 1bf6 3FF43EAB 		beq	.L313
 2933 1bfa 2846     		mov	r0, r5
 2934 1bfc FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2935 1c00 D4F80032 		ldr	r3, [r4, #512]
 2936 1c04 9842     		cmp	r0, r3
 2937 1c06 BFF436AB 		bcs	.L313
 2938 1c0a 0246     		mov	r2, r0
 2939 1c0c 3146     		mov	r1, r6
 2940 1c0e 2846     		mov	r0, r5
 2941 1c10 FFF7FEFF 		bl	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
 2942 1c14 0D90     		str	r0, [sp, #52]
 2943 1c16 FEF71EBA 		b	.L166
 2944              	.L1963:
 2945 1c1a 00BF     		.align	2
 2946              	.L1962:
 2947 1c1c 8988883C 		.word	1015580809
 2948 1c20 00000000 		.word	reprap
 2949 1c24 5C130000 		.word	.LC199
 2950              	.L290:
 2951 1c28 7B49     		ldr	r1, .L1964
 2952 1c2a 3046     		mov	r0, r6
 2953 1c2c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2954 1c30 0223     		movs	r3, #2
 2955 1c32 0D93     		str	r3, [sp, #52]
 2956 1c34 FEF70FBA 		b	.L166
 2957              	.L288:
 2958 1c38 3246     		mov	r2, r6
 2959 1c3a 2946     		mov	r1, r5
 2960 1c3c 2046     		mov	r0, r4
 2961 1c3e FFF7FEFF 		bl	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 2962 1c42 0D90     		str	r0, [sp, #52]
 2963 1c44 FEF707BA 		b	.L166
 2964              	.L281:
ARM GAS  /tmp/ccIESeqr.s 			page 53


 2965 1c48 4421     		movs	r1, #68
 2966 1c4a 2846     		mov	r0, r5
 2967 1c4c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2968 1c50 0028     		cmp	r0, #0
 2969 1c52 3FF410AB 		beq	.L313
 2970 1c56 2846     		mov	r0, r5
 2971 1c58 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2972 1c5c 0021     		movs	r1, #0
 2973 1c5e 0746     		mov	r7, r0
 2974 1c60 0020     		movs	r0, #0
 2975 1c62 DFF8CCE1 		ldr	lr, .L1964+24
 2976 1c66 19AB     		add	r3, sp, #100
 2977 1c68 1AAA     		add	r2, sp, #104
 2978 1c6a 8DF86410 		strb	r1, [sp, #100]
 2979 1c6e 1A90     		str	r0, [sp, #104]	@ float
 2980 1c70 4121     		movs	r1, #65
 2981 1c72 1C90     		str	r0, [sp, #112]	@ float
 2982 1c74 2846     		mov	r0, r5
 2983 1c76 CDF878E1 		str	lr, [sp, #376]	@ float
 2984 1c7a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2985 1c7e 19AB     		add	r3, sp, #100
 2986 1c80 1CAA     		add	r2, sp, #112
 2987 1c82 4221     		movs	r1, #66
 2988 1c84 2846     		mov	r0, r5
 2989 1c86 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2990 1c8a 19AB     		add	r3, sp, #100
 2991 1c8c 5EAA     		add	r2, sp, #376
 2992 1c8e 4C21     		movs	r1, #76
 2993 1c90 2846     		mov	r0, r5
 2994 1c92 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2995 1c96 9DF86430 		ldrb	r3, [sp, #100]	@ zero_extendqisi2
 2996 1c9a 002B     		cmp	r3, #0
 2997 1c9c 03F0A782 		beq	.L835
 2998 1ca0 5E99     		ldr	r1, [sp, #376]	@ float
 2999 1ca2 2068     		ldr	r0, [r4]
 3000 1ca4 1C9B     		ldr	r3, [sp, #112]	@ float
 3001 1ca6 0091     		str	r1, [sp]	@ float
 3002 1ca8 1A9A     		ldr	r2, [sp, #104]	@ float
 3003 1caa 3946     		mov	r1, r7
 3004 1cac FFF7FEFF 		bl	_ZN8Platform21SetNonlinearExtrusionEjfff
 3005              	.L836:
 3006 1cb0 0123     		movs	r3, #1
 3007 1cb2 0D93     		str	r3, [sp, #52]
 3008 1cb4 FEF7CFB9 		b	.L166
 3009              	.L184:
 3010 1cb8 0020     		movs	r0, #0
 3011 1cba 6527     		movs	r7, #101
 3012 1cbc 0DF17009 		add	r9, sp, #112
 3013 1cc0 0DF5BC78 		add	r8, sp, #376
 3014 1cc4 8DF86800 		strb	r0, [sp, #104]
 3015 1cc8 88F80000 		strb	r0, [r8]
 3016 1ccc 1AAB     		add	r3, sp, #104
 3017 1cce 4A46     		mov	r2, r9
 3018 1cd0 5021     		movs	r1, #80
 3019 1cd2 2846     		mov	r0, r5
 3020 1cd4 C9F80470 		str	r7, [r9, #4]
 3021 1cd8 C9F80080 		str	r8, [r9]
ARM GAS  /tmp/ccIESeqr.s 			page 54


 3022 1cdc FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 3023 1ce0 9DF86870 		ldrb	r7, [sp, #104]	@ zero_extendqisi2
 3024 1ce4 002F     		cmp	r7, #0
 3025 1ce6 02F07081 		beq	.L381
 3026 1cea 4621     		movs	r1, #70
 3027 1cec 2846     		mov	r0, r5
 3028 1cee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3029 1cf2 0028     		cmp	r0, #0
 3030 1cf4 43F0D482 		bne	.L1832
 3031              	.L382:
 3032 1cf8 6520     		movs	r0, #101
 3033 1cfa 0097     		str	r7, [sp]
 3034 1cfc 4B46     		mov	r3, r9
 3035 1cfe C9F80400 		str	r0, [r9, #4]
 3036 1d02 3246     		mov	r2, r6
 3037 1d04 C9F80080 		str	r8, [r9]
 3038 1d08 2946     		mov	r1, r5
 3039 1d0a 2046     		mov	r0, r4
 3040 1d0c FFF7FEFF 		bl	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
 3041 1d10 0D90     		str	r0, [sp, #52]
 3042 1d12 FEF7A0B9 		b	.L166
 3043              	.L264:
 3044 1d16 D4F8F831 		ldr	r3, [r4, #504]
 3045 1d1a 002B     		cmp	r3, #0
 3046 1d1c 02F05684 		beq	.L1833
 3047 1d20 0027     		movs	r7, #0
 3048 1d22 04F27228 		addw	r8, r4, #626
 3049 1d26 0D97     		str	r7, [sp, #52]
 3050 1d28 05E0     		b	.L754
 3051              	.L751:
 3052 1d2a D4F8F831 		ldr	r3, [r4, #504]
 3053 1d2e 0137     		adds	r7, r7, #1
 3054 1d30 BB42     		cmp	r3, r7
 3055 1d32 41F21487 		bls	.L1834
 3056              	.L754:
 3057 1d36 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 3058 1d3a 2846     		mov	r0, r5
 3059 1d3c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3060 1d40 8146     		mov	r9, r0
 3061 1d42 0028     		cmp	r0, #0
 3062 1d44 F1D0     		beq	.L751
 3063 1d46 2846     		mov	r0, r5
 3064 1d48 D4F800B0 		ldr	fp, [r4]
 3065 1d4c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3066 1d50 D4F83C12 		ldr	r1, [r4, #572]	@ float
 3067 1d54 FFF7FEFF 		bl	__aeabi_fmul
 3068 1d58 3049     		ldr	r1, .L1964+4
 3069 1d5a FFF7FEFF 		bl	__aeabi_fmul
 3070 1d5e 0146     		mov	r1, r0
 3071 1d60 8246     		mov	r10, r0
 3072 1d62 FFF7FEFF 		bl	__aeabi_fcmpun
 3073 1d66 30B9     		cbnz	r0, .L952
 3074 1d68 2D49     		ldr	r1, .L1964+8
 3075 1d6a 5046     		mov	r0, r10
 3076 1d6c FFF7FEFF 		bl	__aeabi_fcmpgt
 3077 1d70 08B9     		cbnz	r0, .L952
 3078 1d72 DFF8ACA0 		ldr	r10, .L1964+8
ARM GAS  /tmp/ccIESeqr.s 			page 55


 3079              	.L952:
 3080 1d76 07F15202 		add	r2, r7, #82
 3081 1d7a CDF83490 		str	r9, [sp, #52]
 3082 1d7e 4BF822A0 		str	r10, [fp, r2, lsl #2]	@ float
 3083 1d82 D2E7     		b	.L751
 3084              	.L263:
 3085 1d84 5321     		movs	r1, #83
 3086 1d86 2846     		mov	r0, r5
 3087 1d88 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3088 1d8c 0028     		cmp	r0, #0
 3089 1d8e 42F0A785 		bne	.L1835
 3090 1d92 4821     		movs	r1, #72
 3091 1d94 2846     		mov	r0, r5
 3092 1d96 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3093 1d9a 0028     		cmp	r0, #0
 3094 1d9c 42F0B085 		bne	.L950
 3095 1da0 2049     		ldr	r1, .L1964+12
 3096 1da2 94F87A02 		ldrb	r0, [r4, #634]	@ zero_extendqisi2
 3097 1da6 94F87922 		ldrb	r2, [r4, #633]	@ zero_extendqisi2
 3098 1daa 1F4B     		ldr	r3, .L1964+16
 3099 1dac 002A     		cmp	r2, #0
 3100 1dae 0CBF     		ite	eq
 3101 1db0 1A46     		moveq	r2, r3
 3102 1db2 0A46     		movne	r2, r1
 3103 1db4 0028     		cmp	r0, #0
 3104 1db6 18BF     		it	ne
 3105 1db8 0B46     		movne	r3, r1
 3106 1dba 1C49     		ldr	r1, .L1964+20
 3107 1dbc 3046     		mov	r0, r6
 3108 1dbe FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3109 1dc2 0123     		movs	r3, #1
 3110 1dc4 0D93     		str	r3, [sp, #52]
 3111 1dc6 FEF746B9 		b	.L166
 3112              	.L193:
 3113 1dca 2946     		mov	r1, r5
 3114 1dcc 2046     		mov	r0, r4
 3115 1dce FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 3116 1dd2 0123     		movs	r3, #1
 3117 1dd4 0D93     		str	r3, [sp, #52]
 3118 1dd6 FEF73EB9 		b	.L166
 3119              	.L192:
 3120 1dda 5021     		movs	r1, #80
 3121 1ddc 2846     		mov	r0, r5
 3122 1dde FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3123 1de2 0028     		cmp	r0, #0
 3124 1de4 3FF447AA 		beq	.L313
 3125 1de8 0022     		movs	r2, #0
 3126 1dea 6523     		movs	r3, #101
 3127 1dec 5EAF     		add	r7, sp, #376
 3128 1dee 1CA9     		add	r1, sp, #112
 3129 1df0 2846     		mov	r0, r5
 3130 1df2 8DF87821 		strb	r2, [sp, #376]
 3131 1df6 1D93     		str	r3, [sp, #116]
 3132 1df8 1C97     		str	r7, [sp, #112]
 3133 1dfa FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 3134 1dfe 6223     		movs	r3, #98
 3135 1e00 3A46     		mov	r2, r7
ARM GAS  /tmp/ccIESeqr.s 			page 56


 3136 1e02 0093     		str	r3, [sp]
 3137 1e04 2946     		mov	r1, r5
 3138 1e06 0123     		movs	r3, #1
 3139 1e08 2046     		mov	r0, r4
 3140 1e0a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3141 1e0e 0123     		movs	r3, #1
 3142 1e10 0D93     		str	r3, [sp, #52]
 3143 1e12 FEF720B9 		b	.L166
 3144              	.L1965:
 3145 1e16 00BF     		.align	2
 3146              	.L1964:
 3147 1e18 3C110000 		.word	.LC181
 3148 1e1c 8988883C 		.word	1015580809
 3149 1e20 CDCCCC3D 		.word	1036831949
 3150 1e24 CC000000 		.word	.LC30
 3151 1e28 A0000000 		.word	.LC25
 3152 1e2c F40D0000 		.word	.LC158
 3153 1e30 CDCC4C3E 		.word	1045220557
 3154              	.L232:
 3155 1e34 4821     		movs	r1, #72
 3156 1e36 2846     		mov	r0, r5
 3157 1e38 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3158 1e3c 0028     		cmp	r0, #0
 3159 1e3e 3FF41AAA 		beq	.L313
 3160 1e42 2846     		mov	r0, r5
 3161 1e44 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3162 1e48 0328     		cmp	r0, #3
 3163 1e4a 8046     		mov	r8, r0
 3164 1e4c 3FF613AA 		bhi	.L313
 3165 1e50 DFF8FCB4 		ldr	fp, .L1966
 3166 1e54 00F1080A 		add	r10, r0, #8
 3167 1e58 DBF80C30 		ldr	r3, [fp, #12]
 3168 1e5c 4FF0000E 		mov	lr, #0
 3169 1e60 03EB8A03 		add	r3, r3, r10, lsl #2
 3170 1e64 5F68     		ldr	r7, [r3, #4]
 3171 1e66 0DF17009 		add	r9, sp, #112
 3172 1e6a BB6B     		ldr	r3, [r7, #56]	@ float
 3173 1e6c 3A6B     		ldr	r2, [r7, #48]	@ float
 3174 1e6e D7F834C0 		ldr	ip, [r7, #52]	@ float
 3175 1e72 1693     		str	r3, [sp, #88]	@ float
 3176 1e74 FB6B     		ldr	r3, [r7, #60]	@ float
 3177 1e76 97F84710 		ldrb	r1, [r7, #71]	@ zero_extendqisi2
 3178 1e7a 1793     		str	r3, [sp, #92]	@ float
 3179 1e7c 3B6C     		ldr	r3, [r7, #64]	@ float
 3180 1e7e B7F84400 		ldrh	r0, [r7, #68]
 3181 1e82 1093     		str	r3, [sp, #64]	@ float
 3182 1e84 1AAB     		add	r3, sp, #104
 3183 1e86 1190     		str	r0, [sp, #68]
 3184 1e88 0E93     		str	r3, [sp, #56]
 3185 1e8a 18A8     		add	r0, sp, #96
 3186 1e8c 19AB     		add	r3, sp, #100
 3187 1e8e 0D90     		str	r0, [sp, #52]
 3188 1e90 0E98     		ldr	r0, [sp, #56]
 3189 1e92 0F93     		str	r3, [sp, #60]
 3190 1e94 81F00101 		eor	r1, r1, #1
 3191 1e98 109B     		ldr	r3, [sp, #64]	@ float
 3192 1e9a 0160     		str	r1, [r0]
ARM GAS  /tmp/ccIESeqr.s 			page 57


 3193 1e9c 0F98     		ldr	r0, [sp, #60]
 3194 1e9e CDF854C0 		str	ip, [sp, #84]	@ float
 3195 1ea2 0DF14F0C 		add	ip, sp, #79
 3196 1ea6 1893     		str	r3, [sp, #96]	@ float
 3197 1ea8 6346     		mov	r3, ip
 3198 1eaa 8446     		mov	ip, r0
 3199 1eac 1198     		ldr	r0, [sp, #68]
 3200 1eae 1492     		str	r2, [sp, #80]	@ float
 3201 1eb0 CCF80000 		str	r0, [ip]
 3202 1eb4 14AA     		add	r2, sp, #80
 3203 1eb6 4121     		movs	r1, #65
 3204 1eb8 2846     		mov	r0, r5
 3205 1eba 8DF84FE0 		strb	lr, [sp, #79]
 3206 1ebe C9F800E0 		str	lr, [r9]
 3207 1ec2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3208 1ec6 0DF14F01 		add	r1, sp, #79
 3209 1eca 0B46     		mov	r3, r1
 3210 1ecc 15A9     		add	r1, sp, #84
 3211 1ece 0A46     		mov	r2, r1
 3212 1ed0 2846     		mov	r0, r5
 3213 1ed2 4321     		movs	r1, #67
 3214 1ed4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3215 1ed8 0DF14F01 		add	r1, sp, #79
 3216 1edc 0B46     		mov	r3, r1
 3217 1ede 16A9     		add	r1, sp, #88
 3218 1ee0 0A46     		mov	r2, r1
 3219 1ee2 2846     		mov	r0, r5
 3220 1ee4 4421     		movs	r1, #68
 3221 1ee6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3222 1eea 0DF14F01 		add	r1, sp, #79
 3223 1eee 0B46     		mov	r3, r1
 3224 1ef0 0E9A     		ldr	r2, [sp, #56]
 3225 1ef2 4221     		movs	r1, #66
 3226 1ef4 2846     		mov	r0, r5
 3227 1ef6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3228 1efa 17A9     		add	r1, sp, #92
 3229 1efc 0A46     		mov	r2, r1
 3230 1efe 0DF14F03 		add	r3, sp, #79
 3231 1f02 5321     		movs	r1, #83
 3232 1f04 2846     		mov	r0, r5
 3233 1f06 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3234 1f0a 0DF14F03 		add	r3, sp, #79
 3235 1f0e 0D9A     		ldr	r2, [sp, #52]
 3236 1f10 5621     		movs	r1, #86
 3237 1f12 2846     		mov	r0, r5
 3238 1f14 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3239 1f18 0DF14F03 		add	r3, sp, #79
 3240 1f1c 4A46     		mov	r2, r9
 3241 1f1e 4921     		movs	r1, #73
 3242 1f20 2846     		mov	r0, r5
 3243 1f22 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3244 1f26 0DF14F03 		add	r3, sp, #79
 3245 1f2a 0F9A     		ldr	r2, [sp, #60]
 3246 1f2c 4621     		movs	r1, #70
 3247 1f2e 2846     		mov	r0, r5
 3248 1f30 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3249 1f34 9DF84F30 		ldrb	r3, [sp, #79]	@ zero_extendqisi2
ARM GAS  /tmp/ccIESeqr.s 			page 58


 3250 1f38 002B     		cmp	r3, #0
 3251 1f3a 03F0BD84 		beq	.L650
 3252 1f3e D9F80020 		ldr	r2, [r9]
 3253 1f42 012A     		cmp	r2, #1
 3254 1f44 05D0     		beq	.L651
 3255 1f46 A2F1030E 		sub	lr, r2, #3
 3256 1f4a DEF10003 		rsbs	r3, lr, #0
 3257 1f4e 43EB0E03 		adc	r3, r3, lr
 3258              	.L651:
 3259 1f52 0E9A     		ldr	r2, [sp, #56]
 3260 1f54 DDF85CC0 		ldr	ip, [sp, #92]	@ float
 3261 1f58 1768     		ldr	r7, [r2]
 3262 1f5a 0F9A     		ldr	r2, [sp, #60]
 3263 1f5c B7FA87F7 		clz	r7, r7
 3264 1f60 1068     		ldr	r0, [r2]
 3265 1f62 0D9A     		ldr	r2, [sp, #52]
 3266 1f64 B0F57A7F 		cmp	r0, #1000
 3267 1f68 28BF     		it	cs
 3268 1f6a 4FF47A70 		movcs	r0, #1000
 3269 1f6e D2F80080 		ldr	r8, [r2]	@ float
 3270 1f72 80B2     		uxth	r0, r0
 3271 1f74 7F09     		lsrs	r7, r7, #5
 3272 1f76 0490     		str	r0, [sp, #16]
 3273 1f78 0297     		str	r7, [sp, #8]
 3274 1f7a CDF800C0 		str	ip, [sp]	@ float
 3275 1f7e CDF80480 		str	r8, [sp, #4]	@ float
 3276 1f82 0393     		str	r3, [sp, #12]
 3277 1f84 DBF80C30 		ldr	r3, [fp, #12]
 3278 1f88 DDF858E0 		ldr	lr, [sp, #88]	@ float
 3279 1f8c 03EB8A00 		add	r0, r3, r10, lsl #2
 3280 1f90 1499     		ldr	r1, [sp, #80]	@ float
 3281 1f92 159A     		ldr	r2, [sp, #84]	@ float
 3282 1f94 7346     		mov	r3, lr
 3283 1f96 4068     		ldr	r0, [r0, #4]
 3284 1f98 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 3285 1f9c 0028     		cmp	r0, #0
 3286 1f9e 04F0F880 		beq	.L1836
 3287              	.L653:
 3288 1fa2 D9F80030 		ldr	r3, [r9]
 3289 1fa6 DBF80C20 		ldr	r2, [fp, #12]
 3290 1faa 023B     		subs	r3, r3, #2
 3291 1fac 012B     		cmp	r3, #1
 3292 1fae 8CBF     		ite	hi
 3293 1fb0 0023     		movhi	r3, #0
 3294 1fb2 0123     		movls	r3, #1
 3295 1fb4 02EB8A0A 		add	r10, r2, r10, lsl #2
 3296 1fb8 DAF80420 		ldr	r2, [r10, #4]
 3297 1fbc 82F87D30 		strb	r3, [r2, #125]
 3298              	.L654:
 3299 1fc0 0123     		movs	r3, #1
 3300 1fc2 0D93     		str	r3, [sp, #52]
 3301 1fc4 FEF747B8 		b	.L166
 3302              	.L231:
 3303 1fc8 3246     		mov	r2, r6
 3304 1fca 2946     		mov	r1, r5
 3305 1fcc 2046     		mov	r0, r4
 3306 1fce FFF7FEFF 		bl	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
ARM GAS  /tmp/ccIESeqr.s 			page 59


 3307 1fd2 0D90     		str	r0, [sp, #52]
 3308 1fd4 FEF73FB8 		b	.L166
 3309              	.L230:
 3310 1fd8 3346     		mov	r3, r6
 3311 1fda 0022     		movs	r2, #0
 3312 1fdc 2946     		mov	r1, r5
 3313 1fde 2046     		mov	r0, r4
 3314 1fe0 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 3315 1fe4 0123     		movs	r3, #1
 3316 1fe6 0D93     		str	r3, [sp, #52]
 3317 1fe8 FEF735B8 		b	.L166
 3318              	.L229:
 3319 1fec 4821     		movs	r1, #72
 3320 1fee 2846     		mov	r0, r5
 3321 1ff0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3322 1ff4 0028     		cmp	r0, #0
 3323 1ff6 02F0B080 		beq	.L640
 3324 1ffa 2846     		mov	r0, r5
 3325 1ffc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3326 2000 5321     		movs	r1, #83
 3327 2002 0746     		mov	r7, r0
 3328 2004 2846     		mov	r0, r5
 3329 2006 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3330 200a 0028     		cmp	r0, #0
 3331 200c 02F01387 		beq	.L641
 3332 2010 2846     		mov	r0, r5
 3333 2012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3334 2016 8146     		mov	r9, r0
 3335              	.L642:
 3336 2018 5021     		movs	r1, #80
 3337 201a 2846     		mov	r0, r5
 3338 201c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3339 2020 0028     		cmp	r0, #0
 3340 2022 43F04781 		bne	.L1837
 3341 2026 CA4B     		ldr	r3, .L1966
 3342 2028 DB68     		ldr	r3, [r3, #12]
 3343 202a 03EB8703 		add	r3, r3, r7, lsl #2
 3344 202e 5B6A     		ldr	r3, [r3, #36]
 3345 2030 D3F83C80 		ldr	r8, [r3, #60]	@ float
 3346              	.L644:
 3347 2034 032F     		cmp	r7, #3
 3348 2036 42F20E87 		bls	.L645
 3349 203a C649     		ldr	r1, .L1966+4
 3350 203c 3046     		mov	r0, r6
 3351 203e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3352 2042 0123     		movs	r3, #1
 3353 2044 0D93     		str	r3, [sp, #52]
 3354 2046 FEF706B8 		b	.L166
 3355              	.L228:
 3356 204a 5021     		movs	r1, #80
 3357 204c 2846     		mov	r0, r5
 3358 204e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3359 2052 BF4B     		ldr	r3, .L1966
 3360 2054 0028     		cmp	r0, #0
 3361 2056 42F08985 		bne	.L1838
 3362 205a D968     		ldr	r1, [r3, #12]
 3363 205c BE4A     		ldr	r2, .L1966+8
ARM GAS  /tmp/ccIESeqr.s 			page 60


 3364 205e 91F88100 		ldrb	r0, [r1, #129]	@ zero_extendqisi2
 3365 2062 BE4B     		ldr	r3, .L1966+12
 3366 2064 BE49     		ldr	r1, .L1966+16
 3367 2066 0028     		cmp	r0, #0
 3368 2068 18BF     		it	ne
 3369 206a 1A46     		movne	r2, r3
 3370 206c 3046     		mov	r0, r6
 3371 206e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3372 2072 0123     		movs	r3, #1
 3373 2074 0D93     		str	r3, [sp, #52]
 3374 2076 FDF7EEBF 		b	.L166
 3375              	.L227:
 3376 207a 3346     		mov	r3, r6
 3377 207c 0122     		movs	r2, #1
 3378 207e 2946     		mov	r1, r5
 3379 2080 2046     		mov	r0, r4
 3380 2082 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 3381 2086 0123     		movs	r3, #1
 3382 2088 0D93     		str	r3, [sp, #52]
 3383 208a FDF7E4BF 		b	.L166
 3384              	.L226:
 3385 208e 5021     		movs	r1, #80
 3386 2090 2846     		mov	r0, r5
 3387 2092 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3388 2096 0028     		cmp	r0, #0
 3389 2098 42F07D85 		bne	.L1839
 3390 209c 4FF47A77 		mov	r7, #1000
 3391              	.L636:
 3392 20a0 5321     		movs	r1, #83
 3393 20a2 2846     		mov	r0, r5
 3394 20a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3395 20a8 0028     		cmp	r0, #0
 3396 20aa 42F06E85 		bne	.L1840
 3397 20ae 41F2F811 		movw	r1, #4600
 3398              	.L637:
 3399 20b2 3A46     		mov	r2, r7
 3400 20b4 A648     		ldr	r0, .L1966
 3401 20b6 FFF7FEFF 		bl	_ZN6RepRap4BeepEjj
 3402 20ba 0123     		movs	r3, #1
 3403 20bc 0D93     		str	r3, [sp, #52]
 3404 20be FDF7CABF 		b	.L166
 3405              	.L225:
 3406 20c2 A348     		ldr	r0, .L1966
 3407 20c4 FFF7FEFF 		bl	_ZN6RepRap10ClearAlertEv
 3408 20c8 5021     		movs	r1, #80
 3409 20ca 2846     		mov	r0, r5
 3410 20cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3411 20d0 8146     		mov	r9, r0
 3412 20d2 0028     		cmp	r0, #0
 3413 20d4 42F03F85 		bne	.L1841
 3414              	.L633:
 3415 20d8 04F13808 		add	r8, r4, #56
 3416 20dc 04F11807 		add	r7, r4, #24
 3417              	.L635:
 3418 20e0 57F8040B 		ldr	r0, [r7], #4
 3419 20e4 10B1     		cbz	r0, .L634
 3420 20e6 4946     		mov	r1, r9
ARM GAS  /tmp/ccIESeqr.s 			page 61


 3421 20e8 FFF7FEFF 		bl	_ZN11GCodeBuffer19MessageAcknowledgedEb
 3422              	.L634:
 3423 20ec B845     		cmp	r8, r7
 3424 20ee F7D1     		bne	.L635
 3425 20f0 FFF7C1B8 		b	.L313
 3426              	.L176:
 3427 20f4 2046     		mov	r0, r4
 3428 20f6 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 3429 20fa 0028     		cmp	r0, #0
 3430 20fc 7FF4BBA8 		bne	.L313
 3431 2100 2046     		mov	r0, r4
 3432 2102 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
 3433 2106 0746     		mov	r7, r0
 3434 2108 0028     		cmp	r0, #0
 3435 210a 7FF4B4A8 		bne	.L313
 3436 210e 2946     		mov	r1, r5
 3437 2110 2046     		mov	r0, r4
 3438 2112 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3439 2116 0028     		cmp	r0, #0
 3440 2118 3FF4C8A8 		beq	.L704
 3441 211c 2046     		mov	r0, r4
 3442 211e FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 3443 2122 0028     		cmp	r0, #0
 3444 2124 43F05587 		bne	.L1842
 3445 2128 D4F85C32 		ldr	r3, [r4, #604]
 3446 212c 002B     		cmp	r3, #0
 3447 212e 04F0F880 		beq	.L1843
 3448 2132 D4F86032 		ldr	r3, [r4, #608]
 3449 2136 002B     		cmp	r3, #0
 3450 2138 0CBF     		ite	eq
 3451 213a 0127     		moveq	r7, #1
 3452 213c 0027     		movne	r7, #0
 3453 213e 26D0     		beq	.L366
 3454 2140 236C     		ldr	r3, [r4, #64]
 3455 2142 1868     		ldr	r0, [r3]
 3456 2144 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3457 2148 AA68     		ldr	r2, [r5, #8]
 3458 214a 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 3459 214c 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 3460 214e 226C     		ldr	r2, [r4, #64]
 3461 2150 61F30003 		bfi	r3, r1, #0, #1
 3462 2154 0376     		strb	r3, [r0, #24]
 3463 2156 1068     		ldr	r0, [r2]
 3464 2158 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3465 215c AA68     		ldr	r2, [r5, #8]
 3466 215e 236C     		ldr	r3, [r4, #64]
 3467 2160 5268     		ldr	r2, [r2, #4]	@ float
 3468 2162 4260     		str	r2, [r0, #4]	@ float
 3469 2164 1868     		ldr	r0, [r3]
 3470 2166 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3471 216a AB68     		ldr	r3, [r5, #8]
 3472 216c 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 3473 216e 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 3474 2170 C3F38013 		ubfx	r3, r3, #6, #1
 3475 2174 63F38612 		bfi	r2, r3, #6, #1
 3476 2178 0276     		strb	r2, [r0, #24]
 3477 217a D4F86012 		ldr	r1, [r4, #608]
ARM GAS  /tmp/ccIESeqr.s 			page 62


 3478 217e D4F85C02 		ldr	r0, [r4, #604]
 3479 2182 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 3480 2186 D4F80831 		ldr	r3, [r4, #264]	@ float
 3481 218a C4F80C31 		str	r3, [r4, #268]	@ float
 3482              	.L366:
 3483 218e 3946     		mov	r1, r7
 3484 2190 2046     		mov	r0, r4
 3485 2192 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 3486 2196 0123     		movs	r3, #1
 3487 2198 0D93     		str	r3, [sp, #52]
 3488 219a FDF75CBF 		b	.L166
 3489              	.L175:
 3490 219e 236C     		ldr	r3, [r4, #64]
 3491 21a0 1868     		ldr	r0, [r3]
 3492 21a2 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3493 21a6 8368     		ldr	r3, [r0, #8]
 3494 21a8 002B     		cmp	r3, #0
 3495 21aa 01F07886 		beq	.L357
 3496 21ae 236C     		ldr	r3, [r4, #64]
 3497 21b0 1B68     		ldr	r3, [r3]
 3498 21b2 9D42     		cmp	r5, r3
 3499 21b4 01F07386 		beq	.L357
 3500 21b8 6A49     		ldr	r1, .L1966+20
 3501 21ba 3046     		mov	r0, r6
 3502 21bc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3503 21c0 0223     		movs	r3, #2
 3504 21c2 0D93     		str	r3, [sp, #52]
 3505 21c4 FDF747BF 		b	.L166
 3506              	.L174:
 3507 21c8 2946     		mov	r1, r5
 3508 21ca 2046     		mov	r0, r4
 3509 21cc FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3510 21d0 0028     		cmp	r0, #0
 3511 21d2 3FF46BA8 		beq	.L704
 3512 21d6 5021     		movs	r1, #80
 3513 21d8 2846     		mov	r0, r5
 3514 21da FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3515 21de 0028     		cmp	r0, #0
 3516 21e0 43F03C81 		bne	.L1844
 3517 21e4 0146     		mov	r1, r0
 3518              	.L356:
 3519 21e6 2368     		ldr	r3, [r4]
 3520 21e8 3246     		mov	r2, r6
 3521 21ea D3F86805 		ldr	r0, [r3, #1384]
 3522 21ee FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjRK9StringRef
 3523 21f2 0D90     		str	r0, [sp, #52]
 3524 21f4 FDF72FBF 		b	.L166
 3525              	.L173:
 3526 21f8 2946     		mov	r1, r5
 3527 21fa 2046     		mov	r0, r4
 3528 21fc FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3529 2200 0028     		cmp	r0, #0
 3530 2202 3FF453A8 		beq	.L704
 3531 2206 5021     		movs	r1, #80
 3532 2208 2846     		mov	r0, r5
 3533 220a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3534 220e 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 63


 3535 2210 43F02A81 		bne	.L1845
 3536 2214 0146     		mov	r1, r0
 3537              	.L355:
 3538 2216 2368     		ldr	r3, [r4]
 3539 2218 3246     		mov	r2, r6
 3540 221a D3F86805 		ldr	r0, [r3, #1384]
 3541 221e 0123     		movs	r3, #1
 3542 2220 FFF7FEFF 		bl	_ZN11MassStorage5MountEjRK9StringRefb
 3543 2224 0D90     		str	r0, [sp, #52]
 3544 2226 FDF716BF 		b	.L166
 3545              	.L172:
 3546 222a 2946     		mov	r1, r5
 3547 222c 2046     		mov	r0, r4
 3548 222e FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3549 2232 8246     		mov	r10, r0
 3550 2234 0028     		cmp	r0, #0
 3551 2236 3FF439A8 		beq	.L704
 3552 223a 5321     		movs	r1, #83
 3553 223c 2846     		mov	r0, r5
 3554 223e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3555 2242 0028     		cmp	r0, #0
 3556 2244 43F08C81 		bne	.L1846
 3557 2248 0646     		mov	r6, r0
 3558              	.L336:
 3559 224a 5221     		movs	r1, #82
 3560 224c 2846     		mov	r0, r5
 3561 224e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3562 2252 0028     		cmp	r0, #0
 3563 2254 43F07E81 		bne	.L1847
 3564 2258 0746     		mov	r7, r0
 3565              	.L337:
 3566 225a 0023     		movs	r3, #0
 3567 225c 0DF17009 		add	r9, sp, #112
 3568 2260 5021     		movs	r1, #80
 3569 2262 2846     		mov	r0, r5
 3570 2264 89F80030 		strb	r3, [r9]
 3571 2268 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3572 226c 0DF5BC78 		add	r8, sp, #376
 3573 2270 6523     		movs	r3, #101
 3574 2272 0028     		cmp	r0, #0
 3575 2274 02F00D87 		beq	.L338
 3576 2278 4146     		mov	r1, r8
 3577 227a 2846     		mov	r0, r5
 3578 227c C8F80430 		str	r3, [r8, #4]
 3579 2280 C8F80090 		str	r9, [r8]
 3580 2284 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 3581              	.L339:
 3582 2288 022E     		cmp	r6, #2
 3583 228a 03F03084 		beq	.L1848
 3584 228e 032E     		cmp	r6, #3
 3585 2290 03F08081 		beq	.L1849
 3586 2294 1AAB     		add	r3, sp, #104
 3587 2296 1846     		mov	r0, r3
 3588 2298 0E93     		str	r3, [sp, #56]
 3589 229a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3590 229e 0646     		mov	r6, r0
 3591 22a0 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 64


 3592 22a2 3FF403A8 		beq	.L704
 3593 22a6 2068     		ldr	r0, [r4]
 3594 22a8 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3595 22ac 0028     		cmp	r0, #0
 3596 22ae 43F04387 		bne	.L1850
 3597              	.L347:
 3598 22b2 0E9B     		ldr	r3, [sp, #56]
 3599 22b4 2C49     		ldr	r1, .L1966+24
 3600 22b6 1868     		ldr	r0, [r3]
 3601 22b8 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3602              	.L890:
 3603 22bc 636C     		ldr	r3, [r4, #68]
 3604 22be 1B68     		ldr	r3, [r3]
 3605 22c0 9D42     		cmp	r5, r3
 3606 22c2 03F0A587 		beq	.L348
 3607 22c6 E36B     		ldr	r3, [r4, #60]
 3608 22c8 1B68     		ldr	r3, [r3]
 3609 22ca 9D42     		cmp	r5, r3
 3610 22cc 03F0A087 		beq	.L348
 3611              	.L349:
 3612 22d0 2368     		ldr	r3, [r4]
 3613 22d2 4946     		mov	r1, r9
 3614 22d4 D3F86805 		ldr	r0, [r3, #1384]
 3615 22d8 4246     		mov	r2, r8
 3616 22da FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3617 22de 0028     		cmp	r0, #0
 3618 22e0 03F06687 		beq	.L350
 3619 22e4 A946     		mov	r9, r5
 3620 22e6 214F     		ldr	r7, .L1966+28
 3621 22e8 DFF884B0 		ldr	fp, .L1966+32
 3622 22ec 0E9D     		ldr	r5, [sp, #56]
 3623              	.L353:
 3624 22ee 002E     		cmp	r6, #0
 3625 22f0 02F04A85 		beq	.L351
 3626 22f4 2C23     		movs	r3, #44
 3627 22f6 2222     		movs	r2, #34
 3628 22f8 2868     		ldr	r0, [r5]
 3629 22fa 5946     		mov	r1, fp
 3630 22fc 8DE80C00 		stm	sp, {r2, r3}
 3631 2300 0DF27913 		addw	r3, sp, #377
 3632 2304 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3633              	.L352:
 3634 2308 2368     		ldr	r3, [r4]
 3635 230a 4146     		mov	r1, r8
 3636 230c D3F86805 		ldr	r0, [r3, #1384]
 3637 2310 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3638 2314 0028     		cmp	r0, #0
 3639 2316 EAD1     		bne	.L353
 3640 2318 4D46     		mov	r5, r9
 3641 231a 8146     		mov	r9, r0
 3642 231c 56B1     		cbz	r6, .L343
 3643 231e 0E9B     		ldr	r3, [sp, #56]
 3644 2320 1E68     		ldr	r6, [r3]
 3645 2322 3046     		mov	r0, r6
 3646 2324 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3647 2328 411E     		subs	r1, r0, #1
 3648 232a 3046     		mov	r0, r6
ARM GAS  /tmp/ccIESeqr.s 			page 65


 3649 232c FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3650 2330 80F80090 		strb	r9, [r0]
 3651              	.L343:
 3652 2334 2946     		mov	r1, r5
 3653 2336 2046     		mov	r0, r4
 3654 2338 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3655 233c 0E9B     		ldr	r3, [sp, #56]
 3656 233e 2946     		mov	r1, r5
 3657 2340 1B68     		ldr	r3, [r3]
 3658 2342 2046     		mov	r0, r4
 3659 2344 0022     		movs	r2, #0
 3660 2346 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3661 234a FDF78BBE 		b	.L1671
 3662              	.L1967:
 3663 234e 00BF     		.align	2
 3664              	.L1966:
 3665 2350 00000000 		.word	reprap
 3666 2354 88090000 		.word	.LC117
 3667 2358 2C000000 		.word	.LC16
 3668 235c 24000000 		.word	.LC15
 3669 2360 50090000 		.word	.LC116
 3670 2364 40120000 		.word	.LC193
 3671 2368 30120000 		.word	.LC192
 3672 236c 5C020000 		.word	.LC55
 3673 2370 50020000 		.word	.LC54
 3674              	.L272:
 3675 2374 5321     		movs	r1, #83
 3676 2376 2846     		mov	r0, r5
 3677 2378 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3678 237c 0028     		cmp	r0, #0
 3679 237e 42F06382 		bne	.L1851
 3680 2382 4FF0010B 		mov	fp, #1
 3681              	.L798:
 3682 2386 D4F8F831 		ldr	r3, [r4, #504]
 3683 238a 002B     		cmp	r3, #0
 3684 238c 01F07B83 		beq	.L804
 3685 2390 0027     		movs	r7, #0
 3686 2392 04F27228 		addw	r8, r4, #626
 3687 2396 BA46     		mov	r10, r7
 3688 2398 05E0     		b	.L803
 3689              	.L802:
 3690 239a D4F8F831 		ldr	r3, [r4, #504]
 3691 239e 0137     		adds	r7, r7, #1
 3692 23a0 BB42     		cmp	r3, r7
 3693 23a2 41F26C83 		bls	.L1852
 3694              	.L803:
 3695 23a6 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 3696 23aa 2846     		mov	r0, r5
 3697 23ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3698 23b0 8146     		mov	r9, r0
 3699 23b2 0028     		cmp	r0, #0
 3700 23b4 F1D0     		beq	.L802
 3701 23b6 2846     		mov	r0, r5
 3702 23b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3703 23bc 0328     		cmp	r0, #3
 3704 23be ECD8     		bhi	.L802
 3705 23c0 0246     		mov	r2, r0
ARM GAS  /tmp/ccIESeqr.s 			page 66


 3706 23c2 5B46     		mov	r3, fp
 3707 23c4 3946     		mov	r1, r7
 3708 23c6 2068     		ldr	r0, [r4]
 3709 23c8 CA46     		mov	r10, r9
 3710 23ca FFF7FEFF 		bl	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3711 23ce E4E7     		b	.L802
 3712              	.L276:
 3713 23d0 5346     		mov	r3, r10
 3714 23d2 3246     		mov	r2, r6
 3715 23d4 2946     		mov	r1, r5
 3716 23d6 2046     		mov	r0, r4
 3717 23d8 FFF7FEFF 		bl	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
 3718 23dc 0D90     		str	r0, [sp, #52]
 3719 23de FDF73ABE 		b	.L166
 3720              	.L275:
 3721 23e2 0027     		movs	r7, #0
 3722 23e4 D4F8FC31 		ldr	r3, [r4, #508]
 3723 23e8 0DF5BC78 		add	r8, sp, #376
 3724 23ec 88F80070 		strb	r7, [r8]
 3725 23f0 002B     		cmp	r3, #0
 3726 23f2 01F0FF87 		beq	.L828
 3727 23f6 04F2722A 		addw	r10, r4, #626
 3728 23fa 04F50179 		add	r9, r4, #516
 3729              	.L827:
 3730 23fe 4346     		mov	r3, r8
 3731 2400 4A46     		mov	r2, r9
 3732 2402 1AF8011B 		ldrb	r1, [r10], #1	@ zero_extendqisi2
 3733 2406 2846     		mov	r0, r5
 3734 2408 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3735 240c D4F8FC31 		ldr	r3, [r4, #508]
 3736 2410 0137     		adds	r7, r7, #1
 3737 2412 BB42     		cmp	r3, r7
 3738 2414 09F10409 		add	r9, r9, #4
 3739 2418 F1D8     		bhi	.L827
 3740 241a 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 3741 241e 002B     		cmp	r3, #0
 3742 2420 01F0E887 		beq	.L828
 3743              	.L825:
 3744 2424 0123     		movs	r3, #1
 3745 2426 0D93     		str	r3, [sp, #52]
 3746 2428 FDF715BE 		b	.L166
 3747              	.L274:
 3748 242c 5321     		movs	r1, #83
 3749 242e 2846     		mov	r0, r5
 3750 2430 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3751 2434 0028     		cmp	r0, #0
 3752 2436 3EF41EAF 		beq	.L313
 3753 243a 2846     		mov	r0, r5
 3754 243c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3755 2440 D4F8F831 		ldr	r3, [r4, #504]
 3756 2444 0028     		cmp	r0, #0
 3757 2446 D4BF     		ite	le
 3758 2448 4FF0000A 		movle	r10, #0
 3759 244c 4FF0010A 		movgt	r10, #1
 3760 2450 002B     		cmp	r3, #0
 3761 2452 02F07E85 		beq	.L816
 3762 2456 0027     		movs	r7, #0
ARM GAS  /tmp/ccIESeqr.s 			page 67


 3763 2458 04F27228 		addw	r8, r4, #626
 3764 245c 05E0     		b	.L817
 3765              	.L818:
 3766 245e D4F8F831 		ldr	r3, [r4, #504]
 3767 2462 0137     		adds	r7, r7, #1
 3768 2464 BB42     		cmp	r3, r7
 3769 2466 42F27485 		bls	.L816
 3770              	.L817:
 3771 246a 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 3772 246e 2846     		mov	r0, r5
 3773 2470 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3774 2474 0028     		cmp	r0, #0
 3775 2476 F2D0     		beq	.L818
 3776 2478 3946     		mov	r1, r7
 3777 247a 2068     		ldr	r0, [r4]
 3778 247c FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3779 2480 8245     		cmp	r10, r0
 3780 2482 ECD0     		beq	.L818
 3781 2484 0023     		movs	r3, #0
 3782 2486 0D93     		str	r3, [sp, #52]
 3783              	.L814:
 3784 2488 4521     		movs	r1, #69
 3785 248a 2846     		mov	r0, r5
 3786 248c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3787 2490 0028     		cmp	r0, #0
 3788 2492 3DF4E0AD 		beq	.L166
 3789 2496 4FF0060E 		mov	lr, #6
 3790 249a 0DF17009 		add	r9, sp, #112
 3791 249e 0DF5BC78 		add	r8, sp, #376
 3792 24a2 0023     		movs	r3, #0
 3793 24a4 4A46     		mov	r2, r9
 3794 24a6 4146     		mov	r1, r8
 3795 24a8 2846     		mov	r0, r5
 3796 24aa C9F800E0 		str	lr, [r9]
 3797 24ae FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3798 24b2 D9F80030 		ldr	r3, [r9]
 3799 24b6 002B     		cmp	r3, #0
 3800 24b8 3DF4CDAD 		beq	.L166
 3801 24bc D8F80020 		ldr	r2, [r8]
 3802 24c0 052A     		cmp	r2, #5
 3803 24c2 03F29B85 		bhi	.L820
 3804 24c6 4FF0000B 		mov	fp, #0
 3805 24ca 0D9F     		ldr	r7, [sp, #52]
 3806 24cc 1146     		mov	r1, r2
 3807 24ce 09E0     		b	.L822
 3808              	.L1855:
 3809 24d0 D9F80030 		ldr	r3, [r9]
 3810 24d4 5B45     		cmp	r3, fp
 3811 24d6 43F2AC85 		bls	.L1853
 3812 24da 58F82B10 		ldr	r1, [r8, fp, lsl #2]
 3813 24de 0529     		cmp	r1, #5
 3814 24e0 03F28B85 		bhi	.L1854
 3815              	.L822:
 3816 24e4 0331     		adds	r1, r1, #3
 3817 24e6 2068     		ldr	r0, [r4]
 3818 24e8 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3819 24ec 8245     		cmp	r10, r0
ARM GAS  /tmp/ccIESeqr.s 			page 68


 3820 24ee 0BF1010B 		add	fp, fp, #1
 3821 24f2 EDD0     		beq	.L1855
 3822 24f4 0023     		movs	r3, #0
 3823 24f6 0D93     		str	r3, [sp, #52]
 3824 24f8 FDF7ADBD 		b	.L166
 3825              	.L273:
 3826 24fc 5021     		movs	r1, #80
 3827 24fe 2846     		mov	r0, r5
 3828 2500 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3829 2504 0028     		cmp	r0, #0
 3830 2506 3EF4B6AE 		beq	.L313
 3831 250a 2846     		mov	r0, r5
 3832 250c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3833 2510 0128     		cmp	r0, #1
 3834 2512 8046     		mov	r8, r0
 3835 2514 3EF6AFAE 		bhi	.L313
 3836 2518 4221     		movs	r1, #66
 3837 251a 2846     		mov	r0, r5
 3838 251c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3839 2520 0028     		cmp	r0, #0
 3840 2522 43F0B686 		bne	.L1856
 3841 2526 5321     		movs	r1, #83
 3842 2528 2846     		mov	r0, r5
 3843 252a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3844 252e 0028     		cmp	r0, #0
 3845 2530 03F09586 		beq	.L1857
 3846              	.L961:
 3847 2534 2846     		mov	r0, r5
 3848 2536 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3849 253a 4146     		mov	r1, r8
 3850 253c 0246     		mov	r2, r0
 3851 253e 0746     		mov	r7, r0
 3852 2540 2068     		ldr	r0, [r4]
 3853 2542 FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 3854 2546 B8F1010F 		cmp	r8, #1
 3855 254a 43F01086 		bne	.L1858
 3856 254e A26C     		ldr	r2, [r4, #72]
 3857 2550 2368     		ldr	r3, [r4]
 3858 2552 1268     		ldr	r2, [r2]
 3859 2554 07F00107 		and	r7, r7, #1
 3860 2558 82F8B270 		strb	r7, [r2, #178]
 3861 255c CDF83480 		str	r8, [sp, #52]
 3862 2560 83F84C85 		strb	r8, [r3, #1356]
 3863 2564 FDF777BD 		b	.L166
 3864              	.L208:
 3865 2568 5321     		movs	r1, #83
 3866 256a 2846     		mov	r0, r5
 3867 256c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3868 2570 0028     		cmp	r0, #0
 3869 2572 01F01685 		beq	.L482
 3870 2576 2846     		mov	r0, r5
 3871 2578 D4F80080 		ldr	r8, [r4]
 3872 257c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3873 2580 C349     		ldr	r1, .L1968
 3874 2582 FFF7FEFF 		bl	__aeabi_fmul
 3875 2586 0021     		movs	r1, #0
 3876 2588 0746     		mov	r7, r0
ARM GAS  /tmp/ccIESeqr.s 			page 69


 3877 258a FFF7FEFF 		bl	__aeabi_fcmpgt
 3878 258e 0028     		cmp	r0, #0
 3879 2590 3EF471AE 		beq	.L313
 3880 2594 BF49     		ldr	r1, .L1968+4
 3881 2596 3846     		mov	r0, r7
 3882 2598 FFF7FEFF 		bl	__aeabi_fmul
 3883 259c FFF7FEFF 		bl	__aeabi_f2uiz
 3884 25a0 0123     		movs	r3, #1
 3885 25a2 C8F8BC04 		str	r0, [r8, #1212]
 3886 25a6 0D93     		str	r3, [sp, #52]
 3887 25a8 FDF755BD 		b	.L166
 3888              	.L206:
 3889 25ac 2946     		mov	r1, r5
 3890 25ae 2046     		mov	r0, r4
 3891 25b0 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 3892 25b4 0123     		movs	r3, #1
 3893 25b6 0D93     		str	r3, [sp, #52]
 3894 25b8 FDF74DBD 		b	.L166
 3895              	.L194:
 3896 25bc 0022     		movs	r2, #0
 3897 25be 2946     		mov	r1, r5
 3898 25c0 2046     		mov	r0, r4
 3899 25c2 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3900 25c6 0D90     		str	r0, [sp, #52]
 3901 25c8 FDF745BD 		b	.L166
 3902              	.L240:
 3903 25cc 4E21     		movs	r1, #78
 3904 25ce 2846     		mov	r0, r5
 3905 25d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3906 25d4 0028     		cmp	r0, #0
 3907 25d6 42F08780 		bne	.L1859
 3908 25da 4421     		movs	r1, #68
 3909 25dc 2846     		mov	r0, r5
 3910 25de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3911 25e2 0028     		cmp	r0, #0
 3912 25e4 02F06880 		beq	.L1860
 3913              	.L938:
 3914 25e8 2846     		mov	r0, r5
 3915 25ea D4F80080 		ldr	r8, [r4]
 3916 25ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3917 25f2 0123     		movs	r3, #1
 3918 25f4 C8F88005 		str	r0, [r8, #1408]	@ float
 3919 25f8 0D93     		str	r3, [sp, #52]
 3920 25fa FDF72CBD 		b	.L166
 3921              	.L239:
 3922 25fe 2368     		ldr	r3, [r4]
 3923 2600 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 3924 2604 002B     		cmp	r3, #0
 3925 2606 3EF436AE 		beq	.L313
 3926 260a 0023     		movs	r3, #0
 3927 260c A24A     		ldr	r2, .L1968+8
 3928 260e 84F82933 		strb	r3, [r4, #809]
 3929 2612 2946     		mov	r1, r5
 3930 2614 0093     		str	r3, [sp]
 3931 2616 2046     		mov	r0, r4
 3932 2618 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3933 261c 0123     		movs	r3, #1
ARM GAS  /tmp/ccIESeqr.s 			page 70


 3934 261e 0D93     		str	r3, [sp, #52]
 3935 2620 FDF719BD 		b	.L166
 3936              	.L238:
 3937 2624 2368     		ldr	r3, [r4]
 3938 2626 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 3939 262a 002B     		cmp	r3, #0
 3940 262c 3EF423AE 		beq	.L313
 3941 2630 0127     		movs	r7, #1
 3942 2632 0023     		movs	r3, #0
 3943 2634 84F82973 		strb	r7, [r4, #809]
 3944 2638 984A     		ldr	r2, .L1968+12
 3945 263a 0093     		str	r3, [sp]
 3946 263c 2946     		mov	r1, r5
 3947 263e 2046     		mov	r0, r4
 3948 2640 0D97     		str	r7, [sp, #52]
 3949 2642 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3950 2646 FDF706BD 		b	.L166
 3951              	.L237:
 3952 264a 2946     		mov	r1, r5
 3953 264c 2046     		mov	r0, r4
 3954 264e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3955 2652 0028     		cmp	r0, #0
 3956 2654 7EF40FAE 		bne	.L313
 3957 2658 FEF728BE 		b	.L704
 3958              	.L236:
 3959 265c 904B     		ldr	r3, .L1968+16
 3960 265e 4821     		movs	r1, #72
 3961 2660 2846     		mov	r0, r5
 3962 2662 9F68     		ldr	r7, [r3, #8]
 3963 2664 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3964 2668 0028     		cmp	r0, #0
 3965 266a 42F03283 		bne	.L1861
 3966 266e 97F8F134 		ldrb	r3, [r7, #1265]	@ zero_extendqisi2
 3967 2672 002B     		cmp	r3, #0
 3968 2674 41F0B685 		bne	.L1862
 3969              	.L679:
 3970 2678 8A49     		ldr	r1, .L1968+20
 3971 267a 3046     		mov	r0, r6
 3972 267c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3973 2680 0123     		movs	r3, #1
 3974 2682 0D93     		str	r3, [sp, #52]
 3975 2684 FDF7E7BC 		b	.L166
 3976              	.L235:
 3977 2688 2946     		mov	r1, r5
 3978 268a 2046     		mov	r0, r4
 3979 268c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3980 2690 0028     		cmp	r0, #0
 3981 2692 3EF40BAE 		beq	.L704
 3982 2696 3246     		mov	r2, r6
 3983 2698 2946     		mov	r1, r5
 3984 269a 2046     		mov	r0, r4
 3985 269c FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 3986 26a0 0D90     		str	r0, [sp, #52]
 3987 26a2 FDF7D8BC 		b	.L166
 3988              	.L234:
 3989 26a6 3246     		mov	r2, r6
 3990 26a8 2946     		mov	r1, r5
ARM GAS  /tmp/ccIESeqr.s 			page 71


 3991 26aa 2046     		mov	r0, r4
 3992 26ac FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 3993 26b0 0028     		cmp	r0, #0
 3994 26b2 3EF4E0AD 		beq	.L313
 3995 26b6 0223     		movs	r3, #2
 3996 26b8 0D93     		str	r3, [sp, #52]
 3997 26ba FDF7CCBC 		b	.L166
 3998              	.L233:
 3999 26be 4921     		movs	r1, #73
 4000 26c0 2846     		mov	r0, r5
 4001 26c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4002 26c6 0E90     		str	r0, [sp, #56]
 4003 26c8 0028     		cmp	r0, #0
 4004 26ca 42F03583 		bne	.L1863
 4005              	.L661:
 4006 26ce D4F8F831 		ldr	r3, [r4, #504]
 4007 26d2 002B     		cmp	r3, #0
 4008 26d4 02F0F283 		beq	.L662
 4009 26d8 0123     		movs	r3, #1
 4010 26da 4FF00008 		mov	r8, #0
 4011 26de 1F46     		mov	r7, r3
 4012 26e0 714A     		ldr	r2, .L1968+24
 4013 26e2 724B     		ldr	r3, .L1968+28
 4014 26e4 0E99     		ldr	r1, [sp, #56]
 4015 26e6 B346     		mov	fp, r6
 4016 26e8 4145     		cmp	r1, r8
 4017 26ea 08BF     		it	eq
 4018 26ec 1A46     		moveq	r2, r3
 4019 26ee 4646     		mov	r6, r8
 4020 26f0 0D92     		str	r2, [sp, #52]
 4021 26f2 06E0     		b	.L665
 4022              	.L663:
 4023 26f4 D4F8F831 		ldr	r3, [r4, #504]
 4024 26f8 08F10108 		add	r8, r8, #1
 4025 26fc 4345     		cmp	r3, r8
 4026 26fe 41F2DA82 		bls	.L1864
 4027              	.L665:
 4028 2702 04EB0809 		add	r9, r4, r8
 4029 2706 99F87212 		ldrb	r1, [r9, #626]	@ zero_extendqisi2
 4030 270a 2846     		mov	r0, r5
 4031 270c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4032 2710 0028     		cmp	r0, #0
 4033 2712 EFD0     		beq	.L663
 4034 2714 2946     		mov	r1, r5
 4035 2716 2046     		mov	r0, r4
 4036 2718 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4037 271c 0646     		mov	r6, r0
 4038 271e 0028     		cmp	r0, #0
 4039 2720 3EF4C4AD 		beq	.L704
 4040 2724 2846     		mov	r0, r5
 4041 2726 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 4042 272a 0E9B     		ldr	r3, [sp, #56]
 4043 272c 0246     		mov	r2, r0
 4044 272e 8246     		mov	r10, r0
 4045 2730 4146     		mov	r1, r8
 4046 2732 2046     		mov	r0, r4
 4047 2734 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
ARM GAS  /tmp/ccIESeqr.s 			page 72


 4048 2738 0123     		movs	r3, #1
 4049 273a 03FA08F2 		lsl	r2, r3, r8
 4050 273e 0028     		cmp	r0, #0
 4051 2740 00F0D287 		beq	.L664
 4052 2744 D4F88032 		ldr	r3, [r4, #640]
 4053 2748 0646     		mov	r6, r0
 4054 274a 23EA0203 		bic	r3, r3, r2
 4055 274e C4F88032 		str	r3, [r4, #640]
 4056 2752 CFE7     		b	.L663
 4057              	.L247:
 4058 2754 AB68     		ldr	r3, [r5, #8]
 4059 2756 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4060 2758 9F06     		lsls	r7, r3, #26
 4061 275a 3EF58CAD 		bmi	.L313
 4062 275e 2946     		mov	r1, r5
 4063 2760 2046     		mov	r0, r4
 4064 2762 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4065 2766 0028     		cmp	r0, #0
 4066 2768 3EF4A0AD 		beq	.L704
 4067 276c 4C4F     		ldr	r7, .L1968+16
 4068 276e 0121     		movs	r1, #1
 4069 2770 F868     		ldr	r0, [r7, #12]
 4070 2772 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 4071 2776 F868     		ldr	r0, [r7, #12]
 4072 2778 FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 4073 277c 0122     		movs	r2, #1
 4074 277e BB68     		ldr	r3, [r7, #8]
 4075 2780 0D92     		str	r2, [sp, #52]
 4076 2782 D3F8FC04 		ldr	r0, [r3, #1276]
 4077 2786 0368     		ldr	r3, [r0]
 4078 2788 9B69     		ldr	r3, [r3, #24]
 4079 278a 9847     		blx	r3
 4080 278c 2068     		ldr	r0, [r4]
 4081 278e FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4082 2792 4FF4FB72 		mov	r2, #502
 4083 2796 0123     		movs	r3, #1
 4084 2798 0092     		str	r2, [sp]
 4085 279a 2946     		mov	r1, r5
 4086 279c 444A     		ldr	r2, .L1968+32
 4087 279e 2046     		mov	r0, r4
 4088 27a0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 4089 27a4 FDF757BC 		b	.L166
 4090              	.L180:
 4091 27a8 4FF00008 		mov	r8, #0
 4092 27ac 6523     		movs	r3, #101
 4093 27ae 5EAF     		add	r7, sp, #376
 4094 27b0 1CA9     		add	r1, sp, #112
 4095 27b2 2846     		mov	r0, r5
 4096 27b4 87F80080 		strb	r8, [r7]
 4097 27b8 1C97     		str	r7, [sp, #112]
 4098 27ba 1D93     		str	r3, [sp, #116]
 4099 27bc FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 4100 27c0 0028     		cmp	r0, #0
 4101 27c2 01F0A984 		beq	.L374
 4102 27c6 3B4A     		ldr	r2, .L1968+36
 4103 27c8 CDF80880 		str	r8, [sp, #8]
 4104 27cc CDF80480 		str	r8, [sp, #4]
ARM GAS  /tmp/ccIESeqr.s 			page 73


 4105 27d0 CDF80080 		str	r8, [sp]
 4106 27d4 3B46     		mov	r3, r7
 4107 27d6 2946     		mov	r1, r5
 4108 27d8 2046     		mov	r0, r4
 4109 27da FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 4110 27de 3A46     		mov	r2, r7
 4111 27e0 0028     		cmp	r0, #0
 4112 27e2 02F06383 		beq	.L375
 4113 27e6 3449     		ldr	r1, .L1968+40
 4114 27e8 3046     		mov	r0, r6
 4115 27ea FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4116 27ee 0123     		movs	r3, #1
 4117 27f0 0D93     		str	r3, [sp, #52]
 4118 27f2 FDF730BC 		b	.L166
 4119              	.L179:
 4120 27f6 2A4B     		ldr	r3, .L1968+16
 4121 27f8 DB69     		ldr	r3, [r3, #28]
 4122 27fa 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 4123 27fc 002B     		cmp	r3, #0
 4124 27fe 01F00E84 		beq	.L373
 4125 2802 0122     		movs	r2, #1
 4126 2804 236C     		ldr	r3, [r4, #64]
 4127 2806 0D92     		str	r2, [sp, #52]
 4128 2808 1868     		ldr	r0, [r3]
 4129 280a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 4130 280e 8146     		mov	r9, r0
 4131 2810 8068     		ldr	r0, [r0, #8]
 4132 2812 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 4133 2816 8046     		mov	r8, r0
 4134 2818 E068     		ldr	r0, [r4, #12]
 4135 281a 0368     		ldr	r3, [r0]
 4136 281c 9B68     		ldr	r3, [r3, #8]
 4137 281e 9847     		blx	r3
 4138 2820 A8EB0008 		sub	r8, r8, r0
 4139 2824 D9F80800 		ldr	r0, [r9, #8]
 4140 2828 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 4141 282c 4246     		mov	r2, r8
 4142 282e 0346     		mov	r3, r0
 4143 2830 2249     		ldr	r1, .L1968+44
 4144 2832 3046     		mov	r0, r6
 4145 2834 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4146 2838 FDF70DBC 		b	.L166
 4147              	.L256:
 4148 283c 5321     		movs	r1, #83
 4149 283e 2846     		mov	r0, r5
 4150 2840 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4151 2844 0028     		cmp	r0, #0
 4152 2846 01F06F83 		beq	.L734
 4153 284a 2846     		mov	r0, r5
 4154 284c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4155 2850 1B49     		ldr	r1, .L1968+48
 4156 2852 8146     		mov	r9, r0
 4157 2854 FFF7FEFF 		bl	__aeabi_fcmpge
 4158 2858 0028     		cmp	r0, #0
 4159 285a 3EF40CAD 		beq	.L313
 4160 285e 0027     		movs	r7, #0
 4161 2860 DFF83CA0 		ldr	r10, .L1968+16
ARM GAS  /tmp/ccIESeqr.s 			page 74


 4162 2864 04F27228 		addw	r8, r4, #626
 4163              	.L737:
 4164 2868 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 4165 286c 2846     		mov	r0, r5
 4166 286e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4167 2872 0028     		cmp	r0, #0
 4168 2874 42F0AF83 		bne	.L1865
 4169              	.L736:
 4170 2878 0137     		adds	r7, r7, #1
 4171 287a 032F     		cmp	r7, #3
 4172 287c F4D1     		bne	.L737
 4173 287e FEF7FABC 		b	.L313
 4174              	.L188:
 4175 2882 2068     		ldr	r0, [r4]
 4176 2884 FFF7FEFF 		bl	_ZN8Platform10AtxPowerOnEv
 4177 2888 0123     		movs	r3, #1
 4178 288a 0D93     		str	r3, [sp, #52]
 4179 288c FDF7E3BB 		b	.L166
 4180              	.L1969:
 4181              		.align	2
 4182              	.L1968:
 4183 2890 6F12833A 		.word	981668463
 4184 2894 00007A44 		.word	1148846080
 4185 2898 440C0000 		.word	.LC137
 4186 289c 340C0000 		.word	.LC136
 4187 28a0 00000000 		.word	reprap
 4188 28a4 140C0000 		.word	.LC135
 4189 28a8 4C0B0000 		.word	.LC127
 4190 28ac A0000000 		.word	.LC25
 4191 28b0 A4000000 		.word	.LC26
 4192 28b4 44020000 		.word	.LC53
 4193 28b8 3C030000 		.word	.LC64
 4194 28bc 0C030000 		.word	.LC62
 4195 28c0 00002041 		.word	1092616192
 4196              	.L187:
 4197 28c4 5021     		movs	r1, #80
 4198 28c6 2846     		mov	r0, r5
 4199 28c8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4200 28cc 0028     		cmp	r0, #0
 4201 28ce 3EF4D2AC 		beq	.L313
 4202 28d2 2846     		mov	r0, r5
 4203 28d4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4204 28d8 5321     		movs	r1, #83
 4205 28da 8346     		mov	fp, r0
 4206 28dc 2846     		mov	r0, r5
 4207 28de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4208 28e2 8246     		mov	r10, r0
 4209 28e4 0028     		cmp	r0, #0
 4210 28e6 3EF4C6AC 		beq	.L313
 4211 28ea 2846     		mov	r0, r5
 4212 28ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4213 28f0 4FF07E51 		mov	r1, #1065353216
 4214 28f4 0746     		mov	r7, r0
 4215 28f6 FFF7FEFF 		bl	__aeabi_fcmpgt
 4216 28fa 20B1     		cbz	r0, .L397
 4217 28fc 3846     		mov	r0, r7
 4218 28fe C549     		ldr	r1, .L1970
ARM GAS  /tmp/ccIESeqr.s 			page 75


 4219 2900 FFF7FEFF 		bl	__aeabi_fdiv
 4220 2904 0746     		mov	r7, r0
 4221              	.L397:
 4222 2906 3946     		mov	r1, r7
 4223 2908 3846     		mov	r0, r7
 4224 290a FFF7FEFF 		bl	__aeabi_fcmpun
 4225 290e 0028     		cmp	r0, #0
 4226 2910 43F09983 		bne	.L1866
 4227 2914 4FF07E51 		mov	r1, #1065353216
 4228 2918 3846     		mov	r0, r7
 4229 291a FFF7FEFF 		bl	__aeabi_fcmplt
 4230 291e 0028     		cmp	r0, #0
 4231 2920 43F08981 		bne	.L1867
 4232 2924 4621     		movs	r1, #70
 4233 2926 2846     		mov	r0, r5
 4234 2928 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4235 292c 4FF07E57 		mov	r7, #1065353216
 4236 2930 0028     		cmp	r0, #0
 4237 2932 03F09483 		beq	.L988
 4238              	.L970:
 4239 2936 2846     		mov	r0, r5
 4240 2938 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4241 293c 0128     		cmp	r0, #1
 4242 293e B8BF     		it	lt
 4243 2940 0120     		movlt	r0, #1
 4244 2942 B0F5803F 		cmp	r0, #65536
 4245 2946 A8BF     		it	ge
 4246 2948 4FF48030 		movge	r0, #65536
 4247 294c 1FFA80F8 		uxth	r8, r0
 4248              	.L402:
 4249 2950 0222     		movs	r2, #2
 4250 2952 2068     		ldr	r0, [r4]
 4251              	.L899:
 4252 2954 5EA9     		add	r1, sp, #376
 4253 2956 0DF17009 		add	r9, sp, #112
 4254 295a 0091     		str	r1, [sp]
 4255 295c 4B46     		mov	r3, r9
 4256 295e 1FFA8BF1 		uxth	r1, fp
 4257 2962 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4258 2966 0028     		cmp	r0, #0
 4259 2968 03F00C83 		beq	.L405
 4260 296c 9DF87831 		ldrb	r3, [sp, #376]	@ zero_extendqisi2
 4261 2970 2BB1     		cbz	r3, .L406
 4262 2972 3946     		mov	r1, r7
 4263 2974 4FF07E50 		mov	r0, #1065353216
 4264 2978 FFF7FEFF 		bl	__aeabi_fsub
 4265 297c 0746     		mov	r7, r0
 4266              	.L406:
 4267 297e BAF1000F 		cmp	r10, #0
 4268 2982 03F04383 		beq	.L407
 4269 2986 4246     		mov	r2, r8
 4270 2988 3946     		mov	r1, r7
 4271 298a 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 4272 298e FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 4273 2992 0123     		movs	r3, #1
 4274 2994 0D93     		str	r3, [sp, #52]
 4275 2996 FDF75EBB 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 76


 4276              	.L224:
 4277 299a 1AAF     		add	r7, sp, #104
 4278 299c 0E97     		str	r7, [sp, #56]
 4279 299e 4FF00007 		mov	r7, #0
 4280 29a2 0DF17009 		add	r9, sp, #112
 4281 29a6 40F2011A 		movw	r10, #257
 4282 29aa 89F80070 		strb	r7, [r9]
 4283 29ae 4FF00007 		mov	r7, #0
 4284 29b2 18AB     		add	r3, sp, #96
 4285 29b4 0DF5BC78 		add	r8, sp, #376
 4286 29b8 9B46     		mov	fp, r3
 4287 29ba 4246     		mov	r2, r8
 4288 29bc 5221     		movs	r1, #82
 4289 29be 2846     		mov	r0, r5
 4290 29c0 1F70     		strb	r7, [r3]
 4291 29c2 0D93     		str	r3, [sp, #52]
 4292 29c4 88E80006 		stm	r8, {r9, r10}
 4293 29c8 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 4294 29cc 4FF0000E 		mov	lr, #0
 4295 29d0 0E9F     		ldr	r7, [sp, #56]
 4296 29d2 5B46     		mov	r3, fp
 4297 29d4 3A46     		mov	r2, r7
 4298 29d6 5021     		movs	r1, #80
 4299 29d8 2846     		mov	r0, r5
 4300 29da 88F800E0 		strb	lr, [r8]
 4301 29de 87E80005 		stm	r7, {r8, r10}
 4302 29e2 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 4303 29e6 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 4304 29ea 002B     		cmp	r3, #0
 4305 29ec 42F0D980 		bne	.L1868
 4306              	.L619:
 4307 29f0 0123     		movs	r3, #1
 4308 29f2 0D93     		str	r3, [sp, #52]
 4309 29f4 FDF72FBB 		b	.L166
 4310              	.L220:
 4311 29f8 3246     		mov	r2, r6
 4312 29fa 2946     		mov	r1, r5
 4313 29fc 2046     		mov	r0, r4
 4314 29fe FFF7FEFF 		bl	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 4315 2a02 0D90     		str	r0, [sp, #52]
 4316 2a04 FDF727BB 		b	.L166
 4317              	.L218:
 4318 2a08 0027     		movs	r7, #0
 4319 2a0a 0DF5BC78 		add	r8, sp, #376
 4320 2a0e 1CAB     		add	r3, sp, #112
 4321 2a10 4246     		mov	r2, r8
 4322 2a12 4421     		movs	r1, #68
 4323 2a14 2846     		mov	r0, r5
 4324 2a16 C8F80070 		str	r7, [r8]
 4325 2a1a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4326 2a1e D8F80030 		ldr	r3, [r8]
 4327 2a22 BB42     		cmp	r3, r7
 4328 2a24 04DB     		blt	.L593
 4329 2a26 D4F80022 		ldr	r2, [r4, #512]
 4330 2a2a 9342     		cmp	r3, r2
 4331 2a2c C2F2FA82 		blt	.L1869
 4332              	.L593:
ARM GAS  /tmp/ccIESeqr.s 			page 77


 4333 2a30 0123     		movs	r3, #1
 4334 2a32 0D93     		str	r3, [sp, #52]
 4335 2a34 FDF70FBB 		b	.L166
 4336              	.L213:
 4337 2a38 D4F8F831 		ldr	r3, [r4, #504]
 4338 2a3c 002B     		cmp	r3, #0
 4339 2a3e 01F00185 		beq	.L1870
 4340 2a42 0027     		movs	r7, #0
 4341 2a44 04F27228 		addw	r8, r4, #626
 4342 2a48 0D97     		str	r7, [sp, #52]
 4343 2a4a 05E0     		b	.L529
 4344              	.L526:
 4345 2a4c D4F8F831 		ldr	r3, [r4, #504]
 4346 2a50 0137     		adds	r7, r7, #1
 4347 2a52 BB42     		cmp	r3, r7
 4348 2a54 40F28487 		bls	.L1871
 4349              	.L529:
 4350 2a58 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 4351 2a5c 2846     		mov	r0, r5
 4352 2a5e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4353 2a62 8146     		mov	r9, r0
 4354 2a64 0028     		cmp	r0, #0
 4355 2a66 F1D0     		beq	.L526
 4356 2a68 2846     		mov	r0, r5
 4357 2a6a D4F800B0 		ldr	fp, [r4]
 4358 2a6e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4359 2a72 D4F83C12 		ldr	r1, [r4, #572]	@ float
 4360 2a76 FFF7FEFF 		bl	__aeabi_fmul
 4361 2a7a 0146     		mov	r1, r0
 4362 2a7c 8246     		mov	r10, r0
 4363 2a7e FFF7FEFF 		bl	__aeabi_fcmpun
 4364 2a82 38B9     		cbnz	r0, .L912
 4365 2a84 4FF07E51 		mov	r1, #1065353216
 4366 2a88 5046     		mov	r0, r10
 4367 2a8a FFF7FEFF 		bl	__aeabi_fcmpgt
 4368 2a8e 0028     		cmp	r0, #0
 4369 2a90 01F0CD82 		beq	.L1872
 4370              	.L912:
 4371 2a94 07F13E02 		add	r2, r7, #62
 4372 2a98 CDF83490 		str	r9, [sp, #52]
 4373 2a9c 4BF822A0 		str	r10, [fp, r2, lsl #2]	@ float
 4374 2aa0 D4E7     		b	.L526
 4375              	.L219:
 4376 2aa2 236C     		ldr	r3, [r4, #64]
 4377 2aa4 1B68     		ldr	r3, [r3]
 4378 2aa6 9D42     		cmp	r5, r3
 4379 2aa8 7EF4E5AB 		bne	.L313
 4380 2aac 2846     		mov	r0, r5
 4381 2aae FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 4382 2ab2 0746     		mov	r7, r0
 4383 2ab4 0028     		cmp	r0, #0
 4384 2ab6 03F0E282 		beq	.L367
 4385              	.L370:
 4386 2aba 0127     		movs	r7, #1
 4387 2abc 84F87F70 		strb	r7, [r4, #127]
 4388 2ac0 0D97     		str	r7, [sp, #52]
 4389 2ac2 FDF7C8BA 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 78


 4390              	.L170:
 4391 2ac6 94F87C70 		ldrb	r7, [r4, #124]	@ zero_extendqisi2
 4392 2aca 012F     		cmp	r7, #1
 4393 2acc 01F03784 		beq	.L319
 4394 2ad0 022F     		cmp	r7, #2
 4395 2ad2 41F03084 		bne	.L1673
 4396 2ad6 5021     		movs	r1, #80
 4397 2ad8 2846     		mov	r0, r5
 4398 2ada FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4399 2ade 0028     		cmp	r0, #0
 4400 2ae0 42F07B85 		bne	.L1873
 4401 2ae4 4FF4B267 		mov	r7, #1424
 4402              	.L322:
 4403 2ae8 2068     		ldr	r0, [r4]
 4404 2aea 3844     		add	r0, r0, r7
 4405 2aec 2037     		adds	r7, r7, #32
 4406 2aee FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 4407 2af2 B7F5C26F 		cmp	r7, #1552
 4408 2af6 F7D1     		bne	.L322
 4409 2af8 FEF7BDBB 		b	.L313
 4410              	.L268:
 4411 2afc 5321     		movs	r1, #83
 4412 2afe 2846     		mov	r0, r5
 4413 2b00 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4414 2b04 0746     		mov	r7, r0
 4415 2b06 0028     		cmp	r0, #0
 4416 2b08 41F0C385 		bne	.L1874
 4417 2b0c 4821     		movs	r1, #72
 4418 2b0e 2846     		mov	r0, r5
 4419 2b10 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4420 2b14 0028     		cmp	r0, #0
 4421 2b16 01F0AE85 		beq	.L1875
 4422              	.L956:
 4423 2b1a 2846     		mov	r0, r5
 4424 2b1c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4425 2b20 0328     		cmp	r0, #3
 4426 2b22 8146     		mov	r9, r0
 4427 2b24 3EF6A7AB 		bhi	.L313
 4428 2b28 4FF0000E 		mov	lr, #0
 4429 2b2c DFF8ECA0 		ldr	r10, .L1970+8
 4430 2b30 00F10808 		add	r8, r0, #8
 4431 2b34 DAF80C30 		ldr	r3, [r10, #12]
 4432 2b38 4FEA8808 		lsl	r8, r8, #2
 4433 2b3c 4344     		add	r3, r3, r8
 4434 2b3e 5B68     		ldr	r3, [r3, #4]
 4435 2b40 5021     		movs	r1, #80
 4436 2b42 1A69     		ldr	r2, [r3, #16]	@ float
 4437 2b44 1C92     		str	r2, [sp, #112]	@ float
 4438 2b46 5869     		ldr	r0, [r3, #20]	@ float
 4439 2b48 5EAA     		add	r2, sp, #376
 4440 2b4a 1AAB     		add	r3, sp, #104
 4441 2b4c 5E90     		str	r0, [sp, #376]	@ float
 4442 2b4e 2846     		mov	r0, r5
 4443 2b50 8DF868E0 		strb	lr, [sp, #104]
 4444 2b54 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4445 2b58 1AAB     		add	r3, sp, #104
 4446 2b5a 1CAA     		add	r2, sp, #112
ARM GAS  /tmp/ccIESeqr.s 			page 79


 4447 2b5c 5421     		movs	r1, #84
 4448 2b5e 2846     		mov	r0, r5
 4449 2b60 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4450 2b64 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 4451 2b68 002B     		cmp	r3, #0
 4452 2b6a 03F0DC80 		beq	.L779
 4453 2b6e DAF80C30 		ldr	r3, [r10, #12]
 4454 2b72 5E99     		ldr	r1, [sp, #376]	@ float
 4455 2b74 9844     		add	r8, r8, r3
 4456 2b76 D8F80430 		ldr	r3, [r8, #4]
 4457 2b7a 1C9A     		ldr	r2, [sp, #112]	@ float
 4458 2b7c 5961     		str	r1, [r3, #20]	@ float
 4459 2b7e 1A61     		str	r2, [r3, #16]	@ float
 4460              	.L780:
 4461 2b80 0123     		movs	r3, #1
 4462 2b82 0D93     		str	r3, [sp, #52]
 4463 2b84 FDF767BA 		b	.L166
 4464              	.L266:
 4465 2b88 2349     		ldr	r1, .L1970+4
 4466 2b8a 3046     		mov	r0, r6
 4467 2b8c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4468 2b90 0123     		movs	r3, #1
 4469 2b92 0D93     		str	r3, [sp, #52]
 4470 2b94 FDF75FBA 		b	.L166
 4471              	.L265:
 4472 2b98 5021     		movs	r1, #80
 4473 2b9a 2846     		mov	r0, r5
 4474 2b9c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4475 2ba0 0028     		cmp	r0, #0
 4476 2ba2 3EF468AB 		beq	.L313
 4477 2ba6 2846     		mov	r0, r5
 4478 2ba8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4479 2bac 4FFA80F9 		sxtb	r9, r0
 4480 2bb0 4946     		mov	r1, r9
 4481 2bb2 1A48     		ldr	r0, .L1970+8
 4482 2bb4 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4483 2bb8 8046     		mov	r8, r0
 4484 2bba 0028     		cmp	r0, #0
 4485 2bbc 3EF45BAB 		beq	.L313
 4486 2bc0 4521     		movs	r1, #69
 4487 2bc2 2846     		mov	r0, r5
 4488 2bc4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4489 2bc8 0746     		mov	r7, r0
 4490 2bca 0028     		cmp	r0, #0
 4491 2bcc 02F02285 		beq	.L766
 4492 2bd0 D8F85C70 		ldr	r7, [r8, #92]
 4493 2bd4 1CAA     		add	r2, sp, #112
 4494 2bd6 0023     		movs	r3, #0
 4495 2bd8 5EA9     		add	r1, sp, #376
 4496 2bda 2846     		mov	r0, r5
 4497 2bdc 1C97     		str	r7, [sp, #112]
 4498 2bde FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4499 2be2 1C9A     		ldr	r2, [sp, #112]
 4500 2be4 D8F85C30 		ldr	r3, [r8, #92]
 4501 2be8 9A42     		cmp	r2, r3
 4502 2bea 03F03C81 		beq	.L767
 4503 2bee 05F14D02 		add	r2, r5, #77
ARM GAS  /tmp/ccIESeqr.s 			page 80


 4504 2bf2 0B49     		ldr	r1, .L1970+12
 4505 2bf4 3046     		mov	r0, r6
 4506 2bf6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4507              	.L768:
 4508 2bfa 0123     		movs	r3, #1
 4509 2bfc 0D93     		str	r3, [sp, #52]
 4510 2bfe FDF72ABA 		b	.L166
 4511              	.L207:
 4512 2c02 2946     		mov	r1, r5
 4513 2c04 2046     		mov	r0, r4
 4514 2c06 FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 4515 2c0a 0123     		movs	r3, #1
 4516 2c0c 0D93     		str	r3, [sp, #52]
 4517 2c0e FDF722BA 		b	.L166
 4518              	.L1971:
 4519 2c12 00BF     		.align	2
 4520              	.L1970:
 4521 2c14 00007F43 		.word	1132396544
 4522 2c18 A40E0000 		.word	.LC162
 4523 2c1c 00000000 		.word	reprap
 4524 2c20 5C0E0000 		.word	.LC160
 4525              	.L222:
 4526 2c24 5021     		movs	r1, #80
 4527 2c26 2846     		mov	r0, r5
 4528 2c28 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4529 2c2c 0028     		cmp	r0, #0
 4530 2c2e 3EF422AB 		beq	.L313
 4531 2c32 2846     		mov	r0, r5
 4532 2c34 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4533 2c38 0746     		mov	r7, r0
 4534 2c3a 0DF17009 		add	r9, sp, #112
 4535 2c3e 0DF5BC78 		add	r8, sp, #376
 4536 2c42 2068     		ldr	r0, [r4]
 4537 2c44 B9B2     		uxth	r1, r7
 4538 2c46 4B46     		mov	r3, r9
 4539 2c48 CDF80080 		str	r8, [sp]
 4540 2c4c 0322     		movs	r2, #3
 4541 2c4e FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4542 2c52 0028     		cmp	r0, #0
 4543 2c54 02F05283 		beq	.L598
 4544 2c58 4921     		movs	r1, #73
 4545 2c5a 2846     		mov	r0, r5
 4546 2c5c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4547 2c60 0028     		cmp	r0, #0
 4548 2c62 43F04A80 		bne	.L1876
 4549              	.L600:
 4550 2c66 5321     		movs	r1, #83
 4551 2c68 2846     		mov	r0, r5
 4552 2c6a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4553 2c6e 0028     		cmp	r0, #0
 4554 2c70 43F00380 		bne	.L1877
 4555              	.L603:
 4556 2c74 0123     		movs	r3, #1
 4557 2c76 0D93     		str	r3, [sp, #52]
 4558 2c78 FDF7EDB9 		b	.L166
 4559              	.L221:
 4560 2c7c 3246     		mov	r2, r6
ARM GAS  /tmp/ccIESeqr.s 			page 81


 4561 2c7e 2946     		mov	r1, r5
 4562 2c80 2046     		mov	r0, r4
 4563 2c82 FFF7FEFF 		bl	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 4564 2c86 0D90     		str	r0, [sp, #52]
 4565 2c88 FDF7E5B9 		b	.L166
 4566              	.L223:
 4567 2c8c 5321     		movs	r1, #83
 4568 2c8e 2846     		mov	r0, r5
 4569 2c90 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4570 2c94 0028     		cmp	r0, #0
 4571 2c96 02F03A80 		beq	.L1878
 4572              	.L613:
 4573 2c9a 2846     		mov	r0, r5
 4574 2c9c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4575 2ca0 2946     		mov	r1, r5
 4576 2ca2 0746     		mov	r7, r0
 4577 2ca4 2046     		mov	r0, r4
 4578 2ca6 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 4579 2caa 0028     		cmp	r0, #0
 4580 2cac 3EF4FEAA 		beq	.L704
 4581 2cb0 5221     		movs	r1, #82
 4582 2cb2 2846     		mov	r0, r5
 4583 2cb4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4584 2cb8 0028     		cmp	r0, #0
 4585 2cba 42F00A87 		bne	.L1879
 4586              	.L615:
 4587 2cbe 3946     		mov	r1, r7
 4588 2cc0 3846     		mov	r0, r7
 4589 2cc2 FFF7FEFF 		bl	__aeabi_fcmpun
 4590 2cc6 48B9     		cbnz	r0, .L933
 4591 2cc8 4FF07E51 		mov	r1, #1065353216
 4592 2ccc 3846     		mov	r0, r7
 4593 2cce FFF7FEFF 		bl	__aeabi_fcmplt
 4594 2cd2 0028     		cmp	r0, #0
 4595 2cd4 42F07784 		bne	.L932
 4596 2cd8 4FF07E57 		mov	r7, #1065353216
 4597              	.L933:
 4598 2cdc D4F8C802 		ldr	r0, [r4, #712]	@ float
 4599 2ce0 3946     		mov	r1, r7
 4600 2ce2 FFF7FEFF 		bl	__aeabi_fadd
 4601 2ce6 C94B     		ldr	r3, .L1972
 4602 2ce8 C4F8C802 		str	r0, [r4, #712]	@ float
 4603 2cec 3946     		mov	r1, r7
 4604 2cee 9868     		ldr	r0, [r3, #8]
 4605 2cf0 FFF7FEFF 		bl	_ZN4Move16PushBabySteppingEf
 4606 2cf4 0146     		mov	r1, r0
 4607 2cf6 D4F8CC00 		ldr	r0, [r4, #204]	@ float
 4608 2cfa FFF7FEFF 		bl	__aeabi_fadd
 4609 2cfe 3946     		mov	r1, r7
 4610 2d00 C4F8CC00 		str	r0, [r4, #204]	@ float
 4611 2d04 D4F8A800 		ldr	r0, [r4, #168]	@ float
 4612 2d08 FFF7FEFF 		bl	__aeabi_fadd
 4613 2d0c 0123     		movs	r3, #1
 4614 2d0e C4F8A800 		str	r0, [r4, #168]	@ float
 4615 2d12 0D93     		str	r3, [sp, #52]
 4616 2d14 FDF79FB9 		b	.L166
 4617              	.L260:
ARM GAS  /tmp/ccIESeqr.s 			page 82


 4618 2d18 2046     		mov	r0, r4
 4619 2d1a FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 4620 2d1e 0123     		movs	r3, #1
 4621 2d20 0D93     		str	r3, [sp, #52]
 4622 2d22 FDF798B9 		b	.L166
 4623              	.L259:
 4624 2d26 0023     		movs	r3, #0
 4625 2d28 B949     		ldr	r1, .L1972+4
 4626 2d2a BA48     		ldr	r0, .L1972+8
 4627 2d2c BAF50C7F 		cmp	r10, #560
 4628 2d30 B94A     		ldr	r2, .L1972+12
 4629 2d32 08BF     		it	eq
 4630 2d34 8146     		moveq	r9, r0
 4631 2d36 B94F     		ldr	r7, .L1972+16
 4632 2d38 0DF5BC78 		add	r8, sp, #376
 4633 2d3c 18BF     		it	ne
 4634 2d3e 0F46     		movne	r7, r1
 4635 2d40 2846     		mov	r0, r5
 4636 2d42 4FF05001 		mov	r1, #80
 4637 2d46 88F80030 		strb	r3, [r8]
 4638 2d4a 18BF     		it	ne
 4639 2d4c 9146     		movne	r9, r2
 4640 2d4e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4641 2d52 6523     		movs	r3, #101
 4642 2d54 0028     		cmp	r0, #0
 4643 2d56 01F0EF81 		beq	.L739
 4644 2d5a 1CA9     		add	r1, sp, #112
 4645 2d5c 2846     		mov	r0, r5
 4646 2d5e 1D93     		str	r3, [sp, #116]
 4647 2d60 CDF87080 		str	r8, [sp, #112]
 4648 2d64 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 4649              	.L740:
 4650 2d68 5321     		movs	r1, #83
 4651 2d6a 2846     		mov	r0, r5
 4652 2d6c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4653 2d70 0028     		cmp	r0, #0
 4654 2d72 41F0C687 		bne	.L1880
 4655 2d76 0746     		mov	r7, r0
 4656              	.L741:
 4657 2d78 4321     		movs	r1, #67
 4658 2d7a 2846     		mov	r0, r5
 4659 2d7c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4660 2d80 0028     		cmp	r0, #0
 4661 2d82 41F0B987 		bne	.L1881
 4662              	.L742:
 4663 2d86 4FF0010A 		mov	r10, #1
 4664 2d8a 0290     		str	r0, [sp, #8]
 4665 2d8c 4A46     		mov	r2, r9
 4666 2d8e 0097     		str	r7, [sp]
 4667 2d90 CDF804A0 		str	r10, [sp, #4]
 4668 2d94 4346     		mov	r3, r8
 4669 2d96 2946     		mov	r1, r5
 4670 2d98 2046     		mov	r0, r4
 4671 2d9a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 4672 2d9e 4246     		mov	r2, r8
 4673 2da0 0028     		cmp	r0, #0
 4674 2da2 01F0C181 		beq	.L743
ARM GAS  /tmp/ccIESeqr.s 			page 83


 4675 2da6 9E49     		ldr	r1, .L1972+20
 4676 2da8 3046     		mov	r0, r6
 4677 2daa CDF834A0 		str	r10, [sp, #52]
 4678 2dae FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4679 2db2 FDF750B9 		b	.L166
 4680              	.L258:
 4681 2db6 3246     		mov	r2, r6
 4682 2db8 2946     		mov	r1, r5
 4683 2dba 2046     		mov	r0, r4
 4684 2dbc FFF7FEFF 		bl	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
 4685 2dc0 0D90     		str	r0, [sp, #52]
 4686 2dc2 FDF748B9 		b	.L166
 4687              	.L257:
 4688 2dc6 3246     		mov	r2, r6
 4689 2dc8 2946     		mov	r1, r5
 4690 2dca 2046     		mov	r0, r4
 4691 2dcc FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 4692 2dd0 0D90     		str	r0, [sp, #52]
 4693 2dd2 FDF740B9 		b	.L166
 4694              	.L262:
 4695 2dd6 3246     		mov	r2, r6
 4696 2dd8 2946     		mov	r1, r5
 4697 2dda 2046     		mov	r0, r4
 4698 2ddc FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
 4699 2de0 0028     		cmp	r0, #0
 4700 2de2 3EF448AA 		beq	.L313
 4701 2de6 0223     		movs	r3, #2
 4702 2de8 0D93     		str	r3, [sp, #52]
 4703 2dea FDF734B9 		b	.L166
 4704              	.L261:
 4705 2dee 5021     		movs	r1, #80
 4706 2df0 2846     		mov	r0, r5
 4707 2df2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4708 2df6 0028     		cmp	r0, #0
 4709 2df8 41F0B285 		bne	.L1882
 4710 2dfc 0746     		mov	r7, r0
 4711 2dfe DFF80C82 		ldr	r8, .L1972
 4712              	.L748:
 4713 2e02 79B2     		sxtb	r1, r7
 4714 2e04 4046     		mov	r0, r8
 4715 2e06 0137     		adds	r7, r7, #1
 4716 2e08 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 4717 2e0c 042F     		cmp	r7, #4
 4718 2e0e F8D1     		bne	.L748
 4719 2e10 0123     		movs	r3, #1
 4720 2e12 0D93     		str	r3, [sp, #52]
 4721              	.L747:
 4722 2e14 0023     		movs	r3, #0
 4723 2e16 84F84834 		strb	r3, [r4, #1096]
 4724 2e1a FDF71CB9 		b	.L166
 4725              	.L252:
 4726 2e1e AB68     		ldr	r3, [r5, #8]
 4727 2e20 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4728 2e22 9906     		lsls	r1, r3, #26
 4729 2e24 3EF527AA 		bmi	.L313
 4730 2e28 4921     		movs	r1, #73
 4731 2e2a 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 84


 4732 2e2c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4733 2e30 0028     		cmp	r0, #0
 4734 2e32 42F0B384 		bne	.L1883
 4735 2e36 0746     		mov	r7, r0
 4736              	.L715:
 4737 2e38 0023     		movs	r3, #0
 4738 2e3a 0DF5BC78 		add	r8, sp, #376
 4739 2e3e 5021     		movs	r1, #80
 4740 2e40 2846     		mov	r0, r5
 4741 2e42 88F80030 		strb	r3, [r8]
 4742 2e46 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4743 2e4a 0028     		cmp	r0, #0
 4744 2e4c 02F09482 		beq	.L716
 4745 2e50 0DF17009 		add	r9, sp, #112
 4746 2e54 4946     		mov	r1, r9
 4747 2e56 2846     		mov	r0, r5
 4748 2e58 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 4749 2e5c 0028     		cmp	r0, #0
 4750 2e5e 02F00785 		beq	.L717
 4751 2e62 4946     		mov	r1, r9
 4752 2e64 2068     		ldr	r0, [r4]
 4753 2e66 FFF7FEFF 		bl	_ZN8Platform12SetIPAddressEPh
 4754 2e6a 5321     		movs	r1, #83
 4755 2e6c 2846     		mov	r0, r5
 4756 2e6e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4757 2e72 0028     		cmp	r0, #0
 4758 2e74 42F08982 		bne	.L718
 4759 2e78 0123     		movs	r3, #1
 4760 2e7a 0D93     		str	r3, [sp, #52]
 4761 2e7c FDF7EBB8 		b	.L166
 4762              	.L251:
 4763 2e80 0021     		movs	r1, #0
 4764 2e82 1520     		movs	r0, #21
 4765 2e84 1AAB     		add	r3, sp, #104
 4766 2e86 8DF87811 		strb	r1, [sp, #376]
 4767 2e8a 8DF86810 		strb	r1, [sp, #104]
 4768 2e8e 1D90     		str	r0, [sp, #116]
 4769 2e90 5EAF     		add	r7, sp, #376
 4770 2e92 1CAA     		add	r2, sp, #112
 4771 2e94 5021     		movs	r1, #80
 4772 2e96 2846     		mov	r0, r5
 4773 2e98 1C97     		str	r7, [sp, #112]
 4774 2e9a FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 4775 2e9e 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 4776 2ea2 002B     		cmp	r3, #0
 4777 2ea4 41F03985 		bne	.L1884
 4778              	.L714:
 4779 2ea8 0123     		movs	r3, #1
 4780 2eaa 0D93     		str	r3, [sp, #52]
 4781 2eac FDF7D3B8 		b	.L166
 4782              	.L182:
 4783 2eb0 4FF00008 		mov	r8, #0
 4784 2eb4 6523     		movs	r3, #101
 4785 2eb6 5EAF     		add	r7, sp, #376
 4786 2eb8 1CA9     		add	r1, sp, #112
 4787 2eba 2846     		mov	r0, r5
 4788 2ebc 8DF87881 		strb	r8, [sp, #376]
ARM GAS  /tmp/ccIESeqr.s 			page 85


 4789 2ec0 1C97     		str	r7, [sp, #112]
 4790 2ec2 1D93     		str	r3, [sp, #116]
 4791 2ec4 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 4792 2ec8 0028     		cmp	r0, #0
 4793 2eca 01F03E81 		beq	.L377
 4794 2ece 2168     		ldr	r1, [r4]
 4795 2ed0 4346     		mov	r3, r8
 4796 2ed2 D1F86805 		ldr	r0, [r1, #1384]
 4797 2ed6 3A46     		mov	r2, r7
 4798 2ed8 5249     		ldr	r1, .L1972+24
 4799 2eda FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 4800 2ede 0123     		movs	r3, #1
 4801 2ee0 0D93     		str	r3, [sp, #52]
 4802 2ee2 FDF7B8B8 		b	.L166
 4803              	.L270:
 4804 2ee6 5321     		movs	r1, #83
 4805 2ee8 2846     		mov	r0, r5
 4806 2eea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4807 2eee 0746     		mov	r7, r0
 4808 2ef0 0028     		cmp	r0, #0
 4809 2ef2 01F0BE80 		beq	.L788
 4810 2ef6 2846     		mov	r0, r5
 4811 2ef8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4812 2efc 4421     		movs	r1, #68
 4813 2efe 8246     		mov	r10, r0
 4814 2f00 2846     		mov	r0, r5
 4815 2f02 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4816 2f06 0028     		cmp	r0, #0
 4817 2f08 3EF4B5A9 		beq	.L313
 4818 2f0c 0627     		movs	r7, #6
 4819 2f0e 0DF17009 		add	r9, sp, #112
 4820 2f12 0DF5BC78 		add	r8, sp, #376
 4821 2f16 0023     		movs	r3, #0
 4822 2f18 4A46     		mov	r2, r9
 4823 2f1a 4146     		mov	r1, r8
 4824 2f1c 2846     		mov	r0, r5
 4825 2f1e C9F80070 		str	r7, [r9]
 4826 2f22 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 4827 2f26 D9F80030 		ldr	r3, [r9]
 4828 2f2a C3B1     		cbz	r3, .L794
 4829 2f2c D8F80010 		ldr	r1, [r8]
 4830 2f30 D4F80032 		ldr	r3, [r4, #512]
 4831 2f34 8B42     		cmp	r3, r1
 4832 2f36 42F27885 		bls	.L791
 4833 2f3a 0027     		movs	r7, #0
 4834 2f3c 06E0     		b	.L793
 4835              	.L1708:
 4836 2f3e 58F82710 		ldr	r1, [r8, r7, lsl #2]
 4837 2f42 D4F80032 		ldr	r3, [r4, #512]
 4838 2f46 9942     		cmp	r1, r3
 4839 2f48 82F06F85 		bcs	.L791
 4840              	.L793:
 4841 2f4c 5246     		mov	r2, r10
 4842 2f4e 2068     		ldr	r0, [r4]
 4843 2f50 FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 4844 2f54 D9F80030 		ldr	r3, [r9]
 4845 2f58 0137     		adds	r7, r7, #1
ARM GAS  /tmp/ccIESeqr.s 			page 86


 4846 2f5a BB42     		cmp	r3, r7
 4847 2f5c EFD8     		bhi	.L1708
 4848              	.L794:
 4849 2f5e 0123     		movs	r3, #1
 4850 2f60 0D93     		str	r3, [sp, #52]
 4851 2f62 FDF778B8 		b	.L166
 4852              	.L191:
 4853 2f66 D4F8F831 		ldr	r3, [r4, #504]
 4854 2f6a 002B     		cmp	r3, #0
 4855 2f6c 01F0F587 		beq	.L1885
 4856 2f70 3346     		mov	r3, r6
 4857 2f72 0027     		movs	r7, #0
 4858 2f74 04F27228 		addw	r8, r4, #626
 4859 2f78 3E46     		mov	r6, r7
 4860 2f7a 9946     		mov	r9, r3
 4861 2f7c 05E0     		b	.L414
 4862              	.L411:
 4863 2f7e D4F8F831 		ldr	r3, [r4, #504]
 4864 2f82 0137     		adds	r7, r7, #1
 4865 2f84 BB42     		cmp	r3, r7
 4866 2f86 40F2FC86 		bls	.L1886
 4867              	.L414:
 4868 2f8a 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 4869 2f8e 2846     		mov	r0, r5
 4870 2f90 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4871 2f94 0028     		cmp	r0, #0
 4872 2f96 F2D0     		beq	.L411
 4873 2f98 2946     		mov	r1, r5
 4874 2f9a 2046     		mov	r0, r4
 4875 2f9c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4876 2fa0 0646     		mov	r6, r0
 4877 2fa2 0028     		cmp	r0, #0
 4878 2fa4 3EF482A9 		beq	.L704
 4879 2fa8 2846     		mov	r0, r5
 4880 2faa D4F800B0 		ldr	fp, [r4]
 4881 2fae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4882 2fb2 0146     		mov	r1, r0
 4883 2fb4 8246     		mov	r10, r0
 4884 2fb6 FFF7FEFF 		bl	__aeabi_fcmpun
 4885 2fba 38B9     		cbnz	r0, .L900
 4886 2fbc 4FF07E51 		mov	r1, #1065353216
 4887 2fc0 5046     		mov	r0, r10
 4888 2fc2 FFF7FEFF 		bl	__aeabi_fcmpgt
 4889 2fc6 0028     		cmp	r0, #0
 4890 2fc8 00F0A683 		beq	.L1887
 4891              	.L900:
 4892 2fcc 0BEB870B 		add	fp, fp, r7, lsl #2
 4893 2fd0 CBF824A1 		str	r10, [fp, #292]	@ float
 4894 2fd4 D3E7     		b	.L411
 4895              	.L254:
 4896 2fd6 AB68     		ldr	r3, [r5, #8]
 4897 2fd8 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4898 2fda 9B06     		lsls	r3, r3, #26
 4899 2fdc 3EF54BA9 		bmi	.L313
 4900 2fe0 5021     		movs	r1, #80
 4901 2fe2 2846     		mov	r0, r5
 4902 2fe4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccIESeqr.s 			page 87


 4903 2fe8 0028     		cmp	r0, #0
 4904 2fea 02F0E481 		beq	.L723
 4905 2fee 5EA9     		add	r1, sp, #376
 4906 2ff0 2846     		mov	r0, r5
 4907 2ff2 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 4908 2ff6 0028     		cmp	r0, #0
 4909 2ff8 02F04284 		beq	.L724
 4910 2ffc 5EA9     		add	r1, sp, #376
 4911 2ffe 2068     		ldr	r0, [r4]
 4912 3000 FFF7FEFF 		bl	_ZN8Platform10SetGateWayEPh
 4913 3004 0123     		movs	r3, #1
 4914 3006 0D93     		str	r3, [sp, #52]
 4915 3008 FDF725B8 		b	.L166
 4916              	.L1973:
 4917              		.align	2
 4918              	.L1972:
 4919 300c 00000000 		.word	reprap
 4920 3010 A4000000 		.word	.LC26
 4921 3014 C4000000 		.word	.LC29
 4922 3018 B0000000 		.word	.LC27
 4923 301c B8000000 		.word	.LC28
 4924 3020 3C030000 		.word	.LC64
 4925 3024 44020000 		.word	.LC53
 4926              	.L253:
 4927 3028 AB68     		ldr	r3, [r5, #8]
 4928 302a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4929 302c 9A06     		lsls	r2, r3, #26
 4930 302e 3EF522A9 		bmi	.L313
 4931 3032 5021     		movs	r1, #80
 4932 3034 2846     		mov	r0, r5
 4933 3036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4934 303a 0028     		cmp	r0, #0
 4935 303c 02F0CE81 		beq	.L720
 4936 3040 5EA9     		add	r1, sp, #376
 4937 3042 2846     		mov	r0, r5
 4938 3044 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 4939 3048 0028     		cmp	r0, #0
 4940 304a 02F0E783 		beq	.L721
 4941 304e 5EA9     		add	r1, sp, #376
 4942 3050 2068     		ldr	r0, [r4]
 4943 3052 FFF7FEFF 		bl	_ZN8Platform10SetNetMaskEPh
 4944 3056 0123     		movs	r3, #1
 4945 3058 0D93     		str	r3, [sp, #52]
 4946 305a FCF7FCBF 		b	.L166
 4947              	.L255:
 4948 305e 5021     		movs	r1, #80
 4949 3060 2846     		mov	r0, r5
 4950 3062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4951 3066 0028     		cmp	r0, #0
 4952 3068 01F08080 		beq	.L726
 4953 306c 2846     		mov	r0, r5
 4954 306e 2768     		ldr	r7, [r4]
 4955 3070 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4956 3074 C1B2     		uxtb	r1, r0
 4957 3076 3846     		mov	r0, r7
 4958 3078 FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 4959 307c 0123     		movs	r3, #1
ARM GAS  /tmp/ccIESeqr.s 			page 88


 4960 307e 0D93     		str	r3, [sp, #52]
 4961 3080 FCF7E9BF 		b	.L166
 4962              	.L250:
 4963 3084 0021     		movs	r1, #0
 4964 3086 2920     		movs	r0, #41
 4965 3088 1AAB     		add	r3, sp, #104
 4966 308a 8DF87811 		strb	r1, [sp, #376]
 4967 308e 8DF86810 		strb	r1, [sp, #104]
 4968 3092 1D90     		str	r0, [sp, #116]
 4969 3094 5EAF     		add	r7, sp, #376
 4970 3096 1CAA     		add	r2, sp, #112
 4971 3098 5021     		movs	r1, #80
 4972 309a 2846     		mov	r0, r5
 4973 309c 1C97     		str	r7, [sp, #112]
 4974 309e FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 4975 30a2 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 4976 30a6 002B     		cmp	r3, #0
 4977 30a8 01F01080 		beq	.L712
 4978 30ac 3946     		mov	r1, r7
 4979 30ae C948     		ldr	r0, .L1974
 4980 30b0 FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 4981              	.L713:
 4982 30b4 0123     		movs	r3, #1
 4983 30b6 0D93     		str	r3, [sp, #52]
 4984 30b8 FCF7CDBF 		b	.L166
 4985              	.L171:
 4986 30bc 2946     		mov	r1, r5
 4987 30be 2046     		mov	r0, r4
 4988 30c0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4989 30c4 0028     		cmp	r0, #0
 4990 30c6 3EF4F1A8 		beq	.L704
 4991 30ca D4F8F831 		ldr	r3, [r4, #504]
 4992 30ce 002B     		cmp	r3, #0
 4993 30d0 00F00587 		beq	.L998
 4994 30d4 0027     		movs	r7, #0
 4995 30d6 4FF00109 		mov	r9, #1
 4996 30da BA46     		mov	r10, r7
 4997 30dc 04F27228 		addw	r8, r4, #626
 4998 30e0 05E0     		b	.L326
 4999              	.L325:
 5000 30e2 D4F8F831 		ldr	r3, [r4, #504]
 5001 30e6 0137     		adds	r7, r7, #1
 5002 30e8 BB42     		cmp	r3, r7
 5003 30ea 40F2F986 		bls	.L324
 5004              	.L326:
 5005 30ee 18F8011B 		ldrb	r1, [r8], #1	@ zero_extendqisi2
 5006 30f2 2846     		mov	r0, r5
 5007 30f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5008 30f8 0346     		mov	r3, r0
 5009 30fa 0028     		cmp	r0, #0
 5010 30fc F1D0     		beq	.L325
 5011 30fe D4F88022 		ldr	r2, [r4, #640]
 5012 3102 09FA07F1 		lsl	r1, r9, r7
 5013 3106 22EA0102 		bic	r2, r2, r1
 5014 310a C4F88022 		str	r2, [r4, #640]
 5015 310e 3946     		mov	r1, r7
 5016 3110 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccIESeqr.s 			page 89


 5017 3112 9A46     		mov	r10, r3
 5018 3114 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 5019 3118 E3E7     		b	.L325
 5020              	.L267:
 5021 311a 5021     		movs	r1, #80
 5022 311c 2846     		mov	r0, r5
 5023 311e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5024 3122 0028     		cmp	r0, #0
 5025 3124 3EF4A7A8 		beq	.L313
 5026 3128 2846     		mov	r0, r5
 5027 312a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5028 312e 0828     		cmp	r0, #8
 5029 3130 8146     		mov	r9, r0
 5030 3132 3EF6A0A8 		bhi	.L313
 5031 3136 5321     		movs	r1, #83
 5032 3138 2846     		mov	r0, r5
 5033 313a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5034 313e 0746     		mov	r7, r0
 5035 3140 90B1     		cbz	r0, .L770
 5036 3142 2946     		mov	r1, r5
 5037 3144 2046     		mov	r0, r4
 5038 3146 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5039 314a 0746     		mov	r7, r0
 5040 314c 0028     		cmp	r0, #0
 5041 314e 3EF4ADA8 		beq	.L704
 5042 3152 2846     		mov	r0, r5
 5043 3154 D4F80080 		ldr	r8, [r4]
 5044 3158 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5045 315c 0030     		adds	r0, r0, #0
 5046 315e 18BF     		it	ne
 5047 3160 0120     		movne	r0, #1
 5048 3162 C844     		add	r8, r8, r9
 5049 3164 88F8B900 		strb	r0, [r8, #185]
 5050              	.L770:
 5051 3168 5221     		movs	r1, #82
 5052 316a 2846     		mov	r0, r5
 5053 316c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5054 3170 0028     		cmp	r0, #0
 5055 3172 02F08586 		beq	.L771
 5056 3176 2946     		mov	r1, r5
 5057 3178 2046     		mov	r0, r4
 5058 317a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5059 317e 0028     		cmp	r0, #0
 5060 3180 3EF494A8 		beq	.L704
 5061 3184 2846     		mov	r0, r5
 5062 3186 2768     		ldr	r7, [r4]
 5063 3188 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5064 318c 4946     		mov	r1, r9
 5065 318e 42B2     		sxtb	r2, r0
 5066 3190 3846     		mov	r0, r7
 5067 3192 FFF7FEFF 		bl	_ZN8Platform14SetEnableValueEja
 5068 3196 5421     		movs	r1, #84
 5069 3198 2846     		mov	r0, r5
 5070 319a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5071 319e 0028     		cmp	r0, #0
 5072 31a0 3EF469A8 		beq	.L313
 5073              	.L774:
ARM GAS  /tmp/ccIESeqr.s 			page 90


 5074 31a4 0427     		movs	r7, #4
 5075 31a6 0123     		movs	r3, #1
 5076 31a8 1CAA     		add	r2, sp, #112
 5077 31aa 5EA9     		add	r1, sp, #376
 5078 31ac 2846     		mov	r0, r5
 5079 31ae 1C97     		str	r7, [sp, #112]
 5080 31b0 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5081 31b4 1C9B     		ldr	r3, [sp, #112]
 5082 31b6 BB42     		cmp	r3, r7
 5083 31b8 03F09D80 		beq	.L1888
 5084 31bc 8649     		ldr	r1, .L1974+4
 5085 31be 3046     		mov	r0, r6
 5086 31c0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5087 31c4 0223     		movs	r3, #2
 5088 31c6 0D93     		str	r3, [sp, #52]
 5089 31c8 FCF745BF 		b	.L166
 5090              	.L271:
 5091 31cc 5021     		movs	r1, #80
 5092 31ce 2846     		mov	r0, r5
 5093 31d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5094 31d4 0028     		cmp	r0, #0
 5095 31d6 3EF44EA8 		beq	.L313
 5096 31da 2846     		mov	r0, r5
 5097 31dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5098 31e0 0328     		cmp	r0, #3
 5099 31e2 0746     		mov	r7, r0
 5100 31e4 3EF647A8 		bhi	.L313
 5101 31e8 7A4B     		ldr	r3, .L1974
 5102 31ea 0146     		mov	r1, r0
 5103 31ec D868     		ldr	r0, [r3, #12]
 5104 31ee FFF7FEFF 		bl	_ZNK4Heat13GetAveragePWMEj
 5105 31f2 FFF7FEFF 		bl	__aeabi_f2d
 5106 31f6 3A46     		mov	r2, r7
 5107 31f8 CDE90001 		strd	r0, [sp]
 5108 31fc 7749     		ldr	r1, .L1974+8
 5109 31fe 3046     		mov	r0, r6
 5110 3200 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5111 3204 0123     		movs	r3, #1
 5112 3206 0D93     		str	r3, [sp, #52]
 5113 3208 FCF725BF 		b	.L166
 5114              	.L186:
 5115 320c 0027     		movs	r7, #0
 5116 320e 17AA     		add	r2, sp, #92
 5117 3210 16AB     		add	r3, sp, #88
 5118 3212 5021     		movs	r1, #80
 5119 3214 2846     		mov	r0, r5
 5120 3216 1797     		str	r7, [sp, #92]
 5121 3218 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 5122 321c 16AB     		add	r3, sp, #88
 5123 321e 18AA     		add	r2, sp, #96
 5124 3220 5321     		movs	r1, #83
 5125 3222 2846     		mov	r0, r5
 5126 3224 1897     		str	r7, [sp, #96]
 5127 3226 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 5128 322a 2368     		ldr	r3, [r4]
 5129 322c 0DF16808 		add	r8, sp, #104
 5130 3230 0DF16409 		add	r9, sp, #100
ARM GAS  /tmp/ccIESeqr.s 			page 91


 5131 3234 D3F86805 		ldr	r0, [r3, #1384]
 5132 3238 1799     		ldr	r1, [sp, #92]
 5133 323a 5EAB     		add	r3, sp, #376
 5134 323c 1CAA     		add	r2, sp, #112
 5135 323e CDF80480 		str	r8, [sp, #4]
 5136 3242 CDF80090 		str	r9, [sp]
 5137 3246 FFF7FEFF 		bl	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 5138 324a 189B     		ldr	r3, [sp, #96]
 5139 324c 0746     		mov	r7, r0
 5140 324e 022B     		cmp	r3, #2
 5141 3250 02F01680 		beq	.L1889
 5142 3254 0128     		cmp	r0, #1
 5143 3256 01F0C783 		beq	.L394
 5144 325a 0228     		cmp	r0, #2
 5145 325c 01F08E83 		beq	.L395
 5146 3260 179A     		ldr	r2, [sp, #92]
 5147 3262 5F49     		ldr	r1, .L1974+12
 5148 3264 3046     		mov	r0, r6
 5149 3266 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5150 326a 0223     		movs	r3, #2
 5151 326c 0D93     		str	r3, [sp, #52]
 5152 326e FCF7F2BE 		b	.L166
 5153              	.L185:
 5154 3272 2946     		mov	r1, r5
 5155 3274 2046     		mov	r0, r4
 5156 3276 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 5157 327a 0028     		cmp	r0, #0
 5158 327c 3EF416A8 		beq	.L704
 5159 3280 D4F8D473 		ldr	r7, [r4, #980]
 5160 3284 002F     		cmp	r7, #0
 5161 3286 02F06682 		beq	.L1890
 5162 328a 3146     		mov	r1, r6
 5163 328c 2046     		mov	r0, r4
 5164 328e FFF7FEFF 		bl	_ZN6GCodes11AdvanceHashERK9StringRef
 5165 3292 0D90     		str	r0, [sp, #52]
 5166 3294 FCF7DFBE 		b	.L166
 5167              	.L249:
 5168 3298 AB68     		ldr	r3, [r5, #8]
 5169 329a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5170 329c 9806     		lsls	r0, r3, #26
 5171 329e 3DF5EAAF 		bmi	.L313
 5172 32a2 4921     		movs	r1, #73
 5173 32a4 2846     		mov	r0, r5
 5174 32a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5175 32aa 0028     		cmp	r0, #0
 5176 32ac 42F01682 		bne	.L1891
 5177              	.L709:
 5178 32b0 5021     		movs	r1, #80
 5179 32b2 2846     		mov	r0, r5
 5180 32b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5181 32b8 0028     		cmp	r0, #0
 5182 32ba 02F00B80 		beq	.L710
 5183 32be 5EA9     		add	r1, sp, #376
 5184 32c0 2846     		mov	r0, r5
 5185 32c2 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetMacAddressEPh
 5186 32c6 0028     		cmp	r0, #0
 5187 32c8 02F00F85 		beq	.L1892
ARM GAS  /tmp/ccIESeqr.s 			page 92


 5188 32cc 0123     		movs	r3, #1
 5189 32ce 0D93     		str	r3, [sp, #52]
 5190 32d0 FCF7C1BE 		b	.L166
 5191              	.L178:
 5192 32d4 5321     		movs	r1, #83
 5193 32d6 2846     		mov	r0, r5
 5194 32d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5195 32dc 0028     		cmp	r0, #0
 5196 32de 3DF4CAAF 		beq	.L313
 5197 32e2 2846     		mov	r0, r5
 5198 32e4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5199 32e8 5021     		movs	r1, #80
 5200 32ea C4F86002 		str	r0, [r4, #608]
 5201 32ee 2846     		mov	r0, r5
 5202 32f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5203 32f4 0028     		cmp	r0, #0
 5204 32f6 3DF4BEAF 		beq	.L313
 5205 32fa 2846     		mov	r0, r5
 5206 32fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5207 3300 0146     		mov	r1, r0
 5208 3302 0746     		mov	r7, r0
 5209 3304 FFF7FEFF 		bl	__aeabi_fcmpun
 5210 3308 48B9     		cbnz	r0, .L896
 5211 330a 4FF07E51 		mov	r1, #1065353216
 5212 330e 3846     		mov	r0, r7
 5213 3310 FFF7FEFF 		bl	__aeabi_fcmplt
 5214 3314 0028     		cmp	r0, #0
 5215 3316 42F06F84 		bne	.L895
 5216 331a 4FF07E57 		mov	r7, #1065353216
 5217              	.L896:
 5218 331e 0123     		movs	r3, #1
 5219 3320 C4F80871 		str	r7, [r4, #264]	@ float
 5220 3324 0D93     		str	r3, [sp, #52]
 5221 3326 FCF796BE 		b	.L166
 5222              	.L269:
 5223 332a 5021     		movs	r1, #80
 5224 332c 2846     		mov	r0, r5
 5225 332e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5226 3332 0746     		mov	r7, r0
 5227 3334 A0B1     		cbz	r0, .L781
 5228 3336 2846     		mov	r0, r5
 5229 3338 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5230 333c 4921     		movs	r1, #73
 5231 333e 8046     		mov	r8, r0
 5232 3340 2846     		mov	r0, r5
 5233 3342 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5234 3346 0028     		cmp	r0, #0
 5235 3348 41F07887 		bne	.L1893
 5236              	.L782:
 5237 334c 0246     		mov	r2, r0
 5238 334e 1FFA88F1 		uxth	r1, r8
 5239 3352 2068     		ldr	r0, [r4]
 5240 3354 FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
 5241 3358 0746     		mov	r7, r0
 5242 335a 0028     		cmp	r0, #0
 5243 335c 01F06587 		beq	.L1894
 5244              	.L781:
ARM GAS  /tmp/ccIESeqr.s 			page 93


 5245 3360 4621     		movs	r1, #70
 5246 3362 2846     		mov	r0, r5
 5247 3364 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5248 3368 0028     		cmp	r0, #0
 5249 336a 41F04F85 		bne	.L1895
 5250              	.L783:
 5251 336e 5321     		movs	r1, #83
 5252 3370 2846     		mov	r0, r5
 5253 3372 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5254 3376 0028     		cmp	r0, #0
 5255 3378 41F03085 		bne	.L1896
 5256 337c 002F     		cmp	r7, #0
 5257 337e 7DF47AAF 		bne	.L313
 5258 3382 0123     		movs	r3, #1
 5259 3384 D4F800A0 		ldr	r10, [r4]
 5260 3388 0D93     		str	r3, [sp, #52]
 5261 338a DAF81006 		ldr	r0, [r10, #1552]	@ float
 5262 338e FFF7FEFF 		bl	__aeabi_f2d
 5263 3392 8046     		mov	r8, r0
 5264 3394 BAF81806 		ldrh	r0, [r10, #1560]
 5265 3398 8946     		mov	r9, r1
 5266 339a FFF7FEFF 		bl	__aeabi_ui2f
 5267 339e FFF7FEFF 		bl	__aeabi_f2d
 5268 33a2 9AF817E6 		ldrb	lr, [r10, #1559]	@ zero_extendqisi2
 5269 33a6 0F4B     		ldr	r3, .L1974+16
 5270 33a8 0F4A     		ldr	r2, .L1974+20
 5271 33aa BAF814C6 		ldrh	ip, [r10, #1556]
 5272 33ae BEF1000F 		cmp	lr, #0
 5273 33b2 0CBF     		ite	eq
 5274 33b4 9E46     		moveq	lr, r3
 5275 33b6 9646     		movne	lr, r2
 5276 33b8 CDE90001 		strd	r0, [sp]
 5277 33bc 4246     		mov	r2, r8
 5278 33be 4B46     		mov	r3, r9
 5279 33c0 CDF808C0 		str	ip, [sp, #8]
 5280 33c4 CDF80CE0 		str	lr, [sp, #12]
 5281 33c8 0849     		ldr	r1, .L1974+24
 5282 33ca 3046     		mov	r0, r6
 5283 33cc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5284 33d0 FCF741BE 		b	.L166
 5285              	.L1975:
 5286              		.align	2
 5287              	.L1974:
 5288 33d4 00000000 		.word	reprap
 5289 33d8 CC0E0000 		.word	.LC163
 5290 33dc 34100000 		.word	.LC171
 5291 33e0 54040000 		.word	.LC72
 5292 33e4 04010000 		.word	.LC36
 5293 33e8 F8000000 		.word	.LC35
 5294 33ec B80F0000 		.word	.LC167
 5295              	.L189:
 5296 33f0 2946     		mov	r1, r5
 5297 33f2 2046     		mov	r0, r4
 5298 33f4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5299 33f8 0028     		cmp	r0, #0
 5300 33fa 3DF457AF 		beq	.L704
 5301 33fe 5321     		movs	r1, #83
ARM GAS  /tmp/ccIESeqr.s 			page 94


 5302 3400 2846     		mov	r0, r5
 5303 3402 2768     		ldr	r7, [r4]
 5304 3404 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5305 3408 0028     		cmp	r0, #0
 5306 340a 42F07580 		bne	.L1897
 5307              	.L410:
 5308 340e 0146     		mov	r1, r0
 5309 3410 3846     		mov	r0, r7
 5310 3412 FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 5311 3416 0123     		movs	r3, #1
 5312 3418 0D93     		str	r3, [sp, #52]
 5313 341a FCF71CBE 		b	.L166
 5314              	.L293:
 5315 341e 2368     		ldr	r3, [r4]
 5316 3420 D14A     		ldr	r2, .L1976
 5317 3422 D3F86805 		ldr	r0, [r3, #1384]
 5318 3426 D149     		ldr	r1, .L1976+4
 5319 3428 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 5320 342c 0028     		cmp	r0, #0
 5321 342e 40F05786 		bne	.L881
 5322 3432 CF49     		ldr	r1, .L1976+8
 5323 3434 3046     		mov	r0, r6
 5324 3436 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5325 343a 0223     		movs	r3, #2
 5326 343c 0D93     		str	r3, [sp, #52]
 5327 343e FCF70ABE 		b	.L166
 5328              	.L183:
 5329 3442 2946     		mov	r1, r5
 5330 3444 2046     		mov	r0, r4
 5331 3446 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 5332 344a 0028     		cmp	r0, #0
 5333 344c 3DF42EAF 		beq	.L704
 5334 3450 0027     		movs	r7, #0
 5335 3452 6523     		movs	r3, #101
 5336 3454 0DF17009 		add	r9, sp, #112
 5337 3458 4946     		mov	r1, r9
 5338 345a 5EAE     		add	r6, sp, #376
 5339 345c 2846     		mov	r0, r5
 5340 345e 1D93     		str	r3, [sp, #116]
 5341 3460 8DF87871 		strb	r7, [sp, #376]
 5342 3464 1C96     		str	r6, [sp, #112]
 5343 3466 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 5344 346a B842     		cmp	r0, r7
 5345 346c 14BF     		ite	ne
 5346 346e 3146     		movne	r1, r6
 5347 3470 3946     		moveq	r1, r7
 5348 3472 3B46     		mov	r3, r7
 5349 3474 4A46     		mov	r2, r9
 5350 3476 BF48     		ldr	r0, .L1976+12
 5351 3478 FFF7FEFF 		bl	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 5352 347c 8246     		mov	r10, r0
 5353 347e 0028     		cmp	r0, #0
 5354 3480 3CF4F0AD 		beq	.L1671
 5355 3484 0A21     		movs	r1, #10
 5356 3486 D9F80000 		ldr	r0, [r9]
 5357 348a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 5358 348e 2946     		mov	r1, r5
ARM GAS  /tmp/ccIESeqr.s 			page 95


 5359 3490 2046     		mov	r0, r4
 5360 3492 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 5361 3496 D9F80030 		ldr	r3, [r9]
 5362 349a 3A46     		mov	r2, r7
 5363 349c 2946     		mov	r1, r5
 5364 349e 2046     		mov	r0, r4
 5365 34a0 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 5366 34a4 FCF7DEBD 		b	.L1671
 5367              	.L177:
 5368 34a8 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 5369 34ac 002B     		cmp	r3, #0
 5370 34ae 41F01B84 		bne	.L1898
 5371 34b2 B04B     		ldr	r3, .L1976+12
 5372 34b4 DB69     		ldr	r3, [r3, #28]
 5373 34b6 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 5374 34b8 002B     		cmp	r3, #0
 5375 34ba 40F0ED86 		bne	.L369
 5376 34be AE49     		ldr	r1, .L1976+16
 5377 34c0 3046     		mov	r0, r6
 5378 34c2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5379 34c6 0223     		movs	r3, #2
 5380 34c8 0D93     		str	r3, [sp, #52]
 5381 34ca FCF7C4BD 		b	.L166
 5382              	.L181:
 5383 34ce AB49     		ldr	r1, .L1976+20
 5384 34d0 3046     		mov	r0, r6
 5385 34d2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5386 34d6 0123     		movs	r3, #1
 5387 34d8 0D93     		str	r3, [sp, #52]
 5388 34da FCF7BCBD 		b	.L166
 5389              	.L190:
 5390 34de 0123     		movs	r3, #1
 5391 34e0 0D93     		str	r3, [sp, #52]
 5392 34e2 FCF7B8BD 		b	.L166
 5393              	.L163:
 5394 34e6 5321     		movs	r1, #83
 5395 34e8 2846     		mov	r0, r5
 5396 34ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5397 34ee 0028     		cmp	r0, #0
 5398 34f0 41F0B983 		bne	.L1899
 5399 34f4 0746     		mov	r7, r0
 5400              	.L682:
 5401 34f6 5221     		movs	r1, #82
 5402 34f8 2846     		mov	r0, r5
 5403 34fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5404 34fe 0028     		cmp	r0, #0
 5405 3500 41F0AB83 		bne	.L1900
 5406 3504 4FF0FF32 		mov	r2, #-1
 5407              	.L683:
 5408 3508 A36C     		ldr	r3, [r4, #72]
 5409 350a 1968     		ldr	r1, [r3]
 5410 350c 8D42     		cmp	r5, r1
 5411 350e 01F0FE86 		beq	.L684
 5412              	.L687:
 5413 3512 0223     		movs	r3, #2
 5414              	.L685:
 5415 3514 3946     		mov	r1, r7
ARM GAS  /tmp/ccIESeqr.s 			page 96


 5416 3516 2046     		mov	r0, r4
 5417 3518 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 5418 351c 0746     		mov	r7, r0
 5419 351e 0028     		cmp	r0, #0
 5420 3520 00F05D86 		beq	.L1038
 5421 3524 2946     		mov	r1, r5
 5422 3526 2046     		mov	r0, r4
 5423 3528 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 5424 352c 3B46     		mov	r3, r7
 5425 352e 2946     		mov	r1, r5
 5426 3530 2046     		mov	r0, r4
 5427 3532 0022     		movs	r2, #0
 5428 3534 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 5429 3538 4FF0010A 		mov	r10, #1
 5430 353c FCF792BD 		b	.L1671
 5431              	.L165:
 5432 3540 4FF47A72 		mov	r2, #1000
 5433 3544 2946     		mov	r1, r5
 5434 3546 2046     		mov	r0, r4
 5435 3548 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 5436 354c 0D90     		str	r0, [sp, #52]
 5437 354e 0028     		cmp	r0, #0
 5438 3550 3CF481AD 		beq	.L166
 5439 3554 8748     		ldr	r0, .L1976+12
 5440 3556 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5441 355a 5021     		movs	r1, #80
 5442 355c 2846     		mov	r0, r5
 5443 355e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5444 3562 0028     		cmp	r0, #0
 5445 3564 42F02081 		bne	.L1901
 5446              	.L884:
 5447 3568 0021     		movs	r1, #0
 5448              	.L885:
 5449 356a 0022     		movs	r2, #0
 5450 356c 2068     		ldr	r0, [r4]
 5451 356e FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5452 3572 FCF770BD 		b	.L166
 5453              	.L162:
 5454 3576 5321     		movs	r1, #83
 5455 3578 2846     		mov	r0, r5
 5456 357a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5457 357e 0746     		mov	r7, r0
 5458 3580 0028     		cmp	r0, #0
 5459 3582 41F04981 		bne	.L1902
 5460              	.L559:
 5461 3586 5221     		movs	r1, #82
 5462 3588 2846     		mov	r0, r5
 5463 358a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5464 358e 8046     		mov	r8, r0
 5465 3590 0028     		cmp	r0, #0
 5466 3592 41F02A81 		bne	.L1903
 5467              	.L562:
 5468 3596 4621     		movs	r1, #70
 5469 3598 2846     		mov	r0, r5
 5470 359a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5471 359e 8046     		mov	r8, r0
 5472 35a0 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 97


 5473 35a2 41F00981 		bne	.L1904
 5474              	.L565:
 5475 35a6 5421     		movs	r1, #84
 5476 35a8 2846     		mov	r0, r5
 5477 35aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5478 35ae 0028     		cmp	r0, #0
 5479 35b0 40F0C987 		bne	.L1905
 5480 35b4 5A21     		movs	r1, #90
 5481 35b6 2846     		mov	r0, r5
 5482 35b8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5483 35bc 0028     		cmp	r0, #0
 5484 35be 40F0DD87 		bne	.L573
 5485 35c2 002F     		cmp	r7, #0
 5486 35c4 7DF457AE 		bne	.L313
 5487 35c8 0123     		movs	r3, #1
 5488 35ca D4F834A3 		ldr	r10, [r4, #820]	@ float
 5489 35ce 0D93     		str	r3, [sp, #52]
 5490 35d0 5046     		mov	r0, r10
 5491 35d2 FFF7FEFF 		bl	__aeabi_f2d
 5492 35d6 8046     		mov	r8, r0
 5493 35d8 D4F84403 		ldr	r0, [r4, #836]	@ float
 5494 35dc 8946     		mov	r9, r1
 5495 35de FFF7FEFF 		bl	__aeabi_f2d
 5496 35e2 CDE90401 		strd	r0, [sp, #16]
 5497 35e6 6649     		ldr	r1, .L1976+24
 5498 35e8 D4F84003 		ldr	r0, [r4, #832]	@ float
 5499 35ec FFF7FEFF 		bl	__aeabi_fmul
 5500 35f0 FFF7FEFF 		bl	__aeabi_f2iz
 5501 35f4 0390     		str	r0, [sp, #12]
 5502 35f6 D4F83C03 		ldr	r0, [r4, #828]	@ float
 5503 35fa 6149     		ldr	r1, .L1976+24
 5504 35fc FFF7FEFF 		bl	__aeabi_fmul
 5505 3600 FFF7FEFF 		bl	__aeabi_f2iz
 5506 3604 0290     		str	r0, [sp, #8]
 5507 3606 D4F83813 		ldr	r1, [r4, #824]	@ float
 5508 360a 5046     		mov	r0, r10
 5509 360c FFF7FEFF 		bl	__aeabi_fadd
 5510 3610 FFF7FEFF 		bl	__aeabi_f2d
 5511 3614 4246     		mov	r2, r8
 5512 3616 CDE90001 		strd	r0, [sp]
 5513 361a 4B46     		mov	r3, r9
 5514 361c 5949     		ldr	r1, .L1976+28
 5515 361e 3046     		mov	r0, r6
 5516 3620 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5517 3624 FCF717BD 		b	.L166
 5518              	.L161:
 5519 3628 5321     		movs	r1, #83
 5520 362a 2846     		mov	r0, r5
 5521 362c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5522 3630 0746     		mov	r7, r0
 5523 3632 0028     		cmp	r0, #0
 5524 3634 41F08A81 		bne	.L1906
 5525              	.L556:
 5526 3638 5021     		movs	r1, #80
 5527 363a 2846     		mov	r0, r5
 5528 363c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5529 3640 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 98


 5530 3642 41F00080 		bne	.L1907
 5531 3646 5421     		movs	r1, #84
 5532 3648 2846     		mov	r0, r5
 5533 364a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5534 364e 0028     		cmp	r0, #0
 5535 3650 41F00680 		bne	.L558
 5536 3654 002F     		cmp	r7, #0
 5537 3656 7DF40EAE 		bne	.L313
 5538 365a 0123     		movs	r3, #1
 5539 365c D4F800A0 		ldr	r10, [r4]
 5540 3660 0D93     		str	r3, [sp, #52]
 5541 3662 DAF81C01 		ldr	r0, [r10, #284]	@ float
 5542 3666 FFF7FEFF 		bl	__aeabi_f2d
 5543 366a 8046     		mov	r8, r0
 5544 366c DAF82001 		ldr	r0, [r10, #288]	@ float
 5545 3670 8946     		mov	r9, r1
 5546 3672 FFF7FEFF 		bl	__aeabi_f2d
 5547 3676 4246     		mov	r2, r8
 5548 3678 CDE90001 		strd	r0, [sp]
 5549 367c 4B46     		mov	r3, r9
 5550 367e 4249     		ldr	r1, .L1976+32
 5551 3680 3046     		mov	r0, r6
 5552 3682 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5553 3686 FCF7E6BC 		b	.L166
 5554              	.L160:
 5555 368a 4421     		movs	r1, #68
 5556 368c 2846     		mov	r0, r5
 5557 368e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5558 3692 0746     		mov	r7, r0
 5559 3694 0028     		cmp	r0, #0
 5560 3696 41F00882 		bne	.L1908
 5561 369a AB68     		ldr	r3, [r5, #8]
 5562 369c 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5563 369e 5906     		lsls	r1, r3, #25
 5564 36a0 00F11386 		bmi	.L521
 5565 36a4 3949     		ldr	r1, .L1976+36
 5566 36a6 3046     		mov	r0, r6
 5567 36a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5568 36ac 0123     		movs	r3, #1
 5569 36ae 0D93     		str	r3, [sp, #52]
 5570 36b0 FCF7D1BC 		b	.L166
 5571              	.L991:
 5572 36b4 0423     		movs	r3, #4
 5573 36b6 0D93     		str	r3, [sp, #52]
 5574 36b8 FCF7CDBC 		b	.L166
 5575              	.L159:
 5576 36bc 5021     		movs	r1, #80
 5577 36be 2846     		mov	r0, r5
 5578 36c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5579 36c4 0028     		cmp	r0, #0
 5580 36c6 41F03582 		bne	.L480
 5581              	.L481:
 5582 36ca A98E     		ldrh	r1, [r5, #52]
 5583 36cc 2948     		ldr	r0, .L1976+12
 5584 36ce FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 5585 36d2 0123     		movs	r3, #1
 5586 36d4 0D93     		str	r3, [sp, #52]
ARM GAS  /tmp/ccIESeqr.s 			page 99


 5587 36d6 FCF7BEBC 		b	.L166
 5588              	.L158:
 5589 36da 2046     		mov	r0, r4
 5590 36dc FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 5591 36e0 0123     		movs	r3, #1
 5592 36e2 0D93     		str	r3, [sp, #52]
 5593 36e4 FCF7B7BC 		b	.L166
 5594              	.L664:
 5595 36e8 0D9B     		ldr	r3, [sp, #52]
 5596 36ea 99F87222 		ldrb	r2, [r9, #626]	@ zero_extendqisi2
 5597 36ee 2849     		ldr	r1, .L1976+40
 5598 36f0 0093     		str	r3, [sp]
 5599 36f2 5846     		mov	r0, fp
 5600 36f4 5346     		mov	r3, r10
 5601 36f6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5602 36fa 0227     		movs	r7, #2
 5603 36fc FEF7FABF 		b	.L663
 5604              	.L707:
 5605 3700 8642     		cmp	r6, r0
 5606 3702 40F2BF83 		bls	.L1909
 5607 3706 1A46     		mov	r2, r3
 5608 3708 4146     		mov	r1, r8
 5609 370a D9F80000 		ldr	r0, [r9]
 5610 370e F61A     		subs	r6, r6, r3
 5611 3710 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 5612 3714 FDF763BE 		b	.L708
 5613              	.L1887:
 5614 3718 4FF07E5A 		mov	r10, #1065353216
 5615 371c 56E4     		b	.L900
 5616              	.L579:
 5617 371e C346     		mov	fp, r8
 5618 3720 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 5619 3724 FEF792B8 		b	.L578
 5620              	.L157:
 5621 3728 5321     		movs	r1, #83
 5622 372a 2846     		mov	r0, r5
 5623 372c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5624 3730 0028     		cmp	r0, #0
 5625 3732 00F09784 		beq	.L447
 5626 3736 2846     		mov	r0, r5
 5627 3738 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5628 373c 5021     		movs	r1, #80
 5629 373e 071C     		adds	r7, r0, #0
 5630 3740 2846     		mov	r0, r5
 5631 3742 18BF     		it	ne
 5632 3744 0127     		movne	r7, #1
 5633 3746 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5634 374a 0028     		cmp	r0, #0
 5635 374c 01F03E83 		beq	.L448
 5636 3750 2846     		mov	r0, r5
 5637 3752 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5638 3756 3A46     		mov	r2, r7
 5639 3758 C1B2     		uxtb	r1, r0
 5640 375a 0648     		ldr	r0, .L1976+12
 5641 375c FFF7FEFF 		bl	_ZN6RepRap8SetDebugE6Moduleb
 5642 3760 0123     		movs	r3, #1
 5643 3762 0D93     		str	r3, [sp, #52]
ARM GAS  /tmp/ccIESeqr.s 			page 100


 5644 3764 FCF777BC 		b	.L166
 5645              	.L1977:
 5646              		.align	2
 5647              	.L1976:
 5648 3768 7C110000 		.word	.LC185
 5649 376c B0000000 		.word	.LC27
 5650 3770 88110000 		.word	.LC186
 5651 3774 00000000 		.word	reprap
 5652 3778 D4020000 		.word	.LC61
 5653 377c 70030000 		.word	.LC66
 5654 3780 00007042 		.word	1114636288
 5655 3784 1C080000 		.word	.LC108
 5656 3788 D4070000 		.word	.LC107
 5657 378c 24070000 		.word	.LC99
 5658 3790 600B0000 		.word	.LC128
 5659              	.L1829:
 5660 3794 9B46     		mov	fp, r3
 5661              	.L297:
 5662 3796 4521     		movs	r1, #69
 5663 3798 2846     		mov	r0, r5
 5664 379a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5665 379e 0028     		cmp	r0, #0
 5666 37a0 40F0C187 		bne	.L1910
 5667 37a4 40F28A33 		movw	r3, #906
 5668 37a8 9A45     		cmp	r10, r3
 5669 37aa 01F02687 		beq	.L1911
 5670 37ae BBF1000F 		cmp	fp, #0
 5671 37b2 7DF460AD 		bne	.L313
 5672 37b6 40F29133 		movw	r3, #913
 5673 37ba 9A45     		cmp	r10, r3
 5674 37bc 01F08785 		beq	.L1067
 5675              	.L987:
 5676 37c0 BA49     		ldr	r1, .L1978
 5677              	.L873:
 5678 37c2 3046     		mov	r0, r6
 5679 37c4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5680 37c8 D4F8F831 		ldr	r3, [r4, #504]
 5681 37cc C3B1     		cbz	r3, .L877
 5682 37ce 0027     		movs	r7, #0
 5683 37d0 DFF80493 		ldr	r9, .L1978+44
 5684 37d4 04F27228 		addw	r8, r4, #626
 5685              	.L878:
 5686 37d8 3946     		mov	r1, r7
 5687 37da 5246     		mov	r2, r10
 5688 37dc 2068     		ldr	r0, [r4]
 5689 37de 18F801BB 		ldrb	fp, [r8], #1	@ zero_extendqisi2
 5690 37e2 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 5691 37e6 FFF7FEFF 		bl	__aeabi_f2iz
 5692 37ea 5A46     		mov	r2, fp
 5693 37ec 0346     		mov	r3, r0
 5694 37ee 4946     		mov	r1, r9
 5695 37f0 3046     		mov	r0, r6
 5696 37f2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5697 37f6 D4F8F831 		ldr	r3, [r4, #504]
 5698 37fa 0137     		adds	r7, r7, #1
 5699 37fc BB42     		cmp	r3, r7
 5700 37fe EBD8     		bhi	.L878
ARM GAS  /tmp/ccIESeqr.s 			page 101


 5701              	.L877:
 5702 3800 AB49     		ldr	r1, .L1978+4
 5703 3802 3046     		mov	r0, r6
 5704 3804 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5705 3808 D4F80032 		ldr	r3, [r4, #512]
 5706 380c ABB1     		cbz	r3, .L875
 5707 380e 0027     		movs	r7, #0
 5708 3810 DFF8C882 		ldr	r8, .L1978+48
 5709              	.L880:
 5710 3814 D4F8F811 		ldr	r1, [r4, #504]
 5711 3818 5246     		mov	r2, r10
 5712 381a 3944     		add	r1, r1, r7
 5713 381c 2068     		ldr	r0, [r4]
 5714 381e FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 5715 3822 FFF7FEFF 		bl	__aeabi_f2iz
 5716 3826 4146     		mov	r1, r8
 5717 3828 0246     		mov	r2, r0
 5718 382a 3046     		mov	r0, r6
 5719 382c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5720 3830 D4F80032 		ldr	r3, [r4, #512]
 5721 3834 0137     		adds	r7, r7, #1
 5722 3836 BB42     		cmp	r3, r7
 5723 3838 ECD8     		bhi	.L880
 5724              	.L875:
 5725 383a 40F28A33 		movw	r3, #906
 5726 383e 9A45     		cmp	r10, r3
 5727 3840 7DF419AD 		bne	.L313
 5728 3844 2368     		ldr	r3, [r4]
 5729 3846 9B49     		ldr	r1, .L1978+8
 5730 3848 D3F8A802 		ldr	r0, [r3, #680]	@ float
 5731 384c FFF7FEFF 		bl	__aeabi_fmul
 5732 3850 FFF7FEFF 		bl	__aeabi_f2iz
 5733 3854 9849     		ldr	r1, .L1978+12
 5734 3856 0246     		mov	r2, r0
 5735 3858 3046     		mov	r0, r6
 5736 385a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5737 385e 0123     		movs	r3, #1
 5738 3860 0D93     		str	r3, [sp, #52]
 5739 3862 FCF7F8BB 		b	.L166
 5740              	.L153:
 5741 3866 0122     		movs	r2, #1
 5742 3868 AB68     		ldr	r3, [r5, #8]
 5743 386a 0D92     		str	r2, [sp, #52]
 5744 386c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 5745 386e 6FF30002 		bfc	r2, #0, #1
 5746 3872 1A76     		strb	r2, [r3, #24]
 5747 3874 FCF7EFBB 		b	.L166
 5748              	.L155:
 5749 3878 3146     		mov	r1, r6
 5750 387a 2046     		mov	r0, r4
 5751 387c FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 5752 3880 0123     		movs	r3, #1
 5753 3882 0D93     		str	r3, [sp, #52]
 5754 3884 FCF7E7BB 		b	.L166
 5755              	.L1824:
 5756 3888 4521     		movs	r1, #69
 5757 388a 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 102


 5758 388c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5759 3890 0028     		cmp	r0, #0
 5760 3892 40F01E86 		bne	.L977
 5761 3896 0D9B     		ldr	r3, [sp, #52]
 5762 3898 002B     		cmp	r3, #0
 5763 389a 7DF4ECAC 		bne	.L313
 5764              	.L978:
 5765 389e 8749     		ldr	r1, .L1978+16
 5766 38a0 3046     		mov	r0, r6
 5767 38a2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5768 38a6 D4F8F831 		ldr	r3, [r4, #504]
 5769 38aa 2BB3     		cbz	r3, .L553
 5770 38ac 4FF0000B 		mov	fp, #0
 5771 38b0 DFF82CA2 		ldr	r10, .L1978+52
 5772 38b4 DFF82C92 		ldr	r9, .L1978+56
 5773 38b8 04F27228 		addw	r8, r4, #626
 5774              	.L554:
 5775 38bc 2768     		ldr	r7, [r4]
 5776 38be 0BF13403 		add	r3, fp, #52
 5777 38c2 D4F83C02 		ldr	r0, [r4, #572]	@ float
 5778 38c6 5146     		mov	r1, r10
 5779 38c8 07EB8307 		add	r7, r7, r3, lsl #2
 5780 38cc FFF7FEFF 		bl	__aeabi_fmul
 5781 38d0 0146     		mov	r1, r0
 5782 38d2 7868     		ldr	r0, [r7, #4]	@ float
 5783 38d4 FFF7FEFF 		bl	__aeabi_fdiv
 5784 38d8 FFF7FEFF 		bl	__aeabi_f2d
 5785 38dc 18F8012B 		ldrb	r2, [r8], #1	@ zero_extendqisi2
 5786 38e0 CDE90001 		strd	r0, [sp]
 5787 38e4 4946     		mov	r1, r9
 5788 38e6 3046     		mov	r0, r6
 5789 38e8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5790 38ec D4F8F831 		ldr	r3, [r4, #504]
 5791 38f0 0BF1010B 		add	fp, fp, #1
 5792 38f4 5B45     		cmp	r3, fp
 5793 38f6 E1D8     		bhi	.L554
 5794              	.L553:
 5795 38f8 7149     		ldr	r1, .L1978+20
 5796 38fa 3046     		mov	r0, r6
 5797 38fc FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5798 3900 D4F80032 		ldr	r3, [r4, #512]
 5799 3904 002B     		cmp	r3, #0
 5800 3906 3DF4B6AC 		beq	.L313
 5801 390a 4FF0000A 		mov	r10, #0
 5802 390e 4FF0200B 		mov	fp, #32
 5803 3912 DFF8CC91 		ldr	r9, .L1978+52
 5804 3916 DFF8B081 		ldr	r8, .L1978+28
 5805              	.L555:
 5806 391a D4F8F831 		ldr	r3, [r4, #504]
 5807 391e 2168     		ldr	r1, [r4]
 5808 3920 5344     		add	r3, r3, r10
 5809 3922 3433     		adds	r3, r3, #52
 5810 3924 01EB8307 		add	r7, r1, r3, lsl #2
 5811 3928 D4F83C02 		ldr	r0, [r4, #572]	@ float
 5812 392c 4946     		mov	r1, r9
 5813 392e FFF7FEFF 		bl	__aeabi_fmul
 5814 3932 0146     		mov	r1, r0
ARM GAS  /tmp/ccIESeqr.s 			page 103


 5815 3934 7868     		ldr	r0, [r7, #4]	@ float
 5816 3936 FFF7FEFF 		bl	__aeabi_fdiv
 5817 393a FFF7FEFF 		bl	__aeabi_f2d
 5818 393e 5A46     		mov	r2, fp
 5819 3940 CDE90001 		strd	r0, [sp]
 5820 3944 4146     		mov	r1, r8
 5821 3946 3046     		mov	r0, r6
 5822 3948 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5823 394c D4F80032 		ldr	r3, [r4, #512]
 5824 3950 0AF1010A 		add	r10, r10, #1
 5825 3954 5345     		cmp	r3, r10
 5826 3956 4FF03A0B 		mov	fp, #58
 5827 395a DED8     		bhi	.L555
 5828 395c FDF78BBC 		b	.L313
 5829              	.L1871:
 5830 3960 4521     		movs	r1, #69
 5831 3962 2846     		mov	r0, r5
 5832 3964 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5833 3968 0028     		cmp	r0, #0
 5834 396a 40F07285 		bne	.L975
 5835 396e 0D9B     		ldr	r3, [sp, #52]
 5836 3970 002B     		cmp	r3, #0
 5837 3972 7DF480AC 		bne	.L313
 5838              	.L976:
 5839 3976 5349     		ldr	r1, .L1978+24
 5840 3978 3046     		mov	r0, r6
 5841 397a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5842 397e D4F8F831 		ldr	r3, [r4, #504]
 5843 3982 E3B1     		cbz	r3, .L538
 5844 3984 0027     		movs	r7, #0
 5845 3986 DFF85C91 		ldr	r9, .L1978+56
 5846 398a 04F27228 		addw	r8, r4, #626
 5847              	.L539:
 5848 398e 2368     		ldr	r3, [r4]
 5849 3990 07F13E02 		add	r2, r7, #62
 5850 3994 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 5851 3998 D4F83C12 		ldr	r1, [r4, #572]	@ float
 5852 399c FFF7FEFF 		bl	__aeabi_fdiv
 5853 39a0 FFF7FEFF 		bl	__aeabi_f2d
 5854 39a4 18F8012B 		ldrb	r2, [r8], #1	@ zero_extendqisi2
 5855 39a8 CDE90001 		strd	r0, [sp]
 5856 39ac 4946     		mov	r1, r9
 5857 39ae 3046     		mov	r0, r6
 5858 39b0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5859 39b4 D4F8F831 		ldr	r3, [r4, #504]
 5860 39b8 0137     		adds	r7, r7, #1
 5861 39ba BB42     		cmp	r3, r7
 5862 39bc E7D8     		bhi	.L539
 5863              	.L538:
 5864 39be 4049     		ldr	r1, .L1978+20
 5865 39c0 3046     		mov	r0, r6
 5866 39c2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5867 39c6 D4F80032 		ldr	r3, [r4, #512]
 5868 39ca 002B     		cmp	r3, #0
 5869 39cc 3DF453AC 		beq	.L313
 5870 39d0 4FF00008 		mov	r8, #0
 5871 39d4 4FF02009 		mov	r9, #32
ARM GAS  /tmp/ccIESeqr.s 			page 104


 5872 39d8 3B4F     		ldr	r7, .L1978+28
 5873              	.L540:
 5874 39da D4F8F831 		ldr	r3, [r4, #504]
 5875 39de 2168     		ldr	r1, [r4]
 5876 39e0 4344     		add	r3, r3, r8
 5877 39e2 3E33     		adds	r3, r3, #62
 5878 39e4 51F82300 		ldr	r0, [r1, r3, lsl #2]	@ float
 5879 39e8 D4F83C12 		ldr	r1, [r4, #572]	@ float
 5880 39ec FFF7FEFF 		bl	__aeabi_fdiv
 5881 39f0 FFF7FEFF 		bl	__aeabi_f2d
 5882 39f4 4A46     		mov	r2, r9
 5883 39f6 CDE90001 		strd	r0, [sp]
 5884 39fa 3946     		mov	r1, r7
 5885 39fc 3046     		mov	r0, r6
 5886 39fe FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5887 3a02 D4F80032 		ldr	r3, [r4, #512]
 5888 3a06 08F10108 		add	r8, r8, #1
 5889 3a0a 4345     		cmp	r3, r8
 5890 3a0c 4FF03A09 		mov	r9, #58
 5891 3a10 E3D8     		bhi	.L540
 5892 3a12 FDF730BC 		b	.L313
 5893              	.L1822:
 5894 3a16 BBF1000F 		cmp	fp, #0
 5895 3a1a 7DF42CAC 		bne	.L313
 5896              	.L581:
 5897 3a1e 2B49     		ldr	r1, .L1978+32
 5898 3a20 3046     		mov	r0, r6
 5899 3a22 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5900 3a26 D4F8F831 		ldr	r3, [r4, #504]
 5901 3a2a 002B     		cmp	r3, #0
 5902 3a2c 3DF423AC 		beq	.L313
 5903 3a30 4FF00008 		mov	r8, #0
 5904 3a34 4FF02D0A 		mov	r10, #45
 5905 3a38 04F27229 		addw	r9, r4, #626
 5906              	.L582:
 5907 3a3c 2768     		ldr	r7, [r4]
 5908 3a3e 19F801BB 		ldrb	fp, [r9], #1	@ zero_extendqisi2
 5909 3a42 07EB8807 		add	r7, r7, r8, lsl #2
 5910 3a46 D7F84404 		ldr	r0, [r7, #1092]	@ float
 5911 3a4a FFF7FEFF 		bl	__aeabi_f2d
 5912 3a4e CDE90201 		strd	r0, [sp, #8]
 5913 3a52 D7F85C04 		ldr	r0, [r7, #1116]	@ float
 5914 3a56 FFF7FEFF 		bl	__aeabi_f2d
 5915 3a5a 5246     		mov	r2, r10
 5916 3a5c CDE90001 		strd	r0, [sp]
 5917 3a60 5B46     		mov	r3, fp
 5918 3a62 1B49     		ldr	r1, .L1978+36
 5919 3a64 3046     		mov	r0, r6
 5920 3a66 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5921 3a6a D4F8F831 		ldr	r3, [r4, #504]
 5922 3a6e 08F10108 		add	r8, r8, #1
 5923 3a72 4345     		cmp	r3, r8
 5924 3a74 4FF02C0A 		mov	r10, #44
 5925 3a78 E0D8     		bhi	.L582
 5926 3a7a FDF7FCBB 		b	.L313
 5927              	.L1852:
 5928 3a7e BAF1000F 		cmp	r10, #0
ARM GAS  /tmp/ccIESeqr.s 			page 105


 5929 3a82 7DF4F8AB 		bne	.L313
 5930              	.L804:
 5931 3a86 1349     		ldr	r1, .L1978+40
 5932 3a88 3046     		mov	r0, r6
 5933 3a8a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5934 3a8e D4F8F831 		ldr	r3, [r4, #504]
 5935 3a92 002B     		cmp	r3, #0
 5936 3a94 00F01285 		beq	.L800
 5937 3a98 0027     		movs	r7, #0
 5938 3a9a DFF84CB0 		ldr	fp, .L1978+60
 5939 3a9e 04F2722A 		addw	r10, r4, #626
 5940 3aa2 0DF17009 		add	r9, sp, #112
 5941 3aa6 0DF5BC78 		add	r8, sp, #376
 5942 3aaa 39E0     		b	.L809
 5943              	.L1979:
 5944              		.align	2
 5945              	.L1978:
 5946 3aac BC010000 		.word	.LC48
 5947 3ab0 D40B0000 		.word	.LC131
 5948 3ab4 0000C842 		.word	1120403456
 5949 3ab8 68110000 		.word	.LC184
 5950 3abc C0070000 		.word	.LC106
 5951 3ac0 38050000 		.word	.LC79
 5952 3ac4 9C070000 		.word	.LC103
 5953 3ac8 B8070000 		.word	.LC105
 5954 3acc 74080000 		.word	.LC109
 5955 3ad0 84080000 		.word	.LC110
 5956 3ad4 50100000 		.word	.LC172
 5957 3ad8 5C110000 		.word	.LC182
 5958 3adc 64110000 		.word	.LC183
 5959 3ae0 8988883C 		.word	1015580809
 5960 3ae4 AC070000 		.word	.LC104
 5961 3ae8 14010000 		.word	.LC37
 5962              	.L806:
 5963 3aec D8F80030 		ldr	r3, [r8]
 5964 3af0 012B     		cmp	r3, #1
 5965 3af2 00F07283 		beq	.L1054
 5966 3af6 002B     		cmp	r3, #0
 5967 3af8 00F00E82 		beq	.L1055
 5968 3afc 022B     		cmp	r3, #2
 5969 3afe 01F0DF83 		beq	.L1056
 5970 3b02 CC4A     		ldr	r2, .L1980
 5971 3b04 CC49     		ldr	r1, .L1980+4
 5972 3b06 032B     		cmp	r3, #3
 5973 3b08 08BF     		it	eq
 5974 3b0a 0A46     		moveq	r2, r1
 5975              	.L808:
 5976 3b0c CB49     		ldr	r1, .L1980+8
 5977 3b0e 3046     		mov	r0, r6
 5978 3b10 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5979              	.L807:
 5980 3b14 D4F8F831 		ldr	r3, [r4, #504]
 5981 3b18 0137     		adds	r7, r7, #1
 5982 3b1a BB42     		cmp	r3, r7
 5983 3b1c 40F2CE84 		bls	.L800
 5984              	.L809:
 5985 3b20 4346     		mov	r3, r8
ARM GAS  /tmp/ccIESeqr.s 			page 106


 5986 3b22 4A46     		mov	r2, r9
 5987 3b24 3946     		mov	r1, r7
 5988 3b26 2068     		ldr	r0, [r4]
 5989 3b28 FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 5990 3b2c D9F80030 		ldr	r3, [r9]
 5991 3b30 1AF8012B 		ldrb	r2, [r10], #1	@ zero_extendqisi2
 5992 3b34 022B     		cmp	r3, #2
 5993 3b36 00F0ED81 		beq	.L1052
 5994 3b3a C149     		ldr	r1, .L1980+12
 5995 3b3c 012B     		cmp	r3, #1
 5996 3b3e 18BF     		it	ne
 5997 3b40 5946     		movne	r1, fp
 5998 3b42 0B46     		mov	r3, r1
 5999              	.L805:
 6000 3b44 BF49     		ldr	r1, .L1980+16
 6001 3b46 3046     		mov	r0, r6
 6002 3b48 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6003 3b4c D9F80030 		ldr	r3, [r9]
 6004 3b50 002B     		cmp	r3, #0
 6005 3b52 CBD1     		bne	.L806
 6006 3b54 2C21     		movs	r1, #44
 6007 3b56 3046     		mov	r0, r6
 6008 3b58 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6009 3b5c DAE7     		b	.L807
 6010              	.L1834:
 6011 3b5e 4521     		movs	r1, #69
 6012 3b60 2846     		mov	r0, r5
 6013 3b62 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6014 3b66 0028     		cmp	r0, #0
 6015 3b68 40F03785 		bne	.L983
 6016 3b6c 0D9B     		ldr	r3, [sp, #52]
 6017 3b6e 002B     		cmp	r3, #0
 6018 3b70 7DF481AB 		bne	.L313
 6019              	.L984:
 6020 3b74 B449     		ldr	r1, .L1980+20
 6021 3b76 3046     		mov	r0, r6
 6022 3b78 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6023 3b7c D4F8F831 		ldr	r3, [r4, #504]
 6024 3b80 0BB3     		cbz	r3, .L763
 6025 3b82 0027     		movs	r7, #0
 6026 3b84 DFF8F0A2 		ldr	r10, .L1980+68
 6027 3b88 04F27228 		addw	r8, r4, #626
 6028              	.L764:
 6029 3b8c D4F83C02 		ldr	r0, [r4, #572]	@ float
 6030 3b90 5146     		mov	r1, r10
 6031 3b92 FFF7FEFF 		bl	__aeabi_fmul
 6032 3b96 D4F80090 		ldr	r9, [r4]
 6033 3b9a 07F1520B 		add	fp, r7, #82
 6034 3b9e 0146     		mov	r1, r0
 6035 3ba0 59F82B00 		ldr	r0, [r9, fp, lsl #2]	@ float
 6036 3ba4 FFF7FEFF 		bl	__aeabi_fdiv
 6037 3ba8 FFF7FEFF 		bl	__aeabi_f2d
 6038 3bac 18F8012B 		ldrb	r2, [r8], #1	@ zero_extendqisi2
 6039 3bb0 CDE90001 		strd	r0, [sp]
 6040 3bb4 A549     		ldr	r1, .L1980+24
 6041 3bb6 3046     		mov	r0, r6
 6042 3bb8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccIESeqr.s 			page 107


 6043 3bbc D4F8F831 		ldr	r3, [r4, #504]
 6044 3bc0 0137     		adds	r7, r7, #1
 6045 3bc2 BB42     		cmp	r3, r7
 6046 3bc4 E2D8     		bhi	.L764
 6047              	.L763:
 6048 3bc6 A249     		ldr	r1, .L1980+28
 6049 3bc8 3046     		mov	r0, r6
 6050 3bca FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6051 3bce D4F80032 		ldr	r3, [r4, #512]
 6052 3bd2 002B     		cmp	r3, #0
 6053 3bd4 3DF44FAB 		beq	.L313
 6054 3bd8 4FF00008 		mov	r8, #0
 6055 3bdc 4FF0200B 		mov	fp, #32
 6056 3be0 A946     		mov	r9, r5
 6057 3be2 DFF894A2 		ldr	r10, .L1980+68
 6058              	.L765:
 6059 3be6 D4F8F831 		ldr	r3, [r4, #504]
 6060 3bea D4F83C02 		ldr	r0, [r4, #572]	@ float
 6061 3bee 4344     		add	r3, r3, r8
 6062 3bf0 5146     		mov	r1, r10
 6063 3bf2 03F15207 		add	r7, r3, #82
 6064 3bf6 FFF7FEFF 		bl	__aeabi_fmul
 6065 3bfa 2568     		ldr	r5, [r4]
 6066 3bfc 0146     		mov	r1, r0
 6067 3bfe 55F82700 		ldr	r0, [r5, r7, lsl #2]	@ float
 6068 3c02 FFF7FEFF 		bl	__aeabi_fdiv
 6069 3c06 FFF7FEFF 		bl	__aeabi_f2d
 6070 3c0a 5A46     		mov	r2, fp
 6071 3c0c CDE90001 		strd	r0, [sp]
 6072 3c10 9049     		ldr	r1, .L1980+32
 6073 3c12 3046     		mov	r0, r6
 6074 3c14 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6075 3c18 D4F80032 		ldr	r3, [r4, #512]
 6076 3c1c 08F10108 		add	r8, r8, #1
 6077 3c20 4345     		cmp	r3, r8
 6078 3c22 4FF03A0B 		mov	fp, #58
 6079 3c26 DED8     		bhi	.L765
 6080 3c28 4D46     		mov	r5, r9
 6081 3c2a FDF724BB 		b	.L313
 6082              	.L307:
 6083 3c2e 2946     		mov	r1, r5
 6084 3c30 2046     		mov	r0, r4
 6085 3c32 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6086 3c36 0028     		cmp	r0, #0
 6087 3c38 3DF438AB 		beq	.L704
 6088 3c3c 2046     		mov	r0, r4
 6089 3c3e FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 6090 3c42 0028     		cmp	r0, #0
 6091 3c44 3DF432AB 		beq	.L704
 6092 3c48 236C     		ldr	r3, [r4, #64]
 6093 3c4a 94F83073 		ldrb	r7, [r4, #816]	@ zero_extendqisi2
 6094 3c4e 1968     		ldr	r1, [r3]
 6095 3c50 2046     		mov	r0, r4
 6096 3c52 491B     		subs	r1, r1, r5
 6097 3c54 18BF     		it	ne
 6098 3c56 0121     		movne	r1, #1
 6099 3c58 94F87E80 		ldrb	r8, [r4, #126]	@ zero_extendqisi2
ARM GAS  /tmp/ccIESeqr.s 			page 108


 6100 3c5c FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 6101 3c60 002F     		cmp	r7, #0
 6102 3c62 7DF408AB 		bne	.L313
 6103 3c66 B8F1000F 		cmp	r8, #0
 6104 3c6a 01F08D85 		beq	.L310
 6105 3c6e BAF1000F 		cmp	r10, #0
 6106 3c72 02F09B81 		beq	.L1912
 6107              	.L311:
 6108 3c76 1721     		movs	r1, #23
 6109 3c78 AB68     		ldr	r3, [r5, #8]
 6110 3c7a 774A     		ldr	r2, .L1980+36
 6111 3c7c 1975     		strb	r1, [r3, #20]
 6112              	.L889:
 6113 3c7e 0023     		movs	r3, #0
 6114 3c80 2946     		mov	r1, r5
 6115 3c82 0093     		str	r3, [sp]
 6116 3c84 2046     		mov	r0, r4
 6117 3c86 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 6118 3c8a 0123     		movs	r3, #1
 6119 3c8c 0D93     		str	r3, [sp, #52]
 6120 3c8e FCF7E2B9 		b	.L166
 6121              	.L437:
 6122 3c92 5321     		movs	r1, #83
 6123 3c94 2846     		mov	r0, r5
 6124 3c96 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6125 3c9a 0028     		cmp	r0, #0
 6126 3c9c 3DF4EBAA 		beq	.L313
 6127 3ca0 AB68     		ldr	r3, [r5, #8]
 6128 3ca2 2846     		mov	r0, r5
 6129 3ca4 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 6130 3ca6 67F3C302 		bfi	r2, r7, #3, #1
 6131 3caa 1A76     		strb	r2, [r3, #24]
 6132 3cac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6133 3cb0 8046     		mov	r8, r0
 6134 3cb2 FDF713BA 		b	.L438
 6135              	.L1864:
 6136 3cb6 4521     		movs	r1, #69
 6137 3cb8 2846     		mov	r0, r5
 6138 3cba B246     		mov	r10, r6
 6139 3cbc 0D97     		str	r7, [sp, #52]
 6140 3cbe 5E46     		mov	r6, fp
 6141 3cc0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6142 3cc4 0028     		cmp	r0, #0
 6143 3cc6 41F00281 		bne	.L980
 6144 3cca BAF1000F 		cmp	r10, #0
 6145 3cce 7CF4C2A9 		bne	.L166
 6146              	.L981:
 6147 3cd2 6249     		ldr	r1, .L1980+40
 6148 3cd4 3046     		mov	r0, r6
 6149 3cd6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6150 3cda D4F8F831 		ldr	r3, [r4, #504]
 6151 3cde 1BB3     		cbz	r3, .L674
 6152 3ce0 4FF00009 		mov	r9, #0
 6153 3ce4 DFF894B1 		ldr	fp, .L1980+72
 6154 3ce8 0D9F     		ldr	r7, [sp, #52]
 6155 3cea 04F2722A 		addw	r10, r4, #626
 6156 3cee 0DF5BC78 		add	r8, sp, #376
ARM GAS  /tmp/ccIESeqr.s 			page 109


 6157              	.L675:
 6158 3cf2 4946     		mov	r1, r9
 6159 3cf4 4246     		mov	r2, r8
 6160 3cf6 2068     		ldr	r0, [r4]
 6161 3cf8 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 6162 3cfc 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 6163 3d00 574B     		ldr	r3, .L1980+44
 6164 3d02 1AF8012B 		ldrb	r2, [r10], #1	@ zero_extendqisi2
 6165 3d06 0029     		cmp	r1, #0
 6166 3d08 08BF     		it	eq
 6167 3d0a 5B46     		moveq	r3, fp
 6168 3d0c 1946     		mov	r1, r3
 6169 3d0e 0346     		mov	r3, r0
 6170 3d10 0091     		str	r1, [sp]
 6171 3d12 3046     		mov	r0, r6
 6172 3d14 5349     		ldr	r1, .L1980+48
 6173 3d16 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6174 3d1a D4F8F831 		ldr	r3, [r4, #504]
 6175 3d1e 09F10109 		add	r9, r9, #1
 6176 3d22 4B45     		cmp	r3, r9
 6177 3d24 E5D8     		bhi	.L675
 6178 3d26 0D97     		str	r7, [sp, #52]
 6179              	.L674:
 6180 3d28 4F49     		ldr	r1, .L1980+52
 6181 3d2a 3046     		mov	r0, r6
 6182 3d2c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6183 3d30 D4F80032 		ldr	r3, [r4, #512]
 6184 3d34 002B     		cmp	r3, #0
 6185 3d36 3CF48EA9 		beq	.L166
 6186 3d3a 4FF00009 		mov	r9, #0
 6187 3d3e DFF83CB1 		ldr	fp, .L1980+72
 6188 3d42 DFF81CA1 		ldr	r10, .L1980+44
 6189 3d46 0D9F     		ldr	r7, [sp, #52]
 6190 3d48 0DF5BC78 		add	r8, sp, #376
 6191              	.L677:
 6192 3d4c D4F8F811 		ldr	r1, [r4, #504]
 6193 3d50 4246     		mov	r2, r8
 6194 3d52 4944     		add	r1, r1, r9
 6195 3d54 2068     		ldr	r0, [r4]
 6196 3d56 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 6197 3d5a 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 6198 3d5e 0246     		mov	r2, r0
 6199 3d60 002B     		cmp	r3, #0
 6200 3d62 0CBF     		ite	eq
 6201 3d64 5B46     		moveq	r3, fp
 6202 3d66 5346     		movne	r3, r10
 6203 3d68 4049     		ldr	r1, .L1980+56
 6204 3d6a 3046     		mov	r0, r6
 6205 3d6c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6206 3d70 D4F80032 		ldr	r3, [r4, #512]
 6207 3d74 09F10109 		add	r9, r9, #1
 6208 3d78 4B45     		cmp	r3, r9
 6209 3d7a E7D8     		bhi	.L677
 6210 3d7c 0D97     		str	r7, [sp, #52]
 6211 3d7e FCF76AB9 		b	.L166
 6212              	.L1886:
 6213 3d82 4B46     		mov	r3, r9
ARM GAS  /tmp/ccIESeqr.s 			page 110


 6214 3d84 4521     		movs	r1, #69
 6215 3d86 2846     		mov	r0, r5
 6216 3d88 B146     		mov	r9, r6
 6217 3d8a 1E46     		mov	r6, r3
 6218 3d8c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6219 3d90 0028     		cmp	r0, #0
 6220 3d92 41F0E980 		bne	.L971
 6221 3d96 B9F1000F 		cmp	r9, #0
 6222 3d9a 40F02083 		bne	.L418
 6223              	.L423:
 6224 3d9e 3449     		ldr	r1, .L1980+60
 6225 3da0 3046     		mov	r0, r6
 6226 3da2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6227 3da6 D4F8F831 		ldr	r3, [r4, #504]
 6228 3daa CBB1     		cbz	r3, .L426
 6229 3dac 0027     		movs	r7, #0
 6230 3dae DFF8D090 		ldr	r9, .L1980+76
 6231 3db2 04F27228 		addw	r8, r4, #626
 6232              	.L427:
 6233 3db6 2368     		ldr	r3, [r4]
 6234 3db8 18F801AB 		ldrb	r10, [r8], #1	@ zero_extendqisi2
 6235 3dbc 03EB8703 		add	r3, r3, r7, lsl #2
 6236 3dc0 D3F82401 		ldr	r0, [r3, #292]	@ float
 6237 3dc4 FFF7FEFF 		bl	__aeabi_f2d
 6238 3dc8 5246     		mov	r2, r10
 6239 3dca CDE90001 		strd	r0, [sp]
 6240 3dce 4946     		mov	r1, r9
 6241 3dd0 3046     		mov	r0, r6
 6242 3dd2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6243 3dd6 D4F8F831 		ldr	r3, [r4, #504]
 6244 3dda 0137     		adds	r7, r7, #1
 6245 3ddc BB42     		cmp	r3, r7
 6246 3dde EAD8     		bhi	.L427
 6247              	.L426:
 6248 3de0 1B49     		ldr	r1, .L1980+28
 6249 3de2 3046     		mov	r0, r6
 6250 3de4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6251 3de8 D4F80032 		ldr	r3, [r4, #512]
 6252 3dec 002B     		cmp	r3, #0
 6253 3dee 3DF442AA 		beq	.L313
 6254 3df2 4FF00008 		mov	r8, #0
 6255 3df6 4FF02009 		mov	r9, #32
 6256 3dfa 1E4F     		ldr	r7, .L1980+64
 6257              	.L428:
 6258 3dfc D4F8F811 		ldr	r1, [r4, #504]
 6259 3e00 2368     		ldr	r3, [r4]
 6260 3e02 4144     		add	r1, r1, r8
 6261 3e04 03EB8103 		add	r3, r3, r1, lsl #2
 6262 3e08 D3F82401 		ldr	r0, [r3, #292]	@ float
 6263 3e0c FFF7FEFF 		bl	__aeabi_f2d
 6264 3e10 4A46     		mov	r2, r9
 6265 3e12 CDE90001 		strd	r0, [sp]
 6266 3e16 3946     		mov	r1, r7
 6267 3e18 3046     		mov	r0, r6
 6268 3e1a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6269 3e1e D4F80032 		ldr	r3, [r4, #512]
 6270 3e22 08F10108 		add	r8, r8, #1
ARM GAS  /tmp/ccIESeqr.s 			page 111


 6271 3e26 4345     		cmp	r3, r8
 6272 3e28 4FF03A09 		mov	r9, #58
 6273 3e2c E6D8     		bhi	.L428
 6274 3e2e FDF722BA 		b	.L313
 6275              	.L1981:
 6276 3e32 00BF     		.align	2
 6277              	.L1980:
 6278 3e34 60010000 		.word	.LC43
 6279 3e38 70010000 		.word	.LC44
 6280 3e3c 70100000 		.word	.LC174
 6281 3e40 28010000 		.word	.LC39
 6282 3e44 68100000 		.word	.LC173
 6283 3e48 440E0000 		.word	.LC159
 6284 3e4c AC070000 		.word	.LC104
 6285 3e50 38050000 		.word	.LC79
 6286 3e54 B8070000 		.word	.LC105
 6287 3e58 08000000 		.word	.LC10
 6288 3e5c C00B0000 		.word	.LC130
 6289 3e60 98000000 		.word	.LC24
 6290 3e64 D80B0000 		.word	.LC132
 6291 3e68 D40B0000 		.word	.LC131
 6292 3e6c E40B0000 		.word	.LC133
 6293 3e70 2C050000 		.word	.LC78
 6294 3e74 48050000 		.word	.LC81
 6295 3e78 8988883C 		.word	1015580809
 6296 3e7c A0000000 		.word	.LC25
 6297 3e80 3C050000 		.word	.LC80
 6298              	.L1909:
 6299 3e84 3246     		mov	r2, r6
 6300 3e86 4146     		mov	r1, r8
 6301 3e88 D9F80000 		ldr	r0, [r9]
 6302 3e8c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 6303 3e90 4146     		mov	r1, r8
 6304 3e92 8022     		movs	r2, #128
 6305 3e94 3846     		mov	r0, r7
 6306 3e96 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6307 3e9a FDF7AABA 		b	.L706
 6308              	.L357:
 6309 3e9e BAF1200F 		cmp	r10, #32
 6310 3ea2 01F08783 		beq	.L1913
 6311              	.L892:
 6312 3ea6 0022     		movs	r2, #0
 6313 3ea8 6523     		movs	r3, #101
 6314 3eaa 0DF5BC78 		add	r8, sp, #376
 6315 3eae 1CA9     		add	r1, sp, #112
 6316 3eb0 2846     		mov	r0, r5
 6317 3eb2 88F80020 		strb	r2, [r8]
 6318 3eb6 CDF87080 		str	r8, [sp, #112]
 6319 3eba 1D93     		str	r3, [sp, #116]
 6320 3ebc FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 6321 3ec0 0028     		cmp	r0, #0
 6322 3ec2 01F09E82 		beq	.L359
 6323 3ec6 3246     		mov	r2, r6
 6324 3ec8 4146     		mov	r1, r8
 6325 3eca 2046     		mov	r0, r4
 6326 3ecc FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 6327 3ed0 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 112


 6328 3ed2 41F05A87 		bne	.L1914
 6329 3ed6 0223     		movs	r3, #2
 6330 3ed8 0D93     		str	r3, [sp, #52]
 6331 3eda FCF7BCB8 		b	.L166
 6332              	.L998:
 6333 3ede 9A46     		mov	r10, r3
 6334              	.L324:
 6335 3ee0 4521     		movs	r1, #69
 6336 3ee2 2846     		mov	r0, r5
 6337 3ee4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6338 3ee8 8346     		mov	fp, r0
 6339 3eea 0028     		cmp	r0, #0
 6340 3eec 41F00681 		bne	.L1915
 6341              	.L999:
 6342 3ef0 0123     		movs	r3, #1
 6343 3ef2 0D93     		str	r3, [sp, #52]
 6344              	.L327:
 6345 3ef4 5321     		movs	r1, #83
 6346 3ef6 2846     		mov	r0, r5
 6347 3ef8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6348 3efc 0028     		cmp	r0, #0
 6349 3efe 41F0EC80 		bne	.L1916
 6350 3f02 BAF1000F 		cmp	r10, #0
 6351 3f06 7CF4A6A8 		bne	.L166
 6352 3f0a 2046     		mov	r0, r4
 6353 3f0c FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 6354 3f10 FCF7A1B8 		b	.L166
 6355              	.L1052:
 6356 3f14 BE4B     		ldr	r3, .L1982
 6357 3f16 15E6     		b	.L805
 6358              	.L1055:
 6359 3f18 BE4A     		ldr	r2, .L1982+4
 6360 3f1a F7E5     		b	.L808
 6361              	.L439:
 6362 3f1c BE48     		ldr	r0, .L1982+8
 6363 3f1e FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 6364 3f22 0746     		mov	r7, r0
 6365 3f24 FDF7EAB8 		b	.L440
 6366              	.L734:
 6367 3f28 BB4F     		ldr	r7, .L1982+8
 6368 3f2a 0146     		mov	r1, r0
 6369 3f2c B868     		ldr	r0, [r7, #8]
 6370 3f2e FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6371 3f32 0121     		movs	r1, #1
 6372 3f34 8046     		mov	r8, r0
 6373 3f36 B868     		ldr	r0, [r7, #8]
 6374 3f38 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6375 3f3c 0221     		movs	r1, #2
 6376 3f3e 8246     		mov	r10, r0
 6377 3f40 B868     		ldr	r0, [r7, #8]
 6378 3f42 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6379 3f46 0746     		mov	r7, r0
 6380 3f48 4046     		mov	r0, r8
 6381 3f4a FFF7FEFF 		bl	__aeabi_f2d
 6382 3f4e 8046     		mov	r8, r0
 6383 3f50 3846     		mov	r0, r7
 6384 3f52 8946     		mov	r9, r1
ARM GAS  /tmp/ccIESeqr.s 			page 113


 6385 3f54 FFF7FEFF 		bl	__aeabi_f2d
 6386 3f58 CDE90201 		strd	r0, [sp, #8]
 6387 3f5c 5046     		mov	r0, r10
 6388 3f5e FFF7FEFF 		bl	__aeabi_f2d
 6389 3f62 4B46     		mov	r3, r9
 6390 3f64 CDE90001 		strd	r0, [sp]
 6391 3f68 4246     		mov	r2, r8
 6392 3f6a AC49     		ldr	r1, .L1982+12
 6393 3f6c 3046     		mov	r0, r6
 6394 3f6e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6395 3f72 0123     		movs	r3, #1
 6396 3f74 0D93     		str	r3, [sp, #52]
 6397 3f76 FCF76EB8 		b	.L166
 6398              	.L583:
 6399 3f7a A949     		ldr	r1, .L1982+16
 6400 3f7c D4F89402 		ldr	r0, [r4, #660]	@ float
 6401 3f80 FFF7FEFF 		bl	__aeabi_fmul
 6402 3f84 A749     		ldr	r1, .L1982+20
 6403 3f86 FFF7FEFF 		bl	__aeabi_fmul
 6404 3f8a FFF7FEFF 		bl	__aeabi_f2d
 6405 3f8e 0B46     		mov	r3, r1
 6406 3f90 0246     		mov	r2, r0
 6407 3f92 A549     		ldr	r1, .L1982+24
 6408 3f94 3046     		mov	r0, r6
 6409 3f96 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6410 3f9a 0123     		movs	r3, #1
 6411 3f9c 0D93     		str	r3, [sp, #52]
 6412 3f9e FCF75AB8 		b	.L166
 6413              	.L482:
 6414 3fa2 0122     		movs	r2, #1
 6415 3fa4 2368     		ldr	r3, [r4]
 6416 3fa6 0D92     		str	r2, [sp, #52]
 6417 3fa8 D3F8BC04 		ldr	r0, [r3, #1212]
 6418 3fac FFF7FEFF 		bl	__aeabi_ui2f
 6419 3fb0 9E49     		ldr	r1, .L1982+28
 6420 3fb2 FFF7FEFF 		bl	__aeabi_fdiv
 6421 3fb6 FFF7FEFF 		bl	__aeabi_f2d
 6422 3fba 0246     		mov	r2, r0
 6423 3fbc 0B46     		mov	r3, r1
 6424 3fbe 3046     		mov	r0, r6
 6425 3fc0 9B49     		ldr	r1, .L1982+32
 6426 3fc2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6427 3fc6 FCF746B8 		b	.L166
 6428              	.L381:
 6429 3fca 1AAB     		add	r3, sp, #104
 6430 3fcc 4A46     		mov	r2, r9
 6431 3fce 5321     		movs	r1, #83
 6432 3fd0 2846     		mov	r0, r5
 6433 3fd2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 6434 3fd6 9DF86830 		ldrb	r3, [sp, #104]	@ zero_extendqisi2
 6435 3fda 002B     		cmp	r3, #0
 6436 3fdc 41F01982 		bne	.L1917
 6437 3fe0 94F83083 		ldrb	r8, [r4, #816]	@ zero_extendqisi2
 6438 3fe4 934B     		ldr	r3, .L1982+36
 6439 3fe6 944A     		ldr	r2, .L1982+40
 6440 3fe8 D4F82C03 		ldr	r0, [r4, #812]	@ float
 6441 3fec B8F1000F 		cmp	r8, #0
ARM GAS  /tmp/ccIESeqr.s 			page 114


 6442 3ff0 0CBF     		ite	eq
 6443 3ff2 9846     		moveq	r8, r3
 6444 3ff4 9046     		movne	r8, r2
 6445 3ff6 FFF7FEFF 		bl	__aeabi_f2d
 6446 3ffa 0122     		movs	r2, #1
 6447 3ffc CDE90201 		strd	r0, [sp, #8]
 6448 4000 854B     		ldr	r3, .L1982+8
 6449 4002 0D92     		str	r2, [sp, #52]
 6450 4004 9B68     		ldr	r3, [r3, #8]
 6451 4006 986A     		ldr	r0, [r3, #40]	@ float
 6452 4008 FFF7FEFF 		bl	__aeabi_f2d
 6453 400c 4246     		mov	r2, r8
 6454 400e CDE90001 		strd	r0, [sp]
 6455 4012 8A49     		ldr	r1, .L1982+44
 6456 4014 3046     		mov	r0, r6
 6457 4016 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6458 401a FCF71CB8 		b	.L166
 6459              	.L373:
 6460 401e 8849     		ldr	r1, .L1982+48
 6461 4020 3046     		mov	r0, r6
 6462 4022 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6463 4026 0123     		movs	r3, #1
 6464 4028 0D93     		str	r3, [sp, #52]
 6465 402a FCF714B8 		b	.L166
 6466              	.L1872:
 6467 402e 4FF07E5A 		mov	r10, #1065353216
 6468 4032 FEF72FBD 		b	.L912
 6469              	.L1825:
 6470 4036 4FF07E5A 		mov	r10, #1065353216
 6471 403a FDF764BC 		b	.L916
 6472              	.L449:
 6473 403e 2068     		ldr	r0, [r4]
 6474 4040 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 6475 4044 7F4B     		ldr	r3, .L1982+52
 6476 4046 0090     		str	r0, [sp]
 6477 4048 7F4A     		ldr	r2, .L1982+56
 6478 404a 8049     		ldr	r1, .L1982+60
 6479 404c 3046     		mov	r0, r6
 6480 404e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6481 4052 7F4A     		ldr	r2, .L1982+64
 6482 4054 7F49     		ldr	r1, .L1982+68
 6483 4056 3046     		mov	r0, r6
 6484 4058 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6485 405c 0123     		movs	r3, #1
 6486 405e 0D93     		str	r3, [sp, #52]
 6487 4060 FBF7F9BF 		b	.L166
 6488              	.L447:
 6489 4064 6C48     		ldr	r0, .L1982+8
 6490 4066 FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 6491 406a 0123     		movs	r3, #1
 6492 406c 0D93     		str	r3, [sp, #52]
 6493 406e FBF7F2BF 		b	.L166
 6494              	.L788:
 6495 4072 7949     		ldr	r1, .L1982+72
 6496 4074 3046     		mov	r0, r6
 6497 4076 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6498 407a D4F80032 		ldr	r3, [r4, #512]
ARM GAS  /tmp/ccIESeqr.s 			page 115


 6499 407e 002B     		cmp	r3, #0
 6500 4080 3DF4F9A8 		beq	.L313
 6501 4084 4FF03A0A 		mov	r10, #58
 6502 4088 4FF00008 		mov	r8, #0
 6503 408c 4FF00009 		mov	r9, #0
 6504 4090 DFF800B2 		ldr	fp, .L1982+132
 6505 4094 15E0     		b	.L797
 6506              	.L1918:
 6507 4096 2368     		ldr	r3, [r4]
 6508 4098 03EB8703 		add	r3, r3, r7, lsl #2
 6509 409c D3F86C01 		ldr	r0, [r3, #364]	@ float
 6510 40a0 FFF7FEFF 		bl	__aeabi_f2d
 6511              	.L796:
 6512 40a4 CDE90001 		strd	r0, [sp]
 6513 40a8 5246     		mov	r2, r10
 6514 40aa 5946     		mov	r1, fp
 6515 40ac 3046     		mov	r0, r6
 6516 40ae FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6517 40b2 D4F80032 		ldr	r3, [r4, #512]
 6518 40b6 0137     		adds	r7, r7, #1
 6519 40b8 BB42     		cmp	r3, r7
 6520 40ba 4FF02C0A 		mov	r10, #44
 6521 40be 7DF6DAA8 		bls	.L313
 6522              	.L797:
 6523 40c2 052F     		cmp	r7, #5
 6524 40c4 E7D9     		bls	.L1918
 6525 40c6 4046     		mov	r0, r8
 6526 40c8 4946     		mov	r1, r9
 6527 40ca EBE7     		b	.L796
 6528              	.L712:
 6529 40cc 5248     		ldr	r0, .L1982+8
 6530 40ce FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 6531 40d2 6249     		ldr	r1, .L1982+76
 6532 40d4 0246     		mov	r2, r0
 6533 40d6 3046     		mov	r0, r6
 6534 40d8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6535 40dc FEF7EABF 		b	.L713
 6536              	.L881:
 6537 40e0 2368     		ldr	r3, [r4]
 6538 40e2 5F4A     		ldr	r2, .L1982+80
 6539 40e4 D3F86805 		ldr	r0, [r3, #1384]
 6540 40e8 5E49     		ldr	r1, .L1982+84
 6541 40ea FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 6542 40ee 0028     		cmp	r0, #0
 6543 40f0 40F0D086 		bne	.L882
 6544 40f4 5A4A     		ldr	r2, .L1982+80
 6545 40f6 5C49     		ldr	r1, .L1982+88
 6546 40f8 3046     		mov	r0, r6
 6547 40fa FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6548 40fe 0223     		movs	r3, #2
 6549 4100 0D93     		str	r3, [sp, #52]
 6550 4102 FBF7A8BF 		b	.L166
 6551              	.L831:
 6552 4106 444B     		ldr	r3, .L1982+8
 6553 4108 3946     		mov	r1, r7
 6554 410a 5868     		ldr	r0, [r3, #4]
 6555 410c 3246     		mov	r2, r6
ARM GAS  /tmp/ccIESeqr.s 			page 116


 6556 410e FFF7FEFF 		bl	_ZNK7Network15ReportProtocolsEjRK9StringRef
 6557 4112 0D90     		str	r0, [sp, #52]
 6558 4114 FBF79FBF 		b	.L166
 6559              	.L374:
 6560 4118 5449     		ldr	r1, .L1982+92
 6561 411a 3046     		mov	r0, r6
 6562 411c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6563 4120 0223     		movs	r3, #2
 6564 4122 0D93     		str	r3, [sp, #52]
 6565 4124 FBF797BF 		b	.L166
 6566              	.L743:
 6567 4128 5149     		ldr	r1, .L1982+96
 6568 412a 3046     		mov	r0, r6
 6569 412c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6570 4130 0223     		movs	r3, #2
 6571 4132 0D93     		str	r3, [sp, #52]
 6572 4134 FBF78FBF 		b	.L166
 6573              	.L739:
 6574 4138 3946     		mov	r1, r7
 6575 413a 1CA8     		add	r0, sp, #112
 6576 413c 1D93     		str	r3, [sp, #116]
 6577 413e CDF87080 		str	r8, [sp, #112]
 6578 4142 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6579 4146 FEF70FBE 		b	.L740
 6580              	.L377:
 6581 414a 4849     		ldr	r1, .L1982+92
 6582 414c 3046     		mov	r0, r6
 6583 414e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6584 4152 0223     		movs	r3, #2
 6585 4154 0D93     		str	r3, [sp, #52]
 6586 4156 FBF77EBF 		b	.L166
 6587              	.L640:
 6588 415a 2F4B     		ldr	r3, .L1982+8
 6589 415c 3146     		mov	r1, r6
 6590 415e D868     		ldr	r0, [r3, #12]
 6591 4160 FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 6592 4164 0123     		movs	r3, #1
 6593 4166 0D93     		str	r3, [sp, #52]
 6594 4168 FBF775BF 		b	.L166
 6595              	.L726:
 6596 416c 4149     		ldr	r1, .L1982+100
 6597 416e 3046     		mov	r0, r6
 6598 4170 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6599 4174 2068     		ldr	r0, [r4]
 6600 4176 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 6601 417a 0528     		cmp	r0, #5
 6602 417c 01F2DF82 		bhi	.L727
 6603 4180 DFE800F0 		tbb	[pc, r0]
 6604              	.L729:
 6605 4184 23       		.byte	(.L728-.L729)/2
 6606 4185 23       		.byte	(.L728-.L729)/2
 6607 4186 1B       		.byte	(.L730-.L729)/2
 6608 4187 13       		.byte	(.L731-.L729)/2
 6609 4188 0B       		.byte	(.L732-.L729)/2
 6610 4189 03       		.byte	(.L733-.L729)/2
 6611              		.p2align 1
 6612              	.L733:
ARM GAS  /tmp/ccIESeqr.s 			page 117


 6613 418a 3B49     		ldr	r1, .L1982+104
 6614 418c 3046     		mov	r0, r6
 6615 418e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6616 4192 0123     		movs	r3, #1
 6617 4194 0D93     		str	r3, [sp, #52]
 6618 4196 FBF75EBF 		b	.L166
 6619              	.L732:
 6620 419a 3849     		ldr	r1, .L1982+108
 6621 419c 3046     		mov	r0, r6
 6622 419e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6623 41a2 0123     		movs	r3, #1
 6624 41a4 0D93     		str	r3, [sp, #52]
 6625 41a6 FBF756BF 		b	.L166
 6626              	.L731:
 6627 41aa 3549     		ldr	r1, .L1982+112
 6628 41ac 3046     		mov	r0, r6
 6629 41ae FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6630 41b2 0123     		movs	r3, #1
 6631 41b4 0D93     		str	r3, [sp, #52]
 6632 41b6 FBF74EBF 		b	.L166
 6633              	.L730:
 6634 41ba 3249     		ldr	r1, .L1982+116
 6635 41bc 3046     		mov	r0, r6
 6636 41be FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6637 41c2 0123     		movs	r3, #1
 6638 41c4 0D93     		str	r3, [sp, #52]
 6639 41c6 FBF746BF 		b	.L166
 6640              	.L728:
 6641 41ca 2F49     		ldr	r1, .L1982+120
 6642 41cc 3046     		mov	r0, r6
 6643 41ce FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6644 41d2 0123     		movs	r3, #1
 6645 41d4 0D93     		str	r3, [sp, #52]
 6646 41d6 FBF73EBF 		b	.L166
 6647              	.L1054:
 6648 41da 2C4A     		ldr	r2, .L1982+124
 6649 41dc 96E4     		b	.L808
 6650              	.L1038:
 6651 41de 0D90     		str	r0, [sp, #52]
 6652 41e0 FBF739BF 		b	.L166
 6653              	.L1862:
 6654 41e4 D7F8E474 		ldr	r7, [r7, #1252]	@ float
 6655 41e8 0021     		movs	r1, #0
 6656 41ea 3846     		mov	r0, r7
 6657 41ec FFF7FEFF 		bl	__aeabi_fcmpgt
 6658 41f0 0028     		cmp	r0, #0
 6659 41f2 3EF441AA 		beq	.L679
 6660 41f6 3846     		mov	r0, r7
 6661 41f8 FFF7FEFF 		bl	__aeabi_f2d
 6662 41fc 0B46     		mov	r3, r1
 6663 41fe 0246     		mov	r2, r0
 6664 4200 2349     		ldr	r1, .L1982+128
 6665 4202 3046     		mov	r0, r6
 6666 4204 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6667 4208 0123     		movs	r3, #1
 6668 420a 0D93     		str	r3, [sp, #52]
 6669 420c FBF723BF 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 118


 6670              	.L1983:
 6671              		.align	2
 6672              	.L1982:
 6673 4210 1C010000 		.word	.LC38
 6674 4214 30010000 		.word	.LC40
 6675 4218 00000000 		.word	reprap
 6676 421c C00D0000 		.word	.LC157
 6677 4220 00007042 		.word	1114636288
 6678 4224 0000C842 		.word	1120403456
 6679 4228 B8080000 		.word	.LC112
 6680 422c 00007A44 		.word	1148846080
 6681 4230 28060000 		.word	.LC92
 6682 4234 14000000 		.word	.LC12
 6683 4238 10000000 		.word	.LC11
 6684 423c 98030000 		.word	.LC67
 6685 4240 28030000 		.word	.LC63
 6686 4244 64050000 		.word	.LC83
 6687 4248 70050000 		.word	.LC84
 6688 424c 8C050000 		.word	.LC85
 6689 4250 C4050000 		.word	.LC86
 6690 4254 D4050000 		.word	.LC87
 6691 4258 10100000 		.word	.LC169
 6692 425c 040D0000 		.word	.LC146
 6693 4260 A0110000 		.word	.LC187
 6694 4264 B0000000 		.word	.LC27
 6695 4268 B8110000 		.word	.LC188
 6696 426c 68020000 		.word	.LC57
 6697 4270 50030000 		.word	.LC65
 6698 4274 540D0000 		.word	.LC150
 6699 4278 A40D0000 		.word	.LC155
 6700 427c 980D0000 		.word	.LC154
 6701 4280 900D0000 		.word	.LC153
 6702 4284 880D0000 		.word	.LC152
 6703 4288 600D0000 		.word	.LC151
 6704 428c 44010000 		.word	.LC41
 6705 4290 EC0B0000 		.word	.LC134
 6706 4294 2C100000 		.word	.LC170
 6707              	.L369:
 6708 4298 236C     		ldr	r3, [r4, #64]
 6709 429a 1868     		ldr	r0, [r3]
 6710 429c FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 6711 42a0 0746     		mov	r7, r0
 6712 42a2 0028     		cmp	r0, #0
 6713 42a4 7EF409AC 		bne	.L370
 6714 42a8 2946     		mov	r1, r5
 6715 42aa 2046     		mov	r0, r4
 6716 42ac FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 6717 42b0 0028     		cmp	r0, #0
 6718 42b2 3CF4FBAF 		beq	.L704
 6719 42b6 3B46     		mov	r3, r7
 6720 42b8 3A46     		mov	r2, r7
 6721 42ba 2946     		mov	r1, r5
 6722 42bc 2046     		mov	r0, r4
 6723 42be FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 6724 42c2 0123     		movs	r3, #1
 6725 42c4 0D93     		str	r3, [sp, #52]
 6726 42c6 FBF7C6BE 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 119


 6727              	.L521:
 6728 42ca B749     		ldr	r1, .L1984
 6729 42cc 3046     		mov	r0, r6
 6730 42ce FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6731 42d2 D4F80032 		ldr	r3, [r4, #512]
 6732 42d6 002B     		cmp	r3, #0
 6733 42d8 3CF4CDAF 		beq	.L313
 6734 42dc 4FF07E59 		mov	r9, #1065353216
 6735 42e0 DFF8E0B2 		ldr	fp, .L1984+28
 6736 42e4 04F52C78 		add	r8, r4, #688
 6737 42e8 08E0     		b	.L525
 6738              	.L1919:
 6739 42ea 3046     		mov	r0, r6
 6740 42ec FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6741              	.L524:
 6742 42f0 D4F80032 		ldr	r3, [r4, #512]
 6743 42f4 0137     		adds	r7, r7, #1
 6744 42f6 BB42     		cmp	r3, r7
 6745 42f8 7CF6BDAF 		bls	.L313
 6746              	.L525:
 6747 42fc 58F804AB 		ldr	r10, [r8], #4	@ float
 6748 4300 4946     		mov	r1, r9
 6749 4302 5046     		mov	r0, r10
 6750 4304 FFF7FEFF 		bl	__aeabi_fcmpeq
 6751 4308 A849     		ldr	r1, .L1984+4
 6752 430a 0028     		cmp	r0, #0
 6753 430c EDD1     		bne	.L1919
 6754 430e 5946     		mov	r1, fp
 6755 4310 5046     		mov	r0, r10
 6756 4312 FFF7FEFF 		bl	__aeabi_fmul
 6757 4316 FFF7FEFF 		bl	sqrtf
 6758 431a 0146     		mov	r1, r0
 6759 431c 4FF08040 		mov	r0, #1073741824
 6760 4320 FFF7FEFF 		bl	__aeabi_fdiv
 6761 4324 FFF7FEFF 		bl	__aeabi_f2d
 6762 4328 0246     		mov	r2, r0
 6763 432a 0B46     		mov	r3, r1
 6764 432c 3046     		mov	r0, r6
 6765 432e A049     		ldr	r1, .L1984+8
 6766 4330 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6767 4334 DCE7     		b	.L524
 6768              	.L1673:
 6769 4336 0523     		movs	r3, #5
 6770 4338 0D93     		str	r3, [sp, #52]
 6771 433a FBF78CBE 		b	.L166
 6772              	.L319:
 6773 433e 0021     		movs	r1, #0
 6774 4340 2068     		ldr	r0, [r4]
 6775 4342 0D97     		str	r7, [sp, #52]
 6776 4344 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 6777 4348 FBF785BE 		b	.L166
 6778              	.L1826:
 6779 434c C1B2     		uxtb	r1, r0
 6780 434e 4046     		mov	r0, r8
 6781 4350 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 6782 4354 8146     		mov	r9, r0
 6783 4356 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 120


 6784 4358 3DF41AAB 		beq	.L855
 6785              	.L854:
 6786 435c 0023     		movs	r3, #0
 6787 435e D8F8FC04 		ldr	r0, [r8, #1276]
 6788 4362 5EAF     		add	r7, sp, #376
 6789 4364 0268     		ldr	r2, [r0]
 6790 4366 0097     		str	r7, [sp]
 6791 4368 D2F804A0 		ldr	r10, [r2, #4]
 6792 436c 40F29D21 		movw	r1, #669
 6793 4370 3B70     		strb	r3, [r7]
 6794 4372 2A46     		mov	r2, r5
 6795 4374 3346     		mov	r3, r6
 6796 4376 D047     		blx	r10
 6797 4378 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 6798 437a 002B     		cmp	r3, #0
 6799 437c 0CBF     		ite	eq
 6800 437e 0123     		moveq	r3, #1
 6801 4380 0223     		movne	r3, #2
 6802 4382 0D93     		str	r3, [sp, #52]
 6803 4384 18B9     		cbnz	r0, .L965
 6804 4386 B9F1000F 		cmp	r9, #0
 6805 438a 3BF464AE 		beq	.L166
 6806              	.L965:
 6807 438e D8F8FC04 		ldr	r0, [r8, #1276]
 6808 4392 0E9A     		ldr	r2, [sp, #56]
 6809 4394 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 6810 4396 9342     		cmp	r3, r2
 6811 4398 41F06081 		bne	.L1713
 6812 439c 04F1A009 		add	r9, r4, #160
 6813              	.L859:
 6814 43a0 4FF0000E 		mov	lr, #0
 6815 43a4 DBF80820 		ldr	r2, [fp, #8]
 6816 43a8 D4F88032 		ldr	r3, [r4, #640]
 6817 43ac D2F8FC04 		ldr	r0, [r2, #1276]
 6818 43b0 D4F8FC21 		ldr	r2, [r4, #508]
 6819 43b4 0168     		ldr	r1, [r0]
 6820 43b6 CDF800E0 		str	lr, [sp]
 6821 43ba D1F82880 		ldr	r8, [r1, #40]
 6822 43be 4946     		mov	r1, r9
 6823 43c0 C047     		blx	r8
 6824 43c2 0028     		cmp	r0, #0
 6825 43c4 41F0A784 		bne	.L1920
 6826              	.L860:
 6827 43c8 DBF80800 		ldr	r0, [fp, #8]
 6828 43cc 4946     		mov	r1, r9
 6829 43ce 0122     		movs	r2, #1
 6830 43d0 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 6831 43d4 2046     		mov	r0, r4
 6832 43d6 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 6833 43da FBF73CBE 		b	.L166
 6834              	.L418:
 6835 43de 754B     		ldr	r3, .L1984+12
 6836 43e0 0122     		movs	r2, #1
 6837 43e2 9868     		ldr	r0, [r3, #8]
 6838 43e4 04F1A001 		add	r1, r4, #160
 6839 43e8 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 6840 43ec 0123     		movs	r3, #1
ARM GAS  /tmp/ccIESeqr.s 			page 121


 6841 43ee 0D93     		str	r3, [sp, #52]
 6842 43f0 FBF731BE 		b	.L166
 6843              	.L828:
 6844 43f4 7049     		ldr	r1, .L1984+16
 6845 43f6 3046     		mov	r0, r6
 6846 43f8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6847 43fc D4F8FC31 		ldr	r3, [r4, #508]
 6848 4400 002B     		cmp	r3, #0
 6849 4402 3EF40FA8 		beq	.L825
 6850 4406 0027     		movs	r7, #0
 6851 4408 4FF03A09 		mov	r9, #58
 6852 440c DFF8B8A1 		ldr	r10, .L1984+32
 6853 4410 04F50178 		add	r8, r4, #516
 6854              	.L829:
 6855 4414 E319     		adds	r3, r4, r7
 6856 4416 58F8040B 		ldr	r0, [r8], #4	@ float
 6857 441a 93F872B2 		ldrb	fp, [r3, #626]	@ zero_extendqisi2
 6858 441e FFF7FEFF 		bl	__aeabi_f2d
 6859 4422 5B46     		mov	r3, fp
 6860 4424 CDE90001 		strd	r0, [sp]
 6861 4428 4A46     		mov	r2, r9
 6862 442a 5146     		mov	r1, r10
 6863 442c 3046     		mov	r0, r6
 6864 442e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6865 4432 D4F8FC31 		ldr	r3, [r4, #508]
 6866 4436 0137     		adds	r7, r7, #1
 6867 4438 BB42     		cmp	r3, r7
 6868 443a 4FF02C09 		mov	r9, #44
 6869 443e E9D8     		bhi	.L829
 6870 4440 FDF7F0BF 		b	.L825
 6871              	.L1870:
 6872 4444 4521     		movs	r1, #69
 6873 4446 2846     		mov	r0, r5
 6874 4448 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6875 444c 0028     		cmp	r0, #0
 6876 444e 3FF492AA 		beq	.L976
 6877              	.L975:
 6878 4452 D4F80072 		ldr	r7, [r4, #512]
 6879 4456 0123     		movs	r3, #1
 6880 4458 1CAA     		add	r2, sp, #112
 6881 445a 5EA9     		add	r1, sp, #376
 6882 445c 2846     		mov	r0, r5
 6883 445e 1C97     		str	r7, [sp, #112]
 6884 4460 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6885 4464 1C9B     		ldr	r3, [sp, #112]
 6886 4466 002B     		cmp	r3, #0
 6887 4468 00F0EA81 		beq	.L534
 6888 446c D4F8F821 		ldr	r2, [r4, #504]
 6889 4470 5EAF     		add	r7, sp, #376
 6890 4472 2168     		ldr	r1, [r4]
 6891 4474 3E32     		adds	r2, r2, #62
 6892 4476 07EB8303 		add	r3, r7, r3, lsl #2
 6893 447a D4F83CB2 		ldr	fp, [r4, #572]	@ float
 6894 447e 4FF07E5A 		mov	r10, #1065353216
 6895 4482 01EB8208 		add	r8, r1, r2, lsl #2
 6896 4486 9946     		mov	r9, r3
 6897 4488 0D94     		str	r4, [sp, #52]
ARM GAS  /tmp/ccIESeqr.s 			page 122


 6898 448a 04E0     		b	.L535
 6899              	.L914:
 6900 448c B945     		cmp	r9, r7
 6901 448e 48F8044B 		str	r4, [r8], #4	@ float
 6902 4492 00F0D481 		beq	.L1921
 6903              	.L535:
 6904 4496 57F8041B 		ldr	r1, [r7], #4	@ float
 6905 449a 5846     		mov	r0, fp
 6906 449c FFF7FEFF 		bl	__aeabi_fmul
 6907 44a0 0146     		mov	r1, r0
 6908 44a2 0446     		mov	r4, r0
 6909 44a4 FFF7FEFF 		bl	__aeabi_fcmpun
 6910 44a8 0028     		cmp	r0, #0
 6911 44aa EFD1     		bne	.L914
 6912 44ac 5146     		mov	r1, r10
 6913 44ae 2046     		mov	r0, r4
 6914 44b0 FFF7FEFF 		bl	__aeabi_fcmpgt
 6915 44b4 0028     		cmp	r0, #0
 6916 44b6 E9D1     		bne	.L914
 6917 44b8 5446     		mov	r4, r10
 6918 44ba E7E7     		b	.L914
 6919              	.L800:
 6920 44bc 0123     		movs	r3, #1
 6921 44be 0D93     		str	r3, [sp, #52]
 6922 44c0 FBF7C9BD 		b	.L166
 6923              	.L1823:
 6924 44c4 4521     		movs	r1, #69
 6925 44c6 2846     		mov	r0, r5
 6926 44c8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6927 44cc 0028     		cmp	r0, #0
 6928 44ce 3FF4E6A9 		beq	.L978
 6929              	.L977:
 6930 44d2 D4F80072 		ldr	r7, [r4, #512]
 6931 44d6 0123     		movs	r3, #1
 6932 44d8 1CAA     		add	r2, sp, #112
 6933 44da 5EA9     		add	r1, sp, #376
 6934 44dc 2846     		mov	r0, r5
 6935 44de 1C97     		str	r7, [sp, #112]
 6936 44e0 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6937 44e4 1C9B     		ldr	r3, [sp, #112]
 6938 44e6 002B     		cmp	r3, #0
 6939 44e8 00F01981 		beq	.L549
 6940 44ec D4F8F821 		ldr	r2, [r4, #504]
 6941 44f0 5EAF     		add	r7, sp, #376
 6942 44f2 2168     		ldr	r1, [r4]
 6943 44f4 3532     		adds	r2, r2, #53
 6944 44f6 07EB8303 		add	r3, r7, r3, lsl #2
 6945 44fa D4F83CB2 		ldr	fp, [r4, #572]	@ float
 6946 44fe DFF8C0A0 		ldr	r10, .L1984+24
 6947 4502 01EB8208 		add	r8, r1, r2, lsl #2
 6948 4506 9946     		mov	r9, r3
 6949 4508 0D94     		str	r4, [sp, #52]
 6950 450a 04E0     		b	.L550
 6951              	.L918:
 6952 450c B945     		cmp	r9, r7
 6953 450e 48F8044B 		str	r4, [r8], #4	@ float
 6954 4512 00F00381 		beq	.L1922
ARM GAS  /tmp/ccIESeqr.s 			page 123


 6955              	.L550:
 6956 4516 57F8041B 		ldr	r1, [r7], #4	@ float
 6957 451a 5846     		mov	r0, fp
 6958 451c FFF7FEFF 		bl	__aeabi_fmul
 6959 4520 5146     		mov	r1, r10
 6960 4522 FFF7FEFF 		bl	__aeabi_fmul
 6961 4526 0146     		mov	r1, r0
 6962 4528 0446     		mov	r4, r0
 6963 452a FFF7FEFF 		bl	__aeabi_fcmpun
 6964 452e 0028     		cmp	r0, #0
 6965 4530 ECD1     		bne	.L918
 6966 4532 4FF07E51 		mov	r1, #1065353216
 6967 4536 2046     		mov	r0, r4
 6968 4538 FFF7FEFF 		bl	__aeabi_fcmpgt
 6969 453c 0028     		cmp	r0, #0
 6970 453e E5D1     		bne	.L918
 6971 4540 4FF07E54 		mov	r4, #1065353216
 6972 4544 E2E7     		b	.L918
 6973              	.L1905:
 6974 4546 2846     		mov	r0, r5
 6975 4548 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6976 454c 0146     		mov	r1, r0
 6977 454e 0746     		mov	r7, r0
 6978 4550 FFF7FEFF 		bl	__aeabi_fcmpun
 6979 4554 28B9     		cbnz	r0, .L926
 6980 4556 1949     		ldr	r1, .L1984+20
 6981 4558 3846     		mov	r0, r7
 6982 455a FFF7FEFF 		bl	__aeabi_fcmpgt
 6983 455e 00B9     		cbnz	r0, .L926
 6984 4560 164F     		ldr	r7, .L1984+20
 6985              	.L926:
 6986 4562 1749     		ldr	r1, .L1984+24
 6987 4564 3846     		mov	r0, r7
 6988 4566 FFF7FEFF 		bl	__aeabi_fmul
 6989 456a 5A21     		movs	r1, #90
 6990 456c C4F84003 		str	r0, [r4, #832]	@ float
 6991 4570 2846     		mov	r0, r5
 6992 4572 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6993 4576 0028     		cmp	r0, #0
 6994 4578 3CF47DAE 		beq	.L313
 6995              	.L573:
 6996 457c 2846     		mov	r0, r5
 6997 457e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6998 4582 0146     		mov	r1, r0
 6999 4584 0746     		mov	r7, r0
 7000 4586 FFF7FEFF 		bl	__aeabi_fcmpun
 7001 458a 30B9     		cbnz	r0, .L571
 7002 458c 0021     		movs	r1, #0
 7003 458e 3846     		mov	r0, r7
 7004 4590 FFF7FEFF 		bl	__aeabi_fcmpgt
 7005 4594 0028     		cmp	r0, #0
 7006 4596 01F04981 		beq	.L1923
 7007              	.L571:
 7008 459a 0123     		movs	r3, #1
 7009 459c C4F84473 		str	r7, [r4, #836]	@ float
 7010 45a0 0D93     		str	r3, [sp, #52]
 7011 45a2 FBF758BD 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 124


 7012              	.L1985:
 7013 45a6 00BF     		.align	2
 7014              	.L1984:
 7015 45a8 5C070000 		.word	.LC100
 7016 45ac 8C070000 		.word	.LC101
 7017 45b0 94070000 		.word	.LC102
 7018 45b4 00000000 		.word	reprap
 7019 45b8 BC100000 		.word	.LC177
 7020 45bc 00007042 		.word	1114636288
 7021 45c0 8988883C 		.word	1015580809
 7022 45c4 DB0F4940 		.word	1078530011
 7023 45c8 D0100000 		.word	.LC178
 7024              	.L1833:
 7025 45cc 4521     		movs	r1, #69
 7026 45ce 2846     		mov	r0, r5
 7027 45d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7028 45d4 0028     		cmp	r0, #0
 7029 45d6 3FF4CDAA 		beq	.L984
 7030              	.L983:
 7031 45da D4F80072 		ldr	r7, [r4, #512]
 7032 45de 0123     		movs	r3, #1
 7033 45e0 1CAA     		add	r2, sp, #112
 7034 45e2 5EA9     		add	r1, sp, #376
 7035 45e4 2846     		mov	r0, r5
 7036 45e6 1C97     		str	r7, [sp, #112]
 7037 45e8 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7038 45ec 1C9B     		ldr	r3, [sp, #112]
 7039 45ee 33B3     		cbz	r3, .L759
 7040 45f0 5EAF     		add	r7, sp, #376
 7041 45f2 07EB8303 		add	r3, r7, r3, lsl #2
 7042 45f6 9946     		mov	r9, r3
 7043 45f8 D4F8F821 		ldr	r2, [r4, #504]
 7044 45fc 2168     		ldr	r1, [r4]
 7045 45fe 5232     		adds	r2, r2, #82
 7046 4600 D4F83CB2 		ldr	fp, [r4, #572]	@ float
 7047 4604 DFF840A3 		ldr	r10, .L1986+32
 7048 4608 01EB8208 		add	r8, r1, r2, lsl #2
 7049 460c 0D94     		str	r4, [sp, #52]
 7050              	.L760:
 7051 460e 57F8041B 		ldr	r1, [r7], #4	@ float
 7052 4612 5846     		mov	r0, fp
 7053 4614 FFF7FEFF 		bl	__aeabi_fmul
 7054 4618 C349     		ldr	r1, .L1986
 7055 461a FFF7FEFF 		bl	__aeabi_fmul
 7056 461e 0146     		mov	r1, r0
 7057 4620 0446     		mov	r4, r0
 7058 4622 FFF7FEFF 		bl	__aeabi_fcmpun
 7059 4626 28B9     		cbnz	r0, .L954
 7060 4628 5146     		mov	r1, r10
 7061 462a 2046     		mov	r0, r4
 7062 462c FFF7FEFF 		bl	__aeabi_fcmpgt
 7063 4630 00B9     		cbnz	r0, .L954
 7064 4632 5446     		mov	r4, r10
 7065              	.L954:
 7066 4634 B945     		cmp	r9, r7
 7067 4636 48F8044B 		str	r4, [r8], #4	@ float
 7068 463a E8D1     		bne	.L760
ARM GAS  /tmp/ccIESeqr.s 			page 125


 7069 463c 0D9C     		ldr	r4, [sp, #52]
 7070              	.L759:
 7071 463e 0123     		movs	r3, #1
 7072 4640 0D93     		str	r3, [sp, #52]
 7073 4642 FBF708BD 		b	.L166
 7074              	.L1907:
 7075 4646 2846     		mov	r0, r5
 7076 4648 2768     		ldr	r7, [r4]
 7077 464a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7078 464e 5421     		movs	r1, #84
 7079 4650 C7F81C01 		str	r0, [r7, #284]	@ float
 7080 4654 2846     		mov	r0, r5
 7081 4656 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7082 465a 0028     		cmp	r0, #0
 7083 465c 3CF40BAE 		beq	.L313
 7084              	.L558:
 7085 4660 2846     		mov	r0, r5
 7086 4662 D4F80080 		ldr	r8, [r4]
 7087 4666 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7088 466a 0123     		movs	r3, #1
 7089 466c C8F82001 		str	r0, [r8, #288]	@ float
 7090 4670 0D93     		str	r3, [sp, #52]
 7091 4672 FBF7F0BC 		b	.L166
 7092              	.L1875:
 7093 4676 D4F85034 		ldr	r3, [r4, #1104]
 7094 467a AC4A     		ldr	r2, .L1986+4
 7095 467c AC49     		ldr	r1, .L1986+8
 7096 467e A2FB0332 		umull	r3, r2, r2, r3
 7097 4682 3046     		mov	r0, r6
 7098 4684 920B     		lsrs	r2, r2, #14
 7099 4686 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7100 468a 0123     		movs	r3, #1
 7101 468c 0D93     		str	r3, [sp, #52]
 7102 468e FBF7E2BC 		b	.L166
 7103              	.L1874:
 7104 4692 2846     		mov	r0, r5
 7105 4694 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7106 4698 4EF66023 		movw	r3, #60000
 7107 469c 03FB00F0 		mul	r0, r3, r0
 7108 46a0 4821     		movs	r1, #72
 7109 46a2 C4F85004 		str	r0, [r4, #1104]
 7110 46a6 2846     		mov	r0, r5
 7111 46a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7112 46ac 0746     		mov	r7, r0
 7113 46ae 0028     		cmp	r0, #0
 7114 46b0 3CF4E1AD 		beq	.L313
 7115 46b4 FEF731BA 		b	.L956
 7116              	.L1860:
 7117 46b8 0123     		movs	r3, #1
 7118 46ba D4F800A0 		ldr	r10, [r4]
 7119 46be 0D93     		str	r3, [sp, #52]
 7120 46c0 DAF87C05 		ldr	r0, [r10, #1404]	@ float
 7121 46c4 FFF7FEFF 		bl	__aeabi_f2d
 7122 46c8 8046     		mov	r8, r0
 7123 46ca DAF88005 		ldr	r0, [r10, #1408]	@ float
 7124 46ce 8946     		mov	r9, r1
 7125 46d0 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccIESeqr.s 			page 126


 7126 46d4 4246     		mov	r2, r8
 7127 46d6 CDE90001 		strd	r0, [sp]
 7128 46da 4B46     		mov	r3, r9
 7129 46dc 9549     		ldr	r1, .L1986+12
 7130 46de 3046     		mov	r0, r6
 7131 46e0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7132 46e4 FBF7B7BC 		b	.L166
 7133              	.L1859:
 7134 46e8 2846     		mov	r0, r5
 7135 46ea 2768     		ldr	r7, [r4]
 7136 46ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7137 46f0 4421     		movs	r1, #68
 7138 46f2 C7F87C05 		str	r0, [r7, #1404]	@ float
 7139 46f6 2846     		mov	r0, r5
 7140 46f8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7141 46fc 0028     		cmp	r0, #0
 7142 46fe 3CF4BAAD 		beq	.L313
 7143 4702 FDF771BF 		b	.L938
 7144              	.L1821:
 7145 4706 2846     		mov	r0, r5
 7146 4708 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7147 470c A0F1010A 		sub	r10, r0, #1
 7148 4710 BAFA8AFA 		clz	r10, r10
 7149 4714 4FEA5A1A 		lsr	r10, r10, #5
 7150 4718 FDF78EB8 		b	.L575
 7151              	.L1922:
 7152 471c 0D9C     		ldr	r4, [sp, #52]
 7153              	.L549:
 7154 471e 0123     		movs	r3, #1
 7155 4720 0D93     		str	r3, [sp, #52]
 7156 4722 FBF798BC 		b	.L166
 7157              	.L1910:
 7158 4726 0DF17009 		add	r9, sp, #112
 7159 472a D4F80072 		ldr	r7, [r4, #512]
 7160 472e 0123     		movs	r3, #1
 7161 4730 4A46     		mov	r2, r9
 7162 4732 5EA9     		add	r1, sp, #376
 7163 4734 2846     		mov	r0, r5
 7164 4736 C9F80070 		str	r7, [r9]
 7165 473a FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7166 473e D9F80030 		ldr	r3, [r9]
 7167 4742 83B1     		cbz	r3, .L867
 7168 4744 0027     		movs	r7, #0
 7169 4746 0DF5BC78 		add	r8, sp, #376
 7170              	.L868:
 7171 474a D4F8F811 		ldr	r1, [r4, #504]
 7172 474e 5346     		mov	r3, r10
 7173 4750 3944     		add	r1, r1, r7
 7174 4752 58F8042B 		ldr	r2, [r8], #4	@ float
 7175 4756 2068     		ldr	r0, [r4]
 7176 4758 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
 7177 475c D9F80030 		ldr	r3, [r9]
 7178 4760 0137     		adds	r7, r7, #1
 7179 4762 BB42     		cmp	r3, r7
 7180 4764 F1D8     		bhi	.L868
 7181              	.L867:
 7182 4766 40F28A33 		movw	r3, #906
ARM GAS  /tmp/ccIESeqr.s 			page 127


 7183 476a 9A45     		cmp	r10, r3
 7184 476c 7CF483AD 		bne	.L313
 7185 4770 4921     		movs	r1, #73
 7186 4772 2846     		mov	r0, r5
 7187 4774 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7188 4778 0028     		cmp	r0, #0
 7189 477a 3CF47CAD 		beq	.L313
 7190              	.L870:
 7191 477e 2846     		mov	r0, r5
 7192 4780 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7193 4784 0021     		movs	r1, #0
 7194 4786 0746     		mov	r7, r0
 7195 4788 FFF7FEFF 		bl	__aeabi_fcmpge
 7196 478c 0028     		cmp	r0, #0
 7197 478e 3CF472AD 		beq	.L313
 7198 4792 6949     		ldr	r1, .L1986+16
 7199 4794 3846     		mov	r0, r7
 7200 4796 FFF7FEFF 		bl	__aeabi_fcmple
 7201 479a 0028     		cmp	r0, #0
 7202 479c 3CF46BAD 		beq	.L313
 7203 47a0 6549     		ldr	r1, .L1986+16
 7204 47a2 3846     		mov	r0, r7
 7205 47a4 FFF7FEFF 		bl	__aeabi_fdiv
 7206 47a8 0146     		mov	r1, r0
 7207 47aa 2068     		ldr	r0, [r4]
 7208 47ac FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 7209 47b0 0123     		movs	r3, #1
 7210 47b2 0D93     		str	r3, [sp, #52]
 7211 47b4 FBF74FBC 		b	.L166
 7212              	.L1904:
 7213 47b8 2846     		mov	r0, r5
 7214 47ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7215 47be 0146     		mov	r1, r0
 7216 47c0 0746     		mov	r7, r0
 7217 47c2 FFF7FEFF 		bl	__aeabi_fcmpun
 7218 47c6 28B9     		cbnz	r0, .L924
 7219 47c8 5C49     		ldr	r1, .L1986+20
 7220 47ca 3846     		mov	r0, r7
 7221 47cc FFF7FEFF 		bl	__aeabi_fcmpgt
 7222 47d0 00B9     		cbnz	r0, .L924
 7223 47d2 5A4F     		ldr	r7, .L1986+20
 7224              	.L924:
 7225 47d4 3846     		mov	r0, r7
 7226 47d6 5449     		ldr	r1, .L1986
 7227 47d8 FFF7FEFF 		bl	__aeabi_fmul
 7228 47dc 4746     		mov	r7, r8
 7229 47de C4F83C03 		str	r0, [r4, #828]	@ float
 7230 47e2 C4F84003 		str	r0, [r4, #832]	@ float
 7231 47e6 FEF7DEBE 		b	.L565
 7232              	.L1903:
 7233 47ea 2846     		mov	r0, r5
 7234 47ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7235 47f0 D4F83433 		ldr	r3, [r4, #820]
 7236 47f4 0146     		mov	r1, r0
 7237 47f6 0746     		mov	r7, r0
 7238 47f8 03F10049 		add	r9, r3, #-2147483648
 7239 47fc FFF7FEFF 		bl	__aeabi_fcmpun
ARM GAS  /tmp/ccIESeqr.s 			page 128


 7240 4800 20B9     		cbnz	r0, .L1748
 7241 4802 4946     		mov	r1, r9
 7242 4804 3846     		mov	r0, r7
 7243 4806 FFF7FEFF 		bl	__aeabi_fcmpgt
 7244 480a 00B1     		cbz	r0, .L922
 7245              	.L1748:
 7246 480c B946     		mov	r9, r7
 7247              	.L922:
 7248 480e 4746     		mov	r7, r8
 7249 4810 C4F83893 		str	r9, [r4, #824]	@ float
 7250 4814 FEF7BFBE 		b	.L562
 7251              	.L1902:
 7252 4818 2846     		mov	r0, r5
 7253 481a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7254 481e 0146     		mov	r1, r0
 7255 4820 8046     		mov	r8, r0
 7256 4822 FFF7FEFF 		bl	__aeabi_fcmpun
 7257 4826 30B9     		cbnz	r0, .L920
 7258 4828 0021     		movs	r1, #0
 7259 482a 4046     		mov	r0, r8
 7260 482c FFF7FEFF 		bl	__aeabi_fcmpgt
 7261 4830 0028     		cmp	r0, #0
 7262 4832 01F01980 		beq	.L1924
 7263              	.L920:
 7264 4836 C4F83483 		str	r8, [r4, #820]	@ float
 7265 483a FEF7A4BE 		b	.L559
 7266              	.L1921:
 7267 483e 0D9C     		ldr	r4, [sp, #52]
 7268              	.L534:
 7269 4840 0123     		movs	r3, #1
 7270 4842 0D93     		str	r3, [sp, #52]
 7271 4844 FBF707BC 		b	.L166
 7272              	.L1851:
 7273 4848 2846     		mov	r0, r5
 7274 484a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7275 484e 5FFA80FB 		uxtb	fp, r0
 7276 4852 FDF798BD 		b	.L798
 7277              	.L1818:
 7278 4856 2846     		mov	r0, r5
 7279 4858 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7280 485c 0428     		cmp	r0, #4
 7281 485e 01F2AC82 		bhi	.L471
 7282 4862 01A3     		adr	r3, .L473
 7283 4864 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 7284              		.p2align 2
 7285              	.L473:
 7286 4868 47170000 		.word	.L1013+1
 7287 486c 7D480000 		.word	.L1014+1
 7288 4870 8F480000 		.word	.L474+1
 7289 4874 89480000 		.word	.L475+1
 7290 4878 83480000 		.word	.L476+1
 7291              		.p2align 1
 7292              	.L1014:
 7293 487c 0127     		movs	r7, #1
 7294 487e FCF763BF 		b	.L470
 7295              	.L476:
 7296 4882 2027     		movs	r7, #32
ARM GAS  /tmp/ccIESeqr.s 			page 129


 7297 4884 FCF760BF 		b	.L470
 7298              	.L475:
 7299 4888 1027     		movs	r7, #16
 7300 488a FCF75DBF 		b	.L470
 7301              	.L474:
 7302 488e 40F20447 		movw	r7, #1028
 7303 4892 FCF759BF 		b	.L470
 7304              	.L1817:
 7305 4896 5321     		movs	r1, #83
 7306 4898 2846     		mov	r0, r5
 7307 489a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7308 489e 0028     		cmp	r0, #0
 7309 48a0 3CF4D7AE 		beq	.L431
 7310 48a4 2846     		mov	r0, r5
 7311 48a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7312 48aa 0146     		mov	r1, r0
 7313 48ac 8146     		mov	r9, r0
 7314 48ae FFF7FEFF 		bl	__aeabi_fcmpun
 7315 48b2 40B9     		cbnz	r0, .L904
 7316 48b4 2249     		ldr	r1, .L1986+24
 7317 48b6 4846     		mov	r0, r9
 7318 48b8 FFF7FEFF 		bl	__aeabi_fcmplt
 7319 48bc 0028     		cmp	r0, #0
 7320 48be 40F00184 		bne	.L905
 7321 48c2 DFF87C90 		ldr	r9, .L1986+24
 7322              	.L904:
 7323 48c6 0E9B     		ldr	r3, [sp, #56]
 7324 48c8 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 7325 48ca 002B     		cmp	r3, #0
 7326 48cc 00F01085 		beq	.L434
 7327 48d0 4A46     		mov	r2, r9
 7328 48d2 D8F80010 		ldr	r1, [r8]
 7329 48d6 2068     		ldr	r0, [r4]
 7330 48d8 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 7331 48dc FCF7B9BE 		b	.L431
 7332              	.L1835:
 7333 48e0 2846     		mov	r0, r5
 7334 48e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7335 48e6 0028     		cmp	r0, #0
 7336 48e8 D4BF     		ite	le
 7337 48ea 0020     		movle	r0, #0
 7338 48ec 0120     		movgt	r0, #1
 7339 48ee 4821     		movs	r1, #72
 7340 48f0 84F87902 		strb	r0, [r4, #633]
 7341 48f4 2846     		mov	r0, r5
 7342 48f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7343 48fa 0028     		cmp	r0, #0
 7344 48fc 3CF4BBAC 		beq	.L313
 7345              	.L950:
 7346 4900 2846     		mov	r0, r5
 7347 4902 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7348 4906 0028     		cmp	r0, #0
 7349 4908 D4BF     		ite	le
 7350 490a 0020     		movle	r0, #0
 7351 490c 0120     		movgt	r0, #1
 7352 490e 0123     		movs	r3, #1
 7353 4910 84F87A02 		strb	r0, [r4, #634]
ARM GAS  /tmp/ccIESeqr.s 			page 130


 7354 4914 0D93     		str	r3, [sp, #52]
 7355 4916 FBF79EBB 		b	.L166
 7356              	.L1884:
 7357 491a 3946     		mov	r1, r7
 7358 491c 0948     		ldr	r0, .L1986+28
 7359 491e FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 7360 4922 FEF7C1BA 		b	.L714
 7361              	.L1987:
 7362 4926 00BF     		.align	2
 7363              	.L1986:
 7364 4928 8988883C 		.word	1015580809
 7365 492c 73B2E745 		.word	1172812403
 7366 4930 10130000 		.word	.LC198
 7367 4934 E0120000 		.word	.LC197
 7368 4938 0000C842 		.word	1120403456
 7369 493c 00007042 		.word	1114636288
 7370 4940 00007F43 		.word	1132396544
 7371 4944 00000000 		.word	reprap
 7372 4948 CDCCCC3D 		.word	1036831949
 7373              	.L1906:
 7374 494c 2846     		mov	r0, r5
 7375 494e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7376 4952 2368     		ldr	r3, [r4]
 7377 4954 C3F81C01 		str	r0, [r3, #284]	@ float
 7378 4958 C3F82001 		str	r0, [r3, #288]	@ float
 7379 495c FEF76CBE 		b	.L556
 7380              	.L1882:
 7381 4960 2846     		mov	r0, r5
 7382 4962 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7383 4966 0328     		cmp	r0, #3
 7384 4968 00F28184 		bhi	.L746
 7385 496c 41B2     		sxtb	r1, r0
 7386 496e C648     		ldr	r0, .L1988+16
 7387 4970 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 7388 4974 0123     		movs	r3, #1
 7389 4976 0D93     		str	r3, [sp, #52]
 7390 4978 FEF74CBA 		b	.L747
 7391              	.L395:
 7392 497c D9F80000 		ldr	r0, [r9]
 7393 4980 FFF7FEFF 		bl	__aeabi_ui2d
 7394 4984 BCA3     		adr	r3, .L1988
 7395 4986 D3E90023 		ldrd	r2, [r3]
 7396 498a FFF7FEFF 		bl	__aeabi_ddiv
 7397 498e CDE90401 		strd	r0, [sp, #16]
 7398 4992 5EAB     		add	r3, sp, #376
 7399 4994 D3E90001 		ldrd	r0, [r3]
 7400 4998 FFF7FEFF 		bl	__aeabi_ul2d
 7401 499c B8A3     		adr	r3, .L1988+8
 7402 499e D3E90023 		ldrd	r2, [r3]
 7403 49a2 FFF7FEFF 		bl	__aeabi_ddiv
 7404 49a6 CDE90201 		strd	r0, [sp, #8]
 7405 49aa DDE91C01 		ldrd	r0, [sp, #112]
 7406 49ae FFF7FEFF 		bl	__aeabi_ul2d
 7407 49b2 B3A3     		adr	r3, .L1988+8
 7408 49b4 D3E90023 		ldrd	r2, [r3]
 7409 49b8 FFF7FEFF 		bl	__aeabi_ddiv
 7410 49bc 179A     		ldr	r2, [sp, #92]
ARM GAS  /tmp/ccIESeqr.s 			page 131


 7411 49be CDE90001 		strd	r0, [sp]
 7412 49c2 B249     		ldr	r1, .L1988+20
 7413 49c4 3046     		mov	r0, r6
 7414 49c6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7415 49ca D8F80020 		ldr	r2, [r8]
 7416 49ce 3046     		mov	r0, r6
 7417 49d0 B2F5806F 		cmp	r2, #1024
 7418 49d4 32BF     		itee	cc
 7419 49d6 AE49     		ldrcc	r1, .L1988+24
 7420 49d8 920A     		lsrcs	r2, r2, #10
 7421 49da AE49     		ldrcs	r1, .L1988+28
 7422 49dc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7423 49e0 0123     		movs	r3, #1
 7424 49e2 0D93     		str	r3, [sp, #52]
 7425 49e4 FBF737BB 		b	.L166
 7426              	.L394:
 7427 49e8 179A     		ldr	r2, [sp, #92]
 7428 49ea AB49     		ldr	r1, .L1988+32
 7429 49ec 3046     		mov	r0, r6
 7430 49ee FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7431 49f2 0223     		movs	r3, #2
 7432 49f4 0D93     		str	r3, [sp, #52]
 7433 49f6 FBF72EBB 		b	.L166
 7434              	.L1802:
 7435 49fa 2046     		mov	r0, r4
 7436 49fc FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 7437 4a00 0028     		cmp	r0, #0
 7438 4a02 3CF453AC 		beq	.L704
 7439 4a06 5021     		movs	r1, #80
 7440 4a08 2846     		mov	r0, r5
 7441 4a0a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7442 4a0e 0028     		cmp	r0, #0
 7443 4a10 40F08D85 		bne	.L1925
 7444 4a14 BAF1BE0F 		cmp	r10, #190
 7445 4a18 03D0     		beq	.L511
 7446              	.L510:
 7447 4a1a BAF1BF0F 		cmp	r10, #191
 7448 4a1e 01F04F80 		beq	.L1926
 7449              	.L511:
 7450 4a22 DFF864B2 		ldr	fp, .L1988+16
 7451 4a26 DBF80C30 		ldr	r3, [fp, #12]
 7452 4a2a 93F98270 		ldrsb	r7, [r3, #130]
 7453              	.L512:
 7454 4a2e 002F     		cmp	r7, #0
 7455 4a30 FCF621AC 		blt	.L313
 7456 4a34 5221     		movs	r1, #82
 7457 4a36 2846     		mov	r0, r5
 7458 4a38 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7459 4a3c 8046     		mov	r8, r0
 7460 4a3e 30B9     		cbnz	r0, .L1747
 7461 4a40 5321     		movs	r1, #83
 7462 4a42 2846     		mov	r0, r5
 7463 4a44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7464 4a48 0028     		cmp	r0, #0
 7465 4a4a 3CF414AC 		beq	.L313
 7466              	.L1747:
 7467 4a4e 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 132


 7468 4a50 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7469 4a54 3946     		mov	r1, r7
 7470 4a56 0246     		mov	r2, r0
 7471 4a58 DBF80C00 		ldr	r0, [fp, #12]
 7472 4a5c FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7473 4a60 3946     		mov	r1, r7
 7474 4a62 DBF80C00 		ldr	r0, [fp, #12]
 7475 4a66 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7476 4a6a 94F85E34 		ldrb	r3, [r4, #1118]	@ zero_extendqisi2
 7477 4a6e 002B     		cmp	r3, #0
 7478 4a70 7CF4AEAE 		bne	.L468
 7479 4a74 4246     		mov	r2, r8
 7480 4a76 3946     		mov	r1, r7
 7481 4a78 DBF80C00 		ldr	r0, [fp, #12]
 7482 4a7c FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 7483 4a80 0028     		cmp	r0, #0
 7484 4a82 7CF4A5AE 		bne	.L468
 7485              	.L463:
 7486 4a86 3246     		mov	r2, r6
 7487 4a88 2946     		mov	r1, r5
 7488 4a8a 2046     		mov	r0, r4
 7489 4a8c FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 7490 4a90 0123     		movs	r3, #1
 7491 4a92 4FF0000A 		mov	r10, #0
 7492 4a96 84F85D34 		strb	r3, [r4, #1117]
 7493 4a9a FBF7E3BA 		b	.L1671
 7494              	.L1800:
 7495 4a9e 2846     		mov	r0, r5
 7496 4aa0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7497 4aa4 0746     		mov	r7, r0
 7498 4aa6 FCF7D4BB 		b	.L830
 7499              	.L1908:
 7500 4aaa 0627     		movs	r7, #6
 7501 4aac 0DF5BC78 		add	r8, sp, #376
 7502 4ab0 0123     		movs	r3, #1
 7503 4ab2 1CAA     		add	r2, sp, #112
 7504 4ab4 4146     		mov	r1, r8
 7505 4ab6 2846     		mov	r0, r5
 7506 4ab8 1C97     		str	r7, [sp, #112]
 7507 4aba FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7508 4abe 1C9B     		ldr	r3, [sp, #112]
 7509 4ac0 33B3     		cbz	r3, .L519
 7510 4ac2 AC33     		adds	r3, r3, #172
 7511 4ac4 04EB8303 		add	r3, r4, r3, lsl #2
 7512 4ac8 C146     		mov	r9, r8
 7513 4aca 4FF0000B 		mov	fp, #0
 7514 4ace 04F52C77 		add	r7, r4, #688
 7515 4ad2 9A46     		mov	r10, r3
 7516 4ad4 0D94     		str	r4, [sp, #52]
 7517 4ad6 0FE0     		b	.L520
 7518              	.L1928:
 7519 4ad8 2146     		mov	r1, r4
 7520 4ada 2046     		mov	r0, r4
 7521 4adc FFF7FEFF 		bl	__aeabi_fmul
 7522 4ae0 6E49     		ldr	r1, .L1988+36
 7523 4ae2 FFF7FEFF 		bl	__aeabi_fmul
 7524 4ae6 0146     		mov	r1, r0
ARM GAS  /tmp/ccIESeqr.s 			page 133


 7525 4ae8 4FF08140 		mov	r0, #1082130432
 7526 4aec FFF7FEFF 		bl	__aeabi_fdiv
 7527              	.L518:
 7528 4af0 47F8040B 		str	r0, [r7], #4	@ float
 7529 4af4 BA45     		cmp	r10, r7
 7530 4af6 0AD0     		beq	.L1927
 7531              	.L520:
 7532 4af8 59F8044B 		ldr	r4, [r9], #4	@ float
 7533 4afc 5946     		mov	r1, fp
 7534 4afe 2046     		mov	r0, r4
 7535 4b00 FFF7FEFF 		bl	__aeabi_fcmple
 7536 4b04 0028     		cmp	r0, #0
 7537 4b06 E7D0     		beq	.L1928
 7538 4b08 4FF07E50 		mov	r0, #1065353216
 7539 4b0c F0E7     		b	.L518
 7540              	.L1927:
 7541 4b0e 0D9C     		ldr	r4, [sp, #52]
 7542              	.L519:
 7543 4b10 0021     		movs	r1, #0
 7544 4b12 D8F80000 		ldr	r0, [r8]	@ float
 7545 4b16 FFF7FEFF 		bl	__aeabi_fcmpgt
 7546 4b1a AB68     		ldr	r3, [r5, #8]
 7547 4b1c 4FF00101 		mov	r1, #1
 7548 4b20 00B9     		cbnz	r0, .L517
 7549 4b22 0146     		mov	r1, r0
 7550              	.L517:
 7551 4b24 0120     		movs	r0, #1
 7552 4b26 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 7553 4b28 0D90     		str	r0, [sp, #52]
 7554 4b2a 61F38612 		bfi	r2, r1, #6, #1
 7555 4b2e 1A76     		strb	r2, [r3, #24]
 7556 4b30 FBF791BA 		b	.L166
 7557              	.L480:
 7558 4b34 2846     		mov	r0, r5
 7559 4b36 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7560 4b3a 0346     		mov	r3, r0
 7561 4b3c 0028     		cmp	r0, #0
 7562 4b3e 3EF4C4AD 		beq	.L481
 7563 4b42 3246     		mov	r2, r6
 7564 4b44 2946     		mov	r1, r5
 7565 4b46 2068     		ldr	r0, [r4]
 7566 4b48 FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 7567 4b4c 0028     		cmp	r0, #0
 7568 4b4e 3CF492AB 		beq	.L313
 7569 4b52 FCF7DABB 		b	.L504
 7570              	.L1841:
 7571 4b56 2846     		mov	r0, r5
 7572 4b58 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7573 4b5c A0F10109 		sub	r9, r0, #1
 7574 4b60 B9FA89F9 		clz	r9, r9
 7575 4b64 4FEA5919 		lsr	r9, r9, #5
 7576 4b68 FDF7B6BA 		b	.L633
 7577              	.L1838:
 7578 4b6c 2846     		mov	r0, r5
 7579 4b6e D3F80C80 		ldr	r8, [r3, #12]
 7580 4b72 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7581 4b76 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 134


 7582 4b78 D4BF     		ite	le
 7583 4b7a 0020     		movle	r0, #0
 7584 4b7c 0120     		movgt	r0, #1
 7585 4b7e 0123     		movs	r3, #1
 7586 4b80 88F88100 		strb	r0, [r8, #129]
 7587 4b84 0D93     		str	r3, [sp, #52]
 7588 4b86 FBF766BA 		b	.L166
 7589              	.L1840:
 7590 4b8a 2846     		mov	r0, r5
 7591 4b8c FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7592 4b90 0146     		mov	r1, r0
 7593 4b92 FDF78EBA 		b	.L637
 7594              	.L1839:
 7595 4b96 2846     		mov	r0, r5
 7596 4b98 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7597 4b9c 0746     		mov	r7, r0
 7598 4b9e FDF77FBA 		b	.L636
 7599              	.L1868:
 7600 4ba2 19AB     		add	r3, sp, #100
 7601 4ba4 1F46     		mov	r7, r3
 7602 4ba6 4FF0010E 		mov	lr, #1
 7603 4baa 1A46     		mov	r2, r3
 7604 4bac 5321     		movs	r1, #83
 7605 4bae 0D9B     		ldr	r3, [sp, #52]
 7606 4bb0 2846     		mov	r0, r5
 7607 4bb2 0F97     		str	r7, [sp, #60]
 7608 4bb4 C7F800E0 		str	lr, [r7]
 7609 4bb8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 7610 4bbc 3B68     		ldr	r3, [r7]
 7611 4bbe 032B     		cmp	r3, #3
 7612 4bc0 00F2B585 		bhi	.L1929
 7613 4bc4 012B     		cmp	r3, #1
 7614 4bc6 07DD     		ble	.L621
 7615 4bc8 2946     		mov	r1, r5
 7616 4bca 2046     		mov	r0, r4
 7617 4bcc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7618 4bd0 8246     		mov	r10, r0
 7619 4bd2 0028     		cmp	r0, #0
 7620 4bd4 3BF446AA 		beq	.L1671
 7621              	.L621:
 7622 4bd8 0F9B     		ldr	r3, [sp, #60]
 7623 4bda 1B68     		ldr	r3, [r3]
 7624 4bdc 012B     		cmp	r3, #1
 7625 4bde 41F26A83 		bls	.L1930
 7626 4be2 0023     		movs	r3, #0
 7627 4be4 0E9A     		ldr	r2, [sp, #56]
 7628 4be6 1360     		str	r3, [r2]	@ float
 7629              	.L625:
 7630 4be8 D4F8F871 		ldr	r7, [r4, #504]
 7631 4bec 002F     		cmp	r7, #0
 7632 4bee 00F01A84 		beq	.L623
 7633 4bf2 0027     		movs	r7, #0
 7634 4bf4 04F2722A 		addw	r10, r4, #626
 7635 4bf8 BB46     		mov	fp, r7
 7636 4bfa 06E0     		b	.L628
 7637              	.L626:
 7638 4bfc D4F8F831 		ldr	r3, [r4, #504]
ARM GAS  /tmp/ccIESeqr.s 			page 135


 7639 4c00 0BF1010B 		add	fp, fp, #1
 7640 4c04 5B45     		cmp	r3, fp
 7641 4c06 40F20E84 		bls	.L623
 7642              	.L628:
 7643 4c0a 1AF8011B 		ldrb	r1, [r10], #1	@ zero_extendqisi2
 7644 4c0e 2846     		mov	r0, r5
 7645 4c10 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7646 4c14 0028     		cmp	r0, #0
 7647 4c16 F1D0     		beq	.L626
 7648 4c18 2846     		mov	r0, r5
 7649 4c1a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7650 4c1e 0123     		movs	r3, #1
 7651 4c20 0028     		cmp	r0, #0
 7652 4c22 03FA0BF3 		lsl	r3, r3, fp
 7653 4c26 E9DD     		ble	.L626
 7654 4c28 1F43     		orrs	r7, r7, r3
 7655 4c2a E7E7     		b	.L626
 7656              	.L1795:
 7657 4c2c 4246     		mov	r2, r8
 7658 4c2e 0123     		movs	r3, #1
 7659 4c30 3946     		mov	r1, r7
 7660 4c32 2046     		mov	r0, r4
 7661 4c34 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolfb
 7662 4c38 FCF768BA 		b	.L442
 7663              	.L1803:
 7664 4c3c 2846     		mov	r0, r5
 7665 4c3e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7666 4c42 0246     		mov	r2, r0
 7667 4c44 0028     		cmp	r0, #0
 7668 4c46 3CF43FAB 		beq	.L505
 7669 4c4a 1549     		ldr	r1, .L1988+40
 7670 4c4c 3046     		mov	r0, r6
 7671 4c4e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7672 4c52 0223     		movs	r3, #2
 7673 4c54 0D93     		str	r3, [sp, #52]
 7674 4c56 FBF7FEB9 		b	.L166
 7675              	.L1900:
 7676 4c5a 2846     		mov	r0, r5
 7677 4c5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7678 4c60 0246     		mov	r2, r0
 7679 4c62 FEF751BC 		b	.L683
 7680              	.L1899:
 7681 4c66 2846     		mov	r0, r5
 7682 4c68 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7683 4c6c 0746     		mov	r7, r0
 7684 4c6e FEF742BC 		b	.L682
 7685              	.L1989:
 7686 4c72 00BFAFF3 		.align	3
 7686      0080
 7687              	.L1988:
 7688 4c78 00000000 		.word	0
 7689 4c7c 80842E41 		.word	1093567616
 7690 4c80 00000000 		.word	0
 7691 4c84 65CDCD41 		.word	1104006501
 7692 4c88 00000000 		.word	reprap
 7693 4c8c 8C040000 		.word	.LC74
 7694 4c90 EC040000 		.word	.LC75
ARM GAS  /tmp/ccIESeqr.s 			page 136


 7695 4c94 F8040000 		.word	.LC76
 7696 4c98 6C040000 		.word	.LC73
 7697 4c9c DB0F4940 		.word	1078530011
 7698 4ca0 E8060000 		.word	.LC97
 7699              	.L1805:
 7700 4ca4 2846     		mov	r0, r5
 7701 4ca6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7702 4caa B0F10008 		subs	r8, r0, #0
 7703 4cae 07DB     		blt	.L485
 7704 4cb0 BAF18C0F 		cmp	r10, #140
 7705 4cb4 14BF     		ite	ne
 7706 4cb6 0223     		movne	r3, #2
 7707 4cb8 0123     		moveq	r3, #1
 7708 4cba 4345     		cmp	r3, r8
 7709 4cbc 3CF739AB 		bgt	.L487
 7710              	.L485:
 7711 4cc0 4246     		mov	r2, r8
 7712 4cc2 CC49     		ldr	r1, .L1990
 7713 4cc4 3046     		mov	r0, r6
 7714 4cc6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7715 4cca 0223     		movs	r3, #2
 7716 4ccc 0D93     		str	r3, [sp, #52]
 7717 4cce FBF7C2B9 		b	.L166
 7718              	.L1861:
 7719 4cd2 2846     		mov	r0, r5
 7720 4cd4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7721 4cd8 0146     		mov	r1, r0
 7722 4cda 3846     		mov	r0, r7
 7723 4cdc FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 7724 4ce0 0123     		movs	r3, #1
 7725 4ce2 0D93     		str	r3, [sp, #52]
 7726 4ce4 FBF7B7B9 		b	.L166
 7727              	.L1898:
 7728 4ce8 C349     		ldr	r1, .L1990+4
 7729 4cea 3046     		mov	r0, r6
 7730 4cec FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7731 4cf0 0223     		movs	r3, #2
 7732 4cf2 0D93     		str	r3, [sp, #52]
 7733 4cf4 FBF7AFB9 		b	.L166
 7734              	.L1881:
 7735 4cf8 2846     		mov	r0, r5
 7736 4cfa FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7737 4cfe FEF742B8 		b	.L742
 7738              	.L1880:
 7739 4d02 2846     		mov	r0, r5
 7740 4d04 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7741 4d08 0746     		mov	r7, r0
 7742 4d0a FEF735B8 		b	.L741
 7743              	.L1878:
 7744 4d0e 5A21     		movs	r1, #90
 7745 4d10 2846     		mov	r0, r5
 7746 4d12 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7747 4d16 0028     		cmp	r0, #0
 7748 4d18 7DF4BFAF 		bne	.L613
 7749 4d1c D4F8C802 		ldr	r0, [r4, #712]	@ float
 7750 4d20 FFF7FEFF 		bl	__aeabi_f2d
 7751 4d24 0B46     		mov	r3, r1
ARM GAS  /tmp/ccIESeqr.s 			page 137


 7752 4d26 0246     		mov	r2, r0
 7753 4d28 B449     		ldr	r1, .L1990+8
 7754 4d2a 3046     		mov	r0, r6
 7755 4d2c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7756 4d30 0123     		movs	r3, #1
 7757 4d32 0D93     		str	r3, [sp, #52]
 7758 4d34 FBF78FB9 		b	.L166
 7759              	.L1863:
 7760 4d38 2846     		mov	r0, r5
 7761 4d3a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7762 4d3e 0028     		cmp	r0, #0
 7763 4d40 D4BF     		ite	le
 7764 4d42 0023     		movle	r3, #0
 7765 4d44 0123     		movgt	r3, #1
 7766 4d46 0E93     		str	r3, [sp, #56]
 7767 4d48 FDF7C1BC 		b	.L661
 7768              	.L837:
 7769 4d4c 4421     		movs	r1, #68
 7770 4d4e 2846     		mov	r0, r5
 7771 4d50 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7772 4d54 0028     		cmp	r0, #0
 7773 4d56 7CF4F1AE 		bne	.L840
 7774 4d5a D7F8FC04 		ldr	r0, [r7, #1276]
 7775              	.L839:
 7776 4d5e 0022     		movs	r2, #0
 7777 4d60 0368     		ldr	r3, [r0]
 7778 4d62 0DF5BC78 		add	r8, sp, #376
 7779 4d66 CDF80080 		str	r8, [sp]
 7780 4d6a 5F68     		ldr	r7, [r3, #4]
 7781 4d6c 88F80020 		strb	r2, [r8]
 7782 4d70 3346     		mov	r3, r6
 7783 4d72 2A46     		mov	r2, r5
 7784 4d74 40F29921 		movw	r1, #665
 7785 4d78 B847     		blx	r7
 7786 4d7a 0028     		cmp	r0, #0
 7787 4d7c 3CF423AF 		beq	.L964
 7788 4d80 04F1A009 		add	r9, r4, #160
 7789 4d84 FCF705BF 		b	.L963
 7790              	.L351:
 7791 4d88 0DF27912 		addw	r2, sp, #377
 7792 4d8c 3946     		mov	r1, r7
 7793 4d8e 2868     		ldr	r0, [r5]
 7794 4d90 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 7795 4d94 FDF7B8BA 		b	.L352
 7796              	.L1796:
 7797 4d98 002B     		cmp	r3, #0
 7798 4d9a 7CF4BDA9 		bne	.L443
 7799 4d9e 2946     		mov	r1, r5
 7800 4da0 2046     		mov	r0, r4
 7801 4da2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7802 4da6 0028     		cmp	r0, #0
 7803 4da8 3CF480AA 		beq	.L704
 7804 4dac 7B6E     		ldr	r3, [r7, #100]
 7805 4dae AA68     		ldr	r2, [r5, #8]
 7806 4db0 0A21     		movs	r1, #10
 7807 4db2 D382     		strh	r3, [r2, #22]	@ movhi
 7808 4db4 94F83033 		ldrb	r3, [r4, #816]	@ zero_extendqisi2
ARM GAS  /tmp/ccIESeqr.s 			page 138


 7809 4db8 0120     		movs	r0, #1
 7810 4dba 002B     		cmp	r3, #0
 7811 4dbc 18BF     		it	ne
 7812 4dbe 0723     		movne	r3, #7
 7813 4dc0 5375     		strb	r3, [r2, #21]
 7814 4dc2 AB68     		ldr	r3, [r5, #8]
 7815 4dc4 0D90     		str	r0, [sp, #52]
 7816 4dc6 1975     		strb	r1, [r3, #20]
 7817 4dc8 FBF745B9 		b	.L166
 7818              	.L448:
 7819 4dcc 3946     		mov	r1, r7
 7820 4dce 8C48     		ldr	r0, .L1990+12
 7821 4dd0 FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 7822 4dd4 0123     		movs	r3, #1
 7823 4dd6 0D93     		str	r3, [sp, #52]
 7824 4dd8 FBF73DB9 		b	.L166
 7825              	.L1896:
 7826 4ddc 2846     		mov	r0, r5
 7827 4dde D4F80080 		ldr	r8, [r4]
 7828 4de2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7829 4de6 0146     		mov	r1, r0
 7830 4de8 0746     		mov	r7, r0
 7831 4dea FFF7FEFF 		bl	__aeabi_fcmpun
 7832 4dee 38B9     		cbnz	r0, .L958
 7833 4df0 4FF07E51 		mov	r1, #1065353216
 7834 4df4 3846     		mov	r0, r7
 7835 4df6 FFF7FEFF 		bl	__aeabi_fcmplt
 7836 4dfa 08B9     		cbnz	r0, .L958
 7837 4dfc 4FF07E57 		mov	r7, #1065353216
 7838              	.L958:
 7839 4e00 0123     		movs	r3, #1
 7840 4e02 C8F81076 		str	r7, [r8, #1552]	@ float
 7841 4e06 0D93     		str	r3, [sp, #52]
 7842 4e08 FBF725B9 		b	.L166
 7843              	.L1895:
 7844 4e0c 2846     		mov	r0, r5
 7845 4e0e D4F80080 		ldr	r8, [r4]
 7846 4e12 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7847 4e16 0146     		mov	r1, r0
 7848 4e18 08F21460 		addw	r0, r8, #1556
 7849 4e1c FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
 7850 4e20 FEF7A5BA 		b	.L783
 7851              	.L436:
 7852 4e24 D4F89032 		ldr	r3, [r4, #656]	@ float
 7853 4e28 2046     		mov	r0, r4
 7854 4e2a C4F88C32 		str	r3, [r4, #652]	@ float
 7855 4e2e FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 7856 4e32 FBF710B9 		b	.L166
 7857              	.L641:
 7858 4e36 DFF8C881 		ldr	r8, .L1990+12
 7859 4e3a 4FFA87F9 		sxtb	r9, r7
 7860 4e3e D8F80C00 		ldr	r0, [r8, #12]
 7861 4e42 4946     		mov	r1, r9
 7862 4e44 FFF7FEFF 		bl	_ZNK4Heat11IsBedHeaterEa
 7863 4e48 0028     		cmp	r0, #0
 7864 4e4a 00F02985 		beq	.L1931
 7865 4e4e DFF8D091 		ldr	r9, .L1990+44
ARM GAS  /tmp/ccIESeqr.s 			page 139


 7866 4e52 FDF7E1B8 		b	.L642
 7867              	.L645:
 7868 4e56 DFF8A8A1 		ldr	r10, .L1990+12
 7869 4e5a 3946     		mov	r1, r7
 7870 4e5c DAF80C00 		ldr	r0, [r10, #12]
 7871 4e60 FFF7FEFF 		bl	_ZN4Heat11CheckHeaterEj
 7872 4e64 0028     		cmp	r0, #0
 7873 4e66 00F01385 		beq	.L1932
 7874 4e6a 6649     		ldr	r1, .L1990+16
 7875 4e6c 4046     		mov	r0, r8
 7876 4e6e FFF7FEFF 		bl	__aeabi_fcmplt
 7877 4e72 38B9     		cbnz	r0, .L647
 7878 4e74 4FF07E51 		mov	r1, #1065353216
 7879 4e78 4046     		mov	r0, r8
 7880 4e7a FFF7FEFF 		bl	__aeabi_fcmpgt
 7881 4e7e 0028     		cmp	r0, #0
 7882 4e80 01F04681 		beq	.L1702
 7883              	.L647:
 7884 4e84 6049     		ldr	r1, .L1990+20
 7885 4e86 3046     		mov	r0, r6
 7886 4e88 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7887 4e8c 0123     		movs	r3, #1
 7888 4e8e 0D93     		str	r3, [sp, #52]
 7889 4e90 FBF7E1B8 		b	.L166
 7890              	.L882:
 7891 4e94 0022     		movs	r2, #0
 7892 4e96 0123     		movs	r3, #1
 7893 4e98 0092     		str	r2, [sp]
 7894 4e9a 2946     		mov	r1, r5
 7895 4e9c 5B4A     		ldr	r2, .L1990+24
 7896 4e9e 2046     		mov	r0, r4
 7897 4ea0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 7898 4ea4 0123     		movs	r3, #1
 7899 4ea6 0D93     		str	r3, [sp, #52]
 7900 4ea8 FBF7D5B8 		b	.L166
 7901              	.L375:
 7902 4eac 5849     		ldr	r1, .L1990+28
 7903 4eae 3046     		mov	r0, r6
 7904 4eb0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7905 4eb4 0223     		movs	r3, #2
 7906 4eb6 0D93     		str	r3, [sp, #52]
 7907 4eb8 FBF7CDB8 		b	.L166
 7908              	.L662:
 7909 4ebc 4521     		movs	r1, #69
 7910 4ebe 2846     		mov	r0, r5
 7911 4ec0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7912 4ec4 0123     		movs	r3, #1
 7913 4ec6 0D93     		str	r3, [sp, #52]
 7914 4ec8 0028     		cmp	r0, #0
 7915 4eca 3EF402AF 		beq	.L981
 7916              	.L980:
 7917 4ece 2946     		mov	r1, r5
 7918 4ed0 2046     		mov	r0, r4
 7919 4ed2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7920 4ed6 8246     		mov	r10, r0
 7921 4ed8 0028     		cmp	r0, #0
 7922 4eda 3BF4C3A8 		beq	.L1671
ARM GAS  /tmp/ccIESeqr.s 			page 140


 7923 4ede 0DF17009 		add	r9, sp, #112
 7924 4ee2 D4F80072 		ldr	r7, [r4, #512]
 7925 4ee6 0DF5BC78 		add	r8, sp, #376
 7926 4eea 0123     		movs	r3, #1
 7927 4eec 4A46     		mov	r2, r9
 7928 4eee 4146     		mov	r1, r8
 7929 4ef0 2846     		mov	r0, r5
 7930 4ef2 C9F80070 		str	r7, [r9]
 7931 4ef6 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 7932 4efa D9F80030 		ldr	r3, [r9]
 7933 4efe 002B     		cmp	r3, #0
 7934 4f00 3BF4A9A8 		beq	.L166
 7935 4f04 4FF0000A 		mov	r10, #0
 7936 4f08 424A     		ldr	r2, .L1990+32
 7937 4f0a 434B     		ldr	r3, .L1990+36
 7938 4f0c 0E99     		ldr	r1, [sp, #56]
 7939 4f0e 0D9F     		ldr	r7, [sp, #52]
 7940 4f10 5145     		cmp	r1, r10
 7941 4f12 14BF     		ite	ne
 7942 4f14 9346     		movne	fp, r2
 7943 4f16 9B46     		moveq	fp, r3
 7944              	.L670:
 7945 4f18 D4F8F811 		ldr	r1, [r4, #504]
 7946 4f1c 0E9B     		ldr	r3, [sp, #56]
 7947 4f1e 5144     		add	r1, r1, r10
 7948 4f20 58F82A20 		ldr	r2, [r8, r10, lsl #2]
 7949 4f24 2046     		mov	r0, r4
 7950 4f26 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
 7951 4f2a 48B9     		cbnz	r0, .L669
 7952 4f2c 58F82A30 		ldr	r3, [r8, r10, lsl #2]
 7953 4f30 5246     		mov	r2, r10
 7954 4f32 CDF800B0 		str	fp, [sp]
 7955 4f36 3949     		ldr	r1, .L1990+40
 7956 4f38 3046     		mov	r0, r6
 7957 4f3a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7958 4f3e 0227     		movs	r7, #2
 7959              	.L669:
 7960 4f40 D9F80030 		ldr	r3, [r9]
 7961 4f44 0AF1010A 		add	r10, r10, #1
 7962 4f48 5345     		cmp	r3, r10
 7963 4f4a E5D8     		bhi	.L670
 7964 4f4c 0D97     		str	r7, [sp, #52]
 7965 4f4e FBF782B8 		b	.L166
 7966              	.L816:
 7967 4f52 0123     		movs	r3, #1
 7968 4f54 0D93     		str	r3, [sp, #52]
 7969 4f56 FDF797BA 		b	.L814
 7970              	.L1885:
 7971 4f5a 4521     		movs	r1, #69
 7972 4f5c 2846     		mov	r0, r5
 7973 4f5e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7974 4f62 0028     		cmp	r0, #0
 7975 4f64 3EF41BAF 		beq	.L423
 7976              	.L971:
 7977 4f68 2946     		mov	r1, r5
 7978 4f6a 2046     		mov	r0, r4
 7979 4f6c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
ARM GAS  /tmp/ccIESeqr.s 			page 141


 7980 4f70 8246     		mov	r10, r0
 7981 4f72 0028     		cmp	r0, #0
 7982 4f74 3BF476A8 		beq	.L1671
 7983 4f78 D4F80072 		ldr	r7, [r4, #512]
 7984 4f7c 5EA9     		add	r1, sp, #376
 7985 4f7e 1CAA     		add	r2, sp, #112
 7986 4f80 0123     		movs	r3, #1
 7987 4f82 2846     		mov	r0, r5
 7988 4f84 1C97     		str	r7, [sp, #112]
 7989 4f86 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7990 4f8a 1C99     		ldr	r1, [sp, #112]
 7991 4f8c 0029     		cmp	r1, #0
 7992 4f8e 3FF426AA 		beq	.L418
 7993 4f92 D4F8F821 		ldr	r2, [r4, #504]
 7994 4f96 2368     		ldr	r3, [r4]
 7995 4f98 0DF5BC78 		add	r8, sp, #376
 7996 4f9c 4932     		adds	r2, r2, #73
 7997 4f9e 4FF07E5B 		mov	fp, #1065353216
 7998 4fa2 08EB810A 		add	r10, r8, r1, lsl #2
 7999 4fa6 03EB8209 		add	r9, r3, r2, lsl #2
 8000 4faa 04E0     		b	.L422
 8001              	.L902:
 8002 4fac D045     		cmp	r8, r10
 8003 4fae 49F8047B 		str	r7, [r9], #4	@ float
 8004 4fb2 3FF414AA 		beq	.L418
 8005              	.L422:
 8006 4fb6 58F8047B 		ldr	r7, [r8], #4	@ float
 8007 4fba 3946     		mov	r1, r7
 8008 4fbc 3846     		mov	r0, r7
 8009 4fbe FFF7FEFF 		bl	__aeabi_fcmpun
 8010 4fc2 0028     		cmp	r0, #0
 8011 4fc4 F2D1     		bne	.L902
 8012 4fc6 5946     		mov	r1, fp
 8013 4fc8 3846     		mov	r0, r7
 8014 4fca FFF7FEFF 		bl	__aeabi_fcmpgt
 8015 4fce 0028     		cmp	r0, #0
 8016 4fd0 ECD1     		bne	.L902
 8017 4fd2 5F46     		mov	r7, fp
 8018 4fd4 EAE7     		b	.L902
 8019              	.L1865:
 8020 4fd6 2846     		mov	r0, r5
 8021 4fd8 DAF808B0 		ldr	fp, [r10, #8]
 8022 4fdc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8023 4fe0 4946     		mov	r1, r9
 8024 4fe2 FFF7FEFF 		bl	__aeabi_fdiv
 8025 4fe6 3946     		mov	r1, r7
 8026 4fe8 0246     		mov	r2, r0
 8027 4fea 5846     		mov	r0, fp
 8028 4fec FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEjf
 8029 4ff0 FDF742BC 		b	.L736
 8030              	.L1991:
 8031              		.align	2
 8032              	.L1990:
 8033 4ff4 4C060000 		.word	.LC93
 8034 4ff8 B4020000 		.word	.LC60
 8035 4ffc C0120000 		.word	.LC196
 8036 5000 00000000 		.word	reprap
ARM GAS  /tmp/ccIESeqr.s 			page 142


 8037 5004 CDCCCC3D 		.word	1036831949
 8038 5008 DC090000 		.word	.LC119
 8039 500c 7C110000 		.word	.LC185
 8040 5010 50030000 		.word	.LC65
 8041 5014 4C0B0000 		.word	.LC127
 8042 5018 A0000000 		.word	.LC25
 8043 501c 900B0000 		.word	.LC129
 8044 5020 00009642 		.word	1117126656
 8045              	.L1869:
 8046 5024 5321     		movs	r1, #83
 8047 5026 2846     		mov	r0, r5
 8048 5028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8049 502c 0028     		cmp	r0, #0
 8050 502e 00F09D82 		beq	.L595
 8051 5032 2846     		mov	r0, r5
 8052 5034 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8053 5038 C249     		ldr	r1, .L1992
 8054 503a FFF7FEFF 		bl	__aeabi_fdiv
 8055 503e 0021     		movs	r1, #0
 8056 5040 8146     		mov	r9, r0
 8057 5042 FFF7FEFF 		bl	__aeabi_fcmpge
 8058 5046 0028     		cmp	r0, #0
 8059 5048 3DF4F2AC 		beq	.L593
 8060 504c D4F8FC30 		ldr	r3, [r4, #252]
 8061 5050 C3B1     		cbz	r3, .L597
 8062 5052 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 8063 5056 DB07     		lsls	r3, r3, #31
 8064 5058 14D4     		bmi	.L597
 8065 505a D8F80030 		ldr	r3, [r8]
 8066 505e D4F8F871 		ldr	r7, [r4, #504]
 8067 5062 03F1A602 		add	r2, r3, #166
 8068 5066 54F82210 		ldr	r1, [r4, r2, lsl #2]	@ float
 8069 506a 3B44     		add	r3, r3, r7
 8070 506c 4846     		mov	r0, r9
 8071 506e 04EB8307 		add	r7, r4, r3, lsl #2
 8072 5072 FFF7FEFF 		bl	__aeabi_fdiv
 8073 5076 0146     		mov	r1, r0
 8074 5078 D7F8A000 		ldr	r0, [r7, #160]	@ float
 8075 507c FFF7FEFF 		bl	__aeabi_fmul
 8076 5080 C7F8A000 		str	r0, [r7, #160]	@ float
 8077              	.L597:
 8078 5084 D8F80030 		ldr	r3, [r8]
 8079 5088 A633     		adds	r3, r3, #166
 8080 508a 44F82390 		str	r9, [r4, r3, lsl #2]	@ float
 8081 508e FDF7CFBC 		b	.L593
 8082              	.L338:
 8083 5092 4046     		mov	r0, r8
 8084 5094 AC49     		ldr	r1, .L1992+4
 8085 5096 C8F80430 		str	r3, [r8, #4]
 8086 509a C8F80090 		str	r9, [r8]
 8087 509e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8088 50a2 FDF7F1B8 		b	.L339
 8089              	.L1806:
 8090 50a6 4821     		movs	r1, #72
 8091 50a8 2846     		mov	r0, r5
 8092 50aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8093 50ae 0346     		mov	r3, r0
ARM GAS  /tmp/ccIESeqr.s 			page 143


 8094 50b0 0028     		cmp	r0, #0
 8095 50b2 40F0ED84 		bne	.L989
 8096 50b6 8046     		mov	r8, r0
 8097              	.L492:
 8098 50b8 97F982A0 		ldrsb	r10, [r7, #130]
 8099 50bc DFF8B492 		ldr	r9, .L1992+48
 8100 50c0 FCF749B9 		b	.L493
 8101              	.L905:
 8102 50c4 0021     		movs	r1, #0
 8103 50c6 4846     		mov	r0, r9
 8104 50c8 FFF7FEFF 		bl	__aeabi_fcmpgt
 8105 50cc 0028     		cmp	r0, #0
 8106 50ce 7FF4FAAB 		bne	.L904
 8107 50d2 4FF00009 		mov	r9, #0
 8108 50d6 FFF7F6BB 		b	.L904
 8109              	.L1916:
 8110 50da 2846     		mov	r0, r5
 8111 50dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8112 50e0 0021     		movs	r1, #0
 8113 50e2 8046     		mov	r8, r0
 8114 50e4 FFF7FEFF 		bl	__aeabi_fcmplt
 8115 50e8 0028     		cmp	r0, #0
 8116 50ea 40F05A85 		bne	.L1933
 8117 50ee 974B     		ldr	r3, .L1992+8
 8118 50f0 4146     		mov	r1, r8
 8119 50f2 9868     		ldr	r0, [r3, #8]
 8120 50f4 FFF7FEFF 		bl	_ZN4Move14SetIdleTimeoutEf
 8121 50f8 FAF7ADBF 		b	.L166
 8122              	.L1915:
 8123 50fc 0DF17009 		add	r9, sp, #112
 8124 5100 D4F80072 		ldr	r7, [r4, #512]
 8125 5104 0DF5BC78 		add	r8, sp, #376
 8126 5108 0023     		movs	r3, #0
 8127 510a 4A46     		mov	r2, r9
 8128 510c 4146     		mov	r1, r8
 8129 510e 2846     		mov	r0, r5
 8130 5110 C9F80070 		str	r7, [r9]
 8131 5114 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8132 5118 D9F80030 		ldr	r3, [r9]
 8133 511c 002B     		cmp	r3, #0
 8134 511e 3EF4E7AE 		beq	.L999
 8135 5122 D8F80020 		ldr	r2, [r8]
 8136 5126 D4F80032 		ldr	r3, [r4, #512]
 8137 512a 9342     		cmp	r3, r2
 8138 512c 40F2F682 		bls	.L329
 8139 5130 0027     		movs	r7, #0
 8140 5132 06E0     		b	.L331
 8141              	.L332:
 8142 5134 58F82720 		ldr	r2, [r8, r7, lsl #2]
 8143 5138 D4F80032 		ldr	r3, [r4, #512]
 8144 513c 9A42     		cmp	r2, r3
 8145 513e 80F0ED82 		bcs	.L329
 8146              	.L331:
 8147 5142 D4F8F811 		ldr	r1, [r4, #504]
 8148 5146 2068     		ldr	r0, [r4]
 8149 5148 1144     		add	r1, r1, r2
 8150 514a FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
ARM GAS  /tmp/ccIESeqr.s 			page 144


 8151 514e D9F80030 		ldr	r3, [r9]
 8152 5152 0137     		adds	r7, r7, #1
 8153 5154 BB42     		cmp	r3, r7
 8154 5156 EDD8     		bhi	.L332
 8155 5158 0123     		movs	r3, #1
 8156 515a DA46     		mov	r10, fp
 8157 515c 0D93     		str	r3, [sp, #52]
 8158 515e FEF7C9BE 		b	.L327
 8159              	.L1672:
 8160 5162 0523     		movs	r3, #5
 8161 5164 0D93     		str	r3, [sp, #52]
 8162 5166 FAF776BF 		b	.L166
 8163              	.L314:
 8164 516a 2846     		mov	r0, r5
 8165 516c D4F80080 		ldr	r8, [r4]
 8166 5170 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8167 5174 D4F84414 		ldr	r1, [r4, #1092]	@ float
 8168 5178 FFF7FEFF 		bl	__aeabi_fdiv
 8169 517c 0146     		mov	r1, r0
 8170 517e 4046     		mov	r0, r8
 8171 5180 0D97     		str	r7, [sp, #52]
 8172 5182 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 8173 5186 FAF766BF 		b	.L166
 8174              	.L1820:
 8175 518a 5021     		movs	r1, #80
 8176 518c 2846     		mov	r0, r5
 8177 518e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8178 5192 0746     		mov	r7, r0
 8179 5194 80B1     		cbz	r0, .L451
 8180 5196 2846     		mov	r0, r5
 8181 5198 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8182 519c 296B     		ldr	r1, [r5, #48]
 8183 519e 0144     		add	r1, r1, r0
 8184 51a0 6A48     		ldr	r0, .L1992+8
 8185 51a2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 8186 51a6 0122     		movs	r2, #1
 8187 51a8 0146     		mov	r1, r0
 8188 51aa 2046     		mov	r0, r4
 8189 51ac FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 8190 51b0 0746     		mov	r7, r0
 8191 51b2 0028     		cmp	r0, #0
 8192 51b4 3FF467AC 		beq	.L463
 8193              	.L451:
 8194 51b8 4821     		movs	r1, #72
 8195 51ba 2846     		mov	r0, r5
 8196 51bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8197 51c0 0028     		cmp	r0, #0
 8198 51c2 40F05B82 		bne	.L1934
 8199 51c6 4321     		movs	r1, #67
 8200 51c8 2846     		mov	r0, r5
 8201 51ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8202 51ce 0028     		cmp	r0, #0
 8203 51d0 40F0C887 		bne	.L1935
 8204 51d4 002F     		cmp	r7, #0
 8205 51d6 7CF4FBAA 		bne	.L468
 8206 51da 5C4B     		ldr	r3, .L1992+8
 8207 51dc 0121     		movs	r1, #1
ARM GAS  /tmp/ccIESeqr.s 			page 145


 8208 51de D868     		ldr	r0, [r3, #12]
 8209 51e0 FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 8210 51e4 0028     		cmp	r0, #0
 8211 51e6 3FF44EAC 		beq	.L463
 8212 51ea FCF7F1BA 		b	.L468
 8213              	.L835:
 8214 51ee 5EAB     		add	r3, sp, #376
 8215 51f0 1AAA     		add	r2, sp, #104
 8216 51f2 2068     		ldr	r0, [r4]
 8217 51f4 3946     		mov	r1, r7
 8218 51f6 0093     		str	r3, [sp]
 8219 51f8 1CAB     		add	r3, sp, #112
 8220 51fa FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 8221 51fe 5E98     		ldr	r0, [sp, #376]	@ float
 8222 5200 FFF7FEFF 		bl	__aeabi_f2d
 8223 5204 CDE90401 		strd	r0, [sp, #16]
 8224 5208 1C98     		ldr	r0, [sp, #112]	@ float
 8225 520a FFF7FEFF 		bl	__aeabi_f2d
 8226 520e CDE90201 		strd	r0, [sp, #8]
 8227 5212 1A98     		ldr	r0, [sp, #104]	@ float
 8228 5214 FFF7FEFF 		bl	__aeabi_f2d
 8229 5218 3A46     		mov	r2, r7
 8230 521a CDE90001 		strd	r0, [sp]
 8231 521e 4C49     		ldr	r1, .L1992+12
 8232 5220 3046     		mov	r0, r6
 8233 5222 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8234 5226 FCF743BD 		b	.L836
 8235              	.L1894:
 8236 522a 4246     		mov	r2, r8
 8237 522c 4949     		ldr	r1, .L1992+16
 8238 522e 3046     		mov	r0, r6
 8239 5230 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8240 5234 0123     		movs	r3, #1
 8241 5236 0D93     		str	r3, [sp, #52]
 8242 5238 FAF70DBF 		b	.L166
 8243              	.L1893:
 8244 523c 2846     		mov	r0, r5
 8245 523e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8246 5242 0028     		cmp	r0, #0
 8247 5244 D4BF     		ite	le
 8248 5246 0020     		movle	r0, #0
 8249 5248 0120     		movgt	r0, #1
 8250 524a FEF77FB8 		b	.L782
 8251              	.L1801:
 8252 524e 2846     		mov	r0, r5
 8253 5250 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8254 5254 0128     		cmp	r0, #1
 8255 5256 00F0AC84 		beq	.L1936
 8256 525a 3C4B     		ldr	r3, .L1992+8
 8257 525c 4246     		mov	r2, r8
 8258 525e 5868     		ldr	r0, [r3, #4]
 8259 5260 3946     		mov	r1, r7
 8260 5262 3346     		mov	r3, r6
 8261 5264 FFF7FEFF 		bl	_ZN7Network15DisableProtocolEjiRK9StringRef
 8262 5268 0D90     		str	r0, [sp, #52]
 8263 526a FAF7F4BE 		b	.L166
 8264              	.L746:
ARM GAS  /tmp/ccIESeqr.s 			page 146


 8265 526e 0246     		mov	r2, r0
 8266 5270 3949     		ldr	r1, .L1992+20
 8267 5272 3046     		mov	r0, r6
 8268 5274 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8269 5278 0223     		movs	r3, #2
 8270 527a 0D93     		str	r3, [sp, #52]
 8271 527c FDF7CABD 		b	.L747
 8272              	.L1889:
 8273 5280 179A     		ldr	r2, [sp, #92]
 8274 5282 3649     		ldr	r1, .L1992+24
 8275 5284 3046     		mov	r0, r6
 8276 5286 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8277 528a 022F     		cmp	r7, #2
 8278 528c 00F0BE84 		beq	.L1937
 8279 5290 3349     		ldr	r1, .L1992+28
 8280 5292 3046     		mov	r0, r6
 8281 5294 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 8282 5298 0123     		movs	r3, #1
 8283 529a 0D93     		str	r3, [sp, #52]
 8284 529c FAF7DBBE 		b	.L166
 8285              	.L1832:
 8286 52a0 2846     		mov	r0, r5
 8287 52a2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8288 52a6 A0F10107 		sub	r7, r0, #1
 8289 52aa B7FA87F7 		clz	r7, r7
 8290 52ae 7F09     		lsrs	r7, r7, #5
 8291 52b0 FCF722BD 		b	.L382
 8292              	.L1837:
 8293 52b4 2846     		mov	r0, r5
 8294 52b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8295 52ba 8046     		mov	r8, r0
 8296 52bc FCF7BABE 		b	.L644
 8297              	.L1056:
 8298 52c0 284A     		ldr	r2, .L1992+32
 8299 52c2 FEF723BC 		b	.L808
 8300              	.L1797:
 8301 52c6 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 8302 52ca FBF731BF 		b	.L446
 8303              	.L1067:
 8304 52ce 2649     		ldr	r1, .L1992+36
 8305 52d0 FEF777BA 		b	.L873
 8306              	.L710:
 8307 52d4 0346     		mov	r3, r0
 8308 52d6 0390     		str	r0, [sp, #12]
 8309 52d8 0290     		str	r0, [sp, #8]
 8310 52da 0190     		str	r0, [sp, #4]
 8311 52dc 0090     		str	r0, [sp]
 8312 52de 0246     		mov	r2, r0
 8313 52e0 2249     		ldr	r1, .L1992+40
 8314 52e2 3046     		mov	r0, r6
 8315 52e4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8316 52e8 0123     		movs	r3, #1
 8317 52ea 0D93     		str	r3, [sp, #52]
 8318 52ec FAF7B3BE 		b	.L166
 8319              	.L434:
 8320 52f0 4946     		mov	r1, r9
 8321 52f2 2046     		mov	r0, r4
ARM GAS  /tmp/ccIESeqr.s 			page 147


 8322 52f4 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEf
 8323 52f8 FCF7ABB9 		b	.L431
 8324              	.L598:
 8325 52fc BBB2     		uxth	r3, r7
 8326 52fe 1C4A     		ldr	r2, .L1992+44
 8327 5300 40F2B511 		movw	r1, #437
 8328 5304 2068     		ldr	r0, [r4]
 8329 5306 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8330 530a FDF7B3BC 		b	.L603
 8331              	.L684:
 8332 530e 37F00201 		bics	r1, r7, #2
 8333 5312 05D1     		bne	.L686
 8334 5314 84F85C74 		strb	r7, [r4, #1116]
 8335 5318 1B68     		ldr	r3, [r3]
 8336 531a 9D42     		cmp	r5, r3
 8337 531c 7EF4F9A8 		bne	.L687
 8338              	.L686:
 8339 5320 0123     		movs	r3, #1
 8340 5322 FEF7F7B8 		b	.L685
 8341              	.L1819:
 8342 5326 6623     		movs	r3, #102
 8343 5328 1CA9     		add	r1, sp, #112
 8344 532a 1D93     		str	r3, [sp, #116]
 8345 532c 2846     		mov	r0, r5
 8346 532e 5EAB     		add	r3, sp, #376
 8347 5330 1C93     		str	r3, [sp, #112]
 8348 5332 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 8349 5336 5EAA     		add	r2, sp, #376
 8350 5338 3946     		mov	r1, r7
 8351 533a 2068     		ldr	r0, [r4]
 8352 533c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8353 5340 FCF70CBA 		b	.L909
 8354              	.L1993:
 8355              		.align	2
 8356              	.L1992:
 8357 5344 0000C842 		.word	1120403456
 8358 5348 44020000 		.word	.LC53
 8359 534c 00000000 		.word	reprap
 8360 5350 DC100000 		.word	.LC179
 8361 5354 740F0000 		.word	.LC166
 8362 5358 68060000 		.word	.LC94
 8363 535c F0030000 		.word	.LC69
 8364 5360 50040000 		.word	.LC71
 8365 5364 58010000 		.word	.LC42
 8366 5368 9C010000 		.word	.LC47
 8367 536c E00C0000 		.word	.LC145
 8368 5370 0C090000 		.word	.LC114
 8369 5374 18000000 		.word	.LC13
 8370              	.L716:
 8371 5378 5321     		movs	r1, #83
 8372 537a 2846     		mov	r0, r5
 8373 537c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8374 5380 0028     		cmp	r0, #0
 8375 5382 00F0C383 		beq	.L1732
 8376 5386 0DF17009 		add	r9, sp, #112
 8377              	.L718:
 8378 538a D74B     		ldr	r3, .L1994
ARM GAS  /tmp/ccIESeqr.s 			page 148


 8379 538c 2846     		mov	r0, r5
 8380 538e D3F804A0 		ldr	r10, [r3, #4]
 8381 5392 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8382 5396 4FF0210E 		mov	lr, #33
 8383 539a 0096     		str	r6, [sp]
 8384 539c 0246     		mov	r2, r0
 8385 539e 3946     		mov	r1, r7
 8386 53a0 5046     		mov	r0, r10
 8387 53a2 C9F80080 		str	r8, [r9]
 8388 53a6 4B46     		mov	r3, r9
 8389 53a8 C9F804E0 		str	lr, [r9, #4]
 8390 53ac FFF7FEFF 		bl	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 8391 53b0 0D90     		str	r0, [sp, #52]
 8392 53b2 FAF750BE 		b	.L166
 8393              	.L723:
 8394 53b6 2068     		ldr	r0, [r4]
 8395 53b8 CC49     		ldr	r1, .L1994+4
 8396 53ba 90F8A070 		ldrb	r7, [r0, #160]	@ zero_extendqisi2
 8397 53be 90F89E30 		ldrb	r3, [r0, #158]	@ zero_extendqisi2
 8398 53c2 90F89D20 		ldrb	r2, [r0, #157]	@ zero_extendqisi2
 8399 53c6 0197     		str	r7, [sp, #4]
 8400 53c8 90F89F00 		ldrb	r0, [r0, #159]	@ zero_extendqisi2
 8401 53cc 0090     		str	r0, [sp]
 8402 53ce 3046     		mov	r0, r6
 8403 53d0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8404 53d4 0123     		movs	r3, #1
 8405 53d6 0D93     		str	r3, [sp, #52]
 8406 53d8 FAF73DBE 		b	.L166
 8407              	.L720:
 8408 53dc 2068     		ldr	r0, [r4]
 8409 53de C449     		ldr	r1, .L1994+8
 8410 53e0 90F89C70 		ldrb	r7, [r0, #156]	@ zero_extendqisi2
 8411 53e4 90F89A30 		ldrb	r3, [r0, #154]	@ zero_extendqisi2
 8412 53e8 90F89920 		ldrb	r2, [r0, #153]	@ zero_extendqisi2
 8413 53ec 0197     		str	r7, [sp, #4]
 8414 53ee 90F89B00 		ldrb	r0, [r0, #155]	@ zero_extendqisi2
 8415 53f2 0090     		str	r0, [sp]
 8416 53f4 3046     		mov	r0, r6
 8417 53f6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8418 53fa 0123     		movs	r3, #1
 8419 53fc 0D93     		str	r3, [sp, #52]
 8420 53fe FAF72ABE 		b	.L166
 8421              	.L359:
 8422 5402 BC49     		ldr	r1, .L1994+12
 8423 5404 3046     		mov	r0, r6
 8424 5406 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8425 540a 0223     		movs	r3, #2
 8426 540c 0D93     		str	r3, [sp, #52]
 8427 540e FAF722BE 		b	.L166
 8428              	.L1917:
 8429 5412 D9F80030 		ldr	r3, [r9]
 8430 5416 3246     		mov	r2, r6
 8431 5418 2946     		mov	r1, r5
 8432 541a 2046     		mov	r0, r4
 8433 541c FFF7FEFF 		bl	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 8434 5420 0D90     		str	r0, [sp, #52]
 8435 5422 FAF718BE 		b	.L166
ARM GAS  /tmp/ccIESeqr.s 			page 149


 8436              	.L623:
 8437 5426 0F9B     		ldr	r3, [sp, #60]
 8438 5428 1B68     		ldr	r3, [r3]
 8439 542a 023B     		subs	r3, r3, #2
 8440 542c 012B     		cmp	r3, #1
 8441 542e 40F23786 		bls	.L1938
 8442              	.L630:
 8443 5432 2946     		mov	r1, r5
 8444 5434 2046     		mov	r0, r4
 8445 5436 FFF7FEFF 		bl	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 8446 543a 0E9B     		ldr	r3, [sp, #56]
 8447 543c D4F800E0 		ldr	lr, [r4]
 8448 5440 1A68     		ldr	r2, [r3]	@ float
 8449 5442 0F9B     		ldr	r3, [sp, #60]
 8450 5444 0146     		mov	r1, r0
 8451 5446 1B68     		ldr	r3, [r3]
 8452 5448 7046     		mov	r0, lr
 8453 544a 0192     		str	r2, [sp, #4]	@ float
 8454 544c 0093     		str	r3, [sp]
 8455 544e 0297     		str	r7, [sp, #8]
 8456 5450 4B46     		mov	r3, r9
 8457 5452 4246     		mov	r2, r8
 8458 5454 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8459 5458 FDF7CABA 		b	.L619
 8460              	.L1844:
 8461 545c 2846     		mov	r0, r5
 8462 545e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8463 5462 0146     		mov	r1, r0
 8464 5464 FCF7BFBE 		b	.L356
 8465              	.L1845:
 8466 5468 2846     		mov	r0, r5
 8467 546a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8468 546e 0146     		mov	r1, r0
 8469 5470 FCF7D1BE 		b	.L355
 8470              	.L1827:
 8471 5474 2846     		mov	r0, r5
 8472 5476 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8473 547a 0128     		cmp	r0, #1
 8474 547c 0146     		mov	r1, r0
 8475 547e 00F04E83 		beq	.L848
 8476 5482 0228     		cmp	r0, #2
 8477 5484 00F04B83 		beq	.L848
 8478 5488 0028     		cmp	r0, #0
 8479 548a 00F0F284 		beq	.L1939
 8480 548e 0246     		mov	r2, r0
 8481 5490 9949     		ldr	r1, .L1994+16
 8482 5492 3046     		mov	r0, r6
 8483 5494 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8484 5498 0223     		movs	r3, #2
 8485 549a 0D93     		str	r3, [sp, #52]
 8486 549c FAF7DBBD 		b	.L166
 8487              	.L1815:
 8488 54a0 2846     		mov	r0, r5
 8489 54a2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8490 54a6 4FF6FF77 		movw	r7, #65535
 8491 54aa 8742     		cmp	r7, r0
 8492 54ac 28BF     		it	cs
ARM GAS  /tmp/ccIESeqr.s 			page 150


 8493 54ae 0746     		movcs	r7, r0
 8494 54b0 4921     		movs	r1, #73
 8495 54b2 2846     		mov	r0, r5
 8496 54b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8497 54b8 0028     		cmp	r0, #0
 8498 54ba 40F08F84 		bne	.L1940
 8499              	.L689:
 8500 54be 0246     		mov	r2, r0
 8501 54c0 B9B2     		uxth	r1, r7
 8502 54c2 2068     		ldr	r0, [r4]
 8503 54c4 FFF7FEFF 		bl	_ZN8Platform11SetLaserPinEtb
 8504 54c8 0028     		cmp	r0, #0
 8505 54ca 00F01783 		beq	.L690
 8506 54ce 8B49     		ldr	r1, .L1994+20
 8507 54d0 3046     		mov	r0, r6
 8508 54d2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8509 54d6 FCF751B8 		b	.L688
 8510              	.L1804:
 8511 54da 2846     		mov	r0, r5
 8512 54dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8513 54e0 0128     		cmp	r0, #1
 8514 54e2 0746     		mov	r7, r0
 8515 54e4 7BF400AF 		bne	.L506
 8516 54e8 4146     		mov	r1, r8
 8517 54ea DBF80C00 		ldr	r0, [fp, #12]
 8518 54ee FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 8519 54f2 0D97     		str	r7, [sp, #52]
 8520 54f4 FAF7AFBD 		b	.L166
 8521              	.L1897:
 8522 54f8 2846     		mov	r0, r5
 8523 54fa FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8524 54fe 0030     		adds	r0, r0, #0
 8525 5500 18BF     		it	ne
 8526 5502 0120     		movne	r0, #1
 8527 5504 FDF783BF 		b	.L410
 8528              	.L1830:
 8529 5508 2046     		mov	r0, r4
 8530 550a FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 8531 550e FCF7FABA 		b	.L843
 8532              	.L1809:
 8533 5512 2846     		mov	r0, r5
 8534 5514 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8535 5518 0328     		cmp	r0, #3
 8536 551a 40F2FD86 		bls	.L1941
 8537              	.L317:
 8538 551e 7849     		ldr	r1, .L1994+24
 8539 5520 3046     		mov	r0, r6
 8540 5522 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8541 5526 0223     		movs	r3, #2
 8542 5528 0D93     		str	r3, [sp, #52]
 8543 552a FAF794BD 		b	.L166
 8544              	.L1925:
 8545 552e 2846     		mov	r0, r5
 8546 5530 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8547 5534 BAF1BE0F 		cmp	r10, #190
 8548 5538 00F08F83 		beq	.L509
 8549 553c 0128     		cmp	r0, #1
ARM GAS  /tmp/ccIESeqr.s 			page 151


 8550 553e 7FF66CAA 		bls	.L510
 8551              	.L974:
 8552 5542 0246     		mov	r2, r0
 8553 5544 6F49     		ldr	r1, .L1994+28
 8554 5546 3046     		mov	r0, r6
 8555 5548 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8556 554c 0223     		movs	r3, #2
 8557 554e 0D93     		str	r3, [sp, #52]
 8558 5550 FAF781BD 		b	.L166
 8559              	.L1847:
 8560 5554 2846     		mov	r0, r5
 8561 5556 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8562 555a 0746     		mov	r7, r0
 8563 555c FCF77DBE 		b	.L337
 8564              	.L1846:
 8565 5560 2846     		mov	r0, r5
 8566 5562 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8567 5566 0646     		mov	r6, r0
 8568 5568 FCF76FBE 		b	.L336
 8569              	.L595:
 8570 556c D8F80070 		ldr	r7, [r8]
 8571 5570 6549     		ldr	r1, .L1994+32
 8572 5572 07F1A603 		add	r3, r7, #166
 8573 5576 54F82300 		ldr	r0, [r4, r3, lsl #2]	@ float
 8574 557a FFF7FEFF 		bl	__aeabi_fmul
 8575 557e FFF7FEFF 		bl	__aeabi_f2d
 8576 5582 3A46     		mov	r2, r7
 8577 5584 CDE90001 		strd	r0, [sp]
 8578 5588 6049     		ldr	r1, .L1994+36
 8579 558a 3046     		mov	r0, r6
 8580 558c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8581 5590 FDF74EBA 		b	.L593
 8582              	.L1849:
 8583 5594 3A46     		mov	r2, r7
 8584 5596 4946     		mov	r1, r9
 8585 5598 5348     		ldr	r0, .L1994
 8586 559a FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKcj
 8587              	.L1750:
 8588 559e 1AAA     		add	r2, sp, #104
 8589 55a0 0E92     		str	r2, [sp, #56]
 8590 55a2 1A90     		str	r0, [sp, #104]
 8591 55a4 0028     		cmp	r0, #0
 8592 55a6 3BF481AE 		beq	.L704
 8593 55aa 0A21     		movs	r1, #10
 8594 55ac FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 8595 55b0 FCF7C0BE 		b	.L343
 8596              	.L1913:
 8597 55b4 2946     		mov	r1, r5
 8598 55b6 2046     		mov	r0, r4
 8599 55b8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8600 55bc 0028     		cmp	r0, #0
 8601 55be 3BF475AE 		beq	.L704
 8602 55c2 FEF770BC 		b	.L892
 8603              	.L932:
 8604 55c6 5249     		ldr	r1, .L1994+40
 8605 55c8 3846     		mov	r0, r7
 8606 55ca FFF7FEFF 		bl	__aeabi_fcmpgt
ARM GAS  /tmp/ccIESeqr.s 			page 152


 8607 55ce 0028     		cmp	r0, #0
 8608 55d0 7DF484AB 		bne	.L933
 8609 55d4 4E4F     		ldr	r7, .L1994+40
 8610 55d6 FDF781BB 		b	.L933
 8611              	.L1873:
 8612 55da 2846     		mov	r0, r5
 8613 55dc FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8614 55e0 0328     		cmp	r0, #3
 8615 55e2 9CD8     		bhi	.L317
 8616 55e4 4301     		lsls	r3, r0, #5
 8617 55e6 2068     		ldr	r0, [r4]
 8618 55e8 03F5B263 		add	r3, r3, #1424
 8619 55ec 1844     		add	r0, r0, r3
 8620 55ee FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 8621 55f2 0123     		movs	r3, #1
 8622 55f4 0D93     		str	r3, [sp, #52]
 8623 55f6 FAF72EBD 		b	.L166
 8624              	.L1911:
 8625 55fa 4921     		movs	r1, #73
 8626 55fc 2846     		mov	r0, r5
 8627 55fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8628 5602 0028     		cmp	r0, #0
 8629 5604 7FF4BBA8 		bne	.L870
 8630 5608 BBF1000F 		cmp	fp, #0
 8631 560c 3EF4D8A8 		beq	.L987
 8632 5610 FBF731BE 		b	.L313
 8633              	.L766:
 8634 5614 4A46     		mov	r2, r9
 8635 5616 3F49     		ldr	r1, .L1994+44
 8636 5618 3046     		mov	r0, r6
 8637 561a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8638 561e D8F85C30 		ldr	r3, [r8, #92]
 8639 5622 002B     		cmp	r3, #0
 8640 5624 3BF427AE 		beq	.L313
 8641 5628 4FF0200A 		mov	r10, #32
 8642 562c DFF8E8B0 		ldr	fp, .L1994+48
 8643 5630 08EB0A09 		add	r9, r8, r10
 8644              	.L769:
 8645 5634 59F8040F 		ldr	r0, [r9, #4]!	@ float
 8646 5638 FFF7FEFF 		bl	__aeabi_f2d
 8647 563c 5246     		mov	r2, r10
 8648 563e CDE90001 		strd	r0, [sp]
 8649 5642 5946     		mov	r1, fp
 8650 5644 3046     		mov	r0, r6
 8651 5646 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8652 564a D8F85C30 		ldr	r3, [r8, #92]
 8653 564e 0137     		adds	r7, r7, #1
 8654 5650 9F42     		cmp	r7, r3
 8655 5652 4FF03A0A 		mov	r10, #58
 8656 5656 EDD3     		bcc	.L769
 8657 5658 FBF70DBE 		b	.L313
 8658              	.L1713:
 8659 565c 0368     		ldr	r3, [r0]
 8660 565e 04F1A009 		add	r9, r4, #160
 8661 5662 4A46     		mov	r2, r9
 8662 5664 D4F8FC11 		ldr	r1, [r4, #508]
 8663 5668 1B6B     		ldr	r3, [r3, #48]
ARM GAS  /tmp/ccIESeqr.s 			page 153


 8664 566a 9847     		blx	r3
 8665 566c 4946     		mov	r1, r9
 8666 566e 04F18402 		add	r2, r4, #132
 8667 5672 2046     		mov	r0, r4
 8668 5674 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8669 5678 FEF792BE 		b	.L859
 8670              	.L1934:
 8671 567c 0427     		movs	r7, #4
 8672 567e 0DF17009 		add	r9, sp, #112
 8673 5682 0DF5BC78 		add	r8, sp, #376
 8674 5686 0023     		movs	r3, #0
 8675 5688 4A46     		mov	r2, r9
 8676 568a 4146     		mov	r1, r8
 8677 568c 2846     		mov	r0, r5
 8678 568e C9F80070 		str	r7, [r9]
 8679 5692 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8680 5696 D9F80030 		ldr	r3, [r9]
 8681 569a 002B     		cmp	r3, #0
 8682 569c 00F05082 		beq	.L457
 8683 56a0 0027     		movs	r7, #0
 8684 56a2 DFF844B0 		ldr	fp, .L1994
 8685 56a6 04E0     		b	.L458
 8686              	.L456:
 8687 56a8 D9F80030 		ldr	r3, [r9]
 8688 56ac BB42     		cmp	r3, r7
 8689 56ae 40F24782 		bls	.L457
 8690              	.L458:
 8691 56b2 18F92710 		ldrsb	r1, [r8, r7, lsl #2]
 8692 56b6 0122     		movs	r2, #1
 8693 56b8 DBF80C00 		ldr	r0, [fp, #12]
 8694 56bc FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8695 56c0 0137     		adds	r7, r7, #1
 8696 56c2 0028     		cmp	r0, #0
 8697 56c4 F0D1     		bne	.L456
 8698 56c6 8246     		mov	r10, r0
 8699 56c8 3246     		mov	r2, r6
 8700 56ca 2946     		mov	r1, r5
 8701 56cc 2046     		mov	r0, r4
 8702 56ce FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 8703 56d2 0123     		movs	r3, #1
 8704 56d4 84F85D34 		strb	r3, [r4, #1117]
 8705 56d8 FAF7C4BC 		b	.L1671
 8706              	.L1891:
 8707 56dc 2846     		mov	r0, r5
 8708 56de FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8709 56e2 FDF7E5BD 		b	.L709
 8710              	.L1995:
 8711 56e6 00BF     		.align	2
 8712              	.L1994:
 8713 56e8 00000000 		.word	reprap
 8714 56ec 3C0D0000 		.word	.LC149
 8715 56f0 240D0000 		.word	.LC148
 8716 56f4 68020000 		.word	.LC57
 8717 56f8 24110000 		.word	.LC180
 8718 56fc 640C0000 		.word	.LC139
 8719 5700 E0010000 		.word	.LC50
 8720 5704 08070000 		.word	.LC98
ARM GAS  /tmp/ccIESeqr.s 			page 154


 8721 5708 0000C842 		.word	1120403456
 8722 570c D8080000 		.word	.LC113
 8723 5710 000080BF 		.word	-1082130432
 8724 5714 900E0000 		.word	.LC161
 8725 5718 48050000 		.word	.LC81
 8726              	.L329:
 8727 571c C749     		ldr	r1, .L1996
 8728 571e 3046     		mov	r0, r6
 8729 5720 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8730 5724 0223     		movs	r3, #2
 8731 5726 DA46     		mov	r10, fp
 8732 5728 0D93     		str	r3, [sp, #52]
 8733 572a FEF7E3BB 		b	.L327
 8734              	.L1929:
 8735 572e C449     		ldr	r1, .L1996+4
 8736 5730 3046     		mov	r0, r6
 8737 5732 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8738 5736 0223     		movs	r3, #2
 8739 5738 0D93     		str	r3, [sp, #52]
 8740 573a FAF78CBC 		b	.L166
 8741              	.L727:
 8742 573e 2068     		ldr	r0, [r4]
 8743 5740 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8744 5744 BF49     		ldr	r1, .L1996+8
 8745 5746 0246     		mov	r2, r0
 8746 5748 3046     		mov	r0, r6
 8747 574a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8748 574e 0123     		movs	r3, #1
 8749 5750 0D93     		str	r3, [sp, #52]
 8750 5752 FAF780BC 		b	.L166
 8751              	.L1890:
 8752 5756 6523     		movs	r3, #101
 8753 5758 0DF5BC78 		add	r8, sp, #376
 8754 575c 1CA9     		add	r1, sp, #112
 8755 575e 2846     		mov	r0, r5
 8756 5760 1D93     		str	r3, [sp, #116]
 8757 5762 CDF87080 		str	r8, [sp, #112]
 8758 5766 8DF87871 		strb	r7, [sp, #376]
 8759 576a FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 8760 576e 0028     		cmp	r0, #0
 8761 5770 00F0DA81 		beq	.L388
 8762 5774 4146     		mov	r1, r8
 8763 5776 2046     		mov	r0, r4
 8764 5778 FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
 8765 577c 0028     		cmp	r0, #0
 8766 577e 00F00E85 		beq	.L1942
 8767 5782 0D97     		str	r7, [sp, #52]
 8768 5784 FAF767BC 		b	.L166
 8769              	.L310:
 8770 5788 BAF1000F 		cmp	r10, #0
 8771 578c 7EF473AA 		bne	.L311
 8772              	.L888:
 8773 5790 1621     		movs	r1, #22
 8774 5792 AB68     		ldr	r3, [r5, #8]
 8775 5794 AC4A     		ldr	r2, .L1996+12
 8776 5796 1975     		strb	r1, [r3, #20]
 8777 5798 FEF771BA 		b	.L889
ARM GAS  /tmp/ccIESeqr.s 			page 155


 8778              	.L1883:
 8779 579c 2846     		mov	r0, r5
 8780 579e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8781 57a2 0746     		mov	r7, r0
 8782 57a4 FDF748BB 		b	.L715
 8783              	.L1901:
 8784 57a8 0022     		movs	r2, #0
 8785 57aa 0923     		movs	r3, #9
 8786 57ac 0DF5BC78 		add	r8, sp, #376
 8787 57b0 1CA9     		add	r1, sp, #112
 8788 57b2 2846     		mov	r0, r5
 8789 57b4 8DF87821 		strb	r2, [sp, #376]
 8790 57b8 1D93     		str	r3, [sp, #116]
 8791 57ba CDF87080 		str	r8, [sp, #112]
 8792 57be FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 8793 57c2 A249     		ldr	r1, .L1996+16
 8794 57c4 4046     		mov	r0, r8
 8795 57c6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8796 57ca 1021     		movs	r1, #16
 8797 57cc 0028     		cmp	r0, #0
 8798 57ce 7DF4CCAE 		bne	.L885
 8799 57d2 FDF7C9BE 		b	.L884
 8800              	.L501:
 8801 57d6 002B     		cmp	r3, #0
 8802 57d8 7BF44DAD 		bne	.L313
 8803 57dc BAF1000F 		cmp	r10, #0
 8804 57e0 C0F20583 		blt	.L1943
 8805 57e4 19F8010B 		ldrb	r0, [r9], #1	@ zero_extendqisi2
 8806 57e8 FFF7FEFF 		bl	toupper
 8807 57ec 5146     		mov	r1, r10
 8808 57ee 0746     		mov	r7, r0
 8809 57f0 DBF80C00 		ldr	r0, [fp, #12]
 8810 57f4 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 8811 57f8 FFF7FEFF 		bl	__aeabi_f2d
 8812 57fc 4B46     		mov	r3, r9
 8813 57fe CDE90201 		strd	r0, [sp, #8]
 8814 5802 3A46     		mov	r2, r7
 8815 5804 CDF80480 		str	r8, [sp, #4]
 8816 5808 CDF800A0 		str	r10, [sp]
 8817 580c 9049     		ldr	r1, .L1996+20
 8818 580e 3046     		mov	r0, r6
 8819 5810 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8820 5814 0123     		movs	r3, #1
 8821 5816 0D93     		str	r3, [sp, #52]
 8822 5818 FAF71DBC 		b	.L166
 8823              	.L721:
 8824 581c 8D49     		ldr	r1, .L1996+24
 8825 581e 3046     		mov	r0, r6
 8826 5820 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8827 5824 0223     		movs	r3, #2
 8828 5826 0D93     		str	r3, [sp, #52]
 8829 5828 FAF715BC 		b	.L166
 8830              	.L1923:
 8831 582c 0027     		movs	r7, #0
 8832 582e FEF7B4BE 		b	.L571
 8833              	.L1807:
 8834 5832 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 156


 8835 5834 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8836 5838 BAF1000F 		cmp	r10, #0
 8837 583c 8346     		mov	fp, r0
 8838 583e C0F26683 		blt	.L1944
 8839 5842 8549     		ldr	r1, .L1996+28
 8840 5844 FFF7FEFF 		bl	__aeabi_fcmplt
 8841 5848 0028     		cmp	r0, #0
 8842 584a 00F0A583 		beq	.L1682
 8843 584e 5146     		mov	r1, r10
 8844 5850 3846     		mov	r0, r7
 8845 5852 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8846              	.L500:
 8847 5856 5221     		movs	r1, #82
 8848 5858 2846     		mov	r0, r5
 8849 585a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8850 585e 0028     		cmp	r0, #0
 8851 5860 7BF48FAD 		bne	.L502
 8852 5864 FBF707BD 		b	.L313
 8853              	.L1924:
 8854 5868 4FF00008 		mov	r8, #0
 8855 586c FEF7E3BF 		b	.L920
 8856              	.L717:
 8857 5870 7849     		ldr	r1, .L1996+24
 8858 5872 3046     		mov	r0, r6
 8859 5874 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8860 5878 0223     		movs	r3, #2
 8861 587a 0D93     		str	r3, [sp, #52]
 8862 587c FAF7EBBB 		b	.L166
 8863              	.L724:
 8864 5880 7449     		ldr	r1, .L1996+24
 8865 5882 3046     		mov	r0, r6
 8866 5884 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8867 5888 0223     		movs	r3, #2
 8868 588a 0D93     		str	r3, [sp, #52]
 8869 588c FAF7E3BB 		b	.L166
 8870              	.L1932:
 8871 5890 7249     		ldr	r1, .L1996+32
 8872 5892 3046     		mov	r0, r6
 8873 5894 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8874 5898 0123     		movs	r3, #1
 8875 589a 0D93     		str	r3, [sp, #52]
 8876 589c FAF7DBBB 		b	.L166
 8877              	.L1931:
 8878 58a0 4946     		mov	r1, r9
 8879 58a2 D8F80C00 		ldr	r0, [r8, #12]
 8880 58a6 FFF7FEFF 		bl	_ZNK4Heat15IsChamberHeaterEa
 8881 58aa 0028     		cmp	r0, #0
 8882 58ac 00F04481 		beq	.L1027
 8883 58b0 DFF8D891 		ldr	r9, .L1996+80
 8884 58b4 FCF7B0BB 		b	.L642
 8885              	.L650:
 8886 58b8 97F84630 		ldrb	r3, [r7, #70]	@ zero_extendqisi2
 8887 58bc 002B     		cmp	r3, #0
 8888 58be 00F0BB83 		beq	.L1945
 8889 58c2 97F84730 		ldrb	r3, [r7, #71]	@ zero_extendqisi2
 8890 58c6 002B     		cmp	r3, #0
 8891 58c8 00F04683 		beq	.L1029
ARM GAS  /tmp/ccIESeqr.s 			page 157


 8892 58cc 97F84910 		ldrb	r1, [r7, #73]	@ zero_extendqisi2
 8893 58d0 634A     		ldr	r2, .L1996+36
 8894 58d2 644B     		ldr	r3, .L1996+40
 8895 58d4 0029     		cmp	r1, #0
 8896 58d6 18BF     		it	ne
 8897 58d8 1A46     		movne	r2, r3
 8898              	.L656:
 8899 58da DBF80C30 		ldr	r3, [fp, #12]
 8900 58de 97F84810 		ldrb	r1, [r7, #72]	@ zero_extendqisi2
 8901 58e2 03EB8A0A 		add	r10, r3, r10, lsl #2
 8902 58e6 DAF80430 		ldr	r3, [r10, #4]
 8903 58ea 93F87D30 		ldrb	r3, [r3, #125]	@ zero_extendqisi2
 8904 58ee 0029     		cmp	r1, #0
 8905 58f0 00F02B83 		beq	.L657
 8906 58f4 5C48     		ldr	r0, .L1996+44
 8907 58f6 5D49     		ldr	r1, .L1996+48
 8908 58f8 002B     		cmp	r3, #0
 8909 58fa 0CBF     		ite	eq
 8910 58fc 0346     		moveq	r3, r0
 8911 58fe 0B46     		movne	r3, r1
 8912              	.L658:
 8913 5900 0B93     		str	r3, [sp, #44]
 8914 5902 0A92     		str	r2, [sp, #40]
 8915 5904 386C     		ldr	r0, [r7, #64]	@ float
 8916 5906 FFF7FEFF 		bl	__aeabi_f2d
 8917 590a CDE90801 		strd	r0, [sp, #32]
 8918 590e F86B     		ldr	r0, [r7, #60]	@ float
 8919 5910 FFF7FEFF 		bl	__aeabi_f2d
 8920 5914 CDE90601 		strd	r0, [sp, #24]
 8921 5918 B86B     		ldr	r0, [r7, #56]	@ float
 8922 591a FFF7FEFF 		bl	__aeabi_f2d
 8923 591e CDE90401 		strd	r0, [sp, #16]
 8924 5922 786B     		ldr	r0, [r7, #52]	@ float
 8925 5924 FFF7FEFF 		bl	__aeabi_f2d
 8926 5928 CDE90201 		strd	r0, [sp, #8]
 8927 592c 386B     		ldr	r0, [r7, #48]	@ float
 8928 592e FFF7FEFF 		bl	__aeabi_f2d
 8929 5932 4246     		mov	r2, r8
 8930 5934 CDE90001 		strd	r0, [sp]
 8931 5938 4D49     		ldr	r1, .L1996+52
 8932 593a 3046     		mov	r0, r6
 8933 593c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8934 5940 B7F84420 		ldrh	r2, [r7, #68]
 8935 5944 002A     		cmp	r2, #0
 8936 5946 40F0FB82 		bne	.L659
 8937 594a 4A49     		ldr	r1, .L1996+56
 8938 594c 3046     		mov	r0, r6
 8939 594e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 8940              	.L660:
 8941 5952 97F84730 		ldrb	r3, [r7, #71]	@ zero_extendqisi2
 8942 5956 002B     		cmp	r3, #0
 8943 5958 3CF432AB 		beq	.L654
 8944 595c 3037     		adds	r7, r7, #48
 8945 595e 0022     		movs	r2, #0
 8946 5960 3946     		mov	r1, r7
 8947 5962 5EA8     		add	r0, sp, #376
 8948 5964 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
ARM GAS  /tmp/ccIESeqr.s 			page 158


 8949 5968 5E98     		ldr	r0, [sp, #376]	@ float
 8950 596a FFF7FEFF 		bl	__aeabi_f2d
 8951 596e 8046     		mov	r8, r0
 8952 5970 6098     		ldr	r0, [sp, #384]	@ float
 8953 5972 8946     		mov	r9, r1
 8954 5974 FFF7FEFF 		bl	__aeabi_f2d
 8955 5978 CDE90201 		strd	r0, [sp, #8]
 8956 597c 5F98     		ldr	r0, [sp, #380]	@ float
 8957 597e FFF7FEFF 		bl	__aeabi_f2d
 8958 5982 4B46     		mov	r3, r9
 8959 5984 CDE90001 		strd	r0, [sp]
 8960 5988 4246     		mov	r2, r8
 8961 598a 3B49     		ldr	r1, .L1996+60
 8962 598c 3046     		mov	r0, r6
 8963 598e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8964 5992 0122     		movs	r2, #1
 8965 5994 3946     		mov	r1, r7
 8966 5996 5EA8     		add	r0, sp, #376
 8967 5998 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8968 599c 5E98     		ldr	r0, [sp, #376]	@ float
 8969 599e FFF7FEFF 		bl	__aeabi_f2d
 8970 59a2 8046     		mov	r8, r0
 8971 59a4 6098     		ldr	r0, [sp, #384]	@ float
 8972 59a6 8946     		mov	r9, r1
 8973 59a8 FFF7FEFF 		bl	__aeabi_f2d
 8974 59ac CDE90201 		strd	r0, [sp, #8]
 8975 59b0 5F98     		ldr	r0, [sp, #380]	@ float
 8976 59b2 FFF7FEFF 		bl	__aeabi_f2d
 8977 59b6 4246     		mov	r2, r8
 8978 59b8 CDE90001 		strd	r0, [sp]
 8979 59bc 4B46     		mov	r3, r9
 8980 59be 2F49     		ldr	r1, .L1996+64
 8981 59c0 3046     		mov	r0, r6
 8982 59c2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8983 59c6 FCF7FBBA 		b	.L654
 8984              	.L1695:
 8985 59ca 2D49     		ldr	r1, .L1996+68
 8986 59cc 3046     		mov	r0, r6
 8987 59ce FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8988 59d2 0223     		movs	r3, #2
 8989 59d4 0D93     		str	r3, [sp, #52]
 8990 59d6 FAF73EBB 		b	.L166
 8991              	.L1794:
 8992 59da 2A49     		ldr	r1, .L1996+72
 8993 59dc 3046     		mov	r0, r6
 8994 59de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8995 59e2 0223     		movs	r3, #2
 8996 59e4 0D93     		str	r3, [sp, #52]
 8997 59e6 FAF736BB 		b	.L166
 8998              	.L1831:
 8999 59ea 04F18402 		add	r2, r4, #132
 9000 59ee 4946     		mov	r1, r9
 9001 59f0 2046     		mov	r0, r4
 9002 59f2 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9003 59f6 FCF7DDB8 		b	.L841
 9004              	.L1798:
 9005 59fa 2846     		mov	r0, r5
ARM GAS  /tmp/ccIESeqr.s 			page 159


 9006 59fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9007 5a00 5021     		movs	r1, #80
 9008 5a02 0746     		mov	r7, r0
 9009 5a04 2846     		mov	r0, r5
 9010 5a06 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9011 5a0a 0028     		cmp	r0, #0
 9012 5a0c 40F00884 		bne	.L1946
 9013              	.L318:
 9014 5a10 4301     		lsls	r3, r0, #5
 9015 5a12 2068     		ldr	r0, [r4]
 9016 5a14 03F5B263 		add	r3, r3, #1424
 9017 5a18 1844     		add	r0, r0, r3
 9018 5a1a 07F10041 		add	r1, r7, #-2147483648
 9019 5a1e FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 9020 5a22 0123     		movs	r3, #1
 9021 5a24 0D93     		str	r3, [sp, #52]
 9022 5a26 FAF716BB 		b	.L166
 9023              	.L791:
 9024 5a2a 0A46     		mov	r2, r1
 9025 5a2c 3046     		mov	r0, r6
 9026 5a2e 1649     		ldr	r1, .L1996+76
 9027 5a30 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9028 5a34 0223     		movs	r3, #2
 9029 5a36 0D93     		str	r3, [sp, #52]
 9030 5a38 FAF70DBB 		b	.L166
 9031              	.L1997:
 9032              		.align	2
 9033              	.L1996:
 9034 5a3c F8010000 		.word	.LC51
 9035 5a40 34090000 		.word	.LC115
 9036 5a44 B00D0000 		.word	.LC156
 9037 5a48 00000000 		.word	.LC9
 9038 5a4c F8110000 		.word	.LC190
 9039 5a50 B4060000 		.word	.LC96
 9040 5a54 140D0000 		.word	.LC147
 9041 5a58 008088C3 		.word	-1014464512
 9042 5a5c AC090000 		.word	.LC118
 9043 5a60 34000000 		.word	.LC17
 9044 5a64 44000000 		.word	.LC19
 9045 5a68 50000000 		.word	.LC20
 9046 5a6c 74000000 		.word	.LC23
 9047 5a70 2C0A0000 		.word	.LC122
 9048 5a74 B80A0000 		.word	.LC123
 9049 5a78 C80A0000 		.word	.LC125
 9050 5a7c 0C0B0000 		.word	.LC126
 9051 5a80 A0080000 		.word	.LC111
 9052 5a84 50050000 		.word	.LC82
 9053 5a88 F00F0000 		.word	.LC168
 9054 5a8c 00004842 		.word	1112014848
 9055              	.L989:
 9056 5a90 2846     		mov	r0, r5
 9057 5a92 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9058 5a96 021E     		subs	r2, r0, #0
 9059 5a98 C0F2D583 		blt	.L1016
 9060 5a9c 032A     		cmp	r2, #3
 9061 5a9e 00F3CA83 		bgt	.L1947
 9062              	.L489:
ARM GAS  /tmp/ccIESeqr.s 			page 160


 9063 5aa2 BAF18D0F 		cmp	r10, #141
 9064 5aa6 52B2     		sxtb	r2, r2
 9065 5aa8 4146     		mov	r1, r8
 9066 5aaa 3846     		mov	r0, r7
 9067 5aac 00F0C083 		beq	.L1948
 9068 5ab0 FFF7FEFF 		bl	_ZN4Heat12SetBedHeaterEja
 9069              	.L491:
 9070 5ab4 2068     		ldr	r0, [r4]
 9071 5ab6 FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 9072 5aba 0123     		movs	r3, #1
 9073 5abc FBF741BC 		b	.L488
 9074              	.L1926:
 9075 5ac0 DFF850B3 		ldr	fp, .L1998
 9076 5ac4 DBF80C30 		ldr	r3, [fp, #12]
 9077 5ac8 0344     		add	r3, r3, r0
 9078 5aca 93F98370 		ldrsb	r7, [r3, #131]
 9079 5ace FEF7AEBF 		b	.L512
 9080              	.L1879:
 9081 5ad2 2846     		mov	r0, r5
 9082 5ad4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9083 5ad8 0028     		cmp	r0, #0
 9084 5ada 7DF4F0A8 		bne	.L615
 9085 5ade 3846     		mov	r0, r7
 9086 5ae0 D4F8C812 		ldr	r1, [r4, #712]	@ float
 9087 5ae4 FFF7FEFF 		bl	__aeabi_fsub
 9088 5ae8 0746     		mov	r7, r0
 9089 5aea FDF7E8B8 		b	.L615
 9090              	.L1848:
 9091 5aee 3A46     		mov	r2, r7
 9092 5af0 4946     		mov	r1, r9
 9093 5af2 0123     		movs	r3, #1
 9094 5af4 C748     		ldr	r0, .L1998
 9095 5af6 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcjb
 9096 5afa 50E5     		b	.L1750
 9097              	.L690:
 9098 5afc C649     		ldr	r1, .L1998+4
 9099 5afe 3046     		mov	r0, r6
 9100 5b00 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9101 5b04 0223     		movs	r3, #2
 9102 5b06 0D93     		str	r3, [sp, #52]
 9103 5b08 FAF7A5BA 		b	.L166
 9104              	.L1732:
 9105 5b0c C14B     		ldr	r3, .L1998
 9106 5b0e 3946     		mov	r1, r7
 9107 5b10 5868     		ldr	r0, [r3, #4]
 9108 5b12 3246     		mov	r2, r6
 9109 5b14 FFF7FEFF 		bl	_ZN7Network15GetNetworkStateEjRK9StringRef
 9110 5b18 0D90     		str	r0, [sp, #52]
 9111 5b1a FAF79CBA 		b	.L166
 9112              	.L848:
 9113 5b1e 4846     		mov	r0, r9
 9114 5b20 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9115 5b24 FBF754BF 		b	.L845
 9116              	.L388:
 9117 5b28 BC49     		ldr	r1, .L1998+8
 9118 5b2a 3046     		mov	r0, r6
 9119 5b2c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  /tmp/ccIESeqr.s 			page 161


 9120 5b30 0223     		movs	r3, #2
 9121 5b32 0D93     		str	r3, [sp, #52]
 9122 5b34 FAF78FBA 		b	.L166
 9123              	.L1027:
 9124 5b38 DFF81493 		ldr	r9, .L1998+60
 9125 5b3c FCF76CBA 		b	.L642
 9126              	.L457:
 9127 5b40 4321     		movs	r1, #67
 9128 5b42 2846     		mov	r0, r5
 9129 5b44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9130 5b48 0028     		cmp	r0, #0
 9131 5b4a 3BF441AE 		beq	.L468
 9132              	.L454:
 9133 5b4e 0227     		movs	r7, #2
 9134 5b50 0023     		movs	r3, #0
 9135 5b52 4A46     		mov	r2, r9
 9136 5b54 4146     		mov	r1, r8
 9137 5b56 2846     		mov	r0, r5
 9138 5b58 C9F80070 		str	r7, [r9]
 9139 5b5c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 9140 5b60 D9F80070 		ldr	r7, [r9]
 9141 5b64 002F     		cmp	r7, #0
 9142 5b66 00F0BF82 		beq	.L459
 9143 5b6a 0027     		movs	r7, #0
 9144 5b6c DFF8A4A2 		ldr	r10, .L1998
 9145 5b70 04E0     		b	.L466
 9146              	.L467:
 9147 5b72 D9F80030 		ldr	r3, [r9]
 9148 5b76 BB42     		cmp	r3, r7
 9149 5b78 7BF62AAE 		bls	.L468
 9150              	.L466:
 9151 5b7c 58F82730 		ldr	r3, [r8, r7, lsl #2]
 9152 5b80 0137     		adds	r7, r7, #1
 9153 5b82 012B     		cmp	r3, #1
 9154 5b84 F5D8     		bhi	.L467
 9155 5b86 DAF80C00 		ldr	r0, [r10, #12]
 9156 5b8a 0344     		add	r3, r3, r0
 9157 5b8c 93F98310 		ldrsb	r1, [r3, #131]
 9158 5b90 0029     		cmp	r1, #0
 9159 5b92 EEDB     		blt	.L467
 9160 5b94 0122     		movs	r2, #1
 9161 5b96 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 9162 5b9a 0028     		cmp	r0, #0
 9163 5b9c E9D1     		bne	.L467
 9164 5b9e FEF772BF 		b	.L463
 9165              	.L1933:
 9166 5ba2 9F49     		ldr	r1, .L1998+12
 9167 5ba4 3046     		mov	r0, r6
 9168 5ba6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9169 5baa 0223     		movs	r3, #2
 9170 5bac 0D93     		str	r3, [sp, #52]
 9171 5bae FAF752BA 		b	.L166
 9172              	.L1936:
 9173 5bb2 5221     		movs	r1, #82
 9174 5bb4 2846     		mov	r0, r5
 9175 5bb6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9176 5bba 0028     		cmp	r0, #0
ARM GAS  /tmp/ccIESeqr.s 			page 162


 9177 5bbc 40F04A83 		bne	.L1949
 9178 5bc0 4FF0FF39 		mov	r9, #-1
 9179              	.L833:
 9180 5bc4 5421     		movs	r1, #84
 9181 5bc6 2846     		mov	r0, r5
 9182 5bc8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9183 5bcc 0028     		cmp	r0, #0
 9184 5bce 40F03D83 		bne	.L1950
 9185 5bd2 4FF0FF30 		mov	r0, #-1
 9186              	.L834:
 9187 5bd6 0030     		adds	r0, r0, #0
 9188 5bd8 18BF     		it	ne
 9189 5bda 0120     		movne	r0, #1
 9190 5bdc 8DE84100 		stm	sp, {r0, r6}
 9191 5be0 DFF830E2 		ldr	lr, .L1998
 9192 5be4 4B46     		mov	r3, r9
 9193 5be6 4246     		mov	r2, r8
 9194 5be8 3946     		mov	r1, r7
 9195 5bea DEF80400 		ldr	r0, [lr, #4]
 9196 5bee FFF7FEFF 		bl	_ZN7Network14EnableProtocolEjiibRK9StringRef
 9197 5bf2 0D90     		str	r0, [sp, #52]
 9198 5bf4 FAF72FBA 		b	.L166
 9199              	.L895:
 9200 5bf8 0021     		movs	r1, #0
 9201 5bfa 3846     		mov	r0, r7
 9202 5bfc FFF7FEFF 		bl	__aeabi_fcmpgt
 9203 5c00 0028     		cmp	r0, #0
 9204 5c02 7DF48CAB 		bne	.L896
 9205 5c06 0027     		movs	r7, #0
 9206 5c08 FDF789BB 		b	.L896
 9207              	.L1937:
 9208 5c0c D8F80000 		ldr	r0, [r8]
 9209 5c10 D9F80010 		ldr	r1, [r9]
 9210 5c14 5EAB     		add	r3, sp, #376
 9211 5c16 D3E90023 		ldrd	r2, [r3]
 9212 5c1a 0390     		str	r0, [sp, #12]
 9213 5c1c 0291     		str	r1, [sp, #8]
 9214 5c1e CDE90023 		strd	r2, [sp]
 9215 5c22 DDE91C23 		ldrd	r2, [sp, #112]
 9216 5c26 7F49     		ldr	r1, .L1998+16
 9217 5c28 3046     		mov	r0, r6
 9218 5c2a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9219 5c2e 0123     		movs	r3, #1
 9220 5c30 0D93     		str	r3, [sp, #52]
 9221 5c32 FAF710BA 		b	.L166
 9222              	.L1867:
 9223 5c36 0021     		movs	r1, #0
 9224 5c38 3846     		mov	r0, r7
 9225 5c3a FFF7FEFF 		bl	__aeabi_fcmpgt
 9226 5c3e 4621     		movs	r1, #70
 9227 5c40 0028     		cmp	r0, #0
 9228 5c42 00F07182 		beq	.L1951
 9229 5c46 2846     		mov	r0, r5
 9230 5c48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9231 5c4c 0028     		cmp	r0, #0
 9232 5c4e 7CF472AE 		bne	.L970
 9233              	.L1010:
ARM GAS  /tmp/ccIESeqr.s 			page 163


 9234 5c52 4FF4FA78 		mov	r8, #500
 9235 5c56 FCF77BBE 		b	.L402
 9236              	.L509:
 9237 5c5a 0028     		cmp	r0, #0
 9238 5c5c 7FF471AC 		bne	.L974
 9239 5c60 FEF7DFBE 		b	.L511
 9240              	.L1799:
 9241 5c64 2846     		mov	r0, r5
 9242 5c66 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9243 5c6a 0328     		cmp	r0, #3
 9244 5c6c 3FF657AC 		bhi	.L317
 9245 5c70 4301     		lsls	r3, r0, #5
 9246 5c72 03F5B263 		add	r3, r3, #1424
 9247 5c76 FBF7DBBA 		b	.L316
 9248              	.L1877:
 9249 5c7a 2846     		mov	r0, r5
 9250 5c7c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9251 5c80 0021     		movs	r1, #0
 9252 5c82 0746     		mov	r7, r0
 9253 5c84 FFF7FEFF 		bl	__aeabi_fcmplt
 9254 5c88 0028     		cmp	r0, #0
 9255 5c8a 40F02A83 		bne	.L1952
 9256 5c8e 6649     		ldr	r1, .L1998+20
 9257 5c90 3846     		mov	r0, r7
 9258 5c92 FFF7FEFF 		bl	__aeabi_fcmplt
 9259 5c96 0028     		cmp	r0, #0
 9260 5c98 00F01A83 		beq	.L1697
 9261 5c9c 3946     		mov	r1, r7
 9262 5c9e 3846     		mov	r0, r7
 9263 5ca0 FFF7FEFF 		bl	__aeabi_fcmpun
 9264 5ca4 28B9     		cbnz	r0, .L929
 9265 5ca6 6149     		ldr	r1, .L1998+24
 9266 5ca8 3846     		mov	r0, r7
 9267 5caa FFF7FEFF 		bl	__aeabi_fcmplt
 9268 5cae 00B9     		cbnz	r0, .L929
 9269 5cb0 5E4F     		ldr	r7, .L1998+24
 9270              	.L929:
 9271 5cb2 3846     		mov	r0, r7
 9272 5cb4 5E49     		ldr	r1, .L1998+28
 9273 5cb6 FFF7FEFF 		bl	__aeabi_fmul
 9274 5cba 5B49     		ldr	r1, .L1998+20
 9275 5cbc FFF7FEFF 		bl	__aeabi_fadd
 9276 5cc0 0746     		mov	r7, r0
 9277              	.L611:
 9278 5cc2 5C49     		ldr	r1, .L1998+32
 9279 5cc4 3846     		mov	r0, r7
 9280 5cc6 FFF7FEFF 		bl	__aeabi_fmul
 9281 5cca 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 9282 5cce 0146     		mov	r1, r0
 9283 5cd0 23B1     		cbz	r3, .L612
 9284 5cd2 4FF07E50 		mov	r0, #1065353216
 9285 5cd6 FFF7FEFF 		bl	__aeabi_fsub
 9286 5cda 0146     		mov	r1, r0
 9287              	.L612:
 9288 5cdc 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 9289              	.L1749:
 9290 5ce0 3222     		movs	r2, #50
ARM GAS  /tmp/ccIESeqr.s 			page 164


 9291 5ce2 FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 9292 5ce6 FCF7C5BF 		b	.L603
 9293              	.L1892:
 9294 5cea 5349     		ldr	r1, .L1998+36
 9295 5cec 3046     		mov	r0, r6
 9296 5cee FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9297 5cf2 0223     		movs	r3, #2
 9298 5cf4 0D93     		str	r3, [sp, #52]
 9299 5cf6 FAF7AEB9 		b	.L166
 9300              	.L1876:
 9301 5cfa 2846     		mov	r0, r5
 9302 5cfc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9303 5d00 0028     		cmp	r0, #0
 9304 5d02 7CF7B0AF 		ble	.L600
 9305 5d06 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 9306 5d0a 83F00103 		eor	r3, r3, #1
 9307 5d0e 88F80030 		strb	r3, [r8]
 9308 5d12 FCF7A8BF 		b	.L600
 9309              	.L1920:
 9310 5d16 04F18402 		add	r2, r4, #132
 9311 5d1a 4946     		mov	r1, r9
 9312 5d1c 2046     		mov	r0, r4
 9313 5d1e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9314 5d22 FEF751BB 		b	.L860
 9315              	.L779:
 9316 5d26 002F     		cmp	r7, #0
 9317 5d28 7CF42AAF 		bne	.L780
 9318 5d2c 5E98     		ldr	r0, [sp, #376]	@ float
 9319 5d2e FFF7FEFF 		bl	__aeabi_f2d
 9320 5d32 CDE90201 		strd	r0, [sp, #8]
 9321 5d36 1C98     		ldr	r0, [sp, #112]	@ float
 9322 5d38 FFF7FEFF 		bl	__aeabi_f2d
 9323 5d3c 4A46     		mov	r2, r9
 9324 5d3e CDE90001 		strd	r0, [sp]
 9325 5d42 3E49     		ldr	r1, .L1998+40
 9326 5d44 3046     		mov	r0, r6
 9327 5d46 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9328 5d4a FCF719BF 		b	.L780
 9329              	.L1814:
 9330 5d4e 2846     		mov	r0, r5
 9331 5d50 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9332 5d54 F861     		str	r0, [r7, #28]
 9333 5d56 FBF7F0BB 		b	.L702
 9334              	.L1813:
 9335 5d5a 2846     		mov	r0, r5
 9336 5d5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9337 5d60 4FF07E51 		mov	r1, #1065353216
 9338 5d64 8046     		mov	r8, r0
 9339 5d66 FFF7FEFF 		bl	__aeabi_fcmplt
 9340 5d6a 08B1     		cbz	r0, .L700
 9341 5d6c 4FF07E58 		mov	r8, #1065353216
 9342              	.L700:
 9343 5d70 C7F81880 		str	r8, [r7, #24]	@ float
 9344 5d74 FBF7DABB 		b	.L699
 9345              	.L1812:
 9346 5d78 2846     		mov	r0, r5
 9347 5d7a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  /tmp/ccIESeqr.s 			page 165


 9348 5d7e 0146     		mov	r1, r0
 9349 5d80 3846     		mov	r0, r7
 9350 5d82 FFF7FEFF 		bl	_ZN7Spindle15SetPwmFrequencyEf
 9351 5d86 FBF7CABB 		b	.L698
 9352              	.L1914:
 9353 5d8a 224B     		ldr	r3, .L1998
 9354 5d8c 4146     		mov	r1, r8
 9355 5d8e D869     		ldr	r0, [r3, #28]
 9356 5d90 FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 9357 5d94 2068     		ldr	r0, [r4]
 9358 5d96 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9359 5d9a 0228     		cmp	r0, #2
 9360 5d9c 00F0D481 		beq	.L1953
 9361              	.L361:
 9362 5da0 4246     		mov	r2, r8
 9363 5da2 2749     		ldr	r1, .L1998+44
 9364 5da4 3046     		mov	r0, r6
 9365 5da6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9366              	.L893:
 9367 5daa BAF1200F 		cmp	r10, #32
 9368 5dae 00F0AB82 		beq	.L1954
 9369 5db2 0123     		movs	r3, #1
 9370 5db4 0D93     		str	r3, [sp, #52]
 9371 5db6 FAF74EB9 		b	.L166
 9372              	.L471:
 9373 5dba 3522     		movs	r2, #53
 9374 5dbc 2149     		ldr	r1, .L1998+48
 9375 5dbe 3046     		mov	r0, r6
 9376 5dc0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9377 5dc4 0223     		movs	r3, #2
 9378 5dc6 0D93     		str	r3, [sp, #52]
 9379 5dc8 FAF745B9 		b	.L166
 9380              	.L1808:
 9381 5dcc 1E49     		ldr	r1, .L1998+52
 9382 5dce 3046     		mov	r0, r6
 9383 5dd0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9384 5dd4 0223     		movs	r3, #2
 9385 5dd6 0D93     		str	r3, [sp, #52]
 9386 5dd8 FAF73DB9 		b	.L166
 9387              	.L1940:
 9388 5ddc 2846     		mov	r0, r5
 9389 5dde FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9390 5de2 0028     		cmp	r0, #0
 9391 5de4 D4BF     		ite	le
 9392 5de6 0020     		movle	r0, #0
 9393 5de8 0120     		movgt	r0, #1
 9394 5dea FFF768BB 		b	.L689
 9395              	.L1943:
 9396 5dee 4346     		mov	r3, r8
 9397 5df0 4A46     		mov	r2, r9
 9398 5df2 1649     		ldr	r1, .L1998+56
 9399 5df4 3046     		mov	r0, r6
 9400 5df6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9401 5dfa 0123     		movs	r3, #1
 9402 5dfc 0D93     		str	r3, [sp, #52]
 9403 5dfe FAF72AB9 		b	.L166
 9404              	.L1811:
ARM GAS  /tmp/ccIESeqr.s 			page 166


 9405 5e02 0549     		ldr	r1, .L1998+4
 9406 5e04 3046     		mov	r0, r6
 9407 5e06 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9408 5e0a 0223     		movs	r3, #2
 9409 5e0c 0D93     		str	r3, [sp, #52]
 9410 5e0e FAF722B9 		b	.L166
 9411              	.L1999:
 9412 5e12 00BF     		.align	2
 9413              	.L1998:
 9414 5e14 00000000 		.word	reprap
 9415 5e18 780C0000 		.word	.LC140
 9416 5e1c 68020000 		.word	.LC57
 9417 5e20 20020000 		.word	.LC52
 9418 5e24 14040000 		.word	.LC70
 9419 5e28 00000844 		.word	1141374976
 9420 5e2c 00003443 		.word	1127481344
 9421 5e30 50FA2441 		.word	1092942416
 9422 5e34 17B75138 		.word	944879383
 9423 5e38 D00C0000 		.word	.LC144
 9424 5e3c 2C0F0000 		.word	.LC165
 9425 5e40 A0120000 		.word	.LC195
 9426 5e44 E8050000 		.word	.LC88
 9427 5e48 B00C0000 		.word	.LC143
 9428 5e4c 84060000 		.word	.LC95
 9429 5e50 00004843 		.word	1128792064
 9430              	.L1810:
 9431 5e54 2846     		mov	r0, r5
 9432 5e56 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9433 5e5a 0028     		cmp	r0, #0
 9434 5e5c D4BF     		ite	le
 9435 5e5e 0020     		movle	r0, #0
 9436 5e60 0120     		movgt	r0, #1
 9437 5e62 FBF74ABB 		b	.L696
 9438              	.L767:
 9439 5e66 5EA9     		add	r1, sp, #376
 9440 5e68 4046     		mov	r0, r8
 9441 5e6a FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 9442 5e6e FCF7C4BE 		b	.L768
 9443              	.L1939:
 9444 5e72 4846     		mov	r0, r9
 9445 5e74 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9446 5e78 0123     		movs	r3, #1
 9447 5e7a 0D93     		str	r3, [sp, #52]
 9448 5e7c FBF7C6BD 		b	.L850
 9449              	.L771:
 9450 5e80 5421     		movs	r1, #84
 9451 5e82 2846     		mov	r0, r5
 9452 5e84 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9453 5e88 0028     		cmp	r0, #0
 9454 5e8a 7DF48BA9 		bne	.L774
 9455 5e8e 002F     		cmp	r7, #0
 9456 5e90 7BF4F1A9 		bne	.L313
 9457 5e94 0DF5BC78 		add	r8, sp, #376
 9458 5e98 4246     		mov	r2, r8
 9459 5e9a 4946     		mov	r1, r9
 9460 5e9c 2068     		ldr	r0, [r4]
 9461 5e9e FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEjPf
ARM GAS  /tmp/ccIESeqr.s 			page 167


 9462 5ea2 2368     		ldr	r3, [r4]
 9463 5ea4 C64A     		ldr	r2, .L2000
 9464 5ea6 4B44     		add	r3, r3, r9
 9465 5ea8 93F8B910 		ldrb	r1, [r3, #185]	@ zero_extendqisi2
 9466 5eac C54F     		ldr	r7, .L2000+4
 9467 5eae 93F9C2A0 		ldrsb	r10, [r3, #194]
 9468 5eb2 0029     		cmp	r1, #0
 9469 5eb4 18BF     		it	ne
 9470 5eb6 1746     		movne	r7, r2
 9471 5eb8 C34B     		ldr	r3, .L2000+8
 9472 5eba C44A     		ldr	r2, .L2000+12
 9473 5ebc D8F80C00 		ldr	r0, [r8, #12]	@ float
 9474 5ec0 BAF1000F 		cmp	r10, #0
 9475 5ec4 0CBF     		ite	eq
 9476 5ec6 9A46     		moveq	r10, r3
 9477 5ec8 9246     		movne	r10, r2
 9478 5eca FFF7FEFF 		bl	__aeabi_f2d
 9479 5ece CDE90801 		strd	r0, [sp, #32]
 9480 5ed2 D8F80800 		ldr	r0, [r8, #8]	@ float
 9481 5ed6 FFF7FEFF 		bl	__aeabi_f2d
 9482 5eda CDE90601 		strd	r0, [sp, #24]
 9483 5ede D8F80400 		ldr	r0, [r8, #4]	@ float
 9484 5ee2 FFF7FEFF 		bl	__aeabi_f2d
 9485 5ee6 CDE90401 		strd	r0, [sp, #16]
 9486 5eea D8F80000 		ldr	r0, [r8]	@ float
 9487 5eee FFF7FEFF 		bl	__aeabi_f2d
 9488 5ef2 3B46     		mov	r3, r7
 9489 5ef4 CDE90201 		strd	r0, [sp, #8]
 9490 5ef8 CDF800A0 		str	r10, [sp]
 9491 5efc 4A46     		mov	r2, r9
 9492 5efe B449     		ldr	r1, .L2000+16
 9493 5f00 3046     		mov	r0, r6
 9494 5f02 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9495 5f06 0123     		movs	r3, #1
 9496 5f08 0D93     		str	r3, [sp, #52]
 9497 5f0a FAF7A4B8 		b	.L166
 9498              	.L1944:
 9499 5f0e 0021     		movs	r1, #0
 9500 5f10 FFF7FEFF 		bl	__aeabi_fcmpgt
 9501 5f14 0028     		cmp	r0, #0
 9502 5f16 40F0DE80 		bne	.L1955
 9503 5f1a 0123     		movs	r3, #1
 9504 5f1c 0D93     		str	r3, [sp, #52]
 9505              	.L496:
 9506 5f1e 5221     		movs	r1, #82
 9507 5f20 2846     		mov	r0, r5
 9508 5f22 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9509 5f26 0028     		cmp	r0, #0
 9510 5f28 3AF495A8 		beq	.L166
 9511              	.L985:
 9512 5f2c 4346     		mov	r3, r8
 9513 5f2e 4A46     		mov	r2, r9
 9514 5f30 A849     		ldr	r1, .L2000+20
 9515 5f32 3046     		mov	r0, r6
 9516 5f34 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9517 5f38 0223     		movs	r3, #2
 9518 5f3a 0D93     		str	r3, [sp, #52]
ARM GAS  /tmp/ccIESeqr.s 			page 168


 9519 5f3c FAF78BB8 		b	.L166
 9520              	.L659:
 9521 5f40 A549     		ldr	r1, .L2000+24
 9522 5f42 3046     		mov	r0, r6
 9523 5f44 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9524 5f48 03E5     		b	.L660
 9525              	.L657:
 9526 5f4a A448     		ldr	r0, .L2000+28
 9527 5f4c A449     		ldr	r1, .L2000+32
 9528 5f4e 002B     		cmp	r3, #0
 9529 5f50 0CBF     		ite	eq
 9530 5f52 0346     		moveq	r3, r0
 9531 5f54 0B46     		movne	r3, r1
 9532 5f56 D3E4     		b	.L658
 9533              	.L1029:
 9534 5f58 A24A     		ldr	r2, .L2000+36
 9535 5f5a BEE4     		b	.L656
 9536              	.L1712:
 9537 5f5c 0368     		ldr	r3, [r0]
 9538 5f5e 04F1A009 		add	r9, r4, #160
 9539 5f62 4A46     		mov	r2, r9
 9540 5f64 D4F8FC11 		ldr	r1, [r4, #508]
 9541 5f68 1B6B     		ldr	r3, [r3, #48]
 9542 5f6a 9847     		blx	r3
 9543 5f6c 4946     		mov	r1, r9
 9544 5f6e 04F18402 		add	r2, r4, #132
 9545 5f72 2046     		mov	r0, r4
 9546 5f74 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9547 5f78 FBF751BD 		b	.L852
 9548              	.L1816:
 9549 5f7c 4FF07E57 		mov	r7, #1065353216
 9550 5f80 FBF71BBB 		b	.L941
 9551              	.L405:
 9552 5f84 1FFA8BF2 		uxth	r2, fp
 9553 5f88 9749     		ldr	r1, .L2000+40
 9554 5f8a 3046     		mov	r0, r6
 9555 5f8c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9556 5f90 0223     		movs	r3, #2
 9557 5f92 0D93     		str	r3, [sp, #52]
 9558 5f94 FAF75FB8 		b	.L166
 9559              	.L1682:
 9560 5f98 5146     		mov	r1, r10
 9561 5f9a 3846     		mov	r0, r7
 9562 5f9c 5A46     		mov	r2, fp
 9563 5f9e FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 9564 5fa2 5146     		mov	r1, r10
 9565 5fa4 3846     		mov	r0, r7
 9566 5fa6 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 9567 5faa 54E4     		b	.L500
 9568              	.L1912:
 9569 5fac 2046     		mov	r0, r4
 9570 5fae FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 9571 5fb2 0028     		cmp	r0, #0
 9572 5fb4 3FF4ECAB 		beq	.L888
 9573 5fb8 CDF800A0 		str	r10, [sp]
 9574 5fbc 5346     		mov	r3, r10
 9575 5fbe 8B4A     		ldr	r2, .L2000+44
ARM GAS  /tmp/ccIESeqr.s 			page 169


 9576 5fc0 2946     		mov	r1, r5
 9577 5fc2 2046     		mov	r0, r4
 9578 5fc4 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9579 5fc8 0028     		cmp	r0, #0
 9580 5fca 7BF454A9 		bne	.L313
 9581 5fce FFF7DFBB 		b	.L888
 9582              	.L1842:
 9583 5fd2 1122     		movs	r2, #17
 9584 5fd4 AB68     		ldr	r3, [r5, #8]
 9585 5fd6 2046     		mov	r0, r4
 9586 5fd8 1A75     		strb	r2, [r3, #20]
 9587 5fda FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 9588 5fde 0028     		cmp	r0, #0
 9589 5fe0 3BF449A9 		beq	.L313
 9590 5fe4 0123     		movs	r3, #1
 9591 5fe6 0097     		str	r7, [sp]
 9592 5fe8 814A     		ldr	r2, .L2000+48
 9593 5fea 2946     		mov	r1, r5
 9594 5fec 2046     		mov	r0, r4
 9595 5fee FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9596 5ff2 0123     		movs	r3, #1
 9597 5ff4 0D93     		str	r3, [sp, #52]
 9598 5ff6 FAF72EB8 		b	.L166
 9599              	.L1854:
 9600 5ffa 0A46     		mov	r2, r1
 9601              	.L820:
 9602 5ffc 7D49     		ldr	r1, .L2000+52
 9603 5ffe 3046     		mov	r0, r6
 9604 6000 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9605 6004 0223     		movs	r3, #2
 9606 6006 0D93     		str	r3, [sp, #52]
 9607 6008 FAF725B8 		b	.L166
 9608              	.L407:
 9609 600c 3846     		mov	r0, r7
 9610 600e 4FF07E51 		mov	r1, #1065353216
 9611 6012 4FF00107 		mov	r7, #1
 9612 6016 FFF7FEFF 		bl	__aeabi_fcmpeq
 9613 601a 00B9     		cbnz	r0, .L409
 9614 601c 5746     		mov	r7, r10
 9615              	.L409:
 9616 601e 07F00101 		and	r1, r7, #1
 9617 6022 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 9618 6026 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 9619 602a 0123     		movs	r3, #1
 9620 602c 0D93     		str	r3, [sp, #52]
 9621 602e FAF712B8 		b	.L166
 9622              	.L1853:
 9623 6032 0D97     		str	r7, [sp, #52]
 9624 6034 FAF70FB8 		b	.L166
 9625              	.L1945:
 9626 6038 4246     		mov	r2, r8
 9627 603a 6F49     		ldr	r1, .L2000+56
 9628 603c 3046     		mov	r0, r6
 9629 603e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9630 6042 FBF7BDBF 		b	.L654
 9631              	.L1866:
 9632 6046 4621     		movs	r1, #70
ARM GAS  /tmp/ccIESeqr.s 			page 170


 9633 6048 2846     		mov	r0, r5
 9634 604a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9635 604e 0028     		cmp	r0, #0
 9636 6050 7CF471AC 		bne	.L970
 9637 6054 0021     		movs	r1, #0
 9638 6056 3846     		mov	r0, r7
 9639 6058 FFF7FEFF 		bl	__aeabi_fcmpeq
 9640 605c 38B9     		cbnz	r0, .L403
 9641              	.L988:
 9642 605e 4FF07E51 		mov	r1, #1065353216
 9643 6062 3846     		mov	r0, r7
 9644 6064 FFF7FEFF 		bl	__aeabi_fcmpeq
 9645 6068 0028     		cmp	r0, #0
 9646 606a 3FF4F2AD 		beq	.L1010
 9647              	.L403:
 9648 606e 2068     		ldr	r0, [r4]
 9649 6070 4FF0000A 		mov	r10, #0
 9650 6074 4FF4FA78 		mov	r8, #500
 9651 6078 0122     		movs	r2, #1
 9652 607a FCF76BBC 		b	.L899
 9653              	.L367:
 9654 607e 2946     		mov	r1, r5
 9655 6080 2046     		mov	r0, r4
 9656 6082 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 9657 6086 0028     		cmp	r0, #0
 9658 6088 3BF410A9 		beq	.L704
 9659 608c 3B46     		mov	r3, r7
 9660 608e 0122     		movs	r2, #1
 9661 6090 2946     		mov	r1, r5
 9662 6092 2046     		mov	r0, r4
 9663 6094 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9664 6098 0123     		movs	r3, #1
 9665 609a 0D93     		str	r3, [sp, #52]
 9666 609c F9F7DBBF 		b	.L166
 9667              	.L1938:
 9668 60a0 2946     		mov	r1, r5
 9669 60a2 2046     		mov	r0, r4
 9670 60a4 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 9671 60a8 0028     		cmp	r0, #0
 9672 60aa 3FF4C2A9 		beq	.L630
 9673 60ae D5F808A0 		ldr	r10, [r5, #8]
 9674 60b2 DAF80800 		ldr	r0, [r10, #8]
 9675 60b6 30B1     		cbz	r0, .L937
 9676 60b8 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9677 60bc 0023     		movs	r3, #0
 9678 60be CAF80830 		str	r3, [r10, #8]
 9679 60c2 D5F808A0 		ldr	r10, [r5, #8]
 9680              	.L937:
 9681 60c6 9AF81930 		ldrb	r3, [r10, #25]	@ zero_extendqisi2
 9682 60ca 43F00203 		orr	r3, r3, #2
 9683 60ce 8AF81930 		strb	r3, [r10, #25]
 9684 60d2 FFF7AEB9 		b	.L630
 9685              	.L1955:
 9686 60d6 4346     		mov	r3, r8
 9687 60d8 4A46     		mov	r2, r9
 9688 60da 3E49     		ldr	r1, .L2000+20
 9689 60dc 3046     		mov	r0, r6
ARM GAS  /tmp/ccIESeqr.s 			page 171


 9690 60de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9691 60e2 0223     		movs	r3, #2
 9692 60e4 0D93     		str	r3, [sp, #52]
 9693 60e6 1AE7     		b	.L496
 9694              	.L459:
 9695 60e8 DFF820B1 		ldr	fp, .L2000+76
 9696              	.L907:
 9697 60ec DBF80C00 		ldr	r0, [fp, #12]
 9698 60f0 C319     		adds	r3, r0, r7
 9699 60f2 93F98310 		ldrsb	r1, [r3, #131]
 9700 60f6 0137     		adds	r7, r7, #1
 9701 60f8 0029     		cmp	r1, #0
 9702 60fa 05DB     		blt	.L462
 9703 60fc 0122     		movs	r2, #1
 9704 60fe FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 9705 6102 0028     		cmp	r0, #0
 9706 6104 3EF4BFAC 		beq	.L463
 9707              	.L462:
 9708 6108 022F     		cmp	r7, #2
 9709 610a 3BF461AB 		beq	.L468
 9710 610e EDE7     		b	.L907
 9711              	.L1702:
 9712 6110 0096     		str	r6, [sp]
 9713 6112 4346     		mov	r3, r8
 9714 6114 4A46     		mov	r2, r9
 9715 6116 3946     		mov	r1, r7
 9716 6118 DAF80C00 		ldr	r0, [r10, #12]
 9717 611c FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 9718 6120 0123     		movs	r3, #1
 9719 6122 0D93     		str	r3, [sp, #52]
 9720 6124 F9F797BF 		b	.L166
 9721              	.L1951:
 9722 6128 2846     		mov	r0, r5
 9723 612a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9724 612e 0027     		movs	r7, #0
 9725 6130 0028     		cmp	r0, #0
 9726 6132 9CD0     		beq	.L403
 9727 6134 FCF7FFBB 		b	.L970
 9728              	.L1850:
 9729 6138 2068     		ldr	r0, [r4]
 9730 613a FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9731 613e 0128     		cmp	r0, #1
 9732 6140 7CF4BCA8 		bne	.L890
 9733 6144 FCF7B5B8 		b	.L347
 9734              	.L1953:
 9735 6148 636C     		ldr	r3, [r4, #68]
 9736 614a 1B68     		ldr	r3, [r3]
 9737 614c 9D42     		cmp	r5, r3
 9738 614e 04D0     		beq	.L362
 9739 6150 E36B     		ldr	r3, [r4, #60]
 9740 6152 1B68     		ldr	r3, [r3]
 9741 6154 9D42     		cmp	r5, r3
 9742 6156 7FF423AE 		bne	.L361
 9743              	.L362:
 9744 615a 2849     		ldr	r1, .L2000+60
 9745 615c 3046     		mov	r0, r6
 9746 615e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  /tmp/ccIESeqr.s 			page 172


 9747 6162 22E6     		b	.L893
 9748              	.L1935:
 9749 6164 0DF17009 		add	r9, sp, #112
 9750 6168 0DF5BC78 		add	r8, sp, #376
 9751 616c EFE4     		b	.L454
 9752              	.L1858:
 9753 616e 0121     		movs	r1, #1
 9754 6170 626C     		ldr	r2, [r4, #68]
 9755 6172 07F00103 		and	r3, r7, #1
 9756 6176 1268     		ldr	r2, [r2]
 9757 6178 0D91     		str	r1, [sp, #52]
 9758 617a 82F8B230 		strb	r3, [r2, #178]
 9759 617e F9F76ABF 		b	.L166
 9760              	.L1828:
 9761 6182 04F18402 		add	r2, r4, #132
 9762 6186 4946     		mov	r1, r9
 9763 6188 2046     		mov	r0, r4
 9764 618a FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 9765 618e FBF75ABC 		b	.L853
 9766              	.L1836:
 9767 6192 1B49     		ldr	r1, .L2000+64
 9768 6194 3046     		mov	r0, r6
 9769 6196 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9770 619a FBF702BF 		b	.L653
 9771              	.L1942:
 9772 619e 4246     		mov	r2, r8
 9773 61a0 1849     		ldr	r1, .L2000+68
 9774 61a2 3046     		mov	r0, r6
 9775 61a4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9776 61a8 0223     		movs	r3, #2
 9777 61aa 0D93     		str	r3, [sp, #52]
 9778 61ac F9F753BF 		b	.L166
 9779              	.L350:
 9780 61b0 0E9B     		ldr	r3, [sp, #56]
 9781 61b2 1549     		ldr	r1, .L2000+72
 9782 61b4 1868     		ldr	r0, [r3]
 9783 61b6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 9784 61ba FCF7BBB8 		b	.L343
 9785              	.L2001:
 9786 61be 00BF     		.align	2
 9787              	.L2000:
 9788 61c0 D4000000 		.word	.LC31
 9789 61c4 E0000000 		.word	.LC32
 9790 61c8 F4000000 		.word	.LC34
 9791 61cc EC000000 		.word	.LC33
 9792 61d0 E40E0000 		.word	.LC164
 9793 61d4 84060000 		.word	.LC95
 9794 61d8 C00A0000 		.word	.LC124
 9795 61dc 64000000 		.word	.LC21
 9796 61e0 68000000 		.word	.LC22
 9797 61e4 38000000 		.word	.LC18
 9798 61e8 00050000 		.word	.LC77
 9799 61ec D4010000 		.word	.LC49
 9800 61f0 7C020000 		.word	.LC58
 9801 61f4 A0100000 		.word	.LC176
 9802 61f8 140A0000 		.word	.LC121
 9803 61fc 84120000 		.word	.LC194
ARM GAS  /tmp/ccIESeqr.s 			page 173


 9804 6200 F8090000 		.word	.LC120
 9805 6204 D8030000 		.word	.LC68
 9806 6208 60020000 		.word	.LC56
 9807 620c 00000000 		.word	reprap
 9808              	.L348:
 9809 6210 2068     		ldr	r0, [r4]
 9810 6212 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9811 6216 861E     		subs	r6, r0, #2
 9812 6218 18BF     		it	ne
 9813 621a 0126     		movne	r6, #1
 9814 621c FCF758B8 		b	.L349
 9815              	.L1946:
 9816 6220 2846     		mov	r0, r5
 9817 6222 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9818 6226 0328     		cmp	r0, #3
 9819 6228 3FF679A9 		bhi	.L317
 9820 622c FFF7F0BB 		b	.L318
 9821              	.L1948:
 9822 6230 FFF7FEFF 		bl	_ZN4Heat16SetChamberHeaterEja
 9823 6234 3EE4     		b	.L491
 9824              	.L1947:
 9825 6236 3F49     		ldr	r1, .L2002
 9826 6238 3046     		mov	r0, r6
 9827 623a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9828 623e 0223     		movs	r3, #2
 9829 6240 0D93     		str	r3, [sp, #52]
 9830 6242 F9F708BF 		b	.L166
 9831              	.L1016:
 9832 6246 4FF0FF32 		mov	r2, #-1
 9833 624a 2AE4     		b	.L489
 9834              	.L1950:
 9835 624c 2846     		mov	r0, r5
 9836 624e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9837 6252 C0E4     		b	.L834
 9838              	.L1949:
 9839 6254 2846     		mov	r0, r5
 9840 6256 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9841 625a 8146     		mov	r9, r0
 9842 625c B2E4     		b	.L833
 9843              	.L1857:
 9844 625e 4146     		mov	r1, r8
 9845 6260 2068     		ldr	r0, [r4]
 9846 6262 FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 9847 6266 0746     		mov	r7, r0
 9848 6268 4146     		mov	r1, r8
 9849 626a 2068     		ldr	r0, [r4]
 9850 626c FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 9851 6270 314B     		ldr	r3, .L2002+4
 9852 6272 17F0010F 		tst	r7, #1
 9853 6276 3149     		ldr	r1, .L2002+8
 9854 6278 18BF     		it	ne
 9855 627a 1946     		movne	r1, r3
 9856 627c 4246     		mov	r2, r8
 9857 627e 0346     		mov	r3, r0
 9858 6280 0091     		str	r1, [sp]
 9859 6282 3046     		mov	r0, r6
 9860 6284 2E49     		ldr	r1, .L2002+12
ARM GAS  /tmp/ccIESeqr.s 			page 174


 9861 6286 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9862 628a 0123     		movs	r3, #1
 9863 628c 0D93     		str	r3, [sp, #52]
 9864 628e F9F7E2BE 		b	.L166
 9865              	.L1856:
 9866 6292 2846     		mov	r0, r5
 9867 6294 2768     		ldr	r7, [r4]
 9868 6296 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9869 629a 4146     		mov	r1, r8
 9870 629c 0246     		mov	r2, r0
 9871 629e 3846     		mov	r0, r7
 9872 62a0 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 9873 62a4 5321     		movs	r1, #83
 9874 62a6 2846     		mov	r0, r5
 9875 62a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9876 62ac 0028     		cmp	r0, #0
 9877 62ae 3AF4E2AF 		beq	.L313
 9878 62b2 FCF73FB9 		b	.L961
 9879              	.L1930:
 9880 62b6 0E9F     		ldr	r7, [sp, #56]
 9881 62b8 DFF890E0 		ldr	lr, .L2002+24
 9882 62bc 0D9B     		ldr	r3, [sp, #52]
 9883 62be 3A46     		mov	r2, r7
 9884 62c0 5421     		movs	r1, #84
 9885 62c2 2846     		mov	r0, r5
 9886 62c4 C7F800E0 		str	lr, [r7]	@ float
 9887 62c8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 9888 62cc FEF78CBC 		b	.L625
 9889              	.L1697:
 9890 62d0 1C49     		ldr	r1, .L2002+16
 9891 62d2 3846     		mov	r0, r7
 9892 62d4 FFF7FEFF 		bl	__aeabi_fcmpgt
 9893 62d8 0028     		cmp	r0, #0
 9894 62da 3FF4F2AC 		beq	.L611
 9895 62de 194F     		ldr	r7, .L2002+16
 9896 62e0 EFE4     		b	.L611
 9897              	.L1952:
 9898 62e2 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 9899 62e6 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 9900 62ea 13B1     		cbz	r3, .L1019
 9901 62ec 4FF07E51 		mov	r1, #1065353216
 9902 62f0 F6E4     		b	.L1749
 9903              	.L1019:
 9904 62f2 0021     		movs	r1, #0
 9905 62f4 F4E4     		b	.L1749
 9906              	.L1888:
 9907 62f6 5EAA     		add	r2, sp, #376
 9908 62f8 4946     		mov	r1, r9
 9909 62fa 2068     		ldr	r0, [r4]
 9910 62fc FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjPKf
 9911 6300 0123     		movs	r3, #1
 9912 6302 0D93     		str	r3, [sp, #52]
 9913 6304 F9F7A7BE 		b	.L166
 9914              	.L1954:
 9915 6308 0121     		movs	r1, #1
 9916 630a 2046     		mov	r0, r4
 9917 630c FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
ARM GAS  /tmp/ccIESeqr.s 			page 175


 9918 6310 0123     		movs	r3, #1
 9919 6312 0D93     		str	r3, [sp, #52]
 9920 6314 F9F79FBE 		b	.L166
 9921              	.L1941:
 9922 6318 4301     		lsls	r3, r0, #5
 9923 631a 03F5B263 		add	r3, r3, #1424
 9924 631e FBF7B6B8 		b	.L691
 9925              	.L1843:
 9926 6322 0949     		ldr	r1, .L2002+20
 9927 6324 3046     		mov	r0, r6
 9928 6326 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9929 632a 0223     		movs	r3, #2
 9930 632c 0D93     		str	r3, [sp, #52]
 9931 632e F9F792BE 		b	.L166
 9932              	.L2003:
 9933 6332 00BF     		.align	2
 9934              	.L2002:
 9935 6334 68060000 		.word	.LC94
 9936 6338 7C010000 		.word	.LC45
 9937 633c 88010000 		.word	.LC46
 9938 6340 78100000 		.word	.LC175
 9939 6344 00001645 		.word	1159069696
 9940 6348 88020000 		.word	.LC59
 9941 634c 00002041 		.word	1092616192
 9942              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBuffer
 9943              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 9944              		.align	1
 9945              		.p2align 2,,3
 9946              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 9947              		.syntax unified
 9948              		.thumb
 9949              		.thumb_func
 9950              		.fpu softvfp
 9951              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, %function
 9952              	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef:
 9953              		@ args = 0, pretend = 0, frame = 0
 9954              		@ frame_needed = 0, uses_anonymous_args = 0
 9955 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 9956 0002 0546     		mov	r5, r0
 9957 0004 0846     		mov	r0, r1
 9958 0006 0C46     		mov	r4, r1
 9959 0008 1646     		mov	r6, r2
 9960 000a FFF7FEFF 		bl	_ZNK11GCodeBuffer13CanQueueCodesEv
 9961 000e B0B9     		cbnz	r0, .L2030
 9962              	.L2005:
 9963 0010 94F84C30 		ldrb	r3, [r4, #76]	@ zero_extendqisi2
 9964 0014 4D2B     		cmp	r3, #77
 9965 0016 37D0     		beq	.L2009
 9966 0018 542B     		cmp	r3, #84
 9967 001a 40D0     		beq	.L2010
 9968 001c 472B     		cmp	r3, #71
 9969 001e 19D0     		beq	.L2031
 9970              	.L2008:
 9971 0020 04F14D02 		add	r2, r4, #77
 9972 0024 2149     		ldr	r1, .L2033
 9973 0026 3046     		mov	r0, r6
 9974 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  /tmp/ccIESeqr.s 			page 176


 9975 002c 3368     		ldr	r3, [r6]
 9976 002e 2146     		mov	r1, r4
 9977 0030 2846     		mov	r0, r5
 9978 0032 0222     		movs	r2, #2
 9979 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 9980 0038 0127     		movs	r7, #1
 9981              	.L2026:
 9982 003a 3846     		mov	r0, r7
 9983 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 9984              	.L2030:
 9985 003e 2046     		mov	r0, r4
 9986 0040 FFF7FEFF 		bl	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
 9987 0044 0028     		cmp	r0, #0
 9988 0046 E3D0     		beq	.L2005
 9989 0048 D5F8FC30 		ldr	r3, [r5, #252]
 9990 004c 6BB1     		cbz	r3, .L2032
 9991 004e 0027     		movs	r7, #0
 9992 0050 3846     		mov	r0, r7
 9993 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 9994              	.L2031:
 9995 0054 94F84B30 		ldrb	r3, [r4, #75]	@ zero_extendqisi2
 9996 0058 002B     		cmp	r3, #0
 9997 005a E1D0     		beq	.L2008
 9998 005c 3246     		mov	r2, r6
 9999 005e 2146     		mov	r1, r4
 10000 0060 2846     		mov	r0, r5
 10001 0062 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10002 0066 FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 10003              	.L2032:
 10004 006a 2146     		mov	r1, r4
 10005 006c D5F8D003 		ldr	r0, [r5, #976]
 10006 0070 FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 10007 0074 0746     		mov	r7, r0
 10008 0076 0028     		cmp	r0, #0
 10009 0078 CAD0     		beq	.L2005
 10010 007a 2146     		mov	r1, r4
 10011 007c 2846     		mov	r0, r5
 10012 007e 0C4B     		ldr	r3, .L2033+4
 10013 0080 0122     		movs	r2, #1
 10014 0082 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 10015 0086 D8E7     		b	.L2026
 10016              	.L2009:
 10017 0088 94F84B30 		ldrb	r3, [r4, #75]	@ zero_extendqisi2
 10018 008c 002B     		cmp	r3, #0
 10019 008e C7D0     		beq	.L2008
 10020 0090 3246     		mov	r2, r6
 10021 0092 2146     		mov	r1, r4
 10022 0094 2846     		mov	r0, r5
 10023 0096 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10024 009a FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 10025              	.L2010:
 10026 009e 3246     		mov	r2, r6
 10027 00a0 2146     		mov	r1, r4
 10028 00a2 2846     		mov	r0, r5
 10029 00a4 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10030 00a8 FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef
 10031              	.L2034:
ARM GAS  /tmp/ccIESeqr.s 			page 177


 10032              		.align	2
 10033              	.L2033:
 10034 00ac 00000000 		.word	.LC200
 10035 00b0 A0000000 		.word	.LC25
 10036              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferRK9Str
 10037              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 10038              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 10039              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 10040              	_ZL28cpu_irq_prev_interrupt_state:
 10041 0000 00       		.space	1
 10042              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 10043              		.align	2
 10044              		.type	_ZL32cpu_irq_critical_section_counter, %object
 10045              		.size	_ZL32cpu_irq_critical_section_counter, 4
 10046              	_ZL32cpu_irq_critical_section_counter:
 10047 0000 00000000 		.space	4
 10048              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 10049              		.align	2
 10050              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 10051              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 10052              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 10053 0000 00000000 		.space	4
 10054              		.section	.rodata._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10055              		.align	2
 10056              	.LC7:
 10057 0000 496E7375 		.ascii	"Insufficient axes homed for bed probing\000"
 10057      66666963 
 10057      69656E74 
 10057      20617865 
 10057      7320686F 
 10058              	.LC8:
 10059 0028 6265642E 		.ascii	"bed.g\000"
 10059      6700
 10060              		.section	.rodata._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10061              		.align	2
 10062              	.LC9:
 10063 0000 73746F70 		.ascii	"stop.g\000"
 10063      2E6700
 10064 0007 00       		.space	1
 10065              	.LC10:
 10066 0008 736C6565 		.ascii	"sleep.g\000"
 10066      702E6700 
 10067              	.LC11:
 10068 0010 6F6E00   		.ascii	"on\000"
 10069 0013 00       		.space	1
 10070              	.LC12:
 10071 0014 6F666600 		.ascii	"off\000"
 10072              	.LC13:
 10073 0018 62656400 		.ascii	"bed\000"
 10074              	.LC14:
 10075 001c 6368616D 		.ascii	"chamber\000"
 10075      62657200 
 10076              	.LC15:
 10077 0024 616C6C6F 		.ascii	"allowed\000"
 10077      77656400 
 10078              	.LC16:
 10079 002c 64656E69 		.ascii	"denied\000"
ARM GAS  /tmp/ccIESeqr.s 			page 178


 10079      656400
 10080 0033 00       		.space	1
 10081              	.LC17:
 10082 0034 50494400 		.ascii	"PID\000"
 10083              	.LC18:
 10084 0038 62616E67 		.ascii	"bang-bang\000"
 10084      2D62616E 
 10084      6700
 10085 0042 0000     		.space	2
 10086              	.LC19:
 10087 0044 63757374 		.ascii	"custom PID\000"
 10087      6F6D2050 
 10087      494400
 10088 004f 00       		.space	1
 10089              	.LC20:
 10090 0050 74656D70 		.ascii	"temperature control\000"
 10090      65726174 
 10090      75726520 
 10090      636F6E74 
 10090      726F6C00 
 10091              	.LC21:
 10092 0064 6E6F00   		.ascii	"no\000"
 10093 0067 00       		.space	1
 10094              	.LC22:
 10095 0068 50574D20 		.ascii	"PWM signal\000"
 10095      7369676E 
 10095      616C00
 10096 0073 00       		.space	1
 10097              	.LC23:
 10098 0074 50574D20 		.ascii	"PWM signal and temperature control\000"
 10098      7369676E 
 10098      616C2061 
 10098      6E642074 
 10098      656D7065 
 10099 0097 00       		.space	1
 10100              	.LC24:
 10101 0098 286F6E29 		.ascii	"(on)\000"
 10101      00
 10102 009d 000000   		.space	3
 10103              	.LC25:
 10104 00a0 00       		.ascii	"\000"
 10105 00a1 000000   		.space	3
 10106              	.LC26:
 10107 00a4 636F6E66 		.ascii	"config.g\000"
 10107      69672E67 
 10107      00
 10108 00ad 000000   		.space	3
 10109              	.LC27:
 10110 00b0 303A2F73 		.ascii	"0:/sys/\000"
 10110      79732F00 
 10111              	.LC28:
 10112 00b8 72657072 		.ascii	"reprap.htm\000"
 10112      61702E68 
 10112      746D00
 10113 00c3 00       		.space	1
 10114              	.LC29:
 10115 00c4 303A2F77 		.ascii	"0:/www/\000"
ARM GAS  /tmp/ccIESeqr.s 			page 179


 10115      77772F00 
 10116              	.LC30:
 10117 00cc 6E6F7420 		.ascii	"not \000"
 10117      00
 10118 00d1 000000   		.space	3
 10119              	.LC31:
 10120 00d4 666F7277 		.ascii	"forwards\000"
 10120      61726473 
 10120      00
 10121 00dd 000000   		.space	3
 10122              	.LC32:
 10123 00e0 696E2072 		.ascii	"in reverse\000"
 10123      65766572 
 10123      736500
 10124 00eb 00       		.space	1
 10125              	.LC33:
 10126 00ec 68696768 		.ascii	"high\000"
 10126      00
 10127 00f1 000000   		.space	3
 10128              	.LC34:
 10129 00f4 6C6F7700 		.ascii	"low\000"
 10130              	.LC35:
 10131 00f8 696E7665 		.ascii	"inverted\000"
 10131      72746564 
 10131      00
 10132 0101 000000   		.space	3
 10133              	.LC36:
 10134 0104 6E6F7420 		.ascii	"not inverted\000"
 10134      696E7665 
 10134      72746564 
 10134      00
 10135 0111 000000   		.space	3
 10136              	.LC37:
 10137 0114 6E6F6E65 		.ascii	"none\000"
 10137      00
 10138 0119 000000   		.space	3
 10139              	.LC38:
 10140 011c 68696768 		.ascii	"high end\000"
 10140      20656E64 
 10140      00
 10141 0125 000000   		.space	3
 10142              	.LC39:
 10143 0128 6C6F7720 		.ascii	"low end\000"
 10143      656E6400 
 10144              	.LC40:
 10145 0130 61637469 		.ascii	"active low switch\000"
 10145      7665206C 
 10145      6F772073 
 10145      77697463 
 10145      6800
 10146 0142 0000     		.space	2
 10147              	.LC41:
 10148 0144 61637469 		.ascii	"active high switch\000"
 10148      76652068 
 10148      69676820 
 10148      73776974 
 10148      636800
ARM GAS  /tmp/ccIESeqr.s 			page 180


 10149 0157 00       		.space	1
 10150              	.LC42:
 10151 0158 5A207072 		.ascii	"Z probe\000"
 10151      6F626500 
 10152              	.LC43:
 10153 0160 756E6B6E 		.ascii	"unknown type\000"
 10153      6F776E20 
 10153      74797065 
 10153      00
 10154 016d 000000   		.space	3
 10155              	.LC44:
 10156 0170 6D6F746F 		.ascii	"motor stall\000"
 10156      72207374 
 10156      616C6C00 
 10157              	.LC45:
 10158 017c 72657175 		.ascii	"requires\000"
 10158      69726573 
 10158      00
 10159 0185 000000   		.space	3
 10160              	.LC46:
 10161 0188 646F6573 		.ascii	"does not require\000"
 10161      206E6F74 
 10161      20726571 
 10161      75697265 
 10161      00
 10162 0199 000000   		.space	3
 10163              	.LC47:
 10164 019c 4D6F746F 		.ascii	"Motor current % of normal - \000"
 10164      72206375 
 10164      7272656E 
 10164      74202520 
 10164      6F66206E 
 10165 01b9 000000   		.space	3
 10166              	.LC48:
 10167 01bc 4D6F746F 		.ascii	"Motor current (mA) - \000"
 10167      72206375 
 10167      7272656E 
 10167      7420286D 
 10167      4129202D 
 10168 01d2 0000     		.space	2
 10169              	.LC49:
 10170 01d4 63616E63 		.ascii	"cancel.g\000"
 10170      656C2E67 
 10170      00
 10171 01dd 000000   		.space	3
 10172              	.LC50:
 10173 01e0 496E7661 		.ascii	"Invalid spindle index\000"
 10173      6C696420 
 10173      7370696E 
 10173      646C6520 
 10173      696E6465 
 10174 01f6 0000     		.space	2
 10175              	.LC51:
 10176 01f8 496E7661 		.ascii	"Invalid extruder number specified: %lu\000"
 10176      6C696420 
 10176      65787472 
 10176      75646572 
ARM GAS  /tmp/ccIESeqr.s 			page 181


 10176      206E756D 
 10177 021f 00       		.space	1
 10178              	.LC52:
 10179 0220 49646C65 		.ascii	"Idle timeouts cannot be negative\000"
 10179      2074696D 
 10179      656F7574 
 10179      73206361 
 10179      6E6E6F74 
 10180 0241 000000   		.space	3
 10181              	.LC53:
 10182 0244 303A2F67 		.ascii	"0:/gcodes/\000"
 10182      636F6465 
 10182      732F00
 10183 024f 00       		.space	1
 10184              	.LC54:
 10185 0250 25632573 		.ascii	"%c%s%c%c\000"
 10185      25632563 
 10185      00
 10186 0259 000000   		.space	3
 10187              	.LC55:
 10188 025c 25730A00 		.ascii	"%s\012\000"
 10189              	.LC56:
 10190 0260 4E4F4E45 		.ascii	"NONE\012\000"
 10190      0A00
 10191 0266 0000     		.space	2
 10192              	.LC57:
 10193 0268 46696C65 		.ascii	"Filename expected\000"
 10193      6E616D65 
 10193      20657870 
 10193      65637465 
 10193      6400
 10194 027a 0000     		.space	2
 10195              	.LC58:
 10196 027c 72657375 		.ascii	"resume.g\000"
 10196      6D652E67 
 10196      00
 10197 0285 000000   		.space	3
 10198              	.LC59:
 10199 0288 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 10199      6F742070 
 10199      72696E74 
 10199      2C206265 
 10199      63617573 
 10200 02b3 00       		.space	1
 10201              	.LC60:
 10202 02b4 5072696E 		.ascii	"Printing is already paused!!\000"
 10202      74696E67 
 10202      20697320 
 10202      616C7265 
 10202      61647920 
 10203 02d1 000000   		.space	3
 10204              	.LC61:
 10205 02d4 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 10205      6F742070 
 10205      61757365 
 10205      20707269 
 10205      6E742C20 
ARM GAS  /tmp/ccIESeqr.s 			page 182


 10206 0307 642100   		.ascii	"d!\000"
 10207 030a 0000     		.space	2
 10208              	.LC62:
 10209 030c 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 10209      72696E74 
 10209      696E6720 
 10209      62797465 
 10209      20256C75 
 10210 0325 000000   		.space	3
 10211              	.LC63:
 10212 0328 4E6F7420 		.ascii	"Not SD printing.\000"
 10212      53442070 
 10212      72696E74 
 10212      696E672E 
 10212      00
 10213 0339 000000   		.space	3
 10214              	.LC64:
 10215 033c 57726974 		.ascii	"Writing to file: %s\000"
 10215      696E6720 
 10215      746F2066 
 10215      696C653A 
 10215      20257300 
 10216              	.LC65:
 10217 0350 43616E27 		.ascii	"Can't open file %s for writing.\000"
 10217      74206F70 
 10217      656E2066 
 10217      696C6520 
 10217      25732066 
 10218              	.LC66:
 10219 0370 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
 10219      6520656E 
 10219      642D6F66 
 10219      2D66696C 
 10219      65206265 
 10220 0395 000000   		.space	3
 10221              	.LC67:
 10222 0398 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 10222      6C617469 
 10222      6F6E206D 
 10222      6F64653A 
 10222      2025732C 
 10223 03cb 653A2025 		.ascii	"e: %.1f sec\000"
 10223      2E316620 
 10223      73656300 
 10224 03d7 00       		.space	1
 10225              	.LC68:
 10226 03d8 43616E6E 		.ascii	"Cannot open file: %s\000"
 10226      6F74206F 
 10226      70656E20 
 10226      66696C65 
 10226      3A202573 
 10227 03ed 000000   		.space	3
 10228              	.LC69:
 10229 03f0 7B225344 		.ascii	"{\"SDinfo\":{\"slot\":%lu,\"present\":\000"
 10229      696E666F 
 10229      223A7B22 
 10229      736C6F74 
ARM GAS  /tmp/ccIESeqr.s 			page 183


 10229      223A256C 
 10230 0411 000000   		.space	3
 10231              	.LC70:
 10232 0414 312C2263 		.ascii	"1,\"capacity\":%llu,\"free\":%llu,\"speed\":%lu,\"c"
 10232      61706163 
 10232      69747922 
 10232      3A256C6C 
 10232      752C2266 
 10233 0440 6C73697A 		.ascii	"lsize\":%lu}}\000"
 10233      65223A25 
 10233      6C757D7D 
 10233      00
 10234 044d 000000   		.space	3
 10235              	.LC71:
 10236 0450 307D7D00 		.ascii	"0}}\000"
 10237              	.LC72:
 10238 0454 42616420 		.ascii	"Bad SD slot number: %lu\000"
 10238      53442073 
 10238      6C6F7420 
 10238      6E756D62 
 10238      65723A20 
 10239              	.LC73:
 10240 046c 4E6F2053 		.ascii	"No SD card mounted in slot %lu\000"
 10240      44206361 
 10240      7264206D 
 10240      6F756E74 
 10240      65642069 
 10241 048b 00       		.space	1
 10242              	.LC74:
 10243 048c 53442063 		.ascii	"SD card in slot %lu: capacity %.2fGb, free space %."
 10243      61726420 
 10243      696E2073 
 10243      6C6F7420 
 10243      256C753A 
 10244 04bf 32664762 		.ascii	"2fGb, speed %.2fMBytes/sec, cluster size \000"
 10244      2C207370 
 10244      65656420 
 10244      252E3266 
 10244      4D427974 
 10245 04e9 000000   		.space	3
 10246              	.LC75:
 10247 04ec 256C7520 		.ascii	"%lu bytes\000"
 10247      62797465 
 10247      7300
 10248 04f6 0000     		.space	2
 10249              	.LC76:
 10250 04f8 256C756B 		.ascii	"%lukb\000"
 10250      6200
 10251 04fe 0000     		.space	2
 10252              	.LC77:
 10253 0500 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 10253      63616C20 
 10253      70696E20 
 10253      25642069 
 10253      73206E6F 
 10254              	.LC78:
 10255 052c 53746570 		.ascii	"Steps/mm: \000"
ARM GAS  /tmp/ccIESeqr.s 			page 184


 10255      732F6D6D 
 10255      3A2000
 10256 0537 00       		.space	1
 10257              	.LC79:
 10258 0538 453A00   		.ascii	"E:\000"
 10259 053b 00       		.space	1
 10260              	.LC80:
 10261 053c 25633A20 		.ascii	"%c: %.3f, \000"
 10261      252E3366 
 10261      2C2000
 10262 0547 00       		.space	1
 10263              	.LC81:
 10264 0548 2563252E 		.ascii	"%c%.3f\000"
 10264      336600
 10265 054f 00       		.space	1
 10266              	.LC82:
 10267 0550 496E7661 		.ascii	"Invalid tool number\000"
 10267      6C696420 
 10267      746F6F6C 
 10267      206E756D 
 10267      62657200 
 10268              	.LC83:
 10269 0564 312E3231 		.ascii	"1.21.2beta1\000"
 10269      2E326265 
 10269      74613100 
 10270              	.LC84:
 10271 0570 52657052 		.ascii	"RepRapFirmware for RADDS\000"
 10271      61704669 
 10271      726D7761 
 10271      72652066 
 10271      6F722052 
 10272 0589 000000   		.space	3
 10273              	.LC85:
 10274 058c 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 10274      57415245 
 10274      5F4E414D 
 10274      453A2025 
 10274      73204649 
 10275 05bf 20257300 		.ascii	" %s\000"
 10276 05c3 00       		.space	1
 10277              	.LC86:
 10278 05c4 32303138 		.ascii	"2018-06-23b1\000"
 10278      2D30362D 
 10278      32336231 
 10278      00
 10279 05d1 000000   		.space	3
 10280              	.LC87:
 10281 05d4 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 10281      4D574152 
 10281      455F4441 
 10281      54453A20 
 10281      257300
 10282 05e7 00       		.space	1
 10283              	.LC88:
 10284 05e8 496E7661 		.ascii	"Invalid message type: %d\000"
 10284      6C696420 
 10284      6D657373 
ARM GAS  /tmp/ccIESeqr.s 			page 185


 10284      61676520 
 10284      74797065 
 10285 0601 000000   		.space	3
 10286              	.LC89:
 10287 0604 456E6473 		.ascii	"Endstops - \000"
 10287      746F7073 
 10287      202D2000 
 10288              	.LC90:
 10289 0610 5A207072 		.ascii	"Z probe: %s\000"
 10289      6F62653A 
 10289      20257300 
 10290              	.LC91:
 10291 061c 25633A20 		.ascii	"%c: %s, \000"
 10291      25732C20 
 10291      00
 10292 0625 000000   		.space	3
 10293              	.LC92:
 10294 0628 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 10294      2073616D 
 10294      706C6520 
 10294      74696D65 
 10294      20697320 
 10295 0649 000000   		.space	3
 10296              	.LC93:
 10297 064c 496E7661 		.ascii	"Invalid heater index '%d'\000"
 10297      6C696420 
 10297      68656174 
 10297      65722069 
 10297      6E646578 
 10298 0666 0000     		.space	2
 10299              	.LC94:
 10300 0668 496E7661 		.ascii	"Invalid heater number '%d'\000"
 10300      6C696420 
 10300      68656174 
 10300      6572206E 
 10300      756D6265 
 10301 0683 00       		.space	1
 10302              	.LC95:
 10303 0684 4E6F2025 		.ascii	"No %s heater has been configured for slot %d\000"
 10303      73206865 
 10303      61746572 
 10303      20686173 
 10303      20626565 
 10304 06b1 000000   		.space	3
 10305              	.LC96:
 10306 06b4 25632573 		.ascii	"%c%s heater %d (slot %d) is currently at %.1f\302\260"
 10306      20686561 
 10306      74657220 
 10306      25642028 
 10306      736C6F74 
 10307 06e3 4300     		.ascii	"C\000"
 10308 06e5 000000   		.space	3
 10309              	.LC97:
 10310 06e8 496E7661 		.ascii	"Invalid bed heater index '%u'\000"
 10310      6C696420 
 10310      62656420 
 10310      68656174 
ARM GAS  /tmp/ccIESeqr.s 			page 186


 10310      65722069 
 10311 0706 0000     		.space	2
 10312              	.LC98:
 10313 0708 496E7661 		.ascii	"Invalid heater index '%lu'\000"
 10313      6C696420 
 10313      68656174 
 10313      65722069 
 10313      6E646578 
 10314 0723 00       		.space	1
 10315              	.LC99:
 10316 0724 566F6C75 		.ascii	"Volumetric extrusion is disabled for this input sou"
 10316      6D657472 
 10316      69632065 
 10316      78747275 
 10316      73696F6E 
 10317 0757 72636500 		.ascii	"rce\000"
 10318 075b 00       		.space	1
 10319              	.LC100:
 10320 075c 46696C61 		.ascii	"Filament diameters for volumetric extrusion:\000"
 10320      6D656E74 
 10320      20646961 
 10320      6D657465 
 10320      72732066 
 10321 0789 000000   		.space	3
 10322              	.LC101:
 10323 078c 206E2F61 		.ascii	" n/a\000"
 10323      00
 10324 0791 000000   		.space	3
 10325              	.LC102:
 10326 0794 20252E30 		.ascii	" %.03f\000"
 10326      336600
 10327 079b 00       		.space	1
 10328              	.LC103:
 10329 079c 41636365 		.ascii	"Accelerations: \000"
 10329      6C657261 
 10329      74696F6E 
 10329      733A2000 
 10330              	.LC104:
 10331 07ac 25633A20 		.ascii	"%c: %.1f, \000"
 10331      252E3166 
 10331      2C2000
 10332 07b7 00       		.space	1
 10333              	.LC105:
 10334 07b8 2563252E 		.ascii	"%c%.1f\000"
 10334      316600
 10335 07bf 00       		.space	1
 10336              	.LC106:
 10337 07c0 4D617869 		.ascii	"Maximum feedrates: \000"
 10337      6D756D20 
 10337      66656564 
 10337      72617465 
 10337      733A2000 
 10338              	.LC107:
 10339 07d4 4D617869 		.ascii	"Maximum printing acceleration %.1f, maximum travel "
 10339      6D756D20 
 10339      7072696E 
 10339      74696E67 
ARM GAS  /tmp/ccIESeqr.s 			page 187


 10339      20616363 
 10340 0807 61636365 		.ascii	"acceleration %.1f\000"
 10340      6C657261 
 10340      74696F6E 
 10340      20252E31 
 10340      6600
 10341 0819 000000   		.space	3
 10342              	.LC108:
 10343 081c 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 10343      61637469 
 10343      6F6E2F75 
 10343      6E2D7265 
 10343      74726163 
 10344 084f 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 10344      73706565 
 10344      64202564 
 10344      2F25646D 
 10344      6D2F6D69 
 10345 0873 00       		.space	1
 10346              	.LC109:
 10347 0874 41786973 		.ascii	"Axis limits \000"
 10347      206C696D 
 10347      69747320 
 10347      00
 10348 0881 000000   		.space	3
 10349              	.LC110:
 10350 0884 25632025 		.ascii	"%c %c: %.1f min, %.1f max\000"
 10350      633A2025 
 10350      2E316620 
 10350      6D696E2C 
 10350      20252E31 
 10351 089e 0000     		.space	2
 10352              	.LC111:
 10353 08a0 496E7661 		.ascii	"Invalid speed factor\000"
 10353      6C696420 
 10353      73706565 
 10353      64206661 
 10353      63746F72 
 10354 08b5 000000   		.space	3
 10355              	.LC112:
 10356 08b8 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 10356      64206661 
 10356      63746F72 
 10356      206F7665 
 10356      72726964 
 10357 08d6 0000     		.space	2
 10358              	.LC113:
 10359 08d8 45787472 		.ascii	"Extrusion factor override for extruder %li: %.1f%%\000"
 10359      7573696F 
 10359      6E206661 
 10359      63746F72 
 10359      206F7665 
 10360 090b 00       		.space	1
 10361              	.LC114:
 10362 090c 496E7661 		.ascii	"Invalid servo index %d in M280 command\012\000"
 10362      6C696420 
 10362      73657276 
ARM GAS  /tmp/ccIESeqr.s 			page 188


 10362      6F20696E 
 10362      64657820 
 10363              	.LC115:
 10364 0934 496E7661 		.ascii	"Invalid message box mode\000"
 10364      6C696420 
 10364      6D657373 
 10364      61676520 
 10364      626F7820 
 10365 094d 000000   		.space	3
 10366              	.LC116:
 10367 0950 436F6C64 		.ascii	"Cold extrusion is %s, use M302 P[1/0] to allow/deny"
 10367      20657874 
 10367      72757369 
 10367      6F6E2069 
 10367      73202573 
 10368 0983 20697400 		.ascii	" it\000"
 10369 0987 00       		.space	1
 10370              	.LC117:
 10371 0988 42616420 		.ascii	"Bad heater number in M303 command\000"
 10371      68656174 
 10371      6572206E 
 10371      756D6265 
 10371      7220696E 
 10372 09aa 0000     		.space	2
 10373              	.LC118:
 10374 09ac 48656174 		.ascii	"Heater is not ready to perform PID auto-tuning\000"
 10374      65722069 
 10374      73206E6F 
 10374      74207265 
 10374      61647920 
 10375 09db 00       		.space	1
 10376              	.LC119:
 10377 09dc 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 10377      6C696420 
 10377      50574D20 
 10377      696E204D 
 10377      33303320 
 10378              	.LC120:
 10379 09f8 4572726F 		.ascii	"Error: bad model parameters\000"
 10379      723A2062 
 10379      6164206D 
 10379      6F64656C 
 10379      20706172 
 10380              	.LC121:
 10381 0a14 48656174 		.ascii	"Heater %u is disabled\000"
 10381      65722025 
 10381      75206973 
 10381      20646973 
 10381      61626C65 
 10382 0a2a 0000     		.space	2
 10383              	.LC122:
 10384 0a2c 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 10384      65722025 
 10384      75206D6F 
 10384      64656C3A 
 10384      20676169 
 10385 0a5f 64207469 		.ascii	"d time %.1f, max PWM %.2f, calibration voltage %.1f"
ARM GAS  /tmp/ccIESeqr.s 			page 189


 10385      6D652025 
 10385      2E31662C 
 10385      206D6178 
 10385      2050574D 
 10386 0a92 2C206D6F 		.ascii	", mode %s, inverted %s, frequency \000"
 10386      64652025 
 10386      732C2069 
 10386      6E766572 
 10386      74656420 
 10387 0ab5 000000   		.space	3
 10388              	.LC123:
 10389 0ab8 64656661 		.ascii	"default\000"
 10389      756C7400 
 10390              	.LC124:
 10391 0ac0 2575487A 		.ascii	"%uHz\000"
 10391      00
 10392 0ac5 000000   		.space	3
 10393              	.LC125:
 10394 0ac8 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 10394      70757465 
 10394      64205049 
 10394      44207061 
 10394      72616D65 
 10395 0af8 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 10395      2049252E 
 10395      33662C20 
 10395      44252E31 
 10395      6600
 10396 0b0a 0000     		.space	2
 10397              	.LC126:
 10398 0b0c 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 10398      70757465 
 10398      64205049 
 10398      44207061 
 10398      72616D65 
 10399 0b3c 2049252E 		.ascii	" I%.3f, D%.1f\000"
 10399      33662C20 
 10399      44252E31 
 10399      6600
 10400 0b4a 0000     		.space	2
 10401              	.LC127:
 10402 0b4c 20776974 		.ascii	" with interpolation\000"
 10402      6820696E 
 10402      74657270 
 10402      6F6C6174 
 10402      696F6E00 
 10403              	.LC128:
 10404 0b60 44726976 		.ascii	"Drive %c does not support %ux microstepping%s\000"
 10404      65202563 
 10404      20646F65 
 10404      73206E6F 
 10404      74207375 
 10405 0b8e 0000     		.space	2
 10406              	.LC129:
 10407 0b90 44726976 		.ascii	"Drive E%u does not support %ux microstepping%s\000"
 10407      65204525 
 10407      7520646F 
ARM GAS  /tmp/ccIESeqr.s 			page 190


 10407      6573206E 
 10407      6F742073 
 10408 0bbf 00       		.space	1
 10409              	.LC130:
 10410 0bc0 4D696372 		.ascii	"Microstepping - \000"
 10410      6F737465 
 10410      7070696E 
 10410      67202D20 
 10410      00
 10411 0bd1 000000   		.space	3
 10412              	.LC131:
 10413 0bd4 4500     		.ascii	"E\000"
 10414 0bd6 0000     		.space	2
 10415              	.LC132:
 10416 0bd8 25633A25 		.ascii	"%c:%u%s, \000"
 10416      7525732C 
 10416      2000
 10417 0be2 0000     		.space	2
 10418              	.LC133:
 10419 0be4 3A257525 		.ascii	":%u%s\000"
 10419      7300
 10420 0bea 0000     		.space	2
 10421              	.LC134:
 10422 0bec 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 10422      636F6D70 
 10422      656E7361 
 10422      74696F6E 
 10422      20746170 
 10423              	.LC135:
 10424 0c14 42656420 		.ascii	"Bed compensation is not tapered\000"
 10424      636F6D70 
 10424      656E7361 
 10424      74696F6E 
 10424      20697320 
 10425              	.LC136:
 10426 0c34 6465706C 		.ascii	"deployprobe.g\000"
 10426      6F797072 
 10426      6F62652E 
 10426      6700
 10427 0c42 0000     		.space	2
 10428              	.LC137:
 10429 0c44 72657472 		.ascii	"retractprobe.g\000"
 10429      61637470 
 10429      726F6265 
 10429      2E6700
 10430 0c53 00       		.space	1
 10431              	.LC138:
 10432 0c54 5072696E 		.ascii	"PrinterMode:%s\000"
 10432      7465724D 
 10432      6F64653A 
 10432      257300
 10433 0c63 00       		.space	1
 10434              	.LC139:
 10435 0c64 4C617365 		.ascii	"Laser mode selected\000"
 10435      72206D6F 
 10435      64652073 
 10435      656C6563 
ARM GAS  /tmp/ccIESeqr.s 			page 191


 10435      74656400 
 10436              	.LC140:
 10437 0c78 42616420 		.ascii	"Bad P parameter\000"
 10437      50207061 
 10437      72616D65 
 10437      74657200 
 10438              	.LC141:
 10439 0c88 434E4320 		.ascii	"CNC mode selected\000"
 10439      6D6F6465 
 10439      2073656C 
 10439      65637465 
 10439      6400
 10440 0c9a 0000     		.space	2
 10441              	.LC142:
 10442 0c9c 636F6E66 		.ascii	"config-override.g\000"
 10442      69672D6F 
 10442      76657272 
 10442      6964652E 
 10442      6700
 10443 0cae 0000     		.space	2
 10444              	.LC143:
 10445 0cb0 436F6E66 		.ascii	"Configuration file not found\000"
 10445      69677572 
 10445      6174696F 
 10445      6E206669 
 10445      6C65206E 
 10446 0ccd 000000   		.space	3
 10447              	.LC144:
 10448 0cd0 42616420 		.ascii	"Bad MAC address\000"
 10448      4D414320 
 10448      61646472 
 10448      65737300 
 10449              	.LC145:
 10450 0ce0 4D41433A 		.ascii	"MAC: %02x:%02x:%02x:%02x:%02x:%02x\000"
 10450      20253032 
 10450      783A2530 
 10450      32783A25 
 10450      3032783A 
 10451 0d03 00       		.space	1
 10452              	.LC146:
 10453 0d04 52657052 		.ascii	"RepRap name: %s\000"
 10453      6170206E 
 10453      616D653A 
 10453      20257300 
 10454              	.LC147:
 10455 0d14 42616420 		.ascii	"Bad IP address\000"
 10455      49502061 
 10455      64647265 
 10455      737300
 10456 0d23 00       		.space	1
 10457              	.LC148:
 10458 0d24 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 10458      6D61736B 
 10458      3A202564 
 10458      2E25642E 
 10458      25642E25 
 10459 0d3b 00       		.space	1
ARM GAS  /tmp/ccIESeqr.s 			page 192


 10460              	.LC149:
 10461 0d3c 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 10461      7761793A 
 10461      2025642E 
 10461      25642E25 
 10461      642E2564 
 10462 0d52 0000     		.space	2
 10463              	.LC150:
 10464 0d54 456D756C 		.ascii	"Emulating \000"
 10464      6174696E 
 10464      672000
 10465 0d5f 00       		.space	1
 10466              	.LC151:
 10467 0d60 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 10467      61702046 
 10467      69726D77 
 10467      61726520 
 10467      28692E65 
 10468 0d86 0000     		.space	2
 10469              	.LC152:
 10470 0d88 4D61726C 		.ascii	"Marlin\000"
 10470      696E00
 10471 0d8f 00       		.space	1
 10472              	.LC153:
 10473 0d90 54656163 		.ascii	"Teacup\000"
 10473      757000
 10474 0d97 00       		.space	1
 10475              	.LC154:
 10476 0d98 53707269 		.ascii	"Sprinter\000"
 10476      6E746572 
 10476      00
 10477 0da1 000000   		.space	3
 10478              	.LC155:
 10479 0da4 52657065 		.ascii	"Repetier\000"
 10479      74696572 
 10479      00
 10480 0dad 000000   		.space	3
 10481              	.LC156:
 10482 0db0 556E6B6E 		.ascii	"Unknown: (%u)\000"
 10482      6F776E3A 
 10482      20282575 
 10482      2900
 10483 0dbe 0000     		.space	2
 10484              	.LC157:
 10485 0dc0 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 10485      20636F6D 
 10485      70656E73 
 10485      6174696F 
 10485      6E73202D 
 10486 0df2 0000     		.space	2
 10487              	.LC158:
 10488 0df4 4D6F7665 		.ascii	"Movement outside the bed is %spermitted, movement b"
 10488      6D656E74 
 10488      206F7574 
 10488      73696465 
 10488      20746865 
 10489 0e27 65666F72 		.ascii	"efore homing is %spermitted\000"
ARM GAS  /tmp/ccIESeqr.s 			page 193


 10489      6520686F 
 10489      6D696E67 
 10489      20697320 
 10489      25737065 
 10490 0e43 00       		.space	1
 10491              	.LC159:
 10492 0e44 4D617869 		.ascii	"Maximum jerk rates: \000"
 10492      6D756D20 
 10492      6A65726B 
 10492      20726174 
 10492      65733A20 
 10493 0e59 000000   		.space	3
 10494              	.LC160:
 10495 0e5c 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 10495      696E6720 
 10495      6D697820 
 10495      72617469 
 10495      6F73202D 
 10496 0e8e 0000     		.space	2
 10497              	.LC161:
 10498 0e90 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 10498      20256420 
 10498      6D697820 
 10498      72617469 
 10498      6F733A00 
 10499              	.LC162:
 10500 0ea4 54686520 		.ascii	"The M568 command is no longer needed\000"
 10500      4D353638 
 10500      20636F6D 
 10500      6D616E64 
 10500      20697320 
 10501 0ec9 000000   		.space	3
 10502              	.LC163:
 10503 0ecc 62616420 		.ascii	"bad timing parameter\000"
 10503      74696D69 
 10503      6E672070 
 10503      6172616D 
 10503      65746572 
 10504 0ee1 000000   		.space	3
 10505              	.LC164:
 10506 0ee4 44726976 		.ascii	"Drive %u runs %s, active %s enable, step timing %.1"
 10506      65202575 
 10506      2072756E 
 10506      73202573 
 10506      2C206163 
 10507 0f17 663A252E 		.ascii	"f:%.1f:%.1f:%.1f us\000"
 10507      31663A25 
 10507      2E31663A 
 10507      252E3166 
 10507      20757300 
 10508 0f2b 00       		.space	1
 10509              	.LC165:
 10510 0f2c 48656174 		.ascii	"Heater %u allowed excursion %.1f\302\260C, fault tr"
 10510      65722025 
 10510      7520616C 
 10510      6C6F7765 
 10510      64206578 
ARM GAS  /tmp/ccIESeqr.s 			page 194


 10511 0f59 69676765 		.ascii	"igger time %.1f seconds\000"
 10511      72207469 
 10511      6D652025 
 10511      2E316620 
 10511      7365636F 
 10512 0f71 000000   		.space	3
 10513              	.LC166:
 10514 0f74 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
 10514      63616C20 
 10514      70696E20 
 10514      25642069 
 10514      7320616C 
 10515 0fa7 6F722075 		.ascii	"or use by M571\000"
 10515      73652062 
 10515      79204D35 
 10515      373100
 10516 0fb6 0000     		.space	2
 10517              	.LC167:
 10518 0fb8 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u, %"
 10518      7573696F 
 10518      6E20616E 
 10518      63696C6C 
 10518      61727920 
 10519 0feb 7300     		.ascii	"s\000"
 10520 0fed 000000   		.space	3
 10521              	.LC168:
 10522 0ff0 496E7661 		.ascii	"Invalid extruder number '%lu'\000"
 10522      6C696420 
 10522      65787472 
 10522      75646572 
 10522      206E756D 
 10523 100e 0000     		.space	2
 10524              	.LC169:
 10525 1010 45787472 		.ascii	"Extruder pressure advance\000"
 10525      75646572 
 10525      20707265 
 10525      73737572 
 10525      65206164 
 10526 102a 0000     		.space	2
 10527              	.LC170:
 10528 102c 25632025 		.ascii	"%c %.3f\000"
 10528      2E336600 
 10529              	.LC171:
 10530 1034 41766572 		.ascii	"Average heater %d PWM: %.3f\000"
 10530      61676520 
 10530      68656174 
 10530      65722025 
 10530      64205057 
 10531              	.LC172:
 10532 1050 456E6473 		.ascii	"Endstop configuration:\000"
 10532      746F7020 
 10532      636F6E66 
 10532      69677572 
 10532      6174696F 
 10533 1067 00       		.space	1
 10534              	.LC173:
 10535 1068 2025633A 		.ascii	" %c: %s\000"
ARM GAS  /tmp/ccIESeqr.s 			page 195


 10535      20257300 
 10536              	.LC174:
 10537 1070 2025732C 		.ascii	" %s,\000"
 10537      00
 10538 1075 000000   		.space	3
 10539              	.LC175:
 10540 1078 4368616E 		.ascii	"Channel %d: baud rate %lu, %s checksum\000"
 10540      6E656C20 
 10540      25643A20 
 10540      62617564 
 10540      20726174 
 10541 109f 00       		.space	1
 10542              	.LC176:
 10543 10a0 496E7661 		.ascii	"Invalid extruder drive '%u'\000"
 10543      6C696420 
 10543      65787472 
 10543      75646572 
 10543      20647269 
 10544              	.LC177:
 10545 10bc 41786973 		.ascii	"Axis scale factors\000"
 10545      20736361 
 10545      6C652066 
 10545      6163746F 
 10545      727300
 10546 10cf 00       		.space	1
 10547              	.LC178:
 10548 10d0 25632025 		.ascii	"%c %c: %.3f\000"
 10548      633A2025 
 10548      2E336600 
 10549              	.LC179:
 10550 10dc 44726976 		.ascii	"Drive %u nonlinear extrusion coefficients: A=%.3f, "
 10550      65202575 
 10550      206E6F6E 
 10550      6C696E65 
 10550      61722065 
 10551 110f 423D252E 		.ascii	"B=%.4f, limit=%.2f\000"
 10551      34662C20 
 10551      6C696D69 
 10551      743D252E 
 10551      326600
 10552 1122 0000     		.space	2
 10553              	.LC180:
 10554 1124 4D6F6465 		.ascii	"Mode %d is not valid\000"
 10554      20256420 
 10554      6973206E 
 10554      6F742076 
 10554      616C6964 
 10555 1139 000000   		.space	3
 10556              	.LC181:
 10557 113c 5363616E 		.ascii	"Scanner support not built-in\000"
 10557      6E657220 
 10557      73757070 
 10557      6F727420 
 10557      6E6F7420 
 10558 1159 000000   		.space	3
 10559              	.LC182:
 10560 115c 25633A25 		.ascii	"%c:%d, \000"
ARM GAS  /tmp/ccIESeqr.s 			page 196


 10560      642C2000 
 10561              	.LC183:
 10562 1164 3A256400 		.ascii	":%d\000"
 10563              	.LC184:
 10564 1168 2C206964 		.ascii	", idle factor %d%%\000"
 10564      6C652066 
 10564      6163746F 
 10564      72202564 
 10564      252500
 10565 117b 00       		.space	1
 10566              	.LC185:
 10567 117c 72657375 		.ascii	"resurrect.g\000"
 10567      72726563 
 10567      742E6700 
 10568              	.LC186:
 10569 1188 4E6F2072 		.ascii	"No resume file found\000"
 10569      6573756D 
 10569      65206669 
 10569      6C652066 
 10569      6F756E64 
 10570 119d 000000   		.space	3
 10571              	.LC187:
 10572 11a0 72657375 		.ascii	"resurrect-prologue.g\000"
 10572      72726563 
 10572      742D7072 
 10572      6F6C6F67 
 10572      75652E67 
 10573 11b5 000000   		.space	3
 10574              	.LC188:
 10575 11b8 52657375 		.ascii	"Resume prologue file '%s' not found\000"
 10575      6D652070 
 10575      726F6C6F 
 10575      67756520 
 10575      66696C65 
 10576              	.LC189:
 10577 11dc 43686563 		.ascii	"Checksum error on line %d\000"
 10577      6B73756D 
 10577      20657272 
 10577      6F72206F 
 10577      6E206C69 
 10578 11f6 0000     		.space	2
 10579              	.LC190:
 10580 11f8 45524153 		.ascii	"ERASE\000"
 10580      4500
 10581 11fe 0000     		.space	2
 10582              	.LC191:
 10583 1200 50617573 		.ascii	"Pause the print before attempting to cancel it\000"
 10583      65207468 
 10583      65207072 
 10583      696E7420 
 10583      6265666F 
 10584 122f 00       		.space	1
 10585              	.LC192:
 10586 1230 47436F64 		.ascii	"GCode files:\012\000"
 10586      65206669 
 10586      6C65733A 
 10586      0A00
ARM GAS  /tmp/ccIESeqr.s 			page 197


 10587 123e 0000     		.space	2
 10588              	.LC193:
 10589 1240 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 10589      6F742073 
 10589      65742066 
 10589      696C6520 
 10589      746F2070 
 10590 1273 20626569 		.ascii	" being printed\000"
 10590      6E672070 
 10590      72696E74 
 10590      656400
 10591 1282 0000     		.space	2
 10592              	.LC194:
 10593 1284 46696C65 		.ascii	"File opened\012File selected\000"
 10593      206F7065 
 10593      6E65640A 
 10593      46696C65 
 10593      2073656C 
 10594 129e 0000     		.space	2
 10595              	.LC195:
 10596 12a0 46696C65 		.ascii	"File %s selected for printing\000"
 10596      20257320 
 10596      73656C65 
 10596      63746564 
 10596      20666F72 
 10597 12be 0000     		.space	2
 10598              	.LC196:
 10599 12c0 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
 10599      20737465 
 10599      7070696E 
 10599      67206F66 
 10599      66736574 
 10600 12df 00       		.space	1
 10601              	.LC197:
 10602 12e0 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 10602      6D656E74 
 10602      20776964 
 10602      74683A20 
 10602      252E3266 
 10603              	.LC198:
 10604 1310 5072696E 		.ascii	"Print will be terminated if a heater fault is not r"
 10604      74207769 
 10604      6C6C2062 
 10604      65207465 
 10604      726D696E 
 10605 1343 65736574 		.ascii	"eset within %lu minutes\000"
 10605      20776974 
 10605      68696E20 
 10605      256C7520 
 10605      6D696E75 
 10606 135b 00       		.space	1
 10607              	.LC199:
 10608 135c 556E6B6E 		.ascii	"Unknown kinematics type %d\000"
 10608      6F776E20 
 10608      6B696E65 
 10608      6D617469 
 10608      63732074 
ARM GAS  /tmp/ccIESeqr.s 			page 198


 10609              		.section	.rodata._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10610              		.align	2
 10611              	.LC1:
 10612 0000 4E6F2074 		.ascii	"No tool is selected\000"
 10612      6F6F6C20 
 10612      69732073 
 10612      656C6563 
 10612      74656400 
 10613              	.LC2:
 10614 0014 546F6F6C 		.ascii	"Tool %d is selected\000"
 10614      20256420 
 10614      69732073 
 10614      656C6563 
 10614      74656400 
 10615              		.section	.rodata._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef.str1.4,"aMS",%pr
 10616              		.align	2
 10617              	.LC3:
 10618 0000 20636F6D 		.ascii	" command is not supported\000"
 10618      6D616E64 
 10618      20697320 
 10618      6E6F7420 
 10618      73757070 
 10619 001a 0000     		.space	2
 10620              	.LC4:
 10621 001c 20636F6D 		.ascii	" command is not supported in machine mode %s\000"
 10621      6D616E64 
 10621      20697320 
 10621      6E6F7420 
 10621      73757070 
 10622 0049 000000   		.space	3
 10623              	.LC5:
 10624 004c 3A206261 		.ascii	": bad or missing parameter\000"
 10624      64206F72 
 10624      206D6973 
 10624      73696E67 
 10624      20706172 
 10625 0067 00       		.space	1
 10626              	.LC6:
 10627 0068 3A2000   		.ascii	": \000"
 10628              		.section	.rodata._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10629              		.align	2
 10630              	.LC200:
 10631 0000 42616420 		.ascii	"Bad command: %s\000"
 10631      636F6D6D 
 10631      616E643A 
 10631      20257300 
 10632              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
