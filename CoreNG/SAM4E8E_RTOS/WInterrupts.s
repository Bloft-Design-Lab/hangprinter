ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 1


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
  13              		.file	"WInterrupts.cpp"
  14              		.text
  15              		.section	.text._ZL13GetHighestBitm,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZL13GetHighestBitm, %function
  23              	_ZL13GetHighestBitm:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 B0F5803F 		cmp	r0, #65536
  28 0004 2BBF     		itete	cs
  29 0006 020C     		lsrcs	r2, r0, #16
  30 0008 0246     		movcc	r2, r0
  31 000a 1023     		movcs	r3, #16
  32 000c 0023     		movcc	r3, #0
  33 000e FF2A     		cmp	r2, #255
  34 0010 84BF     		itt	hi
  35 0012 0833     		addhi	r3, r3, #8
  36 0014 20FA03F2 		lsrhi	r2, r0, r3
  37 0018 0F2A     		cmp	r2, #15
  38 001a 84BF     		itt	hi
  39 001c 0433     		addhi	r3, r3, #4
  40 001e 20FA03F2 		lsrhi	r2, r0, r3
  41 0022 032A     		cmp	r2, #3
  42 0024 84BF     		itt	hi
  43 0026 0233     		addhi	r3, r3, #2
  44 0028 20FA03F2 		lsrhi	r2, r0, r3
  45 002c 012A     		cmp	r2, #1
  46 002e 88BF     		it	hi
  47 0030 0133     		addhi	r3, r3, #1
  48 0032 1846     		mov	r0, r3
  49 0034 7047     		bx	lr
  50              		.size	_ZL13GetHighestBitm, .-_ZL13GetHighestBitm
  51 0036 00BF     		.section	.text._Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
  60              	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 6928     		cmp	r0, #105
  64 0002 35D8     		bhi	.L26
  65 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  66 0008 DFF89091 		ldr	r9, .L38+48
  67 000c 1E46     		mov	r6, r3
  68 000e 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
  69 0012 9046     		mov	r8, r2
  70 0014 0F46     		mov	r7, r1
  71 0016 0546     		mov	r5, r0
  72 0018 63B3     		cbz	r3, .L31
  73              	.L11:
  74 001a 544B     		ldr	r3, .L38
  75 001c C5EBC500 		rsb	r0, r5, r5, lsl #3
  76 0020 8000     		lsls	r0, r0, #2
  77 0022 1A18     		adds	r2, r3, r0
  78 0024 1958     		ldr	r1, [r3, r0]
  79 0026 5468     		ldr	r4, [r2, #4]
  80 0028 4C64     		str	r4, [r1, #68]
  81 002a 2046     		mov	r0, r4
  82 002c FFF7FEFF 		bl	_ZL13GetHighestBitm
  83 0030 4F4B     		ldr	r3, .L38+4
  84 0032 9942     		cmp	r1, r3
  85 0034 55D0     		beq	.L32
  86 0036 4F4B     		ldr	r3, .L38+8
  87 0038 9942     		cmp	r1, r3
  88 003a 00F08280 		beq	.L33
  89 003e 4E4B     		ldr	r3, .L38+12
  90 0040 9942     		cmp	r1, r3
  91 0042 5AD0     		beq	.L34
  92 0044 4D4B     		ldr	r3, .L38+16
  93 0046 9942     		cmp	r1, r3
  94 0048 00F08280 		beq	.L35
  95 004c 4C4B     		ldr	r3, .L38+20
  96 004e 9942     		cmp	r1, r3
  97 0050 00F08580 		beq	.L36
  98              	.L13:
  99 0054 B8F1030F 		cmp	r8, #3
 100 0058 4CD0     		beq	.L37
 101              	.L17:
 102 005a 08F1FF33 		add	r3, r8, #-1
 103 005e C1F8B040 		str	r4, [r1, #176]
 104 0062 042B     		cmp	r3, #4
 105 0064 68D8     		bhi	.L19
 106 0066 DFE803F0 		tbb	[pc, r3]
 107              	.L21:
 108 006a 62       		.byte	(.L20-.L21)/2
 109 006b 5D       		.byte	(.L22-.L21)/2
 110 006c 67       		.byte	(.L19-.L21)/2
 111 006d 58       		.byte	(.L23-.L21)/2
 112 006e 4F       		.byte	(.L24-.L21)/2
 113 006f 00       		.p2align 1
 114              	.L26:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 3


 115 0070 0020     		movs	r0, #0
 116 0072 7047     		bx	lr
 117              	.L31:
 118 0074 434C     		ldr	r4, .L38+24
 119 0076 0920     		movs	r0, #9
 120 0078 FFF7FEFF 		bl	pmc_enable_periph_clk
 121 007c 4FF40073 		mov	r3, #512
 122 0080 C4F88030 		str	r3, [r4, #128]
 123 0084 0A20     		movs	r0, #10
 124 0086 C4F88031 		str	r3, [r4, #384]
 125 008a 2360     		str	r3, [r4]
 126 008c FFF7FEFF 		bl	pmc_enable_periph_clk
 127 0090 4FF48063 		mov	r3, #1024
 128 0094 C4F88030 		str	r3, [r4, #128]
 129 0098 0B20     		movs	r0, #11
 130 009a C4F88031 		str	r3, [r4, #384]
 131 009e 2360     		str	r3, [r4]
 132 00a0 FFF7FEFF 		bl	pmc_enable_periph_clk
 133 00a4 4FF40063 		mov	r3, #2048
 134 00a8 C4F88030 		str	r3, [r4, #128]
 135 00ac 0C20     		movs	r0, #12
 136 00ae C4F88031 		str	r3, [r4, #384]
 137 00b2 2360     		str	r3, [r4]
 138 00b4 FFF7FEFF 		bl	pmc_enable_periph_clk
 139 00b8 4FF48053 		mov	r3, #4096
 140 00bc C4F88030 		str	r3, [r4, #128]
 141 00c0 0D20     		movs	r0, #13
 142 00c2 C4F88031 		str	r3, [r4, #384]
 143 00c6 2360     		str	r3, [r4]
 144 00c8 FFF7FEFF 		bl	pmc_enable_periph_clk
 145 00cc 4FF40053 		mov	r3, #8192
 146 00d0 0122     		movs	r2, #1
 147 00d2 C4F88030 		str	r3, [r4, #128]
 148 00d6 C4F88031 		str	r3, [r4, #384]
 149 00da 2360     		str	r3, [r4]
 150 00dc 89F80020 		strb	r2, [r9]
 151 00e0 9BE7     		b	.L11
 152              	.L32:
 153 00e2 294B     		ldr	r3, .L38+28
 154 00e4 03EBC002 		add	r2, r3, r0, lsl #3
 155 00e8 B8F1030F 		cmp	r8, #3
 156 00ec 43F83070 		str	r7, [r3, r0, lsl #3]
 157 00f0 5660     		str	r6, [r2, #4]
 158 00f2 B2D1     		bne	.L17
 159              	.L37:
 160 00f4 C1F8B440 		str	r4, [r1, #180]
 161 00f8 0AE0     		b	.L18
 162              	.L34:
 163 00fa 244B     		ldr	r3, .L38+32
 164 00fc 03EBC002 		add	r2, r3, r0, lsl #3
 165 0100 43F83070 		str	r7, [r3, r0, lsl #3]
 166 0104 5660     		str	r6, [r2, #4]
 167 0106 A5E7     		b	.L13
 168              	.L24:
 169 0108 C1F8C040 		str	r4, [r1, #192]
 170 010c C1F8D440 		str	r4, [r1, #212]
 171              	.L18:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 4


 172 0110 0C62     		str	r4, [r1, #32]
 173 0112 0120     		movs	r0, #1
 174 0114 0C64     		str	r4, [r1, #64]
 175              	.L10:
 176 0116 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 177              	.L23:
 178 011a C1F8C040 		str	r4, [r1, #192]
 179 011e C1F8D040 		str	r4, [r1, #208]
 180 0122 F5E7     		b	.L18
 181              	.L22:
 182 0124 C1F8C440 		str	r4, [r1, #196]
 183 0128 C1F8D440 		str	r4, [r1, #212]
 184 012c F0E7     		b	.L18
 185              	.L20:
 186 012e C1F8C440 		str	r4, [r1, #196]
 187 0132 C1F8D040 		str	r4, [r1, #208]
 188 0136 EBE7     		b	.L18
 189              	.L19:
 190 0138 B8F1000F 		cmp	r8, #0
 191 013c E8D1     		bne	.L18
 192 013e 0120     		movs	r0, #1
 193 0140 E9E7     		b	.L10
 194              	.L33:
 195 0142 134B     		ldr	r3, .L38+36
 196 0144 03EBC002 		add	r2, r3, r0, lsl #3
 197 0148 43F83070 		str	r7, [r3, r0, lsl #3]
 198 014c 5660     		str	r6, [r2, #4]
 199 014e 81E7     		b	.L13
 200              	.L35:
 201 0150 104B     		ldr	r3, .L38+40
 202 0152 03EBC002 		add	r2, r3, r0, lsl #3
 203 0156 43F83070 		str	r7, [r3, r0, lsl #3]
 204 015a 5660     		str	r6, [r2, #4]
 205 015c 7AE7     		b	.L13
 206              	.L36:
 207 015e 0E4B     		ldr	r3, .L38+44
 208 0160 03EBC002 		add	r2, r3, r0, lsl #3
 209 0164 43F83070 		str	r7, [r3, r0, lsl #3]
 210 0168 5660     		str	r6, [r2, #4]
 211 016a 73E7     		b	.L13
 212              	.L39:
 213              		.align	2
 214              	.L38:
 215 016c 00000000 		.word	g_APinDescription
 216 0170 000E0E40 		.word	1074662912
 217 0174 00100E40 		.word	1074663424
 218 0178 00120E40 		.word	1074663936
 219 017c 00140E40 		.word	1074664448
 220 0180 00160E40 		.word	1074664960
 221 0184 00E100E0 		.word	-536813312
 222 0188 00000000 		.word	.LANCHOR1
 223 018c 00000000 		.word	.LANCHOR3
 224 0190 00000000 		.word	.LANCHOR2
 225 0194 00000000 		.word	.LANCHOR4
 226 0198 00000000 		.word	.LANCHOR5
 227 019c 00000000 		.word	.LANCHOR0
 228              		.size	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_Z15attachInterruptmPFv17Cal
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 5


 229              		.section	.text._Z15detachInterruptm,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.global	_Z15detachInterruptm
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu fpv4-sp-d16
 237              		.type	_Z15detachInterruptm, %function
 238              	_Z15detachInterruptm:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241              		@ link register save eliminated.
 242 0000 6928     		cmp	r0, #105
 243 0002 07D8     		bhi	.L40
 244 0004 044B     		ldr	r3, .L42
 245 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 246 000a 8000     		lsls	r0, r0, #2
 247 000c 1A18     		adds	r2, r3, r0
 248 000e 1B58     		ldr	r3, [r3, r0]
 249 0010 5268     		ldr	r2, [r2, #4]
 250 0012 5A64     		str	r2, [r3, #68]
 251              	.L40:
 252 0014 7047     		bx	lr
 253              	.L43:
 254 0016 00BF     		.align	2
 255              	.L42:
 256 0018 00000000 		.word	g_APinDescription
 257              		.size	_Z15detachInterruptm, .-_Z15detachInterruptm
 258              		.section	.text._Z11inInterruptv,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_Z11inInterruptv
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_Z11inInterruptv, %function
 267              	_Z11inInterruptv:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271              		.syntax unified
 272              	@ 371 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 273 0000 EFF30580 		MRS r0, ipsr
 274              	@ 0 "" 2
 275              		.thumb
 276              		.syntax unified
 277 0004 C0F30800 		ubfx	r0, r0, #0, #9
 278 0008 0030     		adds	r0, r0, #0
 279 000a 18BF     		it	ne
 280 000c 0120     		movne	r0, #1
 281 000e 7047     		bx	lr
 282              		.size	_Z11inInterruptv, .-_Z11inInterruptv
 283              		.section	.text._Z16CommonPioHandlerP3PioPK17InterruptCallback,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 6


 286              		.global	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	_Z16CommonPioHandlerP3PioPK17InterruptCallback, %function
 292              	_Z16CommonPioHandlerP3PioPK17InterruptCallback:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 296 0002 C56C     		ldr	r5, [r0, #76]
 297 0004 836C     		ldr	r3, [r0, #72]
 298 0006 1D40     		ands	r5, r5, r3
 299 0008 10D0     		beq	.L45
 300 000a 0E46     		mov	r6, r1
 301 000c 0127     		movs	r7, #1
 302              	.L48:
 303 000e 2846     		mov	r0, r5
 304 0010 FFF7FEFF 		bl	_ZL13GetHighestBitm
 305 0014 56F83030 		ldr	r3, [r6, r0, lsl #3]
 306 0018 0446     		mov	r4, r0
 307 001a 06EBC002 		add	r2, r6, r0, lsl #3
 308 001e 0BB1     		cbz	r3, .L47
 309 0020 5068     		ldr	r0, [r2, #4]
 310 0022 9847     		blx	r3
 311              	.L47:
 312 0024 07FA04F4 		lsl	r4, r7, r4
 313 0028 A543     		bics	r5, r5, r4
 314 002a F0D1     		bne	.L48
 315              	.L45:
 316 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 317              		.size	_Z16CommonPioHandlerP3PioPK17InterruptCallback, .-_Z16CommonPioHandlerP3PioPK17InterruptCall
 318 002e 00BF     		.section	.text.PIOA_Handler,"ax",%progbits
 319              		.align	1
 320              		.p2align 2,,3
 321              		.global	PIOA_Handler
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu fpv4-sp-d16
 326              		.type	PIOA_Handler, %function
 327              	PIOA_Handler:
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330              		@ link register save eliminated.
 331 0000 0149     		ldr	r1, .L58
 332 0002 0248     		ldr	r0, .L58+4
 333 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 334              	.L59:
 335              		.align	2
 336              	.L58:
 337 0008 00000000 		.word	.LANCHOR1
 338 000c 000E0E40 		.word	1074662912
 339              		.size	PIOA_Handler, .-PIOA_Handler
 340              		.section	.text.PIOB_Handler,"ax",%progbits
 341              		.align	1
 342              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 7


 343              		.global	PIOB_Handler
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu fpv4-sp-d16
 348              		.type	PIOB_Handler, %function
 349              	PIOB_Handler:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              		@ link register save eliminated.
 353 0000 0149     		ldr	r1, .L61
 354 0002 0248     		ldr	r0, .L61+4
 355 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 356              	.L62:
 357              		.align	2
 358              	.L61:
 359 0008 00000000 		.word	.LANCHOR2
 360 000c 00100E40 		.word	1074663424
 361              		.size	PIOB_Handler, .-PIOB_Handler
 362              		.section	.text.PIOC_Handler,"ax",%progbits
 363              		.align	1
 364              		.p2align 2,,3
 365              		.global	PIOC_Handler
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu fpv4-sp-d16
 370              		.type	PIOC_Handler, %function
 371              	PIOC_Handler:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375 0000 0149     		ldr	r1, .L64
 376 0002 0248     		ldr	r0, .L64+4
 377 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 378              	.L65:
 379              		.align	2
 380              	.L64:
 381 0008 00000000 		.word	.LANCHOR3
 382 000c 00120E40 		.word	1074663936
 383              		.size	PIOC_Handler, .-PIOC_Handler
 384              		.section	.text.PIOD_Handler,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	PIOD_Handler
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu fpv4-sp-d16
 392              		.type	PIOD_Handler, %function
 393              	PIOD_Handler:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 0149     		ldr	r1, .L67
 398 0002 0248     		ldr	r0, .L67+4
 399 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 8


 400              	.L68:
 401              		.align	2
 402              	.L67:
 403 0008 00000000 		.word	.LANCHOR4
 404 000c 00140E40 		.word	1074664448
 405              		.size	PIOD_Handler, .-PIOD_Handler
 406              		.section	.text.PIOE_Handler,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	PIOE_Handler
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	PIOE_Handler, %function
 415              	PIOE_Handler:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 0149     		ldr	r1, .L70
 420 0002 0248     		ldr	r0, .L70+4
 421 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 422              	.L71:
 423              		.align	2
 424              	.L70:
 425 0008 00000000 		.word	.LANCHOR5
 426 000c 00160E40 		.word	1074664960
 427              		.size	PIOE_Handler, .-PIOE_Handler
 428              		.section	.text.startup._GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 429              		.align	1
 430              		.p2align 2,,3
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
 436              	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              		@ link register save eliminated.
 440 0000 164B     		ldr	r3, .L83
 441 0002 0022     		movs	r2, #0
 442 0004 03F58071 		add	r1, r3, #256
 443              	.L73:
 444 0008 C3E90022 		strd	r2, r2, [r3]
 445 000c 0833     		adds	r3, r3, #8
 446 000e 8B42     		cmp	r3, r1
 447 0010 FAD1     		bne	.L73
 448 0012 134B     		ldr	r3, .L83+4
 449 0014 0022     		movs	r2, #0
 450 0016 03F58071 		add	r1, r3, #256
 451              	.L74:
 452 001a C3E90022 		strd	r2, r2, [r3]
 453 001e 0833     		adds	r3, r3, #8
 454 0020 9942     		cmp	r1, r3
 455 0022 FAD1     		bne	.L74
 456 0024 0F4B     		ldr	r3, .L83+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 9


 457 0026 0022     		movs	r2, #0
 458 0028 03F58071 		add	r1, r3, #256
 459              	.L75:
 460 002c C3E90022 		strd	r2, r2, [r3]
 461 0030 0833     		adds	r3, r3, #8
 462 0032 9942     		cmp	r1, r3
 463 0034 FAD1     		bne	.L75
 464 0036 0C4B     		ldr	r3, .L83+12
 465 0038 0022     		movs	r2, #0
 466 003a 03F58071 		add	r1, r3, #256
 467              	.L76:
 468 003e C3E90022 		strd	r2, r2, [r3]
 469 0042 0833     		adds	r3, r3, #8
 470 0044 9942     		cmp	r1, r3
 471 0046 FAD1     		bne	.L76
 472 0048 084B     		ldr	r3, .L83+16
 473 004a 0022     		movs	r2, #0
 474 004c 03F58071 		add	r1, r3, #256
 475              	.L77:
 476 0050 C3E90022 		strd	r2, r2, [r3]
 477 0054 0833     		adds	r3, r3, #8
 478 0056 9942     		cmp	r1, r3
 479 0058 FAD1     		bne	.L77
 480 005a 7047     		bx	lr
 481              	.L84:
 482              		.align	2
 483              	.L83:
 484 005c 00000000 		.word	.LANCHOR1
 485 0060 00000000 		.word	.LANCHOR2
 486 0064 00000000 		.word	.LANCHOR3
 487 0068 00000000 		.word	.LANCHOR4
 488 006c 00000000 		.word	.LANCHOR5
 489              		.size	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_GLOBAL__sub_
 490              		.section	.init_array,"aw",%init_array
 491              		.align	2
 492 0000 00000000 		.word	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_(target1)
 493              		.section	.bss._ZL13callbacksPioA,"aw",%nobits
 494              		.align	2
 495              		.set	.LANCHOR1,. + 0
 496              		.type	_ZL13callbacksPioA, %object
 497              		.size	_ZL13callbacksPioA, 256
 498              	_ZL13callbacksPioA:
 499 0000 00000000 		.space	256
 499      00000000 
 499      00000000 
 499      00000000 
 499      00000000 
 500              		.section	.bss._ZL13callbacksPioB,"aw",%nobits
 501              		.align	2
 502              		.set	.LANCHOR2,. + 0
 503              		.type	_ZL13callbacksPioB, %object
 504              		.size	_ZL13callbacksPioB, 256
 505              	_ZL13callbacksPioB:
 506 0000 00000000 		.space	256
 506      00000000 
 506      00000000 
 506      00000000 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccyTdXWA.s 			page 10


 506      00000000 
 507              		.section	.bss._ZL13callbacksPioC,"aw",%nobits
 508              		.align	2
 509              		.set	.LANCHOR3,. + 0
 510              		.type	_ZL13callbacksPioC, %object
 511              		.size	_ZL13callbacksPioC, 256
 512              	_ZL13callbacksPioC:
 513 0000 00000000 		.space	256
 513      00000000 
 513      00000000 
 513      00000000 
 513      00000000 
 514              		.section	.bss._ZL13callbacksPioD,"aw",%nobits
 515              		.align	2
 516              		.set	.LANCHOR4,. + 0
 517              		.type	_ZL13callbacksPioD, %object
 518              		.size	_ZL13callbacksPioD, 256
 519              	_ZL13callbacksPioD:
 520 0000 00000000 		.space	256
 520      00000000 
 520      00000000 
 520      00000000 
 520      00000000 
 521              		.section	.bss._ZL13callbacksPioE,"aw",%nobits
 522              		.align	2
 523              		.set	.LANCHOR5,. + 0
 524              		.type	_ZL13callbacksPioE, %object
 525              		.size	_ZL13callbacksPioE, 256
 526              	_ZL13callbacksPioE:
 527 0000 00000000 		.space	256
 527      00000000 
 527      00000000 
 527      00000000 
 527      00000000 
 528              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 529              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 530              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 531              	_ZL28cpu_irq_prev_interrupt_state:
 532 0000 00       		.space	1
 533              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 534              		.align	2
 535              		.type	_ZL32cpu_irq_critical_section_counter, %object
 536              		.size	_ZL32cpu_irq_critical_section_counter, 4
 537              	_ZL32cpu_irq_critical_section_counter:
 538 0000 00000000 		.space	4
 539              		.section	.bss._ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled,"aw",%nobits
 540              		.set	.LANCHOR0,. + 0
 541              		.type	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, %object
 542              		.size	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, 1
 543              	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled:
 544 0000 00       		.space	1
 545              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
