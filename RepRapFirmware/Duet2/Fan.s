ARM GAS  /tmp/cc1s9c0c.s 			page 1


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
  14              		.section	.text._ZN3Fan14SetHardwarePwmEf,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN3Fan14SetHardwarePwmEf
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN3Fan14SetHardwarePwmEf, %function
  23              	_ZN3Fan14SetHardwarePwmEf:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 90F82630 		ldrb	r3, [r0, #38]	@ zero_extendqisi2
  28 0004 FF2B     		cmp	r3, #255
  29 0006 12D0     		beq	.L1
  30 0008 90F82810 		ldrb	r1, [r0, #40]	@ zero_extendqisi2
  31 000c 90F82920 		ldrb	r2, [r0, #41]	@ zero_extendqisi2
  32 0010 09B1     		cbz	r1, .L3
  33 0012 82F00102 		eor	r2, r2, #1
  34              	.L3:
  35 0016 1AB1     		cbz	r2, .L4
  36 0018 F7EE007A 		vmov.f32	s15, #1.0e+0
  37 001c 37EEC00A 		vsub.f32	s0, s15, s0
  38              	.L4:
  39 0020 D0ED057A 		vldr.32	s15, [r0, #20]
  40 0024 F4EE407A 		vcmp.f32	s15, s0
  41 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  42 002c 00D1     		bne	.L15
  43              	.L1:
  44 002e 7047     		bx	lr
  45              	.L15:
  46 0030 80ED050A 		vstr.32	s0, [r0, #20]
  47 0034 818C     		ldrh	r1, [r0, #36]
  48 0036 1846     		mov	r0, r3
  49 0038 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
  50              		.size	_ZN3Fan14SetHardwarePwmEf, .-_ZN3Fan14SetHardwarePwmEf
  51              		.section	.text._ZN3Fan7RefreshEv,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN3Fan7RefreshEv
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cc1s9c0c.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZN3Fan7RefreshEv, %function
  60              	_ZN3Fan7RefreshEv:
  61              		@ args = 0, pretend = 0, frame = 8
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  64 0004 2DED048B 		vpush.64	{d8, d9}
  65 0008 036A     		ldr	r3, [r0, #32]
  66 000a 83B0     		sub	sp, sp, #12
  67 000c 0546     		mov	r5, r0
  68 000e A3BB     		cbnz	r3, .L17
  69 0010 90ED008A 		vldr.32	s16, [r0]
  70 0014 1F46     		mov	r7, r3
  71              	.L18:
  72 0016 B5EEC08A 		vcmpe.f32	s16, #0
  73 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  74 001e 40F3C380 		ble	.L86
  75 0022 D5ED028A 		vldr.32	s17, [r5, #8]
  76 0026 D5ED017A 		vldr.32	s15, [r5, #4]
  77 002a F4EEC88A 		vcmpe.f32	s17, s16
  78 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  79 0032 F5EE407A 		vcmp.f32	s15, #0
  80 0036 D8BF     		it	le
  81 0038 F0EE488A 		vmovle.f32	s17, s16
  82 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  83 0040 0AD1     		bne	.L45
  84 0042 002F     		cmp	r7, #0
  85 0044 40F0DB80 		bne	.L91
  86              	.L46:
  87 0048 F7EE007A 		vmov.f32	s15, #1.0e+0
  88 004c F4EEE78A 		vcmpe.f32	s17, s15
  89 0050 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  90 0054 00F1C580 		bmi	.L92
  91              	.L45:
  92 0058 95F82A30 		ldrb	r3, [r5, #42]	@ zero_extendqisi2
  93 005c 002B     		cmp	r3, #0
  94 005e 40F09880 		bne	.L93
  95              	.L41:
  96 0062 B0EE680A 		vmov.f32	s0, s17
  97 0066 2846     		mov	r0, r5
  98 0068 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
  99 006c C5ED018A 		vstr.32	s17, [r5, #4]
 100 0070 03B0     		add	sp, sp, #12
 101              		@ sp needed
 102 0072 BDEC048B 		vldm	sp!, {d8-d9}
 103 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 104              	.L17:
 105 007a 0024     		movs	r4, #0
 106 007c 90ED049A 		vldr.32	s18, [r0, #16]
 107 0080 D0ED038A 		vldr.32	s17, [r0, #12]
 108 0084 9FED628A 		vldr.32	s16, .L96
 109 0088 624E     		ldr	r6, .L96+4
 110 008a 2746     		mov	r7, r4
 111 008c 4FF00108 		mov	r8, #1
 112              	.L40:
 113 0090 E340     		lsrs	r3, r3, r4
 114 0092 DA07     		lsls	r2, r3, #31
ARM GAS  /tmp/cc1s9c0c.s 			page 3


 115 0094 45D5     		bpl	.L19
 116 0096 738F     		ldrh	r3, [r6, #58]
 117 0098 F068     		ldr	r0, [r6, #12]	@ unaligned
 118 009a A342     		cmp	r3, r4
 119 009c 08D8     		bhi	.L20
 120 009e A4F10803 		sub	r3, r4, #8
 121 00a2 092B     		cmp	r3, #9
 122 00a4 04D9     		bls	.L20
 123 00a6 61B2     		sxtb	r1, r4
 124 00a8 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 125 00ac C8B3     		cbz	r0, .L19
 126 00ae F068     		ldr	r0, [r6, #12]
 127              	.L20:
 128 00b0 072C     		cmp	r4, #7
 129 00b2 3CD9     		bls	.L94
 130 00b4 04F15C09 		add	r9, r4, #92
 131              	.L49:
 132 00b8 0DF10702 		add	r2, sp, #7
 133 00bc 4946     		mov	r1, r9
 134 00be FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 135 00c2 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 136 00c6 6BB9     		cbnz	r3, .L22
 137 00c8 FAEE047A 		vmov.f32	s15, #-1.0e+1
 138 00cc B4EEE70A 		vcmpe.f32	s0, s15
 139 00d0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 140 00d4 06D4     		bmi	.L22
 141 00d6 D5ED047A 		vldr.32	s15, [r5, #16]
 142 00da F4EEC07A 		vcmpe.f32	s15, s0
 143 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 144 00e2 2BD8     		bhi	.L83
 145              	.L22:
 146 00e4 B4EEE89A 		vcmpe.f32	s18, s17
 147 00e8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 148 00ec 42D9     		bls	.L90
 149 00ee F7EE007A 		vmov.f32	s15, #1.0e+0
 150              	.L36:
 151 00f2 B4EE488A 		vcmp.f32	s16, s16
 152 00f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 153 00fa 06D6     		bvs	.L28
 154 00fc F4EEC87A 		vcmpe.f32	s15, s16
 155 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 156 0104 58BF     		it	pl
 157 0106 B0EE678A 		vmovpl.f32	s16, s15
 158              	.L28:
 159 010a 4946     		mov	r1, r9
 160 010c F068     		ldr	r0, [r6, #12]
 161 010e FFF7FEFF 		bl	_ZNK4Heat16GetHeaterChannelEj
 162 0112 6FF47A73 		mvn	r3, #1000
 163 0116 1844     		add	r0, r0, r3
 164 0118 0128     		cmp	r0, #1
 165 011a 02D8     		bhi	.L19
 166 011c 08FA00F0 		lsl	r0, r8, r0
 167 0120 0743     		orrs	r7, r7, r0
 168              	.L19:
 169 0122 0134     		adds	r4, r4, #1
 170 0124 122C     		cmp	r4, #18
 171 0126 3FF476AF 		beq	.L18
ARM GAS  /tmp/cc1s9c0c.s 			page 4


 172 012a 2B6A     		ldr	r3, [r5, #32]
 173 012c B0E7     		b	.L40
 174              	.L94:
 175 012e 2146     		mov	r1, r4
 176 0130 FFF7FEFF 		bl	_ZNK4Heat8IsTuningEj
 177 0134 50BB     		cbnz	r0, .L50
 178 0136 F068     		ldr	r0, [r6, #12]
 179 0138 A146     		mov	r9, r4
 180 013a BDE7     		b	.L49
 181              	.L83:
 182 013c B4EEE89A 		vcmpe.f32	s18, s17
 183 0140 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 184 0144 33D8     		bhi	.L95
 185              	.L30:
 186 0146 D5ED017A 		vldr.32	s15, [r5, #4]
 187 014a F5EE407A 		vcmp.f32	s15, #0
 188 014e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 189 0152 DAD0     		beq	.L28
 190 0154 F7EE007A 		vmov.f32	s15, #1.0e+0
 191 0158 30EE270A 		vadd.f32	s0, s0, s15
 192 015c D5ED037A 		vldr.32	s15, [r5, #12]
 193 0160 B4EEE70A 		vcmpe.f32	s0, s15
 194 0164 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 195 0168 CFDD     		ble	.L28
 196 016a B4EEE89A 		vcmpe.f32	s18, s17
 197 016e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 198 0172 4AD8     		bhi	.L85
 199              	.L90:
 200 0174 D5ED007A 		vldr.32	s15, [r5]
 201 0178 B6EE007A 		vmov.f32	s14, #5.0e-1
 202 017c F4EE477A 		vcmp.f32	s15, s14
 203 0180 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 204 0184 48BF     		it	mi
 205 0186 F0EE477A 		vmovmi.f32	s15, s14
 206 018a B2E7     		b	.L36
 207              	.L50:
 208 018c B7EE008A 		vmov.f32	s16, #1.0e+0
 209 0190 C7E7     		b	.L19
 210              	.L93:
 211 0192 FFF7FEFF 		bl	millis
 212 0196 D5E90623 		ldrd	r2, r3, [r5, #24]
 213 019a C01A     		subs	r0, r0, r3
 214 019c 9042     		cmp	r0, r2
 215 019e 2BD3     		bcc	.L56
 216 01a0 0023     		movs	r3, #0
 217 01a2 85F82A30 		strb	r3, [r5, #42]
 218 01a6 5CE7     		b	.L41
 219              	.L86:
 220 01a8 F0EE488A 		vmov.f32	s17, s16
 221 01ac 59E7     		b	.L41
 222              	.L95:
 223 01ae 95ED037A 		vldr.32	s14, [r5, #12]
 224 01b2 B4EEC07A 		vcmpe.f32	s14, s0
 225 01b6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 226 01ba C4D5     		bpl	.L30
 227 01bc 30EE470A 		vsub.f32	s0, s0, s14
 228 01c0 77EEC77A 		vsub.f32	s15, s15, s14
ARM GAS  /tmp/cc1s9c0c.s 			page 5


 229 01c4 B4EE488A 		vcmp.f32	s16, s16
 230 01c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 231 01cc 80EE277A 		vdiv.f32	s14, s0, s15
 232 01d0 9BD6     		bvs	.L28
 233 01d2 B4EEC87A 		vcmpe.f32	s14, s16
 234 01d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 235 01da 58BF     		it	pl
 236 01dc B0EE478A 		vmovpl.f32	s16, s14
 237 01e0 93E7     		b	.L28
 238              	.L92:
 239 01e2 AB69     		ldr	r3, [r5, #24]
 240 01e4 002B     		cmp	r3, #0
 241 01e6 3FF437AF 		beq	.L45
 242 01ea 0123     		movs	r3, #1
 243 01ec 85F82A30 		strb	r3, [r5, #42]
 244 01f0 FFF7FEFF 		bl	millis
 245 01f4 E861     		str	r0, [r5, #28]
 246 01f6 2FE7     		b	.L45
 247              	.L56:
 248 01f8 F7EE008A 		vmov.f32	s17, #1.0e+0
 249 01fc 31E7     		b	.L41
 250              	.L91:
 251 01fe 054B     		ldr	r3, .L96+4
 252 0200 3946     		mov	r1, r7
 253 0202 1868     		ldr	r0, [r3]
 254 0204 FFF7FEFF 		bl	_ZN8Platform19DriverCoolingFansOnEm
 255 0208 1EE7     		b	.L46
 256              	.L85:
 257 020a D5ED027A 		vldr.32	s15, [r5, #8]
 258 020e 70E7     		b	.L36
 259              	.L97:
 260              		.align	2
 261              	.L96:
 262 0210 00000000 		.word	0
 263 0214 00000000 		.word	reprap
 264              		.size	_ZN3Fan7RefreshEv, .-_ZN3Fan7RefreshEv
 265              		.section	.text._ZN3Fan4InitEhb,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	_ZN3Fan4InitEhb
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	_ZN3Fan4InitEhb, %function
 274              	_ZN3Fan4InitEhb:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 70B4     		push	{r4, r5, r6}
 279 0002 80F82920 		strb	r2, [r0, #41]
 280 0006 6425     		movs	r5, #100
 281 0008 FA22     		movs	r2, #250
 282 000a 0024     		movs	r4, #0
 283 000c 0B4E     		ldr	r6, .L100
 284 000e 80F82610 		strb	r1, [r0, #38]
 285 0012 8561     		str	r5, [r0, #24]
ARM GAS  /tmp/cc1s9c0c.s 			page 6


 286 0014 0A49     		ldr	r1, .L100+4
 287 0016 0B4D     		ldr	r5, .L100+8
 288 0018 8284     		strh	r2, [r0, #36]	@ movhi
 289 001a 0022     		movs	r2, #0
 290 001c 8660     		str	r6, [r0, #8]	@ float
 291 001e 4561     		str	r5, [r0, #20]	@ float
 292 0020 4460     		str	r4, [r0, #4]	@ float
 293 0022 0460     		str	r4, [r0]	@ float
 294 0024 80F82720 		strb	r2, [r0, #39]
 295 0028 80F82A20 		strb	r2, [r0, #42]
 296 002c 80F82820 		strb	r2, [r0, #40]
 297 0030 0262     		str	r2, [r0, #32]
 298 0032 0161     		str	r1, [r0, #16]	@ float
 299 0034 C160     		str	r1, [r0, #12]	@ float
 300 0036 70BC     		pop	{r4, r5, r6}
 301 0038 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 302              	.L101:
 303              		.align	2
 304              	.L100:
 305 003c CDCCCC3D 		.word	1036831949
 306 0040 00003442 		.word	1110704128
 307 0044 000080BF 		.word	-1082130432
 308              		.size	_ZN3Fan4InitEhb, .-_ZN3Fan4InitEhb
 309              		.section	.text._ZN3Fan6SetPwmEf,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZN3Fan6SetPwmEf
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZN3Fan6SetPwmEf, %function
 318              	_ZN3Fan6SetPwmEf:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 322 0000 F7EE007A 		vmov.f32	s15, #1.0e+0
 323 0004 B4EEE70A 		vcmpe.f32	s0, s15
 324 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 325 000c C4BF     		itt	gt
 326 000e DFED107A 		vldrgt.32	s15, .L112
 327 0012 80EE270A 		vdivgt.f32	s0, s0, s15
 328 0016 B4EE400A 		vcmp.f32	s0, s0
 329 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 330 001e 08D6     		bvs	.L105
 331 0020 F7EE007A 		vmov.f32	s15, #1.0e+0
 332 0024 B4EEE70A 		vcmpe.f32	s0, s15
 333 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 334 002c 05D4     		bmi	.L111
 335 002e B0EE670A 		vmov.f32	s0, s15
 336              	.L105:
 337 0032 80ED000A 		vstr.32	s0, [r0]
 338 0036 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 339              	.L111:
 340 003a B5EEC00A 		vcmpe.f32	s0, #0
 341 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 342 0042 F6DC     		bgt	.L105
ARM GAS  /tmp/cc1s9c0c.s 			page 7


 343 0044 9FED030A 		vldr.32	s0, .L112+4
 344 0048 80ED000A 		vstr.32	s0, [r0]
 345 004c FFF7FEBF 		b	_ZN3Fan7RefreshEv
 346              	.L113:
 347              		.align	2
 348              	.L112:
 349 0050 00007F43 		.word	1132396544
 350 0054 00000000 		.word	0
 351              		.size	_ZN3Fan6SetPwmEf, .-_ZN3Fan6SetPwmEf
 352              		.section	.text._ZN3Fan19SetHeatersMonitoredEm,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	_ZN3Fan19SetHeatersMonitoredEm
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZN3Fan19SetHeatersMonitoredEm, %function
 361              	_ZN3Fan19SetHeatersMonitoredEm:
 362              		@ args = 0, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364              		@ link register save eliminated.
 365 0000 0162     		str	r1, [r0, #32]
 366 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 367              		.size	_ZN3Fan19SetHeatersMonitoredEm, .-_ZN3Fan19SetHeatersMonitoredEm
 368              		.global	__aeabi_f2d
 369 0006 00BF     		.section	.text._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, %function
 378              	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb:
 379              		@ args = 8, pretend = 0, frame = 80
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 382 0004 2DED028B 		vpush.64	{d8}
 383 0008 0446     		mov	r4, r0
 384 000a 90F82600 		ldrb	r0, [r0, #38]	@ zero_extendqisi2
 385 000e FF28     		cmp	r0, #255
 386 0010 9BB0     		sub	sp, sp, #108
 387 0012 00F0AD80 		beq	.L211
 388 0016 6A29     		cmp	r1, #106
 389 0018 06D0     		beq	.L118
 390              	.L151:
 391 001a 0025     		movs	r5, #0
 392              	.L197:
 393 001c 2846     		mov	r0, r5
 394 001e 1BB0     		add	sp, sp, #108
 395              		@ sp needed
 396 0020 BDEC028B 		vldm	sp!, {d8}
 397 0024 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 398              	.L118:
 399 0028 4921     		movs	r1, #73
ARM GAS  /tmp/cc1s9c0c.s 			page 8


 400 002a 1846     		mov	r0, r3
 401 002c 1D46     		mov	r5, r3
 402 002e 1746     		mov	r7, r2
 403 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 404 0034 0646     		mov	r6, r0
 405 0036 0028     		cmp	r0, #0
 406 0038 40F03881 		bne	.L212
 407              	.L119:
 408 003c 4621     		movs	r1, #70
 409 003e 2846     		mov	r0, r5
 410 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 411 0044 8046     		mov	r8, r0
 412 0046 0028     		cmp	r0, #0
 413 0048 40F01D81 		bne	.L213
 414              	.L122:
 415 004c 5421     		movs	r1, #84
 416 004e 2846     		mov	r0, r5
 417 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 418 0054 8046     		mov	r8, r0
 419 0056 0028     		cmp	r0, #0
 420 0058 40F03381 		bne	.L214
 421              	.L123:
 422 005c 4221     		movs	r1, #66
 423 005e 2846     		mov	r0, r5
 424 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 425 0064 8046     		mov	r8, r0
 426 0066 0028     		cmp	r0, #0
 427 0068 40F0F580 		bne	.L215
 428              	.L124:
 429 006c 4C21     		movs	r1, #76
 430 006e 2846     		mov	r0, r5
 431 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 432 0074 0028     		cmp	r0, #0
 433 0076 40F09C80 		bne	.L216
 434 007a 4821     		movs	r1, #72
 435 007c 2846     		mov	r0, r5
 436 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 437 0082 0028     		cmp	r0, #0
 438 0084 40F0BE80 		bne	.L134
 439 0088 002E     		cmp	r6, #0
 440 008a 40F08480 		bne	.L140
 441 008e 5221     		movs	r1, #82
 442 0090 2846     		mov	r0, r5
 443 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 444 0096 0028     		cmp	r0, #0
 445 0098 BFD1     		bne	.L151
 446 009a 2846     		mov	r0, r5
 447 009c 5321     		movs	r1, #83
 448 009e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 449 00a2 0546     		mov	r5, r0
 450 00a4 0028     		cmp	r0, #0
 451 00a6 B8D1     		bne	.L151
 452 00a8 D4ED067A 		vldr.32	s15, [r4, #24]	@ int
 453 00ac DFEDA56A 		vldr.32	s13, .L221
 454 00b0 94ED008A 		vldr.32	s16, [r4]
 455 00b4 D4ED028A 		vldr.32	s17, [r4, #8]
 456 00b8 9FEDA37A 		vldr.32	s14, .L221+4
ARM GAS  /tmp/cc1s9c0c.s 			page 9


 457 00bc B4F82480 		ldrh	r8, [r4, #36]
 458 00c0 F8EE677A 		vcvt.f32.u32	s15, s15
 459 00c4 28EE078A 		vmul.f32	s16, s16, s14
 460 00c8 67EEA67A 		vmul.f32	s15, s15, s13
 461 00cc 68EE878A 		vmul.f32	s17, s17, s14
 462 00d0 17EE900A 		vmov	r0, s15
 463 00d4 FFF7FEFF 		bl	__aeabi_f2d
 464 00d8 94F828C0 		ldrb	ip, [r4, #40]	@ zero_extendqisi2
 465 00dc 9B4A     		ldr	r2, .L221+8
 466 00de 9C4B     		ldr	r3, .L221+12
 467 00e0 BDEEC88A 		vcvt.s32.f32	s16, s16
 468 00e4 FDEEE88A 		vcvt.s32.f32	s17, s17
 469 00e8 BCF1000F 		cmp	ip, #0
 470 00ec 08BF     		it	eq
 471 00ee 1346     		moveq	r3, r2
 472 00f0 CDE90201 		strd	r0, [sp, #8]
 473 00f4 0493     		str	r3, [sp, #16]
 474 00f6 CDED018A 		vstr.32	s17, [sp, #4]	@ int
 475 00fa 4346     		mov	r3, r8
 476 00fc 8DED008A 		vstr.32	s16, [sp]	@ int
 477 0100 3A46     		mov	r2, r7
 478 0102 9449     		ldr	r1, .L221+16
 479 0104 2498     		ldr	r0, [sp, #144]
 480 0106 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 481 010a 236A     		ldr	r3, [r4, #32]
 482 010c 002B     		cmp	r3, #0
 483 010e 84D0     		beq	.L151
 484 0110 E068     		ldr	r0, [r4, #12]	@ float
 485 0112 914F     		ldr	r7, .L221+20
 486 0114 FFF7FEFF 		bl	__aeabi_f2d
 487 0118 8046     		mov	r8, r0
 488 011a 2069     		ldr	r0, [r4, #16]	@ float
 489 011c 8946     		mov	r9, r1
 490 011e FFF7FEFF 		bl	__aeabi_f2d
 491 0122 4246     		mov	r2, r8
 492 0124 CDE90001 		strd	r0, [sp]
 493 0128 4B46     		mov	r3, r9
 494 012a 8C49     		ldr	r1, .L221+24
 495 012c 2498     		ldr	r0, [sp, #144]
 496 012e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 497              	.L155:
 498 0132 236A     		ldr	r3, [r4, #32]
 499 0134 F340     		lsrs	r3, r3, r6
 500 0136 DB07     		lsls	r3, r3, #31
 501 0138 08D5     		bpl	.L153
 502 013a 072E     		cmp	r6, #7
 503 013c 8CBF     		ite	hi
 504 013e 06F15C02 		addhi	r2, r6, #92
 505 0142 3246     		movls	r2, r6
 506 0144 3946     		mov	r1, r7
 507 0146 2498     		ldr	r0, [sp, #144]
 508 0148 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 509              	.L153:
 510 014c 0136     		adds	r6, r6, #1
 511 014e 122E     		cmp	r6, #18
 512 0150 EFD1     		bne	.L155
 513 0152 D4ED017A 		vldr.32	s15, [r4, #4]
ARM GAS  /tmp/cc1s9c0c.s 			page 10


 514 0156 9FED7C7A 		vldr.32	s14, .L221+4
 515 015a 8149     		ldr	r1, .L221+28
 516 015c 2498     		ldr	r0, [sp, #144]
 517 015e 67EE877A 		vmul.f32	s15, s15, s14
 518 0162 FDEEE77A 		vcvt.s32.f32	s15, s15
 519 0166 17EE902A 		vmov	r2, s15	@ int
 520 016a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 521 016e 55E7     		b	.L197
 522              	.L211:
 523 0170 7C49     		ldr	r1, .L221+32
 524 0172 2498     		ldr	r0, [sp, #144]
 525 0174 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 526 0178 0125     		movs	r5, #1
 527 017a 259B     		ldr	r3, [sp, #148]
 528 017c 2846     		mov	r0, r5
 529 017e 1D70     		strb	r5, [r3]
 530 0180 1BB0     		add	sp, sp, #108
 531              		@ sp needed
 532 0182 BDEC028B 		vldm	sp!, {d8}
 533 0186 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 534              	.L218:
 535 018a 21B1     		cbz	r1, .L140
 536 018c B7EE000A 		vmov.f32	s0, #1.0e+0
 537 0190 2046     		mov	r0, r4
 538 0192 FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 539              	.L140:
 540 0196 5321     		movs	r1, #83
 541 0198 2846     		mov	r0, r5
 542 019a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 543 019e 0028     		cmp	r0, #0
 544 01a0 40F0B280 		bne	.L217
 545              	.L144:
 546 01a4 0125     		movs	r5, #1
 547 01a6 84F82750 		strb	r5, [r4, #39]
 548 01aa 2046     		mov	r0, r4
 549 01ac FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 550 01b0 34E7     		b	.L197
 551              	.L216:
 552 01b2 2846     		mov	r0, r5
 553 01b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 554 01b8 F7EE007A 		vmov.f32	s15, #1.0e+0
 555 01bc B4EEE70A 		vcmpe.f32	s0, s15
 556 01c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 557 01c4 C4BF     		itt	gt
 558 01c6 DFED687A 		vldrgt.32	s15, .L221+36
 559 01ca 80EE270A 		vdivgt.f32	s0, s0, s15
 560 01ce B4EE400A 		vcmp.f32	s0, s0
 561 01d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 562 01d6 0DD6     		bvs	.L131
 563 01d8 F7EE007A 		vmov.f32	s15, #1.0e+0
 564 01dc B4EEE70A 		vcmpe.f32	s0, s15
 565 01e0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 566 01e4 79D5     		bpl	.L199
 567 01e6 B5EEC00A 		vcmpe.f32	s0, #0
 568 01ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 569 01ee 01DC     		bgt	.L131
 570 01f0 9FED5E0A 		vldr.32	s0, .L221+40
ARM GAS  /tmp/cc1s9c0c.s 			page 11


 571              	.L131:
 572 01f4 84ED020A 		vstr.32	s0, [r4, #8]
 573 01f8 4821     		movs	r1, #72
 574 01fa 2846     		mov	r0, r5
 575 01fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 576 0200 0028     		cmp	r0, #0
 577 0202 C8D0     		beq	.L140
 578              	.L134:
 579 0204 1AAA     		add	r2, sp, #104
 580 0206 1223     		movs	r3, #18
 581 0208 42F84C3D 		str	r3, [r2, #-76]!
 582 020c 08A9     		add	r1, sp, #32
 583 020e 2846     		mov	r0, r5
 584 0210 0023     		movs	r3, #0
 585 0212 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 586 0216 0798     		ldr	r0, [sp, #28]
 587 0218 0021     		movs	r1, #0
 588 021a 2162     		str	r1, [r4, #32]
 589 021c 0028     		cmp	r0, #0
 590 021e BAD0     		beq	.L140
 591 0220 08AA     		add	r2, sp, #32
 592 0222 02EB8000 		add	r0, r2, r0, lsl #2
 593 0226 4FF0010C 		mov	ip, #1
 594 022a 03E0     		b	.L143
 595              	.L219:
 596 022c 3943     		orrs	r1, r1, r7
 597 022e 2162     		str	r1, [r4, #32]
 598              	.L142:
 599 0230 9042     		cmp	r0, r2
 600 0232 AAD0     		beq	.L218
 601              	.L143:
 602 0234 52F8043B 		ldr	r3, [r2], #4
 603 0238 072B     		cmp	r3, #7
 604 023a 0CFA03F7 		lsl	r7, ip, r3
 605 023e A3F16406 		sub	r6, r3, #100
 606 0242 F3D9     		bls	.L219
 607 0244 092E     		cmp	r6, #9
 608 0246 A3F15C03 		sub	r3, r3, #92
 609 024a F1D8     		bhi	.L142
 610 024c 0CFA03F3 		lsl	r3, ip, r3
 611 0250 1943     		orrs	r1, r1, r3
 612 0252 2162     		str	r1, [r4, #32]
 613 0254 ECE7     		b	.L142
 614              	.L215:
 615 0256 2846     		mov	r0, r5
 616 0258 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 617 025c B4EE400A 		vcmp.f32	s0, s0
 618 0260 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 619 0264 04D6     		bvs	.L209
 620 0266 B5EEC00A 		vcmpe.f32	s0, #0
 621 026a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 622 026e 49DD     		ble	.L198
 623              	.L209:
 624 0270 DFED3F7A 		vldr.32	s15, .L221+44
 625 0274 20EE270A 		vmul.f32	s0, s0, s15
 626 0278 FCEEC07A 		vcvt.u32.f32	s15, s0
 627 027c 17EE903A 		vmov	r3, s15	@ int
ARM GAS  /tmp/cc1s9c0c.s 			page 12


 628              	.L126:
 629 0280 A361     		str	r3, [r4, #24]
 630 0282 4646     		mov	r6, r8
 631 0284 F2E6     		b	.L124
 632              	.L213:
 633 0286 2846     		mov	r0, r5
 634 0288 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 635 028c 0128     		cmp	r0, #1
 636 028e 4FF6FF73 		movw	r3, #65535
 637 0292 B8BF     		it	lt
 638 0294 0120     		movlt	r0, #1
 639 0296 9842     		cmp	r0, r3
 640 0298 A8BF     		it	ge
 641 029a 1846     		movge	r0, r3
 642 029c 354B     		ldr	r3, .L221+48
 643 029e A084     		strh	r0, [r4, #36]	@ movhi
 644 02a0 6361     		str	r3, [r4, #20]	@ float
 645 02a2 2046     		mov	r0, r4
 646 02a4 FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 647 02a8 4646     		mov	r6, r8
 648 02aa CFE6     		b	.L122
 649              	.L212:
 650 02ac 2846     		mov	r0, r5
 651 02ae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 652 02b2 0028     		cmp	r0, #0
 653 02b4 14DB     		blt	.L220
 654 02b6 CCBF     		ite	gt
 655 02b8 0123     		movgt	r3, #1
 656 02ba 0023     		movle	r3, #0
 657 02bc 84F82830 		strb	r3, [r4, #40]
 658 02c0 BCE6     		b	.L119
 659              	.L214:
 660 02c2 1AAA     		add	r2, sp, #104
 661 02c4 0223     		movs	r3, #2
 662 02c6 42F8483D 		str	r3, [r2, #-72]!
 663 02ca 04F10C01 		add	r1, r4, #12
 664 02ce 0123     		movs	r3, #1
 665 02d0 2846     		mov	r0, r5
 666 02d2 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 667 02d6 4646     		mov	r6, r8
 668 02d8 C0E6     		b	.L123
 669              	.L199:
 670 02da B0EE670A 		vmov.f32	s0, s15
 671 02de 89E7     		b	.L131
 672              	.L220:
 673 02e0 94F82630 		ldrb	r3, [r4, #38]	@ zero_extendqisi2
 674 02e4 FF2B     		cmp	r3, #255
 675 02e6 09D0     		beq	.L121
 676 02e8 0022     		movs	r2, #0
 677 02ea 224B     		ldr	r3, .L221+48
 678 02ec 84F82820 		strb	r2, [r4, #40]
 679 02f0 6361     		str	r3, [r4, #20]	@ float
 680 02f2 9FED1E0A 		vldr.32	s0, .L221+40
 681 02f6 2046     		mov	r0, r4
 682 02f8 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 683              	.L121:
 684 02fc FF23     		movs	r3, #255
ARM GAS  /tmp/cc1s9c0c.s 			page 13


 685 02fe 84F82630 		strb	r3, [r4, #38]
 686 0302 9BE6     		b	.L119
 687              	.L198:
 688 0304 0023     		movs	r3, #0
 689 0306 BBE7     		b	.L126
 690              	.L217:
 691 0308 2846     		mov	r0, r5
 692 030a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 693 030e B4EE400A 		vcmp.f32	s0, s0
 694 0312 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 695 0316 0DD6     		bvs	.L145
 696 0318 DFED137A 		vldr.32	s15, .L221+36
 697 031c B4EEE70A 		vcmpe.f32	s0, s15
 698 0320 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 699 0324 0AD5     		bpl	.L205
 700 0326 B5EEC00A 		vcmpe.f32	s0, #0
 701 032a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 702 032e 01DC     		bgt	.L145
 703 0330 9FED0E0A 		vldr.32	s0, .L221+40
 704              	.L145:
 705 0334 2046     		mov	r0, r4
 706 0336 FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 707 033a 33E7     		b	.L144
 708              	.L205:
 709 033c B0EE670A 		vmov.f32	s0, s15
 710 0340 F8E7     		b	.L145
 711              	.L222:
 712 0342 00BF     		.align	2
 713              	.L221:
 714 0344 6F12833A 		.word	981668463
 715 0348 0000C842 		.word	1120403456
 716 034c 04000000 		.word	.LC1
 717 0350 00000000 		.word	.LC0
 718 0354 1C000000 		.word	.LC3
 719 0358 88000000 		.word	.LC5
 720 035c 64000000 		.word	.LC4
 721 0360 8C000000 		.word	.LC6
 722 0364 08000000 		.word	.LC2
 723 0368 00007F43 		.word	1132396544
 724 036c 00000000 		.word	0
 725 0370 00007A44 		.word	1148846080
 726 0374 000080BF 		.word	-1082130432
 727              		.size	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, .-_ZN3Fan9ConfigureEjiR11GCodeBufferRK9Str
 728              		.section	.text._ZN3Fan5CheckEv,"ax",%progbits
 729              		.align	1
 730              		.p2align 2,,3
 731              		.global	_ZN3Fan5CheckEv
 732              		.syntax unified
 733              		.thumb
 734              		.thumb_func
 735              		.fpu fpv4-sp-d16
 736              		.type	_ZN3Fan5CheckEv, %function
 737              	_ZN3Fan5CheckEv:
 738              		@ args = 0, pretend = 0, frame = 0
 739              		@ frame_needed = 0, uses_anonymous_args = 0
 740 0000 036A     		ldr	r3, [r0, #32]
 741 0002 13B9     		cbnz	r3, .L224
ARM GAS  /tmp/cc1s9c0c.s 			page 14


 742 0004 90F82A30 		ldrb	r3, [r0, #42]	@ zero_extendqisi2
 743 0008 73B1     		cbz	r3, .L235
 744              	.L224:
 745 000a 10B5     		push	{r4, lr}
 746 000c 0446     		mov	r4, r0
 747 000e FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 748 0012 236A     		ldr	r3, [r4, #32]
 749 0014 33B1     		cbz	r3, .L225
 750 0016 D4ED017A 		vldr.32	s15, [r4, #4]
 751 001a F5EE407A 		vcmp.f32	s15, #0
 752 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 753 0022 03D1     		bne	.L227
 754              	.L225:
 755 0024 0020     		movs	r0, #0
 756 0026 10BD     		pop	{r4, pc}
 757              	.L235:
 758 0028 0020     		movs	r0, #0
 759 002a 7047     		bx	lr
 760              	.L227:
 761 002c 0120     		movs	r0, #1
 762 002e 10BD     		pop	{r4, pc}
 763              		.size	_ZN3Fan5CheckEv, .-_ZN3Fan5CheckEv
 764              		.section	.text._ZN3Fan7DisableEv,"ax",%progbits
 765              		.align	1
 766              		.p2align 2,,3
 767              		.global	_ZN3Fan7DisableEv
 768              		.syntax unified
 769              		.thumb
 770              		.thumb_func
 771              		.fpu fpv4-sp-d16
 772              		.type	_ZN3Fan7DisableEv, %function
 773              	_ZN3Fan7DisableEv:
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 90F82630 		ldrb	r3, [r0, #38]	@ zero_extendqisi2
 777 0004 FF2B     		cmp	r3, #255
 778 0006 10B5     		push	{r4, lr}
 779 0008 0446     		mov	r4, r0
 780 000a 08D0     		beq	.L238
 781 000c 0022     		movs	r2, #0
 782 000e 064B     		ldr	r3, .L243
 783 0010 80F82820 		strb	r2, [r0, #40]
 784 0014 4361     		str	r3, [r0, #20]	@ float
 785 0016 9FED050A 		vldr.32	s0, .L243+4
 786 001a FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 787              	.L238:
 788 001e FF23     		movs	r3, #255
 789 0020 84F82630 		strb	r3, [r4, #38]
 790 0024 10BD     		pop	{r4, pc}
 791              	.L244:
 792 0026 00BF     		.align	2
 793              	.L243:
 794 0028 000080BF 		.word	-1082130432
 795 002c 00000000 		.word	0
 796              		.size	_ZN3Fan7DisableEv, .-_ZN3Fan7DisableEv
 797              		.section	.text._ZNK3Fan13WriteSettingsEP9FileStorej,"ax",%progbits
 798              		.align	1
ARM GAS  /tmp/cc1s9c0c.s 			page 15


 799              		.p2align 2,,3
 800              		.global	_ZNK3Fan13WriteSettingsEP9FileStorej
 801              		.syntax unified
 802              		.thumb
 803              		.thumb_func
 804              		.fpu fpv4-sp-d16
 805              		.type	_ZNK3Fan13WriteSettingsEP9FileStorej, %function
 806              	_ZNK3Fan13WriteSettingsEP9FileStorej:
 807              		@ args = 0, pretend = 0, frame = 64
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809 0000 036A     		ldr	r3, [r0, #32]
 810 0002 0BB1     		cbz	r3, .L252
 811 0004 0120     		movs	r0, #1
 812 0006 7047     		bx	lr
 813              	.L252:
 814 0008 30B5     		push	{r4, r5, lr}
 815 000a 93B0     		sub	sp, sp, #76
 816 000c 3223     		movs	r3, #50
 817 000e 1546     		mov	r5, r2
 818 0010 0068     		ldr	r0, [r0]	@ float
 819 0012 05AA     		add	r2, sp, #20
 820 0014 CDE90323 		strd	r2, r3, [sp, #12]
 821 0018 0C46     		mov	r4, r1
 822 001a FFF7FEFF 		bl	__aeabi_f2d
 823 001e 2A46     		mov	r2, r5
 824 0020 CDE90001 		strd	r0, [sp]
 825 0024 03A8     		add	r0, sp, #12
 826 0026 0449     		ldr	r1, .L253
 827 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 828 002c 2046     		mov	r0, r4
 829 002e 0399     		ldr	r1, [sp, #12]
 830 0030 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 831 0034 13B0     		add	sp, sp, #76
 832              		@ sp needed
 833 0036 30BD     		pop	{r4, r5, pc}
 834              	.L254:
 835              		.align	2
 836              	.L253:
 837 0038 00000000 		.word	.LC7
 838              		.size	_ZNK3Fan13WriteSettingsEP9FileStorej, .-_ZNK3Fan13WriteSettingsEP9FileStorej
 839              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 840              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 841              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 842              	_ZL28cpu_irq_prev_interrupt_state:
 843 0000 00       		.space	1
 844              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 845              		.align	2
 846              		.type	_ZL32cpu_irq_critical_section_counter, %object
 847              		.size	_ZL32cpu_irq_critical_section_counter, 4
 848              	_ZL32cpu_irq_critical_section_counter:
 849 0000 00000000 		.space	4
 850              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 851              		.align	2
 852              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 853              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 854              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 855 0000 00000000 		.space	4
ARM GAS  /tmp/cc1s9c0c.s 			page 16


 856              		.section	.rodata._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,1
 857              		.align	2
 858              	.LC0:
 859 0000 79657300 		.ascii	"yes\000"
 860              	.LC1:
 861 0004 6E6F00   		.ascii	"no\000"
 862 0007 00       		.space	1
 863              	.LC2:
 864 0008 46616E20 		.ascii	"Fan %d is disabled\000"
 864      25642069 
 864      73206469 
 864      7361626C 
 864      656400
 865 001b 00       		.space	1
 866              	.LC3:
 867 001c 46616E25 		.ascii	"Fan%i frequency: %uHz, speed: %d%%, min: %d%%, blip"
 867      69206672 
 867      65717565 
 867      6E63793A 
 867      20257548 
 868 004f 3A20252E 		.ascii	": %.2f, inverted: %s\000"
 868      32662C20 
 868      696E7665 
 868      72746564 
 868      3A202573 
 869              	.LC4:
 870 0064 2C207465 		.ascii	", temperature: %.1f:%.1fC, heaters:\000"
 870      6D706572 
 870      61747572 
 870      653A2025 
 870      2E31663A 
 871              	.LC5:
 872 0088 20257500 		.ascii	" %u\000"
 873              	.LC6:
 874 008c 2C206375 		.ascii	", current speed: %d%%:\000"
 874      7272656E 
 874      74207370 
 874      6565643A 
 874      20256425 
 875              		.section	.rodata._ZNK3Fan13WriteSettingsEP9FileStorej.str1.4,"aMS",%progbits,1
 876              		.align	2
 877              	.LC7:
 878 0000 4D313036 		.ascii	"M106 P%u S%.2f\012\000"
 878      20502575 
 878      2053252E 
 878      32660A00 
 879              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
