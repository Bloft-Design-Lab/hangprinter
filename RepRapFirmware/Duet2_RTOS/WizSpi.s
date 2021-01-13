ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 1


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
  13              		.file	"WizSpi.cpp"
  14              		.text
  15              		.section	.text._ZN6WizSpi4InitEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN6WizSpi4InitEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN6WizSpi4InitEv, %function
  24              	_ZN6WizSpi4InitEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 70B5     		push	{r4, r5, r6, lr}
  28 0002 234D     		ldr	r5, .L4
  29 0004 234B     		ldr	r3, .L4+4
  30 0006 2B60     		str	r3, [r5]
  31 0008 0321     		movs	r1, #3
  32 000a 0020     		movs	r0, #0
  33 000c FFF7FEFF 		bl	matrix_set_master_burst_type
  34 0010 4FF48031 		mov	r1, #65536
  35 0014 0020     		movs	r0, #0
  36 0016 FFF7FEFF 		bl	matrix_set_slave_default_master_type
  37 001a 1F4E     		ldr	r6, .L4+8
  38 001c 1F4C     		ldr	r4, .L4+12
  39 001e 4FF44C51 		mov	r1, #13056
  40 0022 0020     		movs	r0, #0
  41 0024 FFF7FEFF 		bl	matrix_set_slave_priority
  42 0028 0821     		movs	r1, #8
  43 002a 0020     		movs	r0, #0
  44 002c FFF7FEFF 		bl	matrix_set_slave_slot_cycle
  45 0030 3046     		mov	r0, r6
  46 0032 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  47 0036 A6F11C00 		sub	r0, r6, #28
  48 003a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  49 003e A6F13800 		sub	r0, r6, #56
  50 0042 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  51 0046 0022     		movs	r2, #0
  52 0048 0421     		movs	r1, #4
  53 004a 0B20     		movs	r0, #11
  54 004c FFF7FEFF 		bl	pinModeDuet
  55 0050 1320     		movs	r0, #19
  56 0052 FFF7FEFF 		bl	pmc_enable_periph_clk
  57 0056 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 2


  58 0058 4FF40071 		mov	r1, #512
  59 005c FFF7FEFF 		bl	pdc_disable_transfer
  60 0060 2868     		ldr	r0, [r5]
  61 0062 40F20221 		movw	r1, #514
  62 0066 FFF7FEFF 		bl	pdc_disable_transfer
  63 006a 0D4B     		ldr	r3, .L4+16
  64 006c 0D48     		ldr	r0, .L4+20
  65 006e 8021     		movs	r1, #128
  66 0070 1122     		movs	r2, #17
  67 0072 2160     		str	r1, [r4]
  68 0074 6260     		str	r2, [r4, #4]
  69 0076 1968     		ldr	r1, [r3]
  70 0078 FFF7FEFF 		bl	spi_calc_baudrate_div
  71 007c 0002     		lsls	r0, r0, #8
  72 007e 00F47F40 		and	r0, r0, #65280
  73 0082 40F00A00 		orr	r0, r0, #10
  74 0086 0123     		movs	r3, #1
  75 0088 2063     		str	r0, [r4, #48]
  76 008a 2360     		str	r3, [r4]
  77 008c 70BD     		pop	{r4, r5, r6, pc}
  78              	.L5:
  79 008e 00BF     		.align	2
  80              	.L4:
  81 0090 00000000 		.word	.LANCHOR0
  82 0094 00810840 		.word	1074299136
  83 0098 88010000 		.word	g_APinDescription+392
  84 009c 00800840 		.word	1074298880
  85 00a0 00000000 		.word	SystemCoreClock
  86 00a4 80C3C901 		.word	30000000
  87              		.size	_ZN6WizSpi4InitEv, .-_ZN6WizSpi4InitEv
  88              		.section	.text._ZN6WizSpi4StopEv,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZN6WizSpi4StopEv
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	_ZN6WizSpi4StopEv, %function
  97              	_ZN6WizSpi4StopEv:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 10B5     		push	{r4, lr}
 101 0002 0A49     		ldr	r1, .L8
 102 0004 0A4C     		ldr	r4, .L8+4
 103 0006 0B4B     		ldr	r3, .L8+8
 104 0008 4FF40020 		mov	r0, #524288
 105 000c C1F88000 		str	r0, [r1, #128]
 106 0010 0222     		movs	r2, #2
 107 0012 2068     		ldr	r0, [r4]
 108 0014 1A60     		str	r2, [r3]
 109 0016 4FF40071 		mov	r1, #512
 110 001a FFF7FEFF 		bl	pdc_disable_transfer
 111 001e 2068     		ldr	r0, [r4]
 112 0020 40F20221 		movw	r1, #514
 113 0024 BDE81040 		pop	{r4, lr}
 114 0028 FFF7FEBF 		b	pdc_disable_transfer
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 3


 115              	.L9:
 116              		.align	2
 117              	.L8:
 118 002c 00E100E0 		.word	-536813312
 119 0030 00000000 		.word	.LANCHOR0
 120 0034 00800840 		.word	1074298880
 121              		.size	_ZN6WizSpi4StopEv, .-_ZN6WizSpi4StopEv
 122              		.section	.text._ZN6WizSpi8AssertSSEv,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_ZN6WizSpi8AssertSSEv
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	_ZN6WizSpi8AssertSSEv, %function
 131              	_ZN6WizSpi8AssertSSEv:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 10B5     		push	{r4, lr}
 135 0002 054C     		ldr	r4, .L12
 136 0004 0E21     		movs	r1, #14
 137 0006 2046     		mov	r0, r4
 138 0008 FFF7FEFF 		bl	spi_set_peripheral_chip_select_value
 139 000c 0021     		movs	r1, #0
 140 000e 0B20     		movs	r0, #11
 141 0010 FFF7FEFF 		bl	digitalWrite
 142 0014 A368     		ldr	r3, [r4, #8]
 143 0016 10BD     		pop	{r4, pc}
 144              	.L13:
 145              		.align	2
 146              	.L12:
 147 0018 00800840 		.word	1074298880
 148              		.size	_ZN6WizSpi8AssertSSEv, .-_ZN6WizSpi8AssertSSEv
 149              		.section	.text._ZN6WizSpi9ReleaseSSEv,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.global	_ZN6WizSpi9ReleaseSSEv
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	_ZN6WizSpi9ReleaseSSEv, %function
 158              	_ZN6WizSpi9ReleaseSSEv:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 0649     		ldr	r1, .L19
 163 0002 43F69923 		movw	r3, #15001
 164 0006 01E0     		b	.L16
 165              	.L18:
 166 0008 013B     		subs	r3, r3, #1
 167 000a 02D0     		beq	.L15
 168              	.L16:
 169 000c 0A69     		ldr	r2, [r1, #16]
 170 000e 9205     		lsls	r2, r2, #22
 171 0010 FAD5     		bpl	.L18
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 4


 172              	.L15:
 173 0012 0121     		movs	r1, #1
 174 0014 0B20     		movs	r0, #11
 175 0016 FFF7FEBF 		b	digitalWrite
 176              	.L20:
 177 001a 00BF     		.align	2
 178              	.L19:
 179 001c 00800840 		.word	1074298880
 180              		.size	_ZN6WizSpi9ReleaseSSEv, .-_ZN6WizSpi9ReleaseSSEv
 181              		.section	.text._ZN6WizSpi11SendAddressEm,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	_ZN6WizSpi11SendAddressEm
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	_ZN6WizSpi11SendAddressEm, %function
 190              	_ZN6WizSpi11SendAddressEm:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 10B4     		push	{r4}
 195 0002 1449     		ldr	r1, .L43
 196 0004 C0F30744 		ubfx	r4, r0, #16, #8
 197 0008 43F69823 		movw	r3, #15000
 198 000c 01E0     		b	.L23
 199              	.L40:
 200 000e 013B     		subs	r3, r3, #1
 201 0010 1DD0     		beq	.L21
 202              	.L23:
 203 0012 0A69     		ldr	r2, [r1, #16]
 204 0014 9207     		lsls	r2, r2, #30
 205 0016 FAD5     		bpl	.L40
 206 0018 CC60     		str	r4, [r1, #12]
 207 001a 8B68     		ldr	r3, [r1, #8]
 208 001c 0D49     		ldr	r1, .L43
 209 001e 43F69823 		movw	r3, #15000
 210 0022 01E0     		b	.L27
 211              	.L41:
 212 0024 013B     		subs	r3, r3, #1
 213 0026 12D0     		beq	.L21
 214              	.L27:
 215 0028 0A69     		ldr	r2, [r1, #16]
 216 002a 9407     		lsls	r4, r2, #30
 217 002c FAD5     		bpl	.L41
 218 002e C0F30723 		ubfx	r3, r0, #8, #8
 219 0032 CB60     		str	r3, [r1, #12]
 220 0034 8B68     		ldr	r3, [r1, #8]
 221 0036 0749     		ldr	r1, .L43
 222 0038 43F69823 		movw	r3, #15000
 223 003c 01E0     		b	.L29
 224              	.L42:
 225 003e 013B     		subs	r3, r3, #1
 226 0040 05D0     		beq	.L21
 227              	.L29:
 228 0042 0A69     		ldr	r2, [r1, #16]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 5


 229 0044 9207     		lsls	r2, r2, #30
 230 0046 FAD5     		bpl	.L42
 231 0048 C0B2     		uxtb	r0, r0
 232 004a C860     		str	r0, [r1, #12]
 233 004c 8B68     		ldr	r3, [r1, #8]
 234              	.L21:
 235 004e 5DF8044B 		ldr	r4, [sp], #4
 236 0052 7047     		bx	lr
 237              	.L44:
 238              		.align	2
 239              	.L43:
 240 0054 00800840 		.word	1074298880
 241              		.size	_ZN6WizSpi11SendAddressEm, .-_ZN6WizSpi11SendAddressEm
 242              		.section	.text._ZN6WizSpi8ReadByteEv,"ax",%progbits
 243              		.align	1
 244              		.p2align 2,,3
 245              		.global	_ZN6WizSpi8ReadByteEv
 246              		.syntax unified
 247              		.thumb
 248              		.thumb_func
 249              		.fpu fpv4-sp-d16
 250              		.type	_ZN6WizSpi8ReadByteEv, %function
 251              	_ZN6WizSpi8ReadByteEv:
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255 0000 1049     		ldr	r1, .L66
 256 0002 8B68     		ldr	r3, [r1, #8]
 257 0004 43F69923 		movw	r3, #15001
 258 0008 01E0     		b	.L48
 259              	.L64:
 260 000a 013B     		subs	r3, r3, #1
 261 000c 18D0     		beq	.L47
 262              	.L48:
 263 000e 0A69     		ldr	r2, [r1, #16]
 264 0010 9205     		lsls	r2, r2, #22
 265 0012 FAD5     		bpl	.L64
 266 0014 0B69     		ldr	r3, [r1, #16]
 267 0016 D807     		lsls	r0, r3, #31
 268 0018 04D5     		bpl	.L49
 269 001a 0A4B     		ldr	r3, .L66
 270              	.L50:
 271 001c 9A68     		ldr	r2, [r3, #8]
 272 001e 1A69     		ldr	r2, [r3, #16]
 273 0020 D107     		lsls	r1, r2, #31
 274 0022 FBD4     		bmi	.L50
 275              	.L49:
 276 0024 0749     		ldr	r1, .L66
 277 0026 FF23     		movs	r3, #255
 278 0028 CB60     		str	r3, [r1, #12]
 279 002a 43F69823 		movw	r3, #15000
 280 002e 01E0     		b	.L52
 281              	.L65:
 282 0030 013B     		subs	r3, r3, #1
 283 0032 05D0     		beq	.L47
 284              	.L52:
 285 0034 0A69     		ldr	r2, [r1, #16]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 6


 286 0036 D207     		lsls	r2, r2, #31
 287 0038 FAD5     		bpl	.L65
 288 003a 8868     		ldr	r0, [r1, #8]
 289 003c C0B2     		uxtb	r0, r0
 290 003e 7047     		bx	lr
 291              	.L47:
 292 0040 0020     		movs	r0, #0
 293 0042 7047     		bx	lr
 294              	.L67:
 295              		.align	2
 296              	.L66:
 297 0044 00800840 		.word	1074298880
 298              		.size	_ZN6WizSpi8ReadByteEv, .-_ZN6WizSpi8ReadByteEv
 299              		.section	.text._ZN6WizSpi9WriteByteEh,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_ZN6WizSpi9WriteByteEh
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZN6WizSpi9WriteByteEh, %function
 308              	_ZN6WizSpi9WriteByteEh:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 312 0000 0549     		ldr	r1, .L75
 313 0002 43F69823 		movw	r3, #15000
 314 0006 01E0     		b	.L70
 315              	.L74:
 316 0008 013B     		subs	r3, r3, #1
 317 000a 04D0     		beq	.L73
 318              	.L70:
 319 000c 0A69     		ldr	r2, [r1, #16]
 320 000e 9207     		lsls	r2, r2, #30
 321 0010 FAD5     		bpl	.L74
 322 0012 C860     		str	r0, [r1, #12]
 323 0014 7047     		bx	lr
 324              	.L73:
 325 0016 7047     		bx	lr
 326              	.L76:
 327              		.align	2
 328              	.L75:
 329 0018 00800840 		.word	1074298880
 330              		.size	_ZN6WizSpi9WriteByteEh, .-_ZN6WizSpi9WriteByteEh
 331              		.section	.text._ZN6WizSpi9ReadBurstEPhj,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	_ZN6WizSpi9ReadBurstEPhj
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu fpv4-sp-d16
 339              		.type	_ZN6WizSpi9ReadBurstEPhj, %function
 340              	_ZN6WizSpi9ReadBurstEPhj:
 341              		@ args = 0, pretend = 0, frame = 8
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 7


 343 0000 30B5     		push	{r4, r5, lr}
 344 0002 83B0     		sub	sp, sp, #12
 345 0004 0029     		cmp	r1, #0
 346 0006 3CD0     		beq	.L87
 347 0008 234C     		ldr	r4, .L101
 348 000a 43F69923 		movw	r3, #15001
 349 000e 01E0     		b	.L80
 350              	.L99:
 351 0010 013B     		subs	r3, r3, #1
 352 0012 3FD0     		beq	.L98
 353              	.L80:
 354 0014 2269     		ldr	r2, [r4, #16]
 355 0016 9205     		lsls	r2, r2, #22
 356 0018 FAD5     		bpl	.L99
 357 001a 2369     		ldr	r3, [r4, #16]
 358 001c DD07     		lsls	r5, r3, #31
 359 001e 04D5     		bpl	.L81
 360 0020 1D4B     		ldr	r3, .L101
 361              	.L82:
 362 0022 9A68     		ldr	r2, [r3, #8]
 363 0024 1A69     		ldr	r2, [r3, #16]
 364 0026 D407     		lsls	r4, r2, #31
 365 0028 FBD4     		bmi	.L82
 366              	.L81:
 367 002a 1C4D     		ldr	r5, .L101+4
 368 002c 0090     		str	r0, [sp]
 369 002e 0191     		str	r1, [sp, #4]
 370 0030 2868     		ldr	r0, [r5]
 371 0032 6946     		mov	r1, sp
 372 0034 0022     		movs	r2, #0
 373 0036 FFF7FEFF 		bl	pdc_rx_init
 374 003a 0022     		movs	r2, #0
 375 003c 6946     		mov	r1, sp
 376 003e 2868     		ldr	r0, [r5]
 377 0040 FFF7FEFF 		bl	pdc_tx_init
 378 0044 40F20111 		movw	r1, #257
 379 0048 2868     		ldr	r0, [r5]
 380 004a FFF7FEFF 		bl	pdc_enable_transfer
 381 004e 124A     		ldr	r2, .L101
 382 0050 1369     		ldr	r3, [r2, #16]
 383 0052 D906     		lsls	r1, r3, #27
 384 0054 48BF     		it	mi
 385 0056 0024     		movmi	r4, #0
 386 0058 0BD4     		bmi	.L84
 387 005a 43F69824 		movw	r4, #15000
 388 005e 00E0     		b	.L83
 389              	.L86:
 390 0060 9CB1     		cbz	r4, .L100
 391              	.L83:
 392 0062 1369     		ldr	r3, [r2, #16]
 393 0064 DB06     		lsls	r3, r3, #27
 394 0066 04F1FF34 		add	r4, r4, #-1
 395 006a F9D5     		bpl	.L86
 396 006c B4FA84F4 		clz	r4, r4
 397 0070 6409     		lsrs	r4, r4, #5
 398              	.L84:
 399 0072 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 8


 400 0074 40F20221 		movw	r1, #514
 401 0078 FFF7FEFF 		bl	pdc_disable_transfer
 402              	.L96:
 403 007c 2046     		mov	r0, r4
 404 007e 03B0     		add	sp, sp, #12
 405              		@ sp needed
 406 0080 30BD     		pop	{r4, r5, pc}
 407              	.L87:
 408 0082 0C46     		mov	r4, r1
 409 0084 2046     		mov	r0, r4
 410 0086 03B0     		add	sp, sp, #12
 411              		@ sp needed
 412 0088 30BD     		pop	{r4, r5, pc}
 413              	.L100:
 414 008a 2868     		ldr	r0, [r5]
 415 008c 40F20221 		movw	r1, #514
 416 0090 FFF7FEFF 		bl	pdc_disable_transfer
 417              	.L98:
 418 0094 0124     		movs	r4, #1
 419 0096 F1E7     		b	.L96
 420              	.L102:
 421              		.align	2
 422              	.L101:
 423 0098 00800840 		.word	1074298880
 424 009c 00000000 		.word	.LANCHOR0
 425              		.size	_ZN6WizSpi9ReadBurstEPhj, .-_ZN6WizSpi9ReadBurstEPhj
 426              		.section	.text._ZN6WizSpi9SendBurstEPKhj,"ax",%progbits
 427              		.align	1
 428              		.p2align 2,,3
 429              		.global	_ZN6WizSpi9SendBurstEPKhj
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu fpv4-sp-d16
 434              		.type	_ZN6WizSpi9SendBurstEPKhj, %function
 435              	_ZN6WizSpi9SendBurstEPKhj:
 436              		@ args = 0, pretend = 0, frame = 8
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438 0000 30B5     		push	{r4, r5, lr}
 439 0002 83B0     		sub	sp, sp, #12
 440 0004 19B9     		cbnz	r1, .L114
 441 0006 0C46     		mov	r4, r1
 442              	.L112:
 443 0008 2046     		mov	r0, r4
 444 000a 03B0     		add	sp, sp, #12
 445              		@ sp needed
 446 000c 30BD     		pop	{r4, r5, pc}
 447              	.L114:
 448 000e 174D     		ldr	r5, .L116
 449 0010 0090     		str	r0, [sp]
 450 0012 0022     		movs	r2, #0
 451 0014 2868     		ldr	r0, [r5]
 452 0016 0191     		str	r1, [sp, #4]
 453 0018 6946     		mov	r1, sp
 454 001a FFF7FEFF 		bl	pdc_tx_init
 455 001e 4FF48071 		mov	r1, #256
 456 0022 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 9


 457 0024 FFF7FEFF 		bl	pdc_enable_transfer
 458 0028 114A     		ldr	r2, .L116+4
 459 002a 1369     		ldr	r3, [r2, #16]
 460 002c 9906     		lsls	r1, r3, #26
 461 002e 48BF     		it	mi
 462 0030 0024     		movmi	r4, #0
 463 0032 0BD4     		bmi	.L106
 464 0034 43F69824 		movw	r4, #15000
 465 0038 00E0     		b	.L105
 466              	.L108:
 467 003a 7CB1     		cbz	r4, .L115
 468              	.L105:
 469 003c 1369     		ldr	r3, [r2, #16]
 470 003e 9B06     		lsls	r3, r3, #26
 471 0040 04F1FF34 		add	r4, r4, #-1
 472 0044 F9D5     		bpl	.L108
 473 0046 B4FA84F4 		clz	r4, r4
 474 004a 6409     		lsrs	r4, r4, #5
 475              	.L106:
 476 004c 2868     		ldr	r0, [r5]
 477 004e 4FF40071 		mov	r1, #512
 478 0052 FFF7FEFF 		bl	pdc_disable_transfer
 479 0056 2046     		mov	r0, r4
 480 0058 03B0     		add	sp, sp, #12
 481              		@ sp needed
 482 005a 30BD     		pop	{r4, r5, pc}
 483              	.L115:
 484 005c 2868     		ldr	r0, [r5]
 485 005e 4FF40071 		mov	r1, #512
 486 0062 FFF7FEFF 		bl	pdc_disable_transfer
 487 0066 0124     		movs	r4, #1
 488 0068 CEE7     		b	.L112
 489              	.L117:
 490 006a 00BF     		.align	2
 491              	.L116:
 492 006c 00000000 		.word	.LANCHOR0
 493 0070 00800840 		.word	1074298880
 494              		.size	_ZN6WizSpi9SendBurstEPKhj, .-_ZN6WizSpi9SendBurstEPKhj
 495              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 496              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 497              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 498              	_ZL28cpu_irq_prev_interrupt_state:
 499 0000 00       		.space	1
 500              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 501              		.align	2
 502              		.type	_ZL32cpu_irq_critical_section_counter, %object
 503              		.size	_ZL32cpu_irq_critical_section_counter, 4
 504              	_ZL32cpu_irq_critical_section_counter:
 505 0000 00000000 		.space	4
 506              		.section	.bss._ZL7spi_pdc,"aw",%nobits
 507              		.align	2
 508              		.set	.LANCHOR0,. + 0
 509              		.type	_ZL7spi_pdc, %object
 510              		.size	_ZL7spi_pdc, 4
 511              	_ZL7spi_pdc:
 512 0000 00000000 		.space	4
 513              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccjkKsqf.s 			page 10


