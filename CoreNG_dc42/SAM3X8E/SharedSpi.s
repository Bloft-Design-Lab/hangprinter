ARM GAS  /tmp/ccAWTHYD.s 			page 1


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
  11              		.file	"SharedSpi.cpp"
  12              		.section	.text.sspi_master_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	sspi_master_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	sspi_master_init, %function
  21              	sspi_master_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
  26 0004 144D     		ldr	r5, .L11
  27 0006 002B     		cmp	r3, #0
  28 0008 0E46     		mov	r6, r1
  29 000a 0446     		mov	r4, r0
  30 000c 18BF     		it	ne
  31 000e 0321     		movne	r1, #3
  32 0010 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  33 0012 08BF     		it	eq
  34 0014 0421     		moveq	r1, #4
  35 0016 0022     		movs	r2, #0
  36 0018 FFF7FEFF 		bl	pinModeDuet
  37 001c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
  38 001e 2BB1     		cbz	r3, .L10
  39              	.L3:
  40 0020 102E     		cmp	r6, #16
  41 0022 14BF     		ite	ne
  42 0024 0023     		movne	r3, #0
  43 0026 8023     		moveq	r3, #128
  44 0028 A370     		strb	r3, [r4, #2]
  45 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  46              	.L10:
  47 002c 0B48     		ldr	r0, .L11+4
  48 002e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  49 0032 0B48     		ldr	r0, .L11+8
  50 0034 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  51 0038 0A48     		ldr	r0, .L11+12
  52 003a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  53 003e 1820     		movs	r0, #24
  54 0040 FFF7FEFF 		bl	pmc_enable_periph_clk
  55 0044 0227     		movs	r7, #2
  56 0046 8020     		movs	r0, #128
  57 0048 1121     		movs	r1, #17
ARM GAS  /tmp/ccAWTHYD.s 			page 2


  58 004a 0122     		movs	r2, #1
  59 004c 064B     		ldr	r3, .L11+16
  60 004e 1F60     		str	r7, [r3]
  61 0050 1860     		str	r0, [r3]
  62 0052 5960     		str	r1, [r3, #4]
  63 0054 2A70     		strb	r2, [r5]
  64 0056 E3E7     		b	.L3
  65              	.L12:
  66              		.align	2
  67              	.L11:
  68 0058 00000000 		.word	.LANCHOR0
  69 005c 50080000 		.word	g_APinDescription+2128
  70 0060 34080000 		.word	g_APinDescription+2100
  71 0064 18080000 		.word	g_APinDescription+2072
  72 0068 00800040 		.word	1073774592
  73              		.size	sspi_master_init, .-sspi_master_init
  74              		.section	.text.sspi_master_setup_device,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	sspi_master_setup_device
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu softvfp
  82              		.type	sspi_master_setup_device, %function
  83              	sspi_master_setup_device:
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86 0000 38B5     		push	{r3, r4, r5, lr}
  87 0002 1121     		movs	r1, #17
  88 0004 8025     		movs	r5, #128
  89 0006 0E4B     		ldr	r3, .L20
  90 0008 0E4A     		ldr	r2, .L20+4
  91 000a 1D60     		str	r5, [r3]
  92 000c 5960     		str	r1, [r3, #4]
  93 000e 0446     		mov	r4, r0
  94 0010 1168     		ldr	r1, [r2]
  95 0012 4068     		ldr	r0, [r0, #4]
  96 0014 FFF7FEFF 		bl	spi_calc_baudrate_div
  97 0018 A278     		ldrb	r2, [r4, #2]	@ zero_extendqisi2
  98 001a E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
  99 001c 0002     		lsls	r0, r0, #8
 100 001e 00F47F40 		and	r0, r0, #65280
 101 0022 1043     		orrs	r0, r0, r2
 102 0024 DA07     		lsls	r2, r3, #31
 103 0026 4FF00102 		mov	r2, #1
 104 002a 58BF     		it	pl
 105 002c 40F00200 		orrpl	r0, r0, #2
 106 0030 9B07     		lsls	r3, r3, #30
 107 0032 034B     		ldr	r3, .L20
 108 0034 48BF     		it	mi
 109 0036 40F00100 		orrmi	r0, r0, #1
 110 003a D863     		str	r0, [r3, #60]
 111 003c 1A60     		str	r2, [r3]
 112 003e 38BD     		pop	{r3, r4, r5, pc}
 113              	.L21:
 114              		.align	2
ARM GAS  /tmp/ccAWTHYD.s 			page 3


 115              	.L20:
 116 0040 00800040 		.word	1073774592
 117 0044 00000000 		.word	SystemCoreClock
 118              		.size	sspi_master_setup_device, .-sspi_master_setup_device
 119              		.section	.text.sspi_select_device,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	sspi_select_device
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu softvfp
 127              		.type	sspi_select_device, %function
 128              	sspi_select_device:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 10B5     		push	{r4, lr}
 132 0002 0446     		mov	r4, r0
 133 0004 0721     		movs	r1, #7
 134 0006 0448     		ldr	r0, .L24
 135 0008 FFF7FEFF 		bl	spi_set_peripheral_chip_select_value
 136 000c 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
 137 000e 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 138 0010 BDE81040 		pop	{r4, lr}
 139 0014 FFF7FEBF 		b	digitalWrite
 140              	.L25:
 141              		.align	2
 142              	.L24:
 143 0018 00800040 		.word	1073774592
 144              		.size	sspi_select_device, .-sspi_select_device
 145              		.section	.text.sspi_deselect_device,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	sspi_deselect_device
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu softvfp
 153              		.type	sspi_deselect_device, %function
 154              	sspi_deselect_device:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 43F69923 		movw	r3, #15001
 159 0004 0649     		ldr	r1, .L31
 160 0006 01E0     		b	.L28
 161              	.L30:
 162 0008 013B     		subs	r3, r3, #1
 163 000a 02D0     		beq	.L27
 164              	.L28:
 165 000c 0A69     		ldr	r2, [r1, #16]
 166 000e 9205     		lsls	r2, r2, #22
 167 0010 FAD5     		bpl	.L30
 168              	.L27:
 169 0012 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 170 0014 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 171 0016 81F00101 		eor	r1, r1, #1
ARM GAS  /tmp/ccAWTHYD.s 			page 4


 172 001a FFF7FEBF 		b	digitalWrite
 173              	.L32:
 174 001e 00BF     		.align	2
 175              	.L31:
 176 0020 00800040 		.word	1073774592
 177              		.size	sspi_deselect_device, .-sspi_deselect_device
 178              		.section	.text.sspi_transceive_packet,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	sspi_transceive_packet
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	sspi_transceive_packet, %function
 187              	sspi_transceive_packet:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 002A     		cmp	r2, #0
 191 0002 43D0     		beq	.L49
 192 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 193 0006 9646     		mov	lr, r2
 194 0008 0027     		movs	r7, #0
 195 000a 284D     		ldr	r5, .L84
 196 000c 40F20126 		movw	r6, #513
 197 0010 00B3     		cbz	r0, .L50
 198              	.L79:
 199 0012 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 200 0014 0130     		adds	r0, r0, #1
 201              	.L36:
 202 0016 43F69823 		movw	r3, #15000
 203 001a 01E0     		b	.L38
 204              	.L74:
 205 001c 013B     		subs	r3, r3, #1
 206 001e 1BD0     		beq	.L43
 207              	.L38:
 208 0020 2C69     		ldr	r4, [r5, #16]
 209 0022 A407     		lsls	r4, r4, #30
 210 0024 FAD5     		bpl	.L74
 211 0026 0137     		adds	r7, r7, #1
 212 0028 BE45     		cmp	lr, r7
 213 002a 1DD0     		beq	.L75
 214 002c EA60     		str	r2, [r5, #12]
 215 002e A9B1     		cbz	r1, .L76
 216              	.L48:
 217 0030 43F69823 		movw	r3, #15000
 218 0034 01E0     		b	.L44
 219              	.L77:
 220 0036 013B     		subs	r3, r3, #1
 221 0038 0ED0     		beq	.L43
 222              	.L44:
 223 003a 2C69     		ldr	r4, [r5, #16]
 224 003c 36EA0402 		bics	r2, r6, r4
 225 0040 F9D1     		bne	.L77
 226 0042 AA68     		ldr	r2, [r5, #8]
 227 0044 BE45     		cmp	lr, r7
 228 0046 01F10103 		add	r3, r1, #1
ARM GAS  /tmp/ccAWTHYD.s 			page 5


 229 004a 0A70     		strb	r2, [r1]
 230 004c 09D0     		beq	.L78
 231 004e 1946     		mov	r1, r3
 232              	.L80:
 233 0050 0028     		cmp	r0, #0
 234 0052 DED1     		bne	.L79
 235              	.L50:
 236 0054 FF22     		movs	r2, #255
 237 0056 DEE7     		b	.L36
 238              	.L43:
 239 0058 0120     		movs	r0, #1
 240 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 241              	.L76:
 242 005c 0B46     		mov	r3, r1
 243 005e 1946     		mov	r1, r3
 244 0060 F6E7     		b	.L80
 245              	.L78:
 246 0062 33B1     		cbz	r3, .L41
 247 0064 0020     		movs	r0, #0
 248 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 249              	.L75:
 250 0068 42F08072 		orr	r2, r2, #16777216
 251 006c EA60     		str	r2, [r5, #12]
 252 006e 0029     		cmp	r1, #0
 253 0070 DED1     		bne	.L48
 254              	.L41:
 255 0072 43F69923 		movw	r3, #15001
 256 0076 0D49     		ldr	r1, .L84
 257 0078 01E0     		b	.L47
 258              	.L81:
 259 007a 013B     		subs	r3, r3, #1
 260 007c 02D0     		beq	.L46
 261              	.L47:
 262 007e 0A69     		ldr	r2, [r1, #16]
 263 0080 9005     		lsls	r0, r2, #22
 264 0082 FAD5     		bpl	.L81
 265              	.L46:
 266 0084 094B     		ldr	r3, .L84
 267 0086 0020     		movs	r0, #0
 268 0088 9B68     		ldr	r3, [r3, #8]
 269 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 270              	.L49:
 271 008c 09B1     		cbz	r1, .L82
 272 008e 0020     		movs	r0, #0
 273 0090 7047     		bx	lr
 274              	.L82:
 275 0092 43F69923 		movw	r3, #15001
 276 0096 0549     		ldr	r1, .L84
 277 0098 01E0     		b	.L66
 278              	.L83:
 279 009a 013B     		subs	r3, r3, #1
 280 009c 02D0     		beq	.L67
 281              	.L66:
 282 009e 0A69     		ldr	r2, [r1, #16]
 283 00a0 9205     		lsls	r2, r2, #22
 284 00a2 FAD5     		bpl	.L83
 285              	.L67:
ARM GAS  /tmp/ccAWTHYD.s 			page 6


 286 00a4 014B     		ldr	r3, .L84
 287 00a6 0020     		movs	r0, #0
 288 00a8 9B68     		ldr	r3, [r3, #8]
 289 00aa 7047     		bx	lr
 290              	.L85:
 291              		.align	2
 292              	.L84:
 293 00ac 00800040 		.word	1073774592
 294              		.size	sspi_transceive_packet, .-sspi_transceive_packet
 295              		.section	.text.sspi_transceive_packet16,"ax",%progbits
 296              		.align	1
 297              		.p2align 2,,3
 298              		.global	sspi_transceive_packet16
 299              		.syntax unified
 300              		.thumb
 301              		.thumb_func
 302              		.fpu softvfp
 303              		.type	sspi_transceive_packet16, %function
 304              	sspi_transceive_packet16:
 305              		@ args = 0, pretend = 0, frame = 0
 306              		@ frame_needed = 0, uses_anonymous_args = 0
 307 0000 72B3     		cbz	r2, .L118
 308 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 309 0004 8E46     		mov	lr, r1
 310 0006 0027     		movs	r7, #0
 311 0008 40F20126 		movw	r6, #513
 312 000c 154C     		ldr	r4, .L121
 313              	.L89:
 314 000e 43F69823 		movw	r3, #15000
 315 0012 01E0     		b	.L91
 316              	.L119:
 317 0014 013B     		subs	r3, r3, #1
 318 0016 1FD0     		beq	.L96
 319              	.L91:
 320 0018 2569     		ldr	r5, [r4, #16]
 321 001a AD07     		lsls	r5, r5, #30
 322 001c FAD5     		bpl	.L119
 323 001e E8B1     		cbz	r0, .L99
 324 0020 30F81750 		ldrh	r5, [r0, r7, lsl #1]
 325              	.L93:
 326 0024 0137     		adds	r7, r7, #1
 327 0026 BA42     		cmp	r2, r7
 328 0028 08BF     		it	eq
 329 002a 45F08075 		orreq	r5, r5, #16777216
 330 002e 43F69823 		movw	r3, #15000
 331 0032 E560     		str	r5, [r4, #12]
 332 0034 01E0     		b	.L97
 333              	.L120:
 334 0036 013B     		subs	r3, r3, #1
 335 0038 0ED0     		beq	.L96
 336              	.L97:
 337 003a 2569     		ldr	r5, [r4, #16]
 338 003c 36EA0505 		bics	r5, r6, r5
 339 0040 F9D1     		bne	.L120
 340 0042 A368     		ldr	r3, [r4, #8]
 341 0044 9BB2     		uxth	r3, r3
 342 0046 09B1     		cbz	r1, .L98
ARM GAS  /tmp/ccAWTHYD.s 			page 7


 343 0048 AEF80030 		strh	r3, [lr]	@ movhi
 344              	.L98:
 345 004c BA42     		cmp	r2, r7
 346 004e 0EF1020E 		add	lr, lr, #2
 347 0052 DCD1     		bne	.L89
 348 0054 0020     		movs	r0, #0
 349 0056 F0BD     		pop	{r4, r5, r6, r7, pc}
 350              	.L96:
 351 0058 0120     		movs	r0, #1
 352 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 353              	.L99:
 354 005c FF25     		movs	r5, #255
 355 005e E1E7     		b	.L93
 356              	.L118:
 357 0060 0020     		movs	r0, #0
 358 0062 7047     		bx	lr
 359              	.L122:
 360              		.align	2
 361              	.L121:
 362 0064 00800040 		.word	1073774592
 363              		.size	sspi_transceive_packet16, .-sspi_transceive_packet16
 364              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 365              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 366              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 367              	_ZL28cpu_irq_prev_interrupt_state:
 368 0000 00       		.space	1
 369              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 370              		.align	2
 371              		.type	_ZL32cpu_irq_critical_section_counter, %object
 372              		.size	_ZL32cpu_irq_critical_section_counter, 4
 373              	_ZL32cpu_irq_critical_section_counter:
 374 0000 00000000 		.space	4
 375              		.section	.bss._ZZ16sspi_master_initE13commsInitDone,"aw",%nobits
 376              		.set	.LANCHOR0,. + 0
 377              		.type	_ZZ16sspi_master_initE13commsInitDone, %object
 378              		.size	_ZZ16sspi_master_initE13commsInitDone, 1
 379              	_ZZ16sspi_master_initE13commsInitDone:
 380 0000 00       		.space	1
 381              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
