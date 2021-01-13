ARM GAS  /tmp/cc1UCwXq.s 			page 1


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
  11              		.file	"UARTClass.cpp"
  12              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZN9UARTClasscvbEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9UARTClasscvbEv, %function
  21              	_ZN9UARTClasscvbEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0120     		movs	r0, #1
  26 0002 7047     		bx	lr
  27              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  28              		.section	.text._ZN9UARTClass9availableEv,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	_ZN9UARTClass9availableEv
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN9UARTClass9availableEv, %function
  37              	_ZN9UARTClass9availableEv:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0369     		ldr	r3, [r0, #16]
  42 0002 D3F80002 		ldr	r0, [r3, #512]
  43 0006 D3F80432 		ldr	r3, [r3, #516]
  44 000a C01A     		subs	r0, r0, r3
  45 000c C0F30800 		ubfx	r0, r0, #0, #9
  46 0010 7047     		bx	lr
  47              		.size	_ZN9UARTClass9availableEv, .-_ZN9UARTClass9availableEv
  48 0012 00BF     		.section	.text._ZN9UARTClass4peekEv,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	_ZN9UARTClass4peekEv
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  56              		.type	_ZN9UARTClass4peekEv, %function
  57              	_ZN9UARTClass4peekEv:
ARM GAS  /tmp/cc1UCwXq.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0369     		ldr	r3, [r0, #16]
  62 0002 D3F80012 		ldr	r1, [r3, #512]
  63 0006 D3F80422 		ldr	r2, [r3, #516]
  64 000a 9142     		cmp	r1, r2
  65 000c 1DBF     		ittte	ne
  66 000e D3F80422 		ldrne	r2, [r3, #516]
  67 0012 985C     		ldrbne	r0, [r3, r2]	@ zero_extendqisi2
  68 0014 C0B2     		uxtbne	r0, r0
  69 0016 4FF0FF30 		moveq	r0, #-1
  70 001a 7047     		bx	lr
  71              		.size	_ZN9UARTClass4peekEv, .-_ZN9UARTClass4peekEv
  72              		.section	.text._ZN9UARTClass4readEv,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN9UARTClass4readEv
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu softvfp
  80              		.type	_ZN9UARTClass4readEv, %function
  81              	_ZN9UARTClass4readEv:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 0369     		ldr	r3, [r0, #16]
  86 0002 D3F80012 		ldr	r1, [r3, #512]
  87 0006 D3F80422 		ldr	r2, [r3, #516]
  88 000a 9142     		cmp	r1, r2
  89 000c 0AD0     		beq	.L9
  90 000e D3F80422 		ldr	r2, [r3, #516]
  91 0012 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
  92 0014 D3F80422 		ldr	r2, [r3, #516]
  93 0018 0132     		adds	r2, r2, #1
  94 001a C2F30802 		ubfx	r2, r2, #0, #9
  95 001e C3F80422 		str	r2, [r3, #516]
  96 0022 7047     		bx	lr
  97              	.L9:
  98 0024 4FF0FF30 		mov	r0, #-1
  99 0028 7047     		bx	lr
 100              		.size	_ZN9UARTClass4readEv, .-_ZN9UARTClass4readEv
 101 002a 00BF     		.section	.text._ZN9UARTClass5flushEv,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN9UARTClass5flushEv
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu softvfp
 109              		.type	_ZN9UARTClass5flushEv, %function
 110              	_ZN9UARTClass5flushEv:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 4369     		ldr	r3, [r0, #20]
ARM GAS  /tmp/cc1UCwXq.s 			page 3


 115              	.L11:
 116 0002 D3F80012 		ldr	r1, [r3, #512]
 117 0006 D3F80422 		ldr	r2, [r3, #516]
 118 000a 9142     		cmp	r1, r2
 119 000c F9D1     		bne	.L11
 120 000e 8269     		ldr	r2, [r0, #24]
 121              	.L12:
 122 0010 5369     		ldr	r3, [r2, #20]
 123 0012 9B07     		lsls	r3, r3, #30
 124 0014 FCD5     		bpl	.L12
 125 0016 7047     		bx	lr
 126              		.size	_ZN9UARTClass5flushEv, .-_ZN9UARTClass5flushEv
 127              		.section	.text._ZN9UARTClass5writeEh,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	_ZN9UARTClass5writeEh
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu softvfp
 135              		.type	_ZN9UARTClass5writeEh, %function
 136              	_ZN9UARTClass5writeEh:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 30B4     		push	{r4, r5}
 141 0002 8469     		ldr	r4, [r0, #24]
 142 0004 4069     		ldr	r0, [r0, #20]
 143 0006 6369     		ldr	r3, [r4, #20]
 144 0008 9B07     		lsls	r3, r3, #30
 145 000a 05D5     		bpl	.L18
 146 000c D0F80422 		ldr	r2, [r0, #516]
 147 0010 D0F80032 		ldr	r3, [r0, #512]
 148 0014 9A42     		cmp	r2, r3
 149 0016 12D0     		beq	.L27
 150              	.L18:
 151 0018 D0F80022 		ldr	r2, [r0, #512]
 152 001c 0132     		adds	r2, r2, #1
 153 001e C2F30802 		ubfx	r2, r2, #0, #9
 154              	.L20:
 155 0022 D0F80432 		ldr	r3, [r0, #516]
 156 0026 9A42     		cmp	r2, r3
 157 0028 FBD0     		beq	.L20
 158 002a 0223     		movs	r3, #2
 159 002c D0F80052 		ldr	r5, [r0, #512]
 160 0030 4155     		strb	r1, [r0, r5]
 161 0032 C0F80022 		str	r2, [r0, #512]
 162 0036 A360     		str	r3, [r4, #8]
 163 0038 0120     		movs	r0, #1
 164 003a 30BC     		pop	{r4, r5}
 165 003c 7047     		bx	lr
 166              	.L27:
 167 003e E161     		str	r1, [r4, #28]
 168 0040 0120     		movs	r0, #1
 169 0042 30BC     		pop	{r4, r5}
 170 0044 7047     		bx	lr
 171              		.size	_ZN9UARTClass5writeEh, .-_ZN9UARTClass5writeEh
ARM GAS  /tmp/cc1UCwXq.s 			page 4


 172 0046 00BF     		.section	.text._ZNK9UARTClass8canWriteEv,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZNK9UARTClass8canWriteEv
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu softvfp
 180              		.type	_ZNK9UARTClass8canWriteEv, %function
 181              	_ZNK9UARTClass8canWriteEv:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 4369     		ldr	r3, [r0, #20]
 186 0002 D3F80402 		ldr	r0, [r3, #516]
 187 0006 D3F80032 		ldr	r3, [r3, #512]
 188 000a 00F2FF10 		addw	r0, r0, #511
 189 000e C01A     		subs	r0, r0, r3
 190 0010 C0F30800 		ubfx	r0, r0, #0, #9
 191 0014 7047     		bx	lr
 192              		.size	_ZNK9UARTClass8canWriteEv, .-_ZNK9UARTClass8canWriteEv
 193 0016 00BF     		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 194              		.align	1
 195              		.p2align 2,,3
 196              		.weak	_ZN9UARTClassD2Ev
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu softvfp
 201              		.type	_ZN9UARTClassD2Ev, %function
 202              	_ZN9UARTClassD2Ev:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206 0000 7047     		bx	lr
 207              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
 208              		.weak	_ZN9UARTClassD1Ev
 209              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
 210 0002 00BF     		.section	.text._ZN9UARTClass3endEv,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_ZN9UARTClass3endEv
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu softvfp
 218              		.type	_ZN9UARTClass3endEv, %function
 219              	_ZN9UARTClass3endEv:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222 0000 0369     		ldr	r3, [r0, #16]
 223 0002 10B5     		push	{r4, lr}
 224 0004 0268     		ldr	r2, [r0]
 225 0006 0446     		mov	r4, r0
 226 0008 D3F80412 		ldr	r1, [r3, #516]
 227 000c D269     		ldr	r2, [r2, #28]
 228 000e C3F80012 		str	r1, [r3, #512]
ARM GAS  /tmp/cc1UCwXq.s 			page 5


 229 0012 9047     		blx	r2
 230 0014 0121     		movs	r1, #1
 231 0016 94F91C30 		ldrsb	r3, [r4, #28]
 232 001a 0748     		ldr	r0, .L32
 233 001c 5A09     		lsrs	r2, r3, #5
 234 001e 03F01F03 		and	r3, r3, #31
 235 0022 2032     		adds	r2, r2, #32
 236 0024 01FA03F3 		lsl	r3, r1, r3
 237 0028 40F82230 		str	r3, [r0, r2, lsl #2]
 238 002c 206A     		ldr	r0, [r4, #32]
 239 002e BDE81040 		pop	{r4, lr}
 240 0032 FFF7FEBF 		b	pmc_disable_periph_clk
 241              	.L33:
 242 0036 00BF     		.align	2
 243              	.L32:
 244 0038 00E100E0 		.word	-536813312
 245              		.size	_ZN9UARTClass3endEv, .-_ZN9UARTClass3endEv
 246              		.section	.text._ZN9UARTClass5writeEPKhj,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZN9UARTClass5writeEPKhj
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu softvfp
 254              		.type	_ZN9UARTClass5writeEPKhj, %function
 255              	_ZN9UARTClass5writeEPKhj:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 259 0004 9046     		mov	r8, r2
 260 0006 6AB1     		cbz	r2, .L39
 261 0008 0646     		mov	r6, r0
 262 000a 0D46     		mov	r5, r1
 263 000c 1446     		mov	r4, r2
 264 000e 0227     		movs	r7, #2
 265              	.L37:
 266 0010 2246     		mov	r2, r4
 267 0012 2946     		mov	r1, r5
 268 0014 7069     		ldr	r0, [r6, #20]
 269 0016 FFF7FEFF 		bl	_ZN10RingBuffer10storeBlockEPKhj
 270 001a B369     		ldr	r3, [r6, #24]
 271 001c 241A     		subs	r4, r4, r0
 272 001e 0544     		add	r5, r5, r0
 273 0020 9F60     		str	r7, [r3, #8]
 274 0022 F5D1     		bne	.L37
 275              	.L39:
 276 0024 4046     		mov	r0, r8
 277 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 278              		.size	_ZN9UARTClass5writeEPKhj, .-_ZN9UARTClass5writeEPKhj
 279 002a 00BF     		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 280              		.align	1
 281              		.p2align 2,,3
 282              		.weak	_ZN9UARTClassD0Ev
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/cc1UCwXq.s 			page 6


 286              		.fpu softvfp
 287              		.type	_ZN9UARTClassD0Ev, %function
 288              	_ZN9UARTClassD0Ev:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291 0000 10B5     		push	{r4, lr}
 292 0002 0446     		mov	r4, r0
 293 0004 2421     		movs	r1, #36
 294 0006 FFF7FEFF 		bl	_ZdlPvj
 295 000a 2046     		mov	r0, r4
 296 000c 10BD     		pop	{r4, pc}
 297              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 298 000e 00BF     		.section	.text._ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_,"ax",%progbits
 299              		.align	1
 300              		.p2align 2,,3
 301              		.global	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 302              		.syntax unified
 303              		.thumb
 304              		.thumb_func
 305              		.fpu softvfp
 306              		.type	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, %function
 307              	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_:
 308              		@ args = 8, pretend = 0, frame = 0
 309              		@ frame_needed = 0, uses_anonymous_args = 0
 310              		@ link register save eliminated.
 311 0000 F0B4     		push	{r4, r5, r6, r7}
 312 0002 0025     		movs	r5, #0
 313 0004 4FF47A77 		mov	r7, #1000
 314 0008 064E     		ldr	r6, .L47
 315 000a 8161     		str	r1, [r0, #24]
 316 000c 0277     		strb	r2, [r0, #28]
 317 000e 0499     		ldr	r1, [sp, #16]
 318 0010 059A     		ldr	r2, [sp, #20]
 319 0012 8760     		str	r7, [r0, #8]
 320 0014 0660     		str	r6, [r0]
 321 0016 4560     		str	r5, [r0, #4]
 322 0018 C560     		str	r5, [r0, #12]
 323 001a 0362     		str	r3, [r0, #32]
 324 001c 0161     		str	r1, [r0, #16]
 325 001e 4261     		str	r2, [r0, #20]
 326 0020 F0BC     		pop	{r4, r5, r6, r7}
 327 0022 7047     		bx	lr
 328              	.L48:
 329              		.align	2
 330              	.L47:
 331 0024 08000000 		.word	.LANCHOR0+8
 332              		.size	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, .-_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 333              		.global	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 334              		.thumb_set _ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_,_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS
 335              		.section	.text._ZN9UARTClass4initEmm,"ax",%progbits
 336              		.align	1
 337              		.p2align 2,,3
 338              		.global	_ZN9UARTClass4initEmm
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu softvfp
ARM GAS  /tmp/cc1UCwXq.s 			page 7


 343              		.type	_ZN9UARTClass4initEmm, %function
 344              	_ZN9UARTClass4initEmm:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 348 0004 0D46     		mov	r5, r1
 349 0006 0446     		mov	r4, r0
 350 0008 006A     		ldr	r0, [r0, #32]
 351 000a 1646     		mov	r6, r2
 352 000c FFF7FEFF 		bl	pmc_enable_periph_clk
 353 0010 194A     		ldr	r2, .L51
 354 0012 2B01     		lsls	r3, r5, #4
 355 0014 1168     		ldr	r1, [r2]
 356 0016 40F20229 		movw	r9, #514
 357 001a 0139     		subs	r1, r1, #1
 358 001c 01EB5301 		add	r1, r1, r3, lsr #1
 359 0020 B1FBF3F1 		udiv	r1, r1, r3
 360 0024 4FF0AC08 		mov	r8, #172
 361 0028 0122     		movs	r2, #1
 362 002a 0025     		movs	r5, #0
 363 002c 4FF0FF3C 		mov	ip, #-1
 364 0030 4FF0610E 		mov	lr, #97
 365 0034 5027     		movs	r7, #80
 366 0036 94F91C00 		ldrsb	r0, [r4, #28]
 367 003a A369     		ldr	r3, [r4, #24]
 368 003c C3F82091 		str	r9, [r3, #288]
 369 0040 C3F80080 		str	r8, [r3]
 370 0044 5E60     		str	r6, [r3, #4]
 371 0046 1962     		str	r1, [r3, #32]
 372 0048 2669     		ldr	r6, [r4, #16]
 373 004a 6169     		ldr	r1, [r4, #20]
 374 004c 00F01F04 		and	r4, r0, #31
 375 0050 A240     		lsls	r2, r2, r4
 376 0052 0A4C     		ldr	r4, .L51+4
 377 0054 4009     		lsrs	r0, r0, #5
 378 0056 C6F80452 		str	r5, [r6, #516]
 379 005a C6F80052 		str	r5, [r6, #512]
 380 005e C1F80452 		str	r5, [r1, #516]
 381 0062 C1F80052 		str	r5, [r1, #512]
 382 0066 C3F80CC0 		str	ip, [r3, #12]
 383 006a C3F808E0 		str	lr, [r3, #8]
 384 006e 44F82020 		str	r2, [r4, r0, lsl #2]
 385 0072 1F60     		str	r7, [r3]
 386 0074 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 387              	.L52:
 388              		.align	2
 389              	.L51:
 390 0078 00000000 		.word	SystemCoreClock
 391 007c 00E100E0 		.word	-536813312
 392              		.size	_ZN9UARTClass4initEmm, .-_ZN9UARTClass4initEmm
 393              		.section	.text._ZN9UARTClass5beginEmNS_9UARTModesE,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	_ZN9UARTClass5beginEmNS_9UARTModesE
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  /tmp/cc1UCwXq.s 			page 8


 400              		.fpu softvfp
 401              		.type	_ZN9UARTClass5beginEmNS_9UARTModesE, %function
 402              	_ZN9UARTClass5beginEmNS_9UARTModesE:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 02F46062 		and	r2, r2, #3584
 407 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 408              		.size	_ZN9UARTClass5beginEmNS_9UARTModesE, .-_ZN9UARTClass5beginEmNS_9UARTModesE
 409              		.section	.text._ZN9UARTClass5beginEm,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	_ZN9UARTClass5beginEm
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu softvfp
 417              		.type	_ZN9UARTClass5beginEm, %function
 418              	_ZN9UARTClass5beginEm:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421              		@ link register save eliminated.
 422 0000 4FF40062 		mov	r2, #2048
 423 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 424              		.size	_ZN9UARTClass5beginEm, .-_ZN9UARTClass5beginEm
 425              		.section	.text._ZN9UARTClass20setInterruptPriorityEm,"ax",%progbits
 426              		.align	1
 427              		.p2align 2,,3
 428              		.global	_ZN9UARTClass20setInterruptPriorityEm
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu softvfp
 433              		.type	_ZN9UARTClass20setInterruptPriorityEm, %function
 434              	_ZN9UARTClass20setInterruptPriorityEm:
 435              		@ args = 0, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437              		@ link register save eliminated.
 438 0000 90F91C30 		ldrsb	r3, [r0, #28]
 439 0004 01F00F01 		and	r1, r1, #15
 440 0008 002B     		cmp	r3, #0
 441 000a 07DB     		blt	.L58
 442 000c 03F16043 		add	r3, r3, #-536870912
 443 0010 03F56143 		add	r3, r3, #57600
 444 0014 0901     		lsls	r1, r1, #4
 445 0016 83F80013 		strb	r1, [r3, #768]
 446 001a 7047     		bx	lr
 447              	.L58:
 448 001c 034A     		ldr	r2, .L59
 449 001e 03F00F03 		and	r3, r3, #15
 450 0022 0901     		lsls	r1, r1, #4
 451 0024 1A44     		add	r2, r2, r3
 452 0026 1176     		strb	r1, [r2, #24]
 453 0028 7047     		bx	lr
 454              	.L60:
 455 002a 00BF     		.align	2
 456              	.L59:
ARM GAS  /tmp/cc1UCwXq.s 			page 9


 457 002c FCEC00E0 		.word	-536810244
 458              		.size	_ZN9UARTClass20setInterruptPriorityEm, .-_ZN9UARTClass20setInterruptPriorityEm
 459              		.section	.text._ZN9UARTClass20getInterruptPriorityEv,"ax",%progbits
 460              		.align	1
 461              		.p2align 2,,3
 462              		.global	_ZN9UARTClass20getInterruptPriorityEv
 463              		.syntax unified
 464              		.thumb
 465              		.thumb_func
 466              		.fpu softvfp
 467              		.type	_ZN9UARTClass20getInterruptPriorityEv, %function
 468              	_ZN9UARTClass20getInterruptPriorityEv:
 469              		@ args = 0, pretend = 0, frame = 0
 470              		@ frame_needed = 0, uses_anonymous_args = 0
 471              		@ link register save eliminated.
 472 0000 90F91C30 		ldrsb	r3, [r0, #28]
 473 0004 002B     		cmp	r3, #0
 474 0006 07DB     		blt	.L64
 475 0008 03F16043 		add	r3, r3, #-536870912
 476 000c 03F56143 		add	r3, r3, #57600
 477 0010 93F80003 		ldrb	r0, [r3, #768]	@ zero_extendqisi2
 478 0014 0009     		lsrs	r0, r0, #4
 479 0016 7047     		bx	lr
 480              	.L64:
 481 0018 034A     		ldr	r2, .L65
 482 001a 03F00F03 		and	r3, r3, #15
 483 001e 1A44     		add	r2, r2, r3
 484 0020 107E     		ldrb	r0, [r2, #24]	@ zero_extendqisi2
 485 0022 0009     		lsrs	r0, r0, #4
 486 0024 7047     		bx	lr
 487              	.L66:
 488 0026 00BF     		.align	2
 489              	.L65:
 490 0028 FCEC00E0 		.word	-536810244
 491              		.size	_ZN9UARTClass20getInterruptPriorityEv, .-_ZN9UARTClass20getInterruptPriorityEv
 492              		.section	.text._ZN9UARTClass17availableForWriteEv,"ax",%progbits
 493              		.align	1
 494              		.p2align 2,,3
 495              		.global	_ZN9UARTClass17availableForWriteEv
 496              		.syntax unified
 497              		.thumb
 498              		.thumb_func
 499              		.fpu softvfp
 500              		.type	_ZN9UARTClass17availableForWriteEv, %function
 501              	_ZN9UARTClass17availableForWriteEv:
 502              		@ args = 0, pretend = 0, frame = 0
 503              		@ frame_needed = 0, uses_anonymous_args = 0
 504              		@ link register save eliminated.
 505 0000 4369     		ldr	r3, [r0, #20]
 506 0002 D3F80002 		ldr	r0, [r3, #512]
 507 0006 D3F80432 		ldr	r3, [r3, #516]
 508 000a 9842     		cmp	r0, r3
 509 000c 2CBF     		ite	cs
 510 000e 03F2FF13 		addwcs	r3, r3, #511
 511 0012 03F1FF33 		addcc	r3, r3, #-1
 512 0016 181A     		subs	r0, r3, r0
 513 0018 7047     		bx	lr
ARM GAS  /tmp/cc1UCwXq.s 			page 10


 514              		.size	_ZN9UARTClass17availableForWriteEv, .-_ZN9UARTClass17availableForWriteEv
 515 001a 00BF     		.section	.text._ZN9UARTClass10IrqHandlerEv,"ax",%progbits
 516              		.align	1
 517              		.p2align 2,,3
 518              		.global	_ZN9UARTClass10IrqHandlerEv
 519              		.syntax unified
 520              		.thumb
 521              		.thumb_func
 522              		.fpu softvfp
 523              		.type	_ZN9UARTClass10IrqHandlerEv, %function
 524              	_ZN9UARTClass10IrqHandlerEv:
 525              		@ args = 0, pretend = 0, frame = 0
 526              		@ frame_needed = 0, uses_anonymous_args = 0
 527              		@ link register save eliminated.
 528 0000 8269     		ldr	r2, [r0, #24]
 529 0002 70B4     		push	{r4, r5, r6}
 530 0004 5369     		ldr	r3, [r2, #20]
 531 0006 DC07     		lsls	r4, r3, #31
 532 0008 10D5     		bpl	.L71
 533 000a 0469     		ldr	r4, [r0, #16]
 534 000c 9569     		ldr	r5, [r2, #24]
 535 000e D4F80012 		ldr	r1, [r4, #512]
 536 0012 D4F80462 		ldr	r6, [r4, #516]
 537 0016 0131     		adds	r1, r1, #1
 538 0018 C1F30801 		ubfx	r1, r1, #0, #9
 539 001c B142     		cmp	r1, r6
 540 001e 3ED0     		beq	.L72
 541 0020 D4F80062 		ldr	r6, [r4, #512]
 542 0024 EDB2     		uxtb	r5, r5
 543 0026 A555     		strb	r5, [r4, r6]
 544 0028 C4F80012 		str	r1, [r4, #512]
 545              	.L71:
 546 002c 9907     		lsls	r1, r3, #30
 547 002e 12D5     		bpl	.L73
 548 0030 4169     		ldr	r1, [r0, #20]
 549 0032 D1F80452 		ldr	r5, [r1, #516]
 550 0036 D1F80042 		ldr	r4, [r1, #512]
 551 003a A542     		cmp	r5, r4
 552 003c 2CD0     		beq	.L74
 553 003e D1F80442 		ldr	r4, [r1, #516]
 554 0042 0C5D     		ldrb	r4, [r1, r4]	@ zero_extendqisi2
 555 0044 E4B2     		uxtb	r4, r4
 556 0046 D461     		str	r4, [r2, #28]
 557 0048 D1F80442 		ldr	r4, [r1, #516]
 558 004c 0134     		adds	r4, r4, #1
 559 004e C4F30804 		ubfx	r4, r4, #0, #9
 560 0052 C1F80442 		str	r4, [r1, #516]
 561              	.L73:
 562 0056 13F0600F 		tst	r3, #96
 563 005a 12D0     		beq	.L70
 564 005c 4FF48073 		mov	r3, #256
 565 0060 0169     		ldr	r1, [r0, #16]
 566 0062 1360     		str	r3, [r2]
 567 0064 D1F80032 		ldr	r3, [r1, #512]
 568 0068 D1F80422 		ldr	r2, [r1, #516]
 569 006c 0133     		adds	r3, r3, #1
 570 006e C3F30803 		ubfx	r3, r3, #0, #9
ARM GAS  /tmp/cc1UCwXq.s 			page 11


 571 0072 9342     		cmp	r3, r2
 572 0074 07D0     		beq	.L76
 573 0076 7F20     		movs	r0, #127
 574 0078 D1F80022 		ldr	r2, [r1, #512]
 575 007c 8854     		strb	r0, [r1, r2]
 576 007e C1F80032 		str	r3, [r1, #512]
 577              	.L70:
 578 0082 70BC     		pop	{r4, r5, r6}
 579 0084 7047     		bx	lr
 580              	.L76:
 581 0086 7F22     		movs	r2, #127
 582 0088 D1F80032 		ldr	r3, [r1, #512]
 583 008c 013B     		subs	r3, r3, #1
 584 008e C3F30803 		ubfx	r3, r3, #0, #9
 585 0092 CA54     		strb	r2, [r1, r3]
 586 0094 70BC     		pop	{r4, r5, r6}
 587 0096 7047     		bx	lr
 588              	.L74:
 589 0098 0221     		movs	r1, #2
 590 009a D160     		str	r1, [r2, #12]
 591 009c DBE7     		b	.L73
 592              	.L72:
 593 009e 7F25     		movs	r5, #127
 594 00a0 D4F80012 		ldr	r1, [r4, #512]
 595 00a4 0139     		subs	r1, r1, #1
 596 00a6 C1F30801 		ubfx	r1, r1, #0, #9
 597 00aa 6554     		strb	r5, [r4, r1]
 598 00ac BEE7     		b	.L71
 599              		.size	_ZN9UARTClass10IrqHandlerEv, .-_ZN9UARTClass10IrqHandlerEv
 600              		.global	_ZTV9UARTClass
 601 00ae 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 602              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 603              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 604              	_ZL28cpu_irq_prev_interrupt_state:
 605 0000 00       		.space	1
 606              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 607              		.align	2
 608              		.type	_ZL32cpu_irq_critical_section_counter, %object
 609              		.size	_ZL32cpu_irq_critical_section_counter, 4
 610              	_ZL32cpu_irq_critical_section_counter:
 611 0000 00000000 		.space	4
 612              		.section	.rodata._ZTV9UARTClass,"a",%progbits
 613              		.align	2
 614              		.set	.LANCHOR0,. + 0
 615              		.type	_ZTV9UARTClass, %object
 616              		.size	_ZTV9UARTClass, 60
 617              	_ZTV9UARTClass:
 618 0000 00000000 		.word	0
 619 0004 00000000 		.word	0
 620 0008 00000000 		.word	_ZN9UARTClassD1Ev
 621 000c 00000000 		.word	_ZN9UARTClassD0Ev
 622 0010 00000000 		.word	_ZN9UARTClass5writeEh
 623 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 624 0018 00000000 		.word	_ZN9UARTClass9availableEv
 625 001c 00000000 		.word	_ZN9UARTClass4readEv
 626 0020 00000000 		.word	_ZN9UARTClass4peekEv
 627 0024 00000000 		.word	_ZN9UARTClass5flushEv
ARM GAS  /tmp/cc1UCwXq.s 			page 12


 628 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 629 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 630 0030 00000000 		.word	_ZN9UARTClass5beginEm
 631 0034 00000000 		.word	_ZN9UARTClass3endEv
 632 0038 00000000 		.word	_ZN9UARTClasscvbEv
 633              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
