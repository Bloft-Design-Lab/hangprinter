ARM GAS  /tmp/ccgBKcrT.s 			page 1


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
  13              		.file	"pio.c"
  14              		.section	.text.pio_pull_up,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	pio_pull_up
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pio_pull_up, %function
  23              	pio_pull_up:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0AB9     		cbnz	r2, .L5
  28 0002 0166     		str	r1, [r0, #96]
  29 0004 7047     		bx	lr
  30              	.L5:
  31 0006 4166     		str	r1, [r0, #100]
  32 0008 7047     		bx	lr
  33              		.size	pio_pull_up, .-pio_pull_up
  34 000a 00BF     		.section	.text.pio_set_debounce_filter,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	pio_set_debounce_filter
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	pio_set_debounce_filter, %function
  43              	pio_set_debounce_filter:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 5300     		lsls	r3, r2, #1
  48 0002 4FF40042 		mov	r2, #32768
  49 0006 B2FBF3F2 		udiv	r2, r2, r3
  50 000a 013A     		subs	r2, r2, #1
  51 000c C2F30D02 		ubfx	r2, r2, #0, #14
  52 0010 C0F88410 		str	r1, [r0, #132]
  53 0014 C0F88C20 		str	r2, [r0, #140]
  54 0018 7047     		bx	lr
  55              		.size	pio_set_debounce_filter, .-pio_set_debounce_filter
  56 001a 00BF     		.section	.text.pio_set,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccgBKcrT.s 			page 2


  58              		.p2align 2,,3
  59              		.global	pio_set
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  64              		.type	pio_set, %function
  65              	pio_set:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68              		@ link register save eliminated.
  69 0000 0163     		str	r1, [r0, #48]
  70 0002 7047     		bx	lr
  71              		.size	pio_set, .-pio_set
  72              		.section	.text.pio_clear,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	pio_clear
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	pio_clear, %function
  81              	pio_clear:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 4163     		str	r1, [r0, #52]
  86 0002 7047     		bx	lr
  87              		.size	pio_clear, .-pio_clear
  88              		.section	.text.pio_get,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	pio_get
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	pio_get, %function
  97              	pio_get:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 21F00061 		bic	r1, r1, #134217728
 102 0004 B1F1405F 		cmp	r1, #805306368
 103 0008 0CBF     		ite	eq
 104 000a 836B     		ldreq	r3, [r0, #56]
 105 000c C36B     		ldrne	r3, [r0, #60]
 106 000e 1342     		tst	r3, r2
 107 0010 14BF     		ite	ne
 108 0012 0120     		movne	r0, #1
 109 0014 0020     		moveq	r0, #0
 110 0016 7047     		bx	lr
 111              		.size	pio_get, .-pio_get
 112              		.section	.text.pio_set_peripheral,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccgBKcrT.s 			page 3


 115              		.global	pio_set_peripheral
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu fpv4-sp-d16
 120              		.type	pio_set_peripheral, %function
 121              	pio_set_peripheral:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125 0000 B1F1C05F 		cmp	r1, #402653184
 126 0004 4264     		str	r2, [r0, #68]
 127 0006 3BD0     		beq	.L14
 128 0008 10D8     		bhi	.L15
 129 000a B1F1006F 		cmp	r1, #134217728
 130 000e 26D0     		beq	.L16
 131 0010 B1F1805F 		cmp	r1, #268435456
 132 0014 20D1     		bne	.L37
 133 0016 036F     		ldr	r3, [r0, #112]
 134 0018 1343     		orrs	r3, r3, r2
 135 001a 0367     		str	r3, [r0, #112]
 136 001c 416F     		ldr	r1, [r0, #116]
 137 001e 436F     		ldr	r3, [r0, #116]
 138 0020 0B40     		ands	r3, r3, r1
 139 0022 23EA0203 		bic	r3, r3, r2
 140 0026 4367     		str	r3, [r0, #116]
 141              	.L34:
 142 0028 4260     		str	r2, [r0, #4]
 143 002a 7047     		bx	lr
 144              	.L15:
 145 002c B1F1205F 		cmp	r1, #671088640
 146 0030 11D0     		beq	.L35
 147 0032 0AD8     		bhi	.L19
 148 0034 B1F1005F 		cmp	r1, #536870912
 149 0038 F6D1     		bne	.L34
 150 003a 036F     		ldr	r3, [r0, #112]
 151 003c 1343     		orrs	r3, r3, r2
 152 003e 0367     		str	r3, [r0, #112]
 153 0040 436F     		ldr	r3, [r0, #116]
 154 0042 1343     		orrs	r3, r3, r2
 155 0044 4367     		str	r3, [r0, #116]
 156 0046 4260     		str	r2, [r0, #4]
 157 0048 7047     		bx	lr
 158              	.L19:
 159 004a B1F1405F 		cmp	r1, #805306368
 160 004e 02D0     		beq	.L35
 161 0050 B1F1605F 		cmp	r1, #939524096
 162 0054 E8D1     		bne	.L34
 163              	.L35:
 164 0056 7047     		bx	lr
 165              	.L37:
 166 0058 0029     		cmp	r1, #0
 167 005a E5D1     		bne	.L34
 168 005c 7047     		bx	lr
 169              	.L16:
 170 005e 10B4     		push	{r4}
 171 0060 046F     		ldr	r4, [r0, #112]
ARM GAS  /tmp/ccgBKcrT.s 			page 4


 172 0062 016F     		ldr	r1, [r0, #112]
 173 0064 D343     		mvns	r3, r2
 174 0066 2140     		ands	r1, r1, r4
 175 0068 1940     		ands	r1, r1, r3
 176 006a 0167     		str	r1, [r0, #112]
 177 006c 416F     		ldr	r1, [r0, #116]
 178 006e 1C46     		mov	r4, r3
 179 0070 436F     		ldr	r3, [r0, #116]
 180 0072 0B40     		ands	r3, r3, r1
 181 0074 2340     		ands	r3, r3, r4
 182 0076 4367     		str	r3, [r0, #116]
 183 0078 5DF8044B 		ldr	r4, [sp], #4
 184 007c 4260     		str	r2, [r0, #4]
 185 007e 7047     		bx	lr
 186              	.L14:
 187 0080 016F     		ldr	r1, [r0, #112]
 188 0082 036F     		ldr	r3, [r0, #112]
 189 0084 0B40     		ands	r3, r3, r1
 190 0086 23EA0203 		bic	r3, r3, r2
 191 008a 0367     		str	r3, [r0, #112]
 192 008c 436F     		ldr	r3, [r0, #116]
 193 008e 1343     		orrs	r3, r3, r2
 194 0090 4367     		str	r3, [r0, #116]
 195 0092 4260     		str	r2, [r0, #4]
 196 0094 7047     		bx	lr
 197              		.size	pio_set_peripheral, .-pio_set_peripheral
 198 0096 00BF     		.section	.text.pio_set_input,"ax",%progbits
 199              		.align	1
 200              		.p2align 2,,3
 201              		.global	pio_set_input
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 206              		.type	pio_set_input, %function
 207              	pio_set_input:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              		@ link register save eliminated.
 211 0000 D307     		lsls	r3, r2, #31
 212 0002 4164     		str	r1, [r0, #68]
 213 0004 4CBF     		ite	mi
 214 0006 4166     		strmi	r1, [r0, #100]
 215 0008 0166     		strpl	r1, [r0, #96]
 216 000a 12F00A0F 		tst	r2, #10
 217 000e 14BF     		ite	ne
 218 0010 0162     		strne	r1, [r0, #32]
 219 0012 4162     		streq	r1, [r0, #36]
 220 0014 9307     		lsls	r3, r2, #30
 221 0016 06D4     		bmi	.L48
 222 0018 1307     		lsls	r3, r2, #28
 223 001a 48BF     		it	mi
 224 001c C0F88410 		strmi	r1, [r0, #132]
 225 0020 4161     		str	r1, [r0, #20]
 226 0022 0160     		str	r1, [r0]
 227 0024 7047     		bx	lr
 228              	.L48:
ARM GAS  /tmp/ccgBKcrT.s 			page 5


 229 0026 C0F88010 		str	r1, [r0, #128]
 230 002a 4161     		str	r1, [r0, #20]
 231 002c 0160     		str	r1, [r0]
 232 002e 7047     		bx	lr
 233              		.size	pio_set_input, .-pio_set_input
 234              		.section	.text.pio_set_output,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	pio_set_output
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu fpv4-sp-d16
 242              		.type	pio_set_output, %function
 243              	pio_set_output:
 244              		@ args = 4, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246              		@ link register save eliminated.
 247 0000 10B4     		push	{r4}
 248 0002 019C     		ldr	r4, [sp, #4]
 249 0004 4164     		str	r1, [r0, #68]
 250 0006 94B1     		cbz	r4, .L50
 251 0008 4166     		str	r1, [r0, #100]
 252              	.L51:
 253 000a 3BB1     		cbz	r3, .L52
 254 000c 0165     		str	r1, [r0, #80]
 255 000e 42B9     		cbnz	r2, .L57
 256              	.L54:
 257 0010 4163     		str	r1, [r0, #52]
 258 0012 5DF8044B 		ldr	r4, [sp], #4
 259 0016 0161     		str	r1, [r0, #16]
 260 0018 0160     		str	r1, [r0]
 261 001a 7047     		bx	lr
 262              	.L52:
 263 001c 4165     		str	r1, [r0, #84]
 264 001e 002A     		cmp	r2, #0
 265 0020 F6D0     		beq	.L54
 266              	.L57:
 267 0022 0163     		str	r1, [r0, #48]
 268 0024 5DF8044B 		ldr	r4, [sp], #4
 269 0028 0161     		str	r1, [r0, #16]
 270 002a 0160     		str	r1, [r0]
 271 002c 7047     		bx	lr
 272              	.L50:
 273 002e 0166     		str	r1, [r0, #96]
 274 0030 EBE7     		b	.L51
 275              		.size	pio_set_output, .-pio_set_output
 276 0032 00BF     		.section	.text.pio_configure,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	pio_configure
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	pio_configure, %function
 285              	pio_configure:
ARM GAS  /tmp/ccgBKcrT.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 B1F1005F 		cmp	r1, #536870912
 289 0004 70B5     		push	{r4, r5, r6, lr}
 290 0006 3ED0     		beq	.L60
 291 0008 34D9     		bls	.L100
 292 000a B1F1405F 		cmp	r1, #805306368
 293 000e 1DD0     		beq	.L62
 294 0010 B1F1605F 		cmp	r1, #939524096
 295 0014 1AD0     		beq	.L62
 296 0016 B1F1205F 		cmp	r1, #671088640
 297 001a 02D0     		beq	.L63
 298              	.L77:
 299 001c 0023     		movs	r3, #0
 300 001e 1846     		mov	r0, r3
 301 0020 70BD     		pop	{r4, r5, r6, pc}
 302              	.L63:
 303 0022 DD07     		lsls	r5, r3, #31
 304 0024 4264     		str	r2, [r0, #68]
 305 0026 4CBF     		ite	mi
 306 0028 4266     		strmi	r2, [r0, #100]
 307 002a 0266     		strpl	r2, [r0, #96]
 308 002c 13F00A0F 		tst	r3, #10
 309 0030 14BF     		ite	ne
 310 0032 0262     		strne	r2, [r0, #32]
 311 0034 4262     		streq	r2, [r0, #36]
 312 0036 9C07     		lsls	r4, r3, #30
 313 0038 32D4     		bmi	.L101
 314 003a 1907     		lsls	r1, r3, #28
 315 003c 48BF     		it	mi
 316 003e C0F88420 		strmi	r2, [r0, #132]
 317              	.L70:
 318 0042 0123     		movs	r3, #1
 319 0044 4261     		str	r2, [r0, #20]
 320 0046 0260     		str	r2, [r0]
 321 0048 1846     		mov	r0, r3
 322 004a 70BD     		pop	{r4, r5, r6, pc}
 323              	.L62:
 324 004c C3F38004 		ubfx	r4, r3, #2, #1
 325 0050 DB07     		lsls	r3, r3, #31
 326 0052 4264     		str	r2, [r0, #68]
 327 0054 4CBF     		ite	mi
 328 0056 4266     		strmi	r2, [r0, #100]
 329 0058 0266     		strpl	r2, [r0, #96]
 330 005a FCB9     		cbnz	r4, .L102
 331 005c 4265     		str	r2, [r0, #84]
 332              	.L74:
 333 005e B1F1605F 		cmp	r1, #939524096
 334 0062 4FF00103 		mov	r3, #1
 335 0066 0CBF     		ite	eq
 336 0068 0263     		streq	r2, [r0, #48]
 337 006a 4263     		strne	r2, [r0, #52]
 338 006c 0261     		str	r2, [r0, #16]
 339 006e 0260     		str	r2, [r0]
 340 0070 1846     		mov	r0, r3
 341 0072 70BD     		pop	{r4, r5, r6, pc}
 342              	.L100:
ARM GAS  /tmp/ccgBKcrT.s 			page 7


 343 0074 B1F1805F 		cmp	r1, #268435456
 344 0078 05D0     		beq	.L60
 345 007a B1F1C05F 		cmp	r1, #402653184
 346 007e 02D0     		beq	.L60
 347 0080 B1F1006F 		cmp	r1, #134217728
 348 0084 CAD1     		bne	.L77
 349              	.L60:
 350 0086 1E46     		mov	r6, r3
 351 0088 FFF7FEFF 		bl	pio_set_peripheral
 352 008c F607     		lsls	r6, r6, #31
 353 008e 4FF00103 		mov	r3, #1
 354 0092 4CBF     		ite	mi
 355 0094 4266     		strmi	r2, [r0, #100]
 356 0096 0266     		strpl	r2, [r0, #96]
 357 0098 1846     		mov	r0, r3
 358 009a 70BD     		pop	{r4, r5, r6, pc}
 359              	.L102:
 360 009c 0265     		str	r2, [r0, #80]
 361 009e DEE7     		b	.L74
 362              	.L101:
 363 00a0 C0F88020 		str	r2, [r0, #128]
 364 00a4 CDE7     		b	.L70
 365              		.size	pio_configure, .-pio_configure
 366 00a6 00BF     		.section	.text.pio_get_output_data_status,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	pio_get_output_data_status
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu fpv4-sp-d16
 374              		.type	pio_get_output_data_status, %function
 375              	pio_get_output_data_status:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 836B     		ldr	r3, [r0, #56]
 380 0002 0B42     		tst	r3, r1
 381 0004 14BF     		ite	ne
 382 0006 0120     		movne	r0, #1
 383 0008 0020     		moveq	r0, #0
 384 000a 7047     		bx	lr
 385              		.size	pio_get_output_data_status, .-pio_get_output_data_status
 386              		.section	.text.pio_set_multi_driver,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	pio_set_multi_driver
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv4-sp-d16
 394              		.type	pio_set_multi_driver, %function
 395              	pio_set_multi_driver:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398              		@ link register save eliminated.
 399 0000 0AB9     		cbnz	r2, .L107
ARM GAS  /tmp/ccgBKcrT.s 			page 8


 400 0002 4165     		str	r1, [r0, #84]
 401 0004 7047     		bx	lr
 402              	.L107:
 403 0006 0165     		str	r1, [r0, #80]
 404 0008 7047     		bx	lr
 405              		.size	pio_set_multi_driver, .-pio_set_multi_driver
 406 000a 00BF     		.section	.text.pio_get_multi_driver_status,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	pio_get_multi_driver_status
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	pio_get_multi_driver_status, %function
 415              	pio_get_multi_driver_status:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 806D     		ldr	r0, [r0, #88]
 420 0002 7047     		bx	lr
 421              		.size	pio_get_multi_driver_status, .-pio_get_multi_driver_status
 422              		.section	.text.pio_pull_down,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	pio_pull_down
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu fpv4-sp-d16
 430              		.type	pio_pull_down, %function
 431              	pio_pull_down:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 12B9     		cbnz	r2, .L112
 436 0002 C0F89010 		str	r1, [r0, #144]
 437 0006 7047     		bx	lr
 438              	.L112:
 439 0008 C0F89410 		str	r1, [r0, #148]
 440 000c 7047     		bx	lr
 441              		.size	pio_pull_down, .-pio_pull_down
 442 000e 00BF     		.section	.text.pio_enable_output_write,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	pio_enable_output_write
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu fpv4-sp-d16
 450              		.type	pio_enable_output_write, %function
 451              	pio_enable_output_write:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 C0F8A010 		str	r1, [r0, #160]
 456 0004 7047     		bx	lr
ARM GAS  /tmp/ccgBKcrT.s 			page 9


 457              		.size	pio_enable_output_write, .-pio_enable_output_write
 458 0006 00BF     		.section	.text.pio_disable_output_write,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.global	pio_disable_output_write
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
 465              		.fpu fpv4-sp-d16
 466              		.type	pio_disable_output_write, %function
 467              	pio_disable_output_write:
 468              		@ args = 0, pretend = 0, frame = 0
 469              		@ frame_needed = 0, uses_anonymous_args = 0
 470              		@ link register save eliminated.
 471 0000 C0F8A410 		str	r1, [r0, #164]
 472 0004 7047     		bx	lr
 473              		.size	pio_disable_output_write, .-pio_disable_output_write
 474 0006 00BF     		.section	.text.pio_get_output_write_status,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.global	pio_get_output_write_status
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv4-sp-d16
 482              		.type	pio_get_output_write_status, %function
 483              	pio_get_output_write_status:
 484              		@ args = 0, pretend = 0, frame = 0
 485              		@ frame_needed = 0, uses_anonymous_args = 0
 486              		@ link register save eliminated.
 487 0000 D0F8A800 		ldr	r0, [r0, #168]
 488 0004 7047     		bx	lr
 489              		.size	pio_get_output_write_status, .-pio_get_output_write_status
 490 0006 00BF     		.section	.text.pio_sync_output_write,"ax",%progbits
 491              		.align	1
 492              		.p2align 2,,3
 493              		.global	pio_sync_output_write
 494              		.syntax unified
 495              		.thumb
 496              		.thumb_func
 497              		.fpu fpv4-sp-d16
 498              		.type	pio_sync_output_write, %function
 499              	pio_sync_output_write:
 500              		@ args = 0, pretend = 0, frame = 0
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502              		@ link register save eliminated.
 503 0000 8163     		str	r1, [r0, #56]
 504 0002 7047     		bx	lr
 505              		.size	pio_sync_output_write, .-pio_sync_output_write
 506              		.section	.text.pio_set_schmitt_trigger,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	pio_set_schmitt_trigger
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccgBKcrT.s 			page 10


 514              		.type	pio_set_schmitt_trigger, %function
 515              	pio_set_schmitt_trigger:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518              		@ link register save eliminated.
 519 0000 C0F80011 		str	r1, [r0, #256]
 520 0004 7047     		bx	lr
 521              		.size	pio_set_schmitt_trigger, .-pio_set_schmitt_trigger
 522 0006 00BF     		.section	.text.pio_get_schmitt_trigger,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	pio_get_schmitt_trigger
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	pio_get_schmitt_trigger, %function
 531              	pio_get_schmitt_trigger:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535 0000 D0F80001 		ldr	r0, [r0, #256]
 536 0004 7047     		bx	lr
 537              		.size	pio_get_schmitt_trigger, .-pio_get_schmitt_trigger
 538 0006 00BF     		.section	.text.pio_configure_interrupt,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	pio_configure_interrupt
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu fpv4-sp-d16
 546              		.type	pio_configure_interrupt, %function
 547              	pio_configure_interrupt:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 D306     		lsls	r3, r2, #27
 552 0002 0ED5     		bpl	.L120
 553 0004 9306     		lsls	r3, r2, #26
 554 0006 C0F8B010 		str	r1, [r0, #176]
 555 000a 4CBF     		ite	mi
 556 000c C0F8D410 		strmi	r1, [r0, #212]
 557 0010 C0F8D010 		strpl	r1, [r0, #208]
 558 0014 5306     		lsls	r3, r2, #25
 559 0016 4CBF     		ite	mi
 560 0018 C0F8C010 		strmi	r1, [r0, #192]
 561 001c C0F8C410 		strpl	r1, [r0, #196]
 562 0020 7047     		bx	lr
 563              	.L120:
 564 0022 C0F8B410 		str	r1, [r0, #180]
 565 0026 7047     		bx	lr
 566              		.size	pio_configure_interrupt, .-pio_configure_interrupt
 567              		.section	.text.pio_enable_interrupt,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	pio_enable_interrupt
ARM GAS  /tmp/ccgBKcrT.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	pio_enable_interrupt, %function
 576              	pio_enable_interrupt:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579              		@ link register save eliminated.
 580 0000 0164     		str	r1, [r0, #64]
 581 0002 7047     		bx	lr
 582              		.size	pio_enable_interrupt, .-pio_enable_interrupt
 583              		.section	.text.pio_disable_interrupt,"ax",%progbits
 584              		.align	1
 585              		.p2align 2,,3
 586              		.global	pio_disable_interrupt
 587              		.syntax unified
 588              		.thumb
 589              		.thumb_func
 590              		.fpu fpv4-sp-d16
 591              		.type	pio_disable_interrupt, %function
 592              	pio_disable_interrupt:
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              		@ link register save eliminated.
 596 0000 4164     		str	r1, [r0, #68]
 597 0002 7047     		bx	lr
 598              		.size	pio_disable_interrupt, .-pio_disable_interrupt
 599              		.section	.text.pio_get_interrupt_status,"ax",%progbits
 600              		.align	1
 601              		.p2align 2,,3
 602              		.global	pio_get_interrupt_status
 603              		.syntax unified
 604              		.thumb
 605              		.thumb_func
 606              		.fpu fpv4-sp-d16
 607              		.type	pio_get_interrupt_status, %function
 608              	pio_get_interrupt_status:
 609              		@ args = 0, pretend = 0, frame = 0
 610              		@ frame_needed = 0, uses_anonymous_args = 0
 611              		@ link register save eliminated.
 612 0000 C06C     		ldr	r0, [r0, #76]
 613 0002 7047     		bx	lr
 614              		.size	pio_get_interrupt_status, .-pio_get_interrupt_status
 615              		.section	.text.pio_get_interrupt_mask,"ax",%progbits
 616              		.align	1
 617              		.p2align 2,,3
 618              		.global	pio_get_interrupt_mask
 619              		.syntax unified
 620              		.thumb
 621              		.thumb_func
 622              		.fpu fpv4-sp-d16
 623              		.type	pio_get_interrupt_mask, %function
 624              	pio_get_interrupt_mask:
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 0, uses_anonymous_args = 0
 627              		@ link register save eliminated.
ARM GAS  /tmp/ccgBKcrT.s 			page 12


 628 0000 806C     		ldr	r0, [r0, #72]
 629 0002 7047     		bx	lr
 630              		.size	pio_get_interrupt_mask, .-pio_get_interrupt_mask
 631              		.section	.text.pio_set_additional_interrupt_mode,"ax",%progbits
 632              		.align	1
 633              		.p2align 2,,3
 634              		.global	pio_set_additional_interrupt_mode
 635              		.syntax unified
 636              		.thumb
 637              		.thumb_func
 638              		.fpu fpv4-sp-d16
 639              		.type	pio_set_additional_interrupt_mode, %function
 640              	pio_set_additional_interrupt_mode:
 641              		@ args = 0, pretend = 0, frame = 0
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643              		@ link register save eliminated.
 644 0000 FFF7FEBF 		b	pio_configure_interrupt
 645              		.size	pio_set_additional_interrupt_mode, .-pio_set_additional_interrupt_mode
 646              		.section	.text.pio_set_writeprotect,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	pio_set_writeprotect
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu fpv4-sp-d16
 654              		.type	pio_set_writeprotect, %function
 655              	pio_set_writeprotect:
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658              		@ link register save eliminated.
 659 0000 034B     		ldr	r3, .L131
 660 0002 01F00101 		and	r1, r1, #1
 661 0006 0B43     		orrs	r3, r3, r1
 662 0008 C0F8E430 		str	r3, [r0, #228]
 663 000c 7047     		bx	lr
 664              	.L132:
 665 000e 00BF     		.align	2
 666              	.L131:
 667 0010 004F4950 		.word	1346981632
 668              		.size	pio_set_writeprotect, .-pio_set_writeprotect
 669              		.section	.text.pio_get_writeprotect_status,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	pio_get_writeprotect_status
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu fpv4-sp-d16
 677              		.type	pio_get_writeprotect_status, %function
 678              	pio_get_writeprotect_status:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 682 0000 D0F8E800 		ldr	r0, [r0, #232]
 683 0004 7047     		bx	lr
 684              		.size	pio_get_writeprotect_status, .-pio_get_writeprotect_status
ARM GAS  /tmp/ccgBKcrT.s 			page 13


 685 0006 00BF     		.section	.text.pio_get_pin_value,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	pio_get_pin_value
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu fpv4-sp-d16
 693              		.type	pio_get_pin_value, %function
 694              	pio_get_pin_value:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 698 0000 4309     		lsrs	r3, r0, #5
 699 0002 03F50013 		add	r3, r3, #2097152
 700 0006 03F20773 		addw	r3, r3, #1799
 701 000a 5B02     		lsls	r3, r3, #9
 702 000c 00F01F00 		and	r0, r0, #31
 703 0010 DB6B     		ldr	r3, [r3, #60]
 704 0012 23FA00F0 		lsr	r0, r3, r0
 705 0016 00F00100 		and	r0, r0, #1
 706 001a 7047     		bx	lr
 707              		.size	pio_get_pin_value, .-pio_get_pin_value
 708              		.section	.text.pio_set_pin_high,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.global	pio_set_pin_high
 712              		.syntax unified
 713              		.thumb
 714              		.thumb_func
 715              		.fpu fpv4-sp-d16
 716              		.type	pio_set_pin_high, %function
 717              	pio_set_pin_high:
 718              		@ args = 0, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720              		@ link register save eliminated.
 721 0000 4309     		lsrs	r3, r0, #5
 722 0002 03F50013 		add	r3, r3, #2097152
 723 0006 03F20773 		addw	r3, r3, #1799
 724 000a 5B02     		lsls	r3, r3, #9
 725 000c 00F01F00 		and	r0, r0, #31
 726 0010 0122     		movs	r2, #1
 727 0012 02FA00F0 		lsl	r0, r2, r0
 728 0016 1863     		str	r0, [r3, #48]
 729 0018 7047     		bx	lr
 730              		.size	pio_set_pin_high, .-pio_set_pin_high
 731 001a 00BF     		.section	.text.pio_set_pin_low,"ax",%progbits
 732              		.align	1
 733              		.p2align 2,,3
 734              		.global	pio_set_pin_low
 735              		.syntax unified
 736              		.thumb
 737              		.thumb_func
 738              		.fpu fpv4-sp-d16
 739              		.type	pio_set_pin_low, %function
 740              	pio_set_pin_low:
 741              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccgBKcrT.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743              		@ link register save eliminated.
 744 0000 4309     		lsrs	r3, r0, #5
 745 0002 03F50013 		add	r3, r3, #2097152
 746 0006 03F20773 		addw	r3, r3, #1799
 747 000a 5B02     		lsls	r3, r3, #9
 748 000c 00F01F00 		and	r0, r0, #31
 749 0010 0122     		movs	r2, #1
 750 0012 02FA00F0 		lsl	r0, r2, r0
 751 0016 5863     		str	r0, [r3, #52]
 752 0018 7047     		bx	lr
 753              		.size	pio_set_pin_low, .-pio_set_pin_low
 754 001a 00BF     		.section	.text.pio_toggle_pin,"ax",%progbits
 755              		.align	1
 756              		.p2align 2,,3
 757              		.global	pio_toggle_pin
 758              		.syntax unified
 759              		.thumb
 760              		.thumb_func
 761              		.fpu fpv4-sp-d16
 762              		.type	pio_toggle_pin, %function
 763              	pio_toggle_pin:
 764              		@ args = 0, pretend = 0, frame = 0
 765              		@ frame_needed = 0, uses_anonymous_args = 0
 766              		@ link register save eliminated.
 767 0000 4309     		lsrs	r3, r0, #5
 768 0002 03F50013 		add	r3, r3, #2097152
 769 0006 03F20773 		addw	r3, r3, #1799
 770 000a 5B02     		lsls	r3, r3, #9
 771 000c 00F01F02 		and	r2, r0, #31
 772 0010 996B     		ldr	r1, [r3, #56]
 773 0012 0120     		movs	r0, #1
 774 0014 9040     		lsls	r0, r0, r2
 775 0016 0142     		tst	r1, r0
 776 0018 14BF     		ite	ne
 777 001a 5863     		strne	r0, [r3, #52]
 778 001c 1863     		streq	r0, [r3, #48]
 779 001e 7047     		bx	lr
 780              		.size	pio_toggle_pin, .-pio_toggle_pin
 781              		.section	.text.pio_configure_pin,"ax",%progbits
 782              		.align	1
 783              		.p2align 2,,3
 784              		.global	pio_configure_pin
 785              		.syntax unified
 786              		.thumb
 787              		.thumb_func
 788              		.fpu fpv4-sp-d16
 789              		.type	pio_configure_pin, %function
 790              	pio_configure_pin:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793              		@ link register save eliminated.
 794 0000 4309     		lsrs	r3, r0, #5
 795 0002 03F50013 		add	r3, r3, #2097152
 796 0006 01F0F042 		and	r2, r1, #2013265920
 797 000a 03F20773 		addw	r3, r3, #1799
 798 000e B2F1005F 		cmp	r2, #536870912
ARM GAS  /tmp/ccgBKcrT.s 			page 15


 799 0012 70B4     		push	{r4, r5, r6}
 800 0014 4FEA4323 		lsl	r3, r3, #9
 801 0018 00F08680 		beq	.L142
 802 001c 0BD8     		bhi	.L143
 803 001e B2F1805F 		cmp	r2, #268435456
 804 0022 28D0     		beq	.L144
 805 0024 B2F1C05F 		cmp	r2, #402653184
 806 0028 6AD0     		beq	.L145
 807 002a B2F1006F 		cmp	r2, #134217728
 808 002e 37D0     		beq	.L181
 809              	.L165:
 810 0030 0020     		movs	r0, #0
 811 0032 70BC     		pop	{r4, r5, r6}
 812 0034 7047     		bx	lr
 813              	.L143:
 814 0036 B2F1405F 		cmp	r2, #805306368
 815 003a 48D0     		beq	.L147
 816 003c B2F1605F 		cmp	r2, #939524096
 817 0040 45D0     		beq	.L147
 818 0042 B2F1205F 		cmp	r2, #671088640
 819 0046 F3D1     		bne	.L165
 820 0048 00F01F00 		and	r0, r0, #31
 821 004c 0122     		movs	r2, #1
 822 004e 8240     		lsls	r2, r2, r0
 823 0050 CD07     		lsls	r5, r1, #31
 824 0052 5A64     		str	r2, [r3, #68]
 825 0054 4CBF     		ite	mi
 826 0056 5A66     		strmi	r2, [r3, #100]
 827 0058 1A66     		strpl	r2, [r3, #96]
 828 005a 11F00A0F 		tst	r1, #10
 829 005e 14BF     		ite	ne
 830 0060 1A62     		strne	r2, [r3, #32]
 831 0062 5A62     		streq	r2, [r3, #36]
 832 0064 8C07     		lsls	r4, r1, #30
 833 0066 68D5     		bpl	.L157
 834 0068 C3F88020 		str	r2, [r3, #128]
 835              	.L158:
 836 006c 5A61     		str	r2, [r3, #20]
 837 006e 0120     		movs	r0, #1
 838 0070 1A60     		str	r2, [r3]
 839 0072 70BC     		pop	{r4, r5, r6}
 840 0074 7047     		bx	lr
 841              	.L144:
 842 0076 00F01F02 		and	r2, r0, #31
 843 007a 0120     		movs	r0, #1
 844 007c 00FA02F2 		lsl	r2, r0, r2
 845 0080 5A64     		str	r2, [r3, #68]
 846 0082 1C6F     		ldr	r4, [r3, #112]
 847 0084 1443     		orrs	r4, r4, r2
 848 0086 1C67     		str	r4, [r3, #112]
 849 0088 5C6F     		ldr	r4, [r3, #116]
 850 008a 5D6F     		ldr	r5, [r3, #116]
 851 008c 2C40     		ands	r4, r4, r5
 852 008e 24EA0204 		bic	r4, r4, r2
 853 0092 C907     		lsls	r1, r1, #31
 854 0094 5C67     		str	r4, [r3, #116]
 855 0096 5A60     		str	r2, [r3, #4]
ARM GAS  /tmp/ccgBKcrT.s 			page 16


 856 0098 16D5     		bpl	.L152
 857              	.L178:
 858 009a 5A66     		str	r2, [r3, #100]
 859 009c 70BC     		pop	{r4, r5, r6}
 860 009e 7047     		bx	lr
 861              	.L181:
 862 00a0 00F01F02 		and	r2, r0, #31
 863 00a4 0120     		movs	r0, #1
 864 00a6 00FA02F2 		lsl	r2, r0, r2
 865 00aa 5A64     		str	r2, [r3, #68]
 866 00ac 1D6F     		ldr	r5, [r3, #112]
 867 00ae 1C6F     		ldr	r4, [r3, #112]
 868 00b0 D643     		mvns	r6, r2
 869 00b2 2540     		ands	r5, r5, r4
 870 00b4 3540     		ands	r5, r5, r6
 871 00b6 1D67     		str	r5, [r3, #112]
 872 00b8 5C6F     		ldr	r4, [r3, #116]
 873 00ba 5D6F     		ldr	r5, [r3, #116]
 874 00bc 2C40     		ands	r4, r4, r5
 875 00be 3440     		ands	r4, r4, r6
 876 00c0 5C67     		str	r4, [r3, #116]
 877 00c2 CC07     		lsls	r4, r1, #31
 878 00c4 5A60     		str	r2, [r3, #4]
 879 00c6 E8D4     		bmi	.L178
 880              	.L152:
 881 00c8 1A66     		str	r2, [r3, #96]
 882 00ca 70BC     		pop	{r4, r5, r6}
 883 00cc 7047     		bx	lr
 884              	.L147:
 885 00ce 00F01F00 		and	r0, r0, #31
 886 00d2 0122     		movs	r2, #1
 887 00d4 8240     		lsls	r2, r2, r0
 888 00d6 C1F38004 		ubfx	r4, r1, #2, #1
 889 00da 01F06050 		and	r0, r1, #939524096
 890 00de C907     		lsls	r1, r1, #31
 891 00e0 5A64     		str	r2, [r3, #68]
 892 00e2 4CBF     		ite	mi
 893 00e4 5A66     		strmi	r2, [r3, #100]
 894 00e6 1A66     		strpl	r2, [r3, #96]
 895 00e8 64B3     		cbz	r4, .L161
 896 00ea 1A65     		str	r2, [r3, #80]
 897              	.L162:
 898 00ec B0F1605F 		cmp	r0, #939524096
 899 00f0 0CBF     		ite	eq
 900 00f2 1A63     		streq	r2, [r3, #48]
 901 00f4 5A63     		strne	r2, [r3, #52]
 902 00f6 0120     		movs	r0, #1
 903 00f8 1A61     		str	r2, [r3, #16]
 904 00fa 1A60     		str	r2, [r3]
 905 00fc 70BC     		pop	{r4, r5, r6}
 906 00fe 7047     		bx	lr
 907              	.L145:
 908 0100 00F01F02 		and	r2, r0, #31
 909 0104 0120     		movs	r0, #1
 910 0106 00FA02F2 		lsl	r2, r0, r2
 911 010a 5A64     		str	r2, [r3, #68]
 912 010c 1C6F     		ldr	r4, [r3, #112]
ARM GAS  /tmp/ccgBKcrT.s 			page 17


 913 010e 1D6F     		ldr	r5, [r3, #112]
 914 0110 2C40     		ands	r4, r4, r5
 915 0112 24EA0204 		bic	r4, r4, r2
 916              	.L180:
 917 0116 1C67     		str	r4, [r3, #112]
 918 0118 5C6F     		ldr	r4, [r3, #116]
 919 011a CE07     		lsls	r6, r1, #31
 920 011c 44EA0204 		orr	r4, r4, r2
 921 0120 5C67     		str	r4, [r3, #116]
 922 0122 5A60     		str	r2, [r3, #4]
 923 0124 D0D5     		bpl	.L152
 924 0126 B8E7     		b	.L178
 925              	.L142:
 926 0128 00F01F02 		and	r2, r0, #31
 927 012c 0120     		movs	r0, #1
 928 012e 00FA02F2 		lsl	r2, r0, r2
 929 0132 5A64     		str	r2, [r3, #68]
 930 0134 1C6F     		ldr	r4, [r3, #112]
 931 0136 1443     		orrs	r4, r4, r2
 932 0138 EDE7     		b	.L180
 933              	.L157:
 934 013a 0807     		lsls	r0, r1, #28
 935 013c 48BF     		it	mi
 936 013e C3F88420 		strmi	r2, [r3, #132]
 937 0142 93E7     		b	.L158
 938              	.L161:
 939 0144 5A65     		str	r2, [r3, #84]
 940 0146 D1E7     		b	.L162
 941              		.size	pio_configure_pin, .-pio_configure_pin
 942              		.section	.text.pio_set_pin_group_high,"ax",%progbits
 943              		.align	1
 944              		.p2align 2,,3
 945              		.global	pio_set_pin_group_high
 946              		.syntax unified
 947              		.thumb
 948              		.thumb_func
 949              		.fpu fpv4-sp-d16
 950              		.type	pio_set_pin_group_high, %function
 951              	pio_set_pin_group_high:
 952              		@ args = 0, pretend = 0, frame = 0
 953              		@ frame_needed = 0, uses_anonymous_args = 0
 954              		@ link register save eliminated.
 955 0000 0163     		str	r1, [r0, #48]
 956 0002 7047     		bx	lr
 957              		.size	pio_set_pin_group_high, .-pio_set_pin_group_high
 958              		.section	.text.pio_set_pin_group_low,"ax",%progbits
 959              		.align	1
 960              		.p2align 2,,3
 961              		.global	pio_set_pin_group_low
 962              		.syntax unified
 963              		.thumb
 964              		.thumb_func
 965              		.fpu fpv4-sp-d16
 966              		.type	pio_set_pin_group_low, %function
 967              	pio_set_pin_group_low:
 968              		@ args = 0, pretend = 0, frame = 0
 969              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccgBKcrT.s 			page 18


 970              		@ link register save eliminated.
 971 0000 4163     		str	r1, [r0, #52]
 972 0002 7047     		bx	lr
 973              		.size	pio_set_pin_group_low, .-pio_set_pin_group_low
 974              		.section	.text.pio_toggle_pin_group,"ax",%progbits
 975              		.align	1
 976              		.p2align 2,,3
 977              		.global	pio_toggle_pin_group
 978              		.syntax unified
 979              		.thumb
 980              		.thumb_func
 981              		.fpu fpv4-sp-d16
 982              		.type	pio_toggle_pin_group, %function
 983              	pio_toggle_pin_group:
 984              		@ args = 0, pretend = 0, frame = 0
 985              		@ frame_needed = 0, uses_anonymous_args = 0
 986              		@ link register save eliminated.
 987 0000 836B     		ldr	r3, [r0, #56]
 988 0002 0B42     		tst	r3, r1
 989 0004 14BF     		ite	ne
 990 0006 4163     		strne	r1, [r0, #52]
 991 0008 0163     		streq	r1, [r0, #48]
 992 000a 7047     		bx	lr
 993              		.size	pio_toggle_pin_group, .-pio_toggle_pin_group
 994              		.section	.text.pio_configure_pin_group,"ax",%progbits
 995              		.align	1
 996              		.p2align 2,,3
 997              		.global	pio_configure_pin_group
 998              		.syntax unified
 999              		.thumb
 1000              		.thumb_func
 1001              		.fpu fpv4-sp-d16
 1002              		.type	pio_configure_pin_group, %function
 1003              	pio_configure_pin_group:
 1004              		@ args = 0, pretend = 0, frame = 0
 1005              		@ frame_needed = 0, uses_anonymous_args = 0
 1006              		@ link register save eliminated.
 1007 0000 30B4     		push	{r4, r5}
 1008 0002 02F0F044 		and	r4, r2, #2013265920
 1009 0006 B4F1005F 		cmp	r4, #536870912
 1010 000a 0346     		mov	r3, r0
 1011 000c 71D0     		beq	.L189
 1012 000e 0BD8     		bhi	.L190
 1013 0010 B4F1805F 		cmp	r4, #268435456
 1014 0014 24D0     		beq	.L191
 1015 0016 B4F1C05F 		cmp	r4, #402653184
 1016 001a 5BD0     		beq	.L192
 1017 001c B4F1006F 		cmp	r4, #134217728
 1018 0020 2FD0     		beq	.L228
 1019              	.L212:
 1020 0022 0020     		movs	r0, #0
 1021 0024 30BC     		pop	{r4, r5}
 1022 0026 7047     		bx	lr
 1023              	.L190:
 1024 0028 B4F1405F 		cmp	r4, #805306368
 1025 002c 3DD0     		beq	.L194
 1026 002e B4F1605F 		cmp	r4, #939524096
ARM GAS  /tmp/ccgBKcrT.s 			page 19


 1027 0032 3AD0     		beq	.L194
 1028 0034 B4F1205F 		cmp	r4, #671088640
 1029 0038 F3D1     		bne	.L212
 1030 003a D507     		lsls	r5, r2, #31
 1031 003c 4164     		str	r1, [r0, #68]
 1032 003e 4CBF     		ite	mi
 1033 0040 4166     		strmi	r1, [r0, #100]
 1034 0042 0166     		strpl	r1, [r0, #96]
 1035 0044 12F00A0F 		tst	r2, #10
 1036 0048 14BF     		ite	ne
 1037 004a 0162     		strne	r1, [r0, #32]
 1038 004c 4162     		streq	r1, [r0, #36]
 1039 004e 9407     		lsls	r4, r2, #30
 1040 0050 53D5     		bpl	.L204
 1041 0052 C0F88010 		str	r1, [r0, #128]
 1042              	.L205:
 1043 0056 5961     		str	r1, [r3, #20]
 1044 0058 0120     		movs	r0, #1
 1045 005a 1960     		str	r1, [r3]
 1046 005c 30BC     		pop	{r4, r5}
 1047 005e 7047     		bx	lr
 1048              	.L191:
 1049 0060 4164     		str	r1, [r0, #68]
 1050 0062 006F     		ldr	r0, [r0, #112]
 1051 0064 0843     		orrs	r0, r0, r1
 1052 0066 1867     		str	r0, [r3, #112]
 1053 0068 586F     		ldr	r0, [r3, #116]
 1054 006a 5C6F     		ldr	r4, [r3, #116]
 1055 006c 2040     		ands	r0, r0, r4
 1056 006e 20EA0100 		bic	r0, r0, r1
 1057 0072 5867     		str	r0, [r3, #116]
 1058 0074 D007     		lsls	r0, r2, #31
 1059 0076 5960     		str	r1, [r3, #4]
 1060 0078 13D5     		bpl	.L199
 1061              	.L225:
 1062 007a 0120     		movs	r0, #1
 1063 007c 5966     		str	r1, [r3, #100]
 1064 007e 30BC     		pop	{r4, r5}
 1065 0080 7047     		bx	lr
 1066              	.L228:
 1067 0082 4164     		str	r1, [r0, #68]
 1068 0084 046F     		ldr	r4, [r0, #112]
 1069 0086 056F     		ldr	r5, [r0, #112]
 1070 0088 C843     		mvns	r0, r1
 1071 008a 2C40     		ands	r4, r4, r5
 1072 008c 0440     		ands	r4, r4, r0
 1073 008e 1C67     		str	r4, [r3, #112]
 1074 0090 0546     		mov	r5, r0
 1075 0092 586F     		ldr	r0, [r3, #116]
 1076 0094 5C6F     		ldr	r4, [r3, #116]
 1077 0096 2040     		ands	r0, r0, r4
 1078 0098 2840     		ands	r0, r0, r5
 1079 009a D407     		lsls	r4, r2, #31
 1080 009c 5867     		str	r0, [r3, #116]
 1081 009e 5960     		str	r1, [r3, #4]
 1082 00a0 EBD4     		bmi	.L225
 1083              	.L199:
ARM GAS  /tmp/ccgBKcrT.s 			page 20


 1084 00a2 0120     		movs	r0, #1
 1085 00a4 1966     		str	r1, [r3, #96]
 1086 00a6 30BC     		pop	{r4, r5}
 1087 00a8 7047     		bx	lr
 1088              	.L194:
 1089 00aa 02F06050 		and	r0, r2, #939524096
 1090 00ae C2F38004 		ubfx	r4, r2, #2, #1
 1091 00b2 D207     		lsls	r2, r2, #31
 1092 00b4 5964     		str	r1, [r3, #68]
 1093 00b6 4CBF     		ite	mi
 1094 00b8 5966     		strmi	r1, [r3, #100]
 1095 00ba 1966     		strpl	r1, [r3, #96]
 1096 00bc 14B3     		cbz	r4, .L208
 1097 00be 1965     		str	r1, [r3, #80]
 1098              	.L209:
 1099 00c0 B0F1605F 		cmp	r0, #939524096
 1100 00c4 0CBF     		ite	eq
 1101 00c6 1963     		streq	r1, [r3, #48]
 1102 00c8 5963     		strne	r1, [r3, #52]
 1103 00ca 0120     		movs	r0, #1
 1104 00cc 1961     		str	r1, [r3, #16]
 1105 00ce 1960     		str	r1, [r3]
 1106 00d0 30BC     		pop	{r4, r5}
 1107 00d2 7047     		bx	lr
 1108              	.L192:
 1109 00d4 4164     		str	r1, [r0, #68]
 1110 00d6 006F     		ldr	r0, [r0, #112]
 1111 00d8 1C6F     		ldr	r4, [r3, #112]
 1112 00da 2040     		ands	r0, r0, r4
 1113 00dc 20EA0100 		bic	r0, r0, r1
 1114              	.L227:
 1115 00e0 1867     		str	r0, [r3, #112]
 1116 00e2 586F     		ldr	r0, [r3, #116]
 1117 00e4 D207     		lsls	r2, r2, #31
 1118 00e6 40EA0100 		orr	r0, r0, r1
 1119 00ea 5867     		str	r0, [r3, #116]
 1120 00ec 5960     		str	r1, [r3, #4]
 1121 00ee D8D5     		bpl	.L199
 1122 00f0 C3E7     		b	.L225
 1123              	.L189:
 1124 00f2 4164     		str	r1, [r0, #68]
 1125 00f4 006F     		ldr	r0, [r0, #112]
 1126 00f6 0843     		orrs	r0, r0, r1
 1127 00f8 F2E7     		b	.L227
 1128              	.L204:
 1129 00fa 1007     		lsls	r0, r2, #28
 1130 00fc 48BF     		it	mi
 1131 00fe C3F88410 		strmi	r1, [r3, #132]
 1132 0102 A8E7     		b	.L205
 1133              	.L208:
 1134 0104 5965     		str	r1, [r3, #84]
 1135 0106 DBE7     		b	.L209
 1136              		.size	pio_configure_pin_group, .-pio_configure_pin_group
 1137              		.section	.text.pio_enable_pin_interrupt,"ax",%progbits
 1138              		.align	1
 1139              		.p2align 2,,3
 1140              		.global	pio_enable_pin_interrupt
ARM GAS  /tmp/ccgBKcrT.s 			page 21


 1141              		.syntax unified
 1142              		.thumb
 1143              		.thumb_func
 1144              		.fpu fpv4-sp-d16
 1145              		.type	pio_enable_pin_interrupt, %function
 1146              	pio_enable_pin_interrupt:
 1147              		@ args = 0, pretend = 0, frame = 0
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 1149              		@ link register save eliminated.
 1150 0000 4309     		lsrs	r3, r0, #5
 1151 0002 03F50013 		add	r3, r3, #2097152
 1152 0006 03F20773 		addw	r3, r3, #1799
 1153 000a 5B02     		lsls	r3, r3, #9
 1154 000c 00F01F00 		and	r0, r0, #31
 1155 0010 0122     		movs	r2, #1
 1156 0012 02FA00F0 		lsl	r0, r2, r0
 1157 0016 1864     		str	r0, [r3, #64]
 1158 0018 7047     		bx	lr
 1159              		.size	pio_enable_pin_interrupt, .-pio_enable_pin_interrupt
 1160 001a 00BF     		.section	.text.pio_disable_pin_interrupt,"ax",%progbits
 1161              		.align	1
 1162              		.p2align 2,,3
 1163              		.global	pio_disable_pin_interrupt
 1164              		.syntax unified
 1165              		.thumb
 1166              		.thumb_func
 1167              		.fpu fpv4-sp-d16
 1168              		.type	pio_disable_pin_interrupt, %function
 1169              	pio_disable_pin_interrupt:
 1170              		@ args = 0, pretend = 0, frame = 0
 1171              		@ frame_needed = 0, uses_anonymous_args = 0
 1172              		@ link register save eliminated.
 1173 0000 4309     		lsrs	r3, r0, #5
 1174 0002 03F50013 		add	r3, r3, #2097152
 1175 0006 03F20773 		addw	r3, r3, #1799
 1176 000a 5B02     		lsls	r3, r3, #9
 1177 000c 00F01F00 		and	r0, r0, #31
 1178 0010 0122     		movs	r2, #1
 1179 0012 02FA00F0 		lsl	r0, r2, r0
 1180 0016 5864     		str	r0, [r3, #68]
 1181 0018 7047     		bx	lr
 1182              		.size	pio_disable_pin_interrupt, .-pio_disable_pin_interrupt
 1183 001a 00BF     		.section	.text.pio_get_pin_group,"ax",%progbits
 1184              		.align	1
 1185              		.p2align 2,,3
 1186              		.global	pio_get_pin_group
 1187              		.syntax unified
 1188              		.thumb
 1189              		.thumb_func
 1190              		.fpu fpv4-sp-d16
 1191              		.type	pio_get_pin_group, %function
 1192              	pio_get_pin_group:
 1193              		@ args = 0, pretend = 0, frame = 0
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 1195              		@ link register save eliminated.
 1196 0000 4009     		lsrs	r0, r0, #5
 1197 0002 00F50010 		add	r0, r0, #2097152
ARM GAS  /tmp/ccgBKcrT.s 			page 22


 1198 0006 00F20770 		addw	r0, r0, #1799
 1199 000a 4002     		lsls	r0, r0, #9
 1200 000c 7047     		bx	lr
 1201              		.size	pio_get_pin_group, .-pio_get_pin_group
 1202 000e 00BF     		.section	.text.pio_get_pin_group_id,"ax",%progbits
 1203              		.align	1
 1204              		.p2align 2,,3
 1205              		.global	pio_get_pin_group_id
 1206              		.syntax unified
 1207              		.thumb
 1208              		.thumb_func
 1209              		.fpu fpv4-sp-d16
 1210              		.type	pio_get_pin_group_id, %function
 1211              	pio_get_pin_group_id:
 1212              		@ args = 0, pretend = 0, frame = 0
 1213              		@ frame_needed = 0, uses_anonymous_args = 0
 1214              		@ link register save eliminated.
 1215 0000 4009     		lsrs	r0, r0, #5
 1216 0002 0930     		adds	r0, r0, #9
 1217 0004 7047     		bx	lr
 1218              		.size	pio_get_pin_group_id, .-pio_get_pin_group_id
 1219 0006 00BF     		.section	.text.pio_get_pin_group_mask,"ax",%progbits
 1220              		.align	1
 1221              		.p2align 2,,3
 1222              		.global	pio_get_pin_group_mask
 1223              		.syntax unified
 1224              		.thumb
 1225              		.thumb_func
 1226              		.fpu fpv4-sp-d16
 1227              		.type	pio_get_pin_group_mask, %function
 1228              	pio_get_pin_group_mask:
 1229              		@ args = 0, pretend = 0, frame = 0
 1230              		@ frame_needed = 0, uses_anonymous_args = 0
 1231              		@ link register save eliminated.
 1232 0000 0123     		movs	r3, #1
 1233 0002 00F01F00 		and	r0, r0, #31
 1234 0006 03FA00F0 		lsl	r0, r3, r0
 1235 000a 7047     		bx	lr
 1236              		.size	pio_get_pin_group_mask, .-pio_get_pin_group_mask
 1237              		.section	.text.pio_capture_set_mode,"ax",%progbits
 1238              		.align	1
 1239              		.p2align 2,,3
 1240              		.global	pio_capture_set_mode
 1241              		.syntax unified
 1242              		.thumb
 1243              		.thumb_func
 1244              		.fpu fpv4-sp-d16
 1245              		.type	pio_capture_set_mode, %function
 1246              	pio_capture_set_mode:
 1247              		@ args = 0, pretend = 0, frame = 0
 1248              		@ frame_needed = 0, uses_anonymous_args = 0
 1249              		@ link register save eliminated.
 1250 0000 21F00101 		bic	r1, r1, #1
 1251 0004 C0F85011 		str	r1, [r0, #336]
 1252 0008 7047     		bx	lr
 1253              		.size	pio_capture_set_mode, .-pio_capture_set_mode
 1254 000a 00BF     		.section	.text.pio_capture_enable,"ax",%progbits
ARM GAS  /tmp/ccgBKcrT.s 			page 23


 1255              		.align	1
 1256              		.p2align 2,,3
 1257              		.global	pio_capture_enable
 1258              		.syntax unified
 1259              		.thumb
 1260              		.thumb_func
 1261              		.fpu fpv4-sp-d16
 1262              		.type	pio_capture_enable, %function
 1263              	pio_capture_enable:
 1264              		@ args = 0, pretend = 0, frame = 0
 1265              		@ frame_needed = 0, uses_anonymous_args = 0
 1266              		@ link register save eliminated.
 1267 0000 D0F85031 		ldr	r3, [r0, #336]
 1268 0004 034A     		ldr	r2, .L236
 1269 0006 0121     		movs	r1, #1
 1270 0008 0B43     		orrs	r3, r3, r1
 1271 000a C0F85031 		str	r3, [r0, #336]
 1272 000e 1160     		str	r1, [r2]
 1273 0010 7047     		bx	lr
 1274              	.L237:
 1275 0012 00BF     		.align	2
 1276              	.L236:
 1277 0014 00000000 		.word	pio_capture_enable_flag
 1278              		.size	pio_capture_enable, .-pio_capture_enable
 1279              		.section	.text.pio_capture_disable,"ax",%progbits
 1280              		.align	1
 1281              		.p2align 2,,3
 1282              		.global	pio_capture_disable
 1283              		.syntax unified
 1284              		.thumb
 1285              		.thumb_func
 1286              		.fpu fpv4-sp-d16
 1287              		.type	pio_capture_disable, %function
 1288              	pio_capture_disable:
 1289              		@ args = 0, pretend = 0, frame = 0
 1290              		@ frame_needed = 0, uses_anonymous_args = 0
 1291              		@ link register save eliminated.
 1292 0000 D0F85031 		ldr	r3, [r0, #336]
 1293 0004 034A     		ldr	r2, .L239
 1294 0006 0021     		movs	r1, #0
 1295 0008 23F00103 		bic	r3, r3, #1
 1296 000c C0F85031 		str	r3, [r0, #336]
 1297 0010 1160     		str	r1, [r2]
 1298 0012 7047     		bx	lr
 1299              	.L240:
 1300              		.align	2
 1301              	.L239:
 1302 0014 00000000 		.word	pio_capture_enable_flag
 1303              		.size	pio_capture_disable, .-pio_capture_disable
 1304              		.section	.text.pio_capture_read,"ax",%progbits
 1305              		.align	1
 1306              		.p2align 2,,3
 1307              		.global	pio_capture_read
 1308              		.syntax unified
 1309              		.thumb
 1310              		.thumb_func
 1311              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccgBKcrT.s 			page 24


 1312              		.type	pio_capture_read, %function
 1313              	pio_capture_read:
 1314              		@ args = 0, pretend = 0, frame = 0
 1315              		@ frame_needed = 0, uses_anonymous_args = 0
 1316              		@ link register save eliminated.
 1317 0000 D0F86031 		ldr	r3, [r0, #352]
 1318 0004 DB07     		lsls	r3, r3, #31
 1319 0006 43BF     		ittte	mi
 1320 0008 D0F86431 		ldrmi	r3, [r0, #356]
 1321 000c 0B60     		strmi	r3, [r1]
 1322 000e 0020     		movmi	r0, #0
 1323 0010 0120     		movpl	r0, #1
 1324 0012 7047     		bx	lr
 1325              		.size	pio_capture_read, .-pio_capture_read
 1326              		.section	.text.pio_capture_enable_interrupt,"ax",%progbits
 1327              		.align	1
 1328              		.p2align 2,,3
 1329              		.global	pio_capture_enable_interrupt
 1330              		.syntax unified
 1331              		.thumb
 1332              		.thumb_func
 1333              		.fpu fpv4-sp-d16
 1334              		.type	pio_capture_enable_interrupt, %function
 1335              	pio_capture_enable_interrupt:
 1336              		@ args = 0, pretend = 0, frame = 0
 1337              		@ frame_needed = 0, uses_anonymous_args = 0
 1338              		@ link register save eliminated.
 1339 0000 D0F86031 		ldr	r3, [r0, #352]
 1340 0004 C0F85411 		str	r1, [r0, #340]
 1341 0008 7047     		bx	lr
 1342              		.size	pio_capture_enable_interrupt, .-pio_capture_enable_interrupt
 1343 000a 00BF     		.section	.text.pio_capture_disable_interrupt,"ax",%progbits
 1344              		.align	1
 1345              		.p2align 2,,3
 1346              		.global	pio_capture_disable_interrupt
 1347              		.syntax unified
 1348              		.thumb
 1349              		.thumb_func
 1350              		.fpu fpv4-sp-d16
 1351              		.type	pio_capture_disable_interrupt, %function
 1352              	pio_capture_disable_interrupt:
 1353              		@ args = 0, pretend = 0, frame = 0
 1354              		@ frame_needed = 0, uses_anonymous_args = 0
 1355              		@ link register save eliminated.
 1356 0000 C0F85811 		str	r1, [r0, #344]
 1357 0004 7047     		bx	lr
 1358              		.size	pio_capture_disable_interrupt, .-pio_capture_disable_interrupt
 1359 0006 00BF     		.section	.text.pio_capture_get_interrupt_status,"ax",%progbits
 1360              		.align	1
 1361              		.p2align 2,,3
 1362              		.global	pio_capture_get_interrupt_status
 1363              		.syntax unified
 1364              		.thumb
 1365              		.thumb_func
 1366              		.fpu fpv4-sp-d16
 1367              		.type	pio_capture_get_interrupt_status, %function
 1368              	pio_capture_get_interrupt_status:
ARM GAS  /tmp/ccgBKcrT.s 			page 25


 1369              		@ args = 0, pretend = 0, frame = 0
 1370              		@ frame_needed = 0, uses_anonymous_args = 0
 1371              		@ link register save eliminated.
 1372 0000 D0F86001 		ldr	r0, [r0, #352]
 1373 0004 7047     		bx	lr
 1374              		.size	pio_capture_get_interrupt_status, .-pio_capture_get_interrupt_status
 1375 0006 00BF     		.section	.text.pio_capture_get_interrupt_mask,"ax",%progbits
 1376              		.align	1
 1377              		.p2align 2,,3
 1378              		.global	pio_capture_get_interrupt_mask
 1379              		.syntax unified
 1380              		.thumb
 1381              		.thumb_func
 1382              		.fpu fpv4-sp-d16
 1383              		.type	pio_capture_get_interrupt_mask, %function
 1384              	pio_capture_get_interrupt_mask:
 1385              		@ args = 0, pretend = 0, frame = 0
 1386              		@ frame_needed = 0, uses_anonymous_args = 0
 1387              		@ link register save eliminated.
 1388 0000 D0F85C01 		ldr	r0, [r0, #348]
 1389 0004 7047     		bx	lr
 1390              		.size	pio_capture_get_interrupt_mask, .-pio_capture_get_interrupt_mask
 1391 0006 00BF     		.section	.text.pio_capture_get_pdc_base,"ax",%progbits
 1392              		.align	1
 1393              		.p2align 2,,3
 1394              		.global	pio_capture_get_pdc_base
 1395              		.syntax unified
 1396              		.thumb
 1397              		.thumb_func
 1398              		.fpu fpv4-sp-d16
 1399              		.type	pio_capture_get_pdc_base, %function
 1400              	pio_capture_get_pdc_base:
 1401              		@ args = 0, pretend = 0, frame = 0
 1402              		@ frame_needed = 0, uses_anonymous_args = 0
 1403              		@ link register save eliminated.
 1404 0000 0048     		ldr	r0, .L249
 1405 0002 7047     		bx	lr
 1406              	.L250:
 1407              		.align	2
 1408              	.L249:
 1409 0004 680F0E40 		.word	1074663272
 1410              		.size	pio_capture_get_pdc_base, .-pio_capture_get_pdc_base
 1411              		.comm	pio_capture_enable_flag,4,4
 1412              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1413              		.align	2
 1414              		.type	cpu_irq_critical_section_counter, %object
 1415              		.size	cpu_irq_critical_section_counter, 4
 1416              	cpu_irq_critical_section_counter:
 1417 0000 00000000 		.space	4
 1418              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1419              		.type	cpu_irq_prev_interrupt_state, %object
 1420              		.size	cpu_irq_prev_interrupt_state, 1
 1421              	cpu_irq_prev_interrupt_state:
 1422 0000 00       		.space	1
 1423              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
