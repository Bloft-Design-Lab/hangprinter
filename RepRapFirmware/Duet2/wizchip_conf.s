ARM GAS  /tmp/cctzCWWI.s 			page 1


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
  13              		.file	"wizchip_conf.cpp"
  14              		.section	.text._Z16wizchip_sw_resetv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z16wizchip_sw_resetv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z16wizchip_sw_resetv, %function
  23              	_Z16wizchip_sw_resetv:
  24              		@ args = 0, pretend = 0, frame = 24
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 00B5     		push	{lr}
  27 0002 87B0     		sub	sp, sp, #28
  28 0004 04A9     		add	r1, sp, #16
  29 0006 0622     		movs	r2, #6
  30 0008 4FF41060 		mov	r0, #2304
  31 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  32 0010 01A9     		add	r1, sp, #4
  33 0012 0422     		movs	r2, #4
  34 0014 4FF48070 		mov	r0, #256
  35 0018 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  36 001c 02A9     		add	r1, sp, #8
  37 001e 0422     		movs	r2, #4
  38 0020 4FF4A060 		mov	r0, #1280
  39 0024 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  40 0028 0422     		movs	r2, #4
  41 002a 03A9     		add	r1, sp, #12
  42 002c 4FF47060 		mov	r0, #3840
  43 0030 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  44 0034 8021     		movs	r1, #128
  45 0036 0020     		movs	r0, #0
  46 0038 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  47 003c 0020     		movs	r0, #0
  48 003e FFF7FEFF 		bl	_Z12WIZCHIP_READm
  49 0042 04A9     		add	r1, sp, #16
  50 0044 0622     		movs	r2, #6
  51 0046 4FF41060 		mov	r0, #2304
  52 004a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  53 004e 01A9     		add	r1, sp, #4
  54 0050 0422     		movs	r2, #4
  55 0052 4FF48070 		mov	r0, #256
  56 0056 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  57 005a 02A9     		add	r1, sp, #8
ARM GAS  /tmp/cctzCWWI.s 			page 2


  58 005c 0422     		movs	r2, #4
  59 005e 4FF4A060 		mov	r0, #1280
  60 0062 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  61 0066 03A9     		add	r1, sp, #12
  62 0068 0422     		movs	r2, #4
  63 006a 4FF47060 		mov	r0, #3840
  64 006e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  65 0072 07B0     		add	sp, sp, #28
  66              		@ sp needed
  67 0074 5DF804FB 		ldr	pc, [sp], #4
  68              		.size	_Z16wizchip_sw_resetv, .-_Z16wizchip_sw_resetv
  69              		.section	.text._Z12wizchip_initPKhS0_,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_Z12wizchip_initPKhS0_
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_Z12wizchip_initPKhS0_, %function
  78              	_Z12wizchip_initPKhS0_:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  82 0002 0446     		mov	r4, r0
  83 0004 0E46     		mov	r6, r1
  84 0006 FFF7FEFF 		bl	_ZN6WizSpi4InitEv
  85 000a FFF7FEFF 		bl	_Z16wizchip_sw_resetv
  86 000e BCB1     		cbz	r4, .L5
  87 0010 651E     		subs	r5, r4, #1
  88 0012 E01D     		adds	r0, r4, #7
  89 0014 2A46     		mov	r2, r5
  90 0016 0023     		movs	r3, #0
  91              	.L7:
  92 0018 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
  93 001c 0B44     		add	r3, r3, r1
  94 001e 5BB2     		sxtb	r3, r3
  95 0020 102B     		cmp	r3, #16
  96 0022 28DC     		bgt	.L6
  97 0024 9042     		cmp	r0, r2
  98 0026 F7D1     		bne	.L7
  99 0028 41F60874 		movw	r4, #7944
 100 002c 42F20807 		movw	r7, #8200
 101              	.L8:
 102 0030 2046     		mov	r0, r4
 103 0032 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 104 0036 2034     		adds	r4, r4, #32
 105 0038 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 106 003c BC42     		cmp	r4, r7
 107 003e F7D1     		bne	.L8
 108              	.L5:
 109 0040 BEB1     		cbz	r6, .L11
 110 0042 751E     		subs	r5, r6, #1
 111 0044 2A46     		mov	r2, r5
 112 0046 0736     		adds	r6, r6, #7
 113 0048 0023     		movs	r3, #0
 114              	.L13:
