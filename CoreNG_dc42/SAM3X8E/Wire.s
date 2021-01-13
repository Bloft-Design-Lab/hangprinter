ARM GAS  /tmp/ccoMtGU9.s 			page 1


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
ARM GAS  /tmp/ccoMtGU9.s 			page 2


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
  81 000e 80F83020 		strb	r2, [r0, #48]
  82 0012 1844     		add	r0, r0, r3
  83 0014 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
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
ARM GAS  /tmp/ccoMtGU9.s 			page 3


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
 139 0002 0446     		mov	r4, r0
 140 0004 8C21     		movs	r1, #140
 141 0006 FFF7FEFF 		bl	_ZdlPvj
 142 000a 2046     		mov	r0, r4
 143 000c 10BD     		pop	{r4, pc}
 144              		.size	_ZN7TwoWireD0Ev, .-_ZN7TwoWireD0Ev
 145 000e 00BF     		.section	.text._ZL10Wire1_Initv,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu softvfp
 152              		.type	_ZL10Wire1_Initv, %function
 153              	_ZL10Wire1_Initv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 0A4C     		ldr	r4, .L16
 158 0004 1620     		movs	r0, #22
 159 0006 FFF7FEFF 		bl	pmc_enable_periph_clk
 160 000a 2046     		mov	r0, r4
 161 000c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 162 0010 04F11C00 		add	r0, r4, #28
 163 0014 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 164 0018 4FF48002 		mov	r2, #4194304
 165 001c 044B     		ldr	r3, .L16+4
 166 001e C3F88020 		str	r2, [r3, #128]
 167 0022 C3F88021 		str	r2, [r3, #384]
 168 0026 1A60     		str	r2, [r3]
 169 0028 10BD     		pop	{r4, pc}
 170              	.L17:
 171 002a 00BF     		.align	2
ARM GAS  /tmp/ccoMtGU9.s 			page 4


 172              	.L16:
 173 002c A8070000 		.word	g_APinDescription+1960
 174 0030 00E100E0 		.word	-536813312
 175              		.size	_ZL10Wire1_Initv, .-_ZL10Wire1_Initv
 176              		.section	.text._ZL9Wire_Initv,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	_ZL9Wire_Initv, %function
 184              	_ZL9Wire_Initv:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187 0000 10B5     		push	{r4, lr}
 188 0002 0A4C     		ldr	r4, .L20
 189 0004 1720     		movs	r0, #23
 190 0006 FFF7FEFF 		bl	pmc_enable_periph_clk
 191 000a 2046     		mov	r0, r4
 192 000c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 193 0010 04F11C00 		add	r0, r4, #28
 194 0014 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 195 0018 4FF40002 		mov	r2, #8388608
 196 001c 044B     		ldr	r3, .L20+4
 197 001e C3F88020 		str	r2, [r3, #128]
 198 0022 C3F88021 		str	r2, [r3, #384]
 199 0026 1A60     		str	r2, [r3]
 200 0028 10BD     		pop	{r4, pc}
 201              	.L21:
 202 002a 00BF     		.align	2
 203              	.L20:
 204 002c 30020000 		.word	g_APinDescription+560
 205 0030 00E100E0 		.word	-536813312
 206              		.size	_ZL9Wire_Initv, .-_ZL9Wire_Initv
 207              		.section	.text._ZN7TwoWire5writeEh,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZN7TwoWire5writeEh
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu softvfp
 215              		.type	_ZN7TwoWire5writeEh, %function
 216              	_ZN7TwoWire5writeEh:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 221 0004 022B     		cmp	r3, #2
 222 0006 0BD0     		beq	.L27
 223 0008 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 224 000c 1F2B     		cmp	r3, #31
 225 000e 0BDC     		bgt	.L26
 226 0010 5A1C     		adds	r2, r3, #1
 227 0012 0344     		add	r3, r3, r0
 228 0014 80F87520 		strb	r2, [r0, #117]
ARM GAS  /tmp/ccoMtGU9.s 			page 5


 229 0018 0120     		movs	r0, #1
 230 001a 83F85410 		strb	r1, [r3, #84]
 231 001e 7047     		bx	lr
 232              	.L27:
 233 0020 90F85330 		ldrb	r3, [r0, #83]	@ zero_extendqisi2
 234 0024 1F2B     		cmp	r3, #31
 235 0026 01DD     		ble	.L28
 236              	.L26:
 237 0028 0020     		movs	r0, #0
 238 002a 7047     		bx	lr
 239              	.L28:
 240 002c 5A1C     		adds	r2, r3, #1
 241 002e 0344     		add	r3, r3, r0
 242 0030 80F85320 		strb	r2, [r0, #83]
 243 0034 0120     		movs	r0, #1
 244 0036 83F83310 		strb	r1, [r3, #51]
 245 003a 7047     		bx	lr
 246              		.size	_ZN7TwoWire5writeEh, .-_ZN7TwoWire5writeEh
 247              		.section	.text._ZN7TwoWire5writeEPKhj,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.global	_ZN7TwoWire5writeEPKhj
 251              		.syntax unified
 252              		.thumb
 253              		.thumb_func
 254              		.fpu softvfp
 255              		.type	_ZN7TwoWire5writeEPKhj, %function
 256              	_ZN7TwoWire5writeEPKhj:
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 260 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 261 0006 022B     		cmp	r3, #2
 262 0008 0546     		mov	r5, r0
 263 000a 1ED0     		beq	.L30
 264 000c DAB1     		cbz	r2, .L41
 265 000e 90F87570 		ldrb	r7, [r0, #117]	@ zero_extendqisi2
 266 0012 1F2F     		cmp	r7, #31
 267 0014 3B46     		mov	r3, r7
 268 0016 16DC     		bgt	.L41
 269 0018 0120     		movs	r0, #1
 270 001a 01EB020E 		add	lr, r1, r2
 271 001e 03E0     		b	.L35
 272              	.L44:
 273 0020 1F2C     		cmp	r4, #31
 274 0022 2346     		mov	r3, r4
 275 0024 10D8     		bhi	.L29
 276 0026 3046     		mov	r0, r6
 277              	.L35:
 278 0028 3C18     		adds	r4, r7, r0
 279 002a E4B2     		uxtb	r4, r4
 280 002c 85F87540 		strb	r4, [r5, #117]
 281 0030 11F8016B 		ldrb	r6, [r1], #1	@ zero_extendqisi2
 282 0034 2B44     		add	r3, r3, r5
 283 0036 7145     		cmp	r1, lr
 284 0038 83F85460 		strb	r6, [r3, #84]
 285 003c 00F10106 		add	r6, r0, #1
ARM GAS  /tmp/ccoMtGU9.s 			page 6


 286 0040 EED1     		bne	.L44
 287 0042 1046     		mov	r0, r2
 288 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 289              	.L41:
 290 0046 0020     		movs	r0, #0
 291              	.L29:
 292 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 293              	.L30:
 294 004a 002A     		cmp	r2, #0
 295 004c FBD0     		beq	.L41
 296 004e 90F85370 		ldrb	r7, [r0, #83]	@ zero_extendqisi2
 297 0052 1F2F     		cmp	r7, #31
 298 0054 3B46     		mov	r3, r7
 299 0056 F6DC     		bgt	.L41
 300 0058 0120     		movs	r0, #1
 301 005a 01EB020E 		add	lr, r1, r2
 302 005e 03E0     		b	.L33
 303              	.L34:
 304 0060 1F2C     		cmp	r4, #31
 305 0062 2346     		mov	r3, r4
 306 0064 F0D8     		bhi	.L29
 307 0066 3046     		mov	r0, r6
 308              	.L33:
 309 0068 3C18     		adds	r4, r7, r0
 310 006a E4B2     		uxtb	r4, r4
 311 006c 85F85340 		strb	r4, [r5, #83]
 312 0070 11F8016B 		ldrb	r6, [r1], #1	@ zero_extendqisi2
 313 0074 2B44     		add	r3, r3, r5
 314 0076 8E45     		cmp	lr, r1
 315 0078 83F83360 		strb	r6, [r3, #51]
 316 007c 00F10106 		add	r6, r0, #1
 317 0080 EED1     		bne	.L34
 318 0082 1046     		mov	r0, r2
 319 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 320              		.size	_ZN7TwoWire5writeEPKhj, .-_ZN7TwoWire5writeEPKhj
 321 0086 00BF     		.section	.text._Z8TWI_StopP3Twi,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_Z8TWI_StopP3Twi
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu softvfp
 329              		.type	_Z8TWI_StopP3Twi, %function
 330              	_Z8TWI_StopP3Twi:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 0223     		movs	r3, #2
 335 0002 0360     		str	r3, [r0]
 336 0004 7047     		bx	lr
 337              		.size	_Z8TWI_StopP3Twi, .-_Z8TWI_StopP3Twi
 338 0006 00BF     		.section	.text._ZN7TwoWireC2EP3TwiPFvvE,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_ZN7TwoWireC2EP3TwiPFvvE
 342              		.syntax unified
ARM GAS  /tmp/ccoMtGU9.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu softvfp
 346              		.type	_ZN7TwoWireC2EP3TwiPFvvE, %function
 347              	_ZN7TwoWireC2EP3TwiPFvvE:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 70B4     		push	{r4, r5, r6}
 352 0002 0024     		movs	r4, #0
 353 0004 4FF47A76 		mov	r6, #1000
 354 0008 0D4D     		ldr	r5, .L49
 355 000a 8660     		str	r6, [r0, #8]
 356 000c 0560     		str	r5, [r0]
 357 000e 4460     		str	r4, [r0, #4]
 358 0010 C460     		str	r4, [r0, #12]
 359 0012 80F83040 		strb	r4, [r0, #48]
 360 0016 80F83140 		strb	r4, [r0, #49]
 361 001a 80F83240 		strb	r4, [r0, #50]
 362 001e 80F85340 		strb	r4, [r0, #83]
 363 0022 80F87440 		strb	r4, [r0, #116]
 364 0026 80F87540 		strb	r4, [r0, #117]
 365 002a 8467     		str	r4, [r0, #120]
 366 002c C467     		str	r4, [r0, #124]
 367 002e 80F88840 		strb	r4, [r0, #136]
 368 0032 C0F88020 		str	r2, [r0, #128]
 369 0036 C0F88410 		str	r1, [r0, #132]
 370 003a 70BC     		pop	{r4, r5, r6}
 371 003c 7047     		bx	lr
 372              	.L50:
 373 003e 00BF     		.align	2
 374              	.L49:
 375 0040 08000000 		.word	.LANCHOR0+8
 376              		.size	_ZN7TwoWireC2EP3TwiPFvvE, .-_ZN7TwoWireC2EP3TwiPFvvE
 377              		.global	_ZN7TwoWireC1EP3TwiPFvvE
 378              		.thumb_set _ZN7TwoWireC1EP3TwiPFvvE,_ZN7TwoWireC2EP3TwiPFvvE
 379              		.section	.text._ZN7TwoWire5beginEv,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	_ZN7TwoWire5beginEv
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu softvfp
 387              		.type	_ZN7TwoWire5beginEv, %function
 388              	_ZN7TwoWire5beginEv:
 389              		@ args = 0, pretend = 0, frame = 16
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391 0000 30B5     		push	{r4, r5, lr}
 392 0002 D0F88030 		ldr	r3, [r0, #128]
 393 0006 85B0     		sub	sp, sp, #20
 394 0008 0446     		mov	r4, r0
 395 000a 03B1     		cbz	r3, .L52
 396 000c 9847     		blx	r3
 397              	.L52:
 398 000e 40F20221 		movw	r1, #514
 399 0012 0023     		movs	r3, #0
ARM GAS  /tmp/ccoMtGU9.s 			page 8


 400 0014 D4F88400 		ldr	r0, [r4, #132]
 401 0018 084A     		ldr	r2, .L57
 402 001a 094D     		ldr	r5, .L57+4
 403 001c C0F82011 		str	r1, [r0, #288]
 404 0020 01A9     		add	r1, sp, #4
 405 0022 8DF80D30 		strb	r3, [sp, #13]
 406 0026 8DF80C30 		strb	r3, [sp, #12]
 407 002a 0295     		str	r5, [sp, #8]
 408 002c 0192     		str	r2, [sp, #4]
 409 002e FFF7FEFF 		bl	twi_master_init
 410 0032 0123     		movs	r3, #1
 411 0034 84F88830 		strb	r3, [r4, #136]
 412 0038 05B0     		add	sp, sp, #20
 413              		@ sp needed
 414 003a 30BD     		pop	{r4, r5, pc}
 415              	.L58:
 416              		.align	2
 417              	.L57:
 418 003c 00BD0105 		.word	84000000
 419 0040 A0860100 		.word	100000
 420              		.size	_ZN7TwoWire5beginEv, .-_ZN7TwoWire5beginEv
 421              		.section	.text._ZN7TwoWire5beginEh,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZN7TwoWire5beginEh
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu softvfp
 429              		.type	_ZN7TwoWire5beginEh, %function
 430              	_ZN7TwoWire5beginEh:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433 0000 38B5     		push	{r3, r4, r5, lr}
 434 0002 D0F88030 		ldr	r3, [r0, #128]
 435 0006 0446     		mov	r4, r0
 436 0008 0D46     		mov	r5, r1
 437 000a 03B1     		cbz	r3, .L60
 438 000c 9847     		blx	r3
 439              	.L60:
 440 000e 40F20223 		movw	r3, #514
 441 0012 D4F88400 		ldr	r0, [r4, #132]
 442 0016 2946     		mov	r1, r5
 443 0018 C0F82031 		str	r3, [r0, #288]
 444 001c FFF7FEFF 		bl	twi_slave_init
 445 0020 0423     		movs	r3, #4
 446 0022 D4F88400 		ldr	r0, [r4, #132]
 447 0026 84F88830 		strb	r3, [r4, #136]
 448 002a 1021     		movs	r1, #16
 449 002c BDE83840 		pop	{r3, r4, r5, lr}
 450 0030 FFF7FEBF 		b	twi_enable_interrupt
 451              		.size	_ZN7TwoWire5beginEh, .-_ZN7TwoWire5beginEh
 452              		.section	.text._ZN7TwoWire11requestFromEhh,"ax",%progbits
 453              		.align	1
 454              		.p2align 2,,3
 455              		.global	_ZN7TwoWire11requestFromEhh
 456              		.syntax unified
ARM GAS  /tmp/ccoMtGU9.s 			page 9


 457              		.thumb
 458              		.thumb_func
 459              		.fpu softvfp
 460              		.type	_ZN7TwoWire11requestFromEhh, %function
 461              	_ZN7TwoWire11requestFromEhh:
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 0, uses_anonymous_args = 0
 464 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 465 0002 202A     		cmp	r2, #32
 466 0004 4FF00003 		mov	r3, #0
 467 0008 A8BF     		it	ge
 468 000a 2022     		movge	r2, #32
 469 000c 1C46     		mov	r4, r3
 470 000e 1546     		mov	r5, r2
 471 0010 0127     		movs	r7, #1
 472 0012 0646     		mov	r6, r0
 473 0014 0A04     		lsls	r2, r1, #16
 474 0016 D0F88400 		ldr	r0, [r0, #132]
 475 001a 0134     		adds	r4, r4, #1
 476 001c 42F48052 		orr	r2, r2, #4096
 477 0020 AC42     		cmp	r4, r5
 478 0022 4360     		str	r3, [r0, #4]
 479 0024 4260     		str	r2, [r0, #4]
 480 0026 C360     		str	r3, [r0, #12]
 481 0028 C360     		str	r3, [r0, #12]
 482 002a 0760     		str	r7, [r0]
 483 002c 14D0     		beq	.L76
 484              	.L66:
 485 002e 184B     		ldr	r3, .L79
 486 0030 04E0     		b	.L68
 487              	.L77:
 488 0032 016A     		ldr	r1, [r0, #32]
 489 0034 CF05     		lsls	r7, r1, #23
 490 0036 04D4     		bmi	.L67
 491 0038 013B     		subs	r3, r3, #1
 492 003a 02D0     		beq	.L67
 493              	.L68:
 494 003c 016A     		ldr	r1, [r0, #32]
 495 003e 8A07     		lsls	r2, r1, #30
 496 0040 F7D5     		bpl	.L77
 497              	.L67:
 498 0042 FFF7FEFF 		bl	twi_read_byte
 499 0046 3319     		adds	r3, r6, r4
 500 0048 AC42     		cmp	r4, r5
 501 004a D873     		strb	r0, [r3, #15]
 502 004c 09DA     		bge	.L69
 503 004e 0134     		adds	r4, r4, #1
 504 0050 AC42     		cmp	r4, r5
 505 0052 D6F88400 		ldr	r0, [r6, #132]
 506 0056 EAD1     		bne	.L66
 507              	.L76:
 508 0058 0368     		ldr	r3, [r0]
 509 005a 43F00203 		orr	r3, r3, #2
 510 005e 0360     		str	r3, [r0]
 511 0060 E5E7     		b	.L66
 512              	.L69:
 513 0062 012D     		cmp	r5, #1
ARM GAS  /tmp/ccoMtGU9.s 			page 10


 514 0064 B8BF     		it	lt
 515 0066 0125     		movlt	r5, #1
 516 0068 D6F88420 		ldr	r2, [r6, #132]
 517 006c 084B     		ldr	r3, .L79
 518 006e 04E0     		b	.L72
 519              	.L78:
 520 0070 116A     		ldr	r1, [r2, #32]
 521 0072 C905     		lsls	r1, r1, #23
 522 0074 04D4     		bmi	.L71
 523 0076 013B     		subs	r3, r3, #1
 524 0078 02D0     		beq	.L71
 525              	.L72:
 526 007a 116A     		ldr	r1, [r2, #32]
 527 007c C807     		lsls	r0, r1, #31
 528 007e F7D5     		bpl	.L78
 529              	.L71:
 530 0080 0023     		movs	r3, #0
 531 0082 E8B2     		uxtb	r0, r5
 532 0084 86F83100 		strb	r0, [r6, #49]
 533 0088 86F83030 		strb	r3, [r6, #48]
 534 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 535              	.L80:
 536 008e 00BF     		.align	2
 537              	.L79:
 538 0090 A0860100 		.word	100000
 539              		.size	_ZN7TwoWire11requestFromEhh, .-_ZN7TwoWire11requestFromEhh
 540              		.section	.text._ZN7TwoWire17beginTransmissionEh,"ax",%progbits
 541              		.align	1
 542              		.p2align 2,,3
 543              		.global	_ZN7TwoWire17beginTransmissionEh
 544              		.syntax unified
 545              		.thumb
 546              		.thumb_func
 547              		.fpu softvfp
 548              		.type	_ZN7TwoWire17beginTransmissionEh, %function
 549              	_ZN7TwoWire17beginTransmissionEh:
 550              		@ args = 0, pretend = 0, frame = 0
 551              		@ frame_needed = 0, uses_anonymous_args = 0
 552              		@ link register save eliminated.
 553 0000 0222     		movs	r2, #2
 554 0002 0023     		movs	r3, #0
 555 0004 80F83210 		strb	r1, [r0, #50]
 556 0008 80F88820 		strb	r2, [r0, #136]
 557 000c 80F85330 		strb	r3, [r0, #83]
 558 0010 7047     		bx	lr
 559              		.size	_ZN7TwoWire17beginTransmissionEh, .-_ZN7TwoWire17beginTransmissionEh
 560 0012 00BF     		.section	.text._ZN7TwoWire17beginTransmissionEi,"ax",%progbits
 561              		.align	1
 562              		.p2align 2,,3
 563              		.global	_ZN7TwoWire17beginTransmissionEi
 564              		.syntax unified
 565              		.thumb
 566              		.thumb_func
 567              		.fpu softvfp
 568              		.type	_ZN7TwoWire17beginTransmissionEi, %function
 569              	_ZN7TwoWire17beginTransmissionEi:
 570              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccoMtGU9.s 			page 11


 571              		@ frame_needed = 0, uses_anonymous_args = 0
 572              		@ link register save eliminated.
 573 0000 0222     		movs	r2, #2
 574 0002 0023     		movs	r3, #0
 575 0004 80F83210 		strb	r1, [r0, #50]
 576 0008 80F88820 		strb	r2, [r0, #136]
 577 000c 80F85330 		strb	r3, [r0, #83]
 578 0010 7047     		bx	lr
 579              		.size	_ZN7TwoWire17beginTransmissionEi, .-_ZN7TwoWire17beginTransmissionEi
 580 0012 00BF     		.section	.text._ZN7TwoWire15endTransmissionEh,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	_ZN7TwoWire15endTransmissionEh
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu softvfp
 588              		.type	_ZN7TwoWire15endTransmissionEh, %function
 589              	_ZN7TwoWire15endTransmissionEh:
 590              		@ args = 0, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592 0000 0022     		movs	r2, #0
 593 0002 70B5     		push	{r4, r5, r6, lr}
 594 0004 0546     		mov	r5, r0
 595 0006 90F83240 		ldrb	r4, [r0, #50]	@ zero_extendqisi2
 596 000a D0F88430 		ldr	r3, [r0, #132]
 597 000e 2404     		lsls	r4, r4, #16
 598 0010 90F83310 		ldrb	r1, [r0, #51]	@ zero_extendqisi2
 599 0014 5A60     		str	r2, [r3, #4]
 600 0016 1846     		mov	r0, r3
 601 0018 5C60     		str	r4, [r3, #4]
 602 001a DA60     		str	r2, [r3, #12]
 603 001c DA60     		str	r2, [r3, #12]
 604 001e FFF7FEFF 		bl	twi_write_byte
 605 0022 D5F88400 		ldr	r0, [r5, #132]
 606 0026 214B     		ldr	r3, .L104
 607 0028 04E0     		b	.L87
 608              	.L84:
 609 002a 026A     		ldr	r2, [r0, #32]
 610 002c D405     		lsls	r4, r2, #23
 611 002e 33D4     		bmi	.L93
 612 0030 013B     		subs	r3, r3, #1
 613 0032 31D0     		beq	.L93
 614              	.L87:
 615 0034 026A     		ldr	r2, [r0, #32]
 616 0036 5607     		lsls	r6, r2, #29
 617 0038 F7D5     		bpl	.L84
 618 003a 0124     		movs	r4, #1
 619 003c 0026     		movs	r6, #0
 620              	.L85:
 621 003e 95F85320 		ldrb	r2, [r5, #83]	@ zero_extendqisi2
 622 0042 2346     		mov	r3, r4
 623 0044 9442     		cmp	r4, r2
 624 0046 18DA     		bge	.L88
 625              	.L102:
 626 0048 2B44     		add	r3, r3, r5
 627 004a 93F83310 		ldrb	r1, [r3, #51]	@ zero_extendqisi2
ARM GAS  /tmp/ccoMtGU9.s 			page 12


 628 004e 0134     		adds	r4, r4, #1
 629 0050 FFF7FEFF 		bl	twi_write_byte
 630 0054 A4B2     		uxth	r4, r4
 631 0056 D5F88400 		ldr	r0, [r5, #132]
 632 005a 144B     		ldr	r3, .L104
 633 005c 01E0     		b	.L90
 634              	.L101:
 635 005e 013B     		subs	r3, r3, #1
 636 0060 05D0     		beq	.L95
 637              	.L90:
 638 0062 026A     		ldr	r2, [r0, #32]
 639 0064 5107     		lsls	r1, r2, #29
 640 0066 EAD4     		bmi	.L85
 641 0068 026A     		ldr	r2, [r0, #32]
 642 006a D205     		lsls	r2, r2, #23
 643 006c F7D5     		bpl	.L101
 644              	.L95:
 645 006e 95F85320 		ldrb	r2, [r5, #83]	@ zero_extendqisi2
 646 0072 0326     		movs	r6, #3
 647 0074 9442     		cmp	r4, r2
 648 0076 2346     		mov	r3, r4
 649 0078 E6DB     		blt	.L102
 650              	.L88:
 651 007a 76B9     		cbnz	r6, .L86
 652 007c 0222     		movs	r2, #2
 653 007e 0B4B     		ldr	r3, .L104
 654 0080 0260     		str	r2, [r0]
 655 0082 01E0     		b	.L91
 656              	.L103:
 657 0084 013B     		subs	r3, r3, #1
 658 0086 05D0     		beq	.L96
 659              	.L91:
 660 0088 026A     		ldr	r2, [r0, #32]
 661 008a D107     		lsls	r1, r2, #31
 662 008c 05D4     		bmi	.L86
 663 008e 026A     		ldr	r2, [r0, #32]
 664 0090 D205     		lsls	r2, r2, #23
 665 0092 F7D5     		bpl	.L103
 666              	.L96:
 667 0094 0426     		movs	r6, #4
 668 0096 00E0     		b	.L86
 669              	.L93:
 670 0098 0226     		movs	r6, #2
 671              	.L86:
 672 009a 0022     		movs	r2, #0
 673 009c 0123     		movs	r3, #1
 674 009e 85F85320 		strb	r2, [r5, #83]
 675 00a2 3046     		mov	r0, r6
 676 00a4 85F88830 		strb	r3, [r5, #136]
 677 00a8 70BD     		pop	{r4, r5, r6, pc}
 678              	.L105:
 679 00aa 00BF     		.align	2
 680              	.L104:
 681 00ac A0860100 		.word	100000
 682              		.size	_ZN7TwoWire15endTransmissionEh, .-_ZN7TwoWire15endTransmissionEh
 683              		.section	.text._ZN7TwoWire15endTransmissionEv,"ax",%progbits
 684              		.align	1
ARM GAS  /tmp/ccoMtGU9.s 			page 13


 685              		.p2align 2,,3
 686              		.global	_ZN7TwoWire15endTransmissionEv
 687              		.syntax unified
 688              		.thumb
 689              		.thumb_func
 690              		.fpu softvfp
 691              		.type	_ZN7TwoWire15endTransmissionEv, %function
 692              	_ZN7TwoWire15endTransmissionEv:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695              		@ link register save eliminated.
 696 0000 0121     		movs	r1, #1
 697 0002 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEh
 698              		.size	_ZN7TwoWire15endTransmissionEv, .-_ZN7TwoWire15endTransmissionEv
 699 0006 00BF     		.section	.text._ZN7TwoWire9onReceiveEPFviE,"ax",%progbits
 700              		.align	1
 701              		.p2align 2,,3
 702              		.global	_ZN7TwoWire9onReceiveEPFviE
 703              		.syntax unified
 704              		.thumb
 705              		.thumb_func
 706              		.fpu softvfp
 707              		.type	_ZN7TwoWire9onReceiveEPFviE, %function
 708              	_ZN7TwoWire9onReceiveEPFviE:
 709              		@ args = 0, pretend = 0, frame = 0
 710              		@ frame_needed = 0, uses_anonymous_args = 0
 711              		@ link register save eliminated.
 712 0000 C167     		str	r1, [r0, #124]
 713 0002 7047     		bx	lr
 714              		.size	_ZN7TwoWire9onReceiveEPFviE, .-_ZN7TwoWire9onReceiveEPFviE
 715              		.section	.text._ZN7TwoWire9onRequestEPFvvE,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZN7TwoWire9onRequestEPFvvE
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu softvfp
 723              		.type	_ZN7TwoWire9onRequestEPFvvE, %function
 724              	_ZN7TwoWire9onRequestEPFvvE:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727              		@ link register save eliminated.
 728 0000 8167     		str	r1, [r0, #120]
 729 0002 7047     		bx	lr
 730              		.size	_ZN7TwoWire9onRequestEPFvvE, .-_ZN7TwoWire9onRequestEPFvvE
 731              		.section	.text._ZN7TwoWire9onServiceEv,"ax",%progbits
 732              		.align	1
 733              		.p2align 2,,3
 734              		.global	_ZN7TwoWire9onServiceEv
 735              		.syntax unified
 736              		.thumb
 737              		.thumb_func
 738              		.fpu softvfp
 739              		.type	_ZN7TwoWire9onServiceEv, %function
 740              	_ZN7TwoWire9onServiceEv:
 741              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccoMtGU9.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743 0000 70B5     		push	{r4, r5, r6, lr}
 744 0002 0446     		mov	r4, r0
 745 0004 D0F88400 		ldr	r0, [r0, #132]
 746 0008 FFF7FEFF 		bl	twi_get_interrupt_status
 747 000c 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 748 0010 0546     		mov	r5, r0
 749 0012 042B     		cmp	r3, #4
 750 0014 32D0     		beq	.L145
 751              	.L131:
 752 0016 40F60102 		movw	r2, #2049
 753 001a AA43     		bics	r2, r2, r5
 754 001c 10D1     		bne	.L146
 755 001e 052B     		cmp	r3, #5
 756 0020 6AD0     		beq	.L147
 757              	.L119:
 758 0022 1021     		movs	r1, #16
 759 0024 D4F88400 		ldr	r0, [r4, #132]
 760 0028 FFF7FEFF 		bl	twi_enable_interrupt
 761 002c 40F62351 		movw	r1, #3363
 762 0030 D4F88400 		ldr	r0, [r4, #132]
 763 0034 FFF7FEFF 		bl	twi_disable_interrupt
 764 0038 0423     		movs	r3, #4
 765 003a 84F88830 		strb	r3, [r4, #136]
 766 003e 70BD     		pop	{r4, r5, r6, pc}
 767              	.L146:
 768 0040 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 769 0044 052B     		cmp	r3, #5
 770 0046 12D1     		bne	.L118
 771 0048 A807     		lsls	r0, r5, #30
 772 004a 03D5     		bpl	.L109
 773 004c 94F87560 		ldrb	r6, [r4, #117]	@ zero_extendqisi2
 774 0050 1F2E     		cmp	r6, #31
 775 0052 00DD     		ble	.L148
 776              	.L109:
 777 0054 70BD     		pop	{r4, r5, r6, pc}
 778              	.L148:
 779 0056 731C     		adds	r3, r6, #1
 780 0058 84F87530 		strb	r3, [r4, #117]
 781 005c D4F88400 		ldr	r0, [r4, #132]
 782 0060 FFF7FEFF 		bl	twi_read_byte
 783 0064 2644     		add	r6, r6, r4
 784 0066 86F85400 		strb	r0, [r6, #84]
 785 006a 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 786              	.L118:
 787 006e 062B     		cmp	r3, #6
 788 0070 F0D1     		bne	.L109
 789 0072 6907     		lsls	r1, r5, #29
 790 0074 EED5     		bpl	.L109
 791 0076 EA05     		lsls	r2, r5, #23
 792 0078 25D5     		bpl	.L125
 793 007a 70BD     		pop	{r4, r5, r6, pc}
 794              	.L145:
 795 007c C606     		lsls	r6, r0, #27
 796 007e 21D5     		bpl	.L149
 797 0080 1021     		movs	r1, #16
 798 0082 D4F88400 		ldr	r0, [r4, #132]
ARM GAS  /tmp/ccoMtGU9.s 			page 15


 799 0086 FFF7FEFF 		bl	twi_disable_interrupt
 800 008a 40F62351 		movw	r1, #3363
 801 008e D4F88400 		ldr	r0, [r4, #132]
 802 0092 FFF7FEFF 		bl	twi_enable_interrupt
 803 0096 0023     		movs	r3, #0
 804 0098 84F87530 		strb	r3, [r4, #117]
 805 009c 84F87430 		strb	r3, [r4, #116]
 806 00a0 2B07     		lsls	r3, r5, #28
 807 00a2 0BD5     		bpl	.L126
 808 00a4 0623     		movs	r3, #6
 809 00a6 A16F     		ldr	r1, [r4, #120]
 810 00a8 84F88830 		strb	r3, [r4, #136]
 811 00ac 0029     		cmp	r1, #0
 812 00ae 3BD0     		beq	.L113
 813 00b0 8847     		blx	r1
 814              	.L114:
 815 00b2 94F88830 		ldrb	r3, [r4, #136]	@ zero_extendqisi2
 816 00b6 042B     		cmp	r3, #4
 817 00b8 CCD0     		beq	.L109
 818 00ba ACE7     		b	.L131
 819              	.L126:
 820 00bc 0523     		movs	r3, #5
 821 00be 84F88830 		strb	r3, [r4, #136]
 822 00c2 A8E7     		b	.L131
 823              	.L149:
 824 00c4 70BD     		pop	{r4, r5, r6, pc}
 825              	.L125:
 826 00c6 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 827 00ca 94F87520 		ldrb	r2, [r4, #117]	@ zero_extendqisi2
 828 00ce 9342     		cmp	r3, r2
 829 00d0 06DB     		blt	.L129
 830 00d2 D4F88400 		ldr	r0, [r4, #132]
 831 00d6 7821     		movs	r1, #120
 832 00d8 BDE87040 		pop	{r4, r5, r6, lr}
 833 00dc FFF7FEBF 		b	twi_write_byte
 834              	.L129:
 835 00e0 5A1C     		adds	r2, r3, #1
 836 00e2 84F87420 		strb	r2, [r4, #116]
 837 00e6 2344     		add	r3, r3, r4
 838 00e8 D4F88400 		ldr	r0, [r4, #132]
 839 00ec 93F85410 		ldrb	r1, [r3, #84]	@ zero_extendqisi2
 840 00f0 BDE87040 		pop	{r4, r5, r6, lr}
 841 00f4 FFF7FEBF 		b	twi_write_byte
 842              	.L147:
 843 00f8 E56F     		ldr	r5, [r4, #124]
 844 00fa 002D     		cmp	r5, #0
 845 00fc 91D0     		beq	.L119
 846 00fe 94F87500 		ldrb	r0, [r4, #117]	@ zero_extendqisi2
 847 0102 50B1     		cbz	r0, .L121
 848 0104 0022     		movs	r2, #0
 849 0106 1346     		mov	r3, r2
 850              	.L122:
 851 0108 2244     		add	r2, r2, r4
 852 010a 0133     		adds	r3, r3, #1
 853 010c 92F85410 		ldrb	r1, [r2, #84]	@ zero_extendqisi2
 854 0110 DBB2     		uxtb	r3, r3
 855 0112 8342     		cmp	r3, r0
ARM GAS  /tmp/ccoMtGU9.s 			page 16


 856 0114 1174     		strb	r1, [r2, #16]
 857 0116 1A46     		mov	r2, r3
 858 0118 F6DB     		blt	.L122
 859              	.L121:
 860 011a 0023     		movs	r3, #0
 861 011c 84F83100 		strb	r0, [r4, #49]
 862 0120 84F83030 		strb	r3, [r4, #48]
 863 0124 A847     		blx	r5
 864 0126 7CE7     		b	.L119
 865              	.L113:
 866 0128 2368     		ldr	r3, [r4]
 867 012a 2046     		mov	r0, r4
 868 012c 9B68     		ldr	r3, [r3, #8]
 869 012e 9847     		blx	r3
 870 0130 BFE7     		b	.L114
 871              		.size	_ZN7TwoWire9onServiceEv, .-_ZN7TwoWire9onServiceEv
 872 0132 00BF     		.section	.text.TWI1_Handler,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	TWI1_Handler
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu softvfp
 880              		.type	TWI1_Handler, %function
 881              	TWI1_Handler:
 882              		@ args = 0, pretend = 0, frame = 0
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884              		@ link register save eliminated.
 885 0000 0148     		ldr	r0, .L151
 886 0002 FFF7FEBF 		b	_ZN7TwoWire9onServiceEv
 887              	.L152:
 888 0006 00BF     		.align	2
 889              	.L151:
 890 0008 00000000 		.word	.LANCHOR1
 891              		.size	TWI1_Handler, .-TWI1_Handler
 892              		.section	.text.TWI0_Handler,"ax",%progbits
 893              		.align	1
 894              		.p2align 2,,3
 895              		.global	TWI0_Handler
 896              		.syntax unified
 897              		.thumb
 898              		.thumb_func
 899              		.fpu softvfp
 900              		.type	TWI0_Handler, %function
 901              	TWI0_Handler:
 902              		@ args = 0, pretend = 0, frame = 0
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904              		@ link register save eliminated.
 905 0000 0148     		ldr	r0, .L154
 906 0002 FFF7FEBF 		b	_ZN7TwoWire9onServiceEv
 907              	.L155:
 908 0006 00BF     		.align	2
 909              	.L154:
 910 0008 00000000 		.word	.LANCHOR2
 911              		.size	TWI0_Handler, .-TWI0_Handler
 912              		.section	.text.startup._GLOBAL__sub_I__Z8TWI_StopP3Twi,"ax",%progbits
ARM GAS  /tmp/ccoMtGU9.s 			page 17


 913              		.align	1
 914              		.p2align 2,,3
 915              		.syntax unified
 916              		.thumb
 917              		.thumb_func
 918              		.fpu softvfp
 919              		.type	_GLOBAL__sub_I__Z8TWI_StopP3Twi, %function
 920              	_GLOBAL__sub_I__Z8TWI_StopP3Twi:
 921              		@ args = 0, pretend = 0, frame = 0
 922              		@ frame_needed = 0, uses_anonymous_args = 0
 923 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 924 0004 0024     		movs	r4, #0
 925 0006 4FF47A76 		mov	r6, #1000
 926 000a 244B     		ldr	r3, .L158
 927 000c DFF8A480 		ldr	r8, .L158+24
 928 0010 234F     		ldr	r7, .L158+4
 929 0012 244A     		ldr	r2, .L158+8
 930 0014 2449     		ldr	r1, .L158+12
 931 0016 254D     		ldr	r5, .L158+16
 932 0018 5C60     		str	r4, [r3, #4]
 933 001a DC60     		str	r4, [r3, #12]
 934 001c C3F88020 		str	r2, [r3, #128]
 935 0020 C3F88410 		str	r1, [r3, #132]
 936 0024 4246     		mov	r2, r8
 937 0026 3946     		mov	r1, r7
 938 0028 9E60     		str	r6, [r3, #8]
 939 002a 1846     		mov	r0, r3
 940 002c 83F83040 		strb	r4, [r3, #48]
 941 0030 83F83140 		strb	r4, [r3, #49]
 942 0034 83F83240 		strb	r4, [r3, #50]
 943 0038 83F85340 		strb	r4, [r3, #83]
 944 003c 83F87440 		strb	r4, [r3, #116]
 945 0040 83F87540 		strb	r4, [r3, #117]
 946 0044 9C67     		str	r4, [r3, #120]
 947 0046 DC67     		str	r4, [r3, #124]
 948 0048 83F88840 		strb	r4, [r3, #136]
 949 004c 1D60     		str	r5, [r3]
 950 004e FFF7FEFF 		bl	__aeabi_atexit
 951 0052 174B     		ldr	r3, .L158+20
 952 0054 DFF860E0 		ldr	lr, .L158+28
 953 0058 DFF860C0 		ldr	ip, .L158+32
 954 005c 83F83040 		strb	r4, [r3, #48]
 955 0060 83F83140 		strb	r4, [r3, #49]
 956 0064 83F83240 		strb	r4, [r3, #50]
 957 0068 83F85340 		strb	r4, [r3, #83]
 958 006c 83F87440 		strb	r4, [r3, #116]
 959 0070 83F87540 		strb	r4, [r3, #117]
 960 0074 4246     		mov	r2, r8
 961 0076 3946     		mov	r1, r7
 962 0078 9E60     		str	r6, [r3, #8]
 963 007a 5C60     		str	r4, [r3, #4]
 964 007c DC60     		str	r4, [r3, #12]
 965 007e 1D60     		str	r5, [r3]
 966 0080 9C67     		str	r4, [r3, #120]
 967 0082 DC67     		str	r4, [r3, #124]
 968 0084 83F88840 		strb	r4, [r3, #136]
 969 0088 C3F884E0 		str	lr, [r3, #132]
ARM GAS  /tmp/ccoMtGU9.s 			page 18


 970 008c 1846     		mov	r0, r3
 971 008e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 972 0092 C3F880C0 		str	ip, [r3, #128]
 973 0096 FFF7FEBF 		b	__aeabi_atexit
 974              	.L159:
 975 009a 00BF     		.align	2
 976              	.L158:
 977 009c 00000000 		.word	.LANCHOR1
 978 00a0 00000000 		.word	_ZN7TwoWireD1Ev
 979 00a4 00000000 		.word	_ZL9Wire_Initv
 980 00a8 00000940 		.word	1074331648
 981 00ac 08000000 		.word	.LANCHOR0+8
 982 00b0 00000000 		.word	.LANCHOR2
 983 00b4 00000000 		.word	__dso_handle
 984 00b8 00C00840 		.word	1074315264
 985 00bc 00000000 		.word	_ZL10Wire1_Initv
 986              		.size	_GLOBAL__sub_I__Z8TWI_StopP3Twi, .-_GLOBAL__sub_I__Z8TWI_StopP3Twi
 987              		.section	.init_array,"aw",%init_array
 988              		.align	2
 989 0000 00000000 		.word	_GLOBAL__sub_I__Z8TWI_StopP3Twi(target1)
 990              		.global	_ZTV7TwoWire
 991              		.global	Wire1
 992              		.global	Wire
 993              		.section	.bss.Wire,"aw",%nobits
 994              		.align	2
 995              		.set	.LANCHOR1,. + 0
 996              		.type	Wire, %object
 997              		.size	Wire, 140
 998              	Wire:
 999 0000 00000000 		.space	140
 999      00000000 
 999      00000000 
 999      00000000 
 999      00000000 
 1000              		.section	.bss.Wire1,"aw",%nobits
 1001              		.align	2
 1002              		.set	.LANCHOR2,. + 0
 1003              		.type	Wire1, %object
 1004              		.size	Wire1, 140
 1005              	Wire1:
 1006 0000 00000000 		.space	140
 1006      00000000 
 1006      00000000 
 1006      00000000 
 1006      00000000 
 1007              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1008              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1009              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1010              	_ZL28cpu_irq_prev_interrupt_state:
 1011 0000 00       		.space	1
 1012              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1013              		.align	2
 1014              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1015              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1016              	_ZL32cpu_irq_critical_section_counter:
 1017 0000 00000000 		.space	4
 1018              		.section	.rodata._ZTV7TwoWire,"a",%progbits
ARM GAS  /tmp/ccoMtGU9.s 			page 19


 1019              		.align	2
 1020              		.set	.LANCHOR0,. + 0
 1021              		.type	_ZTV7TwoWire, %object
 1022              		.size	_ZTV7TwoWire, 48
 1023              	_ZTV7TwoWire:
 1024 0000 00000000 		.word	0
 1025 0004 00000000 		.word	0
 1026 0008 00000000 		.word	_ZN7TwoWireD1Ev
 1027 000c 00000000 		.word	_ZN7TwoWireD0Ev
 1028 0010 00000000 		.word	_ZN7TwoWire5writeEh
 1029 0014 00000000 		.word	_ZN7TwoWire5writeEPKhj
 1030 0018 00000000 		.word	_ZN7TwoWire9availableEv
 1031 001c 00000000 		.word	_ZN7TwoWire4readEv
 1032 0020 00000000 		.word	_ZN7TwoWire4peekEv
 1033 0024 00000000 		.word	_ZN7TwoWire5flushEv
 1034 0028 00000000 		.word	_ZNK6Stream8canWriteEv
 1035 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 1036              		.hidden	__dso_handle
 1037              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
