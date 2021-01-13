ARM GAS  /tmp/ccwUCr4x.s 			page 1


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
  13              		.file	"Logger.cpp"
  14              		.section	.text._ZN6LoggerC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN6LoggerC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN6LoggerC2Ev, %function
  23              	_ZN6LoggerC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0022     		movs	r2, #0
  28 0002 C0E90022 		strd	r2, r2, [r0]
  29 0006 8260     		str	r2, [r0, #8]
  30 0008 0273     		strb	r2, [r0, #12]
  31 000a 4273     		strb	r2, [r0, #13]
  32 000c 7047     		bx	lr
  33              		.size	_ZN6LoggerC2Ev, .-_ZN6LoggerC2Ev
  34              		.global	_ZN6LoggerC1Ev
  35              		.thumb_set _ZN6LoggerC1Ev,_ZN6LoggerC2Ev
  36 000e 00BF     		.section	.text._ZN6Logger5FlushEb,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	_ZN6Logger5FlushEb
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu fpv4-sp-d16
  44              		.type	_ZN6Logger5FlushEb, %function
  45              	_ZN6Logger5FlushEb:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48 0000 0368     		ldr	r3, [r0]
  49 0002 1BB1     		cbz	r3, .L12
  50 0004 027B     		ldrb	r2, [r0, #12]	@ zero_extendqisi2
  51 0006 0AB1     		cbz	r2, .L12
  52 0008 427B     		ldrb	r2, [r0, #13]	@ zero_extendqisi2
  53 000a 02B1     		cbz	r2, .L15
  54              	.L12:
  55 000c 7047     		bx	lr
  56              	.L15:
  57 000e 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/ccwUCr4x.s 			page 2


  58 0010 0446     		mov	r4, r0
  59 0012 1846     		mov	r0, r3
  60 0014 0D46     		mov	r5, r1
  61 0016 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
  62 001a 0646     		mov	r6, r0
  63 001c FFF7FEFF 		bl	millis
  64 0020 2DB9     		cbnz	r5, .L7
  65 0022 6268     		ldr	r2, [r4, #4]
  66 0024 43F69723 		movw	r3, #14999
  67 0028 801A     		subs	r0, r0, r2
  68 002a 9842     		cmp	r0, r3
  69 002c 0CD9     		bls	.L16
  70              	.L7:
  71 002e 0123     		movs	r3, #1
  72 0030 6373     		strb	r3, [r4, #13]
  73 0032 2068     		ldr	r0, [r4]
  74 0034 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
  75 0038 FFF7FEFF 		bl	millis
  76 003c C4E90106 		strd	r0, r6, [r4, #4]
  77 0040 0023     		movs	r3, #0
  78 0042 2373     		strb	r3, [r4, #12]
  79 0044 6373     		strb	r3, [r4, #13]
  80              	.L3:
  81 0046 70BD     		pop	{r4, r5, r6, pc}
  82              	.L16:
  83 0048 A368     		ldr	r3, [r4, #8]
  84 004a 5B0A     		lsrs	r3, r3, #9
  85 004c B3EB562F 		cmp	r3, r6, lsr #9
  86 0050 EDD1     		bne	.L7
  87 0052 F8E7     		b	.L3
  88              		.size	_ZN6Logger5FlushEb, .-_ZN6Logger5FlushEb
  89              		.global	__aeabi_uldivmod
  90              		.section	.text._ZN6Logger13WriteDateTimeEx,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	_ZN6Logger13WriteDateTimeEx
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	_ZN6Logger13WriteDateTimeEx, %function
  99              	_ZN6Logger13WriteDateTimeEx:
 100              		@ args = 0, pretend = 0, frame = 48
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 70B5     		push	{r4, r5, r6, lr}
 103 0002 90B0     		sub	sp, sp, #64
 104 0004 10A9     		add	r1, sp, #64
 105 0006 0024     		movs	r4, #0
 106 0008 01F8204D 		strb	r4, [r1, #-32]!
 107 000c 1F25     		movs	r5, #31
 108 000e CDE90423 		strd	r2, [sp, #16]
 109 0012 1343     		orrs	r3, r2, r3
 110 0014 0446     		mov	r4, r0
 111 0016 CDE90615 		strd	r1, r5, [sp, #24]
 112 001a 1ED0     		beq	.L21
 113 001c 04A8     		add	r0, sp, #16
 114 001e FFF7FEFF 		bl	gmtime
ARM GAS  /tmp/ccwUCr4x.s 			page 3


 115 0022 0568     		ldr	r5, [r0]
 116 0024 1D49     		ldr	r1, .L22
 117 0026 D0E90432 		ldrd	r3, r2, [r0, #16]
 118 002a 0395     		str	r5, [sp, #12]
 119 002c 4568     		ldr	r5, [r0, #4]
 120 002e 0295     		str	r5, [sp, #8]
 121 0030 8568     		ldr	r5, [r0, #8]
 122 0032 0195     		str	r5, [sp, #4]
 123 0034 C068     		ldr	r0, [r0, #12]
 124 0036 0090     		str	r0, [sp]
 125 0038 0133     		adds	r3, r3, #1
 126 003a 02F26C72 		addw	r2, r2, #1900
 127 003e 06A8     		add	r0, sp, #24
 128 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 129              	.L19:
 130 0044 069D     		ldr	r5, [sp, #24]
 131 0046 2846     		mov	r0, r5
 132 0048 FFF7FEFF 		bl	strlen
 133 004c 2946     		mov	r1, r5
 134 004e 0246     		mov	r2, r0
 135 0050 2068     		ldr	r0, [r4]
 136 0052 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 137 0056 10B0     		add	sp, sp, #64
 138              		@ sp needed
 139 0058 70BD     		pop	{r4, r5, r6, pc}
 140              	.L21:
 141 005a FFF7FEFF 		bl	millis64
 142 005e 0023     		movs	r3, #0
 143 0060 4FF47A72 		mov	r2, #1000
 144 0064 FFF7FEFF 		bl	__aeabi_uldivmod
 145 0068 0D4E     		ldr	r6, .L22+4
 146 006a 0E4A     		ldr	r2, .L22+8
 147 006c 0E49     		ldr	r1, .L22+12
 148 006e A6FB00C5 		umull	ip, r5, r6, r0
 149 0072 A2FB0032 		umull	r3, r2, r2, r0
 150 0076 D20A     		lsrs	r2, r2, #11
 151 0078 4FF46163 		mov	r3, #3600
 152 007c 6D09     		lsrs	r5, r5, #5
 153 007e 03FB1203 		mls	r3, r3, r2, r0
 154 0082 C5EB0515 		rsb	r5, r5, r5, lsl #4
 155 0086 A0EB8500 		sub	r0, r0, r5, lsl #2
 156 008a A6FB0363 		umull	r6, r3, r6, r3
 157 008e 0090     		str	r0, [sp]
 158 0090 5B09     		lsrs	r3, r3, #5
 159 0092 06A8     		add	r0, sp, #24
 160 0094 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 161 0098 D4E7     		b	.L19
 162              	.L23:
 163 009a 00BF     		.align	2
 164              	.L22:
 165 009c 20000000 		.word	.LC1
 166 00a0 89888888 		.word	-2004318071
 167 00a4 C5B3A291 		.word	-1851608123
 168 00a8 00000000 		.word	.LC0
 169              		.size	_ZN6Logger13WriteDateTimeEx, .-_ZN6Logger13WriteDateTimeEx
 170              		.section	.text._ZN6Logger10LogMessageExP12OutputBuffer,"ax",%progbits
 171              		.align	1
ARM GAS  /tmp/ccwUCr4x.s 			page 4


 172              		.p2align 2,,3
 173              		.global	_ZN6Logger10LogMessageExP12OutputBuffer
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	_ZN6Logger10LogMessageExP12OutputBuffer, %function
 179              	_ZN6Logger10LogMessageExP12OutputBuffer:
 180              		@ args = 4, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 38B5     		push	{r3, r4, r5, lr}
 183 0002 0468     		ldr	r4, [r0]
 184 0004 0CB1     		cbz	r4, .L24
 185 0006 447B     		ldrb	r4, [r0, #13]	@ zero_extendqisi2
 186 0008 04B1     		cbz	r4, .L41
 187              	.L24:
 188 000a 38BD     		pop	{r3, r4, r5, pc}
 189              	.L41:
 190 000c 0125     		movs	r5, #1
 191 000e 4573     		strb	r5, [r0, #13]
 192 0010 0446     		mov	r4, r0
 193 0012 FFF7FEFF 		bl	_ZN6Logger13WriteDateTimeEx
 194 0016 40B9     		cbnz	r0, .L42
 195              	.L26:
 196 0018 2068     		ldr	r0, [r4]
 197 001a 18B1     		cbz	r0, .L27
 198 001c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 199 0020 0023     		movs	r3, #0
 200 0022 2360     		str	r3, [r4]
 201              	.L27:
 202 0024 0023     		movs	r3, #0
 203 0026 6373     		strb	r3, [r4, #13]
 204 0028 38BD     		pop	{r3, r4, r5, pc}
 205              	.L42:
 206 002a 2146     		mov	r1, r4
 207 002c 0498     		ldr	r0, [sp, #16]
 208 002e FFF7FEFF 		bl	_ZNK12OutputBuffer11WriteToFileER8FileData
 209 0032 0028     		cmp	r0, #0
 210 0034 F0D0     		beq	.L26
 211 0036 2573     		strb	r5, [r4, #12]
 212 0038 F4E7     		b	.L27
 213              		.size	_ZN6Logger10LogMessageExP12OutputBuffer, .-_ZN6Logger10LogMessageExP12OutputBuffer
 214 003a 00BF     		.section	.text._ZN6Logger18InternalLogMessageExPKc,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	_ZN6Logger18InternalLogMessageExPKc
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu fpv4-sp-d16
 222              		.type	_ZN6Logger18InternalLogMessageExPKc, %function
 223              	_ZN6Logger18InternalLogMessageExPKc:
 224              		@ args = 4, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 38B5     		push	{r3, r4, r5, lr}
 227 0002 0446     		mov	r4, r0
 228 0004 FFF7FEFF 		bl	_ZN6Logger13WriteDateTimeEx
ARM GAS  /tmp/ccwUCr4x.s 			page 5


 229 0008 98B1     		cbz	r0, .L44
 230 000a 0498     		ldr	r0, [sp, #16]
 231 000c FFF7FEFF 		bl	strlen
 232 0010 2368     		ldr	r3, [r4]
 233 0012 0546     		mov	r5, r0
 234 0014 38B9     		cbnz	r0, .L65
 235              	.L45:
 236 0016 1846     		mov	r0, r3
 237 0018 0A21     		movs	r1, #10
 238 001a FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 239 001e 40B1     		cbz	r0, .L44
 240              	.L48:
 241 0020 0123     		movs	r3, #1
 242 0022 2373     		strb	r3, [r4, #12]
 243              	.L43:
 244 0024 38BD     		pop	{r3, r4, r5, pc}
 245              	.L65:
 246 0026 1846     		mov	r0, r3
 247 0028 2A46     		mov	r2, r5
 248 002a 0499     		ldr	r1, [sp, #16]
 249 002c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 250 0030 38B9     		cbnz	r0, .L66
 251              	.L44:
 252 0032 2068     		ldr	r0, [r4]
 253 0034 0028     		cmp	r0, #0
 254 0036 F5D0     		beq	.L43
 255 0038 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 256 003c 0023     		movs	r3, #0
 257 003e 2360     		str	r3, [r4]
 258 0040 38BD     		pop	{r3, r4, r5, pc}
 259              	.L66:
 260 0042 049B     		ldr	r3, [sp, #16]
 261 0044 5819     		adds	r0, r3, r5
 262 0046 10F8013C 		ldrb	r3, [r0, #-1]	@ zero_extendqisi2
 263 004a 0A2B     		cmp	r3, #10
 264 004c E8D0     		beq	.L48
 265 004e 2368     		ldr	r3, [r4]
 266 0050 E1E7     		b	.L45
 267              		.size	_ZN6Logger18InternalLogMessageExPKc, .-_ZN6Logger18InternalLogMessageExPKc
 268 0052 00BF     		.section	.text._ZN6Logger5StartExRK9StringRef,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZN6Logger5StartExRK9StringRef
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	_ZN6Logger5StartExRK9StringRef, %function
 277              	_ZN6Logger5StartExRK9StringRef:
 278              		@ args = 4, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 281 0002 1F46     		mov	r7, r3
 282 0004 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 283 0006 83B0     		sub	sp, sp, #12
 284 0008 0BB1     		cbz	r3, .L78
 285 000a 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccwUCr4x.s 			page 6


 286              		@ sp needed
 287 000c F0BD     		pop	{r4, r5, r6, r7, pc}
 288              	.L78:
 289 000e 144B     		ldr	r3, .L79
 290 0010 1449     		ldr	r1, .L79+4
 291 0012 1B68     		ldr	r3, [r3]	@ unaligned
 292 0014 0446     		mov	r4, r0
 293 0016 1646     		mov	r6, r2
 294 0018 089A     		ldr	r2, [sp, #32]
 295 001a 0120     		movs	r0, #1
 296 001c 1268     		ldr	r2, [r2]
 297 001e 6073     		strb	r0, [r4, #13]
 298 0020 D3F8B409 		ldr	r0, [r3, #2484]
 299 0024 0223     		movs	r3, #2
 300 0026 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 301 002a 0546     		mov	r5, r0
 302 002c 98B1     		cbz	r0, .L69
 303 002e 2068     		ldr	r0, [r4]
 304 0030 08B1     		cbz	r0, .L70
 305 0032 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 306              	.L70:
 307 0036 2560     		str	r5, [r4]
 308 0038 2846     		mov	r0, r5
 309 003a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 310 003e 0146     		mov	r1, r0
 311 0040 A060     		str	r0, [r4, #8]
 312 0042 2068     		ldr	r0, [r4]
 313 0044 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 314 0048 074B     		ldr	r3, .L79+8
 315 004a 0093     		str	r3, [sp]
 316 004c 3246     		mov	r2, r6
 317 004e 3B46     		mov	r3, r7
 318 0050 2046     		mov	r0, r4
 319 0052 FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageExPKc
 320              	.L69:
 321 0056 0023     		movs	r3, #0
 322 0058 6373     		strb	r3, [r4, #13]
 323 005a 03B0     		add	sp, sp, #12
 324              		@ sp needed
 325 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 326              	.L80:
 327 005e 00BF     		.align	2
 328              	.L79:
 329 0060 00000000 		.word	reprap
 330 0064 00000000 		.word	.LC2
 331 0068 08000000 		.word	.LC3
 332              		.size	_ZN6Logger5StartExRK9StringRef, .-_ZN6Logger5StartExRK9StringRef
 333              		.section	.text._ZN6Logger4StopEx,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	_ZN6Logger4StopEx
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 341              		.type	_ZN6Logger4StopEx, %function
 342              	_ZN6Logger4StopEx:
ARM GAS  /tmp/ccwUCr4x.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345 0000 0168     		ldr	r1, [r0]
 346 0002 A9B1     		cbz	r1, .L91
 347 0004 70B5     		push	{r4, r5, r6, lr}
 348 0006 457B     		ldrb	r5, [r0, #13]	@ zero_extendqisi2
 349 0008 82B0     		sub	sp, sp, #8
 350 000a 0446     		mov	r4, r0
 351 000c 0DB1     		cbz	r5, .L94
 352 000e 02B0     		add	sp, sp, #8
 353              		@ sp needed
 354 0010 70BD     		pop	{r4, r5, r6, pc}
 355              	.L94:
 356 0012 0849     		ldr	r1, .L95
 357 0014 0126     		movs	r6, #1
 358 0016 4673     		strb	r6, [r0, #13]
 359 0018 0091     		str	r1, [sp]
 360 001a FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageExPKc
 361 001e 2068     		ldr	r0, [r4]
 362 0020 10B1     		cbz	r0, .L83
 363 0022 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 364 0026 2560     		str	r5, [r4]
 365              	.L83:
 366 0028 0023     		movs	r3, #0
 367 002a 6373     		strb	r3, [r4, #13]
 368 002c 02B0     		add	sp, sp, #8
 369              		@ sp needed
 370 002e 70BD     		pop	{r4, r5, r6, pc}
 371              	.L91:
 372 0030 7047     		bx	lr
 373              	.L96:
 374 0032 00BF     		.align	2
 375              	.L95:
 376 0034 00000000 		.word	.LC4
 377              		.size	_ZN6Logger4StopEx, .-_ZN6Logger4StopEx
 378              		.section	.text._ZN6Logger10LogMessageExPKc,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	_ZN6Logger10LogMessageExPKc
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv4-sp-d16
 386              		.type	_ZN6Logger10LogMessageExPKc, %function
 387              	_ZN6Logger10LogMessageExPKc:
 388              		@ args = 4, pretend = 0, frame = 0
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 0168     		ldr	r1, [r0]
 391 0002 79B1     		cbz	r1, .L103
 392 0004 70B5     		push	{r4, r5, r6, lr}
 393 0006 457B     		ldrb	r5, [r0, #13]	@ zero_extendqisi2
 394 0008 82B0     		sub	sp, sp, #8
 395 000a 0446     		mov	r4, r0
 396 000c 0DB1     		cbz	r5, .L106
 397 000e 02B0     		add	sp, sp, #8
 398              		@ sp needed
 399 0010 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccwUCr4x.s 			page 8


 400              	.L106:
 401 0012 0121     		movs	r1, #1
 402 0014 069E     		ldr	r6, [sp, #24]
 403 0016 0096     		str	r6, [sp]
 404 0018 4173     		strb	r1, [r0, #13]
 405 001a FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageExPKc
 406 001e 6573     		strb	r5, [r4, #13]
 407 0020 02B0     		add	sp, sp, #8
 408              		@ sp needed
 409 0022 70BD     		pop	{r4, r5, r6, pc}
 410              	.L103:
 411 0024 7047     		bx	lr
 412              		.size	_ZN6Logger10LogMessageExPKc, .-_ZN6Logger10LogMessageExPKc
 413 0026 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 414              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 415              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 416              	_ZL28cpu_irq_prev_interrupt_state:
 417 0000 00       		.space	1
 418              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 419              		.align	2
 420              		.type	_ZL32cpu_irq_critical_section_counter, %object
 421              		.size	_ZL32cpu_irq_critical_section_counter, 4
 422              	_ZL32cpu_irq_critical_section_counter:
 423 0000 00000000 		.space	4
 424              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 425              		.align	2
 426              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 427              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 428              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 429 0000 00000000 		.space	4
 430              		.section	.rodata._ZN6Logger13WriteDateTimeEx.str1.4,"aMS",%progbits,1
 431              		.align	2
 432              	.LC0:
 433 0000 706F7765 		.ascii	"power up + %02lu:%02lu:%02lu \000"
 433      72207570 
 433      202B2025 
 433      30326C75 
 433      3A253032 
 434 001e 0000     		.space	2
 435              	.LC1:
 436 0020 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u \000"
 436      2D253032 
 436      752D2530 
 436      32752025 
 436      3032753A 
 437              		.section	.rodata._ZN6Logger4StopEx.str1.4,"aMS",%progbits,1
 438              		.align	2
 439              	.LC4:
 440 0000 4576656E 		.ascii	"Event logging stopped\012\000"
 440      74206C6F 
 440      6767696E 
 440      67207374 
 440      6F707065 
 441              		.section	.rodata._ZN6Logger5StartExRK9StringRef.str1.4,"aMS",%progbits,1
 442              		.align	2
 443              	.LC2:
 444 0000 303A2F73 		.ascii	"0:/sys/\000"
ARM GAS  /tmp/ccwUCr4x.s 			page 9


 444      79732F00 
 445              	.LC3:
 446 0008 4576656E 		.ascii	"Event logging started\012\000"
 446      74206C6F 
 446      6767696E 
 446      67207374 
 446      61727465 
 447              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
