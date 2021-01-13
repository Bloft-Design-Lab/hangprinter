ARM GAS  /tmp/ccQOTCIp.s 			page 1


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
  14              		.section	.text._ZL15spi_dma_disablev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZL15spi_dma_disablev, %function
  22              	_ZL15spi_dma_disablev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 10B5     		push	{r4, lr}
  26 0002 064C     		ldr	r4, .L4
  27 0004 4FF40071 		mov	r1, #512
  28 0008 2068     		ldr	r0, [r4]
  29 000a FFF7FEFF 		bl	pdc_disable_transfer
  30 000e 2068     		ldr	r0, [r4]
  31 0010 40F20221 		movw	r1, #514
  32 0014 BDE81040 		pop	{r4, lr}
  33 0018 FFF7FEBF 		b	pdc_disable_transfer
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 001c 00000000 		.word	.LANCHOR0
  38              		.size	_ZL15spi_dma_disablev, .-_ZL15spi_dma_disablev
  39              		.section	.text._ZN6WizSpi4InitEv,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	_ZN6WizSpi4InitEv
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	_ZN6WizSpi4InitEv, %function
  48              	_ZN6WizSpi4InitEv:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51 0000 38B5     		push	{r3, r4, r5, lr}
  52 0002 1F4B     		ldr	r3, .L8
  53 0004 1F4A     		ldr	r2, .L8+4
  54 0006 1A60     		str	r2, [r3]
  55 0008 0321     		movs	r1, #3
  56 000a 0020     		movs	r0, #0
  57 000c FFF7FEFF 		bl	matrix_set_master_burst_type
