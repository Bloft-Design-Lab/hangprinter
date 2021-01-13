ARM GAS  /tmp/cc4zemmL.s 			page 1


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
  11              		.file	"adc.c"
  12              		.section	.text.calcul_startup,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	calcul_startup, %function
  20              	calcul_startup:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 18B3     		cbz	r0, .L1
  25 0002 0128     		cmp	r0, #1
  26 0004 22D0     		beq	.L4
  27 0006 0228     		cmp	r0, #2
  28 0008 22D0     		beq	.L5
  29 000a 0328     		cmp	r0, #3
  30 000c 22D0     		beq	.L6
  31 000e 0428     		cmp	r0, #4
  32 0010 24D0     		beq	.L7
  33 0012 0528     		cmp	r0, #5
  34 0014 20D0     		beq	.L8
  35 0016 0628     		cmp	r0, #6
  36 0018 22D0     		beq	.L9
  37 001a 0728     		cmp	r0, #7
  38 001c 22D0     		beq	.L10
  39 001e 0828     		cmp	r0, #8
  40 0020 22D0     		beq	.L11
  41 0022 0928     		cmp	r0, #9
  42 0024 23D0     		beq	.L12
  43 0026 0A28     		cmp	r0, #10
  44 0028 24D0     		beq	.L13
  45 002a 0B28     		cmp	r0, #11
  46 002c 25D0     		beq	.L14
  47 002e 0C28     		cmp	r0, #12
  48 0030 26D0     		beq	.L15
  49 0032 0D28     		cmp	r0, #13
  50 0034 27D0     		beq	.L16
  51 0036 0E28     		cmp	r0, #14
  52 0038 05D0     		beq	.L17
  53 003a 0F28     		cmp	r0, #15
  54 003c 14BF     		ite	ne
  55 003e 0020     		movne	r0, #0
  56 0040 4FF47070 		moveq	r0, #960
  57 0044 7047     		bx	lr
