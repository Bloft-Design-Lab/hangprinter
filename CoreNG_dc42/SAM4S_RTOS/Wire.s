ARM GAS  /tmp/ccRO7MMq.s 			page 1


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
  11              		.file	"Wire.cpp"
  12              		.section	.text._ZNK6Stream8canWriteEv,"axG",%progbits,_ZNK6Stream8canWriteEv,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK6Stream8canWriteEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK6Stream8canWriteEv, %function
  21              	_ZNK6Stream8canWriteEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0120     		movs	r0, #1
  26 0002 7047     		bx	lr
  27              		.size	_ZNK6Stream8canWriteEv, .-_ZNK6Stream8canWriteEv
  28              		.section	.text._ZN7TwoWireD2Ev,"axG",%progbits,_ZN7TwoWireD5Ev,comdat
  29              		.align	1
  30              		.p2align 2,,3
  31              		.weak	_ZN7TwoWireD2Ev
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN7TwoWireD2Ev, %function
  37              	_ZN7TwoWireD2Ev:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 7047     		bx	lr
  42              		.size	_ZN7TwoWireD2Ev, .-_ZN7TwoWireD2Ev
  43              		.weak	_ZN7TwoWireD1Ev
  44              		.thumb_set _ZN7TwoWireD1Ev,_ZN7TwoWireD2Ev
  45 0002 00BF     		.section	.text._ZN7TwoWire9availableEv,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN7TwoWire9availableEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu softvfp
  53              		.type	_ZN7TwoWire9availableEv, %function
  54              	_ZN7TwoWire9availableEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccRO7MMq.s 			page 2


  58 0000 90F83120 		ldrb	r2, [r0, #49]	@ zero_extendqisi2
  59 0004 90F83000 		ldrb	r0, [r0, #48]	@ zero_extendqisi2
  60 0008 101A     		subs	r0, r2, r0
  61 000a 7047     		bx	lr
  62              		.size	_ZN7TwoWire9availableEv, .-_ZN7TwoWire9availableEv
  63              		.section	.text._ZN7TwoWire4readEv,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	_ZN7TwoWire4readEv
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu softvfp
  71              		.type	_ZN7TwoWire4readEv, %function
  72              	_ZN7TwoWire4readEv:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75              		@ link register save eliminated.
  76 0000 90F83030 		ldrb	r3, [r0, #48]	@ zero_extendqisi2
  77 0004 90F83120 		ldrb	r2, [r0, #49]	@ zero_extendqisi2
  78 0008 9342     		cmp	r3, r2
  79 000a 05DA     		bge	.L6
  80 000c 5A1C     		adds	r2, r3, #1
  81 000e 0344     		add	r3, r3, r0
  82 0010 80F83020 		strb	r2, [r0, #48]
  83 0014 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
  84 0016 7047     		bx	lr
  85              	.L6:
  86 0018 4FF0FF30 		mov	r0, #-1
  87 001c 7047     		bx	lr
  88              		.size	_ZN7TwoWire4readEv, .-_ZN7TwoWire4readEv
  89              		.section	.text._ZN7TwoWire4peekEv,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	_ZN7TwoWire4peekEv
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu softvfp
  97              		.type	_ZN7TwoWire4peekEv, %function
  98              	_ZN7TwoWire4peekEv:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 90F83030 		ldrb	r3, [r0, #48]	@ zero_extendqisi2
 103 0004 90F83120 		ldrb	r2, [r0, #49]	@ zero_extendqisi2
 104 0008 9342     		cmp	r3, r2
 105 000a BABF     		itte	lt
 106 000c C018     		addlt	r0, r0, r3
 107 000e 007C     		ldrblt	r0, [r0, #16]	@ zero_extendqisi2
 108 0010 4FF0FF30 		movge	r0, #-1
 109 0014 7047     		bx	lr
 110              		.size	_ZN7TwoWire4peekEv, .-_ZN7TwoWire4peekEv
 111 0016 00BF     		.section	.text._ZN7TwoWire5flushEv,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN7TwoWire5flushEv
ARM GAS  /tmp/ccRO7MMq.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu softvfp
 119              		.type	_ZN7TwoWire5flushEv, %function
 120              	_ZN7TwoWire5flushEv:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123              		@ link register save eliminated.
 124 0000 7047     		bx	lr
 125              		.size	_ZN7TwoWire5flushEv, .-_ZN7TwoWire5flushEv
 126 0002 00BF     		.section	.text._ZN7TwoWireD0Ev,"axG",%progbits,_ZN7TwoWireD5Ev,comdat
 127              		.align	1
 128              		.p2align 2,,3
 129              		.weak	_ZN7TwoWireD0Ev
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu softvfp
 134              		.type	_ZN7TwoWireD0Ev, %function
 135              	_ZN7TwoWireD0Ev:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 10B5     		push	{r4, lr}
 139 0002 8C21     		movs	r1, #140
 140 0004 0446     		mov	r4, r0
 141 0006 FFF7FEFF 		bl	_ZdlPvj
 142 000a 2046     		mov	r0, r4
 143 000c 10BD     		pop	{r4, pc}
 144              		.size	_ZN7TwoWireD0Ev, .-_ZN7TwoWireD0Ev
 145 000e 00BF     		.section	.text._ZL9Wire_Initv,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu softvfp
 152              		.type	_ZL9Wire_Initv, %function
 153              	_ZL9Wire_Initv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 0A4C     		ldr	r4, .L16
 158 0004 1320     		movs	r0, #19
 159 0006 FFF7FEFF 		bl	pmc_enable_periph_clk
 160 000a 2046     		mov	r0, r4
 161 000c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 162 0010 04F11C00 		add	r0, r4, #28
 163 0014 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 164 0018 054B     		ldr	r3, .L16+4
 165 001a 4FF40022 		mov	r2, #524288
 166 001e C3F88020 		str	r2, [r3, #128]
 167 0022 C3F88021 		str	r2, [r3, #384]
 168 0026 1A60     		str	r2, [r3]
 169 0028 10BD     		pop	{r4, pc}
 170              	.L17:
 171 002a 00BF     		.align	2
ARM GAS  /tmp/ccRO7MMq.s 			page 4


 172              	.L16:
 173 002c 54000000 		.word	g_APinDescription+84
 174 0030 00E100E0 		.word	-536813312
 175              		.size	_ZL9Wire_Initv, .-_ZL9Wire_Initv
 176              		.section	.text._ZN7TwoWire5writeEh,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN7TwoWire5writeEh
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu softvfp
 184              		.type	_ZN7TwoWire5writeEh, %function
 185              	_ZN7TwoWire5writeEh:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 190 0004 022B     		cmp	r3, #2
 191 0006 0BD0     		beq	.L23
 192 0008 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 193 000c 1F2B     		cmp	r3, #31
 194 000e 0BDC     		bgt	.L22
 195 0010 C218     		adds	r2, r0, r3
 196 0012 0133     		adds	r3, r3, #1
 197 0014 80F87530 		strb	r3, [r0, #117]
 198 0018 0120     		movs	r0, #1
 199 001a 82F85410 		strb	r1, [r2, #84]
 200 001e 7047     		bx	lr
 201              	.L23:
 202 0020 90F85330 		ldrb	r3, [r0, #83]	@ zero_extendqisi2
 203 0024 1F2B     		cmp	r3, #31
 204 0026 01DD     		ble	.L24
 205              	.L22:
 206 0028 0020     		movs	r0, #0
 207 002a 7047     		bx	lr
 208              	.L24:
 209 002c C218     		adds	r2, r0, r3
 210 002e 0133     		adds	r3, r3, #1
 211 0030 80F85330 		strb	r3, [r0, #83]
 212 0034 0120     		movs	r0, #1
 213 0036 82F83310 		strb	r1, [r2, #51]
 214 003a 7047     		bx	lr
 215              		.size	_ZN7TwoWire5writeEh, .-_ZN7TwoWire5writeEh
 216              		.section	.text._ZN7TwoWire5writeEPKhj,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN7TwoWire5writeEPKhj
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu softvfp
 224              		.type	_ZN7TwoWire5writeEPKhj, %function
 225              	_ZN7TwoWire5writeEPKhj:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
ARM GAS  /tmp/ccRO7MMq.s 			page 5


 229 0004 022B     		cmp	r3, #2
 230 0006 F0B5     		push	{r4, r5, r6, r7, lr}
 231 0008 0546     		mov	r5, r0
 232 000a 1ED0     		beq	.L26
 233 000c DAB1     		cbz	r2, .L37
 234 000e 90F87570 		ldrb	r7, [r0, #117]	@ zero_extendqisi2
 235 0012 1F2F     		cmp	r7, #31
 236 0014 3B46     		mov	r3, r7
 237 0016 16DC     		bgt	.L37
 238 0018 01EB020E 		add	lr, r1, r2
 239 001c 0120     		movs	r0, #1
 240 001e 02E0     		b	.L31
 241              	.L40:
 242 0020 1F2B     		cmp	r3, #31
 243 0022 11D8     		bhi	.L25
 244 0024 2046     		mov	r0, r4
 245              	.L31:
 246 0026 3C18     		adds	r4, r7, r0
 247 0028 E4B2     		uxtb	r4, r4
 248 002a 85F87540 		strb	r4, [r5, #117]
 249 002e 11F8016B 		ldrb	r6, [r1], #1	@ zero_extendqisi2
 250 0032 2B44     		add	r3, r3, r5
 251 0034 7145     		cmp	r1, lr
 252 0036 83F85460 		strb	r6, [r3, #84]
 253 003a 2346     		mov	r3, r4
 254 003c 00F10104 		add	r4, r0, #1
 255 0040 EED1     		bne	.L40
 256 0042 1046     		mov	r0, r2
 257 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 258              	.L37:
 259 0046 0020     		movs	r0, #0
 260              	.L25:
 261 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 262              	.L26:
 263 004a 002A     		cmp	r2, #0
 264 004c FBD0     		beq	.L37
 265 004e 90F85370 		ldrb	r7, [r0, #83]	@ zero_extendqisi2
 266 0052 1F2F     		cmp	r7, #31
 267 0054 3B46     		mov	r3, r7
 268 0056 F6DC     		bgt	.L37
 269 0058 01EB020E 		add	lr, r1, r2
 270 005c 0120     		movs	r0, #1
 271 005e 02E0     		b	.L29
 272              	.L30:
 273 0060 1F2B     		cmp	r3, #31
 274 0062 F1D8     		bhi	.L25
 275 0064 2046     		mov	r0, r4
 276              	.L29:
 277 0066 3C18     		adds	r4, r7, r0
 278 0068 E4B2     		uxtb	r4, r4
 279 006a 85F85340 		strb	r4, [r5, #83]
 280 006e 11F8016B 		ldrb	r6, [r1], #1	@ zero_extendqisi2
 281 0072 2B44     		add	r3, r3, r5
 282 0074 8E45     		cmp	lr, r1
 283 0076 83F83360 		strb	r6, [r3, #51]
 284 007a 2346     		mov	r3, r4
 285 007c 00F10104 		add	r4, r0, #1
ARM GAS  /tmp/ccRO7MMq.s 			page 6


 286 0080 EED1     		bne	.L30
 287 0082 1046     		mov	r0, r2
 288 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 289              		.size	_ZN7TwoWire5writeEPKhj, .-_ZN7TwoWire5writeEPKhj
 290 0086 00BF     		.section	.text._Z8TWI_StopP3Twi,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	_Z8TWI_StopP3Twi
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu softvfp
 298              		.type	_Z8TWI_StopP3Twi, %function
 299              	_Z8TWI_StopP3Twi:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 303 0000 0223     		movs	r3, #2
 304 0002 0360     		str	r3, [r0]
 305 0004 7047     		bx	lr
 306              		.size	_Z8TWI_StopP3Twi, .-_Z8TWI_StopP3Twi
 307 0006 00BF     		.section	.text._ZN7TwoWireC2EP3TwiPFvvE,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.global	_ZN7TwoWireC2EP3TwiPFvvE
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu softvfp
 315              		.type	_ZN7TwoWireC2EP3TwiPFvvE, %function
 316              	_ZN7TwoWireC2EP3TwiPFvvE:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 30B4     		push	{r4, r5}
 321 0002 4FF47A75 		mov	r5, #1000
 322 0006 0E4C     		ldr	r4, .L45
 323 0008 C0F88020 		str	r2, [r0, #128]
 324 000c 0022     		movs	r2, #0
 325 000e 8560     		str	r5, [r0, #8]
 326 0010 0460     		str	r4, [r0]
 327 0012 C0F88410 		str	r1, [r0, #132]
 328 0016 4260     		str	r2, [r0, #4]
 329 0018 C260     		str	r2, [r0, #12]
 330 001a 80F83020 		strb	r2, [r0, #48]
 331 001e 80F83120 		strb	r2, [r0, #49]
 332 0022 80F83220 		strb	r2, [r0, #50]
 333 0026 80F85320 		strb	r2, [r0, #83]
 334 002a 80F87420 		strb	r2, [r0, #116]
 335 002e 80F87520 		strb	r2, [r0, #117]
 336 0032 8267     		str	r2, [r0, #120]
 337 0034 C267     		str	r2, [r0, #124]
 338 0036 80F88820 		strb	r2, [r0, #136]
 339 003a 30BC     		pop	{r4, r5}
 340 003c 7047     		bx	lr
 341              	.L46:
 342 003e 00BF     		.align	2
ARM GAS  /tmp/ccRO7MMq.s 			page 7


 343              	.L45:
 344 0040 08000000 		.word	.LANCHOR0+8
 345              		.size	_ZN7TwoWireC2EP3TwiPFvvE, .-_ZN7TwoWireC2EP3TwiPFvvE
 346              		.global	_ZN7TwoWireC1EP3TwiPFvvE
 347              		.thumb_set _ZN7TwoWireC1EP3TwiPFvvE,_ZN7TwoWireC2EP3TwiPFvvE
 348              		.section	.text._ZN7TwoWire5beginEv,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	_ZN7TwoWire5beginEv
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	_ZN7TwoWire5beginEv, %function
 357              	_ZN7TwoWire5beginEv:
 358              		@ args = 0, pretend = 0, frame = 16
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 10B5     		push	{r4, lr}
 361 0002 D0F88030 		ldr	r3, [r0, #128]
 362 0006 84B0     		sub	sp, sp, #16
 363 0008 0446     		mov	r4, r0
 364 000a 03B1     		cbz	r3, .L48
 365 000c 9847     		blx	r3
 366              	.L48:
 367 000e D4F88400 		ldr	r0, [r4, #132]
 368 0012 0A4B     		ldr	r3, .L53
 369 0014 0293     		str	r3, [sp, #8]
 370 0016 40F20223 		movw	r3, #514
 371 001a 094A     		ldr	r2, .L53+4
 372 001c C0F82031 		str	r3, [r0, #288]
 373 0020 01A9     		add	r1, sp, #4
 374 0022 0023     		movs	r3, #0
 375 0024 8DF80D30 		strb	r3, [sp, #13]
 376 0028 8DF80C30 		strb	r3, [sp, #12]
 377 002c 0192     		str	r2, [sp, #4]
 378 002e FFF7FEFF 		bl	twi_master_init
 379 0032 0123     		movs	r3, #1
 380 0034 84F88830 		strb	r3, [r4, #136]
 381 0038 04B0     		add	sp, sp, #16
 382              		@ sp needed
 383 003a 10BD     		pop	{r4, pc}
 384              	.L54:
 385              		.align	2
 386              	.L53:
 387 003c A0860100 		.word	100000
 388 0040 000E2707 		.word	120000000
 389              		.size	_ZN7TwoWire5beginEv, .-_ZN7TwoWire5beginEv
 390              		.section	.text._ZN7TwoWire5beginEh,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	_ZN7TwoWire5beginEh
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu softvfp
 398              		.type	_ZN7TwoWire5beginEh, %function
 399              	_ZN7TwoWire5beginEh:
ARM GAS  /tmp/ccRO7MMq.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 38B5     		push	{r3, r4, r5, lr}
 403 0002 D0F88030 		ldr	r3, [r0, #128]
 404 0006 0446     		mov	r4, r0
 405 0008 0D46     		mov	r5, r1
 406 000a 03B1     		cbz	r3, .L56
 407 000c 9847     		blx	r3
 408              	.L56:
 409 000e D4F88400 		ldr	r0, [r4, #132]
 410 0012 40F20223 		movw	r3, #514
 411 0016 2946     		mov	r1, r5
 412 0018 C0F82031 		str	r3, [r0, #288]
 413 001c FFF7FEFF 		bl	twi_slave_init
 414 0020 0423     		movs	r3, #4
 415 0022 84F88830 		strb	r3, [r4, #136]
 416 0026 D4F88400 		ldr	r0, [r4, #132]
 417 002a 1021     		movs	r1, #16
 418 002c BDE83840 		pop	{r3, r4, r5, lr}
 419 0030 FFF7FEBF 		b	twi_enable_interrupt
 420              		.size	_ZN7TwoWire5beginEh, .-_ZN7TwoWire5beginEh
 421              		.section	.text._ZN7TwoWire11requestFromEhh,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZN7TwoWire11requestFromEhh
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu softvfp
 429              		.type	_ZN7TwoWire11requestFromEhh, %function
 430              	_ZN7TwoWire11requestFromEhh:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 434 0002 202A     		cmp	r2, #32
 435 0004 4FF00003 		mov	r3, #0
 436 0008 A8BF     		it	ge
 437 000a 2022     		movge	r2, #32
 438 000c 1C46     		mov	r4, r3
 439 000e 0646     		mov	r6, r0
 440 0010 0904     		lsls	r1, r1, #16
 441 0012 D0F88400 		ldr	r0, [r0, #132]
 442 0016 1546     		mov	r5, r2
 443 0018 0134     		adds	r4, r4, #1
 444 001a 41F48051 		orr	r1, r1, #4096
 445 001e 0127     		movs	r7, #1
 446 0020 AC42     		cmp	r4, r5
 447 0022 4360     		str	r3, [r0, #4]
 448 0024 4160     		str	r1, [r0, #4]
 449 0026 C360     		str	r3, [r0, #12]
 450 0028 C360     		str	r3, [r0, #12]
 451 002a 0760     		str	r7, [r0]
 452 002c 14D0     		beq	.L72
 453              	.L62:
 454 002e 184B     		ldr	r3, .L75
 455 0030 04E0     		b	.L64
 456              	.L73:
ARM GAS  /tmp/ccRO7MMq.s 			page 9


 457 0032 016A     		ldr	r1, [r0, #32]
 458 0034 CF05     		lsls	r7, r1, #23
 459 0036 04D4     		bmi	.L63
 460 0038 013B     		subs	r3, r3, #1
 461 003a 02D0     		beq	.L63
 462              	.L64:
 463 003c 016A     		ldr	r1, [r0, #32]
 464 003e 8A07     		lsls	r2, r1, #30
 465 0040 F7D5     		bpl	.L73
 466              	.L63:
 467 0042 FFF7FEFF 		bl	twi_read_byte
 468 0046 3319     		adds	r3, r6, r4
 469 0048 AC42     		cmp	r4, r5
 470 004a D873     		strb	r0, [r3, #15]
 471 004c 09DA     		bge	.L65
 472 004e 0134     		adds	r4, r4, #1
 473 0050 AC42     		cmp	r4, r5
 474 0052 D6F88400 		ldr	r0, [r6, #132]
 475 0056 EAD1     		bne	.L62
 476              	.L72:
 477 0058 0368     		ldr	r3, [r0]
 478 005a 43F00203 		orr	r3, r3, #2
 479 005e 0360     		str	r3, [r0]
 480 0060 E5E7     		b	.L62
 481              	.L65:
 482 0062 012D     		cmp	r5, #1
 483 0064 D6F88420 		ldr	r2, [r6, #132]
 484 0068 094B     		ldr	r3, .L75
 485 006a B8BF     		it	lt
 486 006c 0125     		movlt	r5, #1
 487 006e 04E0     		b	.L68
 488              	.L74:
 489 0070 116A     		ldr	r1, [r2, #32]
 490 0072 C905     		lsls	r1, r1, #23
 491 0074 04D4     		bmi	.L67
 492 0076 013B     		subs	r3, r3, #1
 493 0078 02D0     		beq	.L67
 494              	.L68:
 495 007a 116A     		ldr	r1, [r2, #32]
 496 007c C807     		lsls	r0, r1, #31
 497 007e F7D5     		bpl	.L74
 498              	.L67:
 499 0080 E8B2     		uxtb	r0, r5
 500 0082 0023     		movs	r3, #0
 501 0084 86F83100 		strb	r0, [r6, #49]
 502 0088 86F83030 		strb	r3, [r6, #48]
 503 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 504              	.L76:
 505 008e 00BF     		.align	2
 506              	.L75:
 507 0090 A0860100 		.word	100000
 508              		.size	_ZN7TwoWire11requestFromEhh, .-_ZN7TwoWire11requestFromEhh
 509              		.section	.text._ZN7TwoWire17beginTransmissionEh,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	_ZN7TwoWire17beginTransmissionEh
 513              		.syntax unified
ARM GAS  /tmp/ccRO7MMq.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu softvfp
 517              		.type	_ZN7TwoWire17beginTransmissionEh, %function
 518              	_ZN7TwoWire17beginTransmissionEh:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521              		@ link register save eliminated.
 522 0000 0222     		movs	r2, #2
 523 0002 0023     		movs	r3, #0
 524 0004 80F83210 		strb	r1, [r0, #50]
 525 0008 80F88820 		strb	r2, [r0, #136]
 526 000c 80F85330 		strb	r3, [r0, #83]
 527 0010 7047     		bx	lr
 528              		.size	_ZN7TwoWire17beginTransmissionEh, .-_ZN7TwoWire17beginTransmissionEh
 529 0012 00BF     		.section	.text._ZN7TwoWire17beginTransmissionEi,"ax",%progbits
 530              		.align	1
 531              		.p2align 2,,3
 532              		.global	_ZN7TwoWire17beginTransmissionEi
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu softvfp
 537              		.type	_ZN7TwoWire17beginTransmissionEi, %function
 538              	_ZN7TwoWire17beginTransmissionEi:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541              		@ link register save eliminated.
 542 0000 0222     		movs	r2, #2
 543 0002 0023     		movs	r3, #0
 544 0004 80F83210 		strb	r1, [r0, #50]
 545 0008 80F88820 		strb	r2, [r0, #136]
 546 000c 80F85330 		strb	r3, [r0, #83]
 547 0010 7047     		bx	lr
 548              		.size	_ZN7TwoWire17beginTransmissionEi, .-_ZN7TwoWire17beginTransmissionEi
 549 0012 00BF     		.section	.text._ZN7TwoWire15endTransmissionEh,"ax",%progbits
 550              		.align	1
 551              		.p2align 2,,3
 552              		.global	_ZN7TwoWire15endTransmissionEh
 553              		.syntax unified
 554              		.thumb
 555              		.thumb_func
 556              		.fpu softvfp
 557              		.type	_ZN7TwoWire15endTransmissionEh, %function
 558              	_ZN7TwoWire15endTransmissionEh:
 559              		@ args = 0, pretend = 0, frame = 0
 560              		@ frame_needed = 0, uses_anonymous_args = 0
 561 0000 70B5     		push	{r4, r5, r6, lr}
 562 0002 0546     		mov	r5, r0
 563 0004 90F83200 		ldrb	r0, [r0, #50]	@ zero_extendqisi2
 564 0008 D5F88430 		ldr	r3, [r5, #132]
 565 000c 95F83310 		ldrb	r1, [r5, #51]	@ zero_extendqisi2
 566 0010 0022     		movs	r2, #0
 567 0012 0004     		lsls	r0, r0, #16
 568 0014 5A60     		str	r2, [r3, #4]
 569 0016 5860     		str	r0, [r3, #4]
 570 0018 1846     		mov	r0, r3
ARM GAS  /tmp/ccRO7MMq.s 			page 11


 571 001a DA60     		str	r2, [r3, #12]
 572 001c DA60     		str	r2, [r3, #12]
 573 001e FFF7FEFF 		bl	twi_write_byte
 574 0022 D5F88400 		ldr	r0, [r5, #132]
 575 0026 214B     		ldr	r3, .L100
 576 0028 04E0     		b	.L83
 577              	.L80:
 578 002a 026A     		ldr	r2, [r0, #32]
 579 002c D405     		lsls	r4, r2, #23
 580 002e 34D4     		bmi	.L89
 581 0030 013B     		subs	r3, r3, #1
 582 0032 32D0     		beq	.L89
 583              	.L83:
 584 0034 026A     		ldr	r2, [r0, #32]
 585 0036 5607     		lsls	r6, r2, #29
 586 0038 F7D5     		bpl	.L80
 587 003a 0124     		movs	r4, #1
 588 003c 0026     		movs	r6, #0
 589              	.L81:
 590 003e 95F85320 		ldrb	r2, [r5, #83]	@ zero_extendqisi2
 591 0042 9442     		cmp	r4, r2
 592 0044 2346     		mov	r3, r4
 593 0046 19DA     		bge	.L84
 594              	.L98:
 595 0048 2B44     		add	r3, r3, r5
 596 004a 0134     		adds	r4, r4, #1
 597 004c 93F83310 		ldrb	r1, [r3, #51]	@ zero_extendqisi2
 598 0050 FFF7FEFF 		bl	twi_write_byte
 599 0054 A4B2     		uxth	r4, r4
 600 0056 D5F88400 		ldr	r0, [r5, #132]
 601 005a 144B     		ldr	r3, .L100
 602 005c 01E0     		b	.L86
 603              	.L97:
 604 005e 013B     		subs	r3, r3, #1
 605 0060 05D0     		beq	.L91
 606              	.L86:
 607 0062 026A     		ldr	r2, [r0, #32]
 608 0064 5107     		lsls	r1, r2, #29
 609 0066 EAD4     		bmi	.L81
 610 0068 026A     		ldr	r2, [r0, #32]
 611 006a D205     		lsls	r2, r2, #23
 612 006c F7D5     		bpl	.L97
 613              	.L91:
 614 006e 95F85320 		ldrb	r2, [r5, #83]	@ zero_extendqisi2
 615 0072 9442     		cmp	r4, r2
 616 0074 4FF00306 		mov	r6, #3
 617 0078 2346     		mov	r3, r4
 618 007a E5DB     		blt	.L98
 619              	.L84:
 620 007c 76B9     		cbnz	r6, .L82
 621 007e 0222     		movs	r2, #2
 622 0080 0A4B     		ldr	r3, .L100
 623 0082 0260     		str	r2, [r0]
 624 0084 01E0     		b	.L87
 625              	.L99:
 626 0086 013B     		subs	r3, r3, #1
 627 0088 05D0     		beq	.L92
ARM GAS  /tmp/ccRO7MMq.s 			page 12


 628              	.L87:
 629 008a 026A     		ldr	r2, [r0, #32]
 630 008c D107     		lsls	r1, r2, #31
 631 008e 05D4     		bmi	.L82
 632 0090 026A     		ldr	r2, [r0, #32]
 633 0092 D205     		lsls	r2, r2, #23
 634 0094 F7D5     		bpl	.L99
 635              	.L92:
 636 0096 0426     		movs	r6, #4
 637 0098 00E0     		b	.L82
 638              	.L89:
 639 009a 0226     		movs	r6, #2
 640              	.L82:
 641 009c 0022     		movs	r2, #0
 642 009e 0123     		movs	r3, #1
 643 00a0 85F85320 		strb	r2, [r5, #83]
 644 00a4 3046     		mov	r0, r6
 645 00a6 85F88830 		strb	r3, [r5, #136]
 646 00aa 70BD     		pop	{r4, r5, r6, pc}
 647              	.L101:
 648              		.align	2
 649              	.L100:
 650 00ac A0860100 		.word	100000
 651              		.size	_ZN7TwoWire15endTransmissionEh, .-_ZN7TwoWire15endTransmissionEh
 652              		.section	.text._ZN7TwoWire15endTransmissionEv,"ax",%progbits
 653              		.align	1
 654              		.p2align 2,,3
 655              		.global	_ZN7TwoWire15endTransmissionEv
 656              		.syntax unified
 657              		.thumb
 658              		.thumb_func
 659              		.fpu softvfp
 660              		.type	_ZN7TwoWire15endTransmissionEv, %function
 661              	_ZN7TwoWire15endTransmissionEv:
 662              		@ args = 0, pretend = 0, frame = 0
 663              		@ frame_needed = 0, uses_anonymous_args = 0
 664              		@ link register save eliminated.
 665 0000 0121     		movs	r1, #1
 666 0002 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEh
 667              		.size	_ZN7TwoWire15endTransmissionEv, .-_ZN7TwoWire15endTransmissionEv
 668 0006 00BF     		.section	.text._ZN7TwoWire9onReceiveEPFviE,"ax",%progbits
 669              		.align	1
 670              		.p2align 2,,3
 671              		.global	_ZN7TwoWire9onReceiveEPFviE
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu softvfp
 676              		.type	_ZN7TwoWire9onReceiveEPFviE, %function
 677              	_ZN7TwoWire9onReceiveEPFviE:
 678              		@ args = 0, pretend = 0, frame = 0
 679              		@ frame_needed = 0, uses_anonymous_args = 0
 680              		@ link register save eliminated.
 681 0000 C167     		str	r1, [r0, #124]
 682 0002 7047     		bx	lr
 683              		.size	_ZN7TwoWire9onReceiveEPFviE, .-_ZN7TwoWire9onReceiveEPFviE
 684              		.section	.text._ZN7TwoWire9onRequestEPFvvE,"ax",%progbits
ARM GAS  /tmp/ccRO7MMq.s 			page 13


 685              		.align	1
 686              		.p2align 2,,3
 687              		.global	_ZN7TwoWire9onRequestEPFvvE
 688              		.syntax unified
 689              		.thumb
 690              		.thumb_func
 691              		.fpu softvfp
 692              		.type	_ZN7TwoWire9onRequestEPFvvE, %function
 693              	_ZN7TwoWire9onRequestEPFvvE:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696              		@ link register save eliminated.
 697 0000 8167     		str	r1, [r0, #120]
 698 0002 7047     		bx	lr
 699              		.size	_ZN7TwoWire9onRequestEPFvvE, .-_ZN7TwoWire9onRequestEPFvvE
 700              		.section	.text._ZN7TwoWire9onServiceEv,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	_ZN7TwoWire9onServiceEv
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu softvfp
 708              		.type	_ZN7TwoWire9onServiceEv, %function
 709              	_ZN7TwoWire9onServiceEv:
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712 0000 70B5     		push	{r4, r5, r6, lr}
 713 0002 0446     		mov	r4, r0
 714 0004 D0F88400 		ldr	r0, [r0, #132]
 715 0008 FFF7FEFF 		bl	twi_get_interrupt_status
 716 000c 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 717 0010 042B     		cmp	r3, #4
 718 0012 0546     		mov	r5, r0
 719 0014 32D0     		beq	.L141
 720              	.L127:
 721 0016 40F60102 		movw	r2, #2049
 722 001a AA43     		bics	r2, r2, r5
 723 001c 10D1     		bne	.L142
 724 001e 052B     		cmp	r3, #5
 725 0020 6AD0     		beq	.L143
 726              	.L115:
 727 0022 1021     		movs	r1, #16
 728 0024 D4F88400 		ldr	r0, [r4, #132]
 729 0028 FFF7FEFF 		bl	twi_enable_interrupt
 730 002c 40F62351 		movw	r1, #3363
 731 0030 D4F88400 		ldr	r0, [r4, #132]
 732 0034 FFF7FEFF 		bl	twi_disable_interrupt
 733 0038 0423     		movs	r3, #4
 734 003a 84F88830 		strb	r3, [r4, #136]
 735 003e 70BD     		pop	{r4, r5, r6, pc}
 736              	.L142:
 737 0040 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 738 0044 052B     		cmp	r3, #5
 739 0046 12D1     		bne	.L114
 740 0048 A807     		lsls	r0, r5, #30
 741 004a 03D5     		bpl	.L105
ARM GAS  /tmp/ccRO7MMq.s 			page 14


 742 004c 94F87560 		ldrb	r6, [r4, #117]	@ zero_extendqisi2
 743 0050 1F2E     		cmp	r6, #31
 744 0052 00DD     		ble	.L144
 745              	.L105:
 746 0054 70BD     		pop	{r4, r5, r6, pc}
 747              	.L144:
 748 0056 731C     		adds	r3, r6, #1
 749 0058 84F87530 		strb	r3, [r4, #117]
 750 005c D4F88400 		ldr	r0, [r4, #132]
 751 0060 FFF7FEFF 		bl	twi_read_byte
 752 0064 2644     		add	r6, r6, r4
 753 0066 86F85400 		strb	r0, [r6, #84]
 754 006a 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 755              	.L114:
 756 006e 062B     		cmp	r3, #6
 757 0070 F0D1     		bne	.L105
 758 0072 6907     		lsls	r1, r5, #29
 759 0074 EED5     		bpl	.L105
 760 0076 EA05     		lsls	r2, r5, #23
 761 0078 25D5     		bpl	.L121
 762 007a 70BD     		pop	{r4, r5, r6, pc}
 763              	.L141:
 764 007c C606     		lsls	r6, r0, #27
 765 007e 21D5     		bpl	.L145
 766 0080 1021     		movs	r1, #16
 767 0082 D4F88400 		ldr	r0, [r4, #132]
 768 0086 FFF7FEFF 		bl	twi_disable_interrupt
 769 008a 40F62351 		movw	r1, #3363
 770 008e D4F88400 		ldr	r0, [r4, #132]
 771 0092 FFF7FEFF 		bl	twi_enable_interrupt
 772 0096 0023     		movs	r3, #0
 773 0098 84F87530 		strb	r3, [r4, #117]
 774 009c 84F87430 		strb	r3, [r4, #116]
 775 00a0 2B07     		lsls	r3, r5, #28
 776 00a2 0BD5     		bpl	.L122
 777 00a4 A16F     		ldr	r1, [r4, #120]
 778 00a6 0623     		movs	r3, #6
 779 00a8 84F88830 		strb	r3, [r4, #136]
 780 00ac 0029     		cmp	r1, #0
 781 00ae 3BD0     		beq	.L109
 782 00b0 8847     		blx	r1
 783              	.L110:
 784 00b2 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 785 00b6 042B     		cmp	r3, #4
 786 00b8 CCD0     		beq	.L105
 787 00ba ACE7     		b	.L127
 788              	.L122:
 789 00bc 0523     		movs	r3, #5
 790 00be 84F88830 		strb	r3, [r4, #136]
 791 00c2 A8E7     		b	.L127
 792              	.L145:
 793 00c4 70BD     		pop	{r4, r5, r6, pc}
 794              	.L121:
 795 00c6 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 796 00ca 94F87520 		ldrb	r2, [r4, #117]	@ zero_extendqisi2
 797 00ce 9342     		cmp	r3, r2
 798 00d0 06DB     		blt	.L125
ARM GAS  /tmp/ccRO7MMq.s 			page 15


 799 00d2 D4F88400 		ldr	r0, [r4, #132]
 800 00d6 7821     		movs	r1, #120
 801 00d8 BDE87040 		pop	{r4, r5, r6, lr}
 802 00dc FFF7FEBF 		b	twi_write_byte
 803              	.L125:
 804 00e0 5A1C     		adds	r2, r3, #1
 805 00e2 2344     		add	r3, r3, r4
 806 00e4 84F87420 		strb	r2, [r4, #116]
 807 00e8 D4F88400 		ldr	r0, [r4, #132]
 808 00ec 93F85410 		ldrb	r1, [r3, #84]	@ zero_extendqisi2
 809 00f0 BDE87040 		pop	{r4, r5, r6, lr}
 810 00f4 FFF7FEBF 		b	twi_write_byte
 811              	.L143:
 812 00f8 E56F     		ldr	r5, [r4, #124]
 813 00fa 002D     		cmp	r5, #0
 814 00fc 91D0     		beq	.L115
 815 00fe 94F87500 		ldrb	r0, [r4, #117]	@ zero_extendqisi2
 816 0102 50B1     		cbz	r0, .L117
 817 0104 0022     		movs	r2, #0
 818 0106 1346     		mov	r3, r2
 819              	.L118:
 820 0108 2244     		add	r2, r2, r4
 821 010a 0133     		adds	r3, r3, #1
 822 010c DBB2     		uxtb	r3, r3
 823 010e 92F85410 		ldrb	r1, [r2, #84]	@ zero_extendqisi2
 824 0112 1174     		strb	r1, [r2, #16]
 825 0114 8342     		cmp	r3, r0
 826 0116 1A46     		mov	r2, r3
 827 0118 F6DB     		blt	.L118
 828              	.L117:
 829 011a 0023     		movs	r3, #0
 830 011c 84F83100 		strb	r0, [r4, #49]
 831 0120 84F83030 		strb	r3, [r4, #48]
 832 0124 A847     		blx	r5
 833 0126 7CE7     		b	.L115
 834              	.L109:
 835 0128 2368     		ldr	r3, [r4]
 836 012a 2046     		mov	r0, r4
 837 012c 9B68     		ldr	r3, [r3, #8]
 838 012e 9847     		blx	r3
 839 0130 BFE7     		b	.L110
 840              		.size	_ZN7TwoWire9onServiceEv, .-_ZN7TwoWire9onServiceEv
 841 0132 00BF     		.section	.text.TWI0_Handler,"ax",%progbits
 842              		.align	1
 843              		.p2align 2,,3
 844              		.global	TWI0_Handler
 845              		.syntax unified
 846              		.thumb
 847              		.thumb_func
 848              		.fpu softvfp
 849              		.type	TWI0_Handler, %function
 850              	TWI0_Handler:
 851              		@ args = 0, pretend = 0, frame = 0
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853              		@ link register save eliminated.
 854 0000 0148     		ldr	r0, .L147
 855 0002 FFF7FEBF 		b	_ZN7TwoWire9onServiceEv
ARM GAS  /tmp/ccRO7MMq.s 			page 16


 856              	.L148:
 857 0006 00BF     		.align	2
 858              	.L147:
 859 0008 00000000 		.word	.LANCHOR1
 860              		.size	TWI0_Handler, .-TWI0_Handler
 861              		.section	.text.startup._GLOBAL__sub_I__Z8TWI_StopP3Twi,"ax",%progbits
 862              		.align	1
 863              		.p2align 2,,3
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu softvfp
 868              		.type	_GLOBAL__sub_I__Z8TWI_StopP3Twi, %function
 869              	_GLOBAL__sub_I__Z8TWI_StopP3Twi:
 870              		@ args = 0, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872              		@ link register save eliminated.
 873 0000 F0B4     		push	{r4, r5, r6, r7}
 874 0002 124B     		ldr	r3, .L151
 875 0004 1248     		ldr	r0, .L151+4
 876 0006 134E     		ldr	r6, .L151+8
 877 0008 134D     		ldr	r5, .L151+12
 878 000a 1860     		str	r0, [r3]
 879 000c 0024     		movs	r4, #0
 880 000e 4FF47A77 		mov	r7, #1000
 881 0012 83F83040 		strb	r4, [r3, #48]
 882 0016 83F83140 		strb	r4, [r3, #49]
 883 001a 83F83240 		strb	r4, [r3, #50]
 884 001e 83F85340 		strb	r4, [r3, #83]
 885 0022 83F87440 		strb	r4, [r3, #116]
 886 0026 83F87540 		strb	r4, [r3, #117]
 887 002a 9F60     		str	r7, [r3, #8]
 888 002c C3F88060 		str	r6, [r3, #128]
 889 0030 C3F88450 		str	r5, [r3, #132]
 890 0034 5C60     		str	r4, [r3, #4]
 891 0036 DC60     		str	r4, [r3, #12]
 892 0038 9C67     		str	r4, [r3, #120]
 893 003a DC67     		str	r4, [r3, #124]
 894 003c 83F88840 		strb	r4, [r3, #136]
 895 0040 064A     		ldr	r2, .L151+16
 896 0042 0749     		ldr	r1, .L151+20
 897 0044 1846     		mov	r0, r3
 898 0046 F0BC     		pop	{r4, r5, r6, r7}
 899 0048 FFF7FEBF 		b	__aeabi_atexit
 900              	.L152:
 901              		.align	2
 902              	.L151:
 903 004c 00000000 		.word	.LANCHOR1
 904 0050 08000000 		.word	.LANCHOR0+8
 905 0054 00000000 		.word	_ZL9Wire_Initv
 906 0058 00800140 		.word	1073840128
 907 005c 00000000 		.word	__dso_handle
 908 0060 00000000 		.word	_ZN7TwoWireD1Ev
 909              		.size	_GLOBAL__sub_I__Z8TWI_StopP3Twi, .-_GLOBAL__sub_I__Z8TWI_StopP3Twi
 910              		.section	.init_array,"aw",%init_array
 911              		.align	2
 912 0000 00000000 		.word	_GLOBAL__sub_I__Z8TWI_StopP3Twi(target1)
ARM GAS  /tmp/ccRO7MMq.s 			page 17


 913              		.global	_ZTV7TwoWire
 914              		.global	Wire
 915              		.section	.bss.Wire,"aw",%nobits
 916              		.align	2
 917              		.set	.LANCHOR1,. + 0
 918              		.type	Wire, %object
 919              		.size	Wire, 140
 920              	Wire:
 921 0000 00000000 		.space	140
 921      00000000 
 921      00000000 
 921      00000000 
 921      00000000 
 922              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 923              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 924              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 925              	_ZL28cpu_irq_prev_interrupt_state:
 926 0000 00       		.space	1
 927              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 928              		.align	2
 929              		.type	_ZL32cpu_irq_critical_section_counter, %object
 930              		.size	_ZL32cpu_irq_critical_section_counter, 4
 931              	_ZL32cpu_irq_critical_section_counter:
 932 0000 00000000 		.space	4
 933              		.section	.rodata._ZTV7TwoWire,"a",%progbits
 934              		.align	2
 935              		.set	.LANCHOR0,. + 0
 936              		.type	_ZTV7TwoWire, %object
 937              		.size	_ZTV7TwoWire, 48
 938              	_ZTV7TwoWire:
 939 0000 00000000 		.word	0
 940 0004 00000000 		.word	0
 941 0008 00000000 		.word	_ZN7TwoWireD1Ev
 942 000c 00000000 		.word	_ZN7TwoWireD0Ev
 943 0010 00000000 		.word	_ZN7TwoWire5writeEh
 944 0014 00000000 		.word	_ZN7TwoWire5writeEPKhj
 945 0018 00000000 		.word	_ZN7TwoWire9availableEv
 946 001c 00000000 		.word	_ZN7TwoWire4readEv
 947 0020 00000000 		.word	_ZN7TwoWire4peekEv
 948 0024 00000000 		.word	_ZN7TwoWire5flushEv
 949 0028 00000000 		.word	_ZNK6Stream8canWriteEv
 950 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 951              		.hidden	__dso_handle
 952              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
