ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 1


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
  14              		.text
  15              		.section	.text.spi_enable_clock,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	spi_enable_clock
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	spi_enable_clock, %function
  24              	spi_enable_clock:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 1320     		movs	r0, #19
  29 0002 FFF7FEBF 		b	pmc_enable_periph_clk
  30              		.size	spi_enable_clock, .-spi_enable_clock
  31 0006 00BF     		.section	.text.spi_disable_clock,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	spi_disable_clock
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	spi_disable_clock, %function
  40              	spi_disable_clock:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 1320     		movs	r0, #19
  45 0002 FFF7FEBF 		b	pmc_disable_periph_clk
  46              		.size	spi_disable_clock, .-spi_disable_clock
  47 0006 00BF     		.section	.text.spi_set_peripheral_chip_select_value,"ax",%progbits
  48              		.align	1
  49              		.p2align 2,,3
  50              		.global	spi_set_peripheral_chip_select_value
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	spi_set_peripheral_chip_select_value, %function
  56              	spi_set_peripheral_chip_select_value:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 4368     		ldr	r3, [r0, #4]
  61 0002 23F47023 		bic	r3, r3, #983040
  62 0006 4360     		str	r3, [r0, #4]
  63 0008 4368     		ldr	r3, [r0, #4]
  64 000a 0904     		lsls	r1, r1, #16
  65 000c 01F47021 		and	r1, r1, #983040
  66 0010 1943     		orrs	r1, r1, r3
  67 0012 4160     		str	r1, [r0, #4]
  68 0014 7047     		bx	lr
  69              		.size	spi_set_peripheral_chip_select_value, .-spi_set_peripheral_chip_select_value
  70 0016 00BF     		.section	.text.spi_set_delay_between_chip_select,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	spi_set_delay_between_chip_select
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	spi_set_delay_between_chip_select, %function
  79              	spi_set_delay_between_chip_select:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 4368     		ldr	r3, [r0, #4]
  84 0002 23F07F43 		bic	r3, r3, #-16777216
  85 0006 4360     		str	r3, [r0, #4]
  86 0008 4368     		ldr	r3, [r0, #4]
  87 000a 43EA0161 		orr	r1, r3, r1, lsl #24
  88 000e 4160     		str	r1, [r0, #4]
  89 0010 7047     		bx	lr
  90              		.size	spi_set_delay_between_chip_select, .-spi_set_delay_between_chip_select
  91 0012 00BF     		.section	.text.spi_read,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	spi_read
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	spi_read, %function
 100              	spi_read:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 10B4     		push	{r4}
 105 0002 43F69923 		movw	r3, #15001
 106 0006 01E0     		b	.L7
 107              	.L9:
 108 0008 013B     		subs	r3, r3, #1
 109 000a 0ED0     		beq	.L11
 110              	.L7:
 111 000c 0469     		ldr	r4, [r0, #16]
 112 000e E407     		lsls	r4, r4, #31
 113 0010 FAD5     		bpl	.L9
 114 0012 8368     		ldr	r3, [r0, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 3


 115 0014 4068     		ldr	r0, [r0, #4]
 116 0016 5DF8044B 		ldr	r4, [sp], #4
 117 001a 8007     		lsls	r0, r0, #30
 118 001c 44BF     		itt	mi
 119 001e C3F30340 		ubfxmi	r0, r3, #16, #4
 120 0022 1070     		strbmi	r0, [r2]
 121 0024 0020     		movs	r0, #0
 122 0026 0B80     		strh	r3, [r1]	@ movhi
 123 0028 7047     		bx	lr
 124              	.L11:
 125 002a 0120     		movs	r0, #1
 126 002c 5DF8044B 		ldr	r4, [sp], #4
 127 0030 7047     		bx	lr
 128              		.size	spi_read, .-spi_read
 129 0032 00BF     		.section	.text.spi_write,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	spi_write
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	spi_write, %function
 138              	spi_write:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 30B4     		push	{r4, r5}
 143 0002 43F69924 		movw	r4, #15001
 144 0006 01E0     		b	.L18
 145              	.L20:
 146 0008 013C     		subs	r4, r4, #1
 147 000a 10D0     		beq	.L22
 148              	.L18:
 149 000c 0569     		ldr	r5, [r0, #16]
 150 000e AD07     		lsls	r5, r5, #30
 151 0010 FAD5     		bpl	.L20
 152 0012 4468     		ldr	r4, [r0, #4]
 153 0014 A407     		lsls	r4, r4, #30
 154 0016 06D5     		bpl	.L21
 155 0018 1204     		lsls	r2, r2, #16
 156 001a 02F47022 		and	r2, r2, #983040
 157 001e 1143     		orrs	r1, r1, r2
 158 0020 0BB1     		cbz	r3, .L21
 159 0022 41F08071 		orr	r1, r1, #16777216
 160              	.L21:
 161 0026 C160     		str	r1, [r0, #12]
 162 0028 30BC     		pop	{r4, r5}
 163 002a 0020     		movs	r0, #0
 164 002c 7047     		bx	lr
 165              	.L22:
 166 002e 0120     		movs	r0, #1
 167 0030 30BC     		pop	{r4, r5}
 168 0032 7047     		bx	lr
 169              		.size	spi_write, .-spi_write
 170              		.section	.text.spi_set_clock_polarity,"ax",%progbits
 171              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 4


 172              		.p2align 2,,3
 173              		.global	spi_set_clock_polarity
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	spi_set_clock_polarity, %function
 179              	spi_set_clock_polarity:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 00EB8100 		add	r0, r0, r1, lsl #2
 184 0004 036B     		ldr	r3, [r0, #48]
 185 0006 1AB9     		cbnz	r2, .L34
 186 0008 23F00103 		bic	r3, r3, #1
 187 000c 0363     		str	r3, [r0, #48]
 188 000e 7047     		bx	lr
 189              	.L34:
 190 0010 43F00103 		orr	r3, r3, #1
 191 0014 0363     		str	r3, [r0, #48]
 192 0016 7047     		bx	lr
 193              		.size	spi_set_clock_polarity, .-spi_set_clock_polarity
 194              		.section	.text.spi_set_clock_phase,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	spi_set_clock_phase
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu fpv4-sp-d16
 202              		.type	spi_set_clock_phase, %function
 203              	spi_set_clock_phase:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 00EB8100 		add	r0, r0, r1, lsl #2
 208 0004 036B     		ldr	r3, [r0, #48]
 209 0006 1AB9     		cbnz	r2, .L38
 210 0008 23F00203 		bic	r3, r3, #2
 211 000c 0363     		str	r3, [r0, #48]
 212 000e 7047     		bx	lr
 213              	.L38:
 214 0010 43F00203 		orr	r3, r3, #2
 215 0014 0363     		str	r3, [r0, #48]
 216 0016 7047     		bx	lr
 217              		.size	spi_set_clock_phase, .-spi_set_clock_phase
 218              		.section	.text.spi_configure_cs_behavior,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	spi_configure_cs_behavior
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	spi_configure_cs_behavior, %function
 227              	spi_configure_cs_behavior:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 042A     		cmp	r2, #4
 232 0002 14D0     		beq	.L43
 233 0004 42B1     		cbz	r2, .L44
 234 0006 082A     		cmp	r2, #8
 235 0008 05D1     		bne	.L39
 236 000a 00EB8100 		add	r0, r0, r1, lsl #2
 237 000e 036B     		ldr	r3, [r0, #48]
 238 0010 43F00803 		orr	r3, r3, #8
 239 0014 0363     		str	r3, [r0, #48]
 240              	.L39:
 241 0016 7047     		bx	lr
 242              	.L44:
 243 0018 00EB8100 		add	r0, r0, r1, lsl #2
 244 001c 036B     		ldr	r3, [r0, #48]
 245 001e 23F00803 		bic	r3, r3, #8
 246 0022 0363     		str	r3, [r0, #48]
 247 0024 036B     		ldr	r3, [r0, #48]
 248 0026 23F00403 		bic	r3, r3, #4
 249 002a 0363     		str	r3, [r0, #48]
 250 002c 7047     		bx	lr
 251              	.L43:
 252 002e 00EB8100 		add	r0, r0, r1, lsl #2
 253 0032 036B     		ldr	r3, [r0, #48]
 254 0034 23F00803 		bic	r3, r3, #8
 255 0038 0363     		str	r3, [r0, #48]
 256 003a 036B     		ldr	r3, [r0, #48]
 257 003c 43F00403 		orr	r3, r3, #4
 258 0040 0363     		str	r3, [r0, #48]
 259 0042 7047     		bx	lr
 260              		.size	spi_configure_cs_behavior, .-spi_configure_cs_behavior
 261              		.section	.text.spi_set_bits_per_transfer,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	spi_set_bits_per_transfer
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	spi_set_bits_per_transfer, %function
 270              	spi_set_bits_per_transfer:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 274 0000 00EB8101 		add	r1, r0, r1, lsl #2
 275 0004 0B6B     		ldr	r3, [r1, #48]
 276 0006 23F0F003 		bic	r3, r3, #240
 277 000a 0B63     		str	r3, [r1, #48]
 278 000c 0B6B     		ldr	r3, [r1, #48]
 279 000e 1A43     		orrs	r2, r2, r3
 280 0010 0A63     		str	r2, [r1, #48]
 281 0012 7047     		bx	lr
 282              		.size	spi_set_bits_per_transfer, .-spi_set_bits_per_transfer
 283              		.section	.text.spi_calc_baudrate_div,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 6


 286              		.global	spi_calc_baudrate_div
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	spi_calc_baudrate_div, %function
 292              	spi_calc_baudrate_div:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296 0000 431E     		subs	r3, r0, #1
 297 0002 1944     		add	r1, r1, r3
 298 0004 B1FBF0F0 		udiv	r0, r1, r0
 299 0008 431E     		subs	r3, r0, #1
 300 000a FE2B     		cmp	r3, #254
 301 000c 94BF     		ite	ls
 302 000e 00B2     		sxthls	r0, r0
 303 0010 4FF0FF30 		movhi	r0, #-1
 304 0014 7047     		bx	lr
 305              		.size	spi_calc_baudrate_div, .-spi_calc_baudrate_div
 306 0016 00BF     		.section	.text.spi_set_baudrate_div,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	spi_set_baudrate_div
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu fpv4-sp-d16
 314              		.type	spi_set_baudrate_div, %function
 315              	spi_set_baudrate_div:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 5AB1     		cbz	r2, .L51
 320 0002 00EB8101 		add	r1, r0, r1, lsl #2
 321 0006 0020     		movs	r0, #0
 322 0008 0B6B     		ldr	r3, [r1, #48]
 323 000a 23F47F43 		bic	r3, r3, #65280
 324 000e 0B63     		str	r3, [r1, #48]
 325 0010 0B6B     		ldr	r3, [r1, #48]
 326 0012 43EA0222 		orr	r2, r3, r2, lsl #8
 327 0016 0A63     		str	r2, [r1, #48]
 328 0018 7047     		bx	lr
 329              	.L51:
 330 001a 4FF0FF30 		mov	r0, #-1
 331 001e 7047     		bx	lr
 332              		.size	spi_set_baudrate_div, .-spi_set_baudrate_div
 333              		.section	.text.spi_set_transfer_delay,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	spi_set_transfer_delay
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 341              		.type	spi_set_transfer_delay, %function
 342              	spi_set_transfer_delay:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 00EB8101 		add	r1, r0, r1, lsl #2
 347 0004 10B4     		push	{r4}
 348 0006 086B     		ldr	r0, [r1, #48]
 349 0008 80B2     		uxth	r0, r0
 350 000a 0863     		str	r0, [r1, #48]
 351 000c 0C6B     		ldr	r4, [r1, #48]
 352 000e 44EA0242 		orr	r2, r4, r2, lsl #16
 353 0012 42EA0362 		orr	r2, r2, r3, lsl #24
 354 0016 0A63     		str	r2, [r1, #48]
 355 0018 5DF8044B 		ldr	r4, [sp], #4
 356 001c 7047     		bx	lr
 357              		.size	spi_set_transfer_delay, .-spi_set_transfer_delay
 358              		.section	.text.spi_set_writeprotect,"ax",%progbits
 359              		.align	1
 360              		.p2align 2,,3
 361              		.global	spi_set_writeprotect
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv4-sp-d16
 366              		.type	spi_set_writeprotect, %function
 367              	spi_set_writeprotect:
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		@ link register save eliminated.
 371 0000 19B9     		cbnz	r1, .L57
 372 0002 044B     		ldr	r3, .L58
 373 0004 C0F8E430 		str	r3, [r0, #228]
 374 0008 7047     		bx	lr
 375              	.L57:
 376 000a 034B     		ldr	r3, .L58+4
 377 000c C0F8E430 		str	r3, [r0, #228]
 378 0010 7047     		bx	lr
 379              	.L59:
 380 0012 00BF     		.align	2
 381              	.L58:
 382 0014 00495053 		.word	1397770496
 383 0018 01495053 		.word	1397770497
 384              		.size	spi_set_writeprotect, .-spi_set_writeprotect
 385              		.section	.text.spi_get_writeprotect_status,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	spi_get_writeprotect_status
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	spi_get_writeprotect_status, %function
 394              	spi_get_writeprotect_status:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 D0F8E800 		ldr	r0, [r0, #232]
 399 0004 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\cciOWoJA.s 			page 8


 400              		.size	spi_get_writeprotect_status, .-spi_get_writeprotect_status
 401 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 402              		.align	2
 403              		.type	cpu_irq_critical_section_counter, %object
 404              		.size	cpu_irq_critical_section_counter, 4
 405              	cpu_irq_critical_section_counter:
 406 0000 00000000 		.space	4
 407              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 408              		.type	cpu_irq_prev_interrupt_state, %object
 409              		.size	cpu_irq_prev_interrupt_state, 1
 410              	cpu_irq_prev_interrupt_state:
 411 0000 00       		.space	1
 412              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
