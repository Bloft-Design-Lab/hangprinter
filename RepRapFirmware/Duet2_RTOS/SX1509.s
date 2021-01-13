ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN6SX1509C2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6SX1509C2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6SX1509C2Ev, %function
  24              	_ZN6SX1509C2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0022     		movs	r2, #0
  29 0002 4260     		str	r2, [r0, #4]
  30 0004 7047     		bx	lr
  31              		.size	_ZN6SX1509C2Ev, .-_ZN6SX1509C2Ev
  32              		.global	_ZN6SX1509C1Ev
  33              		.thumb_set _ZN6SX1509C1Ev,_ZN6SX1509C2Ev
  34 0006 00BF     		.section	.text._ZN6SX15095resetEv,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN6SX15095resetEv
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN6SX15095resetEv, %function
  43              	_ZN6SX15095resetEv:
  44              		@ args = 0, pretend = 0, frame = 16
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  47 0004 86B0     		sub	sp, sp, #24
  48 0006 8046     		mov	r8, r0
  49 0008 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
  50 000c 06AC     		add	r4, sp, #24
  51 000e 0146     		mov	r1, r0
  52 0010 4FF0FF32 		mov	r2, #-1
  53 0014 04A8     		add	r0, sp, #16
  54 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
  55 001a 41F27D23 		movw	r3, #4733
  56 001e 24F80C3D 		strh	r3, [r4, #-12]!	@ movhi
  57 0022 0F4D     		ldr	r5, .L5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 2


  58 0024 0F4F     		ldr	r7, .L5+4
  59 0026 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
  60 002a 0197     		str	r7, [sp, #4]
  61 002c 0026     		movs	r6, #0
  62 002e 2246     		mov	r2, r4
  63 0030 2846     		mov	r0, r5
  64 0032 0096     		str	r6, [sp]
  65 0034 0223     		movs	r3, #2
  66 0036 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
  67 003a 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
  68 003e 0197     		str	r7, [sp, #4]
  69 0040 2246     		mov	r2, r4
  70 0042 0223     		movs	r3, #2
  71 0044 0096     		str	r6, [sp]
  72 0046 2846     		mov	r0, r5
  73 0048 43F27D44 		movw	r4, #13437
  74 004c ADF80C40 		strh	r4, [sp, #12]	@ movhi
  75 0050 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
  76 0054 04A8     		add	r0, sp, #16
  77 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  78 005a 06B0     		add	sp, sp, #24
  79              		@ sp needed
  80 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  81              	.L6:
  82              		.align	2
  83              	.L5:
  84 0060 00000000 		.word	Wire
  85 0064 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
  86              		.size	_ZN6SX15095resetEv, .-_ZN6SX15095resetEv
  87              		.section	.text._ZN6SX150911analogWriteEhh,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZN6SX150911analogWriteEhh
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	_ZN6SX150911analogWriteEhh, %function
  96              	_ZN6SX150911analogWriteEhh:
  97              		@ args = 0, pretend = 0, frame = 16
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99 0000 70B5     		push	{r4, r5, r6, lr}
 100 0002 86B0     		sub	sp, sp, #24
 101 0004 0646     		mov	r6, r0
 102 0006 0D46     		mov	r5, r1
 103 0008 1446     		mov	r4, r2
 104 000a FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 105 000e 4FF0FF32 		mov	r2, #-1
 106 0012 0146     		mov	r1, r0
 107 0014 04A8     		add	r0, sp, #16
 108 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 109 001a 0B4A     		ldr	r2, .L9
 110 001c 0B4B     		ldr	r3, .L9+4
 111 001e 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 112 0020 0193     		str	r3, [sp, #4]
 113 0022 0023     		movs	r3, #0
 114 0024 555D     		ldrb	r5, [r2, r5]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 3


 115 0026 0093     		str	r3, [sp]
 116 0028 03AA     		add	r2, sp, #12
 117 002a 0223     		movs	r3, #2
 118 002c E443     		mvns	r4, r4
 119 002e 0848     		ldr	r0, .L9+8
 120 0030 8DF80D40 		strb	r4, [sp, #13]
 121 0034 8DF80C50 		strb	r5, [sp, #12]
 122 0038 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 123 003c 04A8     		add	r0, sp, #16
 124 003e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 125 0042 06B0     		add	sp, sp, #24
 126              		@ sp needed
 127 0044 70BD     		pop	{r4, r5, r6, pc}
 128              	.L10:
 129 0046 00BF     		.align	2
 130              	.L9:
 131 0048 00000000 		.word	.LANCHOR0
 132 004c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 133 0050 00000000 		.word	Wire
 134              		.size	_ZN6SX150911analogWriteEhh, .-_ZN6SX150911analogWriteEhh
 135              		.section	.text._ZN6SX150919analogWriteMultipleEth,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN6SX150919analogWriteMultipleEth
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZN6SX150919analogWriteMultipleEth, %function
 144              	_ZN6SX150919analogWriteMultipleEth:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 B1B1     		cbz	r1, .L23
 148 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 149 0004 0646     		mov	r6, r0
 150 0006 1746     		mov	r7, r2
 151 0008 0C46     		mov	r4, r1
 152 000a 0025     		movs	r5, #0
 153 000c 03E0     		b	.L14
 154              	.L13:
 155 000e 6310     		asrs	r3, r4, #1
 156 0010 0135     		adds	r5, r5, #1
 157 0012 9CB2     		uxth	r4, r3
 158 0014 5BB1     		cbz	r3, .L26
 159              	.L14:
 160 0016 E307     		lsls	r3, r4, #31
 161 0018 E9B2     		uxtb	r1, r5
 162 001a F8D5     		bpl	.L13
 163 001c 3A46     		mov	r2, r7
 164 001e 3046     		mov	r0, r6
 165 0020 FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
 166 0024 6310     		asrs	r3, r4, #1
 167 0026 0135     		adds	r5, r5, #1
 168 0028 9CB2     		uxth	r4, r3
 169 002a 002B     		cmp	r3, #0
 170 002c F3D1     		bne	.L14
 171              	.L26:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 4


 172 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 173              	.L23:
 174 0030 7047     		bx	lr
 175              		.size	_ZN6SX150919analogWriteMultipleEth, .-_ZN6SX150919analogWriteMultipleEth
 176 0032 00BF     		.section	.text._ZN6SX150921calculateLEDTRegisterEi,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN6SX150921calculateLEDTRegisterEi
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	_ZN6SX150921calculateLEDTRegisterEi, %function
 185              	_ZN6SX150921calculateLEDTRegisterEi:
 186              		@ args = 0, pretend = 0, frame = 8
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 82B0     		sub	sp, sp, #8
 190 0002 4068     		ldr	r0, [r0, #4]
 191 0004 0191     		str	r1, [sp, #4]
 192 0006 0028     		cmp	r0, #0
 193 0008 56D0     		beq	.L28
 194 000a 07EE901A 		vmov	s15, r1	@ int
 195 000e 07EE100A 		vmov	s14, r0	@ int
 196 0012 F8EEE76A 		vcvt.f32.s32	s13, s15
 197 0016 B8EE477A 		vcvt.f32.u32	s14, s14
 198 001a 9FED286A 		vldr.32	s12, .L36
 199 001e DFED287A 		vldr.32	s15, .L36+4
 200 0022 9FED284A 		vldr.32	s8, .L36+8
 201 0026 DFED284A 		vldr.32	s9, .L36+12
 202 002a 9FED285A 		vldr.32	s10, .L36+16
 203 002e C6EE865A 		vdiv.f32	s11, s13, s12
 204 0032 87EE876A 		vdiv.f32	s12, s15, s14
 205 0036 C5EE867A 		vdiv.f32	s15, s11, s12
 206 003a DFED205A 		vldr.32	s11, .L36
 207 003e FDEEE77A 		vcvt.s32.f32	s15, s15
 208 0042 17EE903A 		vmov	r3, s15	@ int
 209 0046 17EE902A 		vmov	r2, s15	@ int
 210 004a 012B     		cmp	r3, #1
 211 004c B8BF     		it	lt
 212 004e 0122     		movlt	r2, #1
 213 0050 0F2A     		cmp	r2, #15
 214 0052 A8BF     		it	ge
 215 0054 0F22     		movge	r2, #15
 216 0056 002B     		cmp	r3, #0
 217 0058 B8BF     		it	lt
 218 005a 0733     		addlt	r3, r3, #7
 219 005c D810     		asrs	r0, r3, #3
 220 005e 1028     		cmp	r0, #16
 221 0060 B8BF     		it	lt
 222 0062 1020     		movlt	r0, #16
 223 0064 1F28     		cmp	r0, #31
 224 0066 A8BF     		it	ge
 225 0068 1F20     		movge	r0, #31
 226 006a 07EE900A 		vmov	s15, r0	@ int
 227 006e B8EEE76A 		vcvt.f32.s32	s12, s15
 228 0072 07EE902A 		vmov	s15, r2	@ int
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 5


 229 0076 F8EEE77A 		vcvt.f32.s32	s15, s15
 230 007a 26EE046A 		vmul.f32	s12, s12, s8
 231 007e 67EEA47A 		vmul.f32	s15, s15, s9
 232 0082 26EE056A 		vmul.f32	s12, s12, s10
 233 0086 67EE857A 		vmul.f32	s15, s15, s10
 234 008a 86EE075A 		vdiv.f32	s10, s12, s14
 235 008e 87EE876A 		vdiv.f32	s12, s15, s14
 236 0092 F1EE667A 		vneg.f32	s15, s13
 237 0096 B0EE677A 		vmov.f32	s14, s15
 238 009a A5EE257A 		vfma.f32	s14, s10, s11
 239 009e E6EE257A 		vfma.f32	s15, s12, s11
 240 00a2 B0EEC77A 		vabs.f32	s14, s14
 241 00a6 F0EEE77A 		vabs.f32	s15, s15
 242 00aa F4EEC77A 		vcmpe.f32	s15, s14
 243 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 244 00b2 4CBF     		ite	mi
 245 00b4 D0B2     		uxtbmi	r0, r2
 246 00b6 C0B2     		uxtbpl	r0, r0
 247              	.L28:
 248 00b8 02B0     		add	sp, sp, #8
 249              		@ sp needed
 250 00ba 7047     		bx	lr
 251              	.L37:
 252              		.align	2
 253              	.L36:
 254 00bc 00007A44 		.word	1148846080
 255 00c0 00007F46 		.word	1182728192
 256 00c4 00000044 		.word	1140850688
 257 00c8 00008042 		.word	1115684864
 258 00cc 00007F43 		.word	1132396544
 259              		.size	_ZN6SX150921calculateLEDTRegisterEi, .-_ZN6SX150921calculateLEDTRegisterEi
 260              		.section	.text._ZN6SX150922calculateSlopeRegisterEihh,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	_ZN6SX150922calculateSlopeRegisterEihh
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv4-sp-d16
 268              		.type	_ZN6SX150922calculateSlopeRegisterEihh, %function
 269              	_ZN6SX150922calculateSlopeRegisterEihh:
 270              		@ args = 0, pretend = 0, frame = 16
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 84B0     		sub	sp, sp, #16
 274 0002 4068     		ldr	r0, [r0, #4]
 275 0004 0393     		str	r3, [sp, #12]
 276 0006 CDE90112 		strd	r1, r2, [sp, #4]
 277 000a 0028     		cmp	r0, #0
 278 000c 4FD0     		beq	.L39
 279 000e 07EE903A 		vmov	s15, r3	@ int
 280 0012 07EE102A 		vmov	s14, r2	@ int
 281 0016 F8EE677A 		vcvt.f32.u32	s15, s15
 282 001a F8EE476A 		vcvt.f32.u32	s13, s14
 283 001e B1EE007A 		vmov.f32	s14, #4.0e+0
 284 0022 E7EEC76A 		vfms.f32	s13, s15, s14
 285 0026 DFED237A 		vldr.32	s15, .L48
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 6


 286 002a DFED235A 		vldr.32	s11, .L48+4
 287 002e 66EEA76A 		vmul.f32	s13, s13, s15
 288 0032 07EE101A 		vmov	s14, r1	@ int
 289 0036 07EE900A 		vmov	s15, r0	@ int
 290 003a B8EEC76A 		vcvt.f32.s32	s12, s14
 291 003e F8EE677A 		vcvt.f32.u32	s15, s15
 292 0042 86EE257A 		vdiv.f32	s14, s12, s11
 293 0046 86EEA75A 		vdiv.f32	s10, s13, s15
 294 004a F3EE006A 		vmov.f32	s13, #1.6e+1
 295 004e C7EE057A 		vdiv.f32	s15, s14, s10
 296 0052 FDEEE77A 		vcvt.s32.f32	s15, s15
 297 0056 17EE903A 		vmov	r3, s15	@ int
 298 005a 17EE900A 		vmov	r0, s15	@ int
 299 005e 012B     		cmp	r3, #1
 300 0060 B8BF     		it	lt
 301 0062 0120     		movlt	r0, #1
 302 0064 0F28     		cmp	r0, #15
 303 0066 A8BF     		it	ge
 304 0068 0F20     		movge	r0, #15
 305 006a 07EE900A 		vmov	s15, r0	@ int
 306 006e B8EEE77A 		vcvt.f32.s32	s14, s15
 307 0072 27EE057A 		vmul.f32	s14, s14, s10
 308 0076 67EE257A 		vmul.f32	s15, s14, s11
 309 007a B0EE467A 		vmov.f32	s14, s12
 310 007e 97EEA67A 		vfnms.f32	s14, s15, s13
 311 0082 77EEC67A 		vsub.f32	s15, s15, s12
 312 0086 B0EEC77A 		vabs.f32	s14, s14
 313 008a F0EEE77A 		vabs.f32	s15, s15
 314 008e F4EEC77A 		vcmpe.f32	s15, s14
 315 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 316 0096 09D4     		bmi	.L47
 317 0098 002B     		cmp	r3, #0
 318 009a B8BF     		it	lt
 319 009c 0F33     		addlt	r3, r3, #15
 320 009e 1811     		asrs	r0, r3, #4
 321 00a0 1028     		cmp	r0, #16
 322 00a2 B8BF     		it	lt
 323 00a4 1020     		movlt	r0, #16
 324 00a6 1F28     		cmp	r0, #31
 325 00a8 A8BF     		it	ge
 326 00aa 1F20     		movge	r0, #31
 327              	.L47:
 328 00ac C0B2     		uxtb	r0, r0
 329              	.L39:
 330 00ae 04B0     		add	sp, sp, #16
 331              		@ sp needed
 332 00b0 7047     		bx	lr
 333              	.L49:
 334 00b2 00BF     		.align	2
 335              	.L48:
 336 00b4 00007F43 		.word	1132396544
 337 00b8 00007A44 		.word	1148846080
 338              		.size	_ZN6SX150922calculateSlopeRegisterEihh, .-_ZN6SX150922calculateSlopeRegisterEihh
 339              		.section	.text._ZN6SX15098readByteEh,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN6SX15098readByteEh
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	_ZN6SX15098readByteEh, %function
 348              	_ZN6SX15098readByteEh:
 349              		@ args = 0, pretend = 0, frame = 8
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 00B5     		push	{lr}
 352 0002 85B0     		sub	sp, sp, #20
 353 0004 04AA     		add	r2, sp, #16
 354 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 355 0008 084B     		ldr	r3, .L54
 356 000a 02F8041D 		strb	r1, [r2, #-4]!
 357 000e 0193     		str	r3, [sp, #4]
 358 0010 0123     		movs	r3, #1
 359 0012 0146     		mov	r1, r0
 360 0014 0093     		str	r3, [sp]
 361 0016 0648     		ldr	r0, .L54+4
 362 0018 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 363 001c 0228     		cmp	r0, #2
 364 001e 0CBF     		ite	eq
 365 0020 9DF80D00 		ldrbeq	r0, [sp, #13]	@ zero_extendqisi2
 366 0024 0020     		movne	r0, #0
 367 0026 05B0     		add	sp, sp, #20
 368              		@ sp needed
 369 0028 5DF804FB 		ldr	pc, [sp], #4
 370              	.L55:
 371              		.align	2
 372              	.L54:
 373 002c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 374 0030 00000000 		.word	Wire
 375              		.size	_ZN6SX15098readByteEh, .-_ZN6SX15098readByteEh
 376              		.section	.text._ZN6SX150911digitalReadEh,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	_ZN6SX150911digitalReadEh
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu fpv4-sp-d16
 384              		.type	_ZN6SX150911digitalReadEh, %function
 385              	_ZN6SX150911digitalReadEh:
 386              		@ args = 0, pretend = 0, frame = 8
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 30B5     		push	{r4, r5, lr}
 389 0002 83B0     		sub	sp, sp, #12
 390 0004 0C46     		mov	r4, r1
 391 0006 0546     		mov	r5, r0
 392 0008 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 393 000c 4FF0FF32 		mov	r2, #-1
 394 0010 0146     		mov	r1, r0
 395 0012 6846     		mov	r0, sp
 396 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 397 0018 072C     		cmp	r4, #7
 398 001a 2846     		mov	r0, r5
 399 001c 0CD8     		bhi	.L60
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 8


 400 001e 1121     		movs	r1, #17
 401 0020 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 402 0024 20FA04F4 		lsr	r4, r0, r4
 403 0028 6846     		mov	r0, sp
 404 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 405 002e 04F00104 		and	r4, r4, #1
 406 0032 2046     		mov	r0, r4
 407 0034 03B0     		add	sp, sp, #12
 408              		@ sp needed
 409 0036 30BD     		pop	{r4, r5, pc}
 410              	.L60:
 411 0038 1021     		movs	r1, #16
 412 003a FFF7FEFF 		bl	_ZN6SX15098readByteEh
 413 003e 083C     		subs	r4, r4, #8
 414 0040 20FA04F4 		lsr	r4, r0, r4
 415 0044 6846     		mov	r0, sp
 416 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 417 004a 04F00104 		and	r4, r4, #1
 418 004e 2046     		mov	r0, r4
 419 0050 03B0     		add	sp, sp, #12
 420              		@ sp needed
 421 0052 30BD     		pop	{r4, r5, pc}
 422              		.size	_ZN6SX150911digitalReadEh, .-_ZN6SX150911digitalReadEh
 423              		.section	.text._ZN6SX15095clockEh,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	_ZN6SX15095clockEh
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	_ZN6SX15095clockEh, %function
 432              	_ZN6SX15095clockEh:
 433              		@ args = 0, pretend = 0, frame = 8
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 436 0004 85B0     		sub	sp, sp, #20
 437 0006 04AD     		add	r5, sp, #16
 438 0008 45F21E12 		movw	r2, #20766
 439 000c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 440 000e 25F8042D 		strh	r2, [r5, #-4]!	@ movhi
 441 0012 204F     		ldr	r7, .L63
 442 0014 DFF88490 		ldr	r9, .L63+8
 443 0018 CDF80490 		str	r9, [sp, #4]
 444 001c 4FF00008 		mov	r8, #0
 445 0020 0C46     		mov	r4, r1
 446 0022 0646     		mov	r6, r0
 447 0024 2A46     		mov	r2, r5
 448 0026 1946     		mov	r1, r3
 449 0028 3846     		mov	r0, r7
 450 002a CDF80080 		str	r8, [sp]
 451 002e 0223     		movs	r3, #2
 452 0030 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 453 0034 012C     		cmp	r4, #1
 454 0036 38BF     		it	cc
 455 0038 0124     		movcc	r4, #1
 456 003a 072C     		cmp	r4, #7
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 9


 457 003c 28BF     		it	cs
 458 003e 0724     		movcs	r4, #7
 459 0040 621E     		subs	r2, r4, #1
 460 0042 0123     		movs	r3, #1
 461 0044 9340     		lsls	r3, r3, r2
 462 0046 07EE903A 		vmov	s15, r3	@ int
 463 004a DFED136A 		vldr.32	s13, .L63+4
 464 004e F8EEE77A 		vcvt.f32.s32	s15, s15
 465 0052 3046     		mov	r0, r6
 466 0054 86EEA77A 		vdiv.f32	s14, s13, s15
 467 0058 1F21     		movs	r1, #31
 468 005a BCEEC77A 		vcvt.u32.f32	s14, s14
 469 005e 86ED017A 		vstr.32	s14, [r6, #4]	@ int
 470 0062 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 471 0066 20F07300 		bic	r0, r0, #115
 472 006a 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 473 006c CDF80490 		str	r9, [sp, #4]
 474 0070 40EA0414 		orr	r4, r0, r4, lsl #4
 475 0074 2A46     		mov	r2, r5
 476 0076 CDF80080 		str	r8, [sp]
 477 007a 3846     		mov	r0, r7
 478 007c 1F25     		movs	r5, #31
 479 007e 0223     		movs	r3, #2
 480 0080 8DF80D40 		strb	r4, [sp, #13]
 481 0084 8DF80C50 		strb	r5, [sp, #12]
 482 0088 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 483 008c 05B0     		add	sp, sp, #20
 484              		@ sp needed
 485 008e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 486              	.L64:
 487 0092 00BF     		.align	2
 488              	.L63:
 489 0094 00000000 		.word	Wire
 490 0098 0024F449 		.word	1240736768
 491 009c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 492              		.size	_ZN6SX15095clockEh, .-_ZN6SX15095clockEh
 493              		.section	.text._ZN6SX15098readWordEh,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	_ZN6SX15098readWordEh
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_ZN6SX15098readWordEh, %function
 502              	_ZN6SX15098readWordEh:
 503              		@ args = 0, pretend = 0, frame = 8
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 00B5     		push	{lr}
 506 0002 85B0     		sub	sp, sp, #20
 507 0004 04AA     		add	r2, sp, #16
 508 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 509 0008 0B4B     		ldr	r3, .L69
 510 000a 02F8041D 		strb	r1, [r2, #-4]!
 511 000e 0193     		str	r3, [sp, #4]
 512 0010 0223     		movs	r3, #2
 513 0012 0146     		mov	r1, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 10


 514 0014 0093     		str	r3, [sp]
 515 0016 0948     		ldr	r0, .L69+4
 516 0018 0123     		movs	r3, #1
 517 001a FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 518 001e 0328     		cmp	r0, #3
 519 0020 05BF     		ittet	eq
 520 0022 9DF80E00 		ldrbeq	r0, [sp, #14]	@ zero_extendqisi2
 521 0026 9DF80D30 		ldrbeq	r3, [sp, #13]	@ zero_extendqisi2
 522 002a 0020     		movne	r0, #0
 523 002c 40EA0320 		orreq	r0, r0, r3, lsl #8
 524 0030 05B0     		add	sp, sp, #20
 525              		@ sp needed
 526 0032 5DF804FB 		ldr	pc, [sp], #4
 527              	.L70:
 528 0036 00BF     		.align	2
 529              	.L69:
 530 0038 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 531 003c 00000000 		.word	Wire
 532              		.size	_ZN6SX15098readWordEh, .-_ZN6SX15098readWordEh
 533              		.section	.text._ZN6SX150914digitalReadAllEv,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	_ZN6SX150914digitalReadAllEv
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv4-sp-d16
 541              		.type	_ZN6SX150914digitalReadAllEv, %function
 542              	_ZN6SX150914digitalReadAllEv:
 543              		@ args = 0, pretend = 0, frame = 8
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545 0000 10B5     		push	{r4, lr}
 546 0002 82B0     		sub	sp, sp, #8
 547 0004 0446     		mov	r4, r0
 548 0006 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 549 000a 4FF0FF32 		mov	r2, #-1
 550 000e 0146     		mov	r1, r0
 551 0010 6846     		mov	r0, sp
 552 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 553 0016 1021     		movs	r1, #16
 554 0018 2046     		mov	r0, r4
 555 001a FFF7FEFF 		bl	_ZN6SX15098readWordEh
 556 001e 0446     		mov	r4, r0
 557 0020 6846     		mov	r0, sp
 558 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 559 0026 2046     		mov	r0, r4
 560 0028 02B0     		add	sp, sp, #8
 561              		@ sp needed
 562 002a 10BD     		pop	{r4, pc}
 563              		.size	_ZN6SX150914digitalReadAllEv, .-_ZN6SX150914digitalReadAllEv
 564              		.section	.text._ZN6SX15095beginEh,"ax",%progbits
 565              		.align	1
 566              		.p2align 2,,3
 567              		.global	_ZN6SX15095beginEh
 568              		.syntax unified
 569              		.thumb
 570              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 11


 571              		.fpu fpv4-sp-d16
 572              		.type	_ZN6SX15095beginEh, %function
 573              	_ZN6SX15095beginEh:
 574              		@ args = 0, pretend = 0, frame = 16
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576 0000 70B5     		push	{r4, r5, r6, lr}
 577 0002 0170     		strb	r1, [r0]
 578 0004 86B0     		sub	sp, sp, #24
 579 0006 0446     		mov	r4, r0
 580 0008 0025     		movs	r5, #0
 581 000a FFF7FEFF 		bl	_ZN6SX15095resetEv
 582 000e 0220     		movs	r0, #2
 583 0010 FFF7FEFF 		bl	_Z5delaym
 584 0014 2581     		strh	r5, [r4, #8]	@ movhi
 585 0016 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 586 001a 4FF0FF32 		mov	r2, #-1
 587 001e 0146     		mov	r1, r0
 588 0020 04A8     		add	r0, sp, #16
 589 0022 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 590 0026 2046     		mov	r0, r4
 591 0028 1321     		movs	r1, #19
 592 002a FFF7FEFF 		bl	_ZN6SX15098readWordEh
 593 002e B0F57F4F 		cmp	r0, #65280
 594 0032 0CBF     		ite	eq
 595 0034 0126     		moveq	r6, #1
 596 0036 2E46     		movne	r6, r5
 597 0038 05D0     		beq	.L76
 598 003a 04A8     		add	r0, sp, #16
 599 003c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 600 0040 3046     		mov	r0, r6
 601 0042 06B0     		add	sp, sp, #24
 602              		@ sp needed
 603 0044 70BD     		pop	{r4, r5, r6, pc}
 604              	.L76:
 605 0046 2046     		mov	r0, r4
 606 0048 0521     		movs	r1, #5
 607 004a FFF7FEFF 		bl	_ZN6SX15095clockEh
 608 004e 0B4B     		ldr	r3, .L77
 609 0050 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 610 0052 4FF66970 		movw	r0, #65385
 611 0056 CDE90053 		strd	r5, r3, [sp]
 612 005a 03AA     		add	r2, sp, #12
 613 005c 0323     		movs	r3, #3
 614 005e ADF80C00 		strh	r0, [sp, #12]	@ movhi
 615 0062 FF24     		movs	r4, #255
 616 0064 0648     		ldr	r0, .L77+4
 617 0066 8DF80E40 		strb	r4, [sp, #14]
 618 006a FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 619 006e 04A8     		add	r0, sp, #16
 620 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 621 0074 3046     		mov	r0, r6
 622 0076 06B0     		add	sp, sp, #24
 623              		@ sp needed
 624 0078 70BD     		pop	{r4, r5, r6, pc}
 625              	.L78:
 626 007a 00BF     		.align	2
 627              	.L77:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 12


 628 007c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 629 0080 00000000 		.word	Wire
 630              		.size	_ZN6SX15095beginEh, .-_ZN6SX15095beginEh
 631              		.section	.text._ZN6SX150915interruptSourceEb,"ax",%progbits
 632              		.align	1
 633              		.p2align 2,,3
 634              		.global	_ZN6SX150915interruptSourceEb
 635              		.syntax unified
 636              		.thumb
 637              		.thumb_func
 638              		.fpu fpv4-sp-d16
 639              		.type	_ZN6SX150915interruptSourceEb, %function
 640              	_ZN6SX150915interruptSourceEb:
 641              		@ args = 0, pretend = 0, frame = 8
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643 0000 70B5     		push	{r4, r5, r6, lr}
 644 0002 0D46     		mov	r5, r1
 645 0004 84B0     		sub	sp, sp, #16
 646 0006 1821     		movs	r1, #24
 647 0008 0646     		mov	r6, r0
 648 000a FFF7FEFF 		bl	_ZN6SX15098readWordEh
 649 000e 0446     		mov	r4, r0
 650 0010 85B1     		cbz	r5, .L80
 651 0012 0A4B     		ldr	r3, .L85
 652 0014 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 653 0016 0193     		str	r3, [sp, #4]
 654 0018 4FF61870 		movw	r0, #65304
 655 001c 0023     		movs	r3, #0
 656 001e 0093     		str	r3, [sp]
 657 0020 FF25     		movs	r5, #255
 658 0022 ADF80C00 		strh	r0, [sp, #12]	@ movhi
 659 0026 0323     		movs	r3, #3
 660 0028 03AA     		add	r2, sp, #12
 661 002a 0548     		ldr	r0, .L85+4
 662 002c 8DF80E50 		strb	r5, [sp, #14]
 663 0030 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 664              	.L80:
 665 0034 2046     		mov	r0, r4
 666 0036 04B0     		add	sp, sp, #16
 667              		@ sp needed
 668 0038 70BD     		pop	{r4, r5, r6, pc}
 669              	.L86:
 670 003a 00BF     		.align	2
 671              	.L85:
 672 003c 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 673 0040 00000000 		.word	Wire
 674              		.size	_ZN6SX150915interruptSourceEb, .-_ZN6SX150915interruptSourceEb
 675              		.section	.text._ZN6SX150914checkInterruptEh,"ax",%progbits
 676              		.align	1
 677              		.p2align 2,,3
 678              		.global	_ZN6SX150914checkInterruptEh
 679              		.syntax unified
 680              		.thumb
 681              		.thumb_func
 682              		.fpu fpv4-sp-d16
 683              		.type	_ZN6SX150914checkInterruptEh, %function
 684              	_ZN6SX150914checkInterruptEh:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 13


 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687 0000 10B5     		push	{r4, lr}
 688 0002 0C46     		mov	r4, r1
 689 0004 1821     		movs	r1, #24
 690 0006 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 691 000a E040     		lsrs	r0, r0, r4
 692 000c 00F00100 		and	r0, r0, #1
 693 0010 10BD     		pop	{r4, pc}
 694              		.size	_ZN6SX150914checkInterruptEh, .-_ZN6SX150914checkInterruptEh
 695 0012 00BF     		.section	.text._ZN6SX15099readDwordEh,"ax",%progbits
 696              		.align	1
 697              		.p2align 2,,3
 698              		.global	_ZN6SX15099readDwordEh
 699              		.syntax unified
 700              		.thumb
 701              		.thumb_func
 702              		.fpu fpv4-sp-d16
 703              		.type	_ZN6SX15099readDwordEh, %function
 704              	_ZN6SX15099readDwordEh:
 705              		@ args = 0, pretend = 0, frame = 8
 706              		@ frame_needed = 0, uses_anonymous_args = 0
 707 0000 00B5     		push	{lr}
 708 0002 85B0     		sub	sp, sp, #20
 709 0004 04AA     		add	r2, sp, #16
 710 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 711 0008 094B     		ldr	r3, .L93
 712 000a 02F8081D 		strb	r1, [r2, #-8]!
 713 000e 0193     		str	r3, [sp, #4]
 714 0010 0423     		movs	r3, #4
 715 0012 0146     		mov	r1, r0
 716 0014 0093     		str	r3, [sp]
 717 0016 0748     		ldr	r0, .L93+4
 718 0018 0123     		movs	r3, #1
 719 001a FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 720 001e 0528     		cmp	r0, #5
 721 0020 0ABF     		itet	eq
 722 0022 DDF80900 		ldreq	r0, [sp, #9]	@ unaligned
 723 0026 0020     		movne	r0, #0
 724 0028 00BA     		reveq	r0, r0
 725 002a 05B0     		add	sp, sp, #20
 726              		@ sp needed
 727 002c 5DF804FB 		ldr	pc, [sp], #4
 728              	.L94:
 729              		.align	2
 730              	.L93:
 731 0030 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 732 0034 00000000 		.word	Wire
 733              		.size	_ZN6SX15099readDwordEh, .-_ZN6SX15099readDwordEh
 734              		.section	.text._ZN6SX15099writeByteEhh,"ax",%progbits
 735              		.align	1
 736              		.p2align 2,,3
 737              		.global	_ZN6SX15099writeByteEhh
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 14


 742              		.type	_ZN6SX15099writeByteEhh, %function
 743              	_ZN6SX15099writeByteEhh:
 744              		@ args = 0, pretend = 0, frame = 8
 745              		@ frame_needed = 0, uses_anonymous_args = 0
 746 0000 10B5     		push	{r4, lr}
 747 0002 84B0     		sub	sp, sp, #16
 748 0004 0478     		ldrb	r4, [r0]	@ zero_extendqisi2
 749 0006 0848     		ldr	r0, .L97
 750 0008 8DF80C10 		strb	r1, [sp, #12]
 751 000c 0023     		movs	r3, #0
 752 000e CDE90030 		strd	r3, r0, [sp]
 753 0012 8DF80D20 		strb	r2, [sp, #13]
 754 0016 2146     		mov	r1, r4
 755 0018 0223     		movs	r3, #2
 756 001a 03AA     		add	r2, sp, #12
 757 001c 0348     		ldr	r0, .L97+4
 758 001e FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 759 0022 04B0     		add	sp, sp, #16
 760              		@ sp needed
 761 0024 10BD     		pop	{r4, pc}
 762              	.L98:
 763 0026 00BF     		.align	2
 764              	.L97:
 765 0028 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 766 002c 00000000 		.word	Wire
 767              		.size	_ZN6SX15099writeByteEhh, .-_ZN6SX15099writeByteEhh
 768              		.section	.text._ZN6SX15099writeWordEht,"ax",%progbits
 769              		.align	1
 770              		.p2align 2,,3
 771              		.global	_ZN6SX15099writeWordEht
 772              		.syntax unified
 773              		.thumb
 774              		.thumb_func
 775              		.fpu fpv4-sp-d16
 776              		.type	_ZN6SX15099writeWordEht, %function
 777              	_ZN6SX15099writeWordEht:
 778              		@ args = 0, pretend = 0, frame = 8
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780 0000 70B5     		push	{r4, r5, r6, lr}
 781 0002 84B0     		sub	sp, sp, #16
 782 0004 0678     		ldrb	r6, [r0]	@ zero_extendqisi2
 783 0006 0A48     		ldr	r0, .L101
 784 0008 8DF80C10 		strb	r1, [sp, #12]
 785 000c 0023     		movs	r3, #0
 786 000e CDE90030 		strd	r3, r0, [sp]
 787 0012 1446     		mov	r4, r2
 788 0014 1512     		asrs	r5, r2, #8
 789 0016 3146     		mov	r1, r6
 790 0018 0323     		movs	r3, #3
 791 001a 03AA     		add	r2, sp, #12
 792 001c 0548     		ldr	r0, .L101+4
 793 001e 8DF80E40 		strb	r4, [sp, #14]
 794 0022 8DF80D50 		strb	r5, [sp, #13]
 795 0026 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 796 002a 04B0     		add	sp, sp, #16
 797              		@ sp needed
 798 002c 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 15


 799              	.L102:
 800 002e 00BF     		.align	2
 801              	.L101:
 802 0030 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 803 0034 00000000 		.word	Wire
 804              		.size	_ZN6SX15099writeWordEht, .-_ZN6SX15099writeWordEht
 805              		.section	.text._ZN6SX150913setBitsInWordEht.part.1,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.syntax unified
 809              		.thumb
 810              		.thumb_func
 811              		.fpu fpv4-sp-d16
 812              		.type	_ZN6SX150913setBitsInWordEht.part.1, %function
 813              	_ZN6SX150913setBitsInWordEht.part.1:
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816 0000 70B5     		push	{r4, r5, r6, lr}
 817 0002 1446     		mov	r4, r2
 818 0004 0546     		mov	r5, r0
 819 0006 0E46     		mov	r6, r1
 820 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 821 000c 40EA0402 		orr	r2, r0, r4
 822 0010 3146     		mov	r1, r6
 823 0012 2846     		mov	r0, r5
 824 0014 92B2     		uxth	r2, r2
 825 0016 BDE87040 		pop	{r4, r5, r6, lr}
 826 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 827              		.size	_ZN6SX150913setBitsInWordEht.part.1, .-_ZN6SX150913setBitsInWordEht.part.1
 828 001e 00BF     		.section	.text._ZN6SX150913setBitsInWordEht,"ax",%progbits
 829              		.align	1
 830              		.p2align 2,,3
 831              		.global	_ZN6SX150913setBitsInWordEht
 832              		.syntax unified
 833              		.thumb
 834              		.thumb_func
 835              		.fpu fpv4-sp-d16
 836              		.type	_ZN6SX150913setBitsInWordEht, %function
 837              	_ZN6SX150913setBitsInWordEht:
 838              		@ args = 0, pretend = 0, frame = 0
 839              		@ frame_needed = 0, uses_anonymous_args = 0
 840              		@ link register save eliminated.
 841 0000 02B9     		cbnz	r2, .L107
 842 0002 7047     		bx	lr
 843              	.L107:
 844 0004 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht.part.1
 845              		.size	_ZN6SX150913setBitsInWordEht, .-_ZN6SX150913setBitsInWordEht
 846              		.section	.text._ZN6SX150915clearBitsInWordEht.part.2,"ax",%progbits
 847              		.align	1
 848              		.p2align 2,,3
 849              		.syntax unified
 850              		.thumb
 851              		.thumb_func
 852              		.fpu fpv4-sp-d16
 853              		.type	_ZN6SX150915clearBitsInWordEht.part.2, %function
 854              	_ZN6SX150915clearBitsInWordEht.part.2:
 855              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 16


 856              		@ frame_needed = 0, uses_anonymous_args = 0
 857 0000 70B5     		push	{r4, r5, r6, lr}
 858 0002 1446     		mov	r4, r2
 859 0004 0546     		mov	r5, r0
 860 0006 0E46     		mov	r6, r1
 861 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 862 000c 20EA0402 		bic	r2, r0, r4
 863 0010 3146     		mov	r1, r6
 864 0012 2846     		mov	r0, r5
 865 0014 92B2     		uxth	r2, r2
 866 0016 BDE87040 		pop	{r4, r5, r6, lr}
 867 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 868              		.size	_ZN6SX150915clearBitsInWordEht.part.2, .-_ZN6SX150915clearBitsInWordEht.part.2
 869 001e 00BF     		.section	.text._ZN6SX150915clearBitsInWordEht,"ax",%progbits
 870              		.align	1
 871              		.p2align 2,,3
 872              		.global	_ZN6SX150915clearBitsInWordEht
 873              		.syntax unified
 874              		.thumb
 875              		.thumb_func
 876              		.fpu fpv4-sp-d16
 877              		.type	_ZN6SX150915clearBitsInWordEht, %function
 878              	_ZN6SX150915clearBitsInWordEht:
 879              		@ args = 0, pretend = 0, frame = 0
 880              		@ frame_needed = 0, uses_anonymous_args = 0
 881              		@ link register save eliminated.
 882 0000 02B9     		cbnz	r2, .L112
 883 0002 7047     		bx	lr
 884              	.L112:
 885 0004 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht.part.2
 886              		.size	_ZN6SX150915clearBitsInWordEht, .-_ZN6SX150915clearBitsInWordEht
 887              		.section	.text._ZN6SX150912digitalWriteEhb,"ax",%progbits
 888              		.align	1
 889              		.p2align 2,,3
 890              		.global	_ZN6SX150912digitalWriteEhb
 891              		.syntax unified
 892              		.thumb
 893              		.thumb_func
 894              		.fpu fpv4-sp-d16
 895              		.type	_ZN6SX150912digitalWriteEhb, %function
 896              	_ZN6SX150912digitalWriteEhb:
 897              		@ args = 0, pretend = 0, frame = 8
 898              		@ frame_needed = 0, uses_anonymous_args = 0
 899 0000 70B5     		push	{r4, r5, r6, lr}
 900 0002 82B0     		sub	sp, sp, #8
 901 0004 0D46     		mov	r5, r1
 902 0006 0646     		mov	r6, r0
 903 0008 1446     		mov	r4, r2
 904 000a FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 905 000e 4FF0FF32 		mov	r2, #-1
 906 0012 0146     		mov	r1, r0
 907 0014 6846     		mov	r0, sp
 908 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 909 001a 3389     		ldrh	r3, [r6, #8]
 910 001c EB40     		lsrs	r3, r3, r5
 911 001e DB07     		lsls	r3, r3, #31
 912 0020 0AD5     		bpl	.L114
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 17


 913 0022 6242     		negs	r2, r4
 914 0024 D2B2     		uxtb	r2, r2
 915 0026 2946     		mov	r1, r5
 916 0028 3046     		mov	r0, r6
 917 002a FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
 918              	.L115:
 919 002e 6846     		mov	r0, sp
 920 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 921 0034 02B0     		add	sp, sp, #8
 922              		@ sp needed
 923 0036 70BD     		pop	{r4, r5, r6, pc}
 924              	.L114:
 925 0038 0122     		movs	r2, #1
 926 003a AA40     		lsls	r2, r2, r5
 927 003c 92B2     		uxth	r2, r2
 928 003e 34B1     		cbz	r4, .L116
 929 0040 002A     		cmp	r2, #0
 930 0042 F4D0     		beq	.L115
 931 0044 3046     		mov	r0, r6
 932 0046 1021     		movs	r1, #16
 933 0048 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 934 004c EFE7     		b	.L115
 935              	.L116:
 936 004e 002A     		cmp	r2, #0
 937 0050 EDD0     		beq	.L115
 938 0052 3046     		mov	r0, r6
 939 0054 1021     		movs	r1, #16
 940 0056 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 941 005a E8E7     		b	.L115
 942              		.size	_ZN6SX150912digitalWriteEhb, .-_ZN6SX150912digitalWriteEhb
 943              		.section	.text._ZN6SX150921ledDriverInitMultipleEtbb,"ax",%progbits
 944              		.align	1
 945              		.p2align 2,,3
 946              		.global	_ZN6SX150921ledDriverInitMultipleEtbb
 947              		.syntax unified
 948              		.thumb
 949              		.thumb_func
 950              		.fpu fpv4-sp-d16
 951              		.type	_ZN6SX150921ledDriverInitMultipleEtbb, %function
 952              	_ZN6SX150921ledDriverInitMultipleEtbb:
 953              		@ args = 0, pretend = 0, frame = 8
 954              		@ frame_needed = 0, uses_anonymous_args = 0
 955 0000 70B5     		push	{r4, r5, r6, lr}
 956 0002 0D46     		mov	r5, r1
 957 0004 84B0     		sub	sp, sp, #16
 958 0006 1646     		mov	r6, r2
 959 0008 0446     		mov	r4, r0
 960 000a 4BB3     		cbz	r3, .L125
 961 000c 0029     		cmp	r1, #0
 962 000e 4AD1     		bne	.L142
 963              	.L126:
 964 0010 1F21     		movs	r1, #31
 965 0012 2046     		mov	r0, r4
 966 0014 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 967 0018 002E     		cmp	r6, #0
 968 001a 41D0     		beq	.L128
 969              	.L143:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 18


 970 001c 60F07700 		orn	r0, r0, #119
 971 0020 C0B2     		uxtb	r0, r0
 972              	.L129:
 973 0022 234B     		ldr	r3, .L144
 974 0024 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 975 0026 0193     		str	r3, [sp, #4]
 976 0028 0023     		movs	r3, #0
 977 002a 0093     		str	r3, [sp]
 978 002c 1F26     		movs	r6, #31
 979 002e 8DF80D00 		strb	r0, [sp, #13]
 980 0032 0223     		movs	r3, #2
 981 0034 03AA     		add	r2, sp, #12
 982 0036 1F48     		ldr	r0, .L144+4
 983 0038 8DF80C60 		strb	r6, [sp, #12]
 984 003c FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 985 0040 4DB1     		cbz	r5, .L130
 986 0042 2A46     		mov	r2, r5
 987 0044 2021     		movs	r1, #32
 988 0046 2046     		mov	r0, r4
 989 0048 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 990 004c 2A46     		mov	r2, r5
 991 004e 1021     		movs	r1, #16
 992 0050 2046     		mov	r0, r4
 993 0052 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 994              	.L130:
 995 0056 2389     		ldrh	r3, [r4, #8]
 996 0058 1D43     		orrs	r5, r5, r3
 997 005a 2581     		strh	r5, [r4, #8]	@ movhi
 998 005c 04B0     		add	sp, sp, #16
 999              		@ sp needed
 1000 005e 70BD     		pop	{r4, r5, r6, pc}
 1001              	.L125:
 1002 0060 0029     		cmp	r1, #0
 1003 0062 D5D0     		beq	.L126
 1004 0064 0A46     		mov	r2, r1
 1005 0066 0A21     		movs	r1, #10
 1006 0068 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1007              	.L127:
 1008 006c 2A46     		mov	r2, r5
 1009 006e 0021     		movs	r1, #0
 1010 0070 2046     		mov	r0, r4
 1011 0072 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1012 0076 2A46     		mov	r2, r5
 1013 0078 0621     		movs	r1, #6
 1014 007a 2046     		mov	r0, r4
 1015 007c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1016 0080 2A46     		mov	r2, r5
 1017 0082 0821     		movs	r1, #8
 1018 0084 2046     		mov	r0, r4
 1019 0086 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1020 008a 0E21     		movs	r1, #14
 1021 008c 2046     		mov	r0, r4
 1022 008e 2A46     		mov	r2, r5
 1023 0090 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1024 0094 1F21     		movs	r1, #31
 1025 0096 2046     		mov	r0, r4
 1026 0098 FFF7FEFF 		bl	_ZN6SX15098readByteEh
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 19


 1027 009c 002E     		cmp	r6, #0
 1028 009e BDD1     		bne	.L143
 1029              	.L128:
 1030 00a0 00F07700 		and	r0, r0, #119
 1031 00a4 BDE7     		b	.L129
 1032              	.L142:
 1033 00a6 0A46     		mov	r2, r1
 1034 00a8 0A21     		movs	r1, #10
 1035 00aa FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1036 00ae DDE7     		b	.L127
 1037              	.L145:
 1038              		.align	2
 1039              	.L144:
 1040 00b0 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 1041 00b4 00000000 		.word	Wire
 1042              		.size	_ZN6SX150921ledDriverInitMultipleEtbb, .-_ZN6SX150921ledDriverInitMultipleEtbb
 1043              		.section	.text._ZN6SX150915pinModeMultipleEt7PinMode,"ax",%progbits
 1044              		.align	1
 1045              		.p2align 2,,3
 1046              		.global	_ZN6SX150915pinModeMultipleEt7PinMode
 1047              		.syntax unified
 1048              		.thumb
 1049              		.thumb_func
 1050              		.fpu fpv4-sp-d16
 1051              		.type	_ZN6SX150915pinModeMultipleEt7PinMode, %function
 1052              	_ZN6SX150915pinModeMultipleEt7PinMode:
 1053              		@ args = 0, pretend = 0, frame = 8
 1054              		@ frame_needed = 0, uses_anonymous_args = 0
 1055 0000 70B5     		push	{r4, r5, r6, lr}
 1056 0002 82B0     		sub	sp, sp, #8
 1057 0004 1646     		mov	r6, r2
 1058 0006 0C46     		mov	r4, r1
 1059 0008 0546     		mov	r5, r0
 1060 000a FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 1061 000e 4FF0FF32 		mov	r2, #-1
 1062 0012 0146     		mov	r1, r0
 1063 0014 6846     		mov	r0, sp
 1064 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 1065 001a 0B2E     		cmp	r6, #11
 1066 001c 22D8     		bhi	.L147
 1067 001e DFE816F0 		tbh	[pc, r6, lsl #1]
 1068              	.L149:
 1069 0022 0C00     		.2byte	(.L148-.L149)/2
 1070 0024 3100     		.2byte	(.L150-.L149)/2
 1071 0026 4800     		.2byte	(.L151-.L149)/2
 1072 0028 5F00     		.2byte	(.L152-.L149)/2
 1073 002a 8C00     		.2byte	(.L153-.L149)/2
 1074 002c 2100     		.2byte	(.L147-.L149)/2
 1075 002e 2100     		.2byte	(.L147-.L149)/2
 1076 0030 BE00     		.2byte	(.L154-.L149)/2
 1077 0032 BE00     		.2byte	(.L154-.L149)/2
 1078 0034 C900     		.2byte	(.L155-.L149)/2
 1079 0036 FC00     		.2byte	(.L156-.L149)/2
 1080 0038 2600     		.2byte	(.L157-.L149)/2
 1081              		.p2align 1
 1082              	.L148:
 1083 003a 9CB1     		cbz	r4, .L147
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 20


 1084 003c 2246     		mov	r2, r4
 1085 003e 0021     		movs	r1, #0
 1086 0040 2846     		mov	r0, r5
 1087 0042 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1088 0046 2246     		mov	r2, r4
 1089 0048 0E21     		movs	r1, #14
 1090 004a 2846     		mov	r0, r5
 1091 004c FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1092 0050 2246     		mov	r2, r4
 1093 0052 0621     		movs	r1, #6
 1094 0054 2846     		mov	r0, r5
 1095 0056 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1096 005a 2246     		mov	r2, r4
 1097 005c 2846     		mov	r0, r5
 1098 005e 0821     		movs	r1, #8
 1099 0060 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1100              	.L147:
 1101 0064 6846     		mov	r0, sp
 1102 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1103 006a 02B0     		add	sp, sp, #8
 1104              		@ sp needed
 1105 006c 70BD     		pop	{r4, r5, r6, pc}
 1106              	.L157:
 1107 006e 2146     		mov	r1, r4
 1108 0070 2846     		mov	r0, r5
 1109 0072 0123     		movs	r3, #1
 1110 0074 0022     		movs	r2, #0
 1111 0076 FFF7FEFF 		bl	_ZN6SX150921ledDriverInitMultipleEtbb
 1112 007a 6846     		mov	r0, sp
 1113 007c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1114 0080 02B0     		add	sp, sp, #8
 1115              		@ sp needed
 1116 0082 70BD     		pop	{r4, r5, r6, pc}
 1117              	.L150:
 1118 0084 002C     		cmp	r4, #0
 1119 0086 EDD0     		beq	.L147
 1120 0088 2246     		mov	r2, r4
 1121 008a 2846     		mov	r0, r5
 1122 008c 0021     		movs	r1, #0
 1123 008e FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1124 0092 2246     		mov	r2, r4
 1125 0094 2846     		mov	r0, r5
 1126 0096 0E21     		movs	r1, #14
 1127 0098 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1128 009c 2246     		mov	r2, r4
 1129 009e 2846     		mov	r0, r5
 1130 00a0 0821     		movs	r1, #8
 1131 00a2 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1132 00a6 2246     		mov	r2, r4
 1133 00a8 2846     		mov	r0, r5
 1134 00aa 0621     		movs	r1, #6
 1135 00ac FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1136 00b0 D8E7     		b	.L147
 1137              	.L151:
 1138 00b2 002C     		cmp	r4, #0
 1139 00b4 D6D0     		beq	.L147
 1140 00b6 2246     		mov	r2, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 21


 1141 00b8 2846     		mov	r0, r5
 1142 00ba 0021     		movs	r1, #0
 1143 00bc FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1144 00c0 2246     		mov	r2, r4
 1145 00c2 2846     		mov	r0, r5
 1146 00c4 0E21     		movs	r1, #14
 1147 00c6 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1148 00ca 2246     		mov	r2, r4
 1149 00cc 2846     		mov	r0, r5
 1150 00ce 0621     		movs	r1, #6
 1151 00d0 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1152 00d4 2246     		mov	r2, r4
 1153 00d6 2846     		mov	r0, r5
 1154 00d8 0821     		movs	r1, #8
 1155 00da FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1156 00de C1E7     		b	.L147
 1157              	.L152:
 1158 00e0 002C     		cmp	r4, #0
 1159 00e2 BFD0     		beq	.L147
 1160 00e4 2246     		mov	r2, r4
 1161 00e6 0621     		movs	r1, #6
 1162 00e8 2846     		mov	r0, r5
 1163 00ea FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1164 00ee 2246     		mov	r2, r4
 1165 00f0 0821     		movs	r1, #8
 1166 00f2 2846     		mov	r0, r5
 1167 00f4 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1168 00f8 2A89     		ldrh	r2, [r5, #8]
 1169 00fa 34EA0202 		bics	r2, r4, r2
 1170 00fe 40F0BF80 		bne	.L160
 1171              	.L172:
 1172 0102 2246     		mov	r2, r4
 1173 0104 0A21     		movs	r1, #10
 1174 0106 2846     		mov	r0, r5
 1175 0108 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1176 010c 2246     		mov	r2, r4
 1177 010e 0E21     		movs	r1, #14
 1178 0110 2846     		mov	r0, r5
 1179 0112 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1180 0116 2B89     		ldrh	r3, [r5, #8]
 1181 0118 1C40     		ands	r4, r4, r3
 1182 011a A3D0     		beq	.L147
 1183 011c 0026     		movs	r6, #0
 1184 011e 04E0     		b	.L162
 1185              	.L161:
 1186 0120 6310     		asrs	r3, r4, #1
 1187 0122 0136     		adds	r6, r6, #1
 1188 0124 9CB2     		uxth	r4, r3
 1189 0126 002B     		cmp	r3, #0
 1190 0128 9CD0     		beq	.L147
 1191              	.L162:
 1192 012a E307     		lsls	r3, r4, #31
 1193 012c F1B2     		uxtb	r1, r6
 1194 012e F7D5     		bpl	.L161
 1195 0130 0022     		movs	r2, #0
 1196 0132 2846     		mov	r0, r5
 1197 0134 FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 22


 1198 0138 F2E7     		b	.L161
 1199              	.L153:
 1200 013a 002C     		cmp	r4, #0
 1201 013c 92D0     		beq	.L147
 1202 013e 2246     		mov	r2, r4
 1203 0140 0621     		movs	r1, #6
 1204 0142 2846     		mov	r0, r5
 1205 0144 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1206 0148 2246     		mov	r2, r4
 1207 014a 0821     		movs	r1, #8
 1208 014c 2846     		mov	r0, r5
 1209 014e FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1210 0152 2A89     		ldrh	r2, [r5, #8]
 1211 0154 34EA0202 		bics	r2, r4, r2
 1212 0158 03D0     		beq	.L173
 1213 015a 1021     		movs	r1, #16
 1214 015c 2846     		mov	r0, r5
 1215 015e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1216              	.L173:
 1217 0162 2246     		mov	r2, r4
 1218 0164 0A21     		movs	r1, #10
 1219 0166 2846     		mov	r0, r5
 1220 0168 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1221 016c 2246     		mov	r2, r4
 1222 016e 0E21     		movs	r1, #14
 1223 0170 2846     		mov	r0, r5
 1224 0172 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1225 0176 2B89     		ldrh	r3, [r5, #8]
 1226 0178 1C40     		ands	r4, r4, r3
 1227 017a 3FF473AF 		beq	.L147
 1228 017e 0026     		movs	r6, #0
 1229 0180 05E0     		b	.L165
 1230              	.L164:
 1231 0182 6310     		asrs	r3, r4, #1
 1232 0184 0136     		adds	r6, r6, #1
 1233 0186 9CB2     		uxth	r4, r3
 1234 0188 002B     		cmp	r3, #0
 1235 018a 3FF46BAF 		beq	.L147
 1236              	.L165:
 1237 018e E007     		lsls	r0, r4, #31
 1238 0190 F1B2     		uxtb	r1, r6
 1239 0192 F6D5     		bpl	.L164
 1240 0194 FF22     		movs	r2, #255
 1241 0196 2846     		mov	r0, r5
 1242 0198 FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
 1243 019c F1E7     		b	.L164
 1244              	.L154:
 1245 019e 0023     		movs	r3, #0
 1246 01a0 2146     		mov	r1, r4
 1247 01a2 2846     		mov	r0, r5
 1248 01a4 1A46     		mov	r2, r3
 1249 01a6 FFF7FEFF 		bl	_ZN6SX150921ledDriverInitMultipleEtbb
 1250 01aa 6846     		mov	r0, sp
 1251 01ac FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1252 01b0 02B0     		add	sp, sp, #8
 1253              		@ sp needed
 1254 01b2 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 23


 1255              	.L155:
 1256 01b4 002C     		cmp	r4, #0
 1257 01b6 3FF455AF 		beq	.L147
 1258 01ba 2246     		mov	r2, r4
 1259 01bc 0621     		movs	r1, #6
 1260 01be 2846     		mov	r0, r5
 1261 01c0 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1262 01c4 2246     		mov	r2, r4
 1263 01c6 0821     		movs	r1, #8
 1264 01c8 2846     		mov	r0, r5
 1265 01ca FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1266 01ce 2A89     		ldrh	r2, [r5, #8]
 1267 01d0 34EA0202 		bics	r2, r4, r2
 1268 01d4 03D0     		beq	.L174
 1269 01d6 1021     		movs	r1, #16
 1270 01d8 2846     		mov	r0, r5
 1271 01da FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1272              	.L174:
 1273 01de 2246     		mov	r2, r4
 1274 01e0 0A21     		movs	r1, #10
 1275 01e2 2846     		mov	r0, r5
 1276 01e4 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1277 01e8 2246     		mov	r2, r4
 1278 01ea 0E21     		movs	r1, #14
 1279 01ec 2846     		mov	r0, r5
 1280 01ee FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1281 01f2 2B89     		ldrh	r3, [r5, #8]
 1282 01f4 1C40     		ands	r4, r4, r3
 1283 01f6 3FF435AF 		beq	.L147
 1284 01fa 0026     		movs	r6, #0
 1285 01fc 05E0     		b	.L168
 1286              	.L167:
 1287 01fe 6310     		asrs	r3, r4, #1
 1288 0200 0136     		adds	r6, r6, #1
 1289 0202 9CB2     		uxth	r4, r3
 1290 0204 002B     		cmp	r3, #0
 1291 0206 3FF42DAF 		beq	.L147
 1292              	.L168:
 1293 020a E207     		lsls	r2, r4, #31
 1294 020c F1B2     		uxtb	r1, r6
 1295 020e F6D5     		bpl	.L167
 1296 0210 0022     		movs	r2, #0
 1297 0212 2846     		mov	r0, r5
 1298 0214 FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
 1299 0218 F1E7     		b	.L167
 1300              	.L156:
 1301 021a 002C     		cmp	r4, #0
 1302 021c 3FF422AF 		beq	.L147
 1303 0220 2246     		mov	r2, r4
 1304 0222 0621     		movs	r1, #6
 1305 0224 2846     		mov	r0, r5
 1306 0226 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1307 022a 2246     		mov	r2, r4
 1308 022c 0821     		movs	r1, #8
 1309 022e 2846     		mov	r0, r5
 1310 0230 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1311 0234 2A89     		ldrh	r2, [r5, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 24


 1312 0236 34EA0202 		bics	r2, r4, r2
 1313 023a 03D0     		beq	.L175
 1314 023c 1021     		movs	r1, #16
 1315 023e 2846     		mov	r0, r5
 1316 0240 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1317              	.L175:
 1318 0244 2246     		mov	r2, r4
 1319 0246 0A21     		movs	r1, #10
 1320 0248 2846     		mov	r0, r5
 1321 024a FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht.part.1
 1322 024e 2246     		mov	r2, r4
 1323 0250 0E21     		movs	r1, #14
 1324 0252 2846     		mov	r0, r5
 1325 0254 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1326 0258 2B89     		ldrh	r3, [r5, #8]
 1327 025a 1C40     		ands	r4, r4, r3
 1328 025c 3FF402AF 		beq	.L147
 1329 0260 0026     		movs	r6, #0
 1330 0262 05E0     		b	.L171
 1331              	.L170:
 1332 0264 6310     		asrs	r3, r4, #1
 1333 0266 0136     		adds	r6, r6, #1
 1334 0268 9CB2     		uxth	r4, r3
 1335 026a 002B     		cmp	r3, #0
 1336 026c 3FF4FAAE 		beq	.L147
 1337              	.L171:
 1338 0270 E307     		lsls	r3, r4, #31
 1339 0272 F1B2     		uxtb	r1, r6
 1340 0274 F6D5     		bpl	.L170
 1341 0276 FF22     		movs	r2, #255
 1342 0278 2846     		mov	r0, r5
 1343 027a FFF7FEFF 		bl	_ZN6SX150911analogWriteEhh
 1344 027e F1E7     		b	.L170
 1345              	.L160:
 1346 0280 1021     		movs	r1, #16
 1347 0282 2846     		mov	r0, r5
 1348 0284 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1349 0288 3BE7     		b	.L172
 1350              		.size	_ZN6SX150915pinModeMultipleEt7PinMode, .-_ZN6SX150915pinModeMultipleEt7PinMode
 1351 028a 00BF     		.section	.text._ZN6SX15097pinModeEh7PinMode,"ax",%progbits
 1352              		.align	1
 1353              		.p2align 2,,3
 1354              		.global	_ZN6SX15097pinModeEh7PinMode
 1355              		.syntax unified
 1356              		.thumb
 1357              		.thumb_func
 1358              		.fpu fpv4-sp-d16
 1359              		.type	_ZN6SX15097pinModeEh7PinMode, %function
 1360              	_ZN6SX15097pinModeEh7PinMode:
 1361              		@ args = 0, pretend = 0, frame = 0
 1362              		@ frame_needed = 0, uses_anonymous_args = 0
 1363              		@ link register save eliminated.
 1364 0000 0123     		movs	r3, #1
 1365 0002 03FA01F1 		lsl	r1, r3, r1
 1366 0006 89B2     		uxth	r1, r1
 1367 0008 FFF7FEBF 		b	_ZN6SX150915pinModeMultipleEt7PinMode
 1368              		.size	_ZN6SX15097pinModeEh7PinMode, .-_ZN6SX15097pinModeEh7PinMode
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 25


 1369              		.section	.text._ZN6SX150910writeDwordEhm,"ax",%progbits
 1370              		.align	1
 1371              		.p2align 2,,3
 1372              		.global	_ZN6SX150910writeDwordEhm
 1373              		.syntax unified
 1374              		.thumb
 1375              		.thumb_func
 1376              		.fpu fpv4-sp-d16
 1377              		.type	_ZN6SX150910writeDwordEhm, %function
 1378              	_ZN6SX150910writeDwordEhm:
 1379              		@ args = 0, pretend = 0, frame = 8
 1380              		@ frame_needed = 0, uses_anonymous_args = 0
 1381 0000 30B5     		push	{r4, r5, lr}
 1382 0002 85B0     		sub	sp, sp, #20
 1383 0004 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 1384 0006 8DF80810 		strb	r1, [sp, #8]
 1385 000a 0B4C     		ldr	r4, .L235
 1386 000c 0194     		str	r4, [sp, #4]
 1387 000e 0146     		mov	r1, r0
 1388 0010 0023     		movs	r3, #0
 1389 0012 100E     		lsrs	r0, r2, #24
 1390 0014 150C     		lsrs	r5, r2, #16
 1391 0016 0093     		str	r3, [sp]
 1392 0018 140A     		lsrs	r4, r2, #8
 1393 001a 8DF80C20 		strb	r2, [sp, #12]
 1394 001e 8DF80900 		strb	r0, [sp, #9]
 1395 0022 0523     		movs	r3, #5
 1396 0024 02AA     		add	r2, sp, #8
 1397 0026 0548     		ldr	r0, .L235+4
 1398 0028 8DF80A50 		strb	r5, [sp, #10]
 1399 002c 8DF80B40 		strb	r4, [sp, #11]
 1400 0030 FFF7FEFF 		bl	_ZN7TwoWire8TransferEtPhjjPFmP3TwimE
 1401 0034 05B0     		add	sp, sp, #20
 1402              		@ sp needed
 1403 0036 30BD     		pop	{r4, r5, pc}
 1404              	.L236:
 1405              		.align	2
 1406              	.L235:
 1407 0038 00000000 		.word	_ZN7TwoWire24DefaultWaitForStatusFuncEP3Twim
 1408 003c 00000000 		.word	Wire
 1409              		.size	_ZN6SX150910writeDwordEhm, .-_ZN6SX150910writeDwordEhm
 1410              		.section	.text._ZN6SX150923enableInterruptMultipleEth,"ax",%progbits
 1411              		.align	1
 1412              		.p2align 2,,3
 1413              		.global	_ZN6SX150923enableInterruptMultipleEth
 1414              		.syntax unified
 1415              		.thumb
 1416              		.thumb_func
 1417              		.fpu fpv4-sp-d16
 1418              		.type	_ZN6SX150923enableInterruptMultipleEth, %function
 1419              	_ZN6SX150923enableInterruptMultipleEth:
 1420              		@ args = 0, pretend = 0, frame = 8
 1421              		@ frame_needed = 0, uses_anonymous_args = 0
 1422 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1423 0002 033A     		subs	r2, r2, #3
 1424 0004 D2B2     		uxtb	r2, r2
 1425 0006 022A     		cmp	r2, #2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 26


 1426 0008 98BF     		it	ls
 1427 000a 1B4B     		ldrls	r3, .L251
 1428 000c 83B0     		sub	sp, sp, #12
 1429 000e 94BF     		ite	ls
 1430 0010 9E5C     		ldrbls	r6, [r3, r2]	@ zero_extendqisi2
 1431 0012 0026     		movhi	r6, #0
 1432 0014 0546     		mov	r5, r0
 1433 0016 0C46     		mov	r4, r1
 1434 0018 FFF7FEFF 		bl	_ZN5Tasks11GetI2CMutexEv
 1435 001c 4FF0FF32 		mov	r2, #-1
 1436 0020 0146     		mov	r1, r0
 1437 0022 6846     		mov	r0, sp
 1438 0024 FFF7FEFF 		bl	_ZN11MutexLockerC1EPK5Mutexm
 1439 0028 1421     		movs	r1, #20
 1440 002a 2846     		mov	r0, r5
 1441 002c FFF7FEFF 		bl	_ZN6SX15099readDwordEh
 1442 0030 0327     		movs	r7, #3
 1443 0032 0246     		mov	r2, r0
 1444 0034 0023     		movs	r3, #0
 1445              	.L240:
 1446 0036 44FA03F1 		asr	r1, r4, r3
 1447 003a 11F0010F 		tst	r1, #1
 1448 003e 4FEA4301 		lsl	r1, r3, #1
 1449 0042 03F10103 		add	r3, r3, #1
 1450 0046 06D0     		beq	.L239
 1451 0048 07FA01F0 		lsl	r0, r7, r1
 1452 004c 22EA0002 		bic	r2, r2, r0
 1453 0050 06FA01F1 		lsl	r1, r6, r1
 1454 0054 0A43     		orrs	r2, r2, r1
 1455              	.L239:
 1456 0056 102B     		cmp	r3, #16
 1457 0058 EDD1     		bne	.L240
 1458 005a 1421     		movs	r1, #20
 1459 005c 2846     		mov	r0, r5
 1460 005e FFF7FEFF 		bl	_ZN6SX150910writeDwordEhm
 1461 0062 24B1     		cbz	r4, .L241
 1462 0064 2246     		mov	r2, r4
 1463 0066 2846     		mov	r0, r5
 1464 0068 1221     		movs	r1, #18
 1465 006a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht.part.2
 1466              	.L241:
 1467 006e 6846     		mov	r0, sp
 1468 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1469 0074 03B0     		add	sp, sp, #12
 1470              		@ sp needed
 1471 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 1472              	.L252:
 1473              		.align	2
 1474              	.L251:
 1475 0078 00000000 		.word	.LANCHOR1
 1476              		.size	_ZN6SX150923enableInterruptMultipleEth, .-_ZN6SX150923enableInterruptMultipleEth
 1477              		.section	.text._ZN6SX150915enableInterruptEhh,"ax",%progbits
 1478              		.align	1
 1479              		.p2align 2,,3
 1480              		.global	_ZN6SX150915enableInterruptEhh
 1481              		.syntax unified
 1482              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc7pXUuJ.s 			page 27


 1483              		.thumb_func
 1484              		.fpu fpv4-sp-d16
 1485              		.type	_ZN6SX150915enableInterruptEhh, %function
 1486              	_ZN6SX150915enableInterruptEhh:
 1487              		@ args = 0, pretend = 0, frame = 0
 1488              		@ frame_needed = 0, uses_anonymous_args = 0
 1489              		@ link register save eliminated.
 1490 0000 0123     		movs	r3, #1
 1491 0002 03FA01F1 		lsl	r1, r3, r1
 1492 0006 89B2     		uxth	r1, r1
 1493 0008 FFF7FEBF 		b	_ZN6SX150923enableInterruptMultipleEth
 1494              		.size	_ZN6SX150915enableInterruptEhh, .-_ZN6SX150915enableInterruptEhh
 1495              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1496              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1497              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1498              	_ZL28cpu_irq_prev_interrupt_state:
 1499 0000 00       		.space	1
 1500              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1501              		.align	2
 1502              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1503              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1504              	_ZL32cpu_irq_critical_section_counter:
 1505 0000 00000000 		.space	4
 1506              		.section	.rodata.CSWTCH.46,"a",%progbits
 1507              		.align	2
 1508              		.set	.LANCHOR1,. + 0
 1509              		.type	CSWTCH.46, %object
 1510              		.size	CSWTCH.46, 3
 1511              	CSWTCH.46:
 1512 0000 03       		.byte	3
 1513 0001 02       		.byte	2
 1514 0002 01       		.byte	1
 1515              		.section	.rodata._ZL8REG_I_ON,"a",%progbits
 1516              		.align	2
 1517              		.set	.LANCHOR0,. + 0
 1518              		.type	_ZL8REG_I_ON, %object
 1519              		.size	_ZL8REG_I_ON, 16
 1520              	_ZL8REG_I_ON:
 1521 0000 2A       		.byte	42
 1522 0001 2D       		.byte	45
 1523 0002 30       		.byte	48
 1524 0003 33       		.byte	51
 1525 0004 36       		.byte	54
 1526 0005 3B       		.byte	59
 1527 0006 40       		.byte	64
 1528 0007 45       		.byte	69
 1529 0008 4A       		.byte	74
 1530 0009 4D       		.byte	77
 1531 000a 50       		.byte	80
 1532 000b 53       		.byte	83
 1533 000c 56       		.byte	86
 1534 000d 5B       		.byte	91
 1535 000e 60       		.byte	96
 1536 000f 65       		.byte	101
 1537              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
