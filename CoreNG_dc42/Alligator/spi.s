ARM GAS  /tmp/cckQaZQF.s 			page 1


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
  11              		.file	"spi.c"
  12              		.section	.text.spi_enable_clock,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	spi_enable_clock
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	spi_enable_clock, %function
  21              	spi_enable_clock:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 034B     		ldr	r3, .L5
  26 0002 9842     		cmp	r0, r3
  27 0004 00D0     		beq	.L4
  28 0006 7047     		bx	lr
  29              	.L4:
  30 0008 1820     		movs	r0, #24
  31 000a FFF7FEBF 		b	pmc_enable_periph_clk
  32              	.L6:
  33 000e 00BF     		.align	2
  34              	.L5:
  35 0010 00800040 		.word	1073774592
  36              		.size	spi_enable_clock, .-spi_enable_clock
  37              		.section	.text.spi_disable_clock,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	spi_disable_clock
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	spi_disable_clock, %function
  46              	spi_disable_clock:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 034B     		ldr	r3, .L10
  51 0002 9842     		cmp	r0, r3
  52 0004 00D0     		beq	.L9
  53 0006 7047     		bx	lr
  54              	.L9:
  55 0008 1820     		movs	r0, #24
  56 000a FFF7FEBF 		b	pmc_disable_periph_clk
  57              	.L11:
