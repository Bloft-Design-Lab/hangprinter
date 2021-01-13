ARM GAS  /tmp/cc5CpNMt.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"Pid.cpp"
  12              		.global	__aeabi_fadd
  13              		.global	__aeabi_fcmplt
  14              		.global	__aeabi_fcmpgt
  15              		.section	.text._ZN3PID8SwitchOnEv.part.14,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  22              		.type	_ZN3PID8SwitchOnEv.part.14, %function
  23              	_ZN3PID8SwitchOnEv.part.14:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  27 0004 90F87C50 		ldrb	r5, [r0, #124]	@ zero_extendqisi2
  28 0008 2DB9     		cbnz	r5, .L2
  29 000a 2A4B     		ldr	r3, .L25
  30 000c 5B6C     		ldr	r3, [r3, #68]	@ unaligned
  31 000e 9A06     		lsls	r2, r3, #26
  32 0010 44D4     		bmi	.L22
  33              	.L1:
  34 0012 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  35              	.L2:
  36 0016 90F87E30 		ldrb	r3, [r0, #126]	@ zero_extendqisi2
  37 001a 83BB     		cbnz	r3, .L23
  38 001c D0F80C80 		ldr	r8, [r0, #12]	@ float
  39              	.L6:
  40 0020 8769     		ldr	r7, [r0, #24]	@ float
  41 0022 4FF07E51 		mov	r1, #1065353216
  42 0026 0446     		mov	r4, r0
  43 0028 3846     		mov	r0, r7
  44 002a FFF7FEFF 		bl	__aeabi_fadd
  45 002e 4146     		mov	r1, r8
  46 0030 FFF7FEFF 		bl	__aeabi_fcmplt
  47 0034 0646     		mov	r6, r0
  48 0036 28BB     		cbnz	r0, .L7
  49 0038 4FF07E51 		mov	r1, #1065353216
  50 003c 4046     		mov	r0, r8
  51 003e FFF7FEFF 		bl	__aeabi_fadd
  52 0042 0146     		mov	r1, r0
  53 0044 3846     		mov	r0, r7
  54 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
  55 004a 0028     		cmp	r0, #0
  56 004c 14BF     		ite	ne
  57 004e 0423     		movne	r3, #4
ARM GAS  /tmp/cc5CpNMt.s 			page 2


  58 0050 0523     		moveq	r3, #5
  59 0052 9D42     		cmp	r5, r3
  60 0054 84F87C30 		strb	r3, [r4, #124]
  61 0058 18BF     		it	ne
  62 005a A4F87860 		strhne	r6, [r4, #120]	@ movhi
  63 005e 27D0     		beq	.L24
  64              	.L11:
  65 0060 144B     		ldr	r3, .L25
  66 0062 5B6C     		ldr	r3, [r3, #68]
  67 0064 9B06     		lsls	r3, r3, #26
  68 0066 D4D5     		bpl	.L1
  69 0068 012D     		cmp	r5, #1
  70 006a D2D1     		bne	.L1
  71 006c 94F97A30 		ldrsb	r3, [r4, #122]
  72 0070 2068     		ldr	r0, [r4]
  73 0072 114A     		ldr	r2, .L25+4
  74 0074 3521     		movs	r1, #53
  75 0076 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  76 007a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  77              	.L23:
  78 007e D0F80880 		ldr	r8, [r0, #8]	@ float
  79 0082 CDE7     		b	.L6
  80              	.L7:
  81 0084 0323     		movs	r3, #3
  82 0086 9D42     		cmp	r5, r3
  83 0088 84F87C30 		strb	r3, [r4, #124]
  84 008c C1D0     		beq	.L1
  85 008e 0023     		movs	r3, #0
  86 0090 A4F87830 		strh	r3, [r4, #120]	@ movhi
  87 0094 FFF7FEFF 		bl	millis
  88 0098 2067     		str	r0, [r4, #112]
  89 009a E1E7     		b	.L11
  90              	.L22:
  91 009c 90F97A30 		ldrsb	r3, [r0, #122]
  92 00a0 064A     		ldr	r2, .L25+8
  93 00a2 0068     		ldr	r0, [r0]
  94 00a4 40F2B521 		movw	r1, #693
  95 00a8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  96 00ac FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  97              	.L24:
  98 00b0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  99              	.L26:
 100              		.align	2
 101              	.L25:
 102 00b4 00000000 		.word	reprap
 103 00b8 34000000 		.word	.LC1
 104 00bc 00000000 		.word	.LC0
 105              		.size	_ZN3PID8SwitchOnEv.part.14, .-_ZN3PID8SwitchOnEv.part.14
 106              		.section	.text._ZN3PIDC2ER8Platforma,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_ZN3PIDC2ER8Platforma
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	_ZN3PIDC2ER8Platforma, %function
ARM GAS  /tmp/cc5CpNMt.s 			page 3


 115              	_ZN3PIDC2ER8Platforma:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118 0000 70B5     		push	{r4, r5, r6, lr}
 119 0002 0025     		movs	r5, #0
 120 0004 0446     		mov	r4, r0
 121 0006 80E82200 		stm	r0, {r1, r5}
 122 000a 1646     		mov	r6, r2
 123 000c 3030     		adds	r0, r0, #48
 124 000e FFF7FEFF 		bl	_ZN5FopDtC1Ev
 125 0012 0123     		movs	r3, #1
 126 0014 84F87A60 		strb	r6, [r4, #122]
 127 0018 84F87D50 		strb	r5, [r4, #125]
 128 001c 84F87C30 		strb	r3, [r4, #124]
 129 0020 2046     		mov	r0, r4
 130 0022 70BD     		pop	{r4, r5, r6, pc}
 131              		.size	_ZN3PIDC2ER8Platforma, .-_ZN3PIDC2ER8Platforma
 132              		.global	_ZN3PIDC1ER8Platforma
 133              		.thumb_set _ZN3PIDC1ER8Platforma,_ZN3PIDC2ER8Platforma
 134              		.section	.text._ZN3PID4InitEfffbb,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN3PID4InitEfffbb
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu softvfp
 142              		.type	_ZN3PID4InitEfffbb, %function
 143              	_ZN3PID4InitEfffbb:
 144              		@ args = 8, pretend = 0, frame = 8
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 147 0004 0446     		mov	r4, r0
 148 0006 89B0     		sub	sp, sp, #36
 149 0008 274E     		ldr	r6, .L38
 150 000a 284D     		ldr	r5, .L38+4
 151 000c 2848     		ldr	r0, .L38+8
 152 000e 9A46     		mov	r10, r3
 153 0010 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 154 0014 8846     		mov	r8, r1
 155 0016 2661     		str	r6, [r4, #16]	@ float
 156 0018 6561     		str	r5, [r4, #20]	@ float
 157 001a 94F97A10 		ldrsb	r1, [r4, #122]
 158 001e C068     		ldr	r0, [r0, #12]
 159 0020 0026     		movs	r6, #0
 160 0022 0025     		movs	r5, #0
 161 0024 9146     		mov	r9, r2
 162 0026 9DF848B0 		ldrb	fp, [sp, #72]	@ zero_extendqisi2
 163 002a 0793     		str	r3, [sp, #28]
 164 002c 4FF07E57 		mov	r7, #1065353216
 165 0030 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 166 0034 079B     		ldr	r3, [sp, #28]
 167 0036 0190     		str	r0, [sp, #4]	@ float
 168 0038 0493     		str	r3, [sp, #16]
 169 003a 4A46     		mov	r2, r9
 170 003c 5346     		mov	r3, r10
 171 003e 4146     		mov	r1, r8
ARM GAS  /tmp/cc5CpNMt.s 			page 4


 172 0040 CDF80CB0 		str	fp, [sp, #12]
 173 0044 04F13000 		add	r0, r4, #48
 174 0048 0596     		str	r6, [sp, #20]
 175 004a 0295     		str	r5, [sp, #8]	@ float
 176 004c 0097     		str	r7, [sp]	@ float
 177 004e FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 178 0052 0121     		movs	r1, #1
 179 0054 174A     		ldr	r2, .L38+12
 180 0056 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 181 005a 84F87B60 		strb	r6, [r4, #123]
 182 005e E662     		str	r6, [r4, #44]
 183 0060 A560     		str	r5, [r4, #8]	@ float
 184 0062 E560     		str	r5, [r4, #12]	@ float
 185 0064 6566     		str	r5, [r4, #100]	@ float
 186 0066 84F88060 		strb	r6, [r4, #128]
 187 006a 84F87E60 		strb	r6, [r4, #126]
 188 006e 84F87F60 		strb	r6, [r4, #127]
 189 0072 A566     		str	r5, [r4, #104]	@ float
 190 0074 E566     		str	r5, [r4, #108]	@ float
 191 0076 A4F87860 		strh	r6, [r4, #120]	@ movhi
 192 007a 84F87C10 		strb	r1, [r4, #124]
 193 007e A261     		str	r2, [r4, #24]	@ float
 194 0080 53B1     		cbz	r3, .L30
 195 0082 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 196 0086 2068     		ldr	r0, [r4]
 197 0088 94F97A10 		ldrsb	r1, [r4, #122]
 198 008c 53B9     		cbnz	r3, .L37
 199 008e 2A46     		mov	r2, r5
 200              	.L31:
 201 0090 B4F84430 		ldrh	r3, [r4, #68]
 202 0094 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 203              	.L30:
 204 0098 FFF7FEFF 		bl	millis
 205 009c 6067     		str	r0, [r4, #116]
 206 009e 09B0     		add	sp, sp, #36
 207              		@ sp needed
 208 00a0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 209              	.L37:
 210 00a4 3A46     		mov	r2, r7
 211 00a6 F3E7     		b	.L31
 212              	.L39:
 213              		.align	2
 214              	.L38:
 215 00a8 00007041 		.word	1097859072
 216 00ac 0000A040 		.word	1084227584
 217 00b0 00000000 		.word	reprap
 218 00b4 0000FA44 		.word	1157234688
 219              		.size	_ZN3PID4InitEfffbb, .-_ZN3PID4InitEfffbb
 220              		.section	.text._ZN3PID5ResetEv,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZN3PID5ResetEv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu softvfp
 228              		.type	_ZN3PID5ResetEv, %function
ARM GAS  /tmp/cc5CpNMt.s 			page 5


 229              	_ZN3PID5ResetEv:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 0023     		movs	r3, #0
 234 0002 0022     		movs	r2, #0
 235 0004 10B4     		push	{r4}
 236 0006 0124     		movs	r4, #1
 237 0008 0A49     		ldr	r1, .L42
 238 000a 80F87C40 		strb	r4, [r0, #124]
 239 000e 8161     		str	r1, [r0, #24]	@ float
 240 0010 80F87B30 		strb	r3, [r0, #123]
 241 0014 C362     		str	r3, [r0, #44]
 242 0016 80F88030 		strb	r3, [r0, #128]
 243 001a 80F87E30 		strb	r3, [r0, #126]
 244 001e 80F87F30 		strb	r3, [r0, #127]
 245 0022 A0F87830 		strh	r3, [r0, #120]	@ movhi
 246 0026 8260     		str	r2, [r0, #8]	@ float
 247 0028 C260     		str	r2, [r0, #12]	@ float
 248 002a 4266     		str	r2, [r0, #100]	@ float
 249 002c 8266     		str	r2, [r0, #104]	@ float
 250 002e C266     		str	r2, [r0, #108]	@ float
 251 0030 10BC     		pop	{r4}
 252 0032 7047     		bx	lr
 253              	.L43:
 254              		.align	2
 255              	.L42:
 256 0034 0000FA44 		.word	1157234688
 257              		.size	_ZN3PID5ResetEv, .-_ZN3PID5ResetEv
 258              		.global	__aeabi_fsub
 259              		.global	__aeabi_fmul
 260              		.global	__aeabi_f2iz
 261              		.section	.text._ZN3PID8SetModelEfffffbbt,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_ZN3PID8SetModelEfffffbbt
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu softvfp
 269              		.type	_ZN3PID8SetModelEfffffbbt, %function
 270              	_ZN3PID8SetModelEfffffbbt:
 271              		@ args = 20, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 274 0004 0446     		mov	r4, r0
 275 0006 3448     		ldr	r0, .L54
 276 0008 87B0     		sub	sp, sp, #28
 277 000a 0F46     		mov	r7, r1
 278 000c C068     		ldr	r0, [r0, #12]
 279 000e 94F97A10 		ldrsb	r1, [r4, #122]
 280 0012 1546     		mov	r5, r2
 281 0014 9846     		mov	r8, r3
 282 0016 9DF848B0 		ldrb	fp, [sp, #72]	@ zero_extendqisi2
 283 001a 9DF84C90 		ldrb	r9, [sp, #76]	@ zero_extendqisi2
 284 001e BDF850A0 		ldrh	r10, [sp, #80]
 285 0022 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
ARM GAS  /tmp/cc5CpNMt.s 			page 6


 286 0026 119B     		ldr	r3, [sp, #68]	@ float
 287 0028 2A46     		mov	r2, r5
 288 002a 0293     		str	r3, [sp, #8]	@ float
 289 002c 109B     		ldr	r3, [sp, #64]	@ float
 290 002e 0190     		str	r0, [sp, #4]	@ float
 291 0030 0093     		str	r3, [sp]	@ float
 292 0032 0646     		mov	r6, r0
 293 0034 CDF814A0 		str	r10, [sp, #20]
 294 0038 CDF81090 		str	r9, [sp, #16]
 295 003c CDF80CB0 		str	fp, [sp, #12]
 296 0040 4346     		mov	r3, r8
 297 0042 3946     		mov	r1, r7
 298 0044 04F13000 		add	r0, r4, #48
 299 0048 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffffbbt
 300 004c 0546     		mov	r5, r0
 301 004e B8B1     		cbz	r0, .L45
 302 0050 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 303 0054 C3B1     		cbz	r3, .L46
 304 0056 3846     		mov	r0, r7
 305 0058 2049     		ldr	r1, .L54+4
 306 005a FFF7FEFF 		bl	__aeabi_fadd
 307 005e 1F49     		ldr	r1, .L54+4
 308 0060 0746     		mov	r7, r0
 309 0062 3046     		mov	r0, r6
 310 0064 FFF7FEFF 		bl	__aeabi_fsub
 311 0068 4FF07F51 		mov	r1, #1069547520
 312 006c FFF7FEFF 		bl	__aeabi_fmul
 313 0070 1B49     		ldr	r1, .L54+8
 314 0072 FFF7FEFF 		bl	__aeabi_fadd
 315 0076 0146     		mov	r1, r0
 316 0078 3846     		mov	r0, r7
 317 007a FFF7FEFF 		bl	__aeabi_fcmpgt
 318 007e E8B9     		cbnz	r0, .L53
 319              	.L45:
 320 0080 2846     		mov	r0, r5
 321 0082 07B0     		add	sp, sp, #28
 322              		@ sp needed
 323 0084 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 324              	.L46:
 325 0088 0120     		movs	r0, #1
 326 008a 0022     		movs	r2, #0
 327 008c 84F87C00 		strb	r0, [r4, #124]
 328 0090 2846     		mov	r0, r5
 329 0092 1449     		ldr	r1, .L54+12
 330 0094 84F87B30 		strb	r3, [r4, #123]
 331 0098 E362     		str	r3, [r4, #44]
 332 009a 84F88030 		strb	r3, [r4, #128]
 333 009e 84F87E30 		strb	r3, [r4, #126]
 334 00a2 84F87F30 		strb	r3, [r4, #127]
 335 00a6 A4F87830 		strh	r3, [r4, #120]	@ movhi
 336 00aa A260     		str	r2, [r4, #8]	@ float
 337 00ac E260     		str	r2, [r4, #12]	@ float
 338 00ae 6266     		str	r2, [r4, #100]	@ float
 339 00b0 A266     		str	r2, [r4, #104]	@ float
 340 00b2 E266     		str	r2, [r4, #108]	@ float
 341 00b4 A161     		str	r1, [r4, #24]	@ float
 342 00b6 07B0     		add	sp, sp, #28
ARM GAS  /tmp/cc5CpNMt.s 			page 7


 343              		@ sp needed
 344 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 345              	.L53:
 346 00bc 3846     		mov	r0, r7
 347 00be FFF7FEFF 		bl	__aeabi_f2iz
 348 00c2 2268     		ldr	r2, [r4]
 349 00c4 94F97A30 		ldrsb	r3, [r4, #122]
 350 00c8 40F2B521 		movw	r1, #693
 351 00cc 0090     		str	r0, [sp]
 352 00ce 1046     		mov	r0, r2
 353 00d0 054A     		ldr	r2, .L54+16
 354 00d2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 355 00d6 D3E7     		b	.L45
 356              	.L55:
 357              		.align	2
 358              	.L54:
 359 00d8 00000000 		.word	reprap
 360 00dc 0000C841 		.word	1103626240
 361 00e0 00004842 		.word	1112014848
 362 00e4 0000FA44 		.word	1157234688
 363 00e8 00000000 		.word	.LC2
 364              		.size	_ZN3PID8SetModelEfffffbbt, .-_ZN3PID8SetModelEfffffbbt
 365              		.section	.text._ZNK3PID26GetHighestTemperatureLimitEv,"ax",%progbits
 366              		.align	1
 367              		.p2align 2,,3
 368              		.global	_ZNK3PID26GetHighestTemperatureLimitEv
 369              		.syntax unified
 370              		.thumb
 371              		.thumb_func
 372              		.fpu softvfp
 373              		.type	_ZNK3PID26GetHighestTemperatureLimitEv, %function
 374              	_ZNK3PID26GetHighestTemperatureLimitEv:
 375              		@ args = 0, pretend = 0, frame = 0
 376              		@ frame_needed = 0, uses_anonymous_args = 0
 377              		@ link register save eliminated.
 378 0000 024B     		ldr	r3, .L57
 379 0002 90F97A10 		ldrsb	r1, [r0, #122]
 380 0006 D868     		ldr	r0, [r3, #12]
 381 0008 FFF7FEBF 		b	_ZNK4Heat26GetHighestTemperatureLimitEa
 382              	.L58:
 383              		.align	2
 384              	.L57:
 385 000c 00000000 		.word	reprap
 386              		.size	_ZNK3PID26GetHighestTemperatureLimitEv, .-_ZNK3PID26GetHighestTemperatureLimitEv
 387              		.section	.text._ZNK3PID25GetLowestTemperatureLimitEv,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	_ZNK3PID25GetLowestTemperatureLimitEv
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu softvfp
 395              		.type	_ZNK3PID25GetLowestTemperatureLimitEv, %function
 396              	_ZNK3PID25GetLowestTemperatureLimitEv:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  /tmp/cc5CpNMt.s 			page 8


 400 0000 024B     		ldr	r3, .L60
 401 0002 90F97A10 		ldrsb	r1, [r0, #122]
 402 0006 D868     		ldr	r0, [r3, #12]
 403 0008 FFF7FEBF 		b	_ZNK4Heat25GetLowestTemperatureLimitEa
 404              	.L61:
 405              		.align	2
 406              	.L60:
 407 000c 00000000 		.word	reprap
 408              		.size	_ZNK3PID25GetLowestTemperatureLimitEv, .-_ZNK3PID25GetLowestTemperatureLimitEv
 409              		.section	.text._ZN3PID15ReadTemperatureEv,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	_ZN3PID15ReadTemperatureEv
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu softvfp
 417              		.type	_ZN3PID15ReadTemperatureEv, %function
 418              	_ZN3PID15ReadTemperatureEv:
 419              		@ args = 0, pretend = 0, frame = 8
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421 0000 0021     		movs	r1, #0
 422 0002 10B5     		push	{r4, lr}
 423 0004 074B     		ldr	r3, .L64
 424 0006 82B0     		sub	sp, sp, #8
 425 0008 02AA     		add	r2, sp, #8
 426 000a 0446     		mov	r4, r0
 427 000c 02F8011D 		strb	r1, [r2, #-1]!
 428 0010 90F97A10 		ldrsb	r1, [r0, #122]
 429 0014 D868     		ldr	r0, [r3, #12]
 430 0016 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 431 001a A061     		str	r0, [r4, #24]	@ float
 432 001c 9DF80700 		ldrb	r0, [sp, #7]	@ zero_extendqisi2
 433 0020 02B0     		add	sp, sp, #8
 434              		@ sp needed
 435 0022 10BD     		pop	{r4, pc}
 436              	.L65:
 437              		.align	2
 438              	.L64:
 439 0024 00000000 		.word	reprap
 440              		.size	_ZN3PID15ReadTemperatureEv, .-_ZN3PID15ReadTemperatureEv
 441              		.section	.text._ZN3PID8SwitchOnEv,"ax",%progbits
 442              		.align	1
 443              		.p2align 2,,3
 444              		.global	_ZN3PID8SwitchOnEv
 445              		.syntax unified
 446              		.thumb
 447              		.thumb_func
 448              		.fpu softvfp
 449              		.type	_ZN3PID8SwitchOnEv, %function
 450              	_ZN3PID8SwitchOnEv:
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453              		@ link register save eliminated.
 454 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 455 0004 0BB1     		cbz	r3, .L66
 456 0006 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
ARM GAS  /tmp/cc5CpNMt.s 			page 9


 457              	.L66:
 458 000a 7047     		bx	lr
 459              		.size	_ZN3PID8SwitchOnEv, .-_ZN3PID8SwitchOnEv
 460              		.section	.text._ZN3PID9SwitchOffEv,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	_ZN3PID9SwitchOffEv
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	_ZN3PID9SwitchOffEv, %function
 469              	_ZN3PID9SwitchOffEv:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472 0000 0022     		movs	r2, #0
 473 0002 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 474 0006 8266     		str	r2, [r0, #104]	@ float
 475 0008 E3B1     		cbz	r3, .L79
 476 000a 70B5     		push	{r4, r5, r6, lr}
 477 000c 90F87D40 		ldrb	r4, [r0, #125]	@ zero_extendqisi2
 478 0010 0368     		ldr	r3, [r0]
 479 0012 90F97A10 		ldrsb	r1, [r0, #122]
 480 0016 0CB1     		cbz	r4, .L71
 481 0018 4FF07E52 		mov	r2, #1065353216
 482              	.L71:
 483 001c 0446     		mov	r4, r0
 484 001e 1846     		mov	r0, r3
 485 0020 B4F84430 		ldrh	r3, [r4, #68]
 486 0024 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 487 0028 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 488 002c 052B     		cmp	r3, #5
 489 002e 0AD8     		bhi	.L82
 490 0030 012B     		cmp	r3, #1
 491 0032 06D9     		bls	.L68
 492              	.L84:
 493 0034 0122     		movs	r2, #1
 494 0036 0E4B     		ldr	r3, .L85
 495 0038 84F87C20 		strb	r2, [r4, #124]
 496 003c 5B6C     		ldr	r3, [r3, #68]
 497 003e 9B06     		lsls	r3, r3, #26
 498 0040 0DD4     		bmi	.L83
 499              	.L68:
 500 0042 70BD     		pop	{r4, r5, r6, pc}
 501              	.L79:
 502 0044 7047     		bx	lr
 503              	.L82:
 504 0046 0B4D     		ldr	r5, .L85+4
 505 0048 0421     		movs	r1, #4
 506 004a 2868     		ldr	r0, [r5]
 507 004c FFF7FEFF 		bl	_ZdlPvj
 508 0050 0022     		movs	r2, #0
 509 0052 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 510 0056 2A60     		str	r2, [r5]
 511 0058 012B     		cmp	r3, #1
 512 005a EBD8     		bhi	.L84
 513 005c F1E7     		b	.L68
ARM GAS  /tmp/cc5CpNMt.s 			page 10


 514              	.L83:
 515 005e 94F97A30 		ldrsb	r3, [r4, #122]
 516 0062 2068     		ldr	r0, [r4]
 517 0064 044A     		ldr	r2, .L85+8
 518 0066 3521     		movs	r1, #53
 519 0068 BDE87040 		pop	{r4, r5, r6, lr}
 520 006c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 521              	.L86:
 522              		.align	2
 523              	.L85:
 524 0070 00000000 		.word	reprap
 525 0074 00000000 		.word	.LANCHOR0
 526 0078 00000000 		.word	.LC3
 527              		.size	_ZN3PID9SwitchOffEv, .-_ZN3PID9SwitchOffEv
 528              		.global	__aeabi_f2d
 529              		.section	.text._ZN3PID20SetActiveTemperatureEf,"ax",%progbits
 530              		.align	1
 531              		.p2align 2,,3
 532              		.global	_ZN3PID20SetActiveTemperatureEf
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu softvfp
 537              		.type	_ZN3PID20SetActiveTemperatureEf, %function
 538              	_ZN3PID20SetActiveTemperatureEf:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541 0000 70B5     		push	{r4, r5, r6, lr}
 542 0002 0446     		mov	r4, r0
 543 0004 244E     		ldr	r6, .L106
 544 0006 84B0     		sub	sp, sp, #16
 545 0008 0D46     		mov	r5, r1
 546 000a F068     		ldr	r0, [r6, #12]
 547 000c 94F97A10 		ldrsb	r1, [r4, #122]
 548 0010 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 549 0014 0146     		mov	r1, r0
 550 0016 2846     		mov	r0, r5
 551 0018 FFF7FEFF 		bl	__aeabi_fcmpgt
 552 001c D0B9     		cbnz	r0, .L104
 553 001e 94F97A10 		ldrsb	r1, [r4, #122]
 554 0022 F068     		ldr	r0, [r6, #12]
 555 0024 FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 556 0028 0146     		mov	r1, r0
 557 002a 2846     		mov	r0, r5
 558 002c FFF7FEFF 		bl	__aeabi_fcmplt
 559 0030 08BB     		cbnz	r0, .L105
 560 0032 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 561 0036 A560     		str	r5, [r4, #8]	@ float
 562 0038 022B     		cmp	r3, #2
 563 003a 1AD9     		bls	.L87
 564 003c 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 565 0040 BBB1     		cbz	r3, .L87
 566 0042 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 567 0046 A3B1     		cbz	r3, .L87
 568 0048 2046     		mov	r0, r4
 569 004a 04B0     		add	sp, sp, #16
 570              		@ sp needed
ARM GAS  /tmp/cc5CpNMt.s 			page 11


 571 004c BDE87040 		pop	{r4, r5, r6, lr}
 572 0050 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
 573              	.L104:
 574 0054 94F97A30 		ldrsb	r3, [r4, #122]
 575 0058 2846     		mov	r0, r5
 576 005a 0293     		str	r3, [sp, #8]
 577 005c FFF7FEFF 		bl	__aeabi_f2d
 578 0060 2368     		ldr	r3, [r4]
 579 0062 0E4A     		ldr	r2, .L106+4
 580 0064 CDE90001 		strd	r0, [sp]
 581 0068 1846     		mov	r0, r3
 582 006a 40F2B511 		movw	r1, #437
 583 006e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 584              	.L87:
 585 0072 04B0     		add	sp, sp, #16
 586              		@ sp needed
 587 0074 70BD     		pop	{r4, r5, r6, pc}
 588              	.L105:
 589 0076 94F97A30 		ldrsb	r3, [r4, #122]
 590 007a 2846     		mov	r0, r5
 591 007c 0293     		str	r3, [sp, #8]
 592 007e FFF7FEFF 		bl	__aeabi_f2d
 593 0082 2368     		ldr	r3, [r4]
 594 0084 064A     		ldr	r2, .L106+8
 595 0086 CDE90001 		strd	r0, [sp]
 596 008a 1846     		mov	r0, r3
 597 008c 40F2B511 		movw	r1, #437
 598 0090 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 599 0094 04B0     		add	sp, sp, #16
 600              		@ sp needed
 601 0096 70BD     		pop	{r4, r5, r6, pc}
 602              	.L107:
 603              		.align	2
 604              	.L106:
 605 0098 00000000 		.word	reprap
 606 009c 00000000 		.word	.LC4
 607 00a0 2C000000 		.word	.LC5
 608              		.size	_ZN3PID20SetActiveTemperatureEf, .-_ZN3PID20SetActiveTemperatureEf
 609              		.section	.text._ZN3PID21SetStandbyTemperatureEf,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	_ZN3PID21SetStandbyTemperatureEf
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu softvfp
 617              		.type	_ZN3PID21SetStandbyTemperatureEf, %function
 618              	_ZN3PID21SetStandbyTemperatureEf:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621 0000 70B5     		push	{r4, r5, r6, lr}
 622 0002 0446     		mov	r4, r0
 623 0004 244E     		ldr	r6, .L124
 624 0006 84B0     		sub	sp, sp, #16
 625 0008 0D46     		mov	r5, r1
 626 000a F068     		ldr	r0, [r6, #12]
 627 000c 94F97A10 		ldrsb	r1, [r4, #122]
ARM GAS  /tmp/cc5CpNMt.s 			page 12


 628 0010 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 629 0014 0146     		mov	r1, r0
 630 0016 2846     		mov	r0, r5
 631 0018 FFF7FEFF 		bl	__aeabi_fcmpgt
 632 001c D0B9     		cbnz	r0, .L122
 633 001e 94F97A10 		ldrsb	r1, [r4, #122]
 634 0022 F068     		ldr	r0, [r6, #12]
 635 0024 FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 636 0028 0146     		mov	r1, r0
 637 002a 2846     		mov	r0, r5
 638 002c FFF7FEFF 		bl	__aeabi_fcmplt
 639 0030 08BB     		cbnz	r0, .L123
 640 0032 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 641 0036 E560     		str	r5, [r4, #12]	@ float
 642 0038 022B     		cmp	r3, #2
 643 003a 1AD9     		bls	.L108
 644 003c 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 645 0040 BBB9     		cbnz	r3, .L108
 646 0042 94F84630 		ldrb	r3, [r4, #70]	@ zero_extendqisi2
 647 0046 A3B1     		cbz	r3, .L108
 648 0048 2046     		mov	r0, r4
 649 004a 04B0     		add	sp, sp, #16
 650              		@ sp needed
 651 004c BDE87040 		pop	{r4, r5, r6, lr}
 652 0050 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
 653              	.L122:
 654 0054 94F97A30 		ldrsb	r3, [r4, #122]
 655 0058 2846     		mov	r0, r5
 656 005a 0293     		str	r3, [sp, #8]
 657 005c FFF7FEFF 		bl	__aeabi_f2d
 658 0060 2368     		ldr	r3, [r4]
 659 0062 0E4A     		ldr	r2, .L124+4
 660 0064 CDE90001 		strd	r0, [sp]
 661 0068 1846     		mov	r0, r3
 662 006a 40F2B511 		movw	r1, #437
 663 006e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 664              	.L108:
 665 0072 04B0     		add	sp, sp, #16
 666              		@ sp needed
 667 0074 70BD     		pop	{r4, r5, r6, pc}
 668              	.L123:
 669 0076 94F97A30 		ldrsb	r3, [r4, #122]
 670 007a 2846     		mov	r0, r5
 671 007c 0293     		str	r3, [sp, #8]
 672 007e FFF7FEFF 		bl	__aeabi_f2d
 673 0082 2368     		ldr	r3, [r4]
 674 0084 064A     		ldr	r2, .L124+8
 675 0086 CDE90001 		strd	r0, [sp]
 676 008a 1846     		mov	r0, r3
 677 008c 40F2B511 		movw	r1, #437
 678 0090 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 679 0094 04B0     		add	sp, sp, #16
 680              		@ sp needed
 681 0096 70BD     		pop	{r4, r5, r6, pc}
 682              	.L125:
 683              		.align	2
 684              	.L124:
ARM GAS  /tmp/cc5CpNMt.s 			page 13


 685 0098 00000000 		.word	reprap
 686 009c 00000000 		.word	.LC4
 687 00a0 2C000000 		.word	.LC5
 688              		.size	_ZN3PID21SetStandbyTemperatureEf, .-_ZN3PID21SetStandbyTemperatureEf
 689              		.section	.text._ZN3PID19SetHeaterProtectionEP16HeaterProtection,"ax",%progbits
 690              		.align	1
 691              		.p2align 2,,3
 692              		.global	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu softvfp
 697              		.type	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, %function
 698              	_ZN3PID19SetHeaterProtectionEP16HeaterProtection:
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701              		@ link register save eliminated.
 702 0000 4160     		str	r1, [r0, #4]
 703 0002 7047     		bx	lr
 704              		.size	_ZN3PID19SetHeaterProtectionEP16HeaterProtection, .-_ZN3PID19SetHeaterProtectionEP16HeaterPr
 705              		.section	.text._ZN3PID8ActivateEv,"ax",%progbits
 706              		.align	1
 707              		.p2align 2,,3
 708              		.global	_ZN3PID8ActivateEv
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu softvfp
 713              		.type	_ZN3PID8ActivateEv, %function
 714              	_ZN3PID8ActivateEv:
 715              		@ args = 0, pretend = 0, frame = 0
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717              		@ link register save eliminated.
 718 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 719 0004 2AB1     		cbz	r2, .L127
 720 0006 0121     		movs	r1, #1
 721 0008 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 722 000c 80F87E10 		strb	r1, [r0, #126]
 723 0010 02B9     		cbnz	r2, .L134
 724              	.L127:
 725 0012 7047     		bx	lr
 726              	.L134:
 727 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
 728              		.size	_ZN3PID8ActivateEv, .-_ZN3PID8ActivateEv
 729              		.section	.text._ZN3PID7StandbyEv,"ax",%progbits
 730              		.align	1
 731              		.p2align 2,,3
 732              		.global	_ZN3PID7StandbyEv
 733              		.syntax unified
 734              		.thumb
 735              		.thumb_func
 736              		.fpu softvfp
 737              		.type	_ZN3PID7StandbyEv, %function
 738              	_ZN3PID7StandbyEv:
 739              		@ args = 0, pretend = 0, frame = 0
 740              		@ frame_needed = 0, uses_anonymous_args = 0
 741              		@ link register save eliminated.
ARM GAS  /tmp/cc5CpNMt.s 			page 14


 742 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 743 0004 2AB1     		cbz	r2, .L135
 744 0006 0021     		movs	r1, #0
 745 0008 90F84620 		ldrb	r2, [r0, #70]	@ zero_extendqisi2
 746 000c 80F87E10 		strb	r1, [r0, #126]
 747 0010 02B9     		cbnz	r2, .L142
 748              	.L135:
 749 0012 7047     		bx	lr
 750              	.L142:
 751 0014 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
 752              		.size	_ZN3PID7StandbyEv, .-_ZN3PID7StandbyEv
 753              		.section	.text._ZNK3PID15CheckProtectionEv,"ax",%progbits
 754              		.align	1
 755              		.p2align 2,,3
 756              		.global	_ZNK3PID15CheckProtectionEv
 757              		.syntax unified
 758              		.thumb
 759              		.thumb_func
 760              		.fpu softvfp
 761              		.type	_ZNK3PID15CheckProtectionEv, %function
 762              	_ZNK3PID15CheckProtectionEv:
 763              		@ args = 0, pretend = 0, frame = 0
 764              		@ frame_needed = 0, uses_anonymous_args = 0
 765 0000 10B5     		push	{r4, lr}
 766 0002 4468     		ldr	r4, [r0, #4]
 767 0004 14B9     		cbnz	r4, .L147
 768 0006 07E0     		b	.L146
 769              	.L155:
 770 0008 2468     		ldr	r4, [r4]
 771 000a 2CB1     		cbz	r4, .L146
 772              	.L147:
 773 000c 2046     		mov	r0, r4
 774 000e FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 775 0012 0028     		cmp	r0, #0
 776 0014 F8D1     		bne	.L155
 777 0016 10BD     		pop	{r4, pc}
 778              	.L146:
 779 0018 0120     		movs	r0, #1
 780 001a 10BD     		pop	{r4, pc}
 781              		.size	_ZNK3PID15CheckProtectionEv, .-_ZNK3PID15CheckProtectionEv
 782              		.section	.text._ZN3PID10ResetFaultEv,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	_ZN3PID10ResetFaultEv
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu softvfp
 790              		.type	_ZN3PID10ResetFaultEv, %function
 791              	_ZN3PID10ResetFaultEv:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 0021     		movs	r1, #0
 796 0002 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 797 0006 80F88010 		strb	r1, [r0, #128]
 798 000a 02B1     		cbz	r2, .L158
ARM GAS  /tmp/cc5CpNMt.s 			page 15


 799 000c 7047     		bx	lr
 800              	.L158:
 801 000e 0122     		movs	r2, #1
 802 0010 80F87C20 		strb	r2, [r0, #124]
 803 0014 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 804              		.size	_ZN3PID10ResetFaultEv, .-_ZN3PID10ResetFaultEv
 805              		.global	__aeabi_ui2f
 806              		.global	__aeabi_fdiv
 807              		.section	.text._ZNK3PID13GetAveragePWMEv,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	_ZNK3PID13GetAveragePWMEv
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu softvfp
 815              		.type	_ZNK3PID13GetAveragePWMEv, %function
 816              	_ZNK3PID13GetAveragePWMEv:
 817              		@ args = 0, pretend = 0, frame = 0
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819 0000 10B5     		push	{r4, lr}
 820 0002 0446     		mov	r4, r0
 821 0004 0368     		ldr	r3, [r0]
 822 0006 D3F8BC04 		ldr	r0, [r3, #1212]
 823 000a FFF7FEFF 		bl	__aeabi_ui2f
 824 000e E16E     		ldr	r1, [r4, #108]	@ float
 825 0010 FFF7FEFF 		bl	__aeabi_fmul
 826 0014 0149     		ldr	r1, .L161
 827 0016 FFF7FEFF 		bl	__aeabi_fdiv
 828 001a 10BD     		pop	{r4, pc}
 829              	.L162:
 830              		.align	2
 831              	.L161:
 832 001c 00409C45 		.word	1167867904
 833              		.size	_ZNK3PID13GetAveragePWMEv, .-_ZNK3PID13GetAveragePWMEv
 834              		.global	__aeabi_fcmpge
 835              		.section	.text._ZNK3PID22GetExpectedHeatingRateEv,"ax",%progbits
 836              		.align	1
 837              		.p2align 2,,3
 838              		.global	_ZNK3PID22GetExpectedHeatingRateEv
 839              		.syntax unified
 840              		.thumb
 841              		.thumb_func
 842              		.fpu softvfp
 843              		.type	_ZNK3PID22GetExpectedHeatingRateEv, %function
 844              	_ZNK3PID22GetExpectedHeatingRateEv:
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847 0000 70B5     		push	{r4, r5, r6, lr}
 848 0002 0446     		mov	r4, r0
 849 0004 0368     		ldr	r3, [r0]
 850 0006 D3F8BC04 		ldr	r0, [r3, #1212]
 851 000a FFF7FEFF 		bl	__aeabi_ui2f
 852 000e E16E     		ldr	r1, [r4, #108]	@ float
 853 0010 FFF7FEFF 		bl	__aeabi_fmul
 854 0014 1349     		ldr	r1, .L170
 855 0016 FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  /tmp/cc5CpNMt.s 			page 16


 856 001a 4FF07D51 		mov	r1, #1061158912
 857 001e 0546     		mov	r5, r0
 858 0020 206B     		ldr	r0, [r4, #48]	@ float
 859 0022 FFF7FEFF 		bl	__aeabi_fmul
 860 0026 0146     		mov	r1, r0
 861 0028 2846     		mov	r0, r5
 862 002a FFF7FEFF 		bl	__aeabi_fmul
 863 002e 0E49     		ldr	r1, .L170+4
 864 0030 0546     		mov	r5, r0
 865 0032 FFF7FEFF 		bl	__aeabi_fcmpge
 866 0036 98B1     		cbz	r0, .L168
 867 0038 0C49     		ldr	r1, .L170+8
 868 003a 2846     		mov	r0, r5
 869 003c FFF7FEFF 		bl	__aeabi_fadd
 870 0040 A169     		ldr	r1, [r4, #24]	@ float
 871 0042 FFF7FEFF 		bl	__aeabi_fsub
 872 0046 616B     		ldr	r1, [r4, #52]	@ float
 873 0048 0646     		mov	r6, r0
 874 004a 2846     		mov	r0, r5
 875 004c FFF7FEFF 		bl	__aeabi_fdiv
 876 0050 0146     		mov	r1, r0
 877 0052 3046     		mov	r0, r6
 878 0054 FFF7FEFF 		bl	__aeabi_fmul
 879 0058 2946     		mov	r1, r5
 880 005a FFF7FEFF 		bl	__aeabi_fdiv
 881 005e 70BD     		pop	{r4, r5, r6, pc}
 882              	.L168:
 883 0060 0020     		movs	r0, #0
 884 0062 70BD     		pop	{r4, r5, r6, pc}
 885              	.L171:
 886              		.align	2
 887              	.L170:
 888 0064 00409C45 		.word	1167867904
 889 0068 0000A041 		.word	1101004800
 890 006c 0000C841 		.word	1103626240
 891              		.size	_ZNK3PID22GetExpectedHeatingRateEv, .-_ZNK3PID22GetExpectedHeatingRateEv
 892              		.section	.text._ZN3PID13StartAutoTuneEffRK9StringRef,"ax",%progbits
 893              		.align	1
 894              		.p2align 2,,3
 895              		.global	_ZN3PID13StartAutoTuneEffRK9StringRef
 896              		.syntax unified
 897              		.thumb
 898              		.thumb_func
 899              		.fpu softvfp
 900              		.type	_ZN3PID13StartAutoTuneEffRK9StringRef, %function
 901              	_ZN3PID13StartAutoTuneEffRK9StringRef:
 902              		@ args = 0, pretend = 0, frame = 8
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 905 0002 0446     		mov	r4, r0
 906 0004 90F84600 		ldrb	r0, [r0, #70]	@ zero_extendqisi2
 907 0008 87B0     		sub	sp, sp, #28
 908 000a 1D46     		mov	r5, r3
 909 000c 0028     		cmp	r0, #0
 910 000e 57D0     		beq	.L184
 911 0010 0E46     		mov	r6, r1
 912 0012 A06E     		ldr	r0, [r4, #104]	@ float
ARM GAS  /tmp/cc5CpNMt.s 			page 17


 913 0014 0021     		movs	r1, #0
 914 0016 1746     		mov	r7, r2
 915 0018 FFF7FEFF 		bl	__aeabi_fcmpgt
 916 001c 38B1     		cbz	r0, .L185
 917              	.L175:
 918 001e 94F97A20 		ldrsb	r2, [r4, #122]
 919 0022 2846     		mov	r0, r5
 920 0024 3149     		ldr	r1, .L187
 921 0026 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 922 002a 07B0     		add	sp, sp, #28
 923              		@ sp needed
 924 002c F0BD     		pop	{r4, r5, r6, r7, pc}
 925              	.L185:
 926 002e 2368     		ldr	r3, [r4]
 927 0030 D3F8BC04 		ldr	r0, [r3, #1212]
 928 0034 FFF7FEFF 		bl	__aeabi_ui2f
 929 0038 E16E     		ldr	r1, [r4, #108]	@ float
 930 003a FFF7FEFF 		bl	__aeabi_fmul
 931 003e 2C49     		ldr	r1, .L187+4
 932 0040 FFF7FEFF 		bl	__aeabi_fdiv
 933 0044 2B49     		ldr	r1, .L187+8
 934 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 935 004a 0028     		cmp	r0, #0
 936 004c E7D1     		bne	.L175
 937 004e 2A4B     		ldr	r3, .L187+12
 938 0050 06AA     		add	r2, sp, #24
 939 0052 02F8010D 		strb	r0, [r2, #-1]!
 940 0056 94F97A10 		ldrsb	r1, [r4, #122]
 941 005a D868     		ldr	r0, [r3, #12]
 942 005c FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 943 0060 9DF81730 		ldrb	r3, [sp, #23]	@ zero_extendqisi2
 944 0064 A061     		str	r0, [r4, #24]	@ float
 945 0066 002B     		cmp	r3, #0
 946 0068 32D1     		bne	.L186
 947 006a 0621     		movs	r1, #6
 948 006c 234A     		ldr	r2, .L187+16
 949 006e 84F87F30 		strb	r3, [r4, #127]
 950 0072 84F87C10 		strb	r1, [r4, #124]
 951 0076 4FF40070 		mov	r0, #512
 952 007a 1360     		str	r3, [r2]
 953 007c FFF7FEFF 		bl	_Znaj
 954 0080 0346     		mov	r3, r0
 955 0082 2168     		ldr	r1, [r4]
 956 0084 1E4A     		ldr	r2, .L187+20
 957 0086 D1F8BC04 		ldr	r0, [r1, #1212]
 958 008a 1E49     		ldr	r1, .L187+24
 959 008c 1360     		str	r3, [r2]
 960 008e 0860     		str	r0, [r1]
 961 0090 A269     		ldr	r2, [r4, #24]	@ float
 962 0092 1D48     		ldr	r0, .L187+28
 963 0094 1D49     		ldr	r1, .L187+32
 964 0096 1A60     		str	r2, [r3]	@ float
 965 0098 0760     		str	r7, [r0]	@ float
 966 009a 0E60     		str	r6, [r1]	@ float
 967 009c 3846     		mov	r0, r7
 968 009e FFF7FEFF 		bl	__aeabi_f2d
 969 00a2 CDE90201 		strd	r0, [sp, #8]
ARM GAS  /tmp/cc5CpNMt.s 			page 18


 970 00a6 3046     		mov	r0, r6
 971 00a8 FFF7FEFF 		bl	__aeabi_f2d
 972 00ac 94F97A20 		ldrsb	r2, [r4, #122]
 973 00b0 CDE90001 		strd	r0, [sp]
 974 00b4 2846     		mov	r0, r5
 975 00b6 1649     		ldr	r1, .L187+36
 976 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 977 00bc 07B0     		add	sp, sp, #28
 978              		@ sp needed
 979 00be F0BD     		pop	{r4, r5, r6, r7, pc}
 980              	.L184:
 981 00c0 94F97A20 		ldrsb	r2, [r4, #122]
 982 00c4 1846     		mov	r0, r3
 983 00c6 1349     		ldr	r1, .L187+40
 984 00c8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 985 00cc 07B0     		add	sp, sp, #28
 986              		@ sp needed
 987 00ce F0BD     		pop	{r4, r5, r6, r7, pc}
 988              	.L186:
 989 00d0 1846     		mov	r0, r3
 990 00d2 94F97A40 		ldrsb	r4, [r4, #122]
 991 00d6 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 992 00da 2246     		mov	r2, r4
 993 00dc 0346     		mov	r3, r0
 994 00de 0E49     		ldr	r1, .L187+44
 995 00e0 2846     		mov	r0, r5
 996 00e2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 997 00e6 07B0     		add	sp, sp, #28
 998              		@ sp needed
 999 00e8 F0BD     		pop	{r4, r5, r6, r7, pc}
 1000              	.L188:
 1001 00ea 00BF     		.align	2
 1002              	.L187:
 1003 00ec E4000000 		.word	.LC9
 1004 00f0 00409C45 		.word	1167867904
 1005 00f4 0AD7A33C 		.word	1017370378
 1006 00f8 00000000 		.word	reprap
 1007 00fc 00000000 		.word	.LANCHOR1
 1008 0100 00000000 		.word	.LANCHOR0
 1009 0104 00000000 		.word	.LANCHOR2
 1010 0108 00000000 		.word	.LANCHOR3
 1011 010c 00000000 		.word	.LANCHOR4
 1012 0110 7C000000 		.word	.LC8
 1013 0114 00000000 		.word	.LC6
 1014 0118 3C000000 		.word	.LC7
 1015              		.size	_ZN3PID13StartAutoTuneEffRK9StringRef, .-_ZN3PID13StartAutoTuneEffRK9StringRef
 1016              		.section	.text._ZN3PID17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 1017              		.align	1
 1018              		.p2align 2,,3
 1019              		.global	_ZN3PID17GetAutoTuneStatusERK9StringRef
 1020              		.syntax unified
 1021              		.thumb
 1022              		.thumb_func
 1023              		.fpu softvfp
 1024              		.type	_ZN3PID17GetAutoTuneStatusERK9StringRef, %function
 1025              	_ZN3PID17GetAutoTuneStatusERK9StringRef:
 1026              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc5CpNMt.s 			page 19


 1027              		@ frame_needed = 0, uses_anonymous_args = 0
 1028 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 1029 0004 0246     		mov	r2, r0
 1030 0006 052B     		cmp	r3, #5
 1031 0008 0FD8     		bhi	.L197
 1032 000a 90F87F30 		ldrb	r3, [r0, #127]	@ zero_extendqisi2
 1033 000e 2BB9     		cbnz	r3, .L198
 1034 0010 90F97A20 		ldrsb	r2, [r0, #122]
 1035 0014 0846     		mov	r0, r1
 1036 0016 0C49     		ldr	r1, .L199
 1037 0018 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1038              	.L198:
 1039 001c 90F97A30 		ldrsb	r3, [r0, #122]
 1040 0020 0846     		mov	r0, r1
 1041 0022 1A46     		mov	r2, r3
 1042 0024 0949     		ldr	r1, .L199+4
 1043 0026 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1044              	.L197:
 1045 002a 0846     		mov	r0, r1
 1046 002c 0421     		movs	r1, #4
 1047 002e 00B5     		push	{lr}
 1048 0030 83B0     		sub	sp, sp, #12
 1049 0032 92F97A20 		ldrsb	r2, [r2, #122]
 1050 0036 053B     		subs	r3, r3, #5
 1051 0038 0091     		str	r1, [sp]
 1052 003a 0549     		ldr	r1, .L199+8
 1053 003c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1054 0040 03B0     		add	sp, sp, #12
 1055              		@ sp needed
 1056 0042 5DF804FB 		ldr	pc, [sp], #4
 1057              	.L200:
 1058 0046 00BF     		.align	2
 1059              	.L199:
 1060 0048 64000000 		.word	.LC12
 1061 004c 2C000000 		.word	.LC11
 1062 0050 00000000 		.word	.LC10
 1063              		.size	_ZN3PID17GetAutoTuneStatusERK9StringRef, .-_ZN3PID17GetAutoTuneStatusERK9StringRef
 1064              		.global	__aeabi_fcmple
 1065              		.section	.text._ZN3PID14ReadingsStableEjf,"ax",%progbits
 1066              		.align	1
 1067              		.p2align 2,,3
 1068              		.global	_ZN3PID14ReadingsStableEjf
 1069              		.syntax unified
 1070              		.thumb
 1071              		.thumb_func
 1072              		.fpu softvfp
 1073              		.type	_ZN3PID14ReadingsStableEjf, %function
 1074              	_ZN3PID14ReadingsStableEjf:
 1075              		@ args = 0, pretend = 0, frame = 0
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1078 0004 1D4B     		ldr	r3, .L218
 1079 0006 1E68     		ldr	r6, [r3]
 1080 0008 002E     		cmp	r6, #0
 1081 000a 33D0     		beq	.L211
 1082 000c 1C4B     		ldr	r3, .L218+4
 1083 000e 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/cc5CpNMt.s 			page 20


 1084 0010 8342     		cmp	r3, r0
 1085 0012 2FD3     		bcc	.L211
 1086 0014 181A     		subs	r0, r3, r0
 1087 0016 421C     		adds	r2, r0, #1
 1088 0018 56F82070 		ldr	r7, [r6, r0, lsl #2]	@ float
 1089 001c 9342     		cmp	r3, r2
 1090 001e 8946     		mov	r9, r1
 1091 0020 06EB8005 		add	r5, r6, r0, lsl #2
 1092 0024 B846     		mov	r8, r7
 1093 0026 14D9     		bls	.L203
 1094 0028 03F18043 		add	r3, r3, #1073741824
 1095 002c 013B     		subs	r3, r3, #1
 1096 002e 06EB8306 		add	r6, r6, r3, lsl #2
 1097              	.L208:
 1098 0032 55F8044F 		ldr	r4, [r5, #4]!	@ float
 1099 0036 3946     		mov	r1, r7
 1100 0038 2046     		mov	r0, r4
 1101 003a FFF7FEFF 		bl	__aeabi_fcmplt
 1102 003e 4146     		mov	r1, r8
 1103 0040 00B1     		cbz	r0, .L204
 1104 0042 2746     		mov	r7, r4
 1105              	.L204:
 1106 0044 2046     		mov	r0, r4
 1107 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 1108 004a 00B1     		cbz	r0, .L206
 1109 004c A046     		mov	r8, r4
 1110              	.L206:
 1111 004e B542     		cmp	r5, r6
 1112 0050 EFD1     		bne	.L208
 1113              	.L203:
 1114 0052 3946     		mov	r1, r7
 1115 0054 4046     		mov	r0, r8
 1116 0056 FFF7FEFF 		bl	__aeabi_fsub
 1117 005a 4946     		mov	r1, r9
 1118 005c FFF7FEFF 		bl	__aeabi_fcmple
 1119 0060 4FF00106 		mov	r6, #1
 1120 0064 10B1     		cbz	r0, .L217
 1121 0066 F0B2     		uxtb	r0, r6
 1122 0068 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1123              	.L217:
 1124 006c 0646     		mov	r6, r0
 1125 006e F0B2     		uxtb	r0, r6
 1126 0070 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1127              	.L211:
 1128 0074 0020     		movs	r0, #0
 1129 0076 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1130              	.L219:
 1131 007a 00BF     		.align	2
 1132              	.L218:
 1133 007c 00000000 		.word	.LANCHOR0
 1134 0080 00000000 		.word	.LANCHOR1
 1135              		.size	_ZN3PID14ReadingsStableEjf, .-_ZN3PID14ReadingsStableEjf
 1136              		.global	__aeabi_fcmpeq
 1137              		.section	.text._ZN3PID12IdentifyPeakEj,"ax",%progbits
 1138              		.align	1
 1139              		.p2align 2,,3
 1140              		.global	_ZN3PID12IdentifyPeakEj
ARM GAS  /tmp/cc5CpNMt.s 			page 21


 1141              		.syntax unified
 1142              		.thumb
 1143              		.thumb_func
 1144              		.fpu softvfp
 1145              		.type	_ZN3PID12IdentifyPeakEj, %function
 1146              	_ZN3PID12IdentifyPeakEj:
 1147              		@ args = 0, pretend = 0, frame = 16
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 1149 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1150 0004 274B     		ldr	r3, .L240
 1151 0006 85B0     		sub	sp, sp, #20
 1152 0008 1B68     		ldr	r3, [r3]
 1153 000a 8046     		mov	r8, r0
 1154 000c 9842     		cmp	r0, r3
 1155 000e 0193     		str	r3, [sp, #4]
 1156 0010 44D8     		bhi	.L230
 1157 0012 4FF0FF37 		mov	r7, #-1
 1158 0016 0025     		movs	r5, #0
 1159 0018 234B     		ldr	r3, .L240+4
 1160 001a DFF89090 		ldr	r9, .L240+8
 1161 001e 1E68     		ldr	r6, [r3]
 1162 0020 8300     		lsls	r3, r0, #2
 1163 0022 0397     		str	r7, [sp, #12]
 1164 0024 0293     		str	r3, [sp, #8]
 1165              	.L229:
 1166 0026 B8F1000F 		cmp	r8, #0
 1167 002a 2FD0     		beq	.L231
 1168 002c 4FF0000B 		mov	fp, #0
 1169 0030 B246     		mov	r10, r6
 1170 0032 5846     		mov	r0, fp
 1171 0034 029B     		ldr	r3, [sp, #8]
 1172 0036 F418     		adds	r4, r6, r3
 1173              	.L223:
 1174 0038 5AF8041B 		ldr	r1, [r10], #4	@ float
 1175 003c FFF7FEFF 		bl	__aeabi_fadd
 1176 0040 A245     		cmp	r10, r4
 1177 0042 F9D1     		bne	.L223
 1178 0044 8346     		mov	fp, r0
 1179              	.L222:
 1180 0046 5946     		mov	r1, fp
 1181 0048 4846     		mov	r0, r9
 1182 004a FFF7FEFF 		bl	__aeabi_fcmplt
 1183 004e A8B1     		cbz	r0, .L237
 1184 0050 0137     		adds	r7, r7, #1
 1185 0052 AF42     		cmp	r7, r5
 1186 0054 0395     		str	r5, [sp, #12]
 1187 0056 1CD1     		bne	.L239
 1188 0058 D946     		mov	r9, fp
 1189 005a 2F46     		mov	r7, r5
 1190              	.L226:
 1191 005c 0135     		adds	r5, r5, #1
 1192 005e 019A     		ldr	r2, [sp, #4]
 1193 0060 08EB0503 		add	r3, r8, r5
 1194 0064 9342     		cmp	r3, r2
 1195 0066 06F10406 		add	r6, r6, #4
 1196 006a DCD9     		bls	.L229
 1197 006c 0398     		ldr	r0, [sp, #12]
ARM GAS  /tmp/cc5CpNMt.s 			page 22


 1198              	.L221:
 1199 006e 08F1FF38 		add	r8, r8, #-1
 1200 0072 00EB5800 		add	r0, r0, r8, lsr #1
 1201 0076 05B0     		add	sp, sp, #20
 1202              		@ sp needed
 1203 0078 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1204              	.L237:
 1205 007c 5946     		mov	r1, fp
 1206 007e 4846     		mov	r0, r9
 1207 0080 FFF7FEFF 		bl	__aeabi_fcmpeq
 1208 0084 0028     		cmp	r0, #0
 1209 0086 18BF     		it	ne
 1210 0088 2F46     		movne	r7, r5
 1211 008a E7E7     		b	.L226
 1212              	.L231:
 1213 008c 4FF0000B 		mov	fp, #0
 1214 0090 D9E7     		b	.L222
 1215              	.L239:
 1216 0092 4FF0FF30 		mov	r0, #-1
 1217 0096 05B0     		add	sp, sp, #20
 1218              		@ sp needed
 1219 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1220              	.L230:
 1221 009c 4FF0FF30 		mov	r0, #-1
 1222 00a0 E5E7     		b	.L221
 1223              	.L241:
 1224 00a2 00BF     		.align	2
 1225              	.L240:
 1226 00a4 00000000 		.word	.LANCHOR1
 1227 00a8 00000000 		.word	.LANCHOR0
 1228 00ac 00C079C4 		.word	-998653952
 1229              		.size	_ZN3PID12IdentifyPeakEj, .-_ZN3PID12IdentifyPeakEj
 1230              		.section	.text._ZN3PID16GetPeakTempIndexEv,"ax",%progbits
 1231              		.align	1
 1232              		.p2align 2,,3
 1233              		.global	_ZN3PID16GetPeakTempIndexEv
 1234              		.syntax unified
 1235              		.thumb
 1236              		.thumb_func
 1237              		.fpu softvfp
 1238              		.type	_ZN3PID16GetPeakTempIndexEv, %function
 1239              	_ZN3PID16GetPeakTempIndexEv:
 1240              		@ args = 0, pretend = 0, frame = 0
 1241              		@ frame_needed = 0, uses_anonymous_args = 0
 1242 0000 124B     		ldr	r3, .L250
 1243 0002 10B5     		push	{r4, lr}
 1244 0004 1C68     		ldr	r4, [r3]
 1245 0006 0E2C     		cmp	r4, #14
 1246 0008 0BD9     		bls	.L247
 1247 000a 0120     		movs	r0, #1
 1248 000c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1249 0010 0028     		cmp	r0, #0
 1250 0012 09DB     		blt	.L249
 1251              	.L244:
 1252 0014 C31C     		adds	r3, r0, #3
 1253 0016 9C42     		cmp	r4, r3
 1254 0018 03D9     		bls	.L247
ARM GAS  /tmp/cc5CpNMt.s 			page 23


 1255 001a 0128     		cmp	r0, #1
 1256 001c B8BF     		it	lt
 1257 001e 0120     		movlt	r0, #1
 1258 0020 10BD     		pop	{r4, pc}
 1259              	.L247:
 1260 0022 4FF0FF30 		mov	r0, #-1
 1261 0026 10BD     		pop	{r4, pc}
 1262              	.L249:
 1263 0028 0320     		movs	r0, #3
 1264 002a FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1265 002e 0028     		cmp	r0, #0
 1266 0030 F0DA     		bge	.L244
 1267 0032 0520     		movs	r0, #5
 1268 0034 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1269 0038 0028     		cmp	r0, #0
 1270 003a EBDA     		bge	.L244
 1271 003c 0720     		movs	r0, #7
 1272 003e FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1273 0042 0028     		cmp	r0, #0
 1274 0044 E6DA     		bge	.L244
 1275 0046 0020     		movs	r0, #0
 1276 0048 10BD     		pop	{r4, pc}
 1277              	.L251:
 1278 004a 00BF     		.align	2
 1279              	.L250:
 1280 004c 00000000 		.word	.LANCHOR1
 1281              		.size	_ZN3PID16GetPeakTempIndexEv, .-_ZN3PID16GetPeakTempIndexEv
 1282              		.section	.text._ZN3PID13DisplayBufferEPKc,"ax",%progbits
 1283              		.align	1
 1284              		.p2align 2,,3
 1285              		.global	_ZN3PID13DisplayBufferEPKc
 1286              		.syntax unified
 1287              		.thumb
 1288              		.thumb_func
 1289              		.fpu softvfp
 1290              		.type	_ZN3PID13DisplayBufferEPKc, %function
 1291              	_ZN3PID13DisplayBufferEPKc:
 1292              		@ args = 0, pretend = 0, frame = 8
 1293              		@ frame_needed = 0, uses_anonymous_args = 0
 1294 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1295 0004 84B0     		sub	sp, sp, #16
 1296 0006 8046     		mov	r8, r0
 1297 0008 03A8     		add	r0, sp, #12
 1298 000a 0C46     		mov	r4, r1
 1299 000c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1300 0010 10B9     		cbnz	r0, .L261
 1301 0012 04B0     		add	sp, sp, #16
 1302              		@ sp needed
 1303 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1304              	.L261:
 1305 0018 194B     		ldr	r3, .L262
 1306 001a 039E     		ldr	r6, [sp, #12]
 1307 001c 1868     		ldr	r0, [r3]
 1308 001e FFF7FEFF 		bl	__aeabi_ui2f
 1309 0022 1849     		ldr	r1, .L262+4
 1310 0024 FFF7FEFF 		bl	__aeabi_fmul
 1311 0028 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc5CpNMt.s 			page 24


 1312 002c 164D     		ldr	r5, .L262+8
 1313 002e CDE90001 		strd	r0, [sp]
 1314 0032 2246     		mov	r2, r4
 1315 0034 3046     		mov	r0, r6
 1316 0036 1549     		ldr	r1, .L262+12
 1317 0038 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1318 003c 2B68     		ldr	r3, [r5]
 1319 003e 8BB1     		cbz	r3, .L255
 1320 0040 0024     		movs	r4, #0
 1321 0042 134F     		ldr	r7, .L262+16
 1322 0044 134E     		ldr	r6, .L262+20
 1323              	.L256:
 1324 0046 3B68     		ldr	r3, [r7]
 1325 0048 53F82400 		ldr	r0, [r3, r4, lsl #2]	@ float
 1326 004c FFF7FEFF 		bl	__aeabi_f2d
 1327 0050 0B46     		mov	r3, r1
 1328 0052 0246     		mov	r2, r0
 1329 0054 3146     		mov	r1, r6
 1330 0056 0398     		ldr	r0, [sp, #12]
 1331 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1332 005c 2B68     		ldr	r3, [r5]
 1333 005e 0134     		adds	r4, r4, #1
 1334 0060 A342     		cmp	r3, r4
 1335 0062 F0D8     		bhi	.L256
 1336              	.L255:
 1337 0064 0C49     		ldr	r1, .L262+24
 1338 0066 0398     		ldr	r0, [sp, #12]
 1339 0068 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1340 006c D8F80000 		ldr	r0, [r8]
 1341 0070 039A     		ldr	r2, [sp, #12]
 1342 0072 0121     		movs	r1, #1
 1343 0074 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 1344 0078 04B0     		add	sp, sp, #16
 1345              		@ sp needed
 1346 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1347              	.L263:
 1348 007e 00BF     		.align	2
 1349              	.L262:
 1350 0080 00000000 		.word	.LANCHOR2
 1351 0084 6F12833A 		.word	981668463
 1352 0088 00000000 		.word	.LANCHOR1
 1353 008c 00000000 		.word	.LC13
 1354 0090 00000000 		.word	.LANCHOR0
 1355 0094 24000000 		.word	.LC15
 1356 0098 20000000 		.word	.LC14
 1357              		.size	_ZN3PID13DisplayBufferEPKc, .-_ZN3PID13DisplayBufferEPKc
 1358              		.section	.text._ZN3PID14CalculateModelEv,"ax",%progbits
 1359              		.align	1
 1360              		.p2align 2,,3
 1361              		.global	_ZN3PID14CalculateModelEv
 1362              		.syntax unified
 1363              		.thumb
 1364              		.thumb_func
 1365              		.fpu softvfp
 1366              		.type	_ZN3PID14CalculateModelEv, %function
 1367              	_ZN3PID14CalculateModelEv:
 1368              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc5CpNMt.s 			page 25


 1369              		@ frame_needed = 0, uses_anonymous_args = 0
 1370 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1371 0004 5C4B     		ldr	r3, .L274
 1372 0006 86B0     		sub	sp, sp, #24
 1373 0008 5B6C     		ldr	r3, [r3, #68]
 1374 000a 0546     		mov	r5, r0
 1375 000c 9B06     		lsls	r3, r3, #26
 1376 000e 00F1AE80 		bmi	.L272
 1377              	.L265:
 1378 0012 5A4A     		ldr	r2, .L274+4
 1379 0014 5A4B     		ldr	r3, .L274+8
 1380 0016 1468     		ldr	r4, [r2]
 1381 0018 1868     		ldr	r0, [r3]
 1382 001a 631E     		subs	r3, r4, #1
 1383 001c 00FB03F0 		mul	r0, r0, r3
 1384 0020 FFF7FEFF 		bl	__aeabi_ui2f
 1385 0024 574E     		ldr	r6, .L274+12
 1386 0026 584B     		ldr	r3, .L274+16
 1387 0028 D6F80080 		ldr	r8, [r6]	@ float
 1388 002c 1F68     		ldr	r7, [r3]
 1389 002e 8146     		mov	r9, r0
 1390 0030 4146     		mov	r1, r8
 1391 0032 3868     		ldr	r0, [r7]	@ float
 1392 0034 FFF7FEFF 		bl	__aeabi_fsub
 1393 0038 04F18043 		add	r3, r4, #1073741824
 1394 003c 013B     		subs	r3, r3, #1
 1395 003e 4146     		mov	r1, r8
 1396 0040 8246     		mov	r10, r0
 1397 0042 57F82300 		ldr	r0, [r7, r3, lsl #2]	@ float
 1398 0046 FFF7FEFF 		bl	__aeabi_fsub
 1399 004a 0146     		mov	r1, r0
 1400 004c 5046     		mov	r0, r10
 1401 004e FFF7FEFF 		bl	__aeabi_fdiv
 1402 0052 FFF7FEFF 		bl	logf
 1403 0056 4D49     		ldr	r1, .L274+20
 1404 0058 FFF7FEFF 		bl	__aeabi_fmul
 1405 005c 0146     		mov	r1, r0
 1406 005e 4846     		mov	r0, r9
 1407 0060 FFF7FEFF 		bl	__aeabi_fdiv
 1408 0064 4A4F     		ldr	r7, .L274+24
 1409 0066 3168     		ldr	r1, [r6]	@ float
 1410 0068 0446     		mov	r4, r0
 1411 006a 3868     		ldr	r0, [r7]	@ float
 1412 006c FFF7FEFF 		bl	__aeabi_fsub
 1413 0070 484A     		ldr	r2, .L274+28
 1414 0072 494B     		ldr	r3, .L274+32
 1415 0074 8046     		mov	r8, r0
 1416 0076 1B68     		ldr	r3, [r3]
 1417 0078 1068     		ldr	r0, [r2]
 1418 007a C01A     		subs	r0, r0, r3
 1419 007c FFF7FEFF 		bl	__aeabi_ui2f
 1420 0080 4649     		ldr	r1, .L274+36
 1421 0082 FFF7FEFF 		bl	__aeabi_fmul
 1422 0086 2146     		mov	r1, r4
 1423 0088 00F10040 		add	r0, r0, #-2147483648
 1424 008c FFF7FEFF 		bl	__aeabi_fdiv
 1425 0090 FFF7FEFF 		bl	expf
ARM GAS  /tmp/cc5CpNMt.s 			page 26


 1426 0094 0146     		mov	r1, r0
 1427 0096 4FF07E50 		mov	r0, #1065353216
 1428 009a FFF7FEFF 		bl	__aeabi_fsub
 1429 009e 0146     		mov	r1, r0
 1430 00a0 4046     		mov	r0, r8
 1431 00a2 FFF7FEFF 		bl	__aeabi_fdiv
 1432 00a6 3168     		ldr	r1, [r6]	@ float
 1433 00a8 8046     		mov	r8, r0
 1434 00aa FFF7FEFF 		bl	__aeabi_fadd
 1435 00ae 3968     		ldr	r1, [r7]	@ float
 1436 00b0 8146     		mov	r9, r0
 1437 00b2 FFF7FEFF 		bl	__aeabi_fsub
 1438 00b6 3A4B     		ldr	r3, .L274+40
 1439 00b8 0646     		mov	r6, r0
 1440 00ba 1968     		ldr	r1, [r3]	@ float
 1441 00bc 4846     		mov	r0, r9
 1442 00be FFF7FEFF 		bl	__aeabi_fsub
 1443 00c2 0146     		mov	r1, r0
 1444 00c4 3046     		mov	r0, r6
 1445 00c6 FFF7FEFF 		bl	__aeabi_fdiv
 1446 00ca FFF7FEFF 		bl	logf
 1447 00ce 0146     		mov	r1, r0
 1448 00d0 2046     		mov	r0, r4
 1449 00d2 FFF7FEFF 		bl	__aeabi_fmul
 1450 00d6 3349     		ldr	r1, .L274+44
 1451 00d8 FFF7FEFF 		bl	__aeabi_fmul
 1452 00dc 0646     		mov	r6, r0
 1453 00de 0120     		movs	r0, #1
 1454 00e0 314A     		ldr	r2, .L274+48
 1455 00e2 B5F84470 		ldrh	r7, [r5, #68]
 1456 00e6 1268     		ldr	r2, [r2]	@ float
 1457 00e8 4FF0000E 		mov	lr, #0
 1458 00ec 0290     		str	r0, [sp, #8]
 1459 00ee 0020     		movs	r0, #0
 1460 00f0 0092     		str	r2, [sp]	@ float
 1461 00f2 0190     		str	r0, [sp, #4]	@ float
 1462 00f4 3346     		mov	r3, r6
 1463 00f6 2246     		mov	r2, r4
 1464 00f8 4146     		mov	r1, r8
 1465 00fa CDF80CE0 		str	lr, [sp, #12]
 1466 00fe 0497     		str	r7, [sp, #16]
 1467 0100 2846     		mov	r0, r5
 1468 0102 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 1469 0106 85F87F00 		strb	r0, [r5, #127]
 1470 010a D0B9     		cbnz	r0, .L273
 1471 010c 3046     		mov	r0, r6
 1472 010e FFF7FEFF 		bl	__aeabi_f2d
 1473 0112 CDE90401 		strd	r0, [sp, #16]
 1474 0116 2046     		mov	r0, r4
 1475 0118 FFF7FEFF 		bl	__aeabi_f2d
 1476 011c CDE90201 		strd	r0, [sp, #8]
 1477 0120 4046     		mov	r0, r8
 1478 0122 FFF7FEFF 		bl	__aeabi_f2d
 1479 0126 2A68     		ldr	r2, [r5]
 1480 0128 95F97A30 		ldrsb	r3, [r5, #122]
 1481 012c CDE90001 		strd	r0, [sp]
 1482 0130 1046     		mov	r0, r2
ARM GAS  /tmp/cc5CpNMt.s 			page 27


 1483 0132 40F2B521 		movw	r1, #693
 1484 0136 1D4A     		ldr	r2, .L274+52
 1485 0138 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1486 013c 06B0     		add	sp, sp, #24
 1487              		@ sp needed
 1488 013e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1489              	.L273:
 1490 0142 2C68     		ldr	r4, [r5]
 1491 0144 FFF7FEFF 		bl	millis
 1492 0148 194B     		ldr	r3, .L274+56
 1493 014a 1A4E     		ldr	r6, .L274+60
 1494 014c 1A68     		ldr	r2, [r3]
 1495 014e 95F97A30 		ldrsb	r3, [r5, #122]
 1496 0152 821A     		subs	r2, r0, r2
 1497 0154 A6FB0212 		umull	r1, r2, r6, r2
 1498 0158 9209     		lsrs	r2, r2, #6
 1499 015a 0092     		str	r2, [sp]
 1500 015c 0193     		str	r3, [sp, #4]
 1501 015e 2046     		mov	r0, r4
 1502 0160 154A     		ldr	r2, .L274+64
 1503 0162 B521     		movs	r1, #181
 1504 0164 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1505 0168 06B0     		add	sp, sp, #24
 1506              		@ sp needed
 1507 016a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1508              	.L272:
 1509 016e 1349     		ldr	r1, .L274+68
 1510 0170 FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1511 0174 4DE7     		b	.L265
 1512              	.L275:
 1513 0176 00BF     		.align	2
 1514              	.L274:
 1515 0178 00000000 		.word	reprap
 1516 017c 00000000 		.word	.LANCHOR1
 1517 0180 00000000 		.word	.LANCHOR2
 1518 0184 00000000 		.word	.LANCHOR5
 1519 0188 00000000 		.word	.LANCHOR0
 1520 018c 00007A44 		.word	1148846080
 1521 0190 00000000 		.word	.LANCHOR6
 1522 0194 00000000 		.word	.LANCHOR7
 1523 0198 00000000 		.word	.LANCHOR8
 1524 019c 6F12833A 		.word	981668463
 1525 01a0 00000000 		.word	.LANCHOR9
 1526 01a4 6666A63F 		.word	1067869798
 1527 01a8 00000000 		.word	.LANCHOR3
 1528 01ac 8C000000 		.word	.LC18
 1529 01b0 00000000 		.word	.LANCHOR10
 1530 01b4 D34D6210 		.word	274877907
 1531 01b8 10000000 		.word	.LC17
 1532 01bc 00000000 		.word	.LC16
 1533              		.size	_ZN3PID14CalculateModelEv, .-_ZN3PID14CalculateModelEv
 1534              		.global	__aeabi_f2uiz
 1535              		.section	.text._ZN3PID12DoTuningStepEv,"ax",%progbits
 1536              		.align	1
 1537              		.p2align 2,,3
 1538              		.global	_ZN3PID12DoTuningStepEv
 1539              		.syntax unified
ARM GAS  /tmp/cc5CpNMt.s 			page 28


 1540              		.thumb
 1541              		.thumb_func
 1542              		.fpu softvfp
 1543              		.type	_ZN3PID12DoTuningStepEv, %function
 1544              	_ZN3PID12DoTuningStepEv:
 1545              		@ args = 0, pretend = 0, frame = 0
 1546              		@ frame_needed = 0, uses_anonymous_args = 0
 1547 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1548 0004 AC4D     		ldr	r5, .L323
 1549 0006 83B0     		sub	sp, sp, #12
 1550 0008 2B68     		ldr	r3, [r5]
 1551 000a 0446     		mov	r4, r0
 1552 000c FBB9     		cbnz	r3, .L277
 1553 000e FFF7FEFF 		bl	millis
 1554 0012 94F87CE0 		ldrb	lr, [r4, #124]	@ zero_extendqisi2
 1555 0016 A94F     		ldr	r7, .L323+4
 1556 0018 BEF1060F 		cmp	lr, #6
 1557 001c 09BF     		itett	eq
 1558 001e A84A     		ldreq	r2, .L323+8
 1559 0020 2B68     		ldrne	r3, [r5]
 1560 0022 2B68     		ldreq	r3, [r5]
 1561 0024 1060     		streq	r0, [r2]
 1562 0026 802B     		cmp	r3, #128
 1563 0028 3860     		str	r0, [r7]
 1564 002a DFF8F882 		ldr	r8, .L323+108
 1565 002e 20D0     		beq	.L282
 1566              	.L316:
 1567 0030 D8F80060 		ldr	r6, [r8]
 1568 0034 9900     		lsls	r1, r3, #2
 1569 0036 0133     		adds	r3, r3, #1
 1570              	.L283:
 1571 0038 A069     		ldr	r0, [r4, #24]	@ float
 1572 003a AEF10602 		sub	r2, lr, #6
 1573 003e 7050     		str	r0, [r6, r1]	@ float
 1574 0040 2B60     		str	r3, [r5]
 1575 0042 032A     		cmp	r2, #3
 1576 0044 64D8     		bhi	.L285
 1577 0046 DFE802F0 		tbb	[pc, r2]
 1578              	.L287:
 1579 004a 81       		.byte	(.L286-.L287)/2
 1580 004b 9C       		.byte	(.L288-.L287)/2
 1581 004c 53       		.byte	(.L289-.L287)/2
 1582 004d 69       		.byte	(.L290-.L287)/2
 1583              		.p2align 1
 1584              	.L277:
 1585 004e FFF7FEFF 		bl	millis
 1586 0052 9C4A     		ldr	r2, .L323+12
 1587 0054 2B68     		ldr	r3, [r5]
 1588 0056 1268     		ldr	r2, [r2]
 1589 0058 984F     		ldr	r7, .L323+4
 1590 005a 02FB03F2 		mul	r2, r2, r3
 1591 005e 3968     		ldr	r1, [r7]
 1592 0060 401A     		subs	r0, r0, r1
 1593 0062 9042     		cmp	r0, r2
 1594 0064 41D3     		bcc	.L276
 1595 0066 802B     		cmp	r3, #128
 1596 0068 94F87CE0 		ldrb	lr, [r4, #124]	@ zero_extendqisi2
ARM GAS  /tmp/cc5CpNMt.s 			page 29


 1597 006c DFF8B482 		ldr	r8, .L323+108
 1598 0070 DED1     		bne	.L316
 1599              	.L282:
 1600 0072 D8F80060 		ldr	r6, [r8]
 1601 0076 3346     		mov	r3, r6
 1602 0078 3246     		mov	r2, r6
 1603 007a 06F1FC00 		add	r0, r6, #252
 1604              	.L284:
 1605 007e 52F8081F 		ldr	r1, [r2, #8]!	@ float
 1606 0082 43F8041F 		str	r1, [r3, #4]!	@ float
 1607 0086 9842     		cmp	r0, r3
 1608 0088 F9D1     		bne	.L284
 1609 008a 8E48     		ldr	r0, .L323+12
 1610 008c 4123     		movs	r3, #65
 1611 008e 0268     		ldr	r2, [r0]
 1612 0090 4FF48071 		mov	r1, #256
 1613 0094 5200     		lsls	r2, r2, #1
 1614 0096 0260     		str	r2, [r0]
 1615 0098 CEE7     		b	.L283
 1616              	.L299:
 1617 009a 0121     		movs	r1, #1
 1618 009c DFF82482 		ldr	r8, .L323+12
 1619 00a0 56F82020 		ldr	r2, [r6, r0, lsl #2]	@ float
 1620 00a4 D8F80030 		ldr	r3, [r8]
 1621 00a8 2960     		str	r1, [r5]
 1622 00aa 00FB03F0 		mul	r0, r0, r3
 1623 00ae 8649     		ldr	r1, .L323+16
 1624 00b0 A369     		ldr	r3, [r4, #24]	@ float
 1625 00b2 DFF87492 		ldr	r9, .L323+112
 1626 00b6 0860     		str	r0, [r1]
 1627 00b8 C9F80020 		str	r2, [r9]	@ float
 1628 00bc 3360     		str	r3, [r6]	@ float
 1629 00be FFF7FEFF 		bl	millis
 1630 00c2 0923     		movs	r3, #9
 1631 00c4 2568     		ldr	r5, [r4]
 1632 00c6 3860     		str	r0, [r7]
 1633 00c8 D5F8BC24 		ldr	r2, [r5, #1212]
 1634 00cc D9F80000 		ldr	r0, [r9]	@ float
 1635 00d0 C8F80020 		str	r2, [r8]
 1636 00d4 84F87C30 		strb	r3, [r4, #124]
 1637 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1638 00dc 7B4A     		ldr	r2, .L323+20
 1639 00de CDE90001 		strd	r0, [sp]
 1640 00e2 2846     		mov	r0, r5
 1641 00e4 3521     		movs	r1, #53
 1642 00e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1643              	.L276:
 1644 00ea 03B0     		add	sp, sp, #12
 1645              		@ sp needed
 1646 00ec BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1647              	.L289:
 1648 00f0 FFF7FEFF 		bl	_ZN3PID16GetPeakTempIndexEv
 1649 00f4 0028     		cmp	r0, #0
 1650 00f6 C0F21981 		blt	.L317
 1651 00fa CED1     		bne	.L299
 1652 00fc 744B     		ldr	r3, .L323+24
 1653 00fe 5B6C     		ldr	r3, [r3, #68]
ARM GAS  /tmp/cc5CpNMt.s 			page 30


 1654 0100 9B06     		lsls	r3, r3, #26
 1655 0102 00F1D480 		bmi	.L318
 1656              	.L300:
 1657 0106 734A     		ldr	r2, .L323+28
 1658 0108 3521     		movs	r1, #53
 1659 010a 2068     		ldr	r0, [r4]
 1660 010c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1661              	.L285:
 1662 0110 2046     		mov	r0, r4
 1663 0112 03B0     		add	sp, sp, #12
 1664              		@ sp needed
 1665 0114 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1666 0118 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 1667              	.L290:
 1668 011c 6E49     		ldr	r1, .L323+32
 1669 011e 3068     		ldr	r0, [r6]	@ float
 1670 0120 FFF7FEFF 		bl	__aeabi_fmul
 1671 0124 6D4B     		ldr	r3, .L323+36
 1672 0126 0546     		mov	r5, r0
 1673 0128 6D49     		ldr	r1, .L323+40
 1674 012a 1868     		ldr	r0, [r3]	@ float
 1675 012c FFF7FEFF 		bl	__aeabi_fmul
 1676 0130 0146     		mov	r1, r0
 1677 0132 2846     		mov	r0, r5
 1678 0134 FFF7FEFF 		bl	__aeabi_fadd
 1679 0138 0146     		mov	r1, r0
 1680 013a A069     		ldr	r0, [r4, #24]	@ float
 1681 013c FFF7FEFF 		bl	__aeabi_fcmpgt
 1682 0140 0028     		cmp	r0, #0
 1683 0142 D2D1     		bne	.L276
 1684 0144 2046     		mov	r0, r4
 1685 0146 FFF7FEFF 		bl	_ZN3PID14CalculateModelEv
 1686 014a E1E7     		b	.L285
 1687              	.L286:
 1688 014c 41F27070 		movw	r0, #6000
 1689 0150 2368     		ldr	r3, [r4]
 1690 0152 4FF08041 		mov	r1, #1073741824
 1691 0156 D3F8BC34 		ldr	r3, [r3, #1212]
 1692 015a B0FBF3F0 		udiv	r0, r0, r3
 1693 015e FFF7FEFF 		bl	_ZN3PID14ReadingsStableEjf
 1694 0162 0028     		cmp	r0, #0
 1695 0164 70D1     		bne	.L319
 1696 0166 FFF7FEFF 		bl	millis
 1697 016a 44F61F62 		movw	r2, #19999
 1698 016e 3B68     		ldr	r3, [r7]
 1699 0170 C01A     		subs	r0, r0, r3
 1700 0172 9042     		cmp	r0, r2
 1701 0174 B9D9     		bls	.L276
 1702 0176 5B4A     		ldr	r2, .L323+44
 1703 0178 3521     		movs	r1, #53
 1704 017a 2068     		ldr	r0, [r4]
 1705 017c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1706 0180 C6E7     		b	.L285
 1707              	.L288:
 1708 0182 534B     		ldr	r3, .L323+24
 1709 0184 94F97A10 		ldrsb	r1, [r4, #122]
 1710 0188 D868     		ldr	r0, [r3, #12]
ARM GAS  /tmp/cc5CpNMt.s 			page 31


 1711 018a FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 1712 018e 8146     		mov	r9, r0
 1713 0190 FFF7FEFF 		bl	millis
 1714 0194 3E68     		ldr	r6, [r7]
 1715 0196 861B     		subs	r6, r0, r6
 1716 0198 B9F1000F 		cmp	r9, #0
 1717 019c 3ED0     		beq	.L320
 1718 019e 5249     		ldr	r1, .L323+48
 1719 01a0 A06B     		ldr	r0, [r4, #56]	@ float
 1720 01a2 FFF7FEFF 		bl	__aeabi_fadd
 1721 01a6 5149     		ldr	r1, .L323+52
 1722 01a8 FFF7FEFF 		bl	__aeabi_fmul
 1723 01ac FFF7FEFF 		bl	__aeabi_f2uiz
 1724 01b0 8642     		cmp	r6, r0
 1725 01b2 66D8     		bhi	.L321
 1726              	.L305:
 1727 01b4 4E4B     		ldr	r3, .L323+56
 1728              	.L302:
 1729 01b6 9E42     		cmp	r6, r3
 1730 01b8 73D2     		bcs	.L322
 1731 01ba D4F81890 		ldr	r9, [r4, #24]	@ float
 1732 01be 4D4B     		ldr	r3, .L323+60
 1733 01c0 4846     		mov	r0, r9
 1734 01c2 1968     		ldr	r1, [r3]	@ float
 1735 01c4 FFF7FEFF 		bl	__aeabi_fcmpge
 1736 01c8 0028     		cmp	r0, #0
 1737 01ca 8ED0     		beq	.L276
 1738 01cc 0123     		movs	r3, #1
 1739 01ce D8F80020 		ldr	r2, [r8]
 1740 01d2 4949     		ldr	r1, .L323+64
 1741 01d4 2B60     		str	r3, [r5]
 1742 01d6 494B     		ldr	r3, .L323+68
 1743 01d8 0E60     		str	r6, [r1]
 1744 01da C2F80090 		str	r9, [r2]	@ float
 1745 01de C3F80090 		str	r9, [r3]	@ float
 1746 01e2 FFF7FEFF 		bl	millis
 1747 01e6 0821     		movs	r1, #8
 1748 01e8 0022     		movs	r2, #0
 1749 01ea 2368     		ldr	r3, [r4]
 1750 01ec 354E     		ldr	r6, .L323+12
 1751 01ee D3F8BC54 		ldr	r5, [r3, #1212]
 1752 01f2 3860     		str	r0, [r7]
 1753 01f4 94F87D00 		ldrb	r0, [r4, #125]	@ zero_extendqisi2
 1754 01f8 84F87C10 		strb	r1, [r4, #124]
 1755 01fc 3560     		str	r5, [r6]
 1756 01fe A266     		str	r2, [r4, #104]	@ float
 1757 0200 94F97A10 		ldrsb	r1, [r4, #122]
 1758 0204 08B1     		cbz	r0, .L297
 1759 0206 4FF07E52 		mov	r2, #1065353216
 1760              	.L297:
 1761 020a 1846     		mov	r0, r3
 1762 020c B4F84430 		ldrh	r3, [r4, #68]
 1763 0210 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1764 0214 2068     		ldr	r0, [r4]
 1765 0216 3A4A     		ldr	r2, .L323+72
 1766 0218 3521     		movs	r1, #53
 1767 021a 2DE0     		b	.L314
ARM GAS  /tmp/cc5CpNMt.s 			page 32


 1768              	.L320:
 1769 021c 3949     		ldr	r1, .L323+76
 1770 021e A06B     		ldr	r0, [r4, #56]	@ float
 1771 0220 FFF7FEFF 		bl	__aeabi_fadd
 1772 0224 3149     		ldr	r1, .L323+52
 1773 0226 FFF7FEFF 		bl	__aeabi_fmul
 1774 022a FFF7FEFF 		bl	__aeabi_f2uiz
 1775 022e 8642     		cmp	r6, r0
 1776 0230 08D9     		bls	.L313
 1777 0232 2A4B     		ldr	r3, .L323+36
 1778 0234 A069     		ldr	r0, [r4, #24]	@ float
 1779 0236 1968     		ldr	r1, [r3]	@ float
 1780 0238 FFF7FEFF 		bl	__aeabi_fsub
 1781 023c 3249     		ldr	r1, .L323+80
 1782 023e FFF7FEFF 		bl	__aeabi_fcmplt
 1783 0242 40BB     		cbnz	r0, .L303
 1784              	.L313:
 1785 0244 314B     		ldr	r3, .L323+84
 1786 0246 B6E7     		b	.L302
 1787              	.L319:
 1788 0248 0121     		movs	r1, #1
 1789 024a A369     		ldr	r3, [r4, #24]	@ float
 1790 024c 234A     		ldr	r2, .L323+36
 1791 024e 2960     		str	r1, [r5]
 1792 0250 1360     		str	r3, [r2]	@ float
 1793 0252 3360     		str	r3, [r6]	@ float
 1794 0254 FFF7FEFF 		bl	millis
 1795 0258 2D49     		ldr	r1, .L323+88
 1796 025a 0346     		mov	r3, r0
 1797 025c 0722     		movs	r2, #7
 1798 025e 2068     		ldr	r0, [r4]
 1799 0260 0968     		ldr	r1, [r1]	@ float
 1800 0262 D0F8BC64 		ldr	r6, [r0, #1212]
 1801 0266 A166     		str	r1, [r4, #104]	@ float
 1802 0268 3521     		movs	r1, #53
 1803 026a 164D     		ldr	r5, .L323+12
 1804 026c 84F87C20 		strb	r2, [r4, #124]
 1805 0270 284A     		ldr	r2, .L323+92
 1806 0272 2367     		str	r3, [r4, #112]
 1807 0274 3B60     		str	r3, [r7]
 1808 0276 2E60     		str	r6, [r5]
 1809              	.L314:
 1810 0278 03B0     		add	sp, sp, #12
 1811              		@ sp needed
 1812 027a BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1813 027e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1814              	.L321:
 1815 0282 164B     		ldr	r3, .L323+36
 1816 0284 A069     		ldr	r0, [r4, #24]	@ float
 1817 0286 1968     		ldr	r1, [r3]	@ float
 1818 0288 FFF7FEFF 		bl	__aeabi_fsub
 1819 028c 1E49     		ldr	r1, .L323+80
 1820 028e FFF7FEFF 		bl	__aeabi_fcmplt
 1821 0292 0028     		cmp	r0, #0
 1822 0294 8ED0     		beq	.L305
 1823              	.L303:
 1824 0296 204A     		ldr	r2, .L323+96
ARM GAS  /tmp/cc5CpNMt.s 			page 33


 1825 0298 3521     		movs	r1, #53
 1826 029a 2068     		ldr	r0, [r4]
 1827 029c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1828 02a0 36E7     		b	.L285
 1829              	.L322:
 1830 02a2 1E4A     		ldr	r2, .L323+100
 1831 02a4 3521     		movs	r1, #53
 1832 02a6 2068     		ldr	r0, [r4]
 1833 02a8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1834 02ac 30E7     		b	.L285
 1835              	.L318:
 1836 02ae 1C49     		ldr	r1, .L323+104
 1837 02b0 2046     		mov	r0, r4
 1838 02b2 FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1839 02b6 26E7     		b	.L300
 1840              	.L324:
 1841              		.align	2
 1842              	.L323:
 1843 02b8 00000000 		.word	.LANCHOR1
 1844 02bc 00000000 		.word	.LANCHOR11
 1845 02c0 00000000 		.word	.LANCHOR10
 1846 02c4 00000000 		.word	.LANCHOR2
 1847 02c8 00000000 		.word	.LANCHOR8
 1848 02cc 50010000 		.word	.LC26
 1849 02d0 00000000 		.word	reprap
 1850 02d4 0C010000 		.word	.LC25
 1851 02d8 CCCCCC3E 		.word	1053609164
 1852 02dc 00000000 		.word	.LANCHOR5
 1853 02e0 9A99193F 		.word	1058642330
 1854 02e4 20000000 		.word	.LC20
 1855 02e8 00007042 		.word	1114636288
 1856 02ec 00007A44 		.word	1148846080
 1857 02f0 804F1200 		.word	1200000
 1858 02f4 00000000 		.word	.LANCHOR4
 1859 02f8 00000000 		.word	.LANCHOR7
 1860 02fc 00000000 		.word	.LANCHOR6
 1861 0300 A0000000 		.word	.LC22
 1862 0304 0000F041 		.word	1106247680
 1863 0308 00004040 		.word	1077936128
 1864 030c E0930400 		.word	300000
 1865 0310 00000000 		.word	.LANCHOR3
 1866 0314 00000000 		.word	.LC19
 1867 0318 80010000 		.word	.LC27
 1868 031c 60000000 		.word	.LC21
 1869 0320 F8000000 		.word	.LC24
 1870 0324 00000000 		.word	.LANCHOR0
 1871 0328 00000000 		.word	.LANCHOR9
 1872              	.L317:
 1873 032c FFF7FEFF 		bl	millis
 1874 0330 4EF65F22 		movw	r2, #59999
 1875 0334 3B68     		ldr	r3, [r7]
 1876 0336 C31A     		subs	r3, r0, r3
 1877 0338 9342     		cmp	r3, r2
 1878 033a 7FF6D6AE 		bls	.L276
 1879 033e 034A     		ldr	r2, .L325
 1880 0340 3521     		movs	r1, #53
 1881 0342 2068     		ldr	r0, [r4]
ARM GAS  /tmp/cc5CpNMt.s 			page 34


 1882 0344 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1883 0348 E2E6     		b	.L285
 1884              	.L326:
 1885 034a 00BF     		.align	2
 1886              	.L325:
 1887 034c C0000000 		.word	.LC23
 1888              		.size	_ZN3PID12DoTuningStepEv, .-_ZN3PID12DoTuningStepEv
 1889              		.global	__aeabi_fcmpun
 1890              		.section	.text._ZN3PID4SpinEv,"ax",%progbits
 1891              		.align	1
 1892              		.p2align 2,,3
 1893              		.global	_ZN3PID4SpinEv
 1894              		.syntax unified
 1895              		.thumb
 1896              		.thumb_func
 1897              		.fpu softvfp
 1898              		.type	_ZN3PID4SpinEv, %function
 1899              	_ZN3PID4SpinEv:
 1900              		@ args = 0, pretend = 0, frame = 24
 1901              		@ frame_needed = 0, uses_anonymous_args = 0
 1902 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1903 0004 90F84690 		ldrb	r9, [r0, #70]	@ zero_extendqisi2
 1904 0008 89B0     		sub	sp, sp, #36
 1905 000a B9F1000F 		cmp	r9, #0
 1906 000e 02D1     		bne	.L487
 1907 0010 09B0     		add	sp, sp, #36
 1908              		@ sp needed
 1909 0012 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1910              	.L487:
 1911 0016 0446     		mov	r4, r0
 1912 0018 0023     		movs	r3, #0
 1913 001a 964D     		ldr	r5, .L499
 1914 001c 08AA     		add	r2, sp, #32
 1915 001e 02F8013D 		strb	r3, [r2, #-1]!
 1916 0022 E868     		ldr	r0, [r5, #12]
 1917 0024 94F97A10 		ldrsb	r1, [r4, #122]
 1918 0028 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1919 002c 9DF81F70 		ldrb	r7, [sp, #31]	@ zero_extendqisi2
 1920 0030 8246     		mov	r10, r0
 1921 0032 A061     		str	r0, [r4, #24]	@ float
 1922 0034 002F     		cmp	r7, #0
 1923 0036 61D1     		bne	.L488
 1924 0038 94F87B60 		ldrb	r6, [r4, #123]	@ zero_extendqisi2
 1925 003c 84F88070 		strb	r7, [r4, #128]
 1926 0040 16F00802 		ands	r2, r6, #8
 1927 0044 E36A     		ldr	r3, [r4, #44]
 1928 0046 40F0A580 		bne	.L335
 1929 004a 9146     		mov	r9, r2
 1930 004c 0027     		movs	r7, #0
 1931 004e 03F10608 		add	r8, r3, #6
 1932              	.L336:
 1933 0052 7600     		lsls	r6, r6, #1
 1934 0054 94F87E30 		ldrb	r3, [r4, #126]	@ zero_extendqisi2
 1935 0058 46F00106 		orr	r6, r6, #1
 1936 005c 04EB8808 		add	r8, r4, r8, lsl #2
 1937 0060 C8F804A0 		str	r10, [r8, #4]	@ float
 1938 0064 84F87B60 		strb	r6, [r4, #123]
ARM GAS  /tmp/cc5CpNMt.s 			page 35


 1939 0068 002B     		cmp	r3, #0
 1940 006a 00F09080 		beq	.L337
 1941 006e D4F808B0 		ldr	fp, [r4, #8]	@ float
 1942              	.L338:
 1943 0072 5146     		mov	r1, r10
 1944 0074 5846     		mov	r0, fp
 1945 0076 FFF7FEFF 		bl	__aeabi_fsub
 1946 007a 94F87C60 		ldrb	r6, [r4, #124]	@ zero_extendqisi2
 1947 007e 8046     		mov	r8, r0
 1948 0080 042E     		cmp	r6, #4
 1949 0082 00F00581 		beq	.L340
 1950 0086 052E     		cmp	r6, #5
 1951 0088 00F09681 		beq	.L341
 1952 008c 032E     		cmp	r6, #3
 1953 008e 00F0A280 		beq	.L489
 1954              	.L339:
 1955 0092 022E     		cmp	r6, #2
 1956 0094 73D8     		bhi	.L360
 1957 0096 0022     		movs	r2, #0
 1958 0098 A266     		str	r2, [r4, #104]	@ float
 1959              	.L331:
 1960 009a 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 1961 009e 2568     		ldr	r5, [r4]
 1962 00a0 94F97A60 		ldrsb	r6, [r4, #122]
 1963 00a4 2BB1     		cbz	r3, .L392
 1964 00a6 1146     		mov	r1, r2
 1965 00a8 4FF07E50 		mov	r0, #1065353216
 1966 00ac FFF7FEFF 		bl	__aeabi_fsub
 1967 00b0 0246     		mov	r2, r0
 1968              	.L392:
 1969 00b2 3146     		mov	r1, r6
 1970 00b4 2846     		mov	r0, r5
 1971 00b6 B4F84430 		ldrh	r3, [r4, #68]
 1972 00ba FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 1973 00be 2368     		ldr	r3, [r4]
 1974 00c0 D3F8BC04 		ldr	r0, [r3, #1212]
 1975 00c4 FFF7FEFF 		bl	__aeabi_ui2f
 1976 00c8 6B49     		ldr	r1, .L499+4
 1977 00ca FFF7FEFF 		bl	__aeabi_fdiv
 1978 00ce 0146     		mov	r1, r0
 1979 00d0 4FF07E50 		mov	r0, #1065353216
 1980 00d4 FFF7FEFF 		bl	__aeabi_fsub
 1981 00d8 E16E     		ldr	r1, [r4, #108]	@ float
 1982 00da FFF7FEFF 		bl	__aeabi_fmul
 1983 00de A16E     		ldr	r1, [r4, #104]	@ float
 1984 00e0 FFF7FEFF 		bl	__aeabi_fadd
 1985 00e4 E36A     		ldr	r3, [r4, #44]
 1986 00e6 E066     		str	r0, [r4, #108]	@ float
 1987 00e8 0133     		adds	r3, r3, #1
 1988 00ea 03F00303 		and	r3, r3, #3
 1989 00ee E362     		str	r3, [r4, #44]
 1990 00f0 FFF7FEFF 		bl	millis
 1991 00f4 6067     		str	r0, [r4, #116]
 1992 00f6 09B0     		add	sp, sp, #36
 1993              		@ sp needed
 1994 00f8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1995              	.L488:
ARM GAS  /tmp/cc5CpNMt.s 			page 36


 1996 00fc 94F87B30 		ldrb	r3, [r4, #123]	@ zero_extendqisi2
 1997 0100 94F87C20 		ldrb	r2, [r4, #124]	@ zero_extendqisi2
 1998 0104 5B00     		lsls	r3, r3, #1
 1999 0106 022A     		cmp	r2, #2
 2000 0108 84F87B30 		strb	r3, [r4, #123]
 2001 010c 3DD9     		bls	.L478
 2002 010e 94F88030 		ldrb	r3, [r4, #128]	@ zero_extendqisi2
 2003 0112 0133     		adds	r3, r3, #1
 2004 0114 DBB2     		uxtb	r3, r3
 2005 0116 042B     		cmp	r3, #4
 2006 0118 84F88030 		strb	r3, [r4, #128]
 2007 011c 35D9     		bls	.L478
 2008 011e 0022     		movs	r2, #0
 2009 0120 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2010 0124 A266     		str	r2, [r4, #104]	@ float
 2011 0126 2068     		ldr	r0, [r4]
 2012 0128 94F97A10 		ldrsb	r1, [r4, #122]
 2013 012c 0BB1     		cbz	r3, .L333
 2014 012e 4FF07E52 		mov	r2, #1065353216
 2015              	.L333:
 2016 0132 B4F84430 		ldrh	r3, [r4, #68]
 2017 0136 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2018 013a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 2019 013e 052B     		cmp	r3, #5
 2020 0140 00F2F581 		bhi	.L490
 2021              	.L334:
 2022 0144 0023     		movs	r3, #0
 2023 0146 2869     		ldr	r0, [r5, #16]
 2024 0148 84F87C30 		strb	r3, [r4, #124]
 2025 014c 94F97A10 		ldrsb	r1, [r4, #122]
 2026 0150 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2027 0154 3846     		mov	r0, r7
 2028 0156 2568     		ldr	r5, [r4]
 2029 0158 94F97A60 		ldrsb	r6, [r4, #122]
 2030 015c FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 2031 0160 464A     		ldr	r2, .L499+8
 2032 0162 3346     		mov	r3, r6
 2033 0164 0090     		str	r0, [sp]
 2034 0166 40F2B511 		movw	r1, #437
 2035 016a 2846     		mov	r0, r5
 2036 016c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2037 0170 94F97A10 		ldrsb	r1, [r4, #122]
 2038 0174 3F48     		ldr	r0, .L499
 2039 0176 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2040 017a A26E     		ldr	r2, [r4, #104]	@ float
 2041 017c 8DE7     		b	.L331
 2042              	.L360:
 2043 017e 052E     		cmp	r6, #5
 2044 0180 40F29580 		bls	.L405
 2045 0184 2046     		mov	r0, r4
 2046 0186 FFF7FEFF 		bl	_ZN3PID12DoTuningStepEv
 2047              	.L478:
 2048 018a A26E     		ldr	r2, [r4, #104]	@ float
 2049 018c 85E7     		b	.L331
 2050              	.L337:
 2051 018e D4F80CB0 		ldr	fp, [r4, #12]	@ float
 2052 0192 6EE7     		b	.L338
ARM GAS  /tmp/cc5CpNMt.s 			page 37


 2053              	.L335:
 2054 0194 03F10608 		add	r8, r3, #6
 2055 0198 04EB8803 		add	r3, r4, r8, lsl #2
 2056 019c 5968     		ldr	r1, [r3, #4]	@ float
 2057 019e FFF7FEFF 		bl	__aeabi_fsub
 2058 01a2 3749     		ldr	r1, .L499+12
 2059 01a4 FFF7FEFF 		bl	__aeabi_fmul
 2060 01a8 2368     		ldr	r3, [r4]
 2061 01aa 0746     		mov	r7, r0
 2062 01ac D3F8BC04 		ldr	r0, [r3, #1212]
 2063 01b0 8000     		lsls	r0, r0, #2
 2064 01b2 FFF7FEFF 		bl	__aeabi_ui2f
 2065 01b6 0146     		mov	r1, r0
 2066 01b8 3846     		mov	r0, r7
 2067 01ba FFF7FEFF 		bl	__aeabi_fdiv
 2068 01be 3149     		ldr	r1, .L499+16
 2069 01c0 0746     		mov	r7, r0
 2070 01c2 20F00040 		bic	r0, r0, #-2147483648
 2071 01c6 FFF7FEFF 		bl	__aeabi_fcmple
 2072 01ca 0028     		cmp	r0, #0
 2073 01cc 7FF441AF 		bne	.L336
 2074 01d0 8146     		mov	r9, r0
 2075 01d2 0027     		movs	r7, #0
 2076 01d4 3DE7     		b	.L336
 2077              	.L489:
 2078 01d6 4FF07E51 		mov	r1, #1065353216
 2079 01da FFF7FEFF 		bl	__aeabi_fcmple
 2080 01de 0028     		cmp	r0, #0
 2081 01e0 5FD1     		bne	.L359
 2082 01e2 B9F1000F 		cmp	r9, #0
 2083 01e6 62D0     		beq	.L405
 2084 01e8 2368     		ldr	r3, [r4]
 2085 01ea D3F8BC04 		ldr	r0, [r3, #1212]
 2086 01ee FFF7FEFF 		bl	__aeabi_ui2f
 2087 01f2 E16E     		ldr	r1, [r4, #108]	@ float
 2088 01f4 FFF7FEFF 		bl	__aeabi_fmul
 2089 01f8 1F49     		ldr	r1, .L499+4
 2090 01fa FFF7FEFF 		bl	__aeabi_fdiv
 2091 01fe 4FF07D51 		mov	r1, #1061158912
 2092 0202 8146     		mov	r9, r0
 2093 0204 206B     		ldr	r0, [r4, #48]	@ float
 2094 0206 FFF7FEFF 		bl	__aeabi_fmul
 2095 020a 0146     		mov	r1, r0
 2096 020c 4846     		mov	r0, r9
 2097 020e FFF7FEFF 		bl	__aeabi_fmul
 2098 0212 1D49     		ldr	r1, .L499+20
 2099 0214 8146     		mov	r9, r0
 2100 0216 D4F834B0 		ldr	fp, [r4, #52]	@ float
 2101 021a FFF7FEFF 		bl	__aeabi_fcmpge
 2102 021e 0028     		cmp	r0, #0
 2103 0220 00F08F81 		beq	.L457
 2104 0224 1949     		ldr	r1, .L499+24
 2105 0226 4846     		mov	r0, r9
 2106 0228 FFF7FEFF 		bl	__aeabi_fadd
 2107 022c 5146     		mov	r1, r10
 2108 022e FFF7FEFF 		bl	__aeabi_fsub
 2109 0232 5946     		mov	r1, fp
ARM GAS  /tmp/cc5CpNMt.s 			page 38


 2110 0234 8246     		mov	r10, r0
 2111 0236 4846     		mov	r0, r9
 2112 0238 FFF7FEFF 		bl	__aeabi_fdiv
 2113 023c 0146     		mov	r1, r0
 2114 023e 5046     		mov	r0, r10
 2115 0240 FFF7FEFF 		bl	__aeabi_fmul
 2116 0244 4946     		mov	r1, r9
 2117 0246 FFF7FEFF 		bl	__aeabi_fdiv
 2118 024a 8146     		mov	r9, r0
 2119              	.L346:
 2120 024c 4FF07A51 		mov	r1, #1048576000
 2121 0250 3846     		mov	r0, r7
 2122 0252 FFF7FEFF 		bl	__aeabi_fadd
 2123 0256 4946     		mov	r1, r9
 2124 0258 FFF7FEFF 		bl	__aeabi_fcmplt
 2125 025c 0028     		cmp	r0, #0
 2126 025e 40F08881 		bne	.L491
 2127 0262 B4F87830 		ldrh	r3, [r4, #120]
 2128 0266 002B     		cmp	r3, #0
 2129 0268 00F0FC80 		beq	.L492
 2130              	.L406:
 2131 026c 013B     		subs	r3, r3, #1
 2132 026e A4F87830 		strh	r3, [r4, #120]	@ movhi
 2133 0272 0EE7     		b	.L339
 2134              	.L500:
 2135              		.align	2
 2136              	.L499:
 2137 0274 00000000 		.word	reprap
 2138 0278 00409C45 		.word	1167867904
 2139 027c 00000000 		.word	.LC28
 2140 0280 00007A44 		.word	1148846080
 2141 0284 00002041 		.word	1092616192
 2142 0288 0000A041 		.word	1101004800
 2143 028c 0000C841 		.word	1103626240
 2144              	.L340:
 2145 0290 AD49     		ldr	r1, .L501
 2146 0292 FFF7FEFF 		bl	__aeabi_fcmpge
 2147 0296 50B1     		cbz	r0, .L405
 2148 0298 5846     		mov	r0, fp
 2149 029a AC49     		ldr	r1, .L501+4
 2150 029c FFF7FEFF 		bl	__aeabi_fcmpgt
 2151 02a0 28B1     		cbz	r0, .L405
 2152              	.L359:
 2153 02a2 0526     		movs	r6, #5
 2154 02a4 0023     		movs	r3, #0
 2155 02a6 84F87C60 		strb	r6, [r4, #124]
 2156 02aa A4F87830 		strh	r3, [r4, #120]	@ movhi
 2157              	.L405:
 2158 02ae 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2159 02b2 002B     		cmp	r3, #0
 2160 02b4 00F0DB80 		beq	.L362
 2161 02b8 052E     		cmp	r6, #5
 2162 02ba 00F0E180 		beq	.L363
 2163              	.L407:
 2164 02be 28F00040 		bic	r0, r8, #-2147483648
 2165 02c2 A349     		ldr	r1, .L501+8
 2166 02c4 FFF7FEFF 		bl	__aeabi_fcmplt
ARM GAS  /tmp/cc5CpNMt.s 			page 39


 2167 02c8 0028     		cmp	r0, #0
 2168 02ca 40F0D980 		bne	.L363
 2169 02ce 04F14C0B 		add	fp, r4, #76
 2170              	.L395:
 2171 02d2 DBF80810 		ldr	r1, [fp, #8]	@ float
 2172 02d6 3846     		mov	r0, r7
 2173 02d8 FFF7FEFF 		bl	__aeabi_fmul
 2174 02dc DBF80030 		ldr	r3, [fp]	@ float
 2175 02e0 0146     		mov	r1, r0
 2176 02e2 9946     		mov	r9, r3
 2177 02e4 4046     		mov	r0, r8
 2178 02e6 0593     		str	r3, [sp, #20]	@ float
 2179 02e8 FFF7FEFF 		bl	__aeabi_fsub
 2180 02ec 4946     		mov	r1, r9
 2181 02ee FFF7FEFF 		bl	__aeabi_fmul
 2182 02f2 9849     		ldr	r1, .L501+12
 2183 02f4 0390     		str	r0, [sp, #12]	@ float
 2184 02f6 A069     		ldr	r0, [r4, #24]	@ float
 2185 02f8 FFF7FEFF 		bl	__aeabi_fsub
 2186 02fc 216B     		ldr	r1, [r4, #48]	@ float
 2187 02fe FFF7FEFF 		bl	__aeabi_fdiv
 2188 0302 0146     		mov	r1, r0
 2189 0304 8246     		mov	r10, r0
 2190 0306 D4F83C90 		ldr	r9, [r4, #60]	@ float
 2191 030a FFF7FEFF 		bl	__aeabi_fcmpun
 2192 030e 88B9     		cbnz	r0, .L365
 2193 0310 4946     		mov	r1, r9
 2194 0312 5046     		mov	r0, r10
 2195 0314 FFF7FEFF 		bl	__aeabi_fcmplt
 2196 0318 28B9     		cbnz	r0, .L367
 2197 031a 4946     		mov	r1, r9
 2198 031c 4846     		mov	r0, r9
 2199 031e FFF7FEFF 		bl	__aeabi_fcmpun
 2200 0322 CA46     		mov	r10, r9
 2201 0324 30B9     		cbnz	r0, .L365
 2202              	.L367:
 2203 0326 0021     		movs	r1, #0
 2204 0328 5046     		mov	r0, r10
 2205 032a FFF7FEFF 		bl	__aeabi_fcmpgt
 2206 032e 0028     		cmp	r0, #0
 2207 0330 00F01C81 		beq	.L493
 2208              	.L365:
 2209 0334 5146     		mov	r1, r10
 2210 0336 0398     		ldr	r0, [sp, #12]	@ float
 2211 0338 FFF7FEFF 		bl	__aeabi_fadd
 2212 033c 4946     		mov	r1, r9
 2213 033e 0490     		str	r0, [sp, #16]	@ float
 2214 0340 FFF7FEFF 		bl	__aeabi_fcmpgt
 2215 0344 0028     		cmp	r0, #0
 2216 0346 00F09E80 		beq	.L463
 2217 034a 032E     		cmp	r6, #3
 2218 034c C4F86890 		str	r9, [r4, #104]	@ float
 2219 0350 00F06B81 		beq	.L494
 2220              	.L371:
 2221 0354 94F84830 		ldrb	r3, [r4, #72]	@ zero_extendqisi2
 2222 0358 23B1     		cbz	r3, .L386
 2223 035a A16E     		ldr	r1, [r4, #104]	@ float
ARM GAS  /tmp/cc5CpNMt.s 			page 40


 2224 035c E06B     		ldr	r0, [r4, #60]	@ float
 2225 035e FFF7FEFF 		bl	__aeabi_fsub
 2226 0362 A066     		str	r0, [r4, #104]	@ float
 2227              	.L386:
 2228 0364 6668     		ldr	r6, [r4, #4]
 2229 0366 002E     		cmp	r6, #0
 2230 0368 3FF40FAF 		beq	.L478
 2231 036c 0027     		movs	r7, #0
 2232 036e DFF8F881 		ldr	r8, .L501+32
 2233 0372 08E0     		b	.L391
 2234              	.L495:
 2235 0374 012B     		cmp	r3, #1
 2236 0376 02D1     		bne	.L388
 2237 0378 2046     		mov	r0, r4
 2238 037a FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 2239              	.L388:
 2240 037e 3668     		ldr	r6, [r6]
 2241 0380 002E     		cmp	r6, #0
 2242 0382 3FF402AF 		beq	.L478
 2243              	.L391:
 2244 0386 3046     		mov	r0, r6
 2245 0388 FFF7FEFF 		bl	_ZN16HeaterProtection5CheckEv
 2246 038c 0028     		cmp	r0, #0
 2247 038e F6D1     		bne	.L388
 2248 0390 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2249 0392 A766     		str	r7, [r4, #104]	@ float
 2250 0394 002B     		cmp	r3, #0
 2251 0396 EDD1     		bne	.L495
 2252 0398 84F87C30 		strb	r3, [r4, #124]
 2253 039c 94F97A10 		ldrsb	r1, [r4, #122]
 2254 03a0 2869     		ldr	r0, [r5, #16]
 2255 03a2 FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2256 03a6 94F97A30 		ldrsb	r3, [r4, #122]
 2257 03aa 4246     		mov	r2, r8
 2258 03ac 40F2B511 		movw	r1, #437
 2259 03b0 2068     		ldr	r0, [r4]
 2260 03b2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2261 03b6 E2E7     		b	.L388
 2262              	.L341:
 2263 03b8 20F00040 		bic	r0, r0, #-2147483648
 2264 03bc 2169     		ldr	r1, [r4, #16]	@ float
 2265 03be FFF7FEFF 		bl	__aeabi_fcmpgt
 2266 03c2 0028     		cmp	r0, #0
 2267 03c4 45D0     		beq	.L353
 2268 03c6 5046     		mov	r0, r10
 2269 03c8 6049     		ldr	r1, .L501+4
 2270 03ca FFF7FEFF 		bl	__aeabi_fcmpgt
 2271 03ce 0028     		cmp	r0, #0
 2272 03d0 3FD0     		beq	.L353
 2273 03d2 B4F87830 		ldrh	r3, [r4, #120]
 2274 03d6 D4F80090 		ldr	r9, [r4]
 2275 03da 0133     		adds	r3, r3, #1
 2276 03dc D9F8BC04 		ldr	r0, [r9, #1212]
 2277 03e0 9BB2     		uxth	r3, r3
 2278 03e2 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2279 03e6 00FB03F0 		mul	r0, r0, r3
 2280 03ea FFF7FEFF 		bl	__aeabi_ui2f
ARM GAS  /tmp/cc5CpNMt.s 			page 41


 2281 03ee 5A49     		ldr	r1, .L501+16
 2282 03f0 8246     		mov	r10, r0
 2283 03f2 6069     		ldr	r0, [r4, #20]	@ float
 2284 03f4 FFF7FEFF 		bl	__aeabi_fmul
 2285 03f8 0146     		mov	r1, r0
 2286 03fa 5046     		mov	r0, r10
 2287 03fc FFF7FEFF 		bl	__aeabi_fcmpgt
 2288 0400 0028     		cmp	r0, #0
 2289 0402 3FF454AF 		beq	.L405
 2290 0406 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2291 040a 94F97A10 		ldrsb	r1, [r4, #122]
 2292 040e 002B     		cmp	r3, #0
 2293 0410 40F02081 		bne	.L412
 2294 0414 0022     		movs	r2, #0
 2295              	.L357:
 2296 0416 4846     		mov	r0, r9
 2297 0418 B4F84430 		ldrh	r3, [r4, #68]
 2298 041c FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2299 0420 0023     		movs	r3, #0
 2300 0422 94F97A10 		ldrsb	r1, [r4, #122]
 2301 0426 84F87C30 		strb	r3, [r4, #124]
 2302 042a 2869     		ldr	r0, [r5, #16]
 2303 042c FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2304 0430 2069     		ldr	r0, [r4, #16]	@ float
 2305 0432 FFF7FEFF 		bl	__aeabi_f2d
 2306 0436 2268     		ldr	r2, [r4]
 2307 0438 94F97A30 		ldrsb	r3, [r4, #122]
 2308 043c CDE90001 		strd	r0, [sp]
 2309 0440 1046     		mov	r0, r2
 2310 0442 40F2B511 		movw	r1, #437
 2311 0446 454A     		ldr	r2, .L501+20
 2312 0448 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2313 044c 94F87C60 		ldrb	r6, [r4, #124]	@ zero_extendqisi2
 2314 0450 1FE6     		b	.L339
 2315              	.L353:
 2316 0452 B4F87830 		ldrh	r3, [r4, #120]
 2317 0456 002B     		cmp	r3, #0
 2318 0458 3FF429AF 		beq	.L405
 2319 045c 013B     		subs	r3, r3, #1
 2320 045e A4F87830 		strh	r3, [r4, #120]	@ movhi
 2321 0462 24E7     		b	.L405
 2322              	.L492:
 2323 0464 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 2324 0468 002B     		cmp	r3, #0
 2325 046a 7FF428AF 		bne	.L407
 2326              	.L362:
 2327 046e 4046     		mov	r0, r8
 2328 0470 0021     		movs	r1, #0
 2329 0472 FFF7FEFF 		bl	__aeabi_fcmpgt
 2330 0476 0028     		cmp	r0, #0
 2331 0478 61D0     		beq	.L469
 2332 047a E36B     		ldr	r3, [r4, #60]	@ float
 2333              	.L384:
 2334 047c A366     		str	r3, [r4, #104]	@ float
 2335 047e 69E7     		b	.L371
 2336              	.L363:
 2337 0480 04F1580B 		add	fp, r4, #88
ARM GAS  /tmp/cc5CpNMt.s 			page 42


 2338 0484 25E7     		b	.L395
 2339              	.L463:
 2340 0486 0026     		movs	r6, #0
 2341 0488 0498     		ldr	r0, [sp, #16]	@ float
 2342 048a 3146     		mov	r1, r6
 2343 048c FFF7FEFF 		bl	__aeabi_fcmplt
 2344 0490 0028     		cmp	r0, #0
 2345 0492 4AD1     		bne	.L380
 2346 0494 0599     		ldr	r1, [sp, #20]	@ float
 2347 0496 4046     		mov	r0, r8
 2348 0498 FFF7FEFF 		bl	__aeabi_fmul
 2349 049c DBF80410 		ldr	r1, [fp, #4]	@ float
 2350 04a0 FFF7FEFF 		bl	__aeabi_fmul
 2351 04a4 2368     		ldr	r3, [r4]
 2352 04a6 0646     		mov	r6, r0
 2353 04a8 D3F8BC04 		ldr	r0, [r3, #1212]
 2354 04ac FFF7FEFF 		bl	__aeabi_ui2f
 2355 04b0 0146     		mov	r1, r0
 2356 04b2 3046     		mov	r0, r6
 2357 04b4 FFF7FEFF 		bl	__aeabi_fmul
 2358 04b8 2949     		ldr	r1, .L501+24
 2359 04ba FFF7FEFF 		bl	__aeabi_fmul
 2360 04be 616E     		ldr	r1, [r4, #100]	@ float
 2361 04c0 FFF7FEFF 		bl	__aeabi_fadd
 2362 04c4 0146     		mov	r1, r0
 2363 04c6 0646     		mov	r6, r0
 2364 04c8 FFF7FEFF 		bl	__aeabi_fcmpun
 2365 04cc 88B9     		cbnz	r0, .L376
 2366 04ce 4946     		mov	r1, r9
 2367 04d0 3046     		mov	r0, r6
 2368 04d2 FFF7FEFF 		bl	__aeabi_fcmplt
 2369 04d6 28B9     		cbnz	r0, .L378
 2370 04d8 4946     		mov	r1, r9
 2371 04da 4846     		mov	r0, r9
 2372 04dc FFF7FEFF 		bl	__aeabi_fcmpun
 2373 04e0 4E46     		mov	r6, r9
 2374 04e2 30B9     		cbnz	r0, .L376
 2375              	.L378:
 2376 04e4 0021     		movs	r1, #0
 2377 04e6 3046     		mov	r0, r6
 2378 04e8 FFF7FEFF 		bl	__aeabi_fcmpgt
 2379 04ec 0028     		cmp	r0, #0
 2380 04ee 00F0AD80 		beq	.L496
 2381              	.L376:
 2382 04f2 3146     		mov	r1, r6
 2383 04f4 6666     		str	r6, [r4, #100]	@ float
 2384 04f6 0398     		ldr	r0, [sp, #12]	@ float
 2385 04f8 FFF7FEFF 		bl	__aeabi_fadd
 2386 04fc 0146     		mov	r1, r0
 2387 04fe 0646     		mov	r6, r0
 2388 0500 FFF7FEFF 		bl	__aeabi_fcmpun
 2389 0504 88B9     		cbnz	r0, .L380
 2390 0506 4946     		mov	r1, r9
 2391 0508 3046     		mov	r0, r6
 2392 050a FFF7FEFF 		bl	__aeabi_fcmplt
 2393 050e 28B9     		cbnz	r0, .L382
 2394 0510 4946     		mov	r1, r9
ARM GAS  /tmp/cc5CpNMt.s 			page 43


 2395 0512 4846     		mov	r0, r9
 2396 0514 FFF7FEFF 		bl	__aeabi_fcmpun
 2397 0518 4E46     		mov	r6, r9
 2398 051a 30B9     		cbnz	r0, .L380
 2399              	.L382:
 2400 051c 0021     		movs	r1, #0
 2401 051e 3046     		mov	r0, r6
 2402 0520 FFF7FEFF 		bl	__aeabi_fcmpgt
 2403 0524 0028     		cmp	r0, #0
 2404 0526 00F09380 		beq	.L497
 2405              	.L380:
 2406 052a A666     		str	r6, [r4, #104]	@ float
 2407 052c 12E7     		b	.L371
 2408              	.L490:
 2409 052e 0D4E     		ldr	r6, .L501+28
 2410 0530 0421     		movs	r1, #4
 2411 0532 3068     		ldr	r0, [r6]
 2412 0534 FFF7FEFF 		bl	_ZdlPvj
 2413 0538 0023     		movs	r3, #0
 2414 053a 3360     		str	r3, [r6]
 2415 053c 02E6     		b	.L334
 2416              	.L469:
 2417 053e 0023     		movs	r3, #0
 2418 0540 9CE7     		b	.L384
 2419              	.L457:
 2420 0542 4FF00009 		mov	r9, #0
 2421 0546 81E6     		b	.L346
 2422              	.L502:
 2423              		.align	2
 2424              	.L501:
 2425 0548 000080BF 		.word	-1082130432
 2426 054c 00003442 		.word	1110704128
 2427 0550 00004040 		.word	1077936128
 2428 0554 0000C841 		.word	1103626240
 2429 0558 00007A44 		.word	1148846080
 2430 055c 8C000000 		.word	.LC30
 2431 0560 6F12833A 		.word	981668463
 2432 0564 00000000 		.word	.LANCHOR0
 2433 0568 D0000000 		.word	.LC31
 2434              	.L493:
 2435 056c 4FF0000A 		mov	r10, #0
 2436 0570 E0E6     		b	.L365
 2437              	.L491:
 2438 0572 FFF7FEFF 		bl	millis
 2439 0576 236F     		ldr	r3, [r4, #112]
 2440 0578 C01A     		subs	r0, r0, r3
 2441 057a FFF7FEFF 		bl	__aeabi_ui2f
 2442 057e 3A49     		ldr	r1, .L503
 2443 0580 0646     		mov	r6, r0
 2444 0582 A06B     		ldr	r0, [r4, #56]	@ float
 2445 0584 FFF7FEFF 		bl	__aeabi_fmul
 2446 0588 0146     		mov	r1, r0
 2447 058a FFF7FEFF 		bl	__aeabi_fadd
 2448 058e 0146     		mov	r1, r0
 2449 0590 3046     		mov	r0, r6
 2450 0592 FFF7FEFF 		bl	__aeabi_fcmpgt
 2451 0596 30B9     		cbnz	r0, .L350
ARM GAS  /tmp/cc5CpNMt.s 			page 44


 2452 0598 B4F87830 		ldrh	r3, [r4, #120]
 2453 059c 002B     		cmp	r3, #0
 2454 059e 5FD1     		bne	.L498
 2455              	.L477:
 2456 05a0 94F87C60 		ldrb	r6, [r4, #124]	@ zero_extendqisi2
 2457 05a4 75E5     		b	.L339
 2458              	.L350:
 2459 05a6 B4F87830 		ldrh	r3, [r4, #120]
 2460 05aa 2668     		ldr	r6, [r4]
 2461 05ac 0133     		adds	r3, r3, #1
 2462 05ae D6F8BC04 		ldr	r0, [r6, #1212]
 2463 05b2 9BB2     		uxth	r3, r3
 2464 05b4 A4F87830 		strh	r3, [r4, #120]	@ movhi
 2465 05b8 00FB03F0 		mul	r0, r0, r3
 2466 05bc FFF7FEFF 		bl	__aeabi_ui2f
 2467 05c0 2949     		ldr	r1, .L503
 2468 05c2 8246     		mov	r10, r0
 2469 05c4 6069     		ldr	r0, [r4, #20]	@ float
 2470 05c6 FFF7FEFF 		bl	__aeabi_fmul
 2471 05ca 0146     		mov	r1, r0
 2472 05cc 5046     		mov	r0, r10
 2473 05ce FFF7FEFF 		bl	__aeabi_fcmpgt
 2474 05d2 0028     		cmp	r0, #0
 2475 05d4 E4D0     		beq	.L477
 2476 05d6 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 2477 05da 94F97A10 		ldrsb	r1, [r4, #122]
 2478 05de 002B     		cmp	r3, #0
 2479 05e0 3BD1     		bne	.L411
 2480 05e2 0022     		movs	r2, #0
 2481              	.L352:
 2482 05e4 3046     		mov	r0, r6
 2483 05e6 B4F84430 		ldrh	r3, [r4, #68]
 2484 05ea FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2485 05ee 0023     		movs	r3, #0
 2486 05f0 94F97A10 		ldrsb	r1, [r4, #122]
 2487 05f4 84F87C30 		strb	r3, [r4, #124]
 2488 05f8 2869     		ldr	r0, [r5, #16]
 2489 05fa FFF7FEFF 		bl	_ZN6GCodes17HandleHeaterFaultEi
 2490 05fe 4846     		mov	r0, r9
 2491 0600 FFF7FEFF 		bl	__aeabi_f2d
 2492 0604 2268     		ldr	r2, [r4]
 2493 0606 94F97A30 		ldrsb	r3, [r4, #122]
 2494 060a CDE90001 		strd	r0, [sp]
 2495 060e 1046     		mov	r0, r2
 2496 0610 40F2B511 		movw	r1, #437
 2497 0614 154A     		ldr	r2, .L503+4
 2498 0616 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2499 061a 94F97A10 		ldrsb	r1, [r4, #122]
 2500 061e 1448     		ldr	r0, .L503+8
 2501 0620 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2502 0624 94F87C60 		ldrb	r6, [r4, #124]	@ zero_extendqisi2
 2503 0628 33E5     		b	.L339
 2504              	.L494:
 2505 062a 4046     		mov	r0, r8
 2506 062c 0021     		movs	r1, #0
 2507 062e FFF7FEFF 		bl	__aeabi_fcmpgt
 2508 0632 0028     		cmp	r0, #0
ARM GAS  /tmp/cc5CpNMt.s 			page 45


 2509 0634 3FF48EAE 		beq	.L371
 2510 0638 3846     		mov	r0, r7
 2511 063a 0021     		movs	r1, #0
 2512 063c FFF7FEFF 		bl	__aeabi_fcmpgt
 2513 0640 0028     		cmp	r0, #0
 2514 0642 3FF487AE 		beq	.L371
 2515 0646 C4F864A0 		str	r10, [r4, #100]	@ float
 2516 064a 83E6     		b	.L371
 2517              	.L496:
 2518 064c 0026     		movs	r6, #0
 2519 064e 50E7     		b	.L376
 2520              	.L497:
 2521 0650 0026     		movs	r6, #0
 2522 0652 6AE7     		b	.L380
 2523              	.L412:
 2524 0654 4FF07E52 		mov	r2, #1065353216
 2525 0658 DDE6     		b	.L357
 2526              	.L411:
 2527 065a 4FF07E52 		mov	r2, #1065353216
 2528 065e C1E7     		b	.L352
 2529              	.L498:
 2530 0660 94F87C60 		ldrb	r6, [r4, #124]	@ zero_extendqisi2
 2531 0664 02E6     		b	.L406
 2532              	.L504:
 2533 0666 00BF     		.align	2
 2534              	.L503:
 2535 0668 00007A44 		.word	1148846080
 2536 066c 2C000000 		.word	.LC29
 2537 0670 00000000 		.word	reprap
 2538              		.size	_ZN3PID4SpinEv, .-_ZN3PID4SpinEv
 2539              		.section	.text._ZN3PID7SuspendEb,"ax",%progbits
 2540              		.align	1
 2541              		.p2align 2,,3
 2542              		.global	_ZN3PID7SuspendEb
 2543              		.syntax unified
 2544              		.thumb
 2545              		.thumb_func
 2546              		.fpu softvfp
 2547              		.type	_ZN3PID7SuspendEb, %function
 2548              	_ZN3PID7SuspendEb:
 2549              		@ args = 0, pretend = 0, frame = 0
 2550              		@ frame_needed = 0, uses_anonymous_args = 0
 2551 0000 10B5     		push	{r4, lr}
 2552 0002 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 2553 0006 0446     		mov	r4, r0
 2554 0008 19B1     		cbz	r1, .L506
 2555 000a 033A     		subs	r2, r2, #3
 2556 000c 022A     		cmp	r2, #2
 2557 000e 0AD9     		bls	.L514
 2558              	.L505:
 2559 0010 10BD     		pop	{r4, pc}
 2560              	.L506:
 2561 0012 022A     		cmp	r2, #2
 2562 0014 FCD1     		bne	.L505
 2563 0016 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 2564 001a 002B     		cmp	r3, #0
 2565 001c F8D0     		beq	.L505
ARM GAS  /tmp/cc5CpNMt.s 			page 46


 2566 001e BDE81040 		pop	{r4, lr}
 2567 0022 FFF7FEBF 		b	_ZN3PID8SwitchOnEv.part.14
 2568              	.L514:
 2569 0026 0221     		movs	r1, #2
 2570 0028 90F87D20 		ldrb	r2, [r0, #125]	@ zero_extendqisi2
 2571 002c 80F87C10 		strb	r1, [r0, #124]
 2572 0030 94F97A10 		ldrsb	r1, [r4, #122]
 2573 0034 0068     		ldr	r0, [r0]
 2574 0036 42B1     		cbz	r2, .L509
 2575 0038 4FF07E52 		mov	r2, #1065353216
 2576              	.L508:
 2577 003c B4F84430 		ldrh	r3, [r4, #68]
 2578 0040 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 2579 0044 0023     		movs	r3, #0
 2580 0046 A366     		str	r3, [r4, #104]	@ float
 2581 0048 10BD     		pop	{r4, pc}
 2582              	.L509:
 2583 004a 0022     		movs	r2, #0
 2584 004c F6E7     		b	.L508
 2585              		.size	_ZN3PID7SuspendEb, .-_ZN3PID7SuspendEb
 2586              		.global	_ZN3PID15tuningPeakDelayE
 2587              		.global	_ZN3PID17tuningHeatingTimeE
 2588              		.global	_ZN3PID21tuningPeakTemperatureE
 2589              		.global	_ZN3PID19tuningHeaterOffTempE
 2590              		.global	_ZN3PID19tuningReadingsTakenE
 2591              		.global	_ZN3PID21tuningReadingIntervalE
 2592              		.global	_ZN3PID20tuningPhaseStartTimeE
 2593              		.global	_ZN3PID15tuningBeginTimeE
 2594              		.global	_ZN3PID16tuningTargetTempE
 2595              		.global	_ZN3PID9tuningPwmE
 2596              		.global	_ZN3PID15tuningStartTempE
 2597              		.global	_ZN3PID18tuningTempReadingsE
 2598 004e 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2599              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2600              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2601              	_ZL28cpu_irq_prev_interrupt_state:
 2602 0000 00       		.space	1
 2603              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2604              		.align	2
 2605              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2606              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2607              	_ZL32cpu_irq_critical_section_counter:
 2608 0000 00000000 		.space	4
 2609              		.section	.bss._ZN3PID15tuningBeginTimeE,"aw",%nobits
 2610              		.align	2
 2611              		.set	.LANCHOR10,. + 0
 2612              		.type	_ZN3PID15tuningBeginTimeE, %object
 2613              		.size	_ZN3PID15tuningBeginTimeE, 4
 2614              	_ZN3PID15tuningBeginTimeE:
 2615 0000 00000000 		.space	4
 2616              		.section	.bss._ZN3PID15tuningPeakDelayE,"aw",%nobits
 2617              		.align	2
 2618              		.set	.LANCHOR8,. + 0
 2619              		.type	_ZN3PID15tuningPeakDelayE, %object
 2620              		.size	_ZN3PID15tuningPeakDelayE, 4
 2621              	_ZN3PID15tuningPeakDelayE:
 2622 0000 00000000 		.space	4
ARM GAS  /tmp/cc5CpNMt.s 			page 47


 2623              		.section	.bss._ZN3PID15tuningStartTempE,"aw",%nobits
 2624              		.align	2
 2625              		.set	.LANCHOR5,. + 0
 2626              		.type	_ZN3PID15tuningStartTempE, %object
 2627              		.size	_ZN3PID15tuningStartTempE, 4
 2628              	_ZN3PID15tuningStartTempE:
 2629 0000 00000000 		.space	4
 2630              		.section	.bss._ZN3PID16tuningTargetTempE,"aw",%nobits
 2631              		.align	2
 2632              		.set	.LANCHOR4,. + 0
 2633              		.type	_ZN3PID16tuningTargetTempE, %object
 2634              		.size	_ZN3PID16tuningTargetTempE, 4
 2635              	_ZN3PID16tuningTargetTempE:
 2636 0000 00000000 		.space	4
 2637              		.section	.bss._ZN3PID17tuningHeatingTimeE,"aw",%nobits
 2638              		.align	2
 2639              		.set	.LANCHOR7,. + 0
 2640              		.type	_ZN3PID17tuningHeatingTimeE, %object
 2641              		.size	_ZN3PID17tuningHeatingTimeE, 4
 2642              	_ZN3PID17tuningHeatingTimeE:
 2643 0000 00000000 		.space	4
 2644              		.section	.bss._ZN3PID18tuningTempReadingsE,"aw",%nobits
 2645              		.align	2
 2646              		.set	.LANCHOR0,. + 0
 2647              		.type	_ZN3PID18tuningTempReadingsE, %object
 2648              		.size	_ZN3PID18tuningTempReadingsE, 4
 2649              	_ZN3PID18tuningTempReadingsE:
 2650 0000 00000000 		.space	4
 2651              		.section	.bss._ZN3PID19tuningHeaterOffTempE,"aw",%nobits
 2652              		.align	2
 2653              		.set	.LANCHOR6,. + 0
 2654              		.type	_ZN3PID19tuningHeaterOffTempE, %object
 2655              		.size	_ZN3PID19tuningHeaterOffTempE, 4
 2656              	_ZN3PID19tuningHeaterOffTempE:
 2657 0000 00000000 		.space	4
 2658              		.section	.bss._ZN3PID19tuningReadingsTakenE,"aw",%nobits
 2659              		.align	2
 2660              		.set	.LANCHOR1,. + 0
 2661              		.type	_ZN3PID19tuningReadingsTakenE, %object
 2662              		.size	_ZN3PID19tuningReadingsTakenE, 4
 2663              	_ZN3PID19tuningReadingsTakenE:
 2664 0000 00000000 		.space	4
 2665              		.section	.bss._ZN3PID20tuningPhaseStartTimeE,"aw",%nobits
 2666              		.align	2
 2667              		.set	.LANCHOR11,. + 0
 2668              		.type	_ZN3PID20tuningPhaseStartTimeE, %object
 2669              		.size	_ZN3PID20tuningPhaseStartTimeE, 4
 2670              	_ZN3PID20tuningPhaseStartTimeE:
 2671 0000 00000000 		.space	4
 2672              		.section	.bss._ZN3PID21tuningPeakTemperatureE,"aw",%nobits
 2673              		.align	2
 2674              		.set	.LANCHOR9,. + 0
 2675              		.type	_ZN3PID21tuningPeakTemperatureE, %object
 2676              		.size	_ZN3PID21tuningPeakTemperatureE, 4
 2677              	_ZN3PID21tuningPeakTemperatureE:
 2678 0000 00000000 		.space	4
 2679              		.section	.bss._ZN3PID21tuningReadingIntervalE,"aw",%nobits
ARM GAS  /tmp/cc5CpNMt.s 			page 48


 2680              		.align	2
 2681              		.set	.LANCHOR2,. + 0
 2682              		.type	_ZN3PID21tuningReadingIntervalE, %object
 2683              		.size	_ZN3PID21tuningReadingIntervalE, 4
 2684              	_ZN3PID21tuningReadingIntervalE:
 2685 0000 00000000 		.space	4
 2686              		.section	.bss._ZN3PID9tuningPwmE,"aw",%nobits
 2687              		.align	2
 2688              		.set	.LANCHOR3,. + 0
 2689              		.type	_ZN3PID9tuningPwmE, %object
 2690              		.size	_ZN3PID9tuningPwmE, 4
 2691              	_ZN3PID9tuningPwmE:
 2692 0000 00000000 		.space	4
 2693              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2694              		.align	2
 2695              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2696              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2697              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2698 0000 00000000 		.space	4
 2699              		.section	.rodata._ZN3PID12DoTuningStepEv.str1.4,"aMS",%progbits,1
 2700              		.align	2
 2701              	.LC19:
 2702 0000 4175746F 		.ascii	"Auto tune phase 1, heater on\012\000"
 2702      2074756E 
 2702      65207068 
 2702      61736520 
 2702      312C2068 
 2703 001e 0000     		.space	2
 2704              	.LC20:
 2705 0020 4175746F 		.ascii	"Auto tune cancelled because starting temperature is"
 2705      2074756E 
 2705      65206361 
 2705      6E63656C 
 2705      6C656420 
 2706 0053 206E6F74 		.ascii	" not stable\012\000"
 2706      20737461 
 2706      626C650A 
 2706      00
 2707              	.LC21:
 2708 0060 4175746F 		.ascii	"Auto tune cancelled because target temperature was "
 2708      2074756E 
 2708      65206361 
 2708      6E63656C 
 2708      6C656420 
 2709 0093 6E6F7420 		.ascii	"not reached\012\000"
 2709      72656163 
 2709      6865640A 
 2709      00
 2710              	.LC22:
 2711 00a0 4175746F 		.ascii	"Auto tune phase 2, heater off\012\000"
 2711      2074756E 
 2711      65207068 
 2711      61736520 
 2711      322C2068 
 2712 00bf 00       		.space	1
 2713              	.LC23:
 2714 00c0 4175746F 		.ascii	"Auto tune cancelled because temperature is not fall"
ARM GAS  /tmp/cc5CpNMt.s 			page 49


 2714      2074756E 
 2714      65206361 
 2714      6E63656C 
 2714      6C656420 
 2715 00f3 696E670A 		.ascii	"ing\012\000"
 2715      00
 2716              	.LC24:
 2717 00f8 4174206E 		.ascii	"At no peak found\000"
 2717      6F207065 
 2717      616B2066 
 2717      6F756E64 
 2717      00
 2718 0109 000000   		.space	3
 2719              	.LC25:
 2720 010c 4175746F 		.ascii	"Auto tune cancelled because temperature peak was no"
 2720      2074756E 
 2720      65206361 
 2720      6E63656C 
 2720      6C656420 
 2721 013f 74206964 		.ascii	"t identified\012\000"
 2721      656E7469 
 2721      66696564 
 2721      0A00
 2722 014d 000000   		.space	3
 2723              	.LC26:
 2724 0150 4175746F 		.ascii	"Auto tune phase 3, peak temperature was %.1f\012\000"
 2724      2074756E 
 2724      65207068 
 2724      61736520 
 2724      332C2070 
 2725 017e 0000     		.space	2
 2726              	.LC27:
 2727 0180 4175746F 		.ascii	"Auto tune cancelled because temperature is not incr"
 2727      2074756E 
 2727      65206361 
 2727      6E63656C 
 2727      6C656420 
 2728 01b3 65617369 		.ascii	"easing\012\000"
 2728      6E670A00 
 2729              		.section	.rodata._ZN3PID13DisplayBufferEPKc.str1.4,"aMS",%progbits,1
 2730              		.align	2
 2731              	.LC13:
 2732 0000 25733A20 		.ascii	"%s: interval %.1f sec, readings\000"
 2732      696E7465 
 2732      7276616C 
 2732      20252E31 
 2732      66207365 
 2733              	.LC14:
 2734 0020 0A00     		.ascii	"\012\000"
 2735 0022 0000     		.space	2
 2736              	.LC15:
 2737 0024 20252E31 		.ascii	" %.1f\000"
 2737      6600
 2738              		.section	.rodata._ZN3PID13StartAutoTuneEffRK9StringRef.str1.4,"aMS",%progbits,1
 2739              		.align	2
 2740              	.LC6:
 2741 0000 4572726F 		.ascii	"Error: heater %d cannot be auto tuned while it is d"
ARM GAS  /tmp/cc5CpNMt.s 			page 50


 2741      723A2068 
 2741      65617465 
 2741      72202564 
 2741      2063616E 
 2742 0033 69736162 		.ascii	"isabled\000"
 2742      6C656400 
 2743 003b 00       		.space	1
 2744              	.LC7:
 2745 003c 4572726F 		.ascii	"Error: heater %d reported error '%s' at start of au"
 2745      723A2068 
 2745      65617465 
 2745      72202564 
 2745      20726570 
 2746 006f 746F2074 		.ascii	"to tuning\000"
 2746      756E696E 
 2746      6700
 2747 0079 000000   		.space	3
 2748              	.LC8:
 2749 007c 4175746F 		.ascii	"Auto tuning heater %d using target temperature %.1f"
 2749      2074756E 
 2749      696E6720 
 2749      68656174 
 2749      65722025 
 2750 00af C2B04320 		.ascii	"\302\260C and PWM %.2f - do not leave printer unatt"
 2750      616E6420 
 2750      50574D20 
 2750      252E3266 
 2750      202D2064 
 2751 00dc 656E6465 		.ascii	"ended\000"
 2751      6400
 2752 00e2 0000     		.space	2
 2753              	.LC9:
 2754 00e4 4572726F 		.ascii	"Error: heater %d must be off and cold before auto t"
 2754      723A2068 
 2754      65617465 
 2754      72202564 
 2754      206D7573 
 2755 0117 756E696E 		.ascii	"uning it\000"
 2755      67206974 
 2755      00
 2756              		.section	.rodata._ZN3PID14CalculateModelEv.str1.4,"aMS",%progbits,1
 2757              		.align	2
 2758              	.LC16:
 2759 0000 41742063 		.ascii	"At completion\000"
 2759      6F6D706C 
 2759      6574696F 
 2759      6E00
 2760 000e 0000     		.space	2
 2761              	.LC17:
 2762 0010 4175746F 		.ascii	"Auto tune heater %d completed in %lu sec\012Use M30"
 2762      2074756E 
 2762      65206865 
 2762      61746572 
 2762      20256420 
 2763 0040 37204825 		.ascii	"7 H%d to see the result, or M500 to save the result"
 2763      6420746F 
 2763      20736565 
ARM GAS  /tmp/cc5CpNMt.s 			page 51


 2763      20746865 
 2763      20726573 
 2764 0073 20696E20 		.ascii	" in config-override.g\012\000"
 2764      636F6E66 
 2764      69672D6F 
 2764      76657272 
 2764      6964652E 
 2765 008a 0000     		.space	2
 2766              	.LC18:
 2767 008c 4175746F 		.ascii	"Auto tune of heater %u failed due to bad curve fit "
 2767      2074756E 
 2767      65206F66 
 2767      20686561 
 2767      74657220 
 2768 00bf 28473D25 		.ascii	"(G=%.1f, tc=%.1f, td=%.1f)\012\000"
 2768      2E31662C 
 2768      2074633D 
 2768      252E3166 
 2768      2C207464 
 2769              		.section	.rodata._ZN3PID17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2770              		.align	2
 2771              	.LC10:
 2772 0000 48656174 		.ascii	"Heater %d is being tuned, phase %u of %u\000"
 2772      65722025 
 2772      64206973 
 2772      20626569 
 2772      6E672074 
 2773 0029 000000   		.space	3
 2774              	.LC11:
 2775 002c 48656174 		.ascii	"Heater %d tuning succeeded, use M307 H%d to see res"
 2775      65722025 
 2775      64207475 
 2775      6E696E67 
 2775      20737563 
 2776 005f 756C7400 		.ascii	"ult\000"
 2777 0063 00       		.space	1
 2778              	.LC12:
 2779 0064 48656174 		.ascii	"Heater %d tuning failed\000"
 2779      65722025 
 2779      64207475 
 2779      6E696E67 
 2779      20666169 
 2780              		.section	.rodata._ZN3PID20SetActiveTemperatureEf.str1.4,"aMS",%progbits,1
 2781              		.align	2
 2782              	.LC4:
 2783 0000 54656D70 		.ascii	"Temperature %.1f\302\260C too high for heater %d\012"
 2783      65726174 
 2783      75726520 
 2783      252E3166 
 2783      C2B04320 
 2784 002b 00       		.ascii	"\000"
 2785              	.LC5:
 2786 002c 54656D70 		.ascii	"Temperature %.1f\302\260C too low for heater %d\012"
 2786      65726174 
 2786      75726520 
 2786      252E3166 
 2786      C2B04320 
ARM GAS  /tmp/cc5CpNMt.s 			page 52


 2787 0056 00       		.ascii	"\000"
 2788              		.section	.rodata._ZN3PID4SpinEv.str1.4,"aMS",%progbits,1
 2789              		.align	2
 2790              	.LC28:
 2791 0000 54656D70 		.ascii	"Temperature reading fault on heater %d: %s\012\000"
 2791      65726174 
 2791      75726520 
 2791      72656164 
 2791      696E6720 
 2792              	.LC29:
 2793 002c 48656174 		.ascii	"Heating fault on heater %d, temperature rising much"
 2793      696E6720 
 2793      6661756C 
 2793      74206F6E 
 2793      20686561 
 2794 005f 206D6F72 		.ascii	" more slowly than the expected %.1f\302\260C/sec\012"
 2794      6520736C 
 2794      6F776C79 
 2794      20746861 
 2794      6E207468 
 2795 008a 00       		.ascii	"\000"
 2796 008b 00       		.space	1
 2797              	.LC30:
 2798 008c 48656174 		.ascii	"Heating fault on heater %d, temperature excursion e"
 2798      696E6720 
 2798      6661756C 
 2798      74206F6E 
 2798      20686561 
 2799 00bf 78636565 		.ascii	"xceeded %.1f\302\260C\012\000"
 2799      64656420 
 2799      252E3166 
 2799      C2B0430A 
 2799      00
 2800              	.LC31:
 2801 00d0 48656174 		.ascii	"Heating fault on heater %d\012\000"
 2801      696E6720 
 2801      6661756C 
 2801      74206F6E 
 2801      20686561 
 2802              		.section	.rodata._ZN3PID8SetModelEfffffbbt.str1.4,"aMS",%progbits,1
 2803              		.align	2
 2804              	.LC2:
 2805 0000 48656174 		.ascii	"Heater %u appears to be over-powered. If left on at"
 2805      65722025 
 2805      75206170 
 2805      70656172 
 2805      7320746F 
 2806 0033 2066756C 		.ascii	" full power, its temperature is predicted to reach "
 2806      6C20706F 
 2806      7765722C 
 2806      20697473 
 2806      2074656D 
 2807 0066 2564432E 		.ascii	"%dC.\012\000"
 2807      0A00
 2808              		.section	.rodata._ZN3PID8SwitchOnEv.part.14.str1.4,"aMS",%progbits,1
 2809              		.align	2
 2810              	.LC0:
ARM GAS  /tmp/cc5CpNMt.s 			page 53


 2811 0000 48656174 		.ascii	"Heater %d not switched on due to temperature fault\012"
 2811      65722025 
 2811      64206E6F 
 2811      74207377 
 2811      69746368 
 2812 0033 00       		.ascii	"\000"
 2813              	.LC1:
 2814 0034 48656174 		.ascii	"Heater %d switched on\012\000"
 2814      65722025 
 2814      64207377 
 2814      69746368 
 2814      6564206F 
 2815              		.section	.rodata._ZN3PID9SwitchOffEv.str1.4,"aMS",%progbits,1
 2816              		.align	2
 2817              	.LC3:
 2818 0000 48656174 		.ascii	"Heater %d switched off\012\000"
 2818      65722025 
 2818      64207377 
 2818      69746368 
 2818      6564206F 
 2819              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
