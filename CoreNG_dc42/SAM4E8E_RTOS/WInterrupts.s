ARM GAS  /tmp/ccTxrkml.s 			page 1


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
  14              		.section	.text._ZL13GetHighestBitm,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZL13GetHighestBitm, %function
  22              	_ZL13GetHighestBitm:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 B0F5803F 		cmp	r0, #65536
  27 0004 34BF     		ite	cc
  28 0006 0023     		movcc	r3, #0
  29 0008 1023     		movcs	r3, #16
  30 000a 20FA03F2 		lsr	r2, r0, r3
  31 000e FF2A     		cmp	r2, #255
  32 0010 84BF     		itt	hi
  33 0012 0833     		addhi	r3, r3, #8
  34 0014 20FA03F2 		lsrhi	r2, r0, r3
  35 0018 0F2A     		cmp	r2, #15
  36 001a 84BF     		itt	hi
  37 001c 0433     		addhi	r3, r3, #4
  38 001e 20FA03F2 		lsrhi	r2, r0, r3
  39 0022 032A     		cmp	r2, #3
  40 0024 84BF     		itt	hi
  41 0026 0233     		addhi	r3, r3, #2
  42 0028 20FA03F2 		lsrhi	r2, r0, r3
  43 002c 012A     		cmp	r2, #1
  44 002e 88BF     		it	hi
  45 0030 0133     		addhi	r3, r3, #1
  46 0032 1846     		mov	r0, r3
  47 0034 7047     		bx	lr
  48              		.size	_ZL13GetHighestBitm, .-_ZL13GetHighestBitm
  49 0036 00BF     		.section	.text._Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
