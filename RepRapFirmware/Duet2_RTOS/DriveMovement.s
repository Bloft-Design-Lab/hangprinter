ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN13DriveMovement15InitialAllocateEj,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN13DriveMovement15InitialAllocateEj
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN13DriveMovement15InitialAllocateEj, %function
  24              	_ZN13DriveMovement15InitialAllocateEj:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 88B1     		cbz	r0, .L2
  28 0002 70B5     		push	{r4, r5, r6, lr}
  29 0004 0A4E     		ldr	r6, .L13
  30 0006 0B4D     		ldr	r5, .L13+4
  31 0008 0446     		mov	r4, r0
  32              	.L4:
  33 000a 5820     		movs	r0, #88
  34 000c FFF7FEFF 		bl	_Znwj
  35 0010 2B68     		ldr	r3, [r5]
  36 0012 3268     		ldr	r2, [r6]
  37 0014 0260     		str	r2, [r0]
  38 0016 0133     		adds	r3, r3, #1
  39 0018 013C     		subs	r4, r4, #1
  40 001a 3060     		str	r0, [r6]
  41 001c 2B60     		str	r3, [r5]
  42 001e F4D1     		bne	.L4
  43 0020 054A     		ldr	r2, .L13+8
  44 0022 1360     		str	r3, [r2]
  45 0024 70BD     		pop	{r4, r5, r6, pc}
  46              	.L2:
  47 0026 034B     		ldr	r3, .L13+4
  48 0028 034A     		ldr	r2, .L13+8
  49 002a 1B68     		ldr	r3, [r3]
  50 002c 1360     		str	r3, [r2]
  51 002e 7047     		bx	lr
  52              	.L14:
  53              		.align	2
  54              	.L13:
  55 0030 00000000 		.word	.LANCHOR0
  56 0034 00000000 		.word	.LANCHOR1
  57 0038 00000000 		.word	.LANCHOR2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 2


  58              		.size	_ZN13DriveMovement15InitialAllocateEj, .-_ZN13DriveMovement15InitialAllocateEj
  59              		.section	.text._ZN13DriveMovement8AllocateEj7DMState,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_ZN13DriveMovement8AllocateEj7DMState
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZN13DriveMovement8AllocateEj7DMState, %function
  68              	_ZN13DriveMovement8AllocateEj7DMState:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 F0B4     		push	{r4, r5, r6, r7}
  73 0002 0A4C     		ldr	r4, .L22
  74 0004 2368     		ldr	r3, [r4]
  75 0006 73B1     		cbz	r3, .L15
  76 0008 094D     		ldr	r5, .L22+4
  77 000a 0A4E     		ldr	r6, .L22+8
  78 000c 1F68     		ldr	r7, [r3]
  79 000e 2A68     		ldr	r2, [r5]
  80 0010 2760     		str	r7, [r4]
  81 0012 3468     		ldr	r4, [r6]
  82 0014 5871     		strb	r0, [r3, #5]
  83 0016 013A     		subs	r2, r2, #1
  84 0018 A242     		cmp	r2, r4
  85 001a 2A60     		str	r2, [r5]
  86 001c B8BF     		it	lt
  87 001e 3260     		strlt	r2, [r6]
  88 0020 0022     		movs	r2, #0
  89 0022 1971     		strb	r1, [r3, #4]
  90 0024 1A60     		str	r2, [r3]
  91              	.L15:
  92 0026 1846     		mov	r0, r3
  93 0028 F0BC     		pop	{r4, r5, r6, r7}
  94 002a 7047     		bx	lr
  95              	.L23:
  96              		.align	2
  97              	.L22:
  98 002c 00000000 		.word	.LANCHOR0
  99 0030 00000000 		.word	.LANCHOR1
 100 0034 00000000 		.word	.LANCHOR2
 101              		.size	_ZN13DriveMovement8AllocateEj7DMState, .-_ZN13DriveMovement8AllocateEj7DMState
 102              		.section	.text._ZN13DriveMovementC2EPS_,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	_ZN13DriveMovementC2EPS_
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	_ZN13DriveMovementC2EPS_, %function
 111              	_ZN13DriveMovementC2EPS_:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 3


 115 0000 0160     		str	r1, [r0]
 116 0002 7047     		bx	lr
 117              		.size	_ZN13DriveMovementC2EPS_, .-_ZN13DriveMovementC2EPS_
 118              		.global	_ZN13DriveMovementC1EPS_
 119              		.thumb_set _ZN13DriveMovementC1EPS_,_ZN13DriveMovementC2EPS_
 120              		.global	__aeabi_f2d
 121              		.global	__aeabi_dmul
 122              		.global	__aeabi_ddiv
 123              		.global	__aeabi_d2ulz
 124              		.global	__aeabi_f2ulz
 125              		.section	.text.hot._ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, %function
 134              	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 138 0004 90ED027A 		vldr.32	s14, [r0, #8]	@ int
 139 0008 D1ED2C7A 		vldr.32	s15, [r1, #176]
 140 000c 8368     		ldr	r3, [r0, #8]
 141 000e B8EE477A 		vcvt.f32.u32	s14, s14
 142 0012 2DED028B 		vpush.64	{d8}
 143 0016 87EE278A 		vdiv.f32	s16, s14, s15
 144 001a 0446     		mov	r4, r0
 145 001c 0D46     		mov	r5, r1
 146 001e 1746     		mov	r7, r2
 147 0020 5E1C     		adds	r6, r3, #1
 148 0022 18EE100A 		vmov	r0, s16
 149 0026 FFF7FEFF 		bl	__aeabi_f2d
 150 002a 8046     		mov	r8, r0
 151 002c 8946     		mov	r9, r1
 152 002e D5F8B400 		ldr	r0, [r5, #180]	@ float
 153 0032 FFF7FEFF 		bl	__aeabi_f2d
 154 0036 4246     		mov	r2, r8
 155 0038 4B46     		mov	r3, r9
 156 003a FFF7FEFF 		bl	__aeabi_dmul
 157 003e 0246     		mov	r2, r0
 158 0040 0B46     		mov	r3, r1
 159 0042 37A1     		adr	r1, .L33+8
 160 0044 D1E90001 		ldrd	r0, [r1]
 161 0048 FFF7FEFF 		bl	__aeabi_ddiv
 162 004c FFF7FEFF 		bl	__aeabi_d2ulz
 163 0050 D5ED2E8A 		vldr.32	s17, [r5, #184]
 164 0054 C4E90A01 		strd	r0, [r4, #40]
 165 0058 18EE900A 		vmov	r0, s17
 166 005c FFF7FEFF 		bl	__aeabi_f2d
 167 0060 4246     		mov	r2, r8
 168 0062 4B46     		mov	r3, r9
 169 0064 FFF7FEFF 		bl	__aeabi_dmul
 170 0068 0B46     		mov	r3, r1
 171 006a 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 4


 172 006c 2CA1     		adr	r1, .L33+8
 173 006e D1E90001 		ldrd	r0, [r1]
 174 0072 FFF7FEFF 		bl	__aeabi_ddiv
 175 0076 FFF7FEFF 		bl	__aeabi_d2ulz
 176 007a 95ED336A 		vldr.32	s12, [r5, #204]
 177 007e DFED265A 		vldr.32	s11, .L33
 178 0082 D5ED347A 		vldr.32	s15, [r5, #208]
 179 0086 95ED357A 		vldr.32	s14, [r5, #212]
 180 008a 28EE066A 		vmul.f32	s12, s16, s12
 181 008e 68EE277A 		vmul.f32	s15, s16, s15
 182 0092 C5EE866A 		vdiv.f32	s13, s11, s12
 183 0096 0023     		movs	r3, #0
 184 0098 C4E91333 		strd	r3, r3, [r4, #76]
 185 009c C4E90C01 		strd	r0, [r4, #48]
 186 00a0 FCEEE77A 		vcvt.u32.f32	s15, s15
 187 00a4 FCEEE66A 		vcvt.u32.f32	s13, s13
 188 00a8 17EE903A 		vmov	r3, s15	@ int
 189 00ac 68EE077A 		vmul.f32	s15, s16, s14
 190 00b0 B6EE007A 		vmov.f32	s14, #5.0e-1
 191 00b4 F4EEC77A 		vcmpe.f32	s15, s14
 192 00b8 0133     		adds	r3, r3, #1
 193 00ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 194 00be 2364     		str	r3, [r4, #64]
 195 00c0 C4ED126A 		vstr.32	s13, [r4, #72]	@ int
 196 00c4 21D4     		bmi	.L32
 197 00c6 D7ED007A 		vldr.32	s15, [r7]
 198 00ca 9FED147A 		vldr.32	s14, .L33+4
 199 00ce 7D68     		ldr	r5, [r7, #4]
 200 00d0 27EE888A 		vmul.f32	s16, s15, s16
 201 00d4 67EE877A 		vmul.f32	s15, s15, s14
 202 00d8 BCEEC88A 		vcvt.u32.f32	s16, s16
 203 00dc C7EEA87A 		vdiv.f32	s15, s15, s17
 204 00e0 18EE103A 		vmov	r3, s16	@ int
 205 00e4 0133     		adds	r3, r3, #1
 206 00e6 17EE900A 		vmov	r0, s15
 207 00ea 6364     		str	r3, [r4, #68]
 208 00ec FFF7FEFF 		bl	__aeabi_f2ulz
 209 00f0 E5FB0501 		umlal	r0, r1, r5, r5
 210 00f4 C4E90801 		strd	r0, [r4, #32]
 211              	.L28:
 212 00f8 BDEC028B 		vldm	sp!, {d8}
 213 00fc 0022     		movs	r2, #0
 214 00fe 0023     		movs	r3, #0
 215 0100 C4E90E23 		strd	r2, [r4, #56]
 216 0104 2661     		str	r6, [r4, #16]
 217 0106 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 218              	.L32:
 219 010a 0022     		movs	r2, #0
 220 010c 0023     		movs	r3, #0
 221 010e 6664     		str	r6, [r4, #68]
 222 0110 C4E90823 		strd	r2, [r4, #32]
 223 0114 F0E7     		b	.L28
 224              	.L34:
 225 0116 00BF     		.align	3
 226              	.L33:
 227 0118 C0E1644E 		.word	1315234240
 228 011c E5A2CC53 		.word	1405919973
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 5


 229 0120 000062A2 		.word	-1570635776
 230 0124 5C947942 		.word	1115264092
 231              		.size	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement20Prepare
 232              		.global	__aeabi_f2lz
 233              		.section	.text.hot._ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, %function
 242              	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams:
 243              		@ args = 0, pretend = 0, frame = 8
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 246 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 247 0008 1646     		mov	r6, r2
 248 000a 4279     		ldrb	r2, [r0, #5]	@ zero_extendqisi2
 249 000c 7369     		ldr	r3, [r6, #20]
 250 000e D6ED039A 		vldr.32	s19, [r6, #12]
 251 0012 D6ED068A 		vldr.32	s17, [r6, #24]
 252 0016 96ED04AA 		vldr.32	s20, [r6, #16]
 253 001a 91ED219A 		vldr.32	s18, [r1, #132]
 254 001e 03EB8203 		add	r3, r3, r2, lsl #2
 255 0022 93ED107A 		vldr.32	s14, [r3, #64]
 256 0026 D3ED137A 		vldr.32	s15, [r3, #76]
 257 002a 79EEC79A 		vsub.f32	s19, s19, s14
 258 002e 3AEE67AA 		vsub.f32	s20, s20, s15
 259 0032 E9EEE98A 		vfms.f32	s17, s19, s19
 260 0036 0446     		mov	r4, r0
 261 0038 9F48     		ldr	r0, .L63+8
 262 003a D1ED207A 		vldr.32	s15, [r1, #128]
 263 003e 4368     		ldr	r3, [r0, #4]	@ unaligned
 264 0040 EAEE4A8A 		vfms.f32	s17, s20, s20
 265 0044 03EB8203 		add	r3, r3, r2, lsl #2
 266 0048 82B0     		sub	sp, sp, #8
 267 004a 2AEE099A 		vmul.f32	s18, s20, s18
 268 004e F5EE408A 		vcmp.f32	s17, #0
 269 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 270 0056 0D46     		mov	r5, r1
 271 0058 93ED778A 		vldr.32	s16, [r3, #476]
 272 005c F1EEE8AA 		vsqrt.f32	s21, s17
 273 0060 A7EEA99A 		vfma.f32	s18, s15, s19
 274 0064 00F10E81 		bmi	.L58
 275              	.L36:
 276 0068 9FED947A 		vldr.32	s14, .L63+12
 277 006c 69EE087A 		vmul.f32	s15, s18, s16
 278 0070 28EE077A 		vmul.f32	s14, s16, s14
 279 0074 FEEEEB7A 		vcvt.s32.f32	s15, s15, #9
 280 0078 27EE077A 		vmul.f32	s14, s14, s14
 281 007c 6AEE886A 		vmul.f32	s13, s21, s16
 282 0080 17EE903A 		vmov	r3, s15	@ int
 283 0084 FEEEEB6A 		vcvt.s32.f32	s13, s13, #9
 284 0088 67EE287A 		vmul.f32	s15, s14, s17
 285 008c 5B42     		negs	r3, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 6


 286 008e 17EE900A 		vmov	r0, s15
 287 0092 C4ED106A 		vstr.32	s13, [r4, #64]	@ int
 288 0096 6364     		str	r3, [r4, #68]
 289 0098 FFF7FEFF 		bl	__aeabi_f2lz
 290 009c C4E90E01 		strd	r0, [r4, #56]
 291 00a0 18EE100A 		vmov	r0, s16
 292 00a4 FFF7FEFF 		bl	__aeabi_f2d
 293 00a8 8046     		mov	r8, r0
 294 00aa 8946     		mov	r9, r1
 295 00ac D5F8B400 		ldr	r0, [r5, #180]	@ float
 296 00b0 FFF7FEFF 		bl	__aeabi_f2d
 297 00b4 4246     		mov	r2, r8
 298 00b6 4B46     		mov	r3, r9
 299 00b8 FFF7FEFF 		bl	__aeabi_dmul
 300 00bc 0246     		mov	r2, r0
 301 00be 0B46     		mov	r3, r1
 302 00c0 7BA1     		adr	r1, .L63
 303 00c2 D1E90001 		ldrd	r0, [r1]
 304 00c6 FFF7FEFF 		bl	__aeabi_ddiv
 305 00ca FFF7FEFF 		bl	__aeabi_d2ulz
 306 00ce C4E90A01 		strd	r0, [r4, #40]
 307 00d2 D5F8B800 		ldr	r0, [r5, #184]	@ float
 308 00d6 FFF7FEFF 		bl	__aeabi_f2d
 309 00da 4246     		mov	r2, r8
 310 00dc 4B46     		mov	r3, r9
 311 00de FFF7FEFF 		bl	__aeabi_dmul
 312 00e2 0246     		mov	r2, r0
 313 00e4 0B46     		mov	r3, r1
 314 00e6 72A1     		adr	r1, .L63
 315 00e8 D1E90001 		ldrd	r0, [r1]
 316 00ec FFF7FEFF 		bl	__aeabi_ddiv
 317 00f0 FFF7FEFF 		bl	__aeabi_d2ulz
 318 00f4 96ED077A 		vldr.32	s14, [r6, #28]
 319 00f8 95ED22BA 		vldr.32	s22, [r5, #136]
 320 00fc B5EEC07A 		vcmpe.f32	s14, #0
 321 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 322 0104 C4E90C01 		strd	r0, [r4, #48]
 323 0108 50D8     		bhi	.L55
 324 010a B5EEC0BA 		vcmpe.f32	s22, #0
 325 010e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 326 0112 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 327 0114 A368     		ldr	r3, [r4, #8]
 328 0116 ACBF     		ite	ge
 329 0118 0121     		movge	r1, #1
 330 011a 0021     		movlt	r1, #0
 331 011c 61F30412 		bfi	r2, r1, #4, #1
 332 0120 0133     		adds	r3, r3, #1
 333 0122 A271     		strb	r2, [r4, #6]
 334 0124 2361     		str	r3, [r4, #16]
 335              	.L39:
 336 0126 95ED336A 		vldr.32	s12, [r5, #204]
 337 012a 9FED655A 		vldr.32	s10, .L63+16
 338 012e D5ED347A 		vldr.32	s15, [r5, #208]
 339 0132 95ED357A 		vldr.32	s14, [r5, #212]
 340 0136 DFED615A 		vldr.32	s11, .L63+12
 341 013a 28EE066A 		vmul.f32	s12, s16, s12
 342 013e 68EE277A 		vmul.f32	s15, s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 7


 343 0142 C5EE066A 		vdiv.f32	s13, s10, s12
 344 0146 67EEA57A 		vmul.f32	s15, s15, s11
 345 014a 28EE077A 		vmul.f32	s14, s16, s14
 346 014e B6EE006A 		vmov.f32	s12, #5.0e-1
 347 0152 FCEEE66A 		vcvt.u32.f32	s13, s13
 348 0156 FCEEE77A 		vcvt.u32.f32	s15, s15
 349 015a B4EEC67A 		vcmpe.f32	s14, s12
 350 015e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 351 0162 C4ED146A 		vstr.32	s13, [r4, #80]	@ int
 352 0166 C4ED127A 		vstr.32	s15, [r4, #72]	@ int
 353 016a 48D4     		bmi	.L59
 354 016c D6ED007A 		vldr.32	s15, [r6]
 355 0170 DFED546A 		vldr.32	s13, .L63+20
 356 0174 95ED2E7A 		vldr.32	s14, [r5, #184]
 357 0178 7568     		ldr	r5, [r6, #4]
 358 017a 27EE888A 		vmul.f32	s16, s15, s16
 359 017e 67EEA67A 		vmul.f32	s15, s15, s13
 360 0182 28EE258A 		vmul.f32	s16, s16, s11
 361 0186 C7EE877A 		vdiv.f32	s15, s15, s14
 362 018a BCEEC88A 		vcvt.u32.f32	s16, s16
 363 018e 17EE900A 		vmov	r0, s15
 364 0192 84ED138A 		vstr.32	s16, [r4, #76]	@ int
 365 0196 FFF7FEFF 		bl	__aeabi_f2ulz
 366 019a E5FB0501 		umlal	r0, r1, r5, r5
 367 019e C4E90801 		strd	r0, [r4, #32]
 368 01a2 02B0     		add	sp, sp, #8
 369              		@ sp needed
 370 01a4 BDEC088B 		vldm	sp!, {d8-d11}
 371 01a8 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 372              	.L55:
 373 01ac D5ED207A 		vldr.32	s15, [r5, #128]
 374 01b0 D5ED216A 		vldr.32	s13, [r5, #132]
 375 01b4 96ED080A 		vldr.32	s0, [r6, #32]
 376 01b8 27EECAAA 		vnmul.f32	s20, s15, s20
 377 01bc A6EEA9AA 		vfma.f32	s20, s13, s19
 378 01c0 AAEE4A0A 		vfms.f32	s0, s20, s20
 379 01c4 B5EE400A 		vcmp.f32	s0, #0
 380 01c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 381 01cc F1EEC09A 		vsqrt.f32	s19, s0
 382 01d0 5DD4     		bmi	.L60
 383              	.L40:
 384 01d2 F0EE496A 		vmov.f32	s13, s18
 385 01d6 D9EE8B6A 		vfnms.f32	s13, s19, s22
 386 01da C6EE877A 		vdiv.f32	s15, s13, s14
 387 01de F5EEC07A 		vcmpe.f32	s15, #0
 388 01e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 389 01e6 06DD     		ble	.L41
 390 01e8 D5ED2C6A 		vldr.32	s13, [r5, #176]
 391 01ec F4EEE76A 		vcmpe.f32	s13, s15
 392 01f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 393 01f4 0FDC     		bgt	.L61
 394              	.L41:
 395 01f6 A368     		ldr	r3, [r4, #8]
 396 01f8 0133     		adds	r3, r3, #1
 397 01fa 2361     		str	r3, [r4, #16]
 398 01fc 93E7     		b	.L39
 399              	.L59:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 8


 400 01fe 4FF0FF31 		mov	r1, #-1
 401 0202 0022     		movs	r2, #0
 402 0204 0023     		movs	r3, #0
 403 0206 E164     		str	r1, [r4, #76]
 404 0208 C4E90823 		strd	r2, [r4, #32]
 405 020c 02B0     		add	sp, sp, #8
 406              		@ sp needed
 407 020e BDEC088B 		vldm	sp!, {d8-d11}
 408 0212 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 409              	.L61:
 410 0216 77EEA76A 		vadd.f32	s13, s15, s15
 411 021a 27EEE76A 		vnmul.f32	s12, s15, s15
 412 021e E6EEC98A 		vfms.f32	s17, s13, s18
 413 0222 D5ED226A 		vldr.32	s13, [r5, #136]
 414 0226 E6EE078A 		vfma.f32	s17, s12, s14
 415 022a 67EEA67A 		vmul.f32	s15, s15, s13
 416 022e F5EE408A 		vcmp.f32	s17, #0
 417 0232 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 418 0236 B1EEE89A 		vsqrt.f32	s18, s17
 419 023a 2DD4     		bmi	.L62
 420              	.L44:
 421 023c A268     		ldr	r2, [r4, #8]
 422 023e 77EE897A 		vadd.f32	s15, s15, s18
 423 0242 77EEEA7A 		vsub.f32	s15, s15, s21
 424 0246 67EE887A 		vmul.f32	s15, s15, s16
 425 024a FDEEE77A 		vcvt.s32.f32	s15, s15
 426 024e 17EE903A 		vmov	r3, s15	@ int
 427 0252 002B     		cmp	r3, #0
 428 0254 0ADD     		ble	.L45
 429 0256 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 430 0258 C806     		lsls	r0, r1, #27
 431 025a 0AD5     		bpl	.L46
 432 025c 9342     		cmp	r3, r2
 433 025e 05D9     		bls	.L45
 434 0260 C2EB4302 		rsb	r2, r2, r3, lsl #1
 435 0264 0133     		adds	r3, r3, #1
 436 0266 A260     		str	r2, [r4, #8]
 437 0268 2361     		str	r3, [r4, #16]
 438 026a 5CE7     		b	.L39
 439              	.L45:
 440 026c 0132     		adds	r2, r2, #1
 441 026e 2261     		str	r2, [r4, #16]
 442 0270 59E7     		b	.L39
 443              	.L46:
 444 0272 02EB4302 		add	r2, r2, r3, lsl #1
 445 0276 41F01001 		orr	r1, r1, #16
 446 027a 0133     		adds	r3, r3, #1
 447 027c A171     		strb	r1, [r4, #6]
 448 027e A260     		str	r2, [r4, #8]
 449 0280 2361     		str	r3, [r4, #16]
 450 0282 50E7     		b	.L39
 451              	.L58:
 452 0284 B0EE680A 		vmov.f32	s0, s17
 453 0288 FFF7FEFF 		bl	sqrtf
 454 028c ECE6     		b	.L36
 455              	.L60:
 456 028e FFF7FEFF 		bl	sqrtf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 9


 457 0292 96ED077A 		vldr.32	s14, [r6, #28]
 458 0296 9CE7     		b	.L40
 459              	.L62:
 460 0298 B0EE680A 		vmov.f32	s0, s17
 461 029c CDED017A 		vstr.32	s15, [sp, #4]	@ int
 462 02a0 FFF7FEFF 		bl	sqrtf
 463 02a4 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 464 02a8 C8E7     		b	.L44
 465              	.L64:
 466 02aa 00BFAFF3 		.align	3
 466      0080
 467              	.L63:
 468 02b0 000062A2 		.word	-1570635776
 469 02b4 5C947942 		.word	1115264092
 470 02b8 00000000 		.word	reprap
 471 02bc 00000044 		.word	1140850688
 472 02c0 C0E1644E 		.word	1315234240
 473 02c4 E5A2CC53 		.word	1405919973
 474              		.size	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement16PrepareDelt
 475              		.global	__aeabi_uldivmod
 476              		.section	.text.hot._ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb,"ax",%progbits
 477              		.align	1
 478              		.p2align 2,,3
 479              		.global	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 480              		.syntax unified
 481              		.thumb
 482              		.thumb_func
 483              		.fpu fpv4-sp-d16
 484              		.type	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, %function
 485              	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb:
 486              		@ args = 0, pretend = 0, frame = 16
 487              		@ frame_needed = 0, uses_anonymous_args = 0
 488 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 489 0004 2DED068B 		vpush.64	{d8, d9, d10}
 490 0008 DFF80C93 		ldr	r9, .L97+24
 491 000c 90F80580 		ldrb	r8, [r0, #5]	@ zero_extendqisi2
 492 0010 D9F81450 		ldr	r5, [r9, #20]
 493 0014 0F46     		mov	r7, r1
 494 0016 0446     		mov	r4, r0
 495 0018 D9F80400 		ldr	r0, [r9, #4]
 496 001c BE7A     		ldrb	r6, [r7, #10]	@ zero_extendqisi2
 497 001e 01EB8801 		add	r1, r1, r8, lsl #2
 498 0022 D1ED208A 		vldr.32	s17, [r1, #128]
 499 0026 D5F85C13 		ldr	r1, [r5, #860]
 500 002a 00EB8805 		add	r5, r0, r8, lsl #2
 501 002e D5ED777A 		vldr.32	s15, [r5, #476]
 502 0032 B0EEE88A 		vabs.f32	s16, s17
 503 0036 9A46     		mov	r10, r3
 504 0038 3307     		lsls	r3, r6, #28
 505 003a 87B0     		sub	sp, sp, #28
 506 003c 1546     		mov	r5, r2
 507 003e 28EE278A 		vmul.f32	s16, s16, s15
 508 0042 A8EB0108 		sub	r8, r8, r1
 509 0046 00F1FA80 		bmi	.L66
 510 004a 97ED2C7A 		vldr.32	s14, [r7, #176]
 511              	.L67:
 512 004e BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 10


 513 0052 37D0     		beq	.L72
 514 0054 F5EEC08A 		vcmpe.f32	s17, #0
 515 0058 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 516 005c 32DD     		ble	.L72
 517 005e B8F1080F 		cmp	r8, #8
 518 0062 40F22381 		bls	.L93
 519 0066 DFEDA86A 		vldr.32	s13, .L97+8
 520 006a 0023     		movs	r3, #0
 521 006c B0EE66AA 		vmov.f32	s20, s13
 522              	.L74:
 523 0070 D7ED315A 		vldr.32	s11, [r7, #196]
 524 0074 D7ED339A 		vldr.32	s19, [r7, #204]
 525 0078 97ED326A 		vldr.32	s12, [r7, #200]
 526 007c D7ED347A 		vldr.32	s15, [r7, #208]
 527 0080 95ED025A 		vldr.32	s10, [r5, #8]
 528 0084 E364     		str	r3, [r4, #76]
 529 0086 79EEE58A 		vsub.f32	s17, s19, s11
 530 008a 36EE656A 		vsub.f32	s12, s12, s11
 531 008e 68EE8A8A 		vmul.f32	s17, s17, s20
 532 0092 A6EE0A7A 		vfma.f32	s14, s12, s20
 533 0096 78EEA77A 		vadd.f32	s15, s17, s15
 534 009a 66EE856A 		vmul.f32	s13, s13, s10
 535 009e 67EE887A 		vmul.f32	s15, s15, s16
 536 00a2 27EE087A 		vmul.f32	s14, s14, s16
 537 00a6 FCEEE77A 		vcvt.u32.f32	s15, s15
 538 00aa FCEEE66A 		vcvt.u32.f32	s13, s13
 539 00ae 17EE903A 		vmov	r3, s15	@ int
 540 00b2 FDEEC77A 		vcvt.s32.f32	s15, s14
 541 00b6 0133     		adds	r3, r3, #1
 542 00b8 2364     		str	r3, [r4, #64]
 543 00ba 17EE906A 		vmov	r6, s15	@ int
 544 00be C4ED146A 		vstr.32	s13, [r4, #80]	@ int
 545 00c2 18E0     		b	.L75
 546              	.L72:
 547 00c4 D7ED347A 		vldr.32	s15, [r7, #208]
 548 00c8 D7ED339A 		vldr.32	s19, [r7, #204]
 549 00cc DFED8E8A 		vldr.32	s17, .L97+8
 550 00d0 68EE277A 		vmul.f32	s15, s16, s15
 551 00d4 28EE077A 		vmul.f32	s14, s16, s14
 552 00d8 FCEEE77A 		vcvt.u32.f32	s15, s15
 553 00dc 0022     		movs	r2, #0
 554 00de 17EE903A 		vmov	r3, s15	@ int
 555 00e2 FDEEC77A 		vcvt.s32.f32	s15, s14
 556 00e6 C4E91322 		strd	r2, r2, [r4, #76]
 557 00ea 0133     		adds	r3, r3, #1
 558 00ec 17EE906A 		vmov	r6, s15	@ int
 559 00f0 B0EE68AA 		vmov.f32	s20, s17
 560 00f4 2364     		str	r3, [r4, #64]
 561              	.L75:
 562 00f6 18EE100A 		vmov	r0, s16
 563 00fa FFF7FEFF 		bl	__aeabi_f2d
 564 00fe 8046     		mov	r8, r0
 565 0100 8946     		mov	r9, r1
 566 0102 D7F8B400 		ldr	r0, [r7, #180]	@ float
 567 0106 FFF7FEFF 		bl	__aeabi_f2d
 568 010a 4246     		mov	r2, r8
 569 010c 4B46     		mov	r3, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 11


 570 010e FFF7FEFF 		bl	__aeabi_dmul
 571 0112 0246     		mov	r2, r0
 572 0114 0B46     		mov	r3, r1
 573 0116 7AA1     		adr	r1, .L97
 574 0118 D1E90001 		ldrd	r0, [r1]
 575 011c FFF7FEFF 		bl	__aeabi_ddiv
 576 0120 FFF7FEFF 		bl	__aeabi_d2ulz
 577 0124 97ED2E9A 		vldr.32	s18, [r7, #184]
 578 0128 C4E90A01 		strd	r0, [r4, #40]
 579 012c 19EE100A 		vmov	r0, s18
 580 0130 FFF7FEFF 		bl	__aeabi_f2d
 581 0134 4246     		mov	r2, r8
 582 0136 4B46     		mov	r3, r9
 583 0138 FFF7FEFF 		bl	__aeabi_dmul
 584 013c 0246     		mov	r2, r0
 585 013e 0B46     		mov	r3, r1
 586 0140 6FA1     		adr	r1, .L97
 587 0142 D1E90001 		ldrd	r0, [r1]
 588 0146 FFF7FEFF 		bl	__aeabi_ddiv
 589 014a FFF7FEFF 		bl	__aeabi_d2ulz
 590 014e 68EE296A 		vmul.f32	s13, s16, s19
 591 0152 9FED6E6A 		vldr.32	s12, .L97+12
 592 0156 D7ED357A 		vldr.32	s15, [r7, #212]
 593 015a 2063     		str	r0, [r4, #48]
 594 015c 86EE267A 		vdiv.f32	s14, s12, s13
 595 0160 8246     		mov	r10, r0
 596 0162 8B46     		mov	fp, r1
 597 0164 6163     		str	r1, [r4, #52]
 598 0166 68EE277A 		vmul.f32	s15, s16, s15
 599 016a F6EE006A 		vmov.f32	s13, #5.0e-1
 600 016e BCEEC77A 		vcvt.u32.f32	s14, s14
 601 0172 F4EEE67A 		vcmpe.f32	s15, s13
 602 0176 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 603 017a 84ED127A 		vstr.32	s14, [r4, #72]	@ int
 604 017e 10D5     		bpl	.L91
 605 0180 26EAE671 		bic	r1, r6, r6, asr #31
 606 0184 0022     		movs	r2, #0
 607 0186 0136     		adds	r6, r6, #1
 608 0188 0023     		movs	r3, #0
 609 018a A160     		str	r1, [r4, #8]
 610 018c 2661     		str	r6, [r4, #16]
 611 018e 6664     		str	r6, [r4, #68]
 612 0190 C4E90E23 		strd	r2, [r4, #56]
 613 0194 C4E90823 		strd	r2, [r4, #32]
 614 0198 07B0     		add	sp, sp, #28
 615              		@ sp needed
 616 019a BDEC068B 		vldm	sp!, {d8-d10}
 617 019e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 618              	.L91:
 619 01a2 95ED007A 		vldr.32	s14, [r5]
 620 01a6 DFED5A7A 		vldr.32	s15, .L97+16
 621 01aa 6B68     		ldr	r3, [r5, #4]
 622 01ac E26C     		ldr	r2, [r4, #76]
 623 01ae 78EE878A 		vadd.f32	s17, s17, s14
 624 01b2 A3EB0208 		sub	r8, r3, r2
 625 01b6 28EE888A 		vmul.f32	s16, s17, s16
 626 01ba 68EEA78A 		vmul.f32	s17, s17, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 12


 627 01be FCEEC87A 		vcvt.u32.f32	s15, s16
 628 01c2 17EE905A 		vmov	r5, s15	@ int
 629 01c6 C8EE897A 		vdiv.f32	s15, s17, s18
 630 01ca 6B1C     		adds	r3, r5, #1
 631 01cc 6364     		str	r3, [r4, #68]
 632 01ce 29EE0A9A 		vmul.f32	s18, s18, s20
 633 01d2 17EE900A 		vmov	r0, s15
 634 01d6 FFF7FEFF 		bl	__aeabi_f2ulz
 635 01da B4EEE99A 		vcmpe.f32	s18, s19
 636 01de C8FB0801 		smlal	r0, r1, r8, r8
 637 01e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 638 01e6 8046     		mov	r8, r0
 639 01e8 8946     		mov	r9, r1
 640 01ea C4E90801 		strd	r0, [r4, #32]
 641 01ee 19DD     		ble	.L94
 642 01f0 D7ED327A 		vldr.32	s15, [r7, #200]
 643 01f4 F4EEC97A 		vcmpe.f32	s15, s18
 644 01f8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 645 01fc 01D5     		bpl	.L80
 646              	.L96:
 647 01fe AE42     		cmp	r6, r5
 648 0200 63DB     		blt	.L95
 649              	.L80:
 650 0202 B542     		cmp	r5, r6
 651 0204 A8BF     		it	ge
 652 0206 3546     		movge	r5, r6
 653 0208 0022     		movs	r2, #0
 654 020a 0023     		movs	r3, #0
 655 020c C4E90E23 		strd	r2, [r4, #56]
 656 0210 6B1C     		adds	r3, r5, #1
 657 0212 25EAE575 		bic	r5, r5, r5, asr #31
 658 0216 2361     		str	r3, [r4, #16]
 659 0218 A560     		str	r5, [r4, #8]
 660 021a 07B0     		add	sp, sp, #28
 661              		@ sp needed
 662 021c BDEC068B 		vldm	sp!, {d8-d10}
 663 0220 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 664              	.L94:
 665 0224 5246     		mov	r2, r10
 666 0226 5B46     		mov	r3, fp
 667 0228 FFF7FEFF 		bl	__aeabi_uldivmod
 668 022c D7ED327A 		vldr.32	s15, [r7, #200]
 669 0230 F4EEC97A 		vcmpe.f32	s15, s18
 670 0234 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 671 0238 0546     		mov	r5, r0
 672 023a E2D5     		bpl	.L80
 673 023c DFE7     		b	.L96
 674              	.L66:
 675 023e 05AB     		add	r3, sp, #20
 676 0240 0093     		str	r3, [sp]
 677 0242 03AA     		add	r2, sp, #12
 678 0244 04AB     		add	r3, sp, #16
 679 0246 4146     		mov	r1, r8
 680 0248 FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 681 024c 97ED2C7A 		vldr.32	s14, [r7, #176]
 682 0250 0028     		cmp	r0, #0
 683 0252 3FF4FCAE 		beq	.L67
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 13


 684 0256 DFED2F7A 		vldr.32	s15, .L97+20
 685 025a 97ED376A 		vldr.32	s12, [r7, #220]	@ int
 686 025e 9DED044A 		vldr.32	s8, [sp, #16]
 687 0262 DDED034A 		vldr.32	s9, [sp, #12]
 688 0266 DDED056A 		vldr.32	s13, [sp, #20]
 689 026a 27EE285A 		vmul.f32	s10, s14, s17
 690 026e F8EE465A 		vcvt.f32.u32	s11, s12
 691 0272 25EE275A 		vmul.f32	s10, s10, s15
 692 0276 85EE256A 		vdiv.f32	s12, s10, s11
 693 027a 66EE067A 		vmul.f32	s15, s12, s12
 694 027e 67EE847A 		vmul.f32	s15, s15, s8
 695 0282 E4EE867A 		vfma.f32	s15, s9, s12
 696 0286 F4EE677A 		vcmp.f32	s15, s15
 697 028a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 698 028e 32D6     		bvs	.L82
 699 0290 F4EE667A 		vcmp.f32	s15, s13
 700 0294 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 701 0298 48BF     		it	mi
 702 029a F0EE676A 		vmovmi.f32	s13, s15
 703              	.L70:
 704 029e F7EE007A 		vmov.f32	s15, #1.0e+0
 705 02a2 76EEA76A 		vadd.f32	s13, s13, s15
 706 02a6 28EE268A 		vmul.f32	s16, s16, s13
 707 02aa D0E6     		b	.L67
 708              	.L93:
 709 02ac D9F80410 		ldr	r1, [r9, #4]
 710 02b0 DFED186A 		vldr.32	s13, .L97+20
 711 02b4 01EB8801 		add	r1, r1, r8, lsl #2
 712 02b8 91ED8FAA 		vldr.32	s20, [r1, #572]
 713 02bc 6AEE266A 		vmul.f32	s13, s20, s13
 714 02c0 FCEEE67A 		vcvt.u32.f32	s15, s13
 715 02c4 17EE903A 		vmov	r3, s15	@ int
 716 02c8 D2E6     		b	.L74
 717              	.L95:
 718 02ca 6900     		lsls	r1, r5, #1
 719 02cc A1FB0A23 		umull	r2, r3, r1, r10
 720 02d0 B2EB0808 		subs	r8, r2, r8
 721 02d4 01FB0B33 		mla	r3, r1, fp, r3
 722 02d8 A1EB0606 		sub	r6, r1, r6
 723 02dc 05F10105 		add	r5, r5, #1
 724 02e0 63EB0909 		sbc	r9, r3, r9
 725 02e4 A660     		str	r6, [r4, #8]
 726 02e6 2561     		str	r5, [r4, #16]
 727 02e8 C4E90E89 		strd	r8, [r4, #56]
 728 02ec 07B0     		add	sp, sp, #28
 729              		@ sp needed
 730 02ee BDEC068B 		vldm	sp!, {d8-d10}
 731 02f2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 732              	.L82:
 733 02f6 F0EE676A 		vmov.f32	s13, s15
 734 02fa D0E7     		b	.L70
 735              	.L98:
 736 02fc AFF30080 		.align	3
 737              	.L97:
 738 0300 000062A2 		.word	-1570635776
 739 0304 5C947942 		.word	1115264092
 740 0308 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 14


 741 030c C0E1644E 		.word	1315234240
 742 0310 E5A2CC53 		.word	1405919973
 743 0314 C0E16449 		.word	1231348160
 744 0318 00000000 		.word	reprap
 745              		.size	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, .-_ZN13DriveMovement15PrepareExt
 746              		.section	.text._ZNK13DriveMovement10DebugPrintEcb,"ax",%progbits
 747              		.align	1
 748              		.p2align 2,,3
 749              		.global	_ZNK13DriveMovement10DebugPrintEcb
 750              		.syntax unified
 751              		.thumb
 752              		.thumb_func
 753              		.fpu fpv4-sp-d16
 754              		.type	_ZNK13DriveMovement10DebugPrintEcb, %function
 755              	_ZNK13DriveMovement10DebugPrintEcb:
 756              		@ args = 0, pretend = 0, frame = 0
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 759 0004 0579     		ldrb	r5, [r0, #4]	@ zero_extendqisi2
 760 0006 8BB0     		sub	sp, sp, #44
 761 0008 002D     		cmp	r5, #0
 762 000a 52D0     		beq	.L100
 763 000c 0446     		mov	r4, r0
 764 000e D4E90867 		ldrd	r6, [r4, #32]
 765 0012 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 766 0014 2A48     		ldr	r0, .L109
 767 0016 CDE90467 		strd	r6, [sp, #16]
 768 001a A669     		ldr	r6, [r4, #24]
 769 001c 0396     		str	r6, [sp, #12]
 770 001e 2669     		ldr	r6, [r4, #16]
 771 0020 0296     		str	r6, [sp, #8]
 772 0022 E668     		ldr	r6, [r4, #12]
 773 0024 0196     		str	r6, [sp, #4]
 774 0026 9046     		mov	r8, r2
 775 0028 264A     		ldr	r2, .L109+4
 776 002a A668     		ldr	r6, [r4, #8]
 777 002c 0096     		str	r6, [sp]
 778 002e 13F0100F 		tst	r3, #16
 779 0032 0CBF     		ite	eq
 780 0034 4223     		moveq	r3, #66
 781 0036 4623     		movne	r3, #70
 782 0038 022D     		cmp	r5, #2
 783 003a 18BF     		it	ne
 784 003c 0246     		movne	r2, r0
 785 003e 2248     		ldr	r0, .L109+8
 786 0040 FFF7FEFF 		bl	debugPrintf
 787 0044 B8F1000F 		cmp	r8, #0
 788 0048 19D1     		bne	.L108
 789 004a D4E90E23 		ldrd	r2, [r4, #56]
 790 004e D4E90C89 		ldrd	r8, [r4, #48]
 791 0052 D4E90A67 		ldrd	r6, [r4, #40]
 792 0056 CDE90623 		strd	r2, [sp, #24]
 793 005a D4E91012 		ldrd	r1, r2, [r4, #64]
 794 005e CDE90289 		strd	r8, [sp, #8]
 795 0062 236D     		ldr	r3, [r4, #80]
 796 0064 0993     		str	r3, [sp, #36]
 797 0066 D4E91230 		ldrd	r3, r0, [r4, #72]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 15


 798 006a CDE90067 		strd	r6, [sp]
 799 006e 0890     		str	r0, [sp, #32]
 800 0070 0493     		str	r3, [sp, #16]
 801 0072 1648     		ldr	r0, .L109+12
 802 0074 FFF7FEFF 		bl	debugPrintf
 803 0078 0BB0     		add	sp, sp, #44
 804              		@ sp needed
 805 007a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 806              	.L108:
 807 007e D4E90C23 		ldrd	r2, [r4, #48]
 808 0082 D4E90A89 		ldrd	r8, [r4, #40]
 809 0086 D4E90E67 		ldrd	r6, [r4, #56]
 810 008a CDE90423 		strd	r2, [sp, #16]
 811 008e D4E91012 		ldrd	r1, r2, [r4, #64]
 812 0092 CDE90289 		strd	r8, [sp, #8]
 813 0096 236D     		ldr	r3, [r4, #80]
 814 0098 0893     		str	r3, [sp, #32]
 815 009a D4E91230 		ldrd	r3, r0, [r4, #72]
 816 009e CDE90067 		strd	r6, [sp]
 817 00a2 0790     		str	r0, [sp, #28]
 818 00a4 0693     		str	r3, [sp, #24]
 819 00a6 0A48     		ldr	r0, .L109+16
 820 00a8 FFF7FEFF 		bl	debugPrintf
 821 00ac 0BB0     		add	sp, sp, #44
 822              		@ sp needed
 823 00ae BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 824              	.L100:
 825 00b2 0848     		ldr	r0, .L109+20
 826 00b4 0BB0     		add	sp, sp, #44
 827              		@ sp needed
 828 00b6 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 829 00ba FFF7FEBF 		b	debugPrintf
 830              	.L110:
 831 00be 00BF     		.align	2
 832              	.L109:
 833 00c0 08000000 		.word	.LC1
 834 00c4 00000000 		.word	.LC0
 835 00c8 0C000000 		.word	.LC2
 836 00cc E0000000 		.word	.LC4
 837 00d0 54000000 		.word	.LC3
 838 00d4 64010000 		.word	.LC5
 839              		.size	_ZNK13DriveMovement10DebugPrintEcb, .-_ZNK13DriveMovement10DebugPrintEcb
 840              		.section	.text.hot._ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb,"ax",%progbits
 841              		.align	1
 842              		.p2align 2,,3
 843              		.global	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 844              		.syntax unified
 845              		.thumb
 846              		.thumb_func
 847              		.fpu fpv4-sp-d16
 848              		.type	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, %function
 849              	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb:
 850              		@ args = 0, pretend = 0, frame = 0
 851              		@ frame_needed = 0, uses_anonymous_args = 0
 852 0000 8369     		ldr	r3, [r0, #24]
 853 0002 242B     		cmp	r3, #36
 854 0004 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 16


 855 0008 0446     		mov	r4, r0
 856 000a 8846     		mov	r8, r1
 857 000c C568     		ldr	r5, [r0, #12]
 858 000e 15D8     		bhi	.L127
 859 0010 0169     		ldr	r1, [r0, #16]
 860 0012 8668     		ldr	r6, [r0, #8]
 861 0014 A942     		cmp	r1, r5
 862 0016 02D3     		bcc	.L113
 863 0018 8E42     		cmp	r6, r1
 864 001a 28BF     		it	cs
 865 001c 0E46     		movcs	r6, r1
 866              	.L113:
 867 001e 082B     		cmp	r3, #8
 868 0020 A6EB0506 		sub	r6, r6, r5
 869 0024 59D8     		bhi	.L114
 870 0026 082E     		cmp	r6, #8
 871 0028 00F29E80 		bhi	.L134
 872              	.L115:
 873 002c 042E     		cmp	r6, #4
 874 002e 56D9     		bls	.L116
 875 0030 4FF0030C 		mov	ip, #3
 876 0034 6544     		add	r5, r5, ip
 877 0036 6346     		mov	r3, ip
 878 0038 0226     		movs	r6, #2
 879 003a 03E0     		b	.L112
 880              	.L127:
 881 003c 4FF0000C 		mov	ip, #0
 882 0040 6346     		mov	r3, ip
 883 0042 6646     		mov	r6, ip
 884              	.L112:
 885 0044 216C     		ldr	r1, [r4, #64]
 886 0046 E371     		strb	r3, [r4, #7]
 887 0048 A942     		cmp	r1, r5
 888 004a 53D8     		bhi	.L135
 889              	.L117:
 890 004c 636C     		ldr	r3, [r4, #68]
 891 004e AB42     		cmp	r3, r5
 892 0050 25D9     		bls	.L119
 893 0052 A06C     		ldr	r0, [r4, #72]
 894 0054 D8F8EC30 		ldr	r3, [r8, #236]
 895 0058 226D     		ldr	r2, [r4, #80]
 896 005a A5FB0001 		umull	r0, r1, r5, r0
 897 005e 870A     		lsrs	r7, r0, #10
 898 0060 47EA8157 		orr	r7, r7, r1, lsl #22
 899 0064 3B44     		add	r3, r3, r7
 900 0066 9F1A     		subs	r7, r3, r2
 901              	.L118:
 902 0068 6369     		ldr	r3, [r4, #20]
 903 006a BB42     		cmp	r3, r7
 904 006c 56D2     		bcs	.L128
 905              	.L137:
 906 006e FB1A     		subs	r3, r7, r3
 907 0070 D8F8DC20 		ldr	r2, [r8, #220]
 908 0074 23FA06F6 		lsr	r6, r3, r6
 909 0078 0CFB1673 		mls	r3, ip, r6, r7
 910 007c BA42     		cmp	r2, r7
 911 007e C4E90536 		strd	r3, r6, [r4, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 17


 912 0082 53D2     		bcs	.L129
 913              	.L138:
 914 0084 D4E90201 		ldrd	r0, r1, [r4, #8]
 915 0088 0131     		adds	r1, r1, #1
 916 008a 8142     		cmp	r1, r0
 917 008c 51D2     		bcs	.L136
 918 008e 434A     		ldr	r2, .L140
 919 0090 0221     		movs	r1, #2
 920 0092 1A44     		add	r2, r2, r3
 921 0094 A261     		str	r2, [r4, #24]
 922 0096 2171     		strb	r1, [r4, #4]
 923 0098 0020     		movs	r0, #0
 924 009a BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 925              	.L119:
 926 009e 2369     		ldr	r3, [r4, #16]
 927 00a0 AB42     		cmp	r3, r5
 928 00a2 4AD9     		bls	.L120
 929 00a4 D4E90C01 		ldrd	r0, r1, [r4, #48]
 930 00a8 A0FB05AB 		umull	r10, fp, r0, r5
 931 00ac 05FB01BB 		mla	fp, r5, r1, fp
 932 00b0 D4E90801 		ldrd	r0, [r4, #32]
 933 00b4 D8F8E820 		ldr	r2, [r8, #232]
 934 00b8 E36C     		ldr	r3, [r4, #76]
 935 00ba 8B45     		cmp	fp, r1
 936 00bc 08BF     		it	eq
 937 00be 8245     		cmpeq	r10, r0
 938 00c0 A2EB0307 		sub	r7, r2, r3
 939 00c4 D0D2     		bcs	.L118
 940 00c6 B0EB0A00 		subs	r0, r0, r10
 941 00ca 61EB0B01 		sbc	r1, r1, fp
 942 00ce FFF7FEFF 		bl	_Z7isqrt64y
 943 00d2 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 944 00d6 3F1A     		subs	r7, r7, r0
 945 00d8 C6E7     		b	.L118
 946              	.L114:
 947 00da 112B     		cmp	r3, #17
 948 00dc A6D9     		bls	.L115
 949              	.L116:
 950 00de 022E     		cmp	r6, #2
 951 00e0 94BF     		ite	ls
 952 00e2 0026     		movls	r6, #0
 953 00e4 0126     		movhi	r6, #1
 954 00e6 216C     		ldr	r1, [r4, #64]
 955 00e8 3544     		add	r5, r5, r6
 956 00ea 3346     		mov	r3, r6
 957 00ec A942     		cmp	r1, r5
 958 00ee B446     		mov	ip, r6
 959 00f0 E371     		strb	r3, [r4, #7]
 960 00f2 ABD9     		bls	.L117
 961              	.L135:
 962 00f4 D4E90A07 		ldrd	r0, r7, [r4, #40]
 963 00f8 D8F8E430 		ldr	r3, [r8, #228]
 964 00fc E26C     		ldr	r2, [r4, #76]
 965 00fe A0FB0501 		umull	r0, r1, r0, r5
 966 0102 05FB0711 		mla	r1, r5, r7, r1
 967 0106 9F18     		adds	r7, r3, r2
 968 0108 E7FB0701 		umlal	r0, r1, r7, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 18


 969 010c FFF7FEFF 		bl	_Z7isqrt64y
 970 0110 6369     		ldr	r3, [r4, #20]
 971 0112 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 972 0116 C71B     		subs	r7, r0, r7
 973 0118 BB42     		cmp	r3, r7
 974 011a A8D3     		bcc	.L137
 975              	.L128:
 976 011c D8F8DC20 		ldr	r2, [r8, #220]
 977 0120 3B46     		mov	r3, r7
 978 0122 0026     		movs	r6, #0
 979 0124 BA42     		cmp	r2, r7
 980 0126 C4E90536 		strd	r3, r6, [r4, #20]
 981 012a ABD3     		bcc	.L138
 982              	.L129:
 983 012c 0120     		movs	r0, #1
 984 012e BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 985              	.L136:
 986 0132 6261     		str	r2, [r4, #20]
 987 0134 0120     		movs	r0, #1
 988 0136 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 989              	.L120:
 990 013a 1BD0     		beq	.L139
 991              	.L122:
 992 013c D4E90C03 		ldrd	r0, r3, [r4, #48]
 993 0140 A0FB05AB 		umull	r10, fp, r0, r5
 994 0144 05FB03BB 		mla	fp, r5, r3, fp
 995 0148 D4E90E23 		ldrd	r2, [r4, #56]
 996 014c BAEB0200 		subs	r0, r10, r2
 997 0150 D8F8E870 		ldr	r7, [r8, #232]
 998 0154 6BEB0301 		sbc	r1, fp, r3
 999 0158 E36C     		ldr	r3, [r4, #76]
 1000 015a FF1A     		subs	r7, r7, r3
 1001 015c FFF7FEFF 		bl	_Z7isqrt64y
 1002 0160 94F807C0 		ldrb	ip, [r4, #7]	@ zero_extendqisi2
 1003 0164 0744     		add	r7, r7, r0
 1004 0166 7FE7     		b	.L118
 1005              	.L134:
 1006 0168 4FF0070C 		mov	ip, #7
 1007 016c 6544     		add	r5, r5, ip
 1008 016e 6346     		mov	r3, ip
 1009 0170 0326     		movs	r6, #3
 1010 0172 67E7     		b	.L112
 1011              	.L139:
 1012 0174 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 1013 0176 83F01001 		eor	r1, r3, #16
 1014 017a C1F30011 		ubfx	r1, r1, #4, #1
 1015 017e 61F30413 		bfi	r3, r1, #4, #1
 1016 0182 A371     		strb	r3, [r4, #6]
 1017 0184 002A     		cmp	r2, #0
 1018 0186 D9D0     		beq	.L122
 1019 0188 DAB2     		uxtb	r2, r3
 1020 018a 054B     		ldr	r3, .L140+4
 1021 018c 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 1022 018e 5868     		ldr	r0, [r3, #4]
 1023 0190 C2F30012 		ubfx	r2, r2, #4, #1
 1024 0194 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 1025 0198 D0E7     		b	.L122
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 19


 1026              	.L141:
 1027 019a 00BF     		.align	2
 1028              	.L140:
 1029 019c 80969800 		.word	10000000
 1030 01a0 00000000 		.word	reprap
 1031              		.size	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, .-_ZN13DriveMovement29CalcNextSte
 1032              		.section	.text.hot._ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb,"ax",%progbits
 1033              		.align	1
 1034              		.p2align 2,,3
 1035              		.global	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1036              		.syntax unified
 1037              		.thumb
 1038              		.thumb_func
 1039              		.fpu fpv4-sp-d16
 1040              		.type	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, %function
 1041              	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb:
 1042              		@ args = 0, pretend = 0, frame = 0
 1043              		@ frame_needed = 0, uses_anonymous_args = 0
 1044 0000 2DE9F04B 		push	{r4, r5, r6, r7, r8, r9, fp, lr}
 1045 0004 0F46     		mov	r7, r1
 1046 0006 8169     		ldr	r1, [r0, #24]
 1047 0008 2429     		cmp	r1, #36
 1048 000a 0446     		mov	r4, r0
 1049 000c D0E90330 		ldrd	r3, r0, [r0, #12]
 1050 0010 15D8     		bhi	.L165
 1051 0012 8342     		cmp	r3, r0
 1052 0014 A568     		ldr	r5, [r4, #8]
 1053 0016 02D2     		bcs	.L144
 1054 0018 8542     		cmp	r5, r0
 1055 001a 28BF     		it	cs
 1056 001c 0546     		movcs	r5, r0
 1057              	.L144:
 1058 001e 0329     		cmp	r1, #3
 1059 0020 A5EB0305 		sub	r5, r5, r3
 1060 0024 00F28880 		bhi	.L145
 1061 0028 102D     		cmp	r5, #16
 1062 002a 00F2EA80 		bhi	.L166
 1063              	.L146:
 1064 002e 082D     		cmp	r5, #8
 1065 0030 40F2EC80 		bls	.L148
 1066 0034 4FF48056 		mov	r6, #4096
 1067 0038 0721     		movs	r1, #7
 1068 003a 0325     		movs	r5, #3
 1069 003c 03E0     		b	.L143
 1070              	.L165:
 1071 003e 0021     		movs	r1, #0
 1072 0040 0D46     		mov	r5, r1
 1073 0042 4FF40076 		mov	r6, #512
 1074              	.L143:
 1075 0046 8342     		cmp	r3, r0
 1076 0048 E171     		strb	r1, [r4, #7]
 1077 004a 00F08780 		beq	.L176
 1078              	.L151:
 1079 004e 94F806C0 		ldrb	ip, [r4, #6]	@ zero_extendqisi2
 1080 0052 206C     		ldr	r0, [r4, #64]
 1081 0054 D7F8F030 		ldr	r3, [r7, #240]
 1082 0058 1CF0100C 		ands	ip, ip, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 20


 1083 005c 08BF     		it	eq
 1084 005e 7642     		rsbeq	r6, r6, #0
 1085 0060 3044     		add	r0, r0, r6
 1086 0062 80FB0389 		smull	r8, r9, r0, r3
 1087 0066 B8F1000F 		cmp	r8, #0
 1088 006a 79F10003 		sbcs	r3, r9, #0
 1089 006e 2064     		str	r0, [r4, #64]
 1090 0070 05DA     		bge	.L154
 1091 0072 6A4A     		ldr	r2, .L181
 1092 0074 0023     		movs	r3, #0
 1093 0076 18EB0208 		adds	r8, r8, r2
 1094 007a 49EB0309 		adc	r9, r9, r3
 1095              	.L154:
 1096 007e D4E90E23 		ldrd	r2, [r4, #56]
 1097 0082 4FEA185E 		lsr	lr, r8, #20
 1098 0086 4EEA093E 		orr	lr, lr, r9, lsl #12
 1099 008a 80FB0089 		smull	r8, r9, r0, r0
 1100 008e B2EB0802 		subs	r2, r2, r8
 1101 0092 666C     		ldr	r6, [r4, #68]
 1102 0094 63EB0903 		sbc	r3, r3, r9
 1103 0098 1946     		mov	r1, r3
 1104 009a 7644     		add	r6, r6, lr
 1105 009c 1046     		mov	r0, r2
 1106 009e C6FB0601 		smlal	r0, r1, r6, r6
 1107 00a2 0128     		cmp	r0, #1
 1108 00a4 71F10003 		sbcs	r3, r1, #0
 1109 00a8 7DDA     		bge	.L177
 1110 00aa 0020     		movs	r0, #0
 1111              	.L155:
 1112 00ac BCF1000F 		cmp	ip, #0
 1113 00b0 34D0     		beq	.L156
 1114 00b2 361A     		subs	r6, r6, r0
 1115 00b4 002E     		cmp	r6, #0
 1116 00b6 34DB     		blt	.L178
 1117              	.L158:
 1118 00b8 A36C     		ldr	r3, [r4, #72]
 1119 00ba B342     		cmp	r3, r6
 1120 00bc B046     		mov	r8, r6
 1121 00be 4FEAE679 		asr	r9, r6, #31
 1122 00c2 59D8     		bhi	.L179
 1123 00c4 E36C     		ldr	r3, [r4, #76]
 1124 00c6 9E42     		cmp	r6, r3
 1125 00c8 77D2     		bcs	.L162
 1126 00ca 266D     		ldr	r6, [r4, #80]
 1127 00cc D7F8EC30 		ldr	r3, [r7, #236]
 1128 00d0 A6FB0801 		umull	r0, r1, r6, r8
 1129 00d4 06FB0911 		mla	r1, r6, r9, r1
 1130 00d8 C20C     		lsrs	r2, r0, #19
 1131 00da 42EA4132 		orr	r2, r2, r1, lsl #13
 1132 00de 9E18     		adds	r6, r3, r2
 1133              	.L161:
 1134 00e0 6369     		ldr	r3, [r4, #20]
 1135 00e2 D7F8DC20 		ldr	r2, [r7, #220]
 1136 00e6 B342     		cmp	r3, r6
 1137 00e8 3CBF     		itt	cc
 1138 00ea F31A     		subcc	r3, r6, r3
 1139 00ec 23FA05F5 		lsrcc	r5, r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 21


 1140 00f0 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 1141 00f2 28BF     		it	cs
 1142 00f4 0025     		movcs	r5, #0
 1143 00f6 A561     		str	r5, [r4, #24]
 1144 00f8 B242     		cmp	r2, r6
 1145 00fa 05FB1365 		mls	r5, r5, r3, r6
 1146 00fe 6561     		str	r5, [r4, #20]
 1147 0100 58D2     		bcs	.L171
 1148 0102 D4E90213 		ldrd	r1, r3, [r4, #8]
 1149 0106 0133     		adds	r3, r3, #1
 1150 0108 8B42     		cmp	r3, r1
 1151 010a 76D2     		bcs	.L180
 1152 010c 444B     		ldr	r3, .L181+4
 1153 010e 0222     		movs	r2, #2
 1154 0110 2B44     		add	r3, r3, r5
 1155 0112 A361     		str	r3, [r4, #24]
 1156 0114 2271     		strb	r2, [r4, #4]
 1157 0116 0020     		movs	r0, #0
 1158 0118 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1159              	.L156:
 1160 011c 0644     		add	r6, r6, r0
 1161 011e 002E     		cmp	r6, #0
 1162 0120 CADA     		bge	.L158
 1163              	.L178:
 1164 0122 E368     		ldr	r3, [r4, #12]
 1165 0124 03F57423 		add	r3, r3, #999424
 1166 0128 03F51073 		add	r3, r3, #576
 1167 012c 0222     		movs	r2, #2
 1168 012e E360     		str	r3, [r4, #12]
 1169 0130 2271     		strb	r2, [r4, #4]
 1170 0132 0020     		movs	r0, #0
 1171 0134 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1172              	.L145:
 1173 0138 0829     		cmp	r1, #8
 1174 013a 7FF678AF 		bls	.L146
 1175 013e 1129     		cmp	r1, #17
 1176 0140 64D9     		bls	.L148
 1177              	.L149:
 1178 0142 022D     		cmp	r5, #2
 1179 0144 94BF     		ite	ls
 1180 0146 0025     		movls	r5, #0
 1181 0148 0125     		movhi	r5, #1
 1182 014a 4FF40076 		mov	r6, #512
 1183 014e 2946     		mov	r1, r5
 1184 0150 8342     		cmp	r3, r0
 1185 0152 06FA05F6 		lsl	r6, r6, r5
 1186 0156 E171     		strb	r1, [r4, #7]
 1187 0158 7FF479AF 		bne	.L151
 1188              	.L176:
 1189 015c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 1190 015e 6FF30413 		bfc	r3, #4, #1
 1191 0162 A371     		strb	r3, [r4, #6]
 1192 0164 002A     		cmp	r2, #0
 1193 0166 3FF472AF 		beq	.L151
 1194 016a 2E4B     		ldr	r3, .L181+8
 1195 016c 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 1196 016e 5868     		ldr	r0, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 22


 1197 0170 0022     		movs	r2, #0
 1198 0172 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 1199 0176 6AE7     		b	.L151
 1200              	.L179:
 1201 0178 D4E90A23 		ldrd	r2, r3, [r4, #40]
 1202 017c 06FB03F3 		mul	r3, r6, r3
 1203 0180 02FB0931 		mla	r1, r2, r9, r3
 1204 0184 A2FB0623 		umull	r2, r3, r2, r6
 1205 0188 0B44     		add	r3, r3, r1
 1206 018a D7F8E4C0 		ldr	ip, [r7, #228]
 1207 018e 500A     		lsrs	r0, r2, #9
 1208 0190 40EAC350 		orr	r0, r0, r3, lsl #23
 1209 0194 590A     		lsrs	r1, r3, #9
 1210 0196 ECFB0C01 		umlal	r0, r1, ip, ip
 1211 019a FFF7FEFF 		bl	_Z7isqrt64y
 1212 019e D7F8E460 		ldr	r6, [r7, #228]
 1213 01a2 861B     		subs	r6, r0, r6
 1214 01a4 9CE7     		b	.L161
 1215              	.L177:
 1216 01a6 FFF7FEFF 		bl	_Z7isqrt64y
 1217 01aa 94F806C0 		ldrb	ip, [r4, #6]	@ zero_extendqisi2
 1218 01ae 0CF0100C 		and	ip, ip, #16
 1219 01b2 7BE7     		b	.L155
 1220              	.L171:
 1221 01b4 0120     		movs	r0, #1
 1222 01b6 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1223              	.L162:
 1224 01ba D4E90C23 		ldrd	r2, r3, [r4, #48]
 1225 01be 08FB03F3 		mul	r3, r8, r3
 1226 01c2 02FB0931 		mla	r1, r2, r9, r3
 1227 01c6 A2FB0823 		umull	r2, r3, r2, r8
 1228 01ca D4E90889 		ldrd	r8, [r4, #32]
 1229 01ce 0B44     		add	r3, r3, r1
 1230 01d0 4FEA522B 		lsr	fp, r2, #9
 1231 01d4 4FEA532C 		lsr	ip, r3, #9
 1232 01d8 4BEAC35B 		orr	fp, fp, r3, lsl #23
 1233 01dc CC45     		cmp	ip, r9
 1234 01de 08BF     		it	eq
 1235 01e0 C345     		cmpeq	fp, r8
 1236 01e2 D7F8E860 		ldr	r6, [r7, #232]
 1237 01e6 BFF47BAF 		bcs	.L161
 1238 01ea B8EB0B00 		subs	r0, r8, fp
 1239 01ee 69EB0C01 		sbc	r1, r9, ip
 1240 01f2 FFF7FEFF 		bl	_Z7isqrt64y
 1241 01f6 361A     		subs	r6, r6, r0
 1242 01f8 72E7     		b	.L161
 1243              	.L180:
 1244 01fa 6261     		str	r2, [r4, #20]
 1245 01fc 0120     		movs	r0, #1
 1246 01fe BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 1247              	.L166:
 1248 0202 4FF40056 		mov	r6, #8192
 1249 0206 0F21     		movs	r1, #15
 1250 0208 0425     		movs	r5, #4
 1251 020a 1CE7     		b	.L143
 1252              	.L148:
 1253 020c 042D     		cmp	r5, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 23


 1254 020e 98D9     		bls	.L149
 1255 0210 4FF40066 		mov	r6, #2048
 1256 0214 0321     		movs	r1, #3
 1257 0216 0225     		movs	r5, #2
 1258 0218 15E7     		b	.L143
 1259              	.L182:
 1260 021a 00BF     		.align	2
 1261              	.L181:
 1262 021c FFFF0F00 		.word	1048575
 1263 0220 80969800 		.word	10000000
 1264 0224 00000000 		.word	reprap
 1265              		.size	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, .-_ZN13DriveMovement25CalcNextStepTim
 1266              		.section	.text._ZN13DriveMovement11ReduceSpeedERK3DDAm,"ax",%progbits
 1267              		.align	1
 1268              		.p2align 2,,3
 1269              		.global	_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1270              		.syntax unified
 1271              		.thumb
 1272              		.thumb_func
 1273              		.fpu fpv4-sp-d16
 1274              		.type	_ZN13DriveMovement11ReduceSpeedERK3DDAm, %function
 1275              	_ZN13DriveMovement11ReduceSpeedERK3DDAm:
 1276              		@ args = 0, pretend = 0, frame = 0
 1277              		@ frame_needed = 0, uses_anonymous_args = 0
 1278              		@ link register save eliminated.
 1279 0000 8B7A     		ldrb	r3, [r1, #10]	@ zero_extendqisi2
 1280 0002 9B07     		lsls	r3, r3, #30
 1281 0004 02D5     		bpl	.L184
 1282 0006 4379     		ldrb	r3, [r0, #5]	@ zero_extendqisi2
 1283 0008 022B     		cmp	r3, #2
 1284 000a 09D9     		bls	.L189
 1285              	.L184:
 1286 000c 816C     		ldr	r1, [r0, #72]
 1287 000e 8368     		ldr	r3, [r0, #8]
 1288 0010 02FB01F2 		mul	r2, r2, r1
 1289 0014 0133     		adds	r3, r3, #1
 1290 0016 0021     		movs	r1, #0
 1291 0018 C0E91132 		strd	r3, r2, [r0, #68]
 1292 001c 0164     		str	r1, [r0, #64]
 1293 001e 7047     		bx	lr
 1294              	.L189:
 1295 0020 036D     		ldr	r3, [r0, #80]
 1296 0022 0021     		movs	r1, #0
 1297 0024 02FB03F2 		mul	r2, r2, r3
 1298 0028 4FF0FF33 		mov	r3, #-1
 1299 002c 0265     		str	r2, [r0, #80]
 1300 002e C0E91213 		strd	r1, r3, [r0, #72]
 1301 0032 7047     		bx	lr
 1302              		.size	_ZN13DriveMovement11ReduceSpeedERK3DDAm, .-_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1303              		.global	_ZN13DriveMovement7minFreeE
 1304              		.global	_ZN13DriveMovement7numFreeE
 1305              		.global	_ZN13DriveMovement8freeListE
 1306              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1307              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1308              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1309              	_ZL28cpu_irq_prev_interrupt_state:
 1310 0000 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 24


 1311              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1312              		.align	2
 1313              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1314              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1315              	_ZL32cpu_irq_critical_section_counter:
 1316 0000 00000000 		.space	4
 1317              		.section	.bss._ZN13DriveMovement7minFreeE,"aw",%nobits
 1318              		.align	2
 1319              		.set	.LANCHOR2,. + 0
 1320              		.type	_ZN13DriveMovement7minFreeE, %object
 1321              		.size	_ZN13DriveMovement7minFreeE, 4
 1322              	_ZN13DriveMovement7minFreeE:
 1323 0000 00000000 		.space	4
 1324              		.section	.bss._ZN13DriveMovement7numFreeE,"aw",%nobits
 1325              		.align	2
 1326              		.set	.LANCHOR1,. + 0
 1327              		.type	_ZN13DriveMovement7numFreeE, %object
 1328              		.size	_ZN13DriveMovement7numFreeE, 4
 1329              	_ZN13DriveMovement7numFreeE:
 1330 0000 00000000 		.space	4
 1331              		.section	.bss._ZN13DriveMovement8freeListE,"aw",%nobits
 1332              		.align	2
 1333              		.set	.LANCHOR0,. + 0
 1334              		.type	_ZN13DriveMovement8freeListE, %object
 1335              		.size	_ZN13DriveMovement8freeListE, 4
 1336              	_ZN13DriveMovement8freeListE:
 1337 0000 00000000 		.space	4
 1338              		.section	.rodata._ZNK13DriveMovement10DebugPrintEcb.str1.4,"aMS",%progbits,1
 1339              		.align	2
 1340              	.LC0:
 1341 0000 20455252 		.ascii	" ERR:\000"
 1341      3A00
 1342 0006 0000     		.space	2
 1343              	.LC1:
 1344 0008 3A00     		.ascii	":\000"
 1345 000a 0000     		.space	2
 1346              	.LC2:
 1347 000c 444D2563 		.ascii	"DM%c%s dir=%c steps=%lu next=%lu rev=%lu interval=%"
 1347      25732064 
 1347      69723D25 
 1347      63207374 
 1347      6570733D 
 1348 003f 6C752032 		.ascii	"lu 2dtstc2diva=%llu\012\000"
 1348      64747374 
 1348      63326469 
 1348      76613D25 
 1348      6C6C750A 
 1349              	.LC3:
 1350 0054 686D7A30 		.ascii	"hmz0sK=%li minusAaPlusBbTimesKs=%li dSquaredMinusAs"
 1350      734B3D25 
 1350      6C69206D 
 1350      696E7573 
 1350      4161506C 
 1351 0087 71756172 		.ascii	"quaredMinusBsquared=%lld\0122c2mmsda=%llu2c2mmsdd=%"
 1351      65644D69 
 1351      6E757342 
 1351      73717561 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccgRpa1T.s 			page 25


 1351      7265643D 
 1352 00b7 6C6C7520 		.ascii	"llu asdsk=%lu dsdsk=%lu mmstcdts=%lu\012\000"
 1352      61736473 
 1352      6B3D256C 
 1352      75206473 
 1352      64736B3D 
 1353 00dd 000000   		.space	3
 1354              	.LC4:
 1355 00e0 61636365 		.ascii	"accelStopStep=%lu decelStartStep=%lu 2c2mmsda=%llu "
 1355      6C53746F 
 1355      70537465 
 1355      703D256C 
 1355      75206465 
 1356 0113 3263326D 		.ascii	"2c2mmsdd=%llu\012mmPerStepTimesCdivtopSpeed=%lu fms"
 1356      6D736464 
 1356      3D256C6C 
 1356      750A6D6D 
 1356      50657253 
 1357 0143 646D7473 		.ascii	"dmtstdca2=%lld cc=%lu acc=%lu\012\000"
 1357      74646361 
 1357      323D256C 
 1357      6C642063 
 1357      633D256C 
 1358 0162 0000     		.space	2
 1359              	.LC5:
 1360 0164 444D2563 		.ascii	"DM%c: not moving\012\000"
 1360      3A206E6F 
 1360      74206D6F 
 1360      76696E67 
 1360      0A00
 1361              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
