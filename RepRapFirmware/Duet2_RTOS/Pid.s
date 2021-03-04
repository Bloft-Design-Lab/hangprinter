ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN3PID8SwitchOnEv.part.15,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN3PID8SwitchOnEv.part.15, %function
  23              	_ZN3PID8SwitchOnEv.part.15:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 90F87C50 		ldrb	r5, [r0, #124]	@ zero_extendqisi2
  28 0006 2DB9     		cbnz	r5, .L2
  29 0008 2B4B     		ldr	r3, .L26
  30 000a D3F80831 		ldr	r3, [r3, #264]	@ unaligned
  31 000e 9A06     		lsls	r2, r3, #26
  32 0010 41D4     		bmi	.L25
  33              	.L1:
  34 0012 70BD     		pop	{r4, r5, r6, pc}
  35              	.L2:
  36 0014 90F87E30 		ldrb	r3, [r0, #126]	@ zero_extendqisi2
  37 0018 90ED067A 		vldr.32	s14, [r0, #24]
  38 001c D0ED027A 		vldr.32	s15, [r0, #8]
  39 0020 D0ED035A 		vldr.32	s11, [r0, #12]
  40 0024 F7EE006A 		vmov.f32	s13, #1.0e+0
  41 0028 002B     		cmp	r3, #0
  42 002a 37EE266A 		vadd.f32	s12, s14, s13
  43 002e 08BF     		it	eq
  44 0030 F0EE657A 		vmoveq.f32	s15, s11
  45 0034 B4EEE76A 		vcmpe.f32	s12, s15
  46 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  47 003c 0446     		mov	r4, r0
  48 003e 1AD5     		bpl	.L22
  49 0040 0323     		movs	r3, #3
  50 0042 9D42     		cmp	r5, r3
  51 0044 80F87C30 		strb	r3, [r0, #124]
  52 0048 E3D0     		beq	.L1
  53 004a 0023     		movs	r3, #0
  54 004c A0F87830 		strh	r3, [r0, #120]	@ movhi
  55 0050 FFF7FEFF 		bl	millis
  56 0054 2067     		str	r0, [r4, #112]
  57              	.L9:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 2


  58 0056 184B     		ldr	r3, .L26
  59 0058 D3F80831 		ldr	r3, [r3, #264]
  60 005c 9B06     		lsls	r3, r3, #26
  61 005e D8D5     		bpl	.L1
  62 0060 012D     		cmp	r5, #1
  63 0062 D6D1     		bne	.L1
  64 0064 94F97A30 		ldrsb	r3, [r4, #122]
  65 0068 2068     		ldr	r0, [r4]
  66 006a 144A     		ldr	r2, .L26+4
  67 006c 3521     		movs	r1, #53
  68 006e BDE87040 		pop	{r4, r5, r6, lr}
  69 0072 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  70              	.L22:
  71 0076 77EEA67A 		vadd.f32	s15, s15, s13
  72 007a B4EEE77A 		vcmpe.f32	s14, s15
  73 007e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  74 0082 12DC     		bgt	.L10
  75 0084 0523     		movs	r3, #5
  76 0086 9D42     		cmp	r5, r3
  77 0088 80F87C30 		strb	r3, [r0, #124]
  78 008c C1D0     		beq	.L1
  79              	.L11:
  80 008e 0023     		movs	r3, #0
  81 0090 A4F87830 		strh	r3, [r4, #120]	@ movhi
  82 0094 DFE7     		b	.L9
  83              	.L25:
  84 0096 90F97A30 		ldrsb	r3, [r0, #122]
  85 009a 094A     		ldr	r2, .L26+8
  86 009c 0068     		ldr	r0, [r0]
  87 009e 40F2B521 		movw	r1, #693
  88 00a2 BDE87040 		pop	{r4, r5, r6, lr}
  89 00a6 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  90              	.L10:
  91 00aa 0423     		movs	r3, #4
  92 00ac 9D42     		cmp	r5, r3
  93 00ae 80F87C30 		strb	r3, [r0, #124]
  94 00b2 ECD1     		bne	.L11
  95 00b4 70BD     		pop	{r4, r5, r6, pc}
  96              	.L27:
  97 00b6 00BF     		.align	2
  98              	.L26:
  99 00b8 00000000 		.word	reprap
 100 00bc 34000000 		.word	.LC1
 101 00c0 00000000 		.word	.LC0
 102              		.size	_ZN3PID8SwitchOnEv.part.15, .-_ZN3PID8SwitchOnEv.part.15
 103              		.section	.text._ZN3PIDC2ER8Platforma,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	_ZN3PIDC2ER8Platforma
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	_ZN3PIDC2ER8Platforma, %function
 112              	_ZN3PIDC2ER8Platforma:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 3


 115 0000 70B5     		push	{r4, r5, r6, lr}
 116 0002 0446     		mov	r4, r0
 117 0004 0025     		movs	r5, #0
 118 0006 C0E90015 		strd	r1, r5, [r0]
 119 000a 1646     		mov	r6, r2
 120 000c 3030     		adds	r0, r0, #48
 121 000e FFF7FEFF 		bl	_ZN5FopDtC1Ev
 122 0012 0123     		movs	r3, #1
 123 0014 84F87A60 		strb	r6, [r4, #122]
 124 0018 84F87D50 		strb	r5, [r4, #125]
 125 001c 84F87C30 		strb	r3, [r4, #124]
 126 0020 2046     		mov	r0, r4
 127 0022 70BD     		pop	{r4, r5, r6, pc}
 128              		.size	_ZN3PIDC2ER8Platforma, .-_ZN3PIDC2ER8Platforma
 129              		.global	_ZN3PIDC1ER8Platforma
 130              		.thumb_set _ZN3PIDC1ER8Platforma,_ZN3PIDC2ER8Platforma
 131              		.section	.text._ZN3PID4InitEfffbb,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	_ZN3PID4InitEfffbb
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	_ZN3PID4InitEfffbb, %function
 140              	_ZN3PID4InitEfffbb:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 70B5     		push	{r4, r5, r6, lr}
 144 0002 0446     		mov	r4, r0
 145 0004 2DED048B 		vpush.64	{d8, d9}
 146 0008 2C4B     		ldr	r3, .L34
 147 000a 2D48     		ldr	r0, .L34+4
 148 000c 2061     		str	r0, [r4, #16]	@ float
 149 000e 2D48     		ldr	r0, .L34+8
 150 0010 6061     		str	r0, [r4, #20]	@ float
 151 0012 0D46     		mov	r5, r1
 152 0014 1869     		ldr	r0, [r3, #16]
 153 0016 94F97A10 		ldrsb	r1, [r4, #122]
 154 001a 9FED2B8A 		vldr.32	s16, .L34+12
 155 001e F0EE408A 		vmov.f32	s17, s0
 156 0022 B0EE609A 		vmov.f32	s18, s1
 157 0026 F0EE419A 		vmov.f32	s19, s2
 158 002a 1646     		mov	r6, r2
 159 002c FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 160 0030 B0EE691A 		vmov.f32	s2, s19
 161 0034 B0EE402A 		vmov.f32	s4, s0
 162 0038 F0EE490A 		vmov.f32	s1, s18
 163 003c F0EE482A 		vmov.f32	s5, s16
 164 0040 B0EE680A 		vmov.f32	s0, s17
 165 0044 F7EE001A 		vmov.f32	s3, #1.0e+0
 166 0048 3246     		mov	r2, r6
 167 004a 2946     		mov	r1, r5
 168 004c 0023     		movs	r3, #0
 169 004e 04F13000 		add	r0, r4, #48
 170 0052 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 171 0056 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 4


 172 005a 1C4A     		ldr	r2, .L34+16
 173 005c 84ED028A 		vstr.32	s16, [r4, #8]
 174 0060 002B     		cmp	r3, #0
 175 0062 4FF00101 		mov	r1, #1
 176 0066 4FF00003 		mov	r3, #0
 177 006a B7EE000A 		vmov.f32	s0, #1.0e+0
 178 006e 08BF     		it	eq
 179 0070 B0EE480A 		vmoveq.f32	s0, s16
 180 0074 84ED038A 		vstr.32	s16, [r4, #12]
 181 0078 84ED198A 		vstr.32	s16, [r4, #100]
 182 007c 84ED1A8A 		vstr.32	s16, [r4, #104]
 183 0080 84ED1B8A 		vstr.32	s16, [r4, #108]
 184 0084 84F87C10 		strb	r1, [r4, #124]
 185 0088 A261     		str	r2, [r4, #24]	@ float
 186 008a 84F87B30 		strb	r3, [r4, #123]
 187 008e E362     		str	r3, [r4, #44]
 188 0090 84F88030 		strb	r3, [r4, #128]
 189 0094 84F87E30 		strb	r3, [r4, #126]
 190 0098 84F87F30 		strb	r3, [r4, #127]
 191 009c A4F87830 		strh	r3, [r4, #120]	@ movhi
 192 00a0 B4F84420 		ldrh	r2, [r4, #68]
 193 00a4 94F97A10 		ldrsb	r1, [r4, #122]
 194 00a8 2068     		ldr	r0, [r4]
 195 00aa FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 196 00ae FFF7FEFF 		bl	millis
 197 00b2 BDEC048B 		vldm	sp!, {d8-d9}
 198 00b6 6067     		str	r0, [r4, #116]
 199 00b8 70BD     		pop	{r4, r5, r6, pc}
 200              	.L35:
 201 00ba 00BF     		.align	2
 202              	.L34:
 203 00bc 00000000 		.word	reprap
 204 00c0 00007041 		.word	1097859072
 205 00c4 0000A040 		.word	1084227584
 206 00c8 00000000 		.word	0
 207 00cc 0000FA44 		.word	1157234688
 208              		.size	_ZN3PID4InitEfffbb, .-_ZN3PID4InitEfffbb
 209              		.section	.text._ZN3PID5ResetEv,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	_ZN3PID5ResetEv
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu fpv4-sp-d16
 217              		.type	_ZN3PID5ResetEv, %function
 218              	_ZN3PID5ResetEv:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221              		@ link register save eliminated.
 222 0000 0B4B     		ldr	r3, .L37
 223 0002 8361     		str	r3, [r0, #24]	@ float
 224 0004 0022     		movs	r2, #0
 225 0006 0023     		movs	r3, #0
 226 0008 0121     		movs	r1, #1
 227 000a 80F87C10 		strb	r1, [r0, #124]
 228 000e 80F87B30 		strb	r3, [r0, #123]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 5


 229 0012 C362     		str	r3, [r0, #44]
 230 0014 80F88030 		strb	r3, [r0, #128]
 231 0018 80F87E30 		strb	r3, [r0, #126]
 232 001c 80F87F30 		strb	r3, [r0, #127]
 233 0020 A0F87830 		strh	r3, [r0, #120]	@ movhi
 234 0024 8260     		str	r2, [r0, #8]	@ float
 235 0026 C260     		str	r2, [r0, #12]	@ float
 236 0028 4266     		str	r2, [r0, #100]	@ float
 237 002a 8266     		str	r2, [r0, #104]	@ float
 238 002c C266     		str	r2, [r0, #108]	@ float
 239 002e 7047     		bx	lr
 240              	.L38:
 241              		.align	2
 242              	.L37:
 243 0030 0000FA44 		.word	1157234688
 244              		.size	_ZN3PID5ResetEv, .-_ZN3PID5ResetEv
 245              		.section	.text._ZN3PID8SetModelEfffffbbt,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZN3PID8SetModelEfffffbbt
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZN3PID8SetModelEfffffbbt, %function
 254              	_ZN3PID8SetModelEfffffbbt:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 258 0002 2DED068B 		vpush.64	{d8, d9, d10}
 259 0006 0446     		mov	r4, r0
 260 0008 3548     		ldr	r0, .L49
 261 000a 0D46     		mov	r5, r1
 262 000c 83B0     		sub	sp, sp, #12
 263 000e 94F97A10 		ldrsb	r1, [r4, #122]
 264 0012 0069     		ldr	r0, [r0, #16]
 265 0014 F0EE42AA 		vmov.f32	s21, s4
 266 0018 B0EE408A 		vmov.f32	s16, s0
 267 001c B0EE609A 		vmov.f32	s18, s1
 268 0020 F0EE419A 		vmov.f32	s19, s2
 269 0024 B0EE61AA 		vmov.f32	s20, s3
 270 0028 1646     		mov	r6, r2
 271 002a 1F46     		mov	r7, r3
 272 002c FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 273 0030 2946     		mov	r1, r5
 274 0032 B0EE402A 		vmov.f32	s4, s0
 275 0036 F0EE408A 		vmov.f32	s17, s0
 276 003a 3B46     		mov	r3, r7
 277 003c 3246     		mov	r2, r6
 278 003e F0EE6A2A 		vmov.f32	s5, s21
 279 0042 F0EE4A1A 		vmov.f32	s3, s20
 280 0046 B0EE691A 		vmov.f32	s2, s19
 281 004a F0EE490A 		vmov.f32	s1, s18
 282 004e B0EE480A 		vmov.f32	s0, s16
 283 0052 04F13000 		add	r0, r4, #48
 284 0056 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 285 005a 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 6


 286 005c 98B1     		cbz	r0, .L40
 287 005e 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 288 0062 ABB1     		cbz	r3, .L41
 289 0064 B3EE097A 		vmov.f32	s14, #2.5e+1
 290 0068 78EEC78A 		vsub.f32	s17, s17, s14
 291 006c DFED1D7A 		vldr.32	s15, .L49+4
 292 0070 F7EE086A 		vmov.f32	s13, #1.5e+0
 293 0074 E8EEA67A 		vfma.f32	s15, s17, s13
 294 0078 38EE078A 		vadd.f32	s16, s16, s14
 295 007c B4EEE78A 		vcmpe.f32	s16, s15
 296 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 297 0084 1FDC     		bgt	.L48
 298              	.L40:
 299 0086 2846     		mov	r0, r5
 300 0088 03B0     		add	sp, sp, #12
 301              		@ sp needed
 302 008a BDEC068B 		vldm	sp!, {d8-d10}
 303 008e F0BD     		pop	{r4, r5, r6, r7, pc}
 304              	.L41:
 305 0090 1548     		ldr	r0, .L49+8
 306 0092 A061     		str	r0, [r4, #24]	@ float
 307 0094 0022     		movs	r2, #0
 308 0096 0121     		movs	r1, #1
 309 0098 2846     		mov	r0, r5
 310 009a 84F87B30 		strb	r3, [r4, #123]
 311 009e E362     		str	r3, [r4, #44]
 312 00a0 84F88030 		strb	r3, [r4, #128]
 313 00a4 84F87E30 		strb	r3, [r4, #126]
 314 00a8 84F87F30 		strb	r3, [r4, #127]
 315 00ac A4F87830 		strh	r3, [r4, #120]	@ movhi
 316 00b0 A260     		str	r2, [r4, #8]	@ float
 317 00b2 E260     		str	r2, [r4, #12]	@ float
 318 00b4 6266     		str	r2, [r4, #100]	@ float
 319 00b6 A266     		str	r2, [r4, #104]	@ float
 320 00b8 E266     		str	r2, [r4, #108]	@ float
 321 00ba 84F87C10 		strb	r1, [r4, #124]
 322 00be 03B0     		add	sp, sp, #12
 323              		@ sp needed
 324 00c0 BDEC068B 		vldm	sp!, {d8-d10}
 325 00c4 F0BD     		pop	{r4, r5, r6, r7, pc}
 326              	.L48:
 327 00c6 BDEEC88A 		vcvt.s32.f32	s16, s16
 328 00ca 94F97A30 		ldrsb	r3, [r4, #122]
 329 00ce 2068     		ldr	r0, [r4]
 330 00d0 064A     		ldr	r2, .L49+12
 331 00d2 8DED008A 		vstr.32	s16, [sp]	@ int
 332 00d6 40F2B521 		movw	r1, #693
 333 00da FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 334 00de D2E7     		b	.L40
 335              	.L50:
 336              		.align	2
 337              	.L49:
 338 00e0 00000000 		.word	reprap
 339 00e4 00004842 		.word	1112014848
 340 00e8 0000FA44 		.word	1157234688
 341 00ec 00000000 		.word	.LC2
 342              		.size	_ZN3PID8SetModelEfffffbbt, .-_ZN3PID8SetModelEfffffbbt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 7


 343              		.section	.text._ZNK3PID26GetHighestTemperatureLimitEv,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	_ZNK3PID26GetHighestTemperatureLimitEv
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZNK3PID26GetHighestTemperatureLimitEv, %function
 352              	_ZNK3PID26GetHighestTemperatureLimitEv:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 024B     		ldr	r3, .L52
 357 0002 90F97A10 		ldrsb	r1, [r0, #122]
 358 0006 1869     		ldr	r0, [r3, #16]
 359 0008 FFF7FEBF 		b	_ZNK4Heat26GetHighestTemperatureLimitEa
 360              	.L53:
 361              		.align	2
 362              	.L52:
 363 000c 00000000 		.word	reprap
 364              		.size	_ZNK3PID26GetHighestTemperatureLimitEv, .-_ZNK3PID26GetHighestTemperatureLimitEv
 365              		.section	.text._ZNK3PID25GetLowestTemperatureLimitEv,"ax",%progbits
 366              		.align	1
 367              		.p2align 2,,3
 368              		.global	_ZNK3PID25GetLowestTemperatureLimitEv
 369              		.syntax unified
 370              		.thumb
 371              		.thumb_func
 372              		.fpu fpv4-sp-d16
 373              		.type	_ZNK3PID25GetLowestTemperatureLimitEv, %function
 374              	_ZNK3PID25GetLowestTemperatureLimitEv:
 375              		@ args = 0, pretend = 0, frame = 0
 376              		@ frame_needed = 0, uses_anonymous_args = 0
 377              		@ link register save eliminated.
 378 0000 024B     		ldr	r3, .L55
 379 0002 90F97A10 		ldrsb	r1, [r0, #122]
 380 0006 1869     		ldr	r0, [r3, #16]
 381 0008 FFF7FEBF 		b	_ZNK4Heat25GetLowestTemperatureLimitEa
 382              	.L56:
 383              		.align	2
 384              	.L55:
 385 000c 00000000 		.word	reprap
 386              		.size	_ZNK3PID25GetLowestTemperatureLimitEv, .-_ZNK3PID25GetLowestTemperatureLimitEv
 387              		.section	.text._ZN3PID15ReadTemperatureEv,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	_ZN3PID15ReadTemperatureEv
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv4-sp-d16
 395              		.type	_ZN3PID15ReadTemperatureEv, %function
 396              	_ZN3PID15ReadTemperatureEv:
 397              		@ args = 0, pretend = 0, frame = 8
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 8


 400 0002 82B0     		sub	sp, sp, #8
 401 0004 02AA     		add	r2, sp, #8
 402 0006 0023     		movs	r3, #0
 403 0008 02F8013D 		strb	r3, [r2, #-1]!
 404 000c 064B     		ldr	r3, .L59
 405 000e 90F97A10 		ldrsb	r1, [r0, #122]
 406 0012 0446     		mov	r4, r0
 407 0014 1869     		ldr	r0, [r3, #16]
 408 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 409 001a 9DF80700 		ldrb	r0, [sp, #7]	@ zero_extendqisi2
 410 001e 84ED060A 		vstr.32	s0, [r4, #24]
 411 0022 02B0     		add	sp, sp, #8
 412              		@ sp needed
 413 0024 10BD     		pop	{r4, pc}
 414              	.L60:
 415 0026 00BF     		.align	2
 416              	.L59:
 417 0028 00000000 		.word	reprap
 418              		.size	_ZN3PID15ReadTemperatureEv, .-_ZN3PID15ReadTemperatureEv
 419              		.section	.text._ZN3PID8SwitchOnEv,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	_ZN3PID8SwitchOnEv
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	_ZN3PID8SwitchOnEv, %function
 428              	_ZN3PID8SwitchOnEv:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 433 0004 0BB1     		cbz	r3, .L61
 434 0006 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 435              	.L61:
 436 000a 7047     		bx	lr
 437              		.size	_ZN3PID8SwitchOnEv, .-_ZN3PID8SwitchOnEv
 438              		.section	.text._ZN3PID9SwitchOffEv,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	_ZN3PID9SwitchOffEv
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu fpv4-sp-d16
 446              		.type	_ZN3PID9SwitchOffEv, %function
 447              	_ZN3PID9SwitchOffEv:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450 0000 DFED1E7A 		vldr.32	s15, .L80
 451 0004 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 452 0008 C0ED1A7A 		vstr.32	s15, [r0, #104]
 453 000c FBB1     		cbz	r3, .L74
 454 000e 70B5     		push	{r4, r5, r6, lr}
 455 0010 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 456 0014 B0F84420 		ldrh	r2, [r0, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 9


 457 0018 90F97A10 		ldrsb	r1, [r0, #122]
 458 001c 002B     		cmp	r3, #0
 459 001e 0446     		mov	r4, r0
 460 0020 B7EE000A 		vmov.f32	s0, #1.0e+0
 461 0024 08BF     		it	eq
 462 0026 B0EE670A 		vmoveq.f32	s0, s15
 463 002a 0068     		ldr	r0, [r0]
 464 002c FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 465 0030 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 466 0034 052B     		cmp	r3, #5
 467 0036 0BD8     		bhi	.L77
 468 0038 012B     		cmp	r3, #1
 469 003a 07D9     		bls	.L63
 470              	.L79:
 471 003c 0122     		movs	r2, #1
 472 003e 104B     		ldr	r3, .L80+4
 473 0040 84F87C20 		strb	r2, [r4, #124]
 474 0044 D3F80831 		ldr	r3, [r3, #264]
 475 0048 9B06     		lsls	r3, r3, #26
 476 004a 0DD4     		bmi	.L78
 477              	.L63:
 478 004c 70BD     		pop	{r4, r5, r6, pc}
 479              	.L74:
 480 004e 7047     		bx	lr
 481              	.L77:
 482 0050 0C4D     		ldr	r5, .L80+8
 483 0052 0421     		movs	r1, #4
 484 0054 2868     		ldr	r0, [r5]
 485 0056 FFF7FEFF 		bl	_ZdlPvj
 486 005a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 487 005e 0022     		movs	r2, #0
 488 0060 012B     		cmp	r3, #1
 489 0062 2A60     		str	r2, [r5]
 490 0064 EAD8     		bhi	.L79
 491 0066 F1E7     		b	.L63
 492              	.L78:
 493 0068 94F97A30 		ldrsb	r3, [r4, #122]
 494 006c 2068     		ldr	r0, [r4]
 495 006e 064A     		ldr	r2, .L80+12
 496 0070 3521     		movs	r1, #53
 497 0072 BDE87040 		pop	{r4, r5, r6, lr}
 498 0076 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 499              	.L81:
 500 007a 00BF     		.align	2
 501              	.L80:
 502 007c 00000000 		.word	0
 503 0080 00000000 		.word	reprap
 504 0084 00000000 		.word	.LANCHOR0
 505 0088 00000000 		.word	.LC3
 506              		.size	_ZN3PID9SwitchOffEv, .-_ZN3PID9SwitchOffEv
 507              		.global	__aeabi_f2d
 508              		.section	.text._ZN3PID20SetActiveTemperatureEf,"ax",%progbits
 509              		.align	1
 510              		.p2align 2,,3
 511              		.global	_ZN3PID20SetActiveTemperatureEf
 512              		.syntax unified
 513              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 10


 514              		.thumb_func
 515              		.fpu fpv4-sp-d16
 516              		.type	_ZN3PID20SetActiveTemperatureEf, %function
 517              	_ZN3PID20SetActiveTemperatureEf:
 518              		@ args = 0, pretend = 0, frame = 0
 519              		@ frame_needed = 0, uses_anonymous_args = 0
 520 0000 30B5     		push	{r4, r5, lr}
 521 0002 2DED028B 		vpush.64	{d8}
 522 0006 2C4D     		ldr	r5, .L102
 523 0008 90F97A10 		ldrsb	r1, [r0, #122]
 524 000c 85B0     		sub	sp, sp, #20
 525 000e 0446     		mov	r4, r0
 526 0010 2869     		ldr	r0, [r5, #16]
 527 0012 B0EE408A 		vmov.f32	s16, s0
 528 0016 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 529 001a B4EEC08A 		vcmpe.f32	s16, s0
 530 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 531 0022 19DC     		bgt	.L99
 532 0024 2869     		ldr	r0, [r5, #16]
 533 0026 94F97A10 		ldrsb	r1, [r4, #122]
 534 002a FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 535 002e B4EEC08A 		vcmpe.f32	s16, s0
 536 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 537 0036 23D4     		bmi	.L100
 538 0038 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 539 003c 84ED028A 		vstr.32	s16, [r4, #8]
 540 0040 022B     		cmp	r3, #2
 541 0042 05D9     		bls	.L82
 542 0044 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 543 0048 13B1     		cbz	r3, .L82
 544 004a 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 545 004e 5BBB     		cbnz	r3, .L101
 546              	.L82:
 547 0050 05B0     		add	sp, sp, #20
 548              		@ sp needed
 549 0052 BDEC028B 		vldm	sp!, {d8}
 550 0056 30BD     		pop	{r4, r5, pc}
 551              	.L99:
 552 0058 94F97A30 		ldrsb	r3, [r4, #122]
 553 005c 0293     		str	r3, [sp, #8]
 554 005e 18EE100A 		vmov	r0, s16
 555 0062 FFF7FEFF 		bl	__aeabi_f2d
 556 0066 2368     		ldr	r3, [r4]
 557 0068 144A     		ldr	r2, .L102+4
 558 006a CDE90001 		strd	r0, [sp]
 559 006e 1846     		mov	r0, r3
 560 0070 40F2B511 		movw	r1, #437
 561 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 562 0078 05B0     		add	sp, sp, #20
 563              		@ sp needed
 564 007a BDEC028B 		vldm	sp!, {d8}
 565 007e 30BD     		pop	{r4, r5, pc}
 566              	.L100:
 567 0080 94F97A30 		ldrsb	r3, [r4, #122]
 568 0084 0293     		str	r3, [sp, #8]
 569 0086 18EE100A 		vmov	r0, s16
 570 008a FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 11


 571 008e 2368     		ldr	r3, [r4]
 572 0090 0B4A     		ldr	r2, .L102+8
 573 0092 CDE90001 		strd	r0, [sp]
 574 0096 1846     		mov	r0, r3
 575 0098 40F2B511 		movw	r1, #437
 576 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 577 00a0 05B0     		add	sp, sp, #20
 578              		@ sp needed
 579 00a2 BDEC028B 		vldm	sp!, {d8}
 580 00a6 30BD     		pop	{r4, r5, pc}
 581              	.L101:
 582 00a8 2046     		mov	r0, r4
 583 00aa 05B0     		add	sp, sp, #20
 584              		@ sp needed
 585 00ac BDEC028B 		vldm	sp!, {d8}
 586 00b0 BDE83040 		pop	{r4, r5, lr}
 587 00b4 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 588              	.L103:
 589              		.align	2
 590              	.L102:
 591 00b8 00000000 		.word	reprap
 592 00bc 00000000 		.word	.LC4
 593 00c0 2C000000 		.word	.LC5
 594              		.size	_ZN3PID20SetActiveTemperatureEf, .-_ZN3PID20SetActiveTemperatureEf
 595              		.section	.text._ZN3PID21SetStandbyTemperatureEf,"ax",%progbits
 596              		.align	1
 597              		.p2align 2,,3
 598              		.global	_ZN3PID21SetStandbyTemperatureEf
 599              		.syntax unified
 600              		.thumb
 601              		.thumb_func
 602              		.fpu fpv4-sp-d16
 603              		.type	_ZN3PID21SetStandbyTemperatureEf, %function
 604              	_ZN3PID21SetStandbyTemperatureEf:
 605              		@ args = 0, pretend = 0, frame = 0
 606              		@ frame_needed = 0, uses_anonymous_args = 0
 607 0000 30B5     		push	{r4, r5, lr}
 608 0002 2DED028B 		vpush.64	{d8}
 609 0006 2C4D     		ldr	r5, .L121
 610 0008 90F97A10 		ldrsb	r1, [r0, #122]
 611 000c 85B0     		sub	sp, sp, #20
 612 000e 0446     		mov	r4, r0
 613 0010 2869     		ldr	r0, [r5, #16]
 614 0012 B0EE408A 		vmov.f32	s16, s0
 615 0016 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 616 001a B4EEC08A 		vcmpe.f32	s16, s0
 617 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 618 0022 19DC     		bgt	.L118
 619 0024 2869     		ldr	r0, [r5, #16]
 620 0026 94F97A10 		ldrsb	r1, [r4, #122]
 621 002a FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 622 002e B4EEC08A 		vcmpe.f32	s16, s0
 623 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 624 0036 23D4     		bmi	.L119
 625 0038 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 626 003c 84ED038A 		vstr.32	s16, [r4, #12]
 627 0040 022B     		cmp	r3, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 12


 628 0042 05D9     		bls	.L104
 629 0044 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 630 0048 13B9     		cbnz	r3, .L104
 631 004a 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 632 004e 5BBB     		cbnz	r3, .L120
 633              	.L104:
 634 0050 05B0     		add	sp, sp, #20
 635              		@ sp needed
 636 0052 BDEC028B 		vldm	sp!, {d8}
 637 0056 30BD     		pop	{r4, r5, pc}
 638              	.L118:
 639 0058 94F97A30 		ldrsb	r3, [r4, #122]
 640 005c 0293     		str	r3, [sp, #8]
 641 005e 18EE100A 		vmov	r0, s16
 642 0062 FFF7FEFF 		bl	__aeabi_f2d
 643 0066 2368     		ldr	r3, [r4]
 644 0068 144A     		ldr	r2, .L121+4
 645 006a CDE90001 		strd	r0, [sp]
 646 006e 1846     		mov	r0, r3
 647 0070 40F2B511 		movw	r1, #437
 648 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 649 0078 05B0     		add	sp, sp, #20
 650              		@ sp needed
 651 007a BDEC028B 		vldm	sp!, {d8}
 652 007e 30BD     		pop	{r4, r5, pc}
 653              	.L119:
 654 0080 94F97A30 		ldrsb	r3, [r4, #122]
 655 0084 0293     		str	r3, [sp, #8]
 656 0086 18EE100A 		vmov	r0, s16
 657 008a FFF7FEFF 		bl	__aeabi_f2d
 658 008e 2368     		ldr	r3, [r4]
 659 0090 0B4A     		ldr	r2, .L121+8
 660 0092 CDE90001 		strd	r0, [sp]
 661 0096 1846     		mov	r0, r3
 662 0098 40F2B511 		movw	r1, #437
 663 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 664 00a0 05B0     		add	sp, sp, #20
 665              		@ sp needed
 666 00a2 BDEC028B 		vldm	sp!, {d8}
 667 00a6 30BD     		pop	{r4, r5, pc}
 668              	.L120:
 669 00a8 2046     		mov	r0, r4
 670 00aa 05B0     		add	sp, sp, #20
 671              		@ sp needed
 672 00ac BDEC028B 		vldm	sp!, {d8}
 673 00b0 BDE83040 		pop	{r4, r5, lr}
 674 00b4 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 675              	.L122:
 676              		.align	2
 677              	.L121:
 678 00b8 00000000 		.word	reprap
 679 00bc 00000000 		.word	.LC4
 680 00c0 2C000000 		.word	.LC5
 681              		.size	_ZN3PID21SetStandbyTemperatureEf, .-_ZN3PID21SetStandbyTemperatureEf
 682              		.section	.text._ZN3PID19SetHeaterProtectionEP16HeaterProtection,"ax",%progbits
 683              		.align	1
 684              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 13


 685              		.global	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 686              		.syntax unified
 687              		.thumb
 688              		.thumb_func
 689              		.fpu fpv4-sp-d16
 690              		.type	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, %function
 691              	_ZN3PID19SetHeaterProtectionEP16HeaterProtection:
 692              		@ args = 0, pretend = 0, frame = 0
 693              		@ frame_needed = 0, uses_anonymous_args = 0
 694              		@ link register save eliminated.
 695 0000 4160     		str	r1, [r0, #4]
 696 0002 7047     		bx	lr
 697              		.size	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, .-_ZN3PID19SetHeaterProtectionEP16HeaterPr
 698              		.section	.text._ZN3PID8ActivateEv,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	_ZN3PID8ActivateEv
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv4-sp-d16
 706              		.type	_ZN3PID8ActivateEv, %function
 707              	_ZN3PID8ActivateEv:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710              		@ link register save eliminated.
 711 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 712 0004 2AB1     		cbz	r2, .L124
 713 0006 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 714 000a 0121     		movs	r1, #1
 715 000c 80F87E10 		strb	r1, [r0, #126]
 716 0010 02B9     		cbnz	r2, .L131
 717              	.L124:
 718 0012 7047     		bx	lr
 719              	.L131:
 720 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 721              		.size	_ZN3PID8ActivateEv, .-_ZN3PID8ActivateEv
 722              		.section	.text._ZN3PID7StandbyEv,"ax",%progbits
 723              		.align	1
 724              		.p2align 2,,3
 725              		.global	_ZN3PID7StandbyEv
 726              		.syntax unified
 727              		.thumb
 728              		.thumb_func
 729              		.fpu fpv4-sp-d16
 730              		.type	_ZN3PID7StandbyEv, %function
 731              	_ZN3PID7StandbyEv:
 732              		@ args = 0, pretend = 0, frame = 0
 733              		@ frame_needed = 0, uses_anonymous_args = 0
 734              		@ link register save eliminated.
 735 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 736 0004 2AB1     		cbz	r2, .L132
 737 0006 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 738 000a 0021     		movs	r1, #0
 739 000c 80F87E10 		strb	r1, [r0, #126]
 740 0010 02B9     		cbnz	r2, .L139
 741              	.L132:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 14


 742 0012 7047     		bx	lr
 743              	.L139:
 744 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 745              		.size	_ZN3PID7StandbyEv, .-_ZN3PID7StandbyEv
 746              		.section	.text._ZNK3PID15CheckProtectionEv,"ax",%progbits
 747              		.align	1
 748              		.p2align 2,,3
 749              		.global	_ZNK3PID15CheckProtectionEv
 750              		.syntax unified
 751              		.thumb
 752              		.thumb_func
 753              		.fpu fpv4-sp-d16
 754              		.type	_ZNK3PID15CheckProtectionEv, %function
 755              	_ZNK3PID15CheckProtectionEv:
 756              		@ args = 0, pretend = 0, frame = 0
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758 0000 10B5     		push	{r4, lr}
 759 0002 4468     		ldr	r4, [r0, #4]
 760 0004 14B9     		cbnz	r4, .L143
 761 0006 07E0     		b	.L141
 762              	.L152:
 763 0008 2468     		ldr	r4, [r4]
 764 000a 2CB1     		cbz	r4, .L141
 765              	.L143:
 766 000c 2046     		mov	r0, r4
 767 000e FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 768 0012 0028     		cmp	r0, #0
 769 0014 F8D1     		bne	.L152
 770 0016 10BD     		pop	{r4, pc}
 771              	.L141:
 772 0018 0120     		movs	r0, #1
 773 001a 10BD     		pop	{r4, pc}
 774              		.size	_ZNK3PID15CheckProtectionEv, .-_ZNK3PID15CheckProtectionEv
 775              		.section	.text._ZN3PID10ResetFaultEv,"ax",%progbits
 776              		.align	1
 777              		.p2align 2,,3
 778              		.global	_ZN3PID10ResetFaultEv
 779              		.syntax unified
 780              		.thumb
 781              		.thumb_func
 782              		.fpu fpv4-sp-d16
 783              		.type	_ZN3PID10ResetFaultEv, %function
 784              	_ZN3PID10ResetFaultEv:
 785              		@ args = 0, pretend = 0, frame = 0
 786              		@ frame_needed = 0, uses_anonymous_args = 0
 787              		@ link register save eliminated.
 788 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 789 0004 0021     		movs	r1, #0
 790 0006 80F88010 		strb	r1, [r0, #128]
 791 000a 02B1     		cbz	r2, .L155
 792 000c 7047     		bx	lr
 793              	.L155:
 794 000e 0122     		movs	r2, #1
 795 0010 80F87C20 		strb	r2, [r0, #124]
 796 0014 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 797              		.size	_ZN3PID10ResetFaultEv, .-_ZN3PID10ResetFaultEv
 798              		.section	.text._ZNK3PID13GetAveragePWMEv,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	_ZNK3PID13GetAveragePWMEv
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	_ZNK3PID13GetAveragePWMEv, %function
 807              	_ZNK3PID13GetAveragePWMEv:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810              		@ link register save eliminated.
 811 0000 0368     		ldr	r3, [r0]
 812 0002 90ED1B7A 		vldr.32	s14, [r0, #108]
 813 0006 D3F83838 		ldr	r3, [r3, #2104]
 814 000a 9FED050A 		vldr.32	s0, .L157
 815 000e 07EE903A 		vmov	s15, r3	@ int
 816 0012 F8EE677A 		vcvt.f32.u32	s15, s15
 817 0016 67EE877A 		vmul.f32	s15, s15, s14
 818 001a 87EE800A 		vdiv.f32	s0, s15, s0
 819 001e 7047     		bx	lr
 820              	.L158:
 821              		.align	2
 822              	.L157:
 823 0020 00409C45 		.word	1167867904
 824              		.size	_ZNK3PID13GetAveragePWMEv, .-_ZNK3PID13GetAveragePWMEv
 825              		.section	.text._ZNK3PID22GetExpectedHeatingRateEv,"ax",%progbits
 826              		.align	1
 827              		.p2align 2,,3
 828              		.global	_ZNK3PID22GetExpectedHeatingRateEv
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu fpv4-sp-d16
 833              		.type	_ZNK3PID22GetExpectedHeatingRateEv, %function
 834              	_ZNK3PID22GetExpectedHeatingRateEv:
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837              		@ link register save eliminated.
 838 0000 0368     		ldr	r3, [r0]
 839 0002 D0ED1B5A 		vldr.32	s11, [r0, #108]
 840 0006 D3F83838 		ldr	r3, [r3, #2104]
 841 000a 9FED166A 		vldr.32	s12, .L165
 842 000e D0ED0C6A 		vldr.32	s13, [r0, #48]
 843 0012 07EE903A 		vmov	s15, r3	@ int
 844 0016 F8EE677A 		vcvt.f32.u32	s15, s15
 845 001a B6EE087A 		vmov.f32	s14, #7.5e-1
 846 001e 67EEA57A 		vmul.f32	s15, s15, s11
 847 0022 66EE876A 		vmul.f32	s13, s13, s14
 848 0026 87EE867A 		vdiv.f32	s14, s15, s12
 849 002a B3EE046A 		vmov.f32	s12, #2.0e+1
 850 002e 67EE267A 		vmul.f32	s15, s14, s13
 851 0032 F4EEC67A 		vcmpe.f32	s15, s12
 852 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 853 003a 10DB     		blt	.L164
 854 003c 90ED0D7A 		vldr.32	s14, [r0, #52]
 855 0040 90ED066A 		vldr.32	s12, [r0, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 16


 856 0044 C7EE876A 		vdiv.f32	s13, s15, s14
 857 0048 B3EE097A 		vmov.f32	s14, #2.5e+1
 858 004c 37EE877A 		vadd.f32	s14, s15, s14
 859 0050 37EE467A 		vsub.f32	s14, s14, s12
 860 0054 27EE267A 		vmul.f32	s14, s14, s13
 861 0058 87EE270A 		vdiv.f32	s0, s14, s15
 862 005c 7047     		bx	lr
 863              	.L164:
 864 005e 9FED020A 		vldr.32	s0, .L165+4
 865 0062 7047     		bx	lr
 866              	.L166:
 867              		.align	2
 868              	.L165:
 869 0064 00409C45 		.word	1167867904
 870 0068 00000000 		.word	0
 871              		.size	_ZNK3PID22GetExpectedHeatingRateEv, .-_ZNK3PID22GetExpectedHeatingRateEv
 872              		.section	.text._ZN3PID13StartAutoTuneEffRK9StringRef,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	_ZN3PID13StartAutoTuneEffRK9StringRef
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu fpv4-sp-d16
 880              		.type	_ZN3PID13StartAutoTuneEffRK9StringRef, %function
 881              	_ZN3PID13StartAutoTuneEffRK9StringRef:
 882              		@ args = 0, pretend = 0, frame = 8
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884 0000 70B5     		push	{r4, r5, r6, lr}
 885 0002 2DED028B 		vpush.64	{d8}
 886 0006 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 887 000a 90F97A20 		ldrsb	r2, [r0, #122]
 888 000e 86B0     		sub	sp, sp, #24
 889 0010 0D46     		mov	r5, r1
 890 0012 2BB3     		cbz	r3, .L176
 891 0014 D0ED1A7A 		vldr.32	s15, [r0, #104]
 892 0018 F5EEC07A 		vcmpe.f32	s15, #0
 893 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 894 0020 0446     		mov	r4, r0
 895 0022 15DC     		bgt	.L170
 896 0024 0368     		ldr	r3, [r0]
 897 0026 D0ED1B6A 		vldr.32	s13, [r0, #108]
 898 002a D3F83838 		ldr	r3, [r3, #2104]
 899 002e 9FED366A 		vldr.32	s12, .L178
 900 0032 9FED367A 		vldr.32	s14, .L178+4
 901 0036 07EE903A 		vmov	s15, r3	@ int
 902 003a F8EE677A 		vcvt.f32.u32	s15, s15
 903 003e 67EEA67A 		vmul.f32	s15, s15, s13
 904 0042 C7EE866A 		vdiv.f32	s13, s15, s12
 905 0046 F4EEC76A 		vcmpe.f32	s13, s14
 906 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 907 004e 0FDD     		ble	.L174
 908              	.L170:
 909 0050 2846     		mov	r0, r5
 910 0052 2F49     		ldr	r1, .L178+8
 911 0054 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 912              	.L167:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 17


 913 0058 06B0     		add	sp, sp, #24
 914              		@ sp needed
 915 005a BDEC028B 		vldm	sp!, {d8}
 916 005e 70BD     		pop	{r4, r5, r6, pc}
 917              	.L176:
 918 0060 0846     		mov	r0, r1
 919 0062 2C49     		ldr	r1, .L178+12
 920 0064 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 921 0068 06B0     		add	sp, sp, #24
 922              		@ sp needed
 923 006a BDEC028B 		vldm	sp!, {d8}
 924 006e 70BD     		pop	{r4, r5, r6, pc}
 925              	.L174:
 926 0070 06AB     		add	r3, sp, #24
 927 0072 0021     		movs	r1, #0
 928 0074 03F8011D 		strb	r1, [r3, #-1]!
 929 0078 2748     		ldr	r0, .L178+16
 930 007a 1146     		mov	r1, r2
 931 007c 0069     		ldr	r0, [r0, #16]
 932 007e 1A46     		mov	r2, r3
 933 0080 B0EE408A 		vmov.f32	s16, s0
 934 0084 F0EE608A 		vmov.f32	s17, s1
 935 0088 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 936 008c 9DF81730 		ldrb	r3, [sp, #23]	@ zero_extendqisi2
 937 0090 84ED060A 		vstr.32	s0, [r4, #24]
 938 0094 63BB     		cbnz	r3, .L177
 939 0096 0621     		movs	r1, #6
 940 0098 204A     		ldr	r2, .L178+20
 941 009a 84F87F30 		strb	r3, [r4, #127]
 942 009e 84F87C10 		strb	r1, [r4, #124]
 943 00a2 4FF40070 		mov	r0, #512
 944 00a6 1360     		str	r3, [r2]
 945 00a8 FFF7FEFF 		bl	_Znaj
 946 00ac A369     		ldr	r3, [r4, #24]	@ float
 947 00ae 2268     		ldr	r2, [r4]
 948 00b0 0360     		str	r3, [r0]	@ float
 949 00b2 1B4B     		ldr	r3, .L178+24
 950 00b4 D2F83868 		ldr	r6, [r2, #2104]
 951 00b8 1860     		str	r0, [r3]
 952 00ba 1A4A     		ldr	r2, .L178+28
 953 00bc 1A4B     		ldr	r3, .L178+32
 954 00be 1B49     		ldr	r1, .L178+36
 955 00c0 C2ED008A 		vstr.32	s17, [r2]
 956 00c4 83ED008A 		vstr.32	s16, [r3]
 957 00c8 0E60     		str	r6, [r1]
 958 00ca 18EE900A 		vmov	r0, s17
 959 00ce FFF7FEFF 		bl	__aeabi_f2d
 960 00d2 CDE90201 		strd	r0, [sp, #8]
 961 00d6 18EE100A 		vmov	r0, s16
 962 00da FFF7FEFF 		bl	__aeabi_f2d
 963 00de 94F97A20 		ldrsb	r2, [r4, #122]
 964 00e2 CDE90001 		strd	r0, [sp]
 965 00e6 2846     		mov	r0, r5
 966 00e8 1149     		ldr	r1, .L178+40
 967 00ea FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 968 00ee B3E7     		b	.L167
 969              	.L177:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 18


 970 00f0 1846     		mov	r0, r3
 971 00f2 94F97A40 		ldrsb	r4, [r4, #122]
 972 00f6 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 973 00fa 2246     		mov	r2, r4
 974 00fc 0346     		mov	r3, r0
 975 00fe 0D49     		ldr	r1, .L178+44
 976 0100 2846     		mov	r0, r5
 977 0102 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 978 0106 A7E7     		b	.L167
 979              	.L179:
 980              		.align	2
 981              	.L178:
 982 0108 00409C45 		.word	1167867904
 983 010c 0AD7A33C 		.word	1017370378
 984 0110 3C000000 		.word	.LC7
 985 0114 00000000 		.word	.LC6
 986 0118 00000000 		.word	reprap
 987 011c 00000000 		.word	.LANCHOR1
 988 0120 00000000 		.word	.LANCHOR0
 989 0124 00000000 		.word	.LANCHOR3
 990 0128 00000000 		.word	.LANCHOR4
 991 012c 00000000 		.word	.LANCHOR2
 992 0130 B8000000 		.word	.LC9
 993 0134 78000000 		.word	.LC8
 994              		.size	_ZN3PID13StartAutoTuneEffRK9StringRef, .-_ZN3PID13StartAutoTuneEffRK9StringRef
 995              		.section	.text._ZN3PID17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 996              		.align	1
 997              		.p2align 2,,3
 998              		.global	_ZN3PID17GetAutoTuneStatusERK9StringRef
 999              		.syntax unified
 1000              		.thumb
 1001              		.thumb_func
 1002              		.fpu fpv4-sp-d16
 1003              		.type	_ZN3PID17GetAutoTuneStatusERK9StringRef, %function
 1004              	_ZN3PID17GetAutoTuneStatusERK9StringRef:
 1005              		@ args = 0, pretend = 0, frame = 0
 1006              		@ frame_needed = 0, uses_anonymous_args = 0
 1007 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 1008 0004 90F97A20 		ldrsb	r2, [r0, #122]
 1009 0008 052B     		cmp	r3, #5
 1010 000a 0AD8     		bhi	.L188
 1011 000c 90F87F30 		ldrb	r3, [r0, #127]	@ zero_extendqisi2
 1012 0010 0846     		mov	r0, r1
 1013 0012 13B9     		cbnz	r3, .L189
 1014 0014 0949     		ldr	r1, .L190
 1015 0016 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1016              	.L189:
 1017 001a 1346     		mov	r3, r2
 1018 001c 0849     		ldr	r1, .L190+4
 1019 001e FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1020              	.L188:
 1021 0022 00B5     		push	{lr}
 1022 0024 83B0     		sub	sp, sp, #12
 1023 0026 0846     		mov	r0, r1
 1024 0028 0421     		movs	r1, #4
 1025 002a 0091     		str	r1, [sp]
 1026 002c 053B     		subs	r3, r3, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 19


 1027 002e 0549     		ldr	r1, .L190+8
 1028 0030 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1029 0034 03B0     		add	sp, sp, #12
 1030              		@ sp needed
 1031 0036 5DF804FB 		ldr	pc, [sp], #4
 1032              	.L191:
 1033 003a 00BF     		.align	2
 1034              	.L190:
 1035 003c 64000000 		.word	.LC12
 1036 0040 2C000000 		.word	.LC11
 1037 0044 00000000 		.word	.LC10
 1038              		.size	_ZN3PID17GetAutoTuneStatusERK9StringRef, .-_ZN3PID17GetAutoTuneStatusERK9StringRef
 1039              		.section	.text._ZN3PID14ReadingsStableEjf,"ax",%progbits
 1040              		.align	1
 1041              		.p2align 2,,3
 1042              		.global	_ZN3PID14ReadingsStableEjf
 1043              		.syntax unified
 1044              		.thumb
 1045              		.thumb_func
 1046              		.fpu fpv4-sp-d16
 1047              		.type	_ZN3PID14ReadingsStableEjf, %function
 1048              	_ZN3PID14ReadingsStableEjf:
 1049              		@ args = 0, pretend = 0, frame = 0
 1050              		@ frame_needed = 0, uses_anonymous_args = 0
 1051              		@ link register save eliminated.
 1052 0000 1C4B     		ldr	r3, .L210
 1053 0002 1A68     		ldr	r2, [r3]
 1054 0004 8AB3     		cbz	r2, .L201
 1055 0006 1C4B     		ldr	r3, .L210+4
 1056 0008 1968     		ldr	r1, [r3]
 1057 000a 8142     		cmp	r1, r0
 1058 000c 2DD3     		bcc	.L201
 1059 000e 081A     		subs	r0, r1, r0
 1060 0010 8300     		lsls	r3, r0, #2
 1061 0012 0130     		adds	r0, r0, #1
 1062 0014 10B4     		push	{r4}
 1063 0016 8142     		cmp	r1, r0
 1064 0018 02EB0304 		add	r4, r2, r3
 1065 001c D4ED006A 		vldr.32	s13, [r4]
 1066 0020 25D9     		bls	.L202
 1067 0022 0433     		adds	r3, r3, #4
 1068 0024 1344     		add	r3, r3, r2
 1069 0026 B0EE667A 		vmov.f32	s14, s13
 1070 002a 02EB8102 		add	r2, r2, r1, lsl #2
 1071              	.L199:
 1072 002e F3EC017A 		vldmia.32	r3!, {s15}
 1073 0032 F4EE667A 		vcmp.f32	s15, s13
 1074 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1075 003a F4EE477A 		vcmp.f32	s15, s14
 1076 003e 48BF     		it	mi
 1077 0040 F0EE676A 		vmovmi.f32	s13, s15
 1078 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1079 0048 C8BF     		it	gt
 1080 004a B0EE677A 		vmovgt.f32	s14, s15
 1081 004e 9342     		cmp	r3, r2
 1082 0050 EDD1     		bne	.L199
 1083              	.L194:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 20


 1084 0052 37EE667A 		vsub.f32	s14, s14, s13
 1085 0056 5DF8044B 		ldr	r4, [sp], #4
 1086 005a B4EEC07A 		vcmpe.f32	s14, s0
 1087 005e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1088 0062 94BF     		ite	ls
 1089 0064 0120     		movls	r0, #1
 1090 0066 0020     		movhi	r0, #0
 1091 0068 7047     		bx	lr
 1092              	.L201:
 1093 006a 0020     		movs	r0, #0
 1094 006c 7047     		bx	lr
 1095              	.L202:
 1096 006e B0EE667A 		vmov.f32	s14, s13
 1097 0072 EEE7     		b	.L194
 1098              	.L211:
 1099              		.align	2
 1100              	.L210:
 1101 0074 00000000 		.word	.LANCHOR0
 1102 0078 00000000 		.word	.LANCHOR1
 1103              		.size	_ZN3PID14ReadingsStableEjf, .-_ZN3PID14ReadingsStableEjf
 1104              		.section	.text._ZN3PID12IdentifyPeakEj,"ax",%progbits
 1105              		.align	1
 1106              		.p2align 2,,3
 1107              		.global	_ZN3PID12IdentifyPeakEj
 1108              		.syntax unified
 1109              		.thumb
 1110              		.thumb_func
 1111              		.fpu fpv4-sp-d16
 1112              		.type	_ZN3PID12IdentifyPeakEj, %function
 1113              	_ZN3PID12IdentifyPeakEj:
 1114              		@ args = 0, pretend = 0, frame = 0
 1115              		@ frame_needed = 0, uses_anonymous_args = 0
 1116              		@ link register save eliminated.
 1117 0000 1F4B     		ldr	r3, .L230
 1118 0002 F0B4     		push	{r4, r5, r6, r7}
 1119 0004 1E68     		ldr	r6, [r3]
 1120 0006 B042     		cmp	r0, r6
 1121 0008 37D8     		bhi	.L221
 1122 000a 1E4B     		ldr	r3, .L230+4
 1123 000c DFED1E6A 		vldr.32	s13, .L230+8
 1124 0010 1C68     		ldr	r4, [r3]
 1125 0012 4FF0FF35 		mov	r5, #-1
 1126 0016 2F46     		mov	r7, r5
 1127 0018 4FEA800C 		lsl	ip, r0, #2
 1128 001c 0021     		movs	r1, #0
 1129              	.L220:
 1130 001e DFED1B7A 		vldr.32	s15, .L230+12
 1131 0022 40B1     		cbz	r0, .L214
 1132 0024 04EB0C02 		add	r2, r4, ip
 1133 0028 2346     		mov	r3, r4
 1134              	.L215:
 1135 002a B3EC017A 		vldmia.32	r3!, {s14}
 1136 002e 9342     		cmp	r3, r2
 1137 0030 77EE877A 		vadd.f32	s15, s15, s14
 1138 0034 F9D1     		bne	.L215
 1139              	.L214:
 1140 0036 F4EEE76A 		vcmpe.f32	s13, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 21


 1141 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1142 003e 11D5     		bpl	.L227
 1143 0040 0135     		adds	r5, r5, #1
 1144 0042 8D42     		cmp	r5, r1
 1145 0044 0F46     		mov	r7, r1
 1146 0046 14D1     		bne	.L229
 1147 0048 F0EE676A 		vmov.f32	s13, s15
 1148 004c 0D46     		mov	r5, r1
 1149              	.L218:
 1150 004e 0131     		adds	r1, r1, #1
 1151 0050 4318     		adds	r3, r0, r1
 1152 0052 9E42     		cmp	r6, r3
 1153 0054 04F10404 		add	r4, r4, #4
 1154 0058 E1D2     		bcs	.L220
 1155              	.L213:
 1156 005a 0138     		subs	r0, r0, #1
 1157 005c 07EB5000 		add	r0, r7, r0, lsr #1
 1158 0060 F0BC     		pop	{r4, r5, r6, r7}
 1159 0062 7047     		bx	lr
 1160              	.L227:
 1161 0064 F4EE676A 		vcmp.f32	s13, s15
 1162 0068 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1163 006c 08BF     		it	eq
 1164 006e 0D46     		moveq	r5, r1
 1165 0070 EDE7     		b	.L218
 1166              	.L229:
 1167 0072 4FF0FF30 		mov	r0, #-1
 1168 0076 F0BC     		pop	{r4, r5, r6, r7}
 1169 0078 7047     		bx	lr
 1170              	.L221:
 1171 007a 4FF0FF37 		mov	r7, #-1
 1172 007e ECE7     		b	.L213
 1173              	.L231:
 1174              		.align	2
 1175              	.L230:
 1176 0080 00000000 		.word	.LANCHOR1
 1177 0084 00000000 		.word	.LANCHOR0
 1178 0088 00C079C4 		.word	-998653952
 1179 008c 00000000 		.word	0
 1180              		.size	_ZN3PID12IdentifyPeakEj, .-_ZN3PID12IdentifyPeakEj
 1181              		.section	.text._ZN3PID16GetPeakTempIndexEv,"ax",%progbits
 1182              		.align	1
 1183              		.p2align 2,,3
 1184              		.global	_ZN3PID16GetPeakTempIndexEv
 1185              		.syntax unified
 1186              		.thumb
 1187              		.thumb_func
 1188              		.fpu fpv4-sp-d16
 1189              		.type	_ZN3PID16GetPeakTempIndexEv, %function
 1190              	_ZN3PID16GetPeakTempIndexEv:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193 0000 124B     		ldr	r3, .L240
 1194 0002 10B5     		push	{r4, lr}
 1195 0004 1C68     		ldr	r4, [r3]
 1196 0006 0E2C     		cmp	r4, #14
 1197 0008 1CD9     		bls	.L237
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 22


 1198 000a 0120     		movs	r0, #1
 1199 000c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1200 0010 0028     		cmp	r0, #0
 1201 0012 06DB     		blt	.L239
 1202              	.L234:
 1203 0014 C31C     		adds	r3, r0, #3
 1204 0016 9C42     		cmp	r4, r3
 1205 0018 14D9     		bls	.L237
 1206 001a 0128     		cmp	r0, #1
 1207 001c B8BF     		it	lt
 1208 001e 0120     		movlt	r0, #1
 1209 0020 10BD     		pop	{r4, pc}
 1210              	.L239:
 1211 0022 0320     		movs	r0, #3
 1212 0024 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1213 0028 0028     		cmp	r0, #0
 1214 002a F3DA     		bge	.L234
 1215 002c 0520     		movs	r0, #5
 1216 002e FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1217 0032 0028     		cmp	r0, #0
 1218 0034 EEDA     		bge	.L234
 1219 0036 0720     		movs	r0, #7
 1220 0038 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1221 003c 0028     		cmp	r0, #0
 1222 003e E9DA     		bge	.L234
 1223 0040 0020     		movs	r0, #0
 1224 0042 10BD     		pop	{r4, pc}
 1225              	.L237:
 1226 0044 4FF0FF30 		mov	r0, #-1
 1227 0048 10BD     		pop	{r4, pc}
 1228              	.L241:
 1229 004a 00BF     		.align	2
 1230              	.L240:
 1231 004c 00000000 		.word	.LANCHOR1
 1232              		.size	_ZN3PID16GetPeakTempIndexEv, .-_ZN3PID16GetPeakTempIndexEv
 1233              		.section	.text._ZN3PID13DisplayBufferEPKc,"ax",%progbits
 1234              		.align	1
 1235              		.p2align 2,,3
 1236              		.global	_ZN3PID13DisplayBufferEPKc
 1237              		.syntax unified
 1238              		.thumb
 1239              		.thumb_func
 1240              		.fpu fpv4-sp-d16
 1241              		.type	_ZN3PID13DisplayBufferEPKc, %function
 1242              	_ZN3PID13DisplayBufferEPKc:
 1243              		@ args = 0, pretend = 0, frame = 8
 1244              		@ frame_needed = 0, uses_anonymous_args = 0
 1245 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1246 0004 84B0     		sub	sp, sp, #16
 1247 0006 8046     		mov	r8, r0
 1248 0008 03A8     		add	r0, sp, #12
 1249 000a 0C46     		mov	r4, r1
 1250 000c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1251 0010 10B9     		cbnz	r0, .L254
 1252 0012 04B0     		add	sp, sp, #16
 1253              		@ sp needed
 1254 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 23


 1255              	.L254:
 1256 0018 1B4B     		ldr	r3, .L255
 1257 001a 9FED1C7A 		vldr.32	s14, .L255+4
 1258 001e D3ED007A 		vldr.32	s15, [r3]	@ int
 1259 0022 039E     		ldr	r6, [sp, #12]
 1260 0024 1A4D     		ldr	r5, .L255+8
 1261 0026 F8EE677A 		vcvt.f32.u32	s15, s15
 1262 002a 67EE877A 		vmul.f32	s15, s15, s14
 1263 002e 17EE900A 		vmov	r0, s15
 1264 0032 FFF7FEFF 		bl	__aeabi_f2d
 1265 0036 2246     		mov	r2, r4
 1266 0038 CDE90001 		strd	r0, [sp]
 1267 003c 3046     		mov	r0, r6
 1268 003e 1549     		ldr	r1, .L255+12
 1269 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1270 0044 2B68     		ldr	r3, [r5]
 1271 0046 93B1     		cbz	r3, .L244
 1272 0048 134F     		ldr	r7, .L255+16
 1273 004a 144E     		ldr	r6, .L255+20
 1274 004c 0024     		movs	r4, #0
 1275              	.L245:
 1276 004e 3B68     		ldr	r3, [r7]
 1277 0050 03EB8403 		add	r3, r3, r4, lsl #2
 1278 0054 0134     		adds	r4, r4, #1
 1279 0056 1868     		ldr	r0, [r3]	@ float
 1280 0058 FFF7FEFF 		bl	__aeabi_f2d
 1281 005c 0B46     		mov	r3, r1
 1282 005e 0246     		mov	r2, r0
 1283 0060 3146     		mov	r1, r6
 1284 0062 0398     		ldr	r0, [sp, #12]
 1285 0064 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1286 0068 2B68     		ldr	r3, [r5]
 1287 006a A342     		cmp	r3, r4
 1288 006c EFD8     		bhi	.L245
 1289              	.L244:
 1290 006e 0C49     		ldr	r1, .L255+24
 1291 0070 0398     		ldr	r0, [sp, #12]
 1292 0072 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1293 0076 D8F80000 		ldr	r0, [r8]
 1294 007a 039A     		ldr	r2, [sp, #12]
 1295 007c 0121     		movs	r1, #1
 1296 007e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 1297 0082 04B0     		add	sp, sp, #16
 1298              		@ sp needed
 1299 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1300              	.L256:
 1301              		.align	2
 1302              	.L255:
 1303 0088 00000000 		.word	.LANCHOR2
 1304 008c 6F12833A 		.word	981668463
 1305 0090 00000000 		.word	.LANCHOR1
 1306 0094 00000000 		.word	.LC13
 1307 0098 00000000 		.word	.LANCHOR0
 1308 009c 20000000 		.word	.LC14
 1309 00a0 28000000 		.word	.LC15
 1310              		.size	_ZN3PID13DisplayBufferEPKc, .-_ZN3PID13DisplayBufferEPKc
 1311              		.section	.text._ZN3PID14CalculateModelEv,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 24


 1312              		.align	1
 1313              		.p2align 2,,3
 1314              		.global	_ZN3PID14CalculateModelEv
 1315              		.syntax unified
 1316              		.thumb
 1317              		.thumb_func
 1318              		.fpu fpv4-sp-d16
 1319              		.type	_ZN3PID14CalculateModelEv, %function
 1320              	_ZN3PID14CalculateModelEv:
 1321              		@ args = 0, pretend = 0, frame = 0
 1322              		@ frame_needed = 0, uses_anonymous_args = 0
 1323 0000 70B5     		push	{r4, r5, r6, lr}
 1324 0002 2DED048B 		vpush.64	{d8, d9}
 1325 0006 5D4B     		ldr	r3, .L267
 1326 0008 D3F80831 		ldr	r3, [r3, #264]
 1327 000c 9B06     		lsls	r3, r3, #26
 1328 000e 86B0     		sub	sp, sp, #24
 1329 0010 0446     		mov	r4, r0
 1330 0012 00F1AF80 		bmi	.L265
 1331              	.L258:
 1332 0016 5A4B     		ldr	r3, .L267+4
 1333 0018 5A4A     		ldr	r2, .L267+8
 1334 001a 1968     		ldr	r1, [r3]
 1335 001c 1268     		ldr	r2, [r2]
 1336 001e 5A4D     		ldr	r5, .L267+12
 1337 0020 91ED000A 		vldr.32	s0, [r1]
 1338 0024 594B     		ldr	r3, .L267+16
 1339 0026 95ED007A 		vldr.32	s14, [r5]
 1340 002a 1B68     		ldr	r3, [r3]
 1341 002c 584E     		ldr	r6, .L267+20
 1342 002e 01EB8201 		add	r1, r1, r2, lsl #2
 1343 0032 51ED017A 		vldr.32	s15, [r1, #-4]
 1344 0036 30EE470A 		vsub.f32	s0, s0, s14
 1345 003a 77EEC77A 		vsub.f32	s15, s15, s14
 1346 003e 013A     		subs	r2, r2, #1
 1347 0040 03FB02F3 		mul	r3, r3, r2
 1348 0044 80EE270A 		vdiv.f32	s0, s0, s15
 1349 0048 07EE903A 		vmov	s15, r3	@ int
 1350 004c B8EE678A 		vcvt.f32.u32	s16, s15
 1351 0050 FFF7FEFF 		bl	logf
 1352 0054 DFED4F6A 		vldr.32	s13, .L267+24
 1353 0058 4F4B     		ldr	r3, .L267+28
 1354 005a 504A     		ldr	r2, .L267+32
 1355 005c 1B68     		ldr	r3, [r3]
 1356 005e 1268     		ldr	r2, [r2]
 1357 0060 9FED4F7A 		vldr.32	s14, .L267+36
 1358 0064 95ED006A 		vldr.32	s12, [r5]
 1359 0068 D6ED007A 		vldr.32	s15, [r6]
 1360 006c 60EE266A 		vmul.f32	s13, s0, s13
 1361 0070 9B1A     		subs	r3, r3, r2
 1362 0072 C8EE268A 		vdiv.f32	s17, s16, s13
 1363 0076 00EE103A 		vmov	s0, r3	@ int
 1364 007a B8EE400A 		vcvt.f32.u32	s0, s0
 1365 007e 37EEC68A 		vsub.f32	s16, s15, s12
 1366 0082 27EE400A 		vnmul.f32	s0, s14, s0
 1367 0086 80EE280A 		vdiv.f32	s0, s0, s17
 1368 008a FFF7FEFF 		bl	expf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 25


 1369 008e 454B     		ldr	r3, .L267+40
 1370 0090 F7EE007A 		vmov.f32	s15, #1.0e+0
 1371 0094 37EEC07A 		vsub.f32	s14, s15, s0
 1372 0098 D5ED007A 		vldr.32	s15, [r5]
 1373 009c D3ED006A 		vldr.32	s13, [r3]
 1374 00a0 96ED000A 		vldr.32	s0, [r6]
 1375 00a4 88EE079A 		vdiv.f32	s18, s16, s14
 1376 00a8 9FED3F8A 		vldr.32	s16, .L267+44
 1377 00ac 79EE277A 		vadd.f32	s15, s18, s15
 1378 00b0 37EEC00A 		vsub.f32	s0, s15, s0
 1379 00b4 77EEE67A 		vsub.f32	s15, s15, s13
 1380 00b8 80EE270A 		vdiv.f32	s0, s0, s15
 1381 00bc FFF7FEFF 		bl	logf
 1382 00c0 3A4B     		ldr	r3, .L267+48
 1383 00c2 3B48     		ldr	r0, .L267+52
 1384 00c4 3B49     		ldr	r1, .L267+56
 1385 00c6 0022     		movs	r2, #0
 1386 00c8 93ED002A 		vldr.32	s4, [r3]	@ int
 1387 00cc D0ED007A 		vldr.32	s15, [r0]
 1388 00d0 D1ED001A 		vldr.32	s3, [r1]
 1389 00d4 B4F84430 		ldrh	r3, [r4, #68]
 1390 00d8 20EE280A 		vmul.f32	s0, s0, s17
 1391 00dc B8EE422A 		vcvt.f32.u32	s4, s4
 1392 00e0 20EE088A 		vmul.f32	s16, s0, s16
 1393 00e4 F0EE680A 		vmov.f32	s1, s17
 1394 00e8 B0EE481A 		vmov.f32	s2, s16
 1395 00ec B0EE490A 		vmov.f32	s0, s18
 1396 00f0 87EE822A 		vdiv.f32	s4, s15, s4
 1397 00f4 0121     		movs	r1, #1
 1398 00f6 2046     		mov	r0, r4
 1399 00f8 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 1400 00fc 84F87F00 		strb	r0, [r4, #127]
 1401 0100 F0B9     		cbnz	r0, .L266
 1402 0102 18EE100A 		vmov	r0, s16
 1403 0106 FFF7FEFF 		bl	__aeabi_f2d
 1404 010a CDE90401 		strd	r0, [sp, #16]
 1405 010e 18EE900A 		vmov	r0, s17
 1406 0112 FFF7FEFF 		bl	__aeabi_f2d
 1407 0116 CDE90201 		strd	r0, [sp, #8]
 1408 011a 19EE100A 		vmov	r0, s18
 1409 011e FFF7FEFF 		bl	__aeabi_f2d
 1410 0122 94F97A30 		ldrsb	r3, [r4, #122]
 1411 0126 2468     		ldr	r4, [r4]
 1412 0128 234A     		ldr	r2, .L267+60
 1413 012a CDE90001 		strd	r0, [sp]
 1414 012e 2046     		mov	r0, r4
 1415 0130 40F2B521 		movw	r1, #693
 1416 0134 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1417 0138 06B0     		add	sp, sp, #24
 1418              		@ sp needed
 1419 013a BDEC048B 		vldm	sp!, {d8-d9}
 1420 013e 70BD     		pop	{r4, r5, r6, pc}
 1421              	.L266:
 1422 0140 2568     		ldr	r5, [r4]
 1423 0142 94F97A60 		ldrsb	r6, [r4, #122]
 1424 0146 FFF7FEFF 		bl	millis
 1425 014a 1C4B     		ldr	r3, .L267+64
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 26


 1426 014c 94F97A20 		ldrsb	r2, [r4, #122]
 1427 0150 1968     		ldr	r1, [r3]
 1428 0152 1B4B     		ldr	r3, .L267+68
 1429 0154 0192     		str	r2, [sp, #4]
 1430 0156 421A     		subs	r2, r0, r1
 1431 0158 A3FB0232 		umull	r3, r2, r3, r2
 1432 015c 9209     		lsrs	r2, r2, #6
 1433 015e 0092     		str	r2, [sp]
 1434 0160 3346     		mov	r3, r6
 1435 0162 2846     		mov	r0, r5
 1436 0164 174A     		ldr	r2, .L267+72
 1437 0166 B521     		movs	r1, #181
 1438 0168 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1439 016c 06B0     		add	sp, sp, #24
 1440              		@ sp needed
 1441 016e BDEC048B 		vldm	sp!, {d8-d9}
 1442 0172 70BD     		pop	{r4, r5, r6, pc}
 1443              	.L265:
 1444 0174 1449     		ldr	r1, .L267+76
 1445 0176 FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1446 017a 4CE7     		b	.L258
 1447              	.L268:
 1448              		.align	2
 1449              	.L267:
 1450 017c 00000000 		.word	reprap
 1451 0180 00000000 		.word	.LANCHOR0
 1452 0184 00000000 		.word	.LANCHOR1
 1453 0188 00000000 		.word	.LANCHOR5
 1454 018c 00000000 		.word	.LANCHOR2
 1455 0190 00000000 		.word	.LANCHOR6
 1456 0194 00007A44 		.word	1148846080
 1457 0198 00000000 		.word	.LANCHOR7
 1458 019c 00000000 		.word	.LANCHOR8
 1459 01a0 6F12833A 		.word	981668463
 1460 01a4 00000000 		.word	.LANCHOR9
 1461 01a8 6666A63F 		.word	1067869798
 1462 01ac 00000000 		.word	.LANCHOR11
 1463 01b0 00000000 		.word	.LANCHOR10
 1464 01b4 00000000 		.word	.LANCHOR3
 1465 01b8 8C000000 		.word	.LC18
 1466 01bc 00000000 		.word	.LANCHOR12
 1467 01c0 D34D6210 		.word	274877907
 1468 01c4 10000000 		.word	.LC17
 1469 01c8 00000000 		.word	.LC16
 1470              		.size	_ZN3PID14CalculateModelEv, .-_ZN3PID14CalculateModelEv
 1471              		.section	.text._ZN3PID12DoTuningStepEv,"ax",%progbits
 1472              		.align	1
 1473              		.p2align 2,,3
 1474              		.global	_ZN3PID12DoTuningStepEv
 1475              		.syntax unified
 1476              		.thumb
 1477              		.thumb_func
 1478              		.fpu fpv4-sp-d16
 1479              		.type	_ZN3PID12DoTuningStepEv, %function
 1480              	_ZN3PID12DoTuningStepEv:
 1481              		@ args = 0, pretend = 0, frame = 0
 1482              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 27


 1483 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1484 0004 BD4D     		ldr	r5, .L313
 1485 0006 2B68     		ldr	r3, [r5]
 1486 0008 83B0     		sub	sp, sp, #12
 1487 000a 0446     		mov	r4, r0
 1488 000c 03BB     		cbnz	r3, .L270
 1489 000e FFF7FEFF 		bl	millis
 1490 0012 94F87CC0 		ldrb	ip, [r4, #124]	@ zero_extendqisi2
 1491 0016 BA4E     		ldr	r6, .L313+4
 1492 0018 BA4F     		ldr	r7, .L313+8
 1493 001a 3060     		str	r0, [r6]
 1494 001c BCF1060F 		cmp	ip, #6
 1495 0020 09BF     		itett	eq
 1496 0022 B94A     		ldreq	r2, .L313+12
 1497 0024 2B68     		ldrne	r3, [r5]
 1498 0026 2B68     		ldreq	r3, [r5]
 1499 0028 1060     		streq	r0, [r2]
 1500 002a 802B     		cmp	r3, #128
 1501 002c D7F80080 		ldr	r8, [r7]
 1502 0030 21D0     		beq	.L275
 1503              	.L309:
 1504 0032 9900     		lsls	r1, r3, #2
 1505 0034 0133     		adds	r3, r3, #1
 1506              	.L276:
 1507 0036 4144     		add	r1, r1, r8
 1508 0038 A069     		ldr	r0, [r4, #24]	@ float
 1509 003a 0860     		str	r0, [r1]	@ float
 1510 003c ACF10602 		sub	r2, ip, #6
 1511 0040 2B60     		str	r3, [r5]
 1512 0042 032A     		cmp	r2, #3
 1513 0044 00F28C80 		bhi	.L278
 1514 0048 DFE802F0 		tbb	[pc, r2]
 1515              	.L280:
 1516 004c A8       		.byte	(.L279-.L280)/2
 1517 004d 53       		.byte	(.L281-.L280)/2
 1518 004e C3       		.byte	(.L282-.L280)/2
 1519 004f 90       		.byte	(.L283-.L280)/2
 1520              		.p2align 1
 1521              	.L270:
 1522 0050 FFF7FEFF 		bl	millis
 1523 0054 AA4E     		ldr	r6, .L313+4
 1524 0056 AD4B     		ldr	r3, .L313+16
 1525 0058 3168     		ldr	r1, [r6]
 1526 005a 1A68     		ldr	r2, [r3]
 1527 005c 2B68     		ldr	r3, [r5]
 1528 005e 401A     		subs	r0, r0, r1
 1529 0060 02FB03F2 		mul	r2, r2, r3
 1530 0064 9042     		cmp	r0, r2
 1531 0066 41D3     		bcc	.L269
 1532 0068 A64F     		ldr	r7, .L313+8
 1533 006a 94F87CC0 		ldrb	ip, [r4, #124]	@ zero_extendqisi2
 1534 006e D7F80080 		ldr	r8, [r7]
 1535 0072 802B     		cmp	r3, #128
 1536 0074 DDD1     		bne	.L309
 1537              	.L275:
 1538 0076 4246     		mov	r2, r8
 1539 0078 08F10403 		add	r3, r8, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 28


 1540 007c 08F58070 		add	r0, r8, #256
 1541              	.L277:
 1542 0080 52F8081F 		ldr	r1, [r2, #8]!	@ float
 1543 0084 43F8041B 		str	r1, [r3], #4	@ float
 1544 0088 9842     		cmp	r0, r3
 1545 008a F9D1     		bne	.L277
 1546 008c 9F4A     		ldr	r2, .L313+16
 1547 008e 1368     		ldr	r3, [r2]
 1548 0090 5B00     		lsls	r3, r3, #1
 1549 0092 1360     		str	r3, [r2]
 1550 0094 4FF48071 		mov	r1, #256
 1551 0098 4123     		movs	r3, #65
 1552 009a CCE7     		b	.L276
 1553              	.L292:
 1554 009c 9B4F     		ldr	r7, .L313+16
 1555 009e 9C4A     		ldr	r2, .L313+20
 1556 00a0 3B68     		ldr	r3, [r7]
 1557 00a2 DFF8C892 		ldr	r9, .L313+112
 1558 00a6 D4F818C0 		ldr	ip, [r4, #24]	@ float
 1559 00aa 00FB03F3 		mul	r3, r0, r3
 1560 00ae 08EB8000 		add	r0, r8, r0, lsl #2
 1561 00b2 0168     		ldr	r1, [r0]	@ float
 1562 00b4 1360     		str	r3, [r2]
 1563 00b6 0123     		movs	r3, #1
 1564 00b8 2B60     		str	r3, [r5]
 1565 00ba C9F80010 		str	r1, [r9]	@ float
 1566 00be C8F800C0 		str	ip, [r8]	@ float
 1567 00c2 FFF7FEFF 		bl	millis
 1568 00c6 2568     		ldr	r5, [r4]
 1569 00c8 3060     		str	r0, [r6]
 1570 00ca D5F83838 		ldr	r3, [r5, #2104]
 1571 00ce 3B60     		str	r3, [r7]
 1572 00d0 0923     		movs	r3, #9
 1573 00d2 D9F80000 		ldr	r0, [r9]	@ float
 1574 00d6 84F87C30 		strb	r3, [r4, #124]
 1575 00da FFF7FEFF 		bl	__aeabi_f2d
 1576 00de 8D4A     		ldr	r2, .L313+24
 1577 00e0 CDE90001 		strd	r0, [sp]
 1578 00e4 2846     		mov	r0, r5
 1579 00e6 3521     		movs	r1, #53
 1580 00e8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1581              	.L269:
 1582 00ec 03B0     		add	sp, sp, #12
 1583              		@ sp needed
 1584 00ee BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1585              	.L281:
 1586 00f2 894B     		ldr	r3, .L313+28
 1587 00f4 94F97A10 		ldrsb	r1, [r4, #122]
 1588 00f8 1869     		ldr	r0, [r3, #16]
 1589 00fa FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 1590 00fe 8146     		mov	r9, r0
 1591 0100 FFF7FEFF 		bl	millis
 1592 0104 3368     		ldr	r3, [r6]
 1593 0106 A0EB0308 		sub	r8, r0, r3
 1594 010a B9F1000F 		cmp	r9, #0
 1595 010e 76D0     		beq	.L310
 1596 0110 D4ED0E7A 		vldr.32	s15, [r4, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 29


 1597 0114 DFED816A 		vldr.32	s13, .L313+32
 1598 0118 9FED817A 		vldr.32	s14, .L313+36
 1599 011c 2068     		ldr	r0, [r4]
 1600 011e 77EEA67A 		vadd.f32	s15, s15, s13
 1601 0122 67EE877A 		vmul.f32	s15, s15, s14
 1602 0126 FCEEE77A 		vcvt.u32.f32	s15, s15
 1603 012a 17EE903A 		vmov	r3, s15	@ int
 1604 012e 9845     		cmp	r8, r3
 1605 0130 0ED9     		bls	.L307
 1606 0132 7C4B     		ldr	r3, .L313+40
 1607 0134 D4ED067A 		vldr.32	s15, [r4, #24]
 1608 0138 93ED007A 		vldr.32	s14, [r3]
 1609 013c 77EEC77A 		vsub.f32	s15, s15, s14
 1610 0140 B0EE087A 		vmov.f32	s14, #3.0e+0
 1611 0144 F4EEC77A 		vcmpe.f32	s15, s14
 1612 0148 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1613 014c 00F12E81 		bmi	.L297
 1614              	.L307:
 1615 0150 754B     		ldr	r3, .L313+44
 1616              	.L295:
 1617 0152 9845     		cmp	r8, r3
 1618 0154 C0F08B80 		bcc	.L288
 1619 0158 744A     		ldr	r2, .L313+48
 1620 015a 3521     		movs	r1, #53
 1621 015c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1622              	.L278:
 1623 0160 2046     		mov	r0, r4
 1624 0162 03B0     		add	sp, sp, #12
 1625              		@ sp needed
 1626 0164 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1627 0168 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 1628              	.L283:
 1629 016c 6D4B     		ldr	r3, .L313+40
 1630 016e DFED705A 		vldr.32	s11, .L313+52
 1631 0172 D3ED007A 		vldr.32	s15, [r3]
 1632 0176 98ED006A 		vldr.32	s12, [r8]
 1633 017a DFED6E6A 		vldr.32	s13, .L313+56
 1634 017e 94ED067A 		vldr.32	s14, [r4, #24]
 1635 0182 67EEA57A 		vmul.f32	s15, s15, s11
 1636 0186 E6EE267A 		vfma.f32	s15, s12, s13
 1637 018a B4EEE77A 		vcmpe.f32	s14, s15
 1638 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1639 0192 ABDC     		bgt	.L269
 1640 0194 2046     		mov	r0, r4
 1641 0196 FFF7FEFF 		bl	_ZN3PID14CalculateModelEv
 1642 019a E1E7     		b	.L278
 1643              	.L279:
 1644 019c 2368     		ldr	r3, [r4]
 1645 019e 41F27070 		movw	r0, #6000
 1646 01a2 D3F83838 		ldr	r3, [r3, #2104]
 1647 01a6 B0FBF3F0 		udiv	r0, r0, r3
 1648 01aa B0EE000A 		vmov.f32	s0, #2.0e+0
 1649 01ae FFF7FEFF 		bl	_ZN3PID14ReadingsStableEjf
 1650 01b2 0028     		cmp	r0, #0
 1651 01b4 37D1     		bne	.L311
 1652 01b6 FFF7FEFF 		bl	millis
 1653 01ba 3368     		ldr	r3, [r6]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 30


 1654 01bc 44F61F62 		movw	r2, #19999
 1655 01c0 C31A     		subs	r3, r0, r3
 1656 01c2 9342     		cmp	r3, r2
 1657 01c4 92D9     		bls	.L269
 1658 01c6 5C4A     		ldr	r2, .L313+60
 1659 01c8 2068     		ldr	r0, [r4]
 1660 01ca 3521     		movs	r1, #53
 1661 01cc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1662 01d0 C6E7     		b	.L278
 1663              	.L282:
 1664 01d2 FFF7FEFF 		bl	_ZN3PID16GetPeakTempIndexEv
 1665 01d6 0028     		cmp	r0, #0
 1666 01d8 C0F2CA80 		blt	.L312
 1667 01dc 7FF45EAF 		bne	.L292
 1668 01e0 4D4B     		ldr	r3, .L313+28
 1669 01e2 D3F80831 		ldr	r3, [r3, #264]
 1670 01e6 9B06     		lsls	r3, r3, #26
 1671 01e8 03D5     		bpl	.L293
 1672 01ea 5449     		ldr	r1, .L313+64
 1673 01ec 2046     		mov	r0, r4
 1674 01ee FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1675              	.L293:
 1676 01f2 534A     		ldr	r2, .L313+68
 1677 01f4 2068     		ldr	r0, [r4]
 1678 01f6 3521     		movs	r1, #53
 1679 01f8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1680 01fc B0E7     		b	.L278
 1681              	.L310:
 1682 01fe D4ED0E7A 		vldr.32	s15, [r4, #56]
 1683 0202 9FED477A 		vldr.32	s14, .L313+36
 1684 0206 2068     		ldr	r0, [r4]
 1685 0208 F3EE0E6A 		vmov.f32	s13, #3.0e+1
 1686 020c 77EEA67A 		vadd.f32	s15, s15, s13
 1687 0210 67EE877A 		vmul.f32	s15, s15, s14
 1688 0214 FCEEE77A 		vcvt.u32.f32	s15, s15
 1689 0218 17EE903A 		vmov	r3, s15	@ int
 1690 021c 9845     		cmp	r8, r3
 1691 021e 00F2B680 		bhi	.L296
 1692              	.L306:
 1693 0222 484B     		ldr	r3, .L313+72
 1694 0224 95E7     		b	.L295
 1695              	.L311:
 1696 0226 484B     		ldr	r3, .L313+76
 1697 0228 484A     		ldr	r2, .L313+80
 1698 022a 384F     		ldr	r7, .L313+16
 1699 022c 0021     		movs	r1, #0
 1700 022e 1960     		str	r1, [r3]	@ float
 1701 0230 0020     		movs	r0, #0
 1702 0232 3C49     		ldr	r1, .L313+40
 1703 0234 A369     		ldr	r3, [r4, #24]	@ float
 1704 0236 1060     		str	r0, [r2]
 1705 0238 0122     		movs	r2, #1
 1706 023a 0B60     		str	r3, [r1]	@ float
 1707 023c 2A60     		str	r2, [r5]
 1708 023e C8F80030 		str	r3, [r8]	@ float
 1709 0242 FFF7FEFF 		bl	millis
 1710 0246 424A     		ldr	r2, .L313+84
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 31


 1711 0248 2368     		ldr	r3, [r4]
 1712 024a 1268     		ldr	r2, [r2]	@ float
 1713 024c 2067     		str	r0, [r4, #112]
 1714 024e A266     		str	r2, [r4, #104]	@ float
 1715 0250 D3F83858 		ldr	r5, [r3, #2104]
 1716 0254 3F4A     		ldr	r2, .L313+88
 1717 0256 3060     		str	r0, [r6]
 1718 0258 0721     		movs	r1, #7
 1719 025a 84F87C10 		strb	r1, [r4, #124]
 1720 025e 1846     		mov	r0, r3
 1721 0260 3521     		movs	r1, #53
 1722 0262 3D60     		str	r5, [r7]
 1723              	.L308:
 1724 0264 03B0     		add	sp, sp, #12
 1725              		@ sp needed
 1726 0266 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1727 026a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1728              	.L288:
 1729 026e FFF7FEFF 		bl	_ZNK8Platform22GetCurrentPowerVoltageEv
 1730 0272 3549     		ldr	r1, .L313+76
 1731 0274 384B     		ldr	r3, .L313+92
 1732 0276 354A     		ldr	r2, .L313+80
 1733 0278 D1ED007A 		vldr.32	s15, [r1]
 1734 027c D3ED006A 		vldr.32	s13, [r3]
 1735 0280 94ED067A 		vldr.32	s14, [r4, #24]
 1736 0284 1368     		ldr	r3, [r2]
 1737 0286 77EE807A 		vadd.f32	s15, s15, s0
 1738 028a B4EEE67A 		vcmpe.f32	s14, s13
 1739 028e 0133     		adds	r3, r3, #1
 1740 0290 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1741 0294 C1ED007A 		vstr.32	s15, [r1]
 1742 0298 1360     		str	r3, [r2]
 1743 029a FFF627AF 		blt	.L269
 1744 029e 2F49     		ldr	r1, .L313+96
 1745 02a0 3A68     		ldr	r2, [r7]
 1746 02a2 2F4B     		ldr	r3, .L313+100
 1747 02a4 C1F80080 		str	r8, [r1]
 1748 02a8 0121     		movs	r1, #1
 1749 02aa 2960     		str	r1, [r5]
 1750 02ac 82ED007A 		vstr.32	s14, [r2]
 1751 02b0 83ED007A 		vstr.32	s14, [r3]
 1752 02b4 FFF7FEFF 		bl	millis
 1753 02b8 94F87D20 		ldrb	r2, [r4, #125]	@ zero_extendqisi2
 1754 02bc 2368     		ldr	r3, [r4]
 1755 02be DFED297A 		vldr.32	s15, .L313+104
 1756 02c2 124D     		ldr	r5, .L313+16
 1757 02c4 3060     		str	r0, [r6]
 1758 02c6 002A     		cmp	r2, #0
 1759 02c8 4FF00801 		mov	r1, #8
 1760 02cc B7EE000A 		vmov.f32	s0, #1.0e+0
 1761 02d0 D3F83868 		ldr	r6, [r3, #2104]
 1762 02d4 B4F84420 		ldrh	r2, [r4, #68]
 1763 02d8 84F87C10 		strb	r1, [r4, #124]
 1764 02dc 1846     		mov	r0, r3
 1765 02de 94F97A10 		ldrsb	r1, [r4, #122]
 1766 02e2 C4ED1A7A 		vstr.32	s15, [r4, #104]
 1767 02e6 08BF     		it	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 32


 1768 02e8 B0EE670A 		vmoveq.f32	s0, s15
 1769 02ec 2E60     		str	r6, [r5]
 1770 02ee FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1771 02f2 2068     		ldr	r0, [r4]
 1772 02f4 1C4A     		ldr	r2, .L313+108
 1773 02f6 3521     		movs	r1, #53
 1774 02f8 B4E7     		b	.L308
 1775              	.L314:
 1776 02fa 00BF     		.align	2
 1777              	.L313:
 1778 02fc 00000000 		.word	.LANCHOR1
 1779 0300 00000000 		.word	.LANCHOR13
 1780 0304 00000000 		.word	.LANCHOR0
 1781 0308 00000000 		.word	.LANCHOR12
 1782 030c 00000000 		.word	.LANCHOR2
 1783 0310 00000000 		.word	.LANCHOR8
 1784 0314 8C010000 		.word	.LC27
 1785 0318 00000000 		.word	reprap
 1786 031c 00007042 		.word	1114636288
 1787 0320 00007A44 		.word	1148846080
 1788 0324 00000000 		.word	.LANCHOR5
 1789 0328 804F1200 		.word	1200000
 1790 032c 9C000000 		.word	.LC22
 1791 0330 9A99193F 		.word	1058642330
 1792 0334 CCCCCC3E 		.word	1053609164
 1793 0338 20000000 		.word	.LC20
 1794 033c 34010000 		.word	.LC25
 1795 0340 48010000 		.word	.LC26
 1796 0344 E0930400 		.word	300000
 1797 0348 00000000 		.word	.LANCHOR10
 1798 034c 00000000 		.word	.LANCHOR11
 1799 0350 00000000 		.word	.LANCHOR3
 1800 0354 00000000 		.word	.LC19
 1801 0358 00000000 		.word	.LANCHOR4
 1802 035c 00000000 		.word	.LANCHOR7
 1803 0360 00000000 		.word	.LANCHOR6
 1804 0364 00000000 		.word	0
 1805 0368 DC000000 		.word	.LC23
 1806 036c 00000000 		.word	.LANCHOR9
 1807              	.L312:
 1808 0370 FFF7FEFF 		bl	millis
 1809 0374 3368     		ldr	r3, [r6]
 1810 0376 4EF65F22 		movw	r2, #59999
 1811 037a C31A     		subs	r3, r0, r3
 1812 037c 9342     		cmp	r3, r2
 1813 037e 7FF6B5AE 		bls	.L269
 1814 0382 0D4A     		ldr	r2, .L315
 1815 0384 2068     		ldr	r0, [r4]
 1816 0386 3521     		movs	r1, #53
 1817 0388 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1818 038c E8E6     		b	.L278
 1819              	.L296:
 1820 038e 0B4B     		ldr	r3, .L315+4
 1821 0390 D4ED067A 		vldr.32	s15, [r4, #24]
 1822 0394 93ED007A 		vldr.32	s14, [r3]
 1823 0398 77EEC77A 		vsub.f32	s15, s15, s14
 1824 039c B0EE087A 		vmov.f32	s14, #3.0e+0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 33


 1825 03a0 F4EEC77A 		vcmpe.f32	s15, s14
 1826 03a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1827 03a8 7FF53BAF 		bpl	.L306
 1828              	.L297:
 1829 03ac 044A     		ldr	r2, .L315+8
 1830 03ae 3521     		movs	r1, #53
 1831 03b0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1832 03b4 D4E6     		b	.L278
 1833              	.L316:
 1834 03b6 00BF     		.align	2
 1835              	.L315:
 1836 03b8 FC000000 		.word	.LC24
 1837 03bc 00000000 		.word	.LANCHOR5
 1838 03c0 60000000 		.word	.LC21
 1839              		.size	_ZN3PID12DoTuningStepEv, .-_ZN3PID12DoTuningStepEv
 1840              		.section	.text._ZN3PID4SpinEv,"ax",%progbits
 1841              		.align	1
 1842              		.p2align 2,,3
 1843              		.global	_ZN3PID4SpinEv
 1844              		.syntax unified
 1845              		.thumb
 1846              		.thumb_func
 1847              		.fpu fpv4-sp-d16
 1848              		.type	_ZN3PID4SpinEv, %function
 1849              	_ZN3PID4SpinEv:
 1850              		@ args = 0, pretend = 0, frame = 8
 1851              		@ frame_needed = 0, uses_anonymous_args = 0
 1852 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1853 0004 2DED048B 		vpush.64	{d8, d9}
 1854 0008 90F84650 		ldrb	r5, [r0, #70]	@ zero_extendqisi2
 1855 000c 84B0     		sub	sp, sp, #16
 1856 000e 25B9     		cbnz	r5, .L471
 1857 0010 04B0     		add	sp, sp, #16
 1858              		@ sp needed
 1859 0012 BDEC048B 		vldm	sp!, {d8-d9}
 1860 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1861              	.L471:
 1862 001a 04AA     		add	r2, sp, #16
 1863 001c A84E     		ldr	r6, .L480
 1864 001e 90F97A10 		ldrsb	r1, [r0, #122]
 1865 0022 4FF00008 		mov	r8, #0
 1866 0026 0446     		mov	r4, r0
 1867 0028 02F8018D 		strb	r8, [r2, #-1]!
 1868 002c 3069     		ldr	r0, [r6, #16]
 1869 002e FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1870 0032 9DF80F70 		ldrb	r7, [sp, #15]	@ zero_extendqisi2
 1871 0036 84ED060A 		vstr.32	s0, [r4, #24]
 1872 003a 002F     		cmp	r7, #0
 1873 003c 40F08780 		bne	.L472
 1874 0040 94F87B30 		ldrb	r3, [r4, #123]	@ zero_extendqisi2
 1875 0044 84F88070 		strb	r7, [r4, #128]
 1876 0048 13F00801 		ands	r1, r3, #8
 1877 004c E26A     		ldr	r2, [r4, #44]
 1878 004e 00F0CD80 		beq	.L396
 1879 0052 0632     		adds	r2, r2, #6
 1880 0054 04EB8200 		add	r0, r4, r2, lsl #2
 1881 0058 2168     		ldr	r1, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 34


 1882 005a 90ED017A 		vldr.32	s14, [r0, #4]
 1883 005e D1F83818 		ldr	r1, [r1, #2104]
 1884 0062 DFED987A 		vldr.32	s15, .L480+4
 1885 0066 DFED9C6A 		vldr.32	s13, .L480+24
 1886 006a 30EE477A 		vsub.f32	s14, s0, s14
 1887 006e 8900     		lsls	r1, r1, #2
 1888 0070 27EE277A 		vmul.f32	s14, s14, s15
 1889 0074 07EE901A 		vmov	s15, r1	@ int
 1890 0078 F8EE677A 		vcvt.f32.u32	s15, s15
 1891 007c B2EE046A 		vmov.f32	s12, #1.0e+1
 1892 0080 87EE278A 		vdiv.f32	s16, s14, s15
 1893 0084 F0EEC87A 		vabs.f32	s15, s16
 1894 0088 F4EEC67A 		vcmpe.f32	s15, s12
 1895 008c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1896 0090 88BF     		it	hi
 1897 0092 0025     		movhi	r5, #0
 1898 0094 88BF     		it	hi
 1899 0096 B0EE668A 		vmovhi.f32	s16, s13
 1900              	.L325:
 1901 009a 94F87E10 		ldrb	r1, [r4, #126]	@ zero_extendqisi2
 1902 009e 94ED027A 		vldr.32	s14, [r4, #8]
 1903 00a2 D4ED037A 		vldr.32	s15, [r4, #12]
 1904 00a6 0029     		cmp	r1, #0
 1905 00a8 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 1906 00ac 4FEA4303 		lsl	r3, r3, #1
 1907 00b0 18BF     		it	ne
 1908 00b2 F0EE477A 		vmovne.f32	s15, s14
 1909 00b6 43F00103 		orr	r3, r3, #1
 1910 00ba 04EB8202 		add	r2, r4, r2, lsl #2
 1911 00be 0429     		cmp	r1, #4
 1912 00c0 82ED010A 		vstr.32	s0, [r2, #4]
 1913 00c4 77EEC08A 		vsub.f32	s17, s15, s0
 1914 00c8 84F87B30 		strb	r3, [r4, #123]
 1915 00cc 00F0E181 		beq	.L329
 1916 00d0 0529     		cmp	r1, #5
 1917 00d2 00F09E80 		beq	.L330
 1918 00d6 0329     		cmp	r1, #3
 1919 00d8 00F00081 		beq	.L473
 1920              	.L328:
 1921 00dc 0229     		cmp	r1, #2
 1922 00de 00F28A80 		bhi	.L358
 1923 00e2 9FED7D0A 		vldr.32	s0, .L480+24
 1924 00e6 2068     		ldr	r0, [r4]
 1925 00e8 94F97A10 		ldrsb	r1, [r4, #122]
 1926 00ec 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 1927 00f0 84ED1A0A 		vstr.32	s0, [r4, #104]
 1928              	.L321:
 1929 00f4 1BB1     		cbz	r3, .L391
 1930 00f6 F7EE007A 		vmov.f32	s15, #1.0e+0
 1931 00fa 37EEC00A 		vsub.f32	s0, s15, s0
 1932              	.L391:
 1933 00fe B4F84420 		ldrh	r2, [r4, #68]
 1934 0102 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1935 0106 2368     		ldr	r3, [r4]
 1936 0108 9FED725A 		vldr.32	s10, .L480+20
 1937 010c D3F83838 		ldr	r3, [r3, #2104]
 1938 0110 94ED1B6A 		vldr.32	s12, [r4, #108]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 35


 1939 0114 D4ED1A7A 		vldr.32	s15, [r4, #104]
 1940 0118 06EE903A 		vmov	s13, r3	@ int
 1941 011c F8EE666A 		vcvt.f32.u32	s13, s13
 1942 0120 B7EE007A 		vmov.f32	s14, #1.0e+0
 1943 0124 C6EE855A 		vdiv.f32	s11, s13, s10
 1944 0128 E36A     		ldr	r3, [r4, #44]
 1945 012a 0133     		adds	r3, r3, #1
 1946 012c 03F00303 		and	r3, r3, #3
 1947 0130 E362     		str	r3, [r4, #44]
 1948 0132 37EE657A 		vsub.f32	s14, s14, s11
 1949 0136 E6EE077A 		vfma.f32	s15, s12, s14
 1950 013a C4ED1B7A 		vstr.32	s15, [r4, #108]
 1951 013e FFF7FEFF 		bl	millis
 1952 0142 6067     		str	r0, [r4, #116]
 1953 0144 04B0     		add	sp, sp, #16
 1954              		@ sp needed
 1955 0146 BDEC048B 		vldm	sp!, {d8-d9}
 1956 014a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1957              	.L472:
 1958 014e 94F87B20 		ldrb	r2, [r4, #123]	@ zero_extendqisi2
 1959 0152 94F87C50 		ldrb	r5, [r4, #124]	@ zero_extendqisi2
 1960 0156 2068     		ldr	r0, [r4]
 1961 0158 94F97A10 		ldrsb	r1, [r4, #122]
 1962 015c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 1963 0160 5200     		lsls	r2, r2, #1
 1964 0162 022D     		cmp	r5, #2
 1965 0164 84F87B20 		strb	r2, [r4, #123]
 1966 0168 3DD9     		bls	.L467
 1967 016a 94F88020 		ldrb	r2, [r4, #128]	@ zero_extendqisi2
 1968 016e 0132     		adds	r2, r2, #1
 1969 0170 D2B2     		uxtb	r2, r2
 1970 0172 042A     		cmp	r2, #4
 1971 0174 84F88020 		strb	r2, [r4, #128]
 1972 0178 35D9     		bls	.L467
 1973 017a DFED577A 		vldr.32	s15, .L480+24
 1974 017e B4F84420 		ldrh	r2, [r4, #68]
 1975 0182 C4ED1A7A 		vstr.32	s15, [r4, #104]
 1976 0186 002B     		cmp	r3, #0
 1977 0188 B7EE000A 		vmov.f32	s0, #1.0e+0
 1978 018c 08BF     		it	eq
 1979 018e B0EE670A 		vmoveq.f32	s0, s15
 1980 0192 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1981 0196 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 1982 019a 052B     		cmp	r3, #5
 1983 019c 00F20382 		bhi	.L474
 1984              	.L324:
 1985 01a0 0023     		movs	r3, #0
 1986 01a2 7069     		ldr	r0, [r6, #20]
 1987 01a4 84F87C30 		strb	r3, [r4, #124]
 1988 01a8 94F97A10 		ldrsb	r1, [r4, #122]
 1989 01ac FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 1990 01b0 3846     		mov	r0, r7
 1991 01b2 2568     		ldr	r5, [r4]
 1992 01b4 94F97A60 		ldrsb	r6, [r4, #122]
 1993 01b8 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 1994 01bc 3346     		mov	r3, r6
 1995 01be 0090     		str	r0, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 36


 1996 01c0 414A     		ldr	r2, .L480+8
 1997 01c2 2846     		mov	r0, r5
 1998 01c4 40F2B511 		movw	r1, #437
 1999 01c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2000 01cc 94F97A10 		ldrsb	r1, [r4, #122]
 2001 01d0 3B48     		ldr	r0, .L480
 2002 01d2 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2003 01d6 94ED1A0A 		vldr.32	s0, [r4, #104]
 2004 01da 2068     		ldr	r0, [r4]
 2005 01dc 94F97A10 		ldrsb	r1, [r4, #122]
 2006 01e0 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2007 01e4 86E7     		b	.L321
 2008              	.L467:
 2009 01e6 94ED1A0A 		vldr.32	s0, [r4, #104]
 2010 01ea 83E7     		b	.L321
 2011              	.L396:
 2012 01ec 9FED3A8A 		vldr.32	s16, .L480+24
 2013 01f0 0D46     		mov	r5, r1
 2014 01f2 0632     		adds	r2, r2, #6
 2015 01f4 51E7     		b	.L325
 2016              	.L358:
 2017 01f6 0529     		cmp	r1, #5
 2018 01f8 40F2BA80 		bls	.L346
 2019 01fc 2046     		mov	r0, r4
 2020 01fe FFF7FEFF 		bl	_ZN3PID12DoTuningStepEv
 2021              	.L466:
 2022 0202 94ED1A0A 		vldr.32	s0, [r4, #104]
 2023 0206 2068     		ldr	r0, [r4]
 2024 0208 94F97A10 		ldrsb	r1, [r4, #122]
 2025 020c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2026 0210 70E7     		b	.L321
 2027              	.L330:
 2028 0212 D4ED047A 		vldr.32	s15, [r4, #16]
 2029 0216 B4F87830 		ldrh	r3, [r4, #120]
 2030 021a B0EEE87A 		vabs.f32	s14, s17
 2031 021e B4EEE77A 		vcmpe.f32	s14, s15
 2032 0222 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2033 0226 40F35481 		ble	.L347
 2034 022a DFED287A 		vldr.32	s15, .L480+12
 2035 022e B4EEE70A 		vcmpe.f32	s0, s15
 2036 0232 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2037 0236 40F34C81 		ble	.L347
 2038 023a 0133     		adds	r3, r3, #1
 2039 023c 9BB2     		uxth	r3, r3
 2040 023e 2068     		ldr	r0, [r4]
 2041 0240 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2042 0244 D0F83828 		ldr	r2, [r0, #2104]
 2043 0248 94ED057A 		vldr.32	s14, [r4, #20]
 2044 024c DFED1D6A 		vldr.32	s13, .L480+4
 2045 0250 02FB03F3 		mul	r3, r2, r3
 2046 0254 07EE903A 		vmov	s15, r3	@ int
 2047 0258 27EE267A 		vmul.f32	s14, s14, s13
 2048 025c F8EE677A 		vcvt.f32.u32	s15, s15
 2049 0260 F4EEC77A 		vcmpe.f32	s15, s14
 2050 0264 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2051 0268 40F34081 		ble	.L453
 2052 026c 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 37


 2053 0270 DFED197A 		vldr.32	s15, .L480+24
 2054 0274 B4F84420 		ldrh	r2, [r4, #68]
 2055 0278 94F97A10 		ldrsb	r1, [r4, #122]
 2056 027c 002B     		cmp	r3, #0
 2057 027e B7EE000A 		vmov.f32	s0, #1.0e+0
 2058 0282 08BF     		it	eq
 2059 0284 B0EE670A 		vmoveq.f32	s0, s15
 2060 0288 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2061 028c 0023     		movs	r3, #0
 2062 028e 84F87C30 		strb	r3, [r4, #124]
 2063 0292 94F97A10 		ldrsb	r1, [r4, #122]
 2064 0296 7069     		ldr	r0, [r6, #20]
 2065 0298 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2066 029c 2069     		ldr	r0, [r4, #16]	@ float
 2067 029e 94F97A70 		ldrsb	r7, [r4, #122]
 2068 02a2 2568     		ldr	r5, [r4]
 2069 02a4 FFF7FEFF 		bl	__aeabi_f2d
 2070 02a8 3B46     		mov	r3, r7
 2071 02aa CDE90001 		strd	r0, [sp]
 2072 02ae 084A     		ldr	r2, .L480+16
 2073 02b0 40F2B511 		movw	r1, #437
 2074 02b4 2846     		mov	r0, r5
 2075 02b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2076 02ba 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2077 02be 0DE7     		b	.L328
 2078              	.L481:
 2079              		.align	2
 2080              	.L480:
 2081 02c0 00000000 		.word	reprap
 2082 02c4 00007A44 		.word	1148846080
 2083 02c8 00000000 		.word	.LC28
 2084 02cc 00003442 		.word	1110704128
 2085 02d0 8C000000 		.word	.LC30
 2086 02d4 00409C45 		.word	1167867904
 2087 02d8 00000000 		.word	0
 2088              	.L473:
 2089 02dc F7EE007A 		vmov.f32	s15, #1.0e+0
 2090 02e0 F4EEE78A 		vcmpe.f32	s17, s15
 2091 02e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2092 02e8 40F2E180 		bls	.L356
 2093 02ec 002D     		cmp	r5, #0
 2094 02ee 00F0CA80 		beq	.L336
 2095 02f2 2368     		ldr	r3, [r4]
 2096 02f4 94ED1B7A 		vldr.32	s14, [r4, #108]
 2097 02f8 D3F83838 		ldr	r3, [r3, #2104]
 2098 02fc 1FED0B6A 		vldr.32	s12, .L480+20
 2099 0300 94ED0C5A 		vldr.32	s10, [r4, #48]
 2100 0304 D4ED0D5A 		vldr.32	s11, [r4, #52]
 2101 0308 07EE903A 		vmov	s15, r3	@ int
 2102 030c F8EE677A 		vcvt.f32.u32	s15, s15
 2103 0310 F6EE086A 		vmov.f32	s13, #7.5e-1
 2104 0314 67EE877A 		vmul.f32	s15, s15, s14
 2105 0318 65EE266A 		vmul.f32	s13, s10, s13
 2106 031c 87EE867A 		vdiv.f32	s14, s15, s12
 2107 0320 B3EE046A 		vmov.f32	s12, #2.0e+1
 2108 0324 67EE267A 		vmul.f32	s15, s14, s13
 2109 0328 F4EEC67A 		vcmpe.f32	s15, s12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 38


 2110 032c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2111 0330 C0F27881 		blt	.L450
 2112 0334 C7EEA56A 		vdiv.f32	s13, s15, s11
 2113 0338 B3EE097A 		vmov.f32	s14, #2.5e+1
 2114 033c 37EE877A 		vadd.f32	s14, s15, s14
 2115 0340 37EE407A 		vsub.f32	s14, s14, s0
 2116 0344 27EE267A 		vmul.f32	s14, s14, s13
 2117 0348 87EE279A 		vdiv.f32	s18, s14, s15
 2118              	.L337:
 2119 034c F5EE007A 		vmov.f32	s15, #2.5e-1
 2120 0350 78EE277A 		vadd.f32	s15, s16, s15
 2121 0354 F4EEC97A 		vcmpe.f32	s15, s18
 2122 0358 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2123 035c 00F17A81 		bmi	.L475
 2124 0360 B4F87830 		ldrh	r3, [r4, #120]
 2125 0364 002B     		cmp	r3, #0
 2126 0366 00F06F81 		beq	.L476
 2127 036a 013B     		subs	r3, r3, #1
 2128 036c A4F87830 		strh	r3, [r4, #120]	@ movhi
 2129              	.L346:
 2130 0370 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2131 0374 002B     		cmp	r3, #0
 2132 0376 00F0A380 		beq	.L335
 2133 037a 0529     		cmp	r1, #5
 2134 037c 94ED0C5A 		vldr.32	s10, [r4, #48]
 2135 0380 00F0B180 		beq	.L334
 2136              	.L394:
 2137 0384 F0EEE87A 		vabs.f32	s15, s17
 2138 0388 B0EE087A 		vmov.f32	s14, #3.0e+0
 2139 038c F4EEC77A 		vcmpe.f32	s15, s14
 2140 0390 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2141 0394 00F1A780 		bmi	.L334
 2142 0398 04F14C03 		add	r3, r4, #76
 2143              	.L360:
 2144 039c D4ED065A 		vldr.32	s11, [r4, #24]
 2145 03a0 93ED027A 		vldr.32	s14, [r3, #8]
 2146 03a4 93ED006A 		vldr.32	s12, [r3]
 2147 03a8 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2148 03ac F3EE096A 		vmov.f32	s13, #2.5e+1
 2149 03b0 75EEE65A 		vsub.f32	s11, s11, s13
 2150 03b4 F0EE686A 		vmov.f32	s13, s17
 2151 03b8 E7EE486A 		vfms.f32	s13, s14, s16
 2152 03bc 85EE857A 		vdiv.f32	s14, s11, s10
 2153 03c0 66EE866A 		vmul.f32	s13, s13, s12
 2154 03c4 B4EE477A 		vcmp.f32	s14, s14
 2155 03c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2156 03cc 12D6     		bvs	.L361
 2157 03ce B4EEE77A 		vcmpe.f32	s14, s15
 2158 03d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2159 03d6 06D4     		bmi	.L362
 2160 03d8 F4EE677A 		vcmp.f32	s15, s15
 2161 03dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2162 03e0 B0EE677A 		vmov.f32	s14, s15
 2163 03e4 06D6     		bvs	.L361
 2164              	.L362:
 2165 03e6 B5EEC07A 		vcmpe.f32	s14, #0
 2166 03ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 39


 2167 03ee D8BF     		it	le
 2168 03f0 1FED477A 		vldrle.32	s14, .L480+24
 2169              	.L361:
 2170 03f4 76EE875A 		vadd.f32	s11, s13, s14
 2171 03f8 F4EEE75A 		vcmpe.f32	s11, s15
 2172 03fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2173 0400 79DD     		ble	.L457
 2174 0402 0329     		cmp	r1, #3
 2175 0404 C4ED1A7A 		vstr.32	s15, [r4, #104]
 2176 0408 00F00F81 		beq	.L477
 2177              	.L366:
 2178 040c B7EE007A 		vmov.f32	s14, #1.0e+0
 2179 0410 F4EEC77A 		vcmpe.f32	s15, s14
 2180 0414 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2181 0418 00F1CE80 		bmi	.L371
 2182              	.L378:
 2183 041c 94F84830 		ldrb	r3, [r4, #72]	@ zero_extendqisi2
 2184 0420 3BB1     		cbz	r3, .L386
 2185 0422 94ED1A7A 		vldr.32	s14, [r4, #104]
 2186 0426 D4ED0F7A 		vldr.32	s15, [r4, #60]
 2187 042a 77EEC77A 		vsub.f32	s15, s15, s14
 2188 042e C4ED1A7A 		vstr.32	s15, [r4, #104]
 2189              	.L386:
 2190 0432 6568     		ldr	r5, [r4, #4]
 2191 0434 002D     		cmp	r5, #0
 2192 0436 3FF4E4AE 		beq	.L466
 2193 043a 0027     		movs	r7, #0
 2194 043c DFF80083 		ldr	r8, .L482+28
 2195 0440 08E0     		b	.L387
 2196              	.L478:
 2197 0442 012B     		cmp	r3, #1
 2198 0444 2046     		mov	r0, r4
 2199 0446 01D1     		bne	.L388
 2200 0448 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 2201              	.L388:
 2202 044c 2D68     		ldr	r5, [r5]
 2203 044e 002D     		cmp	r5, #0
 2204 0450 3FF4D7AE 		beq	.L466
 2205              	.L387:
 2206 0454 2846     		mov	r0, r5
 2207 0456 FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 2208 045a 0028     		cmp	r0, #0
 2209 045c F6D1     		bne	.L388
 2210 045e AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 2211 0460 A766     		str	r7, [r4, #104]	@ float
 2212 0462 002B     		cmp	r3, #0
 2213 0464 EDD1     		bne	.L478
 2214 0466 84F87C30 		strb	r3, [r4, #124]
 2215 046a 94F97A10 		ldrsb	r1, [r4, #122]
 2216 046e 7069     		ldr	r0, [r6, #20]
 2217 0470 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2218 0474 94F97A30 		ldrsb	r3, [r4, #122]
 2219 0478 2068     		ldr	r0, [r4]
 2220 047a 4246     		mov	r2, r8
 2221 047c 40F2B511 		movw	r1, #437
 2222 0480 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2223 0484 E2E7     		b	.L388
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 40


 2224              	.L336:
 2225 0486 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2226 048a CBB1     		cbz	r3, .L335
 2227 048c 94ED0C5A 		vldr.32	s10, [r4, #48]
 2228 0490 78E7     		b	.L394
 2229              	.L329:
 2230 0492 BFEE007A 		vmov.f32	s14, #-1.0e+0
 2231 0496 F4EEC78A 		vcmpe.f32	s17, s14
 2232 049a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2233 049e F2DB     		blt	.L336
 2234 04a0 9FEDA07A 		vldr.32	s14, .L482
 2235 04a4 F4EEC77A 		vcmpe.f32	s15, s14
 2236 04a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2237 04ac EBDD     		ble	.L336
 2238              	.L356:
 2239 04ae 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2240 04b2 0521     		movs	r1, #5
 2241 04b4 0022     		movs	r2, #0
 2242 04b6 84F87C10 		strb	r1, [r4, #124]
 2243 04ba A4F87820 		strh	r2, [r4, #120]	@ movhi
 2244 04be 83B9     		cbnz	r3, .L398
 2245              	.L335:
 2246 04c0 F5EEC08A 		vcmpe.f32	s17, #0
 2247 04c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2248 04c8 CCBF     		ite	gt
 2249 04ca E36B     		ldrgt	r3, [r4, #60]	@ float
 2250 04cc 0023     		movle	r3, #0
 2251 04ce A366     		str	r3, [r4, #104]	@ float
 2252 04d0 A4E7     		b	.L378
 2253              	.L347:
 2254 04d2 5BB1     		cbz	r3, .L453
 2255 04d4 94F84720 		ldrb	r2, [r4, #71]	@ zero_extendqisi2
 2256 04d8 013B     		subs	r3, r3, #1
 2257 04da A4F87830 		strh	r3, [r4, #120]	@ movhi
 2258 04de 002A     		cmp	r2, #0
 2259 04e0 EED0     		beq	.L335
 2260              	.L398:
 2261 04e2 94ED0C5A 		vldr.32	s10, [r4, #48]
 2262              	.L334:
 2263 04e6 04F15803 		add	r3, r4, #88
 2264 04ea 57E7     		b	.L360
 2265              	.L453:
 2266 04ec 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2267 04f0 002B     		cmp	r3, #0
 2268 04f2 E5D0     		beq	.L335
 2269 04f4 F5E7     		b	.L398
 2270              	.L457:
 2271 04f6 F5EEC05A 		vcmpe.f32	s11, #0
 2272 04fa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2273 04fe 4FF00002 		mov	r2, #0
 2274 0502 58D4     		bmi	.L479
 2275 0504 2268     		ldr	r2, [r4]
 2276 0506 93ED014A 		vldr.32	s8, [r3, #4]
 2277 050a D2F83838 		ldr	r3, [r2, #2104]
 2278 050e DFED864A 		vldr.32	s9, .L482+4
 2279 0512 D4ED195A 		vldr.32	s11, [r4, #100]
 2280 0516 05EE103A 		vmov	s10, r3	@ int
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 41


 2281 051a 26EE286A 		vmul.f32	s12, s12, s17
 2282 051e B8EE455A 		vcvt.f32.u32	s10, s10
 2283 0522 26EE047A 		vmul.f32	s14, s12, s8
 2284 0526 27EE057A 		vmul.f32	s14, s14, s10
 2285 052a E7EE245A 		vfma.f32	s11, s14, s9
 2286 052e F4EE655A 		vcmp.f32	s11, s11
 2287 0532 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2288 0536 B0EE657A 		vmov.f32	s14, s11
 2289 053a 12D6     		bvs	.L372
 2290 053c F4EEE75A 		vcmpe.f32	s11, s15
 2291 0540 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2292 0544 06D4     		bmi	.L373
 2293 0546 F4EE677A 		vcmp.f32	s15, s15
 2294 054a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2295 054e B0EE677A 		vmov.f32	s14, s15
 2296 0552 06D6     		bvs	.L372
 2297              	.L373:
 2298 0554 B5EEC07A 		vcmpe.f32	s14, #0
 2299 0558 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2300 055c D8BF     		it	le
 2301 055e 9FED737A 		vldrle.32	s14, .L482+8
 2302              	.L372:
 2303 0562 84ED197A 		vstr.32	s14, [r4, #100]
 2304 0566 76EE876A 		vadd.f32	s13, s13, s14
 2305 056a F4EE666A 		vcmp.f32	s13, s13
 2306 056e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2307 0572 80F1D480 		bvs	.L406
 2308 0576 F4EEE76A 		vcmpe.f32	s13, s15
 2309 057a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2310 057e 06D4     		bmi	.L376
 2311 0580 F4EE677A 		vcmp.f32	s15, s15
 2312 0584 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2313 0588 0AD6     		bvs	.L375
 2314 058a F0EE676A 		vmov.f32	s13, s15
 2315              	.L376:
 2316 058e F5EEC06A 		vcmpe.f32	s13, #0
 2317 0592 DFED667A 		vldr.32	s15, .L482+8
 2318 0596 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2319 059a C8BF     		it	gt
 2320 059c F0EE667A 		vmovgt.f32	s15, s13
 2321              	.L375:
 2322 05a0 C4ED1A7A 		vstr.32	s15, [r4, #104]
 2323 05a4 32E7     		b	.L366
 2324              	.L474:
 2325 05a6 624D     		ldr	r5, .L482+12
 2326 05a8 0421     		movs	r1, #4
 2327 05aa 2868     		ldr	r0, [r5]
 2328 05ac FFF7FEFF 		bl	_ZdlPvj
 2329 05b0 C5F80080 		str	r8, [r5]
 2330 05b4 F4E5     		b	.L324
 2331              	.L479:
 2332 05b6 A266     		str	r2, [r4, #104]	@ float
 2333              	.L371:
 2334 05b8 D4ED107A 		vldr.32	s15, [r4, #64]
 2335 05bc B2EE048A 		vmov.f32	s16, #1.0e+1
 2336 05c0 F4EEC87A 		vcmpe.f32	s15, s16
 2337 05c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 42


 2338 05c8 FFF628AF 		blt	.L378
 2339 05cc 94F97A10 		ldrsb	r1, [r4, #122]
 2340 05d0 3069     		ldr	r0, [r6, #16]
 2341 05d2 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 2342 05d6 0028     		cmp	r0, #0
 2343 05d8 7FF420AF 		bne	.L378
 2344 05dc 2068     		ldr	r0, [r4]
 2345 05de FFF7FEFF 		bl	_ZNK8Platform22GetCurrentPowerVoltageEv
 2346 05e2 B4EEC80A 		vcmpe.f32	s0, s16
 2347 05e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2348 05ea FFF617AF 		blt	.L378
 2349 05ee D4ED106A 		vldr.32	s13, [r4, #64]
 2350 05f2 94ED1A7A 		vldr.32	s14, [r4, #104]
 2351 05f6 C6EE807A 		vdiv.f32	s15, s13, s0
 2352 05fa 67EEA77A 		vmul.f32	s15, s15, s15
 2353 05fe 67EE877A 		vmul.f32	s15, s15, s14
 2354 0602 F4EE677A 		vcmp.f32	s15, s15
 2355 0606 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2356 060a 08D6     		bvs	.L382
 2357 060c B7EE007A 		vmov.f32	s14, #1.0e+0
 2358 0610 F4EEC77A 		vcmpe.f32	s15, s14
 2359 0614 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2360 0618 58BF     		it	pl
 2361 061a F0EE477A 		vmovpl.f32	s15, s14
 2362              	.L382:
 2363 061e C4ED1A7A 		vstr.32	s15, [r4, #104]
 2364 0622 FBE6     		b	.L378
 2365              	.L450:
 2366 0624 9FED419A 		vldr.32	s18, .L482+8
 2367 0628 90E6     		b	.L337
 2368              	.L477:
 2369 062a F5EEC08A 		vcmpe.f32	s17, #0
 2370 062e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2371 0632 7FF7EBAE 		ble	.L366
 2372 0636 B5EEC08A 		vcmpe.f32	s16, #0
 2373 063a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2374 063e 7FF7E5AE 		ble	.L366
 2375 0642 84ED197A 		vstr.32	s14, [r4, #100]
 2376 0646 E1E6     		b	.L366
 2377              	.L476:
 2378 0648 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2379 064c 002B     		cmp	r3, #0
 2380 064e 7FF499AE 		bne	.L394
 2381 0652 35E7     		b	.L335
 2382              	.L475:
 2383 0654 FFF7FEFF 		bl	millis
 2384 0658 236F     		ldr	r3, [r4, #112]
 2385 065a D4ED0E7A 		vldr.32	s15, [r4, #56]
 2386 065e DFED356A 		vldr.32	s13, .L482+16
 2387 0662 C01A     		subs	r0, r0, r3
 2388 0664 67EEA67A 		vmul.f32	s15, s15, s13
 2389 0668 07EE100A 		vmov	s14, r0	@ int
 2390 066c 77EEA77A 		vadd.f32	s15, s15, s15
 2391 0670 B8EE477A 		vcvt.f32.u32	s14, s14
 2392 0674 B4F87830 		ldrh	r3, [r4, #120]
 2393 0678 B4EEE77A 		vcmpe.f32	s14, s15
 2394 067c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 43


 2395 0680 44DD     		ble	.L452
 2396 0682 0133     		adds	r3, r3, #1
 2397 0684 9BB2     		uxth	r3, r3
 2398 0686 2068     		ldr	r0, [r4]
 2399 0688 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2400 068c D0F83828 		ldr	r2, [r0, #2104]
 2401 0690 94ED057A 		vldr.32	s14, [r4, #20]
 2402 0694 02FB03F3 		mul	r3, r2, r3
 2403 0698 07EE903A 		vmov	s15, r3	@ int
 2404 069c 67EE266A 		vmul.f32	s13, s14, s13
 2405 06a0 F8EE677A 		vcvt.f32.u32	s15, s15
 2406 06a4 F4EEE67A 		vcmpe.f32	s15, s13
 2407 06a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2408 06ac 2BDD     		ble	.L464
 2409 06ae 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2410 06b2 DFED1E7A 		vldr.32	s15, .L482+8
 2411 06b6 B4F84420 		ldrh	r2, [r4, #68]
 2412 06ba 94F97A10 		ldrsb	r1, [r4, #122]
 2413 06be 002B     		cmp	r3, #0
 2414 06c0 B7EE000A 		vmov.f32	s0, #1.0e+0
 2415 06c4 08BF     		it	eq
 2416 06c6 B0EE670A 		vmoveq.f32	s0, s15
 2417 06ca FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2418 06ce 0023     		movs	r3, #0
 2419 06d0 84F87C30 		strb	r3, [r4, #124]
 2420 06d4 94F97A10 		ldrsb	r1, [r4, #122]
 2421 06d8 7069     		ldr	r0, [r6, #20]
 2422 06da FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2423 06de 19EE100A 		vmov	r0, s18
 2424 06e2 FFF7FEFF 		bl	__aeabi_f2d
 2425 06e6 2568     		ldr	r5, [r4]
 2426 06e8 94F97A30 		ldrsb	r3, [r4, #122]
 2427 06ec 124A     		ldr	r2, .L482+20
 2428 06ee CDE90001 		strd	r0, [sp]
 2429 06f2 2846     		mov	r0, r5
 2430 06f4 40F2B511 		movw	r1, #437
 2431 06f8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2432 06fc 94F97A10 		ldrsb	r1, [r4, #122]
 2433 0700 0E48     		ldr	r0, .L482+24
 2434 0702 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2435              	.L464:
 2436 0706 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2437 070a E7E4     		b	.L328
 2438              	.L452:
 2439 070c 94F87C10 		ldrb	r1, [r4, #124]	@ zero_extendqisi2
 2440 0710 002B     		cmp	r3, #0
 2441 0712 3FF4E3AC 		beq	.L328
 2442 0716 013B     		subs	r3, r3, #1
 2443 0718 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2444 071c DEE4     		b	.L328
 2445              	.L406:
 2446 071e F0EE667A 		vmov.f32	s15, s13
 2447 0722 3DE7     		b	.L375
 2448              	.L483:
 2449              		.align	2
 2450              	.L482:
 2451 0724 00003442 		.word	1110704128
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 44


 2452 0728 6F12833A 		.word	981668463
 2453 072c 00000000 		.word	0
 2454 0730 00000000 		.word	.LANCHOR0
 2455 0734 00007A44 		.word	1148846080
 2456 0738 2C000000 		.word	.LC29
 2457 073c 00000000 		.word	reprap
 2458 0740 D0000000 		.word	.LC31
 2459              		.size	_ZN3PID4SpinEv, .-_ZN3PID4SpinEv
 2460              		.section	.text._ZN3PID7SuspendEb,"ax",%progbits
 2461              		.align	1
 2462              		.p2align 2,,3
 2463              		.global	_ZN3PID7SuspendEb
 2464              		.syntax unified
 2465              		.thumb
 2466              		.thumb_func
 2467              		.fpu fpv4-sp-d16
 2468              		.type	_ZN3PID7SuspendEb, %function
 2469              	_ZN3PID7SuspendEb:
 2470              		@ args = 0, pretend = 0, frame = 0
 2471              		@ frame_needed = 0, uses_anonymous_args = 0
 2472 0000 10B5     		push	{r4, lr}
 2473 0002 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 2474 0006 2DED028B 		vpush.64	{d8}
 2475 000a 0446     		mov	r4, r0
 2476 000c 29B1     		cbz	r1, .L485
 2477 000e 033A     		subs	r2, r2, #3
 2478 0010 022A     		cmp	r2, #2
 2479 0012 0ED9     		bls	.L493
 2480              	.L484:
 2481 0014 BDEC028B 		vldm	sp!, {d8}
 2482 0018 10BD     		pop	{r4, pc}
 2483              	.L485:
 2484 001a 022A     		cmp	r2, #2
 2485 001c FAD1     		bne	.L484
 2486 001e 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 2487 0022 002B     		cmp	r3, #0
 2488 0024 F6D0     		beq	.L484
 2489 0026 BDEC028B 		vldm	sp!, {d8}
 2490 002a BDE81040 		pop	{r4, lr}
 2491 002e FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.15
 2492              	.L493:
 2493 0032 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 2494 0036 9FED0C8A 		vldr.32	s16, .L494
 2495 003a B0F84420 		ldrh	r2, [r0, #68]
 2496 003e 90F97A10 		ldrsb	r1, [r0, #122]
 2497 0042 0068     		ldr	r0, [r0]
 2498 0044 002B     		cmp	r3, #0
 2499 0046 B7EE000A 		vmov.f32	s0, #1.0e+0
 2500 004a 4FF00203 		mov	r3, #2
 2501 004e 08BF     		it	eq
 2502 0050 B0EE480A 		vmoveq.f32	s0, s16
 2503 0054 84F87C30 		strb	r3, [r4, #124]
 2504 0058 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2505 005c 84ED1A8A 		vstr.32	s16, [r4, #104]
 2506 0060 BDEC028B 		vldm	sp!, {d8}
 2507 0064 10BD     		pop	{r4, pc}
 2508              	.L495:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 45


 2509 0066 00BF     		.align	2
 2510              	.L494:
 2511 0068 00000000 		.word	0
 2512              		.size	_ZN3PID7SuspendEb, .-_ZN3PID7SuspendEb
 2513              		.global	tuningVoltageAccumulator
 2514              		.global	voltageSamplesTaken
 2515              		.global	_ZN3PID15tuningPeakDelayE
 2516              		.global	_ZN3PID17tuningHeatingTimeE
 2517              		.global	_ZN3PID21tuningPeakTemperatureE
 2518              		.global	_ZN3PID19tuningHeaterOffTempE
 2519              		.global	_ZN3PID19tuningReadingsTakenE
 2520              		.global	_ZN3PID21tuningReadingIntervalE
 2521              		.global	_ZN3PID20tuningPhaseStartTimeE
 2522              		.global	_ZN3PID15tuningBeginTimeE
 2523              		.global	_ZN3PID16tuningTargetTempE
 2524              		.global	_ZN3PID9tuningPwmE
 2525              		.global	_ZN3PID15tuningStartTempE
 2526              		.global	_ZN3PID18tuningTempReadingsE
 2527              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2528              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2529              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2530              	_ZL28cpu_irq_prev_interrupt_state:
 2531 0000 00       		.space	1
 2532              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2533              		.align	2
 2534              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2535              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2536              	_ZL32cpu_irq_critical_section_counter:
 2537 0000 00000000 		.space	4
 2538              		.section	.bss._ZN3PID15tuningBeginTimeE,"aw",%nobits
 2539              		.align	2
 2540              		.set	.LANCHOR12,. + 0
 2541              		.type	_ZN3PID15tuningBeginTimeE, %object
 2542              		.size	_ZN3PID15tuningBeginTimeE, 4
 2543              	_ZN3PID15tuningBeginTimeE:
 2544 0000 00000000 		.space	4
 2545              		.section	.bss._ZN3PID15tuningPeakDelayE,"aw",%nobits
 2546              		.align	2
 2547              		.set	.LANCHOR8,. + 0
 2548              		.type	_ZN3PID15tuningPeakDelayE, %object
 2549              		.size	_ZN3PID15tuningPeakDelayE, 4
 2550              	_ZN3PID15tuningPeakDelayE:
 2551 0000 00000000 		.space	4
 2552              		.section	.bss._ZN3PID15tuningStartTempE,"aw",%nobits
 2553              		.align	2
 2554              		.set	.LANCHOR5,. + 0
 2555              		.type	_ZN3PID15tuningStartTempE, %object
 2556              		.size	_ZN3PID15tuningStartTempE, 4
 2557              	_ZN3PID15tuningStartTempE:
 2558 0000 00000000 		.space	4
 2559              		.section	.bss._ZN3PID16tuningTargetTempE,"aw",%nobits
 2560              		.align	2
 2561              		.set	.LANCHOR4,. + 0
 2562              		.type	_ZN3PID16tuningTargetTempE, %object
 2563              		.size	_ZN3PID16tuningTargetTempE, 4
 2564              	_ZN3PID16tuningTargetTempE:
 2565 0000 00000000 		.space	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 46


 2566              		.section	.bss._ZN3PID17tuningHeatingTimeE,"aw",%nobits
 2567              		.align	2
 2568              		.set	.LANCHOR7,. + 0
 2569              		.type	_ZN3PID17tuningHeatingTimeE, %object
 2570              		.size	_ZN3PID17tuningHeatingTimeE, 4
 2571              	_ZN3PID17tuningHeatingTimeE:
 2572 0000 00000000 		.space	4
 2573              		.section	.bss._ZN3PID18tuningTempReadingsE,"aw",%nobits
 2574              		.align	2
 2575              		.set	.LANCHOR0,. + 0
 2576              		.type	_ZN3PID18tuningTempReadingsE, %object
 2577              		.size	_ZN3PID18tuningTempReadingsE, 4
 2578              	_ZN3PID18tuningTempReadingsE:
 2579 0000 00000000 		.space	4
 2580              		.section	.bss._ZN3PID19tuningHeaterOffTempE,"aw",%nobits
 2581              		.align	2
 2582              		.set	.LANCHOR6,. + 0
 2583              		.type	_ZN3PID19tuningHeaterOffTempE, %object
 2584              		.size	_ZN3PID19tuningHeaterOffTempE, 4
 2585              	_ZN3PID19tuningHeaterOffTempE:
 2586 0000 00000000 		.space	4
 2587              		.section	.bss._ZN3PID19tuningReadingsTakenE,"aw",%nobits
 2588              		.align	2
 2589              		.set	.LANCHOR1,. + 0
 2590              		.type	_ZN3PID19tuningReadingsTakenE, %object
 2591              		.size	_ZN3PID19tuningReadingsTakenE, 4
 2592              	_ZN3PID19tuningReadingsTakenE:
 2593 0000 00000000 		.space	4
 2594              		.section	.bss._ZN3PID20tuningPhaseStartTimeE,"aw",%nobits
 2595              		.align	2
 2596              		.set	.LANCHOR13,. + 0
 2597              		.type	_ZN3PID20tuningPhaseStartTimeE, %object
 2598              		.size	_ZN3PID20tuningPhaseStartTimeE, 4
 2599              	_ZN3PID20tuningPhaseStartTimeE:
 2600 0000 00000000 		.space	4
 2601              		.section	.bss._ZN3PID21tuningPeakTemperatureE,"aw",%nobits
 2602              		.align	2
 2603              		.set	.LANCHOR9,. + 0
 2604              		.type	_ZN3PID21tuningPeakTemperatureE, %object
 2605              		.size	_ZN3PID21tuningPeakTemperatureE, 4
 2606              	_ZN3PID21tuningPeakTemperatureE:
 2607 0000 00000000 		.space	4
 2608              		.section	.bss._ZN3PID21tuningReadingIntervalE,"aw",%nobits
 2609              		.align	2
 2610              		.set	.LANCHOR2,. + 0
 2611              		.type	_ZN3PID21tuningReadingIntervalE, %object
 2612              		.size	_ZN3PID21tuningReadingIntervalE, 4
 2613              	_ZN3PID21tuningReadingIntervalE:
 2614 0000 00000000 		.space	4
 2615              		.section	.bss._ZN3PID9tuningPwmE,"aw",%nobits
 2616              		.align	2
 2617              		.set	.LANCHOR3,. + 0
 2618              		.type	_ZN3PID9tuningPwmE, %object
 2619              		.size	_ZN3PID9tuningPwmE, 4
 2620              	_ZN3PID9tuningPwmE:
 2621 0000 00000000 		.space	4
 2622              		.section	.bss.tuningVoltageAccumulator,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 47


 2623              		.align	2
 2624              		.set	.LANCHOR10,. + 0
 2625              		.type	tuningVoltageAccumulator, %object
 2626              		.size	tuningVoltageAccumulator, 4
 2627              	tuningVoltageAccumulator:
 2628 0000 00000000 		.space	4
 2629              		.section	.bss.voltageSamplesTaken,"aw",%nobits
 2630              		.align	2
 2631              		.set	.LANCHOR11,. + 0
 2632              		.type	voltageSamplesTaken, %object
 2633              		.size	voltageSamplesTaken, 4
 2634              	voltageSamplesTaken:
 2635 0000 00000000 		.space	4
 2636              		.section	.rodata._ZN3PID12DoTuningStepEv.str1.4,"aMS",%progbits,1
 2637              		.align	2
 2638              	.LC19:
 2639 0000 4175746F 		.ascii	"Auto tune phase 1, heater on\012\000"
 2639      2074756E 
 2639      65207068 
 2639      61736520 
 2639      312C2068 
 2640 001e 0000     		.space	2
 2641              	.LC20:
 2642 0020 4175746F 		.ascii	"Auto tune cancelled because starting temperature is"
 2642      2074756E 
 2642      65206361 
 2642      6E63656C 
 2642      6C656420 
 2643 0053 206E6F74 		.ascii	" not stable\012\000"
 2643      20737461 
 2643      626C650A 
 2643      00
 2644              	.LC21:
 2645 0060 4175746F 		.ascii	"Auto tune cancelled because temperature is not incr"
 2645      2074756E 
 2645      65206361 
 2645      6E63656C 
 2645      6C656420 
 2646 0093 65617369 		.ascii	"easing\012\000"
 2646      6E670A00 
 2647 009b 00       		.space	1
 2648              	.LC22:
 2649 009c 4175746F 		.ascii	"Auto tune cancelled because target temperature was "
 2649      2074756E 
 2649      65206361 
 2649      6E63656C 
 2649      6C656420 
 2650 00cf 6E6F7420 		.ascii	"not reached\012\000"
 2650      72656163 
 2650      6865640A 
 2650      00
 2651              	.LC23:
 2652 00dc 4175746F 		.ascii	"Auto tune phase 2, heater off\012\000"
 2652      2074756E 
 2652      65207068 
 2652      61736520 
 2652      322C2068 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 48


 2653 00fb 00       		.space	1
 2654              	.LC24:
 2655 00fc 4175746F 		.ascii	"Auto tune cancelled because temperature is not fall"
 2655      2074756E 
 2655      65206361 
 2655      6E63656C 
 2655      6C656420 
 2656 012f 696E670A 		.ascii	"ing\012\000"
 2656      00
 2657              	.LC25:
 2658 0134 4174206E 		.ascii	"At no peak found\000"
 2658      6F207065 
 2658      616B2066 
 2658      6F756E64 
 2658      00
 2659 0145 000000   		.space	3
 2660              	.LC26:
 2661 0148 4175746F 		.ascii	"Auto tune cancelled because temperature peak was no"
 2661      2074756E 
 2661      65206361 
 2661      6E63656C 
 2661      6C656420 
 2662 017b 74206964 		.ascii	"t identified\012\000"
 2662      656E7469 
 2662      66696564 
 2662      0A00
 2663 0189 000000   		.space	3
 2664              	.LC27:
 2665 018c 4175746F 		.ascii	"Auto tune phase 3, peak temperature was %.1f\012\000"
 2665      2074756E 
 2665      65207068 
 2665      61736520 
 2665      332C2070 
 2666              		.section	.rodata._ZN3PID13DisplayBufferEPKc.str1.4,"aMS",%progbits,1
 2667              		.align	2
 2668              	.LC13:
 2669 0000 25733A20 		.ascii	"%s: interval %.1f sec, readings\000"
 2669      696E7465 
 2669      7276616C 
 2669      20252E31 
 2669      66207365 
 2670              	.LC14:
 2671 0020 20252E31 		.ascii	" %.1f\000"
 2671      6600
 2672 0026 0000     		.space	2
 2673              	.LC15:
 2674 0028 0A00     		.ascii	"\012\000"
 2675              		.section	.rodata._ZN3PID13StartAutoTuneEffRK9StringRef.str1.4,"aMS",%progbits,1
 2676              		.align	2
 2677              	.LC6:
 2678 0000 4572726F 		.ascii	"Error: heater %d cannot be auto tuned while it is d"
 2678      723A2068 
 2678      65617465 
 2678      72202564 
 2678      2063616E 
 2679 0033 69736162 		.ascii	"isabled\000"
 2679      6C656400 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 49


 2680 003b 00       		.space	1
 2681              	.LC7:
 2682 003c 4572726F 		.ascii	"Error: heater %d must be off and cold before auto t"
 2682      723A2068 
 2682      65617465 
 2682      72202564 
 2682      206D7573 
 2683 006f 756E696E 		.ascii	"uning it\000"
 2683      67206974 
 2683      00
 2684              	.LC8:
 2685 0078 4572726F 		.ascii	"Error: heater %d reported error '%s' at start of au"
 2685      723A2068 
 2685      65617465 
 2685      72202564 
 2685      20726570 
 2686 00ab 746F2074 		.ascii	"to tuning\000"
 2686      756E696E 
 2686      6700
 2687 00b5 000000   		.space	3
 2688              	.LC9:
 2689 00b8 4175746F 		.ascii	"Auto tuning heater %d using target temperature %.1f"
 2689      2074756E 
 2689      696E6720 
 2689      68656174 
 2689      65722025 
 2690 00eb C2B04320 		.ascii	"\302\260C and PWM %.2f - do not leave printer unatt"
 2690      616E6420 
 2690      50574D20 
 2690      252E3266 
 2690      202D2064 
 2691 0118 656E6465 		.ascii	"ended\000"
 2691      6400
 2692              		.section	.rodata._ZN3PID14CalculateModelEv.str1.4,"aMS",%progbits,1
 2693              		.align	2
 2694              	.LC16:
 2695 0000 41742063 		.ascii	"At completion\000"
 2695      6F6D706C 
 2695      6574696F 
 2695      6E00
 2696 000e 0000     		.space	2
 2697              	.LC17:
 2698 0010 4175746F 		.ascii	"Auto tune heater %d completed in %lu sec\012Use M30"
 2698      2074756E 
 2698      65206865 
 2698      61746572 
 2698      20256420 
 2699 0040 37204825 		.ascii	"7 H%d to see the result, or M500 to save the result"
 2699      6420746F 
 2699      20736565 
 2699      20746865 
 2699      20726573 
 2700 0073 20696E20 		.ascii	" in config-override.g\012\000"
 2700      636F6E66 
 2700      69672D6F 
 2700      76657272 
 2700      6964652E 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 50


 2701 008a 0000     		.space	2
 2702              	.LC18:
 2703 008c 4175746F 		.ascii	"Auto tune of heater %u failed due to bad curve fit "
 2703      2074756E 
 2703      65206F66 
 2703      20686561 
 2703      74657220 
 2704 00bf 28413D25 		.ascii	"(A=%.1f, C=%.1f, D=%.1f)\012\000"
 2704      2E31662C 
 2704      20433D25 
 2704      2E31662C 
 2704      20443D25 
 2705              		.section	.rodata._ZN3PID17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2706              		.align	2
 2707              	.LC10:
 2708 0000 48656174 		.ascii	"Heater %d is being tuned, phase %u of %u\000"
 2708      65722025 
 2708      64206973 
 2708      20626569 
 2708      6E672074 
 2709 0029 000000   		.space	3
 2710              	.LC11:
 2711 002c 48656174 		.ascii	"Heater %d tuning succeeded, use M307 H%d to see res"
 2711      65722025 
 2711      64207475 
 2711      6E696E67 
 2711      20737563 
 2712 005f 756C7400 		.ascii	"ult\000"
 2713 0063 00       		.space	1
 2714              	.LC12:
 2715 0064 48656174 		.ascii	"Heater %d tuning failed\000"
 2715      65722025 
 2715      64207475 
 2715      6E696E67 
 2715      20666169 
 2716              		.section	.rodata._ZN3PID20SetActiveTemperatureEf.str1.4,"aMS",%progbits,1
 2717              		.align	2
 2718              	.LC4:
 2719 0000 54656D70 		.ascii	"Temperature %.1f\302\260C too high for heater %d\012"
 2719      65726174 
 2719      75726520 
 2719      252E3166 
 2719      C2B04320 
 2720 002b 00       		.ascii	"\000"
 2721              	.LC5:
 2722 002c 54656D70 		.ascii	"Temperature %.1f\302\260C too low for heater %d\012"
 2722      65726174 
 2722      75726520 
 2722      252E3166 
 2722      C2B04320 
 2723 0056 00       		.ascii	"\000"
 2724              		.section	.rodata._ZN3PID4SpinEv.str1.4,"aMS",%progbits,1
 2725              		.align	2
 2726              	.LC28:
 2727 0000 54656D70 		.ascii	"Temperature reading fault on heater %d: %s\012\000"
 2727      65726174 
 2727      75726520 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 51


 2727      72656164 
 2727      696E6720 
 2728              	.LC29:
 2729 002c 48656174 		.ascii	"Heating fault on heater %d, temperature rising much"
 2729      696E6720 
 2729      6661756C 
 2729      74206F6E 
 2729      20686561 
 2730 005f 206D6F72 		.ascii	" more slowly than the expected %.1f\302\260C/sec\012"
 2730      6520736C 
 2730      6F776C79 
 2730      20746861 
 2730      6E207468 
 2731 008a 00       		.ascii	"\000"
 2732 008b 00       		.space	1
 2733              	.LC30:
 2734 008c 48656174 		.ascii	"Heating fault on heater %d, temperature excursion e"
 2734      696E6720 
 2734      6661756C 
 2734      74206F6E 
 2734      20686561 
 2735 00bf 78636565 		.ascii	"xceeded %.1f\302\260C\012\000"
 2735      64656420 
 2735      252E3166 
 2735      C2B0430A 
 2735      00
 2736              	.LC31:
 2737 00d0 48656174 		.ascii	"Heating fault on heater %d\012\000"
 2737      696E6720 
 2737      6661756C 
 2737      74206F6E 
 2737      20686561 
 2738              		.section	.rodata._ZN3PID8SetModelEfffffbbt.str1.4,"aMS",%progbits,1
 2739              		.align	2
 2740              	.LC2:
 2741 0000 48656174 		.ascii	"Heater %u appears to be over-powered. If left on at"
 2741      65722025 
 2741      75206170 
 2741      70656172 
 2741      7320746F 
 2742 0033 2066756C 		.ascii	" full power, its temperature is predicted to reach "
 2742      6C20706F 
 2742      7765722C 
 2742      20697473 
 2742      2074656D 
 2743 0066 2564432E 		.ascii	"%dC.\012\000"
 2743      0A00
 2744              		.section	.rodata._ZN3PID8SwitchOnEv.part.15.str1.4,"aMS",%progbits,1
 2745              		.align	2
 2746              	.LC0:
 2747 0000 48656174 		.ascii	"Heater %d not switched on due to temperature fault\012"
 2747      65722025 
 2747      64206E6F 
 2747      74207377 
 2747      69746368 
 2748 0033 00       		.ascii	"\000"
 2749              	.LC1:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cclJhuSw.s 			page 52


 2750 0034 48656174 		.ascii	"Heater %d switched on\012\000"
 2750      65722025 
 2750      64207377 
 2750      69746368 
 2750      6564206F 
 2751              		.section	.rodata._ZN3PID9SwitchOffEv.str1.4,"aMS",%progbits,1
 2752              		.align	2
 2753              	.LC3:
 2754 0000 48656174 		.ascii	"Heater %d switched off\012\000"
 2754      65722025 
 2754      64207377 
 2754      69746368 
 2754      6564206F 
 2755              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
