ARM GAS  /tmp/ccM7BG9e.s 			page 1


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
  14              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  23              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0320     		movs	r0, #3
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  30              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47, %function
  38              	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  42 0004 91F84B30 		ldrb	r3, [r1, #75]	@ zero_extendqisi2
  43 0008 0C46     		mov	r4, r1
  44 000a 0546     		mov	r5, r0
  45 000c 9046     		mov	r8, r2
  46 000e EBB1     		cbz	r3, .L4
  47 0010 0F6C     		ldr	r7, [r1, #64]
  48 0012 0B6B     		ldr	r3, [r1, #48]
  49 0014 1F44     		add	r7, r7, r3
  50              	.L5:
  51 0016 2146     		mov	r1, r4
  52 0018 2846     		mov	r0, r5
  53 001a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
  54 001e 0646     		mov	r6, r0
  55 0020 88B1     		cbz	r0, .L9
  56 0022 2A48     		ldr	r0, .L31
  57 0024 036B     		ldr	r3, [r0, #48]
ARM GAS  /tmp/ccM7BG9e.s 			page 2


  58 0026 1BB1     		cbz	r3, .L10
  59 0028 D3F89C30 		ldr	r3, [r3, #156]
  60 002c BB42     		cmp	r3, r7
  61 002e 3FD0     		beq	.L26
  62              	.L10:
  63 0030 A368     		ldr	r3, [r4, #8]
  64 0032 DF82     		strh	r7, [r3, #22]	@ movhi
  65 0034 95F85835 		ldrb	r3, [r5, #1368]	@ zero_extendqisi2
  66 0038 2BB3     		cbz	r3, .L27
  67 003a 0020     		movs	r0, #0
  68              	.L12:
  69 003c A368     		ldr	r3, [r4, #8]
  70 003e 5875     		strb	r0, [r3, #21]
  71 0040 A368     		ldr	r3, [r4, #8]
  72 0042 0622     		movs	r2, #6
  73 0044 1A75     		strb	r2, [r3, #20]
  74              	.L9:
  75 0046 3046     		mov	r0, r6
  76 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  77              	.L4:
  78 004c 5221     		movs	r1, #82
  79 004e 2046     		mov	r0, r4
  80 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  81 0054 F0B9     		cbnz	r0, .L28
  82              	.L6:
  83 0056 1D4B     		ldr	r3, .L31
  84 0058 1B6B     		ldr	r3, [r3, #48]	@ unaligned
  85 005a 23B3     		cbz	r3, .L29
  86 005c D3F89C20 		ldr	r2, [r3, #156]
  87 0060 1B49     		ldr	r1, .L31+4
  88 0062 4046     		mov	r0, r8
  89 0064 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
  90              	.L11:
  91 0068 2146     		mov	r1, r4
  92 006a 2846     		mov	r0, r5
  93 006c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
  94 0070 0126     		movs	r6, #1
  95 0072 2846     		mov	r0, r5
  96 0074 D8F80030 		ldr	r3, [r8]
  97 0078 2146     		mov	r1, r4
  98 007a 0122     		movs	r2, #1
  99 007c FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 100 0080 3046     		mov	r0, r6
 101 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 102              	.L27:
 103 0086 5021     		movs	r1, #80
 104 0088 2046     		mov	r0, r4
 105 008a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 106 008e C0B9     		cbnz	r0, .L30
 107 0090 0720     		movs	r0, #7
 108 0092 D3E7     		b	.L12
 109              	.L28:
 110 0094 2046     		mov	r0, r4
 111 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 112 009a 0128     		cmp	r0, #1
 113 009c DBD1     		bne	.L6
 114 009e D5F89032 		ldr	r3, [r5, #656]
ARM GAS  /tmp/ccM7BG9e.s 			page 3


 115 00a2 9F6B     		ldr	r7, [r3, #56]
 116 00a4 B7E7     		b	.L5
 117              	.L29:
 118 00a6 0B49     		ldr	r1, .L31+8
 119 00a8 4046     		mov	r0, r8
 120 00aa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 121 00ae DBE7     		b	.L11
 122              	.L26:
 123 00b0 95F85825 		ldrb	r2, [r5, #1368]	@ zero_extendqisi2
 124 00b4 0032     		adds	r2, r2, #0
 125 00b6 3946     		mov	r1, r7
 126 00b8 18BF     		it	ne
 127 00ba 0122     		movne	r2, #1
 128 00bc FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 129 00c0 D2E7     		b	.L11
 130              	.L30:
 131 00c2 2046     		mov	r0, r4
 132 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 133 00c8 C0B2     		uxtb	r0, r0
 134 00ca B7E7     		b	.L12
 135              	.L32:
 136              		.align	2
 137              	.L31:
 138 00cc 00000000 		.word	reprap
 139 00d0 14000000 		.word	.LC2
 140 00d4 00000000 		.word	.LC1
 141              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47, .-_ZN6GCodes11HandleTcodeER11GCo
 142              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, %function
 151              	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154              		@ link register save eliminated.
 155 0000 8B68     		ldr	r3, [r1, #8]
 156 0002 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 157 0004 9B06     		lsls	r3, r3, #26
 158 0006 01D4     		bmi	.L34
 159 0008 FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47
 160              	.L34:
 161 000c 0120     		movs	r0, #1
 162 000e 7047     		bx	lr
 163              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBuffer
 164              		.section	.text._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccM7BG9e.s 			page 4


 172              		.type	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef, %function
 173              	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef:
 174              		@ args = 0, pretend = 0, frame = 232
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 177 0004 1446     		mov	r4, r2
 178 0006 BAB0     		sub	sp, sp, #232
 179 0008 0746     		mov	r7, r0
 180 000a 0D46     		mov	r5, r1
 181 000c 1E46     		mov	r6, r3
 182 000e 062A     		cmp	r2, #6
 183 0010 0ED8     		bhi	.L36
 184 0012 DFE802F0 		tbb	[pc, r2]
 185              	.L38:
 186 0016 23       		.byte	(.L43-.L38)/2
 187 0017 0D       		.byte	(.L36-.L38)/2
 188 0018 27       		.byte	(.L39-.L38)/2
 189 0019 0D       		.byte	(.L36-.L38)/2
 190 001a 04       		.byte	(.L40-.L38)/2
 191 001b 3C       		.byte	(.L41-.L38)/2
 192 001c 4A       		.byte	(.L42-.L38)/2
 193 001d 00       		.p2align 1
 194              	.L40:
 195 001e 3146     		mov	r1, r6
 196 0020 2846     		mov	r0, r5
 197 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 198 0026 2649     		ldr	r1, .L47
 199 0028 3046     		mov	r0, r6
 200 002a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 201 002e 0324     		movs	r4, #3
 202              	.L36:
 203 0030 AB68     		ldr	r3, [r5, #8]
 204 0032 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 205 0034 1BB1     		cbz	r3, .L46
 206 0036 0120     		movs	r0, #1
 207 0038 3AB0     		add	sp, sp, #232
 208              		@ sp needed
 209 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 210              	.L46:
 211 003e 2B71     		strb	r3, [r5, #4]
 212 0040 2946     		mov	r1, r5
 213 0042 3846     		mov	r0, r7
 214 0044 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 215 0048 3846     		mov	r0, r7
 216 004a 3368     		ldr	r3, [r6]
 217 004c 2246     		mov	r2, r4
 218 004e 2946     		mov	r1, r5
 219 0050 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 220 0054 0120     		movs	r0, #1
 221 0056 3AB0     		add	sp, sp, #232
 222              		@ sp needed
 223 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 224              	.L43:
 225 005c 0020     		movs	r0, #0
 226 005e 3AB0     		add	sp, sp, #232
 227              		@ sp needed
 228 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccM7BG9e.s 			page 5


 229              	.L39:
 230 0064 0DF1E808 		add	r8, sp, #232
 231 0068 0023     		movs	r3, #0
 232 006a 08F8E03D 		strb	r3, [r8, #-224]!
 233 006e 6946     		mov	r1, sp
 234 0070 DD23     		movs	r3, #221
 235 0072 2846     		mov	r0, r5
 236 0074 CDE90083 		strd	r8, r3, [sp]
 237 0078 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 238 007c 1149     		ldr	r1, .L47+4
 239 007e 3046     		mov	r0, r6
 240 0080 FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 241 0084 4146     		mov	r1, r8
 242 0086 3046     		mov	r0, r6
 243 0088 FFF7FEFF 		bl	_ZNK9StringRef7PrependEPKc
 244 008c D0E7     		b	.L36
 245              	.L41:
 246 008e 3146     		mov	r1, r6
 247 0090 2846     		mov	r0, r5
 248 0092 FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 249 0096 3846     		mov	r0, r7
 250 0098 FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 251 009c 0A49     		ldr	r1, .L47+8
 252 009e 0246     		mov	r2, r0
 253 00a0 3046     		mov	r0, r6
 254 00a2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 255 00a6 0324     		movs	r4, #3
 256 00a8 C2E7     		b	.L36
 257              	.L42:
 258 00aa 3146     		mov	r1, r6
 259 00ac 2846     		mov	r0, r5
 260 00ae FFF7FEFF 		bl	_ZNK11GCodeBuffer12PrintCommandERK9StringRef
 261 00b2 0649     		ldr	r1, .L47+12
 262 00b4 3046     		mov	r0, r6
 263 00b6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 264 00ba 0224     		movs	r4, #2
 265 00bc B8E7     		b	.L36
 266              	.L48:
 267 00be 00BF     		.align	2
 268              	.L47:
 269 00c0 00000000 		.word	.LC3
 270 00c4 68000000 		.word	.LC6
 271 00c8 1C000000 		.word	.LC4
 272 00cc 4C000000 		.word	.LC5
 273              		.size	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef, .-_ZN6GCodes12HandleResult
 274              		.section	.text._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 275              		.align	1
 276              		.p2align 2,,3
 277              		.global	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, %function
 283              	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccM7BG9e.s 			page 6


 286 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 287 0004 90F85835 		ldrb	r3, [r0, #1368]	@ zero_extendqisi2
 288 0008 0E6C     		ldr	r6, [r1, #64]
 289 000a 82B0     		sub	sp, sp, #8
 290 000c 0446     		mov	r4, r0
 291 000e 0D46     		mov	r5, r1
 292 0010 1746     		mov	r7, r2
 293 0012 C3B1     		cbz	r3, .L50
 294 0014 042E     		cmp	r6, #4
 295 0016 16DD     		ble	.L50
 296 0018 0A2E     		cmp	r6, #10
 297 001a 7AD0     		beq	.L51
 298 001c 0B2E     		cmp	r6, #11
 299 001e 00F08781 		beq	.L52
 300 0022 142E     		cmp	r6, #20
 301 0024 00F07F81 		beq	.L53
 302 0028 152E     		cmp	r6, #21
 303 002a 00F06D81 		beq	.L54
 304 002e A6F13503 		sub	r3, r6, #53
 305 0032 062B     		cmp	r3, #6
 306 0034 07D9     		bls	.L50
 307 0036 A6F15A03 		sub	r3, r6, #90
 308 003a 022B     		cmp	r3, #2
 309 003c 03D9     		bls	.L50
 310 003e 0120     		movs	r0, #1
 311 0040 02B0     		add	sp, sp, #8
 312              		@ sp needed
 313 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 314              	.L50:
 315 0046 602E     		cmp	r6, #96
 316 0048 00F26B81 		bhi	.L101
 317 004c DFE816F0 		tbh	[pc, r6, lsl #1]
 318              	.L58:
 319 0050 1701     		.2byte	(.L57-.L58)/2
 320 0052 1701     		.2byte	(.L57-.L58)/2
 321 0054 DD00     		.2byte	(.L59-.L58)/2
 322 0056 DD00     		.2byte	(.L59-.L58)/2
 323 0058 D700     		.2byte	(.L60-.L58)/2
 324 005a 6901     		.2byte	(.L101-.L58)/2
 325 005c 6901     		.2byte	(.L101-.L58)/2
 326 005e 6901     		.2byte	(.L101-.L58)/2
 327 0060 6901     		.2byte	(.L101-.L58)/2
 328 0062 6901     		.2byte	(.L101-.L58)/2
 329 0064 6100     		.2byte	(.L51-.L58)/2
 330 0066 7001     		.2byte	(.L52-.L58)/2
 331 0068 6901     		.2byte	(.L101-.L58)/2
 332 006a 6901     		.2byte	(.L101-.L58)/2
 333 006c 6901     		.2byte	(.L101-.L58)/2
 334 006e 6901     		.2byte	(.L101-.L58)/2
 335 0070 6901     		.2byte	(.L101-.L58)/2
 336 0072 6901     		.2byte	(.L101-.L58)/2
 337 0074 6901     		.2byte	(.L101-.L58)/2
 338 0076 6901     		.2byte	(.L101-.L58)/2
 339 0078 6B01     		.2byte	(.L53-.L58)/2
 340 007a 5C01     		.2byte	(.L54-.L58)/2
 341 007c 6901     		.2byte	(.L101-.L58)/2
 342 007e 6901     		.2byte	(.L101-.L58)/2
ARM GAS  /tmp/ccM7BG9e.s 			page 7


 343 0080 6901     		.2byte	(.L101-.L58)/2
 344 0082 6901     		.2byte	(.L101-.L58)/2
 345 0084 6901     		.2byte	(.L101-.L58)/2
 346 0086 6901     		.2byte	(.L101-.L58)/2
 347 0088 D000     		.2byte	(.L61-.L58)/2
 348 008a B300     		.2byte	(.L62-.L58)/2
 349 008c 9600     		.2byte	(.L63-.L58)/2
 350 008e 8F00     		.2byte	(.L64-.L58)/2
 351 0090 8400     		.2byte	(.L65-.L58)/2
 352 0092 6901     		.2byte	(.L101-.L58)/2
 353 0094 6901     		.2byte	(.L101-.L58)/2
 354 0096 6901     		.2byte	(.L101-.L58)/2
 355 0098 6901     		.2byte	(.L101-.L58)/2
 356 009a 6901     		.2byte	(.L101-.L58)/2
 357 009c 6901     		.2byte	(.L101-.L58)/2
 358 009e 6901     		.2byte	(.L101-.L58)/2
 359 00a0 6901     		.2byte	(.L101-.L58)/2
 360 00a2 6901     		.2byte	(.L101-.L58)/2
 361 00a4 6901     		.2byte	(.L101-.L58)/2
 362 00a6 6901     		.2byte	(.L101-.L58)/2
 363 00a8 6901     		.2byte	(.L101-.L58)/2
 364 00aa 6901     		.2byte	(.L101-.L58)/2
 365 00ac 6901     		.2byte	(.L101-.L58)/2
 366 00ae 6901     		.2byte	(.L101-.L58)/2
 367 00b0 6901     		.2byte	(.L101-.L58)/2
 368 00b2 6901     		.2byte	(.L101-.L58)/2
 369 00b4 6901     		.2byte	(.L101-.L58)/2
 370 00b6 6901     		.2byte	(.L101-.L58)/2
 371 00b8 6901     		.2byte	(.L101-.L58)/2
 372 00ba 7D00     		.2byte	(.L66-.L58)/2
 373 00bc 3C01     		.2byte	(.L67-.L58)/2
 374 00be 3C01     		.2byte	(.L67-.L58)/2
 375 00c0 3C01     		.2byte	(.L67-.L58)/2
 376 00c2 3C01     		.2byte	(.L67-.L58)/2
 377 00c4 3C01     		.2byte	(.L67-.L58)/2
 378 00c6 3C01     		.2byte	(.L67-.L58)/2
 379 00c8 2E01     		.2byte	(.L68-.L58)/2
 380 00ca 6901     		.2byte	(.L101-.L58)/2
 381 00cc 6901     		.2byte	(.L101-.L58)/2
 382 00ce 6901     		.2byte	(.L101-.L58)/2
 383 00d0 6901     		.2byte	(.L101-.L58)/2
 384 00d2 6901     		.2byte	(.L101-.L58)/2
 385 00d4 6901     		.2byte	(.L101-.L58)/2
 386 00d6 6901     		.2byte	(.L101-.L58)/2
 387 00d8 6901     		.2byte	(.L101-.L58)/2
 388 00da 6901     		.2byte	(.L101-.L58)/2
 389 00dc 6901     		.2byte	(.L101-.L58)/2
 390 00de 6901     		.2byte	(.L101-.L58)/2
 391 00e0 6901     		.2byte	(.L101-.L58)/2
 392 00e2 6901     		.2byte	(.L101-.L58)/2
 393 00e4 6901     		.2byte	(.L101-.L58)/2
 394 00e6 6901     		.2byte	(.L101-.L58)/2
 395 00e8 6901     		.2byte	(.L101-.L58)/2
 396 00ea 6901     		.2byte	(.L101-.L58)/2
 397 00ec 6901     		.2byte	(.L101-.L58)/2
 398 00ee 6901     		.2byte	(.L101-.L58)/2
 399 00f0 6901     		.2byte	(.L101-.L58)/2
ARM GAS  /tmp/ccM7BG9e.s 			page 8


 400 00f2 6901     		.2byte	(.L101-.L58)/2
 401 00f4 6901     		.2byte	(.L101-.L58)/2
 402 00f6 6901     		.2byte	(.L101-.L58)/2
 403 00f8 6901     		.2byte	(.L101-.L58)/2
 404 00fa 6901     		.2byte	(.L101-.L58)/2
 405 00fc 6901     		.2byte	(.L101-.L58)/2
 406 00fe 6901     		.2byte	(.L101-.L58)/2
 407 0100 6901     		.2byte	(.L101-.L58)/2
 408 0102 6901     		.2byte	(.L101-.L58)/2
 409 0104 3501     		.2byte	(.L69-.L58)/2
 410 0106 FC00     		.2byte	(.L70-.L58)/2
 411 0108 0A01     		.2byte	(.L71-.L58)/2
 412 010a 6901     		.2byte	(.L101-.L58)/2
 413 010c 6901     		.2byte	(.L101-.L58)/2
 414 010e 0301     		.2byte	(.L72-.L58)/2
 415 0110 1001     		.2byte	(.L73-.L58)/2
 416              		.p2align 1
 417              	.L51:
 418 0112 4C21     		movs	r1, #76
 419 0114 2846     		mov	r0, r5
 420 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 421 011a 0028     		cmp	r0, #0
 422 011c 00F00F81 		beq	.L78
 423 0120 2846     		mov	r0, r5
 424 0122 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 425 0126 0228     		cmp	r0, #2
 426 0128 00F06881 		beq	.L79
 427 012c 1428     		cmp	r0, #20
 428 012e 00F06D81 		beq	.L80
 429 0132 0128     		cmp	r0, #1
 430 0134 00F02881 		beq	.L155
 431 0138 0622     		movs	r2, #6
 432              	.L56:
 433 013a 3B46     		mov	r3, r7
 434 013c 2946     		mov	r1, r5
 435 013e 2046     		mov	r0, r4
 436 0140 02B0     		add	sp, sp, #8
 437              		@ sp needed
 438 0142 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 439 0146 FFF7FEBF 		b	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 440              	.L66:
 441 014a AA68     		ldr	r2, [r5, #8]
 442 014c 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 443 014e 43F08003 		orr	r3, r3, #128
 444 0152 1376     		strb	r3, [r2, #24]
 445 0154 0122     		movs	r2, #1
 446 0156 F0E7     		b	.L56
 447              	.L65:
 448 0158 2946     		mov	r1, r5
 449 015a 2046     		mov	r0, r4
 450 015c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 451 0160 0028     		cmp	r0, #0
 452 0162 40F01881 		bne	.L163
 453              	.L75:
 454 0166 0020     		movs	r0, #0
 455 0168 02B0     		add	sp, sp, #8
 456              		@ sp needed
ARM GAS  /tmp/ccM7BG9e.s 			page 9


 457 016a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 458              	.L64:
 459 016e 3A46     		mov	r2, r7
 460 0170 2946     		mov	r1, r5
 461 0172 2046     		mov	r0, r4
 462 0174 FFF7FEFF 		bl	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
 463 0178 0246     		mov	r2, r0
 464 017a DEE7     		b	.L56
 465              	.L63:
 466 017c 2946     		mov	r1, r5
 467 017e 2046     		mov	r0, r4
 468 0180 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 469 0184 0028     		cmp	r0, #0
 470 0186 EED0     		beq	.L75
 471 0188 A44B     		ldr	r3, .L168
 472 018a A54A     		ldr	r2, .L168+4
 473 018c 9B68     		ldr	r3, [r3, #8]
 474 018e D3F8580A 		ldr	r0, [r3, #2648]
 475 0192 0368     		ldr	r3, [r0]
 476 0194 DB6A     		ldr	r3, [r3, #44]
 477 0196 9342     		cmp	r3, r2
 478 0198 40F03A81 		bne	.L164
 479 019c 0320     		movs	r0, #3
 480              	.L94:
 481 019e D4F87434 		ldr	r3, [r4, #1140]
 482 01a2 30EA0303 		bics	r3, r0, r3
 483 01a6 00F00B81 		beq	.L95
 484 01aa 9E49     		ldr	r1, .L168+8
 485 01ac 3846     		mov	r0, r7
 486 01ae FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 487 01b2 0222     		movs	r2, #2
 488 01b4 C1E7     		b	.L56
 489              	.L62:
 490 01b6 2946     		mov	r1, r5
 491 01b8 2046     		mov	r0, r4
 492 01ba FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 493 01be 0028     		cmp	r0, #0
 494 01c0 D1D0     		beq	.L75
 495 01c2 5321     		movs	r1, #83
 496 01c4 2846     		mov	r0, r5
 497 01c6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 498 01ca 0028     		cmp	r0, #0
 499 01cc 00F0F180 		beq	.L91
 500 01d0 2846     		mov	r0, r5
 501 01d2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 502 01d6 0028     		cmp	r0, #0
 503 01d8 00F0EB80 		beq	.L91
 504 01dc 0128     		cmp	r0, #1
 505 01de 40F01981 		bne	.L165
 506 01e2 3A46     		mov	r2, r7
 507 01e4 2946     		mov	r1, r5
 508 01e6 2046     		mov	r0, r4
 509 01e8 FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 510 01ec 0246     		mov	r2, r0
 511 01ee A4E7     		b	.L56
 512              	.L61:
 513 01f0 3A46     		mov	r2, r7
ARM GAS  /tmp/ccM7BG9e.s 			page 10


 514 01f2 2946     		mov	r1, r5
 515 01f4 2046     		mov	r0, r4
 516 01f6 FFF7FEFF 		bl	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 517 01fa 0246     		mov	r2, r0
 518 01fc 9DE7     		b	.L56
 519              	.L60:
 520 01fe 2946     		mov	r1, r5
 521 0200 2046     		mov	r0, r4
 522 0202 FFF7FEFF 		bl	_ZN6GCodes7DoDwellER11GCodeBuffer
 523 0206 0246     		mov	r2, r0
 524 0208 97E7     		b	.L56
 525              	.L59:
 526 020a D4F85031 		ldr	r3, [r4, #336]
 527 020e 002B     		cmp	r3, #0
 528 0210 A9D1     		bne	.L75
 529 0212 2946     		mov	r1, r5
 530 0214 2046     		mov	r0, r4
 531 0216 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 532 021a 0028     		cmp	r0, #0
 533 021c A3D0     		beq	.L75
 534 021e A6F10202 		sub	r2, r6, #2
 535 0222 B2FA82F2 		clz	r2, r2
 536 0226 5209     		lsrs	r2, r2, #5
 537 0228 2946     		mov	r1, r5
 538 022a 2046     		mov	r0, r4
 539 022c FFF7FEFF 		bl	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 540 0230 0646     		mov	r6, r0
 541 0232 0028     		cmp	r0, #0
 542 0234 38D0     		beq	.L160
 543              	.L161:
 544 0236 2946     		mov	r1, r5
 545 0238 2046     		mov	r0, r4
 546 023a FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 547 023e AB68     		ldr	r3, [r5, #8]
 548 0240 0122     		movs	r2, #1
 549 0242 1E61     		str	r6, [r3, #16]
 550 0244 1A75     		strb	r2, [r3, #20]
 551 0246 78E7     		b	.L56
 552              	.L70:
 553 0248 AA68     		ldr	r2, [r5, #8]
 554 024a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 555 024c 43F00203 		orr	r3, r3, #2
 556 0250 1376     		strb	r3, [r2, #24]
 557 0252 0122     		movs	r2, #1
 558 0254 71E7     		b	.L56
 559              	.L72:
 560 0256 3A46     		mov	r2, r7
 561 0258 2946     		mov	r1, r5
 562 025a 2046     		mov	r0, r4
 563 025c FFF7FEFF 		bl	_ZN6GCodes13SetTorqueModeER11GCodeBufferRK9StringRef
 564 0260 0246     		mov	r2, r0
 565 0262 6AE7     		b	.L56
 566              	.L71:
 567 0264 2946     		mov	r1, r5
 568 0266 2046     		mov	r0, r4
 569 0268 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsER11GCodeBuffer
 570 026c 0246     		mov	r2, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 11


 571 026e 64E7     		b	.L56
 572              	.L73:
 573 0270 3A46     		mov	r2, r7
 574 0272 2946     		mov	r1, r5
 575 0274 2046     		mov	r0, r4
 576 0276 FFF7FEFF 		bl	_ZN6GCodes14MarkEncoderRefER11GCodeBufferRK9StringRef
 577 027a 0246     		mov	r2, r0
 578 027c 5DE7     		b	.L56
 579              	.L57:
 580 027e D4F85031 		ldr	r3, [r4, #336]
 581 0282 002B     		cmp	r3, #0
 582 0284 7FF46FAF 		bne	.L75
 583 0288 2946     		mov	r1, r5
 584 028a 2046     		mov	r0, r4
 585 028c FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 586 0290 0028     		cmp	r0, #0
 587 0292 3FF468AF 		beq	.L75
 588 0296 06F00102 		and	r2, r6, #1
 589 029a 2946     		mov	r1, r5
 590 029c 2046     		mov	r0, r4
 591 029e FFF7FEFF 		bl	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 592 02a2 0646     		mov	r6, r0
 593 02a4 0028     		cmp	r0, #0
 594 02a6 C6D1     		bne	.L161
 595              	.L160:
 596 02a8 0122     		movs	r2, #1
 597 02aa 46E7     		b	.L56
 598              	.L68:
 599 02ac 3A46     		mov	r2, r7
 600 02ae 2946     		mov	r1, r5
 601 02b0 2046     		mov	r0, r4
 602 02b2 FFF7FEFF 		bl	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 603 02b6 0246     		mov	r2, r0
 604 02b8 3FE7     		b	.L56
 605              	.L69:
 606 02ba AB68     		ldr	r3, [r5, #8]
 607 02bc 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 608 02be 6FF34102 		bfc	r2, #1, #1
 609 02c2 1A76     		strb	r2, [r3, #24]
 610 02c4 0122     		movs	r2, #1
 611 02c6 38E7     		b	.L56
 612              	.L67:
 613 02c8 2946     		mov	r1, r5
 614 02ca 2046     		mov	r0, r4
 615 02cc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 616 02d0 0028     		cmp	r0, #0
 617 02d2 3FF448AF 		beq	.L75
 618 02d6 3B2E     		cmp	r6, #59
 619 02d8 A6F13603 		sub	r3, r6, #54
 620 02dc 1AD0     		beq	.L166
 621              	.L96:
 622 02de C4F8FC32 		str	r3, [r4, #764]
 623 02e2 AB68     		ldr	r3, [r5, #8]
 624 02e4 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 625 02e6 6FF3C712 		bfc	r2, #7, #1
 626 02ea 1A76     		strb	r2, [r3, #24]
 627 02ec AB68     		ldr	r3, [r5, #8]
ARM GAS  /tmp/ccM7BG9e.s 			page 12


 628 02ee 5A7E     		ldrb	r2, [r3, #25]	@ zero_extendqisi2
 629 02f0 6FF30002 		bfc	r2, #0, #1
 630 02f4 5A76     		strb	r2, [r3, #25]
 631 02f6 04F1DC01 		add	r1, r4, #220
 632 02fa 04F1B402 		add	r2, r4, #180
 633 02fe 2046     		mov	r0, r4
 634 0300 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 635 0304 0122     		movs	r2, #1
 636 0306 18E7     		b	.L56
 637              	.L54:
 638 0308 4FF07E53 		mov	r3, #1065353216
 639 030c C4F8F432 		str	r3, [r4, #756]	@ float
 640 0310 0122     		movs	r2, #1
 641 0312 12E7     		b	.L56
 642              	.L166:
 643 0314 95F9EF20 		ldrsb	r2, [r5, #239]
 644 0318 002A     		cmp	r2, #0
 645 031a E0DB     		blt	.L96
 646 031c 1344     		add	r3, r3, r2
 647 031e 082B     		cmp	r3, #8
 648 0320 DDD9     		bls	.L96
 649              	.L101:
 650 0322 0422     		movs	r2, #4
 651 0324 09E7     		b	.L56
 652              	.L53:
 653 0326 404B     		ldr	r3, .L168+12
 654 0328 C4F8F432 		str	r3, [r4, #756]	@ float
 655 032c 0122     		movs	r2, #1
 656 032e 04E7     		b	.L56
 657              	.L52:
 658 0330 0022     		movs	r2, #0
 659 0332 2946     		mov	r1, r5
 660 0334 2046     		mov	r0, r4
 661 0336 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 662 033a 0246     		mov	r2, r0
 663 033c FDE6     		b	.L56
 664              	.L78:
 665 033e 5021     		movs	r1, #80
 666 0340 2846     		mov	r0, r5
 667 0342 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 668 0346 0028     		cmp	r0, #0
 669 0348 41D0     		beq	.L82
 670              	.L159:
 671 034a D4F89C32 		ldr	r3, [r4, #668]
 672 034e BBB1     		cbz	r3, .L83
 673 0350 4FF00108 		mov	r8, #1
 674              	.L84:
 675 0354 04F25946 		addw	r6, r4, #1113
 676              	.L89:
 677 0358 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 678 035a 2846     		mov	r0, r5
 679 035c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 680 0360 A6F58B62 		sub	r2, r6, #1112
 681 0364 D4F89C32 		ldr	r3, [r4, #668]
 682 0368 121B     		subs	r2, r2, r4
 683 036a 40EA0808 		orr	r8, r0, r8
 684 036e 9342     		cmp	r3, r2
ARM GAS  /tmp/ccM7BG9e.s 			page 13


 685 0370 06F10106 		add	r6, r6, #1
 686 0374 5FFA88F8 		uxtb	r8, r8
 687 0378 EED8     		bhi	.L89
 688              	.L88:
 689 037a B8F1000F 		cmp	r8, #0
 690 037e 36D0     		beq	.L167
 691              	.L83:
 692 0380 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 693 0384 002B     		cmp	r3, #0
 694 0386 8FD1     		bne	.L160
 695              	.L155:
 696 0388 3A46     		mov	r2, r7
 697 038a 2946     		mov	r1, r5
 698 038c 2046     		mov	r0, r4
 699 038e FFF7FEFF 		bl	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 700 0392 0246     		mov	r2, r0
 701 0394 D1E6     		b	.L56
 702              	.L163:
 703 0396 2946     		mov	r1, r5
 704 0398 2046     		mov	r0, r4
 705 039a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 706 039e 0023     		movs	r3, #0
 707 03a0 0093     		str	r3, [sp]
 708 03a2 224A     		ldr	r2, .L168+16
 709 03a4 0123     		movs	r3, #1
 710 03a6 2946     		mov	r1, r5
 711 03a8 2046     		mov	r0, r4
 712 03aa FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 713 03ae 0122     		movs	r2, #1
 714 03b0 C3E6     		b	.L56
 715              	.L91:
 716 03b2 3A46     		mov	r2, r7
 717 03b4 2946     		mov	r1, r5
 718 03b6 2046     		mov	r0, r4
 719 03b8 FFF7FEFF 		bl	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 720 03bc 0246     		mov	r2, r0
 721 03be BCE6     		b	.L56
 722              	.L95:
 723 03c0 3A46     		mov	r2, r7
 724 03c2 2946     		mov	r1, r5
 725 03c4 2046     		mov	r0, r4
 726 03c6 FFF7FEFF 		bl	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 727 03ca 0246     		mov	r2, r0
 728 03cc B5E6     		b	.L56
 729              	.L82:
 730 03ce 5221     		movs	r1, #82
 731 03d0 2846     		mov	r0, r5
 732 03d2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 733 03d6 0028     		cmp	r0, #0
 734 03d8 B7D1     		bne	.L159
 735 03da 5321     		movs	r1, #83
 736 03dc 2846     		mov	r0, r5
 737 03de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 738 03e2 D4F89C32 		ldr	r3, [r4, #668]
 739 03e6 8046     		mov	r8, r0
 740 03e8 002B     		cmp	r3, #0
 741 03ea B3D1     		bne	.L84
ARM GAS  /tmp/ccM7BG9e.s 			page 14


 742 03ec C5E7     		b	.L88
 743              	.L167:
 744 03ee 0122     		movs	r2, #1
 745 03f0 2946     		mov	r1, r5
 746 03f2 2046     		mov	r0, r4
 747 03f4 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 748 03f8 0246     		mov	r2, r0
 749 03fa 9EE6     		b	.L56
 750              	.L79:
 751 03fc 0023     		movs	r3, #0
 752              	.L162:
 753 03fe 3A46     		mov	r2, r7
 754 0400 2946     		mov	r1, r5
 755 0402 2046     		mov	r0, r4
 756 0404 FFF7FEFF 		bl	_ZN6GCodes26GetSetWorkplaceCoordinatesER11GCodeBufferRK9StringRefb
 757 0408 0246     		mov	r2, r0
 758 040a 96E6     		b	.L56
 759              	.L80:
 760 040c 0123     		movs	r3, #1
 761 040e F6E7     		b	.L162
 762              	.L164:
 763 0410 9847     		blx	r3
 764 0412 C4E6     		b	.L94
 765              	.L165:
 766 0414 2046     		mov	r0, r4
 767 0416 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 768 041a 45E7     		b	.L160
 769              	.L169:
 770              		.align	2
 771              	.L168:
 772 041c 00000000 		.word	reprap
 773 0420 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 774 0424 00000000 		.word	.LC7
 775 0428 3333CB41 		.word	1103835955
 776 042c 28000000 		.word	.LC8
 777              		.size	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleGcodeER11GCodeBuffer
 778              		.global	__aeabi_f2d
 779              		.global	__aeabi_ui2d
 780              		.global	__aeabi_ddiv
 781              		.global	__aeabi_ul2d
 782              		.section	.text._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, %function
 791              	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef:
 792              		@ args = 0, pretend = 0, frame = 584
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 795 0004 2DED028B 		vpush.64	{d8}
 796 0008 90F85835 		ldrb	r3, [r0, #1368]	@ zero_extendqisi2
 797 000c 0E6C     		ldr	r6, [r1, #64]
 798 000e ADF51F7D 		sub	sp, sp, #636
ARM GAS  /tmp/ccM7BG9e.s 			page 15


 799 0012 0446     		mov	r4, r0
 800 0014 0D46     		mov	r5, r1
 801 0016 9046     		mov	r8, r2
 802 0018 33B3     		cbz	r3, .L171
 803 001a A6F11403 		sub	r3, r6, #20
 804 001e 112B     		cmp	r3, #17
 805 0020 22D9     		bls	.L171
 806 0022 012E     		cmp	r6, #1
 807 0024 00F2F887 		bhi	.L1793
 808              	.L172:
 809 0028 0E4B     		ldr	r3, .L1937
 810 002a DB69     		ldr	r3, [r3, #28]
 811 002c 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 812 002e 4BB1     		cbz	r3, .L328
 813 0030 236C     		ldr	r3, [r4, #64]
 814 0032 1B68     		ldr	r3, [r3]
 815 0034 AB42     		cmp	r3, r5
 816 0036 05D0     		beq	.L328
 817 0038 2046     		mov	r0, r4
 818 003a FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 819 003e 0028     		cmp	r0, #0
 820 0040 05F06F83 		beq	.L1794
 821              	.L328:
 822 0044 2946     		mov	r1, r5
 823 0046 2046     		mov	r0, r4
 824 0048 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 825 004c 0028     		cmp	r0, #0
 826 004e 44F02884 		bne	.L329
 827              	.L742:
 828 0052 4FF0000A 		mov	r10, #0
 829              	.L1123:
 830 0056 5046     		mov	r0, r10
 831 0058 0DF51F7D 		add	sp, sp, #636
 832              		@ sp needed
 833 005c BDEC028B 		vldm	sp!, {d8}
 834 0060 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 835              	.L1938:
 836              		.align	2
 837              	.L1937:
 838 0064 00000000 		.word	reprap
 839              	.L171:
 840 0068 40F2E733 		movw	r3, #999
 841 006c 9E42     		cmp	r6, r3
 842 006e 03F2D184 		bhi	.L990
 843 0072 01A2     		adr	r2, .L187
 844 0074 52F826F0 		ldr	pc, [r2, r6, lsl #2]
 845              		.p2align 2
 846              	.L187:
 847 0078 29000000 		.word	.L172+1
 848 007c 29000000 		.word	.L172+1
 849 0080 153A0000 		.word	.L990+1
 850 0084 D3140000 		.word	.L188+1
 851 0088 93140000 		.word	.L189+1
 852 008c CD130000 		.word	.L190+1
 853 0090 153A0000 		.word	.L990+1
 854 0094 153A0000 		.word	.L990+1
 855 0098 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 16


 856 009c 153A0000 		.word	.L990+1
 857 00a0 153A0000 		.word	.L990+1
 858 00a4 153A0000 		.word	.L990+1
 859 00a8 153A0000 		.word	.L990+1
 860 00ac 153A0000 		.word	.L990+1
 861 00b0 153A0000 		.word	.L990+1
 862 00b4 153A0000 		.word	.L990+1
 863 00b8 153A0000 		.word	.L990+1
 864 00bc 153A0000 		.word	.L990+1
 865 00c0 35140000 		.word	.L191+1
 866 00c4 153A0000 		.word	.L990+1
 867 00c8 6F120000 		.word	.L192+1
 868 00cc 9D130000 		.word	.L193+1
 869 00d0 6F130000 		.word	.L194+1
 870 00d4 09120000 		.word	.L195+1
 871 00d8 A7110000 		.word	.L196+1
 872 00dc 85110000 		.word	.L197+1
 873 00e0 73110000 		.word	.L198+1
 874 00e4 2F120000 		.word	.L199+1
 875 00e8 33110000 		.word	.L200+1
 876 00ec 5F210000 		.word	.L201+1
 877 00f0 2D210000 		.word	.L202+1
 878 00f4 153A0000 		.word	.L990+1
 879 00f8 09120000 		.word	.L195+1
 880 00fc 153A0000 		.word	.L990+1
 881 0100 153A0000 		.word	.L990+1
 882 0104 153A0000 		.word	.L990+1
 883 0108 C7200000 		.word	.L203+1
 884 010c 65200000 		.word	.L204+1
 885 0110 0D370000 		.word	.L205+1
 886 0114 AB360000 		.word	.L206+1
 887 0118 153A0000 		.word	.L990+1
 888 011c 153A0000 		.word	.L990+1
 889 0120 33370000 		.word	.L207+1
 890 0124 153A0000 		.word	.L990+1
 891 0128 153A0000 		.word	.L990+1
 892 012c 153A0000 		.word	.L990+1
 893 0130 153A0000 		.word	.L990+1
 894 0134 153A0000 		.word	.L990+1
 895 0138 153A0000 		.word	.L990+1
 896 013c 153A0000 		.word	.L990+1
 897 0140 153A0000 		.word	.L990+1
 898 0144 153A0000 		.word	.L990+1
 899 0148 153A0000 		.word	.L990+1
 900 014c 153A0000 		.word	.L990+1
 901 0150 153A0000 		.word	.L990+1
 902 0154 153A0000 		.word	.L990+1
 903 0158 153A0000 		.word	.L990+1
 904 015c 153A0000 		.word	.L990+1
 905 0160 153A0000 		.word	.L990+1
 906 0164 153A0000 		.word	.L990+1
 907 0168 153A0000 		.word	.L990+1
 908 016c 153A0000 		.word	.L990+1
 909 0170 153A0000 		.word	.L990+1
 910 0174 153A0000 		.word	.L990+1
 911 0178 153A0000 		.word	.L990+1
 912 017c 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 17


 913 0180 153A0000 		.word	.L990+1
 914 0184 153A0000 		.word	.L990+1
 915 0188 153A0000 		.word	.L990+1
 916 018c 153A0000 		.word	.L990+1
 917 0190 153A0000 		.word	.L990+1
 918 0194 153A0000 		.word	.L990+1
 919 0198 153A0000 		.word	.L990+1
 920 019c 153A0000 		.word	.L990+1
 921 01a0 153A0000 		.word	.L990+1
 922 01a4 153A0000 		.word	.L990+1
 923 01a8 153A0000 		.word	.L990+1
 924 01ac 153A0000 		.word	.L990+1
 925 01b0 153A0000 		.word	.L990+1
 926 01b4 153A0000 		.word	.L990+1
 927 01b8 B9340000 		.word	.L208+1
 928 01bc 77360000 		.word	.L209+1
 929 01c0 053B0000 		.word	.L173+1
 930 01c4 6B100000 		.word	.L174+1
 931 01c8 35140000 		.word	.L191+1
 932 01cc 09380000 		.word	.L210+1
 933 01d0 153A0000 		.word	.L990+1
 934 01d4 153A0000 		.word	.L990+1
 935 01d8 153A0000 		.word	.L990+1
 936 01dc 153A0000 		.word	.L990+1
 937 01e0 153A0000 		.word	.L990+1
 938 01e4 153A0000 		.word	.L990+1
 939 01e8 E9350000 		.word	.L211+1
 940 01ec 153A0000 		.word	.L990+1
 941 01f0 153A0000 		.word	.L990+1
 942 01f4 153A0000 		.word	.L990+1
 943 01f8 153A0000 		.word	.L990+1
 944 01fc 153A0000 		.word	.L990+1
 945 0200 DF240000 		.word	.L212+1
 946 0204 D1240000 		.word	.L213+1
 947 0208 153A0000 		.word	.L990+1
 948 020c 6B2E0000 		.word	.L214+1
 949 0210 09380000 		.word	.L210+1
 950 0214 81220000 		.word	.L215+1
 951 0218 AD100000 		.word	.L216+1
 952 021c F73A0000 		.word	.L175+1
 953 0220 F11D0000 		.word	.L217+1
 954 0224 1B1D0000 		.word	.L218+1
 955 0228 911E0000 		.word	.L219+1
 956 022c 93100000 		.word	.L176+1
 957 0230 09380000 		.word	.L210+1
 958 0234 273A0000 		.word	.L177+1
 959 0238 1B3A0000 		.word	.L178+1
 960 023c 153A0000 		.word	.L990+1
 961 0240 59220000 		.word	.L220+1
 962 0244 35220000 		.word	.L221+1
 963 0248 6D210000 		.word	.L222+1
 964 024c B71D0000 		.word	.L223+1
 965 0250 8F1D0000 		.word	.L224+1
 966 0254 2F1D0000 		.word	.L225+1
 967 0258 5D2E0000 		.word	.L226+1
 968 025c DB350000 		.word	.L227+1
 969 0260 F1390000 		.word	.L179+1
ARM GAS  /tmp/ccM7BG9e.s 			page 18


 970 0264 153A0000 		.word	.L990+1
 971 0268 153A0000 		.word	.L990+1
 972 026c 153A0000 		.word	.L990+1
 973 0270 153A0000 		.word	.L990+1
 974 0274 153A0000 		.word	.L990+1
 975 0278 153A0000 		.word	.L990+1
 976 027c 153A0000 		.word	.L990+1
 977 0280 153A0000 		.word	.L990+1
 978 0284 153A0000 		.word	.L990+1
 979 0288 153A0000 		.word	.L990+1
 980 028c 153A0000 		.word	.L990+1
 981 0290 153A0000 		.word	.L990+1
 982 0294 192E0000 		.word	.L228+1
 983 0298 153A0000 		.word	.L990+1
 984 029c 153A0000 		.word	.L990+1
 985 02a0 153A0000 		.word	.L990+1
 986 02a4 153A0000 		.word	.L990+1
 987 02a8 31350000 		.word	.L229+1
 988 02ac 31350000 		.word	.L229+1
 989 02b0 153A0000 		.word	.L990+1
 990 02b4 1B350000 		.word	.L230+1
 991 02b8 19160000 		.word	.L231+1
 992 02bc 153A0000 		.word	.L990+1
 993 02c0 153A0000 		.word	.L990+1
 994 02c4 153A0000 		.word	.L990+1
 995 02c8 153A0000 		.word	.L990+1
 996 02cc 153A0000 		.word	.L990+1
 997 02d0 153A0000 		.word	.L990+1
 998 02d4 153A0000 		.word	.L990+1
 999 02d8 153A0000 		.word	.L990+1
 1000 02dc 153A0000 		.word	.L990+1
 1001 02e0 153A0000 		.word	.L990+1
 1002 02e4 153A0000 		.word	.L990+1
 1003 02e8 153A0000 		.word	.L990+1
 1004 02ec 153A0000 		.word	.L990+1
 1005 02f0 153A0000 		.word	.L990+1
 1006 02f4 153A0000 		.word	.L990+1
 1007 02f8 153A0000 		.word	.L990+1
 1008 02fc 153A0000 		.word	.L990+1
 1009 0300 153A0000 		.word	.L990+1
 1010 0304 153A0000 		.word	.L990+1
 1011 0308 153A0000 		.word	.L990+1
 1012 030c 153A0000 		.word	.L990+1
 1013 0310 153A0000 		.word	.L990+1
 1014 0314 153A0000 		.word	.L990+1
 1015 0318 153A0000 		.word	.L990+1
 1016 031c 153A0000 		.word	.L990+1
 1017 0320 153A0000 		.word	.L990+1
 1018 0324 153A0000 		.word	.L990+1
 1019 0328 153A0000 		.word	.L990+1
 1020 032c 153A0000 		.word	.L990+1
 1021 0330 153A0000 		.word	.L990+1
 1022 0334 153A0000 		.word	.L990+1
 1023 0338 153A0000 		.word	.L990+1
 1024 033c 153A0000 		.word	.L990+1
 1025 0340 153A0000 		.word	.L990+1
 1026 0344 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 19


 1027 0348 153A0000 		.word	.L990+1
 1028 034c 153A0000 		.word	.L990+1
 1029 0350 153A0000 		.word	.L990+1
 1030 0354 153A0000 		.word	.L990+1
 1031 0358 153A0000 		.word	.L990+1
 1032 035c 153A0000 		.word	.L990+1
 1033 0360 153A0000 		.word	.L990+1
 1034 0364 153A0000 		.word	.L990+1
 1035 0368 153A0000 		.word	.L990+1
 1036 036c 153A0000 		.word	.L990+1
 1037 0370 89150000 		.word	.L232+1
 1038 0374 89150000 		.word	.L232+1
 1039 0378 153A0000 		.word	.L990+1
 1040 037c 153A0000 		.word	.L990+1
 1041 0380 153A0000 		.word	.L990+1
 1042 0384 153A0000 		.word	.L990+1
 1043 0388 153A0000 		.word	.L990+1
 1044 038c 153A0000 		.word	.L990+1
 1045 0390 153A0000 		.word	.L990+1
 1046 0394 153A0000 		.word	.L990+1
 1047 0398 C9390000 		.word	.L180+1
 1048 039c 0F260000 		.word	.L233+1
 1049 03a0 153A0000 		.word	.L990+1
 1050 03a4 8D250000 		.word	.L234+1
 1051 03a8 69390000 		.word	.L181+1
 1052 03ac 153A0000 		.word	.L990+1
 1053 03b0 FF250000 		.word	.L235+1
 1054 03b4 9F380000 		.word	.L182+1
 1055 03b8 19250000 		.word	.L236+1
 1056 03bc 153A0000 		.word	.L990+1
 1057 03c0 09380000 		.word	.L210+1
 1058 03c4 153A0000 		.word	.L990+1
 1059 03c8 153A0000 		.word	.L990+1
 1060 03cc 153A0000 		.word	.L990+1
 1061 03d0 153A0000 		.word	.L990+1
 1062 03d4 153A0000 		.word	.L990+1
 1063 03d8 153A0000 		.word	.L990+1
 1064 03dc 153A0000 		.word	.L990+1
 1065 03e0 153A0000 		.word	.L990+1
 1066 03e4 153A0000 		.word	.L990+1
 1067 03e8 CD330000 		.word	.L237+1
 1068 03ec AF140000 		.word	.L238+1
 1069 03f0 153A0000 		.word	.L990+1
 1070 03f4 153A0000 		.word	.L990+1
 1071 03f8 153A0000 		.word	.L990+1
 1072 03fc 153A0000 		.word	.L990+1
 1073 0400 63340000 		.word	.L239+1
 1074 0404 153A0000 		.word	.L990+1
 1075 0408 153A0000 		.word	.L990+1
 1076 040c 153A0000 		.word	.L990+1
 1077 0410 153A0000 		.word	.L990+1
 1078 0414 153A0000 		.word	.L990+1
 1079 0418 153A0000 		.word	.L990+1
 1080 041c 153A0000 		.word	.L990+1
 1081 0420 153A0000 		.word	.L990+1
 1082 0424 153A0000 		.word	.L990+1
 1083 0428 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 20


 1084 042c 153A0000 		.word	.L990+1
 1085 0430 153A0000 		.word	.L990+1
 1086 0434 153A0000 		.word	.L990+1
 1087 0438 153A0000 		.word	.L990+1
 1088 043c 153A0000 		.word	.L990+1
 1089 0440 153A0000 		.word	.L990+1
 1090 0444 153A0000 		.word	.L990+1
 1091 0448 153A0000 		.word	.L990+1
 1092 044c 153A0000 		.word	.L990+1
 1093 0450 153A0000 		.word	.L990+1
 1094 0454 153A0000 		.word	.L990+1
 1095 0458 153A0000 		.word	.L990+1
 1096 045c 153A0000 		.word	.L990+1
 1097 0460 153A0000 		.word	.L990+1
 1098 0464 153A0000 		.word	.L990+1
 1099 0468 153A0000 		.word	.L990+1
 1100 046c 153A0000 		.word	.L990+1
 1101 0470 153A0000 		.word	.L990+1
 1102 0474 153A0000 		.word	.L990+1
 1103 0478 153A0000 		.word	.L990+1
 1104 047c 153A0000 		.word	.L990+1
 1105 0480 153A0000 		.word	.L990+1
 1106 0484 153A0000 		.word	.L990+1
 1107 0488 53340000 		.word	.L240+1
 1108 048c 85340000 		.word	.L241+1
 1109 0490 153A0000 		.word	.L990+1
 1110 0494 153A0000 		.word	.L990+1
 1111 0498 153A0000 		.word	.L990+1
 1112 049c 153A0000 		.word	.L990+1
 1113 04a0 153A0000 		.word	.L990+1
 1114 04a4 153A0000 		.word	.L990+1
 1115 04a8 153A0000 		.word	.L990+1
 1116 04ac 153A0000 		.word	.L990+1
 1117 04b0 153A0000 		.word	.L990+1
 1118 04b4 153A0000 		.word	.L990+1
 1119 04b8 153A0000 		.word	.L990+1
 1120 04bc 153A0000 		.word	.L990+1
 1121 04c0 153A0000 		.word	.L990+1
 1122 04c4 153A0000 		.word	.L990+1
 1123 04c8 153A0000 		.word	.L990+1
 1124 04cc 153A0000 		.word	.L990+1
 1125 04d0 153A0000 		.word	.L990+1
 1126 04d4 153A0000 		.word	.L990+1
 1127 04d8 C72D0000 		.word	.L242+1
 1128 04dc 153A0000 		.word	.L990+1
 1129 04e0 153A0000 		.word	.L990+1
 1130 04e4 153A0000 		.word	.L990+1
 1131 04e8 153A0000 		.word	.L990+1
 1132 04ec 153A0000 		.word	.L990+1
 1133 04f0 153A0000 		.word	.L990+1
 1134 04f4 153A0000 		.word	.L990+1
 1135 04f8 153A0000 		.word	.L990+1
 1136 04fc 153A0000 		.word	.L990+1
 1137 0500 E32F0000 		.word	.L243+1
 1138 0504 992F0000 		.word	.L244+1
 1139 0508 652F0000 		.word	.L245+1
 1140 050c 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 21


 1141 0510 153A0000 		.word	.L990+1
 1142 0514 153A0000 		.word	.L990+1
 1143 0518 153A0000 		.word	.L990+1
 1144 051c 153A0000 		.word	.L990+1
 1145 0520 153A0000 		.word	.L990+1
 1146 0524 153A0000 		.word	.L990+1
 1147 0528 332F0000 		.word	.L246+1
 1148 052c A7300000 		.word	.L247+1
 1149 0530 79300000 		.word	.L248+1
 1150 0534 BD1C0000 		.word	.L249+1
 1151 0538 AB1C0000 		.word	.L250+1
 1152 053c 9B1C0000 		.word	.L251+1
 1153 0540 153A0000 		.word	.L990+1
 1154 0544 2D1B0000 		.word	.L252+1
 1155 0548 153A0000 		.word	.L990+1
 1156 054c 153A0000 		.word	.L990+1
 1157 0550 153A0000 		.word	.L990+1
 1158 0554 153A0000 		.word	.L990+1
 1159 0558 153A0000 		.word	.L990+1
 1160 055c 153A0000 		.word	.L990+1
 1161 0560 153A0000 		.word	.L990+1
 1162 0564 153A0000 		.word	.L990+1
 1163 0568 153A0000 		.word	.L990+1
 1164 056c 153A0000 		.word	.L990+1
 1165 0570 153A0000 		.word	.L990+1
 1166 0574 153A0000 		.word	.L990+1
 1167 0578 153A0000 		.word	.L990+1
 1168 057c 153A0000 		.word	.L990+1
 1169 0580 153A0000 		.word	.L990+1
 1170 0584 153A0000 		.word	.L990+1
 1171 0588 153A0000 		.word	.L990+1
 1172 058c 153A0000 		.word	.L990+1
 1173 0590 153A0000 		.word	.L990+1
 1174 0594 153A0000 		.word	.L990+1
 1175 0598 153A0000 		.word	.L990+1
 1176 059c 153A0000 		.word	.L990+1
 1177 05a0 153A0000 		.word	.L990+1
 1178 05a4 153A0000 		.word	.L990+1
 1179 05a8 153A0000 		.word	.L990+1
 1180 05ac 153A0000 		.word	.L990+1
 1181 05b0 153A0000 		.word	.L990+1
 1182 05b4 153A0000 		.word	.L990+1
 1183 05b8 153A0000 		.word	.L990+1
 1184 05bc 153A0000 		.word	.L990+1
 1185 05c0 153A0000 		.word	.L990+1
 1186 05c4 153A0000 		.word	.L990+1
 1187 05c8 153A0000 		.word	.L990+1
 1188 05cc 153A0000 		.word	.L990+1
 1189 05d0 153A0000 		.word	.L990+1
 1190 05d4 153A0000 		.word	.L990+1
 1191 05d8 153A0000 		.word	.L990+1
 1192 05dc 153A0000 		.word	.L990+1
 1193 05e0 153A0000 		.word	.L990+1
 1194 05e4 153A0000 		.word	.L990+1
 1195 05e8 153A0000 		.word	.L990+1
 1196 05ec 153A0000 		.word	.L990+1
 1197 05f0 3F1A0000 		.word	.L253+1
ARM GAS  /tmp/ccM7BG9e.s 			page 22


 1198 05f4 153A0000 		.word	.L990+1
 1199 05f8 153A0000 		.word	.L990+1
 1200 05fc 153A0000 		.word	.L990+1
 1201 0600 153A0000 		.word	.L990+1
 1202 0604 153A0000 		.word	.L990+1
 1203 0608 153A0000 		.word	.L990+1
 1204 060c 153A0000 		.word	.L990+1
 1205 0610 153A0000 		.word	.L990+1
 1206 0614 153A0000 		.word	.L990+1
 1207 0618 153A0000 		.word	.L990+1
 1208 061c 153A0000 		.word	.L990+1
 1209 0620 153A0000 		.word	.L990+1
 1210 0624 153A0000 		.word	.L990+1
 1211 0628 153A0000 		.word	.L990+1
 1212 062c 153A0000 		.word	.L990+1
 1213 0630 153A0000 		.word	.L990+1
 1214 0634 153A0000 		.word	.L990+1
 1215 0638 153A0000 		.word	.L990+1
 1216 063c 153A0000 		.word	.L990+1
 1217 0640 153A0000 		.word	.L990+1
 1218 0644 153A0000 		.word	.L990+1
 1219 0648 153A0000 		.word	.L990+1
 1220 064c 153A0000 		.word	.L990+1
 1221 0650 291A0000 		.word	.L254+1
 1222 0654 0B1A0000 		.word	.L255+1
 1223 0658 E1190000 		.word	.L256+1
 1224 065c 153A0000 		.word	.L990+1
 1225 0660 153A0000 		.word	.L990+1
 1226 0664 153A0000 		.word	.L990+1
 1227 0668 153A0000 		.word	.L990+1
 1228 066c 153A0000 		.word	.L990+1
 1229 0670 153A0000 		.word	.L990+1
 1230 0674 153A0000 		.word	.L990+1
 1231 0678 153A0000 		.word	.L990+1
 1232 067c 153A0000 		.word	.L990+1
 1233 0680 153A0000 		.word	.L990+1
 1234 0684 153A0000 		.word	.L990+1
 1235 0688 153A0000 		.word	.L990+1
 1236 068c 153A0000 		.word	.L990+1
 1237 0690 153A0000 		.word	.L990+1
 1238 0694 153A0000 		.word	.L990+1
 1239 0698 153A0000 		.word	.L990+1
 1240 069c 153A0000 		.word	.L990+1
 1241 06a0 153A0000 		.word	.L990+1
 1242 06a4 153A0000 		.word	.L990+1
 1243 06a8 153A0000 		.word	.L990+1
 1244 06ac 153A0000 		.word	.L990+1
 1245 06b0 153A0000 		.word	.L990+1
 1246 06b4 153A0000 		.word	.L990+1
 1247 06b8 F5180000 		.word	.L257+1
 1248 06bc D1180000 		.word	.L258+1
 1249 06c0 E11A0000 		.word	.L259+1
 1250 06c4 153A0000 		.word	.L990+1
 1251 06c8 6B180000 		.word	.L260+1
 1252 06cc 153A0000 		.word	.L990+1
 1253 06d0 153A0000 		.word	.L990+1
 1254 06d4 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 23


 1255 06d8 45380000 		.word	.L183+1
 1256 06dc 153A0000 		.word	.L990+1
 1257 06e0 153A0000 		.word	.L990+1
 1258 06e4 153A0000 		.word	.L990+1
 1259 06e8 153A0000 		.word	.L990+1
 1260 06ec 153A0000 		.word	.L990+1
 1261 06f0 153A0000 		.word	.L990+1
 1262 06f4 153A0000 		.word	.L990+1
 1263 06f8 153A0000 		.word	.L990+1
 1264 06fc 153A0000 		.word	.L990+1
 1265 0700 153A0000 		.word	.L990+1
 1266 0704 153A0000 		.word	.L990+1
 1267 0708 153A0000 		.word	.L990+1
 1268 070c 153A0000 		.word	.L990+1
 1269 0710 153A0000 		.word	.L990+1
 1270 0714 153A0000 		.word	.L990+1
 1271 0718 153A0000 		.word	.L990+1
 1272 071c 153A0000 		.word	.L990+1
 1273 0720 153A0000 		.word	.L990+1
 1274 0724 153A0000 		.word	.L990+1
 1275 0728 153A0000 		.word	.L990+1
 1276 072c 153A0000 		.word	.L990+1
 1277 0730 153A0000 		.word	.L990+1
 1278 0734 153A0000 		.word	.L990+1
 1279 0738 153A0000 		.word	.L990+1
 1280 073c 153A0000 		.word	.L990+1
 1281 0740 153A0000 		.word	.L990+1
 1282 0744 153A0000 		.word	.L990+1
 1283 0748 153A0000 		.word	.L990+1
 1284 074c 153A0000 		.word	.L990+1
 1285 0750 153A0000 		.word	.L990+1
 1286 0754 153A0000 		.word	.L990+1
 1287 0758 153A0000 		.word	.L990+1
 1288 075c 153A0000 		.word	.L990+1
 1289 0760 153A0000 		.word	.L990+1
 1290 0764 153A0000 		.word	.L990+1
 1291 0768 153A0000 		.word	.L990+1
 1292 076c 153A0000 		.word	.L990+1
 1293 0770 153A0000 		.word	.L990+1
 1294 0774 153A0000 		.word	.L990+1
 1295 0778 153A0000 		.word	.L990+1
 1296 077c 153A0000 		.word	.L990+1
 1297 0780 CB190000 		.word	.L261+1
 1298 0784 07190000 		.word	.L262+1
 1299 0788 21190000 		.word	.L263+1
 1300 078c 85170000 		.word	.L264+1
 1301 0790 153A0000 		.word	.L990+1
 1302 0794 153A0000 		.word	.L990+1
 1303 0798 153A0000 		.word	.L990+1
 1304 079c 153A0000 		.word	.L990+1
 1305 07a0 153A0000 		.word	.L990+1
 1306 07a4 153A0000 		.word	.L990+1
 1307 07a8 153A0000 		.word	.L990+1
 1308 07ac 153A0000 		.word	.L990+1
 1309 07b0 153A0000 		.word	.L990+1
 1310 07b4 153A0000 		.word	.L990+1
 1311 07b8 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 24


 1312 07bc 153A0000 		.word	.L990+1
 1313 07c0 153A0000 		.word	.L990+1
 1314 07c4 153A0000 		.word	.L990+1
 1315 07c8 153A0000 		.word	.L990+1
 1316 07cc 153A0000 		.word	.L990+1
 1317 07d0 153A0000 		.word	.L990+1
 1318 07d4 153A0000 		.word	.L990+1
 1319 07d8 153A0000 		.word	.L990+1
 1320 07dc 153A0000 		.word	.L990+1
 1321 07e0 153A0000 		.word	.L990+1
 1322 07e4 153A0000 		.word	.L990+1
 1323 07e8 153A0000 		.word	.L990+1
 1324 07ec 153A0000 		.word	.L990+1
 1325 07f0 153A0000 		.word	.L990+1
 1326 07f4 153A0000 		.word	.L990+1
 1327 07f8 153A0000 		.word	.L990+1
 1328 07fc 153A0000 		.word	.L990+1
 1329 0800 153A0000 		.word	.L990+1
 1330 0804 153A0000 		.word	.L990+1
 1331 0808 153A0000 		.word	.L990+1
 1332 080c 153A0000 		.word	.L990+1
 1333 0810 153A0000 		.word	.L990+1
 1334 0814 153A0000 		.word	.L990+1
 1335 0818 153A0000 		.word	.L990+1
 1336 081c 153A0000 		.word	.L990+1
 1337 0820 153A0000 		.word	.L990+1
 1338 0824 153A0000 		.word	.L990+1
 1339 0828 153A0000 		.word	.L990+1
 1340 082c 153A0000 		.word	.L990+1
 1341 0830 153A0000 		.word	.L990+1
 1342 0834 153A0000 		.word	.L990+1
 1343 0838 153A0000 		.word	.L990+1
 1344 083c 153A0000 		.word	.L990+1
 1345 0840 153A0000 		.word	.L990+1
 1346 0844 153A0000 		.word	.L990+1
 1347 0848 77170000 		.word	.L265+1
 1348 084c 49170000 		.word	.L266+1
 1349 0850 F9160000 		.word	.L267+1
 1350 0854 63160000 		.word	.L268+1
 1351 0858 153A0000 		.word	.L990+1
 1352 085c 153A0000 		.word	.L990+1
 1353 0860 153A0000 		.word	.L990+1
 1354 0864 153A0000 		.word	.L990+1
 1355 0868 153A0000 		.word	.L990+1
 1356 086c 153A0000 		.word	.L990+1
 1357 0870 153A0000 		.word	.L990+1
 1358 0874 153A0000 		.word	.L990+1
 1359 0878 153A0000 		.word	.L990+1
 1360 087c 153A0000 		.word	.L990+1
 1361 0880 153A0000 		.word	.L990+1
 1362 0884 153A0000 		.word	.L990+1
 1363 0888 153A0000 		.word	.L990+1
 1364 088c 153A0000 		.word	.L990+1
 1365 0890 153A0000 		.word	.L990+1
 1366 0894 153A0000 		.word	.L990+1
 1367 0898 153A0000 		.word	.L990+1
 1368 089c 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 25


 1369 08a0 153A0000 		.word	.L990+1
 1370 08a4 153A0000 		.word	.L990+1
 1371 08a8 153A0000 		.word	.L990+1
 1372 08ac 153A0000 		.word	.L990+1
 1373 08b0 153A0000 		.word	.L990+1
 1374 08b4 153A0000 		.word	.L990+1
 1375 08b8 153A0000 		.word	.L990+1
 1376 08bc 153A0000 		.word	.L990+1
 1377 08c0 153A0000 		.word	.L990+1
 1378 08c4 153A0000 		.word	.L990+1
 1379 08c8 153A0000 		.word	.L990+1
 1380 08cc 153A0000 		.word	.L990+1
 1381 08d0 153A0000 		.word	.L990+1
 1382 08d4 153A0000 		.word	.L990+1
 1383 08d8 153A0000 		.word	.L990+1
 1384 08dc 153A0000 		.word	.L990+1
 1385 08e0 153A0000 		.word	.L990+1
 1386 08e4 153A0000 		.word	.L990+1
 1387 08e8 03280000 		.word	.L269+1
 1388 08ec 153A0000 		.word	.L990+1
 1389 08f0 153A0000 		.word	.L990+1
 1390 08f4 153A0000 		.word	.L990+1
 1391 08f8 153A0000 		.word	.L990+1
 1392 08fc 153A0000 		.word	.L990+1
 1393 0900 153A0000 		.word	.L990+1
 1394 0904 153A0000 		.word	.L990+1
 1395 0908 153A0000 		.word	.L990+1
 1396 090c 153A0000 		.word	.L990+1
 1397 0910 CD270000 		.word	.L270+1
 1398 0914 7F270000 		.word	.L271+1
 1399 0918 2B270000 		.word	.L272+1
 1400 091c 63290000 		.word	.L273+1
 1401 0920 2F290000 		.word	.L274+1
 1402 0924 D5260000 		.word	.L275+1
 1403 0928 89260000 		.word	.L276+1
 1404 092c 1B270000 		.word	.L277+1
 1405 0930 0B270000 		.word	.L278+1
 1406 0934 D91F0000 		.word	.L279+1
 1407 0938 D91F0000 		.word	.L279+1
 1408 093c 9D1F0000 		.word	.L280+1
 1409 0940 2D1F0000 		.word	.L281+1
 1410 0944 171F0000 		.word	.L282+1
 1411 0948 591F0000 		.word	.L283+1
 1412 094c 153A0000 		.word	.L990+1
 1413 0950 A51E0000 		.word	.L284+1
 1414 0954 A7290000 		.word	.L285+1
 1415 0958 4B280000 		.word	.L286+1
 1416 095c 59280000 		.word	.L287+1
 1417 0960 99240000 		.word	.L288+1
 1418 0964 DB230000 		.word	.L289+1
 1419 0968 5D230000 		.word	.L290+1
 1420 096c F7220000 		.word	.L291+1
 1421 0970 91220000 		.word	.L292+1
 1422 0974 D52A0000 		.word	.L293+1
 1423 0978 153A0000 		.word	.L990+1
 1424 097c 0F2A0000 		.word	.L294+1
 1425 0980 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 26


 1426 0984 492B0000 		.word	.L295+1
 1427 0988 153A0000 		.word	.L990+1
 1428 098c F9260000 		.word	.L296+1
 1429 0990 F9260000 		.word	.L296+1
 1430 0994 153A0000 		.word	.L990+1
 1431 0998 97290000 		.word	.L297+1
 1432 099c 7B150000 		.word	.L298+1
 1433 09a0 27150000 		.word	.L299+1
 1434 09a4 A5320000 		.word	.L300+1
 1435 09a8 A5320000 		.word	.L300+1
 1436 09ac A5320000 		.word	.L300+1
 1437 09b0 153A0000 		.word	.L990+1
 1438 09b4 61320000 		.word	.L301+1
 1439 09b8 F3310000 		.word	.L302+1
 1440 09bc 09380000 		.word	.L210+1
 1441 09c0 153A0000 		.word	.L990+1
 1442 09c4 153A0000 		.word	.L990+1
 1443 09c8 153A0000 		.word	.L990+1
 1444 09cc 153A0000 		.word	.L990+1
 1445 09d0 153A0000 		.word	.L990+1
 1446 09d4 153A0000 		.word	.L990+1
 1447 09d8 153A0000 		.word	.L990+1
 1448 09dc 153A0000 		.word	.L990+1
 1449 09e0 153A0000 		.word	.L990+1
 1450 09e4 153A0000 		.word	.L990+1
 1451 09e8 153A0000 		.word	.L990+1
 1452 09ec 153A0000 		.word	.L990+1
 1453 09f0 153A0000 		.word	.L990+1
 1454 09f4 153A0000 		.word	.L990+1
 1455 09f8 153A0000 		.word	.L990+1
 1456 09fc 153A0000 		.word	.L990+1
 1457 0a00 153A0000 		.word	.L990+1
 1458 0a04 153A0000 		.word	.L990+1
 1459 0a08 153A0000 		.word	.L990+1
 1460 0a0c 153A0000 		.word	.L990+1
 1461 0a10 153A0000 		.word	.L990+1
 1462 0a14 153A0000 		.word	.L990+1
 1463 0a18 153A0000 		.word	.L990+1
 1464 0a1c 153A0000 		.word	.L990+1
 1465 0a20 153A0000 		.word	.L990+1
 1466 0a24 153A0000 		.word	.L990+1
 1467 0a28 153A0000 		.word	.L990+1
 1468 0a2c 153A0000 		.word	.L990+1
 1469 0a30 153A0000 		.word	.L990+1
 1470 0a34 153A0000 		.word	.L990+1
 1471 0a38 153A0000 		.word	.L990+1
 1472 0a3c 153A0000 		.word	.L990+1
 1473 0a40 153A0000 		.word	.L990+1
 1474 0a44 153A0000 		.word	.L990+1
 1475 0a48 153A0000 		.word	.L990+1
 1476 0a4c 153A0000 		.word	.L990+1
 1477 0a50 153A0000 		.word	.L990+1
 1478 0a54 153A0000 		.word	.L990+1
 1479 0a58 153A0000 		.word	.L990+1
 1480 0a5c 153A0000 		.word	.L990+1
 1481 0a60 153A0000 		.word	.L990+1
 1482 0a64 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 27


 1483 0a68 153A0000 		.word	.L990+1
 1484 0a6c 153A0000 		.word	.L990+1
 1485 0a70 153A0000 		.word	.L990+1
 1486 0a74 153A0000 		.word	.L990+1
 1487 0a78 153A0000 		.word	.L990+1
 1488 0a7c 153A0000 		.word	.L990+1
 1489 0a80 153A0000 		.word	.L990+1
 1490 0a84 153A0000 		.word	.L990+1
 1491 0a88 153A0000 		.word	.L990+1
 1492 0a8c 153A0000 		.word	.L990+1
 1493 0a90 153A0000 		.word	.L990+1
 1494 0a94 153A0000 		.word	.L990+1
 1495 0a98 153A0000 		.word	.L990+1
 1496 0a9c 153A0000 		.word	.L990+1
 1497 0aa0 153A0000 		.word	.L990+1
 1498 0aa4 153A0000 		.word	.L990+1
 1499 0aa8 153A0000 		.word	.L990+1
 1500 0aac 153A0000 		.word	.L990+1
 1501 0ab0 153A0000 		.word	.L990+1
 1502 0ab4 153A0000 		.word	.L990+1
 1503 0ab8 153A0000 		.word	.L990+1
 1504 0abc 153A0000 		.word	.L990+1
 1505 0ac0 153A0000 		.word	.L990+1
 1506 0ac4 153A0000 		.word	.L990+1
 1507 0ac8 153A0000 		.word	.L990+1
 1508 0acc 153A0000 		.word	.L990+1
 1509 0ad0 153A0000 		.word	.L990+1
 1510 0ad4 153A0000 		.word	.L990+1
 1511 0ad8 153A0000 		.word	.L990+1
 1512 0adc 09330000 		.word	.L303+1
 1513 0ae0 C5340000 		.word	.L304+1
 1514 0ae4 FB2C0000 		.word	.L305+1
 1515 0ae8 153A0000 		.word	.L990+1
 1516 0aec 1F310000 		.word	.L306+1
 1517 0af0 09310000 		.word	.L307+1
 1518 0af4 CD300000 		.word	.L308+1
 1519 0af8 B9300000 		.word	.L309+1
 1520 0afc 153A0000 		.word	.L990+1
 1521 0b00 153A0000 		.word	.L990+1
 1522 0b04 153A0000 		.word	.L990+1
 1523 0b08 153A0000 		.word	.L990+1
 1524 0b0c 153A0000 		.word	.L990+1
 1525 0b10 153A0000 		.word	.L990+1
 1526 0b14 153A0000 		.word	.L990+1
 1527 0b18 153A0000 		.word	.L990+1
 1528 0b1c 153A0000 		.word	.L990+1
 1529 0b20 153A0000 		.word	.L990+1
 1530 0b24 153A0000 		.word	.L990+1
 1531 0b28 153A0000 		.word	.L990+1
 1532 0b2c 153A0000 		.word	.L990+1
 1533 0b30 153A0000 		.word	.L990+1
 1534 0b34 153A0000 		.word	.L990+1
 1535 0b38 153A0000 		.word	.L990+1
 1536 0b3c 153A0000 		.word	.L990+1
 1537 0b40 153A0000 		.word	.L990+1
 1538 0b44 153A0000 		.word	.L990+1
 1539 0b48 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 28


 1540 0b4c 153A0000 		.word	.L990+1
 1541 0b50 153A0000 		.word	.L990+1
 1542 0b54 153A0000 		.word	.L990+1
 1543 0b58 153A0000 		.word	.L990+1
 1544 0b5c 153A0000 		.word	.L990+1
 1545 0b60 153A0000 		.word	.L990+1
 1546 0b64 153A0000 		.word	.L990+1
 1547 0b68 153A0000 		.word	.L990+1
 1548 0b6c C72B0000 		.word	.L310+1
 1549 0b70 B72B0000 		.word	.L311+1
 1550 0b74 153A0000 		.word	.L990+1
 1551 0b78 153A0000 		.word	.L990+1
 1552 0b7c 153A0000 		.word	.L990+1
 1553 0b80 153A0000 		.word	.L990+1
 1554 0b84 153A0000 		.word	.L990+1
 1555 0b88 153A0000 		.word	.L990+1
 1556 0b8c 153A0000 		.word	.L990+1
 1557 0b90 153A0000 		.word	.L990+1
 1558 0b94 153A0000 		.word	.L990+1
 1559 0b98 153A0000 		.word	.L990+1
 1560 0b9c 153A0000 		.word	.L990+1
 1561 0ba0 153A0000 		.word	.L990+1
 1562 0ba4 153A0000 		.word	.L990+1
 1563 0ba8 153A0000 		.word	.L990+1
 1564 0bac 153A0000 		.word	.L990+1
 1565 0bb0 153A0000 		.word	.L990+1
 1566 0bb4 153A0000 		.word	.L990+1
 1567 0bb8 153A0000 		.word	.L990+1
 1568 0bbc 153A0000 		.word	.L990+1
 1569 0bc0 153A0000 		.word	.L990+1
 1570 0bc4 153A0000 		.word	.L990+1
 1571 0bc8 153A0000 		.word	.L990+1
 1572 0bcc 153A0000 		.word	.L990+1
 1573 0bd0 153A0000 		.word	.L990+1
 1574 0bd4 153A0000 		.word	.L990+1
 1575 0bd8 153A0000 		.word	.L990+1
 1576 0bdc 153A0000 		.word	.L990+1
 1577 0be0 153A0000 		.word	.L990+1
 1578 0be4 153A0000 		.word	.L990+1
 1579 0be8 153A0000 		.word	.L990+1
 1580 0bec 153A0000 		.word	.L990+1
 1581 0bf0 153A0000 		.word	.L990+1
 1582 0bf4 153A0000 		.word	.L990+1
 1583 0bf8 153A0000 		.word	.L990+1
 1584 0bfc 153A0000 		.word	.L990+1
 1585 0c00 153A0000 		.word	.L990+1
 1586 0c04 153A0000 		.word	.L990+1
 1587 0c08 153A0000 		.word	.L990+1
 1588 0c0c 153A0000 		.word	.L990+1
 1589 0c10 153A0000 		.word	.L990+1
 1590 0c14 153A0000 		.word	.L990+1
 1591 0c18 153A0000 		.word	.L990+1
 1592 0c1c 153A0000 		.word	.L990+1
 1593 0c20 153A0000 		.word	.L990+1
 1594 0c24 153A0000 		.word	.L990+1
 1595 0c28 153A0000 		.word	.L990+1
 1596 0c2c 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 29


 1597 0c30 A92B0000 		.word	.L312+1
 1598 0c34 912B0000 		.word	.L313+1
 1599 0c38 AD2E0000 		.word	.L314+1
 1600 0c3c 7B2E0000 		.word	.L315+1
 1601 0c40 C52C0000 		.word	.L316+1
 1602 0c44 8F2C0000 		.word	.L317+1
 1603 0c48 712C0000 		.word	.L318+1
 1604 0c4c 153A0000 		.word	.L990+1
 1605 0c50 153A0000 		.word	.L990+1
 1606 0c54 153A0000 		.word	.L990+1
 1607 0c58 153A0000 		.word	.L990+1
 1608 0c5c 153A0000 		.word	.L990+1
 1609 0c60 153A0000 		.word	.L990+1
 1610 0c64 153A0000 		.word	.L990+1
 1611 0c68 153A0000 		.word	.L990+1
 1612 0c6c 153A0000 		.word	.L990+1
 1613 0c70 153A0000 		.word	.L990+1
 1614 0c74 153A0000 		.word	.L990+1
 1615 0c78 153A0000 		.word	.L990+1
 1616 0c7c 153A0000 		.word	.L990+1
 1617 0c80 153A0000 		.word	.L990+1
 1618 0c84 153A0000 		.word	.L990+1
 1619 0c88 153A0000 		.word	.L990+1
 1620 0c8c 153A0000 		.word	.L990+1
 1621 0c90 153A0000 		.word	.L990+1
 1622 0c94 153A0000 		.word	.L990+1
 1623 0c98 153A0000 		.word	.L990+1
 1624 0c9c 153A0000 		.word	.L990+1
 1625 0ca0 153A0000 		.word	.L990+1
 1626 0ca4 153A0000 		.word	.L990+1
 1627 0ca8 153A0000 		.word	.L990+1
 1628 0cac 153A0000 		.word	.L990+1
 1629 0cb0 153A0000 		.word	.L990+1
 1630 0cb4 153A0000 		.word	.L990+1
 1631 0cb8 153A0000 		.word	.L990+1
 1632 0cbc 153A0000 		.word	.L990+1
 1633 0cc0 153A0000 		.word	.L990+1
 1634 0cc4 153A0000 		.word	.L990+1
 1635 0cc8 153A0000 		.word	.L990+1
 1636 0ccc 153A0000 		.word	.L990+1
 1637 0cd0 153A0000 		.word	.L990+1
 1638 0cd4 153A0000 		.word	.L990+1
 1639 0cd8 153A0000 		.word	.L990+1
 1640 0cdc 153A0000 		.word	.L990+1
 1641 0ce0 153A0000 		.word	.L990+1
 1642 0ce4 153A0000 		.word	.L990+1
 1643 0ce8 153A0000 		.word	.L990+1
 1644 0cec 153A0000 		.word	.L990+1
 1645 0cf0 153A0000 		.word	.L990+1
 1646 0cf4 153A0000 		.word	.L990+1
 1647 0cf8 153A0000 		.word	.L990+1
 1648 0cfc 153A0000 		.word	.L990+1
 1649 0d00 153A0000 		.word	.L990+1
 1650 0d04 153A0000 		.word	.L990+1
 1651 0d08 153A0000 		.word	.L990+1
 1652 0d0c 153A0000 		.word	.L990+1
 1653 0d10 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 30


 1654 0d14 153A0000 		.word	.L990+1
 1655 0d18 153A0000 		.word	.L990+1
 1656 0d1c 153A0000 		.word	.L990+1
 1657 0d20 153A0000 		.word	.L990+1
 1658 0d24 153A0000 		.word	.L990+1
 1659 0d28 153A0000 		.word	.L990+1
 1660 0d2c 153A0000 		.word	.L990+1
 1661 0d30 153A0000 		.word	.L990+1
 1662 0d34 153A0000 		.word	.L990+1
 1663 0d38 153A0000 		.word	.L990+1
 1664 0d3c 153A0000 		.word	.L990+1
 1665 0d40 153A0000 		.word	.L990+1
 1666 0d44 153A0000 		.word	.L990+1
 1667 0d48 153A0000 		.word	.L990+1
 1668 0d4c 153A0000 		.word	.L990+1
 1669 0d50 153A0000 		.word	.L990+1
 1670 0d54 153A0000 		.word	.L990+1
 1671 0d58 153A0000 		.word	.L990+1
 1672 0d5c 153A0000 		.word	.L990+1
 1673 0d60 153A0000 		.word	.L990+1
 1674 0d64 153A0000 		.word	.L990+1
 1675 0d68 153A0000 		.word	.L990+1
 1676 0d6c 153A0000 		.word	.L990+1
 1677 0d70 153A0000 		.word	.L990+1
 1678 0d74 153A0000 		.word	.L990+1
 1679 0d78 153A0000 		.word	.L990+1
 1680 0d7c 153A0000 		.word	.L990+1
 1681 0d80 153A0000 		.word	.L990+1
 1682 0d84 153A0000 		.word	.L990+1
 1683 0d88 153A0000 		.word	.L990+1
 1684 0d8c 153A0000 		.word	.L990+1
 1685 0d90 153A0000 		.word	.L990+1
 1686 0d94 153A0000 		.word	.L990+1
 1687 0d98 153A0000 		.word	.L990+1
 1688 0d9c 153A0000 		.word	.L990+1
 1689 0da0 153A0000 		.word	.L990+1
 1690 0da4 153A0000 		.word	.L990+1
 1691 0da8 153A0000 		.word	.L990+1
 1692 0dac 153A0000 		.word	.L990+1
 1693 0db0 153A0000 		.word	.L990+1
 1694 0db4 153A0000 		.word	.L990+1
 1695 0db8 153A0000 		.word	.L990+1
 1696 0dbc 153A0000 		.word	.L990+1
 1697 0dc0 153A0000 		.word	.L990+1
 1698 0dc4 153A0000 		.word	.L990+1
 1699 0dc8 153A0000 		.word	.L990+1
 1700 0dcc 153A0000 		.word	.L990+1
 1701 0dd0 153A0000 		.word	.L990+1
 1702 0dd4 153A0000 		.word	.L990+1
 1703 0dd8 153A0000 		.word	.L990+1
 1704 0ddc 153A0000 		.word	.L990+1
 1705 0de0 153A0000 		.word	.L990+1
 1706 0de4 153A0000 		.word	.L990+1
 1707 0de8 153A0000 		.word	.L990+1
 1708 0dec 153A0000 		.word	.L990+1
 1709 0df0 153A0000 		.word	.L990+1
 1710 0df4 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 31


 1711 0df8 153A0000 		.word	.L990+1
 1712 0dfc 153A0000 		.word	.L990+1
 1713 0e00 153A0000 		.word	.L990+1
 1714 0e04 153A0000 		.word	.L990+1
 1715 0e08 153A0000 		.word	.L990+1
 1716 0e0c 153A0000 		.word	.L990+1
 1717 0e10 153A0000 		.word	.L990+1
 1718 0e14 153A0000 		.word	.L990+1
 1719 0e18 153A0000 		.word	.L990+1
 1720 0e1c 153A0000 		.word	.L990+1
 1721 0e20 153A0000 		.word	.L990+1
 1722 0e24 153A0000 		.word	.L990+1
 1723 0e28 153A0000 		.word	.L990+1
 1724 0e2c 153A0000 		.word	.L990+1
 1725 0e30 153A0000 		.word	.L990+1
 1726 0e34 153A0000 		.word	.L990+1
 1727 0e38 153A0000 		.word	.L990+1
 1728 0e3c 153A0000 		.word	.L990+1
 1729 0e40 153A0000 		.word	.L990+1
 1730 0e44 153A0000 		.word	.L990+1
 1731 0e48 153A0000 		.word	.L990+1
 1732 0e4c 153A0000 		.word	.L990+1
 1733 0e50 153A0000 		.word	.L990+1
 1734 0e54 153A0000 		.word	.L990+1
 1735 0e58 153A0000 		.word	.L990+1
 1736 0e5c 153A0000 		.word	.L990+1
 1737 0e60 153A0000 		.word	.L990+1
 1738 0e64 153A0000 		.word	.L990+1
 1739 0e68 153A0000 		.word	.L990+1
 1740 0e6c 153A0000 		.word	.L990+1
 1741 0e70 153A0000 		.word	.L990+1
 1742 0e74 153A0000 		.word	.L990+1
 1743 0e78 153A0000 		.word	.L990+1
 1744 0e7c 153A0000 		.word	.L990+1
 1745 0e80 153A0000 		.word	.L990+1
 1746 0e84 153A0000 		.word	.L990+1
 1747 0e88 153A0000 		.word	.L990+1
 1748 0e8c 153A0000 		.word	.L990+1
 1749 0e90 153A0000 		.word	.L990+1
 1750 0e94 153A0000 		.word	.L990+1
 1751 0e98 153A0000 		.word	.L990+1
 1752 0e9c 612C0000 		.word	.L319+1
 1753 0ea0 0B2C0000 		.word	.L320+1
 1754 0ea4 153A0000 		.word	.L990+1
 1755 0ea8 153A0000 		.word	.L990+1
 1756 0eac 153A0000 		.word	.L990+1
 1757 0eb0 153A0000 		.word	.L990+1
 1758 0eb4 D72B0000 		.word	.L321+1
 1759 0eb8 95340000 		.word	.L322+1
 1760 0ebc 0B2C0000 		.word	.L320+1
 1761 0ec0 153A0000 		.word	.L990+1
 1762 0ec4 DB1D0000 		.word	.L323+1
 1763 0ec8 E7320000 		.word	.L324+1
 1764 0ecc 0B2C0000 		.word	.L320+1
 1765 0ed0 153A0000 		.word	.L990+1
 1766 0ed4 153A0000 		.word	.L990+1
 1767 0ed8 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 32


 1768 0edc 153A0000 		.word	.L990+1
 1769 0ee0 153A0000 		.word	.L990+1
 1770 0ee4 153A0000 		.word	.L990+1
 1771 0ee8 153A0000 		.word	.L990+1
 1772 0eec 153A0000 		.word	.L990+1
 1773 0ef0 153A0000 		.word	.L990+1
 1774 0ef4 153A0000 		.word	.L990+1
 1775 0ef8 153A0000 		.word	.L990+1
 1776 0efc 07350000 		.word	.L325+1
 1777 0f00 153A0000 		.word	.L990+1
 1778 0f04 153A0000 		.word	.L990+1
 1779 0f08 153A0000 		.word	.L990+1
 1780 0f0c 153A0000 		.word	.L990+1
 1781 0f10 153A0000 		.word	.L990+1
 1782 0f14 153A0000 		.word	.L990+1
 1783 0f18 153A0000 		.word	.L990+1
 1784 0f1c 153A0000 		.word	.L990+1
 1785 0f20 153A0000 		.word	.L990+1
 1786 0f24 153A0000 		.word	.L990+1
 1787 0f28 153A0000 		.word	.L990+1
 1788 0f2c 153A0000 		.word	.L990+1
 1789 0f30 153A0000 		.word	.L990+1
 1790 0f34 153A0000 		.word	.L990+1
 1791 0f38 153A0000 		.word	.L990+1
 1792 0f3c 153A0000 		.word	.L990+1
 1793 0f40 153A0000 		.word	.L990+1
 1794 0f44 153A0000 		.word	.L990+1
 1795 0f48 153A0000 		.word	.L990+1
 1796 0f4c 153A0000 		.word	.L990+1
 1797 0f50 153A0000 		.word	.L990+1
 1798 0f54 153A0000 		.word	.L990+1
 1799 0f58 153A0000 		.word	.L990+1
 1800 0f5c 153A0000 		.word	.L990+1
 1801 0f60 153A0000 		.word	.L990+1
 1802 0f64 153A0000 		.word	.L990+1
 1803 0f68 153A0000 		.word	.L990+1
 1804 0f6c 153A0000 		.word	.L990+1
 1805 0f70 153A0000 		.word	.L990+1
 1806 0f74 153A0000 		.word	.L990+1
 1807 0f78 153A0000 		.word	.L990+1
 1808 0f7c 153A0000 		.word	.L990+1
 1809 0f80 153A0000 		.word	.L990+1
 1810 0f84 153A0000 		.word	.L990+1
 1811 0f88 153A0000 		.word	.L990+1
 1812 0f8c 153A0000 		.word	.L990+1
 1813 0f90 153A0000 		.word	.L990+1
 1814 0f94 153A0000 		.word	.L990+1
 1815 0f98 153A0000 		.word	.L990+1
 1816 0f9c 153A0000 		.word	.L990+1
 1817 0fa0 153A0000 		.word	.L990+1
 1818 0fa4 153A0000 		.word	.L990+1
 1819 0fa8 153A0000 		.word	.L990+1
 1820 0fac 153A0000 		.word	.L990+1
 1821 0fb0 153A0000 		.word	.L990+1
 1822 0fb4 153A0000 		.word	.L990+1
 1823 0fb8 153A0000 		.word	.L990+1
 1824 0fbc 153A0000 		.word	.L990+1
ARM GAS  /tmp/ccM7BG9e.s 			page 33


 1825 0fc0 153A0000 		.word	.L990+1
 1826 0fc4 153A0000 		.word	.L990+1
 1827 0fc8 153A0000 		.word	.L990+1
 1828 0fcc 153A0000 		.word	.L990+1
 1829 0fd0 153A0000 		.word	.L990+1
 1830 0fd4 153A0000 		.word	.L990+1
 1831 0fd8 153A0000 		.word	.L990+1
 1832 0fdc 153A0000 		.word	.L990+1
 1833 0fe0 153A0000 		.word	.L990+1
 1834 0fe4 153A0000 		.word	.L990+1
 1835 0fe8 153A0000 		.word	.L990+1
 1836 0fec 153A0000 		.word	.L990+1
 1837 0ff0 153A0000 		.word	.L990+1
 1838 0ff4 153A0000 		.word	.L990+1
 1839 0ff8 153A0000 		.word	.L990+1
 1840 0ffc 153A0000 		.word	.L990+1
 1841 1000 153A0000 		.word	.L990+1
 1842 1004 153A0000 		.word	.L990+1
 1843 1008 153A0000 		.word	.L990+1
 1844 100c 79260000 		.word	.L326+1
 1845 1010 671E0000 		.word	.L327+1
 1846 1014 0F380000 		.word	.L185+1
 1847              		.p2align 1
 1848              	.L1793:
 1849 1018 522E     		cmp	r6, #82
 1850 101a 02F07385 		beq	.L173
 1851 101e 532E     		cmp	r6, #83
 1852 1020 23D0     		beq	.L174
 1853 1022 692E     		cmp	r6, #105
 1854 1024 02F06785 		beq	.L175
 1855 1028 6D2E     		cmp	r6, #109
 1856 102a 32D0     		beq	.L176
 1857 102c 6F2E     		cmp	r6, #111
 1858 102e 02F0FA84 		beq	.L177
 1859 1032 702E     		cmp	r6, #112
 1860 1034 02F0F184 		beq	.L178
 1861 1038 7A2E     		cmp	r6, #122
 1862 103a 02F0D984 		beq	.L179
 1863 103e C82E     		cmp	r6, #200
 1864 1040 02F0C284 		beq	.L180
 1865 1044 CC2E     		cmp	r6, #204
 1866 1046 02F08F84 		beq	.L181
 1867 104a CF2E     		cmp	r6, #207
 1868 104c 02F02784 		beq	.L182
 1869 1050 B6F5CC7F 		cmp	r6, #408
 1870 1054 02F0F683 		beq	.L183
 1871 1058 40F2E733 		movw	r3, #999
 1872 105c 9E42     		cmp	r6, r3
 1873 105e 02F0D683 		beq	.L185
 1874 1062 4FF0010A 		mov	r10, #1
 1875 1066 FEF7F6BF 		b	.L1123
 1876              	.L174:
 1877 106a AA68     		ldr	r2, [r5, #8]
 1878 106c 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1879 106e 43F00103 		orr	r3, r3, #1
 1880 1072 1376     		strb	r3, [r2, #24]
 1881 1074 0126     		movs	r6, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 34


 1882              	.L186:
 1883 1076 4346     		mov	r3, r8
 1884 1078 3246     		mov	r2, r6
 1885 107a 2946     		mov	r1, r5
 1886 107c 2046     		mov	r0, r4
 1887 107e FFF7FEFF 		bl	_ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef
 1888 1082 8246     		mov	r10, r0
 1889 1084 5046     		mov	r0, r10
 1890 1086 0DF51F7D 		add	sp, sp, #636
 1891              		@ sp needed
 1892 108a BDEC028B 		vldm	sp!, {d8}
 1893 108e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1894              	.L176:
 1895 1092 2946     		mov	r1, r5
 1896 1094 2046     		mov	r0, r4
 1897 1096 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1898 109a 0028     		cmp	r0, #0
 1899 109c 3EF4D9AF 		beq	.L742
 1900 10a0 2046     		mov	r0, r4
 1901 10a2 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 1902 10a6 0028     		cmp	r0, #0
 1903 10a8 3EF4D3AF 		beq	.L742
 1904              	.L216:
 1905 10ac 5221     		movs	r1, #82
 1906 10ae 2846     		mov	r0, r5
 1907 10b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1908 10b4 0746     		mov	r7, r0
 1909 10b6 0028     		cmp	r0, #0
 1910 10b8 03F00C80 		beq	.L468
 1911 10bc AA68     		ldr	r2, [r5, #8]
 1912 10be 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 1913 10c0 43F00803 		orr	r3, r3, #8
 1914 10c4 1376     		strb	r3, [r2, #24]
 1915 10c6 2846     		mov	r0, r5
 1916 10c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1917 10cc B0EE408A 		vmov.f32	s16, s0
 1918              	.L469:
 1919 10d0 5421     		movs	r1, #84
 1920 10d2 2846     		mov	r0, r5
 1921 10d4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1922 10d8 0028     		cmp	r0, #0
 1923 10da 03F00682 		beq	.L470
 1924 10de 2846     		mov	r0, r5
 1925 10e0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1926 10e4 296B     		ldr	r1, [r5, #48]
 1927 10e6 0144     		add	r1, r1, r0
 1928 10e8 CA48     		ldr	r0, .L1939
 1929 10ea FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1930 10ee 0746     		mov	r7, r0
 1931              	.L471:
 1932 10f0 002F     		cmp	r7, #0
 1933 10f2 04F0DD82 		beq	.L1795
 1934 10f6 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 1935 10fa 002B     		cmp	r3, #0
 1936 10fc 04F08380 		beq	.L1796
 1937              	.L473:
 1938 1100 C44B     		ldr	r3, .L1939
ARM GAS  /tmp/ccM7BG9e.s 			page 35


 1939 1102 6D2E     		cmp	r6, #109
 1940 1104 196B     		ldr	r1, [r3, #48]
 1941 1106 04F05380 		beq	.L1797
 1942              	.L474:
 1943 110a 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 1944 110e C148     		ldr	r0, .L1939
 1945 1110 1A1C     		adds	r2, r3, #0
 1946 1112 18BF     		it	ne
 1947 1114 0122     		movne	r2, #1
 1948 1116 8F42     		cmp	r7, r1
 1949 1118 D7F89C10 		ldr	r1, [r7, #156]
 1950 111c 04F01081 		beq	.L1798
 1951 1120 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 1952              	.L477:
 1953 1124 6D2E     		cmp	r6, #109
 1954 1126 2BD1     		bne	.L331
 1955 1128 AB68     		ldr	r3, [r5, #8]
 1956 112a 0E22     		movs	r2, #14
 1957 112c 1A75     		strb	r2, [r3, #20]
 1958 112e 0126     		movs	r6, #1
 1959 1130 A1E7     		b	.L186
 1960              	.L200:
 1961 1132 5CAE     		add	r6, sp, #368
 1962 1134 0027     		movs	r7, #0
 1963 1136 7923     		movs	r3, #121
 1964 1138 1AA9     		add	r1, sp, #104
 1965 113a 2846     		mov	r0, r5
 1966 113c 3770     		strb	r7, [r6]
 1967 113e CDE91A63 		strd	r6, r3, [sp, #104]
 1968 1142 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 1969 1146 0028     		cmp	r0, #0
 1970 1148 03F05D81 		beq	.L402
 1971 114c B24A     		ldr	r2, .L1939+4
 1972 114e 0097     		str	r7, [sp]
 1973 1150 CDE90177 		strd	r7, r7, [sp, #4]
 1974 1154 3346     		mov	r3, r6
 1975 1156 2946     		mov	r1, r5
 1976 1158 2046     		mov	r0, r4
 1977 115a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 1978 115e 3246     		mov	r2, r6
 1979 1160 0028     		cmp	r0, #0
 1980 1162 03F05A87 		beq	.L403
 1981 1166 AD49     		ldr	r1, .L1939+8
 1982 1168 4046     		mov	r0, r8
 1983 116a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1984 116e 0126     		movs	r6, #1
 1985 1170 81E7     		b	.L186
 1986              	.L198:
 1987 1172 5321     		movs	r1, #83
 1988 1174 2846     		mov	r0, r5
 1989 1176 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1990 117a 0028     		cmp	r0, #0
 1991 117c 43F02083 		bne	.L1799
 1992              	.L331:
 1993 1180 0126     		movs	r6, #1
 1994 1182 78E7     		b	.L186
 1995              	.L197:
ARM GAS  /tmp/ccM7BG9e.s 			page 36


 1996 1184 94F8AA30 		ldrb	r3, [r4, #170]	@ zero_extendqisi2
 1997 1188 002B     		cmp	r3, #0
 1998 118a 43F07684 		bne	.L1800
 1999 118e A14B     		ldr	r3, .L1939
 2000 1190 DB69     		ldr	r3, [r3, #28]
 2001 1192 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2002 1194 002B     		cmp	r3, #0
 2003 1196 43F0CF82 		bne	.L396
 2004 119a A149     		ldr	r1, .L1939+12
 2005 119c 4046     		mov	r0, r8
 2006 119e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2007 11a2 0226     		movs	r6, #2
 2008 11a4 67E7     		b	.L186
 2009              	.L196:
 2010 11a6 2046     		mov	r0, r4
 2011 11a8 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 2012 11ac 0028     		cmp	r0, #0
 2013 11ae E7D1     		bne	.L331
 2014 11b0 2046     		mov	r0, r4
 2015 11b2 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
 2016 11b6 0646     		mov	r6, r0
 2017 11b8 0028     		cmp	r0, #0
 2018 11ba E1D1     		bne	.L331
 2019 11bc 2946     		mov	r1, r5
 2020 11be 2046     		mov	r0, r4
 2021 11c0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2022 11c4 0028     		cmp	r0, #0
 2023 11c6 3EF444AF 		beq	.L742
 2024 11ca 2046     		mov	r0, r4
 2025 11cc FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2026 11d0 0028     		cmp	r0, #0
 2027 11d2 45F0E380 		bne	.L1801
 2028 11d6 D4F84434 		ldr	r3, [r4, #1092]
 2029 11da 002B     		cmp	r3, #0
 2030 11dc 05F0D780 		beq	.L1802
 2031 11e0 2068     		ldr	r0, [r4]
 2032 11e2 FFF7FEFF 		bl	_ZNK8Platform9IsPowerOkEv
 2033 11e6 0028     		cmp	r0, #0
 2034 11e8 05F0BB82 		beq	.L1803
 2035 11ec D4F84834 		ldr	r3, [r4, #1096]
 2036 11f0 002B     		cmp	r3, #0
 2037 11f2 0CBF     		ite	eq
 2038 11f4 0126     		moveq	r6, #1
 2039 11f6 0026     		movne	r6, #0
 2040 11f8 45F08A82 		bne	.L1804
 2041              	.L393:
 2042 11fc 3146     		mov	r1, r6
 2043 11fe 2046     		mov	r0, r4
 2044 1200 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 2045 1204 0126     		movs	r6, #1
 2046 1206 36E7     		b	.L186
 2047              	.L195:
 2048 1208 236C     		ldr	r3, [r4, #64]
 2049 120a 1868     		ldr	r0, [r3]
 2050 120c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2051 1210 8368     		ldr	r3, [r0, #8]
 2052 1212 002B     		cmp	r3, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 37


 2053 1214 02F03E87 		beq	.L379
 2054 1218 236C     		ldr	r3, [r4, #64]
 2055 121a 1B68     		ldr	r3, [r3]
 2056 121c AB42     		cmp	r3, r5
 2057 121e 02F03987 		beq	.L379
 2058 1222 8049     		ldr	r1, .L1939+16
 2059 1224 4046     		mov	r0, r8
 2060 1226 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2061 122a 0226     		movs	r6, #2
 2062 122c 23E7     		b	.L186
 2063              	.L199:
 2064 122e 794B     		ldr	r3, .L1939
 2065 1230 DB69     		ldr	r3, [r3, #28]
 2066 1232 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2067 1234 002B     		cmp	r3, #0
 2068 1236 03F0F380 		beq	.L401
 2069 123a 236C     		ldr	r3, [r4, #64]
 2070 123c 1868     		ldr	r0, [r3]
 2071 123e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2072 1242 8146     		mov	r9, r0
 2073 1244 8068     		ldr	r0, [r0, #8]
 2074 1246 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2075 124a 0746     		mov	r7, r0
 2076 124c E068     		ldr	r0, [r4, #12]
 2077 124e 0368     		ldr	r3, [r0]
 2078 1250 9B68     		ldr	r3, [r3, #8]
 2079 1252 9847     		blx	r3
 2080 1254 3F1A     		subs	r7, r7, r0
 2081 1256 D9F80800 		ldr	r0, [r9, #8]
 2082 125a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2083 125e 3A46     		mov	r2, r7
 2084 1260 0346     		mov	r3, r0
 2085 1262 7149     		ldr	r1, .L1939+20
 2086 1264 4046     		mov	r0, r8
 2087 1266 0126     		movs	r6, #1
 2088 1268 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2089 126c 03E7     		b	.L186
 2090              	.L192:
 2091 126e 2946     		mov	r1, r5
 2092 1270 2046     		mov	r0, r4
 2093 1272 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2094 1276 8246     		mov	r10, r0
 2095 1278 0028     		cmp	r0, #0
 2096 127a 3EF4EAAE 		beq	.L742
 2097 127e 5321     		movs	r1, #83
 2098 1280 2846     		mov	r0, r5
 2099 1282 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2100 1286 0028     		cmp	r0, #0
 2101 1288 44F04582 		bne	.L1805
 2102 128c 8046     		mov	r8, r0
 2103              	.L356:
 2104 128e 5221     		movs	r1, #82
 2105 1290 2846     		mov	r0, r5
 2106 1292 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2107 1296 0028     		cmp	r0, #0
 2108 1298 44F03782 		bne	.L1806
 2109 129c 0646     		mov	r6, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 38


 2110              	.L357:
 2111 129e 0DF16809 		add	r9, sp, #104
 2112 12a2 0023     		movs	r3, #0
 2113 12a4 5021     		movs	r1, #80
 2114 12a6 2846     		mov	r0, r5
 2115 12a8 89F80030 		strb	r3, [r9]
 2116 12ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2117 12b0 5CAF     		add	r7, sp, #368
 2118 12b2 7923     		movs	r3, #121
 2119 12b4 0028     		cmp	r0, #0
 2120 12b6 04F05380 		beq	.L358
 2121 12ba 3946     		mov	r1, r7
 2122 12bc 2846     		mov	r0, r5
 2123 12be C7E90093 		strd	r9, r3, [r7]
 2124 12c2 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2125              	.L359:
 2126 12c6 B8F1020F 		cmp	r8, #2
 2127 12ca 04F01E85 		beq	.L1807
 2128 12ce B8F1030F 		cmp	r8, #3
 2129 12d2 04F01583 		beq	.L1808
 2130 12d6 0DF1600B 		add	fp, sp, #96
 2131 12da 5846     		mov	r0, fp
 2132 12dc FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2133 12e0 0646     		mov	r6, r0
 2134 12e2 0028     		cmp	r0, #0
 2135 12e4 3EF4B5AE 		beq	.L742
 2136 12e8 2068     		ldr	r0, [r4]
 2137 12ea FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 2138 12ee 0028     		cmp	r0, #0
 2139 12f0 04F07186 		beq	.L369
 2140 12f4 2068     		ldr	r0, [r4]
 2141 12f6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 2142 12fa 0128     		cmp	r0, #1
 2143 12fc 04F06B86 		beq	.L369
 2144              	.L368:
 2145 1300 636C     		ldr	r3, [r4, #68]
 2146 1302 1B68     		ldr	r3, [r3]
 2147 1304 AB42     		cmp	r3, r5
 2148 1306 04F04F87 		beq	.L370
 2149 130a E36B     		ldr	r3, [r4, #60]
 2150 130c 1B68     		ldr	r3, [r3]
 2151 130e AB42     		cmp	r3, r5
 2152 1310 04F04A87 		beq	.L370
 2153              	.L371:
 2154 1314 2368     		ldr	r3, [r4]
 2155 1316 4946     		mov	r1, r9
 2156 1318 D3F8B409 		ldr	r0, [r3, #2484]
 2157 131c 3A46     		mov	r2, r7
 2158 131e FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 2159 1322 0028     		cmp	r0, #0
 2160 1324 05F07481 		beq	.L372
 2161 1328 DFF80491 		ldr	r9, .L1939+28
 2162 132c A846     		mov	r8, r5
 2163 132e 0DE0     		b	.L375
 2164              	.L1810:
 2165 1330 2C25     		movs	r5, #44
 2166 1332 CDE900E5 		strd	lr, r5, [sp]
ARM GAS  /tmp/ccM7BG9e.s 			page 39


 2167 1336 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2168              	.L374:
 2169 133a 2368     		ldr	r3, [r4]
 2170 133c 3946     		mov	r1, r7
 2171 133e D3F8B409 		ldr	r0, [r3, #2484]
 2172 1342 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 2173 1346 0028     		cmp	r0, #0
 2174 1348 04F05C86 		beq	.L1809
 2175              	.L375:
 2176 134c DBF800C0 		ldr	ip, [fp]
 2177 1350 3649     		ldr	r1, .L1939+24
 2178 1352 4FF0220E 		mov	lr, #34
 2179 1356 0DF27113 		addw	r3, sp, #369
 2180 135a 7246     		mov	r2, lr
 2181 135c 6046     		mov	r0, ip
 2182 135e 002E     		cmp	r6, #0
 2183 1360 E6D1     		bne	.L1810
 2184 1362 0DF27112 		addw	r2, sp, #369
 2185 1366 4946     		mov	r1, r9
 2186 1368 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2187 136c E5E7     		b	.L374
 2188              	.L194:
 2189 136e 2946     		mov	r1, r5
 2190 1370 2046     		mov	r0, r4
 2191 1372 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2192 1376 0028     		cmp	r0, #0
 2193 1378 3EF46BAE 		beq	.L742
 2194 137c 5021     		movs	r1, #80
 2195 137e 2846     		mov	r0, r5
 2196 1380 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2197 1384 0028     		cmp	r0, #0
 2198 1386 44F0BA81 		bne	.L1811
 2199 138a 0146     		mov	r1, r0
 2200              	.L378:
 2201 138c 2368     		ldr	r3, [r4]
 2202 138e 4246     		mov	r2, r8
 2203 1390 D3F8B409 		ldr	r0, [r3, #2484]
 2204 1394 FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjRK9StringRef
 2205 1398 0646     		mov	r6, r0
 2206 139a 6CE6     		b	.L186
 2207              	.L193:
 2208 139c 2946     		mov	r1, r5
 2209 139e 2046     		mov	r0, r4
 2210 13a0 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2211 13a4 0028     		cmp	r0, #0
 2212 13a6 3EF454AE 		beq	.L742
 2213 13aa 5021     		movs	r1, #80
 2214 13ac 2846     		mov	r0, r5
 2215 13ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2216 13b2 0028     		cmp	r0, #0
 2217 13b4 44F0BC81 		bne	.L1812
 2218 13b8 0146     		mov	r1, r0
 2219              	.L377:
 2220 13ba 2368     		ldr	r3, [r4]
 2221 13bc 4246     		mov	r2, r8
 2222 13be D3F8B409 		ldr	r0, [r3, #2484]
 2223 13c2 0123     		movs	r3, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 40


 2224 13c4 FFF7FEFF 		bl	_ZN11MassStorage5MountEjRK9StringRefb
 2225 13c8 0646     		mov	r6, r0
 2226 13ca 54E6     		b	.L186
 2227              	.L190:
 2228 13cc 94F8A860 		ldrb	r6, [r4, #168]	@ zero_extendqisi2
 2229 13d0 012E     		cmp	r6, #1
 2230 13d2 03F09481 		beq	.L341
 2231 13d6 022E     		cmp	r6, #2
 2232 13d8 42F0A986 		bne	.L335
 2233 13dc 5021     		movs	r1, #80
 2234 13de 2846     		mov	r0, r5
 2235 13e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2236 13e4 0028     		cmp	r0, #0
 2237 13e6 44F01982 		bne	.L1813
 2238 13ea 2068     		ldr	r0, [r4]
 2239 13ec 00F60420 		addw	r0, r0, #2564
 2240 13f0 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2241 13f4 2068     		ldr	r0, [r4]
 2242 13f6 00F62420 		addw	r0, r0, #2596
 2243 13fa FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2244 13fe 2068     		ldr	r0, [r4]
 2245 1400 00F64420 		addw	r0, r0, #2628
 2246 1404 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2247 1408 2068     		ldr	r0, [r4]
 2248 140a 00F66420 		addw	r0, r0, #2660
 2249 140e FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 2250 1412 B5E6     		b	.L331
 2251              	.L1940:
 2252              		.align	2
 2253              	.L1939:
 2254 1414 00000000 		.word	reprap
 2255 1418 9C020000 		.word	.LC55
 2256 141c 80040000 		.word	.LC72
 2257 1420 18040000 		.word	.LC69
 2258 1424 D0020000 		.word	.LC60
 2259 1428 50040000 		.word	.LC70
 2260 142c B8020000 		.word	.LC57
 2261 1430 C4020000 		.word	.LC58
 2262              	.L191:
 2263 1434 2946     		mov	r1, r5
 2264 1436 2046     		mov	r0, r4
 2265 1438 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2266 143c 0028     		cmp	r0, #0
 2267 143e 3EF408AE 		beq	.L742
 2268 1442 D4F89832 		ldr	r3, [r4, #664]
 2269 1446 002B     		cmp	r3, #0
 2270 1448 02F05786 		beq	.L994
 2271 144c 0026     		movs	r6, #0
 2272 144e B246     		mov	r10, r6
 2273 1450 04F25949 		addw	r9, r4, #1113
 2274 1454 4FF0010B 		mov	fp, #1
 2275 1458 05E0     		b	.L346
 2276              	.L345:
 2277 145a D4F89832 		ldr	r3, [r4, #664]
 2278 145e 0136     		adds	r6, r6, #1
 2279 1460 B342     		cmp	r3, r6
 2280 1462 42F24B86 		bls	.L344
ARM GAS  /tmp/ccM7BG9e.s 			page 41


 2281              	.L346:
 2282 1466 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 2283 146a 2846     		mov	r0, r5
 2284 146c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2285 1470 0746     		mov	r7, r0
 2286 1472 0028     		cmp	r0, #0
 2287 1474 F1D0     		beq	.L345
 2288 1476 D4F87434 		ldr	r3, [r4, #1140]
 2289 147a 2068     		ldr	r0, [r4]
 2290 147c 0BFA06F2 		lsl	r2, fp, r6
 2291 1480 23EA0203 		bic	r3, r3, r2
 2292 1484 C4F87434 		str	r3, [r4, #1140]
 2293 1488 3146     		mov	r1, r6
 2294 148a FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 2295 148e BA46     		mov	r10, r7
 2296 1490 E3E7     		b	.L345
 2297              	.L189:
 2298 1492 5321     		movs	r1, #83
 2299 1494 2846     		mov	r0, r5
 2300 1496 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2301 149a 0028     		cmp	r0, #0
 2302 149c 3FF470AE 		beq	.L331
 2303 14a0 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 2304 14a4 022B     		cmp	r3, #2
 2305 14a6 04F08581 		beq	.L1814
 2306 14aa 0526     		movs	r6, #5
 2307 14ac E3E5     		b	.L186
 2308              	.L238:
 2309 14ae 0026     		movs	r6, #0
 2310 14b0 1AAB     		add	r3, sp, #104
 2311 14b2 5CAA     		add	r2, sp, #368
 2312 14b4 4421     		movs	r1, #68
 2313 14b6 2846     		mov	r0, r5
 2314 14b8 5C96     		str	r6, [sp, #368]
 2315 14ba FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2316 14be 5C9B     		ldr	r3, [sp, #368]
 2317 14c0 B342     		cmp	r3, r6
 2318 14c2 04DB     		blt	.L628
 2319 14c4 D4F8A022 		ldr	r2, [r4, #672]
 2320 14c8 9342     		cmp	r3, r2
 2321 14ca C3F2A586 		blt	.L1815
 2322              	.L628:
 2323 14ce 0126     		movs	r6, #1
 2324 14d0 D1E5     		b	.L186
 2325              	.L188:
 2326 14d2 5321     		movs	r1, #83
 2327 14d4 2846     		mov	r0, r5
 2328 14d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2329 14da 0028     		cmp	r0, #0
 2330 14dc 3FF450AE 		beq	.L331
 2331 14e0 94F8A860 		ldrb	r6, [r4, #168]	@ zero_extendqisi2
 2332 14e4 012E     		cmp	r6, #1
 2333 14e6 03F04787 		beq	.L336
 2334 14ea 022E     		cmp	r6, #2
 2335 14ec 42F01F86 		bne	.L335
 2336 14f0 2846     		mov	r0, r5
 2337 14f2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  /tmp/ccM7BG9e.s 			page 42


 2338 14f6 5021     		movs	r1, #80
 2339 14f8 2846     		mov	r0, r5
 2340 14fa B0EE408A 		vmov.f32	s16, s0
 2341 14fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2342 1502 28B1     		cbz	r0, .L338
 2343 1504 2846     		mov	r0, r5
 2344 1506 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2345 150a 0328     		cmp	r0, #3
 2346 150c 03F24387 		bhi	.L340
 2347              	.L338:
 2348 1510 4301     		lsls	r3, r0, #5
 2349 1512 2068     		ldr	r0, [r4]
 2350 1514 03F60423 		addw	r3, r3, #2564
 2351 1518 B0EE480A 		vmov.f32	s0, s16
 2352 151c 1844     		add	r0, r0, r3
 2353 151e FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 2354 1522 0126     		movs	r6, #1
 2355 1524 A7E5     		b	.L186
 2356              	.L299:
 2357 1526 4921     		movs	r1, #73
 2358 1528 2846     		mov	r0, r5
 2359 152a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2360 152e 0028     		cmp	r0, #0
 2361 1530 43F04D83 		bne	.L1816
 2362 1534 0646     		mov	r6, r0
 2363              	.L882:
 2364 1536 5021     		movs	r1, #80
 2365 1538 2846     		mov	r0, r5
 2366 153a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2367 153e 0028     		cmp	r0, #0
 2368 1540 02F06F86 		beq	.L883
 2369 1544 2846     		mov	r0, r5
 2370 1546 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2371 154a 5321     		movs	r1, #83
 2372 154c 0746     		mov	r7, r0
 2373 154e 2846     		mov	r0, r5
 2374 1550 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2375 1554 0028     		cmp	r0, #0
 2376 1556 3FF413AE 		beq	.L331
 2377 155a 2846     		mov	r0, r5
 2378 155c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2379 1560 0128     		cmp	r0, #1
 2380 1562 FFB2     		uxtb	r7, r7
 2381 1564 04F03284 		beq	.L1817
 2382 1568 D34B     		ldr	r3, .L1941
 2383 156a 3146     		mov	r1, r6
 2384 156c 5868     		ldr	r0, [r3, #4]
 2385 156e 3A46     		mov	r2, r7
 2386 1570 4346     		mov	r3, r8
 2387 1572 FFF7FEFF 		bl	_ZN7Network15DisableProtocolEjhRK9StringRef
 2388 1576 0646     		mov	r6, r0
 2389 1578 7DE5     		b	.L186
 2390              	.L298:
 2391 157a 4246     		mov	r2, r8
 2392 157c 2946     		mov	r1, r5
 2393 157e 2046     		mov	r0, r4
 2394 1580 FFF7FEFF 		bl	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
ARM GAS  /tmp/ccM7BG9e.s 			page 43


 2395 1584 0646     		mov	r6, r0
 2396 1586 76E5     		b	.L186
 2397              	.L232:
 2398 1588 2946     		mov	r1, r5
 2399 158a 2046     		mov	r0, r4
 2400 158c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2401 1590 0028     		cmp	r0, #0
 2402 1592 3EF45EAD 		beq	.L742
 2403 1596 2046     		mov	r0, r4
 2404 1598 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 2405 159c 0028     		cmp	r0, #0
 2406 159e 3EF458AD 		beq	.L742
 2407 15a2 5021     		movs	r1, #80
 2408 15a4 2846     		mov	r0, r5
 2409 15a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2410 15aa 0246     		mov	r2, r0
 2411 15ac 0028     		cmp	r0, #0
 2412 15ae 44F00185 		bne	.L1818
 2413 15b2 BE2E     		cmp	r6, #190
 2414 15b4 04F0D883 		beq	.L978
 2415              	.L988:
 2416 15b8 DFF8FCB2 		ldr	fp, .L1941
 2417 15bc DBF80C30 		ldr	r3, [fp, #12]
 2418 15c0 1344     		add	r3, r3, r2
 2419 15c2 93F9D660 		ldrsb	r6, [r3, #214]
 2420              	.L546:
 2421 15c6 002E     		cmp	r6, #0
 2422 15c8 FFF6DAAD 		blt	.L331
 2423 15cc 5221     		movs	r1, #82
 2424 15ce 2846     		mov	r0, r5
 2425 15d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2426 15d4 0746     		mov	r7, r0
 2427 15d6 30B9     		cbnz	r0, .L1790
 2428 15d8 5321     		movs	r1, #83
 2429 15da 2846     		mov	r0, r5
 2430 15dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2431 15e0 0028     		cmp	r0, #0
 2432 15e2 3FF4CDAD 		beq	.L331
 2433              	.L1790:
 2434 15e6 2846     		mov	r0, r5
 2435 15e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2436 15ec 3146     		mov	r1, r6
 2437 15ee DBF80C00 		ldr	r0, [fp, #12]
 2438 15f2 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 2439 15f6 3146     		mov	r1, r6
 2440 15f8 DBF80C00 		ldr	r0, [fp, #12]
 2441 15fc FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 2442 1600 94F88636 		ldrb	r3, [r4, #1670]	@ zero_extendqisi2
 2443 1604 002B     		cmp	r3, #0
 2444 1606 04F0D686 		beq	.L1819
 2445              	.L502:
 2446 160a 0023     		movs	r3, #0
 2447 160c 84F88536 		strb	r3, [r4, #1669]
 2448 1610 84F88636 		strb	r3, [r4, #1670]
 2449 1614 0126     		movs	r6, #1
 2450 1616 2EE5     		b	.L186
 2451              	.L231:
ARM GAS  /tmp/ccM7BG9e.s 			page 44


 2452 1618 5021     		movs	r1, #80
 2453 161a 2846     		mov	r0, r5
 2454 161c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2455 1620 0028     		cmp	r0, #0
 2456 1622 43F0FF83 		bne	.L1820
 2457              	.L540:
 2458 1626 DFF890B2 		ldr	fp, .L1941
 2459 162a DBF80C30 		ldr	r3, [fp, #12]
 2460 162e 1844     		add	r0, r0, r3
 2461 1630 90F9D270 		ldrsb	r7, [r0, #210]
 2462 1634 002F     		cmp	r7, #0
 2463 1636 FFF6A3AD 		blt	.L331
 2464 163a 5321     		movs	r1, #83
 2465 163c 2846     		mov	r0, r5
 2466 163e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2467 1642 30B1     		cbz	r0, .L542
 2468 1644 2846     		mov	r0, r5
 2469 1646 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2470 164a 0128     		cmp	r0, #1
 2471 164c 0646     		mov	r6, r0
 2472 164e 04F0D284 		beq	.L1821
 2473              	.L542:
 2474 1652 3946     		mov	r1, r7
 2475 1654 DBF80C00 		ldr	r0, [fp, #12]
 2476 1658 0022     		movs	r2, #0
 2477 165a FFF7FEFF 		bl	_ZN4Heat7StandbyEaPK4Tool
 2478 165e 0126     		movs	r6, #1
 2479 1660 09E5     		b	.L186
 2480              	.L268:
 2481 1662 2946     		mov	r1, r5
 2482 1664 2046     		mov	r0, r4
 2483 1666 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2484 166a 0028     		cmp	r0, #0
 2485 166c 3EF4F1AC 		beq	.L742
 2486 1670 0DF16809 		add	r9, sp, #104
 2487 1674 4846     		mov	r0, r9
 2488 1676 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2489 167a 8246     		mov	r10, r0
 2490 167c 0028     		cmp	r0, #0
 2491 167e 3EF4E8AC 		beq	.L742
 2492 1682 2368     		ldr	r3, [r4]
 2493 1684 8D4A     		ldr	r2, .L1941+4
 2494 1686 D3F8B409 		ldr	r0, [r3, #2484]
 2495 168a 8D49     		ldr	r1, .L1941+8
 2496 168c 0023     		movs	r3, #0
 2497 168e FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2498 1692 0646     		mov	r6, r0
 2499 1694 0028     		cmp	r0, #0
 2500 1696 04F0CF84 		beq	.L1822
 2501 169a D9F80000 		ldr	r0, [r9]
 2502 169e FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 2503 16a2 5CAF     		add	r7, sp, #368
 2504 16a4 8046     		mov	r8, r0
 2505 16a6 10E0     		b	.L748
 2506              	.L1823:
 2507 16a8 B8F1000F 		cmp	r8, #0
 2508 16ac 14D0     		beq	.L744
ARM GAS  /tmp/ccM7BG9e.s 			page 45


 2509 16ae 8045     		cmp	r8, r0
 2510 16b0 94BF     		ite	ls
 2511 16b2 4046     		movls	r0, r8
 2512 16b4 A8EB0008 		subhi	r8, r8, r0
 2513 16b8 0246     		mov	r2, r0
 2514 16ba 3946     		mov	r1, r7
 2515 16bc D9F80000 		ldr	r0, [r9]
 2516 16c0 98BF     		it	ls
 2517 16c2 4FF00008 		movls	r8, #0
 2518 16c6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 2519              	.L748:
 2520 16ca 8022     		movs	r2, #128
 2521 16cc 3946     		mov	r1, r7
 2522 16ce 3046     		mov	r0, r6
 2523 16d0 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 2524 16d4 0028     		cmp	r0, #0
 2525 16d6 E7D1     		bne	.L1823
 2526              	.L744:
 2527 16d8 3046     		mov	r0, r6
 2528 16da FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2529 16de 2946     		mov	r1, r5
 2530 16e0 2046     		mov	r0, r4
 2531 16e2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 2532 16e6 D9F80030 		ldr	r3, [r9]
 2533 16ea 2946     		mov	r1, r5
 2534 16ec 2046     		mov	r0, r4
 2535 16ee 0022     		movs	r2, #0
 2536 16f0 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 2537 16f4 FEF7AFBC 		b	.L1123
 2538              	.L267:
 2539 16f8 AB68     		ldr	r3, [r5, #8]
 2540 16fa 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2541 16fc 9E06     		lsls	r6, r3, #26
 2542 16fe 3FF53FAD 		bmi	.L331
 2543 1702 2946     		mov	r1, r5
 2544 1704 2046     		mov	r0, r4
 2545 1706 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2546 170a 0028     		cmp	r0, #0
 2547 170c 3EF4A1AC 		beq	.L742
 2548 1710 694E     		ldr	r6, .L1941
 2549 1712 0121     		movs	r1, #1
 2550 1714 F068     		ldr	r0, [r6, #12]
 2551 1716 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 2552 171a F068     		ldr	r0, [r6, #12]
 2553 171c FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 2554 1720 B368     		ldr	r3, [r6, #8]
 2555 1722 D3F8580A 		ldr	r0, [r3, #2648]
 2556 1726 0368     		ldr	r3, [r0]
 2557 1728 9B69     		ldr	r3, [r3, #24]
 2558 172a 9847     		blx	r3
 2559 172c 2068     		ldr	r0, [r4]
 2560 172e FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 2561 1732 4FF4FB73 		mov	r3, #502
 2562 1736 0093     		str	r3, [sp]
 2563 1738 604A     		ldr	r2, .L1941+4
 2564 173a 0123     		movs	r3, #1
 2565 173c 2946     		mov	r1, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 46


 2566 173e 2046     		mov	r0, r4
 2567 1740 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2568 1744 0126     		movs	r6, #1
 2569 1746 96E4     		b	.L186
 2570              	.L266:
 2571 1748 AB68     		ldr	r3, [r5, #8]
 2572 174a 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 2573 174c 13F0300F 		tst	r3, #48
 2574 1750 7FF416AD 		bne	.L331
 2575 1754 94F8AC30 		ldrb	r3, [r4, #172]	@ zero_extendqisi2
 2576 1758 13B1     		cbz	r3, .L741
 2577 175a 0123     		movs	r3, #1
 2578 175c 84F88836 		strb	r3, [r4, #1672]
 2579              	.L741:
 2580 1760 40F2F513 		movw	r3, #501
 2581 1764 0093     		str	r3, [sp]
 2582 1766 574A     		ldr	r2, .L1941+12
 2583 1768 0123     		movs	r3, #1
 2584 176a 2946     		mov	r1, r5
 2585 176c 2046     		mov	r0, r4
 2586 176e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2587 1772 0126     		movs	r6, #1
 2588 1774 7FE4     		b	.L186
 2589              	.L265:
 2590 1776 4246     		mov	r2, r8
 2591 1778 2946     		mov	r1, r5
 2592 177a 2046     		mov	r0, r4
 2593 177c FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 2594 1780 0646     		mov	r6, r0
 2595 1782 78E4     		b	.L186
 2596              	.L264:
 2597 1784 2946     		mov	r1, r5
 2598 1786 2046     		mov	r0, r4
 2599 1788 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2600 178c 0028     		cmp	r0, #0
 2601 178e 3EF460AC 		beq	.L742
 2602 1792 5321     		movs	r1, #83
 2603 1794 2846     		mov	r0, r5
 2604 1796 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2605 179a 0028     		cmp	r0, #0
 2606 179c 03F0E885 		beq	.L1052
 2607 17a0 2846     		mov	r0, r5
 2608 17a2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2609 17a6 0328     		cmp	r0, #3
 2610 17a8 03F2F585 		bhi	.L340
 2611 17ac 4301     		lsls	r3, r0, #5
 2612 17ae 03F60423 		addw	r3, r3, #2564
 2613              	.L729:
 2614 17b2 2668     		ldr	r6, [r4]
 2615 17b4 5021     		movs	r1, #80
 2616 17b6 2846     		mov	r0, r5
 2617 17b8 1E44     		add	r6, r6, r3
 2618 17ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2619 17be 88B3     		cbz	r0, .L730
 2620 17c0 5CAF     		add	r7, sp, #368
 2621 17c2 0DF16809 		add	r9, sp, #104
 2622 17c6 4FF6FF7A 		movw	r10, #65535
ARM GAS  /tmp/ccM7BG9e.s 			page 47


 2623 17ca 4FF0020C 		mov	ip, #2
 2624 17ce 0023     		movs	r3, #0
 2625 17d0 3946     		mov	r1, r7
 2626 17d2 4A46     		mov	r2, r9
 2627 17d4 2846     		mov	r0, r5
 2628 17d6 C7E900AA 		strd	r10, r10, [r7]
 2629 17da C9F800C0 		str	ip, [r9]
 2630 17de FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2631 17e2 3B68     		ldr	r3, [r7]
 2632 17e4 B3F5803F 		cmp	r3, #65536
 2633 17e8 D9F80030 		ldr	r3, [r9]
 2634 17ec 28BF     		it	cs
 2635 17ee C7F800A0 		strcs	r10, [r7]
 2636 17f2 012B     		cmp	r3, #1
 2637 17f4 03D9     		bls	.L732
 2638 17f6 7B68     		ldr	r3, [r7, #4]
 2639 17f8 B3F5803F 		cmp	r3, #65536
 2640 17fc 02D3     		bcc	.L733
 2641              	.L732:
 2642 17fe 4FF6FF73 		movw	r3, #65535
 2643 1802 7B60     		str	r3, [r7, #4]
 2644              	.L733:
 2645 1804 4921     		movs	r1, #73
 2646 1806 2846     		mov	r0, r5
 2647 1808 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2648 180c 0028     		cmp	r0, #0
 2649 180e 44F02184 		bne	.L1824
 2650              	.L734:
 2651 1812 0346     		mov	r3, r0
 2652 1814 BA88     		ldrh	r2, [r7, #4]
 2653 1816 3988     		ldrh	r1, [r7]
 2654 1818 3046     		mov	r0, r6
 2655 181a FFF7FEFF 		bl	_ZN7Spindle7SetPinsEttb
 2656 181e 0028     		cmp	r0, #0
 2657 1820 04F01184 		beq	.L1825
 2658              	.L730:
 2659 1824 4621     		movs	r1, #70
 2660 1826 2846     		mov	r0, r5
 2661 1828 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2662 182c 0028     		cmp	r0, #0
 2663 182e 44F05781 		bne	.L1826
 2664              	.L736:
 2665 1832 5221     		movs	r1, #82
 2666 1834 2846     		mov	r0, r5
 2667 1836 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2668 183a 0028     		cmp	r0, #0
 2669 183c 44F04081 		bne	.L1827
 2670              	.L737:
 2671 1840 5421     		movs	r1, #84
 2672 1842 2846     		mov	r0, r5
 2673 1844 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2674 1848 0028     		cmp	r0, #0
 2675 184a 44F00881 		bne	.L1828
 2676              	.L740:
 2677 184e 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 2678 1852 022B     		cmp	r3, #2
 2679 1854 3FF494AC 		beq	.L331
ARM GAS  /tmp/ccM7BG9e.s 			page 48


 2680 1858 0223     		movs	r3, #2
 2681 185a 84F8A830 		strb	r3, [r4, #168]
 2682 185e 1A49     		ldr	r1, .L1941+16
 2683 1860 4046     		mov	r0, r8
 2684 1862 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2685 1866 0126     		movs	r6, #1
 2686 1868 05E4     		b	.L186
 2687              	.L260:
 2688 186a 4E21     		movs	r1, #78
 2689 186c 2846     		mov	r0, r5
 2690 186e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2691 1872 0028     		cmp	r0, #0
 2692 1874 42F00D87 		bne	.L1829
 2693 1878 4421     		movs	r1, #68
 2694 187a 2846     		mov	r0, r5
 2695 187c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2696 1880 0028     		cmp	r0, #0
 2697 1882 42F01587 		bne	.L716
 2698 1886 2768     		ldr	r7, [r4]
 2699 1888 07F6CC13 		addw	r3, r7, #2508
 2700 188c 07F51D67 		add	r7, r7, #2512
 2701 1890 1868     		ldr	r0, [r3]	@ float
 2702 1892 FFF7FEFF 		bl	__aeabi_f2d
 2703 1896 8246     		mov	r10, r0
 2704 1898 3868     		ldr	r0, [r7]	@ float
 2705 189a 8B46     		mov	fp, r1
 2706 189c FFF7FEFF 		bl	__aeabi_f2d
 2707 18a0 5246     		mov	r2, r10
 2708 18a2 CDE90001 		strd	r0, [sp]
 2709 18a6 5B46     		mov	r3, fp
 2710 18a8 0849     		ldr	r1, .L1941+20
 2711 18aa 4046     		mov	r0, r8
 2712 18ac 0126     		movs	r6, #1
 2713 18ae FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2714 18b2 FFF7E0BB 		b	.L186
 2715              	.L1942:
 2716 18b6 00BF     		.align	2
 2717              	.L1941:
 2718 18b8 00000000 		.word	reprap
 2719 18bc A4000000 		.word	.LC26
 2720 18c0 B0000000 		.word	.LC27
 2721 18c4 440E0000 		.word	.LC153
 2722 18c8 300E0000 		.word	.LC152
 2723 18cc CC0D0000 		.word	.LC148
 2724              	.L258:
 2725 18d0 2368     		ldr	r3, [r4]
 2726 18d2 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 2727 18d6 002B     		cmp	r3, #0
 2728 18d8 3FF452AC 		beq	.L331
 2729 18dc 0126     		movs	r6, #1
 2730 18de 0023     		movs	r3, #0
 2731 18e0 84F85165 		strb	r6, [r4, #1361]
 2732 18e4 874A     		ldr	r2, .L1943
 2733 18e6 0093     		str	r3, [sp]
 2734 18e8 2946     		mov	r1, r5
 2735 18ea 2046     		mov	r0, r4
 2736 18ec FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
ARM GAS  /tmp/ccM7BG9e.s 			page 49


 2737 18f0 FFF7C1BB 		b	.L186
 2738              	.L257:
 2739 18f4 2946     		mov	r1, r5
 2740 18f6 2046     		mov	r0, r4
 2741 18f8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2742 18fc 0028     		cmp	r0, #0
 2743 18fe 7FF43FAC 		bne	.L331
 2744 1902 FEF7A6BB 		b	.L742
 2745              	.L262:
 2746 1906 2946     		mov	r1, r5
 2747 1908 2046     		mov	r0, r4
 2748 190a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2749 190e 0028     		cmp	r0, #0
 2750 1910 3EF49FAB 		beq	.L742
 2751 1914 0023     		movs	r3, #0
 2752 1916 84F8A830 		strb	r3, [r4, #168]
 2753 191a 0126     		movs	r6, #1
 2754 191c FFF7ABBB 		b	.L186
 2755              	.L263:
 2756 1920 2946     		mov	r1, r5
 2757 1922 2046     		mov	r0, r4
 2758 1924 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2759 1928 0028     		cmp	r0, #0
 2760 192a 3EF492AB 		beq	.L742
 2761 192e 0123     		movs	r3, #1
 2762 1930 84F8A830 		strb	r3, [r4, #168]
 2763 1934 5021     		movs	r1, #80
 2764 1936 2846     		mov	r0, r5
 2765 1938 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2766 193c F8B1     		cbz	r0, .L723
 2767 193e 2846     		mov	r0, r5
 2768 1940 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2769 1944 4FF6FF76 		movw	r6, #65535
 2770 1948 8642     		cmp	r6, r0
 2771 194a 28BF     		it	cs
 2772 194c 0646     		movcs	r6, r0
 2773 194e 4921     		movs	r1, #73
 2774 1950 2846     		mov	r0, r5
 2775 1952 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2776 1956 30B1     		cbz	r0, .L724
 2777 1958 2846     		mov	r0, r5
 2778 195a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2779 195e 0028     		cmp	r0, #0
 2780 1960 D4BF     		ite	le
 2781 1962 0020     		movle	r0, #0
 2782 1964 0120     		movgt	r0, #1
 2783              	.L724:
 2784 1966 0246     		mov	r2, r0
 2785 1968 B1B2     		uxth	r1, r6
 2786 196a 2068     		ldr	r0, [r4]
 2787 196c FFF7FEFF 		bl	_ZN8Platform11SetLaserPinEtb
 2788 1970 0028     		cmp	r0, #0
 2789 1972 03F0BE87 		beq	.L725
 2790 1976 6449     		ldr	r1, .L1943+4
 2791 1978 4046     		mov	r0, r8
 2792 197a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2793              	.L723:
ARM GAS  /tmp/ccM7BG9e.s 			page 50


 2794 197e 4621     		movs	r1, #70
 2795 1980 2846     		mov	r0, r5
 2796 1982 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2797 1986 30B1     		cbz	r0, .L726
 2798 1988 2668     		ldr	r6, [r4]
 2799 198a 2846     		mov	r0, r5
 2800 198c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2801 1990 3046     		mov	r0, r6
 2802 1992 FFF7FEFF 		bl	_ZN8Platform20SetLaserPwmFrequencyEf
 2803              	.L726:
 2804 1996 5221     		movs	r1, #82
 2805 1998 2846     		mov	r0, r5
 2806 199a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2807 199e 0028     		cmp	r0, #0
 2808 19a0 3FF4EEAB 		beq	.L331
 2809 19a4 2846     		mov	r0, r5
 2810 19a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2811 19aa F7EE007A 		vmov.f32	s15, #1.0e+0
 2812 19ae B4EE670A 		vcmp.f32	s0, s15
 2813 19b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2814 19b6 48BF     		it	mi
 2815 19b8 B0EE670A 		vmovmi.f32	s0, s15
 2816 19bc 04F26C63 		addw	r3, r4, #1644
 2817 19c0 83ED000A 		vstr.32	s0, [r3]
 2818 19c4 0126     		movs	r6, #1
 2819 19c6 FFF756BB 		b	.L186
 2820              	.L261:
 2821 19ca 2046     		mov	r0, r4
 2822 19cc FFF7FEFF 		bl	_ZNK6GCodes20GetMachineModeStringEv
 2823 19d0 4E49     		ldr	r1, .L1943+8
 2824 19d2 0246     		mov	r2, r0
 2825 19d4 4046     		mov	r0, r8
 2826 19d6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2827 19da 0126     		movs	r6, #1
 2828 19dc FFF74BBB 		b	.L186
 2829              	.L256:
 2830 19e0 4B4B     		ldr	r3, .L1943+12
 2831 19e2 4821     		movs	r1, #72
 2832 19e4 2846     		mov	r0, r5
 2833 19e6 9E68     		ldr	r6, [r3, #8]
 2834 19e8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2835 19ec 0028     		cmp	r0, #0
 2836 19ee 43F0F480 		bne	.L1830
 2837 19f2 96F84D3A 		ldrb	r3, [r6, #2637]	@ zero_extendqisi2
 2838 19f6 002B     		cmp	r3, #0
 2839 19f8 42F0C285 		bne	.L1831
 2840              	.L713:
 2841 19fc 4549     		ldr	r1, .L1943+16
 2842 19fe 4046     		mov	r0, r8
 2843 1a00 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2844 1a04 0126     		movs	r6, #1
 2845 1a06 FFF736BB 		b	.L186
 2846              	.L255:
 2847 1a0a 2946     		mov	r1, r5
 2848 1a0c 2046     		mov	r0, r4
 2849 1a0e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2850 1a12 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 51


 2851 1a14 3EF41DAB 		beq	.L742
 2852 1a18 4246     		mov	r2, r8
 2853 1a1a 2946     		mov	r1, r5
 2854 1a1c 2046     		mov	r0, r4
 2855 1a1e FFF7FEFF 		bl	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 2856 1a22 0646     		mov	r6, r0
 2857 1a24 FFF727BB 		b	.L186
 2858              	.L254:
 2859 1a28 4246     		mov	r2, r8
 2860 1a2a 2946     		mov	r1, r5
 2861 1a2c 2046     		mov	r0, r4
 2862 1a2e FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 2863 1a32 0028     		cmp	r0, #0
 2864 1a34 3FF4A4AB 		beq	.L331
 2865 1a38 0226     		movs	r6, #2
 2866 1a3a FFF71CBB 		b	.L186
 2867              	.L253:
 2868 1a3e 4921     		movs	r1, #73
 2869 1a40 2846     		mov	r0, r5
 2870 1a42 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2871 1a46 0D90     		str	r0, [sp, #52]
 2872 1a48 0028     		cmp	r0, #0
 2873 1a4a 43F08D80 		bne	.L1832
 2874              	.L693:
 2875 1a4e D4F89832 		ldr	r3, [r4, #664]
 2876 1a52 002B     		cmp	r3, #0
 2877 1a54 03F0EF82 		beq	.L694
 2878 1a58 2F4B     		ldr	r3, .L1943+20
 2879 1a5a 304A     		ldr	r2, .L1943+24
 2880 1a5c 0D99     		ldr	r1, [sp, #52]
 2881 1a5e 304F     		ldr	r7, .L1943+28
 2882 1a60 CDF83880 		str	r8, [sp, #56]
 2883 1a64 0126     		movs	r6, #1
 2884 1a66 0029     		cmp	r1, #0
 2885 1a68 08BF     		it	eq
 2886 1a6a 1A46     		moveq	r2, r3
 2887 1a6c 0023     		movs	r3, #0
 2888 1a6e B346     		mov	fp, r6
 2889 1a70 0F92     		str	r2, [sp, #60]
 2890 1a72 3F1B     		subs	r7, r7, r4
 2891 1a74 04F26349 		addw	r9, r4, #1123
 2892 1a78 1E46     		mov	r6, r3
 2893 1a7a 06E0     		b	.L698
 2894              	.L695:
 2895 1a7c D4F89822 		ldr	r2, [r4, #664]
 2896 1a80 09EB0703 		add	r3, r9, r7
 2897 1a84 9A42     		cmp	r2, r3
 2898 1a86 42F29282 		bls	.L1833
 2899              	.L698:
 2900 1a8a 09EB0708 		add	r8, r9, r7
 2901 1a8e 2846     		mov	r0, r5
 2902 1a90 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 2903 1a94 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2904 1a98 0028     		cmp	r0, #0
 2905 1a9a EFD0     		beq	.L695
 2906 1a9c 2946     		mov	r1, r5
 2907 1a9e 2046     		mov	r0, r4
ARM GAS  /tmp/ccM7BG9e.s 			page 52


 2908 1aa0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2909 1aa4 0646     		mov	r6, r0
 2910 1aa6 0028     		cmp	r0, #0
 2911 1aa8 3EF4D3AA 		beq	.L742
 2912 1aac 2846     		mov	r0, r5
 2913 1aae FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 2914 1ab2 4146     		mov	r1, r8
 2915 1ab4 8246     		mov	r10, r0
 2916 1ab6 0D9B     		ldr	r3, [sp, #52]
 2917 1ab8 0246     		mov	r2, r0
 2918 1aba 2046     		mov	r0, r4
 2919 1abc FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
 2920 1ac0 0123     		movs	r3, #1
 2921 1ac2 03FA08F8 		lsl	r8, r3, r8
 2922 1ac6 1749     		ldr	r1, .L1943+32
 2923 1ac8 5346     		mov	r3, r10
 2924 1aca 0028     		cmp	r0, #0
 2925 1acc 02F00180 		beq	.L696
 2926 1ad0 D4F87434 		ldr	r3, [r4, #1140]
 2927 1ad4 23EA0803 		bic	r3, r3, r8
 2928 1ad8 0646     		mov	r6, r0
 2929 1ada C4F87434 		str	r3, [r4, #1140]
 2930 1ade CDE7     		b	.L695
 2931              	.L259:
 2932 1ae0 2368     		ldr	r3, [r4]
 2933 1ae2 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 2934 1ae6 002B     		cmp	r3, #0
 2935 1ae8 3FF44AAB 		beq	.L331
 2936 1aec 0023     		movs	r3, #0
 2937 1aee 84F85135 		strb	r3, [r4, #1361]
 2938 1af2 0D4A     		ldr	r2, .L1943+36
 2939 1af4 0093     		str	r3, [sp]
 2940 1af6 2946     		mov	r1, r5
 2941 1af8 2046     		mov	r0, r4
 2942 1afa FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2943 1afe 0126     		movs	r6, #1
 2944 1b00 FFF7B9BA 		b	.L186
 2945              	.L1944:
 2946              		.align	2
 2947              	.L1943:
 2948 1b04 AC0D0000 		.word	.LC146
 2949 1b08 0C0E0000 		.word	.LC150
 2950 1b0c FC0D0000 		.word	.LC149
 2951 1b10 00000000 		.word	reprap
 2952 1b14 8C0D0000 		.word	.LC145
 2953 1b18 A0000000 		.word	.LC25
 2954 1b1c C40C0000 		.word	.LC137
 2955 1b20 9DFBFFFF 		.word	-1123
 2956 1b24 D80C0000 		.word	.LC138
 2957 1b28 BC0D0000 		.word	.LC147
 2958              	.L252:
 2959 1b2c 4821     		movs	r1, #72
 2960 1b2e 2846     		mov	r0, r5
 2961 1b30 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2962 1b34 0028     		cmp	r0, #0
 2963 1b36 3FF423AB 		beq	.L331
 2964 1b3a 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 53


 2965 1b3c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2966 1b40 0728     		cmp	r0, #7
 2967 1b42 0746     		mov	r7, r0
 2968 1b44 3FF61CAB 		bhi	.L331
 2969 1b48 DFF860B4 		ldr	fp, .L1945+4
 2970 1b4c 00F1100A 		add	r10, r0, #16
 2971 1b50 DBF80C30 		ldr	r3, [fp, #12]
 2972 1b54 4FEA8A02 		lsl	r2, r10, #2
 2973 1b58 1344     		add	r3, r3, r2
 2974 1b5a 0D92     		str	r2, [sp, #52]
 2975 1b5c 5E68     		ldr	r6, [r3, #4]
 2976 1b5e B16B     		ldr	r1, [r6, #56]	@ float
 2977 1b60 326B     		ldr	r2, [r6, #48]	@ float
 2978 1b62 736B     		ldr	r3, [r6, #52]	@ float
 2979 1b64 1491     		str	r1, [sp, #80]	@ float
 2980 1b66 D6F83CC0 		ldr	ip, [r6, #60]	@ float
 2981 1b6a 96F84710 		ldrb	r1, [r6, #71]	@ zero_extendqisi2
 2982 1b6e B6F84400 		ldrh	r0, [r6, #68]
 2983 1b72 CDF854C0 		str	ip, [sp, #84]	@ float
 2984 1b76 0DF1480E 		add	lr, sp, #72
 2985 1b7a D6F840C0 		ldr	ip, [r6, #64]	@ float
 2986 1b7e 1292     		str	r2, [sp, #72]	@ float
 2987 1b80 0DF16809 		add	r9, sp, #104
 2988 1b84 81F00101 		eor	r1, r1, #1
 2989 1b88 7246     		mov	r2, lr
 2990 1b8a 1393     		str	r3, [sp, #76]	@ float
 2991 1b8c CDF858C0 		str	ip, [sp, #88]	@ float
 2992 1b90 0DF14703 		add	r3, sp, #71
 2993 1b94 4FF0000C 		mov	ip, #0
 2994 1b98 1891     		str	r1, [sp, #96]
 2995 1b9a 1790     		str	r0, [sp, #92]
 2996 1b9c 4121     		movs	r1, #65
 2997 1b9e 2846     		mov	r0, r5
 2998 1ba0 8DF847C0 		strb	ip, [sp, #71]
 2999 1ba4 C9F800C0 		str	ip, [r9]
 3000 1ba8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3001 1bac 13A9     		add	r1, sp, #76
 3002 1bae 0A46     		mov	r2, r1
 3003 1bb0 0DF14703 		add	r3, sp, #71
 3004 1bb4 4321     		movs	r1, #67
 3005 1bb6 2846     		mov	r0, r5
 3006 1bb8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3007 1bbc 14A9     		add	r1, sp, #80
 3008 1bbe 0A46     		mov	r2, r1
 3009 1bc0 0DF14703 		add	r3, sp, #71
 3010 1bc4 4421     		movs	r1, #68
 3011 1bc6 2846     		mov	r0, r5
 3012 1bc8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3013 1bcc 18A9     		add	r1, sp, #96
 3014 1bce 0A46     		mov	r2, r1
 3015 1bd0 0DF14703 		add	r3, sp, #71
 3016 1bd4 4221     		movs	r1, #66
 3017 1bd6 2846     		mov	r0, r5
 3018 1bd8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3019 1bdc 15A9     		add	r1, sp, #84
 3020 1bde 0A46     		mov	r2, r1
 3021 1be0 0DF14703 		add	r3, sp, #71
ARM GAS  /tmp/ccM7BG9e.s 			page 54


 3022 1be4 5321     		movs	r1, #83
 3023 1be6 2846     		mov	r0, r5
 3024 1be8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3025 1bec 16A9     		add	r1, sp, #88
 3026 1bee 0A46     		mov	r2, r1
 3027 1bf0 0DF14703 		add	r3, sp, #71
 3028 1bf4 5621     		movs	r1, #86
 3029 1bf6 2846     		mov	r0, r5
 3030 1bf8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3031 1bfc 0DF14703 		add	r3, sp, #71
 3032 1c00 4A46     		mov	r2, r9
 3033 1c02 4921     		movs	r1, #73
 3034 1c04 2846     		mov	r0, r5
 3035 1c06 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3036 1c0a 17A9     		add	r1, sp, #92
 3037 1c0c 0DF14703 		add	r3, sp, #71
 3038 1c10 0A46     		mov	r2, r1
 3039 1c12 2846     		mov	r0, r5
 3040 1c14 4621     		movs	r1, #70
 3041 1c16 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 3042 1c1a 9DF84730 		ldrb	r3, [sp, #71]	@ zero_extendqisi2
 3043 1c1e 002B     		cmp	r3, #0
 3044 1c20 03F0B487 		beq	.L683
 3045 1c24 DDE91731 		ldrd	r3, r1, [sp, #92]
 3046 1c28 D9F80020 		ldr	r2, [r9]
 3047 1c2c DBF80C00 		ldr	r0, [fp, #12]
 3048 1c30 0D9E     		ldr	r6, [sp, #52]
 3049 1c32 9DED162A 		vldr.32	s4, [sp, #88]
 3050 1c36 DDED151A 		vldr.32	s3, [sp, #84]
 3051 1c3a 9DED141A 		vldr.32	s2, [sp, #80]
 3052 1c3e DDED130A 		vldr.32	s1, [sp, #76]
 3053 1c42 9DED120A 		vldr.32	s0, [sp, #72]
 3054 1c46 22F00202 		bic	r2, r2, #2
 3055 1c4a B3F57A7F 		cmp	r3, #1000
 3056 1c4e 02F1FF37 		add	r7, r2, #-1
 3057 1c52 3044     		add	r0, r0, r6
 3058 1c54 28BF     		it	cs
 3059 1c56 4FF47A73 		movcs	r3, #1000
 3060 1c5a B1FA81F1 		clz	r1, r1
 3061 1c5e 7A42     		rsbs	r2, r7, #0
 3062 1c60 7A41     		adcs	r2, r2, r7
 3063 1c62 4909     		lsrs	r1, r1, #5
 3064 1c64 9BB2     		uxth	r3, r3
 3065 1c66 4068     		ldr	r0, [r0, #4]
 3066 1c68 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 3067 1c6c 18B9     		cbnz	r0, .L685
 3068 1c6e CE49     		ldr	r1, .L1945
 3069 1c70 4046     		mov	r0, r8
 3070 1c72 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3071              	.L685:
 3072 1c76 DBF80C20 		ldr	r2, [fp, #12]
 3073 1c7a D9F80030 		ldr	r3, [r9]
 3074 1c7e 02EB8A0A 		add	r10, r2, r10, lsl #2
 3075 1c82 023B     		subs	r3, r3, #2
 3076 1c84 012B     		cmp	r3, #1
 3077 1c86 DAF80420 		ldr	r2, [r10, #4]
 3078 1c8a 8CBF     		ite	hi
ARM GAS  /tmp/ccM7BG9e.s 			page 55


 3079 1c8c 0023     		movhi	r3, #0
 3080 1c8e 0123     		movls	r3, #1
 3081 1c90 82F87D30 		strb	r3, [r2, #125]
 3082              	.L686:
 3083 1c94 0126     		movs	r6, #1
 3084 1c96 FFF7EEB9 		b	.L186
 3085              	.L251:
 3086 1c9a 4246     		mov	r2, r8
 3087 1c9c 2946     		mov	r1, r5
 3088 1c9e 2046     		mov	r0, r4
 3089 1ca0 FFF7FEFF 		bl	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
 3090 1ca4 0646     		mov	r6, r0
 3091 1ca6 FFF7E6B9 		b	.L186
 3092              	.L250:
 3093 1caa 4346     		mov	r3, r8
 3094 1cac 0022     		movs	r2, #0
 3095 1cae 2946     		mov	r1, r5
 3096 1cb0 2046     		mov	r0, r4
 3097 1cb2 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 3098 1cb6 0126     		movs	r6, #1
 3099 1cb8 FFF7DDB9 		b	.L186
 3100              	.L249:
 3101 1cbc 4821     		movs	r1, #72
 3102 1cbe 2846     		mov	r0, r5
 3103 1cc0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3104 1cc4 0028     		cmp	r0, #0
 3105 1cc6 02F03783 		beq	.L673
 3106 1cca 2846     		mov	r0, r5
 3107 1ccc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3108 1cd0 5321     		movs	r1, #83
 3109 1cd2 0646     		mov	r6, r0
 3110 1cd4 2846     		mov	r0, r5
 3111 1cd6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3112 1cda 0028     		cmp	r0, #0
 3113 1cdc 03F00182 		beq	.L674
 3114 1ce0 2846     		mov	r0, r5
 3115 1ce2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3116 1ce6 B0EE408A 		vmov.f32	s16, s0
 3117              	.L675:
 3118 1cea 5021     		movs	r1, #80
 3119 1cec 2846     		mov	r0, r5
 3120 1cee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3121 1cf2 0028     		cmp	r0, #0
 3122 1cf4 43F05683 		bne	.L1834
 3123 1cf8 AC4B     		ldr	r3, .L1945+4
 3124 1cfa DB68     		ldr	r3, [r3, #12]
 3125 1cfc 03EB8603 		add	r3, r3, r6, lsl #2
 3126 1d00 5B6C     		ldr	r3, [r3, #68]
 3127 1d02 D3ED0F8A 		vldr.32	s17, [r3, #60]
 3128              	.L677:
 3129 1d06 072E     		cmp	r6, #7
 3130 1d08 43F2F981 		bls	.L678
 3131 1d0c A849     		ldr	r1, .L1945+8
 3132 1d0e 4046     		mov	r0, r8
 3133 1d10 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3134 1d14 0126     		movs	r6, #1
 3135 1d16 FFF7AEB9 		b	.L186
ARM GAS  /tmp/ccM7BG9e.s 			page 56


 3136              	.L218:
 3137 1d1a 04F29C43 		addw	r3, r4, #1180
 3138 1d1e 0022     		movs	r2, #0
 3139 1d20 1A60     		str	r2, [r3]	@ float
 3140 1d22 2046     		mov	r0, r4
 3141 1d24 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 3142 1d28 0126     		movs	r6, #1
 3143 1d2a FFF7A4B9 		b	.L186
 3144              	.L225:
 3145 1d2e A149     		ldr	r1, .L1945+12
 3146 1d30 4046     		mov	r0, r8
 3147 1d32 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3148 1d36 D4F89832 		ldr	r3, [r4, #664]
 3149 1d3a CBB1     		cbz	r3, .L513
 3150 1d3c DFF894A2 		ldr	r10, .L1945+44
 3151 1d40 04F25947 		addw	r7, r4, #1113
 3152 1d44 0026     		movs	r6, #0
 3153              	.L514:
 3154 1d46 3146     		mov	r1, r6
 3155 1d48 2068     		ldr	r0, [r4]
 3156 1d4a 17F8019F 		ldrb	r9, [r7, #1]!	@ zero_extendqisi2
 3157 1d4e FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3158 1d52 0146     		mov	r1, r0
 3159 1d54 2046     		mov	r0, r4
 3160 1d56 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 3161 1d5a 4A46     		mov	r2, r9
 3162 1d5c 0346     		mov	r3, r0
 3163 1d5e 5146     		mov	r1, r10
 3164 1d60 4046     		mov	r0, r8
 3165 1d62 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3166 1d66 D4F89832 		ldr	r3, [r4, #664]
 3167 1d6a 0136     		adds	r6, r6, #1
 3168 1d6c B342     		cmp	r3, r6
 3169 1d6e EAD8     		bhi	.L514
 3170              	.L513:
 3171 1d70 2068     		ldr	r0, [r4]
 3172 1d72 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3173 1d76 0146     		mov	r1, r0
 3174 1d78 2046     		mov	r0, r4
 3175 1d7a FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 3176 1d7e 8E49     		ldr	r1, .L1945+16
 3177 1d80 0246     		mov	r2, r0
 3178 1d82 4046     		mov	r0, r8
 3179 1d84 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 3180 1d88 0126     		movs	r6, #1
 3181 1d8a FFF774B9 		b	.L186
 3182              	.L224:
 3183 1d8e 5021     		movs	r1, #80
 3184 1d90 2846     		mov	r0, r5
 3185 1d92 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3186 1d96 0028     		cmp	r0, #0
 3187 1d98 01F07286 		beq	.L1015
 3188 1d9c 2846     		mov	r0, r5
 3189 1d9e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3190 1da2 0428     		cmp	r0, #4
 3191 1da4 03F2CE87 		bhi	.L505
 3192 1da8 DFE810F0 		tbh	[pc, r0, lsl #1]
ARM GAS  /tmp/ccM7BG9e.s 			page 57


 3193              	.L507:
 3194 1dac 6A0E     		.2byte	(.L1015-.L507)/2
 3195 1dae 860E     		.2byte	(.L508-.L507)/2
 3196 1db0 830E     		.2byte	(.L1016-.L507)/2
 3197 1db2 8A0E     		.2byte	(.L509-.L507)/2
 3198 1db4 880E     		.2byte	(.L510-.L507)/2
 3199              		.p2align 1
 3200              	.L223:
 3201 1db6 5CAE     		add	r6, sp, #368
 3202 1db8 0022     		movs	r2, #0
 3203 1dba 7923     		movs	r3, #121
 3204 1dbc 1AA9     		add	r1, sp, #104
 3205 1dbe 2846     		mov	r0, r5
 3206 1dc0 CDE91A63 		strd	r6, r3, [sp, #104]
 3207 1dc4 8DF87021 		strb	r2, [sp, #368]
 3208 1dc8 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 3209 1dcc 3146     		mov	r1, r6
 3210 1dce 7748     		ldr	r0, .L1945+4
 3211 1dd0 FFF7FEFF 		bl	_ZN6RepRap10SetMessageEPKc
 3212 1dd4 0126     		movs	r6, #1
 3213 1dd6 FFF74EB9 		b	.L186
 3214              	.L323:
 3215 1dda 4246     		mov	r2, r8
 3216 1ddc 2946     		mov	r1, r5
 3217 1dde 2068     		ldr	r0, [r4]
 3218 1de0 FFF7FEFF 		bl	_ZN8Platform23ConfigureStallDetectionER11GCodeBufferRK9StringRef
 3219 1de4 0028     		cmp	r0, #0
 3220 1de6 3FF4CBA9 		beq	.L331
 3221              	.L919:
 3222 1dea 0226     		movs	r6, #2
 3223 1dec FFF743B9 		b	.L186
 3224              	.L217:
 3225 1df0 5CAF     		add	r7, sp, #368
 3226 1df2 0DF1600B 		add	fp, sp, #96
 3227 1df6 4FF00009 		mov	r9, #0
 3228 1dfa 1AAE     		add	r6, sp, #104
 3229 1dfc 5B46     		mov	r3, fp
 3230 1dfe 3A46     		mov	r2, r7
 3231 1e00 5021     		movs	r1, #80
 3232 1e02 2846     		mov	r0, r5
 3233 1e04 8BF80090 		strb	r9, [fp]
 3234 1e08 C7F80090 		str	r9, [r7]
 3235 1e0c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3236 1e10 3A68     		ldr	r2, [r7]
 3237 1e12 2068     		ldr	r0, [r4]
 3238 1e14 0196     		str	r6, [sp, #4]
 3239 1e16 2B46     		mov	r3, r5
 3240 1e18 CDF80080 		str	r8, [sp]
 3241 1e1c 6A21     		movs	r1, #106
 3242 1e1e 8DF86890 		strb	r9, [sp, #104]
 3243 1e22 FFF7FEFF 		bl	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 3244 1e26 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3245 1e28 4B45     		cmp	r3, r9
 3246 1e2a 0CBF     		ite	eq
 3247 1e2c 0126     		moveq	r6, #1
 3248 1e2e 0226     		movne	r6, #2
 3249 1e30 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 58


 3250 1e32 02F0A386 		beq	.L1835
 3251              	.L460:
 3252 1e36 5221     		movs	r1, #82
 3253 1e38 2846     		mov	r0, r5
 3254 1e3a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3255 1e3e 0028     		cmp	r0, #0
 3256 1e40 3FF419A9 		beq	.L186
 3257 1e44 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 3258 1e48 002B     		cmp	r3, #0
 3259 1e4a 03F0AB80 		beq	.L467
 3260 1e4e 3968     		ldr	r1, [r7]
 3261 1e50 2068     		ldr	r0, [r4]
 3262 1e52 01F58F73 		add	r3, r1, #286
 3263 1e56 04EB8303 		add	r3, r4, r3, lsl #2
 3264 1e5a 93ED000A 		vldr.32	s0, [r3]
 3265 1e5e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 3266 1e62 FFF708B9 		b	.L186
 3267              	.L327:
 3268 1e66 5021     		movs	r1, #80
 3269 1e68 2846     		mov	r0, r5
 3270 1e6a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3271 1e6e 0028     		cmp	r0, #0
 3272 1e70 3FF486A9 		beq	.L331
 3273 1e74 2846     		mov	r0, r5
 3274 1e76 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3275 1e7a 0028     		cmp	r0, #0
 3276 1e7c 3FF480A9 		beq	.L331
 3277 1e80 0246     		mov	r2, r0
 3278 1e82 4E49     		ldr	r1, .L1945+20
 3279 1e84 4046     		mov	r0, r8
 3280 1e86 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3281 1e8a 0126     		movs	r6, #1
 3282 1e8c FFF7F3B8 		b	.L186
 3283              	.L219:
 3284 1e90 94F88536 		ldrb	r3, [r4, #1669]	@ zero_extendqisi2
 3285 1e94 002B     		cmp	r3, #0
 3286 1e96 3FF473A9 		beq	.L331
 3287 1e9a 0126     		movs	r6, #1
 3288 1e9c 84F88666 		strb	r6, [r4, #1670]
 3289 1ea0 FFF7E9B8 		b	.L186
 3290              	.L284:
 3291 1ea4 D4F89832 		ldr	r3, [r4, #664]
 3292 1ea8 002B     		cmp	r3, #0
 3293 1eaa 02F0D986 		beq	.L797
 3294 1eae 0026     		movs	r6, #0
 3295 1eb0 DFED438A 		vldr.32	s17, .L1945+24
 3296 1eb4 9FED438A 		vldr.32	s16, .L1945+28
 3297 1eb8 B346     		mov	fp, r6
 3298 1eba 04F26349 		addw	r9, r4, #1123
 3299 1ebe 05E0     		b	.L801
 3300              	.L798:
 3301 1ec0 D4F89832 		ldr	r3, [r4, #664]
 3302 1ec4 0136     		adds	r6, r6, #1
 3303 1ec6 B342     		cmp	r3, r6
 3304 1ec8 41F29887 		bls	.L1836
 3305              	.L801:
 3306 1ecc 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
ARM GAS  /tmp/ccM7BG9e.s 			page 59


 3307 1ed0 2846     		mov	r0, r5
 3308 1ed2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3309 1ed6 0746     		mov	r7, r0
 3310 1ed8 0028     		cmp	r0, #0
 3311 1eda F1D0     		beq	.L798
 3312 1edc 2846     		mov	r0, r5
 3313 1ede D4F800A0 		ldr	r10, [r4]
 3314 1ee2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3315 1ee6 D4EDBD7A 		vldr.32	s15, [r4, #756]
 3316 1eea 60EE277A 		vmul.f32	s15, s0, s15
 3317 1eee 0AEB860A 		add	r10, r10, r6, lsl #2
 3318 1ef2 67EEA87A 		vmul.f32	s15, s15, s17
 3319 1ef6 BB46     		mov	fp, r7
 3320 1ef8 F4EE677A 		vcmp.f32	s15, s15
 3321 1efc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3322 1f00 06D6     		bvs	.L799
 3323 1f02 F4EEC87A 		vcmpe.f32	s15, s16
 3324 1f06 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3325 1f0a D8BF     		it	le
 3326 1f0c F0EE487A 		vmovle.f32	s15, s16
 3327              	.L799:
 3328 1f10 CAED767A 		vstr.32	s15, [r10, #472]
 3329 1f14 D4E7     		b	.L798
 3330              	.L282:
 3331 1f16 4246     		mov	r2, r8
 3332 1f18 2946     		mov	r1, r5
 3333 1f1a 2046     		mov	r0, r4
 3334 1f1c FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
 3335 1f20 0028     		cmp	r0, #0
 3336 1f22 3FF42DA9 		beq	.L331
 3337 1f26 0226     		movs	r6, #2
 3338 1f28 FFF7A5B8 		b	.L186
 3339              	.L281:
 3340 1f2c 5021     		movs	r1, #80
 3341 1f2e 2846     		mov	r0, r5
 3342 1f30 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3343 1f34 0028     		cmp	r0, #0
 3344 1f36 42F06185 		bne	.L1837
 3345 1f3a 1C4F     		ldr	r7, .L1945+4
 3346 1f3c 0646     		mov	r6, r0
 3347              	.L790:
 3348 1f3e 71B2     		sxtb	r1, r6
 3349 1f40 3846     		mov	r0, r7
 3350 1f42 0136     		adds	r6, r6, #1
 3351 1f44 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 3352 1f48 082E     		cmp	r6, #8
 3353 1f4a F8D1     		bne	.L790
 3354 1f4c 0126     		movs	r6, #1
 3355              	.L792:
 3356 1f4e 0023     		movs	r3, #0
 3357 1f50 84F87036 		strb	r3, [r4, #1648]
 3358 1f54 FFF78FB8 		b	.L186
 3359              	.L283:
 3360 1f58 5321     		movs	r1, #83
 3361 1f5a 2846     		mov	r0, r5
 3362 1f5c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3363 1f60 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 60


 3364 1f62 42F0B083 		bne	.L1838
 3365 1f66 4821     		movs	r1, #72
 3366 1f68 2846     		mov	r0, r5
 3367 1f6a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3368 1f6e 0028     		cmp	r0, #0
 3369 1f70 42F0B983 		bne	.L794
 3370 1f74 1448     		ldr	r0, .L1945+32
 3371 1f76 94F86F64 		ldrb	r6, [r4, #1135]	@ zero_extendqisi2
 3372 1f7a 94F86E24 		ldrb	r2, [r4, #1134]	@ zero_extendqisi2
 3373 1f7e 134B     		ldr	r3, .L1945+36
 3374 1f80 1349     		ldr	r1, .L1945+40
 3375 1f82 002A     		cmp	r2, #0
 3376 1f84 0CBF     		ite	eq
 3377 1f86 1A46     		moveq	r2, r3
 3378 1f88 0246     		movne	r2, r0
 3379 1f8a 002E     		cmp	r6, #0
 3380 1f8c 18BF     		it	ne
 3381 1f8e 0346     		movne	r3, r0
 3382 1f90 4046     		mov	r0, r8
 3383 1f92 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3384 1f96 0126     		movs	r6, #1
 3385 1f98 FFF76DB8 		b	.L186
 3386              	.L280:
 3387 1f9c 2046     		mov	r0, r4
 3388 1f9e FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 3389 1fa2 0126     		movs	r6, #1
 3390 1fa4 FFF767B8 		b	.L186
 3391              	.L1946:
 3392              		.align	2
 3393              	.L1945:
 3394 1fa8 700B0000 		.word	.LC130
 3395 1fac 00000000 		.word	reprap
 3396 1fb0 000B0000 		.word	.LC127
 3397 1fb4 5C070000 		.word	.LC98
 3398 1fb8 68070000 		.word	.LC99
 3399 1fbc A4150000 		.word	.LC214
 3400 1fc0 8988883C 		.word	1015580809
 3401 1fc4 CDCCCC3D 		.word	1036831949
 3402 1fc8 CC000000 		.word	.LC30
 3403 1fcc A0000000 		.word	.LC25
 3404 1fd0 B00F0000 		.word	.LC170
 3405 1fd4 74070000 		.word	.LC100
 3406              	.L279:
 3407 1fd8 D749     		ldr	r1, .L1947
 3408 1fda D848     		ldr	r0, .L1947+4
 3409 1fdc DFF878C3 		ldr	ip, .L1947+32
 3410 1fe0 D74A     		ldr	r2, .L1947+8
 3411 1fe2 B6F50C7F 		cmp	r6, #560
 3412 1fe6 5CAF     		add	r7, sp, #368
 3413 1fe8 14BF     		ite	ne
 3414 1fea 0E46     		movne	r6, r1
 3415 1fec 8146     		moveq	r9, r0
 3416 1fee 4FF00003 		mov	r3, #0
 3417 1ff2 4FF05001 		mov	r1, #80
 3418 1ff6 2846     		mov	r0, r5
 3419 1ff8 0CBF     		ite	eq
 3420 1ffa 6646     		moveq	r6, ip
ARM GAS  /tmp/ccM7BG9e.s 			page 61


 3421 1ffc 9146     		movne	r9, r2
 3422 1ffe 3B70     		strb	r3, [r7]
 3423 2000 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3424 2004 0028     		cmp	r0, #0
 3425 2006 02F04F82 		beq	.L784
 3426 200a 7923     		movs	r3, #121
 3427 200c 1AA9     		add	r1, sp, #104
 3428 200e 2846     		mov	r0, r5
 3429 2010 CDE91A73 		strd	r7, r3, [sp, #104]
 3430 2014 FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 3431              	.L785:
 3432 2018 5321     		movs	r1, #83
 3433 201a 2846     		mov	r0, r5
 3434 201c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3435 2020 0028     		cmp	r0, #0
 3436 2022 42F03185 		bne	.L1839
 3437 2026 0646     		mov	r6, r0
 3438              	.L786:
 3439 2028 4321     		movs	r1, #67
 3440 202a 2846     		mov	r0, r5
 3441 202c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3442 2030 0028     		cmp	r0, #0
 3443 2032 42F03C85 		bne	.L1840
 3444              	.L787:
 3445 2036 4FF0010A 		mov	r10, #1
 3446 203a 0290     		str	r0, [sp, #8]
 3447 203c 4A46     		mov	r2, r9
 3448 203e 0096     		str	r6, [sp]
 3449 2040 CDF804A0 		str	r10, [sp, #4]
 3450 2044 3B46     		mov	r3, r7
 3451 2046 2946     		mov	r1, r5
 3452 2048 2046     		mov	r0, r4
 3453 204a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 3454 204e 3A46     		mov	r2, r7
 3455 2050 0028     		cmp	r0, #0
 3456 2052 02F0C281 		beq	.L788
 3457 2056 BB49     		ldr	r1, .L1947+12
 3458 2058 4046     		mov	r0, r8
 3459 205a 5646     		mov	r6, r10
 3460 205c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3461 2060 FFF709B8 		b	.L186
 3462              	.L204:
 3463 2064 5CAF     		add	r7, sp, #368
 3464 2066 0020     		movs	r0, #0
 3465 2068 0DF16809 		add	r9, sp, #104
 3466 206c 7926     		movs	r6, #121
 3467 206e 8DF86000 		strb	r0, [sp, #96]
 3468 2072 3870     		strb	r0, [r7]
 3469 2074 18AB     		add	r3, sp, #96
 3470 2076 4A46     		mov	r2, r9
 3471 2078 5021     		movs	r1, #80
 3472 207a 2846     		mov	r0, r5
 3473 207c C9E90076 		strd	r7, r6, [r9]
 3474 2080 FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 3475 2084 9DF86060 		ldrb	r6, [sp, #96]	@ zero_extendqisi2
 3476 2088 002E     		cmp	r6, #0
 3477 208a 02F09B80 		beq	.L409
ARM GAS  /tmp/ccM7BG9e.s 			page 62


 3478 208e 4621     		movs	r1, #70
 3479 2090 2846     		mov	r0, r5
 3480 2092 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3481 2096 38B1     		cbz	r0, .L410
 3482 2098 2846     		mov	r0, r5
 3483 209a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 3484 209e A0F10106 		sub	r6, r0, #1
 3485 20a2 B6FA86F6 		clz	r6, r6
 3486 20a6 7609     		lsrs	r6, r6, #5
 3487              	.L410:
 3488 20a8 7920     		movs	r0, #121
 3489 20aa 0096     		str	r6, [sp]
 3490 20ac 4B46     		mov	r3, r9
 3491 20ae C9F80400 		str	r0, [r9, #4]
 3492 20b2 4246     		mov	r2, r8
 3493 20b4 C9F80070 		str	r7, [r9]
 3494 20b8 2946     		mov	r1, r5
 3495 20ba 2046     		mov	r0, r4
 3496 20bc FFF7FEFF 		bl	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
 3497 20c0 0646     		mov	r6, r0
 3498 20c2 FEF7D8BF 		b	.L186
 3499              	.L203:
 3500 20c6 2946     		mov	r1, r5
 3501 20c8 2046     		mov	r0, r4
 3502 20ca FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3503 20ce 0028     		cmp	r0, #0
 3504 20d0 3DF4BFAF 		beq	.L742
 3505 20d4 0DF16809 		add	r9, sp, #104
 3506 20d8 0027     		movs	r7, #0
 3507 20da 4946     		mov	r1, r9
 3508 20dc 7923     		movs	r3, #121
 3509 20de 5CAE     		add	r6, sp, #368
 3510 20e0 2846     		mov	r0, r5
 3511 20e2 CDE91A63 		strd	r6, r3, [sp, #104]
 3512 20e6 8DF87071 		strb	r7, [sp, #368]
 3513 20ea FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 3514 20ee B842     		cmp	r0, r7
 3515 20f0 14BF     		ite	ne
 3516 20f2 3146     		movne	r1, r6
 3517 20f4 3946     		moveq	r1, r7
 3518 20f6 3B46     		mov	r3, r7
 3519 20f8 4A46     		mov	r2, r9
 3520 20fa 9348     		ldr	r0, .L1947+16
 3521 20fc FFF7FEFF 		bl	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 3522 2100 8246     		mov	r10, r0
 3523 2102 0028     		cmp	r0, #0
 3524 2104 3DF4A7AF 		beq	.L1123
 3525 2108 0A21     		movs	r1, #10
 3526 210a D9F80000 		ldr	r0, [r9]
 3527 210e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3528 2112 2946     		mov	r1, r5
 3529 2114 2046     		mov	r0, r4
 3530 2116 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3531 211a D9F80030 		ldr	r3, [r9]
 3532 211e 3A46     		mov	r2, r7
 3533 2120 2946     		mov	r1, r5
 3534 2122 2046     		mov	r0, r4
ARM GAS  /tmp/ccM7BG9e.s 			page 63


 3535 2124 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3536 2128 FDF795BF 		b	.L1123
 3537              	.L202:
 3538 212c 5CAE     		add	r6, sp, #368
 3539 212e 0027     		movs	r7, #0
 3540 2130 7923     		movs	r3, #121
 3541 2132 1AA9     		add	r1, sp, #104
 3542 2134 2846     		mov	r0, r5
 3543 2136 8DF87071 		strb	r7, [sp, #368]
 3544 213a CDE91A63 		strd	r6, r3, [sp, #104]
 3545 213e FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 3546 2142 0028     		cmp	r0, #0
 3547 2144 02F06680 		beq	.L405
 3548 2148 2368     		ldr	r3, [r4]
 3549 214a 8049     		ldr	r1, .L1947+20
 3550 214c D3F8B409 		ldr	r0, [r3, #2484]
 3551 2150 3246     		mov	r2, r6
 3552 2152 3B46     		mov	r3, r7
 3553 2154 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 3554 2158 0126     		movs	r6, #1
 3555 215a FEF78CBF 		b	.L186
 3556              	.L201:
 3557 215e 7C49     		ldr	r1, .L1947+24
 3558 2160 4046     		mov	r0, r8
 3559 2162 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3560 2166 0126     		movs	r6, #1
 3561 2168 FEF785BF 		b	.L186
 3562              	.L222:
 3563 216c 2946     		mov	r1, r5
 3564 216e 2046     		mov	r0, r4
 3565 2170 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3566 2174 0028     		cmp	r0, #0
 3567 2176 3DF46CAF 		beq	.L742
 3568 217a 2046     		mov	r0, r4
 3569 217c FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 3570 2180 0028     		cmp	r0, #0
 3571 2182 3DF466AF 		beq	.L742
 3572 2186 94F88636 		ldrb	r3, [r4, #1670]	@ zero_extendqisi2
 3573 218a 002B     		cmp	r3, #0
 3574 218c 7FF43DAA 		bne	.L502
 3575 2190 5021     		movs	r1, #80
 3576 2192 2846     		mov	r0, r5
 3577 2194 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3578 2198 0646     		mov	r6, r0
 3579 219a 80B1     		cbz	r0, .L485
 3580 219c 2846     		mov	r0, r5
 3581 219e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3582 21a2 296B     		ldr	r1, [r5, #48]
 3583 21a4 0144     		add	r1, r1, r0
 3584 21a6 6848     		ldr	r0, .L1947+16
 3585 21a8 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3586 21ac 0122     		movs	r2, #1
 3587 21ae 0146     		mov	r1, r0
 3588 21b0 2046     		mov	r0, r4
 3589 21b2 FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 3590 21b6 0646     		mov	r6, r0
 3591 21b8 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 64


 3592 21ba 04F07980 		beq	.L499
 3593              	.L485:
 3594 21be 4821     		movs	r1, #72
 3595 21c0 2846     		mov	r0, r5
 3596 21c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3597 21c6 0028     		cmp	r0, #0
 3598 21c8 04F06180 		beq	.L486
 3599 21cc 0DF16809 		add	r9, sp, #104
 3600 21d0 5CAF     		add	r7, sp, #368
 3601 21d2 0023     		movs	r3, #0
 3602 21d4 0826     		movs	r6, #8
 3603 21d6 4A46     		mov	r2, r9
 3604 21d8 3946     		mov	r1, r7
 3605 21da 2846     		mov	r0, r5
 3606 21dc C9F80060 		str	r6, [r9]
 3607 21e0 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3608 21e4 D9F80030 		ldr	r3, [r9]
 3609 21e8 002B     		cmp	r3, #0
 3610 21ea 04F01781 		beq	.L490
 3611 21ee 5BAB     		add	r3, sp, #364
 3612 21f0 A246     		mov	r10, r4
 3613 21f2 DFF854B1 		ldr	fp, .L1947+16
 3614 21f6 0026     		movs	r6, #0
 3615 21f8 1C46     		mov	r4, r3
 3616 21fa 04E0     		b	.L491
 3617              	.L489:
 3618 21fc D9F80030 		ldr	r3, [r9]
 3619 2200 B342     		cmp	r3, r6
 3620 2202 44F20A81 		bls	.L1841
 3621              	.L491:
 3622 2206 54F8041F 		ldr	r1, [r4, #4]!
 3623 220a DBF80C00 		ldr	r0, [fp, #12]
 3624 220e 49B2     		sxtb	r1, r1
 3625 2210 0122     		movs	r2, #1
 3626 2212 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 3627 2216 0136     		adds	r6, r6, #1
 3628 2218 0028     		cmp	r0, #0
 3629 221a EFD1     		bne	.L489
 3630 221c 5446     		mov	r4, r10
 3631 221e 4246     		mov	r2, r8
 3632 2220 8246     		mov	r10, r0
 3633 2222 2946     		mov	r1, r5
 3634 2224 2046     		mov	r0, r4
 3635 2226 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 3636 222a 0123     		movs	r3, #1
 3637 222c 84F88536 		strb	r3, [r4, #1669]
 3638 2230 FDF711BF 		b	.L1123
 3639              	.L221:
 3640 2234 5021     		movs	r1, #80
 3641 2236 2846     		mov	r0, r5
 3642 2238 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3643 223c 0028     		cmp	r0, #0
 3644 223e 02F02B80 		beq	.L481
 3645 2242 2846     		mov	r0, r5
 3646 2244 2668     		ldr	r6, [r4]
 3647 2246 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3648 224a C1B2     		uxtb	r1, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 65


 3649 224c 3046     		mov	r0, r6
 3650 224e FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 3651 2252 0126     		movs	r6, #1
 3652 2254 FEF70FBF 		b	.L186
 3653              	.L220:
 3654 2258 5321     		movs	r1, #83
 3655 225a 2846     		mov	r0, r5
 3656 225c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3657 2260 0028     		cmp	r0, #0
 3658 2262 02F02A81 		beq	.L480
 3659 2266 2846     		mov	r0, r5
 3660 2268 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3661 226c 0128     		cmp	r0, #1
 3662 226e 0646     		mov	r6, r0
 3663 2270 7EF486AF 		bne	.L331
 3664 2274 4146     		mov	r1, r8
 3665 2276 2046     		mov	r0, r4
 3666 2278 FFF7FEFF 		bl	_ZN6GCodes28GetAxisPositionsFromEncodersERK9StringRef
 3667 227c FEF7FBBE 		b	.L186
 3668              	.L215:
 3669 2280 0122     		movs	r2, #1
 3670 2282 2946     		mov	r1, r5
 3671 2284 2046     		mov	r0, r4
 3672 2286 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3673 228a 0646     		mov	r6, r0
 3674 228c FEF7F3BE 		b	.L186
 3675              	.L292:
 3676 2290 5321     		movs	r1, #83
 3677 2292 2846     		mov	r0, r5
 3678 2294 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3679 2298 0028     		cmp	r0, #0
 3680 229a 42F02B83 		bne	.L1842
 3681 229e 0123     		movs	r3, #1
 3682 22a0 0D93     		str	r3, [sp, #52]
 3683              	.L850:
 3684 22a2 D4F89832 		ldr	r3, [r4, #664]
 3685 22a6 002B     		cmp	r3, #0
 3686 22a8 01F04384 		beq	.L856
 3687 22ac 6FF48B67 		mvn	r7, #1112
 3688 22b0 3F1B     		subs	r7, r7, r4
 3689 22b2 04F25946 		addw	r6, r4, #1113
 3690 22b6 4FF0000B 		mov	fp, #0
 3691 22ba 05E0     		b	.L855
 3692              	.L854:
 3693 22bc D4F89822 		ldr	r2, [r4, #664]
 3694 22c0 F319     		adds	r3, r6, r7
 3695 22c2 9A42     		cmp	r2, r3
 3696 22c4 41F23184 		bls	.L1843
 3697              	.L855:
 3698 22c8 06EB070A 		add	r10, r6, r7
 3699 22cc 2846     		mov	r0, r5
 3700 22ce 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 3701 22d2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3702 22d6 8146     		mov	r9, r0
 3703 22d8 0028     		cmp	r0, #0
 3704 22da EFD0     		beq	.L854
 3705 22dc 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 66


 3706 22de FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3707 22e2 0328     		cmp	r0, #3
 3708 22e4 EAD8     		bhi	.L854
 3709 22e6 0246     		mov	r2, r0
 3710 22e8 5146     		mov	r1, r10
 3711 22ea 0D9B     		ldr	r3, [sp, #52]
 3712 22ec 2068     		ldr	r0, [r4]
 3713 22ee FFF7FEFF 		bl	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3714 22f2 CB46     		mov	fp, r9
 3715 22f4 E2E7     		b	.L854
 3716              	.L291:
 3717 22f6 5021     		movs	r1, #80
 3718 22f8 2846     		mov	r0, r5
 3719 22fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3720 22fe 0028     		cmp	r0, #0
 3721 2300 3EF43EAF 		beq	.L331
 3722 2304 2846     		mov	r0, r5
 3723 2306 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3724 230a 0728     		cmp	r0, #7
 3725 230c 0646     		mov	r6, r0
 3726 230e 3EF637AF 		bhi	.L331
 3727 2312 0D4B     		ldr	r3, .L1947+16
 3728 2314 0146     		mov	r1, r0
 3729 2316 D868     		ldr	r0, [r3, #12]
 3730 2318 FFF7FEFF 		bl	_ZNK4Heat13GetAveragePWMEj
 3731 231c 10EE100A 		vmov	r0, s0
 3732 2320 FFF7FEFF 		bl	__aeabi_f2d
 3733 2324 3246     		mov	r2, r6
 3734 2326 CDE90001 		strd	r0, [sp]
 3735 232a 0A49     		ldr	r1, .L1947+28
 3736 232c 4046     		mov	r0, r8
 3737 232e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3738 2332 0126     		movs	r6, #1
 3739 2334 FEF79FBE 		b	.L186
 3740              	.L1948:
 3741              		.align	2
 3742              	.L1947:
 3743 2338 A4000000 		.word	.LC26
 3744 233c C4000000 		.word	.LC29
 3745 2340 B0000000 		.word	.LC27
 3746 2344 80040000 		.word	.LC72
 3747 2348 00000000 		.word	reprap
 3748 234c 9C020000 		.word	.LC55
 3749 2350 B4040000 		.word	.LC74
 3750 2354 DC120000 		.word	.LC187
 3751 2358 B8000000 		.word	.LC28
 3752              	.L290:
 3753 235c 5321     		movs	r1, #83
 3754 235e 2846     		mov	r0, r5
 3755 2360 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3756 2364 8146     		mov	r9, r0
 3757 2366 0028     		cmp	r0, #0
 3758 2368 01F0EE87 		beq	.L841
 3759 236c 2846     		mov	r0, r5
 3760 236e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3761 2372 4421     		movs	r1, #68
 3762 2374 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 67


 3763 2376 B0EE408A 		vmov.f32	s16, s0
 3764 237a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3765 237e 0028     		cmp	r0, #0
 3766 2380 3EF4FEAE 		beq	.L331
 3767 2384 0DF16809 		add	r9, sp, #104
 3768 2388 5CAF     		add	r7, sp, #368
 3769 238a 0023     		movs	r3, #0
 3770 238c 0926     		movs	r6, #9
 3771 238e 4A46     		mov	r2, r9
 3772 2390 3946     		mov	r1, r7
 3773 2392 2846     		mov	r0, r5
 3774 2394 C9F80060 		str	r6, [r9]
 3775 2398 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3776 239c D9F80030 		ldr	r3, [r9]
 3777 23a0 C3B1     		cbz	r3, .L846
 3778 23a2 3968     		ldr	r1, [r7]
 3779 23a4 D4F8A032 		ldr	r3, [r4, #672]
 3780 23a8 9942     		cmp	r1, r3
 3781 23aa 83F0A684 		bcs	.L844
 3782 23ae 0026     		movs	r6, #0
 3783 23b0 06E0     		b	.L845
 3784              	.L1776:
 3785 23b2 57F82610 		ldr	r1, [r7, r6, lsl #2]
 3786 23b6 D4F8A032 		ldr	r3, [r4, #672]
 3787 23ba 9942     		cmp	r1, r3
 3788 23bc 83F09D84 		bcs	.L844
 3789              	.L845:
 3790 23c0 B0EE480A 		vmov.f32	s0, s16
 3791 23c4 2068     		ldr	r0, [r4]
 3792 23c6 FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 3793 23ca D9F80030 		ldr	r3, [r9]
 3794 23ce 0136     		adds	r6, r6, #1
 3795 23d0 B342     		cmp	r3, r6
 3796 23d2 EED8     		bhi	.L1776
 3797              	.L846:
 3798 23d4 0126     		movs	r6, #1
 3799 23d6 FEF74EBE 		b	.L186
 3800              	.L289:
 3801 23da 5021     		movs	r1, #80
 3802 23dc 2846     		mov	r0, r5
 3803 23de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3804 23e2 0646     		mov	r6, r0
 3805 23e4 C0B1     		cbz	r0, .L834
 3806 23e6 2846     		mov	r0, r5
 3807 23e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3808 23ec 4921     		movs	r1, #73
 3809 23ee 0746     		mov	r7, r0
 3810 23f0 2846     		mov	r0, r5
 3811 23f2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3812 23f6 30B1     		cbz	r0, .L835
 3813 23f8 2846     		mov	r0, r5
 3814 23fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3815 23fe 0028     		cmp	r0, #0
 3816 2400 D4BF     		ite	le
 3817 2402 0020     		movle	r0, #0
 3818 2404 0120     		movgt	r0, #1
 3819              	.L835:
ARM GAS  /tmp/ccM7BG9e.s 			page 68


 3820 2406 0246     		mov	r2, r0
 3821 2408 B9B2     		uxth	r1, r7
 3822 240a 2068     		ldr	r0, [r4]
 3823 240c FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
 3824 2410 0646     		mov	r6, r0
 3825 2412 0028     		cmp	r0, #0
 3826 2414 02F0E587 		beq	.L1844
 3827              	.L834:
 3828 2418 4621     		movs	r1, #70
 3829 241a 2846     		mov	r0, r5
 3830 241c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3831 2420 38B1     		cbz	r0, .L836
 3832 2422 2768     		ldr	r7, [r4]
 3833 2424 2846     		mov	r0, r5
 3834 2426 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3835 242a 07F68820 		addw	r0, r7, #2696
 3836 242e FFF7FEFF 		bl	_ZN7PwmPort12SetFrequencyEf
 3837              	.L836:
 3838 2432 5321     		movs	r1, #83
 3839 2434 2846     		mov	r0, r5
 3840 2436 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3841 243a 0028     		cmp	r0, #0
 3842 243c 42F01785 		bne	.L1845
 3843 2440 002E     		cmp	r6, #0
 3844 2442 7EF49DAE 		bne	.L331
 3845 2446 D4F80090 		ldr	r9, [r4]
 3846 244a D84F     		ldr	r7, .L1949
 3847 244c 09F68423 		addw	r3, r9, #2692
 3848 2450 0126     		movs	r6, #1
 3849 2452 1868     		ldr	r0, [r3]	@ float
 3850 2454 FFF7FEFF 		bl	__aeabi_f2d
 3851 2458 8246     		mov	r10, r0
 3852 245a B9F88C0A 		ldrh	r0, [r9, #2700]
 3853 245e 07EE900A 		vmov	s15, r0	@ int
 3854 2462 F8EE677A 		vcvt.f32.u32	s15, s15
 3855 2466 8B46     		mov	fp, r1
 3856 2468 17EE900A 		vmov	r0, s15
 3857 246c FFF7FEFF 		bl	__aeabi_f2d
 3858 2470 B9F8883A 		ldrh	r3, [r9, #2696]
 3859 2474 99F88B2A 		ldrb	r2, [r9, #2699]	@ zero_extendqisi2
 3860 2478 0293     		str	r3, [sp, #8]
 3861 247a CD4B     		ldr	r3, .L1949+4
 3862 247c 002A     		cmp	r2, #0
 3863 247e 18BF     		it	ne
 3864 2480 1F46     		movne	r7, r3
 3865 2482 CDE90001 		strd	r0, [sp]
 3866 2486 5246     		mov	r2, r10
 3867 2488 5B46     		mov	r3, fp
 3868 248a 0397     		str	r7, [sp, #12]
 3869 248c C949     		ldr	r1, .L1949+8
 3870 248e 4046     		mov	r0, r8
 3871 2490 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3872 2494 FEF7EFBD 		b	.L186
 3873              	.L288:
 3874 2498 5321     		movs	r1, #83
 3875 249a 2846     		mov	r0, r5
 3876 249c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccM7BG9e.s 			page 69


 3877 24a0 0646     		mov	r6, r0
 3878 24a2 0028     		cmp	r0, #0
 3879 24a4 42F07884 		bne	.L1846
 3880 24a8 4821     		movs	r1, #72
 3881 24aa 2846     		mov	r0, r5
 3882 24ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3883 24b0 0028     		cmp	r0, #0
 3884 24b2 42F08284 		bne	.L830
 3885 24b6 D4F87836 		ldr	r3, [r4, #1656]
 3886 24ba BF4A     		ldr	r2, .L1949+12
 3887 24bc BF49     		ldr	r1, .L1949+16
 3888 24be A2FB0332 		umull	r3, r2, r2, r3
 3889 24c2 920B     		lsrs	r2, r2, #14
 3890 24c4 4046     		mov	r0, r8
 3891 24c6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3892 24ca 0126     		movs	r6, #1
 3893 24cc FEF7D3BD 		b	.L186
 3894              	.L213:
 3895 24d0 2946     		mov	r1, r5
 3896 24d2 2046     		mov	r0, r4
 3897 24d4 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 3898 24d8 0126     		movs	r6, #1
 3899 24da FEF7CCBD 		b	.L186
 3900              	.L212:
 3901 24de 5021     		movs	r1, #80
 3902 24e0 2846     		mov	r0, r5
 3903 24e2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3904 24e6 0028     		cmp	r0, #0
 3905 24e8 3EF44AAE 		beq	.L331
 3906 24ec 5CAE     		add	r6, sp, #368
 3907 24ee 0022     		movs	r2, #0
 3908 24f0 7923     		movs	r3, #121
 3909 24f2 1AA9     		add	r1, sp, #104
 3910 24f4 2846     		mov	r0, r5
 3911 24f6 CDE91A63 		strd	r6, r3, [sp, #104]
 3912 24fa 8DF87021 		strb	r2, [sp, #368]
 3913 24fe FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 3914 2502 6223     		movs	r3, #98
 3915 2504 3246     		mov	r2, r6
 3916 2506 0093     		str	r3, [sp]
 3917 2508 2946     		mov	r1, r5
 3918 250a 0123     		movs	r3, #1
 3919 250c 2046     		mov	r0, r4
 3920 250e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 3921 2512 0126     		movs	r6, #1
 3922 2514 FEF7AFBD 		b	.L186
 3923              	.L236:
 3924 2518 5321     		movs	r1, #83
 3925 251a 2846     		mov	r0, r5
 3926 251c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3927 2520 8246     		mov	r10, r0
 3928 2522 0028     		cmp	r0, #0
 3929 2524 42F02482 		bne	.L1847
 3930              	.L611:
 3931 2528 D4F89832 		ldr	r3, [r4, #664]
 3932 252c 002B     		cmp	r3, #0
 3933 252e 01F04B83 		beq	.L617
ARM GAS  /tmp/ccM7BG9e.s 			page 70


 3934 2532 A34F     		ldr	r7, .L1949+20
 3935 2534 0023     		movs	r3, #0
 3936 2536 04F26346 		addw	r6, r4, #1123
 3937 253a 3F1B     		subs	r7, r7, r4
 3938 253c 0D93     		str	r3, [sp, #52]
 3939 253e 05E0     		b	.L616
 3940              	.L614:
 3941 2540 D4F89822 		ldr	r2, [r4, #664]
 3942 2544 BB19     		adds	r3, r7, r6
 3943 2546 9A42     		cmp	r2, r3
 3944 2548 41F23A83 		bls	.L1848
 3945              	.L616:
 3946 254c 07EB0609 		add	r9, r7, r6
 3947 2550 2846     		mov	r0, r5
 3948 2552 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 3949 2556 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3950 255a 8346     		mov	fp, r0
 3951 255c 0028     		cmp	r0, #0
 3952 255e EFD0     		beq	.L614
 3953 2560 2846     		mov	r0, r5
 3954 2562 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3955 2566 D4EDBD7A 		vldr.32	s15, [r4, #756]
 3956 256a 4946     		mov	r1, r9
 3957 256c 20EE270A 		vmul.f32	s0, s0, s15
 3958 2570 BAF1000F 		cmp	r10, #0
 3959 2574 01F0CE82 		beq	.L615
 3960 2578 AB68     		ldr	r3, [r5, #8]
 3961 257a 2068     		ldr	r0, [r4]
 3962 257c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 3963 257e C2F30012 		ubfx	r2, r2, #4, #1
 3964 2582 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 3965 2586 CDF834A0 		str	r10, [sp, #52]
 3966 258a D9E7     		b	.L614
 3967              	.L234:
 3968 258c D4F89832 		ldr	r3, [r4, #664]
 3969 2590 002B     		cmp	r3, #0
 3970 2592 02F0F881 		beq	.L574
 3971 2596 0026     		movs	r6, #0
 3972 2598 DFED8A8A 		vldr.32	s17, .L1949+24
 3973 259c B346     		mov	fp, r6
 3974 259e 04F26349 		addw	r9, r4, #1123
 3975 25a2 B7EE008A 		vmov.f32	s16, #1.0e+0
 3976 25a6 05E0     		b	.L578
 3977              	.L575:
 3978 25a8 D4F89832 		ldr	r3, [r4, #664]
 3979 25ac 0136     		adds	r6, r6, #1
 3980 25ae B342     		cmp	r3, r6
 3981 25b0 41F29983 		bls	.L1849
 3982              	.L578:
 3983 25b4 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 3984 25b8 2846     		mov	r0, r5
 3985 25ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3986 25be 0746     		mov	r7, r0
 3987 25c0 0028     		cmp	r0, #0
 3988 25c2 F1D0     		beq	.L575
 3989 25c4 2846     		mov	r0, r5
 3990 25c6 D4F800A0 		ldr	r10, [r4]
ARM GAS  /tmp/ccM7BG9e.s 			page 71


 3991 25ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3992 25ce D4EDBD7A 		vldr.32	s15, [r4, #756]
 3993 25d2 60EE277A 		vmul.f32	s15, s0, s15
 3994 25d6 0AEB860A 		add	r10, r10, r6, lsl #2
 3995 25da 67EEA87A 		vmul.f32	s15, s15, s17
 3996 25de BB46     		mov	fp, r7
 3997 25e0 F4EE677A 		vcmp.f32	s15, s15
 3998 25e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3999 25e8 06D6     		bvs	.L576
 4000 25ea F4EEC87A 		vcmpe.f32	s15, s16
 4001 25ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4002 25f2 D8BF     		it	le
 4003 25f4 F0EE487A 		vmovle.f32	s15, s16
 4004              	.L576:
 4005 25f8 CAED507A 		vstr.32	s15, [r10, #320]
 4006 25fc D4E7     		b	.L575
 4007              	.L235:
 4008 25fe 4246     		mov	r2, r8
 4009 2600 2946     		mov	r1, r5
 4010 2602 2046     		mov	r0, r4
 4011 2604 FFF7FEFF 		bl	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 4012 2608 0646     		mov	r6, r0
 4013 260a FEF734BD 		b	.L186
 4014              	.L233:
 4015 260e D4F89832 		ldr	r3, [r4, #664]
 4016 2612 002B     		cmp	r3, #0
 4017 2614 02F00B81 		beq	.L559
 4018 2618 0026     		movs	r6, #0
 4019 261a B246     		mov	r10, r6
 4020 261c 04F26349 		addw	r9, r4, #1123
 4021 2620 B7EE008A 		vmov.f32	s16, #1.0e+0
 4022 2624 05E0     		b	.L563
 4023              	.L560:
 4024 2626 D4F89832 		ldr	r3, [r4, #664]
 4025 262a 0136     		adds	r6, r6, #1
 4026 262c B342     		cmp	r3, r6
 4027 262e 41F2FB82 		bls	.L1850
 4028              	.L563:
 4029 2632 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 4030 2636 2846     		mov	r0, r5
 4031 2638 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4032 263c 0746     		mov	r7, r0
 4033 263e 0028     		cmp	r0, #0
 4034 2640 F1D0     		beq	.L560
 4035 2642 2846     		mov	r0, r5
 4036 2644 D4F800A0 		ldr	r10, [r4]
 4037 2648 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4038 264c D4EDBD7A 		vldr.32	s15, [r4, #756]
 4039 2650 20EE270A 		vmul.f32	s0, s0, s15
 4040 2654 0AEB860A 		add	r10, r10, r6, lsl #2
 4041 2658 B4EE400A 		vcmp.f32	s0, s0
 4042 265c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4043 2660 06D6     		bvs	.L561
 4044 2662 B4EEC80A 		vcmpe.f32	s0, s16
 4045 2666 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4046 266a D8BF     		it	le
 4047 266c B0EE480A 		vmovle.f32	s0, s16
ARM GAS  /tmp/ccM7BG9e.s 			page 72


 4048              	.L561:
 4049 2670 8AED5C0A 		vstr.32	s0, [r10, #368]
 4050 2674 BA46     		mov	r10, r7
 4051 2676 D6E7     		b	.L560
 4052              	.L326:
 4053 2678 4246     		mov	r2, r8
 4054 267a 2946     		mov	r1, r5
 4055 267c 2046     		mov	r0, r4
 4056 267e FFF7FEFF 		bl	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 4057 2682 0646     		mov	r6, r0
 4058 2684 FEF7F7BC 		b	.L186
 4059              	.L276:
 4060 2688 5321     		movs	r1, #83
 4061 268a 2846     		mov	r0, r5
 4062 268c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4063 2690 0028     		cmp	r0, #0
 4064 2692 01F02386 		beq	.L779
 4065 2696 2846     		mov	r0, r5
 4066 2698 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4067 269c F2EE047A 		vmov.f32	s15, #1.0e+1
 4068 26a0 B4EEE70A 		vcmpe.f32	s0, s15
 4069 26a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4070 26a8 B0EE408A 		vmov.f32	s16, s0
 4071 26ac FEF668AD 		blt	.L331
 4072 26b0 DFF81491 		ldr	r9, .L1949+28
 4073 26b4 04F25A47 		addw	r7, r4, #1114
 4074 26b8 0026     		movs	r6, #0
 4075              	.L782:
 4076 26ba 17F8011B 		ldrb	r1, [r7], #1	@ zero_extendqisi2
 4077 26be 2846     		mov	r0, r5
 4078 26c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4079 26c4 0028     		cmp	r0, #0
 4080 26c6 42F0FF84 		bne	.L1851
 4081              	.L781:
 4082 26ca 0136     		adds	r6, r6, #1
 4083 26cc 032E     		cmp	r6, #3
 4084 26ce F4D1     		bne	.L782
 4085 26d0 FEF756BD 		b	.L331
 4086              	.L275:
 4087 26d4 5021     		movs	r1, #80
 4088 26d6 2846     		mov	r0, r5
 4089 26d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4090 26dc 0028     		cmp	r0, #0
 4091 26de 01F0A985 		beq	.L771
 4092 26e2 2846     		mov	r0, r5
 4093 26e4 2668     		ldr	r6, [r4]
 4094 26e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4095 26ea C1B2     		uxtb	r1, r0
 4096 26ec 3046     		mov	r0, r6
 4097 26ee FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 4098 26f2 0126     		movs	r6, #1
 4099 26f4 FEF7BFBC 		b	.L186
 4100              	.L296:
 4101 26f8 3346     		mov	r3, r6
 4102 26fa 4246     		mov	r2, r8
 4103 26fc 2946     		mov	r1, r5
 4104 26fe 2046     		mov	r0, r4
ARM GAS  /tmp/ccM7BG9e.s 			page 73


 4105 2700 FFF7FEFF 		bl	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
 4106 2704 0646     		mov	r6, r0
 4107 2706 FEF7B6BC 		b	.L186
 4108              	.L278:
 4109 270a 4246     		mov	r2, r8
 4110 270c 2946     		mov	r1, r5
 4111 270e 2046     		mov	r0, r4
 4112 2710 FFF7FEFF 		bl	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
 4113 2714 0646     		mov	r6, r0
 4114 2716 FEF7AEBC 		b	.L186
 4115              	.L277:
 4116 271a 4246     		mov	r2, r8
 4117 271c 2946     		mov	r1, r5
 4118 271e 2046     		mov	r0, r4
 4119 2720 FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 4120 2724 0646     		mov	r6, r0
 4121 2726 FEF7A6BC 		b	.L186
 4122              	.L272:
 4123 272a AB68     		ldr	r3, [r5, #8]
 4124 272c 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4125 272e 9906     		lsls	r1, r3, #26
 4126 2730 3EF526AD 		bmi	.L331
 4127 2734 4921     		movs	r1, #73
 4128 2736 2846     		mov	r0, r5
 4129 2738 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4130 273c 0028     		cmp	r0, #0
 4131 273e 43F05580 		bne	.L1852
 4132 2742 0646     		mov	r6, r0
 4133              	.L756:
 4134 2744 DFF880B0 		ldr	fp, .L1949+28
 4135 2748 5CAF     		add	r7, sp, #368
 4136 274a 0023     		movs	r3, #0
 4137 274c DBF80400 		ldr	r0, [fp, #4]
 4138 2750 3B70     		strb	r3, [r7]
 4139 2752 3146     		mov	r1, r6
 4140 2754 FFF7FEFF 		bl	_ZNK7Network15IsWiFiInterfaceEj
 4141 2758 0028     		cmp	r0, #0
 4142 275a 02F09686 		beq	.L757
 4143 275e 5321     		movs	r1, #83
 4144 2760 2846     		mov	r0, r5
 4145 2762 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4146 2766 0028     		cmp	r0, #0
 4147 2768 43F05083 		bne	.L1853
 4148              	.L758:
 4149 276c 3146     		mov	r1, r6
 4150 276e DBF80400 		ldr	r0, [fp, #4]
 4151 2772 4246     		mov	r2, r8
 4152 2774 FFF7FEFF 		bl	_ZN7Network15GetNetworkStateEjRK9StringRef
 4153 2778 0646     		mov	r6, r0
 4154 277a FEF77CBC 		b	.L186
 4155              	.L271:
 4156 277e 0021     		movs	r1, #0
 4157 2780 1520     		movs	r0, #21
 4158 2782 5CAE     		add	r6, sp, #368
 4159 2784 18AB     		add	r3, sp, #96
 4160 2786 8DF87011 		strb	r1, [sp, #368]
 4161 278a 8DF86010 		strb	r1, [sp, #96]
ARM GAS  /tmp/ccM7BG9e.s 			page 74


 4162 278e CDE91A60 		strd	r6, r0, [sp, #104]
 4163 2792 1AAA     		add	r2, sp, #104
 4164 2794 5021     		movs	r1, #80
 4165 2796 2846     		mov	r0, r5
 4166 2798 FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 4167 279c 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 4168 27a0 002B     		cmp	r3, #0
 4169 27a2 42F0DB81 		bne	.L1854
 4170              	.L755:
 4171 27a6 0126     		movs	r6, #1
 4172 27a8 FEF765BC 		b	.L186
 4173              	.L1950:
 4174              		.align	2
 4175              	.L1949:
 4176 27ac 04010000 		.word	.LC36
 4177 27b0 F8000000 		.word	.LC35
 4178 27b4 60120000 		.word	.LC183
 4179 27b8 73B2E745 		.word	1172812403
 4180 27bc D0110000 		.word	.LC181
 4181 27c0 9DFBFFFF 		.word	-1123
 4182 27c4 8988883C 		.word	1015580809
 4183 27c8 00000000 		.word	reprap
 4184              	.L270:
 4185 27cc 0021     		movs	r1, #0
 4186 27ce 2920     		movs	r0, #41
 4187 27d0 5CAE     		add	r6, sp, #368
 4188 27d2 18AB     		add	r3, sp, #96
 4189 27d4 8DF87011 		strb	r1, [sp, #368]
 4190 27d8 8DF86010 		strb	r1, [sp, #96]
 4191 27dc CDE91A60 		strd	r6, r0, [sp, #104]
 4192 27e0 1AAA     		add	r2, sp, #104
 4193 27e2 5021     		movs	r1, #80
 4194 27e4 2846     		mov	r0, r5
 4195 27e6 FFF7FEFF 		bl	_ZN11GCodeBuffer26TryGetPossiblyQuotedStringEcRK9StringRefRb
 4196 27ea 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 4197 27ee 002B     		cmp	r3, #0
 4198 27f0 01F0D785 		beq	.L753
 4199 27f4 3146     		mov	r1, r6
 4200 27f6 D048     		ldr	r0, .L1951
 4201 27f8 FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 4202              	.L754:
 4203 27fc 0126     		movs	r6, #1
 4204 27fe FEF73ABC 		b	.L186
 4205              	.L269:
 4206 2802 AB68     		ldr	r3, [r5, #8]
 4207 2804 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4208 2806 9806     		lsls	r0, r3, #26
 4209 2808 3EF5BAAC 		bmi	.L331
 4210 280c 4921     		movs	r1, #73
 4211 280e 2846     		mov	r0, r5
 4212 2810 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4213 2814 0028     		cmp	r0, #0
 4214 2816 42F0A687 		bne	.L1855
 4215 281a 0646     		mov	r6, r0
 4216              	.L749:
 4217 281c 5021     		movs	r1, #80
 4218 281e 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 75


 4219 2820 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4220 2824 0028     		cmp	r0, #0
 4221 2826 02F0E485 		beq	.L750
 4222 282a 5CA9     		add	r1, sp, #368
 4223 282c 2846     		mov	r0, r5
 4224 282e FFF7FEFF 		bl	_ZN11GCodeBuffer13GetMacAddressEPh
 4225 2832 0028     		cmp	r0, #0
 4226 2834 03F08E82 		beq	.L751
 4227 2838 BF4B     		ldr	r3, .L1951
 4228 283a 3146     		mov	r1, r6
 4229 283c 5CAA     		add	r2, sp, #368
 4230 283e 5868     		ldr	r0, [r3, #4]
 4231 2840 FFF7FEFF 		bl	_ZN7Network13SetMacAddressEjPKh
 4232 2844 0126     		movs	r6, #1
 4233 2846 FEF716BC 		b	.L186
 4234              	.L286:
 4235 284a BC49     		ldr	r1, .L1951+4
 4236 284c 4046     		mov	r0, r8
 4237 284e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4238 2852 0126     		movs	r6, #1
 4239 2854 FEF70FBC 		b	.L186
 4240              	.L287:
 4241 2858 5021     		movs	r1, #80
 4242 285a 2846     		mov	r0, r5
 4243 285c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4244 2860 0028     		cmp	r0, #0
 4245 2862 3EF48DAC 		beq	.L331
 4246 2866 2846     		mov	r0, r5
 4247 2868 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4248 286c 0B28     		cmp	r0, #11
 4249 286e 0646     		mov	r6, r0
 4250 2870 3EF686AC 		bhi	.L331
 4251 2874 5321     		movs	r1, #83
 4252 2876 2846     		mov	r0, r5
 4253 2878 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4254 287c 0746     		mov	r7, r0
 4255 287e 90B1     		cbz	r0, .L816
 4256 2880 2946     		mov	r1, r5
 4257 2882 2046     		mov	r0, r4
 4258 2884 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4259 2888 0746     		mov	r7, r0
 4260 288a 0028     		cmp	r0, #0
 4261 288c 3DF4E1AB 		beq	.L742
 4262 2890 2846     		mov	r0, r5
 4263 2892 D4F80090 		ldr	r9, [r4]
 4264 2896 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4265 289a B144     		add	r9, r9, r6
 4266 289c 0030     		adds	r0, r0, #0
 4267 289e 18BF     		it	ne
 4268 28a0 0120     		movne	r0, #1
 4269 28a2 89F8D000 		strb	r0, [r9, #208]
 4270              	.L816:
 4271 28a6 5221     		movs	r1, #82
 4272 28a8 2846     		mov	r0, r5
 4273 28aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4274 28ae 88B1     		cbz	r0, .L817
 4275 28b0 2946     		mov	r1, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 76


 4276 28b2 2046     		mov	r0, r4
 4277 28b4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4278 28b8 0746     		mov	r7, r0
 4279 28ba 0028     		cmp	r0, #0
 4280 28bc 3DF4C9AB 		beq	.L742
 4281 28c0 2846     		mov	r0, r5
 4282 28c2 D4F80090 		ldr	r9, [r4]
 4283 28c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4284 28ca 3146     		mov	r1, r6
 4285 28cc 42B2     		sxtb	r2, r0
 4286 28ce 4846     		mov	r0, r9
 4287 28d0 FFF7FEFF 		bl	_ZN8Platform14SetEnableValueEja
 4288              	.L817:
 4289 28d4 4D21     		movs	r1, #77
 4290 28d6 2846     		mov	r0, r5
 4291 28d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4292 28dc 8146     		mov	r9, r0
 4293 28de 58B1     		cbz	r0, .L818
 4294 28e0 2846     		mov	r0, r5
 4295 28e2 2768     		ldr	r7, [r4]
 4296 28e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4297 28e8 42B2     		sxtb	r2, r0
 4298 28ea BB19     		adds	r3, r7, r6
 4299 28ec 0032     		adds	r2, r2, #0
 4300 28ee 18BF     		it	ne
 4301 28f0 0122     		movne	r2, #1
 4302 28f2 4F46     		mov	r7, r9
 4303 28f4 83F8DC20 		strb	r2, [r3, #220]
 4304              	.L818:
 4305 28f8 5421     		movs	r1, #84
 4306 28fa 2846     		mov	r0, r5
 4307 28fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4308 2900 8146     		mov	r9, r0
 4309 2902 0028     		cmp	r0, #0
 4310 2904 03F00C84 		beq	.L819
 4311 2908 0427     		movs	r7, #4
 4312 290a 0123     		movs	r3, #1
 4313 290c 1AAA     		add	r2, sp, #104
 4314 290e 5CA9     		add	r1, sp, #368
 4315 2910 2846     		mov	r0, r5
 4316 2912 1A97     		str	r7, [sp, #104]
 4317 2914 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4318 2918 1A9B     		ldr	r3, [sp, #104]
 4319 291a BB42     		cmp	r3, r7
 4320 291c 03F0FA83 		beq	.L820
 4321 2920 8749     		ldr	r1, .L1951+8
 4322 2922 4046     		mov	r0, r8
 4323 2924 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4324 2928 0226     		movs	r6, #2
 4325 292a FEF7A4BB 		b	.L186
 4326              	.L274:
 4327 292e AB68     		ldr	r3, [r5, #8]
 4328 2930 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4329 2932 9B06     		lsls	r3, r3, #26
 4330 2934 3EF524AC 		bmi	.L331
 4331 2938 5021     		movs	r1, #80
 4332 293a 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 77


 4333 293c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4334 2940 0028     		cmp	r0, #0
 4335 2942 02F06C85 		beq	.L768
 4336 2946 5CA9     		add	r1, sp, #368
 4337 2948 2846     		mov	r0, r5
 4338 294a FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 4339 294e 0028     		cmp	r0, #0
 4340 2950 03F09980 		beq	.L769
 4341 2954 5CA9     		add	r1, sp, #368
 4342 2956 2068     		ldr	r0, [r4]
 4343 2958 FFF7FEFF 		bl	_ZN8Platform10SetGateWayEPh
 4344 295c 0126     		movs	r6, #1
 4345 295e FEF78ABB 		b	.L186
 4346              	.L273:
 4347 2962 AB68     		ldr	r3, [r5, #8]
 4348 2964 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 4349 2966 9A06     		lsls	r2, r3, #26
 4350 2968 3EF50AAC 		bmi	.L331
 4351 296c 5021     		movs	r1, #80
 4352 296e 2846     		mov	r0, r5
 4353 2970 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4354 2974 0028     		cmp	r0, #0
 4355 2976 02F06E85 		beq	.L765
 4356 297a 5CA9     		add	r1, sp, #368
 4357 297c 2846     		mov	r0, r5
 4358 297e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 4359 2982 0028     		cmp	r0, #0
 4360 2984 03F06480 		beq	.L766
 4361 2988 5CA9     		add	r1, sp, #368
 4362 298a 2068     		ldr	r0, [r4]
 4363 298c FFF7FEFF 		bl	_ZN8Platform10SetNetMaskEPh
 4364 2990 0126     		movs	r6, #1
 4365 2992 FEF770BB 		b	.L186
 4366              	.L297:
 4367 2996 4246     		mov	r2, r8
 4368 2998 2946     		mov	r1, r5
 4369 299a 2046     		mov	r0, r4
 4370 299c FFF7FEFF 		bl	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
 4371 29a0 0646     		mov	r6, r0
 4372 29a2 FEF768BB 		b	.L186
 4373              	.L285:
 4374 29a6 5021     		movs	r1, #80
 4375 29a8 2846     		mov	r0, r5
 4376 29aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4377 29ae 0028     		cmp	r0, #0
 4378 29b0 3EF4E6AB 		beq	.L331
 4379 29b4 2846     		mov	r0, r5
 4380 29b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4381 29ba 4FFA80F9 		sxtb	r9, r0
 4382 29be 4946     		mov	r1, r9
 4383 29c0 5D48     		ldr	r0, .L1951
 4384 29c2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4385 29c6 0746     		mov	r7, r0
 4386 29c8 0028     		cmp	r0, #0
 4387 29ca 3EF4D9AB 		beq	.L331
 4388 29ce 4521     		movs	r1, #69
 4389 29d0 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 78


 4390 29d2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4391 29d6 0646     		mov	r6, r0
 4392 29d8 0028     		cmp	r0, #0
 4393 29da 03F00780 		beq	.L812
 4394 29de D7F89430 		ldr	r3, [r7, #148]
 4395 29e2 1A93     		str	r3, [sp, #104]
 4396 29e4 1AAA     		add	r2, sp, #104
 4397 29e6 0023     		movs	r3, #0
 4398 29e8 5CA9     		add	r1, sp, #368
 4399 29ea 2846     		mov	r0, r5
 4400 29ec FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4401 29f0 1A9A     		ldr	r2, [sp, #104]
 4402 29f2 D7F89430 		ldr	r3, [r7, #148]
 4403 29f6 9A42     		cmp	r2, r3
 4404 29f8 03F03983 		beq	.L813
 4405 29fc 05F14D02 		add	r2, r5, #77
 4406 2a00 5049     		ldr	r1, .L1951+12
 4407 2a02 4046     		mov	r0, r8
 4408 2a04 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4409              	.L814:
 4410 2a08 0126     		movs	r6, #1
 4411 2a0a FEF734BB 		b	.L186
 4412              	.L294:
 4413 2a0e 5321     		movs	r1, #83
 4414 2a10 2846     		mov	r0, r5
 4415 2a12 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4416 2a16 0028     		cmp	r0, #0
 4417 2a18 3EF4B2AB 		beq	.L331
 4418 2a1c 2846     		mov	r0, r5
 4419 2a1e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4420 2a22 D4F89832 		ldr	r3, [r4, #664]
 4421 2a26 0028     		cmp	r0, #0
 4422 2a28 D4BF     		ite	le
 4423 2a2a 4FF0000A 		movle	r10, #0
 4424 2a2e 4FF0010A 		movgt	r10, #1
 4425 2a32 002B     		cmp	r3, #0
 4426 2a34 02F07782 		beq	.L869
 4427 2a38 04F25947 		addw	r7, r4, #1113
 4428 2a3c 0026     		movs	r6, #0
 4429 2a3e 05E0     		b	.L870
 4430              	.L871:
 4431 2a40 D4F89832 		ldr	r3, [r4, #664]
 4432 2a44 0136     		adds	r6, r6, #1
 4433 2a46 B342     		cmp	r3, r6
 4434 2a48 42F26D82 		bls	.L869
 4435              	.L870:
 4436 2a4c 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 4437 2a50 2846     		mov	r0, r5
 4438 2a52 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4439 2a56 0028     		cmp	r0, #0
 4440 2a58 F2D0     		beq	.L871
 4441 2a5a 3146     		mov	r1, r6
 4442 2a5c 2068     		ldr	r0, [r4]
 4443 2a5e FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 4444 2a62 5045     		cmp	r0, r10
 4445 2a64 ECD0     		beq	.L871
 4446 2a66 0026     		movs	r6, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 79


 4447              	.L867:
 4448 2a68 4521     		movs	r1, #69
 4449 2a6a 2846     		mov	r0, r5
 4450 2a6c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4451 2a70 0028     		cmp	r0, #0
 4452 2a72 3EF400AB 		beq	.L186
 4453 2a76 0DF16809 		add	r9, sp, #104
 4454 2a7a 5CAF     		add	r7, sp, #368
 4455 2a7c 4FF0090C 		mov	ip, #9
 4456 2a80 0023     		movs	r3, #0
 4457 2a82 4A46     		mov	r2, r9
 4458 2a84 3946     		mov	r1, r7
 4459 2a86 2846     		mov	r0, r5
 4460 2a88 C9F800C0 		str	ip, [r9]
 4461 2a8c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 4462 2a90 D9F80030 		ldr	r3, [r9]
 4463 2a94 002B     		cmp	r3, #0
 4464 2a96 3EF4EEAA 		beq	.L186
 4465 2a9a 3A68     		ldr	r2, [r7]
 4466 2a9c 082A     		cmp	r2, #8
 4467 2a9e 03F2F382 		bhi	.L873
 4468 2aa2 4FF0000B 		mov	fp, #0
 4469 2aa6 1146     		mov	r1, r2
 4470 2aa8 09E0     		b	.L874
 4471              	.L1857:
 4472 2aaa D9F80030 		ldr	r3, [r9]
 4473 2aae 5B45     		cmp	r3, fp
 4474 2ab0 7EF6E1AA 		bls	.L186
 4475 2ab4 57F82B10 		ldr	r1, [r7, fp, lsl #2]
 4476 2ab8 0829     		cmp	r1, #8
 4477 2aba 03F2E482 		bhi	.L1856
 4478              	.L874:
 4479 2abe 0331     		adds	r1, r1, #3
 4480 2ac0 2068     		ldr	r0, [r4]
 4481 2ac2 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 4482 2ac6 5045     		cmp	r0, r10
 4483 2ac8 0BF1010B 		add	fp, fp, #1
 4484 2acc EDD0     		beq	.L1857
 4485 2ace 0026     		movs	r6, #0
 4486 2ad0 FEF7D1BA 		b	.L186
 4487              	.L293:
 4488 2ad4 5021     		movs	r1, #80
 4489 2ad6 2846     		mov	r0, r5
 4490 2ad8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4491 2adc 0028     		cmp	r0, #0
 4492 2ade 3EF44FAB 		beq	.L331
 4493 2ae2 2846     		mov	r0, r5
 4494 2ae4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4495 2ae8 0128     		cmp	r0, #1
 4496 2aea 0746     		mov	r7, r0
 4497 2aec 3EF648AB 		bhi	.L331
 4498 2af0 4221     		movs	r1, #66
 4499 2af2 2846     		mov	r0, r5
 4500 2af4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4501 2af8 0028     		cmp	r0, #0
 4502 2afa 43F07083 		bne	.L1858
 4503 2afe 5321     		movs	r1, #83
ARM GAS  /tmp/ccM7BG9e.s 			page 80


 4504 2b00 2846     		mov	r0, r5
 4505 2b02 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4506 2b06 0028     		cmp	r0, #0
 4507 2b08 03F04A85 		beq	.L1859
 4508              	.L969:
 4509 2b0c 2846     		mov	r0, r5
 4510 2b0e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4511 2b12 3946     		mov	r1, r7
 4512 2b14 0246     		mov	r2, r0
 4513 2b16 0646     		mov	r6, r0
 4514 2b18 2068     		ldr	r0, [r4]
 4515 2b1a FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 4516 2b1e 012F     		cmp	r7, #1
 4517 2b20 03F05F85 		beq	.L864
 4518 2b24 636C     		ldr	r3, [r4, #68]
 4519 2b26 1B68     		ldr	r3, [r3]
 4520 2b28 06F00106 		and	r6, r6, #1
 4521 2b2c 83F8EE60 		strb	r6, [r3, #238]
 4522 2b30 0126     		movs	r6, #1
 4523 2b32 FEF7A0BA 		b	.L186
 4524              	.L1952:
 4525 2b36 00BF     		.align	2
 4526              	.L1951:
 4527 2b38 00000000 		.word	reprap
 4528 2b3c 60100000 		.word	.LC174
 4529 2b40 88100000 		.word	.LC175
 4530 2b44 18100000 		.word	.LC172
 4531              	.L295:
 4532 2b48 5CAF     		add	r7, sp, #368
 4533 2b4a D4F89C32 		ldr	r3, [r4, #668]
 4534 2b4e 0022     		movs	r2, #0
 4535 2b50 3A70     		strb	r2, [r7]
 4536 2b52 002B     		cmp	r3, #0
 4537 2b54 01F00886 		beq	.L880
 4538 2b58 04F25946 		addw	r6, r4, #1113
 4539 2b5c 04F52979 		add	r9, r4, #676
 4540              	.L879:
 4541 2b60 4A46     		mov	r2, r9
 4542 2b62 3B46     		mov	r3, r7
 4543 2b64 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 4544 2b66 2846     		mov	r0, r5
 4545 2b68 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4546 2b6c A6F58B63 		sub	r3, r6, #1112
 4547 2b70 D4F89C22 		ldr	r2, [r4, #668]
 4548 2b74 1B1B     		subs	r3, r3, r4
 4549 2b76 9A42     		cmp	r2, r3
 4550 2b78 06F10106 		add	r6, r6, #1
 4551 2b7c 09F10409 		add	r9, r9, #4
 4552 2b80 EED8     		bhi	.L879
 4553 2b82 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 4554 2b84 002B     		cmp	r3, #0
 4555 2b86 01F0EF85 		beq	.L880
 4556              	.L877:
 4557 2b8a 0126     		movs	r6, #1
 4558 2b8c FEF773BA 		b	.L186
 4559              	.L313:
 4560 2b90 636C     		ldr	r3, [r4, #68]
ARM GAS  /tmp/ccM7BG9e.s 			page 81


 4561 2b92 1B68     		ldr	r3, [r3]
 4562 2b94 AB42     		cmp	r3, r5
 4563 2b96 01F09784 		beq	.L1860
 4564 2b9a BF49     		ldr	r1, .L1953
 4565 2b9c 4046     		mov	r0, r8
 4566 2b9e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4567 2ba2 0226     		movs	r6, #2
 4568 2ba4 FEF767BA 		b	.L186
 4569              	.L312:
 4570 2ba8 BC4B     		ldr	r3, .L1953+4
 4571 2baa 9869     		ldr	r0, [r3, #24]
 4572 2bac FFF7FEFF 		bl	_ZN7Scanner6EnableEv
 4573 2bb0 0126     		movs	r6, #1
 4574 2bb2 FEF760BA 		b	.L186
 4575              	.L311:
 4576 2bb6 4246     		mov	r2, r8
 4577 2bb8 2946     		mov	r1, r5
 4578 2bba 2046     		mov	r0, r4
 4579 2bbc FFF7FEFF 		bl	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 4580 2bc0 0646     		mov	r6, r0
 4581 2bc2 FEF758BA 		b	.L186
 4582              	.L310:
 4583 2bc6 4246     		mov	r2, r8
 4584 2bc8 2946     		mov	r1, r5
 4585 2bca 2046     		mov	r0, r4
 4586 2bcc FFF7FEFF 		bl	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 4587 2bd0 0646     		mov	r6, r0
 4588 2bd2 FEF750BA 		b	.L186
 4589              	.L321:
 4590 2bd6 5321     		movs	r1, #83
 4591 2bd8 2846     		mov	r0, r5
 4592 2bda FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4593 2bde 0028     		cmp	r0, #0
 4594 2be0 01F02584 		beq	.L952
 4595 2be4 2846     		mov	r0, r5
 4596 2be6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4597 2bea F2EE047A 		vmov.f32	s15, #1.0e+1
 4598 2bee B4EEE70A 		vcmpe.f32	s0, s15
 4599 2bf2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4600 2bf6 B0EE408A 		vmov.f32	s16, s0
 4601 2bfa 42F1DE81 		bpl	.L1783
 4602 2bfe 2068     		ldr	r0, [r4]
 4603 2c00 FFF7FEFF 		bl	_ZN8Platform15DisableAutoSaveEv
 4604 2c04 0126     		movs	r6, #1
 4605 2c06 FEF736BA 		b	.L186
 4606              	.L320:
 4607 2c0a D4F89832 		ldr	r3, [r4, #664]
 4608 2c0e 002B     		cmp	r3, #0
 4609 2c10 02F03885 		beq	.L1091
 4610 2c14 A24F     		ldr	r7, .L1953+8
 4611 2c16 CDF83480 		str	r8, [sp, #52]
 4612 2c1a 04F26349 		addw	r9, r4, #1123
 4613 2c1e 3F1B     		subs	r7, r7, r4
 4614 2c20 4FF0000B 		mov	fp, #0
 4615 2c24 06E0     		b	.L934
 4616              	.L933:
 4617 2c26 D4F89822 		ldr	r2, [r4, #664]
ARM GAS  /tmp/ccM7BG9e.s 			page 82


 4618 2c2a 09EB0703 		add	r3, r9, r7
 4619 2c2e 9A42     		cmp	r2, r3
 4620 2c30 41F24B81 		bls	.L1861
 4621              	.L934:
 4622 2c34 09EB070A 		add	r10, r9, r7
 4623 2c38 2846     		mov	r0, r5
 4624 2c3a 19F8011F 		ldrb	r1, [r9, #1]!	@ zero_extendqisi2
 4625 2c3e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4626 2c42 8046     		mov	r8, r0
 4627 2c44 0028     		cmp	r0, #0
 4628 2c46 EED0     		beq	.L933
 4629 2c48 D4F800B0 		ldr	fp, [r4]
 4630 2c4c 2846     		mov	r0, r5
 4631 2c4e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4632 2c52 5846     		mov	r0, fp
 4633 2c54 3246     		mov	r2, r6
 4634 2c56 5146     		mov	r1, r10
 4635 2c58 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
 4636 2c5c C346     		mov	fp, r8
 4637 2c5e E2E7     		b	.L933
 4638              	.L319:
 4639 2c60 4246     		mov	r2, r8
 4640 2c62 2946     		mov	r1, r5
 4641 2c64 2046     		mov	r0, r4
 4642 2c66 FFF7FEFF 		bl	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 4643 2c6a 0646     		mov	r6, r0
 4644 2c6c FEF703BA 		b	.L186
 4645              	.L318:
 4646 2c70 8A4B     		ldr	r3, .L1953+4
 4647 2c72 9869     		ldr	r0, [r3, #24]
 4648 2c74 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 4649 2c76 002B     		cmp	r3, #0
 4650 2c78 00F02487 		beq	.L921
 4651 2c7c 0369     		ldr	r3, [r0, #16]
 4652 2c7e 002B     		cmp	r3, #0
 4653 2c80 00F03287 		beq	.L929
 4654 2c84 FFF7FEFF 		bl	_ZN7Scanner8ShutdownEv
 4655 2c88 0646     		mov	r6, r0
 4656 2c8a FEF7F4B9 		b	.L186
 4657              	.L317:
 4658 2c8e DFF80CB2 		ldr	fp, .L1953+4
 4659 2c92 DBF81830 		ldr	r3, [fp, #24]
 4660 2c96 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 4661 2c98 002A     		cmp	r2, #0
 4662 2c9a 00F01387 		beq	.L921
 4663 2c9e 1B69     		ldr	r3, [r3, #16]
 4664 2ca0 002B     		cmp	r3, #0
 4665 2ca2 00F02187 		beq	.L929
 4666 2ca6 5021     		movs	r1, #80
 4667 2ca8 2846     		mov	r0, r5
 4668 2caa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4669 2cae 0028     		cmp	r0, #0
 4670 2cb0 42F05F85 		bne	.L1862
 4671              	.L931:
 4672 2cb4 0146     		mov	r1, r0
 4673 2cb6 DBF81800 		ldr	r0, [fp, #24]
 4674 2cba FFF7FEFF 		bl	_ZN7Scanner12SetAlignmentEb
ARM GAS  /tmp/ccM7BG9e.s 			page 83


 4675 2cbe 0646     		mov	r6, r0
 4676 2cc0 FEF7D9B9 		b	.L186
 4677              	.L316:
 4678 2cc4 DFF8D4B1 		ldr	fp, .L1953+4
 4679 2cc8 DBF81830 		ldr	r3, [fp, #24]
 4680 2ccc 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 4681 2cce 002A     		cmp	r2, #0
 4682 2cd0 00F0F886 		beq	.L921
 4683 2cd4 1B69     		ldr	r3, [r3, #16]
 4684 2cd6 002B     		cmp	r3, #0
 4685 2cd8 00F00687 		beq	.L929
 4686 2cdc 4E21     		movs	r1, #78
 4687 2cde 2846     		mov	r0, r5
 4688 2ce0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4689 2ce4 0028     		cmp	r0, #0
 4690 2ce6 42F0BA85 		bne	.L1863
 4691 2cea 0146     		mov	r1, r0
 4692              	.L930:
 4693 2cec DBF81800 		ldr	r0, [fp, #24]
 4694 2cf0 FFF7FEFF 		bl	_ZN7Scanner9CalibrateEi
 4695 2cf4 0646     		mov	r6, r0
 4696 2cf6 FEF7BEB9 		b	.L186
 4697              	.L305:
 4698 2cfa 2946     		mov	r1, r5
 4699 2cfc 2046     		mov	r0, r4
 4700 2cfe FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4701 2d02 0028     		cmp	r0, #0
 4702 2d04 3DF4A5A9 		beq	.L742
 4703 2d08 DFF890B1 		ldr	fp, .L1953+4
 4704 2d0c DBF80870 		ldr	r7, [fp, #8]
 4705 2d10 D7F8583A 		ldr	r3, [r7, #2648]
 4706 2d14 5321     		movs	r1, #83
 4707 2d16 2846     		mov	r0, r5
 4708 2d18 93F80EA0 		ldrb	r10, [r3, #14]	@ zero_extendqisi2
 4709 2d1c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4710 2d20 8146     		mov	r9, r0
 4711 2d22 0028     		cmp	r0, #0
 4712 2d24 42F0D684 		bne	.L1864
 4713              	.L900:
 4714 2d28 0023     		movs	r3, #0
 4715 2d2a 8DF87031 		strb	r3, [sp, #368]
 4716 2d2e D7F8580A 		ldr	r0, [r7, #2648]
 4717 2d32 5CAA     		add	r2, sp, #368
 4718 2d34 0368     		ldr	r3, [r0]
 4719 2d36 0092     		str	r2, [sp]
 4720 2d38 5B68     		ldr	r3, [r3, #4]
 4721 2d3a 0D92     		str	r2, [sp, #52]
 4722 2d3c 1E46     		mov	r6, r3
 4723 2d3e 2A46     		mov	r2, r5
 4724 2d40 4346     		mov	r3, r8
 4725 2d42 40F29B21 		movw	r1, #667
 4726 2d46 B047     		blx	r6
 4727 2d48 0028     		cmp	r0, #0
 4728 2d4a 43F05E82 		bne	.L906
 4729 2d4e 0D9A     		ldr	r2, [sp, #52]
 4730 2d50 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 4731 2d52 002B     		cmp	r3, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 84


 4732 2d54 0CBF     		ite	eq
 4733 2d56 0126     		moveq	r6, #1
 4734 2d58 0226     		movne	r6, #2
 4735 2d5a B9F1000F 		cmp	r9, #0
 4736 2d5e 3EF48AA9 		beq	.L186
 4737              	.L905:
 4738 2d62 D7F8580A 		ldr	r0, [r7, #2648]
 4739 2d66 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 4740 2d68 5345     		cmp	r3, r10
 4741 2d6a 04F1DC07 		add	r7, r4, #220
 4742 2d6e 0BD0     		beq	.L908
 4743 2d70 0368     		ldr	r3, [r0]
 4744 2d72 D4F89C12 		ldr	r1, [r4, #668]
 4745 2d76 1B6B     		ldr	r3, [r3, #48]
 4746 2d78 3A46     		mov	r2, r7
 4747 2d7a 9847     		blx	r3
 4748 2d7c 04F1B402 		add	r2, r4, #180
 4749 2d80 3946     		mov	r1, r7
 4750 2d82 2046     		mov	r0, r4
 4751 2d84 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 4752              	.L908:
 4753 2d88 DBF80820 		ldr	r2, [fp, #8]
 4754 2d8c D4F87434 		ldr	r3, [r4, #1140]
 4755 2d90 D2F8580A 		ldr	r0, [r2, #2648]
 4756 2d94 D4F89C22 		ldr	r2, [r4, #668]
 4757 2d98 0168     		ldr	r1, [r0]
 4758 2d9a 4FF0000C 		mov	ip, #0
 4759 2d9e CDF800C0 		str	ip, [sp]
 4760 2da2 D1F82890 		ldr	r9, [r1, #40]
 4761 2da6 3946     		mov	r1, r7
 4762 2da8 C847     		blx	r9
 4763 2daa 0028     		cmp	r0, #0
 4764 2dac 43F01184 		bne	.L1865
 4765              	.L909:
 4766 2db0 DBF80800 		ldr	r0, [fp, #8]
 4767 2db4 3946     		mov	r1, r7
 4768 2db6 0122     		movs	r2, #1
 4769 2db8 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 4770 2dbc 2046     		mov	r0, r4
 4771 2dbe FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 4772 2dc2 FEF758B9 		b	.L186
 4773              	.L242:
 4774 2dc6 5021     		movs	r1, #80
 4775 2dc8 2846     		mov	r0, r5
 4776 2dca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4777 2dce 0028     		cmp	r0, #0
 4778 2dd0 3EF4D6A9 		beq	.L331
 4779 2dd4 2846     		mov	r0, r5
 4780 2dd6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4781 2dda 0DF16809 		add	r9, sp, #104
 4782 2dde 0646     		mov	r6, r0
 4783 2de0 5CAF     		add	r7, sp, #368
 4784 2de2 2068     		ldr	r0, [r4]
 4785 2de4 0097     		str	r7, [sp]
 4786 2de6 B1B2     		uxth	r1, r6
 4787 2de8 4B46     		mov	r3, r9
 4788 2dea 0322     		movs	r2, #3
ARM GAS  /tmp/ccM7BG9e.s 			page 85


 4789 2dec FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 4790 2df0 0028     		cmp	r0, #0
 4791 2df2 02F0F983 		beq	.L633
 4792 2df6 4921     		movs	r1, #73
 4793 2df8 2846     		mov	r0, r5
 4794 2dfa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4795 2dfe 0028     		cmp	r0, #0
 4796 2e00 42F0C287 		bne	.L1866
 4797              	.L635:
 4798 2e04 5321     		movs	r1, #83
 4799 2e06 2846     		mov	r0, r5
 4800 2e08 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4801 2e0c 0028     		cmp	r0, #0
 4802 2e0e 43F03680 		bne	.L1867
 4803              	.L637:
 4804 2e12 0126     		movs	r6, #1
 4805 2e14 FEF72FB9 		b	.L186
 4806              	.L228:
 4807 2e18 5321     		movs	r1, #83
 4808 2e1a 2846     		mov	r0, r5
 4809 2e1c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4810 2e20 0028     		cmp	r0, #0
 4811 2e22 01F08E81 		beq	.L517
 4812 2e26 2846     		mov	r0, r5
 4813 2e28 2768     		ldr	r7, [r4]
 4814 2e2a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4815 2e2e DFED1D7A 		vldr.32	s15, .L1953+12
 4816 2e32 20EE270A 		vmul.f32	s0, s0, s15
 4817 2e36 B5EEC00A 		vcmpe.f32	s0, #0
 4818 2e3a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4819 2e3e 7EF79FA9 		ble	.L331
 4820 2e42 DFED197A 		vldr.32	s15, .L1953+16
 4821 2e46 20EE270A 		vmul.f32	s0, s0, s15
 4822 2e4a 0126     		movs	r6, #1
 4823 2e4c BCEEC00A 		vcvt.u32.f32	s0, s0
 4824 2e50 10EE103A 		vmov	r3, s0	@ int
 4825 2e54 C7F8D437 		str	r3, [r7, #2004]
 4826 2e58 FEF70DB9 		b	.L186
 4827              	.L226:
 4828 2e5c 2946     		mov	r1, r5
 4829 2e5e 2046     		mov	r0, r4
 4830 2e60 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 4831 2e64 0126     		movs	r6, #1
 4832 2e66 FEF706B9 		b	.L186
 4833              	.L214:
 4834 2e6a 0022     		movs	r2, #0
 4835 2e6c 2946     		mov	r1, r5
 4836 2e6e 2046     		mov	r0, r4
 4837 2e70 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4838 2e74 0646     		mov	r6, r0
 4839 2e76 FEF7FEB8 		b	.L186
 4840              	.L315:
 4841 2e7a 084B     		ldr	r3, .L1953+4
 4842 2e7c 9869     		ldr	r0, [r3, #24]
 4843 2e7e 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 4844 2e80 002B     		cmp	r3, #0
 4845 2e82 00F01F86 		beq	.L921
ARM GAS  /tmp/ccM7BG9e.s 			page 86


 4846 2e86 0369     		ldr	r3, [r0, #16]
 4847 2e88 002B     		cmp	r3, #0
 4848 2e8a 00F02D86 		beq	.L929
 4849 2e8e FFF7FEFF 		bl	_ZN7Scanner6CancelEv
 4850 2e92 0646     		mov	r6, r0
 4851 2e94 FEF7EFB8 		b	.L186
 4852              	.L1954:
 4853              		.align	2
 4854              	.L1953:
 4855 2e98 24140000 		.word	.LC199
 4856 2e9c 00000000 		.word	reprap
 4857 2ea0 9DFBFFFF 		.word	-1123
 4858 2ea4 6F12833A 		.word	981668463
 4859 2ea8 00007A44 		.word	1148846080
 4860              	.L314:
 4861 2eac 5021     		movs	r1, #80
 4862 2eae 2846     		mov	r0, r5
 4863 2eb0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4864 2eb4 0028     		cmp	r0, #0
 4865 2eb6 01F03D81 		beq	.L922
 4866 2eba 5CAF     		add	r7, sp, #368
 4867 2ebc 0022     		movs	r2, #0
 4868 2ebe 7923     		movs	r3, #121
 4869 2ec0 1AA9     		add	r1, sp, #104
 4870 2ec2 2846     		mov	r0, r5
 4871 2ec4 3A70     		strb	r2, [r7]
 4872 2ec6 CDE91A73 		strd	r7, r3, [sp, #104]
 4873 2eca FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 4874 2ece 5321     		movs	r1, #83
 4875 2ed0 2846     		mov	r0, r5
 4876 2ed2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4877 2ed6 0028     		cmp	r0, #0
 4878 2ed8 02F03A81 		beq	.L923
 4879 2edc DFF8B0B3 		ldr	fp, .L1955
 4880 2ee0 2846     		mov	r0, r5
 4881 2ee2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4882 2ee6 DBF81830 		ldr	r3, [fp, #24]
 4883 2eea 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 4884 2eec 8146     		mov	r9, r0
 4885 2eee 002A     		cmp	r2, #0
 4886 2ef0 02F0A785 		beq	.L924
 4887 2ef4 1B69     		ldr	r3, [r3, #16]
 4888 2ef6 002B     		cmp	r3, #0
 4889 2ef8 02F09C85 		beq	.L925
 4890 2efc 5221     		movs	r1, #82
 4891 2efe 2846     		mov	r0, r5
 4892 2f00 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4893 2f04 0028     		cmp	r0, #0
 4894 2f06 43F0B880 		bne	.L1868
 4895 2f0a 6426     		movs	r6, #100
 4896              	.L926:
 4897 2f0c 4E21     		movs	r1, #78
 4898 2f0e 2846     		mov	r0, r5
 4899 2f10 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4900 2f14 10B1     		cbz	r0, .L927
 4901 2f16 2846     		mov	r0, r5
 4902 2f18 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  /tmp/ccM7BG9e.s 			page 87


 4903              	.L927:
 4904 2f1c 0090     		str	r0, [sp]
 4905 2f1e 3346     		mov	r3, r6
 4906 2f20 4A46     		mov	r2, r9
 4907 2f22 3946     		mov	r1, r7
 4908 2f24 DBF81800 		ldr	r0, [fp, #24]
 4909 2f28 FFF7FEFF 		bl	_ZN7Scanner9StartScanEPKciii
 4910 2f2c 0646     		mov	r6, r0
 4911 2f2e FEF7A2B8 		b	.L186
 4912              	.L246:
 4913 2f32 5021     		movs	r1, #80
 4914 2f34 2846     		mov	r0, r5
 4915 2f36 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4916 2f3a 0028     		cmp	r0, #0
 4917 2f3c 41F0C285 		bne	.L1869
 4918 2f40 4FF47A76 		mov	r6, #1000
 4919              	.L669:
 4920 2f44 5321     		movs	r1, #83
 4921 2f46 2846     		mov	r0, r5
 4922 2f48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4923 2f4c 0028     		cmp	r0, #0
 4924 2f4e 41F0B385 		bne	.L1870
 4925 2f52 41F2F811 		movw	r1, #4600
 4926              	.L670:
 4927 2f56 3246     		mov	r2, r6
 4928 2f58 CD48     		ldr	r0, .L1955
 4929 2f5a FFF7FEFF 		bl	_ZN6RepRap4BeepEjj
 4930 2f5e 0126     		movs	r6, #1
 4931 2f60 FEF789B8 		b	.L186
 4932              	.L245:
 4933 2f64 CA48     		ldr	r0, .L1955
 4934 2f66 FFF7FEFF 		bl	_ZN6RepRap10ClearAlertEv
 4935 2f6a 5021     		movs	r1, #80
 4936 2f6c 2846     		mov	r0, r5
 4937 2f6e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4938 2f72 0746     		mov	r7, r0
 4939 2f74 0028     		cmp	r0, #0
 4940 2f76 41F0AB85 		bne	.L1871
 4941              	.L666:
 4942 2f7a 04F11406 		add	r6, r4, #20
 4943 2f7e 04F13409 		add	r9, r4, #52
 4944              	.L668:
 4945 2f82 56F8043F 		ldr	r3, [r6, #4]!
 4946 2f86 3946     		mov	r1, r7
 4947 2f88 1846     		mov	r0, r3
 4948 2f8a 0BB1     		cbz	r3, .L667
 4949 2f8c FFF7FEFF 		bl	_ZN11GCodeBuffer19MessageAcknowledgedEb
 4950              	.L667:
 4951 2f90 B145     		cmp	r9, r6
 4952 2f92 F6D1     		bne	.L668
 4953 2f94 FEF7F4B8 		b	.L331
 4954              	.L244:
 4955 2f98 5CAF     		add	r7, sp, #368
 4956 2f9a 0DF16809 		add	r9, sp, #104
 4957 2f9e 0026     		movs	r6, #0
 4958 2fa0 16AB     		add	r3, sp, #88
 4959 2fa2 3A46     		mov	r2, r7
ARM GAS  /tmp/ccM7BG9e.s 			page 88


 4960 2fa4 40F2011A 		movw	r10, #257
 4961 2fa8 5221     		movs	r1, #82
 4962 2faa 0DF1600B 		add	fp, sp, #96
 4963 2fae 2846     		mov	r0, r5
 4964 2fb0 89F80060 		strb	r6, [r9]
 4965 2fb4 8DF85860 		strb	r6, [sp, #88]
 4966 2fb8 C7E9009A 		strd	r9, r10, [r7]
 4967 2fbc FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 4968 2fc0 16AB     		add	r3, sp, #88
 4969 2fc2 5A46     		mov	r2, fp
 4970 2fc4 5021     		movs	r1, #80
 4971 2fc6 2846     		mov	r0, r5
 4972 2fc8 3E70     		strb	r6, [r7]
 4973 2fca CBE9007A 		strd	r7, r10, [fp]
 4974 2fce FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 4975 2fd2 9DF85830 		ldrb	r3, [sp, #88]	@ zero_extendqisi2
 4976 2fd6 002B     		cmp	r3, #0
 4977 2fd8 41F08485 		bne	.L1872
 4978              	.L652:
 4979 2fdc 0126     		movs	r6, #1
 4980 2fde FEF74AB8 		b	.L186
 4981              	.L243:
 4982 2fe2 5321     		movs	r1, #83
 4983 2fe4 2846     		mov	r0, r5
 4984 2fe6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4985 2fea 30B9     		cbnz	r0, .L647
 4986 2fec 5A21     		movs	r1, #90
 4987 2fee 2846     		mov	r0, r5
 4988 2ff0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4989 2ff4 0028     		cmp	r0, #0
 4990 2ff6 02F06682 		beq	.L1873
 4991              	.L647:
 4992 2ffa 2846     		mov	r0, r5
 4993 2ffc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4994 3000 2946     		mov	r1, r5
 4995 3002 2046     		mov	r0, r4
 4996 3004 B0EE408A 		vmov.f32	s16, s0
 4997 3008 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 4998 300c 0028     		cmp	r0, #0
 4999 300e 3DF420A8 		beq	.L742
 5000 3012 5221     		movs	r1, #82
 5001 3014 2846     		mov	r0, r5
 5002 3016 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5003 301a 0028     		cmp	r0, #0
 5004 301c 42F04E84 		bne	.L1771
 5005 3020 04F59E63 		add	r3, r4, #1264
 5006              	.L648:
 5007 3024 B4EE488A 		vcmp.f32	s16, s16
 5008 3028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5009 302c 09D6     		bvs	.L649
 5010 302e F7EE007A 		vmov.f32	s15, #1.0e+0
 5011 3032 B4EEE78A 		vcmpe.f32	s16, s15
 5012 3036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5013 303a 02F1DD83 		bmi	.L1874
 5014 303e B0EE678A 		vmov.f32	s16, s15
 5015              	.L649:
 5016 3042 D3ED007A 		vldr.32	s15, [r3]
ARM GAS  /tmp/ccM7BG9e.s 			page 89


 5017 3046 924A     		ldr	r2, .L1955
 5018 3048 77EE887A 		vadd.f32	s15, s15, s16
 5019 304c 9068     		ldr	r0, [r2, #8]
 5020 304e C3ED007A 		vstr.32	s15, [r3]
 5021 3052 B0EE480A 		vmov.f32	s0, s16
 5022 3056 FFF7FEFF 		bl	_ZN4Move16PushBabySteppingEf
 5023 305a 94ED457A 		vldr.32	s14, [r4, #276]
 5024 305e D4ED397A 		vldr.32	s15, [r4, #228]
 5025 3062 37EE007A 		vadd.f32	s14, s14, s0
 5026 3066 77EE887A 		vadd.f32	s15, s15, s16
 5027 306a 84ED457A 		vstr.32	s14, [r4, #276]
 5028 306e C4ED397A 		vstr.32	s15, [r4, #228]
 5029 3072 0126     		movs	r6, #1
 5030 3074 FDF7FFBF 		b	.L186
 5031              	.L248:
 5032 3078 5021     		movs	r1, #80
 5033 307a 2846     		mov	r0, r5
 5034 307c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5035 3080 834B     		ldr	r3, .L1955
 5036 3082 0028     		cmp	r0, #0
 5037 3084 41F00685 		bne	.L1875
 5038 3088 D968     		ldr	r1, [r3, #12]
 5039 308a 824A     		ldr	r2, .L1955+4
 5040 308c 91F8D100 		ldrb	r0, [r1, #209]	@ zero_extendqisi2
 5041 3090 814B     		ldr	r3, .L1955+8
 5042 3092 8249     		ldr	r1, .L1955+12
 5043 3094 0028     		cmp	r0, #0
 5044 3096 18BF     		it	ne
 5045 3098 1A46     		movne	r2, r3
 5046 309a 4046     		mov	r0, r8
 5047 309c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5048 30a0 0126     		movs	r6, #1
 5049 30a2 FDF7E8BF 		b	.L186
 5050              	.L247:
 5051 30a6 4346     		mov	r3, r8
 5052 30a8 0122     		movs	r2, #1
 5053 30aa 2946     		mov	r1, r5
 5054 30ac 2046     		mov	r0, r4
 5055 30ae FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 5056 30b2 0126     		movs	r6, #1
 5057 30b4 FDF7DFBF 		b	.L186
 5058              	.L309:
 5059 30b8 4246     		mov	r2, r8
 5060 30ba 2946     		mov	r1, r5
 5061 30bc 2068     		ldr	r0, [r4]
 5062 30be FFF7FEFF 		bl	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 5063 30c2 0028     		cmp	r0, #0
 5064 30c4 7EF491AE 		bne	.L919
 5065 30c8 FEF75AB8 		b	.L331
 5066              	.L308:
 5067 30cc 2946     		mov	r1, r5
 5068 30ce 2046     		mov	r0, r4
 5069 30d0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5070 30d4 0028     		cmp	r0, #0
 5071 30d6 3CF4BCAF 		beq	.L742
 5072 30da 6D4B     		ldr	r3, .L1955
 5073 30dc 0022     		movs	r2, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 90


 5074 30de 9B68     		ldr	r3, [r3, #8]
 5075 30e0 8DF87021 		strb	r2, [sp, #368]
 5076 30e4 D3F8580A 		ldr	r0, [r3, #2648]
 5077 30e8 5CAE     		add	r6, sp, #368
 5078 30ea 0368     		ldr	r3, [r0]
 5079 30ec 0096     		str	r6, [sp]
 5080 30ee 5F68     		ldr	r7, [r3, #4]
 5081 30f0 2A46     		mov	r2, r5
 5082 30f2 4346     		mov	r3, r8
 5083 30f4 40F29F21 		movw	r1, #671
 5084 30f8 B847     		blx	r7
 5085 30fa 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 5086 30fc 002B     		cmp	r3, #0
 5087 30fe 0CBF     		ite	eq
 5088 3100 0126     		moveq	r6, #1
 5089 3102 0226     		movne	r6, #2
 5090 3104 FDF7B7BF 		b	.L186
 5091              	.L307:
 5092 3108 614B     		ldr	r3, .L1955
 5093 310a 4246     		mov	r2, r8
 5094 310c 186A     		ldr	r0, [r3, #32]
 5095 310e 2946     		mov	r1, r5
 5096 3110 FFF7FEFF 		bl	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef
 5097 3114 0028     		cmp	r0, #0
 5098 3116 3EF433A8 		beq	.L331
 5099 311a FEF766BE 		b	.L919
 5100              	.L306:
 5101 311e 2946     		mov	r1, r5
 5102 3120 2046     		mov	r0, r4
 5103 3122 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5104 3126 0028     		cmp	r0, #0
 5105 3128 3CF493AF 		beq	.L742
 5106 312c DFF860B1 		ldr	fp, .L1955
 5107 3130 DBF80870 		ldr	r7, [fp, #8]
 5108 3134 D7F8583A 		ldr	r3, [r7, #2648]
 5109 3138 4B21     		movs	r1, #75
 5110 313a 2846     		mov	r0, r5
 5111 313c 93F80EA0 		ldrb	r10, [r3, #14]	@ zero_extendqisi2
 5112 3140 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5113 3144 8146     		mov	r9, r0
 5114 3146 0028     		cmp	r0, #0
 5115 3148 42F08682 		bne	.L1876
 5116              	.L910:
 5117 314c 0023     		movs	r3, #0
 5118 314e 8DF87031 		strb	r3, [sp, #368]
 5119 3152 D7F8580A 		ldr	r0, [r7, #2648]
 5120 3156 5CAA     		add	r2, sp, #368
 5121 3158 0368     		ldr	r3, [r0]
 5122 315a 0092     		str	r2, [sp]
 5123 315c 5B68     		ldr	r3, [r3, #4]
 5124 315e 0D92     		str	r2, [sp, #52]
 5125 3160 1E46     		mov	r6, r3
 5126 3162 2A46     		mov	r2, r5
 5127 3164 4346     		mov	r3, r8
 5128 3166 40F29D21 		movw	r1, #669
 5129 316a B047     		blx	r6
 5130 316c 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 91


 5131 316e 42F0A982 		bne	.L913
 5132 3172 0D9A     		ldr	r2, [sp, #52]
 5133 3174 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 5134 3176 002B     		cmp	r3, #0
 5135 3178 0CBF     		ite	eq
 5136 317a 0126     		moveq	r6, #1
 5137 317c 0226     		movne	r6, #2
 5138 317e B9F1000F 		cmp	r9, #0
 5139 3182 3DF478AF 		beq	.L186
 5140              	.L973:
 5141 3186 D7F8580A 		ldr	r0, [r7, #2648]
 5142 318a 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 5143 318c 5345     		cmp	r3, r10
 5144 318e 04F1DC07 		add	r7, r4, #220
 5145 3192 0BD0     		beq	.L916
 5146 3194 0368     		ldr	r3, [r0]
 5147 3196 D4F89C12 		ldr	r1, [r4, #668]
 5148 319a 1B6B     		ldr	r3, [r3, #48]
 5149 319c 3A46     		mov	r2, r7
 5150 319e 9847     		blx	r3
 5151 31a0 04F1B402 		add	r2, r4, #180
 5152 31a4 3946     		mov	r1, r7
 5153 31a6 2046     		mov	r0, r4
 5154 31a8 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5155              	.L916:
 5156 31ac DBF80820 		ldr	r2, [fp, #8]
 5157 31b0 D4F87434 		ldr	r3, [r4, #1140]
 5158 31b4 D2F8580A 		ldr	r0, [r2, #2648]
 5159 31b8 D4F89C22 		ldr	r2, [r4, #668]
 5160 31bc 0168     		ldr	r1, [r0]
 5161 31be 4FF0000C 		mov	ip, #0
 5162 31c2 CDF800C0 		str	ip, [sp]
 5163 31c6 D1F82890 		ldr	r9, [r1, #40]
 5164 31ca 3946     		mov	r1, r7
 5165 31cc C847     		blx	r9
 5166 31ce 28B1     		cbz	r0, .L917
 5167 31d0 04F1B402 		add	r2, r4, #180
 5168 31d4 3946     		mov	r1, r7
 5169 31d6 2046     		mov	r0, r4
 5170 31d8 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5171              	.L917:
 5172 31dc DBF80800 		ldr	r0, [fp, #8]
 5173 31e0 3946     		mov	r1, r7
 5174 31e2 0122     		movs	r2, #1
 5175 31e4 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 5176 31e8 2046     		mov	r0, r4
 5177 31ea FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5178 31ee FDF742BF 		b	.L186
 5179              	.L302:
 5180 31f2 4421     		movs	r1, #68
 5181 31f4 2846     		mov	r0, r5
 5182 31f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5183 31fa 0028     		cmp	r0, #0
 5184 31fc 3DF4C0AF 		beq	.L331
 5185 3200 2846     		mov	r0, r5
 5186 3202 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5187 3206 0021     		movs	r1, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 92


 5188 3208 0746     		mov	r7, r0
 5189 320a 0020     		movs	r0, #0
 5190 320c 1890     		str	r0, [sp, #96]	@ float
 5191 320e 17AB     		add	r3, sp, #92
 5192 3210 18AA     		add	r2, sp, #96
 5193 3212 8DF85C10 		strb	r1, [sp, #92]
 5194 3216 1A90     		str	r0, [sp, #104]	@ float
 5195 3218 4121     		movs	r1, #65
 5196 321a 2846     		mov	r0, r5
 5197 321c 204E     		ldr	r6, .L1955+16
 5198 321e 5C96     		str	r6, [sp, #368]	@ float
 5199 3220 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5200 3224 17AB     		add	r3, sp, #92
 5201 3226 1AAA     		add	r2, sp, #104
 5202 3228 4221     		movs	r1, #66
 5203 322a 2846     		mov	r0, r5
 5204 322c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5205 3230 17AB     		add	r3, sp, #92
 5206 3232 5CAA     		add	r2, sp, #368
 5207 3234 4C21     		movs	r1, #76
 5208 3236 2846     		mov	r0, r5
 5209 3238 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5210 323c 9DF85C30 		ldrb	r3, [sp, #92]	@ zero_extendqisi2
 5211 3240 002B     		cmp	r3, #0
 5212 3242 02F0EB81 		beq	.L889
 5213 3246 3946     		mov	r1, r7
 5214 3248 9DED5C1A 		vldr.32	s2, [sp, #368]
 5215 324c DDED1A0A 		vldr.32	s1, [sp, #104]
 5216 3250 9DED180A 		vldr.32	s0, [sp, #96]
 5217 3254 2068     		ldr	r0, [r4]
 5218 3256 FFF7FEFF 		bl	_ZN8Platform21SetNonlinearExtrusionEjfff
 5219              	.L890:
 5220 325a 0126     		movs	r6, #1
 5221 325c FDF70BBF 		b	.L186
 5222              	.L301:
 5223 3260 4421     		movs	r1, #68
 5224 3262 2846     		mov	r0, r5
 5225 3264 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5226 3268 0028     		cmp	r0, #0
 5227 326a 3DF489AF 		beq	.L331
 5228 326e 2846     		mov	r0, r5
 5229 3270 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5230 3274 D4F8A032 		ldr	r3, [r4, #672]
 5231 3278 8342     		cmp	r3, r0
 5232 327a 7DF681AF 		bls	.L331
 5233 327e 0246     		mov	r2, r0
 5234 3280 4146     		mov	r1, r8
 5235 3282 2846     		mov	r0, r5
 5236 3284 FFF7FEFF 		bl	_ZN15FilamentMonitor9ConfigureER11GCodeBufferRK9StringRefj
 5237 3288 0646     		mov	r6, r0
 5238 328a FDF7F4BE 		b	.L186
 5239              	.L1956:
 5240 328e 00BF     		.align	2
 5241              	.L1955:
 5242 3290 00000000 		.word	reprap
 5243 3294 2C000000 		.word	.LC16
 5244 3298 24000000 		.word	.LC15
ARM GAS  /tmp/ccM7BG9e.s 			page 93


 5245 329c C80A0000 		.word	.LC126
 5246 32a0 CDCC4C3E 		.word	1045220557
 5247              	.L300:
 5248 32a4 AB68     		ldr	r3, [r5, #8]
 5249 32a6 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5250 32a8 13F02007 		ands	r7, r3, #32
 5251 32ac 7DF468AF 		bne	.L331
 5252 32b0 0DF5B879 		add	r9, sp, #368
 5253 32b4 D24B     		ldr	r3, .L1957
 5254 32b6 3146     		mov	r1, r6
 5255 32b8 5868     		ldr	r0, [r3, #4]
 5256 32ba CDF80090 		str	r9, [sp]
 5257 32be 4346     		mov	r3, r8
 5258 32c0 2A46     		mov	r2, r5
 5259 32c2 C9F80070 		str	r7, [r9]
 5260 32c6 FFF7FEFF 		bl	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 5261 32ca D9F80030 		ldr	r3, [r9]
 5262 32ce 0646     		mov	r6, r0
 5263 32d0 002B     		cmp	r3, #0
 5264 32d2 3DF4D0AE 		beq	.L186
 5265 32d6 0128     		cmp	r0, #1
 5266 32d8 02F0C783 		beq	.L1877
 5267 32dc 4846     		mov	r0, r9
 5268 32de FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 5269 32e2 FDF7C8BE 		b	.L186
 5270              	.L324:
 5271 32e6 2368     		ldr	r3, [r4]
 5272 32e8 C64A     		ldr	r2, .L1957+4
 5273 32ea D3F8B409 		ldr	r0, [r3, #2484]
 5274 32ee C649     		ldr	r1, .L1957+8
 5275 32f0 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 5276 32f4 0028     		cmp	r0, #0
 5277 32f6 41F05E80 		bne	.L962
 5278 32fa C449     		ldr	r1, .L1957+12
 5279 32fc 4046     		mov	r0, r8
 5280 32fe FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5281 3302 0226     		movs	r6, #2
 5282 3304 FDF7B7BE 		b	.L186
 5283              	.L303:
 5284 3308 2946     		mov	r1, r5
 5285 330a 2046     		mov	r0, r4
 5286 330c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5287 3310 0028     		cmp	r0, #0
 5288 3312 3CF49EAE 		beq	.L742
 5289 3316 DFF8E8B2 		ldr	fp, .L1957
 5290 331a 4C21     		movs	r1, #76
 5291 331c 2846     		mov	r0, r5
 5292 331e DBF80860 		ldr	r6, [fp, #8]
 5293 3322 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5294 3326 0028     		cmp	r0, #0
 5295 3328 01F09887 		beq	.L891
 5296              	.L894:
 5297 332c D6F8580A 		ldr	r0, [r6, #2648]
 5298 3330 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 5299 3332 032B     		cmp	r3, #3
 5300 3334 01F09B87 		beq	.L893
 5301 3338 0321     		movs	r1, #3
ARM GAS  /tmp/ccM7BG9e.s 			page 94


 5302 333a 3046     		mov	r0, r6
 5303 333c 5CAF     		add	r7, sp, #368
 5304 333e FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 5305 3342 0023     		movs	r3, #0
 5306 3344 3B70     		strb	r3, [r7]
 5307 3346 D6F8580A 		ldr	r0, [r6, #2648]
 5308 334a 0368     		ldr	r3, [r0]
 5309 334c 0097     		str	r7, [sp]
 5310 334e D3F80490 		ldr	r9, [r3, #4]
 5311 3352 2A46     		mov	r2, r5
 5312 3354 4346     		mov	r3, r8
 5313 3356 40F29921 		movw	r1, #665
 5314 335a C847     		blx	r9
 5315 335c D6F8580A 		ldr	r0, [r6, #2648]
 5316 3360 D4F89C12 		ldr	r1, [r4, #668]
 5317 3364 0368     		ldr	r3, [r0]
 5318 3366 04F1DC06 		add	r6, r4, #220
 5319 336a 3246     		mov	r2, r6
 5320 336c 1B6B     		ldr	r3, [r3, #48]
 5321 336e 9847     		blx	r3
 5322 3370 3146     		mov	r1, r6
 5323 3372 04F1B402 		add	r2, r4, #180
 5324 3376 2046     		mov	r0, r4
 5325 3378 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5326              	.L972:
 5327 337c DBF80820 		ldr	r2, [fp, #8]
 5328 3380 D4F87434 		ldr	r3, [r4, #1140]
 5329 3384 D2F8580A 		ldr	r0, [r2, #2648]
 5330 3388 D4F89C22 		ldr	r2, [r4, #668]
 5331 338c 0168     		ldr	r1, [r0]
 5332 338e 4FF0000C 		mov	ip, #0
 5333 3392 CDF800C0 		str	ip, [sp]
 5334 3396 D1F82890 		ldr	r9, [r1, #40]
 5335 339a 3146     		mov	r1, r6
 5336 339c C847     		blx	r9
 5337 339e 28B1     		cbz	r0, .L896
 5338 33a0 04F1B402 		add	r2, r4, #180
 5339 33a4 3146     		mov	r1, r6
 5340 33a6 2046     		mov	r0, r4
 5341 33a8 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5342              	.L896:
 5343 33ac DBF80800 		ldr	r0, [fp, #8]
 5344 33b0 3146     		mov	r1, r6
 5345 33b2 0122     		movs	r2, #1
 5346 33b4 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 5347 33b8 2046     		mov	r0, r4
 5348 33ba FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5349              	.L971:
 5350 33be 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 5351 33c0 002B     		cmp	r3, #0
 5352 33c2 0CBF     		ite	eq
 5353 33c4 0126     		moveq	r6, #1
 5354 33c6 0226     		movne	r6, #2
 5355 33c8 FDF755BE 		b	.L186
 5356              	.L237:
 5357 33cc 5321     		movs	r1, #83
 5358 33ce 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 95


 5359 33d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5360 33d4 0028     		cmp	r0, #0
 5361 33d6 01F04E80 		beq	.L619
 5362 33da 2846     		mov	r0, r5
 5363 33dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5364 33e0 DFED8B7A 		vldr.32	s15, .L1957+16
 5365 33e4 DFED8B6A 		vldr.32	s13, .L1957+20
 5366 33e8 60EE277A 		vmul.f32	s15, s0, s15
 5367 33ec 67EEA66A 		vmul.f32	s13, s15, s13
 5368 33f0 F5EEC06A 		vcmpe.f32	s13, #0
 5369 33f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5370 33f8 42F30982 		ble	.L1766
 5371 33fc 04F2A440 		addw	r0, r4, #1188
 5372 3400 D0ED007A 		vldr.32	s15, [r0]
 5373 3404 86EEA77A 		vdiv.f32	s14, s13, s15
 5374 3408 04F11802 		add	r2, r4, #24
 5375 340c 04F13801 		add	r1, r4, #56
 5376              	.L624:
 5377 3410 52F8043B 		ldr	r3, [r2], #4
 5378 3414 9B68     		ldr	r3, [r3, #8]
 5379 3416 43B1     		cbz	r3, .L625
 5380              	.L622:
 5381 3418 D3ED017A 		vldr.32	s15, [r3, #4]
 5382 341c 67EE877A 		vmul.f32	s15, s15, s14
 5383 3420 C3ED017A 		vstr.32	s15, [r3, #4]
 5384 3424 1B68     		ldr	r3, [r3]
 5385 3426 002B     		cmp	r3, #0
 5386 3428 F6D1     		bne	.L622
 5387              	.L625:
 5388 342a 9142     		cmp	r1, r2
 5389 342c F0D1     		bne	.L624
 5390 342e D4F85031 		ldr	r3, [r4, #336]
 5391 3432 4BB1     		cbz	r3, .L626
 5392 3434 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 5393 3438 DB07     		lsls	r3, r3, #31
 5394 343a 05D4     		bmi	.L626
 5395 343c D4ED4C7A 		vldr.32	s15, [r4, #304]
 5396 3440 27EE877A 		vmul.f32	s14, s15, s14
 5397 3444 84ED4C7A 		vstr.32	s14, [r4, #304]
 5398              	.L626:
 5399 3448 C0ED006A 		vstr.32	s13, [r0]
 5400 344c 0126     		movs	r6, #1
 5401 344e FDF712BE 		b	.L186
 5402              	.L240:
 5403 3452 4246     		mov	r2, r8
 5404 3454 2946     		mov	r1, r5
 5405 3456 2046     		mov	r0, r4
 5406 3458 FFF7FEFF 		bl	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 5407 345c 0646     		mov	r6, r0
 5408 345e FDF70ABE 		b	.L186
 5409              	.L239:
 5410 3462 236C     		ldr	r3, [r4, #64]
 5411 3464 1B68     		ldr	r3, [r3]
 5412 3466 AB42     		cmp	r3, r5
 5413 3468 7DF48AAE 		bne	.L331
 5414 346c 2846     		mov	r0, r5
 5415 346e FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
ARM GAS  /tmp/ccM7BG9e.s 			page 96


 5416 3472 0646     		mov	r6, r0
 5417 3474 0028     		cmp	r0, #0
 5418 3476 02F08185 		beq	.L394
 5419              	.L397:
 5420 347a 0126     		movs	r6, #1
 5421 347c 84F8AB60 		strb	r6, [r4, #171]
 5422 3480 FDF7F9BD 		b	.L186
 5423              	.L241:
 5424 3484 4246     		mov	r2, r8
 5425 3486 2946     		mov	r1, r5
 5426 3488 2046     		mov	r0, r4
 5427 348a FFF7FEFF 		bl	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 5428 348e 0646     		mov	r6, r0
 5429 3490 FDF7F1BD 		b	.L186
 5430              	.L322:
 5431 3494 5321     		movs	r1, #83
 5432 3496 2846     		mov	r0, r5
 5433 3498 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5434 349c 0028     		cmp	r0, #0
 5435 349e 00F0A387 		beq	.L961
 5436 34a2 2846     		mov	r0, r5
 5437 34a4 2668     		ldr	r6, [r4]
 5438 34a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5439 34aa 06F21C76 		addw	r6, r6, #1820
 5440 34ae 86ED000A 		vstr.32	s0, [r6]
 5441 34b2 0126     		movs	r6, #1
 5442 34b4 FDF7DFBD 		b	.L186
 5443              	.L208:
 5444 34b8 2068     		ldr	r0, [r4]
 5445 34ba FFF7FEFF 		bl	_ZN8Platform10AtxPowerOnEv
 5446 34be 0126     		movs	r6, #1
 5447 34c0 FDF7D9BD 		b	.L186
 5448              	.L304:
 5449 34c4 2946     		mov	r1, r5
 5450 34c6 2046     		mov	r0, r4
 5451 34c8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5452 34cc 0028     		cmp	r0, #0
 5453 34ce 3CF4C0AD 		beq	.L742
 5454 34d2 4B4B     		ldr	r3, .L1957
 5455 34d4 5CAF     		add	r7, sp, #368
 5456 34d6 9B68     		ldr	r3, [r3, #8]
 5457 34d8 0022     		movs	r2, #0
 5458 34da 3A70     		strb	r2, [r7]
 5459 34dc D3F8580A 		ldr	r0, [r3, #2648]
 5460 34e0 0368     		ldr	r3, [r0]
 5461 34e2 0097     		str	r7, [sp]
 5462 34e4 5E68     		ldr	r6, [r3, #4]
 5463 34e6 2A46     		mov	r2, r5
 5464 34e8 4346     		mov	r3, r8
 5465 34ea 40F29A21 		movw	r1, #666
 5466 34ee B047     		blx	r6
 5467 34f0 10B1     		cbz	r0, .L898
 5468 34f2 2046     		mov	r0, r4
 5469 34f4 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5470              	.L898:
 5471 34f8 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 5472 34fa 002B     		cmp	r3, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 97


 5473 34fc 0CBF     		ite	eq
 5474 34fe 0126     		moveq	r6, #1
 5475 3500 0226     		movne	r6, #2
 5476 3502 FDF7B8BD 		b	.L186
 5477              	.L325:
 5478 3506 4246     		mov	r2, r8
 5479 3508 2946     		mov	r1, r5
 5480 350a 2068     		ldr	r0, [r4]
 5481 350c FFF7FEFF 		bl	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 5482 3510 0028     		cmp	r0, #0
 5483 3512 7EF46AAC 		bne	.L919
 5484 3516 FDF733BE 		b	.L331
 5485              	.L230:
 5486 351a 4246     		mov	r2, r8
 5487 351c 2946     		mov	r1, r5
 5488 351e 2046     		mov	r0, r4
 5489 3520 FFF7FEFF 		bl	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 5490 3524 0028     		cmp	r0, #0
 5491 3526 3DF42BAE 		beq	.L331
 5492              	.L533:
 5493 352a 0226     		movs	r6, #2
 5494 352c FDF7A3BD 		b	.L186
 5495              	.L229:
 5496 3530 DFF8CCB0 		ldr	fp, .L1957
 5497 3534 5021     		movs	r1, #80
 5498 3536 2846     		mov	r0, r5
 5499 3538 DBF80C90 		ldr	r9, [fp, #12]
 5500 353c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5501 3540 0746     		mov	r7, r0
 5502 3542 0028     		cmp	r0, #0
 5503 3544 41F05F81 		bne	.L1878
 5504 3548 8C2E     		cmp	r6, #140
 5505 354a 01F04C86 		beq	.L976
 5506              	.L522:
 5507 354e 4821     		movs	r1, #72
 5508 3550 2846     		mov	r0, r5
 5509 3552 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5510 3556 0346     		mov	r3, r0
 5511 3558 0028     		cmp	r0, #0
 5512 355a 42F00C82 		bne	.L987
 5513              	.L523:
 5514 355e 8D2E     		cmp	r6, #141
 5515 3560 3A46     		mov	r2, r7
 5516 3562 41F04A86 		bne	.L527
 5517 3566 09EB0702 		add	r2, r9, r7
 5518 356a 2B4E     		ldr	r6, .L1957+24
 5519 356c 92F9D6A0 		ldrsb	r10, [r2, #214]
 5520              	.L528:
 5521 3570 0D93     		str	r3, [sp, #52]
 5522 3572 5321     		movs	r1, #83
 5523 3574 2846     		mov	r0, r5
 5524 3576 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5525 357a 0D9B     		ldr	r3, [sp, #52]
 5526 357c 0028     		cmp	r0, #0
 5527 357e 42F01182 		bne	.L1879
 5528 3582 5221     		movs	r1, #82
 5529 3584 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 98


 5530 3586 0D93     		str	r3, [sp, #52]
 5531 3588 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5532 358c 0D9B     		ldr	r3, [sp, #52]
 5533 358e 0028     		cmp	r0, #0
 5534 3590 42F0D782 		bne	.L1880
 5535 3594 002B     		cmp	r3, #0
 5536 3596 7DF4F3AD 		bne	.L331
 5537 359a BAF1000F 		cmp	r10, #0
 5538 359e C2F22185 		blt	.L1881
 5539 35a2 B146     		mov	r9, r6
 5540 35a4 0126     		movs	r6, #1
 5541 35a6 19F8010B 		ldrb	r0, [r9], #1	@ zero_extendqisi2
 5542 35aa FFF7FEFF 		bl	toupper
 5543 35ae 5146     		mov	r1, r10
 5544 35b0 0D90     		str	r0, [sp, #52]
 5545 35b2 DBF80C00 		ldr	r0, [fp, #12]
 5546 35b6 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 5547 35ba 10EE100A 		vmov	r0, s0
 5548 35be FFF7FEFF 		bl	__aeabi_f2d
 5549 35c2 4B46     		mov	r3, r9
 5550 35c4 CDE90201 		strd	r0, [sp, #8]
 5551 35c8 0D9A     		ldr	r2, [sp, #52]
 5552 35ca 1449     		ldr	r1, .L1957+28
 5553 35cc CDE900A7 		strd	r10, r7, [sp]
 5554 35d0 4046     		mov	r0, r8
 5555 35d2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5556 35d6 FDF74EBD 		b	.L186
 5557              	.L227:
 5558 35da 2946     		mov	r1, r5
 5559 35dc 2046     		mov	r0, r4
 5560 35de FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 5561 35e2 0126     		movs	r6, #1
 5562 35e4 FDF747BD 		b	.L186
 5563              	.L211:
 5564 35e8 D4F89832 		ldr	r3, [r4, #664]
 5565 35ec 002B     		cmp	r3, #0
 5566 35ee 01F05E84 		beq	.L440
 5567 35f2 0026     		movs	r6, #0
 5568 35f4 B246     		mov	r10, r6
 5569 35f6 04F26347 		addw	r7, r4, #1123
 5570 35fa B7EE008A 		vmov.f32	s16, #1.0e+0
 5571 35fe 15E0     		b	.L444
 5572              	.L1958:
 5573              		.align	2
 5574              	.L1957:
 5575 3600 00000000 		.word	reprap
 5576 3604 44150000 		.word	.LC210
 5577 3608 B0000000 		.word	.LC27
 5578 360c 50150000 		.word	.LC211
 5579 3610 0AD7233C 		.word	1008981770
 5580 3614 8988883C 		.word	1015580809
 5581 3618 1C000000 		.word	.LC14
 5582 361c 0C080000 		.word	.LC105
 5583              	.L441:
 5584 3620 D4F89832 		ldr	r3, [r4, #664]
 5585 3624 0136     		adds	r6, r6, #1
 5586 3626 B342     		cmp	r3, r6
ARM GAS  /tmp/ccM7BG9e.s 			page 99


 5587 3628 40F21F85 		bls	.L1882
 5588              	.L444:
 5589 362c 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 5590 3630 2846     		mov	r0, r5
 5591 3632 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5592 3636 0028     		cmp	r0, #0
 5593 3638 F2D0     		beq	.L441
 5594 363a 2946     		mov	r1, r5
 5595 363c 2046     		mov	r0, r4
 5596 363e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5597 3642 8246     		mov	r10, r0
 5598 3644 0028     		cmp	r0, #0
 5599 3646 3CF404AD 		beq	.L742
 5600 364a 2846     		mov	r0, r5
 5601 364c D4F80090 		ldr	r9, [r4]
 5602 3650 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5603 3654 B4EE400A 		vcmp.f32	s0, s0
 5604 3658 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5605 365c 06D6     		bvs	.L442
 5606 365e B4EEC80A 		vcmpe.f32	s0, s16
 5607 3662 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5608 3666 D8BF     		it	le
 5609 3668 B0EE480A 		vmovle.f32	s0, s16
 5610              	.L442:
 5611 366c 09EB8609 		add	r9, r9, r6, lsl #2
 5612 3670 89ED6A0A 		vstr.32	s0, [r9, #424]
 5613 3674 D4E7     		b	.L441
 5614              	.L209:
 5615 3676 2946     		mov	r1, r5
 5616 3678 2046     		mov	r0, r4
 5617 367a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5618 367e 0028     		cmp	r0, #0
 5619 3680 3CF4E7AC 		beq	.L742
 5620 3684 5321     		movs	r1, #83
 5621 3686 2846     		mov	r0, r5
 5622 3688 2668     		ldr	r6, [r4]
 5623 368a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5624 368e 28B1     		cbz	r0, .L439
 5625 3690 2846     		mov	r0, r5
 5626 3692 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 5627 3696 0030     		adds	r0, r0, #0
 5628 3698 18BF     		it	ne
 5629 369a 0120     		movne	r0, #1
 5630              	.L439:
 5631 369c 0146     		mov	r1, r0
 5632 369e 3046     		mov	r0, r6
 5633 36a0 FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 5634 36a4 0126     		movs	r6, #1
 5635 36a6 FDF7E6BC 		b	.L186
 5636              	.L206:
 5637 36aa 0026     		movs	r6, #0
 5638 36ac 15AA     		add	r2, sp, #84
 5639 36ae 14AB     		add	r3, sp, #80
 5640 36b0 5021     		movs	r1, #80
 5641 36b2 2846     		mov	r0, r5
 5642 36b4 1596     		str	r6, [sp, #84]
 5643 36b6 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
ARM GAS  /tmp/ccM7BG9e.s 			page 100


 5644 36ba 14AB     		add	r3, sp, #80
 5645 36bc 16AA     		add	r2, sp, #88
 5646 36be 5321     		movs	r1, #83
 5647 36c0 2846     		mov	r0, r5
 5648 36c2 1696     		str	r6, [sp, #88]
 5649 36c4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 5650 36c8 2368     		ldr	r3, [r4]
 5651 36ca 1599     		ldr	r1, [sp, #84]
 5652 36cc D3F8B409 		ldr	r0, [r3, #2484]
 5653 36d0 18AF     		add	r7, sp, #96
 5654 36d2 0DF15C09 		add	r9, sp, #92
 5655 36d6 5CAB     		add	r3, sp, #368
 5656 36d8 1AAA     		add	r2, sp, #104
 5657 36da CDE90097 		strd	r9, r7, [sp]
 5658 36de FFF7FEFF 		bl	_ZN11MassStorage11GetCardInfoEjRyS0_RmS1_
 5659 36e2 169B     		ldr	r3, [sp, #88]
 5660 36e4 022B     		cmp	r3, #2
 5661 36e6 0646     		mov	r6, r0
 5662 36e8 01F0EA85 		beq	.L1883
 5663 36ec 0128     		cmp	r0, #1
 5664 36ee DDF854A0 		ldr	r10, [sp, #84]
 5665 36f2 01F01B84 		beq	.L422
 5666 36f6 0228     		cmp	r0, #2
 5667 36f8 01F02084 		beq	.L423
 5668 36fc 5246     		mov	r2, r10
 5669 36fe D949     		ldr	r1, .L1959
 5670 3700 4046     		mov	r0, r8
 5671 3702 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5672 3706 0226     		movs	r6, #2
 5673 3708 FDF7B5BC 		b	.L186
 5674              	.L205:
 5675 370c 2946     		mov	r1, r5
 5676 370e 2046     		mov	r0, r4
 5677 3710 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 5678 3714 0028     		cmp	r0, #0
 5679 3716 3CF49CAC 		beq	.L742
 5680 371a D4F8FC65 		ldr	r6, [r4, #1532]
 5681 371e 002E     		cmp	r6, #0
 5682 3720 01F04687 		beq	.L1884
 5683 3724 4146     		mov	r1, r8
 5684 3726 2046     		mov	r0, r4
 5685 3728 FFF7FEFF 		bl	_ZN6GCodes11AdvanceHashERK9StringRef
 5686 372c 0646     		mov	r6, r0
 5687 372e FDF7A2BC 		b	.L186
 5688              	.L207:
 5689 3732 5021     		movs	r1, #80
 5690 3734 2846     		mov	r0, r5
 5691 3736 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5692 373a 0028     		cmp	r0, #0
 5693 373c 3DF420AD 		beq	.L331
 5694 3740 2846     		mov	r0, r5
 5695 3742 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5696 3746 5321     		movs	r1, #83
 5697 3748 8246     		mov	r10, r0
 5698 374a 2846     		mov	r0, r5
 5699 374c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5700 3750 0746     		mov	r7, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 101


 5701 3752 0028     		cmp	r0, #0
 5702 3754 3DF414AD 		beq	.L331
 5703 3758 2846     		mov	r0, r5
 5704 375a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5705 375e F7EE007A 		vmov.f32	s15, #1.0e+0
 5706 3762 B4EEE70A 		vcmpe.f32	s0, s15
 5707 3766 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5708 376a C8BF     		it	gt
 5709 376c DFEDBE7A 		vldrgt.32	s15, .L1959+4
 5710 3770 B0EE408A 		vmov.f32	s16, s0
 5711 3774 C8BF     		it	gt
 5712 3776 80EE278A 		vdivgt.f32	s16, s0, s15
 5713 377a B4EE488A 		vcmp.f32	s16, s16
 5714 377e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5715 3782 82F16F86 		bvs	.L427
 5716 3786 F7EE008A 		vmov.f32	s17, #1.0e+0
 5717 378a B4EEE88A 		vcmpe.f32	s16, s17
 5718 378e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 5719 3792 02F10583 		bmi	.L1885
 5720 3796 4621     		movs	r1, #70
 5721 3798 2846     		mov	r0, r5
 5722 379a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5723 379e B0EE688A 		vmov.f32	s16, s17
 5724 37a2 0028     		cmp	r0, #0
 5725 37a4 02F00B83 		beq	.L434
 5726              	.L974:
 5727 37a8 2846     		mov	r0, r5
 5728 37aa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5729 37ae 0128     		cmp	r0, #1
 5730 37b0 B8BF     		it	lt
 5731 37b2 0120     		movlt	r0, #1
 5732 37b4 B0F5803F 		cmp	r0, #65536
 5733 37b8 A8BF     		it	ge
 5734 37ba 4FF48030 		movge	r0, #65536
 5735 37be 86B2     		uxth	r6, r0
 5736              	.L433:
 5737 37c0 2068     		ldr	r0, [r4]
 5738 37c2 0222     		movs	r2, #2
 5739              	.L967:
 5740 37c4 0DF16809 		add	r9, sp, #104
 5741 37c8 0DF5B87B 		add	fp, sp, #368
 5742 37cc 4B46     		mov	r3, r9
 5743 37ce CDF800B0 		str	fp, [sp]
 5744 37d2 1FFA8AF1 		uxth	r1, r10
 5745 37d6 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 5746 37da 0028     		cmp	r0, #0
 5747 37dc 02F05B84 		beq	.L435
 5748 37e0 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 5749 37e4 1BB1     		cbz	r3, .L436
 5750 37e6 F7EE007A 		vmov.f32	s15, #1.0e+0
 5751 37ea 37EEC88A 		vsub.f32	s16, s15, s16
 5752              	.L436:
 5753 37ee 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 5754 37f2 002F     		cmp	r7, #0
 5755 37f4 02F05884 		beq	.L437
 5756 37f8 3146     		mov	r1, r6
 5757 37fa B0EE480A 		vmov.f32	s0, s16
ARM GAS  /tmp/ccM7BG9e.s 			page 102


 5758 37fe FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 5759 3802 0126     		movs	r6, #1
 5760 3804 FDF737BC 		b	.L186
 5761              	.L210:
 5762 3808 0126     		movs	r6, #1
 5763 380a FDF734BC 		b	.L186
 5764              	.L185:
 5765 380e 4FF47A72 		mov	r2, #1000
 5766 3812 2946     		mov	r1, r5
 5767 3814 2046     		mov	r0, r4
 5768 3816 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 5769 381a 0646     		mov	r6, r0
 5770 381c 0028     		cmp	r0, #0
 5771 381e 3DF42AAC 		beq	.L186
 5772 3822 9248     		ldr	r0, .L1959+8
 5773 3824 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5774 3828 5021     		movs	r1, #80
 5775 382a 2846     		mov	r0, r5
 5776 382c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5777 3830 0028     		cmp	r0, #0
 5778 3832 41F08387 		bne	.L1886
 5779              	.L964:
 5780 3836 0021     		movs	r1, #0
 5781              	.L965:
 5782 3838 0022     		movs	r2, #0
 5783 383a 2068     		ldr	r0, [r4]
 5784 383c FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5785 3840 FDF719BC 		b	.L186
 5786              	.L183:
 5787 3844 5321     		movs	r1, #83
 5788 3846 2846     		mov	r0, r5
 5789 3848 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5790 384c 0028     		cmp	r0, #0
 5791 384e 41F09D82 		bne	.L1887
 5792 3852 0646     		mov	r6, r0
 5793              	.L717:
 5794 3854 5221     		movs	r1, #82
 5795 3856 2846     		mov	r0, r5
 5796 3858 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5797 385c 0028     		cmp	r0, #0
 5798 385e 41F07F82 		bne	.L1888
 5799 3862 4FF0FF32 		mov	r2, #-1
 5800              	.L718:
 5801 3866 A36C     		ldr	r3, [r4, #72]
 5802 3868 1968     		ldr	r1, [r3]
 5803 386a A942     		cmp	r1, r5
 5804 386c 01F0F382 		beq	.L719
 5805              	.L722:
 5806 3870 0223     		movs	r3, #2
 5807              	.L720:
 5808 3872 3146     		mov	r1, r6
 5809 3874 2046     		mov	r0, r4
 5810 3876 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 5811 387a 0646     		mov	r6, r0
 5812 387c 0028     		cmp	r0, #0
 5813 387e 3DF4FAAB 		beq	.L186
 5814 3882 2946     		mov	r1, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 103


 5815 3884 2046     		mov	r0, r4
 5816 3886 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 5817 388a 3346     		mov	r3, r6
 5818 388c 2946     		mov	r1, r5
 5819 388e 2046     		mov	r0, r4
 5820 3890 0022     		movs	r2, #0
 5821 3892 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 5822 3896 4FF0010A 		mov	r10, #1
 5823 389a FCF7DCBB 		b	.L1123
 5824              	.L182:
 5825 389e 5321     		movs	r1, #83
 5826 38a0 2846     		mov	r0, r5
 5827 38a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5828 38a6 0646     		mov	r6, r0
 5829 38a8 0028     		cmp	r0, #0
 5830 38aa 41F0D180 		bne	.L1889
 5831              	.L592:
 5832 38ae 5221     		movs	r1, #82
 5833 38b0 2846     		mov	r0, r5
 5834 38b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5835 38b6 0746     		mov	r7, r0
 5836 38b8 0028     		cmp	r0, #0
 5837 38ba 41F0AC80 		bne	.L1890
 5838              	.L595:
 5839 38be 4621     		movs	r1, #70
 5840 38c0 2846     		mov	r0, r5
 5841 38c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5842 38c6 0746     		mov	r7, r0
 5843 38c8 0028     		cmp	r0, #0
 5844 38ca 41F03380 		bne	.L1891
 5845              	.L598:
 5846 38ce 5421     		movs	r1, #84
 5847 38d0 2846     		mov	r0, r5
 5848 38d2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5849 38d6 0028     		cmp	r0, #0
 5850 38d8 40F0A786 		bne	.L1892
 5851 38dc 5A21     		movs	r1, #90
 5852 38de 2846     		mov	r0, r5
 5853 38e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5854 38e4 0028     		cmp	r0, #0
 5855 38e6 40F0BE86 		bne	.L608
 5856 38ea 002E     		cmp	r6, #0
 5857 38ec 7DF448AC 		bne	.L331
 5858 38f0 04F25C53 		addw	r3, r4, #1372
 5859 38f4 93ED008A 		vldr.32	s16, [r3]
 5860 38f8 18EE100A 		vmov	r0, s16
 5861 38fc FFF7FEFF 		bl	__aeabi_f2d
 5862 3900 04F26C53 		addw	r3, r4, #1388
 5863 3904 8246     		mov	r10, r0
 5864 3906 1868     		ldr	r0, [r3]	@ float
 5865 3908 8B46     		mov	fp, r1
 5866 390a FFF7FEFF 		bl	__aeabi_f2d
 5867 390e 04F5AD63 		add	r3, r4, #1384
 5868 3912 93ED007A 		vldr.32	s14, [r3]
 5869 3916 DFED566A 		vldr.32	s13, .L1959+12
 5870 391a 04F26453 		addw	r3, r4, #1380
 5871 391e D3ED007A 		vldr.32	s15, [r3]
ARM GAS  /tmp/ccM7BG9e.s 			page 104


 5872 3922 27EE267A 		vmul.f32	s14, s14, s13
 5873 3926 04F5AC63 		add	r3, r4, #1376
 5874 392a 67EEA67A 		vmul.f32	s15, s15, s13
 5875 392e BDEEC77A 		vcvt.s32.f32	s14, s14
 5876 3932 D3ED006A 		vldr.32	s13, [r3]
 5877 3936 8DED037A 		vstr.32	s14, [sp, #12]	@ int
 5878 393a 38EE267A 		vadd.f32	s14, s16, s13
 5879 393e FDEEE77A 		vcvt.s32.f32	s15, s15
 5880 3942 CDE90401 		strd	r0, [sp, #16]
 5881 3946 17EE100A 		vmov	r0, s14
 5882 394a CDED027A 		vstr.32	s15, [sp, #8]	@ int
 5883 394e FFF7FEFF 		bl	__aeabi_f2d
 5884 3952 5246     		mov	r2, r10
 5885 3954 CDE90001 		strd	r0, [sp]
 5886 3958 5B46     		mov	r3, fp
 5887 395a 4649     		ldr	r1, .L1959+16
 5888 395c 4046     		mov	r0, r8
 5889 395e 0126     		movs	r6, #1
 5890 3960 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5891 3964 FDF787BB 		b	.L186
 5892              	.L181:
 5893 3968 5321     		movs	r1, #83
 5894 396a 2846     		mov	r0, r5
 5895 396c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5896 3970 0646     		mov	r6, r0
 5897 3972 0028     		cmp	r0, #0
 5898 3974 41F06482 		bne	.L1893
 5899              	.L589:
 5900 3978 5021     		movs	r1, #80
 5901 397a 2846     		mov	r0, r5
 5902 397c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5903 3980 0028     		cmp	r0, #0
 5904 3982 40F0C386 		bne	.L1894
 5905 3986 5421     		movs	r1, #84
 5906 3988 2846     		mov	r0, r5
 5907 398a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5908 398e 0028     		cmp	r0, #0
 5909 3990 40F0C986 		bne	.L591
 5910 3994 002E     		cmp	r6, #0
 5911 3996 7DF4F3AB 		bne	.L331
 5912 399a D4F80090 		ldr	r9, [r4]
 5913 399e D9F8A001 		ldr	r0, [r9, #416]	@ float
 5914 39a2 FFF7FEFF 		bl	__aeabi_f2d
 5915 39a6 0646     		mov	r6, r0
 5916 39a8 D9F8A401 		ldr	r0, [r9, #420]	@ float
 5917 39ac 0F46     		mov	r7, r1
 5918 39ae FFF7FEFF 		bl	__aeabi_f2d
 5919 39b2 3246     		mov	r2, r6
 5920 39b4 CDE90001 		strd	r0, [sp]
 5921 39b8 3B46     		mov	r3, r7
 5922 39ba 2F49     		ldr	r1, .L1959+20
 5923 39bc 4046     		mov	r0, r8
 5924 39be FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5925 39c2 0126     		movs	r6, #1
 5926 39c4 FDF757BB 		b	.L186
 5927              	.L180:
 5928 39c8 4421     		movs	r1, #68
ARM GAS  /tmp/ccM7BG9e.s 			page 105


 5929 39ca 2846     		mov	r0, r5
 5930 39cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5931 39d0 0646     		mov	r6, r0
 5932 39d2 0028     		cmp	r0, #0
 5933 39d4 41F00A81 		bne	.L1895
 5934 39d8 AB68     		ldr	r3, [r5, #8]
 5935 39da 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 5936 39dc 5A06     		lsls	r2, r3, #25
 5937 39de 00F1E685 		bmi	.L554
 5938 39e2 2649     		ldr	r1, .L1959+24
 5939 39e4 4046     		mov	r0, r8
 5940 39e6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5941 39ea 0126     		movs	r6, #1
 5942 39ec FDF743BB 		b	.L186
 5943              	.L179:
 5944 39f0 5021     		movs	r1, #80
 5945 39f2 2846     		mov	r0, r5
 5946 39f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5947 39f8 28B1     		cbz	r0, .L516
 5948 39fa 2846     		mov	r0, r5
 5949 39fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5950 3a00 0028     		cmp	r0, #0
 5951 3a02 41F0FA85 		bne	.L1896
 5952              	.L516:
 5953 3a06 A98E     		ldrh	r1, [r5, #52]
 5954 3a08 1848     		ldr	r0, .L1959+8
 5955 3a0a FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 5956 3a0e 0126     		movs	r6, #1
 5957 3a10 FDF731BB 		b	.L186
 5958              	.L990:
 5959 3a14 0426     		movs	r6, #4
 5960 3a16 FDF72EBB 		b	.L186
 5961              	.L178:
 5962 3a1a 2046     		mov	r0, r4
 5963 3a1c FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 5964 3a20 0126     		movs	r6, #1
 5965 3a22 FDF728BB 		b	.L186
 5966              	.L177:
 5967 3a26 5321     		movs	r1, #83
 5968 3a28 2846     		mov	r0, r5
 5969 3a2a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5970 3a2e 0028     		cmp	r0, #0
 5971 3a30 00F0F084 		beq	.L478
 5972 3a34 2846     		mov	r0, r5
 5973 3a36 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5974 3a3a 5021     		movs	r1, #80
 5975 3a3c 061C     		adds	r6, r0, #0
 5976 3a3e 2846     		mov	r0, r5
 5977 3a40 18BF     		it	ne
 5978 3a42 0126     		movne	r6, #1
 5979 3a44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5980 3a48 0028     		cmp	r0, #0
 5981 3a4a 01F0ED82 		beq	.L479
 5982 3a4e 2846     		mov	r0, r5
 5983 3a50 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5984 3a54 3246     		mov	r2, r6
 5985 3a56 C1B2     		uxtb	r1, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 106


 5986 3a58 0448     		ldr	r0, .L1959+8
 5987 3a5a FFF7FEFF 		bl	_ZN6RepRap8SetDebugE6Moduleb
 5988 3a5e 0126     		movs	r6, #1
 5989 3a60 FDF709BB 		b	.L186
 5990              	.L1960:
 5991              		.align	2
 5992              	.L1959:
 5993 3a64 98050000 		.word	.LC80
 5994 3a68 00007F43 		.word	1132396544
 5995 3a6c 00000000 		.word	reprap
 5996 3a70 00007042 		.word	1114636288
 5997 3a74 74090000 		.word	.LC117
 5998 3a78 2C090000 		.word	.LC116
 5999 3a7c 7C080000 		.word	.LC108
 6000              	.L1015:
 6001 3a80 3526     		movs	r6, #53
 6002              	.L504:
 6003 3a82 0023     		movs	r3, #0
 6004 3a84 5321     		movs	r1, #83
 6005 3a86 2846     		mov	r0, r5
 6006 3a88 8DF87031 		strb	r3, [sp, #368]
 6007 3a8c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6008 3a90 60B1     		cbz	r0, .L511
 6009 3a92 5CAA     		add	r2, sp, #368
 6010 3a94 A223     		movs	r3, #162
 6011 3a96 1AA9     		add	r1, sp, #104
 6012 3a98 2846     		mov	r0, r5
 6013 3a9a CDE91A23 		strd	r2, r3, [sp, #104]
 6014 3a9e FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 6015 3aa2 5CAA     		add	r2, sp, #368
 6016 3aa4 3146     		mov	r1, r6
 6017 3aa6 2068     		ldr	r0, [r4]
 6018 3aa8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6019              	.L511:
 6020 3aac 0126     		movs	r6, #1
 6021 3aae FDF7E2BA 		b	.L186
 6022              	.L1016:
 6023 3ab2 40F20446 		movw	r6, #1028
 6024 3ab6 E4E7     		b	.L504
 6025              	.L508:
 6026 3ab8 0126     		movs	r6, #1
 6027 3aba E2E7     		b	.L504
 6028              	.L510:
 6029 3abc 2026     		movs	r6, #32
 6030 3abe E0E7     		b	.L504
 6031              	.L509:
 6032 3ac0 1026     		movs	r6, #16
 6033 3ac2 DEE7     		b	.L504
 6034              	.L921:
 6035 3ac4 BB49     		ldr	r1, .L1961
 6036 3ac6 4046     		mov	r0, r8
 6037 3ac8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6038 3acc 0226     		movs	r6, #2
 6039 3ace FDF7D2BA 		b	.L186
 6040              	.L696:
 6041 3ad2 0F98     		ldr	r0, [sp, #60]
 6042 3ad4 99F80020 		ldrb	r2, [r9]	@ zero_extendqisi2
ARM GAS  /tmp/ccM7BG9e.s 			page 107


 6043 3ad8 0090     		str	r0, [sp]
 6044 3ada 0E98     		ldr	r0, [sp, #56]
 6045 3adc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6046 3ae0 4FF0020B 		mov	fp, #2
 6047 3ae4 FDF7CABF 		b	.L695
 6048              	.L929:
 6049 3ae8 B349     		ldr	r1, .L1961+4
 6050 3aea 4046     		mov	r0, r8
 6051 3aec FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6052 3af0 0226     		movs	r6, #2
 6053 3af2 FDF7C0BA 		b	.L186
 6054              	.L175:
 6055 3af6 4146     		mov	r1, r8
 6056 3af8 2046     		mov	r0, r4
 6057 3afa FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 6058 3afe 0126     		movs	r6, #1
 6059 3b00 FDF7B9BA 		b	.L186
 6060              	.L173:
 6061 3b04 AB68     		ldr	r3, [r5, #8]
 6062 3b06 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 6063 3b08 6FF30002 		bfc	r2, #0, #1
 6064 3b0c 1A76     		strb	r2, [r3, #24]
 6065 3b0e 0126     		movs	r6, #1
 6066 3b10 FDF7B1BA 		b	.L186
 6067              	.L615:
 6068 3b14 AA68     		ldr	r2, [r5, #8]
 6069 3b16 2068     		ldr	r0, [r4]
 6070 3b18 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 6071 3b1a C2F30012 		ubfx	r2, r2, #4, #1
 6072 3b1e FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 6073 3b22 CDF834B0 		str	fp, [sp, #52]
 6074 3b26 FEF70BBD 		b	.L614
 6075              	.L1843:
 6076 3b2a BBF1000F 		cmp	fp, #0
 6077 3b2e 7DF427AB 		bne	.L331
 6078              	.L856:
 6079 3b32 A249     		ldr	r1, .L1961+8
 6080 3b34 4046     		mov	r0, r8
 6081 3b36 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6082 3b3a D4F89832 		ldr	r3, [r4, #664]
 6083 3b3e 002B     		cmp	r3, #0
 6084 3b40 00F0AC86 		beq	.L852
 6085 3b44 DFF8ACB2 		ldr	fp, .L1961+64
 6086 3b48 04F2594A 		addw	r10, r4, #1113
 6087 3b4c 0026     		movs	r6, #0
 6088 3b4e 0DF16809 		add	r9, sp, #104
 6089 3b52 5CAF     		add	r7, sp, #368
 6090 3b54 26E0     		b	.L861
 6091              	.L1898:
 6092 3b56 9A49     		ldr	r1, .L1961+12
 6093 3b58 012B     		cmp	r3, #1
 6094 3b5a 18BF     		it	ne
 6095 3b5c 5946     		movne	r1, fp
 6096 3b5e 0B46     		mov	r3, r1
 6097              	.L857:
 6098 3b60 9849     		ldr	r1, .L1961+16
 6099 3b62 4046     		mov	r0, r8
ARM GAS  /tmp/ccM7BG9e.s 			page 108


 6100 3b64 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6101 3b68 D9F80030 		ldr	r3, [r9]
 6102 3b6c 002B     		cmp	r3, #0
 6103 3b6e 00F0AC82 		beq	.L1897
 6104 3b72 3B68     		ldr	r3, [r7]
 6105 3b74 012B     		cmp	r3, #1
 6106 3b76 00F0B284 		beq	.L1074
 6107 3b7a 002B     		cmp	r3, #0
 6108 3b7c 00F0B284 		beq	.L1075
 6109 3b80 022B     		cmp	r3, #2
 6110 3b82 01F09C85 		beq	.L1076
 6111 3b86 904A     		ldr	r2, .L1961+20
 6112 3b88 9049     		ldr	r1, .L1961+24
 6113 3b8a 032B     		cmp	r3, #3
 6114 3b8c 08BF     		it	eq
 6115 3b8e 0A46     		moveq	r2, r1
 6116              	.L860:
 6117 3b90 8F49     		ldr	r1, .L1961+28
 6118 3b92 4046     		mov	r0, r8
 6119 3b94 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6120              	.L859:
 6121 3b98 D4F89832 		ldr	r3, [r4, #664]
 6122 3b9c 0136     		adds	r6, r6, #1
 6123 3b9e B342     		cmp	r3, r6
 6124 3ba0 40F27C86 		bls	.L852
 6125              	.L861:
 6126 3ba4 3B46     		mov	r3, r7
 6127 3ba6 4A46     		mov	r2, r9
 6128 3ba8 3146     		mov	r1, r6
 6129 3baa 2068     		ldr	r0, [r4]
 6130 3bac FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 6131 3bb0 D9F80030 		ldr	r3, [r9]
 6132 3bb4 1AF8012F 		ldrb	r2, [r10, #1]!	@ zero_extendqisi2
 6133 3bb8 022B     		cmp	r3, #2
 6134 3bba CCD1     		bne	.L1898
 6135 3bbc 854B     		ldr	r3, .L1961+32
 6136 3bbe CFE7     		b	.L857
 6137              	.L1848:
 6138 3bc0 0D9B     		ldr	r3, [sp, #52]
 6139 3bc2 002B     		cmp	r3, #0
 6140 3bc4 7DF4DCAA 		bne	.L331
 6141              	.L617:
 6142 3bc8 8349     		ldr	r1, .L1961+36
 6143 3bca 4046     		mov	r0, r8
 6144 3bcc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6145 3bd0 D4F89832 		ldr	r3, [r4, #664]
 6146 3bd4 002B     		cmp	r3, #0
 6147 3bd6 3DF4D3AA 		beq	.L331
 6148 3bda 04F26349 		addw	r9, r4, #1123
 6149 3bde 0027     		movs	r7, #0
 6150 3be0 4FF02D0A 		mov	r10, #45
 6151              	.L618:
 6152 3be4 2668     		ldr	r6, [r4]
 6153 3be6 19F801BF 		ldrb	fp, [r9, #1]!	@ zero_extendqisi2
 6154 3bea 06EB8706 		add	r6, r6, r7, lsl #2
 6155 3bee 06F5E463 		add	r3, r6, #1824
 6156 3bf2 06F24476 		addw	r6, r6, #1860
ARM GAS  /tmp/ccM7BG9e.s 			page 109


 6157 3bf6 1868     		ldr	r0, [r3]	@ float
 6158 3bf8 FFF7FEFF 		bl	__aeabi_f2d
 6159 3bfc CDE90201 		strd	r0, [sp, #8]
 6160 3c00 3068     		ldr	r0, [r6]	@ float
 6161 3c02 FFF7FEFF 		bl	__aeabi_f2d
 6162 3c06 5246     		mov	r2, r10
 6163 3c08 CDE90001 		strd	r0, [sp]
 6164 3c0c 5B46     		mov	r3, fp
 6165 3c0e 7349     		ldr	r1, .L1961+40
 6166 3c10 4046     		mov	r0, r8
 6167 3c12 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6168 3c16 D4F89832 		ldr	r3, [r4, #664]
 6169 3c1a 0137     		adds	r7, r7, #1
 6170 3c1c BB42     		cmp	r3, r7
 6171 3c1e 4FF02C0A 		mov	r10, #44
 6172 3c22 DFD8     		bhi	.L618
 6173 3c24 FDF7ACBA 		b	.L331
 6174              	.L1850:
 6175 3c28 4521     		movs	r1, #69
 6176 3c2a 2846     		mov	r0, r5
 6177 3c2c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6178 3c30 0028     		cmp	r0, #0
 6179 3c32 40F00386 		bne	.L979
 6180 3c36 BAF1000F 		cmp	r10, #0
 6181 3c3a 7DF4A1AA 		bne	.L331
 6182              	.L980:
 6183 3c3e 6849     		ldr	r1, .L1961+44
 6184 3c40 4046     		mov	r0, r8
 6185 3c42 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6186 3c46 D4F89832 		ldr	r3, [r4, #664]
 6187 3c4a FBB1     		cbz	r3, .L572
 6188 3c4c DFF8A891 		ldr	r9, .L1961+68
 6189 3c50 04F26347 		addw	r7, r4, #1123
 6190 3c54 0026     		movs	r6, #0
 6191              	.L573:
 6192 3c56 2368     		ldr	r3, [r4]
 6193 3c58 D4EDBD7A 		vldr.32	s15, [r4, #756]
 6194 3c5c 17F801AF 		ldrb	r10, [r7, #1]!	@ zero_extendqisi2
 6195 3c60 03EB8603 		add	r3, r3, r6, lsl #2
 6196 3c64 93ED5C7A 		vldr.32	s14, [r3, #368]
 6197 3c68 C7EE277A 		vdiv.f32	s15, s14, s15
 6198 3c6c 0136     		adds	r6, r6, #1
 6199 3c6e 17EE900A 		vmov	r0, s15
 6200 3c72 FFF7FEFF 		bl	__aeabi_f2d
 6201 3c76 5246     		mov	r2, r10
 6202 3c78 CDE90001 		strd	r0, [sp]
 6203 3c7c 4946     		mov	r1, r9
 6204 3c7e 4046     		mov	r0, r8
 6205 3c80 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6206 3c84 D4F89832 		ldr	r3, [r4, #664]
 6207 3c88 B342     		cmp	r3, r6
 6208 3c8a E4D8     		bhi	.L573
 6209              	.L572:
 6210 3c8c 5549     		ldr	r1, .L1961+48
 6211 3c8e 4046     		mov	r0, r8
 6212 3c90 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6213 3c94 D4F8A032 		ldr	r3, [r4, #672]
ARM GAS  /tmp/ccM7BG9e.s 			page 110


 6214 3c98 002B     		cmp	r3, #0
 6215 3c9a 3DF471AA 		beq	.L331
 6216 3c9e 524E     		ldr	r6, .L1961+52
 6217 3ca0 0027     		movs	r7, #0
 6218 3ca2 4FF02009 		mov	r9, #32
 6219              	.L571:
 6220 3ca6 D4F89812 		ldr	r1, [r4, #664]
 6221 3caa 2368     		ldr	r3, [r4]
 6222 3cac D4EDBD7A 		vldr.32	s15, [r4, #756]
 6223 3cb0 3944     		add	r1, r1, r7
 6224 3cb2 03EB8103 		add	r3, r3, r1, lsl #2
 6225 3cb6 93ED5C7A 		vldr.32	s14, [r3, #368]
 6226 3cba C7EE277A 		vdiv.f32	s15, s14, s15
 6227 3cbe 0137     		adds	r7, r7, #1
 6228 3cc0 17EE900A 		vmov	r0, s15
 6229 3cc4 FFF7FEFF 		bl	__aeabi_f2d
 6230 3cc8 4A46     		mov	r2, r9
 6231 3cca CDE90001 		strd	r0, [sp]
 6232 3cce 3146     		mov	r1, r6
 6233 3cd0 4046     		mov	r0, r8
 6234 3cd2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6235 3cd6 D4F8A032 		ldr	r3, [r4, #672]
 6236 3cda BB42     		cmp	r3, r7
 6237 3cdc 4FF03A09 		mov	r9, #58
 6238 3ce0 E1D8     		bhi	.L571
 6239 3ce2 FDF74DBA 		b	.L331
 6240              	.L1849:
 6241 3ce6 4521     		movs	r1, #69
 6242 3ce8 2846     		mov	r0, r5
 6243 3cea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6244 3cee 0028     		cmp	r0, #0
 6245 3cf0 40F05086 		bne	.L981
 6246 3cf4 BBF1000F 		cmp	fp, #0
 6247 3cf8 7DF442AA 		bne	.L331
 6248              	.L982:
 6249 3cfc 3B49     		ldr	r1, .L1961+56
 6250 3cfe 4046     		mov	r0, r8
 6251 3d00 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6252 3d04 D4F89832 		ldr	r3, [r4, #664]
 6253 3d08 1BB3     		cbz	r3, .L587
 6254 3d0a 9FED398A 		vldr.32	s16, .L1961+60
 6255 3d0e DFF8E890 		ldr	r9, .L1961+68
 6256 3d12 04F26347 		addw	r7, r4, #1123
 6257 3d16 0026     		movs	r6, #0
 6258              	.L588:
 6259 3d18 2368     		ldr	r3, [r4]
 6260 3d1a D4EDBD7A 		vldr.32	s15, [r4, #756]
 6261 3d1e 17F801AF 		ldrb	r10, [r7, #1]!	@ zero_extendqisi2
 6262 3d22 03EB8603 		add	r3, r3, r6, lsl #2
 6263 3d26 93ED507A 		vldr.32	s14, [r3, #320]
 6264 3d2a 67EE887A 		vmul.f32	s15, s15, s16
 6265 3d2e 0136     		adds	r6, r6, #1
 6266 3d30 C7EE277A 		vdiv.f32	s15, s14, s15
 6267 3d34 17EE900A 		vmov	r0, s15
 6268 3d38 FFF7FEFF 		bl	__aeabi_f2d
 6269 3d3c 5246     		mov	r2, r10
 6270 3d3e CDE90001 		strd	r0, [sp]
ARM GAS  /tmp/ccM7BG9e.s 			page 111


 6271 3d42 4946     		mov	r1, r9
 6272 3d44 4046     		mov	r0, r8
 6273 3d46 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6274 3d4a D4F89832 		ldr	r3, [r4, #664]
 6275 3d4e B342     		cmp	r3, r6
 6276 3d50 E2D8     		bhi	.L588
 6277              	.L587:
 6278 3d52 2449     		ldr	r1, .L1961+48
 6279 3d54 4046     		mov	r0, r8
 6280 3d56 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6281 3d5a D4F8A032 		ldr	r3, [r4, #672]
 6282 3d5e 002B     		cmp	r3, #0
 6283 3d60 3DF40EAA 		beq	.L331
 6284 3d64 9FED228A 		vldr.32	s16, .L1961+60
 6285 3d68 1F4E     		ldr	r6, .L1961+52
 6286 3d6a 0027     		movs	r7, #0
 6287 3d6c 4FF02009 		mov	r9, #32
 6288              	.L586:
 6289 3d70 D4F89812 		ldr	r1, [r4, #664]
 6290 3d74 2368     		ldr	r3, [r4]
 6291 3d76 D4EDBD7A 		vldr.32	s15, [r4, #756]
 6292 3d7a 3944     		add	r1, r1, r7
 6293 3d7c 03EB8103 		add	r3, r3, r1, lsl #2
 6294 3d80 93ED507A 		vldr.32	s14, [r3, #320]
 6295 3d84 67EE887A 		vmul.f32	s15, s15, s16
 6296 3d88 0137     		adds	r7, r7, #1
 6297 3d8a C7EE277A 		vdiv.f32	s15, s14, s15
 6298 3d8e 17EE900A 		vmov	r0, s15
 6299 3d92 FFF7FEFF 		bl	__aeabi_f2d
 6300 3d96 4A46     		mov	r2, r9
 6301 3d98 CDE90001 		strd	r0, [sp]
 6302 3d9c 3146     		mov	r1, r6
 6303 3d9e 4046     		mov	r0, r8
 6304 3da0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6305 3da4 D4F8A032 		ldr	r3, [r4, #672]
 6306 3da8 BB42     		cmp	r3, r7
 6307 3daa 4FF03A09 		mov	r9, #58
 6308 3dae DFD8     		bhi	.L586
 6309 3db0 FDF7E6B9 		b	.L331
 6310              	.L1962:
 6311              		.align	2
 6312              	.L1961:
 6313 3db4 00140000 		.word	.LC198
 6314 3db8 34140000 		.word	.LC200
 6315 3dbc F8120000 		.word	.LC188
 6316 3dc0 28010000 		.word	.LC39
 6317 3dc4 10130000 		.word	.LC189
 6318 3dc8 60010000 		.word	.LC43
 6319 3dcc 70010000 		.word	.LC44
 6320 3dd0 18130000 		.word	.LC190
 6321 3dd4 1C010000 		.word	.LC38
 6322 3dd8 CC090000 		.word	.LC118
 6323 3ddc DC090000 		.word	.LC119
 6324 3de0 F4080000 		.word	.LC112
 6325 3de4 7C060000 		.word	.LC87
 6326 3de8 10090000 		.word	.LC114
 6327 3dec 18090000 		.word	.LC115
ARM GAS  /tmp/ccM7BG9e.s 			page 112


 6328 3df0 8988883C 		.word	1015580809
 6329 3df4 14010000 		.word	.LC37
 6330 3df8 04090000 		.word	.LC113
 6331              	.L1836:
 6332 3dfc 4521     		movs	r1, #69
 6333 3dfe 2846     		mov	r0, r5
 6334 3e00 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6335 3e04 0028     		cmp	r0, #0
 6336 3e06 40F03287 		bne	.L983
 6337 3e0a BBF1000F 		cmp	fp, #0
 6338 3e0e 7DF4B7A9 		bne	.L331
 6339              	.L984:
 6340 3e12 D849     		ldr	r1, .L1963
 6341 3e14 4046     		mov	r0, r8
 6342 3e16 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6343 3e1a D4F89832 		ldr	r3, [r4, #664]
 6344 3e1e 1BB3     		cbz	r3, .L810
 6345 3e20 9FEDD58A 		vldr.32	s16, .L1963+4
 6346 3e24 DFF88C93 		ldr	r9, .L1963+64
 6347 3e28 04F26347 		addw	r7, r4, #1123
 6348 3e2c 0026     		movs	r6, #0
 6349              	.L811:
 6350 3e2e 2368     		ldr	r3, [r4]
 6351 3e30 D4EDBD7A 		vldr.32	s15, [r4, #756]
 6352 3e34 17F801AF 		ldrb	r10, [r7, #1]!	@ zero_extendqisi2
 6353 3e38 03EB8603 		add	r3, r3, r6, lsl #2
 6354 3e3c 93ED767A 		vldr.32	s14, [r3, #472]
 6355 3e40 67EE887A 		vmul.f32	s15, s15, s16
 6356 3e44 0136     		adds	r6, r6, #1
 6357 3e46 C7EE277A 		vdiv.f32	s15, s14, s15
 6358 3e4a 17EE900A 		vmov	r0, s15
 6359 3e4e FFF7FEFF 		bl	__aeabi_f2d
 6360 3e52 5246     		mov	r2, r10
 6361 3e54 CDE90001 		strd	r0, [sp]
 6362 3e58 4946     		mov	r1, r9
 6363 3e5a 4046     		mov	r0, r8
 6364 3e5c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6365 3e60 D4F89832 		ldr	r3, [r4, #664]
 6366 3e64 B342     		cmp	r3, r6
 6367 3e66 E2D8     		bhi	.L811
 6368              	.L810:
 6369 3e68 C449     		ldr	r1, .L1963+8
 6370 3e6a 4046     		mov	r0, r8
 6371 3e6c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6372 3e70 D4F8A032 		ldr	r3, [r4, #672]
 6373 3e74 002B     		cmp	r3, #0
 6374 3e76 3DF483A9 		beq	.L331
 6375 3e7a 9FEDBF8A 		vldr.32	s16, .L1963+4
 6376 3e7e C04E     		ldr	r6, .L1963+12
 6377 3e80 0027     		movs	r7, #0
 6378 3e82 4FF02009 		mov	r9, #32
 6379              	.L809:
 6380 3e86 D4F89812 		ldr	r1, [r4, #664]
 6381 3e8a 2368     		ldr	r3, [r4]
 6382 3e8c D4EDBD7A 		vldr.32	s15, [r4, #756]
 6383 3e90 3944     		add	r1, r1, r7
 6384 3e92 03EB8103 		add	r3, r3, r1, lsl #2
ARM GAS  /tmp/ccM7BG9e.s 			page 113


 6385 3e96 93ED767A 		vldr.32	s14, [r3, #472]
 6386 3e9a 67EE887A 		vmul.f32	s15, s15, s16
 6387 3e9e 0137     		adds	r7, r7, #1
 6388 3ea0 C7EE277A 		vdiv.f32	s15, s14, s15
 6389 3ea4 17EE900A 		vmov	r0, s15
 6390 3ea8 FFF7FEFF 		bl	__aeabi_f2d
 6391 3eac 4A46     		mov	r2, r9
 6392 3eae CDE90001 		strd	r0, [sp]
 6393 3eb2 3146     		mov	r1, r6
 6394 3eb4 4046     		mov	r0, r8
 6395 3eb6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6396 3eba D4F8A032 		ldr	r3, [r4, #672]
 6397 3ebe BB42     		cmp	r3, r7
 6398 3ec0 4FF03A09 		mov	r9, #58
 6399 3ec4 DFD8     		bhi	.L809
 6400 3ec6 FDF75BB9 		b	.L331
 6401              	.L1861:
 6402 3eca DDF83480 		ldr	r8, [sp, #52]
 6403              	.L932:
 6404 3ece 4521     		movs	r1, #69
 6405 3ed0 2846     		mov	r0, r5
 6406 3ed2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6407 3ed6 0028     		cmp	r0, #0
 6408 3ed8 40F0FD86 		bne	.L1899
 6409 3edc 40F28A33 		movw	r3, #906
 6410 3ee0 9E42     		cmp	r6, r3
 6411 3ee2 01F0DF81 		beq	.L1900
 6412 3ee6 BBF1000F 		cmp	fp, #0
 6413 3eea 7DF449A9 		bne	.L331
 6414 3eee 40F29133 		movw	r3, #913
 6415 3ef2 9E42     		cmp	r6, r3
 6416 3ef4 01F0D983 		beq	.L1092
 6417 3ef8 40F29533 		movw	r3, #917
 6418 3efc 9E42     		cmp	r6, r3
 6419 3efe 41F0DC81 		bne	.L986
 6420 3f02 A049     		ldr	r1, .L1963+16
 6421              	.L945:
 6422 3f04 4046     		mov	r0, r8
 6423 3f06 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6424 3f0a D4F89832 		ldr	r3, [r4, #664]
 6425 3f0e CBB1     		cbz	r3, .L949
 6426 3f10 DFF8A4A2 		ldr	r10, .L1963+68
 6427 3f14 04F26349 		addw	r9, r4, #1123
 6428 3f18 0027     		movs	r7, #0
 6429              	.L950:
 6430 3f1a 3946     		mov	r1, r7
 6431 3f1c 3246     		mov	r2, r6
 6432 3f1e 2068     		ldr	r0, [r4]
 6433 3f20 19F801BF 		ldrb	fp, [r9, #1]!	@ zero_extendqisi2
 6434 3f24 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 6435 3f28 FDEEC07A 		vcvt.s32.f32	s15, s0
 6436 3f2c 5A46     		mov	r2, fp
 6437 3f2e 17EE903A 		vmov	r3, s15	@ int
 6438 3f32 5146     		mov	r1, r10
 6439 3f34 4046     		mov	r0, r8
 6440 3f36 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6441 3f3a D4F89832 		ldr	r3, [r4, #664]
ARM GAS  /tmp/ccM7BG9e.s 			page 114


 6442 3f3e 0137     		adds	r7, r7, #1
 6443 3f40 BB42     		cmp	r3, r7
 6444 3f42 EAD8     		bhi	.L950
 6445              	.L949:
 6446 3f44 9049     		ldr	r1, .L1963+20
 6447 3f46 4046     		mov	r0, r8
 6448 3f48 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6449 3f4c D4F8A032 		ldr	r3, [r4, #672]
 6450 3f50 B3B1     		cbz	r3, .L947
 6451 3f52 DFF86892 		ldr	r9, .L1963+72
 6452 3f56 0027     		movs	r7, #0
 6453              	.L948:
 6454 3f58 D4F89812 		ldr	r1, [r4, #664]
 6455 3f5c 2068     		ldr	r0, [r4]
 6456 3f5e 3944     		add	r1, r1, r7
 6457 3f60 3246     		mov	r2, r6
 6458 3f62 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEji
 6459 3f66 FDEEC07A 		vcvt.s32.f32	s15, s0
 6460 3f6a 4946     		mov	r1, r9
 6461 3f6c 17EE902A 		vmov	r2, s15	@ int
 6462 3f70 4046     		mov	r0, r8
 6463 3f72 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6464 3f76 D4F8A032 		ldr	r3, [r4, #672]
 6465 3f7a 0137     		adds	r7, r7, #1
 6466 3f7c BB42     		cmp	r3, r7
 6467 3f7e EBD8     		bhi	.L948
 6468              	.L947:
 6469 3f80 40F28A33 		movw	r3, #906
 6470 3f84 9E42     		cmp	r6, r3
 6471 3f86 7DF4FBA8 		bne	.L331
 6472 3f8a 2368     		ldr	r3, [r4]
 6473 3f8c 9FED7F7A 		vldr.32	s14, .L1963+24
 6474 3f90 D3EDF07A 		vldr.32	s15, [r3, #960]
 6475 3f94 7E49     		ldr	r1, .L1963+28
 6476 3f96 67EE877A 		vmul.f32	s15, s15, s14
 6477 3f9a 4046     		mov	r0, r8
 6478 3f9c FDEEE77A 		vcvt.s32.f32	s15, s15
 6479 3fa0 0126     		movs	r6, #1
 6480 3fa2 17EE902A 		vmov	r2, s15	@ int
 6481 3fa6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6482 3faa FDF764B8 		b	.L186
 6483              	.L1833:
 6484 3fae 4521     		movs	r1, #69
 6485 3fb0 2846     		mov	r0, r5
 6486 3fb2 3746     		mov	r7, r6
 6487 3fb4 DDF83880 		ldr	r8, [sp, #56]
 6488 3fb8 5E46     		mov	r6, fp
 6489 3fba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6490 3fbe 0028     		cmp	r0, #0
 6491 3fc0 41F04180 		bne	.L699
 6492 3fc4 002F     		cmp	r7, #0
 6493 3fc6 7DF456A8 		bne	.L186
 6494              	.L700:
 6495 3fca 7249     		ldr	r1, .L1963+32
 6496 3fcc 4046     		mov	r0, r8
 6497 3fce FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6498 3fd2 D4F89832 		ldr	r3, [r4, #664]
ARM GAS  /tmp/ccM7BG9e.s 			page 115


 6499 3fd6 FBB1     		cbz	r3, .L709
 6500 3fd8 DFF8E4B1 		ldr	fp, .L1963+76
 6501 3fdc 04F2634A 		addw	r10, r4, #1123
 6502 3fe0 4FF00009 		mov	r9, #0
 6503 3fe4 5CAF     		add	r7, sp, #368
 6504              	.L710:
 6505 3fe6 4946     		mov	r1, r9
 6506 3fe8 3A46     		mov	r2, r7
 6507 3fea 2068     		ldr	r0, [r4]
 6508 3fec FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 6509 3ff0 3978     		ldrb	r1, [r7]	@ zero_extendqisi2
 6510 3ff2 694B     		ldr	r3, .L1963+36
 6511 3ff4 1AF8012F 		ldrb	r2, [r10, #1]!	@ zero_extendqisi2
 6512 3ff8 0029     		cmp	r1, #0
 6513 3ffa 08BF     		it	eq
 6514 3ffc 5B46     		moveq	r3, fp
 6515 3ffe 1946     		mov	r1, r3
 6516 4000 0091     		str	r1, [sp]
 6517 4002 0346     		mov	r3, r0
 6518 4004 6549     		ldr	r1, .L1963+40
 6519 4006 4046     		mov	r0, r8
 6520 4008 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6521 400c D4F89832 		ldr	r3, [r4, #664]
 6522 4010 09F10109 		add	r9, r9, #1
 6523 4014 4B45     		cmp	r3, r9
 6524 4016 E6D8     		bhi	.L710
 6525              	.L709:
 6526 4018 5B49     		ldr	r1, .L1963+20
 6527 401a 4046     		mov	r0, r8
 6528 401c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6529 4020 D4F8A032 		ldr	r3, [r4, #672]
 6530 4024 002B     		cmp	r3, #0
 6531 4026 3DF426A8 		beq	.L186
 6532 402a DFF894B1 		ldr	fp, .L1963+76
 6533 402e DFF868A1 		ldr	r10, .L1963+36
 6534 4032 4FF00009 		mov	r9, #0
 6535 4036 5CAF     		add	r7, sp, #368
 6536              	.L707:
 6537 4038 D4F89812 		ldr	r1, [r4, #664]
 6538 403c 2068     		ldr	r0, [r4]
 6539 403e 4944     		add	r1, r1, r9
 6540 4040 3A46     		mov	r2, r7
 6541 4042 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 6542 4046 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 6543 4048 5549     		ldr	r1, .L1963+44
 6544 404a 002B     		cmp	r3, #0
 6545 404c 0CBF     		ite	eq
 6546 404e 5B46     		moveq	r3, fp
 6547 4050 5346     		movne	r3, r10
 6548 4052 0246     		mov	r2, r0
 6549 4054 4046     		mov	r0, r8
 6550 4056 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6551 405a D4F8A032 		ldr	r3, [r4, #672]
 6552 405e 09F10109 		add	r9, r9, #1
 6553 4062 4B45     		cmp	r3, r9
 6554 4064 E8D8     		bhi	.L707
 6555 4066 FDF706B8 		b	.L186
ARM GAS  /tmp/ccM7BG9e.s 			page 116


 6556              	.L1882:
 6557 406a 4521     		movs	r1, #69
 6558 406c 2846     		mov	r0, r5
 6559 406e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6560 4072 0028     		cmp	r0, #0
 6561 4074 40F02287 		bne	.L975
 6562 4078 BAF1000F 		cmp	r10, #0
 6563 407c 01F05082 		beq	.L453
 6564              	.L448:
 6565 4080 484B     		ldr	r3, .L1963+48
 6566 4082 0122     		movs	r2, #1
 6567 4084 9868     		ldr	r0, [r3, #8]
 6568 4086 04F1DC01 		add	r1, r4, #220
 6569 408a FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 6570 408e 0126     		movs	r6, #1
 6571 4090 FCF7F1BF 		b	.L186
 6572              	.L379:
 6573 4094 202E     		cmp	r6, #32
 6574 4096 01F0FC80 		beq	.L381
 6575              	.L384:
 6576 409a 5CAF     		add	r7, sp, #368
 6577 409c 0022     		movs	r2, #0
 6578 409e 7923     		movs	r3, #121
 6579 40a0 1AA9     		add	r1, sp, #104
 6580 40a2 2846     		mov	r0, r5
 6581 40a4 3A70     		strb	r2, [r7]
 6582 40a6 CDE91A73 		strd	r7, r3, [sp, #104]
 6583 40aa FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 6584 40ae 0028     		cmp	r0, #0
 6585 40b0 00F0F686 		beq	.L1901
 6586 40b4 4246     		mov	r2, r8
 6587 40b6 3946     		mov	r1, r7
 6588 40b8 2046     		mov	r0, r4
 6589 40ba FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 6590 40be 0028     		cmp	r0, #0
 6591 40c0 41F03A84 		bne	.L1902
 6592 40c4 0226     		movs	r6, #2
 6593 40c6 FCF7D6BF 		b	.L186
 6594              	.L1897:
 6595 40ca 2C21     		movs	r1, #44
 6596 40cc 4046     		mov	r0, r8
 6597 40ce FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6598 40d2 61E5     		b	.L859
 6599              	.L468:
 6600 40d4 5321     		movs	r1, #83
 6601 40d6 2846     		mov	r0, r5
 6602 40d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6603 40dc 0028     		cmp	r0, #0
 6604 40de 3DF44FA8 		beq	.L331
 6605 40e2 AB68     		ldr	r3, [r5, #8]
 6606 40e4 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 6607 40e6 67F3C302 		bfi	r2, r7, #3, #1
 6608 40ea 1A76     		strb	r2, [r3, #24]
 6609 40ec 2846     		mov	r0, r5
 6610 40ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6611 40f2 B0EE408A 		vmov.f32	s16, s0
 6612 40f6 FCF7EBBF 		b	.L469
ARM GAS  /tmp/ccM7BG9e.s 			page 117


 6613              	.L994:
 6614 40fa 9A46     		mov	r10, r3
 6615              	.L344:
 6616 40fc 4521     		movs	r1, #69
 6617 40fe 2846     		mov	r0, r5
 6618 4100 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6619 4104 0646     		mov	r6, r0
 6620 4106 0028     		cmp	r0, #0
 6621 4108 41F0E980 		bne	.L1903
 6622              	.L347:
 6623 410c 5321     		movs	r1, #83
 6624 410e 2846     		mov	r0, r5
 6625 4110 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6626 4114 0028     		cmp	r0, #0
 6627 4116 41F0B882 		bne	.L1904
 6628 411a BAF1000F 		cmp	r10, #0
 6629 411e 7DF42FA8 		bne	.L331
 6630 4122 2046     		mov	r0, r4
 6631 4124 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 6632 4128 0126     		movs	r6, #1
 6633 412a FCF7A4BF 		b	.L186
 6634              	.L335:
 6635 412e 0526     		movs	r6, #5
 6636 4130 FCF7A1BF 		b	.L186
 6637              	.L922:
 6638 4134 1C49     		ldr	r1, .L1963+52
 6639 4136 4046     		mov	r0, r8
 6640 4138 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6641 413c 0226     		movs	r6, #2
 6642 413e FCF79ABF 		b	.L186
 6643              	.L517:
 6644 4142 2368     		ldr	r3, [r4]
 6645 4144 9FED197A 		vldr.32	s14, .L1963+56
 6646 4148 D3F8D437 		ldr	r3, [r3, #2004]
 6647 414c 07EE903A 		vmov	s15, r3	@ int
 6648 4150 F8EE677A 		vcvt.f32.u32	s15, s15
 6649 4154 0126     		movs	r6, #1
 6650 4156 C7EE877A 		vdiv.f32	s15, s15, s14
 6651 415a 17EE900A 		vmov	r0, s15
 6652 415e FFF7FEFF 		bl	__aeabi_f2d
 6653 4162 0246     		mov	r2, r0
 6654 4164 0B46     		mov	r3, r1
 6655 4166 4046     		mov	r0, r8
 6656 4168 1149     		ldr	r1, .L1963+60
 6657 416a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6658 416e FCF782BF 		b	.L186
 6659              	.L1964:
 6660 4172 00BF     		.align	2
 6661              	.L1963:
 6662 4174 00100000 		.word	.LC171
 6663 4178 8988883C 		.word	1015580809
 6664 417c 7C060000 		.word	.LC87
 6665 4180 10090000 		.word	.LC114
 6666 4184 D4010000 		.word	.LC49
 6667 4188 4C0D0000 		.word	.LC141
 6668 418c 0000C842 		.word	1120403456
 6669 4190 90140000 		.word	.LC205
ARM GAS  /tmp/ccM7BG9e.s 			page 118


 6670 4194 380D0000 		.word	.LC140
 6671 4198 98000000 		.word	.LC24
 6672 419c 500D0000 		.word	.LC142
 6673 41a0 5C0D0000 		.word	.LC143
 6674 41a4 00000000 		.word	reprap
 6675 41a8 70140000 		.word	.LC202
 6676 41ac 00007A44 		.word	1148846080
 6677 41b0 80070000 		.word	.LC101
 6678 41b4 04090000 		.word	.LC113
 6679 41b8 84140000 		.word	.LC203
 6680 41bc 8C140000 		.word	.LC204
 6681 41c0 A0000000 		.word	.LC25
 6682              	.L409:
 6683 41c4 18AB     		add	r3, sp, #96
 6684 41c6 4A46     		mov	r2, r9
 6685 41c8 5321     		movs	r1, #83
 6686 41ca 2846     		mov	r0, r5
 6687 41cc FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIValueEcRmRb
 6688 41d0 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 6689 41d4 002B     		cmp	r3, #0
 6690 41d6 41F03481 		bne	.L1905
 6691 41da 04F25453 		addw	r3, r4, #1364
 6692 41de 94F85815 		ldrb	r1, [r4, #1368]	@ zero_extendqisi2
 6693 41e2 C54A     		ldr	r2, .L1965
 6694 41e4 C54E     		ldr	r6, .L1965+4
 6695 41e6 1868     		ldr	r0, [r3]	@ float
 6696 41e8 0029     		cmp	r1, #0
 6697 41ea 18BF     		it	ne
 6698 41ec 1646     		movne	r6, r2
 6699 41ee FFF7FEFF 		bl	__aeabi_f2d
 6700 41f2 CDE90201 		strd	r0, [sp, #8]
 6701 41f6 C24B     		ldr	r3, .L1965+8
 6702 41f8 9B68     		ldr	r3, [r3, #8]
 6703 41fa 986A     		ldr	r0, [r3, #40]	@ float
 6704 41fc FFF7FEFF 		bl	__aeabi_f2d
 6705 4200 3246     		mov	r2, r6
 6706 4202 CDE90001 		strd	r0, [sp]
 6707 4206 BF49     		ldr	r1, .L1965+12
 6708 4208 4046     		mov	r0, r8
 6709 420a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6710 420e 0126     		movs	r6, #1
 6711 4210 FCF731BF 		b	.L186
 6712              	.L405:
 6713 4214 BC49     		ldr	r1, .L1965+16
 6714 4216 4046     		mov	r0, r8
 6715 4218 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6716 421c 0226     		movs	r6, #2
 6717 421e FCF72ABF 		b	.L186
 6718              	.L883:
 6719 4222 B74B     		ldr	r3, .L1965+8
 6720 4224 3146     		mov	r1, r6
 6721 4226 5868     		ldr	r0, [r3, #4]
 6722 4228 4246     		mov	r2, r8
 6723 422a FFF7FEFF 		bl	_ZNK7Network15ReportProtocolsEjRK9StringRef
 6724 422e 0646     		mov	r6, r0
 6725 4230 FCF721BF 		b	.L186
 6726              	.L771:
ARM GAS  /tmp/ccM7BG9e.s 			page 119


 6727 4234 B549     		ldr	r1, .L1965+20
 6728 4236 4046     		mov	r0, r8
 6729 4238 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6730 423c 2068     		ldr	r0, [r4]
 6731 423e FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 6732 4242 0528     		cmp	r0, #5
 6733 4244 01F27284 		bhi	.L772
 6734 4248 DFE800F0 		tbb	[pc, r0]
 6735              	.L774:
 6736 424c 1F       		.byte	(.L773-.L774)/2
 6737 424d 1F       		.byte	(.L773-.L774)/2
 6738 424e 18       		.byte	(.L775-.L774)/2
 6739 424f 11       		.byte	(.L776-.L774)/2
 6740 4250 0A       		.byte	(.L777-.L774)/2
 6741 4251 03       		.byte	(.L778-.L774)/2
 6742              		.p2align 1
 6743              	.L778:
 6744 4252 AF49     		ldr	r1, .L1965+24
 6745 4254 4046     		mov	r0, r8
 6746 4256 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6747 425a 0126     		movs	r6, #1
 6748 425c FCF70BBF 		b	.L186
 6749              	.L777:
 6750 4260 AC49     		ldr	r1, .L1965+28
 6751 4262 4046     		mov	r0, r8
 6752 4264 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6753 4268 0126     		movs	r6, #1
 6754 426a FCF704BF 		b	.L186
 6755              	.L776:
 6756 426e AA49     		ldr	r1, .L1965+32
 6757 4270 4046     		mov	r0, r8
 6758 4272 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6759 4276 0126     		movs	r6, #1
 6760 4278 FCF7FDBE 		b	.L186
 6761              	.L775:
 6762 427c A749     		ldr	r1, .L1965+36
 6763 427e 4046     		mov	r0, r8
 6764 4280 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6765 4284 0126     		movs	r6, #1
 6766 4286 FCF7F6BE 		b	.L186
 6767              	.L773:
 6768 428a A549     		ldr	r1, .L1965+40
 6769 428c 4046     		mov	r0, r8
 6770 428e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6771 4292 0126     		movs	r6, #1
 6772 4294 FCF7EFBE 		b	.L186
 6773              	.L481:
 6774 4298 2068     		ldr	r0, [r4]
 6775 429a FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 6776 429e A14B     		ldr	r3, .L1965+44
 6777 42a0 0090     		str	r0, [sp]
 6778 42a2 A14A     		ldr	r2, .L1965+48
 6779 42a4 A149     		ldr	r1, .L1965+52
 6780 42a6 4046     		mov	r0, r8
 6781 42a8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6782 42ac FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 6783 42b0 20B1     		cbz	r0, .L482
ARM GAS  /tmp/ccM7BG9e.s 			page 120


 6784 42b2 0246     		mov	r2, r0
 6785 42b4 9E49     		ldr	r1, .L1965+56
 6786 42b6 4046     		mov	r0, r8
 6787 42b8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6788              	.L482:
 6789 42bc FFF7FEFF 		bl	_ZN13DuetExpansion31GetAdditionalExpansionBoardNameEv
 6790 42c0 20B1     		cbz	r0, .L483
 6791 42c2 0246     		mov	r2, r0
 6792 42c4 9A49     		ldr	r1, .L1965+56
 6793 42c6 4046     		mov	r0, r8
 6794 42c8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6795              	.L483:
 6796 42cc 994A     		ldr	r2, .L1965+60
 6797 42ce 9A49     		ldr	r1, .L1965+64
 6798 42d0 4046     		mov	r0, r8
 6799 42d2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6800 42d6 0126     		movs	r6, #1
 6801 42d8 FCF7CDBE 		b	.L186
 6802              	.L779:
 6803 42dc 884E     		ldr	r6, .L1965+8
 6804 42de 0146     		mov	r1, r0
 6805 42e0 B068     		ldr	r0, [r6, #8]
 6806 42e2 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6807 42e6 B068     		ldr	r0, [r6, #8]
 6808 42e8 0121     		movs	r1, #1
 6809 42ea 10EE107A 		vmov	r7, s0
 6810 42ee FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6811 42f2 B068     		ldr	r0, [r6, #8]
 6812 42f4 0221     		movs	r1, #2
 6813 42f6 10EE109A 		vmov	r9, s0
 6814 42fa FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEj
 6815 42fe 3846     		mov	r0, r7	@ float
 6816 4300 8DED0D0A 		vstr.32	s0, [sp, #52]	@ int
 6817 4304 FFF7FEFF 		bl	__aeabi_f2d
 6818 4308 9DED0D0A 		vldr.32	s0, [sp, #52]	@ int
 6819 430c 0646     		mov	r6, r0
 6820 430e 10EE100A 		vmov	r0, s0
 6821 4312 0F46     		mov	r7, r1
 6822 4314 FFF7FEFF 		bl	__aeabi_f2d
 6823 4318 CDE90201 		strd	r0, [sp, #8]
 6824 431c 4846     		mov	r0, r9	@ float
 6825 431e FFF7FEFF 		bl	__aeabi_f2d
 6826 4322 3246     		mov	r2, r6
 6827 4324 CDE90001 		strd	r0, [sp]
 6828 4328 3B46     		mov	r3, r7
 6829 432a 8449     		ldr	r1, .L1965+68
 6830 432c 4046     		mov	r0, r8
 6831 432e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6832 4332 0126     		movs	r6, #1
 6833 4334 FCF79FBE 		b	.L186
 6834              	.L673:
 6835 4338 714B     		ldr	r3, .L1965+8
 6836 433a 4146     		mov	r1, r8
 6837 433c D868     		ldr	r0, [r3, #12]
 6838 433e FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 6839 4342 0126     		movs	r6, #1
 6840 4344 FCF797BE 		b	.L186
ARM GAS  /tmp/ccM7BG9e.s 			page 121


 6841              	.L841:
 6842 4348 7D49     		ldr	r1, .L1965+72
 6843 434a 4046     		mov	r0, r8
 6844 434c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6845 4350 D4F8A032 		ldr	r3, [r4, #672]
 6846 4354 002B     		cmp	r3, #0
 6847 4356 3CF413AF 		beq	.L331
 6848 435a 0026     		movs	r6, #0
 6849 435c 0027     		movs	r7, #0
 6850 435e DFF81CB2 		ldr	fp, .L1965+132
 6851 4362 4FF03A0A 		mov	r10, #58
 6852 4366 16E0     		b	.L849
 6853              	.L1906:
 6854 4368 2368     		ldr	r3, [r4]
 6855 436a 03EB8903 		add	r3, r3, r9, lsl #2
 6856 436e D3F80802 		ldr	r0, [r3, #520]	@ float
 6857 4372 FFF7FEFF 		bl	__aeabi_f2d
 6858              	.L848:
 6859 4376 CDE90001 		strd	r0, [sp]
 6860 437a 5246     		mov	r2, r10
 6861 437c 5946     		mov	r1, fp
 6862 437e 4046     		mov	r0, r8
 6863 4380 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6864 4384 D4F8A032 		ldr	r3, [r4, #672]
 6865 4388 09F10109 		add	r9, r9, #1
 6866 438c 4B45     		cmp	r3, r9
 6867 438e 4FF02C0A 		mov	r10, #44
 6868 4392 7CF6F5AE 		bls	.L331
 6869              	.L849:
 6870 4396 B9F1080F 		cmp	r9, #8
 6871 439a E5D9     		bls	.L1906
 6872 439c 3046     		mov	r0, r6
 6873 439e 3946     		mov	r1, r7
 6874 43a0 E9E7     		b	.L848
 6875              	.L753:
 6876 43a2 5748     		ldr	r0, .L1965+8
 6877 43a4 FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 6878 43a8 6649     		ldr	r1, .L1965+76
 6879 43aa 0246     		mov	r2, r0
 6880 43ac 4046     		mov	r0, r8
 6881 43ae FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6882 43b2 FEF723BA 		b	.L754
 6883              	.L962:
 6884 43b6 2368     		ldr	r3, [r4]
 6885 43b8 634A     		ldr	r2, .L1965+80
 6886 43ba D3F8B409 		ldr	r0, [r3, #2484]
 6887 43be 6349     		ldr	r1, .L1965+84
 6888 43c0 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 6889 43c4 0028     		cmp	r0, #0
 6890 43c6 40F0B886 		bne	.L963
 6891 43ca 5F4A     		ldr	r2, .L1965+80
 6892 43cc 6049     		ldr	r1, .L1965+88
 6893 43ce 4046     		mov	r0, r8
 6894 43d0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6895 43d4 0226     		movs	r6, #2
 6896 43d6 FCF74EBE 		b	.L186
 6897              	.L788:
ARM GAS  /tmp/ccM7BG9e.s 			page 122


 6898 43da 5E49     		ldr	r1, .L1965+92
 6899 43dc 4046     		mov	r0, r8
 6900 43de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6901 43e2 0226     		movs	r6, #2
 6902 43e4 FCF747BE 		b	.L186
 6903              	.L961:
 6904 43e8 2368     		ldr	r3, [r4]
 6905 43ea 03F21C73 		addw	r3, r3, #1820
 6906 43ee 0126     		movs	r6, #1
 6907 43f0 1868     		ldr	r0, [r3]	@ float
 6908 43f2 FFF7FEFF 		bl	__aeabi_f2d
 6909 43f6 0246     		mov	r2, r0
 6910 43f8 0B46     		mov	r3, r1
 6911 43fa 4046     		mov	r0, r8
 6912 43fc 5649     		ldr	r1, .L1965+96
 6913 43fe FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6914 4402 FCF738BE 		b	.L186
 6915              	.L402:
 6916 4406 4049     		ldr	r1, .L1965+16
 6917 4408 4046     		mov	r0, r8
 6918 440a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6919 440e 0226     		movs	r6, #2
 6920 4410 FCF731BE 		b	.L186
 6921              	.L478:
 6922 4414 3A48     		ldr	r0, .L1965+8
 6923 4416 FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 6924 441a 0126     		movs	r6, #1
 6925 441c FCF72BBE 		b	.L186
 6926              	.L401:
 6927 4420 4E49     		ldr	r1, .L1965+100
 6928 4422 4046     		mov	r0, r8
 6929 4424 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6930 4428 0126     		movs	r6, #1
 6931 442a FCF724BE 		b	.L186
 6932              	.L952:
 6933 442e 5CAA     		add	r2, sp, #368
 6934 4430 1AA9     		add	r1, sp, #104
 6935 4432 2068     		ldr	r0, [r4]
 6936 4434 FFF7FEFF 		bl	_ZN8Platform19GetAutoSaveSettingsERfS0_
 6937 4438 0028     		cmp	r0, #0
 6938 443a 01F0E980 		beq	.L958
 6939 443e 1A98     		ldr	r0, [sp, #104]	@ float
 6940 4440 FFF7FEFF 		bl	__aeabi_f2d
 6941 4444 0646     		mov	r6, r0
 6942 4446 5C98     		ldr	r0, [sp, #368]	@ float
 6943 4448 0F46     		mov	r7, r1
 6944 444a FFF7FEFF 		bl	__aeabi_f2d
 6945 444e D4F8B0C0 		ldr	ip, [r4, #176]
 6946 4452 434B     		ldr	r3, .L1965+104
 6947 4454 BCF1000F 		cmp	ip, #0
 6948 4458 08BF     		it	eq
 6949 445a 9C46     		moveq	ip, r3
 6950 445c CDE90001 		strd	r0, [sp]
 6951 4460 3246     		mov	r2, r6
 6952 4462 3B46     		mov	r3, r7
 6953 4464 CDF808C0 		str	ip, [sp, #8]
 6954 4468 3E49     		ldr	r1, .L1965+108
ARM GAS  /tmp/ccM7BG9e.s 			page 123


 6955 446a 4046     		mov	r0, r8
 6956 446c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6957              	.L960:
 6958 4470 0126     		movs	r6, #1
 6959 4472 FCF700BE 		b	.L186
 6960              	.L619:
 6961 4476 04F2A443 		addw	r3, r4, #1188
 6962 447a D3ED007A 		vldr.32	s15, [r3]
 6963 447e DFED3A6A 		vldr.32	s13, .L1965+112
 6964 4482 9FED3A7A 		vldr.32	s14, .L1965+116
 6965 4486 67EEA67A 		vmul.f32	s15, s15, s13
 6966 448a 0126     		movs	r6, #1
 6967 448c 67EE877A 		vmul.f32	s15, s15, s14
 6968 4490 17EE900A 		vmov	r0, s15
 6969 4494 FFF7FEFF 		bl	__aeabi_f2d
 6970 4498 0246     		mov	r2, r0
 6971 449a 0B46     		mov	r3, r1
 6972 449c 4046     		mov	r0, r8
 6973 449e 3449     		ldr	r1, .L1965+120
 6974 44a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6975 44a4 FCF7E7BD 		b	.L186
 6976              	.L784:
 6977 44a8 7923     		movs	r3, #121
 6978 44aa 3146     		mov	r1, r6
 6979 44ac 1AA8     		add	r0, sp, #104
 6980 44ae CDE91A73 		strd	r7, r3, [sp, #104]
 6981 44b2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6982 44b6 FDF7AFBD 		b	.L785
 6983              	.L480:
 6984 44ba 4146     		mov	r1, r8
 6985 44bc 2046     		mov	r0, r4
 6986 44be FFF7FEFF 		bl	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 6987 44c2 0126     		movs	r6, #1
 6988 44c4 FCF7D7BD 		b	.L186
 6989              	.L1860:
 6990 44c8 0D4B     		ldr	r3, .L1965+8
 6991 44ca 9869     		ldr	r0, [r3, #24]
 6992 44cc 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 6993 44ce 002B     		cmp	r3, #0
 6994 44d0 3FF4F8AA 		beq	.L921
 6995 44d4 FFF7FEFF 		bl	_ZN7Scanner8RegisterEv
 6996 44d8 0026     		movs	r6, #0
 6997 44da FCF7CCBD 		b	.L186
 6998              	.L1074:
 6999 44de 254A     		ldr	r2, .L1965+124
 7000 44e0 FFF756BB 		b	.L860
 7001              	.L1075:
 7002 44e4 244A     		ldr	r2, .L1965+128
 7003 44e6 FFF753BB 		b	.L860
 7004              	.L470:
 7005 44ea 0548     		ldr	r0, .L1965+8
 7006 44ec FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 7007 44f0 0746     		mov	r7, r0
 7008 44f2 FCF7FDBD 		b	.L471
 7009              	.L1966:
 7010 44f6 00BF     		.align	2
 7011              	.L1965:
ARM GAS  /tmp/ccM7BG9e.s 			page 124


 7012 44f8 10000000 		.word	.LC11
 7013 44fc 14000000 		.word	.LC12
 7014 4500 00000000 		.word	reprap
 7015 4504 DC040000 		.word	.LC75
 7016 4508 50030000 		.word	.LC63
 7017 450c 100F0000 		.word	.LC162
 7018 4510 600F0000 		.word	.LC167
 7019 4514 540F0000 		.word	.LC166
 7020 4518 4C0F0000 		.word	.LC165
 7021 451c 440F0000 		.word	.LC164
 7022 4520 1C0F0000 		.word	.LC163
 7023 4524 A8060000 		.word	.LC91
 7024 4528 B4060000 		.word	.LC92
 7025 452c DC060000 		.word	.LC93
 7026 4530 14070000 		.word	.LC94
 7027 4534 1C070000 		.word	.LC95
 7028 4538 2C070000 		.word	.LC96
 7029 453c 7C0F0000 		.word	.LC169
 7030 4540 B8120000 		.word	.LC185
 7031 4544 AC0E0000 		.word	.LC157
 7032 4548 68150000 		.word	.LC212
 7033 454c B0000000 		.word	.LC27
 7034 4550 80150000 		.word	.LC213
 7035 4554 94040000 		.word	.LC73
 7036 4558 10150000 		.word	.LC209
 7037 455c 6C040000 		.word	.LC71
 7038 4560 A0000000 		.word	.LC25
 7039 4564 C4140000 		.word	.LC207
 7040 4568 00007042 		.word	1114636288
 7041 456c 0000C842 		.word	1120403456
 7042 4570 100A0000 		.word	.LC121
 7043 4574 44010000 		.word	.LC41
 7044 4578 30010000 		.word	.LC40
 7045 457c D4120000 		.word	.LC186
 7046              	.L1831:
 7047 4580 06F52466 		add	r6, r6, #2624
 7048 4584 D6ED007A 		vldr.32	s15, [r6]
 7049 4588 F5EEC07A 		vcmpe.f32	s15, #0
 7050 458c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7051 4590 7DF734AA 		ble	.L713
 7052 4594 17EE900A 		vmov	r0, s15
 7053 4598 FFF7FEFF 		bl	__aeabi_f2d
 7054 459c 0246     		mov	r2, r0
 7055 459e 0B46     		mov	r3, r1
 7056 45a0 4046     		mov	r0, r8
 7057 45a2 D849     		ldr	r1, .L1967
 7058 45a4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7059 45a8 0126     		movs	r6, #1
 7060 45aa FCF764BD 		b	.L186
 7061              	.L554:
 7062 45ae D649     		ldr	r1, .L1967+4
 7063 45b0 4046     		mov	r0, r8
 7064 45b2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7065 45b6 D4F8A032 		ldr	r3, [r4, #672]
 7066 45ba 002B     		cmp	r3, #0
 7067 45bc 3CF4E0AD 		beq	.L331
 7068 45c0 DFEDD28A 		vldr.32	s17, .L1967+8
ARM GAS  /tmp/ccM7BG9e.s 			page 125


 7069 45c4 DFF858A3 		ldr	r10, .L1967+28
 7070 45c8 DFF85893 		ldr	r9, .L1967+32
 7071 45cc 04F2CC47 		addw	r7, r4, #1228
 7072 45d0 07E0     		b	.L558
 7073              	.L1907:
 7074 45d2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7075              	.L556:
 7076 45d6 D4F8A032 		ldr	r3, [r4, #672]
 7077 45da 0136     		adds	r6, r6, #1
 7078 45dc B342     		cmp	r3, r6
 7079 45de 7CF6CFAD 		bls	.L331
 7080              	.L558:
 7081 45e2 F7EC017A 		vldmia.32	r7!, {s15}
 7082 45e6 B7EE007A 		vmov.f32	s14, #1.0e+0
 7083 45ea F4EE477A 		vcmp.f32	s15, s14
 7084 45ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7085 45f2 4946     		mov	r1, r9
 7086 45f4 4046     		mov	r0, r8
 7087 45f6 ECD0     		beq	.L1907
 7088 45f8 27EEA80A 		vmul.f32	s0, s15, s17
 7089 45fc B5EE400A 		vcmp.f32	s0, #0
 7090 4600 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7091 4604 B1EEC08A 		vsqrt.f32	s16, s0
 7092 4608 01F12187 		bmi	.L1908
 7093              	.L557:
 7094 460c F0EE007A 		vmov.f32	s15, #2.0e+0
 7095 4610 C7EE887A 		vdiv.f32	s15, s15, s16
 7096 4614 17EE900A 		vmov	r0, s15
 7097 4618 FFF7FEFF 		bl	__aeabi_f2d
 7098 461c 0246     		mov	r2, r0
 7099 461e 0B46     		mov	r3, r1
 7100 4620 4046     		mov	r0, r8
 7101 4622 5146     		mov	r1, r10
 7102 4624 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7103 4628 D5E7     		b	.L556
 7104              	.L1892:
 7105 462a 2846     		mov	r0, r5
 7106 462c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7107 4630 B4EE400A 		vcmp.f32	s0, s0
 7108 4634 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7109 4638 80F18C86 		bvs	.L1792
 7110 463c DFEDBB7A 		vldr.32	s15, .L1967+40
 7111 4640 B4EEE70A 		vcmpe.f32	s0, s15
 7112 4644 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7113 4648 00F38486 		bgt	.L1792
 7114 464c B7EE000A 		vmov.f32	s0, #1.0e+0
 7115              	.L604:
 7116 4650 04F5AD63 		add	r3, r4, #1384
 7117 4654 83ED000A 		vstr.32	s0, [r3]
 7118 4658 5A21     		movs	r1, #90
 7119 465a 2846     		mov	r0, r5
 7120 465c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7121 4660 0028     		cmp	r0, #0
 7122 4662 3CF48DAD 		beq	.L331
 7123              	.L608:
 7124 4666 2846     		mov	r0, r5
 7125 4668 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  /tmp/ccM7BG9e.s 			page 126


 7126 466c B4EE400A 		vcmp.f32	s0, s0
 7127 4670 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7128 4674 06D6     		bvs	.L606
 7129 4676 B5EEC00A 		vcmpe.f32	s0, #0
 7130 467a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7131 467e D8BF     		it	le
 7132 4680 9FEDA30A 		vldrle.32	s0, .L1967+12
 7133              	.L606:
 7134 4684 04F26C53 		addw	r3, r4, #1388
 7135 4688 83ED000A 		vstr.32	s0, [r3]
 7136 468c 0126     		movs	r6, #1
 7137 468e FCF7F2BC 		b	.L186
 7138              	.L1829:
 7139 4692 2846     		mov	r0, r5
 7140 4694 2668     		ldr	r6, [r4]
 7141 4696 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7142 469a 06F6CC16 		addw	r6, r6, #2508
 7143 469e 86ED000A 		vstr.32	s0, [r6]
 7144 46a2 4421     		movs	r1, #68
 7145 46a4 2846     		mov	r0, r5
 7146 46a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7147 46aa 0028     		cmp	r0, #0
 7148 46ac 3CF468AD 		beq	.L331
 7149              	.L716:
 7150 46b0 2846     		mov	r0, r5
 7151 46b2 2668     		ldr	r6, [r4]
 7152 46b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7153 46b8 06F51D66 		add	r6, r6, #2512
 7154 46bc 86ED000A 		vstr.32	s0, [r6]
 7155 46c0 0126     		movs	r6, #1
 7156 46c2 FCF7D8BC 		b	.L186
 7157              	.L1838:
 7158 46c6 2846     		mov	r0, r5
 7159 46c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7160 46cc 0028     		cmp	r0, #0
 7161 46ce D4BF     		ite	le
 7162 46d0 0020     		movle	r0, #0
 7163 46d2 0120     		movgt	r0, #1
 7164 46d4 84F86E04 		strb	r0, [r4, #1134]
 7165 46d8 4821     		movs	r1, #72
 7166 46da 2846     		mov	r0, r5
 7167 46dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7168 46e0 0028     		cmp	r0, #0
 7169 46e2 3CF44DAD 		beq	.L331
 7170              	.L794:
 7171 46e6 2846     		mov	r0, r5
 7172 46e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7173 46ec 0028     		cmp	r0, #0
 7174 46ee D4BF     		ite	le
 7175 46f0 0020     		movle	r0, #0
 7176 46f2 0120     		movgt	r0, #1
 7177 46f4 84F86F04 		strb	r0, [r4, #1135]
 7178 46f8 0126     		movs	r6, #1
 7179 46fa FCF7BCBC 		b	.L186
 7180              	.L341:
 7181 46fe 9FED840A 		vldr.32	s0, .L1967+12
 7182 4702 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccM7BG9e.s 			page 127


 7183 4704 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 7184 4708 FCF7B5BC 		b	.L186
 7185              	.L1894:
 7186 470c 2846     		mov	r0, r5
 7187 470e 2668     		ldr	r6, [r4]
 7188 4710 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7189 4714 5421     		movs	r1, #84
 7190 4716 86ED680A 		vstr.32	s0, [r6, #416]
 7191 471a 2846     		mov	r0, r5
 7192 471c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7193 4720 0028     		cmp	r0, #0
 7194 4722 3CF42DAD 		beq	.L331
 7195              	.L591:
 7196 4726 2846     		mov	r0, r5
 7197 4728 2768     		ldr	r7, [r4]
 7198 472a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7199 472e 0126     		movs	r6, #1
 7200 4730 87ED690A 		vstr.32	s0, [r7, #420]
 7201 4734 FCF79FBC 		b	.L186
 7202              	.L396:
 7203 4738 236C     		ldr	r3, [r4, #64]
 7204 473a 1868     		ldr	r0, [r3]
 7205 473c FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 7206 4740 0646     		mov	r6, r0
 7207 4742 0028     		cmp	r0, #0
 7208 4744 7EF499AE 		bne	.L397
 7209 4748 2946     		mov	r1, r5
 7210 474a 2046     		mov	r0, r4
 7211 474c FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7212 4750 0028     		cmp	r0, #0
 7213 4752 3BF47EAC 		beq	.L742
 7214 4756 3346     		mov	r3, r6
 7215 4758 3246     		mov	r2, r6
 7216 475a 2946     		mov	r1, r5
 7217 475c 2046     		mov	r0, r4
 7218 475e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 7219 4762 0126     		movs	r6, #1
 7220 4764 FCF787BC 		b	.L186
 7221              	.L880:
 7222 4768 6A49     		ldr	r1, .L1967+16
 7223 476a 4046     		mov	r0, r8
 7224 476c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7225 4770 D4F89C32 		ldr	r3, [r4, #668]
 7226 4774 002B     		cmp	r3, #0
 7227 4776 3EF408AA 		beq	.L877
 7228 477a DFF8AC91 		ldr	r9, .L1967+36
 7229 477e 04F25946 		addw	r6, r4, #1113
 7230 4782 04F52977 		add	r7, r4, #676
 7231 4786 4FF03A0A 		mov	r10, #58
 7232              	.L881:
 7233 478a 57F8040B 		ldr	r0, [r7], #4	@ float
 7234 478e 96F801B0 		ldrb	fp, [r6, #1]	@ zero_extendqisi2
 7235 4792 FFF7FEFF 		bl	__aeabi_f2d
 7236 4796 5246     		mov	r2, r10
 7237 4798 CDE90001 		strd	r0, [sp]
 7238 479c 5B46     		mov	r3, fp
 7239 479e 4946     		mov	r1, r9
ARM GAS  /tmp/ccM7BG9e.s 			page 128


 7240 47a0 4046     		mov	r0, r8
 7241 47a2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7242 47a6 A6F58B63 		sub	r3, r6, #1112
 7243 47aa D4F89C22 		ldr	r2, [r4, #668]
 7244 47ae 1B1B     		subs	r3, r3, r4
 7245 47b0 9A42     		cmp	r2, r3
 7246 47b2 06F10106 		add	r6, r6, #1
 7247 47b6 4FF02C0A 		mov	r10, #44
 7248 47ba E6D8     		bhi	.L881
 7249 47bc FEF7E5B9 		b	.L877
 7250              	.L1799:
 7251 47c0 2846     		mov	r0, r5
 7252 47c2 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7253 47c6 5021     		movs	r1, #80
 7254 47c8 C4F84804 		str	r0, [r4, #1096]
 7255 47cc 2846     		mov	r0, r5
 7256 47ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7257 47d2 0028     		cmp	r0, #0
 7258 47d4 3CF4D4AC 		beq	.L331
 7259 47d8 2846     		mov	r0, r5
 7260 47da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7261 47de B4EE400A 		vcmp.f32	s0, s0
 7262 47e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7263 47e6 09D6     		bvs	.L398
 7264 47e8 F7EE007A 		vmov.f32	s15, #1.0e+0
 7265 47ec B4EEE70A 		vcmpe.f32	s0, s15
 7266 47f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7267 47f4 01F18E85 		bmi	.L1909
 7268 47f8 B0EE670A 		vmov.f32	s0, s15
 7269              	.L398:
 7270 47fc 84ED570A 		vstr.32	s0, [r4, #348]
 7271 4800 0126     		movs	r6, #1
 7272 4802 FCF738BC 		b	.L186
 7273              	.L1878:
 7274 4806 2846     		mov	r0, r5
 7275 4808 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7276 480c 071E     		subs	r7, r0, #0
 7277 480e 06DB     		blt	.L520
 7278 4810 8C2E     		cmp	r6, #140
 7279 4812 14BF     		ite	ne
 7280 4814 0223     		movne	r3, #2
 7281 4816 0423     		moveq	r3, #4
 7282 4818 BB42     		cmp	r3, r7
 7283 481a 3EF798AE 		bgt	.L522
 7284              	.L520:
 7285 481e 3A46     		mov	r2, r7
 7286 4820 3D49     		ldr	r1, .L1967+20
 7287 4822 4046     		mov	r0, r8
 7288 4824 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7289 4828 0226     		movs	r6, #2
 7290 482a FCF724BC 		b	.L186
 7291              	.L559:
 7292 482e 4521     		movs	r1, #69
 7293 4830 2846     		mov	r0, r5
 7294 4832 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7295 4836 0028     		cmp	r0, #0
 7296 4838 3FF401AA 		beq	.L980
ARM GAS  /tmp/ccM7BG9e.s 			page 129


 7297              	.L979:
 7298 483c D4F8A032 		ldr	r3, [r4, #672]
 7299 4840 1A93     		str	r3, [sp, #104]
 7300 4842 1AAA     		add	r2, sp, #104
 7301 4844 5CA9     		add	r1, sp, #368
 7302 4846 0123     		movs	r3, #1
 7303 4848 2846     		mov	r0, r5
 7304 484a FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7305 484e 1A9E     		ldr	r6, [sp, #104]
 7306 4850 0EB3     		cbz	r6, .L568
 7307 4852 5CA8     		add	r0, sp, #368
 7308 4854 0021     		movs	r1, #0
 7309 4856 F7EE006A 		vmov.f32	s13, #1.0e+0
 7310              	.L569:
 7311 485a B0EC017A 		vldmia.32	r0!, {s14}
 7312 485e D4EDBD7A 		vldr.32	s15, [r4, #756]
 7313 4862 D4F89822 		ldr	r2, [r4, #664]
 7314 4866 2368     		ldr	r3, [r4]
 7315 4868 67EE277A 		vmul.f32	s15, s14, s15
 7316 486c 0A44     		add	r2, r2, r1
 7317 486e F4EE677A 		vcmp.f32	s15, s15
 7318 4872 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7319 4876 03EB8203 		add	r3, r3, r2, lsl #2
 7320 487a 01F10101 		add	r1, r1, #1
 7321 487e 06D6     		bvs	.L566
 7322 4880 F4EEE67A 		vcmpe.f32	s15, s13
 7323 4884 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7324 4888 D8BF     		it	le
 7325 488a F0EE667A 		vmovle.f32	s15, s13
 7326              	.L566:
 7327 488e B142     		cmp	r1, r6
 7328 4890 C3ED5C7A 		vstr.32	s15, [r3, #368]
 7329 4894 E1D1     		bne	.L569
 7330              	.L568:
 7331 4896 0126     		movs	r6, #1
 7332 4898 FCF7EDBB 		b	.L186
 7333              	.L852:
 7334 489c 0126     		movs	r6, #1
 7335 489e FCF7EABB 		b	.L186
 7336              	.L329:
 7337 48a2 2046     		mov	r0, r4
 7338 48a4 FFF7FEFF 		bl	_ZNK6GCodes15IsCodeQueueIdleEv
 7339 48a8 0028     		cmp	r0, #0
 7340 48aa 3BF4D2AB 		beq	.L742
 7341 48ae 236C     		ldr	r3, [r4, #64]
 7342 48b0 94F85895 		ldrb	r9, [r4, #1368]	@ zero_extendqisi2
 7343 48b4 1968     		ldr	r1, [r3]
 7344 48b6 94F8AA70 		ldrb	r7, [r4, #170]	@ zero_extendqisi2
 7345 48ba 491B     		subs	r1, r1, r5
 7346 48bc 18BF     		it	ne
 7347 48be 0121     		movne	r1, #1
 7348 48c0 2046     		mov	r0, r4
 7349 48c2 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 7350 48c6 B9F1000F 		cmp	r9, #0
 7351 48ca 7CF459AC 		bne	.L331
 7352 48ce 002F     		cmp	r7, #0
 7353 48d0 01F0A983 		beq	.L332
ARM GAS  /tmp/ccM7BG9e.s 			page 130


 7354 48d4 002E     		cmp	r6, #0
 7355 48d6 01F0A985 		beq	.L1910
 7356              	.L333:
 7357 48da AB68     		ldr	r3, [r5, #8]
 7358 48dc 0F4A     		ldr	r2, .L1967+24
 7359 48de 1721     		movs	r1, #23
 7360 48e0 1975     		strb	r1, [r3, #20]
 7361              	.L966:
 7362 48e2 0023     		movs	r3, #0
 7363 48e4 0093     		str	r3, [sp]
 7364 48e6 2946     		mov	r1, r5
 7365 48e8 2046     		mov	r0, r4
 7366 48ea FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 7367 48ee 0126     		movs	r6, #1
 7368 48f0 FCF7C1BB 		b	.L186
 7369              	.L1842:
 7370 48f4 2846     		mov	r0, r5
 7371 48f6 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7372 48fa C3B2     		uxtb	r3, r0
 7373 48fc 0D93     		str	r3, [sp, #52]
 7374 48fe FDF7D0BC 		b	.L850
 7375              	.L1968:
 7376 4902 00BF     		.align	2
 7377              	.L1967:
 7378 4904 640D0000 		.word	.LC144
 7379 4908 B4080000 		.word	.LC109
 7380 490c DB0F4940 		.word	1078530011
 7381 4910 00000000 		.word	0
 7382 4914 64130000 		.word	.LC193
 7383 4918 A4070000 		.word	.LC102
 7384 491c 00000000 		.word	.LC9
 7385 4920 EC080000 		.word	.LC111
 7386 4924 E4080000 		.word	.LC110
 7387 4928 78130000 		.word	.LC194
 7388 492c 00007042 		.word	1114636288
 7389 4930 8988883C 		.word	1015580809
 7390              	.L1891:
 7391 4934 2846     		mov	r0, r5
 7392 4936 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7393 493a B4EE400A 		vcmp.f32	s0, s0
 7394 493e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7395 4942 80F10185 		bvs	.L1791
 7396 4946 5FED077A 		vldr.32	s15, .L1967+40
 7397 494a B4EEE70A 		vcmpe.f32	s0, s15
 7398 494e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7399 4952 00F3F984 		bgt	.L1791
 7400 4956 B7EE000A 		vmov.f32	s0, #1.0e+0
 7401              	.L600:
 7402 495a 04F26452 		addw	r2, r4, #1380
 7403 495e 04F5AD63 		add	r3, r4, #1384
 7404 4962 82ED000A 		vstr.32	s0, [r2]
 7405 4966 3E46     		mov	r6, r7
 7406 4968 83ED000A 		vstr.32	s0, [r3]
 7407 496c FEF7AFBF 		b	.L598
 7408              	.L1847:
 7409 4970 2846     		mov	r0, r5
 7410 4972 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  /tmp/ccM7BG9e.s 			page 131


 7411 4976 A0F1010A 		sub	r10, r0, #1
 7412 497a BAFA8AFA 		clz	r10, r10
 7413 497e 4FEA5A1A 		lsr	r10, r10, #5
 7414 4982 FDF7D1BD 		b	.L611
 7415              	.L574:
 7416 4986 4521     		movs	r1, #69
 7417 4988 2846     		mov	r0, r5
 7418 498a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7419 498e 0028     		cmp	r0, #0
 7420 4990 3FF4B4A9 		beq	.L982
 7421              	.L981:
 7422 4994 D4F8A032 		ldr	r3, [r4, #672]
 7423 4998 1A93     		str	r3, [sp, #104]
 7424 499a 1AAA     		add	r2, sp, #104
 7425 499c 5CA9     		add	r1, sp, #368
 7426 499e 0123     		movs	r3, #1
 7427 49a0 2846     		mov	r0, r5
 7428 49a2 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7429 49a6 1A9E     		ldr	r6, [sp, #104]
 7430 49a8 2EB3     		cbz	r6, .L583
 7431 49aa 1FED1F6A 		vldr.32	s12, .L1967+44
 7432 49ae 5CA8     		add	r0, sp, #368
 7433 49b0 0021     		movs	r1, #0
 7434 49b2 F7EE006A 		vmov.f32	s13, #1.0e+0
 7435              	.L584:
 7436 49b6 B0EC017A 		vldmia.32	r0!, {s14}
 7437 49ba D4EDBD7A 		vldr.32	s15, [r4, #756]
 7438 49be D4F89822 		ldr	r2, [r4, #664]
 7439 49c2 2368     		ldr	r3, [r4]
 7440 49c4 67EE277A 		vmul.f32	s15, s14, s15
 7441 49c8 0A44     		add	r2, r2, r1
 7442 49ca 67EE867A 		vmul.f32	s15, s15, s12
 7443 49ce 03EB8203 		add	r3, r3, r2, lsl #2
 7444 49d2 F4EE677A 		vcmp.f32	s15, s15
 7445 49d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7446 49da 01F10101 		add	r1, r1, #1
 7447 49de 06D6     		bvs	.L581
 7448 49e0 F4EEE67A 		vcmpe.f32	s15, s13
 7449 49e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7450 49e8 D8BF     		it	le
 7451 49ea F0EE667A 		vmovle.f32	s15, s13
 7452              	.L581:
 7453 49ee B142     		cmp	r1, r6
 7454 49f0 C3ED507A 		vstr.32	s15, [r3, #320]
 7455 49f4 DFD1     		bne	.L584
 7456              	.L583:
 7457 49f6 0126     		movs	r6, #1
 7458 49f8 FCF73DBB 		b	.L186
 7459              	.L1837:
 7460 49fc 2846     		mov	r0, r5
 7461 49fe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7462 4a02 0728     		cmp	r0, #7
 7463 4a04 00F23985 		bhi	.L791
 7464 4a08 41B2     		sxtb	r1, r0
 7465 4a0a D848     		ldr	r0, .L1969
 7466 4a0c FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 7467 4a10 0126     		movs	r6, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 132


 7468 4a12 FDF79CBA 		b	.L792
 7469              	.L1890:
 7470 4a16 2846     		mov	r0, r5
 7471 4a18 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7472 4a1c 04F25C53 		addw	r3, r4, #1372
 7473 4a20 D3ED007A 		vldr.32	s15, [r3]
 7474 4a24 B4EE400A 		vcmp.f32	s0, s0
 7475 4a28 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7476 4a2c F1EE677A 		vneg.f32	s15, s15
 7477 4a30 81F1B683 		bvs	.L1026
 7478 4a34 B4EE670A 		vcmp.f32	s0, s15
 7479 4a38 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7480 4a3c C8BF     		it	gt
 7481 4a3e F0EE407A 		vmovgt.f32	s15, s0
 7482              	.L596:
 7483 4a42 04F5AC63 		add	r3, r4, #1376
 7484 4a46 3E46     		mov	r6, r7
 7485 4a48 C3ED007A 		vstr.32	s15, [r3]
 7486 4a4c FEF737BF 		b	.L595
 7487              	.L1889:
 7488 4a50 2846     		mov	r0, r5
 7489 4a52 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7490 4a56 B4EE400A 		vcmp.f32	s0, s0
 7491 4a5a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7492 4a5e 06D6     		bvs	.L593
 7493 4a60 B5EEC00A 		vcmpe.f32	s0, #0
 7494 4a64 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7495 4a68 D8BF     		it	le
 7496 4a6a 9FEDC10A 		vldrle.32	s0, .L1969+4
 7497              	.L593:
 7498 4a6e 04F25C53 		addw	r3, r4, #1372
 7499 4a72 83ED000A 		vstr.32	s0, [r3]
 7500 4a76 FEF71ABF 		b	.L592
 7501              	.L1800:
 7502 4a7a BE49     		ldr	r1, .L1969+8
 7503 4a7c 4046     		mov	r0, r8
 7504 4a7e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7505 4a82 0226     		movs	r6, #2
 7506 4a84 FCF7F7BA 		b	.L186
 7507              	.L1839:
 7508 4a88 2846     		mov	r0, r5
 7509 4a8a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7510 4a8e 0646     		mov	r6, r0
 7511 4a90 FDF7CABA 		b	.L786
 7512              	.L1875:
 7513 4a94 2846     		mov	r0, r5
 7514 4a96 DE68     		ldr	r6, [r3, #12]
 7515 4a98 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7516 4a9c 0028     		cmp	r0, #0
 7517 4a9e D4BF     		ite	le
 7518 4aa0 0020     		movle	r0, #0
 7519 4aa2 0120     		movgt	r0, #1
 7520 4aa4 86F8D100 		strb	r0, [r6, #209]
 7521 4aa8 0126     		movs	r6, #1
 7522 4aaa FCF7E4BA 		b	.L186
 7523              	.L1840:
 7524 4aae 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 133


 7525 4ab0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7526 4ab4 FDF7BFBA 		b	.L787
 7527              	.L1870:
 7528 4ab8 2846     		mov	r0, r5
 7529 4aba FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7530 4abe 0146     		mov	r1, r0
 7531 4ac0 FEF749BA 		b	.L670
 7532              	.L1869:
 7533 4ac4 2846     		mov	r0, r5
 7534 4ac6 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7535 4aca 0646     		mov	r6, r0
 7536 4acc FEF73ABA 		b	.L669
 7537              	.L1871:
 7538 4ad0 2846     		mov	r0, r5
 7539 4ad2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7540 4ad6 A0F10107 		sub	r7, r0, #1
 7541 4ada B7FA87F7 		clz	r7, r7
 7542 4ade 7F09     		lsrs	r7, r7, #5
 7543 4ae0 FEF74BBA 		b	.L666
 7544              	.L1872:
 7545 4ae4 16AB     		add	r3, sp, #88
 7546 4ae6 0126     		movs	r6, #1
 7547 4ae8 17AA     		add	r2, sp, #92
 7548 4aea 5321     		movs	r1, #83
 7549 4aec 2846     		mov	r0, r5
 7550 4aee 1796     		str	r6, [sp, #92]
 7551 4af0 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 7552 4af4 179B     		ldr	r3, [sp, #92]
 7553 4af6 032B     		cmp	r3, #3
 7554 4af8 00F2AA86 		bhi	.L1911
 7555 4afc 012B     		cmp	r3, #1
 7556 4afe 00F39D86 		bgt	.L654
 7557              	.L657:
 7558 4b02 179B     		ldr	r3, [sp, #92]
 7559 4b04 012B     		cmp	r3, #1
 7560 4b06 41F2FA82 		bls	.L1912
 7561 4b0a 0023     		movs	r3, #0
 7562 4b0c CBF80030 		str	r3, [fp]	@ float
 7563              	.L658:
 7564 4b10 D4F89832 		ldr	r3, [r4, #664]
 7565 4b14 0D93     		str	r3, [sp, #52]
 7566 4b16 002B     		cmp	r3, #0
 7567 4b18 00F04B84 		beq	.L659
 7568 4b1c 0023     		movs	r3, #0
 7569 4b1e 0D93     		str	r3, [sp, #52]
 7570 4b20 9A46     		mov	r10, r3
 7571 4b22 04F25946 		addw	r6, r4, #1113
 7572 4b26 06E0     		b	.L661
 7573              	.L660:
 7574 4b28 D4F89832 		ldr	r3, [r4, #664]
 7575 4b2c 0AF1010A 		add	r10, r10, #1
 7576 4b30 5345     		cmp	r3, r10
 7577 4b32 40F23E84 		bls	.L659
 7578              	.L661:
 7579 4b36 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 7580 4b3a 2846     		mov	r0, r5
 7581 4b3c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccM7BG9e.s 			page 134


 7582 4b40 0028     		cmp	r0, #0
 7583 4b42 F1D0     		beq	.L660
 7584 4b44 2846     		mov	r0, r5
 7585 4b46 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7586 4b4a 0028     		cmp	r0, #0
 7587 4b4c ECDD     		ble	.L660
 7588 4b4e 0D9A     		ldr	r2, [sp, #52]
 7589 4b50 0123     		movs	r3, #1
 7590 4b52 03FA0AF3 		lsl	r3, r3, r10
 7591 4b56 1A43     		orrs	r2, r2, r3
 7592 4b58 0D92     		str	r2, [sp, #52]
 7593 4b5a E5E7     		b	.L660
 7594              	.L1854:
 7595 4b5c 3146     		mov	r1, r6
 7596 4b5e 8348     		ldr	r0, .L1969
 7597 4b60 FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 7598 4b64 FDF71FBE 		b	.L755
 7599              	.L1832:
 7600 4b68 2846     		mov	r0, r5
 7601 4b6a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7602 4b6e 0028     		cmp	r0, #0
 7603 4b70 D4BF     		ite	le
 7604 4b72 0023     		movle	r3, #0
 7605 4b74 0123     		movgt	r3, #1
 7606 4b76 0D93     		str	r3, [sp, #52]
 7607 4b78 FCF769BF 		b	.L693
 7608              	.L1835:
 7609 4b7c 5321     		movs	r1, #83
 7610 4b7e 2846     		mov	r0, r5
 7611 4b80 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7612 4b84 0028     		cmp	r0, #0
 7613 4b86 3DF456A9 		beq	.L460
 7614 4b8a 2846     		mov	r0, r5
 7615 4b8c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7616 4b90 B4EE400A 		vcmp.f32	s0, s0
 7617 4b94 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7618 4b98 0ED6     		bvs	.L462
 7619 4b9a DFED777A 		vldr.32	s15, .L1969+12
 7620 4b9e B4EEE70A 		vcmpe.f32	s0, s15
 7621 4ba2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7622 4ba6 41F15E82 		bpl	.L1755
 7623 4baa B5EEC00A 		vcmpe.f32	s0, #0
 7624 4bae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7625 4bb2 01DC     		bgt	.L462
 7626 4bb4 9FED6E0A 		vldr.32	s0, .L1969+4
 7627              	.L462:
 7628 4bb8 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 7629 4bbc 002B     		cmp	r3, #0
 7630 4bbe 01F0ED81 		beq	.L465
 7631 4bc2 3968     		ldr	r1, [r7]
 7632 4bc4 2068     		ldr	r0, [r4]
 7633 4bc6 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 7634 4bca FDF734B9 		b	.L460
 7635              	.L1816:
 7636 4bce 2846     		mov	r0, r5
 7637 4bd0 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7638 4bd4 0646     		mov	r6, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 135


 7639 4bd6 FCF7AEBC 		b	.L882
 7640              	.L1830:
 7641 4bda 2846     		mov	r0, r5
 7642 4bdc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7643 4be0 3046     		mov	r0, r6
 7644 4be2 FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 7645 4be6 0126     		movs	r6, #1
 7646 4be8 FCF745BA 		b	.L186
 7647              	.L1895:
 7648 4bec 5CAF     		add	r7, sp, #368
 7649 4bee 0123     		movs	r3, #1
 7650 4bf0 0926     		movs	r6, #9
 7651 4bf2 1AAA     		add	r2, sp, #104
 7652 4bf4 3946     		mov	r1, r7
 7653 4bf6 2846     		mov	r0, r5
 7654 4bf8 1A96     		str	r6, [sp, #104]
 7655 4bfa FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7656 4bfe 1A9B     		ldr	r3, [sp, #104]
 7657 4c00 EBB1     		cbz	r3, .L552
 7658 4c02 04EB8303 		add	r3, r4, r3, lsl #2
 7659 4c06 9FED5D6A 		vldr.32	s12, .L1969+16
 7660 4c0a 03F2CC41 		addw	r1, r3, #1228
 7661 4c0e 3A46     		mov	r2, r7
 7662 4c10 04F2CC43 		addw	r3, r4, #1228
 7663 4c14 F1EE006A 		vmov.f32	s13, #4.0e+0
 7664              	.L553:
 7665 4c18 F2EC017A 		vldmia.32	r2!, {s15}
 7666 4c1c F5EEC07A 		vcmpe.f32	s15, #0
 7667 4c20 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7668 4c24 89BF     		itett	hi
 7669 4c26 67EEA77A 		vmulhi.f32	s15, s15, s15
 7670 4c2a B7EE007A 		vmovls.f32	s14, #1.0e+0
 7671 4c2e 67EE867A 		vmulhi.f32	s15, s15, s12
 7672 4c32 86EEA77A 		vdivhi.f32	s14, s13, s15
 7673 4c36 A3EC017A 		vstmia.32	r3!, {s14}
 7674 4c3a 8B42     		cmp	r3, r1
 7675 4c3c ECD1     		bne	.L553
 7676              	.L552:
 7677 4c3e D7ED007A 		vldr.32	s15, [r7]
 7678 4c42 AB68     		ldr	r3, [r5, #8]
 7679 4c44 F5EEC07A 		vcmpe.f32	s15, #0
 7680 4c48 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7681 4c4c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 7682 4c4e CCBF     		ite	gt
 7683 4c50 0121     		movgt	r1, #1
 7684 4c52 0021     		movle	r1, #0
 7685 4c54 61F38612 		bfi	r2, r1, #6, #1
 7686 4c58 1A76     		strb	r2, [r3, #24]
 7687 4c5a 0126     		movs	r6, #1
 7688 4c5c FCF70BBA 		b	.L186
 7689              	.L797:
 7690 4c60 4521     		movs	r1, #69
 7691 4c62 2846     		mov	r0, r5
 7692 4c64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7693 4c68 0028     		cmp	r0, #0
 7694 4c6a 3FF4D2A8 		beq	.L984
 7695              	.L983:
ARM GAS  /tmp/ccM7BG9e.s 			page 136


 7696 4c6e D4F8A032 		ldr	r3, [r4, #672]
 7697 4c72 1A93     		str	r3, [sp, #104]
 7698 4c74 1AAA     		add	r2, sp, #104
 7699 4c76 5CA9     		add	r1, sp, #368
 7700 4c78 0123     		movs	r3, #1
 7701 4c7a 2846     		mov	r0, r5
 7702 4c7c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7703 4c80 1A9E     		ldr	r6, [sp, #104]
 7704 4c82 2EB3     		cbz	r6, .L806
 7705 4c84 9FED3E6A 		vldr.32	s12, .L1969+20
 7706 4c88 DFED3E6A 		vldr.32	s13, .L1969+24
 7707 4c8c 5CA8     		add	r0, sp, #368
 7708 4c8e 0021     		movs	r1, #0
 7709              	.L807:
 7710 4c90 B0EC017A 		vldmia.32	r0!, {s14}
 7711 4c94 D4EDBD7A 		vldr.32	s15, [r4, #756]
 7712 4c98 D4F89822 		ldr	r2, [r4, #664]
 7713 4c9c 2368     		ldr	r3, [r4]
 7714 4c9e 67EE277A 		vmul.f32	s15, s14, s15
 7715 4ca2 0A44     		add	r2, r2, r1
 7716 4ca4 67EE867A 		vmul.f32	s15, s15, s12
 7717 4ca8 03EB8203 		add	r3, r3, r2, lsl #2
 7718 4cac F4EE677A 		vcmp.f32	s15, s15
 7719 4cb0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7720 4cb4 01F10101 		add	r1, r1, #1
 7721 4cb8 06D6     		bvs	.L804
 7722 4cba F4EEE67A 		vcmpe.f32	s15, s13
 7723 4cbe F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7724 4cc2 D8BF     		it	le
 7725 4cc4 F0EE667A 		vmovle.f32	s15, s13
 7726              	.L804:
 7727 4cc8 8E42     		cmp	r6, r1
 7728 4cca C3ED767A 		vstr.32	s15, [r3, #472]
 7729 4cce DFD1     		bne	.L807
 7730              	.L806:
 7731 4cd0 0126     		movs	r6, #1
 7732 4cd2 FCF7D0B9 		b	.L186
 7733              	.L1899:
 7734 4cd6 0DF16809 		add	r9, sp, #104
 7735 4cda D4F8A032 		ldr	r3, [r4, #672]
 7736 4cde C9F80030 		str	r3, [r9]
 7737 4ce2 4A46     		mov	r2, r9
 7738 4ce4 0123     		movs	r3, #1
 7739 4ce6 5CA9     		add	r1, sp, #368
 7740 4ce8 2846     		mov	r0, r5
 7741 4cea FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7742 4cee D9F80030 		ldr	r3, [r9]
 7743 4cf2 83B1     		cbz	r3, .L938
 7744 4cf4 0DF5B87A 		add	r10, sp, #368
 7745 4cf8 0027     		movs	r7, #0
 7746              	.L939:
 7747 4cfa D4F89812 		ldr	r1, [r4, #664]
 7748 4cfe BAEC010A 		vldmia.32	r10!, {s0}
 7749 4d02 2068     		ldr	r0, [r4]
 7750 4d04 3944     		add	r1, r1, r7
 7751 4d06 3246     		mov	r2, r6
 7752 4d08 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfi
ARM GAS  /tmp/ccM7BG9e.s 			page 137


 7753 4d0c D9F80030 		ldr	r3, [r9]
 7754 4d10 0137     		adds	r7, r7, #1
 7755 4d12 BB42     		cmp	r3, r7
 7756 4d14 F1D8     		bhi	.L939
 7757              	.L938:
 7758 4d16 40F28A33 		movw	r3, #906
 7759 4d1a 9E42     		cmp	r6, r3
 7760 4d1c 7CF430AA 		bne	.L331
 7761 4d20 4921     		movs	r1, #73
 7762 4d22 2846     		mov	r0, r5
 7763 4d24 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7764 4d28 0028     		cmp	r0, #0
 7765 4d2a 3CF429AA 		beq	.L331
 7766              	.L937:
 7767 4d2e 2846     		mov	r0, r5
 7768 4d30 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7769 4d34 B5EEC00A 		vcmpe.f32	s0, #0
 7770 4d38 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7771 4d3c FCF620AA 		blt	.L331
 7772 4d40 DFED117A 		vldr.32	s15, .L1969+28
 7773 4d44 B4EEE70A 		vcmpe.f32	s0, s15
 7774 4d48 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7775 4d4c 3CF618AA 		bhi	.L331
 7776 4d50 80EE270A 		vdiv.f32	s0, s0, s15
 7777 4d54 2068     		ldr	r0, [r4]
 7778 4d56 FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 7779 4d5a 0126     		movs	r6, #1
 7780 4d5c FCF78BB9 		b	.L186
 7781              	.L1888:
 7782 4d60 2846     		mov	r0, r5
 7783 4d62 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7784 4d66 0246     		mov	r2, r0
 7785 4d68 FEF77DBD 		b	.L718
 7786              	.L1970:
 7787              		.align	2
 7788              	.L1969:
 7789 4d6c 00000000 		.word	reprap
 7790 4d70 00000000 		.word	0
 7791 4d74 F8030000 		.word	.LC68
 7792 4d78 00007F43 		.word	1132396544
 7793 4d7c DB0F4940 		.word	1078530011
 7794 4d80 8988883C 		.word	1015580809
 7795 4d84 CDCCCC3D 		.word	1036831949
 7796 4d88 0000C842 		.word	1120403456
 7797              	.L1887:
 7798 4d8c 2846     		mov	r0, r5
 7799 4d8e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7800 4d92 0646     		mov	r6, r0
 7801 4d94 FEF75EBD 		b	.L717
 7802              	.L1846:
 7803 4d98 2846     		mov	r0, r5
 7804 4d9a FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7805 4d9e 4EF66023 		movw	r3, #60000
 7806 4da2 03FB00F3 		mul	r3, r3, r0
 7807 4da6 C4F87836 		str	r3, [r4, #1656]
 7808 4daa 4821     		movs	r1, #72
 7809 4dac 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 138


 7810 4dae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7811 4db2 0646     		mov	r6, r0
 7812 4db4 0028     		cmp	r0, #0
 7813 4db6 3CF4E3A9 		beq	.L331
 7814              	.L830:
 7815 4dba 2846     		mov	r0, r5
 7816 4dbc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7817 4dc0 0728     		cmp	r0, #7
 7818 4dc2 8146     		mov	r9, r0
 7819 4dc4 3CF6DCA9 		bhi	.L331
 7820 4dc8 DFF8C0A3 		ldr	r10, .L1971+44
 7821 4dcc 00F11007 		add	r7, r0, #16
 7822 4dd0 DAF80C30 		ldr	r3, [r10, #12]
 7823 4dd4 BF00     		lsls	r7, r7, #2
 7824 4dd6 0022     		movs	r2, #0
 7825 4dd8 3B44     		add	r3, r3, r7
 7826 4dda 8DF86020 		strb	r2, [sp, #96]
 7827 4dde 5B68     		ldr	r3, [r3, #4]
 7828 4de0 1A69     		ldr	r2, [r3, #16]	@ float
 7829 4de2 1A92     		str	r2, [sp, #104]	@ float
 7830 4de4 D3F814C0 		ldr	ip, [r3, #20]	@ float
 7831 4de8 CDF870C1 		str	ip, [sp, #368]	@ float
 7832 4dec 18AB     		add	r3, sp, #96
 7833 4dee 5CAA     		add	r2, sp, #368
 7834 4df0 5021     		movs	r1, #80
 7835 4df2 2846     		mov	r0, r5
 7836 4df4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7837 4df8 18AB     		add	r3, sp, #96
 7838 4dfa 1AAA     		add	r2, sp, #104
 7839 4dfc 5421     		movs	r1, #84
 7840 4dfe 2846     		mov	r0, r5
 7841 4e00 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7842 4e04 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 7843 4e08 002B     		cmp	r3, #0
 7844 4e0a 01F0A380 		beq	.L832
 7845 4e0e DAF80C30 		ldr	r3, [r10, #12]
 7846 4e12 5C9A     		ldr	r2, [sp, #368]	@ float
 7847 4e14 1A99     		ldr	r1, [sp, #104]	@ float
 7848 4e16 1F44     		add	r7, r7, r3
 7849 4e18 7B68     		ldr	r3, [r7, #4]
 7850 4e1a 1961     		str	r1, [r3, #16]	@ float
 7851 4e1c 5A61     		str	r2, [r3, #20]	@ float
 7852              	.L833:
 7853 4e1e 0126     		movs	r6, #1
 7854 4e20 FCF729B9 		b	.L186
 7855              	.L1820:
 7856 4e24 2846     		mov	r0, r5
 7857 4e26 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 7858 4e2a 0328     		cmp	r0, #3
 7859 4e2c 7CF6FBAB 		bls	.L540
 7860 4e30 0246     		mov	r2, r0
 7861 4e32 CF49     		ldr	r1, .L1971+16
 7862 4e34 4046     		mov	r0, r8
 7863 4e36 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7864 4e3a 0226     		movs	r6, #2
 7865 4e3c FCF71BB9 		b	.L186
 7866              	.L1893:
ARM GAS  /tmp/ccM7BG9e.s 			page 139


 7867 4e40 2846     		mov	r0, r5
 7868 4e42 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7869 4e46 2368     		ldr	r3, [r4]
 7870 4e48 83ED680A 		vstr.32	s0, [r3, #416]
 7871 4e4c 2368     		ldr	r3, [r4]
 7872 4e4e 83ED690A 		vstr.32	s0, [r3, #420]
 7873 4e52 FEF791BD 		b	.L589
 7874              	.L719:
 7875 4e56 36F00201 		bics	r1, r6, #2
 7876 4e5a 05D1     		bne	.L721
 7877 4e5c 84F88466 		strb	r6, [r4, #1668]
 7878 4e60 1B68     		ldr	r3, [r3]
 7879 4e62 9D42     		cmp	r5, r3
 7880 4e64 7EF404AD 		bne	.L722
 7881              	.L721:
 7882 4e68 0123     		movs	r3, #1
 7883 4e6a FEF702BD 		b	.L720
 7884              	.L1845:
 7885 4e6e 2846     		mov	r0, r5
 7886 4e70 2668     		ldr	r6, [r4]
 7887 4e72 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7888 4e76 B4EE400A 		vcmp.f32	s0, s0
 7889 4e7a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7890 4e7e 08D6     		bvs	.L838
 7891 4e80 F7EE007A 		vmov.f32	s15, #1.0e+0
 7892 4e84 B4EEE70A 		vcmpe.f32	s0, s15
 7893 4e88 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7894 4e8c 58BF     		it	pl
 7895 4e8e B0EE670A 		vmovpl.f32	s0, s15
 7896              	.L838:
 7897 4e92 06F68426 		addw	r6, r6, #2692
 7898 4e96 86ED000A 		vstr.32	s0, [r6]
 7899 4e9a 0126     		movs	r6, #1
 7900 4e9c FCF7EBB8 		b	.L186
 7901              	.L1901:
 7902 4ea0 B449     		ldr	r1, .L1971+20
 7903 4ea2 4046     		mov	r0, r8
 7904 4ea4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 7905 4ea8 0226     		movs	r6, #2
 7906 4eaa FCF7E4B8 		b	.L186
 7907              	.L440:
 7908 4eae 4521     		movs	r1, #69
 7909 4eb0 2846     		mov	r0, r5
 7910 4eb2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7911 4eb6 0028     		cmp	r0, #0
 7912 4eb8 00F03283 		beq	.L453
 7913              	.L975:
 7914 4ebc 2946     		mov	r1, r5
 7915 4ebe 2046     		mov	r0, r4
 7916 4ec0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7917 4ec4 8246     		mov	r10, r0
 7918 4ec6 0028     		cmp	r0, #0
 7919 4ec8 3BF4C5A8 		beq	.L1123
 7920 4ecc D4F8A032 		ldr	r3, [r4, #672]
 7921 4ed0 1A93     		str	r3, [sp, #104]
 7922 4ed2 1AAA     		add	r2, sp, #104
 7923 4ed4 5CA9     		add	r1, sp, #368
ARM GAS  /tmp/ccM7BG9e.s 			page 140


 7924 4ed6 0123     		movs	r3, #1
 7925 4ed8 2846     		mov	r0, r5
 7926 4eda FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7927 4ede 1A9E     		ldr	r6, [sp, #104]
 7928 4ee0 002E     		cmp	r6, #0
 7929 4ee2 3FF4CDA8 		beq	.L448
 7930 4ee6 5CA8     		add	r0, sp, #368
 7931 4ee8 0021     		movs	r1, #0
 7932 4eea B7EE007A 		vmov.f32	s14, #1.0e+0
 7933              	.L452:
 7934 4eee F0EC017A 		vldmia.32	r0!, {s15}
 7935 4ef2 D4F89822 		ldr	r2, [r4, #664]
 7936 4ef6 2368     		ldr	r3, [r4]
 7937 4ef8 F4EE677A 		vcmp.f32	s15, s15
 7938 4efc 0A44     		add	r2, r2, r1
 7939 4efe F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7940 4f02 03EB8203 		add	r3, r3, r2, lsl #2
 7941 4f06 01F10101 		add	r1, r1, #1
 7942 4f0a 06D6     		bvs	.L449
 7943 4f0c F4EEC77A 		vcmpe.f32	s15, s14
 7944 4f10 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 7945 4f14 D8BF     		it	le
 7946 4f16 F0EE477A 		vmovle.f32	s15, s14
 7947              	.L449:
 7948 4f1a 8E42     		cmp	r6, r1
 7949 4f1c C3ED6A7A 		vstr.32	s15, [r3, #424]
 7950 4f20 E5D1     		bne	.L452
 7951 4f22 FFF7ADB8 		b	.L448
 7952              	.L869:
 7953 4f26 0126     		movs	r6, #1
 7954 4f28 FDF79EBD 		b	.L867
 7955              	.L422:
 7956 4f2c 5246     		mov	r2, r10
 7957 4f2e 9249     		ldr	r1, .L1971+24
 7958 4f30 4046     		mov	r0, r8
 7959 4f32 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7960 4f36 0226     		movs	r6, #2
 7961 4f38 FCF79DB8 		b	.L186
 7962              	.L423:
 7963 4f3c D9F80000 		ldr	r0, [r9]
 7964 4f40 FFF7FEFF 		bl	__aeabi_ui2d
 7965 4f44 86A3     		adr	r3, .L1971
 7966 4f46 D3E90023 		ldrd	r2, [r3]
 7967 4f4a FFF7FEFF 		bl	__aeabi_ddiv
 7968 4f4e CDE90401 		strd	r0, [sp, #16]
 7969 4f52 5CAB     		add	r3, sp, #368
 7970 4f54 D3E90001 		ldrd	r0, [r3]
 7971 4f58 FFF7FEFF 		bl	__aeabi_ul2d
 7972 4f5c 82A3     		adr	r3, .L1971+8
 7973 4f5e D3E90023 		ldrd	r2, [r3]
 7974 4f62 FFF7FEFF 		bl	__aeabi_ddiv
 7975 4f66 CDE90201 		strd	r0, [sp, #8]
 7976 4f6a DDE91A01 		ldrd	r0, [sp, #104]
 7977 4f6e FFF7FEFF 		bl	__aeabi_ul2d
 7978 4f72 7DA3     		adr	r3, .L1971+8
 7979 4f74 D3E90023 		ldrd	r2, [r3]
 7980 4f78 FFF7FEFF 		bl	__aeabi_ddiv
ARM GAS  /tmp/ccM7BG9e.s 			page 141


 7981 4f7c 5246     		mov	r2, r10
 7982 4f7e CDE90001 		strd	r0, [sp]
 7983 4f82 7E49     		ldr	r1, .L1971+28
 7984 4f84 4046     		mov	r0, r8
 7985 4f86 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 7986 4f8a 3A68     		ldr	r2, [r7]
 7987 4f8c B2F5806F 		cmp	r2, #1024
 7988 4f90 32BF     		itee	cc
 7989 4f92 7B49     		ldrcc	r1, .L1971+32
 7990 4f94 7B49     		ldrcs	r1, .L1971+36
 7991 4f96 920A     		lsrcs	r2, r2, #10
 7992 4f98 4046     		mov	r0, r8
 7993 4f9a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7994 4f9e 0126     		movs	r6, #1
 7995 4fa0 FCF769B8 		b	.L186
 7996              	.L467:
 7997 4fa4 04F59463 		add	r3, r4, #1184
 7998 4fa8 2046     		mov	r0, r4
 7999 4faa 1A68     		ldr	r2, [r3]	@ float
 8000 4fac 04F29C43 		addw	r3, r4, #1180
 8001 4fb0 1A60     		str	r2, [r3]	@ float
 8002 4fb2 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8003 4fb6 FCF75EB8 		b	.L186
 8004              	.L1783:
 8005 4fba F7EE007A 		vmov.f32	s15, #1.0e+0
 8006 4fbe 70EE277A 		vadd.f32	s15, s0, s15
 8007 4fc2 0DF1600B 		add	fp, sp, #96
 8008 4fc6 5A46     		mov	r2, fp
 8009 4fc8 16AB     		add	r3, sp, #88
 8010 4fca 5221     		movs	r1, #82
 8011 4fcc 2846     		mov	r0, r5
 8012 4fce 5CAE     		add	r6, sp, #368
 8013 4fd0 CBED007A 		vstr.32	s15, [fp]
 8014 4fd4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 8015 4fd8 0021     		movs	r1, #0
 8016 4fda 5120     		movs	r0, #81
 8017 4fdc 17AB     		add	r3, sp, #92
 8018 4fde 3170     		strb	r1, [r6]
 8019 4fe0 8DF85C10 		strb	r1, [sp, #92]
 8020 4fe4 CDE91A60 		strd	r6, r0, [sp, #104]
 8021 4fe8 1AAA     		add	r2, sp, #104
 8022 4fea 5021     		movs	r1, #80
 8023 4fec 2846     		mov	r0, r5
 8024 4fee FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 8025 4ff2 9DF85C30 		ldrb	r3, [sp, #92]	@ zero_extendqisi2
 8026 4ff6 002B     		cmp	r3, #0
 8027 4ff8 40F04C85 		bne	.L1913
 8028 4ffc D4F8B030 		ldr	r3, [r4, #176]
 8029 5000 002B     		cmp	r3, #0
 8030 5002 01F0D980 		beq	.L1914
 8031              	.L957:
 8032 5006 B0EE480A 		vmov.f32	s0, s16
 8033 500a DBED000A 		vldr.32	s1, [fp]
 8034 500e 2068     		ldr	r0, [r4]
 8035 5010 FFF7FEFF 		bl	_ZN8Platform14EnableAutoSaveEff
 8036 5014 0126     		movs	r6, #1
 8037 5016 FCF72EB8 		b	.L186
ARM GAS  /tmp/ccM7BG9e.s 			page 142


 8038              	.L403:
 8039 501a 5B49     		ldr	r1, .L1971+40
 8040 501c 4046     		mov	r0, r8
 8041 501e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8042 5022 0226     		movs	r6, #2
 8043 5024 FCF727B8 		b	.L186
 8044              	.L479:
 8045 5028 3146     		mov	r1, r6
 8046 502a 5848     		ldr	r0, .L1971+44
 8047 502c FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 8048 5030 0126     		movs	r6, #1
 8049 5032 FCF720B8 		b	.L186
 8050              	.L694:
 8051 5036 4521     		movs	r1, #69
 8052 5038 2846     		mov	r0, r5
 8053 503a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8054 503e 0126     		movs	r6, #1
 8055 5040 0028     		cmp	r0, #0
 8056 5042 3EF4C2AF 		beq	.L700
 8057              	.L699:
 8058 5046 2946     		mov	r1, r5
 8059 5048 2046     		mov	r0, r4
 8060 504a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8061 504e 8246     		mov	r10, r0
 8062 5050 0028     		cmp	r0, #0
 8063 5052 3BF400A8 		beq	.L1123
 8064 5056 0DF16809 		add	r9, sp, #104
 8065 505a D4F8A032 		ldr	r3, [r4, #672]
 8066 505e C9F80030 		str	r3, [r9]
 8067 5062 5CAF     		add	r7, sp, #368
 8068 5064 0123     		movs	r3, #1
 8069 5066 4A46     		mov	r2, r9
 8070 5068 3946     		mov	r1, r7
 8071 506a 2846     		mov	r0, r5
 8072 506c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8073 5070 D9F80030 		ldr	r3, [r9]
 8074 5074 002B     		cmp	r3, #0
 8075 5076 3BF4FEAF 		beq	.L186
 8076 507a 454A     		ldr	r2, .L1971+48
 8077 507c 454B     		ldr	r3, .L1971+52
 8078 507e 0D99     		ldr	r1, [sp, #52]
 8079 5080 DFF828B1 		ldr	fp, .L1971+76
 8080 5084 0029     		cmp	r1, #0
 8081 5086 08BF     		it	eq
 8082 5088 1A46     		moveq	r2, r3
 8083 508a 0E92     		str	r2, [sp, #56]
 8084 508c 4FF0000A 		mov	r10, #0
 8085              	.L705:
 8086 5090 D4F89812 		ldr	r1, [r4, #664]
 8087 5094 57F82A20 		ldr	r2, [r7, r10, lsl #2]
 8088 5098 0D9B     		ldr	r3, [sp, #52]
 8089 509a 5144     		add	r1, r1, r10
 8090 509c 2046     		mov	r0, r4
 8091 509e FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjjb
 8092 50a2 5246     		mov	r2, r10
 8093 50a4 5946     		mov	r1, fp
 8094 50a6 38B9     		cbnz	r0, .L704
ARM GAS  /tmp/ccM7BG9e.s 			page 143


 8095 50a8 0E98     		ldr	r0, [sp, #56]
 8096 50aa 57F82A30 		ldr	r3, [r7, r10, lsl #2]
 8097 50ae 0090     		str	r0, [sp]
 8098 50b0 4046     		mov	r0, r8
 8099 50b2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8100 50b6 0226     		movs	r6, #2
 8101              	.L704:
 8102 50b8 D9F80030 		ldr	r3, [r9]
 8103 50bc 0AF1010A 		add	r10, r10, #1
 8104 50c0 5345     		cmp	r3, r10
 8105 50c2 E5D8     		bhi	.L705
 8106 50c4 FBF7D7BF 		b	.L186
 8107              	.L1851:
 8108 50c8 2846     		mov	r0, r5
 8109 50ca D9F808A0 		ldr	r10, [r9, #8]
 8110 50ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8111 50d2 5046     		mov	r0, r10
 8112 50d4 80EE080A 		vdiv.f32	s0, s0, s16
 8113 50d8 3146     		mov	r1, r6
 8114 50da FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEjf
 8115 50de FDF7F4BA 		b	.L781
 8116              	.L674:
 8117 50e2 2A4F     		ldr	r7, .L1971+44
 8118 50e4 4FFA86F9 		sxtb	r9, r6
 8119 50e8 F868     		ldr	r0, [r7, #12]
 8120 50ea 4946     		mov	r1, r9
 8121 50ec FFF7FEFF 		bl	_ZNK4Heat11IsBedHeaterEa
 8122 50f0 0028     		cmp	r0, #0
 8123 50f2 00F0F485 		beq	.L1915
 8124 50f6 9FED288A 		vldr.32	s16, .L1971+56
 8125 50fa FCF7F6BD 		b	.L675
 8126              	.L678:
 8127 50fe 234F     		ldr	r7, .L1971+44
 8128 5100 3146     		mov	r1, r6
 8129 5102 F868     		ldr	r0, [r7, #12]
 8130 5104 FFF7FEFF 		bl	_ZN4Heat11CheckHeaterEj
 8131 5108 0028     		cmp	r0, #0
 8132 510a 00F00D86 		beq	.L1916
 8133 510e DFED237A 		vldr.32	s15, .L1971+60
 8134 5112 F4EEE78A 		vcmpe.f32	s17, s15
 8135 5116 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8136 511a 07D4     		bmi	.L680
 8137 511c F7EE007A 		vmov.f32	s15, #1.0e+0
 8138 5120 F4EEE78A 		vcmpe.f32	s17, s15
 8139 5124 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8140 5128 41F34D80 		ble	.L1775
 8141              	.L680:
 8142 512c 1C49     		ldr	r1, .L1971+64
 8143 512e 4046     		mov	r0, r8
 8144 5130 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8145 5134 0126     		movs	r6, #1
 8146 5136 FBF79EBF 		b	.L186
 8147              	.L963:
 8148 513a 0023     		movs	r3, #0
 8149 513c 0093     		str	r3, [sp]
 8150 513e 194A     		ldr	r2, .L1971+68
 8151 5140 0123     		movs	r3, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 144


 8152 5142 2946     		mov	r1, r5
 8153 5144 2046     		mov	r0, r4
 8154 5146 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 8155 514a 0126     		movs	r6, #1
 8156 514c FBF793BF 		b	.L186
 8157              	.L923:
 8158 5150 1549     		ldr	r1, .L1971+72
 8159 5152 4046     		mov	r0, r8
 8160 5154 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8161 5158 0226     		movs	r6, #2
 8162 515a FBF78CBF 		b	.L186
 8163              	.L1972:
 8164 515e 00BF     		.align	3
 8165              	.L1971:
 8166 5160 00000000 		.word	0
 8167 5164 80842E41 		.word	1093567616
 8168 5168 00000000 		.word	0
 8169 516c 65CDCD41 		.word	1104006501
 8170 5170 40080000 		.word	.LC106
 8171 5174 50030000 		.word	.LC63
 8172 5178 B0050000 		.word	.LC81
 8173 517c D0050000 		.word	.LC82
 8174 5180 30060000 		.word	.LC83
 8175 5184 3C060000 		.word	.LC84
 8176 5188 94040000 		.word	.LC73
 8177 518c 00000000 		.word	reprap
 8178 5190 C40C0000 		.word	.LC137
 8179 5194 A0000000 		.word	.LC25
 8180 5198 00009642 		.word	1117126656
 8181 519c CDCCCC3D 		.word	1036831949
 8182 51a0 540B0000 		.word	.LC129
 8183 51a4 44150000 		.word	.LC210
 8184 51a8 50140000 		.word	.LC201
 8185 51ac 080D0000 		.word	.LC139
 8186              	.L1797:
 8187 51b0 0029     		cmp	r1, #0
 8188 51b2 7BF4AAAF 		bne	.L474
 8189 51b6 2946     		mov	r1, r5
 8190 51b8 2046     		mov	r0, r4
 8191 51ba FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8192 51be 0028     		cmp	r0, #0
 8193 51c0 3AF447AF 		beq	.L742
 8194 51c4 AB68     		ldr	r3, [r5, #8]
 8195 51c6 D7F89C20 		ldr	r2, [r7, #156]
 8196 51ca DA82     		strh	r2, [r3, #22]	@ movhi
 8197 51cc 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 8198 51d0 AA68     		ldr	r2, [r5, #8]
 8199 51d2 002B     		cmp	r3, #0
 8200 51d4 18BF     		it	ne
 8201 51d6 0723     		movne	r3, #7
 8202 51d8 5375     		strb	r3, [r2, #21]
 8203 51da AB68     		ldr	r3, [r5, #8]
 8204 51dc 0A22     		movs	r2, #10
 8205 51de 1A75     		strb	r2, [r3, #20]
 8206 51e0 0126     		movs	r6, #1
 8207 51e2 FBF748BF 		b	.L186
 8208              	.L976:
ARM GAS  /tmp/ccM7BG9e.s 			page 145


 8209 51e6 4821     		movs	r1, #72
 8210 51e8 2846     		mov	r0, r5
 8211 51ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8212 51ee 0346     		mov	r3, r0
 8213 51f0 0028     		cmp	r0, #0
 8214 51f2 40F0C083 		bne	.L987
 8215 51f6 0746     		mov	r7, r0
 8216 51f8 0246     		mov	r2, r0
 8217              	.L527:
 8218 51fa 4A44     		add	r2, r2, r9
 8219 51fc B94E     		ldr	r6, .L1973
 8220 51fe 92F9D2A0 		ldrsb	r10, [r2, #210]
 8221 5202 FEF7B5B9 		b	.L528
 8222              	.L1796:
 8223 5206 B0EE480A 		vmov.f32	s0, s16
 8224 520a 0122     		movs	r2, #1
 8225 520c 3946     		mov	r1, r7
 8226 520e 2046     		mov	r0, r4
 8227 5210 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolfb
 8228 5214 FBF774BF 		b	.L473
 8229              	.L1815:
 8230 5218 5321     		movs	r1, #83
 8231 521a 2846     		mov	r0, r5
 8232 521c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8233 5220 0028     		cmp	r0, #0
 8234 5222 00F0AF82 		beq	.L630
 8235 5226 2846     		mov	r0, r5
 8236 5228 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8237 522c DFEDAE7A 		vldr.32	s15, .L1973+4
 8238 5230 80EE270A 		vdiv.f32	s0, s0, s15
 8239 5234 B5EEC00A 		vcmpe.f32	s0, #0
 8240 5238 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8241 523c FCF647A9 		blt	.L628
 8242 5240 D4F85021 		ldr	r2, [r4, #336]
 8243 5244 5C9B     		ldr	r3, [sp, #368]
 8244 5246 002A     		cmp	r2, #0
 8245 5248 40F0E787 		bne	.L1767
 8246 524c 03F59572 		add	r2, r3, #298
 8247              	.L632:
 8248 5250 04EB8202 		add	r2, r4, r2, lsl #2
 8249 5254 82ED000A 		vstr.32	s0, [r2]
 8250 5258 FCF739B9 		b	.L628
 8251              	.L891:
 8252 525c 4421     		movs	r1, #68
 8253 525e 2846     		mov	r0, r5
 8254 5260 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8255 5264 0028     		cmp	r0, #0
 8256 5266 7EF461A8 		bne	.L894
 8257 526a D6F8580A 		ldr	r0, [r6, #2648]
 8258              	.L893:
 8259 526e 0368     		ldr	r3, [r0]
 8260 5270 5CAF     		add	r7, sp, #368
 8261 5272 0022     		movs	r2, #0
 8262 5274 0097     		str	r7, [sp]
 8263 5276 5E68     		ldr	r6, [r3, #4]
 8264 5278 3A70     		strb	r2, [r7]
 8265 527a 4346     		mov	r3, r8
ARM GAS  /tmp/ccM7BG9e.s 			page 146


 8266 527c 2A46     		mov	r2, r5
 8267 527e 40F29921 		movw	r1, #665
 8268 5282 B047     		blx	r6
 8269 5284 0028     		cmp	r0, #0
 8270 5286 3EF49AA8 		beq	.L971
 8271 528a 04F1DC06 		add	r6, r4, #220
 8272 528e FEF775B8 		b	.L972
 8273              	.L381:
 8274 5292 2946     		mov	r1, r5
 8275 5294 2046     		mov	r0, r4
 8276 5296 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8277 529a 0028     		cmp	r0, #0
 8278 529c 7EF4FDAE 		bne	.L384
 8279 52a0 FAF7D7BE 		b	.L742
 8280              	.L1900:
 8281 52a4 4921     		movs	r1, #73
 8282 52a6 2846     		mov	r0, r5
 8283 52a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8284 52ac 0028     		cmp	r0, #0
 8285 52ae 7FF43EAD 		bne	.L937
 8286 52b2 BBF1000F 		cmp	fp, #0
 8287 52b6 7BF463AF 		bne	.L331
 8288              	.L986:
 8289 52ba 8C49     		ldr	r1, .L1973+8
 8290 52bc FEF722BE 		b	.L945
 8291              	.L1883:
 8292 52c0 159A     		ldr	r2, [sp, #84]
 8293 52c2 8B49     		ldr	r1, .L1973+12
 8294 52c4 4046     		mov	r0, r8
 8295 52c6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8296 52ca 022E     		cmp	r6, #2
 8297 52cc 00F0C485 		beq	.L1917
 8298 52d0 8849     		ldr	r1, .L1973+16
 8299 52d2 4046     		mov	r0, r8
 8300 52d4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 8301 52d8 0126     		movs	r6, #1
 8302 52da FBF7CCBE 		b	.L186
 8303              	.L1903:
 8304 52de 0DF16809 		add	r9, sp, #104
 8305 52e2 D4F8A032 		ldr	r3, [r4, #672]
 8306 52e6 C9F80030 		str	r3, [r9]
 8307 52ea 5CAF     		add	r7, sp, #368
 8308 52ec 0023     		movs	r3, #0
 8309 52ee 4A46     		mov	r2, r9
 8310 52f0 3946     		mov	r1, r7
 8311 52f2 2846     		mov	r0, r5
 8312 52f4 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 8313 52f8 D9F80030 		ldr	r3, [r9]
 8314 52fc 002B     		cmp	r3, #0
 8315 52fe 01F04B81 		beq	.L995
 8316 5302 3A68     		ldr	r2, [r7]
 8317 5304 D4F8A032 		ldr	r3, [r4, #672]
 8318 5308 9342     		cmp	r3, r2
 8319 530a 40F2E582 		bls	.L349
 8320 530e 4FF0000A 		mov	r10, #0
 8321 5312 06E0     		b	.L350
 8322              	.L352:
ARM GAS  /tmp/ccM7BG9e.s 			page 147


 8323 5314 57F82A20 		ldr	r2, [r7, r10, lsl #2]
 8324 5318 D4F8A032 		ldr	r3, [r4, #672]
 8325 531c 9A42     		cmp	r2, r3
 8326 531e 80F0DB82 		bcs	.L349
 8327              	.L350:
 8328 5322 D4F89812 		ldr	r1, [r4, #664]
 8329 5326 2068     		ldr	r0, [r4]
 8330 5328 1144     		add	r1, r1, r2
 8331 532a FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 8332 532e D9F80030 		ldr	r3, [r9]
 8333 5332 0AF1010A 		add	r10, r10, #1
 8334 5336 5345     		cmp	r3, r10
 8335 5338 ECD8     		bhi	.L352
 8336 533a B246     		mov	r10, r6
 8337 533c FEF7E6BE 		b	.L347
 8338              	.L1798:
 8339 5340 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 8340 5344 FBF7EEBE 		b	.L477
 8341              	.L1791:
 8342 5348 DFED6B7A 		vldr.32	s15, .L1973+20
 8343 534c 20EE270A 		vmul.f32	s0, s0, s15
 8344 5350 FFF703BB 		b	.L600
 8345              	.L1792:
 8346 5354 DFED687A 		vldr.32	s15, .L1973+20
 8347 5358 20EE270A 		vmul.f32	s0, s0, s15
 8348 535c FFF778B9 		b	.L604
 8349              	.L358:
 8350 5360 3846     		mov	r0, r7
 8351 5362 6649     		ldr	r1, .L1973+24
 8352 5364 C7E90093 		strd	r9, r3, [r7]
 8353 5368 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8354 536c FBF7ABBF 		b	.L359
 8355              	.L1052:
 8356 5370 40F60423 		movw	r3, #2564
 8357 5374 FCF71DBA 		b	.L729
 8358              	.L336:
 8359 5378 2846     		mov	r0, r5
 8360 537a 2768     		ldr	r7, [r4]
 8361 537c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8362 5380 04F26C63 		addw	r3, r4, #1644
 8363 5384 D3ED007A 		vldr.32	s15, [r3]
 8364 5388 3846     		mov	r0, r7
 8365 538a 80EE270A 		vdiv.f32	s0, s0, s15
 8366 538e FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 8367 5392 FBF770BE 		b	.L186
 8368              	.L340:
 8369 5396 5A49     		ldr	r1, .L1973+28
 8370 5398 4046     		mov	r0, r8
 8371 539a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8372 539e 0226     		movs	r6, #2
 8373 53a0 FBF769BE 		b	.L186
 8374              	.L1834:
 8375 53a4 2846     		mov	r0, r5
 8376 53a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8377 53aa F0EE408A 		vmov.f32	s17, s0
 8378 53ae FCF7AABC 		b	.L677
 8379              	.L659:
ARM GAS  /tmp/ccM7BG9e.s 			page 148


 8380 53b2 179B     		ldr	r3, [sp, #92]
 8381 53b4 023B     		subs	r3, r3, #2
 8382 53b6 012B     		cmp	r3, #1
 8383 53b8 40F2DD86 		bls	.L1918
 8384              	.L663:
 8385 53bc 2946     		mov	r1, r5
 8386 53be 2046     		mov	r0, r4
 8387 53c0 FFF7FEFF 		bl	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 8388 53c4 2668     		ldr	r6, [r4]
 8389 53c6 179B     		ldr	r3, [sp, #92]
 8390 53c8 9BED000A 		vldr.32	s0, [fp]
 8391 53cc 0093     		str	r3, [sp]
 8392 53ce 0D9B     		ldr	r3, [sp, #52]
 8393 53d0 0193     		str	r3, [sp, #4]
 8394 53d2 0146     		mov	r1, r0
 8395 53d4 4B46     		mov	r3, r9
 8396 53d6 3A46     		mov	r2, r7
 8397 53d8 3046     		mov	r0, r6
 8398 53da FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8399 53de FDF7FDBD 		b	.L652
 8400              	.L1844:
 8401 53e2 3A46     		mov	r2, r7
 8402 53e4 4749     		ldr	r1, .L1973+32
 8403 53e6 4046     		mov	r0, r8
 8404 53e8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8405 53ec 0126     		movs	r6, #1
 8406 53ee FBF742BE 		b	.L186
 8407              	.L750:
 8408 53f2 454B     		ldr	r3, .L1973+36
 8409 53f4 3146     		mov	r1, r6
 8410 53f6 5868     		ldr	r0, [r3, #4]
 8411 53f8 FFF7FEFF 		bl	_ZNK7Network13GetMacAddressEj
 8412 53fc 4679     		ldrb	r6, [r0, #5]	@ zero_extendqisi2
 8413 53fe 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 8414 5400 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 8415 5402 0396     		str	r6, [sp, #12]
 8416 5404 0679     		ldrb	r6, [r0, #4]	@ zero_extendqisi2
 8417 5406 0296     		str	r6, [sp, #8]
 8418 5408 C678     		ldrb	r6, [r0, #3]	@ zero_extendqisi2
 8419 540a 0196     		str	r6, [sp, #4]
 8420 540c 8078     		ldrb	r0, [r0, #2]	@ zero_extendqisi2
 8421 540e 0090     		str	r0, [sp]
 8422 5410 3E49     		ldr	r1, .L1973+40
 8423 5412 4046     		mov	r0, r8
 8424 5414 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8425 5418 0126     		movs	r6, #1
 8426 541a FBF72CBE 		b	.L186
 8427              	.L768:
 8428 541e 2068     		ldr	r0, [r4]
 8429 5420 3B49     		ldr	r1, .L1973+44
 8430 5422 90F8A060 		ldrb	r6, [r0, #160]	@ zero_extendqisi2
 8431 5426 90F89E30 		ldrb	r3, [r0, #158]	@ zero_extendqisi2
 8432 542a 90F89D20 		ldrb	r2, [r0, #157]	@ zero_extendqisi2
 8433 542e 0196     		str	r6, [sp, #4]
 8434 5430 90F89F00 		ldrb	r0, [r0, #159]	@ zero_extendqisi2
 8435 5434 0090     		str	r0, [sp]
 8436 5436 4046     		mov	r0, r8
ARM GAS  /tmp/ccM7BG9e.s 			page 149


 8437 5438 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8438 543c 0126     		movs	r6, #1
 8439 543e FBF71ABE 		b	.L186
 8440              	.L1905:
 8441 5442 D9F80030 		ldr	r3, [r9]
 8442 5446 4246     		mov	r2, r8
 8443 5448 2946     		mov	r1, r5
 8444 544a 2046     		mov	r0, r4
 8445 544c FFF7FEFF 		bl	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 8446 5450 0646     		mov	r6, r0
 8447 5452 FBF710BE 		b	.L186
 8448              	.L765:
 8449 5456 2068     		ldr	r0, [r4]
 8450 5458 2E49     		ldr	r1, .L1973+48
 8451 545a 90F89C60 		ldrb	r6, [r0, #156]	@ zero_extendqisi2
 8452 545e 90F89A30 		ldrb	r3, [r0, #154]	@ zero_extendqisi2
 8453 5462 90F89920 		ldrb	r2, [r0, #153]	@ zero_extendqisi2
 8454 5466 0196     		str	r6, [sp, #4]
 8455 5468 90F89B00 		ldrb	r0, [r0, #155]	@ zero_extendqisi2
 8456 546c 0090     		str	r0, [sp]
 8457 546e 4046     		mov	r0, r8
 8458 5470 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8459 5474 0126     		movs	r6, #1
 8460 5476 FBF7FEBD 		b	.L186
 8461              	.L791:
 8462 547a 0246     		mov	r2, r0
 8463 547c 2649     		ldr	r1, .L1973+52
 8464 547e 4046     		mov	r0, r8
 8465 5480 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8466 5484 0226     		movs	r6, #2
 8467 5486 FCF762BD 		b	.L792
 8468              	.L757:
 8469 548a 5021     		movs	r1, #80
 8470 548c 2846     		mov	r0, r5
 8471 548e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8472 5492 0028     		cmp	r0, #0
 8473 5494 00F02C83 		beq	.L762
 8474 5498 0DF16809 		add	r9, sp, #104
 8475 549c 4946     		mov	r1, r9
 8476 549e 2846     		mov	r0, r5
 8477 54a0 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressEPh
 8478 54a4 0028     		cmp	r0, #0
 8479 54a6 00F07E85 		beq	.L763
 8480 54aa 4946     		mov	r1, r9
 8481 54ac 2068     		ldr	r0, [r4]
 8482 54ae FFF7FEFF 		bl	_ZN8Platform12SetIPAddressEPh
 8483 54b2 5321     		movs	r1, #83
 8484 54b4 2846     		mov	r0, r5
 8485 54b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8486 54ba 0028     		cmp	r0, #0
 8487 54bc 40F02183 		bne	.L764
 8488 54c0 0126     		movs	r6, #1
 8489 54c2 FBF7D8BD 		b	.L186
 8490              	.L1873:
 8491 54c6 04F59E63 		add	r3, r4, #1264
 8492 54ca 0126     		movs	r6, #1
 8493 54cc 1868     		ldr	r0, [r3]	@ float
ARM GAS  /tmp/ccM7BG9e.s 			page 150


 8494 54ce FFF7FEFF 		bl	__aeabi_f2d
 8495 54d2 0246     		mov	r2, r0
 8496 54d4 0B46     		mov	r3, r1
 8497 54d6 4046     		mov	r0, r8
 8498 54d8 1049     		ldr	r1, .L1973+56
 8499 54da FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8500 54de FBF7CABD 		b	.L186
 8501              	.L1974:
 8502 54e2 00BF     		.align	2
 8503              	.L1973:
 8504 54e4 18000000 		.word	.LC13
 8505 54e8 0000C842 		.word	1120403456
 8506 54ec 9C010000 		.word	.LC47
 8507 54f0 34050000 		.word	.LC77
 8508 54f4 94050000 		.word	.LC79
 8509 54f8 8988883C 		.word	1015580809
 8510 54fc 9C020000 		.word	.LC55
 8511 5500 38020000 		.word	.LC52
 8512 5504 1C120000 		.word	.LC182
 8513 5508 00000000 		.word	reprap
 8514 550c 880E0000 		.word	.LC156
 8515 5510 F80E0000 		.word	.LC161
 8516 5514 E00E0000 		.word	.LC160
 8517 5518 C0070000 		.word	.LC103
 8518 551c 8C0A0000 		.word	.LC124
 8519              	.L453:
 8520 5520 D249     		ldr	r1, .L1975
 8521 5522 4046     		mov	r0, r8
 8522 5524 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8523 5528 D4F89832 		ldr	r3, [r4, #664]
 8524 552c CBB1     		cbz	r3, .L456
 8525 552e DFF88893 		ldr	r9, .L1975+76
 8526 5532 04F26347 		addw	r7, r4, #1123
 8527 5536 0026     		movs	r6, #0
 8528              	.L457:
 8529 5538 2368     		ldr	r3, [r4]
 8530 553a 17F801AF 		ldrb	r10, [r7, #1]!	@ zero_extendqisi2
 8531 553e 03EB8603 		add	r3, r3, r6, lsl #2
 8532 5542 0136     		adds	r6, r6, #1
 8533 5544 D3F8A801 		ldr	r0, [r3, #424]	@ float
 8534 5548 FFF7FEFF 		bl	__aeabi_f2d
 8535 554c 5246     		mov	r2, r10
 8536 554e CDE90001 		strd	r0, [sp]
 8537 5552 4946     		mov	r1, r9
 8538 5554 4046     		mov	r0, r8
 8539 5556 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8540 555a D4F89832 		ldr	r3, [r4, #664]
 8541 555e B342     		cmp	r3, r6
 8542 5560 EAD8     		bhi	.L457
 8543              	.L456:
 8544 5562 C349     		ldr	r1, .L1975+4
 8545 5564 4046     		mov	r0, r8
 8546 5566 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8547 556a D4F8A032 		ldr	r3, [r4, #672]
 8548 556e 002B     		cmp	r3, #0
 8549 5570 3BF406AE 		beq	.L331
 8550 5574 BF4E     		ldr	r6, .L1975+8
ARM GAS  /tmp/ccM7BG9e.s 			page 151


 8551 5576 0027     		movs	r7, #0
 8552 5578 4FF02009 		mov	r9, #32
 8553              	.L455:
 8554 557c D4F89812 		ldr	r1, [r4, #664]
 8555 5580 2368     		ldr	r3, [r4]
 8556 5582 3944     		add	r1, r1, r7
 8557 5584 03EB8103 		add	r3, r3, r1, lsl #2
 8558 5588 0137     		adds	r7, r7, #1
 8559 558a D3F8A801 		ldr	r0, [r3, #424]	@ float
 8560 558e FFF7FEFF 		bl	__aeabi_f2d
 8561 5592 4A46     		mov	r2, r9
 8562 5594 CDE90001 		strd	r0, [sp]
 8563 5598 3146     		mov	r1, r6
 8564 559a 4046     		mov	r0, r8
 8565 559c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 8566 55a0 D4F8A032 		ldr	r3, [r4, #672]
 8567 55a4 BB42     		cmp	r3, r7
 8568 55a6 4FF03A09 		mov	r9, #58
 8569 55aa E7D8     		bhi	.L455
 8570 55ac FBF7E8BD 		b	.L331
 8571              	.L1884:
 8572 55b0 5CAF     		add	r7, sp, #368
 8573 55b2 7923     		movs	r3, #121
 8574 55b4 1AA9     		add	r1, sp, #104
 8575 55b6 2846     		mov	r0, r5
 8576 55b8 8DF87061 		strb	r6, [sp, #368]
 8577 55bc CDE91A73 		strd	r7, r3, [sp, #104]
 8578 55c0 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringERK9StringRef
 8579 55c4 0028     		cmp	r0, #0
 8580 55c6 00F0B683 		beq	.L416
 8581 55ca 3946     		mov	r1, r7
 8582 55cc 2046     		mov	r0, r4
 8583 55ce FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
 8584 55d2 0028     		cmp	r0, #0
 8585 55d4 7BF44FAD 		bne	.L186
 8586 55d8 3A46     		mov	r2, r7
 8587 55da A749     		ldr	r1, .L1975+12
 8588 55dc 4046     		mov	r0, r8
 8589 55de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8590 55e2 0226     		movs	r6, #2
 8591 55e4 FBF747BD 		b	.L186
 8592              	.L633:
 8593 55e8 B3B2     		uxth	r3, r6
 8594 55ea A44A     		ldr	r2, .L1975+16
 8595 55ec 2068     		ldr	r0, [r4]
 8596 55ee 40F2B511 		movw	r1, #437
 8597 55f2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8598 55f6 FDF70CBC 		b	.L637
 8599              	.L1896:
 8600 55fa 0346     		mov	r3, r0
 8601 55fc 4246     		mov	r2, r8
 8602 55fe 2946     		mov	r1, r5
 8603 5600 2068     		ldr	r0, [r4]
 8604 5602 FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 8605 5606 0028     		cmp	r0, #0
 8606 5608 3BF4BAAD 		beq	.L331
 8607 560c FDF78DBF 		b	.L533
ARM GAS  /tmp/ccM7BG9e.s 			page 152


 8608              	.L958:
 8609 5610 9B49     		ldr	r1, .L1975+20
 8610 5612 4046     		mov	r0, r8
 8611 5614 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8612 5618 FEF72ABF 		b	.L960
 8613              	.L889:
 8614 561c 5CAB     		add	r3, sp, #368
 8615 561e 18AA     		add	r2, sp, #96
 8616 5620 2068     		ldr	r0, [r4]
 8617 5622 0093     		str	r3, [sp]
 8618 5624 3946     		mov	r1, r7
 8619 5626 1AAB     		add	r3, sp, #104
 8620 5628 FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 8621 562c 5C98     		ldr	r0, [sp, #368]	@ float
 8622 562e FFF7FEFF 		bl	__aeabi_f2d
 8623 5632 CDE90401 		strd	r0, [sp, #16]
 8624 5636 1A98     		ldr	r0, [sp, #104]	@ float
 8625 5638 FFF7FEFF 		bl	__aeabi_f2d
 8626 563c CDE90201 		strd	r0, [sp, #8]
 8627 5640 1898     		ldr	r0, [sp, #96]	@ float
 8628 5642 FFF7FEFF 		bl	__aeabi_f2d
 8629 5646 3A46     		mov	r2, r7
 8630 5648 CDE90001 		strd	r0, [sp]
 8631 564c 8D49     		ldr	r1, .L1975+24
 8632 564e 4046     		mov	r0, r8
 8633 5650 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8634 5654 FDF701BE 		b	.L890
 8635              	.L1876:
 8636 5658 2846     		mov	r0, r5
 8637 565a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8638 565e 0828     		cmp	r0, #8
 8639 5660 0646     		mov	r6, r0
 8640 5662 07D8     		bhi	.L912
 8641 5664 C1B2     		uxtb	r1, r0
 8642 5666 3846     		mov	r0, r7
 8643 5668 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 8644 566c 8146     		mov	r9, r0
 8645 566e 0028     		cmp	r0, #0
 8646 5670 7DF46CAD 		bne	.L910
 8647              	.L912:
 8648 5674 3246     		mov	r2, r6
 8649 5676 8449     		ldr	r1, .L1975+28
 8650 5678 4046     		mov	r0, r8
 8651 567a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8652 567e 0226     		movs	r6, #2
 8653 5680 FBF7F9BC 		b	.L186
 8654              	.L1091:
 8655 5684 9B46     		mov	fp, r3
 8656 5686 FEF722BC 		b	.L932
 8657              	.L1904:
 8658 568a 0126     		movs	r6, #1
 8659              	.L351:
 8660 568c 2846     		mov	r0, r5
 8661 568e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8662 5692 B5EEC00A 		vcmpe.f32	s0, #0
 8663 5696 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8664 569a 00F16E83 		bmi	.L1919
ARM GAS  /tmp/ccM7BG9e.s 			page 153


 8665 569e 7B4B     		ldr	r3, .L1975+32
 8666 56a0 9868     		ldr	r0, [r3, #8]
 8667 56a2 FFF7FEFF 		bl	_ZN4Move14SetIdleTimeoutEf
 8668 56a6 FBF7E6BC 		b	.L186
 8669              	.L1092:
 8670 56aa 7949     		ldr	r1, .L1975+36
 8671 56ac FEF72ABC 		b	.L945
 8672              	.L1795:
 8673 56b0 7849     		ldr	r1, .L1975+40
 8674 56b2 4046     		mov	r0, r8
 8675 56b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8676 56b8 0226     		movs	r6, #2
 8677 56ba FBF7DCBC 		b	.L186
 8678              	.L1076:
 8679 56be 764A     		ldr	r2, .L1975+44
 8680 56c0 FEF766BA 		b	.L860
 8681              	.L913:
 8682 56c4 0D9B     		ldr	r3, [sp, #52]
 8683 56c6 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 8684 56c8 002B     		cmp	r3, #0
 8685 56ca 0CBF     		ite	eq
 8686 56cc 0126     		moveq	r6, #1
 8687 56ce 0226     		movne	r6, #2
 8688 56d0 FDF759BD 		b	.L973
 8689              	.L1864:
 8690 56d4 2846     		mov	r0, r5
 8691 56d6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8692 56da 0128     		cmp	r0, #1
 8693 56dc 0146     		mov	r1, r0
 8694 56de 00F00684 		beq	.L903
 8695 56e2 0228     		cmp	r0, #2
 8696 56e4 00F00384 		beq	.L903
 8697 56e8 0028     		cmp	r0, #0
 8698 56ea 00F0CA85 		beq	.L1920
 8699 56ee 0246     		mov	r2, r0
 8700 56f0 6A49     		ldr	r1, .L1975+48
 8701 56f2 4046     		mov	r0, r8
 8702 56f4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8703 56f8 0226     		movs	r6, #2
 8704 56fa FBF7BCBC 		b	.L186
 8705              	.L1811:
 8706 56fe 2846     		mov	r0, r5
 8707 5700 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8708 5704 0146     		mov	r1, r0
 8709 5706 FBF741BE 		b	.L378
 8710              	.L1806:
 8711 570a 2846     		mov	r0, r5
 8712 570c FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8713 5710 0646     		mov	r6, r0
 8714 5712 FBF7C4BD 		b	.L357
 8715              	.L1805:
 8716 5716 2846     		mov	r0, r5
 8717 5718 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8718 571c 8046     		mov	r8, r0
 8719 571e FBF7B6BD 		b	.L356
 8720              	.L1794:
 8721 5722 5F49     		ldr	r1, .L1975+52
ARM GAS  /tmp/ccM7BG9e.s 			page 154


 8722 5724 4046     		mov	r0, r8
 8723 5726 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8724 572a 0226     		movs	r6, #2
 8725 572c FBF7A3BC 		b	.L186
 8726              	.L1812:
 8727 5730 2846     		mov	r0, r5
 8728 5732 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8729 5736 0146     		mov	r1, r0
 8730 5738 FBF73FBE 		b	.L377
 8731              	.L1886:
 8732 573c 5CAF     		add	r7, sp, #368
 8733 573e 0022     		movs	r2, #0
 8734 5740 0923     		movs	r3, #9
 8735 5742 1AA9     		add	r1, sp, #104
 8736 5744 2846     		mov	r0, r5
 8737 5746 8DF87021 		strb	r2, [sp, #368]
 8738 574a CDE91A73 		strd	r7, r3, [sp, #104]
 8739 574e FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 8740 5752 3846     		mov	r0, r7
 8741 5754 5349     		ldr	r1, .L1975+56
 8742 5756 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8743 575a 0028     		cmp	r0, #0
 8744 575c 3EF46BA8 		beq	.L964
 8745 5760 1021     		movs	r1, #16
 8746 5762 FEF769B8 		b	.L965
 8747              	.L1855:
 8748 5766 2846     		mov	r0, r5
 8749 5768 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8750 576c 0646     		mov	r6, r0
 8751 576e FDF755B8 		b	.L749
 8752              	.L1862:
 8753 5772 2846     		mov	r0, r5
 8754 5774 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8755 5778 0028     		cmp	r0, #0
 8756 577a D4BF     		ite	le
 8757 577c 0020     		movle	r0, #0
 8758 577e 0120     		movgt	r0, #1
 8759 5780 FDF798BA 		b	.L931
 8760              	.L630:
 8761 5784 5C9E     		ldr	r6, [sp, #368]
 8762 5786 DFED487A 		vldr.32	s15, .L1975+60
 8763 578a 06F59573 		add	r3, r6, #298
 8764 578e 04EB8303 		add	r3, r4, r3, lsl #2
 8765 5792 93ED007A 		vldr.32	s14, [r3]
 8766 5796 67EE277A 		vmul.f32	s15, s14, s15
 8767 579a 17EE900A 		vmov	r0, s15
 8768 579e FFF7FEFF 		bl	__aeabi_f2d
 8769 57a2 3246     		mov	r2, r6
 8770 57a4 CDE90001 		strd	r0, [sp]
 8771 57a8 4049     		ldr	r1, .L1975+64
 8772 57aa 4046     		mov	r0, r8
 8773 57ac FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8774 57b0 FBF78DBE 		b	.L628
 8775              	.L1814:
 8776 57b4 2846     		mov	r0, r5
 8777 57b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8778 57ba 5021     		movs	r1, #80
ARM GAS  /tmp/ccM7BG9e.s 			page 155


 8779 57bc 2846     		mov	r0, r5
 8780 57be B0EE408A 		vmov.f32	s16, s0
 8781 57c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8782 57c6 28B1     		cbz	r0, .L339
 8783 57c8 2846     		mov	r0, r5
 8784 57ca FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8785 57ce 0328     		cmp	r0, #3
 8786 57d0 3FF6E1AD 		bhi	.L340
 8787              	.L339:
 8788 57d4 4301     		lsls	r3, r0, #5
 8789 57d6 2068     		ldr	r0, [r4]
 8790 57d8 03F60423 		addw	r3, r3, #2564
 8791 57dc B1EE480A 		vneg.f32	s0, s16
 8792 57e0 1844     		add	r0, r0, r3
 8793 57e2 FFF7FEFF 		bl	_ZN7Spindle6SetRpmEf
 8794 57e6 0126     		movs	r6, #1
 8795 57e8 FBF745BC 		b	.L186
 8796              	.L1852:
 8797 57ec 2846     		mov	r0, r5
 8798 57ee FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8799 57f2 0646     		mov	r6, r0
 8800 57f4 FCF7A6BF 		b	.L756
 8801              	.L1874:
 8802 57f8 FFEE007A 		vmov.f32	s15, #-1.0e+0
 8803 57fc B4EEE78A 		vcmpe.f32	s16, s15
 8804 5800 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8805 5804 D8BF     		it	le
 8806 5806 B0EE678A 		vmovle.f32	s16, s15
 8807 580a FDF71ABC 		b	.L649
 8808              	.L1766:
 8809 580e 2849     		ldr	r1, .L1975+68
 8810 5810 4046     		mov	r0, r8
 8811 5812 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8812 5816 0226     		movs	r6, #2
 8813 5818 FBF72DBC 		b	.L186
 8814              	.L1813:
 8815 581c 2846     		mov	r0, r5
 8816 581e FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8817 5822 0328     		cmp	r0, #3
 8818 5824 3FF6B7AD 		bhi	.L340
 8819 5828 4301     		lsls	r3, r0, #5
 8820 582a 2068     		ldr	r0, [r4]
 8821 582c 03F60423 		addw	r3, r3, #2564
 8822 5830 1844     		add	r0, r0, r3
 8823 5832 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 8824 5836 0126     		movs	r6, #1
 8825 5838 FBF71DBC 		b	.L186
 8826              	.L654:
 8827 583c 2946     		mov	r1, r5
 8828 583e 2046     		mov	r0, r4
 8829 5840 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8830 5844 8246     		mov	r10, r0
 8831 5846 0028     		cmp	r0, #0
 8832 5848 7FF45BA9 		bne	.L657
 8833 584c FAF703BC 		b	.L1123
 8834              	.L1911:
 8835 5850 1849     		ldr	r1, .L1975+72
ARM GAS  /tmp/ccM7BG9e.s 			page 156


 8836 5852 4046     		mov	r0, r8
 8837 5854 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8838 5858 0226     		movs	r6, #2
 8839 585a FBF70CBC 		b	.L186
 8840              	.L1863:
 8841 585e 2846     		mov	r0, r5
 8842 5860 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8843 5864 0146     		mov	r1, r0
 8844 5866 FDF741BA 		b	.L930
 8845              	.L1976:
 8846 586a 00BF     		.align	2
 8847              	.L1975:
 8848 586c 70060000 		.word	.LC86
 8849 5870 7C060000 		.word	.LC87
 8850 5874 8C060000 		.word	.LC89
 8851 5878 1C050000 		.word	.LC76
 8852 587c 640A0000 		.word	.LC123
 8853 5880 F8140000 		.word	.LC208
 8854 5884 84130000 		.word	.LC195
 8855 5888 E4130000 		.word	.LC197
 8856 588c 00000000 		.word	reprap
 8857 5890 B4010000 		.word	.LC48
 8858 5894 94060000 		.word	.LC90
 8859 5898 58010000 		.word	.LC42
 8860 589c CC130000 		.word	.LC196
 8861 58a0 FC010000 		.word	.LC50
 8862 58a4 C0150000 		.word	.LC215
 8863 58a8 0000C842 		.word	1120403456
 8864 58ac 300A0000 		.word	.LC122
 8865 58b0 F8090000 		.word	.LC120
 8866 58b4 AC0A0000 		.word	.LC125
 8867 58b8 80060000 		.word	.LC88
 8868              	.L1771:
 8869 58bc 2846     		mov	r0, r5
 8870 58be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8871 58c2 04F59E63 		add	r3, r4, #1264
 8872 58c6 0028     		cmp	r0, #0
 8873 58c8 7DF4ACAB 		bne	.L648
 8874 58cc D3ED007A 		vldr.32	s15, [r3]
 8875 58d0 38EE678A 		vsub.f32	s16, s16, s15
 8876 58d4 FDF7A6BB 		b	.L648
 8877              	.L349:
 8878 58d8 A049     		ldr	r1, .L1977
 8879 58da 4046     		mov	r0, r8
 8880 58dc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8881 58e0 5321     		movs	r1, #83
 8882 58e2 2846     		mov	r0, r5
 8883 58e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8884 58e8 0226     		movs	r6, #2
 8885 58ea 0028     		cmp	r0, #0
 8886 58ec 3BF4C3AB 		beq	.L186
 8887 58f0 CCE6     		b	.L351
 8888              	.L725:
 8889 58f2 9B49     		ldr	r1, .L1977+4
 8890 58f4 4046     		mov	r0, r8
 8891 58f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 8892 58fa 0226     		movs	r6, #2
ARM GAS  /tmp/ccM7BG9e.s 			page 157


 8893 58fc FBF7BBBB 		b	.L186
 8894              	.L1808:
 8895 5900 3246     		mov	r2, r6
 8896 5902 4946     		mov	r1, r9
 8897 5904 9748     		ldr	r0, .L1977+8
 8898 5906 FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKcj
 8899 590a 0DF1600B 		add	fp, sp, #96
 8900 590e CBF80000 		str	r0, [fp]
 8901 5912 0028     		cmp	r0, #0
 8902 5914 3AF49DAB 		beq	.L742
 8903              	.L1789:
 8904 5918 0A21     		movs	r1, #10
 8905 591a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 8906              	.L363:
 8907 591e 2946     		mov	r1, r5
 8908 5920 2046     		mov	r0, r4
 8909 5922 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8910 5926 DBF80030 		ldr	r3, [fp]
 8911 592a 2946     		mov	r1, r5
 8912 592c 2046     		mov	r0, r4
 8913 592e 0022     		movs	r2, #0
 8914 5930 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 8915 5934 FAF78FBB 		b	.L1123
 8916              	.L1902:
 8917 5938 8A4B     		ldr	r3, .L1977+8
 8918 593a 3946     		mov	r1, r7
 8919 593c D869     		ldr	r0, [r3, #28]
 8920 593e FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 8921 5942 2068     		ldr	r0, [r4]
 8922 5944 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8923 5948 0228     		cmp	r0, #2
 8924 594a 09D1     		bne	.L386
 8925 594c 636C     		ldr	r3, [r4, #68]
 8926 594e 1B68     		ldr	r3, [r3]
 8927 5950 AB42     		cmp	r3, r5
 8928 5952 00F01685 		beq	.L387
 8929 5956 E36B     		ldr	r3, [r4, #60]
 8930 5958 1B68     		ldr	r3, [r3]
 8931 595a AB42     		cmp	r3, r5
 8932 595c 00F01185 		beq	.L387
 8933              	.L386:
 8934 5960 3A46     		mov	r2, r7
 8935 5962 8149     		ldr	r1, .L1977+12
 8936 5964 4046     		mov	r0, r8
 8937 5966 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8938              	.L388:
 8939 596a 202E     		cmp	r6, #32
 8940 596c 00F07385 		beq	.L1921
 8941 5970 0126     		movs	r6, #1
 8942 5972 FBF780BB 		b	.L186
 8943              	.L987:
 8944 5976 2846     		mov	r0, r5
 8945 5978 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8946 597c 021E     		subs	r2, r0, #0
 8947 597e C0F24084 		blt	.L1018
 8948 5982 072A     		cmp	r2, #7
 8949 5984 00F32185 		bgt	.L1922
ARM GAS  /tmp/ccM7BG9e.s 			page 158


 8950              	.L524:
 8951 5988 8D2E     		cmp	r6, #141
 8952 598a 52B2     		sxtb	r2, r2
 8953 598c 3946     		mov	r1, r7
 8954 598e 4846     		mov	r0, r9
 8955 5990 00F05E84 		beq	.L1923
 8956 5994 FFF7FEFF 		bl	_ZN4Heat12SetBedHeaterEja
 8957              	.L526:
 8958 5998 2068     		ldr	r0, [r4]
 8959 599a FFF7FEFF 		bl	_ZN8Platform23UpdateConfiguredHeatersEv
 8960 599e 0123     		movs	r3, #1
 8961 59a0 FDF7DDBD 		b	.L523
 8962              	.L1879:
 8963 59a4 2846     		mov	r0, r5
 8964 59a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8965 59aa BAF1000F 		cmp	r10, #0
 8966 59ae C0F29883 		blt	.L1924
 8967 59b2 9FED6E7A 		vldr.32	s14, .L1977+16
 8968 59b6 B4EEC70A 		vcmpe.f32	s0, s14
 8969 59ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8970 59be 5146     		mov	r1, r10
 8971 59c0 4846     		mov	r0, r9
 8972 59c2 40F17F83 		bpl	.L1759
 8973 59c6 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8974 59ca 5221     		movs	r1, #82
 8975 59cc 2846     		mov	r0, r5
 8976 59ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8977 59d2 0028     		cmp	r0, #0
 8978 59d4 3BF4D4AB 		beq	.L331
 8979              	.L536:
 8980 59d8 2846     		mov	r0, r5
 8981 59da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8982 59de 5146     		mov	r1, r10
 8983 59e0 4846     		mov	r0, r9
 8984 59e2 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 8985 59e6 0126     		movs	r6, #1
 8986 59e8 FBF745BB 		b	.L186
 8987              	.L812:
 8988 59ec 4A46     		mov	r2, r9
 8989 59ee 6049     		ldr	r1, .L1977+20
 8990 59f0 4046     		mov	r0, r8
 8991 59f2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 8992 59f6 D7F89430 		ldr	r3, [r7, #148]
 8993 59fa 002B     		cmp	r3, #0
 8994 59fc 3BF4C0AB 		beq	.L331
 8995 5a00 DFF884A1 		ldr	r10, .L1977+44
 8996 5a04 07F1300B 		add	fp, r7, #48
 8997 5a08 4FF02009 		mov	r9, #32
 8998              	.L815:
 8999 5a0c 5BF8040B 		ldr	r0, [fp], #4	@ float
 9000 5a10 FFF7FEFF 		bl	__aeabi_f2d
 9001 5a14 4A46     		mov	r2, r9
 9002 5a16 CDE90001 		strd	r0, [sp]
 9003 5a1a 5146     		mov	r1, r10
 9004 5a1c 4046     		mov	r0, r8
 9005 5a1e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9006 5a22 D7F89430 		ldr	r3, [r7, #148]
ARM GAS  /tmp/ccM7BG9e.s 			page 159


 9007 5a26 0136     		adds	r6, r6, #1
 9008 5a28 9E42     		cmp	r6, r3
 9009 5a2a 4FF03A09 		mov	r9, #58
 9010 5a2e EDD3     		bcc	.L815
 9011 5a30 FBF7A6BB 		b	.L331
 9012              	.L925:
 9013 5a34 4F49     		ldr	r1, .L1977+24
 9014 5a36 4046     		mov	r0, r8
 9015 5a38 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9016 5a3c 0226     		movs	r6, #2
 9017 5a3e FBF71ABB 		b	.L186
 9018              	.L924:
 9019 5a42 4D49     		ldr	r1, .L1977+28
 9020 5a44 4046     		mov	r0, r8
 9021 5a46 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9022 5a4a 0226     		movs	r6, #2
 9023 5a4c FBF713BB 		b	.L186
 9024              	.L766:
 9025 5a50 4A49     		ldr	r1, .L1977+32
 9026 5a52 4046     		mov	r0, r8
 9027 5a54 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9028 5a58 0226     		movs	r6, #2
 9029 5a5a FBF70CBB 		b	.L186
 9030              	.L1828:
 9031 5a5e 2846     		mov	r0, r5
 9032 5a60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9033 5a64 F061     		str	r0, [r6, #28]
 9034 5a66 FBF7F2BE 		b	.L740
 9035              	.L1877:
 9036 5a6a 2946     		mov	r1, r5
 9037 5a6c 2046     		mov	r0, r4
 9038 5a6e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9039 5a72 D9F80030 		ldr	r3, [r9]
 9040 5a76 3A46     		mov	r2, r7
 9041 5a78 2946     		mov	r1, r5
 9042 5a7a 2046     		mov	r0, r4
 9043 5a7c B246     		mov	r10, r6
 9044 5a7e FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 9045 5a82 FAF7E8BA 		b	.L1123
 9046              	.L769:
 9047 5a86 3D49     		ldr	r1, .L1977+32
 9048 5a88 4046     		mov	r0, r8
 9049 5a8a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9050 5a8e 0226     		movs	r6, #2
 9051 5a90 FBF7F1BA 		b	.L186
 9052              	.L1913:
 9053 5a94 5021     		movs	r1, #80
 9054 5a96 3046     		mov	r0, r6
 9055 5a98 FFF7FEFF 		bl	_Z7StrnlenPKcj
 9056 5a9c 0130     		adds	r0, r0, #1
 9057 5a9e FFF7FEFF 		bl	_Znaj
 9058 5aa2 3146     		mov	r1, r6
 9059 5aa4 FFF7FEFF 		bl	strcpy
 9060 5aa8 0346     		mov	r3, r0
 9061 5aaa D4F8B000 		ldr	r0, [r4, #176]
 9062 5aae C4F8B030 		str	r3, [r4, #176]
 9063 5ab2 0028     		cmp	r0, #0
ARM GAS  /tmp/ccM7BG9e.s 			page 160


 9064 5ab4 3FF4A7AA 		beq	.L957
 9065 5ab8 FFF7FEFF 		bl	_ZdaPv
 9066 5abc FFF7A3BA 		b	.L957
 9067              	.L1827:
 9068 5ac0 2846     		mov	r0, r5
 9069 5ac2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9070 5ac6 F7EE007A 		vmov.f32	s15, #1.0e+0
 9071 5aca B4EE670A 		vcmp.f32	s0, s15
 9072 5ace F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9073 5ad2 48BF     		it	mi
 9074 5ad4 B0EE670A 		vmovmi.f32	s0, s15
 9075 5ad8 86ED060A 		vstr.32	s0, [r6, #24]
 9076 5adc FBF7B0BE 		b	.L737
 9077              	.L1826:
 9078 5ae0 2846     		mov	r0, r5
 9079 5ae2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9080 5ae6 3046     		mov	r0, r6
 9081 5ae8 FFF7FEFF 		bl	_ZN7Spindle15SetPwmFrequencyEf
 9082 5aec FBF7A1BE 		b	.L736
 9083              	.L762:
 9084 5af0 5321     		movs	r1, #83
 9085 5af2 2846     		mov	r0, r5
 9086 5af4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9087 5af8 0028     		cmp	r0, #0
 9088 5afa 3CF437AE 		beq	.L758
 9089 5afe 0DF16809 		add	r9, sp, #104
 9090              	.L764:
 9091 5b02 2846     		mov	r0, r5
 9092 5b04 DBF804A0 		ldr	r10, [fp, #4]
 9093 5b08 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9094 5b0c 3146     		mov	r1, r6
 9095 5b0e 2126     		movs	r6, #33
 9096 5b10 CDF80080 		str	r8, [sp]
 9097 5b14 0246     		mov	r2, r0
 9098 5b16 C9F80460 		str	r6, [r9, #4]
 9099 5b1a 5046     		mov	r0, r10
 9100 5b1c C9F80070 		str	r7, [r9]
 9101 5b20 4B46     		mov	r3, r9
 9102 5b22 FFF7FEFF 		bl	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 9103 5b26 0646     		mov	r6, r0
 9104 5b28 FBF7A5BA 		b	.L186
 9105              	.L772:
 9106 5b2c 2068     		ldr	r0, [r4]
 9107 5b2e FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9108 5b32 1349     		ldr	r1, .L1977+36
 9109 5b34 0246     		mov	r2, r0
 9110 5b36 4046     		mov	r0, r8
 9111 5b38 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9112 5b3c 0126     		movs	r6, #1
 9113 5b3e FBF79ABA 		b	.L186
 9114              	.L1880:
 9115 5b42 BAF1000F 		cmp	r10, #0
 9116 5b46 BFF647AF 		bge	.L536
 9117              	.L538:
 9118 5b4a 3246     		mov	r2, r6
 9119 5b4c 3B46     		mov	r3, r7
 9120 5b4e 0D49     		ldr	r1, .L1977+40
ARM GAS  /tmp/ccM7BG9e.s 			page 161


 9121 5b50 4046     		mov	r0, r8
 9122 5b52 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9123 5b56 0226     		movs	r6, #2
 9124 5b58 FBF78DBA 		b	.L186
 9125              	.L1978:
 9126              		.align	2
 9127              	.L1977:
 9128 5b5c 50020000 		.word	.LC53
 9129 5b60 200E0000 		.word	.LC151
 9130 5b64 00000000 		.word	reprap
 9131 5b68 14030000 		.word	.LC61
 9132 5b6c 008088C3 		.word	3280502784
 9133 5b70 4C100000 		.word	.LC173
 9134 5b74 34140000 		.word	.LC200
 9135 5b78 00140000 		.word	.LC198
 9136 5b7c D00E0000 		.word	.LC159
 9137 5b80 6C0F0000 		.word	.LC168
 9138 5b84 DC070000 		.word	.LC104
 9139 5b88 8C060000 		.word	.LC89
 9140              	.L683:
 9141 5b8c 96F84630 		ldrb	r3, [r6, #70]	@ zero_extendqisi2
 9142 5b90 002B     		cmp	r3, #0
 9143 5b92 00F06F83 		beq	.L1925
 9144 5b96 96F84730 		ldrb	r3, [r6, #71]	@ zero_extendqisi2
 9145 5b9a 002B     		cmp	r3, #0
 9146 5b9c 00F06883 		beq	.L1041
 9147 5ba0 96F84910 		ldrb	r1, [r6, #73]	@ zero_extendqisi2
 9148 5ba4 D44A     		ldr	r2, .L1979
 9149 5ba6 D54B     		ldr	r3, .L1979+4
 9150 5ba8 0029     		cmp	r1, #0
 9151 5baa 18BF     		it	ne
 9152 5bac 1A46     		movne	r2, r3
 9153              	.L688:
 9154 5bae DBF80C30 		ldr	r3, [fp, #12]
 9155 5bb2 96F84810 		ldrb	r1, [r6, #72]	@ zero_extendqisi2
 9156 5bb6 03EB8A0A 		add	r10, r3, r10, lsl #2
 9157 5bba DAF80430 		ldr	r3, [r10, #4]
 9158 5bbe 93F87D30 		ldrb	r3, [r3, #125]	@ zero_extendqisi2
 9159 5bc2 0029     		cmp	r1, #0
 9160 5bc4 00F04D83 		beq	.L689
 9161 5bc8 CD48     		ldr	r0, .L1979+8
 9162 5bca CE49     		ldr	r1, .L1979+12
 9163 5bcc 002B     		cmp	r3, #0
 9164 5bce 0CBF     		ite	eq
 9165 5bd0 0346     		moveq	r3, r0
 9166 5bd2 0B46     		movne	r3, r1
 9167              	.L690:
 9168 5bd4 CDE90A23 		strd	r2, r3, [sp, #40]
 9169 5bd8 306C     		ldr	r0, [r6, #64]	@ float
 9170 5bda FFF7FEFF 		bl	__aeabi_f2d
 9171 5bde CDE90801 		strd	r0, [sp, #32]
 9172 5be2 F06B     		ldr	r0, [r6, #60]	@ float
 9173 5be4 FFF7FEFF 		bl	__aeabi_f2d
 9174 5be8 CDE90601 		strd	r0, [sp, #24]
 9175 5bec B06B     		ldr	r0, [r6, #56]	@ float
 9176 5bee FFF7FEFF 		bl	__aeabi_f2d
 9177 5bf2 CDE90401 		strd	r0, [sp, #16]
ARM GAS  /tmp/ccM7BG9e.s 			page 162


 9178 5bf6 706B     		ldr	r0, [r6, #52]	@ float
 9179 5bf8 FFF7FEFF 		bl	__aeabi_f2d
 9180 5bfc CDE90201 		strd	r0, [sp, #8]
 9181 5c00 306B     		ldr	r0, [r6, #48]	@ float
 9182 5c02 FFF7FEFF 		bl	__aeabi_f2d
 9183 5c06 3A46     		mov	r2, r7
 9184 5c08 CDE90001 		strd	r0, [sp]
 9185 5c0c BE49     		ldr	r1, .L1979+16
 9186 5c0e 4046     		mov	r0, r8
 9187 5c10 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9188 5c14 B6F84420 		ldrh	r2, [r6, #68]
 9189 5c18 002A     		cmp	r2, #0
 9190 5c1a 40F01D83 		bne	.L691
 9191 5c1e BB49     		ldr	r1, .L1979+20
 9192 5c20 4046     		mov	r0, r8
 9193 5c22 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 9194              	.L692:
 9195 5c26 96F84730 		ldrb	r3, [r6, #71]	@ zero_extendqisi2
 9196 5c2a 002B     		cmp	r3, #0
 9197 5c2c 3CF432A8 		beq	.L686
 9198 5c30 3036     		adds	r6, r6, #48
 9199 5c32 3046     		mov	r0, r6
 9200 5c34 0021     		movs	r1, #0
 9201 5c36 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 9202 5c3a 10EE100A 		vmov	r0, s0
 9203 5c3e 8DED5C0A 		vstr.32	s0, [sp, #368]
 9204 5c42 CDED5D0A 		vstr.32	s1, [sp, #372]
 9205 5c46 CDED0E0A 		vstr.32	s1, [sp, #56]	@ int
 9206 5c4a 8DED5E1A 		vstr.32	s2, [sp, #376]
 9207 5c4e 8DED0D1A 		vstr.32	s2, [sp, #52]	@ int
 9208 5c52 FFF7FEFF 		bl	__aeabi_f2d
 9209 5c56 9DED0D1A 		vldr.32	s2, [sp, #52]	@ int
 9210 5c5a 8246     		mov	r10, r0
 9211 5c5c 11EE100A 		vmov	r0, s2
 9212 5c60 8B46     		mov	fp, r1
 9213 5c62 FFF7FEFF 		bl	__aeabi_f2d
 9214 5c66 DDED0E0A 		vldr.32	s1, [sp, #56]	@ int
 9215 5c6a CDE90201 		strd	r0, [sp, #8]
 9216 5c6e 10EE900A 		vmov	r0, s1
 9217 5c72 FFF7FEFF 		bl	__aeabi_f2d
 9218 5c76 5246     		mov	r2, r10
 9219 5c78 5B46     		mov	r3, fp
 9220 5c7a CDE90001 		strd	r0, [sp]
 9221 5c7e A449     		ldr	r1, .L1979+24
 9222 5c80 4046     		mov	r0, r8
 9223 5c82 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9224 5c86 3046     		mov	r0, r6
 9225 5c88 0121     		movs	r1, #1
 9226 5c8a FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 9227 5c8e 10EE100A 		vmov	r0, s0
 9228 5c92 8DED5C0A 		vstr.32	s0, [sp, #368]
 9229 5c96 CDED5D0A 		vstr.32	s1, [sp, #372]
 9230 5c9a CDED0E0A 		vstr.32	s1, [sp, #56]	@ int
 9231 5c9e 8DED5E1A 		vstr.32	s2, [sp, #376]
 9232 5ca2 8DED0D1A 		vstr.32	s2, [sp, #52]	@ int
 9233 5ca6 FFF7FEFF 		bl	__aeabi_f2d
 9234 5caa 9DED0D1A 		vldr.32	s2, [sp, #52]	@ int
ARM GAS  /tmp/ccM7BG9e.s 			page 163


 9235 5cae 0646     		mov	r6, r0
 9236 5cb0 11EE100A 		vmov	r0, s2
 9237 5cb4 0F46     		mov	r7, r1
 9238 5cb6 FFF7FEFF 		bl	__aeabi_f2d
 9239 5cba DDED0E0A 		vldr.32	s1, [sp, #56]	@ int
 9240 5cbe CDE90201 		strd	r0, [sp, #8]
 9241 5cc2 10EE900A 		vmov	r0, s1
 9242 5cc6 FFF7FEFF 		bl	__aeabi_f2d
 9243 5cca 3246     		mov	r2, r6
 9244 5ccc CDE90001 		strd	r0, [sp]
 9245 5cd0 3B46     		mov	r3, r7
 9246 5cd2 9049     		ldr	r1, .L1979+28
 9247 5cd4 4046     		mov	r0, r8
 9248 5cd6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9249 5cda FBF7DBBF 		b	.L686
 9250              	.L1915:
 9251 5cde 4946     		mov	r1, r9
 9252 5ce0 F868     		ldr	r0, [r7, #12]
 9253 5ce2 9FED8D8A 		vldr.32	s16, .L1979+32
 9254 5ce6 FFF7FEFF 		bl	_ZNK4Heat15IsChamberHeaterEa
 9255 5cea DFED8C7A 		vldr.32	s15, .L1979+36
 9256 5cee 0028     		cmp	r0, #0
 9257 5cf0 18BF     		it	ne
 9258 5cf2 B0EE678A 		vmovne.f32	s16, s15
 9259 5cf6 FBF7F8BF 		b	.L675
 9260              	.L844:
 9261 5cfa 0A46     		mov	r2, r1
 9262 5cfc 4046     		mov	r0, r8
 9263 5cfe 8849     		ldr	r1, .L1979+40
 9264 5d00 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9265 5d04 0226     		movs	r6, #2
 9266 5d06 FBF7B6B9 		b	.L186
 9267              	.L1807:
 9268 5d0a 3246     		mov	r2, r6
 9269 5d0c 4946     		mov	r1, r9
 9270 5d0e 0123     		movs	r3, #1
 9271 5d10 8448     		ldr	r0, .L1979+44
 9272 5d12 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcjb
 9273 5d16 0DF1600B 		add	fp, sp, #96
 9274 5d1a CBF80000 		str	r0, [fp]
 9275 5d1e 0028     		cmp	r0, #0
 9276 5d20 7FF4FAAD 		bne	.L1789
 9277 5d24 FAF795B9 		b	.L742
 9278              	.L1916:
 9279 5d28 7F49     		ldr	r1, .L1979+48
 9280 5d2a 4046     		mov	r0, r8
 9281 5d2c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9282 5d30 0126     		movs	r6, #1
 9283 5d32 FBF7A0B9 		b	.L186
 9284              	.L416:
 9285 5d36 7D49     		ldr	r1, .L1979+52
 9286 5d38 4046     		mov	r0, r8
 9287 5d3a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9288 5d3e 0226     		movs	r6, #2
 9289 5d40 FBF799B9 		b	.L186
 9290              	.L505:
 9291 5d44 3522     		movs	r2, #53
ARM GAS  /tmp/ccM7BG9e.s 			page 164


 9292 5d46 7A49     		ldr	r1, .L1979+56
 9293 5d48 4046     		mov	r0, r8
 9294 5d4a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9295 5d4e 0226     		movs	r6, #2
 9296 5d50 FBF791B9 		b	.L186
 9297              	.L751:
 9298 5d54 7749     		ldr	r1, .L1979+60
 9299 5d56 4046     		mov	r0, r8
 9300 5d58 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9301 5d5c 0226     		movs	r6, #2
 9302 5d5e FBF78AB9 		b	.L186
 9303              	.L1931:
 9304 5d62 0328     		cmp	r0, #3
 9305 5d64 00F23081 		bhi	.L977
 9306              	.L978:
 9307 5d68 DFF8B8B1 		ldr	fp, .L1979+44
 9308 5d6c DBF80C30 		ldr	r3, [fp, #12]
 9309 5d70 1344     		add	r3, r3, r2
 9310 5d72 93F9D260 		ldrsb	r6, [r3, #210]
 9311 5d76 FBF726BC 		b	.L546
 9312              	.L1919:
 9313 5d7a 6F49     		ldr	r1, .L1979+64
 9314 5d7c 4046     		mov	r0, r8
 9315 5d7e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9316 5d82 0226     		movs	r6, #2
 9317 5d84 FBF777B9 		b	.L186
 9318              	.L1866:
 9319 5d88 2846     		mov	r0, r5
 9320 5d8a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9321 5d8e 0028     		cmp	r0, #0
 9322 5d90 7DF738A8 		ble	.L635
 9323 5d94 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 9324 5d96 83F00103 		eor	r3, r3, #1
 9325 5d9a 3B70     		strb	r3, [r7]
 9326 5d9c FDF732B8 		b	.L635
 9327              	.L1885:
 9328 5da0 B5EEC08A 		vcmpe.f32	s16, #0
 9329 5da4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9330 5da8 00F37484 		bgt	.L1926
 9331 5dac 4621     		movs	r1, #70
 9332 5dae 2846     		mov	r0, r5
 9333 5db0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9334 5db4 9FED618A 		vldr.32	s16, .L1979+68
 9335 5db8 0028     		cmp	r0, #0
 9336 5dba 7DF4F5AC 		bne	.L974
 9337              	.L434:
 9338 5dbe 2068     		ldr	r0, [r4]
 9339 5dc0 0027     		movs	r7, #0
 9340 5dc2 4FF4FA76 		mov	r6, #500
 9341 5dc6 0122     		movs	r2, #1
 9342 5dc8 FDF7FCBC 		b	.L967
 9343              	.L1817:
 9344 5dcc 5221     		movs	r1, #82
 9345 5dce 2846     		mov	r0, r5
 9346 5dd0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9347 5dd4 0028     		cmp	r0, #0
 9348 5dd6 40F01584 		bne	.L1927
ARM GAS  /tmp/ccM7BG9e.s 			page 165


 9349 5dda 4FF0FF39 		mov	r9, #-1
 9350              	.L885:
 9351 5dde 5421     		movs	r1, #84
 9352 5de0 2846     		mov	r0, r5
 9353 5de2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9354 5de6 0028     		cmp	r0, #0
 9355 5de8 40F00784 		bne	.L1928
 9356 5dec 4FF0FF30 		mov	r0, #-1
 9357              	.L886:
 9358 5df0 CDE90008 		strd	r0, r8, [sp]
 9359 5df4 DFF82CC1 		ldr	ip, .L1979+44
 9360 5df8 3146     		mov	r1, r6
 9361 5dfa 4B46     		mov	r3, r9
 9362 5dfc 3A46     		mov	r2, r7
 9363 5dfe DCF80400 		ldr	r0, [ip, #4]
 9364 5e02 FFF7FEFF 		bl	_ZN7Network14EnableProtocolEjhiiRK9StringRef
 9365 5e06 0646     		mov	r6, r0
 9366 5e08 FBF735B9 		b	.L186
 9367              	.L1853:
 9368 5e0c 2846     		mov	r0, r5
 9369 5e0e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9370 5e12 5021     		movs	r1, #80
 9371 5e14 8246     		mov	r10, r0
 9372 5e16 2846     		mov	r0, r5
 9373 5e18 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9374 5e1c 0DF16809 		add	r9, sp, #104
 9375 5e20 48B1     		cbz	r0, .L761
 9376 5e22 2123     		movs	r3, #33
 9377 5e24 4946     		mov	r1, r9
 9378 5e26 2846     		mov	r0, r5
 9379 5e28 C9E90073 		strd	r7, r3, [r9]
 9380 5e2c FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 9381 5e30 0028     		cmp	r0, #0
 9382 5e32 00F0D182 		beq	.L1929
 9383              	.L761:
 9384 5e36 3146     		mov	r1, r6
 9385 5e38 2126     		movs	r6, #33
 9386 5e3a DBF80400 		ldr	r0, [fp, #4]
 9387 5e3e CDF80080 		str	r8, [sp]
 9388 5e42 5246     		mov	r2, r10
 9389 5e44 C9F80460 		str	r6, [r9, #4]
 9390 5e48 C9F80070 		str	r7, [r9]
 9391 5e4c 4B46     		mov	r3, r9
 9392 5e4e FFF7FEFF 		bl	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 9393 5e52 0646     		mov	r6, r0
 9394 5e54 FBF70FB9 		b	.L186
 9395              	.L1917:
 9396 5e58 5CAB     		add	r3, sp, #368
 9397 5e5a D3E90023 		ldrd	r2, [r3]
 9398 5e5e 3868     		ldr	r0, [r7]
 9399 5e60 D9F80010 		ldr	r1, [r9]
 9400 5e64 CDE90023 		strd	r2, [sp]
 9401 5e68 CDE90210 		strd	r1, r0, [sp, #8]
 9402 5e6c DDE91A23 		ldrd	r2, [sp, #104]
 9403 5e70 3349     		ldr	r1, .L1979+72
 9404 5e72 4046     		mov	r0, r8
 9405 5e74 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccM7BG9e.s 			page 166


 9406 5e78 0126     		movs	r6, #1
 9407 5e7a FBF7FCB8 		b	.L186
 9408              	.L1867:
 9409 5e7e 2846     		mov	r0, r5
 9410 5e80 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9411 5e84 B5EEC00A 		vcmpe.f32	s0, #0
 9412 5e88 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9413 5e8c 00F1B582 		bmi	.L1930
 9414 5e90 DFED2C7A 		vldr.32	s15, .L1979+76
 9415 5e94 B4EEE70A 		vcmpe.f32	s0, s15
 9416 5e98 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9417 5e9c 40F1A382 		bpl	.L1770
 9418 5ea0 B4EE400A 		vcmp.f32	s0, s0
 9419 5ea4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9420 5ea8 08D6     		bvs	.L643
 9421 5eaa DFED277A 		vldr.32	s15, .L1979+80
 9422 5eae B4EEE70A 		vcmpe.f32	s0, s15
 9423 5eb2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9424 5eb6 58BF     		it	pl
 9425 5eb8 B0EE670A 		vmovpl.f32	s0, s15
 9426              	.L643:
 9427 5ebc 9FED237A 		vldr.32	s14, .L1979+84
 9428 5ec0 DFED207A 		vldr.32	s15, .L1979+76
 9429 5ec4 E0EE077A 		vfma.f32	s15, s0, s14
 9430 5ec8 B0EE670A 		vmov.f32	s0, s15
 9431              	.L645:
 9432 5ecc DFED207A 		vldr.32	s15, .L1979+88
 9433 5ed0 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 9434 5ed2 20EE270A 		vmul.f32	s0, s0, s15
 9435 5ed6 1BB1     		cbz	r3, .L646
 9436 5ed8 F7EE007A 		vmov.f32	s15, #1.0e+0
 9437 5edc 37EEC00A 		vsub.f32	s0, s15, s0
 9438              	.L646:
 9439 5ee0 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 9440 5ee4 3221     		movs	r1, #50
 9441 5ee6 FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 9442 5eea FCF792BF 		b	.L637
 9443              	.L903:
 9444 5eee 3846     		mov	r0, r7
 9445 5ef0 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9446 5ef4 FCF718BF 		b	.L900
 9447              	.L1980:
 9448              		.align	2
 9449              	.L1979:
 9450 5ef8 34000000 		.word	.LC17
 9451 5efc 44000000 		.word	.LC19
 9452 5f00 50000000 		.word	.LC20
 9453 5f04 74000000 		.word	.LC23
 9454 5f08 A40B0000 		.word	.LC132
 9455 5f0c 300C0000 		.word	.LC133
 9456 5f10 400C0000 		.word	.LC135
 9457 5f14 840C0000 		.word	.LC136
 9458 5f18 00004843 		.word	1128792064
 9459 5f1c 00004842 		.word	1112014848
 9460 5f20 98120000 		.word	.LC184
 9461 5f24 00000000 		.word	reprap
 9462 5f28 240B0000 		.word	.LC128
ARM GAS  /tmp/ccM7BG9e.s 			page 167


 9463 5f2c 50030000 		.word	.LC63
 9464 5f30 40070000 		.word	.LC97
 9465 5f34 780E0000 		.word	.LC155
 9466 5f38 78020000 		.word	.LC54
 9467 5f3c 00000000 		.word	0
 9468 5f40 58050000 		.word	.LC78
 9469 5f44 00000844 		.word	1141374976
 9470 5f48 00003443 		.word	1127481344
 9471 5f4c 50FA2441 		.word	1092942416
 9472 5f50 17B75138 		.word	944879383
 9473              	.L832:
 9474 5f54 002E     		cmp	r6, #0
 9475 5f56 7EF462AF 		bne	.L833
 9476 5f5a 5C98     		ldr	r0, [sp, #368]	@ float
 9477 5f5c FFF7FEFF 		bl	__aeabi_f2d
 9478 5f60 CDE90201 		strd	r0, [sp, #8]
 9479 5f64 1A98     		ldr	r0, [sp, #104]	@ float
 9480 5f66 FFF7FEFF 		bl	__aeabi_f2d
 9481 5f6a 4A46     		mov	r2, r9
 9482 5f6c CDE90001 		strd	r0, [sp]
 9483 5f70 D549     		ldr	r1, .L1981
 9484 5f72 4046     		mov	r0, r8
 9485 5f74 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9486 5f78 FEF751BF 		b	.L833
 9487              	.L394:
 9488 5f7c 2946     		mov	r1, r5
 9489 5f7e 2046     		mov	r0, r4
 9490 5f80 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 9491 5f84 0028     		cmp	r0, #0
 9492 5f86 3AF464A8 		beq	.L742
 9493 5f8a 3346     		mov	r3, r6
 9494 5f8c 0122     		movs	r2, #1
 9495 5f8e 2946     		mov	r1, r5
 9496 5f90 2046     		mov	r0, r4
 9497 5f92 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9498 5f96 0126     		movs	r6, #1
 9499 5f98 FBF76DB8 		b	.L186
 9500              	.L465:
 9501 5f9c 2046     		mov	r0, r4
 9502 5f9e FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEf
 9503 5fa2 FBF748BF 		b	.L460
 9504              	.L763:
 9505 5fa6 C949     		ldr	r1, .L1981+4
 9506 5fa8 4046     		mov	r0, r8
 9507 5faa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9508 5fae 0226     		movs	r6, #2
 9509 5fb0 FBF761B8 		b	.L186
 9510              	.L1818:
 9511 5fb4 2846     		mov	r0, r5
 9512 5fb6 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9513 5fba BE2E     		cmp	r6, #190
 9514 5fbc 0246     		mov	r2, r0
 9515 5fbe 3FF4D0AE 		beq	.L1931
 9516 5fc2 0128     		cmp	r0, #1
 9517 5fc4 7BF6F8AA 		bls	.L988
 9518              	.L977:
 9519 5fc8 C149     		ldr	r1, .L1981+8
ARM GAS  /tmp/ccM7BG9e.s 			page 168


 9520 5fca 4046     		mov	r0, r8
 9521 5fcc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9522 5fd0 0226     		movs	r6, #2
 9523 5fd2 FBF750B8 		b	.L186
 9524              	.L369:
 9525 5fd6 BF49     		ldr	r1, .L1981+12
 9526 5fd8 DBF80000 		ldr	r0, [fp]
 9527 5fdc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 9528 5fe0 FBF78EB9 		b	.L368
 9529              	.L1881:
 9530 5fe4 3246     		mov	r2, r6
 9531 5fe6 3B46     		mov	r3, r7
 9532 5fe8 BB49     		ldr	r1, .L1981+16
 9533 5fea 4046     		mov	r0, r8
 9534 5fec FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9535 5ff0 0126     		movs	r6, #1
 9536 5ff2 FBF740B8 		b	.L186
 9537              	.L1821:
 9538 5ff6 3946     		mov	r1, r7
 9539 5ff8 DBF80C00 		ldr	r0, [fp, #12]
 9540 5ffc FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 9541 6000 FBF739B8 		b	.L186
 9542              	.L1809:
 9543 6004 4546     		mov	r5, r8
 9544 6006 8046     		mov	r8, r0
 9545 6008 002E     		cmp	r6, #0
 9546 600a 3FF488AC 		beq	.L363
 9547 600e DBF80060 		ldr	r6, [fp]
 9548 6012 3046     		mov	r0, r6
 9549 6014 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 9550 6018 411E     		subs	r1, r0, #1
 9551 601a 3046     		mov	r0, r6
 9552 601c FFF7FEFF 		bl	_ZN12OutputBufferixEj
 9553 6020 80F80080 		strb	r8, [r0]
 9554 6024 7BE4     		b	.L363
 9555              	.L332:
 9556 6026 002E     		cmp	r6, #0
 9557 6028 7EF457AC 		bne	.L333
 9558              	.L334:
 9559 602c AB68     		ldr	r3, [r5, #8]
 9560 602e AB4A     		ldr	r2, .L1981+20
 9561 6030 1621     		movs	r1, #22
 9562 6032 1975     		strb	r1, [r3, #20]
 9563 6034 FEF755BC 		b	.L966
 9564              	.L1822:
 9565 6038 A949     		ldr	r1, .L1981+24
 9566 603a 4046     		mov	r0, r8
 9567 603c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9568 6040 0226     		movs	r6, #2
 9569 6042 FBF718B8 		b	.L186
 9570              	.L1825:
 9571 6046 A749     		ldr	r1, .L1981+28
 9572 6048 4046     		mov	r0, r8
 9573 604a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9574 604e 0226     		movs	r6, #2
 9575 6050 FBF711B8 		b	.L186
 9576              	.L1824:
ARM GAS  /tmp/ccM7BG9e.s 			page 169


 9577 6054 2846     		mov	r0, r5
 9578 6056 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9579 605a 0028     		cmp	r0, #0
 9580 605c D4BF     		ite	le
 9581 605e 0020     		movle	r0, #0
 9582 6060 0120     		movgt	r0, #1
 9583 6062 FBF7D6BB 		b	.L734
 9584              	.L1755:
 9585 6066 B0EE670A 		vmov.f32	s0, s15
 9586 606a FEF7A5BD 		b	.L462
 9587              	.L813:
 9588 606e 5CA9     		add	r1, sp, #368
 9589 6070 3846     		mov	r0, r7
 9590 6072 FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 9591 6076 FCF7C7BC 		b	.L814
 9592              	.L1868:
 9593 607a 2846     		mov	r0, r5
 9594 607c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9595 6080 0646     		mov	r6, r0
 9596 6082 FCF743BF 		b	.L926
 9597              	.L1856:
 9598 6086 0A46     		mov	r2, r1
 9599              	.L873:
 9600 6088 9749     		ldr	r1, .L1981+32
 9601 608a 4046     		mov	r0, r8
 9602 608c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9603 6090 0226     		movs	r6, #2
 9604 6092 FAF7F0BF 		b	.L186
 9605              	.L435:
 9606 6096 1FFA8AF2 		uxth	r2, r10
 9607 609a 9449     		ldr	r1, .L1981+36
 9608 609c 4046     		mov	r0, r8
 9609 609e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9610 60a2 0226     		movs	r6, #2
 9611 60a4 FAF7E7BF 		b	.L186
 9612              	.L437:
 9613 60a8 F7EE007A 		vmov.f32	s15, #1.0e+0
 9614 60ac B4EE678A 		vcmp.f32	s16, s15
 9615 60b0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9616 60b4 0CBF     		ite	eq
 9617 60b6 0121     		moveq	r1, #1
 9618 60b8 0021     		movne	r1, #0
 9619 60ba FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 9620 60be 0126     		movs	r6, #1
 9621 60c0 FAF7D9BF 		b	.L186
 9622              	.L1759:
 9623 60c4 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 9624 60c8 5146     		mov	r1, r10
 9625 60ca 4846     		mov	r0, r9
 9626 60cc FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 9627 60d0 5221     		movs	r1, #82
 9628 60d2 2846     		mov	r0, r5
 9629 60d4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9630 60d8 0028     		cmp	r0, #0
 9631 60da 7FF47DAC 		bne	.L536
 9632 60de FBF74FB8 		b	.L331
 9633              	.L1924:
ARM GAS  /tmp/ccM7BG9e.s 			page 170


 9634 60e2 B5EEC00A 		vcmpe.f32	s0, #0
 9635 60e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9636 60ea 00F3D481 		bgt	.L1932
 9637 60ee 5221     		movs	r1, #82
 9638 60f0 2846     		mov	r0, r5
 9639 60f2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9640 60f6 0028     		cmp	r0, #0
 9641 60f8 3BF442A8 		beq	.L331
 9642 60fc 25E5     		b	.L538
 9643              	.L1912:
 9644 60fe 7C4E     		ldr	r6, .L1981+40
 9645 6100 CBF80060 		str	r6, [fp]	@ float
 9646 6104 16AB     		add	r3, sp, #88
 9647 6106 5A46     		mov	r2, fp
 9648 6108 5421     		movs	r1, #84
 9649 610a 2846     		mov	r0, r5
 9650 610c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 9651 6110 FEF7FEBC 		b	.L658
 9652              	.L820:
 9653 6114 5CAA     		add	r2, sp, #368
 9654 6116 3146     		mov	r1, r6
 9655 6118 2068     		ldr	r0, [r4]
 9656 611a FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjPKf
 9657 611e 4F46     		mov	r7, r9
 9658              	.L819:
 9659 6120 4921     		movs	r1, #73
 9660 6122 2846     		mov	r0, r5
 9661 6124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9662 6128 8146     		mov	r9, r0
 9663 612a 0028     		cmp	r0, #0
 9664 612c 40F01C82 		bne	.L1933
 9665              	.L821:
 9666 6130 4421     		movs	r1, #68
 9667 6132 2846     		mov	r0, r5
 9668 6134 FFF7FEFF 		bl	_ZN11GCodeBuffer9SeenParamEc
 9669 6138 0028     		cmp	r0, #0
 9670 613a 00F0BB81 		beq	.L823
 9671 613e 2846     		mov	r0, r5
 9672 6140 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9673 6144 0746     		mov	r7, r0
 9674 6146 0146     		mov	r1, r0
 9675 6148 3046     		mov	r0, r6
 9676 614a FFF7FEFF 		bl	_ZN12SmartDrivers13SetDriverModeEjj
 9677 614e 0028     		cmp	r0, #0
 9678 6150 00F07E82 		beq	.L1934
 9679 6154 4321     		movs	r1, #67
 9680 6156 2846     		mov	r0, r5
 9681 6158 FFF7FEFF 		bl	_ZN11GCodeBuffer9SeenParamEc
 9682 615c 0028     		cmp	r0, #0
 9683 615e 3BF40FA8 		beq	.L331
 9684              	.L968:
 9685 6162 2846     		mov	r0, r5
 9686 6164 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 9687 6168 0146     		mov	r1, r0
 9688 616a 3046     		mov	r0, r6
 9689 616c FFF7FEFF 		bl	_ZN12SmartDrivers25SetChopperControlRegisterEjm
 9690 6170 0126     		movs	r6, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 171


 9691 6172 FAF780BF 		b	.L186
 9692              	.L1918:
 9693 6176 2946     		mov	r1, r5
 9694 6178 2046     		mov	r0, r4
 9695 617a FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 9696 617e 0028     		cmp	r0, #0
 9697 6180 3FF41CA9 		beq	.L663
 9698 6184 AE68     		ldr	r6, [r5, #8]
 9699 6186 B068     		ldr	r0, [r6, #8]
 9700 6188 20B1     		cbz	r0, .L665
 9701 618a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9702 618e 0023     		movs	r3, #0
 9703 6190 B360     		str	r3, [r6, #8]
 9704 6192 AE68     		ldr	r6, [r5, #8]
 9705              	.L665:
 9706 6194 737E     		ldrb	r3, [r6, #25]	@ zero_extendqisi2
 9707 6196 43F00203 		orr	r3, r3, #2
 9708 619a 7376     		strb	r3, [r6, #25]
 9709 619c FFF70EB9 		b	.L663
 9710              	.L1026:
 9711 61a0 F0EE407A 		vmov.f32	s15, s0
 9712 61a4 FEF74DBC 		b	.L596
 9713              	.L370:
 9714 61a8 2068     		ldr	r0, [r4]
 9715 61aa FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9716 61ae 861E     		subs	r6, r0, #2
 9717 61b0 18BF     		it	ne
 9718 61b2 0126     		movne	r6, #1
 9719 61b4 FBF7AEB8 		b	.L371
 9720              	.L1914:
 9721 61b8 4E49     		ldr	r1, .L1981+44
 9722 61ba 4046     		mov	r0, r8
 9723 61bc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9724 61c0 0226     		movs	r6, #2
 9725 61c2 FAF758BF 		b	.L186
 9726              	.L1775:
 9727 61c6 3146     		mov	r1, r6
 9728 61c8 F0EE680A 		vmov.f32	s1, s17
 9729 61cc B0EE480A 		vmov.f32	s0, s16
 9730 61d0 F868     		ldr	r0, [r7, #12]
 9731 61d2 4246     		mov	r2, r8
 9732 61d4 FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 9733 61d8 0126     		movs	r6, #1
 9734 61da FAF74CBF 		b	.L186
 9735              	.L1858:
 9736 61de 2846     		mov	r0, r5
 9737 61e0 2668     		ldr	r6, [r4]
 9738 61e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9739 61e6 3946     		mov	r1, r7
 9740 61e8 0246     		mov	r2, r0
 9741 61ea 3046     		mov	r0, r6
 9742 61ec FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 9743 61f0 5321     		movs	r1, #83
 9744 61f2 2846     		mov	r0, r5
 9745 61f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9746 61f8 0028     		cmp	r0, #0
 9747 61fa 3AF4C1AF 		beq	.L331
ARM GAS  /tmp/ccM7BG9e.s 			page 172


 9748 61fe FCF785BC 		b	.L969
 9749              	.L1018:
 9750 6202 4FF0FF32 		mov	r2, #-1
 9751 6206 FFF7BFBB 		b	.L524
 9752              	.L906:
 9753 620a 0D9B     		ldr	r3, [sp, #52]
 9754 620c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 9755 620e 002B     		cmp	r3, #0
 9756 6210 14BF     		ite	ne
 9757 6212 0226     		movne	r6, #2
 9758 6214 0126     		moveq	r6, #1
 9759 6216 FCF7A4BD 		b	.L905
 9760              	.L1767:
 9761 621a 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 9762 621e 12F0010F 		tst	r2, #1
 9763 6222 03F59572 		add	r2, r3, #298
 9764 6226 7FF413A8 		bne	.L632
 9765 622a 04EB8201 		add	r1, r4, r2, lsl #2
 9766 622e D1ED007A 		vldr.32	s15, [r1]
 9767 6232 D4F89812 		ldr	r1, [r4, #664]
 9768 6236 80EE277A 		vdiv.f32	s14, s0, s15
 9769 623a 0B44     		add	r3, r3, r1
 9770 623c 04EB8303 		add	r3, r4, r3, lsl #2
 9771 6240 D3ED377A 		vldr.32	s15, [r3, #220]
 9772 6244 67EE877A 		vmul.f32	s15, s15, s14
 9773 6248 C3ED377A 		vstr.32	s15, [r3, #220]
 9774 624c FFF700B8 		b	.L632
 9775              	.L1923:
 9776 6250 FFF7FEFF 		bl	_ZN4Heat16SetChamberHeaterEja
 9777 6254 FFF7A0BB 		b	.L526
 9778              	.L691:
 9779 6258 2749     		ldr	r1, .L1981+48
 9780 625a 4046     		mov	r0, r8
 9781 625c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 9782 6260 E1E4     		b	.L692
 9783              	.L689:
 9784 6262 2648     		ldr	r0, .L1981+52
 9785 6264 2649     		ldr	r1, .L1981+56
 9786 6266 002B     		cmp	r3, #0
 9787 6268 0CBF     		ite	eq
 9788 626a 0346     		moveq	r3, r0
 9789 626c 0B46     		movne	r3, r1
 9790 626e B1E4     		b	.L690
 9791              	.L1041:
 9792 6270 244A     		ldr	r2, .L1981+60
 9793 6272 9CE4     		b	.L688
 9794              	.L1925:
 9795 6274 3A46     		mov	r2, r7
 9796 6276 2449     		ldr	r1, .L1981+64
 9797 6278 4046     		mov	r0, r8
 9798 627a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9799 627e FBF709BD 		b	.L686
 9800              	.L1920:
 9801 6282 3846     		mov	r0, r7
 9802 6284 FFF7FEFF 		bl	_ZN4Move13SetKinematicsE14KinematicsType
 9803 6288 0126     		movs	r6, #1
 9804 628a FCF76ABD 		b	.L905
ARM GAS  /tmp/ccM7BG9e.s 			page 173


 9805              	.L486:
 9806 628e 4321     		movs	r1, #67
 9807 6290 2846     		mov	r0, r5
 9808 6292 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9809 6296 0028     		cmp	r0, #0
 9810 6298 46D1     		bne	.L1935
 9811 629a 002E     		cmp	r6, #0
 9812 629c 7BF4B5A9 		bne	.L502
 9813 62a0 1A4B     		ldr	r3, .L1981+68
 9814 62a2 0121     		movs	r1, #1
 9815 62a4 D868     		ldr	r0, [r3, #12]
 9816 62a6 FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 9817 62aa 0028     		cmp	r0, #0
 9818 62ac 7BF4ADA9 		bne	.L502
 9819              	.L499:
 9820 62b0 4246     		mov	r2, r8
 9821 62b2 2946     		mov	r1, r5
 9822 62b4 2046     		mov	r0, r4
 9823 62b6 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 9824 62ba 0123     		movs	r3, #1
 9825 62bc 84F88536 		strb	r3, [r4, #1669]
 9826 62c0 4FF0000A 		mov	r10, #0
 9827 62c4 F9F7C7BE 		b	.L1123
 9828              	.L1982:
 9829              		.align	2
 9830              	.L1981:
 9831 62c8 88110000 		.word	.LC180
 9832 62cc D00E0000 		.word	.LC159
 9833 62d0 60080000 		.word	.LC107
 9834 62d4 A8020000 		.word	.LC56
 9835 62d8 DC070000 		.word	.LC104
 9836 62dc 08000000 		.word	.LC10
 9837 62e0 580E0000 		.word	.LC154
 9838 62e4 200E0000 		.word	.LC151
 9839 62e8 48130000 		.word	.LC192
 9840 62ec 44060000 		.word	.LC85
 9841 62f0 00002041 		.word	1092616192
 9842 62f4 A4140000 		.word	.LC206
 9843 62f8 380C0000 		.word	.LC134
 9844 62fc 64000000 		.word	.LC21
 9845 6300 68000000 		.word	.LC22
 9846 6304 38000000 		.word	.LC18
 9847 6308 8C0B0000 		.word	.LC131
 9848 630c 00000000 		.word	reprap
 9849 6310 00000000 		.word	0
 9850              	.L1909:
 9851 6314 B5EEC00A 		vcmpe.f32	s0, #0
 9852 6318 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9853 631c 3EF76EAA 		bgt	.L398
 9854 6320 1FED050A 		vldr.32	s0, .L1981+72
 9855 6324 FEF76ABA 		b	.L398
 9856              	.L1935:
 9857 6328 0DF16809 		add	r9, sp, #104
 9858 632c 5CAF     		add	r7, sp, #368
 9859              	.L488:
 9860 632e 0023     		movs	r3, #0
 9861 6330 0226     		movs	r6, #2
ARM GAS  /tmp/ccM7BG9e.s 			page 174


 9862 6332 4A46     		mov	r2, r9
 9863 6334 3946     		mov	r1, r7
 9864 6336 2846     		mov	r0, r5
 9865 6338 C9F80060 		str	r6, [r9]
 9866 633c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 9867 6340 D9F80030 		ldr	r3, [r9]
 9868 6344 002B     		cmp	r3, #0
 9869 6346 00F08F81 		beq	.L492
 9870 634a 0026     		movs	r6, #0
 9871 634c DFF8B8A3 		ldr	r10, .L1983+84
 9872 6350 00E0     		b	.L493
 9873              	.L501:
 9874 6352 0136     		adds	r6, r6, #1
 9875              	.L493:
 9876 6354 D9F80030 		ldr	r3, [r9]
 9877 6358 B342     		cmp	r3, r6
 9878 635a 7BF656A9 		bls	.L502
 9879 635e 57F82630 		ldr	r3, [r7, r6, lsl #2]
 9880 6362 012B     		cmp	r3, #1
 9881 6364 F5D8     		bhi	.L501
 9882 6366 DAF80C00 		ldr	r0, [r10, #12]
 9883 636a 0344     		add	r3, r3, r0
 9884 636c 0122     		movs	r2, #1
 9885 636e 93F9D630 		ldrsb	r3, [r3, #214]
 9886 6372 002B     		cmp	r3, #0
 9887 6374 1946     		mov	r1, r3
 9888 6376 ECDB     		blt	.L501
 9889 6378 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 9890 637c 0028     		cmp	r0, #0
 9891 637e E8D1     		bne	.L501
 9892 6380 96E7     		b	.L499
 9893              	.L387:
 9894 6382 CC49     		ldr	r1, .L1983
 9895 6384 4046     		mov	r0, r8
 9896 6386 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9897 638a FFF7EEBA 		b	.L388
 9898              	.L1802:
 9899 638e CA49     		ldr	r1, .L1983+4
 9900 6390 4046     		mov	r0, r8
 9901 6392 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9902 6396 0226     		movs	r6, #2
 9903 6398 FAF76DBE 		b	.L186
 9904              	.L1801:
 9905 639c 2068     		ldr	r0, [r4]
 9906 639e FFF7FEFF 		bl	_ZNK8Platform9IsPowerOkEv
 9907 63a2 0028     		cmp	r0, #0
 9908 63a4 40F04181 		bne	.L390
 9909 63a8 C449     		ldr	r1, .L1983+8
 9910 63aa 4046     		mov	r0, r8
 9911 63ac FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9912 63b0 0226     		movs	r6, #2
 9913 63b2 FAF760BE 		b	.L186
 9914              	.L1819:
 9915 63b6 3A46     		mov	r2, r7
 9916 63b8 3146     		mov	r1, r6
 9917 63ba DBF80C00 		ldr	r0, [fp, #12]
 9918 63be FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
ARM GAS  /tmp/ccM7BG9e.s 			page 175


 9919 63c2 0028     		cmp	r0, #0
 9920 63c4 7BF421A9 		bne	.L502
 9921 63c8 72E7     		b	.L499
 9922              	.L1922:
 9923 63ca BD49     		ldr	r1, .L1983+12
 9924 63cc 4046     		mov	r0, r8
 9925 63ce FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 9926 63d2 0226     		movs	r6, #2
 9927 63d4 FAF74FBE 		b	.L186
 9928              	.L1929:
 9929 63d8 BA49     		ldr	r1, .L1983+16
 9930 63da 4046     		mov	r0, r8
 9931 63dc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9932 63e0 0226     		movs	r6, #2
 9933 63e2 FAF748BE 		b	.L186
 9934              	.L1770:
 9935 63e6 DFEDB87A 		vldr.32	s15, .L1983+20
 9936 63ea B4EE670A 		vcmp.f32	s0, s15
 9937 63ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9938 63f2 C8BF     		it	gt
 9939 63f4 B0EE670A 		vmovgt.f32	s0, s15
 9940 63f8 68E5     		b	.L645
 9941              	.L1930:
 9942 63fa 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 9943 63fc 9FEDB30A 		vldr.32	s0, .L1983+24
 9944 6400 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 9945 6404 002B     		cmp	r3, #0
 9946 6406 F7EE007A 		vmov.f32	s15, #1.0e+0
 9947 640a 18BF     		it	ne
 9948 640c B0EE670A 		vmovne.f32	s0, s15
 9949 6410 3221     		movs	r1, #50
 9950 6412 FFF7FEFF 		bl	_ZN6IoPort11WriteAnalogEhft
 9951 6416 FCF7FCBC 		b	.L637
 9952              	.L1841:
 9953 641a 5446     		mov	r4, r10
 9954              	.L490:
 9955 641c 4321     		movs	r1, #67
 9956 641e 2846     		mov	r0, r5
 9957 6420 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9958 6424 0028     		cmp	r0, #0
 9959 6426 3BF4F0A8 		beq	.L502
 9960 642a 80E7     		b	.L488
 9961              	.L1910:
 9962 642c 2046     		mov	r0, r4
 9963 642e FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 9964 6432 0028     		cmp	r0, #0
 9965 6434 3FF4FAAD 		beq	.L334
 9966 6438 0096     		str	r6, [sp]
 9967 643a 3346     		mov	r3, r6
 9968 643c A44A     		ldr	r2, .L1983+28
 9969 643e 2946     		mov	r1, r5
 9970 6440 2046     		mov	r0, r4
 9971 6442 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 9972 6446 0028     		cmp	r0, #0
 9973 6448 7AF49AAE 		bne	.L331
 9974 644c EEE5     		b	.L334
 9975              	.L1908:
ARM GAS  /tmp/ccM7BG9e.s 			page 176


 9976 644e FFF7FEFF 		bl	sqrtf
 9977 6452 FEF7DBB8 		b	.L557
 9978              	.L1921:
 9979 6456 0121     		movs	r1, #1
 9980 6458 2046     		mov	r0, r4
 9981 645a FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 9982 645e 0126     		movs	r6, #1
 9983 6460 FAF709BE 		b	.L186
 9984              	.L427:
 9985 6464 4621     		movs	r1, #70
 9986 6466 2846     		mov	r0, r5
 9987 6468 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9988 646c 0028     		cmp	r0, #0
 9989 646e 7DF49BA9 		bne	.L974
 9990 6472 B5EE408A 		vcmp.f32	s16, #0
 9991 6476 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9992 647a 3FF4A0AC 		beq	.L434
 9993 647e F7EE007A 		vmov.f32	s15, #1.0e+0
 9994 6482 B4EE678A 		vcmp.f32	s16, s15
 9995 6486 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9996 648a 3FF498AC 		beq	.L434
 9997              	.L1008:
 9998 648e 4FF4FA76 		mov	r6, #500
 9999 6492 FDF795B9 		b	.L433
 10000              	.L1932:
 10001 6496 8F49     		ldr	r1, .L1983+32
 10002 6498 3B46     		mov	r3, r7
 10003 649a 3246     		mov	r2, r6
 10004 649c 4046     		mov	r0, r8
 10005 649e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10006 64a2 5221     		movs	r1, #82
 10007 64a4 2846     		mov	r0, r5
 10008 64a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10009 64aa 0028     		cmp	r0, #0
 10010 64ac 3DF43DA8 		beq	.L533
 10011 64b0 FFF74BBB 		b	.L538
 10012              	.L823:
 10013 64b4 4321     		movs	r1, #67
 10014 64b6 2846     		mov	r0, r5
 10015 64b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9SeenParamEc
 10016 64bc 0028     		cmp	r0, #0
 10017 64be 7FF450AE 		bne	.L968
 10018 64c2 002F     		cmp	r7, #0
 10019 64c4 7AF45CAE 		bne	.L331
 10020 64c8 5CAF     		add	r7, sp, #368
 10021 64ca 3A46     		mov	r2, r7
 10022 64cc 3146     		mov	r1, r6
 10023 64ce 2068     		ldr	r0, [r4]
 10024 64d0 DFF838A2 		ldr	r10, .L1983+88
 10025 64d4 FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEjPf
 10026 64d8 2268     		ldr	r2, [r4]
 10027 64da 7F48     		ldr	r0, .L1983+36
 10028 64dc 7F4B     		ldr	r3, .L1983+40
 10029 64de 8049     		ldr	r1, .L1983+44
 10030 64e0 3244     		add	r2, r2, r6
 10031 64e2 92F8D0C0 		ldrb	ip, [r2, #208]	@ zero_extendqisi2
 10032 64e6 92F9E890 		ldrsb	r9, [r2, #232]
ARM GAS  /tmp/ccM7BG9e.s 			page 177


 10033 64ea 92F8F420 		ldrb	r2, [r2, #244]	@ zero_extendqisi2
 10034 64ee 0A92     		str	r2, [sp, #40]
 10035 64f0 BCF1000F 		cmp	ip, #0
 10036 64f4 18BF     		it	ne
 10037 64f6 8246     		movne	r10, r0
 10038 64f8 F868     		ldr	r0, [r7, #12]	@ float
 10039 64fa B9F1000F 		cmp	r9, #0
 10040 64fe 0CBF     		ite	eq
 10041 6500 9946     		moveq	r9, r3
 10042 6502 8946     		movne	r9, r1
 10043 6504 FFF7FEFF 		bl	__aeabi_f2d
 10044 6508 CDE90801 		strd	r0, [sp, #32]
 10045 650c B868     		ldr	r0, [r7, #8]	@ float
 10046 650e FFF7FEFF 		bl	__aeabi_f2d
 10047 6512 CDE90601 		strd	r0, [sp, #24]
 10048 6516 7868     		ldr	r0, [r7, #4]	@ float
 10049 6518 FFF7FEFF 		bl	__aeabi_f2d
 10050 651c CDE90401 		strd	r0, [sp, #16]
 10051 6520 3868     		ldr	r0, [r7]	@ float
 10052 6522 FFF7FEFF 		bl	__aeabi_f2d
 10053 6526 5346     		mov	r3, r10
 10054 6528 CDE90201 		strd	r0, [sp, #8]
 10055 652c CDF80090 		str	r9, [sp]
 10056 6530 3246     		mov	r2, r6
 10057 6532 6C49     		ldr	r1, .L1983+48
 10058 6534 4046     		mov	r0, r8
 10059 6536 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10060 653a 2368     		ldr	r3, [r4]
 10061 653c D3F8C433 		ldr	r3, [r3, #964]
 10062 6540 9E42     		cmp	r6, r3
 10063 6542 0ED2     		bcs	.L828
 10064 6544 3046     		mov	r0, r6
 10065 6546 FFF7FEFF 		bl	_ZN12SmartDrivers13GetDriverModeEj
 10066 654a FFF7FEFF 		bl	_Z19TranslateDriverModej
 10067 654e 0746     		mov	r7, r0
 10068 6550 3046     		mov	r0, r6
 10069 6552 FFF7FEFF 		bl	_ZN12SmartDrivers25GetChopperControlRegisterEj
 10070 6556 3A46     		mov	r2, r7
 10071 6558 0346     		mov	r3, r0
 10072 655a 6349     		ldr	r1, .L1983+52
 10073 655c 4046     		mov	r0, r8
 10074 655e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 10075              	.L828:
 10076 6562 0126     		movs	r6, #1
 10077 6564 FAF787BD 		b	.L186
 10078              	.L1933:
 10079 6568 2068     		ldr	r0, [r4]
 10080 656a 8319     		adds	r3, r0, r6
 10081 656c 93F8F410 		ldrb	r1, [r3, #244]	@ zero_extendqisi2
 10082 6570 FFF7FEFF 		bl	_ZN8Platform22UnregisterI2cAddrUsageEh
 10083 6574 2846     		mov	r0, r5
 10084 6576 FFF7FEFF 		bl	_ZN11GCodeBuffer18GetUIValueMaybeHexEv
 10085 657a C7B2     		uxtb	r7, r0
 10086 657c 3946     		mov	r1, r7
 10087 657e 2068     		ldr	r0, [r4]
 10088 6580 FFF7FEFF 		bl	_ZN8Platform20RegisterI2cAddrUsageEh
 10089 6584 0128     		cmp	r0, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 178


 10090 6586 0246     		mov	r2, r0
 10091 6588 49D8     		bhi	.L1936
 10092              	.L822:
 10093 658a 3A46     		mov	r2, r7
 10094 658c 3146     		mov	r1, r6
 10095 658e 2068     		ldr	r0, [r4]
 10096 6590 FFF7FEFF 		bl	_ZN8Platform14SetExternalI2CEjh
 10097 6594 4F46     		mov	r7, r9
 10098 6596 CBE5     		b	.L821
 10099              	.L995:
 10100 6598 5646     		mov	r6, r10
 10101 659a B246     		mov	r10, r6
 10102 659c FDF7B6BD 		b	.L347
 10103              	.L1859:
 10104 65a0 3946     		mov	r1, r7
 10105 65a2 2068     		ldr	r0, [r4]
 10106 65a4 FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 10107 65a8 3946     		mov	r1, r7
 10108 65aa 0646     		mov	r6, r0
 10109 65ac 2068     		ldr	r0, [r4]
 10110 65ae FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 10111 65b2 4E4B     		ldr	r3, .L1983+56
 10112 65b4 4E49     		ldr	r1, .L1983+60
 10113 65b6 16F0010F 		tst	r6, #1
 10114 65ba 18BF     		it	ne
 10115 65bc 1946     		movne	r1, r3
 10116 65be 0091     		str	r1, [sp]
 10117 65c0 0346     		mov	r3, r0
 10118 65c2 3A46     		mov	r2, r7
 10119 65c4 4B49     		ldr	r1, .L1983+64
 10120 65c6 4046     		mov	r0, r8
 10121 65c8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10122 65cc 0126     		movs	r6, #1
 10123 65ce FAF752BD 		b	.L186
 10124              	.L1865:
 10125 65d2 04F1B402 		add	r2, r4, #180
 10126 65d6 3946     		mov	r1, r7
 10127 65d8 2046     		mov	r0, r4
 10128 65da FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 10129 65de FCF7E7BB 		b	.L909
 10130              	.L864:
 10131 65e2 A36C     		ldr	r3, [r4, #72]
 10132 65e4 1B68     		ldr	r3, [r3]
 10133 65e6 06F00106 		and	r6, r6, #1
 10134 65ea 83F8EE60 		strb	r6, [r3, #238]
 10135 65ee 2368     		ldr	r3, [r4]
 10136 65f0 3E46     		mov	r6, r7
 10137 65f2 83F89879 		strb	r7, [r3, #2456]
 10138 65f6 FAF73EBD 		b	.L186
 10139              	.L1928:
 10140 65fa 2846     		mov	r0, r5
 10141 65fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10142 6600 FFF7F6BB 		b	.L886
 10143              	.L1927:
 10144 6604 2846     		mov	r0, r5
 10145 6606 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 10146 660a 8146     		mov	r9, r0
ARM GAS  /tmp/ccM7BG9e.s 			page 179


 10147 660c FFF7E7BB 		b	.L885
 10148              	.L372:
 10149 6610 3949     		ldr	r1, .L1983+68
 10150 6612 DBF80000 		ldr	r0, [fp]
 10151 6616 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 10152 661a FFF780B9 		b	.L363
 10153              	.L1936:
 10154 661e 3B46     		mov	r3, r7
 10155 6620 3649     		ldr	r1, .L1983+72
 10156 6622 4046     		mov	r0, r8
 10157 6624 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10158 6628 AFE7     		b	.L822
 10159              	.L390:
 10160 662a AB68     		ldr	r3, [r5, #8]
 10161 662c 1122     		movs	r2, #17
 10162 662e 1A75     		strb	r2, [r3, #20]
 10163 6630 2046     		mov	r0, r4
 10164 6632 FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 10165 6636 0028     		cmp	r0, #0
 10166 6638 3AF4A2AD 		beq	.L331
 10167 663c 0096     		str	r6, [sp]
 10168 663e 0123     		movs	r3, #1
 10169 6640 2F4A     		ldr	r2, .L1983+76
 10170 6642 2946     		mov	r1, r5
 10171 6644 2046     		mov	r0, r4
 10172 6646 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10173 664a 0126     		movs	r6, #1
 10174 664c FAF713BD 		b	.L186
 10175              	.L1934:
 10176 6650 3846     		mov	r0, r7
 10177 6652 FFF7FEFF 		bl	_Z19TranslateDriverModej
 10178 6656 3246     		mov	r2, r6
 10179 6658 0346     		mov	r3, r0
 10180 665a 2A49     		ldr	r1, .L1983+80
 10181 665c 4046     		mov	r0, r8
 10182 665e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10183 6662 0226     		movs	r6, #2
 10184 6664 FAF707BD 		b	.L186
 10185              	.L492:
 10186 6668 DFF89CB0 		ldr	fp, .L1983+84
 10187 666c DBF80C00 		ldr	r0, [fp, #12]
 10188 6670 90F9D610 		ldrsb	r1, [r0, #214]
 10189 6674 0029     		cmp	r1, #0
 10190 6676 16DA     		bge	.L495
 10191              	.L498:
 10192 6678 DBF80C00 		ldr	r0, [fp, #12]
 10193 667c 90F9D710 		ldrsb	r1, [r0, #215]
 10194 6680 0029     		cmp	r1, #0
 10195 6682 FAF6C2AF 		blt	.L502
 10196 6686 0122     		movs	r2, #1
 10197 6688 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 10198 668c 0028     		cmp	r0, #0
 10199 668e 7AF4BCAF 		bne	.L502
 10200 6692 0DE6     		b	.L499
 10201              	.L1926:
 10202 6694 4621     		movs	r1, #70
 10203 6696 2846     		mov	r0, r5
ARM GAS  /tmp/ccM7BG9e.s 			page 180


 10204 6698 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10205 669c 0028     		cmp	r0, #0
 10206 669e 3FF4F6AE 		beq	.L1008
 10207 66a2 FDF781B8 		b	.L974
 10208              	.L495:
 10209 66a6 0122     		movs	r2, #1
 10210 66a8 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 10211 66ac 0028     		cmp	r0, #0
 10212 66ae E3D1     		bne	.L498
 10213 66b0 FEE5     		b	.L499
 10214              	.L1984:
 10215 66b2 00BF     		.align	2
 10216              	.L1983:
 10217 66b4 34030000 		.word	.LC62
 10218 66b8 9C030000 		.word	.LC66
 10219 66bc 64030000 		.word	.LC64
 10220 66c0 C0070000 		.word	.LC103
 10221 66c4 BC0E0000 		.word	.LC158
 10222 66c8 00001645 		.word	1159069696
 10223 66cc 00000000 		.word	0
 10224 66d0 2C020000 		.word	.LC51
 10225 66d4 DC070000 		.word	.LC104
 10226 66d8 D4000000 		.word	.LC31
 10227 66dc F4000000 		.word	.LC34
 10228 66e0 EC000000 		.word	.LC33
 10229 66e4 14110000 		.word	.LC178
 10230 66e8 70110000 		.word	.LC179
 10231 66ec 7C010000 		.word	.LC45
 10232 66f0 88010000 		.word	.LC46
 10233 66f4 20130000 		.word	.LC191
 10234 66f8 C8020000 		.word	.LC59
 10235 66fc A0100000 		.word	.LC176
 10236 6700 90030000 		.word	.LC65
 10237 6704 EC100000 		.word	.LC177
 10238 6708 00000000 		.word	reprap
 10239 670c E0000000 		.word	.LC32
 10240              	.L1804:
 10241 6710 236C     		ldr	r3, [r4, #64]
 10242 6712 AF68     		ldr	r7, [r5, #8]
 10243 6714 1868     		ldr	r0, [r3]
 10244 6716 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10245 671a 3A7E     		ldrb	r2, [r7, #24]	@ zero_extendqisi2
 10246 671c 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 10247 671e 62F30003 		bfi	r3, r2, #0, #1
 10248 6722 0376     		strb	r3, [r0, #24]
 10249 6724 236C     		ldr	r3, [r4, #64]
 10250 6726 AF68     		ldr	r7, [r5, #8]
 10251 6728 1868     		ldr	r0, [r3]
 10252 672a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10253 672e 7B68     		ldr	r3, [r7, #4]	@ float
 10254 6730 4360     		str	r3, [r0, #4]	@ float
 10255 6732 236C     		ldr	r3, [r4, #64]
 10256 6734 AF68     		ldr	r7, [r5, #8]
 10257 6736 1868     		ldr	r0, [r3]
 10258 6738 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 10259 673c 3B7E     		ldrb	r3, [r7, #24]	@ zero_extendqisi2
 10260 673e 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
ARM GAS  /tmp/ccM7BG9e.s 			page 181


 10261 6740 C3F38013 		ubfx	r3, r3, #6, #1
 10262 6744 63F38612 		bfi	r2, r3, #6, #1
 10263 6748 0276     		strb	r2, [r0, #24]
 10264 674a D4F84814 		ldr	r1, [r4, #1096]
 10265 674e D4F84404 		ldr	r0, [r4, #1092]
 10266 6752 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 10267 6756 D4F85C31 		ldr	r3, [r4, #348]	@ float
 10268 675a C4F86031 		str	r3, [r4, #352]	@ float
 10269 675e FAF74DBD 		b	.L393
 10270              	.L1803:
 10271 6762 0349     		ldr	r1, .L1985
 10272 6764 4046     		mov	r0, r8
 10273 6766 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10274 676a 0226     		movs	r6, #2
 10275 676c FAF783BC 		b	.L186
 10276              	.L1986:
 10277              		.align	2
 10278              	.L1985:
 10279 6770 C8030000 		.word	.LC67
 10280              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBuffer
 10281              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 10282              		.align	1
 10283              		.p2align 2,,3
 10284              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 10285              		.syntax unified
 10286              		.thumb
 10287              		.thumb_func
 10288              		.fpu fpv4-sp-d16
 10289              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, %function
 10290              	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef:
 10291              		@ args = 0, pretend = 0, frame = 0
 10292              		@ frame_needed = 0, uses_anonymous_args = 0
 10293 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 10294 0002 0646     		mov	r6, r0
 10295 0004 0846     		mov	r0, r1
 10296 0006 0C46     		mov	r4, r1
 10297 0008 1546     		mov	r5, r2
 10298 000a FFF7FEFF 		bl	_ZNK11GCodeBuffer13CanQueueCodesEv
 10299 000e E8B9     		cbnz	r0, .L2012
 10300              	.L1988:
 10301 0010 94F84C30 		ldrb	r3, [r4, #76]	@ zero_extendqisi2
 10302 0014 4D2B     		cmp	r3, #77
 10303 0016 2FD0     		beq	.L1991
 10304 0018 542B     		cmp	r3, #84
 10305 001a 10D0     		beq	.L1992
 10306 001c 472B     		cmp	r3, #71
 10307 001e 20D0     		beq	.L2013
 10308              	.L1990:
 10309 0020 04F14D02 		add	r2, r4, #77
 10310 0024 2549     		ldr	r1, .L2016
 10311 0026 2846     		mov	r0, r5
 10312 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10313 002c 2B68     		ldr	r3, [r5]
 10314 002e 2146     		mov	r1, r4
 10315 0030 3046     		mov	r0, r6
 10316 0032 0222     		movs	r2, #2
 10317 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
ARM GAS  /tmp/ccM7BG9e.s 			page 182


 10318 0038 0127     		movs	r7, #1
 10319              	.L1989:
 10320 003a 3846     		mov	r0, r7
 10321 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 10322              	.L1992:
 10323 003e A368     		ldr	r3, [r4, #8]
 10324 0040 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 10325 0042 9B06     		lsls	r3, r3, #26
 10326 0044 23D5     		bpl	.L2014
 10327 0046 0127     		movs	r7, #1
 10328 0048 3846     		mov	r0, r7
 10329 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 10330              	.L2012:
 10331 004c 2046     		mov	r0, r4
 10332 004e FFF7FEFF 		bl	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
 10333 0052 0028     		cmp	r0, #0
 10334 0054 DCD0     		beq	.L1988
 10335 0056 D6F85031 		ldr	r3, [r6, #336]
 10336 005a FBB1     		cbz	r3, .L2015
 10337 005c 0027     		movs	r7, #0
 10338 005e 3846     		mov	r0, r7
 10339 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 10340              	.L2013:
 10341 0062 94F84B30 		ldrb	r3, [r4, #75]	@ zero_extendqisi2
 10342 0066 002B     		cmp	r3, #0
 10343 0068 DAD0     		beq	.L1990
 10344 006a 2A46     		mov	r2, r5
 10345 006c 2146     		mov	r1, r4
 10346 006e 3046     		mov	r0, r6
 10347 0070 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10348 0074 FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef
 10349              	.L1991:
 10350 0078 94F84B30 		ldrb	r3, [r4, #75]	@ zero_extendqisi2
 10351 007c 002B     		cmp	r3, #0
 10352 007e CFD0     		beq	.L1990
 10353 0080 2A46     		mov	r2, r5
 10354 0082 2146     		mov	r1, r4
 10355 0084 3046     		mov	r0, r6
 10356 0086 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10357 008a FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef
 10358              	.L2014:
 10359 008e 2A46     		mov	r2, r5
 10360 0090 2146     		mov	r1, r4
 10361 0092 3046     		mov	r0, r6
 10362 0094 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 10363 0098 FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47
 10364              	.L2015:
 10365 009c 2146     		mov	r1, r4
 10366 009e D6F8F805 		ldr	r0, [r6, #1528]
 10367 00a2 FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 10368 00a6 0746     		mov	r7, r0
 10369 00a8 0028     		cmp	r0, #0
 10370 00aa B1D0     		beq	.L1988
 10371 00ac 2146     		mov	r1, r4
 10372 00ae 3046     		mov	r0, r6
 10373 00b0 034B     		ldr	r3, .L2016+4
 10374 00b2 0122     		movs	r2, #1
ARM GAS  /tmp/ccM7BG9e.s 			page 183


 10375 00b4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 10376 00b8 BFE7     		b	.L1989
 10377              	.L2017:
 10378 00ba 00BF     		.align	2
 10379              	.L2016:
 10380 00bc 00000000 		.word	.LC216
 10381 00c0 A0000000 		.word	.LC25
 10382              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferRK9Str
 10383              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 10384              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 10385              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 10386              	_ZL28cpu_irq_prev_interrupt_state:
 10387 0000 00       		.space	1
 10388              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 10389              		.align	2
 10390              		.type	_ZL32cpu_irq_critical_section_counter, %object
 10391              		.size	_ZL32cpu_irq_critical_section_counter, 4
 10392              	_ZL32cpu_irq_critical_section_counter:
 10393 0000 00000000 		.space	4
 10394              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 10395              		.align	2
 10396              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 10397              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 10398              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 10399 0000 00000000 		.space	4
 10400              		.section	.rodata._ZN6GCodes11HandleGcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10401              		.align	2
 10402              	.LC7:
 10403 0000 496E7375 		.ascii	"Insufficient axes homed for bed probing\000"
 10403      66666963 
 10403      69656E74 
 10403      20617865 
 10403      7320686F 
 10404              	.LC8:
 10405 0028 6265642E 		.ascii	"bed.g\000"
 10405      6700
 10406              		.section	.rodata._ZN6GCodes11HandleMcodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 10407              		.align	2
 10408              	.LC9:
 10409 0000 736C6565 		.ascii	"sleep.g\000"
 10409      702E6700 
 10410              	.LC10:
 10411 0008 73746F70 		.ascii	"stop.g\000"
 10411      2E6700
 10412 000f 00       		.space	1
 10413              	.LC11:
 10414 0010 6F6E00   		.ascii	"on\000"
 10415 0013 00       		.space	1
 10416              	.LC12:
 10417 0014 6F666600 		.ascii	"off\000"
 10418              	.LC13:
 10419 0018 62656400 		.ascii	"bed\000"
 10420              	.LC14:
 10421 001c 6368616D 		.ascii	"chamber\000"
 10421      62657200 
 10422              	.LC15:
 10423 0024 616C6C6F 		.ascii	"allowed\000"
ARM GAS  /tmp/ccM7BG9e.s 			page 184


 10423      77656400 
 10424              	.LC16:
 10425 002c 64656E69 		.ascii	"denied\000"
 10425      656400
 10426 0033 00       		.space	1
 10427              	.LC17:
 10428 0034 50494400 		.ascii	"PID\000"
 10429              	.LC18:
 10430 0038 62616E67 		.ascii	"bang-bang\000"
 10430      2D62616E 
 10430      6700
 10431 0042 0000     		.space	2
 10432              	.LC19:
 10433 0044 63757374 		.ascii	"custom PID\000"
 10433      6F6D2050 
 10433      494400
 10434 004f 00       		.space	1
 10435              	.LC20:
 10436 0050 74656D70 		.ascii	"temperature control\000"
 10436      65726174 
 10436      75726520 
 10436      636F6E74 
 10436      726F6C00 
 10437              	.LC21:
 10438 0064 6E6F00   		.ascii	"no\000"
 10439 0067 00       		.space	1
 10440              	.LC22:
 10441 0068 50574D20 		.ascii	"PWM signal\000"
 10441      7369676E 
 10441      616C00
 10442 0073 00       		.space	1
 10443              	.LC23:
 10444 0074 50574D20 		.ascii	"PWM signal and temperature control\000"
 10444      7369676E 
 10444      616C2061 
 10444      6E642074 
 10444      656D7065 
 10445 0097 00       		.space	1
 10446              	.LC24:
 10447 0098 286F6E29 		.ascii	"(on)\000"
 10447      00
 10448 009d 000000   		.space	3
 10449              	.LC25:
 10450 00a0 00       		.ascii	"\000"
 10451 00a1 000000   		.space	3
 10452              	.LC26:
 10453 00a4 636F6E66 		.ascii	"config.g\000"
 10453      69672E67 
 10453      00
 10454 00ad 000000   		.space	3
 10455              	.LC27:
 10456 00b0 303A2F73 		.ascii	"0:/sys/\000"
 10456      79732F00 
 10457              	.LC28:
 10458 00b8 72657072 		.ascii	"reprap.htm\000"
 10458      61702E68 
 10458      746D00
ARM GAS  /tmp/ccM7BG9e.s 			page 185


 10459 00c3 00       		.space	1
 10460              	.LC29:
 10461 00c4 303A2F77 		.ascii	"0:/www/\000"
 10461      77772F00 
 10462              	.LC30:
 10463 00cc 6E6F7420 		.ascii	"not \000"
 10463      00
 10464 00d1 000000   		.space	3
 10465              	.LC31:
 10466 00d4 666F7277 		.ascii	"forwards\000"
 10466      61726473 
 10466      00
 10467 00dd 000000   		.space	3
 10468              	.LC32:
 10469 00e0 696E2072 		.ascii	"in reverse\000"
 10469      65766572 
 10469      736500
 10470 00eb 00       		.space	1
 10471              	.LC33:
 10472 00ec 68696768 		.ascii	"high\000"
 10472      00
 10473 00f1 000000   		.space	3
 10474              	.LC34:
 10475 00f4 6C6F7700 		.ascii	"low\000"
 10476              	.LC35:
 10477 00f8 696E7665 		.ascii	"inverted\000"
 10477      72746564 
 10477      00
 10478 0101 000000   		.space	3
 10479              	.LC36:
 10480 0104 6E6F7420 		.ascii	"not inverted\000"
 10480      696E7665 
 10480      72746564 
 10480      00
 10481 0111 000000   		.space	3
 10482              	.LC37:
 10483 0114 6E6F6E65 		.ascii	"none\000"
 10483      00
 10484 0119 000000   		.space	3
 10485              	.LC38:
 10486 011c 68696768 		.ascii	"high end\000"
 10486      20656E64 
 10486      00
 10487 0125 000000   		.space	3
 10488              	.LC39:
 10489 0128 6C6F7720 		.ascii	"low end\000"
 10489      656E6400 
 10490              	.LC40:
 10491 0130 61637469 		.ascii	"active low switch\000"
 10491      7665206C 
 10491      6F772073 
 10491      77697463 
 10491      6800
 10492 0142 0000     		.space	2
 10493              	.LC41:
 10494 0144 61637469 		.ascii	"active high switch\000"
 10494      76652068 
ARM GAS  /tmp/ccM7BG9e.s 			page 186


 10494      69676820 
 10494      73776974 
 10494      636800
 10495 0157 00       		.space	1
 10496              	.LC42:
 10497 0158 5A207072 		.ascii	"Z probe\000"
 10497      6F626500 
 10498              	.LC43:
 10499 0160 756E6B6E 		.ascii	"unknown type\000"
 10499      6F776E20 
 10499      74797065 
 10499      00
 10500 016d 000000   		.space	3
 10501              	.LC44:
 10502 0170 6D6F746F 		.ascii	"motor stall\000"
 10502      72207374 
 10502      616C6C00 
 10503              	.LC45:
 10504 017c 72657175 		.ascii	"requires\000"
 10504      69726573 
 10504      00
 10505 0185 000000   		.space	3
 10506              	.LC46:
 10507 0188 646F6573 		.ascii	"does not require\000"
 10507      206E6F74 
 10507      20726571 
 10507      75697265 
 10507      00
 10508 0199 000000   		.space	3
 10509              	.LC47:
 10510 019c 4D6F746F 		.ascii	"Motor current (mA) - \000"
 10510      72206375 
 10510      7272656E 
 10510      7420286D 
 10510      4129202D 
 10511 01b2 0000     		.space	2
 10512              	.LC48:
 10513 01b4 4D6F746F 		.ascii	"Motor current % of normal - \000"
 10513      72206375 
 10513      7272656E 
 10513      74202520 
 10513      6F66206E 
 10514 01d1 000000   		.space	3
 10515              	.LC49:
 10516 01d4 4D6F746F 		.ascii	"Motor standstill current % of normal - \000"
 10516      72207374 
 10516      616E6473 
 10516      74696C6C 
 10516      20637572 
 10517              	.LC50:
 10518 01fc 50617573 		.ascii	"Pause the print before attempting to cancel it\000"
 10518      65207468 
 10518      65207072 
 10518      696E7420 
 10518      6265666F 
 10519 022b 00       		.space	1
 10520              	.LC51:
ARM GAS  /tmp/ccM7BG9e.s 			page 187


 10521 022c 63616E63 		.ascii	"cancel.g\000"
 10521      656C2E67 
 10521      00
 10522 0235 000000   		.space	3
 10523              	.LC52:
 10524 0238 496E7661 		.ascii	"Invalid spindle index\000"
 10524      6C696420 
 10524      7370696E 
 10524      646C6520 
 10524      696E6465 
 10525 024e 0000     		.space	2
 10526              	.LC53:
 10527 0250 496E7661 		.ascii	"Invalid extruder number specified: %lu\000"
 10527      6C696420 
 10527      65787472 
 10527      75646572 
 10527      206E756D 
 10528 0277 00       		.space	1
 10529              	.LC54:
 10530 0278 49646C65 		.ascii	"Idle timeouts cannot be negative\000"
 10530      2074696D 
 10530      656F7574 
 10530      73206361 
 10530      6E6E6F74 
 10531 0299 000000   		.space	3
 10532              	.LC55:
 10533 029c 303A2F67 		.ascii	"0:/gcodes/\000"
 10533      636F6465 
 10533      732F00
 10534 02a7 00       		.space	1
 10535              	.LC56:
 10536 02a8 47436F64 		.ascii	"GCode files:\012\000"
 10536      65206669 
 10536      6C65733A 
 10536      0A00
 10537 02b6 0000     		.space	2
 10538              	.LC57:
 10539 02b8 25632573 		.ascii	"%c%s%c%c\000"
 10539      25632563 
 10539      00
 10540 02c1 000000   		.space	3
 10541              	.LC58:
 10542 02c4 25730A00 		.ascii	"%s\012\000"
 10543              	.LC59:
 10544 02c8 4E4F4E45 		.ascii	"NONE\012\000"
 10544      0A00
 10545 02ce 0000     		.space	2
 10546              	.LC60:
 10547 02d0 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 10547      6F742073 
 10547      65742066 
 10547      696C6520 
 10547      746F2070 
 10548 0303 20626569 		.ascii	" being printed\000"
 10548      6E672070 
 10548      72696E74 
 10548      656400
ARM GAS  /tmp/ccM7BG9e.s 			page 188


 10549 0312 0000     		.space	2
 10550              	.LC61:
 10551 0314 46696C65 		.ascii	"File %s selected for printing\000"
 10551      20257320 
 10551      73656C65 
 10551      63746564 
 10551      20666F72 
 10552 0332 0000     		.space	2
 10553              	.LC62:
 10554 0334 46696C65 		.ascii	"File opened\012File selected\000"
 10554      206F7065 
 10554      6E65640A 
 10554      46696C65 
 10554      2073656C 
 10555 034e 0000     		.space	2
 10556              	.LC63:
 10557 0350 46696C65 		.ascii	"Filename expected\000"
 10557      6E616D65 
 10557      20657870 
 10557      65637465 
 10557      6400
 10558 0362 0000     		.space	2
 10559              	.LC64:
 10560 0364 43616E6E 		.ascii	"Cannot resume while power voltage is low\000"
 10560      6F742072 
 10560      6573756D 
 10560      65207768 
 10560      696C6520 
 10561 038d 000000   		.space	3
 10562              	.LC65:
 10563 0390 72657375 		.ascii	"resume.g\000"
 10563      6D652E67 
 10563      00
 10564 0399 000000   		.space	3
 10565              	.LC66:
 10566 039c 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 10566      6F742070 
 10566      72696E74 
 10566      2C206265 
 10566      63617573 
 10567 03c7 00       		.space	1
 10568              	.LC67:
 10569 03c8 43616E6E 		.ascii	"Cannot start a print while power voltage is low\000"
 10569      6F742073 
 10569      74617274 
 10569      20612070 
 10569      72696E74 
 10570              	.LC68:
 10571 03f8 5072696E 		.ascii	"Printing is already paused!!\000"
 10571      74696E67 
 10571      20697320 
 10571      616C7265 
 10571      61647920 
 10572 0415 000000   		.space	3
 10573              	.LC69:
 10574 0418 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 10574      6F742070 
ARM GAS  /tmp/ccM7BG9e.s 			page 189


 10574      61757365 
 10574      20707269 
 10574      6E742C20 
 10575 044b 642100   		.ascii	"d!\000"
 10576 044e 0000     		.space	2
 10577              	.LC70:
 10578 0450 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 10578      72696E74 
 10578      696E6720 
 10578      62797465 
 10578      20256C75 
 10579 0469 000000   		.space	3
 10580              	.LC71:
 10581 046c 4E6F7420 		.ascii	"Not SD printing.\000"
 10581      53442070 
 10581      72696E74 
 10581      696E672E 
 10581      00
 10582 047d 000000   		.space	3
 10583              	.LC72:
 10584 0480 57726974 		.ascii	"Writing to file: %s\000"
 10584      696E6720 
 10584      746F2066 
 10584      696C653A 
 10584      20257300 
 10585              	.LC73:
 10586 0494 43616E27 		.ascii	"Can't open file %s for writing.\000"
 10586      74206F70 
 10586      656E2066 
 10586      696C6520 
 10586      25732066 
 10587              	.LC74:
 10588 04b4 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
 10588      6520656E 
 10588      642D6F66 
 10588      2D66696C 
 10588      65206265 
 10589 04d9 000000   		.space	3
 10590              	.LC75:
 10591 04dc 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 10591      6C617469 
 10591      6F6E206D 
 10591      6F64653A 
 10591      2025732C 
 10592 050f 653A2025 		.ascii	"e: %.1f sec\000"
 10592      2E316620 
 10592      73656300 
 10593 051b 00       		.space	1
 10594              	.LC76:
 10595 051c 43616E6E 		.ascii	"Cannot open file: %s\000"
 10595      6F74206F 
 10595      70656E20 
 10595      66696C65 
 10595      3A202573 
 10596 0531 000000   		.space	3
 10597              	.LC77:
 10598 0534 7B225344 		.ascii	"{\"SDinfo\":{\"slot\":%lu,\"present\":\000"
ARM GAS  /tmp/ccM7BG9e.s 			page 190


 10598      696E666F 
 10598      223A7B22 
 10598      736C6F74 
 10598      223A256C 
 10599 0555 000000   		.space	3
 10600              	.LC78:
 10601 0558 312C2263 		.ascii	"1,\"capacity\":%llu,\"free\":%llu,\"speed\":%lu,\"c"
 10601      61706163 
 10601      69747922 
 10601      3A256C6C 
 10601      752C2266 
 10602 0584 6C73697A 		.ascii	"lsize\":%lu}}\000"
 10602      65223A25 
 10602      6C757D7D 
 10602      00
 10603 0591 000000   		.space	3
 10604              	.LC79:
 10605 0594 307D7D00 		.ascii	"0}}\000"
 10606              	.LC80:
 10607 0598 42616420 		.ascii	"Bad SD slot number: %lu\000"
 10607      53442073 
 10607      6C6F7420 
 10607      6E756D62 
 10607      65723A20 
 10608              	.LC81:
 10609 05b0 4E6F2053 		.ascii	"No SD card mounted in slot %lu\000"
 10609      44206361 
 10609      7264206D 
 10609      6F756E74 
 10609      65642069 
 10610 05cf 00       		.space	1
 10611              	.LC82:
 10612 05d0 53442063 		.ascii	"SD card in slot %lu: capacity %.2fGb, free space %."
 10612      61726420 
 10612      696E2073 
 10612      6C6F7420 
 10612      256C753A 
 10613 0603 32664762 		.ascii	"2fGb, speed %.2fMBytes/sec, cluster size \000"
 10613      2C207370 
 10613      65656420 
 10613      252E3266 
 10613      4D427974 
 10614 062d 000000   		.space	3
 10615              	.LC83:
 10616 0630 256C7520 		.ascii	"%lu bytes\000"
 10616      62797465 
 10616      7300
 10617 063a 0000     		.space	2
 10618              	.LC84:
 10619 063c 256C756B 		.ascii	"%lukb\000"
 10619      6200
 10620 0642 0000     		.space	2
 10621              	.LC85:
 10622 0644 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 10622      63616C20 
 10622      70696E20 
 10622      25642069 
ARM GAS  /tmp/ccM7BG9e.s 			page 191


 10622      73206E6F 
 10623              	.LC86:
 10624 0670 53746570 		.ascii	"Steps/mm: \000"
 10624      732F6D6D 
 10624      3A2000
 10625 067b 00       		.space	1
 10626              	.LC87:
 10627 067c 453A00   		.ascii	"E:\000"
 10628 067f 00       		.space	1
 10629              	.LC88:
 10630 0680 25633A20 		.ascii	"%c: %.3f, \000"
 10630      252E3366 
 10630      2C2000
 10631 068b 00       		.space	1
 10632              	.LC89:
 10633 068c 2563252E 		.ascii	"%c%.3f\000"
 10633      336600
 10634 0693 00       		.space	1
 10635              	.LC90:
 10636 0694 496E7661 		.ascii	"Invalid tool number\000"
 10636      6C696420 
 10636      746F6F6C 
 10636      206E756D 
 10636      62657200 
 10637              	.LC91:
 10638 06a8 312E3231 		.ascii	"1.21.2beta1\000"
 10638      2E326265 
 10638      74613100 
 10639              	.LC92:
 10640 06b4 52657052 		.ascii	"RepRapFirmware for Duet 2 WiFi/Ethernet\000"
 10640      61704669 
 10640      726D7761 
 10640      72652066 
 10640      6F722044 
 10641              	.LC93:
 10642 06dc 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 10642      57415245 
 10642      5F4E414D 
 10642      453A2025 
 10642      73204649 
 10643 070f 20257300 		.ascii	" %s\000"
 10644 0713 00       		.space	1
 10645              	.LC94:
 10646 0714 202B2025 		.ascii	" + %s\000"
 10646      7300
 10647 071a 0000     		.space	2
 10648              	.LC95:
 10649 071c 32303138 		.ascii	"2018-06-23b1\000"
 10649      2D30362D 
 10649      32336231 
 10649      00
 10650 0729 000000   		.space	3
 10651              	.LC96:
 10652 072c 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 10652      4D574152 
 10652      455F4441 
 10652      54453A20 
ARM GAS  /tmp/ccM7BG9e.s 			page 192


 10652      257300
 10653 073f 00       		.space	1
 10654              	.LC97:
 10655 0740 496E7661 		.ascii	"Invalid message type: %d\000"
 10655      6C696420 
 10655      6D657373 
 10655      61676520 
 10655      74797065 
 10656 0759 000000   		.space	3
 10657              	.LC98:
 10658 075c 456E6473 		.ascii	"Endstops - \000"
 10658      746F7073 
 10658      202D2000 
 10659              	.LC99:
 10660 0768 5A207072 		.ascii	"Z probe: %s\000"
 10660      6F62653A 
 10660      20257300 
 10661              	.LC100:
 10662 0774 25633A20 		.ascii	"%c: %s, \000"
 10662      25732C20 
 10662      00
 10663 077d 000000   		.space	3
 10664              	.LC101:
 10665 0780 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 10665      2073616D 
 10665      706C6520 
 10665      74696D65 
 10665      20697320 
 10666 07a1 000000   		.space	3
 10667              	.LC102:
 10668 07a4 496E7661 		.ascii	"Invalid heater index '%d'\000"
 10668      6C696420 
 10668      68656174 
 10668      65722069 
 10668      6E646578 
 10669 07be 0000     		.space	2
 10670              	.LC103:
 10671 07c0 496E7661 		.ascii	"Invalid heater number '%d'\000"
 10671      6C696420 
 10671      68656174 
 10671      6572206E 
 10671      756D6265 
 10672 07db 00       		.space	1
 10673              	.LC104:
 10674 07dc 4E6F2025 		.ascii	"No %s heater has been configured for slot %d\000"
 10674      73206865 
 10674      61746572 
 10674      20686173 
 10674      20626565 
 10675 0809 000000   		.space	3
 10676              	.LC105:
 10677 080c 25632573 		.ascii	"%c%s heater %d (slot %d) is currently at %.1f\302\260"
 10677      20686561 
 10677      74657220 
 10677      25642028 
 10677      736C6F74 
 10678 083b 4300     		.ascii	"C\000"
ARM GAS  /tmp/ccM7BG9e.s 			page 193


 10679 083d 000000   		.space	3
 10680              	.LC106:
 10681 0840 496E7661 		.ascii	"Invalid bed heater index '%u'\000"
 10681      6C696420 
 10681      62656420 
 10681      68656174 
 10681      65722069 
 10682 085e 0000     		.space	2
 10683              	.LC107:
 10684 0860 496E7661 		.ascii	"Invalid heater index '%lu'\000"
 10684      6C696420 
 10684      68656174 
 10684      65722069 
 10684      6E646578 
 10685 087b 00       		.space	1
 10686              	.LC108:
 10687 087c 566F6C75 		.ascii	"Volumetric extrusion is disabled for this input sou"
 10687      6D657472 
 10687      69632065 
 10687      78747275 
 10687      73696F6E 
 10688 08af 72636500 		.ascii	"rce\000"
 10689 08b3 00       		.space	1
 10690              	.LC109:
 10691 08b4 46696C61 		.ascii	"Filament diameters for volumetric extrusion:\000"
 10691      6D656E74 
 10691      20646961 
 10691      6D657465 
 10691      72732066 
 10692 08e1 000000   		.space	3
 10693              	.LC110:
 10694 08e4 206E2F61 		.ascii	" n/a\000"
 10694      00
 10695 08e9 000000   		.space	3
 10696              	.LC111:
 10697 08ec 20252E30 		.ascii	" %.03f\000"
 10697      336600
 10698 08f3 00       		.space	1
 10699              	.LC112:
 10700 08f4 41636365 		.ascii	"Accelerations: \000"
 10700      6C657261 
 10700      74696F6E 
 10700      733A2000 
 10701              	.LC113:
 10702 0904 25633A20 		.ascii	"%c: %.1f, \000"
 10702      252E3166 
 10702      2C2000
 10703 090f 00       		.space	1
 10704              	.LC114:
 10705 0910 2563252E 		.ascii	"%c%.1f\000"
 10705      316600
 10706 0917 00       		.space	1
 10707              	.LC115:
 10708 0918 4D617869 		.ascii	"Maximum feedrates: \000"
 10708      6D756D20 
 10708      66656564 
 10708      72617465 
ARM GAS  /tmp/ccM7BG9e.s 			page 194


 10708      733A2000 
 10709              	.LC116:
 10710 092c 4D617869 		.ascii	"Maximum printing acceleration %.1f, maximum travel "
 10710      6D756D20 
 10710      7072696E 
 10710      74696E67 
 10710      20616363 
 10711 095f 61636365 		.ascii	"acceleration %.1f\000"
 10711      6C657261 
 10711      74696F6E 
 10711      20252E31 
 10711      6600
 10712 0971 000000   		.space	3
 10713              	.LC117:
 10714 0974 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 10714      61637469 
 10714      6F6E2F75 
 10714      6E2D7265 
 10714      74726163 
 10715 09a7 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 10715      73706565 
 10715      64202564 
 10715      2F25646D 
 10715      6D2F6D69 
 10716 09cb 00       		.space	1
 10717              	.LC118:
 10718 09cc 41786973 		.ascii	"Axis limits \000"
 10718      206C696D 
 10718      69747320 
 10718      00
 10719 09d9 000000   		.space	3
 10720              	.LC119:
 10721 09dc 25632025 		.ascii	"%c %c: %.1f min, %.1f max\000"
 10721      633A2025 
 10721      2E316620 
 10721      6D696E2C 
 10721      20252E31 
 10722 09f6 0000     		.space	2
 10723              	.LC120:
 10724 09f8 496E7661 		.ascii	"Invalid speed factor\000"
 10724      6C696420 
 10724      73706565 
 10724      64206661 
 10724      63746F72 
 10725 0a0d 000000   		.space	3
 10726              	.LC121:
 10727 0a10 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 10727      64206661 
 10727      63746F72 
 10727      206F7665 
 10727      72726964 
 10728 0a2e 0000     		.space	2
 10729              	.LC122:
 10730 0a30 45787472 		.ascii	"Extrusion factor override for extruder %li: %.1f%%\000"
 10730      7573696F 
 10730      6E206661 
 10730      63746F72 
ARM GAS  /tmp/ccM7BG9e.s 			page 195


 10730      206F7665 
 10731 0a63 00       		.space	1
 10732              	.LC123:
 10733 0a64 496E7661 		.ascii	"Invalid servo index %d in M280 command\012\000"
 10733      6C696420 
 10733      73657276 
 10733      6F20696E 
 10733      64657820 
 10734              	.LC124:
 10735 0a8c 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
 10735      20737465 
 10735      7070696E 
 10735      67206F66 
 10735      66736574 
 10736 0aab 00       		.space	1
 10737              	.LC125:
 10738 0aac 496E7661 		.ascii	"Invalid message box mode\000"
 10738      6C696420 
 10738      6D657373 
 10738      61676520 
 10738      626F7820 
 10739 0ac5 000000   		.space	3
 10740              	.LC126:
 10741 0ac8 436F6C64 		.ascii	"Cold extrusion is %s, use M302 P[1/0] to allow/deny"
 10741      20657874 
 10741      72757369 
 10741      6F6E2069 
 10741      73202573 
 10742 0afb 20697400 		.ascii	" it\000"
 10743 0aff 00       		.space	1
 10744              	.LC127:
 10745 0b00 42616420 		.ascii	"Bad heater number in M303 command\000"
 10745      68656174 
 10745      6572206E 
 10745      756D6265 
 10745      7220696E 
 10746 0b22 0000     		.space	2
 10747              	.LC128:
 10748 0b24 48656174 		.ascii	"Heater is not ready to perform PID auto-tuning\000"
 10748      65722069 
 10748      73206E6F 
 10748      74207265 
 10748      61647920 
 10749 0b53 00       		.space	1
 10750              	.LC129:
 10751 0b54 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 10751      6C696420 
 10751      50574D20 
 10751      696E204D 
 10751      33303320 
 10752              	.LC130:
 10753 0b70 4572726F 		.ascii	"Error: bad model parameters\000"
 10753      723A2062 
 10753      6164206D 
 10753      6F64656C 
 10753      20706172 
 10754              	.LC131:
ARM GAS  /tmp/ccM7BG9e.s 			page 196


 10755 0b8c 48656174 		.ascii	"Heater %u is disabled\000"
 10755      65722025 
 10755      75206973 
 10755      20646973 
 10755      61626C65 
 10756 0ba2 0000     		.space	2
 10757              	.LC132:
 10758 0ba4 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 10758      65722025 
 10758      75206D6F 
 10758      64656C3A 
 10758      20676169 
 10759 0bd7 64207469 		.ascii	"d time %.1f, max PWM %.2f, calibration voltage %.1f"
 10759      6D652025 
 10759      2E31662C 
 10759      206D6178 
 10759      2050574D 
 10760 0c0a 2C206D6F 		.ascii	", mode %s, inverted %s, frequency \000"
 10760      64652025 
 10760      732C2069 
 10760      6E766572 
 10760      74656420 
 10761 0c2d 000000   		.space	3
 10762              	.LC133:
 10763 0c30 64656661 		.ascii	"default\000"
 10763      756C7400 
 10764              	.LC134:
 10765 0c38 2575487A 		.ascii	"%uHz\000"
 10765      00
 10766 0c3d 000000   		.space	3
 10767              	.LC135:
 10768 0c40 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 10768      70757465 
 10768      64205049 
 10768      44207061 
 10768      72616D65 
 10769 0c70 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 10769      2049252E 
 10769      33662C20 
 10769      44252E31 
 10769      6600
 10770 0c82 0000     		.space	2
 10771              	.LC136:
 10772 0c84 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 10772      70757465 
 10772      64205049 
 10772      44207061 
 10772      72616D65 
 10773 0cb4 2049252E 		.ascii	" I%.3f, D%.1f\000"
 10773      33662C20 
 10773      44252E31 
 10773      6600
 10774 0cc2 0000     		.space	2
 10775              	.LC137:
 10776 0cc4 20776974 		.ascii	" with interpolation\000"
 10776      6820696E 
 10776      74657270 
ARM GAS  /tmp/ccM7BG9e.s 			page 197


 10776      6F6C6174 
 10776      696F6E00 
 10777              	.LC138:
 10778 0cd8 44726976 		.ascii	"Drive %c does not support %ux microstepping%s\000"
 10778      65202563 
 10778      20646F65 
 10778      73206E6F 
 10778      74207375 
 10779 0d06 0000     		.space	2
 10780              	.LC139:
 10781 0d08 44726976 		.ascii	"Drive E%u does not support %ux microstepping%s\000"
 10781      65204525 
 10781      7520646F 
 10781      6573206E 
 10781      6F742073 
 10782 0d37 00       		.space	1
 10783              	.LC140:
 10784 0d38 4D696372 		.ascii	"Microstepping - \000"
 10784      6F737465 
 10784      7070696E 
 10784      67202D20 
 10784      00
 10785 0d49 000000   		.space	3
 10786              	.LC141:
 10787 0d4c 4500     		.ascii	"E\000"
 10788 0d4e 0000     		.space	2
 10789              	.LC142:
 10790 0d50 25633A25 		.ascii	"%c:%u%s, \000"
 10790      7525732C 
 10790      2000
 10791 0d5a 0000     		.space	2
 10792              	.LC143:
 10793 0d5c 3A257525 		.ascii	":%u%s\000"
 10793      7300
 10794 0d62 0000     		.space	2
 10795              	.LC144:
 10796 0d64 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 10796      636F6D70 
 10796      656E7361 
 10796      74696F6E 
 10796      20746170 
 10797              	.LC145:
 10798 0d8c 42656420 		.ascii	"Bed compensation is not tapered\000"
 10798      636F6D70 
 10798      656E7361 
 10798      74696F6E 
 10798      20697320 
 10799              	.LC146:
 10800 0dac 6465706C 		.ascii	"deployprobe.g\000"
 10800      6F797072 
 10800      6F62652E 
 10800      6700
 10801 0dba 0000     		.space	2
 10802              	.LC147:
 10803 0dbc 72657472 		.ascii	"retractprobe.g\000"
 10803      61637470 
 10803      726F6265 
ARM GAS  /tmp/ccM7BG9e.s 			page 198


 10803      2E6700
 10804 0dcb 00       		.space	1
 10805              	.LC148:
 10806 0dcc 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 10806      6D656E74 
 10806      20776964 
 10806      74683A20 
 10806      252E3266 
 10807              	.LC149:
 10808 0dfc 5072696E 		.ascii	"PrinterMode:%s\000"
 10808      7465724D 
 10808      6F64653A 
 10808      257300
 10809 0e0b 00       		.space	1
 10810              	.LC150:
 10811 0e0c 4C617365 		.ascii	"Laser mode selected\000"
 10811      72206D6F 
 10811      64652073 
 10811      656C6563 
 10811      74656400 
 10812              	.LC151:
 10813 0e20 42616420 		.ascii	"Bad P parameter\000"
 10813      50207061 
 10813      72616D65 
 10813      74657200 
 10814              	.LC152:
 10815 0e30 434E4320 		.ascii	"CNC mode selected\000"
 10815      6D6F6465 
 10815      2073656C 
 10815      65637465 
 10815      6400
 10816 0e42 0000     		.space	2
 10817              	.LC153:
 10818 0e44 636F6E66 		.ascii	"config-override.g\000"
 10818      69672D6F 
 10818      76657272 
 10818      6964652E 
 10818      6700
 10819 0e56 0000     		.space	2
 10820              	.LC154:
 10821 0e58 436F6E66 		.ascii	"Configuration file not found\000"
 10821      69677572 
 10821      6174696F 
 10821      6E206669 
 10821      6C65206E 
 10822 0e75 000000   		.space	3
 10823              	.LC155:
 10824 0e78 42616420 		.ascii	"Bad MAC address\000"
 10824      4D414320 
 10824      61646472 
 10824      65737300 
 10825              	.LC156:
 10826 0e88 4D41433A 		.ascii	"MAC: %02x:%02x:%02x:%02x:%02x:%02x\000"
 10826      20253032 
 10826      783A2530 
 10826      32783A25 
 10826      3032783A 
ARM GAS  /tmp/ccM7BG9e.s 			page 199


 10827 0eab 00       		.space	1
 10828              	.LC157:
 10829 0eac 52657052 		.ascii	"RepRap name: %s\000"
 10829      6170206E 
 10829      616D653A 
 10829      20257300 
 10830              	.LC158:
 10831 0ebc 42616420 		.ascii	"Bad or missing SSID\000"
 10831      6F72206D 
 10831      69737369 
 10831      6E672053 
 10831      53494400 
 10832              	.LC159:
 10833 0ed0 42616420 		.ascii	"Bad IP address\000"
 10833      49502061 
 10833      64647265 
 10833      737300
 10834 0edf 00       		.space	1
 10835              	.LC160:
 10836 0ee0 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 10836      6D61736B 
 10836      3A202564 
 10836      2E25642E 
 10836      25642E25 
 10837 0ef7 00       		.space	1
 10838              	.LC161:
 10839 0ef8 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 10839      7761793A 
 10839      2025642E 
 10839      25642E25 
 10839      642E2564 
 10840 0f0e 0000     		.space	2
 10841              	.LC162:
 10842 0f10 456D756C 		.ascii	"Emulating \000"
 10842      6174696E 
 10842      672000
 10843 0f1b 00       		.space	1
 10844              	.LC163:
 10845 0f1c 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 10845      61702046 
 10845      69726D77 
 10845      61726520 
 10845      28692E65 
 10846 0f42 0000     		.space	2
 10847              	.LC164:
 10848 0f44 4D61726C 		.ascii	"Marlin\000"
 10848      696E00
 10849 0f4b 00       		.space	1
 10850              	.LC165:
 10851 0f4c 54656163 		.ascii	"Teacup\000"
 10851      757000
 10852 0f53 00       		.space	1
 10853              	.LC166:
 10854 0f54 53707269 		.ascii	"Sprinter\000"
 10854      6E746572 
 10854      00
 10855 0f5d 000000   		.space	3
ARM GAS  /tmp/ccM7BG9e.s 			page 200


 10856              	.LC167:
 10857 0f60 52657065 		.ascii	"Repetier\000"
 10857      74696572 
 10857      00
 10858 0f69 000000   		.space	3
 10859              	.LC168:
 10860 0f6c 556E6B6E 		.ascii	"Unknown: (%u)\000"
 10860      6F776E3A 
 10860      20282575 
 10860      2900
 10861 0f7a 0000     		.space	2
 10862              	.LC169:
 10863 0f7c 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 10863      20636F6D 
 10863      70656E73 
 10863      6174696F 
 10863      6E73202D 
 10864 0fae 0000     		.space	2
 10865              	.LC170:
 10866 0fb0 4D6F7665 		.ascii	"Movement outside the bed is %spermitted, movement b"
 10866      6D656E74 
 10866      206F7574 
 10866      73696465 
 10866      20746865 
 10867 0fe3 65666F72 		.ascii	"efore homing is %spermitted\000"
 10867      6520686F 
 10867      6D696E67 
 10867      20697320 
 10867      25737065 
 10868 0fff 00       		.space	1
 10869              	.LC171:
 10870 1000 4D617869 		.ascii	"Maximum jerk rates: \000"
 10870      6D756D20 
 10870      6A65726B 
 10870      20726174 
 10870      65733A20 
 10871 1015 000000   		.space	3
 10872              	.LC172:
 10873 1018 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 10873      696E6720 
 10873      6D697820 
 10873      72617469 
 10873      6F73202D 
 10874 104a 0000     		.space	2
 10875              	.LC173:
 10876 104c 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 10876      20256420 
 10876      6D697820 
 10876      72617469 
 10876      6F733A00 
 10877              	.LC174:
 10878 1060 54686520 		.ascii	"The M568 command is no longer needed\000"
 10878      4D353638 
 10878      20636F6D 
 10878      6D616E64 
 10878      20697320 
 10879 1085 000000   		.space	3
ARM GAS  /tmp/ccM7BG9e.s 			page 201


 10880              	.LC175:
 10881 1088 62616420 		.ascii	"bad timing parameter\000"
 10881      74696D69 
 10881      6E672070 
 10881      6172616D 
 10881      65746572 
 10882 109d 000000   		.space	3
 10883              	.LC176:
 10884 10a0 5761726E 		.ascii	"Warning, there are now %d registered recipiens on t"
 10884      696E672C 
 10884      20746865 
 10884      72652061 
 10884      7265206E 
 10885 10d3 68652069 		.ascii	"he i2c address 0x%02x\000"
 10885      32632061 
 10885      64647265 
 10885      73732030 
 10885      78253032 
 10886 10e9 000000   		.space	3
 10887              	.LC177:
 10888 10ec 44726976 		.ascii	"Driver %u does not support mode '%s'\000"
 10888      65722025 
 10888      7520646F 
 10888      6573206E 
 10888      6F742073 
 10889 1111 000000   		.space	3
 10890              	.LC178:
 10891 1114 44726976 		.ascii	"Drive %u runs %s, active %s enable, step timing %.1"
 10891      65202575 
 10891      2072756E 
 10891      73202573 
 10891      2C206163 
 10892 1147 663A252E 		.ascii	"f:%.1f:%.1f:%.1f us, i2c value 0x%02x\000"
 10892      31663A25 
 10892      2E31663A 
 10892      252E3166 
 10892      2075732C 
 10893 116d 000000   		.space	3
 10894              	.LC179:
 10895 1170 2C206D6F 		.ascii	", mode %s, ccr 0x%05lx\000"
 10895      64652025 
 10895      732C2063 
 10895      63722030 
 10895      78253035 
 10896 1187 00       		.space	1
 10897              	.LC180:
 10898 1188 48656174 		.ascii	"Heater %u allowed excursion %.1f\302\260C, fault tr"
 10898      65722025 
 10898      7520616C 
 10898      6C6F7765 
 10898      64206578 
 10899 11b5 69676765 		.ascii	"igger time %.1f seconds\000"
 10899      72207469 
 10899      6D652025 
 10899      2E316620 
 10899      7365636F 
 10900 11cd 000000   		.space	3
ARM GAS  /tmp/ccM7BG9e.s 			page 202


 10901              	.LC181:
 10902 11d0 5072696E 		.ascii	"Print will be terminated if a heater fault is not r"
 10902      74207769 
 10902      6C6C2062 
 10902      65207465 
 10902      726D696E 
 10903 1203 65736574 		.ascii	"eset within %lu minutes\000"
 10903      20776974 
 10903      68696E20 
 10903      256C7520 
 10903      6D696E75 
 10904 121b 00       		.space	1
 10905              	.LC182:
 10906 121c 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
 10906      63616C20 
 10906      70696E20 
 10906      25642069 
 10906      7320616C 
 10907 124f 6F722075 		.ascii	"or use by M571\000"
 10907      73652062 
 10907      79204D35 
 10907      373100
 10908 125e 0000     		.space	2
 10909              	.LC183:
 10910 1260 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u, %"
 10910      7573696F 
 10910      6E20616E 
 10910      63696C6C 
 10910      61727920 
 10911 1293 7300     		.ascii	"s\000"
 10912 1295 000000   		.space	3
 10913              	.LC184:
 10914 1298 496E7661 		.ascii	"Invalid extruder number '%lu'\000"
 10914      6C696420 
 10914      65787472 
 10914      75646572 
 10914      206E756D 
 10915 12b6 0000     		.space	2
 10916              	.LC185:
 10917 12b8 45787472 		.ascii	"Extruder pressure advance\000"
 10917      75646572 
 10917      20707265 
 10917      73737572 
 10917      65206164 
 10918 12d2 0000     		.space	2
 10919              	.LC186:
 10920 12d4 25632025 		.ascii	"%c %.3f\000"
 10920      2E336600 
 10921              	.LC187:
 10922 12dc 41766572 		.ascii	"Average heater %d PWM: %.3f\000"
 10922      61676520 
 10922      68656174 
 10922      65722025 
 10922      64205057 
 10923              	.LC188:
 10924 12f8 456E6473 		.ascii	"Endstop configuration:\000"
 10924      746F7020 
ARM GAS  /tmp/ccM7BG9e.s 			page 203


 10924      636F6E66 
 10924      69677572 
 10924      6174696F 
 10925 130f 00       		.space	1
 10926              	.LC189:
 10927 1310 2025633A 		.ascii	" %c: %s\000"
 10927      20257300 
 10928              	.LC190:
 10929 1318 2025732C 		.ascii	" %s,\000"
 10929      00
 10930 131d 000000   		.space	3
 10931              	.LC191:
 10932 1320 4368616E 		.ascii	"Channel %d: baud rate %lu, %s checksum\000"
 10932      6E656C20 
 10932      25643A20 
 10932      62617564 
 10932      20726174 
 10933 1347 00       		.space	1
 10934              	.LC192:
 10935 1348 496E7661 		.ascii	"Invalid extruder drive '%u'\000"
 10935      6C696420 
 10935      65787472 
 10935      75646572 
 10935      20647269 
 10936              	.LC193:
 10937 1364 41786973 		.ascii	"Axis scale factors\000"
 10937      20736361 
 10937      6C652066 
 10937      6163746F 
 10937      727300
 10938 1377 00       		.space	1
 10939              	.LC194:
 10940 1378 25632025 		.ascii	"%c %c: %.3f\000"
 10940      633A2025 
 10940      2E336600 
 10941              	.LC195:
 10942 1384 44726976 		.ascii	"Drive %u nonlinear extrusion coefficients: A=%.3f, "
 10942      65202575 
 10942      206E6F6E 
 10942      6C696E65 
 10942      61722065 
 10943 13b7 423D252E 		.ascii	"B=%.4f, limit=%.2f\000"
 10943      34662C20 
 10943      6C696D69 
 10943      743D252E 
 10943      326600
 10944 13ca 0000     		.space	2
 10945              	.LC196:
 10946 13cc 4D6F6465 		.ascii	"Mode %d is not valid\000"
 10946      20256420 
 10946      6973206E 
 10946      6F742076 
 10946      616C6964 
 10947 13e1 000000   		.space	3
 10948              	.LC197:
 10949 13e4 556E6B6E 		.ascii	"Unknown kinematics type %d\000"
 10949      6F776E20 
ARM GAS  /tmp/ccM7BG9e.s 			page 204


 10949      6B696E65 
 10949      6D617469 
 10949      63732074 
 10950 13ff 00       		.space	1
 10951              	.LC198:
 10952 1400 5363616E 		.ascii	"Scanner extension is not enabled\000"
 10952      6E657220 
 10952      65787465 
 10952      6E73696F 
 10952      6E206973 
 10953 1421 000000   		.space	3
 10954              	.LC199:
 10955 1424 496E7661 		.ascii	"Invalid source\000"
 10955      6C696420 
 10955      736F7572 
 10955      636500
 10956 1433 00       		.space	1
 10957              	.LC200:
 10958 1434 5363616E 		.ascii	"Scanner is not registered\000"
 10958      6E657220 
 10958      6973206E 
 10958      6F742072 
 10958      65676973 
 10959 144e 0000     		.space	2
 10960              	.LC201:
 10961 1450 4D697373 		.ascii	"Missing length/degree parameter\000"
 10961      696E6720 
 10961      6C656E67 
 10961      74682F64 
 10961      65677265 
 10962              	.LC202:
 10963 1470 4D697373 		.ascii	"Missing filename\000"
 10963      696E6720 
 10963      66696C65 
 10963      6E616D65 
 10963      00
 10964 1481 000000   		.space	3
 10965              	.LC203:
 10966 1484 25633A25 		.ascii	"%c:%d, \000"
 10966      642C2000 
 10967              	.LC204:
 10968 148c 3A256400 		.ascii	":%d\000"
 10969              	.LC205:
 10970 1490 2C206964 		.ascii	", idle factor %d%%\000"
 10970      6C652066 
 10970      6163746F 
 10970      72202564 
 10970      252500
 10971 14a3 00       		.space	1
 10972              	.LC206:
 10973 14a4 4E6F2070 		.ascii	"No power fail script provided\000"
 10973      6F776572 
 10973      20666169 
 10973      6C207363 
 10973      72697074 
 10974 14c2 0000     		.space	2
 10975              	.LC207:
ARM GAS  /tmp/ccM7BG9e.s 			page 205


 10976 14c4 4175746F 		.ascii	"Auto save voltage %.1fV, resume %.1fV, script \"%s\""
 10976      20736176 
 10976      6520766F 
 10976      6C746167 
 10976      6520252E 
 10977 14f6 00       		.ascii	"\000"
 10978 14f7 00       		.space	1
 10979              	.LC208:
 10980 14f8 4175746F 		.ascii	"Auto save is disabled\000"
 10980      20736176 
 10980      65206973 
 10980      20646973 
 10980      61626C65 
 10981 150e 0000     		.space	2
 10982              	.LC209:
 10983 1510 4D435520 		.ascii	"MCU temperature calibration adjustment is %.1f\302\260"
 10983      74656D70 
 10983      65726174 
 10983      75726520 
 10983      63616C69 
 10984 1540 4300     		.ascii	"C\000"
 10985 1542 0000     		.space	2
 10986              	.LC210:
 10987 1544 72657375 		.ascii	"resurrect.g\000"
 10987      72726563 
 10987      742E6700 
 10988              	.LC211:
 10989 1550 4E6F2072 		.ascii	"No resume file found\000"
 10989      6573756D 
 10989      65206669 
 10989      6C652066 
 10989      6F756E64 
 10990 1565 000000   		.space	3
 10991              	.LC212:
 10992 1568 72657375 		.ascii	"resurrect-prologue.g\000"
 10992      72726563 
 10992      742D7072 
 10992      6F6C6F67 
 10992      75652E67 
 10993 157d 000000   		.space	3
 10994              	.LC213:
 10995 1580 52657375 		.ascii	"Resume prologue file '%s' not found\000"
 10995      6D652070 
 10995      726F6C6F 
 10995      67756520 
 10995      66696C65 
 10996              	.LC214:
 10997 15a4 43686563 		.ascii	"Checksum error on line %d\000"
 10997      6B73756D 
 10997      20657272 
 10997      6F72206F 
 10997      6E206C69 
 10998 15be 0000     		.space	2
 10999              	.LC215:
 11000 15c0 45524153 		.ascii	"ERASE\000"
 11000      4500
 11001              		.section	.rodata._ZN6GCodes11HandleTcodeER11GCodeBufferRK9StringRef.part.47.str1.4,"aMS",%progbits
ARM GAS  /tmp/ccM7BG9e.s 			page 206


 11002              		.align	2
 11003              	.LC1:
 11004 0000 4E6F2074 		.ascii	"No tool is selected\000"
 11004      6F6F6C20 
 11004      69732073 
 11004      656C6563 
 11004      74656400 
 11005              	.LC2:
 11006 0014 546F6F6C 		.ascii	"Tool %d is selected\000"
 11006      20256420 
 11006      69732073 
 11006      656C6563 
 11006      74656400 
 11007              		.section	.rodata._ZN6GCodes12HandleResultER11GCodeBuffer11GCodeResultRK9StringRef.str1.4,"aMS",%pr
 11008              		.align	2
 11009              	.LC3:
 11010 0000 20636F6D 		.ascii	" command is not supported\000"
 11010      6D616E64 
 11010      20697320 
 11010      6E6F7420 
 11010      73757070 
 11011 001a 0000     		.space	2
 11012              	.LC4:
 11013 001c 20636F6D 		.ascii	" command is not supported in machine mode %s\000"
 11013      6D616E64 
 11013      20697320 
 11013      6E6F7420 
 11013      73757070 
 11014 0049 000000   		.space	3
 11015              	.LC5:
 11016 004c 3A206261 		.ascii	": bad or missing parameter\000"
 11016      64206F72 
 11016      206D6973 
 11016      73696E67 
 11016      20706172 
 11017 0067 00       		.space	1
 11018              	.LC6:
 11019 0068 3A2000   		.ascii	": \000"
 11020              		.section	.rodata._ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 11021              		.align	2
 11022              	.LC216:
 11023 0000 42616420 		.ascii	"Bad command: %s\000"
 11023      636F6D6D 
 11023      616E643A 
 11023      20257300 
 11024              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
