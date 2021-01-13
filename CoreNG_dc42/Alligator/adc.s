ARM GAS  /tmp/ccKZrmoT.s 			page 1


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
ARM GAS  /tmp/ccKZrmoT.s 			page 2


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
ARM GAS  /tmp/ccKZrmoT.s 			page 3


 115 0000 70B4     		push	{r4, r5, r6}
 116 0002 5200     		lsls	r2, r2, #1
 117 0004 0446     		mov	r4, r0
 118 0006 0126     		movs	r6, #1
 119 0008 0020     		movs	r0, #0
 120 000a 40F20225 		movw	r5, #514
 121 000e B1FBF2F2 		udiv	r2, r1, r2
 122 0012 2660     		str	r6, [r4]
 123 0014 6060     		str	r0, [r4, #4]
 124 0016 C4F82051 		str	r5, [r4, #288]
 125 001a C4F80401 		str	r0, [r4, #260]
 126 001e C4F81401 		str	r0, [r4, #276]
 127 0022 6168     		ldr	r1, [r4, #4]
 128 0024 013A     		subs	r2, r2, #1
 129 0026 1202     		lsls	r2, r2, #8
 130 0028 92B2     		uxth	r2, r2
 131 002a 0B43     		orrs	r3, r3, r1
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
ARM GAS  /tmp/ccKZrmoT.s 			page 4


 172 0002 D201     		lsls	r2, r2, #7
 173 0004 D2B2     		uxtb	r2, r2
 174 0006 1943     		orrs	r1, r1, r3
 175 0008 0A43     		orrs	r2, r2, r1
 176 000a 4260     		str	r2, [r0, #4]
 177 000c 7047     		bx	lr
 178              		.size	adc_configure_trigger, .-adc_configure_trigger
 179 000e 00BF     		.section	.text.adc_configure_sequence,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	adc_configure_sequence
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu softvfp
 187              		.type	adc_configure_sequence, %function
 188              	adc_configure_sequence:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 082A     		cmp	r2, #8
 193 0002 70B4     		push	{r4, r5, r6}
 194 0004 11D8     		bhi	.L25
 195 0006 72B1     		cbz	r2, .L24
 196 0008 0024     		movs	r4, #0
 197 000a 013A     		subs	r2, r2, #1
 198 000c D2B2     		uxtb	r2, r2
 199 000e 0A44     		add	r2, r2, r1
 200 0010 0139     		subs	r1, r1, #1
 201              	.L27:
 202 0012 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 203 0016 8568     		ldr	r5, [r0, #8]
 204 0018 A340     		lsls	r3, r3, r4
 205 001a 2B43     		orrs	r3, r3, r5
 206 001c 8A42     		cmp	r2, r1
 207 001e 04F10404 		add	r4, r4, #4
 208 0022 8360     		str	r3, [r0, #8]
 209 0024 F5D1     		bne	.L27
 210              	.L24:
 211 0026 70BC     		pop	{r4, r5, r6}
 212 0028 7047     		bx	lr
 213              	.L25:
 214 002a 0024     		movs	r4, #0
 215 002c 4D1E     		subs	r5, r1, #1
 216              	.L29:
 217 002e 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 218 0032 8668     		ldr	r6, [r0, #8]
 219 0034 A340     		lsls	r3, r3, r4
 220 0036 0434     		adds	r4, r4, #4
 221 0038 3343     		orrs	r3, r3, r6
 222 003a 202C     		cmp	r4, #32
 223 003c 8360     		str	r3, [r0, #8]
 224 003e F6D1     		bne	.L29
 225 0040 0025     		movs	r5, #0
 226 0042 2B46     		mov	r3, r5
 227 0044 083A     		subs	r2, r2, #8
 228              	.L30:
ARM GAS  /tmp/ccKZrmoT.s 			page 5


 229 0046 4C19     		adds	r4, r1, r5
 230 0048 247A     		ldrb	r4, [r4, #8]	@ zero_extendqisi2
 231 004a AD00     		lsls	r5, r5, #2
 232 004c C668     		ldr	r6, [r0, #12]
 233 004e 0133     		adds	r3, r3, #1
 234 0050 AC40     		lsls	r4, r4, r5
 235 0052 DBB2     		uxtb	r3, r3
 236 0054 3443     		orrs	r4, r4, r6
 237 0056 9342     		cmp	r3, r2
 238 0058 C460     		str	r4, [r0, #12]
 239 005a 1D46     		mov	r5, r3
 240 005c F3DB     		blt	.L30
 241 005e 70BC     		pop	{r4, r5, r6}
 242 0060 7047     		bx	lr
 243              		.size	adc_configure_sequence, .-adc_configure_sequence
 244 0062 00BF     		.section	.text.adc_configure_timing,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	adc_configure_timing
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu softvfp
 252              		.type	adc_configure_timing, %function
 253              	adc_configure_timing:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 10B4     		push	{r4}
 258 0002 0906     		lsls	r1, r1, #24
 259 0004 4468     		ldr	r4, [r0, #4]
 260 0006 01F07061 		and	r1, r1, #251658240
 261 000a 2143     		orrs	r1, r1, r4
 262 000c 1B07     		lsls	r3, r3, #28
 263 000e 03F04053 		and	r3, r3, #805306368
 264 0012 1143     		orrs	r1, r1, r2
 265 0014 1943     		orrs	r1, r1, r3
 266 0016 4160     		str	r1, [r0, #4]
 267 0018 10BC     		pop	{r4}
 268 001a 7047     		bx	lr
 269              		.size	adc_configure_timing, .-adc_configure_timing
 270              		.section	.text.adc_enable_anch,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	adc_enable_anch
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu softvfp
 278              		.type	adc_enable_anch, %function
 279              	adc_enable_anch:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 4368     		ldr	r3, [r0, #4]
 284 0002 43F40003 		orr	r3, r3, #8388608
 285 0006 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/ccKZrmoT.s 			page 6


 286 0008 7047     		bx	lr
 287              		.size	adc_enable_anch, .-adc_enable_anch
 288 000a 00BF     		.section	.text.adc_disable_anch,"ax",%progbits
 289              		.align	1
 290              		.p2align 2,,3
 291              		.global	adc_disable_anch
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu softvfp
 296              		.type	adc_disable_anch, %function
 297              	adc_disable_anch:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0000 4368     		ldr	r3, [r0, #4]
 302 0002 23F40003 		bic	r3, r3, #8388608
 303 0006 4360     		str	r3, [r0, #4]
 304 0008 7047     		bx	lr
 305              		.size	adc_disable_anch, .-adc_disable_anch
 306 000a 00BF     		.section	.text.adc_start,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	adc_start
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu softvfp
 314              		.type	adc_start, %function
 315              	adc_start:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 0223     		movs	r3, #2
 320 0002 0360     		str	r3, [r0]
 321 0004 7047     		bx	lr
 322              		.size	adc_start, .-adc_start
 323 0006 00BF     		.section	.text.adc_reset,"ax",%progbits
 324              		.align	1
 325              		.p2align 2,,3
 326              		.global	adc_reset
 327              		.syntax unified
 328              		.thumb
 329              		.thumb_func
 330              		.fpu softvfp
 331              		.type	adc_reset, %function
 332              	adc_reset:
 333              		@ args = 0, pretend = 0, frame = 0
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335              		@ link register save eliminated.
 336 0000 0123     		movs	r3, #1
 337 0002 0360     		str	r3, [r0]
 338 0004 7047     		bx	lr
 339              		.size	adc_reset, .-adc_reset
 340 0006 00BF     		.section	.text.adc_enable_channel,"ax",%progbits
 341              		.align	1
 342              		.p2align 2,,3
ARM GAS  /tmp/ccKZrmoT.s 			page 7


 343              		.global	adc_enable_channel
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu softvfp
 348              		.type	adc_enable_channel, %function
 349              	adc_enable_channel:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              		@ link register save eliminated.
 353 0000 0123     		movs	r3, #1
 354 0002 03FA01F1 		lsl	r1, r3, r1
 355 0006 0161     		str	r1, [r0, #16]
 356 0008 7047     		bx	lr
 357              		.size	adc_enable_channel, .-adc_enable_channel
 358 000a 00BF     		.section	.text.adc_enable_all_channel,"ax",%progbits
 359              		.align	1
 360              		.p2align 2,,3
 361              		.global	adc_enable_all_channel
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu softvfp
 366              		.type	adc_enable_all_channel, %function
 367              	adc_enable_all_channel:
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		@ link register save eliminated.
 371 0000 4FF6FF73 		movw	r3, #65535
 372 0004 0361     		str	r3, [r0, #16]
 373 0006 7047     		bx	lr
 374              		.size	adc_enable_all_channel, .-adc_enable_all_channel
 375              		.section	.text.adc_disable_channel,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	adc_disable_channel
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu softvfp
 383              		.type	adc_disable_channel, %function
 384              	adc_disable_channel:
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388 0000 0123     		movs	r3, #1
 389 0002 03FA01F1 		lsl	r1, r3, r1
 390 0006 4161     		str	r1, [r0, #20]
 391 0008 7047     		bx	lr
 392              		.size	adc_disable_channel, .-adc_disable_channel
 393 000a 00BF     		.section	.text.adc_disable_all_channel,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	adc_disable_all_channel
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  /tmp/ccKZrmoT.s 			page 8


 400              		.fpu softvfp
 401              		.type	adc_disable_all_channel, %function
 402              	adc_disable_all_channel:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 4FF6FF73 		movw	r3, #65535
 407 0004 4361     		str	r3, [r0, #20]
 408 0006 7047     		bx	lr
 409              		.size	adc_disable_all_channel, .-adc_disable_all_channel
 410              		.section	.text.adc_get_channel_status,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	adc_get_channel_status
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu softvfp
 418              		.type	adc_get_channel_status, %function
 419              	adc_get_channel_status:
 420              		@ args = 0, pretend = 0, frame = 0
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422              		@ link register save eliminated.
 423 0000 0123     		movs	r3, #1
 424 0002 8069     		ldr	r0, [r0, #24]
 425 0004 03FA01F1 		lsl	r1, r3, r1
 426 0008 0840     		ands	r0, r0, r1
 427 000a 7047     		bx	lr
 428              		.size	adc_get_channel_status, .-adc_get_channel_status
 429              		.section	.text.adc_get_channel_value,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	adc_get_channel_value
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu softvfp
 437              		.type	adc_get_channel_value, %function
 438              	adc_get_channel_value:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442 0000 0F29     		cmp	r1, #15
 443 0002 9ABF     		itte	ls
 444 0004 5030     		addls	r0, r0, #80
 445 0006 50F82100 		ldrls	r0, [r0, r1, lsl #2]
 446 000a 0020     		movhi	r0, #0
 447 000c 7047     		bx	lr
 448              		.size	adc_get_channel_value, .-adc_get_channel_value
 449 000e 00BF     		.section	.text.adc_get_latest_value,"ax",%progbits
 450              		.align	1
 451              		.p2align 2,,3
 452              		.global	adc_get_latest_value
 453              		.syntax unified
 454              		.thumb
 455              		.thumb_func
 456              		.fpu softvfp
ARM GAS  /tmp/ccKZrmoT.s 			page 9


 457              		.type	adc_get_latest_value, %function
 458              	adc_get_latest_value:
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 461              		@ link register save eliminated.
 462 0000 006A     		ldr	r0, [r0, #32]
 463 0002 7047     		bx	lr
 464              		.size	adc_get_latest_value, .-adc_get_latest_value
 465              		.section	.text.adc_enable_tag,"ax",%progbits
 466              		.align	1
 467              		.p2align 2,,3
 468              		.global	adc_enable_tag
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu softvfp
 473              		.type	adc_enable_tag, %function
 474              	adc_enable_tag:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 478 0000 036C     		ldr	r3, [r0, #64]
 479 0002 43F08073 		orr	r3, r3, #16777216
 480 0006 0364     		str	r3, [r0, #64]
 481 0008 7047     		bx	lr
 482              		.size	adc_enable_tag, .-adc_enable_tag
 483 000a 00BF     		.section	.text.adc_disable_tag,"ax",%progbits
 484              		.align	1
 485              		.p2align 2,,3
 486              		.global	adc_disable_tag
 487              		.syntax unified
 488              		.thumb
 489              		.thumb_func
 490              		.fpu softvfp
 491              		.type	adc_disable_tag, %function
 492              	adc_disable_tag:
 493              		@ args = 0, pretend = 0, frame = 0
 494              		@ frame_needed = 0, uses_anonymous_args = 0
 495              		@ link register save eliminated.
 496 0000 036C     		ldr	r3, [r0, #64]
 497 0002 23F08073 		bic	r3, r3, #16777216
 498 0006 0364     		str	r3, [r0, #64]
 499 0008 7047     		bx	lr
 500              		.size	adc_disable_tag, .-adc_disable_tag
 501 000a 00BF     		.section	.text.adc_get_tag,"ax",%progbits
 502              		.align	1
 503              		.p2align 2,,3
 504              		.global	adc_get_tag
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu softvfp
 509              		.type	adc_get_tag, %function
 510              	adc_get_tag:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513              		@ link register save eliminated.
ARM GAS  /tmp/ccKZrmoT.s 			page 10


 514 0000 006A     		ldr	r0, [r0, #32]
 515 0002 C0F30330 		ubfx	r0, r0, #12, #4
 516 0006 7047     		bx	lr
 517              		.size	adc_get_tag, .-adc_get_tag
 518              		.section	.text.adc_start_sequencer,"ax",%progbits
 519              		.align	1
 520              		.p2align 2,,3
 521              		.global	adc_start_sequencer
 522              		.syntax unified
 523              		.thumb
 524              		.thumb_func
 525              		.fpu softvfp
 526              		.type	adc_start_sequencer, %function
 527              	adc_start_sequencer:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 4368     		ldr	r3, [r0, #4]
 532 0002 43F00043 		orr	r3, r3, #-2147483648
 533 0006 4360     		str	r3, [r0, #4]
 534 0008 7047     		bx	lr
 535              		.size	adc_start_sequencer, .-adc_start_sequencer
 536 000a 00BF     		.section	.text.adc_stop_sequencer,"ax",%progbits
 537              		.align	1
 538              		.p2align 2,,3
 539              		.global	adc_stop_sequencer
 540              		.syntax unified
 541              		.thumb
 542              		.thumb_func
 543              		.fpu softvfp
 544              		.type	adc_stop_sequencer, %function
 545              	adc_stop_sequencer:
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548              		@ link register save eliminated.
 549 0000 4368     		ldr	r3, [r0, #4]
 550 0002 23F00043 		bic	r3, r3, #-2147483648
 551 0006 4360     		str	r3, [r0, #4]
 552 0008 7047     		bx	lr
 553              		.size	adc_stop_sequencer, .-adc_stop_sequencer
 554 000a 00BF     		.section	.text.adc_set_comparison_mode,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	adc_set_comparison_mode
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu softvfp
 562              		.type	adc_set_comparison_mode, %function
 563              	adc_set_comparison_mode:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566              		@ link register save eliminated.
 567 0000 036C     		ldr	r3, [r0, #64]
 568 0002 01F00301 		and	r1, r1, #3
 569 0006 23F00303 		bic	r3, r3, #3
 570 000a 0364     		str	r3, [r0, #64]
ARM GAS  /tmp/ccKZrmoT.s 			page 11


 571 000c 036C     		ldr	r3, [r0, #64]
 572 000e 1943     		orrs	r1, r1, r3
 573 0010 0164     		str	r1, [r0, #64]
 574 0012 7047     		bx	lr
 575              		.size	adc_set_comparison_mode, .-adc_set_comparison_mode
 576              		.section	.text.adc_get_comparison_mode,"ax",%progbits
 577              		.align	1
 578              		.p2align 2,,3
 579              		.global	adc_get_comparison_mode
 580              		.syntax unified
 581              		.thumb
 582              		.thumb_func
 583              		.fpu softvfp
 584              		.type	adc_get_comparison_mode, %function
 585              	adc_get_comparison_mode:
 586              		@ args = 0, pretend = 0, frame = 0
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588              		@ link register save eliminated.
 589 0000 006C     		ldr	r0, [r0, #64]
 590 0002 00F00300 		and	r0, r0, #3
 591 0006 7047     		bx	lr
 592              		.size	adc_get_comparison_mode, .-adc_get_comparison_mode
 593              		.section	.text.adc_set_comparison_window,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	adc_set_comparison_window
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu softvfp
 601              		.type	adc_set_comparison_window, %function
 602              	adc_set_comparison_window:
 603              		@ args = 0, pretend = 0, frame = 0
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605              		@ link register save eliminated.
 606 0000 034B     		ldr	r3, .L58
 607 0002 C1F30B01 		ubfx	r1, r1, #0, #12
 608 0006 03EA0242 		and	r2, r3, r2, lsl #16
 609 000a 0A43     		orrs	r2, r2, r1
 610 000c 4264     		str	r2, [r0, #68]
 611 000e 7047     		bx	lr
 612              	.L59:
 613              		.align	2
 614              	.L58:
 615 0010 0000FF0F 		.word	268369920
 616              		.size	adc_set_comparison_window, .-adc_set_comparison_window
 617              		.section	.text.adc_set_comparison_channel,"ax",%progbits
 618              		.align	1
 619              		.p2align 2,,3
 620              		.global	adc_set_comparison_channel
 621              		.syntax unified
 622              		.thumb
 623              		.thumb_func
 624              		.fpu softvfp
 625              		.type	adc_set_comparison_channel, %function
 626              	adc_set_comparison_channel:
 627              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKZrmoT.s 			page 12


 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629              		@ link register save eliminated.
 630 0000 0F29     		cmp	r1, #15
 631 0002 036C     		ldr	r3, [r0, #64]
 632 0004 03D9     		bls	.L63
 633 0006 43F40073 		orr	r3, r3, #512
 634 000a 0364     		str	r3, [r0, #64]
 635 000c 7047     		bx	lr
 636              	.L63:
 637 000e 23F40073 		bic	r3, r3, #512
 638 0012 0364     		str	r3, [r0, #64]
 639 0014 036C     		ldr	r3, [r0, #64]
 640 0016 23F0F003 		bic	r3, r3, #240
 641 001a 0364     		str	r3, [r0, #64]
 642 001c 036C     		ldr	r3, [r0, #64]
 643 001e 43EA0111 		orr	r1, r3, r1, lsl #4
 644 0022 0164     		str	r1, [r0, #64]
 645 0024 7047     		bx	lr
 646              		.size	adc_set_comparison_channel, .-adc_set_comparison_channel
 647 0026 00BF     		.section	.text.adc_enable_channel_differential_input,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	adc_enable_channel_differential_input
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu softvfp
 655              		.type	adc_enable_channel_differential_input, %function
 656              	adc_enable_channel_differential_input:
 657              		@ args = 0, pretend = 0, frame = 0
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659              		@ link register save eliminated.
 660 0000 0123     		movs	r3, #1
 661 0002 C26C     		ldr	r2, [r0, #76]
 662 0004 1031     		adds	r1, r1, #16
 663 0006 8B40     		lsls	r3, r3, r1
 664 0008 1343     		orrs	r3, r3, r2
 665 000a C364     		str	r3, [r0, #76]
 666 000c 7047     		bx	lr
 667              		.size	adc_enable_channel_differential_input, .-adc_enable_channel_differential_input
 668 000e 00BF     		.section	.text.adc_disable_channel_differential_input,"ax",%progbits
 669              		.align	1
 670              		.p2align 2,,3
 671              		.global	adc_disable_channel_differential_input
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu softvfp
 676              		.type	adc_disable_channel_differential_input, %function
 677              	adc_disable_channel_differential_input:
 678              		@ args = 0, pretend = 0, frame = 0
 679              		@ frame_needed = 0, uses_anonymous_args = 0
 680              		@ link register save eliminated.
 681 0000 6FF48033 		mvn	r3, #65536
 682 0004 C26C     		ldr	r2, [r0, #76]
 683 0006 10B4     		push	{r4}
 684 0008 C46C     		ldr	r4, [r0, #76]
ARM GAS  /tmp/ccKZrmoT.s 			page 13


 685 000a 03FA01F1 		lsl	r1, r3, r1
 686 000e 2140     		ands	r1, r1, r4
 687 0010 C164     		str	r1, [r0, #76]
 688 0012 C36C     		ldr	r3, [r0, #76]
 689 0014 10BC     		pop	{r4}
 690 0016 1A43     		orrs	r2, r2, r3
 691 0018 C264     		str	r2, [r0, #76]
 692 001a 7047     		bx	lr
 693              		.size	adc_disable_channel_differential_input, .-adc_disable_channel_differential_input
 694              		.section	.text.adc_enable_channel_input_offset,"ax",%progbits
 695              		.align	1
 696              		.p2align 2,,3
 697              		.global	adc_enable_channel_input_offset
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu softvfp
 702              		.type	adc_enable_channel_input_offset, %function
 703              	adc_enable_channel_input_offset:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706              		@ link register save eliminated.
 707 0000 0123     		movs	r3, #1
 708 0002 C26C     		ldr	r2, [r0, #76]
 709 0004 03FA01F1 		lsl	r1, r3, r1
 710 0008 1143     		orrs	r1, r1, r2
 711 000a C164     		str	r1, [r0, #76]
 712 000c 7047     		bx	lr
 713              		.size	adc_enable_channel_input_offset, .-adc_enable_channel_input_offset
 714 000e 00BF     		.section	.text.adc_disable_channel_input_offset,"ax",%progbits
 715              		.align	1
 716              		.p2align 2,,3
 717              		.global	adc_disable_channel_input_offset
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu softvfp
 722              		.type	adc_disable_channel_input_offset, %function
 723              	adc_disable_channel_input_offset:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 727 0000 6FF00103 		mvn	r3, #1
 728 0004 C26C     		ldr	r2, [r0, #76]
 729 0006 10B4     		push	{r4}
 730 0008 C46C     		ldr	r4, [r0, #76]
 731 000a 03FA01F1 		lsl	r1, r3, r1
 732 000e 2140     		ands	r1, r1, r4
 733 0010 C164     		str	r1, [r0, #76]
 734 0012 C36C     		ldr	r3, [r0, #76]
 735 0014 10BC     		pop	{r4}
 736 0016 1A43     		orrs	r2, r2, r3
 737 0018 C264     		str	r2, [r0, #76]
 738 001a 7047     		bx	lr
 739              		.size	adc_disable_channel_input_offset, .-adc_disable_channel_input_offset
 740              		.section	.text.adc_set_channel_input_gain,"ax",%progbits
 741              		.align	1
ARM GAS  /tmp/ccKZrmoT.s 			page 14


 742              		.p2align 2,,3
 743              		.global	adc_set_channel_input_gain
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu softvfp
 748              		.type	adc_set_channel_input_gain, %function
 749              	adc_set_channel_input_gain:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 836C     		ldr	r3, [r0, #72]
 754 0002 4900     		lsls	r1, r1, #1
 755 0004 02F00302 		and	r2, r2, #3
 756 0008 8A40     		lsls	r2, r2, r1
 757 000a 1A43     		orrs	r2, r2, r3
 758 000c 8264     		str	r2, [r0, #72]
 759 000e 7047     		bx	lr
 760              		.size	adc_set_channel_input_gain, .-adc_set_channel_input_gain
 761              		.section	.text.adc_get_actual_adc_clock,"ax",%progbits
 762              		.align	1
 763              		.p2align 2,,3
 764              		.global	adc_get_actual_adc_clock
 765              		.syntax unified
 766              		.thumb
 767              		.thumb_func
 768              		.fpu softvfp
 769              		.type	adc_get_actual_adc_clock, %function
 770              	adc_get_actual_adc_clock:
 771              		@ args = 0, pretend = 0, frame = 0
 772              		@ frame_needed = 0, uses_anonymous_args = 0
 773              		@ link register save eliminated.
 774 0000 4068     		ldr	r0, [r0, #4]
 775 0002 C0F30720 		ubfx	r0, r0, #8, #8
 776 0006 0130     		adds	r0, r0, #1
 777 0008 4000     		lsls	r0, r0, #1
 778 000a B1FBF0F0 		udiv	r0, r1, r0
 779 000e 7047     		bx	lr
 780              		.size	adc_get_actual_adc_clock, .-adc_get_actual_adc_clock
 781              		.section	.text.adc_enable_interrupt,"ax",%progbits
 782              		.align	1
 783              		.p2align 2,,3
 784              		.global	adc_enable_interrupt
 785              		.syntax unified
 786              		.thumb
 787              		.thumb_func
 788              		.fpu softvfp
 789              		.type	adc_enable_interrupt, %function
 790              	adc_enable_interrupt:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793              		@ link register save eliminated.
 794 0000 4162     		str	r1, [r0, #36]
 795 0002 7047     		bx	lr
 796              		.size	adc_enable_interrupt, .-adc_enable_interrupt
 797              		.section	.text.adc_disable_interrupt,"ax",%progbits
 798              		.align	1
ARM GAS  /tmp/ccKZrmoT.s 			page 15


 799              		.p2align 2,,3
 800              		.global	adc_disable_interrupt
 801              		.syntax unified
 802              		.thumb
 803              		.thumb_func
 804              		.fpu softvfp
 805              		.type	adc_disable_interrupt, %function
 806              	adc_disable_interrupt:
 807              		@ args = 0, pretend = 0, frame = 0
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809              		@ link register save eliminated.
 810 0000 8162     		str	r1, [r0, #40]
 811 0002 7047     		bx	lr
 812              		.size	adc_disable_interrupt, .-adc_disable_interrupt
 813              		.section	.text.adc_get_status,"ax",%progbits
 814              		.align	1
 815              		.p2align 2,,3
 816              		.global	adc_get_status
 817              		.syntax unified
 818              		.thumb
 819              		.thumb_func
 820              		.fpu softvfp
 821              		.type	adc_get_status, %function
 822              	adc_get_status:
 823              		@ args = 0, pretend = 0, frame = 0
 824              		@ frame_needed = 0, uses_anonymous_args = 0
 825              		@ link register save eliminated.
 826 0000 006B     		ldr	r0, [r0, #48]
 827 0002 7047     		bx	lr
 828              		.size	adc_get_status, .-adc_get_status
 829              		.section	.text.adc_get_overrun_status,"ax",%progbits
 830              		.align	1
 831              		.p2align 2,,3
 832              		.global	adc_get_overrun_status
 833              		.syntax unified
 834              		.thumb
 835              		.thumb_func
 836              		.fpu softvfp
 837              		.type	adc_get_overrun_status, %function
 838              	adc_get_overrun_status:
 839              		@ args = 0, pretend = 0, frame = 0
 840              		@ frame_needed = 0, uses_anonymous_args = 0
 841              		@ link register save eliminated.
 842 0000 C06B     		ldr	r0, [r0, #60]
 843 0002 7047     		bx	lr
 844              		.size	adc_get_overrun_status, .-adc_get_overrun_status
 845              		.section	.text.adc_get_interrupt_mask,"ax",%progbits
 846              		.align	1
 847              		.p2align 2,,3
 848              		.global	adc_get_interrupt_mask
 849              		.syntax unified
 850              		.thumb
 851              		.thumb_func
 852              		.fpu softvfp
 853              		.type	adc_get_interrupt_mask, %function
 854              	adc_get_interrupt_mask:
 855              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKZrmoT.s 			page 16


 856              		@ frame_needed = 0, uses_anonymous_args = 0
 857              		@ link register save eliminated.
 858 0000 C06A     		ldr	r0, [r0, #44]
 859 0002 7047     		bx	lr
 860              		.size	adc_get_interrupt_mask, .-adc_get_interrupt_mask
 861              		.section	.text.adc_set_bias_current,"ax",%progbits
 862              		.align	1
 863              		.p2align 2,,3
 864              		.global	adc_set_bias_current
 865              		.syntax unified
 866              		.thumb
 867              		.thumb_func
 868              		.fpu softvfp
 869              		.type	adc_set_bias_current, %function
 870              	adc_set_bias_current:
 871              		@ args = 0, pretend = 0, frame = 0
 872              		@ frame_needed = 0, uses_anonymous_args = 0
 873              		@ link register save eliminated.
 874 0000 D0F89430 		ldr	r3, [r0, #148]
 875 0004 0902     		lsls	r1, r1, #8
 876 0006 01F44071 		and	r1, r1, #768
 877 000a 1943     		orrs	r1, r1, r3
 878 000c C0F89410 		str	r1, [r0, #148]
 879 0010 7047     		bx	lr
 880              		.size	adc_set_bias_current, .-adc_set_bias_current
 881 0012 00BF     		.section	.text.adc_enable_ts,"ax",%progbits
 882              		.align	1
 883              		.p2align 2,,3
 884              		.global	adc_enable_ts
 885              		.syntax unified
 886              		.thumb
 887              		.thumb_func
 888              		.fpu softvfp
 889              		.type	adc_enable_ts, %function
 890              	adc_enable_ts:
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893              		@ link register save eliminated.
 894 0000 D0F89430 		ldr	r3, [r0, #148]
 895 0004 43F01003 		orr	r3, r3, #16
 896 0008 C0F89430 		str	r3, [r0, #148]
 897 000c 7047     		bx	lr
 898              		.size	adc_enable_ts, .-adc_enable_ts
 899 000e 00BF     		.section	.text.adc_disable_ts,"ax",%progbits
 900              		.align	1
 901              		.p2align 2,,3
 902              		.global	adc_disable_ts
 903              		.syntax unified
 904              		.thumb
 905              		.thumb_func
 906              		.fpu softvfp
 907              		.type	adc_disable_ts, %function
 908              	adc_disable_ts:
 909              		@ args = 0, pretend = 0, frame = 0
 910              		@ frame_needed = 0, uses_anonymous_args = 0
 911              		@ link register save eliminated.
 912 0000 D0F89430 		ldr	r3, [r0, #148]
ARM GAS  /tmp/ccKZrmoT.s 			page 17


 913 0004 23F01003 		bic	r3, r3, #16
 914 0008 C0F89430 		str	r3, [r0, #148]
 915 000c 7047     		bx	lr
 916              		.size	adc_disable_ts, .-adc_disable_ts
 917 000e 00BF     		.section	.text.adc_set_writeprotect,"ax",%progbits
 918              		.align	1
 919              		.p2align 2,,3
 920              		.global	adc_set_writeprotect
 921              		.syntax unified
 922              		.thumb
 923              		.thumb_func
 924              		.fpu softvfp
 925              		.type	adc_set_writeprotect, %function
 926              	adc_set_writeprotect:
 927              		@ args = 0, pretend = 0, frame = 0
 928              		@ frame_needed = 0, uses_anonymous_args = 0
 929              		@ link register save eliminated.
 930 0000 034B     		ldr	r3, .L81
 931 0002 01F00101 		and	r1, r1, #1
 932 0006 0B43     		orrs	r3, r3, r1
 933 0008 C0F8E430 		str	r3, [r0, #228]
 934 000c 7047     		bx	lr
 935              	.L82:
 936 000e 00BF     		.align	2
 937              	.L81:
 938 0010 00434441 		.word	1094992640
 939              		.size	adc_set_writeprotect, .-adc_set_writeprotect
 940              		.section	.text.adc_get_writeprotect_status,"ax",%progbits
 941              		.align	1
 942              		.p2align 2,,3
 943              		.global	adc_get_writeprotect_status
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu softvfp
 948              		.type	adc_get_writeprotect_status, %function
 949              	adc_get_writeprotect_status:
 950              		@ args = 0, pretend = 0, frame = 0
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952              		@ link register save eliminated.
 953 0000 D0F8E830 		ldr	r3, [r0, #232]
 954 0004 13F00100 		ands	r0, r3, #1
 955 0008 18BF     		it	ne
 956 000a C3F30F20 		ubfxne	r0, r3, #8, #16
 957 000e 7047     		bx	lr
 958              		.size	adc_get_writeprotect_status, .-adc_get_writeprotect_status
 959              		.section	.text.adc_check,"ax",%progbits
 960              		.align	1
 961              		.p2align 2,,3
 962              		.global	adc_check
 963              		.syntax unified
 964              		.thumb
 965              		.thumb_func
 966              		.fpu softvfp
 967              		.type	adc_check, %function
 968              	adc_check:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKZrmoT.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971 0000 70B5     		push	{r4, r5, r6, lr}
 972 0002 4468     		ldr	r4, [r0, #4]
 973 0004 0546     		mov	r5, r0
 974 0006 C4F30724 		ubfx	r4, r4, #8, #8
 975 000a 0134     		adds	r4, r4, #1
 976 000c 6400     		lsls	r4, r4, #1
 977 000e B1FBF4F4 		udiv	r4, r1, r4
 978 0012 2A48     		ldr	r0, .L109
 979 0014 2146     		mov	r1, r4
 980 0016 FFF7FEFF 		bl	printf
 981 001a 294B     		ldr	r3, .L109+4
 982 001c 9C42     		cmp	r4, r3
 983 001e 3AD9     		bls	.L105
 984 0020 2849     		ldr	r1, .L109+8
 985 0022 8C42     		cmp	r4, r1
 986 0024 18D8     		bhi	.L106
 987              	.L88:
 988 0026 6E68     		ldr	r6, [r5, #4]
 989 0028 6B68     		ldr	r3, [r5, #4]
 990 002a C6F30346 		ubfx	r6, r6, #16, #4
 991 002e 9806     		lsls	r0, r3, #26
 992 0030 05D5     		bpl	.L104
 993 0032 6B68     		ldr	r3, [r5, #4]
 994 0034 1906     		lsls	r1, r3, #24
 995 0036 39D4     		bmi	.L107
 996 0038 6B68     		ldr	r3, [r5, #4]
 997 003a 5A06     		lsls	r2, r3, #25
 998 003c 10D4     		bmi	.L93
 999              	.L104:
 1000 003e 04EB8401 		add	r1, r4, r4, lsl #2
 1001 0042 214C     		ldr	r4, .L109+12
 1002 0044 C900     		lsls	r1, r1, #3
 1003 0046 A4FB0131 		umull	r3, r1, r4, r1
 1004 004a 3046     		mov	r0, r6
 1005 004c 890C     		lsrs	r1, r1, #18
 1006 004e FFF7FEFF 		bl	calcul_startup
 1007 0052 8142     		cmp	r1, r0
 1008 0054 24D8     		bhi	.L108
 1009              	.L86:
 1010 0056 70BD     		pop	{r4, r5, r6, pc}
 1011              	.L106:
 1012 0058 1C48     		ldr	r0, .L109+16
 1013 005a FFF7FEFF 		bl	printf
 1014 005e E2E7     		b	.L88
 1015              	.L93:
 1016 0060 6B68     		ldr	r3, [r5, #4]
 1017 0062 5B06     		lsls	r3, r3, #25
 1018 0064 F7D5     		bpl	.L86
 1019 0066 3046     		mov	r0, r6
 1020 0068 FFF7FEFF 		bl	calcul_startup
 1021 006c 04EB4403 		add	r3, r4, r4, lsl #1
 1022 0070 154A     		ldr	r2, .L109+12
 1023 0072 9B00     		lsls	r3, r3, #2
 1024 0074 A2FB0313 		umull	r1, r3, r2, r3
 1025 0078 B0EB934F 		cmp	r0, r3, lsr #18
 1026 007c EBD2     		bcs	.L86
ARM GAS  /tmp/ccKZrmoT.s 			page 19


 1027 007e 04EB8401 		add	r1, r4, r4, lsl #2
 1028 0082 C900     		lsls	r1, r1, #3
 1029 0084 A2FB0131 		umull	r3, r1, r2, r1
 1030 0088 BDE87040 		pop	{r4, r5, r6, lr}
 1031 008c 0246     		mov	r2, r0
 1032 008e 890C     		lsrs	r1, r1, #18
 1033 0090 0F48     		ldr	r0, .L109+20
 1034 0092 FFF7FEBF 		b	printf
 1035              	.L105:
 1036 0096 0F49     		ldr	r1, .L109+24
 1037 0098 0F48     		ldr	r0, .L109+28
 1038 009a FFF7FEFF 		bl	printf
 1039 009e C2E7     		b	.L88
 1040              	.L108:
 1041 00a0 0246     		mov	r2, r0
 1042 00a2 BDE87040 		pop	{r4, r5, r6, lr}
 1043 00a6 0A48     		ldr	r0, .L109+20
 1044 00a8 FFF7FEBF 		b	printf
 1045              	.L107:
 1046 00ac 0B48     		ldr	r0, .L109+32
 1047 00ae FFF7FEFF 		bl	puts
 1048 00b2 6B68     		ldr	r3, [r5, #4]
 1049 00b4 5A06     		lsls	r2, r3, #25
 1050 00b6 D3D4     		bmi	.L93
 1051 00b8 C1E7     		b	.L104
 1052              	.L110:
 1053 00ba 00BF     		.align	2
 1054              	.L109:
 1055 00bc 00000000 		.word	.LC0
 1056 00c0 3F420F00 		.word	999999
 1057 00c4 002D3101 		.word	20000000
 1058 00c8 83DE1B43 		.word	1125899907
 1059 00cc 58000000 		.word	.LC2
 1060 00d0 90000000 		.word	.LC3
 1061 00d4 40420F00 		.word	1000000
 1062 00d8 20000000 		.word	.LC1
 1063 00dc C0000000 		.word	.LC4
 1064              		.size	adc_check, .-adc_check
 1065              		.section	.text.adc_get_pdc_base,"ax",%progbits
 1066              		.align	1
 1067              		.p2align 2,,3
 1068              		.global	adc_get_pdc_base
 1069              		.syntax unified
 1070              		.thumb
 1071              		.thumb_func
 1072              		.fpu softvfp
 1073              		.type	adc_get_pdc_base, %function
 1074              	adc_get_pdc_base:
 1075              		@ args = 0, pretend = 0, frame = 0
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077              		@ link register save eliminated.
 1078 0000 0048     		ldr	r0, .L112
 1079 0002 7047     		bx	lr
 1080              	.L113:
 1081              		.align	2
 1082              	.L112:
 1083 0004 00010C40 		.word	1074528512
ARM GAS  /tmp/ccKZrmoT.s 			page 20


 1084              		.size	adc_get_pdc_base, .-adc_get_pdc_base
 1085              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1086              		.align	2
 1087              		.type	cpu_irq_critical_section_counter, %object
 1088              		.size	cpu_irq_critical_section_counter, 4
 1089              	cpu_irq_critical_section_counter:
 1090 0000 00000000 		.space	4
 1091              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1092              		.type	cpu_irq_prev_interrupt_state, %object
 1093              		.size	cpu_irq_prev_interrupt_state, 1
 1094              	cpu_irq_prev_interrupt_state:
 1095 0000 00       		.space	1
 1096              		.section	.rodata.adc_check.str1.4,"aMS",%progbits,1
 1097              		.align	2
 1098              	.LC0:
 1099 0000 41444320 		.ascii	"ADC clock frequency = %d Hz\015\012\000"
 1099      636C6F63 
 1099      6B206672 
 1099      65717565 
 1099      6E637920 
 1100 001e 0000     		.space	2
 1101              	.LC1:
 1102 0020 61646320 		.ascii	"adc frequency too low (out of specification: %d Hz)"
 1102      66726571 
 1102      75656E63 
 1102      7920746F 
 1102      6F206C6F 
 1103 0053 0D0A00   		.ascii	"\015\012\000"
 1104 0056 0000     		.space	2
 1105              	.LC2:
 1106 0058 61646320 		.ascii	"adc frequency too high (out of specification: %d Hz"
 1106      66726571 
 1106      75656E63 
 1106      7920746F 
 1106      6F206869 
 1107 008b 290D0A00 		.ascii	")\015\012\000"
 1108 008f 00       		.space	1
 1109              	.LC3:
 1110 0090 53746172 		.ascii	"Startup time too small: %d, programmed: %d\015\012\000"
 1110      74757020 
 1110      74696D65 
 1110      20746F6F 
 1110      20736D61 
 1111 00bd 000000   		.space	3
 1112              	.LC4:
 1113 00c0 46726565 		.ascii	"FreeRun forbidden in sleep mode\015\000"
 1113      52756E20 
 1113      666F7262 
 1113      69646465 
 1113      6E20696E 
 1114              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
