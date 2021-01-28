ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN7Scanner4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN7Scanner4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN7Scanner4InitEv, %function
  24              	_ZN7Scanner4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0023     		movs	r3, #0
  29 0002 0022     		movs	r2, #0
  30 0004 C260     		str	r2, [r0, #12]	@ float
  31 0006 0372     		strb	r3, [r0, #8]
  32 0008 4372     		strb	r3, [r0, #9]
  33 000a 0361     		str	r3, [r0, #16]
  34 000c C0F89430 		str	r3, [r0, #148]
  35 0010 C0F83031 		str	r3, [r0, #304]
  36 0014 7047     		bx	lr
  37              		.size	_ZN7Scanner4InitEv, .-_ZN7Scanner4InitEv
  38              		.section	.text._ZN7Scanner8SetStateE12ScannerState,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_ZN7Scanner8SetStateE12ScannerState
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	_ZN7Scanner8SetStateE12ScannerState, %function
  47              	_ZN7Scanner8SetStateE12ScannerState:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 0022     		movs	r2, #0
  52 0002 0023     		movs	r3, #0
  53 0004 0161     		str	r1, [r0, #16]
  54 0006 C260     		str	r2, [r0, #12]	@ float
  55 0008 4372     		strb	r3, [r0, #9]
  56 000a 7047     		bx	lr
  57              		.size	_ZN7Scanner8SetStateE12ScannerState, .-_ZN7Scanner8SetStateE12ScannerState
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 2


  58              		.section	.text._ZN7Scanner6EnableEv,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	_ZN7Scanner6EnableEv
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZN7Scanner6EnableEv, %function
  67              	_ZN7Scanner6EnableEv:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 0123     		movs	r3, #1
  72 0002 0372     		strb	r3, [r0, #8]
  73 0004 1846     		mov	r0, r3
  74 0006 7047     		bx	lr
  75              		.size	_ZN7Scanner6EnableEv, .-_ZN7Scanner6EnableEv
  76              		.section	.text._ZN7Scanner6CancelEv,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.global	_ZN7Scanner6CancelEv
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	_ZN7Scanner6CancelEv, %function
  85              	_ZN7Scanner6CancelEv:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 0269     		ldr	r2, [r0, #16]
  89 0002 22F00203 		bic	r3, r2, #2
  90 0006 042B     		cmp	r3, #4
  91 0008 07D0     		beq	.L9
  92 000a 082B     		cmp	r3, #8
  93 000c 05D0     		beq	.L9
  94 000e 052A     		cmp	r2, #5
  95 0010 05D0     		beq	.L7
  96 0012 092A     		cmp	r2, #9
  97 0014 03D0     		beq	.L7
  98 0016 0120     		movs	r0, #1
  99 0018 7047     		bx	lr
 100              	.L9:
 101 001a 0020     		movs	r0, #0
 102 001c 7047     		bx	lr
 103              	.L7:
 104 001e 10B5     		push	{r4, lr}
 105 0020 064A     		ldr	r2, .L17
 106 0022 0446     		mov	r4, r0
 107 0024 0221     		movs	r1, #2
 108 0026 4068     		ldr	r0, [r0, #4]
 109 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 110 002c 0022     		movs	r2, #0
 111 002e 0023     		movs	r3, #0
 112 0030 0120     		movs	r0, #1
 113 0032 E260     		str	r2, [r4, #12]	@ float
 114 0034 6372     		strb	r3, [r4, #9]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 3


 115 0036 2061     		str	r0, [r4, #16]
 116 0038 10BD     		pop	{r4, pc}
 117              	.L18:
 118 003a 00BF     		.align	2
 119              	.L17:
 120 003c 00000000 		.word	.LC0
 121              		.size	_ZN7Scanner6CancelEv, .-_ZN7Scanner6CancelEv
 122              		.section	.text._ZN7Scanner4ExitEv,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_ZN7Scanner4ExitEv
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	_ZN7Scanner4ExitEv, %function
 131              	_ZN7Scanner4ExitEv:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 135 0002 03B3     		cbz	r3, .L34
 136 0004 10B5     		push	{r4, lr}
 137 0006 0369     		ldr	r3, [r0, #16]
 138 0008 052B     		cmp	r3, #5
 139 000a 0446     		mov	r4, r0
 140 000c 17D0     		beq	.L21
 141 000e 092B     		cmp	r3, #9
 142 0010 15D0     		beq	.L21
 143              	.L22:
 144 0012 D4F83001 		ldr	r0, [r4, #304]
 145 0016 60B1     		cbz	r0, .L23
 146 0018 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 147 001c 6268     		ldr	r2, [r4, #4]
 148 001e 0A49     		ldr	r1, .L37
 149 0020 0023     		movs	r3, #0
 150 0022 C4F83031 		str	r3, [r4, #304]
 151 0026 D2F8DC0B 		ldr	r0, [r2, #3036]
 152 002a D4F82421 		ldr	r2, [r4, #292]
 153 002e FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 154              	.L23:
 155 0032 0023     		movs	r3, #0
 156 0034 0022     		movs	r2, #0
 157 0036 E260     		str	r2, [r4, #12]	@ float
 158 0038 6372     		strb	r3, [r4, #9]
 159 003a 2361     		str	r3, [r4, #16]
 160 003c 10BD     		pop	{r4, pc}
 161              	.L21:
 162 003e 2046     		mov	r0, r4
 163 0040 FFF7FEFF 		bl	_ZN7Scanner6CancelEv
 164 0044 E5E7     		b	.L22
 165              	.L34:
 166 0046 7047     		bx	lr
 167              	.L38:
 168              		.align	2
 169              	.L37:
 170 0048 00000000 		.word	.LC1
 171              		.size	_ZN7Scanner4ExitEv, .-_ZN7Scanner4ExitEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 4


 172              		.section	.text._ZN7Scanner8ShutdownEv,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZN7Scanner8ShutdownEv
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN7Scanner8ShutdownEv, %function
 181              	_ZN7Scanner8ShutdownEv:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 38B5     		push	{r3, r4, r5, lr}
 185 0002 0469     		ldr	r4, [r0, #16]
 186 0004 012C     		cmp	r4, #1
 187 0006 01D0     		beq	.L43
 188 0008 0020     		movs	r0, #0
 189 000a 38BD     		pop	{r3, r4, r5, pc}
 190              	.L43:
 191 000c 0546     		mov	r5, r0
 192 000e 064A     		ldr	r2, .L44
 193 0010 4068     		ldr	r0, [r0, #4]
 194 0012 0221     		movs	r1, #2
 195 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 196 0018 0023     		movs	r3, #0
 197 001a 0022     		movs	r2, #0
 198 001c EA60     		str	r2, [r5, #12]	@ float
 199 001e 6B72     		strb	r3, [r5, #9]
 200 0020 2B61     		str	r3, [r5, #16]
 201 0022 2046     		mov	r0, r4
 202 0024 38BD     		pop	{r3, r4, r5, pc}
 203              	.L45:
 204 0026 00BF     		.align	2
 205              	.L44:
 206 0028 00000000 		.word	.LC2
 207              		.size	_ZN7Scanner8ShutdownEv, .-_ZN7Scanner8ShutdownEv
 208              		.section	.text._ZNK7Scanner18GetStatusCharacterEv,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	_ZNK7Scanner18GetStatusCharacterEv
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 216              		.type	_ZNK7Scanner18GetStatusCharacterEv, %function
 217              	_ZNK7Scanner18GetStatusCharacterEv:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 0369     		ldr	r3, [r0, #16]
 222 0002 0B2B     		cmp	r3, #11
 223 0004 9ABF     		itte	ls
 224 0006 024A     		ldrls	r2, .L49
 225 0008 D05C     		ldrbls	r0, [r2, r3]	@ zero_extendqisi2
 226 000a 4920     		movhi	r0, #73
 227 000c 7047     		bx	lr
 228              	.L50:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 5


 229 000e 00BF     		.align	2
 230              	.L49:
 231 0010 00000000 		.word	.LANCHOR0
 232              		.size	_ZNK7Scanner18GetStatusCharacterEv, .-_ZNK7Scanner18GetStatusCharacterEv
 233              		.section	.text._ZNK7Scanner11GetProgressEv,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZNK7Scanner11GetProgressEv
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZNK7Scanner11GetProgressEv, %function
 242              	_ZNK7Scanner11GetProgressEv:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 0369     		ldr	r3, [r0, #16]
 247 0002 0B2B     		cmp	r3, #11
 248 0004 02D0     		beq	.L54
 249 0006 90ED030A 		vldr.32	s0, [r0, #12]
 250 000a 7047     		bx	lr
 251              	.L54:
 252 000c D0F82821 		ldr	r2, [r0, #296]
 253 0010 D0F82C31 		ldr	r3, [r0, #300]
 254 0014 DFED076A 		vldr.32	s13, .L55
 255 0018 D31A     		subs	r3, r2, r3
 256 001a 07EE903A 		vmov	s15, r3	@ int
 257 001e 07EE102A 		vmov	s14, r2	@ int
 258 0022 F8EE677A 		vcvt.f32.u32	s15, s15
 259 0026 B8EE477A 		vcvt.f32.u32	s14, s14
 260 002a 87EE870A 		vdiv.f32	s0, s15, s14
 261 002e 20EE260A 		vmul.f32	s0, s0, s13
 262 0032 7047     		bx	lr
 263              	.L56:
 264              		.align	2
 265              	.L55:
 266 0034 0000C842 		.word	1120403456
 267              		.size	_ZNK7Scanner11GetProgressEv, .-_ZNK7Scanner11GetProgressEv
 268              		.section	.text._ZNK7Scanner16IsDoingFileMacroEv,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZNK7Scanner16IsDoingFileMacroEv
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	_ZNK7Scanner16IsDoingFileMacroEv, %function
 277              	_ZNK7Scanner16IsDoingFileMacroEv:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 10B5     		push	{r4, lr}
 281 0002 0446     		mov	r4, r0
 282 0004 0068     		ldr	r0, [r0]
 283 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 284 000a 00B1     		cbz	r0, .L63
 285              	.L58:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 6


 286 000c 10BD     		pop	{r4, pc}
 287              	.L63:
 288 000e 4D21     		movs	r1, #77
 289 0010 2068     		ldr	r0, [r4]
 290 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 291 0016 0028     		cmp	r0, #0
 292 0018 F8D0     		beq	.L58
 293 001a 2068     		ldr	r0, [r4]
 294 001c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 295 0020 A0F16200 		sub	r0, #98
 296 0024 B0FA80F0 		clz	r0, r0
 297 0028 4009     		lsrs	r0, r0, #5
 298 002a 10BD     		pop	{r4, pc}
 299              		.size	_ZNK7Scanner16IsDoingFileMacroEv, .-_ZNK7Scanner16IsDoingFileMacroEv
 300              		.section	.text._ZN6StringILj127EE6printfEPKcz,"axG",%progbits,_ZN6StringILj127EE6printfEPKcz,comda
 301              		.align	1
 302              		.p2align 2,,3
 303              		.weak	_ZN6StringILj127EE6printfEPKcz
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu fpv4-sp-d16
 308              		.type	_ZN6StringILj127EE6printfEPKcz, %function
 309              	_ZN6StringILj127EE6printfEPKcz:
 310              		@ args = 4, pretend = 12, frame = 16
 311              		@ frame_needed = 0, uses_anonymous_args = 1
 312 0000 0EB4     		push	{r1, r2, r3}
 313 0002 00B5     		push	{lr}
 314 0004 84B0     		sub	sp, sp, #16
 315 0006 05AA     		add	r2, sp, #20
 316 0008 0290     		str	r0, [sp, #8]
 317 000a 52F8041B 		ldr	r1, [r2], #4
 318 000e 0192     		str	r2, [sp, #4]
 319 0010 8023     		movs	r3, #128
 320 0012 02A8     		add	r0, sp, #8
 321 0014 0393     		str	r3, [sp, #12]
 322 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 323 001a 04B0     		add	sp, sp, #16
 324              		@ sp needed
 325 001c 5DF804EB 		ldr	lr, [sp], #4
 326 0020 03B0     		add	sp, sp, #12
 327 0022 7047     		bx	lr
 328              		.size	_ZN6StringILj127EE6printfEPKcz, .-_ZN6StringILj127EE6printfEPKcz
 329              		.section	.text._ZN7Scanner11DoFileMacroEPKc,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	_ZN7Scanner11DoFileMacroEPKc
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv4-sp-d16
 337              		.type	_ZN7Scanner11DoFileMacroEPKc, %function
 338              	_ZN7Scanner11DoFileMacroEPKc:
 339              		@ args = 0, pretend = 0, frame = 128
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 70B5     		push	{r4, r5, r6, lr}
 342 0002 4368     		ldr	r3, [r0, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 7


 343 0004 0D46     		mov	r5, r1
 344 0006 A0B0     		sub	sp, sp, #128
 345 0008 0446     		mov	r4, r0
 346 000a 0B49     		ldr	r1, .L72
 347 000c D3F8DC0B 		ldr	r0, [r3, #3036]
 348 0010 2A46     		mov	r2, r5
 349 0012 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 350 0016 60B1     		cbz	r0, .L66
 351 0018 20AE     		add	r6, sp, #128
 352 001a 0023     		movs	r3, #0
 353 001c 06F8803D 		strb	r3, [r6, #-128]!
 354 0020 0649     		ldr	r1, .L72+4
 355 0022 2A46     		mov	r2, r5
 356 0024 3046     		mov	r0, r6
 357 0026 FFF7FEFF 		bl	_ZN6StringILj127EE6printfEPKcz
 358 002a 3146     		mov	r1, r6
 359 002c 2068     		ldr	r0, [r4]
 360 002e FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 361              	.L66:
 362 0032 20B0     		add	sp, sp, #128
 363              		@ sp needed
 364 0034 70BD     		pop	{r4, r5, r6, pc}
 365              	.L73:
 366 0036 00BF     		.align	2
 367              	.L72:
 368 0038 00000000 		.word	.LC3
 369 003c 08000000 		.word	.LC4
 370              		.size	_ZN7Scanner11DoFileMacroEPKc, .-_ZN7Scanner11DoFileMacroEPKc
 371              		.section	.text._ZN7Scanner14ProcessCommandEv,"ax",%progbits
 372              		.align	1
 373              		.p2align 2,,3
 374              		.global	_ZN7Scanner14ProcessCommandEv
 375              		.syntax unified
 376              		.thumb
 377              		.thumb_func
 378              		.fpu fpv4-sp-d16
 379              		.type	_ZN7Scanner14ProcessCommandEv, %function
 380              	_ZN7Scanner14ProcessCommandEv:
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 384 0004 7A4E     		ldr	r6, .L127
 385 0006 D6F80831 		ldr	r3, [r6, #264]	@ unaligned
 386 000a DA05     		lsls	r2, r3, #23
 387 000c 83B0     		sub	sp, sp, #12
 388 000e 0446     		mov	r4, r0
 389 0010 00F11405 		add	r5, r0, #20
 390 0014 33D4     		bmi	.L121
 391              	.L75:
 392 0016 7749     		ldr	r1, .L127+4
 393 0018 2846     		mov	r0, r5
 394 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 395 001e 00BB     		cbnz	r0, .L122
 396 0020 7549     		ldr	r1, .L127+8
 397 0022 2846     		mov	r0, r5
 398 0024 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 399 0028 0746     		mov	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 8


 400 002a 68B9     		cbnz	r0, .L123
 401 002c 7349     		ldr	r1, .L127+12
 402 002e 2846     		mov	r0, r5
 403 0030 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 404 0034 8046     		mov	r8, r0
 405 0036 48B3     		cbz	r0, .L79
 406 0038 0022     		movs	r2, #0
 407 003a 0723     		movs	r3, #7
 408 003c 6772     		strb	r7, [r4, #9]
 409 003e E260     		str	r2, [r4, #12]	@ float
 410 0040 2361     		str	r3, [r4, #16]
 411 0042 03B0     		add	sp, sp, #12
 412              		@ sp needed
 413 0044 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 414              	.L123:
 415 0048 D4F89420 		ldr	r2, [r4, #148]
 416 004c 2068     		ldr	r0, [r4]
 417 004e 0123     		movs	r3, #1
 418 0050 063A     		subs	r2, r2, #6
 419 0052 04F11A01 		add	r1, r4, #26
 420 0056 6372     		strb	r3, [r4, #9]
 421 0058 03B0     		add	sp, sp, #12
 422              		@ sp needed
 423 005a BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 424 005e FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKcj
 425              	.L122:
 426 0062 674A     		ldr	r2, .L127+16
 427 0064 6068     		ldr	r0, [r4, #4]
 428 0066 0221     		movs	r1, #2
 429 0068 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 430              	.L96:
 431 006c 0021     		movs	r1, #0
 432 006e 0022     		movs	r2, #0
 433 0070 0123     		movs	r3, #1
 434 0072 E160     		str	r1, [r4, #12]	@ float
 435 0074 6272     		strb	r2, [r4, #9]
 436 0076 2361     		str	r3, [r4, #16]
 437              	.L74:
 438 0078 03B0     		add	sp, sp, #12
 439              		@ sp needed
 440 007a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 441              	.L121:
 442 007e 2B46     		mov	r3, r5
 443 0080 604A     		ldr	r2, .L127+20
 444 0082 4068     		ldr	r0, [r0, #4]
 445 0084 1021     		movs	r1, #16
 446 0086 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 447 008a C4E7     		b	.L75
 448              	.L79:
 449 008c 5E49     		ldr	r1, .L127+24
 450 008e 2846     		mov	r0, r5
 451 0090 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 452 0094 8146     		mov	r9, r0
 453 0096 D0B1     		cbz	r0, .L80
 454 0098 4146     		mov	r1, r8
 455 009a 04F11D00 		add	r0, r4, #29
 456 009e FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 9


 457 00a2 B4EE400A 		vcmp.f32	s0, s0
 458 00a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 459 00aa 0DD6     		bvs	.L81
 460 00ac DFED577A 		vldr.32	s15, .L127+28
 461 00b0 B4EEE70A 		vcmpe.f32	s0, s15
 462 00b4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 463 00b8 4CD5     		bpl	.L114
 464 00ba B5EEC00A 		vcmpe.f32	s0, #0
 465 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 466 00c2 01DC     		bgt	.L81
 467 00c4 9FED520A 		vldr.32	s0, .L127+32
 468              	.L81:
 469 00c8 84ED030A 		vstr.32	s0, [r4, #12]
 470 00cc D4E7     		b	.L74
 471              	.L80:
 472 00ce 5149     		ldr	r1, .L127+36
 473 00d0 2846     		mov	r0, r5
 474 00d2 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 475 00d6 0746     		mov	r7, r0
 476 00d8 28B3     		cbz	r0, .L84
 477 00da 04F11B00 		add	r0, r4, #27
 478 00de FFF7FEFF 		bl	atoi
 479 00e2 D4F89470 		ldr	r7, [r4, #148]
 480 00e6 C4F82801 		str	r0, [r4, #296]
 481 00ea 013F     		subs	r7, r7, #1
 482 00ec 082F     		cmp	r7, #8
 483 00ee C4F82491 		str	r9, [r4, #292]
 484 00f2 0ED9     		bls	.L120
 485 00f4 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 486 00f6 202B     		cmp	r3, #32
 487 00f8 78D0     		beq	.L124
 488 00fa 04F11C01 		add	r1, r4, #28
 489 00fe 0822     		movs	r2, #8
 490 0100 04E0     		b	.L88
 491              	.L118:
 492 0102 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 493 0106 202D     		cmp	r5, #32
 494 0108 27D0     		beq	.L125
 495 010a 1A46     		mov	r2, r3
 496              	.L88:
 497 010c 531C     		adds	r3, r2, #1
 498 010e BB42     		cmp	r3, r7
 499 0110 F7D1     		bne	.L118
 500              	.L120:
 501 0112 6368     		ldr	r3, [r4, #4]
 502              	.L85:
 503 0114 404A     		ldr	r2, .L127+40
 504 0116 1846     		mov	r0, r3
 505 0118 40F2B511 		movw	r1, #437
 506 011c 03B0     		add	sp, sp, #12
 507              		@ sp needed
 508 011e BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 509 0122 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 510              	.L84:
 511 0126 3D49     		ldr	r1, .L127+44
 512 0128 2846     		mov	r0, r5
 513 012a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 10


 514 012e 0028     		cmp	r0, #0
 515 0130 3DD0     		beq	.L93
 516 0132 2369     		ldr	r3, [r4, #16]
 517 0134 052B     		cmp	r3, #5
 518 0136 4FD0     		beq	.L126
 519 0138 072B     		cmp	r3, #7
 520 013a 97D0     		beq	.L96
 521 013c 092B     		cmp	r3, #9
 522 013e 9BD1     		bne	.L74
 523 0140 3749     		ldr	r1, .L127+48
 524 0142 2046     		mov	r0, r4
 525 0144 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 526 0148 0022     		movs	r2, #0
 527 014a 0A23     		movs	r3, #10
 528 014c 6772     		strb	r7, [r4, #9]
 529 014e E260     		str	r2, [r4, #12]	@ float
 530 0150 2361     		str	r3, [r4, #16]
 531 0152 91E7     		b	.L74
 532              	.L114:
 533 0154 B0EE670A 		vmov.f32	s0, s15
 534 0158 B6E7     		b	.L81
 535              	.L125:
 536 015a 1632     		adds	r2, r2, #22
 537              	.L86:
 538 015c 2244     		add	r2, r2, r4
 539 015e C4F82421 		str	r2, [r4, #292]
 540 0162 6368     		ldr	r3, [r4, #4]
 541 0164 002A     		cmp	r2, #0
 542 0166 D5D0     		beq	.L85
 543 0168 C4F82C01 		str	r0, [r4, #300]
 544 016c D3F8DC0B 		ldr	r0, [r3, #3036]
 545 0170 2C49     		ldr	r1, .L127+52
 546 0172 0123     		movs	r3, #1
 547 0174 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 548 0178 C4F83001 		str	r0, [r4, #304]
 549 017c 0028     		cmp	r0, #0
 550 017e 3FF47BAF 		beq	.L74
 551 0182 0B23     		movs	r3, #11
 552 0184 0021     		movs	r1, #0
 553 0186 0022     		movs	r2, #0
 554 0188 E160     		str	r1, [r4, #12]	@ float
 555 018a 6272     		strb	r2, [r4, #9]
 556 018c 2361     		str	r3, [r4, #16]
 557 018e D6F80831 		ldr	r3, [r6, #264]
 558 0192 DB05     		lsls	r3, r3, #23
 559 0194 7FF570AF 		bpl	.L74
 560 0198 D4F82821 		ldr	r2, [r4, #296]
 561 019c D4F82431 		ldr	r3, [r4, #292]
 562 01a0 6068     		ldr	r0, [r4, #4]
 563 01a2 0092     		str	r2, [sp]
 564 01a4 1021     		movs	r1, #16
 565 01a6 204A     		ldr	r2, .L127+56
 566 01a8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 567 01ac 64E7     		b	.L74
 568              	.L93:
 569 01ae 2846     		mov	r0, r5
 570 01b0 1E49     		ldr	r1, .L127+60
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 11


 571 01b2 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 572 01b6 0028     		cmp	r0, #0
 573 01b8 3FF45EAF 		beq	.L74
 574 01bc D4F89430 		ldr	r3, [r4, #148]
 575 01c0 062B     		cmp	r3, #6
 576 01c2 7FF653AF 		bls	.L96
 577 01c6 04F11A03 		add	r3, r4, #26
 578 01ca 194A     		ldr	r2, .L127+64
 579 01cc 6068     		ldr	r0, [r4, #4]
 580 01ce 40F2B511 		movw	r1, #437
 581 01d2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 582 01d6 49E7     		b	.L96
 583              	.L126:
 584 01d8 1649     		ldr	r1, .L127+68
 585 01da 2046     		mov	r0, r4
 586 01dc FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 587 01e0 0022     		movs	r2, #0
 588 01e2 0623     		movs	r3, #6
 589 01e4 6772     		strb	r7, [r4, #9]
 590 01e6 E260     		str	r2, [r4, #12]	@ float
 591 01e8 2361     		str	r3, [r4, #16]
 592 01ea 45E7     		b	.L74
 593              	.L124:
 594 01ec 1D22     		movs	r2, #29
 595 01ee B5E7     		b	.L86
 596              	.L128:
 597              		.align	2
 598              	.L127:
 599 01f0 00000000 		.word	reprap
 600 01f4 18000000 		.word	.LC6
 601 01f8 24000000 		.word	.LC8
 602 01fc 2C000000 		.word	.LC9
 603 0200 20000000 		.word	.LC7
 604 0204 00000000 		.word	.LC5
 605 0208 38000000 		.word	.LC10
 606 020c 0000C842 		.word	1120403456
 607 0210 00000000 		.word	0
 608 0214 44000000 		.word	.LC11
 609 0218 80000000 		.word	.LC13
 610 021c A4000000 		.word	.LC14
 611 0220 B4000000 		.word	.LC16
 612 0224 00000000 		.word	.LC1
 613 0228 4C000000 		.word	.LC12
 614 022c C8000000 		.word	.LC17
 615 0230 D0000000 		.word	.LC18
 616 0234 A8000000 		.word	.LC15
 617              		.size	_ZN7Scanner14ProcessCommandEv, .-_ZN7Scanner14ProcessCommandEv
 618              		.section	.text._ZN7Scanner8RegisterEv,"ax",%progbits
 619              		.align	1
 620              		.p2align 2,,3
 621              		.global	_ZN7Scanner8RegisterEv
 622              		.syntax unified
 623              		.thumb
 624              		.thumb_func
 625              		.fpu fpv4-sp-d16
 626              		.type	_ZN7Scanner8RegisterEv, %function
 627              	_ZN7Scanner8RegisterEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 12


 628              		@ args = 0, pretend = 0, frame = 0
 629              		@ frame_needed = 0, uses_anonymous_args = 0
 630 0000 38B5     		push	{r3, r4, r5, lr}
 631 0002 0569     		ldr	r5, [r0, #16]
 632 0004 05B1     		cbz	r5, .L132
 633 0006 38BD     		pop	{r3, r4, r5, pc}
 634              	.L132:
 635 0008 0446     		mov	r4, r0
 636 000a 084A     		ldr	r2, .L133
 637 000c 4068     		ldr	r0, [r0, #4]
 638 000e 0221     		movs	r1, #2
 639 0010 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 640 0014 0123     		movs	r3, #1
 641 0016 0022     		movs	r2, #0
 642 0018 6572     		strb	r5, [r4, #9]
 643 001a E260     		str	r2, [r4, #12]	@ float
 644 001c 2361     		str	r3, [r4, #16]
 645 001e 2046     		mov	r0, r4
 646 0020 0349     		ldr	r1, .L133+4
 647 0022 BDE83840 		pop	{r3, r4, r5, lr}
 648 0026 FFF7FEBF 		b	_ZN7Scanner11DoFileMacroEPKc
 649              	.L134:
 650 002a 00BF     		.align	2
 651              	.L133:
 652 002c 20000000 		.word	.LC7
 653 0030 00000000 		.word	.LC19
 654              		.size	_ZN7Scanner8RegisterEv, .-_ZN7Scanner8RegisterEv
 655              		.section	.text._ZN7Scanner9StartScanEPKciii,"ax",%progbits
 656              		.align	1
 657              		.p2align 2,,3
 658              		.global	_ZN7Scanner9StartScanEPKciii
 659              		.syntax unified
 660              		.thumb
 661              		.thumb_func
 662              		.fpu fpv4-sp-d16
 663              		.type	_ZN7Scanner9StartScanEPKciii, %function
 664              	_ZN7Scanner9StartScanEPKciii:
 665              		@ args = 4, pretend = 0, frame = 8
 666              		@ frame_needed = 0, uses_anonymous_args = 0
 667 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 668 0002 0569     		ldr	r5, [r0, #16]
 669 0004 012D     		cmp	r5, #1
 670 0006 83B0     		sub	sp, sp, #12
 671 0008 02D0     		beq	.L140
 672              	.L138:
 673 000a 0020     		movs	r0, #0
 674 000c 03B0     		add	sp, sp, #12
 675              		@ sp needed
 676 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 677              	.L140:
 678 0010 0468     		ldr	r4, [r0]
 679 0012 94F82840 		ldrb	r4, [r4, #40]	@ zero_extendqisi2
 680 0016 083C     		subs	r4, r4, #8
 681 0018 012C     		cmp	r4, #1
 682 001a F6D9     		bls	.L138
 683 001c 0446     		mov	r4, r0
 684 001e 1E46     		mov	r6, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 13


 685 0020 1746     		mov	r7, r2
 686 0022 7923     		movs	r3, #121
 687 0024 00F19C02 		add	r2, r0, #156
 688 0028 6846     		mov	r0, sp
 689 002a 0092     		str	r2, [sp]
 690 002c 0193     		str	r3, [sp, #4]
 691 002e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 692 0032 089B     		ldr	r3, [sp, #32]
 693 0034 C4F82031 		str	r3, [r4, #288]
 694 0038 2046     		mov	r0, r4
 695 003a C4F81871 		str	r7, [r4, #280]
 696 003e C4F81C61 		str	r6, [r4, #284]
 697 0042 0649     		ldr	r1, .L141
 698 0044 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 699 0048 0021     		movs	r1, #0
 700 004a 0022     		movs	r2, #0
 701 004c 0423     		movs	r3, #4
 702 004e 2846     		mov	r0, r5
 703 0050 E160     		str	r1, [r4, #12]	@ float
 704 0052 6272     		strb	r2, [r4, #9]
 705 0054 2361     		str	r3, [r4, #16]
 706 0056 03B0     		add	sp, sp, #12
 707              		@ sp needed
 708 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 709              	.L142:
 710 005a 00BF     		.align	2
 711              	.L141:
 712 005c 00000000 		.word	.LC20
 713              		.size	_ZN7Scanner9StartScanEPKciii, .-_ZN7Scanner9StartScanEPKciii
 714              		.section	.text._ZN7Scanner12SetAlignmentEb,"ax",%progbits
 715              		.align	1
 716              		.p2align 2,,3
 717              		.global	_ZN7Scanner12SetAlignmentEb
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu fpv4-sp-d16
 722              		.type	_ZN7Scanner12SetAlignmentEb, %function
 723              	_ZN7Scanner12SetAlignmentEb:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726 0000 0269     		ldr	r2, [r0, #16]
 727 0002 012A     		cmp	r2, #1
 728 0004 01D0     		beq	.L156
 729 0006 0020     		movs	r0, #0
 730 0008 7047     		bx	lr
 731              	.L156:
 732 000a 10B5     		push	{r4, lr}
 733 000c 0268     		ldr	r2, [r0]
 734 000e 92F82820 		ldrb	r2, [r2, #40]	@ zero_extendqisi2
 735 0012 083A     		subs	r2, r2, #8
 736 0014 012A     		cmp	r2, #1
 737 0016 0446     		mov	r4, r0
 738 0018 10D9     		bls	.L149
 739 001a 51B9     		cbnz	r1, .L145
 740 001c 0849     		ldr	r1, .L157
 741 001e FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 14


 742 0022 0323     		movs	r3, #3
 743              	.L147:
 744 0024 0022     		movs	r2, #0
 745 0026 2361     		str	r3, [r4, #16]
 746 0028 0023     		movs	r3, #0
 747 002a E260     		str	r2, [r4, #12]	@ float
 748 002c 6372     		strb	r3, [r4, #9]
 749 002e 0120     		movs	r0, #1
 750 0030 10BD     		pop	{r4, pc}
 751              	.L145:
 752 0032 0449     		ldr	r1, .L157+4
 753 0034 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 754 0038 0223     		movs	r3, #2
 755 003a F3E7     		b	.L147
 756              	.L149:
 757 003c 0020     		movs	r0, #0
 758 003e 10BD     		pop	{r4, pc}
 759              	.L158:
 760              		.align	2
 761              	.L157:
 762 0040 0C000000 		.word	.LC22
 763 0044 00000000 		.word	.LC21
 764              		.size	_ZN7Scanner12SetAlignmentEb, .-_ZN7Scanner12SetAlignmentEb
 765              		.section	.text._ZN7Scanner9CalibrateEi,"ax",%progbits
 766              		.align	1
 767              		.p2align 2,,3
 768              		.global	_ZN7Scanner9CalibrateEi
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv4-sp-d16
 773              		.type	_ZN7Scanner9CalibrateEi, %function
 774              	_ZN7Scanner9CalibrateEi:
 775              		@ args = 0, pretend = 0, frame = 0
 776              		@ frame_needed = 0, uses_anonymous_args = 0
 777 0000 38B5     		push	{r3, r4, r5, lr}
 778 0002 0469     		ldr	r4, [r0, #16]
 779 0004 012C     		cmp	r4, #1
 780 0006 01D0     		beq	.L164
 781              	.L162:
 782 0008 0020     		movs	r0, #0
 783 000a 38BD     		pop	{r3, r4, r5, pc}
 784              	.L164:
 785 000c 0268     		ldr	r2, [r0]
 786 000e 92F82820 		ldrb	r2, [r2, #40]	@ zero_extendqisi2
 787 0012 083A     		subs	r2, r2, #8
 788 0014 012A     		cmp	r2, #1
 789 0016 0546     		mov	r5, r0
 790 0018 F6D9     		bls	.L162
 791 001a C0F89810 		str	r1, [r0, #152]
 792 001e 0549     		ldr	r1, .L165
 793 0020 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 794 0024 0021     		movs	r1, #0
 795 0026 0022     		movs	r2, #0
 796 0028 0823     		movs	r3, #8
 797 002a E960     		str	r1, [r5, #12]	@ float
 798 002c 6A72     		strb	r2, [r5, #9]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 15


 799 002e 2B61     		str	r3, [r5, #16]
 800 0030 2046     		mov	r0, r4
 801 0032 38BD     		pop	{r3, r4, r5, pc}
 802              	.L166:
 803              		.align	2
 804              	.L165:
 805 0034 00000000 		.word	.LC23
 806              		.size	_ZN7Scanner9CalibrateEi, .-_ZN7Scanner9CalibrateEi
 807              		.section	.text._ZN7Scanner4SpinEv,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	_ZN7Scanner4SpinEv
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu fpv4-sp-d16
 815              		.type	_ZN7Scanner4SpinEv, %function
 816              	_ZN7Scanner4SpinEv:
 817              		@ args = 0, pretend = 0, frame = 8
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 820 0002 0BB1     		cbz	r3, .L221
 821 0004 0369     		ldr	r3, [r0, #16]
 822 0006 03B9     		cbnz	r3, .L227
 823              	.L221:
 824 0008 7047     		bx	lr
 825              	.L227:
 826 000a F0B5     		push	{r4, r5, r6, r7, lr}
 827 000c 0446     		mov	r4, r0
 828 000e 87B0     		sub	sp, sp, #28
 829 0010 AC48     		ldr	r0, .L229
 830 0012 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 831 0016 2369     		ldr	r3, [r4, #16]
 832 0018 30BB     		cbnz	r0, .L171
 833 001a 1A1F     		subs	r2, r3, #4
 834 001c 022A     		cmp	r2, #2
 835 001e 1CD9     		bls	.L172
 836 0020 0B2B     		cmp	r3, #11
 837 0022 1AD0     		beq	.L172
 838              	.L173:
 839 0024 D4F83001 		ldr	r0, [r4, #304]
 840 0028 60B1     		cbz	r0, .L174
 841 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 842 002e 6268     		ldr	r2, [r4, #4]
 843 0030 A549     		ldr	r1, .L229+4
 844 0032 0023     		movs	r3, #0
 845 0034 C4F83031 		str	r3, [r4, #304]
 846 0038 D2F8DC0B 		ldr	r0, [r2, #3036]
 847 003c D4F82421 		ldr	r2, [r4, #292]
 848 0040 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 849              	.L174:
 850 0044 0023     		movs	r3, #0
 851 0046 E360     		str	r3, [r4, #12]	@ float
 852 0048 0023     		movs	r3, #0
 853 004a A049     		ldr	r1, .L229+8
 854 004c 6372     		strb	r3, [r4, #9]
 855 004e 2361     		str	r3, [r4, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 16


 856 0050 2046     		mov	r0, r4
 857 0052 FFF7FEFF 		bl	_ZN7Scanner11DoFileMacroEPKc
 858              	.L167:
 859 0056 07B0     		add	sp, sp, #28
 860              		@ sp needed
 861 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 862              	.L172:
 863 005a 9D4A     		ldr	r2, .L229+12
 864 005c 6068     		ldr	r0, [r4, #4]
 865 005e 40F2B521 		movw	r1, #693
 866 0062 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 867 0066 DDE7     		b	.L173
 868              	.L171:
 869 0068 023B     		subs	r3, r3, #2
 870 006a 092B     		cmp	r3, #9
 871 006c 00F2AC80 		bhi	.L175
 872 0070 DFE803F0 		tbb	[pc, r3]
 873              	.L177:
 874 0074 3D       		.byte	(.L176-.L177)/2
 875 0075 2C       		.byte	(.L178-.L177)/2
 876 0076 10       		.byte	(.L179-.L177)/2
 877 0077 AA       		.byte	(.L175-.L177)/2
 878 0078 05       		.byte	(.L180-.L177)/2
 879 0079 AA       		.byte	(.L175-.L177)/2
 880 007a 96       		.byte	(.L181-.L177)/2
 881 007b AA       		.byte	(.L175-.L177)/2
 882 007c 05       		.byte	(.L180-.L177)/2
 883 007d 45       		.byte	(.L182-.L177)/2
 884              		.p2align 1
 885              	.L180:
 886 007e 2046     		mov	r0, r4
 887 0080 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 888 0084 0028     		cmp	r0, #0
 889 0086 E6D1     		bne	.L167
 890 0088 0022     		movs	r2, #0
 891 008a 0123     		movs	r3, #1
 892 008c 6072     		strb	r0, [r4, #9]
 893 008e E260     		str	r2, [r4, #12]	@ float
 894 0090 2361     		str	r3, [r4, #16]
 895 0092 E0E7     		b	.L167
 896              	.L179:
 897 0094 2046     		mov	r0, r4
 898 0096 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 899 009a 0546     		mov	r5, r0
 900 009c 0028     		cmp	r0, #0
 901 009e DAD1     		bne	.L167
 902 00a0 D4F82011 		ldr	r1, [r4, #288]
 903 00a4 D4F81831 		ldr	r3, [r4, #280]
 904 00a8 D4F81C21 		ldr	r2, [r4, #284]
 905 00ac 6068     		ldr	r0, [r4, #4]
 906 00ae 0191     		str	r1, [sp, #4]
 907 00b0 04F19C01 		add	r1, r4, #156
 908 00b4 0291     		str	r1, [sp, #8]
 909 00b6 0092     		str	r2, [sp]
 910 00b8 0221     		movs	r1, #2
 911 00ba 864A     		ldr	r2, .L229+16
 912 00bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 17


 913 00c0 0022     		movs	r2, #0
 914 00c2 0523     		movs	r3, #5
 915 00c4 6572     		strb	r5, [r4, #9]
 916 00c6 E260     		str	r2, [r4, #12]	@ float
 917 00c8 2361     		str	r3, [r4, #16]
 918 00ca C4E7     		b	.L167
 919              	.L178:
 920 00cc 2046     		mov	r0, r4
 921 00ce FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 922 00d2 0546     		mov	r5, r0
 923 00d4 0028     		cmp	r0, #0
 924 00d6 BED1     		bne	.L167
 925 00d8 7F4A     		ldr	r2, .L229+20
 926              	.L225:
 927 00da 6068     		ldr	r0, [r4, #4]
 928 00dc 0221     		movs	r1, #2
 929              	.L226:
 930 00de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 931 00e2 0022     		movs	r2, #0
 932 00e4 0123     		movs	r3, #1
 933 00e6 6572     		strb	r5, [r4, #9]
 934 00e8 E260     		str	r2, [r4, #12]	@ float
 935 00ea 2361     		str	r3, [r4, #16]
 936 00ec B3E7     		b	.L167
 937              	.L176:
 938 00ee 2046     		mov	r0, r4
 939 00f0 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 940 00f4 0546     		mov	r5, r0
 941 00f6 0028     		cmp	r0, #0
 942 00f8 ADD1     		bne	.L167
 943 00fa 784A     		ldr	r2, .L229+24
 944 00fc EDE7     		b	.L225
 945              	.L182:
 946 00fe 7148     		ldr	r0, .L229
 947 0100 FFF7FEFF 		bl	_ZN9SerialCDC9availableEv
 948 0104 0546     		mov	r5, r0
 949 0106 D4F83001 		ldr	r0, [r4, #304]
 950 010a 866A     		ldr	r6, [r0, #40]
 951 010c 002E     		cmp	r6, #0
 952 010e 00F09680 		beq	.L183
 953 0112 7168     		ldr	r1, [r6, #4]
 954 0114 6B48     		ldr	r0, .L229
 955 0116 C1F50053 		rsb	r3, r1, #8192
 956 011a 9D42     		cmp	r5, r3
 957 011c A8BF     		it	ge
 958 011e 1D46     		movge	r5, r3
 959 0120 06F10807 		add	r7, r6, #8
 960 0124 2A46     		mov	r2, r5
 961 0126 3944     		add	r1, r1, r7
 962 0128 FFF7FEFF 		bl	_ZN9SerialCDC9readBytesEPcj
 963 012c 7368     		ldr	r3, [r6, #4]
 964 012e 2B44     		add	r3, r3, r5
 965 0130 7360     		str	r3, [r6, #4]
 966 0132 D4F82C31 		ldr	r3, [r4, #300]
 967 0136 5D1B     		subs	r5, r3, r5
 968 0138 C4F82C51 		str	r5, [r4, #300]
 969 013c 7368     		ldr	r3, [r6, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 18


 970 013e B3F5005F 		cmp	r3, #8192
 971 0142 01D0     		beq	.L184
 972 0144 002D     		cmp	r5, #0
 973 0146 86D1     		bne	.L167
 974              	.L184:
 975 0148 3946     		mov	r1, r7
 976 014a 0022     		movs	r2, #0
 977 014c D4F83001 		ldr	r0, [r4, #304]
 978 0150 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 979 0154 0546     		mov	r5, r0
 980 0156 D4F83001 		ldr	r0, [r4, #304]
 981 015a 002D     		cmp	r5, #0
 982 015c 5DD0     		beq	.L186
 983              	.L187:
 984 015e 0028     		cmp	r0, #0
 985 0160 3FF479AF 		beq	.L167
 986 0164 D4F82C31 		ldr	r3, [r4, #300]
 987 0168 002B     		cmp	r3, #0
 988 016a 7FF474AF 		bne	.L167
 989 016e 5C4B     		ldr	r3, .L229+28
 990 0170 D3F80831 		ldr	r3, [r3, #264]
 991 0174 DB05     		lsls	r3, r3, #23
 992 0176 08D5     		bpl	.L193
 993 0178 6068     		ldr	r0, [r4, #4]
 994 017a D4F82831 		ldr	r3, [r4, #296]
 995 017e 594A     		ldr	r2, .L229+32
 996 0180 1021     		movs	r1, #16
 997 0182 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 998 0186 D4F83001 		ldr	r0, [r4, #304]
 999              	.L193:
 1000 018a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1001 018e 0023     		movs	r3, #0
 1002 0190 0021     		movs	r1, #0
 1003 0192 0122     		movs	r2, #1
 1004 0194 E160     		str	r1, [r4, #12]	@ float
 1005 0196 C4F83031 		str	r3, [r4, #304]
 1006 019a 6372     		strb	r3, [r4, #9]
 1007 019c 2261     		str	r2, [r4, #16]
 1008 019e 5AE7     		b	.L167
 1009              	.L181:
 1010 01a0 2046     		mov	r0, r4
 1011 01a2 FFF7FEFF 		bl	_ZNK7Scanner16IsDoingFileMacroEv
 1012 01a6 0546     		mov	r5, r0
 1013 01a8 0028     		cmp	r0, #0
 1014 01aa 7FF454AF 		bne	.L167
 1015 01ae D4F89830 		ldr	r3, [r4, #152]
 1016 01b2 4D4A     		ldr	r2, .L229+36
 1017 01b4 6068     		ldr	r0, [r4, #4]
 1018 01b6 0221     		movs	r1, #2
 1019 01b8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1020 01bc 0022     		movs	r2, #0
 1021 01be 0923     		movs	r3, #9
 1022 01c0 6572     		strb	r5, [r4, #9]
 1023 01c2 E260     		str	r2, [r4, #12]	@ float
 1024 01c4 2361     		str	r3, [r4, #16]
 1025 01c6 46E7     		b	.L167
 1026              	.L175:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 19


 1027 01c8 2368     		ldr	r3, [r4]
 1028 01ca 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 1029 01ce 083B     		subs	r3, r3, #8
 1030 01d0 012B     		cmp	r3, #1
 1031 01d2 7FF640AF 		bls	.L167
 1032 01d6 3B48     		ldr	r0, .L229
 1033 01d8 FFF7FEFF 		bl	_ZN9SerialCDC9availableEv
 1034 01dc 0028     		cmp	r0, #0
 1035 01de 7FF73AAF 		ble	.L167
 1036 01e2 3848     		ldr	r0, .L229
 1037 01e4 FFF7FEFF 		bl	_ZN9SerialCDC4readEv
 1038 01e8 C0B2     		uxtb	r0, r0
 1039 01ea 0A28     		cmp	r0, #10
 1040 01ec D4F89430 		ldr	r3, [r4, #148]
 1041 01f0 5FD0     		beq	.L194
 1042 01f2 0D28     		cmp	r0, #13
 1043 01f4 5DD0     		beq	.L194
 1044 01f6 E218     		adds	r2, r4, r3
 1045 01f8 0133     		adds	r3, r3, #1
 1046 01fa 7F2B     		cmp	r3, #127
 1047 01fc C4F89430 		str	r3, [r4, #148]
 1048 0200 1075     		strb	r0, [r2, #20]
 1049 0202 7FF628AF 		bls	.L167
 1050 0206 394A     		ldr	r2, .L229+40
 1051 0208 6068     		ldr	r0, [r4, #4]
 1052 020a 40F2B511 		movw	r1, #437
 1053 020e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1054 0212 0023     		movs	r3, #0
 1055 0214 C4F89430 		str	r3, [r4, #148]
 1056 0218 1DE7     		b	.L167
 1057              	.L186:
 1058 021a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1059 021e 6368     		ldr	r3, [r4, #4]
 1060 0220 C4F83051 		str	r5, [r4, #304]
 1061 0224 D3F8DC0B 		ldr	r0, [r3, #3036]
 1062 0228 D4F82421 		ldr	r2, [r4, #292]
 1063 022c 2649     		ldr	r1, .L229+4
 1064 022e 2B46     		mov	r3, r5
 1065 0230 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1066 0234 2E4A     		ldr	r2, .L229+44
 1067 0236 6068     		ldr	r0, [r4, #4]
 1068 0238 40F2B511 		movw	r1, #437
 1069 023c 4FE7     		b	.L226
 1070              	.L183:
 1071 023e 002D     		cmp	r5, #0
 1072 0240 8DDD     		ble	.L187
 1073 0242 204F     		ldr	r7, .L229
 1074 0244 08E0     		b	.L192
 1075              	.L228:
 1076 0246 D4F82C31 		ldr	r3, [r4, #300]
 1077 024a 013B     		subs	r3, r3, #1
 1078 024c C4F82C31 		str	r3, [r4, #300]
 1079 0250 63B3     		cbz	r3, .L224
 1080 0252 002D     		cmp	r5, #0
 1081 0254 3FF4FFAE 		beq	.L167
 1082              	.L192:
 1083 0258 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 20


 1084 025a FFF7FEFF 		bl	_ZN9SerialCDC4readEv
 1085 025e 0122     		movs	r2, #1
 1086 0260 8DF81700 		strb	r0, [sp, #23]
 1087 0264 0DF11701 		add	r1, sp, #23
 1088 0268 D4F83001 		ldr	r0, [r4, #304]
 1089 026c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 1090 0270 013D     		subs	r5, r5, #1
 1091 0272 0646     		mov	r6, r0
 1092 0274 0028     		cmp	r0, #0
 1093 0276 E6D1     		bne	.L228
 1094 0278 D4F83001 		ldr	r0, [r4, #304]
 1095 027c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1096 0280 6368     		ldr	r3, [r4, #4]
 1097 0282 C4F83061 		str	r6, [r4, #304]
 1098 0286 D3F8DC0B 		ldr	r0, [r3, #3036]
 1099 028a D4F82421 		ldr	r2, [r4, #292]
 1100 028e 0E49     		ldr	r1, .L229+4
 1101 0290 3346     		mov	r3, r6
 1102 0292 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1103 0296 164A     		ldr	r2, .L229+44
 1104 0298 6068     		ldr	r0, [r4, #4]
 1105 029a 40F2B511 		movw	r1, #437
 1106 029e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1107 02a2 0022     		movs	r2, #0
 1108 02a4 0123     		movs	r3, #1
 1109 02a6 6672     		strb	r6, [r4, #9]
 1110 02a8 E260     		str	r2, [r4, #12]	@ float
 1111 02aa 2361     		str	r3, [r4, #16]
 1112              	.L224:
 1113 02ac D4F83001 		ldr	r0, [r4, #304]
 1114 02b0 55E7     		b	.L187
 1115              	.L194:
 1116 02b2 2344     		add	r3, r3, r4
 1117 02b4 0025     		movs	r5, #0
 1118 02b6 1D75     		strb	r5, [r3, #20]
 1119 02b8 2046     		mov	r0, r4
 1120 02ba FFF7FEFF 		bl	_ZN7Scanner14ProcessCommandEv
 1121 02be C4F89450 		str	r5, [r4, #148]
 1122 02c2 C8E6     		b	.L167
 1123              	.L230:
 1124              		.align	2
 1125              	.L229:
 1126 02c4 00000000 		.word	SerialUSB
 1127 02c8 00000000 		.word	.LC1
 1128 02cc 40000000 		.word	.LC25
 1129 02d0 00000000 		.word	.LC24
 1130 02d4 68000000 		.word	.LC28
 1131 02d8 5C000000 		.word	.LC27
 1132 02dc 50000000 		.word	.LC26
 1133 02e0 00000000 		.word	reprap
 1134 02e4 A8000000 		.word	.LC31
 1135 02e8 7C000000 		.word	.LC29
 1136 02ec D4000000 		.word	.LC32
 1137 02f0 8C000000 		.word	.LC30
 1138              		.size	_ZN7Scanner4SpinEv, .-_ZN7Scanner4SpinEv
 1139              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1140              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 21


 1141              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1142              	_ZL28cpu_irq_prev_interrupt_state:
 1143 0000 00       		.space	1
 1144              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1145              		.align	2
 1146              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1147              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1148              	_ZL32cpu_irq_critical_section_counter:
 1149 0000 00000000 		.space	4
 1150              		.section	.rodata.CSWTCH.70,"a",%progbits
 1151              		.align	2
 1152              		.set	.LANCHOR0,. + 0
 1153              		.type	CSWTCH.70, %object
 1154              		.size	CSWTCH.70, 12
 1155              	CSWTCH.70:
 1156 0000 44       		.byte	68
 1157 0001 49       		.byte	73
 1158 0002 49       		.byte	73
 1159 0003 49       		.byte	73
 1160 0004 53       		.byte	83
 1161 0005 53       		.byte	83
 1162 0006 53       		.byte	83
 1163 0007 50       		.byte	80
 1164 0008 43       		.byte	67
 1165 0009 43       		.byte	67
 1166 000a 43       		.byte	67
 1167 000b 55       		.byte	85
 1168              		.section	.rodata._ZN7Scanner11DoFileMacroEPKc.str1.4,"aMS",%progbits,1
 1169              		.align	2
 1170              	.LC3:
 1171 0000 303A2F73 		.ascii	"0:/sys/\000"
 1171      79732F00 
 1172              	.LC4:
 1173 0008 4D393820 		.ascii	"M98 P%s\012\000"
 1173      5025730A 
 1173      00
 1174              		.section	.rodata._ZN7Scanner12SetAlignmentEb.str1.4,"aMS",%progbits,1
 1175              		.align	2
 1176              	.LC21:
 1177 0000 616C6967 		.ascii	"align_on.g\000"
 1177      6E5F6F6E 
 1177      2E6700
 1178 000b 00       		.space	1
 1179              	.LC22:
 1180 000c 616C6967 		.ascii	"align_off.g\000"
 1180      6E5F6F66 
 1180      662E6700 
 1181              		.section	.rodata._ZN7Scanner14ProcessCommandEv.str1.4,"aMS",%progbits,1
 1182              		.align	2
 1183              	.LC5:
 1184 0000 5363616E 		.ascii	"Scanner request: '%s'\012\000"
 1184      6E657220 
 1184      72657175 
 1184      6573743A 
 1184      20272573 
 1185 0017 00       		.space	1
 1186              	.LC6:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 22


 1187 0018 4D373531 		.ascii	"M751\000"
 1187      00
 1188 001d 000000   		.space	3
 1189              	.LC7:
 1190 0020 4F4B0A00 		.ascii	"OK\012\000"
 1191              	.LC8:
 1192 0024 47434F44 		.ascii	"GCODE \000"
 1192      452000
 1193 002b 00       		.space	1
 1194              	.LC9:
 1195 002c 504F5354 		.ascii	"POSTPROCESS\000"
 1195      50524F43 
 1195      45535300 
 1196              	.LC10:
 1197 0038 50524F47 		.ascii	"PROGRESS \000"
 1197      52455353 
 1197      2000
 1198 0042 0000     		.space	2
 1199              	.LC11:
 1200 0044 55504C4F 		.ascii	"UPLOAD \000"
 1200      41442000 
 1201              	.LC12:
 1202 004c 53746172 		.ascii	"Starting scan upload for file %s (%u bytes total)\012"
 1202      74696E67 
 1202      20736361 
 1202      6E207570 
 1202      6C6F6164 
 1203 007e 00       		.ascii	"\000"
 1204 007f 00       		.space	1
 1205              	.LC13:
 1206 0080 4D616C66 		.ascii	"Malformed scanner upload request\012\000"
 1206      6F726D65 
 1206      64207363 
 1206      616E6E65 
 1206      72207570 
 1207 00a2 0000     		.space	2
 1208              	.LC14:
 1209 00a4 4F4B00   		.ascii	"OK\000"
 1210 00a7 00       		.space	1
 1211              	.LC15:
 1212 00a8 7363616E 		.ascii	"scan_post.g\000"
 1212      5F706F73 
 1212      742E6700 
 1213              	.LC16:
 1214 00b4 63616C69 		.ascii	"calibrate_post.g\000"
 1214      62726174 
 1214      655F706F 
 1214      73742E67 
 1214      00
 1215 00c5 000000   		.space	3
 1216              	.LC17:
 1217 00c8 4552524F 		.ascii	"ERROR\000"
 1217      5200
 1218 00ce 0000     		.space	2
 1219              	.LC18:
 1220 00d0 25730A00 		.ascii	"%s\012\000"
 1221              		.section	.rodata._ZN7Scanner4ExitEv.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 23


 1222              		.align	2
 1223              	.LC1:
 1224 0000 303A2F73 		.ascii	"0:/scans/\000"
 1224      63616E73 
 1224      2F00
 1225              		.section	.rodata._ZN7Scanner4SpinEv.str1.4,"aMS",%progbits,1
 1226              		.align	2
 1227              	.LC24:
 1228 0000 5363616E 		.ascii	"Scanner disconnected while a 3D scan or upload was "
 1228      6E657220 
 1228      64697363 
 1228      6F6E6E65 
 1228      63746564 
 1229 0033 696E2070 		.ascii	"in progress\000"
 1229      726F6772 
 1229      65737300 
 1230 003f 00       		.space	1
 1231              	.LC25:
 1232 0040 7363616E 		.ascii	"scanner_off.g\000"
 1232      6E65725F 
 1232      6F66662E 
 1232      6700
 1233 004e 0000     		.space	2
 1234              	.LC26:
 1235 0050 414C4947 		.ascii	"ALIGN ON\012\000"
 1235      4E204F4E 
 1235      0A00
 1236 005a 0000     		.space	2
 1237              	.LC27:
 1238 005c 414C4947 		.ascii	"ALIGN OFF\012\000"
 1238      4E204F46 
 1238      460A00
 1239 0067 00       		.space	1
 1240              	.LC28:
 1241 0068 5343414E 		.ascii	"SCAN %d %d %d %s\012\000"
 1241      20256420 
 1241      25642025 
 1241      64202573 
 1241      0A00
 1242 007a 0000     		.space	2
 1243              	.LC29:
 1244 007c 43414C49 		.ascii	"CALIBRATE %d\012\000"
 1244      42524154 
 1244      45202564 
 1244      0A00
 1245 008a 0000     		.space	2
 1246              	.LC30:
 1247 008c 4661696C 		.ascii	"Failed to write scan file\012\000"
 1247      65642074 
 1247      6F207772 
 1247      69746520 
 1247      7363616E 
 1248 00a7 00       		.space	1
 1249              	.LC31:
 1250 00a8 46696E69 		.ascii	"Finished uploading %u bytes of scan data\012\000"
 1250      73686564 
 1250      2075706C 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTCOWdy.s 			page 24


 1250      6F616469 
 1250      6E672025 
 1251 00d2 0000     		.space	2
 1252              	.LC32:
 1253 00d4 5363616E 		.ascii	"Scan buffer overflow\012\000"
 1253      20627566 
 1253      66657220 
 1253      6F766572 
 1253      666C6F77 
 1254              		.section	.rodata._ZN7Scanner6CancelEv.str1.4,"aMS",%progbits,1
 1255              		.align	2
 1256              	.LC0:
 1257 0000 43414E43 		.ascii	"CANCEL\012\000"
 1257      454C0A00 
 1258              		.section	.rodata._ZN7Scanner8RegisterEv.str1.4,"aMS",%progbits,1
 1259              		.align	2
 1260              	.LC19:
 1261 0000 7363616E 		.ascii	"scanner_on.g\000"
 1261      6E65725F 
 1261      6F6E2E67 
 1261      00
 1262              		.section	.rodata._ZN7Scanner8ShutdownEv.str1.4,"aMS",%progbits,1
 1263              		.align	2
 1264              	.LC2:
 1265 0000 53485554 		.ascii	"SHUTDOWN\012\000"
 1265      444F574E 
 1265      0A00
 1266              		.section	.rodata._ZN7Scanner9CalibrateEi.str1.4,"aMS",%progbits,1
 1267              		.align	2
 1268              	.LC23:
 1269 0000 63616C69 		.ascii	"calibrate_pre.g\000"
 1269      62726174 
 1269      655F7072 
 1269      652E6700 
 1270              		.section	.rodata._ZN7Scanner9StartScanEPKciii.str1.4,"aMS",%progbits,1
 1271              		.align	2
 1272              	.LC20:
 1273 0000 7363616E 		.ascii	"scan_pre.g\000"
 1273      5F707265 
 1273      2E6700
 1274              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
