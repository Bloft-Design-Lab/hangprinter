ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 1


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
  14              		.text
  15              		.section	.text.pwm_clocks_generate,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pwm_clocks_generate, %function
  23              	pwm_clocks_generate:
  24              		@ args = 0, pretend = 0, frame = 48
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 F0B4     		push	{r4, r5, r6, r7}
  28 0002 124D     		ldr	r5, .L8
  29 0004 0746     		mov	r7, r0
  30 0006 0E46     		mov	r6, r1
  31 0008 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  32 000a 8CB0     		sub	sp, sp, #48
  33 000c 01AC     		add	r4, sp, #4
  34 000e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  35 0010 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  36 0012 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  37 0014 95E80700 		ldm	r5, {r0, r1, r2}
  38 0018 0023     		movs	r3, #0
  39 001a 84E80700 		stm	r4, {r0, r1, r2}
  40 001e 01AA     		add	r2, sp, #4
  41              	.L3:
  42 0020 52F8040B 		ldr	r0, [r2], #4
  43 0024 B6FBF0F0 		udiv	r0, r6, r0
  44 0028 B0FBF7F0 		udiv	r0, r0, r7
  45 002c B0F5807F 		cmp	r0, #256
  46 0030 07D9     		bls	.L2
  47 0032 0133     		adds	r3, r3, #1
  48 0034 0B2B     		cmp	r3, #11
  49 0036 F3D1     		bne	.L3
  50 0038 4FF6FF70 		movw	r0, #65535
  51 003c 0CB0     		add	sp, sp, #48
  52              		@ sp needed
  53 003e F0BC     		pop	{r4, r5, r6, r7}
  54 0040 7047     		bx	lr
  55              	.L2:
  56 0042 40EA0320 		orr	r0, r0, r3, lsl #8
  57 0046 0CB0     		add	sp, sp, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 2


  58              		@ sp needed
  59 0048 F0BC     		pop	{r4, r5, r6, r7}
  60 004a 7047     		bx	lr
  61              	.L9:
  62              		.align	2
  63              	.L8:
  64 004c 00000000 		.word	.LANCHOR0
  65              		.size	pwm_clocks_generate, .-pwm_clocks_generate
  66              		.section	.text.pwm_init,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	pwm_init
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	pwm_init, %function
  75              	pwm_init:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78 0000 70B5     		push	{r4, r5, r6, lr}
  79 0002 0C68     		ldr	r4, [r1]
  80 0004 0D46     		mov	r5, r1
  81 0006 0646     		mov	r6, r0
  82 0008 44B1     		cbz	r4, .L11
  83 000a 2046     		mov	r0, r4
  84 000c 8968     		ldr	r1, [r1, #8]
  85 000e FFF7FEFF 		bl	pwm_clocks_generate
  86 0012 4FF6FF73 		movw	r3, #65535
  87 0016 9842     		cmp	r0, r3
  88 0018 0446     		mov	r4, r0
  89 001a 0CD0     		beq	.L10
  90              	.L11:
  91 001c 6868     		ldr	r0, [r5, #4]
  92 001e 40B1     		cbz	r0, .L13
  93 0020 A968     		ldr	r1, [r5, #8]
  94 0022 FFF7FEFF 		bl	pwm_clocks_generate
  95 0026 4FF6FF73 		movw	r3, #65535
  96 002a 9842     		cmp	r0, r3
  97 002c 05D0     		beq	.L14
  98 002e 44EA0044 		orr	r4, r4, r0, lsl #16
  99              	.L13:
 100 0032 3460     		str	r4, [r6]
 101 0034 0024     		movs	r4, #0
 102              	.L10:
 103 0036 2046     		mov	r0, r4
 104 0038 70BD     		pop	{r4, r5, r6, pc}
 105              	.L14:
 106 003a 0446     		mov	r4, r0
 107 003c 2046     		mov	r0, r4
 108 003e 70BD     		pop	{r4, r5, r6, pc}
 109              		.size	pwm_init, .-pwm_init
 110              		.section	.text.pwm_channel_init,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	pwm_channel_init
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	pwm_channel_init, %function
 119              	pwm_channel_init:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 4B68     		ldr	r3, [r1, #4]
 124 0002 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 125 0004 F0B4     		push	{r4, r5, r6, r7}
 126 0006 8E8A     		ldrh	r6, [r1, #20]
 127 0008 0C89     		ldrh	r4, [r1, #8]
 128 000a 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 129 000c 03F00F03 		and	r3, r3, #15
 130 0010 3343     		orrs	r3, r3, r6
 131 0012 2343     		orrs	r3, r3, r4
 132 0014 43EA4223 		orr	r3, r3, r2, lsl #9
 133 0018 CC7D     		ldrb	r4, [r1, #23]	@ zero_extendqisi2
 134 001a 0A68     		ldr	r2, [r1]
 135 001c 0E7E     		ldrb	r6, [r1, #24]	@ zero_extendqisi2
 136 001e 43EA0543 		orr	r3, r3, r5, lsl #16
 137 0022 43EA4443 		orr	r3, r3, r4, lsl #17
 138 0026 00EB4214 		add	r4, r0, r2, lsl #5
 139 002a 43EA8643 		orr	r3, r3, r6, lsl #18
 140 002e CE68     		ldr	r6, [r1, #12]
 141 0030 C4F80032 		str	r3, [r4, #512]
 142 0034 0B69     		ldr	r3, [r1, #16]
 143 0036 C4F80462 		str	r6, [r4, #516]
 144 003a C4F80C32 		str	r3, [r4, #524]
 145 003e 1DB1     		cbz	r5, .L23
 146 0040 D1F81A30 		ldr	r3, [r1, #26]	@ unaligned
 147 0044 C4F81832 		str	r3, [r4, #536]
 148              	.L23:
 149 0048 CF7F     		ldrb	r7, [r1, #31]	@ zero_extendqisi2
 150 004a 8B7F     		ldrb	r3, [r1, #30]	@ zero_extendqisi2
 151 004c 846C     		ldr	r4, [r0, #72]
 152 004e 91F82160 		ldrb	r6, [r1, #33]	@ zero_extendqisi2
 153 0052 4FF00115 		mov	r5, #65537
 154 0056 9540     		lsls	r5, r5, r2
 155 0058 ED43     		mvns	r5, r5
 156 005a 9740     		lsls	r7, r7, r2
 157 005c 9340     		lsls	r3, r3, r2
 158 005e 2C40     		ands	r4, r4, r5
 159 0060 43EA0743 		orr	r3, r3, r7, lsl #16
 160 0064 2343     		orrs	r3, r3, r4
 161 0066 8364     		str	r3, [r0, #72]
 162 0068 91F82040 		ldrb	r4, [r1, #32]	@ zero_extendqisi2
 163 006c D0F844C0 		ldr	ip, [r0, #68]
 164 0070 91F82270 		ldrb	r7, [r1, #34]	@ zero_extendqisi2
 165 0074 06FA02F3 		lsl	r3, r6, r2
 166 0078 9440     		lsls	r4, r4, r2
 167 007a 44EA0344 		orr	r4, r4, r3, lsl #16
 168 007e 05EA0C05 		and	r5, r5, ip
 169 0082 2C43     		orrs	r4, r4, r5
 170 0084 0123     		movs	r3, #1
 171 0086 4464     		str	r4, [r0, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 4


 172 0088 9340     		lsls	r3, r3, r2
 173 008a 046A     		ldr	r4, [r0, #32]
 174 008c 002F     		cmp	r7, #0
 175 008e 47D0     		beq	.L24
 176 0090 1C43     		orrs	r4, r4, r3
 177 0092 0462     		str	r4, [r0, #32]
 178 0094 91F82440 		ldrb	r4, [r1, #36]	@ zero_extendqisi2
 179 0098 022C     		cmp	r4, #2
 180 009a 48D0     		beq	.L38
 181              	.L26:
 182 009c D0F8C050 		ldr	r5, [r0, #192]
 183 00a0 DE43     		mvns	r6, r3
 184 00a2 3540     		ands	r5, r5, r6
 185 00a4 C0F8C050 		str	r5, [r0, #192]
 186 00a8 012C     		cmp	r4, #1
 187 00aa 846E     		ldr	r4, [r0, #104]
 188 00ac 0ABF     		itet	eq
 189 00ae 1C43     		orreq	r4, r4, r3
 190 00b0 2640     		andne	r6, r6, r4
 191 00b2 8466     		streq	r4, [r0, #104]
 192 00b4 91F82540 		ldrb	r4, [r1, #37]	@ zero_extendqisi2
 193 00b8 18BF     		it	ne
 194 00ba 8666     		strne	r6, [r0, #104]
 195 00bc 022C     		cmp	r4, #2
 196 00be 4FEA0343 		lsl	r3, r3, #16
 197 00c2 3FD0     		beq	.L39
 198              	.L29:
 199 00c4 D0F8C050 		ldr	r5, [r0, #192]
 200 00c8 DE43     		mvns	r6, r3
 201 00ca 3540     		ands	r5, r5, r6
 202 00cc 012C     		cmp	r4, #1
 203 00ce C0F8C050 		str	r5, [r0, #192]
 204 00d2 3DD0     		beq	.L40
 205 00d4 836E     		ldr	r3, [r0, #104]
 206 00d6 1E40     		ands	r6, r6, r3
 207 00d8 8666     		str	r6, [r0, #104]
 208              	.L30:
 209 00da D600     		lsls	r6, r2, #3
 210 00dc C46E     		ldr	r4, [r0, #108]
 211 00de 91F82330 		ldrb	r3, [r1, #35]	@ zero_extendqisi2
 212 00e2 FF25     		movs	r5, #255
 213 00e4 B540     		lsls	r5, r5, r6
 214 00e6 24EA0504 		bic	r4, r4, r5
 215 00ea B340     		lsls	r3, r3, r6
 216 00ec 2343     		orrs	r3, r3, r4
 217 00ee C366     		str	r3, [r0, #108]
 218 00f0 52B9     		cbnz	r2, .L32
 219 00f2 8B6A     		ldr	r3, [r1, #40]
 220 00f4 91F82C40 		ldrb	r4, [r1, #44]	@ zero_extendqisi2
 221 00f8 23F07F43 		bic	r3, r3, #-16777216
 222 00fc 012C     		cmp	r4, #1
 223 00fe 08BF     		it	eq
 224 0100 43F08073 		orreq	r3, r3, #16777216
 225 0104 C0F8A030 		str	r3, [r0, #160]
 226              	.L32:
 227 0108 D1E90C31 		ldrd	r3, r1, [r1, #48]
 228 010c 2032     		adds	r2, r2, #32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 5


 229 010e 00EB4210 		add	r0, r0, r2, lsl #5
 230 0112 23F07F43 		bic	r3, r3, #-16777216
 231 0116 0B43     		orrs	r3, r3, r1
 232 0118 4360     		str	r3, [r0, #4]
 233 011a F0BC     		pop	{r4, r5, r6, r7}
 234 011c 0020     		movs	r0, #0
 235 011e 7047     		bx	lr
 236              	.L24:
 237 0120 24EA0304 		bic	r4, r4, r3
 238 0124 0462     		str	r4, [r0, #32]
 239 0126 91F82440 		ldrb	r4, [r1, #36]	@ zero_extendqisi2
 240 012a 022C     		cmp	r4, #2
 241 012c B6D1     		bne	.L26
 242              	.L38:
 243 012e D0F8C040 		ldr	r4, [r0, #192]
 244 0132 1C43     		orrs	r4, r4, r3
 245 0134 C0F8C040 		str	r4, [r0, #192]
 246 0138 91F82540 		ldrb	r4, [r1, #37]	@ zero_extendqisi2
 247 013c 022C     		cmp	r4, #2
 248 013e 4FEA0343 		lsl	r3, r3, #16
 249 0142 BFD1     		bne	.L29
 250              	.L39:
 251 0144 D0F8C040 		ldr	r4, [r0, #192]
 252 0148 2343     		orrs	r3, r3, r4
 253 014a C0F8C030 		str	r3, [r0, #192]
 254 014e C4E7     		b	.L30
 255              	.L40:
 256 0150 846E     		ldr	r4, [r0, #104]
 257 0152 2343     		orrs	r3, r3, r4
 258 0154 8366     		str	r3, [r0, #104]
 259 0156 C0E7     		b	.L30
 260              		.size	pwm_channel_init, .-pwm_channel_init
 261              		.section	.text.pwm_channel_update_period,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	pwm_channel_update_period
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	pwm_channel_update_period, %function
 270              	pwm_channel_update_period:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 274 0000 CB68     		ldr	r3, [r1, #12]
 275 0002 9342     		cmp	r3, r2
 276 0004 07D8     		bhi	.L43
 277 0006 0B68     		ldr	r3, [r1]
 278 0008 0A61     		str	r2, [r1, #16]
 279 000a 00EB4313 		add	r3, r0, r3, lsl #5
 280 000e 0020     		movs	r0, #0
 281 0010 C3F81022 		str	r2, [r3, #528]
 282 0014 7047     		bx	lr
 283              	.L43:
 284 0016 4FF6FF70 		movw	r0, #65535
 285 001a 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 6


 286              		.size	pwm_channel_update_period, .-pwm_channel_update_period
 287              		.section	.text.pwm_channel_update_duty,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	pwm_channel_update_duty
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	pwm_channel_update_duty, %function
 296              	pwm_channel_update_duty:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 0B69     		ldr	r3, [r1, #16]
 301 0002 9342     		cmp	r3, r2
 302 0004 07D3     		bcc	.L46
 303 0006 0B68     		ldr	r3, [r1]
 304 0008 CA60     		str	r2, [r1, #12]
 305 000a 00EB4313 		add	r3, r0, r3, lsl #5
 306 000e 0020     		movs	r0, #0
 307 0010 C3F80822 		str	r2, [r3, #520]
 308 0014 7047     		bx	lr
 309              	.L46:
 310 0016 4FF6FF70 		movw	r0, #65535
 311 001a 7047     		bx	lr
 312              		.size	pwm_channel_update_duty, .-pwm_channel_update_duty
 313              		.section	.text.pwm_channel_get_counter,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	pwm_channel_get_counter
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv4-sp-d16
 321              		.type	pwm_channel_get_counter, %function
 322              	pwm_channel_get_counter:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325              		@ link register save eliminated.
 326 0000 0B68     		ldr	r3, [r1]
 327 0002 00EB4310 		add	r0, r0, r3, lsl #5
 328 0006 D0F81402 		ldr	r0, [r0, #532]
 329 000a 7047     		bx	lr
 330              		.size	pwm_channel_get_counter, .-pwm_channel_get_counter
 331              		.section	.text.pwm_channel_enable,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	pwm_channel_enable
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu fpv4-sp-d16
 339              		.type	pwm_channel_enable, %function
 340              	pwm_channel_enable:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 7


 343              		@ link register save eliminated.
 344 0000 0123     		movs	r3, #1
 345 0002 03FA01F1 		lsl	r1, r3, r1
 346 0006 4160     		str	r1, [r0, #4]
 347 0008 7047     		bx	lr
 348              		.size	pwm_channel_enable, .-pwm_channel_enable
 349 000a 00BF     		.section	.text.pwm_channel_disable,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	pwm_channel_disable
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	pwm_channel_disable, %function
 358              	pwm_channel_disable:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361              		@ link register save eliminated.
 362 0000 0123     		movs	r3, #1
 363 0002 03FA01F1 		lsl	r1, r3, r1
 364 0006 8160     		str	r1, [r0, #8]
 365 0008 7047     		bx	lr
 366              		.size	pwm_channel_disable, .-pwm_channel_disable
 367 000a 00BF     		.section	.text.pwm_channel_get_status,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	pwm_channel_get_status
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	pwm_channel_get_status, %function
 376              	pwm_channel_get_status:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 C068     		ldr	r0, [r0, #12]
 381 0002 7047     		bx	lr
 382              		.size	pwm_channel_get_status, .-pwm_channel_get_status
 383              		.section	.text.pwm_channel_get_interrupt_status,"ax",%progbits
 384              		.align	1
 385              		.p2align 2,,3
 386              		.global	pwm_channel_get_interrupt_status
 387              		.syntax unified
 388              		.thumb
 389              		.thumb_func
 390              		.fpu fpv4-sp-d16
 391              		.type	pwm_channel_get_interrupt_status, %function
 392              	pwm_channel_get_interrupt_status:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395              		@ link register save eliminated.
 396 0000 C069     		ldr	r0, [r0, #28]
 397 0002 7047     		bx	lr
 398              		.size	pwm_channel_get_interrupt_status, .-pwm_channel_get_interrupt_status
 399              		.section	.text.pwm_channel_get_interrupt_mask,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	pwm_channel_get_interrupt_mask
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu fpv4-sp-d16
 407              		.type	pwm_channel_get_interrupt_mask, %function
 408              	pwm_channel_get_interrupt_mask:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411              		@ link register save eliminated.
 412 0000 8069     		ldr	r0, [r0, #24]
 413 0002 7047     		bx	lr
 414              		.size	pwm_channel_get_interrupt_mask, .-pwm_channel_get_interrupt_mask
 415              		.section	.text.pwm_channel_enable_interrupt,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	pwm_channel_enable_interrupt
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 423              		.type	pwm_channel_enable_interrupt, %function
 424              	pwm_channel_enable_interrupt:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 0123     		movs	r3, #1
 429 0002 1032     		adds	r2, r2, #16
 430 0004 03FA02F2 		lsl	r2, r3, r2
 431 0008 03FA01F1 		lsl	r1, r3, r1
 432 000c 0A43     		orrs	r2, r2, r1
 433 000e 0261     		str	r2, [r0, #16]
 434 0010 7047     		bx	lr
 435              		.size	pwm_channel_enable_interrupt, .-pwm_channel_enable_interrupt
 436 0012 00BF     		.section	.text.pwm_channel_disable_interrupt,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	pwm_channel_disable_interrupt
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	pwm_channel_disable_interrupt, %function
 445              	pwm_channel_disable_interrupt:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448              		@ link register save eliminated.
 449 0000 0123     		movs	r3, #1
 450 0002 1032     		adds	r2, r2, #16
 451 0004 03FA02F2 		lsl	r2, r3, r2
 452 0008 03FA01F1 		lsl	r1, r3, r1
 453 000c 0A43     		orrs	r2, r2, r1
 454 000e 4261     		str	r2, [r0, #20]
 455 0010 7047     		bx	lr
 456              		.size	pwm_channel_disable_interrupt, .-pwm_channel_disable_interrupt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 9


 457 0012 00BF     		.section	.text.pwm_channel_update_output,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	pwm_channel_update_output
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	pwm_channel_update_output, %function
 466              	pwm_channel_update_output:
 467              		@ args = 0, pretend = 0, frame = 0
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 470 0004 0C68     		ldr	r4, [r1]
 471 0006 92F800C0 		ldrb	ip, [r2]	@ zero_extendqisi2
 472 000a 5578     		ldrb	r5, [r2, #1]	@ zero_extendqisi2
 473 000c 92F80280 		ldrb	r8, [r2, #2]	@ zero_extendqisi2
 474 0010 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 475 0014 466C     		ldr	r6, [r0, #68]
 476 0016 CD77     		strb	r5, [r1, #31]
 477 0018 4FF00112 		mov	r2, #65537
 478 001c A240     		lsls	r2, r2, r4
 479 001e 26EA0202 		bic	r2, r6, r2
 480 0022 48EA0E46 		orr	r6, r8, lr, lsl #16
 481 0026 A640     		lsls	r6, r6, r4
 482 0028 1643     		orrs	r6, r6, r2
 483 002a 85F00102 		eor	r2, r5, #1
 484 002e 02FA04F7 		lsl	r7, r2, r4
 485 0032 8CF00102 		eor	r2, ip, #1
 486 0036 A540     		lsls	r5, r5, r4
 487 0038 A240     		lsls	r2, r2, r4
 488 003a 0CFA04F4 		lsl	r4, ip, r4
 489 003e 81F82080 		strb	r8, [r1, #32]
 490 0042 81F81EC0 		strb	ip, [r1, #30]
 491 0046 81F821E0 		strb	lr, [r1, #33]
 492 004a 42EA0742 		orr	r2, r2, r7, lsl #16
 493 004e 4664     		str	r6, [r0, #68]
 494 0050 44EA0544 		orr	r4, r4, r5, lsl #16
 495 0054 1BB9     		cbnz	r3, .L59
 496 0056 C464     		str	r4, [r0, #76]
 497 0058 0265     		str	r2, [r0, #80]
 498 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 499              	.L59:
 500 005e 4465     		str	r4, [r0, #84]
 501 0060 8265     		str	r2, [r0, #88]
 502 0062 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 503              		.size	pwm_channel_update_output, .-pwm_channel_update_output
 504 0066 00BF     		.section	.text.pwm_channel_update_dead_time,"ax",%progbits
 505              		.align	1
 506              		.p2align 2,,3
 507              		.global	pwm_channel_update_dead_time
 508              		.syntax unified
 509              		.thumb
 510              		.thumb_func
 511              		.fpu fpv4-sp-d16
 512              		.type	pwm_channel_update_dead_time, %function
 513              	pwm_channel_update_dead_time:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516              		@ link register save eliminated.
 517 0000 10B4     		push	{r4}
 518 0002 0C68     		ldr	r4, [r1]
 519 0004 4A83     		strh	r2, [r1, #26]	@ movhi
 520 0006 00EB4410 		add	r0, r0, r4, lsl #5
 521 000a 42EA0342 		orr	r2, r2, r3, lsl #16
 522 000e 8B83     		strh	r3, [r1, #28]	@ movhi
 523 0010 5DF8044B 		ldr	r4, [sp], #4
 524 0014 C0F81C22 		str	r2, [r0, #540]
 525 0018 7047     		bx	lr
 526              		.size	pwm_channel_update_dead_time, .-pwm_channel_update_dead_time
 527 001a 00BF     		.section	.text.pwm_fault_init,"ax",%progbits
 528              		.align	1
 529              		.p2align 2,,3
 530              		.global	pwm_fault_init
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 535              		.type	pwm_fault_init, %function
 536              	pwm_fault_init:
 537              		@ args = 0, pretend = 0, frame = 0
 538              		@ frame_needed = 0, uses_anonymous_args = 0
 539              		@ link register save eliminated.
 540 0000 30B4     		push	{r4, r5}
 541 0002 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 542 0004 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 543 0006 C36D     		ldr	r3, [r0, #92]
 544 0008 8D78     		ldrb	r5, [r1, #2]	@ zero_extendqisi2
 545 000a 012C     		cmp	r4, #1
 546 000c 0CBF     		ite	eq
 547 000e 1343     		orreq	r3, r3, r2
 548 0010 9343     		bicne	r3, r3, r2
 549 0012 1402     		lsls	r4, r2, #8
 550 0014 4DB1     		cbz	r5, .L65
 551 0016 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 552 0018 2343     		orrs	r3, r3, r4
 553 001a 1204     		lsls	r2, r2, #16
 554 001c 59B9     		cbnz	r1, .L70
 555              	.L67:
 556 001e 23EA0203 		bic	r3, r3, r2
 557 0022 C365     		str	r3, [r0, #92]
 558 0024 30BC     		pop	{r4, r5}
 559 0026 0020     		movs	r0, #0
 560 0028 7047     		bx	lr
 561              	.L65:
 562 002a C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 563 002c 23EA0403 		bic	r3, r3, r4
 564 0030 1204     		lsls	r2, r2, #16
 565 0032 0029     		cmp	r1, #0
 566 0034 F3D0     		beq	.L67
 567              	.L70:
 568 0036 1343     		orrs	r3, r3, r2
 569 0038 C365     		str	r3, [r0, #92]
 570 003a 30BC     		pop	{r4, r5}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 11


 571 003c 0020     		movs	r0, #0
 572 003e 7047     		bx	lr
 573              		.size	pwm_fault_init, .-pwm_fault_init
 574              		.section	.text.pwm_fault_get_status,"ax",%progbits
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 12


 628              		.global	pwm_cmp_init
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu fpv4-sp-d16
 633              		.type	pwm_cmp_init, %function
 634              	pwm_cmp_init:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638 0000 F0B4     		push	{r4, r5, r6, r7}
 639 0002 0B69     		ldr	r3, [r1, #16]
 640 0004 4E69     		ldr	r6, [r1, #20]
 641 0006 8C69     		ldr	r4, [r1, #24]
 642 0008 0D68     		ldr	r5, [r1]
 643 000a 8A68     		ldr	r2, [r1, #8]
 644 000c 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 645 000e 1B01     		lsls	r3, r3, #4
 646 0010 3602     		lsls	r6, r6, #8
 647 0012 06F47066 		and	r6, r6, #3840
 648 0016 DBB2     		uxtb	r3, r3
 649 0018 2404     		lsls	r4, r4, #16
 650 001a 05F1130C 		add	ip, r5, #19
 651 001e 3343     		orrs	r3, r3, r6
 652 0020 04F47024 		and	r4, r4, #983040
 653 0024 2343     		orrs	r3, r3, r4
 654 0026 4FEA0C1C 		lsl	ip, ip, #4
 655 002a 2C01     		lsls	r4, r5, #4
 656 002c 22F07F42 		bic	r2, r2, #-16777216
 657 0030 42EA0762 		orr	r2, r2, r7, lsl #24
 658 0034 0619     		adds	r6, r0, r4
 659 0036 40F80C20 		str	r2, [r0, ip]
 660 003a 0A7F     		ldrb	r2, [r1, #28]	@ zero_extendqisi2
 661 003c C6F83831 		str	r3, [r6, #312]
 662 0040 0123     		movs	r3, #1
 663 0042 03FA05F5 		lsl	r5, r3, r5
 664 0046 C36F     		ldr	r3, [r0, #124]
 665 0048 A2B1     		cbz	r2, .L75
 666 004a 2B43     		orrs	r3, r3, r5
 667 004c C367     		str	r3, [r0, #124]
 668 004e 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 669 0050 B3B1     		cbz	r3, .L77
 670              	.L83:
 671 0052 D0F88030 		ldr	r3, [r0, #128]
 672 0056 1D43     		orrs	r5, r5, r3
 673 0058 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 674 005a C0F88050 		str	r5, [r0, #128]
 675 005e 2044     		add	r0, r0, r4
 676 0060 C3B9     		cbnz	r3, .L82
 677              	.L79:
 678 0062 D0F83831 		ldr	r3, [r0, #312]
 679 0066 23F00103 		bic	r3, r3, #1
 680 006a C0F83831 		str	r3, [r0, #312]
 681 006e F0BC     		pop	{r4, r5, r6, r7}
 682 0070 0020     		movs	r0, #0
 683 0072 7047     		bx	lr
 684              	.L75:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 13


 685 0074 23EA0503 		bic	r3, r3, r5
 686 0078 C367     		str	r3, [r0, #124]
 687 007a 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 688 007c 002B     		cmp	r3, #0
 689 007e E8D1     		bne	.L83
 690              	.L77:
 691 0080 D0F88030 		ldr	r3, [r0, #128]
 692 0084 23EA0505 		bic	r5, r3, r5
 693 0088 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 694 008a C0F88050 		str	r5, [r0, #128]
 695 008e 2044     		add	r0, r0, r4
 696 0090 002B     		cmp	r3, #0
 697 0092 E6D0     		beq	.L79
 698              	.L82:
 699 0094 D0F83831 		ldr	r3, [r0, #312]
 700 0098 43F00103 		orr	r3, r3, #1
 701 009c C0F83831 		str	r3, [r0, #312]
 702 00a0 F0BC     		pop	{r4, r5, r6, r7}
 703 00a2 0020     		movs	r0, #0
 704 00a4 7047     		bx	lr
 705              		.size	pwm_cmp_init, .-pwm_cmp_init
 706 00a6 00BF     		.section	.text.pwm_cmp_change_setting,"ax",%progbits
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
 720 0002 D1E90436 		ldrd	r3, r6, [r1, #16]
 721 0006 8A68     		ldr	r2, [r1, #8]
 722 0008 0D68     		ldr	r5, [r1]
 723 000a 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 724 000c 8C69     		ldr	r4, [r1, #24]
 725 000e 1B01     		lsls	r3, r3, #4
 726 0010 3602     		lsls	r6, r6, #8
 727 0012 22F07F42 		bic	r2, r2, #-16777216
 728 0016 42EA0762 		orr	r2, r2, r7, lsl #24
 729 001a 06F47066 		and	r6, r6, #3840
 730 001e 05F11307 		add	r7, r5, #19
 731 0022 DBB2     		uxtb	r3, r3
 732 0024 2404     		lsls	r4, r4, #16
 733 0026 3343     		orrs	r3, r3, r6
 734 0028 04F47024 		and	r4, r4, #983040
 735 002c 00EB0717 		add	r7, r0, r7, lsl #4
 736 0030 2343     		orrs	r3, r3, r4
 737 0032 2C01     		lsls	r4, r5, #4
 738 0034 0E7F     		ldrb	r6, [r1, #28]	@ zero_extendqisi2
 739 0036 7A60     		str	r2, [r7, #4]
 740 0038 0719     		adds	r7, r0, r4
 741 003a 0122     		movs	r2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 14


 742 003c C7F83C31 		str	r3, [r7, #316]
 743 0040 02FA05F5 		lsl	r5, r2, r5
 744 0044 C36F     		ldr	r3, [r0, #124]
 745 0046 A6B1     		cbz	r6, .L85
 746 0048 2B43     		orrs	r3, r3, r5
 747 004a C367     		str	r3, [r0, #124]
 748 004c 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 749 004e B3B1     		cbz	r3, .L87
 750              	.L93:
 751 0050 D0F88030 		ldr	r3, [r0, #128]
 752 0054 1D43     		orrs	r5, r5, r3
 753 0056 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 754 0058 C0F88050 		str	r5, [r0, #128]
 755 005c 2044     		add	r0, r0, r4
 756 005e C3B9     		cbnz	r3, .L92
 757              	.L89:
 758 0060 D0F83C31 		ldr	r3, [r0, #316]
 759 0064 23F00103 		bic	r3, r3, #1
 760 0068 C0F83C31 		str	r3, [r0, #316]
 761 006c F0BC     		pop	{r4, r5, r6, r7}
 762 006e 0020     		movs	r0, #0
 763 0070 7047     		bx	lr
 764              	.L85:
 765 0072 23EA0503 		bic	r3, r3, r5
 766 0076 C367     		str	r3, [r0, #124]
 767 0078 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 768 007a 002B     		cmp	r3, #0
 769 007c E8D1     		bne	.L93
 770              	.L87:
 771 007e D0F88030 		ldr	r3, [r0, #128]
 772 0082 23EA0505 		bic	r5, r3, r5
 773 0086 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 774 0088 C0F88050 		str	r5, [r0, #128]
 775 008c 2044     		add	r0, r0, r4
 776 008e 002B     		cmp	r3, #0
 777 0090 E6D0     		beq	.L89
 778              	.L92:
 779 0092 D0F83C31 		ldr	r3, [r0, #316]
 780 0096 43F00103 		orr	r3, r3, #1
 781 009a C0F83C31 		str	r3, [r0, #316]
 782 009e F0BC     		pop	{r4, r5, r6, r7}
 783 00a0 0020     		movs	r0, #0
 784 00a2 7047     		bx	lr
 785              		.size	pwm_cmp_change_setting, .-pwm_cmp_change_setting
 786              		.section	.text.pwm_cmp_get_period_counter,"ax",%progbits
 787              		.align	1
 788              		.p2align 2,,3
 789              		.global	pwm_cmp_get_period_counter
 790              		.syntax unified
 791              		.thumb
 792              		.thumb_func
 793              		.fpu fpv4-sp-d16
 794              		.type	pwm_cmp_get_period_counter, %function
 795              	pwm_cmp_get_period_counter:
 796              		@ args = 0, pretend = 0, frame = 0
 797              		@ frame_needed = 0, uses_anonymous_args = 0
 798              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 15


 799 0000 00EB0111 		add	r1, r0, r1, lsl #4
 800 0004 D1F83801 		ldr	r0, [r1, #312]
 801 0008 00F00F00 		and	r0, r0, #15
 802 000c 7047     		bx	lr
 803              		.size	pwm_cmp_get_period_counter, .-pwm_cmp_get_period_counter
 804 000e 00BF     		.section	.text.pwm_cmp_get_update_counter,"ax",%progbits
 805              		.align	1
 806              		.p2align 2,,3
 807              		.global	pwm_cmp_get_update_counter
 808              		.syntax unified
 809              		.thumb
 810              		.thumb_func
 811              		.fpu fpv4-sp-d16
 812              		.type	pwm_cmp_get_update_counter, %function
 813              	pwm_cmp_get_update_counter:
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816              		@ link register save eliminated.
 817 0000 00EB0111 		add	r1, r0, r1, lsl #4
 818 0004 D1F83801 		ldr	r0, [r1, #312]
 819 0008 00F00F00 		and	r0, r0, #15
 820 000c 7047     		bx	lr
 821              		.size	pwm_cmp_get_update_counter, .-pwm_cmp_get_update_counter
 822 000e 00BF     		.section	.text.pwm_cmp_enable_interrupt,"ax",%progbits
 823              		.align	1
 824              		.p2align 2,,3
 825              		.global	pwm_cmp_enable_interrupt
 826              		.syntax unified
 827              		.thumb
 828              		.thumb_func
 829              		.fpu fpv4-sp-d16
 830              		.type	pwm_cmp_enable_interrupt, %function
 831              	pwm_cmp_enable_interrupt:
 832              		@ args = 0, pretend = 0, frame = 0
 833              		@ frame_needed = 0, uses_anonymous_args = 0
 834              		@ link register save eliminated.
 835 0000 082A     		cmp	r2, #8
 836 0002 08D0     		beq	.L99
 837 0004 102A     		cmp	r2, #16
 838 0006 00D0     		beq	.L100
 839 0008 7047     		bx	lr
 840              	.L100:
 841 000a 4FF48033 		mov	r3, #65536
 842 000e 03FA01F1 		lsl	r1, r3, r1
 843 0012 4163     		str	r1, [r0, #52]
 844 0014 7047     		bx	lr
 845              	.L99:
 846 0016 4FF48073 		mov	r3, #256
 847 001a 03FA01F1 		lsl	r1, r3, r1
 848 001e 4163     		str	r1, [r0, #52]
 849 0020 7047     		bx	lr
 850              		.size	pwm_cmp_enable_interrupt, .-pwm_cmp_enable_interrupt
 851 0022 00BF     		.section	.text.pwm_cmp_disable_interrupt,"ax",%progbits
 852              		.align	1
 853              		.p2align 2,,3
 854              		.global	pwm_cmp_disable_interrupt
 855              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 16


 856              		.thumb
 857              		.thumb_func
 858              		.fpu fpv4-sp-d16
 859              		.type	pwm_cmp_disable_interrupt, %function
 860              	pwm_cmp_disable_interrupt:
 861              		@ args = 0, pretend = 0, frame = 0
 862              		@ frame_needed = 0, uses_anonymous_args = 0
 863              		@ link register save eliminated.
 864 0000 082A     		cmp	r2, #8
 865 0002 08D0     		beq	.L104
 866 0004 102A     		cmp	r2, #16
 867 0006 00D0     		beq	.L105
 868 0008 7047     		bx	lr
 869              	.L105:
 870 000a 4FF48033 		mov	r3, #65536
 871 000e 03FA01F1 		lsl	r1, r3, r1
 872 0012 8163     		str	r1, [r0, #56]
 873 0014 7047     		bx	lr
 874              	.L104:
 875 0016 4FF48073 		mov	r3, #256
 876 001a 03FA01F1 		lsl	r1, r3, r1
 877 001e 8163     		str	r1, [r0, #56]
 878 0020 7047     		bx	lr
 879              		.size	pwm_cmp_disable_interrupt, .-pwm_cmp_disable_interrupt
 880 0022 00BF     		.section	.text.pwm_pdc_set_request_mode,"ax",%progbits
 881              		.align	1
 882              		.p2align 2,,3
 883              		.global	pwm_pdc_set_request_mode
 884              		.syntax unified
 885              		.thumb
 886              		.thumb_func
 887              		.fpu fpv4-sp-d16
 888              		.type	pwm_pdc_set_request_mode, %function
 889              	pwm_pdc_set_request_mode:
 890              		@ args = 0, pretend = 0, frame = 0
 891              		@ frame_needed = 0, uses_anonymous_args = 0
 892              		@ link register save eliminated.
 893 0000 036A     		ldr	r3, [r0, #32]
 894 0002 5205     		lsls	r2, r2, #21
 895 0004 02F46002 		and	r2, r2, #14680064
 896 0008 0A43     		orrs	r2, r2, r1
 897 000a 23F47003 		bic	r3, r3, #15728640
 898 000e 1A43     		orrs	r2, r2, r3
 899 0010 0262     		str	r2, [r0, #32]
 900 0012 7047     		bx	lr
 901              		.size	pwm_pdc_set_request_mode, .-pwm_pdc_set_request_mode
 902              		.section	.text.pwm_pdc_enable_interrupt,"ax",%progbits
 903              		.align	1
 904              		.p2align 2,,3
 905              		.global	pwm_pdc_enable_interrupt
 906              		.syntax unified
 907              		.thumb
 908              		.thumb_func
 909              		.fpu fpv4-sp-d16
 910              		.type	pwm_pdc_enable_interrupt, %function
 911              	pwm_pdc_enable_interrupt:
 912              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 17


 913              		@ frame_needed = 0, uses_anonymous_args = 0
 914              		@ link register save eliminated.
 915 0000 4163     		str	r1, [r0, #52]
 916 0002 7047     		bx	lr
 917              		.size	pwm_pdc_enable_interrupt, .-pwm_pdc_enable_interrupt
 918              		.section	.text.pwm_pdc_disable_interrupt,"ax",%progbits
 919              		.align	1
 920              		.p2align 2,,3
 921              		.global	pwm_pdc_disable_interrupt
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu fpv4-sp-d16
 926              		.type	pwm_pdc_disable_interrupt, %function
 927              	pwm_pdc_disable_interrupt:
 928              		@ args = 0, pretend = 0, frame = 0
 929              		@ frame_needed = 0, uses_anonymous_args = 0
 930              		@ link register save eliminated.
 931 0000 8163     		str	r1, [r0, #56]
 932 0002 7047     		bx	lr
 933              		.size	pwm_pdc_disable_interrupt, .-pwm_pdc_disable_interrupt
 934              		.section	.text.pwm_sync_init,"ax",%progbits
 935              		.align	1
 936              		.p2align 2,,3
 937              		.global	pwm_sync_init
 938              		.syntax unified
 939              		.thumb
 940              		.thumb_func
 941              		.fpu fpv4-sp-d16
 942              		.type	pwm_sync_init, %function
 943              	pwm_sync_init:
 944              		@ args = 0, pretend = 0, frame = 0
 945              		@ frame_needed = 0, uses_anonymous_args = 0
 946              		@ link register save eliminated.
 947 0000 036A     		ldr	r3, [r0, #32]
 948 0002 10B4     		push	{r4}
 949 0004 23F44033 		bic	r3, r3, #196608
 950 0008 0446     		mov	r4, r0
 951 000a 02F00F02 		and	r2, r2, #15
 952 000e 1943     		orrs	r1, r1, r3
 953 0010 0162     		str	r1, [r0, #32]
 954 0012 0020     		movs	r0, #0
 955 0014 E262     		str	r2, [r4, #44]
 956 0016 5DF8044B 		ldr	r4, [sp], #4
 957 001a 7047     		bx	lr
 958              		.size	pwm_sync_init, .-pwm_sync_init
 959              		.section	.text.pwm_sync_unlock_update,"ax",%progbits
 960              		.align	1
 961              		.p2align 2,,3
 962              		.global	pwm_sync_unlock_update
 963              		.syntax unified
 964              		.thumb
 965              		.thumb_func
 966              		.fpu fpv4-sp-d16
 967              		.type	pwm_sync_unlock_update, %function
 968              	pwm_sync_unlock_update:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971              		@ link register save eliminated.
 972 0000 0123     		movs	r3, #1
 973 0002 8362     		str	r3, [r0, #40]
 974 0004 7047     		bx	lr
 975              		.size	pwm_sync_unlock_update, .-pwm_sync_unlock_update
 976 0006 00BF     		.section	.text.pwm_sync_change_period,"ax",%progbits
 977              		.align	1
 978              		.p2align 2,,3
 979              		.global	pwm_sync_change_period
 980              		.syntax unified
 981              		.thumb
 982              		.thumb_func
 983              		.fpu fpv4-sp-d16
 984              		.type	pwm_sync_change_period, %function
 985              	pwm_sync_change_period:
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988              		@ link register save eliminated.
 989 0000 01F00F01 		and	r1, r1, #15
 990 0004 0163     		str	r1, [r0, #48]
 991 0006 7047     		bx	lr
 992              		.size	pwm_sync_change_period, .-pwm_sync_change_period
 993              		.section	.text.pwm_sync_get_period_counter,"ax",%progbits
 994              		.align	1
 995              		.p2align 2,,3
 996              		.global	pwm_sync_get_period_counter
 997              		.syntax unified
 998              		.thumb
 999              		.thumb_func
 1000              		.fpu fpv4-sp-d16
 1001              		.type	pwm_sync_get_period_counter, %function
 1002              	pwm_sync_get_period_counter:
 1003              		@ args = 0, pretend = 0, frame = 0
 1004              		@ frame_needed = 0, uses_anonymous_args = 0
 1005              		@ link register save eliminated.
 1006 0000 C06A     		ldr	r0, [r0, #44]
 1007 0002 0001     		lsls	r0, r0, #4
 1008 0004 00F0F000 		and	r0, r0, #240
 1009 0008 7047     		bx	lr
 1010              		.size	pwm_sync_get_period_counter, .-pwm_sync_get_period_counter
 1011 000a 00BF     		.section	.text.pwm_sync_enable_interrupt,"ax",%progbits
 1012              		.align	1
 1013              		.p2align 2,,3
 1014              		.global	pwm_sync_enable_interrupt
 1015              		.syntax unified
 1016              		.thumb
 1017              		.thumb_func
 1018              		.fpu fpv4-sp-d16
 1019              		.type	pwm_sync_enable_interrupt, %function
 1020              	pwm_sync_enable_interrupt:
 1021              		@ args = 0, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023              		@ link register save eliminated.
 1024 0000 4163     		str	r1, [r0, #52]
 1025 0002 7047     		bx	lr
 1026              		.size	pwm_sync_enable_interrupt, .-pwm_sync_enable_interrupt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 19


 1027              		.section	.text.pwm_sync_disable_interrupt,"ax",%progbits
 1028              		.align	1
 1029              		.p2align 2,,3
 1030              		.global	pwm_sync_disable_interrupt
 1031              		.syntax unified
 1032              		.thumb
 1033              		.thumb_func
 1034              		.fpu fpv4-sp-d16
 1035              		.type	pwm_sync_disable_interrupt, %function
 1036              	pwm_sync_disable_interrupt:
 1037              		@ args = 0, pretend = 0, frame = 0
 1038              		@ frame_needed = 0, uses_anonymous_args = 0
 1039              		@ link register save eliminated.
 1040 0000 8163     		str	r1, [r0, #56]
 1041 0002 7047     		bx	lr
 1042              		.size	pwm_sync_disable_interrupt, .-pwm_sync_disable_interrupt
 1043              		.section	.text.pwm_enable_protect,"ax",%progbits
 1044              		.align	1
 1045              		.p2align 2,,3
 1046              		.global	pwm_enable_protect
 1047              		.syntax unified
 1048              		.thumb
 1049              		.thumb_func
 1050              		.fpu fpv4-sp-d16
 1051              		.type	pwm_enable_protect, %function
 1052              	pwm_enable_protect:
 1053              		@ args = 0, pretend = 0, frame = 0
 1054              		@ frame_needed = 0, uses_anonymous_args = 0
 1055              		@ link register save eliminated.
 1056 0000 8900     		lsls	r1, r1, #2
 1057 0002 22B9     		cbnz	r2, .L119
 1058 0004 044B     		ldr	r3, .L120
 1059 0006 0B43     		orrs	r3, r3, r1
 1060 0008 C0F8E430 		str	r3, [r0, #228]
 1061 000c 7047     		bx	lr
 1062              	.L119:
 1063 000e 034B     		ldr	r3, .L120+4
 1064 0010 0B43     		orrs	r3, r3, r1
 1065 0012 C0F8E430 		str	r3, [r0, #228]
 1066 0016 7047     		bx	lr
 1067              	.L121:
 1068              		.align	2
 1069              	.L120:
 1070 0018 024D5750 		.word	1347898626
 1071 001c 014D5750 		.word	1347898625
 1072              		.size	pwm_enable_protect, .-pwm_enable_protect
 1073              		.section	.text.pwm_disable_protect,"ax",%progbits
 1074              		.align	1
 1075              		.p2align 2,,3
 1076              		.global	pwm_disable_protect
 1077              		.syntax unified
 1078              		.thumb
 1079              		.thumb_func
 1080              		.fpu fpv4-sp-d16
 1081              		.type	pwm_disable_protect, %function
 1082              	pwm_disable_protect:
 1083              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 20


 1084              		@ frame_needed = 0, uses_anonymous_args = 0
 1085              		@ link register save eliminated.
 1086 0000 024B     		ldr	r3, .L123
 1087 0002 43EA8101 		orr	r1, r3, r1, lsl #2
 1088 0006 C0F8E410 		str	r1, [r0, #228]
 1089 000a 7047     		bx	lr
 1090              	.L124:
 1091              		.align	2
 1092              	.L123:
 1093 000c 004D5750 		.word	1347898624
 1094              		.size	pwm_disable_protect, .-pwm_disable_protect
 1095              		.section	.text.pwm_get_protect_status,"ax",%progbits
 1096              		.align	1
 1097              		.p2align 2,,3
 1098              		.global	pwm_get_protect_status
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv4-sp-d16
 1103              		.type	pwm_get_protect_status, %function
 1104              	pwm_get_protect_status:
 1105              		@ args = 0, pretend = 0, frame = 0
 1106              		@ frame_needed = 0, uses_anonymous_args = 0
 1107              		@ link register save eliminated.
 1108 0000 D0F8E830 		ldr	r3, [r0, #232]
 1109 0004 C3F30520 		ubfx	r0, r3, #8, #6
 1110 0008 03F03F02 		and	r2, r3, #63
 1111 000c C1E90002 		strd	r0, r2, [r1]
 1112 0010 13F08000 		ands	r0, r3, #128
 1113 0014 02D0     		beq	.L126
 1114 0016 1B0C     		lsrs	r3, r3, #16
 1115 0018 8B60     		str	r3, [r1, #8]
 1116 001a 0120     		movs	r0, #1
 1117              	.L126:
 1118 001c 7047     		bx	lr
 1119              		.size	pwm_get_protect_status, .-pwm_get_protect_status
 1120              		.section	.text.pwm_get_interrupt_status,"ax",%progbits
 1121              		.align	1
 1122              		.p2align 2,,3
 1123              		.global	pwm_get_interrupt_status
 1124              		.syntax unified
 1125              		.thumb
 1126              		.thumb_func
 1127              		.fpu fpv4-sp-d16
 1128              		.type	pwm_get_interrupt_status, %function
 1129              	pwm_get_interrupt_status:
 1130              		@ args = 0, pretend = 0, frame = 0
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132              		@ link register save eliminated.
 1133 0000 006C     		ldr	r0, [r0, #64]
 1134 0002 7047     		bx	lr
 1135              		.size	pwm_get_interrupt_status, .-pwm_get_interrupt_status
 1136              		.section	.text.pwm_get_interrupt_mask,"ax",%progbits
 1137              		.align	1
 1138              		.p2align 2,,3
 1139              		.global	pwm_get_interrupt_mask
 1140              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 21


 1141              		.thumb
 1142              		.thumb_func
 1143              		.fpu fpv4-sp-d16
 1144              		.type	pwm_get_interrupt_mask, %function
 1145              	pwm_get_interrupt_mask:
 1146              		@ args = 0, pretend = 0, frame = 0
 1147              		@ frame_needed = 0, uses_anonymous_args = 0
 1148              		@ link register save eliminated.
 1149 0000 C06B     		ldr	r0, [r0, #60]
 1150 0002 7047     		bx	lr
 1151              		.size	pwm_get_interrupt_mask, .-pwm_get_interrupt_mask
 1152              		.section	.text.pwm_stepper_motor_init,"ax",%progbits
 1153              		.align	1
 1154              		.p2align 2,,3
 1155              		.global	pwm_stepper_motor_init
 1156              		.syntax unified
 1157              		.thumb
 1158              		.thumb_func
 1159              		.fpu fpv4-sp-d16
 1160              		.type	pwm_stepper_motor_init, %function
 1161              	pwm_stepper_motor_init:
 1162              		@ args = 0, pretend = 0, frame = 0
 1163              		@ frame_needed = 0, uses_anonymous_args = 0
 1164              		@ link register save eliminated.
 1165 0000 30B4     		push	{r4, r5}
 1166 0002 D0F8B040 		ldr	r4, [r0, #176]
 1167 0006 4FF00115 		mov	r5, #65537
 1168 000a 8D40     		lsls	r5, r5, r1
 1169 000c 42EA0343 		orr	r3, r2, r3, lsl #16
 1170 0010 24EA0504 		bic	r4, r4, r5
 1171 0014 8B40     		lsls	r3, r3, r1
 1172 0016 2343     		orrs	r3, r3, r4
 1173 0018 C0F8B030 		str	r3, [r0, #176]
 1174 001c 30BC     		pop	{r4, r5}
 1175 001e 7047     		bx	lr
 1176              		.size	pwm_stepper_motor_init, .-pwm_stepper_motor_init
 1177              		.section	.text.pwm_channel_update_spread,"ax",%progbits
 1178              		.align	1
 1179              		.p2align 2,,3
 1180              		.global	pwm_channel_update_spread
 1181              		.syntax unified
 1182              		.thumb
 1183              		.thumb_func
 1184              		.fpu fpv4-sp-d16
 1185              		.type	pwm_channel_update_spread, %function
 1186              	pwm_channel_update_spread:
 1187              		@ args = 0, pretend = 0, frame = 0
 1188              		@ frame_needed = 0, uses_anonymous_args = 0
 1189              		@ link register save eliminated.
 1190 0000 22F07F43 		bic	r3, r2, #-16777216
 1191 0004 8A62     		str	r2, [r1, #40]
 1192 0006 C0F8A430 		str	r3, [r0, #164]
 1193 000a 7047     		bx	lr
 1194              		.size	pwm_channel_update_spread, .-pwm_channel_update_spread
 1195              		.section	.text.pwm_channel_update_additional_edge,"ax",%progbits
 1196              		.align	1
 1197              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 22


 1198              		.global	pwm_channel_update_additional_edge
 1199              		.syntax unified
 1200              		.thumb
 1201              		.thumb_func
 1202              		.fpu fpv4-sp-d16
 1203              		.type	pwm_channel_update_additional_edge, %function
 1204              	pwm_channel_update_additional_edge:
 1205              		@ args = 0, pretend = 0, frame = 0
 1206              		@ frame_needed = 0, uses_anonymous_args = 0
 1207              		@ link register save eliminated.
 1208 0000 10B4     		push	{r4}
 1209 0002 0C68     		ldr	r4, [r1]
 1210 0004 0A63     		str	r2, [r1, #48]
 1211 0006 00EB4410 		add	r0, r0, r4, lsl #5
 1212 000a 22F07F42 		bic	r2, r2, #-16777216
 1213 000e 1A43     		orrs	r2, r2, r3
 1214 0010 4B63     		str	r3, [r1, #52]
 1215 0012 5DF8044B 		ldr	r4, [sp], #4
 1216 0016 C0F80824 		str	r2, [r0, #1032]
 1217 001a 7047     		bx	lr
 1218              		.size	pwm_channel_update_additional_edge, .-pwm_channel_update_additional_edge
 1219              		.section	.text.pwm_channel_update_polarity_mode,"ax",%progbits
 1220              		.align	1
 1221              		.p2align 2,,3
 1222              		.global	pwm_channel_update_polarity_mode
 1223              		.syntax unified
 1224              		.thumb
 1225              		.thumb_func
 1226              		.fpu fpv4-sp-d16
 1227              		.type	pwm_channel_update_polarity_mode, %function
 1228              	pwm_channel_update_polarity_mode:
 1229              		@ args = 0, pretend = 0, frame = 0
 1230              		@ frame_needed = 0, uses_anonymous_args = 0
 1231              		@ link register save eliminated.
 1232 0000 10B4     		push	{r4}
 1233 0002 0C68     		ldr	r4, [r1]
 1234 0004 5AB9     		cbnz	r2, .L140
 1235 0006 2034     		adds	r4, r4, #32
 1236 0008 6401     		lsls	r4, r4, #5
 1237 000a 012B     		cmp	r3, #1
 1238 000c 8B72     		strb	r3, [r1, #10]
 1239 000e 06BF     		itte	eq
 1240 0010 4FF40073 		moveq	r3, #512
 1241 0014 0351     		streq	r3, [r0, r4]
 1242 0016 0251     		strne	r2, [r0, r4]
 1243 0018 5DF8044B 		ldr	r4, [sp], #4
 1244 001c 7047     		bx	lr
 1245              	.L140:
 1246 001e 2034     		adds	r4, r4, #32
 1247 0020 6401     		lsls	r4, r4, #5
 1248 0022 4FF40053 		mov	r3, #8192
 1249 0026 0351     		str	r3, [r0, r4]
 1250 0028 5DF8044B 		ldr	r4, [sp], #4
 1251 002c 7047     		bx	lr
 1252              		.size	pwm_channel_update_polarity_mode, .-pwm_channel_update_polarity_mode
 1253 002e 00BF     		.section	.rodata
 1254              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cckdV61S.s 			page 23


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
 1279              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