ARM GAS  /tmp/ccQOTCIp.s 			page 2


  58 0010 4FF48031 		mov	r1, #65536
  59 0014 0020     		movs	r0, #0
  60 0016 FFF7FEFF 		bl	matrix_set_slave_default_master_type
  61 001a 1B4D     		ldr	r5, .L8+8
  62 001c 1B4C     		ldr	r4, .L8+12
  63 001e 4FF44C51 		mov	r1, #13056
  64 0022 0020     		movs	r0, #0
  65 0024 FFF7FEFF 		bl	matrix_set_slave_priority
  66 0028 0821     		movs	r1, #8
  67 002a 0020     		movs	r0, #0
  68 002c FFF7FEFF 		bl	matrix_set_slave_slot_cycle
  69 0030 2846     		mov	r0, r5
  70 0032 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  71 0036 A5F11C00 		sub	r0, r5, #28
  72 003a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  73 003e A5F13800 		sub	r0, r5, #56
  74 0042 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  75 0046 0022     		movs	r2, #0
  76 0048 0421     		movs	r1, #4
  77 004a 0B20     		movs	r0, #11
  78 004c FFF7FEFF 		bl	pinModeDuet
  79 0050 1320     		movs	r0, #19
  80 0052 FFF7FEFF 		bl	pmc_enable_periph_clk
  81 0056 FFF7FEFF 		bl	_ZL15spi_dma_disablev
  82 005a 0D4B     		ldr	r3, .L8+16
  83 005c 0D48     		ldr	r0, .L8+20
  84 005e 8021     		movs	r1, #128
  85 0060 1122     		movs	r2, #17
  86 0062 2160     		str	r1, [r4]
  87 0064 6260     		str	r2, [r4, #4]
  88 0066 1968     		ldr	r1, [r3]
  89 0068 FFF7FEFF 		bl	spi_calc_baudrate_div
  90 006c 0002     		lsls	r0, r0, #8
  91 006e 00F47F40 		and	r0, r0, #65280
  92 0072 40F00A00 		orr	r0, r0, #10
  93 0076 0123     		movs	r3, #1
  94 0078 2063     		str	r0, [r4, #48]
  95 007a 2360     		str	r3, [r4]
  96 007c 38BD     		pop	{r3, r4, r5, pc}
  97              	.L9:
  98 007e 00BF     		.align	2
  99              	.L8:
 100 0080 00000000 		.word	.LANCHOR0
 101 0084 00810840 		.word	1074299136
 102 0088 88010000 		.word	g_APinDescription+392
 103 008c 00800840 		.word	1074298880
 104 0090 00000000 		.word	SystemCoreClock
 105 0094 80C3C901 		.word	30000000
 106              		.size	_ZN6WizSpi4InitEv, .-_ZN6WizSpi4InitEv
 107              		.section	.text._ZN6WizSpi4StopEv,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_ZN6WizSpi4StopEv
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccQOTCIp.s 			page 3


 115              		.type	_ZN6WizSpi4StopEv, %function
 116              	_ZN6WizSpi4StopEv:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119 0000 10B5     		push	{r4, lr}
 120 0002 0848     		ldr	r0, .L12
 121 0004 084A     		ldr	r2, .L12+4
 122 0006 094B     		ldr	r3, .L12+8
 123 0008 4FF40024 		mov	r4, #524288
 124 000c C0F88040 		str	r4, [r0, #128]
 125 0010 0221     		movs	r1, #2
 126 0012 1160     		str	r1, [r2]
 127 0014 1868     		ldr	r0, [r3]
 128 0016 FFF7FEFF 		bl	pdc_read_rx_counter
 129 001a BDE81040 		pop	{r4, lr}
 130 001e FFF7FEBF 		b	_ZL15spi_dma_disablev
 131              	.L13:
 132 0022 00BF     		.align	2
 133              	.L12:
 134 0024 00E100E0 		.word	-536813312
 135 0028 00800840 		.word	1074298880
 136 002c 00000000 		.word	.LANCHOR0
 137              		.size	_ZN6WizSpi4StopEv, .-_ZN6WizSpi4StopEv
 138              		.section	.text._ZN6WizSpi8AssertSSEv,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	_ZN6WizSpi8AssertSSEv
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	_ZN6WizSpi8AssertSSEv, %function
 147              	_ZN6WizSpi8AssertSSEv:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150 0000 10B5     		push	{r4, lr}
 151 0002 054C     		ldr	r4, .L16
 152 0004 0E21     		movs	r1, #14
 153 0006 2046     		mov	r0, r4
 154 0008 FFF7FEFF 		bl	spi_set_peripheral_chip_select_value
 155 000c 0021     		movs	r1, #0
 156 000e 0B20     		movs	r0, #11
 157 0010 FFF7FEFF 		bl	digitalWrite
 158 0014 A368     		ldr	r3, [r4, #8]
 159 0016 10BD     		pop	{r4, pc}
 160              	.L17:
 161              		.align	2
 162              	.L16:
 163 0018 00800840 		.word	1074298880
 164              		.size	_ZN6WizSpi8AssertSSEv, .-_ZN6WizSpi8AssertSSEv
 165              		.section	.text._ZN6WizSpi9ReleaseSSEv,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	_ZN6WizSpi9ReleaseSSEv
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/ccQOTCIp.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	_ZN6WizSpi9ReleaseSSEv, %function
 174              	_ZN6WizSpi9ReleaseSSEv:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 0649     		ldr	r1, .L23
 179 0002 43F69923 		movw	r3, #15001
 180 0006 01E0     		b	.L20
 181              	.L22:
 182 0008 013B     		subs	r3, r3, #1
 183 000a 02D0     		beq	.L19
 184              	.L20:
 185 000c 0A69     		ldr	r2, [r1, #16]
 186 000e 9205     		lsls	r2, r2, #22
 187 0010 FAD5     		bpl	.L22
 188              	.L19:
 189 0012 0121     		movs	r1, #1
 190 0014 0B20     		movs	r0, #11
 191 0016 FFF7FEBF 		b	digitalWrite
 192              	.L24:
 193 001a 00BF     		.align	2
 194              	.L23:
 195 001c 00800840 		.word	1074298880
 196              		.size	_ZN6WizSpi9ReleaseSSEv, .-_ZN6WizSpi9ReleaseSSEv
 197              		.section	.text._ZN6WizSpi11SendAddressEm,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZN6WizSpi11SendAddressEm
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZN6WizSpi11SendAddressEm, %function
 206              	_ZN6WizSpi11SendAddressEm:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 10B4     		push	{r4}
 211 0002 1449     		ldr	r1, .L47
 212 0004 C0F30744 		ubfx	r4, r0, #16, #8
 213 0008 43F69823 		movw	r3, #15000
 214 000c 01E0     		b	.L27
 215              	.L44:
 216 000e 013B     		subs	r3, r3, #1
 217 0010 1DD0     		beq	.L25
 218              	.L27:
 219 0012 0A69     		ldr	r2, [r1, #16]
 220 0014 9207     		lsls	r2, r2, #30
 221 0016 FAD5     		bpl	.L44
 222 0018 CC60     		str	r4, [r1, #12]
 223 001a 8B68     		ldr	r3, [r1, #8]
 224 001c 0D49     		ldr	r1, .L47
 225 001e 43F69823 		movw	r3, #15000
 226 0022 01E0     		b	.L31
 227              	.L45:
 228 0024 013B     		subs	r3, r3, #1
ARM GAS  /tmp/ccQOTCIp.s 			page 5


 229 0026 12D0     		beq	.L25
 230              	.L31:
 231 0028 0A69     		ldr	r2, [r1, #16]
 232 002a 9407     		lsls	r4, r2, #30
 233 002c FAD5     		bpl	.L45
 234 002e C0F30723 		ubfx	r3, r0, #8, #8
 235 0032 CB60     		str	r3, [r1, #12]
 236 0034 8B68     		ldr	r3, [r1, #8]
 237 0036 0749     		ldr	r1, .L47
 238 0038 43F69823 		movw	r3, #15000
 239 003c 01E0     		b	.L33
 240              	.L46:
 241 003e 013B     		subs	r3, r3, #1
 242 0040 05D0     		beq	.L25
 243              	.L33:
 244 0042 0A69     		ldr	r2, [r1, #16]
 245 0044 9207     		lsls	r2, r2, #30
 246 0046 FAD5     		bpl	.L46
 247 0048 C0B2     		uxtb	r0, r0
 248 004a C860     		str	r0, [r1, #12]
 249 004c 8B68     		ldr	r3, [r1, #8]
 250              	.L25:
 251 004e 5DF8044B 		ldr	r4, [sp], #4
 252 0052 7047     		bx	lr
 253              	.L48:
 254              		.align	2
 255              	.L47:
 256 0054 00800840 		.word	1074298880
 257              		.size	_ZN6WizSpi11SendAddressEm, .-_ZN6WizSpi11SendAddressEm
 258              		.section	.text._ZN6WizSpi8ReadByteEv,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_ZN6WizSpi8ReadByteEv
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_ZN6WizSpi8ReadByteEv, %function
 267              	_ZN6WizSpi8ReadByteEv:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 1049     		ldr	r1, .L70
 272 0002 8B68     		ldr	r3, [r1, #8]
 273 0004 43F69923 		movw	r3, #15001
 274 0008 01E0     		b	.L52
 275              	.L68:
 276 000a 013B     		subs	r3, r3, #1
 277 000c 18D0     		beq	.L51
 278              	.L52:
 279 000e 0A69     		ldr	r2, [r1, #16]
 280 0010 9205     		lsls	r2, r2, #22
 281 0012 FAD5     		bpl	.L68
 282 0014 0B69     		ldr	r3, [r1, #16]
 283 0016 D807     		lsls	r0, r3, #31
 284 0018 04D5     		bpl	.L53
 285 001a 0A4B     		ldr	r3, .L70
ARM GAS  /tmp/ccQOTCIp.s 			page 6


 286              	.L54:
 287 001c 9A68     		ldr	r2, [r3, #8]
 288 001e 1A69     		ldr	r2, [r3, #16]
 289 0020 D107     		lsls	r1, r2, #31
 290 0022 FBD4     		bmi	.L54
 291              	.L53:
 292 0024 0749     		ldr	r1, .L70
 293 0026 FF23     		movs	r3, #255
 294 0028 CB60     		str	r3, [r1, #12]
 295 002a 43F69823 		movw	r3, #15000
 296 002e 01E0     		b	.L56
 297              	.L69:
 298 0030 013B     		subs	r3, r3, #1
 299 0032 05D0     		beq	.L51
 300              	.L56:
 301 0034 0A69     		ldr	r2, [r1, #16]
 302 0036 D207     		lsls	r2, r2, #31
 303 0038 FAD5     		bpl	.L69
 304 003a 8868     		ldr	r0, [r1, #8]
 305 003c C0B2     		uxtb	r0, r0
 306 003e 7047     		bx	lr
 307              	.L51:
 308 0040 0020     		movs	r0, #0
 309 0042 7047     		bx	lr
 310              	.L71:
 311              		.align	2
 312              	.L70:
 313 0044 00800840 		.word	1074298880
 314              		.size	_ZN6WizSpi8ReadByteEv, .-_ZN6WizSpi8ReadByteEv
 315              		.section	.text._ZN6WizSpi9WriteByteEh,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	_ZN6WizSpi9WriteByteEh
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	_ZN6WizSpi9WriteByteEh, %function
 324              	_ZN6WizSpi9WriteByteEh:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 0549     		ldr	r1, .L79
 329 0002 43F69823 		movw	r3, #15000
 330 0006 01E0     		b	.L74
 331              	.L78:
 332 0008 013B     		subs	r3, r3, #1
 333 000a 04D0     		beq	.L77
 334              	.L74:
 335 000c 0A69     		ldr	r2, [r1, #16]
 336 000e 9207     		lsls	r2, r2, #30
 337 0010 FAD5     		bpl	.L78
 338 0012 C860     		str	r0, [r1, #12]
 339 0014 7047     		bx	lr
 340              	.L77:
 341 0016 7047     		bx	lr
 342              	.L80:
ARM GAS  /tmp/ccQOTCIp.s 			page 7


 343              		.align	2
 344              	.L79:
 345 0018 00800840 		.word	1074298880
 346              		.size	_ZN6WizSpi9WriteByteEh, .-_ZN6WizSpi9WriteByteEh
 347              		.section	.text._ZN6WizSpi9ReadBurstEPhj,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	_ZN6WizSpi9ReadBurstEPhj
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu fpv4-sp-d16
 355              		.type	_ZN6WizSpi9ReadBurstEPhj, %function
 356              	_ZN6WizSpi9ReadBurstEPhj:
 357              		@ args = 0, pretend = 0, frame = 8
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359 0000 0029     		cmp	r1, #0
 360 0002 3DD0     		beq	.L91
 361 0004 30B5     		push	{r4, r5, lr}
 362 0006 43F69923 		movw	r3, #15001
 363 000a 83B0     		sub	sp, sp, #12
 364 000c 214C     		ldr	r4, .L107
 365 000e 01E0     		b	.L84
 366              	.L105:
 367 0010 013B     		subs	r3, r3, #1
 368 0012 3CD0     		beq	.L104
 369              	.L84:
 370 0014 2269     		ldr	r2, [r4, #16]
 371 0016 9505     		lsls	r5, r2, #22
 372 0018 FAD5     		bpl	.L105
 373 001a 2369     		ldr	r3, [r4, #16]
 374 001c DC07     		lsls	r4, r3, #31
 375 001e 04D5     		bpl	.L85
 376 0020 1C4B     		ldr	r3, .L107
 377              	.L86:
 378 0022 9A68     		ldr	r2, [r3, #8]
 379 0024 1A69     		ldr	r2, [r3, #16]
 380 0026 D207     		lsls	r2, r2, #31
 381 0028 FBD4     		bmi	.L86
 382              	.L85:
 383 002a 1B4D     		ldr	r5, .L107+4
 384 002c 0090     		str	r0, [sp]
 385 002e 0191     		str	r1, [sp, #4]
 386 0030 2868     		ldr	r0, [r5]
 387 0032 6946     		mov	r1, sp
 388 0034 0022     		movs	r2, #0
 389 0036 FFF7FEFF 		bl	pdc_rx_init
 390 003a 6946     		mov	r1, sp
 391 003c 2868     		ldr	r0, [r5]
 392 003e 0022     		movs	r2, #0
 393 0040 FFF7FEFF 		bl	pdc_tx_init
 394 0044 2868     		ldr	r0, [r5]
 395 0046 40F20111 		movw	r1, #257
 396 004a FFF7FEFF 		bl	pdc_enable_transfer
 397              	.L87:
 398 004e 2868     		ldr	r0, [r5]
 399 0050 FFF7FEFF 		bl	pdc_read_tx_counter
ARM GAS  /tmp/ccQOTCIp.s 			page 8


 400 0054 0028     		cmp	r0, #0
 401 0056 FAD1     		bne	.L87
 402 0058 43F69824 		movw	r4, #15000
 403 005c 01E0     		b	.L90
 404              	.L106:
 405 005e 8CB1     		cbz	r4, .L89
 406 0060 013C     		subs	r4, r4, #1
 407              	.L90:
 408 0062 2868     		ldr	r0, [r5]
 409 0064 FFF7FEFF 		bl	pdc_read_rx_counter
 410 0068 0028     		cmp	r0, #0
 411 006a F8D1     		bne	.L106
 412 006c 2868     		ldr	r0, [r5]
 413 006e 40F20221 		movw	r1, #514
 414 0072 FFF7FEFF 		bl	pdc_disable_transfer
 415 0076 B4FA84F0 		clz	r0, r4
 416 007a 4009     		lsrs	r0, r0, #5
 417              	.L99:
 418 007c 03B0     		add	sp, sp, #12
 419              		@ sp needed
 420 007e 30BD     		pop	{r4, r5, pc}
 421              	.L91:
 422 0080 0846     		mov	r0, r1
 423 0082 7047     		bx	lr
 424              	.L89:
 425 0084 2868     		ldr	r0, [r5]
 426 0086 40F20221 		movw	r1, #514
 427 008a FFF7FEFF 		bl	pdc_disable_transfer
 428              	.L104:
 429 008e 0120     		movs	r0, #1
 430 0090 F4E7     		b	.L99
 431              	.L108:
 432 0092 00BF     		.align	2
 433              	.L107:
 434 0094 00800840 		.word	1074298880
 435 0098 00000000 		.word	.LANCHOR0
 436              		.size	_ZN6WizSpi9ReadBurstEPhj, .-_ZN6WizSpi9ReadBurstEPhj
 437              		.section	.text._ZN6WizSpi9SendBurstEPKhj,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	_ZN6WizSpi9SendBurstEPKhj
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu fpv4-sp-d16
 445              		.type	_ZN6WizSpi9SendBurstEPKhj, %function
 446              	_ZN6WizSpi9SendBurstEPKhj:
 447              		@ args = 0, pretend = 0, frame = 8
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449 0000 30B5     		push	{r4, r5, lr}
 450 0002 0E4D     		ldr	r5, .L113
 451 0004 83B0     		sub	sp, sp, #12
 452 0006 CDE90001 		strd	r0, r1, [sp]
 453 000a 0022     		movs	r2, #0
 454 000c 2868     		ldr	r0, [r5]
 455 000e 6946     		mov	r1, sp
 456 0010 FFF7FEFF 		bl	pdc_tx_init
ARM GAS  /tmp/ccQOTCIp.s 			page 9


 457 0014 2868     		ldr	r0, [r5]
 458 0016 4FF48071 		mov	r1, #256
 459 001a FFF7FEFF 		bl	pdc_enable_transfer
 460              	.L110:
 461 001e 2868     		ldr	r0, [r5]
 462 0020 FFF7FEFF 		bl	pdc_read_tx_counter
 463 0024 0446     		mov	r4, r0
 464 0026 0028     		cmp	r0, #0
 465 0028 F9D1     		bne	.L110
 466 002a 2868     		ldr	r0, [r5]
 467 002c 4FF40071 		mov	r1, #512
 468 0030 FFF7FEFF 		bl	pdc_disable_transfer
 469 0034 2046     		mov	r0, r4
 470 0036 03B0     		add	sp, sp, #12
 471              		@ sp needed
 472 0038 30BD     		pop	{r4, r5, pc}
 473              	.L114:
 474 003a 00BF     		.align	2
 475              	.L113:
 476 003c 00000000 		.word	.LANCHOR0
 477              		.size	_ZN6WizSpi9SendBurstEPKhj, .-_ZN6WizSpi9SendBurstEPKhj
 478              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 479              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 480              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 481              	_ZL28cpu_irq_prev_interrupt_state:
 482 0000 00       		.space	1
 483              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 484              		.align	2
 485              		.type	_ZL32cpu_irq_critical_section_counter, %object
 486              		.size	_ZL32cpu_irq_critical_section_counter, 4
 487              	_ZL32cpu_irq_critical_section_counter:
 488 0000 00000000 		.space	4
 489              		.section	.bss._ZL7spi_pdc,"aw",%nobits
 490              		.align	2
 491              		.set	.LANCHOR0,. + 0
 492              		.type	_ZL7spi_pdc, %object
 493              		.size	_ZL7spi_pdc, 4
 494              	_ZL7spi_pdc:
 495 0000 00000000 		.space	4
 496              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
