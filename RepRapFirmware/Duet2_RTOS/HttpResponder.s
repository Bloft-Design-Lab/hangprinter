ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK13HttpResponder11DiagnosticsE11MessageType,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZNK13HttpResponder11DiagnosticsE11MessageType
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK13HttpResponder11DiagnosticsE11MessageType, %function
  24              	_ZNK13HttpResponder11DiagnosticsE11MessageType:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 10B4     		push	{r4}
  29 0002 044C     		ldr	r4, .L4
  30 0004 8368     		ldr	r3, [r0, #8]
  31 0006 044A     		ldr	r2, .L4+4
  32 0008 6068     		ldr	r0, [r4, #4]	@ unaligned
  33 000a 5DF8044B 		ldr	r4, [sp], #4
  34 000e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  35              	.L5:
  36 0012 00BF     		.align	2
  37              	.L4:
  38 0014 00000000 		.word	reprap
  39 0018 00000000 		.word	.LC0
  40              		.size	_ZNK13HttpResponder11DiagnosticsE11MessageType, .-_ZNK13HttpResponder11DiagnosticsE11Message
  41              		.section	.text._ZN13HttpResponder9TerminateEh,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN13HttpResponder9TerminateEh
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN13HttpResponder9TerminateEh, %function
  50              	_ZN13HttpResponder9TerminateEh:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 8268     		ldr	r2, [r0, #8]
  55 0002 1AB1     		cbz	r2, .L6
  56 0004 0139     		subs	r1, r1, #1
  57 0006 C9B2     		uxtb	r1, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 2


  58 0008 FD29     		cmp	r1, #253
  59 000a 00D8     		bhi	.L11
  60              	.L6:
  61 000c 7047     		bx	lr
  62              	.L11:
  63 000e 0368     		ldr	r3, [r0]
  64 0010 5B69     		ldr	r3, [r3, #20]
  65 0012 1847     		bx	r3	@ indirect register sibling call
  66              		.size	_ZN13HttpResponder9TerminateEh, .-_ZN13HttpResponder9TerminateEh
  67              		.section	.text._ZN13HttpResponder6AcceptEP6Socketh,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_ZN13HttpResponder6AcceptEP6Socketh
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZN13HttpResponder6AcceptEP6Socketh, %function
  76              	_ZN13HttpResponder6AcceptEP6Socketh:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 8368     		ldr	r3, [r0, #8]
  80 0002 03B9     		cbnz	r3, .L14
  81 0004 0AB1     		cbz	r2, .L21
  82              	.L14:
  83 0006 0020     		movs	r0, #0
  84 0008 7047     		bx	lr
  85              	.L21:
  86 000a 70B5     		push	{r4, r5, r6, lr}
  87 000c 0124     		movs	r4, #1
  88 000e 0161     		str	r1, [r0, #16]
  89 0010 8460     		str	r4, [r0, #8]
  90 0012 0546     		mov	r5, r0
  91 0014 1646     		mov	r6, r2
  92 0016 FFF7FEFF 		bl	millis
  93 001a 0D4B     		ldr	r3, .L23
  94 001c 6861     		str	r0, [r5, #20]
  95 001e C5F8CC60 		str	r6, [r5, #204]
  96 0022 D3F80831 		ldr	r3, [r3, #264]
  97 0026 C5F88866 		str	r6, [r5, #1672]
  98 002a 05F1D002 		add	r2, r5, #208
  99 002e 5B07     		lsls	r3, r3, #29
 100 0030 C5F8C067 		str	r6, [r5, #1984]
 101 0034 C5F8C467 		str	r6, [r5, #1988]
 102 0038 C5F8C867 		str	r6, [r5, #1992]
 103 003c C5F89026 		str	r2, [r5, #1680]
 104 0040 01D4     		bmi	.L22
 105 0042 2046     		mov	r0, r4
 106 0044 70BD     		pop	{r4, r5, r6, pc}
 107              	.L22:
 108 0046 0348     		ldr	r0, .L23+4
 109 0048 FFF7FEFF 		bl	debugPrintf
 110 004c 2046     		mov	r0, r4
 111 004e 70BD     		pop	{r4, r5, r6, pc}
 112              	.L24:
 113              		.align	2
 114              	.L23:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 3


 115 0050 00000000 		.word	reprap
 116 0054 00000000 		.word	.LC1
 117              		.size	_ZN13HttpResponder6AcceptEP6Socketh, .-_ZN13HttpResponder6AcceptEP6Socketh
 118              		.section	.text._ZN13HttpResponderC2EP16NetworkResponder,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	_ZN13HttpResponderC2EP16NetworkResponder
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	_ZN13HttpResponderC2EP16NetworkResponder, %function
 127              	_ZN13HttpResponderC2EP16NetworkResponder:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130 0000 10B5     		push	{r4, lr}
 131 0002 0446     		mov	r4, r0
 132 0004 FFF7FEFF 		bl	_ZN16NetworkResponderC2EPS_
 133 0008 014B     		ldr	r3, .L27
 134 000a 2360     		str	r3, [r4]
 135 000c 2046     		mov	r0, r4
 136 000e 10BD     		pop	{r4, pc}
 137              	.L28:
 138              		.align	2
 139              	.L27:
 140 0010 08000000 		.word	.LANCHOR0+8
 141              		.size	_ZN13HttpResponderC2EP16NetworkResponder, .-_ZN13HttpResponderC2EP16NetworkResponder
 142              		.global	_ZN13HttpResponderC1EP16NetworkResponder
 143              		.thumb_set _ZN13HttpResponderC1EP16NetworkResponder,_ZN13HttpResponderC2EP16NetworkResponder
 144              		.section	.text._ZNK13HttpResponder11GetKeyValueEPKc,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZNK13HttpResponder11GetKeyValueEPKc
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZNK13HttpResponder11GetKeyValueEPKc, %function
 153              	_ZNK13HttpResponder11GetKeyValueEPKc:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 157 0002 D0F8C437 		ldr	r3, [r0, #1988]
 158 0006 B3B1     		cbz	r3, .L30
 159 0008 0F46     		mov	r7, r1
 160 000a 0646     		mov	r6, r0
 161 000c 0446     		mov	r4, r0
 162 000e 0025     		movs	r5, #0
 163 0010 04E0     		b	.L33
 164              	.L31:
 165 0012 D6F8C437 		ldr	r3, [r6, #1988]
 166 0016 0135     		adds	r5, r5, #1
 167 0018 AB42     		cmp	r3, r5
 168 001a 0CD9     		bls	.L30
 169              	.L33:
 170 001c D4F8A006 		ldr	r0, [r4, #1696]
 171 0020 3946     		mov	r1, r7
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 4


 172 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 173 0026 0834     		adds	r4, r4, #8
 174 0028 0028     		cmp	r0, #0
 175 002a F2D0     		beq	.L31
 176 002c 06EBC505 		add	r5, r6, r5, lsl #3
 177 0030 D5F8A406 		ldr	r0, [r5, #1700]
 178 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 179              	.L30:
 180 0036 0020     		movs	r0, #0
 181 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 182              		.size	_ZNK13HttpResponder11GetKeyValueEPKc, .-_ZNK13HttpResponder11GetKeyValueEPKc
 183 003a 00BF     		.section	.text._ZN13HttpResponder12SendFileInfoEb,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN13HttpResponder12SendFileInfoEb
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN13HttpResponder12SendFileInfoEb, %function
 192              	_ZN13HttpResponder12SendFileInfoEb:
 193              		@ args = 0, pretend = 0, frame = 8
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 70B5     		push	{r4, r5, r6, lr}
 196 0002 82B0     		sub	sp, sp, #8
 197 0004 02AA     		add	r2, sp, #8
 198 0006 0023     		movs	r3, #0
 199 0008 42F8043D 		str	r3, [r2, #-4]!
 200 000c 0446     		mov	r4, r0
 201 000e 0B46     		mov	r3, r1
 202 0010 00F5FA61 		add	r1, r0, #2000
 203 0014 1C48     		ldr	r0, .L50
 204 0016 FFF7FEFF 		bl	_ZN6RepRap19GetFileInfoResponseEPKcRP12OutputBufferb
 205 001a 0546     		mov	r5, r0
 206 001c 10B9     		cbnz	r0, .L48
 207 001e 2846     		mov	r0, r5
 208 0020 02B0     		add	sp, sp, #8
 209              		@ sp needed
 210 0022 70BD     		pop	{r4, r5, r6, pc}
 211              	.L48:
 212 0024 1949     		ldr	r1, .L50+4
 213 0026 A069     		ldr	r0, [r4, #24]
 214 0028 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 215 002c 0198     		ldr	r0, [sp, #4]
 216 002e A669     		ldr	r6, [r4, #24]
 217 0030 C8B1     		cbz	r0, .L43
 218 0032 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 219 0036 0246     		mov	r2, r0
 220              	.L41:
 221 0038 1549     		ldr	r1, .L50+8
 222 003a 3046     		mov	r0, r6
 223 003c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 224 0040 1449     		ldr	r1, .L50+12
 225 0042 A069     		ldr	r0, [r4, #24]
 226 0044 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 227 0048 0199     		ldr	r1, [sp, #4]
 228 004a A069     		ldr	r0, [r4, #24]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 5


 229 004c FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 230 0050 A369     		ldr	r3, [r4, #24]
 231 0052 93F81511 		ldrb	r1, [r3, #277]	@ zero_extendqisi2
 232 0056 41B9     		cbnz	r1, .L49
 233 0058 2046     		mov	r0, r4
 234 005a 0122     		movs	r2, #1
 235 005c FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 236 0060 2846     		mov	r0, r5
 237 0062 02B0     		add	sp, sp, #8
 238              		@ sp needed
 239 0064 70BD     		pop	{r4, r5, r6, pc}
 240              	.L43:
 241 0066 0246     		mov	r2, r0
 242 0068 E6E7     		b	.L41
 243              	.L49:
 244 006a 04F11800 		add	r0, r4, #24
 245 006e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 246 0072 2046     		mov	r0, r4
 247 0074 40F28322 		movw	r2, #643
 248 0078 0749     		ldr	r1, .L50+16
 249 007a FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 250 007e 0025     		movs	r5, #0
 251 0080 2846     		mov	r0, r5
 252 0082 02B0     		add	sp, sp, #8
 253              		@ sp needed
 254 0084 70BD     		pop	{r4, r5, r6, pc}
 255              	.L51:
 256 0086 00BF     		.align	2
 257              	.L50:
 258 0088 00000000 		.word	reprap
 259 008c 00000000 		.word	.LC2
 260 0090 A4000000 		.word	.LC3
 261 0094 BC000000 		.word	.LC4
 262 0098 D4000000 		.word	.LC5
 263              		.size	_ZN13HttpResponder12SendFileInfoEb, .-_ZN13HttpResponder12SendFileInfoEb
 264              		.section	.text._ZN13HttpResponder18CheckAuthenticatedEv,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_ZN13HttpResponder18CheckAuthenticatedEv
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN13HttpResponder18CheckAuthenticatedEv, %function
 273              	_ZN13HttpResponder18CheckAuthenticatedEv:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276 0000 38B5     		push	{r3, r4, r5, lr}
 277 0002 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 278 0006 0F4B     		ldr	r3, .L64
 279 0008 1968     		ldr	r1, [r3]
 280 000a 71B1     		cbz	r1, .L53
 281 000c 0E4D     		ldr	r5, .L64+4
 282 000e 2B68     		ldr	r3, [r5]
 283 0010 9842     		cmp	r0, r3
 284 0012 0CD0     		beq	.L63
 285 0014 2B46     		mov	r3, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 6


 286 0016 0024     		movs	r4, #0
 287 0018 03E0     		b	.L56
 288              	.L57:
 289 001a 53F80C2F 		ldr	r2, [r3, #12]!
 290 001e 9042     		cmp	r0, r2
 291 0020 06D0     		beq	.L54
 292              	.L56:
 293 0022 0134     		adds	r4, r4, #1
 294 0024 8C42     		cmp	r4, r1
 295 0026 F8D1     		bne	.L57
 296 0028 0021     		movs	r1, #0
 297              	.L53:
 298 002a 0846     		mov	r0, r1
 299 002c 38BD     		pop	{r3, r4, r5, pc}
 300              	.L63:
 301 002e 0024     		movs	r4, #0
 302              	.L54:
 303 0030 FFF7FEFF 		bl	millis
 304 0034 04EB4404 		add	r4, r4, r4, lsl #1
 305 0038 05EB8404 		add	r4, r5, r4, lsl #2
 306 003c 0121     		movs	r1, #1
 307 003e 6060     		str	r0, [r4, #4]
 308 0040 0846     		mov	r0, r1
 309 0042 38BD     		pop	{r3, r4, r5, pc}
 310              	.L65:
 311              		.align	2
 312              	.L64:
 313 0044 00000000 		.word	.LANCHOR1
 314 0048 00000000 		.word	.LANCHOR2
 315              		.size	_ZN13HttpResponder18CheckAuthenticatedEv, .-_ZN13HttpResponder18CheckAuthenticatedEv
 316              		.section	.text._ZN13HttpResponder12AuthenticateEv,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	_ZN13HttpResponder12AuthenticateEv
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu fpv4-sp-d16
 324              		.type	_ZN13HttpResponder12AuthenticateEv, %function
 325              	_ZN13HttpResponder12AuthenticateEv:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 329 0002 0546     		mov	r5, r0
 330 0004 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 331 0008 0446     		mov	r4, r0
 332 000a 18B9     		cbnz	r0, .L67
 333 000c 0E4E     		ldr	r6, .L70
 334 000e 3368     		ldr	r3, [r6]
 335 0010 072B     		cmp	r3, #7
 336 0012 01D9     		bls	.L69
 337              	.L67:
 338 0014 2046     		mov	r0, r4
 339 0016 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 340              	.L69:
 341 0018 2846     		mov	r0, r5
 342 001a FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 7


 343 001e 3568     		ldr	r5, [r6]
 344 0020 0A4F     		ldr	r7, .L70+4
 345 0022 05EB4505 		add	r5, r5, r5, lsl #1
 346 0026 AD00     		lsls	r5, r5, #2
 347 0028 7851     		str	r0, [r7, r5]
 348 002a FFF7FEFF 		bl	millis
 349 002e 3368     		ldr	r3, [r6]
 350 0030 03EB4302 		add	r2, r3, r3, lsl #1
 351 0034 3D44     		add	r5, r5, r7
 352 0036 07EB8207 		add	r7, r7, r2, lsl #2
 353 003a 0133     		adds	r3, r3, #1
 354 003c 3C72     		strb	r4, [r7, #8]
 355 003e 0124     		movs	r4, #1
 356 0040 6860     		str	r0, [r5, #4]
 357 0042 3360     		str	r3, [r6]
 358 0044 2046     		mov	r0, r4
 359 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 360              	.L71:
 361              		.align	2
 362              	.L70:
 363 0048 00000000 		.word	.LANCHOR1
 364 004c 00000000 		.word	.LANCHOR2
 365              		.size	_ZN13HttpResponder12AuthenticateEv, .-_ZN13HttpResponder12AuthenticateEv
 366              		.section	.text._ZN13HttpResponder20RemoveAuthenticationEv,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	_ZN13HttpResponder20RemoveAuthenticationEv
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu fpv4-sp-d16
 374              		.type	_ZN13HttpResponder20RemoveAuthenticationEv, %function
 375              	_ZN13HttpResponder20RemoveAuthenticationEv:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 379 0002 DFF890E0 		ldr	lr, .L89+8
 380 0006 0369     		ldr	r3, [r0, #16]
 381 0008 DEF80060 		ldr	r6, [lr]
 382 000c 1F69     		ldr	r7, [r3, #16]
 383 000e 002E     		cmp	r6, #0
 384 0010 39D0     		beq	.L83
 385 0012 741E     		subs	r4, r6, #1
 386 0014 04EB4403 		add	r3, r4, r4, lsl #1
 387 0018 9B00     		lsls	r3, r3, #2
 388 001a 1C4A     		ldr	r2, .L89
 389 001c D158     		ldr	r1, [r2, r3]
 390 001e 8F42     		cmp	r7, r1
 391 0020 1344     		add	r3, r3, r2
 392 0022 2DD0     		beq	.L74
 393 0024 06EB460C 		add	ip, r6, r6, lsl #1
 394 0028 4FEA8C0C 		lsl	ip, ip, #2
 395 002c 02EB0C03 		add	r3, r2, ip
 396 0030 2046     		mov	r0, r4
 397 0032 04E0     		b	.L75
 398              	.L86:
 399 0034 53F80C5C 		ldr	r5, [r3, #-12]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 8


 400 0038 BD42     		cmp	r5, r7
 401 003a 05D0     		beq	.L76
 402 003c 0846     		mov	r0, r1
 403              	.L75:
 404 003e 0C3B     		subs	r3, r3, #12
 405 0040 411E     		subs	r1, r0, #1
 406 0042 0028     		cmp	r0, #0
 407 0044 F6D1     		bne	.L86
 408 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
 409              	.L76:
 410 0048 01EB4101 		add	r1, r1, r1, lsl #1
 411 004c 02EB8101 		add	r1, r2, r1, lsl #2
 412 0050 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 413 0052 C3B9     		cbnz	r3, .L83
 414 0054 8642     		cmp	r6, r0
 415 0056 0FD9     		bls	.L78
 416 0058 00EB4000 		add	r0, r0, r0, lsl #1
 417 005c 0C49     		ldr	r1, .L89+4
 418 005e 02EB8000 		add	r0, r2, r0, lsl #2
 419 0062 A0F10C03 		sub	r3, r0, #12
 420 0066 8C44     		add	ip, ip, r1
 421              	.L79:
 422 0068 1E46     		mov	r6, r3
 423 006a 53F80C0F 		ldr	r0, [r3, #12]!	@ unaligned
 424 006e 5968     		ldr	r1, [r3, #4]	@ unaligned
 425 0070 9A68     		ldr	r2, [r3, #8]	@ unaligned
 426 0072 6345     		cmp	r3, ip
 427 0074 07C6     		stmia	r6!, {r0, r1, r2}
 428 0076 F7D1     		bne	.L79
 429              	.L78:
 430 0078 CEF80040 		str	r4, [lr]
 431 007c 0120     		movs	r0, #1
 432 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 433              	.L74:
 434 0080 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 435 0082 002B     		cmp	r3, #0
 436 0084 F8D0     		beq	.L78
 437              	.L83:
 438 0086 0020     		movs	r0, #0
 439 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 440              	.L90:
 441 008a 00BF     		.align	2
 442              	.L89:
 443 008c 00000000 		.word	.LANCHOR2
 444 0090 F4FFFFFF 		.word	.LANCHOR2-12
 445 0094 00000000 		.word	.LANCHOR1
 446              		.size	_ZN13HttpResponder20RemoveAuthenticationEv, .-_ZN13HttpResponder20RemoveAuthenticationEv
 447              		.section	.text._ZN13HttpResponder14SendGCodeReplyEv,"ax",%progbits
 448              		.align	1
 449              		.p2align 2,,3
 450              		.global	_ZN13HttpResponder14SendGCodeReplyEv
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu fpv4-sp-d16
 455              		.type	_ZN13HttpResponder14SendGCodeReplyEv, %function
 456              	_ZN13HttpResponder14SendGCodeReplyEv:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 9


 457              		@ args = 0, pretend = 0, frame = 8
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 460 0004 3A4D     		ldr	r5, .L107
 461 0006 3B49     		ldr	r1, .L107+4
 462 0008 84B0     		sub	sp, sp, #16
 463 000a 0446     		mov	r4, r0
 464 000c 4FF0FF32 		mov	r2, #-1
 465 0010 02A8     		add	r0, sp, #8
 466 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 467 0016 2B68     		ldr	r3, [r5]
 468 0018 04F11C06 		add	r6, r4, #28
 469 001c 5BB3     		cbz	r3, .L92
 470 001e 364F     		ldr	r7, .L107+8
 471 0020 DFF8EC80 		ldr	r8, .L107+32
 472 0024 3B68     		ldr	r3, [r7]
 473 0026 D8F80020 		ldr	r2, [r8]
 474 002a 0133     		adds	r3, r3, #1
 475 002c 9342     		cmp	r3, r2
 476 002e 3B60     		str	r3, [r7]
 477 0030 41D3     		bcc	.L105
 478 0032 324B     		ldr	r3, .L107+12
 479 0034 D3F80821 		ldr	r2, [r3, #264]
 480 0038 5207     		lsls	r2, r2, #29
 481 003a 4FF00109 		mov	r9, #1
 482 003e 45D4     		bmi	.L106
 483              	.L94:
 484 0040 2F49     		ldr	r1, .L107+16
 485 0042 A069     		ldr	r0, [r4, #24]
 486 0044 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 487 0048 2948     		ldr	r0, .L107
 488 004a A769     		ldr	r7, [r4, #24]
 489 004c FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 490 0050 2C49     		ldr	r1, .L107+20
 491 0052 0246     		mov	r2, r0
 492 0054 3846     		mov	r0, r7
 493 0056 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 494 005a 2B49     		ldr	r1, .L107+24
 495 005c A069     		ldr	r0, [r4, #24]
 496 005e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 497 0062 3046     		mov	r0, r6
 498 0064 2249     		ldr	r1, .L107
 499 0066 FFF7FEFF 		bl	_ZNV11OutputStack6AppendERVS_
 500 006a B9F1000F 		cmp	r9, #0
 501 006e 17D0     		beq	.L95
 502 0070 0023     		movs	r3, #0
 503 0072 2B60     		str	r3, [r5]
 504 0074 14E0     		b	.L95
 505              	.L92:
 506 0076 2249     		ldr	r1, .L107+16
 507 0078 A069     		ldr	r0, [r4, #24]
 508 007a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 509 007e 2846     		mov	r0, r5
 510 0080 A769     		ldr	r7, [r4, #24]
 511 0082 FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 512 0086 1F49     		ldr	r1, .L107+20
 513 0088 0246     		mov	r2, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 10


 514 008a 3846     		mov	r0, r7
 515 008c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 516 0090 1D49     		ldr	r1, .L107+24
 517 0092 A069     		ldr	r0, [r4, #24]
 518 0094 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 519 0098 2946     		mov	r1, r5
 520 009a 3046     		mov	r0, r6
 521 009c FFF7FEFF 		bl	_ZNV11OutputStack6AppendERVS_
 522              	.L95:
 523 00a0 02A8     		add	r0, sp, #8
 524 00a2 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 525 00a6 2046     		mov	r0, r4
 526 00a8 0122     		movs	r2, #1
 527 00aa 0021     		movs	r1, #0
 528 00ac FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 529 00b0 04B0     		add	sp, sp, #16
 530              		@ sp needed
 531 00b2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 532              	.L105:
 533 00b6 0121     		movs	r1, #1
 534 00b8 2846     		mov	r0, r5
 535 00ba FFF7FEFF 		bl	_ZNV11OutputStack18IncreaseReferencesEj
 536 00be 0F4B     		ldr	r3, .L107+12
 537 00c0 D3F80821 		ldr	r2, [r3, #264]
 538 00c4 5207     		lsls	r2, r2, #29
 539 00c6 4FF00009 		mov	r9, #0
 540 00ca B9D5     		bpl	.L94
 541              	.L106:
 542 00cc 0848     		ldr	r0, .L107
 543 00ce D3F804A0 		ldr	r10, [r3, #4]
 544 00d2 3F68     		ldr	r7, [r7]
 545 00d4 D8F80080 		ldr	r8, [r8]
 546 00d8 FFF7FEFF 		bl	_ZNVK11OutputStack10DataLengthEv
 547 00dc 3B46     		mov	r3, r7
 548 00de CDE90080 		strd	r8, r0, [sp]
 549 00e2 0A4A     		ldr	r2, .L107+28
 550 00e4 5046     		mov	r0, r10
 551 00e6 0121     		movs	r1, #1
 552 00e8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 553 00ec A8E7     		b	.L94
 554              	.L108:
 555 00ee 00BF     		.align	2
 556              	.L107:
 557 00f0 00000000 		.word	.LANCHOR4
 558 00f4 00000000 		.word	.LANCHOR3
 559 00f8 00000000 		.word	.LANCHOR5
 560 00fc 00000000 		.word	reprap
 561 0100 3C000000 		.word	.LC7
 562 0104 A4000000 		.word	.LC3
 563 0108 BC000000 		.word	.LC4
 564 010c 00000000 		.word	.LC6
 565 0110 00000000 		.word	.LANCHOR1
 566              		.size	_ZN13HttpResponder14SendGCodeReplyEv, .-_ZN13HttpResponder14SendGCodeReplyEv
 567              		.section	.text._ZN13HttpResponder14ProcessMessageEv,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	_ZN13HttpResponder14ProcessMessageEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	_ZN13HttpResponder14ProcessMessageEv, %function
 576              	_ZN13HttpResponder14ProcessMessageEv:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 580 0004 264B     		ldr	r3, .L128
 581 0006 D3F80821 		ldr	r2, [r3, #264]
 582 000a 5207     		lsls	r2, r2, #29
 583 000c 82B0     		sub	sp, sp, #8
 584 000e 0546     		mov	r5, r0
 585 0010 08D4     		bmi	.L127
 586              	.L110:
 587 0012 0423     		movs	r3, #4
 588 0014 AB60     		str	r3, [r5, #8]
 589 0016 FFF7FEFF 		bl	millis
 590 001a C5F8CC07 		str	r0, [r5, #1996]
 591 001e 02B0     		add	sp, sp, #8
 592              		@ sp needed
 593 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 594              	.L127:
 595 0024 5F68     		ldr	r7, [r3, #4]
 596 0026 1F4A     		ldr	r2, .L128+4
 597 0028 3846     		mov	r0, r7
 598 002a 0121     		movs	r1, #1
 599 002c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 600 0030 D5F8C037 		ldr	r3, [r5, #1984]
 601 0034 83B1     		cbz	r3, .L111
 602 0036 DFF87880 		ldr	r8, .L128+16
 603 003a 05F5D266 		add	r6, r5, #1680
 604 003e 0024     		movs	r4, #0
 605              	.L112:
 606 0040 56F8043B 		ldr	r3, [r6], #4
 607 0044 4246     		mov	r2, r8
 608 0046 0121     		movs	r1, #1
 609 0048 3846     		mov	r0, r7
 610 004a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 611 004e D5F8C037 		ldr	r3, [r5, #1984]
 612 0052 0134     		adds	r4, r4, #1
 613 0054 A342     		cmp	r3, r4
 614 0056 F3D8     		bhi	.L112
 615              	.L111:
 616 0058 134A     		ldr	r2, .L128+8
 617 005a 0121     		movs	r1, #1
 618 005c 3846     		mov	r0, r7
 619 005e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 620 0062 D5F8C437 		ldr	r3, [r5, #1988]
 621 0066 A3B1     		cbz	r3, .L113
 622 0068 DFF84880 		ldr	r8, .L128+20
 623 006c 2C46     		mov	r4, r5
 624 006e 0026     		movs	r6, #0
 625              	.L114:
 626 0070 D4F8A426 		ldr	r2, [r4, #1700]
 627 0074 D4F8A036 		ldr	r3, [r4, #1696]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 12


 628 0078 0092     		str	r2, [sp]
 629 007a 0121     		movs	r1, #1
 630 007c 4246     		mov	r2, r8
 631 007e 3846     		mov	r0, r7
 632 0080 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 633 0084 D5F8C437 		ldr	r3, [r5, #1988]
 634 0088 0136     		adds	r6, r6, #1
 635 008a B342     		cmp	r3, r6
 636 008c 04F10804 		add	r4, r4, #8
 637 0090 EED8     		bhi	.L114
 638              	.L113:
 639 0092 3846     		mov	r0, r7
 640 0094 054A     		ldr	r2, .L128+12
 641 0096 0121     		movs	r1, #1
 642 0098 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 643 009c B9E7     		b	.L110
 644              	.L129:
 645 009e 00BF     		.align	2
 646              	.L128:
 647 00a0 00000000 		.word	reprap
 648 00a4 00000000 		.word	.LC8
 649 00a8 20000000 		.word	.LC10
 650 00ac 3C000000 		.word	.LC12
 651 00b0 1C000000 		.word	.LC9
 652 00b4 34000000 		.word	.LC11
 653              		.size	_ZN13HttpResponder14ProcessMessageEv, .-_ZN13HttpResponder14ProcessMessageEv
 654              		.section	.text._ZN13HttpResponder13RejectMessageEPKcj,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	_ZN13HttpResponder13RejectMessageEPKcj
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	_ZN13HttpResponder13RejectMessageEPKcj, %function
 663              	_ZN13HttpResponder13RejectMessageEPKcj:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 667 0002 194B     		ldr	r3, .L141
 668 0004 D3F80871 		ldr	r7, [r3, #264]
 669 0008 1646     		mov	r6, r2
 670 000a 7A07     		lsls	r2, r7, #29
 671 000c 83B0     		sub	sp, sp, #12
 672 000e 0446     		mov	r4, r0
 673 0010 0D46     		mov	r5, r1
 674 0012 1ED4     		bmi	.L138
 675              	.L131:
 676 0014 A069     		ldr	r0, [r4, #24]
 677 0016 A0B1     		cbz	r0, .L139
 678              	.L132:
 679 0018 3246     		mov	r2, r6
 680 001a 2B46     		mov	r3, r5
 681 001c 1349     		ldr	r1, .L141+4
 682 001e FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 683 0022 134B     		ldr	r3, .L141+8
 684 0024 A069     		ldr	r0, [r4, #24]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 13


 685 0026 134A     		ldr	r2, .L141+12
 686 0028 0093     		str	r3, [sp]
 687 002a 1349     		ldr	r1, .L141+16
 688 002c 2B46     		mov	r3, r5
 689 002e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 690 0032 2046     		mov	r0, r4
 691 0034 0122     		movs	r2, #1
 692 0036 0021     		movs	r1, #0
 693 0038 03B0     		add	sp, sp, #12
 694              		@ sp needed
 695 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 696 003e FFF7FEBF 		b	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 697              	.L139:
 698 0042 04F11800 		add	r0, r4, #24
 699 0046 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 700 004a 50B9     		cbnz	r0, .L140
 701 004c A060     		str	r0, [r4, #8]
 702 004e 03B0     		add	sp, sp, #12
 703              		@ sp needed
 704 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 705              	.L138:
 706 0052 5868     		ldr	r0, [r3, #4]
 707 0054 094A     		ldr	r2, .L141+20
 708 0056 0091     		str	r1, [sp]
 709 0058 3346     		mov	r3, r6
 710 005a 0121     		movs	r1, #1
 711 005c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 712 0060 D8E7     		b	.L131
 713              	.L140:
 714 0062 A069     		ldr	r0, [r4, #24]
 715 0064 D8E7     		b	.L132
 716              	.L142:
 717 0066 00BF     		.align	2
 718              	.L141:
 719 0068 00000000 		.word	reprap
 720 006c 2C000000 		.word	.LC14
 721 0070 E0000000 		.word	.LC17
 722 0074 54000000 		.word	.LC15
 723 0078 D8000000 		.word	.LC16
 724 007c 00000000 		.word	.LC13
 725              		.size	_ZN13HttpResponder13RejectMessageEPKcj, .-_ZN13HttpResponder13RejectMessageEPKcj
 726              		.section	.text._ZN13HttpResponder14CharFromClientEc,"ax",%progbits
 727              		.align	1
 728              		.p2align 2,,3
 729              		.global	_ZN13HttpResponder14CharFromClientEc
 730              		.syntax unified
 731              		.thumb
 732              		.thumb_func
 733              		.fpu fpv4-sp-d16
 734              		.type	_ZN13HttpResponder14CharFromClientEc, %function
 735              	_ZN13HttpResponder14CharFromClientEc:
 736              		@ args = 0, pretend = 0, frame = 0
 737              		@ frame_needed = 0, uses_anonymous_args = 0
 738 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 739 0002 D0F8CC20 		ldr	r2, [r0, #204]
 740 0006 0B2A     		cmp	r2, #11
 741 0008 00F29681 		bhi	.L144
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 14


 742 000c DFE812F0 		tbh	[pc, r2, lsl #1]
 743              	.L146:
 744 0010 2D00     		.2byte	(.L145-.L146)/2
 745 0012 4E00     		.2byte	(.L147-.L146)/2
 746 0014 0501     		.2byte	(.L148-.L146)/2
 747 0016 EA00     		.2byte	(.L149-.L146)/2
 748 0018 1A01     		.2byte	(.L150-.L146)/2
 749 001a 8E00     		.2byte	(.L151-.L146)/2
 750 001c 0501     		.2byte	(.L148-.L146)/2
 751 001e EA00     		.2byte	(.L149-.L146)/2
 752 0020 B900     		.2byte	(.L152-.L146)/2
 753 0022 CB00     		.2byte	(.L153-.L146)/2
 754 0024 D500     		.2byte	(.L154-.L146)/2
 755 0026 0C00     		.2byte	(.L155-.L146)/2
 756              		.p2align 1
 757              	.L155:
 758 0028 A1F10902 		sub	r2, r1, #9
 759 002c D0F88836 		ldr	r3, [r0, #1672]
 760 0030 172A     		cmp	r2, #23
 761 0032 00F2D182 		bhi	.L192
 762 0036 DFE812F0 		tbh	[pc, r2, lsl #1]
 763              	.L194:
 764 003a F401     		.2byte	(.L193-.L194)/2
 765 003c EC01     		.2byte	(.L195-.L194)/2
 766 003e CF02     		.2byte	(.L192-.L194)/2
 767 0040 CF02     		.2byte	(.L192-.L194)/2
 768 0042 CD00     		.2byte	(.L161-.L194)/2
 769 0044 CF02     		.2byte	(.L192-.L194)/2
 770 0046 CF02     		.2byte	(.L192-.L194)/2
 771 0048 CF02     		.2byte	(.L192-.L194)/2
 772 004a CF02     		.2byte	(.L192-.L194)/2
 773 004c CF02     		.2byte	(.L192-.L194)/2
 774 004e CF02     		.2byte	(.L192-.L194)/2
 775 0050 CF02     		.2byte	(.L192-.L194)/2
 776 0052 CF02     		.2byte	(.L192-.L194)/2
 777 0054 CF02     		.2byte	(.L192-.L194)/2
 778 0056 CF02     		.2byte	(.L192-.L194)/2
 779 0058 CF02     		.2byte	(.L192-.L194)/2
 780 005a CF02     		.2byte	(.L192-.L194)/2
 781 005c CF02     		.2byte	(.L192-.L194)/2
 782 005e CF02     		.2byte	(.L192-.L194)/2
 783 0060 CF02     		.2byte	(.L192-.L194)/2
 784 0062 CF02     		.2byte	(.L192-.L194)/2
 785 0064 CF02     		.2byte	(.L192-.L194)/2
 786 0066 CF02     		.2byte	(.L192-.L194)/2
 787 0068 F401     		.2byte	(.L193-.L194)/2
 788              		.p2align 1
 789              	.L145:
 790 006a A1F10902 		sub	r2, r1, #9
 791 006e D0F88836 		ldr	r3, [r0, #1672]
 792 0072 172A     		cmp	r2, #23
 793 0074 00F2A880 		bhi	.L212
 794 0078 DFE812F0 		tbh	[pc, r2, lsl #1]
 795              	.L159:
 796 007c AF01     		.2byte	(.L158-.L159)/2
 797 007e DD01     		.2byte	(.L160-.L159)/2
 798 0080 A600     		.2byte	(.L212-.L159)/2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 15


 799 0082 A600     		.2byte	(.L212-.L159)/2
 800 0084 AC00     		.2byte	(.L161-.L159)/2
 801 0086 A600     		.2byte	(.L212-.L159)/2
 802 0088 A600     		.2byte	(.L212-.L159)/2
 803 008a A600     		.2byte	(.L212-.L159)/2
 804 008c A600     		.2byte	(.L212-.L159)/2
 805 008e A600     		.2byte	(.L212-.L159)/2
 806 0090 A600     		.2byte	(.L212-.L159)/2
 807 0092 A600     		.2byte	(.L212-.L159)/2
 808 0094 A600     		.2byte	(.L212-.L159)/2
 809 0096 A600     		.2byte	(.L212-.L159)/2
 810 0098 A600     		.2byte	(.L212-.L159)/2
 811 009a A600     		.2byte	(.L212-.L159)/2
 812 009c A600     		.2byte	(.L212-.L159)/2
 813 009e A600     		.2byte	(.L212-.L159)/2
 814 00a0 A600     		.2byte	(.L212-.L159)/2
 815 00a2 A600     		.2byte	(.L212-.L159)/2
 816 00a4 A600     		.2byte	(.L212-.L159)/2
 817 00a6 A600     		.2byte	(.L212-.L159)/2
 818 00a8 A600     		.2byte	(.L212-.L159)/2
 819 00aa AF01     		.2byte	(.L158-.L159)/2
 820              		.p2align 1
 821              	.L147:
 822 00ac A1F10902 		sub	r2, r1, #9
 823 00b0 D0F88836 		ldr	r3, [r0, #1672]
 824 00b4 362A     		cmp	r2, #54
 825 00b6 00F28780 		bhi	.L212
 826 00ba DFE812F0 		tbh	[pc, r2, lsl #1]
 827              	.L166:
 828 00be 2302     		.2byte	(.L165-.L166)/2
 829 00c0 F301     		.2byte	(.L167-.L166)/2
 830 00c2 8500     		.2byte	(.L212-.L166)/2
 831 00c4 8500     		.2byte	(.L212-.L166)/2
 832 00c6 8B00     		.2byte	(.L161-.L166)/2
 833 00c8 8500     		.2byte	(.L212-.L166)/2
 834 00ca 8500     		.2byte	(.L212-.L166)/2
 835 00cc 8500     		.2byte	(.L212-.L166)/2
 836 00ce 8500     		.2byte	(.L212-.L166)/2
 837 00d0 8500     		.2byte	(.L212-.L166)/2
 838 00d2 8500     		.2byte	(.L212-.L166)/2
 839 00d4 8500     		.2byte	(.L212-.L166)/2
 840 00d6 8500     		.2byte	(.L212-.L166)/2
 841 00d8 8500     		.2byte	(.L212-.L166)/2
 842 00da 8500     		.2byte	(.L212-.L166)/2
 843 00dc 8500     		.2byte	(.L212-.L166)/2
 844 00de 8500     		.2byte	(.L212-.L166)/2
 845 00e0 8500     		.2byte	(.L212-.L166)/2
 846 00e2 8500     		.2byte	(.L212-.L166)/2
 847 00e4 8500     		.2byte	(.L212-.L166)/2
 848 00e6 8500     		.2byte	(.L212-.L166)/2
 849 00e8 8500     		.2byte	(.L212-.L166)/2
 850 00ea 8500     		.2byte	(.L212-.L166)/2
 851 00ec 2302     		.2byte	(.L165-.L166)/2
 852 00ee 8500     		.2byte	(.L212-.L166)/2
 853 00f0 8500     		.2byte	(.L212-.L166)/2
 854 00f2 8500     		.2byte	(.L212-.L166)/2
 855 00f4 8500     		.2byte	(.L212-.L166)/2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 16


 856 00f6 EF01     		.2byte	(.L168-.L166)/2
 857 00f8 8500     		.2byte	(.L212-.L166)/2
 858 00fa 8500     		.2byte	(.L212-.L166)/2
 859 00fc 8500     		.2byte	(.L212-.L166)/2
 860 00fe 8500     		.2byte	(.L212-.L166)/2
 861 0100 8500     		.2byte	(.L212-.L166)/2
 862 0102 8500     		.2byte	(.L212-.L166)/2
 863 0104 8500     		.2byte	(.L212-.L166)/2
 864 0106 8500     		.2byte	(.L212-.L166)/2
 865 0108 8500     		.2byte	(.L212-.L166)/2
 866 010a 8500     		.2byte	(.L212-.L166)/2
 867 010c 8500     		.2byte	(.L212-.L166)/2
 868 010e 8500     		.2byte	(.L212-.L166)/2
 869 0110 8500     		.2byte	(.L212-.L166)/2
 870 0112 8500     		.2byte	(.L212-.L166)/2
 871 0114 8500     		.2byte	(.L212-.L166)/2
 872 0116 8500     		.2byte	(.L212-.L166)/2
 873 0118 8500     		.2byte	(.L212-.L166)/2
 874 011a 8500     		.2byte	(.L212-.L166)/2
 875 011c 8500     		.2byte	(.L212-.L166)/2
 876 011e 8500     		.2byte	(.L212-.L166)/2
 877 0120 8500     		.2byte	(.L212-.L166)/2
 878 0122 8500     		.2byte	(.L212-.L166)/2
 879 0124 8500     		.2byte	(.L212-.L166)/2
 880 0126 8500     		.2byte	(.L212-.L166)/2
 881 0128 8500     		.2byte	(.L212-.L166)/2
 882 012a 0C02     		.2byte	(.L169-.L166)/2
 883              		.p2align 1
 884              	.L151:
 885 012c A1F10902 		sub	r2, r1, #9
 886 0130 D0F88836 		ldr	r3, [r0, #1672]
 887 0134 222A     		cmp	r2, #34
 888 0136 47D8     		bhi	.L212
 889 0138 DFE812F0 		tbh	[pc, r2, lsl #1]
 890              	.L177:
 891 013c 1B02     		.2byte	(.L176-.L177)/2
 892 013e 3702     		.2byte	(.L178-.L177)/2
 893 0140 4600     		.2byte	(.L212-.L177)/2
 894 0142 4600     		.2byte	(.L212-.L177)/2
 895 0144 4C00     		.2byte	(.L161-.L177)/2
 896 0146 4600     		.2byte	(.L212-.L177)/2
 897 0148 4600     		.2byte	(.L212-.L177)/2
 898 014a 4600     		.2byte	(.L212-.L177)/2
 899 014c 4600     		.2byte	(.L212-.L177)/2
 900 014e 4600     		.2byte	(.L212-.L177)/2
 901 0150 4600     		.2byte	(.L212-.L177)/2
 902 0152 4600     		.2byte	(.L212-.L177)/2
 903 0154 4600     		.2byte	(.L212-.L177)/2
 904 0156 4600     		.2byte	(.L212-.L177)/2
 905 0158 4600     		.2byte	(.L212-.L177)/2
 906 015a 4600     		.2byte	(.L212-.L177)/2
 907 015c 4600     		.2byte	(.L212-.L177)/2
 908 015e 4600     		.2byte	(.L212-.L177)/2
 909 0160 4600     		.2byte	(.L212-.L177)/2
 910 0162 4600     		.2byte	(.L212-.L177)/2
 911 0164 4600     		.2byte	(.L212-.L177)/2
 912 0166 4600     		.2byte	(.L212-.L177)/2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 17


 913 0168 4600     		.2byte	(.L212-.L177)/2
 914 016a 1B02     		.2byte	(.L176-.L177)/2
 915 016c 4600     		.2byte	(.L212-.L177)/2
 916 016e 4600     		.2byte	(.L212-.L177)/2
 917 0170 4600     		.2byte	(.L212-.L177)/2
 918 0172 4600     		.2byte	(.L212-.L177)/2
 919 0174 3302     		.2byte	(.L179-.L177)/2
 920 0176 0502     		.2byte	(.L180-.L177)/2
 921 0178 4600     		.2byte	(.L212-.L177)/2
 922 017a 4600     		.2byte	(.L212-.L177)/2
 923 017c 4600     		.2byte	(.L212-.L177)/2
 924 017e 4600     		.2byte	(.L212-.L177)/2
 925 0180 FD01     		.2byte	(.L181-.L177)/2
 926              		.p2align 1
 927              	.L152:
 928 0182 0D29     		cmp	r1, #13
 929 0184 00F0D880 		beq	.L144
 930 0188 3A29     		cmp	r1, #58
 931 018a 00F06B81 		beq	.L187
 932 018e 0A29     		cmp	r1, #10
 933 0190 00F04982 		beq	.L214
 934              	.L210:
 935 0194 D0F88836 		ldr	r3, [r0, #1672]
 936 0198 C218     		adds	r2, r0, r3
 937 019a 0133     		adds	r3, r3, #1
 938 019c C0F88836 		str	r3, [r0, #1672]
 939 01a0 82F8D010 		strb	r1, [r2, #208]
 940 01a4 16E0     		b	.L161
 941              	.L153:
 942 01a6 2029     		cmp	r1, #32
 943 01a8 D0F88836 		ldr	r3, [r0, #1672]
 944 01ac 12D0     		beq	.L161
 945 01ae 0929     		cmp	r1, #9
 946 01b0 10D0     		beq	.L161
 947 01b2 0A22     		movs	r2, #10
 948 01b4 C0F8CC20 		str	r2, [r0, #204]
 949 01b8 01E0     		b	.L156
 950              	.L154:
 951 01ba D0F88836 		ldr	r3, [r0, #1672]
 952              	.L156:
 953 01be 0A29     		cmp	r1, #10
 954 01c0 00F02682 		beq	.L215
 955 01c4 0D29     		cmp	r1, #13
 956 01c6 05D0     		beq	.L161
 957              	.L212:
 958 01c8 C218     		adds	r2, r0, r3
 959 01ca 0133     		adds	r3, r3, #1
 960 01cc C0F88836 		str	r3, [r0, #1672]
 961 01d0 82F8D010 		strb	r1, [r2, #208]
 962              	.L161:
 963 01d4 40F2B752 		movw	r2, #1463
 964 01d8 9342     		cmp	r3, r2
 965 01da 00F0A580 		beq	.L196
 966 01de 0022     		movs	r2, #0
 967              	.L163:
 968 01e0 1046     		mov	r0, r2
 969 01e2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 18


 970              	.L149:
 971 01e4 A1F13004 		sub	r4, r1, #48
 972 01e8 E4B2     		uxtb	r4, r4
 973 01ea 092C     		cmp	r4, #9
 974 01ec 40F2B080 		bls	.L216
 975 01f0 A1F14103 		sub	r3, r1, #65
 976 01f4 052B     		cmp	r3, #5
 977 01f6 00F20F82 		bhi	.L184
 978 01fa D0F88836 		ldr	r3, [r0, #1672]
 979 01fe 90F88C46 		ldrb	r4, [r0, #1676]	@ zero_extendqisi2
 980 0202 C518     		adds	r5, r0, r3
 981 0204 3739     		subs	r1, r1, #55
 982 0206 023A     		subs	r2, r2, #2
 983 0208 2143     		orrs	r1, r1, r4
 984 020a 0133     		adds	r3, r3, #1
 985 020c C0F88836 		str	r3, [r0, #1672]
 986 0210 85F8D010 		strb	r1, [r5, #208]
 987 0214 C0F8CC20 		str	r2, [r0, #204]
 988 0218 DCE7     		b	.L161
 989              	.L148:
 990 021a A1F13003 		sub	r3, r1, #48
 991 021e DBB2     		uxtb	r3, r3
 992 0220 092B     		cmp	r3, #9
 993 0222 40F28C80 		bls	.L217
 994 0226 A1F14103 		sub	r3, r1, #65
 995 022a 052B     		cmp	r3, #5
 996 022c 00F2F481 		bhi	.L184
 997 0230 3739     		subs	r1, r1, #55
 998 0232 0901     		lsls	r1, r1, #4
 999 0234 0132     		adds	r2, r2, #1
 1000 0236 80F88C16 		strb	r1, [r0, #1676]
 1001 023a C0F8CC20 		str	r2, [r0, #204]
 1002 023e D0F88836 		ldr	r3, [r0, #1672]
 1003 0242 C7E7     		b	.L161
 1004              	.L150:
 1005 0244 A1F10903 		sub	r3, r1, #9
 1006 0248 342B     		cmp	r3, #52
 1007 024a A3D8     		bhi	.L210
 1008 024c 01A2     		adr	r2, .L172
 1009 024e 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 1010 0252 00BF     		.p2align 2
 1011              	.L172:
 1012 0254 7D030000 		.word	.L171+1
 1013 0258 7D030000 		.word	.L171+1
 1014 025c 95010000 		.word	.L210+1
 1015 0260 95010000 		.word	.L210+1
 1016 0264 7D030000 		.word	.L171+1
 1017 0268 95010000 		.word	.L210+1
 1018 026c 95010000 		.word	.L210+1
 1019 0270 95010000 		.word	.L210+1
 1020 0274 95010000 		.word	.L210+1
 1021 0278 95010000 		.word	.L210+1
 1022 027c 95010000 		.word	.L210+1
 1023 0280 95010000 		.word	.L210+1
 1024 0284 95010000 		.word	.L210+1
 1025 0288 95010000 		.word	.L210+1
 1026 028c 95010000 		.word	.L210+1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 19


 1027 0290 95010000 		.word	.L210+1
 1028 0294 95010000 		.word	.L210+1
 1029 0298 95010000 		.word	.L210+1
 1030 029c 95010000 		.word	.L210+1
 1031 02a0 95010000 		.word	.L210+1
 1032 02a4 95010000 		.word	.L210+1
 1033 02a8 95010000 		.word	.L210+1
 1034 02ac 95010000 		.word	.L210+1
 1035 02b0 7D030000 		.word	.L171+1
 1036 02b4 95010000 		.word	.L210+1
 1037 02b8 95010000 		.word	.L210+1
 1038 02bc 95010000 		.word	.L210+1
 1039 02c0 95010000 		.word	.L210+1
 1040 02c4 6F030000 		.word	.L173+1
 1041 02c8 6F030000 		.word	.L173+1
 1042 02cc 95010000 		.word	.L210+1
 1043 02d0 95010000 		.word	.L210+1
 1044 02d4 95010000 		.word	.L210+1
 1045 02d8 95010000 		.word	.L210+1
 1046 02dc 95010000 		.word	.L210+1
 1047 02e0 95010000 		.word	.L210+1
 1048 02e4 95010000 		.word	.L210+1
 1049 02e8 95010000 		.word	.L210+1
 1050 02ec 95010000 		.word	.L210+1
 1051 02f0 95010000 		.word	.L210+1
 1052 02f4 95010000 		.word	.L210+1
 1053 02f8 95010000 		.word	.L210+1
 1054 02fc 95010000 		.word	.L210+1
 1055 0300 95010000 		.word	.L210+1
 1056 0304 95010000 		.word	.L210+1
 1057 0308 95010000 		.word	.L210+1
 1058 030c 95010000 		.word	.L210+1
 1059 0310 95010000 		.word	.L210+1
 1060 0314 95010000 		.word	.L210+1
 1061 0318 95010000 		.word	.L210+1
 1062 031c 95010000 		.word	.L210+1
 1063 0320 95010000 		.word	.L210+1
 1064 0324 A9030000 		.word	.L174+1
 1065              		.p2align 1
 1066              	.L196:
 1067 0328 4FF4FA72 		mov	r2, #500
 1068 032c D249     		ldr	r1, .L219
 1069 032e FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1070 0332 0122     		movs	r2, #1
 1071 0334 1046     		mov	r0, r2
 1072 0336 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1073              	.L144:
 1074 0338 D0F88836 		ldr	r3, [r0, #1672]
 1075 033c 4AE7     		b	.L161
 1076              	.L217:
 1077 033e 1B01     		lsls	r3, r3, #4
 1078 0340 0132     		adds	r2, r2, #1
 1079 0342 80F88C36 		strb	r3, [r0, #1676]
 1080 0346 C0F8CC20 		str	r2, [r0, #204]
 1081 034a D0F88836 		ldr	r3, [r0, #1672]
 1082 034e 41E7     		b	.L161
 1083              	.L216:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 20


 1084 0350 D0F88836 		ldr	r3, [r0, #1672]
 1085 0354 90F88C16 		ldrb	r1, [r0, #1676]	@ zero_extendqisi2
 1086 0358 C518     		adds	r5, r0, r3
 1087 035a 023A     		subs	r2, r2, #2
 1088 035c 0133     		adds	r3, r3, #1
 1089 035e 0C43     		orrs	r4, r4, r1
 1090 0360 C0F88836 		str	r3, [r0, #1672]
 1091 0364 85F8D040 		strb	r4, [r5, #208]
 1092 0368 C0F8CC20 		str	r2, [r0, #204]
 1093 036c 32E7     		b	.L161
 1094              	.L173:
 1095 036e 4FF4FA72 		mov	r2, #500
 1096 0372 C249     		ldr	r1, .L219+4
 1097 0374 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1098 0378 0122     		movs	r2, #1
 1099 037a 31E7     		b	.L163
 1100              	.L171:
 1101 037c D0F8C427 		ldr	r2, [r0, #1988]
 1102 0380 002A     		cmp	r2, #0
 1103 0382 F4D1     		bne	.L173
 1104 0384 D0F88836 		ldr	r3, [r0, #1672]
 1105 0388 D0F8A046 		ldr	r4, [r0, #1696]
 1106 038c 00F1D001 		add	r1, r0, #208
 1107 0390 1944     		add	r1, r1, r3
 1108 0392 8C42     		cmp	r4, r1
 1109 0394 EBD1     		bne	.L173
 1110 0396 D0F8C017 		ldr	r1, [r0, #1984]
 1111 039a 01F5D271 		add	r1, r1, #420
 1112 039e 40F82140 		str	r4, [r0, r1, lsl #2]
 1113 03a2 C0F8CC20 		str	r2, [r0, #204]
 1114 03a6 15E7     		b	.L161
 1115              	.L174:
 1116 03a8 D0F88836 		ldr	r3, [r0, #1672]
 1117 03ac C218     		adds	r2, r0, r3
 1118 03ae 0021     		movs	r1, #0
 1119 03b0 0133     		adds	r3, r3, #1
 1120 03b2 C0F88836 		str	r3, [r0, #1672]
 1121 03b6 82F8D010 		strb	r1, [r2, #208]
 1122 03ba D0F8C417 		ldr	r1, [r0, #1988]
 1123 03be 00F1D002 		add	r2, r0, #208
 1124 03c2 00EBC105 		add	r5, r0, r1, lsl #3
 1125 03c6 1A44     		add	r2, r2, r3
 1126 03c8 0131     		adds	r1, r1, #1
 1127 03ca 0524     		movs	r4, #5
 1128 03cc C5F8A426 		str	r2, [r5, #1700]
 1129 03d0 C0F8C417 		str	r1, [r0, #1988]
 1130 03d4 C0F8CC40 		str	r4, [r0, #204]
 1131 03d8 FCE6     		b	.L161
 1132              	.L158:
 1133 03da C218     		adds	r2, r0, r3
 1134 03dc 0021     		movs	r1, #0
 1135 03de 0133     		adds	r3, r3, #1
 1136 03e0 C0F88836 		str	r3, [r0, #1672]
 1137 03e4 82F8D010 		strb	r1, [r2, #208]
 1138 03e8 D0F8C027 		ldr	r2, [r0, #1984]
 1139 03ec 511C     		adds	r1, r2, #1
 1140 03ee 0329     		cmp	r1, #3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 21


 1141 03f0 C0F8C017 		str	r1, [r0, #1984]
 1142 03f4 00F22B81 		bhi	.L162
 1143 03f8 02F2A512 		addw	r2, r2, #421
 1144 03fc 00F1D004 		add	r4, r0, #208
 1145 0400 1C44     		add	r4, r4, r3
 1146 0402 0129     		cmp	r1, #1
 1147 0404 40F82240 		str	r4, [r0, r2, lsl #2]
 1148 0408 7FF4E4AE 		bne	.L161
 1149 040c C0F8CC10 		str	r1, [r0, #204]
 1150 0410 E0E6     		b	.L161
 1151              	.L195:
 1152 0412 0344     		add	r3, r3, r0
 1153 0414 0022     		movs	r2, #0
 1154 0416 83F8D020 		strb	r2, [r3, #208]
 1155              	.L213:
 1156 041a FFF7FEFF 		bl	_ZN13HttpResponder14ProcessMessageEv
 1157 041e 0122     		movs	r2, #1
 1158 0420 DEE6     		b	.L163
 1159              	.L193:
 1160 0422 C418     		adds	r4, r0, r3
 1161 0424 0A22     		movs	r2, #10
 1162 0426 0133     		adds	r3, r3, #1
 1163 0428 C0F88836 		str	r3, [r0, #1672]
 1164 042c 84F8D010 		strb	r1, [r4, #208]
 1165 0430 C0F8CC20 		str	r2, [r0, #204]
 1166 0434 CEE6     		b	.L161
 1167              	.L160:
 1168 0436 C118     		adds	r1, r0, r3
 1169 0438 0022     		movs	r2, #0
 1170 043a 0133     		adds	r3, r3, #1
 1171 043c C0F88836 		str	r3, [r0, #1672]
 1172 0440 81F8D020 		strb	r2, [r1, #208]
 1173 0444 D0F8C017 		ldr	r1, [r0, #1984]
 1174 0448 C0F8C827 		str	r2, [r0, #1992]
 1175 044c 00F1D002 		add	r2, r0, #208
 1176 0450 0131     		adds	r1, r1, #1
 1177 0452 1A44     		add	r2, r2, r3
 1178 0454 0824     		movs	r4, #8
 1179 0456 C0F8C017 		str	r1, [r0, #1984]
 1180 045a C0F8D026 		str	r2, [r0, #1744]
 1181 045e C0F8CC40 		str	r4, [r0, #204]
 1182 0462 B7E6     		b	.L161
 1183              	.L187:
 1184 0464 D0F8C827 		ldr	r2, [r0, #1992]
 1185 0468 1D2A     		cmp	r2, #29
 1186 046a 00F0F780 		beq	.L218
 1187 046e D0F88846 		ldr	r4, [r0, #1672]
 1188 0472 631C     		adds	r3, r4, #1
 1189 0474 0444     		add	r4, r4, r0
 1190 0476 00EBC205 		add	r5, r0, r2, lsl #3
 1191 047a 00F1D001 		add	r1, r0, #208
 1192 047e 0026     		movs	r6, #0
 1193 0480 C0F88836 		str	r3, [r0, #1672]
 1194 0484 1944     		add	r1, r1, r3
 1195 0486 84F8D060 		strb	r6, [r4, #208]
 1196 048a 0132     		adds	r2, r2, #1
 1197 048c 0924     		movs	r4, #9
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 22


 1198 048e C5F8D416 		str	r1, [r5, #1748]
 1199 0492 C0F8C827 		str	r2, [r0, #1992]
 1200 0496 C0F8CC40 		str	r4, [r0, #204]
 1201 049a 9BE6     		b	.L161
 1202              	.L168:
 1203 049c 0222     		movs	r2, #2
 1204 049e C0F8CC20 		str	r2, [r0, #204]
 1205 04a2 97E6     		b	.L161
 1206              	.L167:
 1207 04a4 C218     		adds	r2, r0, r3
 1208 04a6 0024     		movs	r4, #0
 1209 04a8 0133     		adds	r3, r3, #1
 1210 04aa C0F88836 		str	r3, [r0, #1672]
 1211 04ae 82F8D040 		strb	r4, [r2, #208]
 1212 04b2 D0F8C017 		ldr	r1, [r0, #1984]
 1213 04b6 C0F8C447 		str	r4, [r0, #1988]
 1214 04ba 00F1D002 		add	r2, r0, #208
 1215 04be 0131     		adds	r1, r1, #1
 1216 04c0 1A44     		add	r2, r2, r3
 1217 04c2 0825     		movs	r5, #8
 1218 04c4 C0F8C847 		str	r4, [r0, #1992]
 1219 04c8 C0F8C017 		str	r1, [r0, #1984]
 1220 04cc C0F8D026 		str	r2, [r0, #1744]
 1221 04d0 C0F8CC50 		str	r5, [r0, #204]
 1222 04d4 7EE6     		b	.L161
 1223              	.L169:
 1224 04d6 C118     		adds	r1, r0, r3
 1225 04d8 0022     		movs	r2, #0
 1226 04da 0133     		adds	r3, r3, #1
 1227 04dc C0F88836 		str	r3, [r0, #1672]
 1228 04e0 81F8D020 		strb	r2, [r1, #208]
 1229 04e4 D0F8C017 		ldr	r1, [r0, #1984]
 1230 04e8 C0F8C427 		str	r2, [r0, #1988]
 1231 04ec 00F1D002 		add	r2, r0, #208
 1232 04f0 0131     		adds	r1, r1, #1
 1233 04f2 1A44     		add	r2, r2, r3
 1234 04f4 0424     		movs	r4, #4
 1235 04f6 C0F8C017 		str	r1, [r0, #1984]
 1236 04fa C0F8A026 		str	r2, [r0, #1696]
 1237 04fe C0F8CC40 		str	r4, [r0, #204]
 1238 0502 67E6     		b	.L161
 1239              	.L165:
 1240 0504 C218     		adds	r2, r0, r3
 1241 0506 0024     		movs	r4, #0
 1242 0508 0133     		adds	r3, r3, #1
 1243 050a C0F88836 		str	r3, [r0, #1672]
 1244 050e 82F8D040 		strb	r4, [r2, #208]
 1245 0512 D0F8C027 		ldr	r2, [r0, #1984]
 1246 0516 511C     		adds	r1, r2, #1
 1247 0518 0329     		cmp	r1, #3
 1248 051a C0F8C017 		str	r1, [r0, #1984]
 1249 051e 00F29680 		bhi	.L162
 1250 0522 02F2A512 		addw	r2, r2, #421
 1251 0526 00F1D001 		add	r1, r0, #208
 1252 052a 1944     		add	r1, r1, r3
 1253 052c 40F82210 		str	r1, [r0, r2, lsl #2]
 1254 0530 C0F8CC40 		str	r4, [r0, #204]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 23


 1255 0534 4EE6     		b	.L161
 1256              	.L181:
 1257 0536 C218     		adds	r2, r0, r3
 1258 0538 2021     		movs	r1, #32
 1259 053a 0133     		adds	r3, r3, #1
 1260 053c C0F88836 		str	r3, [r0, #1672]
 1261 0540 82F8D010 		strb	r1, [r2, #208]
 1262 0544 46E6     		b	.L161
 1263              	.L180:
 1264 0546 C218     		adds	r2, r0, r3
 1265 0548 0021     		movs	r1, #0
 1266 054a 0133     		adds	r3, r3, #1
 1267 054c C0F88836 		str	r3, [r0, #1672]
 1268 0550 82F8D010 		strb	r1, [r2, #208]
 1269 0554 D0F8C417 		ldr	r1, [r0, #1988]
 1270 0558 00F1D002 		add	r2, r0, #208
 1271 055c 01F1D404 		add	r4, r1, #212
 1272 0560 1A44     		add	r2, r2, r3
 1273 0562 0429     		cmp	r1, #4
 1274 0564 40F83420 		str	r2, [r0, r4, lsl #3]
 1275 0568 7FD8     		bhi	.L182
 1276 056a 0422     		movs	r2, #4
 1277 056c C0F8CC20 		str	r2, [r0, #204]
 1278 0570 30E6     		b	.L161
 1279              	.L176:
 1280 0572 C218     		adds	r2, r0, r3
 1281 0574 0024     		movs	r4, #0
 1282 0576 0133     		adds	r3, r3, #1
 1283 0578 C0F88836 		str	r3, [r0, #1672]
 1284 057c 82F8D040 		strb	r4, [r2, #208]
 1285 0580 D0F8C417 		ldr	r1, [r0, #1988]
 1286 0584 00F1D002 		add	r2, r0, #208
 1287 0588 D431     		adds	r1, r1, #212
 1288 058a 1A44     		add	r2, r2, r3
 1289 058c 40F83120 		str	r2, [r0, r1, lsl #3]
 1290 0590 D0F8C017 		ldr	r1, [r0, #1984]
 1291 0594 01F5D271 		add	r1, r1, #420
 1292 0598 40F82120 		str	r2, [r0, r1, lsl #2]
 1293 059c C0F8CC40 		str	r4, [r0, #204]
 1294 05a0 18E6     		b	.L161
 1295              	.L179:
 1296 05a2 0622     		movs	r2, #6
 1297 05a4 C0F8CC20 		str	r2, [r0, #204]
 1298 05a8 14E6     		b	.L161
 1299              	.L178:
 1300 05aa C218     		adds	r2, r0, r3
 1301 05ac 0024     		movs	r4, #0
 1302 05ae 0133     		adds	r3, r3, #1
 1303 05b0 C0F88836 		str	r3, [r0, #1672]
 1304 05b4 82F8D040 		strb	r4, [r2, #208]
 1305 05b8 D0F8C417 		ldr	r1, [r0, #1988]
 1306 05bc 00F1D002 		add	r2, r0, #208
 1307 05c0 D431     		adds	r1, r1, #212
 1308 05c2 1A44     		add	r2, r2, r3
 1309 05c4 0825     		movs	r5, #8
 1310 05c6 40F83120 		str	r2, [r0, r1, lsl #3]
 1311 05ca C0F8C847 		str	r4, [r0, #1992]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 24


 1312 05ce C0F8D026 		str	r2, [r0, #1744]
 1313 05d2 C0F8CC50 		str	r5, [r0, #204]
 1314 05d6 FDE5     		b	.L161
 1315              	.L192:
 1316 05d8 DA1C     		adds	r2, r3, #3
 1317 05da B2F5B76F 		cmp	r2, #1464
 1318 05de BFF4A3AE 		bcs	.L196
 1319 05e2 C418     		adds	r4, r0, r3
 1320 05e4 0022     		movs	r2, #0
 1321 05e6 84F8D020 		strb	r2, [r4, #208]
 1322 05ea D0F8C847 		ldr	r4, [r0, #1992]
 1323 05ee 5E1C     		adds	r6, r3, #1
 1324 05f0 8719     		adds	r7, r0, r6
 1325 05f2 DA34     		adds	r4, r4, #218
 1326 05f4 00F1D005 		add	r5, r0, #208
 1327 05f8 3544     		add	r5, r5, r6
 1328 05fa 0233     		adds	r3, r3, #2
 1329 05fc 0826     		movs	r6, #8
 1330 05fe 40F83450 		str	r5, [r0, r4, lsl #3]
 1331 0602 C0F88836 		str	r3, [r0, #1672]
 1332 0606 87F8D010 		strb	r1, [r7, #208]
 1333 060a C0F8CC60 		str	r6, [r0, #204]
 1334 060e E7E5     		b	.L163
 1335              	.L215:
 1336 0610 0B22     		movs	r2, #11
 1337 0612 C0F8CC20 		str	r2, [r0, #204]
 1338 0616 DDE5     		b	.L161
 1339              	.L184:
 1340 0618 4FF4FA72 		mov	r2, #500
 1341 061c 1849     		ldr	r1, .L219+8
 1342 061e FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1343 0622 0122     		movs	r2, #1
 1344 0624 DCE5     		b	.L163
 1345              	.L214:
 1346 0626 D0F8C827 		ldr	r2, [r0, #1992]
 1347 062a D0F88816 		ldr	r1, [r0, #1672]
 1348 062e DA32     		adds	r2, r2, #218
 1349 0630 00F1D003 		add	r3, r0, #208
 1350 0634 50F83220 		ldr	r2, [r0, r2, lsl #3]
 1351 0638 0B44     		add	r3, r3, r1
 1352 063a 9A42     		cmp	r2, r3
 1353 063c 3FF4EDAE 		beq	.L213
 1354 0640 4FF4FA72 		mov	r2, #500
 1355 0644 0F49     		ldr	r1, .L219+12
 1356 0646 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1357 064a 0122     		movs	r2, #1
 1358 064c C8E5     		b	.L163
 1359              	.L162:
 1360 064e 4FF4FA72 		mov	r2, #500
 1361 0652 0D49     		ldr	r1, .L219+16
 1362 0654 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1363 0658 0122     		movs	r2, #1
 1364 065a C1E5     		b	.L163
 1365              	.L218:
 1366 065c 4FF4FA72 		mov	r2, #500
 1367 0660 0A49     		ldr	r1, .L219+20
 1368 0662 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 25


 1369 0666 0122     		movs	r2, #1
 1370 0668 BAE5     		b	.L163
 1371              	.L182:
 1372 066a 4FF4FA72 		mov	r2, #500
 1373 066e 0849     		ldr	r1, .L219+24
 1374 0670 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1375 0674 0122     		movs	r2, #1
 1376 0676 B3E5     		b	.L163
 1377              	.L220:
 1378              		.align	2
 1379              	.L219:
 1380 0678 88000000 		.word	.LC24
 1381 067c 18000000 		.word	.LC19
 1382 0680 48000000 		.word	.LC21
 1383 0684 54000000 		.word	.LC22
 1384 0688 00000000 		.word	.LC18
 1385 068c 68000000 		.word	.LC23
 1386 0690 2C000000 		.word	.LC20
 1387              		.size	_ZN13HttpResponder14CharFromClientEc, .-_ZN13HttpResponder14CharFromClientEc
 1388              		.section	.text._ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb,"ax",%progbits
 1389              		.align	1
 1390              		.p2align 2,,3
 1391              		.global	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb
 1392              		.syntax unified
 1393              		.thumb
 1394              		.thumb_func
 1395              		.fpu fpv4-sp-d16
 1396              		.type	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb, %function
 1397              	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb:
 1398              		@ args = 0, pretend = 0, frame = 48
 1399              		@ frame_needed = 0, uses_anonymous_args = 0
 1400 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1401 0004 0024     		movs	r4, #0
 1402 0006 8DB0     		sub	sp, sp, #52
 1403 0008 8846     		mov	r8, r1
 1404 000a 0546     		mov	r5, r0
 1405 000c 1C70     		strb	r4, [r3]
 1406 000e 0846     		mov	r0, r1
 1407 0010 C049     		ldr	r1, .L429
 1408 0012 9146     		mov	r9, r2
 1409 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1410 0018 0028     		cmp	r0, #0
 1411 001a 00F0A880 		beq	.L222
 1412 001e D5F8C437 		ldr	r3, [r5, #1988]
 1413 0022 002B     		cmp	r3, #0
 1414 0024 00F0A380 		beq	.L222
 1415 0028 BB4F     		ldr	r7, .L429+4
 1416 002a AA46     		mov	r10, r5
 1417 002c AB46     		mov	fp, r5
 1418 002e 05E0     		b	.L225
 1419              	.L223:
 1420 0030 D5F8C437 		ldr	r3, [r5, #1988]
 1421 0034 0134     		adds	r4, r4, #1
 1422 0036 A342     		cmp	r3, r4
 1423 0038 40F29980 		bls	.L222
 1424              	.L225:
 1425 003c DBF8A006 		ldr	r0, [fp, #1696]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 26


 1426 0040 3946     		mov	r1, r7
 1427 0042 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1428 0046 0BF1080B 		add	fp, fp, #8
 1429 004a 0646     		mov	r6, r0
 1430 004c 0028     		cmp	r0, #0
 1431 004e EFD0     		beq	.L223
 1432 0050 05EBC404 		add	r4, r5, r4, lsl #3
 1433 0054 D4F8A436 		ldr	r3, [r4, #1700]
 1434 0058 002B     		cmp	r3, #0
 1435 005a 00F08880 		beq	.L222
 1436 005e 2846     		mov	r0, r5
 1437 0060 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 1438 0064 0028     		cmp	r0, #0
 1439 0066 40F01481 		bne	.L412
 1440 006a D5F8C437 		ldr	r3, [r5, #1988]
 1441 006e 002B     		cmp	r3, #0
 1442 0070 00F0ED80 		beq	.L230
 1443 0074 DFF8A082 		ldr	r8, .L429+4
 1444 0078 0446     		mov	r4, r0
 1445 007a 2F46     		mov	r7, r5
 1446 007c 05E0     		b	.L233
 1447              	.L231:
 1448 007e D5F8C437 		ldr	r3, [r5, #1988]
 1449 0082 0134     		adds	r4, r4, #1
 1450 0084 A342     		cmp	r3, r4
 1451 0086 40F2E280 		bls	.L230
 1452              	.L233:
 1453 008a D7F8A006 		ldr	r0, [r7, #1696]
 1454 008e 4146     		mov	r1, r8
 1455 0090 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1456 0094 0837     		adds	r7, r7, #8
 1457 0096 0028     		cmp	r0, #0
 1458 0098 F1D0     		beq	.L231
 1459 009a 05EBC404 		add	r4, r5, r4, lsl #3
 1460 009e DFF89082 		ldr	r8, .L429+28
 1461 00a2 D4F8A416 		ldr	r1, [r4, #1700]
 1462 00a6 4046     		mov	r0, r8
 1463 00a8 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 1464 00ac 0446     		mov	r4, r0
 1465 00ae 0028     		cmp	r0, #0
 1466 00b0 00F0D780 		beq	.L413
 1467              	.L234:
 1468 00b4 2846     		mov	r0, r5
 1469 00b6 FFF7FEFF 		bl	_ZN13HttpResponder12AuthenticateEv
 1470 00ba 0028     		cmp	r0, #0
 1471 00bc 00F07881 		beq	.L414
 1472              	.L226:
 1473 00c0 D8F80400 		ldr	r0, [r8, #4]
 1474 00c4 D9F80040 		ldr	r4, [r9]
 1475 00c8 FFF7FEFF 		bl	_ZNK8Platform14GetBoardStringEv
 1476 00cc 4FF4FA52 		mov	r2, #8000
 1477 00d0 0346     		mov	r3, r0
 1478 00d2 9249     		ldr	r1, .L429+8
 1479 00d4 2046     		mov	r0, r4
 1480 00d6 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1481 00da 2846     		mov	r0, r5
 1482 00dc D8F80440 		ldr	r4, [r8, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 27


 1483 00e0 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1484 00e4 0146     		mov	r1, r0
 1485 00e6 03A8     		add	r0, sp, #12
 1486 00e8 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1487 00ec 03AB     		add	r3, sp, #12
 1488 00ee 2046     		mov	r0, r4
 1489 00f0 8B4A     		ldr	r2, .L429+12
 1490 00f2 8021     		movs	r1, #128
 1491 00f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1492 00f8 D5F8C437 		ldr	r3, [r5, #1988]
 1493 00fc 002B     		cmp	r3, #0
 1494 00fe 00F08380 		beq	.L333
 1495 0102 DFF84892 		ldr	r9, .L429+56
 1496 0106 0024     		movs	r4, #0
 1497 0108 04E0     		b	.L236
 1498              	.L237:
 1499 010a D5F8C437 		ldr	r3, [r5, #1988]
 1500 010e 0134     		adds	r4, r4, #1
 1501 0110 A342     		cmp	r3, r4
 1502 0112 79D9     		bls	.L333
 1503              	.L236:
 1504 0114 DAF8A006 		ldr	r0, [r10, #1696]
 1505 0118 4946     		mov	r1, r9
 1506 011a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1507 011e 0AF1080A 		add	r10, r10, #8
 1508 0122 0746     		mov	r7, r0
 1509 0124 0028     		cmp	r0, #0
 1510 0126 F0D0     		beq	.L237
 1511 0128 05EBC405 		add	r5, r5, r4, lsl #3
 1512 012c D5F8A446 		ldr	r4, [r5, #1700]
 1513 0130 002C     		cmp	r4, #0
 1514 0132 69D0     		beq	.L333
 1515 0134 D8F80400 		ldr	r0, [r8, #4]
 1516 0138 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 1517 013c 0028     		cmp	r0, #0
 1518 013e 63D1     		bne	.L333
 1519 0140 0146     		mov	r1, r0
 1520 0142 2422     		movs	r2, #36
 1521 0144 03A8     		add	r0, sp, #12
 1522 0146 FFF7FEFF 		bl	memset
 1523 014a 03AA     		add	r2, sp, #12
 1524 014c 2046     		mov	r0, r4
 1525 014e 7549     		ldr	r1, .L429+16
 1526 0150 FFF7FEFF 		bl	strptime
 1527 0154 48B1     		cbz	r0, .L240
 1528 0156 03A8     		add	r0, sp, #12
 1529 0158 D8F80440 		ldr	r4, [r8, #4]
 1530 015c FFF7FEFF 		bl	mktime
 1531 0160 0246     		mov	r2, r0
 1532 0162 0B46     		mov	r3, r1
 1533 0164 2046     		mov	r0, r4
 1534 0166 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEx
 1535              	.L240:
 1536 016a 3E46     		mov	r6, r7
 1537 016c 4CE0     		b	.L333
 1538              	.L222:
 1539 016e 2846     		mov	r0, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 28


 1540 0170 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 1541 0174 0646     		mov	r6, r0
 1542 0176 0028     		cmp	r0, #0
 1543 0178 40D0     		beq	.L415
 1544 017a 6B49     		ldr	r1, .L429+20
 1545 017c 4046     		mov	r0, r8
 1546 017e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1547 0182 0646     		mov	r6, r0
 1548 0184 0028     		cmp	r0, #0
 1549 0186 43D1     		bne	.L416
 1550 0188 6849     		ldr	r1, .L429+24
 1551 018a 4046     		mov	r0, r8
 1552 018c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1553 0190 8246     		mov	r10, r0
 1554 0192 0028     		cmp	r0, #0
 1555 0194 00F08D80 		beq	.L242
 1556 0198 D5F8C437 		ldr	r3, [r5, #1988]
 1557 019c 002B     		cmp	r3, #0
 1558 019e 7BD0     		beq	.L243
 1559 01a0 DFF8AC81 		ldr	r8, .L429+60
 1560 01a4 3446     		mov	r4, r6
 1561 01a6 2F46     		mov	r7, r5
 1562 01a8 04E0     		b	.L246
 1563              	.L244:
 1564 01aa D5F8C437 		ldr	r3, [r5, #1988]
 1565 01ae 0134     		adds	r4, r4, #1
 1566 01b0 A342     		cmp	r3, r4
 1567 01b2 71D9     		bls	.L243
 1568              	.L246:
 1569 01b4 D7F8A006 		ldr	r0, [r7, #1696]
 1570 01b8 4146     		mov	r1, r8
 1571 01ba FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1572 01be 0837     		adds	r7, r7, #8
 1573 01c0 0646     		mov	r6, r0
 1574 01c2 0028     		cmp	r0, #0
 1575 01c4 F1D0     		beq	.L244
 1576 01c6 05EBC404 		add	r4, r5, r4, lsl #3
 1577 01ca D4F8A406 		ldr	r0, [r4, #1700]
 1578 01ce 0028     		cmp	r0, #0
 1579 01d0 62D0     		beq	.L243
 1580 01d2 0A22     		movs	r2, #10
 1581 01d4 0021     		movs	r1, #0
 1582 01d6 FFF7FEFF 		bl	strtol
 1583 01da 431E     		subs	r3, r0, #1
 1584 01dc 032B     		cmp	r3, #3
 1585 01de 0446     		mov	r4, r0
 1586 01e0 28BF     		it	cs
 1587 01e2 0124     		movcs	r4, #1
 1588 01e4 D9F80000 		ldr	r0, [r9]
 1589 01e8 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1590 01ec E1B2     		uxtb	r1, r4
 1591 01ee 0022     		movs	r2, #0
 1592 01f0 4F48     		ldr	r0, .L429+28
 1593 01f2 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 1594 01f6 C9F80000 		str	r0, [r9]
 1595 01fa 05E0     		b	.L333
 1596              	.L415:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 29


 1597 01fc 2846     		mov	r0, r5
 1598 01fe 40F29112 		movw	r2, #401
 1599 0202 4C49     		ldr	r1, .L429+32
 1600 0204 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 1601              	.L333:
 1602 0208 3046     		mov	r0, r6
 1603 020a 0DB0     		add	sp, sp, #52
 1604              		@ sp needed
 1605 020c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1606              	.L416:
 1607 0210 2846     		mov	r0, r5
 1608 0212 D9F80040 		ldr	r4, [r9]
 1609 0216 FFF7FEFF 		bl	_ZN13HttpResponder20RemoveAuthenticationEv
 1610 021a 80F00102 		eor	r2, r0, #1
 1611 021e D2B2     		uxtb	r2, r2
 1612 0220 4549     		ldr	r1, .L429+36
 1613 0222 2046     		mov	r0, r4
 1614 0224 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1615 0228 414B     		ldr	r3, .L429+28
 1616 022a 2846     		mov	r0, r5
 1617 022c 5C68     		ldr	r4, [r3, #4]
 1618 022e FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1619 0232 0146     		mov	r1, r0
 1620 0234 03A8     		add	r0, sp, #12
 1621 0236 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1622 023a 2046     		mov	r0, r4
 1623 023c 03AB     		add	r3, sp, #12
 1624 023e 3F4A     		ldr	r2, .L429+40
 1625 0240 8021     		movs	r1, #128
 1626 0242 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1627 0246 3046     		mov	r0, r6
 1628 0248 0DB0     		add	sp, sp, #52
 1629              		@ sp needed
 1630 024a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1631              	.L230:
 1632 024e DFF8E080 		ldr	r8, .L429+28
 1633 0252 0021     		movs	r1, #0
 1634 0254 4046     		mov	r0, r8
 1635 0256 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 1636 025a 0446     		mov	r4, r0
 1637 025c 0028     		cmp	r0, #0
 1638 025e 7FF429AF 		bne	.L234
 1639              	.L413:
 1640 0262 3749     		ldr	r1, .L429+44
 1641 0264 D9F80000 		ldr	r0, [r9]
 1642 0268 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1643 026c 2846     		mov	r0, r5
 1644 026e D8F80440 		ldr	r4, [r8, #4]
 1645 0272 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1646 0276 0146     		mov	r1, r0
 1647 0278 03A8     		add	r0, sp, #12
 1648 027a FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1649 027e 2046     		mov	r0, r4
 1650 0280 03AB     		add	r3, sp, #12
 1651 0282 304A     		ldr	r2, .L429+48
 1652 0284 8021     		movs	r1, #128
 1653 0286 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 30


 1654 028a 3046     		mov	r0, r6
 1655 028c 0DB0     		add	sp, sp, #52
 1656              		@ sp needed
 1657 028e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1658              	.L412:
 1659 0292 DFF89C80 		ldr	r8, .L429+28
 1660 0296 13E7     		b	.L226
 1661              	.L243:
 1662 0298 D9F80000 		ldr	r0, [r9]
 1663 029c FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1664 02a0 0022     		movs	r2, #0
 1665 02a2 0121     		movs	r1, #1
 1666 02a4 2248     		ldr	r0, .L429+28
 1667 02a6 FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 1668 02aa 5646     		mov	r6, r10
 1669 02ac C9F80000 		str	r0, [r9]
 1670 02b0 AAE7     		b	.L333
 1671              	.L242:
 1672 02b2 2549     		ldr	r1, .L429+52
 1673 02b4 4046     		mov	r0, r8
 1674 02b6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1675 02ba 0028     		cmp	r0, #0
 1676 02bc 6AD0     		beq	.L248
 1677 02be D5F8C437 		ldr	r3, [r5, #1988]
 1678 02c2 002B     		cmp	r3, #0
 1679 02c4 66D0     		beq	.L248
 1680 02c6 204F     		ldr	r7, .L429+52
 1681 02c8 2C46     		mov	r4, r5
 1682 02ca AB46     		mov	fp, r5
 1683 02cc 05E0     		b	.L251
 1684              	.L249:
 1685 02ce D5F8C437 		ldr	r3, [r5, #1988]
 1686 02d2 0AF1010A 		add	r10, r10, #1
 1687 02d6 5345     		cmp	r3, r10
 1688 02d8 5CD9     		bls	.L248
 1689              	.L251:
 1690 02da DBF8A006 		ldr	r0, [fp, #1696]
 1691 02de 3946     		mov	r1, r7
 1692 02e0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1693 02e4 0BF1080B 		add	fp, fp, #8
 1694 02e8 0646     		mov	r6, r0
 1695 02ea 0028     		cmp	r0, #0
 1696 02ec EFD0     		beq	.L249
 1697 02ee 05EBCA0A 		add	r10, r5, r10, lsl #3
 1698 02f2 DAF8A436 		ldr	r3, [r10, #1700]
 1699 02f6 002B     		cmp	r3, #0
 1700 02f8 4CD0     		beq	.L248
 1701 02fa 0D4A     		ldr	r2, .L429+28
 1702 02fc D5F8C437 		ldr	r3, [r5, #1988]
 1703 0300 5269     		ldr	r2, [r2, #20]
 1704 0302 D2F81080 		ldr	r8, [r2, #16]
 1705 0306 002B     		cmp	r3, #0
 1706 0308 68D0     		beq	.L254
 1707 030a DFF83CA0 		ldr	r10, .L429+52
 1708 030e 0027     		movs	r7, #0
 1709 0310 25E0     		b	.L257
 1710              	.L430:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 31


 1711 0312 00BF     		.align	2
 1712              	.L429:
 1713 0314 0C000000 		.word	.LC26
 1714 0318 14000000 		.word	.LC27
 1715 031c B0000000 		.word	.LC32
 1716 0320 E0000000 		.word	.LC33
 1717 0324 08010000 		.word	.LC35
 1718 0328 2C010000 		.word	.LC37
 1719 032c 64010000 		.word	.LC40
 1720 0330 00000000 		.word	reprap
 1721 0334 1C010000 		.word	.LC36
 1722 0338 38010000 		.word	.LC38
 1723 033c 44010000 		.word	.LC39
 1724 0340 20000000 		.word	.LC28
 1725 0344 2C000000 		.word	.LC29
 1726 0348 74010000 		.word	.LC42
 1727 034c 00010000 		.word	.LC34
 1728 0350 6C010000 		.word	.LC41
 1729              	.L255:
 1730 0354 D5F8C437 		ldr	r3, [r5, #1988]
 1731 0358 0137     		adds	r7, r7, #1
 1732 035a BB42     		cmp	r3, r7
 1733 035c 3ED9     		bls	.L254
 1734              	.L257:
 1735 035e D4F8A006 		ldr	r0, [r4, #1696]
 1736 0362 5146     		mov	r1, r10
 1737 0364 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1738 0368 0834     		adds	r4, r4, #8
 1739 036a 0028     		cmp	r0, #0
 1740 036c F2D0     		beq	.L255
 1741 036e 05EBC705 		add	r5, r5, r7, lsl #3
 1742 0372 D5F8A426 		ldr	r2, [r5, #1700]
 1743              	.L256:
 1744 0376 1021     		movs	r1, #16
 1745 0378 4046     		mov	r0, r8
 1746 037a FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 1747 037e 4046     		mov	r0, r8
 1748 0380 D9F80040 		ldr	r4, [r9]
 1749 0384 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 1750 0388 BD49     		ldr	r1, .L431
 1751 038a 0246     		mov	r2, r0
 1752 038c 2046     		mov	r0, r4
 1753 038e FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1754 0392 39E7     		b	.L333
 1755              	.L248:
 1756 0394 BB49     		ldr	r1, .L431+4
 1757 0396 4046     		mov	r0, r8
 1758 0398 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1759 039c 0646     		mov	r6, r0
 1760 039e F8B1     		cbz	r0, .L417
 1761 03a0 95F8C820 		ldrb	r2, [r5, #200]	@ zero_extendqisi2
 1762 03a4 D9F80000 		ldr	r0, [r9]
 1763 03a8 B749     		ldr	r1, .L431+8
 1764 03aa FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1765 03ae 2BE7     		b	.L333
 1766              	.L414:
 1767 03b0 B649     		ldr	r1, .L431+12
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 32


 1768 03b2 D9F80000 		ldr	r0, [r9]
 1769 03b6 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1770 03ba 2846     		mov	r0, r5
 1771 03bc D8F80450 		ldr	r5, [r8, #4]
 1772 03c0 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 1773 03c4 0146     		mov	r1, r0
 1774 03c6 03A8     		add	r0, sp, #12
 1775 03c8 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1776 03cc 03AB     		add	r3, sp, #12
 1777 03ce 2846     		mov	r0, r5
 1778 03d0 AF4A     		ldr	r2, .L431+16
 1779 03d2 8021     		movs	r1, #128
 1780 03d4 2646     		mov	r6, r4
 1781 03d6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1782 03da 15E7     		b	.L333
 1783              	.L254:
 1784 03dc 0022     		movs	r2, #0
 1785 03de CAE7     		b	.L256
 1786              	.L417:
 1787 03e0 AC49     		ldr	r1, .L431+20
 1788 03e2 4046     		mov	r0, r8
 1789 03e4 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1790 03e8 0028     		cmp	r0, #0
 1791 03ea 4AD0     		beq	.L258
 1792 03ec D5F8C437 		ldr	r3, [r5, #1988]
 1793 03f0 002B     		cmp	r3, #0
 1794 03f2 46D0     		beq	.L258
 1795 03f4 AA46     		mov	r10, r5
 1796 03f6 AB46     		mov	fp, r5
 1797 03f8 3446     		mov	r4, r6
 1798 03fa 04E0     		b	.L261
 1799              	.L259:
 1800 03fc D5F8C427 		ldr	r2, [r5, #1988]
 1801 0400 0134     		adds	r4, r4, #1
 1802 0402 A242     		cmp	r2, r4
 1803 0404 3DD9     		bls	.L258
 1804              	.L261:
 1805 0406 DBF8A006 		ldr	r0, [fp, #1696]
 1806 040a A349     		ldr	r1, .L431+24
 1807 040c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1808 0410 0BF1080B 		add	fp, fp, #8
 1809 0414 0746     		mov	r7, r0
 1810 0416 0028     		cmp	r0, #0
 1811 0418 F0D0     		beq	.L259
 1812 041a 05EBC404 		add	r4, r5, r4, lsl #3
 1813 041e D4F8A436 		ldr	r3, [r4, #1700]
 1814 0422 73B3     		cbz	r3, .L258
 1815 0424 9D4A     		ldr	r2, .L431+28
 1816 0426 D5F8C437 		ldr	r3, [r5, #1988]
 1817 042a 5268     		ldr	r2, [r2, #4]
 1818 042c D2F8DC6B 		ldr	r6, [r2, #3036]
 1819 0430 002B     		cmp	r3, #0
 1820 0432 00F01281 		beq	.L264
 1821 0436 DFF86082 		ldr	r8, .L431+24
 1822 043a 0024     		movs	r4, #0
 1823 043c 05E0     		b	.L267
 1824              	.L265:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 33


 1825 043e D5F8C437 		ldr	r3, [r5, #1988]
 1826 0442 0134     		adds	r4, r4, #1
 1827 0444 A342     		cmp	r3, r4
 1828 0446 40F20881 		bls	.L264
 1829              	.L267:
 1830 044a DAF8A006 		ldr	r0, [r10, #1696]
 1831 044e 4146     		mov	r1, r8
 1832 0450 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1833 0454 0AF1080A 		add	r10, r10, #8
 1834 0458 0028     		cmp	r0, #0
 1835 045a F0D0     		beq	.L265
 1836 045c 05EBC404 		add	r4, r5, r4, lsl #3
 1837 0460 D4F8A426 		ldr	r2, [r4, #1700]
 1838              	.L266:
 1839 0464 8E49     		ldr	r1, .L431+32
 1840 0466 3046     		mov	r0, r6
 1841 0468 0023     		movs	r3, #0
 1842 046a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1843 046e 80F00102 		eor	r2, r0, #1
 1844 0472 D2B2     		uxtb	r2, r2
 1845 0474 D9F80000 		ldr	r0, [r9]
 1846 0478 8349     		ldr	r1, .L431+8
 1847 047a 3E46     		mov	r6, r7
 1848 047c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1849 0480 C2E6     		b	.L333
 1850              	.L258:
 1851 0482 8849     		ldr	r1, .L431+36
 1852 0484 4046     		mov	r0, r8
 1853 0486 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1854 048a 0028     		cmp	r0, #0
 1855 048c 69D0     		beq	.L263
 1856 048e D5F8C437 		ldr	r3, [r5, #1988]
 1857 0492 002B     		cmp	r3, #0
 1858 0494 65D0     		beq	.L263
 1859 0496 2F46     		mov	r7, r5
 1860 0498 AB46     		mov	fp, r5
 1861 049a 4FF0000A 		mov	r10, #0
 1862 049e 05E0     		b	.L270
 1863              	.L268:
 1864 04a0 D5F8C427 		ldr	r2, [r5, #1988]
 1865 04a4 0AF1010A 		add	r10, r10, #1
 1866 04a8 5245     		cmp	r2, r10
 1867 04aa 5AD9     		bls	.L263
 1868              	.L270:
 1869 04ac DBF8A006 		ldr	r0, [fp, #1696]
 1870 04b0 7D49     		ldr	r1, .L431+40
 1871 04b2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1872 04b6 0BF1080B 		add	fp, fp, #8
 1873 04ba 0446     		mov	r4, r0
 1874 04bc 0028     		cmp	r0, #0
 1875 04be EFD0     		beq	.L268
 1876 04c0 05EBCA0A 		add	r10, r5, r10, lsl #3
 1877 04c4 DAF8A436 		ldr	r3, [r10, #1700]
 1878 04c8 002B     		cmp	r3, #0
 1879 04ca 4AD0     		beq	.L263
 1880 04cc D9F80000 		ldr	r0, [r9]
 1881 04d0 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 34


 1882 04d4 D5F8C467 		ldr	r6, [r5, #1988]
 1883 04d8 002E     		cmp	r6, #0
 1884 04da 00F0E981 		beq	.L325
 1885 04de 734E     		ldr	r6, .L431+44
 1886 04e0 AA46     		mov	r10, r5
 1887 04e2 4FF00008 		mov	r8, #0
 1888 04e6 06E0     		b	.L277
 1889              	.L274:
 1890 04e8 D5F8C417 		ldr	r1, [r5, #1988]
 1891 04ec 08F10108 		add	r8, r8, #1
 1892 04f0 4145     		cmp	r1, r8
 1893 04f2 40F20781 		bls	.L418
 1894              	.L277:
 1895 04f6 DAF8A006 		ldr	r0, [r10, #1696]
 1896 04fa 3146     		mov	r1, r6
 1897 04fc FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1898 0500 0AF1080A 		add	r10, r10, #8
 1899 0504 0028     		cmp	r0, #0
 1900 0506 EFD0     		beq	.L274
 1901 0508 05EBC808 		add	r8, r5, r8, lsl #3
 1902 050c D8F8A406 		ldr	r0, [r8, #1700]
 1903 0510 18B1     		cbz	r0, .L409
 1904 0512 0A22     		movs	r2, #10
 1905 0514 0021     		movs	r1, #0
 1906 0516 FFF7FEFF 		bl	strtol
 1907              	.L409:
 1908 051a D5F8C417 		ldr	r1, [r5, #1988]
 1909 051e 0646     		mov	r6, r0
 1910              	.L276:
 1911 0520 B9B1     		cbz	r1, .L273
 1912 0522 DFF884A1 		ldr	r10, .L431+40
 1913 0526 4FF00008 		mov	r8, #0
 1914 052a 06E0     		b	.L279
 1915              	.L278:
 1916 052c D5F8C437 		ldr	r3, [r5, #1988]
 1917 0530 08F10108 		add	r8, r8, #1
 1918 0534 4345     		cmp	r3, r8
 1919 0536 40F2E380 		bls	.L419
 1920              	.L279:
 1921 053a D7F8A006 		ldr	r0, [r7, #1696]
 1922 053e 5146     		mov	r1, r10
 1923 0540 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1924 0544 0837     		adds	r7, r7, #8
 1925 0546 0028     		cmp	r0, #0
 1926 0548 F0D0     		beq	.L278
 1927 054a 05EBC805 		add	r5, r5, r8, lsl #3
 1928 054e D5F8A416 		ldr	r1, [r5, #1700]
 1929              	.L273:
 1930 0552 5248     		ldr	r0, .L431+28
 1931 0554 3246     		mov	r2, r6
 1932 0556 FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKcj
 1933 055a 2646     		mov	r6, r4
 1934 055c C9F80000 		str	r0, [r9]
 1935 0560 52E6     		b	.L333
 1936              	.L263:
 1937 0562 5349     		ldr	r1, .L431+48
 1938 0564 4046     		mov	r0, r8
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 35


 1939 0566 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1940 056a 0746     		mov	r7, r0
 1941 056c 0028     		cmp	r0, #0
 1942 056e 76D0     		beq	.L420
 1943 0570 D9F80000 		ldr	r0, [r9]
 1944 0574 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1945 0578 D5F8C447 		ldr	r4, [r5, #1988]
 1946 057c 002C     		cmp	r4, #0
 1947 057e 00F09481 		beq	.L328
 1948 0582 DFF82481 		ldr	r8, .L431+40
 1949 0586 AA46     		mov	r10, r5
 1950 0588 AB46     		mov	fp, r5
 1951 058a 0024     		movs	r4, #0
 1952 058c 05E0     		b	.L283
 1953              	.L281:
 1954 058e D5F8C417 		ldr	r1, [r5, #1988]
 1955 0592 0134     		adds	r4, r4, #1
 1956 0594 A142     		cmp	r1, r4
 1957 0596 40F2AC80 		bls	.L421
 1958              	.L283:
 1959 059a DBF8A006 		ldr	r0, [fp, #1696]
 1960 059e 4146     		mov	r1, r8
 1961 05a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1962 05a4 0BF1080B 		add	fp, fp, #8
 1963 05a8 0028     		cmp	r0, #0
 1964 05aa F0D0     		beq	.L281
 1965 05ac 05EBC404 		add	r4, r5, r4, lsl #3
 1966 05b0 D4F8A486 		ldr	r8, [r4, #1700]
 1967 05b4 B8F1000F 		cmp	r8, #0
 1968 05b8 00F07481 		beq	.L329
 1969              	.L410:
 1970 05bc D5F8C417 		ldr	r1, [r5, #1988]
 1971              	.L282:
 1972 05c0 0029     		cmp	r1, #0
 1973 05c2 00F06D81 		beq	.L330
 1974 05c6 394C     		ldr	r4, .L431+44
 1975 05c8 4FF0000B 		mov	fp, #0
 1976 05cc 06E0     		b	.L287
 1977              	.L284:
 1978 05ce D5F8C417 		ldr	r1, [r5, #1988]
 1979 05d2 0BF1010B 		add	fp, fp, #1
 1980 05d6 5945     		cmp	r1, fp
 1981 05d8 40F28E80 		bls	.L422
 1982              	.L287:
 1983 05dc DAF8A006 		ldr	r0, [r10, #1696]
 1984 05e0 2146     		mov	r1, r4
 1985 05e2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1986 05e6 0AF1080A 		add	r10, r10, #8
 1987 05ea 0028     		cmp	r0, #0
 1988 05ec EFD0     		beq	.L284
 1989 05ee 05EBCB0B 		add	fp, r5, fp, lsl #3
 1990 05f2 DBF8A406 		ldr	r0, [fp, #1700]
 1991 05f6 18B1     		cbz	r0, .L411
 1992 05f8 0A22     		movs	r2, #10
 1993 05fa 0021     		movs	r1, #0
 1994 05fc FFF7FEFF 		bl	strtol
 1995              	.L411:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 36


 1996 0600 D5F8C417 		ldr	r1, [r5, #1988]
 1997 0604 0446     		mov	r4, r0
 1998              	.L286:
 1999 0606 F1B1     		cbz	r1, .L280
 2000 0608 AA46     		mov	r10, r5
 2001 060a 4FF0000B 		mov	fp, #0
 2002 060e 05E0     		b	.L290
 2003              	.L288:
 2004 0610 D5F8C427 		ldr	r2, [r5, #1988]
 2005 0614 0BF1010B 		add	fp, fp, #1
 2006 0618 5A45     		cmp	r2, fp
 2007 061a 6FD9     		bls	.L423
 2008              	.L290:
 2009 061c DAF8A006 		ldr	r0, [r10, #1696]
 2010 0620 2449     		ldr	r1, .L431+52
 2011 0622 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2012 0626 0AF1080A 		add	r10, r10, #8
 2013 062a 0028     		cmp	r0, #0
 2014 062c F0D0     		beq	.L288
 2015 062e 05EBCB05 		add	r5, r5, fp, lsl #3
 2016 0632 D5F8A406 		ldr	r0, [r5, #1700]
 2017 0636 30B1     		cbz	r0, .L280
 2018 0638 0A22     		movs	r2, #10
 2019 063a 0021     		movs	r1, #0
 2020 063c FFF7FEFF 		bl	strtol
 2021 0640 431E     		subs	r3, r0, #1
 2022 0642 5E42     		rsbs	r6, r3, #0
 2023 0644 5E41     		adcs	r6, r6, r3
 2024              	.L280:
 2025 0646 3346     		mov	r3, r6
 2026 0648 2246     		mov	r2, r4
 2027 064a 4146     		mov	r1, r8
 2028 064c 1348     		ldr	r0, .L431+28
 2029 064e FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcjb
 2030 0652 3E46     		mov	r6, r7
 2031 0654 C9F80000 		str	r0, [r9]
 2032 0658 D6E5     		b	.L333
 2033              	.L264:
 2034 065a 0022     		movs	r2, #0
 2035 065c 02E7     		b	.L266
 2036              	.L420:
 2037 065e 1649     		ldr	r1, .L431+56
 2038 0660 4046     		mov	r0, r8
 2039 0662 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2040 0666 8246     		mov	r10, r0
 2041 0668 0028     		cmp	r0, #0
 2042 066a 51D0     		beq	.L291
 2043 066c D5F8C437 		ldr	r3, [r5, #1988]
 2044 0670 002B     		cmp	r3, #0
 2045 0672 49D0     		beq	.L292
 2046 0674 DFF82080 		ldr	r8, .L431+24
 2047 0678 3C46     		mov	r4, r7
 2048 067a 2E46     		mov	r6, r5
 2049 067c 23E0     		b	.L295
 2050              	.L432:
 2051 067e 00BF     		.align	2
 2052              	.L431:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 37


 2053 0680 84010000 		.word	.LC44
 2054 0684 7C010000 		.word	.LC43
 2055 0688 38010000 		.word	.LC38
 2056 068c 64000000 		.word	.LC30
 2057 0690 70000000 		.word	.LC31
 2058 0694 90010000 		.word	.LC45
 2059 0698 98010000 		.word	.LC46
 2060 069c 00000000 		.word	reprap
 2061 06a0 AC010000 		.word	.LC48
 2062 06a4 A0010000 		.word	.LC47
 2063 06a8 B0010000 		.word	.LC49
 2064 06ac BC010000 		.word	.LC51
 2065 06b0 B4010000 		.word	.LC50
 2066 06b4 C4010000 		.word	.LC52
 2067 06b8 D0010000 		.word	.LC53
 2068              	.L293:
 2069 06bc D5F8C437 		ldr	r3, [r5, #1988]
 2070 06c0 0134     		adds	r4, r4, #1
 2071 06c2 A342     		cmp	r3, r4
 2072 06c4 20D9     		bls	.L292
 2073              	.L295:
 2074 06c6 D6F8A006 		ldr	r0, [r6, #1696]
 2075 06ca 4146     		mov	r1, r8
 2076 06cc FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2077 06d0 0836     		adds	r6, r6, #8
 2078 06d2 0028     		cmp	r0, #0
 2079 06d4 F2D0     		beq	.L293
 2080 06d6 05EBC404 		add	r4, r5, r4, lsl #3
 2081 06da D4F8A416 		ldr	r1, [r4, #1700]
 2082 06de 99B1     		cbz	r1, .L292
 2083 06e0 7822     		movs	r2, #120
 2084 06e2 05F5FA60 		add	r0, r5, #2000
 2085 06e6 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 2086              	.L296:
 2087 06ea 0523     		movs	r3, #5
 2088 06ec AB60     		str	r3, [r5, #8]
 2089 06ee 0026     		movs	r6, #0
 2090 06f0 8AE5     		b	.L333
 2091              	.L421:
 2092 06f2 DFF8F881 		ldr	r8, .L433+36
 2093 06f6 63E7     		b	.L282
 2094              	.L422:
 2095 06f8 0446     		mov	r4, r0
 2096 06fa 84E7     		b	.L286
 2097              	.L423:
 2098 06fc 0646     		mov	r6, r0
 2099 06fe A2E7     		b	.L280
 2100              	.L419:
 2101 0700 0146     		mov	r1, r0
 2102 0702 26E7     		b	.L273
 2103              	.L418:
 2104 0704 0646     		mov	r6, r0
 2105 0706 0BE7     		b	.L276
 2106              	.L292:
 2107 0708 0023     		movs	r3, #0
 2108 070a 85F8D037 		strb	r3, [r5, #2000]
 2109 070e ECE7     		b	.L296
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 38


 2110              	.L291:
 2111 0710 6D49     		ldr	r1, .L433
 2112 0712 4046     		mov	r0, r8
 2113 0714 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2114 0718 0646     		mov	r6, r0
 2115 071a 0446     		mov	r4, r0
 2116 071c 0028     		cmp	r0, #0
 2117 071e 69D0     		beq	.L297
 2118 0720 D5F8C437 		ldr	r3, [r5, #1988]
 2119 0724 002B     		cmp	r3, #0
 2120 0726 7BD0     		beq	.L317
 2121 0728 DFF8C4B1 		ldr	fp, .L433+40
 2122 072c 5446     		mov	r4, r10
 2123 072e A846     		mov	r8, r5
 2124 0730 2F46     		mov	r7, r5
 2125 0732 05E0     		b	.L303
 2126              	.L299:
 2127 0734 D5F8C437 		ldr	r3, [r5, #1988]
 2128 0738 0134     		adds	r4, r4, #1
 2129 073a A342     		cmp	r3, r4
 2130 073c 40F28D80 		bls	.L424
 2131              	.L303:
 2132 0740 D7F8A006 		ldr	r0, [r7, #1696]
 2133 0744 5946     		mov	r1, fp
 2134 0746 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2135 074a 0837     		adds	r7, r7, #8
 2136 074c 0028     		cmp	r0, #0
 2137 074e F1D0     		beq	.L299
 2138 0750 05EBC404 		add	r4, r5, r4, lsl #3
 2139 0754 D5F8C437 		ldr	r3, [r5, #1988]
 2140 0758 D4F8A446 		ldr	r4, [r4, #1700]
 2141 075c 002B     		cmp	r3, #0
 2142 075e 5FD0     		beq	.L317
 2143              	.L301:
 2144 0760 DFF890B1 		ldr	fp, .L433+44
 2145 0764 AA46     		mov	r10, r5
 2146 0766 0027     		movs	r7, #0
 2147 0768 04E0     		b	.L306
 2148              	.L304:
 2149 076a D5F8C437 		ldr	r3, [r5, #1988]
 2150 076e 0137     		adds	r7, r7, #1
 2151 0770 BB42     		cmp	r3, r7
 2152 0772 55D9     		bls	.L317
 2153              	.L306:
 2154 0774 DAF8A006 		ldr	r0, [r10, #1696]
 2155 0778 5946     		mov	r1, fp
 2156 077a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2157 077e 0AF1080A 		add	r10, r10, #8
 2158 0782 0028     		cmp	r0, #0
 2159 0784 F1D0     		beq	.L304
 2160 0786 05EBC707 		add	r7, r5, r7, lsl #3
 2161 078a D7F8A4B6 		ldr	fp, [r7, #1700]
 2162 078e 002C     		cmp	r4, #0
 2163 0790 46D0     		beq	.L317
 2164 0792 BBF1000F 		cmp	fp, #0
 2165 0796 43D0     		beq	.L317
 2166 0798 4C4A     		ldr	r2, .L433+4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 39


 2167 079a D5F8C437 		ldr	r3, [r5, #1988]
 2168 079e 5268     		ldr	r2, [r2, #4]
 2169 07a0 D2F8DCAB 		ldr	r10, [r2, #3036]
 2170 07a4 002B     		cmp	r3, #0
 2171 07a6 43D0     		beq	.L309
 2172 07a8 494B     		ldr	r3, .L433+8
 2173 07aa 0027     		movs	r7, #0
 2174 07ac 04E0     		b	.L312
 2175              	.L310:
 2176 07ae D5F8C427 		ldr	r2, [r5, #1988]
 2177 07b2 0137     		adds	r7, r7, #1
 2178 07b4 BA42     		cmp	r2, r7
 2179 07b6 3BD9     		bls	.L309
 2180              	.L312:
 2181 07b8 1946     		mov	r1, r3
 2182 07ba D8F8A006 		ldr	r0, [r8, #1696]
 2183 07be 0193     		str	r3, [sp, #4]
 2184 07c0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2185 07c4 08F10808 		add	r8, r8, #8
 2186 07c8 019B     		ldr	r3, [sp, #4]
 2187 07ca 0028     		cmp	r0, #0
 2188 07cc EFD0     		beq	.L310
 2189 07ce 05EBC705 		add	r5, r5, r7, lsl #3
 2190 07d2 D5F8A406 		ldr	r0, [r5, #1700]
 2191              	.L311:
 2192 07d6 3F49     		ldr	r1, .L433+12
 2193 07d8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2194 07dc 50BB     		cbnz	r0, .L425
 2195              	.L314:
 2196 07de 5A46     		mov	r2, fp
 2197 07e0 2146     		mov	r1, r4
 2198 07e2 5046     		mov	r0, r10
 2199 07e4 FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 2200 07e8 80F00102 		eor	r2, r0, #1
 2201 07ec D9F80030 		ldr	r3, [r9]
 2202 07f0 D2B2     		uxtb	r2, r2
 2203 07f2 18E0     		b	.L321
 2204              	.L297:
 2205 07f4 3849     		ldr	r1, .L433+16
 2206 07f6 4046     		mov	r0, r8
 2207 07f8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2208 07fc 0646     		mov	r6, r0
 2209 07fe 0028     		cmp	r0, #0
 2210 0800 41D0     		beq	.L316
 2211 0802 364F     		ldr	r7, .L433+20
 2212 0804 05E0     		b	.L320
 2213              	.L427:
 2214 0806 D3F8A006 		ldr	r0, [r3, #1696]
 2215 080a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2216 080e 40BB     		cbnz	r0, .L426
 2217 0810 0134     		adds	r4, r4, #1
 2218              	.L320:
 2219 0812 D5F8C427 		ldr	r2, [r5, #1988]
 2220 0816 A242     		cmp	r2, r4
 2221 0818 05EBC403 		add	r3, r5, r4, lsl #3
 2222 081c 3946     		mov	r1, r7
 2223 081e F2D8     		bhi	.L427
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 40


 2224              	.L317:
 2225 0820 D9F80030 		ldr	r3, [r9]
 2226 0824 0122     		movs	r2, #1
 2227              	.L321:
 2228 0826 1846     		mov	r0, r3
 2229 0828 2D49     		ldr	r1, .L433+24
 2230 082a FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2231 082e EBE4     		b	.L333
 2232              	.L309:
 2233 0830 0020     		movs	r0, #0
 2234 0832 D0E7     		b	.L311
 2235              	.L425:
 2236 0834 2146     		mov	r1, r4
 2237 0836 5046     		mov	r0, r10
 2238 0838 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 2239 083c 0028     		cmp	r0, #0
 2240 083e CED0     		beq	.L314
 2241 0840 5946     		mov	r1, fp
 2242 0842 5046     		mov	r0, r10
 2243 0844 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 2244 0848 0028     		cmp	r0, #0
 2245 084a C8D0     		beq	.L314
 2246 084c 0123     		movs	r3, #1
 2247 084e 5A46     		mov	r2, fp
 2248 0850 0021     		movs	r1, #0
 2249 0852 5046     		mov	r0, r10
 2250 0854 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2251 0858 C1E7     		b	.L314
 2252              	.L424:
 2253 085a 002B     		cmp	r3, #0
 2254 085c E0D0     		beq	.L317
 2255 085e 0446     		mov	r4, r0
 2256 0860 7EE7     		b	.L301
 2257              	.L426:
 2258 0862 05EBC404 		add	r4, r5, r4, lsl #3
 2259 0866 D4F8A416 		ldr	r1, [r4, #1700]
 2260 086a 0029     		cmp	r1, #0
 2261 086c D8D0     		beq	.L317
 2262 086e 174B     		ldr	r3, .L433+4
 2263 0870 5B68     		ldr	r3, [r3, #4]
 2264 0872 D3F8DC0B 		ldr	r0, [r3, #3036]
 2265 0876 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 2266 087a 80F00102 		eor	r2, r0, #1
 2267 087e D9F80030 		ldr	r3, [r9]
 2268 0882 D2B2     		uxtb	r2, r2
 2269 0884 CFE7     		b	.L321
 2270              	.L316:
 2271 0886 4046     		mov	r0, r8
 2272 0888 1649     		ldr	r1, .L433+28
 2273 088a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2274 088e 0646     		mov	r6, r0
 2275 0890 80B9     		cbnz	r0, .L428
 2276 0892 2846     		mov	r0, r5
 2277 0894 4FF4FA72 		mov	r2, #500
 2278 0898 1349     		ldr	r1, .L433+32
 2279 089a FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2280 089e B3E4     		b	.L333
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 41


 2281              	.L330:
 2282 08a0 0C46     		mov	r4, r1
 2283 08a2 D0E6     		b	.L280
 2284              	.L329:
 2285 08a4 DFF84480 		ldr	r8, .L433+36
 2286 08a8 88E6     		b	.L410
 2287              	.L328:
 2288 08aa DFF84080 		ldr	r8, .L433+36
 2289 08ae CAE6     		b	.L280
 2290              	.L325:
 2291 08b0 3146     		mov	r1, r6
 2292 08b2 4EE6     		b	.L273
 2293              	.L428:
 2294 08b4 D9F80000 		ldr	r0, [r9]
 2295 08b8 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2296 08bc 0348     		ldr	r0, .L433+4
 2297 08be FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 2298 08c2 C9F80000 		str	r0, [r9]
 2299 08c6 9FE4     		b	.L333
 2300              	.L434:
 2301              		.align	2
 2302              	.L433:
 2303 08c8 DC010000 		.word	.LC54
 2304 08cc 00000000 		.word	reprap
 2305 08d0 EC010000 		.word	.LC57
 2306 08d4 FC010000 		.word	.LC58
 2307 08d8 00020000 		.word	.LC59
 2308 08dc B0010000 		.word	.LC49
 2309 08e0 38010000 		.word	.LC38
 2310 08e4 08020000 		.word	.LC60
 2311 08e8 10020000 		.word	.LC61
 2312 08ec 00000000 		.word	.LC25
 2313 08f0 E4010000 		.word	.LC55
 2314 08f4 E8010000 		.word	.LC56
 2315              		.size	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb, .-_ZN13HttpResponder15GetJsonResp
 2316              		.section	.text._ZN13HttpResponder8SendFileEPKcb,"ax",%progbits
 2317              		.align	1
 2318              		.p2align 2,,3
 2319              		.global	_ZN13HttpResponder8SendFileEPKcb
 2320              		.syntax unified
 2321              		.thumb
 2322              		.thumb_func
 2323              		.fpu fpv4-sp-d16
 2324              		.type	_ZN13HttpResponder8SendFileEPKcb, %function
 2325              	_ZN13HttpResponder8SendFileEPKcb:
 2326              		@ args = 0, pretend = 0, frame = 136
 2327              		@ frame_needed = 0, uses_anonymous_args = 0
 2328 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2329 0004 0446     		mov	r4, r0
 2330 0006 A2B0     		sub	sp, sp, #136
 2331 0008 0D46     		mov	r5, r1
 2332 000a 1746     		mov	r7, r2
 2333 000c 002A     		cmp	r2, #0
 2334 000e 00F08480 		beq	.L436
 2335 0012 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2336 0014 2F2B     		cmp	r3, #47
 2337 0016 35D0     		beq	.L486
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 42


 2338 0018 9F49     		ldr	r1, .L497
 2339 001a 2846     		mov	r0, r5
 2340 001c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2341 0020 28B9     		cbnz	r0, .L485
 2342              	.L479:
 2343 0022 2846     		mov	r0, r5
 2344 0024 FFF7FEFF 		bl	strlen
 2345 0028 0330     		adds	r0, r0, #3
 2346 002a 7828     		cmp	r0, #120
 2347 002c 35D9     		bls	.L453
 2348              	.L485:
 2349 002e DFF89882 		ldr	r8, .L497+48
 2350              	.L439:
 2351 0032 D8F80430 		ldr	r3, [r8, #4]
 2352 0036 9949     		ldr	r1, .L497+4
 2353 0038 D3F8DC0B 		ldr	r0, [r3, #3036]
 2354 003c 2A46     		mov	r2, r5
 2355 003e 0023     		movs	r3, #0
 2356 0040 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2357 0044 0646     		mov	r6, r0
 2358 0046 0028     		cmp	r0, #0
 2359 0048 00F09380 		beq	.L487
 2360              	.L442:
 2361 004c 9449     		ldr	r1, .L497+8
 2362 004e 2663     		str	r6, [r4, #48]
 2363 0050 A069     		ldr	r0, [r4, #24]
 2364 0052 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2365 0056 9349     		ldr	r1, .L497+12
 2366 0058 2846     		mov	r0, r5
 2367 005a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2368 005e 0028     		cmp	r0, #0
 2369 0060 76D1     		bne	.L457
 2370 0062 9149     		ldr	r1, .L497+16
 2371 0064 2846     		mov	r0, r5
 2372 0066 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2373 006a 0746     		mov	r7, r0
 2374 006c 0028     		cmp	r0, #0
 2375 006e 40F00D81 		bne	.L461
 2376              	.L462:
 2377 0072 8E49     		ldr	r1, .L497+20
 2378 0074 2846     		mov	r0, r5
 2379 0076 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2380 007a 0028     		cmp	r0, #0
 2381 007c 00F0AE80 		beq	.L465
 2382 0080 8B4A     		ldr	r2, .L497+24
 2383 0082 B1E0     		b	.L450
 2384              	.L486:
 2385 0084 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 2386 0086 002B     		cmp	r3, #0
 2387 0088 40F09280 		bne	.L488
 2388 008c 8249     		ldr	r1, .L497
 2389 008e 8948     		ldr	r0, .L497+28
 2390 0090 884D     		ldr	r5, .L497+28
 2391 0092 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2392 0096 0028     		cmp	r0, #0
 2393 0098 C9D1     		bne	.L485
 2394              	.L453:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 43


 2395 009a 22AE     		add	r6, sp, #136
 2396 009c 4FF00009 		mov	r9, #0
 2397 00a0 06F87C9D 		strb	r9, [r6, #-124]!
 2398 00a4 4FF0790A 		mov	r10, #121
 2399 00a8 2946     		mov	r1, r5
 2400 00aa 01A8     		add	r0, sp, #4
 2401 00ac DFF81882 		ldr	r8, .L497+48
 2402 00b0 CDE9016A 		strd	r6, r10, [sp, #4]
 2403 00b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2404 00b8 7749     		ldr	r1, .L497
 2405 00ba 01A8     		add	r0, sp, #4
 2406 00bc CDE9016A 		strd	r6, r10, [sp, #4]
 2407 00c0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2408 00c4 D8F80430 		ldr	r3, [r8, #4]
 2409 00c8 7449     		ldr	r1, .L497+4
 2410 00ca D3F8DC0B 		ldr	r0, [r3, #3036]
 2411 00ce 3246     		mov	r2, r6
 2412 00d0 4B46     		mov	r3, r9
 2413 00d2 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2414 00d6 0646     		mov	r6, r0
 2415 00d8 0028     		cmp	r0, #0
 2416 00da AAD0     		beq	.L439
 2417 00dc 2063     		str	r0, [r4, #48]
 2418 00de 7049     		ldr	r1, .L497+8
 2419 00e0 A069     		ldr	r0, [r4, #24]
 2420 00e2 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2421 00e6 6F49     		ldr	r1, .L497+12
 2422 00e8 2846     		mov	r0, r5
 2423 00ea FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2424 00ee 0028     		cmp	r0, #0
 2425 00f0 00F0BF80 		beq	.L489
 2426 00f4 704A     		ldr	r2, .L497+32
 2427 00f6 7149     		ldr	r1, .L497+36
 2428 00f8 A069     		ldr	r0, [r4, #24]
 2429 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2430              	.L452:
 2431 00fe 7049     		ldr	r1, .L497+40
 2432 0100 A069     		ldr	r0, [r4, #24]
 2433 0102 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2434 0106 3046     		mov	r0, r6
 2435 0108 A569     		ldr	r5, [r4, #24]
 2436 010a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2437 010e 6D49     		ldr	r1, .L497+44
 2438 0110 0246     		mov	r2, r0
 2439 0112 2846     		mov	r0, r5
 2440 0114 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2441 0118 1FE0     		b	.L456
 2442              	.L436:
 2443 011a 6B4B     		ldr	r3, .L497+48
 2444 011c 6B49     		ldr	r1, .L497+52
 2445 011e 5A68     		ldr	r2, [r3, #4]
 2446 0120 3B46     		mov	r3, r7
 2447 0122 D2F8DC0B 		ldr	r0, [r2, #3036]
 2448 0126 2A46     		mov	r2, r5
 2449 0128 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2450 012c 0646     		mov	r6, r0
 2451 012e 0028     		cmp	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 44


 2452 0130 61D0     		beq	.L490
 2453 0132 2063     		str	r0, [r4, #48]
 2454 0134 5A49     		ldr	r1, .L497+8
 2455 0136 A069     		ldr	r0, [r4, #24]
 2456 0138 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2457 013c 6449     		ldr	r1, .L497+56
 2458 013e A069     		ldr	r0, [r4, #24]
 2459 0140 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2460 0144 5749     		ldr	r1, .L497+12
 2461 0146 2846     		mov	r0, r5
 2462 0148 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2463 014c 0028     		cmp	r0, #0
 2464 014e 38D0     		beq	.L491
 2465              	.L457:
 2466 0150 594A     		ldr	r2, .L497+32
 2467 0152 5A49     		ldr	r1, .L497+36
 2468 0154 A069     		ldr	r0, [r4, #24]
 2469 0156 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2470              	.L456:
 2471 015a 5E49     		ldr	r1, .L497+60
 2472 015c A069     		ldr	r0, [r4, #24]
 2473 015e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2474 0162 2046     		mov	r0, r4
 2475 0164 0122     		movs	r2, #1
 2476 0166 0021     		movs	r1, #0
 2477 0168 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 2478              	.L435:
 2479 016c 22B0     		add	sp, sp, #136
 2480              		@ sp needed
 2481 016e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2482              	.L487:
 2483 0172 5949     		ldr	r1, .L497+64
 2484 0174 2846     		mov	r0, r5
 2485 0176 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2486 017a 20B9     		cbnz	r0, .L445
 2487 017c 2846     		mov	r0, r5
 2488 017e 5749     		ldr	r1, .L497+68
 2489 0180 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2490 0184 58B1     		cbz	r0, .L444
 2491              	.L445:
 2492 0186 D8F80430 		ldr	r3, [r8, #4]
 2493 018a 554A     		ldr	r2, .L497+72
 2494 018c D3F8DC0B 		ldr	r0, [r3, #3036]
 2495 0190 4249     		ldr	r1, .L497+4
 2496 0192 0023     		movs	r3, #0
 2497 0194 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2498 0198 0646     		mov	r6, r0
 2499 019a 0028     		cmp	r0, #0
 2500 019c 32D1     		bne	.L492
 2501              	.L444:
 2502 019e 2046     		mov	r0, r4
 2503 01a0 4FF4CA72 		mov	r2, #404
 2504 01a4 4F49     		ldr	r1, .L497+76
 2505 01a6 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2506 01aa 22B0     		add	sp, sp, #136
 2507              		@ sp needed
 2508 01ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 45


 2509              	.L488:
 2510 01b0 0135     		adds	r5, r5, #1
 2511 01b2 3949     		ldr	r1, .L497
 2512 01b4 2846     		mov	r0, r5
 2513 01b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2514 01ba 0028     		cmp	r0, #0
 2515 01bc 3FF431AF 		beq	.L479
 2516 01c0 35E7     		b	.L485
 2517              	.L491:
 2518 01c2 3949     		ldr	r1, .L497+16
 2519 01c4 2846     		mov	r0, r5
 2520 01c6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2521 01ca 0028     		cmp	r0, #0
 2522 01cc 5ED1     		bne	.L461
 2523 01ce 3749     		ldr	r1, .L497+20
 2524 01d0 2846     		mov	r0, r5
 2525 01d2 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2526 01d6 0746     		mov	r7, r0
 2527 01d8 0028     		cmp	r0, #0
 2528 01da 44D1     		bne	.L493
 2529              	.L465:
 2530 01dc 4249     		ldr	r1, .L497+80
 2531 01de 2846     		mov	r0, r5
 2532 01e0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2533 01e4 80B1     		cbz	r0, .L494
 2534 01e6 414A     		ldr	r2, .L497+84
 2535              	.L450:
 2536 01e8 3449     		ldr	r1, .L497+36
 2537 01ea A069     		ldr	r0, [r4, #24]
 2538 01ec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2539 01f0 002F     		cmp	r7, #0
 2540 01f2 84D1     		bne	.L452
 2541 01f4 B1E7     		b	.L456
 2542              	.L490:
 2543 01f6 2046     		mov	r0, r4
 2544 01f8 4FF4CA72 		mov	r2, #404
 2545 01fc 3C49     		ldr	r1, .L497+88
 2546 01fe FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 2547 0202 B3E7     		b	.L435
 2548              	.L492:
 2549 0204 364D     		ldr	r5, .L497+72
 2550 0206 21E7     		b	.L442
 2551              	.L494:
 2552 0208 3449     		ldr	r1, .L497+68
 2553 020a 2846     		mov	r0, r5
 2554 020c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2555 0210 08B1     		cbz	r0, .L495
 2556              	.L469:
 2557 0212 384A     		ldr	r2, .L497+92
 2558 0214 E8E7     		b	.L450
 2559              	.L495:
 2560 0216 3049     		ldr	r1, .L497+64
 2561 0218 2846     		mov	r0, r5
 2562 021a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2563 021e 0028     		cmp	r0, #0
 2564 0220 F7D1     		bne	.L469
 2565 0222 3549     		ldr	r1, .L497+96
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 46


 2566 0224 2846     		mov	r0, r5
 2567 0226 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2568 022a 28B1     		cbz	r0, .L451
 2569 022c 334A     		ldr	r2, .L497+100
 2570 022e 2349     		ldr	r1, .L497+36
 2571 0230 A069     		ldr	r0, [r4, #24]
 2572 0232 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2573 0236 62E7     		b	.L452
 2574              	.L451:
 2575 0238 3149     		ldr	r1, .L497+104
 2576 023a 2846     		mov	r0, r5
 2577 023c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2578 0240 08B1     		cbz	r0, .L496
 2579              	.L471:
 2580 0242 304A     		ldr	r2, .L497+108
 2581 0244 D0E7     		b	.L450
 2582              	.L496:
 2583 0246 3049     		ldr	r1, .L497+112
 2584 0248 2846     		mov	r0, r5
 2585 024a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2586 024e 0028     		cmp	r0, #0
 2587 0250 F7D1     		bne	.L471
 2588 0252 2846     		mov	r0, r5
 2589 0254 2D49     		ldr	r1, .L497+116
 2590 0256 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2591 025a 2A4A     		ldr	r2, .L497+108
 2592 025c 2C4B     		ldr	r3, .L497+120
 2593 025e 0028     		cmp	r0, #0
 2594 0260 08BF     		it	eq
 2595 0262 1A46     		moveq	r2, r3
 2596 0264 C0E7     		b	.L450
 2597              	.L493:
 2598 0266 124A     		ldr	r2, .L497+24
 2599 0268 1449     		ldr	r1, .L497+36
 2600 026a A069     		ldr	r0, [r4, #24]
 2601 026c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2602 0270 73E7     		b	.L456
 2603              	.L489:
 2604 0272 0D49     		ldr	r1, .L497+16
 2605 0274 2846     		mov	r0, r5
 2606 0276 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2607 027a 0028     		cmp	r0, #0
 2608 027c 3FF4F9AE 		beq	.L462
 2609 0280 244A     		ldr	r2, .L497+124
 2610 0282 0E49     		ldr	r1, .L497+36
 2611 0284 A069     		ldr	r0, [r4, #24]
 2612 0286 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2613 028a 38E7     		b	.L452
 2614              	.L461:
 2615 028c 214A     		ldr	r2, .L497+124
 2616 028e 0B49     		ldr	r1, .L497+36
 2617 0290 A069     		ldr	r0, [r4, #24]
 2618 0292 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2619 0296 60E7     		b	.L456
 2620              	.L498:
 2621              		.align	2
 2622              	.L497:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 47


 2623 0298 70000000 		.word	.LC69
 2624 029c 74000000 		.word	.LC70
 2625 02a0 00010000 		.word	.LC75
 2626 02a4 88010000 		.word	.LC77
 2627 02a8 28020000 		.word	.LC90
 2628 02ac 90010000 		.word	.LC78
 2629 02b0 18000000 		.word	.LC64
 2630 02b4 00000000 		.word	.LC62
 2631 02b8 0C020000 		.word	.LC88
 2632 02bc B4010000 		.word	.LC82
 2633 02c0 D8010000 		.word	.LC86
 2634 02c4 F4010000 		.word	.LC87
 2635 02c8 00000000 		.word	reprap
 2636 02cc AC010000 		.word	.LC48
 2637 02d0 14010000 		.word	.LC76
 2638 02d4 BC000000 		.word	.LC4
 2639 02d8 7C000000 		.word	.LC71
 2640 02dc 84000000 		.word	.LC72
 2641 02e0 64000000 		.word	.LC68
 2642 02e4 8C000000 		.word	.LC73
 2643 02e8 94010000 		.word	.LC79
 2644 02ec 30000000 		.word	.LC65
 2645 02f0 F0000000 		.word	.LC74
 2646 02f4 3C000000 		.word	.LC66
 2647 02f8 9C010000 		.word	.LC80
 2648 02fc A4010000 		.word	.LC81
 2649 0300 C8010000 		.word	.LC83
 2650 0304 0C000000 		.word	.LC63
 2651 0308 CC010000 		.word	.LC84
 2652 030c D0010000 		.word	.LC85
 2653 0310 48000000 		.word	.LC67
 2654 0314 18020000 		.word	.LC89
 2655              		.size	_ZN13HttpResponder8SendFileEPKcb, .-_ZN13HttpResponder8SendFileEPKcb
 2656              		.section	.text._ZN13HttpResponder16SendJsonResponseEPKc,"ax",%progbits
 2657              		.align	1
 2658              		.p2align 2,,3
 2659              		.global	_ZN13HttpResponder16SendJsonResponseEPKc
 2660              		.syntax unified
 2661              		.thumb
 2662              		.thumb_func
 2663              		.fpu fpv4-sp-d16
 2664              		.type	_ZN13HttpResponder16SendJsonResponseEPKc, %function
 2665              	_ZN13HttpResponder16SendJsonResponseEPKc:
 2666              		@ args = 0, pretend = 0, frame = 144
 2667              		@ frame_needed = 0, uses_anonymous_args = 0
 2668 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2669 0004 A4B0     		sub	sp, sp, #144
 2670 0006 0D46     		mov	r5, r1
 2671 0008 0446     		mov	r4, r0
 2672 000a FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2673 000e 0028     		cmp	r0, #0
 2674 0010 00F0A580 		beq	.L560
 2675              	.L501:
 2676 0014 2046     		mov	r0, r4
 2677 0016 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2678 001a 60B1     		cbz	r0, .L503
 2679 001c 9449     		ldr	r1, .L566
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 48


 2680 001e 2846     		mov	r0, r5
 2681 0020 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2682 0024 0746     		mov	r7, r0
 2683 0026 0028     		cmp	r0, #0
 2684 0028 38D0     		beq	.L504
 2685 002a 2046     		mov	r0, r4
 2686 002c FFF7FEFF 		bl	_ZN13HttpResponder14SendGCodeReplyEv
 2687              	.L499:
 2688 0030 24B0     		add	sp, sp, #144
 2689              		@ sp needed
 2690 0032 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2691              	.L503:
 2692 0036 02A8     		add	r0, sp, #8
 2693 0038 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2694 003c 0028     		cmp	r0, #0
 2695 003e 40F09880 		bne	.L561
 2696              	.L510:
 2697 0042 029B     		ldr	r3, [sp, #8]
 2698 0044 002B     		cmp	r3, #0
 2699 0046 00F0EC80 		beq	.L516
 2700              	.L515:
 2701 004a 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 2702 004e 002B     		cmp	r3, #0
 2703 0050 52D0     		beq	.L517
 2704 0052 D4F8C837 		ldr	r3, [r4, #1992]
 2705 0056 002B     		cmp	r3, #0
 2706 0058 4ED0     		beq	.L517
 2707 005a 864F     		ldr	r7, .L566+4
 2708 005c 2646     		mov	r6, r4
 2709 005e 0025     		movs	r5, #0
 2710 0060 04E0     		b	.L521
 2711              	.L518:
 2712 0062 D4F8C837 		ldr	r3, [r4, #1992]
 2713 0066 0135     		adds	r5, r5, #1
 2714 0068 AB42     		cmp	r3, r5
 2715 006a 45D9     		bls	.L517
 2716              	.L521:
 2717 006c D6F8D006 		ldr	r0, [r6, #1744]
 2718 0070 3946     		mov	r1, r7
 2719 0072 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2720 0076 0836     		adds	r6, r6, #8
 2721 0078 0028     		cmp	r0, #0
 2722 007a F2D0     		beq	.L518
 2723 007c 04EBC505 		add	r5, r4, r5, lsl #3
 2724 0080 7D49     		ldr	r1, .L566+8
 2725 0082 D5F8D406 		ldr	r0, [r5, #1748]
 2726 0086 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2727 008a 7C49     		ldr	r1, .L566+12
 2728 008c 0646     		mov	r6, r0
 2729 008e A069     		ldr	r0, [r4, #24]
 2730 0090 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2731 0094 0298     		ldr	r0, [sp, #8]
 2732 0096 0028     		cmp	r0, #0
 2733 0098 36D1     		bne	.L519
 2734 009a 37E0     		b	.L559
 2735              	.L504:
 2736 009c 7849     		ldr	r1, .L566+16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 49


 2737 009e 2846     		mov	r0, r5
 2738 00a0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2739 00a4 0646     		mov	r6, r0
 2740 00a6 0028     		cmp	r0, #0
 2741 00a8 40F08280 		bne	.L562
 2742 00ac 7549     		ldr	r1, .L566+20
 2743 00ae 2846     		mov	r0, r5
 2744 00b0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2745 00b4 0028     		cmp	r0, #0
 2746 00b6 BED0     		beq	.L503
 2747 00b8 D4F8C437 		ldr	r3, [r4, #1988]
 2748 00bc 002B     		cmp	r3, #0
 2749 00be BAD0     		beq	.L503
 2750 00c0 DFF8EC81 		ldr	r8, .L566+64
 2751 00c4 2746     		mov	r7, r4
 2752 00c6 04E0     		b	.L509
 2753              	.L507:
 2754 00c8 D4F8C437 		ldr	r3, [r4, #1988]
 2755 00cc 0136     		adds	r6, r6, #1
 2756 00ce B342     		cmp	r3, r6
 2757 00d0 B1D9     		bls	.L503
 2758              	.L509:
 2759 00d2 D7F8A006 		ldr	r0, [r7, #1696]
 2760 00d6 4146     		mov	r1, r8
 2761 00d8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2762 00dc 0837     		adds	r7, r7, #8
 2763 00de 0028     		cmp	r0, #0
 2764 00e0 F2D0     		beq	.L507
 2765 00e2 04EBC606 		add	r6, r4, r6, lsl #3
 2766 00e6 D6F8A416 		ldr	r1, [r6, #1700]
 2767 00ea 0029     		cmp	r1, #0
 2768 00ec A3D0     		beq	.L503
 2769 00ee 2046     		mov	r0, r4
 2770 00f0 0022     		movs	r2, #0
 2771 00f2 FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2772 00f6 9BE7     		b	.L499
 2773              	.L517:
 2774 00f8 6049     		ldr	r1, .L566+12
 2775 00fa A069     		ldr	r0, [r4, #24]
 2776 00fc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2777 0100 0298     		ldr	r0, [sp, #8]
 2778 0102 0028     		cmp	r0, #0
 2779 0104 4AD0     		beq	.L563
 2780 0106 0026     		movs	r6, #0
 2781              	.L519:
 2782 0108 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2783              	.L559:
 2784 010c 0246     		mov	r2, r0
 2785 010e 0546     		mov	r5, r0
 2786 0110 5D49     		ldr	r1, .L566+24
 2787 0112 A069     		ldr	r0, [r4, #24]
 2788 0114 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2789 0118 5C4A     		ldr	r2, .L566+28
 2790 011a 574B     		ldr	r3, .L566+8
 2791 011c A069     		ldr	r0, [r4, #24]
 2792 011e 002E     		cmp	r6, #0
 2793 0120 18BF     		it	ne
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 50


 2794 0122 1A46     		movne	r2, r3
 2795              	.L522:
 2796 0124 5A49     		ldr	r1, .L566+32
 2797 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2798 012a 0299     		ldr	r1, [sp, #8]
 2799 012c A069     		ldr	r0, [r4, #24]
 2800 012e FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 2801 0132 A369     		ldr	r3, [r4, #24]
 2802 0134 93F81521 		ldrb	r2, [r3, #277]	@ zero_extendqisi2
 2803 0138 002A     		cmp	r2, #0
 2804 013a 4CD1     		bne	.L564
 2805 013c 3146     		mov	r1, r6
 2806 013e 2046     		mov	r0, r4
 2807 0140 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 2808 0144 534B     		ldr	r3, .L566+36
 2809 0146 D3F80831 		ldr	r3, [r3, #264]
 2810 014a 5B07     		lsls	r3, r3, #29
 2811 014c 7FF570AF 		bpl	.L499
 2812 0150 2946     		mov	r1, r5
 2813 0152 5148     		ldr	r0, .L566+40
 2814 0154 FFF7FEFF 		bl	debugPrintf
 2815 0158 24B0     		add	sp, sp, #144
 2816              		@ sp needed
 2817 015a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2818              	.L560:
 2819 015e 4D48     		ldr	r0, .L566+36
 2820 0160 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 2821 0164 0028     		cmp	r0, #0
 2822 0166 3FF455AF 		beq	.L501
 2823 016a 2046     		mov	r0, r4
 2824 016c FFF7FEFF 		bl	_ZN13HttpResponder12AuthenticateEv
 2825 0170 50E7     		b	.L501
 2826              	.L561:
 2827 0172 2946     		mov	r1, r5
 2828 0174 0DF10703 		add	r3, sp, #7
 2829 0178 02AA     		add	r2, sp, #8
 2830 017a 2046     		mov	r0, r4
 2831 017c FFF7FEFF 		bl	_ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb
 2832 0180 0028     		cmp	r0, #0
 2833 0182 70D0     		beq	.L565
 2834 0184 029B     		ldr	r3, [sp, #8]
 2835 0186 002B     		cmp	r3, #0
 2836 0188 4BD0     		beq	.L516
 2837 018a 93F81531 		ldrb	r3, [r3, #277]	@ zero_extendqisi2
 2838 018e 002B     		cmp	r3, #0
 2839 0190 3FF45BAF 		beq	.L515
 2840 0194 02A8     		add	r0, sp, #8
 2841 0196 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2842 019a 52E7     		b	.L510
 2843              	.L563:
 2844 019c 0246     		mov	r2, r0
 2845 019e 0546     		mov	r5, r0
 2846 01a0 3949     		ldr	r1, .L566+24
 2847 01a2 A069     		ldr	r0, [r4, #24]
 2848 01a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2849 01a8 2E46     		mov	r6, r5
 2850 01aa A069     		ldr	r0, [r4, #24]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 51


 2851 01ac 374A     		ldr	r2, .L566+28
 2852 01ae B9E7     		b	.L522
 2853              	.L562:
 2854 01b0 24AD     		add	r5, sp, #144
 2855 01b2 7923     		movs	r3, #121
 2856 01b4 05F87C7D 		strb	r7, [r5, #-124]!
 2857 01b8 03A8     		add	r0, sp, #12
 2858 01ba 384A     		ldr	r2, .L566+44
 2859 01bc 3849     		ldr	r1, .L566+48
 2860 01be 0493     		str	r3, [sp, #16]
 2861 01c0 0395     		str	r5, [sp, #12]
 2862 01c2 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 2863 01c6 3A46     		mov	r2, r7
 2864 01c8 2946     		mov	r1, r5
 2865 01ca 2046     		mov	r0, r4
 2866 01cc FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2867 01d0 24B0     		add	sp, sp, #144
 2868              		@ sp needed
 2869 01d2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2870              	.L564:
 2871 01d6 04F11800 		add	r0, r4, #24
 2872 01da FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2873 01de FFF7FEFF 		bl	millis
 2874 01e2 D4F8CC37 		ldr	r3, [r4, #1996]
 2875 01e6 C01A     		subs	r0, r0, r3
 2876 01e8 B0F57A7F 		cmp	r0, #1000
 2877 01ec FFF420AF 		bcc	.L499
 2878 01f0 4FF0FF32 		mov	r2, #-1
 2879 01f4 2B49     		ldr	r1, .L566+52
 2880 01f6 05A8     		add	r0, sp, #20
 2881 01f8 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2882 01fc 2A48     		ldr	r0, .L566+56
 2883 01fe FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 2884 0202 24AB     		add	r3, sp, #144
 2885 0204 43F8840D 		str	r0, [r3, #-132]!
 2886 0208 1846     		mov	r0, r3
 2887 020a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2888 020e 05A8     		add	r0, sp, #20
 2889 0210 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2890 0214 2046     		mov	r0, r4
 2891 0216 40F2EA32 		movw	r2, #1002
 2892 021a 2449     		ldr	r1, .L566+60
 2893 021c FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 2894 0220 06E7     		b	.L499
 2895              	.L516:
 2896 0222 FFF7FEFF 		bl	millis
 2897 0226 D4F8CC37 		ldr	r3, [r4, #1996]
 2898 022a C01A     		subs	r0, r0, r3
 2899 022c B0F57A7F 		cmp	r0, #1000
 2900 0230 FFF4FEAE 		bcc	.L499
 2901 0234 4FF0FF32 		mov	r2, #-1
 2902 0238 1A49     		ldr	r1, .L566+52
 2903 023a 05A8     		add	r0, sp, #20
 2904 023c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2905 0240 1948     		ldr	r0, .L566+56
 2906 0242 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 2907 0246 24AB     		add	r3, sp, #144
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 52


 2908 0248 43F8840D 		str	r0, [r3, #-132]!
 2909 024c 1846     		mov	r0, r3
 2910 024e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 2911 0252 05A8     		add	r0, sp, #20
 2912 0254 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2913 0258 2046     		mov	r0, r4
 2914 025a 40F2B532 		movw	r2, #949
 2915 025e 1349     		ldr	r1, .L566+60
 2916 0260 FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 2917 0264 E4E6     		b	.L499
 2918              	.L565:
 2919 0266 0298     		ldr	r0, [sp, #8]
 2920 0268 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2921 026c E0E6     		b	.L499
 2922              	.L567:
 2923 026e 00BF     		.align	2
 2924              	.L566:
 2925 0270 14000000 		.word	.LC93
 2926 0274 48000000 		.word	.LC98
 2927 0278 00000000 		.word	.LC91
 2928 027c 00000000 		.word	.LC2
 2929 0280 1C000000 		.word	.LC94
 2930 0284 3C000000 		.word	.LC97
 2931 0288 A4000000 		.word	.LC3
 2932 028c 0C000000 		.word	.LC92
 2933 0290 54000000 		.word	.LC99
 2934 0294 00000000 		.word	reprap
 2935 0298 68000000 		.word	.LC100
 2936 029c 28000000 		.word	.LC95
 2937 02a0 34000000 		.word	.LC96
 2938 02a4 00000000 		.word	.LANCHOR3
 2939 02a8 00000000 		.word	.LANCHOR4
 2940 02ac D4000000 		.word	.LC5
 2941 02b0 98010000 		.word	.LC46
 2942              		.size	_ZN13HttpResponder16SendJsonResponseEPKc, .-_ZN13HttpResponder16SendJsonResponseEPKc
 2943              		.section	.text._ZN13HttpResponder14ProcessRequestEv,"ax",%progbits
 2944              		.align	1
 2945              		.p2align 2,,3
 2946              		.global	_ZN13HttpResponder14ProcessRequestEv
 2947              		.syntax unified
 2948              		.thumb
 2949              		.thumb_func
 2950              		.fpu fpv4-sp-d16
 2951              		.type	_ZN13HttpResponder14ProcessRequestEv, %function
 2952              	_ZN13HttpResponder14ProcessRequestEv:
 2953              		@ args = 0, pretend = 0, frame = 40
 2954              		@ frame_needed = 0, uses_anonymous_args = 0
 2955 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2956 0004 D0F8C037 		ldr	r3, [r0, #1984]
 2957 0008 012B     		cmp	r3, #1
 2958 000a 8DB0     		sub	sp, sp, #52
 2959 000c 5ED9     		bls	.L635
 2960 000e 8369     		ldr	r3, [r0, #24]
 2961 0010 0446     		mov	r4, r0
 2962 0012 93B3     		cbz	r3, .L571
 2963              	.L574:
 2964 0014 A649     		ldr	r1, .L643
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 53


 2965 0016 D4F89006 		ldr	r0, [r4, #1680]
 2966 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2967 001e 90B1     		cbz	r0, .L636
 2968 0020 A449     		ldr	r1, .L643+4
 2969 0022 D4F89406 		ldr	r0, [r4, #1684]
 2970 0026 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 2971 002a D4F89416 		ldr	r1, [r4, #1684]
 2972 002e 0028     		cmp	r0, #0
 2973 0030 54D1     		bne	.L637
 2974 0032 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2975 0034 2F2B     		cmp	r3, #47
 2976 0036 3CD0     		beq	.L638
 2977              	.L577:
 2978 0038 2046     		mov	r0, r4
 2979 003a 0122     		movs	r2, #1
 2980 003c FFF7FEFF 		bl	_ZN13HttpResponder8SendFileEPKcb
 2981              	.L568:
 2982 0040 0DB0     		add	sp, sp, #52
 2983              		@ sp needed
 2984 0042 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2985              	.L636:
 2986 0046 9C49     		ldr	r1, .L643+8
 2987 0048 D4F89006 		ldr	r0, [r4, #1680]
 2988 004c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2989 0050 E0B9     		cbnz	r0, .L639
 2990 0052 2046     		mov	r0, r4
 2991 0054 FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 2992 0058 30B1     		cbz	r0, .L582
 2993 005a 9849     		ldr	r1, .L643+12
 2994 005c D4F89006 		ldr	r0, [r4, #1680]
 2995 0060 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2996 0064 0028     		cmp	r0, #0
 2997 0066 45D1     		bne	.L640
 2998              	.L582:
 2999 0068 2046     		mov	r0, r4
 3000 006a 4FF4FA72 		mov	r2, #500
 3001 006e 9449     		ldr	r1, .L643+16
 3002 0070 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3003 0074 0DB0     		add	sp, sp, #52
 3004              		@ sp needed
 3005 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3006              	.L571:
 3007 007a 1830     		adds	r0, r0, #24
 3008 007c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3009 0080 0028     		cmp	r0, #0
 3010 0082 C7D1     		bne	.L574
 3011 0084 A060     		str	r0, [r4, #8]
 3012 0086 0DB0     		add	sp, sp, #52
 3013              		@ sp needed
 3014 0088 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3015              	.L639:
 3016 008c 8D49     		ldr	r1, .L643+20
 3017 008e A069     		ldr	r0, [r4, #24]
 3018 0090 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3019 0094 A369     		ldr	r3, [r4, #24]
 3020 0096 93F81511 		ldrb	r1, [r3, #277]	@ zero_extendqisi2
 3021 009a 31B3     		cbz	r1, .L580
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 54


 3022 009c 04F11800 		add	r0, r4, #24
 3023 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3024 00a4 2046     		mov	r0, r4
 3025 00a6 40F23B42 		movw	r2, #1083
 3026 00aa 8749     		ldr	r1, .L643+24
 3027 00ac FFF7FEFF 		bl	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 3028 00b0 C6E7     		b	.L568
 3029              	.L638:
 3030 00b2 481C     		adds	r0, r1, #1
 3031 00b4 7F49     		ldr	r1, .L643+4
 3032 00b6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3033 00ba D4F89416 		ldr	r1, [r4, #1684]
 3034 00be 0028     		cmp	r0, #0
 3035 00c0 BAD0     		beq	.L577
 3036 00c2 2046     		mov	r0, r4
 3037 00c4 0431     		adds	r1, r1, #4
 3038 00c6 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3039 00ca B9E7     		b	.L568
 3040              	.L635:
 3041 00cc 4FF4FA72 		mov	r2, #500
 3042 00d0 7E49     		ldr	r1, .L643+28
 3043 00d2 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3044 00d6 0DB0     		add	sp, sp, #52
 3045              		@ sp needed
 3046 00d8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3047              	.L637:
 3048 00dc 2046     		mov	r0, r4
 3049 00de 0331     		adds	r1, r1, #3
 3050 00e0 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3051 00e4 0DB0     		add	sp, sp, #52
 3052              		@ sp needed
 3053 00e6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3054              	.L580:
 3055 00ea 2046     		mov	r0, r4
 3056 00ec 0122     		movs	r2, #1
 3057 00ee FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 3058 00f2 A5E7     		b	.L568
 3059              	.L640:
 3060 00f4 7649     		ldr	r1, .L643+32
 3061 00f6 D4F89406 		ldr	r0, [r4, #1684]
 3062 00fa FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3063 00fe 0028     		cmp	r0, #0
 3064 0100 00F0AD80 		beq	.L583
 3065              	.L586:
 3066 0104 D4F8C437 		ldr	r3, [r4, #1988]
 3067 0108 002B     		cmp	r3, #0
 3068 010a 00F0B480 		beq	.L584
 3069 010e DFF8E881 		ldr	r8, .L643+72
 3070 0112 2746     		mov	r7, r4
 3071 0114 2646     		mov	r6, r4
 3072 0116 0025     		movs	r5, #0
 3073 0118 05E0     		b	.L589
 3074              	.L587:
 3075 011a D4F8C437 		ldr	r3, [r4, #1988]
 3076 011e 0135     		adds	r5, r5, #1
 3077 0120 AB42     		cmp	r3, r5
 3078 0122 40F2A880 		bls	.L584
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 55


 3079              	.L589:
 3080 0126 D6F8A006 		ldr	r0, [r6, #1696]
 3081 012a 4146     		mov	r1, r8
 3082 012c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3083 0130 0836     		adds	r6, r6, #8
 3084 0132 0028     		cmp	r0, #0
 3085 0134 F1D0     		beq	.L587
 3086 0136 04EBC505 		add	r5, r4, r5, lsl #3
 3087 013a D5F8A496 		ldr	r9, [r5, #1700]
 3088 013e B9F1000F 		cmp	r9, #0
 3089 0142 00F09880 		beq	.L584
 3090 0146 D4F8C837 		ldr	r3, [r4, #1992]
 3091 014a 002B     		cmp	r3, #0
 3092 014c 00F09A80 		beq	.L590
 3093 0150 DFF8A881 		ldr	r8, .L643+76
 3094 0154 2646     		mov	r6, r4
 3095 0156 0025     		movs	r5, #0
 3096 0158 05E0     		b	.L594
 3097              	.L591:
 3098 015a D4F8C837 		ldr	r3, [r4, #1992]
 3099 015e 0135     		adds	r5, r5, #1
 3100 0160 AB42     		cmp	r3, r5
 3101 0162 40F28F80 		bls	.L590
 3102              	.L594:
 3103 0166 D6F8D006 		ldr	r0, [r6, #1744]
 3104 016a 4146     		mov	r1, r8
 3105 016c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3106 0170 0836     		adds	r6, r6, #8
 3107 0172 0028     		cmp	r0, #0
 3108 0174 F1D0     		beq	.L591
 3109 0176 04EBC505 		add	r5, r4, r5, lsl #3
 3110 017a 564E     		ldr	r6, .L643+36
 3111 017c D5F8D406 		ldr	r0, [r5, #1748]
 3112 0180 FFF7FEFF 		bl	atoi
 3113 0184 7368     		ldr	r3, [r6, #4]
 3114 0186 C4F8B400 		str	r0, [r4, #180]
 3115 018a D3F8DC0B 		ldr	r0, [r3, #3036]
 3116 018e 5249     		ldr	r1, .L643+40
 3117 0190 0123     		movs	r3, #1
 3118 0192 4A46     		mov	r2, r9
 3119 0194 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 3120 0198 0028     		cmp	r0, #0
 3121 019a 7FD0     		beq	.L641
 3122 019c 0146     		mov	r1, r0
 3123 019e 4A46     		mov	r2, r9
 3124 01a0 2046     		mov	r0, r4
 3125 01a2 FFF7FEFF 		bl	_ZN16NetworkResponder11StartUploadEP9FileStorePKc
 3126 01a6 D4F8C437 		ldr	r3, [r4, #1988]
 3127 01aa 002B     		cmp	r3, #0
 3128 01ac 71D0     		beq	.L596
 3129 01ae DFF85081 		ldr	r8, .L643+80
 3130 01b2 0025     		movs	r5, #0
 3131 01b4 04E0     		b	.L599
 3132              	.L597:
 3133 01b6 D4F8C437 		ldr	r3, [r4, #1988]
 3134 01ba 0135     		adds	r5, r5, #1
 3135 01bc AB42     		cmp	r3, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 56


 3136 01be 68D9     		bls	.L596
 3137              	.L599:
 3138 01c0 D7F8A006 		ldr	r0, [r7, #1696]
 3139 01c4 4146     		mov	r1, r8
 3140 01c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3141 01ca 0837     		adds	r7, r7, #8
 3142 01cc 0028     		cmp	r0, #0
 3143 01ce F2D0     		beq	.L597
 3144 01d0 04EBC505 		add	r5, r4, r5, lsl #3
 3145 01d4 D5F8A456 		ldr	r5, [r5, #1700]
 3146 01d8 002D     		cmp	r5, #0
 3147 01da 5AD0     		beq	.L596
 3148 01dc 2422     		movs	r2, #36
 3149 01de 0021     		movs	r1, #0
 3150 01e0 03A8     		add	r0, sp, #12
 3151 01e2 FFF7FEFF 		bl	memset
 3152 01e6 03AA     		add	r2, sp, #12
 3153 01e8 2846     		mov	r0, r5
 3154 01ea 3C49     		ldr	r1, .L643+44
 3155 01ec FFF7FEFF 		bl	strptime
 3156 01f0 0028     		cmp	r0, #0
 3157 01f2 4ED0     		beq	.L596
 3158 01f4 03A8     		add	r0, sp, #12
 3159 01f6 FFF7FEFF 		bl	mktime
 3160 01fa C4E93001 		strd	r0, [r4, #192]
 3161              	.L602:
 3162 01fe D6F80831 		ldr	r3, [r6, #264]
 3163 0202 5B07     		lsls	r3, r3, #29
 3164 0204 08D5     		bpl	.L603
 3165 0206 D4F8B430 		ldr	r3, [r4, #180]
 3166 020a 7068     		ldr	r0, [r6, #4]
 3167 020c 344A     		ldr	r2, .L643+48
 3168 020e 0093     		str	r3, [sp]
 3169 0210 0121     		movs	r1, #1
 3170 0212 4B46     		mov	r3, r9
 3171 0214 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3172              	.L603:
 3173 0218 0025     		movs	r5, #0
 3174 021a C4F8B850 		str	r5, [r4, #184]
 3175 021e 2046     		mov	r0, r4
 3176 0220 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 3177 0224 2F4B     		ldr	r3, .L643+52
 3178 0226 1E68     		ldr	r6, [r3]
 3179 0228 002E     		cmp	r6, #0
 3180 022a 3FF409AF 		beq	.L568
 3181 022e 2E4F     		ldr	r7, .L643+56
 3182 0230 3B68     		ldr	r3, [r7]
 3183 0232 9842     		cmp	r0, r3
 3184 0234 39D0     		beq	.L642
 3185 0236 2B46     		mov	r3, r5
 3186 0238 3A46     		mov	r2, r7
 3187              	.L606:
 3188 023a 0133     		adds	r3, r3, #1
 3189 023c 9E42     		cmp	r6, r3
 3190 023e 3FF4FFAE 		beq	.L568
 3191 0242 52F80C1F 		ldr	r1, [r2, #12]!
 3192 0246 8842     		cmp	r0, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 57


 3193 0248 F7D1     		bne	.L606
 3194              	.L604:
 3195 024a 2269     		ldr	r2, [r4, #16]
 3196 024c 03EB4303 		add	r3, r3, r3, lsl #1
 3197 0250 07EB8303 		add	r3, r7, r3, lsl #2
 3198 0254 5289     		ldrh	r2, [r2, #10]
 3199 0256 5A81     		strh	r2, [r3, #10]	@ movhi
 3200 0258 0122     		movs	r2, #1
 3201 025a 1A72     		strb	r2, [r3, #8]
 3202 025c F0E6     		b	.L568
 3203              	.L583:
 3204 025e D4F89406 		ldr	r0, [r4, #1684]
 3205 0262 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3206 0264 2F2B     		cmp	r3, #47
 3207 0266 06D1     		bne	.L584
 3208 0268 0130     		adds	r0, r0, #1
 3209 026a 1949     		ldr	r1, .L643+32
 3210 026c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3211 0270 0028     		cmp	r0, #0
 3212 0272 7FF447AF 		bne	.L586
 3213              	.L584:
 3214 0276 2046     		mov	r0, r4
 3215 0278 4FF4FA72 		mov	r2, #500
 3216 027c 1B49     		ldr	r1, .L643+60
 3217 027e FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3218 0282 DDE6     		b	.L568
 3219              	.L590:
 3220 0284 2046     		mov	r0, r4
 3221 0286 4FF4FA72 		mov	r2, #500
 3222 028a 1949     		ldr	r1, .L643+64
 3223 028c FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3224 0290 D6E6     		b	.L568
 3225              	.L596:
 3226 0292 0022     		movs	r2, #0
 3227 0294 0023     		movs	r3, #0
 3228 0296 C4E93023 		strd	r2, [r4, #192]
 3229 029a B0E7     		b	.L602
 3230              	.L641:
 3231 029c 2046     		mov	r0, r4
 3232 029e 4FF4FA72 		mov	r2, #500
 3233 02a2 1449     		ldr	r1, .L643+68
 3234 02a4 FFF7FEFF 		bl	_ZN13HttpResponder13RejectMessageEPKcj
 3235 02a8 CAE6     		b	.L568
 3236              	.L642:
 3237 02aa 2B46     		mov	r3, r5
 3238 02ac CDE7     		b	.L604
 3239              	.L644:
 3240 02ae 00BF     		.align	2
 3241              	.L643:
 3242 02b0 18000000 		.word	.LC102
 3243 02b4 1C000000 		.word	.LC103
 3244 02b8 20000000 		.word	.LC104
 3245 02bc 34010000 		.word	.LC107
 3246 02c0 08010000 		.word	.LC106
 3247 02c4 28000000 		.word	.LC105
 3248 02c8 D4000000 		.word	.LC5
 3249 02cc 00000000 		.word	.LC101
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 58


 3250 02d0 3C010000 		.word	.LC108
 3251 02d4 00000000 		.word	reprap
 3252 02d8 AC010000 		.word	.LC48
 3253 02dc 08010000 		.word	.LC35
 3254 02e0 8C010000 		.word	.LC112
 3255 02e4 00000000 		.word	.LANCHOR1
 3256 02e8 00000000 		.word	.LANCHOR2
 3257 02ec B0010000 		.word	.LC113
 3258 02f0 58010000 		.word	.LC110
 3259 02f4 74010000 		.word	.LC111
 3260 02f8 98010000 		.word	.LC46
 3261 02fc 48010000 		.word	.LC109
 3262 0300 00010000 		.word	.LC34
 3263              		.size	_ZN13HttpResponder14ProcessRequestEv, .-_ZN13HttpResponder14ProcessRequestEv
 3264              		.section	.text._ZN13HttpResponder8DoUploadEv,"ax",%progbits
 3265              		.align	1
 3266              		.p2align 2,,3
 3267              		.global	_ZN13HttpResponder8DoUploadEv
 3268              		.syntax unified
 3269              		.thumb
 3270              		.thumb_func
 3271              		.fpu fpv4-sp-d16
 3272              		.type	_ZN13HttpResponder8DoUploadEv, %function
 3273              	_ZN13HttpResponder8DoUploadEv:
 3274              		@ args = 0, pretend = 0, frame = 8
 3275              		@ frame_needed = 0, uses_anonymous_args = 0
 3276 0000 30B5     		push	{r4, r5, lr}
 3277 0002 0446     		mov	r4, r0
 3278 0004 0069     		ldr	r0, [r0, #16]
 3279 0006 0368     		ldr	r3, [r0]
 3280 0008 83B0     		sub	sp, sp, #12
 3281 000a 01AA     		add	r2, sp, #4
 3282 000c 5B69     		ldr	r3, [r3, #20]
 3283 000e 6946     		mov	r1, sp
 3284 0010 9847     		blx	r3
 3285 0012 E0B1     		cbz	r0, .L646
 3286 0014 2069     		ldr	r0, [r4, #16]
 3287 0016 0199     		ldr	r1, [sp, #4]
 3288 0018 0368     		ldr	r3, [r0]
 3289 001a 9B69     		ldr	r3, [r3, #24]
 3290 001c 9847     		blx	r3
 3291 001e 019A     		ldr	r2, [sp, #4]
 3292 0020 D4F8B830 		ldr	r3, [r4, #184]
 3293 0024 1344     		add	r3, r3, r2
 3294 0026 C4F8B830 		str	r3, [r4, #184]
 3295 002a 2046     		mov	r0, r4
 3296 002c FFF7FEFF 		bl	_ZN13HttpResponder18CheckAuthenticatedEv
 3297 0030 FFF7FEFF 		bl	millis
 3298 0034 019A     		ldr	r2, [sp, #4]
 3299 0036 6061     		str	r0, [r4, #20]
 3300 0038 0099     		ldr	r1, [sp]
 3301 003a A06B     		ldr	r0, [r4, #56]
 3302 003c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 3303 0040 E0B1     		cbz	r0, .L661
 3304              	.L647:
 3305 0042 D4E92D32 		ldrd	r3, r2, [r4, #180]
 3306 0046 9A42     		cmp	r2, r3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 59


 3307 0048 2CD2     		bcs	.L662
 3308 004a 03B0     		add	sp, sp, #12
 3309              		@ sp needed
 3310 004c 30BD     		pop	{r4, r5, pc}
 3311              	.L646:
 3312 004e 2069     		ldr	r0, [r4, #16]
 3313 0050 0368     		ldr	r3, [r0]
 3314 0052 DB69     		ldr	r3, [r3, #28]
 3315 0054 9847     		blx	r3
 3316 0056 28B9     		cbnz	r0, .L649
 3317 0058 2368     		ldr	r3, [r4]
 3318 005a 2046     		mov	r0, r4
 3319 005c 5B69     		ldr	r3, [r3, #20]
 3320 005e 9847     		blx	r3
 3321              	.L663:
 3322 0060 03B0     		add	sp, sp, #12
 3323              		@ sp needed
 3324 0062 30BD     		pop	{r4, r5, pc}
 3325              	.L649:
 3326 0064 FFF7FEFF 		bl	millis
 3327 0068 6369     		ldr	r3, [r4, #20]
 3328 006a C01A     		subs	r0, r0, r3
 3329 006c B0F5FA5F 		cmp	r0, #8000
 3330 0070 E7D3     		bcc	.L647
 3331 0072 2368     		ldr	r3, [r4]
 3332 0074 2046     		mov	r0, r4
 3333 0076 5B69     		ldr	r3, [r3, #20]
 3334 0078 9847     		blx	r3
 3335 007a F1E7     		b	.L663
 3336              	.L661:
 3337 007c 1F4B     		ldr	r3, .L664
 3338 007e 204A     		ldr	r2, .L664+4
 3339 0080 5868     		ldr	r0, [r3, #4]
 3340 0082 0123     		movs	r3, #1
 3341 0084 84F8C830 		strb	r3, [r4, #200]
 3342 0088 40F2B511 		movw	r1, #437
 3343 008c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3344 0090 2368     		ldr	r3, [r4]
 3345 0092 2046     		mov	r0, r4
 3346 0094 9B69     		ldr	r3, [r3, #24]
 3347 0096 9847     		blx	r3
 3348 0098 2046     		mov	r0, r4
 3349 009a 1A49     		ldr	r1, .L664+8
 3350 009c FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3351 00a0 03B0     		add	sp, sp, #12
 3352              		@ sp needed
 3353 00a2 30BD     		pop	{r4, r5, pc}
 3354              	.L662:
 3355 00a4 2046     		mov	r0, r4
 3356 00a6 FFF7FEFF 		bl	_ZNK16NetworkResponder11GetRemoteIPEv
 3357 00aa 174B     		ldr	r3, .L664+12
 3358 00ac 1D68     		ldr	r5, [r3]
 3359 00ae C5B1     		cbz	r5, .L651
 3360 00b0 164B     		ldr	r3, .L664+16
 3361 00b2 0022     		movs	r2, #0
 3362 00b4 04E0     		b	.L654
 3363              	.L652:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 60


 3364 00b6 0132     		adds	r2, r2, #1
 3365 00b8 AA42     		cmp	r2, r5
 3366 00ba 03F10C03 		add	r3, r3, #12
 3367 00be 10D0     		beq	.L651
 3368              	.L654:
 3369 00c0 53F8081C 		ldr	r1, [r3, #-8]
 3370 00c4 8142     		cmp	r1, r0
 3371 00c6 F6D1     		bne	.L652
 3372 00c8 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 3373 00ca 0029     		cmp	r1, #0
 3374 00cc F3D0     		beq	.L652
 3375 00ce 104D     		ldr	r5, .L664+20
 3376 00d0 02EB4202 		add	r2, r2, r2, lsl #1
 3377 00d4 05EB8205 		add	r5, r5, r2, lsl #2
 3378 00d8 0023     		movs	r3, #0
 3379 00da 2B72     		strb	r3, [r5, #8]
 3380 00dc FFF7FEFF 		bl	millis
 3381 00e0 6860     		str	r0, [r5, #4]
 3382              	.L651:
 3383 00e2 D4E93023 		ldrd	r2, [r4, #192]
 3384 00e6 D4F8B410 		ldr	r1, [r4, #180]
 3385 00ea 2046     		mov	r0, r4
 3386 00ec FFF7FEFF 		bl	_ZN16NetworkResponder12FinishUploadEmx
 3387 00f0 2046     		mov	r0, r4
 3388 00f2 0449     		ldr	r1, .L664+8
 3389 00f4 FFF7FEFF 		bl	_ZN13HttpResponder16SendJsonResponseEPKc
 3390 00f8 03B0     		add	sp, sp, #12
 3391              		@ sp needed
 3392 00fa 30BD     		pop	{r4, r5, pc}
 3393              	.L665:
 3394              		.align	2
 3395              	.L664:
 3396 00fc 00000000 		.word	reprap
 3397 0100 00000000 		.word	.LC114
 3398 0104 7C010000 		.word	.LC43
 3399 0108 00000000 		.word	.LANCHOR1
 3400 010c 08000000 		.word	.LANCHOR2+8
 3401 0110 00000000 		.word	.LANCHOR2
 3402              		.size	_ZN13HttpResponder8DoUploadEv, .-_ZN13HttpResponder8DoUploadEv
 3403              		.section	.text._ZN13HttpResponder4SpinEv,"ax",%progbits
 3404              		.align	1
 3405              		.p2align 2,,3
 3406              		.global	_ZN13HttpResponder4SpinEv
 3407              		.syntax unified
 3408              		.thumb
 3409              		.thumb_func
 3410              		.fpu fpv4-sp-d16
 3411              		.type	_ZN13HttpResponder4SpinEv, %function
 3412              	_ZN13HttpResponder4SpinEv:
 3413              		@ args = 0, pretend = 0, frame = 8
 3414              		@ frame_needed = 0, uses_anonymous_args = 0
 3415 0000 70B5     		push	{r4, r5, r6, lr}
 3416 0002 8368     		ldr	r3, [r0, #8]
 3417 0004 013B     		subs	r3, r3, #1
 3418 0006 82B0     		sub	sp, sp, #8
 3419 0008 0446     		mov	r4, r0
 3420 000a 042B     		cmp	r3, #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 61


 3421 000c 26D8     		bhi	.L679
 3422 000e DFE803F0 		tbb	[pc, r3]
 3423              	.L669:
 3424 0012 03       		.byte	(.L680-.L669)/2
 3425 0013 29       		.byte	(.L670-.L669)/2
 3426 0014 30       		.byte	(.L671-.L669)/2
 3427 0015 36       		.byte	(.L672-.L669)/2
 3428 0016 3C       		.byte	(.L673-.L669)/2
 3429 0017 00       		.p2align 1
 3430              	.L680:
 3431 0018 0026     		movs	r6, #0
 3432 001a 08E0     		b	.L668
 3433              	.L685:
 3434 001c 9DF80710 		ldrb	r1, [sp, #7]	@ zero_extendqisi2
 3435 0020 2046     		mov	r0, r4
 3436 0022 FFF7FEFF 		bl	_ZN13HttpResponder14CharFromClientEc
 3437 0026 2E46     		mov	r6, r5
 3438 0028 0546     		mov	r5, r0
 3439 002a 0028     		cmp	r0, #0
 3440 002c 3ED1     		bne	.L684
 3441              	.L668:
 3442 002e 2069     		ldr	r0, [r4, #16]
 3443 0030 0368     		ldr	r3, [r0]
 3444 0032 0DF10701 		add	r1, sp, #7
 3445 0036 1B69     		ldr	r3, [r3, #16]
 3446 0038 9847     		blx	r3
 3447 003a 0546     		mov	r5, r0
 3448 003c 0028     		cmp	r0, #0
 3449 003e EDD1     		bne	.L685
 3450 0040 002E     		cmp	r6, #0
 3451 0042 3DD1     		bne	.L686
 3452 0044 2069     		ldr	r0, [r4, #16]
 3453 0046 0368     		ldr	r3, [r0]
 3454 0048 DB69     		ldr	r3, [r3, #28]
 3455 004a 9847     		blx	r3
 3456 004c 90B3     		cbz	r0, .L678
 3457 004e FFF7FEFF 		bl	millis
 3458 0052 6369     		ldr	r3, [r4, #20]
 3459 0054 C01A     		subs	r0, r0, r3
 3460 0056 B0F5FA6F 		cmp	r0, #2000
 3461 005a 2BD2     		bcs	.L678
 3462              	.L679:
 3463 005c 0025     		movs	r5, #0
 3464              	.L667:
 3465 005e 2846     		mov	r0, r5
 3466 0060 02B0     		add	sp, sp, #8
 3467              		@ sp needed
 3468 0062 70BD     		pop	{r4, r5, r6, pc}
 3469              	.L670:
 3470 0064 0368     		ldr	r3, [r0]
 3471 0066 1B69     		ldr	r3, [r3, #16]
 3472 0068 9847     		blx	r3
 3473 006a 0125     		movs	r5, #1
 3474 006c 2846     		mov	r0, r5
 3475 006e 02B0     		add	sp, sp, #8
 3476              		@ sp needed
 3477 0070 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 62


 3478              	.L671:
 3479 0072 FFF7FEFF 		bl	_ZN13HttpResponder8DoUploadEv
 3480 0076 0125     		movs	r5, #1
 3481 0078 2846     		mov	r0, r5
 3482 007a 02B0     		add	sp, sp, #8
 3483              		@ sp needed
 3484 007c 70BD     		pop	{r4, r5, r6, pc}
 3485              	.L672:
 3486 007e FFF7FEFF 		bl	_ZN13HttpResponder14ProcessRequestEv
 3487 0082 0125     		movs	r5, #1
 3488 0084 2846     		mov	r0, r5
 3489 0086 02B0     		add	sp, sp, #8
 3490              		@ sp needed
 3491 0088 70BD     		pop	{r4, r5, r6, pc}
 3492              	.L673:
 3493 008a FFF7FEFF 		bl	millis
 3494 008e D4F8CC17 		ldr	r1, [r4, #1996]
 3495 0092 411A     		subs	r1, r0, r1
 3496 0094 B1F5FA6F 		cmp	r1, #2000
 3497 0098 34BF     		ite	cc
 3498 009a 0021     		movcc	r1, #0
 3499 009c 0121     		movcs	r1, #1
 3500 009e 2046     		mov	r0, r4
 3501 00a0 FFF7FEFF 		bl	_ZN13HttpResponder12SendFileInfoEb
 3502 00a4 0125     		movs	r5, #1
 3503 00a6 2846     		mov	r0, r5
 3504 00a8 02B0     		add	sp, sp, #8
 3505              		@ sp needed
 3506 00aa 70BD     		pop	{r4, r5, r6, pc}
 3507              	.L684:
 3508 00ac FFF7FEFF 		bl	millis
 3509 00b0 6061     		str	r0, [r4, #20]
 3510 00b2 D4E7     		b	.L667
 3511              	.L678:
 3512 00b4 2368     		ldr	r3, [r4]
 3513 00b6 2046     		mov	r0, r4
 3514 00b8 5B69     		ldr	r3, [r3, #20]
 3515 00ba 9847     		blx	r3
 3516 00bc 0125     		movs	r5, #1
 3517 00be CEE7     		b	.L667
 3518              	.L686:
 3519 00c0 FFF7FEFF 		bl	millis
 3520 00c4 3546     		mov	r5, r6
 3521 00c6 6061     		str	r0, [r4, #20]
 3522 00c8 C9E7     		b	.L667
 3523              		.size	_ZN13HttpResponder4SpinEv, .-_ZN13HttpResponder4SpinEv
 3524 00ca 00BF     		.section	.text._ZN13HttpResponder10InitStaticEv,"ax",%progbits
 3525              		.align	1
 3526              		.p2align 2,,3
 3527              		.global	_ZN13HttpResponder10InitStaticEv
 3528              		.syntax unified
 3529              		.thumb
 3530              		.thumb_func
 3531              		.fpu fpv4-sp-d16
 3532              		.type	_ZN13HttpResponder10InitStaticEv, %function
 3533              	_ZN13HttpResponder10InitStaticEv:
 3534              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 63


 3535              		@ frame_needed = 0, uses_anonymous_args = 0
 3536              		@ link register save eliminated.
 3537 0000 0149     		ldr	r1, .L688
 3538 0002 0248     		ldr	r0, .L688+4
 3539 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 3540              	.L689:
 3541              		.align	2
 3542              	.L688:
 3543 0008 00000000 		.word	.LC115
 3544 000c 00000000 		.word	.LANCHOR3
 3545              		.size	_ZN13HttpResponder10InitStaticEv, .-_ZN13HttpResponder10InitStaticEv
 3546              		.section	.text._ZN13HttpResponder16HandleGCodeReplyEPKc,"ax",%progbits
 3547              		.align	1
 3548              		.p2align 2,,3
 3549              		.global	_ZN13HttpResponder16HandleGCodeReplyEPKc
 3550              		.syntax unified
 3551              		.thumb
 3552              		.thumb_func
 3553              		.fpu fpv4-sp-d16
 3554              		.type	_ZN13HttpResponder16HandleGCodeReplyEPKc, %function
 3555              	_ZN13HttpResponder16HandleGCodeReplyEPKc:
 3556              		@ args = 0, pretend = 0, frame = 16
 3557              		@ frame_needed = 0, uses_anonymous_args = 0
 3558 0000 184B     		ldr	r3, .L710
 3559 0002 1B68     		ldr	r3, [r3]
 3560 0004 03B9     		cbnz	r3, .L708
 3561 0006 7047     		bx	lr
 3562              	.L708:
 3563 0008 10B5     		push	{r4, lr}
 3564 000a 84B0     		sub	sp, sp, #16
 3565 000c 4FF0FF32 		mov	r2, #-1
 3566 0010 1549     		ldr	r1, .L710+4
 3567 0012 0446     		mov	r4, r0
 3568 0014 02A8     		add	r0, sp, #8
 3569 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3570 001a 1448     		ldr	r0, .L710+8
 3571 001c FFF7FEFF 		bl	_ZNVK11OutputStack11GetLastItemEv
 3572 0020 0190     		str	r0, [sp, #4]
 3573 0022 10B1     		cbz	r0, .L692
 3574 0024 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 3575 0028 6BB1     		cbz	r3, .L693
 3576              	.L692:
 3577 002a 01A8     		add	r0, sp, #4
 3578 002c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3579 0030 20B9     		cbnz	r0, .L709
 3580 0032 02A8     		add	r0, sp, #8
 3581 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3582 0038 04B0     		add	sp, sp, #16
 3583              		@ sp needed
 3584 003a 10BD     		pop	{r4, pc}
 3585              	.L709:
 3586 003c 0B48     		ldr	r0, .L710+8
 3587 003e 0199     		ldr	r1, [sp, #4]
 3588 0040 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3589 0044 0198     		ldr	r0, [sp, #4]
 3590              	.L693:
 3591 0046 2146     		mov	r1, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 64


 3592 0048 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3593 004c 084A     		ldr	r2, .L710+12
 3594 004e 0949     		ldr	r1, .L710+16
 3595 0050 1368     		ldr	r3, [r2]
 3596 0052 02A8     		add	r0, sp, #8
 3597 0054 0133     		adds	r3, r3, #1
 3598 0056 0024     		movs	r4, #0
 3599 0058 1360     		str	r3, [r2]
 3600 005a 0C60     		str	r4, [r1]
 3601 005c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3602 0060 04B0     		add	sp, sp, #16
 3603              		@ sp needed
 3604 0062 10BD     		pop	{r4, pc}
 3605              	.L711:
 3606              		.align	2
 3607              	.L710:
 3608 0064 00000000 		.word	.LANCHOR1
 3609 0068 00000000 		.word	.LANCHOR3
 3610 006c 00000000 		.word	.LANCHOR4
 3611 0070 00000000 		.word	.LANCHOR6
 3612 0074 00000000 		.word	.LANCHOR5
 3613              		.size	_ZN13HttpResponder16HandleGCodeReplyEPKc, .-_ZN13HttpResponder16HandleGCodeReplyEPKc
 3614              		.section	.text._ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 3615              		.align	1
 3616              		.p2align 2,,3
 3617              		.global	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer
 3618              		.syntax unified
 3619              		.thumb
 3620              		.thumb_func
 3621              		.fpu fpv4-sp-d16
 3622              		.type	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer, %function
 3623              	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer:
 3624              		@ args = 0, pretend = 0, frame = 16
 3625              		@ frame_needed = 0, uses_anonymous_args = 0
 3626 0000 10B5     		push	{r4, lr}
 3627 0002 84B0     		sub	sp, sp, #16
 3628 0004 0190     		str	r0, [sp, #4]
 3629 0006 28B1     		cbz	r0, .L712
 3630 0008 0E4B     		ldr	r3, .L720
 3631 000a 1B68     		ldr	r3, [r3]
 3632 000c 23B9     		cbnz	r3, .L719
 3633 000e 01A8     		add	r0, sp, #4
 3634 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3635              	.L712:
 3636 0014 04B0     		add	sp, sp, #16
 3637              		@ sp needed
 3638 0016 10BD     		pop	{r4, pc}
 3639              	.L719:
 3640 0018 4FF0FF32 		mov	r2, #-1
 3641 001c 02A8     		add	r0, sp, #8
 3642 001e 0A49     		ldr	r1, .L720+4
 3643 0020 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3644 0024 0199     		ldr	r1, [sp, #4]
 3645 0026 0948     		ldr	r0, .L720+8
 3646 0028 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3647 002c 084A     		ldr	r2, .L720+12
 3648 002e 0949     		ldr	r1, .L720+16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 65


 3649 0030 1368     		ldr	r3, [r2]
 3650 0032 02A8     		add	r0, sp, #8
 3651 0034 0133     		adds	r3, r3, #1
 3652 0036 0024     		movs	r4, #0
 3653 0038 1360     		str	r3, [r2]
 3654 003a 0C60     		str	r4, [r1]
 3655 003c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3656 0040 04B0     		add	sp, sp, #16
 3657              		@ sp needed
 3658 0042 10BD     		pop	{r4, pc}
 3659              	.L721:
 3660              		.align	2
 3661              	.L720:
 3662 0044 00000000 		.word	.LANCHOR1
 3663 0048 00000000 		.word	.LANCHOR3
 3664 004c 00000000 		.word	.LANCHOR4
 3665 0050 00000000 		.word	.LANCHOR6
 3666 0054 00000000 		.word	.LANCHOR5
 3667              		.size	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer, .-_ZN13HttpResponder16HandleGCodeReply
 3668              		.section	.text._ZN13HttpResponder13CheckSessionsEv,"ax",%progbits
 3669              		.align	1
 3670              		.p2align 2,,3
 3671              		.global	_ZN13HttpResponder13CheckSessionsEv
 3672              		.syntax unified
 3673              		.thumb
 3674              		.thumb_func
 3675              		.fpu fpv4-sp-d16
 3676              		.type	_ZN13HttpResponder13CheckSessionsEv, %function
 3677              	_ZN13HttpResponder13CheckSessionsEv:
 3678              		@ args = 0, pretend = 0, frame = 16
 3679              		@ frame_needed = 0, uses_anonymous_args = 0
 3680 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3681 0004 DFF8F880 		ldr	r8, .L756+28
 3682 0008 84B0     		sub	sp, sp, #16
 3683 000a FFF7FEFF 		bl	millis
 3684 000e D8F80020 		ldr	r2, [r8]
 3685 0012 82B3     		cbz	r2, .L722
 3686 0014 334B     		ldr	r3, .L756
 3687 0016 02EB4205 		add	r5, r2, r2, lsl #1
 3688 001a 03EB8505 		add	r5, r3, r5, lsl #2
 3689 001e 8446     		mov	ip, r0
 3690 0020 0C3D     		subs	r5, r5, #12
 3691 0022 A3F10C0E 		sub	lr, r3, #12
 3692 0026 0027     		movs	r7, #0
 3693 0028 02E0     		b	.L724
 3694              	.L727:
 3695 002a 4A46     		mov	r2, r9
 3696 002c 0C3D     		subs	r5, r5, #12
 3697 002e 0AB3     		cbz	r2, .L726
 3698              	.L724:
 3699 0030 6B68     		ldr	r3, [r5, #4]
 3700 0032 ACEB0303 		sub	r3, ip, r3
 3701 0036 B3F5FA5F 		cmp	r3, #8000
 3702 003a 02F1FF39 		add	r9, r2, #-1
 3703 003e F4D9     		bls	.L727
 3704 0040 D8F800A0 		ldr	r10, [r8]
 3705 0044 9245     		cmp	r10, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 66


 3706 0046 0CD9     		bls	.L728
 3707 0048 0AEB4A06 		add	r6, r10, r10, lsl #1
 3708 004c 0EEB8606 		add	r6, lr, r6, lsl #2
 3709 0050 2B46     		mov	r3, r5
 3710              	.L729:
 3711 0052 1C46     		mov	r4, r3
 3712 0054 53F80C0F 		ldr	r0, [r3, #12]!	@ unaligned
 3713 0058 5968     		ldr	r1, [r3, #4]	@ unaligned
 3714 005a 9A68     		ldr	r2, [r3, #8]	@ unaligned
 3715 005c 9E42     		cmp	r6, r3
 3716 005e 07C4     		stmia	r4!, {r0, r1, r2}
 3717 0060 F7D1     		bne	.L729
 3718              	.L728:
 3719 0062 0AF1FF33 		add	r3, r10, #-1
 3720 0066 4A46     		mov	r2, r9
 3721 0068 C8F80030 		str	r3, [r8]
 3722 006c 0137     		adds	r7, r7, #1
 3723 006e 0C3D     		subs	r5, r5, #12
 3724 0070 002A     		cmp	r2, #0
 3725 0072 DDD1     		bne	.L724
 3726              	.L726:
 3727 0074 17B9     		cbnz	r7, .L753
 3728              	.L722:
 3729 0076 04B0     		add	sp, sp, #16
 3730              		@ sp needed
 3731 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3732              	.L753:
 3733 007c 1A4E     		ldr	r6, .L756+4
 3734 007e 1B49     		ldr	r1, .L756+8
 3735 0080 4FF0FF32 		mov	r2, #-1
 3736 0084 02A8     		add	r0, sp, #8
 3737 0086 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3738 008a 3268     		ldr	r2, [r6]
 3739 008c D8F80030 		ldr	r3, [r8]
 3740 0090 1744     		add	r7, r7, r2
 3741 0092 3760     		str	r7, [r6]
 3742 0094 D3B9     		cbnz	r3, .L754
 3743              	.L730:
 3744 0096 164C     		ldr	r4, .L756+12
 3745 0098 2368     		ldr	r3, [r4]
 3746 009a 53B1     		cbz	r3, .L732
 3747 009c 2546     		mov	r5, r4
 3748              	.L733:
 3749 009e 2846     		mov	r0, r5
 3750 00a0 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 3751 00a4 0190     		str	r0, [sp, #4]
 3752 00a6 01A8     		add	r0, sp, #4
 3753 00a8 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3754 00ac 2368     		ldr	r3, [r4]
 3755 00ae 002B     		cmp	r3, #0
 3756 00b0 F5D1     		bne	.L733
 3757              	.L732:
 3758 00b2 104B     		ldr	r3, .L756+16
 3759 00b4 D3F80831 		ldr	r3, [r3, #264]
 3760 00b8 0022     		movs	r2, #0
 3761 00ba 5B07     		lsls	r3, r3, #29
 3762 00bc 3260     		str	r2, [r6]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 67


 3763 00be 08D4     		bmi	.L755
 3764              	.L731:
 3765 00c0 02A8     		add	r0, sp, #8
 3766 00c2 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3767 00c6 04B0     		add	sp, sp, #16
 3768              		@ sp needed
 3769 00c8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3770              	.L754:
 3771 00cc 9F42     		cmp	r7, r3
 3772 00ce F7D3     		bcc	.L731
 3773 00d0 E1E7     		b	.L730
 3774              	.L755:
 3775 00d2 094B     		ldr	r3, .L756+20
 3776 00d4 0948     		ldr	r0, .L756+24
 3777 00d6 1968     		ldr	r1, [r3]
 3778 00d8 C1F11401 		rsb	r1, r1, #20
 3779 00dc FFF7FEFF 		bl	debugPrintf
 3780 00e0 EEE7     		b	.L731
 3781              	.L757:
 3782 00e2 00BF     		.align	2
 3783              	.L756:
 3784 00e4 00000000 		.word	.LANCHOR2
 3785 00e8 00000000 		.word	.LANCHOR5
 3786 00ec 00000000 		.word	.LANCHOR3
 3787 00f0 00000000 		.word	.LANCHOR4
 3788 00f4 00000000 		.word	reprap
 3789 00f8 00000000 		.word	_ZN12OutputBuffer17usedOutputBuffersE
 3790 00fc 00000000 		.word	.LC116
 3791 0100 00000000 		.word	.LANCHOR1
 3792              		.size	_ZN13HttpResponder13CheckSessionsEv, .-_ZN13HttpResponder13CheckSessionsEv
 3793              		.section	.text._ZN13HttpResponder17CommonDiagnosticsE11MessageType,"ax",%progbits
 3794              		.align	1
 3795              		.p2align 2,,3
 3796              		.global	_ZN13HttpResponder17CommonDiagnosticsE11MessageType
 3797              		.syntax unified
 3798              		.thumb
 3799              		.thumb_func
 3800              		.fpu fpv4-sp-d16
 3801              		.type	_ZN13HttpResponder17CommonDiagnosticsE11MessageType, %function
 3802              	_ZN13HttpResponder17CommonDiagnosticsE11MessageType:
 3803              		@ args = 0, pretend = 0, frame = 0
 3804              		@ frame_needed = 0, uses_anonymous_args = 0
 3805 0000 30B5     		push	{r4, r5, lr}
 3806 0002 074A     		ldr	r2, .L760
 3807 0004 074B     		ldr	r3, .L760+4
 3808 0006 5568     		ldr	r5, [r2, #4]
 3809 0008 1B68     		ldr	r3, [r3]
 3810 000a 074A     		ldr	r2, .L760+8
 3811 000c 83B0     		sub	sp, sp, #12
 3812 000e 0824     		movs	r4, #8
 3813 0010 0146     		mov	r1, r0
 3814 0012 0094     		str	r4, [sp]
 3815 0014 2846     		mov	r0, r5
 3816 0016 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3817 001a 03B0     		add	sp, sp, #12
 3818              		@ sp needed
 3819 001c 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 68


 3820              	.L761:
 3821 001e 00BF     		.align	2
 3822              	.L760:
 3823 0020 00000000 		.word	reprap
 3824 0024 00000000 		.word	.LANCHOR1
 3825 0028 00000000 		.word	.LC117
 3826              		.size	_ZN13HttpResponder17CommonDiagnosticsE11MessageType, .-_ZN13HttpResponder17CommonDiagnostics
 3827              		.section	.text.startup._GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder,"ax",%progbits
 3828              		.align	1
 3829              		.p2align 2,,3
 3830              		.syntax unified
 3831              		.thumb
 3832              		.thumb_func
 3833              		.fpu fpv4-sp-d16
 3834              		.type	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder, %function
 3835              	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder:
 3836              		@ args = 0, pretend = 0, frame = 0
 3837              		@ frame_needed = 0, uses_anonymous_args = 0
 3838 0000 08B5     		push	{r3, lr}
 3839 0002 0949     		ldr	r1, .L764
 3840 0004 0948     		ldr	r0, .L764+4
 3841 0006 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 3842 000a 0949     		ldr	r1, .L764+8
 3843 000c 094A     		ldr	r2, .L764+12
 3844 000e 0A48     		ldr	r0, .L764+16
 3845 0010 0023     		movs	r3, #0
 3846 0012 0B60     		str	r3, [r1]
 3847 0014 1360     		str	r3, [r2]
 3848 0016 D360     		str	r3, [r2, #12]
 3849 0018 9361     		str	r3, [r2, #24]
 3850 001a 5362     		str	r3, [r2, #36]
 3851 001c 1363     		str	r3, [r2, #48]
 3852 001e D363     		str	r3, [r2, #60]
 3853 0020 9364     		str	r3, [r2, #72]
 3854 0022 5365     		str	r3, [r2, #84]
 3855 0024 0360     		str	r3, [r0]
 3856 0026 08BD     		pop	{r3, pc}
 3857              	.L765:
 3858              		.align	2
 3859              	.L764:
 3860 0028 00000000 		.word	.LANCHOR7
 3861 002c 00000000 		.word	.LANCHOR8
 3862 0030 00000000 		.word	.LANCHOR3
 3863 0034 00000000 		.word	.LANCHOR2
 3864 0038 00000000 		.word	.LANCHOR4
 3865              		.size	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder, .-_GLOBAL__sub_I__ZN13HttpResponder
 3866              		.section	.init_array,"aw",%init_array
 3867              		.align	2
 3868 0000 00000000 		.word	_GLOBAL__sub_I__ZN13HttpResponderC2EP16NetworkResponder(target1)
 3869              		.section	.text._ZN13HttpResponder12CancelUploadEv,"ax",%progbits
 3870              		.align	1
 3871              		.p2align 2,,3
 3872              		.global	_ZN13HttpResponder12CancelUploadEv
 3873              		.syntax unified
 3874              		.thumb
 3875              		.thumb_func
 3876              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 69


 3877              		.type	_ZN13HttpResponder12CancelUploadEv, %function
 3878              	_ZN13HttpResponder12CancelUploadEv:
 3879              		@ args = 0, pretend = 0, frame = 0
 3880              		@ frame_needed = 0, uses_anonymous_args = 0
 3881 0000 38B5     		push	{r3, r4, r5, lr}
 3882 0002 0369     		ldr	r3, [r0, #16]
 3883 0004 0546     		mov	r5, r0
 3884 0006 E3B1     		cbz	r3, .L767
 3885 0008 104A     		ldr	r2, .L781
 3886 000a 1068     		ldr	r0, [r2]
 3887 000c C8B1     		cbz	r0, .L767
 3888 000e 1C69     		ldr	r4, [r3, #16]
 3889 0010 0F4B     		ldr	r3, .L781+4
 3890 0012 0022     		movs	r2, #0
 3891 0014 04E0     		b	.L769
 3892              	.L768:
 3893 0016 0132     		adds	r2, r2, #1
 3894 0018 8242     		cmp	r2, r0
 3895 001a 03F10C03 		add	r3, r3, #12
 3896 001e 10D0     		beq	.L767
 3897              	.L769:
 3898 0020 53F8081C 		ldr	r1, [r3, #-8]
 3899 0024 A142     		cmp	r1, r4
 3900 0026 F6D1     		bne	.L768
 3901 0028 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 3902 002a 0029     		cmp	r1, #0
 3903 002c F3D0     		beq	.L768
 3904 002e 094C     		ldr	r4, .L781+8
 3905 0030 02EB4202 		add	r2, r2, r2, lsl #1
 3906 0034 04EB8204 		add	r4, r4, r2, lsl #2
 3907 0038 0023     		movs	r3, #0
 3908 003a 2372     		strb	r3, [r4, #8]
 3909 003c FFF7FEFF 		bl	millis
 3910 0040 6060     		str	r0, [r4, #4]
 3911              	.L767:
 3912 0042 2846     		mov	r0, r5
 3913 0044 BDE83840 		pop	{r3, r4, r5, lr}
 3914 0048 FFF7FEBF 		b	_ZN16NetworkResponder12CancelUploadEv
 3915              	.L782:
 3916              		.align	2
 3917              	.L781:
 3918 004c 00000000 		.word	.LANCHOR1
 3919 0050 08000000 		.word	.LANCHOR2+8
 3920 0054 00000000 		.word	.LANCHOR2
 3921              		.size	_ZN13HttpResponder12CancelUploadEv, .-_ZN13HttpResponder12CancelUploadEv
 3922              		.section	.text._ZN13HttpResponder8SendDataEv,"ax",%progbits
 3923              		.align	1
 3924              		.p2align 2,,3
 3925              		.global	_ZN13HttpResponder8SendDataEv
 3926              		.syntax unified
 3927              		.thumb
 3928              		.thumb_func
 3929              		.fpu fpv4-sp-d16
 3930              		.type	_ZN13HttpResponder8SendDataEv, %function
 3931              	_ZN13HttpResponder8SendDataEv:
 3932              		@ args = 0, pretend = 0, frame = 0
 3933              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 70


 3934 0000 10B5     		push	{r4, lr}
 3935 0002 0446     		mov	r4, r0
 3936 0004 FFF7FEFF 		bl	_ZN16NetworkResponder8SendDataEv
 3937 0008 A368     		ldr	r3, [r4, #8]
 3938 000a 012B     		cmp	r3, #1
 3939 000c 00D0     		beq	.L786
 3940 000e 10BD     		pop	{r4, pc}
 3941              	.L786:
 3942 0010 FFF7FEFF 		bl	millis
 3943 0014 6061     		str	r0, [r4, #20]
 3944 0016 10BD     		pop	{r4, pc}
 3945              		.size	_ZN13HttpResponder8SendDataEv, .-_ZN13HttpResponder8SendDataEv
 3946              		.global	_ZTV13HttpResponder
 3947              		.global	_ZN13HttpResponder15gcodeReplyMutexE
 3948              		.global	_ZN13HttpResponder10gcodeReplyE
 3949              		.global	_ZN13HttpResponder3seqE
 3950              		.global	_ZN13HttpResponder13clientsServedE
 3951              		.global	_ZN13HttpResponder11numSessionsE
 3952              		.global	_ZN13HttpResponder8sessionsE
 3953              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 3954              		.align	2
 3955              		.set	.LANCHOR8,. + 0
 3956              		.type	_ZL14DefaultNetMask, %object
 3957              		.size	_ZL14DefaultNetMask, 4
 3958              	_ZL14DefaultNetMask:
 3959 0000 00000000 		.space	4
 3960              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3961              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3962              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3963              	_ZL28cpu_irq_prev_interrupt_state:
 3964 0000 00       		.space	1
 3965              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3966              		.align	2
 3967              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3968              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3969              	_ZL32cpu_irq_critical_section_counter:
 3970 0000 00000000 		.space	4
 3971              		.section	.bss._ZN13HttpResponder10gcodeReplyE,"aw",%nobits
 3972              		.align	2
 3973              		.set	.LANCHOR4,. + 0
 3974              		.type	_ZN13HttpResponder10gcodeReplyE, %object
 3975              		.size	_ZN13HttpResponder10gcodeReplyE, 20
 3976              	_ZN13HttpResponder10gcodeReplyE:
 3977 0000 00000000 		.space	20
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3978              		.section	.bss._ZN13HttpResponder11numSessionsE,"aw",%nobits
 3979              		.align	2
 3980              		.set	.LANCHOR1,. + 0
 3981              		.type	_ZN13HttpResponder11numSessionsE, %object
 3982              		.size	_ZN13HttpResponder11numSessionsE, 4
 3983              	_ZN13HttpResponder11numSessionsE:
 3984 0000 00000000 		.space	4
 3985              		.section	.bss._ZN13HttpResponder13clientsServedE,"aw",%nobits
 3986              		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 71


 3987              		.set	.LANCHOR5,. + 0
 3988              		.type	_ZN13HttpResponder13clientsServedE, %object
 3989              		.size	_ZN13HttpResponder13clientsServedE, 4
 3990              	_ZN13HttpResponder13clientsServedE:
 3991 0000 00000000 		.space	4
 3992              		.section	.bss._ZN13HttpResponder15gcodeReplyMutexE,"aw",%nobits
 3993              		.align	2
 3994              		.set	.LANCHOR3,. + 0
 3995              		.type	_ZN13HttpResponder15gcodeReplyMutexE, %object
 3996              		.size	_ZN13HttpResponder15gcodeReplyMutexE, 96
 3997              	_ZN13HttpResponder15gcodeReplyMutexE:
 3998 0000 00000000 		.space	96
 3998      00000000 
 3998      00000000 
 3998      00000000 
 3998      00000000 
 3999              		.section	.bss._ZN13HttpResponder3seqE,"aw",%nobits
 4000              		.align	2
 4001              		.set	.LANCHOR6,. + 0
 4002              		.type	_ZN13HttpResponder3seqE, %object
 4003              		.size	_ZN13HttpResponder3seqE, 4
 4004              	_ZN13HttpResponder3seqE:
 4005 0000 00000000 		.space	4
 4006              		.section	.bss._ZN13HttpResponder8sessionsE,"aw",%nobits
 4007              		.align	2
 4008              		.set	.LANCHOR2,. + 0
 4009              		.type	_ZN13HttpResponder8sessionsE, %object
 4010              		.size	_ZN13HttpResponder8sessionsE, 96
 4011              	_ZN13HttpResponder8sessionsE:
 4012 0000 00000000 		.space	96
 4012      00000000 
 4012      00000000 
 4012      00000000 
 4012      00000000 
 4013              		.section	.rodata.._146,"a",%progbits
 4014              		.align	2
 4015              		.set	.LANCHOR7,. + 0
 4016              		.type	._146, %object
 4017              		.size	._146, 4
 4018              	._146:
 4019 0000 FF       		.byte	-1
 4020 0001 FF       		.byte	-1
 4021 0002 FF       		.byte	-1
 4022 0003 00       		.byte	0
 4023              		.section	.rodata._ZN13HttpResponder10InitStaticEv.str1.4,"aMS",%progbits,1
 4024              		.align	2
 4025              	.LC115:
 4026 0000 48747470 		.ascii	"HttpGCodeReply\000"
 4026      47436F64 
 4026      65526570 
 4026      6C7900
 4027              		.section	.rodata._ZN13HttpResponder12SendFileInfoEb.str1.4,"aMS",%progbits,1
 4028              		.align	2
 4029              	.LC2:
 4030 0000 48545450 		.ascii	"HTTP/1.1 200 OK\015\012Cache-Control: no-cache, no-"
 4030      2F312E31 
 4030      20323030 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 72


 4030      204F4B0D 
 4030      0A436163 
 4031 002d 73746F72 		.ascii	"store, must-revalidate\015\012Pragma: no-cache\015\012"
 4031      652C206D 
 4031      7573742D 
 4031      72657661 
 4031      6C696461 
 4032 0057 45787069 		.ascii	"Expires: 0\015\012Access-Control-Allow-Origin: *\015"
 4032      7265733A 
 4032      20300D0A 
 4032      41636365 
 4032      73732D43 
 4033 0082 0A436F6E 		.ascii	"\012Content-Type: application/json\015\012\000"
 4033      74656E74 
 4033      2D547970 
 4033      653A2061 
 4033      70706C69 
 4034              	.LC3:
 4035 00a4 436F6E74 		.ascii	"Content-Length: %u\015\012\000"
 4035      656E742D 
 4035      4C656E67 
 4035      74683A20 
 4035      25750D0A 
 4036 00b9 000000   		.space	3
 4037              	.LC4:
 4038 00bc 436F6E6E 		.ascii	"Connection: close\015\012\015\012\000"
 4038      65637469 
 4038      6F6E3A20 
 4038      636C6F73 
 4038      650D0A0D 
 4039 00d2 0000     		.space	2
 4040              	.LC5:
 4041 00d4 2E2E2F73 		.ascii	"../src/Networking/HttpResponder.cpp\000"
 4041      72632F4E 
 4041      6574776F 
 4041      726B696E 
 4041      672F4874 
 4042              		.section	.rodata._ZN13HttpResponder13CheckSessionsEv.str1.4,"aMS",%progbits,1
 4043              		.align	2
 4044              	.LC116:
 4045 0000 52656C65 		.ascii	"Released gcodeReply, free buffers=%u\012\000"
 4045      61736564 
 4045      2067636F 
 4045      64655265 
 4045      706C792C 
 4046              		.section	.rodata._ZN13HttpResponder13RejectMessageEPKcj.str1.4,"aMS",%progbits,1
 4047              		.align	2
 4048              	.LC13:
 4049 0000 57656273 		.ascii	"Webserver: rejecting message with: %u %s\012\000"
 4049      65727665 
 4049      723A2072 
 4049      656A6563 
 4049      74696E67 
 4050 002a 0000     		.space	2
 4051              	.LC14:
 4052 002c 48545450 		.ascii	"HTTP/1.1 %u %s\015\012Connection: close\015\012\015"
 4052      2F312E31 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 73


 4052      20257520 
 4052      25730D0A 
 4052      436F6E6E 
 4053 0050 0A00     		.ascii	"\012\000"
 4054 0052 0000     		.space	2
 4055              	.LC15:
 4056 0054 3C68746D 		.ascii	"<html>\012<head>\012</head>\012<body>\012<p style=\""
 4056      6C3E0A3C 
 4056      68656164 
 4056      3E0A3C2F 
 4056      68656164 
 4057 007b 666F6E74 		.ascii	"font-size: 16pt; text-align: center; margin-top:50p"
 4057      2D73697A 
 4057      653A2031 
 4057      3670743B 
 4057      20746578 
 4058 00ae 78223E59 		.ascii	"x\">Your Duet rejected the HTTP request: \000"
 4058      6F757220 
 4058      44756574 
 4058      2072656A 
 4058      65637465 
 4059 00d7 00       		.space	1
 4060              	.LC16:
 4061 00d8 25732573 		.ascii	"%s%s%s\000"
 4061      257300
 4062 00df 00       		.space	1
 4063              	.LC17:
 4064 00e0 3C2F703E 		.ascii	"</p>\012</body>\012\000"
 4064      0A3C2F62 
 4064      6F64793E 
 4064      0A00
 4065              		.section	.rodata._ZN13HttpResponder14CharFromClientEc.str1.4,"aMS",%progbits,1
 4066              		.align	2
 4067              	.LC18:
 4068 0000 746F6F20 		.ascii	"too many command words\000"
 4068      6D616E79 
 4068      20636F6D 
 4068      6D616E64 
 4068      20776F72 
 4069 0017 00       		.space	1
 4070              	.LC19:
 4071 0018 62616420 		.ascii	"bad qualifier key\000"
 4071      7175616C 
 4071      69666965 
 4071      72206B65 
 4071      7900
 4072 002a 0000     		.space	2
 4073              	.LC20:
 4074 002c 746F6F20 		.ascii	"too many keys in qualifier\000"
 4074      6D616E79 
 4074      206B6579 
 4074      7320696E 
 4074      20717561 
 4075 0047 00       		.space	1
 4076              	.LC21:
 4077 0048 62616420 		.ascii	"bad escape\000"
 4077      65736361 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 74


 4077      706500
 4078 0053 00       		.space	1
 4079              	.LC22:
 4080 0054 756E6578 		.ascii	"unexpected newline\000"
 4080      70656374 
 4080      6564206E 
 4080      65776C69 
 4080      6E6500
 4081 0067 00       		.space	1
 4082              	.LC23:
 4083 0068 746F6F20 		.ascii	"too many header key-value pairs\000"
 4083      6D616E79 
 4083      20686561 
 4083      64657220 
 4083      6B65792D 
 4084              	.LC24:
 4085 0088 6F766572 		.ascii	"overflow\000"
 4085      666C6F77 
 4085      00
 4086              		.section	.rodata._ZN13HttpResponder14ProcessMessageEv.str1.4,"aMS",%progbits,1
 4087              		.align	2
 4088              	.LC8:
 4089 0000 48545450 		.ascii	"HTTP req, command words {\000"
 4089      20726571 
 4089      2C20636F 
 4089      6D6D616E 
 4089      6420776F 
 4090 001a 0000     		.space	2
 4091              	.LC9:
 4092 001c 20257300 		.ascii	" %s\000"
 4093              	.LC10:
 4094 0020 207D2C20 		.ascii	" }, parameters {\000"
 4094      70617261 
 4094      6D657465 
 4094      7273207B 
 4094      00
 4095 0031 000000   		.space	3
 4096              	.LC11:
 4097 0034 2025733D 		.ascii	" %s=%s\000"
 4097      257300
 4098 003b 00       		.space	1
 4099              	.LC12:
 4100 003c 207D0A00 		.ascii	" }\012\000"
 4101              		.section	.rodata._ZN13HttpResponder14ProcessRequestEv.str1.4,"aMS",%progbits,1
 4102              		.align	2
 4103              	.LC101:
 4104 0000 746F6F20 		.ascii	"too few command words\000"
 4104      66657720 
 4104      636F6D6D 
 4104      616E6420 
 4104      776F7264 
 4105 0016 0000     		.space	2
 4106              	.LC102:
 4107 0018 47455400 		.ascii	"GET\000"
 4108              	.LC103:
 4109 001c 72725F00 		.ascii	"rr_\000"
 4110              	.LC104:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 75


 4111 0020 4F505449 		.ascii	"OPTIONS\000"
 4111      4F4E5300 
 4112              	.LC105:
 4113 0028 48545450 		.ascii	"HTTP/1.1 200 OK\015\012Allow: OPTIONS, GET, POST\015"
 4113      2F312E31 
 4113      20323030 
 4113      204F4B0D 
 4113      0A416C6C 
 4114 0053 0A436163 		.ascii	"\012Cache-Control: no-cache, no-store, must-revalid"
 4114      68652D43 
 4114      6F6E7472 
 4114      6F6C3A20 
 4114      6E6F2D63 
 4115 0083 6174650D 		.ascii	"ate\015\012Pragma: no-cache\015\012Expires: 0\015\012"
 4115      0A507261 
 4115      676D613A 
 4115      206E6F2D 
 4115      63616368 
 4116 00a6 41636365 		.ascii	"Access-Control-Allow-Origin: *\015\012Access-Contro"
 4116      73732D43 
 4116      6F6E7472 
 4116      6F6C2D41 
 4116      6C6C6F77 
 4117 00d3 6C2D416C 		.ascii	"l-Allow-Headers: Content-Type\015\012Content-Length"
 4117      6C6F772D 
 4117      48656164 
 4117      6572733A 
 4117      20436F6E 
 4118 0100 3A20300D 		.ascii	": 0\015\012\015\012\000"
 4118      0A0D0A00 
 4119              	.LC106:
 4120 0108 556E6B6E 		.ascii	"Unknown message type or not authenticated\000"
 4120      6F776E20 
 4120      6D657373 
 4120      61676520 
 4120      74797065 
 4121 0132 0000     		.space	2
 4122              	.LC107:
 4123 0134 504F5354 		.ascii	"POST\000"
 4123      00
 4124 0139 000000   		.space	3
 4125              	.LC108:
 4126 013c 72725F75 		.ascii	"rr_upload\000"
 4126      706C6F61 
 4126      6400
 4127 0146 0000     		.space	2
 4128              	.LC109:
 4129 0148 436F6E74 		.ascii	"Content-Length\000"
 4129      656E742D 
 4129      4C656E67 
 4129      746800
 4130 0157 00       		.space	1
 4131              	.LC110:
 4132 0158 696E7661 		.ascii	"invalid POST upload request\000"
 4132      6C696420 
 4132      504F5354 
 4132      2075706C 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 76


 4132      6F616420 
 4133              	.LC111:
 4134 0174 636F756C 		.ascii	"could not create file\000"
 4134      64206E6F 
 4134      74206372 
 4134      65617465 
 4134      2066696C 
 4135 018a 0000     		.space	2
 4136              	.LC112:
 4137 018c 53746172 		.ascii	"Start uploading file %s length %lu\012\000"
 4137      74207570 
 4137      6C6F6164 
 4137      696E6720 
 4137      66696C65 
 4138              	.LC113:
 4139 01b0 6F6E6C79 		.ascii	"only rr_upload is supported for POST requests\000"
 4139      2072725F 
 4139      75706C6F 
 4139      61642069 
 4139      73207375 
 4140              		.section	.rodata._ZN13HttpResponder14SendGCodeReplyEv.str1.4,"aMS",%progbits,1
 4141              		.align	2
 4142              	.LC6:
 4143 0000 53656E64 		.ascii	"Sending G-Code reply to HTTP client %d of %d (lengt"
 4143      696E6720 
 4143      472D436F 
 4143      64652072 
 4143      65706C79 
 4144 0033 68202575 		.ascii	"h %u)\012\000"
 4144      290A00
 4145 003a 0000     		.space	2
 4146              	.LC7:
 4147 003c 48545450 		.ascii	"HTTP/1.1 200 OK\015\012Cache-Control: no-cache, no-"
 4147      2F312E31 
 4147      20323030 
 4147      204F4B0D 
 4147      0A436163 
 4148 0069 73746F72 		.ascii	"store, must-revalidate\015\012Pragma: no-cache\015\012"
 4148      652C206D 
 4148      7573742D 
 4148      72657661 
 4148      6C696461 
 4149 0093 45787069 		.ascii	"Expires: 0\015\012Access-Control-Allow-Origin: *\015"
 4149      7265733A 
 4149      20300D0A 
 4149      41636365 
 4149      73732D43 
 4150 00be 0A436F6E 		.ascii	"\012Content-Type: text/plain\015\012\000"
 4150      74656E74 
 4150      2D547970 
 4150      653A2074 
 4150      6578742F 
 4151              		.section	.rodata._ZN13HttpResponder15GetJsonResponseEPKcRP12OutputBufferRb.str1.4,"aMS",%progbits,
 4152              		.align	2
 4153              	.LC25:
 4154 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 4154      636F6465 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 77


 4154      732F00
 4155 000b 00       		.space	1
 4156              	.LC26:
 4157 000c 636F6E6E 		.ascii	"connect\000"
 4157      65637400 
 4158              	.LC27:
 4159 0014 70617373 		.ascii	"password\000"
 4159      776F7264 
 4159      00
 4160 001d 000000   		.space	3
 4161              	.LC28:
 4162 0020 7B226572 		.ascii	"{\"err\":1}\000"
 4162      72223A31 
 4162      7D00
 4163 002a 0000     		.space	2
 4164              	.LC29:
 4165 002c 48545450 		.ascii	"HTTP client %s attempted login with incorrect passw"
 4165      20636C69 
 4165      656E7420 
 4165      25732061 
 4165      7474656D 
 4166 005f 6F72640A 		.ascii	"ord\012\000"
 4166      00
 4167              	.LC30:
 4168 0064 7B226572 		.ascii	"{\"err\":2}\000"
 4168      72223A32 
 4168      7D00
 4169 006e 0000     		.space	2
 4170              	.LC31:
 4171 0070 48545450 		.ascii	"HTTP client %s attempted login but no more sessions"
 4171      20636C69 
 4171      656E7420 
 4171      25732061 
 4171      7474656D 
 4172 00a3 20617661 		.ascii	" available\012\000"
 4172      696C6162 
 4172      6C650A00 
 4173 00af 00       		.space	1
 4174              	.LC32:
 4175 00b0 7B226572 		.ascii	"{\"err\":0,\"sessionTimeout\":%lu,\"boardType\":\"%"
 4175      72223A30 
 4175      2C227365 
 4175      7373696F 
 4175      6E54696D 
 4176 00dc 73227D00 		.ascii	"s\"}\000"
 4177              	.LC33:
 4178 00e0 48545450 		.ascii	"HTTP client %s login succeeded\012\000"
 4178      20636C69 
 4178      656E7420 
 4178      2573206C 
 4178      6F67696E 
 4179              	.LC34:
 4180 0100 74696D65 		.ascii	"time\000"
 4180      00
 4181 0105 000000   		.space	3
 4182              	.LC35:
 4183 0108 25592D25 		.ascii	"%Y-%m-%dT%H:%M:%S\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 78


 4183      6D2D2564 
 4183      5425483A 
 4183      254D3A25 
 4183      5300
 4184 011a 0000     		.space	2
 4185              	.LC36:
 4186 011c 4E6F7420 		.ascii	"Not authorized\000"
 4186      61757468 
 4186      6F72697A 
 4186      656400
 4187 012b 00       		.space	1
 4188              	.LC37:
 4189 012c 64697363 		.ascii	"disconnect\000"
 4189      6F6E6E65 
 4189      637400
 4190 0137 00       		.space	1
 4191              	.LC38:
 4192 0138 7B226572 		.ascii	"{\"err\":%d}\000"
 4192      72223A25 
 4192      647D00
 4193 0143 00       		.space	1
 4194              	.LC39:
 4195 0144 48545450 		.ascii	"HTTP client %s disconnected\012\000"
 4195      20636C69 
 4195      656E7420 
 4195      25732064 
 4195      6973636F 
 4196 0161 000000   		.space	3
 4197              	.LC40:
 4198 0164 73746174 		.ascii	"status\000"
 4198      757300
 4199 016b 00       		.space	1
 4200              	.LC41:
 4201 016c 74797065 		.ascii	"type\000"
 4201      00
 4202 0171 000000   		.space	3
 4203              	.LC42:
 4204 0174 67636F64 		.ascii	"gcode\000"
 4204      6500
 4205 017a 0000     		.space	2
 4206              	.LC43:
 4207 017c 75706C6F 		.ascii	"upload\000"
 4207      616400
 4208 0183 00       		.space	1
 4209              	.LC44:
 4210 0184 7B226275 		.ascii	"{\"buff\":%u}\000"
 4210      6666223A 
 4210      25757D00 
 4211              	.LC45:
 4212 0190 64656C65 		.ascii	"delete\000"
 4212      746500
 4213 0197 00       		.space	1
 4214              	.LC46:
 4215 0198 6E616D65 		.ascii	"name\000"
 4215      00
 4216 019d 000000   		.space	3
 4217              	.LC47:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 79


 4218 01a0 66696C65 		.ascii	"filelist\000"
 4218      6C697374 
 4218      00
 4219 01a9 000000   		.space	3
 4220              	.LC48:
 4221 01ac 303A00   		.ascii	"0:\000"
 4222 01af 00       		.space	1
 4223              	.LC49:
 4224 01b0 64697200 		.ascii	"dir\000"
 4225              	.LC50:
 4226 01b4 66696C65 		.ascii	"files\000"
 4226      7300
 4227 01ba 0000     		.space	2
 4228              	.LC51:
 4229 01bc 66697273 		.ascii	"first\000"
 4229      7400
 4230 01c2 0000     		.space	2
 4231              	.LC52:
 4232 01c4 666C6167 		.ascii	"flagDirs\000"
 4232      44697273 
 4232      00
 4233 01cd 000000   		.space	3
 4234              	.LC53:
 4235 01d0 66696C65 		.ascii	"fileinfo\000"
 4235      696E666F 
 4235      00
 4236 01d9 000000   		.space	3
 4237              	.LC54:
 4238 01dc 6D6F7665 		.ascii	"move\000"
 4238      00
 4239 01e1 000000   		.space	3
 4240              	.LC55:
 4241 01e4 6F6C6400 		.ascii	"old\000"
 4242              	.LC56:
 4243 01e8 6E657700 		.ascii	"new\000"
 4244              	.LC57:
 4245 01ec 64656C65 		.ascii	"deleteexisting\000"
 4245      74656578 
 4245      69737469 
 4245      6E6700
 4246 01fb 00       		.space	1
 4247              	.LC58:
 4248 01fc 79657300 		.ascii	"yes\000"
 4249              	.LC59:
 4250 0200 6D6B6469 		.ascii	"mkdir\000"
 4250      7200
 4251 0206 0000     		.space	2
 4252              	.LC60:
 4253 0208 636F6E66 		.ascii	"config\000"
 4253      696700
 4254 020f 00       		.space	1
 4255              	.LC61:
 4256 0210 556E6B6E 		.ascii	"Unknown request\000"
 4256      6F776E20 
 4256      72657175 
 4256      65737400 
 4257              		.section	.rodata._ZN13HttpResponder16SendJsonResponseEPKc.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 80


 4258              		.align	2
 4259              	.LC91:
 4260 0000 6B656570 		.ascii	"keep-alive\000"
 4260      2D616C69 
 4260      766500
 4261 000b 00       		.space	1
 4262              	.LC92:
 4263 000c 636C6F73 		.ascii	"close\000"
 4263      6500
 4264 0012 0000     		.space	2
 4265              	.LC93:
 4266 0014 7265706C 		.ascii	"reply\000"
 4266      7900
 4267 001a 0000     		.space	2
 4268              	.LC94:
 4269 001c 636F6E66 		.ascii	"configfile\000"
 4269      69676669 
 4269      6C6500
 4270 0027 00       		.space	1
 4271              	.LC95:
 4272 0028 636F6E66 		.ascii	"config.g\000"
 4272      69672E67 
 4272      00
 4273 0031 000000   		.space	3
 4274              	.LC96:
 4275 0034 303A2F73 		.ascii	"0:/sys/\000"
 4275      79732F00 
 4276              	.LC97:
 4277 003c 646F776E 		.ascii	"download\000"
 4277      6C6F6164 
 4277      00
 4278 0045 000000   		.space	3
 4279              	.LC98:
 4280 0048 436F6E6E 		.ascii	"Connection\000"
 4280      65637469 
 4280      6F6E00
 4281 0053 00       		.space	1
 4282              	.LC99:
 4283 0054 436F6E6E 		.ascii	"Connection: %s\015\012\015\012\000"
 4283      65637469 
 4283      6F6E3A20 
 4283      25730D0A 
 4283      0D0A00
 4284 0067 00       		.space	1
 4285              	.LC100:
 4286 0068 53656E64 		.ascii	"Sending JSON reply, length %u\012\000"
 4286      696E6720 
 4286      4A534F4E 
 4286      20726570 
 4286      6C792C20 
 4287              		.section	.rodata._ZN13HttpResponder17CommonDiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 4288              		.align	2
 4289              	.LC117:
 4290 0000 48545450 		.ascii	"HTTP sessions: %u of %u\012\000"
 4290      20736573 
 4290      73696F6E 
 4290      733A2025 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 81


 4290      75206F66 
 4291              		.section	.rodata._ZN13HttpResponder6AcceptEP6Socketh.str1.4,"aMS",%progbits,1
 4292              		.align	2
 4293              	.LC1:
 4294 0000 48545450 		.ascii	"HTTP connection accepted\012\000"
 4294      20636F6E 
 4294      6E656374 
 4294      696F6E20 
 4294      61636365 
 4295              		.section	.rodata._ZN13HttpResponder8DoUploadEv.str1.4,"aMS",%progbits,1
 4296              		.align	2
 4297              	.LC114:
 4298 0000 436F756C 		.ascii	"Could not write upload data!\012\000"
 4298      64206E6F 
 4298      74207772 
 4298      69746520 
 4298      75706C6F 
 4299              		.section	.rodata._ZN13HttpResponder8SendFileEPKcb.str1.4,"aMS",%progbits,1
 4300              		.align	2
 4301              	.LC62:
 4302 0000 72657072 		.ascii	"reprap.htm\000"
 4302      61702E68 
 4302      746D00
 4303 000b 00       		.space	1
 4304              	.LC63:
 4305 000c 74657874 		.ascii	"text/plain\000"
 4305      2F706C61 
 4305      696E00
 4306 0017 00       		.space	1
 4307              	.LC64:
 4308 0018 6170706C 		.ascii	"application/javascript\000"
 4308      69636174 
 4308      696F6E2F 
 4308      6A617661 
 4308      73637269 
 4309 002f 00       		.space	1
 4310              	.LC65:
 4311 0030 74657874 		.ascii	"text/css\000"
 4311      2F637373 
 4311      00
 4312 0039 000000   		.space	3
 4313              	.LC66:
 4314 003c 74657874 		.ascii	"text/html\000"
 4314      2F68746D 
 4314      6C00
 4315 0046 0000     		.space	2
 4316              	.LC67:
 4317 0048 6170706C 		.ascii	"application/octet-stream\000"
 4317      69636174 
 4317      696F6E2F 
 4317      6F637465 
 4317      742D7374 
 4318 0061 000000   		.space	3
 4319              	.LC68:
 4320 0064 68746D6C 		.ascii	"html404.htm\000"
 4320      3430342E 
 4320      68746D00 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 82


 4321              	.LC69:
 4322 0070 2E677A00 		.ascii	".gz\000"
 4323              	.LC70:
 4324 0074 303A2F77 		.ascii	"0:/www/\000"
 4324      77772F00 
 4325              	.LC71:
 4326 007c 2E68746D 		.ascii	".html\000"
 4326      6C00
 4327 0082 0000     		.space	2
 4328              	.LC72:
 4329 0084 2E68746D 		.ascii	".htm\000"
 4329      00
 4330 0089 000000   		.space	3
 4331              	.LC73:
 4332 008c 70616765 		.ascii	"page not found<br>Check that the SD card is mounted"
 4332      206E6F74 
 4332      20666F75 
 4332      6E643C62 
 4332      723E4368 
 4333 00bf 20616E64 		.ascii	" and has the correct files in its /www folder\000"
 4333      20686173 
 4333      20746865 
 4333      20636F72 
 4333      72656374 
 4334 00ed 000000   		.space	3
 4335              	.LC74:
 4336 00f0 66696C65 		.ascii	"file not found\000"
 4336      206E6F74 
 4336      20666F75 
 4336      6E6400
 4337 00ff 00       		.space	1
 4338              	.LC75:
 4339 0100 48545450 		.ascii	"HTTP/1.1 200 OK\015\012\000"
 4339      2F312E31 
 4339      20323030 
 4339      204F4B0D 
 4339      0A00
 4340 0112 0000     		.space	2
 4341              	.LC76:
 4342 0114 43616368 		.ascii	"Cache-Control: no-cache, no-store, must-revalidate\015"
 4342      652D436F 
 4342      6E74726F 
 4342      6C3A206E 
 4342      6F2D6361 
 4343 0147 0A507261 		.ascii	"\012Pragma: no-cache\015\012Expires: 0\015\012Acces"
 4343      676D613A 
 4343      206E6F2D 
 4343      63616368 
 4343      650D0A45 
 4344 016b 732D436F 		.ascii	"s-Control-Allow-Origin: *\015\012\000"
 4344      6E74726F 
 4344      6C2D416C 
 4344      6C6F772D 
 4344      4F726967 
 4345 0187 00       		.space	1
 4346              	.LC77:
 4347 0188 2E706E67 		.ascii	".png\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 83


 4347      00
 4348 018d 000000   		.space	3
 4349              	.LC78:
 4350 0190 2E6A7300 		.ascii	".js\000"
 4351              	.LC79:
 4352 0194 2E637373 		.ascii	".css\000"
 4352      00
 4353 0199 000000   		.space	3
 4354              	.LC80:
 4355 019c 2E7A6970 		.ascii	".zip\000"
 4355      00
 4356 01a1 000000   		.space	3
 4357              	.LC81:
 4358 01a4 6170706C 		.ascii	"application/zip\000"
 4358      69636174 
 4358      696F6E2F 
 4358      7A697000 
 4359              	.LC82:
 4360 01b4 436F6E74 		.ascii	"Content-Type: %s\015\012\000"
 4360      656E742D 
 4360      54797065 
 4360      3A202573 
 4360      0D0A00
 4361 01c7 00       		.space	1
 4362              	.LC83:
 4363 01c8 2E6700   		.ascii	".g\000"
 4364 01cb 00       		.space	1
 4365              	.LC84:
 4366 01cc 2E676300 		.ascii	".gc\000"
 4367              	.LC85:
 4368 01d0 2E67636F 		.ascii	".gcode\000"
 4368      646500
 4369 01d7 00       		.space	1
 4370              	.LC86:
 4371 01d8 436F6E74 		.ascii	"Content-Encoding: gzip\015\012\000"
 4371      656E742D 
 4371      456E636F 
 4371      64696E67 
 4371      3A20677A 
 4372 01f1 000000   		.space	3
 4373              	.LC87:
 4374 01f4 436F6E74 		.ascii	"Content-Length: %lu\015\012\000"
 4374      656E742D 
 4374      4C656E67 
 4374      74683A20 
 4374      256C750D 
 4375 020a 0000     		.space	2
 4376              	.LC88:
 4377 020c 696D6167 		.ascii	"image/png\000"
 4377      652F706E 
 4377      6700
 4378 0216 0000     		.space	2
 4379              	.LC89:
 4380 0218 696D6167 		.ascii	"image/x-icon\000"
 4380      652F782D 
 4380      69636F6E 
 4380      00
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccFADKNe.s 			page 84


 4381 0225 000000   		.space	3
 4382              	.LC90:
 4383 0228 2E69636F 		.ascii	".ico\000"
 4383      00
 4384              		.section	.rodata._ZNK13HttpResponder11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 4385              		.align	2
 4386              	.LC0:
 4387 0000 20485454 		.ascii	" HTTP(%d)\000"
 4387      50282564 
 4387      2900
 4388              		.section	.rodata._ZTV13HttpResponder,"a",%progbits
 4389              		.align	2
 4390              		.set	.LANCHOR0,. + 0
 4391              		.type	_ZTV13HttpResponder, %object
 4392              		.size	_ZTV13HttpResponder, 36
 4393              	_ZTV13HttpResponder:
 4394 0000 00000000 		.word	0
 4395 0004 00000000 		.word	0
 4396 0008 00000000 		.word	_ZN13HttpResponder4SpinEv
 4397 000c 00000000 		.word	_ZN13HttpResponder6AcceptEP6Socketh
 4398 0010 00000000 		.word	_ZN13HttpResponder9TerminateEh
 4399 0014 00000000 		.word	_ZNK13HttpResponder11DiagnosticsE11MessageType
 4400 0018 00000000 		.word	_ZN13HttpResponder8SendDataEv
 4401 001c 00000000 		.word	_ZN16NetworkResponder14ConnectionLostEv
 4402 0020 00000000 		.word	_ZN13HttpResponder12CancelUploadEv
 4403              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