ARM GAS  /tmp/cckQaZQF.s 			page 2


  58 000e 00BF     		.align	2
  59              	.L10:
  60 0010 00800040 		.word	1073774592
  61              		.size	spi_disable_clock, .-spi_disable_clock
  62              		.section	.text.spi_set_peripheral_chip_select_value,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	spi_set_peripheral_chip_select_value
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu softvfp
  70              		.type	spi_set_peripheral_chip_select_value, %function
  71              	spi_set_peripheral_chip_select_value:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 4368     		ldr	r3, [r0, #4]
  76 0002 0904     		lsls	r1, r1, #16
  77 0004 23F47023 		bic	r3, r3, #983040
  78 0008 4360     		str	r3, [r0, #4]
  79 000a 4368     		ldr	r3, [r0, #4]
  80 000c 01F47021 		and	r1, r1, #983040
  81 0010 1943     		orrs	r1, r1, r3
  82 0012 4160     		str	r1, [r0, #4]
  83 0014 7047     		bx	lr
  84              		.size	spi_set_peripheral_chip_select_value, .-spi_set_peripheral_chip_select_value
  85 0016 00BF     		.section	.text.spi_set_delay_between_chip_select,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	spi_set_delay_between_chip_select
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu softvfp
  93              		.type	spi_set_delay_between_chip_select, %function
  94              	spi_set_delay_between_chip_select:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              		@ link register save eliminated.
  98 0000 4368     		ldr	r3, [r0, #4]
  99 0002 23F07F43 		bic	r3, r3, #-16777216
 100 0006 4360     		str	r3, [r0, #4]
 101 0008 4368     		ldr	r3, [r0, #4]
 102 000a 43EA0161 		orr	r1, r3, r1, lsl #24
 103 000e 4160     		str	r1, [r0, #4]
 104 0010 7047     		bx	lr
 105              		.size	spi_set_delay_between_chip_select, .-spi_set_delay_between_chip_select
 106 0012 00BF     		.section	.text.spi_read,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	spi_read
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	spi_read, %function
ARM GAS  /tmp/cckQaZQF.s 			page 3


 115              	spi_read:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 10B4     		push	{r4}
 120 0002 43F69923 		movw	r3, #15001
 121 0006 01E0     		b	.L15
 122              	.L17:
 123 0008 013B     		subs	r3, r3, #1
 124 000a 0ED0     		beq	.L20
 125              	.L15:
 126 000c 0469     		ldr	r4, [r0, #16]
 127 000e E407     		lsls	r4, r4, #31
 128 0010 FAD5     		bpl	.L17
 129 0012 8368     		ldr	r3, [r0, #8]
 130 0014 4068     		ldr	r0, [r0, #4]
 131 0016 8007     		lsls	r0, r0, #30
 132 0018 03D4     		bmi	.L18
 133              	.L19:
 134 001a 0020     		movs	r0, #0
 135 001c 0B80     		strh	r3, [r1]	@ movhi
 136 001e 10BC     		pop	{r4}
 137 0020 7047     		bx	lr
 138              	.L18:
 139 0022 C3F30340 		ubfx	r0, r3, #16, #4
 140 0026 1070     		strb	r0, [r2]
 141 0028 F7E7     		b	.L19
 142              	.L20:
 143 002a 0120     		movs	r0, #1
 144 002c 10BC     		pop	{r4}
 145 002e 7047     		bx	lr
 146              		.size	spi_read, .-spi_read
 147              		.section	.text.spi_write,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	spi_write
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu softvfp
 155              		.type	spi_write, %function
 156              	spi_write:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		@ link register save eliminated.
 160 0000 30B4     		push	{r4, r5}
 161 0002 43F69924 		movw	r4, #15001
 162 0006 01E0     		b	.L25
 163              	.L27:
 164 0008 013C     		subs	r4, r4, #1
 165 000a 10D0     		beq	.L32
 166              	.L25:
 167 000c 0569     		ldr	r5, [r0, #16]
 168 000e AD07     		lsls	r5, r5, #30
 169 0010 FAD5     		bpl	.L27
 170 0012 4468     		ldr	r4, [r0, #4]
 171 0014 A407     		lsls	r4, r4, #30
ARM GAS  /tmp/cckQaZQF.s 			page 4


 172 0016 06D5     		bpl	.L31
 173 0018 1204     		lsls	r2, r2, #16
 174 001a 02F47022 		and	r2, r2, #983040
 175 001e 1143     		orrs	r1, r1, r2
 176 0020 0BB1     		cbz	r3, .L31
 177 0022 41F08071 		orr	r1, r1, #16777216
 178              	.L31:
 179 0026 C160     		str	r1, [r0, #12]
 180 0028 30BC     		pop	{r4, r5}
 181 002a 0020     		movs	r0, #0
 182 002c 7047     		bx	lr
 183              	.L32:
 184 002e 0120     		movs	r0, #1
 185 0030 30BC     		pop	{r4, r5}
 186 0032 7047     		bx	lr
 187              		.size	spi_write, .-spi_write
 188              		.section	.text.spi_set_clock_polarity,"ax",%progbits
 189              		.align	1
 190              		.p2align 2,,3
 191              		.global	spi_set_clock_polarity
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu softvfp
 196              		.type	spi_set_clock_polarity, %function
 197              	spi_set_clock_polarity:
 198              		@ args = 0, pretend = 0, frame = 0
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200              		@ link register save eliminated.
 201 0000 00EB8100 		add	r0, r0, r1, lsl #2
 202 0004 036B     		ldr	r3, [r0, #48]
 203 0006 1AB9     		cbnz	r2, .L40
 204 0008 23F00103 		bic	r3, r3, #1
 205 000c 0363     		str	r3, [r0, #48]
 206 000e 7047     		bx	lr
 207              	.L40:
 208 0010 43F00103 		orr	r3, r3, #1
 209 0014 0363     		str	r3, [r0, #48]
 210 0016 7047     		bx	lr
 211              		.size	spi_set_clock_polarity, .-spi_set_clock_polarity
 212              		.section	.text.spi_set_clock_phase,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	spi_set_clock_phase
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu softvfp
 220              		.type	spi_set_clock_phase, %function
 221              	spi_set_clock_phase:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224              		@ link register save eliminated.
 225 0000 00EB8100 		add	r0, r0, r1, lsl #2
 226 0004 036B     		ldr	r3, [r0, #48]
 227 0006 1AB9     		cbnz	r2, .L44
 228 0008 23F00203 		bic	r3, r3, #2
ARM GAS  /tmp/cckQaZQF.s 			page 5


 229 000c 0363     		str	r3, [r0, #48]
 230 000e 7047     		bx	lr
 231              	.L44:
 232 0010 43F00203 		orr	r3, r3, #2
 233 0014 0363     		str	r3, [r0, #48]
 234 0016 7047     		bx	lr
 235              		.size	spi_set_clock_phase, .-spi_set_clock_phase
 236              		.section	.text.spi_configure_cs_behavior,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	spi_configure_cs_behavior
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu softvfp
 244              		.type	spi_configure_cs_behavior, %function
 245              	spi_configure_cs_behavior:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248              		@ link register save eliminated.
 249 0000 042A     		cmp	r2, #4
 250 0002 14D0     		beq	.L49
 251 0004 42B1     		cbz	r2, .L50
 252 0006 082A     		cmp	r2, #8
 253 0008 05D1     		bne	.L45
 254 000a 00EB8100 		add	r0, r0, r1, lsl #2
 255 000e 036B     		ldr	r3, [r0, #48]
 256 0010 43F00803 		orr	r3, r3, #8
 257 0014 0363     		str	r3, [r0, #48]
 258              	.L45:
 259 0016 7047     		bx	lr
 260              	.L50:
 261 0018 00EB8100 		add	r0, r0, r1, lsl #2
 262 001c 036B     		ldr	r3, [r0, #48]
 263 001e 23F00803 		bic	r3, r3, #8
 264 0022 0363     		str	r3, [r0, #48]
 265 0024 036B     		ldr	r3, [r0, #48]
 266 0026 23F00403 		bic	r3, r3, #4
 267 002a 0363     		str	r3, [r0, #48]
 268 002c 7047     		bx	lr
 269              	.L49:
 270 002e 00EB8100 		add	r0, r0, r1, lsl #2
 271 0032 036B     		ldr	r3, [r0, #48]
 272 0034 23F00803 		bic	r3, r3, #8
 273 0038 0363     		str	r3, [r0, #48]
 274 003a 036B     		ldr	r3, [r0, #48]
 275 003c 43F00403 		orr	r3, r3, #4
 276 0040 0363     		str	r3, [r0, #48]
 277 0042 7047     		bx	lr
 278              		.size	spi_configure_cs_behavior, .-spi_configure_cs_behavior
 279              		.section	.text.spi_set_bits_per_transfer,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	spi_set_bits_per_transfer
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/cckQaZQF.s 			page 6


 286              		.fpu softvfp
 287              		.type	spi_set_bits_per_transfer, %function
 288              	spi_set_bits_per_transfer:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 00EB8101 		add	r1, r0, r1, lsl #2
 293 0004 0B6B     		ldr	r3, [r1, #48]
 294 0006 23F0F003 		bic	r3, r3, #240
 295 000a 0B63     		str	r3, [r1, #48]
 296 000c 0B6B     		ldr	r3, [r1, #48]
 297 000e 1A43     		orrs	r2, r2, r3
 298 0010 0A63     		str	r2, [r1, #48]
 299 0012 7047     		bx	lr
 300              		.size	spi_set_bits_per_transfer, .-spi_set_bits_per_transfer
 301              		.section	.text.spi_calc_baudrate_div,"ax",%progbits
 302              		.align	1
 303              		.p2align 2,,3
 304              		.global	spi_calc_baudrate_div
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu softvfp
 309              		.type	spi_calc_baudrate_div, %function
 310              	spi_calc_baudrate_div:
 311              		@ args = 0, pretend = 0, frame = 0
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313              		@ link register save eliminated.
 314 0000 431E     		subs	r3, r0, #1
 315 0002 1944     		add	r1, r1, r3
 316 0004 B1FBF0F0 		udiv	r0, r1, r0
 317 0008 431E     		subs	r3, r0, #1
 318 000a FE2B     		cmp	r3, #254
 319 000c 94BF     		ite	ls
 320 000e 00B2     		sxthls	r0, r0
 321 0010 4FF0FF30 		movhi	r0, #-1
 322 0014 7047     		bx	lr
 323              		.size	spi_calc_baudrate_div, .-spi_calc_baudrate_div
 324 0016 00BF     		.section	.text.spi_set_baudrate_div,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	spi_set_baudrate_div
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu softvfp
 332              		.type	spi_set_baudrate_div, %function
 333              	spi_set_baudrate_div:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 5AB1     		cbz	r2, .L57
 338 0002 00EB8101 		add	r1, r0, r1, lsl #2
 339 0006 0B6B     		ldr	r3, [r1, #48]
 340 0008 0020     		movs	r0, #0
 341 000a 23F47F43 		bic	r3, r3, #65280
 342 000e 0B63     		str	r3, [r1, #48]
ARM GAS  /tmp/cckQaZQF.s 			page 7


 343 0010 0B6B     		ldr	r3, [r1, #48]
 344 0012 43EA0222 		orr	r2, r3, r2, lsl #8
 345 0016 0A63     		str	r2, [r1, #48]
 346 0018 7047     		bx	lr
 347              	.L57:
 348 001a 4FF0FF30 		mov	r0, #-1
 349 001e 7047     		bx	lr
 350              		.size	spi_set_baudrate_div, .-spi_set_baudrate_div
 351              		.section	.text.spi_set_transfer_delay,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	spi_set_transfer_delay
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu softvfp
 359              		.type	spi_set_transfer_delay, %function
 360              	spi_set_transfer_delay:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 364 0000 00EB8101 		add	r1, r0, r1, lsl #2
 365 0004 086B     		ldr	r0, [r1, #48]
 366 0006 10B4     		push	{r4}
 367 0008 80B2     		uxth	r0, r0
 368 000a 0863     		str	r0, [r1, #48]
 369 000c 0C6B     		ldr	r4, [r1, #48]
 370 000e 44EA0363 		orr	r3, r4, r3, lsl #24
 371 0012 43EA0243 		orr	r3, r3, r2, lsl #16
 372 0016 0B63     		str	r3, [r1, #48]
 373 0018 10BC     		pop	{r4}
 374 001a 7047     		bx	lr
 375              		.size	spi_set_transfer_delay, .-spi_set_transfer_delay
 376              		.section	.text.spi_set_writeprotect,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	spi_set_writeprotect
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu softvfp
 384              		.type	spi_set_writeprotect, %function
 385              	spi_set_writeprotect:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388              		@ link register save eliminated.
 389 0000 19B9     		cbnz	r1, .L63
 390 0002 044B     		ldr	r3, .L64
 391 0004 C0F8E430 		str	r3, [r0, #228]
 392 0008 7047     		bx	lr
 393              	.L63:
 394 000a 034B     		ldr	r3, .L64+4
 395 000c C0F8E430 		str	r3, [r0, #228]
 396 0010 7047     		bx	lr
 397              	.L65:
 398 0012 00BF     		.align	2
 399              	.L64:
ARM GAS  /tmp/cckQaZQF.s 			page 8


 400 0014 00495053 		.word	1397770496
 401 0018 01495053 		.word	1397770497
 402              		.size	spi_set_writeprotect, .-spi_set_writeprotect
 403              		.section	.text.spi_get_writeprotect_status,"ax",%progbits
 404              		.align	1
 405              		.p2align 2,,3
 406              		.global	spi_get_writeprotect_status
 407              		.syntax unified
 408              		.thumb
 409              		.thumb_func
 410              		.fpu softvfp
 411              		.type	spi_get_writeprotect_status, %function
 412              	spi_get_writeprotect_status:
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415              		@ link register save eliminated.
 416 0000 D0F8E800 		ldr	r0, [r0, #232]
 417 0004 7047     		bx	lr
 418              		.size	spi_get_writeprotect_status, .-spi_get_writeprotect_status
 419 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 420              		.align	2
 421              		.type	cpu_irq_critical_section_counter, %object
 422              		.size	cpu_irq_critical_section_counter, 4
 423              	cpu_irq_critical_section_counter:
 424 0000 00000000 		.space	4
 425              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 426              		.type	cpu_irq_prev_interrupt_state, %object
 427              		.size	cpu_irq_prev_interrupt_state, 1
 428              	cpu_irq_prev_interrupt_state:
 429 0000 00       		.space	1
 430              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