ARM GAS  /tmp/cctzCWWI.s 			page 3


 115 004a 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
 116 004e 0B44     		add	r3, r3, r1
 117 0050 5BB2     		sxtb	r3, r3
 118 0052 102B     		cmp	r3, #16
 119 0054 0FDC     		bgt	.L6
 120 0056 9642     		cmp	r6, r2
 121 0058 F7D1     		bne	.L13
 122 005a 41F60864 		movw	r4, #7688
 123 005e 41F60876 		movw	r6, #7944
 124              	.L12:
 125 0062 2046     		mov	r0, r4
 126 0064 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 127 0068 2034     		adds	r4, r4, #32
 128 006a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 129 006e B442     		cmp	r4, r6
 130 0070 F7D1     		bne	.L12
 131              	.L11:
 132 0072 0020     		movs	r0, #0
 133 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 134              	.L6:
 135 0076 4FF0FF30 		mov	r0, #-1
 136 007a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 137              		.size	_Z12wizchip_initPKhS0_, .-_Z12wizchip_initPKhS0_
 138              		.section	.text._Z20wizchip_clrinterrupt9intr_kind,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	_Z20wizchip_clrinterrupt9intr_kind
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	_Z20wizchip_clrinterrupt9intr_kind, %function
 147              	_Z20wizchip_clrinterrupt9intr_kind:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150 0000 10B5     		push	{r4, lr}
 151 0002 00F0F001 		and	r1, r0, #240
 152 0006 0446     		mov	r4, r0
 153 0008 4FF4A850 		mov	r0, #5376
 154 000c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 155 0010 210A     		lsrs	r1, r4, #8
 156 0012 4FF4B850 		mov	r0, #5888
 157 0016 BDE81040 		pop	{r4, lr}
 158 001a FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 159              		.size	_Z20wizchip_clrinterrupt9intr_kind, .-_Z20wizchip_clrinterrupt9intr_kind
 160 001e 00BF     		.section	.text._Z20wizchip_getinterruptv,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	_Z20wizchip_getinterruptv
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	_Z20wizchip_getinterruptv, %function
 169              	_Z20wizchip_getinterruptv:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cctzCWWI.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 4FF4A850 		mov	r0, #5376
 174 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 175 000a 0446     		mov	r4, r0
 176 000c 4FF4B850 		mov	r0, #5888
 177 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 178 0014 04F0F004 		and	r4, r4, #240
 179 0018 44EA0020 		orr	r0, r4, r0, lsl #8
 180 001c 80B2     		uxth	r0, r0
 181 001e 10BD     		pop	{r4, pc}
 182              		.size	_Z20wizchip_getinterruptv, .-_Z20wizchip_getinterruptv
 183              		.section	.text._Z24wizchip_setinterruptmask9intr_kind,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_Z24wizchip_setinterruptmask9intr_kind
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_Z24wizchip_setinterruptmask9intr_kind, %function
 192              	_Z24wizchip_setinterruptmask9intr_kind:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 10B5     		push	{r4, lr}
 196 0002 C1B2     		uxtb	r1, r0
 197 0004 0446     		mov	r4, r0
 198 0006 4FF4B050 		mov	r0, #5632
 199 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 200 000e 210A     		lsrs	r1, r4, #8
 201 0010 4FF4C050 		mov	r0, #6144
 202 0014 BDE81040 		pop	{r4, lr}
 203 0018 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 204              		.size	_Z24wizchip_setinterruptmask9intr_kind, .-_Z24wizchip_setinterruptmask9intr_kind
 205              		.section	.text._Z24wizchip_getinterruptmaskv,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	_Z24wizchip_getinterruptmaskv
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_Z24wizchip_getinterruptmaskv, %function
 214              	_Z24wizchip_getinterruptmaskv:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 10B5     		push	{r4, lr}
 218 0002 4FF4B050 		mov	r0, #5632
 219 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 220 000a 0446     		mov	r4, r0
 221 000c 4FF4C050 		mov	r0, #6144
 222 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 223 0014 44EA0020 		orr	r0, r4, r0, lsl #8
 224 0018 80B2     		uxth	r0, r0
 225 001a 10BD     		pop	{r4, pc}
 226              		.size	_Z24wizchip_getinterruptmaskv, .-_Z24wizchip_getinterruptmaskv
 227              		.section	.text._Z17wizphy_getphylinkv,"ax",%progbits
 228              		.align	1
ARM GAS  /tmp/cctzCWWI.s 			page 5


 229              		.p2align 2,,3
 230              		.global	_Z17wizphy_getphylinkv
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 235              		.type	_Z17wizphy_getphylinkv, %function
 236              	_Z17wizphy_getphylinkv:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 08B5     		push	{r3, lr}
 240 0002 4FF43850 		mov	r0, #11776
 241 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 242 000a 00F00100 		and	r0, r0, #1
 243 000e 08BD     		pop	{r3, pc}
 244              		.size	_Z17wizphy_getphylinkv, .-_Z17wizphy_getphylinkv
 245              		.section	.text._Z18wizphy_getphypmodev,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_Z18wizphy_getphypmodev
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_Z18wizphy_getphypmodev, %function
 254              	_Z18wizphy_getphypmodev:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 08B5     		push	{r3, lr}
 258 0002 4FF43850 		mov	r0, #11776
 259 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 260 000a 10F0300F 		tst	r0, #48
 261 000e 14BF     		ite	ne
 262 0010 0120     		movne	r0, #1
 263 0012 0020     		moveq	r0, #0
 264 0014 08BD     		pop	{r3, pc}
 265              		.size	_Z18wizphy_getphypmodev, .-_Z18wizphy_getphypmodev
 266 0016 00BF     		.section	.text._Z12wizphy_resetv,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	_Z12wizphy_resetv
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv4-sp-d16
 274              		.type	_Z12wizphy_resetv, %function
 275              	_Z12wizphy_resetv:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 08B5     		push	{r3, lr}
 279 0002 4FF43850 		mov	r0, #11776
 280 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 281 000a 00F07F01 		and	r1, r0, #127
 282 000e 4FF43850 		mov	r0, #11776
 283 0012 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 284 0016 4FF43850 		mov	r0, #11776
 285 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
