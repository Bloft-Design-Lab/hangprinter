ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 1


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
  14              		.text
  15              		.section	.text.pio_pull_up,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	pio_pull_up
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	pio_pull_up, %function
  24              	pio_pull_up:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0AB9     		cbnz	r2, .L5
  29 0002 0166     		str	r1, [r0, #96]
  30 0004 7047     		bx	lr
  31              	.L5:
  32 0006 4166     		str	r1, [r0, #100]
  33 0008 7047     		bx	lr
  34              		.size	pio_pull_up, .-pio_pull_up
  35 000a 00BF     		.section	.text.pio_set_debounce_filter,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	pio_set_debounce_filter
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	pio_set_debounce_filter, %function
  44              	pio_set_debounce_filter:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 5300     		lsls	r3, r2, #1
  49 0002 4FF40042 		mov	r2, #32768
  50 0006 B2FBF3F2 		udiv	r2, r2, r3
  51 000a 013A     		subs	r2, r2, #1
  52 000c C2F30D02 		ubfx	r2, r2, #0, #14
  53 0010 C0F88410 		str	r1, [r0, #132]
  54 0014 C0F88C20 		str	r2, [r0, #140]
  55 0018 7047     		bx	lr
  56              		.size	pio_set_debounce_filter, .-pio_set_debounce_filter
  57 001a 00BF     		.section	.text.pio_set,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	pio_set
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	pio_set, %function
  66              	pio_set:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 0163     		str	r1, [r0, #48]
  71 0002 7047     		bx	lr
  72              		.size	pio_set, .-pio_set
  73              		.section	.text.pio_clear,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	pio_clear
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	pio_clear, %function
  82              	pio_clear:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 4163     		str	r1, [r0, #52]
  87 0002 7047     		bx	lr
  88              		.size	pio_clear, .-pio_clear
  89              		.section	.text.pio_get,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	pio_get
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	pio_get, %function
  98              	pio_get:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 21F00061 		bic	r1, r1, #134217728
 103 0004 B1F1405F 		cmp	r1, #805306368
 104 0008 0CBF     		ite	eq
 105 000a 836B     		ldreq	r3, [r0, #56]
 106 000c C36B     		ldrne	r3, [r0, #60]
 107 000e 1342     		tst	r3, r2
 108 0010 14BF     		ite	ne
 109 0012 0120     		movne	r0, #1
 110 0014 0020     		moveq	r0, #0
 111 0016 7047     		bx	lr
 112              		.size	pio_get, .-pio_get
 113              		.section	.text.pio_set_peripheral,"ax",%progbits
 114              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 3


 115              		.p2align 2,,3
 116              		.global	pio_set_peripheral
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	pio_set_peripheral, %function
 122              	pio_set_peripheral:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 B1F1C05F 		cmp	r1, #402653184
 127 0004 4264     		str	r2, [r0, #68]
 128 0006 3BD0     		beq	.L14
 129 0008 10D8     		bhi	.L15
 130 000a B1F1006F 		cmp	r1, #134217728
 131 000e 26D0     		beq	.L16
 132 0010 B1F1805F 		cmp	r1, #268435456
 133 0014 20D1     		bne	.L37
 134 0016 036F     		ldr	r3, [r0, #112]
 135 0018 1343     		orrs	r3, r3, r2
 136 001a 0367     		str	r3, [r0, #112]
 137 001c 416F     		ldr	r1, [r0, #116]
 138 001e 436F     		ldr	r3, [r0, #116]
 139 0020 0B40     		ands	r3, r3, r1
 140 0022 23EA0203 		bic	r3, r3, r2
 141 0026 4367     		str	r3, [r0, #116]
 142              	.L34:
 143 0028 4260     		str	r2, [r0, #4]
 144 002a 7047     		bx	lr
 145              	.L15:
 146 002c B1F1205F 		cmp	r1, #671088640
 147 0030 11D0     		beq	.L35
 148 0032 0AD8     		bhi	.L19
 149 0034 B1F1005F 		cmp	r1, #536870912
 150 0038 F6D1     		bne	.L34
 151 003a 036F     		ldr	r3, [r0, #112]
 152 003c 1343     		orrs	r3, r3, r2
 153 003e 0367     		str	r3, [r0, #112]
 154 0040 436F     		ldr	r3, [r0, #116]
 155 0042 1343     		orrs	r3, r3, r2
 156 0044 4367     		str	r3, [r0, #116]
 157 0046 4260     		str	r2, [r0, #4]
 158 0048 7047     		bx	lr
 159              	.L19:
 160 004a B1F1405F 		cmp	r1, #805306368
 161 004e 02D0     		beq	.L35
 162 0050 B1F1605F 		cmp	r1, #939524096
 163 0054 E8D1     		bne	.L34
 164              	.L35:
 165 0056 7047     		bx	lr
 166              	.L37:
 167 0058 0029     		cmp	r1, #0
 168 005a E5D1     		bne	.L34
 169 005c 7047     		bx	lr
 170              	.L16:
 171 005e 10B4     		push	{r4}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 4


 172 0060 046F     		ldr	r4, [r0, #112]
 173 0062 016F     		ldr	r1, [r0, #112]
 174 0064 D343     		mvns	r3, r2
 175 0066 2140     		ands	r1, r1, r4
 176 0068 1940     		ands	r1, r1, r3
 177 006a 0167     		str	r1, [r0, #112]
 178 006c 416F     		ldr	r1, [r0, #116]
 179 006e 1C46     		mov	r4, r3
 180 0070 436F     		ldr	r3, [r0, #116]
 181 0072 0B40     		ands	r3, r3, r1
 182 0074 2340     		ands	r3, r3, r4
 183 0076 4367     		str	r3, [r0, #116]
 184 0078 5DF8044B 		ldr	r4, [sp], #4
 185 007c 4260     		str	r2, [r0, #4]
 186 007e 7047     		bx	lr
 187              	.L14:
 188 0080 016F     		ldr	r1, [r0, #112]
 189 0082 036F     		ldr	r3, [r0, #112]
 190 0084 0B40     		ands	r3, r3, r1
 191 0086 23EA0203 		bic	r3, r3, r2
 192 008a 0367     		str	r3, [r0, #112]
 193 008c 436F     		ldr	r3, [r0, #116]
 194 008e 1343     		orrs	r3, r3, r2
 195 0090 4367     		str	r3, [r0, #116]
 196 0092 4260     		str	r2, [r0, #4]
 197 0094 7047     		bx	lr
 198              		.size	pio_set_peripheral, .-pio_set_peripheral
 199 0096 00BF     		.section	.text.pio_set_input,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	pio_set_input
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	pio_set_input, %function
 208              	pio_set_input:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              		@ link register save eliminated.
 212 0000 D307     		lsls	r3, r2, #31
 213 0002 4164     		str	r1, [r0, #68]
 214 0004 4CBF     		ite	mi
 215 0006 4166     		strmi	r1, [r0, #100]
 216 0008 0166     		strpl	r1, [r0, #96]
 217 000a 12F00A0F 		tst	r2, #10
 218 000e 14BF     		ite	ne
 219 0010 0162     		strne	r1, [r0, #32]
 220 0012 4162     		streq	r1, [r0, #36]
 221 0014 9307     		lsls	r3, r2, #30
 222 0016 06D4     		bmi	.L48
 223 0018 1307     		lsls	r3, r2, #28
 224 001a 48BF     		it	mi
 225 001c C0F88410 		strmi	r1, [r0, #132]
 226 0020 4161     		str	r1, [r0, #20]
 227 0022 0160     		str	r1, [r0]
 228 0024 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 5


 229              	.L48:
 230 0026 C0F88010 		str	r1, [r0, #128]
 231 002a 4161     		str	r1, [r0, #20]
 232 002c 0160     		str	r1, [r0]
 233 002e 7047     		bx	lr
 234              		.size	pio_set_input, .-pio_set_input
 235              		.section	.text.pio_set_output,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	pio_set_output
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv4-sp-d16
 243              		.type	pio_set_output, %function
 244              	pio_set_output:
 245              		@ args = 4, pretend = 0, frame = 0
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247              		@ link register save eliminated.
 248 0000 10B4     		push	{r4}
 249 0002 019C     		ldr	r4, [sp, #4]
 250 0004 4164     		str	r1, [r0, #68]
 251 0006 94B1     		cbz	r4, .L50
 252 0008 4166     		str	r1, [r0, #100]
 253              	.L51:
 254 000a 3BB1     		cbz	r3, .L52
 255 000c 0165     		str	r1, [r0, #80]
 256 000e 42B9     		cbnz	r2, .L57
 257              	.L54:
 258 0010 4163     		str	r1, [r0, #52]
 259 0012 5DF8044B 		ldr	r4, [sp], #4
 260 0016 0161     		str	r1, [r0, #16]
 261 0018 0160     		str	r1, [r0]
 262 001a 7047     		bx	lr
 263              	.L52:
 264 001c 4165     		str	r1, [r0, #84]
 265 001e 002A     		cmp	r2, #0
 266 0020 F6D0     		beq	.L54
 267              	.L57:
 268 0022 0163     		str	r1, [r0, #48]
 269 0024 5DF8044B 		ldr	r4, [sp], #4
 270 0028 0161     		str	r1, [r0, #16]
 271 002a 0160     		str	r1, [r0]
 272 002c 7047     		bx	lr
 273              	.L50:
 274 002e 0166     		str	r1, [r0, #96]
 275 0030 EBE7     		b	.L51
 276              		.size	pio_set_output, .-pio_set_output
 277 0032 00BF     		.section	.text.pio_configure,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	pio_configure
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	pio_configure, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 6


 286              	pio_configure:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 B1F1005F 		cmp	r1, #536870912
 290 0004 70B5     		push	{r4, r5, r6, lr}
 291 0006 3ED0     		beq	.L60
 292 0008 34D9     		bls	.L100
 293 000a B1F1405F 		cmp	r1, #805306368
 294 000e 1DD0     		beq	.L62
 295 0010 B1F1605F 		cmp	r1, #939524096
 296 0014 1AD0     		beq	.L62
 297 0016 B1F1205F 		cmp	r1, #671088640
 298 001a 02D0     		beq	.L63
 299              	.L77:
 300 001c 0023     		movs	r3, #0
 301 001e 1846     		mov	r0, r3
 302 0020 70BD     		pop	{r4, r5, r6, pc}
 303              	.L63:
 304 0022 DD07     		lsls	r5, r3, #31
 305 0024 4264     		str	r2, [r0, #68]
 306 0026 4CBF     		ite	mi
 307 0028 4266     		strmi	r2, [r0, #100]
 308 002a 0266     		strpl	r2, [r0, #96]
 309 002c 13F00A0F 		tst	r3, #10
 310 0030 14BF     		ite	ne
 311 0032 0262     		strne	r2, [r0, #32]
 312 0034 4262     		streq	r2, [r0, #36]
 313 0036 9C07     		lsls	r4, r3, #30
 314 0038 32D4     		bmi	.L101
 315 003a 1907     		lsls	r1, r3, #28
 316 003c 48BF     		it	mi
 317 003e C0F88420 		strmi	r2, [r0, #132]
 318              	.L70:
 319 0042 0123     		movs	r3, #1
 320 0044 4261     		str	r2, [r0, #20]
 321 0046 0260     		str	r2, [r0]
 322 0048 1846     		mov	r0, r3
 323 004a 70BD     		pop	{r4, r5, r6, pc}
 324              	.L62:
 325 004c C3F38004 		ubfx	r4, r3, #2, #1
 326 0050 DB07     		lsls	r3, r3, #31
 327 0052 4264     		str	r2, [r0, #68]
 328 0054 4CBF     		ite	mi
 329 0056 4266     		strmi	r2, [r0, #100]
 330 0058 0266     		strpl	r2, [r0, #96]
 331 005a FCB9     		cbnz	r4, .L102
 332 005c 4265     		str	r2, [r0, #84]
 333              	.L74:
 334 005e B1F1605F 		cmp	r1, #939524096
 335 0062 4FF00103 		mov	r3, #1
 336 0066 0CBF     		ite	eq
 337 0068 0263     		streq	r2, [r0, #48]
 338 006a 4263     		strne	r2, [r0, #52]
 339 006c 0261     		str	r2, [r0, #16]
 340 006e 0260     		str	r2, [r0]
 341 0070 1846     		mov	r0, r3
 342 0072 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 7


 343              	.L100:
 344 0074 B1F1805F 		cmp	r1, #268435456
 345 0078 05D0     		beq	.L60
 346 007a B1F1C05F 		cmp	r1, #402653184
 347 007e 02D0     		beq	.L60
 348 0080 B1F1006F 		cmp	r1, #134217728
 349 0084 CAD1     		bne	.L77
 350              	.L60:
 351 0086 1E46     		mov	r6, r3
 352 0088 FFF7FEFF 		bl	pio_set_peripheral
 353 008c F607     		lsls	r6, r6, #31
 354 008e 4FF00103 		mov	r3, #1
 355 0092 4CBF     		ite	mi
 356 0094 4266     		strmi	r2, [r0, #100]
 357 0096 0266     		strpl	r2, [r0, #96]
 358 0098 1846     		mov	r0, r3
 359 009a 70BD     		pop	{r4, r5, r6, pc}
 360              	.L102:
 361 009c 0265     		str	r2, [r0, #80]
 362 009e DEE7     		b	.L74
 363              	.L101:
 364 00a0 C0F88020 		str	r2, [r0, #128]
 365 00a4 CDE7     		b	.L70
 366              		.size	pio_configure, .-pio_configure
 367 00a6 00BF     		.section	.text.pio_get_output_data_status,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	pio_get_output_data_status
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	pio_get_output_data_status, %function
 376              	pio_get_output_data_status:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 836B     		ldr	r3, [r0, #56]
 381 0002 0B42     		tst	r3, r1
 382 0004 14BF     		ite	ne
 383 0006 0120     		movne	r0, #1
 384 0008 0020     		moveq	r0, #0
 385 000a 7047     		bx	lr
 386              		.size	pio_get_output_data_status, .-pio_get_output_data_status
 387              		.section	.text.pio_set_multi_driver,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	pio_set_multi_driver
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv4-sp-d16
 395              		.type	pio_set_multi_driver, %function
 396              	pio_set_multi_driver:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 8


 400 0000 0AB9     		cbnz	r2, .L107
 401 0002 4165     		str	r1, [r0, #84]
 402 0004 7047     		bx	lr
 403              	.L107:
 404 0006 0165     		str	r1, [r0, #80]
 405 0008 7047     		bx	lr
 406              		.size	pio_set_multi_driver, .-pio_set_multi_driver
 407 000a 00BF     		.section	.text.pio_get_multi_driver_status,"ax",%progbits
 408              		.align	1
 409              		.p2align 2,,3
 410              		.global	pio_get_multi_driver_status
 411              		.syntax unified
 412              		.thumb
 413              		.thumb_func
 414              		.fpu fpv4-sp-d16
 415              		.type	pio_get_multi_driver_status, %function
 416              	pio_get_multi_driver_status:
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419              		@ link register save eliminated.
 420 0000 806D     		ldr	r0, [r0, #88]
 421 0002 7047     		bx	lr
 422              		.size	pio_get_multi_driver_status, .-pio_get_multi_driver_status
 423              		.section	.text.pio_pull_down,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	pio_pull_down
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	pio_pull_down, %function
 432              	pio_pull_down:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436 0000 12B9     		cbnz	r2, .L112
 437 0002 C0F89010 		str	r1, [r0, #144]
 438 0006 7047     		bx	lr
 439              	.L112:
 440 0008 C0F89410 		str	r1, [r0, #148]
 441 000c 7047     		bx	lr
 442              		.size	pio_pull_down, .-pio_pull_down
 443 000e 00BF     		.section	.text.pio_enable_output_write,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.global	pio_enable_output_write
 447              		.syntax unified
 448              		.thumb
 449              		.thumb_func
 450              		.fpu fpv4-sp-d16
 451              		.type	pio_enable_output_write, %function
 452              	pio_enable_output_write:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 C0F8A010 		str	r1, [r0, #160]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 9


 457 0004 7047     		bx	lr
 458              		.size	pio_enable_output_write, .-pio_enable_output_write
 459 0006 00BF     		.section	.text.pio_disable_output_write,"ax",%progbits
 460              		.align	1
 461              		.p2align 2,,3
 462              		.global	pio_disable_output_write
 463              		.syntax unified
 464              		.thumb
 465              		.thumb_func
 466              		.fpu fpv4-sp-d16
 467              		.type	pio_disable_output_write, %function
 468              	pio_disable_output_write:
 469              		@ args = 0, pretend = 0, frame = 0
 470              		@ frame_needed = 0, uses_anonymous_args = 0
 471              		@ link register save eliminated.
 472 0000 C0F8A410 		str	r1, [r0, #164]
 473 0004 7047     		bx	lr
 474              		.size	pio_disable_output_write, .-pio_disable_output_write
 475 0006 00BF     		.section	.text.pio_get_output_write_status,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	pio_get_output_write_status
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu fpv4-sp-d16
 483              		.type	pio_get_output_write_status, %function
 484              	pio_get_output_write_status:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 488 0000 D0F8A800 		ldr	r0, [r0, #168]
 489 0004 7047     		bx	lr
 490              		.size	pio_get_output_write_status, .-pio_get_output_write_status
 491 0006 00BF     		.section	.text.pio_sync_output_write,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	pio_sync_output_write
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	pio_sync_output_write, %function
 500              	pio_sync_output_write:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 8163     		str	r1, [r0, #56]
 505 0002 7047     		bx	lr
 506              		.size	pio_sync_output_write, .-pio_sync_output_write
 507              		.section	.text.pio_set_schmitt_trigger,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	pio_set_schmitt_trigger
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	pio_set_schmitt_trigger, %function
 516              	pio_set_schmitt_trigger:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 C0F80011 		str	r1, [r0, #256]
 521 0004 7047     		bx	lr
 522              		.size	pio_set_schmitt_trigger, .-pio_set_schmitt_trigger
 523 0006 00BF     		.section	.text.pio_get_schmitt_trigger,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	pio_get_schmitt_trigger
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	pio_get_schmitt_trigger, %function
 532              	pio_get_schmitt_trigger:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              		@ link register save eliminated.
 536 0000 D0F80001 		ldr	r0, [r0, #256]
 537 0004 7047     		bx	lr
 538              		.size	pio_get_schmitt_trigger, .-pio_get_schmitt_trigger
 539 0006 00BF     		.section	.text.pio_configure_interrupt,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	pio_configure_interrupt
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu fpv4-sp-d16
 547              		.type	pio_configure_interrupt, %function
 548              	pio_configure_interrupt:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552 0000 D306     		lsls	r3, r2, #27
 553 0002 0ED5     		bpl	.L120
 554 0004 9306     		lsls	r3, r2, #26
 555 0006 C0F8B010 		str	r1, [r0, #176]
 556 000a 4CBF     		ite	mi
 557 000c C0F8D410 		strmi	r1, [r0, #212]
 558 0010 C0F8D010 		strpl	r1, [r0, #208]
 559 0014 5306     		lsls	r3, r2, #25
 560 0016 4CBF     		ite	mi
 561 0018 C0F8C010 		strmi	r1, [r0, #192]
 562 001c C0F8C410 		strpl	r1, [r0, #196]
 563 0020 7047     		bx	lr
 564              	.L120:
 565 0022 C0F8B410 		str	r1, [r0, #180]
 566 0026 7047     		bx	lr
 567              		.size	pio_configure_interrupt, .-pio_configure_interrupt
 568              		.section	.text.pio_enable_interrupt,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 11


 571              		.global	pio_enable_interrupt
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu fpv4-sp-d16
 576              		.type	pio_enable_interrupt, %function
 577              	pio_enable_interrupt:
 578              		@ args = 0, pretend = 0, frame = 0
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580              		@ link register save eliminated.
 581 0000 0164     		str	r1, [r0, #64]
 582 0002 7047     		bx	lr
 583              		.size	pio_enable_interrupt, .-pio_enable_interrupt
 584              		.section	.text.pio_disable_interrupt,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	pio_disable_interrupt
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu fpv4-sp-d16
 592              		.type	pio_disable_interrupt, %function
 593              	pio_disable_interrupt:
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596              		@ link register save eliminated.
 597 0000 4164     		str	r1, [r0, #68]
 598 0002 7047     		bx	lr
 599              		.size	pio_disable_interrupt, .-pio_disable_interrupt
 600              		.section	.text.pio_get_interrupt_status,"ax",%progbits
 601              		.align	1
 602              		.p2align 2,,3
 603              		.global	pio_get_interrupt_status
 604              		.syntax unified
 605              		.thumb
 606              		.thumb_func
 607              		.fpu fpv4-sp-d16
 608              		.type	pio_get_interrupt_status, %function
 609              	pio_get_interrupt_status:
 610              		@ args = 0, pretend = 0, frame = 0
 611              		@ frame_needed = 0, uses_anonymous_args = 0
 612              		@ link register save eliminated.
 613 0000 C06C     		ldr	r0, [r0, #76]
 614 0002 7047     		bx	lr
 615              		.size	pio_get_interrupt_status, .-pio_get_interrupt_status
 616              		.section	.text.pio_get_interrupt_mask,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	pio_get_interrupt_mask
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu fpv4-sp-d16
 624              		.type	pio_get_interrupt_mask, %function
 625              	pio_get_interrupt_mask:
 626              		@ args = 0, pretend = 0, frame = 0
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 12


 628              		@ link register save eliminated.
 629 0000 806C     		ldr	r0, [r0, #72]
 630 0002 7047     		bx	lr
 631              		.size	pio_get_interrupt_mask, .-pio_get_interrupt_mask
 632              		.section	.text.pio_set_additional_interrupt_mode,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	pio_set_additional_interrupt_mode
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv4-sp-d16
 640              		.type	pio_set_additional_interrupt_mode, %function
 641              	pio_set_additional_interrupt_mode:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644              		@ link register save eliminated.
 645 0000 FFF7FEBF 		b	pio_configure_interrupt
 646              		.size	pio_set_additional_interrupt_mode, .-pio_set_additional_interrupt_mode
 647              		.section	.text.pio_set_writeprotect,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	pio_set_writeprotect
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu fpv4-sp-d16
 655              		.type	pio_set_writeprotect, %function
 656              	pio_set_writeprotect:
 657              		@ args = 0, pretend = 0, frame = 0
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659              		@ link register save eliminated.
 660 0000 034B     		ldr	r3, .L131
 661 0002 01F00101 		and	r1, r1, #1
 662 0006 0B43     		orrs	r3, r3, r1
 663 0008 C0F8E430 		str	r3, [r0, #228]
 664 000c 7047     		bx	lr
 665              	.L132:
 666 000e 00BF     		.align	2
 667              	.L131:
 668 0010 004F4950 		.word	1346981632
 669              		.size	pio_set_writeprotect, .-pio_set_writeprotect
 670              		.section	.text.pio_get_writeprotect_status,"ax",%progbits
 671              		.align	1
 672              		.p2align 2,,3
 673              		.global	pio_get_writeprotect_status
 674              		.syntax unified
 675              		.thumb
 676              		.thumb_func
 677              		.fpu fpv4-sp-d16
 678              		.type	pio_get_writeprotect_status, %function
 679              	pio_get_writeprotect_status:
 680              		@ args = 0, pretend = 0, frame = 0
 681              		@ frame_needed = 0, uses_anonymous_args = 0
 682              		@ link register save eliminated.
 683 0000 D0F8E800 		ldr	r0, [r0, #232]
 684 0004 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 13


 685              		.size	pio_get_writeprotect_status, .-pio_get_writeprotect_status
 686 0006 00BF     		.section	.text.pio_get_pin_value,"ax",%progbits
 687              		.align	1
 688              		.p2align 2,,3
 689              		.global	pio_get_pin_value
 690              		.syntax unified
 691              		.thumb
 692              		.thumb_func
 693              		.fpu fpv4-sp-d16
 694              		.type	pio_get_pin_value, %function
 695              	pio_get_pin_value:
 696              		@ args = 0, pretend = 0, frame = 0
 697              		@ frame_needed = 0, uses_anonymous_args = 0
 698              		@ link register save eliminated.
 699 0000 4309     		lsrs	r3, r0, #5
 700 0002 03F50013 		add	r3, r3, #2097152
 701 0006 03F20773 		addw	r3, r3, #1799
 702 000a 5B02     		lsls	r3, r3, #9
 703 000c 00F01F00 		and	r0, r0, #31
 704 0010 DB6B     		ldr	r3, [r3, #60]
 705 0012 23FA00F0 		lsr	r0, r3, r0
 706 0016 00F00100 		and	r0, r0, #1
 707 001a 7047     		bx	lr
 708              		.size	pio_get_pin_value, .-pio_get_pin_value
 709              		.section	.text.pio_set_pin_high,"ax",%progbits
 710              		.align	1
 711              		.p2align 2,,3
 712              		.global	pio_set_pin_high
 713              		.syntax unified
 714              		.thumb
 715              		.thumb_func
 716              		.fpu fpv4-sp-d16
 717              		.type	pio_set_pin_high, %function
 718              	pio_set_pin_high:
 719              		@ args = 0, pretend = 0, frame = 0
 720              		@ frame_needed = 0, uses_anonymous_args = 0
 721              		@ link register save eliminated.
 722 0000 4309     		lsrs	r3, r0, #5
 723 0002 03F50013 		add	r3, r3, #2097152
 724 0006 03F20773 		addw	r3, r3, #1799
 725 000a 5B02     		lsls	r3, r3, #9
 726 000c 00F01F00 		and	r0, r0, #31
 727 0010 0122     		movs	r2, #1
 728 0012 02FA00F0 		lsl	r0, r2, r0
 729 0016 1863     		str	r0, [r3, #48]
 730 0018 7047     		bx	lr
 731              		.size	pio_set_pin_high, .-pio_set_pin_high
 732 001a 00BF     		.section	.text.pio_set_pin_low,"ax",%progbits
 733              		.align	1
 734              		.p2align 2,,3
 735              		.global	pio_set_pin_low
 736              		.syntax unified
 737              		.thumb
 738              		.thumb_func
 739              		.fpu fpv4-sp-d16
 740              		.type	pio_set_pin_low, %function
 741              	pio_set_pin_low:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744              		@ link register save eliminated.
 745 0000 4309     		lsrs	r3, r0, #5
 746 0002 03F50013 		add	r3, r3, #2097152
 747 0006 03F20773 		addw	r3, r3, #1799
 748 000a 5B02     		lsls	r3, r3, #9
 749 000c 00F01F00 		and	r0, r0, #31
 750 0010 0122     		movs	r2, #1
 751 0012 02FA00F0 		lsl	r0, r2, r0
 752 0016 5863     		str	r0, [r3, #52]
 753 0018 7047     		bx	lr
 754              		.size	pio_set_pin_low, .-pio_set_pin_low
 755 001a 00BF     		.section	.text.pio_toggle_pin,"ax",%progbits
 756              		.align	1
 757              		.p2align 2,,3
 758              		.global	pio_toggle_pin
 759              		.syntax unified
 760              		.thumb
 761              		.thumb_func
 762              		.fpu fpv4-sp-d16
 763              		.type	pio_toggle_pin, %function
 764              	pio_toggle_pin:
 765              		@ args = 0, pretend = 0, frame = 0
 766              		@ frame_needed = 0, uses_anonymous_args = 0
 767              		@ link register save eliminated.
 768 0000 4309     		lsrs	r3, r0, #5
 769 0002 03F50013 		add	r3, r3, #2097152
 770 0006 03F20773 		addw	r3, r3, #1799
 771 000a 5B02     		lsls	r3, r3, #9
 772 000c 00F01F02 		and	r2, r0, #31
 773 0010 996B     		ldr	r1, [r3, #56]
 774 0012 0120     		movs	r0, #1
 775 0014 9040     		lsls	r0, r0, r2
 776 0016 0142     		tst	r1, r0
 777 0018 14BF     		ite	ne
 778 001a 5863     		strne	r0, [r3, #52]
 779 001c 1863     		streq	r0, [r3, #48]
 780 001e 7047     		bx	lr
 781              		.size	pio_toggle_pin, .-pio_toggle_pin
 782              		.section	.text.pio_configure_pin,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	pio_configure_pin
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	pio_configure_pin, %function
 791              	pio_configure_pin:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 4309     		lsrs	r3, r0, #5
 796 0002 03F50013 		add	r3, r3, #2097152
 797 0006 01F0F042 		and	r2, r1, #2013265920
 798 000a 03F20773 		addw	r3, r3, #1799
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 15


 799 000e B2F1005F 		cmp	r2, #536870912
 800 0012 70B4     		push	{r4, r5, r6}
 801 0014 4FEA4323 		lsl	r3, r3, #9
 802 0018 00F08680 		beq	.L142
 803 001c 0BD8     		bhi	.L143
 804 001e B2F1805F 		cmp	r2, #268435456
 805 0022 28D0     		beq	.L144
 806 0024 B2F1C05F 		cmp	r2, #402653184
 807 0028 6AD0     		beq	.L145
 808 002a B2F1006F 		cmp	r2, #134217728
 809 002e 37D0     		beq	.L181
 810              	.L165:
 811 0030 0020     		movs	r0, #0
 812 0032 70BC     		pop	{r4, r5, r6}
 813 0034 7047     		bx	lr
 814              	.L143:
 815 0036 B2F1405F 		cmp	r2, #805306368
 816 003a 48D0     		beq	.L147
 817 003c B2F1605F 		cmp	r2, #939524096
 818 0040 45D0     		beq	.L147
 819 0042 B2F1205F 		cmp	r2, #671088640
 820 0046 F3D1     		bne	.L165
 821 0048 00F01F00 		and	r0, r0, #31
 822 004c 0122     		movs	r2, #1
 823 004e 8240     		lsls	r2, r2, r0
 824 0050 CD07     		lsls	r5, r1, #31
 825 0052 5A64     		str	r2, [r3, #68]
 826 0054 4CBF     		ite	mi
 827 0056 5A66     		strmi	r2, [r3, #100]
 828 0058 1A66     		strpl	r2, [r3, #96]
 829 005a 11F00A0F 		tst	r1, #10
 830 005e 14BF     		ite	ne
 831 0060 1A62     		strne	r2, [r3, #32]
 832 0062 5A62     		streq	r2, [r3, #36]
 833 0064 8C07     		lsls	r4, r1, #30
 834 0066 68D5     		bpl	.L157
 835 0068 C3F88020 		str	r2, [r3, #128]
 836              	.L158:
 837 006c 5A61     		str	r2, [r3, #20]
 838 006e 0120     		movs	r0, #1
 839 0070 1A60     		str	r2, [r3]
 840 0072 70BC     		pop	{r4, r5, r6}
 841 0074 7047     		bx	lr
 842              	.L144:
 843 0076 00F01F02 		and	r2, r0, #31
 844 007a 0120     		movs	r0, #1
 845 007c 00FA02F2 		lsl	r2, r0, r2
 846 0080 5A64     		str	r2, [r3, #68]
 847 0082 1C6F     		ldr	r4, [r3, #112]
 848 0084 1443     		orrs	r4, r4, r2
 849 0086 1C67     		str	r4, [r3, #112]
 850 0088 5C6F     		ldr	r4, [r3, #116]
 851 008a 5D6F     		ldr	r5, [r3, #116]
 852 008c 2C40     		ands	r4, r4, r5
 853 008e 24EA0204 		bic	r4, r4, r2
 854 0092 C907     		lsls	r1, r1, #31
 855 0094 5C67     		str	r4, [r3, #116]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 16


 856 0096 5A60     		str	r2, [r3, #4]
 857 0098 16D5     		bpl	.L152
 858              	.L178:
 859 009a 5A66     		str	r2, [r3, #100]
 860 009c 70BC     		pop	{r4, r5, r6}
 861 009e 7047     		bx	lr
 862              	.L181:
 863 00a0 00F01F02 		and	r2, r0, #31
 864 00a4 0120     		movs	r0, #1
 865 00a6 00FA02F2 		lsl	r2, r0, r2
 866 00aa 5A64     		str	r2, [r3, #68]
 867 00ac 1D6F     		ldr	r5, [r3, #112]
 868 00ae 1C6F     		ldr	r4, [r3, #112]
 869 00b0 D643     		mvns	r6, r2
 870 00b2 2540     		ands	r5, r5, r4
 871 00b4 3540     		ands	r5, r5, r6
 872 00b6 1D67     		str	r5, [r3, #112]
 873 00b8 5C6F     		ldr	r4, [r3, #116]
 874 00ba 5D6F     		ldr	r5, [r3, #116]
 875 00bc 2C40     		ands	r4, r4, r5
 876 00be 3440     		ands	r4, r4, r6
 877 00c0 5C67     		str	r4, [r3, #116]
 878 00c2 CC07     		lsls	r4, r1, #31
 879 00c4 5A60     		str	r2, [r3, #4]
 880 00c6 E8D4     		bmi	.L178
 881              	.L152:
 882 00c8 1A66     		str	r2, [r3, #96]
 883 00ca 70BC     		pop	{r4, r5, r6}
 884 00cc 7047     		bx	lr
 885              	.L147:
 886 00ce 00F01F00 		and	r0, r0, #31
 887 00d2 0122     		movs	r2, #1
 888 00d4 8240     		lsls	r2, r2, r0
 889 00d6 C1F38004 		ubfx	r4, r1, #2, #1
 890 00da 01F06050 		and	r0, r1, #939524096
 891 00de C907     		lsls	r1, r1, #31
 892 00e0 5A64     		str	r2, [r3, #68]
 893 00e2 4CBF     		ite	mi
 894 00e4 5A66     		strmi	r2, [r3, #100]
 895 00e6 1A66     		strpl	r2, [r3, #96]
 896 00e8 64B3     		cbz	r4, .L161
 897 00ea 1A65     		str	r2, [r3, #80]
 898              	.L162:
 899 00ec B0F1605F 		cmp	r0, #939524096
 900 00f0 0CBF     		ite	eq
 901 00f2 1A63     		streq	r2, [r3, #48]
 902 00f4 5A63     		strne	r2, [r3, #52]
 903 00f6 0120     		movs	r0, #1
 904 00f8 1A61     		str	r2, [r3, #16]
 905 00fa 1A60     		str	r2, [r3]
 906 00fc 70BC     		pop	{r4, r5, r6}
 907 00fe 7047     		bx	lr
 908              	.L145:
 909 0100 00F01F02 		and	r2, r0, #31
 910 0104 0120     		movs	r0, #1
 911 0106 00FA02F2 		lsl	r2, r0, r2
 912 010a 5A64     		str	r2, [r3, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 17


 913 010c 1C6F     		ldr	r4, [r3, #112]
 914 010e 1D6F     		ldr	r5, [r3, #112]
 915 0110 2C40     		ands	r4, r4, r5
 916 0112 24EA0204 		bic	r4, r4, r2
 917              	.L180:
 918 0116 1C67     		str	r4, [r3, #112]
 919 0118 5C6F     		ldr	r4, [r3, #116]
 920 011a CE07     		lsls	r6, r1, #31
 921 011c 44EA0204 		orr	r4, r4, r2
 922 0120 5C67     		str	r4, [r3, #116]
 923 0122 5A60     		str	r2, [r3, #4]
 924 0124 D0D5     		bpl	.L152
 925 0126 B8E7     		b	.L178
 926              	.L142:
 927 0128 00F01F02 		and	r2, r0, #31
 928 012c 0120     		movs	r0, #1
 929 012e 00FA02F2 		lsl	r2, r0, r2
 930 0132 5A64     		str	r2, [r3, #68]
 931 0134 1C6F     		ldr	r4, [r3, #112]
 932 0136 1443     		orrs	r4, r4, r2
 933 0138 EDE7     		b	.L180
 934              	.L157:
 935 013a 0807     		lsls	r0, r1, #28
 936 013c 48BF     		it	mi
 937 013e C3F88420 		strmi	r2, [r3, #132]
 938 0142 93E7     		b	.L158
 939              	.L161:
 940 0144 5A65     		str	r2, [r3, #84]
 941 0146 D1E7     		b	.L162
 942              		.size	pio_configure_pin, .-pio_configure_pin
 943              		.section	.text.pio_set_pin_group_high,"ax",%progbits
 944              		.align	1
 945              		.p2align 2,,3
 946              		.global	pio_set_pin_group_high
 947              		.syntax unified
 948              		.thumb
 949              		.thumb_func
 950              		.fpu fpv4-sp-d16
 951              		.type	pio_set_pin_group_high, %function
 952              	pio_set_pin_group_high:
 953              		@ args = 0, pretend = 0, frame = 0
 954              		@ frame_needed = 0, uses_anonymous_args = 0
 955              		@ link register save eliminated.
 956 0000 0163     		str	r1, [r0, #48]
 957 0002 7047     		bx	lr
 958              		.size	pio_set_pin_group_high, .-pio_set_pin_group_high
 959              		.section	.text.pio_set_pin_group_low,"ax",%progbits
 960              		.align	1
 961              		.p2align 2,,3
 962              		.global	pio_set_pin_group_low
 963              		.syntax unified
 964              		.thumb
 965              		.thumb_func
 966              		.fpu fpv4-sp-d16
 967              		.type	pio_set_pin_group_low, %function
 968              	pio_set_pin_group_low:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971              		@ link register save eliminated.
 972 0000 4163     		str	r1, [r0, #52]
 973 0002 7047     		bx	lr
 974              		.size	pio_set_pin_group_low, .-pio_set_pin_group_low
 975              		.section	.text.pio_toggle_pin_group,"ax",%progbits
 976              		.align	1
 977              		.p2align 2,,3
 978              		.global	pio_toggle_pin_group
 979              		.syntax unified
 980              		.thumb
 981              		.thumb_func
 982              		.fpu fpv4-sp-d16
 983              		.type	pio_toggle_pin_group, %function
 984              	pio_toggle_pin_group:
 985              		@ args = 0, pretend = 0, frame = 0
 986              		@ frame_needed = 0, uses_anonymous_args = 0
 987              		@ link register save eliminated.
 988 0000 836B     		ldr	r3, [r0, #56]
 989 0002 0B42     		tst	r3, r1
 990 0004 14BF     		ite	ne
 991 0006 4163     		strne	r1, [r0, #52]
 992 0008 0163     		streq	r1, [r0, #48]
 993 000a 7047     		bx	lr
 994              		.size	pio_toggle_pin_group, .-pio_toggle_pin_group
 995              		.section	.text.pio_configure_pin_group,"ax",%progbits
 996              		.align	1
 997              		.p2align 2,,3
 998              		.global	pio_configure_pin_group
 999              		.syntax unified
 1000              		.thumb
 1001              		.thumb_func
 1002              		.fpu fpv4-sp-d16
 1003              		.type	pio_configure_pin_group, %function
 1004              	pio_configure_pin_group:
 1005              		@ args = 0, pretend = 0, frame = 0
 1006              		@ frame_needed = 0, uses_anonymous_args = 0
 1007              		@ link register save eliminated.
 1008 0000 30B4     		push	{r4, r5}
 1009 0002 02F0F044 		and	r4, r2, #2013265920
 1010 0006 B4F1005F 		cmp	r4, #536870912
 1011 000a 0346     		mov	r3, r0
 1012 000c 71D0     		beq	.L189
 1013 000e 0BD8     		bhi	.L190
 1014 0010 B4F1805F 		cmp	r4, #268435456
 1015 0014 24D0     		beq	.L191
 1016 0016 B4F1C05F 		cmp	r4, #402653184
 1017 001a 5BD0     		beq	.L192
 1018 001c B4F1006F 		cmp	r4, #134217728
 1019 0020 2FD0     		beq	.L228
 1020              	.L212:
 1021 0022 0020     		movs	r0, #0
 1022 0024 30BC     		pop	{r4, r5}
 1023 0026 7047     		bx	lr
 1024              	.L190:
 1025 0028 B4F1405F 		cmp	r4, #805306368
 1026 002c 3DD0     		beq	.L194
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 19


 1027 002e B4F1605F 		cmp	r4, #939524096
 1028 0032 3AD0     		beq	.L194
 1029 0034 B4F1205F 		cmp	r4, #671088640
 1030 0038 F3D1     		bne	.L212
 1031 003a D507     		lsls	r5, r2, #31
 1032 003c 4164     		str	r1, [r0, #68]
 1033 003e 4CBF     		ite	mi
 1034 0040 4166     		strmi	r1, [r0, #100]
 1035 0042 0166     		strpl	r1, [r0, #96]
 1036 0044 12F00A0F 		tst	r2, #10
 1037 0048 14BF     		ite	ne
 1038 004a 0162     		strne	r1, [r0, #32]
 1039 004c 4162     		streq	r1, [r0, #36]
 1040 004e 9407     		lsls	r4, r2, #30
 1041 0050 53D5     		bpl	.L204
 1042 0052 C0F88010 		str	r1, [r0, #128]
 1043              	.L205:
 1044 0056 5961     		str	r1, [r3, #20]
 1045 0058 0120     		movs	r0, #1
 1046 005a 1960     		str	r1, [r3]
 1047 005c 30BC     		pop	{r4, r5}
 1048 005e 7047     		bx	lr
 1049              	.L191:
 1050 0060 4164     		str	r1, [r0, #68]
 1051 0062 006F     		ldr	r0, [r0, #112]
 1052 0064 0843     		orrs	r0, r0, r1
 1053 0066 1867     		str	r0, [r3, #112]
 1054 0068 586F     		ldr	r0, [r3, #116]
 1055 006a 5C6F     		ldr	r4, [r3, #116]
 1056 006c 2040     		ands	r0, r0, r4
 1057 006e 20EA0100 		bic	r0, r0, r1
 1058 0072 5867     		str	r0, [r3, #116]
 1059 0074 D007     		lsls	r0, r2, #31
 1060 0076 5960     		str	r1, [r3, #4]
 1061 0078 13D5     		bpl	.L199
 1062              	.L225:
 1063 007a 0120     		movs	r0, #1
 1064 007c 5966     		str	r1, [r3, #100]
 1065 007e 30BC     		pop	{r4, r5}
 1066 0080 7047     		bx	lr
 1067              	.L228:
 1068 0082 4164     		str	r1, [r0, #68]
 1069 0084 046F     		ldr	r4, [r0, #112]
 1070 0086 056F     		ldr	r5, [r0, #112]
 1071 0088 C843     		mvns	r0, r1
 1072 008a 2C40     		ands	r4, r4, r5
 1073 008c 0440     		ands	r4, r4, r0
 1074 008e 1C67     		str	r4, [r3, #112]
 1075 0090 0546     		mov	r5, r0
 1076 0092 586F     		ldr	r0, [r3, #116]
 1077 0094 5C6F     		ldr	r4, [r3, #116]
 1078 0096 2040     		ands	r0, r0, r4
 1079 0098 2840     		ands	r0, r0, r5
 1080 009a D407     		lsls	r4, r2, #31
 1081 009c 5867     		str	r0, [r3, #116]
 1082 009e 5960     		str	r1, [r3, #4]
 1083 00a0 EBD4     		bmi	.L225
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 20


 1084              	.L199:
 1085 00a2 0120     		movs	r0, #1
 1086 00a4 1966     		str	r1, [r3, #96]
 1087 00a6 30BC     		pop	{r4, r5}
 1088 00a8 7047     		bx	lr
 1089              	.L194:
 1090 00aa 02F06050 		and	r0, r2, #939524096
 1091 00ae C2F38004 		ubfx	r4, r2, #2, #1
 1092 00b2 D207     		lsls	r2, r2, #31
 1093 00b4 5964     		str	r1, [r3, #68]
 1094 00b6 4CBF     		ite	mi
 1095 00b8 5966     		strmi	r1, [r3, #100]
 1096 00ba 1966     		strpl	r1, [r3, #96]
 1097 00bc 14B3     		cbz	r4, .L208
 1098 00be 1965     		str	r1, [r3, #80]
 1099              	.L209:
 1100 00c0 B0F1605F 		cmp	r0, #939524096
 1101 00c4 0CBF     		ite	eq
 1102 00c6 1963     		streq	r1, [r3, #48]
 1103 00c8 5963     		strne	r1, [r3, #52]
 1104 00ca 0120     		movs	r0, #1
 1105 00cc 1961     		str	r1, [r3, #16]
 1106 00ce 1960     		str	r1, [r3]
 1107 00d0 30BC     		pop	{r4, r5}
 1108 00d2 7047     		bx	lr
 1109              	.L192:
 1110 00d4 4164     		str	r1, [r0, #68]
 1111 00d6 006F     		ldr	r0, [r0, #112]
 1112 00d8 1C6F     		ldr	r4, [r3, #112]
 1113 00da 2040     		ands	r0, r0, r4
 1114 00dc 20EA0100 		bic	r0, r0, r1
 1115              	.L227:
 1116 00e0 1867     		str	r0, [r3, #112]
 1117 00e2 586F     		ldr	r0, [r3, #116]
 1118 00e4 D207     		lsls	r2, r2, #31
 1119 00e6 40EA0100 		orr	r0, r0, r1
 1120 00ea 5867     		str	r0, [r3, #116]
 1121 00ec 5960     		str	r1, [r3, #4]
 1122 00ee D8D5     		bpl	.L199
 1123 00f0 C3E7     		b	.L225
 1124              	.L189:
 1125 00f2 4164     		str	r1, [r0, #68]
 1126 00f4 006F     		ldr	r0, [r0, #112]
 1127 00f6 0843     		orrs	r0, r0, r1
 1128 00f8 F2E7     		b	.L227
 1129              	.L204:
 1130 00fa 1007     		lsls	r0, r2, #28
 1131 00fc 48BF     		it	mi
 1132 00fe C3F88410 		strmi	r1, [r3, #132]
 1133 0102 A8E7     		b	.L205
 1134              	.L208:
 1135 0104 5965     		str	r1, [r3, #84]
 1136 0106 DBE7     		b	.L209
 1137              		.size	pio_configure_pin_group, .-pio_configure_pin_group
 1138              		.section	.text.pio_enable_pin_interrupt,"ax",%progbits
 1139              		.align	1
 1140              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 21


 1141              		.global	pio_enable_pin_interrupt
 1142              		.syntax unified
 1143              		.thumb
 1144              		.thumb_func
 1145              		.fpu fpv4-sp-d16
 1146              		.type	pio_enable_pin_interrupt, %function
 1147              	pio_enable_pin_interrupt:
 1148              		@ args = 0, pretend = 0, frame = 0
 1149              		@ frame_needed = 0, uses_anonymous_args = 0
 1150              		@ link register save eliminated.
 1151 0000 4309     		lsrs	r3, r0, #5
 1152 0002 03F50013 		add	r3, r3, #2097152
 1153 0006 03F20773 		addw	r3, r3, #1799
 1154 000a 5B02     		lsls	r3, r3, #9
 1155 000c 00F01F00 		and	r0, r0, #31
 1156 0010 0122     		movs	r2, #1
 1157 0012 02FA00F0 		lsl	r0, r2, r0
 1158 0016 1864     		str	r0, [r3, #64]
 1159 0018 7047     		bx	lr
 1160              		.size	pio_enable_pin_interrupt, .-pio_enable_pin_interrupt
 1161 001a 00BF     		.section	.text.pio_disable_pin_interrupt,"ax",%progbits
 1162              		.align	1
 1163              		.p2align 2,,3
 1164              		.global	pio_disable_pin_interrupt
 1165              		.syntax unified
 1166              		.thumb
 1167              		.thumb_func
 1168              		.fpu fpv4-sp-d16
 1169              		.type	pio_disable_pin_interrupt, %function
 1170              	pio_disable_pin_interrupt:
 1171              		@ args = 0, pretend = 0, frame = 0
 1172              		@ frame_needed = 0, uses_anonymous_args = 0
 1173              		@ link register save eliminated.
 1174 0000 4309     		lsrs	r3, r0, #5
 1175 0002 03F50013 		add	r3, r3, #2097152
 1176 0006 03F20773 		addw	r3, r3, #1799
 1177 000a 5B02     		lsls	r3, r3, #9
 1178 000c 00F01F00 		and	r0, r0, #31
 1179 0010 0122     		movs	r2, #1
 1180 0012 02FA00F0 		lsl	r0, r2, r0
 1181 0016 5864     		str	r0, [r3, #68]
 1182 0018 7047     		bx	lr
 1183              		.size	pio_disable_pin_interrupt, .-pio_disable_pin_interrupt
 1184 001a 00BF     		.section	.text.pio_get_pin_group,"ax",%progbits
 1185              		.align	1
 1186              		.p2align 2,,3
 1187              		.global	pio_get_pin_group
 1188              		.syntax unified
 1189              		.thumb
 1190              		.thumb_func
 1191              		.fpu fpv4-sp-d16
 1192              		.type	pio_get_pin_group, %function
 1193              	pio_get_pin_group:
 1194              		@ args = 0, pretend = 0, frame = 0
 1195              		@ frame_needed = 0, uses_anonymous_args = 0
 1196              		@ link register save eliminated.
 1197 0000 4009     		lsrs	r0, r0, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 22


 1198 0002 00F50010 		add	r0, r0, #2097152
 1199 0006 00F20770 		addw	r0, r0, #1799
 1200 000a 4002     		lsls	r0, r0, #9
 1201 000c 7047     		bx	lr
 1202              		.size	pio_get_pin_group, .-pio_get_pin_group
 1203 000e 00BF     		.section	.text.pio_get_pin_group_id,"ax",%progbits
 1204              		.align	1
 1205              		.p2align 2,,3
 1206              		.global	pio_get_pin_group_id
 1207              		.syntax unified
 1208              		.thumb
 1209              		.thumb_func
 1210              		.fpu fpv4-sp-d16
 1211              		.type	pio_get_pin_group_id, %function
 1212              	pio_get_pin_group_id:
 1213              		@ args = 0, pretend = 0, frame = 0
 1214              		@ frame_needed = 0, uses_anonymous_args = 0
 1215              		@ link register save eliminated.
 1216 0000 4009     		lsrs	r0, r0, #5
 1217 0002 0930     		adds	r0, r0, #9
 1218 0004 7047     		bx	lr
 1219              		.size	pio_get_pin_group_id, .-pio_get_pin_group_id
 1220 0006 00BF     		.section	.text.pio_get_pin_group_mask,"ax",%progbits
 1221              		.align	1
 1222              		.p2align 2,,3
 1223              		.global	pio_get_pin_group_mask
 1224              		.syntax unified
 1225              		.thumb
 1226              		.thumb_func
 1227              		.fpu fpv4-sp-d16
 1228              		.type	pio_get_pin_group_mask, %function
 1229              	pio_get_pin_group_mask:
 1230              		@ args = 0, pretend = 0, frame = 0
 1231              		@ frame_needed = 0, uses_anonymous_args = 0
 1232              		@ link register save eliminated.
 1233 0000 0123     		movs	r3, #1
 1234 0002 00F01F00 		and	r0, r0, #31
 1235 0006 03FA00F0 		lsl	r0, r3, r0
 1236 000a 7047     		bx	lr
 1237              		.size	pio_get_pin_group_mask, .-pio_get_pin_group_mask
 1238              		.section	.text.pio_capture_set_mode,"ax",%progbits
 1239              		.align	1
 1240              		.p2align 2,,3
 1241              		.global	pio_capture_set_mode
 1242              		.syntax unified
 1243              		.thumb
 1244              		.thumb_func
 1245              		.fpu fpv4-sp-d16
 1246              		.type	pio_capture_set_mode, %function
 1247              	pio_capture_set_mode:
 1248              		@ args = 0, pretend = 0, frame = 0
 1249              		@ frame_needed = 0, uses_anonymous_args = 0
 1250              		@ link register save eliminated.
 1251 0000 21F00101 		bic	r1, r1, #1
 1252 0004 C0F85011 		str	r1, [r0, #336]
 1253 0008 7047     		bx	lr
 1254              		.size	pio_capture_set_mode, .-pio_capture_set_mode
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 23


 1255 000a 00BF     		.section	.text.pio_capture_enable,"ax",%progbits
 1256              		.align	1
 1257              		.p2align 2,,3
 1258              		.global	pio_capture_enable
 1259              		.syntax unified
 1260              		.thumb
 1261              		.thumb_func
 1262              		.fpu fpv4-sp-d16
 1263              		.type	pio_capture_enable, %function
 1264              	pio_capture_enable:
 1265              		@ args = 0, pretend = 0, frame = 0
 1266              		@ frame_needed = 0, uses_anonymous_args = 0
 1267              		@ link register save eliminated.
 1268 0000 D0F85031 		ldr	r3, [r0, #336]
 1269 0004 034A     		ldr	r2, .L236
 1270 0006 0121     		movs	r1, #1
 1271 0008 0B43     		orrs	r3, r3, r1
 1272 000a C0F85031 		str	r3, [r0, #336]
 1273 000e 1160     		str	r1, [r2]
 1274 0010 7047     		bx	lr
 1275              	.L237:
 1276 0012 00BF     		.align	2
 1277              	.L236:
 1278 0014 00000000 		.word	pio_capture_enable_flag
 1279              		.size	pio_capture_enable, .-pio_capture_enable
 1280              		.section	.text.pio_capture_disable,"ax",%progbits
 1281              		.align	1
 1282              		.p2align 2,,3
 1283              		.global	pio_capture_disable
 1284              		.syntax unified
 1285              		.thumb
 1286              		.thumb_func
 1287              		.fpu fpv4-sp-d16
 1288              		.type	pio_capture_disable, %function
 1289              	pio_capture_disable:
 1290              		@ args = 0, pretend = 0, frame = 0
 1291              		@ frame_needed = 0, uses_anonymous_args = 0
 1292              		@ link register save eliminated.
 1293 0000 D0F85031 		ldr	r3, [r0, #336]
 1294 0004 034A     		ldr	r2, .L239
 1295 0006 0021     		movs	r1, #0
 1296 0008 23F00103 		bic	r3, r3, #1
 1297 000c C0F85031 		str	r3, [r0, #336]
 1298 0010 1160     		str	r1, [r2]
 1299 0012 7047     		bx	lr
 1300              	.L240:
 1301              		.align	2
 1302              	.L239:
 1303 0014 00000000 		.word	pio_capture_enable_flag
 1304              		.size	pio_capture_disable, .-pio_capture_disable
 1305              		.section	.text.pio_capture_read,"ax",%progbits
 1306              		.align	1
 1307              		.p2align 2,,3
 1308              		.global	pio_capture_read
 1309              		.syntax unified
 1310              		.thumb
 1311              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 24


 1312              		.fpu fpv4-sp-d16
 1313              		.type	pio_capture_read, %function
 1314              	pio_capture_read:
 1315              		@ args = 0, pretend = 0, frame = 0
 1316              		@ frame_needed = 0, uses_anonymous_args = 0
 1317              		@ link register save eliminated.
 1318 0000 D0F86031 		ldr	r3, [r0, #352]
 1319 0004 DB07     		lsls	r3, r3, #31
 1320 0006 43BF     		ittte	mi
 1321 0008 D0F86431 		ldrmi	r3, [r0, #356]
 1322 000c 0B60     		strmi	r3, [r1]
 1323 000e 0020     		movmi	r0, #0
 1324 0010 0120     		movpl	r0, #1
 1325 0012 7047     		bx	lr
 1326              		.size	pio_capture_read, .-pio_capture_read
 1327              		.section	.text.pio_capture_enable_interrupt,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	pio_capture_enable_interrupt
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu fpv4-sp-d16
 1335              		.type	pio_capture_enable_interrupt, %function
 1336              	pio_capture_enable_interrupt:
 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340 0000 D0F86031 		ldr	r3, [r0, #352]
 1341 0004 C0F85411 		str	r1, [r0, #340]
 1342 0008 7047     		bx	lr
 1343              		.size	pio_capture_enable_interrupt, .-pio_capture_enable_interrupt
 1344 000a 00BF     		.section	.text.pio_capture_disable_interrupt,"ax",%progbits
 1345              		.align	1
 1346              		.p2align 2,,3
 1347              		.global	pio_capture_disable_interrupt
 1348              		.syntax unified
 1349              		.thumb
 1350              		.thumb_func
 1351              		.fpu fpv4-sp-d16
 1352              		.type	pio_capture_disable_interrupt, %function
 1353              	pio_capture_disable_interrupt:
 1354              		@ args = 0, pretend = 0, frame = 0
 1355              		@ frame_needed = 0, uses_anonymous_args = 0
 1356              		@ link register save eliminated.
 1357 0000 C0F85811 		str	r1, [r0, #344]
 1358 0004 7047     		bx	lr
 1359              		.size	pio_capture_disable_interrupt, .-pio_capture_disable_interrupt
 1360 0006 00BF     		.section	.text.pio_capture_get_interrupt_status,"ax",%progbits
 1361              		.align	1
 1362              		.p2align 2,,3
 1363              		.global	pio_capture_get_interrupt_status
 1364              		.syntax unified
 1365              		.thumb
 1366              		.thumb_func
 1367              		.fpu fpv4-sp-d16
 1368              		.type	pio_capture_get_interrupt_status, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6dyMJ9.s 			page 25


 1369              	pio_capture_get_interrupt_status:
 1370              		@ args = 0, pretend = 0, frame = 0
 1371              		@ frame_needed = 0, uses_anonymous_args = 0
 1372              		@ link register save eliminated.
 1373 0000 D0F86001 		ldr	r0, [r0, #352]
 1374 0004 7047     		bx	lr
 1375              		.size	pio_capture_get_interrupt_status, .-pio_capture_get_interrupt_status
 1376 0006 00BF     		.section	.text.pio_capture_get_interrupt_mask,"ax",%progbits
 1377              		.align	1
 1378              		.p2align 2,,3
 1379              		.global	pio_capture_get_interrupt_mask
 1380              		.syntax unified
 1381              		.thumb
 1382              		.thumb_func
 1383              		.fpu fpv4-sp-d16
 1384              		.type	pio_capture_get_interrupt_mask, %function
 1385              	pio_capture_get_interrupt_mask:
 1386              		@ args = 0, pretend = 0, frame = 0
 1387              		@ frame_needed = 0, uses_anonymous_args = 0
 1388              		@ link register save eliminated.
 1389 0000 D0F85C01 		ldr	r0, [r0, #348]
 1390 0004 7047     		bx	lr
 1391              		.size	pio_capture_get_interrupt_mask, .-pio_capture_get_interrupt_mask
 1392 0006 00BF     		.section	.text.pio_capture_get_pdc_base,"ax",%progbits
 1393              		.align	1
 1394              		.p2align 2,,3
 1395              		.global	pio_capture_get_pdc_base
 1396              		.syntax unified
 1397              		.thumb
 1398              		.thumb_func
 1399              		.fpu fpv4-sp-d16
 1400              		.type	pio_capture_get_pdc_base, %function
 1401              	pio_capture_get_pdc_base:
 1402              		@ args = 0, pretend = 0, frame = 0
 1403              		@ frame_needed = 0, uses_anonymous_args = 0
 1404              		@ link register save eliminated.
 1405 0000 0048     		ldr	r0, .L249
 1406 0002 7047     		bx	lr
 1407              	.L250:
 1408              		.align	2
 1409              	.L249:
 1410 0004 680F0E40 		.word	1074663272
 1411              		.size	pio_capture_get_pdc_base, .-pio_capture_get_pdc_base
 1412              		.comm	pio_capture_enable_flag,4,4
 1413              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1414              		.align	2
 1415              		.type	cpu_irq_critical_section_counter, %object
 1416              		.size	cpu_irq_critical_section_counter, 4
 1417              	cpu_irq_critical_section_counter:
 1418 0000 00000000 		.space	4
 1419              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1420              		.type	cpu_irq_prev_interrupt_state, %object
 1421              		.size	cpu_irq_prev_interrupt_state, 1
 1422              	cpu_irq_prev_interrupt_state:
 1423 0000 00       		.space	1
 1424              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
