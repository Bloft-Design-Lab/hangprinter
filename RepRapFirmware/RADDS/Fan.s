ARM GAS  /tmp/ccAvRF8t.s 			page 1


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
  11              		.file	"Fan.cpp"
  12              		.global	__aeabi_fsub
  13              		.global	__aeabi_fcmpeq
  14              		.section	.text._ZN3Fan14SetHardwarePwmEf,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN3Fan14SetHardwarePwmEf
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  22              		.type	_ZN3Fan14SetHardwarePwmEf, %function
  23              	_ZN3Fan14SetHardwarePwmEf:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 90F82660 		ldrb	r6, [r0, #38]	@ zero_extendqisi2
  28 0006 FF2E     		cmp	r6, #255
  29 0008 14D0     		beq	.L1
  30 000a 90F82820 		ldrb	r2, [r0, #40]	@ zero_extendqisi2
  31 000e 0446     		mov	r4, r0
  32 0010 0D46     		mov	r5, r1
  33 0012 90F82930 		ldrb	r3, [r0, #41]	@ zero_extendqisi2
  34 0016 0AB1     		cbz	r2, .L3
  35 0018 83F00103 		eor	r3, r3, #1
  36              	.L3:
  37 001c 2BB1     		cbz	r3, .L4
  38 001e 2946     		mov	r1, r5
  39 0020 4FF07E50 		mov	r0, #1065353216
  40 0024 FFF7FEFF 		bl	__aeabi_fsub
  41 0028 0546     		mov	r5, r0
  42              	.L4:
  43 002a 6169     		ldr	r1, [r4, #20]	@ float
  44 002c 2846     		mov	r0, r5
  45 002e FFF7FEFF 		bl	__aeabi_fcmpeq
  46 0032 00B1     		cbz	r0, .L18
  47              	.L1:
  48 0034 70BD     		pop	{r4, r5, r6, pc}
  49              	.L18:
  50 0036 6561     		str	r5, [r4, #20]	@ float
  51 0038 A28C     		ldrh	r2, [r4, #36]
  52 003a 2946     		mov	r1, r5
  53 003c 3046     		mov	r0, r6
  54 003e BDE87040 		pop	{r4, r5, r6, lr}
  55 0042 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
  56              		.size	_ZN3Fan14SetHardwarePwmEf, .-_ZN3Fan14SetHardwarePwmEf
  57              		.global	__aeabi_fcmplt
ARM GAS  /tmp/ccAvRF8t.s 			page 2


  58              		.global	__aeabi_fcmpge
  59              		.global	__aeabi_fcmple
  60              		.global	__aeabi_fcmpun
  61              		.global	__aeabi_fcmpgt
  62              		.global	__aeabi_fdiv
  63              		.global	__aeabi_fadd
  64 0046 00BF     		.section	.text._ZN3Fan7RefreshEv,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZN3Fan7RefreshEv
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu softvfp
  72              		.type	_ZN3Fan7RefreshEv, %function
  73              	_ZN3Fan7RefreshEv:
  74              		@ args = 0, pretend = 0, frame = 16
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  77 0004 026A     		ldr	r2, [r0, #32]
  78 0006 85B0     		sub	sp, sp, #20
  79 0008 0446     		mov	r4, r0
  80 000a 4ABB     		cbnz	r2, .L20
  81 000c 0568     		ldr	r5, [r0]	@ float
  82              	.L21:
  83 000e 0021     		movs	r1, #0
  84 0010 2846     		mov	r0, r5
  85 0012 FFF7FEFF 		bl	__aeabi_fcmpgt
  86 0016 0028     		cmp	r0, #0
  87 0018 00F0DC80 		beq	.L91
  88 001c A668     		ldr	r6, [r4, #8]	@ float
  89 001e 2846     		mov	r0, r5
  90 0020 3146     		mov	r1, r6
  91 0022 FFF7FEFF 		bl	__aeabi_fcmplt
  92 0026 0028     		cmp	r0, #0
  93 0028 00F09880 		beq	.L109
  94 002c 0021     		movs	r1, #0
  95 002e 6068     		ldr	r0, [r4, #4]	@ float
  96 0030 FFF7FEFF 		bl	__aeabi_fcmpeq
  97 0034 38B1     		cbz	r0, .L47
  98              	.L115:
  99 0036 4FF07E51 		mov	r1, #1065353216
 100 003a 3046     		mov	r0, r6
 101 003c FFF7FEFF 		bl	__aeabi_fcmplt
 102 0040 0028     		cmp	r0, #0
 103 0042 40F0BC80 		bne	.L110
 104              	.L47:
 105 0046 94F82A30 		ldrb	r3, [r4, #42]	@ zero_extendqisi2
 106 004a 002B     		cmp	r3, #0
 107 004c 40F08F80 		bne	.L111
 108              	.L44:
 109 0050 3146     		mov	r1, r6
 110 0052 2046     		mov	r0, r4
 111 0054 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 112 0058 6660     		str	r6, [r4, #4]	@ float
 113 005a 05B0     		add	sp, sp, #20
 114              		@ sp needed
ARM GAS  /tmp/ccAvRF8t.s 			page 3


 115 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 116              	.L20:
 117 0060 0025     		movs	r5, #0
 118 0062 4FF0000B 		mov	fp, #0
 119 0066 4FF07C5A 		mov	r10, #1056964608
 120 006a D0F81090 		ldr	r9, [r0, #16]	@ float
 121 006e D0F80C80 		ldr	r8, [r0, #12]	@ float
 122 0072 594E     		ldr	r6, .L116
 123              	.L43:
 124 0074 22FA0BF2 		lsr	r2, r2, fp
 125 0078 D307     		lsls	r3, r2, #31
 126 007a 30D5     		bpl	.L22
 127 007c F28E     		ldrh	r2, [r6, #54]	@ unaligned
 128 007e 5A45     		cmp	r2, fp
 129 0080 09D8     		bhi	.L23
 130 0082 ABF10402 		sub	r2, fp, #4
 131 0086 092A     		cmp	r2, #9
 132 0088 05D9     		bls	.L23
 133 008a 4FFA8BF1 		sxtb	r1, fp
 134 008e F068     		ldr	r0, [r6, #12]
 135 0090 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 136 0094 18B3     		cbz	r0, .L22
 137              	.L23:
 138 0096 BBF1030F 		cmp	fp, #3
 139 009a 30D9     		bls	.L112
 140 009c 0BF16001 		add	r1, fp, #96
 141              	.L55:
 142 00a0 0DF10F02 		add	r2, sp, #15
 143 00a4 F068     		ldr	r0, [r6, #12]
 144 00a6 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 145 00aa 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 146 00ae 0746     		mov	r7, r0
 147 00b0 1AB9     		cbnz	r2, .L24
 148 00b2 4A49     		ldr	r1, .L116+4
 149 00b4 FFF7FEFF 		bl	__aeabi_fcmplt
 150 00b8 50B3     		cbz	r0, .L113
 151              	.L24:
 152 00ba 4146     		mov	r1, r8
 153 00bc 4846     		mov	r0, r9
 154 00be FFF7FEFF 		bl	__aeabi_fcmple
 155 00c2 98B9     		cbnz	r0, .L106
 156 00c4 4FF07E57 		mov	r7, #1065353216
 157              	.L39:
 158 00c8 2946     		mov	r1, r5
 159 00ca 2846     		mov	r0, r5
 160 00cc FFF7FEFF 		bl	__aeabi_fcmpun
 161 00d0 28B9     		cbnz	r0, .L22
 162 00d2 2946     		mov	r1, r5
 163 00d4 3846     		mov	r0, r7
 164 00d6 FFF7FEFF 		bl	__aeabi_fcmplt
 165 00da 00B9     		cbnz	r0, .L22
 166 00dc 3D46     		mov	r5, r7
 167              	.L22:
 168 00de 0BF1010B 		add	fp, fp, #1
 169 00e2 BBF10E0F 		cmp	fp, #14
 170 00e6 92D0     		beq	.L21
 171 00e8 226A     		ldr	r2, [r4, #32]
ARM GAS  /tmp/ccAvRF8t.s 			page 4


 172 00ea C3E7     		b	.L43
 173              	.L106:
 174 00ec 2768     		ldr	r7, [r4]	@ float
 175 00ee 5146     		mov	r1, r10
 176 00f0 3846     		mov	r0, r7
 177 00f2 FFF7FEFF 		bl	__aeabi_fcmplt
 178 00f6 0028     		cmp	r0, #0
 179 00f8 E6D0     		beq	.L39
 180 00fa 5746     		mov	r7, r10
 181 00fc E4E7     		b	.L39
 182              	.L112:
 183 00fe 5946     		mov	r1, fp
 184 0100 F068     		ldr	r0, [r6, #12]
 185 0102 FFF7FEFF 		bl	_ZNK4Heat8IsTuningEj
 186 0106 0028     		cmp	r0, #0
 187 0108 3CD0     		beq	.L114
 188 010a 4FF07E55 		mov	r5, #1065353216
 189 010e E6E7     		b	.L22
 190              	.L113:
 191 0110 2369     		ldr	r3, [r4, #16]	@ float
 192 0112 3846     		mov	r0, r7
 193 0114 1946     		mov	r1, r3
 194 0116 0093     		str	r3, [sp]	@ float
 195 0118 FFF7FEFF 		bl	__aeabi_fcmpge
 196 011c 0028     		cmp	r0, #0
 197 011e CCD1     		bne	.L24
 198 0120 4146     		mov	r1, r8
 199 0122 4846     		mov	r0, r9
 200 0124 FFF7FEFF 		bl	__aeabi_fcmple
 201 0128 0028     		cmp	r0, #0
 202 012a 30D1     		bne	.L32
 203 012c E268     		ldr	r2, [r4, #12]	@ float
 204 012e 3846     		mov	r0, r7
 205 0130 1146     		mov	r1, r2
 206 0132 0192     		str	r2, [sp, #4]
 207 0134 FFF7FEFF 		bl	__aeabi_fcmpgt
 208 0138 48B3     		cbz	r0, .L32
 209 013a 019A     		ldr	r2, [sp, #4]
 210 013c 3846     		mov	r0, r7
 211 013e 1146     		mov	r1, r2
 212 0140 FFF7FEFF 		bl	__aeabi_fsub
 213 0144 019A     		ldr	r2, [sp, #4]
 214 0146 0746     		mov	r7, r0
 215 0148 1146     		mov	r1, r2
 216 014a 0098     		ldr	r0, [sp]	@ float
 217 014c FFF7FEFF 		bl	__aeabi_fsub
 218 0150 0146     		mov	r1, r0
 219 0152 3846     		mov	r0, r7
 220 0154 FFF7FEFF 		bl	__aeabi_fdiv
 221 0158 0746     		mov	r7, r0
 222 015a B5E7     		b	.L39
 223              	.L109:
 224 015c 0021     		movs	r1, #0
 225 015e 6068     		ldr	r0, [r4, #4]	@ float
 226 0160 2E46     		mov	r6, r5
 227 0162 FFF7FEFF 		bl	__aeabi_fcmpeq
 228 0166 0028     		cmp	r0, #0
ARM GAS  /tmp/ccAvRF8t.s 			page 5


 229 0168 3FF46DAF 		beq	.L47
 230 016c 63E7     		b	.L115
 231              	.L111:
 232 016e FFF7FEFF 		bl	millis
 233 0172 E369     		ldr	r3, [r4, #28]
 234 0174 A269     		ldr	r2, [r4, #24]
 235 0176 C01A     		subs	r0, r0, r3
 236 0178 9042     		cmp	r0, r2
 237 017a 05D3     		bcc	.L59
 238 017c 0023     		movs	r3, #0
 239 017e 84F82A30 		strb	r3, [r4, #42]
 240 0182 65E7     		b	.L44
 241              	.L114:
 242 0184 5946     		mov	r1, fp
 243 0186 8BE7     		b	.L55
 244              	.L59:
 245 0188 4FF07E56 		mov	r6, #1065353216
 246 018c 60E7     		b	.L44
 247              	.L32:
 248 018e 0021     		movs	r1, #0
 249 0190 6068     		ldr	r0, [r4, #4]	@ float
 250 0192 FFF7FEFF 		bl	__aeabi_fcmpeq
 251 0196 0028     		cmp	r0, #0
 252 0198 A1D1     		bne	.L22
 253 019a 4FF07E51 		mov	r1, #1065353216
 254 019e 3846     		mov	r0, r7
 255 01a0 FFF7FEFF 		bl	__aeabi_fadd
 256 01a4 E168     		ldr	r1, [r4, #12]	@ float
 257 01a6 FFF7FEFF 		bl	__aeabi_fcmpgt
 258 01aa 0028     		cmp	r0, #0
 259 01ac 97D0     		beq	.L22
 260 01ae 4146     		mov	r1, r8
 261 01b0 4846     		mov	r0, r9
 262 01b2 FFF7FEFF 		bl	__aeabi_fcmple
 263 01b6 0028     		cmp	r0, #0
 264 01b8 98D1     		bne	.L106
 265 01ba A768     		ldr	r7, [r4, #8]	@ float
 266 01bc 84E7     		b	.L39
 267              	.L110:
 268 01be A369     		ldr	r3, [r4, #24]
 269 01c0 002B     		cmp	r3, #0
 270 01c2 3FF440AF 		beq	.L47
 271 01c6 0123     		movs	r3, #1
 272 01c8 84F82A30 		strb	r3, [r4, #42]
 273 01cc FFF7FEFF 		bl	millis
 274 01d0 E061     		str	r0, [r4, #28]
 275 01d2 38E7     		b	.L47
 276              	.L91:
 277 01d4 2E46     		mov	r6, r5
 278 01d6 3BE7     		b	.L44
 279              	.L117:
 280              		.align	2
 281              	.L116:
 282 01d8 00000000 		.word	reprap
 283 01dc 000020C1 		.word	-1054867456
 284              		.size	_ZN3Fan7RefreshEv, .-_ZN3Fan7RefreshEv
 285              		.section	.text._ZN3Fan4InitEhb,"ax",%progbits
ARM GAS  /tmp/ccAvRF8t.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	_ZN3Fan4InitEhb
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu softvfp
 293              		.type	_ZN3Fan4InitEhb, %function
 294              	_ZN3Fan4InitEhb:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 298 0002 80F82610 		strb	r1, [r0, #38]
 299 0006 0024     		movs	r4, #0
 300 0008 6427     		movs	r7, #100
 301 000a FA26     		movs	r6, #250
 302 000c 0021     		movs	r1, #0
 303 000e DFF83CE0 		ldr	lr, .L120+8
 304 0012 0C4D     		ldr	r5, .L120
 305 0014 80F82920 		strb	r2, [r0, #41]
 306 0018 0B4A     		ldr	r2, .L120+4
 307 001a C0F808E0 		str	lr, [r0, #8]	@ float
 308 001e 8761     		str	r7, [r0, #24]
 309 0020 8684     		strh	r6, [r0, #36]	@ movhi
 310 0022 4561     		str	r5, [r0, #20]	@ float
 311 0024 80F82740 		strb	r4, [r0, #39]
 312 0028 80F82A40 		strb	r4, [r0, #42]
 313 002c 80F82840 		strb	r4, [r0, #40]
 314 0030 0462     		str	r4, [r0, #32]
 315 0032 4160     		str	r1, [r0, #4]	@ float
 316 0034 0160     		str	r1, [r0]	@ float
 317 0036 0261     		str	r2, [r0, #16]	@ float
 318 0038 C260     		str	r2, [r0, #12]	@ float
 319 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 320 003e FFF7FEBF 		b	_ZN3Fan7RefreshEv
 321              	.L121:
 322 0042 00BF     		.align	2
 323              	.L120:
 324 0044 000080BF 		.word	-1082130432
 325 0048 00003442 		.word	1110704128
 326 004c CDCCCC3D 		.word	1036831949
 327              		.size	_ZN3Fan4InitEhb, .-_ZN3Fan4InitEhb
 328              		.section	.text._ZN3Fan19SetHeatersMonitoredEm,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	_ZN3Fan19SetHeatersMonitoredEm
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu softvfp
 336              		.type	_ZN3Fan19SetHeatersMonitoredEm, %function
 337              	_ZN3Fan19SetHeatersMonitoredEm:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341 0000 0162     		str	r1, [r0, #32]
 342 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
ARM GAS  /tmp/ccAvRF8t.s 			page 7


 343              		.size	_ZN3Fan19SetHeatersMonitoredEm, .-_ZN3Fan19SetHeatersMonitoredEm
 344 0006 00BF     		.section	.text._ZN3Fan6SetPwmEf,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	_ZN3Fan6SetPwmEf
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu softvfp
 352              		.type	_ZN3Fan6SetPwmEf, %function
 353              	_ZN3Fan6SetPwmEf:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356 0000 38B5     		push	{r3, r4, r5, lr}
 357 0002 0C46     		mov	r4, r1
 358 0004 0546     		mov	r5, r0
 359 0006 4FF07E51 		mov	r1, #1065353216
 360 000a 2046     		mov	r0, r4
 361 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 362 0010 20B1     		cbz	r0, .L124
 363 0012 2046     		mov	r0, r4
 364 0014 1149     		ldr	r1, .L137
 365 0016 FFF7FEFF 		bl	__aeabi_fdiv
 366 001a 0446     		mov	r4, r0
 367              	.L124:
 368 001c 2146     		mov	r1, r4
 369 001e 2046     		mov	r0, r4
 370 0020 FFF7FEFF 		bl	__aeabi_fcmpun
 371 0024 38B9     		cbnz	r0, .L128
 372 0026 4FF07E51 		mov	r1, #1065353216
 373 002a 2046     		mov	r0, r4
 374 002c FFF7FEFF 		bl	__aeabi_fcmplt
 375 0030 38B9     		cbnz	r0, .L136
 376 0032 4FF07E54 		mov	r4, #1065353216
 377              	.L128:
 378 0036 2C60     		str	r4, [r5]	@ float
 379 0038 2846     		mov	r0, r5
 380 003a BDE83840 		pop	{r3, r4, r5, lr}
 381 003e FFF7FEBF 		b	_ZN3Fan7RefreshEv
 382              	.L136:
 383 0042 0021     		movs	r1, #0
 384 0044 2046     		mov	r0, r4
 385 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 386 004a 0028     		cmp	r0, #0
 387 004c F3D1     		bne	.L128
 388 004e 0024     		movs	r4, #0
 389 0050 2846     		mov	r0, r5
 390 0052 2C60     		str	r4, [r5]	@ float
 391 0054 BDE83840 		pop	{r3, r4, r5, lr}
 392 0058 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 393              	.L138:
 394              		.align	2
 395              	.L137:
 396 005c 00007F43 		.word	1132396544
 397              		.size	_ZN3Fan6SetPwmEf, .-_ZN3Fan6SetPwmEf
 398              		.global	__aeabi_fmul
 399              		.global	__aeabi_f2uiz
ARM GAS  /tmp/ccAvRF8t.s 			page 8


 400              		.global	__aeabi_f2d
 401              		.global	__aeabi_f2iz
 402              		.global	__aeabi_ui2f
 403              		.section	.text._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 404              		.align	1
 405              		.p2align 2,,3
 406              		.global	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 407              		.syntax unified
 408              		.thumb
 409              		.thumb_func
 410              		.fpu softvfp
 411              		.type	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, %function
 412              	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb:
 413              		@ args = 8, pretend = 0, frame = 64
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 416 0004 0446     		mov	r4, r0
 417 0006 90F82600 		ldrb	r0, [r0, #38]	@ zero_extendqisi2
 418 000a 97B0     		sub	sp, sp, #92
 419 000c FF28     		cmp	r0, #255
 420 000e 00F0A480 		beq	.L240
 421 0012 6A29     		cmp	r1, #106
 422 0014 04D0     		beq	.L142
 423              	.L169:
 424 0016 0025     		movs	r5, #0
 425              	.L221:
 426 0018 2846     		mov	r0, r5
 427 001a 17B0     		add	sp, sp, #92
 428              		@ sp needed
 429 001c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 430              	.L142:
 431 0020 4921     		movs	r1, #73
 432 0022 1846     		mov	r0, r3
 433 0024 1D46     		mov	r5, r3
 434 0026 1746     		mov	r7, r2
 435 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 436 002c 0646     		mov	r6, r0
 437 002e 0028     		cmp	r0, #0
 438 0030 40F04581 		bne	.L241
 439              	.L143:
 440 0034 4621     		movs	r1, #70
 441 0036 2846     		mov	r0, r5
 442 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 443 003c 8046     		mov	r8, r0
 444 003e 0028     		cmp	r0, #0
 445 0040 40F02A81 		bne	.L242
 446              	.L146:
 447 0044 5421     		movs	r1, #84
 448 0046 2846     		mov	r0, r5
 449 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 450 004c 8646     		mov	lr, r0
 451 004e 0028     		cmp	r0, #0
 452 0050 40F01681 		bne	.L243
 453              	.L147:
 454 0054 4221     		movs	r1, #66
 455 0056 2846     		mov	r0, r5
 456 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccAvRF8t.s 			page 9


 457 005c 8046     		mov	r8, r0
 458 005e 0028     		cmp	r0, #0
 459 0060 40F0F880 		bne	.L244
 460              	.L148:
 461 0064 4C21     		movs	r1, #76
 462 0066 2846     		mov	r0, r5
 463 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 464 006c 0028     		cmp	r0, #0
 465 006e 40F0D380 		bne	.L245
 466 0072 4821     		movs	r1, #72
 467 0074 2846     		mov	r0, r5
 468 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 469 007a 0028     		cmp	r0, #0
 470 007c 40F08180 		bne	.L156
 471 0080 002E     		cmp	r6, #0
 472 0082 40F0AA80 		bne	.L157
 473 0086 5221     		movs	r1, #82
 474 0088 2846     		mov	r0, r5
 475 008a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 476 008e 0028     		cmp	r0, #0
 477 0090 C1D1     		bne	.L169
 478 0092 2846     		mov	r0, r5
 479 0094 5321     		movs	r1, #83
 480 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 481 009a 0546     		mov	r5, r0
 482 009c 0028     		cmp	r0, #0
 483 009e BAD1     		bne	.L169
 484 00a0 2068     		ldr	r0, [r4]	@ float
 485 00a2 9949     		ldr	r1, .L249
 486 00a4 FFF7FEFF 		bl	__aeabi_fmul
 487 00a8 FFF7FEFF 		bl	__aeabi_f2iz
 488 00ac 9649     		ldr	r1, .L249
 489 00ae 8146     		mov	r9, r0
 490 00b0 A068     		ldr	r0, [r4, #8]	@ float
 491 00b2 FFF7FEFF 		bl	__aeabi_fmul
 492 00b6 FFF7FEFF 		bl	__aeabi_f2iz
 493 00ba 8046     		mov	r8, r0
 494 00bc A069     		ldr	r0, [r4, #24]
 495 00be FFF7FEFF 		bl	__aeabi_ui2f
 496 00c2 9249     		ldr	r1, .L249+4
 497 00c4 FFF7FEFF 		bl	__aeabi_fmul
 498 00c8 FFF7FEFF 		bl	__aeabi_f2d
 499 00cc 94F828E0 		ldrb	lr, [r4, #40]	@ zero_extendqisi2
 500 00d0 8F4B     		ldr	r3, .L249+8
 501 00d2 904A     		ldr	r2, .L249+12
 502 00d4 CDF80090 		str	r9, [sp]
 503 00d8 BEF1000F 		cmp	lr, #0
 504 00dc 0CBF     		ite	eq
 505 00de 9E46     		moveq	lr, r3
 506 00e0 9646     		movne	lr, r2
 507 00e2 A38C     		ldrh	r3, [r4, #36]
 508 00e4 3A46     		mov	r2, r7
 509 00e6 CDE90201 		strd	r0, [sp, #8]
 510 00ea CDF80480 		str	r8, [sp, #4]
 511 00ee CDF810E0 		str	lr, [sp, #16]
 512 00f2 8949     		ldr	r1, .L249+16
 513 00f4 1E98     		ldr	r0, [sp, #120]
ARM GAS  /tmp/ccAvRF8t.s 			page 10


 514 00f6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 515 00fa 236A     		ldr	r3, [r4, #32]
 516 00fc 002B     		cmp	r3, #0
 517 00fe 8AD0     		beq	.L169
 518 0100 E068     		ldr	r0, [r4, #12]	@ float
 519 0102 FFF7FEFF 		bl	__aeabi_f2d
 520 0106 8046     		mov	r8, r0
 521 0108 2069     		ldr	r0, [r4, #16]	@ float
 522 010a 8946     		mov	r9, r1
 523 010c FFF7FEFF 		bl	__aeabi_f2d
 524 0110 4246     		mov	r2, r8
 525 0112 CDE90001 		strd	r0, [sp]
 526 0116 4B46     		mov	r3, r9
 527 0118 8049     		ldr	r1, .L249+20
 528 011a 1E98     		ldr	r0, [sp, #120]
 529 011c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 530 0120 7F4F     		ldr	r7, .L249+24
 531              	.L173:
 532 0122 236A     		ldr	r3, [r4, #32]
 533 0124 F340     		lsrs	r3, r3, r6
 534 0126 DB07     		lsls	r3, r3, #31
 535 0128 08D5     		bpl	.L171
 536 012a 032E     		cmp	r6, #3
 537 012c 8CBF     		ite	hi
 538 012e 06F16002 		addhi	r2, r6, #96
 539 0132 3246     		movls	r2, r6
 540 0134 3946     		mov	r1, r7
 541 0136 1E98     		ldr	r0, [sp, #120]
 542 0138 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 543              	.L171:
 544 013c 0136     		adds	r6, r6, #1
 545 013e 0E2E     		cmp	r6, #14
 546 0140 EFD1     		bne	.L173
 547 0142 7149     		ldr	r1, .L249
 548 0144 6068     		ldr	r0, [r4, #4]	@ float
 549 0146 FFF7FEFF 		bl	__aeabi_fmul
 550 014a FFF7FEFF 		bl	__aeabi_f2iz
 551 014e 7549     		ldr	r1, .L249+28
 552 0150 0246     		mov	r2, r0
 553 0152 1E98     		ldr	r0, [sp, #120]
 554 0154 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 555 0158 5EE7     		b	.L221
 556              	.L240:
 557 015a 0125     		movs	r5, #1
 558 015c 7249     		ldr	r1, .L249+32
 559 015e 1E98     		ldr	r0, [sp, #120]
 560 0160 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 561 0164 1F9B     		ldr	r3, [sp, #124]
 562 0166 1D70     		strb	r5, [r3]
 563 0168 56E7     		b	.L221
 564              	.L176:
 565 016a 0021     		movs	r1, #0
 566 016c 3046     		mov	r0, r6
 567 016e FFF7FEFF 		bl	__aeabi_fcmpgt
 568 0172 00B9     		cbnz	r0, .L177
 569 0174 0026     		movs	r6, #0
 570              	.L177:
ARM GAS  /tmp/ccAvRF8t.s 			page 11


 571 0176 A660     		str	r6, [r4, #8]	@ float
 572 0178 4821     		movs	r1, #72
 573 017a 2846     		mov	r0, r5
 574 017c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 575 0180 58B3     		cbz	r0, .L157
 576              	.L156:
 577 0182 0E23     		movs	r3, #14
 578 0184 16AA     		add	r2, sp, #88
 579 0186 42F83C3D 		str	r3, [r2, #-60]!
 580 018a 08A9     		add	r1, sp, #32
 581 018c 0023     		movs	r3, #0
 582 018e 2846     		mov	r0, r5
 583 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 584 0194 0021     		movs	r1, #0
 585 0196 079B     		ldr	r3, [sp, #28]
 586 0198 2162     		str	r1, [r4, #32]
 587 019a F3B1     		cbz	r3, .L157
 588 019c 08AA     		add	r2, sp, #32
 589 019e 0127     		movs	r7, #1
 590 01a0 02EB830E 		add	lr, r2, r3, lsl #2
 591 01a4 03E0     		b	.L164
 592              	.L247:
 593 01a6 3143     		orrs	r1, r1, r6
 594 01a8 2162     		str	r1, [r4, #32]
 595              	.L163:
 596 01aa 9645     		cmp	lr, r2
 597 01ac 0FD0     		beq	.L246
 598              	.L164:
 599 01ae 52F8043B 		ldr	r3, [r2], #4
 600 01b2 032B     		cmp	r3, #3
 601 01b4 07FA03F6 		lsl	r6, r7, r3
 602 01b8 A3F16400 		sub	r0, r3, #100
 603 01bc F3D9     		bls	.L247
 604 01be 0928     		cmp	r0, #9
 605 01c0 F3D8     		bhi	.L163
 606 01c2 603B     		subs	r3, r3, #96
 607 01c4 07FA03F3 		lsl	r3, r7, r3
 608 01c8 1943     		orrs	r1, r1, r3
 609 01ca 2162     		str	r1, [r4, #32]
 610 01cc EDE7     		b	.L163
 611              	.L246:
 612 01ce 21B1     		cbz	r1, .L157
 613 01d0 4FF07E51 		mov	r1, #1065353216
 614 01d4 2046     		mov	r0, r4
 615 01d6 FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 616              	.L157:
 617 01da 5321     		movs	r1, #83
 618 01dc 2846     		mov	r0, r5
 619 01de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 620 01e2 90B1     		cbz	r0, .L168
 621 01e4 2846     		mov	r0, r5
 622 01e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 623 01ea 0146     		mov	r1, r0
 624 01ec 0546     		mov	r5, r0
 625 01ee FFF7FEFF 		bl	__aeabi_fcmpun
 626 01f2 30B9     		cbnz	r0, .L178
 627 01f4 4D49     		ldr	r1, .L249+36
ARM GAS  /tmp/ccAvRF8t.s 			page 12


 628 01f6 2846     		mov	r0, r5
 629 01f8 FFF7FEFF 		bl	__aeabi_fcmplt
 630 01fc 0028     		cmp	r0, #0
 631 01fe 7AD1     		bne	.L179
 632 0200 4A4D     		ldr	r5, .L249+36
 633              	.L178:
 634 0202 2946     		mov	r1, r5
 635 0204 2046     		mov	r0, r4
 636 0206 FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 637              	.L168:
 638 020a 0125     		movs	r5, #1
 639 020c 2046     		mov	r0, r4
 640 020e 84F82750 		strb	r5, [r4, #39]
 641 0212 FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 642 0216 FFE6     		b	.L221
 643              	.L245:
 644 0218 2846     		mov	r0, r5
 645 021a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 646 021e 4FF07E51 		mov	r1, #1065353216
 647 0222 0646     		mov	r6, r0
 648 0224 FFF7FEFF 		bl	__aeabi_fcmpgt
 649 0228 20B1     		cbz	r0, .L152
 650 022a 3046     		mov	r0, r6
 651 022c 3F49     		ldr	r1, .L249+36
 652 022e FFF7FEFF 		bl	__aeabi_fdiv
 653 0232 0646     		mov	r6, r0
 654              	.L152:
 655 0234 3146     		mov	r1, r6
 656 0236 3046     		mov	r0, r6
 657 0238 FFF7FEFF 		bl	__aeabi_fcmpun
 658 023c 0028     		cmp	r0, #0
 659 023e 9AD1     		bne	.L177
 660 0240 4FF07E51 		mov	r1, #1065353216
 661 0244 3046     		mov	r0, r6
 662 0246 FFF7FEFF 		bl	__aeabi_fcmplt
 663 024a 0028     		cmp	r0, #0
 664 024c 8DD1     		bne	.L176
 665 024e 4FF07E56 		mov	r6, #1065353216
 666 0252 90E7     		b	.L177
 667              	.L244:
 668 0254 2846     		mov	r0, r5
 669 0256 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 670 025a 0146     		mov	r1, r0
 671 025c 0646     		mov	r6, r0
 672 025e FFF7FEFF 		bl	__aeabi_fcmpun
 673 0262 20B9     		cbnz	r0, .L234
 674 0264 0021     		movs	r1, #0
 675 0266 3046     		mov	r0, r6
 676 0268 FFF7FEFF 		bl	__aeabi_fcmpgt
 677 026c 28B1     		cbz	r0, .L174
 678              	.L234:
 679 026e 3049     		ldr	r1, .L249+40
 680 0270 3046     		mov	r0, r6
 681 0272 FFF7FEFF 		bl	__aeabi_fmul
 682 0276 FFF7FEFF 		bl	__aeabi_f2uiz
 683              	.L174:
 684 027a 4646     		mov	r6, r8
ARM GAS  /tmp/ccAvRF8t.s 			page 13


 685 027c A061     		str	r0, [r4, #24]
 686 027e F1E6     		b	.L148
 687              	.L243:
 688 0280 0223     		movs	r3, #2
 689 0282 16AA     		add	r2, sp, #88
 690 0284 42F8383D 		str	r3, [r2, #-56]!
 691 0288 04F10C01 		add	r1, r4, #12
 692 028c 0123     		movs	r3, #1
 693 028e 2846     		mov	r0, r5
 694 0290 7646     		mov	r6, lr
 695 0292 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 696 0296 DDE6     		b	.L147
 697              	.L242:
 698 0298 2846     		mov	r0, r5
 699 029a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 700 029e 0128     		cmp	r0, #1
 701 02a0 B8BF     		it	lt
 702 02a2 0120     		movlt	r0, #1
 703 02a4 4FF6FF73 		movw	r3, #65535
 704 02a8 9842     		cmp	r0, r3
 705 02aa A8BF     		it	ge
 706 02ac 1846     		movge	r0, r3
 707 02ae 214B     		ldr	r3, .L249+44
 708 02b0 A084     		strh	r0, [r4, #36]	@ movhi
 709 02b2 6361     		str	r3, [r4, #20]	@ float
 710 02b4 2046     		mov	r0, r4
 711 02b6 4646     		mov	r6, r8
 712 02b8 FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 713 02bc C2E6     		b	.L146
 714              	.L241:
 715 02be 2846     		mov	r0, r5
 716 02c0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 717 02c4 0028     		cmp	r0, #0
 718 02c6 05DB     		blt	.L248
 719 02c8 CCBF     		ite	gt
 720 02ca 0123     		movgt	r3, #1
 721 02cc 0023     		movle	r3, #0
 722 02ce 84F82830 		strb	r3, [r4, #40]
 723 02d2 AFE6     		b	.L143
 724              	.L248:
 725 02d4 94F82630 		ldrb	r3, [r4, #38]	@ zero_extendqisi2
 726 02d8 FF2B     		cmp	r3, #255
 727 02da 08D0     		beq	.L145
 728 02dc 0022     		movs	r2, #0
 729 02de 154B     		ldr	r3, .L249+44
 730 02e0 84F82820 		strb	r2, [r4, #40]
 731 02e4 6361     		str	r3, [r4, #20]	@ float
 732 02e6 0021     		movs	r1, #0
 733 02e8 2046     		mov	r0, r4
 734 02ea FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 735              	.L145:
 736 02ee FF23     		movs	r3, #255
 737 02f0 84F82630 		strb	r3, [r4, #38]
 738 02f4 9EE6     		b	.L143
 739              	.L179:
 740 02f6 0021     		movs	r1, #0
 741 02f8 2846     		mov	r0, r5
ARM GAS  /tmp/ccAvRF8t.s 			page 14


 742 02fa FFF7FEFF 		bl	__aeabi_fcmpgt
 743 02fe 0028     		cmp	r0, #0
 744 0300 7FF47FAF 		bne	.L178
 745 0304 0025     		movs	r5, #0
 746 0306 7CE7     		b	.L178
 747              	.L250:
 748              		.align	2
 749              	.L249:
 750 0308 0000C842 		.word	1120403456
 751 030c 6F12833A 		.word	981668463
 752 0310 04000000 		.word	.LC1
 753 0314 00000000 		.word	.LC0
 754 0318 1C000000 		.word	.LC3
 755 031c 64000000 		.word	.LC4
 756 0320 88000000 		.word	.LC5
 757 0324 8C000000 		.word	.LC6
 758 0328 08000000 		.word	.LC2
 759 032c 00007F43 		.word	1132396544
 760 0330 00007A44 		.word	1148846080
 761 0334 000080BF 		.word	-1082130432
 762              		.size	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb, .-_ZN3Fan9ConfigureEjiR11GCodeBufferRK9Str
 763              		.section	.text._ZN3Fan5CheckEv,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	_ZN3Fan5CheckEv
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	_ZN3Fan5CheckEv, %function
 772              	_ZN3Fan5CheckEv:
 773              		@ args = 0, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775 0000 036A     		ldr	r3, [r0, #32]
 776 0002 13B9     		cbnz	r3, .L252
 777 0004 90F82A30 		ldrb	r3, [r0, #42]	@ zero_extendqisi2
 778 0008 63B1     		cbz	r3, .L263
 779              	.L252:
 780 000a 10B5     		push	{r4, lr}
 781 000c 0446     		mov	r4, r0
 782 000e FFF7FEFF 		bl	_ZN3Fan7RefreshEv
 783 0012 236A     		ldr	r3, [r4, #32]
 784 0014 23B1     		cbz	r3, .L253
 785 0016 6068     		ldr	r0, [r4, #4]	@ float
 786 0018 0021     		movs	r1, #0
 787 001a FFF7FEFF 		bl	__aeabi_fcmpeq
 788 001e 18B1     		cbz	r0, .L255
 789              	.L253:
 790 0020 0020     		movs	r0, #0
 791 0022 10BD     		pop	{r4, pc}
 792              	.L263:
 793 0024 0020     		movs	r0, #0
 794 0026 7047     		bx	lr
 795              	.L255:
 796 0028 0120     		movs	r0, #1
 797 002a 10BD     		pop	{r4, pc}
 798              		.size	_ZN3Fan5CheckEv, .-_ZN3Fan5CheckEv
ARM GAS  /tmp/ccAvRF8t.s 			page 15


 799              		.section	.text._ZN3Fan7DisableEv,"ax",%progbits
 800              		.align	1
 801              		.p2align 2,,3
 802              		.global	_ZN3Fan7DisableEv
 803              		.syntax unified
 804              		.thumb
 805              		.thumb_func
 806              		.fpu softvfp
 807              		.type	_ZN3Fan7DisableEv, %function
 808              	_ZN3Fan7DisableEv:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811 0000 90F82630 		ldrb	r3, [r0, #38]	@ zero_extendqisi2
 812 0004 10B5     		push	{r4, lr}
 813 0006 FF2B     		cmp	r3, #255
 814 0008 0446     		mov	r4, r0
 815 000a 07D0     		beq	.L266
 816 000c 0022     		movs	r2, #0
 817 000e 054B     		ldr	r3, .L271
 818 0010 80F82820 		strb	r2, [r0, #40]
 819 0014 4361     		str	r3, [r0, #20]	@ float
 820 0016 0021     		movs	r1, #0
 821 0018 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 822              	.L266:
 823 001c FF23     		movs	r3, #255
 824 001e 84F82630 		strb	r3, [r4, #38]
 825 0022 10BD     		pop	{r4, pc}
 826              	.L272:
 827              		.align	2
 828              	.L271:
 829 0024 000080BF 		.word	-1082130432
 830              		.size	_ZN3Fan7DisableEv, .-_ZN3Fan7DisableEv
 831              		.section	.text._ZNK3Fan13WriteSettingsEP9FileStorej,"ax",%progbits
 832              		.align	1
 833              		.p2align 2,,3
 834              		.global	_ZNK3Fan13WriteSettingsEP9FileStorej
 835              		.syntax unified
 836              		.thumb
 837              		.thumb_func
 838              		.fpu softvfp
 839              		.type	_ZNK3Fan13WriteSettingsEP9FileStorej, %function
 840              	_ZNK3Fan13WriteSettingsEP9FileStorej:
 841              		@ args = 0, pretend = 0, frame = 64
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843 0000 036A     		ldr	r3, [r0, #32]
 844 0002 0BB1     		cbz	r3, .L280
 845 0004 0120     		movs	r0, #1
 846 0006 7047     		bx	lr
 847              	.L280:
 848 0008 30B5     		push	{r4, r5, lr}
 849 000a 1546     		mov	r5, r2
 850 000c 3222     		movs	r2, #50
 851 000e 93B0     		sub	sp, sp, #76
 852 0010 05AB     		add	r3, sp, #20
 853 0012 0068     		ldr	r0, [r0]	@ float
 854 0014 0393     		str	r3, [sp, #12]
 855 0016 0C46     		mov	r4, r1
ARM GAS  /tmp/ccAvRF8t.s 			page 16


 856 0018 0492     		str	r2, [sp, #16]
 857 001a FFF7FEFF 		bl	__aeabi_f2d
 858 001e 2A46     		mov	r2, r5
 859 0020 CDE90001 		strd	r0, [sp]
 860 0024 03A8     		add	r0, sp, #12
 861 0026 0449     		ldr	r1, .L281
 862 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 863 002c 2046     		mov	r0, r4
 864 002e 0399     		ldr	r1, [sp, #12]
 865 0030 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 866 0034 13B0     		add	sp, sp, #76
 867              		@ sp needed
 868 0036 30BD     		pop	{r4, r5, pc}
 869              	.L282:
 870              		.align	2
 871              	.L281:
 872 0038 00000000 		.word	.LC7
 873              		.size	_ZNK3Fan13WriteSettingsEP9FileStorej, .-_ZNK3Fan13WriteSettingsEP9FileStorej
 874              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 875              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 876              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 877              	_ZL28cpu_irq_prev_interrupt_state:
 878 0000 00       		.space	1
 879              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 880              		.align	2
 881              		.type	_ZL32cpu_irq_critical_section_counter, %object
 882              		.size	_ZL32cpu_irq_critical_section_counter, 4
 883              	_ZL32cpu_irq_critical_section_counter:
 884 0000 00000000 		.space	4
 885              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 886              		.align	2
 887              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 888              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 889              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 890 0000 00000000 		.space	4
 891              		.section	.rodata._ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,1
 892              		.align	2
 893              	.LC0:
 894 0000 79657300 		.ascii	"yes\000"
 895              	.LC1:
 896 0004 6E6F00   		.ascii	"no\000"
 897 0007 00       		.space	1
 898              	.LC2:
 899 0008 46616E20 		.ascii	"Fan %d is disabled\000"
 899      25642069 
 899      73206469 
 899      7361626C 
 899      656400
 900 001b 00       		.space	1
 901              	.LC3:
 902 001c 46616E25 		.ascii	"Fan%i frequency: %uHz, speed: %d%%, min: %d%%, blip"
 902      69206672 
 902      65717565 
 902      6E63793A 
 902      20257548 
 903 004f 3A20252E 		.ascii	": %.2f, inverted: %s\000"
 903      32662C20 
ARM GAS  /tmp/ccAvRF8t.s 			page 17


 903      696E7665 
 903      72746564 
 903      3A202573 
 904              	.LC4:
 905 0064 2C207465 		.ascii	", temperature: %.1f:%.1fC, heaters:\000"
 905      6D706572 
 905      61747572 
 905      653A2025 
 905      2E31663A 
 906              	.LC5:
 907 0088 20257500 		.ascii	" %u\000"
 908              	.LC6:
 909 008c 2C206375 		.ascii	", current speed: %d%%:\000"
 909      7272656E 
 909      74207370 
 909      6565643A 
 909      20256425 
 910              		.section	.rodata._ZNK3Fan13WriteSettingsEP9FileStorej.str1.4,"aMS",%progbits,1
 911              		.align	2
 912              	.LC7:
 913 0000 4D313036 		.ascii	"M106 P%u S%.2f\012\000"
 913      20502575 
 913      2053252E 
 913      32660A00 
 914              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
