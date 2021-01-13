ARM GAS  /tmp/ccqjmfWc.s 			page 1


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
  13              		.file	"DriveMovement.cpp"
  14              		.section	.text._ZN13DriveMovement15InitialAllocateEj,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN13DriveMovement15InitialAllocateEj
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN13DriveMovement15InitialAllocateEj, %function
  23              	_ZN13DriveMovement15InitialAllocateEj:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 88B1     		cbz	r0, .L2
  27 0002 70B5     		push	{r4, r5, r6, lr}
  28 0004 0A4E     		ldr	r6, .L13
  29 0006 0B4D     		ldr	r5, .L13+4
  30 0008 0446     		mov	r4, r0
  31              	.L4:
  32 000a 5020     		movs	r0, #80
  33 000c FFF7FEFF 		bl	_Znwj
  34 0010 2B68     		ldr	r3, [r5]
  35 0012 3268     		ldr	r2, [r6]
  36 0014 0260     		str	r2, [r0]
  37 0016 0133     		adds	r3, r3, #1
  38 0018 013C     		subs	r4, r4, #1
  39 001a 3060     		str	r0, [r6]
  40 001c 2B60     		str	r3, [r5]
  41 001e F4D1     		bne	.L4
  42 0020 054A     		ldr	r2, .L13+8
  43 0022 1360     		str	r3, [r2]
  44 0024 70BD     		pop	{r4, r5, r6, pc}
  45              	.L2:
  46 0026 034B     		ldr	r3, .L13+4
  47 0028 034A     		ldr	r2, .L13+8
  48 002a 1B68     		ldr	r3, [r3]
  49 002c 1360     		str	r3, [r2]
  50 002e 7047     		bx	lr
  51              	.L14:
  52              		.align	2
  53              	.L13:
  54 0030 00000000 		.word	.LANCHOR0
  55 0034 00000000 		.word	.LANCHOR1
  56 0038 00000000 		.word	.LANCHOR2
  57              		.size	_ZN13DriveMovement15InitialAllocateEj, .-_ZN13DriveMovement15InitialAllocateEj
