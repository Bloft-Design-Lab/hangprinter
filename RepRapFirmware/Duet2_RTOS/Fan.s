ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 1


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
  13              		.file	"Fan.cpp"
  14              		.text
  15              		.section	.text._ZN3Fan14SetHardwarePwmEf,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN3Fan14SetHardwarePwmEf
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN3Fan14SetHardwarePwmEf, %function
  24              	_ZN3Fan14SetHardwarePwmEf:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
  29 0004 FF2B     		cmp	r3, #255
  30 0006 12D0     		beq	.L1
  31 0008 90F84310 		ldrb	r1, [r0, #67]	@ zero_extendqisi2
  32 000c 90F84420 		ldrb	r2, [r0, #68]	@ zero_extendqisi2
  33 0010 09B1     		cbz	r1, .L3
  34 0012 82F00102 		eor	r2, r2, #1
  35              	.L3:
  36 0016 1AB1     		cbz	r2, .L4
  37 0018 F7EE007A 		vmov.f32	s15, #1.0e+0
  38 001c 37EEC00A 		vsub.f32	s0, s15, s0
  39              	.L4:
  40 0020 D0ED067A 		vldr.32	s15, [r0, #24]
  41 0024 F4EE407A 		vcmp.f32	s15, s0
  42 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  43 002c 00D1     		bne	.L15
  44              	.L1:
  45 002e 7047     		bx	lr
  46              	.L15:
  47 0030 80ED060A 		vstr.32	s0, [r0, #24]
  48 0034 018D     		ldrh	r1, [r0, #40]
  49 0036 1846     		mov	r0, r3
  50 0038 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
  51              		.size	_ZN3Fan14SetHardwarePwmEf, .-_ZN3Fan14SetHardwarePwmEf
  52              		.section	.text._ZN3Fan7RefreshEv,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN3Fan7RefreshEv
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN3Fan7RefreshEv, %function
  61              	_ZN3Fan7RefreshEv:
  62              		@ args = 0, pretend = 0, frame = 8
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  65 0004 2DED048B 		vpush.64	{d8, d9}
  66 0008 436A     		ldr	r3, [r0, #36]
  67 000a 83B0     		sub	sp, sp, #12
  68 000c 0546     		mov	r5, r0
  69 000e 002B     		cmp	r3, #0
  70 0010 48D1     		bne	.L17
  71 0012 90ED008A 		vldr.32	s16, [r0]
  72 0016 B5EEC08A 		vcmpe.f32	s16, #0
  73 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  74 001e 40F3ED80 		ble	.L68
  75 0022 1F46     		mov	r7, r3
  76              	.L18:
  77 0024 B4EE488A 		vcmp.f32	s16, s16
  78 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  79 002c D5ED028A 		vldr.32	s17, [r5, #8]
  80 0030 D5ED037A 		vldr.32	s15, [r5, #12]
  81 0034 80F13981 		bvs	.L63
  82 0038 F4EEC87A 		vcmpe.f32	s15, s16
  83 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  84 0040 00F3D980 		bgt	.L64
  85 0044 F4EE677A 		vcmp.f32	s15, s15
  86 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  87 004c 80F13F81 		bvs	.L99
  88              	.L47:
  89 0050 F4EE678A 		vcmp.f32	s17, s15
  90 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  91 0058 48BF     		it	mi
  92 005a F0EE678A 		vmovmi.f32	s17, s15
  93              	.L46:
  94 005e D5ED017A 		vldr.32	s15, [r5, #4]
  95 0062 F5EE407A 		vcmp.f32	s15, #0
  96 0066 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  97 006a 0AD1     		bne	.L50
  98 006c 002F     		cmp	r7, #0
  99 006e 40F01581 		bne	.L100
 100              	.L51:
 101 0072 F7EE007A 		vmov.f32	s15, #1.0e+0
 102 0076 F4EEE78A 		vcmpe.f32	s17, s15
 103 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 104 007e 00F10281 		bmi	.L101
 105              	.L50:
 106 0082 95F84530 		ldrb	r3, [r5, #69]	@ zero_extendqisi2
 107 0086 002B     		cmp	r3, #0
 108 0088 40F0EF80 		bne	.L102
 109              	.L19:
 110 008c B0EE680A 		vmov.f32	s0, s17
 111 0090 2846     		mov	r0, r5
 112 0092 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 113 0096 C5ED018A 		vstr.32	s17, [r5, #4]
 114 009a 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 3


 115              		@ sp needed
 116 009c BDEC048B 		vldm	sp!, {d8-d9}
 117 00a0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 118              	.L17:
 119 00a4 0024     		movs	r4, #0
 120 00a6 90ED059A 		vldr.32	s18, [r0, #20]
 121 00aa D0ED048A 		vldr.32	s17, [r0, #16]
 122 00ae 9FED8B8A 		vldr.32	s16, .L108
 123 00b2 8B4E     		ldr	r6, .L108+4
 124 00b4 2746     		mov	r7, r4
 125 00b6 4FF00108 		mov	r8, #1
 126              	.L43:
 127 00ba E340     		lsrs	r3, r3, r4
 128 00bc DA07     		lsls	r2, r3, #31
 129 00be 50D5     		bpl	.L20
 130 00c0 B6F8F630 		ldrh	r3, [r6, #246]
 131 00c4 3069     		ldr	r0, [r6, #16]	@ unaligned
 132 00c6 A342     		cmp	r3, r4
 133 00c8 09D8     		bhi	.L21
 134 00ca A4F10803 		sub	r3, r4, #8
 135 00ce 092B     		cmp	r3, #9
 136 00d0 05D9     		bls	.L21
 137 00d2 61B2     		sxtb	r1, r4
 138 00d4 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 139 00d8 0028     		cmp	r0, #0
 140 00da 42D0     		beq	.L20
 141 00dc 3069     		ldr	r0, [r6, #16]
 142              	.L21:
 143 00de 072C     		cmp	r4, #7
 144 00e0 44D9     		bls	.L103
 145 00e2 04F15C09 		add	r9, r4, #92
 146              	.L54:
 147 00e6 0DF10702 		add	r2, sp, #7
 148 00ea 4946     		mov	r1, r9
 149 00ec FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 150 00f0 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 151 00f4 6BB9     		cbnz	r3, .L23
 152 00f6 FAEE047A 		vmov.f32	s15, #-1.0e+1
 153 00fa B4EEE70A 		vcmpe.f32	s0, s15
 154 00fe F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 155 0102 06D4     		bmi	.L23
 156 0104 D5ED057A 		vldr.32	s15, [r5, #20]
 157 0108 F4EEC07A 		vcmpe.f32	s15, s0
 158 010c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 159 0110 52D8     		bhi	.L93
 160              	.L23:
 161 0112 B4EEE89A 		vcmpe.f32	s18, s17
 162 0116 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 163 011a 2ED8     		bhi	.L94
 164 011c D5ED007A 		vldr.32	s15, [r5]
 165 0120 B6EE007A 		vmov.f32	s14, #5.0e-1
 166 0124 F4EE477A 		vcmp.f32	s15, s14
 167 0128 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 168 012c 48BF     		it	mi
 169 012e F0EE477A 		vmovmi.f32	s15, s14
 170              	.L26:
 171 0132 B4EE488A 		vcmp.f32	s16, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 4


 172 0136 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 173 013a 06D6     		bvs	.L29
 174 013c F4EEC87A 		vcmpe.f32	s15, s16
 175 0140 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 176 0144 58BF     		it	pl
 177 0146 B0EE678A 		vmovpl.f32	s16, s15
 178              	.L29:
 179 014a 4946     		mov	r1, r9
 180 014c 3069     		ldr	r0, [r6, #16]
 181 014e FFF7FEFF 		bl	_ZNK4Heat16GetHeaterChannelEj
 182 0152 6FF47A73 		mvn	r3, #1000
 183 0156 1844     		add	r0, r0, r3
 184 0158 0128     		cmp	r0, #1
 185 015a 02D8     		bhi	.L20
 186 015c 08FA00F0 		lsl	r0, r8, r0
 187 0160 0743     		orrs	r7, r7, r0
 188              	.L20:
 189 0162 0134     		adds	r4, r4, #1
 190 0164 122C     		cmp	r4, #18
 191 0166 10D0     		beq	.L42
 192              	.L104:
 193 0168 6B6A     		ldr	r3, [r5, #36]
 194 016a A6E7     		b	.L43
 195              	.L103:
 196 016c 2146     		mov	r1, r4
 197 016e FFF7FEFF 		bl	_ZNK4Heat8IsTuningEj
 198 0172 28B9     		cbnz	r0, .L56
 199 0174 3069     		ldr	r0, [r6, #16]
 200 0176 A146     		mov	r9, r4
 201 0178 B5E7     		b	.L54
 202              	.L94:
 203 017a F7EE007A 		vmov.f32	s15, #1.0e+0
 204 017e D8E7     		b	.L26
 205              	.L56:
 206 0180 0134     		adds	r4, r4, #1
 207 0182 122C     		cmp	r4, #18
 208 0184 B7EE008A 		vmov.f32	s16, #1.0e+0
 209 0188 EED1     		bne	.L104
 210              	.L42:
 211 018a B5EEC08A 		vcmpe.f32	s16, #0
 212 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 213 0192 3FF747AF 		bgt	.L18
 214 0196 8FB3     		cbz	r7, .L68
 215 0198 D5ED017A 		vldr.32	s15, [r5, #4]
 216 019c F5EE407A 		vcmp.f32	s15, #0
 217 01a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 218 01a4 2AD0     		beq	.L68
 219 01a6 4E4B     		ldr	r3, .L108+4
 220 01a8 3946     		mov	r1, r7
 221 01aa 5868     		ldr	r0, [r3, #4]
 222 01ac 0022     		movs	r2, #0
 223 01ae F0EE488A 		vmov.f32	s17, s16
 224 01b2 FFF7FEFF 		bl	_ZN8Platform22DriverCoolingFansOnOffEmb
 225 01b6 69E7     		b	.L19
 226              	.L93:
 227 01b8 B4EEE89A 		vcmpe.f32	s18, s17
 228 01bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 5


 229 01c0 1FD9     		bls	.L31
 230 01c2 95ED047A 		vldr.32	s14, [r5, #16]
 231 01c6 B4EEC07A 		vcmpe.f32	s14, s0
 232 01ca F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 233 01ce 18D5     		bpl	.L31
 234 01d0 30EE470A 		vsub.f32	s0, s0, s14
 235 01d4 77EEC77A 		vsub.f32	s15, s15, s14
 236 01d8 B4EE488A 		vcmp.f32	s16, s16
 237 01dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 238 01e0 80EE277A 		vdiv.f32	s14, s0, s15
 239 01e4 B1D6     		bvs	.L29
 240 01e6 B4EEC87A 		vcmpe.f32	s14, s16
 241 01ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 242 01ee 58BF     		it	pl
 243 01f0 B0EE478A 		vmovpl.f32	s16, s14
 244 01f4 A9E7     		b	.L29
 245              	.L64:
 246 01f6 F0EE487A 		vmov.f32	s15, s16
 247 01fa 29E7     		b	.L47
 248              	.L68:
 249 01fc F0EE488A 		vmov.f32	s17, s16
 250 0200 44E7     		b	.L19
 251              	.L31:
 252 0202 D5ED017A 		vldr.32	s15, [r5, #4]
 253 0206 F5EE407A 		vcmp.f32	s15, #0
 254 020a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 255 020e 9CD0     		beq	.L29
 256 0210 F7EE007A 		vmov.f32	s15, #1.0e+0
 257 0214 30EE270A 		vadd.f32	s0, s0, s15
 258 0218 D5ED047A 		vldr.32	s15, [r5, #16]
 259 021c B4EEE70A 		vcmpe.f32	s0, s15
 260 0220 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 261 0224 91DD     		ble	.L29
 262 0226 B4EEE89A 		vcmpe.f32	s18, s17
 263 022a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 264 022e 3FD9     		bls	.L105
 265 0230 95ED027A 		vldr.32	s14, [r5, #8]
 266              	.L37:
 267 0234 D5ED037A 		vldr.32	s15, [r5, #12]
 268 0238 B4EE488A 		vcmp.f32	s16, s16
 269 023c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 270 0240 83D6     		bvs	.L29
 271 0242 F4EEC87A 		vcmpe.f32	s15, s16
 272 0246 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 273 024a 3DDC     		bgt	.L60
 274 024c F4EE677A 		vcmp.f32	s15, s15
 275 0250 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 276 0254 3ED6     		bvs	.L106
 277              	.L39:
 278 0256 F4EEC77A 		vcmpe.f32	s15, s14
 279 025a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 280 025e D4BF     		ite	le
 281 0260 B0EE478A 		vmovle.f32	s16, s14
 282 0264 B0EE678A 		vmovgt.f32	s16, s15
 283 0268 6FE7     		b	.L29
 284              	.L102:
 285 026a FFF7FEFF 		bl	millis
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 6


 286 026e D5E90723 		ldrd	r2, r3, [r5, #28]
 287 0272 C01A     		subs	r0, r0, r3
 288 0274 9042     		cmp	r0, r2
 289 0276 02D2     		bcs	.L107
 290 0278 F7EE008A 		vmov.f32	s17, #1.0e+0
 291 027c 06E7     		b	.L19
 292              	.L107:
 293 027e 0023     		movs	r3, #0
 294 0280 85F84530 		strb	r3, [r5, #69]
 295 0284 02E7     		b	.L19
 296              	.L101:
 297 0286 EB69     		ldr	r3, [r5, #28]
 298 0288 002B     		cmp	r3, #0
 299 028a 3FF4FAAE 		beq	.L50
 300 028e 0123     		movs	r3, #1
 301 0290 85F84530 		strb	r3, [r5, #69]
 302 0294 FFF7FEFF 		bl	millis
 303 0298 2862     		str	r0, [r5, #32]
 304 029a F2E6     		b	.L50
 305              	.L100:
 306 029c 104B     		ldr	r3, .L108+4
 307 029e 3946     		mov	r1, r7
 308 02a0 5868     		ldr	r0, [r3, #4]
 309 02a2 0122     		movs	r2, #1
 310 02a4 FFF7FEFF 		bl	_ZN8Platform22DriverCoolingFansOnOffEmb
 311 02a8 E3E6     		b	.L51
 312              	.L63:
 313 02aa F0EE488A 		vmov.f32	s17, s16
 314 02ae D6E6     		b	.L46
 315              	.L105:
 316 02b0 95ED007A 		vldr.32	s14, [r5]
 317 02b4 F6EE007A 		vmov.f32	s15, #5.0e-1
 318 02b8 B4EE677A 		vcmp.f32	s14, s15
 319 02bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 320 02c0 48BF     		it	mi
 321 02c2 B0EE677A 		vmovmi.f32	s14, s15
 322 02c6 B5E7     		b	.L37
 323              	.L60:
 324 02c8 F0EE487A 		vmov.f32	s15, s16
 325 02cc C3E7     		b	.L39
 326              	.L99:
 327 02ce F0EE678A 		vmov.f32	s17, s15
 328 02d2 C4E6     		b	.L46
 329              	.L106:
 330 02d4 B0EE678A 		vmov.f32	s16, s15
 331 02d8 37E7     		b	.L29
 332              	.L109:
 333 02da 00BF     		.align	2
 334              	.L108:
 335 02dc 00000000 		.word	0
 336 02e0 00000000 		.word	reprap
 337              		.size	_ZN3Fan7RefreshEv, .-_ZN3Fan7RefreshEv
 338              		.section	.text._ZN3Fan4InitEhtbt,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_ZN3Fan4InitEhtbt
 342              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	_ZN3Fan4InitEhtbt, %function
 347              	_ZN3Fan4InitEhtbt:
 348              		@ args = 4, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 30B4     		push	{r4, r5}
 352 0002 80F84430 		strb	r3, [r0, #68]
 353 0006 104D     		ldr	r5, .L112
 354 0008 8560     		str	r5, [r0, #8]	@ float
 355 000a 4FF07E53 		mov	r3, #1065353216
 356 000e 6425     		movs	r5, #100
 357 0010 C360     		str	r3, [r0, #12]	@ float
 358 0012 BDF80830 		ldrh	r3, [sp, #8]
 359 0016 80F82C10 		strb	r1, [r0, #44]
 360 001a 4285     		strh	r2, [r0, #42]	@ movhi
 361 001c 0021     		movs	r1, #0
 362 001e 0B4A     		ldr	r2, .L112+4
 363 0020 C561     		str	r5, [r0, #28]
 364 0022 0385     		strh	r3, [r0, #40]	@ movhi
 365 0024 0A4D     		ldr	r5, .L112+8
 366 0026 8561     		str	r5, [r0, #24]	@ float
 367 0028 0023     		movs	r3, #0
 368 002a 80F84230 		strb	r3, [r0, #66]
 369 002e 80F84530 		strb	r3, [r0, #69]
 370 0032 80F84330 		strb	r3, [r0, #67]
 371 0036 4362     		str	r3, [r0, #36]
 372 0038 4160     		str	r1, [r0, #4]	@ float
 373 003a 0160     		str	r1, [r0]	@ float
 374 003c 4261     		str	r2, [r0, #20]	@ float
 375 003e 0261     		str	r2, [r0, #16]	@ float
 376 0040 30BC     		pop	{r4, r5}
 377 0042 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 378              	.L113:
 379 0046 00BF     		.align	2
 380              	.L112:
 381 0048 CDCCCC3D 		.word	1036831949
 382 004c 00003442 		.word	1110704128
 383 0050 000080BF 		.word	-1082130432
 384              		.size	_ZN3Fan4InitEhtbt, .-_ZN3Fan4InitEhtbt
 385              		.section	.text._ZN3Fan6SetPwmEf,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	_ZN3Fan6SetPwmEf
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	_ZN3Fan6SetPwmEf, %function
 394              	_ZN3Fan6SetPwmEf:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 80ED000A 		vstr.32	s0, [r0]
 399 0004 FFF7FEBF 		b	_ZN3Fan7RefreshEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 8


 400              		.size	_ZN3Fan6SetPwmEf, .-_ZN3Fan6SetPwmEf
 401              		.section	.text._ZN3Fan19SetHeatersMonitoredEm,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	_ZN3Fan19SetHeatersMonitoredEm
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_ZN3Fan19SetHeatersMonitoredEm, %function
 410              	_ZN3Fan19SetHeatersMonitoredEm:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 4162     		str	r1, [r0, #36]
 415 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 416              		.size	_ZN3Fan19SetHeatersMonitoredEm, .-_ZN3Fan19SetHeatersMonitoredEm
 417              		.global	__aeabi_f2d
 418 0006 00BF     		.section	.text._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 419              		.align	1
 420              		.p2align 2,,3
 421              		.global	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 422              		.syntax unified
 423              		.thumb
 424              		.thumb_func
 425              		.fpu fpv4-sp-d16
 426              		.type	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, %function
 427              	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb:
 428              		@ args = 8, pretend = 0, frame = 80
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 431 0004 2DED028B 		vpush.64	{d8}
 432 0008 6A29     		cmp	r1, #106
 433 000a 9BB0     		sub	sp, sp, #108
 434 000c 06D0     		beq	.L117
 435              	.L163:
 436 000e 0025     		movs	r5, #0
 437              	.L225:
 438 0010 2846     		mov	r0, r5
 439 0012 1BB0     		add	sp, sp, #108
 440              		@ sp needed
 441 0014 BDEC028B 		vldm	sp!, {d8}
 442 0018 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 443              	.L117:
 444 001c 0646     		mov	r6, r0
 445 001e 4121     		movs	r1, #65
 446 0020 1846     		mov	r0, r3
 447 0022 1C46     		mov	r4, r3
 448 0024 1746     		mov	r7, r2
 449 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 450 002a 0546     		mov	r5, r0
 451 002c 0028     		cmp	r0, #0
 452 002e 40F0D980 		bne	.L236
 453              	.L119:
 454 0032 96F82C30 		ldrb	r3, [r6, #44]	@ zero_extendqisi2
 455 0036 FF2B     		cmp	r3, #255
 456 0038 00F0EB80 		beq	.L237
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 9


 457 003c 4921     		movs	r1, #73
 458 003e 2046     		mov	r0, r4
 459 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 460 0044 8046     		mov	r8, r0
 461 0046 0028     		cmp	r0, #0
 462 0048 40F07081 		bne	.L238
 463              	.L122:
 464 004c 4621     		movs	r1, #70
 465 004e 2046     		mov	r0, r4
 466 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 467 0054 8046     		mov	r8, r0
 468 0056 0028     		cmp	r0, #0
 469 0058 40F0AD81 		bne	.L239
 470              	.L125:
 471 005c 5421     		movs	r1, #84
 472 005e 2046     		mov	r0, r4
 473 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 474 0064 8046     		mov	r8, r0
 475 0066 0028     		cmp	r0, #0
 476 0068 40F09981 		bne	.L240
 477              	.L126:
 478 006c 4221     		movs	r1, #66
 479 006e 2046     		mov	r0, r4
 480 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 481 0074 8046     		mov	r8, r0
 482 0076 0028     		cmp	r0, #0
 483 0078 40F0B081 		bne	.L241
 484              	.L127:
 485 007c 4C21     		movs	r1, #76
 486 007e 2046     		mov	r0, r4
 487 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 488 0084 8046     		mov	r8, r0
 489 0086 0028     		cmp	r0, #0
 490 0088 40F05D81 		bne	.L242
 491              	.L131:
 492 008c 5821     		movs	r1, #88
 493 008e 2046     		mov	r0, r4
 494 0090 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 495 0094 8046     		mov	r8, r0
 496 0096 0028     		cmp	r0, #0
 497 0098 40F01E81 		bne	.L243
 498              	.L137:
 499 009c 4821     		movs	r1, #72
 500 009e 2046     		mov	r0, r4
 501 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 502 00a4 0028     		cmp	r0, #0
 503 00a6 40F0ED80 		bne	.L244
 504 00aa 4321     		movs	r1, #67
 505 00ac 2046     		mov	r0, r4
 506 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 507 00b2 0028     		cmp	r0, #0
 508 00b4 40F0D980 		bne	.L152
 509              	.L155:
 510 00b8 002D     		cmp	r5, #0
 511 00ba 40F0C880 		bne	.L170
 512 00be 5221     		movs	r1, #82
 513 00c0 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 10


 514 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 515 00c6 0028     		cmp	r0, #0
 516 00c8 A1D1     		bne	.L163
 517 00ca 2046     		mov	r0, r4
 518 00cc 5321     		movs	r1, #83
 519 00ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 520 00d2 0546     		mov	r5, r0
 521 00d4 0028     		cmp	r0, #0
 522 00d6 9AD1     		bne	.L163
 523 00d8 CC49     		ldr	r1, .L250
 524 00da 2498     		ldr	r0, [sp, #144]
 525 00dc 3A46     		mov	r2, r7
 526 00de 06F12D04 		add	r4, r6, #45
 527 00e2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 528 00e6 2046     		mov	r0, r4
 529 00e8 1421     		movs	r1, #20
 530 00ea FFF7FEFF 		bl	_Z7StrnlenPKcj
 531 00ee 0028     		cmp	r0, #0
 532 00f0 40F0F981 		bne	.L245
 533              	.L164:
 534 00f4 C649     		ldr	r1, .L250+4
 535 00f6 2498     		ldr	r0, [sp, #144]
 536 00f8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 537 00fc C54B     		ldr	r3, .L250+8
 538 00fe 249A     		ldr	r2, [sp, #144]
 539 0100 5868     		ldr	r0, [r3, #4]
 540 0102 718D     		ldrh	r1, [r6, #42]
 541 0104 FFF7FEFF 		bl	_ZNK8Platform13AppendPinNameEtRK9StringRef
 542 0108 D6ED027A 		vldr.32	s15, [r6, #8]
 543 010c 9FEDC26A 		vldr.32	s12, .L250+12
 544 0110 D6ED076A 		vldr.32	s13, [r6, #28]	@ int
 545 0114 96ED037A 		vldr.32	s14, [r6, #12]
 546 0118 DFEDC05A 		vldr.32	s11, .L250+16
 547 011c 96ED008A 		vldr.32	s16, [r6]
 548 0120 B6F82880 		ldrh	r8, [r6, #40]
 549 0124 67EE867A 		vmul.f32	s15, s15, s12
 550 0128 F8EE666A 		vcvt.f32.u32	s13, s13
 551 012c 27EE067A 		vmul.f32	s14, s14, s12
 552 0130 FDEEE77A 		vcvt.s32.f32	s15, s15
 553 0134 66EEA56A 		vmul.f32	s13, s13, s11
 554 0138 17EE904A 		vmov	r4, s15	@ int
 555 013c FDEEC77A 		vcvt.s32.f32	s15, s14
 556 0140 28EE068A 		vmul.f32	s16, s16, s12
 557 0144 16EE900A 		vmov	r0, s13
 558 0148 17EE907A 		vmov	r7, s15	@ int
 559 014c FFF7FEFF 		bl	__aeabi_f2d
 560 0150 96F84320 		ldrb	r2, [r6, #67]	@ zero_extendqisi2
 561 0154 B24B     		ldr	r3, .L250+20
 562 0156 0094     		str	r4, [sp]
 563 0158 B24C     		ldr	r4, .L250+24
 564 015a 0197     		str	r7, [sp, #4]
 565 015c BDEEC88A 		vcvt.s32.f32	s16, s16
 566 0160 002A     		cmp	r2, #0
 567 0162 08BF     		it	eq
 568 0164 1C46     		moveq	r4, r3
 569 0166 CDE90201 		strd	r0, [sp, #8]
 570 016a 18EE103A 		vmov	r3, s16	@ int
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 11


 571 016e 0494     		str	r4, [sp, #16]
 572 0170 4246     		mov	r2, r8
 573 0172 AD49     		ldr	r1, .L250+28
 574 0174 2498     		ldr	r0, [sp, #144]
 575 0176 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 576 017a 736A     		ldr	r3, [r6, #36]
 577 017c 002B     		cmp	r3, #0
 578 017e 3FF446AF 		beq	.L163
 579 0182 3069     		ldr	r0, [r6, #16]	@ float
 580 0184 A94F     		ldr	r7, .L250+32
 581 0186 FFF7FEFF 		bl	__aeabi_f2d
 582 018a 8046     		mov	r8, r0
 583 018c 7069     		ldr	r0, [r6, #20]	@ float
 584 018e 8946     		mov	r9, r1
 585 0190 FFF7FEFF 		bl	__aeabi_f2d
 586 0194 4246     		mov	r2, r8
 587 0196 CDE90001 		strd	r0, [sp]
 588 019a 4B46     		mov	r3, r9
 589 019c A449     		ldr	r1, .L250+36
 590 019e 2498     		ldr	r0, [sp, #144]
 591 01a0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 592 01a4 0024     		movs	r4, #0
 593              	.L168:
 594 01a6 736A     		ldr	r3, [r6, #36]
 595 01a8 E340     		lsrs	r3, r3, r4
 596 01aa DB07     		lsls	r3, r3, #31
 597 01ac 08D5     		bpl	.L166
 598 01ae 072C     		cmp	r4, #7
 599 01b0 8CBF     		ite	hi
 600 01b2 04F15C02 		addhi	r2, r4, #92
 601 01b6 2246     		movls	r2, r4
 602 01b8 3946     		mov	r1, r7
 603 01ba 2498     		ldr	r0, [sp, #144]
 604 01bc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 605              	.L166:
 606 01c0 0134     		adds	r4, r4, #1
 607 01c2 122C     		cmp	r4, #18
 608 01c4 EFD1     		bne	.L168
 609 01c6 D6ED017A 		vldr.32	s15, [r6, #4]
 610 01ca 9FED937A 		vldr.32	s14, .L250+12
 611 01ce 9949     		ldr	r1, .L250+40
 612 01d0 2498     		ldr	r0, [sp, #144]
 613 01d2 67EE877A 		vmul.f32	s15, s15, s14
 614 01d6 FDEEE77A 		vcvt.s32.f32	s15, s15
 615 01da 17EE902A 		vmov	r2, s15	@ int
 616 01de FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 617 01e2 15E7     		b	.L225
 618              	.L236:
 619 01e4 2046     		mov	r0, r4
 620 01e6 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 621 01ea DFF82892 		ldr	r9, .L250+8
 622 01ee 1FFA80F8 		uxth	r8, r0
 623 01f2 4146     		mov	r1, r8
 624 01f4 D9F80400 		ldr	r0, [r9, #4]
 625 01f8 06F14403 		add	r3, r6, #68
 626 01fc 06F12C02 		add	r2, r6, #44
 627 0200 FFF7FEFF 		bl	_ZNK8Platform15TranslateFanPinEtRhRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 12


 628 0204 0028     		cmp	r0, #0
 629 0206 00F03D81 		beq	.L120
 630 020a A6F82A80 		strh	r8, [r6, #42]	@ movhi
 631 020e 0546     		mov	r5, r0
 632 0210 0FE7     		b	.L119
 633              	.L237:
 634 0212 3A46     		mov	r2, r7
 635 0214 8849     		ldr	r1, .L250+44
 636 0216 2498     		ldr	r0, [sp, #144]
 637 0218 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 638 021c 259B     		ldr	r3, [sp, #148]
 639 021e 0125     		movs	r5, #1
 640 0220 1D70     		strb	r5, [r3]
 641 0222 F5E6     		b	.L225
 642              	.L247:
 643 0224 29B1     		cbz	r1, .L145
 644 0226 4FF07E53 		mov	r3, #1065353216
 645 022a 3360     		str	r3, [r6]	@ float
 646 022c 3046     		mov	r0, r6
 647 022e FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 648              	.L145:
 649 0232 4321     		movs	r1, #67
 650 0234 2046     		mov	r0, r4
 651 0236 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 652 023a 40B1     		cbz	r0, .L170
 653 023c 06F12D02 		add	r2, r6, #45
 654 0240 1523     		movs	r3, #21
 655 0242 08A9     		add	r1, sp, #32
 656 0244 2046     		mov	r0, r4
 657 0246 CDE90823 		strd	r2, r3, [sp, #32]
 658 024a FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 659              	.L170:
 660 024e 5321     		movs	r1, #83
 661 0250 2046     		mov	r0, r4
 662 0252 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 663 0256 0028     		cmp	r0, #0
 664 0258 40F0F880 		bne	.L246
 665              	.L157:
 666 025c 0125     		movs	r5, #1
 667 025e 86F84250 		strb	r5, [r6, #66]
 668 0262 3046     		mov	r0, r6
 669 0264 FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 670 0268 D2E6     		b	.L225
 671              	.L152:
 672 026a 06F12D02 		add	r2, r6, #45
 673 026e 1523     		movs	r3, #21
 674 0270 08A9     		add	r1, sp, #32
 675 0272 2046     		mov	r0, r4
 676 0274 0892     		str	r2, [sp, #32]
 677 0276 0993     		str	r3, [sp, #36]
 678 0278 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 679 027c 0028     		cmp	r0, #0
 680 027e 3FF41BAF 		beq	.L155
 681 0282 E4E7     		b	.L170
 682              	.L244:
 683 0284 1AAA     		add	r2, sp, #104
 684 0286 1223     		movs	r3, #18
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 13


 685 0288 42F84C3D 		str	r3, [r2, #-76]!
 686 028c 08A9     		add	r1, sp, #32
 687 028e 2046     		mov	r0, r4
 688 0290 0023     		movs	r3, #0
 689 0292 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 690 0296 0798     		ldr	r0, [sp, #28]
 691 0298 0021     		movs	r1, #0
 692 029a 7162     		str	r1, [r6, #36]
 693 029c 0028     		cmp	r0, #0
 694 029e C8D0     		beq	.L145
 695 02a0 08AB     		add	r3, sp, #32
 696 02a2 03EB8000 		add	r0, r3, r0, lsl #2
 697 02a6 1A46     		mov	r2, r3
 698 02a8 4FF0010C 		mov	ip, #1
 699 02ac 03E0     		b	.L148
 700              	.L248:
 701 02ae 3943     		orrs	r1, r1, r7
 702 02b0 7162     		str	r1, [r6, #36]
 703              	.L147:
 704 02b2 9042     		cmp	r0, r2
 705 02b4 B6D0     		beq	.L247
 706              	.L148:
 707 02b6 52F8043B 		ldr	r3, [r2], #4
 708 02ba 072B     		cmp	r3, #7
 709 02bc 0CFA03F7 		lsl	r7, ip, r3
 710 02c0 A3F16405 		sub	r5, r3, #100
 711 02c4 F3D9     		bls	.L248
 712 02c6 092D     		cmp	r5, #9
 713 02c8 A3F15C03 		sub	r3, r3, #92
 714 02cc F1D8     		bhi	.L147
 715 02ce 0CFA03F3 		lsl	r3, ip, r3
 716 02d2 1943     		orrs	r1, r1, r3
 717 02d4 7162     		str	r1, [r6, #36]
 718 02d6 ECE7     		b	.L147
 719              	.L243:
 720 02d8 2046     		mov	r0, r4
 721 02da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 722 02de F7EE007A 		vmov.f32	s15, #1.0e+0
 723 02e2 B4EEE70A 		vcmpe.f32	s0, s15
 724 02e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 725 02ea C4BF     		itt	gt
 726 02ec DFED557A 		vldrgt.32	s15, .L250+56
 727 02f0 80EE270A 		vdivgt.f32	s0, s0, s15
 728 02f4 D6ED027A 		vldr.32	s15, [r6, #8]
 729 02f8 B4EE400A 		vcmp.f32	s0, s0
 730 02fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 731 0300 80F1EE80 		bvs	.L174
 732 0304 B7EE007A 		vmov.f32	s14, #1.0e+0
 733 0308 B4EEC70A 		vcmpe.f32	s0, s14
 734 030c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 735 0310 58BF     		it	pl
 736 0312 B0EE470A 		vmovpl.f32	s0, s14
 737 0316 F4EE407A 		vcmp.f32	s15, s0
 738 031a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 739 031e 48BF     		it	mi
 740 0320 F0EE407A 		vmovmi.f32	s15, s0
 741              	.L140:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 14


 742 0324 C6ED037A 		vstr.32	s15, [r6, #12]
 743 0328 4546     		mov	r5, r8
 744 032a B7E6     		b	.L137
 745              	.L238:
 746 032c 2046     		mov	r0, r4
 747 032e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 748 0332 0028     		cmp	r0, #0
 749 0334 C0F2B980 		blt	.L249
 750 0338 CCBF     		ite	gt
 751 033a 0123     		movgt	r3, #1
 752 033c 0023     		movle	r3, #0
 753 033e 4546     		mov	r5, r8
 754 0340 86F84330 		strb	r3, [r6, #67]
 755 0344 82E6     		b	.L122
 756              	.L242:
 757 0346 2046     		mov	r0, r4
 758 0348 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 759 034c F7EE007A 		vmov.f32	s15, #1.0e+0
 760 0350 B4EEE70A 		vcmpe.f32	s0, s15
 761 0354 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 762 0358 C4BF     		itt	gt
 763 035a DFED3A7A 		vldrgt.32	s15, .L250+56
 764 035e 80EE270A 		vdivgt.f32	s0, s0, s15
 765 0362 D6ED037A 		vldr.32	s15, [r6, #12]
 766 0366 B4EE400A 		vcmp.f32	s0, s0
 767 036a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 768 036e 12D6     		bvs	.L134
 769 0370 F4EEC07A 		vcmpe.f32	s15, s0
 770 0374 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 771 0378 06DC     		bgt	.L135
 772 037a F4EE677A 		vcmp.f32	s15, s15
 773 037e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 774 0382 B0EE670A 		vmov.f32	s0, s15
 775 0386 06D6     		bvs	.L134
 776              	.L135:
 777 0388 B5EEC00A 		vcmpe.f32	s0, #0
 778 038c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 779 0390 D8BF     		it	le
 780 0392 9FED2D0A 		vldrle.32	s0, .L250+60
 781              	.L134:
 782 0396 86ED020A 		vstr.32	s0, [r6, #8]
 783 039a 4546     		mov	r5, r8
 784 039c 76E6     		b	.L131
 785              	.L240:
 786 039e 1AAA     		add	r2, sp, #104
 787 03a0 0223     		movs	r3, #2
 788 03a2 42F8483D 		str	r3, [r2, #-72]!
 789 03a6 06F11001 		add	r1, r6, #16
 790 03aa 0123     		movs	r3, #1
 791 03ac 2046     		mov	r0, r4
 792 03ae FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 793 03b2 4546     		mov	r5, r8
 794 03b4 5AE6     		b	.L126
 795              	.L239:
 796 03b6 2046     		mov	r0, r4
 797 03b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 798 03bc 0128     		cmp	r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 15


 799 03be 4FF6FF73 		movw	r3, #65535
 800 03c2 B8BF     		it	lt
 801 03c4 0120     		movlt	r0, #1
 802 03c6 9842     		cmp	r0, r3
 803 03c8 A8BF     		it	ge
 804 03ca 1846     		movge	r0, r3
 805 03cc 1B4B     		ldr	r3, .L250+48
 806 03ce 3085     		strh	r0, [r6, #40]	@ movhi
 807 03d0 B361     		str	r3, [r6, #24]	@ float
 808 03d2 3046     		mov	r0, r6
 809 03d4 FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 810 03d8 4546     		mov	r5, r8
 811 03da 3FE6     		b	.L125
 812              	.L241:
 813 03dc 2046     		mov	r0, r4
 814 03de FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 815 03e2 B4EE400A 		vcmp.f32	s0, s0
 816 03e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 817 03ea 04D6     		bvs	.L234
 818 03ec B5EEC00A 		vcmpe.f32	s0, #0
 819 03f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 820 03f4 6FDD     		ble	.L226
 821              	.L234:
 822 03f6 DFED127A 		vldr.32	s15, .L250+52
 823 03fa 20EE270A 		vmul.f32	s0, s0, s15
 824 03fe FCEEC07A 		vcvt.u32.f32	s15, s0
 825 0402 17EE903A 		vmov	r3, s15	@ int
 826              	.L129:
 827 0406 F361     		str	r3, [r6, #28]
 828 0408 4546     		mov	r5, r8
 829 040a 37E6     		b	.L127
 830              	.L251:
 831              		.align	2
 832              	.L250:
 833 040c 50000000 		.word	.LC5
 834 0410 60000000 		.word	.LC7
 835 0414 00000000 		.word	reprap
 836 0418 0000C842 		.word	1120403456
 837 041c 6F12833A 		.word	981668463
 838 0420 04000000 		.word	.LC1
 839 0424 00000000 		.word	.LC0
 840 0428 68000000 		.word	.LC8
 841 042c DC000000 		.word	.LC10
 842 0430 B8000000 		.word	.LC9
 843 0434 E0000000 		.word	.LC11
 844 0438 3C000000 		.word	.LC4
 845 043c 000080BF 		.word	-1082130432
 846 0440 00007A44 		.word	1148846080
 847 0444 00007F43 		.word	1132396544
 848 0448 00000000 		.word	0
 849              	.L246:
 850 044c 2046     		mov	r0, r4
 851 044e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 852 0452 B4EE400A 		vcmp.f32	s0, s0
 853 0456 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 854 045a 0DD6     		bvs	.L158
 855 045c 5FED077A 		vldr.32	s15, .L250+56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 16


 856 0460 B4EEE70A 		vcmpe.f32	s0, s15
 857 0464 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 858 0468 37D5     		bpl	.L230
 859 046a B5EEC00A 		vcmpe.f32	s0, #0
 860 046e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 861 0472 01DC     		bgt	.L158
 862 0474 1FED0C0A 		vldr.32	s0, .L250+60
 863              	.L158:
 864 0478 86ED000A 		vstr.32	s0, [r6]
 865 047c 3046     		mov	r0, r6
 866 047e FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 867 0482 EBE6     		b	.L157
 868              	.L120:
 869 0484 1B49     		ldr	r1, .L252
 870 0486 2498     		ldr	r0, [sp, #144]
 871 0488 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 872 048c 249A     		ldr	r2, [sp, #144]
 873 048e D9F80400 		ldr	r0, [r9, #4]
 874 0492 4146     		mov	r1, r8
 875 0494 FFF7FEFF 		bl	_ZNK8Platform13AppendPinNameEtRK9StringRef
 876 0498 3A46     		mov	r2, r7
 877 049a 1749     		ldr	r1, .L252+4
 878 049c 2498     		ldr	r0, [sp, #144]
 879 049e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 880 04a2 259A     		ldr	r2, [sp, #148]
 881 04a4 0123     		movs	r3, #1
 882 04a6 1370     		strb	r3, [r2]
 883 04a8 B2E5     		b	.L225
 884              	.L249:
 885 04aa 96F82C30 		ldrb	r3, [r6, #44]	@ zero_extendqisi2
 886 04ae FF2B     		cmp	r3, #255
 887 04b0 09D0     		beq	.L124
 888 04b2 0022     		movs	r2, #0
 889 04b4 114B     		ldr	r3, .L252+8
 890 04b6 86F84320 		strb	r2, [r6, #67]
 891 04ba B361     		str	r3, [r6, #24]	@ float
 892 04bc 9FED100A 		vldr.32	s0, .L252+12
 893 04c0 3046     		mov	r0, r6
 894 04c2 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 895              	.L124:
 896 04c6 FF22     		movs	r2, #255
 897 04c8 4FF6FF73 		movw	r3, #65535
 898 04cc 4546     		mov	r5, r8
 899 04ce 86F82C20 		strb	r2, [r6, #44]
 900 04d2 7385     		strh	r3, [r6, #42]	@ movhi
 901 04d4 BAE5     		b	.L122
 902              	.L226:
 903 04d6 0023     		movs	r3, #0
 904 04d8 95E7     		b	.L129
 905              	.L230:
 906 04da B0EE670A 		vmov.f32	s0, s15
 907 04de CBE7     		b	.L158
 908              	.L174:
 909 04e0 F0EE407A 		vmov.f32	s15, s0
 910 04e4 1EE7     		b	.L140
 911              	.L245:
 912 04e6 2246     		mov	r2, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 17


 913 04e8 0649     		ldr	r1, .L252+16
 914 04ea 2498     		ldr	r0, [sp, #144]
 915 04ec FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 916 04f0 00E6     		b	.L164
 917              	.L253:
 918 04f2 00BF     		.align	2
 919              	.L252:
 920 04f4 08000000 		.word	.LC2
 921 04f8 18000000 		.word	.LC3
 922 04fc 000080BF 		.word	-1082130432
 923 0500 00000000 		.word	0
 924 0504 58000000 		.word	.LC6
 925              		.size	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, .-_ZN3Fan9ConfigureEjiR11GCodeBufferRK9Str
 926              		.section	.text._ZN3Fan5CheckEv,"ax",%progbits
 927              		.align	1
 928              		.p2align 2,,3
 929              		.global	_ZN3Fan5CheckEv
 930              		.syntax unified
 931              		.thumb
 932              		.thumb_func
 933              		.fpu fpv4-sp-d16
 934              		.type	_ZN3Fan5CheckEv, %function
 935              	_ZN3Fan5CheckEv:
 936              		@ args = 0, pretend = 0, frame = 0
 937              		@ frame_needed = 0, uses_anonymous_args = 0
 938 0000 436A     		ldr	r3, [r0, #36]
 939 0002 13B9     		cbnz	r3, .L255
 940 0004 90F84530 		ldrb	r3, [r0, #69]	@ zero_extendqisi2
 941 0008 73B1     		cbz	r3, .L266
 942              	.L255:
 943 000a 10B5     		push	{r4, lr}
 944 000c 0446     		mov	r4, r0
 945 000e FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 946 0012 636A     		ldr	r3, [r4, #36]
 947 0014 33B1     		cbz	r3, .L256
 948 0016 D4ED017A 		vldr.32	s15, [r4, #4]
 949 001a F5EE407A 		vcmp.f32	s15, #0
 950 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 951 0022 03D1     		bne	.L258
 952              	.L256:
 953 0024 0020     		movs	r0, #0
 954 0026 10BD     		pop	{r4, pc}
 955              	.L266:
 956 0028 0020     		movs	r0, #0
 957 002a 7047     		bx	lr
 958              	.L258:
 959 002c 0120     		movs	r0, #1
 960 002e 10BD     		pop	{r4, pc}
 961              		.size	_ZN3Fan5CheckEv, .-_ZN3Fan5CheckEv
 962              		.section	.text._ZN3Fan7DisableEv,"ax",%progbits
 963              		.align	1
 964              		.p2align 2,,3
 965              		.global	_ZN3Fan7DisableEv
 966              		.syntax unified
 967              		.thumb
 968              		.thumb_func
 969              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 18


 970              		.type	_ZN3Fan7DisableEv, %function
 971              	_ZN3Fan7DisableEv:
 972              		@ args = 0, pretend = 0, frame = 0
 973              		@ frame_needed = 0, uses_anonymous_args = 0
 974 0000 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 975 0004 FF2B     		cmp	r3, #255
 976 0006 10B5     		push	{r4, lr}
 977 0008 0446     		mov	r4, r0
 978 000a 08D0     		beq	.L269
 979 000c 0022     		movs	r2, #0
 980 000e 074B     		ldr	r3, .L274
 981 0010 80F84320 		strb	r2, [r0, #67]
 982 0014 8361     		str	r3, [r0, #24]	@ float
 983 0016 9FED060A 		vldr.32	s0, .L274+4
 984 001a FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 985              	.L269:
 986 001e FF22     		movs	r2, #255
 987 0020 4FF6FF73 		movw	r3, #65535
 988 0024 84F82C20 		strb	r2, [r4, #44]
 989 0028 6385     		strh	r3, [r4, #42]	@ movhi
 990 002a 10BD     		pop	{r4, pc}
 991              	.L275:
 992              		.align	2
 993              	.L274:
 994 002c 000080BF 		.word	-1082130432
 995 0030 00000000 		.word	0
 996              		.size	_ZN3Fan7DisableEv, .-_ZN3Fan7DisableEv
 997              		.section	.text._ZNK3Fan13WriteSettingsEP9FileStorej,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	_ZNK3Fan13WriteSettingsEP9FileStorej
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu fpv4-sp-d16
 1005              		.type	_ZNK3Fan13WriteSettingsEP9FileStorej, %function
 1006              	_ZNK3Fan13WriteSettingsEP9FileStorej:
 1007              		@ args = 0, pretend = 0, frame = 64
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009 0000 436A     		ldr	r3, [r0, #36]
 1010 0002 0BB1     		cbz	r3, .L283
 1011 0004 0120     		movs	r0, #1
 1012 0006 7047     		bx	lr
 1013              	.L283:
 1014 0008 30B5     		push	{r4, r5, lr}
 1015 000a 93B0     		sub	sp, sp, #76
 1016 000c 3223     		movs	r3, #50
 1017 000e 1546     		mov	r5, r2
 1018 0010 0068     		ldr	r0, [r0]	@ float
 1019 0012 05AA     		add	r2, sp, #20
 1020 0014 CDE90323 		strd	r2, r3, [sp, #12]
 1021 0018 0C46     		mov	r4, r1
 1022 001a FFF7FEFF 		bl	__aeabi_f2d
 1023 001e 2A46     		mov	r2, r5
 1024 0020 CDE90001 		strd	r0, [sp]
 1025 0024 03A8     		add	r0, sp, #12
 1026 0026 0449     		ldr	r1, .L284
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 19


 1027 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1028 002c 2046     		mov	r0, r4
 1029 002e 0399     		ldr	r1, [sp, #12]
 1030 0030 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1031 0034 13B0     		add	sp, sp, #76
 1032              		@ sp needed
 1033 0036 30BD     		pop	{r4, r5, pc}
 1034              	.L285:
 1035              		.align	2
 1036              	.L284:
 1037 0038 00000000 		.word	.LC12
 1038              		.size	_ZNK3Fan13WriteSettingsEP9FileStorej, .-_ZNK3Fan13WriteSettingsEP9FileStorej
 1039              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1040              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1041              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1042              	_ZL28cpu_irq_prev_interrupt_state:
 1043 0000 00       		.space	1
 1044              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1045              		.align	2
 1046              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1047              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1048              	_ZL32cpu_irq_critical_section_counter:
 1049 0000 00000000 		.space	4
 1050              		.section	.rodata._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,1
 1051              		.align	2
 1052              	.LC0:
 1053 0000 79657300 		.ascii	"yes\000"
 1054              	.LC1:
 1055 0004 6E6F00   		.ascii	"no\000"
 1056 0007 00       		.space	1
 1057              	.LC2:
 1058 0008 4C6F6769 		.ascii	"Logical pin \000"
 1058      63616C20 
 1058      70696E20 
 1058      00
 1059 0015 000000   		.space	3
 1060              	.LC3:
 1061 0018 20697320 		.ascii	" is not available to use for fan %d\000"
 1061      6E6F7420 
 1061      61766169 
 1061      6C61626C 
 1061      6520746F 
 1062              	.LC4:
 1063 003c 46616E20 		.ascii	"Fan %d is disabled\000"
 1063      25642069 
 1063      73206469 
 1063      7361626C 
 1063      656400
 1064 004f 00       		.space	1
 1065              	.LC5:
 1066 0050 46616E20 		.ascii	"Fan %i\000"
 1066      256900
 1067 0057 00       		.space	1
 1068              	.LC6:
 1069 0058 20282573 		.ascii	" (%s)\000"
 1069      2900
 1070 005e 0000     		.space	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccu4nO6e.s 			page 20


 1071              	.LC7:
 1072 0060 2070696E 		.ascii	" pin: \000"
 1072      3A2000
 1073 0067 00       		.space	1
 1074              	.LC8:
 1075 0068 2C206672 		.ascii	", frequency: %uHz, speed: %d%%, min: %d%%, max: %d%"
 1075      65717565 
 1075      6E63793A 
 1075      20257548 
 1075      7A2C2073 
 1076 009b 252C2062 		.ascii	"%, blip: %.2f, inverted: %s\000"
 1076      6C69703A 
 1076      20252E32 
 1076      662C2069 
 1076      6E766572 
 1077 00b7 00       		.space	1
 1078              	.LC9:
 1079 00b8 2C207465 		.ascii	", temperature: %.1f:%.1fC, heaters:\000"
 1079      6D706572 
 1079      61747572 
 1079      653A2025 
 1079      2E31663A 
 1080              	.LC10:
 1081 00dc 20257500 		.ascii	" %u\000"
 1082              	.LC11:
 1083 00e0 2C206375 		.ascii	", current speed: %d%%:\000"
 1083      7272656E 
 1083      74207370 
 1083      6565643A 
 1083      20256425 
 1084              		.section	.rodata._ZNK3Fan13WriteSettingsEP9FileStorej.str1.4,"aMS",%progbits,1
 1085              		.align	2
 1086              	.LC12:
 1087 0000 4D313036 		.ascii	"M106 P%u S%.2f\012\000"
 1087      20502575 
 1087      2053252E 
 1087      32660A00 
 1088              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
