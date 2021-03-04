ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 1


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
  13              		.file	"FOPDT.cpp"
  14              		.text
  15              		.section	.text._ZN5FopDtC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN5FopDtC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN5FopDtC2Ev, %function
  24              	_ZN5FopDtC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 30B4     		push	{r4, r5}
  29 0002 0A4A     		ldr	r2, .L4
  30 0004 0A49     		ldr	r1, .L4+4
  31 0006 0260     		str	r2, [r0]	@ float
  32 0008 0A4A     		ldr	r2, .L4+8
  33 000a 4160     		str	r1, [r0, #4]	@ float
  34 000c 0024     		movs	r4, #0
  35 000e 4FF07E55 		mov	r5, #1065353216
  36 0012 0121     		movs	r1, #1
  37 0014 8260     		str	r2, [r0, #8]	@ float
  38 0016 0022     		movs	r2, #0
  39 0018 C560     		str	r5, [r0, #12]	@ float
  40 001a 0461     		str	r4, [r0, #16]	@ float
  41 001c C175     		strb	r1, [r0, #23]
  42 001e 8282     		strh	r2, [r0, #20]	@ movhi
  43 0020 8275     		strb	r2, [r0, #22]
  44 0022 0276     		strb	r2, [r0, #24]
  45 0024 4276     		strb	r2, [r0, #25]
  46 0026 30BC     		pop	{r4, r5}
  47 0028 7047     		bx	lr
  48              	.L5:
  49 002a 00BF     		.align	2
  50              	.L4:
  51 002c 0000AA43 		.word	1135214592
  52 0030 00000C43 		.word	1124859904
  53 0034 0000B040 		.word	1085276160
  54              		.size	_ZN5FopDtC2Ev, .-_ZN5FopDtC2Ev
  55              		.global	_ZN5FopDtC1Ev
  56              		.thumb_set _ZN5FopDtC1Ev,_ZN5FopDtC2Ev
  57              		.section	.text._ZNK5FopDt20GetM301PidParametersEb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZNK5FopDt20GetM301PidParametersEb
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZNK5FopDt20GetM301PidParametersEb, %function
  66              	_ZNK5FopDt20GetM301PidParametersEb:
  67              		@ args = 0, pretend = 0, frame = 32
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 88B0     		sub	sp, sp, #32
  71 0002 81B9     		cbnz	r1, .L10
  72 0004 1C30     		adds	r0, r0, #28
  73              	.L8:
  74 0006 90ED000A 		vldr.32	s0, [r0]
  75 000a DFED087A 		vldr.32	s15, .L11
  76 000e D0ED010A 		vldr.32	s1, [r0, #4]
  77 0012 90ED021A 		vldr.32	s2, [r0, #8]
  78 0016 20EE270A 		vmul.f32	s0, s0, s15
  79 001a 60EE200A 		vmul.f32	s1, s0, s1
  80 001e 20EE011A 		vmul.f32	s2, s0, s2
  81 0022 08B0     		add	sp, sp, #32
  82              		@ sp needed
  83 0024 7047     		bx	lr
  84              	.L10:
  85 0026 2830     		adds	r0, r0, #40
  86 0028 EDE7     		b	.L8
  87              	.L12:
  88 002a 00BF     		.align	2
  89              	.L11:
  90 002c 00007F43 		.word	1132396544
  91              		.size	_ZNK5FopDt20GetM301PidParametersEb, .-_ZNK5FopDt20GetM301PidParametersEb
  92              		.section	.text._ZN5FopDt20SetM301PidParametersERK17M301PidParameters,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv4-sp-d16
 100              		.type	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, %function
 101              	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 D1ED007A 		vldr.32	s15, [r1]
 106 0004 91ED017A 		vldr.32	s14, [r1, #4]
 107 0008 D1ED025A 		vldr.32	s11, [r1, #8]
 108 000c 9FED0B6A 		vldr.32	s12, .L14
 109 0010 C7EE276A 		vdiv.f32	s13, s14, s15
 110 0014 0123     		movs	r3, #1
 111 0016 4376     		strb	r3, [r0, #25]
 112 0018 85EEA77A 		vdiv.f32	s14, s11, s15
 113 001c 67EE867A 		vmul.f32	s15, s15, s12
 114 0020 C0ED086A 		vstr.32	s13, [r0, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 3


 115 0024 C0ED0B6A 		vstr.32	s13, [r0, #44]
 116 0028 80ED097A 		vstr.32	s14, [r0, #36]
 117 002c 80ED0C7A 		vstr.32	s14, [r0, #48]
 118 0030 C0ED077A 		vstr.32	s15, [r0, #28]
 119 0034 C0ED0A7A 		vstr.32	s15, [r0, #40]
 120 0038 7047     		bx	lr
 121              	.L15:
 122 003a 00BF     		.align	2
 123              	.L14:
 124 003c 8180803B 		.word	998277249
 125              		.size	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, .-_ZN5FopDt20SetM301PidParametersERK1
 126              		.section	.text._ZN5FopDt16CalcPidConstantsEv,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	_ZN5FopDt16CalcPidConstantsEv
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_ZN5FopDt16CalcPidConstantsEv, %function
 135              	_ZN5FopDt16CalcPidConstantsEv:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 10B5     		push	{r4, lr}
 139 0002 90ED027A 		vldr.32	s14, [r0, #8]
 140 0006 90ED010A 		vldr.32	s0, [r0, #4]
 141 000a D0ED007A 		vldr.32	s15, [r0]
 142 000e 2DED048B 		vpush.64	{d8, d9}
 143 0012 C7EE008A 		vdiv.f32	s17, s14, s0
 144 0016 0446     		mov	r4, r0
 145 0018 9FED258A 		vldr.32	s16, .L18
 146 001c 68EEA77A 		vmul.f32	s15, s17, s15
 147 0020 F5EE000A 		vmov.f32	s1, #2.5e-1
 148 0024 88EE277A 		vdiv.f32	s14, s16, s15
 149 0028 80ED0A7A 		vstr.32	s14, [r0, #40]
 150 002c FFF7FEFF 		bl	powf
 151 0030 F6EE080A 		vmov.f32	s1, #7.5e-1
 152 0034 B0EE409A 		vmov.f32	s18, s0
 153 0038 94ED020A 		vldr.32	s0, [r4, #8]
 154 003c FFF7FEFF 		bl	powf
 155 0040 94ED007A 		vldr.32	s14, [r4]
 156 0044 DFED1B6A 		vldr.32	s13, .L18+4
 157 0048 D4ED027A 		vldr.32	s15, [r4, #8]
 158 004c 29EE000A 		vmul.f32	s0, s18, s0
 159 0050 68EE878A 		vmul.f32	s17, s17, s14
 160 0054 86EE807A 		vdiv.f32	s14, s13, s0
 161 0058 C8EE286A 		vdiv.f32	s13, s16, s17
 162 005c 67EE887A 		vmul.f32	s15, s15, s16
 163 0060 84ED0B7A 		vstr.32	s14, [r4, #44]
 164 0064 C4ED0C7A 		vstr.32	s15, [r4, #48]
 165 0068 C4ED076A 		vstr.32	s13, [r4, #28]
 166 006c F6EE000A 		vmov.f32	s1, #5.0e-1
 167 0070 94ED010A 		vldr.32	s0, [r4, #4]
 168 0074 FFF7FEFF 		bl	powf
 169 0078 F6EE000A 		vmov.f32	s1, #5.0e-1
 170 007c F0EE408A 		vmov.f32	s17, s0
 171 0080 94ED020A 		vldr.32	s0, [r4, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 4


 172 0084 FFF7FEFF 		bl	powf
 173 0088 28EE800A 		vmul.f32	s0, s17, s0
 174 008c F7EE007A 		vmov.f32	s15, #1.0e+0
 175 0090 87EE807A 		vdiv.f32	s14, s15, s0
 176 0094 0023     		movs	r3, #0
 177 0096 6376     		strb	r3, [r4, #25]
 178 0098 D4ED027A 		vldr.32	s15, [r4, #8]
 179 009c 84ED087A 		vstr.32	s14, [r4, #32]
 180 00a0 27EE888A 		vmul.f32	s16, s15, s16
 181 00a4 84ED098A 		vstr.32	s16, [r4, #36]
 182 00a8 BDEC048B 		vldm	sp!, {d8-d9}
 183 00ac 10BD     		pop	{r4, pc}
 184              	.L19:
 185 00ae 00BF     		.align	2
 186              	.L18:
 187 00b0 3333333F 		.word	1060320051
 188 00b4 B88F603F 		.word	1063292856
 189              		.size	_ZN5FopDt16CalcPidConstantsEv, .-_ZN5FopDt16CalcPidConstantsEv
 190              		.section	.text._ZN5FopDt13SetParametersEffffffbbt,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZN5FopDt13SetParametersEffffffbbt
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZN5FopDt13SetParametersEffffffbbt, %function
 199              	_ZN5FopDt13SetParametersEffffffbbt:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 FFEE007A 		vmov.f32	s15, #-1.0e+0
 203 0004 B4EE670A 		vcmp.f32	s0, s15
 204 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 205 000c 8446     		mov	ip, r0
 206 000e 0BD1     		bne	.L21
 207 0010 F4EE670A 		vcmp.f32	s1, s15
 208 0014 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 209 0018 04D1     		bne	.L51
 210 001a B4EE671A 		vcmp.f32	s2, s15
 211 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 212 0022 4CD0     		beq	.L56
 213              	.L51:
 214 0024 0020     		movs	r0, #0
 215 0026 7047     		bx	lr
 216              	.L21:
 217 0028 9FED277A 		vldr.32	s14, .L57
 218 002c DFED277A 		vldr.32	s15, .L57+4
 219 0030 32EE072A 		vadd.f32	s4, s4, s14
 220 0034 B2EE047A 		vmov.f32	s14, #1.0e+1
 221 0038 B4EE672A 		vcmp.f32	s4, s15
 222 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 223 0040 B4EEC70A 		vcmpe.f32	s0, s14
 224 0044 48BF     		it	mi
 225 0046 B0EE672A 		vmovmi.f32	s4, s15
 226 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 227 004e E9DD     		ble	.L51
 228 0050 B4EEC20A 		vcmpe.f32	s0, s4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 5


 229 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 230 0058 E4D8     		bhi	.L51
 231 005a DFED1D7A 		vldr.32	s15, .L57+8
 232 005e B4EEE71A 		vcmpe.f32	s2, s15
 233 0062 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 234 0066 DDDD     		ble	.L51
 235 0068 71EE017A 		vadd.f32	s15, s2, s2
 236 006c F4EEE07A 		vcmpe.f32	s15, s1
 237 0070 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 238 0074 D6D8     		bhi	.L51
 239 0076 DFED177A 		vldr.32	s15, .L57+12
 240 007a F4EEE71A 		vcmpe.f32	s3, s15
 241 007e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 242 0082 CFDD     		ble	.L51
 243 0084 F7EE007A 		vmov.f32	s15, #1.0e+0
 244 0088 F4EEE71A 		vcmpe.f32	s3, s15
 245 008c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 246 0090 C8D8     		bhi	.L51
 247 0092 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 248 0096 0125     		movs	r5, #1
 249 0098 8CED000A 		vstr.32	s0, [ip]
 250 009c CCED010A 		vstr.32	s1, [ip, #4]
 251 00a0 8CED021A 		vstr.32	s2, [ip, #8]
 252 00a4 CCED031A 		vstr.32	s3, [ip, #12]
 253 00a8 CCED042A 		vstr.32	s5, [ip, #16]
 254 00ac C175     		strb	r1, [r0, #23]
 255 00ae 0276     		strb	r2, [r0, #24]
 256 00b0 8382     		strh	r3, [r0, #20]	@ movhi
 257 00b2 8575     		strb	r5, [r0, #22]
 258 00b4 FFF7FEFF 		bl	_ZN5FopDt16CalcPidConstantsEv
 259 00b8 2846     		mov	r0, r5
 260 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 261              	.L56:
 262 00be 0023     		movs	r3, #0
 263 00c0 8375     		strb	r3, [r0, #22]
 264 00c2 0120     		movs	r0, #1
 265 00c4 7047     		bx	lr
 266              	.L58:
 267 00c6 00BF     		.align	2
 268              	.L57:
 269 00c8 0000FA43 		.word	1140457472
 270 00cc 0080BB44 		.word	1153138688
 271 00d0 83C0CA3D 		.word	1036697731
 272 00d4 9C33223C 		.word	1008874396
 273              		.size	_ZN5FopDt13SetParametersEffffffbbt, .-_ZN5FopDt13SetParametersEffffffbbt
 274              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 275              		.align	1
 276              		.p2align 2,,3
 277              		.weak	_ZN6StringILj220EE6printfEPKcz
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 283              	_ZN6StringILj220EE6printfEPKcz:
 284              		@ args = 4, pretend = 12, frame = 16
 285              		@ frame_needed = 0, uses_anonymous_args = 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 6


 286 0000 0EB4     		push	{r1, r2, r3}
 287 0002 00B5     		push	{lr}
 288 0004 84B0     		sub	sp, sp, #16
 289 0006 05AA     		add	r2, sp, #20
 290 0008 0290     		str	r0, [sp, #8]
 291 000a 52F8041B 		ldr	r1, [r2], #4
 292 000e 0192     		str	r2, [sp, #4]
 293 0010 DD23     		movs	r3, #221
 294 0012 02A8     		add	r0, sp, #8
 295 0014 0393     		str	r3, [sp, #12]
 296 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 297 001a 04B0     		add	sp, sp, #16
 298              		@ sp needed
 299 001c 5DF804EB 		ldr	lr, [sp], #4
 300 0020 03B0     		add	sp, sp, #12
 301 0022 7047     		bx	lr
 302              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 303              		.global	__aeabi_f2d
 304              		.section	.text._ZNK5FopDt15WriteParametersEP9FileStorej,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	_ZNK5FopDt15WriteParametersEP9FileStorej
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 312              		.type	_ZNK5FopDt15WriteParametersEP9FileStorej, %function
 313              	_ZNK5FopDt15WriteParametersEP9FileStorej:
 314              		@ args = 0, pretend = 0, frame = 224
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 317 0002 2DED028B 		vpush.64	{d8}
 318 0006 C37D     		ldrb	r3, [r0, #23]	@ zero_extendqisi2
 319 0008 C5B0     		sub	sp, sp, #276
 320 000a 44AD     		add	r5, sp, #272
 321 000c 83F00103 		eor	r3, r3, #1
 322 0010 4FF0000C 		mov	ip, #0
 323 0014 0446     		mov	r4, r0
 324 0016 0069     		ldr	r0, [r0, #16]	@ float
 325 0018 0A93     		str	r3, [sp, #40]
 326 001a 1746     		mov	r7, r2
 327 001c 05F8E0CD 		strb	ip, [r5, #-224]!
 328 0020 0E46     		mov	r6, r1
 329 0022 FFF7FEFF 		bl	__aeabi_f2d
 330 0026 CDE90801 		strd	r0, [sp, #32]
 331 002a E068     		ldr	r0, [r4, #12]	@ float
 332 002c FFF7FEFF 		bl	__aeabi_f2d
 333 0030 CDE90601 		strd	r0, [sp, #24]
 334 0034 A068     		ldr	r0, [r4, #8]	@ float
 335 0036 FFF7FEFF 		bl	__aeabi_f2d
 336 003a CDE90401 		strd	r0, [sp, #16]
 337 003e 6068     		ldr	r0, [r4, #4]	@ float
 338 0040 FFF7FEFF 		bl	__aeabi_f2d
 339 0044 CDE90201 		strd	r0, [sp, #8]
 340 0048 2068     		ldr	r0, [r4]	@ float
 341 004a FFF7FEFF 		bl	__aeabi_f2d
 342 004e 3A46     		mov	r2, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 7


 343 0050 CDE90001 		strd	r0, [sp]
 344 0054 1D49     		ldr	r1, .L71
 345 0056 2846     		mov	r0, r5
 346 0058 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 347 005c 2946     		mov	r1, r5
 348 005e 3046     		mov	r0, r6
 349 0060 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 350 0064 08B1     		cbz	r0, .L62
 351 0066 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 352 0068 1BB9     		cbnz	r3, .L70
 353              	.L62:
 354 006a 45B0     		add	sp, sp, #276
 355              		@ sp needed
 356 006c BDEC028B 		vldm	sp!, {d8}
 357 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 358              	.L70:
 359 0072 9FED177A 		vldr.32	s14, .L71+4
 360 0076 94ED078A 		vldr.32	s16, [r4, #28]
 361 007a D4ED097A 		vldr.32	s15, [r4, #36]
 362 007e 28EE078A 		vmul.f32	s16, s16, s14
 363 0082 68EE277A 		vmul.f32	s15, s16, s15
 364 0086 17EE900A 		vmov	r0, s15
 365 008a FFF7FEFF 		bl	__aeabi_f2d
 366 008e D4ED087A 		vldr.32	s15, [r4, #32]
 367 0092 68EE277A 		vmul.f32	s15, s16, s15
 368 0096 CDE90401 		strd	r0, [sp, #16]
 369 009a 17EE900A 		vmov	r0, s15
 370 009e FFF7FEFF 		bl	__aeabi_f2d
 371 00a2 CDE90201 		strd	r0, [sp, #8]
 372 00a6 18EE100A 		vmov	r0, s16
 373 00aa FFF7FEFF 		bl	__aeabi_f2d
 374 00ae 3A46     		mov	r2, r7
 375 00b0 CDE90001 		strd	r0, [sp]
 376 00b4 0749     		ldr	r1, .L71+8
 377 00b6 2846     		mov	r0, r5
 378 00b8 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 379 00bc 2946     		mov	r1, r5
 380 00be 3046     		mov	r0, r6
 381 00c0 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 382 00c4 45B0     		add	sp, sp, #276
 383              		@ sp needed
 384 00c6 BDEC028B 		vldm	sp!, {d8}
 385 00ca F0BD     		pop	{r4, r5, r6, r7, pc}
 386              	.L72:
 387              		.align	2
 388              	.L71:
 389 00cc 00000000 		.word	.LC0
 390 00d0 00007F43 		.word	1132396544
 391 00d4 2C000000 		.word	.LC1
 392              		.size	_ZNK5FopDt15WriteParametersEP9FileStorej, .-_ZNK5FopDt15WriteParametersEP9FileStorej
 393              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 394              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 395              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 396              	_ZL28cpu_irq_prev_interrupt_state:
 397 0000 00       		.space	1
 398              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 399              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7z7vOa.s 			page 8


 400              		.type	_ZL32cpu_irq_critical_section_counter, %object
 401              		.size	_ZL32cpu_irq_critical_section_counter, 4
 402              	_ZL32cpu_irq_critical_section_counter:
 403 0000 00000000 		.space	4
 404              		.section	.rodata._ZNK5FopDt15WriteParametersEP9FileStorej.str1.4,"aMS",%progbits,1
 405              		.align	2
 406              	.LC0:
 407 0000 4D333037 		.ascii	"M307 H%u A%.1f C%.1f D%.1f S%.2f V%.1f B%d\012\000"
 407      20482575 
 407      2041252E 
 407      31662043 
 407      252E3166 
 408              	.LC1:
 409 002c 4D333031 		.ascii	"M301 H%u P%.1f I%.3f D%.1f\012\000"
 409      20482575 
 409      2050252E 
 409      31662049 
 409      252E3366 
 410              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
