ARM GAS  /tmp/ccKrWtXe.s 			page 1


   1              		.cpu cortex-m4
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
  45 0000 5300     		lsls	r3, r2, #1
  46 0002 4FF40042 		mov	r2, #32768
  47 0006 B2FBF3F2 		udiv	r2, r2, r3
  48 000a 013A     		subs	r2, r2, #1
  49 000c C2F30D02 		ubfx	r2, r2, #0, #14
  50 0010 C0F88410 		str	r1, [r0, #132]
  51 0014 C0F88C20 		str	r2, [r0, #140]
  52 0018 7047     		bx	lr
  53              		.size	pio_set_debounce_filter, .-pio_set_debounce_filter
  54 001a 00BF     		.section	.text.pio_set,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	pio_set
ARM GAS  /tmp/ccKrWtXe.s 			page 2


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
ARM GAS  /tmp/ccKrWtXe.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu softvfp
 118              		.type	pio_set_peripheral, %function
 119              	pio_set_peripheral:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 B1F1C05F 		cmp	r1, #402653184
 124 0004 4264     		str	r2, [r0, #68]
 125 0006 33D0     		beq	.L14
 126 0008 10D8     		bhi	.L15
 127 000a B1F1006F 		cmp	r1, #134217728
 128 000e 1CD0     		beq	.L16
 129 0010 B1F1805F 		cmp	r1, #268435456
 130 0014 29D1     		bne	.L38
 131 0016 036F     		ldr	r3, [r0, #112]
 132 0018 1343     		orrs	r3, r3, r2
 133 001a 0367     		str	r3, [r0, #112]
 134 001c 436F     		ldr	r3, [r0, #116]
 135 001e 416F     		ldr	r1, [r0, #116]
 136 0020 0B40     		ands	r3, r3, r1
 137 0022 23EA0203 		bic	r3, r3, r2
 138 0026 4367     		str	r3, [r0, #116]
 139              	.L34:
 140 0028 4260     		str	r2, [r0, #4]
 141 002a 7047     		bx	lr
 142              	.L15:
 143 002c B1F1205F 		cmp	r1, #671088640
 144 0030 1AD0     		beq	.L37
 145 0032 28D8     		bhi	.L19
 146 0034 B1F1005F 		cmp	r1, #536870912
 147 0038 F6D1     		bne	.L34
 148 003a 036F     		ldr	r3, [r0, #112]
 149 003c 1343     		orrs	r3, r3, r2
 150 003e 0367     		str	r3, [r0, #112]
 151 0040 436F     		ldr	r3, [r0, #116]
 152 0042 1343     		orrs	r3, r3, r2
 153 0044 4367     		str	r3, [r0, #116]
 154 0046 4260     		str	r2, [r0, #4]
 155 0048 7047     		bx	lr
 156              	.L16:
 157 004a 016F     		ldr	r1, [r0, #112]
 158 004c 10B4     		push	{r4}
 159 004e 046F     		ldr	r4, [r0, #112]
 160 0050 D343     		mvns	r3, r2
 161 0052 2140     		ands	r1, r1, r4
 162 0054 1940     		ands	r1, r1, r3
 163 0056 0167     		str	r1, [r0, #112]
 164 0058 1C46     		mov	r4, r3
 165 005a 436F     		ldr	r3, [r0, #116]
 166 005c 416F     		ldr	r1, [r0, #116]
 167 005e 0B40     		ands	r3, r3, r1
 168 0060 2340     		ands	r3, r3, r4
 169 0062 10BC     		pop	{r4}
 170 0064 4367     		str	r3, [r0, #116]
 171 0066 4260     		str	r2, [r0, #4]
ARM GAS  /tmp/ccKrWtXe.s 			page 4


 172              	.L37:
 173 0068 7047     		bx	lr
 174              	.L38:
 175 006a 0029     		cmp	r1, #0
 176 006c DCD1     		bne	.L34
 177 006e 7047     		bx	lr
 178              	.L14:
 179 0070 036F     		ldr	r3, [r0, #112]
 180 0072 016F     		ldr	r1, [r0, #112]
 181 0074 0B40     		ands	r3, r3, r1
 182 0076 23EA0203 		bic	r3, r3, r2
 183 007a 0367     		str	r3, [r0, #112]
 184 007c 436F     		ldr	r3, [r0, #116]
 185 007e 1343     		orrs	r3, r3, r2
 186 0080 4367     		str	r3, [r0, #116]
 187 0082 4260     		str	r2, [r0, #4]
 188 0084 7047     		bx	lr
 189              	.L19:
 190 0086 B1F1405F 		cmp	r1, #805306368
 191 008a EDD0     		beq	.L37
 192 008c B1F1605F 		cmp	r1, #939524096
 193 0090 EAD0     		beq	.L37
 194 0092 C9E7     		b	.L34
 195              		.size	pio_set_peripheral, .-pio_set_peripheral
 196              		.section	.text.pio_set_input,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	pio_set_input
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu softvfp
 204              		.type	pio_set_input, %function
 205              	pio_set_input:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 D307     		lsls	r3, r2, #31
 210 0002 4164     		str	r1, [r0, #68]
 211 0004 4CBF     		ite	mi
 212 0006 4166     		strmi	r1, [r0, #100]
 213 0008 0166     		strpl	r1, [r0, #96]
 214 000a 12F00A0F 		tst	r2, #10
 215 000e 14BF     		ite	ne
 216 0010 0162     		strne	r1, [r0, #32]
 217 0012 4162     		streq	r1, [r0, #36]
 218 0014 9307     		lsls	r3, r2, #30
 219 0016 06D4     		bmi	.L49
 220 0018 1307     		lsls	r3, r2, #28
 221 001a 48BF     		it	mi
 222 001c C0F88410 		strmi	r1, [r0, #132]
 223 0020 4161     		str	r1, [r0, #20]
 224 0022 0160     		str	r1, [r0]
 225 0024 7047     		bx	lr
 226              	.L49:
 227 0026 C0F88010 		str	r1, [r0, #128]
 228 002a 4161     		str	r1, [r0, #20]
ARM GAS  /tmp/ccKrWtXe.s 			page 5


 229 002c 0160     		str	r1, [r0]
 230 002e 7047     		bx	lr
 231              		.size	pio_set_input, .-pio_set_input
 232              		.section	.text.pio_set_output,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	pio_set_output
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu softvfp
 240              		.type	pio_set_output, %function
 241              	pio_set_output:
 242              		@ args = 4, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 10B4     		push	{r4}
 246 0002 019C     		ldr	r4, [sp, #4]
 247 0004 4164     		str	r1, [r0, #68]
 248 0006 84B1     		cbz	r4, .L51
 249 0008 4166     		str	r1, [r0, #100]
 250              	.L52:
 251 000a 33B1     		cbz	r3, .L53
 252 000c 0165     		str	r1, [r0, #80]
 253 000e 3AB9     		cbnz	r2, .L58
 254              	.L55:
 255 0010 4163     		str	r1, [r0, #52]
 256 0012 10BC     		pop	{r4}
 257 0014 0161     		str	r1, [r0, #16]
 258 0016 0160     		str	r1, [r0]
 259 0018 7047     		bx	lr
 260              	.L53:
 261 001a 4165     		str	r1, [r0, #84]
 262 001c 002A     		cmp	r2, #0
 263 001e F7D0     		beq	.L55
 264              	.L58:
 265 0020 0163     		str	r1, [r0, #48]
 266 0022 10BC     		pop	{r4}
 267 0024 0161     		str	r1, [r0, #16]
 268 0026 0160     		str	r1, [r0]
 269 0028 7047     		bx	lr
 270              	.L51:
 271 002a 0166     		str	r1, [r0, #96]
 272 002c EDE7     		b	.L52
 273              		.size	pio_set_output, .-pio_set_output
 274 002e 00BF     		.section	.text.pio_configure,"ax",%progbits
 275              		.align	1
 276              		.p2align 2,,3
 277              		.global	pio_configure
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu softvfp
 282              		.type	pio_configure, %function
 283              	pio_configure:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccKrWtXe.s 			page 6


 286 0000 B1F1005F 		cmp	r1, #536870912
 287 0004 70B5     		push	{r4, r5, r6, lr}
 288 0006 3ED0     		beq	.L61
 289 0008 34D9     		bls	.L101
 290 000a B1F1405F 		cmp	r1, #805306368
 291 000e 1DD0     		beq	.L63
 292 0010 B1F1605F 		cmp	r1, #939524096
 293 0014 1AD0     		beq	.L63
 294 0016 B1F1205F 		cmp	r1, #671088640
 295 001a 02D0     		beq	.L64
 296              	.L78:
 297 001c 0023     		movs	r3, #0
 298 001e 1846     		mov	r0, r3
 299 0020 70BD     		pop	{r4, r5, r6, pc}
 300              	.L64:
 301 0022 DD07     		lsls	r5, r3, #31
 302 0024 4264     		str	r2, [r0, #68]
 303 0026 4CBF     		ite	mi
 304 0028 4266     		strmi	r2, [r0, #100]
 305 002a 0266     		strpl	r2, [r0, #96]
 306 002c 13F00A0F 		tst	r3, #10
 307 0030 14BF     		ite	ne
 308 0032 0262     		strne	r2, [r0, #32]
 309 0034 4262     		streq	r2, [r0, #36]
 310 0036 9C07     		lsls	r4, r3, #30
 311 0038 32D4     		bmi	.L102
 312 003a 1907     		lsls	r1, r3, #28
 313 003c 48BF     		it	mi
 314 003e C0F88420 		strmi	r2, [r0, #132]
 315              	.L71:
 316 0042 0123     		movs	r3, #1
 317 0044 4261     		str	r2, [r0, #20]
 318 0046 0260     		str	r2, [r0]
 319 0048 1846     		mov	r0, r3
 320 004a 70BD     		pop	{r4, r5, r6, pc}
 321              	.L63:
 322 004c 03F00404 		and	r4, r3, #4
 323 0050 DB07     		lsls	r3, r3, #31
 324 0052 4264     		str	r2, [r0, #68]
 325 0054 4CBF     		ite	mi
 326 0056 4266     		strmi	r2, [r0, #100]
 327 0058 0266     		strpl	r2, [r0, #96]
 328 005a FCB9     		cbnz	r4, .L103
 329 005c 4265     		str	r2, [r0, #84]
 330              	.L75:
 331 005e B1F1605F 		cmp	r1, #939524096
 332 0062 4FF00103 		mov	r3, #1
 333 0066 0CBF     		ite	eq
 334 0068 0263     		streq	r2, [r0, #48]
 335 006a 4263     		strne	r2, [r0, #52]
 336 006c 0261     		str	r2, [r0, #16]
 337 006e 0260     		str	r2, [r0]
 338 0070 1846     		mov	r0, r3
 339 0072 70BD     		pop	{r4, r5, r6, pc}
 340              	.L101:
 341 0074 B1F1805F 		cmp	r1, #268435456
 342 0078 05D0     		beq	.L61
ARM GAS  /tmp/ccKrWtXe.s 			page 7


 343 007a B1F1C05F 		cmp	r1, #402653184
 344 007e 02D0     		beq	.L61
 345 0080 B1F1006F 		cmp	r1, #134217728
 346 0084 CAD1     		bne	.L78
 347              	.L61:
 348 0086 1E46     		mov	r6, r3
 349 0088 FFF7FEFF 		bl	pio_set_peripheral
 350 008c F607     		lsls	r6, r6, #31
 351 008e 4FF00103 		mov	r3, #1
 352 0092 4CBF     		ite	mi
 353 0094 4266     		strmi	r2, [r0, #100]
 354 0096 0266     		strpl	r2, [r0, #96]
 355 0098 1846     		mov	r0, r3
 356 009a 70BD     		pop	{r4, r5, r6, pc}
 357              	.L103:
 358 009c 0265     		str	r2, [r0, #80]
 359 009e DEE7     		b	.L75
 360              	.L102:
 361 00a0 C0F88020 		str	r2, [r0, #128]
 362 00a4 CDE7     		b	.L71
 363              		.size	pio_configure, .-pio_configure
 364 00a6 00BF     		.section	.text.pio_get_output_data_status,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	pio_get_output_data_status
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu softvfp
 372              		.type	pio_get_output_data_status, %function
 373              	pio_get_output_data_status:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376              		@ link register save eliminated.
 377 0000 836B     		ldr	r3, [r0, #56]
 378 0002 0B42     		tst	r3, r1
 379 0004 14BF     		ite	ne
 380 0006 0120     		movne	r0, #1
 381 0008 0020     		moveq	r0, #0
 382 000a 7047     		bx	lr
 383              		.size	pio_get_output_data_status, .-pio_get_output_data_status
 384              		.section	.text.pio_set_multi_driver,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	pio_set_multi_driver
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 392              		.type	pio_set_multi_driver, %function
 393              	pio_set_multi_driver:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 0AB9     		cbnz	r2, .L108
 398 0002 4165     		str	r1, [r0, #84]
 399 0004 7047     		bx	lr
ARM GAS  /tmp/ccKrWtXe.s 			page 8


 400              	.L108:
 401 0006 0165     		str	r1, [r0, #80]
 402 0008 7047     		bx	lr
 403              		.size	pio_set_multi_driver, .-pio_set_multi_driver
 404 000a 00BF     		.section	.text.pio_get_multi_driver_status,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	pio_get_multi_driver_status
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu softvfp
 412              		.type	pio_get_multi_driver_status, %function
 413              	pio_get_multi_driver_status:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416              		@ link register save eliminated.
 417 0000 806D     		ldr	r0, [r0, #88]
 418 0002 7047     		bx	lr
 419              		.size	pio_get_multi_driver_status, .-pio_get_multi_driver_status
 420              		.section	.text.pio_pull_down,"ax",%progbits
 421              		.align	1
 422              		.p2align 2,,3
 423              		.global	pio_pull_down
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu softvfp
 428              		.type	pio_pull_down, %function
 429              	pio_pull_down:
 430              		@ args = 0, pretend = 0, frame = 0
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432              		@ link register save eliminated.
 433 0000 12B9     		cbnz	r2, .L113
 434 0002 C0F89010 		str	r1, [r0, #144]
 435 0006 7047     		bx	lr
 436              	.L113:
 437 0008 C0F89410 		str	r1, [r0, #148]
 438 000c 7047     		bx	lr
 439              		.size	pio_pull_down, .-pio_pull_down
 440 000e 00BF     		.section	.text.pio_enable_output_write,"ax",%progbits
 441              		.align	1
 442              		.p2align 2,,3
 443              		.global	pio_enable_output_write
 444              		.syntax unified
 445              		.thumb
 446              		.thumb_func
 447              		.fpu softvfp
 448              		.type	pio_enable_output_write, %function
 449              	pio_enable_output_write:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452              		@ link register save eliminated.
 453 0000 C0F8A010 		str	r1, [r0, #160]
 454 0004 7047     		bx	lr
 455              		.size	pio_enable_output_write, .-pio_enable_output_write
 456 0006 00BF     		.section	.text.pio_disable_output_write,"ax",%progbits
ARM GAS  /tmp/ccKrWtXe.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	pio_disable_output_write
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu softvfp
 464              		.type	pio_disable_output_write, %function
 465              	pio_disable_output_write:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469 0000 C0F8A410 		str	r1, [r0, #164]
 470 0004 7047     		bx	lr
 471              		.size	pio_disable_output_write, .-pio_disable_output_write
 472 0006 00BF     		.section	.text.pio_get_output_write_status,"ax",%progbits
 473              		.align	1
 474              		.p2align 2,,3
 475              		.global	pio_get_output_write_status
 476              		.syntax unified
 477              		.thumb
 478              		.thumb_func
 479              		.fpu softvfp
 480              		.type	pio_get_output_write_status, %function
 481              	pio_get_output_write_status:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 D0F8A800 		ldr	r0, [r0, #168]
 486 0004 7047     		bx	lr
 487              		.size	pio_get_output_write_status, .-pio_get_output_write_status
 488 0006 00BF     		.section	.text.pio_sync_output_write,"ax",%progbits
 489              		.align	1
 490              		.p2align 2,,3
 491              		.global	pio_sync_output_write
 492              		.syntax unified
 493              		.thumb
 494              		.thumb_func
 495              		.fpu softvfp
 496              		.type	pio_sync_output_write, %function
 497              	pio_sync_output_write:
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              		@ link register save eliminated.
 501 0000 8163     		str	r1, [r0, #56]
 502 0002 7047     		bx	lr
 503              		.size	pio_sync_output_write, .-pio_sync_output_write
 504              		.section	.text.pio_set_schmitt_trigger,"ax",%progbits
 505              		.align	1
 506              		.p2align 2,,3
 507              		.global	pio_set_schmitt_trigger
 508              		.syntax unified
 509              		.thumb
 510              		.thumb_func
 511              		.fpu softvfp
 512              		.type	pio_set_schmitt_trigger, %function
 513              	pio_set_schmitt_trigger:
ARM GAS  /tmp/ccKrWtXe.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516              		@ link register save eliminated.
 517 0000 C0F80011 		str	r1, [r0, #256]
 518 0004 7047     		bx	lr
 519              		.size	pio_set_schmitt_trigger, .-pio_set_schmitt_trigger
 520 0006 00BF     		.section	.text.pio_get_schmitt_trigger,"ax",%progbits
 521              		.align	1
 522              		.p2align 2,,3
 523              		.global	pio_get_schmitt_trigger
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu softvfp
 528              		.type	pio_get_schmitt_trigger, %function
 529              	pio_get_schmitt_trigger:
 530              		@ args = 0, pretend = 0, frame = 0
 531              		@ frame_needed = 0, uses_anonymous_args = 0
 532              		@ link register save eliminated.
 533 0000 D0F80001 		ldr	r0, [r0, #256]
 534 0004 7047     		bx	lr
 535              		.size	pio_get_schmitt_trigger, .-pio_get_schmitt_trigger
 536 0006 00BF     		.section	.text.pio_enable_interrupt,"ax",%progbits
 537              		.align	1
 538              		.p2align 2,,3
 539              		.global	pio_enable_interrupt
 540              		.syntax unified
 541              		.thumb
 542              		.thumb_func
 543              		.fpu softvfp
 544              		.type	pio_enable_interrupt, %function
 545              	pio_enable_interrupt:
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548              		@ link register save eliminated.
 549 0000 0164     		str	r1, [r0, #64]
 550 0002 7047     		bx	lr
 551              		.size	pio_enable_interrupt, .-pio_enable_interrupt
 552              		.section	.text.pio_disable_interrupt,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	pio_disable_interrupt
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu softvfp
 560              		.type	pio_disable_interrupt, %function
 561              	pio_disable_interrupt:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565 0000 4164     		str	r1, [r0, #68]
 566 0002 7047     		bx	lr
 567              		.size	pio_disable_interrupt, .-pio_disable_interrupt
 568              		.section	.text.pio_get_interrupt_status,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
ARM GAS  /tmp/ccKrWtXe.s 			page 11


 571              		.global	pio_get_interrupt_status
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu softvfp
 576              		.type	pio_get_interrupt_status, %function
 577              	pio_get_interrupt_status:
 578              		@ args = 0, pretend = 0, frame = 0
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580              		@ link register save eliminated.
 581 0000 C06C     		ldr	r0, [r0, #76]
 582 0002 7047     		bx	lr
 583              		.size	pio_get_interrupt_status, .-pio_get_interrupt_status
 584              		.section	.text.pio_get_interrupt_mask,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	pio_get_interrupt_mask
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu softvfp
 592              		.type	pio_get_interrupt_mask, %function
 593              	pio_get_interrupt_mask:
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596              		@ link register save eliminated.
 597 0000 806C     		ldr	r0, [r0, #72]
 598 0002 7047     		bx	lr
 599              		.size	pio_get_interrupt_mask, .-pio_get_interrupt_mask
 600              		.section	.text.pio_set_additional_interrupt_mode,"ax",%progbits
 601              		.align	1
 602              		.p2align 2,,3
 603              		.global	pio_set_additional_interrupt_mode
 604              		.syntax unified
 605              		.thumb
 606              		.thumb_func
 607              		.fpu softvfp
 608              		.type	pio_set_additional_interrupt_mode, %function
 609              	pio_set_additional_interrupt_mode:
 610              		@ args = 0, pretend = 0, frame = 0
 611              		@ frame_needed = 0, uses_anonymous_args = 0
 612              		@ link register save eliminated.
 613 0000 D306     		lsls	r3, r2, #27
 614 0002 0ED5     		bpl	.L125
 615 0004 9306     		lsls	r3, r2, #26
 616 0006 C0F8B010 		str	r1, [r0, #176]
 617 000a 4CBF     		ite	mi
 618 000c C0F8D410 		strmi	r1, [r0, #212]
 619 0010 C0F8D010 		strpl	r1, [r0, #208]
 620 0014 5306     		lsls	r3, r2, #25
 621 0016 4CBF     		ite	mi
 622 0018 C0F8C010 		strmi	r1, [r0, #192]
 623 001c C0F8C410 		strpl	r1, [r0, #196]
 624 0020 7047     		bx	lr
 625              	.L125:
 626 0022 C0F8B410 		str	r1, [r0, #180]
 627 0026 7047     		bx	lr
ARM GAS  /tmp/ccKrWtXe.s 			page 12


 628              		.size	pio_set_additional_interrupt_mode, .-pio_set_additional_interrupt_mode
 629              		.section	.text.pio_configure_interrupt,"ax",%progbits
 630              		.align	1
 631              		.p2align 2,,3
 632              		.global	pio_configure_interrupt
 633              		.syntax unified
 634              		.thumb
 635              		.thumb_func
 636              		.fpu softvfp
 637              		.type	pio_configure_interrupt, %function
 638              	pio_configure_interrupt:
 639              		@ args = 0, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641              		@ link register save eliminated.
 642 0000 FFF7FEBF 		b	pio_set_additional_interrupt_mode
 643              		.size	pio_configure_interrupt, .-pio_configure_interrupt
 644              		.section	.text.pio_set_writeprotect,"ax",%progbits
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	pio_set_writeprotect
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu softvfp
 652              		.type	pio_set_writeprotect, %function
 653              	pio_set_writeprotect:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656              		@ link register save eliminated.
 657 0000 034B     		ldr	r3, .L132
 658 0002 01F00101 		and	r1, r1, #1
 659 0006 0B43     		orrs	r3, r3, r1
 660 0008 C0F8E430 		str	r3, [r0, #228]
 661 000c 7047     		bx	lr
 662              	.L133:
 663 000e 00BF     		.align	2
 664              	.L132:
 665 0010 004F4950 		.word	1346981632
 666              		.size	pio_set_writeprotect, .-pio_set_writeprotect
 667              		.section	.text.pio_get_writeprotect_status,"ax",%progbits
 668              		.align	1
 669              		.p2align 2,,3
 670              		.global	pio_get_writeprotect_status
 671              		.syntax unified
 672              		.thumb
 673              		.thumb_func
 674              		.fpu softvfp
 675              		.type	pio_get_writeprotect_status, %function
 676              	pio_get_writeprotect_status:
 677              		@ args = 0, pretend = 0, frame = 0
 678              		@ frame_needed = 0, uses_anonymous_args = 0
 679              		@ link register save eliminated.
 680 0000 D0F8E800 		ldr	r0, [r0, #232]
 681 0004 7047     		bx	lr
 682              		.size	pio_get_writeprotect_status, .-pio_get_writeprotect_status
 683 0006 00BF     		.section	.text.pio_get_pin_value,"ax",%progbits
 684              		.align	1
ARM GAS  /tmp/ccKrWtXe.s 			page 13


 685              		.p2align 2,,3
 686              		.global	pio_get_pin_value
 687              		.syntax unified
 688              		.thumb
 689              		.thumb_func
 690              		.fpu softvfp
 691              		.type	pio_get_pin_value, %function
 692              	pio_get_pin_value:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695              		@ link register save eliminated.
 696 0000 4309     		lsrs	r3, r0, #5
 697 0002 03F50013 		add	r3, r3, #2097152
 698 0006 03F20773 		addw	r3, r3, #1799
 699 000a 5B02     		lsls	r3, r3, #9
 700 000c 00F01F00 		and	r0, r0, #31
 701 0010 DB6B     		ldr	r3, [r3, #60]
 702 0012 23FA00F0 		lsr	r0, r3, r0
 703 0016 00F00100 		and	r0, r0, #1
 704 001a 7047     		bx	lr
 705              		.size	pio_get_pin_value, .-pio_get_pin_value
 706              		.section	.text.pio_set_pin_high,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	pio_set_pin_high
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu softvfp
 714              		.type	pio_set_pin_high, %function
 715              	pio_set_pin_high:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 4309     		lsrs	r3, r0, #5
 720 0002 03F50013 		add	r3, r3, #2097152
 721 0006 03F20773 		addw	r3, r3, #1799
 722 000a 5B02     		lsls	r3, r3, #9
 723 000c 00F01F00 		and	r0, r0, #31
 724 0010 0122     		movs	r2, #1
 725 0012 02FA00F0 		lsl	r0, r2, r0
 726 0016 1863     		str	r0, [r3, #48]
 727 0018 7047     		bx	lr
 728              		.size	pio_set_pin_high, .-pio_set_pin_high
 729 001a 00BF     		.section	.text.pio_set_pin_low,"ax",%progbits
 730              		.align	1
 731              		.p2align 2,,3
 732              		.global	pio_set_pin_low
 733              		.syntax unified
 734              		.thumb
 735              		.thumb_func
 736              		.fpu softvfp
 737              		.type	pio_set_pin_low, %function
 738              	pio_set_pin_low:
 739              		@ args = 0, pretend = 0, frame = 0
 740              		@ frame_needed = 0, uses_anonymous_args = 0
 741              		@ link register save eliminated.
ARM GAS  /tmp/ccKrWtXe.s 			page 14


 742 0000 4309     		lsrs	r3, r0, #5
 743 0002 03F50013 		add	r3, r3, #2097152
 744 0006 03F20773 		addw	r3, r3, #1799
 745 000a 5B02     		lsls	r3, r3, #9
 746 000c 00F01F00 		and	r0, r0, #31
 747 0010 0122     		movs	r2, #1
 748 0012 02FA00F0 		lsl	r0, r2, r0
 749 0016 5863     		str	r0, [r3, #52]
 750 0018 7047     		bx	lr
 751              		.size	pio_set_pin_low, .-pio_set_pin_low
 752 001a 00BF     		.section	.text.pio_toggle_pin,"ax",%progbits
 753              		.align	1
 754              		.p2align 2,,3
 755              		.global	pio_toggle_pin
 756              		.syntax unified
 757              		.thumb
 758              		.thumb_func
 759              		.fpu softvfp
 760              		.type	pio_toggle_pin, %function
 761              	pio_toggle_pin:
 762              		@ args = 0, pretend = 0, frame = 0
 763              		@ frame_needed = 0, uses_anonymous_args = 0
 764              		@ link register save eliminated.
 765 0000 4309     		lsrs	r3, r0, #5
 766 0002 03F50013 		add	r3, r3, #2097152
 767 0006 03F20773 		addw	r3, r3, #1799
 768 000a 5B02     		lsls	r3, r3, #9
 769 000c 00F01F02 		and	r2, r0, #31
 770 0010 996B     		ldr	r1, [r3, #56]
 771 0012 0120     		movs	r0, #1
 772 0014 9040     		lsls	r0, r0, r2
 773 0016 0142     		tst	r1, r0
 774 0018 14BF     		ite	ne
 775 001a 5863     		strne	r0, [r3, #52]
 776 001c 1863     		streq	r0, [r3, #48]
 777 001e 7047     		bx	lr
 778              		.size	pio_toggle_pin, .-pio_toggle_pin
 779              		.section	.text.pio_configure_pin,"ax",%progbits
 780              		.align	1
 781              		.p2align 2,,3
 782              		.global	pio_configure_pin
 783              		.syntax unified
 784              		.thumb
 785              		.thumb_func
 786              		.fpu softvfp
 787              		.type	pio_configure_pin, %function
 788              	pio_configure_pin:
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791              		@ link register save eliminated.
 792 0000 4309     		lsrs	r3, r0, #5
 793 0002 03F50013 		add	r3, r3, #2097152
 794 0006 01F0F042 		and	r2, r1, #2013265920
 795 000a 03F20773 		addw	r3, r3, #1799
 796 000e B2F1005F 		cmp	r2, #536870912
 797 0012 70B4     		push	{r4, r5, r6}
 798 0014 4FEA4323 		lsl	r3, r3, #9
ARM GAS  /tmp/ccKrWtXe.s 			page 15


 799 0018 00F08680 		beq	.L143
 800 001c 0BD8     		bhi	.L144
 801 001e B2F1805F 		cmp	r2, #268435456
 802 0022 28D0     		beq	.L145
 803 0024 B2F1C05F 		cmp	r2, #402653184
 804 0028 6AD0     		beq	.L146
 805 002a B2F1006F 		cmp	r2, #134217728
 806 002e 37D0     		beq	.L183
 807              	.L166:
 808 0030 0020     		movs	r0, #0
 809 0032 70BC     		pop	{r4, r5, r6}
 810 0034 7047     		bx	lr
 811              	.L144:
 812 0036 B2F1405F 		cmp	r2, #805306368
 813 003a 48D0     		beq	.L148
 814 003c B2F1605F 		cmp	r2, #939524096
 815 0040 45D0     		beq	.L148
 816 0042 B2F1205F 		cmp	r2, #671088640
 817 0046 F3D1     		bne	.L166
 818 0048 00F01F00 		and	r0, r0, #31
 819 004c 0122     		movs	r2, #1
 820 004e 8240     		lsls	r2, r2, r0
 821 0050 CD07     		lsls	r5, r1, #31
 822 0052 5A64     		str	r2, [r3, #68]
 823 0054 4CBF     		ite	mi
 824 0056 5A66     		strmi	r2, [r3, #100]
 825 0058 1A66     		strpl	r2, [r3, #96]
 826 005a 11F00A0F 		tst	r1, #10
 827 005e 14BF     		ite	ne
 828 0060 1A62     		strne	r2, [r3, #32]
 829 0062 5A62     		streq	r2, [r3, #36]
 830 0064 8C07     		lsls	r4, r1, #30
 831 0066 68D5     		bpl	.L158
 832 0068 C3F88020 		str	r2, [r3, #128]
 833              	.L159:
 834 006c 5A61     		str	r2, [r3, #20]
 835 006e 0120     		movs	r0, #1
 836 0070 1A60     		str	r2, [r3]
 837 0072 70BC     		pop	{r4, r5, r6}
 838 0074 7047     		bx	lr
 839              	.L145:
 840 0076 00F01F02 		and	r2, r0, #31
 841 007a 0120     		movs	r0, #1
 842 007c 00FA02F2 		lsl	r2, r0, r2
 843 0080 5A64     		str	r2, [r3, #68]
 844 0082 1C6F     		ldr	r4, [r3, #112]
 845 0084 1443     		orrs	r4, r4, r2
 846 0086 1C67     		str	r4, [r3, #112]
 847 0088 5C6F     		ldr	r4, [r3, #116]
 848 008a 5D6F     		ldr	r5, [r3, #116]
 849 008c 2C40     		ands	r4, r4, r5
 850 008e 24EA0204 		bic	r4, r4, r2
 851 0092 C907     		lsls	r1, r1, #31
 852 0094 5C67     		str	r4, [r3, #116]
 853 0096 5A60     		str	r2, [r3, #4]
 854 0098 16D5     		bpl	.L153
 855              	.L179:
ARM GAS  /tmp/ccKrWtXe.s 			page 16


 856 009a 5A66     		str	r2, [r3, #100]
 857 009c 70BC     		pop	{r4, r5, r6}
 858 009e 7047     		bx	lr
 859              	.L183:
 860 00a0 00F01F02 		and	r2, r0, #31
 861 00a4 0120     		movs	r0, #1
 862 00a6 00FA02F2 		lsl	r2, r0, r2
 863 00aa 5A64     		str	r2, [r3, #68]
 864 00ac 1D6F     		ldr	r5, [r3, #112]
 865 00ae 1C6F     		ldr	r4, [r3, #112]
 866 00b0 D643     		mvns	r6, r2
 867 00b2 2540     		ands	r5, r5, r4
 868 00b4 3540     		ands	r5, r5, r6
 869 00b6 1D67     		str	r5, [r3, #112]
 870 00b8 5C6F     		ldr	r4, [r3, #116]
 871 00ba 5D6F     		ldr	r5, [r3, #116]
 872 00bc 2C40     		ands	r4, r4, r5
 873 00be 3440     		ands	r4, r4, r6
 874 00c0 5C67     		str	r4, [r3, #116]
 875 00c2 CC07     		lsls	r4, r1, #31
 876 00c4 5A60     		str	r2, [r3, #4]
 877 00c6 E8D4     		bmi	.L179
 878              	.L153:
 879 00c8 1A66     		str	r2, [r3, #96]
 880 00ca 70BC     		pop	{r4, r5, r6}
 881 00cc 7047     		bx	lr
 882              	.L148:
 883 00ce 00F01F00 		and	r0, r0, #31
 884 00d2 0122     		movs	r2, #1
 885 00d4 8240     		lsls	r2, r2, r0
 886 00d6 01F00404 		and	r4, r1, #4
 887 00da 01F06050 		and	r0, r1, #939524096
 888 00de C907     		lsls	r1, r1, #31
 889 00e0 5A64     		str	r2, [r3, #68]
 890 00e2 4CBF     		ite	mi
 891 00e4 5A66     		strmi	r2, [r3, #100]
 892 00e6 1A66     		strpl	r2, [r3, #96]
 893 00e8 64B3     		cbz	r4, .L162
 894 00ea 1A65     		str	r2, [r3, #80]
 895              	.L163:
 896 00ec B0F1605F 		cmp	r0, #939524096
 897 00f0 0CBF     		ite	eq
 898 00f2 1A63     		streq	r2, [r3, #48]
 899 00f4 5A63     		strne	r2, [r3, #52]
 900 00f6 0120     		movs	r0, #1
 901 00f8 1A61     		str	r2, [r3, #16]
 902 00fa 1A60     		str	r2, [r3]
 903 00fc 70BC     		pop	{r4, r5, r6}
 904 00fe 7047     		bx	lr
 905              	.L146:
 906 0100 00F01F02 		and	r2, r0, #31
 907 0104 0120     		movs	r0, #1
 908 0106 00FA02F2 		lsl	r2, r0, r2
 909 010a 5A64     		str	r2, [r3, #68]
 910 010c 1C6F     		ldr	r4, [r3, #112]
 911 010e 1D6F     		ldr	r5, [r3, #112]
 912 0110 2C40     		ands	r4, r4, r5
ARM GAS  /tmp/ccKrWtXe.s 			page 17


 913 0112 24EA0204 		bic	r4, r4, r2
 914              	.L181:
 915 0116 1C67     		str	r4, [r3, #112]
 916 0118 5C6F     		ldr	r4, [r3, #116]
 917 011a CE07     		lsls	r6, r1, #31
 918 011c 44EA0204 		orr	r4, r4, r2
 919 0120 5C67     		str	r4, [r3, #116]
 920 0122 5A60     		str	r2, [r3, #4]
 921 0124 D0D5     		bpl	.L153
 922 0126 B8E7     		b	.L179
 923              	.L143:
 924 0128 00F01F02 		and	r2, r0, #31
 925 012c 0120     		movs	r0, #1
 926 012e 00FA02F2 		lsl	r2, r0, r2
 927 0132 5A64     		str	r2, [r3, #68]
 928 0134 1C6F     		ldr	r4, [r3, #112]
 929 0136 1443     		orrs	r4, r4, r2
 930 0138 EDE7     		b	.L181
 931              	.L158:
 932 013a 0807     		lsls	r0, r1, #28
 933 013c 48BF     		it	mi
 934 013e C3F88420 		strmi	r2, [r3, #132]
 935 0142 93E7     		b	.L159
 936              	.L162:
 937 0144 5A65     		str	r2, [r3, #84]
 938 0146 D1E7     		b	.L163
 939              		.size	pio_configure_pin, .-pio_configure_pin
 940              		.section	.text.pio_set_pin_group_high,"ax",%progbits
 941              		.align	1
 942              		.p2align 2,,3
 943              		.global	pio_set_pin_group_high
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu softvfp
 948              		.type	pio_set_pin_group_high, %function
 949              	pio_set_pin_group_high:
 950              		@ args = 0, pretend = 0, frame = 0
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952              		@ link register save eliminated.
 953 0000 0163     		str	r1, [r0, #48]
 954 0002 7047     		bx	lr
 955              		.size	pio_set_pin_group_high, .-pio_set_pin_group_high
 956              		.section	.text.pio_set_pin_group_low,"ax",%progbits
 957              		.align	1
 958              		.p2align 2,,3
 959              		.global	pio_set_pin_group_low
 960              		.syntax unified
 961              		.thumb
 962              		.thumb_func
 963              		.fpu softvfp
 964              		.type	pio_set_pin_group_low, %function
 965              	pio_set_pin_group_low:
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 969 0000 4163     		str	r1, [r0, #52]
ARM GAS  /tmp/ccKrWtXe.s 			page 18


 970 0002 7047     		bx	lr
 971              		.size	pio_set_pin_group_low, .-pio_set_pin_group_low
 972              		.section	.text.pio_toggle_pin_group,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	pio_toggle_pin_group
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu softvfp
 980              		.type	pio_toggle_pin_group, %function
 981              	pio_toggle_pin_group:
 982              		@ args = 0, pretend = 0, frame = 0
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984              		@ link register save eliminated.
 985 0000 836B     		ldr	r3, [r0, #56]
 986 0002 0B42     		tst	r3, r1
 987 0004 14BF     		ite	ne
 988 0006 4163     		strne	r1, [r0, #52]
 989 0008 0163     		streq	r1, [r0, #48]
 990 000a 7047     		bx	lr
 991              		.size	pio_toggle_pin_group, .-pio_toggle_pin_group
 992              		.section	.text.pio_configure_pin_group,"ax",%progbits
 993              		.align	1
 994              		.p2align 2,,3
 995              		.global	pio_configure_pin_group
 996              		.syntax unified
 997              		.thumb
 998              		.thumb_func
 999              		.fpu softvfp
 1000              		.type	pio_configure_pin_group, %function
 1001              	pio_configure_pin_group:
 1002              		@ args = 0, pretend = 0, frame = 0
 1003              		@ frame_needed = 0, uses_anonymous_args = 0
 1004              		@ link register save eliminated.
 1005 0000 30B4     		push	{r4, r5}
 1006 0002 02F0F044 		and	r4, r2, #2013265920
 1007 0006 B4F1005F 		cmp	r4, #536870912
 1008 000a 0346     		mov	r3, r0
 1009 000c 71D0     		beq	.L191
 1010 000e 0BD8     		bhi	.L192
 1011 0010 B4F1805F 		cmp	r4, #268435456
 1012 0014 24D0     		beq	.L193
 1013 0016 B4F1C05F 		cmp	r4, #402653184
 1014 001a 5BD0     		beq	.L194
 1015 001c B4F1006F 		cmp	r4, #134217728
 1016 0020 2FD0     		beq	.L231
 1017              	.L214:
 1018 0022 0020     		movs	r0, #0
 1019 0024 30BC     		pop	{r4, r5}
 1020 0026 7047     		bx	lr
 1021              	.L192:
 1022 0028 B4F1405F 		cmp	r4, #805306368
 1023 002c 3DD0     		beq	.L196
 1024 002e B4F1605F 		cmp	r4, #939524096
 1025 0032 3AD0     		beq	.L196
 1026 0034 B4F1205F 		cmp	r4, #671088640
ARM GAS  /tmp/ccKrWtXe.s 			page 19


 1027 0038 F3D1     		bne	.L214
 1028 003a D507     		lsls	r5, r2, #31
 1029 003c 4164     		str	r1, [r0, #68]
 1030 003e 4CBF     		ite	mi
 1031 0040 4166     		strmi	r1, [r0, #100]
 1032 0042 0166     		strpl	r1, [r0, #96]
 1033 0044 12F00A0F 		tst	r2, #10
 1034 0048 14BF     		ite	ne
 1035 004a 0162     		strne	r1, [r0, #32]
 1036 004c 4162     		streq	r1, [r0, #36]
 1037 004e 9407     		lsls	r4, r2, #30
 1038 0050 53D5     		bpl	.L206
 1039 0052 C0F88010 		str	r1, [r0, #128]
 1040              	.L207:
 1041 0056 5961     		str	r1, [r3, #20]
 1042 0058 0120     		movs	r0, #1
 1043 005a 1960     		str	r1, [r3]
 1044 005c 30BC     		pop	{r4, r5}
 1045 005e 7047     		bx	lr
 1046              	.L193:
 1047 0060 4164     		str	r1, [r0, #68]
 1048 0062 006F     		ldr	r0, [r0, #112]
 1049 0064 0843     		orrs	r0, r0, r1
 1050 0066 1867     		str	r0, [r3, #112]
 1051 0068 586F     		ldr	r0, [r3, #116]
 1052 006a 5C6F     		ldr	r4, [r3, #116]
 1053 006c 2040     		ands	r0, r0, r4
 1054 006e 20EA0100 		bic	r0, r0, r1
 1055 0072 5867     		str	r0, [r3, #116]
 1056 0074 D007     		lsls	r0, r2, #31
 1057 0076 5960     		str	r1, [r3, #4]
 1058 0078 13D5     		bpl	.L201
 1059              	.L227:
 1060 007a 0120     		movs	r0, #1
 1061 007c 5966     		str	r1, [r3, #100]
 1062 007e 30BC     		pop	{r4, r5}
 1063 0080 7047     		bx	lr
 1064              	.L231:
 1065 0082 4164     		str	r1, [r0, #68]
 1066 0084 046F     		ldr	r4, [r0, #112]
 1067 0086 056F     		ldr	r5, [r0, #112]
 1068 0088 C843     		mvns	r0, r1
 1069 008a 2C40     		ands	r4, r4, r5
 1070 008c 0440     		ands	r4, r4, r0
 1071 008e 1C67     		str	r4, [r3, #112]
 1072 0090 0546     		mov	r5, r0
 1073 0092 586F     		ldr	r0, [r3, #116]
 1074 0094 5C6F     		ldr	r4, [r3, #116]
 1075 0096 2040     		ands	r0, r0, r4
 1076 0098 2840     		ands	r0, r0, r5
 1077 009a D407     		lsls	r4, r2, #31
 1078 009c 5867     		str	r0, [r3, #116]
 1079 009e 5960     		str	r1, [r3, #4]
 1080 00a0 EBD4     		bmi	.L227
 1081              	.L201:
 1082 00a2 0120     		movs	r0, #1
 1083 00a4 1966     		str	r1, [r3, #96]
ARM GAS  /tmp/ccKrWtXe.s 			page 20


 1084 00a6 30BC     		pop	{r4, r5}
 1085 00a8 7047     		bx	lr
 1086              	.L196:
 1087 00aa 02F06050 		and	r0, r2, #939524096
 1088 00ae 02F00404 		and	r4, r2, #4
 1089 00b2 D207     		lsls	r2, r2, #31
 1090 00b4 5964     		str	r1, [r3, #68]
 1091 00b6 4CBF     		ite	mi
 1092 00b8 5966     		strmi	r1, [r3, #100]
 1093 00ba 1966     		strpl	r1, [r3, #96]
 1094 00bc 14B3     		cbz	r4, .L210
 1095 00be 1965     		str	r1, [r3, #80]
 1096              	.L211:
 1097 00c0 B0F1605F 		cmp	r0, #939524096
 1098 00c4 0CBF     		ite	eq
 1099 00c6 1963     		streq	r1, [r3, #48]
 1100 00c8 5963     		strne	r1, [r3, #52]
 1101 00ca 0120     		movs	r0, #1
 1102 00cc 1961     		str	r1, [r3, #16]
 1103 00ce 1960     		str	r1, [r3]
 1104 00d0 30BC     		pop	{r4, r5}
 1105 00d2 7047     		bx	lr
 1106              	.L194:
 1107 00d4 4164     		str	r1, [r0, #68]
 1108 00d6 006F     		ldr	r0, [r0, #112]
 1109 00d8 1C6F     		ldr	r4, [r3, #112]
 1110 00da 2040     		ands	r0, r0, r4
 1111 00dc 20EA0100 		bic	r0, r0, r1
 1112              	.L229:
 1113 00e0 1867     		str	r0, [r3, #112]
 1114 00e2 586F     		ldr	r0, [r3, #116]
 1115 00e4 D207     		lsls	r2, r2, #31
 1116 00e6 40EA0100 		orr	r0, r0, r1
 1117 00ea 5867     		str	r0, [r3, #116]
 1118 00ec 5960     		str	r1, [r3, #4]
 1119 00ee D8D5     		bpl	.L201
 1120 00f0 C3E7     		b	.L227
 1121              	.L191:
 1122 00f2 4164     		str	r1, [r0, #68]
 1123 00f4 006F     		ldr	r0, [r0, #112]
 1124 00f6 0843     		orrs	r0, r0, r1
 1125 00f8 F2E7     		b	.L229
 1126              	.L206:
 1127 00fa 1007     		lsls	r0, r2, #28
 1128 00fc 48BF     		it	mi
 1129 00fe C3F88410 		strmi	r1, [r3, #132]
 1130 0102 A8E7     		b	.L207
 1131              	.L210:
 1132 0104 5965     		str	r1, [r3, #84]
 1133 0106 DBE7     		b	.L211
 1134              		.size	pio_configure_pin_group, .-pio_configure_pin_group
 1135              		.section	.text.pio_enable_pin_interrupt,"ax",%progbits
 1136              		.align	1
 1137              		.p2align 2,,3
 1138              		.global	pio_enable_pin_interrupt
 1139              		.syntax unified
 1140              		.thumb
ARM GAS  /tmp/ccKrWtXe.s 			page 21


 1141              		.thumb_func
 1142              		.fpu softvfp
 1143              		.type	pio_enable_pin_interrupt, %function
 1144              	pio_enable_pin_interrupt:
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147              		@ link register save eliminated.
 1148 0000 4309     		lsrs	r3, r0, #5
 1149 0002 03F50013 		add	r3, r3, #2097152
 1150 0006 03F20773 		addw	r3, r3, #1799
 1151 000a 5B02     		lsls	r3, r3, #9
 1152 000c 00F01F00 		and	r0, r0, #31
 1153 0010 0122     		movs	r2, #1
 1154 0012 02FA00F0 		lsl	r0, r2, r0
 1155 0016 1864     		str	r0, [r3, #64]
 1156 0018 7047     		bx	lr
 1157              		.size	pio_enable_pin_interrupt, .-pio_enable_pin_interrupt
 1158 001a 00BF     		.section	.text.pio_disable_pin_interrupt,"ax",%progbits
 1159              		.align	1
 1160              		.p2align 2,,3
 1161              		.global	pio_disable_pin_interrupt
 1162              		.syntax unified
 1163              		.thumb
 1164              		.thumb_func
 1165              		.fpu softvfp
 1166              		.type	pio_disable_pin_interrupt, %function
 1167              	pio_disable_pin_interrupt:
 1168              		@ args = 0, pretend = 0, frame = 0
 1169              		@ frame_needed = 0, uses_anonymous_args = 0
 1170              		@ link register save eliminated.
 1171 0000 4309     		lsrs	r3, r0, #5
 1172 0002 03F50013 		add	r3, r3, #2097152
 1173 0006 03F20773 		addw	r3, r3, #1799
 1174 000a 5B02     		lsls	r3, r3, #9
 1175 000c 00F01F00 		and	r0, r0, #31
 1176 0010 0122     		movs	r2, #1
 1177 0012 02FA00F0 		lsl	r0, r2, r0
 1178 0016 5864     		str	r0, [r3, #68]
 1179 0018 7047     		bx	lr
 1180              		.size	pio_disable_pin_interrupt, .-pio_disable_pin_interrupt
 1181 001a 00BF     		.section	.text.pio_get_pin_group,"ax",%progbits
 1182              		.align	1
 1183              		.p2align 2,,3
 1184              		.global	pio_get_pin_group
 1185              		.syntax unified
 1186              		.thumb
 1187              		.thumb_func
 1188              		.fpu softvfp
 1189              		.type	pio_get_pin_group, %function
 1190              	pio_get_pin_group:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193              		@ link register save eliminated.
 1194 0000 4009     		lsrs	r0, r0, #5
 1195 0002 00F50010 		add	r0, r0, #2097152
 1196 0006 00F20770 		addw	r0, r0, #1799
 1197 000a 4002     		lsls	r0, r0, #9
ARM GAS  /tmp/ccKrWtXe.s 			page 22


 1198 000c 7047     		bx	lr
 1199              		.size	pio_get_pin_group, .-pio_get_pin_group
 1200 000e 00BF     		.section	.text.pio_get_pin_group_id,"ax",%progbits
 1201              		.align	1
 1202              		.p2align 2,,3
 1203              		.global	pio_get_pin_group_id
 1204              		.syntax unified
 1205              		.thumb
 1206              		.thumb_func
 1207              		.fpu softvfp
 1208              		.type	pio_get_pin_group_id, %function
 1209              	pio_get_pin_group_id:
 1210              		@ args = 0, pretend = 0, frame = 0
 1211              		@ frame_needed = 0, uses_anonymous_args = 0
 1212              		@ link register save eliminated.
 1213 0000 4009     		lsrs	r0, r0, #5
 1214 0002 0B30     		adds	r0, r0, #11
 1215 0004 7047     		bx	lr
 1216              		.size	pio_get_pin_group_id, .-pio_get_pin_group_id
 1217 0006 00BF     		.section	.text.pio_get_pin_group_mask,"ax",%progbits
 1218              		.align	1
 1219              		.p2align 2,,3
 1220              		.global	pio_get_pin_group_mask
 1221              		.syntax unified
 1222              		.thumb
 1223              		.thumb_func
 1224              		.fpu softvfp
 1225              		.type	pio_get_pin_group_mask, %function
 1226              	pio_get_pin_group_mask:
 1227              		@ args = 0, pretend = 0, frame = 0
 1228              		@ frame_needed = 0, uses_anonymous_args = 0
 1229              		@ link register save eliminated.
 1230 0000 0123     		movs	r3, #1
 1231 0002 00F01F00 		and	r0, r0, #31
 1232 0006 03FA00F0 		lsl	r0, r3, r0
 1233 000a 7047     		bx	lr
 1234              		.size	pio_get_pin_group_mask, .-pio_get_pin_group_mask
 1235              		.section	.text.pio_capture_set_mode,"ax",%progbits
 1236              		.align	1
 1237              		.p2align 2,,3
 1238              		.global	pio_capture_set_mode
 1239              		.syntax unified
 1240              		.thumb
 1241              		.thumb_func
 1242              		.fpu softvfp
 1243              		.type	pio_capture_set_mode, %function
 1244              	pio_capture_set_mode:
 1245              		@ args = 0, pretend = 0, frame = 0
 1246              		@ frame_needed = 0, uses_anonymous_args = 0
 1247              		@ link register save eliminated.
 1248 0000 21F00101 		bic	r1, r1, #1
 1249 0004 C0F85011 		str	r1, [r0, #336]
 1250 0008 7047     		bx	lr
 1251              		.size	pio_capture_set_mode, .-pio_capture_set_mode
 1252 000a 00BF     		.section	.text.pio_capture_enable,"ax",%progbits
 1253              		.align	1
 1254              		.p2align 2,,3
ARM GAS  /tmp/ccKrWtXe.s 			page 23


 1255              		.global	pio_capture_enable
 1256              		.syntax unified
 1257              		.thumb
 1258              		.thumb_func
 1259              		.fpu softvfp
 1260              		.type	pio_capture_enable, %function
 1261              	pio_capture_enable:
 1262              		@ args = 0, pretend = 0, frame = 0
 1263              		@ frame_needed = 0, uses_anonymous_args = 0
 1264              		@ link register save eliminated.
 1265 0000 D0F85031 		ldr	r3, [r0, #336]
 1266 0004 034A     		ldr	r2, .L239
 1267 0006 0121     		movs	r1, #1
 1268 0008 0B43     		orrs	r3, r3, r1
 1269 000a C0F85031 		str	r3, [r0, #336]
 1270 000e 1160     		str	r1, [r2]
 1271 0010 7047     		bx	lr
 1272              	.L240:
 1273 0012 00BF     		.align	2
 1274              	.L239:
 1275 0014 00000000 		.word	pio_capture_enable_flag
 1276              		.size	pio_capture_enable, .-pio_capture_enable
 1277              		.section	.text.pio_capture_disable,"ax",%progbits
 1278              		.align	1
 1279              		.p2align 2,,3
 1280              		.global	pio_capture_disable
 1281              		.syntax unified
 1282              		.thumb
 1283              		.thumb_func
 1284              		.fpu softvfp
 1285              		.type	pio_capture_disable, %function
 1286              	pio_capture_disable:
 1287              		@ args = 0, pretend = 0, frame = 0
 1288              		@ frame_needed = 0, uses_anonymous_args = 0
 1289              		@ link register save eliminated.
 1290 0000 D0F85031 		ldr	r3, [r0, #336]
 1291 0004 034A     		ldr	r2, .L242
 1292 0006 0021     		movs	r1, #0
 1293 0008 23F00103 		bic	r3, r3, #1
 1294 000c C0F85031 		str	r3, [r0, #336]
 1295 0010 1160     		str	r1, [r2]
 1296 0012 7047     		bx	lr
 1297              	.L243:
 1298              		.align	2
 1299              	.L242:
 1300 0014 00000000 		.word	pio_capture_enable_flag
 1301              		.size	pio_capture_disable, .-pio_capture_disable
 1302              		.section	.text.pio_capture_read,"ax",%progbits
 1303              		.align	1
 1304              		.p2align 2,,3
 1305              		.global	pio_capture_read
 1306              		.syntax unified
 1307              		.thumb
 1308              		.thumb_func
 1309              		.fpu softvfp
 1310              		.type	pio_capture_read, %function
 1311              	pio_capture_read:
ARM GAS  /tmp/ccKrWtXe.s 			page 24


 1312              		@ args = 0, pretend = 0, frame = 0
 1313              		@ frame_needed = 0, uses_anonymous_args = 0
 1314              		@ link register save eliminated.
 1315 0000 D0F86031 		ldr	r3, [r0, #352]
 1316 0004 DB07     		lsls	r3, r3, #31
 1317 0006 43BF     		ittte	mi
 1318 0008 D0F86431 		ldrmi	r3, [r0, #356]
 1319 000c 0B60     		strmi	r3, [r1]
 1320 000e 0020     		movmi	r0, #0
 1321 0010 0120     		movpl	r0, #1
 1322 0012 7047     		bx	lr
 1323              		.size	pio_capture_read, .-pio_capture_read
 1324              		.section	.text.pio_capture_enable_interrupt,"ax",%progbits
 1325              		.align	1
 1326              		.p2align 2,,3
 1327              		.global	pio_capture_enable_interrupt
 1328              		.syntax unified
 1329              		.thumb
 1330              		.thumb_func
 1331              		.fpu softvfp
 1332              		.type	pio_capture_enable_interrupt, %function
 1333              	pio_capture_enable_interrupt:
 1334              		@ args = 0, pretend = 0, frame = 0
 1335              		@ frame_needed = 0, uses_anonymous_args = 0
 1336              		@ link register save eliminated.
 1337 0000 D0F86031 		ldr	r3, [r0, #352]
 1338 0004 C0F85411 		str	r1, [r0, #340]
 1339 0008 7047     		bx	lr
 1340              		.size	pio_capture_enable_interrupt, .-pio_capture_enable_interrupt
 1341 000a 00BF     		.section	.text.pio_capture_disable_interrupt,"ax",%progbits
 1342              		.align	1
 1343              		.p2align 2,,3
 1344              		.global	pio_capture_disable_interrupt
 1345              		.syntax unified
 1346              		.thumb
 1347              		.thumb_func
 1348              		.fpu softvfp
 1349              		.type	pio_capture_disable_interrupt, %function
 1350              	pio_capture_disable_interrupt:
 1351              		@ args = 0, pretend = 0, frame = 0
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353              		@ link register save eliminated.
 1354 0000 C0F85811 		str	r1, [r0, #344]
 1355 0004 7047     		bx	lr
 1356              		.size	pio_capture_disable_interrupt, .-pio_capture_disable_interrupt
 1357 0006 00BF     		.section	.text.pio_capture_get_interrupt_status,"ax",%progbits
 1358              		.align	1
 1359              		.p2align 2,,3
 1360              		.global	pio_capture_get_interrupt_status
 1361              		.syntax unified
 1362              		.thumb
 1363              		.thumb_func
 1364              		.fpu softvfp
 1365              		.type	pio_capture_get_interrupt_status, %function
 1366              	pio_capture_get_interrupt_status:
 1367              		@ args = 0, pretend = 0, frame = 0
 1368              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccKrWtXe.s 			page 25


 1369              		@ link register save eliminated.
 1370 0000 D0F86001 		ldr	r0, [r0, #352]
 1371 0004 7047     		bx	lr
 1372              		.size	pio_capture_get_interrupt_status, .-pio_capture_get_interrupt_status
 1373 0006 00BF     		.section	.text.pio_capture_get_interrupt_mask,"ax",%progbits
 1374              		.align	1
 1375              		.p2align 2,,3
 1376              		.global	pio_capture_get_interrupt_mask
 1377              		.syntax unified
 1378              		.thumb
 1379              		.thumb_func
 1380              		.fpu softvfp
 1381              		.type	pio_capture_get_interrupt_mask, %function
 1382              	pio_capture_get_interrupt_mask:
 1383              		@ args = 0, pretend = 0, frame = 0
 1384              		@ frame_needed = 0, uses_anonymous_args = 0
 1385              		@ link register save eliminated.
 1386 0000 D0F85C01 		ldr	r0, [r0, #348]
 1387 0004 7047     		bx	lr
 1388              		.size	pio_capture_get_interrupt_mask, .-pio_capture_get_interrupt_mask
 1389 0006 00BF     		.section	.text.pio_capture_get_pdc_base,"ax",%progbits
 1390              		.align	1
 1391              		.p2align 2,,3
 1392              		.global	pio_capture_get_pdc_base
 1393              		.syntax unified
 1394              		.thumb
 1395              		.thumb_func
 1396              		.fpu softvfp
 1397              		.type	pio_capture_get_pdc_base, %function
 1398              	pio_capture_get_pdc_base:
 1399              		@ args = 0, pretend = 0, frame = 0
 1400              		@ frame_needed = 0, uses_anonymous_args = 0
 1401              		@ link register save eliminated.
 1402 0000 0048     		ldr	r0, .L252
 1403 0002 7047     		bx	lr
 1404              	.L253:
 1405              		.align	2
 1406              	.L252:
 1407 0004 680F0E40 		.word	1074663272
 1408              		.size	pio_capture_get_pdc_base, .-pio_capture_get_pdc_base
 1409              		.comm	pio_capture_enable_flag,4,4
 1410              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1411              		.align	2
 1412              		.type	cpu_irq_critical_section_counter, %object
 1413              		.size	cpu_irq_critical_section_counter, 4
 1414              	cpu_irq_critical_section_counter:
 1415 0000 00000000 		.space	4
 1416              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1417              		.type	cpu_irq_prev_interrupt_state, %object
 1418              		.size	cpu_irq_prev_interrupt_state, 1
 1419              	cpu_irq_prev_interrupt_state:
 1420 0000 00       		.space	1
 1421              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
