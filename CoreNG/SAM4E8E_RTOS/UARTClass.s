ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN9UARTClasscvbEv,"axG",%progbits,_ZN9UARTClasscvbEv,comdat
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN9UARTClasscvbEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9UARTClasscvbEv, %function
  24              	_ZN9UARTClasscvbEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0120     		movs	r0, #1
  29 0002 7047     		bx	lr
  30              		.size	_ZN9UARTClasscvbEv, .-_ZN9UARTClasscvbEv
  31              		.section	.text._ZN9UARTClass9availableEv,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN9UARTClass9availableEv
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN9UARTClass9availableEv, %function
  40              	_ZN9UARTClass9availableEv:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0369     		ldr	r3, [r0, #16]
  45 0002 D3F80002 		ldr	r0, [r3, #512]
  46 0006 D3F80432 		ldr	r3, [r3, #516]
  47 000a C01A     		subs	r0, r0, r3
  48 000c C0F30800 		ubfx	r0, r0, #0, #9
  49 0010 7047     		bx	lr
  50              		.size	_ZN9UARTClass9availableEv, .-_ZN9UARTClass9availableEv
  51 0012 00BF     		.section	.text._ZN9UARTClass4peekEv,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN9UARTClass4peekEv
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZN9UARTClass4peekEv, %function
  60              	_ZN9UARTClass4peekEv:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0369     		ldr	r3, [r0, #16]
  65 0002 D3F80012 		ldr	r1, [r3, #512]
  66 0006 D3F80422 		ldr	r2, [r3, #516]
  67 000a 9142     		cmp	r1, r2
  68 000c 1DBF     		ittte	ne
  69 000e D3F80422 		ldrne	r2, [r3, #516]
  70 0012 985C     		ldrbne	r0, [r3, r2]	@ zero_extendqisi2
  71 0014 C0B2     		uxtbne	r0, r0
  72 0016 4FF0FF30 		moveq	r0, #-1
  73 001a 7047     		bx	lr
  74              		.size	_ZN9UARTClass4peekEv, .-_ZN9UARTClass4peekEv
  75              		.section	.text._ZN9UARTClass4readEv,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_ZN9UARTClass4readEv
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu fpv4-sp-d16
  83              		.type	_ZN9UARTClass4readEv, %function
  84              	_ZN9UARTClass4readEv:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 0369     		ldr	r3, [r0, #16]
  89 0002 D3F80012 		ldr	r1, [r3, #512]
  90 0006 D3F80422 		ldr	r2, [r3, #516]
  91 000a 9142     		cmp	r1, r2
  92 000c 0AD0     		beq	.L9
  93 000e D3F80422 		ldr	r2, [r3, #516]
  94 0012 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
  95 0014 D3F80422 		ldr	r2, [r3, #516]
  96 0018 0132     		adds	r2, r2, #1
  97 001a C2F30802 		ubfx	r2, r2, #0, #9
  98 001e C3F80422 		str	r2, [r3, #516]
  99 0022 7047     		bx	lr
 100              	.L9:
 101 0024 4FF0FF30 		mov	r0, #-1
 102 0028 7047     		bx	lr
 103              		.size	_ZN9UARTClass4readEv, .-_ZN9UARTClass4readEv
 104 002a 00BF     		.section	.text._ZN9UARTClass5flushEv,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_ZN9UARTClass5flushEv
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	_ZN9UARTClass5flushEv, %function
 113              	_ZN9UARTClass5flushEv:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 4369     		ldr	r3, [r0, #20]
 118              	.L11:
 119 0002 D3F80012 		ldr	r1, [r3, #512]
 120 0006 D3F80422 		ldr	r2, [r3, #516]
 121 000a 9142     		cmp	r1, r2
 122 000c F9D1     		bne	.L11
 123 000e 8269     		ldr	r2, [r0, #24]
 124              	.L12:
 125 0010 5369     		ldr	r3, [r2, #20]
 126 0012 9B07     		lsls	r3, r3, #30
 127 0014 FCD5     		bpl	.L12
 128 0016 7047     		bx	lr
 129              		.size	_ZN9UARTClass5flushEv, .-_ZN9UARTClass5flushEv
 130              		.section	.text._ZN9UARTClass5writeEh,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	_ZN9UARTClass5writeEh
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZN9UARTClass5writeEh, %function
 139              	_ZN9UARTClass5writeEh:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 30B4     		push	{r4, r5}
 144 0002 D0E90543 		ldrd	r4, r3, [r0, #20]
 145 0006 5A69     		ldr	r2, [r3, #20]
 146 0008 9207     		lsls	r2, r2, #30
 147 000a 05D5     		bpl	.L17
 148 000c D4F80452 		ldr	r5, [r4, #516]
 149 0010 D4F80022 		ldr	r2, [r4, #512]
 150 0014 9542     		cmp	r5, r2
 151 0016 14D0     		beq	.L25
 152              	.L17:
 153 0018 D4F80022 		ldr	r2, [r4, #512]
 154 001c 0132     		adds	r2, r2, #1
 155 001e C2F30802 		ubfx	r2, r2, #0, #9
 156              	.L19:
 157 0022 D4F80432 		ldr	r3, [r4, #516]
 158 0026 9342     		cmp	r3, r2
 159 0028 FBD0     		beq	.L19
 160 002a D4F80032 		ldr	r3, [r4, #512]
 161 002e E154     		strb	r1, [r4, r3]
 162 0030 4369     		ldr	r3, [r0, #20]
 163 0032 C3F80022 		str	r2, [r3, #512]
 164 0036 8369     		ldr	r3, [r0, #24]
 165 0038 0222     		movs	r2, #2
 166 003a 0120     		movs	r0, #1
 167 003c 9A60     		str	r2, [r3, #8]
 168 003e 30BC     		pop	{r4, r5}
 169 0040 7047     		bx	lr
 170              	.L25:
 171 0042 0120     		movs	r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 4


 172 0044 D961     		str	r1, [r3, #28]
 173 0046 30BC     		pop	{r4, r5}
 174 0048 7047     		bx	lr
 175              		.size	_ZN9UARTClass5writeEh, .-_ZN9UARTClass5writeEh
 176 004a 00BF     		.section	.text._ZNK9UARTClass8canWriteEv,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZNK9UARTClass8canWriteEv
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	_ZNK9UARTClass8canWriteEv, %function
 185              	_ZNK9UARTClass8canWriteEv:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 4369     		ldr	r3, [r0, #20]
 190 0002 D3F80402 		ldr	r0, [r3, #516]
 191 0006 D3F80032 		ldr	r3, [r3, #512]
 192 000a 00F2FF10 		addw	r0, r0, #511
 193 000e C01A     		subs	r0, r0, r3
 194 0010 C0F30800 		ubfx	r0, r0, #0, #9
 195 0014 7047     		bx	lr
 196              		.size	_ZNK9UARTClass8canWriteEv, .-_ZNK9UARTClass8canWriteEv
 197 0016 00BF     		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 198              		.align	1
 199              		.p2align 2,,3
 200              		.weak	_ZN9UARTClassD2Ev
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZN9UARTClassD2Ev, %function
 206              	_ZN9UARTClassD2Ev:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 7047     		bx	lr
 211              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
 212              		.weak	_ZN9UARTClassD1Ev
 213              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
 214 0002 00BF     		.section	.text._ZN9UARTClass3endEv,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	_ZN9UARTClass3endEv
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu fpv4-sp-d16
 222              		.type	_ZN9UARTClass3endEv, %function
 223              	_ZN9UARTClass3endEv:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 10B5     		push	{r4, lr}
 227 0002 0369     		ldr	r3, [r0, #16]
 228 0004 D3F80422 		ldr	r2, [r3, #516]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 5


 229 0008 C3F80022 		str	r2, [r3, #512]
 230 000c 0368     		ldr	r3, [r0]
 231 000e 0446     		mov	r4, r0
 232 0010 DB69     		ldr	r3, [r3, #28]
 233 0012 9847     		blx	r3
 234 0014 94F91C30 		ldrsb	r3, [r4, #28]
 235 0018 0748     		ldr	r0, .L30
 236 001a 5A09     		lsrs	r2, r3, #5
 237 001c 2032     		adds	r2, r2, #32
 238 001e 03F01F03 		and	r3, r3, #31
 239 0022 0121     		movs	r1, #1
 240 0024 01FA03F3 		lsl	r3, r1, r3
 241 0028 40F82230 		str	r3, [r0, r2, lsl #2]
 242 002c 206A     		ldr	r0, [r4, #32]
 243 002e BDE81040 		pop	{r4, lr}
 244 0032 FFF7FEBF 		b	pmc_disable_periph_clk
 245              	.L31:
 246 0036 00BF     		.align	2
 247              	.L30:
 248 0038 00E100E0 		.word	-536813312
 249              		.size	_ZN9UARTClass3endEv, .-_ZN9UARTClass3endEv
 250              		.section	.text._ZN9UARTClass5writeEPKhj,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	_ZN9UARTClass5writeEPKhj
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	_ZN9UARTClass5writeEPKhj, %function
 259              	_ZN9UARTClass5writeEPKhj:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 263 0004 9046     		mov	r8, r2
 264 0006 6AB1     		cbz	r2, .L33
 265 0008 0646     		mov	r6, r0
 266 000a 0D46     		mov	r5, r1
 267 000c 1446     		mov	r4, r2
 268 000e 0227     		movs	r7, #2
 269              	.L34:
 270 0010 2246     		mov	r2, r4
 271 0012 2946     		mov	r1, r5
 272 0014 7069     		ldr	r0, [r6, #20]
 273 0016 FFF7FEFF 		bl	_ZN10RingBuffer10storeBlockEPKhj
 274 001a B369     		ldr	r3, [r6, #24]
 275 001c 241A     		subs	r4, r4, r0
 276 001e 0544     		add	r5, r5, r0
 277 0020 9F60     		str	r7, [r3, #8]
 278 0022 F5D1     		bne	.L34
 279              	.L33:
 280 0024 4046     		mov	r0, r8
 281 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 282              		.size	_ZN9UARTClass5writeEPKhj, .-_ZN9UARTClass5writeEPKhj
 283 002a 00BF     		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 6


 286              		.weak	_ZN9UARTClassD0Ev
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	_ZN9UARTClassD0Ev, %function
 292              	_ZN9UARTClassD0Ev:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295 0000 10B5     		push	{r4, lr}
 296 0002 2C21     		movs	r1, #44
 297 0004 0446     		mov	r4, r0
 298 0006 FFF7FEFF 		bl	_ZdlPvj
 299 000a 2046     		mov	r0, r4
 300 000c 10BD     		pop	{r4, pc}
 301              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 302 000e 00BF     		.section	.text._ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 310              		.type	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, %function
 311              	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_:
 312              		@ args = 8, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              		@ link register save eliminated.
 315 0000 70B4     		push	{r4, r5, r6}
 316 0002 8161     		str	r1, [r0, #24]
 317 0004 0277     		strb	r2, [r0, #28]
 318 0006 0399     		ldr	r1, [sp, #12]
 319 0008 049A     		ldr	r2, [sp, #16]
 320 000a 074D     		ldr	r5, .L44
 321 000c 0362     		str	r3, [r0, #32]
 322 000e 4FF47A76 		mov	r6, #1000
 323 0012 0023     		movs	r3, #0
 324 0014 8660     		str	r6, [r0, #8]
 325 0016 0560     		str	r5, [r0]
 326 0018 C0E90412 		strd	r1, r2, [r0, #16]
 327 001c 4360     		str	r3, [r0, #4]
 328 001e C360     		str	r3, [r0, #12]
 329 0020 C0E90933 		strd	r3, r3, [r0, #36]
 330 0024 70BC     		pop	{r4, r5, r6}
 331 0026 7047     		bx	lr
 332              	.L45:
 333              		.align	2
 334              	.L44:
 335 0028 08000000 		.word	.LANCHOR0+8
 336              		.size	_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_, .-_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS4_
 337              		.global	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 338              		.thumb_set _ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_,_ZN9UARTClassC2EP4Uart4IRQnmP10RingBufferS
 339              		.section	.text._ZN9UARTClass4initEmm,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	_ZN9UARTClass4initEmm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	_ZN9UARTClass4initEmm, %function
 348              	_ZN9UARTClass4initEmm:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 352 0002 0446     		mov	r4, r0
 353 0004 006A     		ldr	r0, [r0, #32]
 354 0006 0D46     		mov	r5, r1
 355 0008 1746     		mov	r7, r2
 356 000a FFF7FEFF 		bl	pmc_enable_periph_clk
 357 000e 194B     		ldr	r3, .L48
 358 0010 A069     		ldr	r0, [r4, #24]
 359 0012 1968     		ldr	r1, [r3]
 360 0014 2669     		ldr	r6, [r4, #16]
 361 0016 40F20222 		movw	r2, #514
 362 001a AC23     		movs	r3, #172
 363 001c C0F82021 		str	r2, [r0, #288]
 364 0020 2D01     		lsls	r5, r5, #4
 365 0022 0360     		str	r3, [r0]
 366 0024 0139     		subs	r1, r1, #1
 367 0026 0023     		movs	r3, #0
 368 0028 4760     		str	r7, [r0, #4]
 369 002a 01EB5501 		add	r1, r1, r5, lsr #1
 370 002e B1FBF5F1 		udiv	r1, r1, r5
 371 0032 0162     		str	r1, [r0, #32]
 372 0034 C6F80432 		str	r3, [r6, #516]
 373 0038 2269     		ldr	r2, [r4, #16]
 374 003a 0F48     		ldr	r0, .L48+4
 375 003c C2F80032 		str	r3, [r2, #512]
 376 0040 6269     		ldr	r2, [r4, #20]
 377 0042 C2F80432 		str	r3, [r2, #516]
 378 0046 6269     		ldr	r2, [r4, #20]
 379 0048 C2F80032 		str	r3, [r2, #512]
 380 004c 94F91C30 		ldrsb	r3, [r4, #28]
 381 0050 A169     		ldr	r1, [r4, #24]
 382 0052 03F01F05 		and	r5, r3, #31
 383 0056 0122     		movs	r2, #1
 384 0058 AA40     		lsls	r2, r2, r5
 385 005a 5B09     		lsrs	r3, r3, #5
 386 005c 4FF0FF35 		mov	r5, #-1
 387 0060 CD60     		str	r5, [r1, #12]
 388 0062 6125     		movs	r5, #97
 389 0064 8D60     		str	r5, [r1, #8]
 390 0066 40F82320 		str	r2, [r0, r3, lsl #2]
 391 006a A369     		ldr	r3, [r4, #24]
 392 006c 5022     		movs	r2, #80
 393 006e 1A60     		str	r2, [r3]
 394 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 395              	.L49:
 396 0072 00BF     		.align	2
 397              	.L48:
 398 0074 00000000 		.word	SystemCoreClock
 399 0078 00E100E0 		.word	-536813312
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 8


 400              		.size	_ZN9UARTClass4initEmm, .-_ZN9UARTClass4initEmm
 401              		.section	.text._ZN9UARTClass5beginEmNS_9UARTModesE,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	_ZN9UARTClass5beginEmNS_9UARTModesE
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_ZN9UARTClass5beginEmNS_9UARTModesE, %function
 410              	_ZN9UARTClass5beginEmNS_9UARTModesE:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 02F46062 		and	r2, r2, #3584
 415 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 416              		.size	_ZN9UARTClass5beginEmNS_9UARTModesE, .-_ZN9UARTClass5beginEmNS_9UARTModesE
 417              		.section	.text._ZN9UARTClass5beginEm,"ax",%progbits
 418              		.align	1
 419              		.p2align 2,,3
 420              		.global	_ZN9UARTClass5beginEm
 421              		.syntax unified
 422              		.thumb
 423              		.thumb_func
 424              		.fpu fpv4-sp-d16
 425              		.type	_ZN9UARTClass5beginEm, %function
 426              	_ZN9UARTClass5beginEm:
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429              		@ link register save eliminated.
 430 0000 4FF40062 		mov	r2, #2048
 431 0004 FFF7FEBF 		b	_ZN9UARTClass4initEmm
 432              		.size	_ZN9UARTClass5beginEm, .-_ZN9UARTClass5beginEm
 433              		.section	.text._ZN9UARTClass20setInterruptPriorityEm,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.global	_ZN9UARTClass20setInterruptPriorityEm
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv4-sp-d16
 441              		.type	_ZN9UARTClass20setInterruptPriorityEm, %function
 442              	_ZN9UARTClass20setInterruptPriorityEm:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446 0000 90F91C30 		ldrsb	r3, [r0, #28]
 447 0004 01F00F01 		and	r1, r1, #15
 448 0008 002B     		cmp	r3, #0
 449 000a 4FEA0111 		lsl	r1, r1, #4
 450 000e 06DB     		blt	.L55
 451 0010 03F16043 		add	r3, r3, #-536870912
 452 0014 03F56143 		add	r3, r3, #57600
 453 0018 83F80013 		strb	r1, [r3, #768]
 454 001c 7047     		bx	lr
 455              	.L55:
 456 001e 034A     		ldr	r2, .L56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 9


 457 0020 03F00F03 		and	r3, r3, #15
 458 0024 1A44     		add	r2, r2, r3
 459 0026 1176     		strb	r1, [r2, #24]
 460 0028 7047     		bx	lr
 461              	.L57:
 462 002a 00BF     		.align	2
 463              	.L56:
 464 002c FCEC00E0 		.word	-536810244
 465              		.size	_ZN9UARTClass20setInterruptPriorityEm, .-_ZN9UARTClass20setInterruptPriorityEm
 466              		.section	.text._ZN9UARTClass20getInterruptPriorityEv,"ax",%progbits
 467              		.align	1
 468              		.p2align 2,,3
 469              		.global	_ZN9UARTClass20getInterruptPriorityEv
 470              		.syntax unified
 471              		.thumb
 472              		.thumb_func
 473              		.fpu fpv4-sp-d16
 474              		.type	_ZN9UARTClass20getInterruptPriorityEv, %function
 475              	_ZN9UARTClass20getInterruptPriorityEv:
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478              		@ link register save eliminated.
 479 0000 90F91C30 		ldrsb	r3, [r0, #28]
 480 0004 002B     		cmp	r3, #0
 481 0006 07DB     		blt	.L61
 482 0008 03F16043 		add	r3, r3, #-536870912
 483 000c 03F56143 		add	r3, r3, #57600
 484 0010 93F80003 		ldrb	r0, [r3, #768]	@ zero_extendqisi2
 485 0014 0009     		lsrs	r0, r0, #4
 486 0016 7047     		bx	lr
 487              	.L61:
 488 0018 034A     		ldr	r2, .L62
 489 001a 03F00F03 		and	r3, r3, #15
 490 001e 1A44     		add	r2, r2, r3
 491 0020 107E     		ldrb	r0, [r2, #24]	@ zero_extendqisi2
 492 0022 0009     		lsrs	r0, r0, #4
 493 0024 7047     		bx	lr
 494              	.L63:
 495 0026 00BF     		.align	2
 496              	.L62:
 497 0028 FCEC00E0 		.word	-536810244
 498              		.size	_ZN9UARTClass20getInterruptPriorityEv, .-_ZN9UARTClass20getInterruptPriorityEv
 499              		.section	.text._ZN9UARTClass17availableForWriteEv,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.global	_ZN9UARTClass17availableForWriteEv
 503              		.syntax unified
 504              		.thumb
 505              		.thumb_func
 506              		.fpu fpv4-sp-d16
 507              		.type	_ZN9UARTClass17availableForWriteEv, %function
 508              	_ZN9UARTClass17availableForWriteEv:
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              		@ link register save eliminated.
 512 0000 4369     		ldr	r3, [r0, #20]
 513 0002 D3F80002 		ldr	r0, [r3, #512]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 10


 514 0006 D3F80432 		ldr	r3, [r3, #516]
 515 000a 9842     		cmp	r0, r3
 516 000c 2CBF     		ite	cs
 517 000e 03F2FF13 		addwcs	r3, r3, #511
 518 0012 03F1FF33 		addcc	r3, r3, #-1
 519 0016 181A     		subs	r0, r3, r0
 520 0018 7047     		bx	lr
 521              		.size	_ZN9UARTClass17availableForWriteEv, .-_ZN9UARTClass17availableForWriteEv
 522 001a 00BF     		.section	.text._ZN9UARTClass10IrqHandlerEv,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	_ZN9UARTClass10IrqHandlerEv
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	_ZN9UARTClass10IrqHandlerEv, %function
 531              	_ZN9UARTClass10IrqHandlerEv:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534 0000 8369     		ldr	r3, [r0, #24]
 535 0002 70B5     		push	{r4, r5, r6, lr}
 536 0004 5D69     		ldr	r5, [r3, #20]
 537 0006 EA07     		lsls	r2, r5, #31
 538 0008 0446     		mov	r4, r0
 539 000a 17D5     		bpl	.L68
 540 000c 426A     		ldr	r2, [r0, #36]
 541 000e 3249     		ldr	r1, .L92
 542 0010 9E69     		ldr	r6, [r3, #24]
 543 0012 8B5C     		ldrb	r3, [r1, r2]	@ zero_extendqisi2
 544 0014 F6B2     		uxtb	r6, r6
 545 0016 B342     		cmp	r3, r6
 546 0018 49D0     		beq	.L91
 547 001a 0023     		movs	r3, #0
 548 001c 4362     		str	r3, [r0, #36]
 549              	.L71:
 550 001e 2269     		ldr	r2, [r4, #16]
 551 0020 D2F80032 		ldr	r3, [r2, #512]
 552 0024 D2F80412 		ldr	r1, [r2, #516]
 553 0028 0133     		adds	r3, r3, #1
 554 002a C3F30803 		ubfx	r3, r3, #0, #9
 555 002e 8B42     		cmp	r3, r1
 556 0030 42D0     		beq	.L73
 557 0032 D2F80012 		ldr	r1, [r2, #512]
 558 0036 5654     		strb	r6, [r2, r1]
 559 0038 C2F80032 		str	r3, [r2, #512]
 560              	.L68:
 561 003c AB07     		lsls	r3, r5, #30
 562 003e 13D5     		bpl	.L74
 563 0040 D4E90531 		ldrd	r3, r1, [r4, #20]
 564 0044 D3F80402 		ldr	r0, [r3, #516]
 565 0048 D3F80022 		ldr	r2, [r3, #512]
 566 004c 9042     		cmp	r0, r2
 567 004e 2BD0     		beq	.L75
 568 0050 D3F80422 		ldr	r2, [r3, #516]
 569 0054 9A5C     		ldrb	r2, [r3, r2]	@ zero_extendqisi2
 570 0056 D2B2     		uxtb	r2, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 11


 571 0058 CA61     		str	r2, [r1, #28]
 572 005a D3F80422 		ldr	r2, [r3, #516]
 573 005e 0132     		adds	r2, r2, #1
 574 0060 C2F30802 		ubfx	r2, r2, #0, #9
 575 0064 C3F80422 		str	r2, [r3, #516]
 576              	.L74:
 577 0068 15F0600F 		tst	r5, #96
 578 006c 13D0     		beq	.L67
 579 006e A369     		ldr	r3, [r4, #24]
 580 0070 2269     		ldr	r2, [r4, #16]
 581 0072 4FF48071 		mov	r1, #256
 582 0076 1960     		str	r1, [r3]
 583 0078 D2F80032 		ldr	r3, [r2, #512]
 584 007c D2F80412 		ldr	r1, [r2, #516]
 585 0080 0133     		adds	r3, r3, #1
 586 0082 C3F30803 		ubfx	r3, r3, #0, #9
 587 0086 8B42     		cmp	r3, r1
 588 0088 06D0     		beq	.L77
 589 008a D2F80012 		ldr	r1, [r2, #512]
 590 008e 7F20     		movs	r0, #127
 591 0090 5054     		strb	r0, [r2, r1]
 592 0092 C2F80032 		str	r3, [r2, #512]
 593              	.L67:
 594 0096 70BD     		pop	{r4, r5, r6, pc}
 595              	.L77:
 596 0098 D2F80032 		ldr	r3, [r2, #512]
 597 009c 013B     		subs	r3, r3, #1
 598 009e C3F30803 		ubfx	r3, r3, #0, #9
 599 00a2 7F21     		movs	r1, #127
 600 00a4 D154     		strb	r1, [r2, r3]
 601 00a6 70BD     		pop	{r4, r5, r6, pc}
 602              	.L75:
 603 00a8 0223     		movs	r3, #2
 604 00aa CB60     		str	r3, [r1, #12]
 605 00ac DCE7     		b	.L74
 606              	.L91:
 607 00ae 0132     		adds	r2, r2, #1
 608 00b0 022A     		cmp	r2, #2
 609 00b2 09D0     		beq	.L70
 610 00b4 4262     		str	r2, [r0, #36]
 611 00b6 B2E7     		b	.L71
 612              	.L73:
 613 00b8 D2F80032 		ldr	r3, [r2, #512]
 614 00bc 013B     		subs	r3, r3, #1
 615 00be C3F30803 		ubfx	r3, r3, #0, #9
 616 00c2 7F21     		movs	r1, #127
 617 00c4 D154     		strb	r1, [r2, r3]
 618 00c6 B9E7     		b	.L68
 619              	.L70:
 620 00c8 836A     		ldr	r3, [r0, #40]
 621 00ca 0022     		movs	r2, #0
 622 00cc 4262     		str	r2, [r0, #36]
 623 00ce 002B     		cmp	r3, #0
 624 00d0 A5D0     		beq	.L71
 625 00d2 9847     		blx	r3
 626 00d4 A3E7     		b	.L71
 627              	.L93:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 12


 628 00d6 00BF     		.align	2
 629              	.L92:
 630 00d8 00000000 		.word	_ZN9UARTClass12interruptSeqE
 631              		.size	_ZN9UARTClass10IrqHandlerEv, .-_ZN9UARTClass10IrqHandlerEv
 632              		.section	.text._ZN9UARTClass20SetInterruptCallbackEPFvPS_E,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv4-sp-d16
 640              		.type	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E, %function
 641              	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644              		@ link register save eliminated.
 645 0000 0346     		mov	r3, r0
 646 0002 806A     		ldr	r0, [r0, #40]
 647 0004 9962     		str	r1, [r3, #40]
 648 0006 7047     		bx	lr
 649              		.size	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E, .-_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 650              		.global	_ZTV9UARTClass
 651              		.weak	_ZN9UARTClass12interruptSeqE
 652              		.section	.rodata._ZN9UARTClass12interruptSeqE,"aG",%progbits,_ZN9UARTClass12interruptSeqE,comdat
 653              		.align	2
 654              		.type	_ZN9UARTClass12interruptSeqE, %object
 655              		.size	_ZN9UARTClass12interruptSeqE, 2
 656              	_ZN9UARTClass12interruptSeqE:
 657 0000 F0       		.byte	-16
 658 0001 0F       		.byte	15
 659              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 660              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 661              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 662              	_ZL28cpu_irq_prev_interrupt_state:
 663 0000 00       		.space	1
 664              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 665              		.align	2
 666              		.type	_ZL32cpu_irq_critical_section_counter, %object
 667              		.size	_ZL32cpu_irq_critical_section_counter, 4
 668              	_ZL32cpu_irq_critical_section_counter:
 669 0000 00000000 		.space	4
 670              		.section	.rodata._ZTV9UARTClass,"a",%progbits
 671              		.align	2
 672              		.set	.LANCHOR0,. + 0
 673              		.type	_ZTV9UARTClass, %object
 674              		.size	_ZTV9UARTClass, 60
 675              	_ZTV9UARTClass:
 676 0000 00000000 		.word	0
 677 0004 00000000 		.word	0
 678 0008 00000000 		.word	_ZN9UARTClassD1Ev
 679 000c 00000000 		.word	_ZN9UARTClassD0Ev
 680 0010 00000000 		.word	_ZN9UARTClass5writeEh
 681 0014 00000000 		.word	_ZN9UARTClass5writeEPKhj
 682 0018 00000000 		.word	_ZN9UARTClass9availableEv
 683 001c 00000000 		.word	_ZN9UARTClass4readEv
 684 0020 00000000 		.word	_ZN9UARTClass4peekEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXxrGk6.s 			page 13


 685 0024 00000000 		.word	_ZN9UARTClass5flushEv
 686 0028 00000000 		.word	_ZNK9UARTClass8canWriteEv
 687 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 688 0030 00000000 		.word	_ZN9UARTClass5beginEm
 689 0034 00000000 		.word	_ZN9UARTClass3endEv
 690 0038 00000000 		.word	_ZN9UARTClasscvbEv
 691              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
