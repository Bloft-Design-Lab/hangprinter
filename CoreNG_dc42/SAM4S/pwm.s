ARM GAS  /tmp/ccx1zNkc.s 			page 1


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
  23              		@ link register save eliminated.
  24 0000 F0B4     		push	{r4, r5, r6, r7}
  25 0002 124D     		ldr	r5, .L8
  26 0004 0746     		mov	r7, r0
  27 0006 0E46     		mov	r6, r1
  28 0008 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  29 000a 8CB0     		sub	sp, sp, #48
  30 000c 01AC     		add	r4, sp, #4
  31 000e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  32 0010 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  33 0012 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  34 0014 95E80700 		ldm	r5, {r0, r1, r2}
  35 0018 0023     		movs	r3, #0
  36 001a 84E80700 		stm	r4, {r0, r1, r2}
  37 001e 01AA     		add	r2, sp, #4
  38              	.L3:
  39 0020 52F8040B 		ldr	r0, [r2], #4
  40 0024 B6FBF0F0 		udiv	r0, r6, r0
  41 0028 B0FBF7F0 		udiv	r0, r0, r7
  42 002c B0F5807F 		cmp	r0, #256
  43 0030 07D9     		bls	.L2
  44 0032 0133     		adds	r3, r3, #1
  45 0034 0B2B     		cmp	r3, #11
  46 0036 F3D1     		bne	.L3
  47 0038 4FF6FF70 		movw	r0, #65535
  48 003c 0CB0     		add	sp, sp, #48
  49              		@ sp needed
  50 003e F0BC     		pop	{r4, r5, r6, r7}
  51 0040 7047     		bx	lr
  52              	.L2:
  53 0042 40EA0320 		orr	r0, r0, r3, lsl #8
  54 0046 0CB0     		add	sp, sp, #48
  55              		@ sp needed
  56 0048 F0BC     		pop	{r4, r5, r6, r7}
  57 004a 7047     		bx	lr
