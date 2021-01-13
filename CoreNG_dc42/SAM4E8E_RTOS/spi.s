ARM GAS  /tmp/ccM40KlR.s 			page 1


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
  13              		.file	"spi.c"
  14              		.section	.text.spi_enable_clock,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	spi_enable_clock
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	spi_enable_clock, %function
  23              	spi_enable_clock:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 1320     		movs	r0, #19
  28 0002 FFF7FEBF 		b	pmc_enable_periph_clk
  29              		.size	spi_enable_clock, .-spi_enable_clock
  30 0006 00BF     		.section	.text.spi_disable_clock,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	spi_disable_clock
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	spi_disable_clock, %function
  39              	spi_disable_clock:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 1320     		movs	r0, #19
  44 0002 FFF7FEBF 		b	pmc_disable_periph_clk
  45              		.size	spi_disable_clock, .-spi_disable_clock
  46 0006 00BF     		.section	.text.spi_set_peripheral_chip_select_value,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	spi_set_peripheral_chip_select_value
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	spi_set_peripheral_chip_select_value, %function
  55              	spi_set_peripheral_chip_select_value:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccM40KlR.s 			page 2


  58              		@ link register save eliminated.
  59 0000 4368     		ldr	r3, [r0, #4]
  60 0002 23F47023 		bic	r3, r3, #983040
  61 0006 4360     		str	r3, [r0, #4]
  62 0008 4368     		ldr	r3, [r0, #4]
  63 000a 0904     		lsls	r1, r1, #16
  64 000c 01F47021 		and	r1, r1, #983040
  65 0010 1943     		orrs	r1, r1, r3
  66 0012 4160     		str	r1, [r0, #4]
  67 0014 7047     		bx	lr
  68              		.size	spi_set_peripheral_chip_select_value, .-spi_set_peripheral_chip_select_value
  69 0016 00BF     		.section	.text.spi_set_delay_between_chip_select,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	spi_set_delay_between_chip_select
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	spi_set_delay_between_chip_select, %function
  78              	spi_set_delay_between_chip_select:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 4368     		ldr	r3, [r0, #4]
  83 0002 23F07F43 		bic	r3, r3, #-16777216
  84 0006 4360     		str	r3, [r0, #4]
  85 0008 4368     		ldr	r3, [r0, #4]
  86 000a 43EA0161 		orr	r1, r3, r1, lsl #24
  87 000e 4160     		str	r1, [r0, #4]
  88 0010 7047     		bx	lr
  89              		.size	spi_set_delay_between_chip_select, .-spi_set_delay_between_chip_select
  90 0012 00BF     		.section	.text.spi_read,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	spi_read
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	spi_read, %function
  99              	spi_read:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 10B4     		push	{r4}
 104 0002 43F69923 		movw	r3, #15001
 105 0006 01E0     		b	.L6
 106              	.L8:
 107 0008 013B     		subs	r3, r3, #1
 108 000a 0FD0     		beq	.L11
 109              	.L6:
 110 000c 0469     		ldr	r4, [r0, #16]
 111 000e E407     		lsls	r4, r4, #31
 112 0010 FAD5     		bpl	.L8
 113 0012 8368     		ldr	r3, [r0, #8]
 114 0014 4068     		ldr	r0, [r0, #4]
ARM GAS  /tmp/ccM40KlR.s 			page 3


 115 0016 8007     		lsls	r0, r0, #30
 116 0018 04D4     		bmi	.L9
 117              	.L10:
 118 001a 0020     		movs	r0, #0
 119 001c 0B80     		strh	r3, [r1]	@ movhi
 120 001e 5DF8044B 		ldr	r4, [sp], #4
 121 0022 7047     		bx	lr
 122              	.L9:
 123 0024 C3F30340 		ubfx	r0, r3, #16, #4
 124 0028 1070     		strb	r0, [r2]
 125 002a F6E7     		b	.L10
 126              	.L11:
 127 002c 0120     		movs	r0, #1
 128 002e 5DF8044B 		ldr	r4, [sp], #4
 129 0032 7047     		bx	lr
 130              		.size	spi_read, .-spi_read
 131              		.section	.text.spi_write,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	spi_write
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	spi_write, %function
 140              	spi_write:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 30B4     		push	{r4, r5}
 145 0002 43F69924 		movw	r4, #15001
 146 0006 01E0     		b	.L17
 147              	.L19:
 148 0008 013C     		subs	r4, r4, #1
 149 000a 10D0     		beq	.L24
 150              	.L17:
 151 000c 0569     		ldr	r5, [r0, #16]
 152 000e AD07     		lsls	r5, r5, #30
 153 0010 FAD5     		bpl	.L19
 154 0012 4468     		ldr	r4, [r0, #4]
 155 0014 A407     		lsls	r4, r4, #30
 156 0016 06D5     		bpl	.L23
 157 0018 1204     		lsls	r2, r2, #16
 158 001a 02F47022 		and	r2, r2, #983040
 159 001e 1143     		orrs	r1, r1, r2
 160 0020 0BB1     		cbz	r3, .L23
 161 0022 41F08071 		orr	r1, r1, #16777216
 162              	.L23:
 163 0026 C160     		str	r1, [r0, #12]
 164 0028 30BC     		pop	{r4, r5}
 165 002a 0020     		movs	r0, #0
 166 002c 7047     		bx	lr
 167              	.L24:
 168 002e 0120     		movs	r0, #1
 169 0030 30BC     		pop	{r4, r5}
 170 0032 7047     		bx	lr
 171              		.size	spi_write, .-spi_write
ARM GAS  /tmp/ccM40KlR.s 			page 4


 172              		.section	.text.spi_set_clock_polarity,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	spi_set_clock_polarity
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	spi_set_clock_polarity, %function
 181              	spi_set_clock_polarity:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 00EB8100 		add	r0, r0, r1, lsl #2
 186 0004 036B     		ldr	r3, [r0, #48]
 187 0006 1AB9     		cbnz	r2, .L32
 188 0008 23F00103 		bic	r3, r3, #1
 189 000c 0363     		str	r3, [r0, #48]
 190 000e 7047     		bx	lr
 191              	.L32:
 192 0010 43F00103 		orr	r3, r3, #1
 193 0014 0363     		str	r3, [r0, #48]
 194 0016 7047     		bx	lr
 195              		.size	spi_set_clock_polarity, .-spi_set_clock_polarity
 196              		.section	.text.spi_set_clock_phase,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	spi_set_clock_phase
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv4-sp-d16
 204              		.type	spi_set_clock_phase, %function
 205              	spi_set_clock_phase:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 00EB8100 		add	r0, r0, r1, lsl #2
 210 0004 036B     		ldr	r3, [r0, #48]
 211 0006 1AB9     		cbnz	r2, .L36
 212 0008 23F00203 		bic	r3, r3, #2
 213 000c 0363     		str	r3, [r0, #48]
 214 000e 7047     		bx	lr
 215              	.L36:
 216 0010 43F00203 		orr	r3, r3, #2
 217 0014 0363     		str	r3, [r0, #48]
 218 0016 7047     		bx	lr
 219              		.size	spi_set_clock_phase, .-spi_set_clock_phase
 220              		.section	.text.spi_configure_cs_behavior,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	spi_configure_cs_behavior
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	spi_configure_cs_behavior, %function
ARM GAS  /tmp/ccM40KlR.s 			page 5


 229              	spi_configure_cs_behavior:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 042A     		cmp	r2, #4
 234 0002 14D0     		beq	.L41
 235 0004 42B1     		cbz	r2, .L42
 236 0006 082A     		cmp	r2, #8
 237 0008 05D1     		bne	.L37
 238 000a 00EB8100 		add	r0, r0, r1, lsl #2
 239 000e 036B     		ldr	r3, [r0, #48]
 240 0010 43F00803 		orr	r3, r3, #8
 241 0014 0363     		str	r3, [r0, #48]
 242              	.L37:
 243 0016 7047     		bx	lr
 244              	.L42:
 245 0018 00EB8100 		add	r0, r0, r1, lsl #2
 246 001c 036B     		ldr	r3, [r0, #48]
 247 001e 23F00803 		bic	r3, r3, #8
 248 0022 0363     		str	r3, [r0, #48]
 249 0024 036B     		ldr	r3, [r0, #48]
 250 0026 23F00403 		bic	r3, r3, #4
 251 002a 0363     		str	r3, [r0, #48]
 252 002c 7047     		bx	lr
 253              	.L41:
 254 002e 00EB8100 		add	r0, r0, r1, lsl #2
 255 0032 036B     		ldr	r3, [r0, #48]
 256 0034 23F00803 		bic	r3, r3, #8
 257 0038 0363     		str	r3, [r0, #48]
 258 003a 036B     		ldr	r3, [r0, #48]
 259 003c 43F00403 		orr	r3, r3, #4
 260 0040 0363     		str	r3, [r0, #48]
 261 0042 7047     		bx	lr
 262              		.size	spi_configure_cs_behavior, .-spi_configure_cs_behavior
 263              		.section	.text.spi_set_bits_per_transfer,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	spi_set_bits_per_transfer
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	spi_set_bits_per_transfer, %function
 272              	spi_set_bits_per_transfer:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 00EB8101 		add	r1, r0, r1, lsl #2
 277 0004 0B6B     		ldr	r3, [r1, #48]
 278 0006 23F0F003 		bic	r3, r3, #240
 279 000a 0B63     		str	r3, [r1, #48]
 280 000c 0B6B     		ldr	r3, [r1, #48]
 281 000e 1A43     		orrs	r2, r2, r3
 282 0010 0A63     		str	r2, [r1, #48]
 283 0012 7047     		bx	lr
 284              		.size	spi_set_bits_per_transfer, .-spi_set_bits_per_transfer
 285              		.section	.text.spi_calc_baudrate_div,"ax",%progbits
ARM GAS  /tmp/ccM40KlR.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	spi_calc_baudrate_div
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	spi_calc_baudrate_div, %function
 294              	spi_calc_baudrate_div:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297              		@ link register save eliminated.
 298 0000 431E     		subs	r3, r0, #1
 299 0002 1944     		add	r1, r1, r3
 300 0004 B1FBF0F0 		udiv	r0, r1, r0
 301 0008 431E     		subs	r3, r0, #1
 302 000a FE2B     		cmp	r3, #254
 303 000c 94BF     		ite	ls
 304 000e 00B2     		sxthls	r0, r0
 305 0010 4FF0FF30 		movhi	r0, #-1
 306 0014 7047     		bx	lr
 307              		.size	spi_calc_baudrate_div, .-spi_calc_baudrate_div
 308 0016 00BF     		.section	.text.spi_set_baudrate_div,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	spi_set_baudrate_div
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	spi_set_baudrate_div, %function
 317              	spi_set_baudrate_div:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		@ link register save eliminated.
 321 0000 5AB1     		cbz	r2, .L49
 322 0002 00EB8101 		add	r1, r0, r1, lsl #2
 323 0006 0020     		movs	r0, #0
 324 0008 0B6B     		ldr	r3, [r1, #48]
 325 000a 23F47F43 		bic	r3, r3, #65280
 326 000e 0B63     		str	r3, [r1, #48]
 327 0010 0B6B     		ldr	r3, [r1, #48]
 328 0012 43EA0222 		orr	r2, r3, r2, lsl #8
 329 0016 0A63     		str	r2, [r1, #48]
 330 0018 7047     		bx	lr
 331              	.L49:
 332 001a 4FF0FF30 		mov	r0, #-1
 333 001e 7047     		bx	lr
 334              		.size	spi_set_baudrate_div, .-spi_set_baudrate_div
 335              		.section	.text.spi_set_transfer_delay,"ax",%progbits
 336              		.align	1
 337              		.p2align 2,,3
 338              		.global	spi_set_transfer_delay
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccM40KlR.s 			page 7


 343              		.type	spi_set_transfer_delay, %function
 344              	spi_set_transfer_delay:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348 0000 00EB8101 		add	r1, r0, r1, lsl #2
 349 0004 10B4     		push	{r4}
 350 0006 086B     		ldr	r0, [r1, #48]
 351 0008 80B2     		uxth	r0, r0
 352 000a 0863     		str	r0, [r1, #48]
 353 000c 0C6B     		ldr	r4, [r1, #48]
 354 000e 44EA0363 		orr	r3, r4, r3, lsl #24
 355 0012 43EA0243 		orr	r3, r3, r2, lsl #16
 356 0016 0B63     		str	r3, [r1, #48]
 357 0018 5DF8044B 		ldr	r4, [sp], #4
 358 001c 7047     		bx	lr
 359              		.size	spi_set_transfer_delay, .-spi_set_transfer_delay
 360 001e 00BF     		.section	.text.spi_set_writeprotect,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	spi_set_writeprotect
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv4-sp-d16
 368              		.type	spi_set_writeprotect, %function
 369              	spi_set_writeprotect:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              		@ link register save eliminated.
 373 0000 19B9     		cbnz	r1, .L55
 374 0002 044B     		ldr	r3, .L56
 375 0004 C0F8E430 		str	r3, [r0, #228]
 376 0008 7047     		bx	lr
 377              	.L55:
 378 000a 034B     		ldr	r3, .L56+4
 379 000c C0F8E430 		str	r3, [r0, #228]
 380 0010 7047     		bx	lr
 381              	.L57:
 382 0012 00BF     		.align	2
 383              	.L56:
 384 0014 00495053 		.word	1397770496
 385 0018 01495053 		.word	1397770497
 386              		.size	spi_set_writeprotect, .-spi_set_writeprotect
 387              		.section	.text.spi_get_writeprotect_status,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	spi_get_writeprotect_status
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv4-sp-d16
 395              		.type	spi_get_writeprotect_status, %function
 396              	spi_get_writeprotect_status:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  /tmp/ccM40KlR.s 			page 8


 400 0000 D0F8E800 		ldr	r0, [r0, #232]
 401 0004 7047     		bx	lr
 402              		.size	spi_get_writeprotect_status, .-spi_get_writeprotect_status
 403 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 404              		.align	2
 405              		.type	cpu_irq_critical_section_counter, %object
 406              		.size	cpu_irq_critical_section_counter, 4
 407              	cpu_irq_critical_section_counter:
 408 0000 00000000 		.space	4
 409              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 410              		.type	cpu_irq_prev_interrupt_state, %object
 411              		.size	cpu_irq_prev_interrupt_state, 1
 412              	cpu_irq_prev_interrupt_state:
 413 0000 00       		.space	1
 414              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
