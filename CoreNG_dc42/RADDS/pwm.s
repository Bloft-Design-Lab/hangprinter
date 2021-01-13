ARM GAS  /tmp/ccBf1jW9.s 			page 1


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
  11              		.file	"pwm.c"
  12              		.section	.text.pwm_clocks_generate,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	pwm_clocks_generate, %function
  20              	pwm_clocks_generate:
  21              		@ args = 0, pretend = 0, frame = 48
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  24 0002 0024     		movs	r4, #0
  25 0004 8DB0     		sub	sp, sp, #52
  26 0006 104E     		ldr	r6, .L8
  27 0008 01AD     		add	r5, sp, #4
  28 000a 8646     		mov	lr, r0
  29 000c 0F46     		mov	r7, r1
  30 000e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
  31 0010 0FC5     		stmia	r5!, {r0, r1, r2, r3}
  32 0012 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
  33 0014 0FC5     		stmia	r5!, {r0, r1, r2, r3}
  34 0016 96E80700 		ldm	r6, {r0, r1, r2}
  35 001a 85E80700 		stm	r5, {r0, r1, r2}
  36 001e 01AB     		add	r3, sp, #4
  37              	.L3:
  38 0020 53F8040B 		ldr	r0, [r3], #4
  39 0024 B7FBF0F0 		udiv	r0, r7, r0
  40 0028 B0FBFEF0 		udiv	r0, r0, lr
  41 002c B0F5807F 		cmp	r0, #256
  42 0030 06D9     		bls	.L2
  43 0032 0134     		adds	r4, r4, #1
  44 0034 0B2C     		cmp	r4, #11
  45 0036 F3D1     		bne	.L3
  46 0038 4FF6FF70 		movw	r0, #65535
  47 003c 0DB0     		add	sp, sp, #52
  48              		@ sp needed
  49 003e F0BD     		pop	{r4, r5, r6, r7, pc}
  50              	.L2:
  51 0040 40EA0420 		orr	r0, r0, r4, lsl #8
  52 0044 0DB0     		add	sp, sp, #52
  53              		@ sp needed
  54 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
  55              	.L9:
  56              		.align	2
  57              	.L8:
