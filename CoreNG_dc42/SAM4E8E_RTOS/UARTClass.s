ARM GAS  /tmp/ccRXrcQd.s 			page 1


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
  13              		.file	"UARTClass.cpp"
  14              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN9UARTClasscvbEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9UARTClasscvbEv, %function
  23              	_ZN9UARTClasscvbEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0120     		movs	r0, #1
  28 0002 7047     		bx	lr
  29              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  30              		.section	.text._ZN9UARTClass9availableEv,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZN9UARTClass9availableEv
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN9UARTClass9availableEv, %function
  39              	_ZN9UARTClass9availableEv:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0369     		ldr	r3, [r0, #16]
  44 0002 D3F80002 		ldr	r0, [r3, #512]
  45 0006 D3F80432 		ldr	r3, [r3, #516]
  46 000a C01A     		subs	r0, r0, r3
  47 000c C0F30800 		ubfx	r0, r0, #0, #9
  48 0010 7047     		bx	lr
  49              		.size	_ZN9UARTClass9availableEv, .-_ZN9UARTClass9availableEv
  50 0012 00BF     		.section	.text._ZN9UARTClass4peekEv,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	_ZN9UARTClass4peekEv
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccRXrcQd.s 			page 2


  58              		.type	_ZN9UARTClass4peekEv, %function
  59              	_ZN9UARTClass4peekEv:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 0369     		ldr	r3, [r0, #16]
  64 0002 D3F80012 		ldr	r1, [r3, #512]
  65 0006 D3F80422 		ldr	r2, [r3, #516]
  66 000a 9142     		cmp	r1, r2
  67 000c 1DBF     		ittte	ne
  68 000e D3F80422 		ldrne	r2, [r3, #516]
  69 0012 985C     		ldrbne	r0, [r3, r2]	@ zero_extendqisi2
  70 0014 C0B2     		uxtbne	r0, r0
  71 0016 4FF0FF30 		moveq	r0, #-1
  72 001a 7047     		bx	lr
  73              		.size	_ZN9UARTClass4peekEv, .-_ZN9UARTClass4peekEv
  74              		.section	.text._ZN9UARTClass4readEv,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	_ZN9UARTClass4readEv
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  82              		.type	_ZN9UARTClass4readEv, %function
  83              	_ZN9UARTClass4readEv:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87 0000 0369     		ldr	r3, [r0, #16]
  88 0002 D3F80012 		ldr	r1, [r3, #512]
  89 0006 D3F80422 		ldr	r2, [r3, #516]
  90 000a 9142     		cmp	r1, r2
  91 000c 0AD0     		beq	.L9
  92 000e D3F80422 		ldr	r2, [r3, #516]
  93 0012 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
  94 0014 D3F80422 		ldr	r2, [r3, #516]
  95 0018 0132     		adds	r2, r2, #1
  96 001a C2F30802 		ubfx	r2, r2, #0, #9
  97 001e C3F80422 		str	r2, [r3, #516]
  98 0022 7047     		bx	lr
  99              	.L9:
 100 0024 4FF0FF30 		mov	r0, #-1
 101 0028 7047     		bx	lr
 102              		.size	_ZN9UARTClass4readEv, .-_ZN9UARTClass4readEv
 103 002a 00BF     		.section	.text._ZN9UARTClass5flushEv,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	_ZN9UARTClass5flushEv
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	_ZN9UARTClass5flushEv, %function
 112              	_ZN9UARTClass5flushEv:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccRXrcQd.s 			page 3


 115              		@ link register save eliminated.
 116 0000 4369     		ldr	r3, [r0, #20]
 117              	.L11:
 118 0002 D3F80012 		ldr	r1, [r3, #512]
 119 0006 D3F80422 		ldr	r2, [r3, #516]
 120 000a 9142     		cmp	r1, r2
 121 000c F9D1     		bne	.L11
 122 000e 8269     		ldr	r2, [r0, #24]
 123              	.L12:
 124 0010 5369     		ldr	r3, [r2, #20]
 125 0012 9B07     		lsls	r3, r3, #30
 126 0014 FCD5     		bpl	.L12
 127 0016 7047     		bx	lr
 128              		.size	_ZN9UARTClass5flushEv, .-_ZN9UARTClass5flushEv
 129              		.section	.text._ZN9UARTClass5writeEh,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	_ZN9UARTClass5writeEh
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	_ZN9UARTClass5writeEh, %function
 138              	_ZN9UARTClass5writeEh:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 30B4     		push	{r4, r5}
 143 0002 8469     		ldr	r4, [r0, #24]
 144 0004 4069     		ldr	r0, [r0, #20]
 145 0006 6369     		ldr	r3, [r4, #20]
 146 0008 9B07     		lsls	r3, r3, #30
 147 000a 05D5     		bpl	.L18
 148 000c D0F80422 		ldr	r2, [r0, #516]
 149 0010 D0F80032 		ldr	r3, [r0, #512]
 150 0014 9A42     		cmp	r2, r3
 151 0016 12D0     		beq	.L27
 152              	.L18:
 153 0018 D0F80022 		ldr	r2, [r0, #512]
 154 001c 0132     		adds	r2, r2, #1
 155 001e C2F30802 		ubfx	r2, r2, #0, #9
 156              	.L20:
 157 0022 D0F80432 		ldr	r3, [r0, #516]
 158 0026 9A42     		cmp	r2, r3
 159 0028 FBD0     		beq	.L20
 160 002a D0F80052 		ldr	r5, [r0, #512]
 161 002e 4155     		strb	r1, [r0, r5]
 162 0030 0223     		movs	r3, #2
 163 0032 C0F80022 		str	r2, [r0, #512]
 164 0036 A360     		str	r3, [r4, #8]
 165 0038 0120     		movs	r0, #1
 166 003a 30BC     		pop	{r4, r5}
 167 003c 7047     		bx	lr
 168              	.L27:
 169 003e E161     		str	r1, [r4, #28]
 170 0040 0120     		movs	r0, #1
 171 0042 30BC     		pop	{r4, r5}
ARM GAS  /tmp/ccRXrcQd.s 			page 4


 172 0044 7047     		bx	lr
 173              		.size	_ZN9UARTClass5writeEh, .-_ZN9UARTClass5writeEh
 174 0046 00BF     		.section	.text._ZNK9UARTClass8canWriteEv,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	_ZNK9UARTClass8canWriteEv
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 182              		.type	_ZNK9UARTClass8canWriteEv, %function
 183              	_ZNK9UARTClass8canWriteEv:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 4369     		ldr	r3, [r0, #20]
 188 0002 D3F80402 		ldr	r0, [r3, #516]
 189 0006 D3F80032 		ldr	r3, [r3, #512]
 190 000a 00F2FF10 		addw	r0, r0, #511
 191 000e C01A     		subs	r0, r0, r3
 192 0010 C0F30800 		ubfx	r0, r0, #0, #9
 193 0014 7047     		bx	lr
 194              		.size	_ZNK9UARTClass8canWriteEv, .-_ZNK9UARTClass8canWriteEv
 195 0016 00BF     		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 196              		.align	1
 197              		.p2align 2,,3
 198              		.weak	_ZN9UARTClassD2Ev
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZN9UARTClassD2Ev, %function
 204              	_ZN9UARTClassD2Ev:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 7047     		bx	lr
 209              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
 210              		.weak	_ZN9UARTClassD1Ev
 211              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
 212 0002 00BF     		.section	.text._ZN9UARTClass3endEv,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	_ZN9UARTClass3endEv
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	_ZN9UARTClass3endEv, %function
 221              	_ZN9UARTClass3endEv:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 0369     		ldr	r3, [r0, #16]
 225 0002 0268     		ldr	r2, [r0]
 226 0004 D3F80412 		ldr	r1, [r3, #516]
 227 0008 10B5     		push	{r4, lr}
 228 000a 0446     		mov	r4, r0
ARM GAS  /tmp/ccRXrcQd.s 			page 5


 229 000c C3F80012 		str	r1, [r3, #512]
 230 0010 D369     		ldr	r3, [r2, #28]
 231 0012 9847     		blx	r3
 232 0014 94F91C30 		ldrsb	r3, [r4, #28]
 233 0018 0748     		ldr	r0, .L32
 234 001a 5A09     		lsrs	r2, r3, #5
 235 001c 2032     		adds	r2, r2, #32
 236 001e 03F01F03 		and	r3, r3, #31
 237 0022 0121     		movs	r1, #1
 238 0024 01FA03F3 		lsl	r3, r1, r3
 239 0028 40F82230 		str	r3, [r0, r2, lsl #2]
 240 002c 206A     		ldr	r0, [r4, #32]
 241 002e BDE81040 		pop	{r4, lr}
 242 0032 FFF7FEBF 		b	pmc_disable_periph_clk
 243              	.L33:
 244 0036 00BF     		.align	2
 245              	.L32:
 246 0038 00E100E0 		.word	-536813312
 247              		.size	_ZN9UARTClass3endEv, .-_ZN9UARTClass3endEv
 248              		.section	.text._ZN9UARTClass5writeEPKhj,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZN9UARTClass5writeEPKhj
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu fpv4-sp-d16
 256              		.type	_ZN9UARTClass5writeEPKhj, %function
 257              	_ZN9UARTClass5writeEPKhj:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 261 0004 9046     		mov	r8, r2
 262 0006 6AB1     		cbz	r2, .L39
 263 0008 0646     		mov	r6, r0
 264 000a 0D46     		mov	r5, r1
 265 000c 1446     		mov	r4, r2
 266 000e 0227     		movs	r7, #2
 267              	.L37:
 268 0010 2246     		mov	r2, r4
 269 0012 2946     		mov	r1, r5
 270 0014 7069     		ldr	r0, [r6, #20]
 271 0016 FFF7FEFF 		bl	_ZN10RingBuffer10storeBlockEPKhj
 272 001a B369     		ldr	r3, [r6, #24]
 273 001c 241A     		subs	r4, r4, r0
 274 001e 0544     		add	r5, r5, r0
 275 0020 9F60     		str	r7, [r3, #8]
 276 0022 F5D1     		bne	.L37
 277              	.L39:
 278 0024 4046     		mov	r0, r8
 279 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 280              		.size	_ZN9UARTClass5writeEPKhj, .-_ZN9UARTClass5writeEPKhj
 281 002a 00BF     		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 282              		.align	1
 283              		.p2align 2,,3
 284              		.weak	_ZN9UARTClassD0Ev
 285              		.syntax unified
ARM GAS  /tmp/ccRXrcQd.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	_ZN9UARTClassD0Ev, %function
 290              	_ZN9UARTClassD0Ev:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 10B5     		push	{r4, lr}
 294 0002 2C21     		movs	r1, #44
 295 0004 0446     		mov	r4, r0
 296 0006 FFF7FEFF 		bl	_ZdlPvj
 297 000a 2046     		mov	r0, r4
 298 000c 10BD     		pop	{r4, pc}
 299              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 300 000e 00BF     		.section	.text._ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_,"ax",%progbits
 301              		.align	1
 302              		.p2align 2,,3
 303              		.global	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu fpv4-sp-d16
 308              		.type	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, %function
 309              	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_:
 310              		@ args = 8, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312              		@ link register save eliminated.
 313 0000 F0B4     		push	{r4, r5, r6, r7}
 314 0002 4FF47A77 		mov	r7, #1000
 315 0006 084E     		ldr	r6, .L47
 316 0008 049D     		ldr	r5, [sp, #16]
 317 000a 8161     		str	r1, [r0, #24]
 318 000c 0277     		strb	r2, [r0, #28]
 319 000e 0599     		ldr	r1, [sp, #20]
 320 0010 8760     		str	r7, [r0, #8]
 321 0012 0022     		movs	r2, #0
 322 0014 0660     		str	r6, [r0]
 323 0016 0561     		str	r5, [r0, #16]
 324 0018 0362     		str	r3, [r0, #32]
 325 001a 4161     		str	r1, [r0, #20]
 326 001c 4260     		str	r2, [r0, #4]
 327 001e C260     		str	r2, [r0, #12]
 328 0020 4262     		str	r2, [r0, #36]
 329 0022 8262     		str	r2, [r0, #40]
 330 0024 F0BC     		pop	{r4, r5, r6, r7}
 331 0026 7047     		bx	lr
 332              	.L48:
 333              		.align	2
 334              	.L47:
 335 0028 08000000 		.word	.LANCHOR0+8
 336              		.size	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, .-_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 337              		.global	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 338              		.thumb_set _ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_,_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS
 339              		.section	.text._ZN9UARTClass4initEmm,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN9UARTClass4initEmm
ARM GAS  /tmp/ccRXrcQd.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	_ZN9UARTClass4initEmm, %function
 348              	_ZN9UARTClass4initEmm:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 352 0004 0446     		mov	r4, r0
 353 0006 006A     		ldr	r0, [r0, #32]
 354 0008 0D46     		mov	r5, r1
 355 000a 9046     		mov	r8, r2
 356 000c FFF7FEFF 		bl	pmc_enable_periph_clk
 357 0010 184B     		ldr	r3, .L51
 358 0012 94F91C20 		ldrsb	r2, [r4, #28]
 359 0016 1968     		ldr	r1, [r3]
 360 0018 A369     		ldr	r3, [r4, #24]
 361 001a 2769     		ldr	r7, [r4, #16]
 362 001c 6669     		ldr	r6, [r4, #20]
 363 001e DFF858E0 		ldr	lr, .L51+4
 364 0022 2C01     		lsls	r4, r5, #4
 365 0024 AC20     		movs	r0, #172
 366 0026 40F20225 		movw	r5, #514
 367 002a C3F82051 		str	r5, [r3, #288]
 368 002e 02F01F0C 		and	ip, r2, #31
 369 0032 1860     		str	r0, [r3]
 370 0034 5509     		lsrs	r5, r2, #5
 371 0036 0139     		subs	r1, r1, #1
 372 0038 0022     		movs	r2, #0
 373 003a 0120     		movs	r0, #1
 374 003c C3F80480 		str	r8, [r3, #4]
 375 0040 01EB5401 		add	r1, r1, r4, lsr #1
 376 0044 00FA0CF0 		lsl	r0, r0, ip
 377 0048 B1FBF4F1 		udiv	r1, r1, r4
 378 004c 4FF0FF34 		mov	r4, #-1
 379 0050 1962     		str	r1, [r3, #32]
 380 0052 C7F80422 		str	r2, [r7, #516]
 381 0056 6121     		movs	r1, #97
 382 0058 C7F80022 		str	r2, [r7, #512]
 383 005c C6F80422 		str	r2, [r6, #516]
 384 0060 C6F80022 		str	r2, [r6, #512]
 385 0064 5022     		movs	r2, #80
 386 0066 DC60     		str	r4, [r3, #12]
 387 0068 9960     		str	r1, [r3, #8]
 388 006a 4EF82500 		str	r0, [lr, r5, lsl #2]
 389 006e 1A60     		str	r2, [r3]
 390 0070 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 391              	.L52:
 392              		.align	2
 393              	.L51:
 394 0074 00000000 		.word	SystemCoreClock
 395 0078 00E100E0 		.word	-536813312
 396              		.size	_ZN9UARTClass4initEmm, .-_ZN9UARTClass4initEmm
 397              		.section	.text._ZN9UARTClass5beginEmNS_9UARTModesE,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
ARM GAS  /tmp/ccRXrcQd.s 			page 8


 400              		.global	_ZN9UARTClass5beginEmNS_9UARTModesE
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu fpv4-sp-d16
 405              		.type	_ZN9UARTClass5beginEmNS_9UARTModesE, %function
 406              	_ZN9UARTClass5beginEmNS_9UARTModesE:
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409              		@ link register save eliminated.
 410 0000 02F46062 		and	r2, r2, #3584
 411 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 412              		.size	_ZN9UARTClass5beginEmNS_9UARTModesE, .-_ZN9UARTClass5beginEmNS_9UARTModesE
 413              		.section	.text._ZN9UARTClass5beginEm,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	_ZN9UARTClass5beginEm
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu fpv4-sp-d16
 421              		.type	_ZN9UARTClass5beginEm, %function
 422              	_ZN9UARTClass5beginEm:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426 0000 4FF40062 		mov	r2, #2048
 427 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 428              		.size	_ZN9UARTClass5beginEm, .-_ZN9UARTClass5beginEm
 429              		.section	.text._ZN9UARTClass20setInterruptPriorityEm,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	_ZN9UARTClass20setInterruptPriorityEm
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv4-sp-d16
 437              		.type	_ZN9UARTClass20setInterruptPriorityEm, %function
 438              	_ZN9UARTClass20setInterruptPriorityEm:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442 0000 90F91C30 		ldrsb	r3, [r0, #28]
 443 0004 002B     		cmp	r3, #0
 444 0006 01F00F01 		and	r1, r1, #15
 445 000a 07DB     		blt	.L58
 446 000c 03F16043 		add	r3, r3, #-536870912
 447 0010 03F56143 		add	r3, r3, #57600
 448 0014 0901     		lsls	r1, r1, #4
 449 0016 83F80013 		strb	r1, [r3, #768]
 450 001a 7047     		bx	lr
 451              	.L58:
 452 001c 034A     		ldr	r2, .L59
 453 001e 03F00F03 		and	r3, r3, #15
 454 0022 1A44     		add	r2, r2, r3
 455 0024 0901     		lsls	r1, r1, #4
 456 0026 1176     		strb	r1, [r2, #24]
ARM GAS  /tmp/ccRXrcQd.s 			page 9


 457 0028 7047     		bx	lr
 458              	.L60:
 459 002a 00BF     		.align	2
 460              	.L59:
 461 002c FCEC00E0 		.word	-536810244
 462              		.size	_ZN9UARTClass20setInterruptPriorityEm, .-_ZN9UARTClass20setInterruptPriorityEm
 463              		.section	.text._ZN9UARTClass20getInterruptPriorityEv,"ax",%progbits
 464              		.align	1
 465              		.p2align 2,,3
 466              		.global	_ZN9UARTClass20getInterruptPriorityEv
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu fpv4-sp-d16
 471              		.type	_ZN9UARTClass20getInterruptPriorityEv, %function
 472              	_ZN9UARTClass20getInterruptPriorityEv:
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475              		@ link register save eliminated.
 476 0000 90F91C30 		ldrsb	r3, [r0, #28]
 477 0004 002B     		cmp	r3, #0
 478 0006 07DB     		blt	.L64
 479 0008 03F16043 		add	r3, r3, #-536870912
 480 000c 03F56143 		add	r3, r3, #57600
 481 0010 93F80003 		ldrb	r0, [r3, #768]	@ zero_extendqisi2
 482 0014 0009     		lsrs	r0, r0, #4
 483 0016 7047     		bx	lr
 484              	.L64:
 485 0018 034A     		ldr	r2, .L65
 486 001a 03F00F03 		and	r3, r3, #15
 487 001e 1A44     		add	r2, r2, r3
 488 0020 107E     		ldrb	r0, [r2, #24]	@ zero_extendqisi2
 489 0022 0009     		lsrs	r0, r0, #4
 490 0024 7047     		bx	lr
 491              	.L66:
 492 0026 00BF     		.align	2
 493              	.L65:
 494 0028 FCEC00E0 		.word	-536810244
 495              		.size	_ZN9UARTClass20getInterruptPriorityEv, .-_ZN9UARTClass20getInterruptPriorityEv
 496              		.section	.text._ZN9UARTClass17availableForWriteEv,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	_ZN9UARTClass17availableForWriteEv
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	_ZN9UARTClass17availableForWriteEv, %function
 505              	_ZN9UARTClass17availableForWriteEv:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508              		@ link register save eliminated.
 509 0000 4369     		ldr	r3, [r0, #20]
 510 0002 D3F80002 		ldr	r0, [r3, #512]
 511 0006 D3F80432 		ldr	r3, [r3, #516]
 512 000a 9842     		cmp	r0, r3
 513 000c 2CBF     		ite	cs
ARM GAS  /tmp/ccRXrcQd.s 			page 10


 514 000e 03F2FF13 		addwcs	r3, r3, #511
 515 0012 03F1FF33 		addcc	r3, r3, #-1
 516 0016 181A     		subs	r0, r3, r0
 517 0018 7047     		bx	lr
 518              		.size	_ZN9UARTClass17availableForWriteEv, .-_ZN9UARTClass17availableForWriteEv
 519 001a 00BF     		.section	.text._ZN9UARTClass10IrqHandlerEv,"ax",%progbits
 520              		.align	1
 521              		.p2align 2,,3
 522              		.global	_ZN9UARTClass10IrqHandlerEv
 523              		.syntax unified
 524              		.thumb
 525              		.thumb_func
 526              		.fpu fpv4-sp-d16
 527              		.type	_ZN9UARTClass10IrqHandlerEv, %function
 528              	_ZN9UARTClass10IrqHandlerEv:
 529              		@ args = 0, pretend = 0, frame = 0
 530              		@ frame_needed = 0, uses_anonymous_args = 0
 531 0000 8369     		ldr	r3, [r0, #24]
 532 0002 70B5     		push	{r4, r5, r6, lr}
 533 0004 5D69     		ldr	r5, [r3, #20]
 534 0006 EA07     		lsls	r2, r5, #31
 535 0008 0446     		mov	r4, r0
 536 000a 17D5     		bpl	.L71
 537 000c 426A     		ldr	r2, [r0, #36]
 538 000e 3249     		ldr	r1, .L95
 539 0010 9E69     		ldr	r6, [r3, #24]
 540 0012 8B5C     		ldrb	r3, [r1, r2]	@ zero_extendqisi2
 541 0014 F6B2     		uxtb	r6, r6
 542 0016 B342     		cmp	r3, r6
 543 0018 4AD0     		beq	.L94
 544 001a 0023     		movs	r3, #0
 545 001c 4362     		str	r3, [r0, #36]
 546              	.L74:
 547 001e 2269     		ldr	r2, [r4, #16]
 548 0020 D2F80032 		ldr	r3, [r2, #512]
 549 0024 D2F80412 		ldr	r1, [r2, #516]
 550 0028 0133     		adds	r3, r3, #1
 551 002a C3F30803 		ubfx	r3, r3, #0, #9
 552 002e 8B42     		cmp	r3, r1
 553 0030 43D0     		beq	.L76
 554 0032 D2F80012 		ldr	r1, [r2, #512]
 555 0036 5654     		strb	r6, [r2, r1]
 556 0038 C2F80032 		str	r3, [r2, #512]
 557              	.L71:
 558 003c AB07     		lsls	r3, r5, #30
 559 003e 13D5     		bpl	.L77
 560 0040 6369     		ldr	r3, [r4, #20]
 561 0042 D3F80412 		ldr	r1, [r3, #516]
 562 0046 D3F80022 		ldr	r2, [r3, #512]
 563 004a 9142     		cmp	r1, r2
 564 004c 2CD0     		beq	.L78
 565 004e D3F80422 		ldr	r2, [r3, #516]
 566 0052 A169     		ldr	r1, [r4, #24]
 567 0054 9A5C     		ldrb	r2, [r3, r2]	@ zero_extendqisi2
 568 0056 D2B2     		uxtb	r2, r2
 569 0058 CA61     		str	r2, [r1, #28]
 570 005a D3F80422 		ldr	r2, [r3, #516]
ARM GAS  /tmp/ccRXrcQd.s 			page 11


 571 005e 0132     		adds	r2, r2, #1
 572 0060 C2F30802 		ubfx	r2, r2, #0, #9
 573 0064 C3F80422 		str	r2, [r3, #516]
 574              	.L77:
 575 0068 15F0600F 		tst	r5, #96
 576 006c 1BD0     		beq	.L70
 577 006e A369     		ldr	r3, [r4, #24]
 578 0070 2269     		ldr	r2, [r4, #16]
 579 0072 4FF48071 		mov	r1, #256
 580 0076 1960     		str	r1, [r3]
 581 0078 D2F80032 		ldr	r3, [r2, #512]
 582 007c D2F80412 		ldr	r1, [r2, #516]
 583 0080 0133     		adds	r3, r3, #1
 584 0082 C3F30803 		ubfx	r3, r3, #0, #9
 585 0086 8B42     		cmp	r3, r1
 586 0088 06D0     		beq	.L80
 587 008a D2F80012 		ldr	r1, [r2, #512]
 588 008e 7F20     		movs	r0, #127
 589 0090 5054     		strb	r0, [r2, r1]
 590 0092 C2F80032 		str	r3, [r2, #512]
 591 0096 70BD     		pop	{r4, r5, r6, pc}
 592              	.L80:
 593 0098 D2F80032 		ldr	r3, [r2, #512]
 594 009c 013B     		subs	r3, r3, #1
 595 009e C3F30803 		ubfx	r3, r3, #0, #9
 596 00a2 7F21     		movs	r1, #127
 597 00a4 D154     		strb	r1, [r2, r3]
 598              	.L70:
 599 00a6 70BD     		pop	{r4, r5, r6, pc}
 600              	.L78:
 601 00a8 A369     		ldr	r3, [r4, #24]
 602 00aa 0222     		movs	r2, #2
 603 00ac DA60     		str	r2, [r3, #12]
 604 00ae DBE7     		b	.L77
 605              	.L94:
 606 00b0 0132     		adds	r2, r2, #1
 607 00b2 022A     		cmp	r2, #2
 608 00b4 09D0     		beq	.L73
 609 00b6 4262     		str	r2, [r0, #36]
 610 00b8 B1E7     		b	.L74
 611              	.L76:
 612 00ba D2F80032 		ldr	r3, [r2, #512]
 613 00be 013B     		subs	r3, r3, #1
 614 00c0 C3F30803 		ubfx	r3, r3, #0, #9
 615 00c4 7F21     		movs	r1, #127
 616 00c6 D154     		strb	r1, [r2, r3]
 617 00c8 B8E7     		b	.L71
 618              	.L73:
 619 00ca 836A     		ldr	r3, [r0, #40]
 620 00cc 0022     		movs	r2, #0
 621 00ce 4262     		str	r2, [r0, #36]
 622 00d0 002B     		cmp	r3, #0
 623 00d2 A4D0     		beq	.L74
 624 00d4 9847     		blx	r3
 625 00d6 A2E7     		b	.L74
 626              	.L96:
 627              		.align	2
ARM GAS  /tmp/ccRXrcQd.s 			page 12


 628              	.L95:
 629 00d8 00000000 		.word	_ZN9UARTClass12interruptSeqE
 630              		.size	_ZN9UARTClass10IrqHandlerEv, .-_ZN9UARTClass10IrqHandlerEv
 631              		.section	.text._ZN9UARTClass20SetInterruptCallbackEPFvPS_E,"ax",%progbits
 632              		.align	1
 633              		.p2align 2,,3
 634              		.global	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 635              		.syntax unified
 636              		.thumb
 637              		.thumb_func
 638              		.fpu fpv4-sp-d16
 639              		.type	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E, %function
 640              	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E:
 641              		@ args = 0, pretend = 0, frame = 0
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643              		@ link register save eliminated.
 644 0000 0346     		mov	r3, r0
 645 0002 806A     		ldr	r0, [r0, #40]
 646 0004 9962     		str	r1, [r3, #40]
 647 0006 7047     		bx	lr
 648              		.size	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E, .-_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 649              		.global	_ZTV9UARTClass
 650              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 651              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 652              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 653              	_ZL28cpu_irq_prev_interrupt_state:
 654 0000 00       		.space	1
 655              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 656              		.align	2
 657              		.type	_ZL32cpu_irq_critical_section_counter, %object
 658              		.size	_ZL32cpu_irq_critical_section_counter, 4
 659              	_ZL32cpu_irq_critical_section_counter:
 660 0000 00000000 		.space	4
 661              		.section	.rodata._ZTV9UARTClass,"a",%progbits
 662              		.align	2
 663              		.set	.LANCHOR0,. + 0
 664              		.type	_ZTV9UARTClass, %object
 665              		.size	_ZTV9UARTClass, 60
 666              	_ZTV9UARTClass:
 667 0000 00000000 		.word	0
 668 0004 00000000 		.word	0
 669 0008 00000000 		.word	_ZN9UARTClassD1Ev
 670 000c 00000000 		.word	_ZN9UARTClassD0Ev
 671 0010 00000000 		.word	_ZN9UARTClass5writeEh
 672 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 673 0018 00000000 		.word	_ZN9UARTClass9availableEv
 674 001c 00000000 		.word	_ZN9UARTClass4readEv
 675 0020 00000000 		.word	_ZN9UARTClass4peekEv
 676 0024 00000000 		.word	_ZN9UARTClass5flushEv
 677 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 678 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 679 0030 00000000 		.word	_ZN9UARTClass5beginEm
 680 0034 00000000 		.word	_ZN9UARTClass3endEv
 681 0038 00000000 		.word	_ZN9UARTClasscvbEv
 682              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
