ARM GAS  /tmp/ccV1BfqE.s 			page 1


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
  11              		.file	"WInterrupts.cpp"
  12              		.section	.text._ZL13GetHighestBitm,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	_ZL13GetHighestBitm, %function
  20              	_ZL13GetHighestBitm:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 B0F5803F 		cmp	r0, #65536
  25 0004 34BF     		ite	cc
  26 0006 0023     		movcc	r3, #0
  27 0008 1023     		movcs	r3, #16
  28 000a 20FA03F2 		lsr	r2, r0, r3
  29 000e FF2A     		cmp	r2, #255
  30 0010 84BF     		itt	hi
  31 0012 0833     		addhi	r3, r3, #8
  32 0014 20FA03F2 		lsrhi	r2, r0, r3
  33 0018 0F2A     		cmp	r2, #15
  34 001a 84BF     		itt	hi
  35 001c 0433     		addhi	r3, r3, #4
  36 001e 20FA03F2 		lsrhi	r2, r0, r3
  37 0022 032A     		cmp	r2, #3
  38 0024 84BF     		itt	hi
  39 0026 0233     		addhi	r3, r3, #2
  40 0028 20FA03F2 		lsrhi	r2, r0, r3
  41 002c 012A     		cmp	r2, #1
  42 002e 88BF     		it	hi
  43 0030 0133     		addhi	r3, r3, #1
  44 0032 1846     		mov	r0, r3
  45 0034 7047     		bx	lr
  46              		.size	_ZL13GetHighestBitm, .-_ZL13GetHighestBitm
  47 0036 00BF     		.section	.text._Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu softvfp
  55              		.type	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
  56              	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccV1BfqE.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 6D28     		cmp	r0, #109
  60 0002 2FD8     		bhi	.L25
  61 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  62 0008 DFF86091 		ldr	r9, .L36+40
  63 000c 1E46     		mov	r6, r3
  64 000e 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
  65 0012 9046     		mov	r8, r2
  66 0014 0F46     		mov	r7, r1
  67 0016 0446     		mov	r4, r0
  68 0018 33B3     		cbz	r3, .L30
  69              	.L11:
  70 001a 4A4B     		ldr	r3, .L36
  71 001c C4EBC400 		rsb	r0, r4, r4, lsl #3
  72 0020 8000     		lsls	r0, r0, #2
  73 0022 1A18     		adds	r2, r3, r0
  74 0024 1C58     		ldr	r4, [r3, r0]
  75 0026 5568     		ldr	r5, [r2, #4]
  76 0028 2846     		mov	r0, r5
  77 002a 6564     		str	r5, [r4, #68]
  78 002c FFF7FEFF 		bl	_ZL13GetHighestBitm
  79 0030 454B     		ldr	r3, .L36+4
  80 0032 9C42     		cmp	r4, r3
  81 0034 71D0     		beq	.L31
  82 0036 454B     		ldr	r3, .L36+8
  83 0038 9C42     		cmp	r4, r3
  84 003a 5AD0     		beq	.L32
  85 003c 444B     		ldr	r3, .L36+12
  86 003e 9C42     		cmp	r4, r3
  87 0040 72D0     		beq	.L33
  88 0042 444B     		ldr	r3, .L36+16
  89 0044 9C42     		cmp	r4, r3
  90 0046 76D0     		beq	.L34
  91              	.L13:
  92 0048 B8F1030F 		cmp	r8, #3
  93 004c 5ED0     		beq	.L35
  94 004e 08F1FF33 		add	r3, r8, #-1
  95 0052 C4F8B050 		str	r5, [r4, #176]
  96 0056 042B     		cmp	r3, #4
  97 0058 52D8     		bhi	.L18
  98 005a DFE803F0 		tbb	[pc, r3]
  99              	.L20:
 100 005e 45       		.byte	(.L19-.L20)/2
 101 005f 40       		.byte	(.L21-.L20)/2
 102 0060 51       		.byte	(.L18-.L20)/2
 103 0061 3B       		.byte	(.L22-.L20)/2
 104 0062 32       		.byte	(.L23-.L20)/2
 105 0063 00       		.p2align 1
 106              	.L25:
 107 0064 0020     		movs	r0, #0
 108 0066 7047     		bx	lr
 109              	.L30:
 110 0068 0B20     		movs	r0, #11
 111 006a FFF7FEFF 		bl	pmc_enable_periph_clk
 112 006e 4FF40063 		mov	r3, #2048
 113 0072 394D     		ldr	r5, .L36+20
 114 0074 0C20     		movs	r0, #12
ARM GAS  /tmp/ccV1BfqE.s 			page 3


 115 0076 C5F88030 		str	r3, [r5, #128]
 116 007a C5F88031 		str	r3, [r5, #384]
 117 007e 2B60     		str	r3, [r5]
 118 0080 FFF7FEFF 		bl	pmc_enable_periph_clk
 119 0084 4FF48053 		mov	r3, #4096
 120 0088 0D20     		movs	r0, #13
 121 008a C5F88030 		str	r3, [r5, #128]
 122 008e C5F88031 		str	r3, [r5, #384]
 123 0092 2B60     		str	r3, [r5]
 124 0094 FFF7FEFF 		bl	pmc_enable_periph_clk
 125 0098 4FF40053 		mov	r3, #8192
 126 009c 0E20     		movs	r0, #14
 127 009e C5F88030 		str	r3, [r5, #128]
 128 00a2 C5F88031 		str	r3, [r5, #384]
 129 00a6 2B60     		str	r3, [r5]
 130 00a8 FFF7FEFF 		bl	pmc_enable_periph_clk
 131 00ac 4FF48043 		mov	r3, #16384
 132 00b0 0122     		movs	r2, #1
 133 00b2 C5F88030 		str	r3, [r5, #128]
 134 00b6 C5F88031 		str	r3, [r5, #384]
 135 00ba 2B60     		str	r3, [r5]
 136 00bc 89F80020 		strb	r2, [r9]
 137 00c0 ABE7     		b	.L11
 138              	.L23:
 139 00c2 C4F8C050 		str	r5, [r4, #192]
 140 00c6 C4F8D450 		str	r5, [r4, #212]
 141              	.L17:
 142 00ca 2562     		str	r5, [r4, #32]
 143 00cc 0120     		movs	r0, #1
 144 00ce 2564     		str	r5, [r4, #64]
 145 00d0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 146              	.L22:
 147 00d4 C4F8C050 		str	r5, [r4, #192]
 148 00d8 C4F8D050 		str	r5, [r4, #208]
 149 00dc F5E7     		b	.L17
 150              	.L21:
 151 00de C4F8C450 		str	r5, [r4, #196]
 152 00e2 C4F8D450 		str	r5, [r4, #212]
 153 00e6 F0E7     		b	.L17
 154              	.L19:
 155 00e8 C4F8C450 		str	r5, [r4, #196]
 156 00ec C4F8D050 		str	r5, [r4, #208]
 157 00f0 EBE7     		b	.L17
 158              	.L32:
 159 00f2 1A4B     		ldr	r3, .L36+24
 160 00f4 03EBC002 		add	r2, r3, r0, lsl #3
 161 00f8 43F83070 		str	r7, [r3, r0, lsl #3]
 162 00fc 5660     		str	r6, [r2, #4]
 163 00fe A3E7     		b	.L13
 164              	.L18:
 165 0100 B8F1000F 		cmp	r8, #0
 166 0104 E1D1     		bne	.L17
 167 0106 0120     		movs	r0, #1
 168 0108 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 169              	.L35:
 170 010c C4F8B450 		str	r5, [r4, #180]
 171 0110 0120     		movs	r0, #1
ARM GAS  /tmp/ccV1BfqE.s 			page 4


 172 0112 2562     		str	r5, [r4, #32]
 173 0114 2564     		str	r5, [r4, #64]
 174 0116 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 175              	.L31:
 176 011a 114B     		ldr	r3, .L36+28
 177 011c 03EBC002 		add	r2, r3, r0, lsl #3
 178 0120 43F83070 		str	r7, [r3, r0, lsl #3]
 179 0124 5660     		str	r6, [r2, #4]
 180 0126 8FE7     		b	.L13
 181              	.L33:
 182 0128 0E4B     		ldr	r3, .L36+32
 183 012a 03EBC002 		add	r2, r3, r0, lsl #3
 184 012e 43F83070 		str	r7, [r3, r0, lsl #3]
 185 0132 5660     		str	r6, [r2, #4]
 186 0134 88E7     		b	.L13
 187              	.L34:
 188 0136 0C4B     		ldr	r3, .L36+36
 189 0138 03EBC002 		add	r2, r3, r0, lsl #3
 190 013c 43F83070 		str	r7, [r3, r0, lsl #3]
 191 0140 5660     		str	r6, [r2, #4]
 192 0142 81E7     		b	.L13
 193              	.L37:
 194              		.align	2
 195              	.L36:
 196 0144 00000000 		.word	g_APinDescription
 197 0148 000E0E40 		.word	1074662912
 198 014c 00100E40 		.word	1074663424
 199 0150 00120E40 		.word	1074663936
 200 0154 00140E40 		.word	1074664448
 201 0158 00E100E0 		.word	-536813312
 202 015c 00000000 		.word	.LANCHOR2
 203 0160 00000000 		.word	.LANCHOR1
 204 0164 00000000 		.word	.LANCHOR3
 205 0168 00000000 		.word	.LANCHOR4
 206 016c 00000000 		.word	.LANCHOR0
 207              		.size	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_Z15attachInterruptmPFv17Cal
 208              		.section	.text._Z15detachInterruptm,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	_Z15detachInterruptm
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu softvfp
 216              		.type	_Z15detachInterruptm, %function
 217              	_Z15detachInterruptm:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 6D28     		cmp	r0, #109
 222 0002 07D8     		bhi	.L38
 223 0004 044B     		ldr	r3, .L40
 224 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 225 000a 8000     		lsls	r0, r0, #2
 226 000c 1A18     		adds	r2, r3, r0
 227 000e 5268     		ldr	r2, [r2, #4]
 228 0010 1B58     		ldr	r3, [r3, r0]
ARM GAS  /tmp/ccV1BfqE.s 			page 5


 229 0012 5A64     		str	r2, [r3, #68]
 230              	.L38:
 231 0014 7047     		bx	lr
 232              	.L41:
 233 0016 00BF     		.align	2
 234              	.L40:
 235 0018 00000000 		.word	g_APinDescription
 236              		.size	_Z15detachInterruptm, .-_Z15detachInterruptm
 237              		.section	.text._Z11inInterruptv,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_Z11inInterruptv
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu softvfp
 245              		.type	_Z11inInterruptv, %function
 246              	_Z11inInterruptv:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250              		.syntax unified
 251              	@ 371 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 252 0000 EFF30580 		MRS r0, ipsr
 253              	@ 0 "" 2
 254              		.thumb
 255              		.syntax unified
 256 0004 C0F30800 		ubfx	r0, r0, #0, #9
 257 0008 0030     		adds	r0, r0, #0
 258 000a 18BF     		it	ne
 259 000c 0120     		movne	r0, #1
 260 000e 7047     		bx	lr
 261              		.size	_Z11inInterruptv, .-_Z11inInterruptv
 262              		.section	.text._Z16CommonPioHandlerP3PioPK17InterruptCallback,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu softvfp
 270              		.type	_Z16CommonPioHandlerP3PioPK17InterruptCallback, %function
 271              	_Z16CommonPioHandlerP3PioPK17InterruptCallback:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 275 0002 C56C     		ldr	r5, [r0, #76]
 276 0004 836C     		ldr	r3, [r0, #72]
 277 0006 1D40     		ands	r5, r5, r3
 278 0008 10D0     		beq	.L43
 279 000a 0E46     		mov	r6, r1
 280 000c 0127     		movs	r7, #1
 281              	.L47:
 282 000e 2846     		mov	r0, r5
 283 0010 FFF7FEFF 		bl	_ZL13GetHighestBitm
 284 0014 56F83030 		ldr	r3, [r6, r0, lsl #3]
 285 0018 0446     		mov	r4, r0
ARM GAS  /tmp/ccV1BfqE.s 			page 6


 286 001a 06EBC002 		add	r2, r6, r0, lsl #3
 287 001e 0BB1     		cbz	r3, .L45
 288 0020 5068     		ldr	r0, [r2, #4]
 289 0022 9847     		blx	r3
 290              	.L45:
 291 0024 07FA04F4 		lsl	r4, r7, r4
 292 0028 A543     		bics	r5, r5, r4
 293 002a F0D1     		bne	.L47
 294              	.L43:
 295 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 296              		.size	_Z16CommonPioHandlerP3PioPK17InterruptCallback, .-_Z16CommonPioHandlerP3PioPK17InterruptCall
 297 002e 00BF     		.section	.text.PIOA_Handler,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	PIOA_Handler
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu softvfp
 305              		.type	PIOA_Handler, %function
 306              	PIOA_Handler:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 0149     		ldr	r1, .L56
 311 0002 0248     		ldr	r0, .L56+4
 312 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 313              	.L57:
 314              		.align	2
 315              	.L56:
 316 0008 00000000 		.word	.LANCHOR1
 317 000c 000E0E40 		.word	1074662912
 318              		.size	PIOA_Handler, .-PIOA_Handler
 319              		.section	.text.PIOB_Handler,"ax",%progbits
 320              		.align	1
 321              		.p2align 2,,3
 322              		.global	PIOB_Handler
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu softvfp
 327              		.type	PIOB_Handler, %function
 328              	PIOB_Handler:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 332 0000 0149     		ldr	r1, .L59
 333 0002 0248     		ldr	r0, .L59+4
 334 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 335              	.L60:
 336              		.align	2
 337              	.L59:
 338 0008 00000000 		.word	.LANCHOR2
 339 000c 00100E40 		.word	1074663424
 340              		.size	PIOB_Handler, .-PIOB_Handler
 341              		.section	.text.PIOC_Handler,"ax",%progbits
 342              		.align	1
ARM GAS  /tmp/ccV1BfqE.s 			page 7


 343              		.p2align 2,,3
 344              		.global	PIOC_Handler
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	PIOC_Handler, %function
 350              	PIOC_Handler:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354 0000 0149     		ldr	r1, .L62
 355 0002 0248     		ldr	r0, .L62+4
 356 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 357              	.L63:
 358              		.align	2
 359              	.L62:
 360 0008 00000000 		.word	.LANCHOR3
 361 000c 00120E40 		.word	1074663936
 362              		.size	PIOC_Handler, .-PIOC_Handler
 363              		.section	.text.PIOD_Handler,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	PIOD_Handler
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu softvfp
 371              		.type	PIOD_Handler, %function
 372              	PIOD_Handler:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 0149     		ldr	r1, .L65
 377 0002 0248     		ldr	r0, .L65+4
 378 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 379              	.L66:
 380              		.align	2
 381              	.L65:
 382 0008 00000000 		.word	.LANCHOR4
 383 000c 00140E40 		.word	1074664448
 384              		.size	PIOD_Handler, .-PIOD_Handler
 385              		.section	.text.startup._GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 386              		.align	1
 387              		.p2align 2,,3
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 392              		.type	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
 393              	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 0022     		movs	r2, #0
 398 0002 124B     		ldr	r3, .L76
 399 0004 03F58071 		add	r1, r3, #256
ARM GAS  /tmp/ccV1BfqE.s 			page 8


 400              	.L68:
 401 0008 1A60     		str	r2, [r3]
 402 000a 5A60     		str	r2, [r3, #4]
 403 000c 0833     		adds	r3, r3, #8
 404 000e 8B42     		cmp	r3, r1
 405 0010 FAD1     		bne	.L68
 406 0012 0022     		movs	r2, #0
 407 0014 0E4B     		ldr	r3, .L76+4
 408 0016 03F58071 		add	r1, r3, #256
 409              	.L69:
 410 001a 1A60     		str	r2, [r3]
 411 001c 5A60     		str	r2, [r3, #4]
 412 001e 0833     		adds	r3, r3, #8
 413 0020 8B42     		cmp	r3, r1
 414 0022 FAD1     		bne	.L69
 415 0024 0022     		movs	r2, #0
 416 0026 0B4B     		ldr	r3, .L76+8
 417 0028 03F58071 		add	r1, r3, #256
 418              	.L70:
 419 002c 1A60     		str	r2, [r3]
 420 002e 5A60     		str	r2, [r3, #4]
 421 0030 0833     		adds	r3, r3, #8
 422 0032 9942     		cmp	r1, r3
 423 0034 FAD1     		bne	.L70
 424 0036 0022     		movs	r2, #0
 425 0038 074B     		ldr	r3, .L76+12
 426 003a 03F58071 		add	r1, r3, #256
 427              	.L71:
 428 003e 1A60     		str	r2, [r3]
 429 0040 5A60     		str	r2, [r3, #4]
 430 0042 0833     		adds	r3, r3, #8
 431 0044 9942     		cmp	r1, r3
 432 0046 FAD1     		bne	.L71
 433 0048 7047     		bx	lr
 434              	.L77:
 435 004a 00BF     		.align	2
 436              	.L76:
 437 004c 00000000 		.word	.LANCHOR1
 438 0050 00000000 		.word	.LANCHOR2
 439 0054 00000000 		.word	.LANCHOR3
 440 0058 00000000 		.word	.LANCHOR4
 441              		.size	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_GLOBAL__sub_
 442              		.section	.init_array,"aw",%init_array
 443              		.align	2
 444 0000 00000000 		.word	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_(target1)
 445              		.section	.bss._ZL13callbacksPioA,"aw",%nobits
 446              		.align	2
 447              		.set	.LANCHOR1,. + 0
 448              		.type	_ZL13callbacksPioA, %object
 449              		.size	_ZL13callbacksPioA, 256
 450              	_ZL13callbacksPioA:
 451 0000 00000000 		.space	256
 451      00000000 
 451      00000000 
 451      00000000 
 451      00000000 
 452              		.section	.bss._ZL13callbacksPioB,"aw",%nobits
ARM GAS  /tmp/ccV1BfqE.s 			page 9


 453              		.align	2
 454              		.set	.LANCHOR2,. + 0
 455              		.type	_ZL13callbacksPioB, %object
 456              		.size	_ZL13callbacksPioB, 256
 457              	_ZL13callbacksPioB:
 458 0000 00000000 		.space	256
 458      00000000 
 458      00000000 
 458      00000000 
 458      00000000 
 459              		.section	.bss._ZL13callbacksPioC,"aw",%nobits
 460              		.align	2
 461              		.set	.LANCHOR3,. + 0
 462              		.type	_ZL13callbacksPioC, %object
 463              		.size	_ZL13callbacksPioC, 256
 464              	_ZL13callbacksPioC:
 465 0000 00000000 		.space	256
 465      00000000 
 465      00000000 
 465      00000000 
 465      00000000 
 466              		.section	.bss._ZL13callbacksPioD,"aw",%nobits
 467              		.align	2
 468              		.set	.LANCHOR4,. + 0
 469              		.type	_ZL13callbacksPioD, %object
 470              		.size	_ZL13callbacksPioD, 256
 471              	_ZL13callbacksPioD:
 472 0000 00000000 		.space	256
 472      00000000 
 472      00000000 
 472      00000000 
 472      00000000 
 473              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 474              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 475              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 476              	_ZL28cpu_irq_prev_interrupt_state:
 477 0000 00       		.space	1
 478              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 479              		.align	2
 480              		.type	_ZL32cpu_irq_critical_section_counter, %object
 481              		.size	_ZL32cpu_irq_critical_section_counter, 4
 482              	_ZL32cpu_irq_critical_section_counter:
 483 0000 00000000 		.space	4
 484              		.section	.bss._ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled,"aw",%nobits
 485              		.set	.LANCHOR0,. + 0
 486              		.type	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, %object
 487              		.size	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, 1
 488              	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled:
 489 0000 00       		.space	1
 490              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