ARM GAS  /tmp/ccqjmfWc.s 			page 2


  58              		.section	.text._ZN13DriveMovement8AllocateEj7DMState,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	_ZN13DriveMovement8AllocateEj7DMState
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZN13DriveMovement8AllocateEj7DMState, %function
  67              	_ZN13DriveMovement8AllocateEj7DMState:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 F0B4     		push	{r4, r5, r6, r7}
  72 0002 0A4C     		ldr	r4, .L22
  73 0004 2368     		ldr	r3, [r4]
  74 0006 73B1     		cbz	r3, .L15
  75 0008 094D     		ldr	r5, .L22+4
  76 000a 0A4E     		ldr	r6, .L22+8
  77 000c 1F68     		ldr	r7, [r3]
  78 000e 2A68     		ldr	r2, [r5]
  79 0010 2760     		str	r7, [r4]
  80 0012 3468     		ldr	r4, [r6]
  81 0014 5871     		strb	r0, [r3, #5]
  82 0016 013A     		subs	r2, r2, #1
  83 0018 A242     		cmp	r2, r4
  84 001a 2A60     		str	r2, [r5]
  85 001c B8BF     		it	lt
  86 001e 3260     		strlt	r2, [r6]
  87 0020 0022     		movs	r2, #0
  88 0022 1971     		strb	r1, [r3, #4]
  89 0024 1A60     		str	r2, [r3]
  90              	.L15:
  91 0026 1846     		mov	r0, r3
  92 0028 F0BC     		pop	{r4, r5, r6, r7}
  93 002a 7047     		bx	lr
  94              	.L23:
  95              		.align	2
  96              	.L22:
  97 002c 00000000 		.word	.LANCHOR0
  98 0030 00000000 		.word	.LANCHOR1
  99 0034 00000000 		.word	.LANCHOR2
 100              		.size	_ZN13DriveMovement8AllocateEj7DMState, .-_ZN13DriveMovement8AllocateEj7DMState
 101              		.section	.text._ZN13DriveMovementC2EPS_,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN13DriveMovementC2EPS_
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN13DriveMovementC2EPS_, %function
 110              	_ZN13DriveMovementC2EPS_:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 0160     		str	r1, [r0]
ARM GAS  /tmp/ccqjmfWc.s 			page 3


 115 0002 7047     		bx	lr
 116              		.size	_ZN13DriveMovementC2EPS_, .-_ZN13DriveMovementC2EPS_
 117              		.global	_ZN13DriveMovementC1EPS_
 118              		.thumb_set _ZN13DriveMovementC1EPS_,_ZN13DriveMovementC2EPS_
 119              		.global	__aeabi_f2d
 120              		.global	__aeabi_dmul
 121              		.global	__aeabi_ddiv
 122              		.global	__aeabi_d2ulz
 123              		.global	__aeabi_f2ulz
 124              		.section	.text.hot._ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 132              		.type	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, %function
 133              	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 137 0004 90ED027A 		vldr.32	s14, [r0, #8]	@ int
 138 0008 D1ED2B7A 		vldr.32	s15, [r1, #172]
 139 000c 8368     		ldr	r3, [r0, #8]
 140 000e B8EE477A 		vcvt.f32.u32	s14, s14
 141 0012 2DED028B 		vpush.64	{d8}
 142 0016 87EE278A 		vdiv.f32	s16, s14, s15
 143 001a 0446     		mov	r4, r0
 144 001c 0D46     		mov	r5, r1
 145 001e 1746     		mov	r7, r2
 146 0020 5E1C     		adds	r6, r3, #1
 147 0022 D1ED2C8A 		vldr.32	s17, [r1, #176]
 148 0026 18EE100A 		vmov	r0, s16
 149 002a FFF7FEFF 		bl	__aeabi_f2d
 150 002e 8046     		mov	r8, r0
 151 0030 18EE900A 		vmov	r0, s17
 152 0034 8946     		mov	r9, r1
 153 0036 FFF7FEFF 		bl	__aeabi_f2d
 154 003a 0246     		mov	r2, r0
 155 003c 0B46     		mov	r3, r1
 156 003e 4046     		mov	r0, r8
 157 0040 4946     		mov	r1, r9
 158 0042 FFF7FEFF 		bl	__aeabi_dmul
 159 0046 0B46     		mov	r3, r1
 160 0048 0246     		mov	r2, r0
 161 004a 2DA1     		adr	r1, .L33+8
 162 004c D1E90001 		ldrd	r0, [r1]
 163 0050 FFF7FEFF 		bl	__aeabi_ddiv
 164 0054 FFF7FEFF 		bl	__aeabi_d2ulz
 165 0058 95ED326A 		vldr.32	s12, [r5, #200]
 166 005c DFED265A 		vldr.32	s11, .L33
 167 0060 D5ED337A 		vldr.32	s15, [r5, #204]
 168 0064 95ED347A 		vldr.32	s14, [r5, #208]
 169 0068 28EE066A 		vmul.f32	s12, s16, s12
 170 006c 68EE277A 		vmul.f32	s15, s16, s15
 171 0070 C5EE866A 		vdiv.f32	s13, s11, s12
ARM GAS  /tmp/ccqjmfWc.s 			page 4


 172 0074 0023     		movs	r3, #0
 173 0076 C4E91133 		strd	r3, r3, [r4, #68]
 174 007a C4E90A01 		strd	r0, [r4, #40]
 175 007e FCEEE77A 		vcvt.u32.f32	s15, s15
 176 0082 FCEEE66A 		vcvt.u32.f32	s13, s13
 177 0086 17EE903A 		vmov	r3, s15	@ int
 178 008a 68EE077A 		vmul.f32	s15, s16, s14
 179 008e B6EE007A 		vmov.f32	s14, #5.0e-1
 180 0092 F4EEC77A 		vcmpe.f32	s15, s14
 181 0096 0133     		adds	r3, r3, #1
 182 0098 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 183 009c A363     		str	r3, [r4, #56]
 184 009e C4ED106A 		vstr.32	s13, [r4, #64]	@ int
 185 00a2 21D4     		bmi	.L32
 186 00a4 D7ED007A 		vldr.32	s15, [r7]
 187 00a8 9FED147A 		vldr.32	s14, .L33+4
 188 00ac 7D68     		ldr	r5, [r7, #4]
 189 00ae 27EE888A 		vmul.f32	s16, s15, s16
 190 00b2 67EE877A 		vmul.f32	s15, s15, s14
 191 00b6 BCEEC88A 		vcvt.u32.f32	s16, s16
 192 00ba C7EEA87A 		vdiv.f32	s15, s15, s17
 193 00be 18EE103A 		vmov	r3, s16	@ int
 194 00c2 0133     		adds	r3, r3, #1
 195 00c4 17EE900A 		vmov	r0, s15
 196 00c8 E363     		str	r3, [r4, #60]
 197 00ca FFF7FEFF 		bl	__aeabi_f2ulz
 198 00ce E5FB0501 		umlal	r0, r1, r5, r5
 199 00d2 C4E90801 		strd	r0, [r4, #32]
 200              	.L28:
 201 00d6 BDEC028B 		vldm	sp!, {d8}
 202 00da 0022     		movs	r2, #0
 203 00dc 0023     		movs	r3, #0
 204 00de C4E90C23 		strd	r2, [r4, #48]
 205 00e2 2661     		str	r6, [r4, #16]
 206 00e4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 207              	.L32:
 208 00e8 0022     		movs	r2, #0
 209 00ea 0023     		movs	r3, #0
 210 00ec E663     		str	r6, [r4, #60]
 211 00ee C4E90823 		strd	r2, [r4, #32]
 212 00f2 F0E7     		b	.L28
 213              	.L34:
 214 00f4 AFF30080 		.align	3
 215              	.L33:
 216 00f8 C0E1644E 		.word	1315234240
 217 00fc E5A2CC53 		.word	1405919973
 218 0100 000062A2 		.word	2724331520
 219 0104 5C947942 		.word	1115264092
 220              		.size	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement20Prepare
 221              		.global	__aeabi_f2lz
 222              		.section	.text.hot._ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/ccqjmfWc.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, %function
 231              	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams:
 232              		@ args = 0, pretend = 0, frame = 8
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 235 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 236 0008 1646     		mov	r6, r2
 237 000a 4279     		ldrb	r2, [r0, #5]	@ zero_extendqisi2
 238 000c 7369     		ldr	r3, [r6, #20]
 239 000e D6ED039A 		vldr.32	s19, [r6, #12]
 240 0012 D6ED068A 		vldr.32	s17, [r6, #24]
 241 0016 96ED04AA 		vldr.32	s20, [r6, #16]
 242 001a 91ED209A 		vldr.32	s18, [r1, #128]
 243 001e 03EB8203 		add	r3, r3, r2, lsl #2
 244 0022 93ED147A 		vldr.32	s14, [r3, #80]
 245 0026 D3ED177A 		vldr.32	s15, [r3, #92]
 246 002a 79EEC79A 		vsub.f32	s19, s19, s14
 247 002e 3AEE67AA 		vsub.f32	s20, s20, s15
 248 0032 E9EEE98A 		vfms.f32	s17, s19, s19
 249 0036 0446     		mov	r4, r0
 250 0038 9548     		ldr	r0, .L63+8
 251 003a D1ED1F7A 		vldr.32	s15, [r1, #124]
 252 003e 0368     		ldr	r3, [r0]	@ unaligned
 253 0040 EAEE4A8A 		vfms.f32	s17, s20, s20
 254 0044 03EB8203 		add	r3, r3, r2, lsl #2
 255 0048 82B0     		sub	sp, sp, #8
 256 004a 2AEE099A 		vmul.f32	s18, s20, s18
 257 004e F5EE408A 		vcmp.f32	s17, #0
 258 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 259 0056 0D46     		mov	r5, r1
 260 0058 93ED6A8A 		vldr.32	s16, [r3, #424]
 261 005c F1EEE8AA 		vsqrt.f32	s21, s17
 262 0060 A7EEA99A 		vfma.f32	s18, s15, s19
 263 0064 00F1FD80 		bmi	.L58
 264              	.L36:
 265 0068 9FED8A7A 		vldr.32	s14, .L63+12
 266 006c 69EE087A 		vmul.f32	s15, s18, s16
 267 0070 28EE077A 		vmul.f32	s14, s16, s14
 268 0074 FEEEEB7A 		vcvt.s32.f32	s15, s15, #9
 269 0078 27EE077A 		vmul.f32	s14, s14, s14
 270 007c 6AEE886A 		vmul.f32	s13, s21, s16
 271 0080 17EE903A 		vmov	r3, s15	@ int
 272 0084 FEEEEB6A 		vcvt.s32.f32	s13, s13, #9
 273 0088 67EE287A 		vmul.f32	s15, s14, s17
 274 008c 5B42     		negs	r3, r3
 275 008e 17EE900A 		vmov	r0, s15
 276 0092 C4ED0E6A 		vstr.32	s13, [r4, #56]	@ int
 277 0096 E363     		str	r3, [r4, #60]
 278 0098 FFF7FEFF 		bl	__aeabi_f2lz
 279 009c C4E90C01 		strd	r0, [r4, #48]
 280 00a0 D5F8B000 		ldr	r0, [r5, #176]	@ float
 281 00a4 FFF7FEFF 		bl	__aeabi_f2d
 282 00a8 8046     		mov	r8, r0
 283 00aa 18EE100A 		vmov	r0, s16
 284 00ae 8946     		mov	r9, r1
 285 00b0 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccqjmfWc.s 			page 6


 286 00b4 0246     		mov	r2, r0
 287 00b6 0B46     		mov	r3, r1
 288 00b8 4046     		mov	r0, r8
 289 00ba 4946     		mov	r1, r9
 290 00bc FFF7FEFF 		bl	__aeabi_dmul
 291 00c0 0246     		mov	r2, r0
 292 00c2 0B46     		mov	r3, r1
 293 00c4 70A1     		adr	r1, .L63
 294 00c6 D1E90001 		ldrd	r0, [r1]
 295 00ca FFF7FEFF 		bl	__aeabi_ddiv
 296 00ce FFF7FEFF 		bl	__aeabi_d2ulz
 297 00d2 96ED077A 		vldr.32	s14, [r6, #28]
 298 00d6 95ED21BA 		vldr.32	s22, [r5, #132]
 299 00da B5EEC07A 		vcmpe.f32	s14, #0
 300 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 301 00e2 C4E90A01 		strd	r0, [r4, #40]
 302 00e6 50D8     		bhi	.L55
 303 00e8 B5EEC0BA 		vcmpe.f32	s22, #0
 304 00ec F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 305 00f0 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 306 00f2 A368     		ldr	r3, [r4, #8]
 307 00f4 ACBF     		ite	ge
 308 00f6 0121     		movge	r1, #1
 309 00f8 0021     		movlt	r1, #0
 310 00fa 61F30412 		bfi	r2, r1, #4, #1
 311 00fe 0133     		adds	r3, r3, #1
 312 0100 A271     		strb	r2, [r4, #6]
 313 0102 2361     		str	r3, [r4, #16]
 314              	.L39:
 315 0104 95ED326A 		vldr.32	s12, [r5, #200]
 316 0108 9FED635A 		vldr.32	s10, .L63+16
 317 010c D5ED337A 		vldr.32	s15, [r5, #204]
 318 0110 95ED347A 		vldr.32	s14, [r5, #208]
 319 0114 DFED5F5A 		vldr.32	s11, .L63+12
 320 0118 28EE066A 		vmul.f32	s12, s16, s12
 321 011c 68EE277A 		vmul.f32	s15, s16, s15
 322 0120 C5EE066A 		vdiv.f32	s13, s10, s12
 323 0124 67EEA57A 		vmul.f32	s15, s15, s11
 324 0128 28EE077A 		vmul.f32	s14, s16, s14
 325 012c B6EE006A 		vmov.f32	s12, #5.0e-1
 326 0130 FCEEE66A 		vcvt.u32.f32	s13, s13
 327 0134 FCEEE77A 		vcvt.u32.f32	s15, s15
 328 0138 B4EEC67A 		vcmpe.f32	s14, s12
 329 013c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 330 0140 C4ED126A 		vstr.32	s13, [r4, #72]	@ int
 331 0144 C4ED107A 		vstr.32	s15, [r4, #64]	@ int
 332 0148 48D4     		bmi	.L59
 333 014a D6ED007A 		vldr.32	s15, [r6]
 334 014e DFED536A 		vldr.32	s13, .L63+20
 335 0152 95ED2C7A 		vldr.32	s14, [r5, #176]
 336 0156 7568     		ldr	r5, [r6, #4]
 337 0158 27EE888A 		vmul.f32	s16, s15, s16
 338 015c 67EEA67A 		vmul.f32	s15, s15, s13
 339 0160 28EE258A 		vmul.f32	s16, s16, s11
 340 0164 C7EE877A 		vdiv.f32	s15, s15, s14
 341 0168 BCEEC88A 		vcvt.u32.f32	s16, s16
 342 016c 17EE900A 		vmov	r0, s15
ARM GAS  /tmp/ccqjmfWc.s 			page 7


 343 0170 84ED118A 		vstr.32	s16, [r4, #68]	@ int
 344 0174 FFF7FEFF 		bl	__aeabi_f2ulz
 345 0178 E5FB0501 		umlal	r0, r1, r5, r5
 346 017c C4E90801 		strd	r0, [r4, #32]
 347 0180 02B0     		add	sp, sp, #8
 348              		@ sp needed
 349 0182 BDEC088B 		vldm	sp!, {d8-d11}
 350 0186 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 351              	.L55:
 352 018a D5ED1F7A 		vldr.32	s15, [r5, #124]
 353 018e D5ED206A 		vldr.32	s13, [r5, #128]
 354 0192 96ED080A 		vldr.32	s0, [r6, #32]
 355 0196 27EECAAA 		vnmul.f32	s20, s15, s20
 356 019a A6EEA9AA 		vfma.f32	s20, s13, s19
 357 019e AAEE4A0A 		vfms.f32	s0, s20, s20
 358 01a2 B5EE400A 		vcmp.f32	s0, #0
 359 01a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 360 01aa F1EEC09A 		vsqrt.f32	s19, s0
 361 01ae 5DD4     		bmi	.L60
 362              	.L40:
 363 01b0 F0EE496A 		vmov.f32	s13, s18
 364 01b4 D9EE8B6A 		vfnms.f32	s13, s19, s22
 365 01b8 C6EE877A 		vdiv.f32	s15, s13, s14
 366 01bc F5EEC07A 		vcmpe.f32	s15, #0
 367 01c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 368 01c4 06DD     		ble	.L41
 369 01c6 D5ED2B6A 		vldr.32	s13, [r5, #172]
 370 01ca F4EEE76A 		vcmpe.f32	s13, s15
 371 01ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 372 01d2 0FDC     		bgt	.L61
 373              	.L41:
 374 01d4 A368     		ldr	r3, [r4, #8]
 375 01d6 0133     		adds	r3, r3, #1
 376 01d8 2361     		str	r3, [r4, #16]
 377 01da 93E7     		b	.L39
 378              	.L59:
 379 01dc 4FF0FF31 		mov	r1, #-1
 380 01e0 0022     		movs	r2, #0
 381 01e2 0023     		movs	r3, #0
 382 01e4 6164     		str	r1, [r4, #68]
 383 01e6 C4E90823 		strd	r2, [r4, #32]
 384 01ea 02B0     		add	sp, sp, #8
 385              		@ sp needed
 386 01ec BDEC088B 		vldm	sp!, {d8-d11}
 387 01f0 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 388              	.L61:
 389 01f4 77EEA76A 		vadd.f32	s13, s15, s15
 390 01f8 27EEE76A 		vnmul.f32	s12, s15, s15
 391 01fc E6EEC98A 		vfms.f32	s17, s13, s18
 392 0200 D5ED216A 		vldr.32	s13, [r5, #132]
 393 0204 E6EE078A 		vfma.f32	s17, s12, s14
 394 0208 67EEA67A 		vmul.f32	s15, s15, s13
 395 020c F5EE408A 		vcmp.f32	s17, #0
 396 0210 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 397 0214 B1EEE89A 		vsqrt.f32	s18, s17
 398 0218 2DD4     		bmi	.L62
 399              	.L44:
ARM GAS  /tmp/ccqjmfWc.s 			page 8


 400 021a A268     		ldr	r2, [r4, #8]
 401 021c 77EE897A 		vadd.f32	s15, s15, s18
 402 0220 77EEEA7A 		vsub.f32	s15, s15, s21
 403 0224 67EE887A 		vmul.f32	s15, s15, s16
 404 0228 FDEEE77A 		vcvt.s32.f32	s15, s15
 405 022c 17EE903A 		vmov	r3, s15	@ int
 406 0230 002B     		cmp	r3, #0
 407 0232 0ADD     		ble	.L45
 408 0234 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 409 0236 C806     		lsls	r0, r1, #27
 410 0238 0AD5     		bpl	.L46
 411 023a 9342     		cmp	r3, r2
 412 023c 05D9     		bls	.L45
 413 023e C2EB4302 		rsb	r2, r2, r3, lsl #1
 414 0242 0133     		adds	r3, r3, #1
 415 0244 A260     		str	r2, [r4, #8]
 416 0246 2361     		str	r3, [r4, #16]
 417 0248 5CE7     		b	.L39
 418              	.L45:
 419 024a 0132     		adds	r2, r2, #1
 420 024c 2261     		str	r2, [r4, #16]
 421 024e 59E7     		b	.L39
 422              	.L46:
 423 0250 02EB4302 		add	r2, r2, r3, lsl #1
 424 0254 41F01001 		orr	r1, r1, #16
 425 0258 0133     		adds	r3, r3, #1
 426 025a A171     		strb	r1, [r4, #6]
 427 025c A260     		str	r2, [r4, #8]
 428 025e 2361     		str	r3, [r4, #16]
 429 0260 50E7     		b	.L39
 430              	.L58:
 431 0262 B0EE680A 		vmov.f32	s0, s17
 432 0266 FFF7FEFF 		bl	sqrtf
 433 026a FDE6     		b	.L36
 434              	.L60:
 435 026c FFF7FEFF 		bl	sqrtf
 436 0270 96ED077A 		vldr.32	s14, [r6, #28]
 437 0274 9CE7     		b	.L40
 438              	.L62:
 439 0276 B0EE680A 		vmov.f32	s0, s17
 440 027a CDED017A 		vstr.32	s15, [sp, #4]	@ int
 441 027e FFF7FEFF 		bl	sqrtf
 442 0282 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 443 0286 C8E7     		b	.L44
 444              	.L64:
 445              		.align	3
 446              	.L63:
 447 0288 000062A2 		.word	2724331520
 448 028c 5C947942 		.word	1115264092
 449 0290 00000000 		.word	reprap
 450 0294 00000044 		.word	1140850688
 451 0298 C0E1644E 		.word	1315234240
 452 029c E5A2CC53 		.word	1405919973
 453              		.size	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement16PrepareDelt
 454              		.global	__aeabi_uldivmod
 455              		.section	.text.hot._ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb,"ax",%progbits
 456              		.align	1
ARM GAS  /tmp/ccqjmfWc.s 			page 9


 457              		.p2align 2,,3
 458              		.global	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, %function
 464              	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb:
 465              		@ args = 0, pretend = 0, frame = 16
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 468 0004 2DED068B 		vpush.64	{d8, d9, d10}
 469 0008 DFF8EC92 		ldr	r9, .L97+24
 470 000c 90F80580 		ldrb	r8, [r0, #5]	@ zero_extendqisi2
 471 0010 D9F81050 		ldr	r5, [r9, #16]
 472 0014 0F46     		mov	r7, r1
 473 0016 0446     		mov	r4, r0
 474 0018 D9F80000 		ldr	r0, [r9]
 475 001c BE7A     		ldrb	r6, [r7, #10]	@ zero_extendqisi2
 476 001e 01EB8801 		add	r1, r1, r8, lsl #2
 477 0022 D1ED1F8A 		vldr.32	s17, [r1, #124]
 478 0026 D5F89812 		ldr	r1, [r5, #664]
 479 002a 00EB8805 		add	r5, r0, r8, lsl #2
 480 002e D5ED6A7A 		vldr.32	s15, [r5, #424]
 481 0032 B0EEE88A 		vabs.f32	s16, s17
 482 0036 9A46     		mov	r10, r3
 483 0038 3307     		lsls	r3, r6, #28
 484 003a 87B0     		sub	sp, sp, #28
 485 003c 1546     		mov	r5, r2
 486 003e 28EE278A 		vmul.f32	s16, s16, s15
 487 0042 A8EB0108 		sub	r8, r8, r1
 488 0046 00F1E980 		bmi	.L66
 489 004a 97ED2B7A 		vldr.32	s14, [r7, #172]
 490              	.L67:
 491 004e BAF1000F 		cmp	r10, #0
 492 0052 37D0     		beq	.L72
 493 0054 F5EEC08A 		vcmpe.f32	s17, #0
 494 0058 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 495 005c 32DD     		ble	.L72
 496 005e B8F1080F 		cmp	r8, #8
 497 0062 40F21281 		bls	.L93
 498 0066 DFEDA06A 		vldr.32	s13, .L97+8
 499 006a 0023     		movs	r3, #0
 500 006c B0EE66AA 		vmov.f32	s20, s13
 501              	.L74:
 502 0070 D7ED305A 		vldr.32	s11, [r7, #192]
 503 0074 D7ED329A 		vldr.32	s19, [r7, #200]
 504 0078 97ED316A 		vldr.32	s12, [r7, #196]
 505 007c D7ED337A 		vldr.32	s15, [r7, #204]
 506 0080 95ED025A 		vldr.32	s10, [r5, #8]
 507 0084 6364     		str	r3, [r4, #68]
 508 0086 79EEE58A 		vsub.f32	s17, s19, s11
 509 008a 36EE656A 		vsub.f32	s12, s12, s11
 510 008e 68EE8A8A 		vmul.f32	s17, s17, s20
 511 0092 A6EE0A7A 		vfma.f32	s14, s12, s20
 512 0096 78EEA77A 		vadd.f32	s15, s17, s15
 513 009a 66EE856A 		vmul.f32	s13, s13, s10
ARM GAS  /tmp/ccqjmfWc.s 			page 10


 514 009e 67EE887A 		vmul.f32	s15, s15, s16
 515 00a2 27EE087A 		vmul.f32	s14, s14, s16
 516 00a6 FCEEE77A 		vcvt.u32.f32	s15, s15
 517 00aa FCEEE66A 		vcvt.u32.f32	s13, s13
 518 00ae 17EE903A 		vmov	r3, s15	@ int
 519 00b2 FDEEC77A 		vcvt.s32.f32	s15, s14
 520 00b6 0133     		adds	r3, r3, #1
 521 00b8 A363     		str	r3, [r4, #56]
 522 00ba 17EE906A 		vmov	r6, s15	@ int
 523 00be C4ED126A 		vstr.32	s13, [r4, #72]	@ int
 524 00c2 18E0     		b	.L75
 525              	.L72:
 526 00c4 D7ED337A 		vldr.32	s15, [r7, #204]
 527 00c8 D7ED329A 		vldr.32	s19, [r7, #200]
 528 00cc DFED868A 		vldr.32	s17, .L97+8
 529 00d0 68EE277A 		vmul.f32	s15, s16, s15
 530 00d4 28EE077A 		vmul.f32	s14, s16, s14
 531 00d8 FCEEE77A 		vcvt.u32.f32	s15, s15
 532 00dc 0022     		movs	r2, #0
 533 00de 17EE903A 		vmov	r3, s15	@ int
 534 00e2 FDEEC77A 		vcvt.s32.f32	s15, s14
 535 00e6 C4E91122 		strd	r2, r2, [r4, #68]
 536 00ea 0133     		adds	r3, r3, #1
 537 00ec 17EE906A 		vmov	r6, s15	@ int
 538 00f0 B0EE68AA 		vmov.f32	s20, s17
 539 00f4 A363     		str	r3, [r4, #56]
 540              	.L75:
 541 00f6 18EE100A 		vmov	r0, s16
 542 00fa FFF7FEFF 		bl	__aeabi_f2d
 543 00fe 97ED2C9A 		vldr.32	s18, [r7, #176]
 544 0102 8046     		mov	r8, r0
 545 0104 19EE100A 		vmov	r0, s18
 546 0108 8946     		mov	r9, r1
 547 010a FFF7FEFF 		bl	__aeabi_f2d
 548 010e 0246     		mov	r2, r0
 549 0110 0B46     		mov	r3, r1
 550 0112 4046     		mov	r0, r8
 551 0114 4946     		mov	r1, r9
 552 0116 FFF7FEFF 		bl	__aeabi_dmul
 553 011a 0246     		mov	r2, r0
 554 011c 0B46     		mov	r3, r1
 555 011e 70A1     		adr	r1, .L97
 556 0120 D1E90001 		ldrd	r0, [r1]
 557 0124 FFF7FEFF 		bl	__aeabi_ddiv
 558 0128 FFF7FEFF 		bl	__aeabi_d2ulz
 559 012c 68EE296A 		vmul.f32	s13, s16, s19
 560 0130 9FED6E6A 		vldr.32	s12, .L97+12
 561 0134 D7ED347A 		vldr.32	s15, [r7, #208]
 562 0138 A062     		str	r0, [r4, #40]
 563 013a 86EE267A 		vdiv.f32	s14, s12, s13
 564 013e 8246     		mov	r10, r0
 565 0140 8B46     		mov	fp, r1
 566 0142 E162     		str	r1, [r4, #44]
 567 0144 68EE277A 		vmul.f32	s15, s16, s15
 568 0148 F6EE006A 		vmov.f32	s13, #5.0e-1
 569 014c BCEEC77A 		vcvt.u32.f32	s14, s14
 570 0150 F4EEE67A 		vcmpe.f32	s15, s13
ARM GAS  /tmp/ccqjmfWc.s 			page 11


 571 0154 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 572 0158 84ED107A 		vstr.32	s14, [r4, #64]	@ int
 573 015c 10D5     		bpl	.L91
 574 015e 26EAE671 		bic	r1, r6, r6, asr #31
 575 0162 0022     		movs	r2, #0
 576 0164 0136     		adds	r6, r6, #1
 577 0166 0023     		movs	r3, #0
 578 0168 A160     		str	r1, [r4, #8]
 579 016a 2661     		str	r6, [r4, #16]
 580 016c E663     		str	r6, [r4, #60]
 581 016e C4E90C23 		strd	r2, [r4, #48]
 582 0172 C4E90823 		strd	r2, [r4, #32]
 583 0176 07B0     		add	sp, sp, #28
 584              		@ sp needed
 585 0178 BDEC068B 		vldm	sp!, {d8-d10}
 586 017c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 587              	.L91:
 588 0180 95ED007A 		vldr.32	s14, [r5]
 589 0184 DFED5A7A 		vldr.32	s15, .L97+16
 590 0188 6B68     		ldr	r3, [r5, #4]
 591 018a 626C     		ldr	r2, [r4, #68]
 592 018c 78EE878A 		vadd.f32	s17, s17, s14
 593 0190 A3EB0208 		sub	r8, r3, r2
 594 0194 28EE888A 		vmul.f32	s16, s17, s16
 595 0198 68EEA78A 		vmul.f32	s17, s17, s15
 596 019c FCEEC87A 		vcvt.u32.f32	s15, s16
 597 01a0 17EE905A 		vmov	r5, s15	@ int
 598 01a4 C8EE897A 		vdiv.f32	s15, s17, s18
 599 01a8 6B1C     		adds	r3, r5, #1
 600 01aa E363     		str	r3, [r4, #60]
 601 01ac 29EE0A9A 		vmul.f32	s18, s18, s20
 602 01b0 17EE900A 		vmov	r0, s15
 603 01b4 FFF7FEFF 		bl	__aeabi_f2ulz
 604 01b8 B4EEE99A 		vcmpe.f32	s18, s19
 605 01bc C8FB0801 		smlal	r0, r1, r8, r8
 606 01c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 607 01c4 8046     		mov	r8, r0
 608 01c6 8946     		mov	r9, r1
 609 01c8 C4E90801 		strd	r0, [r4, #32]
 610 01cc 19DD     		ble	.L94
 611 01ce D7ED317A 		vldr.32	s15, [r7, #196]
 612 01d2 F4EEC97A 		vcmpe.f32	s15, s18
 613 01d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 614 01da 01D5     		bpl	.L80
 615              	.L96:
 616 01dc AE42     		cmp	r6, r5
 617 01de 63DB     		blt	.L95
 618              	.L80:
 619 01e0 B542     		cmp	r5, r6
 620 01e2 A8BF     		it	ge
 621 01e4 3546     		movge	r5, r6
 622 01e6 0022     		movs	r2, #0
 623 01e8 0023     		movs	r3, #0
 624 01ea C4E90C23 		strd	r2, [r4, #48]
 625 01ee 6B1C     		adds	r3, r5, #1
 626 01f0 25EAE575 		bic	r5, r5, r5, asr #31
 627 01f4 2361     		str	r3, [r4, #16]
ARM GAS  /tmp/ccqjmfWc.s 			page 12


 628 01f6 A560     		str	r5, [r4, #8]
 629 01f8 07B0     		add	sp, sp, #28
 630              		@ sp needed
 631 01fa BDEC068B 		vldm	sp!, {d8-d10}
 632 01fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 633              	.L94:
 634 0202 5246     		mov	r2, r10
 635 0204 5B46     		mov	r3, fp
 636 0206 FFF7FEFF 		bl	__aeabi_uldivmod
 637 020a D7ED317A 		vldr.32	s15, [r7, #196]
 638 020e F4EEC97A 		vcmpe.f32	s15, s18
 639 0212 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 640 0216 0546     		mov	r5, r0
 641 0218 E2D5     		bpl	.L80
 642 021a DFE7     		b	.L96
 643              	.L66:
 644 021c 05AB     		add	r3, sp, #20
 645 021e 0093     		str	r3, [sp]
 646 0220 03AA     		add	r2, sp, #12
 647 0222 04AB     		add	r3, sp, #16
 648 0224 4146     		mov	r1, r8
 649 0226 FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 650 022a 97ED2B7A 		vldr.32	s14, [r7, #172]
 651 022e 0028     		cmp	r0, #0
 652 0230 3FF40DAF 		beq	.L67
 653 0234 DFED2F7A 		vldr.32	s15, .L97+20
 654 0238 97ED366A 		vldr.32	s12, [r7, #216]	@ int
 655 023c 9DED044A 		vldr.32	s8, [sp, #16]
 656 0240 DDED034A 		vldr.32	s9, [sp, #12]
 657 0244 DDED056A 		vldr.32	s13, [sp, #20]
 658 0248 27EE285A 		vmul.f32	s10, s14, s17
 659 024c F8EE465A 		vcvt.f32.u32	s11, s12
 660 0250 25EE275A 		vmul.f32	s10, s10, s15
 661 0254 85EE256A 		vdiv.f32	s12, s10, s11
 662 0258 66EE067A 		vmul.f32	s15, s12, s12
 663 025c 67EE847A 		vmul.f32	s15, s15, s8
 664 0260 E4EE867A 		vfma.f32	s15, s9, s12
 665 0264 F4EE677A 		vcmp.f32	s15, s15
 666 0268 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 667 026c 32D6     		bvs	.L82
 668 026e F4EE667A 		vcmp.f32	s15, s13
 669 0272 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 670 0276 48BF     		it	mi
 671 0278 F0EE676A 		vmovmi.f32	s13, s15
 672              	.L70:
 673 027c F7EE007A 		vmov.f32	s15, #1.0e+0
 674 0280 76EEA76A 		vadd.f32	s13, s13, s15
 675 0284 28EE268A 		vmul.f32	s16, s16, s13
 676 0288 E1E6     		b	.L67
 677              	.L93:
 678 028a D9F80010 		ldr	r1, [r9]
 679 028e DFED196A 		vldr.32	s13, .L97+20
 680 0292 01EB8801 		add	r1, r1, r8, lsl #2
 681 0296 91ED82AA 		vldr.32	s20, [r1, #520]
 682 029a 6AEE266A 		vmul.f32	s13, s20, s13
 683 029e FCEEE67A 		vcvt.u32.f32	s15, s13
 684 02a2 17EE903A 		vmov	r3, s15	@ int
ARM GAS  /tmp/ccqjmfWc.s 			page 13


 685 02a6 E3E6     		b	.L74
 686              	.L95:
 687 02a8 6900     		lsls	r1, r5, #1
 688 02aa A1FB0A23 		umull	r2, r3, r1, r10
 689 02ae B2EB0808 		subs	r8, r2, r8
 690 02b2 01FB0B33 		mla	r3, r1, fp, r3
 691 02b6 A1EB0606 		sub	r6, r1, r6
 692 02ba 05F10105 		add	r5, r5, #1
 693 02be 63EB0909 		sbc	r9, r3, r9
 694 02c2 A660     		str	r6, [r4, #8]
 695 02c4 2561     		str	r5, [r4, #16]
 696 02c6 C4E90C89 		strd	r8, [r4, #48]
 697 02ca 07B0     		add	sp, sp, #28
 698              		@ sp needed
 699 02cc BDEC068B 		vldm	sp!, {d8-d10}
 700 02d0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 701              	.L82:
 702 02d4 F0EE676A 		vmov.f32	s13, s15
 703 02d8 D0E7     		b	.L70
 704              	.L98:
 705 02da 00BFAFF3 		.align	3
 705      0080
 706              	.L97:
 707 02e0 000062A2 		.word	2724331520
 708 02e4 5C947942 		.word	1115264092
 709 02e8 00000000 		.word	0
 710 02ec C0E1644E 		.word	1315234240
 711 02f0 E5A2CC53 		.word	1405919973
 712 02f4 C0E16449 		.word	1231348160
 713 02f8 00000000 		.word	reprap
 714              		.size	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, .-_ZN13DriveMovement15PrepareExt
 715              		.section	.text._ZNK13DriveMovement10DebugPrintEcb,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZNK13DriveMovement10DebugPrintEcb
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv4-sp-d16
 723              		.type	_ZNK13DriveMovement10DebugPrintEcb, %function
 724              	_ZNK13DriveMovement10DebugPrintEcb:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 728 0004 0579     		ldrb	r5, [r0, #4]	@ zero_extendqisi2
 729 0006 89B0     		sub	sp, sp, #36
 730 0008 002D     		cmp	r5, #0
 731 000a 4AD0     		beq	.L100
 732 000c 0446     		mov	r4, r0
 733 000e D4E90867 		ldrd	r6, [r4, #32]
 734 0012 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 735 0014 2648     		ldr	r0, .L109
 736 0016 CDE90467 		strd	r6, [sp, #16]
 737 001a A669     		ldr	r6, [r4, #24]
 738 001c 0396     		str	r6, [sp, #12]
 739 001e 2669     		ldr	r6, [r4, #16]
 740 0020 0296     		str	r6, [sp, #8]
ARM GAS  /tmp/ccqjmfWc.s 			page 14


 741 0022 E668     		ldr	r6, [r4, #12]
 742 0024 0196     		str	r6, [sp, #4]
 743 0026 9046     		mov	r8, r2
 744 0028 224A     		ldr	r2, .L109+4
 745 002a A668     		ldr	r6, [r4, #8]
 746 002c 0096     		str	r6, [sp]
 747 002e 13F0100F 		tst	r3, #16
 748 0032 0CBF     		ite	eq
 749 0034 4223     		moveq	r3, #66
 750 0036 4623     		movne	r3, #70
 751 0038 022D     		cmp	r5, #2
 752 003a 18BF     		it	ne
 753 003c 0246     		movne	r2, r0
 754 003e 1E48     		ldr	r0, .L109+8
 755 0040 FFF7FEFF 		bl	debugPrintf
 756 0044 B8F1000F 		cmp	r8, #0
 757 0048 15D1     		bne	.L108
 758 004a D4E90C67 		ldrd	r6, [r4, #48]
 759 004e D4E90A89 		ldrd	r8, [r4, #40]
 760 0052 D4E90E12 		ldrd	r1, r2, [r4, #56]
 761 0056 CDE90467 		strd	r6, [sp, #16]
 762 005a A36C     		ldr	r3, [r4, #72]
 763 005c 0793     		str	r3, [sp, #28]
 764 005e D4E91030 		ldrd	r3, r0, [r4, #64]
 765 0062 CDE90089 		strd	r8, [sp]
 766 0066 0690     		str	r0, [sp, #24]
 767 0068 0293     		str	r3, [sp, #8]
 768 006a 1448     		ldr	r0, .L109+12
 769 006c FFF7FEFF 		bl	debugPrintf
 770 0070 09B0     		add	sp, sp, #36
 771              		@ sp needed
 772 0072 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 773              	.L108:
 774 0076 D4E90A67 		ldrd	r6, [r4, #40]
 775 007a D4E90C89 		ldrd	r8, [r4, #48]
 776 007e D4E90E12 		ldrd	r1, r2, [r4, #56]
 777 0082 CDE90267 		strd	r6, [sp, #8]
 778 0086 A36C     		ldr	r3, [r4, #72]
 779 0088 0693     		str	r3, [sp, #24]
 780 008a D4E91030 		ldrd	r3, r0, [r4, #64]
 781 008e CDE90089 		strd	r8, [sp]
 782 0092 0590     		str	r0, [sp, #20]
 783 0094 0493     		str	r3, [sp, #16]
 784 0096 0A48     		ldr	r0, .L109+16
 785 0098 FFF7FEFF 		bl	debugPrintf
 786 009c 09B0     		add	sp, sp, #36
 787              		@ sp needed
 788 009e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 789              	.L100:
 790 00a2 0848     		ldr	r0, .L109+20
 791 00a4 09B0     		add	sp, sp, #36
 792              		@ sp needed
 793 00a6 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 794 00aa FFF7FEBF 		b	debugPrintf
 795              	.L110:
 796 00ae 00BF     		.align	2
 797              	.L109:
ARM GAS  /tmp/ccqjmfWc.s 			page 15


 798 00b0 08000000 		.word	.LC1
 799 00b4 00000000 		.word	.LC0
 800 00b8 0C000000 		.word	.LC2
 801 00bc D0000000 		.word	.LC4
 802 00c0 54000000 		.word	.LC3
 803 00c4 50010000 		.word	.LC5
 804              		.size	_ZNK13DriveMovement10DebugPrintEcb, .-_ZNK13DriveMovement10DebugPrintEcb
 805              		.section	.text.hot._ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.global	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 809              		.syntax unified
 810              		.thumb
 811              		.thumb_func
 812              		.fpu fpv4-sp-d16
 813              		.type	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, %function
 814              	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb:
 815              		@ args = 0, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 8369     		ldr	r3, [r0, #24]
 818 0002 242B     		cmp	r3, #36
 819 0004 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 820 0008 0446     		mov	r4, r0
 821 000a 8846     		mov	r8, r1
 822 000c C568     		ldr	r5, [r0, #12]
 823 000e 15D8     		bhi	.L127
 824 0010 0169     		ldr	r1, [r0, #16]
 825 0012 8668     		ldr	r6, [r0, #8]
 826 0014 A942     		cmp	r1, r5
 827 0016 02D3     		bcc	.L113
 828 0018 8E42     		cmp	r6, r1
 829 001a 28BF     		it	cs
 830 001c 0E46     		movcs	r6, r1
 831              	.L113:
 832 001e 082B     		cmp	r3, #8
 833 0020 A6EB0506 		sub	r6, r6, r5
 834 0024 59D8     		bhi	.L114
 835 0026 082E     		cmp	r6, #8
 836 0028 00F29E80 		bhi	.L134
 837              	.L115:
 838 002c 042E     		cmp	r6, #4
 839 002e 56D9     		bls	.L116
 840 0030 4FF0030C 		mov	ip, #3
 841 0034 6544     		add	r5, r5, ip
 842 0036 6346     		mov	r3, ip
 843 0038 0226     		movs	r6, #2
 844 003a 03E0     		b	.L112
 845              	.L127:
 846 003c 4FF0000C 		mov	ip, #0
 847 0040 6346     		mov	r3, ip
 848 0042 6646     		mov	r6, ip
 849              	.L112:
 850 0044 A16B     		ldr	r1, [r4, #56]
 851 0046 E371     		strb	r3, [r4, #7]
 852 0048 A942     		cmp	r1, r5
 853 004a 53D8     		bhi	.L135
 854              	.L117:
ARM GAS  /tmp/ccqjmfWc.s 			page 16


 855 004c E36B     		ldr	r3, [r4, #60]
 856 004e AB42     		cmp	r3, r5
 857 0050 25D9     		bls	.L119
 858 0052 206C     		ldr	r0, [r4, #64]
 859 0054 D8F8E830 		ldr	r3, [r8, #232]
 860 0058 A26C     		ldr	r2, [r4, #72]
 861 005a A5FB0001 		umull	r0, r1, r5, r0
 862 005e 870A     		lsrs	r7, r0, #10
 863 0060 47EA8157 		orr	r7, r7, r1, lsl #22
 864 0064 3B44     		add	r3, r3, r7
 865 0066 9F1A     		subs	r7, r3, r2
 866              	.L118:
 867 0068 6369     		ldr	r3, [r4, #20]
 868 006a BB42     		cmp	r3, r7
 869 006c 56D2     		bcs	.L128
 870              	.L137:
 871 006e FB1A     		subs	r3, r7, r3
 872 0070 D8F8D820 		ldr	r2, [r8, #216]
 873 0074 23FA06F6 		lsr	r6, r3, r6
 874 0078 0CFB1673 		mls	r3, ip, r6, r7
 875 007c BA42     		cmp	r2, r7
 876 007e C4E90536 		strd	r3, r6, [r4, #20]
 877 0082 53D2     		bcs	.L129
 878              	.L138:
 879 0084 D4E90201 		ldrd	r0, r1, [r4, #8]
 880 0088 0131     		adds	r1, r1, #1
 881 008a 8142     		cmp	r1, r0
 882 008c 51D2     		bcs	.L136
 883 008e 434A     		ldr	r2, .L140
 884 0090 0221     		movs	r1, #2
 885 0092 1A44     		add	r2, r2, r3
 886 0094 A261     		str	r2, [r4, #24]
 887 0096 2171     		strb	r1, [r4, #4]
 888 0098 0020     		movs	r0, #0
 889 009a BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 890              	.L119:
 891 009e 2369     		ldr	r3, [r4, #16]
 892 00a0 AB42     		cmp	r3, r5
 893 00a2 4AD9     		bls	.L120
 894 00a4 D4E90A01 		ldrd	r0, r1, [r4, #40]
 895 00a8 A0FB05AB 		umull	r10, fp, r0, r5
 896 00ac 05FB01BB 		mla	fp, r5, r1, fp
 897 00b0 D4E90801 		ldrd	r0, [r4, #32]
 898 00b4 D8F8E420 		ldr	r2, [r8, #228]
 899 00b8 636C     		ldr	r3, [r4, #68]
 900 00ba 8B45     		cmp	fp, r1
 901 00bc 08BF     		it	eq
 902 00be 8245     		cmpeq	r10, r0
 903 00c0 A2EB0307 		sub	r7, r2, r3
 904 00c4 D0D2     		bcs	.L118
 905 00c6 B0EB0A00 		subs	r0, r0, r10
 906 00ca 61EB0B01 		sbc	r1, r1, fp
 907 00ce FFF7FEFF 		bl	_Z7isqrt64y
 908 00d2 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 909 00d6 3F1A     		subs	r7, r7, r0
 910 00d8 C6E7     		b	.L118
 911              	.L114:
ARM GAS  /tmp/ccqjmfWc.s 			page 17


 912 00da 112B     		cmp	r3, #17
 913 00dc A6D9     		bls	.L115
 914              	.L116:
 915 00de 022E     		cmp	r6, #2
 916 00e0 94BF     		ite	ls
 917 00e2 0026     		movls	r6, #0
 918 00e4 0126     		movhi	r6, #1
 919 00e6 A16B     		ldr	r1, [r4, #56]
 920 00e8 3544     		add	r5, r5, r6
 921 00ea 3346     		mov	r3, r6
 922 00ec A942     		cmp	r1, r5
 923 00ee B446     		mov	ip, r6
 924 00f0 E371     		strb	r3, [r4, #7]
 925 00f2 ABD9     		bls	.L117
 926              	.L135:
 927 00f4 D4E90A07 		ldrd	r0, r7, [r4, #40]
 928 00f8 D8F8E030 		ldr	r3, [r8, #224]
 929 00fc 626C     		ldr	r2, [r4, #68]
 930 00fe A0FB0501 		umull	r0, r1, r0, r5
 931 0102 05FB0711 		mla	r1, r5, r7, r1
 932 0106 9F18     		adds	r7, r3, r2
 933 0108 E7FB0701 		umlal	r0, r1, r7, r7
 934 010c FFF7FEFF 		bl	_Z7isqrt64y
 935 0110 6369     		ldr	r3, [r4, #20]
 936 0112 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 937 0116 C71B     		subs	r7, r0, r7
 938 0118 BB42     		cmp	r3, r7
 939 011a A8D3     		bcc	.L137
 940              	.L128:
 941 011c D8F8D820 		ldr	r2, [r8, #216]
 942 0120 3B46     		mov	r3, r7
 943 0122 0026     		movs	r6, #0
 944 0124 BA42     		cmp	r2, r7
 945 0126 C4E90536 		strd	r3, r6, [r4, #20]
 946 012a ABD3     		bcc	.L138
 947              	.L129:
 948 012c 0120     		movs	r0, #1
 949 012e BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 950              	.L136:
 951 0132 6261     		str	r2, [r4, #20]
 952 0134 0120     		movs	r0, #1
 953 0136 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 954              	.L120:
 955 013a 1BD0     		beq	.L139
 956              	.L122:
 957 013c D4E90A03 		ldrd	r0, r3, [r4, #40]
 958 0140 A0FB05AB 		umull	r10, fp, r0, r5
 959 0144 05FB03BB 		mla	fp, r5, r3, fp
 960 0148 D4E90C23 		ldrd	r2, [r4, #48]
 961 014c BAEB0200 		subs	r0, r10, r2
 962 0150 D8F8E470 		ldr	r7, [r8, #228]
 963 0154 6BEB0301 		sbc	r1, fp, r3
 964 0158 636C     		ldr	r3, [r4, #68]
 965 015a FF1A     		subs	r7, r7, r3
 966 015c FFF7FEFF 		bl	_Z7isqrt64y
 967 0160 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 968 0164 0744     		add	r7, r7, r0
ARM GAS  /tmp/ccqjmfWc.s 			page 18


 969 0166 7FE7     		b	.L118
 970              	.L134:
 971 0168 4FF0070C 		mov	ip, #7
 972 016c 6544     		add	r5, r5, ip
 973 016e 6346     		mov	r3, ip
 974 0170 0326     		movs	r6, #3
 975 0172 67E7     		b	.L112
 976              	.L139:
 977 0174 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 978 0176 83F01001 		eor	r1, r3, #16
 979 017a C1F30011 		ubfx	r1, r1, #4, #1
 980 017e 61F30413 		bfi	r3, r1, #4, #1
 981 0182 A371     		strb	r3, [r4, #6]
 982 0184 002A     		cmp	r2, #0
 983 0186 D9D0     		beq	.L122
 984 0188 DAB2     		uxtb	r2, r3
 985 018a 054B     		ldr	r3, .L140+4
 986 018c 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 987 018e 1868     		ldr	r0, [r3]
 988 0190 C2F30012 		ubfx	r2, r2, #4, #1
 989 0194 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 990 0198 D0E7     		b	.L122
 991              	.L141:
 992 019a 00BF     		.align	2
 993              	.L140:
 994 019c 80969800 		.word	10000000
 995 01a0 00000000 		.word	reprap
 996              		.size	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, .-_ZN13DriveMovement29CalcNextSte
 997              		.section	.text.hot._ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu fpv4-sp-d16
 1005              		.type	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, %function
 1006              	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb:
 1007              		@ args = 0, pretend = 0, frame = 0
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009 0000 2DE9F04B 		push	{r4, r5, r6, r7, r8, r9, fp, lr}
 1010 0004 0F46     		mov	r7, r1
 1011 0006 8169     		ldr	r1, [r0, #24]
 1012 0008 2429     		cmp	r1, #36
 1013 000a 0446     		mov	r4, r0
 1014 000c D0E90330 		ldrd	r3, r0, [r0, #12]
 1015 0010 15D8     		bhi	.L165
 1016 0012 8342     		cmp	r3, r0
 1017 0014 A568     		ldr	r5, [r4, #8]
 1018 0016 02D2     		bcs	.L144
 1019 0018 8542     		cmp	r5, r0
 1020 001a 28BF     		it	cs
 1021 001c 0546     		movcs	r5, r0
 1022              	.L144:
 1023 001e 0329     		cmp	r1, #3
 1024 0020 A5EB0305 		sub	r5, r5, r3
 1025 0024 00F28880 		bhi	.L145
ARM GAS  /tmp/ccqjmfWc.s 			page 19


 1026 0028 102D     		cmp	r5, #16
 1027 002a 00F2EA80 		bhi	.L166
 1028              	.L146:
 1029 002e 082D     		cmp	r5, #8
 1030 0030 40F2EC80 		bls	.L148
 1031 0034 4FF48056 		mov	r6, #4096
 1032 0038 0721     		movs	r1, #7
 1033 003a 0325     		movs	r5, #3
 1034 003c 03E0     		b	.L143
 1035              	.L165:
 1036 003e 0021     		movs	r1, #0
 1037 0040 0D46     		mov	r5, r1
 1038 0042 4FF40076 		mov	r6, #512
 1039              	.L143:
 1040 0046 8342     		cmp	r3, r0
 1041 0048 E171     		strb	r1, [r4, #7]
 1042 004a 00F08780 		beq	.L176
 1043              	.L151:
 1044 004e 94F806C0 		ldrb	ip, [r4, #6]	@ zero_extendqisi2
 1045 0052 A06B     		ldr	r0, [r4, #56]
 1046 0054 D7F8BC30 		ldr	r3, [r7, #188]
 1047 0058 1CF0100C 		ands	ip, ip, #16
 1048 005c 08BF     		it	eq
 1049 005e 7642     		rsbeq	r6, r6, #0
 1050 0060 3044     		add	r0, r0, r6
 1051 0062 80FB0389 		smull	r8, r9, r0, r3
 1052 0066 B8F1000F 		cmp	r8, #0
 1053 006a 79F10003 		sbcs	r3, r9, #0
 1054 006e A063     		str	r0, [r4, #56]
 1055 0070 05DA     		bge	.L154
 1056 0072 6A4A     		ldr	r2, .L181
 1057 0074 0023     		movs	r3, #0
 1058 0076 18EB0208 		adds	r8, r8, r2
 1059 007a 49EB0309 		adc	r9, r9, r3
 1060              	.L154:
 1061 007e D4E90C23 		ldrd	r2, [r4, #48]
 1062 0082 4FEA185E 		lsr	lr, r8, #20
 1063 0086 4EEA093E 		orr	lr, lr, r9, lsl #12
 1064 008a 80FB0089 		smull	r8, r9, r0, r0
 1065 008e B2EB0802 		subs	r2, r2, r8
 1066 0092 E66B     		ldr	r6, [r4, #60]
 1067 0094 63EB0903 		sbc	r3, r3, r9
 1068 0098 1946     		mov	r1, r3
 1069 009a 7644     		add	r6, r6, lr
 1070 009c 1046     		mov	r0, r2
 1071 009e C6FB0601 		smlal	r0, r1, r6, r6
 1072 00a2 0128     		cmp	r0, #1
 1073 00a4 71F10003 		sbcs	r3, r1, #0
 1074 00a8 7DDA     		bge	.L177
 1075 00aa 0020     		movs	r0, #0
 1076              	.L155:
 1077 00ac BCF1000F 		cmp	ip, #0
 1078 00b0 34D0     		beq	.L156
 1079 00b2 361A     		subs	r6, r6, r0
 1080 00b4 002E     		cmp	r6, #0
 1081 00b6 34DB     		blt	.L178
 1082              	.L158:
ARM GAS  /tmp/ccqjmfWc.s 			page 20


 1083 00b8 236C     		ldr	r3, [r4, #64]
 1084 00ba B342     		cmp	r3, r6
 1085 00bc B046     		mov	r8, r6
 1086 00be 4FEAE679 		asr	r9, r6, #31
 1087 00c2 59D8     		bhi	.L179
 1088 00c4 636C     		ldr	r3, [r4, #68]
 1089 00c6 9E42     		cmp	r6, r3
 1090 00c8 77D2     		bcs	.L162
 1091 00ca A66C     		ldr	r6, [r4, #72]
 1092 00cc D7F8E830 		ldr	r3, [r7, #232]
 1093 00d0 A6FB0801 		umull	r0, r1, r6, r8
 1094 00d4 06FB0911 		mla	r1, r6, r9, r1
 1095 00d8 C20C     		lsrs	r2, r0, #19
 1096 00da 42EA4132 		orr	r2, r2, r1, lsl #13
 1097 00de 9E18     		adds	r6, r3, r2
 1098              	.L161:
 1099 00e0 6369     		ldr	r3, [r4, #20]
 1100 00e2 D7F8D820 		ldr	r2, [r7, #216]
 1101 00e6 B342     		cmp	r3, r6
 1102 00e8 3CBF     		itt	cc
 1103 00ea F31A     		subcc	r3, r6, r3
 1104 00ec 23FA05F5 		lsrcc	r5, r3, r5
 1105 00f0 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 1106 00f2 28BF     		it	cs
 1107 00f4 0025     		movcs	r5, #0
 1108 00f6 A561     		str	r5, [r4, #24]
 1109 00f8 B242     		cmp	r2, r6
 1110 00fa 05FB1365 		mls	r5, r5, r3, r6
 1111 00fe 6561     		str	r5, [r4, #20]
 1112 0100 58D2     		bcs	.L171
 1113 0102 D4E90213 		ldrd	r1, r3, [r4, #8]
 1114 0106 0133     		adds	r3, r3, #1
 1115 0108 8B42     		cmp	r3, r1
 1116 010a 76D2     		bcs	.L180
 1117 010c 444B     		ldr	r3, .L181+4
 1118 010e 0222     		movs	r2, #2
 1119 0110 2B44     		add	r3, r3, r5
 1120 0112 A361     		str	r3, [r4, #24]
 1121 0114 2271     		strb	r2, [r4, #4]
 1122 0116 0020     		movs	r0, #0
 1123 0118 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1124              	.L156:
 1125 011c 0644     		add	r6, r6, r0
 1126 011e 002E     		cmp	r6, #0
 1127 0120 CADA     		bge	.L158
 1128              	.L178:
 1129 0122 E368     		ldr	r3, [r4, #12]
 1130 0124 03F57423 		add	r3, r3, #999424
 1131 0128 03F51073 		add	r3, r3, #576
 1132 012c 0222     		movs	r2, #2
 1133 012e E360     		str	r3, [r4, #12]
 1134 0130 2271     		strb	r2, [r4, #4]
 1135 0132 0020     		movs	r0, #0
 1136 0134 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1137              	.L145:
 1138 0138 0829     		cmp	r1, #8
 1139 013a 7FF678AF 		bls	.L146
ARM GAS  /tmp/ccqjmfWc.s 			page 21


 1140 013e 1129     		cmp	r1, #17
 1141 0140 64D9     		bls	.L148
 1142              	.L149:
 1143 0142 022D     		cmp	r5, #2
 1144 0144 94BF     		ite	ls
 1145 0146 0025     		movls	r5, #0
 1146 0148 0125     		movhi	r5, #1
 1147 014a 4FF40076 		mov	r6, #512
 1148 014e 2946     		mov	r1, r5
 1149 0150 8342     		cmp	r3, r0
 1150 0152 06FA05F6 		lsl	r6, r6, r5
 1151 0156 E171     		strb	r1, [r4, #7]
 1152 0158 7FF479AF 		bne	.L151
 1153              	.L176:
 1154 015c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 1155 015e 6FF30413 		bfc	r3, #4, #1
 1156 0162 A371     		strb	r3, [r4, #6]
 1157 0164 002A     		cmp	r2, #0
 1158 0166 3FF472AF 		beq	.L151
 1159 016a 2E4B     		ldr	r3, .L181+8
 1160 016c 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 1161 016e 1868     		ldr	r0, [r3]
 1162 0170 0022     		movs	r2, #0
 1163 0172 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 1164 0176 6AE7     		b	.L151
 1165              	.L179:
 1166 0178 D4E90A23 		ldrd	r2, r3, [r4, #40]
 1167 017c 06FB03F3 		mul	r3, r6, r3
 1168 0180 02FB0931 		mla	r1, r2, r9, r3
 1169 0184 A2FB0623 		umull	r2, r3, r2, r6
 1170 0188 0B44     		add	r3, r3, r1
 1171 018a D7F8E0C0 		ldr	ip, [r7, #224]
 1172 018e 500A     		lsrs	r0, r2, #9
 1173 0190 40EAC350 		orr	r0, r0, r3, lsl #23
 1174 0194 590A     		lsrs	r1, r3, #9
 1175 0196 ECFB0C01 		umlal	r0, r1, ip, ip
 1176 019a FFF7FEFF 		bl	_Z7isqrt64y
 1177 019e D7F8E060 		ldr	r6, [r7, #224]
 1178 01a2 861B     		subs	r6, r0, r6
 1179 01a4 9CE7     		b	.L161
 1180              	.L177:
 1181 01a6 FFF7FEFF 		bl	_Z7isqrt64y
 1182 01aa 94F806C0 		ldrb	ip, [r4, #6]	@ zero_extendqisi2
 1183 01ae 0CF0100C 		and	ip, ip, #16
 1184 01b2 7BE7     		b	.L155
 1185              	.L171:
 1186 01b4 0120     		movs	r0, #1
 1187 01b6 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1188              	.L162:
 1189 01ba D4E90A23 		ldrd	r2, r3, [r4, #40]
 1190 01be 08FB03F3 		mul	r3, r8, r3
 1191 01c2 02FB0931 		mla	r1, r2, r9, r3
 1192 01c6 A2FB0823 		umull	r2, r3, r2, r8
 1193 01ca D4E90889 		ldrd	r8, [r4, #32]
 1194 01ce 0B44     		add	r3, r3, r1
 1195 01d0 4FEA522B 		lsr	fp, r2, #9
 1196 01d4 4FEA532C 		lsr	ip, r3, #9
ARM GAS  /tmp/ccqjmfWc.s 			page 22


 1197 01d8 4BEAC35B 		orr	fp, fp, r3, lsl #23
 1198 01dc CC45     		cmp	ip, r9
 1199 01de 08BF     		it	eq
 1200 01e0 C345     		cmpeq	fp, r8
 1201 01e2 D7F8E460 		ldr	r6, [r7, #228]
 1202 01e6 BFF47BAF 		bcs	.L161
 1203 01ea B8EB0B00 		subs	r0, r8, fp
 1204 01ee 69EB0C01 		sbc	r1, r9, ip
 1205 01f2 FFF7FEFF 		bl	_Z7isqrt64y
 1206 01f6 361A     		subs	r6, r6, r0
 1207 01f8 72E7     		b	.L161
 1208              	.L180:
 1209 01fa 6261     		str	r2, [r4, #20]
 1210 01fc 0120     		movs	r0, #1
 1211 01fe BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1212              	.L166:
 1213 0202 4FF40056 		mov	r6, #8192
 1214 0206 0F21     		movs	r1, #15
 1215 0208 0425     		movs	r5, #4
 1216 020a 1CE7     		b	.L143
 1217              	.L148:
 1218 020c 042D     		cmp	r5, #4
 1219 020e 98D9     		bls	.L149
 1220 0210 4FF40066 		mov	r6, #2048
 1221 0214 0321     		movs	r1, #3
 1222 0216 0225     		movs	r5, #2
 1223 0218 15E7     		b	.L143
 1224              	.L182:
 1225 021a 00BF     		.align	2
 1226              	.L181:
 1227 021c FFFF0F00 		.word	1048575
 1228 0220 80969800 		.word	10000000
 1229 0224 00000000 		.word	reprap
 1230              		.size	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, .-_ZN13DriveMovement25CalcNextStepTim
 1231              		.section	.text._ZN13DriveMovement11ReduceSpeedERK3DDAm,"ax",%progbits
 1232              		.align	1
 1233              		.p2align 2,,3
 1234              		.global	_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1235              		.syntax unified
 1236              		.thumb
 1237              		.thumb_func
 1238              		.fpu fpv4-sp-d16
 1239              		.type	_ZN13DriveMovement11ReduceSpeedERK3DDAm, %function
 1240              	_ZN13DriveMovement11ReduceSpeedERK3DDAm:
 1241              		@ args = 0, pretend = 0, frame = 0
 1242              		@ frame_needed = 0, uses_anonymous_args = 0
 1243              		@ link register save eliminated.
 1244 0000 8B7A     		ldrb	r3, [r1, #10]	@ zero_extendqisi2
 1245 0002 13F00203 		ands	r3, r3, #2
 1246 0006 0BD1     		bne	.L189
 1247 0008 10B4     		push	{r4}
 1248 000a 8168     		ldr	r1, [r0, #8]
 1249 000c 046C     		ldr	r4, [r0, #64]
 1250 000e 8363     		str	r3, [r0, #56]
 1251 0010 02FB04F2 		mul	r2, r2, r4
 1252 0014 0131     		adds	r1, r1, #1
 1253 0016 C0E90F12 		strd	r1, r2, [r0, #60]
ARM GAS  /tmp/ccqjmfWc.s 			page 23


 1254 001a 5DF8044B 		ldr	r4, [sp], #4
 1255 001e 7047     		bx	lr
 1256              	.L189:
 1257 0020 836C     		ldr	r3, [r0, #72]
 1258 0022 0021     		movs	r1, #0
 1259 0024 02FB03F2 		mul	r2, r2, r3
 1260 0028 4FF0FF33 		mov	r3, #-1
 1261 002c 8264     		str	r2, [r0, #72]
 1262 002e C0E91013 		strd	r1, r3, [r0, #64]
 1263 0032 7047     		bx	lr
 1264              		.size	_ZN13DriveMovement11ReduceSpeedERK3DDAm, .-_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1265              		.global	_ZN13DriveMovement7minFreeE
 1266              		.global	_ZN13DriveMovement7numFreeE
 1267              		.global	_ZN13DriveMovement8freeListE
 1268              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1269              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1270              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1271              	_ZL28cpu_irq_prev_interrupt_state:
 1272 0000 00       		.space	1
 1273              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1274              		.align	2
 1275              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1276              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1277              	_ZL32cpu_irq_critical_section_counter:
 1278 0000 00000000 		.space	4
 1279              		.section	.bss._ZN13DriveMovement7minFreeE,"aw",%nobits
 1280              		.align	2
 1281              		.set	.LANCHOR2,. + 0
 1282              		.type	_ZN13DriveMovement7minFreeE, %object
 1283              		.size	_ZN13DriveMovement7minFreeE, 4
 1284              	_ZN13DriveMovement7minFreeE:
 1285 0000 00000000 		.space	4
 1286              		.section	.bss._ZN13DriveMovement7numFreeE,"aw",%nobits
 1287              		.align	2
 1288              		.set	.LANCHOR1,. + 0
 1289              		.type	_ZN13DriveMovement7numFreeE, %object
 1290              		.size	_ZN13DriveMovement7numFreeE, 4
 1291              	_ZN13DriveMovement7numFreeE:
 1292 0000 00000000 		.space	4
 1293              		.section	.bss._ZN13DriveMovement8freeListE,"aw",%nobits
 1294              		.align	2
 1295              		.set	.LANCHOR0,. + 0
 1296              		.type	_ZN13DriveMovement8freeListE, %object
 1297              		.size	_ZN13DriveMovement8freeListE, 4
 1298              	_ZN13DriveMovement8freeListE:
 1299 0000 00000000 		.space	4
 1300              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1301              		.align	2
 1302              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1303              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1304              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1305 0000 00000000 		.space	4
 1306              		.section	.rodata._ZNK13DriveMovement10DebugPrintEcb.str1.4,"aMS",%progbits,1
 1307              		.align	2
 1308              	.LC0:
 1309 0000 20455252 		.ascii	" ERR:\000"
 1309      3A00
ARM GAS  /tmp/ccqjmfWc.s 			page 24


 1310 0006 0000     		.space	2
 1311              	.LC1:
 1312 0008 3A00     		.ascii	":\000"
 1313 000a 0000     		.space	2
 1314              	.LC2:
 1315 000c 444D2563 		.ascii	"DM%c%s dir=%c steps=%lu next=%lu rev=%lu interval=%"
 1315      25732064 
 1315      69723D25 
 1315      63207374 
 1315      6570733D 
 1316 003f 6C752032 		.ascii	"lu 2dtstc2diva=%llu\012\000"
 1316      64747374 
 1316      63326469 
 1316      76613D25 
 1316      6C6C750A 
 1317              	.LC3:
 1318 0054 686D7A30 		.ascii	"hmz0sK=%li minusAaPlusBbTimesKs=%li dSquaredMinusAs"
 1318      734B3D25 
 1318      6C69206D 
 1318      696E7573 
 1318      4161506C 
 1319 0087 71756172 		.ascii	"quaredMinusBsquared=%lld\0122c2mmsda=%llu asdsk=%lu"
 1319      65644D69 
 1319      6E757342 
 1319      73717561 
 1319      7265643D 
 1320 00b7 20647364 		.ascii	" dsdsk=%lu mmstcdts=%lu\012\000"
 1320      736B3D25 
 1320      6C75206D 
 1320      6D737463 
 1320      6474733D 
 1321              	.LC4:
 1322 00d0 61636365 		.ascii	"accelStopStep=%lu decelStartStep=%lu 2CsqtMmPerStep"
 1322      6C53746F 
 1322      70537465 
 1322      703D256C 
 1322      75206465 
 1323 0103 44697641 		.ascii	"DivA=%llu\012mmPerStepTimesCdivtopSpeed=%lu fmsdmts"
 1323      3D256C6C 
 1323      750A6D6D 
 1323      50657253 
 1323      74657054 
 1324 0133 74646361 		.ascii	"tdca2=%lld cc=%lu acc=%lu\012\000"
 1324      323D256C 
 1324      6C642063 
 1324      633D256C 
 1324      75206163 
 1325 014e 0000     		.space	2
 1326              	.LC5:
 1327 0150 444D2563 		.ascii	"DM%c: not moving\012\000"
 1327      3A206E6F 
 1327      74206D6F 
 1327      76696E67 
 1327      0A00
 1328              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
