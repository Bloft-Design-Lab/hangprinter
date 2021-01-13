ARM GAS  /tmp/ccjDYgbi.s 			page 1


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
  13              		.file	"pwm.c"
  14              		.section	.text.pwm_clocks_generate,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	pwm_clocks_generate, %function
  22              	pwm_clocks_generate:
  23              		@ args = 0, pretend = 0, frame = 48
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 F0B4     		push	{r4, r5, r6, r7}
  27 0002 124D     		ldr	r5, .L8
  28 0004 0746     		mov	r7, r0
  29 0006 0E46     		mov	r6, r1
  30 0008 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  31 000a 8CB0     		sub	sp, sp, #48
  32 000c 01AC     		add	r4, sp, #4
  33 000e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  34 0010 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  35 0012 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  36 0014 95E80700 		ldm	r5, {r0, r1, r2}
  37 0018 0023     		movs	r3, #0
  38 001a 84E80700 		stm	r4, {r0, r1, r2}
  39 001e 01AA     		add	r2, sp, #4
  40              	.L3:
  41 0020 52F8040B 		ldr	r0, [r2], #4
  42 0024 B6FBF0F0 		udiv	r0, r6, r0
  43 0028 B0FBF7F0 		udiv	r0, r0, r7
  44 002c B0F5807F 		cmp	r0, #256
  45 0030 07D9     		bls	.L2
  46 0032 0133     		adds	r3, r3, #1
  47 0034 0B2B     		cmp	r3, #11
  48 0036 F3D1     		bne	.L3
  49 0038 4FF6FF70 		movw	r0, #65535
  50 003c 0CB0     		add	sp, sp, #48
  51              		@ sp needed
  52 003e F0BC     		pop	{r4, r5, r6, r7}
  53 0040 7047     		bx	lr
  54              	.L2:
  55 0042 40EA0320 		orr	r0, r0, r3, lsl #8
  56 0046 0CB0     		add	sp, sp, #48
  57              		@ sp needed
