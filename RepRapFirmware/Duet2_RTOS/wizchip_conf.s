ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 1


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
  14              		.text
  15              		.section	.text._Z16wizchip_sw_resetv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z16wizchip_sw_resetv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z16wizchip_sw_resetv, %function
  24              	_Z16wizchip_sw_resetv:
  25              		@ args = 0, pretend = 0, frame = 24
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 86B0     		sub	sp, sp, #24
  29 0004 0622     		movs	r2, #6
  30 0006 0024     		movs	r4, #0
  31 0008 04A9     		add	r1, sp, #16
  32 000a 4FF41060 		mov	r0, #2304
  33 000e CDE90144 		strd	r4, r4, [sp, #4]
  34 0012 0394     		str	r4, [sp, #12]
  35 0014 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  36 0018 01A9     		add	r1, sp, #4
  37 001a 4FF48070 		mov	r0, #256
  38 001e FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
  39 0022 02A9     		add	r1, sp, #8
  40 0024 4FF4A060 		mov	r0, #1280
  41 0028 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
  42 002c 03A9     		add	r1, sp, #12
  43 002e 4FF47060 		mov	r0, #3840
  44 0032 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
  45 0036 2046     		mov	r0, r4
  46 0038 8021     		movs	r1, #128
  47 003a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  48 003e 2046     		mov	r0, r4
  49 0040 FFF7FEFF 		bl	_Z12WIZCHIP_READm
  50 0044 0622     		movs	r2, #6
  51 0046 04A9     		add	r1, sp, #16
  52 0048 4FF41060 		mov	r0, #2304
  53 004c FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  54 0050 01A9     		add	r1, sp, #4
  55 0052 4FF48070 		mov	r0, #256
  56 0056 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  57 005a 02A9     		add	r1, sp, #8
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 2


  58 005c 4FF4A060 		mov	r0, #1280
  59 0060 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  60 0064 03A9     		add	r1, sp, #12
  61 0066 4FF47060 		mov	r0, #3840
  62 006a FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
  63 006e 06B0     		add	sp, sp, #24
  64              		@ sp needed
  65 0070 10BD     		pop	{r4, pc}
  66              		.size	_Z16wizchip_sw_resetv, .-_Z16wizchip_sw_resetv
  67 0072 00BF     		.section	.text._Z12wizchip_initPKhS0_,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	_Z12wizchip_initPKhS0_
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_Z12wizchip_initPKhS0_, %function
  76              	_Z12wizchip_initPKhS0_:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  80 0002 0446     		mov	r4, r0
  81 0004 0E46     		mov	r6, r1
  82 0006 FFF7FEFF 		bl	_ZN6WizSpi4InitEv
  83 000a FFF7FEFF 		bl	_Z16wizchip_sw_resetv
  84 000e BCB1     		cbz	r4, .L5
  85 0010 651E     		subs	r5, r4, #1
  86 0012 E01D     		adds	r0, r4, #7
  87 0014 2A46     		mov	r2, r5
  88 0016 0023     		movs	r3, #0
  89              	.L7:
  90 0018 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
  91 001c 0B44     		add	r3, r3, r1
  92 001e 5BB2     		sxtb	r3, r3
  93 0020 102B     		cmp	r3, #16
  94 0022 28DC     		bgt	.L6
  95 0024 9042     		cmp	r0, r2
  96 0026 F7D1     		bne	.L7
  97 0028 41F60874 		movw	r4, #7944
  98 002c 42F20807 		movw	r7, #8200
  99              	.L8:
 100 0030 2046     		mov	r0, r4
 101 0032 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 102 0036 2034     		adds	r4, r4, #32
 103 0038 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 104 003c BC42     		cmp	r4, r7
 105 003e F7D1     		bne	.L8
 106              	.L5:
 107 0040 BEB1     		cbz	r6, .L11
 108 0042 751E     		subs	r5, r6, #1
 109 0044 2A46     		mov	r2, r5
 110 0046 0736     		adds	r6, r6, #7
 111 0048 0023     		movs	r3, #0
 112              	.L13:
 113 004a 12F8011F 		ldrb	r1, [r2, #1]!	@ zero_extendqisi2
 114 004e 0B44     		add	r3, r3, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 3


 115 0050 5BB2     		sxtb	r3, r3
 116 0052 102B     		cmp	r3, #16
 117 0054 0FDC     		bgt	.L6
 118 0056 9642     		cmp	r6, r2
 119 0058 F7D1     		bne	.L13
 120 005a 41F60864 		movw	r4, #7688
 121 005e 41F60876 		movw	r6, #7944
 122              	.L12:
 123 0062 2046     		mov	r0, r4
 124 0064 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 125 0068 2034     		adds	r4, r4, #32
 126 006a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 127 006e B442     		cmp	r4, r6
 128 0070 F7D1     		bne	.L12
 129              	.L11:
 130 0072 0020     		movs	r0, #0
 131 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 132              	.L6:
 133 0076 4FF0FF30 		mov	r0, #-1
 134 007a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 135              		.size	_Z12wizchip_initPKhS0_, .-_Z12wizchip_initPKhS0_
 136              		.section	.text._Z20wizchip_clrinterrupt9intr_kind,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_Z20wizchip_clrinterrupt9intr_kind
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_Z20wizchip_clrinterrupt9intr_kind, %function
 145              	_Z20wizchip_clrinterrupt9intr_kind:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 10B5     		push	{r4, lr}
 149 0002 00F0F001 		and	r1, r0, #240
 150 0006 0446     		mov	r4, r0
 151 0008 4FF4A850 		mov	r0, #5376
 152 000c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 153 0010 210A     		lsrs	r1, r4, #8
 154 0012 4FF4B850 		mov	r0, #5888
 155 0016 BDE81040 		pop	{r4, lr}
 156 001a FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 157              		.size	_Z20wizchip_clrinterrupt9intr_kind, .-_Z20wizchip_clrinterrupt9intr_kind
 158 001e 00BF     		.section	.text._Z20wizchip_getinterruptv,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_Z20wizchip_getinterruptv
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_Z20wizchip_getinterruptv, %function
 167              	_Z20wizchip_getinterruptv:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170 0000 10B5     		push	{r4, lr}
 171 0002 4FF4A850 		mov	r0, #5376
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 4


 172 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 173 000a 0446     		mov	r4, r0
 174 000c 4FF4B850 		mov	r0, #5888
 175 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 176 0014 04F0F004 		and	r4, r4, #240
 177 0018 44EA0020 		orr	r0, r4, r0, lsl #8
 178 001c 80B2     		uxth	r0, r0
 179 001e 10BD     		pop	{r4, pc}
 180              		.size	_Z20wizchip_getinterruptv, .-_Z20wizchip_getinterruptv
 181              		.section	.text._Z24wizchip_setinterruptmask9intr_kind,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	_Z24wizchip_setinterruptmask9intr_kind
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	_Z24wizchip_setinterruptmask9intr_kind, %function
 190              	_Z24wizchip_setinterruptmask9intr_kind:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193 0000 10B5     		push	{r4, lr}
 194 0002 C1B2     		uxtb	r1, r0
 195 0004 0446     		mov	r4, r0
 196 0006 4FF4B050 		mov	r0, #5632
 197 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 198 000e 210A     		lsrs	r1, r4, #8
 199 0010 4FF4C050 		mov	r0, #6144
 200 0014 BDE81040 		pop	{r4, lr}
 201 0018 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 202              		.size	_Z24wizchip_setinterruptmask9intr_kind, .-_Z24wizchip_setinterruptmask9intr_kind
 203              		.section	.text._Z24wizchip_getinterruptmaskv,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	_Z24wizchip_getinterruptmaskv
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	_Z24wizchip_getinterruptmaskv, %function
 212              	_Z24wizchip_getinterruptmaskv:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215 0000 10B5     		push	{r4, lr}
 216 0002 4FF4B050 		mov	r0, #5632
 217 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 218 000a 0446     		mov	r4, r0
 219 000c 4FF4C050 		mov	r0, #6144
 220 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 221 0014 44EA0020 		orr	r0, r4, r0, lsl #8
 222 0018 80B2     		uxth	r0, r0
 223 001a 10BD     		pop	{r4, pc}
 224              		.size	_Z24wizchip_getinterruptmaskv, .-_Z24wizchip_getinterruptmaskv
 225              		.section	.text._Z17wizphy_getphylinkv,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_Z17wizphy_getphylinkv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_Z17wizphy_getphylinkv, %function
 234              	_Z17wizphy_getphylinkv:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 08B5     		push	{r3, lr}
 238 0002 4FF43850 		mov	r0, #11776
 239 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 240 000a 00F00100 		and	r0, r0, #1
 241 000e 08BD     		pop	{r3, pc}
 242              		.size	_Z17wizphy_getphylinkv, .-_Z17wizphy_getphylinkv
 243              		.section	.text._Z18wizphy_getphypmodev,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_Z18wizphy_getphypmodev
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	_Z18wizphy_getphypmodev, %function
 252              	_Z18wizphy_getphypmodev:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 08B5     		push	{r3, lr}
 256 0002 4FF43850 		mov	r0, #11776
 257 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 258 000a 10F0300F 		tst	r0, #48
 259 000e 14BF     		ite	ne
 260 0010 0120     		movne	r0, #1
 261 0012 0020     		moveq	r0, #0
 262 0014 08BD     		pop	{r3, pc}
 263              		.size	_Z18wizphy_getphypmodev, .-_Z18wizphy_getphypmodev
 264 0016 00BF     		.section	.text._Z12wizphy_resetv,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_Z12wizphy_resetv
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_Z12wizphy_resetv, %function
 273              	_Z12wizphy_resetv:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276 0000 08B5     		push	{r3, lr}
 277 0002 4FF43850 		mov	r0, #11776
 278 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 279 000a 00F07F01 		and	r1, r0, #127
 280 000e 4FF43850 		mov	r0, #11776
 281 0012 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 282 0016 4FF43850 		mov	r0, #11776
 283 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 284 001e 60F07F01 		orn	r1, r0, #127
 285 0022 C9B2     		uxtb	r1, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 6


 286 0024 4FF43850 		mov	r0, #11776
 287 0028 BDE80840 		pop	{r3, lr}
 288 002c FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 289              		.size	_Z12wizphy_resetv, .-_Z12wizphy_resetv
 290              		.section	.text._Z17wizphy_setphyconfP11wiz_PhyConf,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	_Z17wizphy_setphyconfP11wiz_PhyConf
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu fpv4-sp-d16
 298              		.type	_Z17wizphy_setphyconfP11wiz_PhyConf, %function
 299              	_Z17wizphy_setphyconfP11wiz_PhyConf:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302 0000 08B5     		push	{r3, lr}
 303 0002 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 304 0004 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 305 0006 012A     		cmp	r2, #1
 306 0008 14BF     		ite	ne
 307 000a 0021     		movne	r1, #0
 308 000c 4021     		moveq	r1, #64
 309 000e 012B     		cmp	r3, #1
 310 0010 1DD0     		beq	.L44
 311 0012 C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 312 0014 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 313 0016 012B     		cmp	r3, #1
 314 0018 0BD0     		beq	.L45
 315 001a 012A     		cmp	r2, #1
 316 001c 08BF     		it	eq
 317 001e 41F01001 		orreq	r1, r1, #16
 318 0022 4FF43850 		mov	r0, #11776
 319 0026 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 320 002a BDE80840 		pop	{r3, lr}
 321 002e FFF7FEBF 		b	_Z12wizphy_resetv
 322              	.L45:
 323 0032 012A     		cmp	r2, #1
 324 0034 0CBF     		ite	eq
 325 0036 41F01801 		orreq	r1, r1, #24
 326 003a 41F00801 		orrne	r1, r1, #8
 327 003e 4FF43850 		mov	r0, #11776
 328 0042 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 329 0046 BDE80840 		pop	{r3, lr}
 330 004a FFF7FEBF 		b	_Z12wizphy_resetv
 331              	.L44:
 332 004e 41F03801 		orr	r1, r1, #56
 333 0052 4FF43850 		mov	r0, #11776
 334 0056 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 335 005a BDE80840 		pop	{r3, lr}
 336 005e FFF7FEBF 		b	_Z12wizphy_resetv
 337              		.size	_Z17wizphy_setphyconfP11wiz_PhyConf, .-_Z17wizphy_setphyconfP11wiz_PhyConf
 338              		.section	.text._Z17wizphy_getphyconfP11wiz_PhyConf,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_Z17wizphy_getphyconfP11wiz_PhyConf
 342              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	_Z17wizphy_getphyconfP11wiz_PhyConf, %function
 347              	_Z17wizphy_getphyconfP11wiz_PhyConf:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 10B5     		push	{r4, lr}
 351 0002 0446     		mov	r4, r0
 352 0004 4FF43850 		mov	r0, #11776
 353 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 354 000c C0F38013 		ubfx	r3, r0, #6, #1
 355 0010 00F03800 		and	r0, r0, #56
 356 0014 2028     		cmp	r0, #32
 357 0016 2370     		strb	r3, [r4]
 358 0018 21D0     		beq	.L48
 359 001a 3828     		cmp	r0, #56
 360 001c 1FD0     		beq	.L48
 361 001e 0023     		movs	r3, #0
 362 0020 6370     		strb	r3, [r4, #1]
 363              	.L49:
 364 0022 A0F11003 		sub	r3, r0, #16
 365 0026 DBB2     		uxtb	r3, r3
 366 0028 102B     		cmp	r3, #16
 367 002a 07D8     		bhi	.L50
 368 002c 0122     		movs	r2, #1
 369 002e 02FA03F3 		lsl	r3, r2, r3
 370 0032 03F00133 		and	r3, r3, #16843009
 371 0036 23F08073 		bic	r3, r3, #16777216
 372 003a 9BB9     		cbnz	r3, .L69
 373              	.L50:
 374 003c 0023     		movs	r3, #0
 375 003e A370     		strb	r3, [r4, #2]
 376              	.L51:
 377 0040 0838     		subs	r0, r0, #8
 378 0042 C0B2     		uxtb	r0, r0
 379 0044 1828     		cmp	r0, #24
 380 0046 07D8     		bhi	.L52
 381 0048 0123     		movs	r3, #1
 382 004a 03FA00F0 		lsl	r0, r3, r0
 383 004e 00F00130 		and	r0, r0, #16843009
 384 0052 20F48070 		bic	r0, r0, #256
 385 0056 00B9     		cbnz	r0, .L68
 386              	.L52:
 387 0058 0023     		movs	r3, #0
 388              	.L68:
 389 005a E370     		strb	r3, [r4, #3]
 390 005c 10BD     		pop	{r4, pc}
 391              	.L48:
 392 005e 0123     		movs	r3, #1
 393 0060 6370     		strb	r3, [r4, #1]
 394 0062 DEE7     		b	.L49
 395              	.L69:
 396 0064 A270     		strb	r2, [r4, #2]
 397 0066 EBE7     		b	.L51
 398              		.size	_Z17wizphy_getphyconfP11wiz_PhyConf, .-_Z17wizphy_getphyconfP11wiz_PhyConf
 399              		.section	.text._Z17wizphy_getphystatP11wiz_PhyConf,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	_Z17wizphy_getphystatP11wiz_PhyConf
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu fpv4-sp-d16
 407              		.type	_Z17wizphy_getphystatP11wiz_PhyConf, %function
 408              	_Z17wizphy_getphystatP11wiz_PhyConf:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411 0000 10B5     		push	{r4, lr}
 412 0002 0446     		mov	r4, r0
 413 0004 4FF43850 		mov	r0, #11776
 414 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 415 000c C0F38003 		ubfx	r3, r0, #2, #1
 416 0010 C0F34000 		ubfx	r0, r0, #1, #1
 417 0014 E370     		strb	r3, [r4, #3]
 418 0016 A070     		strb	r0, [r4, #2]
 419 0018 10BD     		pop	{r4, pc}
 420              		.size	_Z17wizphy_getphystatP11wiz_PhyConf, .-_Z17wizphy_getphystatP11wiz_PhyConf
 421 001a 00BF     		.section	.text._Z18wizphy_setphypmodeh,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_Z18wizphy_setphypmodeh
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu fpv4-sp-d16
 429              		.type	_Z18wizphy_setphypmodeh, %function
 430              	_Z18wizphy_setphypmodeh:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433 0000 10B5     		push	{r4, lr}
 434 0002 0446     		mov	r4, r0
 435 0004 4FF43850 		mov	r0, #11776
 436 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 437 000c 4306     		lsls	r3, r0, #25
 438 000e 29D5     		bpl	.L75
 439 0010 012C     		cmp	r4, #1
 440 0012 00F0C700 		and	r0, r0, #199
 441 0016 12D0     		beq	.L77
 442 0018 40F03801 		orr	r1, r0, #56
 443 001c 4FF43850 		mov	r0, #11776
 444 0020 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 445 0024 FFF7FEFF 		bl	_Z12wizphy_resetv
 446 0028 4FF43850 		mov	r0, #11776
 447 002c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 448 0030 10F0380F 		tst	r0, #56
 449 0034 0CBF     		ite	eq
 450 0036 4FF0FF30 		moveq	r0, #-1
 451 003a 0020     		movne	r0, #0
 452 003c 10BD     		pop	{r4, pc}
 453              	.L77:
 454 003e 40F03001 		orr	r1, r0, #48
 455 0042 4FF43850 		mov	r0, #11776
 456 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 9


 457 004a FFF7FEFF 		bl	_Z12wizphy_resetv
 458 004e 4FF43850 		mov	r0, #11776
 459 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 460 0056 10F0300F 		tst	r0, #48
 461 005a 0CBF     		ite	eq
 462 005c 4FF0FF30 		moveq	r0, #-1
 463 0060 0020     		movne	r0, #0
 464 0062 10BD     		pop	{r4, pc}
 465              	.L75:
 466 0064 4FF0FF30 		mov	r0, #-1
 467 0068 10BD     		pop	{r4, pc}
 468              		.size	_Z18wizphy_setphypmodeh, .-_Z18wizphy_setphypmodeh
 469 006a 00BF     		.section	.text._Z10ctlwizchip15ctlwizchip_typePv,"ax",%progbits
 470              		.align	1
 471              		.p2align 2,,3
 472              		.global	_Z10ctlwizchip15ctlwizchip_typePv
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu fpv4-sp-d16
 477              		.type	_Z10ctlwizchip15ctlwizchip_typePv, %function
 478              	_Z10ctlwizchip15ctlwizchip_typePv:
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481 0000 38B5     		push	{r3, r4, r5, lr}
 482 0002 0C46     		mov	r4, r1
 483 0004 0F28     		cmp	r0, #15
 484 0006 73D8     		bhi	.L98
 485 0008 DFE800F0 		tbb	[pc, r0]
 486              	.L81:
 487 000c 28       		.byte	(.L80-.L81)/2
 488 000d 2C       		.byte	(.L82-.L81)/2
 489 000e 33       		.byte	(.L83-.L81)/2
 490 000f 08       		.byte	(.L84-.L81)/2
 491 0010 38       		.byte	(.L85-.L81)/2
 492 0011 3D       		.byte	(.L86-.L81)/2
 493 0012 42       		.byte	(.L87-.L81)/2
 494 0013 4F       		.byte	(.L88-.L81)/2
 495 0014 5D       		.byte	(.L89-.L81)/2
 496 0015 64       		.byte	(.L90-.L81)/2
 497 0016 68       		.byte	(.L91-.L81)/2
 498 0017 6D       		.byte	(.L92-.L81)/2
 499 0018 0B       		.byte	(.L101-.L81)/2
 500 0019 0E       		.byte	(.L94-.L81)/2
 501 001a 13       		.byte	(.L95-.L81)/2
 502 001b 1F       		.byte	(.L96-.L81)/2
 503              		.p2align 1
 504              	.L84:
 505 001c 0888     		ldrh	r0, [r1]
 506 001e FFF7FEFF 		bl	_Z20wizchip_clrinterrupt9intr_kind
 507              	.L101:
 508 0022 0023     		movs	r3, #0
 509              	.L79:
 510 0024 1846     		mov	r0, r3
 511 0026 38BD     		pop	{r3, r4, r5, pc}
 512              	.L94:
 513 0028 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 10


 514 002a BDE83840 		pop	{r3, r4, r5, lr}
 515 002e FFF7FEBF 		b	_Z18wizphy_setphypmodeh
 516              	.L95:
 517 0032 4FF43850 		mov	r0, #11776
 518 0036 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 519 003a 10F0300F 		tst	r0, #48
 520 003e 14BF     		ite	ne
 521 0040 0123     		movne	r3, #1
 522 0042 0023     		moveq	r3, #0
 523 0044 2370     		strb	r3, [r4]
 524 0046 0023     		movs	r3, #0
 525 0048 ECE7     		b	.L79
 526              	.L96:
 527 004a 4FF43850 		mov	r0, #11776
 528 004e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 529 0052 00F00100 		and	r0, r0, #1
 530 0056 2070     		strb	r0, [r4]
 531 0058 0023     		movs	r3, #0
 532 005a E3E7     		b	.L79
 533              	.L80:
 534 005c FFF7FEFF 		bl	_Z16wizchip_sw_resetv
 535 0060 0023     		movs	r3, #0
 536 0062 DFE7     		b	.L79
 537              	.L82:
 538 0064 01B1     		cbz	r1, .L97
 539 0066 0831     		adds	r1, r1, #8
 540              	.L97:
 541 0068 2046     		mov	r0, r4
 542 006a BDE83840 		pop	{r3, r4, r5, lr}
 543 006e FFF7FEBF 		b	_Z12wizchip_initPKhS0_
 544              	.L83:
 545 0072 FFF7FEFF 		bl	_Z20wizchip_getinterruptv
 546 0076 0023     		movs	r3, #0
 547 0078 2080     		strh	r0, [r4]	@ movhi
 548 007a D3E7     		b	.L79
 549              	.L85:
 550 007c 0888     		ldrh	r0, [r1]
 551 007e FFF7FEFF 		bl	_Z24wizchip_setinterruptmask9intr_kind
 552 0082 0023     		movs	r3, #0
 553 0084 CEE7     		b	.L79
 554              	.L86:
 555 0086 FFF7FEFF 		bl	_Z24wizchip_getinterruptmaskv
 556 008a 0023     		movs	r3, #0
 557 008c 2080     		strh	r0, [r4]	@ movhi
 558 008e C9E7     		b	.L79
 559              	.L87:
 560 0090 0C88     		ldrh	r4, [r1]
 561 0092 4FF49850 		mov	r0, #4864
 562 0096 210A     		lsrs	r1, r4, #8
 563 0098 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 564 009c E1B2     		uxtb	r1, r4
 565 009e 4FF4A050 		mov	r0, #5120
 566 00a2 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 567 00a6 0023     		movs	r3, #0
 568 00a8 BCE7     		b	.L79
 569              	.L88:
 570 00aa 4FF49850 		mov	r0, #4864
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 11


 571 00ae FFF7FEFF 		bl	_Z12WIZCHIP_READm
 572 00b2 0546     		mov	r5, r0
 573 00b4 4FF4A050 		mov	r0, #5120
 574 00b8 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 575 00bc 40EA0520 		orr	r0, r0, r5, lsl #8
 576 00c0 2080     		strh	r0, [r4]	@ movhi
 577 00c2 0023     		movs	r3, #0
 578 00c4 AEE7     		b	.L79
 579              	.L89:
 580 00c6 0C4B     		ldr	r3, .L102
 581 00c8 1868     		ldr	r0, [r3]
 582 00ca 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 583 00cc 8B80     		strh	r3, [r1, #4]	@ unaligned
 584 00ce 0860     		str	r0, [r1]	@ unaligned
 585 00d0 0023     		movs	r3, #0
 586 00d2 A7E7     		b	.L79
 587              	.L90:
 588 00d4 FFF7FEFF 		bl	_Z12wizphy_resetv
 589 00d8 0023     		movs	r3, #0
 590 00da A3E7     		b	.L79
 591              	.L91:
 592 00dc 0846     		mov	r0, r1
 593 00de FFF7FEFF 		bl	_Z17wizphy_setphyconfP11wiz_PhyConf
 594 00e2 0023     		movs	r3, #0
 595 00e4 9EE7     		b	.L79
 596              	.L92:
 597 00e6 0846     		mov	r0, r1
 598 00e8 FFF7FEFF 		bl	_Z17wizphy_getphyconfP11wiz_PhyConf
 599 00ec 0023     		movs	r3, #0
 600 00ee 99E7     		b	.L79
 601              	.L98:
 602 00f0 4FF0FF33 		mov	r3, #-1
 603 00f4 96E7     		b	.L79
 604              	.L103:
 605 00f6 00BF     		.align	2
 606              	.L102:
 607 00f8 00000000 		.word	.LC0
 608              		.size	_Z10ctlwizchip15ctlwizchip_typePv, .-_Z10ctlwizchip15ctlwizchip_typePv
 609              		.section	.text._Z18wizchip_setnetmode12netmode_type,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	_Z18wizchip_setnetmode12netmode_type
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu fpv4-sp-d16
 617              		.type	_Z18wizchip_setnetmode12netmode_type, %function
 618              	_Z18wizchip_setnetmode12netmode_type:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621 0000 38B5     		push	{r3, r4, r5, lr}
 622 0002 30F03A05 		bics	r5, r0, #58
 623 0006 0BD1     		bne	.L106
 624 0008 0446     		mov	r4, r0
 625 000a 2846     		mov	r0, r5
 626 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 627 0010 44EA0001 		orr	r1, r4, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 12


 628 0014 C9B2     		uxtb	r1, r1
 629 0016 2846     		mov	r0, r5
 630 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 631 001c 2846     		mov	r0, r5
 632 001e 38BD     		pop	{r3, r4, r5, pc}
 633              	.L106:
 634 0020 4FF0FF30 		mov	r0, #-1
 635 0024 38BD     		pop	{r3, r4, r5, pc}
 636              		.size	_Z18wizchip_setnetmode12netmode_type, .-_Z18wizchip_setnetmode12netmode_type
 637 0026 00BF     		.section	.text._Z18wizchip_getnetmodev,"ax",%progbits
 638              		.align	1
 639              		.p2align 2,,3
 640              		.global	_Z18wizchip_getnetmodev
 641              		.syntax unified
 642              		.thumb
 643              		.thumb_func
 644              		.fpu fpv4-sp-d16
 645              		.type	_Z18wizchip_getnetmodev, %function
 646              	_Z18wizchip_getnetmodev:
 647              		@ args = 0, pretend = 0, frame = 0
 648              		@ frame_needed = 0, uses_anonymous_args = 0
 649              		@ link register save eliminated.
 650 0000 0020     		movs	r0, #0
 651 0002 FFF7FEBF 		b	_Z12WIZCHIP_READm
 652              		.size	_Z18wizchip_getnetmodev, .-_Z18wizchip_getnetmodev
 653 0006 00BF     		.section	.text._Z18wizchip_settimeoutP14wiz_NetTimeout,"ax",%progbits
 654              		.align	1
 655              		.p2align 2,,3
 656              		.global	_Z18wizchip_settimeoutP14wiz_NetTimeout
 657              		.syntax unified
 658              		.thumb
 659              		.thumb_func
 660              		.fpu fpv4-sp-d16
 661              		.type	_Z18wizchip_settimeoutP14wiz_NetTimeout, %function
 662              	_Z18wizchip_settimeoutP14wiz_NetTimeout:
 663              		@ args = 0, pretend = 0, frame = 0
 664              		@ frame_needed = 0, uses_anonymous_args = 0
 665 0000 10B5     		push	{r4, lr}
 666 0002 0446     		mov	r4, r0
 667 0004 4FF4D850 		mov	r0, #6912
 668 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 669 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 670 000e 6488     		ldrh	r4, [r4, #2]
 671 0010 4FF4C850 		mov	r0, #6400
 672 0014 210A     		lsrs	r1, r4, #8
 673 0016 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 674 001a E1B2     		uxtb	r1, r4
 675 001c 4FF4D050 		mov	r0, #6656
 676 0020 BDE81040 		pop	{r4, lr}
 677 0024 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 678              		.size	_Z18wizchip_settimeoutP14wiz_NetTimeout, .-_Z18wizchip_settimeoutP14wiz_NetTimeout
 679              		.section	.text._Z18wizchip_gettimeoutP14wiz_NetTimeout,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	_Z18wizchip_gettimeoutP14wiz_NetTimeout
 683              		.syntax unified
 684              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccIQ0OVj.s 			page 13


 685              		.thumb_func
 686              		.fpu fpv4-sp-d16
 687              		.type	_Z18wizchip_gettimeoutP14wiz_NetTimeout, %function
 688              	_Z18wizchip_gettimeoutP14wiz_NetTimeout:
 689              		@ args = 0, pretend = 0, frame = 0
 690              		@ frame_needed = 0, uses_anonymous_args = 0
 691 0000 38B5     		push	{r3, r4, r5, lr}
 692 0002 0546     		mov	r5, r0
 693 0004 4FF4D850 		mov	r0, #6912
 694 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 695 000c 2870     		strb	r0, [r5]
 696 000e 4FF4C850 		mov	r0, #6400
 697 0012 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 698 0016 0446     		mov	r4, r0
 699 0018 4FF4D050 		mov	r0, #6656
 700 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 701 0020 00EB0420 		add	r0, r0, r4, lsl #8
 702 0024 6880     		strh	r0, [r5, #2]	@ movhi
 703 0026 38BD     		pop	{r3, r4, r5, pc}
 704              		.size	_Z18wizchip_gettimeoutP14wiz_NetTimeout, .-_Z18wizchip_gettimeoutP14wiz_NetTimeout
 705              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 706              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 707              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 708              	_ZL28cpu_irq_prev_interrupt_state:
 709 0000 00       		.space	1
 710              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 711              		.align	2
 712              		.type	_ZL32cpu_irq_critical_section_counter, %object
 713              		.size	_ZL32cpu_irq_critical_section_counter, 4
 714              	_ZL32cpu_irq_critical_section_counter:
 715 0000 00000000 		.space	4
 716              		.section	.rodata._Z10ctlwizchip15ctlwizchip_typePv.str1.4,"aMS",%progbits,1
 717              		.align	2
 718              	.LC0:
 719 0000 77353530 		.ascii	"w5500\000"
 719      3000
 720              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
