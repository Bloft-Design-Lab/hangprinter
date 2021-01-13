ARM GAS  /tmp/ccvIQ3sj.s 			page 1


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
  11              		.file	"FOPDT.cpp"
  12              		.section	.text._ZN5FopDtC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN5FopDtC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN5FopDtC2Ev, %function
  21              	_ZN5FopDtC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 F0B4     		push	{r4, r5, r6, r7}
  26 0002 0A4C     		ldr	r4, .L3
  27 0004 0022     		movs	r2, #0
  28 0006 4FF07E55 		mov	r5, #1065353216
  29 000a 0121     		movs	r1, #1
  30 000c 0460     		str	r4, [r0]	@ float
  31 000e 0024     		movs	r4, #0
  32 0010 074F     		ldr	r7, .L3+4
  33 0012 084E     		ldr	r6, .L3+8
  34 0014 4760     		str	r7, [r0, #4]	@ float
  35 0016 8660     		str	r6, [r0, #8]	@ float
  36 0018 C560     		str	r5, [r0, #12]	@ float
  37 001a 0461     		str	r4, [r0, #16]	@ float
  38 001c C175     		strb	r1, [r0, #23]
  39 001e 8282     		strh	r2, [r0, #20]	@ movhi
  40 0020 8275     		strb	r2, [r0, #22]
  41 0022 0276     		strb	r2, [r0, #24]
  42 0024 4276     		strb	r2, [r0, #25]
  43 0026 F0BC     		pop	{r4, r5, r6, r7}
  44 0028 7047     		bx	lr
  45              	.L4:
  46 002a 00BF     		.align	2
  47              	.L3:
  48 002c 0000AA43 		.word	1135214592
  49 0030 00000C43 		.word	1124859904
  50 0034 0000B040 		.word	1085276160
  51              		.size	_ZN5FopDtC2Ev, .-_ZN5FopDtC2Ev
  52              		.global	_ZN5FopDtC1Ev
  53              		.thumb_set _ZN5FopDtC1Ev,_ZN5FopDtC2Ev
  54              		.global	__aeabi_fmul
  55              		.section	.text._ZNK5FopDt20GetM301PidParametersEb,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  /tmp/ccvIQ3sj.s 			page 2


  58              		.global	_ZNK5FopDt20GetM301PidParametersEb
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu softvfp
  63              		.type	_ZNK5FopDt20GetM301PidParametersEb, %function
  64              	_ZNK5FopDt20GetM301PidParametersEb:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 70B5     		push	{r4, r5, r6, lr}
  68 0002 0546     		mov	r5, r0
  69 0004 9AB9     		cbnz	r2, .L10
  70 0006 01F11C04 		add	r4, r1, #28
  71              	.L7:
  72 000a 0A49     		ldr	r1, .L11
  73 000c 2068     		ldr	r0, [r4]	@ float
  74 000e FFF7FEFF 		bl	__aeabi_fmul
  75 0012 0646     		mov	r6, r0
  76 0014 6068     		ldr	r0, [r4, #4]	@ float
  77 0016 3146     		mov	r1, r6
  78 0018 2E60     		str	r6, [r5]	@ float
  79 001a FFF7FEFF 		bl	__aeabi_fmul
  80 001e 3146     		mov	r1, r6
  81 0020 6860     		str	r0, [r5, #4]	@ float
  82 0022 A068     		ldr	r0, [r4, #8]	@ float
  83 0024 FFF7FEFF 		bl	__aeabi_fmul
  84 0028 A860     		str	r0, [r5, #8]	@ float
  85 002a 2846     		mov	r0, r5
  86 002c 70BD     		pop	{r4, r5, r6, pc}
  87              	.L10:
  88 002e 01F12804 		add	r4, r1, #40
  89 0032 EAE7     		b	.L7
  90              	.L12:
  91              		.align	2
  92              	.L11:
  93 0034 00007F43 		.word	1132396544
  94              		.size	_ZNK5FopDt20GetM301PidParametersEb, .-_ZNK5FopDt20GetM301PidParametersEb
  95              		.global	__aeabi_fdiv
  96              		.section	.text._ZN5FopDt20SetM301PidParametersERK17M301PidParameters,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu softvfp
 104              		.type	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, %function
 105              	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109 0002 0E68     		ldr	r6, [r1]	@ float
 110 0004 0446     		mov	r4, r0
 111 0006 0D46     		mov	r5, r1
 112 0008 3046     		mov	r0, r6
 113 000a 0A49     		ldr	r1, .L15
 114 000c FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccvIQ3sj.s 			page 3


 115 0010 3146     		mov	r1, r6
 116 0012 E061     		str	r0, [r4, #28]	@ float
 117 0014 A062     		str	r0, [r4, #40]	@ float
 118 0016 6868     		ldr	r0, [r5, #4]	@ float
 119 0018 FFF7FEFF 		bl	__aeabi_fdiv
 120 001c 3146     		mov	r1, r6
 121 001e 2062     		str	r0, [r4, #32]	@ float
 122 0020 E062     		str	r0, [r4, #44]	@ float
 123 0022 A868     		ldr	r0, [r5, #8]	@ float
 124 0024 FFF7FEFF 		bl	__aeabi_fdiv
 125 0028 0123     		movs	r3, #1
 126 002a 6062     		str	r0, [r4, #36]	@ float
 127 002c 2063     		str	r0, [r4, #48]	@ float
 128 002e 6376     		strb	r3, [r4, #25]
 129 0030 70BD     		pop	{r4, r5, r6, pc}
 130              	.L16:
 131 0032 00BF     		.align	2
 132              	.L15:
 133 0034 8180803B 		.word	998277249
 134              		.size	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, .-_ZN5FopDt20SetM301PidParametersERK1
 135              		.section	.text._ZN5FopDt16CalcPidConstantsEv,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN5FopDt16CalcPidConstantsEv
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu softvfp
 143              		.type	_ZN5FopDt16CalcPidConstantsEv, %function
 144              	_ZN5FopDt16CalcPidConstantsEv:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 70B5     		push	{r4, r5, r6, lr}
 148 0002 4568     		ldr	r5, [r0, #4]	@ float
 149 0004 0446     		mov	r4, r0
 150 0006 2946     		mov	r1, r5
 151 0008 8068     		ldr	r0, [r0, #8]	@ float
 152 000a FFF7FEFF 		bl	__aeabi_fdiv
 153 000e 2168     		ldr	r1, [r4]	@ float
 154 0010 0646     		mov	r6, r0
 155 0012 FFF7FEFF 		bl	__aeabi_fmul
 156 0016 0146     		mov	r1, r0
 157 0018 2148     		ldr	r0, .L19
 158 001a FFF7FEFF 		bl	__aeabi_fdiv
 159 001e 4FF07A51 		mov	r1, #1048576000
 160 0022 A062     		str	r0, [r4, #40]	@ float
 161 0024 2846     		mov	r0, r5
 162 0026 FFF7FEFF 		bl	powf
 163 002a 4FF07D51 		mov	r1, #1061158912
 164 002e 0546     		mov	r5, r0
 165 0030 A068     		ldr	r0, [r4, #8]	@ float
 166 0032 FFF7FEFF 		bl	powf
 167 0036 0146     		mov	r1, r0
 168 0038 2846     		mov	r0, r5
 169 003a FFF7FEFF 		bl	__aeabi_fmul
 170 003e 0146     		mov	r1, r0
 171 0040 1848     		ldr	r0, .L19+4
ARM GAS  /tmp/ccvIQ3sj.s 			page 4


 172 0042 FFF7FEFF 		bl	__aeabi_fdiv
 173 0046 1649     		ldr	r1, .L19
 174 0048 E062     		str	r0, [r4, #44]	@ float
 175 004a A068     		ldr	r0, [r4, #8]	@ float
 176 004c FFF7FEFF 		bl	__aeabi_fmul
 177 0050 2168     		ldr	r1, [r4]	@ float
 178 0052 2063     		str	r0, [r4, #48]	@ float
 179 0054 3046     		mov	r0, r6
 180 0056 FFF7FEFF 		bl	__aeabi_fmul
 181 005a 0146     		mov	r1, r0
 182 005c 1048     		ldr	r0, .L19
 183 005e FFF7FEFF 		bl	__aeabi_fdiv
 184 0062 4FF07C55 		mov	r5, #1056964608
 185 0066 E061     		str	r0, [r4, #28]	@ float
 186 0068 2946     		mov	r1, r5
 187 006a 6068     		ldr	r0, [r4, #4]	@ float
 188 006c FFF7FEFF 		bl	powf
 189 0070 2946     		mov	r1, r5
 190 0072 0646     		mov	r6, r0
 191 0074 A068     		ldr	r0, [r4, #8]	@ float
 192 0076 FFF7FEFF 		bl	powf
 193 007a 0146     		mov	r1, r0
 194 007c 3046     		mov	r0, r6
 195 007e FFF7FEFF 		bl	__aeabi_fmul
 196 0082 0146     		mov	r1, r0
 197 0084 4FF07E50 		mov	r0, #1065353216
 198 0088 FFF7FEFF 		bl	__aeabi_fdiv
 199 008c 0449     		ldr	r1, .L19
 200 008e 2062     		str	r0, [r4, #32]	@ float
 201 0090 A068     		ldr	r0, [r4, #8]	@ float
 202 0092 FFF7FEFF 		bl	__aeabi_fmul
 203 0096 0023     		movs	r3, #0
 204 0098 6062     		str	r0, [r4, #36]	@ float
 205 009a 6376     		strb	r3, [r4, #25]
 206 009c 70BD     		pop	{r4, r5, r6, pc}
 207              	.L20:
 208 009e 00BF     		.align	2
 209              	.L19:
 210 00a0 3333333F 		.word	1060320051
 211 00a4 B88F603F 		.word	1063292856
 212              		.size	_ZN5FopDt16CalcPidConstantsEv, .-_ZN5FopDt16CalcPidConstantsEv
 213              		.global	__aeabi_fcmpeq
 214              		.global	__aeabi_fadd
 215              		.global	__aeabi_fcmplt
 216              		.global	__aeabi_fcmpgt
 217              		.global	__aeabi_fcmple
 218              		.global	__aeabi_fcmpge
 219              		.section	.text._ZN5FopDt13SetParametersEffffffbbt,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	_ZN5FopDt13SetParametersEffffffbbt
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu softvfp
 227              		.type	_ZN5FopDt13SetParametersEffffffbbt, %function
 228              	_ZN5FopDt13SetParametersEffffffbbt:
ARM GAS  /tmp/ccvIQ3sj.s 			page 5


 229              		@ args = 24, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 232 0004 0C46     		mov	r4, r1
 233 0006 0746     		mov	r7, r0
 234 0008 3549     		ldr	r1, .L65
 235 000a 2046     		mov	r0, r4
 236 000c 1646     		mov	r6, r2
 237 000e 1D46     		mov	r5, r3
 238 0010 9DF834A0 		ldrb	r10, [sp, #52]	@ zero_extendqisi2
 239 0014 9DF83890 		ldrb	r9, [sp, #56]	@ zero_extendqisi2
 240 0018 BDF83C80 		ldrh	r8, [sp, #60]
 241 001c FFF7FEFF 		bl	__aeabi_fcmpeq
 242 0020 60B1     		cbz	r0, .L53
 243 0022 3046     		mov	r0, r6
 244 0024 2E49     		ldr	r1, .L65
 245 0026 FFF7FEFF 		bl	__aeabi_fcmpeq
 246 002a 28B1     		cbz	r0, .L24
 247 002c 2846     		mov	r0, r5
 248 002e 2C49     		ldr	r1, .L65
 249 0030 FFF7FEFF 		bl	__aeabi_fcmpeq
 250 0034 0028     		cmp	r0, #0
 251 0036 4DD1     		bne	.L63
 252              	.L24:
 253 0038 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 254              	.L53:
 255 003c 2949     		ldr	r1, .L65+4
 256 003e 0B98     		ldr	r0, [sp, #44]	@ float
 257 0040 FFF7FEFF 		bl	__aeabi_fadd
 258 0044 2849     		ldr	r1, .L65+8
 259 0046 8346     		mov	fp, r0
 260 0048 FFF7FEFF 		bl	__aeabi_fcmplt
 261 004c 0028     		cmp	r0, #0
 262 004e 3ED1     		bne	.L64
 263              	.L27:
 264 0050 2649     		ldr	r1, .L65+12
 265 0052 2046     		mov	r0, r4
 266 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 267 0058 0028     		cmp	r0, #0
 268 005a EDD0     		beq	.L24
 269 005c 5946     		mov	r1, fp
 270 005e 2046     		mov	r0, r4
 271 0060 FFF7FEFF 		bl	__aeabi_fcmple
 272 0064 0028     		cmp	r0, #0
 273 0066 E7D0     		beq	.L24
 274 0068 2149     		ldr	r1, .L65+16
 275 006a 2846     		mov	r0, r5
 276 006c FFF7FEFF 		bl	__aeabi_fcmpgt
 277 0070 0028     		cmp	r0, #0
 278 0072 E1D0     		beq	.L24
 279 0074 2946     		mov	r1, r5
 280 0076 2846     		mov	r0, r5
 281 0078 FFF7FEFF 		bl	__aeabi_fadd
 282 007c 0146     		mov	r1, r0
 283 007e 3046     		mov	r0, r6
 284 0080 FFF7FEFF 		bl	__aeabi_fcmpge
 285 0084 0028     		cmp	r0, #0
ARM GAS  /tmp/ccvIQ3sj.s 			page 6


 286 0086 D7D0     		beq	.L24
 287 0088 1A49     		ldr	r1, .L65+20
 288 008a 0A98     		ldr	r0, [sp, #40]	@ float
 289 008c FFF7FEFF 		bl	__aeabi_fcmpgt
 290 0090 0028     		cmp	r0, #0
 291 0092 D1D0     		beq	.L24
 292 0094 4FF07E51 		mov	r1, #1065353216
 293 0098 0A98     		ldr	r0, [sp, #40]	@ float
 294 009a FFF7FEFF 		bl	__aeabi_fcmple
 295 009e 0028     		cmp	r0, #0
 296 00a0 CAD0     		beq	.L24
 297 00a2 4FF0010B 		mov	fp, #1
 298 00a6 0A9B     		ldr	r3, [sp, #40]	@ float
 299 00a8 3846     		mov	r0, r7
 300 00aa FB60     		str	r3, [r7, #12]	@ float
 301 00ac 0C9B     		ldr	r3, [sp, #48]	@ float
 302 00ae 3C60     		str	r4, [r7]	@ float
 303 00b0 7E60     		str	r6, [r7, #4]	@ float
 304 00b2 BD60     		str	r5, [r7, #8]	@ float
 305 00b4 3B61     		str	r3, [r7, #16]	@ float
 306 00b6 87F817A0 		strb	r10, [r7, #23]
 307 00ba 87F81890 		strb	r9, [r7, #24]
 308 00be A7F81480 		strh	r8, [r7, #20]	@ movhi
 309 00c2 87F816B0 		strb	fp, [r7, #22]
 310 00c6 FFF7FEFF 		bl	_ZN5FopDt16CalcPidConstantsEv
 311 00ca 5846     		mov	r0, fp
 312 00cc B4E7     		b	.L24
 313              	.L64:
 314 00ce DFF818B0 		ldr	fp, .L65+8
 315 00d2 BDE7     		b	.L27
 316              	.L63:
 317 00d4 0023     		movs	r3, #0
 318 00d6 0120     		movs	r0, #1
 319 00d8 BB75     		strb	r3, [r7, #22]
 320 00da BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 321              	.L66:
 322 00de 00BF     		.align	2
 323              	.L65:
 324 00e0 000080BF 		.word	-1082130432
 325 00e4 0000FA43 		.word	1140457472
 326 00e8 0080BB44 		.word	1153138688
 327 00ec 00002041 		.word	1092616192
 328 00f0 83C0CA3D 		.word	1036697731
 329 00f4 9C33223C 		.word	1008874396
 330              		.size	_ZN5FopDt13SetParametersEffffffbbt, .-_ZN5FopDt13SetParametersEffffffbbt
 331              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 332              		.align	1
 333              		.p2align 2,,3
 334              		.weak	_ZN6StringILj220EE6printfEPKcz
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu softvfp
 339              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 340              	_ZN6StringILj220EE6printfEPKcz:
 341              		@ args = 4, pretend = 12, frame = 16
 342              		@ frame_needed = 0, uses_anonymous_args = 1
ARM GAS  /tmp/ccvIQ3sj.s 			page 7


 343 0000 0EB4     		push	{r1, r2, r3}
 344 0002 10B5     		push	{r4, lr}
 345 0004 DD24     		movs	r4, #221
 346 0006 85B0     		sub	sp, sp, #20
 347 0008 07AB     		add	r3, sp, #28
 348 000a 53F8041B 		ldr	r1, [r3], #4
 349 000e 0290     		str	r0, [sp, #8]
 350 0010 1A46     		mov	r2, r3
 351 0012 02A8     		add	r0, sp, #8
 352 0014 0193     		str	r3, [sp, #4]
 353 0016 0394     		str	r4, [sp, #12]
 354 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 355 001c 05B0     		add	sp, sp, #20
 356              		@ sp needed
 357 001e BDE81040 		pop	{r4, lr}
 358 0022 03B0     		add	sp, sp, #12
 359 0024 7047     		bx	lr
 360              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 361              		.global	__aeabi_f2d
 362 0026 00BF     		.section	.text._ZNK5FopDt15WriteParametersEP9FileStorej,"ax",%progbits
 363              		.align	1
 364              		.p2align 2,,3
 365              		.global	_ZNK5FopDt15WriteParametersEP9FileStorej
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu softvfp
 370              		.type	_ZNK5FopDt15WriteParametersEP9FileStorej, %function
 371              	_ZNK5FopDt15WriteParametersEP9FileStorej:
 372              		@ args = 0, pretend = 0, frame = 224
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 375 0004 4FF0000E 		mov	lr, #0
 376 0008 C37D     		ldrb	r3, [r0, #23]	@ zero_extendqisi2
 377 000a C4B0     		sub	sp, sp, #272
 378 000c 83F00103 		eor	r3, r3, #1
 379 0010 0446     		mov	r4, r0
 380 0012 44AD     		add	r5, sp, #272
 381 0014 0069     		ldr	r0, [r0, #16]	@ float
 382 0016 1746     		mov	r7, r2
 383 0018 0A93     		str	r3, [sp, #40]
 384 001a 0E46     		mov	r6, r1
 385 001c 05F8E0ED 		strb	lr, [r5, #-224]!
 386 0020 FFF7FEFF 		bl	__aeabi_f2d
 387 0024 CDE90801 		strd	r0, [sp, #32]
 388 0028 E068     		ldr	r0, [r4, #12]	@ float
 389 002a FFF7FEFF 		bl	__aeabi_f2d
 390 002e CDE90601 		strd	r0, [sp, #24]
 391 0032 A068     		ldr	r0, [r4, #8]	@ float
 392 0034 FFF7FEFF 		bl	__aeabi_f2d
 393 0038 CDE90401 		strd	r0, [sp, #16]
 394 003c 6068     		ldr	r0, [r4, #4]	@ float
 395 003e FFF7FEFF 		bl	__aeabi_f2d
 396 0042 CDE90201 		strd	r0, [sp, #8]
 397 0046 2068     		ldr	r0, [r4]	@ float
 398 0048 FFF7FEFF 		bl	__aeabi_f2d
 399 004c 3A46     		mov	r2, r7
ARM GAS  /tmp/ccvIQ3sj.s 			page 8


 400 004e CDE90001 		strd	r0, [sp]
 401 0052 1949     		ldr	r1, .L79
 402 0054 2846     		mov	r0, r5
 403 0056 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 404 005a 2946     		mov	r1, r5
 405 005c 3046     		mov	r0, r6
 406 005e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 407 0062 08B1     		cbz	r0, .L70
 408 0064 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 409 0066 13B9     		cbnz	r3, .L78
 410              	.L70:
 411 0068 44B0     		add	sp, sp, #272
 412              		@ sp needed
 413 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 414              	.L78:
 415 006e E069     		ldr	r0, [r4, #28]	@ float
 416 0070 1249     		ldr	r1, .L79+4
 417 0072 FFF7FEFF 		bl	__aeabi_fmul
 418 0076 616A     		ldr	r1, [r4, #36]	@ float
 419 0078 8046     		mov	r8, r0
 420 007a FFF7FEFF 		bl	__aeabi_fmul
 421 007e FFF7FEFF 		bl	__aeabi_f2d
 422 0082 CDE90401 		strd	r0, [sp, #16]
 423 0086 4046     		mov	r0, r8
 424 0088 216A     		ldr	r1, [r4, #32]	@ float
 425 008a FFF7FEFF 		bl	__aeabi_fmul
 426 008e FFF7FEFF 		bl	__aeabi_f2d
 427 0092 CDE90201 		strd	r0, [sp, #8]
 428 0096 4046     		mov	r0, r8
 429 0098 FFF7FEFF 		bl	__aeabi_f2d
 430 009c 3A46     		mov	r2, r7
 431 009e CDE90001 		strd	r0, [sp]
 432 00a2 0749     		ldr	r1, .L79+8
 433 00a4 2846     		mov	r0, r5
 434 00a6 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 435 00aa 2946     		mov	r1, r5
 436 00ac 3046     		mov	r0, r6
 437 00ae FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 438 00b2 44B0     		add	sp, sp, #272
 439              		@ sp needed
 440 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 441              	.L80:
 442              		.align	2
 443              	.L79:
 444 00b8 00000000 		.word	.LC0
 445 00bc 00007F43 		.word	1132396544
 446 00c0 2C000000 		.word	.LC1
 447              		.size	_ZNK5FopDt15WriteParametersEP9FileStorej, .-_ZNK5FopDt15WriteParametersEP9FileStorej
 448              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 449              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 450              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 451              	_ZL28cpu_irq_prev_interrupt_state:
 452 0000 00       		.space	1
 453              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 454              		.align	2
 455              		.type	_ZL32cpu_irq_critical_section_counter, %object
 456              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccvIQ3sj.s 			page 9


 457              	_ZL32cpu_irq_critical_section_counter:
 458 0000 00000000 		.space	4
 459              		.section	.rodata._ZNK5FopDt15WriteParametersEP9FileStorej.str1.4,"aMS",%progbits,1
 460              		.align	2
 461              	.LC0:
 462 0000 4D333037 		.ascii	"M307 H%u A%.1f C%.1f D%.1f S%.2f V%.1f B%d\012\000"
 462      20482575 
 462      2041252E 
 462      31662043 
 462      252E3166 
 463              	.LC1:
 464 002c 4D333031 		.ascii	"M301 H%u P%.1f I%.3f D%.1f\012\000"
 464      20482575 
 464      2050252E 
 464      31662049 
 464      252E3366 
 465              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
