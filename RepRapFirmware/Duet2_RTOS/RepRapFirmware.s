ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 1


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
  13              		.file	"RepRapFirmware.cpp"
  14              		.text
  15              		.section	.text._ZN11MillisTimer5StartEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN11MillisTimer5StartEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN11MillisTimer5StartEv, %function
  24              	_ZN11MillisTimer5StartEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 FFF7FEFF 		bl	millis
  30 0008 0123     		movs	r3, #1
  31 000a 2060     		str	r0, [r4]
  32 000c 2371     		strb	r3, [r4, #4]
  33 000e 10BD     		pop	{r4, pc}
  34              		.size	_ZN11MillisTimer5StartEv, .-_ZN11MillisTimer5StartEv
  35              		.section	.text._ZNK11MillisTimer5CheckEm,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZNK11MillisTimer5CheckEm
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZNK11MillisTimer5CheckEm, %function
  44              	_ZNK11MillisTimer5CheckEm:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 38B5     		push	{r3, r4, r5, lr}
  48 0002 0446     		mov	r4, r0
  49 0004 0079     		ldrb	r0, [r0, #4]	@ zero_extendqisi2
  50 0006 00B9     		cbnz	r0, .L10
  51 0008 38BD     		pop	{r3, r4, r5, pc}
  52              	.L10:
  53 000a 0D46     		mov	r5, r1
  54 000c FFF7FEFF 		bl	millis
  55 0010 2368     		ldr	r3, [r4]
  56 0012 C01A     		subs	r0, r0, r3
  57 0014 8542     		cmp	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 2


  58 0016 8CBF     		ite	hi
  59 0018 0020     		movhi	r0, #0
  60 001a 0120     		movls	r0, #1
  61 001c 38BD     		pop	{r3, r4, r5, pc}
  62              		.size	_ZNK11MillisTimer5CheckEm, .-_ZNK11MillisTimer5CheckEm
  63 001e 00BF     		.section	.text._ZN11MillisTimer12CheckAndStopEm,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	_ZN11MillisTimer12CheckAndStopEm
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	_ZN11MillisTimer12CheckAndStopEm, %function
  72              	_ZN11MillisTimer12CheckAndStopEm:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 70B5     		push	{r4, r5, r6, lr}
  76 0002 0479     		ldrb	r4, [r0, #4]	@ zero_extendqisi2
  77 0004 14B9     		cbnz	r4, .L12
  78              	.L14:
  79 0006 0024     		movs	r4, #0
  80 0008 2046     		mov	r0, r4
  81 000a 70BD     		pop	{r4, r5, r6, pc}
  82              	.L12:
  83 000c 0546     		mov	r5, r0
  84 000e 0E46     		mov	r6, r1
  85 0010 FFF7FEFF 		bl	millis
  86 0014 2B68     		ldr	r3, [r5]
  87 0016 C01A     		subs	r0, r0, r3
  88 0018 8642     		cmp	r6, r0
  89 001a F4D8     		bhi	.L14
  90 001c 0023     		movs	r3, #0
  91 001e 2B71     		strb	r3, [r5, #4]
  92 0020 2046     		mov	r0, r4
  93 0022 70BD     		pop	{r4, r5, r6, pc}
  94              		.size	_ZN11MillisTimer12CheckAndStopEm, .-_ZN11MillisTimer12CheckAndStopEm
  95              		.section	.text.debugPrintf,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	debugPrintf
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	debugPrintf, %function
 104              	debugPrintf:
 105              		@ args = 4, pretend = 16, frame = 8
 106              		@ frame_needed = 0, uses_anonymous_args = 1
 107 0000 0FB4     		push	{r0, r1, r2, r3}
 108 0002 00B5     		push	{lr}
 109 0004 83B0     		sub	sp, sp, #12
 110 0006 04AB     		add	r3, sp, #16
 111 0008 0649     		ldr	r1, .L18
 112 000a 53F8042B 		ldr	r2, [r3], #4
 113 000e 4868     		ldr	r0, [r1, #4]
 114 0010 0193     		str	r3, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 3


 115 0012 0221     		movs	r1, #2
 116 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 117 0018 03B0     		add	sp, sp, #12
 118              		@ sp needed
 119 001a 5DF804EB 		ldr	lr, [sp], #4
 120 001e 04B0     		add	sp, sp, #16
 121 0020 7047     		bx	lr
 122              	.L19:
 123 0022 00BF     		.align	2
 124              	.L18:
 125 0024 00000000 		.word	.LANCHOR0
 126              		.size	debugPrintf, .-debugPrintf
 127              		.section	.text._Z5delaym,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	_Z5delaym
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu fpv4-sp-d16
 135              		.type	_Z5delaym, %function
 136              	_Z5delaym:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 FFF7FEBF 		b	vTaskDelay
 141              		.size	_Z5delaym, .-_Z5delaym
 142              		.section	.text._Z12StringEqualsPKcS0_,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_Z12StringEqualsPKcS0_
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_Z12StringEqualsPKcS0_, %function
 151              	_Z12StringEqualsPKcS0_:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 155 0002 0646     		mov	r6, r0
 156 0004 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 157 0006 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 158 0008 90B1     		cbz	r0, .L22
 159 000a 7CB1     		cbz	r4, .L28
 160 000c 0D46     		mov	r5, r1
 161 000e 05E0     		b	.L24
 162              	.L38:
 163 0010 16F8010F 		ldrb	r0, [r6, #1]!	@ zero_extendqisi2
 164 0014 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 165 0018 50B1     		cbz	r0, .L22
 166 001a 3CB1     		cbz	r4, .L28
 167              	.L24:
 168 001c FFF7FEFF 		bl	tolower
 169 0020 0746     		mov	r7, r0
 170 0022 2046     		mov	r0, r4
 171 0024 FFF7FEFF 		bl	tolower
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 4


 172 0028 8742     		cmp	r7, r0
 173 002a F1D0     		beq	.L38
 174              	.L28:
 175 002c 0020     		movs	r0, #0
 176 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 177              	.L22:
 178 0030 B4FA84F0 		clz	r0, r4
 179 0034 4009     		lsrs	r0, r0, #5
 180 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 181              		.size	_Z12StringEqualsPKcS0_, .-_Z12StringEqualsPKcS0_
 182              		.section	.text._Z14StringEndsWithPKcS0_,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_Z14StringEndsWithPKcS0_
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_Z14StringEndsWithPKcS0_, %function
 191              	_Z14StringEndsWithPKcS0_:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 70B5     		push	{r4, r5, r6, lr}
 195 0002 0D46     		mov	r5, r1
 196 0004 0646     		mov	r6, r0
 197 0006 FFF7FEFF 		bl	strlen
 198 000a 0446     		mov	r4, r0
 199 000c 2846     		mov	r0, r5
 200 000e FFF7FEFF 		bl	strlen
 201 0012 8442     		cmp	r4, r0
 202 0014 06DB     		blt	.L40
 203 0016 201A     		subs	r0, r4, r0
 204 0018 3044     		add	r0, r0, r6
 205 001a 2946     		mov	r1, r5
 206 001c BDE87040 		pop	{r4, r5, r6, lr}
 207 0020 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 208              	.L40:
 209 0024 0020     		movs	r0, #0
 210 0026 70BD     		pop	{r4, r5, r6, pc}
 211              		.size	_Z14StringEndsWithPKcS0_, .-_Z14StringEndsWithPKcS0_
 212              		.section	.text._Z16StringStartsWithPKcS0_,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	_Z16StringStartsWithPKcS0_
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	_Z16StringStartsWithPKcS0_, %function
 221              	_Z16StringStartsWithPKcS0_:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 70B5     		push	{r4, r5, r6, lr}
 225 0002 0D46     		mov	r5, r1
 226 0004 0446     		mov	r4, r0
 227 0006 FFF7FEFF 		bl	strlen
 228 000a 0646     		mov	r6, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 5


 229 000c 2846     		mov	r0, r5
 230 000e FFF7FEFF 		bl	strlen
 231 0012 8642     		cmp	r6, r0
 232 0014 13DB     		blt	.L49
 233 0016 80B1     		cbz	r0, .L47
 234 0018 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 235 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 236 001c 9A42     		cmp	r2, r3
 237 001e 0ED1     		bne	.L49
 238 0020 621E     		subs	r2, r4, #1
 239 0022 2346     		mov	r3, r4
 240 0024 2946     		mov	r1, r5
 241 0026 1044     		add	r0, r0, r2
 242 0028 05E0     		b	.L44
 243              	.L45:
 244 002a 13F8014F 		ldrb	r4, [r3, #1]!	@ zero_extendqisi2
 245 002e 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 246 0032 9442     		cmp	r4, r2
 247 0034 03D1     		bne	.L49
 248              	.L44:
 249 0036 8342     		cmp	r3, r0
 250 0038 F7D1     		bne	.L45
 251              	.L47:
 252 003a 0120     		movs	r0, #1
 253 003c 70BD     		pop	{r4, r5, r6, pc}
 254              	.L49:
 255 003e 0020     		movs	r0, #0
 256 0040 70BD     		pop	{r4, r5, r6, pc}
 257              		.size	_Z16StringStartsWithPKcS0_, .-_Z16StringStartsWithPKcS0_
 258 0042 00BF     		.section	.text._Z14StringContainsPKcS0_,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_Z14StringContainsPKcS0_
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_Z14StringContainsPKcS0_, %function
 267              	_Z14StringContainsPKcS0_:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 70B4     		push	{r4, r5, r6}
 272 0002 0346     		mov	r3, r0
 273 0004 0024     		movs	r4, #0
 274              	.L52:
 275 0006 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 276 000a 1E1A     		subs	r6, r3, r0
 277 000c 42B1     		cbz	r2, .L55
 278              	.L59:
 279 000e 0D5D     		ldrb	r5, [r1, r4]	@ zero_extendqisi2
 280 0010 9542     		cmp	r5, r2
 281 0012 09D0     		beq	.L58
 282 0014 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 283 0018 0024     		movs	r4, #0
 284 001a 1E1A     		subs	r6, r3, r0
 285 001c 002A     		cmp	r2, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 6


 286 001e F6D1     		bne	.L59
 287              	.L55:
 288 0020 4FF0FF30 		mov	r0, #-1
 289 0024 70BC     		pop	{r4, r5, r6}
 290 0026 7047     		bx	lr
 291              	.L58:
 292 0028 0134     		adds	r4, r4, #1
 293 002a 0A5D     		ldrb	r2, [r1, r4]	@ zero_extendqisi2
 294 002c 002A     		cmp	r2, #0
 295 002e EAD1     		bne	.L52
 296 0030 301B     		subs	r0, r6, r4
 297 0032 70BC     		pop	{r4, r5, r6}
 298 0034 7047     		bx	lr
 299              		.size	_Z14StringContainsPKcS0_, .-_Z14StringContainsPKcS0_
 300 0036 00BF     		.section	.text._Z11SafeStrncpyPcPKcj,"ax",%progbits
 301              		.align	1
 302              		.p2align 2,,3
 303              		.global	_Z11SafeStrncpyPcPKcj
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu fpv4-sp-d16
 308              		.type	_Z11SafeStrncpyPcPKcj, %function
 309              	_Z11SafeStrncpyPcPKcj:
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312 0000 10B5     		push	{r4, lr}
 313 0002 1446     		mov	r4, r2
 314 0004 FFF7FEFF 		bl	strncpy
 315 0008 0346     		mov	r3, r0
 316 000a 2344     		add	r3, r3, r4
 317 000c 0022     		movs	r2, #0
 318 000e 03F8012C 		strb	r2, [r3, #-1]
 319 0012 10BD     		pop	{r4, pc}
 320              		.size	_Z11SafeStrncpyPcPKcj, .-_Z11SafeStrncpyPcPKcj
 321              		.section	.text._Z11SafeStrncatPcPKcj,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_Z11SafeStrncatPcPKcj
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	_Z11SafeStrncatPcPKcj, %function
 330              	_Z11SafeStrncatPcPKcj:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 334 0004 551E     		subs	r5, r2, #1
 335 0006 0026     		movs	r6, #0
 336 0008 4655     		strb	r6, [r0, r5]
 337 000a 0446     		mov	r4, r0
 338 000c 1746     		mov	r7, r2
 339 000e 8846     		mov	r8, r1
 340 0010 FFF7FEFF 		bl	strlen
 341 0014 4146     		mov	r1, r8
 342 0016 3A1A     		subs	r2, r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 7


 343 0018 2044     		add	r0, r0, r4
 344 001a FFF7FEFF 		bl	strncat
 345 001e 6655     		strb	r6, [r4, r5]
 346 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 347              		.size	_Z11SafeStrncatPcPKcj, .-_Z11SafeStrncatPcPKcj
 348              		.global	__aeabi_f2d
 349              		.section	.text._Z7HideNanf,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	_Z7HideNanf
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	_Z7HideNanf, %function
 358              	_Z7HideNanf:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 B4EE400A 		vcmp.f32	s0, s0
 362 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 363 0008 10D6     		bvs	.L70
 364 000a DFED0D7A 		vldr.32	s15, .L75+8
 365 000e B0EEC07A 		vabs.f32	s14, s0
 366 0012 B4EE677A 		vcmp.f32	s14, s15
 367 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 368 001a 07DC     		bgt	.L70
 369 001c 08B5     		push	{r3, lr}
 370 001e 10EE100A 		vmov	r0, s0
 371 0022 FFF7FEFF 		bl	__aeabi_f2d
 372 0026 41EC100B 		vmov	d0, r0, r1
 373 002a 08BD     		pop	{r3, pc}
 374              	.L70:
 375 002c 9FED020B 		vldr.64	d0, .L75
 376 0030 7047     		bx	lr
 377              	.L76:
 378 0032 00BFAFF3 		.align	3
 378      0080
 379              	.L75:
 380 0038 00000040 		.word	1073741824
 381 003c F387C340 		.word	1086556147
 382 0040 FFFF7F7F 		.word	2139095039
 383              		.size	_Z7HideNanf, .-_Z7HideNanf
 384              		.section	.text._Z11ListDriversRK9StringRefm,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	_Z11ListDriversRK9StringRefm
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu fpv4-sp-d16
 392              		.type	_Z11ListDriversRK9StringRefm, %function
 393              	_Z11ListDriversRK9StringRefm:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396 0000 A9B1     		cbz	r1, .L89
 397 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 398 0004 0646     		mov	r6, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 8


 399 0006 0C46     		mov	r4, r1
 400 0008 094F     		ldr	r7, .L93
 401 000a 0025     		movs	r5, #0
 402 000c 03E0     		b	.L80
 403              	.L79:
 404 000e 6408     		lsrs	r4, r4, #1
 405 0010 05F10105 		add	r5, r5, #1
 406 0014 0AD0     		beq	.L92
 407              	.L80:
 408 0016 E307     		lsls	r3, r4, #31
 409 0018 F9D5     		bpl	.L79
 410 001a 2A46     		mov	r2, r5
 411 001c 3946     		mov	r1, r7
 412 001e 3046     		mov	r0, r6
 413 0020 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 414 0024 6408     		lsrs	r4, r4, #1
 415 0026 05F10105 		add	r5, r5, #1
 416 002a F4D1     		bne	.L80
 417              	.L92:
 418 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 419              	.L89:
 420 002e 7047     		bx	lr
 421              	.L94:
 422              		.align	2
 423              	.L93:
 424 0030 00000000 		.word	.LC0
 425              		.size	_Z11ListDriversRK9StringRefm, .-_Z11ListDriversRK9StringRefm
 426              		.section	.text._Z18ConvertOldStylePwmf,"ax",%progbits
 427              		.align	1
 428              		.p2align 2,,3
 429              		.global	_Z18ConvertOldStylePwmf
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu fpv4-sp-d16
 434              		.type	_Z18ConvertOldStylePwmf, %function
 435              	_Z18ConvertOldStylePwmf:
 436              		@ args = 0, pretend = 0, frame = 0
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438              		@ link register save eliminated.
 439 0000 F7EE007A 		vmov.f32	s15, #1.0e+0
 440 0004 B4EEE70A 		vcmpe.f32	s0, s15
 441 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 442 000c C4BF     		itt	gt
 443 000e DFED0E7A 		vldrgt.32	s15, .L107
 444 0012 80EE270A 		vdivgt.f32	s0, s0, s15
 445 0016 B4EE400A 		vcmp.f32	s0, s0
 446 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 447 001e 08D6     		bvs	.L95
 448 0020 F7EE007A 		vmov.f32	s15, #1.0e+0
 449 0024 B4EEE70A 		vcmpe.f32	s0, s15
 450 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 451 002c 02D4     		bmi	.L106
 452 002e B0EE670A 		vmov.f32	s0, s15
 453              	.L95:
 454 0032 7047     		bx	lr
 455              	.L106:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 9


 456 0034 B5EEC00A 		vcmpe.f32	s0, #0
 457 0038 DFED047A 		vldr.32	s15, .L107+4
 458 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 459 0040 D8BF     		it	le
 460 0042 B0EE670A 		vmovle.f32	s0, s15
 461 0046 7047     		bx	lr
 462              	.L108:
 463              		.align	2
 464              	.L107:
 465 0048 00007F43 		.word	1132396544
 466 004c 00000000 		.word	0
 467              		.size	_Z18ConvertOldStylePwmf, .-_Z18ConvertOldStylePwmf
 468              		.section	.text.startup._GLOBAL__sub_I_reprap,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.syntax unified
 472              		.thumb
 473              		.thumb_func
 474              		.fpu fpv4-sp-d16
 475              		.type	_GLOBAL__sub_I_reprap, %function
 476              	_GLOBAL__sub_I_reprap:
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479              		@ link register save eliminated.
 480 0000 0148     		ldr	r0, .L110
 481 0002 FFF7FEBF 		b	_ZN6RepRapC1Ev
 482              	.L111:
 483 0006 00BF     		.align	2
 484              	.L110:
 485 0008 00000000 		.word	.LANCHOR0
 486              		.size	_GLOBAL__sub_I_reprap, .-_GLOBAL__sub_I_reprap
 487              		.section	.init_array,"aw",%init_array
 488              		.align	2
 489 0000 00000000 		.word	_GLOBAL__sub_I_reprap(target1)
 490              		.global	moduleName
 491              		.global	reprap
 492              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 493              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 494              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 495              	_ZL28cpu_irq_prev_interrupt_state:
 496 0000 00       		.space	1
 497              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 498              		.align	2
 499              		.type	_ZL32cpu_irq_critical_section_counter, %object
 500              		.size	_ZL32cpu_irq_critical_section_counter, 4
 501              	_ZL32cpu_irq_critical_section_counter:
 502 0000 00000000 		.space	4
 503              		.section	.bss.reprap,"aw",%nobits
 504              		.align	2
 505              		.set	.LANCHOR0,. + 0
 506              		.type	reprap, %object
 507              		.size	reprap, 1140
 508              	reprap:
 509 0000 00000000 		.space	1140
 509      00000000 
 509      00000000 
 509      00000000 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 10


 509      00000000 
 510              		.section	.rodata._Z11ListDriversRK9StringRefm.str1.4,"aMS",%progbits,1
 511              		.align	2
 512              	.LC0:
 513 0000 20257500 		.ascii	" %u\000"
 514              		.section	.rodata.moduleName,"a",%progbits
 515              		.align	2
 516              		.type	moduleName, %object
 517              		.size	moduleName, 68
 518              	moduleName:
 519 0000 00000000 		.word	.LC1
 520 0004 0C000000 		.word	.LC2
 521 0008 14000000 		.word	.LC3
 522 000c 20000000 		.word	.LC4
 523 0010 28000000 		.word	.LC5
 524 0014 30000000 		.word	.LC6
 525 0018 38000000 		.word	.LC7
 526 001c 3C000000 		.word	.LC8
 527 0020 44000000 		.word	.LC9
 528 0024 4C000000 		.word	.LC10
 529 0028 5C000000 		.word	.LC11
 530 002c 64000000 		.word	.LC12
 531 0030 70000000 		.word	.LC13
 532 0034 80000000 		.word	.LC14
 533 0038 90000000 		.word	.LC15
 534 003c 98000000 		.word	.LC16
 535 0040 A0000000 		.word	.LC17
 536              		.section	.rodata.str1.4,"aMS",%progbits,1
 537              		.align	2
 538              	.LC1:
 539 0000 506C6174 		.ascii	"Platform\000"
 539      666F726D 
 539      00
 540 0009 000000   		.space	3
 541              	.LC2:
 542 000c 4E657477 		.ascii	"Network\000"
 542      6F726B00 
 543              	.LC3:
 544 0014 57656273 		.ascii	"Webserver\000"
 544      65727665 
 544      7200
 545 001e 0000     		.space	2
 546              	.LC4:
 547 0020 47436F64 		.ascii	"GCodes\000"
 547      657300
 548 0027 00       		.space	1
 549              	.LC5:
 550 0028 4D6F7665 		.ascii	"Move\000"
 550      00
 551 002d 000000   		.space	3
 552              	.LC6:
 553 0030 48656174 		.ascii	"Heat\000"
 553      00
 554 0035 000000   		.space	3
 555              	.LC7:
 556 0038 44444100 		.ascii	"DDA\000"
 557              	.LC8:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc52rNAp.s 			page 11


 558 003c 526F6C61 		.ascii	"Roland\000"
 558      6E6400
 559 0043 00       		.space	1
 560              	.LC9:
 561 0044 5363616E 		.ascii	"Scanner\000"
 561      6E657200 
 562              	.LC10:
 563 004c 5072696E 		.ascii	"PrintMonitor\000"
 563      744D6F6E 
 563      69746F72 
 563      00
 564 0059 000000   		.space	3
 565              	.LC11:
 566 005c 53746F72 		.ascii	"Storage\000"
 566      61676500 
 567              	.LC12:
 568 0064 506F7274 		.ascii	"PortControl\000"
 568      436F6E74 
 568      726F6C00 
 569              	.LC13:
 570 0070 44756574 		.ascii	"DuetExpansion\000"
 570      45787061 
 570      6E73696F 
 570      6E00
 571 007e 0000     		.space	2
 572              	.LC14:
 573 0080 46696C61 		.ascii	"FilamentSensors\000"
 573      6D656E74 
 573      53656E73 
 573      6F727300 
 574              	.LC15:
 575 0090 57694669 		.ascii	"WiFi\000"
 575      00
 576 0095 000000   		.space	3
 577              	.LC16:
 578 0098 44697370 		.ascii	"Display\000"
 578      6C617900 
 579              	.LC17:
 580 00a0 6E6F6E65 		.ascii	"none\000"
 580      00
 581              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