ARM GAS  /tmp/ccTxrkml.s 			page 2


  58              	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 6928     		cmp	r0, #105
  62 0002 36D8     		bhi	.L26
  63 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  64 0008 DFF89891 		ldr	r9, .L38+48
  65 000c 1E46     		mov	r6, r3
  66 000e 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
  67 0012 9046     		mov	r8, r2
  68 0014 0F46     		mov	r7, r1
  69 0016 0546     		mov	r5, r0
  70 0018 6BB3     		cbz	r3, .L31
  71              	.L11:
  72 001a 564B     		ldr	r3, .L38
  73 001c C5EBC500 		rsb	r0, r5, r5, lsl #3
  74 0020 8000     		lsls	r0, r0, #2
  75 0022 1A18     		adds	r2, r3, r0
  76 0024 1C58     		ldr	r4, [r3, r0]
  77 0026 5168     		ldr	r1, [r2, #4]
  78 0028 6164     		str	r1, [r4, #68]
  79 002a 0846     		mov	r0, r1
  80 002c FFF7FEFF 		bl	_ZL13GetHighestBitm
  81 0030 514B     		ldr	r3, .L38+4
  82 0032 9C42     		cmp	r4, r3
  83 0034 00F08280 		beq	.L32
  84 0038 504B     		ldr	r3, .L38+8
  85 003a 9C42     		cmp	r4, r3
  86 003c 6AD0     		beq	.L33
  87 003e 504B     		ldr	r3, .L38+12
  88 0040 9C42     		cmp	r4, r3
  89 0042 00F08280 		beq	.L34
  90 0046 4F4B     		ldr	r3, .L38+16
  91 0048 9C42     		cmp	r4, r3
  92 004a 00F08580 		beq	.L35
  93 004e 4E4B     		ldr	r3, .L38+20
  94 0050 9C42     		cmp	r4, r3
  95 0052 00F08880 		beq	.L36
  96              	.L13:
  97 0056 B8F1030F 		cmp	r8, #3
  98 005a 68D0     		beq	.L37
  99 005c 08F1FF33 		add	r3, r8, #-1
 100 0060 C4F8B010 		str	r1, [r4, #176]
 101 0064 042B     		cmp	r3, #4
 102 0066 5CD8     		bhi	.L19
 103 0068 DFE803F0 		tbb	[pc, r3]
 104              	.L21:
 105 006c 4F       		.byte	(.L20-.L21)/2
 106 006d 4A       		.byte	(.L22-.L21)/2
 107 006e 5B       		.byte	(.L19-.L21)/2
 108 006f 45       		.byte	(.L23-.L21)/2
 109 0070 3C       		.byte	(.L24-.L21)/2
 110 0071 00       		.p2align 1
 111              	.L26:
 112 0072 0020     		movs	r0, #0
 113 0074 7047     		bx	lr
 114              	.L31:
ARM GAS  /tmp/ccTxrkml.s 			page 3


 115 0076 454C     		ldr	r4, .L38+24
 116 0078 0920     		movs	r0, #9
 117 007a FFF7FEFF 		bl	pmc_enable_periph_clk
 118 007e 4FF40073 		mov	r3, #512
 119 0082 C4F88030 		str	r3, [r4, #128]
 120 0086 0A20     		movs	r0, #10
 121 0088 C4F88031 		str	r3, [r4, #384]
 122 008c 2360     		str	r3, [r4]
 123 008e FFF7FEFF 		bl	pmc_enable_periph_clk
 124 0092 4FF48063 		mov	r3, #1024
 125 0096 C4F88030 		str	r3, [r4, #128]
 126 009a 0B20     		movs	r0, #11
 127 009c C4F88031 		str	r3, [r4, #384]
 128 00a0 2360     		str	r3, [r4]
 129 00a2 FFF7FEFF 		bl	pmc_enable_periph_clk
 130 00a6 4FF40063 		mov	r3, #2048
 131 00aa C4F88030 		str	r3, [r4, #128]
 132 00ae 0C20     		movs	r0, #12
 133 00b0 C4F88031 		str	r3, [r4, #384]
 134 00b4 2360     		str	r3, [r4]
 135 00b6 FFF7FEFF 		bl	pmc_enable_periph_clk
 136 00ba 4FF48053 		mov	r3, #4096
 137 00be C4F88030 		str	r3, [r4, #128]
 138 00c2 0D20     		movs	r0, #13
 139 00c4 C4F88031 		str	r3, [r4, #384]
 140 00c8 2360     		str	r3, [r4]
 141 00ca FFF7FEFF 		bl	pmc_enable_periph_clk
 142 00ce 4FF40053 		mov	r3, #8192
 143 00d2 0122     		movs	r2, #1
 144 00d4 C4F88030 		str	r3, [r4, #128]
 145 00d8 C4F88031 		str	r3, [r4, #384]
 146 00dc 2360     		str	r3, [r4]
 147 00de 89F80020 		strb	r2, [r9]
 148 00e2 9AE7     		b	.L11
 149              	.L24:
 150 00e4 C4F8C010 		str	r1, [r4, #192]
 151 00e8 C4F8D410 		str	r1, [r4, #212]
 152              	.L18:
 153 00ec 2162     		str	r1, [r4, #32]
 154 00ee 0120     		movs	r0, #1
 155 00f0 2164     		str	r1, [r4, #64]
 156 00f2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 157              	.L23:
 158 00f6 C4F8C010 		str	r1, [r4, #192]
 159 00fa C4F8D010 		str	r1, [r4, #208]
 160 00fe F5E7     		b	.L18
 161              	.L22:
 162 0100 C4F8C410 		str	r1, [r4, #196]
 163 0104 C4F8D410 		str	r1, [r4, #212]
 164 0108 F0E7     		b	.L18
 165              	.L20:
 166 010a C4F8C410 		str	r1, [r4, #196]
 167 010e C4F8D010 		str	r1, [r4, #208]
 168 0112 EBE7     		b	.L18
 169              	.L33:
 170 0114 1E4B     		ldr	r3, .L38+28
 171 0116 03EBC002 		add	r2, r3, r0, lsl #3
ARM GAS  /tmp/ccTxrkml.s 			page 4


 172 011a 43F83070 		str	r7, [r3, r0, lsl #3]
 173 011e 5660     		str	r6, [r2, #4]
 174 0120 99E7     		b	.L13
 175              	.L19:
 176 0122 B8F1000F 		cmp	r8, #0
 177 0126 E1D1     		bne	.L18
 178 0128 0120     		movs	r0, #1
 179 012a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 180              	.L37:
 181 012e C4F8B410 		str	r1, [r4, #180]
 182 0132 0120     		movs	r0, #1
 183 0134 2162     		str	r1, [r4, #32]
 184 0136 2164     		str	r1, [r4, #64]
 185 0138 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 186              	.L32:
 187 013c 154B     		ldr	r3, .L38+32
 188 013e 03EBC002 		add	r2, r3, r0, lsl #3
 189 0142 43F83070 		str	r7, [r3, r0, lsl #3]
 190 0146 5660     		str	r6, [r2, #4]
 191 0148 85E7     		b	.L13
 192              	.L34:
 193 014a 134B     		ldr	r3, .L38+36
 194 014c 03EBC002 		add	r2, r3, r0, lsl #3
 195 0150 43F83070 		str	r7, [r3, r0, lsl #3]
 196 0154 5660     		str	r6, [r2, #4]
 197 0156 7EE7     		b	.L13
 198              	.L35:
 199 0158 104B     		ldr	r3, .L38+40
 200 015a 03EBC002 		add	r2, r3, r0, lsl #3
 201 015e 43F83070 		str	r7, [r3, r0, lsl #3]
 202 0162 5660     		str	r6, [r2, #4]
 203 0164 77E7     		b	.L13
 204              	.L36:
 205 0166 0E4B     		ldr	r3, .L38+44
 206 0168 03EBC002 		add	r2, r3, r0, lsl #3
 207 016c 43F83070 		str	r7, [r3, r0, lsl #3]
 208 0170 5660     		str	r6, [r2, #4]
 209 0172 70E7     		b	.L13
 210              	.L39:
 211              		.align	2
 212              	.L38:
 213 0174 00000000 		.word	g_APinDescription
 214 0178 000E0E40 		.word	1074662912
 215 017c 00100E40 		.word	1074663424
 216 0180 00120E40 		.word	1074663936
 217 0184 00140E40 		.word	1074664448
 218 0188 00160E40 		.word	1074664960
 219 018c 00E100E0 		.word	-536813312
 220 0190 00000000 		.word	.LANCHOR2
 221 0194 00000000 		.word	.LANCHOR1
 222 0198 00000000 		.word	.LANCHOR3
 223 019c 00000000 		.word	.LANCHOR4
 224 01a0 00000000 		.word	.LANCHOR5
 225 01a4 00000000 		.word	.LANCHOR0
 226              		.size	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_Z15attachInterruptmPFv17Cal
 227              		.section	.text._Z15detachInterruptm,"ax",%progbits
 228              		.align	1
ARM GAS  /tmp/ccTxrkml.s 			page 5


 229              		.p2align 2,,3
 230              		.global	_Z15detachInterruptm
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 235              		.type	_Z15detachInterruptm, %function
 236              	_Z15detachInterruptm:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              		@ link register save eliminated.
 240 0000 6928     		cmp	r0, #105
 241 0002 07D8     		bhi	.L40
 242 0004 044B     		ldr	r3, .L42
 243 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 244 000a 8000     		lsls	r0, r0, #2
 245 000c 1A18     		adds	r2, r3, r0
 246 000e 1B58     		ldr	r3, [r3, r0]
 247 0010 5268     		ldr	r2, [r2, #4]
 248 0012 5A64     		str	r2, [r3, #68]
 249              	.L40:
 250 0014 7047     		bx	lr
 251              	.L43:
 252 0016 00BF     		.align	2
 253              	.L42:
 254 0018 00000000 		.word	g_APinDescription
 255              		.size	_Z15detachInterruptm, .-_Z15detachInterruptm
 256              		.section	.text._Z11inInterruptv,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	_Z11inInterruptv
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 264              		.type	_Z11inInterruptv, %function
 265              	_Z11inInterruptv:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268              		@ link register save eliminated.
 269              		.syntax unified
 270              	@ 371 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 271 0000 EFF30580 		MRS r0, ipsr
 272              	@ 0 "" 2
 273              		.thumb
 274              		.syntax unified
 275 0004 C0F30800 		ubfx	r0, r0, #0, #9
 276 0008 0030     		adds	r0, r0, #0
 277 000a 18BF     		it	ne
 278 000c 0120     		movne	r0, #1
 279 000e 7047     		bx	lr
 280              		.size	_Z11inInterruptv, .-_Z11inInterruptv
 281              		.section	.text._Z16CommonPioHandlerP3PioPK17InterruptCallback,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 285              		.syntax unified
ARM GAS  /tmp/ccTxrkml.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	_Z16CommonPioHandlerP3PioPK17InterruptCallback, %function
 290              	_Z16CommonPioHandlerP3PioPK17InterruptCallback:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 294 0002 C56C     		ldr	r5, [r0, #76]
 295 0004 836C     		ldr	r3, [r0, #72]
 296 0006 1D40     		ands	r5, r5, r3
 297 0008 10D0     		beq	.L45
 298 000a 0E46     		mov	r6, r1
 299 000c 0127     		movs	r7, #1
 300              	.L49:
 301 000e 2846     		mov	r0, r5
 302 0010 FFF7FEFF 		bl	_ZL13GetHighestBitm
 303 0014 56F83030 		ldr	r3, [r6, r0, lsl #3]
 304 0018 0446     		mov	r4, r0
 305 001a 06EBC002 		add	r2, r6, r0, lsl #3
 306 001e 0BB1     		cbz	r3, .L47
 307 0020 5068     		ldr	r0, [r2, #4]
 308 0022 9847     		blx	r3
 309              	.L47:
 310 0024 07FA04F4 		lsl	r4, r7, r4
 311 0028 A543     		bics	r5, r5, r4
 312 002a F0D1     		bne	.L49
 313              	.L45:
 314 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 315              		.size	_Z16CommonPioHandlerP3PioPK17InterruptCallback, .-_Z16CommonPioHandlerP3PioPK17InterruptCall
 316 002e 00BF     		.section	.text.PIOA_Handler,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	PIOA_Handler
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu fpv4-sp-d16
 324              		.type	PIOA_Handler, %function
 325              	PIOA_Handler:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329 0000 0149     		ldr	r1, .L58
 330 0002 0248     		ldr	r0, .L58+4
 331 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 332              	.L59:
 333              		.align	2
 334              	.L58:
 335 0008 00000000 		.word	.LANCHOR1
 336 000c 000E0E40 		.word	1074662912
 337              		.size	PIOA_Handler, .-PIOA_Handler
 338              		.section	.text.PIOB_Handler,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	PIOB_Handler
 342              		.syntax unified
ARM GAS  /tmp/ccTxrkml.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	PIOB_Handler, %function
 347              	PIOB_Handler:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 0149     		ldr	r1, .L61
 352 0002 0248     		ldr	r0, .L61+4
 353 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 354              	.L62:
 355              		.align	2
 356              	.L61:
 357 0008 00000000 		.word	.LANCHOR2
 358 000c 00100E40 		.word	1074663424
 359              		.size	PIOB_Handler, .-PIOB_Handler
 360              		.section	.text.PIOC_Handler,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	PIOC_Handler
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv4-sp-d16
 368              		.type	PIOC_Handler, %function
 369              	PIOC_Handler:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              		@ link register save eliminated.
 373 0000 0149     		ldr	r1, .L64
 374 0002 0248     		ldr	r0, .L64+4
 375 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 376              	.L65:
 377              		.align	2
 378              	.L64:
 379 0008 00000000 		.word	.LANCHOR3
 380 000c 00120E40 		.word	1074663936
 381              		.size	PIOC_Handler, .-PIOC_Handler
 382              		.section	.text.PIOD_Handler,"ax",%progbits
 383              		.align	1
 384              		.p2align 2,,3
 385              		.global	PIOD_Handler
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu fpv4-sp-d16
 390              		.type	PIOD_Handler, %function
 391              	PIOD_Handler:
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394              		@ link register save eliminated.
 395 0000 0149     		ldr	r1, .L67
 396 0002 0248     		ldr	r0, .L67+4
 397 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 398              	.L68:
 399              		.align	2
ARM GAS  /tmp/ccTxrkml.s 			page 8


 400              	.L67:
 401 0008 00000000 		.word	.LANCHOR4
 402 000c 00140E40 		.word	1074664448
 403              		.size	PIOD_Handler, .-PIOD_Handler
 404              		.section	.text.PIOE_Handler,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	PIOE_Handler
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv4-sp-d16
 412              		.type	PIOE_Handler, %function
 413              	PIOE_Handler:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416              		@ link register save eliminated.
 417 0000 0149     		ldr	r1, .L70
 418 0002 0248     		ldr	r0, .L70+4
 419 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 420              	.L71:
 421              		.align	2
 422              	.L70:
 423 0008 00000000 		.word	.LANCHOR5
 424 000c 00160E40 		.word	1074664960
 425              		.size	PIOE_Handler, .-PIOE_Handler
 426              		.section	.text.startup._GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 427              		.align	1
 428              		.p2align 2,,3
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu fpv4-sp-d16
 433              		.type	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
 434              	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
 435              		@ args = 0, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437              		@ link register save eliminated.
 438 0000 164B     		ldr	r3, .L83
 439 0002 0022     		movs	r2, #0
 440 0004 03F58071 		add	r1, r3, #256
 441              	.L73:
 442 0008 1A60     		str	r2, [r3]
 443 000a 5A60     		str	r2, [r3, #4]
 444 000c 0833     		adds	r3, r3, #8
 445 000e 8B42     		cmp	r3, r1
 446 0010 FAD1     		bne	.L73
 447 0012 134B     		ldr	r3, .L83+4
 448 0014 0022     		movs	r2, #0
 449 0016 03F58071 		add	r1, r3, #256
 450              	.L74:
 451 001a 1A60     		str	r2, [r3]
 452 001c 5A60     		str	r2, [r3, #4]
 453 001e 0833     		adds	r3, r3, #8
 454 0020 8B42     		cmp	r3, r1
 455 0022 FAD1     		bne	.L74
 456 0024 0F4B     		ldr	r3, .L83+8
ARM GAS  /tmp/ccTxrkml.s 			page 9


 457 0026 0022     		movs	r2, #0
 458 0028 03F58071 		add	r1, r3, #256
 459              	.L75:
 460 002c 1A60     		str	r2, [r3]
 461 002e 5A60     		str	r2, [r3, #4]
 462 0030 0833     		adds	r3, r3, #8
 463 0032 9942     		cmp	r1, r3
 464 0034 FAD1     		bne	.L75
 465 0036 0C4B     		ldr	r3, .L83+12
 466 0038 0022     		movs	r2, #0
 467 003a 03F58071 		add	r1, r3, #256
 468              	.L76:
 469 003e 1A60     		str	r2, [r3]
 470 0040 5A60     		str	r2, [r3, #4]
 471 0042 0833     		adds	r3, r3, #8
 472 0044 9942     		cmp	r1, r3
 473 0046 FAD1     		bne	.L76
 474 0048 084B     		ldr	r3, .L83+16
 475 004a 0022     		movs	r2, #0
 476 004c 03F58071 		add	r1, r3, #256
 477              	.L77:
 478 0050 1A60     		str	r2, [r3]
 479 0052 5A60     		str	r2, [r3, #4]
 480 0054 0833     		adds	r3, r3, #8
 481 0056 9942     		cmp	r1, r3
 482 0058 FAD1     		bne	.L77
 483 005a 7047     		bx	lr
 484              	.L84:
 485              		.align	2
 486              	.L83:
 487 005c 00000000 		.word	.LANCHOR1
 488 0060 00000000 		.word	.LANCHOR2
 489 0064 00000000 		.word	.LANCHOR3
 490 0068 00000000 		.word	.LANCHOR4
 491 006c 00000000 		.word	.LANCHOR5
 492              		.size	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_GLOBAL__sub_
 493              		.section	.init_array,"aw",%init_array
 494              		.align	2
 495 0000 00000000 		.word	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_(target1)
 496              		.section	.bss._ZL13callbacksPioA,"aw",%nobits
 497              		.align	2
 498              		.set	.LANCHOR1,. + 0
 499              		.type	_ZL13callbacksPioA, %object
 500              		.size	_ZL13callbacksPioA, 256
 501              	_ZL13callbacksPioA:
 502 0000 00000000 		.space	256
 502      00000000 
 502      00000000 
 502      00000000 
 502      00000000 
 503              		.section	.bss._ZL13callbacksPioB,"aw",%nobits
 504              		.align	2
 505              		.set	.LANCHOR2,. + 0
 506              		.type	_ZL13callbacksPioB, %object
 507              		.size	_ZL13callbacksPioB, 256
 508              	_ZL13callbacksPioB:
 509 0000 00000000 		.space	256
ARM GAS  /tmp/ccTxrkml.s 			page 10


 509      00000000 
 509      00000000 
 509      00000000 
 509      00000000 
 510              		.section	.bss._ZL13callbacksPioC,"aw",%nobits
 511              		.align	2
 512              		.set	.LANCHOR3,. + 0
 513              		.type	_ZL13callbacksPioC, %object
 514              		.size	_ZL13callbacksPioC, 256
 515              	_ZL13callbacksPioC:
 516 0000 00000000 		.space	256
 516      00000000 
 516      00000000 
 516      00000000 
 516      00000000 
 517              		.section	.bss._ZL13callbacksPioD,"aw",%nobits
 518              		.align	2
 519              		.set	.LANCHOR4,. + 0
 520              		.type	_ZL13callbacksPioD, %object
 521              		.size	_ZL13callbacksPioD, 256
 522              	_ZL13callbacksPioD:
 523 0000 00000000 		.space	256
 523      00000000 
 523      00000000 
 523      00000000 
 523      00000000 
 524              		.section	.bss._ZL13callbacksPioE,"aw",%nobits
 525              		.align	2
 526              		.set	.LANCHOR5,. + 0
 527              		.type	_ZL13callbacksPioE, %object
 528              		.size	_ZL13callbacksPioE, 256
 529              	_ZL13callbacksPioE:
 530 0000 00000000 		.space	256
 530      00000000 
 530      00000000 
 530      00000000 
 530      00000000 
 531              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 532              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 533              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 534              	_ZL28cpu_irq_prev_interrupt_state:
 535 0000 00       		.space	1
 536              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 537              		.align	2
 538              		.type	_ZL32cpu_irq_critical_section_counter, %object
 539              		.size	_ZL32cpu_irq_critical_section_counter, 4
 540              	_ZL32cpu_irq_critical_section_counter:
 541 0000 00000000 		.space	4
 542              		.section	.bss._ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled,"aw",%nobits
 543              		.set	.LANCHOR0,. + 0
 544              		.type	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, %object
 545              		.size	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, 1
 546              	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled:
 547 0000 00       		.space	1
 548              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
