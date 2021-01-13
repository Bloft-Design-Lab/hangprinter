ARM GAS  /tmp/ccs6Uu0h.s 			page 1


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
  13              		.file	"Pid.cpp"
  14              		.section	.text._ZN3PID8SwitchOnEv.part.15,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZN3PID8SwitchOnEv.part.15, %function
  22              	_ZN3PID8SwitchOnEv.part.15:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 70B5     		push	{r4, r5, r6, lr}
  26 0002 90F87C50 		ldrb	r5, [r0, #124]	@ zero_extendqisi2
  27 0006 25B9     		cbnz	r5, .L2
  28 0008 2A4B     		ldr	r3, .L26
  29 000a 9B6C     		ldr	r3, [r3, #72]	@ unaligned
  30 000c 9A06     		lsls	r2, r3, #26
  31 000e 40D4     		bmi	.L25
  32              	.L1:
  33 0010 70BD     		pop	{r4, r5, r6, pc}
  34              	.L2:
  35 0012 90F87E30 		ldrb	r3, [r0, #126]	@ zero_extendqisi2
  36 0016 90ED067A 		vldr.32	s14, [r0, #24]
  37 001a D0ED027A 		vldr.32	s15, [r0, #8]
  38 001e D0ED035A 		vldr.32	s11, [r0, #12]
  39 0022 F7EE006A 		vmov.f32	s13, #1.0e+0
  40 0026 002B     		cmp	r3, #0
  41 0028 37EE266A 		vadd.f32	s12, s14, s13
  42 002c 08BF     		it	eq
  43 002e F0EE657A 		vmoveq.f32	s15, s11
  44 0032 B4EEE76A 		vcmpe.f32	s12, s15
  45 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  46 003a 0446     		mov	r4, r0
  47 003c 19D5     		bpl	.L22
  48 003e 0323     		movs	r3, #3
  49 0040 9D42     		cmp	r5, r3
  50 0042 80F87C30 		strb	r3, [r0, #124]
  51 0046 E3D0     		beq	.L1
  52 0048 0023     		movs	r3, #0
  53 004a A0F87830 		strh	r3, [r0, #120]	@ movhi
  54 004e FFF7FEFF 		bl	millis
  55 0052 2067     		str	r0, [r4, #112]
  56              	.L9:
  57 0054 174B     		ldr	r3, .L26
ARM GAS  /tmp/ccs6Uu0h.s 			page 2


  58 0056 9B6C     		ldr	r3, [r3, #72]
  59 0058 9B06     		lsls	r3, r3, #26
  60 005a D9D5     		bpl	.L1
  61 005c 012D     		cmp	r5, #1
  62 005e D7D1     		bne	.L1
  63 0060 94F97A30 		ldrsb	r3, [r4, #122]
  64 0064 2068     		ldr	r0, [r4]
  65 0066 144A     		ldr	r2, .L26+4
  66 0068 3521     		movs	r1, #53
  67 006a BDE87040 		pop	{r4, r5, r6, lr}
  68 006e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  69              	.L22:
  70 0072 77EEA67A 		vadd.f32	s15, s15, s13
  71 0076 B4EEE77A 		vcmpe.f32	s14, s15
  72 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  73 007e 12DC     		bgt	.L10
  74 0080 0523     		movs	r3, #5
  75 0082 9D42     		cmp	r5, r3
  76 0084 80F87C30 		strb	r3, [r0, #124]
  77 0088 C2D0     		beq	.L1
  78              	.L11:
  79 008a 0023     		movs	r3, #0
  80 008c A4F87830 		strh	r3, [r4, #120]	@ movhi
  81 0090 E0E7     		b	.L9
  82              	.L25:
  83 0092 90F97A30 		ldrsb	r3, [r0, #122]
  84 0096 094A     		ldr	r2, .L26+8
  85 0098 0068     		ldr	r0, [r0]
  86 009a 40F2B521 		movw	r1, #693
  87 009e BDE87040 		pop	{r4, r5, r6, lr}
  88 00a2 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  89              	.L10:
  90 00a6 0423     		movs	r3, #4
  91 00a8 9D42     		cmp	r5, r3
  92 00aa 80F87C30 		strb	r3, [r0, #124]
  93 00ae ECD1     		bne	.L11
  94 00b0 70BD     		pop	{r4, r5, r6, pc}
  95              	.L27:
  96 00b2 00BF     		.align	2
  97              	.L26:
  98 00b4 00000000 		.word	reprap
  99 00b8 34000000 		.word	.LC1
 100 00bc 00000000 		.word	.LC0
 101              		.size	_ZN3PID8SwitchOnEv.part.15, .-_ZN3PID8SwitchOnEv.part.15
 102              		.section	.text._ZN3PIDC2ER8Platforma,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	_ZN3PIDC2ER8Platforma
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	_ZN3PIDC2ER8Platforma, %function
 111              	_ZN3PIDC2ER8Platforma:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/ccs6Uu0h.s 			page 3


 115 0002 0446     		mov	r4, r0
 116 0004 0025     		movs	r5, #0
 117 0006 C0E90015 		strd	r1, r5, [r0]
 118 000a 1646     		mov	r6, r2
 119 000c 3030     		adds	r0, r0, #48
 120 000e FFF7FEFF 		bl	_ZN5FopDtC1Ev
 121 0012 0123     		movs	r3, #1
 122 0014 84F87A60 		strb	r6, [r4, #122]
 123 0018 84F87D50 		strb	r5, [r4, #125]
 124 001c 84F87C30 		strb	r3, [r4, #124]
 125 0020 2046     		mov	r0, r4
 126 0022 70BD     		pop	{r4, r5, r6, pc}
 127              		.size	_ZN3PIDC2ER8Platforma, .-_ZN3PIDC2ER8Platforma
 128              		.global	_ZN3PIDC1ER8Platforma
 129              		.thumb_set _ZN3PIDC1ER8Platforma,_ZN3PIDC2ER8Platforma
 130              		.section	.text._ZN3PID4InitEfffbb,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	_ZN3PID4InitEfffbb
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZN3PID4InitEfffbb, %function
 139              	_ZN3PID4InitEfffbb:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142 0000 70B5     		push	{r4, r5, r6, lr}
 143 0002 2DED048B 		vpush.64	{d8, d9}
 144 0006 2D4B     		ldr	r3, .L38
 145 0008 2D4E     		ldr	r6, .L38+4
 146 000a 9FED2E8A 		vldr.32	s16, .L38+8
 147 000e 0446     		mov	r4, r0
 148 0010 D868     		ldr	r0, [r3, #12]
 149 0012 2D4B     		ldr	r3, .L38+12
 150 0014 2661     		str	r6, [r4, #16]	@ float
 151 0016 0D46     		mov	r5, r1
 152 0018 6361     		str	r3, [r4, #20]	@ float
 153 001a 94F97A10 		ldrsb	r1, [r4, #122]
 154 001e F0EE408A 		vmov.f32	s17, s0
 155 0022 B0EE609A 		vmov.f32	s18, s1
 156 0026 F0EE419A 		vmov.f32	s19, s2
 157 002a 1646     		mov	r6, r2
 158 002c FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 159 0030 3246     		mov	r2, r6
 160 0032 B0EE402A 		vmov.f32	s4, s0
 161 0036 2946     		mov	r1, r5
 162 0038 0023     		movs	r3, #0
 163 003a B0EE691A 		vmov.f32	s2, s19
 164 003e F0EE490A 		vmov.f32	s1, s18
 165 0042 B0EE680A 		vmov.f32	s0, s17
 166 0046 04F13000 		add	r0, r4, #48
 167 004a F0EE482A 		vmov.f32	s5, s16
 168 004e F7EE001A 		vmov.f32	s3, #1.0e+0
 169 0052 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 170 0056 94F84620 		ldrb	r2, [r4, #70]	@ zero_extendqisi2
 171 005a 1C49     		ldr	r1, .L38+16
ARM GAS  /tmp/ccs6Uu0h.s 			page 4


 172 005c 84ED028A 		vstr.32	s16, [r4, #8]
 173 0060 0023     		movs	r3, #0
 174 0062 0120     		movs	r0, #1
 175 0064 84ED038A 		vstr.32	s16, [r4, #12]
 176 0068 84ED198A 		vstr.32	s16, [r4, #100]
 177 006c 84ED1A8A 		vstr.32	s16, [r4, #104]
 178 0070 84ED1B8A 		vstr.32	s16, [r4, #108]
 179 0074 84F87C00 		strb	r0, [r4, #124]
 180 0078 A161     		str	r1, [r4, #24]	@ float
 181 007a 84F87B30 		strb	r3, [r4, #123]
 182 007e E362     		str	r3, [r4, #44]
 183 0080 84F88030 		strb	r3, [r4, #128]
 184 0084 84F87E30 		strb	r3, [r4, #126]
 185 0088 84F87F30 		strb	r3, [r4, #127]
 186 008c A4F87830 		strh	r3, [r4, #120]	@ movhi
 187 0090 72B1     		cbz	r2, .L31
 188 0092 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 189 0096 B4F84420 		ldrh	r2, [r4, #68]
 190 009a 94F97A10 		ldrsb	r1, [r4, #122]
 191 009e 2068     		ldr	r0, [r4]
 192 00a0 002B     		cmp	r3, #0
 193 00a2 B7EE000A 		vmov.f32	s0, #1.0e+0
 194 00a6 08BF     		it	eq
 195 00a8 B0EE480A 		vmoveq.f32	s0, s16
 196 00ac FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 197              	.L31:
 198 00b0 FFF7FEFF 		bl	millis
 199 00b4 BDEC048B 		vldm	sp!, {d8-d9}
 200 00b8 6067     		str	r0, [r4, #116]
 201 00ba 70BD     		pop	{r4, r5, r6, pc}
 202              	.L39:
 203              		.align	2
 204              	.L38:
 205 00bc 00000000 		.word	reprap
 206 00c0 00007041 		.word	1097859072
 207 00c4 00000000 		.word	0
 208 00c8 0000A040 		.word	1084227584
 209 00cc 0000FA44 		.word	1157234688
 210              		.size	_ZN3PID4InitEfffbb, .-_ZN3PID4InitEfffbb
 211              		.section	.text._ZN3PID5ResetEv,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	_ZN3PID5ResetEv
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv4-sp-d16
 219              		.type	_ZN3PID5ResetEv, %function
 220              	_ZN3PID5ResetEv:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223              		@ link register save eliminated.
 224 0000 0B4B     		ldr	r3, .L41
 225 0002 8361     		str	r3, [r0, #24]	@ float
 226 0004 0022     		movs	r2, #0
 227 0006 0023     		movs	r3, #0
 228 0008 0121     		movs	r1, #1
ARM GAS  /tmp/ccs6Uu0h.s 			page 5


 229 000a 80F87C10 		strb	r1, [r0, #124]
 230 000e 80F87B30 		strb	r3, [r0, #123]
 231 0012 C362     		str	r3, [r0, #44]
 232 0014 80F88030 		strb	r3, [r0, #128]
 233 0018 80F87E30 		strb	r3, [r0, #126]
 234 001c 80F87F30 		strb	r3, [r0, #127]
 235 0020 A0F87830 		strh	r3, [r0, #120]	@ movhi
 236 0024 8260     		str	r2, [r0, #8]	@ float
 237 0026 C260     		str	r2, [r0, #12]	@ float
 238 0028 4266     		str	r2, [r0, #100]	@ float
 239 002a 8266     		str	r2, [r0, #104]	@ float
 240 002c C266     		str	r2, [r0, #108]	@ float
 241 002e 7047     		bx	lr
 242              	.L42:
 243              		.align	2
 244              	.L41:
 245 0030 0000FA44 		.word	1157234688
 246              		.size	_ZN3PID5ResetEv, .-_ZN3PID5ResetEv
 247              		.section	.text._ZN3PID8SetModelEfffffbbt,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.global	_ZN3PID8SetModelEfffffbbt
 251              		.syntax unified
 252              		.thumb
 253              		.thumb_func
 254              		.fpu fpv4-sp-d16
 255              		.type	_ZN3PID8SetModelEfffffbbt, %function
 256              	_ZN3PID8SetModelEfffffbbt:
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 260 0002 2DED068B 		vpush.64	{d8, d9, d10}
 261 0006 0446     		mov	r4, r0
 262 0008 3548     		ldr	r0, .L53
 263 000a 0D46     		mov	r5, r1
 264 000c 83B0     		sub	sp, sp, #12
 265 000e 94F97A10 		ldrsb	r1, [r4, #122]
 266 0012 C068     		ldr	r0, [r0, #12]
 267 0014 F0EE42AA 		vmov.f32	s21, s4
 268 0018 B0EE408A 		vmov.f32	s16, s0
 269 001c B0EE609A 		vmov.f32	s18, s1
 270 0020 F0EE419A 		vmov.f32	s19, s2
 271 0024 B0EE61AA 		vmov.f32	s20, s3
 272 0028 1646     		mov	r6, r2
 273 002a 1F46     		mov	r7, r3
 274 002c FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 275 0030 2946     		mov	r1, r5
 276 0032 B0EE402A 		vmov.f32	s4, s0
 277 0036 F0EE408A 		vmov.f32	s17, s0
 278 003a 3B46     		mov	r3, r7
 279 003c 3246     		mov	r2, r6
 280 003e F0EE6A2A 		vmov.f32	s5, s21
 281 0042 F0EE4A1A 		vmov.f32	s3, s20
 282 0046 B0EE691A 		vmov.f32	s2, s19
 283 004a F0EE490A 		vmov.f32	s1, s18
 284 004e B0EE480A 		vmov.f32	s0, s16
 285 0052 04F13000 		add	r0, r4, #48
ARM GAS  /tmp/ccs6Uu0h.s 			page 6


 286 0056 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 287 005a 0546     		mov	r5, r0
 288 005c 98B1     		cbz	r0, .L44
 289 005e 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 290 0062 ABB1     		cbz	r3, .L45
 291 0064 B3EE097A 		vmov.f32	s14, #2.5e+1
 292 0068 78EEC78A 		vsub.f32	s17, s17, s14
 293 006c DFED1D7A 		vldr.32	s15, .L53+4
 294 0070 F7EE086A 		vmov.f32	s13, #1.5e+0
 295 0074 E8EEA67A 		vfma.f32	s15, s17, s13
 296 0078 38EE078A 		vadd.f32	s16, s16, s14
 297 007c B4EEE78A 		vcmpe.f32	s16, s15
 298 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 299 0084 1FDC     		bgt	.L52
 300              	.L44:
 301 0086 2846     		mov	r0, r5
 302 0088 03B0     		add	sp, sp, #12
 303              		@ sp needed
 304 008a BDEC068B 		vldm	sp!, {d8-d10}
 305 008e F0BD     		pop	{r4, r5, r6, r7, pc}
 306              	.L45:
 307 0090 1548     		ldr	r0, .L53+8
 308 0092 A061     		str	r0, [r4, #24]	@ float
 309 0094 0022     		movs	r2, #0
 310 0096 0121     		movs	r1, #1
 311 0098 2846     		mov	r0, r5
 312 009a 84F87B30 		strb	r3, [r4, #123]
 313 009e E362     		str	r3, [r4, #44]
 314 00a0 84F88030 		strb	r3, [r4, #128]
 315 00a4 84F87E30 		strb	r3, [r4, #126]
 316 00a8 84F87F30 		strb	r3, [r4, #127]
 317 00ac A4F87830 		strh	r3, [r4, #120]	@ movhi
 318 00b0 A260     		str	r2, [r4, #8]	@ float
 319 00b2 E260     		str	r2, [r4, #12]	@ float
 320 00b4 6266     		str	r2, [r4, #100]	@ float
 321 00b6 A266     		str	r2, [r4, #104]	@ float
 322 00b8 E266     		str	r2, [r4, #108]	@ float
 323 00ba 84F87C10 		strb	r1, [r4, #124]
 324 00be 03B0     		add	sp, sp, #12
 325              		@ sp needed
 326 00c0 BDEC068B 		vldm	sp!, {d8-d10}
 327 00c4 F0BD     		pop	{r4, r5, r6, r7, pc}
 328              	.L52:
 329 00c6 BDEEC88A 		vcvt.s32.f32	s16, s16
 330 00ca 94F97A30 		ldrsb	r3, [r4, #122]
 331 00ce 2068     		ldr	r0, [r4]
 332 00d0 064A     		ldr	r2, .L53+12
 333 00d2 8DED008A 		vstr.32	s16, [sp]	@ int
 334 00d6 40F2B521 		movw	r1, #693
 335 00da FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 336 00de D2E7     		b	.L44
 337              	.L54:
 338              		.align	2
 339              	.L53:
 340 00e0 00000000 		.word	reprap
 341 00e4 00004842 		.word	1112014848
 342 00e8 0000FA44 		.word	1157234688
ARM GAS  /tmp/ccs6Uu0h.s 			page 7


 343 00ec 00000000 		.word	.LC2
 344              		.size	_ZN3PID8SetModelEfffffbbt, .-_ZN3PID8SetModelEfffffbbt
 345              		.section	.text._ZNK3PID26GetHighestTemperatureLimitEv,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_ZNK3PID26GetHighestTemperatureLimitEv
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	_ZNK3PID26GetHighestTemperatureLimitEv, %function
 354              	_ZNK3PID26GetHighestTemperatureLimitEv:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 024B     		ldr	r3, .L56
 359 0002 90F97A10 		ldrsb	r1, [r0, #122]
 360 0006 D868     		ldr	r0, [r3, #12]
 361 0008 FFF7FEBF 		b	_ZNK4Heat26GetHighestTemperatureLimitEa
 362              	.L57:
 363              		.align	2
 364              	.L56:
 365 000c 00000000 		.word	reprap
 366              		.size	_ZNK3PID26GetHighestTemperatureLimitEv, .-_ZNK3PID26GetHighestTemperatureLimitEv
 367              		.section	.text._ZNK3PID25GetLowestTemperatureLimitEv,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	_ZNK3PID25GetLowestTemperatureLimitEv
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	_ZNK3PID25GetLowestTemperatureLimitEv, %function
 376              	_ZNK3PID25GetLowestTemperatureLimitEv:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 024B     		ldr	r3, .L59
 381 0002 90F97A10 		ldrsb	r1, [r0, #122]
 382 0006 D868     		ldr	r0, [r3, #12]
 383 0008 FFF7FEBF 		b	_ZNK4Heat25GetLowestTemperatureLimitEa
 384              	.L60:
 385              		.align	2
 386              	.L59:
 387 000c 00000000 		.word	reprap
 388              		.size	_ZNK3PID25GetLowestTemperatureLimitEv, .-_ZNK3PID25GetLowestTemperatureLimitEv
 389              		.section	.text._ZN3PID15ReadTemperatureEv,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	_ZN3PID15ReadTemperatureEv
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu fpv4-sp-d16
 397              		.type	_ZN3PID15ReadTemperatureEv, %function
 398              	_ZN3PID15ReadTemperatureEv:
 399              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccs6Uu0h.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401 0000 10B5     		push	{r4, lr}
 402 0002 82B0     		sub	sp, sp, #8
 403 0004 02AA     		add	r2, sp, #8
 404 0006 0023     		movs	r3, #0
 405 0008 02F8013D 		strb	r3, [r2, #-1]!
 406 000c 064B     		ldr	r3, .L63
 407 000e 90F97A10 		ldrsb	r1, [r0, #122]
 408 0012 0446     		mov	r4, r0
 409 0014 D868     		ldr	r0, [r3, #12]
 410 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 411 001a 9DF80700 		ldrb	r0, [sp, #7]	@ zero_extendqisi2
 412 001e 84ED060A 		vstr.32	s0, [r4, #24]
 413 0022 02B0     		add	sp, sp, #8
 414              		@ sp needed
 415 0024 10BD     		pop	{r4, pc}
 416              	.L64:
 417 0026 00BF     		.align	2
 418              	.L63:
 419 0028 00000000 		.word	reprap
 420              		.size	_ZN3PID15ReadTemperatureEv, .-_ZN3PID15ReadTemperatureEv
 421              		.section	.text._ZN3PID8SwitchOnEv,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZN3PID8SwitchOnEv
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu fpv4-sp-d16
 429              		.type	_ZN3PID8SwitchOnEv, %function
 430              	_ZN3PID8SwitchOnEv:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433              		@ link register save eliminated.
 434 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 435 0004 0BB1     		cbz	r3, .L65
 436 0006 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 437              	.L65:
 438 000a 7047     		bx	lr
 439              		.size	_ZN3PID8SwitchOnEv, .-_ZN3PID8SwitchOnEv
 440              		.section	.text._ZN3PID9SwitchOffEv,"ax",%progbits
 441              		.align	1
 442              		.p2align 2,,3
 443              		.global	_ZN3PID9SwitchOffEv
 444              		.syntax unified
 445              		.thumb
 446              		.thumb_func
 447              		.fpu fpv4-sp-d16
 448              		.type	_ZN3PID9SwitchOffEv, %function
 449              	_ZN3PID9SwitchOffEv:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452 0000 DFED1D7A 		vldr.32	s15, .L84
 453 0004 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 454 0008 C0ED1A7A 		vstr.32	s15, [r0, #104]
 455 000c F3B1     		cbz	r3, .L78
 456 000e 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/ccs6Uu0h.s 			page 9


 457 0010 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 458 0014 B0F84420 		ldrh	r2, [r0, #68]
 459 0018 90F97A10 		ldrsb	r1, [r0, #122]
 460 001c 002B     		cmp	r3, #0
 461 001e 0446     		mov	r4, r0
 462 0020 B7EE000A 		vmov.f32	s0, #1.0e+0
 463 0024 08BF     		it	eq
 464 0026 B0EE670A 		vmoveq.f32	s0, s15
 465 002a 0068     		ldr	r0, [r0]
 466 002c FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 467 0030 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 468 0034 052B     		cmp	r3, #5
 469 0036 0AD8     		bhi	.L81
 470 0038 012B     		cmp	r3, #1
 471 003a 06D9     		bls	.L67
 472              	.L83:
 473 003c 0F4B     		ldr	r3, .L84+4
 474 003e 9B6C     		ldr	r3, [r3, #72]
 475 0040 0122     		movs	r2, #1
 476 0042 9B06     		lsls	r3, r3, #26
 477 0044 84F87C20 		strb	r2, [r4, #124]
 478 0048 0DD4     		bmi	.L82
 479              	.L67:
 480 004a 70BD     		pop	{r4, r5, r6, pc}
 481              	.L78:
 482 004c 7047     		bx	lr
 483              	.L81:
 484 004e 0C4D     		ldr	r5, .L84+8
 485 0050 0421     		movs	r1, #4
 486 0052 2868     		ldr	r0, [r5]
 487 0054 FFF7FEFF 		bl	_ZdlPvj
 488 0058 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 489 005c 0022     		movs	r2, #0
 490 005e 012B     		cmp	r3, #1
 491 0060 2A60     		str	r2, [r5]
 492 0062 EBD8     		bhi	.L83
 493 0064 F1E7     		b	.L67
 494              	.L82:
 495 0066 94F97A30 		ldrsb	r3, [r4, #122]
 496 006a 2068     		ldr	r0, [r4]
 497 006c 054A     		ldr	r2, .L84+12
 498 006e 3521     		movs	r1, #53
 499 0070 BDE87040 		pop	{r4, r5, r6, lr}
 500 0074 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 501              	.L85:
 502              		.align	2
 503              	.L84:
 504 0078 00000000 		.word	0
 505 007c 00000000 		.word	reprap
 506 0080 00000000 		.word	.LANCHOR0
 507 0084 00000000 		.word	.LC3
 508              		.size	_ZN3PID9SwitchOffEv, .-_ZN3PID9SwitchOffEv
 509              		.global	__aeabi_f2d
 510              		.section	.text._ZN3PID20SetActiveTemperatureEf,"ax",%progbits
 511              		.align	1
 512              		.p2align 2,,3
 513              		.global	_ZN3PID20SetActiveTemperatureEf
ARM GAS  /tmp/ccs6Uu0h.s 			page 10


 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu fpv4-sp-d16
 518              		.type	_ZN3PID20SetActiveTemperatureEf, %function
 519              	_ZN3PID20SetActiveTemperatureEf:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522 0000 30B5     		push	{r4, r5, lr}
 523 0002 2DED028B 		vpush.64	{d8}
 524 0006 2C4D     		ldr	r5, .L106
 525 0008 90F97A10 		ldrsb	r1, [r0, #122]
 526 000c 85B0     		sub	sp, sp, #20
 527 000e 0446     		mov	r4, r0
 528 0010 E868     		ldr	r0, [r5, #12]
 529 0012 B0EE408A 		vmov.f32	s16, s0
 530 0016 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 531 001a B4EEC08A 		vcmpe.f32	s16, s0
 532 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 533 0022 19DC     		bgt	.L103
 534 0024 E868     		ldr	r0, [r5, #12]
 535 0026 94F97A10 		ldrsb	r1, [r4, #122]
 536 002a FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 537 002e B4EEC08A 		vcmpe.f32	s16, s0
 538 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 539 0036 23D4     		bmi	.L104
 540 0038 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 541 003c 84ED028A 		vstr.32	s16, [r4, #8]
 542 0040 022B     		cmp	r3, #2
 543 0042 05D9     		bls	.L86
 544 0044 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 545 0048 13B1     		cbz	r3, .L86
 546 004a 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 547 004e 5BBB     		cbnz	r3, .L105
 548              	.L86:
 549 0050 05B0     		add	sp, sp, #20
 550              		@ sp needed
 551 0052 BDEC028B 		vldm	sp!, {d8}
 552 0056 30BD     		pop	{r4, r5, pc}
 553              	.L103:
 554 0058 94F97A30 		ldrsb	r3, [r4, #122]
 555 005c 0293     		str	r3, [sp, #8]
 556 005e 18EE100A 		vmov	r0, s16
 557 0062 FFF7FEFF 		bl	__aeabi_f2d
 558 0066 2368     		ldr	r3, [r4]
 559 0068 144A     		ldr	r2, .L106+4
 560 006a CDE90001 		strd	r0, [sp]
 561 006e 1846     		mov	r0, r3
 562 0070 40F2B511 		movw	r1, #437
 563 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 564 0078 05B0     		add	sp, sp, #20
 565              		@ sp needed
 566 007a BDEC028B 		vldm	sp!, {d8}
 567 007e 30BD     		pop	{r4, r5, pc}
 568              	.L104:
 569 0080 94F97A30 		ldrsb	r3, [r4, #122]
 570 0084 0293     		str	r3, [sp, #8]
ARM GAS  /tmp/ccs6Uu0h.s 			page 11


 571 0086 18EE100A 		vmov	r0, s16
 572 008a FFF7FEFF 		bl	__aeabi_f2d
 573 008e 2368     		ldr	r3, [r4]
 574 0090 0B4A     		ldr	r2, .L106+8
 575 0092 CDE90001 		strd	r0, [sp]
 576 0096 1846     		mov	r0, r3
 577 0098 40F2B511 		movw	r1, #437
 578 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 579 00a0 05B0     		add	sp, sp, #20
 580              		@ sp needed
 581 00a2 BDEC028B 		vldm	sp!, {d8}
 582 00a6 30BD     		pop	{r4, r5, pc}
 583              	.L105:
 584 00a8 2046     		mov	r0, r4
 585 00aa 05B0     		add	sp, sp, #20
 586              		@ sp needed
 587 00ac BDEC028B 		vldm	sp!, {d8}
 588 00b0 BDE83040 		pop	{r4, r5, lr}
 589 00b4 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 590              	.L107:
 591              		.align	2
 592              	.L106:
 593 00b8 00000000 		.word	reprap
 594 00bc 00000000 		.word	.LC4
 595 00c0 2C000000 		.word	.LC5
 596              		.size	_ZN3PID20SetActiveTemperatureEf, .-_ZN3PID20SetActiveTemperatureEf
 597              		.section	.text._ZN3PID21SetStandbyTemperatureEf,"ax",%progbits
 598              		.align	1
 599              		.p2align 2,,3
 600              		.global	_ZN3PID21SetStandbyTemperatureEf
 601              		.syntax unified
 602              		.thumb
 603              		.thumb_func
 604              		.fpu fpv4-sp-d16
 605              		.type	_ZN3PID21SetStandbyTemperatureEf, %function
 606              	_ZN3PID21SetStandbyTemperatureEf:
 607              		@ args = 0, pretend = 0, frame = 0
 608              		@ frame_needed = 0, uses_anonymous_args = 0
 609 0000 30B5     		push	{r4, r5, lr}
 610 0002 2DED028B 		vpush.64	{d8}
 611 0006 2C4D     		ldr	r5, .L125
 612 0008 90F97A10 		ldrsb	r1, [r0, #122]
 613 000c 85B0     		sub	sp, sp, #20
 614 000e 0446     		mov	r4, r0
 615 0010 E868     		ldr	r0, [r5, #12]
 616 0012 B0EE408A 		vmov.f32	s16, s0
 617 0016 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 618 001a B4EEC08A 		vcmpe.f32	s16, s0
 619 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 620 0022 19DC     		bgt	.L122
 621 0024 E868     		ldr	r0, [r5, #12]
 622 0026 94F97A10 		ldrsb	r1, [r4, #122]
 623 002a FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 624 002e B4EEC08A 		vcmpe.f32	s16, s0
 625 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 626 0036 23D4     		bmi	.L123
 627 0038 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
ARM GAS  /tmp/ccs6Uu0h.s 			page 12


 628 003c 84ED038A 		vstr.32	s16, [r4, #12]
 629 0040 022B     		cmp	r3, #2
 630 0042 05D9     		bls	.L108
 631 0044 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 632 0048 13B9     		cbnz	r3, .L108
 633 004a 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 634 004e 5BBB     		cbnz	r3, .L124
 635              	.L108:
 636 0050 05B0     		add	sp, sp, #20
 637              		@ sp needed
 638 0052 BDEC028B 		vldm	sp!, {d8}
 639 0056 30BD     		pop	{r4, r5, pc}
 640              	.L122:
 641 0058 94F97A30 		ldrsb	r3, [r4, #122]
 642 005c 0293     		str	r3, [sp, #8]
 643 005e 18EE100A 		vmov	r0, s16
 644 0062 FFF7FEFF 		bl	__aeabi_f2d
 645 0066 2368     		ldr	r3, [r4]
 646 0068 144A     		ldr	r2, .L125+4
 647 006a CDE90001 		strd	r0, [sp]
 648 006e 1846     		mov	r0, r3
 649 0070 40F2B511 		movw	r1, #437
 650 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 651 0078 05B0     		add	sp, sp, #20
 652              		@ sp needed
 653 007a BDEC028B 		vldm	sp!, {d8}
 654 007e 30BD     		pop	{r4, r5, pc}
 655              	.L123:
 656 0080 94F97A30 		ldrsb	r3, [r4, #122]
 657 0084 0293     		str	r3, [sp, #8]
 658 0086 18EE100A 		vmov	r0, s16
 659 008a FFF7FEFF 		bl	__aeabi_f2d
 660 008e 2368     		ldr	r3, [r4]
 661 0090 0B4A     		ldr	r2, .L125+8
 662 0092 CDE90001 		strd	r0, [sp]
 663 0096 1846     		mov	r0, r3
 664 0098 40F2B511 		movw	r1, #437
 665 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 666 00a0 05B0     		add	sp, sp, #20
 667              		@ sp needed
 668 00a2 BDEC028B 		vldm	sp!, {d8}
 669 00a6 30BD     		pop	{r4, r5, pc}
 670              	.L124:
 671 00a8 2046     		mov	r0, r4
 672 00aa 05B0     		add	sp, sp, #20
 673              		@ sp needed
 674 00ac BDEC028B 		vldm	sp!, {d8}
 675 00b0 BDE83040 		pop	{r4, r5, lr}
 676 00b4 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 677              	.L126:
 678              		.align	2
 679              	.L125:
 680 00b8 00000000 		.word	reprap
 681 00bc 00000000 		.word	.LC4
 682 00c0 2C000000 		.word	.LC5
 683              		.size	_ZN3PID21SetStandbyTemperatureEf, .-_ZN3PID21SetStandbyTemperatureEf
 684              		.section	.text._ZN3PID19SetHeaterProtectionEP16HeaterProtection,"ax",%progbits
ARM GAS  /tmp/ccs6Uu0h.s 			page 13


 685              		.align	1
 686              		.p2align 2,,3
 687              		.global	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 688              		.syntax unified
 689              		.thumb
 690              		.thumb_func
 691              		.fpu fpv4-sp-d16
 692              		.type	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, %function
 693              	_ZN3PID19SetHeaterProtectionEP16HeaterProtection:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696              		@ link register save eliminated.
 697 0000 4160     		str	r1, [r0, #4]
 698 0002 7047     		bx	lr
 699              		.size	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, .-_ZN3PID19SetHeaterProtectionEP16HeaterPr
 700              		.section	.text._ZN3PID8ActivateEv,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	_ZN3PID8ActivateEv
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu fpv4-sp-d16
 708              		.type	_ZN3PID8ActivateEv, %function
 709              	_ZN3PID8ActivateEv:
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712              		@ link register save eliminated.
 713 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 714 0004 2AB1     		cbz	r2, .L128
 715 0006 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 716 000a 0121     		movs	r1, #1
 717 000c 80F87E10 		strb	r1, [r0, #126]
 718 0010 02B9     		cbnz	r2, .L135
 719              	.L128:
 720 0012 7047     		bx	lr
 721              	.L135:
 722 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 723              		.size	_ZN3PID8ActivateEv, .-_ZN3PID8ActivateEv
 724              		.section	.text._ZN3PID7StandbyEv,"ax",%progbits
 725              		.align	1
 726              		.p2align 2,,3
 727              		.global	_ZN3PID7StandbyEv
 728              		.syntax unified
 729              		.thumb
 730              		.thumb_func
 731              		.fpu fpv4-sp-d16
 732              		.type	_ZN3PID7StandbyEv, %function
 733              	_ZN3PID7StandbyEv:
 734              		@ args = 0, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736              		@ link register save eliminated.
 737 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 738 0004 2AB1     		cbz	r2, .L136
 739 0006 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 740 000a 0021     		movs	r1, #0
 741 000c 80F87E10 		strb	r1, [r0, #126]
ARM GAS  /tmp/ccs6Uu0h.s 			page 14


 742 0010 02B9     		cbnz	r2, .L143
 743              	.L136:
 744 0012 7047     		bx	lr
 745              	.L143:
 746 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 747              		.size	_ZN3PID7StandbyEv, .-_ZN3PID7StandbyEv
 748              		.section	.text._ZNK3PID15CheckProtectionEv,"ax",%progbits
 749              		.align	1
 750              		.p2align 2,,3
 751              		.global	_ZNK3PID15CheckProtectionEv
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu fpv4-sp-d16
 756              		.type	_ZNK3PID15CheckProtectionEv, %function
 757              	_ZNK3PID15CheckProtectionEv:
 758              		@ args = 0, pretend = 0, frame = 0
 759              		@ frame_needed = 0, uses_anonymous_args = 0
 760 0000 10B5     		push	{r4, lr}
 761 0002 4468     		ldr	r4, [r0, #4]
 762 0004 14B9     		cbnz	r4, .L147
 763 0006 07E0     		b	.L145
 764              	.L156:
 765 0008 2468     		ldr	r4, [r4]
 766 000a 2CB1     		cbz	r4, .L145
 767              	.L147:
 768 000c 2046     		mov	r0, r4
 769 000e FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 770 0012 0028     		cmp	r0, #0
 771 0014 F8D1     		bne	.L156
 772 0016 10BD     		pop	{r4, pc}
 773              	.L145:
 774 0018 0120     		movs	r0, #1
 775 001a 10BD     		pop	{r4, pc}
 776              		.size	_ZNK3PID15CheckProtectionEv, .-_ZNK3PID15CheckProtectionEv
 777              		.section	.text._ZN3PID10ResetFaultEv,"ax",%progbits
 778              		.align	1
 779              		.p2align 2,,3
 780              		.global	_ZN3PID10ResetFaultEv
 781              		.syntax unified
 782              		.thumb
 783              		.thumb_func
 784              		.fpu fpv4-sp-d16
 785              		.type	_ZN3PID10ResetFaultEv, %function
 786              	_ZN3PID10ResetFaultEv:
 787              		@ args = 0, pretend = 0, frame = 0
 788              		@ frame_needed = 0, uses_anonymous_args = 0
 789              		@ link register save eliminated.
 790 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 791 0004 0021     		movs	r1, #0
 792 0006 80F88010 		strb	r1, [r0, #128]
 793 000a 02B1     		cbz	r2, .L159
 794 000c 7047     		bx	lr
 795              	.L159:
 796 000e 0122     		movs	r2, #1
 797 0010 80F87C20 		strb	r2, [r0, #124]
 798 0014 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
ARM GAS  /tmp/ccs6Uu0h.s 			page 15


 799              		.size	_ZN3PID10ResetFaultEv, .-_ZN3PID10ResetFaultEv
 800              		.section	.text._ZNK3PID13GetAveragePWMEv,"ax",%progbits
 801              		.align	1
 802              		.p2align 2,,3
 803              		.global	_ZNK3PID13GetAveragePWMEv
 804              		.syntax unified
 805              		.thumb
 806              		.thumb_func
 807              		.fpu fpv4-sp-d16
 808              		.type	_ZNK3PID13GetAveragePWMEv, %function
 809              	_ZNK3PID13GetAveragePWMEv:
 810              		@ args = 0, pretend = 0, frame = 0
 811              		@ frame_needed = 0, uses_anonymous_args = 0
 812              		@ link register save eliminated.
 813 0000 0368     		ldr	r3, [r0]
 814 0002 90ED1B7A 		vldr.32	s14, [r0, #108]
 815 0006 D3F8D437 		ldr	r3, [r3, #2004]
 816 000a 9FED050A 		vldr.32	s0, .L161
 817 000e 07EE903A 		vmov	s15, r3	@ int
 818 0012 F8EE677A 		vcvt.f32.u32	s15, s15
 819 0016 67EE877A 		vmul.f32	s15, s15, s14
 820 001a 87EE800A 		vdiv.f32	s0, s15, s0
 821 001e 7047     		bx	lr
 822              	.L162:
 823              		.align	2
 824              	.L161:
 825 0020 00409C45 		.word	1167867904
 826              		.size	_ZNK3PID13GetAveragePWMEv, .-_ZNK3PID13GetAveragePWMEv
 827              		.section	.text._ZNK3PID22GetExpectedHeatingRateEv,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	_ZNK3PID22GetExpectedHeatingRateEv
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu fpv4-sp-d16
 835              		.type	_ZNK3PID22GetExpectedHeatingRateEv, %function
 836              	_ZNK3PID22GetExpectedHeatingRateEv:
 837              		@ args = 0, pretend = 0, frame = 0
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839              		@ link register save eliminated.
 840 0000 0368     		ldr	r3, [r0]
 841 0002 D0ED1B5A 		vldr.32	s11, [r0, #108]
 842 0006 D3F8D437 		ldr	r3, [r3, #2004]
 843 000a 9FED166A 		vldr.32	s12, .L169
 844 000e D0ED0C6A 		vldr.32	s13, [r0, #48]
 845 0012 07EE903A 		vmov	s15, r3	@ int
 846 0016 F8EE677A 		vcvt.f32.u32	s15, s15
 847 001a B6EE087A 		vmov.f32	s14, #7.5e-1
 848 001e 67EEA57A 		vmul.f32	s15, s15, s11
 849 0022 66EE876A 		vmul.f32	s13, s13, s14
 850 0026 87EE867A 		vdiv.f32	s14, s15, s12
 851 002a B3EE046A 		vmov.f32	s12, #2.0e+1
 852 002e 67EE267A 		vmul.f32	s15, s14, s13
 853 0032 F4EEC67A 		vcmpe.f32	s15, s12
 854 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 855 003a 10DB     		blt	.L168
ARM GAS  /tmp/ccs6Uu0h.s 			page 16


 856 003c 90ED0D7A 		vldr.32	s14, [r0, #52]
 857 0040 90ED066A 		vldr.32	s12, [r0, #24]
 858 0044 C7EE876A 		vdiv.f32	s13, s15, s14
 859 0048 B3EE097A 		vmov.f32	s14, #2.5e+1
 860 004c 37EE877A 		vadd.f32	s14, s15, s14
 861 0050 37EE467A 		vsub.f32	s14, s14, s12
 862 0054 27EE267A 		vmul.f32	s14, s14, s13
 863 0058 87EE270A 		vdiv.f32	s0, s14, s15
 864 005c 7047     		bx	lr
 865              	.L168:
 866 005e 9FED020A 		vldr.32	s0, .L169+4
 867 0062 7047     		bx	lr
 868              	.L170:
 869              		.align	2
 870              	.L169:
 871 0064 00409C45 		.word	1167867904
 872 0068 00000000 		.word	0
 873              		.size	_ZNK3PID22GetExpectedHeatingRateEv, .-_ZNK3PID22GetExpectedHeatingRateEv
 874              		.section	.text._ZN3PID13StartAutoTuneEffRK9StringRef,"ax",%progbits
 875              		.align	1
 876              		.p2align 2,,3
 877              		.global	_ZN3PID13StartAutoTuneEffRK9StringRef
 878              		.syntax unified
 879              		.thumb
 880              		.thumb_func
 881              		.fpu fpv4-sp-d16
 882              		.type	_ZN3PID13StartAutoTuneEffRK9StringRef, %function
 883              	_ZN3PID13StartAutoTuneEffRK9StringRef:
 884              		@ args = 0, pretend = 0, frame = 8
 885              		@ frame_needed = 0, uses_anonymous_args = 0
 886 0000 70B5     		push	{r4, r5, r6, lr}
 887 0002 2DED028B 		vpush.64	{d8}
 888 0006 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 889 000a 90F97A20 		ldrsb	r2, [r0, #122]
 890 000e 86B0     		sub	sp, sp, #24
 891 0010 0D46     		mov	r5, r1
 892 0012 2BB3     		cbz	r3, .L180
 893 0014 D0ED1A7A 		vldr.32	s15, [r0, #104]
 894 0018 F5EEC07A 		vcmpe.f32	s15, #0
 895 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 896 0020 0446     		mov	r4, r0
 897 0022 15DC     		bgt	.L174
 898 0024 0368     		ldr	r3, [r0]
 899 0026 D0ED1B6A 		vldr.32	s13, [r0, #108]
 900 002a D3F8D437 		ldr	r3, [r3, #2004]
 901 002e 9FED366A 		vldr.32	s12, .L182
 902 0032 9FED367A 		vldr.32	s14, .L182+4
 903 0036 07EE903A 		vmov	s15, r3	@ int
 904 003a F8EE677A 		vcvt.f32.u32	s15, s15
 905 003e 67EEA67A 		vmul.f32	s15, s15, s13
 906 0042 C7EE866A 		vdiv.f32	s13, s15, s12
 907 0046 F4EEC76A 		vcmpe.f32	s13, s14
 908 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 909 004e 0FDD     		ble	.L178
 910              	.L174:
 911 0050 2846     		mov	r0, r5
 912 0052 2F49     		ldr	r1, .L182+8
ARM GAS  /tmp/ccs6Uu0h.s 			page 17


 913 0054 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 914              	.L171:
 915 0058 06B0     		add	sp, sp, #24
 916              		@ sp needed
 917 005a BDEC028B 		vldm	sp!, {d8}
 918 005e 70BD     		pop	{r4, r5, r6, pc}
 919              	.L180:
 920 0060 0846     		mov	r0, r1
 921 0062 2C49     		ldr	r1, .L182+12
 922 0064 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 923 0068 06B0     		add	sp, sp, #24
 924              		@ sp needed
 925 006a BDEC028B 		vldm	sp!, {d8}
 926 006e 70BD     		pop	{r4, r5, r6, pc}
 927              	.L178:
 928 0070 06AB     		add	r3, sp, #24
 929 0072 0021     		movs	r1, #0
 930 0074 03F8011D 		strb	r1, [r3, #-1]!
 931 0078 2748     		ldr	r0, .L182+16
 932 007a 1146     		mov	r1, r2
 933 007c C068     		ldr	r0, [r0, #12]
 934 007e 1A46     		mov	r2, r3
 935 0080 B0EE408A 		vmov.f32	s16, s0
 936 0084 F0EE608A 		vmov.f32	s17, s1
 937 0088 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 938 008c 9DF81730 		ldrb	r3, [sp, #23]	@ zero_extendqisi2
 939 0090 84ED060A 		vstr.32	s0, [r4, #24]
 940 0094 63BB     		cbnz	r3, .L181
 941 0096 0621     		movs	r1, #6
 942 0098 204A     		ldr	r2, .L182+20
 943 009a 84F87F30 		strb	r3, [r4, #127]
 944 009e 84F87C10 		strb	r1, [r4, #124]
 945 00a2 4FF40070 		mov	r0, #512
 946 00a6 1360     		str	r3, [r2]
 947 00a8 FFF7FEFF 		bl	_Znaj
 948 00ac A369     		ldr	r3, [r4, #24]	@ float
 949 00ae 2268     		ldr	r2, [r4]
 950 00b0 0360     		str	r3, [r0]	@ float
 951 00b2 1B4B     		ldr	r3, .L182+24
 952 00b4 D2F8D467 		ldr	r6, [r2, #2004]
 953 00b8 1860     		str	r0, [r3]
 954 00ba 1A4A     		ldr	r2, .L182+28
 955 00bc 1A4B     		ldr	r3, .L182+32
 956 00be 1B49     		ldr	r1, .L182+36
 957 00c0 C2ED008A 		vstr.32	s17, [r2]
 958 00c4 83ED008A 		vstr.32	s16, [r3]
 959 00c8 0E60     		str	r6, [r1]
 960 00ca 18EE900A 		vmov	r0, s17
 961 00ce FFF7FEFF 		bl	__aeabi_f2d
 962 00d2 CDE90201 		strd	r0, [sp, #8]
 963 00d6 18EE100A 		vmov	r0, s16
 964 00da FFF7FEFF 		bl	__aeabi_f2d
 965 00de 94F97A20 		ldrsb	r2, [r4, #122]
 966 00e2 CDE90001 		strd	r0, [sp]
 967 00e6 2846     		mov	r0, r5
 968 00e8 1149     		ldr	r1, .L182+40
 969 00ea FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  /tmp/ccs6Uu0h.s 			page 18


 970 00ee B3E7     		b	.L171
 971              	.L181:
 972 00f0 1846     		mov	r0, r3
 973 00f2 94F97A40 		ldrsb	r4, [r4, #122]
 974 00f6 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 975 00fa 2246     		mov	r2, r4
 976 00fc 0346     		mov	r3, r0
 977 00fe 0D49     		ldr	r1, .L182+44
 978 0100 2846     		mov	r0, r5
 979 0102 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 980 0106 A7E7     		b	.L171
 981              	.L183:
 982              		.align	2
 983              	.L182:
 984 0108 00409C45 		.word	1167867904
 985 010c 0AD7A33C 		.word	1017370378
 986 0110 3C000000 		.word	.LC7
 987 0114 00000000 		.word	.LC6
 988 0118 00000000 		.word	reprap
 989 011c 00000000 		.word	.LANCHOR1
 990 0120 00000000 		.word	.LANCHOR0
 991 0124 00000000 		.word	.LANCHOR3
 992 0128 00000000 		.word	.LANCHOR4
 993 012c 00000000 		.word	.LANCHOR2
 994 0130 B8000000 		.word	.LC9
 995 0134 78000000 		.word	.LC8
 996              		.size	_ZN3PID13StartAutoTuneEffRK9StringRef, .-_ZN3PID13StartAutoTuneEffRK9StringRef
 997              		.section	.text._ZN3PID17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	_ZN3PID17GetAutoTuneStatusERK9StringRef
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu fpv4-sp-d16
 1005              		.type	_ZN3PID17GetAutoTuneStatusERK9StringRef, %function
 1006              	_ZN3PID17GetAutoTuneStatusERK9StringRef:
 1007              		@ args = 0, pretend = 0, frame = 0
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 1010 0004 90F97A20 		ldrsb	r2, [r0, #122]
 1011 0008 052B     		cmp	r3, #5
 1012 000a 0AD8     		bhi	.L192
 1013 000c 90F87F30 		ldrb	r3, [r0, #127]	@ zero_extendqisi2
 1014 0010 0846     		mov	r0, r1
 1015 0012 13B9     		cbnz	r3, .L193
 1016 0014 0949     		ldr	r1, .L194
 1017 0016 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1018              	.L193:
 1019 001a 1346     		mov	r3, r2
 1020 001c 0849     		ldr	r1, .L194+4
 1021 001e FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1022              	.L192:
 1023 0022 00B5     		push	{lr}
 1024 0024 83B0     		sub	sp, sp, #12
 1025 0026 0846     		mov	r0, r1
 1026 0028 0421     		movs	r1, #4
ARM GAS  /tmp/ccs6Uu0h.s 			page 19


 1027 002a 0091     		str	r1, [sp]
 1028 002c 053B     		subs	r3, r3, #5
 1029 002e 0549     		ldr	r1, .L194+8
 1030 0030 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1031 0034 03B0     		add	sp, sp, #12
 1032              		@ sp needed
 1033 0036 5DF804FB 		ldr	pc, [sp], #4
 1034              	.L195:
 1035 003a 00BF     		.align	2
 1036              	.L194:
 1037 003c 64000000 		.word	.LC12
 1038 0040 2C000000 		.word	.LC11
 1039 0044 00000000 		.word	.LC10
 1040              		.size	_ZN3PID17GetAutoTuneStatusERK9StringRef, .-_ZN3PID17GetAutoTuneStatusERK9StringRef
 1041              		.section	.text._ZN3PID14ReadingsStableEjf,"ax",%progbits
 1042              		.align	1
 1043              		.p2align 2,,3
 1044              		.global	_ZN3PID14ReadingsStableEjf
 1045              		.syntax unified
 1046              		.thumb
 1047              		.thumb_func
 1048              		.fpu fpv4-sp-d16
 1049              		.type	_ZN3PID14ReadingsStableEjf, %function
 1050              	_ZN3PID14ReadingsStableEjf:
 1051              		@ args = 0, pretend = 0, frame = 0
 1052              		@ frame_needed = 0, uses_anonymous_args = 0
 1053              		@ link register save eliminated.
 1054 0000 1C4B     		ldr	r3, .L214
 1055 0002 1A68     		ldr	r2, [r3]
 1056 0004 8AB3     		cbz	r2, .L205
 1057 0006 1C4B     		ldr	r3, .L214+4
 1058 0008 1968     		ldr	r1, [r3]
 1059 000a 8142     		cmp	r1, r0
 1060 000c 2DD3     		bcc	.L205
 1061 000e 081A     		subs	r0, r1, r0
 1062 0010 8300     		lsls	r3, r0, #2
 1063 0012 0130     		adds	r0, r0, #1
 1064 0014 10B4     		push	{r4}
 1065 0016 8142     		cmp	r1, r0
 1066 0018 02EB0304 		add	r4, r2, r3
 1067 001c D4ED006A 		vldr.32	s13, [r4]
 1068 0020 25D9     		bls	.L206
 1069 0022 0433     		adds	r3, r3, #4
 1070 0024 1344     		add	r3, r3, r2
 1071 0026 B0EE667A 		vmov.f32	s14, s13
 1072 002a 02EB8102 		add	r2, r2, r1, lsl #2
 1073              	.L203:
 1074 002e F3EC017A 		vldmia.32	r3!, {s15}
 1075 0032 F4EE667A 		vcmp.f32	s15, s13
 1076 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1077 003a F4EE477A 		vcmp.f32	s15, s14
 1078 003e 48BF     		it	mi
 1079 0040 F0EE676A 		vmovmi.f32	s13, s15
 1080 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1081 0048 C8BF     		it	gt
 1082 004a B0EE677A 		vmovgt.f32	s14, s15
 1083 004e 9342     		cmp	r3, r2
ARM GAS  /tmp/ccs6Uu0h.s 			page 20


 1084 0050 EDD1     		bne	.L203
 1085              	.L198:
 1086 0052 37EE667A 		vsub.f32	s14, s14, s13
 1087 0056 5DF8044B 		ldr	r4, [sp], #4
 1088 005a B4EEC07A 		vcmpe.f32	s14, s0
 1089 005e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1090 0062 94BF     		ite	ls
 1091 0064 0120     		movls	r0, #1
 1092 0066 0020     		movhi	r0, #0
 1093 0068 7047     		bx	lr
 1094              	.L205:
 1095 006a 0020     		movs	r0, #0
 1096 006c 7047     		bx	lr
 1097              	.L206:
 1098 006e B0EE667A 		vmov.f32	s14, s13
 1099 0072 EEE7     		b	.L198
 1100              	.L215:
 1101              		.align	2
 1102              	.L214:
 1103 0074 00000000 		.word	.LANCHOR0
 1104 0078 00000000 		.word	.LANCHOR1
 1105              		.size	_ZN3PID14ReadingsStableEjf, .-_ZN3PID14ReadingsStableEjf
 1106              		.section	.text._ZN3PID12IdentifyPeakEj,"ax",%progbits
 1107              		.align	1
 1108              		.p2align 2,,3
 1109              		.global	_ZN3PID12IdentifyPeakEj
 1110              		.syntax unified
 1111              		.thumb
 1112              		.thumb_func
 1113              		.fpu fpv4-sp-d16
 1114              		.type	_ZN3PID12IdentifyPeakEj, %function
 1115              	_ZN3PID12IdentifyPeakEj:
 1116              		@ args = 0, pretend = 0, frame = 0
 1117              		@ frame_needed = 0, uses_anonymous_args = 0
 1118              		@ link register save eliminated.
 1119 0000 1F4B     		ldr	r3, .L234
 1120 0002 F0B4     		push	{r4, r5, r6, r7}
 1121 0004 1E68     		ldr	r6, [r3]
 1122 0006 B042     		cmp	r0, r6
 1123 0008 37D8     		bhi	.L225
 1124 000a 1E4B     		ldr	r3, .L234+4
 1125 000c DFED1E6A 		vldr.32	s13, .L234+8
 1126 0010 1C68     		ldr	r4, [r3]
 1127 0012 4FF0FF35 		mov	r5, #-1
 1128 0016 2F46     		mov	r7, r5
 1129 0018 4FEA800C 		lsl	ip, r0, #2
 1130 001c 0021     		movs	r1, #0
 1131              	.L224:
 1132 001e DFED1B7A 		vldr.32	s15, .L234+12
 1133 0022 40B1     		cbz	r0, .L218
 1134 0024 04EB0C02 		add	r2, r4, ip
 1135 0028 2346     		mov	r3, r4
 1136              	.L219:
 1137 002a B3EC017A 		vldmia.32	r3!, {s14}
 1138 002e 9342     		cmp	r3, r2
 1139 0030 77EE877A 		vadd.f32	s15, s15, s14
 1140 0034 F9D1     		bne	.L219
ARM GAS  /tmp/ccs6Uu0h.s 			page 21


 1141              	.L218:
 1142 0036 F4EEE76A 		vcmpe.f32	s13, s15
 1143 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1144 003e 11D5     		bpl	.L231
 1145 0040 0135     		adds	r5, r5, #1
 1146 0042 8D42     		cmp	r5, r1
 1147 0044 0F46     		mov	r7, r1
 1148 0046 14D1     		bne	.L233
 1149 0048 F0EE676A 		vmov.f32	s13, s15
 1150 004c 0D46     		mov	r5, r1
 1151              	.L222:
 1152 004e 0131     		adds	r1, r1, #1
 1153 0050 4318     		adds	r3, r0, r1
 1154 0052 9E42     		cmp	r6, r3
 1155 0054 04F10404 		add	r4, r4, #4
 1156 0058 E1D2     		bcs	.L224
 1157              	.L217:
 1158 005a 0138     		subs	r0, r0, #1
 1159 005c 07EB5000 		add	r0, r7, r0, lsr #1
 1160 0060 F0BC     		pop	{r4, r5, r6, r7}
 1161 0062 7047     		bx	lr
 1162              	.L231:
 1163 0064 F4EE676A 		vcmp.f32	s13, s15
 1164 0068 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1165 006c 08BF     		it	eq
 1166 006e 0D46     		moveq	r5, r1
 1167 0070 EDE7     		b	.L222
 1168              	.L233:
 1169 0072 4FF0FF30 		mov	r0, #-1
 1170 0076 F0BC     		pop	{r4, r5, r6, r7}
 1171 0078 7047     		bx	lr
 1172              	.L225:
 1173 007a 4FF0FF37 		mov	r7, #-1
 1174 007e ECE7     		b	.L217
 1175              	.L235:
 1176              		.align	2
 1177              	.L234:
 1178 0080 00000000 		.word	.LANCHOR1
 1179 0084 00000000 		.word	.LANCHOR0
 1180 0088 00C079C4 		.word	3296313344
 1181 008c 00000000 		.word	0
 1182              		.size	_ZN3PID12IdentifyPeakEj, .-_ZN3PID12IdentifyPeakEj
 1183              		.section	.text._ZN3PID16GetPeakTempIndexEv,"ax",%progbits
 1184              		.align	1
 1185              		.p2align 2,,3
 1186              		.global	_ZN3PID16GetPeakTempIndexEv
 1187              		.syntax unified
 1188              		.thumb
 1189              		.thumb_func
 1190              		.fpu fpv4-sp-d16
 1191              		.type	_ZN3PID16GetPeakTempIndexEv, %function
 1192              	_ZN3PID16GetPeakTempIndexEv:
 1193              		@ args = 0, pretend = 0, frame = 0
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 1195 0000 124B     		ldr	r3, .L244
 1196 0002 10B5     		push	{r4, lr}
 1197 0004 1C68     		ldr	r4, [r3]
ARM GAS  /tmp/ccs6Uu0h.s 			page 22


 1198 0006 0E2C     		cmp	r4, #14
 1199 0008 1CD9     		bls	.L241
 1200 000a 0120     		movs	r0, #1
 1201 000c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1202 0010 0028     		cmp	r0, #0
 1203 0012 06DB     		blt	.L243
 1204              	.L238:
 1205 0014 C31C     		adds	r3, r0, #3
 1206 0016 9C42     		cmp	r4, r3
 1207 0018 14D9     		bls	.L241
 1208 001a 0128     		cmp	r0, #1
 1209 001c B8BF     		it	lt
 1210 001e 0120     		movlt	r0, #1
 1211 0020 10BD     		pop	{r4, pc}
 1212              	.L243:
 1213 0022 0320     		movs	r0, #3
 1214 0024 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1215 0028 0028     		cmp	r0, #0
 1216 002a F3DA     		bge	.L238
 1217 002c 0520     		movs	r0, #5
 1218 002e FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1219 0032 0028     		cmp	r0, #0
 1220 0034 EEDA     		bge	.L238
 1221 0036 0720     		movs	r0, #7
 1222 0038 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1223 003c 0028     		cmp	r0, #0
 1224 003e E9DA     		bge	.L238
 1225 0040 0020     		movs	r0, #0
 1226 0042 10BD     		pop	{r4, pc}
 1227              	.L241:
 1228 0044 4FF0FF30 		mov	r0, #-1
 1229 0048 10BD     		pop	{r4, pc}
 1230              	.L245:
 1231 004a 00BF     		.align	2
 1232              	.L244:
 1233 004c 00000000 		.word	.LANCHOR1
 1234              		.size	_ZN3PID16GetPeakTempIndexEv, .-_ZN3PID16GetPeakTempIndexEv
 1235              		.section	.text._ZN3PID13DisplayBufferEPKc,"ax",%progbits
 1236              		.align	1
 1237              		.p2align 2,,3
 1238              		.global	_ZN3PID13DisplayBufferEPKc
 1239              		.syntax unified
 1240              		.thumb
 1241              		.thumb_func
 1242              		.fpu fpv4-sp-d16
 1243              		.type	_ZN3PID13DisplayBufferEPKc, %function
 1244              	_ZN3PID13DisplayBufferEPKc:
 1245              		@ args = 0, pretend = 0, frame = 8
 1246              		@ frame_needed = 0, uses_anonymous_args = 0
 1247 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1248 0004 84B0     		sub	sp, sp, #16
 1249 0006 8046     		mov	r8, r0
 1250 0008 03A8     		add	r0, sp, #12
 1251 000a 0C46     		mov	r4, r1
 1252 000c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1253 0010 10B9     		cbnz	r0, .L258
 1254 0012 04B0     		add	sp, sp, #16
ARM GAS  /tmp/ccs6Uu0h.s 			page 23


 1255              		@ sp needed
 1256 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1257              	.L258:
 1258 0018 1B4B     		ldr	r3, .L259
 1259 001a 9FED1C7A 		vldr.32	s14, .L259+4
 1260 001e D3ED007A 		vldr.32	s15, [r3]	@ int
 1261 0022 039E     		ldr	r6, [sp, #12]
 1262 0024 1A4D     		ldr	r5, .L259+8
 1263 0026 F8EE677A 		vcvt.f32.u32	s15, s15
 1264 002a 67EE877A 		vmul.f32	s15, s15, s14
 1265 002e 17EE900A 		vmov	r0, s15
 1266 0032 FFF7FEFF 		bl	__aeabi_f2d
 1267 0036 2246     		mov	r2, r4
 1268 0038 CDE90001 		strd	r0, [sp]
 1269 003c 3046     		mov	r0, r6
 1270 003e 1549     		ldr	r1, .L259+12
 1271 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1272 0044 2B68     		ldr	r3, [r5]
 1273 0046 93B1     		cbz	r3, .L248
 1274 0048 134F     		ldr	r7, .L259+16
 1275 004a 144E     		ldr	r6, .L259+20
 1276 004c 0024     		movs	r4, #0
 1277              	.L249:
 1278 004e 3B68     		ldr	r3, [r7]
 1279 0050 03EB8403 		add	r3, r3, r4, lsl #2
 1280 0054 0134     		adds	r4, r4, #1
 1281 0056 1868     		ldr	r0, [r3]	@ float
 1282 0058 FFF7FEFF 		bl	__aeabi_f2d
 1283 005c 0B46     		mov	r3, r1
 1284 005e 0246     		mov	r2, r0
 1285 0060 3146     		mov	r1, r6
 1286 0062 0398     		ldr	r0, [sp, #12]
 1287 0064 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1288 0068 2B68     		ldr	r3, [r5]
 1289 006a A342     		cmp	r3, r4
 1290 006c EFD8     		bhi	.L249
 1291              	.L248:
 1292 006e 0C49     		ldr	r1, .L259+24
 1293 0070 0398     		ldr	r0, [sp, #12]
 1294 0072 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1295 0076 D8F80000 		ldr	r0, [r8]
 1296 007a 039A     		ldr	r2, [sp, #12]
 1297 007c 0121     		movs	r1, #1
 1298 007e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 1299 0082 04B0     		add	sp, sp, #16
 1300              		@ sp needed
 1301 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1302              	.L260:
 1303              		.align	2
 1304              	.L259:
 1305 0088 00000000 		.word	.LANCHOR2
 1306 008c 6F12833A 		.word	981668463
 1307 0090 00000000 		.word	.LANCHOR1
 1308 0094 00000000 		.word	.LC13
 1309 0098 00000000 		.word	.LANCHOR0
 1310 009c 20000000 		.word	.LC14
 1311 00a0 28000000 		.word	.LC15
ARM GAS  /tmp/ccs6Uu0h.s 			page 24


 1312              		.size	_ZN3PID13DisplayBufferEPKc, .-_ZN3PID13DisplayBufferEPKc
 1313              		.section	.text._ZN3PID14CalculateModelEv,"ax",%progbits
 1314              		.align	1
 1315              		.p2align 2,,3
 1316              		.global	_ZN3PID14CalculateModelEv
 1317              		.syntax unified
 1318              		.thumb
 1319              		.thumb_func
 1320              		.fpu fpv4-sp-d16
 1321              		.type	_ZN3PID14CalculateModelEv, %function
 1322              	_ZN3PID14CalculateModelEv:
 1323              		@ args = 0, pretend = 0, frame = 0
 1324              		@ frame_needed = 0, uses_anonymous_args = 0
 1325 0000 70B5     		push	{r4, r5, r6, lr}
 1326 0002 2DED048B 		vpush.64	{d8, d9}
 1327 0006 5D4B     		ldr	r3, .L271
 1328 0008 9B6C     		ldr	r3, [r3, #72]
 1329 000a 9B06     		lsls	r3, r3, #26
 1330 000c 86B0     		sub	sp, sp, #24
 1331 000e 0446     		mov	r4, r0
 1332 0010 00F1AF80 		bmi	.L269
 1333              	.L262:
 1334 0014 5A4B     		ldr	r3, .L271+4
 1335 0016 5B4A     		ldr	r2, .L271+8
 1336 0018 1968     		ldr	r1, [r3]
 1337 001a 1268     		ldr	r2, [r2]
 1338 001c 5A4D     		ldr	r5, .L271+12
 1339 001e 91ED000A 		vldr.32	s0, [r1]
 1340 0022 5A4B     		ldr	r3, .L271+16
 1341 0024 95ED007A 		vldr.32	s14, [r5]
 1342 0028 1B68     		ldr	r3, [r3]
 1343 002a 594E     		ldr	r6, .L271+20
 1344 002c 01EB8201 		add	r1, r1, r2, lsl #2
 1345 0030 51ED017A 		vldr.32	s15, [r1, #-4]
 1346 0034 30EE470A 		vsub.f32	s0, s0, s14
 1347 0038 77EEC77A 		vsub.f32	s15, s15, s14
 1348 003c 013A     		subs	r2, r2, #1
 1349 003e 03FB02F3 		mul	r3, r3, r2
 1350 0042 80EE270A 		vdiv.f32	s0, s0, s15
 1351 0046 07EE903A 		vmov	s15, r3	@ int
 1352 004a B8EE678A 		vcvt.f32.u32	s16, s15
 1353 004e FFF7FEFF 		bl	logf
 1354 0052 DFED506A 		vldr.32	s13, .L271+24
 1355 0056 504B     		ldr	r3, .L271+28
 1356 0058 504A     		ldr	r2, .L271+32
 1357 005a 1B68     		ldr	r3, [r3]
 1358 005c 1268     		ldr	r2, [r2]
 1359 005e 9FED507A 		vldr.32	s14, .L271+36
 1360 0062 95ED006A 		vldr.32	s12, [r5]
 1361 0066 D6ED007A 		vldr.32	s15, [r6]
 1362 006a 60EE266A 		vmul.f32	s13, s0, s13
 1363 006e 9B1A     		subs	r3, r3, r2
 1364 0070 C8EE268A 		vdiv.f32	s17, s16, s13
 1365 0074 00EE103A 		vmov	s0, r3	@ int
 1366 0078 B8EE400A 		vcvt.f32.u32	s0, s0
 1367 007c 37EEC68A 		vsub.f32	s16, s15, s12
 1368 0080 27EE400A 		vnmul.f32	s0, s14, s0
ARM GAS  /tmp/ccs6Uu0h.s 			page 25


 1369 0084 80EE280A 		vdiv.f32	s0, s0, s17
 1370 0088 FFF7FEFF 		bl	expf
 1371 008c 454B     		ldr	r3, .L271+40
 1372 008e F7EE007A 		vmov.f32	s15, #1.0e+0
 1373 0092 37EEC07A 		vsub.f32	s14, s15, s0
 1374 0096 D5ED007A 		vldr.32	s15, [r5]
 1375 009a D3ED006A 		vldr.32	s13, [r3]
 1376 009e 96ED000A 		vldr.32	s0, [r6]
 1377 00a2 88EE079A 		vdiv.f32	s18, s16, s14
 1378 00a6 9FED408A 		vldr.32	s16, .L271+44
 1379 00aa 79EE277A 		vadd.f32	s15, s18, s15
 1380 00ae 37EEC00A 		vsub.f32	s0, s15, s0
 1381 00b2 77EEE67A 		vsub.f32	s15, s15, s13
 1382 00b6 80EE270A 		vdiv.f32	s0, s0, s15
 1383 00ba FFF7FEFF 		bl	logf
 1384 00be 3B4B     		ldr	r3, .L271+48
 1385 00c0 3B48     		ldr	r0, .L271+52
 1386 00c2 3C49     		ldr	r1, .L271+56
 1387 00c4 0022     		movs	r2, #0
 1388 00c6 93ED002A 		vldr.32	s4, [r3]	@ int
 1389 00ca D0ED007A 		vldr.32	s15, [r0]
 1390 00ce D1ED001A 		vldr.32	s3, [r1]
 1391 00d2 B4F84430 		ldrh	r3, [r4, #68]
 1392 00d6 20EE280A 		vmul.f32	s0, s0, s17
 1393 00da B8EE422A 		vcvt.f32.u32	s4, s4
 1394 00de 20EE088A 		vmul.f32	s16, s0, s16
 1395 00e2 F0EE680A 		vmov.f32	s1, s17
 1396 00e6 B0EE481A 		vmov.f32	s2, s16
 1397 00ea B0EE490A 		vmov.f32	s0, s18
 1398 00ee 87EE822A 		vdiv.f32	s4, s15, s4
 1399 00f2 0121     		movs	r1, #1
 1400 00f4 2046     		mov	r0, r4
 1401 00f6 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 1402 00fa 84F87F00 		strb	r0, [r4, #127]
 1403 00fe F0B9     		cbnz	r0, .L270
 1404 0100 18EE100A 		vmov	r0, s16
 1405 0104 FFF7FEFF 		bl	__aeabi_f2d
 1406 0108 CDE90401 		strd	r0, [sp, #16]
 1407 010c 18EE900A 		vmov	r0, s17
 1408 0110 FFF7FEFF 		bl	__aeabi_f2d
 1409 0114 CDE90201 		strd	r0, [sp, #8]
 1410 0118 19EE100A 		vmov	r0, s18
 1411 011c FFF7FEFF 		bl	__aeabi_f2d
 1412 0120 94F97A30 		ldrsb	r3, [r4, #122]
 1413 0124 2468     		ldr	r4, [r4]
 1414 0126 244A     		ldr	r2, .L271+60
 1415 0128 CDE90001 		strd	r0, [sp]
 1416 012c 2046     		mov	r0, r4
 1417 012e 40F2B521 		movw	r1, #693
 1418 0132 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1419 0136 06B0     		add	sp, sp, #24
 1420              		@ sp needed
 1421 0138 BDEC048B 		vldm	sp!, {d8-d9}
 1422 013c 70BD     		pop	{r4, r5, r6, pc}
 1423              	.L270:
 1424 013e 2568     		ldr	r5, [r4]
 1425 0140 94F97A60 		ldrsb	r6, [r4, #122]
ARM GAS  /tmp/ccs6Uu0h.s 			page 26


 1426 0144 FFF7FEFF 		bl	millis
 1427 0148 1C4B     		ldr	r3, .L271+64
 1428 014a 94F97A20 		ldrsb	r2, [r4, #122]
 1429 014e 1968     		ldr	r1, [r3]
 1430 0150 1B4B     		ldr	r3, .L271+68
 1431 0152 0192     		str	r2, [sp, #4]
 1432 0154 421A     		subs	r2, r0, r1
 1433 0156 A3FB0232 		umull	r3, r2, r3, r2
 1434 015a 9209     		lsrs	r2, r2, #6
 1435 015c 0092     		str	r2, [sp]
 1436 015e 3346     		mov	r3, r6
 1437 0160 2846     		mov	r0, r5
 1438 0162 184A     		ldr	r2, .L271+72
 1439 0164 B521     		movs	r1, #181
 1440 0166 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1441 016a 06B0     		add	sp, sp, #24
 1442              		@ sp needed
 1443 016c BDEC048B 		vldm	sp!, {d8-d9}
 1444 0170 70BD     		pop	{r4, r5, r6, pc}
 1445              	.L269:
 1446 0172 1549     		ldr	r1, .L271+76
 1447 0174 FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1448 0178 4CE7     		b	.L262
 1449              	.L272:
 1450 017a 00BF     		.align	2
 1451              	.L271:
 1452 017c 00000000 		.word	reprap
 1453 0180 00000000 		.word	.LANCHOR0
 1454 0184 00000000 		.word	.LANCHOR1
 1455 0188 00000000 		.word	.LANCHOR5
 1456 018c 00000000 		.word	.LANCHOR2
 1457 0190 00000000 		.word	.LANCHOR6
 1458 0194 00007A44 		.word	1148846080
 1459 0198 00000000 		.word	.LANCHOR7
 1460 019c 00000000 		.word	.LANCHOR8
 1461 01a0 6F12833A 		.word	981668463
 1462 01a4 00000000 		.word	.LANCHOR9
 1463 01a8 6666A63F 		.word	1067869798
 1464 01ac 00000000 		.word	.LANCHOR11
 1465 01b0 00000000 		.word	.LANCHOR10
 1466 01b4 00000000 		.word	.LANCHOR3
 1467 01b8 8C000000 		.word	.LC18
 1468 01bc 00000000 		.word	.LANCHOR12
 1469 01c0 D34D6210 		.word	274877907
 1470 01c4 10000000 		.word	.LC17
 1471 01c8 00000000 		.word	.LC16
 1472              		.size	_ZN3PID14CalculateModelEv, .-_ZN3PID14CalculateModelEv
 1473              		.section	.text._ZN3PID12DoTuningStepEv,"ax",%progbits
 1474              		.align	1
 1475              		.p2align 2,,3
 1476              		.global	_ZN3PID12DoTuningStepEv
 1477              		.syntax unified
 1478              		.thumb
 1479              		.thumb_func
 1480              		.fpu fpv4-sp-d16
 1481              		.type	_ZN3PID12DoTuningStepEv, %function
 1482              	_ZN3PID12DoTuningStepEv:
ARM GAS  /tmp/ccs6Uu0h.s 			page 27


 1483              		@ args = 0, pretend = 0, frame = 0
 1484              		@ frame_needed = 0, uses_anonymous_args = 0
 1485 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1486 0004 BC4D     		ldr	r5, .L317
 1487 0006 2B68     		ldr	r3, [r5]
 1488 0008 83B0     		sub	sp, sp, #12
 1489 000a 0446     		mov	r4, r0
 1490 000c 03BB     		cbnz	r3, .L274
 1491 000e FFF7FEFF 		bl	millis
 1492 0012 94F87CC0 		ldrb	ip, [r4, #124]	@ zero_extendqisi2
 1493 0016 B94E     		ldr	r6, .L317+4
 1494 0018 B94F     		ldr	r7, .L317+8
 1495 001a 3060     		str	r0, [r6]
 1496 001c BCF1060F 		cmp	ip, #6
 1497 0020 09BF     		itett	eq
 1498 0022 B84A     		ldreq	r2, .L317+12
 1499 0024 2B68     		ldrne	r3, [r5]
 1500 0026 2B68     		ldreq	r3, [r5]
 1501 0028 1060     		streq	r0, [r2]
 1502 002a 802B     		cmp	r3, #128
 1503 002c D7F80080 		ldr	r8, [r7]
 1504 0030 21D0     		beq	.L279
 1505              	.L313:
 1506 0032 9900     		lsls	r1, r3, #2
 1507 0034 0133     		adds	r3, r3, #1
 1508              	.L280:
 1509 0036 4144     		add	r1, r1, r8
 1510 0038 A069     		ldr	r0, [r4, #24]	@ float
 1511 003a 0860     		str	r0, [r1]	@ float
 1512 003c ACF10602 		sub	r2, ip, #6
 1513 0040 2B60     		str	r3, [r5]
 1514 0042 032A     		cmp	r2, #3
 1515 0044 00F28C80 		bhi	.L282
 1516 0048 DFE802F0 		tbb	[pc, r2]
 1517              	.L284:
 1518 004c A8       		.byte	(.L283-.L284)/2
 1519 004d 53       		.byte	(.L285-.L284)/2
 1520 004e C3       		.byte	(.L286-.L284)/2
 1521 004f 90       		.byte	(.L287-.L284)/2
 1522              		.p2align 1
 1523              	.L274:
 1524 0050 FFF7FEFF 		bl	millis
 1525 0054 A94E     		ldr	r6, .L317+4
 1526 0056 AC4B     		ldr	r3, .L317+16
 1527 0058 3168     		ldr	r1, [r6]
 1528 005a 1A68     		ldr	r2, [r3]
 1529 005c 2B68     		ldr	r3, [r5]
 1530 005e 401A     		subs	r0, r0, r1
 1531 0060 02FB03F2 		mul	r2, r2, r3
 1532 0064 9042     		cmp	r0, r2
 1533 0066 41D3     		bcc	.L273
 1534 0068 A54F     		ldr	r7, .L317+8
 1535 006a 94F87CC0 		ldrb	ip, [r4, #124]	@ zero_extendqisi2
 1536 006e D7F80080 		ldr	r8, [r7]
 1537 0072 802B     		cmp	r3, #128
 1538 0074 DDD1     		bne	.L313
 1539              	.L279:
ARM GAS  /tmp/ccs6Uu0h.s 			page 28


 1540 0076 4246     		mov	r2, r8
 1541 0078 08F10403 		add	r3, r8, #4
 1542 007c 08F58070 		add	r0, r8, #256
 1543              	.L281:
 1544 0080 52F8081F 		ldr	r1, [r2, #8]!	@ float
 1545 0084 43F8041B 		str	r1, [r3], #4	@ float
 1546 0088 9842     		cmp	r0, r3
 1547 008a F9D1     		bne	.L281
 1548 008c 9E4A     		ldr	r2, .L317+16
 1549 008e 1368     		ldr	r3, [r2]
 1550 0090 5B00     		lsls	r3, r3, #1
 1551 0092 1360     		str	r3, [r2]
 1552 0094 4FF48071 		mov	r1, #256
 1553 0098 4123     		movs	r3, #65
 1554 009a CCE7     		b	.L280
 1555              	.L296:
 1556 009c 9A4F     		ldr	r7, .L317+16
 1557 009e 9B4A     		ldr	r2, .L317+20
 1558 00a0 3B68     		ldr	r3, [r7]
 1559 00a2 DFF8C492 		ldr	r9, .L317+112
 1560 00a6 D4F818C0 		ldr	ip, [r4, #24]	@ float
 1561 00aa 00FB03F3 		mul	r3, r0, r3
 1562 00ae 08EB8000 		add	r0, r8, r0, lsl #2
 1563 00b2 0168     		ldr	r1, [r0]	@ float
 1564 00b4 1360     		str	r3, [r2]
 1565 00b6 0123     		movs	r3, #1
 1566 00b8 2B60     		str	r3, [r5]
 1567 00ba C9F80010 		str	r1, [r9]	@ float
 1568 00be C8F800C0 		str	ip, [r8]	@ float
 1569 00c2 FFF7FEFF 		bl	millis
 1570 00c6 2568     		ldr	r5, [r4]
 1571 00c8 3060     		str	r0, [r6]
 1572 00ca D5F8D437 		ldr	r3, [r5, #2004]
 1573 00ce 3B60     		str	r3, [r7]
 1574 00d0 0923     		movs	r3, #9
 1575 00d2 D9F80000 		ldr	r0, [r9]	@ float
 1576 00d6 84F87C30 		strb	r3, [r4, #124]
 1577 00da FFF7FEFF 		bl	__aeabi_f2d
 1578 00de 8C4A     		ldr	r2, .L317+24
 1579 00e0 CDE90001 		strd	r0, [sp]
 1580 00e4 2846     		mov	r0, r5
 1581 00e6 3521     		movs	r1, #53
 1582 00e8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1583              	.L273:
 1584 00ec 03B0     		add	sp, sp, #12
 1585              		@ sp needed
 1586 00ee BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1587              	.L285:
 1588 00f2 884B     		ldr	r3, .L317+28
 1589 00f4 94F97A10 		ldrsb	r1, [r4, #122]
 1590 00f8 D868     		ldr	r0, [r3, #12]
 1591 00fa FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 1592 00fe 8146     		mov	r9, r0
 1593 0100 FFF7FEFF 		bl	millis
 1594 0104 3368     		ldr	r3, [r6]
 1595 0106 A0EB0308 		sub	r8, r0, r3
 1596 010a B9F1000F 		cmp	r9, #0
ARM GAS  /tmp/ccs6Uu0h.s 			page 29


 1597 010e 75D0     		beq	.L314
 1598 0110 D4ED0E7A 		vldr.32	s15, [r4, #56]
 1599 0114 DFED806A 		vldr.32	s13, .L317+32
 1600 0118 9FED807A 		vldr.32	s14, .L317+36
 1601 011c 2068     		ldr	r0, [r4]
 1602 011e 77EEA67A 		vadd.f32	s15, s15, s13
 1603 0122 67EE877A 		vmul.f32	s15, s15, s14
 1604 0126 FCEEE77A 		vcvt.u32.f32	s15, s15
 1605 012a 17EE903A 		vmov	r3, s15	@ int
 1606 012e 9845     		cmp	r8, r3
 1607 0130 0ED9     		bls	.L311
 1608 0132 7B4B     		ldr	r3, .L317+40
 1609 0134 D4ED067A 		vldr.32	s15, [r4, #24]
 1610 0138 93ED007A 		vldr.32	s14, [r3]
 1611 013c 77EEC77A 		vsub.f32	s15, s15, s14
 1612 0140 B0EE087A 		vmov.f32	s14, #3.0e+0
 1613 0144 F4EEC77A 		vcmpe.f32	s15, s14
 1614 0148 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1615 014c 00F12C81 		bmi	.L301
 1616              	.L311:
 1617 0150 744B     		ldr	r3, .L317+44
 1618              	.L299:
 1619 0152 9845     		cmp	r8, r3
 1620 0154 C0F08A80 		bcc	.L292
 1621 0158 734A     		ldr	r2, .L317+48
 1622 015a 3521     		movs	r1, #53
 1623 015c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1624              	.L282:
 1625 0160 2046     		mov	r0, r4
 1626 0162 03B0     		add	sp, sp, #12
 1627              		@ sp needed
 1628 0164 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1629 0168 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 1630              	.L287:
 1631 016c 6C4B     		ldr	r3, .L317+40
 1632 016e DFED6F5A 		vldr.32	s11, .L317+52
 1633 0172 D3ED007A 		vldr.32	s15, [r3]
 1634 0176 98ED006A 		vldr.32	s12, [r8]
 1635 017a DFED6D6A 		vldr.32	s13, .L317+56
 1636 017e 94ED067A 		vldr.32	s14, [r4, #24]
 1637 0182 67EEA57A 		vmul.f32	s15, s15, s11
 1638 0186 E6EE267A 		vfma.f32	s15, s12, s13
 1639 018a B4EEE77A 		vcmpe.f32	s14, s15
 1640 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1641 0192 ABDC     		bgt	.L273
 1642 0194 2046     		mov	r0, r4
 1643 0196 FFF7FEFF 		bl	_ZN3PID14CalculateModelEv
 1644 019a E1E7     		b	.L282
 1645              	.L283:
 1646 019c 2368     		ldr	r3, [r4]
 1647 019e 41F27070 		movw	r0, #6000
 1648 01a2 D3F8D437 		ldr	r3, [r3, #2004]
 1649 01a6 B0FBF3F0 		udiv	r0, r0, r3
 1650 01aa B0EE000A 		vmov.f32	s0, #2.0e+0
 1651 01ae FFF7FEFF 		bl	_ZN3PID14ReadingsStableEjf
 1652 01b2 0028     		cmp	r0, #0
 1653 01b4 36D1     		bne	.L315
ARM GAS  /tmp/ccs6Uu0h.s 			page 30


 1654 01b6 FFF7FEFF 		bl	millis
 1655 01ba 3368     		ldr	r3, [r6]
 1656 01bc 44F61F62 		movw	r2, #19999
 1657 01c0 C31A     		subs	r3, r0, r3
 1658 01c2 9342     		cmp	r3, r2
 1659 01c4 92D9     		bls	.L273
 1660 01c6 5B4A     		ldr	r2, .L317+60
 1661 01c8 2068     		ldr	r0, [r4]
 1662 01ca 3521     		movs	r1, #53
 1663 01cc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1664 01d0 C6E7     		b	.L282
 1665              	.L286:
 1666 01d2 FFF7FEFF 		bl	_ZN3PID16GetPeakTempIndexEv
 1667 01d6 0028     		cmp	r0, #0
 1668 01d8 C0F2C880 		blt	.L316
 1669 01dc 7FF45EAF 		bne	.L296
 1670 01e0 4C4B     		ldr	r3, .L317+28
 1671 01e2 9B6C     		ldr	r3, [r3, #72]
 1672 01e4 9B06     		lsls	r3, r3, #26
 1673 01e6 03D5     		bpl	.L297
 1674 01e8 5349     		ldr	r1, .L317+64
 1675 01ea 2046     		mov	r0, r4
 1676 01ec FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1677              	.L297:
 1678 01f0 524A     		ldr	r2, .L317+68
 1679 01f2 2068     		ldr	r0, [r4]
 1680 01f4 3521     		movs	r1, #53
 1681 01f6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1682 01fa B1E7     		b	.L282
 1683              	.L314:
 1684 01fc D4ED0E7A 		vldr.32	s15, [r4, #56]
 1685 0200 9FED467A 		vldr.32	s14, .L317+36
 1686 0204 2068     		ldr	r0, [r4]
 1687 0206 F3EE0E6A 		vmov.f32	s13, #3.0e+1
 1688 020a 77EEA67A 		vadd.f32	s15, s15, s13
 1689 020e 67EE877A 		vmul.f32	s15, s15, s14
 1690 0212 FCEEE77A 		vcvt.u32.f32	s15, s15
 1691 0216 17EE903A 		vmov	r3, s15	@ int
 1692 021a 9845     		cmp	r8, r3
 1693 021c 00F2B580 		bhi	.L300
 1694              	.L310:
 1695 0220 474B     		ldr	r3, .L317+72
 1696 0222 96E7     		b	.L299
 1697              	.L315:
 1698 0224 474B     		ldr	r3, .L317+76
 1699 0226 484A     		ldr	r2, .L317+80
 1700 0228 374F     		ldr	r7, .L317+16
 1701 022a 0021     		movs	r1, #0
 1702 022c 1960     		str	r1, [r3]	@ float
 1703 022e 0020     		movs	r0, #0
 1704 0230 3B49     		ldr	r1, .L317+40
 1705 0232 A369     		ldr	r3, [r4, #24]	@ float
 1706 0234 1060     		str	r0, [r2]
 1707 0236 0122     		movs	r2, #1
 1708 0238 0B60     		str	r3, [r1]	@ float
 1709 023a 2A60     		str	r2, [r5]
 1710 023c C8F80030 		str	r3, [r8]	@ float
ARM GAS  /tmp/ccs6Uu0h.s 			page 31


 1711 0240 FFF7FEFF 		bl	millis
 1712 0244 414A     		ldr	r2, .L317+84
 1713 0246 2368     		ldr	r3, [r4]
 1714 0248 1268     		ldr	r2, [r2]	@ float
 1715 024a 2067     		str	r0, [r4, #112]
 1716 024c A266     		str	r2, [r4, #104]	@ float
 1717 024e D3F8D457 		ldr	r5, [r3, #2004]
 1718 0252 3F4A     		ldr	r2, .L317+88
 1719 0254 3060     		str	r0, [r6]
 1720 0256 0721     		movs	r1, #7
 1721 0258 84F87C10 		strb	r1, [r4, #124]
 1722 025c 1846     		mov	r0, r3
 1723 025e 3521     		movs	r1, #53
 1724 0260 3D60     		str	r5, [r7]
 1725              	.L312:
 1726 0262 03B0     		add	sp, sp, #12
 1727              		@ sp needed
 1728 0264 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1729 0268 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1730              	.L292:
 1731 026c FFF7FEFF 		bl	_ZNK8Platform22GetCurrentPowerVoltageEv
 1732 0270 3449     		ldr	r1, .L317+76
 1733 0272 384B     		ldr	r3, .L317+92
 1734 0274 344A     		ldr	r2, .L317+80
 1735 0276 D1ED007A 		vldr.32	s15, [r1]
 1736 027a D3ED006A 		vldr.32	s13, [r3]
 1737 027e 94ED067A 		vldr.32	s14, [r4, #24]
 1738 0282 1368     		ldr	r3, [r2]
 1739 0284 77EE807A 		vadd.f32	s15, s15, s0
 1740 0288 B4EEE67A 		vcmpe.f32	s14, s13
 1741 028c 0133     		adds	r3, r3, #1
 1742 028e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1743 0292 C1ED007A 		vstr.32	s15, [r1]
 1744 0296 1360     		str	r3, [r2]
 1745 0298 FFF628AF 		blt	.L273
 1746 029c 2E49     		ldr	r1, .L317+96
 1747 029e 3A68     		ldr	r2, [r7]
 1748 02a0 2E4B     		ldr	r3, .L317+100
 1749 02a2 C1F80080 		str	r8, [r1]
 1750 02a6 0121     		movs	r1, #1
 1751 02a8 2960     		str	r1, [r5]
 1752 02aa 82ED007A 		vstr.32	s14, [r2]
 1753 02ae 83ED007A 		vstr.32	s14, [r3]
 1754 02b2 FFF7FEFF 		bl	millis
 1755 02b6 94F87D20 		ldrb	r2, [r4, #125]	@ zero_extendqisi2
 1756 02ba 2368     		ldr	r3, [r4]
 1757 02bc DFED287A 		vldr.32	s15, .L317+104
 1758 02c0 114D     		ldr	r5, .L317+16
 1759 02c2 3060     		str	r0, [r6]
 1760 02c4 002A     		cmp	r2, #0
 1761 02c6 4FF00801 		mov	r1, #8
 1762 02ca B7EE000A 		vmov.f32	s0, #1.0e+0
 1763 02ce D3F8D467 		ldr	r6, [r3, #2004]
 1764 02d2 B4F84420 		ldrh	r2, [r4, #68]
 1765 02d6 84F87C10 		strb	r1, [r4, #124]
 1766 02da 1846     		mov	r0, r3
 1767 02dc 94F97A10 		ldrsb	r1, [r4, #122]
ARM GAS  /tmp/ccs6Uu0h.s 			page 32


 1768 02e0 C4ED1A7A 		vstr.32	s15, [r4, #104]
 1769 02e4 08BF     		it	eq
 1770 02e6 B0EE670A 		vmoveq.f32	s0, s15
 1771 02ea 2E60     		str	r6, [r5]
 1772 02ec FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1773 02f0 2068     		ldr	r0, [r4]
 1774 02f2 1C4A     		ldr	r2, .L317+108
 1775 02f4 3521     		movs	r1, #53
 1776 02f6 B4E7     		b	.L312
 1777              	.L318:
 1778              		.align	2
 1779              	.L317:
 1780 02f8 00000000 		.word	.LANCHOR1
 1781 02fc 00000000 		.word	.LANCHOR13
 1782 0300 00000000 		.word	.LANCHOR0
 1783 0304 00000000 		.word	.LANCHOR12
 1784 0308 00000000 		.word	.LANCHOR2
 1785 030c 00000000 		.word	.LANCHOR8
 1786 0310 8C010000 		.word	.LC27
 1787 0314 00000000 		.word	reprap
 1788 0318 00007042 		.word	1114636288
 1789 031c 00007A44 		.word	1148846080
 1790 0320 00000000 		.word	.LANCHOR5
 1791 0324 804F1200 		.word	1200000
 1792 0328 9C000000 		.word	.LC22
 1793 032c 9A99193F 		.word	1058642330
 1794 0330 CCCCCC3E 		.word	1053609164
 1795 0334 20000000 		.word	.LC20
 1796 0338 34010000 		.word	.LC25
 1797 033c 48010000 		.word	.LC26
 1798 0340 E0930400 		.word	300000
 1799 0344 00000000 		.word	.LANCHOR10
 1800 0348 00000000 		.word	.LANCHOR11
 1801 034c 00000000 		.word	.LANCHOR3
 1802 0350 00000000 		.word	.LC19
 1803 0354 00000000 		.word	.LANCHOR4
 1804 0358 00000000 		.word	.LANCHOR7
 1805 035c 00000000 		.word	.LANCHOR6
 1806 0360 00000000 		.word	0
 1807 0364 DC000000 		.word	.LC23
 1808 0368 00000000 		.word	.LANCHOR9
 1809              	.L316:
 1810 036c FFF7FEFF 		bl	millis
 1811 0370 3368     		ldr	r3, [r6]
 1812 0372 4EF65F22 		movw	r2, #59999
 1813 0376 C31A     		subs	r3, r0, r3
 1814 0378 9342     		cmp	r3, r2
 1815 037a 7FF6B7AE 		bls	.L273
 1816 037e 0D4A     		ldr	r2, .L319
 1817 0380 2068     		ldr	r0, [r4]
 1818 0382 3521     		movs	r1, #53
 1819 0384 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1820 0388 EAE6     		b	.L282
 1821              	.L300:
 1822 038a 0B4B     		ldr	r3, .L319+4
 1823 038c D4ED067A 		vldr.32	s15, [r4, #24]
 1824 0390 93ED007A 		vldr.32	s14, [r3]
ARM GAS  /tmp/ccs6Uu0h.s 			page 33


 1825 0394 77EEC77A 		vsub.f32	s15, s15, s14
 1826 0398 B0EE087A 		vmov.f32	s14, #3.0e+0
 1827 039c F4EEC77A 		vcmpe.f32	s15, s14
 1828 03a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1829 03a4 7FF53CAF 		bpl	.L310
 1830              	.L301:
 1831 03a8 044A     		ldr	r2, .L319+8
 1832 03aa 3521     		movs	r1, #53
 1833 03ac FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1834 03b0 D6E6     		b	.L282
 1835              	.L320:
 1836 03b2 00BF     		.align	2
 1837              	.L319:
 1838 03b4 FC000000 		.word	.LC24
 1839 03b8 00000000 		.word	.LANCHOR5
 1840 03bc 60000000 		.word	.LC21
 1841              		.size	_ZN3PID12DoTuningStepEv, .-_ZN3PID12DoTuningStepEv
 1842              		.section	.text._ZN3PID4SpinEv,"ax",%progbits
 1843              		.align	1
 1844              		.p2align 2,,3
 1845              		.global	_ZN3PID4SpinEv
 1846              		.syntax unified
 1847              		.thumb
 1848              		.thumb_func
 1849              		.fpu fpv4-sp-d16
 1850              		.type	_ZN3PID4SpinEv, %function
 1851              	_ZN3PID4SpinEv:
 1852              		@ args = 0, pretend = 0, frame = 8
 1853              		@ frame_needed = 0, uses_anonymous_args = 0
 1854 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1855 0004 2DED048B 		vpush.64	{d8, d9}
 1856 0008 90F84650 		ldrb	r5, [r0, #70]	@ zero_extendqisi2
 1857 000c 84B0     		sub	sp, sp, #16
 1858 000e 25B9     		cbnz	r5, .L475
 1859 0010 04B0     		add	sp, sp, #16
 1860              		@ sp needed
 1861 0012 BDEC048B 		vldm	sp!, {d8-d9}
 1862 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1863              	.L475:
 1864 001a 04AA     		add	r2, sp, #16
 1865 001c A84E     		ldr	r6, .L484
 1866 001e 90F97A10 		ldrsb	r1, [r0, #122]
 1867 0022 4FF00008 		mov	r8, #0
 1868 0026 0446     		mov	r4, r0
 1869 0028 02F8018D 		strb	r8, [r2, #-1]!
 1870 002c F068     		ldr	r0, [r6, #12]
 1871 002e FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1872 0032 9DF80F70 		ldrb	r7, [sp, #15]	@ zero_extendqisi2
 1873 0036 84ED060A 		vstr.32	s0, [r4, #24]
 1874 003a 002F     		cmp	r7, #0
 1875 003c 40F08780 		bne	.L476
 1876 0040 94F87B30 		ldrb	r3, [r4, #123]	@ zero_extendqisi2
 1877 0044 84F88070 		strb	r7, [r4, #128]
 1878 0048 13F00801 		ands	r1, r3, #8
 1879 004c E26A     		ldr	r2, [r4, #44]
 1880 004e 00F0CD80 		beq	.L400
 1881 0052 0632     		adds	r2, r2, #6
ARM GAS  /tmp/ccs6Uu0h.s 			page 34


 1882 0054 04EB8200 		add	r0, r4, r2, lsl #2
 1883 0058 2168     		ldr	r1, [r4]
 1884 005a 90ED017A 		vldr.32	s14, [r0, #4]
 1885 005e D1F8D417 		ldr	r1, [r1, #2004]
 1886 0062 DFED987A 		vldr.32	s15, .L484+4
 1887 0066 DFED9C6A 		vldr.32	s13, .L484+24
 1888 006a 30EE477A 		vsub.f32	s14, s0, s14
 1889 006e 8900     		lsls	r1, r1, #2
 1890 0070 27EE277A 		vmul.f32	s14, s14, s15
 1891 0074 07EE901A 		vmov	s15, r1	@ int
 1892 0078 F8EE677A 		vcvt.f32.u32	s15, s15
 1893 007c B2EE046A 		vmov.f32	s12, #1.0e+1
 1894 0080 87EE278A 		vdiv.f32	s16, s14, s15
 1895 0084 F0EEC87A 		vabs.f32	s15, s16
 1896 0088 F4EEC67A 		vcmpe.f32	s15, s12
 1897 008c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1898 0090 88BF     		it	hi
 1899 0092 0025     		movhi	r5, #0
 1900 0094 88BF     		it	hi
 1901 0096 B0EE668A 		vmovhi.f32	s16, s13
 1902              	.L329:
 1903 009a 94F87E10 		ldrb	r1, [r4, #126]	@ zero_extendqisi2
 1904 009e 94ED027A 		vldr.32	s14, [r4, #8]
 1905 00a2 D4ED037A 		vldr.32	s15, [r4, #12]
 1906 00a6 0029     		cmp	r1, #0
 1907 00a8 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 1908 00ac 4FEA4303 		lsl	r3, r3, #1
 1909 00b0 18BF     		it	ne
 1910 00b2 F0EE477A 		vmovne.f32	s15, s14
 1911 00b6 43F00103 		orr	r3, r3, #1
 1912 00ba 04EB8202 		add	r2, r4, r2, lsl #2
 1913 00be 0429     		cmp	r1, #4
 1914 00c0 82ED010A 		vstr.32	s0, [r2, #4]
 1915 00c4 77EEC08A 		vsub.f32	s17, s15, s0
 1916 00c8 84F87B30 		strb	r3, [r4, #123]
 1917 00cc 00F0E181 		beq	.L333
 1918 00d0 0529     		cmp	r1, #5
 1919 00d2 00F09E80 		beq	.L334
 1920 00d6 0329     		cmp	r1, #3
 1921 00d8 00F00081 		beq	.L477
 1922              	.L332:
 1923 00dc 0229     		cmp	r1, #2
 1924 00de 00F28A80 		bhi	.L362
 1925 00e2 9FED7D0A 		vldr.32	s0, .L484+24
 1926 00e6 2068     		ldr	r0, [r4]
 1927 00e8 94F97A10 		ldrsb	r1, [r4, #122]
 1928 00ec 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 1929 00f0 84ED1A0A 		vstr.32	s0, [r4, #104]
 1930              	.L325:
 1931 00f4 1BB1     		cbz	r3, .L395
 1932 00f6 F7EE007A 		vmov.f32	s15, #1.0e+0
 1933 00fa 37EEC00A 		vsub.f32	s0, s15, s0
 1934              	.L395:
 1935 00fe B4F84420 		ldrh	r2, [r4, #68]
 1936 0102 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1937 0106 2368     		ldr	r3, [r4]
 1938 0108 9FED725A 		vldr.32	s10, .L484+20
ARM GAS  /tmp/ccs6Uu0h.s 			page 35


 1939 010c D3F8D437 		ldr	r3, [r3, #2004]
 1940 0110 94ED1B6A 		vldr.32	s12, [r4, #108]
 1941 0114 D4ED1A7A 		vldr.32	s15, [r4, #104]
 1942 0118 06EE903A 		vmov	s13, r3	@ int
 1943 011c F8EE666A 		vcvt.f32.u32	s13, s13
 1944 0120 B7EE007A 		vmov.f32	s14, #1.0e+0
 1945 0124 C6EE855A 		vdiv.f32	s11, s13, s10
 1946 0128 E36A     		ldr	r3, [r4, #44]
 1947 012a 0133     		adds	r3, r3, #1
 1948 012c 03F00303 		and	r3, r3, #3
 1949 0130 E362     		str	r3, [r4, #44]
 1950 0132 37EE657A 		vsub.f32	s14, s14, s11
 1951 0136 E6EE077A 		vfma.f32	s15, s12, s14
 1952 013a C4ED1B7A 		vstr.32	s15, [r4, #108]
 1953 013e FFF7FEFF 		bl	millis
 1954 0142 6067     		str	r0, [r4, #116]
 1955 0144 04B0     		add	sp, sp, #16
 1956              		@ sp needed
 1957 0146 BDEC048B 		vldm	sp!, {d8-d9}
 1958 014a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1959              	.L476:
 1960 014e 94F87B20 		ldrb	r2, [r4, #123]	@ zero_extendqisi2
 1961 0152 94F87C50 		ldrb	r5, [r4, #124]	@ zero_extendqisi2
 1962 0156 2068     		ldr	r0, [r4]
 1963 0158 94F97A10 		ldrsb	r1, [r4, #122]
 1964 015c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 1965 0160 5200     		lsls	r2, r2, #1
 1966 0162 022D     		cmp	r5, #2
 1967 0164 84F87B20 		strb	r2, [r4, #123]
 1968 0168 3DD9     		bls	.L471
 1969 016a 94F88020 		ldrb	r2, [r4, #128]	@ zero_extendqisi2
 1970 016e 0132     		adds	r2, r2, #1
 1971 0170 D2B2     		uxtb	r2, r2
 1972 0172 042A     		cmp	r2, #4
 1973 0174 84F88020 		strb	r2, [r4, #128]
 1974 0178 35D9     		bls	.L471
 1975 017a DFED577A 		vldr.32	s15, .L484+24
 1976 017e B4F84420 		ldrh	r2, [r4, #68]
 1977 0182 C4ED1A7A 		vstr.32	s15, [r4, #104]
 1978 0186 002B     		cmp	r3, #0
 1979 0188 B7EE000A 		vmov.f32	s0, #1.0e+0
 1980 018c 08BF     		it	eq
 1981 018e B0EE670A 		vmoveq.f32	s0, s15
 1982 0192 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1983 0196 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 1984 019a 052B     		cmp	r3, #5
 1985 019c 00F20382 		bhi	.L478
 1986              	.L328:
 1987 01a0 0023     		movs	r3, #0
 1988 01a2 3069     		ldr	r0, [r6, #16]
 1989 01a4 84F87C30 		strb	r3, [r4, #124]
 1990 01a8 94F97A10 		ldrsb	r1, [r4, #122]
 1991 01ac FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 1992 01b0 3846     		mov	r0, r7
 1993 01b2 2568     		ldr	r5, [r4]
 1994 01b4 94F97A60 		ldrsb	r6, [r4, #122]
 1995 01b8 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
ARM GAS  /tmp/ccs6Uu0h.s 			page 36


 1996 01bc 3346     		mov	r3, r6
 1997 01be 0090     		str	r0, [sp]
 1998 01c0 414A     		ldr	r2, .L484+8
 1999 01c2 2846     		mov	r0, r5
 2000 01c4 40F2B511 		movw	r1, #437
 2001 01c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2002 01cc 94F97A10 		ldrsb	r1, [r4, #122]
 2003 01d0 3B48     		ldr	r0, .L484
 2004 01d2 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2005 01d6 94ED1A0A 		vldr.32	s0, [r4, #104]
 2006 01da 2068     		ldr	r0, [r4]
 2007 01dc 94F97A10 		ldrsb	r1, [r4, #122]
 2008 01e0 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2009 01e4 86E7     		b	.L325
 2010              	.L471:
 2011 01e6 94ED1A0A 		vldr.32	s0, [r4, #104]
 2012 01ea 83E7     		b	.L325
 2013              	.L400:
 2014 01ec 9FED3A8A 		vldr.32	s16, .L484+24
 2015 01f0 0D46     		mov	r5, r1
 2016 01f2 0632     		adds	r2, r2, #6
 2017 01f4 51E7     		b	.L329
 2018              	.L362:
 2019 01f6 0529     		cmp	r1, #5
 2020 01f8 40F2BA80 		bls	.L350
 2021 01fc 2046     		mov	r0, r4
 2022 01fe FFF7FEFF 		bl	_ZN3PID12DoTuningStepEv
 2023              	.L470:
 2024 0202 94ED1A0A 		vldr.32	s0, [r4, #104]
 2025 0206 2068     		ldr	r0, [r4]
 2026 0208 94F97A10 		ldrsb	r1, [r4, #122]
 2027 020c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2028 0210 70E7     		b	.L325
 2029              	.L334:
 2030 0212 D4ED047A 		vldr.32	s15, [r4, #16]
 2031 0216 B4F87830 		ldrh	r3, [r4, #120]
 2032 021a B0EEE87A 		vabs.f32	s14, s17
 2033 021e B4EEE77A 		vcmpe.f32	s14, s15
 2034 0222 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2035 0226 40F35481 		ble	.L351
 2036 022a DFED287A 		vldr.32	s15, .L484+12
 2037 022e B4EEE70A 		vcmpe.f32	s0, s15
 2038 0232 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2039 0236 40F34C81 		ble	.L351
 2040 023a 0133     		adds	r3, r3, #1
 2041 023c 9BB2     		uxth	r3, r3
 2042 023e 2068     		ldr	r0, [r4]
 2043 0240 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2044 0244 D0F8D427 		ldr	r2, [r0, #2004]
 2045 0248 94ED057A 		vldr.32	s14, [r4, #20]
 2046 024c DFED1D6A 		vldr.32	s13, .L484+4
 2047 0250 02FB03F3 		mul	r3, r2, r3
 2048 0254 07EE903A 		vmov	s15, r3	@ int
 2049 0258 27EE267A 		vmul.f32	s14, s14, s13
 2050 025c F8EE677A 		vcvt.f32.u32	s15, s15
 2051 0260 F4EEC77A 		vcmpe.f32	s15, s14
 2052 0264 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/ccs6Uu0h.s 			page 37


 2053 0268 40F34081 		ble	.L457
 2054 026c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2055 0270 DFED197A 		vldr.32	s15, .L484+24
 2056 0274 B4F84420 		ldrh	r2, [r4, #68]
 2057 0278 94F97A10 		ldrsb	r1, [r4, #122]
 2058 027c 002B     		cmp	r3, #0
 2059 027e B7EE000A 		vmov.f32	s0, #1.0e+0
 2060 0282 08BF     		it	eq
 2061 0284 B0EE670A 		vmoveq.f32	s0, s15
 2062 0288 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2063 028c 0023     		movs	r3, #0
 2064 028e 84F87C30 		strb	r3, [r4, #124]
 2065 0292 94F97A10 		ldrsb	r1, [r4, #122]
 2066 0296 3069     		ldr	r0, [r6, #16]
 2067 0298 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2068 029c 2069     		ldr	r0, [r4, #16]	@ float
 2069 029e 94F97A70 		ldrsb	r7, [r4, #122]
 2070 02a2 2568     		ldr	r5, [r4]
 2071 02a4 FFF7FEFF 		bl	__aeabi_f2d
 2072 02a8 3B46     		mov	r3, r7
 2073 02aa CDE90001 		strd	r0, [sp]
 2074 02ae 084A     		ldr	r2, .L484+16
 2075 02b0 40F2B511 		movw	r1, #437
 2076 02b4 2846     		mov	r0, r5
 2077 02b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2078 02ba 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2079 02be 0DE7     		b	.L332
 2080              	.L485:
 2081              		.align	2
 2082              	.L484:
 2083 02c0 00000000 		.word	reprap
 2084 02c4 00007A44 		.word	1148846080
 2085 02c8 00000000 		.word	.LC28
 2086 02cc 00003442 		.word	1110704128
 2087 02d0 8C000000 		.word	.LC30
 2088 02d4 00409C45 		.word	1167867904
 2089 02d8 00000000 		.word	0
 2090              	.L477:
 2091 02dc F7EE007A 		vmov.f32	s15, #1.0e+0
 2092 02e0 F4EEE78A 		vcmpe.f32	s17, s15
 2093 02e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2094 02e8 40F2E180 		bls	.L360
 2095 02ec 002D     		cmp	r5, #0
 2096 02ee 00F0CA80 		beq	.L340
 2097 02f2 2368     		ldr	r3, [r4]
 2098 02f4 94ED1B7A 		vldr.32	s14, [r4, #108]
 2099 02f8 D3F8D437 		ldr	r3, [r3, #2004]
 2100 02fc 1FED0B6A 		vldr.32	s12, .L484+20
 2101 0300 94ED0C5A 		vldr.32	s10, [r4, #48]
 2102 0304 D4ED0D5A 		vldr.32	s11, [r4, #52]
 2103 0308 07EE903A 		vmov	s15, r3	@ int
 2104 030c F8EE677A 		vcvt.f32.u32	s15, s15
 2105 0310 F6EE086A 		vmov.f32	s13, #7.5e-1
 2106 0314 67EE877A 		vmul.f32	s15, s15, s14
 2107 0318 65EE266A 		vmul.f32	s13, s10, s13
 2108 031c 87EE867A 		vdiv.f32	s14, s15, s12
 2109 0320 B3EE046A 		vmov.f32	s12, #2.0e+1
ARM GAS  /tmp/ccs6Uu0h.s 			page 38


 2110 0324 67EE267A 		vmul.f32	s15, s14, s13
 2111 0328 F4EEC67A 		vcmpe.f32	s15, s12
 2112 032c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2113 0330 C0F27881 		blt	.L454
 2114 0334 C7EEA56A 		vdiv.f32	s13, s15, s11
 2115 0338 B3EE097A 		vmov.f32	s14, #2.5e+1
 2116 033c 37EE877A 		vadd.f32	s14, s15, s14
 2117 0340 37EE407A 		vsub.f32	s14, s14, s0
 2118 0344 27EE267A 		vmul.f32	s14, s14, s13
 2119 0348 87EE279A 		vdiv.f32	s18, s14, s15
 2120              	.L341:
 2121 034c F5EE007A 		vmov.f32	s15, #2.5e-1
 2122 0350 78EE277A 		vadd.f32	s15, s16, s15
 2123 0354 F4EEC97A 		vcmpe.f32	s15, s18
 2124 0358 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2125 035c 00F17A81 		bmi	.L479
 2126 0360 B4F87830 		ldrh	r3, [r4, #120]
 2127 0364 002B     		cmp	r3, #0
 2128 0366 00F06F81 		beq	.L480
 2129 036a 013B     		subs	r3, r3, #1
 2130 036c A4F87830 		strh	r3, [r4, #120]	@ movhi
 2131              	.L350:
 2132 0370 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2133 0374 002B     		cmp	r3, #0
 2134 0376 00F0A380 		beq	.L339
 2135 037a 0529     		cmp	r1, #5
 2136 037c 94ED0C5A 		vldr.32	s10, [r4, #48]
 2137 0380 00F0B180 		beq	.L338
 2138              	.L398:
 2139 0384 F0EEE87A 		vabs.f32	s15, s17
 2140 0388 B0EE087A 		vmov.f32	s14, #3.0e+0
 2141 038c F4EEC77A 		vcmpe.f32	s15, s14
 2142 0390 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2143 0394 00F1A780 		bmi	.L338
 2144 0398 04F14C03 		add	r3, r4, #76
 2145              	.L364:
 2146 039c D4ED065A 		vldr.32	s11, [r4, #24]
 2147 03a0 93ED027A 		vldr.32	s14, [r3, #8]
 2148 03a4 93ED006A 		vldr.32	s12, [r3]
 2149 03a8 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2150 03ac F3EE096A 		vmov.f32	s13, #2.5e+1
 2151 03b0 75EEE65A 		vsub.f32	s11, s11, s13
 2152 03b4 F0EE686A 		vmov.f32	s13, s17
 2153 03b8 E7EE486A 		vfms.f32	s13, s14, s16
 2154 03bc 85EE857A 		vdiv.f32	s14, s11, s10
 2155 03c0 66EE866A 		vmul.f32	s13, s13, s12
 2156 03c4 B4EE477A 		vcmp.f32	s14, s14
 2157 03c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2158 03cc 12D6     		bvs	.L365
 2159 03ce B4EEE77A 		vcmpe.f32	s14, s15
 2160 03d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2161 03d6 06D4     		bmi	.L366
 2162 03d8 F4EE677A 		vcmp.f32	s15, s15
 2163 03dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2164 03e0 B0EE677A 		vmov.f32	s14, s15
 2165 03e4 06D6     		bvs	.L365
 2166              	.L366:
ARM GAS  /tmp/ccs6Uu0h.s 			page 39


 2167 03e6 B5EEC07A 		vcmpe.f32	s14, #0
 2168 03ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2169 03ee D8BF     		it	le
 2170 03f0 1FED477A 		vldrle.32	s14, .L484+24
 2171              	.L365:
 2172 03f4 76EE875A 		vadd.f32	s11, s13, s14
 2173 03f8 F4EEE75A 		vcmpe.f32	s11, s15
 2174 03fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2175 0400 79DD     		ble	.L461
 2176 0402 0329     		cmp	r1, #3
 2177 0404 C4ED1A7A 		vstr.32	s15, [r4, #104]
 2178 0408 00F00F81 		beq	.L481
 2179              	.L370:
 2180 040c B7EE007A 		vmov.f32	s14, #1.0e+0
 2181 0410 F4EEC77A 		vcmpe.f32	s15, s14
 2182 0414 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2183 0418 00F1CE80 		bmi	.L375
 2184              	.L382:
 2185 041c 94F84830 		ldrb	r3, [r4, #72]	@ zero_extendqisi2
 2186 0420 3BB1     		cbz	r3, .L390
 2187 0422 94ED1A7A 		vldr.32	s14, [r4, #104]
 2188 0426 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2189 042a 77EEC77A 		vsub.f32	s15, s15, s14
 2190 042e C4ED1A7A 		vstr.32	s15, [r4, #104]
 2191              	.L390:
 2192 0432 6568     		ldr	r5, [r4, #4]
 2193 0434 002D     		cmp	r5, #0
 2194 0436 3FF4E4AE 		beq	.L470
 2195 043a 0027     		movs	r7, #0
 2196 043c DFF80083 		ldr	r8, .L486+28
 2197 0440 08E0     		b	.L391
 2198              	.L482:
 2199 0442 012B     		cmp	r3, #1
 2200 0444 2046     		mov	r0, r4
 2201 0446 01D1     		bne	.L392
 2202 0448 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 2203              	.L392:
 2204 044c 2D68     		ldr	r5, [r5]
 2205 044e 002D     		cmp	r5, #0
 2206 0450 3FF4D7AE 		beq	.L470
 2207              	.L391:
 2208 0454 2846     		mov	r0, r5
 2209 0456 FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 2210 045a 0028     		cmp	r0, #0
 2211 045c F6D1     		bne	.L392
 2212 045e AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 2213 0460 A766     		str	r7, [r4, #104]	@ float
 2214 0462 002B     		cmp	r3, #0
 2215 0464 EDD1     		bne	.L482
 2216 0466 84F87C30 		strb	r3, [r4, #124]
 2217 046a 94F97A10 		ldrsb	r1, [r4, #122]
 2218 046e 3069     		ldr	r0, [r6, #16]
 2219 0470 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2220 0474 94F97A30 		ldrsb	r3, [r4, #122]
 2221 0478 2068     		ldr	r0, [r4]
 2222 047a 4246     		mov	r2, r8
 2223 047c 40F2B511 		movw	r1, #437
ARM GAS  /tmp/ccs6Uu0h.s 			page 40


 2224 0480 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2225 0484 E2E7     		b	.L392
 2226              	.L340:
 2227 0486 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2228 048a CBB1     		cbz	r3, .L339
 2229 048c 94ED0C5A 		vldr.32	s10, [r4, #48]
 2230 0490 78E7     		b	.L398
 2231              	.L333:
 2232 0492 BFEE007A 		vmov.f32	s14, #-1.0e+0
 2233 0496 F4EEC78A 		vcmpe.f32	s17, s14
 2234 049a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2235 049e F2DB     		blt	.L340
 2236 04a0 9FEDA07A 		vldr.32	s14, .L486
 2237 04a4 F4EEC77A 		vcmpe.f32	s15, s14
 2238 04a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2239 04ac EBDD     		ble	.L340
 2240              	.L360:
 2241 04ae 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2242 04b2 0521     		movs	r1, #5
 2243 04b4 0022     		movs	r2, #0
 2244 04b6 84F87C10 		strb	r1, [r4, #124]
 2245 04ba A4F87820 		strh	r2, [r4, #120]	@ movhi
 2246 04be 83B9     		cbnz	r3, .L402
 2247              	.L339:
 2248 04c0 F5EEC08A 		vcmpe.f32	s17, #0
 2249 04c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2250 04c8 CCBF     		ite	gt
 2251 04ca E36B     		ldrgt	r3, [r4, #60]	@ float
 2252 04cc 0023     		movle	r3, #0
 2253 04ce A366     		str	r3, [r4, #104]	@ float
 2254 04d0 A4E7     		b	.L382
 2255              	.L351:
 2256 04d2 5BB1     		cbz	r3, .L457
 2257 04d4 94F84720 		ldrb	r2, [r4, #71]	@ zero_extendqisi2
 2258 04d8 013B     		subs	r3, r3, #1
 2259 04da A4F87830 		strh	r3, [r4, #120]	@ movhi
 2260 04de 002A     		cmp	r2, #0
 2261 04e0 EED0     		beq	.L339
 2262              	.L402:
 2263 04e2 94ED0C5A 		vldr.32	s10, [r4, #48]
 2264              	.L338:
 2265 04e6 04F15803 		add	r3, r4, #88
 2266 04ea 57E7     		b	.L364
 2267              	.L457:
 2268 04ec 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2269 04f0 002B     		cmp	r3, #0
 2270 04f2 E5D0     		beq	.L339
 2271 04f4 F5E7     		b	.L402
 2272              	.L461:
 2273 04f6 F5EEC05A 		vcmpe.f32	s11, #0
 2274 04fa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2275 04fe 4FF00002 		mov	r2, #0
 2276 0502 58D4     		bmi	.L483
 2277 0504 2268     		ldr	r2, [r4]
 2278 0506 93ED014A 		vldr.32	s8, [r3, #4]
 2279 050a D2F8D437 		ldr	r3, [r2, #2004]
 2280 050e DFED864A 		vldr.32	s9, .L486+4
ARM GAS  /tmp/ccs6Uu0h.s 			page 41


 2281 0512 D4ED195A 		vldr.32	s11, [r4, #100]
 2282 0516 05EE103A 		vmov	s10, r3	@ int
 2283 051a 26EE286A 		vmul.f32	s12, s12, s17
 2284 051e B8EE455A 		vcvt.f32.u32	s10, s10
 2285 0522 26EE047A 		vmul.f32	s14, s12, s8
 2286 0526 27EE057A 		vmul.f32	s14, s14, s10
 2287 052a E7EE245A 		vfma.f32	s11, s14, s9
 2288 052e F4EE655A 		vcmp.f32	s11, s11
 2289 0532 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2290 0536 B0EE657A 		vmov.f32	s14, s11
 2291 053a 12D6     		bvs	.L376
 2292 053c F4EEE75A 		vcmpe.f32	s11, s15
 2293 0540 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2294 0544 06D4     		bmi	.L377
 2295 0546 F4EE677A 		vcmp.f32	s15, s15
 2296 054a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2297 054e B0EE677A 		vmov.f32	s14, s15
 2298 0552 06D6     		bvs	.L376
 2299              	.L377:
 2300 0554 B5EEC07A 		vcmpe.f32	s14, #0
 2301 0558 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2302 055c D8BF     		it	le
 2303 055e 9FED737A 		vldrle.32	s14, .L486+8
 2304              	.L376:
 2305 0562 84ED197A 		vstr.32	s14, [r4, #100]
 2306 0566 76EE876A 		vadd.f32	s13, s13, s14
 2307 056a F4EE666A 		vcmp.f32	s13, s13
 2308 056e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2309 0572 80F1D480 		bvs	.L410
 2310 0576 F4EEE76A 		vcmpe.f32	s13, s15
 2311 057a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2312 057e 06D4     		bmi	.L380
 2313 0580 F4EE677A 		vcmp.f32	s15, s15
 2314 0584 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2315 0588 0AD6     		bvs	.L379
 2316 058a F0EE676A 		vmov.f32	s13, s15
 2317              	.L380:
 2318 058e F5EEC06A 		vcmpe.f32	s13, #0
 2319 0592 DFED667A 		vldr.32	s15, .L486+8
 2320 0596 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2321 059a C8BF     		it	gt
 2322 059c F0EE667A 		vmovgt.f32	s15, s13
 2323              	.L379:
 2324 05a0 C4ED1A7A 		vstr.32	s15, [r4, #104]
 2325 05a4 32E7     		b	.L370
 2326              	.L478:
 2327 05a6 624D     		ldr	r5, .L486+12
 2328 05a8 0421     		movs	r1, #4
 2329 05aa 2868     		ldr	r0, [r5]
 2330 05ac FFF7FEFF 		bl	_ZdlPvj
 2331 05b0 C5F80080 		str	r8, [r5]
 2332 05b4 F4E5     		b	.L328
 2333              	.L483:
 2334 05b6 A266     		str	r2, [r4, #104]	@ float
 2335              	.L375:
 2336 05b8 D4ED107A 		vldr.32	s15, [r4, #64]
 2337 05bc B2EE048A 		vmov.f32	s16, #1.0e+1
ARM GAS  /tmp/ccs6Uu0h.s 			page 42


 2338 05c0 F4EEC87A 		vcmpe.f32	s15, s16
 2339 05c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2340 05c8 FFF628AF 		blt	.L382
 2341 05cc 94F97A10 		ldrsb	r1, [r4, #122]
 2342 05d0 F068     		ldr	r0, [r6, #12]
 2343 05d2 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 2344 05d6 0028     		cmp	r0, #0
 2345 05d8 7FF420AF 		bne	.L382
 2346 05dc 2068     		ldr	r0, [r4]
 2347 05de FFF7FEFF 		bl	_ZNK8Platform22GetCurrentPowerVoltageEv
 2348 05e2 B4EEC80A 		vcmpe.f32	s0, s16
 2349 05e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2350 05ea FFF617AF 		blt	.L382
 2351 05ee D4ED106A 		vldr.32	s13, [r4, #64]
 2352 05f2 94ED1A7A 		vldr.32	s14, [r4, #104]
 2353 05f6 C6EE807A 		vdiv.f32	s15, s13, s0
 2354 05fa 67EEA77A 		vmul.f32	s15, s15, s15
 2355 05fe 67EE877A 		vmul.f32	s15, s15, s14
 2356 0602 F4EE677A 		vcmp.f32	s15, s15
 2357 0606 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2358 060a 08D6     		bvs	.L386
 2359 060c B7EE007A 		vmov.f32	s14, #1.0e+0
 2360 0610 F4EEC77A 		vcmpe.f32	s15, s14
 2361 0614 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2362 0618 58BF     		it	pl
 2363 061a F0EE477A 		vmovpl.f32	s15, s14
 2364              	.L386:
 2365 061e C4ED1A7A 		vstr.32	s15, [r4, #104]
 2366 0622 FBE6     		b	.L382
 2367              	.L454:
 2368 0624 9FED419A 		vldr.32	s18, .L486+8
 2369 0628 90E6     		b	.L341
 2370              	.L481:
 2371 062a F5EEC08A 		vcmpe.f32	s17, #0
 2372 062e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2373 0632 7FF7EBAE 		ble	.L370
 2374 0636 B5EEC08A 		vcmpe.f32	s16, #0
 2375 063a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2376 063e 7FF7E5AE 		ble	.L370
 2377 0642 84ED197A 		vstr.32	s14, [r4, #100]
 2378 0646 E1E6     		b	.L370
 2379              	.L480:
 2380 0648 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2381 064c 002B     		cmp	r3, #0
 2382 064e 7FF499AE 		bne	.L398
 2383 0652 35E7     		b	.L339
 2384              	.L479:
 2385 0654 FFF7FEFF 		bl	millis
 2386 0658 236F     		ldr	r3, [r4, #112]
 2387 065a D4ED0E7A 		vldr.32	s15, [r4, #56]
 2388 065e DFED356A 		vldr.32	s13, .L486+16
 2389 0662 C01A     		subs	r0, r0, r3
 2390 0664 67EEA67A 		vmul.f32	s15, s15, s13
 2391 0668 07EE100A 		vmov	s14, r0	@ int
 2392 066c 77EEA77A 		vadd.f32	s15, s15, s15
 2393 0670 B8EE477A 		vcvt.f32.u32	s14, s14
 2394 0674 B4F87830 		ldrh	r3, [r4, #120]
ARM GAS  /tmp/ccs6Uu0h.s 			page 43


 2395 0678 B4EEE77A 		vcmpe.f32	s14, s15
 2396 067c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2397 0680 44DD     		ble	.L456
 2398 0682 0133     		adds	r3, r3, #1
 2399 0684 9BB2     		uxth	r3, r3
 2400 0686 2068     		ldr	r0, [r4]
 2401 0688 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2402 068c D0F8D427 		ldr	r2, [r0, #2004]
 2403 0690 94ED057A 		vldr.32	s14, [r4, #20]
 2404 0694 02FB03F3 		mul	r3, r2, r3
 2405 0698 07EE903A 		vmov	s15, r3	@ int
 2406 069c 67EE266A 		vmul.f32	s13, s14, s13
 2407 06a0 F8EE677A 		vcvt.f32.u32	s15, s15
 2408 06a4 F4EEE67A 		vcmpe.f32	s15, s13
 2409 06a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2410 06ac 2BDD     		ble	.L468
 2411 06ae 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2412 06b2 DFED1E7A 		vldr.32	s15, .L486+8
 2413 06b6 B4F84420 		ldrh	r2, [r4, #68]
 2414 06ba 94F97A10 		ldrsb	r1, [r4, #122]
 2415 06be 002B     		cmp	r3, #0
 2416 06c0 B7EE000A 		vmov.f32	s0, #1.0e+0
 2417 06c4 08BF     		it	eq
 2418 06c6 B0EE670A 		vmoveq.f32	s0, s15
 2419 06ca FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2420 06ce 0023     		movs	r3, #0
 2421 06d0 84F87C30 		strb	r3, [r4, #124]
 2422 06d4 94F97A10 		ldrsb	r1, [r4, #122]
 2423 06d8 3069     		ldr	r0, [r6, #16]
 2424 06da FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2425 06de 19EE100A 		vmov	r0, s18
 2426 06e2 FFF7FEFF 		bl	__aeabi_f2d
 2427 06e6 2568     		ldr	r5, [r4]
 2428 06e8 94F97A30 		ldrsb	r3, [r4, #122]
 2429 06ec 124A     		ldr	r2, .L486+20
 2430 06ee CDE90001 		strd	r0, [sp]
 2431 06f2 2846     		mov	r0, r5
 2432 06f4 40F2B511 		movw	r1, #437
 2433 06f8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2434 06fc 94F97A10 		ldrsb	r1, [r4, #122]
 2435 0700 0E48     		ldr	r0, .L486+24
 2436 0702 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2437              	.L468:
 2438 0706 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2439 070a E7E4     		b	.L332
 2440              	.L456:
 2441 070c 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2442 0710 002B     		cmp	r3, #0
 2443 0712 3FF4E3AC 		beq	.L332
 2444 0716 013B     		subs	r3, r3, #1
 2445 0718 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2446 071c DEE4     		b	.L332
 2447              	.L410:
 2448 071e F0EE667A 		vmov.f32	s15, s13
 2449 0722 3DE7     		b	.L379
 2450              	.L487:
 2451              		.align	2
ARM GAS  /tmp/ccs6Uu0h.s 			page 44


 2452              	.L486:
 2453 0724 00003442 		.word	1110704128
 2454 0728 6F12833A 		.word	981668463
 2455 072c 00000000 		.word	0
 2456 0730 00000000 		.word	.LANCHOR0
 2457 0734 00007A44 		.word	1148846080
 2458 0738 2C000000 		.word	.LC29
 2459 073c 00000000 		.word	reprap
 2460 0740 D0000000 		.word	.LC31
 2461              		.size	_ZN3PID4SpinEv, .-_ZN3PID4SpinEv
 2462              		.section	.text._ZN3PID7SuspendEb,"ax",%progbits
 2463              		.align	1
 2464              		.p2align 2,,3
 2465              		.global	_ZN3PID7SuspendEb
 2466              		.syntax unified
 2467              		.thumb
 2468              		.thumb_func
 2469              		.fpu fpv4-sp-d16
 2470              		.type	_ZN3PID7SuspendEb, %function
 2471              	_ZN3PID7SuspendEb:
 2472              		@ args = 0, pretend = 0, frame = 0
 2473              		@ frame_needed = 0, uses_anonymous_args = 0
 2474 0000 10B5     		push	{r4, lr}
 2475 0002 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 2476 0006 2DED028B 		vpush.64	{d8}
 2477 000a 0446     		mov	r4, r0
 2478 000c 29B1     		cbz	r1, .L489
 2479 000e 033A     		subs	r2, r2, #3
 2480 0010 022A     		cmp	r2, #2
 2481 0012 0ED9     		bls	.L497
 2482              	.L488:
 2483 0014 BDEC028B 		vldm	sp!, {d8}
 2484 0018 10BD     		pop	{r4, pc}
 2485              	.L489:
 2486 001a 022A     		cmp	r2, #2
 2487 001c FAD1     		bne	.L488
 2488 001e 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 2489 0022 002B     		cmp	r3, #0
 2490 0024 F6D0     		beq	.L488
 2491 0026 BDEC028B 		vldm	sp!, {d8}
 2492 002a BDE81040 		pop	{r4, lr}
 2493 002e FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 2494              	.L497:
 2495 0032 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 2496 0036 9FED0C8A 		vldr.32	s16, .L498
 2497 003a B0F84420 		ldrh	r2, [r0, #68]
 2498 003e 90F97A10 		ldrsb	r1, [r0, #122]
 2499 0042 0068     		ldr	r0, [r0]
 2500 0044 002B     		cmp	r3, #0
 2501 0046 B7EE000A 		vmov.f32	s0, #1.0e+0
 2502 004a 4FF00203 		mov	r3, #2
 2503 004e 08BF     		it	eq
 2504 0050 B0EE480A 		vmoveq.f32	s0, s16
 2505 0054 84F87C30 		strb	r3, [r4, #124]
 2506 0058 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2507 005c 84ED1A8A 		vstr.32	s16, [r4, #104]
 2508 0060 BDEC028B 		vldm	sp!, {d8}
ARM GAS  /tmp/ccs6Uu0h.s 			page 45


 2509 0064 10BD     		pop	{r4, pc}
 2510              	.L499:
 2511 0066 00BF     		.align	2
 2512              	.L498:
 2513 0068 00000000 		.word	0
 2514              		.size	_ZN3PID7SuspendEb, .-_ZN3PID7SuspendEb
 2515              		.global	tuningVoltageAccumulator
 2516              		.global	voltageSamplesTaken
 2517              		.global	_ZN3PID15tuningPeakDelayE
 2518              		.global	_ZN3PID17tuningHeatingTimeE
 2519              		.global	_ZN3PID21tuningPeakTemperatureE
 2520              		.global	_ZN3PID19tuningHeaterOffTempE
 2521              		.global	_ZN3PID19tuningReadingsTakenE
 2522              		.global	_ZN3PID21tuningReadingIntervalE
 2523              		.global	_ZN3PID20tuningPhaseStartTimeE
 2524              		.global	_ZN3PID15tuningBeginTimeE
 2525              		.global	_ZN3PID16tuningTargetTempE
 2526              		.global	_ZN3PID9tuningPwmE
 2527              		.global	_ZN3PID15tuningStartTempE
 2528              		.global	_ZN3PID18tuningTempReadingsE
 2529              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2530              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2531              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2532              	_ZL28cpu_irq_prev_interrupt_state:
 2533 0000 00       		.space	1
 2534              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2535              		.align	2
 2536              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2537              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2538              	_ZL32cpu_irq_critical_section_counter:
 2539 0000 00000000 		.space	4
 2540              		.section	.bss._ZN3PID15tuningBeginTimeE,"aw",%nobits
 2541              		.align	2
 2542              		.set	.LANCHOR12,. + 0
 2543              		.type	_ZN3PID15tuningBeginTimeE, %object
 2544              		.size	_ZN3PID15tuningBeginTimeE, 4
 2545              	_ZN3PID15tuningBeginTimeE:
 2546 0000 00000000 		.space	4
 2547              		.section	.bss._ZN3PID15tuningPeakDelayE,"aw",%nobits
 2548              		.align	2
 2549              		.set	.LANCHOR8,. + 0
 2550              		.type	_ZN3PID15tuningPeakDelayE, %object
 2551              		.size	_ZN3PID15tuningPeakDelayE, 4
 2552              	_ZN3PID15tuningPeakDelayE:
 2553 0000 00000000 		.space	4
 2554              		.section	.bss._ZN3PID15tuningStartTempE,"aw",%nobits
 2555              		.align	2
 2556              		.set	.LANCHOR5,. + 0
 2557              		.type	_ZN3PID15tuningStartTempE, %object
 2558              		.size	_ZN3PID15tuningStartTempE, 4
 2559              	_ZN3PID15tuningStartTempE:
 2560 0000 00000000 		.space	4
 2561              		.section	.bss._ZN3PID16tuningTargetTempE,"aw",%nobits
 2562              		.align	2
 2563              		.set	.LANCHOR4,. + 0
 2564              		.type	_ZN3PID16tuningTargetTempE, %object
 2565              		.size	_ZN3PID16tuningTargetTempE, 4
ARM GAS  /tmp/ccs6Uu0h.s 			page 46


 2566              	_ZN3PID16tuningTargetTempE:
 2567 0000 00000000 		.space	4
 2568              		.section	.bss._ZN3PID17tuningHeatingTimeE,"aw",%nobits
 2569              		.align	2
 2570              		.set	.LANCHOR7,. + 0
 2571              		.type	_ZN3PID17tuningHeatingTimeE, %object
 2572              		.size	_ZN3PID17tuningHeatingTimeE, 4
 2573              	_ZN3PID17tuningHeatingTimeE:
 2574 0000 00000000 		.space	4
 2575              		.section	.bss._ZN3PID18tuningTempReadingsE,"aw",%nobits
 2576              		.align	2
 2577              		.set	.LANCHOR0,. + 0
 2578              		.type	_ZN3PID18tuningTempReadingsE, %object
 2579              		.size	_ZN3PID18tuningTempReadingsE, 4
 2580              	_ZN3PID18tuningTempReadingsE:
 2581 0000 00000000 		.space	4
 2582              		.section	.bss._ZN3PID19tuningHeaterOffTempE,"aw",%nobits
 2583              		.align	2
 2584              		.set	.LANCHOR6,. + 0
 2585              		.type	_ZN3PID19tuningHeaterOffTempE, %object
 2586              		.size	_ZN3PID19tuningHeaterOffTempE, 4
 2587              	_ZN3PID19tuningHeaterOffTempE:
 2588 0000 00000000 		.space	4
 2589              		.section	.bss._ZN3PID19tuningReadingsTakenE,"aw",%nobits
 2590              		.align	2
 2591              		.set	.LANCHOR1,. + 0
 2592              		.type	_ZN3PID19tuningReadingsTakenE, %object
 2593              		.size	_ZN3PID19tuningReadingsTakenE, 4
 2594              	_ZN3PID19tuningReadingsTakenE:
 2595 0000 00000000 		.space	4
 2596              		.section	.bss._ZN3PID20tuningPhaseStartTimeE,"aw",%nobits
 2597              		.align	2
 2598              		.set	.LANCHOR13,. + 0
 2599              		.type	_ZN3PID20tuningPhaseStartTimeE, %object
 2600              		.size	_ZN3PID20tuningPhaseStartTimeE, 4
 2601              	_ZN3PID20tuningPhaseStartTimeE:
 2602 0000 00000000 		.space	4
 2603              		.section	.bss._ZN3PID21tuningPeakTemperatureE,"aw",%nobits
 2604              		.align	2
 2605              		.set	.LANCHOR9,. + 0
 2606              		.type	_ZN3PID21tuningPeakTemperatureE, %object
 2607              		.size	_ZN3PID21tuningPeakTemperatureE, 4
 2608              	_ZN3PID21tuningPeakTemperatureE:
 2609 0000 00000000 		.space	4
 2610              		.section	.bss._ZN3PID21tuningReadingIntervalE,"aw",%nobits
 2611              		.align	2
 2612              		.set	.LANCHOR2,. + 0
 2613              		.type	_ZN3PID21tuningReadingIntervalE, %object
 2614              		.size	_ZN3PID21tuningReadingIntervalE, 4
 2615              	_ZN3PID21tuningReadingIntervalE:
 2616 0000 00000000 		.space	4
 2617              		.section	.bss._ZN3PID9tuningPwmE,"aw",%nobits
 2618              		.align	2
 2619              		.set	.LANCHOR3,. + 0
 2620              		.type	_ZN3PID9tuningPwmE, %object
 2621              		.size	_ZN3PID9tuningPwmE, 4
 2622              	_ZN3PID9tuningPwmE:
ARM GAS  /tmp/ccs6Uu0h.s 			page 47


 2623 0000 00000000 		.space	4
 2624              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2625              		.align	2
 2626              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2627              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2628              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2629 0000 00000000 		.space	4
 2630              		.section	.bss.tuningVoltageAccumulator,"aw",%nobits
 2631              		.align	2
 2632              		.set	.LANCHOR10,. + 0
 2633              		.type	tuningVoltageAccumulator, %object
 2634              		.size	tuningVoltageAccumulator, 4
 2635              	tuningVoltageAccumulator:
 2636 0000 00000000 		.space	4
 2637              		.section	.bss.voltageSamplesTaken,"aw",%nobits
 2638              		.align	2
 2639              		.set	.LANCHOR11,. + 0
 2640              		.type	voltageSamplesTaken, %object
 2641              		.size	voltageSamplesTaken, 4
 2642              	voltageSamplesTaken:
 2643 0000 00000000 		.space	4
 2644              		.section	.rodata._ZN3PID12DoTuningStepEv.str1.4,"aMS",%progbits,1
 2645              		.align	2
 2646              	.LC19:
 2647 0000 4175746F 		.ascii	"Auto tune phase 1, heater on\012\000"
 2647      2074756E 
 2647      65207068 
 2647      61736520 
 2647      312C2068 
 2648 001e 0000     		.space	2
 2649              	.LC20:
 2650 0020 4175746F 		.ascii	"Auto tune cancelled because starting temperature is"
 2650      2074756E 
 2650      65206361 
 2650      6E63656C 
 2650      6C656420 
 2651 0053 206E6F74 		.ascii	" not stable\012\000"
 2651      20737461 
 2651      626C650A 
 2651      00
 2652              	.LC21:
 2653 0060 4175746F 		.ascii	"Auto tune cancelled because temperature is not incr"
 2653      2074756E 
 2653      65206361 
 2653      6E63656C 
 2653      6C656420 
 2654 0093 65617369 		.ascii	"easing\012\000"
 2654      6E670A00 
 2655 009b 00       		.space	1
 2656              	.LC22:
 2657 009c 4175746F 		.ascii	"Auto tune cancelled because target temperature was "
 2657      2074756E 
 2657      65206361 
 2657      6E63656C 
 2657      6C656420 
 2658 00cf 6E6F7420 		.ascii	"not reached\012\000"
 2658      72656163 
ARM GAS  /tmp/ccs6Uu0h.s 			page 48


 2658      6865640A 
 2658      00
 2659              	.LC23:
 2660 00dc 4175746F 		.ascii	"Auto tune phase 2, heater off\012\000"
 2660      2074756E 
 2660      65207068 
 2660      61736520 
 2660      322C2068 
 2661 00fb 00       		.space	1
 2662              	.LC24:
 2663 00fc 4175746F 		.ascii	"Auto tune cancelled because temperature is not fall"
 2663      2074756E 
 2663      65206361 
 2663      6E63656C 
 2663      6C656420 
 2664 012f 696E670A 		.ascii	"ing\012\000"
 2664      00
 2665              	.LC25:
 2666 0134 4174206E 		.ascii	"At no peak found\000"
 2666      6F207065 
 2666      616B2066 
 2666      6F756E64 
 2666      00
 2667 0145 000000   		.space	3
 2668              	.LC26:
 2669 0148 4175746F 		.ascii	"Auto tune cancelled because temperature peak was no"
 2669      2074756E 
 2669      65206361 
 2669      6E63656C 
 2669      6C656420 
 2670 017b 74206964 		.ascii	"t identified\012\000"
 2670      656E7469 
 2670      66696564 
 2670      0A00
 2671 0189 000000   		.space	3
 2672              	.LC27:
 2673 018c 4175746F 		.ascii	"Auto tune phase 3, peak temperature was %.1f\012\000"
 2673      2074756E 
 2673      65207068 
 2673      61736520 
 2673      332C2070 
 2674              		.section	.rodata._ZN3PID13DisplayBufferEPKc.str1.4,"aMS",%progbits,1
 2675              		.align	2
 2676              	.LC13:
 2677 0000 25733A20 		.ascii	"%s: interval %.1f sec, readings\000"
 2677      696E7465 
 2677      7276616C 
 2677      20252E31 
 2677      66207365 
 2678              	.LC14:
 2679 0020 20252E31 		.ascii	" %.1f\000"
 2679      6600
 2680 0026 0000     		.space	2
 2681              	.LC15:
 2682 0028 0A00     		.ascii	"\012\000"
 2683              		.section	.rodata._ZN3PID13StartAutoTuneEffRK9StringRef.str1.4,"aMS",%progbits,1
 2684              		.align	2
ARM GAS  /tmp/ccs6Uu0h.s 			page 49


 2685              	.LC6:
 2686 0000 4572726F 		.ascii	"Error: heater %d cannot be auto tuned while it is d"
 2686      723A2068 
 2686      65617465 
 2686      72202564 
 2686      2063616E 
 2687 0033 69736162 		.ascii	"isabled\000"
 2687      6C656400 
 2688 003b 00       		.space	1
 2689              	.LC7:
 2690 003c 4572726F 		.ascii	"Error: heater %d must be off and cold before auto t"
 2690      723A2068 
 2690      65617465 
 2690      72202564 
 2690      206D7573 
 2691 006f 756E696E 		.ascii	"uning it\000"
 2691      67206974 
 2691      00
 2692              	.LC8:
 2693 0078 4572726F 		.ascii	"Error: heater %d reported error '%s' at start of au"
 2693      723A2068 
 2693      65617465 
 2693      72202564 
 2693      20726570 
 2694 00ab 746F2074 		.ascii	"to tuning\000"
 2694      756E696E 
 2694      6700
 2695 00b5 000000   		.space	3
 2696              	.LC9:
 2697 00b8 4175746F 		.ascii	"Auto tuning heater %d using target temperature %.1f"
 2697      2074756E 
 2697      696E6720 
 2697      68656174 
 2697      65722025 
 2698 00eb C2B04320 		.ascii	"\302\260C and PWM %.2f - do not leave printer unatt"
 2698      616E6420 
 2698      50574D20 
 2698      252E3266 
 2698      202D2064 
 2699 0118 656E6465 		.ascii	"ended\000"
 2699      6400
 2700              		.section	.rodata._ZN3PID14CalculateModelEv.str1.4,"aMS",%progbits,1
 2701              		.align	2
 2702              	.LC16:
 2703 0000 41742063 		.ascii	"At completion\000"
 2703      6F6D706C 
 2703      6574696F 
 2703      6E00
 2704 000e 0000     		.space	2
 2705              	.LC17:
 2706 0010 4175746F 		.ascii	"Auto tune heater %d completed in %lu sec\012Use M30"
 2706      2074756E 
 2706      65206865 
 2706      61746572 
 2706      20256420 
 2707 0040 37204825 		.ascii	"7 H%d to see the result, or M500 to save the result"
 2707      6420746F 
ARM GAS  /tmp/ccs6Uu0h.s 			page 50


 2707      20736565 
 2707      20746865 
 2707      20726573 
 2708 0073 20696E20 		.ascii	" in config-override.g\012\000"
 2708      636F6E66 
 2708      69672D6F 
 2708      76657272 
 2708      6964652E 
 2709 008a 0000     		.space	2
 2710              	.LC18:
 2711 008c 4175746F 		.ascii	"Auto tune of heater %u failed due to bad curve fit "
 2711      2074756E 
 2711      65206F66 
 2711      20686561 
 2711      74657220 
 2712 00bf 28473D25 		.ascii	"(G=%.1f, tc=%.1f, td=%.1f)\012\000"
 2712      2E31662C 
 2712      2074633D 
 2712      252E3166 
 2712      2C207464 
 2713              		.section	.rodata._ZN3PID17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2714              		.align	2
 2715              	.LC10:
 2716 0000 48656174 		.ascii	"Heater %d is being tuned, phase %u of %u\000"
 2716      65722025 
 2716      64206973 
 2716      20626569 
 2716      6E672074 
 2717 0029 000000   		.space	3
 2718              	.LC11:
 2719 002c 48656174 		.ascii	"Heater %d tuning succeeded, use M307 H%d to see res"
 2719      65722025 
 2719      64207475 
 2719      6E696E67 
 2719      20737563 
 2720 005f 756C7400 		.ascii	"ult\000"
 2721 0063 00       		.space	1
 2722              	.LC12:
 2723 0064 48656174 		.ascii	"Heater %d tuning failed\000"
 2723      65722025 
 2723      64207475 
 2723      6E696E67 
 2723      20666169 
 2724              		.section	.rodata._ZN3PID20SetActiveTemperatureEf.str1.4,"aMS",%progbits,1
 2725              		.align	2
 2726              	.LC4:
 2727 0000 54656D70 		.ascii	"Temperature %.1f\302\260C too high for heater %d\012"
 2727      65726174 
 2727      75726520 
 2727      252E3166 
 2727      C2B04320 
 2728 002b 00       		.ascii	"\000"
 2729              	.LC5:
 2730 002c 54656D70 		.ascii	"Temperature %.1f\302\260C too low for heater %d\012"
 2730      65726174 
 2730      75726520 
 2730      252E3166 
ARM GAS  /tmp/ccs6Uu0h.s 			page 51


 2730      C2B04320 
 2731 0056 00       		.ascii	"\000"
 2732              		.section	.rodata._ZN3PID4SpinEv.str1.4,"aMS",%progbits,1
 2733              		.align	2
 2734              	.LC28:
 2735 0000 54656D70 		.ascii	"Temperature reading fault on heater %d: %s\012\000"
 2735      65726174 
 2735      75726520 
 2735      72656164 
 2735      696E6720 
 2736              	.LC29:
 2737 002c 48656174 		.ascii	"Heating fault on heater %d, temperature rising much"
 2737      696E6720 
 2737      6661756C 
 2737      74206F6E 
 2737      20686561 
 2738 005f 206D6F72 		.ascii	" more slowly than the expected %.1f\302\260C/sec\012"
 2738      6520736C 
 2738      6F776C79 
 2738      20746861 
 2738      6E207468 
 2739 008a 00       		.ascii	"\000"
 2740 008b 00       		.space	1
 2741              	.LC30:
 2742 008c 48656174 		.ascii	"Heating fault on heater %d, temperature excursion e"
 2742      696E6720 
 2742      6661756C 
 2742      74206F6E 
 2742      20686561 
 2743 00bf 78636565 		.ascii	"xceeded %.1f\302\260C\012\000"
 2743      64656420 
 2743      252E3166 
 2743      C2B0430A 
 2743      00
 2744              	.LC31:
 2745 00d0 48656174 		.ascii	"Heating fault on heater %d\012\000"
 2745      696E6720 
 2745      6661756C 
 2745      74206F6E 
 2745      20686561 
 2746              		.section	.rodata._ZN3PID8SetModelEfffffbbt.str1.4,"aMS",%progbits,1
 2747              		.align	2
 2748              	.LC2:
 2749 0000 48656174 		.ascii	"Heater %u appears to be over-powered. If left on at"
 2749      65722025 
 2749      75206170 
 2749      70656172 
 2749      7320746F 
 2750 0033 2066756C 		.ascii	" full power, its temperature is predicted to reach "
 2750      6C20706F 
 2750      7765722C 
 2750      20697473 
 2750      2074656D 
 2751 0066 2564432E 		.ascii	"%dC.\012\000"
 2751      0A00
 2752              		.section	.rodata._ZN3PID8SwitchOnEv.part.15.str1.4,"aMS",%progbits,1
 2753              		.align	2
ARM GAS  /tmp/ccs6Uu0h.s 			page 52


 2754              	.LC0:
 2755 0000 48656174 		.ascii	"Heater %d not switched on due to temperature fault\012"
 2755      65722025 
 2755      64206E6F 
 2755      74207377 
 2755      69746368 
 2756 0033 00       		.ascii	"\000"
 2757              	.LC1:
 2758 0034 48656174 		.ascii	"Heater %d switched on\012\000"
 2758      65722025 
 2758      64207377 
 2758      69746368 
 2758      6564206F 
 2759              		.section	.rodata._ZN3PID9SwitchOffEv.str1.4,"aMS",%progbits,1
 2760              		.align	2
 2761              	.LC3:
 2762 0000 48656174 		.ascii	"Heater %d switched off\012\000"
 2762      65722025 
 2762      64207377 
 2762      69746368 
 2762      6564206F 
 2763              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
