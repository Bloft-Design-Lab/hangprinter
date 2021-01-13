ARM GAS  /tmp/ccgDyFqF.s 			page 1


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
  13              		.file	"HttpResponder.cpp"
  14              		.section	.text._ZNK13HttpResponder11DiagnosticsE11MessageType,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZNK13HttpResponder11DiagnosticsE11MessageType
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK13HttpResponder11DiagnosticsE11MessageType, %function
  23              	_ZNK13HttpResponder11DiagnosticsE11MessageType:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28 0002 044C     		ldr	r4, .L4
  29 0004 8368     		ldr	r3, [r0, #8]
  30 0006 044A     		ldr	r2, .L4+4
  31 0008 2068     		ldr	r0, [r4]	@ unaligned
  32 000a 5DF8044B 		ldr	r4, [sp], #4
  33 000e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  34              	.L5:
  35 0012 00BF     		.align	2
  36              	.L4:
  37 0014 00000000 		.word	reprap
  38 0018 00000000 		.word	.LC0
  39              		.size	_ZNK13HttpResponder11DiagnosticsE11MessageType, .-_ZNK13HttpResponder11DiagnosticsE11Message
  40              		.section	.text._ZN13HttpResponder9TerminateEh,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN13HttpResponder9TerminateEh
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN13HttpResponder9TerminateEh, %function
  49              	_ZN13HttpResponder9TerminateEh:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 8268     		ldr	r2, [r0, #8]
  54 0002 1AB1     		cbz	r2, .L6
  55 0004 0139     		subs	r1, r1, #1
  56 0006 C9B2     		uxtb	r1, r1
  57 0008 FD29     		cmp	r1, #253
ARM GAS  /tmp/ccgDyFqF.s 			page 2


  58 000a 00D8     		bhi	.L11
  59              	.L6:
  60 000c 7047     		bx	lr
  61              	.L11:
  62 000e 0368     		ldr	r3, [r0]
  63 0010 5B69     		ldr	r3, [r3, #20]
  64 0012 1847     		bx	r3	@ indirect register sibling call
  65              		.size	_ZN13HttpResponder9TerminateEh, .-_ZN13HttpResponder9TerminateEh
  66              		.section	.text._ZN13HttpResponder6AcceptEP6Socketh,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	_ZN13HttpResponder6AcceptEP6Socketh
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZN13HttpResponder6AcceptEP6Socketh, %function
  75              	_ZN13HttpResponder6AcceptEP6Socketh:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78 0000 8368     		ldr	r3, [r0, #8]
  79 0002 03B9     		cbnz	r3, .L14
  80 0004 0AB1     		cbz	r2, .L21
  81              	.L14:
  82 0006 0020     		movs	r0, #0
  83 0008 7047     		bx	lr
  84              	.L21:
  85 000a 70B5     		push	{r4, r5, r6, lr}
  86 000c 0124     		movs	r4, #1
  87 000e 0161     		str	r1, [r0, #16]
  88 0010 8460     		str	r4, [r0, #8]
  89 0012 0546     		mov	r5, r0
  90 0014 1646     		mov	r6, r2
  91 0016 FFF7FEFF 		bl	millis
  92 001a 0D4B     		ldr	r3, .L23
  93 001c 6861     		str	r0, [r5, #20]
  94 001e 9B6C     		ldr	r3, [r3, #72]
  95 0020 C5F88866 		str	r6, [r5, #1672]
  96 0024 05F1D002 		add	r2, r5, #208
  97 0028 5B07     		lsls	r3, r3, #29
  98 002a C5F8CC60 		str	r6, [r5, #204]
  99 002e C5F8C067 		str	r6, [r5, #1984]
 100 0032 C5F8C467 		str	r6, [r5, #1988]
 101 0036 C5F8C867 		str	r6, [r5, #1992]
 102 003a C5F89026 		str	r2, [r5, #1680]
 103 003e 01D4     		bmi	.L22
 104 0040 2046     		mov	r0, r4
 105 0042 70BD     		pop	{r4, r5, r6, pc}
 106              	.L22:
 107 0044 0348     		ldr	r0, .L23+4
 108 0046 FFF7FEFF 		bl	debugPrintf
 109 004a 2046     		mov	r0, r4
 110 004c 70BD     		pop	{r4, r5, r6, pc}
 111              	.L24:
 112 004e 00BF     		.align	2
 113              	.L23:
 114 0050 00000000 		.word	reprap
ARM GAS  /tmp/ccgDyFqF.s 			page 3


 115 0054 00000000 		.word	.LC1
 116              		.size	_ZN13HttpResponder6AcceptEP6Socketh, .-_ZN13HttpResponder6AcceptEP6Socketh
 117              		.section	.text._ZN13HttpResponderC2EP16NetworkResponder,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	_ZN13HttpResponderC2EP16NetworkResponder
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	_ZN13HttpResponderC2EP16NetworkResponder, %function
 126              	_ZN13HttpResponderC2EP16NetworkResponder:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129 0000 10B5     		push	{r4, lr}
 130 0002 0446     		mov	r4, r0
 131 0004 FFF7FEFF 		bl	_ZN16NetworkResponderC2EPS_
 132 0008 014B     		ldr	r3, .L27
 133 000a 2360     		str	r3, [r4]
 134 000c 2046     		mov	r0, r4
 135 000e 10BD     		pop	{r4, pc}
 136              	.L28:
 137              		.align	2
 138              	.L27:
 139 0010 08000000 		.word	.LANCHOR0+8
 140              		.size	_ZN13HttpResponderC2EP16NetworkResponder, .-_ZN13HttpResponderC2EP16NetworkResponder
 141              		.global	_ZN13HttpResponderC1EP16NetworkResponder
 142              		.thumb_set _ZN13HttpResponderC1EP16NetworkResponder,_ZN13HttpResponderC2EP16NetworkResponder
 143              		.section	.text._ZNK13HttpResponder11GetKeyValueEPKc,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	_ZNK13HttpResponder11GetKeyValueEPKc
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	_ZNK13HttpResponder11GetKeyValueEPKc, %function
 152              	_ZNK13HttpResponder11GetKeyValueEPKc:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 156 0002 D0F8C437 		ldr	r3, [r0, #1988]
 157 0006 B3B1     		cbz	r3, .L30
 158 0008 0F46     		mov	r7, r1
 159 000a 0646     		mov	r6, r0
 160 000c 0446     		mov	r4, r0
 161 000e 0025     		movs	r5, #0
 162 0010 04E0     		b	.L33
 163              	.L31:
 164 0012 D6F8C437 		ldr	r3, [r6, #1988]
 165 0016 0135     		adds	r5, r5, #1
 166 0018 AB42     		cmp	r3, r5
 167 001a 0CD9     		bls	.L30
 168              	.L33:
 169 001c D4F8A006 		ldr	r0, [r4, #1696]
 170 0020 3946     		mov	r1, r7
 171 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
ARM GAS  /tmp/ccgDyFqF.s 			page 4


 172 0026 0834     		adds	r4, r4, #8
 173 0028 0028     		cmp	r0, #0
 174 002a F2D0     		beq	.L31
 175 002c 06EBC505 		add	r5, r6, r5, lsl #3
 176 0030 D5F8A406 		ldr	r0, [r5, #1700]
 177 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 178              	.L30:
 179 0036 0020     		movs	r0, #0
 180 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 181              		.size	_ZNK13HttpResponder11GetKeyValueEPKc, .-_ZNK13HttpResponder11GetKeyValueEPKc
 182 003a 00BF     		.section	.text._ZN13HttpResponder12SendFileInfoEb,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZN13HttpResponder12SendFileInfoEb
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZN13HttpResponder12SendFileInfoEb, %function
 191              	_ZN13HttpResponder12SendFileInfoEb:
 192              		@ args = 0, pretend = 0, frame = 8
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 70B5     		push	{r4, r5, r6, lr}
 195 0002 82B0     		sub	sp, sp, #8
 196 0004 02AA     		add	r2, sp, #8
 197 0006 0023     		movs	r3, #0
 198 0008 42F8043D 		str	r3, [r2, #-4]!
 199 000c 0446     		mov	r4, r0
 200 000e 0B46     		mov	r3, r1
 201 0010 00F5FA61 		add	r1, r0, #2000
 202 0014 1C48     		ldr	r0, .L50
 203 0016 FFF7FEFF 		bl	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 204 001a 0546     		mov	r5, r0
 205 001c 10B9     		cbnz	r0, .L48
 206 001e 2846     		mov	r0, r5
 207 0020 02B0     		add	sp, sp, #8
 208              		@ sp needed
 209 0022 70BD     		pop	{r4, r5, r6, pc}
 210              	.L48:
 211 0024 1949     		ldr	r1, .L50+4
 212 0026 A069     		ldr	r0, [r4, #24]
 213 0028 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 214 002c 0198     		ldr	r0, [sp, #4]
 215 002e A669     		ldr	r6, [r4, #24]
 216 0030 C8B1     		cbz	r0, .L43
 217 0032 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 218 0036 0246     		mov	r2, r0
 219              	.L41:
 220 0038 1549     		ldr	r1, .L50+8
 221 003a 3046     		mov	r0, r6
 222 003c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 223 0040 1449     		ldr	r1, .L50+12
 224 0042 A069     		ldr	r0, [r4, #24]
 225 0044 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 226 0048 0199     		ldr	r1, [sp, #4]
 227 004a A069     		ldr	r0, [r4, #24]
 228 004c FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
ARM GAS  /tmp/ccgDyFqF.s 			page 5


 229 0050 A369     		ldr	r3, [r4, #24]
 230 0052 93F81511 		ldrb	r1, [r3, #277]	@ zero_extendqisi2
 231 0056 41B9     		cbnz	r1, .L49
 232 0058 2046     		mov	r0, r4
 233 005a 0122     		movs	r2, #1
 234 005c FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 235 0060 2846     		mov	r0, r5
 236 0062 02B0     		add	sp, sp, #8
 237              		@ sp needed
 238 0064 70BD     		pop	{r4, r5, r6, pc}
 239              	.L43:
 240 0066 0246     		mov	r2, r0
 241 0068 E6E7     		b	.L41
 242              	.L49:
 243 006a 04F11800 		add	r0, r4, #24
 244 006e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 245 0072 2046     		mov	r0, r4
 246 0074 4FF42172 		mov	r2, #644
 247 0078 0749     		ldr	r1, .L50+16
 248 007a FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 249 007e 0025     		movs	r5, #0
 250 0080 2846     		mov	r0, r5
 251 0082 02B0     		add	sp, sp, #8
 252              		@ sp needed
 253 0084 70BD     		pop	{r4, r5, r6, pc}
 254              	.L51:
 255 0086 00BF     		.align	2
 256              	.L50:
 257 0088 00000000 		.word	reprap
 258 008c 00000000 		.word	.LC2
 259 0090 A0000000 		.word	.LC3
 260 0094 B4000000 		.word	.LC4
 261 0098 C8000000 		.word	.LC5
 262              		.size	_ZN13HttpResponder12SendFileInfoEb, .-_ZN13HttpResponder12SendFileInfoEb
 263              		.section	.text._ZN13HttpResponder18CheckAuthenticatedEv,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	_ZN13HttpResponder18CheckAuthenticatedEv
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	_ZN13HttpResponder18CheckAuthenticatedEv, %function
 272              	_ZN13HttpResponder18CheckAuthenticatedEv:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275 0000 38B5     		push	{r3, r4, r5, lr}
 276 0002 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 277 0006 0F4B     		ldr	r3, .L64
 278 0008 1968     		ldr	r1, [r3]
 279 000a 71B1     		cbz	r1, .L53
 280 000c 0E4D     		ldr	r5, .L64+4
 281 000e 2B68     		ldr	r3, [r5]
 282 0010 9842     		cmp	r0, r3
 283 0012 0CD0     		beq	.L63
 284 0014 2B46     		mov	r3, r5
 285 0016 0024     		movs	r4, #0
ARM GAS  /tmp/ccgDyFqF.s 			page 6


 286 0018 03E0     		b	.L56
 287              	.L57:
 288 001a 53F80C2F 		ldr	r2, [r3, #12]!
 289 001e 8242     		cmp	r2, r0
 290 0020 06D0     		beq	.L54
 291              	.L56:
 292 0022 0134     		adds	r4, r4, #1
 293 0024 8C42     		cmp	r4, r1
 294 0026 F8D1     		bne	.L57
 295 0028 0021     		movs	r1, #0
 296              	.L53:
 297 002a 0846     		mov	r0, r1
 298 002c 38BD     		pop	{r3, r4, r5, pc}
 299              	.L63:
 300 002e 0024     		movs	r4, #0
 301              	.L54:
 302 0030 FFF7FEFF 		bl	millis
 303 0034 04EB4404 		add	r4, r4, r4, lsl #1
 304 0038 05EB8404 		add	r4, r5, r4, lsl #2
 305 003c 0121     		movs	r1, #1
 306 003e 6060     		str	r0, [r4, #4]
 307 0040 0846     		mov	r0, r1
 308 0042 38BD     		pop	{r3, r4, r5, pc}
 309              	.L65:
 310              		.align	2
 311              	.L64:
 312 0044 00000000 		.word	.LANCHOR1
 313 0048 00000000 		.word	.LANCHOR2
 314              		.size	_ZN13HttpResponder18CheckAuthenticatedEv, .-_ZN13HttpResponder18CheckAuthenticatedEv
 315              		.section	.text._ZN13HttpResponder12AuthenticateEv,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	_ZN13HttpResponder12AuthenticateEv
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	_ZN13HttpResponder12AuthenticateEv, %function
 324              	_ZN13HttpResponder12AuthenticateEv:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 328 0004 0746     		mov	r7, r0
 329 0006 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 330 000a 0446     		mov	r4, r0
 331 000c 18B9     		cbnz	r0, .L67
 332 000e 124E     		ldr	r6, .L70
 333 0010 3568     		ldr	r5, [r6]
 334 0012 072D     		cmp	r5, #7
 335 0014 02D9     		bls	.L69
 336              	.L67:
 337 0016 2046     		mov	r0, r4
 338 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 339              	.L69:
 340 001c 3846     		mov	r0, r7
 341 001e FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 342 0022 DFF83880 		ldr	r8, .L70+4
ARM GAS  /tmp/ccgDyFqF.s 			page 7


 343 0026 3768     		ldr	r7, [r6]
 344 0028 05EB4505 		add	r5, r5, r5, lsl #1
 345 002c 07EB4707 		add	r7, r7, r7, lsl #1
 346 0030 48F82500 		str	r0, [r8, r5, lsl #2]
 347 0034 FFF7FEFF 		bl	millis
 348 0038 3368     		ldr	r3, [r6]
 349 003a 03EB4302 		add	r2, r3, r3, lsl #1
 350 003e 08EB8707 		add	r7, r8, r7, lsl #2
 351 0042 08EB8208 		add	r8, r8, r2, lsl #2
 352 0046 0133     		adds	r3, r3, #1
 353 0048 88F80840 		strb	r4, [r8, #8]
 354 004c 0124     		movs	r4, #1
 355 004e 7860     		str	r0, [r7, #4]
 356 0050 3360     		str	r3, [r6]
 357 0052 2046     		mov	r0, r4
 358 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 359              	.L71:
 360              		.align	2
 361              	.L70:
 362 0058 00000000 		.word	.LANCHOR1
 363 005c 00000000 		.word	.LANCHOR2
 364              		.size	_ZN13HttpResponder12AuthenticateEv, .-_ZN13HttpResponder12AuthenticateEv
 365              		.section	.text._ZN13HttpResponder20RemoveAuthenticationEv,"ax",%progbits
 366              		.align	1
 367              		.p2align 2,,3
 368              		.global	_ZN13HttpResponder20RemoveAuthenticationEv
 369              		.syntax unified
 370              		.thumb
 371              		.thumb_func
 372              		.fpu fpv4-sp-d16
 373              		.type	_ZN13HttpResponder20RemoveAuthenticationEv, %function
 374              	_ZN13HttpResponder20RemoveAuthenticationEv:
 375              		@ args = 0, pretend = 0, frame = 0
 376              		@ frame_needed = 0, uses_anonymous_args = 0
 377 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 378 0002 DFF890E0 		ldr	lr, .L89+8
 379 0006 0369     		ldr	r3, [r0, #16]
 380 0008 DEF80060 		ldr	r6, [lr]
 381 000c 1F69     		ldr	r7, [r3, #16]
 382 000e 002E     		cmp	r6, #0
 383 0010 39D0     		beq	.L83
 384 0012 741E     		subs	r4, r6, #1
 385 0014 04EB4403 		add	r3, r4, r4, lsl #1
 386 0018 9B00     		lsls	r3, r3, #2
 387 001a 1C4A     		ldr	r2, .L89
 388 001c D158     		ldr	r1, [r2, r3]
 389 001e 8F42     		cmp	r7, r1
 390 0020 1344     		add	r3, r3, r2
 391 0022 2DD0     		beq	.L74
 392 0024 06EB460C 		add	ip, r6, r6, lsl #1
 393 0028 4FEA8C0C 		lsl	ip, ip, #2
 394 002c 02EB0C03 		add	r3, r2, ip
 395 0030 2046     		mov	r0, r4
 396 0032 04E0     		b	.L75
 397              	.L86:
 398 0034 53F80C5C 		ldr	r5, [r3, #-12]
 399 0038 BD42     		cmp	r5, r7
ARM GAS  /tmp/ccgDyFqF.s 			page 8


 400 003a 05D0     		beq	.L76
 401 003c 0846     		mov	r0, r1
 402              	.L75:
 403 003e 0C3B     		subs	r3, r3, #12
 404 0040 411E     		subs	r1, r0, #1
 405 0042 0028     		cmp	r0, #0
 406 0044 F6D1     		bne	.L86
 407 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 408              	.L76:
 409 0048 01EB4101 		add	r1, r1, r1, lsl #1
 410 004c 02EB8101 		add	r1, r2, r1, lsl #2
 411 0050 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 412 0052 C3B9     		cbnz	r3, .L83
 413 0054 8642     		cmp	r6, r0
 414 0056 0FD9     		bls	.L78
 415 0058 00EB4000 		add	r0, r0, r0, lsl #1
 416 005c 0C49     		ldr	r1, .L89+4
 417 005e 02EB8000 		add	r0, r2, r0, lsl #2
 418 0062 A0F10C03 		sub	r3, r0, #12
 419 0066 8C44     		add	ip, ip, r1
 420              	.L79:
 421 0068 1E46     		mov	r6, r3
 422 006a 53F80C0F 		ldr	r0, [r3, #12]!	@ unaligned
 423 006e 5968     		ldr	r1, [r3, #4]	@ unaligned
 424 0070 9A68     		ldr	r2, [r3, #8]	@ unaligned
 425 0072 6345     		cmp	r3, ip
 426 0074 07C6     		stmia	r6!, {r0, r1, r2}
 427 0076 F7D1     		bne	.L79
 428              	.L78:
 429 0078 CEF80040 		str	r4, [lr]
 430 007c 0120     		movs	r0, #1
 431 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 432              	.L74:
 433 0080 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 434 0082 002B     		cmp	r3, #0
 435 0084 F8D0     		beq	.L78
 436              	.L83:
 437 0086 0020     		movs	r0, #0
 438 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 439              	.L90:
 440 008a 00BF     		.align	2
 441              	.L89:
 442 008c 00000000 		.word	.LANCHOR2
 443 0090 F4FFFFFF 		.word	.LANCHOR2-12
 444 0094 00000000 		.word	.LANCHOR1
 445              		.size	_ZN13HttpResponder20RemoveAuthenticationEv, .-_ZN13HttpResponder20RemoveAuthenticationEv
 446              		.section	.text._ZN13HttpResponder14SendGCodeReplyEv,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	_ZN13HttpResponder14SendGCodeReplyEv
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 454              		.type	_ZN13HttpResponder14SendGCodeReplyEv, %function
 455              	_ZN13HttpResponder14SendGCodeReplyEv:
 456              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccgDyFqF.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 459 0004 394D     		ldr	r5, .L107
 460 0006 3A49     		ldr	r1, .L107+4
 461 0008 84B0     		sub	sp, sp, #16
 462 000a 0446     		mov	r4, r0
 463 000c 4FF0FF32 		mov	r2, #-1
 464 0010 02A8     		add	r0, sp, #8
 465 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 466 0016 2B68     		ldr	r3, [r5]
 467 0018 04F11C06 		add	r6, r4, #28
 468 001c 53B3     		cbz	r3, .L92
 469 001e 354F     		ldr	r7, .L107+8
 470 0020 DFF8E880 		ldr	r8, .L107+32
 471 0024 3B68     		ldr	r3, [r7]
 472 0026 D8F80020 		ldr	r2, [r8]
 473 002a 0133     		adds	r3, r3, #1
 474 002c 9342     		cmp	r3, r2
 475 002e 3B60     		str	r3, [r7]
 476 0030 40D3     		bcc	.L105
 477 0032 314B     		ldr	r3, .L107+12
 478 0034 9A6C     		ldr	r2, [r3, #72]
 479 0036 5207     		lsls	r2, r2, #29
 480 0038 4FF00109 		mov	r9, #1
 481 003c 44D4     		bmi	.L106
 482              	.L94:
 483 003e 2F49     		ldr	r1, .L107+16
 484 0040 A069     		ldr	r0, [r4, #24]
 485 0042 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 486 0046 2948     		ldr	r0, .L107
 487 0048 A769     		ldr	r7, [r4, #24]
 488 004a FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 489 004e 2C49     		ldr	r1, .L107+20
 490 0050 0246     		mov	r2, r0
 491 0052 3846     		mov	r0, r7
 492 0054 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 493 0058 2A49     		ldr	r1, .L107+24
 494 005a A069     		ldr	r0, [r4, #24]
 495 005c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 496 0060 3046     		mov	r0, r6
 497 0062 2249     		ldr	r1, .L107
 498 0064 FFF7FEFF 		bl	_ZNV11OutputStack6AppendERVS_
 499 0068 B9F1000F 		cmp	r9, #0
 500 006c 17D0     		beq	.L95
 501 006e 0023     		movs	r3, #0
 502 0070 2B60     		str	r3, [r5]
 503 0072 14E0     		b	.L95
 504              	.L92:
 505 0074 2149     		ldr	r1, .L107+16
 506 0076 A069     		ldr	r0, [r4, #24]
 507 0078 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 508 007c 2846     		mov	r0, r5
 509 007e A769     		ldr	r7, [r4, #24]
 510 0080 FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 511 0084 1E49     		ldr	r1, .L107+20
 512 0086 0246     		mov	r2, r0
 513 0088 3846     		mov	r0, r7
ARM GAS  /tmp/ccgDyFqF.s 			page 10


 514 008a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 515 008e 1D49     		ldr	r1, .L107+24
 516 0090 A069     		ldr	r0, [r4, #24]
 517 0092 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 518 0096 2946     		mov	r1, r5
 519 0098 3046     		mov	r0, r6
 520 009a FFF7FEFF 		bl	_ZNV11OutputStack6AppendERVS_
 521              	.L95:
 522 009e 02A8     		add	r0, sp, #8
 523 00a0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 524 00a4 2046     		mov	r0, r4
 525 00a6 0122     		movs	r2, #1
 526 00a8 0021     		movs	r1, #0
 527 00aa FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 528 00ae 04B0     		add	sp, sp, #16
 529              		@ sp needed
 530 00b0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 531              	.L105:
 532 00b4 0121     		movs	r1, #1
 533 00b6 2846     		mov	r0, r5
 534 00b8 FFF7FEFF 		bl	_ZNV11OutputStack18IncreaseReferencesEj
 535 00bc 0E4B     		ldr	r3, .L107+12
 536 00be 9A6C     		ldr	r2, [r3, #72]
 537 00c0 5207     		lsls	r2, r2, #29
 538 00c2 4FF00009 		mov	r9, #0
 539 00c6 BAD5     		bpl	.L94
 540              	.L106:
 541 00c8 0848     		ldr	r0, .L107
 542 00ca D3F800A0 		ldr	r10, [r3]
 543 00ce 3F68     		ldr	r7, [r7]
 544 00d0 D8F80080 		ldr	r8, [r8]
 545 00d4 FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 546 00d8 3B46     		mov	r3, r7
 547 00da CDE90080 		strd	r8, r0, [sp]
 548 00de 0A4A     		ldr	r2, .L107+28
 549 00e0 5046     		mov	r0, r10
 550 00e2 0121     		movs	r1, #1
 551 00e4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 552 00e8 A9E7     		b	.L94
 553              	.L108:
 554 00ea 00BF     		.align	2
 555              	.L107:
 556 00ec 00000000 		.word	.LANCHOR4
 557 00f0 00000000 		.word	.LANCHOR3
 558 00f4 00000000 		.word	.LANCHOR5
 559 00f8 00000000 		.word	reprap
 560 00fc 3C000000 		.word	.LC7
 561 0100 A0000000 		.word	.LC3
 562 0104 B4000000 		.word	.LC4
 563 0108 00000000 		.word	.LC6
 564 010c 00000000 		.word	.LANCHOR1
 565              		.size	_ZN13HttpResponder14SendGCodeReplyEv, .-_ZN13HttpResponder14SendGCodeReplyEv
 566              		.section	.text._ZN13HttpResponder14ProcessMessageEv,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	_ZN13HttpResponder14ProcessMessageEv
 570              		.syntax unified
ARM GAS  /tmp/ccgDyFqF.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu fpv4-sp-d16
 574              		.type	_ZN13HttpResponder14ProcessMessageEv, %function
 575              	_ZN13HttpResponder14ProcessMessageEv:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 579 0004 254B     		ldr	r3, .L128
 580 0006 9A6C     		ldr	r2, [r3, #72]
 581 0008 5207     		lsls	r2, r2, #29
 582 000a 82B0     		sub	sp, sp, #8
 583 000c 0546     		mov	r5, r0
 584 000e 08D4     		bmi	.L127
 585              	.L110:
 586 0010 0423     		movs	r3, #4
 587 0012 AB60     		str	r3, [r5, #8]
 588 0014 FFF7FEFF 		bl	millis
 589 0018 C5F8CC07 		str	r0, [r5, #1996]
 590 001c 02B0     		add	sp, sp, #8
 591              		@ sp needed
 592 001e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 593              	.L127:
 594 0022 1F68     		ldr	r7, [r3]
 595 0024 1E4A     		ldr	r2, .L128+4
 596 0026 3846     		mov	r0, r7
 597 0028 0121     		movs	r1, #1
 598 002a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 599 002e D5F8C037 		ldr	r3, [r5, #1984]
 600 0032 83B1     		cbz	r3, .L111
 601 0034 DFF87480 		ldr	r8, .L128+16
 602 0038 05F5D266 		add	r6, r5, #1680
 603 003c 0024     		movs	r4, #0
 604              	.L112:
 605 003e 56F8043B 		ldr	r3, [r6], #4
 606 0042 4246     		mov	r2, r8
 607 0044 0121     		movs	r1, #1
 608 0046 3846     		mov	r0, r7
 609 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 610 004c D5F8C037 		ldr	r3, [r5, #1984]
 611 0050 0134     		adds	r4, r4, #1
 612 0052 A342     		cmp	r3, r4
 613 0054 F3D8     		bhi	.L112
 614              	.L111:
 615 0056 134A     		ldr	r2, .L128+8
 616 0058 0121     		movs	r1, #1
 617 005a 3846     		mov	r0, r7
 618 005c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 619 0060 D5F8C437 		ldr	r3, [r5, #1988]
 620 0064 A3B1     		cbz	r3, .L113
 621 0066 DFF84880 		ldr	r8, .L128+20
 622 006a 2C46     		mov	r4, r5
 623 006c 0026     		movs	r6, #0
 624              	.L114:
 625 006e D4F8A426 		ldr	r2, [r4, #1700]
 626 0072 D4F8A036 		ldr	r3, [r4, #1696]
 627 0076 0092     		str	r2, [sp]
ARM GAS  /tmp/ccgDyFqF.s 			page 12


 628 0078 0121     		movs	r1, #1
 629 007a 4246     		mov	r2, r8
 630 007c 3846     		mov	r0, r7
 631 007e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 632 0082 D5F8C437 		ldr	r3, [r5, #1988]
 633 0086 0136     		adds	r6, r6, #1
 634 0088 B342     		cmp	r3, r6
 635 008a 04F10804 		add	r4, r4, #8
 636 008e EED8     		bhi	.L114
 637              	.L113:
 638 0090 3846     		mov	r0, r7
 639 0092 054A     		ldr	r2, .L128+12
 640 0094 0121     		movs	r1, #1
 641 0096 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 642 009a B9E7     		b	.L110
 643              	.L129:
 644              		.align	2
 645              	.L128:
 646 009c 00000000 		.word	reprap
 647 00a0 00000000 		.word	.LC8
 648 00a4 20000000 		.word	.LC10
 649 00a8 3C000000 		.word	.LC12
 650 00ac 1C000000 		.word	.LC9
 651 00b0 34000000 		.word	.LC11
 652              		.size	_ZN13HttpResponder14ProcessMessageEv, .-_ZN13HttpResponder14ProcessMessageEv
 653              		.section	.text._ZN13HttpResponder13RejectMessageEPKcj,"ax",%progbits
 654              		.align	1
 655              		.p2align 2,,3
 656              		.global	_ZN13HttpResponder13RejectMessageEPKcj
 657              		.syntax unified
 658              		.thumb
 659              		.thumb_func
 660              		.fpu fpv4-sp-d16
 661              		.type	_ZN13HttpResponder13RejectMessageEPKcj, %function
 662              	_ZN13HttpResponder13RejectMessageEPKcj:
 663              		@ args = 0, pretend = 0, frame = 0
 664              		@ frame_needed = 0, uses_anonymous_args = 0
 665 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 666 0002 184B     		ldr	r3, .L141
 667 0004 9F6C     		ldr	r7, [r3, #72]
 668 0006 1646     		mov	r6, r2
 669 0008 7A07     		lsls	r2, r7, #29
 670 000a 83B0     		sub	sp, sp, #12
 671 000c 0446     		mov	r4, r0
 672 000e 0D46     		mov	r5, r1
 673 0010 1ED4     		bmi	.L138
 674              	.L131:
 675 0012 A069     		ldr	r0, [r4, #24]
 676 0014 A0B1     		cbz	r0, .L139
 677              	.L132:
 678 0016 3246     		mov	r2, r6
 679 0018 2B46     		mov	r3, r5
 680 001a 1349     		ldr	r1, .L141+4
 681 001c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 682 0020 124B     		ldr	r3, .L141+8
 683 0022 A069     		ldr	r0, [r4, #24]
 684 0024 124A     		ldr	r2, .L141+12
ARM GAS  /tmp/ccgDyFqF.s 			page 13


 685 0026 0093     		str	r3, [sp]
 686 0028 1249     		ldr	r1, .L141+16
 687 002a 2B46     		mov	r3, r5
 688 002c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 689 0030 2046     		mov	r0, r4
 690 0032 0122     		movs	r2, #1
 691 0034 0021     		movs	r1, #0
 692 0036 03B0     		add	sp, sp, #12
 693              		@ sp needed
 694 0038 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 695 003c FFF7FEBF 		b	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 696              	.L139:
 697 0040 04F11800 		add	r0, r4, #24
 698 0044 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 699 0048 50B9     		cbnz	r0, .L140
 700 004a A060     		str	r0, [r4, #8]
 701 004c 03B0     		add	sp, sp, #12
 702              		@ sp needed
 703 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 704              	.L138:
 705 0050 1868     		ldr	r0, [r3]
 706 0052 094A     		ldr	r2, .L141+20
 707 0054 0091     		str	r1, [sp]
 708 0056 3346     		mov	r3, r6
 709 0058 0121     		movs	r1, #1
 710 005a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 711 005e D8E7     		b	.L131
 712              	.L140:
 713 0060 A069     		ldr	r0, [r4, #24]
 714 0062 D8E7     		b	.L132
 715              	.L142:
 716              		.align	2
 717              	.L141:
 718 0064 00000000 		.word	reprap
 719 0068 2C000000 		.word	.LC14
 720 006c DC000000 		.word	.LC17
 721 0070 50000000 		.word	.LC15
 722 0074 D4000000 		.word	.LC16
 723 0078 00000000 		.word	.LC13
 724              		.size	_ZN13HttpResponder13RejectMessageEPKcj, .-_ZN13HttpResponder13RejectMessageEPKcj
 725              		.section	.text._ZN13HttpResponder14CharFromClientEc,"ax",%progbits
 726              		.align	1
 727              		.p2align 2,,3
 728              		.global	_ZN13HttpResponder14CharFromClientEc
 729              		.syntax unified
 730              		.thumb
 731              		.thumb_func
 732              		.fpu fpv4-sp-d16
 733              		.type	_ZN13HttpResponder14CharFromClientEc, %function
 734              	_ZN13HttpResponder14CharFromClientEc:
 735              		@ args = 0, pretend = 0, frame = 0
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 738 0002 D0F8CC20 		ldr	r2, [r0, #204]
 739 0006 0B2A     		cmp	r2, #11
 740 0008 00F29681 		bhi	.L144
 741 000c DFE812F0 		tbh	[pc, r2, lsl #1]
ARM GAS  /tmp/ccgDyFqF.s 			page 14


 742              	.L146:
 743 0010 2D00     		.2byte	(.L145-.L146)/2
 744 0012 4E00     		.2byte	(.L147-.L146)/2
 745 0014 0501     		.2byte	(.L148-.L146)/2
 746 0016 EA00     		.2byte	(.L149-.L146)/2
 747 0018 1A01     		.2byte	(.L150-.L146)/2
 748 001a 8E00     		.2byte	(.L151-.L146)/2
 749 001c 0501     		.2byte	(.L148-.L146)/2
 750 001e EA00     		.2byte	(.L149-.L146)/2
 751 0020 B900     		.2byte	(.L152-.L146)/2
 752 0022 CB00     		.2byte	(.L153-.L146)/2
 753 0024 D500     		.2byte	(.L154-.L146)/2
 754 0026 0C00     		.2byte	(.L155-.L146)/2
 755              		.p2align 1
 756              	.L155:
 757 0028 A1F10902 		sub	r2, r1, #9
 758 002c D0F88836 		ldr	r3, [r0, #1672]
 759 0030 172A     		cmp	r2, #23
 760 0032 00F2D182 		bhi	.L192
 761 0036 DFE812F0 		tbh	[pc, r2, lsl #1]
 762              	.L194:
 763 003a F401     		.2byte	(.L193-.L194)/2
 764 003c EC01     		.2byte	(.L195-.L194)/2
 765 003e CF02     		.2byte	(.L192-.L194)/2
 766 0040 CF02     		.2byte	(.L192-.L194)/2
 767 0042 CD00     		.2byte	(.L161-.L194)/2
 768 0044 CF02     		.2byte	(.L192-.L194)/2
 769 0046 CF02     		.2byte	(.L192-.L194)/2
 770 0048 CF02     		.2byte	(.L192-.L194)/2
 771 004a CF02     		.2byte	(.L192-.L194)/2
 772 004c CF02     		.2byte	(.L192-.L194)/2
 773 004e CF02     		.2byte	(.L192-.L194)/2
 774 0050 CF02     		.2byte	(.L192-.L194)/2
 775 0052 CF02     		.2byte	(.L192-.L194)/2
 776 0054 CF02     		.2byte	(.L192-.L194)/2
 777 0056 CF02     		.2byte	(.L192-.L194)/2
 778 0058 CF02     		.2byte	(.L192-.L194)/2
 779 005a CF02     		.2byte	(.L192-.L194)/2
 780 005c CF02     		.2byte	(.L192-.L194)/2
 781 005e CF02     		.2byte	(.L192-.L194)/2
 782 0060 CF02     		.2byte	(.L192-.L194)/2
 783 0062 CF02     		.2byte	(.L192-.L194)/2
 784 0064 CF02     		.2byte	(.L192-.L194)/2
 785 0066 CF02     		.2byte	(.L192-.L194)/2
 786 0068 F401     		.2byte	(.L193-.L194)/2
 787              		.p2align 1
 788              	.L145:
 789 006a A1F10902 		sub	r2, r1, #9
 790 006e D0F88836 		ldr	r3, [r0, #1672]
 791 0072 172A     		cmp	r2, #23
 792 0074 00F2A880 		bhi	.L212
 793 0078 DFE812F0 		tbh	[pc, r2, lsl #1]
 794              	.L159:
 795 007c AF01     		.2byte	(.L158-.L159)/2
 796 007e DD01     		.2byte	(.L160-.L159)/2
 797 0080 A600     		.2byte	(.L212-.L159)/2
 798 0082 A600     		.2byte	(.L212-.L159)/2
ARM GAS  /tmp/ccgDyFqF.s 			page 15


 799 0084 AC00     		.2byte	(.L161-.L159)/2
 800 0086 A600     		.2byte	(.L212-.L159)/2
 801 0088 A600     		.2byte	(.L212-.L159)/2
 802 008a A600     		.2byte	(.L212-.L159)/2
 803 008c A600     		.2byte	(.L212-.L159)/2
 804 008e A600     		.2byte	(.L212-.L159)/2
 805 0090 A600     		.2byte	(.L212-.L159)/2
 806 0092 A600     		.2byte	(.L212-.L159)/2
 807 0094 A600     		.2byte	(.L212-.L159)/2
 808 0096 A600     		.2byte	(.L212-.L159)/2
 809 0098 A600     		.2byte	(.L212-.L159)/2
 810 009a A600     		.2byte	(.L212-.L159)/2
 811 009c A600     		.2byte	(.L212-.L159)/2
 812 009e A600     		.2byte	(.L212-.L159)/2
 813 00a0 A600     		.2byte	(.L212-.L159)/2
 814 00a2 A600     		.2byte	(.L212-.L159)/2
 815 00a4 A600     		.2byte	(.L212-.L159)/2
 816 00a6 A600     		.2byte	(.L212-.L159)/2
 817 00a8 A600     		.2byte	(.L212-.L159)/2
 818 00aa AF01     		.2byte	(.L158-.L159)/2
 819              		.p2align 1
 820              	.L147:
 821 00ac A1F10902 		sub	r2, r1, #9
 822 00b0 D0F88836 		ldr	r3, [r0, #1672]
 823 00b4 362A     		cmp	r2, #54
 824 00b6 00F28780 		bhi	.L212
 825 00ba DFE812F0 		tbh	[pc, r2, lsl #1]
 826              	.L166:
 827 00be 2302     		.2byte	(.L165-.L166)/2
 828 00c0 F301     		.2byte	(.L167-.L166)/2
 829 00c2 8500     		.2byte	(.L212-.L166)/2
 830 00c4 8500     		.2byte	(.L212-.L166)/2
 831 00c6 8B00     		.2byte	(.L161-.L166)/2
 832 00c8 8500     		.2byte	(.L212-.L166)/2
 833 00ca 8500     		.2byte	(.L212-.L166)/2
 834 00cc 8500     		.2byte	(.L212-.L166)/2
 835 00ce 8500     		.2byte	(.L212-.L166)/2
 836 00d0 8500     		.2byte	(.L212-.L166)/2
 837 00d2 8500     		.2byte	(.L212-.L166)/2
 838 00d4 8500     		.2byte	(.L212-.L166)/2
 839 00d6 8500     		.2byte	(.L212-.L166)/2
 840 00d8 8500     		.2byte	(.L212-.L166)/2
 841 00da 8500     		.2byte	(.L212-.L166)/2
 842 00dc 8500     		.2byte	(.L212-.L166)/2
 843 00de 8500     		.2byte	(.L212-.L166)/2
 844 00e0 8500     		.2byte	(.L212-.L166)/2
 845 00e2 8500     		.2byte	(.L212-.L166)/2
 846 00e4 8500     		.2byte	(.L212-.L166)/2
 847 00e6 8500     		.2byte	(.L212-.L166)/2
 848 00e8 8500     		.2byte	(.L212-.L166)/2
 849 00ea 8500     		.2byte	(.L212-.L166)/2
 850 00ec 2302     		.2byte	(.L165-.L166)/2
 851 00ee 8500     		.2byte	(.L212-.L166)/2
 852 00f0 8500     		.2byte	(.L212-.L166)/2
 853 00f2 8500     		.2byte	(.L212-.L166)/2
 854 00f4 8500     		.2byte	(.L212-.L166)/2
 855 00f6 EF01     		.2byte	(.L168-.L166)/2
ARM GAS  /tmp/ccgDyFqF.s 			page 16


 856 00f8 8500     		.2byte	(.L212-.L166)/2
 857 00fa 8500     		.2byte	(.L212-.L166)/2
 858 00fc 8500     		.2byte	(.L212-.L166)/2
 859 00fe 8500     		.2byte	(.L212-.L166)/2
 860 0100 8500     		.2byte	(.L212-.L166)/2
 861 0102 8500     		.2byte	(.L212-.L166)/2
 862 0104 8500     		.2byte	(.L212-.L166)/2
 863 0106 8500     		.2byte	(.L212-.L166)/2
 864 0108 8500     		.2byte	(.L212-.L166)/2
 865 010a 8500     		.2byte	(.L212-.L166)/2
 866 010c 8500     		.2byte	(.L212-.L166)/2
 867 010e 8500     		.2byte	(.L212-.L166)/2
 868 0110 8500     		.2byte	(.L212-.L166)/2
 869 0112 8500     		.2byte	(.L212-.L166)/2
 870 0114 8500     		.2byte	(.L212-.L166)/2
 871 0116 8500     		.2byte	(.L212-.L166)/2
 872 0118 8500     		.2byte	(.L212-.L166)/2
 873 011a 8500     		.2byte	(.L212-.L166)/2
 874 011c 8500     		.2byte	(.L212-.L166)/2
 875 011e 8500     		.2byte	(.L212-.L166)/2
 876 0120 8500     		.2byte	(.L212-.L166)/2
 877 0122 8500     		.2byte	(.L212-.L166)/2
 878 0124 8500     		.2byte	(.L212-.L166)/2
 879 0126 8500     		.2byte	(.L212-.L166)/2
 880 0128 8500     		.2byte	(.L212-.L166)/2
 881 012a 0C02     		.2byte	(.L169-.L166)/2
 882              		.p2align 1
 883              	.L151:
 884 012c A1F10902 		sub	r2, r1, #9
 885 0130 D0F88836 		ldr	r3, [r0, #1672]
 886 0134 222A     		cmp	r2, #34
 887 0136 47D8     		bhi	.L212
 888 0138 DFE812F0 		tbh	[pc, r2, lsl #1]
 889              	.L177:
 890 013c 1B02     		.2byte	(.L176-.L177)/2
 891 013e 3702     		.2byte	(.L178-.L177)/2
 892 0140 4600     		.2byte	(.L212-.L177)/2
 893 0142 4600     		.2byte	(.L212-.L177)/2
 894 0144 4C00     		.2byte	(.L161-.L177)/2
 895 0146 4600     		.2byte	(.L212-.L177)/2
 896 0148 4600     		.2byte	(.L212-.L177)/2
 897 014a 4600     		.2byte	(.L212-.L177)/2
 898 014c 4600     		.2byte	(.L212-.L177)/2
 899 014e 4600     		.2byte	(.L212-.L177)/2
 900 0150 4600     		.2byte	(.L212-.L177)/2
 901 0152 4600     		.2byte	(.L212-.L177)/2
 902 0154 4600     		.2byte	(.L212-.L177)/2
 903 0156 4600     		.2byte	(.L212-.L177)/2
 904 0158 4600     		.2byte	(.L212-.L177)/2
 905 015a 4600     		.2byte	(.L212-.L177)/2
 906 015c 4600     		.2byte	(.L212-.L177)/2
 907 015e 4600     		.2byte	(.L212-.L177)/2
 908 0160 4600     		.2byte	(.L212-.L177)/2
 909 0162 4600     		.2byte	(.L212-.L177)/2
 910 0164 4600     		.2byte	(.L212-.L177)/2
 911 0166 4600     		.2byte	(.L212-.L177)/2
 912 0168 4600     		.2byte	(.L212-.L177)/2
ARM GAS  /tmp/ccgDyFqF.s 			page 17


 913 016a 1B02     		.2byte	(.L176-.L177)/2
 914 016c 4600     		.2byte	(.L212-.L177)/2
 915 016e 4600     		.2byte	(.L212-.L177)/2
 916 0170 4600     		.2byte	(.L212-.L177)/2
 917 0172 4600     		.2byte	(.L212-.L177)/2
 918 0174 3302     		.2byte	(.L179-.L177)/2
 919 0176 0502     		.2byte	(.L180-.L177)/2
 920 0178 4600     		.2byte	(.L212-.L177)/2
 921 017a 4600     		.2byte	(.L212-.L177)/2
 922 017c 4600     		.2byte	(.L212-.L177)/2
 923 017e 4600     		.2byte	(.L212-.L177)/2
 924 0180 FD01     		.2byte	(.L181-.L177)/2
 925              		.p2align 1
 926              	.L152:
 927 0182 0D29     		cmp	r1, #13
 928 0184 00F0D880 		beq	.L144
 929 0188 3A29     		cmp	r1, #58
 930 018a 00F06B81 		beq	.L187
 931 018e 0A29     		cmp	r1, #10
 932 0190 00F04982 		beq	.L214
 933              	.L210:
 934 0194 D0F88836 		ldr	r3, [r0, #1672]
 935 0198 C218     		adds	r2, r0, r3
 936 019a 0133     		adds	r3, r3, #1
 937 019c C0F88836 		str	r3, [r0, #1672]
 938 01a0 82F8D010 		strb	r1, [r2, #208]
 939 01a4 16E0     		b	.L161
 940              	.L153:
 941 01a6 2029     		cmp	r1, #32
 942 01a8 D0F88836 		ldr	r3, [r0, #1672]
 943 01ac 12D0     		beq	.L161
 944 01ae 0929     		cmp	r1, #9
 945 01b0 10D0     		beq	.L161
 946 01b2 0A22     		movs	r2, #10
 947 01b4 C0F8CC20 		str	r2, [r0, #204]
 948 01b8 01E0     		b	.L156
 949              	.L154:
 950 01ba D0F88836 		ldr	r3, [r0, #1672]
 951              	.L156:
 952 01be 0A29     		cmp	r1, #10
 953 01c0 00F02682 		beq	.L215
 954 01c4 0D29     		cmp	r1, #13
 955 01c6 05D0     		beq	.L161
 956              	.L212:
 957 01c8 C218     		adds	r2, r0, r3
 958 01ca 0133     		adds	r3, r3, #1
 959 01cc C0F88836 		str	r3, [r0, #1672]
 960 01d0 82F8D010 		strb	r1, [r2, #208]
 961              	.L161:
 962 01d4 40F2B752 		movw	r2, #1463
 963 01d8 9342     		cmp	r3, r2
 964 01da 00F0A580 		beq	.L196
 965 01de 0022     		movs	r2, #0
 966              	.L163:
 967 01e0 1046     		mov	r0, r2
 968 01e2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 969              	.L149:
ARM GAS  /tmp/ccgDyFqF.s 			page 18


 970 01e4 A1F13004 		sub	r4, r1, #48
 971 01e8 E4B2     		uxtb	r4, r4
 972 01ea 092C     		cmp	r4, #9
 973 01ec 40F2B080 		bls	.L216
 974 01f0 A1F14103 		sub	r3, r1, #65
 975 01f4 052B     		cmp	r3, #5
 976 01f6 00F20F82 		bhi	.L184
 977 01fa D0F88836 		ldr	r3, [r0, #1672]
 978 01fe 90F88C46 		ldrb	r4, [r0, #1676]	@ zero_extendqisi2
 979 0202 C518     		adds	r5, r0, r3
 980 0204 3739     		subs	r1, r1, #55
 981 0206 023A     		subs	r2, r2, #2
 982 0208 2143     		orrs	r1, r1, r4
 983 020a 0133     		adds	r3, r3, #1
 984 020c C0F88836 		str	r3, [r0, #1672]
 985 0210 85F8D010 		strb	r1, [r5, #208]
 986 0214 C0F8CC20 		str	r2, [r0, #204]
 987 0218 DCE7     		b	.L161
 988              	.L148:
 989 021a A1F13003 		sub	r3, r1, #48
 990 021e DBB2     		uxtb	r3, r3
 991 0220 092B     		cmp	r3, #9
 992 0222 40F28C80 		bls	.L217
 993 0226 A1F14103 		sub	r3, r1, #65
 994 022a 052B     		cmp	r3, #5
 995 022c 00F2F481 		bhi	.L184
 996 0230 3739     		subs	r1, r1, #55
 997 0232 0901     		lsls	r1, r1, #4
 998 0234 0132     		adds	r2, r2, #1
 999 0236 80F88C16 		strb	r1, [r0, #1676]
 1000 023a C0F8CC20 		str	r2, [r0, #204]
 1001 023e D0F88836 		ldr	r3, [r0, #1672]
 1002 0242 C7E7     		b	.L161
 1003              	.L150:
 1004 0244 A1F10903 		sub	r3, r1, #9
 1005 0248 342B     		cmp	r3, #52
 1006 024a A3D8     		bhi	.L210
 1007 024c 01A2     		adr	r2, .L172
 1008 024e 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 1009 0252 00BF     		.p2align 2
 1010              	.L172:
 1011 0254 7D030000 		.word	.L171+1
 1012 0258 7D030000 		.word	.L171+1
 1013 025c 95010000 		.word	.L210+1
 1014 0260 95010000 		.word	.L210+1
 1015 0264 7D030000 		.word	.L171+1
 1016 0268 95010000 		.word	.L210+1
 1017 026c 95010000 		.word	.L210+1
 1018 0270 95010000 		.word	.L210+1
 1019 0274 95010000 		.word	.L210+1
 1020 0278 95010000 		.word	.L210+1
 1021 027c 95010000 		.word	.L210+1
 1022 0280 95010000 		.word	.L210+1
 1023 0284 95010000 		.word	.L210+1
 1024 0288 95010000 		.word	.L210+1
 1025 028c 95010000 		.word	.L210+1
 1026 0290 95010000 		.word	.L210+1
ARM GAS  /tmp/ccgDyFqF.s 			page 19


 1027 0294 95010000 		.word	.L210+1
 1028 0298 95010000 		.word	.L210+1
 1029 029c 95010000 		.word	.L210+1
 1030 02a0 95010000 		.word	.L210+1
 1031 02a4 95010000 		.word	.L210+1
 1032 02a8 95010000 		.word	.L210+1
 1033 02ac 95010000 		.word	.L210+1
 1034 02b0 7D030000 		.word	.L171+1
 1035 02b4 95010000 		.word	.L210+1
 1036 02b8 95010000 		.word	.L210+1
 1037 02bc 95010000 		.word	.L210+1
 1038 02c0 95010000 		.word	.L210+1
 1039 02c4 6F030000 		.word	.L173+1
 1040 02c8 6F030000 		.word	.L173+1
 1041 02cc 95010000 		.word	.L210+1
 1042 02d0 95010000 		.word	.L210+1
 1043 02d4 95010000 		.word	.L210+1
 1044 02d8 95010000 		.word	.L210+1
 1045 02dc 95010000 		.word	.L210+1
 1046 02e0 95010000 		.word	.L210+1
 1047 02e4 95010000 		.word	.L210+1
 1048 02e8 95010000 		.word	.L210+1
 1049 02ec 95010000 		.word	.L210+1
 1050 02f0 95010000 		.word	.L210+1
 1051 02f4 95010000 		.word	.L210+1
 1052 02f8 95010000 		.word	.L210+1
 1053 02fc 95010000 		.word	.L210+1
 1054 0300 95010000 		.word	.L210+1
 1055 0304 95010000 		.word	.L210+1
 1056 0308 95010000 		.word	.L210+1
 1057 030c 95010000 		.word	.L210+1
 1058 0310 95010000 		.word	.L210+1
 1059 0314 95010000 		.word	.L210+1
 1060 0318 95010000 		.word	.L210+1
 1061 031c 95010000 		.word	.L210+1
 1062 0320 95010000 		.word	.L210+1
 1063 0324 A9030000 		.word	.L174+1
 1064              		.p2align 1
 1065              	.L196:
 1066 0328 4FF4FA72 		mov	r2, #500
 1067 032c D249     		ldr	r1, .L219
 1068 032e FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1069 0332 0122     		movs	r2, #1
 1070 0334 1046     		mov	r0, r2
 1071 0336 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1072              	.L144:
 1073 0338 D0F88836 		ldr	r3, [r0, #1672]
 1074 033c 4AE7     		b	.L161
 1075              	.L217:
 1076 033e 1B01     		lsls	r3, r3, #4
 1077 0340 0132     		adds	r2, r2, #1
 1078 0342 80F88C36 		strb	r3, [r0, #1676]
 1079 0346 C0F8CC20 		str	r2, [r0, #204]
 1080 034a D0F88836 		ldr	r3, [r0, #1672]
 1081 034e 41E7     		b	.L161
 1082              	.L216:
 1083 0350 D0F88836 		ldr	r3, [r0, #1672]
ARM GAS  /tmp/ccgDyFqF.s 			page 20


 1084 0354 90F88C16 		ldrb	r1, [r0, #1676]	@ zero_extendqisi2
 1085 0358 C518     		adds	r5, r0, r3
 1086 035a 023A     		subs	r2, r2, #2
 1087 035c 0133     		adds	r3, r3, #1
 1088 035e 0C43     		orrs	r4, r4, r1
 1089 0360 C0F88836 		str	r3, [r0, #1672]
 1090 0364 85F8D040 		strb	r4, [r5, #208]
 1091 0368 C0F8CC20 		str	r2, [r0, #204]
 1092 036c 32E7     		b	.L161
 1093              	.L173:
 1094 036e 4FF4FA72 		mov	r2, #500
 1095 0372 C249     		ldr	r1, .L219+4
 1096 0374 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1097 0378 0122     		movs	r2, #1
 1098 037a 31E7     		b	.L163
 1099              	.L171:
 1100 037c D0F8C427 		ldr	r2, [r0, #1988]
 1101 0380 002A     		cmp	r2, #0
 1102 0382 F4D1     		bne	.L173
 1103 0384 D0F88836 		ldr	r3, [r0, #1672]
 1104 0388 D0F8A046 		ldr	r4, [r0, #1696]
 1105 038c 00F1D001 		add	r1, r0, #208
 1106 0390 1944     		add	r1, r1, r3
 1107 0392 8C42     		cmp	r4, r1
 1108 0394 EBD1     		bne	.L173
 1109 0396 D0F8C017 		ldr	r1, [r0, #1984]
 1110 039a 01F5D271 		add	r1, r1, #420
 1111 039e 40F82140 		str	r4, [r0, r1, lsl #2]
 1112 03a2 C0F8CC20 		str	r2, [r0, #204]
 1113 03a6 15E7     		b	.L161
 1114              	.L174:
 1115 03a8 D0F88836 		ldr	r3, [r0, #1672]
 1116 03ac C218     		adds	r2, r0, r3
 1117 03ae 0021     		movs	r1, #0
 1118 03b0 0133     		adds	r3, r3, #1
 1119 03b2 C0F88836 		str	r3, [r0, #1672]
 1120 03b6 82F8D010 		strb	r1, [r2, #208]
 1121 03ba D0F8C417 		ldr	r1, [r0, #1988]
 1122 03be 00F1D002 		add	r2, r0, #208
 1123 03c2 00EBC105 		add	r5, r0, r1, lsl #3
 1124 03c6 1A44     		add	r2, r2, r3
 1125 03c8 0131     		adds	r1, r1, #1
 1126 03ca 0524     		movs	r4, #5
 1127 03cc C5F8A426 		str	r2, [r5, #1700]
 1128 03d0 C0F8C417 		str	r1, [r0, #1988]
 1129 03d4 C0F8CC40 		str	r4, [r0, #204]
 1130 03d8 FCE6     		b	.L161
 1131              	.L158:
 1132 03da C218     		adds	r2, r0, r3
 1133 03dc 0021     		movs	r1, #0
 1134 03de 0133     		adds	r3, r3, #1
 1135 03e0 C0F88836 		str	r3, [r0, #1672]
 1136 03e4 82F8D010 		strb	r1, [r2, #208]
 1137 03e8 D0F8C027 		ldr	r2, [r0, #1984]
 1138 03ec 511C     		adds	r1, r2, #1
 1139 03ee 0329     		cmp	r1, #3
 1140 03f0 C0F8C017 		str	r1, [r0, #1984]
ARM GAS  /tmp/ccgDyFqF.s 			page 21


 1141 03f4 00F22B81 		bhi	.L162
 1142 03f8 02F2A512 		addw	r2, r2, #421
 1143 03fc 00F1D004 		add	r4, r0, #208
 1144 0400 1C44     		add	r4, r4, r3
 1145 0402 0129     		cmp	r1, #1
 1146 0404 40F82240 		str	r4, [r0, r2, lsl #2]
 1147 0408 7FF4E4AE 		bne	.L161
 1148 040c C0F8CC10 		str	r1, [r0, #204]
 1149 0410 E0E6     		b	.L161
 1150              	.L195:
 1151 0412 0344     		add	r3, r3, r0
 1152 0414 0022     		movs	r2, #0
 1153 0416 83F8D020 		strb	r2, [r3, #208]
 1154              	.L213:
 1155 041a FFF7FEFF 		bl	_ZN13HttpResponder14ProcessMessageEv
 1156 041e 0122     		movs	r2, #1
 1157 0420 DEE6     		b	.L163
 1158              	.L193:
 1159 0422 C418     		adds	r4, r0, r3
 1160 0424 0A22     		movs	r2, #10
 1161 0426 0133     		adds	r3, r3, #1
 1162 0428 C0F88836 		str	r3, [r0, #1672]
 1163 042c 84F8D010 		strb	r1, [r4, #208]
 1164 0430 C0F8CC20 		str	r2, [r0, #204]
 1165 0434 CEE6     		b	.L161
 1166              	.L160:
 1167 0436 C118     		adds	r1, r0, r3
 1168 0438 0022     		movs	r2, #0
 1169 043a 0133     		adds	r3, r3, #1
 1170 043c C0F88836 		str	r3, [r0, #1672]
 1171 0440 81F8D020 		strb	r2, [r1, #208]
 1172 0444 D0F8C017 		ldr	r1, [r0, #1984]
 1173 0448 C0F8C827 		str	r2, [r0, #1992]
 1174 044c 00F1D002 		add	r2, r0, #208
 1175 0450 0131     		adds	r1, r1, #1
 1176 0452 1A44     		add	r2, r2, r3
 1177 0454 0824     		movs	r4, #8
 1178 0456 C0F8C017 		str	r1, [r0, #1984]
 1179 045a C0F8D026 		str	r2, [r0, #1744]
 1180 045e C0F8CC40 		str	r4, [r0, #204]
 1181 0462 B7E6     		b	.L161
 1182              	.L187:
 1183 0464 D0F8C827 		ldr	r2, [r0, #1992]
 1184 0468 1D2A     		cmp	r2, #29
 1185 046a 00F0F780 		beq	.L218
 1186 046e D0F88846 		ldr	r4, [r0, #1672]
 1187 0472 631C     		adds	r3, r4, #1
 1188 0474 0444     		add	r4, r4, r0
 1189 0476 00EBC205 		add	r5, r0, r2, lsl #3
 1190 047a 00F1D001 		add	r1, r0, #208
 1191 047e 0026     		movs	r6, #0
 1192 0480 C0F88836 		str	r3, [r0, #1672]
 1193 0484 1944     		add	r1, r1, r3
 1194 0486 84F8D060 		strb	r6, [r4, #208]
 1195 048a 0132     		adds	r2, r2, #1
 1196 048c 0924     		movs	r4, #9
 1197 048e C5F8D416 		str	r1, [r5, #1748]
ARM GAS  /tmp/ccgDyFqF.s 			page 22


 1198 0492 C0F8C827 		str	r2, [r0, #1992]
 1199 0496 C0F8CC40 		str	r4, [r0, #204]
 1200 049a 9BE6     		b	.L161
 1201              	.L168:
 1202 049c 0222     		movs	r2, #2
 1203 049e C0F8CC20 		str	r2, [r0, #204]
 1204 04a2 97E6     		b	.L161
 1205              	.L167:
 1206 04a4 C218     		adds	r2, r0, r3
 1207 04a6 0024     		movs	r4, #0
 1208 04a8 0133     		adds	r3, r3, #1
 1209 04aa C0F88836 		str	r3, [r0, #1672]
 1210 04ae 82F8D040 		strb	r4, [r2, #208]
 1211 04b2 D0F8C017 		ldr	r1, [r0, #1984]
 1212 04b6 C0F8C447 		str	r4, [r0, #1988]
 1213 04ba 00F1D002 		add	r2, r0, #208
 1214 04be 0131     		adds	r1, r1, #1
 1215 04c0 1A44     		add	r2, r2, r3
 1216 04c2 0825     		movs	r5, #8
 1217 04c4 C0F8C847 		str	r4, [r0, #1992]
 1218 04c8 C0F8C017 		str	r1, [r0, #1984]
 1219 04cc C0F8D026 		str	r2, [r0, #1744]
 1220 04d0 C0F8CC50 		str	r5, [r0, #204]
 1221 04d4 7EE6     		b	.L161
 1222              	.L169:
 1223 04d6 C118     		adds	r1, r0, r3
 1224 04d8 0022     		movs	r2, #0
 1225 04da 0133     		adds	r3, r3, #1
 1226 04dc C0F88836 		str	r3, [r0, #1672]
 1227 04e0 81F8D020 		strb	r2, [r1, #208]
 1228 04e4 D0F8C017 		ldr	r1, [r0, #1984]
 1229 04e8 C0F8C427 		str	r2, [r0, #1988]
 1230 04ec 00F1D002 		add	r2, r0, #208
 1231 04f0 0131     		adds	r1, r1, #1
 1232 04f2 1A44     		add	r2, r2, r3
 1233 04f4 0424     		movs	r4, #4
 1234 04f6 C0F8C017 		str	r1, [r0, #1984]
 1235 04fa C0F8A026 		str	r2, [r0, #1696]
 1236 04fe C0F8CC40 		str	r4, [r0, #204]
 1237 0502 67E6     		b	.L161
 1238              	.L165:
 1239 0504 C218     		adds	r2, r0, r3
 1240 0506 0024     		movs	r4, #0
 1241 0508 0133     		adds	r3, r3, #1
 1242 050a C0F88836 		str	r3, [r0, #1672]
 1243 050e 82F8D040 		strb	r4, [r2, #208]
 1244 0512 D0F8C027 		ldr	r2, [r0, #1984]
 1245 0516 511C     		adds	r1, r2, #1
 1246 0518 0329     		cmp	r1, #3
 1247 051a C0F8C017 		str	r1, [r0, #1984]
 1248 051e 00F29680 		bhi	.L162
 1249 0522 02F2A512 		addw	r2, r2, #421
 1250 0526 00F1D001 		add	r1, r0, #208
 1251 052a 1944     		add	r1, r1, r3
 1252 052c 40F82210 		str	r1, [r0, r2, lsl #2]
 1253 0530 C0F8CC40 		str	r4, [r0, #204]
 1254 0534 4EE6     		b	.L161
ARM GAS  /tmp/ccgDyFqF.s 			page 23


 1255              	.L181:
 1256 0536 C218     		adds	r2, r0, r3
 1257 0538 2021     		movs	r1, #32
 1258 053a 0133     		adds	r3, r3, #1
 1259 053c C0F88836 		str	r3, [r0, #1672]
 1260 0540 82F8D010 		strb	r1, [r2, #208]
 1261 0544 46E6     		b	.L161
 1262              	.L180:
 1263 0546 C218     		adds	r2, r0, r3
 1264 0548 0021     		movs	r1, #0
 1265 054a 0133     		adds	r3, r3, #1
 1266 054c C0F88836 		str	r3, [r0, #1672]
 1267 0550 82F8D010 		strb	r1, [r2, #208]
 1268 0554 D0F8C417 		ldr	r1, [r0, #1988]
 1269 0558 00F1D002 		add	r2, r0, #208
 1270 055c 01F1D404 		add	r4, r1, #212
 1271 0560 1A44     		add	r2, r2, r3
 1272 0562 0429     		cmp	r1, #4
 1273 0564 40F83420 		str	r2, [r0, r4, lsl #3]
 1274 0568 7FD8     		bhi	.L182
 1275 056a 0422     		movs	r2, #4
 1276 056c C0F8CC20 		str	r2, [r0, #204]
 1277 0570 30E6     		b	.L161
 1278              	.L176:
 1279 0572 C218     		adds	r2, r0, r3
 1280 0574 0024     		movs	r4, #0
 1281 0576 0133     		adds	r3, r3, #1
 1282 0578 C0F88836 		str	r3, [r0, #1672]
 1283 057c 82F8D040 		strb	r4, [r2, #208]
 1284 0580 D0F8C417 		ldr	r1, [r0, #1988]
 1285 0584 00F1D002 		add	r2, r0, #208
 1286 0588 D431     		adds	r1, r1, #212
 1287 058a 1A44     		add	r2, r2, r3
 1288 058c 40F83120 		str	r2, [r0, r1, lsl #3]
 1289 0590 D0F8C017 		ldr	r1, [r0, #1984]
 1290 0594 01F5D271 		add	r1, r1, #420
 1291 0598 40F82120 		str	r2, [r0, r1, lsl #2]
 1292 059c C0F8CC40 		str	r4, [r0, #204]
 1293 05a0 18E6     		b	.L161
 1294              	.L179:
 1295 05a2 0622     		movs	r2, #6
 1296 05a4 C0F8CC20 		str	r2, [r0, #204]
 1297 05a8 14E6     		b	.L161
 1298              	.L178:
 1299 05aa C218     		adds	r2, r0, r3
 1300 05ac 0024     		movs	r4, #0
 1301 05ae 0133     		adds	r3, r3, #1
 1302 05b0 C0F88836 		str	r3, [r0, #1672]
 1303 05b4 82F8D040 		strb	r4, [r2, #208]
 1304 05b8 D0F8C417 		ldr	r1, [r0, #1988]
 1305 05bc 00F1D002 		add	r2, r0, #208
 1306 05c0 D431     		adds	r1, r1, #212
 1307 05c2 1A44     		add	r2, r2, r3
 1308 05c4 0825     		movs	r5, #8
 1309 05c6 40F83120 		str	r2, [r0, r1, lsl #3]
 1310 05ca C0F8C847 		str	r4, [r0, #1992]
 1311 05ce C0F8D026 		str	r2, [r0, #1744]
ARM GAS  /tmp/ccgDyFqF.s 			page 24


 1312 05d2 C0F8CC50 		str	r5, [r0, #204]
 1313 05d6 FDE5     		b	.L161
 1314              	.L192:
 1315 05d8 DA1C     		adds	r2, r3, #3
 1316 05da B2F5B76F 		cmp	r2, #1464
 1317 05de BFF4A3AE 		bcs	.L196
 1318 05e2 C418     		adds	r4, r0, r3
 1319 05e4 0022     		movs	r2, #0
 1320 05e6 84F8D020 		strb	r2, [r4, #208]
 1321 05ea D0F8C847 		ldr	r4, [r0, #1992]
 1322 05ee 5E1C     		adds	r6, r3, #1
 1323 05f0 8719     		adds	r7, r0, r6
 1324 05f2 DA34     		adds	r4, r4, #218
 1325 05f4 00F1D005 		add	r5, r0, #208
 1326 05f8 3544     		add	r5, r5, r6
 1327 05fa 0233     		adds	r3, r3, #2
 1328 05fc 0826     		movs	r6, #8
 1329 05fe 40F83450 		str	r5, [r0, r4, lsl #3]
 1330 0602 C0F88836 		str	r3, [r0, #1672]
 1331 0606 87F8D010 		strb	r1, [r7, #208]
 1332 060a C0F8CC60 		str	r6, [r0, #204]
 1333 060e E7E5     		b	.L163
 1334              	.L215:
 1335 0610 0B22     		movs	r2, #11
 1336 0612 C0F8CC20 		str	r2, [r0, #204]
 1337 0616 DDE5     		b	.L161
 1338              	.L184:
 1339 0618 4FF4FA72 		mov	r2, #500
 1340 061c 1849     		ldr	r1, .L219+8
 1341 061e FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1342 0622 0122     		movs	r2, #1
 1343 0624 DCE5     		b	.L163
 1344              	.L214:
 1345 0626 D0F8C827 		ldr	r2, [r0, #1992]
 1346 062a D0F88816 		ldr	r1, [r0, #1672]
 1347 062e DA32     		adds	r2, r2, #218
 1348 0630 00F1D003 		add	r3, r0, #208
 1349 0634 50F83220 		ldr	r2, [r0, r2, lsl #3]
 1350 0638 0B44     		add	r3, r3, r1
 1351 063a 9A42     		cmp	r2, r3
 1352 063c 3FF4EDAE 		beq	.L213
 1353 0640 4FF4FA72 		mov	r2, #500
 1354 0644 0F49     		ldr	r1, .L219+12
 1355 0646 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1356 064a 0122     		movs	r2, #1
 1357 064c C8E5     		b	.L163
 1358              	.L162:
 1359 064e 4FF4FA72 		mov	r2, #500
 1360 0652 0D49     		ldr	r1, .L219+16
 1361 0654 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1362 0658 0122     		movs	r2, #1
 1363 065a C1E5     		b	.L163
 1364              	.L218:
 1365 065c 4FF4FA72 		mov	r2, #500
 1366 0660 0A49     		ldr	r1, .L219+20
 1367 0662 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1368 0666 0122     		movs	r2, #1
ARM GAS  /tmp/ccgDyFqF.s 			page 25


 1369 0668 BAE5     		b	.L163
 1370              	.L182:
 1371 066a 4FF4FA72 		mov	r2, #500
 1372 066e 0849     		ldr	r1, .L219+24
 1373 0670 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1374 0674 0122     		movs	r2, #1
 1375 0676 B3E5     		b	.L163
 1376              	.L220:
 1377              		.align	2
 1378              	.L219:
 1379 0678 88000000 		.word	.LC24
 1380 067c 18000000 		.word	.LC19
 1381 0680 48000000 		.word	.LC21
 1382 0684 54000000 		.word	.LC22
 1383 0688 00000000 		.word	.LC18
 1384 068c 68000000 		.word	.LC23
 1385 0690 2C000000 		.word	.LC20
 1386              		.size	_ZN13HttpResponder14CharFromClientEc, .-_ZN13HttpResponder14CharFromClientEc
 1387              		.section	.text._ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb,"ax",%progbits
 1388              		.align	1
 1389              		.p2align 2,,3
 1390              		.global	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb
 1391              		.syntax unified
 1392              		.thumb
 1393              		.thumb_func
 1394              		.fpu fpv4-sp-d16
 1395              		.type	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb, %function
 1396              	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb:
 1397              		@ args = 0, pretend = 0, frame = 48
 1398              		@ frame_needed = 0, uses_anonymous_args = 0
 1399 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1400 0004 0024     		movs	r4, #0
 1401 0006 8DB0     		sub	sp, sp, #52
 1402 0008 8846     		mov	r8, r1
 1403 000a 0546     		mov	r5, r0
 1404 000c 1C70     		strb	r4, [r3]
 1405 000e 0846     		mov	r0, r1
 1406 0010 C049     		ldr	r1, .L429
 1407 0012 9146     		mov	r9, r2
 1408 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1409 0018 0028     		cmp	r0, #0
 1410 001a 00F0A880 		beq	.L222
 1411 001e D5F8C437 		ldr	r3, [r5, #1988]
 1412 0022 002B     		cmp	r3, #0
 1413 0024 00F0A380 		beq	.L222
 1414 0028 BB4F     		ldr	r7, .L429+4
 1415 002a AA46     		mov	r10, r5
 1416 002c AB46     		mov	fp, r5
 1417 002e 05E0     		b	.L225
 1418              	.L223:
 1419 0030 D5F8C437 		ldr	r3, [r5, #1988]
 1420 0034 0134     		adds	r4, r4, #1
 1421 0036 A342     		cmp	r3, r4
 1422 0038 40F29980 		bls	.L222
 1423              	.L225:
 1424 003c DBF8A006 		ldr	r0, [fp, #1696]
 1425 0040 3946     		mov	r1, r7
ARM GAS  /tmp/ccgDyFqF.s 			page 26


 1426 0042 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1427 0046 0BF1080B 		add	fp, fp, #8
 1428 004a 0646     		mov	r6, r0
 1429 004c 0028     		cmp	r0, #0
 1430 004e EFD0     		beq	.L223
 1431 0050 05EBC404 		add	r4, r5, r4, lsl #3
 1432 0054 D4F8A436 		ldr	r3, [r4, #1700]
 1433 0058 002B     		cmp	r3, #0
 1434 005a 00F08880 		beq	.L222
 1435 005e 2846     		mov	r0, r5
 1436 0060 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 1437 0064 0028     		cmp	r0, #0
 1438 0066 40F01481 		bne	.L412
 1439 006a D5F8C437 		ldr	r3, [r5, #1988]
 1440 006e 002B     		cmp	r3, #0
 1441 0070 00F0ED80 		beq	.L230
 1442 0074 DFF8A082 		ldr	r8, .L429+4
 1443 0078 0446     		mov	r4, r0
 1444 007a 2F46     		mov	r7, r5
 1445 007c 05E0     		b	.L233
 1446              	.L231:
 1447 007e D5F8C437 		ldr	r3, [r5, #1988]
 1448 0082 0134     		adds	r4, r4, #1
 1449 0084 A342     		cmp	r3, r4
 1450 0086 40F2E280 		bls	.L230
 1451              	.L233:
 1452 008a D7F8A006 		ldr	r0, [r7, #1696]
 1453 008e 4146     		mov	r1, r8
 1454 0090 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1455 0094 0837     		adds	r7, r7, #8
 1456 0096 0028     		cmp	r0, #0
 1457 0098 F1D0     		beq	.L231
 1458 009a 05EBC404 		add	r4, r5, r4, lsl #3
 1459 009e DFF89082 		ldr	r8, .L429+28
 1460 00a2 D4F8A416 		ldr	r1, [r4, #1700]
 1461 00a6 4046     		mov	r0, r8
 1462 00a8 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 1463 00ac 0446     		mov	r4, r0
 1464 00ae 0028     		cmp	r0, #0
 1465 00b0 00F0D780 		beq	.L413
 1466              	.L234:
 1467 00b4 2846     		mov	r0, r5
 1468 00b6 FFF7FEFF 		bl	_ZN13HttpResponder12AuthenticateEv
 1469 00ba 0028     		cmp	r0, #0
 1470 00bc 00F07881 		beq	.L414
 1471              	.L226:
 1472 00c0 D8F80000 		ldr	r0, [r8]
 1473 00c4 D9F80040 		ldr	r4, [r9]
 1474 00c8 FFF7FEFF 		bl	_ZNK8Platform14GetBoardStringEv
 1475 00cc 4FF4FA52 		mov	r2, #8000
 1476 00d0 0346     		mov	r3, r0
 1477 00d2 9249     		ldr	r1, .L429+8
 1478 00d4 2046     		mov	r0, r4
 1479 00d6 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1480 00da 2846     		mov	r0, r5
 1481 00dc D8F80040 		ldr	r4, [r8]
 1482 00e0 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
ARM GAS  /tmp/ccgDyFqF.s 			page 27


 1483 00e4 0146     		mov	r1, r0
 1484 00e6 03A8     		add	r0, sp, #12
 1485 00e8 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1486 00ec 03AB     		add	r3, sp, #12
 1487 00ee 2046     		mov	r0, r4
 1488 00f0 8B4A     		ldr	r2, .L429+12
 1489 00f2 8021     		movs	r1, #128
 1490 00f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1491 00f8 D5F8C437 		ldr	r3, [r5, #1988]
 1492 00fc 002B     		cmp	r3, #0
 1493 00fe 00F08380 		beq	.L333
 1494 0102 DFF84892 		ldr	r9, .L429+56
 1495 0106 0024     		movs	r4, #0
 1496 0108 04E0     		b	.L236
 1497              	.L237:
 1498 010a D5F8C437 		ldr	r3, [r5, #1988]
 1499 010e 0134     		adds	r4, r4, #1
 1500 0110 A342     		cmp	r3, r4
 1501 0112 79D9     		bls	.L333
 1502              	.L236:
 1503 0114 DAF8A006 		ldr	r0, [r10, #1696]
 1504 0118 4946     		mov	r1, r9
 1505 011a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1506 011e 0AF1080A 		add	r10, r10, #8
 1507 0122 0746     		mov	r7, r0
 1508 0124 0028     		cmp	r0, #0
 1509 0126 F0D0     		beq	.L237
 1510 0128 05EBC405 		add	r5, r5, r4, lsl #3
 1511 012c D5F8A446 		ldr	r4, [r5, #1700]
 1512 0130 002C     		cmp	r4, #0
 1513 0132 69D0     		beq	.L333
 1514 0134 D8F80000 		ldr	r0, [r8]
 1515 0138 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 1516 013c 0028     		cmp	r0, #0
 1517 013e 63D1     		bne	.L333
 1518 0140 0146     		mov	r1, r0
 1519 0142 2422     		movs	r2, #36
 1520 0144 03A8     		add	r0, sp, #12
 1521 0146 FFF7FEFF 		bl	memset
 1522 014a 03AA     		add	r2, sp, #12
 1523 014c 2046     		mov	r0, r4
 1524 014e 7549     		ldr	r1, .L429+16
 1525 0150 FFF7FEFF 		bl	strptime
 1526 0154 48B1     		cbz	r0, .L240
 1527 0156 03A8     		add	r0, sp, #12
 1528 0158 D8F80040 		ldr	r4, [r8]
 1529 015c FFF7FEFF 		bl	mktime
 1530 0160 0246     		mov	r2, r0
 1531 0162 0B46     		mov	r3, r1
 1532 0164 2046     		mov	r0, r4
 1533 0166 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEx
 1534              	.L240:
 1535 016a 3E46     		mov	r6, r7
 1536 016c 4CE0     		b	.L333
 1537              	.L222:
 1538 016e 2846     		mov	r0, r5
 1539 0170 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
ARM GAS  /tmp/ccgDyFqF.s 			page 28


 1540 0174 0646     		mov	r6, r0
 1541 0176 0028     		cmp	r0, #0
 1542 0178 40D0     		beq	.L415
 1543 017a 6B49     		ldr	r1, .L429+20
 1544 017c 4046     		mov	r0, r8
 1545 017e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1546 0182 0646     		mov	r6, r0
 1547 0184 0028     		cmp	r0, #0
 1548 0186 43D1     		bne	.L416
 1549 0188 6849     		ldr	r1, .L429+24
 1550 018a 4046     		mov	r0, r8
 1551 018c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1552 0190 8246     		mov	r10, r0
 1553 0192 0028     		cmp	r0, #0
 1554 0194 00F08D80 		beq	.L242
 1555 0198 D5F8C437 		ldr	r3, [r5, #1988]
 1556 019c 002B     		cmp	r3, #0
 1557 019e 7BD0     		beq	.L243
 1558 01a0 DFF8AC81 		ldr	r8, .L429+60
 1559 01a4 3446     		mov	r4, r6
 1560 01a6 2F46     		mov	r7, r5
 1561 01a8 04E0     		b	.L246
 1562              	.L244:
 1563 01aa D5F8C437 		ldr	r3, [r5, #1988]
 1564 01ae 0134     		adds	r4, r4, #1
 1565 01b0 A342     		cmp	r3, r4
 1566 01b2 71D9     		bls	.L243
 1567              	.L246:
 1568 01b4 D7F8A006 		ldr	r0, [r7, #1696]
 1569 01b8 4146     		mov	r1, r8
 1570 01ba FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1571 01be 0837     		adds	r7, r7, #8
 1572 01c0 0646     		mov	r6, r0
 1573 01c2 0028     		cmp	r0, #0
 1574 01c4 F1D0     		beq	.L244
 1575 01c6 05EBC404 		add	r4, r5, r4, lsl #3
 1576 01ca D4F8A406 		ldr	r0, [r4, #1700]
 1577 01ce 0028     		cmp	r0, #0
 1578 01d0 62D0     		beq	.L243
 1579 01d2 0A22     		movs	r2, #10
 1580 01d4 0021     		movs	r1, #0
 1581 01d6 FFF7FEFF 		bl	strtol
 1582 01da 431E     		subs	r3, r0, #1
 1583 01dc 032B     		cmp	r3, #3
 1584 01de 0446     		mov	r4, r0
 1585 01e0 28BF     		it	cs
 1586 01e2 0124     		movcs	r4, #1
 1587 01e4 D9F80000 		ldr	r0, [r9]
 1588 01e8 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1589 01ec E1B2     		uxtb	r1, r4
 1590 01ee 0022     		movs	r2, #0
 1591 01f0 4F48     		ldr	r0, .L429+28
 1592 01f2 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 1593 01f6 C9F80000 		str	r0, [r9]
 1594 01fa 05E0     		b	.L333
 1595              	.L415:
 1596 01fc 2846     		mov	r0, r5
ARM GAS  /tmp/ccgDyFqF.s 			page 29


 1597 01fe 40F29112 		movw	r2, #401
 1598 0202 4C49     		ldr	r1, .L429+32
 1599 0204 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1600              	.L333:
 1601 0208 3046     		mov	r0, r6
 1602 020a 0DB0     		add	sp, sp, #52
 1603              		@ sp needed
 1604 020c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1605              	.L416:
 1606 0210 2846     		mov	r0, r5
 1607 0212 D9F80040 		ldr	r4, [r9]
 1608 0216 FFF7FEFF 		bl	_ZN13HttpResponder20RemoveAuthenticationEv
 1609 021a 80F00102 		eor	r2, r0, #1
 1610 021e D2B2     		uxtb	r2, r2
 1611 0220 4549     		ldr	r1, .L429+36
 1612 0222 2046     		mov	r0, r4
 1613 0224 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1614 0228 414B     		ldr	r3, .L429+28
 1615 022a 2846     		mov	r0, r5
 1616 022c 1C68     		ldr	r4, [r3]
 1617 022e FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1618 0232 0146     		mov	r1, r0
 1619 0234 03A8     		add	r0, sp, #12
 1620 0236 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1621 023a 2046     		mov	r0, r4
 1622 023c 03AB     		add	r3, sp, #12
 1623 023e 3F4A     		ldr	r2, .L429+40
 1624 0240 8021     		movs	r1, #128
 1625 0242 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1626 0246 3046     		mov	r0, r6
 1627 0248 0DB0     		add	sp, sp, #52
 1628              		@ sp needed
 1629 024a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1630              	.L230:
 1631 024e DFF8E080 		ldr	r8, .L429+28
 1632 0252 0021     		movs	r1, #0
 1633 0254 4046     		mov	r0, r8
 1634 0256 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 1635 025a 0446     		mov	r4, r0
 1636 025c 0028     		cmp	r0, #0
 1637 025e 7FF429AF 		bne	.L234
 1638              	.L413:
 1639 0262 3749     		ldr	r1, .L429+44
 1640 0264 D9F80000 		ldr	r0, [r9]
 1641 0268 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1642 026c 2846     		mov	r0, r5
 1643 026e D8F80040 		ldr	r4, [r8]
 1644 0272 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1645 0276 0146     		mov	r1, r0
 1646 0278 03A8     		add	r0, sp, #12
 1647 027a FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1648 027e 2046     		mov	r0, r4
 1649 0280 03AB     		add	r3, sp, #12
 1650 0282 304A     		ldr	r2, .L429+48
 1651 0284 8021     		movs	r1, #128
 1652 0286 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1653 028a 3046     		mov	r0, r6
ARM GAS  /tmp/ccgDyFqF.s 			page 30


 1654 028c 0DB0     		add	sp, sp, #52
 1655              		@ sp needed
 1656 028e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1657              	.L412:
 1658 0292 DFF89C80 		ldr	r8, .L429+28
 1659 0296 13E7     		b	.L226
 1660              	.L243:
 1661 0298 D9F80000 		ldr	r0, [r9]
 1662 029c FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1663 02a0 0022     		movs	r2, #0
 1664 02a2 0121     		movs	r1, #1
 1665 02a4 2248     		ldr	r0, .L429+28
 1666 02a6 FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 1667 02aa 5646     		mov	r6, r10
 1668 02ac C9F80000 		str	r0, [r9]
 1669 02b0 AAE7     		b	.L333
 1670              	.L242:
 1671 02b2 2549     		ldr	r1, .L429+52
 1672 02b4 4046     		mov	r0, r8
 1673 02b6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1674 02ba 0028     		cmp	r0, #0
 1675 02bc 6AD0     		beq	.L248
 1676 02be D5F8C437 		ldr	r3, [r5, #1988]
 1677 02c2 002B     		cmp	r3, #0
 1678 02c4 66D0     		beq	.L248
 1679 02c6 204F     		ldr	r7, .L429+52
 1680 02c8 2C46     		mov	r4, r5
 1681 02ca AB46     		mov	fp, r5
 1682 02cc 05E0     		b	.L251
 1683              	.L249:
 1684 02ce D5F8C437 		ldr	r3, [r5, #1988]
 1685 02d2 0AF1010A 		add	r10, r10, #1
 1686 02d6 5345     		cmp	r3, r10
 1687 02d8 5CD9     		bls	.L248
 1688              	.L251:
 1689 02da DBF8A006 		ldr	r0, [fp, #1696]
 1690 02de 3946     		mov	r1, r7
 1691 02e0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1692 02e4 0BF1080B 		add	fp, fp, #8
 1693 02e8 0646     		mov	r6, r0
 1694 02ea 0028     		cmp	r0, #0
 1695 02ec EFD0     		beq	.L249
 1696 02ee 05EBCA0A 		add	r10, r5, r10, lsl #3
 1697 02f2 DAF8A436 		ldr	r3, [r10, #1700]
 1698 02f6 002B     		cmp	r3, #0
 1699 02f8 4CD0     		beq	.L248
 1700 02fa 0D4A     		ldr	r2, .L429+28
 1701 02fc D5F8C437 		ldr	r3, [r5, #1988]
 1702 0300 1269     		ldr	r2, [r2, #16]
 1703 0302 D2F80480 		ldr	r8, [r2, #4]
 1704 0306 002B     		cmp	r3, #0
 1705 0308 68D0     		beq	.L254
 1706 030a DFF83CA0 		ldr	r10, .L429+52
 1707 030e 0027     		movs	r7, #0
 1708 0310 25E0     		b	.L257
 1709              	.L430:
 1710 0312 00BF     		.align	2
ARM GAS  /tmp/ccgDyFqF.s 			page 31


 1711              	.L429:
 1712 0314 0C000000 		.word	.LC26
 1713 0318 14000000 		.word	.LC27
 1714 031c B0000000 		.word	.LC32
 1715 0320 E0000000 		.word	.LC33
 1716 0324 08010000 		.word	.LC35
 1717 0328 2C010000 		.word	.LC37
 1718 032c 64010000 		.word	.LC40
 1719 0330 00000000 		.word	reprap
 1720 0334 1C010000 		.word	.LC36
 1721 0338 38010000 		.word	.LC38
 1722 033c 44010000 		.word	.LC39
 1723 0340 20000000 		.word	.LC28
 1724 0344 2C000000 		.word	.LC29
 1725 0348 74010000 		.word	.LC42
 1726 034c 00010000 		.word	.LC34
 1727 0350 6C010000 		.word	.LC41
 1728              	.L255:
 1729 0354 D5F8C437 		ldr	r3, [r5, #1988]
 1730 0358 0137     		adds	r7, r7, #1
 1731 035a BB42     		cmp	r3, r7
 1732 035c 3ED9     		bls	.L254
 1733              	.L257:
 1734 035e D4F8A006 		ldr	r0, [r4, #1696]
 1735 0362 5146     		mov	r1, r10
 1736 0364 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1737 0368 0834     		adds	r4, r4, #8
 1738 036a 0028     		cmp	r0, #0
 1739 036c F2D0     		beq	.L255
 1740 036e 05EBC705 		add	r5, r5, r7, lsl #3
 1741 0372 D5F8A426 		ldr	r2, [r5, #1700]
 1742              	.L256:
 1743 0376 1021     		movs	r1, #16
 1744 0378 4046     		mov	r0, r8
 1745 037a FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 1746 037e 4046     		mov	r0, r8
 1747 0380 D9F80040 		ldr	r4, [r9]
 1748 0384 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 1749 0388 BD49     		ldr	r1, .L431
 1750 038a 0246     		mov	r2, r0
 1751 038c 2046     		mov	r0, r4
 1752 038e FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1753 0392 39E7     		b	.L333
 1754              	.L248:
 1755 0394 BB49     		ldr	r1, .L431+4
 1756 0396 4046     		mov	r0, r8
 1757 0398 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1758 039c 0646     		mov	r6, r0
 1759 039e F8B1     		cbz	r0, .L417
 1760 03a0 95F8C820 		ldrb	r2, [r5, #200]	@ zero_extendqisi2
 1761 03a4 D9F80000 		ldr	r0, [r9]
 1762 03a8 B749     		ldr	r1, .L431+8
 1763 03aa FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1764 03ae 2BE7     		b	.L333
 1765              	.L414:
 1766 03b0 B649     		ldr	r1, .L431+12
 1767 03b2 D9F80000 		ldr	r0, [r9]
ARM GAS  /tmp/ccgDyFqF.s 			page 32


 1768 03b6 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1769 03ba 2846     		mov	r0, r5
 1770 03bc D8F80050 		ldr	r5, [r8]
 1771 03c0 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1772 03c4 0146     		mov	r1, r0
 1773 03c6 03A8     		add	r0, sp, #12
 1774 03c8 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1775 03cc 03AB     		add	r3, sp, #12
 1776 03ce 2846     		mov	r0, r5
 1777 03d0 AF4A     		ldr	r2, .L431+16
 1778 03d2 8021     		movs	r1, #128
 1779 03d4 2646     		mov	r6, r4
 1780 03d6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1781 03da 15E7     		b	.L333
 1782              	.L254:
 1783 03dc 0022     		movs	r2, #0
 1784 03de CAE7     		b	.L256
 1785              	.L417:
 1786 03e0 AC49     		ldr	r1, .L431+20
 1787 03e2 4046     		mov	r0, r8
 1788 03e4 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1789 03e8 0028     		cmp	r0, #0
 1790 03ea 4AD0     		beq	.L258
 1791 03ec D5F8C437 		ldr	r3, [r5, #1988]
 1792 03f0 002B     		cmp	r3, #0
 1793 03f2 46D0     		beq	.L258
 1794 03f4 AA46     		mov	r10, r5
 1795 03f6 AB46     		mov	fp, r5
 1796 03f8 3446     		mov	r4, r6
 1797 03fa 04E0     		b	.L261
 1798              	.L259:
 1799 03fc D5F8C427 		ldr	r2, [r5, #1988]
 1800 0400 0134     		adds	r4, r4, #1
 1801 0402 A242     		cmp	r2, r4
 1802 0404 3DD9     		bls	.L258
 1803              	.L261:
 1804 0406 DBF8A006 		ldr	r0, [fp, #1696]
 1805 040a A349     		ldr	r1, .L431+24
 1806 040c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1807 0410 0BF1080B 		add	fp, fp, #8
 1808 0414 0746     		mov	r7, r0
 1809 0416 0028     		cmp	r0, #0
 1810 0418 F0D0     		beq	.L259
 1811 041a 05EBC404 		add	r4, r5, r4, lsl #3
 1812 041e D4F8A436 		ldr	r3, [r4, #1700]
 1813 0422 73B3     		cbz	r3, .L258
 1814 0424 9D4A     		ldr	r2, .L431+28
 1815 0426 D5F8C437 		ldr	r3, [r5, #1988]
 1816 042a 1268     		ldr	r2, [r2]
 1817 042c D2F8B469 		ldr	r6, [r2, #2484]
 1818 0430 002B     		cmp	r3, #0
 1819 0432 00F01281 		beq	.L264
 1820 0436 DFF86082 		ldr	r8, .L431+24
 1821 043a 0024     		movs	r4, #0
 1822 043c 05E0     		b	.L267
 1823              	.L265:
 1824 043e D5F8C437 		ldr	r3, [r5, #1988]
ARM GAS  /tmp/ccgDyFqF.s 			page 33


 1825 0442 0134     		adds	r4, r4, #1
 1826 0444 A342     		cmp	r3, r4
 1827 0446 40F20881 		bls	.L264
 1828              	.L267:
 1829 044a DAF8A006 		ldr	r0, [r10, #1696]
 1830 044e 4146     		mov	r1, r8
 1831 0450 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1832 0454 0AF1080A 		add	r10, r10, #8
 1833 0458 0028     		cmp	r0, #0
 1834 045a F0D0     		beq	.L265
 1835 045c 05EBC404 		add	r4, r5, r4, lsl #3
 1836 0460 D4F8A426 		ldr	r2, [r4, #1700]
 1837              	.L266:
 1838 0464 8E49     		ldr	r1, .L431+32
 1839 0466 3046     		mov	r0, r6
 1840 0468 0023     		movs	r3, #0
 1841 046a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1842 046e 80F00102 		eor	r2, r0, #1
 1843 0472 D2B2     		uxtb	r2, r2
 1844 0474 D9F80000 		ldr	r0, [r9]
 1845 0478 8349     		ldr	r1, .L431+8
 1846 047a 3E46     		mov	r6, r7
 1847 047c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1848 0480 C2E6     		b	.L333
 1849              	.L258:
 1850 0482 8849     		ldr	r1, .L431+36
 1851 0484 4046     		mov	r0, r8
 1852 0486 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1853 048a 0028     		cmp	r0, #0
 1854 048c 69D0     		beq	.L263
 1855 048e D5F8C437 		ldr	r3, [r5, #1988]
 1856 0492 002B     		cmp	r3, #0
 1857 0494 65D0     		beq	.L263
 1858 0496 2F46     		mov	r7, r5
 1859 0498 AB46     		mov	fp, r5
 1860 049a 4FF0000A 		mov	r10, #0
 1861 049e 05E0     		b	.L270
 1862              	.L268:
 1863 04a0 D5F8C427 		ldr	r2, [r5, #1988]
 1864 04a4 0AF1010A 		add	r10, r10, #1
 1865 04a8 5245     		cmp	r2, r10
 1866 04aa 5AD9     		bls	.L263
 1867              	.L270:
 1868 04ac DBF8A006 		ldr	r0, [fp, #1696]
 1869 04b0 7D49     		ldr	r1, .L431+40
 1870 04b2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1871 04b6 0BF1080B 		add	fp, fp, #8
 1872 04ba 0446     		mov	r4, r0
 1873 04bc 0028     		cmp	r0, #0
 1874 04be EFD0     		beq	.L268
 1875 04c0 05EBCA0A 		add	r10, r5, r10, lsl #3
 1876 04c4 DAF8A436 		ldr	r3, [r10, #1700]
 1877 04c8 002B     		cmp	r3, #0
 1878 04ca 4AD0     		beq	.L263
 1879 04cc D9F80000 		ldr	r0, [r9]
 1880 04d0 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1881 04d4 D5F8C467 		ldr	r6, [r5, #1988]
ARM GAS  /tmp/ccgDyFqF.s 			page 34


 1882 04d8 002E     		cmp	r6, #0
 1883 04da 00F0E981 		beq	.L325
 1884 04de 734E     		ldr	r6, .L431+44
 1885 04e0 AA46     		mov	r10, r5
 1886 04e2 4FF00008 		mov	r8, #0
 1887 04e6 06E0     		b	.L277
 1888              	.L274:
 1889 04e8 D5F8C417 		ldr	r1, [r5, #1988]
 1890 04ec 08F10108 		add	r8, r8, #1
 1891 04f0 4145     		cmp	r1, r8
 1892 04f2 40F20781 		bls	.L418
 1893              	.L277:
 1894 04f6 DAF8A006 		ldr	r0, [r10, #1696]
 1895 04fa 3146     		mov	r1, r6
 1896 04fc FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1897 0500 0AF1080A 		add	r10, r10, #8
 1898 0504 0028     		cmp	r0, #0
 1899 0506 EFD0     		beq	.L274
 1900 0508 05EBC808 		add	r8, r5, r8, lsl #3
 1901 050c D8F8A406 		ldr	r0, [r8, #1700]
 1902 0510 18B1     		cbz	r0, .L409
 1903 0512 0A22     		movs	r2, #10
 1904 0514 0021     		movs	r1, #0
 1905 0516 FFF7FEFF 		bl	strtol
 1906              	.L409:
 1907 051a D5F8C417 		ldr	r1, [r5, #1988]
 1908 051e 0646     		mov	r6, r0
 1909              	.L276:
 1910 0520 B9B1     		cbz	r1, .L273
 1911 0522 DFF884A1 		ldr	r10, .L431+40
 1912 0526 4FF00008 		mov	r8, #0
 1913 052a 06E0     		b	.L279
 1914              	.L278:
 1915 052c D5F8C437 		ldr	r3, [r5, #1988]
 1916 0530 08F10108 		add	r8, r8, #1
 1917 0534 4345     		cmp	r3, r8
 1918 0536 40F2E380 		bls	.L419
 1919              	.L279:
 1920 053a D7F8A006 		ldr	r0, [r7, #1696]
 1921 053e 5146     		mov	r1, r10
 1922 0540 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1923 0544 0837     		adds	r7, r7, #8
 1924 0546 0028     		cmp	r0, #0
 1925 0548 F0D0     		beq	.L278
 1926 054a 05EBC805 		add	r5, r5, r8, lsl #3
 1927 054e D5F8A416 		ldr	r1, [r5, #1700]
 1928              	.L273:
 1929 0552 5248     		ldr	r0, .L431+28
 1930 0554 3246     		mov	r2, r6
 1931 0556 FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKcj
 1932 055a 2646     		mov	r6, r4
 1933 055c C9F80000 		str	r0, [r9]
 1934 0560 52E6     		b	.L333
 1935              	.L263:
 1936 0562 5349     		ldr	r1, .L431+48
 1937 0564 4046     		mov	r0, r8
 1938 0566 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
ARM GAS  /tmp/ccgDyFqF.s 			page 35


 1939 056a 0746     		mov	r7, r0
 1940 056c 0028     		cmp	r0, #0
 1941 056e 76D0     		beq	.L420
 1942 0570 D9F80000 		ldr	r0, [r9]
 1943 0574 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1944 0578 D5F8C447 		ldr	r4, [r5, #1988]
 1945 057c 002C     		cmp	r4, #0
 1946 057e 00F09481 		beq	.L328
 1947 0582 DFF82481 		ldr	r8, .L431+40
 1948 0586 AA46     		mov	r10, r5
 1949 0588 AB46     		mov	fp, r5
 1950 058a 0024     		movs	r4, #0
 1951 058c 05E0     		b	.L283
 1952              	.L281:
 1953 058e D5F8C417 		ldr	r1, [r5, #1988]
 1954 0592 0134     		adds	r4, r4, #1
 1955 0594 A142     		cmp	r1, r4
 1956 0596 40F2AC80 		bls	.L421
 1957              	.L283:
 1958 059a DBF8A006 		ldr	r0, [fp, #1696]
 1959 059e 4146     		mov	r1, r8
 1960 05a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1961 05a4 0BF1080B 		add	fp, fp, #8
 1962 05a8 0028     		cmp	r0, #0
 1963 05aa F0D0     		beq	.L281
 1964 05ac 05EBC404 		add	r4, r5, r4, lsl #3
 1965 05b0 D4F8A486 		ldr	r8, [r4, #1700]
 1966 05b4 B8F1000F 		cmp	r8, #0
 1967 05b8 00F07481 		beq	.L329
 1968              	.L410:
 1969 05bc D5F8C417 		ldr	r1, [r5, #1988]
 1970              	.L282:
 1971 05c0 0029     		cmp	r1, #0
 1972 05c2 00F06D81 		beq	.L330
 1973 05c6 394C     		ldr	r4, .L431+44
 1974 05c8 4FF0000B 		mov	fp, #0
 1975 05cc 06E0     		b	.L287
 1976              	.L284:
 1977 05ce D5F8C417 		ldr	r1, [r5, #1988]
 1978 05d2 0BF1010B 		add	fp, fp, #1
 1979 05d6 5945     		cmp	r1, fp
 1980 05d8 40F28E80 		bls	.L422
 1981              	.L287:
 1982 05dc DAF8A006 		ldr	r0, [r10, #1696]
 1983 05e0 2146     		mov	r1, r4
 1984 05e2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1985 05e6 0AF1080A 		add	r10, r10, #8
 1986 05ea 0028     		cmp	r0, #0
 1987 05ec EFD0     		beq	.L284
 1988 05ee 05EBCB0B 		add	fp, r5, fp, lsl #3
 1989 05f2 DBF8A406 		ldr	r0, [fp, #1700]
 1990 05f6 18B1     		cbz	r0, .L411
 1991 05f8 0A22     		movs	r2, #10
 1992 05fa 0021     		movs	r1, #0
 1993 05fc FFF7FEFF 		bl	strtol
 1994              	.L411:
 1995 0600 D5F8C417 		ldr	r1, [r5, #1988]
ARM GAS  /tmp/ccgDyFqF.s 			page 36


 1996 0604 0446     		mov	r4, r0
 1997              	.L286:
 1998 0606 F1B1     		cbz	r1, .L280
 1999 0608 AA46     		mov	r10, r5
 2000 060a 4FF0000B 		mov	fp, #0
 2001 060e 05E0     		b	.L290
 2002              	.L288:
 2003 0610 D5F8C427 		ldr	r2, [r5, #1988]
 2004 0614 0BF1010B 		add	fp, fp, #1
 2005 0618 5A45     		cmp	r2, fp
 2006 061a 6FD9     		bls	.L423
 2007              	.L290:
 2008 061c DAF8A006 		ldr	r0, [r10, #1696]
 2009 0620 2449     		ldr	r1, .L431+52
 2010 0622 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2011 0626 0AF1080A 		add	r10, r10, #8
 2012 062a 0028     		cmp	r0, #0
 2013 062c F0D0     		beq	.L288
 2014 062e 05EBCB05 		add	r5, r5, fp, lsl #3
 2015 0632 D5F8A406 		ldr	r0, [r5, #1700]
 2016 0636 30B1     		cbz	r0, .L280
 2017 0638 0A22     		movs	r2, #10
 2018 063a 0021     		movs	r1, #0
 2019 063c FFF7FEFF 		bl	strtol
 2020 0640 431E     		subs	r3, r0, #1
 2021 0642 5E42     		rsbs	r6, r3, #0
 2022 0644 5E41     		adcs	r6, r6, r3
 2023              	.L280:
 2024 0646 3346     		mov	r3, r6
 2025 0648 2246     		mov	r2, r4
 2026 064a 4146     		mov	r1, r8
 2027 064c 1348     		ldr	r0, .L431+28
 2028 064e FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcjb
 2029 0652 3E46     		mov	r6, r7
 2030 0654 C9F80000 		str	r0, [r9]
 2031 0658 D6E5     		b	.L333
 2032              	.L264:
 2033 065a 0022     		movs	r2, #0
 2034 065c 02E7     		b	.L266
 2035              	.L420:
 2036 065e 1649     		ldr	r1, .L431+56
 2037 0660 4046     		mov	r0, r8
 2038 0662 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2039 0666 8246     		mov	r10, r0
 2040 0668 0028     		cmp	r0, #0
 2041 066a 51D0     		beq	.L291
 2042 066c D5F8C437 		ldr	r3, [r5, #1988]
 2043 0670 002B     		cmp	r3, #0
 2044 0672 49D0     		beq	.L292
 2045 0674 DFF82080 		ldr	r8, .L431+24
 2046 0678 3C46     		mov	r4, r7
 2047 067a 2E46     		mov	r6, r5
 2048 067c 23E0     		b	.L295
 2049              	.L432:
 2050 067e 00BF     		.align	2
 2051              	.L431:
 2052 0680 84010000 		.word	.LC44
ARM GAS  /tmp/ccgDyFqF.s 			page 37


 2053 0684 7C010000 		.word	.LC43
 2054 0688 38010000 		.word	.LC38
 2055 068c 64000000 		.word	.LC30
 2056 0690 70000000 		.word	.LC31
 2057 0694 90010000 		.word	.LC45
 2058 0698 98010000 		.word	.LC46
 2059 069c 00000000 		.word	reprap
 2060 06a0 AC010000 		.word	.LC48
 2061 06a4 A0010000 		.word	.LC47
 2062 06a8 B0010000 		.word	.LC49
 2063 06ac BC010000 		.word	.LC51
 2064 06b0 B4010000 		.word	.LC50
 2065 06b4 C4010000 		.word	.LC52
 2066 06b8 D0010000 		.word	.LC53
 2067              	.L293:
 2068 06bc D5F8C437 		ldr	r3, [r5, #1988]
 2069 06c0 0134     		adds	r4, r4, #1
 2070 06c2 A342     		cmp	r3, r4
 2071 06c4 20D9     		bls	.L292
 2072              	.L295:
 2073 06c6 D6F8A006 		ldr	r0, [r6, #1696]
 2074 06ca 4146     		mov	r1, r8
 2075 06cc FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2076 06d0 0836     		adds	r6, r6, #8
 2077 06d2 0028     		cmp	r0, #0
 2078 06d4 F2D0     		beq	.L293
 2079 06d6 05EBC404 		add	r4, r5, r4, lsl #3
 2080 06da D4F8A416 		ldr	r1, [r4, #1700]
 2081 06de 99B1     		cbz	r1, .L292
 2082 06e0 7822     		movs	r2, #120
 2083 06e2 05F5FA60 		add	r0, r5, #2000
 2084 06e6 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 2085              	.L296:
 2086 06ea 0523     		movs	r3, #5
 2087 06ec AB60     		str	r3, [r5, #8]
 2088 06ee 0026     		movs	r6, #0
 2089 06f0 8AE5     		b	.L333
 2090              	.L421:
 2091 06f2 DFF8F881 		ldr	r8, .L433+36
 2092 06f6 63E7     		b	.L282
 2093              	.L422:
 2094 06f8 0446     		mov	r4, r0
 2095 06fa 84E7     		b	.L286
 2096              	.L423:
 2097 06fc 0646     		mov	r6, r0
 2098 06fe A2E7     		b	.L280
 2099              	.L419:
 2100 0700 0146     		mov	r1, r0
 2101 0702 26E7     		b	.L273
 2102              	.L418:
 2103 0704 0646     		mov	r6, r0
 2104 0706 0BE7     		b	.L276
 2105              	.L292:
 2106 0708 0023     		movs	r3, #0
 2107 070a 85F8D037 		strb	r3, [r5, #2000]
 2108 070e ECE7     		b	.L296
 2109              	.L291:
ARM GAS  /tmp/ccgDyFqF.s 			page 38


 2110 0710 6D49     		ldr	r1, .L433
 2111 0712 4046     		mov	r0, r8
 2112 0714 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2113 0718 0646     		mov	r6, r0
 2114 071a 0446     		mov	r4, r0
 2115 071c 0028     		cmp	r0, #0
 2116 071e 69D0     		beq	.L297
 2117 0720 D5F8C437 		ldr	r3, [r5, #1988]
 2118 0724 002B     		cmp	r3, #0
 2119 0726 7BD0     		beq	.L317
 2120 0728 DFF8C4B1 		ldr	fp, .L433+40
 2121 072c 5446     		mov	r4, r10
 2122 072e A846     		mov	r8, r5
 2123 0730 2F46     		mov	r7, r5
 2124 0732 05E0     		b	.L303
 2125              	.L299:
 2126 0734 D5F8C437 		ldr	r3, [r5, #1988]
 2127 0738 0134     		adds	r4, r4, #1
 2128 073a A342     		cmp	r3, r4
 2129 073c 40F28D80 		bls	.L424
 2130              	.L303:
 2131 0740 D7F8A006 		ldr	r0, [r7, #1696]
 2132 0744 5946     		mov	r1, fp
 2133 0746 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2134 074a 0837     		adds	r7, r7, #8
 2135 074c 0028     		cmp	r0, #0
 2136 074e F1D0     		beq	.L299
 2137 0750 05EBC404 		add	r4, r5, r4, lsl #3
 2138 0754 D5F8C437 		ldr	r3, [r5, #1988]
 2139 0758 D4F8A446 		ldr	r4, [r4, #1700]
 2140 075c 002B     		cmp	r3, #0
 2141 075e 5FD0     		beq	.L317
 2142              	.L301:
 2143 0760 DFF890B1 		ldr	fp, .L433+44
 2144 0764 AA46     		mov	r10, r5
 2145 0766 0027     		movs	r7, #0
 2146 0768 04E0     		b	.L306
 2147              	.L304:
 2148 076a D5F8C437 		ldr	r3, [r5, #1988]
 2149 076e 0137     		adds	r7, r7, #1
 2150 0770 BB42     		cmp	r3, r7
 2151 0772 55D9     		bls	.L317
 2152              	.L306:
 2153 0774 DAF8A006 		ldr	r0, [r10, #1696]
 2154 0778 5946     		mov	r1, fp
 2155 077a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2156 077e 0AF1080A 		add	r10, r10, #8
 2157 0782 0028     		cmp	r0, #0
 2158 0784 F1D0     		beq	.L304
 2159 0786 05EBC707 		add	r7, r5, r7, lsl #3
 2160 078a D7F8A4B6 		ldr	fp, [r7, #1700]
 2161 078e 002C     		cmp	r4, #0
 2162 0790 46D0     		beq	.L317
 2163 0792 BBF1000F 		cmp	fp, #0
 2164 0796 43D0     		beq	.L317
 2165 0798 4C4A     		ldr	r2, .L433+4
 2166 079a D5F8C437 		ldr	r3, [r5, #1988]
ARM GAS  /tmp/ccgDyFqF.s 			page 39


 2167 079e 1268     		ldr	r2, [r2]
 2168 07a0 D2F8B4A9 		ldr	r10, [r2, #2484]
 2169 07a4 002B     		cmp	r3, #0
 2170 07a6 43D0     		beq	.L309
 2171 07a8 494B     		ldr	r3, .L433+8
 2172 07aa 0027     		movs	r7, #0
 2173 07ac 04E0     		b	.L312
 2174              	.L310:
 2175 07ae D5F8C427 		ldr	r2, [r5, #1988]
 2176 07b2 0137     		adds	r7, r7, #1
 2177 07b4 BA42     		cmp	r2, r7
 2178 07b6 3BD9     		bls	.L309
 2179              	.L312:
 2180 07b8 1946     		mov	r1, r3
 2181 07ba D8F8A006 		ldr	r0, [r8, #1696]
 2182 07be 0193     		str	r3, [sp, #4]
 2183 07c0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2184 07c4 08F10808 		add	r8, r8, #8
 2185 07c8 019B     		ldr	r3, [sp, #4]
 2186 07ca 0028     		cmp	r0, #0
 2187 07cc EFD0     		beq	.L310
 2188 07ce 05EBC705 		add	r5, r5, r7, lsl #3
 2189 07d2 D5F8A406 		ldr	r0, [r5, #1700]
 2190              	.L311:
 2191 07d6 3F49     		ldr	r1, .L433+12
 2192 07d8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2193 07dc 50BB     		cbnz	r0, .L425
 2194              	.L314:
 2195 07de 5A46     		mov	r2, fp
 2196 07e0 2146     		mov	r1, r4
 2197 07e2 5046     		mov	r0, r10
 2198 07e4 FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 2199 07e8 80F00102 		eor	r2, r0, #1
 2200 07ec D9F80030 		ldr	r3, [r9]
 2201 07f0 D2B2     		uxtb	r2, r2
 2202 07f2 18E0     		b	.L321
 2203              	.L297:
 2204 07f4 3849     		ldr	r1, .L433+16
 2205 07f6 4046     		mov	r0, r8
 2206 07f8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2207 07fc 0646     		mov	r6, r0
 2208 07fe 0028     		cmp	r0, #0
 2209 0800 41D0     		beq	.L316
 2210 0802 364F     		ldr	r7, .L433+20
 2211 0804 05E0     		b	.L320
 2212              	.L427:
 2213 0806 D3F8A006 		ldr	r0, [r3, #1696]
 2214 080a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2215 080e 40BB     		cbnz	r0, .L426
 2216 0810 0134     		adds	r4, r4, #1
 2217              	.L320:
 2218 0812 D5F8C427 		ldr	r2, [r5, #1988]
 2219 0816 A242     		cmp	r2, r4
 2220 0818 05EBC403 		add	r3, r5, r4, lsl #3
 2221 081c 3946     		mov	r1, r7
 2222 081e F2D8     		bhi	.L427
 2223              	.L317:
ARM GAS  /tmp/ccgDyFqF.s 			page 40


 2224 0820 D9F80030 		ldr	r3, [r9]
 2225 0824 0122     		movs	r2, #1
 2226              	.L321:
 2227 0826 1846     		mov	r0, r3
 2228 0828 2D49     		ldr	r1, .L433+24
 2229 082a FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2230 082e EBE4     		b	.L333
 2231              	.L309:
 2232 0830 0020     		movs	r0, #0
 2233 0832 D0E7     		b	.L311
 2234              	.L425:
 2235 0834 2146     		mov	r1, r4
 2236 0836 5046     		mov	r0, r10
 2237 0838 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 2238 083c 0028     		cmp	r0, #0
 2239 083e CED0     		beq	.L314
 2240 0840 5946     		mov	r1, fp
 2241 0842 5046     		mov	r0, r10
 2242 0844 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 2243 0848 0028     		cmp	r0, #0
 2244 084a C8D0     		beq	.L314
 2245 084c 0123     		movs	r3, #1
 2246 084e 5A46     		mov	r2, fp
 2247 0850 0021     		movs	r1, #0
 2248 0852 5046     		mov	r0, r10
 2249 0854 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2250 0858 C1E7     		b	.L314
 2251              	.L424:
 2252 085a 002B     		cmp	r3, #0
 2253 085c E0D0     		beq	.L317
 2254 085e 0446     		mov	r4, r0
 2255 0860 7EE7     		b	.L301
 2256              	.L426:
 2257 0862 05EBC404 		add	r4, r5, r4, lsl #3
 2258 0866 D4F8A416 		ldr	r1, [r4, #1700]
 2259 086a 0029     		cmp	r1, #0
 2260 086c D8D0     		beq	.L317
 2261 086e 174B     		ldr	r3, .L433+4
 2262 0870 1B68     		ldr	r3, [r3]
 2263 0872 D3F8B409 		ldr	r0, [r3, #2484]
 2264 0876 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 2265 087a 80F00102 		eor	r2, r0, #1
 2266 087e D9F80030 		ldr	r3, [r9]
 2267 0882 D2B2     		uxtb	r2, r2
 2268 0884 CFE7     		b	.L321
 2269              	.L316:
 2270 0886 4046     		mov	r0, r8
 2271 0888 1649     		ldr	r1, .L433+28
 2272 088a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2273 088e 0646     		mov	r6, r0
 2274 0890 80B9     		cbnz	r0, .L428
 2275 0892 2846     		mov	r0, r5
 2276 0894 4FF4FA72 		mov	r2, #500
 2277 0898 1349     		ldr	r1, .L433+32
 2278 089a FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2279 089e B3E4     		b	.L333
 2280              	.L330:
ARM GAS  /tmp/ccgDyFqF.s 			page 41


 2281 08a0 0C46     		mov	r4, r1
 2282 08a2 D0E6     		b	.L280
 2283              	.L329:
 2284 08a4 DFF84480 		ldr	r8, .L433+36
 2285 08a8 88E6     		b	.L410
 2286              	.L328:
 2287 08aa DFF84080 		ldr	r8, .L433+36
 2288 08ae CAE6     		b	.L280
 2289              	.L325:
 2290 08b0 3146     		mov	r1, r6
 2291 08b2 4EE6     		b	.L273
 2292              	.L428:
 2293 08b4 D9F80000 		ldr	r0, [r9]
 2294 08b8 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2295 08bc 0348     		ldr	r0, .L433+4
 2296 08be FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 2297 08c2 C9F80000 		str	r0, [r9]
 2298 08c6 9FE4     		b	.L333
 2299              	.L434:
 2300              		.align	2
 2301              	.L433:
 2302 08c8 DC010000 		.word	.LC54
 2303 08cc 00000000 		.word	reprap
 2304 08d0 EC010000 		.word	.LC57
 2305 08d4 FC010000 		.word	.LC58
 2306 08d8 00020000 		.word	.LC59
 2307 08dc B0010000 		.word	.LC49
 2308 08e0 38010000 		.word	.LC38
 2309 08e4 08020000 		.word	.LC60
 2310 08e8 10020000 		.word	.LC61
 2311 08ec 00000000 		.word	.LC25
 2312 08f0 E4010000 		.word	.LC55
 2313 08f4 E8010000 		.word	.LC56
 2314              		.size	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb, .-_ZN13HttpResponder15GetJsonResp
 2315              		.section	.text._ZN13HttpResponder8SendFileEPKcb,"ax",%progbits
 2316              		.align	1
 2317              		.p2align 2,,3
 2318              		.global	_ZN13HttpResponder8SendFileEPKcb
 2319              		.syntax unified
 2320              		.thumb
 2321              		.thumb_func
 2322              		.fpu fpv4-sp-d16
 2323              		.type	_ZN13HttpResponder8SendFileEPKcb, %function
 2324              	_ZN13HttpResponder8SendFileEPKcb:
 2325              		@ args = 0, pretend = 0, frame = 136
 2326              		@ frame_needed = 0, uses_anonymous_args = 0
 2327 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2328 0004 0446     		mov	r4, r0
 2329 0006 A2B0     		sub	sp, sp, #136
 2330 0008 0D46     		mov	r5, r1
 2331 000a 1746     		mov	r7, r2
 2332 000c 002A     		cmp	r2, #0
 2333 000e 00F08480 		beq	.L436
 2334 0012 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2335 0014 2F2B     		cmp	r3, #47
 2336 0016 35D0     		beq	.L486
 2337 0018 9F49     		ldr	r1, .L497
ARM GAS  /tmp/ccgDyFqF.s 			page 42


 2338 001a 2846     		mov	r0, r5
 2339 001c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2340 0020 28B9     		cbnz	r0, .L485
 2341              	.L479:
 2342 0022 2846     		mov	r0, r5
 2343 0024 FFF7FEFF 		bl	strlen
 2344 0028 0330     		adds	r0, r0, #3
 2345 002a 7828     		cmp	r0, #120
 2346 002c 35D9     		bls	.L453
 2347              	.L485:
 2348 002e DFF89882 		ldr	r8, .L497+48
 2349              	.L439:
 2350 0032 D8F80030 		ldr	r3, [r8]
 2351 0036 9949     		ldr	r1, .L497+4
 2352 0038 D3F8B409 		ldr	r0, [r3, #2484]
 2353 003c 2A46     		mov	r2, r5
 2354 003e 0023     		movs	r3, #0
 2355 0040 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2356 0044 0646     		mov	r6, r0
 2357 0046 0028     		cmp	r0, #0
 2358 0048 00F09380 		beq	.L487
 2359              	.L442:
 2360 004c 9449     		ldr	r1, .L497+8
 2361 004e 2663     		str	r6, [r4, #48]
 2362 0050 A069     		ldr	r0, [r4, #24]
 2363 0052 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2364 0056 9349     		ldr	r1, .L497+12
 2365 0058 2846     		mov	r0, r5
 2366 005a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2367 005e 0028     		cmp	r0, #0
 2368 0060 76D1     		bne	.L457
 2369 0062 9149     		ldr	r1, .L497+16
 2370 0064 2846     		mov	r0, r5
 2371 0066 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2372 006a 0746     		mov	r7, r0
 2373 006c 0028     		cmp	r0, #0
 2374 006e 40F00D81 		bne	.L461
 2375              	.L462:
 2376 0072 8E49     		ldr	r1, .L497+20
 2377 0074 2846     		mov	r0, r5
 2378 0076 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2379 007a 0028     		cmp	r0, #0
 2380 007c 00F0AE80 		beq	.L465
 2381 0080 8B4A     		ldr	r2, .L497+24
 2382 0082 B1E0     		b	.L450
 2383              	.L486:
 2384 0084 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 2385 0086 002B     		cmp	r3, #0
 2386 0088 40F09280 		bne	.L488
 2387 008c 8249     		ldr	r1, .L497
 2388 008e 8948     		ldr	r0, .L497+28
 2389 0090 884D     		ldr	r5, .L497+28
 2390 0092 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2391 0096 0028     		cmp	r0, #0
 2392 0098 C9D1     		bne	.L485
 2393              	.L453:
 2394 009a 22AE     		add	r6, sp, #136
ARM GAS  /tmp/ccgDyFqF.s 			page 43


 2395 009c 4FF00009 		mov	r9, #0
 2396 00a0 06F87C9D 		strb	r9, [r6, #-124]!
 2397 00a4 4FF0790A 		mov	r10, #121
 2398 00a8 2946     		mov	r1, r5
 2399 00aa 01A8     		add	r0, sp, #4
 2400 00ac DFF81882 		ldr	r8, .L497+48
 2401 00b0 CDE9016A 		strd	r6, r10, [sp, #4]
 2402 00b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2403 00b8 7749     		ldr	r1, .L497
 2404 00ba 01A8     		add	r0, sp, #4
 2405 00bc CDE9016A 		strd	r6, r10, [sp, #4]
 2406 00c0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2407 00c4 D8F80030 		ldr	r3, [r8]
 2408 00c8 7449     		ldr	r1, .L497+4
 2409 00ca D3F8B409 		ldr	r0, [r3, #2484]
 2410 00ce 3246     		mov	r2, r6
 2411 00d0 4B46     		mov	r3, r9
 2412 00d2 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2413 00d6 0646     		mov	r6, r0
 2414 00d8 0028     		cmp	r0, #0
 2415 00da AAD0     		beq	.L439
 2416 00dc 2063     		str	r0, [r4, #48]
 2417 00de 7049     		ldr	r1, .L497+8
 2418 00e0 A069     		ldr	r0, [r4, #24]
 2419 00e2 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2420 00e6 6F49     		ldr	r1, .L497+12
 2421 00e8 2846     		mov	r0, r5
 2422 00ea FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2423 00ee 0028     		cmp	r0, #0
 2424 00f0 00F0BF80 		beq	.L489
 2425 00f4 704A     		ldr	r2, .L497+32
 2426 00f6 7149     		ldr	r1, .L497+36
 2427 00f8 A069     		ldr	r0, [r4, #24]
 2428 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2429              	.L452:
 2430 00fe 7049     		ldr	r1, .L497+40
 2431 0100 A069     		ldr	r0, [r4, #24]
 2432 0102 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2433 0106 3046     		mov	r0, r6
 2434 0108 A569     		ldr	r5, [r4, #24]
 2435 010a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2436 010e 6D49     		ldr	r1, .L497+44
 2437 0110 0246     		mov	r2, r0
 2438 0112 2846     		mov	r0, r5
 2439 0114 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2440 0118 1FE0     		b	.L456
 2441              	.L436:
 2442 011a 6B4B     		ldr	r3, .L497+48
 2443 011c 6B49     		ldr	r1, .L497+52
 2444 011e 1A68     		ldr	r2, [r3]
 2445 0120 3B46     		mov	r3, r7
 2446 0122 D2F8B409 		ldr	r0, [r2, #2484]
 2447 0126 2A46     		mov	r2, r5
 2448 0128 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2449 012c 0646     		mov	r6, r0
 2450 012e 0028     		cmp	r0, #0
 2451 0130 61D0     		beq	.L490
ARM GAS  /tmp/ccgDyFqF.s 			page 44


 2452 0132 2063     		str	r0, [r4, #48]
 2453 0134 5A49     		ldr	r1, .L497+8
 2454 0136 A069     		ldr	r0, [r4, #24]
 2455 0138 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2456 013c 6449     		ldr	r1, .L497+56
 2457 013e A069     		ldr	r0, [r4, #24]
 2458 0140 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2459 0144 5749     		ldr	r1, .L497+12
 2460 0146 2846     		mov	r0, r5
 2461 0148 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2462 014c 0028     		cmp	r0, #0
 2463 014e 38D0     		beq	.L491
 2464              	.L457:
 2465 0150 594A     		ldr	r2, .L497+32
 2466 0152 5A49     		ldr	r1, .L497+36
 2467 0154 A069     		ldr	r0, [r4, #24]
 2468 0156 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2469              	.L456:
 2470 015a 5E49     		ldr	r1, .L497+60
 2471 015c A069     		ldr	r0, [r4, #24]
 2472 015e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2473 0162 2046     		mov	r0, r4
 2474 0164 0122     		movs	r2, #1
 2475 0166 0021     		movs	r1, #0
 2476 0168 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 2477              	.L435:
 2478 016c 22B0     		add	sp, sp, #136
 2479              		@ sp needed
 2480 016e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2481              	.L487:
 2482 0172 5949     		ldr	r1, .L497+64
 2483 0174 2846     		mov	r0, r5
 2484 0176 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2485 017a 20B9     		cbnz	r0, .L445
 2486 017c 2846     		mov	r0, r5
 2487 017e 5749     		ldr	r1, .L497+68
 2488 0180 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2489 0184 58B1     		cbz	r0, .L444
 2490              	.L445:
 2491 0186 D8F80030 		ldr	r3, [r8]
 2492 018a 554A     		ldr	r2, .L497+72
 2493 018c D3F8B409 		ldr	r0, [r3, #2484]
 2494 0190 4249     		ldr	r1, .L497+4
 2495 0192 0023     		movs	r3, #0
 2496 0194 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2497 0198 0646     		mov	r6, r0
 2498 019a 0028     		cmp	r0, #0
 2499 019c 32D1     		bne	.L492
 2500              	.L444:
 2501 019e 2046     		mov	r0, r4
 2502 01a0 4FF4CA72 		mov	r2, #404
 2503 01a4 4F49     		ldr	r1, .L497+76
 2504 01a6 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2505 01aa 22B0     		add	sp, sp, #136
 2506              		@ sp needed
 2507 01ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2508              	.L488:
ARM GAS  /tmp/ccgDyFqF.s 			page 45


 2509 01b0 0135     		adds	r5, r5, #1
 2510 01b2 3949     		ldr	r1, .L497
 2511 01b4 2846     		mov	r0, r5
 2512 01b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2513 01ba 0028     		cmp	r0, #0
 2514 01bc 3FF431AF 		beq	.L479
 2515 01c0 35E7     		b	.L485
 2516              	.L491:
 2517 01c2 3949     		ldr	r1, .L497+16
 2518 01c4 2846     		mov	r0, r5
 2519 01c6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2520 01ca 0028     		cmp	r0, #0
 2521 01cc 5ED1     		bne	.L461
 2522 01ce 3749     		ldr	r1, .L497+20
 2523 01d0 2846     		mov	r0, r5
 2524 01d2 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2525 01d6 0746     		mov	r7, r0
 2526 01d8 0028     		cmp	r0, #0
 2527 01da 44D1     		bne	.L493
 2528              	.L465:
 2529 01dc 4249     		ldr	r1, .L497+80
 2530 01de 2846     		mov	r0, r5
 2531 01e0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2532 01e4 80B1     		cbz	r0, .L494
 2533 01e6 414A     		ldr	r2, .L497+84
 2534              	.L450:
 2535 01e8 3449     		ldr	r1, .L497+36
 2536 01ea A069     		ldr	r0, [r4, #24]
 2537 01ec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2538 01f0 002F     		cmp	r7, #0
 2539 01f2 84D1     		bne	.L452
 2540 01f4 B1E7     		b	.L456
 2541              	.L490:
 2542 01f6 2046     		mov	r0, r4
 2543 01f8 4FF4CA72 		mov	r2, #404
 2544 01fc 3C49     		ldr	r1, .L497+88
 2545 01fe FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2546 0202 B3E7     		b	.L435
 2547              	.L492:
 2548 0204 364D     		ldr	r5, .L497+72
 2549 0206 21E7     		b	.L442
 2550              	.L494:
 2551 0208 3449     		ldr	r1, .L497+68
 2552 020a 2846     		mov	r0, r5
 2553 020c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2554 0210 08B1     		cbz	r0, .L495
 2555              	.L469:
 2556 0212 384A     		ldr	r2, .L497+92
 2557 0214 E8E7     		b	.L450
 2558              	.L495:
 2559 0216 3049     		ldr	r1, .L497+64
 2560 0218 2846     		mov	r0, r5
 2561 021a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2562 021e 0028     		cmp	r0, #0
 2563 0220 F7D1     		bne	.L469
 2564 0222 3549     		ldr	r1, .L497+96
 2565 0224 2846     		mov	r0, r5
ARM GAS  /tmp/ccgDyFqF.s 			page 46


 2566 0226 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2567 022a 28B1     		cbz	r0, .L451
 2568 022c 334A     		ldr	r2, .L497+100
 2569 022e 2349     		ldr	r1, .L497+36
 2570 0230 A069     		ldr	r0, [r4, #24]
 2571 0232 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2572 0236 62E7     		b	.L452
 2573              	.L451:
 2574 0238 3149     		ldr	r1, .L497+104
 2575 023a 2846     		mov	r0, r5
 2576 023c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2577 0240 08B1     		cbz	r0, .L496
 2578              	.L471:
 2579 0242 304A     		ldr	r2, .L497+108
 2580 0244 D0E7     		b	.L450
 2581              	.L496:
 2582 0246 3049     		ldr	r1, .L497+112
 2583 0248 2846     		mov	r0, r5
 2584 024a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2585 024e 0028     		cmp	r0, #0
 2586 0250 F7D1     		bne	.L471
 2587 0252 2846     		mov	r0, r5
 2588 0254 2D49     		ldr	r1, .L497+116
 2589 0256 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2590 025a 2A4A     		ldr	r2, .L497+108
 2591 025c 2C4B     		ldr	r3, .L497+120
 2592 025e 0028     		cmp	r0, #0
 2593 0260 08BF     		it	eq
 2594 0262 1A46     		moveq	r2, r3
 2595 0264 C0E7     		b	.L450
 2596              	.L493:
 2597 0266 124A     		ldr	r2, .L497+24
 2598 0268 1449     		ldr	r1, .L497+36
 2599 026a A069     		ldr	r0, [r4, #24]
 2600 026c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2601 0270 73E7     		b	.L456
 2602              	.L489:
 2603 0272 0D49     		ldr	r1, .L497+16
 2604 0274 2846     		mov	r0, r5
 2605 0276 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2606 027a 0028     		cmp	r0, #0
 2607 027c 3FF4F9AE 		beq	.L462
 2608 0280 244A     		ldr	r2, .L497+124
 2609 0282 0E49     		ldr	r1, .L497+36
 2610 0284 A069     		ldr	r0, [r4, #24]
 2611 0286 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2612 028a 38E7     		b	.L452
 2613              	.L461:
 2614 028c 214A     		ldr	r2, .L497+124
 2615 028e 0B49     		ldr	r1, .L497+36
 2616 0290 A069     		ldr	r0, [r4, #24]
 2617 0292 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2618 0296 60E7     		b	.L456
 2619              	.L498:
 2620              		.align	2
 2621              	.L497:
 2622 0298 70000000 		.word	.LC69
ARM GAS  /tmp/ccgDyFqF.s 			page 47


 2623 029c 74000000 		.word	.LC70
 2624 02a0 AC000000 		.word	.LC75
 2625 02a4 30010000 		.word	.LC77
 2626 02a8 CC010000 		.word	.LC90
 2627 02ac 38010000 		.word	.LC78
 2628 02b0 18000000 		.word	.LC64
 2629 02b4 00000000 		.word	.LC62
 2630 02b8 B0010000 		.word	.LC88
 2631 02bc 5C010000 		.word	.LC82
 2632 02c0 80010000 		.word	.LC86
 2633 02c4 98010000 		.word	.LC87
 2634 02c8 00000000 		.word	reprap
 2635 02cc AC010000 		.word	.LC48
 2636 02d0 C0000000 		.word	.LC76
 2637 02d4 B4000000 		.word	.LC4
 2638 02d8 7C000000 		.word	.LC71
 2639 02dc 84000000 		.word	.LC72
 2640 02e0 64000000 		.word	.LC68
 2641 02e4 8C000000 		.word	.LC73
 2642 02e8 3C010000 		.word	.LC79
 2643 02ec 30000000 		.word	.LC65
 2644 02f0 9C000000 		.word	.LC74
 2645 02f4 3C000000 		.word	.LC66
 2646 02f8 44010000 		.word	.LC80
 2647 02fc 4C010000 		.word	.LC81
 2648 0300 70010000 		.word	.LC83
 2649 0304 0C000000 		.word	.LC63
 2650 0308 74010000 		.word	.LC84
 2651 030c 78010000 		.word	.LC85
 2652 0310 48000000 		.word	.LC67
 2653 0314 BC010000 		.word	.LC89
 2654              		.size	_ZN13HttpResponder8SendFileEPKcb, .-_ZN13HttpResponder8SendFileEPKcb
 2655              		.section	.text._ZN13HttpResponder16SendJsonResponseEPKc,"ax",%progbits
 2656              		.align	1
 2657              		.p2align 2,,3
 2658              		.global	_ZN13HttpResponder16SendJsonResponseEPKc
 2659              		.syntax unified
 2660              		.thumb
 2661              		.thumb_func
 2662              		.fpu fpv4-sp-d16
 2663              		.type	_ZN13HttpResponder16SendJsonResponseEPKc, %function
 2664              	_ZN13HttpResponder16SendJsonResponseEPKc:
 2665              		@ args = 0, pretend = 0, frame = 144
 2666              		@ frame_needed = 0, uses_anonymous_args = 0
 2667 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2668 0004 A4B0     		sub	sp, sp, #144
 2669 0006 0D46     		mov	r5, r1
 2670 0008 0446     		mov	r4, r0
 2671 000a FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2672 000e 0028     		cmp	r0, #0
 2673 0010 00F0A480 		beq	.L560
 2674              	.L501:
 2675 0014 2046     		mov	r0, r4
 2676 0016 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2677 001a 60B1     		cbz	r0, .L503
 2678 001c 9349     		ldr	r1, .L566
 2679 001e 2846     		mov	r0, r5
ARM GAS  /tmp/ccgDyFqF.s 			page 48


 2680 0020 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2681 0024 0746     		mov	r7, r0
 2682 0026 0028     		cmp	r0, #0
 2683 0028 38D0     		beq	.L504
 2684 002a 2046     		mov	r0, r4
 2685 002c FFF7FEFF 		bl	_ZN13HttpResponder14SendGCodeReplyEv
 2686              	.L499:
 2687 0030 24B0     		add	sp, sp, #144
 2688              		@ sp needed
 2689 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2690              	.L503:
 2691 0036 02A8     		add	r0, sp, #8
 2692 0038 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2693 003c 0028     		cmp	r0, #0
 2694 003e 40F09780 		bne	.L561
 2695              	.L510:
 2696 0042 029B     		ldr	r3, [sp, #8]
 2697 0044 002B     		cmp	r3, #0
 2698 0046 00F0EB80 		beq	.L516
 2699              	.L515:
 2700 004a 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 2701 004e 002B     		cmp	r3, #0
 2702 0050 52D0     		beq	.L517
 2703 0052 D4F8C837 		ldr	r3, [r4, #1992]
 2704 0056 002B     		cmp	r3, #0
 2705 0058 4ED0     		beq	.L517
 2706 005a 854F     		ldr	r7, .L566+4
 2707 005c 2646     		mov	r6, r4
 2708 005e 0025     		movs	r5, #0
 2709 0060 04E0     		b	.L521
 2710              	.L518:
 2711 0062 D4F8C837 		ldr	r3, [r4, #1992]
 2712 0066 0135     		adds	r5, r5, #1
 2713 0068 AB42     		cmp	r3, r5
 2714 006a 45D9     		bls	.L517
 2715              	.L521:
 2716 006c D6F8D006 		ldr	r0, [r6, #1744]
 2717 0070 3946     		mov	r1, r7
 2718 0072 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2719 0076 0836     		adds	r6, r6, #8
 2720 0078 0028     		cmp	r0, #0
 2721 007a F2D0     		beq	.L518
 2722 007c 04EBC505 		add	r5, r4, r5, lsl #3
 2723 0080 7C49     		ldr	r1, .L566+8
 2724 0082 D5F8D406 		ldr	r0, [r5, #1748]
 2725 0086 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2726 008a 7B49     		ldr	r1, .L566+12
 2727 008c 0646     		mov	r6, r0
 2728 008e A069     		ldr	r0, [r4, #24]
 2729 0090 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2730 0094 0298     		ldr	r0, [sp, #8]
 2731 0096 0028     		cmp	r0, #0
 2732 0098 36D1     		bne	.L519
 2733 009a 37E0     		b	.L559
 2734              	.L504:
 2735 009c 7749     		ldr	r1, .L566+16
 2736 009e 2846     		mov	r0, r5
ARM GAS  /tmp/ccgDyFqF.s 			page 49


 2737 00a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2738 00a4 0646     		mov	r6, r0
 2739 00a6 0028     		cmp	r0, #0
 2740 00a8 40F08180 		bne	.L562
 2741 00ac 7449     		ldr	r1, .L566+20
 2742 00ae 2846     		mov	r0, r5
 2743 00b0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2744 00b4 0028     		cmp	r0, #0
 2745 00b6 BED0     		beq	.L503
 2746 00b8 D4F8C437 		ldr	r3, [r4, #1988]
 2747 00bc 002B     		cmp	r3, #0
 2748 00be BAD0     		beq	.L503
 2749 00c0 DFF8E881 		ldr	r8, .L566+64
 2750 00c4 2746     		mov	r7, r4
 2751 00c6 04E0     		b	.L509
 2752              	.L507:
 2753 00c8 D4F8C437 		ldr	r3, [r4, #1988]
 2754 00cc 0136     		adds	r6, r6, #1
 2755 00ce B342     		cmp	r3, r6
 2756 00d0 B1D9     		bls	.L503
 2757              	.L509:
 2758 00d2 D7F8A006 		ldr	r0, [r7, #1696]
 2759 00d6 4146     		mov	r1, r8
 2760 00d8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2761 00dc 0837     		adds	r7, r7, #8
 2762 00de 0028     		cmp	r0, #0
 2763 00e0 F2D0     		beq	.L507
 2764 00e2 04EBC606 		add	r6, r4, r6, lsl #3
 2765 00e6 D6F8A416 		ldr	r1, [r6, #1700]
 2766 00ea 0029     		cmp	r1, #0
 2767 00ec A3D0     		beq	.L503
 2768 00ee 2046     		mov	r0, r4
 2769 00f0 0022     		movs	r2, #0
 2770 00f2 FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2771 00f6 9BE7     		b	.L499
 2772              	.L517:
 2773 00f8 5F49     		ldr	r1, .L566+12
 2774 00fa A069     		ldr	r0, [r4, #24]
 2775 00fc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2776 0100 0298     		ldr	r0, [sp, #8]
 2777 0102 0028     		cmp	r0, #0
 2778 0104 49D0     		beq	.L563
 2779 0106 0026     		movs	r6, #0
 2780              	.L519:
 2781 0108 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2782              	.L559:
 2783 010c 0246     		mov	r2, r0
 2784 010e 0546     		mov	r5, r0
 2785 0110 5C49     		ldr	r1, .L566+24
 2786 0112 A069     		ldr	r0, [r4, #24]
 2787 0114 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2788 0118 5B4A     		ldr	r2, .L566+28
 2789 011a 564B     		ldr	r3, .L566+8
 2790 011c A069     		ldr	r0, [r4, #24]
 2791 011e 002E     		cmp	r6, #0
 2792 0120 18BF     		it	ne
 2793 0122 1A46     		movne	r2, r3
ARM GAS  /tmp/ccgDyFqF.s 			page 50


 2794              	.L522:
 2795 0124 5949     		ldr	r1, .L566+32
 2796 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2797 012a 0299     		ldr	r1, [sp, #8]
 2798 012c A069     		ldr	r0, [r4, #24]
 2799 012e FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 2800 0132 A369     		ldr	r3, [r4, #24]
 2801 0134 93F81521 		ldrb	r2, [r3, #277]	@ zero_extendqisi2
 2802 0138 002A     		cmp	r2, #0
 2803 013a 4BD1     		bne	.L564
 2804 013c 3146     		mov	r1, r6
 2805 013e 2046     		mov	r0, r4
 2806 0140 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 2807 0144 524B     		ldr	r3, .L566+36
 2808 0146 9B6C     		ldr	r3, [r3, #72]
 2809 0148 5B07     		lsls	r3, r3, #29
 2810 014a 7FF571AF 		bpl	.L499
 2811 014e 2946     		mov	r1, r5
 2812 0150 5048     		ldr	r0, .L566+40
 2813 0152 FFF7FEFF 		bl	debugPrintf
 2814 0156 24B0     		add	sp, sp, #144
 2815              		@ sp needed
 2816 0158 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2817              	.L560:
 2818 015c 4C48     		ldr	r0, .L566+36
 2819 015e FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 2820 0162 0028     		cmp	r0, #0
 2821 0164 3FF456AF 		beq	.L501
 2822 0168 2046     		mov	r0, r4
 2823 016a FFF7FEFF 		bl	_ZN13HttpResponder12AuthenticateEv
 2824 016e 51E7     		b	.L501
 2825              	.L561:
 2826 0170 2946     		mov	r1, r5
 2827 0172 0DF10703 		add	r3, sp, #7
 2828 0176 02AA     		add	r2, sp, #8
 2829 0178 2046     		mov	r0, r4
 2830 017a FFF7FEFF 		bl	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb
 2831 017e 0028     		cmp	r0, #0
 2832 0180 70D0     		beq	.L565
 2833 0182 029B     		ldr	r3, [sp, #8]
 2834 0184 002B     		cmp	r3, #0
 2835 0186 4BD0     		beq	.L516
 2836 0188 93F81531 		ldrb	r3, [r3, #277]	@ zero_extendqisi2
 2837 018c 002B     		cmp	r3, #0
 2838 018e 3FF45CAF 		beq	.L515
 2839 0192 02A8     		add	r0, sp, #8
 2840 0194 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2841 0198 53E7     		b	.L510
 2842              	.L563:
 2843 019a 0246     		mov	r2, r0
 2844 019c 0546     		mov	r5, r0
 2845 019e 3949     		ldr	r1, .L566+24
 2846 01a0 A069     		ldr	r0, [r4, #24]
 2847 01a2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2848 01a6 2E46     		mov	r6, r5
 2849 01a8 A069     		ldr	r0, [r4, #24]
 2850 01aa 374A     		ldr	r2, .L566+28
ARM GAS  /tmp/ccgDyFqF.s 			page 51


 2851 01ac BAE7     		b	.L522
 2852              	.L562:
 2853 01ae 24AD     		add	r5, sp, #144
 2854 01b0 7923     		movs	r3, #121
 2855 01b2 05F87C7D 		strb	r7, [r5, #-124]!
 2856 01b6 03A8     		add	r0, sp, #12
 2857 01b8 374A     		ldr	r2, .L566+44
 2858 01ba 3849     		ldr	r1, .L566+48
 2859 01bc 0493     		str	r3, [sp, #16]
 2860 01be 0395     		str	r5, [sp, #12]
 2861 01c0 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 2862 01c4 3A46     		mov	r2, r7
 2863 01c6 2946     		mov	r1, r5
 2864 01c8 2046     		mov	r0, r4
 2865 01ca FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2866 01ce 24B0     		add	sp, sp, #144
 2867              		@ sp needed
 2868 01d0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2869              	.L564:
 2870 01d4 04F11800 		add	r0, r4, #24
 2871 01d8 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2872 01dc FFF7FEFF 		bl	millis
 2873 01e0 D4F8CC37 		ldr	r3, [r4, #1996]
 2874 01e4 C01A     		subs	r0, r0, r3
 2875 01e6 B0F57A7F 		cmp	r0, #1000
 2876 01ea FFF421AF 		bcc	.L499
 2877 01ee 4FF0FF32 		mov	r2, #-1
 2878 01f2 2B49     		ldr	r1, .L566+52
 2879 01f4 05A8     		add	r0, sp, #20
 2880 01f6 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2881 01fa 2A48     		ldr	r0, .L566+56
 2882 01fc FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 2883 0200 24AB     		add	r3, sp, #144
 2884 0202 43F8840D 		str	r0, [r3, #-132]!
 2885 0206 1846     		mov	r0, r3
 2886 0208 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2887 020c 05A8     		add	r0, sp, #20
 2888 020e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2889 0212 2046     		mov	r0, r4
 2890 0214 40F2EB32 		movw	r2, #1003
 2891 0218 2349     		ldr	r1, .L566+60
 2892 021a FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 2893 021e 07E7     		b	.L499
 2894              	.L516:
 2895 0220 FFF7FEFF 		bl	millis
 2896 0224 D4F8CC37 		ldr	r3, [r4, #1996]
 2897 0228 C01A     		subs	r0, r0, r3
 2898 022a B0F57A7F 		cmp	r0, #1000
 2899 022e FFF4FFAE 		bcc	.L499
 2900 0232 4FF0FF32 		mov	r2, #-1
 2901 0236 1A49     		ldr	r1, .L566+52
 2902 0238 05A8     		add	r0, sp, #20
 2903 023a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2904 023e 1948     		ldr	r0, .L566+56
 2905 0240 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 2906 0244 24AB     		add	r3, sp, #144
 2907 0246 43F8840D 		str	r0, [r3, #-132]!
ARM GAS  /tmp/ccgDyFqF.s 			page 52


 2908 024a 1846     		mov	r0, r3
 2909 024c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2910 0250 05A8     		add	r0, sp, #20
 2911 0252 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2912 0256 2046     		mov	r0, r4
 2913 0258 40F2B632 		movw	r2, #950
 2914 025c 1249     		ldr	r1, .L566+60
 2915 025e FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 2916 0262 E5E6     		b	.L499
 2917              	.L565:
 2918 0264 0298     		ldr	r0, [sp, #8]
 2919 0266 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2920 026a E1E6     		b	.L499
 2921              	.L567:
 2922              		.align	2
 2923              	.L566:
 2924 026c 14000000 		.word	.LC93
 2925 0270 48000000 		.word	.LC98
 2926 0274 00000000 		.word	.LC91
 2927 0278 00000000 		.word	.LC2
 2928 027c 1C000000 		.word	.LC94
 2929 0280 3C000000 		.word	.LC97
 2930 0284 A0000000 		.word	.LC3
 2931 0288 0C000000 		.word	.LC92
 2932 028c 54000000 		.word	.LC99
 2933 0290 00000000 		.word	reprap
 2934 0294 68000000 		.word	.LC100
 2935 0298 28000000 		.word	.LC95
 2936 029c 34000000 		.word	.LC96
 2937 02a0 00000000 		.word	.LANCHOR3
 2938 02a4 00000000 		.word	.LANCHOR4
 2939 02a8 C8000000 		.word	.LC5
 2940 02ac 98010000 		.word	.LC46
 2941              		.size	_ZN13HttpResponder16SendJsonResponseEPKc, .-_ZN13HttpResponder16SendJsonResponseEPKc
 2942              		.section	.text._ZN13HttpResponder14ProcessRequestEv,"ax",%progbits
 2943              		.align	1
 2944              		.p2align 2,,3
 2945              		.global	_ZN13HttpResponder14ProcessRequestEv
 2946              		.syntax unified
 2947              		.thumb
 2948              		.thumb_func
 2949              		.fpu fpv4-sp-d16
 2950              		.type	_ZN13HttpResponder14ProcessRequestEv, %function
 2951              	_ZN13HttpResponder14ProcessRequestEv:
 2952              		@ args = 0, pretend = 0, frame = 40
 2953              		@ frame_needed = 0, uses_anonymous_args = 0
 2954 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2955 0004 D0F8C037 		ldr	r3, [r0, #1984]
 2956 0008 012B     		cmp	r3, #1
 2957 000a 8DB0     		sub	sp, sp, #52
 2958 000c 5ED9     		bls	.L636
 2959 000e 8369     		ldr	r3, [r0, #24]
 2960 0010 0446     		mov	r4, r0
 2961 0012 93B3     		cbz	r3, .L571
 2962              	.L574:
 2963 0014 A649     		ldr	r1, .L645
 2964 0016 D4F89006 		ldr	r0, [r4, #1680]
ARM GAS  /tmp/ccgDyFqF.s 			page 53


 2965 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2966 001e 90B1     		cbz	r0, .L637
 2967 0020 A449     		ldr	r1, .L645+4
 2968 0022 D4F89406 		ldr	r0, [r4, #1684]
 2969 0026 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 2970 002a D4F89416 		ldr	r1, [r4, #1684]
 2971 002e 0028     		cmp	r0, #0
 2972 0030 54D1     		bne	.L638
 2973 0032 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2974 0034 2F2B     		cmp	r3, #47
 2975 0036 3CD0     		beq	.L639
 2976              	.L577:
 2977 0038 2046     		mov	r0, r4
 2978 003a 0122     		movs	r2, #1
 2979 003c FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2980              	.L568:
 2981 0040 0DB0     		add	sp, sp, #52
 2982              		@ sp needed
 2983 0042 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2984              	.L637:
 2985 0046 9C49     		ldr	r1, .L645+8
 2986 0048 D4F89006 		ldr	r0, [r4, #1680]
 2987 004c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2988 0050 E0B9     		cbnz	r0, .L640
 2989 0052 2046     		mov	r0, r4
 2990 0054 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2991 0058 30B1     		cbz	r0, .L582
 2992 005a 9849     		ldr	r1, .L645+12
 2993 005c D4F89006 		ldr	r0, [r4, #1680]
 2994 0060 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2995 0064 0028     		cmp	r0, #0
 2996 0066 45D1     		bne	.L641
 2997              	.L582:
 2998 0068 2046     		mov	r0, r4
 2999 006a 4FF4FA72 		mov	r2, #500
 3000 006e 9449     		ldr	r1, .L645+16
 3001 0070 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3002 0074 0DB0     		add	sp, sp, #52
 3003              		@ sp needed
 3004 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3005              	.L571:
 3006 007a 1830     		adds	r0, r0, #24
 3007 007c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3008 0080 0028     		cmp	r0, #0
 3009 0082 C7D1     		bne	.L574
 3010 0084 A060     		str	r0, [r4, #8]
 3011 0086 0DB0     		add	sp, sp, #52
 3012              		@ sp needed
 3013 0088 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3014              	.L640:
 3015 008c 8D49     		ldr	r1, .L645+20
 3016 008e A069     		ldr	r0, [r4, #24]
 3017 0090 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3018 0094 A369     		ldr	r3, [r4, #24]
 3019 0096 93F81511 		ldrb	r1, [r3, #277]	@ zero_extendqisi2
 3020 009a 31B3     		cbz	r1, .L580
 3021 009c 04F11800 		add	r0, r4, #24
ARM GAS  /tmp/ccgDyFqF.s 			page 54


 3022 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3023 00a4 2046     		mov	r0, r4
 3024 00a6 40F23C42 		movw	r2, #1084
 3025 00aa 8749     		ldr	r1, .L645+24
 3026 00ac FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 3027 00b0 C6E7     		b	.L568
 3028              	.L639:
 3029 00b2 481C     		adds	r0, r1, #1
 3030 00b4 7F49     		ldr	r1, .L645+4
 3031 00b6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3032 00ba D4F89416 		ldr	r1, [r4, #1684]
 3033 00be 0028     		cmp	r0, #0
 3034 00c0 BAD0     		beq	.L577
 3035 00c2 2046     		mov	r0, r4
 3036 00c4 0431     		adds	r1, r1, #4
 3037 00c6 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3038 00ca B9E7     		b	.L568
 3039              	.L636:
 3040 00cc 4FF4FA72 		mov	r2, #500
 3041 00d0 7E49     		ldr	r1, .L645+28
 3042 00d2 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3043 00d6 0DB0     		add	sp, sp, #52
 3044              		@ sp needed
 3045 00d8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3046              	.L638:
 3047 00dc 2046     		mov	r0, r4
 3048 00de 0331     		adds	r1, r1, #3
 3049 00e0 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3050 00e4 0DB0     		add	sp, sp, #52
 3051              		@ sp needed
 3052 00e6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3053              	.L580:
 3054 00ea 2046     		mov	r0, r4
 3055 00ec 0122     		movs	r2, #1
 3056 00ee FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 3057 00f2 A5E7     		b	.L568
 3058              	.L641:
 3059 00f4 7649     		ldr	r1, .L645+32
 3060 00f6 D4F89406 		ldr	r0, [r4, #1684]
 3061 00fa FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3062 00fe 0028     		cmp	r0, #0
 3063 0100 00F0A380 		beq	.L583
 3064              	.L586:
 3065 0104 D4F8C437 		ldr	r3, [r4, #1988]
 3066 0108 002B     		cmp	r3, #0
 3067 010a 00F0AA80 		beq	.L584
 3068 010e DFF8E881 		ldr	r8, .L645+72
 3069 0112 2746     		mov	r7, r4
 3070 0114 2646     		mov	r6, r4
 3071 0116 0025     		movs	r5, #0
 3072 0118 05E0     		b	.L589
 3073              	.L587:
 3074 011a D4F8C437 		ldr	r3, [r4, #1988]
 3075 011e 0135     		adds	r5, r5, #1
 3076 0120 AB42     		cmp	r3, r5
 3077 0122 40F29E80 		bls	.L584
 3078              	.L589:
ARM GAS  /tmp/ccgDyFqF.s 			page 55


 3079 0126 D6F8A006 		ldr	r0, [r6, #1696]
 3080 012a 4146     		mov	r1, r8
 3081 012c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3082 0130 0836     		adds	r6, r6, #8
 3083 0132 0028     		cmp	r0, #0
 3084 0134 F1D0     		beq	.L587
 3085 0136 04EBC505 		add	r5, r4, r5, lsl #3
 3086 013a D5F8A496 		ldr	r9, [r5, #1700]
 3087 013e B9F1000F 		cmp	r9, #0
 3088 0142 00F08E80 		beq	.L584
 3089 0146 D4F8C837 		ldr	r3, [r4, #1992]
 3090 014a 002B     		cmp	r3, #0
 3091 014c 00F09080 		beq	.L590
 3092 0150 DFF8A881 		ldr	r8, .L645+76
 3093 0154 2646     		mov	r6, r4
 3094 0156 0025     		movs	r5, #0
 3095 0158 05E0     		b	.L594
 3096              	.L591:
 3097 015a D4F8C837 		ldr	r3, [r4, #1992]
 3098 015e 0135     		adds	r5, r5, #1
 3099 0160 AB42     		cmp	r3, r5
 3100 0162 40F28580 		bls	.L590
 3101              	.L594:
 3102 0166 D6F8D006 		ldr	r0, [r6, #1744]
 3103 016a 4146     		mov	r1, r8
 3104 016c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3105 0170 0836     		adds	r6, r6, #8
 3106 0172 0028     		cmp	r0, #0
 3107 0174 F1D0     		beq	.L591
 3108 0176 04EBC505 		add	r5, r4, r5, lsl #3
 3109 017a 564E     		ldr	r6, .L645+36
 3110 017c D5F8D406 		ldr	r0, [r5, #1748]
 3111 0180 FFF7FEFF 		bl	atoi
 3112 0184 3368     		ldr	r3, [r6]
 3113 0186 C4F8B400 		str	r0, [r4, #180]
 3114 018a D3F8B409 		ldr	r0, [r3, #2484]
 3115 018e 5249     		ldr	r1, .L645+40
 3116 0190 0123     		movs	r3, #1
 3117 0192 4A46     		mov	r2, r9
 3118 0194 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 3119 0198 0028     		cmp	r0, #0
 3120 019a 75D0     		beq	.L642
 3121 019c 0146     		mov	r1, r0
 3122 019e 4A46     		mov	r2, r9
 3123 01a0 2046     		mov	r0, r4
 3124 01a2 FFF7FEFF 		bl	_ZN16NetworkResponder11StartUploadEP9FileStorePKc
 3125 01a6 D4F8C437 		ldr	r3, [r4, #1988]
 3126 01aa 002B     		cmp	r3, #0
 3127 01ac 67D0     		beq	.L595
 3128 01ae DFF85081 		ldr	r8, .L645+80
 3129 01b2 0025     		movs	r5, #0
 3130 01b4 04E0     		b	.L598
 3131              	.L596:
 3132 01b6 D4F8C437 		ldr	r3, [r4, #1988]
 3133 01ba 0135     		adds	r5, r5, #1
 3134 01bc AB42     		cmp	r3, r5
 3135 01be 5ED9     		bls	.L595
ARM GAS  /tmp/ccgDyFqF.s 			page 56


 3136              	.L598:
 3137 01c0 D7F8A006 		ldr	r0, [r7, #1696]
 3138 01c4 4146     		mov	r1, r8
 3139 01c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3140 01ca 0837     		adds	r7, r7, #8
 3141 01cc 0028     		cmp	r0, #0
 3142 01ce F2D0     		beq	.L596
 3143 01d0 04EBC505 		add	r5, r4, r5, lsl #3
 3144 01d4 D5F8A456 		ldr	r5, [r5, #1700]
 3145 01d8 002D     		cmp	r5, #0
 3146 01da 50D0     		beq	.L595
 3147 01dc 2422     		movs	r2, #36
 3148 01de 0021     		movs	r1, #0
 3149 01e0 03A8     		add	r0, sp, #12
 3150 01e2 FFF7FEFF 		bl	memset
 3151 01e6 03AA     		add	r2, sp, #12
 3152 01e8 2846     		mov	r0, r5
 3153 01ea 3C49     		ldr	r1, .L645+44
 3154 01ec FFF7FEFF 		bl	strptime
 3155 01f0 0028     		cmp	r0, #0
 3156 01f2 44D0     		beq	.L595
 3157 01f4 03A8     		add	r0, sp, #12
 3158 01f6 FFF7FEFF 		bl	mktime
 3159 01fa C4E93001 		strd	r0, [r4, #192]
 3160              	.L601:
 3161 01fe B36C     		ldr	r3, [r6, #72]
 3162 0200 5B07     		lsls	r3, r3, #29
 3163 0202 48D4     		bmi	.L643
 3164              	.L602:
 3165 0204 0025     		movs	r5, #0
 3166 0206 C4F8B850 		str	r5, [r4, #184]
 3167 020a 2046     		mov	r0, r4
 3168 020c FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 3169 0210 334B     		ldr	r3, .L645+48
 3170 0212 1E68     		ldr	r6, [r3]
 3171 0214 002E     		cmp	r6, #0
 3172 0216 3FF413AF 		beq	.L568
 3173 021a 324F     		ldr	r7, .L645+52
 3174 021c 3B68     		ldr	r3, [r7]
 3175 021e 9842     		cmp	r0, r3
 3176 0220 43D0     		beq	.L644
 3177 0222 2B46     		mov	r3, r5
 3178 0224 3A46     		mov	r2, r7
 3179              	.L605:
 3180 0226 0133     		adds	r3, r3, #1
 3181 0228 9E42     		cmp	r6, r3
 3182 022a 3FF409AF 		beq	.L568
 3183 022e 52F80C1F 		ldr	r1, [r2, #12]!
 3184 0232 8842     		cmp	r0, r1
 3185 0234 F7D1     		bne	.L605
 3186              	.L603:
 3187 0236 2269     		ldr	r2, [r4, #16]
 3188 0238 03EB4303 		add	r3, r3, r3, lsl #1
 3189 023c 07EB8303 		add	r3, r7, r3, lsl #2
 3190 0240 5289     		ldrh	r2, [r2, #10]
 3191 0242 5A81     		strh	r2, [r3, #10]	@ movhi
 3192 0244 0122     		movs	r2, #1
ARM GAS  /tmp/ccgDyFqF.s 			page 57


 3193 0246 1A72     		strb	r2, [r3, #8]
 3194 0248 FAE6     		b	.L568
 3195              	.L583:
 3196 024a D4F89406 		ldr	r0, [r4, #1684]
 3197 024e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3198 0250 2F2B     		cmp	r3, #47
 3199 0252 06D1     		bne	.L584
 3200 0254 0130     		adds	r0, r0, #1
 3201 0256 1E49     		ldr	r1, .L645+32
 3202 0258 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3203 025c 0028     		cmp	r0, #0
 3204 025e 7FF451AF 		bne	.L586
 3205              	.L584:
 3206 0262 2046     		mov	r0, r4
 3207 0264 4FF4FA72 		mov	r2, #500
 3208 0268 1F49     		ldr	r1, .L645+56
 3209 026a FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3210 026e E7E6     		b	.L568
 3211              	.L590:
 3212 0270 2046     		mov	r0, r4
 3213 0272 4FF4FA72 		mov	r2, #500
 3214 0276 1D49     		ldr	r1, .L645+60
 3215 0278 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3216 027c E0E6     		b	.L568
 3217              	.L595:
 3218 027e 0022     		movs	r2, #0
 3219 0280 0023     		movs	r3, #0
 3220 0282 C4E93023 		strd	r2, [r4, #192]
 3221 0286 BAE7     		b	.L601
 3222              	.L642:
 3223 0288 2046     		mov	r0, r4
 3224 028a 4FF4FA72 		mov	r2, #500
 3225 028e 1849     		ldr	r1, .L645+64
 3226 0290 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3227 0294 D4E6     		b	.L568
 3228              	.L643:
 3229 0296 D4F8B430 		ldr	r3, [r4, #180]
 3230 029a 3068     		ldr	r0, [r6]
 3231 029c 154A     		ldr	r2, .L645+68
 3232 029e 0093     		str	r3, [sp]
 3233 02a0 0121     		movs	r1, #1
 3234 02a2 4B46     		mov	r3, r9
 3235 02a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3236 02a8 ACE7     		b	.L602
 3237              	.L644:
 3238 02aa 2B46     		mov	r3, r5
 3239 02ac C3E7     		b	.L603
 3240              	.L646:
 3241 02ae 00BF     		.align	2
 3242              	.L645:
 3243 02b0 18000000 		.word	.LC102
 3244 02b4 1C000000 		.word	.LC103
 3245 02b8 20000000 		.word	.LC104
 3246 02bc 2C010000 		.word	.LC107
 3247 02c0 00010000 		.word	.LC106
 3248 02c4 28000000 		.word	.LC105
 3249 02c8 C8000000 		.word	.LC5
ARM GAS  /tmp/ccgDyFqF.s 			page 58


 3250 02cc 00000000 		.word	.LC101
 3251 02d0 34010000 		.word	.LC108
 3252 02d4 00000000 		.word	reprap
 3253 02d8 AC010000 		.word	.LC48
 3254 02dc 08010000 		.word	.LC35
 3255 02e0 00000000 		.word	.LANCHOR1
 3256 02e4 00000000 		.word	.LANCHOR2
 3257 02e8 A8010000 		.word	.LC113
 3258 02ec 50010000 		.word	.LC110
 3259 02f0 6C010000 		.word	.LC111
 3260 02f4 84010000 		.word	.LC112
 3261 02f8 98010000 		.word	.LC46
 3262 02fc 40010000 		.word	.LC109
 3263 0300 00010000 		.word	.LC34
 3264              		.size	_ZN13HttpResponder14ProcessRequestEv, .-_ZN13HttpResponder14ProcessRequestEv
 3265              		.section	.text._ZN13HttpResponder8DoUploadEv,"ax",%progbits
 3266              		.align	1
 3267              		.p2align 2,,3
 3268              		.global	_ZN13HttpResponder8DoUploadEv
 3269              		.syntax unified
 3270              		.thumb
 3271              		.thumb_func
 3272              		.fpu fpv4-sp-d16
 3273              		.type	_ZN13HttpResponder8DoUploadEv, %function
 3274              	_ZN13HttpResponder8DoUploadEv:
 3275              		@ args = 0, pretend = 0, frame = 8
 3276              		@ frame_needed = 0, uses_anonymous_args = 0
 3277 0000 30B5     		push	{r4, r5, lr}
 3278 0002 0446     		mov	r4, r0
 3279 0004 0069     		ldr	r0, [r0, #16]
 3280 0006 0368     		ldr	r3, [r0]
 3281 0008 83B0     		sub	sp, sp, #12
 3282 000a 01AA     		add	r2, sp, #4
 3283 000c 5B69     		ldr	r3, [r3, #20]
 3284 000e 6946     		mov	r1, sp
 3285 0010 9847     		blx	r3
 3286 0012 80B9     		cbnz	r0, .L665
 3287              	.L648:
 3288 0014 D4E92D32 		ldrd	r3, r2, [r4, #180]
 3289 0018 9A42     		cmp	r2, r3
 3290 001a 35D2     		bcs	.L666
 3291 001c 2069     		ldr	r0, [r4, #16]
 3292 001e 0368     		ldr	r3, [r0]
 3293 0020 DB69     		ldr	r3, [r3, #28]
 3294 0022 9847     		blx	r3
 3295 0024 08B1     		cbz	r0, .L667
 3296 0026 03B0     		add	sp, sp, #12
 3297              		@ sp needed
 3298 0028 30BD     		pop	{r4, r5, pc}
 3299              	.L667:
 3300 002a 2368     		ldr	r3, [r4]
 3301 002c 2046     		mov	r0, r4
 3302 002e 5B69     		ldr	r3, [r3, #20]
 3303 0030 9847     		blx	r3
 3304 0032 03B0     		add	sp, sp, #12
 3305              		@ sp needed
 3306 0034 30BD     		pop	{r4, r5, pc}
ARM GAS  /tmp/ccgDyFqF.s 			page 59


 3307              	.L665:
 3308 0036 2069     		ldr	r0, [r4, #16]
 3309 0038 0199     		ldr	r1, [sp, #4]
 3310 003a 0368     		ldr	r3, [r0]
 3311 003c 9B69     		ldr	r3, [r3, #24]
 3312 003e 9847     		blx	r3
 3313 0040 D4F8B830 		ldr	r3, [r4, #184]
 3314 0044 019A     		ldr	r2, [sp, #4]
 3315 0046 1344     		add	r3, r3, r2
 3316 0048 C4F8B830 		str	r3, [r4, #184]
 3317 004c 2046     		mov	r0, r4
 3318 004e FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 3319 0052 DDE90012 		ldrd	r1, r2, [sp]
 3320 0056 A06B     		ldr	r0, [r4, #56]
 3321 0058 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 3322 005c 0028     		cmp	r0, #0
 3323 005e D9D1     		bne	.L648
 3324 0060 1F4B     		ldr	r3, .L668
 3325 0062 204A     		ldr	r2, .L668+4
 3326 0064 1868     		ldr	r0, [r3]
 3327 0066 0123     		movs	r3, #1
 3328 0068 84F8C830 		strb	r3, [r4, #200]
 3329 006c 40F2B511 		movw	r1, #437
 3330 0070 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3331 0074 2368     		ldr	r3, [r4]
 3332 0076 2046     		mov	r0, r4
 3333 0078 9B69     		ldr	r3, [r3, #24]
 3334 007a 9847     		blx	r3
 3335 007c 2046     		mov	r0, r4
 3336 007e 1A49     		ldr	r1, .L668+8
 3337 0080 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3338 0084 03B0     		add	sp, sp, #12
 3339              		@ sp needed
 3340 0086 30BD     		pop	{r4, r5, pc}
 3341              	.L666:
 3342 0088 2046     		mov	r0, r4
 3343 008a FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 3344 008e 174B     		ldr	r3, .L668+12
 3345 0090 1D68     		ldr	r5, [r3]
 3346 0092 C5B1     		cbz	r5, .L651
 3347 0094 164B     		ldr	r3, .L668+16
 3348 0096 0022     		movs	r2, #0
 3349 0098 04E0     		b	.L653
 3350              	.L652:
 3351 009a 0132     		adds	r2, r2, #1
 3352 009c AA42     		cmp	r2, r5
 3353 009e 03F10C03 		add	r3, r3, #12
 3354 00a2 10D0     		beq	.L651
 3355              	.L653:
 3356 00a4 53F8081C 		ldr	r1, [r3, #-8]
 3357 00a8 8142     		cmp	r1, r0
 3358 00aa F6D1     		bne	.L652
 3359 00ac 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 3360 00ae 0029     		cmp	r1, #0
 3361 00b0 F3D0     		beq	.L652
 3362 00b2 104D     		ldr	r5, .L668+20
 3363 00b4 02EB4202 		add	r2, r2, r2, lsl #1
ARM GAS  /tmp/ccgDyFqF.s 			page 60


 3364 00b8 05EB8205 		add	r5, r5, r2, lsl #2
 3365 00bc 0023     		movs	r3, #0
 3366 00be 2B72     		strb	r3, [r5, #8]
 3367 00c0 FFF7FEFF 		bl	millis
 3368 00c4 6860     		str	r0, [r5, #4]
 3369              	.L651:
 3370 00c6 D4E93023 		ldrd	r2, [r4, #192]
 3371 00ca D4F8B410 		ldr	r1, [r4, #180]
 3372 00ce 2046     		mov	r0, r4
 3373 00d0 FFF7FEFF 		bl	_ZN16NetworkResponder12FinishUploadEmx
 3374 00d4 2046     		mov	r0, r4
 3375 00d6 0449     		ldr	r1, .L668+8
 3376 00d8 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3377 00dc 03B0     		add	sp, sp, #12
 3378              		@ sp needed
 3379 00de 30BD     		pop	{r4, r5, pc}
 3380              	.L669:
 3381              		.align	2
 3382              	.L668:
 3383 00e0 00000000 		.word	reprap
 3384 00e4 00000000 		.word	.LC114
 3385 00e8 7C010000 		.word	.LC43
 3386 00ec 00000000 		.word	.LANCHOR1
 3387 00f0 08000000 		.word	.LANCHOR2+8
 3388 00f4 00000000 		.word	.LANCHOR2
 3389              		.size	_ZN13HttpResponder8DoUploadEv, .-_ZN13HttpResponder8DoUploadEv
 3390              		.section	.text._ZN13HttpResponder4SpinEv,"ax",%progbits
 3391              		.align	1
 3392              		.p2align 2,,3
 3393              		.global	_ZN13HttpResponder4SpinEv
 3394              		.syntax unified
 3395              		.thumb
 3396              		.thumb_func
 3397              		.fpu fpv4-sp-d16
 3398              		.type	_ZN13HttpResponder4SpinEv, %function
 3399              	_ZN13HttpResponder4SpinEv:
 3400              		@ args = 0, pretend = 0, frame = 8
 3401              		@ frame_needed = 0, uses_anonymous_args = 0
 3402 0000 70B5     		push	{r4, r5, r6, lr}
 3403 0002 8368     		ldr	r3, [r0, #8]
 3404 0004 013B     		subs	r3, r3, #1
 3405 0006 82B0     		sub	sp, sp, #8
 3406 0008 0446     		mov	r4, r0
 3407 000a 042B     		cmp	r3, #4
 3408 000c 26D8     		bhi	.L683
 3409 000e DFE803F0 		tbb	[pc, r3]
 3410              	.L673:
 3411 0012 03       		.byte	(.L684-.L673)/2
 3412 0013 29       		.byte	(.L674-.L673)/2
 3413 0014 30       		.byte	(.L675-.L673)/2
 3414 0015 36       		.byte	(.L676-.L673)/2
 3415 0016 3C       		.byte	(.L677-.L673)/2
 3416 0017 00       		.p2align 1
 3417              	.L684:
 3418 0018 0026     		movs	r6, #0
 3419 001a 08E0     		b	.L672
 3420              	.L689:
ARM GAS  /tmp/ccgDyFqF.s 			page 61


 3421 001c 9DF80710 		ldrb	r1, [sp, #7]	@ zero_extendqisi2
 3422 0020 2046     		mov	r0, r4
 3423 0022 FFF7FEFF 		bl	_ZN13HttpResponder14CharFromClientEc
 3424 0026 2E46     		mov	r6, r5
 3425 0028 0546     		mov	r5, r0
 3426 002a 0028     		cmp	r0, #0
 3427 002c 3ED1     		bne	.L688
 3428              	.L672:
 3429 002e 2069     		ldr	r0, [r4, #16]
 3430 0030 0368     		ldr	r3, [r0]
 3431 0032 0DF10701 		add	r1, sp, #7
 3432 0036 1B69     		ldr	r3, [r3, #16]
 3433 0038 9847     		blx	r3
 3434 003a 0546     		mov	r5, r0
 3435 003c 0028     		cmp	r0, #0
 3436 003e EDD1     		bne	.L689
 3437 0040 002E     		cmp	r6, #0
 3438 0042 3DD1     		bne	.L690
 3439 0044 2069     		ldr	r0, [r4, #16]
 3440 0046 0368     		ldr	r3, [r0]
 3441 0048 DB69     		ldr	r3, [r3, #28]
 3442 004a 9847     		blx	r3
 3443 004c 90B3     		cbz	r0, .L682
 3444 004e FFF7FEFF 		bl	millis
 3445 0052 6369     		ldr	r3, [r4, #20]
 3446 0054 C01A     		subs	r0, r0, r3
 3447 0056 B0F5FA6F 		cmp	r0, #2000
 3448 005a 2BD2     		bcs	.L682
 3449              	.L683:
 3450 005c 0025     		movs	r5, #0
 3451              	.L671:
 3452 005e 2846     		mov	r0, r5
 3453 0060 02B0     		add	sp, sp, #8
 3454              		@ sp needed
 3455 0062 70BD     		pop	{r4, r5, r6, pc}
 3456              	.L674:
 3457 0064 0368     		ldr	r3, [r0]
 3458 0066 1B69     		ldr	r3, [r3, #16]
 3459 0068 9847     		blx	r3
 3460 006a 0125     		movs	r5, #1
 3461 006c 2846     		mov	r0, r5
 3462 006e 02B0     		add	sp, sp, #8
 3463              		@ sp needed
 3464 0070 70BD     		pop	{r4, r5, r6, pc}
 3465              	.L675:
 3466 0072 FFF7FEFF 		bl	_ZN13HttpResponder8DoUploadEv
 3467 0076 0125     		movs	r5, #1
 3468 0078 2846     		mov	r0, r5
 3469 007a 02B0     		add	sp, sp, #8
 3470              		@ sp needed
 3471 007c 70BD     		pop	{r4, r5, r6, pc}
 3472              	.L676:
 3473 007e FFF7FEFF 		bl	_ZN13HttpResponder14ProcessRequestEv
 3474 0082 0125     		movs	r5, #1
 3475 0084 2846     		mov	r0, r5
 3476 0086 02B0     		add	sp, sp, #8
 3477              		@ sp needed
ARM GAS  /tmp/ccgDyFqF.s 			page 62


 3478 0088 70BD     		pop	{r4, r5, r6, pc}
 3479              	.L677:
 3480 008a FFF7FEFF 		bl	millis
 3481 008e D4F8CC17 		ldr	r1, [r4, #1996]
 3482 0092 411A     		subs	r1, r0, r1
 3483 0094 B1F5FA6F 		cmp	r1, #2000
 3484 0098 34BF     		ite	cc
 3485 009a 0021     		movcc	r1, #0
 3486 009c 0121     		movcs	r1, #1
 3487 009e 2046     		mov	r0, r4
 3488 00a0 FFF7FEFF 		bl	_ZN13HttpResponder12SendFileInfoEb
 3489 00a4 0125     		movs	r5, #1
 3490 00a6 2846     		mov	r0, r5
 3491 00a8 02B0     		add	sp, sp, #8
 3492              		@ sp needed
 3493 00aa 70BD     		pop	{r4, r5, r6, pc}
 3494              	.L688:
 3495 00ac FFF7FEFF 		bl	millis
 3496 00b0 6061     		str	r0, [r4, #20]
 3497 00b2 D4E7     		b	.L671
 3498              	.L682:
 3499 00b4 2368     		ldr	r3, [r4]
 3500 00b6 2046     		mov	r0, r4
 3501 00b8 5B69     		ldr	r3, [r3, #20]
 3502 00ba 9847     		blx	r3
 3503 00bc 0125     		movs	r5, #1
 3504 00be CEE7     		b	.L671
 3505              	.L690:
 3506 00c0 FFF7FEFF 		bl	millis
 3507 00c4 3546     		mov	r5, r6
 3508 00c6 6061     		str	r0, [r4, #20]
 3509 00c8 C9E7     		b	.L671
 3510              		.size	_ZN13HttpResponder4SpinEv, .-_ZN13HttpResponder4SpinEv
 3511 00ca 00BF     		.section	.text._ZN13HttpResponder10InitStaticEv,"ax",%progbits
 3512              		.align	1
 3513              		.p2align 2,,3
 3514              		.global	_ZN13HttpResponder10InitStaticEv
 3515              		.syntax unified
 3516              		.thumb
 3517              		.thumb_func
 3518              		.fpu fpv4-sp-d16
 3519              		.type	_ZN13HttpResponder10InitStaticEv, %function
 3520              	_ZN13HttpResponder10InitStaticEv:
 3521              		@ args = 0, pretend = 0, frame = 0
 3522              		@ frame_needed = 0, uses_anonymous_args = 0
 3523              		@ link register save eliminated.
 3524 0000 0149     		ldr	r1, .L692
 3525 0002 0248     		ldr	r0, .L692+4
 3526 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 3527              	.L693:
 3528              		.align	2
 3529              	.L692:
 3530 0008 00000000 		.word	.LC115
 3531 000c 00000000 		.word	.LANCHOR3
 3532              		.size	_ZN13HttpResponder10InitStaticEv, .-_ZN13HttpResponder10InitStaticEv
 3533              		.section	.text._ZN13HttpResponder16HandleGCodeReplyEPKc,"ax",%progbits
 3534              		.align	1
ARM GAS  /tmp/ccgDyFqF.s 			page 63


 3535              		.p2align 2,,3
 3536              		.global	_ZN13HttpResponder16HandleGCodeReplyEPKc
 3537              		.syntax unified
 3538              		.thumb
 3539              		.thumb_func
 3540              		.fpu fpv4-sp-d16
 3541              		.type	_ZN13HttpResponder16HandleGCodeReplyEPKc, %function
 3542              	_ZN13HttpResponder16HandleGCodeReplyEPKc:
 3543              		@ args = 0, pretend = 0, frame = 16
 3544              		@ frame_needed = 0, uses_anonymous_args = 0
 3545 0000 184B     		ldr	r3, .L714
 3546 0002 1B68     		ldr	r3, [r3]
 3547 0004 03B9     		cbnz	r3, .L712
 3548 0006 7047     		bx	lr
 3549              	.L712:
 3550 0008 10B5     		push	{r4, lr}
 3551 000a 84B0     		sub	sp, sp, #16
 3552 000c 4FF0FF32 		mov	r2, #-1
 3553 0010 1549     		ldr	r1, .L714+4
 3554 0012 0446     		mov	r4, r0
 3555 0014 02A8     		add	r0, sp, #8
 3556 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3557 001a 1448     		ldr	r0, .L714+8
 3558 001c FFF7FEFF 		bl	_ZNVK11OutputStack11GetLastItemEv
 3559 0020 0190     		str	r0, [sp, #4]
 3560 0022 10B1     		cbz	r0, .L696
 3561 0024 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 3562 0028 6BB1     		cbz	r3, .L697
 3563              	.L696:
 3564 002a 01A8     		add	r0, sp, #4
 3565 002c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3566 0030 20B9     		cbnz	r0, .L713
 3567 0032 02A8     		add	r0, sp, #8
 3568 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3569 0038 04B0     		add	sp, sp, #16
 3570              		@ sp needed
 3571 003a 10BD     		pop	{r4, pc}
 3572              	.L713:
 3573 003c 0B48     		ldr	r0, .L714+8
 3574 003e 0199     		ldr	r1, [sp, #4]
 3575 0040 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3576 0044 0198     		ldr	r0, [sp, #4]
 3577              	.L697:
 3578 0046 2146     		mov	r1, r4
 3579 0048 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3580 004c 084A     		ldr	r2, .L714+12
 3581 004e 0949     		ldr	r1, .L714+16
 3582 0050 1368     		ldr	r3, [r2]
 3583 0052 02A8     		add	r0, sp, #8
 3584 0054 0133     		adds	r3, r3, #1
 3585 0056 0024     		movs	r4, #0
 3586 0058 1360     		str	r3, [r2]
 3587 005a 0C60     		str	r4, [r1]
 3588 005c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3589 0060 04B0     		add	sp, sp, #16
 3590              		@ sp needed
 3591 0062 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccgDyFqF.s 			page 64


 3592              	.L715:
 3593              		.align	2
 3594              	.L714:
 3595 0064 00000000 		.word	.LANCHOR1
 3596 0068 00000000 		.word	.LANCHOR3
 3597 006c 00000000 		.word	.LANCHOR4
 3598 0070 00000000 		.word	.LANCHOR6
 3599 0074 00000000 		.word	.LANCHOR5
 3600              		.size	_ZN13HttpResponder16HandleGCodeReplyEPKc, .-_ZN13HttpResponder16HandleGCodeReplyEPKc
 3601              		.section	.text._ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 3602              		.align	1
 3603              		.p2align 2,,3
 3604              		.global	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer
 3605              		.syntax unified
 3606              		.thumb
 3607              		.thumb_func
 3608              		.fpu fpv4-sp-d16
 3609              		.type	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer, %function
 3610              	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer:
 3611              		@ args = 0, pretend = 0, frame = 16
 3612              		@ frame_needed = 0, uses_anonymous_args = 0
 3613 0000 10B5     		push	{r4, lr}
 3614 0002 84B0     		sub	sp, sp, #16
 3615 0004 0190     		str	r0, [sp, #4]
 3616 0006 28B1     		cbz	r0, .L716
 3617 0008 0E4B     		ldr	r3, .L724
 3618 000a 1B68     		ldr	r3, [r3]
 3619 000c 23B9     		cbnz	r3, .L723
 3620 000e 01A8     		add	r0, sp, #4
 3621 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3622              	.L716:
 3623 0014 04B0     		add	sp, sp, #16
 3624              		@ sp needed
 3625 0016 10BD     		pop	{r4, pc}
 3626              	.L723:
 3627 0018 4FF0FF32 		mov	r2, #-1
 3628 001c 02A8     		add	r0, sp, #8
 3629 001e 0A49     		ldr	r1, .L724+4
 3630 0020 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3631 0024 0199     		ldr	r1, [sp, #4]
 3632 0026 0948     		ldr	r0, .L724+8
 3633 0028 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3634 002c 084A     		ldr	r2, .L724+12
 3635 002e 0949     		ldr	r1, .L724+16
 3636 0030 1368     		ldr	r3, [r2]
 3637 0032 02A8     		add	r0, sp, #8
 3638 0034 0133     		adds	r3, r3, #1
 3639 0036 0024     		movs	r4, #0
 3640 0038 1360     		str	r3, [r2]
 3641 003a 0C60     		str	r4, [r1]
 3642 003c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3643 0040 04B0     		add	sp, sp, #16
 3644              		@ sp needed
 3645 0042 10BD     		pop	{r4, pc}
 3646              	.L725:
 3647              		.align	2
 3648              	.L724:
ARM GAS  /tmp/ccgDyFqF.s 			page 65


 3649 0044 00000000 		.word	.LANCHOR1
 3650 0048 00000000 		.word	.LANCHOR3
 3651 004c 00000000 		.word	.LANCHOR4
 3652 0050 00000000 		.word	.LANCHOR6
 3653 0054 00000000 		.word	.LANCHOR5
 3654              		.size	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer, .-_ZN13HttpResponder16HandleGCodeReply
 3655              		.section	.text._ZN13HttpResponder13CheckSessionsEv,"ax",%progbits
 3656              		.align	1
 3657              		.p2align 2,,3
 3658              		.global	_ZN13HttpResponder13CheckSessionsEv
 3659              		.syntax unified
 3660              		.thumb
 3661              		.thumb_func
 3662              		.fpu fpv4-sp-d16
 3663              		.type	_ZN13HttpResponder13CheckSessionsEv, %function
 3664              	_ZN13HttpResponder13CheckSessionsEv:
 3665              		@ args = 0, pretend = 0, frame = 16
 3666              		@ frame_needed = 0, uses_anonymous_args = 0
 3667 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3668 0004 DFF8F480 		ldr	r8, .L760+28
 3669 0008 84B0     		sub	sp, sp, #16
 3670 000a FFF7FEFF 		bl	millis
 3671 000e D8F80020 		ldr	r2, [r8]
 3672 0012 82B3     		cbz	r2, .L726
 3673 0014 324B     		ldr	r3, .L760
 3674 0016 02EB4205 		add	r5, r2, r2, lsl #1
 3675 001a 03EB8505 		add	r5, r3, r5, lsl #2
 3676 001e 8446     		mov	ip, r0
 3677 0020 0C3D     		subs	r5, r5, #12
 3678 0022 A3F10C0E 		sub	lr, r3, #12
 3679 0026 0027     		movs	r7, #0
 3680 0028 02E0     		b	.L728
 3681              	.L731:
 3682 002a 4A46     		mov	r2, r9
 3683 002c 0C3D     		subs	r5, r5, #12
 3684 002e 0AB3     		cbz	r2, .L730
 3685              	.L728:
 3686 0030 6B68     		ldr	r3, [r5, #4]
 3687 0032 ACEB0303 		sub	r3, ip, r3
 3688 0036 B3F5FA5F 		cmp	r3, #8000
 3689 003a 02F1FF39 		add	r9, r2, #-1
 3690 003e F4D9     		bls	.L731
 3691 0040 D8F800A0 		ldr	r10, [r8]
 3692 0044 9245     		cmp	r10, r2
 3693 0046 0CD9     		bls	.L732
 3694 0048 0AEB4A06 		add	r6, r10, r10, lsl #1
 3695 004c 0EEB8606 		add	r6, lr, r6, lsl #2
 3696 0050 2B46     		mov	r3, r5
 3697              	.L733:
 3698 0052 1C46     		mov	r4, r3
 3699 0054 53F80C0F 		ldr	r0, [r3, #12]!	@ unaligned
 3700 0058 5968     		ldr	r1, [r3, #4]	@ unaligned
 3701 005a 9A68     		ldr	r2, [r3, #8]	@ unaligned
 3702 005c 9E42     		cmp	r6, r3
 3703 005e 07C4     		stmia	r4!, {r0, r1, r2}
 3704 0060 F7D1     		bne	.L733
 3705              	.L732:
ARM GAS  /tmp/ccgDyFqF.s 			page 66


 3706 0062 0AF1FF33 		add	r3, r10, #-1
 3707 0066 4A46     		mov	r2, r9
 3708 0068 C8F80030 		str	r3, [r8]
 3709 006c 0137     		adds	r7, r7, #1
 3710 006e 0C3D     		subs	r5, r5, #12
 3711 0070 002A     		cmp	r2, #0
 3712 0072 DDD1     		bne	.L728
 3713              	.L730:
 3714 0074 17B9     		cbnz	r7, .L757
 3715              	.L726:
 3716 0076 04B0     		add	sp, sp, #16
 3717              		@ sp needed
 3718 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3719              	.L757:
 3720 007c 194E     		ldr	r6, .L760+4
 3721 007e 1A49     		ldr	r1, .L760+8
 3722 0080 4FF0FF32 		mov	r2, #-1
 3723 0084 02A8     		add	r0, sp, #8
 3724 0086 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3725 008a 3268     		ldr	r2, [r6]
 3726 008c D8F80030 		ldr	r3, [r8]
 3727 0090 1744     		add	r7, r7, r2
 3728 0092 3760     		str	r7, [r6]
 3729 0094 CBB9     		cbnz	r3, .L758
 3730              	.L734:
 3731 0096 154C     		ldr	r4, .L760+12
 3732 0098 2368     		ldr	r3, [r4]
 3733 009a 53B1     		cbz	r3, .L736
 3734 009c 2546     		mov	r5, r4
 3735              	.L737:
 3736 009e 2846     		mov	r0, r5
 3737 00a0 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 3738 00a4 0190     		str	r0, [sp, #4]
 3739 00a6 01A8     		add	r0, sp, #4
 3740 00a8 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3741 00ac 2368     		ldr	r3, [r4]
 3742 00ae 002B     		cmp	r3, #0
 3743 00b0 F5D1     		bne	.L737
 3744              	.L736:
 3745 00b2 0F4B     		ldr	r3, .L760+16
 3746 00b4 9B6C     		ldr	r3, [r3, #72]
 3747 00b6 0022     		movs	r2, #0
 3748 00b8 5B07     		lsls	r3, r3, #29
 3749 00ba 3260     		str	r2, [r6]
 3750 00bc 08D4     		bmi	.L759
 3751              	.L735:
 3752 00be 02A8     		add	r0, sp, #8
 3753 00c0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3754 00c4 04B0     		add	sp, sp, #16
 3755              		@ sp needed
 3756 00c6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3757              	.L758:
 3758 00ca 9F42     		cmp	r7, r3
 3759 00cc F7D3     		bcc	.L735
 3760 00ce E2E7     		b	.L734
 3761              	.L759:
 3762 00d0 084B     		ldr	r3, .L760+20
ARM GAS  /tmp/ccgDyFqF.s 			page 67


 3763 00d2 0948     		ldr	r0, .L760+24
 3764 00d4 1968     		ldr	r1, [r3]
 3765 00d6 C1F11401 		rsb	r1, r1, #20
 3766 00da FFF7FEFF 		bl	debugPrintf
 3767 00de EEE7     		b	.L735
 3768              	.L761:
 3769              		.align	2
 3770              	.L760:
 3771 00e0 00000000 		.word	.LANCHOR2
 3772 00e4 00000000 		.word	.LANCHOR5
 3773 00e8 00000000 		.word	.LANCHOR3
 3774 00ec 00000000 		.word	.LANCHOR4
 3775 00f0 00000000 		.word	reprap
 3776 00f4 00000000 		.word	_ZN12OutputBuffer17usedOutputBuffersE
 3777 00f8 00000000 		.word	.LC116
 3778 00fc 00000000 		.word	.LANCHOR1
 3779              		.size	_ZN13HttpResponder13CheckSessionsEv, .-_ZN13HttpResponder13CheckSessionsEv
 3780              		.section	.text._ZN13HttpResponder17CommonDiagnosticsE11MessageType,"ax",%progbits
 3781              		.align	1
 3782              		.p2align 2,,3
 3783              		.global	_ZN13HttpResponder17CommonDiagnosticsE11MessageType
 3784              		.syntax unified
 3785              		.thumb
 3786              		.thumb_func
 3787              		.fpu fpv4-sp-d16
 3788              		.type	_ZN13HttpResponder17CommonDiagnosticsE11MessageType, %function
 3789              	_ZN13HttpResponder17CommonDiagnosticsE11MessageType:
 3790              		@ args = 0, pretend = 0, frame = 0
 3791              		@ frame_needed = 0, uses_anonymous_args = 0
 3792 0000 30B5     		push	{r4, r5, lr}
 3793 0002 074A     		ldr	r2, .L764
 3794 0004 074B     		ldr	r3, .L764+4
 3795 0006 1568     		ldr	r5, [r2]
 3796 0008 1B68     		ldr	r3, [r3]
 3797 000a 074A     		ldr	r2, .L764+8
 3798 000c 83B0     		sub	sp, sp, #12
 3799 000e 0824     		movs	r4, #8
 3800 0010 0146     		mov	r1, r0
 3801 0012 0094     		str	r4, [sp]
 3802 0014 2846     		mov	r0, r5
 3803 0016 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3804 001a 03B0     		add	sp, sp, #12
 3805              		@ sp needed
 3806 001c 30BD     		pop	{r4, r5, pc}
 3807              	.L765:
 3808 001e 00BF     		.align	2
 3809              	.L764:
 3810 0020 00000000 		.word	reprap
 3811 0024 00000000 		.word	.LANCHOR1
 3812 0028 00000000 		.word	.LC117
 3813              		.size	_ZN13HttpResponder17CommonDiagnosticsE11MessageType, .-_ZN13HttpResponder17CommonDiagnostics
 3814              		.section	.text.startup._GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder,"ax",%progbits
 3815              		.align	1
 3816              		.p2align 2,,3
 3817              		.syntax unified
 3818              		.thumb
 3819              		.thumb_func
ARM GAS  /tmp/ccgDyFqF.s 			page 68


 3820              		.fpu fpv4-sp-d16
 3821              		.type	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder, %function
 3822              	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder:
 3823              		@ args = 0, pretend = 0, frame = 0
 3824              		@ frame_needed = 0, uses_anonymous_args = 0
 3825              		@ link register save eliminated.
 3826 0000 0249     		ldr	r1, .L767
 3827 0002 034A     		ldr	r2, .L767+4
 3828 0004 0023     		movs	r3, #0
 3829 0006 0B60     		str	r3, [r1]
 3830 0008 1360     		str	r3, [r2]
 3831 000a 7047     		bx	lr
 3832              	.L768:
 3833              		.align	2
 3834              	.L767:
 3835 000c 00000000 		.word	.LANCHOR4
 3836 0010 00000000 		.word	.LANCHOR3
 3837              		.size	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder, .-_GLOBAL__sub_I__ZN13HttpResponder
 3838              		.section	.init_array,"aw",%init_array
 3839              		.align	2
 3840 0000 00000000 		.word	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder(target1)
 3841              		.section	.text._ZN13HttpResponder12CancelUploadEv,"ax",%progbits
 3842              		.align	1
 3843              		.p2align 2,,3
 3844              		.global	_ZN13HttpResponder12CancelUploadEv
 3845              		.syntax unified
 3846              		.thumb
 3847              		.thumb_func
 3848              		.fpu fpv4-sp-d16
 3849              		.type	_ZN13HttpResponder12CancelUploadEv, %function
 3850              	_ZN13HttpResponder12CancelUploadEv:
 3851              		@ args = 0, pretend = 0, frame = 0
 3852              		@ frame_needed = 0, uses_anonymous_args = 0
 3853 0000 38B5     		push	{r3, r4, r5, lr}
 3854 0002 0369     		ldr	r3, [r0, #16]
 3855 0004 0546     		mov	r5, r0
 3856 0006 E3B1     		cbz	r3, .L770
 3857 0008 104A     		ldr	r2, .L784
 3858 000a 1068     		ldr	r0, [r2]
 3859 000c C8B1     		cbz	r0, .L770
 3860 000e 1C69     		ldr	r4, [r3, #16]
 3861 0010 0F4B     		ldr	r3, .L784+4
 3862 0012 0022     		movs	r2, #0
 3863 0014 04E0     		b	.L772
 3864              	.L771:
 3865 0016 0132     		adds	r2, r2, #1
 3866 0018 8242     		cmp	r2, r0
 3867 001a 03F10C03 		add	r3, r3, #12
 3868 001e 10D0     		beq	.L770
 3869              	.L772:
 3870 0020 53F8081C 		ldr	r1, [r3, #-8]
 3871 0024 A142     		cmp	r1, r4
 3872 0026 F6D1     		bne	.L771
 3873 0028 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 3874 002a 0029     		cmp	r1, #0
 3875 002c F3D0     		beq	.L771
 3876 002e 094C     		ldr	r4, .L784+8
ARM GAS  /tmp/ccgDyFqF.s 			page 69


 3877 0030 02EB4202 		add	r2, r2, r2, lsl #1
 3878 0034 04EB8204 		add	r4, r4, r2, lsl #2
 3879 0038 0023     		movs	r3, #0
 3880 003a 2372     		strb	r3, [r4, #8]
 3881 003c FFF7FEFF 		bl	millis
 3882 0040 6060     		str	r0, [r4, #4]
 3883              	.L770:
 3884 0042 2846     		mov	r0, r5
 3885 0044 BDE83840 		pop	{r3, r4, r5, lr}
 3886 0048 FFF7FEBF 		b	_ZN16NetworkResponder12CancelUploadEv
 3887              	.L785:
 3888              		.align	2
 3889              	.L784:
 3890 004c 00000000 		.word	.LANCHOR1
 3891 0050 08000000 		.word	.LANCHOR2+8
 3892 0054 00000000 		.word	.LANCHOR2
 3893              		.size	_ZN13HttpResponder12CancelUploadEv, .-_ZN13HttpResponder12CancelUploadEv
 3894              		.section	.text._ZN13HttpResponder8SendDataEv,"ax",%progbits
 3895              		.align	1
 3896              		.p2align 2,,3
 3897              		.global	_ZN13HttpResponder8SendDataEv
 3898              		.syntax unified
 3899              		.thumb
 3900              		.thumb_func
 3901              		.fpu fpv4-sp-d16
 3902              		.type	_ZN13HttpResponder8SendDataEv, %function
 3903              	_ZN13HttpResponder8SendDataEv:
 3904              		@ args = 0, pretend = 0, frame = 0
 3905              		@ frame_needed = 0, uses_anonymous_args = 0
 3906 0000 10B5     		push	{r4, lr}
 3907 0002 0446     		mov	r4, r0
 3908 0004 FFF7FEFF 		bl	_ZN16NetworkResponder8SendDataEv
 3909 0008 A368     		ldr	r3, [r4, #8]
 3910 000a 012B     		cmp	r3, #1
 3911 000c 00D0     		beq	.L789
 3912 000e 10BD     		pop	{r4, pc}
 3913              	.L789:
 3914 0010 FFF7FEFF 		bl	millis
 3915 0014 6061     		str	r0, [r4, #20]
 3916 0016 10BD     		pop	{r4, pc}
 3917              		.size	_ZN13HttpResponder8SendDataEv, .-_ZN13HttpResponder8SendDataEv
 3918              		.global	_ZTV13HttpResponder
 3919              		.global	_ZN13HttpResponder15gcodeReplyMutexE
 3920              		.global	_ZN13HttpResponder10gcodeReplyE
 3921              		.global	_ZN13HttpResponder3seqE
 3922              		.global	_ZN13HttpResponder13clientsServedE
 3923              		.global	_ZN13HttpResponder11numSessionsE
 3924              		.global	_ZN13HttpResponder8sessionsE
 3925              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3926              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3927              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3928              	_ZL28cpu_irq_prev_interrupt_state:
 3929 0000 00       		.space	1
 3930              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3931              		.align	2
 3932              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3933              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccgDyFqF.s 			page 70


 3934              	_ZL32cpu_irq_critical_section_counter:
 3935 0000 00000000 		.space	4
 3936              		.section	.bss._ZN13HttpResponder10gcodeReplyE,"aw",%nobits
 3937              		.align	2
 3938              		.set	.LANCHOR4,. + 0
 3939              		.type	_ZN13HttpResponder10gcodeReplyE, %object
 3940              		.size	_ZN13HttpResponder10gcodeReplyE, 20
 3941              	_ZN13HttpResponder10gcodeReplyE:
 3942 0000 00000000 		.space	20
 3942      00000000 
 3942      00000000 
 3942      00000000 
 3942      00000000 
 3943              		.section	.bss._ZN13HttpResponder11numSessionsE,"aw",%nobits
 3944              		.align	2
 3945              		.set	.LANCHOR1,. + 0
 3946              		.type	_ZN13HttpResponder11numSessionsE, %object
 3947              		.size	_ZN13HttpResponder11numSessionsE, 4
 3948              	_ZN13HttpResponder11numSessionsE:
 3949 0000 00000000 		.space	4
 3950              		.section	.bss._ZN13HttpResponder13clientsServedE,"aw",%nobits
 3951              		.align	2
 3952              		.set	.LANCHOR5,. + 0
 3953              		.type	_ZN13HttpResponder13clientsServedE, %object
 3954              		.size	_ZN13HttpResponder13clientsServedE, 4
 3955              	_ZN13HttpResponder13clientsServedE:
 3956 0000 00000000 		.space	4
 3957              		.section	.bss._ZN13HttpResponder15gcodeReplyMutexE,"aw",%nobits
 3958              		.align	2
 3959              		.set	.LANCHOR3,. + 0
 3960              		.type	_ZN13HttpResponder15gcodeReplyMutexE, %object
 3961              		.size	_ZN13HttpResponder15gcodeReplyMutexE, 4
 3962              	_ZN13HttpResponder15gcodeReplyMutexE:
 3963 0000 00000000 		.space	4
 3964              		.section	.bss._ZN13HttpResponder3seqE,"aw",%nobits
 3965              		.align	2
 3966              		.set	.LANCHOR6,. + 0
 3967              		.type	_ZN13HttpResponder3seqE, %object
 3968              		.size	_ZN13HttpResponder3seqE, 4
 3969              	_ZN13HttpResponder3seqE:
 3970 0000 00000000 		.space	4
 3971              		.section	.bss._ZN13HttpResponder8sessionsE,"aw",%nobits
 3972              		.align	2
 3973              		.set	.LANCHOR2,. + 0
 3974              		.type	_ZN13HttpResponder8sessionsE, %object
 3975              		.size	_ZN13HttpResponder8sessionsE, 96
 3976              	_ZN13HttpResponder8sessionsE:
 3977 0000 00000000 		.space	96
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3978              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3979              		.align	2
 3980              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3981              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3982              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
ARM GAS  /tmp/ccgDyFqF.s 			page 71


 3983 0000 00000000 		.space	4
 3984              		.section	.rodata._ZN13HttpResponder10InitStaticEv.str1.4,"aMS",%progbits,1
 3985              		.align	2
 3986              	.LC115:
 3987 0000 48747470 		.ascii	"HttpGCodeReply\000"
 3987      47436F64 
 3987      65526570 
 3987      6C7900
 3988              		.section	.rodata._ZN13HttpResponder12SendFileInfoEb.str1.4,"aMS",%progbits,1
 3989              		.align	2
 3990              	.LC2:
 3991 0000 48545450 		.ascii	"HTTP/1.1 200 OK\012Cache-Control: no-cache, no-stor"
 3991      2F312E31 
 3991      20323030 
 3991      204F4B0A 
 3991      43616368 
 3992 0030 652C206D 		.ascii	"e, must-revalidate\012Pragma: no-cache\012Expires: "
 3992      7573742D 
 3992      72657661 
 3992      6C696461 
 3992      74650A50 
 3993 005d 300A4163 		.ascii	"0\012Access-Control-Allow-Origin: *\012Content-Type"
 3993      63657373 
 3993      2D436F6E 
 3993      74726F6C 
 3993      2D416C6C 
 3994 008a 3A206170 		.ascii	": application/json\012\000"
 3994      706C6963 
 3994      6174696F 
 3994      6E2F6A73 
 3994      6F6E0A00 
 3995 009e 0000     		.space	2
 3996              	.LC3:
 3997 00a0 436F6E74 		.ascii	"Content-Length: %u\012\000"
 3997      656E742D 
 3997      4C656E67 
 3997      74683A20 
 3997      25750A00 
 3998              	.LC4:
 3999 00b4 436F6E6E 		.ascii	"Connection: close\012\012\000"
 3999      65637469 
 3999      6F6E3A20 
 3999      636C6F73 
 3999      650A0A00 
 4000              	.LC5:
 4001 00c8 2E2E2F73 		.ascii	"../src/Networking/HttpResponder.cpp\000"
 4001      72632F4E 
 4001      6574776F 
 4001      726B696E 
 4001      672F4874 
 4002              		.section	.rodata._ZN13HttpResponder13CheckSessionsEv.str1.4,"aMS",%progbits,1
 4003              		.align	2
 4004              	.LC116:
 4005 0000 52656C65 		.ascii	"Released gcodeReply, free buffers=%u\012\000"
 4005      61736564 
 4005      2067636F 
 4005      64655265 
ARM GAS  /tmp/ccgDyFqF.s 			page 72


 4005      706C792C 
 4006              		.section	.rodata._ZN13HttpResponder13RejectMessageEPKcj.str1.4,"aMS",%progbits,1
 4007              		.align	2
 4008              	.LC13:
 4009 0000 57656273 		.ascii	"Webserver: rejecting message with: %u %s\012\000"
 4009      65727665 
 4009      723A2072 
 4009      656A6563 
 4009      74696E67 
 4010 002a 0000     		.space	2
 4011              	.LC14:
 4012 002c 48545450 		.ascii	"HTTP/1.1 %u %s\012Connection: close\012\012\000"
 4012      2F312E31 
 4012      20257520 
 4012      25730A43 
 4012      6F6E6E65 
 4013 004f 00       		.space	1
 4014              	.LC15:
 4015 0050 3C68746D 		.ascii	"<html>\012<head>\012</head>\012<body>\012<p style=\""
 4015      6C3E0A3C 
 4015      68656164 
 4015      3E0A3C2F 
 4015      68656164 
 4016 0077 666F6E74 		.ascii	"font-size: 16pt; text-align: center; margin-top:50p"
 4016      2D73697A 
 4016      653A2031 
 4016      3670743B 
 4016      20746578 
 4017 00aa 78223E59 		.ascii	"x\">Your Duet rejected the HTTP request: \000"
 4017      6F757220 
 4017      44756574 
 4017      2072656A 
 4017      65637465 
 4018 00d3 00       		.space	1
 4019              	.LC16:
 4020 00d4 25732573 		.ascii	"%s%s%s\000"
 4020      257300
 4021 00db 00       		.space	1
 4022              	.LC17:
 4023 00dc 3C2F703E 		.ascii	"</p>\012</body>\012\000"
 4023      0A3C2F62 
 4023      6F64793E 
 4023      0A00
 4024              		.section	.rodata._ZN13HttpResponder14CharFromClientEc.str1.4,"aMS",%progbits,1
 4025              		.align	2
 4026              	.LC18:
 4027 0000 746F6F20 		.ascii	"too many command words\000"
 4027      6D616E79 
 4027      20636F6D 
 4027      6D616E64 
 4027      20776F72 
 4028 0017 00       		.space	1
 4029              	.LC19:
 4030 0018 62616420 		.ascii	"bad qualifier key\000"
 4030      7175616C 
 4030      69666965 
 4030      72206B65 
ARM GAS  /tmp/ccgDyFqF.s 			page 73


 4030      7900
 4031 002a 0000     		.space	2
 4032              	.LC20:
 4033 002c 746F6F20 		.ascii	"too many keys in qualifier\000"
 4033      6D616E79 
 4033      206B6579 
 4033      7320696E 
 4033      20717561 
 4034 0047 00       		.space	1
 4035              	.LC21:
 4036 0048 62616420 		.ascii	"bad escape\000"
 4036      65736361 
 4036      706500
 4037 0053 00       		.space	1
 4038              	.LC22:
 4039 0054 756E6578 		.ascii	"unexpected newline\000"
 4039      70656374 
 4039      6564206E 
 4039      65776C69 
 4039      6E6500
 4040 0067 00       		.space	1
 4041              	.LC23:
 4042 0068 746F6F20 		.ascii	"too many header key-value pairs\000"
 4042      6D616E79 
 4042      20686561 
 4042      64657220 
 4042      6B65792D 
 4043              	.LC24:
 4044 0088 6F766572 		.ascii	"overflow\000"
 4044      666C6F77 
 4044      00
 4045              		.section	.rodata._ZN13HttpResponder14ProcessMessageEv.str1.4,"aMS",%progbits,1
 4046              		.align	2
 4047              	.LC8:
 4048 0000 48545450 		.ascii	"HTTP req, command words {\000"
 4048      20726571 
 4048      2C20636F 
 4048      6D6D616E 
 4048      6420776F 
 4049 001a 0000     		.space	2
 4050              	.LC9:
 4051 001c 20257300 		.ascii	" %s\000"
 4052              	.LC10:
 4053 0020 207D2C20 		.ascii	" }, parameters {\000"
 4053      70617261 
 4053      6D657465 
 4053      7273207B 
 4053      00
 4054 0031 000000   		.space	3
 4055              	.LC11:
 4056 0034 2025733D 		.ascii	" %s=%s\000"
 4056      257300
 4057 003b 00       		.space	1
 4058              	.LC12:
 4059 003c 207D0A00 		.ascii	" }\012\000"
 4060              		.section	.rodata._ZN13HttpResponder14ProcessRequestEv.str1.4,"aMS",%progbits,1
 4061              		.align	2
ARM GAS  /tmp/ccgDyFqF.s 			page 74


 4062              	.LC101:
 4063 0000 746F6F20 		.ascii	"too few command words\000"
 4063      66657720 
 4063      636F6D6D 
 4063      616E6420 
 4063      776F7264 
 4064 0016 0000     		.space	2
 4065              	.LC102:
 4066 0018 47455400 		.ascii	"GET\000"
 4067              	.LC103:
 4068 001c 72725F00 		.ascii	"rr_\000"
 4069              	.LC104:
 4070 0020 4F505449 		.ascii	"OPTIONS\000"
 4070      4F4E5300 
 4071              	.LC105:
 4072 0028 48545450 		.ascii	"HTTP/1.1 200 OK\012Allow: OPTIONS, GET, POST\012Cac"
 4072      2F312E31 
 4072      20323030 
 4072      204F4B0A 
 4072      416C6C6F 
 4073 0055 68652D43 		.ascii	"he-Control: no-cache, no-store, must-revalidate\012"
 4073      6F6E7472 
 4073      6F6C3A20 
 4073      6E6F2D63 
 4073      61636865 
 4074 0085 50726167 		.ascii	"Pragma: no-cache\012Expires: 0\012Access-Control-Al"
 4074      6D613A20 
 4074      6E6F2D63 
 4074      61636865 
 4074      0A457870 
 4075 00b2 6C6F772D 		.ascii	"low-Origin: *\012Access-Control-Allow-Headers: Cont"
 4075      4F726967 
 4075      696E3A20 
 4075      2A0A4163 
 4075      63657373 
 4076 00e2 656E742D 		.ascii	"ent-Type\012Content-Length: 0\012\012\000"
 4076      54797065 
 4076      0A436F6E 
 4076      74656E74 
 4076      2D4C656E 
 4077 00ff 00       		.space	1
 4078              	.LC106:
 4079 0100 556E6B6E 		.ascii	"Unknown message type or not authenticated\000"
 4079      6F776E20 
 4079      6D657373 
 4079      61676520 
 4079      74797065 
 4080 012a 0000     		.space	2
 4081              	.LC107:
 4082 012c 504F5354 		.ascii	"POST\000"
 4082      00
 4083 0131 000000   		.space	3
 4084              	.LC108:
 4085 0134 72725F75 		.ascii	"rr_upload\000"
 4085      706C6F61 
 4085      6400
 4086 013e 0000     		.space	2
ARM GAS  /tmp/ccgDyFqF.s 			page 75


 4087              	.LC109:
 4088 0140 436F6E74 		.ascii	"Content-Length\000"
 4088      656E742D 
 4088      4C656E67 
 4088      746800
 4089 014f 00       		.space	1
 4090              	.LC110:
 4091 0150 696E7661 		.ascii	"invalid POST upload request\000"
 4091      6C696420 
 4091      504F5354 
 4091      2075706C 
 4091      6F616420 
 4092              	.LC111:
 4093 016c 636F756C 		.ascii	"could not create file\000"
 4093      64206E6F 
 4093      74206372 
 4093      65617465 
 4093      2066696C 
 4094 0182 0000     		.space	2
 4095              	.LC112:
 4096 0184 53746172 		.ascii	"Start uploading file %s length %lu\012\000"
 4096      74207570 
 4096      6C6F6164 
 4096      696E6720 
 4096      66696C65 
 4097              	.LC113:
 4098 01a8 6F6E6C79 		.ascii	"only rr_upload is supported for POST requests\000"
 4098      2072725F 
 4098      75706C6F 
 4098      61642069 
 4098      73207375 
 4099              		.section	.rodata._ZN13HttpResponder14SendGCodeReplyEv.str1.4,"aMS",%progbits,1
 4100              		.align	2
 4101              	.LC6:
 4102 0000 53656E64 		.ascii	"Sending G-Code reply to HTTP client %d of %d (lengt"
 4102      696E6720 
 4102      472D436F 
 4102      64652072 
 4102      65706C79 
 4103 0033 68202575 		.ascii	"h %u)\012\000"
 4103      290A00
 4104 003a 0000     		.space	2
 4105              	.LC7:
 4106 003c 48545450 		.ascii	"HTTP/1.1 200 OK\012Cache-Control: no-cache, no-stor"
 4106      2F312E31 
 4106      20323030 
 4106      204F4B0A 
 4106      43616368 
 4107 006c 652C206D 		.ascii	"e, must-revalidate\012Pragma: no-cache\012Expires: "
 4107      7573742D 
 4107      72657661 
 4107      6C696461 
 4107      74650A50 
 4108 0099 300A4163 		.ascii	"0\012Access-Control-Allow-Origin: *\012Content-Type"
 4108      63657373 
 4108      2D436F6E 
 4108      74726F6C 
ARM GAS  /tmp/ccgDyFqF.s 			page 76


 4108      2D416C6C 
 4109 00c6 3A207465 		.ascii	": text/plain\012\000"
 4109      78742F70 
 4109      6C61696E 
 4109      0A00
 4110              		.section	.rodata._ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb.str1.4,"aMS",%progbits,
 4111              		.align	2
 4112              	.LC25:
 4113 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 4113      636F6465 
 4113      732F00
 4114 000b 00       		.space	1
 4115              	.LC26:
 4116 000c 636F6E6E 		.ascii	"connect\000"
 4116      65637400 
 4117              	.LC27:
 4118 0014 70617373 		.ascii	"password\000"
 4118      776F7264 
 4118      00
 4119 001d 000000   		.space	3
 4120              	.LC28:
 4121 0020 7B226572 		.ascii	"{\"err\":1}\000"
 4121      72223A31 
 4121      7D00
 4122 002a 0000     		.space	2
 4123              	.LC29:
 4124 002c 48545450 		.ascii	"HTTP client %s attempted login with incorrect passw"
 4124      20636C69 
 4124      656E7420 
 4124      25732061 
 4124      7474656D 
 4125 005f 6F72640A 		.ascii	"ord\012\000"
 4125      00
 4126              	.LC30:
 4127 0064 7B226572 		.ascii	"{\"err\":2}\000"
 4127      72223A32 
 4127      7D00
 4128 006e 0000     		.space	2
 4129              	.LC31:
 4130 0070 48545450 		.ascii	"HTTP client %s attempted login but no more sessions"
 4130      20636C69 
 4130      656E7420 
 4130      25732061 
 4130      7474656D 
 4131 00a3 20617661 		.ascii	" available\012\000"
 4131      696C6162 
 4131      6C650A00 
 4132 00af 00       		.space	1
 4133              	.LC32:
 4134 00b0 7B226572 		.ascii	"{\"err\":0,\"sessionTimeout\":%lu,\"boardType\":\"%"
 4134      72223A30 
 4134      2C227365 
 4134      7373696F 
 4134      6E54696D 
 4135 00dc 73227D00 		.ascii	"s\"}\000"
 4136              	.LC33:
 4137 00e0 48545450 		.ascii	"HTTP client %s login succeeded\012\000"
ARM GAS  /tmp/ccgDyFqF.s 			page 77


 4137      20636C69 
 4137      656E7420 
 4137      2573206C 
 4137      6F67696E 
 4138              	.LC34:
 4139 0100 74696D65 		.ascii	"time\000"
 4139      00
 4140 0105 000000   		.space	3
 4141              	.LC35:
 4142 0108 25592D25 		.ascii	"%Y-%m-%dT%H:%M:%S\000"
 4142      6D2D2564 
 4142      5425483A 
 4142      254D3A25 
 4142      5300
 4143 011a 0000     		.space	2
 4144              	.LC36:
 4145 011c 4E6F7420 		.ascii	"Not authorized\000"
 4145      61757468 
 4145      6F72697A 
 4145      656400
 4146 012b 00       		.space	1
 4147              	.LC37:
 4148 012c 64697363 		.ascii	"disconnect\000"
 4148      6F6E6E65 
 4148      637400
 4149 0137 00       		.space	1
 4150              	.LC38:
 4151 0138 7B226572 		.ascii	"{\"err\":%d}\000"
 4151      72223A25 
 4151      647D00
 4152 0143 00       		.space	1
 4153              	.LC39:
 4154 0144 48545450 		.ascii	"HTTP client %s disconnected\012\000"
 4154      20636C69 
 4154      656E7420 
 4154      25732064 
 4154      6973636F 
 4155 0161 000000   		.space	3
 4156              	.LC40:
 4157 0164 73746174 		.ascii	"status\000"
 4157      757300
 4158 016b 00       		.space	1
 4159              	.LC41:
 4160 016c 74797065 		.ascii	"type\000"
 4160      00
 4161 0171 000000   		.space	3
 4162              	.LC42:
 4163 0174 67636F64 		.ascii	"gcode\000"
 4163      6500
 4164 017a 0000     		.space	2
 4165              	.LC43:
 4166 017c 75706C6F 		.ascii	"upload\000"
 4166      616400
 4167 0183 00       		.space	1
 4168              	.LC44:
 4169 0184 7B226275 		.ascii	"{\"buff\":%u}\000"
 4169      6666223A 
ARM GAS  /tmp/ccgDyFqF.s 			page 78


 4169      25757D00 
 4170              	.LC45:
 4171 0190 64656C65 		.ascii	"delete\000"
 4171      746500
 4172 0197 00       		.space	1
 4173              	.LC46:
 4174 0198 6E616D65 		.ascii	"name\000"
 4174      00
 4175 019d 000000   		.space	3
 4176              	.LC47:
 4177 01a0 66696C65 		.ascii	"filelist\000"
 4177      6C697374 
 4177      00
 4178 01a9 000000   		.space	3
 4179              	.LC48:
 4180 01ac 303A00   		.ascii	"0:\000"
 4181 01af 00       		.space	1
 4182              	.LC49:
 4183 01b0 64697200 		.ascii	"dir\000"
 4184              	.LC50:
 4185 01b4 66696C65 		.ascii	"files\000"
 4185      7300
 4186 01ba 0000     		.space	2
 4187              	.LC51:
 4188 01bc 66697273 		.ascii	"first\000"
 4188      7400
 4189 01c2 0000     		.space	2
 4190              	.LC52:
 4191 01c4 666C6167 		.ascii	"flagDirs\000"
 4191      44697273 
 4191      00
 4192 01cd 000000   		.space	3
 4193              	.LC53:
 4194 01d0 66696C65 		.ascii	"fileinfo\000"
 4194      696E666F 
 4194      00
 4195 01d9 000000   		.space	3
 4196              	.LC54:
 4197 01dc 6D6F7665 		.ascii	"move\000"
 4197      00
 4198 01e1 000000   		.space	3
 4199              	.LC55:
 4200 01e4 6F6C6400 		.ascii	"old\000"
 4201              	.LC56:
 4202 01e8 6E657700 		.ascii	"new\000"
 4203              	.LC57:
 4204 01ec 64656C65 		.ascii	"deleteexisting\000"
 4204      74656578 
 4204      69737469 
 4204      6E6700
 4205 01fb 00       		.space	1
 4206              	.LC58:
 4207 01fc 79657300 		.ascii	"yes\000"
 4208              	.LC59:
 4209 0200 6D6B6469 		.ascii	"mkdir\000"
 4209      7200
 4210 0206 0000     		.space	2
ARM GAS  /tmp/ccgDyFqF.s 			page 79


 4211              	.LC60:
 4212 0208 636F6E66 		.ascii	"config\000"
 4212      696700
 4213 020f 00       		.space	1
 4214              	.LC61:
 4215 0210 556E6B6E 		.ascii	"Unknown request\000"
 4215      6F776E20 
 4215      72657175 
 4215      65737400 
 4216              		.section	.rodata._ZN13HttpResponder16SendJsonResponseEPKc.str1.4,"aMS",%progbits,1
 4217              		.align	2
 4218              	.LC91:
 4219 0000 6B656570 		.ascii	"keep-alive\000"
 4219      2D616C69 
 4219      766500
 4220 000b 00       		.space	1
 4221              	.LC92:
 4222 000c 636C6F73 		.ascii	"close\000"
 4222      6500
 4223 0012 0000     		.space	2
 4224              	.LC93:
 4225 0014 7265706C 		.ascii	"reply\000"
 4225      7900
 4226 001a 0000     		.space	2
 4227              	.LC94:
 4228 001c 636F6E66 		.ascii	"configfile\000"
 4228      69676669 
 4228      6C6500
 4229 0027 00       		.space	1
 4230              	.LC95:
 4231 0028 636F6E66 		.ascii	"config.g\000"
 4231      69672E67 
 4231      00
 4232 0031 000000   		.space	3
 4233              	.LC96:
 4234 0034 303A2F73 		.ascii	"0:/sys/\000"
 4234      79732F00 
 4235              	.LC97:
 4236 003c 646F776E 		.ascii	"download\000"
 4236      6C6F6164 
 4236      00
 4237 0045 000000   		.space	3
 4238              	.LC98:
 4239 0048 436F6E6E 		.ascii	"Connection\000"
 4239      65637469 
 4239      6F6E00
 4240 0053 00       		.space	1
 4241              	.LC99:
 4242 0054 436F6E6E 		.ascii	"Connection: %s\012\012\000"
 4242      65637469 
 4242      6F6E3A20 
 4242      25730A0A 
 4242      00
 4243 0065 000000   		.space	3
 4244              	.LC100:
 4245 0068 53656E64 		.ascii	"Sending JSON reply, length %u\012\000"
 4245      696E6720 
ARM GAS  /tmp/ccgDyFqF.s 			page 80


 4245      4A534F4E 
 4245      20726570 
 4245      6C792C20 
 4246              		.section	.rodata._ZN13HttpResponder17CommonDiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 4247              		.align	2
 4248              	.LC117:
 4249 0000 48545450 		.ascii	"HTTP sessions: %u of %u\012\000"
 4249      20736573 
 4249      73696F6E 
 4249      733A2025 
 4249      75206F66 
 4250              		.section	.rodata._ZN13HttpResponder6AcceptEP6Socketh.str1.4,"aMS",%progbits,1
 4251              		.align	2
 4252              	.LC1:
 4253 0000 48545450 		.ascii	"HTTP connection accepted\012\000"
 4253      20636F6E 
 4253      6E656374 
 4253      696F6E20 
 4253      61636365 
 4254              		.section	.rodata._ZN13HttpResponder8DoUploadEv.str1.4,"aMS",%progbits,1
 4255              		.align	2
 4256              	.LC114:
 4257 0000 436F756C 		.ascii	"Could not write upload data!\012\000"
 4257      64206E6F 
 4257      74207772 
 4257      69746520 
 4257      75706C6F 
 4258              		.section	.rodata._ZN13HttpResponder8SendFileEPKcb.str1.4,"aMS",%progbits,1
 4259              		.align	2
 4260              	.LC62:
 4261 0000 72657072 		.ascii	"reprap.htm\000"
 4261      61702E68 
 4261      746D00
 4262 000b 00       		.space	1
 4263              	.LC63:
 4264 000c 74657874 		.ascii	"text/plain\000"
 4264      2F706C61 
 4264      696E00
 4265 0017 00       		.space	1
 4266              	.LC64:
 4267 0018 6170706C 		.ascii	"application/javascript\000"
 4267      69636174 
 4267      696F6E2F 
 4267      6A617661 
 4267      73637269 
 4268 002f 00       		.space	1
 4269              	.LC65:
 4270 0030 74657874 		.ascii	"text/css\000"
 4270      2F637373 
 4270      00
 4271 0039 000000   		.space	3
 4272              	.LC66:
 4273 003c 74657874 		.ascii	"text/html\000"
 4273      2F68746D 
 4273      6C00
 4274 0046 0000     		.space	2
 4275              	.LC67:
ARM GAS  /tmp/ccgDyFqF.s 			page 81


 4276 0048 6170706C 		.ascii	"application/octet-stream\000"
 4276      69636174 
 4276      696F6E2F 
 4276      6F637465 
 4276      742D7374 
 4277 0061 000000   		.space	3
 4278              	.LC68:
 4279 0064 68746D6C 		.ascii	"html404.htm\000"
 4279      3430342E 
 4279      68746D00 
 4280              	.LC69:
 4281 0070 2E677A00 		.ascii	".gz\000"
 4282              	.LC70:
 4283 0074 303A2F77 		.ascii	"0:/www/\000"
 4283      77772F00 
 4284              	.LC71:
 4285 007c 2E68746D 		.ascii	".html\000"
 4285      6C00
 4286 0082 0000     		.space	2
 4287              	.LC72:
 4288 0084 2E68746D 		.ascii	".htm\000"
 4288      00
 4289 0089 000000   		.space	3
 4290              	.LC73:
 4291 008c 70616765 		.ascii	"page not found\000"
 4291      206E6F74 
 4291      20666F75 
 4291      6E6400
 4292 009b 00       		.space	1
 4293              	.LC74:
 4294 009c 66696C65 		.ascii	"file not found\000"
 4294      206E6F74 
 4294      20666F75 
 4294      6E6400
 4295 00ab 00       		.space	1
 4296              	.LC75:
 4297 00ac 48545450 		.ascii	"HTTP/1.1 200 OK\012\000"
 4297      2F312E31 
 4297      20323030 
 4297      204F4B0A 
 4297      00
 4298 00bd 000000   		.space	3
 4299              	.LC76:
 4300 00c0 43616368 		.ascii	"Cache-Control: no-cache, no-store, must-revalidate\012"
 4300      652D436F 
 4300      6E74726F 
 4300      6C3A206E 
 4300      6F2D6361 
 4301 00f3 50726167 		.ascii	"Pragma: no-cache\012Expires: 0\012Access-Control-Al"
 4301      6D613A20 
 4301      6E6F2D63 
 4301      61636865 
 4301      0A457870 
 4302 0120 6C6F772D 		.ascii	"low-Origin: *\012\000"
 4302      4F726967 
 4302      696E3A20 
 4302      2A0A00
ARM GAS  /tmp/ccgDyFqF.s 			page 82


 4303 012f 00       		.space	1
 4304              	.LC77:
 4305 0130 2E706E67 		.ascii	".png\000"
 4305      00
 4306 0135 000000   		.space	3
 4307              	.LC78:
 4308 0138 2E6A7300 		.ascii	".js\000"
 4309              	.LC79:
 4310 013c 2E637373 		.ascii	".css\000"
 4310      00
 4311 0141 000000   		.space	3
 4312              	.LC80:
 4313 0144 2E7A6970 		.ascii	".zip\000"
 4313      00
 4314 0149 000000   		.space	3
 4315              	.LC81:
 4316 014c 6170706C 		.ascii	"application/zip\000"
 4316      69636174 
 4316      696F6E2F 
 4316      7A697000 
 4317              	.LC82:
 4318 015c 436F6E74 		.ascii	"Content-Type: %s\012\000"
 4318      656E742D 
 4318      54797065 
 4318      3A202573 
 4318      0A00
 4319 016e 0000     		.space	2
 4320              	.LC83:
 4321 0170 2E6700   		.ascii	".g\000"
 4322 0173 00       		.space	1
 4323              	.LC84:
 4324 0174 2E676300 		.ascii	".gc\000"
 4325              	.LC85:
 4326 0178 2E67636F 		.ascii	".gcode\000"
 4326      646500
 4327 017f 00       		.space	1
 4328              	.LC86:
 4329 0180 436F6E74 		.ascii	"Content-Encoding: gzip\012\000"
 4329      656E742D 
 4329      456E636F 
 4329      64696E67 
 4329      3A20677A 
 4330              	.LC87:
 4331 0198 436F6E74 		.ascii	"Content-Length: %lu\012\000"
 4331      656E742D 
 4331      4C656E67 
 4331      74683A20 
 4331      256C750A 
 4332 01ad 000000   		.space	3
 4333              	.LC88:
 4334 01b0 696D6167 		.ascii	"image/png\000"
 4334      652F706E 
 4334      6700
 4335 01ba 0000     		.space	2
 4336              	.LC89:
 4337 01bc 696D6167 		.ascii	"image/x-icon\000"
 4337      652F782D 
ARM GAS  /tmp/ccgDyFqF.s 			page 83


 4337      69636F6E 
 4337      00
 4338 01c9 000000   		.space	3
 4339              	.LC90:
 4340 01cc 2E69636F 		.ascii	".ico\000"
 4340      00
 4341              		.section	.rodata._ZNK13HttpResponder11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 4342              		.align	2
 4343              	.LC0:
 4344 0000 20485454 		.ascii	" HTTP(%d)\000"
 4344      50282564 
 4344      2900
 4345              		.section	.rodata._ZTV13HttpResponder,"a",%progbits
 4346              		.align	2
 4347              		.set	.LANCHOR0,. + 0
 4348              		.type	_ZTV13HttpResponder, %object
 4349              		.size	_ZTV13HttpResponder, 36
 4350              	_ZTV13HttpResponder:
 4351 0000 00000000 		.word	0
 4352 0004 00000000 		.word	0
 4353 0008 00000000 		.word	_ZN13HttpResponder4SpinEv
 4354 000c 00000000 		.word	_ZN13HttpResponder6AcceptEP6Socketh
 4355 0010 00000000 		.word	_ZN13HttpResponder9TerminateEh
 4356 0014 00000000 		.word	_ZNK13HttpResponder11DiagnosticsE11MessageType
 4357 0018 00000000 		.word	_ZN13HttpResponder8SendDataEv
 4358 001c 00000000 		.word	_ZN16NetworkResponder14ConnectionLostEv
 4359 0020 00000000 		.word	_ZN13HttpResponder12CancelUploadEv
 4360              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
