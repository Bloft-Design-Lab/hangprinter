ARM GAS  /tmp/ccZBRw2O.s 			page 1


   1              		.cpu cortex-m4
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
ARM GAS  /tmp/ccZBRw2O.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 4328     		cmp	r0, #67
  60 0002 2CD8     		bhi	.L24
  61 0004 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  62 0008 DFF83091 		ldr	r9, .L34+32
  63 000c 1E46     		mov	r6, r3
  64 000e 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
  65 0012 9046     		mov	r8, r2
  66 0014 0F46     		mov	r7, r1
  67 0016 0446     		mov	r4, r0
  68 0018 1BB3     		cbz	r3, .L29
  69              	.L11:
  70 001a 404B     		ldr	r3, .L34
  71 001c C4EBC400 		rsb	r0, r4, r4, lsl #3
  72 0020 8000     		lsls	r0, r0, #2
  73 0022 1A18     		adds	r2, r3, r0
  74 0024 1C58     		ldr	r4, [r3, r0]
  75 0026 5568     		ldr	r5, [r2, #4]
  76 0028 6564     		str	r5, [r4, #68]
  77 002a 2846     		mov	r0, r5
  78 002c FFF7FEFF 		bl	_ZL13GetHighestBitm
  79 0030 3B4B     		ldr	r3, .L34+4
  80 0032 9C42     		cmp	r4, r3
  81 0034 64D0     		beq	.L30
  82 0036 3B4B     		ldr	r3, .L34+8
  83 0038 9C42     		cmp	r4, r3
  84 003a 4DD0     		beq	.L31
  85 003c 3A4B     		ldr	r3, .L34+12
  86 003e 9C42     		cmp	r4, r3
  87 0040 65D0     		beq	.L32
  88              	.L13:
  89 0042 B8F1030F 		cmp	r8, #3
  90 0046 54D0     		beq	.L33
  91 0048 08F1FF33 		add	r3, r8, #-1
  92 004c C4F8B050 		str	r5, [r4, #176]
  93 0050 042B     		cmp	r3, #4
  94 0052 48D8     		bhi	.L17
  95 0054 DFE803F0 		tbb	[pc, r3]
  96              	.L19:
  97 0058 3B       		.byte	(.L18-.L19)/2
  98 0059 36       		.byte	(.L20-.L19)/2
  99 005a 47       		.byte	(.L17-.L19)/2
 100 005b 31       		.byte	(.L21-.L19)/2
 101 005c 28       		.byte	(.L22-.L19)/2
 102 005d 00       		.p2align 1
 103              	.L24:
 104 005e 0020     		movs	r0, #0
 105 0060 7047     		bx	lr
 106              	.L29:
 107 0062 324D     		ldr	r5, .L34+16
 108 0064 0B20     		movs	r0, #11
 109 0066 FFF7FEFF 		bl	pmc_enable_periph_clk
 110 006a 4FF40063 		mov	r3, #2048
 111 006e C5F88030 		str	r3, [r5, #128]
 112 0072 0C20     		movs	r0, #12
 113 0074 C5F88031 		str	r3, [r5, #384]
 114 0078 2B60     		str	r3, [r5]
ARM GAS  /tmp/ccZBRw2O.s 			page 3


 115 007a FFF7FEFF 		bl	pmc_enable_periph_clk
 116 007e 4FF48053 		mov	r3, #4096
 117 0082 C5F88030 		str	r3, [r5, #128]
 118 0086 0D20     		movs	r0, #13
 119 0088 C5F88031 		str	r3, [r5, #384]
 120 008c 2B60     		str	r3, [r5]
 121 008e FFF7FEFF 		bl	pmc_enable_periph_clk
 122 0092 4FF40053 		mov	r3, #8192
 123 0096 0122     		movs	r2, #1
 124 0098 C5F88030 		str	r3, [r5, #128]
 125 009c C5F88031 		str	r3, [r5, #384]
 126 00a0 2B60     		str	r3, [r5]
 127 00a2 89F80020 		strb	r2, [r9]
 128 00a6 B8E7     		b	.L11
 129              	.L22:
 130 00a8 C4F8C050 		str	r5, [r4, #192]
 131 00ac C4F8D450 		str	r5, [r4, #212]
 132              	.L16:
 133 00b0 2562     		str	r5, [r4, #32]
 134 00b2 0120     		movs	r0, #1
 135 00b4 2564     		str	r5, [r4, #64]
 136 00b6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 137              	.L21:
 138 00ba C4F8C050 		str	r5, [r4, #192]
 139 00be C4F8D050 		str	r5, [r4, #208]
 140 00c2 F5E7     		b	.L16
 141              	.L20:
 142 00c4 C4F8C450 		str	r5, [r4, #196]
 143 00c8 C4F8D450 		str	r5, [r4, #212]
 144 00cc F0E7     		b	.L16
 145              	.L18:
 146 00ce C4F8C450 		str	r5, [r4, #196]
 147 00d2 C4F8D050 		str	r5, [r4, #208]
 148 00d6 EBE7     		b	.L16
 149              	.L31:
 150 00d8 154B     		ldr	r3, .L34+20
 151 00da 03EBC002 		add	r2, r3, r0, lsl #3
 152 00de 43F83070 		str	r7, [r3, r0, lsl #3]
 153 00e2 5660     		str	r6, [r2, #4]
 154 00e4 ADE7     		b	.L13
 155              	.L17:
 156 00e6 B8F1000F 		cmp	r8, #0
 157 00ea E1D1     		bne	.L16
 158 00ec 0120     		movs	r0, #1
 159 00ee BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 160              	.L33:
 161 00f2 C4F8B450 		str	r5, [r4, #180]
 162 00f6 0120     		movs	r0, #1
 163 00f8 2562     		str	r5, [r4, #32]
 164 00fa 2564     		str	r5, [r4, #64]
 165 00fc BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 166              	.L30:
 167 0100 0C4B     		ldr	r3, .L34+24
 168 0102 03EBC002 		add	r2, r3, r0, lsl #3
 169 0106 43F83070 		str	r7, [r3, r0, lsl #3]
 170 010a 5660     		str	r6, [r2, #4]
 171 010c 99E7     		b	.L13
ARM GAS  /tmp/ccZBRw2O.s 			page 4


 172              	.L32:
 173 010e 0A4B     		ldr	r3, .L34+28
 174 0110 03EBC002 		add	r2, r3, r0, lsl #3
 175 0114 43F83070 		str	r7, [r3, r0, lsl #3]
 176 0118 5660     		str	r6, [r2, #4]
 177 011a 92E7     		b	.L13
 178              	.L35:
 179              		.align	2
 180              	.L34:
 181 011c 00000000 		.word	g_APinDescription
 182 0120 000E0E40 		.word	1074662912
 183 0124 00100E40 		.word	1074663424
 184 0128 00120E40 		.word	1074663936
 185 012c 00E100E0 		.word	-536813312
 186 0130 00000000 		.word	.LANCHOR2
 187 0134 00000000 		.word	.LANCHOR1
 188 0138 00000000 		.word	.LANCHOR3
 189 013c 00000000 		.word	.LANCHOR0
 190              		.size	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_Z15attachInterruptmPFv17Cal
 191              		.section	.text._Z15detachInterruptm,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_Z15detachInterruptm
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu softvfp
 199              		.type	_Z15detachInterruptm, %function
 200              	_Z15detachInterruptm:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 4328     		cmp	r0, #67
 205 0002 07D8     		bhi	.L36
 206 0004 044B     		ldr	r3, .L38
 207 0006 C0EBC000 		rsb	r0, r0, r0, lsl #3
 208 000a 8000     		lsls	r0, r0, #2
 209 000c 1A18     		adds	r2, r3, r0
 210 000e 1B58     		ldr	r3, [r3, r0]
 211 0010 5268     		ldr	r2, [r2, #4]
 212 0012 5A64     		str	r2, [r3, #68]
 213              	.L36:
 214 0014 7047     		bx	lr
 215              	.L39:
 216 0016 00BF     		.align	2
 217              	.L38:
 218 0018 00000000 		.word	g_APinDescription
 219              		.size	_Z15detachInterruptm, .-_Z15detachInterruptm
 220              		.section	.text._Z11inInterruptv,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_Z11inInterruptv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu softvfp
 228              		.type	_Z11inInterruptv, %function
ARM GAS  /tmp/ccZBRw2O.s 			page 5


 229              	_Z11inInterruptv:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233              		.syntax unified
 234              	@ 371 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 235 0000 EFF30580 		MRS r0, ipsr
 236              	@ 0 "" 2
 237              		.thumb
 238              		.syntax unified
 239 0004 C0F30800 		ubfx	r0, r0, #0, #9
 240 0008 0030     		adds	r0, r0, #0
 241 000a 18BF     		it	ne
 242 000c 0120     		movne	r0, #1
 243 000e 7047     		bx	lr
 244              		.size	_Z11inInterruptv, .-_Z11inInterruptv
 245              		.section	.text._Z16CommonPioHandlerP3PioPK17InterruptCallback,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu softvfp
 253              		.type	_Z16CommonPioHandlerP3PioPK17InterruptCallback, %function
 254              	_Z16CommonPioHandlerP3PioPK17InterruptCallback:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 258 0002 C56C     		ldr	r5, [r0, #76]
 259 0004 836C     		ldr	r3, [r0, #72]
 260 0006 1D40     		ands	r5, r5, r3
 261 0008 10D0     		beq	.L41
 262 000a 0E46     		mov	r6, r1
 263 000c 0127     		movs	r7, #1
 264              	.L45:
 265 000e 2846     		mov	r0, r5
 266 0010 FFF7FEFF 		bl	_ZL13GetHighestBitm
 267 0014 56F83030 		ldr	r3, [r6, r0, lsl #3]
 268 0018 0446     		mov	r4, r0
 269 001a 06EBC002 		add	r2, r6, r0, lsl #3
 270 001e 0BB1     		cbz	r3, .L43
 271 0020 5068     		ldr	r0, [r2, #4]
 272 0022 9847     		blx	r3
 273              	.L43:
 274 0024 07FA04F4 		lsl	r4, r7, r4
 275 0028 A543     		bics	r5, r5, r4
 276 002a F0D1     		bne	.L45
 277              	.L41:
 278 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 279              		.size	_Z16CommonPioHandlerP3PioPK17InterruptCallback, .-_Z16CommonPioHandlerP3PioPK17InterruptCall
 280 002e 00BF     		.section	.text.PIOA_Handler,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.global	PIOA_Handler
 284              		.syntax unified
 285              		.thumb
ARM GAS  /tmp/ccZBRw2O.s 			page 6


 286              		.thumb_func
 287              		.fpu softvfp
 288              		.type	PIOA_Handler, %function
 289              	PIOA_Handler:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293 0000 0149     		ldr	r1, .L54
 294 0002 0248     		ldr	r0, .L54+4
 295 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 296              	.L55:
 297              		.align	2
 298              	.L54:
 299 0008 00000000 		.word	.LANCHOR1
 300 000c 000E0E40 		.word	1074662912
 301              		.size	PIOA_Handler, .-PIOA_Handler
 302              		.section	.text.PIOB_Handler,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	PIOB_Handler
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu softvfp
 310              		.type	PIOB_Handler, %function
 311              	PIOB_Handler:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              		@ link register save eliminated.
 315 0000 0149     		ldr	r1, .L57
 316 0002 0248     		ldr	r0, .L57+4
 317 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 318              	.L58:
 319              		.align	2
 320              	.L57:
 321 0008 00000000 		.word	.LANCHOR2
 322 000c 00100E40 		.word	1074663424
 323              		.size	PIOB_Handler, .-PIOB_Handler
 324              		.section	.text.PIOC_Handler,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	PIOC_Handler
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu softvfp
 332              		.type	PIOC_Handler, %function
 333              	PIOC_Handler:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 0149     		ldr	r1, .L60
 338 0002 0248     		ldr	r0, .L60+4
 339 0004 FFF7FEBF 		b	_Z16CommonPioHandlerP3PioPK17InterruptCallback
 340              	.L61:
 341              		.align	2
 342              	.L60:
ARM GAS  /tmp/ccZBRw2O.s 			page 7


 343 0008 00000000 		.word	.LANCHOR3
 344 000c 00120E40 		.word	1074663936
 345              		.size	PIOC_Handler, .-PIOC_Handler
 346              		.section	.text.startup._GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 347              		.align	1
 348              		.p2align 2,,3
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu softvfp
 353              		.type	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, %function
 354              	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 0D4B     		ldr	r3, .L69
 359 0002 0022     		movs	r2, #0
 360 0004 03F58071 		add	r1, r3, #256
 361              	.L63:
 362 0008 1A60     		str	r2, [r3]
 363 000a 5A60     		str	r2, [r3, #4]
 364 000c 0833     		adds	r3, r3, #8
 365 000e 8B42     		cmp	r3, r1
 366 0010 FAD1     		bne	.L63
 367 0012 0A4B     		ldr	r3, .L69+4
 368 0014 0022     		movs	r2, #0
 369 0016 03F58071 		add	r1, r3, #256
 370              	.L64:
 371 001a 1A60     		str	r2, [r3]
 372 001c 5A60     		str	r2, [r3, #4]
 373 001e 0833     		adds	r3, r3, #8
 374 0020 9942     		cmp	r1, r3
 375 0022 FAD1     		bne	.L64
 376 0024 064B     		ldr	r3, .L69+8
 377 0026 0022     		movs	r2, #0
 378 0028 03F58071 		add	r1, r3, #256
 379              	.L65:
 380 002c 1A60     		str	r2, [r3]
 381 002e 5A60     		str	r2, [r3, #4]
 382 0030 0833     		adds	r3, r3, #8
 383 0032 8B42     		cmp	r3, r1
 384 0034 FAD1     		bne	.L65
 385 0036 7047     		bx	lr
 386              	.L70:
 387              		.align	2
 388              	.L69:
 389 0038 00000000 		.word	.LANCHOR1
 390 003c 00000000 		.word	.LANCHOR2
 391 0040 00000000 		.word	.LANCHOR3
 392              		.size	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_, .-_GLOBAL__sub_
 393              		.section	.init_array,"aw",%init_array
 394              		.align	2
 395 0000 00000000 		.word	_GLOBAL__sub_I__Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_(target1)
 396              		.section	.bss._ZL13callbacksPioA,"aw",%nobits
 397              		.align	2
 398              		.set	.LANCHOR1,. + 0
 399              		.type	_ZL13callbacksPioA, %object
ARM GAS  /tmp/ccZBRw2O.s 			page 8


 400              		.size	_ZL13callbacksPioA, 256
 401              	_ZL13callbacksPioA:
 402 0000 00000000 		.space	256
 402      00000000 
 402      00000000 
 402      00000000 
 402      00000000 
 403              		.section	.bss._ZL13callbacksPioB,"aw",%nobits
 404              		.align	2
 405              		.set	.LANCHOR2,. + 0
 406              		.type	_ZL13callbacksPioB, %object
 407              		.size	_ZL13callbacksPioB, 256
 408              	_ZL13callbacksPioB:
 409 0000 00000000 		.space	256
 409      00000000 
 409      00000000 
 409      00000000 
 409      00000000 
 410              		.section	.bss._ZL13callbacksPioC,"aw",%nobits
 411              		.align	2
 412              		.set	.LANCHOR3,. + 0
 413              		.type	_ZL13callbacksPioC, %object
 414              		.size	_ZL13callbacksPioC, 256
 415              	_ZL13callbacksPioC:
 416 0000 00000000 		.space	256
 416      00000000 
 416      00000000 
 416      00000000 
 416      00000000 
 417              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 418              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 419              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 420              	_ZL28cpu_irq_prev_interrupt_state:
 421 0000 00       		.space	1
 422              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 423              		.align	2
 424              		.type	_ZL32cpu_irq_critical_section_counter, %object
 425              		.size	_ZL32cpu_irq_critical_section_counter, 4
 426              	_ZL32cpu_irq_critical_section_counter:
 427 0000 00000000 		.space	4
 428              		.section	.bss._ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled,"aw",%nobits
 429              		.set	.LANCHOR0,. + 0
 430              		.type	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, %object
 431              		.size	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled, 1
 432              	_ZZ15attachInterruptmPFv17CallbackParameterE13InterruptModeS_E7enabled:
 433 0000 00       		.space	1
 434              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
