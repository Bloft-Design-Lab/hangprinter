ARM GAS  /tmp/ccbTtNjz.s 			page 1


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
  13              		.file	"Scanner.cpp"
  14              		.section	.text._ZN7Scanner4InitEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN7Scanner4InitEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN7Scanner4InitEv, %function
  23              	_ZN7Scanner4InitEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0023     		movs	r3, #0
  28 0002 0022     		movs	r2, #0
  29 0004 C260     		str	r2, [r0, #12]	@ float
  30 0006 0372     		strb	r3, [r0, #8]
  31 0008 4372     		strb	r3, [r0, #9]
  32 000a 0361     		str	r3, [r0, #16]
  33 000c C0F89430 		str	r3, [r0, #148]
  34 0010 C0F83031 		str	r3, [r0, #304]
  35 0014 7047     		bx	lr
  36              		.size	_ZN7Scanner4InitEv, .-_ZN7Scanner4InitEv
  37 0016 00BF     		.section	.text._ZN7Scanner8SetStateE12ScannerState,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	_ZN7Scanner8SetStateE12ScannerState
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	_ZN7Scanner8SetStateE12ScannerState, %function
  46              	_ZN7Scanner8SetStateE12ScannerState:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 0022     		movs	r2, #0
  51 0002 0023     		movs	r3, #0
  52 0004 0161     		str	r1, [r0, #16]
  53 0006 C260     		str	r2, [r0, #12]	@ float
  54 0008 4372     		strb	r3, [r0, #9]
  55 000a 7047     		bx	lr
  56              		.size	_ZN7Scanner8SetStateE12ScannerState, .-_ZN7Scanner8SetStateE12ScannerState
  57              		.section	.text._ZN7Scanner6EnableEv,"ax",%progbits
ARM GAS  /tmp/ccbTtNjz.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZN7Scanner6EnableEv
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZN7Scanner6EnableEv, %function
  66              	_ZN7Scanner6EnableEv:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 0123     		movs	r3, #1
  71 0002 0372     		strb	r3, [r0, #8]
  72 0004 1846     		mov	r0, r3
  73 0006 7047     		bx	lr
  74              		.size	_ZN7Scanner6EnableEv, .-_ZN7Scanner6EnableEv
  75              		.section	.text._ZN7Scanner6CancelEv,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_ZN7Scanner6CancelEv
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	_ZN7Scanner6CancelEv, %function
  84              	_ZN7Scanner6CancelEv:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87 0000 0269     		ldr	r2, [r0, #16]
  88 0002 22F00203 		bic	r3, r2, #2
  89 0006 042B     		cmp	r3, #4
  90 0008 07D0     		beq	.L9
  91 000a 082B     		cmp	r3, #8
  92 000c 05D0     		beq	.L9
  93 000e 052A     		cmp	r2, #5
  94 0010 05D0     		beq	.L7
  95 0012 092A     		cmp	r2, #9
  96 0014 03D0     		beq	.L7
  97 0016 0120     		movs	r0, #1
  98 0018 7047     		bx	lr
  99              	.L9:
 100 001a 0020     		movs	r0, #0
 101 001c 7047     		bx	lr
 102              	.L7:
 103 001e 10B5     		push	{r4, lr}
 104 0020 064A     		ldr	r2, .L17
 105 0022 0446     		mov	r4, r0
 106 0024 0221     		movs	r1, #2
 107 0026 4068     		ldr	r0, [r0, #4]
 108 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 109 002c 0022     		movs	r2, #0
 110 002e 0023     		movs	r3, #0
 111 0030 0120     		movs	r0, #1
 112 0032 E260     		str	r2, [r4, #12]	@ float
 113 0034 6372     		strb	r3, [r4, #9]
 114 0036 2061     		str	r0, [r4, #16]
ARM GAS  /tmp/ccbTtNjz.s 			page 3


 115 0038 10BD     		pop	{r4, pc}
 116              	.L18:
 117 003a 00BF     		.align	2
 118              	.L17:
 119 003c 00000000 		.word	.LC0
 120              		.size	_ZN7Scanner6CancelEv, .-_ZN7Scanner6CancelEv
 121              		.section	.text._ZN7Scanner4ExitEv,"ax",%progbits
 122              		.align	1
 123              		.p2align 2,,3
 124              		.global	_ZN7Scanner4ExitEv
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu fpv4-sp-d16
 129              		.type	_ZN7Scanner4ExitEv, %function
 130              	_ZN7Scanner4ExitEv:
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 134 0002 03B3     		cbz	r3, .L34
 135 0004 10B5     		push	{r4, lr}
 136 0006 0369     		ldr	r3, [r0, #16]
 137 0008 052B     		cmp	r3, #5
 138 000a 0446     		mov	r4, r0
 139 000c 17D0     		beq	.L21
 140 000e 092B     		cmp	r3, #9
 141 0010 15D0     		beq	.L21
 142              	.L22:
 143 0012 D4F83001 		ldr	r0, [r4, #304]
 144 0016 60B1     		cbz	r0, .L23
 145 0018 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 146 001c 6268     		ldr	r2, [r4, #4]
 147 001e 0A49     		ldr	r1, .L37
 148 0020 0023     		movs	r3, #0
 149 0022 C4F83031 		str	r3, [r4, #304]
 150 0026 D2F8B409 		ldr	r0, [r2, #2484]
 151 002a D4F82421 		ldr	r2, [r4, #292]
 152 002e FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 153              	.L23:
 154 0032 0023     		movs	r3, #0
 155 0034 0022     		movs	r2, #0
 156 0036 E260     		str	r2, [r4, #12]	@ float
 157 0038 6372     		strb	r3, [r4, #9]
 158 003a 2361     		str	r3, [r4, #16]
 159 003c 10BD     		pop	{r4, pc}
 160              	.L21:
 161 003e 2046     		mov	r0, r4
 162 0040 FFF7FEFF 		bl	_ZN7Scanner6CancelEv
 163 0044 E5E7     		b	.L22
 164              	.L34:
 165 0046 7047     		bx	lr
 166              	.L38:
 167              		.align	2
 168              	.L37:
 169 0048 00000000 		.word	.LC1
 170              		.size	_ZN7Scanner4ExitEv, .-_ZN7Scanner4ExitEv
 171              		.section	.text._ZN7Scanner8ShutdownEv,"ax",%progbits
ARM GAS  /tmp/ccbTtNjz.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_ZN7Scanner8ShutdownEv
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZN7Scanner8ShutdownEv, %function
 180              	_ZN7Scanner8ShutdownEv:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 38B5     		push	{r3, r4, r5, lr}
 184 0002 0469     		ldr	r4, [r0, #16]
 185 0004 012C     		cmp	r4, #1
 186 0006 01D0     		beq	.L43
 187 0008 0020     		movs	r0, #0
 188 000a 38BD     		pop	{r3, r4, r5, pc}
 189              	.L43:
 190 000c 0546     		mov	r5, r0
 191 000e 064A     		ldr	r2, .L44
 192 0010 4068     		ldr	r0, [r0, #4]
 193 0012 0221     		movs	r1, #2
 194 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 195 0018 0023     		movs	r3, #0
 196 001a 0022     		movs	r2, #0
 197 001c EA60     		str	r2, [r5, #12]	@ float
 198 001e 6B72     		strb	r3, [r5, #9]
 199 0020 2B61     		str	r3, [r5, #16]
 200 0022 2046     		mov	r0, r4
 201 0024 38BD     		pop	{r3, r4, r5, pc}
 202              	.L45:
 203 0026 00BF     		.align	2
 204              	.L44:
 205 0028 00000000 		.word	.LC2
 206              		.size	_ZN7Scanner8ShutdownEv, .-_ZN7Scanner8ShutdownEv
 207              		.section	.text._ZNK7Scanner18GetStatusCharacterEv,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZNK7Scanner18GetStatusCharacterEv
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	_ZNK7Scanner18GetStatusCharacterEv, %function
 216              	_ZNK7Scanner18GetStatusCharacterEv:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 0369     		ldr	r3, [r0, #16]
 221 0002 0B2B     		cmp	r3, #11
 222 0004 9ABF     		itte	ls
 223 0006 024A     		ldrls	r2, .L49
 224 0008 D05C     		ldrbls	r0, [r2, r3]	@ zero_extendqisi2
 225 000a 4920     		movhi	r0, #73
 226 000c 7047     		bx	lr
 227              	.L50:
 228 000e 00BF     		.align	2
ARM GAS  /tmp/ccbTtNjz.s 			page 5


 229              	.L49:
 230 0010 00000000 		.word	.LANCHOR0
 231              		.size	_ZNK7Scanner18GetStatusCharacterEv, .-_ZNK7Scanner18GetStatusCharacterEv
 232              		.section	.text._ZNK7Scanner11GetProgressEv,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_ZNK7Scanner11GetProgressEv
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu fpv4-sp-d16
 240              		.type	_ZNK7Scanner11GetProgressEv, %function
 241              	_ZNK7Scanner11GetProgressEv:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 0369     		ldr	r3, [r0, #16]
 246 0002 0B2B     		cmp	r3, #11
 247 0004 02D0     		beq	.L54
 248 0006 90ED030A 		vldr.32	s0, [r0, #12]
 249 000a 7047     		bx	lr
 250              	.L54:
 251 000c D0F82821 		ldr	r2, [r0, #296]
 252 0010 D0F82C31 		ldr	r3, [r0, #300]
 253 0014 DFED076A 		vldr.32	s13, .L55
 254 0018 D31A     		subs	r3, r2, r3
 255 001a 07EE903A 		vmov	s15, r3	@ int
 256 001e 07EE102A 		vmov	s14, r2	@ int
 257 0022 F8EE677A 		vcvt.f32.u32	s15, s15
 258 0026 B8EE477A 		vcvt.f32.u32	s14, s14
 259 002a 87EE870A 		vdiv.f32	s0, s15, s14
 260 002e 20EE260A 		vmul.f32	s0, s0, s13
 261 0032 7047     		bx	lr
 262              	.L56:
 263              		.align	2
 264              	.L55:
 265 0034 0000C842 		.word	1120403456
 266              		.size	_ZNK7Scanner11GetProgressEv, .-_ZNK7Scanner11GetProgressEv
 267              		.section	.text._ZNK7Scanner16IsDoingFileMacroEv,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.global	_ZNK7Scanner16IsDoingFileMacroEv
 271              		.syntax unified
 272              		.thumb
 273              		.thumb_func
 274              		.fpu fpv4-sp-d16
 275              		.type	_ZNK7Scanner16IsDoingFileMacroEv, %function
 276              	_ZNK7Scanner16IsDoingFileMacroEv:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279 0000 10B5     		push	{r4, lr}
 280 0002 0446     		mov	r4, r0
 281 0004 0068     		ldr	r0, [r0]
 282 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 283 000a 00B1     		cbz	r0, .L63
 284              	.L58:
 285 000c 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccbTtNjz.s 			page 6


 286              	.L63:
 287 000e 4D21     		movs	r1, #77
 288 0010 2068     		ldr	r0, [r4]
 289 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 290 0016 0028     		cmp	r0, #0
 291 0018 F8D0     		beq	.L58
 292 001a 2068     		ldr	r0, [r4]
 293 001c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 294 0020 A0F16200 		sub	r0, #98
 295 0024 B0FA80F0 		clz	r0, r0
 296 0028 4009     		lsrs	r0, r0, #5
 297 002a 10BD     		pop	{r4, pc}
 298              		.size	_ZNK7Scanner16IsDoingFileMacroEv, .-_ZNK7Scanner16IsDoingFileMacroEv
 299              		.section	.text._ZN6StringILj127EE6printfEPKcz,"axG",%progbits,_ZN6StringILj127EE6printfEPKcz,comda
 300              		.align	1
 301              		.p2align 2,,3
 302              		.weak	_ZN6StringILj127EE6printfEPKcz
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZN6StringILj127EE6printfEPKcz, %function
 308              	_ZN6StringILj127EE6printfEPKcz:
 309              		@ args = 4, pretend = 12, frame = 16
 310              		@ frame_needed = 0, uses_anonymous_args = 1
 311 0000 0EB4     		push	{r1, r2, r3}
 312 0002 00B5     		push	{lr}
 313 0004 84B0     		sub	sp, sp, #16
 314 0006 05AA     		add	r2, sp, #20
 315 0008 0290     		str	r0, [sp, #8]
 316 000a 52F8041B 		ldr	r1, [r2], #4
 317 000e 0192     		str	r2, [sp, #4]
 318 0010 8023     		movs	r3, #128
 319 0012 02A8     		add	r0, sp, #8
 320 0014 0393     		str	r3, [sp, #12]
 321 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 322 001a 04B0     		add	sp, sp, #16
 323              		@ sp needed
 324 001c 5DF804EB 		ldr	lr, [sp], #4
 325 0020 03B0     		add	sp, sp, #12
 326 0022 7047     		bx	lr
 327              		.size	_ZN6StringILj127EE6printfEPKcz, .-_ZN6StringILj127EE6printfEPKcz
 328              		.section	.text._ZN7Scanner11DoFileMacroEPKc,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	_ZN7Scanner11DoFileMacroEPKc
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	_ZN7Scanner11DoFileMacroEPKc, %function
 337              	_ZN7Scanner11DoFileMacroEPKc:
 338              		@ args = 0, pretend = 0, frame = 128
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 70B5     		push	{r4, r5, r6, lr}
 341 0002 4368     		ldr	r3, [r0, #4]
 342 0004 0D46     		mov	r5, r1
ARM GAS  /tmp/ccbTtNjz.s 			page 7


 343 0006 A0B0     		sub	sp, sp, #128
 344 0008 0446     		mov	r4, r0
 345 000a 0B49     		ldr	r1, .L72
 346 000c D3F8B409 		ldr	r0, [r3, #2484]
 347 0010 2A46     		mov	r2, r5
 348 0012 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 349 0016 60B1     		cbz	r0, .L66
 350 0018 20AE     		add	r6, sp, #128
 351 001a 0023     		movs	r3, #0
 352 001c 06F8803D 		strb	r3, [r6, #-128]!
 353 0020 0649     		ldr	r1, .L72+4
 354 0022 2A46     		mov	r2, r5
 355 0024 3046     		mov	r0, r6
 356 0026 FFF7FEFF 		bl	_ZN6StringILj127EE6printfEPKcz
 357 002a 3146     		mov	r1, r6
 358 002c 2068     		ldr	r0, [r4]
 359 002e FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 360              	.L66:
 361 0032 20B0     		add	sp, sp, #128
 362              		@ sp needed
 363 0034 70BD     		pop	{r4, r5, r6, pc}
 364              	.L73:
 365 0036 00BF     		.align	2
 366              	.L72:
 367 0038 00000000 		.word	.LC3
 368 003c 08000000 		.word	.LC4
 369              		.size	_ZN7Scanner11DoFileMacroEPKc, .-_ZN7Scanner11DoFileMacroEPKc
 370              		.section	.text._ZN7Scanner14ProcessCommandEv,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	_ZN7Scanner14ProcessCommandEv
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu fpv4-sp-d16
 378              		.type	_ZN7Scanner14ProcessCommandEv, %function
 379              	_ZN7Scanner14ProcessCommandEv:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 383 0004 794E     		ldr	r6, .L127
 384 0006 B36C     		ldr	r3, [r6, #72]	@ unaligned
 385 0008 DA05     		lsls	r2, r3, #23
 386 000a 83B0     		sub	sp, sp, #12
 387 000c 0446     		mov	r4, r0
 388 000e 00F11405 		add	r5, r0, #20
 389 0012 33D4     		bmi	.L121
 390              	.L75:
 391 0014 7649     		ldr	r1, .L127+4
 392 0016 2846     		mov	r0, r5
 393 0018 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 394 001c 00BB     		cbnz	r0, .L122
 395 001e 7549     		ldr	r1, .L127+8
 396 0020 2846     		mov	r0, r5
 397 0022 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 398 0026 0746     		mov	r7, r0
 399 0028 68B9     		cbnz	r0, .L123
ARM GAS  /tmp/ccbTtNjz.s 			page 8


 400 002a 7349     		ldr	r1, .L127+12
 401 002c 2846     		mov	r0, r5
 402 002e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 403 0032 8046     		mov	r8, r0
 404 0034 48B3     		cbz	r0, .L79
 405 0036 0022     		movs	r2, #0
 406 0038 0723     		movs	r3, #7
 407 003a 6772     		strb	r7, [r4, #9]
 408 003c E260     		str	r2, [r4, #12]	@ float
 409 003e 2361     		str	r3, [r4, #16]
 410 0040 03B0     		add	sp, sp, #12
 411              		@ sp needed
 412 0042 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 413              	.L123:
 414 0046 D4F89420 		ldr	r2, [r4, #148]
 415 004a 2068     		ldr	r0, [r4]
 416 004c 0123     		movs	r3, #1
 417 004e 063A     		subs	r2, r2, #6
 418 0050 04F11A01 		add	r1, r4, #26
 419 0054 6372     		strb	r3, [r4, #9]
 420 0056 03B0     		add	sp, sp, #12
 421              		@ sp needed
 422 0058 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 423 005c FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKcj
 424              	.L122:
 425 0060 664A     		ldr	r2, .L127+16
 426 0062 6068     		ldr	r0, [r4, #4]
 427 0064 0221     		movs	r1, #2
 428 0066 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 429              	.L96:
 430 006a 0021     		movs	r1, #0
 431 006c 0022     		movs	r2, #0
 432 006e 0123     		movs	r3, #1
 433 0070 E160     		str	r1, [r4, #12]	@ float
 434 0072 6272     		strb	r2, [r4, #9]
 435 0074 2361     		str	r3, [r4, #16]
 436              	.L74:
 437 0076 03B0     		add	sp, sp, #12
 438              		@ sp needed
 439 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 440              	.L121:
 441 007c 2B46     		mov	r3, r5
 442 007e 604A     		ldr	r2, .L127+20
 443 0080 4068     		ldr	r0, [r0, #4]
 444 0082 1021     		movs	r1, #16
 445 0084 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 446 0088 C4E7     		b	.L75
 447              	.L79:
 448 008a 5E49     		ldr	r1, .L127+24
 449 008c 2846     		mov	r0, r5
 450 008e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 451 0092 8146     		mov	r9, r0
 452 0094 D0B1     		cbz	r0, .L80
 453 0096 4146     		mov	r1, r8
 454 0098 04F11D00 		add	r0, r4, #29
 455 009c FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 456 00a0 B4EE400A 		vcmp.f32	s0, s0
ARM GAS  /tmp/ccbTtNjz.s 			page 9


 457 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 458 00a8 0DD6     		bvs	.L81
 459 00aa DFED577A 		vldr.32	s15, .L127+28
 460 00ae B4EEE70A 		vcmpe.f32	s0, s15
 461 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 462 00b6 4CD5     		bpl	.L114
 463 00b8 B5EEC00A 		vcmpe.f32	s0, #0
 464 00bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 465 00c0 01DC     		bgt	.L81
 466 00c2 9FED520A 		vldr.32	s0, .L127+32
 467              	.L81:
 468 00c6 84ED030A 		vstr.32	s0, [r4, #12]
 469 00ca D4E7     		b	.L74
 470              	.L80:
 471 00cc 5049     		ldr	r1, .L127+36
 472 00ce 2846     		mov	r0, r5
 473 00d0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 474 00d4 0746     		mov	r7, r0
 475 00d6 28B3     		cbz	r0, .L84
 476 00d8 04F11B00 		add	r0, r4, #27
 477 00dc FFF7FEFF 		bl	atoi
 478 00e0 D4F89470 		ldr	r7, [r4, #148]
 479 00e4 C4F82801 		str	r0, [r4, #296]
 480 00e8 013F     		subs	r7, r7, #1
 481 00ea 082F     		cmp	r7, #8
 482 00ec C4F82491 		str	r9, [r4, #292]
 483 00f0 0ED9     		bls	.L120
 484 00f2 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 485 00f4 202B     		cmp	r3, #32
 486 00f6 77D0     		beq	.L124
 487 00f8 04F11C01 		add	r1, r4, #28
 488 00fc 0822     		movs	r2, #8
 489 00fe 04E0     		b	.L88
 490              	.L118:
 491 0100 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 492 0104 202D     		cmp	r5, #32
 493 0106 27D0     		beq	.L125
 494 0108 1A46     		mov	r2, r3
 495              	.L88:
 496 010a 531C     		adds	r3, r2, #1
 497 010c BB42     		cmp	r3, r7
 498 010e F7D1     		bne	.L118
 499              	.L120:
 500 0110 6368     		ldr	r3, [r4, #4]
 501              	.L85:
 502 0112 404A     		ldr	r2, .L127+40
 503 0114 1846     		mov	r0, r3
 504 0116 40F2B511 		movw	r1, #437
 505 011a 03B0     		add	sp, sp, #12
 506              		@ sp needed
 507 011c BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 508 0120 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 509              	.L84:
 510 0124 3C49     		ldr	r1, .L127+44
 511 0126 2846     		mov	r0, r5
 512 0128 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 513 012c 0028     		cmp	r0, #0
ARM GAS  /tmp/ccbTtNjz.s 			page 10


 514 012e 3CD0     		beq	.L93
 515 0130 2369     		ldr	r3, [r4, #16]
 516 0132 052B     		cmp	r3, #5
 517 0134 4ED0     		beq	.L126
 518 0136 072B     		cmp	r3, #7
 519 0138 97D0     		beq	.L96
 520 013a 092B     		cmp	r3, #9
 521 013c 9BD1     		bne	.L74
 522 013e 3749     		ldr	r1, .L127+48
 523 0140 2046     		mov	r0, r4
 524 0142 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 525 0146 0022     		movs	r2, #0
 526 0148 0A23     		movs	r3, #10
 527 014a 6772     		strb	r7, [r4, #9]
 528 014c E260     		str	r2, [r4, #12]	@ float
 529 014e 2361     		str	r3, [r4, #16]
 530 0150 91E7     		b	.L74
 531              	.L114:
 532 0152 B0EE670A 		vmov.f32	s0, s15
 533 0156 B6E7     		b	.L81
 534              	.L125:
 535 0158 1632     		adds	r2, r2, #22
 536              	.L86:
 537 015a 2244     		add	r2, r2, r4
 538 015c C4F82421 		str	r2, [r4, #292]
 539 0160 6368     		ldr	r3, [r4, #4]
 540 0162 002A     		cmp	r2, #0
 541 0164 D5D0     		beq	.L85
 542 0166 C4F82C01 		str	r0, [r4, #300]
 543 016a D3F8B409 		ldr	r0, [r3, #2484]
 544 016e 2C49     		ldr	r1, .L127+52
 545 0170 0123     		movs	r3, #1
 546 0172 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 547 0176 C4F83001 		str	r0, [r4, #304]
 548 017a 0028     		cmp	r0, #0
 549 017c 3FF47BAF 		beq	.L74
 550 0180 0B23     		movs	r3, #11
 551 0182 0021     		movs	r1, #0
 552 0184 0022     		movs	r2, #0
 553 0186 E160     		str	r1, [r4, #12]	@ float
 554 0188 6272     		strb	r2, [r4, #9]
 555 018a 2361     		str	r3, [r4, #16]
 556 018c B36C     		ldr	r3, [r6, #72]
 557 018e DB05     		lsls	r3, r3, #23
 558 0190 7FF571AF 		bpl	.L74
 559 0194 D4F82821 		ldr	r2, [r4, #296]
 560 0198 D4F82431 		ldr	r3, [r4, #292]
 561 019c 6068     		ldr	r0, [r4, #4]
 562 019e 0092     		str	r2, [sp]
 563 01a0 1021     		movs	r1, #16
 564 01a2 204A     		ldr	r2, .L127+56
 565 01a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 566 01a8 65E7     		b	.L74
 567              	.L93:
 568 01aa 2846     		mov	r0, r5
 569 01ac 1E49     		ldr	r1, .L127+60
 570 01ae FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
ARM GAS  /tmp/ccbTtNjz.s 			page 11


 571 01b2 0028     		cmp	r0, #0
 572 01b4 3FF45FAF 		beq	.L74
 573 01b8 D4F89430 		ldr	r3, [r4, #148]
 574 01bc 062B     		cmp	r3, #6
 575 01be 7FF654AF 		bls	.L96
 576 01c2 04F11A03 		add	r3, r4, #26
 577 01c6 194A     		ldr	r2, .L127+64
 578 01c8 6068     		ldr	r0, [r4, #4]
 579 01ca 40F2B511 		movw	r1, #437
 580 01ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 581 01d2 4AE7     		b	.L96
 582              	.L126:
 583 01d4 1649     		ldr	r1, .L127+68
 584 01d6 2046     		mov	r0, r4
 585 01d8 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 586 01dc 0022     		movs	r2, #0
 587 01de 0623     		movs	r3, #6
 588 01e0 6772     		strb	r7, [r4, #9]
 589 01e2 E260     		str	r2, [r4, #12]	@ float
 590 01e4 2361     		str	r3, [r4, #16]
 591 01e6 46E7     		b	.L74
 592              	.L124:
 593 01e8 1D22     		movs	r2, #29
 594 01ea B6E7     		b	.L86
 595              	.L128:
 596              		.align	2
 597              	.L127:
 598 01ec 00000000 		.word	reprap
 599 01f0 18000000 		.word	.LC6
 600 01f4 24000000 		.word	.LC8
 601 01f8 2C000000 		.word	.LC9
 602 01fc 20000000 		.word	.LC7
 603 0200 00000000 		.word	.LC5
 604 0204 38000000 		.word	.LC10
 605 0208 0000C842 		.word	1120403456
 606 020c 00000000 		.word	0
 607 0210 44000000 		.word	.LC11
 608 0214 80000000 		.word	.LC13
 609 0218 A4000000 		.word	.LC14
 610 021c B4000000 		.word	.LC16
 611 0220 00000000 		.word	.LC1
 612 0224 4C000000 		.word	.LC12
 613 0228 C8000000 		.word	.LC17
 614 022c D0000000 		.word	.LC18
 615 0230 A8000000 		.word	.LC15
 616              		.size	_ZN7Scanner14ProcessCommandEv, .-_ZN7Scanner14ProcessCommandEv
 617              		.section	.text._ZN7Scanner8RegisterEv,"ax",%progbits
 618              		.align	1
 619              		.p2align 2,,3
 620              		.global	_ZN7Scanner8RegisterEv
 621              		.syntax unified
 622              		.thumb
 623              		.thumb_func
 624              		.fpu fpv4-sp-d16
 625              		.type	_ZN7Scanner8RegisterEv, %function
 626              	_ZN7Scanner8RegisterEv:
 627              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccbTtNjz.s 			page 12


 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629 0000 38B5     		push	{r3, r4, r5, lr}
 630 0002 0569     		ldr	r5, [r0, #16]
 631 0004 05B1     		cbz	r5, .L132
 632 0006 38BD     		pop	{r3, r4, r5, pc}
 633              	.L132:
 634 0008 0446     		mov	r4, r0
 635 000a 084A     		ldr	r2, .L133
 636 000c 4068     		ldr	r0, [r0, #4]
 637 000e 0221     		movs	r1, #2
 638 0010 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 639 0014 0123     		movs	r3, #1
 640 0016 0022     		movs	r2, #0
 641 0018 6572     		strb	r5, [r4, #9]
 642 001a E260     		str	r2, [r4, #12]	@ float
 643 001c 2361     		str	r3, [r4, #16]
 644 001e 2046     		mov	r0, r4
 645 0020 0349     		ldr	r1, .L133+4
 646 0022 BDE83840 		pop	{r3, r4, r5, lr}
 647 0026 FFF7FEBF 		b	_ZN7Scanner11DoFileMacroEPKc
 648              	.L134:
 649 002a 00BF     		.align	2
 650              	.L133:
 651 002c 20000000 		.word	.LC7
 652 0030 00000000 		.word	.LC19
 653              		.size	_ZN7Scanner8RegisterEv, .-_ZN7Scanner8RegisterEv
 654              		.section	.text._ZN7Scanner9StartScanEPKciii,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	_ZN7Scanner9StartScanEPKciii
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	_ZN7Scanner9StartScanEPKciii, %function
 663              	_ZN7Scanner9StartScanEPKciii:
 664              		@ args = 4, pretend = 0, frame = 8
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 667 0002 0569     		ldr	r5, [r0, #16]
 668 0004 012D     		cmp	r5, #1
 669 0006 83B0     		sub	sp, sp, #12
 670 0008 02D0     		beq	.L140
 671              	.L138:
 672 000a 0020     		movs	r0, #0
 673 000c 03B0     		add	sp, sp, #12
 674              		@ sp needed
 675 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 676              	.L140:
 677 0010 0468     		ldr	r4, [r0]
 678 0012 94F82840 		ldrb	r4, [r4, #40]	@ zero_extendqisi2
 679 0016 083C     		subs	r4, r4, #8
 680 0018 012C     		cmp	r4, #1
 681 001a F6D9     		bls	.L138
 682 001c 0446     		mov	r4, r0
 683 001e 1E46     		mov	r6, r3
 684 0020 1746     		mov	r7, r2
ARM GAS  /tmp/ccbTtNjz.s 			page 13


 685 0022 7923     		movs	r3, #121
 686 0024 00F19C02 		add	r2, r0, #156
 687 0028 6846     		mov	r0, sp
 688 002a 0092     		str	r2, [sp]
 689 002c 0193     		str	r3, [sp, #4]
 690 002e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 691 0032 089B     		ldr	r3, [sp, #32]
 692 0034 C4F82031 		str	r3, [r4, #288]
 693 0038 2046     		mov	r0, r4
 694 003a C4F81871 		str	r7, [r4, #280]
 695 003e C4F81C61 		str	r6, [r4, #284]
 696 0042 0649     		ldr	r1, .L141
 697 0044 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 698 0048 0021     		movs	r1, #0
 699 004a 0022     		movs	r2, #0
 700 004c 0423     		movs	r3, #4
 701 004e 2846     		mov	r0, r5
 702 0050 E160     		str	r1, [r4, #12]	@ float
 703 0052 6272     		strb	r2, [r4, #9]
 704 0054 2361     		str	r3, [r4, #16]
 705 0056 03B0     		add	sp, sp, #12
 706              		@ sp needed
 707 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 708              	.L142:
 709 005a 00BF     		.align	2
 710              	.L141:
 711 005c 00000000 		.word	.LC20
 712              		.size	_ZN7Scanner9StartScanEPKciii, .-_ZN7Scanner9StartScanEPKciii
 713              		.section	.text._ZN7Scanner12SetAlignmentEb,"ax",%progbits
 714              		.align	1
 715              		.p2align 2,,3
 716              		.global	_ZN7Scanner12SetAlignmentEb
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu fpv4-sp-d16
 721              		.type	_ZN7Scanner12SetAlignmentEb, %function
 722              	_ZN7Scanner12SetAlignmentEb:
 723              		@ args = 0, pretend = 0, frame = 0
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 0269     		ldr	r2, [r0, #16]
 726 0002 012A     		cmp	r2, #1
 727 0004 01D0     		beq	.L156
 728 0006 0020     		movs	r0, #0
 729 0008 7047     		bx	lr
 730              	.L156:
 731 000a 10B5     		push	{r4, lr}
 732 000c 0268     		ldr	r2, [r0]
 733 000e 92F82820 		ldrb	r2, [r2, #40]	@ zero_extendqisi2
 734 0012 083A     		subs	r2, r2, #8
 735 0014 012A     		cmp	r2, #1
 736 0016 0446     		mov	r4, r0
 737 0018 10D9     		bls	.L149
 738 001a 51B9     		cbnz	r1, .L145
 739 001c 0849     		ldr	r1, .L157
 740 001e FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 741 0022 0323     		movs	r3, #3
ARM GAS  /tmp/ccbTtNjz.s 			page 14


 742              	.L147:
 743 0024 0022     		movs	r2, #0
 744 0026 2361     		str	r3, [r4, #16]
 745 0028 0023     		movs	r3, #0
 746 002a E260     		str	r2, [r4, #12]	@ float
 747 002c 6372     		strb	r3, [r4, #9]
 748 002e 0120     		movs	r0, #1
 749 0030 10BD     		pop	{r4, pc}
 750              	.L145:
 751 0032 0449     		ldr	r1, .L157+4
 752 0034 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 753 0038 0223     		movs	r3, #2
 754 003a F3E7     		b	.L147
 755              	.L149:
 756 003c 0020     		movs	r0, #0
 757 003e 10BD     		pop	{r4, pc}
 758              	.L158:
 759              		.align	2
 760              	.L157:
 761 0040 0C000000 		.word	.LC22
 762 0044 00000000 		.word	.LC21
 763              		.size	_ZN7Scanner12SetAlignmentEb, .-_ZN7Scanner12SetAlignmentEb
 764              		.section	.text._ZN7Scanner9CalibrateEi,"ax",%progbits
 765              		.align	1
 766              		.p2align 2,,3
 767              		.global	_ZN7Scanner9CalibrateEi
 768              		.syntax unified
 769              		.thumb
 770              		.thumb_func
 771              		.fpu fpv4-sp-d16
 772              		.type	_ZN7Scanner9CalibrateEi, %function
 773              	_ZN7Scanner9CalibrateEi:
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 38B5     		push	{r3, r4, r5, lr}
 777 0002 0469     		ldr	r4, [r0, #16]
 778 0004 012C     		cmp	r4, #1
 779 0006 01D0     		beq	.L164
 780              	.L162:
 781 0008 0020     		movs	r0, #0
 782 000a 38BD     		pop	{r3, r4, r5, pc}
 783              	.L164:
 784 000c 0268     		ldr	r2, [r0]
 785 000e 92F82820 		ldrb	r2, [r2, #40]	@ zero_extendqisi2
 786 0012 083A     		subs	r2, r2, #8
 787 0014 012A     		cmp	r2, #1
 788 0016 0546     		mov	r5, r0
 789 0018 F6D9     		bls	.L162
 790 001a C0F89810 		str	r1, [r0, #152]
 791 001e 0549     		ldr	r1, .L165
 792 0020 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 793 0024 0021     		movs	r1, #0
 794 0026 0022     		movs	r2, #0
 795 0028 0823     		movs	r3, #8
 796 002a E960     		str	r1, [r5, #12]	@ float
 797 002c 6A72     		strb	r2, [r5, #9]
 798 002e 2B61     		str	r3, [r5, #16]
ARM GAS  /tmp/ccbTtNjz.s 			page 15


 799 0030 2046     		mov	r0, r4
 800 0032 38BD     		pop	{r3, r4, r5, pc}
 801              	.L166:
 802              		.align	2
 803              	.L165:
 804 0034 00000000 		.word	.LC23
 805              		.size	_ZN7Scanner9CalibrateEi, .-_ZN7Scanner9CalibrateEi
 806              		.section	.text._ZN7Scanner4SpinEv,"ax",%progbits
 807              		.align	1
 808              		.p2align 2,,3
 809              		.global	_ZN7Scanner4SpinEv
 810              		.syntax unified
 811              		.thumb
 812              		.thumb_func
 813              		.fpu fpv4-sp-d16
 814              		.type	_ZN7Scanner4SpinEv, %function
 815              	_ZN7Scanner4SpinEv:
 816              		@ args = 0, pretend = 0, frame = 8
 817              		@ frame_needed = 0, uses_anonymous_args = 0
 818 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 819 0002 0BB1     		cbz	r3, .L221
 820 0004 0369     		ldr	r3, [r0, #16]
 821 0006 03B9     		cbnz	r3, .L227
 822              	.L221:
 823 0008 7047     		bx	lr
 824              	.L227:
 825 000a F0B5     		push	{r4, r5, r6, r7, lr}
 826 000c 0446     		mov	r4, r0
 827 000e 87B0     		sub	sp, sp, #28
 828 0010 AC48     		ldr	r0, .L229
 829 0012 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 830 0016 2369     		ldr	r3, [r4, #16]
 831 0018 30BB     		cbnz	r0, .L171
 832 001a 1A1F     		subs	r2, r3, #4
 833 001c 022A     		cmp	r2, #2
 834 001e 1CD9     		bls	.L172
 835 0020 0B2B     		cmp	r3, #11
 836 0022 1AD0     		beq	.L172
 837              	.L173:
 838 0024 D4F83001 		ldr	r0, [r4, #304]
 839 0028 60B1     		cbz	r0, .L174
 840 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 841 002e 6268     		ldr	r2, [r4, #4]
 842 0030 A549     		ldr	r1, .L229+4
 843 0032 0023     		movs	r3, #0
 844 0034 C4F83031 		str	r3, [r4, #304]
 845 0038 D2F8B409 		ldr	r0, [r2, #2484]
 846 003c D4F82421 		ldr	r2, [r4, #292]
 847 0040 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 848              	.L174:
 849 0044 0023     		movs	r3, #0
 850 0046 E360     		str	r3, [r4, #12]	@ float
 851 0048 0023     		movs	r3, #0
 852 004a A049     		ldr	r1, .L229+8
 853 004c 6372     		strb	r3, [r4, #9]
 854 004e 2361     		str	r3, [r4, #16]
 855 0050 2046     		mov	r0, r4
ARM GAS  /tmp/ccbTtNjz.s 			page 16


 856 0052 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 857              	.L167:
 858 0056 07B0     		add	sp, sp, #28
 859              		@ sp needed
 860 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 861              	.L172:
 862 005a 9D4A     		ldr	r2, .L229+12
 863 005c 6068     		ldr	r0, [r4, #4]
 864 005e 40F2B521 		movw	r1, #693
 865 0062 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 866 0066 DDE7     		b	.L173
 867              	.L171:
 868 0068 023B     		subs	r3, r3, #2
 869 006a 092B     		cmp	r3, #9
 870 006c 00F2AB80 		bhi	.L175
 871 0070 DFE803F0 		tbb	[pc, r3]
 872              	.L177:
 873 0074 3D       		.byte	(.L176-.L177)/2
 874 0075 2C       		.byte	(.L178-.L177)/2
 875 0076 10       		.byte	(.L179-.L177)/2
 876 0077 A9       		.byte	(.L175-.L177)/2
 877 0078 05       		.byte	(.L180-.L177)/2
 878 0079 A9       		.byte	(.L175-.L177)/2
 879 007a 95       		.byte	(.L181-.L177)/2
 880 007b A9       		.byte	(.L175-.L177)/2
 881 007c 05       		.byte	(.L180-.L177)/2
 882 007d 45       		.byte	(.L182-.L177)/2
 883              		.p2align 1
 884              	.L180:
 885 007e 2046     		mov	r0, r4
 886 0080 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 887 0084 0028     		cmp	r0, #0
 888 0086 E6D1     		bne	.L167
 889 0088 0022     		movs	r2, #0
 890 008a 0123     		movs	r3, #1
 891 008c 6072     		strb	r0, [r4, #9]
 892 008e E260     		str	r2, [r4, #12]	@ float
 893 0090 2361     		str	r3, [r4, #16]
 894 0092 E0E7     		b	.L167
 895              	.L179:
 896 0094 2046     		mov	r0, r4
 897 0096 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 898 009a 0546     		mov	r5, r0
 899 009c 0028     		cmp	r0, #0
 900 009e DAD1     		bne	.L167
 901 00a0 D4F82011 		ldr	r1, [r4, #288]
 902 00a4 D4F81831 		ldr	r3, [r4, #280]
 903 00a8 D4F81C21 		ldr	r2, [r4, #284]
 904 00ac 6068     		ldr	r0, [r4, #4]
 905 00ae 0191     		str	r1, [sp, #4]
 906 00b0 04F19C01 		add	r1, r4, #156
 907 00b4 0291     		str	r1, [sp, #8]
 908 00b6 0092     		str	r2, [sp]
 909 00b8 0221     		movs	r1, #2
 910 00ba 864A     		ldr	r2, .L229+16
 911 00bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 912 00c0 0022     		movs	r2, #0
ARM GAS  /tmp/ccbTtNjz.s 			page 17


 913 00c2 0523     		movs	r3, #5
 914 00c4 6572     		strb	r5, [r4, #9]
 915 00c6 E260     		str	r2, [r4, #12]	@ float
 916 00c8 2361     		str	r3, [r4, #16]
 917 00ca C4E7     		b	.L167
 918              	.L178:
 919 00cc 2046     		mov	r0, r4
 920 00ce FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 921 00d2 0546     		mov	r5, r0
 922 00d4 0028     		cmp	r0, #0
 923 00d6 BED1     		bne	.L167
 924 00d8 7F4A     		ldr	r2, .L229+20
 925              	.L225:
 926 00da 6068     		ldr	r0, [r4, #4]
 927 00dc 0221     		movs	r1, #2
 928              	.L226:
 929 00de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 930 00e2 0022     		movs	r2, #0
 931 00e4 0123     		movs	r3, #1
 932 00e6 6572     		strb	r5, [r4, #9]
 933 00e8 E260     		str	r2, [r4, #12]	@ float
 934 00ea 2361     		str	r3, [r4, #16]
 935 00ec B3E7     		b	.L167
 936              	.L176:
 937 00ee 2046     		mov	r0, r4
 938 00f0 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 939 00f4 0546     		mov	r5, r0
 940 00f6 0028     		cmp	r0, #0
 941 00f8 ADD1     		bne	.L167
 942 00fa 784A     		ldr	r2, .L229+24
 943 00fc EDE7     		b	.L225
 944              	.L182:
 945 00fe 7148     		ldr	r0, .L229
 946 0100 FFF7FEFF 		bl	_ZN9SerialCDC9availableEv
 947 0104 0546     		mov	r5, r0
 948 0106 D4F83001 		ldr	r0, [r4, #304]
 949 010a 866A     		ldr	r6, [r0, #40]
 950 010c 002E     		cmp	r6, #0
 951 010e 00F09580 		beq	.L183
 952 0112 7168     		ldr	r1, [r6, #4]
 953 0114 6B48     		ldr	r0, .L229
 954 0116 C1F50053 		rsb	r3, r1, #8192
 955 011a 9D42     		cmp	r5, r3
 956 011c A8BF     		it	ge
 957 011e 1D46     		movge	r5, r3
 958 0120 06F10807 		add	r7, r6, #8
 959 0124 2A46     		mov	r2, r5
 960 0126 3944     		add	r1, r1, r7
 961 0128 FFF7FEFF 		bl	_ZN9SerialCDC9readBytesEPcj
 962 012c 7368     		ldr	r3, [r6, #4]
 963 012e 2B44     		add	r3, r3, r5
 964 0130 7360     		str	r3, [r6, #4]
 965 0132 D4F82C31 		ldr	r3, [r4, #300]
 966 0136 5D1B     		subs	r5, r3, r5
 967 0138 C4F82C51 		str	r5, [r4, #300]
 968 013c 7368     		ldr	r3, [r6, #4]
 969 013e B3F5005F 		cmp	r3, #8192
ARM GAS  /tmp/ccbTtNjz.s 			page 18


 970 0142 01D0     		beq	.L184
 971 0144 002D     		cmp	r5, #0
 972 0146 86D1     		bne	.L167
 973              	.L184:
 974 0148 3946     		mov	r1, r7
 975 014a 0022     		movs	r2, #0
 976 014c D4F83001 		ldr	r0, [r4, #304]
 977 0150 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 978 0154 0546     		mov	r5, r0
 979 0156 D4F83001 		ldr	r0, [r4, #304]
 980 015a 002D     		cmp	r5, #0
 981 015c 5CD0     		beq	.L186
 982              	.L187:
 983 015e 0028     		cmp	r0, #0
 984 0160 3FF479AF 		beq	.L167
 985 0164 D4F82C31 		ldr	r3, [r4, #300]
 986 0168 002B     		cmp	r3, #0
 987 016a 7FF474AF 		bne	.L167
 988 016e 5C4B     		ldr	r3, .L229+28
 989 0170 9B6C     		ldr	r3, [r3, #72]
 990 0172 DB05     		lsls	r3, r3, #23
 991 0174 08D5     		bpl	.L193
 992 0176 6068     		ldr	r0, [r4, #4]
 993 0178 D4F82831 		ldr	r3, [r4, #296]
 994 017c 594A     		ldr	r2, .L229+32
 995 017e 1021     		movs	r1, #16
 996 0180 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 997 0184 D4F83001 		ldr	r0, [r4, #304]
 998              	.L193:
 999 0188 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1000 018c 0023     		movs	r3, #0
 1001 018e 0021     		movs	r1, #0
 1002 0190 0122     		movs	r2, #1
 1003 0192 E160     		str	r1, [r4, #12]	@ float
 1004 0194 C4F83031 		str	r3, [r4, #304]
 1005 0198 6372     		strb	r3, [r4, #9]
 1006 019a 2261     		str	r2, [r4, #16]
 1007 019c 5BE7     		b	.L167
 1008              	.L181:
 1009 019e 2046     		mov	r0, r4
 1010 01a0 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 1011 01a4 0546     		mov	r5, r0
 1012 01a6 0028     		cmp	r0, #0
 1013 01a8 7FF455AF 		bne	.L167
 1014 01ac D4F89830 		ldr	r3, [r4, #152]
 1015 01b0 4D4A     		ldr	r2, .L229+36
 1016 01b2 6068     		ldr	r0, [r4, #4]
 1017 01b4 0221     		movs	r1, #2
 1018 01b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1019 01ba 0022     		movs	r2, #0
 1020 01bc 0923     		movs	r3, #9
 1021 01be 6572     		strb	r5, [r4, #9]
 1022 01c0 E260     		str	r2, [r4, #12]	@ float
 1023 01c2 2361     		str	r3, [r4, #16]
 1024 01c4 47E7     		b	.L167
 1025              	.L175:
 1026 01c6 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccbTtNjz.s 			page 19


 1027 01c8 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 1028 01cc 083B     		subs	r3, r3, #8
 1029 01ce 012B     		cmp	r3, #1
 1030 01d0 7FF641AF 		bls	.L167
 1031 01d4 3B48     		ldr	r0, .L229
 1032 01d6 FFF7FEFF 		bl	_ZN9SerialCDC9availableEv
 1033 01da 0028     		cmp	r0, #0
 1034 01dc 7FF73BAF 		ble	.L167
 1035 01e0 3848     		ldr	r0, .L229
 1036 01e2 FFF7FEFF 		bl	_ZN9SerialCDC4readEv
 1037 01e6 C0B2     		uxtb	r0, r0
 1038 01e8 0A28     		cmp	r0, #10
 1039 01ea D4F89430 		ldr	r3, [r4, #148]
 1040 01ee 5FD0     		beq	.L194
 1041 01f0 0D28     		cmp	r0, #13
 1042 01f2 5DD0     		beq	.L194
 1043 01f4 E218     		adds	r2, r4, r3
 1044 01f6 0133     		adds	r3, r3, #1
 1045 01f8 7F2B     		cmp	r3, #127
 1046 01fa C4F89430 		str	r3, [r4, #148]
 1047 01fe 1075     		strb	r0, [r2, #20]
 1048 0200 7FF629AF 		bls	.L167
 1049 0204 394A     		ldr	r2, .L229+40
 1050 0206 6068     		ldr	r0, [r4, #4]
 1051 0208 40F2B511 		movw	r1, #437
 1052 020c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1053 0210 0023     		movs	r3, #0
 1054 0212 C4F89430 		str	r3, [r4, #148]
 1055 0216 1EE7     		b	.L167
 1056              	.L186:
 1057 0218 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1058 021c 6368     		ldr	r3, [r4, #4]
 1059 021e C4F83051 		str	r5, [r4, #304]
 1060 0222 D3F8B409 		ldr	r0, [r3, #2484]
 1061 0226 D4F82421 		ldr	r2, [r4, #292]
 1062 022a 2749     		ldr	r1, .L229+4
 1063 022c 2B46     		mov	r3, r5
 1064 022e FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1065 0232 2F4A     		ldr	r2, .L229+44
 1066 0234 6068     		ldr	r0, [r4, #4]
 1067 0236 40F2B511 		movw	r1, #437
 1068 023a 50E7     		b	.L226
 1069              	.L183:
 1070 023c 002D     		cmp	r5, #0
 1071 023e 8EDD     		ble	.L187
 1072 0240 204F     		ldr	r7, .L229
 1073 0242 08E0     		b	.L192
 1074              	.L228:
 1075 0244 D4F82C31 		ldr	r3, [r4, #300]
 1076 0248 013B     		subs	r3, r3, #1
 1077 024a C4F82C31 		str	r3, [r4, #300]
 1078 024e 63B3     		cbz	r3, .L224
 1079 0250 002D     		cmp	r5, #0
 1080 0252 3FF400AF 		beq	.L167
 1081              	.L192:
 1082 0256 3846     		mov	r0, r7
 1083 0258 FFF7FEFF 		bl	_ZN9SerialCDC4readEv
ARM GAS  /tmp/ccbTtNjz.s 			page 20


 1084 025c 0122     		movs	r2, #1
 1085 025e 8DF81700 		strb	r0, [sp, #23]
 1086 0262 0DF11701 		add	r1, sp, #23
 1087 0266 D4F83001 		ldr	r0, [r4, #304]
 1088 026a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 1089 026e 013D     		subs	r5, r5, #1
 1090 0270 0646     		mov	r6, r0
 1091 0272 0028     		cmp	r0, #0
 1092 0274 E6D1     		bne	.L228
 1093 0276 D4F83001 		ldr	r0, [r4, #304]
 1094 027a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1095 027e 6368     		ldr	r3, [r4, #4]
 1096 0280 C4F83061 		str	r6, [r4, #304]
 1097 0284 D3F8B409 		ldr	r0, [r3, #2484]
 1098 0288 D4F82421 		ldr	r2, [r4, #292]
 1099 028c 0E49     		ldr	r1, .L229+4
 1100 028e 3346     		mov	r3, r6
 1101 0290 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1102 0294 164A     		ldr	r2, .L229+44
 1103 0296 6068     		ldr	r0, [r4, #4]
 1104 0298 40F2B511 		movw	r1, #437
 1105 029c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1106 02a0 0022     		movs	r2, #0
 1107 02a2 0123     		movs	r3, #1
 1108 02a4 6672     		strb	r6, [r4, #9]
 1109 02a6 E260     		str	r2, [r4, #12]	@ float
 1110 02a8 2361     		str	r3, [r4, #16]
 1111              	.L224:
 1112 02aa D4F83001 		ldr	r0, [r4, #304]
 1113 02ae 56E7     		b	.L187
 1114              	.L194:
 1115 02b0 2344     		add	r3, r3, r4
 1116 02b2 0025     		movs	r5, #0
 1117 02b4 1D75     		strb	r5, [r3, #20]
 1118 02b6 2046     		mov	r0, r4
 1119 02b8 FFF7FEFF 		bl	_ZN7Scanner14ProcessCommandEv
 1120 02bc C4F89450 		str	r5, [r4, #148]
 1121 02c0 C9E6     		b	.L167
 1122              	.L230:
 1123 02c2 00BF     		.align	2
 1124              	.L229:
 1125 02c4 00000000 		.word	SerialUSB
 1126 02c8 00000000 		.word	.LC1
 1127 02cc 40000000 		.word	.LC25
 1128 02d0 00000000 		.word	.LC24
 1129 02d4 68000000 		.word	.LC28
 1130 02d8 5C000000 		.word	.LC27
 1131 02dc 50000000 		.word	.LC26
 1132 02e0 00000000 		.word	reprap
 1133 02e4 A8000000 		.word	.LC31
 1134 02e8 7C000000 		.word	.LC29
 1135 02ec D4000000 		.word	.LC32
 1136 02f0 8C000000 		.word	.LC30
 1137              		.size	_ZN7Scanner4SpinEv, .-_ZN7Scanner4SpinEv
 1138              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1139              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1140              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccbTtNjz.s 			page 21


 1141              	_ZL28cpu_irq_prev_interrupt_state:
 1142 0000 00       		.space	1
 1143              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1144              		.align	2
 1145              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1146              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1147              	_ZL32cpu_irq_critical_section_counter:
 1148 0000 00000000 		.space	4
 1149              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1150              		.align	2
 1151              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1152              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1153              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1154 0000 00000000 		.space	4
 1155              		.section	.rodata.CSWTCH.69,"a",%progbits
 1156              		.align	2
 1157              		.set	.LANCHOR0,. + 0
 1158              		.type	CSWTCH.69, %object
 1159              		.size	CSWTCH.69, 12
 1160              	CSWTCH.69:
 1161 0000 44       		.byte	68
 1162 0001 49       		.byte	73
 1163 0002 49       		.byte	73
 1164 0003 49       		.byte	73
 1165 0004 53       		.byte	83
 1166 0005 53       		.byte	83
 1167 0006 53       		.byte	83
 1168 0007 50       		.byte	80
 1169 0008 43       		.byte	67
 1170 0009 43       		.byte	67
 1171 000a 43       		.byte	67
 1172 000b 55       		.byte	85
 1173              		.section	.rodata._ZN7Scanner11DoFileMacroEPKc.str1.4,"aMS",%progbits,1
 1174              		.align	2
 1175              	.LC3:
 1176 0000 303A2F73 		.ascii	"0:/sys/\000"
 1176      79732F00 
 1177              	.LC4:
 1178 0008 4D393820 		.ascii	"M98 P%s\012\000"
 1178      5025730A 
 1178      00
 1179              		.section	.rodata._ZN7Scanner12SetAlignmentEb.str1.4,"aMS",%progbits,1
 1180              		.align	2
 1181              	.LC21:
 1182 0000 616C6967 		.ascii	"align_on.g\000"
 1182      6E5F6F6E 
 1182      2E6700
 1183 000b 00       		.space	1
 1184              	.LC22:
 1185 000c 616C6967 		.ascii	"align_off.g\000"
 1185      6E5F6F66 
 1185      662E6700 
 1186              		.section	.rodata._ZN7Scanner14ProcessCommandEv.str1.4,"aMS",%progbits,1
 1187              		.align	2
 1188              	.LC5:
 1189 0000 5363616E 		.ascii	"Scanner request: '%s'\012\000"
 1189      6E657220 
ARM GAS  /tmp/ccbTtNjz.s 			page 22


 1189      72657175 
 1189      6573743A 
 1189      20272573 
 1190 0017 00       		.space	1
 1191              	.LC6:
 1192 0018 4D373531 		.ascii	"M751\000"
 1192      00
 1193 001d 000000   		.space	3
 1194              	.LC7:
 1195 0020 4F4B0A00 		.ascii	"OK\012\000"
 1196              	.LC8:
 1197 0024 47434F44 		.ascii	"GCODE \000"
 1197      452000
 1198 002b 00       		.space	1
 1199              	.LC9:
 1200 002c 504F5354 		.ascii	"POSTPROCESS\000"
 1200      50524F43 
 1200      45535300 
 1201              	.LC10:
 1202 0038 50524F47 		.ascii	"PROGRESS \000"
 1202      52455353 
 1202      2000
 1203 0042 0000     		.space	2
 1204              	.LC11:
 1205 0044 55504C4F 		.ascii	"UPLOAD \000"
 1205      41442000 
 1206              	.LC12:
 1207 004c 53746172 		.ascii	"Starting scan upload for file %s (%u bytes total)\012"
 1207      74696E67 
 1207      20736361 
 1207      6E207570 
 1207      6C6F6164 
 1208 007e 00       		.ascii	"\000"
 1209 007f 00       		.space	1
 1210              	.LC13:
 1211 0080 4D616C66 		.ascii	"Malformed scanner upload request\012\000"
 1211      6F726D65 
 1211      64207363 
 1211      616E6E65 
 1211      72207570 
 1212 00a2 0000     		.space	2
 1213              	.LC14:
 1214 00a4 4F4B00   		.ascii	"OK\000"
 1215 00a7 00       		.space	1
 1216              	.LC15:
 1217 00a8 7363616E 		.ascii	"scan_post.g\000"
 1217      5F706F73 
 1217      742E6700 
 1218              	.LC16:
 1219 00b4 63616C69 		.ascii	"calibrate_post.g\000"
 1219      62726174 
 1219      655F706F 
 1219      73742E67 
 1219      00
 1220 00c5 000000   		.space	3
 1221              	.LC17:
 1222 00c8 4552524F 		.ascii	"ERROR\000"
ARM GAS  /tmp/ccbTtNjz.s 			page 23


 1222      5200
 1223 00ce 0000     		.space	2
 1224              	.LC18:
 1225 00d0 25730A00 		.ascii	"%s\012\000"
 1226              		.section	.rodata._ZN7Scanner4ExitEv.str1.4,"aMS",%progbits,1
 1227              		.align	2
 1228              	.LC1:
 1229 0000 303A2F73 		.ascii	"0:/scans/\000"
 1229      63616E73 
 1229      2F00
 1230              		.section	.rodata._ZN7Scanner4SpinEv.str1.4,"aMS",%progbits,1
 1231              		.align	2
 1232              	.LC24:
 1233 0000 5363616E 		.ascii	"Scanner disconnected while a 3D scan or upload was "
 1233      6E657220 
 1233      64697363 
 1233      6F6E6E65 
 1233      63746564 
 1234 0033 696E2070 		.ascii	"in progress\000"
 1234      726F6772 
 1234      65737300 
 1235 003f 00       		.space	1
 1236              	.LC25:
 1237 0040 7363616E 		.ascii	"scanner_off.g\000"
 1237      6E65725F 
 1237      6F66662E 
 1237      6700
 1238 004e 0000     		.space	2
 1239              	.LC26:
 1240 0050 414C4947 		.ascii	"ALIGN ON\012\000"
 1240      4E204F4E 
 1240      0A00
 1241 005a 0000     		.space	2
 1242              	.LC27:
 1243 005c 414C4947 		.ascii	"ALIGN OFF\012\000"
 1243      4E204F46 
 1243      460A00
 1244 0067 00       		.space	1
 1245              	.LC28:
 1246 0068 5343414E 		.ascii	"SCAN %d %d %d %s\012\000"
 1246      20256420 
 1246      25642025 
 1246      64202573 
 1246      0A00
 1247 007a 0000     		.space	2
 1248              	.LC29:
 1249 007c 43414C49 		.ascii	"CALIBRATE %d\012\000"
 1249      42524154 
 1249      45202564 
 1249      0A00
 1250 008a 0000     		.space	2
 1251              	.LC30:
 1252 008c 4661696C 		.ascii	"Failed to write scan file\012\000"
 1252      65642074 
 1252      6F207772 
 1252      69746520 
 1252      7363616E 
ARM GAS  /tmp/ccbTtNjz.s 			page 24


 1253 00a7 00       		.space	1
 1254              	.LC31:
 1255 00a8 46696E69 		.ascii	"Finished uploading %u bytes of scan data\012\000"
 1255      73686564 
 1255      2075706C 
 1255      6F616469 
 1255      6E672025 
 1256 00d2 0000     		.space	2
 1257              	.LC32:
 1258 00d4 5363616E 		.ascii	"Scan buffer overflow\012\000"
 1258      20627566 
 1258      66657220 
 1258      6F766572 
 1258      666C6F77 
 1259              		.section	.rodata._ZN7Scanner6CancelEv.str1.4,"aMS",%progbits,1
 1260              		.align	2
 1261              	.LC0:
 1262 0000 43414E43 		.ascii	"CANCEL\012\000"
 1262      454C0A00 
 1263              		.section	.rodata._ZN7Scanner8RegisterEv.str1.4,"aMS",%progbits,1
 1264              		.align	2
 1265              	.LC19:
 1266 0000 7363616E 		.ascii	"scanner_on.g\000"
 1266      6E65725F 
 1266      6F6E2E67 
 1266      00
 1267              		.section	.rodata._ZN7Scanner8ShutdownEv.str1.4,"aMS",%progbits,1
 1268              		.align	2
 1269              	.LC2:
 1270 0000 53485554 		.ascii	"SHUTDOWN\012\000"
 1270      444F574E 
 1270      0A00
 1271              		.section	.rodata._ZN7Scanner9CalibrateEi.str1.4,"aMS",%progbits,1
 1272              		.align	2
 1273              	.LC23:
 1274 0000 63616C69 		.ascii	"calibrate_pre.g\000"
 1274      62726174 
 1274      655F7072 
 1274      652E6700 
 1275              		.section	.rodata._ZN7Scanner9StartScanEPKciii.str1.4,"aMS",%progbits,1
 1276              		.align	2
 1277              	.LC20:
 1278 0000 7363616E 		.ascii	"scan_pre.g\000"
 1278      5F707265 
 1278      2E6700
 1279              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
