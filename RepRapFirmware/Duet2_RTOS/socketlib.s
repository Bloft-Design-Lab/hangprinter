ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 1


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
  13              		.file	"socketlib.cpp"
  14              		.text
  15              		.section	.text._Z9IsSendingh,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z9IsSendingh
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z9IsSendingh, %function
  24              	_Z9IsSendingh:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 034B     		ldr	r3, .L3
  29 0002 1B88     		ldrh	r3, [r3]
  30 0004 23FA00F0 		lsr	r0, r3, r0
  31 0008 00F00100 		and	r0, r0, #1
  32 000c 7047     		bx	lr
  33              	.L4:
  34 000e 00BF     		.align	2
  35              	.L3:
  36 0010 00000000 		.word	.LANCHOR0
  37              		.size	_Z9IsSendingh, .-_Z9IsSendingh
  38              		.section	.text._Z11ExecCommandhh,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	_Z11ExecCommandhh
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	_Z11ExecCommandhh, %function
  47              	_Z11ExecCommandhh:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 4001     		lsls	r0, r0, #5
  51 0002 10B5     		push	{r4, lr}
  52 0004 00F58474 		add	r4, r0, #264
  53 0008 2046     		mov	r0, r4
  54 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  55              	.L6:
  56 000e 2046     		mov	r0, r4
  57 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 2


  58 0014 0028     		cmp	r0, #0
  59 0016 FAD1     		bne	.L6
  60 0018 10BD     		pop	{r4, pc}
  61              		.size	_Z11ExecCommandhh, .-_Z11ExecCommandhh
  62 001a 00BF     		.section	.text._Z5closeh,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	_Z5closeh
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_Z5closeh, %function
  71              	_Z5closeh:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74 0000 70B5     		push	{r4, r5, r6, lr}
  75 0002 0646     		mov	r6, r0
  76 0004 0124     		movs	r4, #1
  77 0006 04EB8605 		add	r5, r4, r6, lsl #2
  78 000a 1021     		movs	r1, #16
  79 000c ED00     		lsls	r5, r5, #3
  80 000e FFF7FEFF 		bl	_Z11ExecCommandhh
  81 0012 05F50070 		add	r0, r5, #512
  82 0016 1F21     		movs	r1, #31
  83 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  84 001c 0C48     		ldr	r0, .L13
  85 001e 0D49     		ldr	r1, .L13+4
  86 0020 0D4A     		ldr	r2, .L13+8
  87 0022 0023     		movs	r3, #0
  88 0024 20F81630 		strh	r3, [r0, r6, lsl #1]	@ movhi
  89 0028 0C48     		ldr	r0, .L13+12
  90 002a B440     		lsls	r4, r4, r6
  91 002c 8355     		strb	r3, [r0, r6]
  92 002e E443     		mvns	r4, r4
  93 0030 0B88     		ldrh	r3, [r1]
  94 0032 1088     		ldrh	r0, [r2]
  95 0034 24B2     		sxth	r4, r4
  96 0036 2340     		ands	r3, r3, r4
  97 0038 0440     		ands	r4, r4, r0
  98 003a 05F54075 		add	r5, r5, #768
  99 003e 0B80     		strh	r3, [r1]	@ movhi
 100 0040 1480     		strh	r4, [r2]	@ movhi
 101              	.L10:
 102 0042 2846     		mov	r0, r5
 103 0044 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 104 0048 0028     		cmp	r0, #0
 105 004a FAD1     		bne	.L10
 106 004c 0120     		movs	r0, #1
 107 004e 70BD     		pop	{r4, r5, r6, pc}
 108              	.L14:
 109              		.align	2
 110              	.L13:
 111 0050 00000000 		.word	.LANCHOR2
 112 0054 00000000 		.word	.LANCHOR1
 113 0058 00000000 		.word	.LANCHOR0
 114 005c 00000000 		.word	.LANCHOR3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 3


 115              		.size	_Z5closeh, .-_Z5closeh
 116              		.section	.text._Z6sockethhth,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	_Z6sockethhth
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	_Z6sockethhth, %function
 125              	_Z6sockethhth:
 126              		@ args = 0, pretend = 0, frame = 8
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 129 0004 0229     		cmp	r1, #2
 130 0006 82B0     		sub	sp, sp, #8
 131 0008 0F46     		mov	r7, r1
 132 000a 0546     		mov	r5, r0
 133 000c 9046     		mov	r8, r2
 134 000e 1E46     		mov	r6, r3
 135 0010 15D0     		beq	.L17
 136 0012 0429     		cmp	r1, #4
 137 0014 13D0     		beq	.L17
 138 0016 0129     		cmp	r1, #1
 139 0018 04D0     		beq	.L47
 140 001a 6FF00400 		mvn	r0, #4
 141 001e 02B0     		add	sp, sp, #8
 142              		@ sp needed
 143 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 144              	.L47:
 145 0024 02A9     		add	r1, sp, #8
 146 0026 0023     		movs	r3, #0
 147 0028 41F8043D 		str	r3, [r1, #-4]!
 148 002c 4FF47060 		mov	r0, #3840
 149 0030 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
 150 0034 019B     		ldr	r3, [sp, #4]
 151 0036 6FF00200 		mvn	r0, #2
 152 003a 002B     		cmp	r3, #0
 153 003c 51D0     		beq	.L16
 154              	.L17:
 155 003e 7007     		lsls	r0, r6, #29
 156 0040 0AD4     		bmi	.L32
 157 0042 8EB1     		cbz	r6, .L20
 158 0044 012F     		cmp	r7, #1
 159 0046 0CD0     		beq	.L21
 160 0048 022F     		cmp	r7, #2
 161 004a 0DD1     		bne	.L20
 162 004c B106     		lsls	r1, r6, #26
 163 004e 01D4     		bmi	.L24
 164 0050 F306     		lsls	r3, r6, #27
 165 0052 09D5     		bpl	.L20
 166              	.L24:
 167 0054 3206     		lsls	r2, r6, #24
 168 0056 07D4     		bmi	.L20
 169              	.L32:
 170 0058 6FF00500 		mvn	r0, #5
 171 005c 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 4


 172              		@ sp needed
 173 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 174              	.L21:
 175 0062 16F0210F 		tst	r6, #33
 176 0066 F7D0     		beq	.L32
 177              	.L20:
 178 0068 2846     		mov	r0, r5
 179 006a 6C01     		lsls	r4, r5, #5
 180 006c FFF7FEFF 		bl	_Z5closeh
 181 0070 0834     		adds	r4, r4, #8
 182 0072 26F00F01 		bic	r1, r6, #15
 183 0076 2046     		mov	r0, r4
 184 0078 3943     		orrs	r1, r1, r7
 185 007a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 186 007e B8F1000F 		cmp	r8, #0
 187 0082 31D0     		beq	.L25
 188              	.L46:
 189 0084 4FEA1821 		lsr	r1, r8, #8
 190 0088 5FFA88F8 		uxtb	r8, r8
 191              	.L26:
 192 008c 04F58060 		add	r0, r4, #1024
 193 0090 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 194 0094 04F5A060 		add	r0, r4, #1280
 195 0098 4146     		mov	r1, r8
 196 009a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 197 009e 0121     		movs	r1, #1
 198 00a0 2846     		mov	r0, r5
 199 00a2 FFF7FEFF 		bl	_Z11ExecCommandhh
 200 00a6 1A48     		ldr	r0, .L48
 201 00a8 1A49     		ldr	r1, .L48+4
 202 00aa 0388     		ldrh	r3, [r0]
 203 00ac 1A4F     		ldr	r7, .L48+8
 204 00ae 0122     		movs	r2, #1
 205 00b0 AA40     		lsls	r2, r2, r5
 206 00b2 D243     		mvns	r2, r2
 207 00b4 12B2     		sxth	r2, r2
 208 00b6 06F00106 		and	r6, r6, #1
 209 00ba 1340     		ands	r3, r3, r2
 210 00bc AE40     		lsls	r6, r6, r5
 211 00be 1E43     		orrs	r6, r6, r3
 212 00c0 0B88     		ldrh	r3, [r1]
 213 00c2 0680     		strh	r6, [r0]	@ movhi
 214 00c4 1548     		ldr	r0, .L48+12
 215 00c6 1A40     		ands	r2, r2, r3
 216 00c8 0023     		movs	r3, #0
 217 00ca 27F81530 		strh	r3, [r7, r5, lsl #1]	@ movhi
 218 00ce 4355     		strb	r3, [r0, r5]
 219 00d0 04F54074 		add	r4, r4, #768
 220 00d4 0A80     		strh	r2, [r1]	@ movhi
 221              	.L28:
 222 00d6 2046     		mov	r0, r4
 223 00d8 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 224 00dc 0028     		cmp	r0, #0
 225 00de FAD0     		beq	.L28
 226 00e0 68B2     		sxtb	r0, r5
 227              	.L16:
 228 00e2 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 5


 229              		@ sp needed
 230 00e4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 231              	.L25:
 232 00e8 0D4A     		ldr	r2, .L48+16
 233 00ea B2F80080 		ldrh	r8, [r2]
 234 00ee 08F10103 		add	r3, r8, #1
 235 00f2 9BB2     		uxth	r3, r3
 236 00f4 4FF6F071 		movw	r1, #65520
 237 00f8 8B42     		cmp	r3, r1
 238 00fa 01D0     		beq	.L27
 239 00fc 1380     		strh	r3, [r2]	@ movhi
 240 00fe C1E7     		b	.L46
 241              	.L27:
 242 0100 4FF44043 		mov	r3, #49152
 243 0104 1380     		strh	r3, [r2]	@ movhi
 244 0106 4FF0EF08 		mov	r8, #239
 245 010a FF21     		movs	r1, #255
 246 010c BEE7     		b	.L26
 247              	.L49:
 248 010e 00BF     		.align	2
 249              	.L48:
 250 0110 00000000 		.word	.LANCHOR1
 251 0114 00000000 		.word	.LANCHOR0
 252 0118 00000000 		.word	.LANCHOR2
 253 011c 00000000 		.word	.LANCHOR3
 254 0120 00000000 		.word	.LANCHOR4
 255              		.size	_Z6sockethhth, .-_Z6sockethhth
 256              		.section	.text._Z6listenh,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	_Z6listenh
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 264              		.type	_Z6listenh, %function
 265              	_Z6listenh:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268 0000 70B5     		push	{r4, r5, r6, lr}
 269 0002 4401     		lsls	r4, r0, #5
 270 0004 0834     		adds	r4, r4, #8
 271 0006 0646     		mov	r6, r0
 272 0008 2046     		mov	r0, r4
 273 000a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 274 000e 00F00F05 		and	r5, r0, #15
 275 0012 012D     		cmp	r5, #1
 276 0014 12D1     		bne	.L52
 277 0016 04F54074 		add	r4, r4, #768
 278 001a 2046     		mov	r0, r4
 279 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 280 0020 1328     		cmp	r0, #19
 281 0022 0ED1     		bne	.L53
 282 0024 0221     		movs	r1, #2
 283 0026 3046     		mov	r0, r6
 284 0028 FFF7FEFF 		bl	_Z11ExecCommandhh
 285 002c 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 6


 286 002e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 287 0032 1428     		cmp	r0, #20
 288 0034 08BF     		it	eq
 289 0036 2846     		moveq	r0, r5
 290 0038 06D1     		bne	.L56
 291 003a 70BD     		pop	{r4, r5, r6, pc}
 292              	.L52:
 293 003c 6FF00400 		mvn	r0, #4
 294 0040 70BD     		pop	{r4, r5, r6, pc}
 295              	.L53:
 296 0042 6FF00200 		mvn	r0, #2
 297 0046 70BD     		pop	{r4, r5, r6, pc}
 298              	.L56:
 299 0048 3046     		mov	r0, r6
 300 004a FFF7FEFF 		bl	_Z5closeh
 301 004e 6FF00300 		mvn	r0, #3
 302 0052 70BD     		pop	{r4, r5, r6, pc}
 303              		.size	_Z6listenh, .-_Z6listenh
 304              		.section	.text._Z7connecth9IPAddresst,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	_Z7connecth9IPAddresst
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 312              		.type	_Z7connecth9IPAddresst, %function
 313              	_Z7connecth9IPAddresst:
 314              		@ args = 0, pretend = 0, frame = 8
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 317 0004 4FF00408 		mov	r8, #4
 318 0008 0124     		movs	r4, #1
 319 000a 18FB0044 		smlabb	r4, r8, r0, r4
 320 000e 82B0     		sub	sp, sp, #8
 321 0010 E400     		lsls	r4, r4, #3
 322 0012 0646     		mov	r6, r0
 323 0014 2046     		mov	r0, r4
 324 0016 0191     		str	r1, [sp, #4]
 325 0018 1746     		mov	r7, r2
 326 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 327 001e 00F00F00 		and	r0, r0, #15
 328 0022 0128     		cmp	r0, #1
 329 0024 4DD1     		bne	.L61
 330 0026 04F54075 		add	r5, r4, #768
 331 002a 2846     		mov	r0, r5
 332 002c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 333 0030 1328     		cmp	r0, #19
 334 0032 4CD1     		bne	.L62
 335 0034 019B     		ldr	r3, [sp, #4]
 336 0036 0133     		adds	r3, r3, #1
 337 0038 46D1     		bne	.L63
 338 003a 002F     		cmp	r7, #0
 339 003c 4AD0     		beq	.L64
 340 003e 0DEB0801 		add	r1, sp, r8
 341 0042 04F54060 		add	r0, r4, #3072
 342 0046 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 7


 343 004a 390A     		lsrs	r1, r7, #8
 344 004c 04F58050 		add	r0, r4, #4096
 345 0050 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 346 0054 F9B2     		uxtb	r1, r7
 347 0056 04F58850 		add	r0, r4, #4352
 348 005a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 349 005e 3046     		mov	r0, r6
 350 0060 4146     		mov	r1, r8
 351 0062 FFF7FEFF 		bl	_Z11ExecCommandhh
 352 0066 1D4B     		ldr	r3, .L72
 353 0068 1B88     		ldrh	r3, [r3]
 354 006a 43FA06F6 		asr	r6, r3, r6
 355 006e F307     		lsls	r3, r6, #31
 356 0070 15D4     		bmi	.L65
 357 0072 04F50074 		add	r4, r4, #512
 358 0076 08E0     		b	.L60
 359              	.L71:
 360 0078 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 361 007c 10F0080F 		tst	r0, #8
 362 0080 2846     		mov	r0, r5
 363 0082 10D1     		bne	.L69
 364 0084 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 365 0088 B0B1     		cbz	r0, .L70
 366              	.L60:
 367 008a 2846     		mov	r0, r5
 368 008c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 369 0090 1728     		cmp	r0, #23
 370 0092 2046     		mov	r0, r4
 371 0094 F0D1     		bne	.L71
 372 0096 0120     		movs	r0, #1
 373 0098 02B0     		add	sp, sp, #8
 374              		@ sp needed
 375 009a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 376              	.L65:
 377 009e 0020     		movs	r0, #0
 378              	.L58:
 379 00a0 02B0     		add	sp, sp, #8
 380              		@ sp needed
 381 00a2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 382              	.L69:
 383 00a6 2046     		mov	r0, r4
 384 00a8 0821     		movs	r1, #8
 385 00aa FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 386 00ae 6FF00C00 		mvn	r0, #12
 387 00b2 02B0     		add	sp, sp, #8
 388              		@ sp needed
 389 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 390              	.L70:
 391 00b8 6FF00300 		mvn	r0, #3
 392 00bc 02B0     		add	sp, sp, #8
 393              		@ sp needed
 394 00be BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 395              	.L61:
 396 00c2 6FF00400 		mvn	r0, #4
 397 00c6 EBE7     		b	.L58
 398              	.L63:
 399 00c8 6FF00B00 		mvn	r0, #11
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 8


 400 00cc E8E7     		b	.L58
 401              	.L62:
 402 00ce 6FF00200 		mvn	r0, #2
 403 00d2 E5E7     		b	.L58
 404              	.L64:
 405 00d4 6FF00A00 		mvn	r0, #10
 406 00d8 E2E7     		b	.L58
 407              	.L73:
 408 00da 00BF     		.align	2
 409              	.L72:
 410 00dc 00000000 		.word	.LANCHOR1
 411              		.size	_Z7connecth9IPAddresst, .-_Z7connecth9IPAddresst
 412              		.section	.text._Z16disconnectNoWaith,"ax",%progbits
 413              		.align	1
 414              		.p2align 2,,3
 415              		.global	_Z16disconnectNoWaith
 416              		.syntax unified
 417              		.thumb
 418              		.thumb_func
 419              		.fpu fpv4-sp-d16
 420              		.type	_Z16disconnectNoWaith, %function
 421              	_Z16disconnectNoWaith:
 422              		@ args = 0, pretend = 0, frame = 0
 423              		@ frame_needed = 0, uses_anonymous_args = 0
 424              		@ link register save eliminated.
 425 0000 0821     		movs	r1, #8
 426 0002 FFF7FEBF 		b	_Z11ExecCommandhh
 427              		.size	_Z16disconnectNoWaith, .-_Z16disconnectNoWaith
 428 0006 00BF     		.section	.text._Z6sendtohPKht9IPAddresst,"ax",%progbits
 429              		.align	1
 430              		.p2align 2,,3
 431              		.global	_Z6sendtohPKht9IPAddresst
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu fpv4-sp-d16
 436              		.type	_Z6sendtohPKht9IPAddresst, %function
 437              	_Z6sendtohPKht9IPAddresst:
 438              		@ args = 4, pretend = 0, frame = 8
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 440 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 441 0004 4401     		lsls	r4, r0, #5
 442 0006 83B0     		sub	sp, sp, #12
 443 0008 0834     		adds	r4, r4, #8
 444 000a 0546     		mov	r5, r0
 445 000c 2046     		mov	r0, r4
 446 000e 8846     		mov	r8, r1
 447 0010 1646     		mov	r6, r2
 448 0012 0193     		str	r3, [sp, #4]
 449 0014 BDF82890 		ldrh	r9, [sp, #40]
 450 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 451 001c 00F00F00 		and	r0, r0, #15
 452 0020 0228     		cmp	r0, #2
 453 0022 01D0     		beq	.L77
 454 0024 0428     		cmp	r0, #4
 455 0026 4CD1     		bne	.L95
 456              	.L77:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 9


 457 0028 002E     		cmp	r6, #0
 458 002a 53D0     		beq	.L80
 459 002c 019B     		ldr	r3, [sp, #4]
 460 002e 002B     		cmp	r3, #0
 461 0030 53D0     		beq	.L81
 462 0032 B9F1000F 		cmp	r9, #0
 463 0036 47D0     		beq	.L82
 464 0038 04F54077 		add	r7, r4, #768
 465 003c 3846     		mov	r0, r7
 466 003e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 467 0042 4228     		cmp	r0, #66
 468 0044 01D0     		beq	.L78
 469 0046 2228     		cmp	r0, #34
 470 0048 41D1     		bne	.L83
 471              	.L78:
 472 004a 04F54060 		add	r0, r4, #3072
 473 004e 01A9     		add	r1, sp, #4
 474 0050 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 475 0054 04F58050 		add	r0, r4, #4096
 476 0058 4FEA1921 		lsr	r1, r9, #8
 477 005c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 478 0060 5FFA89F1 		uxtb	r1, r9
 479 0064 04F58850 		add	r0, r4, #4352
 480 0068 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 481 006c 04F5F850 		add	r0, r4, #7936
 482 0070 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 483 0074 8002     		lsls	r0, r0, #10
 484 0076 84B2     		uxth	r4, r0
 485 0078 B442     		cmp	r4, r6
 486 007a 2846     		mov	r0, r5
 487 007c 28BF     		it	cs
 488 007e 3446     		movcs	r4, r6
 489 0080 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 490 0084 0646     		mov	r6, r0
 491 0086 3846     		mov	r0, r7
 492 0088 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 493 008c 40B3     		cbz	r0, .L84
 494 008e A642     		cmp	r6, r4
 495 0090 03D2     		bcs	.L97
 496 0092 0020     		movs	r0, #0
 497              	.L75:
 498 0094 03B0     		add	sp, sp, #12
 499              		@ sp needed
 500 0096 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 501              	.L97:
 502 009a 2246     		mov	r2, r4
 503 009c 4146     		mov	r1, r8
 504 009e 2846     		mov	r0, r5
 505 00a0 FFF7FEFF 		bl	_Z13wiz_send_datahPKht
 506 00a4 2846     		mov	r0, r5
 507 00a6 2021     		movs	r1, #32
 508 00a8 FFF7FEFF 		bl	_Z11ExecCommandhh
 509 00ac 0E4A     		ldr	r2, .L98
 510 00ae 0123     		movs	r3, #1
 511 00b0 1188     		ldrh	r1, [r2]
 512 00b2 03FA05F5 		lsl	r5, r3, r5
 513 00b6 0D43     		orrs	r5, r5, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 10


 514 00b8 2046     		mov	r0, r4
 515 00ba 1580     		strh	r5, [r2]	@ movhi
 516 00bc 03B0     		add	sp, sp, #12
 517              		@ sp needed
 518 00be BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 519              	.L95:
 520 00c2 6FF00400 		mvn	r0, #4
 521 00c6 E5E7     		b	.L75
 522              	.L82:
 523 00c8 6FF00A00 		mvn	r0, #10
 524 00cc E2E7     		b	.L75
 525              	.L83:
 526 00ce 6FF00600 		mvn	r0, #6
 527 00d2 DFE7     		b	.L75
 528              	.L80:
 529 00d4 6FF00D00 		mvn	r0, #13
 530 00d8 DCE7     		b	.L75
 531              	.L81:
 532 00da 6FF00B00 		mvn	r0, #11
 533 00de D9E7     		b	.L75
 534              	.L84:
 535 00e0 6FF00300 		mvn	r0, #3
 536 00e4 D6E7     		b	.L75
 537              	.L99:
 538 00e6 00BF     		.align	2
 539              	.L98:
 540 00e8 00000000 		.word	.LANCHOR0
 541              		.size	_Z6sendtohPKht9IPAddresst, .-_Z6sendtohPKht9IPAddresst
 542              		.section	.text._Z17CheckSendCompleteh,"ax",%progbits
 543              		.align	1
 544              		.p2align 2,,3
 545              		.global	_Z17CheckSendCompleteh
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu fpv4-sp-d16
 550              		.type	_Z17CheckSendCompleteh, %function
 551              	_Z17CheckSendCompleteh:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554 0000 70B5     		push	{r4, r5, r6, lr}
 555 0002 0126     		movs	r6, #1
 556 0004 06EB8004 		add	r4, r6, r0, lsl #2
 557 0008 E400     		lsls	r4, r4, #3
 558 000a 04F50074 		add	r4, r4, #512
 559 000e 0546     		mov	r5, r0
 560 0010 2046     		mov	r0, r4
 561 0012 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 562 0016 C306     		lsls	r3, r0, #27
 563 0018 03D4     		bmi	.L105
 564 001a 10F00800 		ands	r0, r0, #8
 565 001e 0DD1     		bne	.L106
 566 0020 70BD     		pop	{r4, r5, r6, pc}
 567              	.L105:
 568 0022 2046     		mov	r0, r4
 569 0024 1021     		movs	r1, #16
 570 0026 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 11


 571 002a 0B4A     		ldr	r2, .L107
 572 002c 1388     		ldrh	r3, [r2]
 573 002e 06FA05F5 		lsl	r5, r6, r5
 574 0032 23EA0505 		bic	r5, r3, r5
 575 0036 3046     		mov	r0, r6
 576 0038 1580     		strh	r5, [r2]	@ movhi
 577 003a 70BD     		pop	{r4, r5, r6, pc}
 578              	.L106:
 579 003c 2046     		mov	r0, r4
 580 003e 0821     		movs	r1, #8
 581 0040 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 582 0044 044A     		ldr	r2, .L107
 583 0046 1388     		ldrh	r3, [r2]
 584 0048 06FA05F0 		lsl	r0, r6, r5
 585 004c 23EA0000 		bic	r0, r3, r0
 586 0050 1080     		strh	r0, [r2]	@ movhi
 587 0052 6FF00C00 		mvn	r0, #12
 588 0056 70BD     		pop	{r4, r5, r6, pc}
 589              	.L108:
 590              		.align	2
 591              	.L107:
 592 0058 00000000 		.word	.LANCHOR0
 593              		.size	_Z17CheckSendCompleteh, .-_Z17CheckSendCompleteh
 594              		.section	.text._Z8recvfromhPhtS_Pt,"ax",%progbits
 595              		.align	1
 596              		.p2align 2,,3
 597              		.global	_Z8recvfromhPhtS_Pt
 598              		.syntax unified
 599              		.thumb
 600              		.thumb_func
 601              		.fpu fpv4-sp-d16
 602              		.type	_Z8recvfromhPhtS_Pt, %function
 603              	_Z8recvfromhPhtS_Pt:
 604              		@ args = 4, pretend = 0, frame = 16
 605              		@ frame_needed = 0, uses_anonymous_args = 0
 606 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 607 0004 4601     		lsls	r6, r0, #5
 608 0006 85B0     		sub	sp, sp, #20
 609 0008 0836     		adds	r6, r6, #8
 610 000a 0546     		mov	r5, r0
 611 000c 3046     		mov	r0, r6
 612 000e 0193     		str	r3, [sp, #4]
 613 0010 0091     		str	r1, [sp]
 614 0012 9346     		mov	fp, r2
 615 0014 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 616 0018 00F00F03 		and	r3, r0, #15
 617 001c 022B     		cmp	r3, #2
 618 001e 8046     		mov	r8, r0
 619 0020 02D0     		beq	.L111
 620 0022 042B     		cmp	r3, #4
 621 0024 40F0C080 		bne	.L147
 622              	.L111:
 623 0028 BBF1000F 		cmp	fp, #0
 624 002c 00F0BF80 		beq	.L128
 625 0030 DFF890A1 		ldr	r10, .L160+4
 626 0034 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
 627 0038 002C     		cmp	r4, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 12


 628 003a 3FD1     		bne	.L112
 629 003c 2846     		mov	r0, r5
 630 003e FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 631 0042 06F54076 		add	r6, r6, #768
 632 0046 0127     		movs	r7, #1
 633 0048 0446     		mov	r4, r0
 634 004a 3046     		mov	r0, r6
 635 004c DFF87891 		ldr	r9, .L160+8
 636 0050 AF40     		lsls	r7, r7, r5
 637 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 638 0056 0028     		cmp	r0, #0
 639 0058 4DD0     		beq	.L129
 640              	.L158:
 641 005a B9F80030 		ldrh	r3, [r9]
 642 005e 3B42     		tst	r3, r7
 643 0060 3ED0     		beq	.L113
 644 0062 002C     		cmp	r4, #0
 645 0064 00F09C80 		beq	.L156
 646              	.L114:
 647 0068 08F00708 		and	r8, r8, #7
 648 006c B8F1020F 		cmp	r8, #2
 649 0070 66D0     		beq	.L117
 650 0072 B8F1040F 		cmp	r8, #4
 651 0076 40F09580 		bne	.L157
 652 007a 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
 653              	.L121:
 654 007e 002C     		cmp	r4, #0
 655 0080 44D0     		beq	.L150
 656              	.L154:
 657 0082 4F4E     		ldr	r6, .L160
 658              	.L122:
 659 0084 0099     		ldr	r1, [sp]
 660 0086 5C45     		cmp	r4, fp
 661 0088 28BF     		it	cs
 662 008a 5C46     		movcs	r4, fp
 663 008c 2246     		mov	r2, r4
 664 008e 2846     		mov	r0, r5
 665 0090 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 666 0094 2746     		mov	r7, r4
 667              	.L120:
 668 0096 4021     		movs	r1, #64
 669 0098 2846     		mov	r0, r5
 670 009a FFF7FEFF 		bl	_Z11ExecCommandhh
 671 009e 3AF81530 		ldrh	r3, [r10, r5, lsl #1]
 672 00a2 1C1B     		subs	r4, r3, r4
 673 00a4 A4B2     		uxth	r4, r4
 674 00a6 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 675 00aa 54B3     		cbz	r4, .L125
 676 00ac 735D     		ldrb	r3, [r6, r5]	@ zero_extendqisi2
 677 00ae 43F00103 		orr	r3, r3, #1
 678 00b2 7355     		strb	r3, [r6, r5]
 679              	.L109:
 680 00b4 3846     		mov	r0, r7
 681 00b6 05B0     		add	sp, sp, #20
 682              		@ sp needed
 683 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 684              	.L112:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 13


 685 00bc 08F00708 		and	r8, r8, #7
 686 00c0 B8F1020F 		cmp	r8, #2
 687 00c4 DDD0     		beq	.L154
 688 00c6 B8F1040F 		cmp	r8, #4
 689 00ca D8D0     		beq	.L121
 690 00cc 0027     		movs	r7, #0
 691 00ce 3C46     		mov	r4, r7
 692              	.L124:
 693 00d0 2146     		mov	r1, r4
 694 00d2 2846     		mov	r0, r5
 695 00d4 FFF7FEFF 		bl	_Z15wiz_recv_ignoreht
 696 00d8 394E     		ldr	r6, .L160
 697 00da 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 698 00de DAE7     		b	.L120
 699              	.L113:
 700 00e0 002C     		cmp	r4, #0
 701 00e2 C1D1     		bne	.L114
 702 00e4 2846     		mov	r0, r5
 703 00e6 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 704 00ea 0446     		mov	r4, r0
 705 00ec 3046     		mov	r0, r6
 706 00ee FFF7FEFF 		bl	_Z12WIZCHIP_READm
 707 00f2 0028     		cmp	r0, #0
 708 00f4 B1D1     		bne	.L158
 709              	.L129:
 710 00f6 6FF00307 		mvn	r7, #3
 711 00fa 3846     		mov	r0, r7
 712 00fc 05B0     		add	sp, sp, #20
 713              		@ sp needed
 714 00fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 715              	.L125:
 716 0102 3846     		mov	r0, r7
 717 0104 7455     		strb	r4, [r6, r5]
 718 0106 05B0     		add	sp, sp, #20
 719              		@ sp needed
 720 0108 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 721              	.L150:
 722 010c 0222     		movs	r2, #2
 723 010e 02A9     		add	r1, sp, #8
 724 0110 2846     		mov	r0, r5
 725 0112 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 726 0116 4021     		movs	r1, #64
 727 0118 2846     		mov	r0, r5
 728 011a FFF7FEFF 		bl	_Z11ExecCommandhh
 729 011e 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 730 0122 9DF80940 		ldrb	r4, [sp, #9]	@ zero_extendqisi2
 731 0126 04EB0324 		add	r4, r4, r3, lsl #8
 732 012a A4B2     		uxth	r4, r4
 733 012c 40F2EA53 		movw	r3, #1514
 734 0130 9C42     		cmp	r4, r3
 735 0132 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 736 0136 3DD8     		bhi	.L159
 737 0138 214E     		ldr	r6, .L160
 738 013a 8023     		movs	r3, #128
 739 013c 7355     		strb	r3, [r6, r5]
 740 013e A1E7     		b	.L122
 741              	.L117:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 14


 742 0140 3AF81540 		ldrh	r4, [r10, r5, lsl #1]
 743 0144 002C     		cmp	r4, #0
 744 0146 9CD1     		bne	.L154
 745 0148 0822     		movs	r2, #8
 746 014a 0DEB0201 		add	r1, sp, r2
 747 014e 2846     		mov	r0, r5
 748 0150 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 749 0154 4021     		movs	r1, #64
 750 0156 2846     		mov	r0, r5
 751 0158 FFF7FEFF 		bl	_Z11ExecCommandhh
 752 015c 9DF80E10 		ldrb	r1, [sp, #14]	@ zero_extendqisi2
 753 0160 9DF80F40 		ldrb	r4, [sp, #15]	@ zero_extendqisi2
 754 0164 9DF80C20 		ldrb	r2, [sp, #12]	@ zero_extendqisi2
 755 0168 9DF80D30 		ldrb	r3, [sp, #13]	@ zero_extendqisi2
 756 016c 144E     		ldr	r6, .L160
 757 016e 04EB0124 		add	r4, r4, r1, lsl #8
 758 0172 0199     		ldr	r1, [sp, #4]
 759 0174 03EB0223 		add	r3, r3, r2, lsl #8
 760 0178 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 761 017c 0A70     		strb	r2, [r1]
 762 017e 9DF80920 		ldrb	r2, [sp, #9]	@ zero_extendqisi2
 763 0182 4A70     		strb	r2, [r1, #1]
 764 0184 9DF80A20 		ldrb	r2, [sp, #10]	@ zero_extendqisi2
 765 0188 8A70     		strb	r2, [r1, #2]
 766 018a 9DF80B20 		ldrb	r2, [sp, #11]	@ zero_extendqisi2
 767 018e CA70     		strb	r2, [r1, #3]
 768 0190 0E99     		ldr	r1, [sp, #56]
 769 0192 A4B2     		uxth	r4, r4
 770 0194 8022     		movs	r2, #128
 771 0196 0B80     		strh	r3, [r1]	@ movhi
 772 0198 2AF81540 		strh	r4, [r10, r5, lsl #1]	@ movhi
 773 019c 7255     		strb	r2, [r6, r5]
 774 019e 71E7     		b	.L122
 775              	.L156:
 776 01a0 2746     		mov	r7, r4
 777 01a2 87E7     		b	.L109
 778              	.L157:
 779 01a4 2746     		mov	r7, r4
 780 01a6 93E7     		b	.L124
 781              	.L147:
 782 01a8 6FF00407 		mvn	r7, #4
 783 01ac 82E7     		b	.L109
 784              	.L128:
 785 01ae 6FF00D07 		mvn	r7, #13
 786 01b2 7FE7     		b	.L109
 787              	.L159:
 788 01b4 2846     		mov	r0, r5
 789 01b6 FFF7FEFF 		bl	_Z5closeh
 790 01ba 6FF47A77 		mvn	r7, #1000
 791 01be 79E7     		b	.L109
 792              	.L161:
 793              		.align	2
 794              	.L160:
 795 01c0 00000000 		.word	.LANCHOR3
 796 01c4 00000000 		.word	.LANCHOR2
 797 01c8 00000000 		.word	.LANCHOR1
 798              		.size	_Z8recvfromhPhtS_Pt, .-_Z8recvfromhPhtS_Pt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 15


 799              		.section	.text._Z9ctlsocketh12ctlsock_typePv,"ax",%progbits
 800              		.align	1
 801              		.p2align 2,,3
 802              		.global	_Z9ctlsocketh12ctlsock_typePv
 803              		.syntax unified
 804              		.thumb
 805              		.thumb_func
 806              		.fpu fpv4-sp-d16
 807              		.type	_Z9ctlsocketh12ctlsock_typePv, %function
 808              	_Z9ctlsocketh12ctlsock_typePv:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811 0000 38B5     		push	{r3, r4, r5, lr}
 812 0002 1546     		mov	r5, r2
 813 0004 0729     		cmp	r1, #7
 814 0006 71D8     		bhi	.L177
 815 0008 DFE801F0 		tbb	[pc, r1]
 816              	.L165:
 817 000c 11       		.byte	(.L164-.L165)/2
 818 000d 53       		.byte	(.L166-.L165)/2
 819 000e 5C       		.byte	(.L167-.L165)/2
 820 000f 20       		.byte	(.L168-.L165)/2
 821 0010 2C       		.byte	(.L169-.L165)/2
 822 0011 39       		.byte	(.L170-.L165)/2
 823 0012 46       		.byte	(.L171-.L165)/2
 824 0013 04       		.byte	(.L172-.L165)/2
 825              		.p2align 1
 826              	.L172:
 827 0014 0124     		movs	r4, #1
 828 0016 04EB8000 		add	r0, r4, r0, lsl #2
 829 001a C000     		lsls	r0, r0, #3
 830 001c 00F53050 		add	r0, r0, #11264
 831 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 832 0024 00F01F00 		and	r0, r0, #31
 833 0028 2870     		strb	r0, [r5]
 834 002a 2046     		mov	r0, r4
 835 002c 38BD     		pop	{r3, r4, r5, pc}
 836              	.L164:
 837 002e 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 838 0030 012B     		cmp	r3, #1
 839 0032 53D0     		beq	.L179
 840 0034 002B     		cmp	r3, #0
 841 0036 59D1     		bne	.L177
 842 0038 2E49     		ldr	r1, .L180
 843 003a 0123     		movs	r3, #1
 844 003c 0A88     		ldrh	r2, [r1]
 845 003e 03FA00F0 		lsl	r0, r3, r0
 846 0042 22EA0000 		bic	r0, r2, r0
 847 0046 0880     		strh	r0, [r1]	@ movhi
 848 0048 1846     		mov	r0, r3
 849 004a 38BD     		pop	{r3, r4, r5, pc}
 850              	.L168:
 851 004c 0124     		movs	r4, #1
 852 004e 04EB8000 		add	r0, r4, r0, lsl #2
 853 0052 C000     		lsls	r0, r0, #3
 854 0054 00F5F050 		add	r0, r0, #7680
 855 0058 FFF7FEFF 		bl	_Z12WIZCHIP_READm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 16


 856 005c 8002     		lsls	r0, r0, #10
 857 005e 2880     		strh	r0, [r5]	@ movhi
 858 0060 2046     		mov	r0, r4
 859 0062 38BD     		pop	{r3, r4, r5, pc}
 860              	.L169:
 861 0064 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 862 0066 1F29     		cmp	r1, #31
 863 0068 40D8     		bhi	.L177
 864 006a 0124     		movs	r4, #1
 865 006c 04EB8000 		add	r0, r4, r0, lsl #2
 866 0070 C000     		lsls	r0, r0, #3
 867 0072 00F50070 		add	r0, r0, #512
 868 0076 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 869 007a 2046     		mov	r0, r4
 870 007c 38BD     		pop	{r3, r4, r5, pc}
 871              	.L170:
 872 007e 0124     		movs	r4, #1
 873 0080 04EB8000 		add	r0, r4, r0, lsl #2
 874 0084 C000     		lsls	r0, r0, #3
 875 0086 00F50070 		add	r0, r0, #512
 876 008a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 877 008e 00F01F00 		and	r0, r0, #31
 878 0092 2870     		strb	r0, [r5]
 879 0094 2046     		mov	r0, r4
 880 0096 38BD     		pop	{r3, r4, r5, pc}
 881              	.L171:
 882 0098 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 883 009a 1F29     		cmp	r1, #31
 884 009c 26D8     		bhi	.L177
 885 009e 0124     		movs	r4, #1
 886 00a0 04EB8000 		add	r0, r4, r0, lsl #2
 887 00a4 C000     		lsls	r0, r0, #3
 888 00a6 00F53050 		add	r0, r0, #11264
 889 00aa FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 890 00ae 2046     		mov	r0, r4
 891 00b0 38BD     		pop	{r3, r4, r5, pc}
 892              	.L166:
 893 00b2 104B     		ldr	r3, .L180
 894 00b4 1B88     		ldrh	r3, [r3]
 895 00b6 43FA00F0 		asr	r0, r3, r0
 896 00ba 00F00100 		and	r0, r0, #1
 897 00be 1070     		strb	r0, [r2]
 898 00c0 0120     		movs	r0, #1
 899 00c2 38BD     		pop	{r3, r4, r5, pc}
 900              	.L167:
 901 00c4 0124     		movs	r4, #1
 902 00c6 04EB8000 		add	r0, r4, r0, lsl #2
 903 00ca C000     		lsls	r0, r0, #3
 904 00cc 00F5F850 		add	r0, r0, #7936
 905 00d0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 906 00d4 8002     		lsls	r0, r0, #10
 907 00d6 2880     		strh	r0, [r5]	@ movhi
 908 00d8 2046     		mov	r0, r4
 909 00da 38BD     		pop	{r3, r4, r5, pc}
 910              	.L179:
 911 00dc 0549     		ldr	r1, .L180
 912 00de 0A88     		ldrh	r2, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 17


 913 00e0 03FA00F0 		lsl	r0, r3, r0
 914 00e4 0243     		orrs	r2, r2, r0
 915 00e6 0A80     		strh	r2, [r1]	@ movhi
 916 00e8 1846     		mov	r0, r3
 917 00ea 38BD     		pop	{r3, r4, r5, pc}
 918              	.L177:
 919 00ec 6FF00900 		mvn	r0, #9
 920 00f0 38BD     		pop	{r3, r4, r5, pc}
 921              	.L181:
 922 00f2 00BF     		.align	2
 923              	.L180:
 924 00f4 00000000 		.word	.LANCHOR1
 925              		.size	_Z9ctlsocketh12ctlsock_typePv, .-_Z9ctlsocketh12ctlsock_typePv
 926              		.section	.text._Z10setsockopth12sockopt_typePv,"ax",%progbits
 927              		.align	1
 928              		.p2align 2,,3
 929              		.global	_Z10setsockopth12sockopt_typePv
 930              		.syntax unified
 931              		.thumb
 932              		.thumb_func
 933              		.fpu fpv4-sp-d16
 934              		.type	_Z10setsockopth12sockopt_typePv, %function
 935              	_Z10setsockopth12sockopt_typePv:
 936              		@ args = 0, pretend = 0, frame = 16
 937              		@ frame_needed = 0, uses_anonymous_args = 0
 938 0000 70B5     		push	{r4, r5, r6, lr}
 939 0002 0139     		subs	r1, r1, #1
 940 0004 84B0     		sub	sp, sp, #16
 941 0006 0446     		mov	r4, r0
 942 0008 0629     		cmp	r1, #6
 943 000a 00F29580 		bhi	.L195
 944 000e DFE801F0 		tbb	[pc, r1]
 945              	.L185:
 946 0012 17       		.byte	(.L184-.L185)/2
 947 0013 23       		.byte	(.L186-.L185)/2
 948 0014 2F       		.byte	(.L187-.L185)/2
 949 0015 41       		.byte	(.L188-.L185)/2
 950 0016 51       		.byte	(.L189-.L185)/2
 951 0017 63       		.byte	(.L190-.L185)/2
 952 0018 04       		.byte	(.L191-.L185)/2
 953 0019 00       		.p2align 1
 954              	.L191:
 955 001a 4401     		lsls	r4, r0, #5
 956 001c 0834     		adds	r4, r4, #8
 957 001e 2046     		mov	r0, r4
 958 0020 0192     		str	r2, [sp, #4]
 959 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 960 0026 00F00F05 		and	r5, r0, #15
 961 002a 012D     		cmp	r5, #1
 962 002c 7ED1     		bne	.L194
 963 002e 019A     		ldr	r2, [sp, #4]
 964 0030 04F53C50 		add	r0, r4, #12032
 965 0034 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 966 0036 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 967 003a 2846     		mov	r0, r5
 968              	.L183:
 969 003c 04B0     		add	sp, sp, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 18


 970              		@ sp needed
 971 003e 70BD     		pop	{r4, r5, r6, pc}
 972              	.L184:
 973 0040 0125     		movs	r5, #1
 974 0042 05EB8000 		add	r0, r5, r0, lsl #2
 975 0046 C000     		lsls	r0, r0, #3
 976 0048 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 977 004a 00F5B050 		add	r0, r0, #5632
 978 004e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 979 0052 2846     		mov	r0, r5
 980 0054 04B0     		add	sp, sp, #16
 981              		@ sp needed
 982 0056 70BD     		pop	{r4, r5, r6, pc}
 983              	.L186:
 984 0058 0125     		movs	r5, #1
 985 005a 05EB8000 		add	r0, r5, r0, lsl #2
 986 005e C000     		lsls	r0, r0, #3
 987 0060 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 988 0062 00F5A850 		add	r0, r0, #5376
 989 0066 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 990 006a 2846     		mov	r0, r5
 991 006c 04B0     		add	sp, sp, #16
 992              		@ sp needed
 993 006e 70BD     		pop	{r4, r5, r6, pc}
 994              	.L187:
 995 0070 0125     		movs	r5, #1
 996 0072 1688     		ldrh	r6, [r2]
 997 0074 05EB8004 		add	r4, r5, r0, lsl #2
 998 0078 E400     		lsls	r4, r4, #3
 999 007a 04F59050 		add	r0, r4, #4608
 1000 007e 310A     		lsrs	r1, r6, #8
 1001 0080 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1002 0084 04F59850 		add	r0, r4, #4864
 1003 0088 F1B2     		uxtb	r1, r6
 1004 008a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1005 008e 2846     		mov	r0, r5
 1006 0090 04B0     		add	sp, sp, #16
 1007              		@ sp needed
 1008 0092 70BD     		pop	{r4, r5, r6, pc}
 1009              	.L188:
 1010 0094 1146     		mov	r1, r2
 1011 0096 03A8     		add	r0, sp, #12
 1012 0098 0125     		movs	r5, #1
 1013 009a FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 1014 009e 05EB8400 		add	r0, r5, r4, lsl #2
 1015 00a2 C000     		lsls	r0, r0, #3
 1016 00a4 03A9     		add	r1, sp, #12
 1017 00a6 00F54060 		add	r0, r0, #3072
 1018 00aa FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1019 00ae 2846     		mov	r0, r5
 1020 00b0 04B0     		add	sp, sp, #16
 1021              		@ sp needed
 1022 00b2 70BD     		pop	{r4, r5, r6, pc}
 1023              	.L189:
 1024 00b4 0125     		movs	r5, #1
 1025 00b6 1688     		ldrh	r6, [r2]
 1026 00b8 05EB8004 		add	r4, r5, r0, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 19


 1027 00bc E400     		lsls	r4, r4, #3
 1028 00be 04F58050 		add	r0, r4, #4096
 1029 00c2 310A     		lsrs	r1, r6, #8
 1030 00c4 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1031 00c8 04F58850 		add	r0, r4, #4352
 1032 00cc F1B2     		uxtb	r1, r6
 1033 00ce FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1034 00d2 2846     		mov	r0, r5
 1035 00d4 04B0     		add	sp, sp, #16
 1036              		@ sp needed
 1037 00d6 70BD     		pop	{r4, r5, r6, pc}
 1038              	.L190:
 1039 00d8 4401     		lsls	r4, r0, #5
 1040 00da 0834     		adds	r4, r4, #8
 1041 00dc 2046     		mov	r0, r4
 1042 00de FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1043 00e2 00F00F00 		and	r0, r0, #15
 1044 00e6 0128     		cmp	r0, #1
 1045 00e8 20D1     		bne	.L194
 1046 00ea 04F53C50 		add	r0, r4, #12032
 1047 00ee FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1048 00f2 F0B9     		cbnz	r0, .L196
 1049 00f4 04F58075 		add	r5, r4, #256
 1050 00f8 2846     		mov	r0, r5
 1051 00fa 2221     		movs	r1, #34
 1052 00fc FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1053 0100 04F50074 		add	r4, r4, #512
 1054 0104 04E0     		b	.L193
 1055              	.L202:
 1056 0106 2046     		mov	r0, r4
 1057 0108 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1058 010c 0307     		lsls	r3, r0, #28
 1059 010e 06D4     		bmi	.L201
 1060              	.L193:
 1061 0110 2846     		mov	r0, r5
 1062 0112 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1063 0116 0028     		cmp	r0, #0
 1064 0118 F5D1     		bne	.L202
 1065 011a 0120     		movs	r0, #1
 1066 011c 8EE7     		b	.L183
 1067              	.L201:
 1068 011e 2046     		mov	r0, r4
 1069 0120 0821     		movs	r1, #8
 1070 0122 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1071 0126 6FF00C00 		mvn	r0, #12
 1072 012a 87E7     		b	.L183
 1073              	.L194:
 1074 012c 6FF00400 		mvn	r0, #4
 1075 0130 84E7     		b	.L183
 1076              	.L196:
 1077 0132 6FF00100 		mvn	r0, #1
 1078 0136 81E7     		b	.L183
 1079              	.L195:
 1080 0138 6FF00900 		mvn	r0, #9
 1081 013c 7EE7     		b	.L183
 1082              		.size	_Z10setsockopth12sockopt_typePv, .-_Z10setsockopth12sockopt_typePv
 1083 013e 00BF     		.section	.text._Z10getsockopth12sockopt_typePv,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 20


 1084              		.align	1
 1085              		.p2align 2,,3
 1086              		.global	_Z10getsockopth12sockopt_typePv
 1087              		.syntax unified
 1088              		.thumb
 1089              		.thumb_func
 1090              		.fpu fpv4-sp-d16
 1091              		.type	_Z10getsockopth12sockopt_typePv, %function
 1092              	_Z10getsockopth12sockopt_typePv:
 1093              		@ args = 0, pretend = 0, frame = 8
 1094              		@ frame_needed = 0, uses_anonymous_args = 0
 1095 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1096 0002 0446     		mov	r4, r0
 1097 0004 83B0     		sub	sp, sp, #12
 1098 0006 1646     		mov	r6, r2
 1099 0008 0C29     		cmp	r1, #12
 1100 000a 00F29780 		bhi	.L221
 1101 000e DFE801F0 		tbb	[pc, r1]
 1102              	.L206:
 1103 0012 32       		.byte	(.L205-.L206)/2
 1104 0013 3C       		.byte	(.L207-.L206)/2
 1105 0014 46       		.byte	(.L208-.L206)/2
 1106 0015 50       		.byte	(.L209-.L206)/2
 1107 0016 5E       		.byte	(.L210-.L206)/2
 1108 0017 70       		.byte	(.L211-.L206)/2
 1109 0018 95       		.byte	(.L221-.L206)/2
 1110 0019 81       		.byte	(.L212-.L206)/2
 1111 001a 90       		.byte	(.L213-.L206)/2
 1112 001b 07       		.byte	(.L214-.L206)/2
 1113 001c 0F       		.byte	(.L215-.L206)/2
 1114 001d 19       		.byte	(.L216-.L206)/2
 1115 001e 26       		.byte	(.L217-.L206)/2
 1116 001f 00       		.p2align 1
 1117              	.L214:
 1118 0020 2046     		mov	r0, r4
 1119 0022 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 1120 0026 0125     		movs	r5, #1
 1121 0028 3080     		strh	r0, [r6]	@ movhi
 1122              	.L204:
 1123 002a 2846     		mov	r0, r5
 1124 002c 03B0     		add	sp, sp, #12
 1125              		@ sp needed
 1126 002e F0BD     		pop	{r4, r5, r6, r7, pc}
 1127              	.L215:
 1128 0030 0125     		movs	r5, #1
 1129 0032 05EB8000 		add	r0, r5, r0, lsl #2
 1130 0036 C000     		lsls	r0, r0, #3
 1131 0038 00F54070 		add	r0, r0, #768
 1132 003c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1133 0040 3070     		strb	r0, [r6]
 1134 0042 F2E7     		b	.L204
 1135              	.L216:
 1136 0044 0125     		movs	r5, #1
 1137 0046 05EB8000 		add	r0, r5, r0, lsl #2
 1138 004a C000     		lsls	r0, r0, #3
 1139 004c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1140 0050 A842     		cmp	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 21


 1141 0052 E5D0     		beq	.L214
 1142 0054 3C4B     		ldr	r3, .L223
 1143 0056 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 1144 005a 3380     		strh	r3, [r6]	@ movhi
 1145 005c E5E7     		b	.L204
 1146              	.L217:
 1147 005e 4001     		lsls	r0, r0, #5
 1148 0060 0830     		adds	r0, r0, #8
 1149 0062 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1150 0066 00F00F05 		and	r5, r0, #15
 1151 006a 012D     		cmp	r5, #1
 1152 006c 69D1     		bne	.L220
 1153 006e 374A     		ldr	r2, .L223+4
 1154 0070 125D     		ldrb	r2, [r2, r4]	@ zero_extendqisi2
 1155 0072 3270     		strb	r2, [r6]
 1156 0074 D9E7     		b	.L204
 1157              	.L205:
 1158 0076 0125     		movs	r5, #1
 1159 0078 05EB8000 		add	r0, r5, r0, lsl #2
 1160 007c C000     		lsls	r0, r0, #3
 1161 007e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1162 0082 20F00F00 		bic	r0, r0, #15
 1163 0086 3070     		strb	r0, [r6]
 1164 0088 CFE7     		b	.L204
 1165              	.L207:
 1166 008a 0125     		movs	r5, #1
 1167 008c 05EB8000 		add	r0, r5, r0, lsl #2
 1168 0090 C000     		lsls	r0, r0, #3
 1169 0092 00F5B050 		add	r0, r0, #5632
 1170 0096 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1171 009a 3070     		strb	r0, [r6]
 1172 009c C5E7     		b	.L204
 1173              	.L208:
 1174 009e 0125     		movs	r5, #1
 1175 00a0 05EB8000 		add	r0, r5, r0, lsl #2
 1176 00a4 C000     		lsls	r0, r0, #3
 1177 00a6 00F5A850 		add	r0, r0, #5376
 1178 00aa FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1179 00ae 3070     		strb	r0, [r6]
 1180 00b0 BBE7     		b	.L204
 1181              	.L209:
 1182 00b2 0125     		movs	r5, #1
 1183 00b4 05EB8004 		add	r4, r5, r0, lsl #2
 1184 00b8 E400     		lsls	r4, r4, #3
 1185 00ba 04F59050 		add	r0, r4, #4608
 1186 00be FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1187 00c2 04F59850 		add	r0, r4, #4864
 1188 00c6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1189 00ca 3070     		strb	r0, [r6]
 1190 00cc ADE7     		b	.L204
 1191              	.L210:
 1192 00ce 02AF     		add	r7, sp, #8
 1193 00d0 0023     		movs	r3, #0
 1194 00d2 0125     		movs	r5, #1
 1195 00d4 47F8043D 		str	r3, [r7, #-4]!
 1196 00d8 05EB8000 		add	r0, r5, r0, lsl #2
 1197 00dc C000     		lsls	r0, r0, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 22


 1198 00de 3946     		mov	r1, r7
 1199 00e0 00F54060 		add	r0, r0, #3072
 1200 00e4 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
 1201 00e8 3146     		mov	r1, r6
 1202 00ea 3846     		mov	r0, r7
 1203 00ec FFF7FEFF 		bl	_ZNK9IPAddress8UnpackV4EPh
 1204 00f0 9BE7     		b	.L204
 1205              	.L211:
 1206 00f2 0125     		movs	r5, #1
 1207 00f4 05EB8004 		add	r4, r5, r0, lsl #2
 1208 00f8 E400     		lsls	r4, r4, #3
 1209 00fa 04F58050 		add	r0, r4, #4096
 1210 00fe FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1211 0102 0746     		mov	r7, r0
 1212 0104 04F58850 		add	r0, r4, #4352
 1213 0108 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1214 010c 00EB0720 		add	r0, r0, r7, lsl #8
 1215 0110 3080     		strh	r0, [r6]	@ movhi
 1216 0112 8AE7     		b	.L204
 1217              	.L212:
 1218 0114 4401     		lsls	r4, r0, #5
 1219 0116 0834     		adds	r4, r4, #8
 1220 0118 2046     		mov	r0, r4
 1221 011a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1222 011e 00F00F05 		and	r5, r0, #15
 1223 0122 012D     		cmp	r5, #1
 1224 0124 0DD1     		bne	.L220
 1225 0126 04F53C50 		add	r0, r4, #12032
 1226 012a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1227 012e 3080     		strh	r0, [r6]	@ movhi
 1228 0130 7BE7     		b	.L204
 1229              	.L213:
 1230 0132 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 1231 0136 0125     		movs	r5, #1
 1232 0138 3080     		strh	r0, [r6]	@ movhi
 1233 013a 76E7     		b	.L204
 1234              	.L221:
 1235 013c 6FF00105 		mvn	r5, #1
 1236 0140 73E7     		b	.L204
 1237              	.L220:
 1238 0142 6FF00405 		mvn	r5, #4
 1239 0146 70E7     		b	.L204
 1240              	.L224:
 1241              		.align	2
 1242              	.L223:
 1243 0148 00000000 		.word	.LANCHOR2
 1244 014c 00000000 		.word	.LANCHOR3
 1245              		.size	_Z10getsockopth12sockopt_typePv, .-_Z10getsockopth12sockopt_typePv
 1246              		.global	sock_pack_info
 1247              		.section	.bss._ZL12sock_io_mode,"aw",%nobits
 1248              		.align	1
 1249              		.set	.LANCHOR1,. + 0
 1250              		.type	_ZL12sock_io_mode, %object
 1251              		.size	_ZL12sock_io_mode, 2
 1252              	_ZL12sock_io_mode:
 1253 0000 0000     		.space	2
 1254              		.section	.bss._ZL15sock_is_sending,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccH2yyRh.s 			page 23


 1255              		.align	1
 1256              		.set	.LANCHOR0,. + 0
 1257              		.type	_ZL15sock_is_sending, %object
 1258              		.size	_ZL15sock_is_sending, 2
 1259              	_ZL15sock_is_sending:
 1260 0000 0000     		.space	2
 1261              		.section	.bss._ZL18sock_remained_size,"aw",%nobits
 1262              		.align	2
 1263              		.set	.LANCHOR2,. + 0
 1264              		.type	_ZL18sock_remained_size, %object
 1265              		.size	_ZL18sock_remained_size, 16
 1266              	_ZL18sock_remained_size:
 1267 0000 00000000 		.space	16
 1267      00000000 
 1267      00000000 
 1267      00000000 
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
 1279              		.section	.bss.sock_pack_info,"aw",%nobits
 1280              		.align	2
 1281              		.set	.LANCHOR3,. + 0
 1282              		.type	sock_pack_info, %object
 1283              		.size	sock_pack_info, 8
 1284              	sock_pack_info:
 1285 0000 00000000 		.space	8
 1285      00000000 
 1286              		.section	.data._ZL13sock_any_port,"aw",%progbits
 1287              		.align	1
 1288              		.set	.LANCHOR4,. + 0
 1289              		.type	_ZL13sock_any_port, %object
 1290              		.size	_ZL13sock_any_port, 2
 1291              	_ZL13sock_any_port:
 1292 0000 00C0     		.short	-16384
 1293              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