ARM GAS  /tmp/ccjDYgbi.s 			page 2


  58 0048 F0BC     		pop	{r4, r5, r6, r7}
  59 004a 7047     		bx	lr
  60              	.L9:
  61              		.align	2
  62              	.L8:
  63 004c 00000000 		.word	.LANCHOR0
  64              		.size	pwm_clocks_generate, .-pwm_clocks_generate
  65              		.section	.text.pwm_init,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	pwm_init
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	pwm_init, %function
  74              	pwm_init:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 70B5     		push	{r4, r5, r6, lr}
  78 0002 0C68     		ldr	r4, [r1]
  79 0004 0D46     		mov	r5, r1
  80 0006 0646     		mov	r6, r0
  81 0008 44B1     		cbz	r4, .L11
  82 000a 2046     		mov	r0, r4
  83 000c 8968     		ldr	r1, [r1, #8]
  84 000e FFF7FEFF 		bl	pwm_clocks_generate
  85 0012 4FF6FF73 		movw	r3, #65535
  86 0016 9842     		cmp	r0, r3
  87 0018 0446     		mov	r4, r0
  88 001a 0CD0     		beq	.L10
  89              	.L11:
  90 001c 6868     		ldr	r0, [r5, #4]
  91 001e 40B1     		cbz	r0, .L13
  92 0020 A968     		ldr	r1, [r5, #8]
  93 0022 FFF7FEFF 		bl	pwm_clocks_generate
  94 0026 4FF6FF73 		movw	r3, #65535
  95 002a 9842     		cmp	r0, r3
  96 002c 05D0     		beq	.L14
  97 002e 44EA0044 		orr	r4, r4, r0, lsl #16
  98              	.L13:
  99 0032 3460     		str	r4, [r6]
 100 0034 0024     		movs	r4, #0
 101              	.L10:
 102 0036 2046     		mov	r0, r4
 103 0038 70BD     		pop	{r4, r5, r6, pc}
 104              	.L14:
 105 003a 0446     		mov	r4, r0
 106 003c FBE7     		b	.L10
 107              		.size	pwm_init, .-pwm_init
 108 003e 00BF     		.section	.text.pwm_channel_init,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.global	pwm_channel_init
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  /tmp/ccjDYgbi.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	pwm_channel_init, %function
 117              	pwm_channel_init:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120 0000 4B68     		ldr	r3, [r1, #4]
 121 0002 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 122 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 123 0006 8F8A     		ldrh	r7, [r1, #20]
 124 0008 0E89     		ldrh	r6, [r1, #8]
 125 000a 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 126 000c CC7D     		ldrb	r4, [r1, #23]	@ zero_extendqisi2
 127 000e 03F00F03 		and	r3, r3, #15
 128 0012 3B43     		orrs	r3, r3, r7
 129 0014 3343     		orrs	r3, r3, r6
 130 0016 43EA4223 		orr	r3, r3, r2, lsl #9
 131 001a 0A68     		ldr	r2, [r1]
 132 001c 0E7E     		ldrb	r6, [r1, #24]	@ zero_extendqisi2
 133 001e CF68     		ldr	r7, [r1, #12]
 134 0020 43EA0543 		orr	r3, r3, r5, lsl #16
 135 0024 43EA4443 		orr	r3, r3, r4, lsl #17
 136 0028 00EB4214 		add	r4, r0, r2, lsl #5
 137 002c 43EA8643 		orr	r3, r3, r6, lsl #18
 138 0030 0E69     		ldr	r6, [r1, #16]
 139 0032 C4F80032 		str	r3, [r4, #512]
 140 0036 C4F80472 		str	r7, [r4, #516]
 141 003a C4F80C62 		str	r6, [r4, #524]
 142 003e 1DB1     		cbz	r5, .L23
 143 0040 D1F81A30 		ldr	r3, [r1, #26]	@ unaligned
 144 0044 C4F81832 		str	r3, [r4, #536]
 145              	.L23:
 146 0048 CF7F     		ldrb	r7, [r1, #31]	@ zero_extendqisi2
 147 004a 8D7F     		ldrb	r5, [r1, #30]	@ zero_extendqisi2
 148 004c 846C     		ldr	r4, [r0, #72]
 149 004e 91F82160 		ldrb	r6, [r1, #33]	@ zero_extendqisi2
 150 0052 4FF00113 		mov	r3, #65537
 151 0056 9340     		lsls	r3, r3, r2
 152 0058 DB43     		mvns	r3, r3
 153 005a 9740     		lsls	r7, r7, r2
 154 005c 9540     		lsls	r5, r5, r2
 155 005e 1C40     		ands	r4, r4, r3
 156 0060 45EA0745 		orr	r5, r5, r7, lsl #16
 157 0064 2543     		orrs	r5, r5, r4
 158 0066 8564     		str	r5, [r0, #72]
 159 0068 91F82040 		ldrb	r4, [r1, #32]	@ zero_extendqisi2
 160 006c D0F844E0 		ldr	lr, [r0, #68]
 161 0070 91F82270 		ldrb	r7, [r1, #34]	@ zero_extendqisi2
 162 0074 06FA02F5 		lsl	r5, r6, r2
 163 0078 9440     		lsls	r4, r4, r2
 164 007a 03EA0E03 		and	r3, r3, lr
 165 007e 44EA0544 		orr	r4, r4, r5, lsl #16
 166 0082 1C43     		orrs	r4, r4, r3
 167 0084 4464     		str	r4, [r0, #68]
 168 0086 0123     		movs	r3, #1
 169 0088 9340     		lsls	r3, r3, r2
 170 008a 046A     		ldr	r4, [r0, #32]
 171 008c 002F     		cmp	r7, #0
ARM GAS  /tmp/ccjDYgbi.s 			page 4


 172 008e 45D0     		beq	.L24
 173 0090 91F82460 		ldrb	r6, [r1, #36]	@ zero_extendqisi2
 174 0094 1C43     		orrs	r4, r4, r3
 175 0096 022E     		cmp	r6, #2
 176 0098 0462     		str	r4, [r0, #32]
 177 009a 46D0     		beq	.L38
 178              	.L26:
 179 009c D0F8C050 		ldr	r5, [r0, #192]
 180 00a0 DC43     		mvns	r4, r3
 181 00a2 2540     		ands	r5, r5, r4
 182 00a4 012E     		cmp	r6, #1
 183 00a6 C0F8C050 		str	r5, [r0, #192]
 184 00aa 0CBF     		ite	eq
 185 00ac 846E     		ldreq	r4, [r0, #104]
 186 00ae 856E     		ldrne	r5, [r0, #104]
 187 00b0 91F82560 		ldrb	r6, [r1, #37]	@ zero_extendqisi2
 188 00b4 0CBF     		ite	eq
 189 00b6 1C43     		orreq	r4, r4, r3
 190 00b8 2C40     		andne	r4, r4, r5
 191 00ba 022E     		cmp	r6, #2
 192 00bc 8466     		str	r4, [r0, #104]
 193 00be 3DD0     		beq	.L39
 194              	.L29:
 195 00c0 D0F8C050 		ldr	r5, [r0, #192]
 196 00c4 1B04     		lsls	r3, r3, #16
 197 00c6 DC43     		mvns	r4, r3
 198 00c8 2540     		ands	r5, r5, r4
 199 00ca 012E     		cmp	r6, #1
 200 00cc C0F8C050 		str	r5, [r0, #192]
 201 00d0 3BD0     		beq	.L40
 202 00d2 836E     		ldr	r3, [r0, #104]
 203 00d4 1C40     		ands	r4, r4, r3
 204 00d6 8466     		str	r4, [r0, #104]
 205              	.L30:
 206 00d8 D600     		lsls	r6, r2, #3
 207 00da C46E     		ldr	r4, [r0, #108]
 208 00dc 91F82330 		ldrb	r3, [r1, #35]	@ zero_extendqisi2
 209 00e0 FF25     		movs	r5, #255
 210 00e2 B540     		lsls	r5, r5, r6
 211 00e4 24EA0504 		bic	r4, r4, r5
 212 00e8 B340     		lsls	r3, r3, r6
 213 00ea 2343     		orrs	r3, r3, r4
 214 00ec C366     		str	r3, [r0, #108]
 215 00ee 52B9     		cbnz	r2, .L32
 216 00f0 91F82C30 		ldrb	r3, [r1, #44]	@ zero_extendqisi2
 217 00f4 012B     		cmp	r3, #1
 218 00f6 8B6A     		ldr	r3, [r1, #40]
 219 00f8 23F07F43 		bic	r3, r3, #-16777216
 220 00fc 08BF     		it	eq
 221 00fe 43F08073 		orreq	r3, r3, #16777216
 222 0102 C0F8A030 		str	r3, [r0, #160]
 223              	.L32:
 224 0106 0B6B     		ldr	r3, [r1, #48]
 225 0108 496B     		ldr	r1, [r1, #52]
 226 010a 2032     		adds	r2, r2, #32
 227 010c 00EB4210 		add	r0, r0, r2, lsl #5
 228 0110 23F07F43 		bic	r3, r3, #-16777216
ARM GAS  /tmp/ccjDYgbi.s 			page 5


 229 0114 0B43     		orrs	r3, r3, r1
 230 0116 4360     		str	r3, [r0, #4]
 231 0118 0020     		movs	r0, #0
 232 011a F0BD     		pop	{r4, r5, r6, r7, pc}
 233              	.L24:
 234 011c 91F82460 		ldrb	r6, [r1, #36]	@ zero_extendqisi2
 235 0120 24EA0304 		bic	r4, r4, r3
 236 0124 022E     		cmp	r6, #2
 237 0126 0462     		str	r4, [r0, #32]
 238 0128 B8D1     		bne	.L26
 239              	.L38:
 240 012a D0F8C040 		ldr	r4, [r0, #192]
 241 012e 91F82560 		ldrb	r6, [r1, #37]	@ zero_extendqisi2
 242 0132 1C43     		orrs	r4, r4, r3
 243 0134 022E     		cmp	r6, #2
 244 0136 C0F8C040 		str	r4, [r0, #192]
 245 013a C1D1     		bne	.L29
 246              	.L39:
 247 013c D0F8C040 		ldr	r4, [r0, #192]
 248 0140 44EA0343 		orr	r3, r4, r3, lsl #16
 249 0144 C0F8C030 		str	r3, [r0, #192]
 250 0148 C6E7     		b	.L30
 251              	.L40:
 252 014a 846E     		ldr	r4, [r0, #104]
 253 014c 2343     		orrs	r3, r3, r4
 254 014e 8366     		str	r3, [r0, #104]
 255 0150 C2E7     		b	.L30
 256              		.size	pwm_channel_init, .-pwm_channel_init
 257 0152 00BF     		.section	.text.pwm_channel_update_period,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	pwm_channel_update_period
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	pwm_channel_update_period, %function
 266              	pwm_channel_update_period:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              		@ link register save eliminated.
 270 0000 CB68     		ldr	r3, [r1, #12]
 271 0002 9342     		cmp	r3, r2
 272 0004 02D9     		bls	.L44
 273 0006 4FF6FF70 		movw	r0, #65535
 274 000a 7047     		bx	lr
 275              	.L44:
 276 000c 0B68     		ldr	r3, [r1]
 277 000e 0A61     		str	r2, [r1, #16]
 278 0010 00EB4313 		add	r3, r0, r3, lsl #5
 279 0014 0020     		movs	r0, #0
 280 0016 C3F81022 		str	r2, [r3, #528]
 281 001a 7047     		bx	lr
 282              		.size	pwm_channel_update_period, .-pwm_channel_update_period
 283              		.section	.text.pwm_channel_update_duty,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  /tmp/ccjDYgbi.s 			page 6


 286              		.global	pwm_channel_update_duty
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	pwm_channel_update_duty, %function
 292              	pwm_channel_update_duty:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296 0000 0B69     		ldr	r3, [r1, #16]
 297 0002 9342     		cmp	r3, r2
 298 0004 02D2     		bcs	.L48
 299 0006 4FF6FF70 		movw	r0, #65535
 300 000a 7047     		bx	lr
 301              	.L48:
 302 000c 0B68     		ldr	r3, [r1]
 303 000e CA60     		str	r2, [r1, #12]
 304 0010 00EB4313 		add	r3, r0, r3, lsl #5
 305 0014 0020     		movs	r0, #0
 306 0016 C3F80822 		str	r2, [r3, #520]
 307 001a 7047     		bx	lr
 308              		.size	pwm_channel_update_duty, .-pwm_channel_update_duty
 309              		.section	.text.pwm_channel_get_counter,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	pwm_channel_get_counter
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	pwm_channel_get_counter, %function
 318              	pwm_channel_get_counter:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 322 0000 0B68     		ldr	r3, [r1]
 323 0002 00EB4310 		add	r0, r0, r3, lsl #5
 324 0006 D0F81402 		ldr	r0, [r0, #532]
 325 000a 7047     		bx	lr
 326              		.size	pwm_channel_get_counter, .-pwm_channel_get_counter
 327              		.section	.text.pwm_channel_enable,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.global	pwm_channel_enable
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	pwm_channel_enable, %function
 336              	pwm_channel_enable:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 0123     		movs	r3, #1
 341 0002 03FA01F1 		lsl	r1, r3, r1
 342 0006 4160     		str	r1, [r0, #4]
ARM GAS  /tmp/ccjDYgbi.s 			page 7


 343 0008 7047     		bx	lr
 344              		.size	pwm_channel_enable, .-pwm_channel_enable
 345 000a 00BF     		.section	.text.pwm_channel_disable,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	pwm_channel_disable
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	pwm_channel_disable, %function
 354              	pwm_channel_disable:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 0123     		movs	r3, #1
 359 0002 03FA01F1 		lsl	r1, r3, r1
 360 0006 8160     		str	r1, [r0, #8]
 361 0008 7047     		bx	lr
 362              		.size	pwm_channel_disable, .-pwm_channel_disable
 363 000a 00BF     		.section	.text.pwm_channel_get_status,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	pwm_channel_get_status
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv4-sp-d16
 371              		.type	pwm_channel_get_status, %function
 372              	pwm_channel_get_status:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 C068     		ldr	r0, [r0, #12]
 377 0002 7047     		bx	lr
 378              		.size	pwm_channel_get_status, .-pwm_channel_get_status
 379              		.section	.text.pwm_channel_get_interrupt_status,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	pwm_channel_get_interrupt_status
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu fpv4-sp-d16
 387              		.type	pwm_channel_get_interrupt_status, %function
 388              	pwm_channel_get_interrupt_status:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391              		@ link register save eliminated.
 392 0000 C069     		ldr	r0, [r0, #28]
 393 0002 7047     		bx	lr
 394              		.size	pwm_channel_get_interrupt_status, .-pwm_channel_get_interrupt_status
 395              		.section	.text.pwm_channel_get_interrupt_mask,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	pwm_channel_get_interrupt_mask
 399              		.syntax unified
ARM GAS  /tmp/ccjDYgbi.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv4-sp-d16
 403              		.type	pwm_channel_get_interrupt_mask, %function
 404              	pwm_channel_get_interrupt_mask:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 8069     		ldr	r0, [r0, #24]
 409 0002 7047     		bx	lr
 410              		.size	pwm_channel_get_interrupt_mask, .-pwm_channel_get_interrupt_mask
 411              		.section	.text.pwm_channel_enable_interrupt,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	pwm_channel_enable_interrupt
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	pwm_channel_enable_interrupt, %function
 420              	pwm_channel_enable_interrupt:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423              		@ link register save eliminated.
 424 0000 0123     		movs	r3, #1
 425 0002 1032     		adds	r2, r2, #16
 426 0004 03FA02F2 		lsl	r2, r3, r2
 427 0008 03FA01F1 		lsl	r1, r3, r1
 428 000c 0A43     		orrs	r2, r2, r1
 429 000e 0261     		str	r2, [r0, #16]
 430 0010 7047     		bx	lr
 431              		.size	pwm_channel_enable_interrupt, .-pwm_channel_enable_interrupt
 432 0012 00BF     		.section	.text.pwm_channel_disable_interrupt,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	pwm_channel_disable_interrupt
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	pwm_channel_disable_interrupt, %function
 441              	pwm_channel_disable_interrupt:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 0123     		movs	r3, #1
 446 0002 1032     		adds	r2, r2, #16
 447 0004 03FA02F2 		lsl	r2, r3, r2
 448 0008 03FA01F1 		lsl	r1, r3, r1
 449 000c 0A43     		orrs	r2, r2, r1
 450 000e 4261     		str	r2, [r0, #20]
 451 0010 7047     		bx	lr
 452              		.size	pwm_channel_disable_interrupt, .-pwm_channel_disable_interrupt
 453 0012 00BF     		.section	.text.pwm_channel_update_output,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	pwm_channel_update_output
ARM GAS  /tmp/ccjDYgbi.s 			page 9


 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu fpv4-sp-d16
 461              		.type	pwm_channel_update_output, %function
 462              	pwm_channel_update_output:
 463              		@ args = 0, pretend = 0, frame = 0
 464              		@ frame_needed = 0, uses_anonymous_args = 0
 465 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 466 0002 0C68     		ldr	r4, [r1]
 467 0004 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 468 0008 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 469 000c 466C     		ldr	r6, [r0, #68]
 470 000e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
 471 0010 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 472 0012 CA77     		strb	r2, [r1, #31]
 473 0014 4FF00117 		mov	r7, #65537
 474 0018 A740     		lsls	r7, r7, r4
 475 001a 26EA0707 		bic	r7, r6, r7
 476 001e 4CEA0E46 		orr	r6, ip, lr, lsl #16
 477 0022 A640     		lsls	r6, r6, r4
 478 0024 3E43     		orrs	r6, r6, r7
 479 0026 81F820C0 		strb	ip, [r1, #32]
 480 002a 8D77     		strb	r5, [r1, #30]
 481 002c 81F821E0 		strb	lr, [r1, #33]
 482 0030 4664     		str	r6, [r0, #68]
 483 0032 82F00101 		eor	r1, r2, #1
 484 0036 6BB9     		cbnz	r3, .L61
 485 0038 85F00103 		eor	r3, r5, #1
 486 003c A140     		lsls	r1, r1, r4
 487 003e A240     		lsls	r2, r2, r4
 488 0040 A340     		lsls	r3, r3, r4
 489 0042 05FA04F4 		lsl	r4, r5, r4
 490 0046 43EA0143 		orr	r3, r3, r1, lsl #16
 491 004a 44EA0244 		orr	r4, r4, r2, lsl #16
 492 004e C464     		str	r4, [r0, #76]
 493 0050 0365     		str	r3, [r0, #80]
 494 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 495              	.L61:
 496 0054 85F00103 		eor	r3, r5, #1
 497 0058 A140     		lsls	r1, r1, r4
 498 005a A240     		lsls	r2, r2, r4
 499 005c A340     		lsls	r3, r3, r4
 500 005e 05FA04F4 		lsl	r4, r5, r4
 501 0062 43EA0143 		orr	r3, r3, r1, lsl #16
 502 0066 44EA0244 		orr	r4, r4, r2, lsl #16
 503 006a 4465     		str	r4, [r0, #84]
 504 006c 8365     		str	r3, [r0, #88]
 505 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 506              		.size	pwm_channel_update_output, .-pwm_channel_update_output
 507              		.section	.text.pwm_channel_update_dead_time,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	pwm_channel_update_dead_time
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  /tmp/ccjDYgbi.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	pwm_channel_update_dead_time, %function
 516              	pwm_channel_update_dead_time:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 10B4     		push	{r4}
 521 0002 0C68     		ldr	r4, [r1]
 522 0004 4A83     		strh	r2, [r1, #26]	@ movhi
 523 0006 00EB4410 		add	r0, r0, r4, lsl #5
 524 000a 42EA0342 		orr	r2, r2, r3, lsl #16
 525 000e 8B83     		strh	r3, [r1, #28]	@ movhi
 526 0010 5DF8044B 		ldr	r4, [sp], #4
 527 0014 C0F81C22 		str	r2, [r0, #540]
 528 0018 7047     		bx	lr
 529              		.size	pwm_channel_update_dead_time, .-pwm_channel_update_dead_time
 530 001a 00BF     		.section	.text.pwm_fault_init,"ax",%progbits
 531              		.align	1
 532              		.p2align 2,,3
 533              		.global	pwm_fault_init
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu fpv4-sp-d16
 538              		.type	pwm_fault_init, %function
 539              	pwm_fault_init:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 543 0000 10B4     		push	{r4}
 544 0002 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 545 0004 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 546 0006 C36D     		ldr	r3, [r0, #92]
 547 0008 012C     		cmp	r4, #1
 548 000a 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 549 000c 0CBF     		ite	eq
 550 000e 1343     		orreq	r3, r3, r2
 551 0010 9343     		bicne	r3, r3, r2
 552 0012 54B1     		cbz	r4, .L67
 553 0014 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 554 0016 43EA0223 		orr	r3, r3, r2, lsl #8
 555 001a 59B9     		cbnz	r1, .L72
 556              	.L69:
 557 001c 23EA0243 		bic	r3, r3, r2, lsl #16
 558 0020 C365     		str	r3, [r0, #92]
 559 0022 5DF8044B 		ldr	r4, [sp], #4
 560 0026 0020     		movs	r0, #0
 561 0028 7047     		bx	lr
 562              	.L67:
 563 002a C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 564 002c 23EA0223 		bic	r3, r3, r2, lsl #8
 565 0030 0029     		cmp	r1, #0
 566 0032 F3D0     		beq	.L69
 567              	.L72:
 568 0034 43EA0243 		orr	r3, r3, r2, lsl #16
 569 0038 C365     		str	r3, [r0, #92]
 570 003a 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  /tmp/ccjDYgbi.s 			page 11


 571 003e 0020     		movs	r0, #0
 572 0040 7047     		bx	lr
 573              		.size	pwm_fault_init, .-pwm_fault_init
 574 0042 00BF     		.section	.text.pwm_fault_get_status,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.global	pwm_fault_get_status
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv4-sp-d16
 582              		.type	pwm_fault_get_status, %function
 583              	pwm_fault_get_status:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586              		@ link register save eliminated.
 587 0000 006E     		ldr	r0, [r0, #96]
 588 0002 C0F30720 		ubfx	r0, r0, #8, #8
 589 0006 7047     		bx	lr
 590              		.size	pwm_fault_get_status, .-pwm_fault_get_status
 591              		.section	.text.pwm_fault_get_input_level,"ax",%progbits
 592              		.align	1
 593              		.p2align 2,,3
 594              		.global	pwm_fault_get_input_level
 595              		.syntax unified
 596              		.thumb
 597              		.thumb_func
 598              		.fpu fpv4-sp-d16
 599              		.type	pwm_fault_get_input_level, %function
 600              	pwm_fault_get_input_level:
 601              		@ args = 0, pretend = 0, frame = 0
 602              		@ frame_needed = 0, uses_anonymous_args = 0
 603              		@ link register save eliminated.
 604 0000 006E     		ldr	r0, [r0, #96]
 605 0002 C840     		lsrs	r0, r0, r1
 606 0004 00F00100 		and	r0, r0, #1
 607 0008 7047     		bx	lr
 608              		.size	pwm_fault_get_input_level, .-pwm_fault_get_input_level
 609 000a 00BF     		.section	.text.pwm_fault_clear_status,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	pwm_fault_clear_status
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu fpv4-sp-d16
 617              		.type	pwm_fault_clear_status, %function
 618              	pwm_fault_clear_status:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              		@ link register save eliminated.
 622 0000 4166     		str	r1, [r0, #100]
 623 0002 7047     		bx	lr
 624              		.size	pwm_fault_clear_status, .-pwm_fault_clear_status
 625              		.section	.text.pwm_cmp_init,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  /tmp/ccjDYgbi.s 			page 12


 628              		.global	pwm_cmp_init
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu fpv4-sp-d16
 633              		.type	pwm_cmp_init, %function
 634              	pwm_cmp_init:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 638 0002 0A68     		ldr	r2, [r1]
 639 0004 0B69     		ldr	r3, [r1, #16]
 640 0006 4E69     		ldr	r6, [r1, #20]
 641 0008 8C68     		ldr	r4, [r1, #8]
 642 000a 8D69     		ldr	r5, [r1, #24]
 643 000c 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 644 000e 1B01     		lsls	r3, r3, #4
 645 0010 3602     		lsls	r6, r6, #8
 646 0012 02F1130E 		add	lr, r2, #19
 647 0016 06F47066 		and	r6, r6, #3840
 648 001a DBB2     		uxtb	r3, r3
 649 001c 2D04     		lsls	r5, r5, #16
 650 001e 4FEA0E1E 		lsl	lr, lr, #4
 651 0022 24F07F44 		bic	r4, r4, #-16777216
 652 0026 3343     		orrs	r3, r3, r6
 653 0028 05F47025 		and	r5, r5, #983040
 654 002c 44EA0764 		orr	r4, r4, r7, lsl #24
 655 0030 1601     		lsls	r6, r2, #4
 656 0032 2B43     		orrs	r3, r3, r5
 657 0034 40F80E40 		str	r4, [r0, lr]
 658 0038 8519     		adds	r5, r0, r6
 659 003a 0C7F     		ldrb	r4, [r1, #28]	@ zero_extendqisi2
 660 003c C5F83831 		str	r3, [r5, #312]
 661 0040 BCB1     		cbz	r4, .L77
 662 0042 C36F     		ldr	r3, [r0, #124]
 663 0044 0124     		movs	r4, #1
 664 0046 04FA02F2 		lsl	r2, r4, r2
 665 004a 1343     		orrs	r3, r3, r2
 666 004c C367     		str	r3, [r0, #124]
 667 004e 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 668 0050 CBB1     		cbz	r3, .L79
 669              	.L85:
 670 0052 D0F88030 		ldr	r3, [r0, #128]
 671 0056 1A43     		orrs	r2, r2, r3
 672 0058 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 673 005a C0F88020 		str	r2, [r0, #128]
 674 005e 3044     		add	r0, r0, r6
 675 0060 DBB9     		cbnz	r3, .L84
 676              	.L81:
 677 0062 D0F83831 		ldr	r3, [r0, #312]
 678 0066 23F00103 		bic	r3, r3, #1
 679 006a C0F83831 		str	r3, [r0, #312]
 680 006e 0020     		movs	r0, #0
 681 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 682              	.L77:
 683 0072 C36F     		ldr	r3, [r0, #124]
 684 0074 0124     		movs	r4, #1
ARM GAS  /tmp/ccjDYgbi.s 			page 13


 685 0076 04FA02F2 		lsl	r2, r4, r2
 686 007a 23EA0203 		bic	r3, r3, r2
 687 007e C367     		str	r3, [r0, #124]
 688 0080 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 689 0082 002B     		cmp	r3, #0
 690 0084 E5D1     		bne	.L85
 691              	.L79:
 692 0086 D0F88030 		ldr	r3, [r0, #128]
 693 008a 23EA0202 		bic	r2, r3, r2
 694 008e 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 695 0090 C0F88020 		str	r2, [r0, #128]
 696 0094 3044     		add	r0, r0, r6
 697 0096 002B     		cmp	r3, #0
 698 0098 E3D0     		beq	.L81
 699              	.L84:
 700 009a D0F83831 		ldr	r3, [r0, #312]
 701 009e 43F00103 		orr	r3, r3, #1
 702 00a2 C0F83831 		str	r3, [r0, #312]
 703 00a6 0020     		movs	r0, #0
 704 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 705              		.size	pwm_cmp_init, .-pwm_cmp_init
 706 00aa 00BF     		.section	.text.pwm_cmp_change_setting,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	pwm_cmp_change_setting
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu fpv4-sp-d16
 714              		.type	pwm_cmp_change_setting, %function
 715              	pwm_cmp_change_setting:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 F0B4     		push	{r4, r5, r6, r7}
 720 0002 0B69     		ldr	r3, [r1, #16]
 721 0004 4E69     		ldr	r6, [r1, #20]
 722 0006 0A68     		ldr	r2, [r1]
 723 0008 8D69     		ldr	r5, [r1, #24]
 724 000a 8C68     		ldr	r4, [r1, #8]
 725 000c 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 726 000e 1B01     		lsls	r3, r3, #4
 727 0010 3602     		lsls	r6, r6, #8
 728 0012 06F47066 		and	r6, r6, #3840
 729 0016 DBB2     		uxtb	r3, r3
 730 0018 3343     		orrs	r3, r3, r6
 731 001a 2D04     		lsls	r5, r5, #16
 732 001c 02F11306 		add	r6, r2, #19
 733 0020 05F47025 		and	r5, r5, #983040
 734 0024 24F07F44 		bic	r4, r4, #-16777216
 735 0028 00EB0616 		add	r6, r0, r6, lsl #4
 736 002c 44EA0764 		orr	r4, r4, r7, lsl #24
 737 0030 2B43     		orrs	r3, r3, r5
 738 0032 1501     		lsls	r5, r2, #4
 739 0034 7460     		str	r4, [r6, #4]
 740 0036 4719     		adds	r7, r0, r5
 741 0038 0C7F     		ldrb	r4, [r1, #28]	@ zero_extendqisi2
ARM GAS  /tmp/ccjDYgbi.s 			page 14


 742 003a C7F83C31 		str	r3, [r7, #316]
 743 003e C4B1     		cbz	r4, .L87
 744 0040 C36F     		ldr	r3, [r0, #124]
 745 0042 0124     		movs	r4, #1
 746 0044 04FA02F2 		lsl	r2, r4, r2
 747 0048 1343     		orrs	r3, r3, r2
 748 004a C367     		str	r3, [r0, #124]
 749 004c 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 750 004e D3B1     		cbz	r3, .L89
 751              	.L95:
 752 0050 D0F88030 		ldr	r3, [r0, #128]
 753 0054 1A43     		orrs	r2, r2, r3
 754 0056 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 755 0058 C0F88020 		str	r2, [r0, #128]
 756 005c 2844     		add	r0, r0, r5
 757 005e E3B9     		cbnz	r3, .L94
 758              	.L91:
 759 0060 D0F83C31 		ldr	r3, [r0, #316]
 760 0064 23F00103 		bic	r3, r3, #1
 761 0068 C0F83C31 		str	r3, [r0, #316]
 762 006c F0BC     		pop	{r4, r5, r6, r7}
 763 006e 0020     		movs	r0, #0
 764 0070 7047     		bx	lr
 765              	.L87:
 766 0072 C36F     		ldr	r3, [r0, #124]
 767 0074 0124     		movs	r4, #1
 768 0076 04FA02F2 		lsl	r2, r4, r2
 769 007a 23EA0203 		bic	r3, r3, r2
 770 007e C367     		str	r3, [r0, #124]
 771 0080 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 772 0082 002B     		cmp	r3, #0
 773 0084 E4D1     		bne	.L95
 774              	.L89:
 775 0086 D0F88030 		ldr	r3, [r0, #128]
 776 008a 23EA0202 		bic	r2, r3, r2
 777 008e 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 778 0090 C0F88020 		str	r2, [r0, #128]
 779 0094 2844     		add	r0, r0, r5
 780 0096 002B     		cmp	r3, #0
 781 0098 E2D0     		beq	.L91
 782              	.L94:
 783 009a D0F83C31 		ldr	r3, [r0, #316]
 784 009e 43F00103 		orr	r3, r3, #1
 785 00a2 C0F83C31 		str	r3, [r0, #316]
 786 00a6 F0BC     		pop	{r4, r5, r6, r7}
 787 00a8 0020     		movs	r0, #0
 788 00aa 7047     		bx	lr
 789              		.size	pwm_cmp_change_setting, .-pwm_cmp_change_setting
 790              		.section	.text.pwm_cmp_get_period_counter,"ax",%progbits
 791              		.align	1
 792              		.p2align 2,,3
 793              		.global	pwm_cmp_get_period_counter
 794              		.syntax unified
 795              		.thumb
 796              		.thumb_func
 797              		.fpu fpv4-sp-d16
 798              		.type	pwm_cmp_get_period_counter, %function
ARM GAS  /tmp/ccjDYgbi.s 			page 15


 799              	pwm_cmp_get_period_counter:
 800              		@ args = 0, pretend = 0, frame = 0
 801              		@ frame_needed = 0, uses_anonymous_args = 0
 802              		@ link register save eliminated.
 803 0000 00EB0111 		add	r1, r0, r1, lsl #4
 804 0004 D1F83801 		ldr	r0, [r1, #312]
 805 0008 00F00F00 		and	r0, r0, #15
 806 000c 7047     		bx	lr
 807              		.size	pwm_cmp_get_period_counter, .-pwm_cmp_get_period_counter
 808 000e 00BF     		.section	.text.pwm_cmp_get_update_counter,"ax",%progbits
 809              		.align	1
 810              		.p2align 2,,3
 811              		.global	pwm_cmp_get_update_counter
 812              		.syntax unified
 813              		.thumb
 814              		.thumb_func
 815              		.fpu fpv4-sp-d16
 816              		.type	pwm_cmp_get_update_counter, %function
 817              	pwm_cmp_get_update_counter:
 818              		@ args = 0, pretend = 0, frame = 0
 819              		@ frame_needed = 0, uses_anonymous_args = 0
 820              		@ link register save eliminated.
 821 0000 00EB0111 		add	r1, r0, r1, lsl #4
 822 0004 D1F83801 		ldr	r0, [r1, #312]
 823 0008 00F00F00 		and	r0, r0, #15
 824 000c 7047     		bx	lr
 825              		.size	pwm_cmp_get_update_counter, .-pwm_cmp_get_update_counter
 826 000e 00BF     		.section	.text.pwm_cmp_enable_interrupt,"ax",%progbits
 827              		.align	1
 828              		.p2align 2,,3
 829              		.global	pwm_cmp_enable_interrupt
 830              		.syntax unified
 831              		.thumb
 832              		.thumb_func
 833              		.fpu fpv4-sp-d16
 834              		.type	pwm_cmp_enable_interrupt, %function
 835              	pwm_cmp_enable_interrupt:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838              		@ link register save eliminated.
 839 0000 082A     		cmp	r2, #8
 840 0002 08D0     		beq	.L101
 841 0004 102A     		cmp	r2, #16
 842 0006 00D0     		beq	.L102
 843 0008 7047     		bx	lr
 844              	.L102:
 845 000a 4FF48033 		mov	r3, #65536
 846 000e 03FA01F1 		lsl	r1, r3, r1
 847 0012 4163     		str	r1, [r0, #52]
 848 0014 7047     		bx	lr
 849              	.L101:
 850 0016 4FF48073 		mov	r3, #256
 851 001a 03FA01F1 		lsl	r1, r3, r1
 852 001e 4163     		str	r1, [r0, #52]
 853 0020 7047     		bx	lr
 854              		.size	pwm_cmp_enable_interrupt, .-pwm_cmp_enable_interrupt
 855 0022 00BF     		.section	.text.pwm_cmp_disable_interrupt,"ax",%progbits
ARM GAS  /tmp/ccjDYgbi.s 			page 16


 856              		.align	1
 857              		.p2align 2,,3
 858              		.global	pwm_cmp_disable_interrupt
 859              		.syntax unified
 860              		.thumb
 861              		.thumb_func
 862              		.fpu fpv4-sp-d16
 863              		.type	pwm_cmp_disable_interrupt, %function
 864              	pwm_cmp_disable_interrupt:
 865              		@ args = 0, pretend = 0, frame = 0
 866              		@ frame_needed = 0, uses_anonymous_args = 0
 867              		@ link register save eliminated.
 868 0000 082A     		cmp	r2, #8
 869 0002 08D0     		beq	.L106
 870 0004 102A     		cmp	r2, #16
 871 0006 00D0     		beq	.L107
 872 0008 7047     		bx	lr
 873              	.L107:
 874 000a 4FF48033 		mov	r3, #65536
 875 000e 03FA01F1 		lsl	r1, r3, r1
 876 0012 8163     		str	r1, [r0, #56]
 877 0014 7047     		bx	lr
 878              	.L106:
 879 0016 4FF48073 		mov	r3, #256
 880 001a 03FA01F1 		lsl	r1, r3, r1
 881 001e 8163     		str	r1, [r0, #56]
 882 0020 7047     		bx	lr
 883              		.size	pwm_cmp_disable_interrupt, .-pwm_cmp_disable_interrupt
 884 0022 00BF     		.section	.text.pwm_pdc_set_request_mode,"ax",%progbits
 885              		.align	1
 886              		.p2align 2,,3
 887              		.global	pwm_pdc_set_request_mode
 888              		.syntax unified
 889              		.thumb
 890              		.thumb_func
 891              		.fpu fpv4-sp-d16
 892              		.type	pwm_pdc_set_request_mode, %function
 893              	pwm_pdc_set_request_mode:
 894              		@ args = 0, pretend = 0, frame = 0
 895              		@ frame_needed = 0, uses_anonymous_args = 0
 896              		@ link register save eliminated.
 897 0000 036A     		ldr	r3, [r0, #32]
 898 0002 5205     		lsls	r2, r2, #21
 899 0004 02F46002 		and	r2, r2, #14680064
 900 0008 0A43     		orrs	r2, r2, r1
 901 000a 23F47003 		bic	r3, r3, #15728640
 902 000e 1A43     		orrs	r2, r2, r3
 903 0010 0262     		str	r2, [r0, #32]
 904 0012 7047     		bx	lr
 905              		.size	pwm_pdc_set_request_mode, .-pwm_pdc_set_request_mode
 906              		.section	.text.pwm_pdc_enable_interrupt,"ax",%progbits
 907              		.align	1
 908              		.p2align 2,,3
 909              		.global	pwm_pdc_enable_interrupt
 910              		.syntax unified
 911              		.thumb
 912              		.thumb_func
ARM GAS  /tmp/ccjDYgbi.s 			page 17


 913              		.fpu fpv4-sp-d16
 914              		.type	pwm_pdc_enable_interrupt, %function
 915              	pwm_pdc_enable_interrupt:
 916              		@ args = 0, pretend = 0, frame = 0
 917              		@ frame_needed = 0, uses_anonymous_args = 0
 918              		@ link register save eliminated.
 919 0000 4163     		str	r1, [r0, #52]
 920 0002 7047     		bx	lr
 921              		.size	pwm_pdc_enable_interrupt, .-pwm_pdc_enable_interrupt
 922              		.section	.text.pwm_pdc_disable_interrupt,"ax",%progbits
 923              		.align	1
 924              		.p2align 2,,3
 925              		.global	pwm_pdc_disable_interrupt
 926              		.syntax unified
 927              		.thumb
 928              		.thumb_func
 929              		.fpu fpv4-sp-d16
 930              		.type	pwm_pdc_disable_interrupt, %function
 931              	pwm_pdc_disable_interrupt:
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934              		@ link register save eliminated.
 935 0000 8163     		str	r1, [r0, #56]
 936 0002 7047     		bx	lr
 937              		.size	pwm_pdc_disable_interrupt, .-pwm_pdc_disable_interrupt
 938              		.section	.text.pwm_sync_init,"ax",%progbits
 939              		.align	1
 940              		.p2align 2,,3
 941              		.global	pwm_sync_init
 942              		.syntax unified
 943              		.thumb
 944              		.thumb_func
 945              		.fpu fpv4-sp-d16
 946              		.type	pwm_sync_init, %function
 947              	pwm_sync_init:
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950              		@ link register save eliminated.
 951 0000 036A     		ldr	r3, [r0, #32]
 952 0002 10B4     		push	{r4}
 953 0004 23F44033 		bic	r3, r3, #196608
 954 0008 0446     		mov	r4, r0
 955 000a 02F00F02 		and	r2, r2, #15
 956 000e 1943     		orrs	r1, r1, r3
 957 0010 0162     		str	r1, [r0, #32]
 958 0012 0020     		movs	r0, #0
 959 0014 E262     		str	r2, [r4, #44]
 960 0016 5DF8044B 		ldr	r4, [sp], #4
 961 001a 7047     		bx	lr
 962              		.size	pwm_sync_init, .-pwm_sync_init
 963              		.section	.text.pwm_sync_unlock_update,"ax",%progbits
 964              		.align	1
 965              		.p2align 2,,3
 966              		.global	pwm_sync_unlock_update
 967              		.syntax unified
 968              		.thumb
 969              		.thumb_func
ARM GAS  /tmp/ccjDYgbi.s 			page 18


 970              		.fpu fpv4-sp-d16
 971              		.type	pwm_sync_unlock_update, %function
 972              	pwm_sync_unlock_update:
 973              		@ args = 0, pretend = 0, frame = 0
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975              		@ link register save eliminated.
 976 0000 0123     		movs	r3, #1
 977 0002 8362     		str	r3, [r0, #40]
 978 0004 7047     		bx	lr
 979              		.size	pwm_sync_unlock_update, .-pwm_sync_unlock_update
 980 0006 00BF     		.section	.text.pwm_sync_change_period,"ax",%progbits
 981              		.align	1
 982              		.p2align 2,,3
 983              		.global	pwm_sync_change_period
 984              		.syntax unified
 985              		.thumb
 986              		.thumb_func
 987              		.fpu fpv4-sp-d16
 988              		.type	pwm_sync_change_period, %function
 989              	pwm_sync_change_period:
 990              		@ args = 0, pretend = 0, frame = 0
 991              		@ frame_needed = 0, uses_anonymous_args = 0
 992              		@ link register save eliminated.
 993 0000 01F00F01 		and	r1, r1, #15
 994 0004 0163     		str	r1, [r0, #48]
 995 0006 7047     		bx	lr
 996              		.size	pwm_sync_change_period, .-pwm_sync_change_period
 997              		.section	.text.pwm_sync_get_period_counter,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	pwm_sync_get_period_counter
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu fpv4-sp-d16
 1005              		.type	pwm_sync_get_period_counter, %function
 1006              	pwm_sync_get_period_counter:
 1007              		@ args = 0, pretend = 0, frame = 0
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009              		@ link register save eliminated.
 1010 0000 C06A     		ldr	r0, [r0, #44]
 1011 0002 0001     		lsls	r0, r0, #4
 1012 0004 00F0F000 		and	r0, r0, #240
 1013 0008 7047     		bx	lr
 1014              		.size	pwm_sync_get_period_counter, .-pwm_sync_get_period_counter
 1015 000a 00BF     		.section	.text.pwm_sync_enable_interrupt,"ax",%progbits
 1016              		.align	1
 1017              		.p2align 2,,3
 1018              		.global	pwm_sync_enable_interrupt
 1019              		.syntax unified
 1020              		.thumb
 1021              		.thumb_func
 1022              		.fpu fpv4-sp-d16
 1023              		.type	pwm_sync_enable_interrupt, %function
 1024              	pwm_sync_enable_interrupt:
 1025              		@ args = 0, pretend = 0, frame = 0
 1026              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccjDYgbi.s 			page 19


 1027              		@ link register save eliminated.
 1028 0000 4163     		str	r1, [r0, #52]
 1029 0002 7047     		bx	lr
 1030              		.size	pwm_sync_enable_interrupt, .-pwm_sync_enable_interrupt
 1031              		.section	.text.pwm_sync_disable_interrupt,"ax",%progbits
 1032              		.align	1
 1033              		.p2align 2,,3
 1034              		.global	pwm_sync_disable_interrupt
 1035              		.syntax unified
 1036              		.thumb
 1037              		.thumb_func
 1038              		.fpu fpv4-sp-d16
 1039              		.type	pwm_sync_disable_interrupt, %function
 1040              	pwm_sync_disable_interrupt:
 1041              		@ args = 0, pretend = 0, frame = 0
 1042              		@ frame_needed = 0, uses_anonymous_args = 0
 1043              		@ link register save eliminated.
 1044 0000 8163     		str	r1, [r0, #56]
 1045 0002 7047     		bx	lr
 1046              		.size	pwm_sync_disable_interrupt, .-pwm_sync_disable_interrupt
 1047              		.section	.text.pwm_enable_protect,"ax",%progbits
 1048              		.align	1
 1049              		.p2align 2,,3
 1050              		.global	pwm_enable_protect
 1051              		.syntax unified
 1052              		.thumb
 1053              		.thumb_func
 1054              		.fpu fpv4-sp-d16
 1055              		.type	pwm_enable_protect, %function
 1056              	pwm_enable_protect:
 1057              		@ args = 0, pretend = 0, frame = 0
 1058              		@ frame_needed = 0, uses_anonymous_args = 0
 1059              		@ link register save eliminated.
 1060 0000 2AB9     		cbnz	r2, .L121
 1061 0002 064B     		ldr	r3, .L122
 1062 0004 43EA8101 		orr	r1, r3, r1, lsl #2
 1063 0008 C0F8E410 		str	r1, [r0, #228]
 1064 000c 7047     		bx	lr
 1065              	.L121:
 1066 000e 044B     		ldr	r3, .L122+4
 1067 0010 43EA8101 		orr	r1, r3, r1, lsl #2
 1068 0014 C0F8E410 		str	r1, [r0, #228]
 1069 0018 7047     		bx	lr
 1070              	.L123:
 1071 001a 00BF     		.align	2
 1072              	.L122:
 1073 001c 024D5750 		.word	1347898626
 1074 0020 014D5750 		.word	1347898625
 1075              		.size	pwm_enable_protect, .-pwm_enable_protect
 1076              		.section	.text.pwm_disable_protect,"ax",%progbits
 1077              		.align	1
 1078              		.p2align 2,,3
 1079              		.global	pwm_disable_protect
 1080              		.syntax unified
 1081              		.thumb
 1082              		.thumb_func
 1083              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccjDYgbi.s 			page 20


 1084              		.type	pwm_disable_protect, %function
 1085              	pwm_disable_protect:
 1086              		@ args = 0, pretend = 0, frame = 0
 1087              		@ frame_needed = 0, uses_anonymous_args = 0
 1088              		@ link register save eliminated.
 1089 0000 024B     		ldr	r3, .L125
 1090 0002 43EA8101 		orr	r1, r3, r1, lsl #2
 1091 0006 C0F8E410 		str	r1, [r0, #228]
 1092 000a 7047     		bx	lr
 1093              	.L126:
 1094              		.align	2
 1095              	.L125:
 1096 000c 004D5750 		.word	1347898624
 1097              		.size	pwm_disable_protect, .-pwm_disable_protect
 1098              		.section	.text.pwm_get_protect_status,"ax",%progbits
 1099              		.align	1
 1100              		.p2align 2,,3
 1101              		.global	pwm_get_protect_status
 1102              		.syntax unified
 1103              		.thumb
 1104              		.thumb_func
 1105              		.fpu fpv4-sp-d16
 1106              		.type	pwm_get_protect_status, %function
 1107              	pwm_get_protect_status:
 1108              		@ args = 0, pretend = 0, frame = 0
 1109              		@ frame_needed = 0, uses_anonymous_args = 0
 1110              		@ link register save eliminated.
 1111 0000 D0F8E830 		ldr	r3, [r0, #232]
 1112 0004 C3F30520 		ubfx	r0, r3, #8, #6
 1113 0008 03F03F02 		and	r2, r3, #63
 1114 000c 81E80500 		stm	r1, {r0, r2}
 1115 0010 13F08000 		ands	r0, r3, #128
 1116 0014 02D0     		beq	.L128
 1117 0016 1B0C     		lsrs	r3, r3, #16
 1118 0018 8B60     		str	r3, [r1, #8]
 1119 001a 0120     		movs	r0, #1
 1120              	.L128:
 1121 001c 7047     		bx	lr
 1122              		.size	pwm_get_protect_status, .-pwm_get_protect_status
 1123 001e 00BF     		.section	.text.pwm_get_interrupt_status,"ax",%progbits
 1124              		.align	1
 1125              		.p2align 2,,3
 1126              		.global	pwm_get_interrupt_status
 1127              		.syntax unified
 1128              		.thumb
 1129              		.thumb_func
 1130              		.fpu fpv4-sp-d16
 1131              		.type	pwm_get_interrupt_status, %function
 1132              	pwm_get_interrupt_status:
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135              		@ link register save eliminated.
 1136 0000 006C     		ldr	r0, [r0, #64]
 1137 0002 7047     		bx	lr
 1138              		.size	pwm_get_interrupt_status, .-pwm_get_interrupt_status
 1139              		.section	.text.pwm_get_interrupt_mask,"ax",%progbits
 1140              		.align	1
ARM GAS  /tmp/ccjDYgbi.s 			page 21


 1141              		.p2align 2,,3
 1142              		.global	pwm_get_interrupt_mask
 1143              		.syntax unified
 1144              		.thumb
 1145              		.thumb_func
 1146              		.fpu fpv4-sp-d16
 1147              		.type	pwm_get_interrupt_mask, %function
 1148              	pwm_get_interrupt_mask:
 1149              		@ args = 0, pretend = 0, frame = 0
 1150              		@ frame_needed = 0, uses_anonymous_args = 0
 1151              		@ link register save eliminated.
 1152 0000 C06B     		ldr	r0, [r0, #60]
 1153 0002 7047     		bx	lr
 1154              		.size	pwm_get_interrupt_mask, .-pwm_get_interrupt_mask
 1155              		.section	.text.pwm_stepper_motor_init,"ax",%progbits
 1156              		.align	1
 1157              		.p2align 2,,3
 1158              		.global	pwm_stepper_motor_init
 1159              		.syntax unified
 1160              		.thumb
 1161              		.thumb_func
 1162              		.fpu fpv4-sp-d16
 1163              		.type	pwm_stepper_motor_init, %function
 1164              	pwm_stepper_motor_init:
 1165              		@ args = 0, pretend = 0, frame = 0
 1166              		@ frame_needed = 0, uses_anonymous_args = 0
 1167              		@ link register save eliminated.
 1168 0000 30B4     		push	{r4, r5}
 1169 0002 D0F8B040 		ldr	r4, [r0, #176]
 1170 0006 4FF00115 		mov	r5, #65537
 1171 000a 8D40     		lsls	r5, r5, r1
 1172 000c 42EA0343 		orr	r3, r2, r3, lsl #16
 1173 0010 24EA0504 		bic	r4, r4, r5
 1174 0014 8B40     		lsls	r3, r3, r1
 1175 0016 2343     		orrs	r3, r3, r4
 1176 0018 C0F8B030 		str	r3, [r0, #176]
 1177 001c 30BC     		pop	{r4, r5}
 1178 001e 7047     		bx	lr
 1179              		.size	pwm_stepper_motor_init, .-pwm_stepper_motor_init
 1180              		.section	.text.pwm_channel_update_spread,"ax",%progbits
 1181              		.align	1
 1182              		.p2align 2,,3
 1183              		.global	pwm_channel_update_spread
 1184              		.syntax unified
 1185              		.thumb
 1186              		.thumb_func
 1187              		.fpu fpv4-sp-d16
 1188              		.type	pwm_channel_update_spread, %function
 1189              	pwm_channel_update_spread:
 1190              		@ args = 0, pretend = 0, frame = 0
 1191              		@ frame_needed = 0, uses_anonymous_args = 0
 1192              		@ link register save eliminated.
 1193 0000 22F07F43 		bic	r3, r2, #-16777216
 1194 0004 8A62     		str	r2, [r1, #40]
 1195 0006 C0F8A430 		str	r3, [r0, #164]
 1196 000a 7047     		bx	lr
 1197              		.size	pwm_channel_update_spread, .-pwm_channel_update_spread
ARM GAS  /tmp/ccjDYgbi.s 			page 22


 1198              		.section	.text.pwm_channel_update_additional_edge,"ax",%progbits
 1199              		.align	1
 1200              		.p2align 2,,3
 1201              		.global	pwm_channel_update_additional_edge
 1202              		.syntax unified
 1203              		.thumb
 1204              		.thumb_func
 1205              		.fpu fpv4-sp-d16
 1206              		.type	pwm_channel_update_additional_edge, %function
 1207              	pwm_channel_update_additional_edge:
 1208              		@ args = 0, pretend = 0, frame = 0
 1209              		@ frame_needed = 0, uses_anonymous_args = 0
 1210              		@ link register save eliminated.
 1211 0000 10B4     		push	{r4}
 1212 0002 0C68     		ldr	r4, [r1]
 1213 0004 0A63     		str	r2, [r1, #48]
 1214 0006 00EB4410 		add	r0, r0, r4, lsl #5
 1215 000a 22F07F42 		bic	r2, r2, #-16777216
 1216 000e 1A43     		orrs	r2, r2, r3
 1217 0010 4B63     		str	r3, [r1, #52]
 1218 0012 5DF8044B 		ldr	r4, [sp], #4
 1219 0016 C0F80824 		str	r2, [r0, #1032]
 1220 001a 7047     		bx	lr
 1221              		.size	pwm_channel_update_additional_edge, .-pwm_channel_update_additional_edge
 1222              		.section	.text.pwm_channel_update_polarity_mode,"ax",%progbits
 1223              		.align	1
 1224              		.p2align 2,,3
 1225              		.global	pwm_channel_update_polarity_mode
 1226              		.syntax unified
 1227              		.thumb
 1228              		.thumb_func
 1229              		.fpu fpv4-sp-d16
 1230              		.type	pwm_channel_update_polarity_mode, %function
 1231              	pwm_channel_update_polarity_mode:
 1232              		@ args = 0, pretend = 0, frame = 0
 1233              		@ frame_needed = 0, uses_anonymous_args = 0
 1234              		@ link register save eliminated.
 1235 0000 5AB9     		cbnz	r2, .L141
 1236 0002 8B72     		strb	r3, [r1, #10]
 1237 0004 012B     		cmp	r3, #1
 1238 0006 0B68     		ldr	r3, [r1]
 1239 0008 03F12003 		add	r3, r3, #32
 1240 000c 4FEA4313 		lsl	r3, r3, #5
 1241 0010 08BF     		it	eq
 1242 0012 4FF40072 		moveq	r2, #512
 1243 0016 C250     		str	r2, [r0, r3]
 1244 0018 7047     		bx	lr
 1245              	.L141:
 1246 001a 0B68     		ldr	r3, [r1]
 1247 001c 2033     		adds	r3, r3, #32
 1248 001e 5B01     		lsls	r3, r3, #5
 1249 0020 4FF40052 		mov	r2, #8192
 1250 0024 C250     		str	r2, [r0, r3]
 1251 0026 7047     		bx	lr
 1252              		.size	pwm_channel_update_polarity_mode, .-pwm_channel_update_polarity_mode
 1253              		.section	.rodata
 1254              		.align	2
ARM GAS  /tmp/ccjDYgbi.s 			page 23


 1255              		.set	.LANCHOR0,. + 0
 1256              	.LC0:
 1257 0000 01000000 		.word	1
 1258 0004 02000000 		.word	2
 1259 0008 04000000 		.word	4
 1260 000c 08000000 		.word	8
 1261 0010 10000000 		.word	16
 1262 0014 20000000 		.word	32
 1263 0018 40000000 		.word	64
 1264 001c 80000000 		.word	128
 1265 0020 00010000 		.word	256
 1266 0024 00020000 		.word	512
 1267 0028 00040000 		.word	1024
 1268              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1269              		.align	2
 1270              		.type	cpu_irq_critical_section_counter, %object
 1271              		.size	cpu_irq_critical_section_counter, 4
 1272              	cpu_irq_critical_section_counter:
 1273 0000 00000000 		.space	4
 1274              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1275              		.type	cpu_irq_prev_interrupt_state, %object
 1276              		.size	cpu_irq_prev_interrupt_state, 1
 1277              	cpu_irq_prev_interrupt_state:
 1278 0000 00       		.space	1
 1279              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