ARM GAS  /tmp/cctzCWWI.s 			page 6


 286 001e 60F07F01 		orn	r1, r0, #127
 287 0022 C9B2     		uxtb	r1, r1
 288 0024 4FF43850 		mov	r0, #11776
 289 0028 BDE80840 		pop	{r3, lr}
 290 002c FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 291              		.size	_Z12wizphy_resetv, .-_Z12wizphy_resetv
 292              		.section	.text._Z17wizphy_setphyconfP11wiz_PhyConf,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	_Z17wizphy_setphyconfP11wiz_PhyConf
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	_Z17wizphy_setphyconfP11wiz_PhyConf, %function
 301              	_Z17wizphy_setphyconfP11wiz_PhyConf:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304 0000 08B5     		push	{r3, lr}
 305 0002 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 306 0004 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 307 0006 012A     		cmp	r2, #1
 308 0008 14BF     		ite	ne
 309 000a 0021     		movne	r1, #0
 310 000c 4021     		moveq	r1, #64
 311 000e 012B     		cmp	r3, #1
 312 0010 1DD0     		beq	.L44
 313 0012 C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 314 0014 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 315 0016 012B     		cmp	r3, #1
 316 0018 0BD0     		beq	.L45
 317 001a 012A     		cmp	r2, #1
 318 001c 08BF     		it	eq
 319 001e 41F01001 		orreq	r1, r1, #16
 320 0022 4FF43850 		mov	r0, #11776
 321 0026 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 322 002a BDE80840 		pop	{r3, lr}
 323 002e FFF7FEBF 		b	_Z12wizphy_resetv
 324              	.L45:
 325 0032 012A     		cmp	r2, #1
 326 0034 0CBF     		ite	eq
 327 0036 41F01801 		orreq	r1, r1, #24
 328 003a 41F00801 		orrne	r1, r1, #8
 329 003e 4FF43850 		mov	r0, #11776
 330 0042 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 331 0046 BDE80840 		pop	{r3, lr}
 332 004a FFF7FEBF 		b	_Z12wizphy_resetv
 333              	.L44:
 334 004e 41F03801 		orr	r1, r1, #56
 335 0052 4FF43850 		mov	r0, #11776
 336 0056 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 337 005a BDE80840 		pop	{r3, lr}
 338 005e FFF7FEBF 		b	_Z12wizphy_resetv
 339              		.size	_Z17wizphy_setphyconfP11wiz_PhyConf, .-_Z17wizphy_setphyconfP11wiz_PhyConf
 340 0062 00BF     		.section	.text._Z17wizphy_getphyconfP11wiz_PhyConf,"ax",%progbits
 341              		.align	1
 342              		.p2align 2,,3
