ARM GAS  /tmp/cct3CiCB.s 			page 1


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
  13              		.file	"SX1509.cpp"
  14              		.section	.text._ZN6SX1509C2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN6SX1509C2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN6SX1509C2Ev, %function
  23              	_ZN6SX1509C2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0022     		movs	r2, #0
  28 0002 4260     		str	r2, [r0, #4]
  29 0004 C260     		str	r2, [r0, #12]
  30 0006 7047     		bx	lr
  31              		.size	_ZN6SX1509C2Ev, .-_ZN6SX1509C2Ev
  32              		.global	_ZN6SX1509C1Ev
  33              		.thumb_set _ZN6SX1509C1Ev,_ZN6SX1509C2Ev
  34              		.section	.text._ZN6SX150921calculateLEDTRegisterEi,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN6SX150921calculateLEDTRegisterEi
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN6SX150921calculateLEDTRegisterEi, %function
  43              	_ZN6SX150921calculateLEDTRegisterEi:
  44              		@ args = 0, pretend = 0, frame = 8
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 82B0     		sub	sp, sp, #8
  48 0002 4068     		ldr	r0, [r0, #4]
  49 0004 0191     		str	r1, [sp, #4]
  50 0006 0028     		cmp	r0, #0
  51 0008 56D0     		beq	.L4
  52 000a 07EE901A 		vmov	s15, r1	@ int
  53 000e 07EE100A 		vmov	s14, r0	@ int
  54 0012 F8EEE76A 		vcvt.f32.s32	s13, s15
  55 0016 B8EE477A 		vcvt.f32.u32	s14, s14
  56 001a 9FED286A 		vldr.32	s12, .L12
  57 001e DFED287A 		vldr.32	s15, .L12+4
ARM GAS  /tmp/cct3CiCB.s 			page 2


  58 0022 9FED284A 		vldr.32	s8, .L12+8
  59 0026 DFED284A 		vldr.32	s9, .L12+12
  60 002a 9FED285A 		vldr.32	s10, .L12+16
  61 002e C6EE865A 		vdiv.f32	s11, s13, s12
  62 0032 87EE876A 		vdiv.f32	s12, s15, s14
  63 0036 C5EE867A 		vdiv.f32	s15, s11, s12
  64 003a DFED205A 		vldr.32	s11, .L12
  65 003e FDEEE77A 		vcvt.s32.f32	s15, s15
  66 0042 17EE903A 		vmov	r3, s15	@ int
  67 0046 17EE902A 		vmov	r2, s15	@ int
  68 004a 012B     		cmp	r3, #1
  69 004c B8BF     		it	lt
  70 004e 0122     		movlt	r2, #1
  71 0050 0F2A     		cmp	r2, #15
  72 0052 A8BF     		it	ge
  73 0054 0F22     		movge	r2, #15
  74 0056 002B     		cmp	r3, #0
  75 0058 B8BF     		it	lt
  76 005a 0733     		addlt	r3, r3, #7
  77 005c D810     		asrs	r0, r3, #3
  78 005e 1028     		cmp	r0, #16
  79 0060 B8BF     		it	lt
  80 0062 1020     		movlt	r0, #16
  81 0064 1F28     		cmp	r0, #31
  82 0066 A8BF     		it	ge
  83 0068 1F20     		movge	r0, #31
  84 006a 07EE900A 		vmov	s15, r0	@ int
  85 006e B8EEE76A 		vcvt.f32.s32	s12, s15
  86 0072 07EE902A 		vmov	s15, r2	@ int
  87 0076 F8EEE77A 		vcvt.f32.s32	s15, s15
  88 007a 26EE046A 		vmul.f32	s12, s12, s8
  89 007e 67EEA47A 		vmul.f32	s15, s15, s9
  90 0082 26EE056A 		vmul.f32	s12, s12, s10
  91 0086 67EE857A 		vmul.f32	s15, s15, s10
  92 008a 86EE075A 		vdiv.f32	s10, s12, s14
  93 008e 87EE876A 		vdiv.f32	s12, s15, s14
  94 0092 F1EE667A 		vneg.f32	s15, s13
  95 0096 B0EE677A 		vmov.f32	s14, s15
  96 009a A5EE257A 		vfma.f32	s14, s10, s11
  97 009e E6EE257A 		vfma.f32	s15, s12, s11
  98 00a2 B0EEC77A 		vabs.f32	s14, s14
  99 00a6 F0EEE77A 		vabs.f32	s15, s15
 100 00aa F4EEC77A 		vcmpe.f32	s15, s14
 101 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 102 00b2 4CBF     		ite	mi
 103 00b4 D0B2     		uxtbmi	r0, r2
 104 00b6 C0B2     		uxtbpl	r0, r0
 105              	.L4:
 106 00b8 02B0     		add	sp, sp, #8
 107              		@ sp needed
 108 00ba 7047     		bx	lr
 109              	.L13:
 110              		.align	2
 111              	.L12:
 112 00bc 00007A44 		.word	1148846080
 113 00c0 00007F46 		.word	1182728192
 114 00c4 00000044 		.word	1140850688
ARM GAS  /tmp/cct3CiCB.s 			page 3


 115 00c8 00008042 		.word	1115684864
 116 00cc 00007F43 		.word	1132396544
 117              		.size	_ZN6SX150921calculateLEDTRegisterEi, .-_ZN6SX150921calculateLEDTRegisterEi
 118              		.section	.text._ZN6SX150922calculateSlopeRegisterEihh,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	_ZN6SX150922calculateSlopeRegisterEihh
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	_ZN6SX150922calculateSlopeRegisterEihh, %function
 127              	_ZN6SX150922calculateSlopeRegisterEihh:
 128              		@ args = 0, pretend = 0, frame = 16
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 84B0     		sub	sp, sp, #16
 132 0002 4068     		ldr	r0, [r0, #4]
 133 0004 0393     		str	r3, [sp, #12]
 134 0006 CDE90112 		strd	r1, r2, [sp, #4]
 135 000a 0028     		cmp	r0, #0
 136 000c 4FD0     		beq	.L15
 137 000e 07EE903A 		vmov	s15, r3	@ int
 138 0012 07EE102A 		vmov	s14, r2	@ int
 139 0016 F8EE677A 		vcvt.f32.u32	s15, s15
 140 001a F8EE476A 		vcvt.f32.u32	s13, s14
 141 001e B1EE007A 		vmov.f32	s14, #4.0e+0
 142 0022 E7EEC76A 		vfms.f32	s13, s15, s14
 143 0026 DFED237A 		vldr.32	s15, .L24
 144 002a DFED235A 		vldr.32	s11, .L24+4
 145 002e 66EEA76A 		vmul.f32	s13, s13, s15
 146 0032 07EE101A 		vmov	s14, r1	@ int
 147 0036 07EE900A 		vmov	s15, r0	@ int
 148 003a B8EEC76A 		vcvt.f32.s32	s12, s14
 149 003e F8EE677A 		vcvt.f32.u32	s15, s15
 150 0042 86EE257A 		vdiv.f32	s14, s12, s11
 151 0046 86EEA75A 		vdiv.f32	s10, s13, s15
 152 004a F3EE006A 		vmov.f32	s13, #1.6e+1
 153 004e C7EE057A 		vdiv.f32	s15, s14, s10
 154 0052 FDEEE77A 		vcvt.s32.f32	s15, s15
 155 0056 17EE903A 		vmov	r3, s15	@ int
 156 005a 17EE900A 		vmov	r0, s15	@ int
 157 005e 012B     		cmp	r3, #1
 158 0060 B8BF     		it	lt
 159 0062 0120     		movlt	r0, #1
 160 0064 0F28     		cmp	r0, #15
 161 0066 A8BF     		it	ge
 162 0068 0F20     		movge	r0, #15
 163 006a 07EE900A 		vmov	s15, r0	@ int
 164 006e B8EEE77A 		vcvt.f32.s32	s14, s15
 165 0072 27EE057A 		vmul.f32	s14, s14, s10
 166 0076 67EE257A 		vmul.f32	s15, s14, s11
 167 007a B0EE467A 		vmov.f32	s14, s12
 168 007e 97EEA67A 		vfnms.f32	s14, s15, s13
 169 0082 77EEC67A 		vsub.f32	s15, s15, s12
 170 0086 B0EEC77A 		vabs.f32	s14, s14
 171 008a F0EEE77A 		vabs.f32	s15, s15
ARM GAS  /tmp/cct3CiCB.s 			page 4


 172 008e F4EEC77A 		vcmpe.f32	s15, s14
 173 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 174 0096 09D4     		bmi	.L23
 175 0098 002B     		cmp	r3, #0
 176 009a B8BF     		it	lt
 177 009c 0F33     		addlt	r3, r3, #15
 178 009e 1811     		asrs	r0, r3, #4
 179 00a0 1028     		cmp	r0, #16
 180 00a2 B8BF     		it	lt
 181 00a4 1020     		movlt	r0, #16
 182 00a6 1F28     		cmp	r0, #31
 183 00a8 A8BF     		it	ge
 184 00aa 1F20     		movge	r0, #31
 185              	.L23:
 186 00ac C0B2     		uxtb	r0, r0
 187              	.L15:
 188 00ae 04B0     		add	sp, sp, #16
 189              		@ sp needed
 190 00b0 7047     		bx	lr
 191              	.L25:
 192 00b2 00BF     		.align	2
 193              	.L24:
 194 00b4 00007F43 		.word	1132396544
 195 00b8 00007A44 		.word	1148846080
 196              		.size	_ZN6SX150922calculateSlopeRegisterEihh, .-_ZN6SX150922calculateSlopeRegisterEihh
 197              		.section	.text._ZN6SX15099writeByteEhh,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZN6SX15099writeByteEhh
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZN6SX15099writeByteEhh, %function
 206              	_ZN6SX15099writeByteEhh:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 70B5     		push	{r4, r5, r6, lr}
 210 0002 0446     		mov	r4, r0
 211 0004 0E46     		mov	r6, r1
 212 0006 0A48     		ldr	r0, .L32
 213 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 214 000a 1546     		mov	r5, r2
 215 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 216 0010 3146     		mov	r1, r6
 217 0012 0748     		ldr	r0, .L32
 218 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 219 0018 2946     		mov	r1, r5
 220 001a 0548     		ldr	r0, .L32
 221 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 222 0020 0348     		ldr	r0, .L32
 223 0022 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 224 0026 10B1     		cbz	r0, .L26
 225 0028 E368     		ldr	r3, [r4, #12]
 226 002a 0133     		adds	r3, r3, #1
 227 002c E360     		str	r3, [r4, #12]
 228              	.L26:
ARM GAS  /tmp/cct3CiCB.s 			page 5


 229 002e 70BD     		pop	{r4, r5, r6, pc}
 230              	.L33:
 231              		.align	2
 232              	.L32:
 233 0030 00000000 		.word	Wire
 234              		.size	_ZN6SX15099writeByteEhh, .-_ZN6SX15099writeByteEhh
 235              		.section	.text._ZN6SX15095resetEv,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	_ZN6SX15095resetEv
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv4-sp-d16
 243              		.type	_ZN6SX15095resetEv, %function
 244              	_ZN6SX15095resetEv:
 245              		@ args = 0, pretend = 0, frame = 0
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247 0000 10B5     		push	{r4, lr}
 248 0002 1222     		movs	r2, #18
 249 0004 0446     		mov	r4, r0
 250 0006 7D21     		movs	r1, #125
 251 0008 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 252 000c 2046     		mov	r0, r4
 253 000e 3422     		movs	r2, #52
 254 0010 7D21     		movs	r1, #125
 255 0012 BDE81040 		pop	{r4, lr}
 256 0016 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 257              		.size	_ZN6SX15095resetEv, .-_ZN6SX15095resetEv
 258 001a 00BF     		.section	.text._ZN6SX150911analogWriteEhh,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_ZN6SX150911analogWriteEhh
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_ZN6SX150911analogWriteEhh, %function
 267              	_ZN6SX150911analogWriteEhh:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 024B     		ldr	r3, .L37
 272 0002 D243     		mvns	r2, r2
 273 0004 D2B2     		uxtb	r2, r2
 274 0006 595C     		ldrb	r1, [r3, r1]	@ zero_extendqisi2
 275 0008 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 276              	.L38:
 277              		.align	2
 278              	.L37:
 279 000c 00000000 		.word	.LANCHOR0
 280              		.size	_ZN6SX150911analogWriteEhh, .-_ZN6SX150911analogWriteEhh
 281              		.section	.text._ZN6SX150919analogWriteMultipleEth,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	_ZN6SX150919analogWriteMultipleEth
 285              		.syntax unified
ARM GAS  /tmp/cct3CiCB.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	_ZN6SX150919analogWriteMultipleEth, %function
 290              	_ZN6SX150919analogWriteMultipleEth:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 E9B1     		cbz	r1, .L51
 294 0002 D243     		mvns	r2, r2
 295 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 296 0008 0746     		mov	r7, r0
 297 000a 0C46     		mov	r4, r1
 298 000c DFF83080 		ldr	r8, .L55
 299 0010 D6B2     		uxtb	r6, r2
 300 0012 0025     		movs	r5, #0
 301 0014 03E0     		b	.L42
 302              	.L41:
 303 0016 6310     		asrs	r3, r4, #1
 304 0018 0135     		adds	r5, r5, #1
 305 001a 9CB2     		uxth	r4, r3
 306 001c 6BB1     		cbz	r3, .L54
 307              	.L42:
 308 001e E307     		lsls	r3, r4, #31
 309 0020 F9D5     		bpl	.L41
 310 0022 EBB2     		uxtb	r3, r5
 311 0024 3246     		mov	r2, r6
 312 0026 18F80310 		ldrb	r1, [r8, r3]	@ zero_extendqisi2
 313 002a 3846     		mov	r0, r7
 314 002c FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 315 0030 6310     		asrs	r3, r4, #1
 316 0032 0135     		adds	r5, r5, #1
 317 0034 9CB2     		uxth	r4, r3
 318 0036 002B     		cmp	r3, #0
 319 0038 F1D1     		bne	.L42
 320              	.L54:
 321 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 322              	.L51:
 323 003e 7047     		bx	lr
 324              	.L56:
 325              		.align	2
 326              	.L55:
 327 0040 00000000 		.word	.LANCHOR0
 328              		.size	_ZN6SX150919analogWriteMultipleEth, .-_ZN6SX150919analogWriteMultipleEth
 329              		.section	.text._ZN6SX15099writeWordEht,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	_ZN6SX15099writeWordEht
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv4-sp-d16
 337              		.type	_ZN6SX15099writeWordEht, %function
 338              	_ZN6SX15099writeWordEht:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 70B5     		push	{r4, r5, r6, lr}
 342 0002 0446     		mov	r4, r0
ARM GAS  /tmp/cct3CiCB.s 			page 7


 343 0004 0E46     		mov	r6, r1
 344 0006 0C48     		ldr	r0, .L63
 345 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 346 000a 1546     		mov	r5, r2
 347 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 348 0010 3146     		mov	r1, r6
 349 0012 0948     		ldr	r0, .L63
 350 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 351 0018 290A     		lsrs	r1, r5, #8
 352 001a 0748     		ldr	r0, .L63
 353 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 354 0020 E9B2     		uxtb	r1, r5
 355 0022 0548     		ldr	r0, .L63
 356 0024 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 357 0028 0348     		ldr	r0, .L63
 358 002a FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 359 002e 10B1     		cbz	r0, .L57
 360 0030 E368     		ldr	r3, [r4, #12]
 361 0032 0133     		adds	r3, r3, #1
 362 0034 E360     		str	r3, [r4, #12]
 363              	.L57:
 364 0036 70BD     		pop	{r4, r5, r6, pc}
 365              	.L64:
 366              		.align	2
 367              	.L63:
 368 0038 00000000 		.word	Wire
 369              		.size	_ZN6SX15099writeWordEht, .-_ZN6SX15099writeWordEht
 370              		.section	.text._ZN6SX150910writeDwordEhm,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	_ZN6SX150910writeDwordEhm
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu fpv4-sp-d16
 378              		.type	_ZN6SX150910writeDwordEhm, %function
 379              	_ZN6SX150910writeDwordEhm:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382 0000 70B5     		push	{r4, r5, r6, lr}
 383 0002 0546     		mov	r5, r0
 384 0004 0E46     		mov	r6, r1
 385 0006 1148     		ldr	r0, .L71
 386 0008 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 387 000a 1446     		mov	r4, r2
 388 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 389 0010 3146     		mov	r1, r6
 390 0012 0E48     		ldr	r0, .L71
 391 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 392 0018 210E     		lsrs	r1, r4, #24
 393 001a 0C48     		ldr	r0, .L71
 394 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 395 0020 C4F30741 		ubfx	r1, r4, #16, #8
 396 0024 0948     		ldr	r0, .L71
 397 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 398 002a C4F30721 		ubfx	r1, r4, #8, #8
 399 002e 0748     		ldr	r0, .L71
ARM GAS  /tmp/cct3CiCB.s 			page 8


 400 0030 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 401 0034 E1B2     		uxtb	r1, r4
 402 0036 0548     		ldr	r0, .L71
 403 0038 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 404 003c 0348     		ldr	r0, .L71
 405 003e FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 406 0042 10B1     		cbz	r0, .L65
 407 0044 EB68     		ldr	r3, [r5, #12]
 408 0046 0133     		adds	r3, r3, #1
 409 0048 EB60     		str	r3, [r5, #12]
 410              	.L65:
 411 004a 70BD     		pop	{r4, r5, r6, pc}
 412              	.L72:
 413              		.align	2
 414              	.L71:
 415 004c 00000000 		.word	Wire
 416              		.size	_ZN6SX150910writeDwordEhm, .-_ZN6SX150910writeDwordEhm
 417              		.section	.text._ZN6SX15098readByteEh,"ax",%progbits
 418              		.align	1
 419              		.p2align 2,,3
 420              		.global	_ZN6SX15098readByteEh
 421              		.syntax unified
 422              		.thumb
 423              		.thumb_func
 424              		.fpu fpv4-sp-d16
 425              		.type	_ZN6SX15098readByteEh, %function
 426              	_ZN6SX15098readByteEh:
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 430 0002 0646     		mov	r6, r0
 431 0004 0C46     		mov	r4, r1
 432 0006 1748     		ldr	r0, .L85
 433 0008 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 434 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 435 000e 2146     		mov	r1, r4
 436 0010 1448     		ldr	r0, .L85
 437 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 438 0016 1348     		ldr	r0, .L85
 439 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 440 001c 28B1     		cbz	r0, .L74
 441 001e F368     		ldr	r3, [r6, #12]
 442 0020 0027     		movs	r7, #0
 443 0022 0133     		adds	r3, r3, #1
 444 0024 F360     		str	r3, [r6, #12]
 445 0026 3846     		mov	r0, r7
 446 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 447              	.L74:
 448 002a 0746     		mov	r7, r0
 449 002c 0D48     		ldr	r0, .L85
 450 002e 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 451 0030 0122     		movs	r2, #1
 452 0032 0546     		mov	r5, r0
 453 0034 4FF47A74 		mov	r4, #1000
 454 0038 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 455 003c 01E0     		b	.L78
 456              	.L84:
ARM GAS  /tmp/cct3CiCB.s 			page 9


 457 003e 34B1     		cbz	r4, .L77
 458 0040 013C     		subs	r4, r4, #1
 459              	.L78:
 460 0042 2846     		mov	r0, r5
 461 0044 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 462 0048 0028     		cmp	r0, #0
 463 004a F8DD     		ble	.L84
 464 004c 24B9     		cbnz	r4, .L79
 465              	.L77:
 466 004e F368     		ldr	r3, [r6, #12]
 467 0050 0133     		adds	r3, r3, #1
 468 0052 F360     		str	r3, [r6, #12]
 469 0054 3846     		mov	r0, r7
 470 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 471              	.L79:
 472 0058 0248     		ldr	r0, .L85
 473 005a FFF7FEFF 		bl	_ZN7TwoWire4readEv
 474 005e C7B2     		uxtb	r7, r0
 475 0060 3846     		mov	r0, r7
 476 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 477              	.L86:
 478              		.align	2
 479              	.L85:
 480 0064 00000000 		.word	Wire
 481              		.size	_ZN6SX15098readByteEh, .-_ZN6SX15098readByteEh
 482              		.section	.text._ZN6SX150911digitalReadEh,"ax",%progbits
 483              		.align	1
 484              		.p2align 2,,3
 485              		.global	_ZN6SX150911digitalReadEh
 486              		.syntax unified
 487              		.thumb
 488              		.thumb_func
 489              		.fpu fpv4-sp-d16
 490              		.type	_ZN6SX150911digitalReadEh, %function
 491              	_ZN6SX150911digitalReadEh:
 492              		@ args = 0, pretend = 0, frame = 0
 493              		@ frame_needed = 0, uses_anonymous_args = 0
 494 0000 0729     		cmp	r1, #7
 495 0002 10B5     		push	{r4, lr}
 496 0004 0C46     		mov	r4, r1
 497 0006 06D8     		bhi	.L91
 498 0008 1121     		movs	r1, #17
 499 000a FFF7FEFF 		bl	_ZN6SX15098readByteEh
 500 000e E040     		lsrs	r0, r0, r4
 501 0010 00F00100 		and	r0, r0, #1
 502 0014 10BD     		pop	{r4, pc}
 503              	.L91:
 504 0016 1021     		movs	r1, #16
 505 0018 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 506 001c 083C     		subs	r4, r4, #8
 507 001e E040     		lsrs	r0, r0, r4
 508 0020 00F00100 		and	r0, r0, #1
 509 0024 10BD     		pop	{r4, pc}
 510              		.size	_ZN6SX150911digitalReadEh, .-_ZN6SX150911digitalReadEh
 511 0026 00BF     		.section	.text._ZN6SX15095clockEh,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/cct3CiCB.s 			page 10


 514              		.global	_ZN6SX15095clockEh
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu fpv4-sp-d16
 519              		.type	_ZN6SX15095clockEh, %function
 520              	_ZN6SX15095clockEh:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523 0000 38B5     		push	{r3, r4, r5, lr}
 524 0002 5122     		movs	r2, #81
 525 0004 0C46     		mov	r4, r1
 526 0006 1E21     		movs	r1, #30
 527 0008 0546     		mov	r5, r0
 528 000a FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 529 000e 012C     		cmp	r4, #1
 530 0010 38BF     		it	cc
 531 0012 0124     		movcc	r4, #1
 532 0014 072C     		cmp	r4, #7
 533 0016 28BF     		it	cs
 534 0018 0724     		movcs	r4, #7
 535 001a 621E     		subs	r2, r4, #1
 536 001c 0123     		movs	r3, #1
 537 001e 9340     		lsls	r3, r3, r2
 538 0020 07EE903A 		vmov	s15, r3	@ int
 539 0024 DFED0C6A 		vldr.32	s13, .L94
 540 0028 F8EEE77A 		vcvt.f32.s32	s15, s15
 541 002c 2846     		mov	r0, r5
 542 002e 86EEA77A 		vdiv.f32	s14, s13, s15
 543 0032 1F21     		movs	r1, #31
 544 0034 BCEEC77A 		vcvt.u32.f32	s14, s14
 545 0038 85ED017A 		vstr.32	s14, [r5, #4]	@ int
 546 003c FFF7FEFF 		bl	_ZN6SX15098readByteEh
 547 0040 20F07300 		bic	r0, r0, #115
 548 0044 40EA0412 		orr	r2, r0, r4, lsl #4
 549 0048 02F0FC02 		and	r2, r2, #252
 550 004c 2846     		mov	r0, r5
 551 004e 1F21     		movs	r1, #31
 552 0050 BDE83840 		pop	{r3, r4, r5, lr}
 553 0054 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 554              	.L95:
 555              		.align	2
 556              	.L94:
 557 0058 0024F449 		.word	1240736768
 558              		.size	_ZN6SX15095clockEh, .-_ZN6SX15095clockEh
 559              		.section	.text._ZN6SX15098readWordEh,"ax",%progbits
 560              		.align	1
 561              		.p2align 2,,3
 562              		.global	_ZN6SX15098readWordEh
 563              		.syntax unified
 564              		.thumb
 565              		.thumb_func
 566              		.fpu fpv4-sp-d16
 567              		.type	_ZN6SX15098readWordEh, %function
 568              	_ZN6SX15098readWordEh:
 569              		@ args = 0, pretend = 0, frame = 0
 570              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cct3CiCB.s 			page 11


 571 0000 70B5     		push	{r4, r5, r6, lr}
 572 0002 0646     		mov	r6, r0
 573 0004 0C46     		mov	r4, r1
 574 0006 1848     		ldr	r0, .L108
 575 0008 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 576 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 577 000e 2146     		mov	r1, r4
 578 0010 1548     		ldr	r0, .L108
 579 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 580 0016 1448     		ldr	r0, .L108
 581 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 582 001c 20B1     		cbz	r0, .L97
 583              	.L100:
 584 001e F368     		ldr	r3, [r6, #12]
 585 0020 0133     		adds	r3, r3, #1
 586 0022 F360     		str	r3, [r6, #12]
 587 0024 0020     		movs	r0, #0
 588 0026 70BD     		pop	{r4, r5, r6, pc}
 589              	.L97:
 590 0028 0F48     		ldr	r0, .L108
 591 002a 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 592 002c 0222     		movs	r2, #2
 593 002e 0546     		mov	r5, r0
 594 0030 4FF4FA64 		mov	r4, #2000
 595 0034 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 596 0038 02E0     		b	.L101
 597              	.L107:
 598 003a 002C     		cmp	r4, #0
 599 003c EFD0     		beq	.L100
 600 003e 013C     		subs	r4, r4, #1
 601              	.L101:
 602 0040 2846     		mov	r0, r5
 603 0042 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 604 0046 0128     		cmp	r0, #1
 605 0048 F7DD     		ble	.L107
 606 004a 002C     		cmp	r4, #0
 607 004c E7D0     		beq	.L100
 608 004e 0648     		ldr	r0, .L108
 609 0050 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 610 0054 0446     		mov	r4, r0
 611 0056 0448     		ldr	r0, .L108
 612 0058 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 613 005c C0B2     		uxtb	r0, r0
 614 005e 40EA0420 		orr	r0, r0, r4, lsl #8
 615 0062 80B2     		uxth	r0, r0
 616 0064 70BD     		pop	{r4, r5, r6, pc}
 617              	.L109:
 618 0066 00BF     		.align	2
 619              	.L108:
 620 0068 00000000 		.word	Wire
 621              		.size	_ZN6SX15098readWordEh, .-_ZN6SX15098readWordEh
 622              		.section	.text._ZN6SX15095beginEh,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	_ZN6SX15095beginEh
 626              		.syntax unified
 627              		.thumb
ARM GAS  /tmp/cct3CiCB.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	_ZN6SX15095beginEh, %function
 631              	_ZN6SX15095beginEh:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634 0000 38B5     		push	{r3, r4, r5, lr}
 635 0002 0446     		mov	r4, r0
 636 0004 0170     		strb	r1, [r0]
 637 0006 FFF7FEFF 		bl	_ZN6SX15095resetEv
 638 000a 0023     		movs	r3, #0
 639 000c 2381     		strh	r3, [r4, #8]	@ movhi
 640 000e 2046     		mov	r0, r4
 641 0010 1321     		movs	r1, #19
 642 0012 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 643 0016 B0F57F4F 		cmp	r0, #65280
 644 001a 0CBF     		ite	eq
 645 001c 0125     		moveq	r5, #1
 646 001e 0025     		movne	r5, #0
 647 0020 01D0     		beq	.L113
 648 0022 2846     		mov	r0, r5
 649 0024 38BD     		pop	{r3, r4, r5, pc}
 650              	.L113:
 651 0026 2046     		mov	r0, r4
 652 0028 0521     		movs	r1, #5
 653 002a FFF7FEFF 		bl	_ZN6SX15095clockEh
 654 002e 2046     		mov	r0, r4
 655 0030 4FF6FF72 		movw	r2, #65535
 656 0034 6921     		movs	r1, #105
 657 0036 FFF7FEFF 		bl	_ZN6SX15099writeWordEht
 658 003a 2846     		mov	r0, r5
 659 003c 38BD     		pop	{r3, r4, r5, pc}
 660              		.size	_ZN6SX15095beginEh, .-_ZN6SX15095beginEh
 661 003e 00BF     		.section	.text._ZN6SX150913setBitsInWordEht.part.2,"ax",%progbits
 662              		.align	1
 663              		.p2align 2,,3
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_ZN6SX150913setBitsInWordEht.part.2, %function
 669              	_ZN6SX150913setBitsInWordEht.part.2:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 70B5     		push	{r4, r5, r6, lr}
 673 0002 1446     		mov	r4, r2
 674 0004 0546     		mov	r5, r0
 675 0006 0E46     		mov	r6, r1
 676 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 677 000c 40EA0402 		orr	r2, r0, r4
 678 0010 3146     		mov	r1, r6
 679 0012 2846     		mov	r0, r5
 680 0014 92B2     		uxth	r2, r2
 681 0016 BDE87040 		pop	{r4, r5, r6, lr}
 682 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 683              		.size	_ZN6SX150913setBitsInWordEht.part.2, .-_ZN6SX150913setBitsInWordEht.part.2
 684 001e 00BF     		.section	.text._ZN6SX150913setBitsInWordEht,"ax",%progbits
ARM GAS  /tmp/cct3CiCB.s 			page 13


 685              		.align	1
 686              		.p2align 2,,3
 687              		.global	_ZN6SX150913setBitsInWordEht
 688              		.syntax unified
 689              		.thumb
 690              		.thumb_func
 691              		.fpu fpv4-sp-d16
 692              		.type	_ZN6SX150913setBitsInWordEht, %function
 693              	_ZN6SX150913setBitsInWordEht:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696              		@ link register save eliminated.
 697 0000 02B9     		cbnz	r2, .L118
 698 0002 7047     		bx	lr
 699              	.L118:
 700 0004 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht.part.2
 701              		.size	_ZN6SX150913setBitsInWordEht, .-_ZN6SX150913setBitsInWordEht
 702              		.section	.text._ZN6SX150915clearBitsInWordEht.part.3,"ax",%progbits
 703              		.align	1
 704              		.p2align 2,,3
 705              		.syntax unified
 706              		.thumb
 707              		.thumb_func
 708              		.fpu fpv4-sp-d16
 709              		.type	_ZN6SX150915clearBitsInWordEht.part.3, %function
 710              	_ZN6SX150915clearBitsInWordEht.part.3:
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713 0000 70B5     		push	{r4, r5, r6, lr}
 714 0002 1446     		mov	r4, r2
 715 0004 0546     		mov	r5, r0
 716 0006 0E46     		mov	r6, r1
 717 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 718 000c 20EA0402 		bic	r2, r0, r4
 719 0010 3146     		mov	r1, r6
 720 0012 2846     		mov	r0, r5
 721 0014 92B2     		uxth	r2, r2
 722 0016 BDE87040 		pop	{r4, r5, r6, lr}
 723 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 724              		.size	_ZN6SX150915clearBitsInWordEht.part.3, .-_ZN6SX150915clearBitsInWordEht.part.3
 725 001e 00BF     		.section	.text._ZN6SX150915clearBitsInWordEht,"ax",%progbits
 726              		.align	1
 727              		.p2align 2,,3
 728              		.global	_ZN6SX150915clearBitsInWordEht
 729              		.syntax unified
 730              		.thumb
 731              		.thumb_func
 732              		.fpu fpv4-sp-d16
 733              		.type	_ZN6SX150915clearBitsInWordEht, %function
 734              	_ZN6SX150915clearBitsInWordEht:
 735              		@ args = 0, pretend = 0, frame = 0
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737              		@ link register save eliminated.
 738 0000 02B9     		cbnz	r2, .L123
 739 0002 7047     		bx	lr
 740              	.L123:
 741 0004 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht.part.3
ARM GAS  /tmp/cct3CiCB.s 			page 14


 742              		.size	_ZN6SX150915clearBitsInWordEht, .-_ZN6SX150915clearBitsInWordEht
 743              		.section	.text._ZN6SX150912digitalWriteEhb,"ax",%progbits
 744              		.align	1
 745              		.p2align 2,,3
 746              		.global	_ZN6SX150912digitalWriteEhb
 747              		.syntax unified
 748              		.thumb
 749              		.thumb_func
 750              		.fpu fpv4-sp-d16
 751              		.type	_ZN6SX150912digitalWriteEhb, %function
 752              	_ZN6SX150912digitalWriteEhb:
 753              		@ args = 0, pretend = 0, frame = 0
 754              		@ frame_needed = 0, uses_anonymous_args = 0
 755              		@ link register save eliminated.
 756 0000 0389     		ldrh	r3, [r0, #8]
 757 0002 CB40     		lsrs	r3, r3, r1
 758 0004 DB07     		lsls	r3, r3, #31
 759 0006 05D5     		bpl	.L125
 760 0008 0B4B     		ldr	r3, .L135
 761 000a 013A     		subs	r2, r2, #1
 762 000c D2B2     		uxtb	r2, r2
 763 000e 595C     		ldrb	r1, [r3, r1]	@ zero_extendqisi2
 764 0010 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 765              	.L125:
 766 0014 0123     		movs	r3, #1
 767 0016 03FA01F1 		lsl	r1, r3, r1
 768 001a 89B2     		uxth	r1, r1
 769 001c 0AB1     		cbz	r2, .L126
 770 001e 31B9     		cbnz	r1, .L134
 771              	.L124:
 772 0020 7047     		bx	lr
 773              	.L126:
 774 0022 0029     		cmp	r1, #0
 775 0024 FCD0     		beq	.L124
 776 0026 0A46     		mov	r2, r1
 777 0028 1021     		movs	r1, #16
 778 002a FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht.part.3
 779              	.L134:
 780 002e 0A46     		mov	r2, r1
 781 0030 1021     		movs	r1, #16
 782 0032 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht.part.2
 783              	.L136:
 784 0036 00BF     		.align	2
 785              	.L135:
 786 0038 00000000 		.word	.LANCHOR0
 787              		.size	_ZN6SX150912digitalWriteEhb, .-_ZN6SX150912digitalWriteEhb
 788              		.section	.text._ZN6SX150921ledDriverInitMultipleEtbb,"ax",%progbits
 789              		.align	1
 790              		.p2align 2,,3
 791              		.global	_ZN6SX150921ledDriverInitMultipleEtbb
 792              		.syntax unified
 793              		.thumb
 794              		.thumb_func
 795              		.fpu fpv4-sp-d16
 796              		.type	_ZN6SX150921ledDriverInitMultipleEtbb, %function
 797              	_ZN6SX150921ledDriverInitMultipleEtbb:
 798              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cct3CiCB.s 			page 15


 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800 0000 70B5     		push	{r4, r5, r6, lr}
 801 0002 0C46     		mov	r4, r1
 802 0004 1646     		mov	r6, r2
 803 0006 0546     		mov	r5, r0
 804 0008 E3B1     		cbz	r3, .L138
 805 000a 0029     		cmp	r1, #0
 806 000c 3DD1     		bne	.L155
 807              	.L139:
 808 000e 1F21     		movs	r1, #31
 809 0010 2846     		mov	r0, r5
 810 0012 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 811 0016 AEB3     		cbz	r6, .L141
 812              	.L156:
 813 0018 60F07702 		orn	r2, r0, #119
 814 001c D2B2     		uxtb	r2, r2
 815              	.L142:
 816 001e 1F21     		movs	r1, #31
 817 0020 2846     		mov	r0, r5
 818 0022 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 819 0026 4CB1     		cbz	r4, .L143
 820 0028 2246     		mov	r2, r4
 821 002a 2021     		movs	r1, #32
 822 002c 2846     		mov	r0, r5
 823 002e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 824 0032 2246     		mov	r2, r4
 825 0034 1021     		movs	r1, #16
 826 0036 2846     		mov	r0, r5
 827 0038 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 828              	.L143:
 829 003c 2B89     		ldrh	r3, [r5, #8]
 830 003e 1C43     		orrs	r4, r4, r3
 831 0040 2C81     		strh	r4, [r5, #8]	@ movhi
 832 0042 70BD     		pop	{r4, r5, r6, pc}
 833              	.L138:
 834 0044 0029     		cmp	r1, #0
 835 0046 E2D0     		beq	.L139
 836 0048 0A46     		mov	r2, r1
 837 004a 0A21     		movs	r1, #10
 838 004c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 839              	.L140:
 840 0050 2246     		mov	r2, r4
 841 0052 0021     		movs	r1, #0
 842 0054 2846     		mov	r0, r5
 843 0056 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 844 005a 2246     		mov	r2, r4
 845 005c 0621     		movs	r1, #6
 846 005e 2846     		mov	r0, r5
 847 0060 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 848 0064 2246     		mov	r2, r4
 849 0066 0821     		movs	r1, #8
 850 0068 2846     		mov	r0, r5
 851 006a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 852 006e 0E21     		movs	r1, #14
 853 0070 2846     		mov	r0, r5
 854 0072 2246     		mov	r2, r4
 855 0074 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
ARM GAS  /tmp/cct3CiCB.s 			page 16


 856 0078 1F21     		movs	r1, #31
 857 007a 2846     		mov	r0, r5
 858 007c FFF7FEFF 		bl	_ZN6SX15098readByteEh
 859 0080 002E     		cmp	r6, #0
 860 0082 C9D1     		bne	.L156
 861              	.L141:
 862 0084 00F07702 		and	r2, r0, #119
 863 0088 C9E7     		b	.L142
 864              	.L155:
 865 008a 0A46     		mov	r2, r1
 866 008c 0A21     		movs	r1, #10
 867 008e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 868 0092 DDE7     		b	.L140
 869              		.size	_ZN6SX150921ledDriverInitMultipleEtbb, .-_ZN6SX150921ledDriverInitMultipleEtbb
 870              		.section	.text._ZN6SX150915pinModeMultipleEt7PinMode,"ax",%progbits
 871              		.align	1
 872              		.p2align 2,,3
 873              		.global	_ZN6SX150915pinModeMultipleEt7PinMode
 874              		.syntax unified
 875              		.thumb
 876              		.thumb_func
 877              		.fpu fpv4-sp-d16
 878              		.type	_ZN6SX150915pinModeMultipleEt7PinMode, %function
 879              	_ZN6SX150915pinModeMultipleEt7PinMode:
 880              		@ args = 0, pretend = 0, frame = 0
 881              		@ frame_needed = 0, uses_anonymous_args = 0
 882 0000 70B5     		push	{r4, r5, r6, lr}
 883 0002 0546     		mov	r5, r0
 884 0004 0C46     		mov	r4, r1
 885 0006 0B2A     		cmp	r2, #11
 886 0008 0AD8     		bhi	.L157
 887 000a DFE802F0 		tbb	[pc, r2]
 888              	.L160:
 889 000e 10       		.byte	(.L159-.L160)/2
 890 000f 27       		.byte	(.L161-.L160)/2
 891 0010 06       		.byte	(.L162-.L160)/2
 892 0011 3E       		.byte	(.L163-.L160)/2
 893 0012 49       		.byte	(.L164-.L160)/2
 894 0013 09       		.byte	(.L157-.L160)/2
 895 0014 09       		.byte	(.L157-.L160)/2
 896 0015 53       		.byte	(.L165-.L160)/2
 897 0016 53       		.byte	(.L165-.L160)/2
 898 0017 59       		.byte	(.L166-.L160)/2
 899 0018 77       		.byte	(.L167-.L160)/2
 900 0019 0A       		.byte	(.L168-.L160)/2
 901              		.p2align 1
 902              	.L162:
 903 001a 0029     		cmp	r1, #0
 904 001c 40F08C80 		bne	.L203
 905              	.L157:
 906 0020 70BD     		pop	{r4, r5, r6, pc}
 907              	.L168:
 908 0022 0123     		movs	r3, #1
 909 0024 0022     		movs	r2, #0
 910 0026 BDE87040 		pop	{r4, r5, r6, lr}
 911 002a FFF7FEBF 		b	_ZN6SX150921ledDriverInitMultipleEtbb
 912              	.L159:
ARM GAS  /tmp/cct3CiCB.s 			page 17


 913 002e 0029     		cmp	r1, #0
 914 0030 F6D0     		beq	.L157
 915 0032 0A46     		mov	r2, r1
 916 0034 0021     		movs	r1, #0
 917 0036 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 918 003a 2246     		mov	r2, r4
 919 003c 2846     		mov	r0, r5
 920 003e 0E21     		movs	r1, #14
 921 0040 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 922 0044 2246     		mov	r2, r4
 923 0046 2846     		mov	r0, r5
 924 0048 0621     		movs	r1, #6
 925 004a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 926 004e 2246     		mov	r2, r4
 927 0050 2846     		mov	r0, r5
 928 0052 0821     		movs	r1, #8
 929 0054 BDE87040 		pop	{r4, r5, r6, lr}
 930 0058 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht.part.3
 931              	.L161:
 932 005c 0029     		cmp	r1, #0
 933 005e DFD0     		beq	.L157
 934 0060 0A46     		mov	r2, r1
 935 0062 0021     		movs	r1, #0
 936 0064 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 937 0068 2246     		mov	r2, r4
 938 006a 2846     		mov	r0, r5
 939 006c 0E21     		movs	r1, #14
 940 006e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 941 0072 2246     		mov	r2, r4
 942 0074 2846     		mov	r0, r5
 943 0076 0821     		movs	r1, #8
 944 0078 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 945 007c 2246     		mov	r2, r4
 946 007e 2846     		mov	r0, r5
 947 0080 0621     		movs	r1, #6
 948 0082 BDE87040 		pop	{r4, r5, r6, lr}
 949 0086 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht.part.2
 950              	.L163:
 951 008a 0029     		cmp	r1, #0
 952 008c 40F08580 		bne	.L204
 953              	.L173:
 954 0090 2989     		ldrh	r1, [r5, #8]
 955 0092 2846     		mov	r0, r5
 956 0094 2140     		ands	r1, r1, r4
 957 0096 0022     		movs	r2, #0
 958 0098 BDE87040 		pop	{r4, r5, r6, lr}
 959 009c FFF7FEBF 		b	_ZN6SX150919analogWriteMultipleEth
 960              	.L164:
 961 00a0 0029     		cmp	r1, #0
 962 00a2 5ED1     		bne	.L205
 963              	.L175:
 964 00a4 2989     		ldrh	r1, [r5, #8]
 965 00a6 2846     		mov	r0, r5
 966 00a8 2140     		ands	r1, r1, r4
 967 00aa FF22     		movs	r2, #255
 968 00ac BDE87040 		pop	{r4, r5, r6, lr}
 969 00b0 FFF7FEBF 		b	_ZN6SX150919analogWriteMultipleEth
ARM GAS  /tmp/cct3CiCB.s 			page 18


 970              	.L165:
 971 00b4 0023     		movs	r3, #0
 972 00b6 1A46     		mov	r2, r3
 973 00b8 BDE87040 		pop	{r4, r5, r6, lr}
 974 00bc FFF7FEBF 		b	_ZN6SX150921ledDriverInitMultipleEtbb
 975              	.L166:
 976 00c0 0029     		cmp	r1, #0
 977 00c2 E5D0     		beq	.L173
 978 00c4 0A46     		mov	r2, r1
 979 00c6 0621     		movs	r1, #6
 980 00c8 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 981 00cc 2246     		mov	r2, r4
 982 00ce 0821     		movs	r1, #8
 983 00d0 2846     		mov	r0, r5
 984 00d2 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 985 00d6 2A89     		ldrh	r2, [r5, #8]
 986 00d8 34EA0202 		bics	r2, r4, r2
 987 00dc 03D0     		beq	.L179
 988 00de 1021     		movs	r1, #16
 989 00e0 2846     		mov	r0, r5
 990 00e2 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 991              	.L179:
 992 00e6 2246     		mov	r2, r4
 993 00e8 2846     		mov	r0, r5
 994 00ea 0A21     		movs	r1, #10
 995 00ec FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 996 00f0 2246     		mov	r2, r4
 997 00f2 0E21     		movs	r1, #14
 998 00f4 2846     		mov	r0, r5
 999 00f6 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1000 00fa C9E7     		b	.L173
 1001              	.L167:
 1002 00fc 0029     		cmp	r1, #0
 1003 00fe D1D0     		beq	.L175
 1004 0100 0A46     		mov	r2, r1
 1005 0102 0621     		movs	r1, #6
 1006 0104 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1007 0108 2246     		mov	r2, r4
 1008 010a 0821     		movs	r1, #8
 1009 010c 2846     		mov	r0, r5
 1010 010e FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1011 0112 2A89     		ldrh	r2, [r5, #8]
 1012 0114 34EA0202 		bics	r2, r4, r2
 1013 0118 03D0     		beq	.L180
 1014 011a 1021     		movs	r1, #16
 1015 011c 2846     		mov	r0, r5
 1016 011e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 1017              	.L180:
 1018 0122 2246     		mov	r2, r4
 1019 0124 2846     		mov	r0, r5
 1020 0126 0A21     		movs	r1, #10
 1021 0128 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 1022 012c 2246     		mov	r2, r4
 1023 012e 0E21     		movs	r1, #14
 1024 0130 2846     		mov	r0, r5
 1025 0132 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1026 0136 B5E7     		b	.L175
ARM GAS  /tmp/cct3CiCB.s 			page 19


 1027              	.L203:
 1028 0138 0A46     		mov	r2, r1
 1029 013a 0021     		movs	r1, #0
 1030 013c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1031 0140 2246     		mov	r2, r4
 1032 0142 2846     		mov	r0, r5
 1033 0144 0E21     		movs	r1, #14
 1034 0146 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 1035 014a 2246     		mov	r2, r4
 1036 014c 2846     		mov	r0, r5
 1037 014e 0621     		movs	r1, #6
 1038 0150 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1039 0154 2246     		mov	r2, r4
 1040 0156 2846     		mov	r0, r5
 1041 0158 0821     		movs	r1, #8
 1042 015a BDE87040 		pop	{r4, r5, r6, lr}
 1043 015e FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht.part.2
 1044              	.L205:
 1045 0162 0A46     		mov	r2, r1
 1046 0164 0621     		movs	r1, #6
 1047 0166 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1048 016a 2246     		mov	r2, r4
 1049 016c 0821     		movs	r1, #8
 1050 016e 2846     		mov	r0, r5
 1051 0170 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1052 0174 2A89     		ldrh	r2, [r5, #8]
 1053 0176 34EA0202 		bics	r2, r4, r2
 1054 017a 03D0     		beq	.L178
 1055 017c 1021     		movs	r1, #16
 1056 017e 2846     		mov	r0, r5
 1057 0180 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.2
 1058              	.L178:
 1059 0184 2246     		mov	r2, r4
 1060 0186 2846     		mov	r0, r5
 1061 0188 0A21     		movs	r1, #10
 1062 018a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1063 018e 2246     		mov	r2, r4
 1064 0190 0E21     		movs	r1, #14
 1065 0192 2846     		mov	r0, r5
 1066 0194 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1067 0198 84E7     		b	.L175
 1068              	.L204:
 1069 019a 0A46     		mov	r2, r1
 1070 019c 0621     		movs	r1, #6
 1071 019e FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1072 01a2 2246     		mov	r2, r4
 1073 01a4 0821     		movs	r1, #8
 1074 01a6 2846     		mov	r0, r5
 1075 01a8 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1076 01ac 2A89     		ldrh	r2, [r5, #8]
 1077 01ae 34EA0202 		bics	r2, r4, r2
 1078 01b2 0AD1     		bne	.L170
 1079              	.L177:
 1080 01b4 2246     		mov	r2, r4
 1081 01b6 2846     		mov	r0, r5
 1082 01b8 0A21     		movs	r1, #10
 1083 01ba FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
ARM GAS  /tmp/cct3CiCB.s 			page 20


 1084 01be 2246     		mov	r2, r4
 1085 01c0 0E21     		movs	r1, #14
 1086 01c2 2846     		mov	r0, r5
 1087 01c4 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1088 01c8 62E7     		b	.L173
 1089              	.L170:
 1090 01ca 1021     		movs	r1, #16
 1091 01cc 2846     		mov	r0, r5
 1092 01ce FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.3
 1093 01d2 EFE7     		b	.L177
 1094              		.size	_ZN6SX150915pinModeMultipleEt7PinMode, .-_ZN6SX150915pinModeMultipleEt7PinMode
 1095              		.section	.text._ZN6SX15097pinModeEh7PinMode,"ax",%progbits
 1096              		.align	1
 1097              		.p2align 2,,3
 1098              		.global	_ZN6SX15097pinModeEh7PinMode
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv4-sp-d16
 1103              		.type	_ZN6SX15097pinModeEh7PinMode, %function
 1104              	_ZN6SX15097pinModeEh7PinMode:
 1105              		@ args = 0, pretend = 0, frame = 0
 1106              		@ frame_needed = 0, uses_anonymous_args = 0
 1107              		@ link register save eliminated.
 1108 0000 0123     		movs	r3, #1
 1109 0002 03FA01F1 		lsl	r1, r3, r1
 1110 0006 89B2     		uxth	r1, r1
 1111 0008 FFF7FEBF 		b	_ZN6SX150915pinModeMultipleEt7PinMode
 1112              		.size	_ZN6SX15097pinModeEh7PinMode, .-_ZN6SX15097pinModeEh7PinMode
 1113              		.section	.text._ZN6SX150914digitalReadAllEv,"ax",%progbits
 1114              		.align	1
 1115              		.p2align 2,,3
 1116              		.global	_ZN6SX150914digitalReadAllEv
 1117              		.syntax unified
 1118              		.thumb
 1119              		.thumb_func
 1120              		.fpu fpv4-sp-d16
 1121              		.type	_ZN6SX150914digitalReadAllEv, %function
 1122              	_ZN6SX150914digitalReadAllEv:
 1123              		@ args = 0, pretend = 0, frame = 0
 1124              		@ frame_needed = 0, uses_anonymous_args = 0
 1125              		@ link register save eliminated.
 1126 0000 1021     		movs	r1, #16
 1127 0002 FFF7FEBF 		b	_ZN6SX15098readWordEh
 1128              		.size	_ZN6SX150914digitalReadAllEv, .-_ZN6SX150914digitalReadAllEv
 1129 0006 00BF     		.section	.text._ZN6SX150915interruptSourceEb,"ax",%progbits
 1130              		.align	1
 1131              		.p2align 2,,3
 1132              		.global	_ZN6SX150915interruptSourceEb
 1133              		.syntax unified
 1134              		.thumb
 1135              		.thumb_func
 1136              		.fpu fpv4-sp-d16
 1137              		.type	_ZN6SX150915interruptSourceEb, %function
 1138              	_ZN6SX150915interruptSourceEb:
 1139              		@ args = 0, pretend = 0, frame = 0
 1140              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cct3CiCB.s 			page 21


 1141 0000 70B5     		push	{r4, r5, r6, lr}
 1142 0002 0D46     		mov	r5, r1
 1143 0004 1821     		movs	r1, #24
 1144 0006 0646     		mov	r6, r0
 1145 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1146 000c 0446     		mov	r4, r0
 1147 000e 2DB1     		cbz	r5, .L209
 1148 0010 3046     		mov	r0, r6
 1149 0012 4FF6FF72 		movw	r2, #65535
 1150 0016 1821     		movs	r1, #24
 1151 0018 FFF7FEFF 		bl	_ZN6SX15099writeWordEht
 1152              	.L209:
 1153 001c 2046     		mov	r0, r4
 1154 001e 70BD     		pop	{r4, r5, r6, pc}
 1155              		.size	_ZN6SX150915interruptSourceEb, .-_ZN6SX150915interruptSourceEb
 1156              		.section	.text._ZN6SX150914checkInterruptEh,"ax",%progbits
 1157              		.align	1
 1158              		.p2align 2,,3
 1159              		.global	_ZN6SX150914checkInterruptEh
 1160              		.syntax unified
 1161              		.thumb
 1162              		.thumb_func
 1163              		.fpu fpv4-sp-d16
 1164              		.type	_ZN6SX150914checkInterruptEh, %function
 1165              	_ZN6SX150914checkInterruptEh:
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168 0000 10B5     		push	{r4, lr}
 1169 0002 0C46     		mov	r4, r1
 1170 0004 1821     		movs	r1, #24
 1171 0006 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1172 000a E040     		lsrs	r0, r0, r4
 1173 000c 00F00100 		and	r0, r0, #1
 1174 0010 10BD     		pop	{r4, pc}
 1175              		.size	_ZN6SX150914checkInterruptEh, .-_ZN6SX150914checkInterruptEh
 1176 0012 00BF     		.section	.text._ZN6SX15099readDwordEh,"ax",%progbits
 1177              		.align	1
 1178              		.p2align 2,,3
 1179              		.global	_ZN6SX15099readDwordEh
 1180              		.syntax unified
 1181              		.thumb
 1182              		.thumb_func
 1183              		.fpu fpv4-sp-d16
 1184              		.type	_ZN6SX15099readDwordEh, %function
 1185              	_ZN6SX15099readDwordEh:
 1186              		@ args = 0, pretend = 0, frame = 0
 1187              		@ frame_needed = 0, uses_anonymous_args = 0
 1188 0000 70B5     		push	{r4, r5, r6, lr}
 1189 0002 0646     		mov	r6, r0
 1190 0004 0C46     		mov	r4, r1
 1191 0006 1D48     		ldr	r0, .L228
 1192 0008 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 1193 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 1194 000e 2146     		mov	r1, r4
 1195 0010 1A48     		ldr	r0, .L228
 1196 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1197 0016 1948     		ldr	r0, .L228
ARM GAS  /tmp/cct3CiCB.s 			page 22


 1198 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 1199 001c 20B1     		cbz	r0, .L217
 1200              	.L220:
 1201 001e F368     		ldr	r3, [r6, #12]
 1202 0020 0133     		adds	r3, r3, #1
 1203 0022 F360     		str	r3, [r6, #12]
 1204 0024 0020     		movs	r0, #0
 1205 0026 70BD     		pop	{r4, r5, r6, pc}
 1206              	.L217:
 1207 0028 1448     		ldr	r0, .L228
 1208 002a 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 1209 002c 0422     		movs	r2, #4
 1210 002e 0546     		mov	r5, r0
 1211 0030 4FF4FA64 		mov	r4, #2000
 1212 0034 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 1213 0038 02E0     		b	.L221
 1214              	.L227:
 1215 003a 002C     		cmp	r4, #0
 1216 003c EFD0     		beq	.L220
 1217 003e 013C     		subs	r4, r4, #1
 1218              	.L221:
 1219 0040 2846     		mov	r0, r5
 1220 0042 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 1221 0046 0328     		cmp	r0, #3
 1222 0048 F7DD     		ble	.L227
 1223 004a 002C     		cmp	r4, #0
 1224 004c E7D0     		beq	.L220
 1225 004e 0B48     		ldr	r0, .L228
 1226 0050 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 1227 0054 0402     		lsls	r4, r0, #8
 1228 0056 0948     		ldr	r0, .L228
 1229 0058 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 1230 005c A4B2     		uxth	r4, r4
 1231 005e C0B2     		uxtb	r0, r0
 1232 0060 0443     		orrs	r4, r4, r0
 1233 0062 0648     		ldr	r0, .L228
 1234 0064 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 1235 0068 2502     		lsls	r5, r4, #8
 1236 006a C4B2     		uxtb	r4, r0
 1237 006c 0348     		ldr	r0, .L228
 1238 006e FFF7FEFF 		bl	_ZN7TwoWire4readEv
 1239 0072 2C43     		orrs	r4, r4, r5
 1240 0074 2402     		lsls	r4, r4, #8
 1241 0076 C0B2     		uxtb	r0, r0
 1242 0078 2043     		orrs	r0, r0, r4
 1243 007a 70BD     		pop	{r4, r5, r6, pc}
 1244              	.L229:
 1245              		.align	2
 1246              	.L228:
 1247 007c 00000000 		.word	Wire
 1248              		.size	_ZN6SX15099readDwordEh, .-_ZN6SX15099readDwordEh
 1249              		.section	.text._ZN6SX150923enableInterruptMultipleEth,"ax",%progbits
 1250              		.align	1
 1251              		.p2align 2,,3
 1252              		.global	_ZN6SX150923enableInterruptMultipleEth
 1253              		.syntax unified
 1254              		.thumb
ARM GAS  /tmp/cct3CiCB.s 			page 23


 1255              		.thumb_func
 1256              		.fpu fpv4-sp-d16
 1257              		.type	_ZN6SX150923enableInterruptMultipleEth, %function
 1258              	_ZN6SX150923enableInterruptMultipleEth:
 1259              		@ args = 0, pretend = 0, frame = 0
 1260              		@ frame_needed = 0, uses_anonymous_args = 0
 1261 0000 033A     		subs	r2, r2, #3
 1262 0002 D2B2     		uxtb	r2, r2
 1263 0004 022A     		cmp	r2, #2
 1264 0006 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1265 0008 98BF     		it	ls
 1266 000a 164B     		ldrls	r3, .L242
 1267 000c 0C46     		mov	r4, r1
 1268 000e 4FF01401 		mov	r1, #20
 1269 0012 98BF     		it	ls
 1270 0014 9E5C     		ldrbls	r6, [r3, r2]	@ zero_extendqisi2
 1271 0016 0546     		mov	r5, r0
 1272 0018 88BF     		it	hi
 1273 001a 0026     		movhi	r6, #0
 1274 001c FFF7FEFF 		bl	_ZN6SX15099readDwordEh
 1275 0020 0327     		movs	r7, #3
 1276 0022 0246     		mov	r2, r0
 1277 0024 0023     		movs	r3, #0
 1278              	.L233:
 1279 0026 44FA03F1 		asr	r1, r4, r3
 1280 002a 11F0010F 		tst	r1, #1
 1281 002e 4FEA4301 		lsl	r1, r3, #1
 1282 0032 03F10103 		add	r3, r3, #1
 1283 0036 06D0     		beq	.L232
 1284 0038 07FA01F0 		lsl	r0, r7, r1
 1285 003c 22EA0002 		bic	r2, r2, r0
 1286 0040 06FA01F1 		lsl	r1, r6, r1
 1287 0044 0A43     		orrs	r2, r2, r1
 1288              	.L232:
 1289 0046 102B     		cmp	r3, #16
 1290 0048 EDD1     		bne	.L233
 1291 004a 1421     		movs	r1, #20
 1292 004c 2846     		mov	r0, r5
 1293 004e FFF7FEFF 		bl	_ZN6SX150910writeDwordEhm
 1294 0052 04B9     		cbnz	r4, .L241
 1295 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1296              	.L241:
 1297 0056 2246     		mov	r2, r4
 1298 0058 2846     		mov	r0, r5
 1299 005a 1221     		movs	r1, #18
 1300 005c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1301 0060 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht.part.3
 1302              	.L243:
 1303              		.align	2
 1304              	.L242:
 1305 0064 00000000 		.word	.LANCHOR1
 1306              		.size	_ZN6SX150923enableInterruptMultipleEth, .-_ZN6SX150923enableInterruptMultipleEth
 1307              		.section	.text._ZN6SX150915enableInterruptEhh,"ax",%progbits
 1308              		.align	1
 1309              		.p2align 2,,3
 1310              		.global	_ZN6SX150915enableInterruptEhh
 1311              		.syntax unified
ARM GAS  /tmp/cct3CiCB.s 			page 24


 1312              		.thumb
 1313              		.thumb_func
 1314              		.fpu fpv4-sp-d16
 1315              		.type	_ZN6SX150915enableInterruptEhh, %function
 1316              	_ZN6SX150915enableInterruptEhh:
 1317              		@ args = 0, pretend = 0, frame = 0
 1318              		@ frame_needed = 0, uses_anonymous_args = 0
 1319              		@ link register save eliminated.
 1320 0000 0123     		movs	r3, #1
 1321 0002 03FA01F1 		lsl	r1, r3, r1
 1322 0006 89B2     		uxth	r1, r1
 1323 0008 FFF7FEBF 		b	_ZN6SX150923enableInterruptMultipleEth
 1324              		.size	_ZN6SX150915enableInterruptEhh, .-_ZN6SX150915enableInterruptEhh
 1325              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1326              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1327              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1328              	_ZL28cpu_irq_prev_interrupt_state:
 1329 0000 00       		.space	1
 1330              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1331              		.align	2
 1332              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1333              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1334              	_ZL32cpu_irq_critical_section_counter:
 1335 0000 00000000 		.space	4
 1336              		.section	.rodata.CSWTCH.60,"a",%progbits
 1337              		.align	2
 1338              		.set	.LANCHOR1,. + 0
 1339              		.type	CSWTCH.60, %object
 1340              		.size	CSWTCH.60, 3
 1341              	CSWTCH.60:
 1342 0000 03       		.byte	3
 1343 0001 02       		.byte	2
 1344 0002 01       		.byte	1
 1345              		.section	.rodata._ZL8REG_I_ON,"a",%progbits
 1346              		.align	2
 1347              		.set	.LANCHOR0,. + 0
 1348              		.type	_ZL8REG_I_ON, %object
 1349              		.size	_ZL8REG_I_ON, 16
 1350              	_ZL8REG_I_ON:
 1351 0000 2A       		.byte	42
 1352 0001 2D       		.byte	45
 1353 0002 30       		.byte	48
 1354 0003 33       		.byte	51
 1355 0004 36       		.byte	54
 1356 0005 3B       		.byte	59
 1357 0006 40       		.byte	64
 1358 0007 45       		.byte	69
 1359 0008 4A       		.byte	74
 1360 0009 4D       		.byte	77
 1361 000a 50       		.byte	80
 1362 000b 53       		.byte	83
 1363 000c 56       		.byte	86
 1364 000d 5B       		.byte	91
 1365 000e 60       		.byte	96
 1366 000f 65       		.byte	101
 1367              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