ARM GAS  /tmp/ccx1zNkc.s 			page 2


  58              	.L9:
  59              		.align	2
  60              	.L8:
  61 004c 00000000 		.word	.LANCHOR0
  62              		.size	pwm_clocks_generate, .-pwm_clocks_generate
  63              		.section	.text.pwm_init,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	pwm_init
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu softvfp
  71              		.type	pwm_init, %function
  72              	pwm_init:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 70B5     		push	{r4, r5, r6, lr}
  76 0002 0C68     		ldr	r4, [r1]
  77 0004 0D46     		mov	r5, r1
  78 0006 0646     		mov	r6, r0
  79 0008 44B1     		cbz	r4, .L11
  80 000a 2046     		mov	r0, r4
  81 000c 8968     		ldr	r1, [r1, #8]
  82 000e FFF7FEFF 		bl	pwm_clocks_generate
  83 0012 4FF6FF73 		movw	r3, #65535
  84 0016 9842     		cmp	r0, r3
  85 0018 0446     		mov	r4, r0
  86 001a 0CD0     		beq	.L10
  87              	.L11:
  88 001c 6868     		ldr	r0, [r5, #4]
  89 001e 40B1     		cbz	r0, .L13
  90 0020 A968     		ldr	r1, [r5, #8]
  91 0022 FFF7FEFF 		bl	pwm_clocks_generate
  92 0026 4FF6FF73 		movw	r3, #65535
  93 002a 9842     		cmp	r0, r3
  94 002c 05D0     		beq	.L14
  95 002e 44EA0044 		orr	r4, r4, r0, lsl #16
  96              	.L13:
  97 0032 3460     		str	r4, [r6]
  98 0034 0024     		movs	r4, #0
  99              	.L10:
 100 0036 2046     		mov	r0, r4
 101 0038 70BD     		pop	{r4, r5, r6, pc}
 102              	.L14:
 103 003a 0446     		mov	r4, r0
 104 003c FBE7     		b	.L10
 105              		.size	pwm_init, .-pwm_init
 106 003e 00BF     		.section	.text.pwm_channel_init,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	pwm_channel_init
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	pwm_channel_init, %function
ARM GAS  /tmp/ccx1zNkc.s 			page 3


 115              	pwm_channel_init:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 4B68     		ldr	r3, [r1, #4]
 120 0002 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 121 0004 F0B4     		push	{r4, r5, r6, r7}
 122 0006 8F8A     		ldrh	r7, [r1, #20]
 123 0008 0E89     		ldrh	r6, [r1, #8]
 124 000a 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 125 000c CC7D     		ldrb	r4, [r1, #23]	@ zero_extendqisi2
 126 000e 03F00F03 		and	r3, r3, #15
 127 0012 3B43     		orrs	r3, r3, r7
 128 0014 3343     		orrs	r3, r3, r6
 129 0016 43EA4223 		orr	r3, r3, r2, lsl #9
 130 001a 0A68     		ldr	r2, [r1]
 131 001c 0E7E     		ldrb	r6, [r1, #24]	@ zero_extendqisi2
 132 001e CF68     		ldr	r7, [r1, #12]
 133 0020 43EA0543 		orr	r3, r3, r5, lsl #16
 134 0024 43EA4443 		orr	r3, r3, r4, lsl #17
 135 0028 00EB4214 		add	r4, r0, r2, lsl #5
 136 002c 43EA8643 		orr	r3, r3, r6, lsl #18
 137 0030 0E69     		ldr	r6, [r1, #16]
 138 0032 C4F80032 		str	r3, [r4, #512]
 139 0036 C4F80472 		str	r7, [r4, #516]
 140 003a C4F80C62 		str	r6, [r4, #524]
 141 003e 1DB1     		cbz	r5, .L23
 142 0040 D1F81A30 		ldr	r3, [r1, #26]	@ unaligned
 143 0044 C4F81832 		str	r3, [r4, #536]
 144              	.L23:
 145 0048 CF7F     		ldrb	r7, [r1, #31]	@ zero_extendqisi2
 146 004a 8C7F     		ldrb	r4, [r1, #30]	@ zero_extendqisi2
 147 004c 856C     		ldr	r5, [r0, #72]
 148 004e 91F82160 		ldrb	r6, [r1, #33]	@ zero_extendqisi2
 149 0052 4FF00113 		mov	r3, #65537
 150 0056 9340     		lsls	r3, r3, r2
 151 0058 DB43     		mvns	r3, r3
 152 005a 9740     		lsls	r7, r7, r2
 153 005c 9440     		lsls	r4, r4, r2
 154 005e 1D40     		ands	r5, r5, r3
 155 0060 44EA0744 		orr	r4, r4, r7, lsl #16
 156 0064 2C43     		orrs	r4, r4, r5
 157 0066 8464     		str	r4, [r0, #72]
 158 0068 91F82040 		ldrb	r4, [r1, #32]	@ zero_extendqisi2
 159 006c 456C     		ldr	r5, [r0, #68]
 160 006e 91F82270 		ldrb	r7, [r1, #34]	@ zero_extendqisi2
 161 0072 9440     		lsls	r4, r4, r2
 162 0074 9640     		lsls	r6, r6, r2
 163 0076 1D40     		ands	r5, r5, r3
 164 0078 44EA0643 		orr	r3, r4, r6, lsl #16
 165 007c 2B43     		orrs	r3, r3, r5
 166 007e 0124     		movs	r4, #1
 167 0080 4364     		str	r3, [r0, #68]
 168 0082 04FA02F3 		lsl	r3, r4, r2
 169 0086 046A     		ldr	r4, [r0, #32]
 170 0088 17B3     		cbz	r7, .L24
 171 008a 1C43     		orrs	r4, r4, r3
ARM GAS  /tmp/ccx1zNkc.s 			page 4


 172 008c 0462     		str	r4, [r0, #32]
 173              	.L25:
 174 008e 91F82440 		ldrb	r4, [r1, #36]	@ zero_extendqisi2
 175 0092 012C     		cmp	r4, #1
 176 0094 846E     		ldr	r4, [r0, #104]
 177 0096 0CBF     		ite	eq
 178 0098 1C43     		orreq	r4, r4, r3
 179 009a 9C43     		bicne	r4, r4, r3
 180 009c 8466     		str	r4, [r0, #104]
 181 009e 91F82540 		ldrb	r4, [r1, #37]	@ zero_extendqisi2
 182 00a2 012C     		cmp	r4, #1
 183 00a4 846E     		ldr	r4, [r0, #104]
 184 00a6 0CBF     		ite	eq
 185 00a8 44EA0343 		orreq	r3, r4, r3, lsl #16
 186 00ac 24EA0343 		bicne	r3, r4, r3, lsl #16
 187 00b0 8366     		str	r3, [r0, #104]
 188 00b2 D200     		lsls	r2, r2, #3
 189 00b4 91F82330 		ldrb	r3, [r1, #35]	@ zero_extendqisi2
 190 00b8 C16E     		ldr	r1, [r0, #108]
 191 00ba FF24     		movs	r4, #255
 192 00bc 9440     		lsls	r4, r4, r2
 193 00be 03FA02F2 		lsl	r2, r3, r2
 194 00c2 21EA0403 		bic	r3, r1, r4
 195 00c6 1A43     		orrs	r2, r2, r3
 196 00c8 C266     		str	r2, [r0, #108]
 197 00ca F0BC     		pop	{r4, r5, r6, r7}
 198 00cc 0020     		movs	r0, #0
 199 00ce 7047     		bx	lr
 200              	.L24:
 201 00d0 24EA0304 		bic	r4, r4, r3
 202 00d4 0462     		str	r4, [r0, #32]
 203 00d6 DAE7     		b	.L25
 204              		.size	pwm_channel_init, .-pwm_channel_init
 205              		.section	.text.pwm_channel_update_period,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	pwm_channel_update_period
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	pwm_channel_update_period, %function
 214              	pwm_channel_update_period:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 CB68     		ldr	r3, [r1, #12]
 219 0002 9342     		cmp	r3, r2
 220 0004 02D9     		bls	.L37
 221 0006 4FF6FF70 		movw	r0, #65535
 222 000a 7047     		bx	lr
 223              	.L37:
 224 000c 0B68     		ldr	r3, [r1]
 225 000e 0A61     		str	r2, [r1, #16]
 226 0010 00EB4313 		add	r3, r0, r3, lsl #5
 227 0014 0020     		movs	r0, #0
 228 0016 C3F81022 		str	r2, [r3, #528]
ARM GAS  /tmp/ccx1zNkc.s 			page 5


 229 001a 7047     		bx	lr
 230              		.size	pwm_channel_update_period, .-pwm_channel_update_period
 231              		.section	.text.pwm_channel_update_duty,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	pwm_channel_update_duty
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	pwm_channel_update_duty, %function
 240              	pwm_channel_update_duty:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 0B69     		ldr	r3, [r1, #16]
 245 0002 9342     		cmp	r3, r2
 246 0004 02D2     		bcs	.L41
 247 0006 4FF6FF70 		movw	r0, #65535
 248 000a 7047     		bx	lr
 249              	.L41:
 250 000c 0B68     		ldr	r3, [r1]
 251 000e CA60     		str	r2, [r1, #12]
 252 0010 00EB4313 		add	r3, r0, r3, lsl #5
 253 0014 0020     		movs	r0, #0
 254 0016 C3F80822 		str	r2, [r3, #520]
 255 001a 7047     		bx	lr
 256              		.size	pwm_channel_update_duty, .-pwm_channel_update_duty
 257              		.section	.text.pwm_channel_get_counter,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	pwm_channel_get_counter
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu softvfp
 265              		.type	pwm_channel_get_counter, %function
 266              	pwm_channel_get_counter:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              		@ link register save eliminated.
 270 0000 0B68     		ldr	r3, [r1]
 271 0002 00EB4310 		add	r0, r0, r3, lsl #5
 272 0006 D0F81402 		ldr	r0, [r0, #532]
 273 000a 7047     		bx	lr
 274              		.size	pwm_channel_get_counter, .-pwm_channel_get_counter
 275              		.section	.text.pwm_channel_enable,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	pwm_channel_enable
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu softvfp
 283              		.type	pwm_channel_enable, %function
 284              	pwm_channel_enable:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccx1zNkc.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              		@ link register save eliminated.
 288 0000 0123     		movs	r3, #1
 289 0002 03FA01F1 		lsl	r1, r3, r1
 290 0006 4160     		str	r1, [r0, #4]
 291 0008 7047     		bx	lr
 292              		.size	pwm_channel_enable, .-pwm_channel_enable
 293 000a 00BF     		.section	.text.pwm_channel_disable,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	pwm_channel_disable
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu softvfp
 301              		.type	pwm_channel_disable, %function
 302              	pwm_channel_disable:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 0123     		movs	r3, #1
 307 0002 03FA01F1 		lsl	r1, r3, r1
 308 0006 8160     		str	r1, [r0, #8]
 309 0008 7047     		bx	lr
 310              		.size	pwm_channel_disable, .-pwm_channel_disable
 311 000a 00BF     		.section	.text.pwm_channel_get_status,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	pwm_channel_get_status
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu softvfp
 319              		.type	pwm_channel_get_status, %function
 320              	pwm_channel_get_status:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 C068     		ldr	r0, [r0, #12]
 325 0002 7047     		bx	lr
 326              		.size	pwm_channel_get_status, .-pwm_channel_get_status
 327              		.section	.text.pwm_channel_get_interrupt_status,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.global	pwm_channel_get_interrupt_status
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu softvfp
 335              		.type	pwm_channel_get_interrupt_status, %function
 336              	pwm_channel_get_interrupt_status:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 C069     		ldr	r0, [r0, #28]
 341 0002 7047     		bx	lr
 342              		.size	pwm_channel_get_interrupt_status, .-pwm_channel_get_interrupt_status
ARM GAS  /tmp/ccx1zNkc.s 			page 7


 343              		.section	.text.pwm_channel_get_interrupt_mask,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	pwm_channel_get_interrupt_mask
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu softvfp
 351              		.type	pwm_channel_get_interrupt_mask, %function
 352              	pwm_channel_get_interrupt_mask:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 8069     		ldr	r0, [r0, #24]
 357 0002 7047     		bx	lr
 358              		.size	pwm_channel_get_interrupt_mask, .-pwm_channel_get_interrupt_mask
 359              		.section	.text.pwm_channel_enable_interrupt,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	pwm_channel_enable_interrupt
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu softvfp
 367              		.type	pwm_channel_enable_interrupt, %function
 368              	pwm_channel_enable_interrupt:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371              		@ link register save eliminated.
 372 0000 0123     		movs	r3, #1
 373 0002 1032     		adds	r2, r2, #16
 374 0004 03FA02F2 		lsl	r2, r3, r2
 375 0008 03FA01F1 		lsl	r1, r3, r1
 376 000c 0A43     		orrs	r2, r2, r1
 377 000e 0261     		str	r2, [r0, #16]
 378 0010 7047     		bx	lr
 379              		.size	pwm_channel_enable_interrupt, .-pwm_channel_enable_interrupt
 380 0012 00BF     		.section	.text.pwm_channel_disable_interrupt,"ax",%progbits
 381              		.align	1
 382              		.p2align 2,,3
 383              		.global	pwm_channel_disable_interrupt
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu softvfp
 388              		.type	pwm_channel_disable_interrupt, %function
 389              	pwm_channel_disable_interrupt:
 390              		@ args = 0, pretend = 0, frame = 0
 391              		@ frame_needed = 0, uses_anonymous_args = 0
 392              		@ link register save eliminated.
 393 0000 0123     		movs	r3, #1
 394 0002 1032     		adds	r2, r2, #16
 395 0004 03FA02F2 		lsl	r2, r3, r2
 396 0008 03FA01F1 		lsl	r1, r3, r1
 397 000c 0A43     		orrs	r2, r2, r1
 398 000e 4261     		str	r2, [r0, #20]
 399 0010 7047     		bx	lr
ARM GAS  /tmp/ccx1zNkc.s 			page 8


 400              		.size	pwm_channel_disable_interrupt, .-pwm_channel_disable_interrupt
 401 0012 00BF     		.section	.text.pwm_channel_update_output,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	pwm_channel_update_output
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu softvfp
 409              		.type	pwm_channel_update_output, %function
 410              	pwm_channel_update_output:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 414 0002 0C68     		ldr	r4, [r1]
 415 0004 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 416 0008 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 417 000c 466C     		ldr	r6, [r0, #68]
 418 000e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
 419 0010 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 420 0012 CA77     		strb	r2, [r1, #31]
 421 0014 4FF00117 		mov	r7, #65537
 422 0018 A740     		lsls	r7, r7, r4
 423 001a 26EA0707 		bic	r7, r6, r7
 424 001e 4CEA0E46 		orr	r6, ip, lr, lsl #16
 425 0022 A640     		lsls	r6, r6, r4
 426 0024 3E43     		orrs	r6, r6, r7
 427 0026 81F820C0 		strb	ip, [r1, #32]
 428 002a 8D77     		strb	r5, [r1, #30]
 429 002c 81F821E0 		strb	lr, [r1, #33]
 430 0030 4664     		str	r6, [r0, #68]
 431 0032 82F00101 		eor	r1, r2, #1
 432 0036 6BB9     		cbnz	r3, .L54
 433 0038 85F00103 		eor	r3, r5, #1
 434 003c A140     		lsls	r1, r1, r4
 435 003e A240     		lsls	r2, r2, r4
 436 0040 A340     		lsls	r3, r3, r4
 437 0042 05FA04F4 		lsl	r4, r5, r4
 438 0046 43EA0143 		orr	r3, r3, r1, lsl #16
 439 004a 44EA0244 		orr	r4, r4, r2, lsl #16
 440 004e C464     		str	r4, [r0, #76]
 441 0050 0365     		str	r3, [r0, #80]
 442 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 443              	.L54:
 444 0054 85F00103 		eor	r3, r5, #1
 445 0058 A140     		lsls	r1, r1, r4
 446 005a A240     		lsls	r2, r2, r4
 447 005c A340     		lsls	r3, r3, r4
 448 005e 05FA04F4 		lsl	r4, r5, r4
 449 0062 43EA0143 		orr	r3, r3, r1, lsl #16
 450 0066 44EA0244 		orr	r4, r4, r2, lsl #16
 451 006a 4465     		str	r4, [r0, #84]
 452 006c 8365     		str	r3, [r0, #88]
 453 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 454              		.size	pwm_channel_update_output, .-pwm_channel_update_output
 455              		.section	.text.pwm_channel_update_dead_time,"ax",%progbits
 456              		.align	1
ARM GAS  /tmp/ccx1zNkc.s 			page 9


 457              		.p2align 2,,3
 458              		.global	pwm_channel_update_dead_time
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu softvfp
 463              		.type	pwm_channel_update_dead_time, %function
 464              	pwm_channel_update_dead_time:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 10B4     		push	{r4}
 469 0002 0C68     		ldr	r4, [r1]
 470 0004 4A83     		strh	r2, [r1, #26]	@ movhi
 471 0006 00EB4410 		add	r0, r0, r4, lsl #5
 472 000a 42EA0342 		orr	r2, r2, r3, lsl #16
 473 000e 8B83     		strh	r3, [r1, #28]	@ movhi
 474 0010 10BC     		pop	{r4}
 475 0012 C0F81C22 		str	r2, [r0, #540]
 476 0016 7047     		bx	lr
 477              		.size	pwm_channel_update_dead_time, .-pwm_channel_update_dead_time
 478              		.section	.text.pwm_fault_init,"ax",%progbits
 479              		.align	1
 480              		.p2align 2,,3
 481              		.global	pwm_fault_init
 482              		.syntax unified
 483              		.thumb
 484              		.thumb_func
 485              		.fpu softvfp
 486              		.type	pwm_fault_init, %function
 487              	pwm_fault_init:
 488              		@ args = 0, pretend = 0, frame = 0
 489              		@ frame_needed = 0, uses_anonymous_args = 0
 490              		@ link register save eliminated.
 491 0000 10B4     		push	{r4}
 492 0002 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 493 0004 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 494 0006 C36D     		ldr	r3, [r0, #92]
 495 0008 012C     		cmp	r4, #1
 496 000a 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 497 000c 0CBF     		ite	eq
 498 000e 1343     		orreq	r3, r3, r2
 499 0010 9343     		bicne	r3, r3, r2
 500 0012 4CB1     		cbz	r4, .L60
 501 0014 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 502 0016 43EA0223 		orr	r3, r3, r2, lsl #8
 503 001a 51B9     		cbnz	r1, .L65
 504              	.L62:
 505 001c 23EA0243 		bic	r3, r3, r2, lsl #16
 506 0020 C365     		str	r3, [r0, #92]
 507 0022 10BC     		pop	{r4}
 508 0024 0020     		movs	r0, #0
 509 0026 7047     		bx	lr
 510              	.L60:
 511 0028 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 512 002a 23EA0223 		bic	r3, r3, r2, lsl #8
 513 002e 0029     		cmp	r1, #0
ARM GAS  /tmp/ccx1zNkc.s 			page 10


 514 0030 F4D0     		beq	.L62
 515              	.L65:
 516 0032 43EA0243 		orr	r3, r3, r2, lsl #16
 517 0036 C365     		str	r3, [r0, #92]
 518 0038 10BC     		pop	{r4}
 519 003a 0020     		movs	r0, #0
 520 003c 7047     		bx	lr
 521              		.size	pwm_fault_init, .-pwm_fault_init
 522 003e 00BF     		.section	.text.pwm_fault_get_status,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	pwm_fault_get_status
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu softvfp
 530              		.type	pwm_fault_get_status, %function
 531              	pwm_fault_get_status:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535 0000 006E     		ldr	r0, [r0, #96]
 536 0002 C0F30720 		ubfx	r0, r0, #8, #8
 537 0006 7047     		bx	lr
 538              		.size	pwm_fault_get_status, .-pwm_fault_get_status
 539              		.section	.text.pwm_fault_get_input_level,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	pwm_fault_get_input_level
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu softvfp
 547              		.type	pwm_fault_get_input_level, %function
 548              	pwm_fault_get_input_level:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552 0000 006E     		ldr	r0, [r0, #96]
 553 0002 C840     		lsrs	r0, r0, r1
 554 0004 00F00100 		and	r0, r0, #1
 555 0008 7047     		bx	lr
 556              		.size	pwm_fault_get_input_level, .-pwm_fault_get_input_level
 557 000a 00BF     		.section	.text.pwm_fault_clear_status,"ax",%progbits
 558              		.align	1
 559              		.p2align 2,,3
 560              		.global	pwm_fault_clear_status
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu softvfp
 565              		.type	pwm_fault_clear_status, %function
 566              	pwm_fault_clear_status:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 4166     		str	r1, [r0, #100]
ARM GAS  /tmp/ccx1zNkc.s 			page 11


 571 0002 7047     		bx	lr
 572              		.size	pwm_fault_clear_status, .-pwm_fault_clear_status
 573              		.section	.text.pwm_cmp_init,"ax",%progbits
 574              		.align	1
 575              		.p2align 2,,3
 576              		.global	pwm_cmp_init
 577              		.syntax unified
 578              		.thumb
 579              		.thumb_func
 580              		.fpu softvfp
 581              		.type	pwm_cmp_init, %function
 582              	pwm_cmp_init:
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 586 0002 0A68     		ldr	r2, [r1]
 587 0004 0B69     		ldr	r3, [r1, #16]
 588 0006 4E69     		ldr	r6, [r1, #20]
 589 0008 8C68     		ldr	r4, [r1, #8]
 590 000a 8D69     		ldr	r5, [r1, #24]
 591 000c 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 592 000e 1B01     		lsls	r3, r3, #4
 593 0010 3602     		lsls	r6, r6, #8
 594 0012 02F1130E 		add	lr, r2, #19
 595 0016 06F47066 		and	r6, r6, #3840
 596 001a DBB2     		uxtb	r3, r3
 597 001c 2D04     		lsls	r5, r5, #16
 598 001e 4FEA0E1E 		lsl	lr, lr, #4
 599 0022 24F07F44 		bic	r4, r4, #-16777216
 600 0026 3343     		orrs	r3, r3, r6
 601 0028 05F47025 		and	r5, r5, #983040
 602 002c 44EA0764 		orr	r4, r4, r7, lsl #24
 603 0030 1601     		lsls	r6, r2, #4
 604 0032 2B43     		orrs	r3, r3, r5
 605 0034 40F80E40 		str	r4, [r0, lr]
 606 0038 8519     		adds	r5, r0, r6
 607 003a 0C7F     		ldrb	r4, [r1, #28]	@ zero_extendqisi2
 608 003c C5F83831 		str	r3, [r5, #312]
 609 0040 BCB1     		cbz	r4, .L70
 610 0042 C36F     		ldr	r3, [r0, #124]
 611 0044 0124     		movs	r4, #1
 612 0046 04FA02F2 		lsl	r2, r4, r2
 613 004a 1343     		orrs	r3, r3, r2
 614 004c C367     		str	r3, [r0, #124]
 615 004e 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 616 0050 CBB1     		cbz	r3, .L72
 617              	.L78:
 618 0052 D0F88030 		ldr	r3, [r0, #128]
 619 0056 1A43     		orrs	r2, r2, r3
 620 0058 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 621 005a C0F88020 		str	r2, [r0, #128]
 622 005e 3044     		add	r0, r0, r6
 623 0060 DBB9     		cbnz	r3, .L77
 624              	.L74:
 625 0062 D0F83831 		ldr	r3, [r0, #312]
 626 0066 23F00103 		bic	r3, r3, #1
 627 006a C0F83831 		str	r3, [r0, #312]
ARM GAS  /tmp/ccx1zNkc.s 			page 12


 628 006e 0020     		movs	r0, #0
 629 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 630              	.L70:
 631 0072 C36F     		ldr	r3, [r0, #124]
 632 0074 0124     		movs	r4, #1
 633 0076 04FA02F2 		lsl	r2, r4, r2
 634 007a 23EA0203 		bic	r3, r3, r2
 635 007e C367     		str	r3, [r0, #124]
 636 0080 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 637 0082 002B     		cmp	r3, #0
 638 0084 E5D1     		bne	.L78
 639              	.L72:
 640 0086 D0F88030 		ldr	r3, [r0, #128]
 641 008a 23EA0202 		bic	r2, r3, r2
 642 008e 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 643 0090 C0F88020 		str	r2, [r0, #128]
 644 0094 3044     		add	r0, r0, r6
 645 0096 002B     		cmp	r3, #0
 646 0098 E3D0     		beq	.L74
 647              	.L77:
 648 009a D0F83831 		ldr	r3, [r0, #312]
 649 009e 43F00103 		orr	r3, r3, #1
 650 00a2 C0F83831 		str	r3, [r0, #312]
 651 00a6 0020     		movs	r0, #0
 652 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 653              		.size	pwm_cmp_init, .-pwm_cmp_init
 654 00aa 00BF     		.section	.text.pwm_cmp_change_setting,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	pwm_cmp_change_setting
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu softvfp
 662              		.type	pwm_cmp_change_setting, %function
 663              	pwm_cmp_change_setting:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666              		@ link register save eliminated.
 667 0000 F0B4     		push	{r4, r5, r6, r7}
 668 0002 0B69     		ldr	r3, [r1, #16]
 669 0004 4E69     		ldr	r6, [r1, #20]
 670 0006 0A68     		ldr	r2, [r1]
 671 0008 8D69     		ldr	r5, [r1, #24]
 672 000a 8C68     		ldr	r4, [r1, #8]
 673 000c 0F7B     		ldrb	r7, [r1, #12]	@ zero_extendqisi2
 674 000e 1B01     		lsls	r3, r3, #4
 675 0010 3602     		lsls	r6, r6, #8
 676 0012 06F47066 		and	r6, r6, #3840
 677 0016 DBB2     		uxtb	r3, r3
 678 0018 3343     		orrs	r3, r3, r6
 679 001a 2D04     		lsls	r5, r5, #16
 680 001c 02F11306 		add	r6, r2, #19
 681 0020 05F47025 		and	r5, r5, #983040
 682 0024 24F07F44 		bic	r4, r4, #-16777216
 683 0028 00EB0616 		add	r6, r0, r6, lsl #4
 684 002c 44EA0764 		orr	r4, r4, r7, lsl #24
ARM GAS  /tmp/ccx1zNkc.s 			page 13


 685 0030 2B43     		orrs	r3, r3, r5
 686 0032 1501     		lsls	r5, r2, #4
 687 0034 7460     		str	r4, [r6, #4]
 688 0036 4719     		adds	r7, r0, r5
 689 0038 0C7F     		ldrb	r4, [r1, #28]	@ zero_extendqisi2
 690 003a C7F83C31 		str	r3, [r7, #316]
 691 003e C4B1     		cbz	r4, .L80
 692 0040 C36F     		ldr	r3, [r0, #124]
 693 0042 0124     		movs	r4, #1
 694 0044 04FA02F2 		lsl	r2, r4, r2
 695 0048 1343     		orrs	r3, r3, r2
 696 004a C367     		str	r3, [r0, #124]
 697 004c 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 698 004e D3B1     		cbz	r3, .L82
 699              	.L88:
 700 0050 D0F88030 		ldr	r3, [r0, #128]
 701 0054 1A43     		orrs	r2, r2, r3
 702 0056 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 703 0058 C0F88020 		str	r2, [r0, #128]
 704 005c 2844     		add	r0, r0, r5
 705 005e E3B9     		cbnz	r3, .L87
 706              	.L84:
 707 0060 D0F83C31 		ldr	r3, [r0, #316]
 708 0064 23F00103 		bic	r3, r3, #1
 709 0068 C0F83C31 		str	r3, [r0, #316]
 710 006c F0BC     		pop	{r4, r5, r6, r7}
 711 006e 0020     		movs	r0, #0
 712 0070 7047     		bx	lr
 713              	.L80:
 714 0072 C36F     		ldr	r3, [r0, #124]
 715 0074 0124     		movs	r4, #1
 716 0076 04FA02F2 		lsl	r2, r4, r2
 717 007a 23EA0203 		bic	r3, r3, r2
 718 007e C367     		str	r3, [r0, #124]
 719 0080 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 720 0082 002B     		cmp	r3, #0
 721 0084 E4D1     		bne	.L88
 722              	.L82:
 723 0086 D0F88030 		ldr	r3, [r0, #128]
 724 008a 23EA0202 		bic	r2, r3, r2
 725 008e 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 726 0090 C0F88020 		str	r2, [r0, #128]
 727 0094 2844     		add	r0, r0, r5
 728 0096 002B     		cmp	r3, #0
 729 0098 E2D0     		beq	.L84
 730              	.L87:
 731 009a D0F83C31 		ldr	r3, [r0, #316]
 732 009e 43F00103 		orr	r3, r3, #1
 733 00a2 C0F83C31 		str	r3, [r0, #316]
 734 00a6 F0BC     		pop	{r4, r5, r6, r7}
 735 00a8 0020     		movs	r0, #0
 736 00aa 7047     		bx	lr
 737              		.size	pwm_cmp_change_setting, .-pwm_cmp_change_setting
 738              		.section	.text.pwm_cmp_get_period_counter,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	pwm_cmp_get_period_counter
ARM GAS  /tmp/ccx1zNkc.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu softvfp
 746              		.type	pwm_cmp_get_period_counter, %function
 747              	pwm_cmp_get_period_counter:
 748              		@ args = 0, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750              		@ link register save eliminated.
 751 0000 00EB0111 		add	r1, r0, r1, lsl #4
 752 0004 D1F83801 		ldr	r0, [r1, #312]
 753 0008 00F00F00 		and	r0, r0, #15
 754 000c 7047     		bx	lr
 755              		.size	pwm_cmp_get_period_counter, .-pwm_cmp_get_period_counter
 756 000e 00BF     		.section	.text.pwm_cmp_get_update_counter,"ax",%progbits
 757              		.align	1
 758              		.p2align 2,,3
 759              		.global	pwm_cmp_get_update_counter
 760              		.syntax unified
 761              		.thumb
 762              		.thumb_func
 763              		.fpu softvfp
 764              		.type	pwm_cmp_get_update_counter, %function
 765              	pwm_cmp_get_update_counter:
 766              		@ args = 0, pretend = 0, frame = 0
 767              		@ frame_needed = 0, uses_anonymous_args = 0
 768              		@ link register save eliminated.
 769 0000 00EB0111 		add	r1, r0, r1, lsl #4
 770 0004 D1F83801 		ldr	r0, [r1, #312]
 771 0008 00F00F00 		and	r0, r0, #15
 772 000c 7047     		bx	lr
 773              		.size	pwm_cmp_get_update_counter, .-pwm_cmp_get_update_counter
 774 000e 00BF     		.section	.text.pwm_cmp_enable_interrupt,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	pwm_cmp_enable_interrupt
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu softvfp
 782              		.type	pwm_cmp_enable_interrupt, %function
 783              	pwm_cmp_enable_interrupt:
 784              		@ args = 0, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786              		@ link register save eliminated.
 787 0000 082A     		cmp	r2, #8
 788 0002 08D0     		beq	.L94
 789 0004 102A     		cmp	r2, #16
 790 0006 00D0     		beq	.L95
 791 0008 7047     		bx	lr
 792              	.L95:
 793 000a 4FF48033 		mov	r3, #65536
 794 000e 03FA01F1 		lsl	r1, r3, r1
 795 0012 4163     		str	r1, [r0, #52]
 796 0014 7047     		bx	lr
 797              	.L94:
 798 0016 4FF48073 		mov	r3, #256
ARM GAS  /tmp/ccx1zNkc.s 			page 15


 799 001a 03FA01F1 		lsl	r1, r3, r1
 800 001e 4163     		str	r1, [r0, #52]
 801 0020 7047     		bx	lr
 802              		.size	pwm_cmp_enable_interrupt, .-pwm_cmp_enable_interrupt
 803 0022 00BF     		.section	.text.pwm_cmp_disable_interrupt,"ax",%progbits
 804              		.align	1
 805              		.p2align 2,,3
 806              		.global	pwm_cmp_disable_interrupt
 807              		.syntax unified
 808              		.thumb
 809              		.thumb_func
 810              		.fpu softvfp
 811              		.type	pwm_cmp_disable_interrupt, %function
 812              	pwm_cmp_disable_interrupt:
 813              		@ args = 0, pretend = 0, frame = 0
 814              		@ frame_needed = 0, uses_anonymous_args = 0
 815              		@ link register save eliminated.
 816 0000 082A     		cmp	r2, #8
 817 0002 08D0     		beq	.L99
 818 0004 102A     		cmp	r2, #16
 819 0006 00D0     		beq	.L100
 820 0008 7047     		bx	lr
 821              	.L100:
 822 000a 4FF48033 		mov	r3, #65536
 823 000e 03FA01F1 		lsl	r1, r3, r1
 824 0012 8163     		str	r1, [r0, #56]
 825 0014 7047     		bx	lr
 826              	.L99:
 827 0016 4FF48073 		mov	r3, #256
 828 001a 03FA01F1 		lsl	r1, r3, r1
 829 001e 8163     		str	r1, [r0, #56]
 830 0020 7047     		bx	lr
 831              		.size	pwm_cmp_disable_interrupt, .-pwm_cmp_disable_interrupt
 832 0022 00BF     		.section	.text.pwm_pdc_set_request_mode,"ax",%progbits
 833              		.align	1
 834              		.p2align 2,,3
 835              		.global	pwm_pdc_set_request_mode
 836              		.syntax unified
 837              		.thumb
 838              		.thumb_func
 839              		.fpu softvfp
 840              		.type	pwm_pdc_set_request_mode, %function
 841              	pwm_pdc_set_request_mode:
 842              		@ args = 0, pretend = 0, frame = 0
 843              		@ frame_needed = 0, uses_anonymous_args = 0
 844              		@ link register save eliminated.
 845 0000 036A     		ldr	r3, [r0, #32]
 846 0002 5205     		lsls	r2, r2, #21
 847 0004 02F46002 		and	r2, r2, #14680064
 848 0008 0A43     		orrs	r2, r2, r1
 849 000a 23F47003 		bic	r3, r3, #15728640
 850 000e 1A43     		orrs	r2, r2, r3
 851 0010 0262     		str	r2, [r0, #32]
 852 0012 7047     		bx	lr
 853              		.size	pwm_pdc_set_request_mode, .-pwm_pdc_set_request_mode
 854              		.section	.text.pwm_pdc_enable_interrupt,"ax",%progbits
 855              		.align	1
ARM GAS  /tmp/ccx1zNkc.s 			page 16


 856              		.p2align 2,,3
 857              		.global	pwm_pdc_enable_interrupt
 858              		.syntax unified
 859              		.thumb
 860              		.thumb_func
 861              		.fpu softvfp
 862              		.type	pwm_pdc_enable_interrupt, %function
 863              	pwm_pdc_enable_interrupt:
 864              		@ args = 0, pretend = 0, frame = 0
 865              		@ frame_needed = 0, uses_anonymous_args = 0
 866              		@ link register save eliminated.
 867 0000 4163     		str	r1, [r0, #52]
 868 0002 7047     		bx	lr
 869              		.size	pwm_pdc_enable_interrupt, .-pwm_pdc_enable_interrupt
 870              		.section	.text.pwm_pdc_disable_interrupt,"ax",%progbits
 871              		.align	1
 872              		.p2align 2,,3
 873              		.global	pwm_pdc_disable_interrupt
 874              		.syntax unified
 875              		.thumb
 876              		.thumb_func
 877              		.fpu softvfp
 878              		.type	pwm_pdc_disable_interrupt, %function
 879              	pwm_pdc_disable_interrupt:
 880              		@ args = 0, pretend = 0, frame = 0
 881              		@ frame_needed = 0, uses_anonymous_args = 0
 882              		@ link register save eliminated.
 883 0000 8163     		str	r1, [r0, #56]
 884 0002 7047     		bx	lr
 885              		.size	pwm_pdc_disable_interrupt, .-pwm_pdc_disable_interrupt
 886              		.section	.text.pwm_sync_init,"ax",%progbits
 887              		.align	1
 888              		.p2align 2,,3
 889              		.global	pwm_sync_init
 890              		.syntax unified
 891              		.thumb
 892              		.thumb_func
 893              		.fpu softvfp
 894              		.type	pwm_sync_init, %function
 895              	pwm_sync_init:
 896              		@ args = 0, pretend = 0, frame = 0
 897              		@ frame_needed = 0, uses_anonymous_args = 0
 898              		@ link register save eliminated.
 899 0000 036A     		ldr	r3, [r0, #32]
 900 0002 10B4     		push	{r4}
 901 0004 23F44033 		bic	r3, r3, #196608
 902 0008 0446     		mov	r4, r0
 903 000a 02F00F02 		and	r2, r2, #15
 904 000e 1943     		orrs	r1, r1, r3
 905 0010 0162     		str	r1, [r0, #32]
 906 0012 0020     		movs	r0, #0
 907 0014 E262     		str	r2, [r4, #44]
 908 0016 10BC     		pop	{r4}
 909 0018 7047     		bx	lr
 910              		.size	pwm_sync_init, .-pwm_sync_init
 911 001a 00BF     		.section	.text.pwm_sync_unlock_update,"ax",%progbits
 912              		.align	1
ARM GAS  /tmp/ccx1zNkc.s 			page 17


 913              		.p2align 2,,3
 914              		.global	pwm_sync_unlock_update
 915              		.syntax unified
 916              		.thumb
 917              		.thumb_func
 918              		.fpu softvfp
 919              		.type	pwm_sync_unlock_update, %function
 920              	pwm_sync_unlock_update:
 921              		@ args = 0, pretend = 0, frame = 0
 922              		@ frame_needed = 0, uses_anonymous_args = 0
 923              		@ link register save eliminated.
 924 0000 0123     		movs	r3, #1
 925 0002 8362     		str	r3, [r0, #40]
 926 0004 7047     		bx	lr
 927              		.size	pwm_sync_unlock_update, .-pwm_sync_unlock_update
 928 0006 00BF     		.section	.text.pwm_sync_change_period,"ax",%progbits
 929              		.align	1
 930              		.p2align 2,,3
 931              		.global	pwm_sync_change_period
 932              		.syntax unified
 933              		.thumb
 934              		.thumb_func
 935              		.fpu softvfp
 936              		.type	pwm_sync_change_period, %function
 937              	pwm_sync_change_period:
 938              		@ args = 0, pretend = 0, frame = 0
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940              		@ link register save eliminated.
 941 0000 01F00F01 		and	r1, r1, #15
 942 0004 0163     		str	r1, [r0, #48]
 943 0006 7047     		bx	lr
 944              		.size	pwm_sync_change_period, .-pwm_sync_change_period
 945              		.section	.text.pwm_sync_get_period_counter,"ax",%progbits
 946              		.align	1
 947              		.p2align 2,,3
 948              		.global	pwm_sync_get_period_counter
 949              		.syntax unified
 950              		.thumb
 951              		.thumb_func
 952              		.fpu softvfp
 953              		.type	pwm_sync_get_period_counter, %function
 954              	pwm_sync_get_period_counter:
 955              		@ args = 0, pretend = 0, frame = 0
 956              		@ frame_needed = 0, uses_anonymous_args = 0
 957              		@ link register save eliminated.
 958 0000 C06A     		ldr	r0, [r0, #44]
 959 0002 0001     		lsls	r0, r0, #4
 960 0004 00F0F000 		and	r0, r0, #240
 961 0008 7047     		bx	lr
 962              		.size	pwm_sync_get_period_counter, .-pwm_sync_get_period_counter
 963 000a 00BF     		.section	.text.pwm_sync_enable_interrupt,"ax",%progbits
 964              		.align	1
 965              		.p2align 2,,3
 966              		.global	pwm_sync_enable_interrupt
 967              		.syntax unified
 968              		.thumb
 969              		.thumb_func
ARM GAS  /tmp/ccx1zNkc.s 			page 18


 970              		.fpu softvfp
 971              		.type	pwm_sync_enable_interrupt, %function
 972              	pwm_sync_enable_interrupt:
 973              		@ args = 0, pretend = 0, frame = 0
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975              		@ link register save eliminated.
 976 0000 4163     		str	r1, [r0, #52]
 977 0002 7047     		bx	lr
 978              		.size	pwm_sync_enable_interrupt, .-pwm_sync_enable_interrupt
 979              		.section	.text.pwm_sync_disable_interrupt,"ax",%progbits
 980              		.align	1
 981              		.p2align 2,,3
 982              		.global	pwm_sync_disable_interrupt
 983              		.syntax unified
 984              		.thumb
 985              		.thumb_func
 986              		.fpu softvfp
 987              		.type	pwm_sync_disable_interrupt, %function
 988              	pwm_sync_disable_interrupt:
 989              		@ args = 0, pretend = 0, frame = 0
 990              		@ frame_needed = 0, uses_anonymous_args = 0
 991              		@ link register save eliminated.
 992 0000 8163     		str	r1, [r0, #56]
 993 0002 7047     		bx	lr
 994              		.size	pwm_sync_disable_interrupt, .-pwm_sync_disable_interrupt
 995              		.section	.text.pwm_enable_protect,"ax",%progbits
 996              		.align	1
 997              		.p2align 2,,3
 998              		.global	pwm_enable_protect
 999              		.syntax unified
 1000              		.thumb
 1001              		.thumb_func
 1002              		.fpu softvfp
 1003              		.type	pwm_enable_protect, %function
 1004              	pwm_enable_protect:
 1005              		@ args = 0, pretend = 0, frame = 0
 1006              		@ frame_needed = 0, uses_anonymous_args = 0
 1007              		@ link register save eliminated.
 1008 0000 2AB9     		cbnz	r2, .L114
 1009 0002 064B     		ldr	r3, .L115
 1010 0004 43EA8101 		orr	r1, r3, r1, lsl #2
 1011 0008 C0F8E410 		str	r1, [r0, #228]
 1012 000c 7047     		bx	lr
 1013              	.L114:
 1014 000e 044B     		ldr	r3, .L115+4
 1015 0010 43EA8101 		orr	r1, r3, r1, lsl #2
 1016 0014 C0F8E410 		str	r1, [r0, #228]
 1017 0018 7047     		bx	lr
 1018              	.L116:
 1019 001a 00BF     		.align	2
 1020              	.L115:
 1021 001c 024D5750 		.word	1347898626
 1022 0020 014D5750 		.word	1347898625
 1023              		.size	pwm_enable_protect, .-pwm_enable_protect
 1024              		.section	.text.pwm_disable_protect,"ax",%progbits
 1025              		.align	1
 1026              		.p2align 2,,3
ARM GAS  /tmp/ccx1zNkc.s 			page 19


 1027              		.global	pwm_disable_protect
 1028              		.syntax unified
 1029              		.thumb
 1030              		.thumb_func
 1031              		.fpu softvfp
 1032              		.type	pwm_disable_protect, %function
 1033              	pwm_disable_protect:
 1034              		@ args = 0, pretend = 0, frame = 0
 1035              		@ frame_needed = 0, uses_anonymous_args = 0
 1036              		@ link register save eliminated.
 1037 0000 024B     		ldr	r3, .L118
 1038 0002 43EA8101 		orr	r1, r3, r1, lsl #2
 1039 0006 C0F8E410 		str	r1, [r0, #228]
 1040 000a 7047     		bx	lr
 1041              	.L119:
 1042              		.align	2
 1043              	.L118:
 1044 000c 004D5750 		.word	1347898624
 1045              		.size	pwm_disable_protect, .-pwm_disable_protect
 1046              		.section	.text.pwm_get_protect_status,"ax",%progbits
 1047              		.align	1
 1048              		.p2align 2,,3
 1049              		.global	pwm_get_protect_status
 1050              		.syntax unified
 1051              		.thumb
 1052              		.thumb_func
 1053              		.fpu softvfp
 1054              		.type	pwm_get_protect_status, %function
 1055              	pwm_get_protect_status:
 1056              		@ args = 0, pretend = 0, frame = 0
 1057              		@ frame_needed = 0, uses_anonymous_args = 0
 1058              		@ link register save eliminated.
 1059 0000 D0F8E830 		ldr	r3, [r0, #232]
 1060 0004 C3F30520 		ubfx	r0, r3, #8, #6
 1061 0008 03F03F02 		and	r2, r3, #63
 1062 000c 81E80500 		stm	r1, {r0, r2}
 1063 0010 13F08000 		ands	r0, r3, #128
 1064 0014 02D0     		beq	.L121
 1065 0016 1B0C     		lsrs	r3, r3, #16
 1066 0018 8B60     		str	r3, [r1, #8]
 1067 001a 0120     		movs	r0, #1
 1068              	.L121:
 1069 001c 7047     		bx	lr
 1070              		.size	pwm_get_protect_status, .-pwm_get_protect_status
 1071 001e 00BF     		.section	.text.pwm_get_interrupt_status,"ax",%progbits
 1072              		.align	1
 1073              		.p2align 2,,3
 1074              		.global	pwm_get_interrupt_status
 1075              		.syntax unified
 1076              		.thumb
 1077              		.thumb_func
 1078              		.fpu softvfp
 1079              		.type	pwm_get_interrupt_status, %function
 1080              	pwm_get_interrupt_status:
 1081              		@ args = 0, pretend = 0, frame = 0
 1082              		@ frame_needed = 0, uses_anonymous_args = 0
 1083              		@ link register save eliminated.
ARM GAS  /tmp/ccx1zNkc.s 			page 20


 1084 0000 006C     		ldr	r0, [r0, #64]
 1085 0002 7047     		bx	lr
 1086              		.size	pwm_get_interrupt_status, .-pwm_get_interrupt_status
 1087              		.section	.text.pwm_get_interrupt_mask,"ax",%progbits
 1088              		.align	1
 1089              		.p2align 2,,3
 1090              		.global	pwm_get_interrupt_mask
 1091              		.syntax unified
 1092              		.thumb
 1093              		.thumb_func
 1094              		.fpu softvfp
 1095              		.type	pwm_get_interrupt_mask, %function
 1096              	pwm_get_interrupt_mask:
 1097              		@ args = 0, pretend = 0, frame = 0
 1098              		@ frame_needed = 0, uses_anonymous_args = 0
 1099              		@ link register save eliminated.
 1100 0000 C06B     		ldr	r0, [r0, #60]
 1101 0002 7047     		bx	lr
 1102              		.size	pwm_get_interrupt_mask, .-pwm_get_interrupt_mask
 1103              		.section	.text.pwm_stepper_motor_init,"ax",%progbits
 1104              		.align	1
 1105              		.p2align 2,,3
 1106              		.global	pwm_stepper_motor_init
 1107              		.syntax unified
 1108              		.thumb
 1109              		.thumb_func
 1110              		.fpu softvfp
 1111              		.type	pwm_stepper_motor_init, %function
 1112              	pwm_stepper_motor_init:
 1113              		@ args = 0, pretend = 0, frame = 0
 1114              		@ frame_needed = 0, uses_anonymous_args = 0
 1115              		@ link register save eliminated.
 1116 0000 30B4     		push	{r4, r5}
 1117 0002 D0F8B040 		ldr	r4, [r0, #176]
 1118 0006 4FF00115 		mov	r5, #65537
 1119 000a 8D40     		lsls	r5, r5, r1
 1120 000c 42EA0343 		orr	r3, r2, r3, lsl #16
 1121 0010 24EA0504 		bic	r4, r4, r5
 1122 0014 8B40     		lsls	r3, r3, r1
 1123 0016 2343     		orrs	r3, r3, r4
 1124 0018 C0F8B030 		str	r3, [r0, #176]
 1125 001c 30BC     		pop	{r4, r5}
 1126 001e 7047     		bx	lr
 1127              		.size	pwm_stepper_motor_init, .-pwm_stepper_motor_init
 1128              		.section	.rodata
 1129              		.align	2
 1130              		.set	.LANCHOR0,. + 0
 1131              	.LC0:
 1132 0000 01000000 		.word	1
 1133 0004 02000000 		.word	2
 1134 0008 04000000 		.word	4
 1135 000c 08000000 		.word	8
 1136 0010 10000000 		.word	16
 1137 0014 20000000 		.word	32
 1138 0018 40000000 		.word	64
 1139 001c 80000000 		.word	128
 1140 0020 00010000 		.word	256
ARM GAS  /tmp/ccx1zNkc.s 			page 21


 1141 0024 00020000 		.word	512
 1142 0028 00040000 		.word	1024
 1143              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1144              		.align	2
 1145              		.type	cpu_irq_critical_section_counter, %object
 1146              		.size	cpu_irq_critical_section_counter, 4
 1147              	cpu_irq_critical_section_counter:
 1148 0000 00000000 		.space	4
 1149              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1150              		.type	cpu_irq_prev_interrupt_state, %object
 1151              		.size	cpu_irq_prev_interrupt_state, 1
 1152              	cpu_irq_prev_interrupt_state:
 1153 0000 00       		.space	1
 1154              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