ARM GAS  /tmp/cctzCWWI.s 			page 7


 343              		.global	_Z17wizphy_getphyconfP11wiz_PhyConf
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu fpv4-sp-d16
 348              		.type	_Z17wizphy_getphyconfP11wiz_PhyConf, %function
 349              	_Z17wizphy_getphyconfP11wiz_PhyConf:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352 0000 10B5     		push	{r4, lr}
 353 0002 0446     		mov	r4, r0
 354 0004 4FF43850 		mov	r0, #11776
 355 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 356 000c C0F38013 		ubfx	r3, r0, #6, #1
 357 0010 00F03800 		and	r0, r0, #56
 358 0014 2028     		cmp	r0, #32
 359 0016 2370     		strb	r3, [r4]
 360 0018 21D0     		beq	.L48
 361 001a 3828     		cmp	r0, #56
 362 001c 1FD0     		beq	.L48
 363 001e 0023     		movs	r3, #0
 364 0020 6370     		strb	r3, [r4, #1]
 365              	.L49:
 366 0022 A0F11003 		sub	r3, r0, #16
 367 0026 DBB2     		uxtb	r3, r3
 368 0028 102B     		cmp	r3, #16
 369 002a 07D8     		bhi	.L50
 370 002c 0122     		movs	r2, #1
 371 002e 02FA03F3 		lsl	r3, r2, r3
 372 0032 03F00133 		and	r3, r3, #16843009
 373 0036 23F08073 		bic	r3, r3, #16777216
 374 003a 9BB9     		cbnz	r3, .L69
 375              	.L50:
 376 003c 0023     		movs	r3, #0
 377 003e A370     		strb	r3, [r4, #2]
 378              	.L51:
 379 0040 0838     		subs	r0, r0, #8
 380 0042 C0B2     		uxtb	r0, r0
 381 0044 1828     		cmp	r0, #24
 382 0046 07D8     		bhi	.L52
 383 0048 0123     		movs	r3, #1
 384 004a 03FA00F0 		lsl	r0, r3, r0
 385 004e 00F00130 		and	r0, r0, #16843009
 386 0052 20F48070 		bic	r0, r0, #256
 387 0056 00B9     		cbnz	r0, .L68
 388              	.L52:
 389 0058 0023     		movs	r3, #0
 390              	.L68:
 391 005a E370     		strb	r3, [r4, #3]
 392 005c 10BD     		pop	{r4, pc}
 393              	.L48:
 394 005e 0123     		movs	r3, #1
 395 0060 6370     		strb	r3, [r4, #1]
 396 0062 DEE7     		b	.L49
 397              	.L69:
 398 0064 A270     		strb	r2, [r4, #2]
 399 0066 EBE7     		b	.L51
ARM GAS  /tmp/cctzCWWI.s 			page 8


 400              		.size	_Z17wizphy_getphyconfP11wiz_PhyConf, .-_Z17wizphy_getphyconfP11wiz_PhyConf
 401              		.section	.text._Z17wizphy_getphystatP11wiz_PhyConf,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	_Z17wizphy_getphystatP11wiz_PhyConf
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_Z17wizphy_getphystatP11wiz_PhyConf, %function
 410              	_Z17wizphy_getphystatP11wiz_PhyConf:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413 0000 10B5     		push	{r4, lr}
 414 0002 0446     		mov	r4, r0
 415 0004 4FF43850 		mov	r0, #11776
 416 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 417 000c C0F38003 		ubfx	r3, r0, #2, #1
 418 0010 C0F34000 		ubfx	r0, r0, #1, #1
 419 0014 E370     		strb	r3, [r4, #3]
 420 0016 A070     		strb	r0, [r4, #2]
 421 0018 10BD     		pop	{r4, pc}
 422              		.size	_Z17wizphy_getphystatP11wiz_PhyConf, .-_Z17wizphy_getphystatP11wiz_PhyConf
 423 001a 00BF     		.section	.text._Z18wizphy_setphypmodeh,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	_Z18wizphy_setphypmodeh
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	_Z18wizphy_setphypmodeh, %function
 432              	_Z18wizphy_setphypmodeh:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435 0000 10B5     		push	{r4, lr}
 436 0002 0446     		mov	r4, r0
 437 0004 4FF43850 		mov	r0, #11776
 438 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 439 000c 4306     		lsls	r3, r0, #25
 440 000e 29D5     		bpl	.L75
 441 0010 012C     		cmp	r4, #1
 442 0012 00F0C700 		and	r0, r0, #199
 443 0016 12D0     		beq	.L77
 444 0018 40F03801 		orr	r1, r0, #56
 445 001c 4FF43850 		mov	r0, #11776
 446 0020 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 447 0024 FFF7FEFF 		bl	_Z12wizphy_resetv
 448 0028 4FF43850 		mov	r0, #11776
 449 002c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 450 0030 10F0380F 		tst	r0, #56
 451 0034 0CBF     		ite	eq
 452 0036 4FF0FF30 		moveq	r0, #-1
 453 003a 0020     		movne	r0, #0
 454 003c 10BD     		pop	{r4, pc}
 455              	.L77:
 456 003e 40F03001 		orr	r1, r0, #48
ARM GAS  /tmp/cctzCWWI.s 			page 9


 457 0042 4FF43850 		mov	r0, #11776
 458 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 459 004a FFF7FEFF 		bl	_Z12wizphy_resetv
 460 004e 4FF43850 		mov	r0, #11776
 461 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 462 0056 10F0300F 		tst	r0, #48
 463 005a 0CBF     		ite	eq
 464 005c 4FF0FF30 		moveq	r0, #-1
 465 0060 0020     		movne	r0, #0
 466 0062 10BD     		pop	{r4, pc}
 467              	.L75:
 468 0064 4FF0FF30 		mov	r0, #-1
 469 0068 10BD     		pop	{r4, pc}
 470              		.size	_Z18wizphy_setphypmodeh, .-_Z18wizphy_setphypmodeh
 471 006a 00BF     		.section	.text._Z10ctlwizchip15ctlwizchip_typePv,"ax",%progbits
 472              		.align	1
 473              		.p2align 2,,3
 474              		.global	_Z10ctlwizchip15ctlwizchip_typePv
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu fpv4-sp-d16
 479              		.type	_Z10ctlwizchip15ctlwizchip_typePv, %function
 480              	_Z10ctlwizchip15ctlwizchip_typePv:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483 0000 38B5     		push	{r3, r4, r5, lr}
 484 0002 0C46     		mov	r4, r1
 485 0004 0F28     		cmp	r0, #15
 486 0006 73D8     		bhi	.L98
 487 0008 DFE800F0 		tbb	[pc, r0]
 488              	.L81:
 489 000c 28       		.byte	(.L80-.L81)/2
 490 000d 2C       		.byte	(.L82-.L81)/2
 491 000e 33       		.byte	(.L83-.L81)/2
 492 000f 08       		.byte	(.L84-.L81)/2
 493 0010 38       		.byte	(.L85-.L81)/2
 494 0011 3D       		.byte	(.L86-.L81)/2
 495 0012 42       		.byte	(.L87-.L81)/2
 496 0013 4F       		.byte	(.L88-.L81)/2
 497 0014 5D       		.byte	(.L89-.L81)/2
 498 0015 64       		.byte	(.L90-.L81)/2
 499 0016 68       		.byte	(.L91-.L81)/2
 500 0017 6D       		.byte	(.L92-.L81)/2
 501 0018 0B       		.byte	(.L101-.L81)/2
 502 0019 0E       		.byte	(.L94-.L81)/2
 503 001a 13       		.byte	(.L95-.L81)/2
 504 001b 1F       		.byte	(.L96-.L81)/2
 505              		.p2align 1
 506              	.L84:
 507 001c 0888     		ldrh	r0, [r1]
 508 001e FFF7FEFF 		bl	_Z20wizchip_clrinterrupt9intr_kind
 509              	.L101:
 510 0022 0023     		movs	r3, #0
 511              	.L79:
 512 0024 1846     		mov	r0, r3
 513 0026 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  /tmp/cctzCWWI.s 			page 10


 514              	.L94:
 515 0028 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 516 002a BDE83840 		pop	{r3, r4, r5, lr}
 517 002e FFF7FEBF 		b	_Z18wizphy_setphypmodeh
 518              	.L95:
 519 0032 4FF43850 		mov	r0, #11776
 520 0036 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 521 003a 10F0300F 		tst	r0, #48
 522 003e 14BF     		ite	ne
 523 0040 0123     		movne	r3, #1
 524 0042 0023     		moveq	r3, #0
 525 0044 2370     		strb	r3, [r4]
 526 0046 0023     		movs	r3, #0
 527 0048 ECE7     		b	.L79
 528              	.L96:
 529 004a 4FF43850 		mov	r0, #11776
 530 004e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 531 0052 00F00100 		and	r0, r0, #1
 532 0056 2070     		strb	r0, [r4]
 533 0058 0023     		movs	r3, #0
 534 005a E3E7     		b	.L79
 535              	.L80:
 536 005c FFF7FEFF 		bl	_Z16wizchip_sw_resetv
 537 0060 0023     		movs	r3, #0
 538 0062 DFE7     		b	.L79
 539              	.L82:
 540 0064 01B1     		cbz	r1, .L97
 541 0066 0831     		adds	r1, r1, #8
 542              	.L97:
 543 0068 2046     		mov	r0, r4
 544 006a BDE83840 		pop	{r3, r4, r5, lr}
 545 006e FFF7FEBF 		b	_Z12wizchip_initPKhS0_
 546              	.L83:
 547 0072 FFF7FEFF 		bl	_Z20wizchip_getinterruptv
 548 0076 0023     		movs	r3, #0
 549 0078 2080     		strh	r0, [r4]	@ movhi
 550 007a D3E7     		b	.L79
 551              	.L85:
 552 007c 0888     		ldrh	r0, [r1]
 553 007e FFF7FEFF 		bl	_Z24wizchip_setinterruptmask9intr_kind
 554 0082 0023     		movs	r3, #0
 555 0084 CEE7     		b	.L79
 556              	.L86:
 557 0086 FFF7FEFF 		bl	_Z24wizchip_getinterruptmaskv
 558 008a 0023     		movs	r3, #0
 559 008c 2080     		strh	r0, [r4]	@ movhi
 560 008e C9E7     		b	.L79
 561              	.L87:
 562 0090 0C88     		ldrh	r4, [r1]
 563 0092 4FF49850 		mov	r0, #4864
 564 0096 210A     		lsrs	r1, r4, #8
 565 0098 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 566 009c E1B2     		uxtb	r1, r4
 567 009e 4FF4A050 		mov	r0, #5120
 568 00a2 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 569 00a6 0023     		movs	r3, #0
 570 00a8 BCE7     		b	.L79
ARM GAS  /tmp/cctzCWWI.s 			page 11


 571              	.L88:
 572 00aa 4FF49850 		mov	r0, #4864
 573 00ae FFF7FEFF 		bl	_Z12WIZCHIP_READm
 574 00b2 0546     		mov	r5, r0
 575 00b4 4FF4A050 		mov	r0, #5120
 576 00b8 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 577 00bc 40EA0520 		orr	r0, r0, r5, lsl #8
 578 00c0 2080     		strh	r0, [r4]	@ movhi
 579 00c2 0023     		movs	r3, #0
 580 00c4 AEE7     		b	.L79
 581              	.L89:
 582 00c6 0C4B     		ldr	r3, .L102
 583 00c8 1868     		ldr	r0, [r3]
 584 00ca 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 585 00cc 8B80     		strh	r3, [r1, #4]	@ unaligned
 586 00ce 0860     		str	r0, [r1]	@ unaligned
 587 00d0 0023     		movs	r3, #0
 588 00d2 A7E7     		b	.L79
 589              	.L90:
 590 00d4 FFF7FEFF 		bl	_Z12wizphy_resetv
 591 00d8 0023     		movs	r3, #0
 592 00da A3E7     		b	.L79
 593              	.L91:
 594 00dc 0846     		mov	r0, r1
 595 00de FFF7FEFF 		bl	_Z17wizphy_setphyconfP11wiz_PhyConf
 596 00e2 0023     		movs	r3, #0
 597 00e4 9EE7     		b	.L79
 598              	.L92:
 599 00e6 0846     		mov	r0, r1
 600 00e8 FFF7FEFF 		bl	_Z17wizphy_getphyconfP11wiz_PhyConf
 601 00ec 0023     		movs	r3, #0
 602 00ee 99E7     		b	.L79
 603              	.L98:
 604 00f0 4FF0FF33 		mov	r3, #-1
 605 00f4 96E7     		b	.L79
 606              	.L103:
 607 00f6 00BF     		.align	2
 608              	.L102:
 609 00f8 00000000 		.word	.LC0
 610              		.size	_Z10ctlwizchip15ctlwizchip_typePv, .-_Z10ctlwizchip15ctlwizchip_typePv
 611              		.section	.text._Z18wizchip_setnetinfoP11wiz_NetInfo,"ax",%progbits
 612              		.align	1
 613              		.p2align 2,,3
 614              		.global	_Z18wizchip_setnetinfoP11wiz_NetInfo
 615              		.syntax unified
 616              		.thumb
 617              		.thumb_func
 618              		.fpu fpv4-sp-d16
 619              		.type	_Z18wizchip_setnetinfoP11wiz_NetInfo, %function
 620              	_Z18wizchip_setnetinfoP11wiz_NetInfo:
 621              		@ args = 0, pretend = 0, frame = 0
 622              		@ frame_needed = 0, uses_anonymous_args = 0
 623 0000 70B5     		push	{r4, r5, r6, lr}
 624 0002 0146     		mov	r1, r0
 625 0004 0446     		mov	r4, r0
 626 0006 0622     		movs	r2, #6
 627 0008 4FF41060 		mov	r0, #2304
ARM GAS  /tmp/cctzCWWI.s 			page 12


 628 000c FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 629 0010 04F10E01 		add	r1, r4, #14
 630 0014 0422     		movs	r2, #4
 631 0016 4FF48070 		mov	r0, #256
 632 001a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 633 001e 04F10A01 		add	r1, r4, #10
 634 0022 0422     		movs	r2, #4
 635 0024 4FF4A060 		mov	r0, #1280
 636 0028 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 637 002c A11D     		adds	r1, r4, #6
 638 002e 0422     		movs	r2, #4
 639 0030 4FF47060 		mov	r0, #3840
 640 0034 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 641 0038 064B     		ldr	r3, .L106
 642 003a A17C     		ldrb	r1, [r4, #18]	@ zero_extendqisi2
 643 003c 064A     		ldr	r2, .L106+4
 644 003e E67C     		ldrb	r6, [r4, #19]	@ zero_extendqisi2
 645 0040 257D     		ldrb	r5, [r4, #20]	@ zero_extendqisi2
 646 0042 607D     		ldrb	r0, [r4, #21]	@ zero_extendqisi2
 647 0044 1970     		strb	r1, [r3]
 648 0046 5E70     		strb	r6, [r3, #1]
 649 0048 A17D     		ldrb	r1, [r4, #22]	@ zero_extendqisi2
 650 004a 9D70     		strb	r5, [r3, #2]
 651 004c D870     		strb	r0, [r3, #3]
 652 004e 1170     		strb	r1, [r2]
 653 0050 70BD     		pop	{r4, r5, r6, pc}
 654              	.L107:
 655 0052 00BF     		.align	2
 656              	.L106:
 657 0054 00000000 		.word	.LANCHOR0
 658 0058 00000000 		.word	.LANCHOR1
 659              		.size	_Z18wizchip_setnetinfoP11wiz_NetInfo, .-_Z18wizchip_setnetinfoP11wiz_NetInfo
 660              		.section	.text._Z18wizchip_getnetinfoP11wiz_NetInfo,"ax",%progbits
 661              		.align	1
 662              		.p2align 2,,3
 663              		.global	_Z18wizchip_getnetinfoP11wiz_NetInfo
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_Z18wizchip_getnetinfoP11wiz_NetInfo, %function
 669              	_Z18wizchip_getnetinfoP11wiz_NetInfo:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 38B5     		push	{r3, r4, r5, lr}
 673 0002 0146     		mov	r1, r0
 674 0004 0446     		mov	r4, r0
 675 0006 0622     		movs	r2, #6
 676 0008 4FF41060 		mov	r0, #2304
 677 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 678 0010 04F10E01 		add	r1, r4, #14
 679 0014 0422     		movs	r2, #4
 680 0016 4FF48070 		mov	r0, #256
 681 001a FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 682 001e 04F10A01 		add	r1, r4, #10
 683 0022 0422     		movs	r2, #4
 684 0024 4FF4A060 		mov	r0, #1280
ARM GAS  /tmp/cctzCWWI.s 			page 13


 685 0028 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 686 002c A11D     		adds	r1, r4, #6
 687 002e 0422     		movs	r2, #4
 688 0030 4FF47060 		mov	r0, #3840
 689 0034 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 690 0038 064B     		ldr	r3, .L110
 691 003a 074A     		ldr	r2, .L110+4
 692 003c 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 693 003e 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 694 0040 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 695 0042 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 696 0044 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 697 0046 A574     		strb	r5, [r4, #18]
 698 0048 E074     		strb	r0, [r4, #19]
 699 004a 2175     		strb	r1, [r4, #20]
 700 004c 6375     		strb	r3, [r4, #21]
 701 004e A275     		strb	r2, [r4, #22]
 702 0050 38BD     		pop	{r3, r4, r5, pc}
 703              	.L111:
 704 0052 00BF     		.align	2
 705              	.L110:
 706 0054 00000000 		.word	.LANCHOR0
 707 0058 00000000 		.word	.LANCHOR1
 708              		.size	_Z18wizchip_getnetinfoP11wiz_NetInfo, .-_Z18wizchip_getnetinfoP11wiz_NetInfo
 709              		.section	.text._Z18wizchip_setnetmode12netmode_type,"ax",%progbits
 710              		.align	1
 711              		.p2align 2,,3
 712              		.global	_Z18wizchip_setnetmode12netmode_type
 713              		.syntax unified
 714              		.thumb
 715              		.thumb_func
 716              		.fpu fpv4-sp-d16
 717              		.type	_Z18wizchip_setnetmode12netmode_type, %function
 718              	_Z18wizchip_setnetmode12netmode_type:
 719              		@ args = 0, pretend = 0, frame = 0
 720              		@ frame_needed = 0, uses_anonymous_args = 0
 721 0000 38B5     		push	{r3, r4, r5, lr}
 722 0002 30F03A05 		bics	r5, r0, #58
 723 0006 0BD1     		bne	.L114
 724 0008 0446     		mov	r4, r0
 725 000a 2846     		mov	r0, r5
 726 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 727 0010 44EA0001 		orr	r1, r4, r0
 728 0014 C9B2     		uxtb	r1, r1
 729 0016 2846     		mov	r0, r5
 730 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 731 001c 2846     		mov	r0, r5
 732 001e 38BD     		pop	{r3, r4, r5, pc}
 733              	.L114:
 734 0020 4FF0FF30 		mov	r0, #-1
 735 0024 38BD     		pop	{r3, r4, r5, pc}
 736              		.size	_Z18wizchip_setnetmode12netmode_type, .-_Z18wizchip_setnetmode12netmode_type
 737 0026 00BF     		.section	.text._Z10ctlnetwork15ctlnetwork_typePv,"ax",%progbits
 738              		.align	1
 739              		.p2align 2,,3
 740              		.global	_Z10ctlnetwork15ctlnetwork_typePv
 741              		.syntax unified
ARM GAS  /tmp/cctzCWWI.s 			page 14


 742              		.thumb
 743              		.thumb_func
 744              		.fpu fpv4-sp-d16
 745              		.type	_Z10ctlnetwork15ctlnetwork_typePv, %function
 746              	_Z10ctlnetwork15ctlnetwork_typePv:
 747              		@ args = 0, pretend = 0, frame = 0
 748              		@ frame_needed = 0, uses_anonymous_args = 0
 749 0000 38B5     		push	{r3, r4, r5, lr}
 750 0002 0C46     		mov	r4, r1
 751 0004 0528     		cmp	r0, #5
 752 0006 43D8     		bhi	.L125
 753 0008 DFE800F0 		tbb	[pc, r0]
 754              	.L119:
 755 000c 17       		.byte	(.L118-.L119)/2
 756 000d 1D       		.byte	(.L120-.L119)/2
 757 000e 23       		.byte	(.L121-.L119)/2
 758 000f 28       		.byte	(.L122-.L119)/2
 759 0010 2F       		.byte	(.L123-.L119)/2
 760 0011 03       		.byte	(.L124-.L119)/2
 761              		.p2align 1
 762              	.L124:
 763 0012 4FF4D850 		mov	r0, #6912
 764 0016 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 765 001a 2070     		strb	r0, [r4]
 766 001c 4FF4C850 		mov	r0, #6400
 767 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 768 0024 0546     		mov	r5, r0
 769 0026 4FF4D050 		mov	r0, #6656
 770 002a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 771 002e 00EB0520 		add	r0, r0, r5, lsl #8
 772 0032 6080     		strh	r0, [r4, #2]	@ movhi
 773 0034 0023     		movs	r3, #0
 774              	.L117:
 775 0036 1846     		mov	r0, r3
 776 0038 38BD     		pop	{r3, r4, r5, pc}
 777              	.L118:
 778 003a 0846     		mov	r0, r1
 779 003c FFF7FEFF 		bl	_Z18wizchip_setnetinfoP11wiz_NetInfo
 780 0040 0023     		movs	r3, #0
 781 0042 1846     		mov	r0, r3
 782 0044 38BD     		pop	{r3, r4, r5, pc}
 783              	.L120:
 784 0046 0846     		mov	r0, r1
 785 0048 FFF7FEFF 		bl	_Z18wizchip_getnetinfoP11wiz_NetInfo
 786 004c 0023     		movs	r3, #0
 787 004e 1846     		mov	r0, r3
 788 0050 38BD     		pop	{r3, r4, r5, pc}
 789              	.L121:
 790 0052 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 791 0054 BDE83840 		pop	{r3, r4, r5, lr}
 792 0058 FFF7FEBF 		b	_Z18wizchip_setnetmode12netmode_type
 793              	.L122:
 794 005c 0020     		movs	r0, #0
 795 005e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 796 0062 0023     		movs	r3, #0
 797 0064 2070     		strb	r0, [r4]
 798 0066 1846     		mov	r0, r3
ARM GAS  /tmp/cctzCWWI.s 			page 15


 799 0068 38BD     		pop	{r3, r4, r5, pc}
 800              	.L123:
 801 006a 0978     		ldrb	r1, [r1]	@ zero_extendqisi2
 802 006c 4FF4D850 		mov	r0, #6912
 803 0070 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 804 0074 6488     		ldrh	r4, [r4, #2]
 805 0076 4FF4C850 		mov	r0, #6400
 806 007a 210A     		lsrs	r1, r4, #8
 807 007c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 808 0080 E1B2     		uxtb	r1, r4
 809 0082 4FF4D050 		mov	r0, #6656
 810 0086 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 811 008a 0023     		movs	r3, #0
 812 008c 1846     		mov	r0, r3
 813 008e 38BD     		pop	{r3, r4, r5, pc}
 814              	.L125:
 815 0090 4FF0FF33 		mov	r3, #-1
 816 0094 CFE7     		b	.L117
 817              		.size	_Z10ctlnetwork15ctlnetwork_typePv, .-_Z10ctlnetwork15ctlnetwork_typePv
 818 0096 00BF     		.section	.text._Z18wizchip_getnetmodev,"ax",%progbits
 819              		.align	1
 820              		.p2align 2,,3
 821              		.global	_Z18wizchip_getnetmodev
 822              		.syntax unified
 823              		.thumb
 824              		.thumb_func
 825              		.fpu fpv4-sp-d16
 826              		.type	_Z18wizchip_getnetmodev, %function
 827              	_Z18wizchip_getnetmodev:
 828              		@ args = 0, pretend = 0, frame = 0
 829              		@ frame_needed = 0, uses_anonymous_args = 0
 830              		@ link register save eliminated.
 831 0000 0020     		movs	r0, #0
 832 0002 FFF7FEBF 		b	_Z12WIZCHIP_READm
 833              		.size	_Z18wizchip_getnetmodev, .-_Z18wizchip_getnetmodev
 834 0006 00BF     		.section	.text._Z18wizchip_settimeoutP14wiz_NetTimeout,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.global	_Z18wizchip_settimeoutP14wiz_NetTimeout
 838              		.syntax unified
 839              		.thumb
 840              		.thumb_func
 841              		.fpu fpv4-sp-d16
 842              		.type	_Z18wizchip_settimeoutP14wiz_NetTimeout, %function
 843              	_Z18wizchip_settimeoutP14wiz_NetTimeout:
 844              		@ args = 0, pretend = 0, frame = 0
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846 0000 10B5     		push	{r4, lr}
 847 0002 0446     		mov	r4, r0
 848 0004 4FF4D850 		mov	r0, #6912
 849 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 850 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 851 000e 6488     		ldrh	r4, [r4, #2]
 852 0010 4FF4C850 		mov	r0, #6400
 853 0014 210A     		lsrs	r1, r4, #8
 854 0016 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 855 001a E1B2     		uxtb	r1, r4
ARM GAS  /tmp/cctzCWWI.s 			page 16


 856 001c 4FF4D050 		mov	r0, #6656
 857 0020 BDE81040 		pop	{r4, lr}
 858 0024 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 859              		.size	_Z18wizchip_settimeoutP14wiz_NetTimeout, .-_Z18wizchip_settimeoutP14wiz_NetTimeout
 860              		.section	.text._Z18wizchip_gettimeoutP14wiz_NetTimeout,"ax",%progbits
 861              		.align	1
 862              		.p2align 2,,3
 863              		.global	_Z18wizchip_gettimeoutP14wiz_NetTimeout
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu fpv4-sp-d16
 868              		.type	_Z18wizchip_gettimeoutP14wiz_NetTimeout, %function
 869              	_Z18wizchip_gettimeoutP14wiz_NetTimeout:
 870              		@ args = 0, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872 0000 38B5     		push	{r3, r4, r5, lr}
 873 0002 0546     		mov	r5, r0
 874 0004 4FF4D850 		mov	r0, #6912
 875 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 876 000c 2870     		strb	r0, [r5]
 877 000e 4FF4C850 		mov	r0, #6400
 878 0012 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 879 0016 0446     		mov	r4, r0
 880 0018 4FF4D050 		mov	r0, #6656
 881 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 882 0020 00EB0420 		add	r0, r0, r4, lsl #8
 883 0024 6880     		strh	r0, [r5, #2]	@ movhi
 884 0026 38BD     		pop	{r3, r4, r5, pc}
 885              		.size	_Z18wizchip_gettimeoutP14wiz_NetTimeout, .-_Z18wizchip_gettimeoutP14wiz_NetTimeout
 886              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 887              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 888              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 889              	_ZL28cpu_irq_prev_interrupt_state:
 890 0000 00       		.space	1
 891              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 892              		.align	2
 893              		.type	_ZL32cpu_irq_critical_section_counter, %object
 894              		.size	_ZL32cpu_irq_critical_section_counter, 4
 895              	_ZL32cpu_irq_critical_section_counter:
 896 0000 00000000 		.space	4
 897              		.section	.bss._ZL5_DNS_,"aw",%nobits
 898              		.align	2
 899              		.set	.LANCHOR0,. + 0
 900              		.type	_ZL5_DNS_, %object
 901              		.size	_ZL5_DNS_, 4
 902              	_ZL5_DNS_:
 903 0000 00000000 		.space	4
 904              		.section	.bss._ZL6_DHCP_,"aw",%nobits
 905              		.set	.LANCHOR1,. + 0
 906              		.type	_ZL6_DHCP_, %object
 907              		.size	_ZL6_DHCP_, 1
 908              	_ZL6_DHCP_:
 909 0000 00       		.space	1
 910              		.section	.rodata._Z10ctlwizchip15ctlwizchip_typePv.str1.4,"aMS",%progbits,1
 911              		.align	2
 912              	.LC0:
ARM GAS  /tmp/cctzCWWI.s 			page 17


 913 0000 77353530 		.ascii	"w5500\000"
 913      3000
 914              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
