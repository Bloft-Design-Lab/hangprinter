ARM GAS  /tmp/ccbqkKlg.s 			page 1


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
  11              		.file	"pio.c"
  12              		.section	.text.pio_pull_up,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	pio_pull_up
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	pio_pull_up, %function
  21              	pio_pull_up:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0AB9     		cbnz	r2, .L5
  26 0002 0166     		str	r1, [r0, #96]
  27 0004 7047     		bx	lr
  28              	.L5:
  29 0006 4166     		str	r1, [r0, #100]
  30 0008 7047     		bx	lr
  31              		.size	pio_pull_up, .-pio_pull_up
  32 000a 00BF     		.section	.text.pio_set_debounce_filter,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	pio_set_debounce_filter
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	pio_set_debounce_filter, %function
  41              	pio_set_debounce_filter:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 4FF40043 		mov	r3, #32768
  46 0004 5200     		lsls	r2, r2, #1
  47 0006 B3FBF2F3 		udiv	r3, r3, r2
  48 000a 013B     		subs	r3, r3, #1
  49 000c C3F30D03 		ubfx	r3, r3, #0, #14
  50 0010 C0F88410 		str	r1, [r0, #132]
  51 0014 C0F88C30 		str	r3, [r0, #140]
  52 0018 7047     		bx	lr
  53              		.size	pio_set_debounce_filter, .-pio_set_debounce_filter
  54 001a 00BF     		.section	.text.pio_set,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	pio_set
ARM GAS  /tmp/ccbqkKlg.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu softvfp
  62              		.type	pio_set, %function
  63              	pio_set:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0163     		str	r1, [r0, #48]
  68 0002 7047     		bx	lr
  69              		.size	pio_set, .-pio_set
  70              		.section	.text.pio_clear,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	pio_clear
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
  78              		.type	pio_clear, %function
  79              	pio_clear:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 4163     		str	r1, [r0, #52]
  84 0002 7047     		bx	lr
  85              		.size	pio_clear, .-pio_clear
  86              		.section	.text.pio_get,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	pio_get
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu softvfp
  94              		.type	pio_get, %function
  95              	pio_get:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 21F00061 		bic	r1, r1, #134217728
 100 0004 B1F1405F 		cmp	r1, #805306368
 101 0008 0CBF     		ite	eq
 102 000a 836B     		ldreq	r3, [r0, #56]
 103 000c C36B     		ldrne	r3, [r0, #60]
 104 000e 1342     		tst	r3, r2
 105 0010 14BF     		ite	ne
 106 0012 0120     		movne	r0, #1
 107 0014 0020     		moveq	r0, #0
 108 0016 7047     		bx	lr
 109              		.size	pio_get, .-pio_get
 110              		.section	.text.pio_set_peripheral,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	pio_set_peripheral
 114              		.syntax unified
ARM GAS  /tmp/ccbqkKlg.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu softvfp
 118              		.type	pio_set_peripheral, %function
 119              	pio_set_peripheral:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 B1F1805F 		cmp	r1, #268435456
 124 0004 4264     		str	r2, [r0, #68]
 125 0006 16D0     		beq	.L14
 126 0008 0BD8     		bhi	.L15
 127 000a 49B1     		cbz	r1, .L12
 128 000c B1F1006F 		cmp	r1, #134217728
 129 0010 05D1     		bne	.L13
 130 0012 036F     		ldr	r3, [r0, #112]
 131 0014 016F     		ldr	r1, [r0, #112]
 132 0016 0B40     		ands	r3, r3, r1
 133 0018 23EA0203 		bic	r3, r3, r2
 134 001c 0367     		str	r3, [r0, #112]
 135              	.L13:
 136 001e 4260     		str	r2, [r0, #4]
 137              	.L12:
 138 0020 7047     		bx	lr
 139              	.L15:
 140 0022 B1F1405F 		cmp	r1, #805306368
 141 0026 FBD0     		beq	.L12
 142 0028 B1F1605F 		cmp	r1, #939524096
 143 002c F8D0     		beq	.L12
 144 002e B1F1205F 		cmp	r1, #671088640
 145 0032 F4D1     		bne	.L13
 146 0034 7047     		bx	lr
 147              	.L14:
 148 0036 036F     		ldr	r3, [r0, #112]
 149 0038 1343     		orrs	r3, r3, r2
 150 003a 0367     		str	r3, [r0, #112]
 151 003c EFE7     		b	.L13
 152              		.size	pio_set_peripheral, .-pio_set_peripheral
 153 003e 00BF     		.section	.text.pio_set_input,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	pio_set_input
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 161              		.type	pio_set_input, %function
 162              	pio_set_input:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 D307     		lsls	r3, r2, #31
 167 0002 4164     		str	r1, [r0, #68]
 168 0004 4CBF     		ite	mi
 169 0006 4166     		strmi	r1, [r0, #100]
 170 0008 0166     		strpl	r1, [r0, #96]
 171 000a 12F00A0F 		tst	r2, #10
ARM GAS  /tmp/ccbqkKlg.s 			page 4


 172 000e 14BF     		ite	ne
 173 0010 0162     		strne	r1, [r0, #32]
 174 0012 4162     		streq	r1, [r0, #36]
 175 0014 9307     		lsls	r3, r2, #30
 176 0016 06D4     		bmi	.L40
 177 0018 1307     		lsls	r3, r2, #28
 178 001a 48BF     		it	mi
 179 001c C0F88410 		strmi	r1, [r0, #132]
 180 0020 4161     		str	r1, [r0, #20]
 181 0022 0160     		str	r1, [r0]
 182 0024 7047     		bx	lr
 183              	.L40:
 184 0026 C0F88010 		str	r1, [r0, #128]
 185 002a 4161     		str	r1, [r0, #20]
 186 002c 0160     		str	r1, [r0]
 187 002e 7047     		bx	lr
 188              		.size	pio_set_input, .-pio_set_input
 189              		.section	.text.pio_set_output,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	pio_set_output
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu softvfp
 197              		.type	pio_set_output, %function
 198              	pio_set_output:
 199              		@ args = 4, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 10B4     		push	{r4}
 203 0002 019C     		ldr	r4, [sp, #4]
 204 0004 4164     		str	r1, [r0, #68]
 205 0006 84B1     		cbz	r4, .L42
 206 0008 4166     		str	r1, [r0, #100]
 207              	.L43:
 208 000a 33B1     		cbz	r3, .L44
 209 000c 0165     		str	r1, [r0, #80]
 210 000e 3AB9     		cbnz	r2, .L49
 211              	.L46:
 212 0010 4163     		str	r1, [r0, #52]
 213 0012 10BC     		pop	{r4}
 214 0014 0161     		str	r1, [r0, #16]
 215 0016 0160     		str	r1, [r0]
 216 0018 7047     		bx	lr
 217              	.L44:
 218 001a 4165     		str	r1, [r0, #84]
 219 001c 002A     		cmp	r2, #0
 220 001e F7D0     		beq	.L46
 221              	.L49:
 222 0020 0163     		str	r1, [r0, #48]
 223 0022 10BC     		pop	{r4}
 224 0024 0161     		str	r1, [r0, #16]
 225 0026 0160     		str	r1, [r0]
 226 0028 7047     		bx	lr
 227              	.L42:
 228 002a 0166     		str	r1, [r0, #96]
ARM GAS  /tmp/ccbqkKlg.s 			page 5


 229 002c EDE7     		b	.L43
 230              		.size	pio_set_output, .-pio_set_output
 231 002e 00BF     		.section	.text.pio_configure,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	pio_configure
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	pio_configure, %function
 240              	pio_configure:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 B1F1205F 		cmp	r1, #671088640
 244 0004 2ED0     		beq	.L52
 245 0006 70B5     		push	{r4, r5, r6, lr}
 246 0008 08D9     		bls	.L89
 247 000a B1F1405F 		cmp	r1, #805306368
 248 000e 16D0     		beq	.L55
 249 0010 B1F1605F 		cmp	r1, #939524096
 250 0014 13D0     		beq	.L55
 251              	.L69:
 252 0016 0023     		movs	r3, #0
 253 0018 1846     		mov	r0, r3
 254 001a 70BD     		pop	{r4, r5, r6, pc}
 255              	.L89:
 256 001c B1F1006F 		cmp	r1, #134217728
 257 0020 02D0     		beq	.L54
 258 0022 B1F1805F 		cmp	r1, #268435456
 259 0026 F6D1     		bne	.L69
 260              	.L54:
 261 0028 1E46     		mov	r6, r3
 262 002a 0446     		mov	r4, r0
 263 002c FFF7FEFF 		bl	pio_set_peripheral
 264 0030 0123     		movs	r3, #1
 265 0032 F007     		lsls	r0, r6, #31
 266 0034 4CBF     		ite	mi
 267 0036 6266     		strmi	r2, [r4, #100]
 268 0038 2266     		strpl	r2, [r4, #96]
 269 003a 1846     		mov	r0, r3
 270 003c 70BD     		pop	{r4, r5, r6, pc}
 271              	.L55:
 272 003e 03F00404 		and	r4, r3, #4
 273 0042 DB07     		lsls	r3, r3, #31
 274 0044 4264     		str	r2, [r0, #68]
 275 0046 4CBF     		ite	mi
 276 0048 4266     		strmi	r2, [r0, #100]
 277 004a 0266     		strpl	r2, [r0, #96]
 278 004c 14BB     		cbnz	r4, .L90
 279 004e 4265     		str	r2, [r0, #84]
 280              	.L66:
 281 0050 0123     		movs	r3, #1
 282 0052 B1F1605F 		cmp	r1, #939524096
 283 0056 0CBF     		ite	eq
 284 0058 0263     		streq	r2, [r0, #48]
 285 005a 4263     		strne	r2, [r0, #52]
ARM GAS  /tmp/ccbqkKlg.s 			page 6


 286 005c 0261     		str	r2, [r0, #16]
 287 005e 0260     		str	r2, [r0]
 288 0060 1846     		mov	r0, r3
 289 0062 70BD     		pop	{r4, r5, r6, pc}
 290              	.L52:
 291 0064 D907     		lsls	r1, r3, #31
 292 0066 4264     		str	r2, [r0, #68]
 293 0068 4CBF     		ite	mi
 294 006a 4266     		strmi	r2, [r0, #100]
 295 006c 0266     		strpl	r2, [r0, #96]
 296 006e 13F00A0F 		tst	r3, #10
 297 0072 14BF     		ite	ne
 298 0074 0262     		strne	r2, [r0, #32]
 299 0076 4262     		streq	r2, [r0, #36]
 300 0078 9907     		lsls	r1, r3, #30
 301 007a 08D4     		bmi	.L91
 302 007c 1907     		lsls	r1, r3, #28
 303 007e 48BF     		it	mi
 304 0080 C0F88420 		strmi	r2, [r0, #132]
 305              	.L62:
 306 0084 0123     		movs	r3, #1
 307 0086 4261     		str	r2, [r0, #20]
 308 0088 0260     		str	r2, [r0]
 309 008a 1846     		mov	r0, r3
 310 008c 7047     		bx	lr
 311              	.L91:
 312 008e C0F88020 		str	r2, [r0, #128]
 313 0092 F7E7     		b	.L62
 314              	.L90:
 315 0094 0265     		str	r2, [r0, #80]
 316 0096 DBE7     		b	.L66
 317              		.size	pio_configure, .-pio_configure
 318              		.section	.text.pio_get_output_data_status,"ax",%progbits
 319              		.align	1
 320              		.p2align 2,,3
 321              		.global	pio_get_output_data_status
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu softvfp
 326              		.type	pio_get_output_data_status, %function
 327              	pio_get_output_data_status:
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330              		@ link register save eliminated.
 331 0000 836B     		ldr	r3, [r0, #56]
 332 0002 0B42     		tst	r3, r1
 333 0004 14BF     		ite	ne
 334 0006 0120     		movne	r0, #1
 335 0008 0020     		moveq	r0, #0
 336 000a 7047     		bx	lr
 337              		.size	pio_get_output_data_status, .-pio_get_output_data_status
 338              		.section	.text.pio_set_multi_driver,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	pio_set_multi_driver
 342              		.syntax unified
ARM GAS  /tmp/ccbqkKlg.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu softvfp
 346              		.type	pio_set_multi_driver, %function
 347              	pio_set_multi_driver:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 0AB9     		cbnz	r2, .L96
 352 0002 4165     		str	r1, [r0, #84]
 353 0004 7047     		bx	lr
 354              	.L96:
 355 0006 0165     		str	r1, [r0, #80]
 356 0008 7047     		bx	lr
 357              		.size	pio_set_multi_driver, .-pio_set_multi_driver
 358 000a 00BF     		.section	.text.pio_get_multi_driver_status,"ax",%progbits
 359              		.align	1
 360              		.p2align 2,,3
 361              		.global	pio_get_multi_driver_status
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu softvfp
 366              		.type	pio_get_multi_driver_status, %function
 367              	pio_get_multi_driver_status:
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		@ link register save eliminated.
 371 0000 806D     		ldr	r0, [r0, #88]
 372 0002 7047     		bx	lr
 373              		.size	pio_get_multi_driver_status, .-pio_get_multi_driver_status
 374              		.section	.text.pio_enable_output_write,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	pio_enable_output_write
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu softvfp
 382              		.type	pio_enable_output_write, %function
 383              	pio_enable_output_write:
 384              		@ args = 0, pretend = 0, frame = 0
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386              		@ link register save eliminated.
 387 0000 C0F8A010 		str	r1, [r0, #160]
 388 0004 7047     		bx	lr
 389              		.size	pio_enable_output_write, .-pio_enable_output_write
 390 0006 00BF     		.section	.text.pio_disable_output_write,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	pio_disable_output_write
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu softvfp
 398              		.type	pio_disable_output_write, %function
 399              	pio_disable_output_write:
ARM GAS  /tmp/ccbqkKlg.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402              		@ link register save eliminated.
 403 0000 C0F8A410 		str	r1, [r0, #164]
 404 0004 7047     		bx	lr
 405              		.size	pio_disable_output_write, .-pio_disable_output_write
 406 0006 00BF     		.section	.text.pio_get_output_write_status,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	pio_get_output_write_status
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu softvfp
 414              		.type	pio_get_output_write_status, %function
 415              	pio_get_output_write_status:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 D0F8A800 		ldr	r0, [r0, #168]
 420 0004 7047     		bx	lr
 421              		.size	pio_get_output_write_status, .-pio_get_output_write_status
 422 0006 00BF     		.section	.text.pio_sync_output_write,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	pio_sync_output_write
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu softvfp
 430              		.type	pio_sync_output_write, %function
 431              	pio_sync_output_write:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 8163     		str	r1, [r0, #56]
 436 0002 7047     		bx	lr
 437              		.size	pio_sync_output_write, .-pio_sync_output_write
 438              		.section	.text.pio_enable_interrupt,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	pio_enable_interrupt
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu softvfp
 446              		.type	pio_enable_interrupt, %function
 447              	pio_enable_interrupt:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450              		@ link register save eliminated.
 451 0000 0164     		str	r1, [r0, #64]
 452 0002 7047     		bx	lr
 453              		.size	pio_enable_interrupt, .-pio_enable_interrupt
 454              		.section	.text.pio_disable_interrupt,"ax",%progbits
 455              		.align	1
 456              		.p2align 2,,3
ARM GAS  /tmp/ccbqkKlg.s 			page 9


 457              		.global	pio_disable_interrupt
 458              		.syntax unified
 459              		.thumb
 460              		.thumb_func
 461              		.fpu softvfp
 462              		.type	pio_disable_interrupt, %function
 463              	pio_disable_interrupt:
 464              		@ args = 0, pretend = 0, frame = 0
 465              		@ frame_needed = 0, uses_anonymous_args = 0
 466              		@ link register save eliminated.
 467 0000 4164     		str	r1, [r0, #68]
 468 0002 7047     		bx	lr
 469              		.size	pio_disable_interrupt, .-pio_disable_interrupt
 470              		.section	.text.pio_get_interrupt_status,"ax",%progbits
 471              		.align	1
 472              		.p2align 2,,3
 473              		.global	pio_get_interrupt_status
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu softvfp
 478              		.type	pio_get_interrupt_status, %function
 479              	pio_get_interrupt_status:
 480              		@ args = 0, pretend = 0, frame = 0
 481              		@ frame_needed = 0, uses_anonymous_args = 0
 482              		@ link register save eliminated.
 483 0000 C06C     		ldr	r0, [r0, #76]
 484 0002 7047     		bx	lr
 485              		.size	pio_get_interrupt_status, .-pio_get_interrupt_status
 486              		.section	.text.pio_get_interrupt_mask,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	pio_get_interrupt_mask
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu softvfp
 494              		.type	pio_get_interrupt_mask, %function
 495              	pio_get_interrupt_mask:
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498              		@ link register save eliminated.
 499 0000 806C     		ldr	r0, [r0, #72]
 500 0002 7047     		bx	lr
 501              		.size	pio_get_interrupt_mask, .-pio_get_interrupt_mask
 502              		.section	.text.pio_set_additional_interrupt_mode,"ax",%progbits
 503              		.align	1
 504              		.p2align 2,,3
 505              		.global	pio_set_additional_interrupt_mode
 506              		.syntax unified
 507              		.thumb
 508              		.thumb_func
 509              		.fpu softvfp
 510              		.type	pio_set_additional_interrupt_mode, %function
 511              	pio_set_additional_interrupt_mode:
 512              		@ args = 0, pretend = 0, frame = 0
 513              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccbqkKlg.s 			page 10


 514              		@ link register save eliminated.
 515 0000 D306     		lsls	r3, r2, #27
 516 0002 0ED5     		bpl	.L107
 517 0004 9306     		lsls	r3, r2, #26
 518 0006 C0F8B010 		str	r1, [r0, #176]
 519 000a 4CBF     		ite	mi
 520 000c C0F8D410 		strmi	r1, [r0, #212]
 521 0010 C0F8D010 		strpl	r1, [r0, #208]
 522 0014 5306     		lsls	r3, r2, #25
 523 0016 4CBF     		ite	mi
 524 0018 C0F8C010 		strmi	r1, [r0, #192]
 525 001c C0F8C410 		strpl	r1, [r0, #196]
 526 0020 7047     		bx	lr
 527              	.L107:
 528 0022 C0F8B410 		str	r1, [r0, #180]
 529 0026 7047     		bx	lr
 530              		.size	pio_set_additional_interrupt_mode, .-pio_set_additional_interrupt_mode
 531              		.section	.text.pio_configure_interrupt,"ax",%progbits
 532              		.align	1
 533              		.p2align 2,,3
 534              		.global	pio_configure_interrupt
 535              		.syntax unified
 536              		.thumb
 537              		.thumb_func
 538              		.fpu softvfp
 539              		.type	pio_configure_interrupt, %function
 540              	pio_configure_interrupt:
 541              		@ args = 0, pretend = 0, frame = 0
 542              		@ frame_needed = 0, uses_anonymous_args = 0
 543              		@ link register save eliminated.
 544 0000 FFF7FEBF 		b	pio_set_additional_interrupt_mode
 545              		.size	pio_configure_interrupt, .-pio_configure_interrupt
 546              		.section	.text.pio_set_writeprotect,"ax",%progbits
 547              		.align	1
 548              		.p2align 2,,3
 549              		.global	pio_set_writeprotect
 550              		.syntax unified
 551              		.thumb
 552              		.thumb_func
 553              		.fpu softvfp
 554              		.type	pio_set_writeprotect, %function
 555              	pio_set_writeprotect:
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558              		@ link register save eliminated.
 559 0000 034B     		ldr	r3, .L114
 560 0002 01F00101 		and	r1, r1, #1
 561 0006 0B43     		orrs	r3, r3, r1
 562 0008 C0F8E430 		str	r3, [r0, #228]
 563 000c 7047     		bx	lr
 564              	.L115:
 565 000e 00BF     		.align	2
 566              	.L114:
 567 0010 004F4950 		.word	1346981632
 568              		.size	pio_set_writeprotect, .-pio_set_writeprotect
 569              		.section	.text.pio_get_writeprotect_status,"ax",%progbits
 570              		.align	1
ARM GAS  /tmp/ccbqkKlg.s 			page 11


 571              		.p2align 2,,3
 572              		.global	pio_get_writeprotect_status
 573              		.syntax unified
 574              		.thumb
 575              		.thumb_func
 576              		.fpu softvfp
 577              		.type	pio_get_writeprotect_status, %function
 578              	pio_get_writeprotect_status:
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581              		@ link register save eliminated.
 582 0000 D0F8E800 		ldr	r0, [r0, #232]
 583 0004 7047     		bx	lr
 584              		.size	pio_get_writeprotect_status, .-pio_get_writeprotect_status
 585 0006 00BF     		.section	.text.pio_get_pin_value,"ax",%progbits
 586              		.align	1
 587              		.p2align 2,,3
 588              		.global	pio_get_pin_value
 589              		.syntax unified
 590              		.thumb
 591              		.thumb_func
 592              		.fpu softvfp
 593              		.type	pio_get_pin_value, %function
 594              	pio_get_pin_value:
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 597              		@ link register save eliminated.
 598 0000 4309     		lsrs	r3, r0, #5
 599 0002 03F50013 		add	r3, r3, #2097152
 600 0006 03F20773 		addw	r3, r3, #1799
 601 000a 5B02     		lsls	r3, r3, #9
 602 000c DB6B     		ldr	r3, [r3, #60]
 603 000e 00F01F00 		and	r0, r0, #31
 604 0012 23FA00F0 		lsr	r0, r3, r0
 605 0016 00F00100 		and	r0, r0, #1
 606 001a 7047     		bx	lr
 607              		.size	pio_get_pin_value, .-pio_get_pin_value
 608              		.section	.text.pio_set_pin_high,"ax",%progbits
 609              		.align	1
 610              		.p2align 2,,3
 611              		.global	pio_set_pin_high
 612              		.syntax unified
 613              		.thumb
 614              		.thumb_func
 615              		.fpu softvfp
 616              		.type	pio_set_pin_high, %function
 617              	pio_set_pin_high:
 618              		@ args = 0, pretend = 0, frame = 0
 619              		@ frame_needed = 0, uses_anonymous_args = 0
 620              		@ link register save eliminated.
 621 0000 0122     		movs	r2, #1
 622 0002 4309     		lsrs	r3, r0, #5
 623 0004 03F50013 		add	r3, r3, #2097152
 624 0008 03F20773 		addw	r3, r3, #1799
 625 000c 00F01F00 		and	r0, r0, #31
 626 0010 5B02     		lsls	r3, r3, #9
 627 0012 02FA00F0 		lsl	r0, r2, r0
ARM GAS  /tmp/ccbqkKlg.s 			page 12


 628 0016 1863     		str	r0, [r3, #48]
 629 0018 7047     		bx	lr
 630              		.size	pio_set_pin_high, .-pio_set_pin_high
 631 001a 00BF     		.section	.text.pio_set_pin_low,"ax",%progbits
 632              		.align	1
 633              		.p2align 2,,3
 634              		.global	pio_set_pin_low
 635              		.syntax unified
 636              		.thumb
 637              		.thumb_func
 638              		.fpu softvfp
 639              		.type	pio_set_pin_low, %function
 640              	pio_set_pin_low:
 641              		@ args = 0, pretend = 0, frame = 0
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643              		@ link register save eliminated.
 644 0000 0122     		movs	r2, #1
 645 0002 4309     		lsrs	r3, r0, #5
 646 0004 03F50013 		add	r3, r3, #2097152
 647 0008 03F20773 		addw	r3, r3, #1799
 648 000c 00F01F00 		and	r0, r0, #31
 649 0010 5B02     		lsls	r3, r3, #9
 650 0012 02FA00F0 		lsl	r0, r2, r0
 651 0016 5863     		str	r0, [r3, #52]
 652 0018 7047     		bx	lr
 653              		.size	pio_set_pin_low, .-pio_set_pin_low
 654 001a 00BF     		.section	.text.pio_toggle_pin,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	pio_toggle_pin
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu softvfp
 662              		.type	pio_toggle_pin, %function
 663              	pio_toggle_pin:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666              		@ link register save eliminated.
 667 0000 0122     		movs	r2, #1
 668 0002 4309     		lsrs	r3, r0, #5
 669 0004 03F50013 		add	r3, r3, #2097152
 670 0008 03F20773 		addw	r3, r3, #1799
 671 000c 5B02     		lsls	r3, r3, #9
 672 000e 996B     		ldr	r1, [r3, #56]
 673 0010 00F01F00 		and	r0, r0, #31
 674 0014 02FA00F0 		lsl	r0, r2, r0
 675 0018 0142     		tst	r1, r0
 676 001a 14BF     		ite	ne
 677 001c 5863     		strne	r0, [r3, #52]
 678 001e 1863     		streq	r0, [r3, #48]
 679 0020 7047     		bx	lr
 680              		.size	pio_toggle_pin, .-pio_toggle_pin
 681 0022 00BF     		.section	.text.pio_configure_pin,"ax",%progbits
 682              		.align	1
 683              		.p2align 2,,3
 684              		.global	pio_configure_pin
ARM GAS  /tmp/ccbqkKlg.s 			page 13


 685              		.syntax unified
 686              		.thumb
 687              		.thumb_func
 688              		.fpu softvfp
 689              		.type	pio_configure_pin, %function
 690              	pio_configure_pin:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693              		@ link register save eliminated.
 694 0000 4309     		lsrs	r3, r0, #5
 695 0002 03F50013 		add	r3, r3, #2097152
 696 0006 01F0F042 		and	r2, r1, #2013265920
 697 000a 03F20773 		addw	r3, r3, #1799
 698 000e B2F1205F 		cmp	r2, #671088640
 699 0012 4FEA4323 		lsl	r3, r3, #9
 700 0016 4FD0     		beq	.L125
 701 0018 30B4     		push	{r4, r5}
 702 001a 2AD8     		bhi	.L126
 703 001c B2F1006F 		cmp	r2, #134217728
 704 0020 13D0     		beq	.L127
 705 0022 B2F1805F 		cmp	r2, #268435456
 706 0026 44D1     		bne	.L144
 707 0028 0124     		movs	r4, #1
 708 002a 00F01F02 		and	r2, r0, #31
 709 002e 04FA02F2 		lsl	r2, r4, r2
 710 0032 5A64     		str	r2, [r3, #68]
 711 0034 186F     		ldr	r0, [r3, #112]
 712 0036 CD07     		lsls	r5, r1, #31
 713 0038 40EA0200 		orr	r0, r0, r2
 714 003c 1867     		str	r0, [r3, #112]
 715 003e 5A60     		str	r2, [r3, #4]
 716 0040 13D4     		bmi	.L158
 717              	.L131:
 718 0042 2046     		mov	r0, r4
 719 0044 30BC     		pop	{r4, r5}
 720 0046 1A66     		str	r2, [r3, #96]
 721 0048 7047     		bx	lr
 722              	.L127:
 723 004a 0124     		movs	r4, #1
 724 004c 00F01F02 		and	r2, r0, #31
 725 0050 04FA02F2 		lsl	r2, r4, r2
 726 0054 5A64     		str	r2, [r3, #68]
 727 0056 186F     		ldr	r0, [r3, #112]
 728 0058 1D6F     		ldr	r5, [r3, #112]
 729 005a C907     		lsls	r1, r1, #31
 730 005c 00EA0500 		and	r0, r0, r5
 731 0060 20EA0200 		bic	r0, r0, r2
 732 0064 1867     		str	r0, [r3, #112]
 733 0066 5A60     		str	r2, [r3, #4]
 734 0068 EBD5     		bpl	.L131
 735              	.L158:
 736 006a 2046     		mov	r0, r4
 737 006c 30BC     		pop	{r4, r5}
 738 006e 5A66     		str	r2, [r3, #100]
 739 0070 7047     		bx	lr
 740              	.L126:
 741 0072 B2F1405F 		cmp	r2, #805306368
ARM GAS  /tmp/ccbqkKlg.s 			page 14


 742 0076 02D0     		beq	.L129
 743 0078 B2F1605F 		cmp	r2, #939524096
 744 007c 19D1     		bne	.L144
 745              	.L129:
 746 007e 0122     		movs	r2, #1
 747 0080 00F01F00 		and	r0, r0, #31
 748 0084 8240     		lsls	r2, r2, r0
 749 0086 01F00404 		and	r4, r1, #4
 750 008a 01F06050 		and	r0, r1, #939524096
 751 008e C907     		lsls	r1, r1, #31
 752 0090 5A64     		str	r2, [r3, #68]
 753 0092 4CBF     		ite	mi
 754 0094 5A66     		strmi	r2, [r3, #100]
 755 0096 1A66     		strpl	r2, [r3, #96]
 756 0098 002C     		cmp	r4, #0
 757 009a 2BD1     		bne	.L159
 758 009c 5A65     		str	r2, [r3, #84]
 759              	.L141:
 760 009e B0F1605F 		cmp	r0, #939524096
 761 00a2 0CBF     		ite	eq
 762 00a4 1A63     		streq	r2, [r3, #48]
 763 00a6 5A63     		strne	r2, [r3, #52]
 764 00a8 0120     		movs	r0, #1
 765 00aa 30BC     		pop	{r4, r5}
 766 00ac 1A61     		str	r2, [r3, #16]
 767 00ae 1A60     		str	r2, [r3]
 768 00b0 7047     		bx	lr
 769              	.L144:
 770 00b2 0020     		movs	r0, #0
 771 00b4 30BC     		pop	{r4, r5}
 772 00b6 7047     		bx	lr
 773              	.L125:
 774 00b8 0122     		movs	r2, #1
 775 00ba 00F01F00 		and	r0, r0, #31
 776 00be 8240     		lsls	r2, r2, r0
 777 00c0 C807     		lsls	r0, r1, #31
 778 00c2 5A64     		str	r2, [r3, #68]
 779 00c4 4CBF     		ite	mi
 780 00c6 5A66     		strmi	r2, [r3, #100]
 781 00c8 1A66     		strpl	r2, [r3, #96]
 782 00ca 11F00A0F 		tst	r1, #10
 783 00ce 14BF     		ite	ne
 784 00d0 1A62     		strne	r2, [r3, #32]
 785 00d2 5A62     		streq	r2, [r3, #36]
 786 00d4 8807     		lsls	r0, r1, #30
 787 00d6 07D4     		bmi	.L160
 788 00d8 0807     		lsls	r0, r1, #28
 789 00da 48BF     		it	mi
 790 00dc C3F88420 		strmi	r2, [r3, #132]
 791 00e0 0120     		movs	r0, #1
 792 00e2 5A61     		str	r2, [r3, #20]
 793 00e4 1A60     		str	r2, [r3]
 794 00e6 7047     		bx	lr
 795              	.L160:
 796 00e8 C3F88020 		str	r2, [r3, #128]
 797 00ec 0120     		movs	r0, #1
 798 00ee 5A61     		str	r2, [r3, #20]
ARM GAS  /tmp/ccbqkKlg.s 			page 15


 799 00f0 1A60     		str	r2, [r3]
 800 00f2 7047     		bx	lr
 801              	.L159:
 802 00f4 1A65     		str	r2, [r3, #80]
 803 00f6 D2E7     		b	.L141
 804              		.size	pio_configure_pin, .-pio_configure_pin
 805              		.section	.text.pio_set_pin_group_high,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.global	pio_set_pin_group_high
 809              		.syntax unified
 810              		.thumb
 811              		.thumb_func
 812              		.fpu softvfp
 813              		.type	pio_set_pin_group_high, %function
 814              	pio_set_pin_group_high:
 815              		@ args = 0, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817              		@ link register save eliminated.
 818 0000 0163     		str	r1, [r0, #48]
 819 0002 7047     		bx	lr
 820              		.size	pio_set_pin_group_high, .-pio_set_pin_group_high
 821              		.section	.text.pio_set_pin_group_low,"ax",%progbits
 822              		.align	1
 823              		.p2align 2,,3
 824              		.global	pio_set_pin_group_low
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu softvfp
 829              		.type	pio_set_pin_group_low, %function
 830              	pio_set_pin_group_low:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833              		@ link register save eliminated.
 834 0000 4163     		str	r1, [r0, #52]
 835 0002 7047     		bx	lr
 836              		.size	pio_set_pin_group_low, .-pio_set_pin_group_low
 837              		.section	.text.pio_toggle_pin_group,"ax",%progbits
 838              		.align	1
 839              		.p2align 2,,3
 840              		.global	pio_toggle_pin_group
 841              		.syntax unified
 842              		.thumb
 843              		.thumb_func
 844              		.fpu softvfp
 845              		.type	pio_toggle_pin_group, %function
 846              	pio_toggle_pin_group:
 847              		@ args = 0, pretend = 0, frame = 0
 848              		@ frame_needed = 0, uses_anonymous_args = 0
 849              		@ link register save eliminated.
 850 0000 836B     		ldr	r3, [r0, #56]
 851 0002 0B42     		tst	r3, r1
 852 0004 14BF     		ite	ne
 853 0006 4163     		strne	r1, [r0, #52]
 854 0008 0163     		streq	r1, [r0, #48]
 855 000a 7047     		bx	lr
ARM GAS  /tmp/ccbqkKlg.s 			page 16


 856              		.size	pio_toggle_pin_group, .-pio_toggle_pin_group
 857              		.section	.text.pio_configure_pin_group,"ax",%progbits
 858              		.align	1
 859              		.p2align 2,,3
 860              		.global	pio_configure_pin_group
 861              		.syntax unified
 862              		.thumb
 863              		.thumb_func
 864              		.fpu softvfp
 865              		.type	pio_configure_pin_group, %function
 866              	pio_configure_pin_group:
 867              		@ args = 0, pretend = 0, frame = 0
 868              		@ frame_needed = 0, uses_anonymous_args = 0
 869              		@ link register save eliminated.
 870 0000 10B4     		push	{r4}
 871 0002 02F0F044 		and	r4, r2, #2013265920
 872 0006 B4F1205F 		cmp	r4, #671088640
 873 000a 0346     		mov	r3, r0
 874 000c 3FD0     		beq	.L168
 875 000e 20D8     		bhi	.L169
 876 0010 B4F1006F 		cmp	r4, #134217728
 877 0014 0ED0     		beq	.L170
 878 0016 B4F1805F 		cmp	r4, #268435456
 879 001a 35D1     		bne	.L187
 880 001c 4164     		str	r1, [r0, #68]
 881 001e 006F     		ldr	r0, [r0, #112]
 882 0020 D407     		lsls	r4, r2, #31
 883 0022 40EA0100 		orr	r0, r0, r1
 884 0026 1867     		str	r0, [r3, #112]
 885 0028 5960     		str	r1, [r3, #4]
 886 002a 0ED4     		bmi	.L198
 887              	.L174:
 888 002c 0120     		movs	r0, #1
 889 002e 1966     		str	r1, [r3, #96]
 890 0030 10BC     		pop	{r4}
 891 0032 7047     		bx	lr
 892              	.L170:
 893 0034 4164     		str	r1, [r0, #68]
 894 0036 006F     		ldr	r0, [r0, #112]
 895 0038 1C6F     		ldr	r4, [r3, #112]
 896 003a D207     		lsls	r2, r2, #31
 897 003c 00EA0400 		and	r0, r0, r4
 898 0040 20EA0100 		bic	r0, r0, r1
 899 0044 1867     		str	r0, [r3, #112]
 900 0046 5960     		str	r1, [r3, #4]
 901 0048 F0D5     		bpl	.L174
 902              	.L198:
 903 004a 0120     		movs	r0, #1
 904 004c 5966     		str	r1, [r3, #100]
 905 004e 10BC     		pop	{r4}
 906 0050 7047     		bx	lr
 907              	.L169:
 908 0052 B4F1405F 		cmp	r4, #805306368
 909 0056 02D0     		beq	.L172
 910 0058 B4F1605F 		cmp	r4, #939524096
 911 005c 14D1     		bne	.L187
 912              	.L172:
ARM GAS  /tmp/ccbqkKlg.s 			page 17


 913 005e 02F06050 		and	r0, r2, #939524096
 914 0062 02F00404 		and	r4, r2, #4
 915 0066 D207     		lsls	r2, r2, #31
 916 0068 5964     		str	r1, [r3, #68]
 917 006a 4CBF     		ite	mi
 918 006c 5966     		strmi	r1, [r3, #100]
 919 006e 1966     		strpl	r1, [r3, #96]
 920 0070 2CBB     		cbnz	r4, .L199
 921 0072 5965     		str	r1, [r3, #84]
 922              	.L184:
 923 0074 B0F1605F 		cmp	r0, #939524096
 924 0078 0CBF     		ite	eq
 925 007a 1963     		streq	r1, [r3, #48]
 926 007c 5963     		strne	r1, [r3, #52]
 927 007e 0120     		movs	r0, #1
 928 0080 1961     		str	r1, [r3, #16]
 929 0082 10BC     		pop	{r4}
 930 0084 1960     		str	r1, [r3]
 931 0086 7047     		bx	lr
 932              	.L187:
 933 0088 0020     		movs	r0, #0
 934 008a 10BC     		pop	{r4}
 935 008c 7047     		bx	lr
 936              	.L168:
 937 008e 4164     		str	r1, [r0, #68]
 938 0090 D007     		lsls	r0, r2, #31
 939 0092 4CBF     		ite	mi
 940 0094 5966     		strmi	r1, [r3, #100]
 941 0096 1966     		strpl	r1, [r3, #96]
 942 0098 12F00A0F 		tst	r2, #10
 943 009c 14BF     		ite	ne
 944 009e 1962     		strne	r1, [r3, #32]
 945 00a0 5962     		streq	r1, [r3, #36]
 946 00a2 9407     		lsls	r4, r2, #30
 947 00a4 08D4     		bmi	.L200
 948 00a6 1007     		lsls	r0, r2, #28
 949 00a8 48BF     		it	mi
 950 00aa C3F88410 		strmi	r1, [r3, #132]
 951              	.L180:
 952 00ae 5961     		str	r1, [r3, #20]
 953 00b0 0120     		movs	r0, #1
 954 00b2 1960     		str	r1, [r3]
 955 00b4 10BC     		pop	{r4}
 956 00b6 7047     		bx	lr
 957              	.L200:
 958 00b8 C3F88010 		str	r1, [r3, #128]
 959 00bc F7E7     		b	.L180
 960              	.L199:
 961 00be 1965     		str	r1, [r3, #80]
 962 00c0 D8E7     		b	.L184
 963              		.size	pio_configure_pin_group, .-pio_configure_pin_group
 964 00c2 00BF     		.section	.text.pio_enable_pin_interrupt,"ax",%progbits
 965              		.align	1
 966              		.p2align 2,,3
 967              		.global	pio_enable_pin_interrupt
 968              		.syntax unified
 969              		.thumb
ARM GAS  /tmp/ccbqkKlg.s 			page 18


 970              		.thumb_func
 971              		.fpu softvfp
 972              		.type	pio_enable_pin_interrupt, %function
 973              	pio_enable_pin_interrupt:
 974              		@ args = 0, pretend = 0, frame = 0
 975              		@ frame_needed = 0, uses_anonymous_args = 0
 976              		@ link register save eliminated.
 977 0000 0122     		movs	r2, #1
 978 0002 4309     		lsrs	r3, r0, #5
 979 0004 03F50013 		add	r3, r3, #2097152
 980 0008 03F20773 		addw	r3, r3, #1799
 981 000c 00F01F00 		and	r0, r0, #31
 982 0010 5B02     		lsls	r3, r3, #9
 983 0012 02FA00F0 		lsl	r0, r2, r0
 984 0016 1864     		str	r0, [r3, #64]
 985 0018 7047     		bx	lr
 986              		.size	pio_enable_pin_interrupt, .-pio_enable_pin_interrupt
 987 001a 00BF     		.section	.text.pio_disable_pin_interrupt,"ax",%progbits
 988              		.align	1
 989              		.p2align 2,,3
 990              		.global	pio_disable_pin_interrupt
 991              		.syntax unified
 992              		.thumb
 993              		.thumb_func
 994              		.fpu softvfp
 995              		.type	pio_disable_pin_interrupt, %function
 996              	pio_disable_pin_interrupt:
 997              		@ args = 0, pretend = 0, frame = 0
 998              		@ frame_needed = 0, uses_anonymous_args = 0
 999              		@ link register save eliminated.
 1000 0000 0122     		movs	r2, #1
 1001 0002 4309     		lsrs	r3, r0, #5
 1002 0004 03F50013 		add	r3, r3, #2097152
 1003 0008 03F20773 		addw	r3, r3, #1799
 1004 000c 00F01F00 		and	r0, r0, #31
 1005 0010 5B02     		lsls	r3, r3, #9
 1006 0012 02FA00F0 		lsl	r0, r2, r0
 1007 0016 5864     		str	r0, [r3, #68]
 1008 0018 7047     		bx	lr
 1009              		.size	pio_disable_pin_interrupt, .-pio_disable_pin_interrupt
 1010 001a 00BF     		.section	.text.pio_get_pin_group,"ax",%progbits
 1011              		.align	1
 1012              		.p2align 2,,3
 1013              		.global	pio_get_pin_group
 1014              		.syntax unified
 1015              		.thumb
 1016              		.thumb_func
 1017              		.fpu softvfp
 1018              		.type	pio_get_pin_group, %function
 1019              	pio_get_pin_group:
 1020              		@ args = 0, pretend = 0, frame = 0
 1021              		@ frame_needed = 0, uses_anonymous_args = 0
 1022              		@ link register save eliminated.
 1023 0000 4009     		lsrs	r0, r0, #5
 1024 0002 00F50010 		add	r0, r0, #2097152
 1025 0006 00F20770 		addw	r0, r0, #1799
 1026 000a 4002     		lsls	r0, r0, #9
ARM GAS  /tmp/ccbqkKlg.s 			page 19


 1027 000c 7047     		bx	lr
 1028              		.size	pio_get_pin_group, .-pio_get_pin_group
 1029 000e 00BF     		.section	.text.pio_get_pin_group_id,"ax",%progbits
 1030              		.align	1
 1031              		.p2align 2,,3
 1032              		.global	pio_get_pin_group_id
 1033              		.syntax unified
 1034              		.thumb
 1035              		.thumb_func
 1036              		.fpu softvfp
 1037              		.type	pio_get_pin_group_id, %function
 1038              	pio_get_pin_group_id:
 1039              		@ args = 0, pretend = 0, frame = 0
 1040              		@ frame_needed = 0, uses_anonymous_args = 0
 1041              		@ link register save eliminated.
 1042 0000 4009     		lsrs	r0, r0, #5
 1043 0002 0B30     		adds	r0, r0, #11
 1044 0004 7047     		bx	lr
 1045              		.size	pio_get_pin_group_id, .-pio_get_pin_group_id
 1046 0006 00BF     		.section	.text.pio_get_pin_group_mask,"ax",%progbits
 1047              		.align	1
 1048              		.p2align 2,,3
 1049              		.global	pio_get_pin_group_mask
 1050              		.syntax unified
 1051              		.thumb
 1052              		.thumb_func
 1053              		.fpu softvfp
 1054              		.type	pio_get_pin_group_mask, %function
 1055              	pio_get_pin_group_mask:
 1056              		@ args = 0, pretend = 0, frame = 0
 1057              		@ frame_needed = 0, uses_anonymous_args = 0
 1058              		@ link register save eliminated.
 1059 0000 0123     		movs	r3, #1
 1060 0002 00F01F00 		and	r0, r0, #31
 1061 0006 03FA00F0 		lsl	r0, r3, r0
 1062 000a 7047     		bx	lr
 1063              		.size	pio_get_pin_group_mask, .-pio_get_pin_group_mask
 1064              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1065              		.align	2
 1066              		.type	cpu_irq_critical_section_counter, %object
 1067              		.size	cpu_irq_critical_section_counter, 4
 1068              	cpu_irq_critical_section_counter:
 1069 0000 00000000 		.space	4
 1070              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1071              		.type	cpu_irq_prev_interrupt_state, %object
 1072              		.size	cpu_irq_prev_interrupt_state, 1
 1073              	cpu_irq_prev_interrupt_state:
 1074 0000 00       		.space	1
 1075              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