ARM GAS  /tmp/ccBf1jW9.s 			page 2


  58 0048 00000000 		.word	.LANCHOR0
  59              		.size	pwm_clocks_generate, .-pwm_clocks_generate
  60              		.section	.text.pwm_init,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	pwm_init
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu softvfp
  68              		.type	pwm_init, %function
  69              	pwm_init:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 70B5     		push	{r4, r5, r6, lr}
  73 0002 0C68     		ldr	r4, [r1]
  74 0004 0D46     		mov	r5, r1
  75 0006 0646     		mov	r6, r0
  76 0008 44B1     		cbz	r4, .L11
  77 000a 2046     		mov	r0, r4
  78 000c 8968     		ldr	r1, [r1, #8]
  79 000e FFF7FEFF 		bl	pwm_clocks_generate
  80 0012 4FF6FF73 		movw	r3, #65535
  81 0016 9842     		cmp	r0, r3
  82 0018 0446     		mov	r4, r0
  83 001a 0CD0     		beq	.L10
  84              	.L11:
  85 001c 6868     		ldr	r0, [r5, #4]
  86 001e 40B1     		cbz	r0, .L13
  87 0020 A968     		ldr	r1, [r5, #8]
  88 0022 FFF7FEFF 		bl	pwm_clocks_generate
  89 0026 4FF6FF73 		movw	r3, #65535
  90 002a 9842     		cmp	r0, r3
  91 002c 05D0     		beq	.L14
  92 002e 44EA0044 		orr	r4, r4, r0, lsl #16
  93              	.L13:
  94 0032 3460     		str	r4, [r6]
  95 0034 0024     		movs	r4, #0
  96              	.L10:
  97 0036 2046     		mov	r0, r4
  98 0038 70BD     		pop	{r4, r5, r6, pc}
  99              	.L14:
 100 003a 0446     		mov	r4, r0
 101 003c FBE7     		b	.L10
 102              		.size	pwm_init, .-pwm_init
 103 003e 00BF     		.section	.text.pwm_channel_init,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	pwm_channel_init
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu softvfp
 111              		.type	pwm_channel_init, %function
 112              	pwm_channel_init:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccBf1jW9.s 			page 3


 115              		@ link register save eliminated.
 116 0000 4B68     		ldr	r3, [r1, #4]
 117 0002 8A8A     		ldrh	r2, [r1, #20]
 118 0004 F0B4     		push	{r4, r5, r6, r7}
 119 0006 03F00F03 		and	r3, r3, #15
 120 000a 0C89     		ldrh	r4, [r1, #8]
 121 000c 1343     		orrs	r3, r3, r2
 122 000e 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 123 0010 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 124 0012 2343     		orrs	r3, r3, r4
 125 0014 CE7D     		ldrb	r6, [r1, #23]	@ zero_extendqisi2
 126 0016 43EA4223 		orr	r3, r3, r2, lsl #9
 127 001a 0C7E     		ldrb	r4, [r1, #24]	@ zero_extendqisi2
 128 001c 0A68     		ldr	r2, [r1]
 129 001e 43EA0543 		orr	r3, r3, r5, lsl #16
 130 0022 CF68     		ldr	r7, [r1, #12]
 131 0024 43EA4643 		orr	r3, r3, r6, lsl #17
 132 0028 0E69     		ldr	r6, [r1, #16]
 133 002a 43EA8443 		orr	r3, r3, r4, lsl #18
 134 002e 00EB4214 		add	r4, r0, r2, lsl #5
 135 0032 C4F80032 		str	r3, [r4, #512]
 136 0036 C4F80472 		str	r7, [r4, #516]
 137 003a C4F80C62 		str	r6, [r4, #524]
 138 003e 1DB1     		cbz	r5, .L23
 139 0040 D1F81A30 		ldr	r3, [r1, #26]	@ unaligned
 140 0044 C4F81832 		str	r3, [r4, #536]
 141              	.L23:
 142 0048 4FF00113 		mov	r3, #65537
 143 004c 9340     		lsls	r3, r3, r2
 144 004e DB43     		mvns	r3, r3
 145 0050 0126     		movs	r6, #1
 146 0052 CF7F     		ldrb	r7, [r1, #31]	@ zero_extendqisi2
 147 0054 8C7F     		ldrb	r4, [r1, #30]	@ zero_extendqisi2
 148 0056 856C     		ldr	r5, [r0, #72]
 149 0058 9740     		lsls	r7, r7, r2
 150 005a 9440     		lsls	r4, r4, r2
 151 005c 1D40     		ands	r5, r5, r3
 152 005e 44EA0744 		orr	r4, r4, r7, lsl #16
 153 0062 2C43     		orrs	r4, r4, r5
 154 0064 8464     		str	r4, [r0, #72]
 155 0066 91F82170 		ldrb	r7, [r1, #33]	@ zero_extendqisi2
 156 006a 91F82040 		ldrb	r4, [r1, #32]	@ zero_extendqisi2
 157 006e 456C     		ldr	r5, [r0, #68]
 158 0070 9440     		lsls	r4, r4, r2
 159 0072 9740     		lsls	r7, r7, r2
 160 0074 1D40     		ands	r5, r5, r3
 161 0076 44EA0743 		orr	r3, r4, r7, lsl #16
 162 007a 91F82240 		ldrb	r4, [r1, #34]	@ zero_extendqisi2
 163 007e 2B43     		orrs	r3, r3, r5
 164 0080 4364     		str	r3, [r0, #68]
 165 0082 06FA02F3 		lsl	r3, r6, r2
 166 0086 3CB3     		cbz	r4, .L24
 167 0088 046A     		ldr	r4, [r0, #32]
 168 008a 1C43     		orrs	r4, r4, r3
 169 008c 0462     		str	r4, [r0, #32]
 170              	.L25:
 171 008e 91F82440 		ldrb	r4, [r1, #36]	@ zero_extendqisi2
ARM GAS  /tmp/ccBf1jW9.s 			page 4


 172 0092 012C     		cmp	r4, #1
 173 0094 846E     		ldr	r4, [r0, #104]
 174 0096 0CBF     		ite	eq
 175 0098 1C43     		orreq	r4, r4, r3
 176 009a 9C43     		bicne	r4, r4, r3
 177 009c 8466     		str	r4, [r0, #104]
 178 009e 91F82540 		ldrb	r4, [r1, #37]	@ zero_extendqisi2
 179 00a2 012C     		cmp	r4, #1
 180 00a4 846E     		ldr	r4, [r0, #104]
 181 00a6 0CBF     		ite	eq
 182 00a8 44EA0343 		orreq	r3, r4, r3, lsl #16
 183 00ac 24EA0343 		bicne	r3, r4, r3, lsl #16
 184 00b0 032A     		cmp	r2, #3
 185 00b2 8366     		str	r3, [r0, #104]
 186 00b4 4FF0FF04 		mov	r4, #255
 187 00b8 13D9     		bls	.L36
 188 00ba 043A     		subs	r2, r2, #4
 189 00bc 91F82330 		ldrb	r3, [r1, #35]	@ zero_extendqisi2
 190 00c0 D200     		lsls	r2, r2, #3
 191 00c2 016F     		ldr	r1, [r0, #112]
 192 00c4 9440     		lsls	r4, r4, r2
 193 00c6 03FA02F2 		lsl	r2, r3, r2
 194 00ca 21EA0403 		bic	r3, r1, r4
 195 00ce 1A43     		orrs	r2, r2, r3
 196 00d0 0267     		str	r2, [r0, #112]
 197 00d2 F0BC     		pop	{r4, r5, r6, r7}
 198 00d4 0020     		movs	r0, #0
 199 00d6 7047     		bx	lr
 200              	.L24:
 201 00d8 046A     		ldr	r4, [r0, #32]
 202 00da 24EA0304 		bic	r4, r4, r3
 203 00de 0462     		str	r4, [r0, #32]
 204 00e0 D5E7     		b	.L25
 205              	.L36:
 206 00e2 D500     		lsls	r5, r2, #3
 207 00e4 C36E     		ldr	r3, [r0, #108]
 208 00e6 91F82320 		ldrb	r2, [r1, #35]	@ zero_extendqisi2
 209 00ea 04FA05F1 		lsl	r1, r4, r5
 210 00ee AA40     		lsls	r2, r2, r5
 211 00f0 23EA0103 		bic	r3, r3, r1
 212 00f4 1A43     		orrs	r2, r2, r3
 213 00f6 C266     		str	r2, [r0, #108]
 214 00f8 F0BC     		pop	{r4, r5, r6, r7}
 215 00fa 0020     		movs	r0, #0
 216 00fc 7047     		bx	lr
 217              		.size	pwm_channel_init, .-pwm_channel_init
 218 00fe 00BF     		.section	.text.pwm_channel_update_period,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	pwm_channel_update_period
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu softvfp
 226              		.type	pwm_channel_update_period, %function
 227              	pwm_channel_update_period:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccBf1jW9.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 CB68     		ldr	r3, [r1, #12]
 232 0002 9342     		cmp	r3, r2
 233 0004 02D9     		bls	.L40
 234 0006 4FF6FF70 		movw	r0, #65535
 235 000a 7047     		bx	lr
 236              	.L40:
 237 000c 0B68     		ldr	r3, [r1]
 238 000e 0A61     		str	r2, [r1, #16]
 239 0010 00EB4310 		add	r0, r0, r3, lsl #5
 240 0014 C0F81022 		str	r2, [r0, #528]
 241 0018 0020     		movs	r0, #0
 242 001a 7047     		bx	lr
 243              		.size	pwm_channel_update_period, .-pwm_channel_update_period
 244              		.section	.text.pwm_channel_update_duty,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	pwm_channel_update_duty
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu softvfp
 252              		.type	pwm_channel_update_duty, %function
 253              	pwm_channel_update_duty:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 0B69     		ldr	r3, [r1, #16]
 258 0002 9342     		cmp	r3, r2
 259 0004 02D2     		bcs	.L44
 260 0006 4FF6FF70 		movw	r0, #65535
 261 000a 7047     		bx	lr
 262              	.L44:
 263 000c 0B68     		ldr	r3, [r1]
 264 000e CA60     		str	r2, [r1, #12]
 265 0010 00EB4310 		add	r0, r0, r3, lsl #5
 266 0014 C0F80822 		str	r2, [r0, #520]
 267 0018 0020     		movs	r0, #0
 268 001a 7047     		bx	lr
 269              		.size	pwm_channel_update_duty, .-pwm_channel_update_duty
 270              		.section	.text.pwm_channel_get_counter,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	pwm_channel_get_counter
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu softvfp
 278              		.type	pwm_channel_get_counter, %function
 279              	pwm_channel_get_counter:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 0B68     		ldr	r3, [r1]
 284 0002 00EB4310 		add	r0, r0, r3, lsl #5
 285 0006 D0F81402 		ldr	r0, [r0, #532]
ARM GAS  /tmp/ccBf1jW9.s 			page 6


 286 000a 7047     		bx	lr
 287              		.size	pwm_channel_get_counter, .-pwm_channel_get_counter
 288              		.section	.text.pwm_channel_enable,"ax",%progbits
 289              		.align	1
 290              		.p2align 2,,3
 291              		.global	pwm_channel_enable
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu softvfp
 296              		.type	pwm_channel_enable, %function
 297              	pwm_channel_enable:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0000 0123     		movs	r3, #1
 302 0002 03FA01F1 		lsl	r1, r3, r1
 303 0006 4160     		str	r1, [r0, #4]
 304 0008 7047     		bx	lr
 305              		.size	pwm_channel_enable, .-pwm_channel_enable
 306 000a 00BF     		.section	.text.pwm_channel_disable,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	pwm_channel_disable
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu softvfp
 314              		.type	pwm_channel_disable, %function
 315              	pwm_channel_disable:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 0123     		movs	r3, #1
 320 0002 03FA01F1 		lsl	r1, r3, r1
 321 0006 8160     		str	r1, [r0, #8]
 322 0008 7047     		bx	lr
 323              		.size	pwm_channel_disable, .-pwm_channel_disable
 324 000a 00BF     		.section	.text.pwm_channel_get_status,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	pwm_channel_get_status
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu softvfp
 332              		.type	pwm_channel_get_status, %function
 333              	pwm_channel_get_status:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 C068     		ldr	r0, [r0, #12]
 338 0002 7047     		bx	lr
 339              		.size	pwm_channel_get_status, .-pwm_channel_get_status
 340              		.section	.text.pwm_channel_get_interrupt_status,"ax",%progbits
 341              		.align	1
 342              		.p2align 2,,3
ARM GAS  /tmp/ccBf1jW9.s 			page 7


 343              		.global	pwm_channel_get_interrupt_status
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu softvfp
 348              		.type	pwm_channel_get_interrupt_status, %function
 349              	pwm_channel_get_interrupt_status:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              		@ link register save eliminated.
 353 0000 C069     		ldr	r0, [r0, #28]
 354 0002 7047     		bx	lr
 355              		.size	pwm_channel_get_interrupt_status, .-pwm_channel_get_interrupt_status
 356              		.section	.text.pwm_channel_get_interrupt_mask,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	pwm_channel_get_interrupt_mask
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu softvfp
 364              		.type	pwm_channel_get_interrupt_mask, %function
 365              	pwm_channel_get_interrupt_mask:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369 0000 8069     		ldr	r0, [r0, #24]
 370 0002 7047     		bx	lr
 371              		.size	pwm_channel_get_interrupt_mask, .-pwm_channel_get_interrupt_mask
 372              		.section	.text.pwm_channel_enable_interrupt,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	pwm_channel_enable_interrupt
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu softvfp
 380              		.type	pwm_channel_enable_interrupt, %function
 381              	pwm_channel_enable_interrupt:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384              		@ link register save eliminated.
 385 0000 0123     		movs	r3, #1
 386 0002 1032     		adds	r2, r2, #16
 387 0004 03FA02F2 		lsl	r2, r3, r2
 388 0008 03FA01F1 		lsl	r1, r3, r1
 389 000c 0A43     		orrs	r2, r2, r1
 390 000e 0261     		str	r2, [r0, #16]
 391 0010 7047     		bx	lr
 392              		.size	pwm_channel_enable_interrupt, .-pwm_channel_enable_interrupt
 393 0012 00BF     		.section	.text.pwm_channel_disable_interrupt,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	pwm_channel_disable_interrupt
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  /tmp/ccBf1jW9.s 			page 8


 400              		.fpu softvfp
 401              		.type	pwm_channel_disable_interrupt, %function
 402              	pwm_channel_disable_interrupt:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 0123     		movs	r3, #1
 407 0002 1032     		adds	r2, r2, #16
 408 0004 03FA02F2 		lsl	r2, r3, r2
 409 0008 03FA01F1 		lsl	r1, r3, r1
 410 000c 0A43     		orrs	r2, r2, r1
 411 000e 4261     		str	r2, [r0, #20]
 412 0010 7047     		bx	lr
 413              		.size	pwm_channel_disable_interrupt, .-pwm_channel_disable_interrupt
 414 0012 00BF     		.section	.text.pwm_channel_update_output,"ax",%progbits
 415              		.align	1
 416              		.p2align 2,,3
 417              		.global	pwm_channel_update_output
 418              		.syntax unified
 419              		.thumb
 420              		.thumb_func
 421              		.fpu softvfp
 422              		.type	pwm_channel_update_output, %function
 423              	pwm_channel_update_output:
 424              		@ args = 0, pretend = 0, frame = 0
 425              		@ frame_needed = 0, uses_anonymous_args = 0
 426 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 427 0002 4FF00114 		mov	r4, #65537
 428 0006 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 429 000a 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 430 000e 0D68     		ldr	r5, [r1]
 431 0010 476C     		ldr	r7, [r0, #68]
 432 0012 AC40     		lsls	r4, r4, r5
 433 0014 4CEA0E46 		orr	r6, ip, lr, lsl #16
 434 0018 27EA0407 		bic	r7, r7, r4
 435 001c AE40     		lsls	r6, r6, r5
 436 001e 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 437 0020 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 438 0022 3E43     		orrs	r6, r6, r7
 439 0024 81F820C0 		strb	ip, [r1, #32]
 440 0028 8C77     		strb	r4, [r1, #30]
 441 002a CA77     		strb	r2, [r1, #31]
 442 002c 81F821E0 		strb	lr, [r1, #33]
 443 0030 4664     		str	r6, [r0, #68]
 444 0032 82F00101 		eor	r1, r2, #1
 445 0036 63B9     		cbnz	r3, .L57
 446 0038 84F00103 		eor	r3, r4, #1
 447 003c A940     		lsls	r1, r1, r5
 448 003e AA40     		lsls	r2, r2, r5
 449 0040 AB40     		lsls	r3, r3, r5
 450 0042 AC40     		lsls	r4, r4, r5
 451 0044 43EA0143 		orr	r3, r3, r1, lsl #16
 452 0048 44EA0244 		orr	r4, r4, r2, lsl #16
 453 004c C464     		str	r4, [r0, #76]
 454 004e 0365     		str	r3, [r0, #80]
 455 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 456              	.L57:
ARM GAS  /tmp/ccBf1jW9.s 			page 9


 457 0052 84F00103 		eor	r3, r4, #1
 458 0056 A940     		lsls	r1, r1, r5
 459 0058 AA40     		lsls	r2, r2, r5
 460 005a AB40     		lsls	r3, r3, r5
 461 005c AC40     		lsls	r4, r4, r5
 462 005e 43EA0143 		orr	r3, r3, r1, lsl #16
 463 0062 44EA0244 		orr	r4, r4, r2, lsl #16
 464 0066 4465     		str	r4, [r0, #84]
 465 0068 8365     		str	r3, [r0, #88]
 466 006a F0BD     		pop	{r4, r5, r6, r7, pc}
 467              		.size	pwm_channel_update_output, .-pwm_channel_update_output
 468              		.section	.text.pwm_channel_update_dead_time,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	pwm_channel_update_dead_time
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu softvfp
 476              		.type	pwm_channel_update_dead_time, %function
 477              	pwm_channel_update_dead_time:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480              		@ link register save eliminated.
 481 0000 30B4     		push	{r4, r5}
 482 0002 0C68     		ldr	r4, [r1]
 483 0004 42EA0345 		orr	r5, r2, r3, lsl #16
 484 0008 00EB4410 		add	r0, r0, r4, lsl #5
 485 000c 4A83     		strh	r2, [r1, #26]	@ movhi
 486 000e 8B83     		strh	r3, [r1, #28]	@ movhi
 487 0010 C0F81C52 		str	r5, [r0, #540]
 488 0014 30BC     		pop	{r4, r5}
 489 0016 7047     		bx	lr
 490              		.size	pwm_channel_update_dead_time, .-pwm_channel_update_dead_time
 491              		.section	.text.pwm_fault_init,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	pwm_fault_init
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu softvfp
 499              		.type	pwm_fault_init, %function
 500              	pwm_fault_init:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 10B4     		push	{r4}
 505 0002 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 506 0004 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 507 0006 012C     		cmp	r4, #1
 508 0008 C36D     		ldr	r3, [r0, #92]
 509 000a 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 510 000c 0CBF     		ite	eq
 511 000e 1343     		orreq	r3, r3, r2
 512 0010 9343     		bicne	r3, r3, r2
 513 0012 4CB1     		cbz	r4, .L63
ARM GAS  /tmp/ccBf1jW9.s 			page 10


 514 0014 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 515 0016 43EA0223 		orr	r3, r3, r2, lsl #8
 516 001a 51B9     		cbnz	r1, .L68
 517              	.L65:
 518 001c 23EA0243 		bic	r3, r3, r2, lsl #16
 519 0020 C365     		str	r3, [r0, #92]
 520 0022 10BC     		pop	{r4}
 521 0024 0020     		movs	r0, #0
 522 0026 7047     		bx	lr
 523              	.L63:
 524 0028 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 525 002a 23EA0223 		bic	r3, r3, r2, lsl #8
 526 002e 0029     		cmp	r1, #0
 527 0030 F4D0     		beq	.L65
 528              	.L68:
 529 0032 43EA0243 		orr	r3, r3, r2, lsl #16
 530 0036 C365     		str	r3, [r0, #92]
 531 0038 10BC     		pop	{r4}
 532 003a 0020     		movs	r0, #0
 533 003c 7047     		bx	lr
 534              		.size	pwm_fault_init, .-pwm_fault_init
 535 003e 00BF     		.section	.text.pwm_fault_get_status,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	pwm_fault_get_status
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu softvfp
 543              		.type	pwm_fault_get_status, %function
 544              	pwm_fault_get_status:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 006E     		ldr	r0, [r0, #96]
 549 0002 C0F30720 		ubfx	r0, r0, #8, #8
 550 0006 7047     		bx	lr
 551              		.size	pwm_fault_get_status, .-pwm_fault_get_status
 552              		.section	.text.pwm_fault_get_input_level,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	pwm_fault_get_input_level
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu softvfp
 560              		.type	pwm_fault_get_input_level, %function
 561              	pwm_fault_get_input_level:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565 0000 006E     		ldr	r0, [r0, #96]
 566 0002 C840     		lsrs	r0, r0, r1
 567 0004 00F00100 		and	r0, r0, #1
 568 0008 7047     		bx	lr
 569              		.size	pwm_fault_get_input_level, .-pwm_fault_get_input_level
 570 000a 00BF     		.section	.text.pwm_fault_clear_status,"ax",%progbits
ARM GAS  /tmp/ccBf1jW9.s 			page 11


 571              		.align	1
 572              		.p2align 2,,3
 573              		.global	pwm_fault_clear_status
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu softvfp
 578              		.type	pwm_fault_clear_status, %function
 579              	pwm_fault_clear_status:
 580              		@ args = 0, pretend = 0, frame = 0
 581              		@ frame_needed = 0, uses_anonymous_args = 0
 582              		@ link register save eliminated.
 583 0000 4166     		str	r1, [r0, #100]
 584 0002 7047     		bx	lr
 585              		.size	pwm_fault_clear_status, .-pwm_fault_clear_status
 586              		.section	.text.pwm_cmp_init,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	pwm_cmp_init
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu softvfp
 594              		.type	pwm_cmp_init, %function
 595              	pwm_cmp_init:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 599 0002 4D69     		ldr	r5, [r1, #20]
 600 0004 0B69     		ldr	r3, [r1, #16]
 601 0006 0A68     		ldr	r2, [r1]
 602 0008 8C68     		ldr	r4, [r1, #8]
 603 000a 2E02     		lsls	r6, r5, #8
 604 000c 8D69     		ldr	r5, [r1, #24]
 605 000e 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 606 0010 1B01     		lsls	r3, r3, #4
 607 0012 06F47066 		and	r6, r6, #3840
 608 0016 02F1130E 		add	lr, r2, #19
 609 001a DBB2     		uxtb	r3, r3
 610 001c 2D04     		lsls	r5, r5, #16
 611 001e 24F07F44 		bic	r4, r4, #-16777216
 612 0022 3343     		orrs	r3, r3, r6
 613 0024 05F47025 		and	r5, r5, #983040
 614 0028 44EA0764 		orr	r4, r4, r7, lsl #24
 615 002c 1601     		lsls	r6, r2, #4
 616 002e 4FEA0E1E 		lsl	lr, lr, #4
 617 0032 2B43     		orrs	r3, r3, r5
 618 0034 0D7F     		ldrb	r5, [r1, #28]	@ zero_extendqisi2
 619 0036 40F80E40 		str	r4, [r0, lr]
 620 003a 8419     		adds	r4, r0, r6
 621 003c C4F83831 		str	r3, [r4, #312]
 622 0040 0124     		movs	r4, #1
 623 0042 C36F     		ldr	r3, [r0, #124]
 624 0044 04FA02F2 		lsl	r2, r4, r2
 625 0048 9DB1     		cbz	r5, .L73
 626 004a 1343     		orrs	r3, r3, r2
 627 004c C367     		str	r3, [r0, #124]
ARM GAS  /tmp/ccBf1jW9.s 			page 12


 628 004e 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 629 0050 ABB1     		cbz	r3, .L75
 630              	.L81:
 631 0052 D0F88030 		ldr	r3, [r0, #128]
 632 0056 1A43     		orrs	r2, r2, r3
 633 0058 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 634 005a C0F88020 		str	r2, [r0, #128]
 635 005e 3044     		add	r0, r0, r6
 636 0060 BBB9     		cbnz	r3, .L80
 637              	.L77:
 638 0062 D0F83831 		ldr	r3, [r0, #312]
 639 0066 23F00103 		bic	r3, r3, #1
 640 006a C0F83831 		str	r3, [r0, #312]
 641 006e 0020     		movs	r0, #0
 642 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 643              	.L73:
 644 0072 23EA0203 		bic	r3, r3, r2
 645 0076 C367     		str	r3, [r0, #124]
 646 0078 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 647 007a 002B     		cmp	r3, #0
 648 007c E9D1     		bne	.L81
 649              	.L75:
 650 007e D0F88030 		ldr	r3, [r0, #128]
 651 0082 23EA0202 		bic	r2, r3, r2
 652 0086 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 653 0088 C0F88020 		str	r2, [r0, #128]
 654 008c 3044     		add	r0, r0, r6
 655 008e 002B     		cmp	r3, #0
 656 0090 E7D0     		beq	.L77
 657              	.L80:
 658 0092 D0F83831 		ldr	r3, [r0, #312]
 659 0096 43F00103 		orr	r3, r3, #1
 660 009a C0F83831 		str	r3, [r0, #312]
 661 009e 0020     		movs	r0, #0
 662 00a0 F0BD     		pop	{r4, r5, r6, r7, pc}
 663              		.size	pwm_cmp_init, .-pwm_cmp_init
 664 00a2 00BF     		.section	.text.pwm_cmp_change_setting,"ax",%progbits
 665              		.align	1
 666              		.p2align 2,,3
 667              		.global	pwm_cmp_change_setting
 668              		.syntax unified
 669              		.thumb
 670              		.thumb_func
 671              		.fpu softvfp
 672              		.type	pwm_cmp_change_setting, %function
 673              	pwm_cmp_change_setting:
 674              		@ args = 0, pretend = 0, frame = 0
 675              		@ frame_needed = 0, uses_anonymous_args = 0
 676              		@ link register save eliminated.
 677 0000 4A69     		ldr	r2, [r1, #20]
 678 0002 0B69     		ldr	r3, [r1, #16]
 679 0004 F0B4     		push	{r4, r5, r6, r7}
 680 0006 8D69     		ldr	r5, [r1, #24]
 681 0008 8C68     		ldr	r4, [r1, #8]
 682 000a 1602     		lsls	r6, r2, #8
 683 000c 1B01     		lsls	r3, r3, #4
 684 000e 0A68     		ldr	r2, [r1]
ARM GAS  /tmp/ccBf1jW9.s 			page 13


 685 0010 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 686 0012 06F47066 		and	r6, r6, #3840
 687 0016 DBB2     		uxtb	r3, r3
 688 0018 2D04     		lsls	r5, r5, #16
 689 001a 3343     		orrs	r3, r3, r6
 690 001c 05F47025 		and	r5, r5, #983040
 691 0020 02F11306 		add	r6, r2, #19
 692 0024 24F07F44 		bic	r4, r4, #-16777216
 693 0028 2B43     		orrs	r3, r3, r5
 694 002a 44EA0764 		orr	r4, r4, r7, lsl #24
 695 002e 1501     		lsls	r5, r2, #4
 696 0030 00EB0616 		add	r6, r0, r6, lsl #4
 697 0034 0F7F     		ldrb	r7, [r1, #28]	@ zero_extendqisi2
 698 0036 7460     		str	r4, [r6, #4]
 699 0038 4419     		adds	r4, r0, r5
 700 003a C4F83C31 		str	r3, [r4, #316]
 701 003e 0124     		movs	r4, #1
 702 0040 C36F     		ldr	r3, [r0, #124]
 703 0042 04FA02F2 		lsl	r2, r4, r2
 704 0046 A7B1     		cbz	r7, .L83
 705 0048 1343     		orrs	r3, r3, r2
 706 004a C367     		str	r3, [r0, #124]
 707 004c 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 708 004e B3B1     		cbz	r3, .L85
 709              	.L91:
 710 0050 D0F88030 		ldr	r3, [r0, #128]
 711 0054 1A43     		orrs	r2, r2, r3
 712 0056 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 713 0058 C0F88020 		str	r2, [r0, #128]
 714 005c 2844     		add	r0, r0, r5
 715 005e C3B9     		cbnz	r3, .L90
 716              	.L87:
 717 0060 F0BC     		pop	{r4, r5, r6, r7}
 718 0062 D0F83C31 		ldr	r3, [r0, #316]
 719 0066 23F00103 		bic	r3, r3, #1
 720 006a C0F83C31 		str	r3, [r0, #316]
 721 006e 0020     		movs	r0, #0
 722 0070 7047     		bx	lr
 723              	.L83:
 724 0072 23EA0203 		bic	r3, r3, r2
 725 0076 C367     		str	r3, [r0, #124]
 726 0078 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 727 007a 002B     		cmp	r3, #0
 728 007c E8D1     		bne	.L91
 729              	.L85:
 730 007e D0F88030 		ldr	r3, [r0, #128]
 731 0082 23EA0202 		bic	r2, r3, r2
 732 0086 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 733 0088 C0F88020 		str	r2, [r0, #128]
 734 008c 2844     		add	r0, r0, r5
 735 008e 002B     		cmp	r3, #0
 736 0090 E6D0     		beq	.L87
 737              	.L90:
 738 0092 F0BC     		pop	{r4, r5, r6, r7}
 739 0094 D0F83C31 		ldr	r3, [r0, #316]
 740 0098 43F00103 		orr	r3, r3, #1
 741 009c C0F83C31 		str	r3, [r0, #316]
ARM GAS  /tmp/ccBf1jW9.s 			page 14


 742 00a0 0020     		movs	r0, #0
 743 00a2 7047     		bx	lr
 744              		.size	pwm_cmp_change_setting, .-pwm_cmp_change_setting
 745              		.section	.text.pwm_cmp_get_period_counter,"ax",%progbits
 746              		.align	1
 747              		.p2align 2,,3
 748              		.global	pwm_cmp_get_period_counter
 749              		.syntax unified
 750              		.thumb
 751              		.thumb_func
 752              		.fpu softvfp
 753              		.type	pwm_cmp_get_period_counter, %function
 754              	pwm_cmp_get_period_counter:
 755              		@ args = 0, pretend = 0, frame = 0
 756              		@ frame_needed = 0, uses_anonymous_args = 0
 757              		@ link register save eliminated.
 758 0000 00EB0111 		add	r1, r0, r1, lsl #4
 759 0004 D1F83801 		ldr	r0, [r1, #312]
 760 0008 00F00F00 		and	r0, r0, #15
 761 000c 7047     		bx	lr
 762              		.size	pwm_cmp_get_period_counter, .-pwm_cmp_get_period_counter
 763 000e 00BF     		.section	.text.pwm_cmp_get_update_counter,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	pwm_cmp_get_update_counter
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	pwm_cmp_get_update_counter, %function
 772              	pwm_cmp_get_update_counter:
 773              		@ args = 0, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775              		@ link register save eliminated.
 776 0000 00EB0111 		add	r1, r0, r1, lsl #4
 777 0004 D1F83801 		ldr	r0, [r1, #312]
 778 0008 00F00F00 		and	r0, r0, #15
 779 000c 7047     		bx	lr
 780              		.size	pwm_cmp_get_update_counter, .-pwm_cmp_get_update_counter
 781 000e 00BF     		.section	.text.pwm_cmp_enable_interrupt,"ax",%progbits
 782              		.align	1
 783              		.p2align 2,,3
 784              		.global	pwm_cmp_enable_interrupt
 785              		.syntax unified
 786              		.thumb
 787              		.thumb_func
 788              		.fpu softvfp
 789              		.type	pwm_cmp_enable_interrupt, %function
 790              	pwm_cmp_enable_interrupt:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793              		@ link register save eliminated.
 794 0000 082A     		cmp	r2, #8
 795 0002 08D0     		beq	.L97
 796 0004 102A     		cmp	r2, #16
 797 0006 00D0     		beq	.L98
 798 0008 7047     		bx	lr
ARM GAS  /tmp/ccBf1jW9.s 			page 15


 799              	.L98:
 800 000a 4FF48033 		mov	r3, #65536
 801 000e 03FA01F1 		lsl	r1, r3, r1
 802 0012 4163     		str	r1, [r0, #52]
 803 0014 7047     		bx	lr
 804              	.L97:
 805 0016 4FF48073 		mov	r3, #256
 806 001a 03FA01F1 		lsl	r1, r3, r1
 807 001e 4163     		str	r1, [r0, #52]
 808 0020 7047     		bx	lr
 809              		.size	pwm_cmp_enable_interrupt, .-pwm_cmp_enable_interrupt
 810 0022 00BF     		.section	.text.pwm_cmp_disable_interrupt,"ax",%progbits
 811              		.align	1
 812              		.p2align 2,,3
 813              		.global	pwm_cmp_disable_interrupt
 814              		.syntax unified
 815              		.thumb
 816              		.thumb_func
 817              		.fpu softvfp
 818              		.type	pwm_cmp_disable_interrupt, %function
 819              	pwm_cmp_disable_interrupt:
 820              		@ args = 0, pretend = 0, frame = 0
 821              		@ frame_needed = 0, uses_anonymous_args = 0
 822              		@ link register save eliminated.
 823 0000 082A     		cmp	r2, #8
 824 0002 08D0     		beq	.L102
 825 0004 102A     		cmp	r2, #16
 826 0006 00D0     		beq	.L103
 827 0008 7047     		bx	lr
 828              	.L103:
 829 000a 4FF48033 		mov	r3, #65536
 830 000e 03FA01F1 		lsl	r1, r3, r1
 831 0012 8163     		str	r1, [r0, #56]
 832 0014 7047     		bx	lr
 833              	.L102:
 834 0016 4FF48073 		mov	r3, #256
 835 001a 03FA01F1 		lsl	r1, r3, r1
 836 001e 8163     		str	r1, [r0, #56]
 837 0020 7047     		bx	lr
 838              		.size	pwm_cmp_disable_interrupt, .-pwm_cmp_disable_interrupt
 839 0022 00BF     		.section	.text.pwm_pdc_set_request_mode,"ax",%progbits
 840              		.align	1
 841              		.p2align 2,,3
 842              		.global	pwm_pdc_set_request_mode
 843              		.syntax unified
 844              		.thumb
 845              		.thumb_func
 846              		.fpu softvfp
 847              		.type	pwm_pdc_set_request_mode, %function
 848              	pwm_pdc_set_request_mode:
 849              		@ args = 0, pretend = 0, frame = 0
 850              		@ frame_needed = 0, uses_anonymous_args = 0
 851              		@ link register save eliminated.
 852 0000 036A     		ldr	r3, [r0, #32]
 853 0002 5205     		lsls	r2, r2, #21
 854 0004 02F46002 		and	r2, r2, #14680064
 855 0008 0A43     		orrs	r2, r2, r1
ARM GAS  /tmp/ccBf1jW9.s 			page 16


 856 000a 23F47003 		bic	r3, r3, #15728640
 857 000e 1A43     		orrs	r2, r2, r3
 858 0010 0262     		str	r2, [r0, #32]
 859 0012 7047     		bx	lr
 860              		.size	pwm_pdc_set_request_mode, .-pwm_pdc_set_request_mode
 861              		.section	.text.pwm_pdc_enable_interrupt,"ax",%progbits
 862              		.align	1
 863              		.p2align 2,,3
 864              		.global	pwm_pdc_enable_interrupt
 865              		.syntax unified
 866              		.thumb
 867              		.thumb_func
 868              		.fpu softvfp
 869              		.type	pwm_pdc_enable_interrupt, %function
 870              	pwm_pdc_enable_interrupt:
 871              		@ args = 0, pretend = 0, frame = 0
 872              		@ frame_needed = 0, uses_anonymous_args = 0
 873              		@ link register save eliminated.
 874 0000 4163     		str	r1, [r0, #52]
 875 0002 7047     		bx	lr
 876              		.size	pwm_pdc_enable_interrupt, .-pwm_pdc_enable_interrupt
 877              		.section	.text.pwm_pdc_disable_interrupt,"ax",%progbits
 878              		.align	1
 879              		.p2align 2,,3
 880              		.global	pwm_pdc_disable_interrupt
 881              		.syntax unified
 882              		.thumb
 883              		.thumb_func
 884              		.fpu softvfp
 885              		.type	pwm_pdc_disable_interrupt, %function
 886              	pwm_pdc_disable_interrupt:
 887              		@ args = 0, pretend = 0, frame = 0
 888              		@ frame_needed = 0, uses_anonymous_args = 0
 889              		@ link register save eliminated.
 890 0000 8163     		str	r1, [r0, #56]
 891 0002 7047     		bx	lr
 892              		.size	pwm_pdc_disable_interrupt, .-pwm_pdc_disable_interrupt
 893              		.section	.text.pwm_sync_init,"ax",%progbits
 894              		.align	1
 895              		.p2align 2,,3
 896              		.global	pwm_sync_init
 897              		.syntax unified
 898              		.thumb
 899              		.thumb_func
 900              		.fpu softvfp
 901              		.type	pwm_sync_init, %function
 902              	pwm_sync_init:
 903              		@ args = 0, pretend = 0, frame = 0
 904              		@ frame_needed = 0, uses_anonymous_args = 0
 905              		@ link register save eliminated.
 906 0000 10B4     		push	{r4}
 907 0002 0446     		mov	r4, r0
 908 0004 036A     		ldr	r3, [r0, #32]
 909 0006 02F00F02 		and	r2, r2, #15
 910 000a 23F44033 		bic	r3, r3, #196608
 911 000e 0B43     		orrs	r3, r3, r1
 912 0010 0362     		str	r3, [r0, #32]
ARM GAS  /tmp/ccBf1jW9.s 			page 17


 913 0012 0020     		movs	r0, #0
 914 0014 E262     		str	r2, [r4, #44]
 915 0016 10BC     		pop	{r4}
 916 0018 7047     		bx	lr
 917              		.size	pwm_sync_init, .-pwm_sync_init
 918 001a 00BF     		.section	.text.pwm_sync_unlock_update,"ax",%progbits
 919              		.align	1
 920              		.p2align 2,,3
 921              		.global	pwm_sync_unlock_update
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu softvfp
 926              		.type	pwm_sync_unlock_update, %function
 927              	pwm_sync_unlock_update:
 928              		@ args = 0, pretend = 0, frame = 0
 929              		@ frame_needed = 0, uses_anonymous_args = 0
 930              		@ link register save eliminated.
 931 0000 0123     		movs	r3, #1
 932 0002 8362     		str	r3, [r0, #40]
 933 0004 7047     		bx	lr
 934              		.size	pwm_sync_unlock_update, .-pwm_sync_unlock_update
 935 0006 00BF     		.section	.text.pwm_sync_change_period,"ax",%progbits
 936              		.align	1
 937              		.p2align 2,,3
 938              		.global	pwm_sync_change_period
 939              		.syntax unified
 940              		.thumb
 941              		.thumb_func
 942              		.fpu softvfp
 943              		.type	pwm_sync_change_period, %function
 944              	pwm_sync_change_period:
 945              		@ args = 0, pretend = 0, frame = 0
 946              		@ frame_needed = 0, uses_anonymous_args = 0
 947              		@ link register save eliminated.
 948 0000 01F00F01 		and	r1, r1, #15
 949 0004 0163     		str	r1, [r0, #48]
 950 0006 7047     		bx	lr
 951              		.size	pwm_sync_change_period, .-pwm_sync_change_period
 952              		.section	.text.pwm_sync_get_period_counter,"ax",%progbits
 953              		.align	1
 954              		.p2align 2,,3
 955              		.global	pwm_sync_get_period_counter
 956              		.syntax unified
 957              		.thumb
 958              		.thumb_func
 959              		.fpu softvfp
 960              		.type	pwm_sync_get_period_counter, %function
 961              	pwm_sync_get_period_counter:
 962              		@ args = 0, pretend = 0, frame = 0
 963              		@ frame_needed = 0, uses_anonymous_args = 0
 964              		@ link register save eliminated.
 965 0000 C06A     		ldr	r0, [r0, #44]
 966 0002 0001     		lsls	r0, r0, #4
 967 0004 00F0F000 		and	r0, r0, #240
 968 0008 7047     		bx	lr
 969              		.size	pwm_sync_get_period_counter, .-pwm_sync_get_period_counter
ARM GAS  /tmp/ccBf1jW9.s 			page 18


 970 000a 00BF     		.section	.text.pwm_sync_enable_interrupt,"ax",%progbits
 971              		.align	1
 972              		.p2align 2,,3
 973              		.global	pwm_sync_enable_interrupt
 974              		.syntax unified
 975              		.thumb
 976              		.thumb_func
 977              		.fpu softvfp
 978              		.type	pwm_sync_enable_interrupt, %function
 979              	pwm_sync_enable_interrupt:
 980              		@ args = 0, pretend = 0, frame = 0
 981              		@ frame_needed = 0, uses_anonymous_args = 0
 982              		@ link register save eliminated.
 983 0000 4163     		str	r1, [r0, #52]
 984 0002 7047     		bx	lr
 985              		.size	pwm_sync_enable_interrupt, .-pwm_sync_enable_interrupt
 986              		.section	.text.pwm_sync_disable_interrupt,"ax",%progbits
 987              		.align	1
 988              		.p2align 2,,3
 989              		.global	pwm_sync_disable_interrupt
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu softvfp
 994              		.type	pwm_sync_disable_interrupt, %function
 995              	pwm_sync_disable_interrupt:
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999 0000 8163     		str	r1, [r0, #56]
 1000 0002 7047     		bx	lr
 1001              		.size	pwm_sync_disable_interrupt, .-pwm_sync_disable_interrupt
 1002              		.section	.text.pwm_enable_protect,"ax",%progbits
 1003              		.align	1
 1004              		.p2align 2,,3
 1005              		.global	pwm_enable_protect
 1006              		.syntax unified
 1007              		.thumb
 1008              		.thumb_func
 1009              		.fpu softvfp
 1010              		.type	pwm_enable_protect, %function
 1011              	pwm_enable_protect:
 1012              		@ args = 0, pretend = 0, frame = 0
 1013              		@ frame_needed = 0, uses_anonymous_args = 0
 1014              		@ link register save eliminated.
 1015 0000 2AB9     		cbnz	r2, .L117
 1016 0002 064B     		ldr	r3, .L118
 1017 0004 43EA8101 		orr	r1, r3, r1, lsl #2
 1018 0008 C0F8E410 		str	r1, [r0, #228]
 1019 000c 7047     		bx	lr
 1020              	.L117:
 1021 000e 044B     		ldr	r3, .L118+4
 1022 0010 43EA8101 		orr	r1, r3, r1, lsl #2
 1023 0014 C0F8E410 		str	r1, [r0, #228]
 1024 0018 7047     		bx	lr
 1025              	.L119:
 1026 001a 00BF     		.align	2
ARM GAS  /tmp/ccBf1jW9.s 			page 19


 1027              	.L118:
 1028 001c 024D5750 		.word	1347898626
 1029 0020 014D5750 		.word	1347898625
 1030              		.size	pwm_enable_protect, .-pwm_enable_protect
 1031              		.section	.text.pwm_disable_protect,"ax",%progbits
 1032              		.align	1
 1033              		.p2align 2,,3
 1034              		.global	pwm_disable_protect
 1035              		.syntax unified
 1036              		.thumb
 1037              		.thumb_func
 1038              		.fpu softvfp
 1039              		.type	pwm_disable_protect, %function
 1040              	pwm_disable_protect:
 1041              		@ args = 0, pretend = 0, frame = 0
 1042              		@ frame_needed = 0, uses_anonymous_args = 0
 1043              		@ link register save eliminated.
 1044 0000 024B     		ldr	r3, .L121
 1045 0002 43EA8101 		orr	r1, r3, r1, lsl #2
 1046 0006 C0F8E410 		str	r1, [r0, #228]
 1047 000a 7047     		bx	lr
 1048              	.L122:
 1049              		.align	2
 1050              	.L121:
 1051 000c 004D5750 		.word	1347898624
 1052              		.size	pwm_disable_protect, .-pwm_disable_protect
 1053              		.section	.text.pwm_get_protect_status,"ax",%progbits
 1054              		.align	1
 1055              		.p2align 2,,3
 1056              		.global	pwm_get_protect_status
 1057              		.syntax unified
 1058              		.thumb
 1059              		.thumb_func
 1060              		.fpu softvfp
 1061              		.type	pwm_get_protect_status, %function
 1062              	pwm_get_protect_status:
 1063              		@ args = 0, pretend = 0, frame = 0
 1064              		@ frame_needed = 0, uses_anonymous_args = 0
 1065              		@ link register save eliminated.
 1066 0000 D0F8E830 		ldr	r3, [r0, #232]
 1067 0004 C3F30520 		ubfx	r0, r3, #8, #6
 1068 0008 03F03F02 		and	r2, r3, #63
 1069 000c 81E80500 		stm	r1, {r0, r2}
 1070 0010 13F08000 		ands	r0, r3, #128
 1071 0014 02D0     		beq	.L124
 1072 0016 0120     		movs	r0, #1
 1073 0018 1B0C     		lsrs	r3, r3, #16
 1074 001a 8B60     		str	r3, [r1, #8]
 1075              	.L124:
 1076 001c 7047     		bx	lr
 1077              		.size	pwm_get_protect_status, .-pwm_get_protect_status
 1078 001e 00BF     		.section	.text.pwm_get_interrupt_status,"ax",%progbits
 1079              		.align	1
 1080              		.p2align 2,,3
 1081              		.global	pwm_get_interrupt_status
 1082              		.syntax unified
 1083              		.thumb
ARM GAS  /tmp/ccBf1jW9.s 			page 20


 1084              		.thumb_func
 1085              		.fpu softvfp
 1086              		.type	pwm_get_interrupt_status, %function
 1087              	pwm_get_interrupt_status:
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 1091 0000 006C     		ldr	r0, [r0, #64]
 1092 0002 7047     		bx	lr
 1093              		.size	pwm_get_interrupt_status, .-pwm_get_interrupt_status
 1094              		.section	.text.pwm_get_interrupt_mask,"ax",%progbits
 1095              		.align	1
 1096              		.p2align 2,,3
 1097              		.global	pwm_get_interrupt_mask
 1098              		.syntax unified
 1099              		.thumb
 1100              		.thumb_func
 1101              		.fpu softvfp
 1102              		.type	pwm_get_interrupt_mask, %function
 1103              	pwm_get_interrupt_mask:
 1104              		@ args = 0, pretend = 0, frame = 0
 1105              		@ frame_needed = 0, uses_anonymous_args = 0
 1106              		@ link register save eliminated.
 1107 0000 C06B     		ldr	r0, [r0, #60]
 1108 0002 7047     		bx	lr
 1109              		.size	pwm_get_interrupt_mask, .-pwm_get_interrupt_mask
 1110              		.section	.text.pwm_stepper_motor_init,"ax",%progbits
 1111              		.align	1
 1112              		.p2align 2,,3
 1113              		.global	pwm_stepper_motor_init
 1114              		.syntax unified
 1115              		.thumb
 1116              		.thumb_func
 1117              		.fpu softvfp
 1118              		.type	pwm_stepper_motor_init, %function
 1119              	pwm_stepper_motor_init:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122              		@ link register save eliminated.
 1123 0000 30B4     		push	{r4, r5}
 1124 0002 4FF00115 		mov	r5, #65537
 1125 0006 D0F8B040 		ldr	r4, [r0, #176]
 1126 000a 8D40     		lsls	r5, r5, r1
 1127 000c 42EA0343 		orr	r3, r2, r3, lsl #16
 1128 0010 24EA0504 		bic	r4, r4, r5
 1129 0014 8B40     		lsls	r3, r3, r1
 1130 0016 2343     		orrs	r3, r3, r4
 1131 0018 C0F8B030 		str	r3, [r0, #176]
 1132 001c 30BC     		pop	{r4, r5}
 1133 001e 7047     		bx	lr
 1134              		.size	pwm_stepper_motor_init, .-pwm_stepper_motor_init
 1135              		.section	.rodata
 1136              		.align	2
 1137              		.set	.LANCHOR0,. + 0
 1138              	.LC0:
 1139 0000 01000000 		.word	1
 1140 0004 02000000 		.word	2
ARM GAS  /tmp/ccBf1jW9.s 			page 21


 1141 0008 04000000 		.word	4
 1142 000c 08000000 		.word	8
 1143 0010 10000000 		.word	16
 1144 0014 20000000 		.word	32
 1145 0018 40000000 		.word	64
 1146 001c 80000000 		.word	128
 1147 0020 00010000 		.word	256
 1148 0024 00020000 		.word	512
 1149 0028 00040000 		.word	1024
 1150              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1151              		.align	2
 1152              		.type	cpu_irq_critical_section_counter, %object
 1153              		.size	cpu_irq_critical_section_counter, 4
 1154              	cpu_irq_critical_section_counter:
 1155 0000 00000000 		.space	4
 1156              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1157              		.type	cpu_irq_prev_interrupt_state, %object
 1158              		.size	cpu_irq_prev_interrupt_state, 1
 1159              	cpu_irq_prev_interrupt_state:
 1160 0000 00       		.space	1
 1161              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