ARM GAS  /tmp/cc4zemmL.s 			page 2


  58              	.L17:
  59 0046 4FF46070 		mov	r0, #896
  60              	.L1:
  61 004a 7047     		bx	lr
  62              	.L4:
  63 004c 0820     		movs	r0, #8
  64 004e 7047     		bx	lr
  65              	.L5:
  66 0050 1020     		movs	r0, #16
  67 0052 7047     		bx	lr
  68              	.L6:
  69 0054 1820     		movs	r0, #24
  70 0056 7047     		bx	lr
  71              	.L8:
  72 0058 5020     		movs	r0, #80
  73 005a 7047     		bx	lr
  74              	.L7:
  75 005c 4020     		movs	r0, #64
  76 005e 7047     		bx	lr
  77              	.L9:
  78 0060 6020     		movs	r0, #96
  79 0062 7047     		bx	lr
  80              	.L10:
  81 0064 7020     		movs	r0, #112
  82 0066 7047     		bx	lr
  83              	.L11:
  84 0068 4FF40070 		mov	r0, #512
  85 006c 7047     		bx	lr
  86              	.L12:
  87 006e 4FF41070 		mov	r0, #576
  88 0072 7047     		bx	lr
  89              	.L13:
  90 0074 4FF42070 		mov	r0, #640
  91 0078 7047     		bx	lr
  92              	.L14:
  93 007a 4FF43070 		mov	r0, #704
  94 007e 7047     		bx	lr
  95              	.L15:
  96 0080 4FF44070 		mov	r0, #768
  97 0084 7047     		bx	lr
  98              	.L16:
  99 0086 4FF45070 		mov	r0, #832
 100 008a 7047     		bx	lr
 101              		.size	calcul_startup, .-calcul_startup
 102              		.section	.text.adc_init,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	adc_init
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu softvfp
 110              		.type	adc_init, %function
 111              	adc_init:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/cc4zemmL.s 			page 3


 115 0000 70B4     		push	{r4, r5, r6}
 116 0002 0446     		mov	r4, r0
 117 0004 0126     		movs	r6, #1
 118 0006 0020     		movs	r0, #0
 119 0008 40F20225 		movw	r5, #514
 120 000c 2660     		str	r6, [r4]
 121 000e 6060     		str	r0, [r4, #4]
 122 0010 C4F82051 		str	r5, [r4, #288]
 123 0014 C4F80401 		str	r0, [r4, #260]
 124 0018 C4F81401 		str	r0, [r4, #276]
 125 001c 6568     		ldr	r5, [r4, #4]
 126 001e B240     		lsls	r2, r2, r6
 127 0020 B1FBF2F2 		udiv	r2, r1, r2
 128 0024 013A     		subs	r2, r2, #1
 129 0026 1202     		lsls	r2, r2, #8
 130 0028 2B43     		orrs	r3, r3, r5
 131 002a 92B2     		uxth	r2, r2
 132 002c 1343     		orrs	r3, r3, r2
 133 002e 6360     		str	r3, [r4, #4]
 134 0030 70BC     		pop	{r4, r5, r6}
 135 0032 7047     		bx	lr
 136              		.size	adc_init, .-adc_init
 137              		.section	.text.adc_set_resolution,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	adc_set_resolution
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu softvfp
 145              		.type	adc_set_resolution, %function
 146              	adc_set_resolution:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 4368     		ldr	r3, [r0, #4]
 151 0002 23F01003 		bic	r3, r3, #16
 152 0006 4360     		str	r3, [r0, #4]
 153 0008 4368     		ldr	r3, [r0, #4]
 154 000a 1943     		orrs	r1, r1, r3
 155 000c 4160     		str	r1, [r0, #4]
 156 000e 7047     		bx	lr
 157              		.size	adc_set_resolution, .-adc_set_resolution
 158              		.section	.text.adc_configure_trigger,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	adc_configure_trigger
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu softvfp
 166              		.type	adc_configure_trigger, %function
 167              	adc_configure_trigger:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/cc4zemmL.s 			page 4


 172 0002 D201     		lsls	r2, r2, #7
 173 0004 D2B2     		uxtb	r2, r2
 174 0006 1943     		orrs	r1, r1, r3
 175 0008 0A43     		orrs	r2, r2, r1
 176 000a 4260     		str	r2, [r0, #4]
 177 000c 7047     		bx	lr
 178              		.size	adc_configure_trigger, .-adc_configure_trigger
 179 000e 00BF     		.section	.text.adc_configure_power_save,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	adc_configure_power_save
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu softvfp
 187              		.type	adc_configure_power_save, %function
 188              	adc_configure_power_save:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 4368     		ldr	r3, [r0, #4]
 193 0002 9201     		lsls	r2, r2, #6
 194 0004 02F04002 		and	r2, r2, #64
 195 0008 4901     		lsls	r1, r1, #5
 196 000a 01F02001 		and	r1, r1, #32
 197 000e 1A43     		orrs	r2, r2, r3
 198 0010 0A43     		orrs	r2, r2, r1
 199 0012 4260     		str	r2, [r0, #4]
 200 0014 7047     		bx	lr
 201              		.size	adc_configure_power_save, .-adc_configure_power_save
 202 0016 00BF     		.section	.text.adc_configure_sequence,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	adc_configure_sequence
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu softvfp
 210              		.type	adc_configure_sequence, %function
 211              	adc_configure_sequence:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 082A     		cmp	r2, #8
 216 0002 70B4     		push	{r4, r5, r6}
 217 0004 11D8     		bhi	.L26
 218 0006 72B1     		cbz	r2, .L25
 219 0008 013A     		subs	r2, r2, #1
 220 000a 51FA82F4 		uxtab	r4, r1, r2
 221 000e 0139     		subs	r1, r1, #1
 222 0010 0022     		movs	r2, #0
 223              	.L28:
 224 0012 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 225 0016 8568     		ldr	r5, [r0, #8]
 226 0018 9340     		lsls	r3, r3, r2
 227 001a 2B43     		orrs	r3, r3, r5
 228 001c 8C42     		cmp	r4, r1
ARM GAS  /tmp/cc4zemmL.s 			page 5


 229 001e 02F10402 		add	r2, r2, #4
 230 0022 8360     		str	r3, [r0, #8]
 231 0024 F5D1     		bne	.L28
 232              	.L25:
 233 0026 70BC     		pop	{r4, r5, r6}
 234 0028 7047     		bx	lr
 235              	.L26:
 236 002a 4D1E     		subs	r5, r1, #1
 237 002c 0024     		movs	r4, #0
 238              	.L30:
 239 002e 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 240 0032 8668     		ldr	r6, [r0, #8]
 241 0034 A340     		lsls	r3, r3, r4
 242 0036 0434     		adds	r4, r4, #4
 243 0038 3343     		orrs	r3, r3, r6
 244 003a 202C     		cmp	r4, #32
 245 003c 8360     		str	r3, [r0, #8]
 246 003e F6D1     		bne	.L30
 247 0040 0024     		movs	r4, #0
 248 0042 083A     		subs	r2, r2, #8
 249 0044 2346     		mov	r3, r4
 250              	.L31:
 251 0046 0E19     		adds	r6, r1, r4
 252 0048 A500     		lsls	r5, r4, #2
 253 004a 347A     		ldrb	r4, [r6, #8]	@ zero_extendqisi2
 254 004c C668     		ldr	r6, [r0, #12]
 255 004e 0133     		adds	r3, r3, #1
 256 0050 DBB2     		uxtb	r3, r3
 257 0052 AC40     		lsls	r4, r4, r5
 258 0054 3443     		orrs	r4, r4, r6
 259 0056 9342     		cmp	r3, r2
 260 0058 C460     		str	r4, [r0, #12]
 261 005a 1C46     		mov	r4, r3
 262 005c F3DB     		blt	.L31
 263 005e 70BC     		pop	{r4, r5, r6}
 264 0060 7047     		bx	lr
 265              		.size	adc_configure_sequence, .-adc_configure_sequence
 266 0062 00BF     		.section	.text.adc_configure_timing,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	adc_configure_timing
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu softvfp
 274              		.type	adc_configure_timing, %function
 275              	adc_configure_timing:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279 0000 10B4     		push	{r4}
 280 0002 0906     		lsls	r1, r1, #24
 281 0004 4468     		ldr	r4, [r0, #4]
 282 0006 01F07061 		and	r1, r1, #251658240
 283 000a 2143     		orrs	r1, r1, r4
 284 000c 1B07     		lsls	r3, r3, #28
 285 000e 03F04053 		and	r3, r3, #805306368
ARM GAS  /tmp/cc4zemmL.s 			page 6


 286 0012 1143     		orrs	r1, r1, r2
 287 0014 1943     		orrs	r1, r1, r3
 288 0016 4160     		str	r1, [r0, #4]
 289 0018 10BC     		pop	{r4}
 290 001a 7047     		bx	lr
 291              		.size	adc_configure_timing, .-adc_configure_timing
 292              		.section	.text.adc_enable_anch,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	adc_enable_anch
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu softvfp
 300              		.type	adc_enable_anch, %function
 301              	adc_enable_anch:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304              		@ link register save eliminated.
 305 0000 4368     		ldr	r3, [r0, #4]
 306 0002 43F40003 		orr	r3, r3, #8388608
 307 0006 4360     		str	r3, [r0, #4]
 308 0008 7047     		bx	lr
 309              		.size	adc_enable_anch, .-adc_enable_anch
 310 000a 00BF     		.section	.text.adc_disable_anch,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	adc_disable_anch
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu softvfp
 318              		.type	adc_disable_anch, %function
 319              	adc_disable_anch:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 4368     		ldr	r3, [r0, #4]
 324 0002 23F40003 		bic	r3, r3, #8388608
 325 0006 4360     		str	r3, [r0, #4]
 326 0008 7047     		bx	lr
 327              		.size	adc_disable_anch, .-adc_disable_anch
 328 000a 00BF     		.section	.text.adc_start,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	adc_start
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu softvfp
 336              		.type	adc_start, %function
 337              	adc_start:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341 0000 0223     		movs	r3, #2
 342 0002 0360     		str	r3, [r0]
ARM GAS  /tmp/cc4zemmL.s 			page 7


 343 0004 7047     		bx	lr
 344              		.size	adc_start, .-adc_start
 345 0006 00BF     		.section	.text.adc_reset,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	adc_reset
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu softvfp
 353              		.type	adc_reset, %function
 354              	adc_reset:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 0123     		movs	r3, #1
 359 0002 0360     		str	r3, [r0]
 360 0004 7047     		bx	lr
 361              		.size	adc_reset, .-adc_reset
 362 0006 00BF     		.section	.text.adc_enable_channel,"ax",%progbits
 363              		.align	1
 364              		.p2align 2,,3
 365              		.global	adc_enable_channel
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu softvfp
 370              		.type	adc_enable_channel, %function
 371              	adc_enable_channel:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375 0000 0123     		movs	r3, #1
 376 0002 03FA01F1 		lsl	r1, r3, r1
 377 0006 0161     		str	r1, [r0, #16]
 378 0008 7047     		bx	lr
 379              		.size	adc_enable_channel, .-adc_enable_channel
 380 000a 00BF     		.section	.text.adc_enable_all_channel,"ax",%progbits
 381              		.align	1
 382              		.p2align 2,,3
 383              		.global	adc_enable_all_channel
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu softvfp
 388              		.type	adc_enable_all_channel, %function
 389              	adc_enable_all_channel:
 390              		@ args = 0, pretend = 0, frame = 0
 391              		@ frame_needed = 0, uses_anonymous_args = 0
 392              		@ link register save eliminated.
 393 0000 4FF6FF73 		movw	r3, #65535
 394 0004 0361     		str	r3, [r0, #16]
 395 0006 7047     		bx	lr
 396              		.size	adc_enable_all_channel, .-adc_enable_all_channel
 397              		.section	.text.adc_disable_channel,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
ARM GAS  /tmp/cc4zemmL.s 			page 8


 400              		.global	adc_disable_channel
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu softvfp
 405              		.type	adc_disable_channel, %function
 406              	adc_disable_channel:
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409              		@ link register save eliminated.
 410 0000 0123     		movs	r3, #1
 411 0002 03FA01F1 		lsl	r1, r3, r1
 412 0006 4161     		str	r1, [r0, #20]
 413 0008 7047     		bx	lr
 414              		.size	adc_disable_channel, .-adc_disable_channel
 415 000a 00BF     		.section	.text.adc_disable_all_channel,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	adc_disable_all_channel
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu softvfp
 423              		.type	adc_disable_all_channel, %function
 424              	adc_disable_all_channel:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 4FF6FF73 		movw	r3, #65535
 429 0004 4361     		str	r3, [r0, #20]
 430 0006 7047     		bx	lr
 431              		.size	adc_disable_all_channel, .-adc_disable_all_channel
 432              		.section	.text.adc_get_channel_status,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	adc_get_channel_status
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu softvfp
 440              		.type	adc_get_channel_status, %function
 441              	adc_get_channel_status:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 0123     		movs	r3, #1
 446 0002 8069     		ldr	r0, [r0, #24]
 447 0004 03FA01F1 		lsl	r1, r3, r1
 448 0008 0840     		ands	r0, r0, r1
 449 000a 7047     		bx	lr
 450              		.size	adc_get_channel_status, .-adc_get_channel_status
 451              		.section	.text.adc_get_channel_value,"ax",%progbits
 452              		.align	1
 453              		.p2align 2,,3
 454              		.global	adc_get_channel_value
 455              		.syntax unified
 456              		.thumb
ARM GAS  /tmp/cc4zemmL.s 			page 9


 457              		.thumb_func
 458              		.fpu softvfp
 459              		.type	adc_get_channel_value, %function
 460              	adc_get_channel_value:
 461              		@ args = 0, pretend = 0, frame = 0
 462              		@ frame_needed = 0, uses_anonymous_args = 0
 463              		@ link register save eliminated.
 464 0000 0F29     		cmp	r1, #15
 465 0002 9ABF     		itte	ls
 466 0004 5030     		addls	r0, r0, #80
 467 0006 50F82100 		ldrls	r0, [r0, r1, lsl #2]
 468 000a 0020     		movhi	r0, #0
 469 000c 7047     		bx	lr
 470              		.size	adc_get_channel_value, .-adc_get_channel_value
 471 000e 00BF     		.section	.text.adc_get_latest_value,"ax",%progbits
 472              		.align	1
 473              		.p2align 2,,3
 474              		.global	adc_get_latest_value
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu softvfp
 479              		.type	adc_get_latest_value, %function
 480              	adc_get_latest_value:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484 0000 006A     		ldr	r0, [r0, #32]
 485 0002 7047     		bx	lr
 486              		.size	adc_get_latest_value, .-adc_get_latest_value
 487              		.section	.text.adc_enable_tag,"ax",%progbits
 488              		.align	1
 489              		.p2align 2,,3
 490              		.global	adc_enable_tag
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu softvfp
 495              		.type	adc_enable_tag, %function
 496              	adc_enable_tag:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499              		@ link register save eliminated.
 500 0000 036C     		ldr	r3, [r0, #64]
 501 0002 43F08073 		orr	r3, r3, #16777216
 502 0006 0364     		str	r3, [r0, #64]
 503 0008 7047     		bx	lr
 504              		.size	adc_enable_tag, .-adc_enable_tag
 505 000a 00BF     		.section	.text.adc_disable_tag,"ax",%progbits
 506              		.align	1
 507              		.p2align 2,,3
 508              		.global	adc_disable_tag
 509              		.syntax unified
 510              		.thumb
 511              		.thumb_func
 512              		.fpu softvfp
 513              		.type	adc_disable_tag, %function
ARM GAS  /tmp/cc4zemmL.s 			page 10


 514              	adc_disable_tag:
 515              		@ args = 0, pretend = 0, frame = 0
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517              		@ link register save eliminated.
 518 0000 036C     		ldr	r3, [r0, #64]
 519 0002 23F08073 		bic	r3, r3, #16777216
 520 0006 0364     		str	r3, [r0, #64]
 521 0008 7047     		bx	lr
 522              		.size	adc_disable_tag, .-adc_disable_tag
 523 000a 00BF     		.section	.text.adc_get_tag,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	adc_get_tag
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu softvfp
 531              		.type	adc_get_tag, %function
 532              	adc_get_tag:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              		@ link register save eliminated.
 536 0000 006A     		ldr	r0, [r0, #32]
 537 0002 C0F30330 		ubfx	r0, r0, #12, #4
 538 0006 7047     		bx	lr
 539              		.size	adc_get_tag, .-adc_get_tag
 540              		.section	.text.adc_start_sequencer,"ax",%progbits
 541              		.align	1
 542              		.p2align 2,,3
 543              		.global	adc_start_sequencer
 544              		.syntax unified
 545              		.thumb
 546              		.thumb_func
 547              		.fpu softvfp
 548              		.type	adc_start_sequencer, %function
 549              	adc_start_sequencer:
 550              		@ args = 0, pretend = 0, frame = 0
 551              		@ frame_needed = 0, uses_anonymous_args = 0
 552              		@ link register save eliminated.
 553 0000 4368     		ldr	r3, [r0, #4]
 554 0002 43F00043 		orr	r3, r3, #-2147483648
 555 0006 4360     		str	r3, [r0, #4]
 556 0008 7047     		bx	lr
 557              		.size	adc_start_sequencer, .-adc_start_sequencer
 558 000a 00BF     		.section	.text.adc_stop_sequencer,"ax",%progbits
 559              		.align	1
 560              		.p2align 2,,3
 561              		.global	adc_stop_sequencer
 562              		.syntax unified
 563              		.thumb
 564              		.thumb_func
 565              		.fpu softvfp
 566              		.type	adc_stop_sequencer, %function
 567              	adc_stop_sequencer:
 568              		@ args = 0, pretend = 0, frame = 0
 569              		@ frame_needed = 0, uses_anonymous_args = 0
 570              		@ link register save eliminated.
ARM GAS  /tmp/cc4zemmL.s 			page 11


 571 0000 4368     		ldr	r3, [r0, #4]
 572 0002 23F00043 		bic	r3, r3, #-2147483648
 573 0006 4360     		str	r3, [r0, #4]
 574 0008 7047     		bx	lr
 575              		.size	adc_stop_sequencer, .-adc_stop_sequencer
 576 000a 00BF     		.section	.text.adc_set_comparison_mode,"ax",%progbits
 577              		.align	1
 578              		.p2align 2,,3
 579              		.global	adc_set_comparison_mode
 580              		.syntax unified
 581              		.thumb
 582              		.thumb_func
 583              		.fpu softvfp
 584              		.type	adc_set_comparison_mode, %function
 585              	adc_set_comparison_mode:
 586              		@ args = 0, pretend = 0, frame = 0
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588              		@ link register save eliminated.
 589 0000 036C     		ldr	r3, [r0, #64]
 590 0002 23F00303 		bic	r3, r3, #3
 591 0006 0364     		str	r3, [r0, #64]
 592 0008 036C     		ldr	r3, [r0, #64]
 593 000a 01F00301 		and	r1, r1, #3
 594 000e 1943     		orrs	r1, r1, r3
 595 0010 0164     		str	r1, [r0, #64]
 596 0012 7047     		bx	lr
 597              		.size	adc_set_comparison_mode, .-adc_set_comparison_mode
 598              		.section	.text.adc_get_comparison_mode,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	adc_get_comparison_mode
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu softvfp
 606              		.type	adc_get_comparison_mode, %function
 607              	adc_get_comparison_mode:
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611 0000 006C     		ldr	r0, [r0, #64]
 612 0002 00F00300 		and	r0, r0, #3
 613 0006 7047     		bx	lr
 614              		.size	adc_get_comparison_mode, .-adc_get_comparison_mode
 615              		.section	.text.adc_set_comparison_window,"ax",%progbits
 616              		.align	1
 617              		.p2align 2,,3
 618              		.global	adc_set_comparison_window
 619              		.syntax unified
 620              		.thumb
 621              		.thumb_func
 622              		.fpu softvfp
 623              		.type	adc_set_comparison_window, %function
 624              	adc_set_comparison_window:
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 0, uses_anonymous_args = 0
 627              		@ link register save eliminated.
ARM GAS  /tmp/cc4zemmL.s 			page 12


 628 0000 034B     		ldr	r3, .L59
 629 0002 C1F30B01 		ubfx	r1, r1, #0, #12
 630 0006 03EA0242 		and	r2, r3, r2, lsl #16
 631 000a 0A43     		orrs	r2, r2, r1
 632 000c 4264     		str	r2, [r0, #68]
 633 000e 7047     		bx	lr
 634              	.L60:
 635              		.align	2
 636              	.L59:
 637 0010 0000FF0F 		.word	268369920
 638              		.size	adc_set_comparison_window, .-adc_set_comparison_window
 639              		.section	.text.adc_set_comparison_channel,"ax",%progbits
 640              		.align	1
 641              		.p2align 2,,3
 642              		.global	adc_set_comparison_channel
 643              		.syntax unified
 644              		.thumb
 645              		.thumb_func
 646              		.fpu softvfp
 647              		.type	adc_set_comparison_channel, %function
 648              	adc_set_comparison_channel:
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651              		@ link register save eliminated.
 652 0000 0F29     		cmp	r1, #15
 653 0002 036C     		ldr	r3, [r0, #64]
 654 0004 03D9     		bls	.L64
 655 0006 43F40073 		orr	r3, r3, #512
 656 000a 0364     		str	r3, [r0, #64]
 657 000c 7047     		bx	lr
 658              	.L64:
 659 000e 23F40073 		bic	r3, r3, #512
 660 0012 0364     		str	r3, [r0, #64]
 661 0014 036C     		ldr	r3, [r0, #64]
 662 0016 23F0F003 		bic	r3, r3, #240
 663 001a 0364     		str	r3, [r0, #64]
 664 001c 036C     		ldr	r3, [r0, #64]
 665 001e 43EA0111 		orr	r1, r3, r1, lsl #4
 666 0022 0164     		str	r1, [r0, #64]
 667 0024 7047     		bx	lr
 668              		.size	adc_set_comparison_channel, .-adc_set_comparison_channel
 669 0026 00BF     		.section	.text.adc_enable_channel_differential_input,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	adc_enable_channel_differential_input
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu softvfp
 677              		.type	adc_enable_channel_differential_input, %function
 678              	adc_enable_channel_differential_input:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 682 0000 01F11002 		add	r2, r1, #16
 683 0004 C36C     		ldr	r3, [r0, #76]
 684 0006 0121     		movs	r1, #1
ARM GAS  /tmp/cc4zemmL.s 			page 13


 685 0008 9140     		lsls	r1, r1, r2
 686 000a 1943     		orrs	r1, r1, r3
 687 000c C164     		str	r1, [r0, #76]
 688 000e 7047     		bx	lr
 689              		.size	adc_enable_channel_differential_input, .-adc_enable_channel_differential_input
 690              		.section	.text.adc_disable_channel_differential_input,"ax",%progbits
 691              		.align	1
 692              		.p2align 2,,3
 693              		.global	adc_disable_channel_differential_input
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu softvfp
 698              		.type	adc_disable_channel_differential_input, %function
 699              	adc_disable_channel_differential_input:
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702              		@ link register save eliminated.
 703 0000 C26C     		ldr	r2, [r0, #76]
 704 0002 10B4     		push	{r4}
 705 0004 6FF48033 		mvn	r3, #65536
 706 0008 C46C     		ldr	r4, [r0, #76]
 707 000a 03FA01F1 		lsl	r1, r3, r1
 708 000e 2140     		ands	r1, r1, r4
 709 0010 C164     		str	r1, [r0, #76]
 710 0012 C36C     		ldr	r3, [r0, #76]
 711 0014 10BC     		pop	{r4}
 712 0016 1A43     		orrs	r2, r2, r3
 713 0018 C264     		str	r2, [r0, #76]
 714 001a 7047     		bx	lr
 715              		.size	adc_disable_channel_differential_input, .-adc_disable_channel_differential_input
 716              		.section	.text.adc_enable_channel_input_offset,"ax",%progbits
 717              		.align	1
 718              		.p2align 2,,3
 719              		.global	adc_enable_channel_input_offset
 720              		.syntax unified
 721              		.thumb
 722              		.thumb_func
 723              		.fpu softvfp
 724              		.type	adc_enable_channel_input_offset, %function
 725              	adc_enable_channel_input_offset:
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728              		@ link register save eliminated.
 729 0000 C26C     		ldr	r2, [r0, #76]
 730 0002 0123     		movs	r3, #1
 731 0004 03FA01F1 		lsl	r1, r3, r1
 732 0008 1143     		orrs	r1, r1, r2
 733 000a C164     		str	r1, [r0, #76]
 734 000c 7047     		bx	lr
 735              		.size	adc_enable_channel_input_offset, .-adc_enable_channel_input_offset
 736 000e 00BF     		.section	.text.adc_disable_channel_input_offset,"ax",%progbits
 737              		.align	1
 738              		.p2align 2,,3
 739              		.global	adc_disable_channel_input_offset
 740              		.syntax unified
 741              		.thumb
ARM GAS  /tmp/cc4zemmL.s 			page 14


 742              		.thumb_func
 743              		.fpu softvfp
 744              		.type	adc_disable_channel_input_offset, %function
 745              	adc_disable_channel_input_offset:
 746              		@ args = 0, pretend = 0, frame = 0
 747              		@ frame_needed = 0, uses_anonymous_args = 0
 748              		@ link register save eliminated.
 749 0000 C26C     		ldr	r2, [r0, #76]
 750 0002 10B4     		push	{r4}
 751 0004 6FF00103 		mvn	r3, #1
 752 0008 C46C     		ldr	r4, [r0, #76]
 753 000a 03FA01F1 		lsl	r1, r3, r1
 754 000e 2140     		ands	r1, r1, r4
 755 0010 C164     		str	r1, [r0, #76]
 756 0012 C36C     		ldr	r3, [r0, #76]
 757 0014 10BC     		pop	{r4}
 758 0016 1A43     		orrs	r2, r2, r3
 759 0018 C264     		str	r2, [r0, #76]
 760 001a 7047     		bx	lr
 761              		.size	adc_disable_channel_input_offset, .-adc_disable_channel_input_offset
 762              		.section	.text.adc_set_channel_input_gain,"ax",%progbits
 763              		.align	1
 764              		.p2align 2,,3
 765              		.global	adc_set_channel_input_gain
 766              		.syntax unified
 767              		.thumb
 768              		.thumb_func
 769              		.fpu softvfp
 770              		.type	adc_set_channel_input_gain, %function
 771              	adc_set_channel_input_gain:
 772              		@ args = 0, pretend = 0, frame = 0
 773              		@ frame_needed = 0, uses_anonymous_args = 0
 774              		@ link register save eliminated.
 775 0000 836C     		ldr	r3, [r0, #72]
 776 0002 4900     		lsls	r1, r1, #1
 777 0004 02F00302 		and	r2, r2, #3
 778 0008 8A40     		lsls	r2, r2, r1
 779 000a 1A43     		orrs	r2, r2, r3
 780 000c 8264     		str	r2, [r0, #72]
 781 000e 7047     		bx	lr
 782              		.size	adc_set_channel_input_gain, .-adc_set_channel_input_gain
 783              		.section	.text.adc_set_calibmode,"ax",%progbits
 784              		.align	1
 785              		.p2align 2,,3
 786              		.global	adc_set_calibmode
 787              		.syntax unified
 788              		.thumb
 789              		.thumb_func
 790              		.fpu softvfp
 791              		.type	adc_set_calibmode, %function
 792              	adc_set_calibmode:
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795              		@ link register save eliminated.
 796 0000 0368     		ldr	r3, [r0]
 797 0002 43F00803 		orr	r3, r3, #8
 798 0006 0360     		str	r3, [r0]
ARM GAS  /tmp/cc4zemmL.s 			page 15


 799 0008 7047     		bx	lr
 800              		.size	adc_set_calibmode, .-adc_set_calibmode
 801 000a 00BF     		.section	.text.adc_get_actual_adc_clock,"ax",%progbits
 802              		.align	1
 803              		.p2align 2,,3
 804              		.global	adc_get_actual_adc_clock
 805              		.syntax unified
 806              		.thumb
 807              		.thumb_func
 808              		.fpu softvfp
 809              		.type	adc_get_actual_adc_clock, %function
 810              	adc_get_actual_adc_clock:
 811              		@ args = 0, pretend = 0, frame = 0
 812              		@ frame_needed = 0, uses_anonymous_args = 0
 813              		@ link register save eliminated.
 814 0000 4068     		ldr	r0, [r0, #4]
 815 0002 C0F30720 		ubfx	r0, r0, #8, #8
 816 0006 0130     		adds	r0, r0, #1
 817 0008 4000     		lsls	r0, r0, #1
 818 000a B1FBF0F0 		udiv	r0, r1, r0
 819 000e 7047     		bx	lr
 820              		.size	adc_get_actual_adc_clock, .-adc_get_actual_adc_clock
 821              		.section	.text.adc_enable_interrupt,"ax",%progbits
 822              		.align	1
 823              		.p2align 2,,3
 824              		.global	adc_enable_interrupt
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu softvfp
 829              		.type	adc_enable_interrupt, %function
 830              	adc_enable_interrupt:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833              		@ link register save eliminated.
 834 0000 4162     		str	r1, [r0, #36]
 835 0002 7047     		bx	lr
 836              		.size	adc_enable_interrupt, .-adc_enable_interrupt
 837              		.section	.text.adc_disable_interrupt,"ax",%progbits
 838              		.align	1
 839              		.p2align 2,,3
 840              		.global	adc_disable_interrupt
 841              		.syntax unified
 842              		.thumb
 843              		.thumb_func
 844              		.fpu softvfp
 845              		.type	adc_disable_interrupt, %function
 846              	adc_disable_interrupt:
 847              		@ args = 0, pretend = 0, frame = 0
 848              		@ frame_needed = 0, uses_anonymous_args = 0
 849              		@ link register save eliminated.
 850 0000 8162     		str	r1, [r0, #40]
 851 0002 7047     		bx	lr
 852              		.size	adc_disable_interrupt, .-adc_disable_interrupt
 853              		.section	.text.adc_get_status,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/cc4zemmL.s 			page 16


 856              		.global	adc_get_status
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu softvfp
 861              		.type	adc_get_status, %function
 862              	adc_get_status:
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865              		@ link register save eliminated.
 866 0000 006B     		ldr	r0, [r0, #48]
 867 0002 7047     		bx	lr
 868              		.size	adc_get_status, .-adc_get_status
 869              		.section	.text.adc_get_overrun_status,"ax",%progbits
 870              		.align	1
 871              		.p2align 2,,3
 872              		.global	adc_get_overrun_status
 873              		.syntax unified
 874              		.thumb
 875              		.thumb_func
 876              		.fpu softvfp
 877              		.type	adc_get_overrun_status, %function
 878              	adc_get_overrun_status:
 879              		@ args = 0, pretend = 0, frame = 0
 880              		@ frame_needed = 0, uses_anonymous_args = 0
 881              		@ link register save eliminated.
 882 0000 C06B     		ldr	r0, [r0, #60]
 883 0002 7047     		bx	lr
 884              		.size	adc_get_overrun_status, .-adc_get_overrun_status
 885              		.section	.text.adc_get_interrupt_mask,"ax",%progbits
 886              		.align	1
 887              		.p2align 2,,3
 888              		.global	adc_get_interrupt_mask
 889              		.syntax unified
 890              		.thumb
 891              		.thumb_func
 892              		.fpu softvfp
 893              		.type	adc_get_interrupt_mask, %function
 894              	adc_get_interrupt_mask:
 895              		@ args = 0, pretend = 0, frame = 0
 896              		@ frame_needed = 0, uses_anonymous_args = 0
 897              		@ link register save eliminated.
 898 0000 C06A     		ldr	r0, [r0, #44]
 899 0002 7047     		bx	lr
 900              		.size	adc_get_interrupt_mask, .-adc_get_interrupt_mask
 901              		.section	.text.adc_set_bias_current,"ax",%progbits
 902              		.align	1
 903              		.p2align 2,,3
 904              		.global	adc_set_bias_current
 905              		.syntax unified
 906              		.thumb
 907              		.thumb_func
 908              		.fpu softvfp
 909              		.type	adc_set_bias_current, %function
 910              	adc_set_bias_current:
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc4zemmL.s 			page 17


 913              		@ link register save eliminated.
 914 0000 D0F89430 		ldr	r3, [r0, #148]
 915 0004 0902     		lsls	r1, r1, #8
 916 0006 01F44071 		and	r1, r1, #768
 917 000a 1943     		orrs	r1, r1, r3
 918 000c C0F89410 		str	r1, [r0, #148]
 919 0010 7047     		bx	lr
 920              		.size	adc_set_bias_current, .-adc_set_bias_current
 921 0012 00BF     		.section	.text.adc_enable_ts,"ax",%progbits
 922              		.align	1
 923              		.p2align 2,,3
 924              		.global	adc_enable_ts
 925              		.syntax unified
 926              		.thumb
 927              		.thumb_func
 928              		.fpu softvfp
 929              		.type	adc_enable_ts, %function
 930              	adc_enable_ts:
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933              		@ link register save eliminated.
 934 0000 D0F89430 		ldr	r3, [r0, #148]
 935 0004 43F01003 		orr	r3, r3, #16
 936 0008 C0F89430 		str	r3, [r0, #148]
 937 000c 7047     		bx	lr
 938              		.size	adc_enable_ts, .-adc_enable_ts
 939 000e 00BF     		.section	.text.adc_disable_ts,"ax",%progbits
 940              		.align	1
 941              		.p2align 2,,3
 942              		.global	adc_disable_ts
 943              		.syntax unified
 944              		.thumb
 945              		.thumb_func
 946              		.fpu softvfp
 947              		.type	adc_disable_ts, %function
 948              	adc_disable_ts:
 949              		@ args = 0, pretend = 0, frame = 0
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951              		@ link register save eliminated.
 952 0000 D0F89430 		ldr	r3, [r0, #148]
 953 0004 23F01003 		bic	r3, r3, #16
 954 0008 C0F89430 		str	r3, [r0, #148]
 955 000c 7047     		bx	lr
 956              		.size	adc_disable_ts, .-adc_disable_ts
 957 000e 00BF     		.section	.text.adc_set_writeprotect,"ax",%progbits
 958              		.align	1
 959              		.p2align 2,,3
 960              		.global	adc_set_writeprotect
 961              		.syntax unified
 962              		.thumb
 963              		.thumb_func
 964              		.fpu softvfp
 965              		.type	adc_set_writeprotect, %function
 966              	adc_set_writeprotect:
 967              		@ args = 0, pretend = 0, frame = 0
 968              		@ frame_needed = 0, uses_anonymous_args = 0
 969              		@ link register save eliminated.
ARM GAS  /tmp/cc4zemmL.s 			page 18


 970 0000 034B     		ldr	r3, .L83
 971 0002 01F00101 		and	r1, r1, #1
 972 0006 0B43     		orrs	r3, r3, r1
 973 0008 C0F8E430 		str	r3, [r0, #228]
 974 000c 7047     		bx	lr
 975              	.L84:
 976 000e 00BF     		.align	2
 977              	.L83:
 978 0010 00434441 		.word	1094992640
 979              		.size	adc_set_writeprotect, .-adc_set_writeprotect
 980              		.section	.text.adc_get_writeprotect_status,"ax",%progbits
 981              		.align	1
 982              		.p2align 2,,3
 983              		.global	adc_get_writeprotect_status
 984              		.syntax unified
 985              		.thumb
 986              		.thumb_func
 987              		.fpu softvfp
 988              		.type	adc_get_writeprotect_status, %function
 989              	adc_get_writeprotect_status:
 990              		@ args = 0, pretend = 0, frame = 0
 991              		@ frame_needed = 0, uses_anonymous_args = 0
 992              		@ link register save eliminated.
 993 0000 D0F8E830 		ldr	r3, [r0, #232]
 994 0004 13F00100 		ands	r0, r3, #1
 995 0008 18BF     		it	ne
 996 000a C3F30F20 		ubfxne	r0, r3, #8, #16
 997 000e 7047     		bx	lr
 998              		.size	adc_get_writeprotect_status, .-adc_get_writeprotect_status
 999              		.section	.text.adc_check,"ax",%progbits
 1000              		.align	1
 1001              		.p2align 2,,3
 1002              		.global	adc_check
 1003              		.syntax unified
 1004              		.thumb
 1005              		.thumb_func
 1006              		.fpu softvfp
 1007              		.type	adc_check, %function
 1008              	adc_check:
 1009              		@ args = 0, pretend = 0, frame = 0
 1010              		@ frame_needed = 0, uses_anonymous_args = 0
 1011 0000 70B5     		push	{r4, r5, r6, lr}
 1012 0002 0546     		mov	r5, r0
 1013 0004 2A48     		ldr	r0, .L110
 1014 0006 6C68     		ldr	r4, [r5, #4]
 1015 0008 C4F30724 		ubfx	r4, r4, #8, #8
 1016 000c 0134     		adds	r4, r4, #1
 1017 000e 6400     		lsls	r4, r4, #1
 1018 0010 B1FBF4F4 		udiv	r4, r1, r4
 1019 0014 2146     		mov	r1, r4
 1020 0016 FFF7FEFF 		bl	printf
 1021 001a 264B     		ldr	r3, .L110+4
 1022 001c 9C42     		cmp	r4, r3
 1023 001e 3AD9     		bls	.L107
 1024 0020 2549     		ldr	r1, .L110+8
 1025 0022 8C42     		cmp	r4, r1
 1026 0024 18D8     		bhi	.L108
ARM GAS  /tmp/cc4zemmL.s 			page 19


 1027              	.L90:
 1028 0026 6E68     		ldr	r6, [r5, #4]
 1029 0028 6B68     		ldr	r3, [r5, #4]
 1030 002a 9806     		lsls	r0, r3, #26
 1031 002c C6F30346 		ubfx	r6, r6, #16, #4
 1032 0030 05D5     		bpl	.L106
 1033 0032 6B68     		ldr	r3, [r5, #4]
 1034 0034 1906     		lsls	r1, r3, #24
 1035 0036 33D4     		bmi	.L109
 1036 0038 6B68     		ldr	r3, [r5, #4]
 1037 003a 5A06     		lsls	r2, r3, #25
 1038 003c 10D4     		bmi	.L95
 1039              	.L106:
 1040 003e 04EB8401 		add	r1, r4, r4, lsl #2
 1041 0042 1E4C     		ldr	r4, .L110+12
 1042 0044 C900     		lsls	r1, r1, #3
 1043 0046 3046     		mov	r0, r6
 1044 0048 A4FB0131 		umull	r3, r1, r4, r1
 1045 004c 890C     		lsrs	r1, r1, #18
 1046 004e FFF7FEFF 		bl	calcul_startup
 1047 0052 8142     		cmp	r1, r0
 1048 0054 19D8     		bhi	.L104
 1049              	.L88:
 1050 0056 70BD     		pop	{r4, r5, r6, pc}
 1051              	.L108:
 1052 0058 1948     		ldr	r0, .L110+16
 1053 005a FFF7FEFF 		bl	printf
 1054 005e E2E7     		b	.L90
 1055              	.L95:
 1056 0060 6B68     		ldr	r3, [r5, #4]
 1057 0062 5B06     		lsls	r3, r3, #25
 1058 0064 F7D5     		bpl	.L88
 1059 0066 3046     		mov	r0, r6
 1060 0068 FFF7FEFF 		bl	calcul_startup
 1061 006c 04EB4403 		add	r3, r4, r4, lsl #1
 1062 0070 124A     		ldr	r2, .L110+12
 1063 0072 9B00     		lsls	r3, r3, #2
 1064 0074 A2FB0313 		umull	r1, r3, r2, r3
 1065 0078 B0EB934F 		cmp	r0, r3, lsr #18
 1066 007c EBD2     		bcs	.L88
 1067 007e 04EB8401 		add	r1, r4, r4, lsl #2
 1068 0082 C900     		lsls	r1, r1, #3
 1069 0084 A2FB0131 		umull	r3, r1, r2, r1
 1070 0088 890C     		lsrs	r1, r1, #18
 1071              	.L104:
 1072 008a 0246     		mov	r2, r0
 1073 008c BDE87040 		pop	{r4, r5, r6, lr}
 1074 0090 0C48     		ldr	r0, .L110+20
 1075 0092 FFF7FEBF 		b	printf
 1076              	.L107:
 1077 0096 0C49     		ldr	r1, .L110+24
 1078 0098 0C48     		ldr	r0, .L110+28
 1079 009a FFF7FEFF 		bl	printf
 1080 009e C2E7     		b	.L90
 1081              	.L109:
 1082 00a0 0B48     		ldr	r0, .L110+32
 1083 00a2 FFF7FEFF 		bl	puts
ARM GAS  /tmp/cc4zemmL.s 			page 20


 1084 00a6 6B68     		ldr	r3, [r5, #4]
 1085 00a8 5A06     		lsls	r2, r3, #25
 1086 00aa D9D4     		bmi	.L95
 1087 00ac C7E7     		b	.L106
 1088              	.L111:
 1089 00ae 00BF     		.align	2
 1090              	.L110:
 1091 00b0 00000000 		.word	.LC0
 1092 00b4 3F420F00 		.word	999999
 1093 00b8 002D3101 		.word	20000000
 1094 00bc 83DE1B43 		.word	1125899907
 1095 00c0 58000000 		.word	.LC2
 1096 00c4 90000000 		.word	.LC3
 1097 00c8 40420F00 		.word	1000000
 1098 00cc 20000000 		.word	.LC1
 1099 00d0 C0000000 		.word	.LC4
 1100              		.size	adc_check, .-adc_check
 1101              		.section	.text.adc_get_pdc_base,"ax",%progbits
 1102              		.align	1
 1103              		.p2align 2,,3
 1104              		.global	adc_get_pdc_base
 1105              		.syntax unified
 1106              		.thumb
 1107              		.thumb_func
 1108              		.fpu softvfp
 1109              		.type	adc_get_pdc_base, %function
 1110              	adc_get_pdc_base:
 1111              		@ args = 0, pretend = 0, frame = 0
 1112              		@ frame_needed = 0, uses_anonymous_args = 0
 1113              		@ link register save eliminated.
 1114 0000 0048     		ldr	r0, .L113
 1115 0002 7047     		bx	lr
 1116              	.L114:
 1117              		.align	2
 1118              	.L113:
 1119 0004 00810340 		.word	1073971456
 1120              		.size	adc_get_pdc_base, .-adc_get_pdc_base
 1121              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1122              		.align	2
 1123              		.type	cpu_irq_critical_section_counter, %object
 1124              		.size	cpu_irq_critical_section_counter, 4
 1125              	cpu_irq_critical_section_counter:
 1126 0000 00000000 		.space	4
 1127              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1128              		.type	cpu_irq_prev_interrupt_state, %object
 1129              		.size	cpu_irq_prev_interrupt_state, 1
 1130              	cpu_irq_prev_interrupt_state:
 1131 0000 00       		.space	1
 1132              		.section	.rodata.adc_check.str1.4,"aMS",%progbits,1
 1133              		.align	2
 1134              	.LC0:
 1135 0000 41444320 		.ascii	"ADC clock frequency = %d Hz\015\012\000"
 1135      636C6F63 
 1135      6B206672 
 1135      65717565 
 1135      6E637920 
 1136 001e 0000     		.space	2
ARM GAS  /tmp/cc4zemmL.s 			page 21


 1137              	.LC1:
 1138 0020 61646320 		.ascii	"adc frequency too low (out of specification: %d Hz)"
 1138      66726571 
 1138      75656E63 
 1138      7920746F 
 1138      6F206C6F 
 1139 0053 0D0A00   		.ascii	"\015\012\000"
 1140 0056 0000     		.space	2
 1141              	.LC2:
 1142 0058 61646320 		.ascii	"adc frequency too high (out of specification: %d Hz"
 1142      66726571 
 1142      75656E63 
 1142      7920746F 
 1142      6F206869 
 1143 008b 290D0A00 		.ascii	")\015\012\000"
 1144 008f 00       		.space	1
 1145              	.LC3:
 1146 0090 53746172 		.ascii	"Startup time too small: %d, programmed: %d\015\012\000"
 1146      74757020 
 1146      74696D65 
 1146      20746F6F 
 1146      20736D61 
 1147 00bd 000000   		.space	3
 1148              	.LC4:
 1149 00c0 46726565 		.ascii	"FreeRun forbidden in sleep mode\015\000"
 1149      52756E20 
 1149      666F7262 
 1149      69646465 
 1149      6E20696E 
 1150              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
