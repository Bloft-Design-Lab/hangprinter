ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 1


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
  13              		.file	"udp_device.c"
  14              		.text
  15              		.section	.text.udd_ep_ack_out_received,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	udd_ep_ack_out_received, %function
  23              	udd_ep_ack_out_received:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 8300     		lsls	r3, r0, #2
  28 0002 03F14023 		add	r3, r3, #1073758208
  29 0006 03F50023 		add	r3, r3, #524288
  30 000a F0B4     		push	{r4, r5, r6, r7}
  31 000c 196B     		ldr	r1, [r3, #48]
  32 000e 1A6B     		ldr	r2, [r3, #48]
  33 0010 8E07     		lsls	r6, r1, #30
  34 0012 00F1FF35 		add	r5, r0, #-1
  35 0016 3DD4     		bmi	.L30
  36 0018 AE00     		lsls	r6, r5, #2
  37 001a 2649     		ldr	r1, .L31
  38 001c 7219     		adds	r2, r6, r5
  39 001e 01EB8202 		add	r2, r1, r2, lsl #2
  40 0022 0127     		movs	r7, #1
  41 0024 547C     		ldrb	r4, [r2, #17]	@ zero_extendqisi2
  42 0026 67F38304 		bfi	r4, r7, #2, #2
  43 002a 5474     		strb	r4, [r2, #17]
  44              	.L3:
  45 002c 7219     		adds	r2, r6, r5
  46 002e 01EB8202 		add	r2, r1, r2, lsl #2
  47 0032 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
  48 0034 12F00C0F 		tst	r2, #12
  49 0038 1A6B     		ldr	r2, [r3, #48]
  50 003a 17D1     		bne	.L4
  51 003c 22F00202 		bic	r2, r2, #2
  52 0040 42F04D02 		orr	r2, r2, #77
  53 0044 1A63     		str	r2, [r3, #48]
  54 0046 0A22     		movs	r2, #10
  55              	.L5:
  56 0048 1C6B     		ldr	r4, [r3, #48]
  57 004a A407     		lsls	r4, r4, #30
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 2


  58 004c 01D5     		bpl	.L6
  59 004e 013A     		subs	r2, r2, #1
  60 0050 FAD1     		bne	.L5
  61              	.L6:
  62 0052 48B1     		cbz	r0, .L1
  63 0054 0328     		cmp	r0, #3
  64 0056 07D0     		beq	.L1
  65 0058 3544     		add	r5, r5, r6
  66 005a 01EB8501 		add	r1, r1, r5, lsl #2
  67 005e 0122     		movs	r2, #1
  68 0060 4B7C     		ldrb	r3, [r1, #17]	@ zero_extendqisi2
  69 0062 62F38303 		bfi	r3, r2, #2, #2
  70 0066 4B74     		strb	r3, [r1, #17]
  71              	.L1:
  72 0068 F0BC     		pop	{r4, r5, r6, r7}
  73 006a 7047     		bx	lr
  74              	.L4:
  75 006c 22F04002 		bic	r2, r2, #64
  76 0070 42F00F02 		orr	r2, r2, #15
  77 0074 1A63     		str	r2, [r3, #48]
  78 0076 0A22     		movs	r2, #10
  79              	.L9:
  80 0078 186B     		ldr	r0, [r3, #48]
  81 007a 4006     		lsls	r0, r0, #25
  82 007c 01D5     		bpl	.L10
  83 007e 013A     		subs	r2, r2, #1
  84 0080 FAD1     		bne	.L9
  85              	.L10:
  86 0082 3544     		add	r5, r5, r6
  87 0084 01EB8501 		add	r1, r1, r5, lsl #2
  88 0088 F0BC     		pop	{r4, r5, r6, r7}
  89 008a 4B7C     		ldrb	r3, [r1, #17]	@ zero_extendqisi2
  90 008c 6FF38303 		bfc	r3, #2, #2
  91 0090 4B74     		strb	r3, [r1, #17]
  92 0092 7047     		bx	lr
  93              	.L30:
  94 0094 12F04002 		ands	r2, r2, #64
  95 0098 02D0     		beq	.L27
  96 009a 0649     		ldr	r1, .L31
  97 009c AE00     		lsls	r6, r5, #2
  98 009e C5E7     		b	.L3
  99              	.L27:
 100 00a0 AE00     		lsls	r6, r5, #2
 101 00a2 0449     		ldr	r1, .L31
 102 00a4 7419     		adds	r4, r6, r5
 103 00a6 01EB8404 		add	r4, r1, r4, lsl #2
 104 00aa 677C     		ldrb	r7, [r4, #17]	@ zero_extendqisi2
 105 00ac 62F38307 		bfi	r7, r2, #2, #2
 106 00b0 6774     		strb	r7, [r4, #17]
 107 00b2 BBE7     		b	.L3
 108              	.L32:
 109              		.align	2
 110              	.L31:
 111 00b4 00000000 		.word	.LANCHOR0
 112              		.size	udd_ep_ack_out_received, .-udd_ep_ack_out_received
 113              		.section	.text.udd_ep_in_sent,"ax",%progbits
 114              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 3


 115              		.p2align 2,,3
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu fpv4-sp-d16
 120              		.type	udd_ep_in_sent, %function
 121              	udd_ep_in_sent:
 122              		@ args = 0, pretend = 0, frame = 8
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 125 0004 471E     		subs	r7, r0, #1
 126 0006 4FEA870E 		lsl	lr, r7, #2
 127 000a DFF880C1 		ldr	ip, .L65+4
 128 000e 0EEB0703 		add	r3, lr, r7
 129 0012 0CEB8303 		add	r3, ip, r3, lsl #2
 130 0016 83B0     		sub	sp, sp, #12
 131 0018 5E7C     		ldrb	r6, [r3, #17]	@ zero_extendqisi2
 132 001a 8B46     		mov	fp, r1
 133 001c C6F38106 		ubfx	r6, r6, #2, #2
 134 0020 0028     		cmp	r0, #0
 135 0022 00F0A680 		beq	.L50
 136 0026 0328     		cmp	r0, #3
 137 0028 14BF     		ite	ne
 138 002a 0223     		movne	r3, #2
 139 002c 0123     		moveq	r3, #1
 140              	.L34:
 141 002e 9E42     		cmp	r6, r3
 142 0030 80F29B80 		bge	.L49
 143 0034 0EEB0703 		add	r3, lr, r7
 144 0038 0CEB8303 		add	r3, ip, r3, lsl #2
 145 003c D3E902A2 		ldrd	r10, r2, [r3, #8]
 146 0040 5245     		cmp	r2, r10
 147 0042 04D3     		bcc	.L37
 148 0044 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 149 0046 13F04003 		ands	r3, r3, #64
 150 004a 00F09880 		beq	.L52
 151              	.L37:
 152 004e 0EEB0701 		add	r1, lr, r7
 153 0052 0CEB8101 		add	r1, ip, r1, lsl #2
 154 0056 AAEB0205 		sub	r5, r10, r2
 155 005a 0B8A     		ldrh	r3, [r1, #16]
 156 005c 4C68     		ldr	r4, [r1, #4]
 157 005e C3F30903 		ubfx	r3, r3, #0, #10
 158 0062 9D42     		cmp	r5, r3
 159 0064 1444     		add	r4, r4, r2
 160 0066 C0F08680 		bcc	.L53
 161 006a 02EB0309 		add	r9, r2, r3
 162 006e 1D46     		mov	r5, r3
 163 0070 0023     		movs	r3, #0
 164 0072 0093     		str	r3, [sp]
 165              	.L38:
 166 0074 0EEB0703 		add	r3, lr, r7
 167 0078 0CEB8303 		add	r3, ip, r3, lsl #2
 168 007c 072D     		cmp	r5, #7
 169 007e C3F80C90 		str	r9, [r3, #12]
 170 0082 2FD9     		bls	.L39
 171 0084 A5F10803 		sub	r3, r5, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 4


 172 0088 8200     		lsls	r2, r0, #2
 173 008a DB08     		lsrs	r3, r3, #3
 174 008c 04F11008 		add	r8, r4, #16
 175 0090 02F14022 		add	r2, r2, #1073758208
 176 0094 0193     		str	r3, [sp, #4]
 177 0096 08EBC308 		add	r8, r8, r3, lsl #3
 178 009a 02F50022 		add	r2, r2, #524288
 179 009e 04F10803 		add	r3, r4, #8
 180              	.L40:
 181 00a2 13F8081C 		ldrb	r1, [r3, #-8]	@ zero_extendqisi2
 182 00a6 1165     		str	r1, [r2, #80]
 183 00a8 13F8071C 		ldrb	r1, [r3, #-7]	@ zero_extendqisi2
 184 00ac 1165     		str	r1, [r2, #80]
 185 00ae 13F8061C 		ldrb	r1, [r3, #-6]	@ zero_extendqisi2
 186 00b2 1165     		str	r1, [r2, #80]
 187 00b4 13F8051C 		ldrb	r1, [r3, #-5]	@ zero_extendqisi2
 188 00b8 1165     		str	r1, [r2, #80]
 189 00ba 13F8041C 		ldrb	r1, [r3, #-4]	@ zero_extendqisi2
 190 00be 1165     		str	r1, [r2, #80]
 191 00c0 13F8031C 		ldrb	r1, [r3, #-3]	@ zero_extendqisi2
 192 00c4 1165     		str	r1, [r2, #80]
 193 00c6 13F8021C 		ldrb	r1, [r3, #-2]	@ zero_extendqisi2
 194 00ca 1165     		str	r1, [r2, #80]
 195 00cc 13F8011C 		ldrb	r1, [r3, #-1]	@ zero_extendqisi2
 196 00d0 1165     		str	r1, [r2, #80]
 197 00d2 0833     		adds	r3, r3, #8
 198 00d4 4345     		cmp	r3, r8
 199 00d6 E4D1     		bne	.L40
 200 00d8 019B     		ldr	r3, [sp, #4]
 201 00da 0133     		adds	r3, r3, #1
 202 00dc 04EBC304 		add	r4, r4, r3, lsl #3
 203 00e0 05F00705 		and	r5, r5, #7
 204              	.L39:
 205 00e4 4DB1     		cbz	r5, .L41
 206 00e6 284A     		ldr	r2, .L65
 207 00e8 2544     		add	r5, r5, r4
 208 00ea 00F11401 		add	r1, r0, #20
 209              	.L42:
 210 00ee 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 211 00f2 42F82130 		str	r3, [r2, r1, lsl #2]
 212 00f6 AC42     		cmp	r4, r5
 213 00f8 F9D1     		bne	.L42
 214              	.L41:
 215 00fa 0EEB0703 		add	r3, lr, r7
 216 00fe 0CEB8303 		add	r3, ip, r3, lsl #2
 217 0102 0136     		adds	r6, r6, #1
 218 0104 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 219 0106 66F38302 		bfi	r2, r6, #2, #2
 220 010a 5A74     		strb	r2, [r3, #17]
 221 010c BBF1000F 		cmp	fp, #0
 222 0110 0ED0     		beq	.L47
 223 0112 8000     		lsls	r0, r0, #2
 224 0114 00F14020 		add	r0, r0, #1073758208
 225 0118 00F50020 		add	r0, r0, #524288
 226 011c 0A23     		movs	r3, #10
 227 011e 026B     		ldr	r2, [r0, #48]
 228 0120 42F05F02 		orr	r2, r2, #95
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 5


 229 0124 0263     		str	r2, [r0, #48]
 230              	.L46:
 231 0126 026B     		ldr	r2, [r0, #48]
 232 0128 D206     		lsls	r2, r2, #27
 233 012a 01D4     		bmi	.L47
 234 012c 013B     		subs	r3, r3, #1
 235 012e FAD1     		bne	.L46
 236              	.L47:
 237 0130 009B     		ldr	r3, [sp]
 238 0132 3BB1     		cbz	r3, .L45
 239 0134 0EEB0703 		add	r3, lr, r7
 240 0138 0CEB8303 		add	r3, ip, r3, lsl #2
 241 013c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 242 013e 6FF38612 		bfc	r2, #6, #1
 243 0142 5A74     		strb	r2, [r3, #17]
 244              	.L45:
 245 0144 CA45     		cmp	r10, r9
 246 0146 10D8     		bhi	.L49
 247 0148 7744     		add	r7, r7, lr
 248 014a 0CEB870C 		add	ip, ip, r7, lsl #2
 249 014e 9CF81100 		ldrb	r0, [ip, #17]	@ zero_extendqisi2
 250 0152 10F04000 		ands	r0, r0, #64
 251 0156 08D1     		bne	.L49
 252 0158 9CF81130 		ldrb	r3, [ip, #17]	@ zero_extendqisi2
 253 015c 43F08003 		orr	r3, r3, #128
 254 0160 8CF81130 		strb	r3, [ip, #17]
 255 0164 03B0     		add	sp, sp, #12
 256              		@ sp needed
 257 0166 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 258              	.L49:
 259 016a 0120     		movs	r0, #1
 260 016c 03B0     		add	sp, sp, #12
 261              		@ sp needed
 262 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 263              	.L50:
 264 0172 0123     		movs	r3, #1
 265 0174 5BE7     		b	.L34
 266              	.L53:
 267 0176 0123     		movs	r3, #1
 268 0178 D146     		mov	r9, r10
 269 017a 0093     		str	r3, [sp]
 270 017c 7AE7     		b	.L38
 271              	.L52:
 272 017e 1846     		mov	r0, r3
 273 0180 03B0     		add	sp, sp, #12
 274              		@ sp needed
 275 0182 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 276              	.L66:
 277 0186 00BF     		.align	2
 278              	.L65:
 279 0188 00400840 		.word	1074282496
 280 018c 00000000 		.word	.LANCHOR0
 281              		.size	udd_ep_in_sent, .-udd_ep_in_sent
 282              		.section	.text.udd_ep_finish_job.part.3,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	udd_ep_finish_job.part.3, %function
 290              	udd_ep_finish_job.part.3:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293              		@ link register save eliminated.
 294 0000 30B4     		push	{r4, r5}
 295 0002 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 296 0004 0468     		ldr	r4, [r0]
 297 0006 6FF30413 		bfc	r3, #4, #1
 298 000a 4374     		strb	r3, [r0, #17]
 299 000c 74B1     		cbz	r4, .L67
 300 000e 0D46     		mov	r5, r1
 301 0010 074B     		ldr	r3, .L74
 302 0012 02F10C01 		add	r1, r2, #12
 303 0016 53F82130 		ldr	r3, [r3, r1, lsl #2]
 304 001a 8168     		ldr	r1, [r0, #8]
 305 001c 5B05     		lsls	r3, r3, #21
 306 001e E8B2     		uxtb	r0, r5
 307 0020 2346     		mov	r3, r4
 308 0022 48BF     		it	mi
 309 0024 42F08002 		orrmi	r2, r2, #128
 310 0028 30BC     		pop	{r4, r5}
 311 002a 1847     		bx	r3	@ indirect register sibling call
 312              	.L67:
 313 002c 30BC     		pop	{r4, r5}
 314 002e 7047     		bx	lr
 315              	.L75:
 316              		.align	2
 317              	.L74:
 318 0030 00400840 		.word	1074282496
 319              		.size	udd_ep_finish_job.part.3, .-udd_ep_finish_job.part.3
 320              		.section	.text.udd_ep_abort_job,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu fpv4-sp-d16
 327              		.type	udd_ep_abort_job, %function
 328              	udd_ep_abort_job:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 332 0000 00F00F02 		and	r2, r0, #15
 333 0004 531E     		subs	r3, r2, #1
 334 0006 0648     		ldr	r0, .L79
 335 0008 03EB8303 		add	r3, r3, r3, lsl #2
 336 000c 00EB8300 		add	r0, r0, r3, lsl #2
 337 0010 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 338 0012 DB06     		lsls	r3, r3, #27
 339 0014 00D4     		bmi	.L78
 340 0016 7047     		bx	lr
 341              	.L78:
 342 0018 0121     		movs	r1, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 7


 343 001a FFF7FEBF 		b	udd_ep_finish_job.part.3
 344              	.L80:
 345 001e 00BF     		.align	2
 346              	.L79:
 347 0020 00000000 		.word	.LANCHOR0
 348              		.size	udd_ep_abort_job, .-udd_ep_abort_job
 349              		.section	.text.udd_ctrl_in_sent,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu fpv4-sp-d16
 356              		.type	udd_ctrl_in_sent, %function
 357              	udd_ctrl_in_sent:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 361 0004 5A4E     		ldr	r6, .L139
 362 0006 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 363 0008 032B     		cmp	r3, #3
 364 000a 6DD0     		beq	.L136
 365 000c 594F     		ldr	r7, .L139+4
 366 000e 5A4D     		ldr	r5, .L139+8
 367 0010 3B88     		ldrh	r3, [r7]
 368 0012 AC89     		ldrh	r4, [r5, #12]
 369 0014 E41A     		subs	r4, r4, r3
 370 0016 A4B2     		uxth	r4, r4
 371 0018 002C     		cmp	r4, #0
 372 001a 45D0     		beq	.L88
 373 001c DFF86881 		ldr	r8, .L139+24
 374              	.L89:
 375 0020 3F2C     		cmp	r4, #63
 376 0022 40F29080 		bls	.L97
 377 0026 0022     		movs	r2, #0
 378 0028 88F80020 		strb	r2, [r8]
 379 002c 4024     		movs	r4, #64
 380              	.L98:
 381 002e AA68     		ldr	r2, [r5, #8]
 382              		.syntax unified
 383              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 384 0030 EFF31080 		MRS r0, primask
 385              	@ 0 "" 2
 386              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 387 0034 72B6     		cpsid i
 388              	@ 0 "" 2
 389              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 390 0036 BFF35F8F 		dmb
 391              	@ 0 "" 2
 392              		.thumb
 393              		.syntax unified
 394 003a 5049     		ldr	r1, .L139+12
 395 003c 504D     		ldr	r5, .L139+16
 396 003e 4FF0000C 		mov	ip, #0
 397 0042 81F800C0 		strb	ip, [r1]
 398 0046 D5F830C0 		ldr	ip, [r5, #48]
 399 004a 1CF0020F 		tst	ip, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 8


 400 004e 63D1     		bne	.L99
 401 0050 54B1     		cbz	r4, .L101
 402 0052 02EB030C 		add	ip, r2, r3
 403 0056 6246     		mov	r2, ip
 404              	.L105:
 405 0058 12F8016B 		ldrb	r6, [r2], #1	@ zero_extendqisi2
 406 005c 2E65     		str	r6, [r5, #80]
 407 005e A2EB0C03 		sub	r3, r2, ip
 408 0062 DBB2     		uxtb	r3, r3
 409 0064 A342     		cmp	r3, r4
 410 0066 F7D3     		bcc	.L105
 411              	.L101:
 412 0068 3A88     		ldrh	r2, [r7]
 413 006a 454B     		ldr	r3, .L139+16
 414 006c 1444     		add	r4, r4, r2
 415 006e 1A6B     		ldr	r2, [r3, #48]
 416 0070 3C80     		strh	r4, [r7]	@ movhi
 417 0072 42F05F02 		orr	r2, r2, #95
 418 0076 1A63     		str	r2, [r3, #48]
 419 0078 1C46     		mov	r4, r3
 420 007a 0A23     		movs	r3, #10
 421              	.L106:
 422 007c 226B     		ldr	r2, [r4, #48]
 423 007e D506     		lsls	r5, r2, #27
 424 0080 01D4     		bmi	.L107
 425 0082 013B     		subs	r3, r3, #1
 426 0084 FAD1     		bne	.L106
 427              	.L107:
 428 0086 3E4C     		ldr	r4, .L139+16
 429 0088 236B     		ldr	r3, [r4, #48]
 430 008a 23F00103 		bic	r3, r3, #1
 431 008e 43F04E03 		orr	r3, r3, #78
 432 0092 2363     		str	r3, [r4, #48]
 433 0094 0A23     		movs	r3, #10
 434              	.L109:
 435 0096 226B     		ldr	r2, [r4, #48]
 436 0098 D207     		lsls	r2, r2, #31
 437 009a 01D5     		bpl	.L110
 438 009c 013B     		subs	r3, r3, #1
 439 009e FAD1     		bne	.L109
 440              	.L110:
 441 00a0 0028     		cmp	r0, #0
 442 00a2 54D0     		beq	.L137
 443              	.L81:
 444 00a4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 445              	.L88:
 446 00a8 3649     		ldr	r1, .L139+20
 447 00aa E888     		ldrh	r0, [r5, #6]
 448 00ac 0A88     		ldrh	r2, [r1]
 449 00ae 1A44     		add	r2, r2, r3
 450 00b0 92B2     		uxth	r2, r2
 451 00b2 9042     		cmp	r0, r2
 452 00b4 0A80     		strh	r2, [r1]	@ movhi
 453 00b6 06D0     		beq	.L90
 454 00b8 DFF8CC80 		ldr	r8, .L139+24
 455 00bc 98F80090 		ldrb	r9, [r8]	@ zero_extendqisi2
 456 00c0 B9F1000F 		cmp	r9, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 9


 457 00c4 3AD0     		beq	.L91
 458              	.L90:
 459 00c6 2E49     		ldr	r1, .L139+16
 460 00c8 0423     		movs	r3, #4
 461 00ca 3370     		strb	r3, [r6]
 462 00cc 0B6B     		ldr	r3, [r1, #48]
 463 00ce 23F00103 		bic	r3, r3, #1
 464 00d2 43F04E03 		orr	r3, r3, #78
 465 00d6 0B63     		str	r3, [r1, #48]
 466 00d8 0A23     		movs	r3, #10
 467              	.L92:
 468 00da 0A6B     		ldr	r2, [r1, #48]
 469 00dc D707     		lsls	r7, r2, #31
 470 00de E1D5     		bpl	.L81
 471 00e0 013B     		subs	r3, r3, #1
 472 00e2 FAD1     		bne	.L92
 473 00e4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 474              	.L136:
 475 00e8 2549     		ldr	r1, .L139+16
 476 00ea 0B6B     		ldr	r3, [r1, #48]
 477 00ec 23F00103 		bic	r3, r3, #1
 478 00f0 43F04E03 		orr	r3, r3, #78
 479 00f4 0B63     		str	r3, [r1, #48]
 480 00f6 0A23     		movs	r3, #10
 481              	.L83:
 482 00f8 0A6B     		ldr	r2, [r1, #48]
 483 00fa D207     		lsls	r2, r2, #31
 484 00fc 01D5     		bpl	.L84
 485 00fe 013B     		subs	r3, r3, #1
 486 0100 FAD1     		bne	.L83
 487              	.L84:
 488 0102 1D4D     		ldr	r5, .L139+8
 489 0104 2B69     		ldr	r3, [r5, #16]
 490 0106 03B1     		cbz	r3, .L86
 491 0108 9847     		blx	r3
 492              	.L86:
 493 010a 0023     		movs	r3, #0
 494 010c C5E90433 		strd	r3, r3, [r5, #16]
 495 0110 AB81     		strh	r3, [r5, #12]	@ movhi
 496 0112 3370     		strb	r3, [r6]
 497 0114 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 498              	.L99:
 499 0118 F8B1     		cbz	r0, .L138
 500              	.L102:
 501 011a 1949     		ldr	r1, .L139+16
 502 011c 0423     		movs	r3, #4
 503 011e 3370     		strb	r3, [r6]
 504 0120 0B6B     		ldr	r3, [r1, #48]
 505 0122 23F00103 		bic	r3, r3, #1
 506 0126 43F04E03 		orr	r3, r3, #78
 507 012a 0B63     		str	r3, [r1, #48]
 508 012c 0A23     		movs	r3, #10
 509              	.L103:
 510 012e 0A6B     		ldr	r2, [r1, #48]
 511 0130 D607     		lsls	r6, r2, #31
 512 0132 B7D5     		bpl	.L81
 513 0134 013B     		subs	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 10


 514 0136 FAD1     		bne	.L103
 515 0138 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 516              	.L91:
 517 013c 6A69     		ldr	r2, [r5, #20]
 518 013e 12B1     		cbz	r2, .L97
 519 0140 9047     		blx	r2
 520 0142 80B9     		cbnz	r0, .L96
 521 0144 3B88     		ldrh	r3, [r7]
 522              	.L97:
 523 0146 0122     		movs	r2, #1
 524 0148 88F80020 		strb	r2, [r8]
 525 014c 6FE7     		b	.L98
 526              	.L137:
 527 014e 0123     		movs	r3, #1
 528 0150 0B70     		strb	r3, [r1]
 529              		.syntax unified
 530              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 531 0152 BFF35F8F 		dmb
 532              	@ 0 "" 2
 533              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 534 0156 62B6     		cpsie i
 535              	@ 0 "" 2
 536              		.thumb
 537              		.syntax unified
 538 0158 A4E7     		b	.L81
 539              	.L138:
 540 015a 0123     		movs	r3, #1
 541 015c 0B70     		strb	r3, [r1]
 542              		.syntax unified
 543              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 544 015e BFF35F8F 		dmb
 545              	@ 0 "" 2
 546              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 547 0162 62B6     		cpsie i
 548              	@ 0 "" 2
 549              		.thumb
 550              		.syntax unified
 551 0164 D9E7     		b	.L102
 552              	.L96:
 553 0166 3C80     		strh	r4, [r7]	@ movhi
 554 0168 4B46     		mov	r3, r9
 555 016a AC89     		ldrh	r4, [r5, #12]
 556 016c 58E7     		b	.L89
 557              	.L140:
 558 016e 00BF     		.align	2
 559              	.L139:
 560 0170 00000000 		.word	.LANCHOR1
 561 0174 00000000 		.word	.LANCHOR2
 562 0178 00000000 		.word	udd_g_ctrlreq
 563 017c 00000000 		.word	g_interrupt_enabled
 564 0180 00400840 		.word	1074282496
 565 0184 00000000 		.word	.LANCHOR3
 566 0188 00000000 		.word	.LANCHOR4
 567              		.size	udd_ctrl_in_sent, .-udd_ctrl_in_sent
 568              		.section	.text.UDP_Handler,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 11


 571              		.global	UDP_Handler
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu fpv4-sp-d16
 576              		.type	UDP_Handler, %function
 577              	UDP_Handler:
 578              		@ args = 0, pretend = 0, frame = 8
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 581 0004 2320     		movs	r0, #35
 582 0006 83B0     		sub	sp, sp, #12
 583 0008 FFF7FEFF 		bl	pmc_enable_periph_clk
 584 000c 914B     		ldr	r3, .L501
 585 000e 9A69     		ldr	r2, [r3, #24]
 586 0010 1605     		lsls	r6, r2, #20
 587 0012 02D5     		bpl	.L142
 588 0014 DA69     		ldr	r2, [r3, #28]
 589 0016 1505     		lsls	r5, r2, #20
 590 0018 75D4     		bmi	.L485
 591              	.L142:
 592 001a 8E4B     		ldr	r3, .L501
 593 001c DA69     		ldr	r2, [r3, #28]
 594 001e D407     		lsls	r4, r2, #31
 595 0020 1CD5     		bpl	.L287
 596 0022 1A6B     		ldr	r2, [r3, #48]
 597 0024 5007     		lsls	r0, r2, #29
 598 0026 00F11F81 		bmi	.L486
 599 002a 1A6B     		ldr	r2, [r3, #48]
 600 002c D607     		lsls	r6, r2, #31
 601 002e 00F16781 		bmi	.L484
 602 0032 1A6B     		ldr	r2, [r3, #48]
 603 0034 9507     		lsls	r5, r2, #30
 604 0036 7ED4     		bmi	.L487
 605 0038 1A6B     		ldr	r2, [r3, #48]
 606 003a 1507     		lsls	r5, r2, #28
 607 003c 0ED5     		bpl	.L287
 608 003e 1A6B     		ldr	r2, [r3, #48]
 609 0040 22F00802 		bic	r2, r2, #8
 610 0044 42F04702 		orr	r2, r2, #71
 611 0048 1A63     		str	r2, [r3, #48]
 612 004a 0A22     		movs	r2, #10
 613              	.L218:
 614 004c 196B     		ldr	r1, [r3, #48]
 615 004e 0C07     		lsls	r4, r1, #28
 616 0050 01D5     		bpl	.L141
 617 0052 013A     		subs	r2, r2, #1
 618 0054 FAD1     		bne	.L218
 619              	.L141:
 620 0056 03B0     		add	sp, sp, #12
 621              		@ sp needed
 622 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 623              	.L287:
 624 005c 7E4F     		ldr	r7, .L501+4
 625 005e 7D48     		ldr	r0, .L501
 626 0060 0123     		movs	r3, #1
 627 0062 A7F1140E 		sub	lr, r7, #20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 12


 628 0066 4FF0010C 		mov	ip, #1
 629              	.L268:
 630 006a 8169     		ldr	r1, [r0, #24]
 631 006c 9A00     		lsls	r2, r3, #2
 632 006e 0CFA03F6 		lsl	r6, ip, r3
 633 0072 02F14025 		add	r5, r2, #1073758208
 634 0076 3142     		tst	r1, r6
 635 0078 1A44     		add	r2, r2, r3
 636 007a 5FFA83F8 		uxtb	r8, r3
 637 007e 03F1FF39 		add	r9, r3, #-1
 638 0082 05F50025 		add	r5, r5, #524288
 639 0086 0EEB8204 		add	r4, lr, r2, lsl #2
 640 008a 03F10103 		add	r3, r3, #1
 641 008e 0CD0     		beq	.L220
 642 0090 2A6B     		ldr	r2, [r5, #48]
 643 0092 12F0420F 		tst	r2, #66
 644 0096 40F0DA81 		bne	.L488
 645 009a 2A6B     		ldr	r2, [r5, #48]
 646 009c D207     		lsls	r2, r2, #31
 647 009e 00F10582 		bmi	.L489
 648 00a2 2A6B     		ldr	r2, [r5, #48]
 649 00a4 1107     		lsls	r1, r2, #28
 650 00a6 00F13F82 		bmi	.L490
 651              	.L220:
 652 00aa 042B     		cmp	r3, #4
 653 00ac DDD1     		bne	.L268
 654 00ae 694B     		ldr	r3, .L501
 655 00b0 9A69     		ldr	r2, [r3, #24]
 656 00b2 9204     		lsls	r2, r2, #18
 657 00b4 2FD4     		bmi	.L284
 658              	.L285:
 659 00b6 674B     		ldr	r3, .L501
 660 00b8 9A69     		ldr	r2, [r3, #24]
 661 00ba 9605     		lsls	r6, r2, #22
 662 00bc 02D5     		bpl	.L271
 663 00be DB69     		ldr	r3, [r3, #28]
 664 00c0 9D05     		lsls	r5, r3, #22
 665 00c2 2BD4     		bmi	.L270
 666              	.L271:
 667 00c4 634B     		ldr	r3, .L501
 668 00c6 9A69     		ldr	r2, [r3, #24]
 669 00c8 5405     		lsls	r4, r2, #21
 670 00ca 02D5     		bpl	.L272
 671 00cc DB69     		ldr	r3, [r3, #28]
 672 00ce 5805     		lsls	r0, r3, #21
 673 00d0 24D4     		bmi	.L270
 674              	.L272:
 675 00d2 604B     		ldr	r3, .L501
 676 00d4 9A69     		ldr	r2, [r3, #24]
 677 00d6 D105     		lsls	r1, r2, #23
 678 00d8 56D5     		bpl	.L273
 679 00da DA69     		ldr	r2, [r3, #28]
 680 00dc D205     		lsls	r2, r2, #23
 681 00de 53D5     		bpl	.L273
 682 00e0 4FF48072 		mov	r2, #256
 683 00e4 4FF40055 		mov	r5, #8192
 684 00e8 4FF40074 		mov	r4, #512
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 13


 685 00ec 4FF48061 		mov	r1, #1024
 686 00f0 2320     		movs	r0, #35
 687 00f2 1A62     		str	r2, [r3, #32]
 688 00f4 5A61     		str	r2, [r3, #20]
 689 00f6 1D61     		str	r5, [r3, #16]
 690 00f8 1C61     		str	r4, [r3, #16]
 691 00fa 1961     		str	r1, [r3, #16]
 692 00fc 03B0     		add	sp, sp, #12
 693              		@ sp needed
 694 00fe BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 695 0102 FFF7FEBF 		b	pmc_disable_periph_clk
 696              	.L485:
 697 0106 4FF40062 		mov	r2, #2048
 698 010a 1A62     		str	r2, [r3, #32]
 699 010c 03B0     		add	sp, sp, #12
 700              		@ sp needed
 701 010e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 702 0112 FFF7FEBF 		b	udc_sof_notify
 703              	.L284:
 704 0116 DB69     		ldr	r3, [r3, #28]
 705 0118 9F04     		lsls	r7, r3, #18
 706 011a CCD5     		bpl	.L285
 707              	.L270:
 708 011c 4D4B     		ldr	r3, .L501
 709 011e 4FF41851 		mov	r1, #9728
 710 0122 4FF48072 		mov	r2, #256
 711 0126 4FF40060 		mov	r0, #2048
 712 012a 1962     		str	r1, [r3, #32]
 713 012c 5961     		str	r1, [r3, #20]
 714 012e 1A62     		str	r2, [r3, #32]
 715 0130 1A61     		str	r2, [r3, #16]
 716 0132 1861     		str	r0, [r3, #16]
 717 0134 8FE7     		b	.L141
 718              	.L487:
 719 0136 494D     		ldr	r5, .L501+8
 720 0138 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 721 013a 012A     		cmp	r2, #1
 722 013c 00F0E580 		beq	.L177
 723 0140 022A     		cmp	r2, #2
 724 0142 00F05281 		beq	.L178
 725 0146 042A     		cmp	r2, #4
 726 0148 00F04F81 		beq	.L178
 727 014c 1A6B     		ldr	r2, [r3, #48]
 728 014e 42F06F02 		orr	r2, r2, #111
 729 0152 1A63     		str	r2, [r3, #48]
 730 0154 0A22     		movs	r2, #10
 731              	.L182:
 732 0156 196B     		ldr	r1, [r3, #48]
 733 0158 8C06     		lsls	r4, r1, #26
 734 015a 01D4     		bmi	.L483
 735 015c 013A     		subs	r2, r2, #1
 736 015e FAD1     		bne	.L182
 737              	.L483:
 738 0160 3F4E     		ldr	r6, .L501+12
 739              	.L181:
 740 0162 3C49     		ldr	r1, .L501
 741 0164 0B6B     		ldr	r3, [r1, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 14


 742 0166 23F00203 		bic	r3, r3, #2
 743 016a 43F04D03 		orr	r3, r3, #77
 744 016e 0B63     		str	r3, [r1, #48]
 745 0170 0A23     		movs	r3, #10
 746              	.L185:
 747 0172 0A6B     		ldr	r2, [r1, #48]
 748 0174 9007     		lsls	r0, r2, #30
 749 0176 01D5     		bpl	.L186
 750 0178 013B     		subs	r3, r3, #1
 751 017a FAD1     		bne	.L185
 752              	.L186:
 753 017c 0023     		movs	r3, #0
 754 017e C6E90433 		strd	r3, r3, [r6, #16]
 755 0182 B381     		strh	r3, [r6, #12]	@ movhi
 756 0184 2B70     		strb	r3, [r5]
 757 0186 66E7     		b	.L141
 758              	.L273:
 759 0188 324B     		ldr	r3, .L501
 760 018a DA69     		ldr	r2, [r3, #28]
 761 018c D704     		lsls	r7, r2, #19
 762 018e 7FF562AF 		bpl	.L141
 763 0192 4FF48052 		mov	r2, #4096
 764 0196 304D     		ldr	r5, .L501+4
 765 0198 1A62     		str	r2, [r3, #32]
 766 019a 0023     		movs	r3, #0
 767              	.L275:
 768 019c 03EB8300 		add	r0, r3, r3, lsl #2
 769 01a0 05EB8000 		add	r0, r5, r0, lsl #2
 770 01a4 5C1C     		adds	r4, r3, #1
 771 01a6 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 772 01a8 DE06     		lsls	r6, r3, #27
 773 01aa E2B2     		uxtb	r2, r4
 774 01ac 00F12481 		bmi	.L491
 775              	.L274:
 776 01b0 032C     		cmp	r4, #3
 777 01b2 2346     		mov	r3, r4
 778 01b4 F2D1     		bne	.L275
 779 01b6 FFF7FEFF 		bl	udc_reset
 780 01ba 264B     		ldr	r3, .L501
 781 01bc 5A68     		ldr	r2, [r3, #4]
 782 01be 22F00102 		bic	r2, r2, #1
 783 01c2 5A60     		str	r2, [r3, #4]
 784 01c4 5A68     		ldr	r2, [r3, #4]
 785 01c6 22F00202 		bic	r2, r2, #2
 786 01ca 5A60     		str	r2, [r3, #4]
 787 01cc 9A68     		ldr	r2, [r3, #8]
 788 01ce 42F48072 		orr	r2, r2, #256
 789 01d2 9A60     		str	r2, [r3, #8]
 790 01d4 9A68     		ldr	r2, [r3, #8]
 791 01d6 22F07F02 		bic	r2, r2, #127
 792 01da 9A60     		str	r2, [r3, #8]
 793 01dc 1A6B     		ldr	r2, [r3, #48]
 794 01de 22F40742 		bic	r2, r2, #34560
 795 01e2 22F0CF02 		bic	r2, r2, #207
 796 01e6 42F40042 		orr	r2, r2, #32768
 797 01ea 42F04F02 		orr	r2, r2, #79
 798 01ee 1A63     		str	r2, [r3, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 15


 799 01f0 0A22     		movs	r2, #10
 800              	.L276:
 801 01f2 196B     		ldr	r1, [r3, #48]
 802 01f4 0C04     		lsls	r4, r1, #16
 803 01f6 01D4     		bmi	.L277
 804 01f8 013A     		subs	r2, r2, #1
 805 01fa FAD1     		bne	.L276
 806              	.L277:
 807 01fc 1549     		ldr	r1, .L501
 808 01fe 0B6B     		ldr	r3, [r1, #48]
 809 0200 43F40043 		orr	r3, r3, #32768
 810 0204 43F04F03 		orr	r3, r3, #79
 811 0208 0B63     		str	r3, [r1, #48]
 812 020a 0A23     		movs	r3, #10
 813              	.L279:
 814 020c 0A6B     		ldr	r2, [r1, #48]
 815 020e 1004     		lsls	r0, r2, #16
 816 0210 01D4     		bmi	.L280
 817 0212 013B     		subs	r3, r3, #1
 818 0214 FAD1     		bne	.L279
 819              	.L280:
 820              		.syntax unified
 821              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 822 0216 EFF31081 		MRS r1, primask
 823              	@ 0 "" 2
 824              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 825 021a 72B6     		cpsid i
 826              	@ 0 "" 2
 827              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 828 021c BFF35F8F 		dmb
 829              	@ 0 "" 2
 830              		.thumb
 831              		.syntax unified
 832 0220 104B     		ldr	r3, .L501+16
 833 0222 0C48     		ldr	r0, .L501
 834 0224 0024     		movs	r4, #0
 835 0226 0122     		movs	r2, #1
 836 0228 1C70     		strb	r4, [r3]
 837 022a 0261     		str	r2, [r0, #16]
 838 022c 19B9     		cbnz	r1, .L282
 839 022e 1A70     		strb	r2, [r3]
 840              		.syntax unified
 841              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 842 0230 BFF35F8F 		dmb
 843              	@ 0 "" 2
 844              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 845 0234 62B6     		cpsie i
 846              	@ 0 "" 2
 847              		.thumb
 848              		.syntax unified
 849              	.L282:
 850              	.L152:
 851              	.L283:
 852 0236 0A4A     		ldr	r2, .L501+12
 853 0238 0649     		ldr	r1, .L501
 854 023a 084D     		ldr	r5, .L501+8
 855 023c 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 16


 856 023e 4FF48074 		mov	r4, #256
 857 0242 4FF40060 		mov	r0, #2048
 858 0246 2B70     		strb	r3, [r5]
 859 0248 1361     		str	r3, [r2, #16]
 860 024a 0C61     		str	r4, [r1, #16]
 861 024c 5361     		str	r3, [r2, #20]
 862 024e 0861     		str	r0, [r1, #16]
 863 0250 9381     		strh	r3, [r2, #12]	@ movhi
 864 0252 00E7     		b	.L141
 865              	.L502:
 866              		.align	2
 867              	.L501:
 868 0254 00400840 		.word	1074282496
 869 0258 00000000 		.word	.LANCHOR0
 870 025c 00000000 		.word	.LANCHOR1
 871 0260 00000000 		.word	udd_g_ctrlreq
 872 0264 00000000 		.word	g_interrupt_enabled
 873              	.L486:
 874 0268 A94D     		ldr	r5, .L503
 875 026a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 876 026c 43B1     		cbz	r3, .L145
 877 026e A94E     		ldr	r6, .L503+4
 878 0270 3369     		ldr	r3, [r6, #16]
 879 0272 03B1     		cbz	r3, .L146
 880 0274 9847     		blx	r3
 881              	.L146:
 882 0276 0023     		movs	r3, #0
 883 0278 C6E90433 		strd	r3, r3, [r6, #16]
 884 027c B381     		strh	r3, [r6, #12]	@ movhi
 885 027e 2B70     		strb	r3, [r5]
 886              	.L145:
 887 0280 A54A     		ldr	r2, .L503+8
 888 0282 136B     		ldr	r3, [r2, #48]
 889 0284 C3F30A43 		ubfx	r3, r3, #16, #11
 890 0288 082B     		cmp	r3, #8
 891 028a 00F08580 		beq	.L147
 892 028e 136B     		ldr	r3, [r2, #48]
 893 0290 23F00403 		bic	r3, r3, #4
 894 0294 43F04B03 		orr	r3, r3, #75
 895 0298 1363     		str	r3, [r2, #48]
 896 029a 0A23     		movs	r3, #10
 897              	.L148:
 898 029c 116B     		ldr	r1, [r2, #48]
 899 029e 4907     		lsls	r1, r1, #29
 900 02a0 01D5     		bpl	.L149
 901 02a2 013B     		subs	r3, r3, #1
 902 02a4 FAD1     		bne	.L148
 903              	.L149:
 904 02a6 9C4B     		ldr	r3, .L503+8
 905 02a8 1A6B     		ldr	r2, [r3, #48]
 906 02aa 0521     		movs	r1, #5
 907 02ac 42F06F02 		orr	r2, r2, #111
 908 02b0 2970     		strb	r1, [r5]
 909 02b2 1946     		mov	r1, r3
 910 02b4 1A63     		str	r2, [r3, #48]
 911 02b6 0A23     		movs	r3, #10
 912              	.L151:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 17


 913 02b8 0A6B     		ldr	r2, [r1, #48]
 914 02ba 9706     		lsls	r7, r2, #26
 915 02bc 3FF5CBAE 		bmi	.L141
 916 02c0 013B     		subs	r3, r3, #1
 917 02c2 F9D1     		bne	.L151
 918 02c4 C7E6     		b	.L141
 919              	.L493:
 920 02c6 43F0CF03 		orr	r3, r3, #207
 921 02ca 2363     		str	r3, [r4, #48]
 922 02cc 0A23     		movs	r3, #10
 923              	.L163:
 924 02ce 0A6B     		ldr	r2, [r1, #48]
 925 02d0 1406     		lsls	r4, r2, #24
 926 02d2 01D4     		bmi	.L164
 927 02d4 013B     		subs	r3, r3, #1
 928 02d6 FAD1     		bne	.L163
 929              	.L164:
 930 02d8 8F49     		ldr	r1, .L503+8
 931 02da 0B6B     		ldr	r3, [r1, #48]
 932 02dc 23F00403 		bic	r3, r3, #4
 933 02e0 43F04B03 		orr	r3, r3, #75
 934 02e4 0B63     		str	r3, [r1, #48]
 935 02e6 0A23     		movs	r3, #10
 936              	.L166:
 937 02e8 0A6B     		ldr	r2, [r1, #48]
 938 02ea 5007     		lsls	r0, r2, #29
 939 02ec 01D5     		bpl	.L167
 940 02ee 013B     		subs	r3, r3, #1
 941 02f0 FAD1     		bne	.L166
 942              	.L167:
 943 02f2 8A48     		ldr	r0, .L503+12
 944 02f4 8A49     		ldr	r1, .L503+16
 945 02f6 0023     		movs	r3, #0
 946 02f8 0222     		movs	r2, #2
 947 02fa 0380     		strh	r3, [r0]	@ movhi
 948 02fc 0B80     		strh	r3, [r1]	@ movhi
 949 02fe 2A70     		strb	r2, [r5]
 950              	.L484:
 951 0300 03B0     		add	sp, sp, #12
 952              		@ sp needed
 953 0302 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 954 0306 FFF7FEBF 		b	udd_ctrl_in_sent
 955              	.L177:
 956 030a 854C     		ldr	r4, .L503+16
 957 030c 196B     		ldr	r1, [r3, #48]
 958 030e 814E     		ldr	r6, .L503+4
 959 0310 2388     		ldrh	r3, [r4]
 960 0312 B089     		ldrh	r0, [r6, #12]
 961 0314 C1F30A41 		ubfx	r1, r1, #16, #11
 962 0318 5A18     		adds	r2, r3, r1
 963 031a 9042     		cmp	r0, r2
 964 031c 02DA     		bge	.L188
 965 031e C11A     		subs	r1, r0, r3
 966 0320 89B2     		uxth	r1, r1
 967 0322 5A18     		adds	r2, r3, r1
 968              	.L188:
 969 0324 B068     		ldr	r0, [r6, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 18


 970 0326 1FFA82FC 		uxth	ip, r2
 971 032a 1844     		add	r0, r0, r3
 972 032c 69B1     		cbz	r1, .L189
 973 032e 7A4F     		ldr	r7, .L503+8
 974 0330 0246     		mov	r2, r0
 975              	.L190:
 976 0332 3B6D     		ldr	r3, [r7, #80]
 977 0334 02F8013B 		strb	r3, [r2], #1
 978 0338 131A     		subs	r3, r2, r0
 979 033a DBB2     		uxtb	r3, r3
 980 033c 8B42     		cmp	r3, r1
 981 033e F8D3     		bcc	.L190
 982 0340 4029     		cmp	r1, #64
 983 0342 A4F800C0 		strh	ip, [r4]	@ movhi
 984 0346 00F07581 		beq	.L492
 985              	.L189:
 986 034a 7369     		ldr	r3, [r6, #20]
 987 034c A6F80CC0 		strh	ip, [r6, #12]	@ movhi
 988 0350 002B     		cmp	r3, #0
 989 0352 00F0FE80 		beq	.L192
 990 0356 9847     		blx	r3
 991 0358 0028     		cmp	r0, #0
 992 035a 40F0FA80 		bne	.L192
 993 035e 6E4B     		ldr	r3, .L503+8
 994 0360 1A6B     		ldr	r2, [r3, #48]
 995 0362 0521     		movs	r1, #5
 996 0364 42F06F02 		orr	r2, r2, #111
 997 0368 2970     		strb	r1, [r5]
 998 036a 1946     		mov	r1, r3
 999 036c 1A63     		str	r2, [r3, #48]
 1000 036e 0A23     		movs	r3, #10
 1001              	.L193:
 1002 0370 0A6B     		ldr	r2, [r1, #48]
 1003 0372 9206     		lsls	r2, r2, #26
 1004 0374 01D4     		bmi	.L194
 1005 0376 013B     		subs	r3, r3, #1
 1006 0378 FAD1     		bne	.L193
 1007              	.L194:
 1008 037a 6749     		ldr	r1, .L503+8
 1009 037c 0B6B     		ldr	r3, [r1, #48]
 1010 037e 23F00203 		bic	r3, r3, #2
 1011 0382 43F04D03 		orr	r3, r3, #77
 1012 0386 0B63     		str	r3, [r1, #48]
 1013 0388 0A23     		movs	r3, #10
 1014              	.L196:
 1015 038a 0A6B     		ldr	r2, [r1, #48]
 1016 038c 9707     		lsls	r7, r2, #30
 1017 038e 7FF562AE 		bpl	.L141
 1018 0392 013B     		subs	r3, r3, #1
 1019 0394 F9D1     		bne	.L196
 1020 0396 5EE6     		b	.L141
 1021              	.L147:
 1022 0398 624B     		ldr	r3, .L503+20
 1023 039a 1446     		mov	r4, r2
 1024 039c 03F10801 		add	r1, r3, #8
 1025              	.L155:
 1026 03a0 226D     		ldr	r2, [r4, #80]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 19


 1027 03a2 03F8012F 		strb	r2, [r3, #1]!
 1028 03a6 8B42     		cmp	r3, r1
 1029 03a8 FAD1     		bne	.L155
 1030 03aa FFF7FEFF 		bl	udc_process_setup
 1031 03ae 38BB     		cbnz	r0, .L156
 1032 03b0 236B     		ldr	r3, [r4, #48]
 1033 03b2 5949     		ldr	r1, .L503+8
 1034 03b4 23F00403 		bic	r3, r3, #4
 1035 03b8 43F04B03 		orr	r3, r3, #75
 1036 03bc 2363     		str	r3, [r4, #48]
 1037 03be 0A23     		movs	r3, #10
 1038              	.L157:
 1039 03c0 0A6B     		ldr	r2, [r1, #48]
 1040 03c2 5607     		lsls	r6, r2, #29
 1041 03c4 01D5     		bpl	.L158
 1042 03c6 013B     		subs	r3, r3, #1
 1043 03c8 FAD1     		bne	.L157
 1044              	.L158:
 1045 03ca 534B     		ldr	r3, .L503+8
 1046 03cc 1A6B     		ldr	r2, [r3, #48]
 1047 03ce 0521     		movs	r1, #5
 1048 03d0 42F06F02 		orr	r2, r2, #111
 1049 03d4 2970     		strb	r1, [r5]
 1050 03d6 1946     		mov	r1, r3
 1051 03d8 1A63     		str	r2, [r3, #48]
 1052 03da 0A23     		movs	r3, #10
 1053              	.L160:
 1054 03dc 0A6B     		ldr	r2, [r1, #48]
 1055 03de 9506     		lsls	r5, r2, #26
 1056 03e0 3FF539AE 		bmi	.L141
 1057 03e4 013B     		subs	r3, r3, #1
 1058 03e6 F9D1     		bne	.L160
 1059 03e8 35E6     		b	.L141
 1060              	.L178:
 1061 03ea 4A4E     		ldr	r6, .L503+4
 1062 03ec 3369     		ldr	r3, [r6, #16]
 1063 03ee 002B     		cmp	r3, #0
 1064 03f0 3FF4B7AE 		beq	.L181
 1065 03f4 9847     		blx	r3
 1066 03f6 B4E6     		b	.L181
 1067              	.L491:
 1068 03f8 0121     		movs	r1, #1
 1069 03fa FFF7FEFF 		bl	udd_ep_finish_job.part.3
 1070 03fe D7E6     		b	.L274
 1071              	.L156:
 1072 0400 444E     		ldr	r6, .L503+4
 1073 0402 4549     		ldr	r1, .L503+8
 1074 0404 96F90030 		ldrsb	r3, [r6]
 1075 0408 002B     		cmp	r3, #0
 1076 040a 236B     		ldr	r3, [r4, #48]
 1077 040c FFF65BAF 		blt	.L493
 1078 0410 23F00403 		bic	r3, r3, #4
 1079 0414 43F04B03 		orr	r3, r3, #75
 1080 0418 2363     		str	r3, [r4, #48]
 1081 041a 0A23     		movs	r3, #10
 1082              	.L169:
 1083 041c 0A6B     		ldr	r2, [r1, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 20


 1084 041e 5207     		lsls	r2, r2, #29
 1085 0420 01D5     		bpl	.L170
 1086 0422 013B     		subs	r3, r3, #1
 1087 0424 FAD1     		bne	.L169
 1088              	.L170:
 1089 0426 F388     		ldrh	r3, [r6, #6]
 1090 0428 002B     		cmp	r3, #0
 1091 042a 40F01F81 		bne	.L172
 1092 042e 3A4B     		ldr	r3, .L503+8
 1093 0430 1A6B     		ldr	r2, [r3, #48]
 1094 0432 0321     		movs	r1, #3
 1095 0434 42F05F02 		orr	r2, r2, #95
 1096 0438 2970     		strb	r1, [r5]
 1097 043a 1946     		mov	r1, r3
 1098 043c 1A63     		str	r2, [r3, #48]
 1099 043e 0A23     		movs	r3, #10
 1100              	.L173:
 1101 0440 0A6B     		ldr	r2, [r1, #48]
 1102 0442 D706     		lsls	r7, r2, #27
 1103 0444 3FF507AE 		bmi	.L141
 1104 0448 013B     		subs	r3, r3, #1
 1105 044a F9D1     		bne	.L173
 1106 044c 03E6     		b	.L141
 1107              	.L488:
 1108 044e 4FEA890A 		lsl	r10, r9, #2
 1109 0452 0AEB0903 		add	r3, r10, r9
 1110 0456 07EB8303 		add	r3, r7, r3, lsl #2
 1111 045a 2A6B     		ldr	r2, [r5, #48]
 1112 045c B3F810B0 		ldrh	fp, [r3, #16]
 1113 0460 C2F30A42 		ubfx	r2, r2, #16, #11
 1114 0464 CBF3090B 		ubfx	fp, fp, #0, #10
 1115 0468 002A     		cmp	r2, #0
 1116 046a 40F08F80 		bne	.L222
 1117 046e 4046     		mov	r0, r8
 1118 0470 0092     		str	r2, [sp]
 1119 0472 FFF7FEFF 		bl	udd_ep_ack_out_received
 1120 0476 009A     		ldr	r2, [sp]
 1121              	.L223:
 1122 0478 9345     		cmp	fp, r2
 1123 047a 7FF6ECAD 		bls	.L141
 1124              	.L226:
 1125 047e 296B     		ldr	r1, [r5, #48]
 1126 0480 11F02001 		ands	r1, r1, #32
 1127 0484 7FF4E7AD 		bne	.L141
 1128 0488 234B     		ldr	r3, .L503+8
 1129 048a D144     		add	r9, r9, r10
 1130 048c 07EB8907 		add	r7, r7, r9, lsl #2
 1131 0490 5E61     		str	r6, [r3, #20]
 1132 0492 7B7C     		ldrb	r3, [r7, #17]	@ zero_extendqisi2
 1133 0494 FA68     		ldr	r2, [r7, #12]
 1134 0496 BA60     		str	r2, [r7, #8]
 1135 0498 D806     		lsls	r0, r3, #27
 1136 049a 7FF5DCAD 		bpl	.L141
 1137 049e 4246     		mov	r2, r8
 1138 04a0 2046     		mov	r0, r4
 1139 04a2 03B0     		add	sp, sp, #12
 1140              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 21


 1141 04a4 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1142 04a8 FFF7FEBF 		b	udd_ep_finish_job.part.3
 1143              	.L489:
 1144 04ac 4FEA890A 		lsl	r10, r9, #2
 1145 04b0 0AEB0902 		add	r2, r10, r9
 1146 04b4 07EB8202 		add	r2, r7, r2, lsl #2
 1147 04b8 02F1100C 		add	ip, r2, #16
 1148 04bc 9CF80130 		ldrb	r3, [ip, #1]	@ zero_extendqisi2
 1149 04c0 C3F38101 		ubfx	r1, r3, #2, #2
 1150 04c4 0331     		adds	r1, r1, #3
 1151 04c6 61F38303 		bfi	r3, r1, #2, #2
 1152 04ca 8CF80130 		strb	r3, [ip, #1]
 1153 04ce 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1154 04d0 13F02001 		ands	r1, r3, #32
 1155 04d4 7AD0     		beq	.L230
 1156 04d6 13F00C0F 		tst	r3, #12
 1157 04da 2B6B     		ldr	r3, [r5, #48]
 1158 04dc 00F0D580 		beq	.L231
 1159 04e0 43F05F03 		orr	r3, r3, #95
 1160 04e4 2B63     		str	r3, [r5, #48]
 1161 04e6 0A23     		movs	r3, #10
 1162              	.L232:
 1163 04e8 2A6B     		ldr	r2, [r5, #48]
 1164 04ea D406     		lsls	r4, r2, #27
 1165 04ec 01D4     		bmi	.L233
 1166 04ee 013B     		subs	r3, r3, #1
 1167 04f0 FAD1     		bne	.L232
 1168              	.L233:
 1169 04f2 2B6B     		ldr	r3, [r5, #48]
 1170 04f4 23F00103 		bic	r3, r3, #1
 1171 04f8 43F04E03 		orr	r3, r3, #78
 1172 04fc 2B63     		str	r3, [r5, #48]
 1173 04fe 0A23     		movs	r3, #10
 1174              	.L235:
 1175 0500 2A6B     		ldr	r2, [r5, #48]
 1176 0502 D007     		lsls	r0, r2, #31
 1177 0504 7FF5A7AD 		bpl	.L141
 1178 0508 013B     		subs	r3, r3, #1
 1179 050a F9D1     		bne	.L235
 1180 050c A3E5     		b	.L141
 1181              	.L504:
 1182 050e 00BF     		.align	2
 1183              	.L503:
 1184 0510 00000000 		.word	.LANCHOR1
 1185 0514 00000000 		.word	udd_g_ctrlreq
 1186 0518 00400840 		.word	1074282496
 1187 051c 00000000 		.word	.LANCHOR3
 1188 0520 00000000 		.word	.LANCHOR2
 1189 0524 FFFFFFFF 		.word	udd_g_ctrlreq-1
 1190              	.L490:
 1191 0528 2B6B     		ldr	r3, [r5, #48]
 1192 052a 23F00803 		bic	r3, r3, #8
 1193 052e 43F04703 		orr	r3, r3, #71
 1194 0532 2B63     		str	r3, [r5, #48]
 1195 0534 0A23     		movs	r3, #10
 1196              	.L265:
 1197 0536 2A6B     		ldr	r2, [r5, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 22


 1198 0538 1207     		lsls	r2, r2, #28
 1199 053a 01D5     		bpl	.L266
 1200 053c 013B     		subs	r3, r3, #1
 1201 053e FAD1     		bne	.L265
 1202              	.L266:
 1203 0540 2B6B     		ldr	r3, [r5, #48]
 1204 0542 03F4E063 		and	r3, r3, #1792
 1205 0546 B3F5807F 		cmp	r3, #256
 1206 054a 3FF484AD 		beq	.L141
 1207 054e 2B6B     		ldr	r3, [r5, #48]
 1208 0550 81E5     		b	.L141
 1209              	.L192:
 1210 0552 AB49     		ldr	r1, .L505
 1211 0554 0B6B     		ldr	r3, [r1, #48]
 1212 0556 23F00203 		bic	r3, r3, #2
 1213 055a 43F04D03 		orr	r3, r3, #77
 1214 055e 0B63     		str	r3, [r1, #48]
 1215 0560 0A23     		movs	r3, #10
 1216              	.L198:
 1217 0562 0A6B     		ldr	r2, [r1, #48]
 1218 0564 9607     		lsls	r6, r2, #30
 1219 0566 01D5     		bpl	.L199
 1220 0568 013B     		subs	r3, r3, #1
 1221 056a FAD1     		bne	.L198
 1222              	.L199:
 1223 056c A44B     		ldr	r3, .L505
 1224 056e 1A6B     		ldr	r2, [r3, #48]
 1225 0570 0321     		movs	r1, #3
 1226 0572 42F05F02 		orr	r2, r2, #95
 1227 0576 2970     		strb	r1, [r5]
 1228 0578 1946     		mov	r1, r3
 1229 057a 1A63     		str	r2, [r3, #48]
 1230 057c 0A23     		movs	r3, #10
 1231              	.L201:
 1232 057e 0A6B     		ldr	r2, [r1, #48]
 1233 0580 D406     		lsls	r4, r2, #27
 1234 0582 3FF568AD 		bmi	.L141
 1235 0586 013B     		subs	r3, r3, #1
 1236 0588 F9D1     		bne	.L201
 1237 058a 64E5     		b	.L141
 1238              	.L222:
 1239 058c D3E90210 		ldrd	r1, r0, [r3, #8]
 1240 0590 A1EB000E 		sub	lr, r1, r0
 1241 0594 9645     		cmp	lr, r2
 1242 0596 D3F804C0 		ldr	ip, [r3, #4]
 1243 059a 6FD9     		bls	.L224
 1244 059c 8118     		adds	r1, r0, r2
 1245 059e D960     		str	r1, [r3, #12]
 1246 05a0 9646     		mov	lr, r2
 1247 05a2 0021     		movs	r1, #0
 1248              	.L225:
 1249 05a4 8444     		add	ip, ip, r0
 1250 05a6 6346     		mov	r3, ip
 1251              	.L227:
 1252 05a8 286D     		ldr	r0, [r5, #80]
 1253 05aa 03F8010B 		strb	r0, [r3], #1
 1254 05ae A3EB0C00 		sub	r0, r3, ip
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 23


 1255 05b2 8645     		cmp	lr, r0
 1256 05b4 F8D8     		bhi	.L227
 1257 05b6 4046     		mov	r0, r8
 1258 05b8 CDE90021 		strd	r2, r1, [sp]
 1259 05bc FFF7FEFF 		bl	udd_ep_ack_out_received
 1260 05c0 DDE90021 		ldrd	r2, r1, [sp]
 1261 05c4 0029     		cmp	r1, #0
 1262 05c6 7FF45AAF 		bne	.L226
 1263 05ca 55E7     		b	.L223
 1264              	.L230:
 1265 05cc 1B06     		lsls	r3, r3, #24
 1266 05ce 7AD4     		bmi	.L494
 1267              	.L243:
 1268 05d0 0AEB0903 		add	r3, r10, r9
 1269 05d4 07EB8303 		add	r3, r7, r3, lsl #2
 1270 05d8 D3E90221 		ldrd	r2, r1, [r3, #8]
 1271 05dc 9142     		cmp	r1, r2
 1272 05de 80F0C080 		bcs	.L495
 1273              	.L245:
 1274 05e2 B8F1030F 		cmp	r8, #3
 1275 05e6 00F0BE80 		beq	.L249
 1276 05ea D144     		add	r9, r9, r10
 1277 05ec 07EB8907 		add	r7, r7, r9, lsl #2
 1278 05f0 7B7C     		ldrb	r3, [r7, #17]	@ zero_extendqisi2
 1279 05f2 13F00C0F 		tst	r3, #12
 1280 05f6 00F08F80 		beq	.L250
 1281 05fa 2B6B     		ldr	r3, [r5, #48]
 1282 05fc 43F05F03 		orr	r3, r3, #95
 1283 0600 2B63     		str	r3, [r5, #48]
 1284 0602 0A23     		movs	r3, #10
 1285              	.L251:
 1286 0604 2A6B     		ldr	r2, [r5, #48]
 1287 0606 D206     		lsls	r2, r2, #27
 1288 0608 01D4     		bmi	.L252
 1289 060a 013B     		subs	r3, r3, #1
 1290 060c FAD1     		bne	.L251
 1291              	.L252:
 1292 060e 2B6B     		ldr	r3, [r5, #48]
 1293 0610 23F00103 		bic	r3, r3, #1
 1294 0614 43F04E03 		orr	r3, r3, #78
 1295 0618 2B63     		str	r3, [r5, #48]
 1296 061a 0A23     		movs	r3, #10
 1297              	.L254:
 1298 061c 2A6B     		ldr	r2, [r5, #48]
 1299 061e D707     		lsls	r7, r2, #31
 1300 0620 01D5     		bpl	.L261
 1301 0622 013B     		subs	r3, r3, #1
 1302 0624 FAD1     		bne	.L254
 1303              	.L261:
 1304 0626 4046     		mov	r0, r8
 1305 0628 0021     		movs	r1, #0
 1306 062a 03B0     		add	sp, sp, #12
 1307              		@ sp needed
 1308 062c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1309 0630 FFF7FEBF 		b	udd_ep_in_sent
 1310              	.L492:
 1311 0634 DFF8CC81 		ldr	r8, .L505+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 24


 1312 0638 F288     		ldrh	r2, [r6, #6]
 1313 063a B8F80030 		ldrh	r3, [r8]
 1314 063e 6344     		add	r3, r3, ip
 1315 0640 9A42     		cmp	r2, r3
 1316 0642 7FF782AE 		ble	.L189
 1317 0646 B389     		ldrh	r3, [r6, #12]
 1318 0648 6345     		cmp	r3, ip
 1319 064a 00F09F80 		beq	.L496
 1320              	.L203:
 1321 064e 6C49     		ldr	r1, .L505
 1322 0650 0B6B     		ldr	r3, [r1, #48]
 1323 0652 23F00203 		bic	r3, r3, #2
 1324 0656 43F04D03 		orr	r3, r3, #77
 1325 065a 0B63     		str	r3, [r1, #48]
 1326 065c 0A23     		movs	r3, #10
 1327              	.L216:
 1328 065e 0A6B     		ldr	r2, [r1, #48]
 1329 0660 9607     		lsls	r6, r2, #30
 1330 0662 7FF5F8AC 		bpl	.L141
 1331 0666 013B     		subs	r3, r3, #1
 1332 0668 F9D1     		bne	.L216
 1333 066a F4E4     		b	.L141
 1334              	.L172:
 1335 066c 6548     		ldr	r0, .L505+4
 1336 066e 6649     		ldr	r1, .L505+8
 1337 0670 0023     		movs	r3, #0
 1338 0672 0122     		movs	r2, #1
 1339 0674 0380     		strh	r3, [r0]	@ movhi
 1340 0676 0B80     		strh	r3, [r1]	@ movhi
 1341 0678 2A70     		strb	r2, [r5]
 1342 067a ECE4     		b	.L141
 1343              	.L224:
 1344 067c D960     		str	r1, [r3, #12]
 1345 067e BEF1000F 		cmp	lr, #0
 1346 0682 00F0AF80 		beq	.L497
 1347 0686 0121     		movs	r1, #1
 1348 0688 8CE7     		b	.L225
 1349              	.L231:
 1350 068a 23F00103 		bic	r3, r3, #1
 1351 068e 43F04E03 		orr	r3, r3, #78
 1352 0692 2B63     		str	r3, [r5, #48]
 1353 0694 0A23     		movs	r3, #10
 1354              	.L237:
 1355 0696 2A6B     		ldr	r2, [r5, #48]
 1356 0698 D107     		lsls	r1, r2, #31
 1357 069a 01D5     		bpl	.L238
 1358 069c 013B     		subs	r3, r3, #1
 1359 069e FAD1     		bne	.L237
 1360              	.L238:
 1361 06a0 2B6B     		ldr	r3, [r5, #48]
 1362 06a2 43F06F03 		orr	r3, r3, #111
 1363 06a6 2B63     		str	r3, [r5, #48]
 1364 06a8 0A23     		movs	r3, #10
 1365              	.L240:
 1366 06aa 2A6B     		ldr	r2, [r5, #48]
 1367 06ac 9206     		lsls	r2, r2, #26
 1368 06ae 01D4     		bmi	.L241
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 25


 1369 06b0 013B     		subs	r3, r3, #1
 1370 06b2 FAD1     		bne	.L240
 1371              	.L241:
 1372 06b4 0AEB0903 		add	r3, r10, r9
 1373 06b8 07EB8303 		add	r3, r7, r3, lsl #2
 1374 06bc 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1375 06be 6FF34512 		bfc	r2, #5, #1
 1376 06c2 5A74     		strb	r2, [r3, #17]
 1377 06c4 C7E4     		b	.L141
 1378              	.L494:
 1379 06c6 9CF801E0 		ldrb	lr, [ip, #1]	@ zero_extendqisi2
 1380 06ca D368     		ldr	r3, [r2, #12]
 1381 06cc 9360     		str	r3, [r2, #8]
 1382 06ce 61F3C71E 		bfi	lr, r1, #7, #1
 1383 06d2 8CF801E0 		strb	lr, [ip, #1]
 1384 06d6 4661     		str	r6, [r0, #20]
 1385 06d8 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1386 06da D806     		lsls	r0, r3, #27
 1387 06dc 77D4     		bmi	.L498
 1388              	.L244:
 1389 06de 13F04C03 		ands	r3, r3, #76
 1390 06e2 7FF47EAF 		bne	.L245
 1391              		.syntax unified
 1392              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1393 06e6 EFF31081 		MRS r1, primask
 1394              	@ 0 "" 2
 1395              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1396 06ea 72B6     		cpsid i
 1397              	@ 0 "" 2
 1398              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1399 06ec BFF35F8F 		dmb
 1400              	@ 0 "" 2
 1401              		.thumb
 1402              		.syntax unified
 1403 06f0 464A     		ldr	r2, .L505+12
 1404 06f2 4348     		ldr	r0, .L505
 1405 06f4 1370     		strb	r3, [r2]
 1406 06f6 4661     		str	r6, [r0, #20]
 1407 06f8 0029     		cmp	r1, #0
 1408 06fa 6DD0     		beq	.L499
 1409              	.L246:
 1410 06fc 2B6B     		ldr	r3, [r5, #48]
 1411 06fe 23F00103 		bic	r3, r3, #1
 1412 0702 43F04E03 		orr	r3, r3, #78
 1413 0706 2B63     		str	r3, [r5, #48]
 1414 0708 0A23     		movs	r3, #10
 1415              	.L247:
 1416 070a 2A6B     		ldr	r2, [r5, #48]
 1417 070c D107     		lsls	r1, r2, #31
 1418 070e 7FF5A2AC 		bpl	.L141
 1419 0712 013B     		subs	r3, r3, #1
 1420 0714 F9D1     		bne	.L247
 1421 0716 9EE4     		b	.L141
 1422              	.L250:
 1423 0718 0121     		movs	r1, #1
 1424 071a 4046     		mov	r0, r8
 1425 071c FFF7FEFF 		bl	udd_ep_in_sent
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 26


 1426 0720 88B9     		cbnz	r0, .L258
 1427 0722 797C     		ldrb	r1, [r7, #17]	@ zero_extendqisi2
 1428 0724 DFF8D8C0 		ldr	ip, .L505
 1429 0728 FA68     		ldr	r2, [r7, #12]
 1430 072a BA60     		str	r2, [r7, #8]
 1431 072c 60F3C711 		bfi	r1, r0, #7, #1
 1432 0730 7974     		strb	r1, [r7, #17]
 1433 0732 CCF81460 		str	r6, [ip, #20]
 1434 0736 7B7C     		ldrb	r3, [r7, #17]	@ zero_extendqisi2
 1435 0738 DE06     		lsls	r6, r3, #27
 1436 073a 04D5     		bpl	.L258
 1437 073c 0146     		mov	r1, r0
 1438 073e 4246     		mov	r2, r8
 1439 0740 2046     		mov	r0, r4
 1440 0742 FFF7FEFF 		bl	udd_ep_finish_job.part.3
 1441              	.L258:
 1442 0746 2B6B     		ldr	r3, [r5, #48]
 1443 0748 23F00103 		bic	r3, r3, #1
 1444 074c 43F04E03 		orr	r3, r3, #78
 1445 0750 2B63     		str	r3, [r5, #48]
 1446 0752 0A23     		movs	r3, #10
 1447              	.L260:
 1448 0754 2A6B     		ldr	r2, [r5, #48]
 1449 0756 D407     		lsls	r4, r2, #31
 1450 0758 7FF565AF 		bpl	.L261
 1451 075c 013B     		subs	r3, r3, #1
 1452 075e F9D1     		bne	.L260
 1453 0760 61E7     		b	.L261
 1454              	.L495:
 1455 0762 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1456 0764 BBE7     		b	.L244
 1457              	.L249:
 1458 0766 0121     		movs	r1, #1
 1459 0768 4046     		mov	r0, r8
 1460 076a FFF7FEFF 		bl	udd_ep_in_sent
 1461 076e 2449     		ldr	r1, .L505
 1462 0770 CB6B     		ldr	r3, [r1, #60]
 1463 0772 23F00103 		bic	r3, r3, #1
 1464 0776 43F04E03 		orr	r3, r3, #78
 1465 077a CB63     		str	r3, [r1, #60]
 1466 077c 0A23     		movs	r3, #10
 1467              	.L263:
 1468 077e CA6B     		ldr	r2, [r1, #60]
 1469 0780 D007     		lsls	r0, r2, #31
 1470 0782 7FF568AC 		bpl	.L141
 1471 0786 013B     		subs	r3, r3, #1
 1472 0788 F9D1     		bne	.L263
 1473 078a 64E4     		b	.L141
 1474              	.L496:
 1475 078c 7369     		ldr	r3, [r6, #20]
 1476 078e 002B     		cmp	r3, #0
 1477 0790 3ED0     		beq	.L500
 1478 0792 9847     		blx	r3
 1479 0794 50BB     		cbnz	r0, .L210
 1480 0796 3A6B     		ldr	r2, [r7, #48]
 1481 0798 1949     		ldr	r1, .L505
 1482 079a 0523     		movs	r3, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 27


 1483 079c 42F06F02 		orr	r2, r2, #111
 1484 07a0 2B70     		strb	r3, [r5]
 1485 07a2 0A23     		movs	r3, #10
 1486 07a4 3A63     		str	r2, [r7, #48]
 1487              	.L211:
 1488 07a6 0A6B     		ldr	r2, [r1, #48]
 1489 07a8 9206     		lsls	r2, r2, #26
 1490 07aa 01D4     		bmi	.L212
 1491 07ac 013B     		subs	r3, r3, #1
 1492 07ae FAD1     		bne	.L211
 1493              	.L212:
 1494 07b0 134A     		ldr	r2, .L505
 1495 07b2 136B     		ldr	r3, [r2, #48]
 1496 07b4 23F00203 		bic	r3, r3, #2
 1497 07b8 43F04D03 		orr	r3, r3, #77
 1498 07bc 1363     		str	r3, [r2, #48]
 1499 07be 0A23     		movs	r3, #10
 1500              	.L214:
 1501 07c0 116B     		ldr	r1, [r2, #48]
 1502 07c2 8F07     		lsls	r7, r1, #30
 1503 07c4 7FF547AC 		bpl	.L141
 1504 07c8 013B     		subs	r3, r3, #1
 1505 07ca F9D1     		bne	.L214
 1506 07cc 43E4     		b	.L141
 1507              	.L498:
 1508 07ce 4246     		mov	r2, r8
 1509 07d0 2046     		mov	r0, r4
 1510 07d2 FFF7FEFF 		bl	udd_ep_finish_job.part.3
 1511 07d6 FBE6     		b	.L243
 1512              	.L499:
 1513 07d8 0123     		movs	r3, #1
 1514 07da 1370     		strb	r3, [r2]
 1515              		.syntax unified
 1516              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1517 07dc BFF35F8F 		dmb
 1518              	@ 0 "" 2
 1519              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1520 07e0 62B6     		cpsie i
 1521              	@ 0 "" 2
 1522              		.thumb
 1523              		.syntax unified
 1524 07e2 8BE7     		b	.L246
 1525              	.L497:
 1526 07e4 4046     		mov	r0, r8
 1527 07e6 FFF7FEFF 		bl	udd_ep_ack_out_received
 1528 07ea 48E6     		b	.L226
 1529              	.L210:
 1530 07ec B8F80030 		ldrh	r3, [r8]
 1531 07f0 2188     		ldrh	r1, [r4]
 1532 07f2 0022     		movs	r2, #0
 1533 07f4 0B44     		add	r3, r3, r1
 1534 07f6 A8F80030 		strh	r3, [r8]	@ movhi
 1535 07fa 2280     		strh	r2, [r4]	@ movhi
 1536 07fc 27E7     		b	.L203
 1537              	.L506:
 1538 07fe 00BF     		.align	2
 1539              	.L505:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 28


 1540 0800 00400840 		.word	1074282496
 1541 0804 00000000 		.word	.LANCHOR3
 1542 0808 00000000 		.word	.LANCHOR2
 1543 080c 00000000 		.word	g_interrupt_enabled
 1544              	.L500:
 1545 0810 3B6B     		ldr	r3, [r7, #48]
 1546 0812 0D49     		ldr	r1, .L507
 1547 0814 0522     		movs	r2, #5
 1548 0816 43F06F03 		orr	r3, r3, #111
 1549 081a 2A70     		strb	r2, [r5]
 1550 081c 0A22     		movs	r2, #10
 1551 081e 3B63     		str	r3, [r7, #48]
 1552              	.L205:
 1553 0820 0B6B     		ldr	r3, [r1, #48]
 1554 0822 9806     		lsls	r0, r3, #26
 1555 0824 01D4     		bmi	.L206
 1556 0826 013A     		subs	r2, r2, #1
 1557 0828 FAD1     		bne	.L205
 1558              	.L206:
 1559 082a 074B     		ldr	r3, .L507
 1560 082c 1A6B     		ldr	r2, [r3, #48]
 1561 082e 22F00202 		bic	r2, r2, #2
 1562 0832 42F04D02 		orr	r2, r2, #77
 1563 0836 1A63     		str	r2, [r3, #48]
 1564 0838 0A22     		movs	r2, #10
 1565              	.L208:
 1566 083a 196B     		ldr	r1, [r3, #48]
 1567 083c 8907     		lsls	r1, r1, #30
 1568 083e 7FF50AAC 		bpl	.L141
 1569 0842 013A     		subs	r2, r2, #1
 1570 0844 F9D1     		bne	.L208
 1571 0846 06E4     		b	.L141
 1572              	.L508:
 1573              		.align	2
 1574              	.L507:
 1575 0848 00400840 		.word	1074282496
 1576              		.size	UDP_Handler, .-UDP_Handler
 1577              		.section	.text.udd_include_vbus_monitoring,"ax",%progbits
 1578              		.align	1
 1579              		.p2align 2,,3
 1580              		.global	udd_include_vbus_monitoring
 1581              		.syntax unified
 1582              		.thumb
 1583              		.thumb_func
 1584              		.fpu fpv4-sp-d16
 1585              		.type	udd_include_vbus_monitoring, %function
 1586              	udd_include_vbus_monitoring:
 1587              		@ args = 0, pretend = 0, frame = 0
 1588              		@ frame_needed = 0, uses_anonymous_args = 0
 1589              		@ link register save eliminated.
 1590 0000 0020     		movs	r0, #0
 1591 0002 7047     		bx	lr
 1592              		.size	udd_include_vbus_monitoring, .-udd_include_vbus_monitoring
 1593              		.section	.text.udd_disable,"ax",%progbits
 1594              		.align	1
 1595              		.p2align 2,,3
 1596              		.global	udd_disable
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 29


 1597              		.syntax unified
 1598              		.thumb
 1599              		.thumb_func
 1600              		.fpu fpv4-sp-d16
 1601              		.type	udd_disable, %function
 1602              	udd_disable:
 1603              		@ args = 0, pretend = 0, frame = 0
 1604              		@ frame_needed = 0, uses_anonymous_args = 0
 1605              		@ link register save eliminated.
 1606              		.syntax unified
 1607              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1608 0000 EFF31080 		MRS r0, primask
 1609              	@ 0 "" 2
 1610              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1611 0004 72B6     		cpsid i
 1612              	@ 0 "" 2
 1613              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1614 0006 BFF35F8F 		dmb
 1615              	@ 0 "" 2
 1616              		.thumb
 1617              		.syntax unified
 1618 000a 0949     		ldr	r1, .L512
 1619 000c 094B     		ldr	r3, .L512+4
 1620 000e 0022     		movs	r2, #0
 1621 0010 0A70     		strb	r2, [r1]
 1622 0012 5A6F     		ldr	r2, [r3, #116]
 1623 0014 42F48072 		orr	r2, r2, #256
 1624 0018 5A67     		str	r2, [r3, #116]
 1625 001a 5A6F     		ldr	r2, [r3, #116]
 1626 001c 22F40072 		bic	r2, r2, #512
 1627 0020 5A67     		str	r2, [r3, #116]
 1628 0022 20B9     		cbnz	r0, .L510
 1629 0024 0123     		movs	r3, #1
 1630 0026 0B70     		strb	r3, [r1]
 1631              		.syntax unified
 1632              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1633 0028 BFF35F8F 		dmb
 1634              	@ 0 "" 2
 1635              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1636 002c 62B6     		cpsie i
 1637              	@ 0 "" 2
 1638              		.thumb
 1639              		.syntax unified
 1640              	.L510:
 1641 002e 7047     		bx	lr
 1642              	.L513:
 1643              		.align	2
 1644              	.L512:
 1645 0030 00000000 		.word	g_interrupt_enabled
 1646 0034 00400840 		.word	1074282496
 1647              		.size	udd_disable, .-udd_disable
 1648              		.section	.text.udd_attach,"ax",%progbits
 1649              		.align	1
 1650              		.p2align 2,,3
 1651              		.global	udd_attach
 1652              		.syntax unified
 1653              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 30


 1654              		.thumb_func
 1655              		.fpu fpv4-sp-d16
 1656              		.type	udd_attach, %function
 1657              	udd_attach:
 1658              		@ args = 0, pretend = 0, frame = 0
 1659              		@ frame_needed = 0, uses_anonymous_args = 0
 1660 0000 70B5     		push	{r4, r5, r6, lr}
 1661              		.syntax unified
 1662              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1663 0002 EFF31085 		MRS r5, primask
 1664              	@ 0 "" 2
 1665              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1666 0006 72B6     		cpsid i
 1667              	@ 0 "" 2
 1668              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1669 0008 BFF35F8F 		dmb
 1670              	@ 0 "" 2
 1671              		.thumb
 1672              		.syntax unified
 1673 000c 124C     		ldr	r4, .L518
 1674 000e 0023     		movs	r3, #0
 1675 0010 2320     		movs	r0, #35
 1676 0012 2370     		strb	r3, [r4]
 1677 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1678 0018 104B     		ldr	r3, .L518+4
 1679 001a 5A6F     		ldr	r2, [r3, #116]
 1680 001c 22F48072 		bic	r2, r2, #256
 1681 0020 5A67     		str	r2, [r3, #116]
 1682 0022 5A6F     		ldr	r2, [r3, #116]
 1683 0024 4FF48071 		mov	r1, #256
 1684 0028 42F40072 		orr	r2, r2, #512
 1685 002c 5A67     		str	r2, [r3, #116]
 1686 002e 4FF40056 		mov	r6, #8192
 1687 0032 1961     		str	r1, [r3, #16]
 1688 0034 4FF40070 		mov	r0, #512
 1689 0038 4FF48061 		mov	r1, #1024
 1690 003c 4FF40062 		mov	r2, #2048
 1691 0040 1E61     		str	r6, [r3, #16]
 1692 0042 1861     		str	r0, [r3, #16]
 1693 0044 1961     		str	r1, [r3, #16]
 1694 0046 1A61     		str	r2, [r3, #16]
 1695 0048 05B1     		cbz	r5, .L517
 1696 004a 70BD     		pop	{r4, r5, r6, pc}
 1697              	.L517:
 1698 004c 0123     		movs	r3, #1
 1699 004e 2370     		strb	r3, [r4]
 1700              		.syntax unified
 1701              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1702 0050 BFF35F8F 		dmb
 1703              	@ 0 "" 2
 1704              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1705 0054 62B6     		cpsie i
 1706              	@ 0 "" 2
 1707              		.thumb
 1708              		.syntax unified
 1709 0056 70BD     		pop	{r4, r5, r6, pc}
 1710              	.L519:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 31


 1711              		.align	2
 1712              	.L518:
 1713 0058 00000000 		.word	g_interrupt_enabled
 1714 005c 00400840 		.word	1074282496
 1715              		.size	udd_attach, .-udd_attach
 1716              		.section	.text.udd_enable,"ax",%progbits
 1717              		.align	1
 1718              		.p2align 2,,3
 1719              		.global	udd_enable
 1720              		.syntax unified
 1721              		.thumb
 1722              		.thumb_func
 1723              		.fpu fpv4-sp-d16
 1724              		.type	udd_enable, %function
 1725              	udd_enable:
 1726              		@ args = 0, pretend = 0, frame = 0
 1727              		@ frame_needed = 0, uses_anonymous_args = 0
 1728 0000 70B5     		push	{r4, r5, r6, lr}
 1729              		.syntax unified
 1730              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1731 0002 EFF31086 		MRS r6, primask
 1732              	@ 0 "" 2
 1733              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1734 0006 72B6     		cpsid i
 1735              	@ 0 "" 2
 1736              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1737 0008 BFF35F8F 		dmb
 1738              	@ 0 "" 2
 1739              		.thumb
 1740              		.syntax unified
 1741 000c 154D     		ldr	r5, .L526
 1742 000e 0024     		movs	r4, #0
 1743 0010 2320     		movs	r0, #35
 1744 0012 2C70     		strb	r4, [r5]
 1745 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1746 0018 FFF7FEFF 		bl	sysclk_enable_usb
 1747 001c 124B     		ldr	r3, .L526+4
 1748 001e 1348     		ldr	r0, .L526+8
 1749 0020 5021     		movs	r1, #80
 1750 0022 83F82313 		strb	r1, [r3, #803]
 1751 0026 0821     		movs	r1, #8
 1752 0028 2246     		mov	r2, r4
 1753 002a 5960     		str	r1, [r3, #4]
 1754              	.L521:
 1755 002c 02EB8203 		add	r3, r2, r2, lsl #2
 1756 0030 00EB8303 		add	r3, r0, r3, lsl #2
 1757 0034 0132     		adds	r2, r2, #1
 1758 0036 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 1759 0038 01F08301 		and	r1, r1, #131
 1760 003c 6FF3C711 		bfc	r1, #7, #1
 1761 0040 032A     		cmp	r2, #3
 1762 0042 5974     		strb	r1, [r3, #17]
 1763 0044 F2D1     		bne	.L521
 1764 0046 4FF48020 		mov	r0, #262144
 1765 004a FFF7FEFF 		bl	pmc_set_fast_startup_input
 1766 004e FFF7FEFF 		bl	udd_attach
 1767 0052 06B1     		cbz	r6, .L525
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 32


 1768 0054 70BD     		pop	{r4, r5, r6, pc}
 1769              	.L525:
 1770 0056 0123     		movs	r3, #1
 1771 0058 2B70     		strb	r3, [r5]
 1772              		.syntax unified
 1773              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1774 005a BFF35F8F 		dmb
 1775              	@ 0 "" 2
 1776              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1777 005e 62B6     		cpsie i
 1778              	@ 0 "" 2
 1779              		.thumb
 1780              		.syntax unified
 1781 0060 70BD     		pop	{r4, r5, r6, pc}
 1782              	.L527:
 1783 0062 00BF     		.align	2
 1784              	.L526:
 1785 0064 00000000 		.word	g_interrupt_enabled
 1786 0068 00E100E0 		.word	-536813312
 1787 006c 00000000 		.word	.LANCHOR0
 1788              		.size	udd_enable, .-udd_enable
 1789              		.section	.text.udd_detach,"ax",%progbits
 1790              		.align	1
 1791              		.p2align 2,,3
 1792              		.global	udd_detach
 1793              		.syntax unified
 1794              		.thumb
 1795              		.thumb_func
 1796              		.fpu fpv4-sp-d16
 1797              		.type	udd_detach, %function
 1798              	udd_detach:
 1799              		@ args = 0, pretend = 0, frame = 0
 1800              		@ frame_needed = 0, uses_anonymous_args = 0
 1801              		@ link register save eliminated.
 1802 0000 044B     		ldr	r3, .L529
 1803 0002 5A6F     		ldr	r2, [r3, #116]
 1804 0004 42F48072 		orr	r2, r2, #256
 1805 0008 5A67     		str	r2, [r3, #116]
 1806 000a 5A6F     		ldr	r2, [r3, #116]
 1807 000c 22F40072 		bic	r2, r2, #512
 1808 0010 5A67     		str	r2, [r3, #116]
 1809 0012 7047     		bx	lr
 1810              	.L530:
 1811              		.align	2
 1812              	.L529:
 1813 0014 00400840 		.word	1074282496
 1814              		.size	udd_detach, .-udd_detach
 1815              		.section	.text.udd_is_high_speed,"ax",%progbits
 1816              		.align	1
 1817              		.p2align 2,,3
 1818              		.global	udd_is_high_speed
 1819              		.syntax unified
 1820              		.thumb
 1821              		.thumb_func
 1822              		.fpu fpv4-sp-d16
 1823              		.type	udd_is_high_speed, %function
 1824              	udd_is_high_speed:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 33


 1825              		@ args = 0, pretend = 0, frame = 0
 1826              		@ frame_needed = 0, uses_anonymous_args = 0
 1827              		@ link register save eliminated.
 1828 0000 0020     		movs	r0, #0
 1829 0002 7047     		bx	lr
 1830              		.size	udd_is_high_speed, .-udd_is_high_speed
 1831              		.section	.text.udd_set_address,"ax",%progbits
 1832              		.align	1
 1833              		.p2align 2,,3
 1834              		.global	udd_set_address
 1835              		.syntax unified
 1836              		.thumb
 1837              		.thumb_func
 1838              		.fpu fpv4-sp-d16
 1839              		.type	udd_set_address, %function
 1840              	udd_set_address:
 1841              		@ args = 0, pretend = 0, frame = 0
 1842              		@ frame_needed = 0, uses_anonymous_args = 0
 1843              		@ link register save eliminated.
 1844 0000 0C4B     		ldr	r3, .L537
 1845 0002 5A68     		ldr	r2, [r3, #4]
 1846 0004 22F00102 		bic	r2, r2, #1
 1847 0008 5A60     		str	r2, [r3, #4]
 1848 000a 9A68     		ldr	r2, [r3, #8]
 1849 000c 22F48072 		bic	r2, r2, #256
 1850 0010 9A60     		str	r2, [r3, #8]
 1851 0012 70B1     		cbz	r0, .L532
 1852 0014 9A68     		ldr	r2, [r3, #8]
 1853 0016 00F07F00 		and	r0, r0, #127
 1854 001a 22F07F02 		bic	r2, r2, #127
 1855 001e 1043     		orrs	r0, r0, r2
 1856 0020 9860     		str	r0, [r3, #8]
 1857 0022 9A68     		ldr	r2, [r3, #8]
 1858 0024 42F48072 		orr	r2, r2, #256
 1859 0028 9A60     		str	r2, [r3, #8]
 1860 002a 5A68     		ldr	r2, [r3, #4]
 1861 002c 42F00102 		orr	r2, r2, #1
 1862 0030 5A60     		str	r2, [r3, #4]
 1863              	.L532:
 1864 0032 7047     		bx	lr
 1865              	.L538:
 1866              		.align	2
 1867              	.L537:
 1868 0034 00400840 		.word	1074282496
 1869              		.size	udd_set_address, .-udd_set_address
 1870              		.section	.text.udd_getaddress,"ax",%progbits
 1871              		.align	1
 1872              		.p2align 2,,3
 1873              		.global	udd_getaddress
 1874              		.syntax unified
 1875              		.thumb
 1876              		.thumb_func
 1877              		.fpu fpv4-sp-d16
 1878              		.type	udd_getaddress, %function
 1879              	udd_getaddress:
 1880              		@ args = 0, pretend = 0, frame = 0
 1881              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 34


 1882              		@ link register save eliminated.
 1883 0000 044B     		ldr	r3, .L542
 1884 0002 5868     		ldr	r0, [r3, #4]
 1885 0004 10F00100 		ands	r0, r0, #1
 1886 0008 1CBF     		itt	ne
 1887 000a 9868     		ldrne	r0, [r3, #8]
 1888 000c 00F07F00 		andne	r0, r0, #127
 1889 0010 7047     		bx	lr
 1890              	.L543:
 1891 0012 00BF     		.align	2
 1892              	.L542:
 1893 0014 00400840 		.word	1074282496
 1894              		.size	udd_getaddress, .-udd_getaddress
 1895              		.section	.text.udd_get_frame_number,"ax",%progbits
 1896              		.align	1
 1897              		.p2align 2,,3
 1898              		.global	udd_get_frame_number
 1899              		.syntax unified
 1900              		.thumb
 1901              		.thumb_func
 1902              		.fpu fpv4-sp-d16
 1903              		.type	udd_get_frame_number, %function
 1904              	udd_get_frame_number:
 1905              		@ args = 0, pretend = 0, frame = 0
 1906              		@ frame_needed = 0, uses_anonymous_args = 0
 1907              		@ link register save eliminated.
 1908 0000 024B     		ldr	r3, .L545
 1909 0002 1868     		ldr	r0, [r3]
 1910 0004 C0F30A00 		ubfx	r0, r0, #0, #11
 1911 0008 7047     		bx	lr
 1912              	.L546:
 1913 000a 00BF     		.align	2
 1914              	.L545:
 1915 000c 00400840 		.word	1074282496
 1916              		.size	udd_get_frame_number, .-udd_get_frame_number
 1917              		.section	.text.udd_get_micro_frame_number,"ax",%progbits
 1918              		.align	1
 1919              		.p2align 2,,3
 1920              		.global	udd_get_micro_frame_number
 1921              		.syntax unified
 1922              		.thumb
 1923              		.thumb_func
 1924              		.fpu fpv4-sp-d16
 1925              		.type	udd_get_micro_frame_number, %function
 1926              	udd_get_micro_frame_number:
 1927              		@ args = 0, pretend = 0, frame = 0
 1928              		@ frame_needed = 0, uses_anonymous_args = 0
 1929              		@ link register save eliminated.
 1930 0000 0020     		movs	r0, #0
 1931 0002 7047     		bx	lr
 1932              		.size	udd_get_micro_frame_number, .-udd_get_micro_frame_number
 1933              		.section	.text.udd_send_remotewakeup,"ax",%progbits
 1934              		.align	1
 1935              		.p2align 2,,3
 1936              		.global	udd_send_remotewakeup
 1937              		.syntax unified
 1938              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 35


 1939              		.thumb_func
 1940              		.fpu fpv4-sp-d16
 1941              		.type	udd_send_remotewakeup, %function
 1942              	udd_send_remotewakeup:
 1943              		@ args = 0, pretend = 0, frame = 0
 1944              		@ frame_needed = 0, uses_anonymous_args = 0
 1945 0000 08B5     		push	{r3, lr}
 1946 0002 2320     		movs	r0, #35
 1947 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 1948 0008 044B     		ldr	r3, .L550
 1949 000a 5A68     		ldr	r2, [r3, #4]
 1950 000c 42F00402 		orr	r2, r2, #4
 1951 0010 5A60     		str	r2, [r3, #4]
 1952 0012 5A68     		ldr	r2, [r3, #4]
 1953 0014 22F00402 		bic	r2, r2, #4
 1954 0018 5A60     		str	r2, [r3, #4]
 1955 001a 08BD     		pop	{r3, pc}
 1956              	.L551:
 1957              		.align	2
 1958              	.L550:
 1959 001c 00400840 		.word	1074282496
 1960              		.size	udd_send_remotewakeup, .-udd_send_remotewakeup
 1961              		.section	.text.udd_set_setup_payload,"ax",%progbits
 1962              		.align	1
 1963              		.p2align 2,,3
 1964              		.global	udd_set_setup_payload
 1965              		.syntax unified
 1966              		.thumb
 1967              		.thumb_func
 1968              		.fpu fpv4-sp-d16
 1969              		.type	udd_set_setup_payload, %function
 1970              	udd_set_setup_payload:
 1971              		@ args = 0, pretend = 0, frame = 0
 1972              		@ frame_needed = 0, uses_anonymous_args = 0
 1973              		@ link register save eliminated.
 1974 0000 014B     		ldr	r3, .L553
 1975 0002 9860     		str	r0, [r3, #8]
 1976 0004 9981     		strh	r1, [r3, #12]	@ movhi
 1977 0006 7047     		bx	lr
 1978              	.L554:
 1979              		.align	2
 1980              	.L553:
 1981 0008 00000000 		.word	udd_g_ctrlreq
 1982              		.size	udd_set_setup_payload, .-udd_set_setup_payload
 1983              		.section	.text.udd_ep_alloc,"ax",%progbits
 1984              		.align	1
 1985              		.p2align 2,,3
 1986              		.global	udd_ep_alloc
 1987              		.syntax unified
 1988              		.thumb
 1989              		.thumb_func
 1990              		.fpu fpv4-sp-d16
 1991              		.type	udd_ep_alloc, %function
 1992              	udd_ep_alloc:
 1993              		@ args = 0, pretend = 0, frame = 0
 1994              		@ frame_needed = 0, uses_anonymous_args = 0
 1995              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 36


 1996 0000 00F00F03 		and	r3, r0, #15
 1997 0004 032B     		cmp	r3, #3
 1998 0006 56D8     		bhi	.L564
 1999 0008 F0B4     		push	{r4, r5, r6, r7}
 2000 000a 9C00     		lsls	r4, r3, #2
 2001 000c 04F14024 		add	r4, r4, #1073758208
 2002 0010 04F50024 		add	r4, r4, #524288
 2003 0014 256B     		ldr	r5, [r4, #48]
 2004 0016 15F40045 		ands	r5, r5, #32768
 2005 001a 49D1     		bne	.L568
 2006 001c 01F00306 		and	r6, r1, #3
 2007 0020 012E     		cmp	r6, #1
 2008 0022 42D0     		beq	.L577
 2009              	.L557:
 2010 0024 402A     		cmp	r2, #64
 2011 0026 43D8     		bhi	.L568
 2012 0028 5D1E     		subs	r5, r3, #1
 2013 002a 244E     		ldr	r6, .L578
 2014 002c 05EB8505 		add	r5, r5, r5, lsl #2
 2015 0030 06EB8505 		add	r5, r6, r5, lsl #2
 2016 0034 40B2     		sxtb	r0, r0
 2017 0036 2F8A     		ldrh	r7, [r5, #16]
 2018 0038 62F30907 		bfi	r7, r2, #0, #10
 2019 003c 2F82     		strh	r7, [r5, #16]	@ movhi
 2020 003e 6A7C     		ldrb	r2, [r5, #17]	@ zero_extendqisi2
 2021 0040 02F07F02 		and	r2, r2, #127
 2022 0044 6FF34512 		bfc	r2, #5, #1
 2023 0048 0028     		cmp	r0, #0
 2024 004a 6A74     		strb	r2, [r5, #17]
 2025 004c 03DA     		bge	.L558
 2026 004e D2B2     		uxtb	r2, r2
 2027 0050 6FF38302 		bfc	r2, #2, #2
 2028 0054 6A74     		strb	r2, [r5, #17]
 2029              	.L558:
 2030 0056 1A4A     		ldr	r2, .L578+4
 2031 0058 0125     		movs	r5, #1
 2032 005a 966A     		ldr	r6, [r2, #40]
 2033 005c 05FA03F3 		lsl	r3, r5, r3
 2034 0060 1E43     		orrs	r6, r6, r3
 2035 0062 9662     		str	r6, [r2, #40]
 2036              	.L559:
 2037 0064 956A     		ldr	r5, [r2, #40]
 2038 0066 2B42     		tst	r3, r5
 2039 0068 FCD0     		beq	.L559
 2040 006a 956A     		ldr	r5, [r2, #40]
 2041 006c 25EA0303 		bic	r3, r5, r3
 2042 0070 9362     		str	r3, [r2, #40]
 2043 0072 236B     		ldr	r3, [r4, #48]
 2044 0074 0902     		lsls	r1, r1, #8
 2045 0076 43F04F03 		orr	r3, r3, #79
 2046 007a 01F44071 		and	r1, r1, #768
 2047 007e 0028     		cmp	r0, #0
 2048 0080 23F40743 		bic	r3, r3, #34560
 2049 0084 B4BF     		ite	lt
 2050 0086 41F40441 		orrlt	r1, r1, #33792
 2051 008a 41F40041 		orrge	r1, r1, #32768
 2052 008e 23F08003 		bic	r3, r3, #128
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 37


 2053 0092 0B43     		orrs	r3, r3, r1
 2054 0094 2363     		str	r3, [r4, #48]
 2055 0096 0A23     		movs	r3, #10
 2056              	.L562:
 2057 0098 226B     		ldr	r2, [r4, #48]
 2058 009a 31EA0202 		bics	r2, r1, r2
 2059 009e 01D0     		beq	.L569
 2060 00a0 013B     		subs	r3, r3, #1
 2061 00a2 F9D1     		bne	.L562
 2062              	.L569:
 2063 00a4 0120     		movs	r0, #1
 2064 00a6 F0BC     		pop	{r4, r5, r6, r7}
 2065 00a8 7047     		bx	lr
 2066              	.L577:
 2067 00aa 0BB1     		cbz	r3, .L568
 2068 00ac 032B     		cmp	r3, #3
 2069 00ae B9D1     		bne	.L557
 2070              	.L568:
 2071 00b0 0020     		movs	r0, #0
 2072 00b2 F0BC     		pop	{r4, r5, r6, r7}
 2073 00b4 7047     		bx	lr
 2074              	.L564:
 2075 00b6 0020     		movs	r0, #0
 2076 00b8 7047     		bx	lr
 2077              	.L579:
 2078 00ba 00BF     		.align	2
 2079              	.L578:
 2080 00bc 00000000 		.word	.LANCHOR0
 2081 00c0 00400840 		.word	1074282496
 2082              		.size	udd_ep_alloc, .-udd_ep_alloc
 2083              		.section	.text.udd_ep_free,"ax",%progbits
 2084              		.align	1
 2085              		.p2align 2,,3
 2086              		.global	udd_ep_free
 2087              		.syntax unified
 2088              		.thumb
 2089              		.thumb_func
 2090              		.fpu fpv4-sp-d16
 2091              		.type	udd_ep_free, %function
 2092              	udd_ep_free:
 2093              		@ args = 0, pretend = 0, frame = 0
 2094              		@ frame_needed = 0, uses_anonymous_args = 0
 2095              		@ link register save eliminated.
 2096 0000 00F00F03 		and	r3, r0, #15
 2097 0004 032B     		cmp	r3, #3
 2098 0006 12D8     		bhi	.L580
 2099 0008 9B00     		lsls	r3, r3, #2
 2100 000a 03F14023 		add	r3, r3, #1073758208
 2101 000e 03F50023 		add	r3, r3, #524288
 2102 0012 0A22     		movs	r2, #10
 2103 0014 196B     		ldr	r1, [r3, #48]
 2104 0016 21F40041 		bic	r1, r1, #32768
 2105 001a 41F04F01 		orr	r1, r1, #79
 2106 001e 1963     		str	r1, [r3, #48]
 2107              	.L582:
 2108 0020 196B     		ldr	r1, [r3, #48]
 2109 0022 0904     		lsls	r1, r1, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 38


 2110 0024 01D5     		bpl	.L583
 2111 0026 013A     		subs	r2, r2, #1
 2112 0028 FAD1     		bne	.L582
 2113              	.L583:
 2114 002a FFF7FEBF 		b	udd_ep_abort_job
 2115              	.L580:
 2116 002e 7047     		bx	lr
 2117              		.size	udd_ep_free, .-udd_ep_free
 2118              		.section	.text.udd_ep_is_halted,"ax",%progbits
 2119              		.align	1
 2120              		.p2align 2,,3
 2121              		.global	udd_ep_is_halted
 2122              		.syntax unified
 2123              		.thumb
 2124              		.thumb_func
 2125              		.fpu fpv4-sp-d16
 2126              		.type	udd_ep_is_halted, %function
 2127              	udd_ep_is_halted:
 2128              		@ args = 0, pretend = 0, frame = 0
 2129              		@ frame_needed = 0, uses_anonymous_args = 0
 2130              		@ link register save eliminated.
 2131 0000 00F00F00 		and	r0, r0, #15
 2132 0004 0328     		cmp	r0, #3
 2133 0006 14D8     		bhi	.L592
 2134 0008 431E     		subs	r3, r0, #1
 2135 000a 0B4A     		ldr	r2, .L595
 2136 000c 03EB8303 		add	r3, r3, r3, lsl #2
 2137 0010 02EB8303 		add	r3, r2, r3, lsl #2
 2138 0014 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2139 0016 9B06     		lsls	r3, r3, #26
 2140 0018 01D5     		bpl	.L594
 2141 001a 0120     		movs	r0, #1
 2142 001c 7047     		bx	lr
 2143              	.L594:
 2144 001e 0C30     		adds	r0, r0, #12
 2145 0020 064B     		ldr	r3, .L595+4
 2146 0022 53F82030 		ldr	r3, [r3, r0, lsl #2]
 2147 0026 13F0280F 		tst	r3, #40
 2148 002a 14BF     		ite	ne
 2149 002c 0120     		movne	r0, #1
 2150 002e 0020     		moveq	r0, #0
 2151 0030 7047     		bx	lr
 2152              	.L592:
 2153 0032 0020     		movs	r0, #0
 2154 0034 7047     		bx	lr
 2155              	.L596:
 2156 0036 00BF     		.align	2
 2157              	.L595:
 2158 0038 00000000 		.word	.LANCHOR0
 2159 003c 00400840 		.word	1074282496
 2160              		.size	udd_ep_is_halted, .-udd_ep_is_halted
 2161              		.section	.text.udd_ep_set_halt,"ax",%progbits
 2162              		.align	1
 2163              		.p2align 2,,3
 2164              		.global	udd_ep_set_halt
 2165              		.syntax unified
 2166              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 39


 2167              		.thumb_func
 2168              		.fpu fpv4-sp-d16
 2169              		.type	udd_ep_set_halt, %function
 2170              	udd_ep_set_halt:
 2171              		@ args = 0, pretend = 0, frame = 0
 2172              		@ frame_needed = 0, uses_anonymous_args = 0
 2173              		@ link register save eliminated.
 2174 0000 00F00F01 		and	r1, r0, #15
 2175 0004 0329     		cmp	r1, #3
 2176 0006 22D8     		bhi	.L606
 2177 0008 70B4     		push	{r4, r5, r6}
 2178              		.syntax unified
 2179              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2180 000a EFF31085 		MRS r5, primask
 2181              	@ 0 "" 2
 2182              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2183 000e 72B6     		cpsid i
 2184              	@ 0 "" 2
 2185              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2186 0010 BFF35F8F 		dmb
 2187              	@ 0 "" 2
 2188              		.thumb
 2189              		.syntax unified
 2190 0014 234C     		ldr	r4, .L619
 2191 0016 0023     		movs	r3, #0
 2192 0018 2370     		strb	r3, [r4]
 2193 001a 0306     		lsls	r3, r0, #24
 2194 001c 19D4     		bmi	.L618
 2195              	.L599:
 2196 001e 8A00     		lsls	r2, r1, #2
 2197 0020 02F14022 		add	r2, r2, #1073758208
 2198 0024 02F50022 		add	r2, r2, #524288
 2199 0028 0A23     		movs	r3, #10
 2200 002a 106B     		ldr	r0, [r2, #48]
 2201 002c 40F06F00 		orr	r0, r0, #111
 2202 0030 1063     		str	r0, [r2, #48]
 2203              	.L602:
 2204 0032 106B     		ldr	r0, [r2, #48]
 2205 0034 8006     		lsls	r0, r0, #26
 2206 0036 01D4     		bmi	.L603
 2207 0038 013B     		subs	r3, r3, #1
 2208 003a FAD1     		bne	.L602
 2209              	.L603:
 2210 003c 0120     		movs	r0, #1
 2211 003e 1A4B     		ldr	r3, .L619+4
 2212 0040 00FA01F1 		lsl	r1, r0, r1
 2213 0044 1961     		str	r1, [r3, #16]
 2214 0046 E5B1     		cbz	r5, .L617
 2215              	.L605:
 2216 0048 0120     		movs	r0, #1
 2217 004a 70BC     		pop	{r4, r5, r6}
 2218 004c 7047     		bx	lr
 2219              	.L606:
 2220 004e 0020     		movs	r0, #0
 2221 0050 7047     		bx	lr
 2222              	.L618:
 2223 0052 154B     		ldr	r3, .L619+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 40


 2224 0054 01F10C02 		add	r2, r1, #12
 2225 0058 481E     		subs	r0, r1, #1
 2226 005a 53F82230 		ldr	r3, [r3, r2, lsl #2]
 2227 005e DE06     		lsls	r6, r3, #27
 2228 0060 15D5     		bpl	.L612
 2229 0062 124B     		ldr	r3, .L619+8
 2230 0064 8200     		lsls	r2, r0, #2
 2231              	.L600:
 2232 0066 0244     		add	r2, r2, r0
 2233 0068 03EB8203 		add	r3, r3, r2, lsl #2
 2234 006c 0120     		movs	r0, #1
 2235 006e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2236 0070 0D4E     		ldr	r6, .L619+4
 2237 0072 42F02002 		orr	r2, r2, #32
 2238 0076 00FA01F1 		lsl	r1, r0, r1
 2239 007a 5A74     		strb	r2, [r3, #17]
 2240 007c 3161     		str	r1, [r6, #16]
 2241 007e 002D     		cmp	r5, #0
 2242 0080 E2D1     		bne	.L605
 2243              	.L617:
 2244 0082 2070     		strb	r0, [r4]
 2245              		.syntax unified
 2246              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2247 0084 BFF35F8F 		dmb
 2248              	@ 0 "" 2
 2249              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2250 0088 62B6     		cpsie i
 2251              	@ 0 "" 2
 2252              		.thumb
 2253              		.syntax unified
 2254 008a 70BC     		pop	{r4, r5, r6}
 2255 008c 7047     		bx	lr
 2256              	.L612:
 2257 008e 8200     		lsls	r2, r0, #2
 2258 0090 064B     		ldr	r3, .L619+8
 2259 0092 1618     		adds	r6, r2, r0
 2260 0094 03EB8606 		add	r6, r3, r6, lsl #2
 2261 0098 767C     		ldrb	r6, [r6, #17]	@ zero_extendqisi2
 2262 009a C6F38106 		ubfx	r6, r6, #2, #2
 2263 009e 012E     		cmp	r6, #1
 2264 00a0 E1D8     		bhi	.L600
 2265 00a2 BCE7     		b	.L599
 2266              	.L620:
 2267              		.align	2
 2268              	.L619:
 2269 00a4 00000000 		.word	g_interrupt_enabled
 2270 00a8 00400840 		.word	1074282496
 2271 00ac 00000000 		.word	.LANCHOR0
 2272              		.size	udd_ep_set_halt, .-udd_ep_set_halt
 2273              		.section	.text.udd_ep_clear_halt,"ax",%progbits
 2274              		.align	1
 2275              		.p2align 2,,3
 2276              		.global	udd_ep_clear_halt
 2277              		.syntax unified
 2278              		.thumb
 2279              		.thumb_func
 2280              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 41


 2281              		.type	udd_ep_clear_halt, %function
 2282              	udd_ep_clear_halt:
 2283              		@ args = 0, pretend = 0, frame = 0
 2284              		@ frame_needed = 0, uses_anonymous_args = 0
 2285 0000 00F00F00 		and	r0, r0, #15
 2286 0004 0328     		cmp	r0, #3
 2287 0006 45D8     		bhi	.L632
 2288 0008 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2289 000a 451E     		subs	r5, r0, #1
 2290 000c AC00     		lsls	r4, r5, #2
 2291 000e 224E     		ldr	r6, .L651
 2292 0010 6219     		adds	r2, r4, r5
 2293 0012 8300     		lsls	r3, r0, #2
 2294 0014 06EB8202 		add	r2, r6, r2, lsl #2
 2295 0018 03F14023 		add	r3, r3, #1073758208
 2296 001c 03F50023 		add	r3, r3, #524288
 2297 0020 517C     		ldrb	r1, [r2, #17]	@ zero_extendqisi2
 2298 0022 1F6B     		ldr	r7, [r3, #48]
 2299 0024 6FF34511 		bfc	r1, #5, #1
 2300 0028 5174     		strb	r1, [r2, #17]
 2301 002a BA06     		lsls	r2, r7, #26
 2302 002c 30D5     		bpl	.L650
 2303 002e 1A6B     		ldr	r2, [r3, #48]
 2304 0030 22F02002 		bic	r2, r2, #32
 2305 0034 42F04F02 		orr	r2, r2, #79
 2306 0038 1A63     		str	r2, [r3, #48]
 2307 003a 0A22     		movs	r2, #10
 2308              	.L624:
 2309 003c 196B     		ldr	r1, [r3, #48]
 2310 003e 8F06     		lsls	r7, r1, #26
 2311 0040 01D5     		bpl	.L625
 2312 0042 013A     		subs	r2, r2, #1
 2313 0044 FAD1     		bne	.L624
 2314              	.L625:
 2315 0046 154A     		ldr	r2, .L651+4
 2316 0048 0121     		movs	r1, #1
 2317 004a 976A     		ldr	r7, [r2, #40]
 2318 004c 01FA00F0 		lsl	r0, r1, r0
 2319 0050 0743     		orrs	r7, r7, r0
 2320 0052 9762     		str	r7, [r2, #40]
 2321              	.L627:
 2322 0054 916A     		ldr	r1, [r2, #40]
 2323 0056 0842     		tst	r0, r1
 2324 0058 FCD0     		beq	.L627
 2325 005a 916A     		ldr	r1, [r2, #40]
 2326 005c 21EA0000 		bic	r0, r1, r0
 2327 0060 9062     		str	r0, [r2, #40]
 2328 0062 1A6B     		ldr	r2, [r3, #48]
 2329 0064 22F00802 		bic	r2, r2, #8
 2330 0068 42F04702 		orr	r2, r2, #71
 2331 006c 1A63     		str	r2, [r3, #48]
 2332 006e 0A22     		movs	r2, #10
 2333              	.L628:
 2334 0070 196B     		ldr	r1, [r3, #48]
 2335 0072 0807     		lsls	r0, r1, #28
 2336 0074 01D5     		bpl	.L629
 2337 0076 013A     		subs	r2, r2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 42


 2338 0078 FAD1     		bne	.L628
 2339              	.L629:
 2340 007a 2C44     		add	r4, r4, r5
 2341 007c A400     		lsls	r4, r4, #2
 2342 007e 3319     		adds	r3, r6, r4
 2343 0080 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2344 0082 D106     		lsls	r1, r2, #27
 2345 0084 04D5     		bpl	.L650
 2346 0086 6FF30412 		bfc	r2, #4, #1
 2347 008a 3159     		ldr	r1, [r6, r4]
 2348 008c 5A74     		strb	r2, [r3, #17]
 2349 008e 8847     		blx	r1
 2350              	.L650:
 2351 0090 0120     		movs	r0, #1
 2352 0092 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2353              	.L632:
 2354 0094 0020     		movs	r0, #0
 2355 0096 7047     		bx	lr
 2356              	.L652:
 2357              		.align	2
 2358              	.L651:
 2359 0098 00000000 		.word	.LANCHOR0
 2360 009c 00400840 		.word	1074282496
 2361              		.size	udd_ep_clear_halt, .-udd_ep_clear_halt
 2362              		.section	.text.udd_ep_run,"ax",%progbits
 2363              		.align	1
 2364              		.p2align 2,,3
 2365              		.global	udd_ep_run
 2366              		.syntax unified
 2367              		.thumb
 2368              		.thumb_func
 2369              		.fpu fpv4-sp-d16
 2370              		.type	udd_ep_run, %function
 2371              	udd_ep_run:
 2372              		@ args = 4, pretend = 0, frame = 0
 2373              		@ frame_needed = 0, uses_anonymous_args = 0
 2374 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2375 0004 00F00F07 		and	r7, r0, #15
 2376 0008 032F     		cmp	r7, #3
 2377 000a 60D8     		bhi	.L656
 2378 000c BC00     		lsls	r4, r7, #2
 2379 000e 04F14024 		add	r4, r4, #1073758208
 2380 0012 04F50024 		add	r4, r4, #524288
 2381 0016 256B     		ldr	r5, [r4, #48]
 2382 0018 2E04     		lsls	r6, r5, #16
 2383 001a 58D5     		bpl	.L656
 2384 001c 07F1FF3C 		add	ip, r7, #-1
 2385 0020 4FEA8C09 		lsl	r9, ip, #2
 2386 0024 DFF8F0E0 		ldr	lr, .L674+4
 2387 0028 09EB0C06 		add	r6, r9, ip
 2388 002c 0EEB8606 		add	r6, lr, r6, lsl #2
 2389 0030 757C     		ldrb	r5, [r6, #17]	@ zero_extendqisi2
 2390 0032 AD06     		lsls	r5, r5, #26
 2391 0034 4BD4     		bmi	.L656
 2392 0036 256B     		ldr	r5, [r4, #48]
 2393 0038 15F0200A 		ands	r10, r5, #32
 2394 003c 47D1     		bne	.L656
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 43


 2395              		.syntax unified
 2396              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2397 003e EFF31085 		MRS r5, primask
 2398              	@ 0 "" 2
 2399              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2400 0042 72B6     		cpsid i
 2401              	@ 0 "" 2
 2402              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2403 0044 BFF35F8F 		dmb
 2404              	@ 0 "" 2
 2405              		.thumb
 2406              		.syntax unified
 2407 0048 96F811B0 		ldrb	fp, [r6, #17]	@ zero_extendqisi2
 2408 004c DFF8CC80 		ldr	r8, .L674+8
 2409 0050 1BF0100F 		tst	fp, #16
 2410 0054 88F800A0 		strb	r10, [r8]
 2411 0058 3CD1     		bne	.L671
 2412 005a 96F811A0 		ldrb	r10, [r6, #17]	@ zero_extendqisi2
 2413 005e 4AF0100A 		orr	r10, r10, #16
 2414 0062 86F811A0 		strb	r10, [r6, #17]
 2415 0066 002D     		cmp	r5, #0
 2416 0068 4CD0     		beq	.L672
 2417              	.L658:
 2418 006a 09EB0C05 		add	r5, r9, ip
 2419 006e AD00     		lsls	r5, r5, #2
 2420 0070 0EEB050A 		add	r10, lr, r5
 2421 0074 0A9E     		ldr	r6, [sp, #40]
 2422 0076 4EF80560 		str	r6, [lr, r5]
 2423 007a 0025     		movs	r5, #0
 2424 007c CAE90123 		strd	r2, r3, [r10, #4]
 2425 0080 CAF80C50 		str	r5, [r10, #12]
 2426 0084 11B9     		cbnz	r1, .L659
 2427 0086 B3FA83F1 		clz	r1, r3
 2428 008a 4909     		lsrs	r1, r1, #5
 2429              	.L659:
 2430 008c 09EB0C03 		add	r3, r9, ip
 2431 0090 0EEB8303 		add	r3, lr, r3, lsl #2
 2432 0094 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2433 0096 61F38612 		bfi	r2, r1, #6, #1
 2434 009a 6FF3C712 		bfc	r2, #7, #1
 2435 009e 5A74     		strb	r2, [r3, #17]
 2436              		.syntax unified
 2437              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2438 00a0 EFF31085 		MRS r5, primask
 2439              	@ 0 "" 2
 2440              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2441 00a4 72B6     		cpsid i
 2442              	@ 0 "" 2
 2443              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2444 00a6 BFF35F8F 		dmb
 2445              	@ 0 "" 2
 2446              		.thumb
 2447              		.syntax unified
 2448 00aa 1A4B     		ldr	r3, .L674
 2449 00ac 0121     		movs	r1, #1
 2450 00ae 0026     		movs	r6, #0
 2451 00b0 01FA07F2 		lsl	r2, r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 44


 2452 00b4 88F80060 		strb	r6, [r8]
 2453 00b8 1A61     		str	r2, [r3, #16]
 2454 00ba 0306     		lsls	r3, r0, #24
 2455 00bc 14D4     		bmi	.L673
 2456              	.L661:
 2457 00be 0120     		movs	r0, #1
 2458 00c0 35B9     		cbnz	r5, .L655
 2459 00c2 88F80000 		strb	r0, [r8]
 2460              		.syntax unified
 2461              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2462 00c6 BFF35F8F 		dmb
 2463              	@ 0 "" 2
 2464              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2465 00ca 62B6     		cpsie i
 2466              	@ 0 "" 2
 2467              		.thumb
 2468              		.syntax unified
 2469 00cc 00E0     		b	.L655
 2470              	.L656:
 2471 00ce 0020     		movs	r0, #0
 2472              	.L655:
 2473 00d0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2474              	.L671:
 2475 00d4 002D     		cmp	r5, #0
 2476 00d6 FAD1     		bne	.L656
 2477 00d8 0123     		movs	r3, #1
 2478 00da 88F80030 		strb	r3, [r8]
 2479              		.syntax unified
 2480              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2481 00de BFF35F8F 		dmb
 2482              	@ 0 "" 2
 2483              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2484 00e2 62B6     		cpsie i
 2485              	@ 0 "" 2
 2486              		.thumb
 2487              		.syntax unified
 2488 00e4 2846     		mov	r0, r5
 2489 00e6 F3E7     		b	.L655
 2490              	.L673:
 2491 00e8 246B     		ldr	r4, [r4, #48]
 2492 00ea 14F01104 		ands	r4, r4, #17
 2493 00ee E6D1     		bne	.L661
 2494 00f0 3846     		mov	r0, r7
 2495 00f2 FFF7FEFF 		bl	udd_ep_in_sent
 2496 00f6 0028     		cmp	r0, #0
 2497 00f8 E1D0     		beq	.L661
 2498 00fa 2146     		mov	r1, r4
 2499 00fc 3846     		mov	r0, r7
 2500 00fe FFF7FEFF 		bl	udd_ep_in_sent
 2501 0102 DCE7     		b	.L661
 2502              	.L672:
 2503 0104 0125     		movs	r5, #1
 2504 0106 88F80050 		strb	r5, [r8]
 2505              		.syntax unified
 2506              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2507 010a BFF35F8F 		dmb
 2508              	@ 0 "" 2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 45


 2509              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2510 010e 62B6     		cpsie i
 2511              	@ 0 "" 2
 2512              		.thumb
 2513              		.syntax unified
 2514 0110 ABE7     		b	.L658
 2515              	.L675:
 2516 0112 00BF     		.align	2
 2517              	.L674:
 2518 0114 00400840 		.word	1074282496
 2519 0118 00000000 		.word	.LANCHOR0
 2520 011c 00000000 		.word	g_interrupt_enabled
 2521              		.size	udd_ep_run, .-udd_ep_run
 2522              		.section	.text.udd_ep_abort,"ax",%progbits
 2523              		.align	1
 2524              		.p2align 2,,3
 2525              		.global	udd_ep_abort
 2526              		.syntax unified
 2527              		.thumb
 2528              		.thumb_func
 2529              		.fpu fpv4-sp-d16
 2530              		.type	udd_ep_abort, %function
 2531              	udd_ep_abort:
 2532              		@ args = 0, pretend = 0, frame = 0
 2533              		@ frame_needed = 0, uses_anonymous_args = 0
 2534 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2535 0002 00F00F04 		and	r4, r0, #15
 2536 0006 032C     		cmp	r4, #3
 2537 0008 30D8     		bhi	.L676
 2538              		.syntax unified
 2539              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2540 000a EFF31081 		MRS r1, primask
 2541              	@ 0 "" 2
 2542              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2543 000e 72B6     		cpsid i
 2544              	@ 0 "" 2
 2545              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2546 0010 BFF35F8F 		dmb
 2547              	@ 0 "" 2
 2548              		.thumb
 2549              		.syntax unified
 2550 0014 0122     		movs	r2, #1
 2551 0016 3E4B     		ldr	r3, .L730
 2552 0018 3E4E     		ldr	r6, .L730+4
 2553 001a 02FA04F5 		lsl	r5, r2, r4
 2554 001e 0027     		movs	r7, #0
 2555 0020 1F70     		strb	r7, [r3]
 2556 0022 7561     		str	r5, [r6, #20]
 2557 0024 0029     		cmp	r1, #0
 2558 0026 6CD0     		beq	.L728
 2559 0028 0606     		lsls	r6, r0, #24
 2560 002a 20D4     		bmi	.L679
 2561              	.L729:
 2562 002c A600     		lsls	r6, r4, #2
 2563 002e 06F14026 		add	r6, r6, #1073758208
 2564 0032 06F50026 		add	r6, r6, #524288
 2565 0036 336B     		ldr	r3, [r6, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 46


 2566 0038 13F0420F 		tst	r3, #66
 2567 003c 06D0     		beq	.L696
 2568              	.L680:
 2569 003e 2046     		mov	r0, r4
 2570 0040 FFF7FEFF 		bl	udd_ep_ack_out_received
 2571 0044 336B     		ldr	r3, [r6, #48]
 2572 0046 13F0420F 		tst	r3, #66
 2573 004a F8D1     		bne	.L680
 2574              	.L696:
 2575 004c 314B     		ldr	r3, .L730+4
 2576 004e 9A6A     		ldr	r2, [r3, #40]
 2577 0050 2A43     		orrs	r2, r2, r5
 2578 0052 9A62     		str	r2, [r3, #40]
 2579              	.L697:
 2580 0054 9A6A     		ldr	r2, [r3, #40]
 2581 0056 1542     		tst	r5, r2
 2582 0058 FCD0     		beq	.L697
 2583 005a 9A6A     		ldr	r2, [r3, #40]
 2584 005c 22EA0505 		bic	r5, r2, r5
 2585 0060 2046     		mov	r0, r4
 2586 0062 9D62     		str	r5, [r3, #40]
 2587 0064 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2588 0068 FFF7FEBF 		b	udd_ep_abort_job
 2589              	.L676:
 2590 006c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2591              	.L679:
 2592 006e A300     		lsls	r3, r4, #2
 2593 0070 03F14023 		add	r3, r3, #1073758208
 2594 0074 03F50023 		add	r3, r3, #524288
 2595 0078 1A6B     		ldr	r2, [r3, #48]
 2596 007a D006     		lsls	r0, r2, #27
 2597 007c 2AD5     		bpl	.L692
 2598 007e ECB1     		cbz	r4, .L684
 2599 0080 032C     		cmp	r4, #3
 2600 0082 1BD0     		beq	.L684
 2601 0084 1A6B     		ldr	r2, [r3, #48]
 2602 0086 22F01002 		bic	r2, r2, #16
 2603 008a 42F04F02 		orr	r2, r2, #79
 2604 008e 1A63     		str	r2, [r3, #48]
 2605 0090 0A22     		movs	r2, #10
 2606              	.L685:
 2607 0092 196B     		ldr	r1, [r3, #48]
 2608 0094 C906     		lsls	r1, r1, #27
 2609 0096 01D5     		bpl	.L710
 2610 0098 013A     		subs	r2, r2, #1
 2611 009a FAD1     		bne	.L685
 2612              	.L710:
 2613 009c 1A6B     		ldr	r2, [r3, #48]
 2614 009e D206     		lsls	r2, r2, #27
 2615 00a0 FCD4     		bmi	.L710
 2616 00a2 1A6B     		ldr	r2, [r3, #48]
 2617 00a4 42F05F02 		orr	r2, r2, #95
 2618 00a8 1A63     		str	r2, [r3, #48]
 2619 00aa 0A22     		movs	r2, #10
 2620              	.L688:
 2621 00ac 196B     		ldr	r1, [r3, #48]
 2622 00ae CF06     		lsls	r7, r1, #27
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 47


 2623 00b0 01D4     		bmi	.L718
 2624 00b2 013A     		subs	r2, r2, #1
 2625 00b4 FAD1     		bne	.L688
 2626              	.L718:
 2627 00b6 1A6B     		ldr	r2, [r3, #48]
 2628 00b8 D606     		lsls	r6, r2, #27
 2629 00ba FCD5     		bpl	.L718
 2630              	.L684:
 2631 00bc 1A6B     		ldr	r2, [r3, #48]
 2632 00be 22F01002 		bic	r2, r2, #16
 2633 00c2 42F04F02 		orr	r2, r2, #79
 2634 00c6 1A63     		str	r2, [r3, #48]
 2635 00c8 0A22     		movs	r2, #10
 2636              	.L691:
 2637 00ca 196B     		ldr	r1, [r3, #48]
 2638 00cc C806     		lsls	r0, r1, #27
 2639 00ce 01D5     		bpl	.L692
 2640 00d0 013A     		subs	r2, r2, #1
 2641 00d2 FAD1     		bne	.L691
 2642              	.L692:
 2643 00d4 1A6B     		ldr	r2, [r3, #48]
 2644 00d6 22F00102 		bic	r2, r2, #1
 2645 00da 42F04E02 		orr	r2, r2, #78
 2646 00de 1A63     		str	r2, [r3, #48]
 2647 00e0 0A22     		movs	r2, #10
 2648              	.L683:
 2649 00e2 196B     		ldr	r1, [r3, #48]
 2650 00e4 C907     		lsls	r1, r1, #31
 2651 00e6 01D5     		bpl	.L694
 2652 00e8 013A     		subs	r2, r2, #1
 2653 00ea FAD1     		bne	.L683
 2654              	.L694:
 2655 00ec 0A4A     		ldr	r2, .L730+8
 2656 00ee 631E     		subs	r3, r4, #1
 2657 00f0 03EB8303 		add	r3, r3, r3, lsl #2
 2658 00f4 02EB8303 		add	r3, r2, r3, lsl #2
 2659 00f8 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2660 00fa 6FF38302 		bfc	r2, #2, #2
 2661 00fe 5A74     		strb	r2, [r3, #17]
 2662 0100 A4E7     		b	.L696
 2663              	.L728:
 2664 0102 1A70     		strb	r2, [r3]
 2665              		.syntax unified
 2666              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 2667 0104 BFF35F8F 		dmb
 2668              	@ 0 "" 2
 2669              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 2670 0108 62B6     		cpsie i
 2671              	@ 0 "" 2
 2672              		.thumb
 2673              		.syntax unified
 2674 010a 0606     		lsls	r6, r0, #24
 2675 010c AFD4     		bmi	.L679
 2676 010e 8DE7     		b	.L729
 2677              	.L731:
 2678              		.align	2
 2679              	.L730:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 48


 2680 0110 00000000 		.word	g_interrupt_enabled
 2681 0114 00400840 		.word	1074282496
 2682 0118 00000000 		.word	.LANCHOR0
 2683              		.size	udd_ep_abort, .-udd_ep_abort
 2684              		.section	.text.udd_ep_wait_stall_clear,"ax",%progbits
 2685              		.align	1
 2686              		.p2align 2,,3
 2687              		.global	udd_ep_wait_stall_clear
 2688              		.syntax unified
 2689              		.thumb
 2690              		.thumb_func
 2691              		.fpu fpv4-sp-d16
 2692              		.type	udd_ep_wait_stall_clear, %function
 2693              	udd_ep_wait_stall_clear:
 2694              		@ args = 0, pretend = 0, frame = 0
 2695              		@ frame_needed = 0, uses_anonymous_args = 0
 2696 0000 00F00F02 		and	r2, r0, #15
 2697 0004 032A     		cmp	r2, #3
 2698 0006 1BD8     		bhi	.L736
 2699 0008 38B5     		push	{r3, r4, r5, lr}
 2700 000a 9400     		lsls	r4, r2, #2
 2701 000c 04F14024 		add	r4, r4, #1073758208
 2702 0010 04F50024 		add	r4, r4, #524288
 2703 0014 206B     		ldr	r0, [r4, #48]
 2704 0016 10F40040 		ands	r0, r0, #32768
 2705 001a 10D0     		beq	.L733
 2706 001c 013A     		subs	r2, r2, #1
 2707 001e 9000     		lsls	r0, r2, #2
 2708 0020 0E4D     		ldr	r5, .L743
 2709 0022 8318     		adds	r3, r0, r2
 2710 0024 05EB8303 		add	r3, r5, r3, lsl #2
 2711 0028 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2712 002a 13F0100F 		tst	r3, #16
 2713 002e 09D1     		bne	.L738
 2714 0030 246B     		ldr	r4, [r4, #48]
 2715 0032 A406     		lsls	r4, r4, #26
 2716 0034 08D4     		bmi	.L734
 2717 0036 9B06     		lsls	r3, r3, #26
 2718 0038 06D4     		bmi	.L734
 2719 003a 8847     		blx	r1
 2720 003c 0120     		movs	r0, #1
 2721              	.L733:
 2722 003e 38BD     		pop	{r3, r4, r5, pc}
 2723              	.L736:
 2724 0040 0020     		movs	r0, #0
 2725 0042 7047     		bx	lr
 2726              	.L738:
 2727 0044 0020     		movs	r0, #0
 2728 0046 38BD     		pop	{r3, r4, r5, pc}
 2729              	.L734:
 2730 0048 0244     		add	r2, r2, r0
 2731 004a 9200     		lsls	r2, r2, #2
 2732 004c AB18     		adds	r3, r5, r2
 2733 004e A950     		str	r1, [r5, r2]
 2734 0050 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2735 0052 42F01002 		orr	r2, r2, #16
 2736 0056 5A74     		strb	r2, [r3, #17]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 49


 2737 0058 0120     		movs	r0, #1
 2738 005a 38BD     		pop	{r3, r4, r5, pc}
 2739              	.L744:
 2740              		.align	2
 2741              	.L743:
 2742 005c 00000000 		.word	.LANCHOR0
 2743              		.size	udd_ep_wait_stall_clear, .-udd_ep_wait_stall_clear
 2744              		.comm	udd_g_ctrlreq,24,4
 2745              		.section	.bss.b_shortpacket.9839,"aw",%nobits
 2746              		.set	.LANCHOR4,. + 0
 2747              		.type	b_shortpacket.9839, %object
 2748              		.size	b_shortpacket.9839, 1
 2749              	b_shortpacket.9839:
 2750 0000 00       		.space	1
 2751              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2752              		.align	2
 2753              		.type	cpu_irq_critical_section_counter, %object
 2754              		.size	cpu_irq_critical_section_counter, 4
 2755              	cpu_irq_critical_section_counter:
 2756 0000 00000000 		.space	4
 2757              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2758              		.type	cpu_irq_prev_interrupt_state, %object
 2759              		.size	cpu_irq_prev_interrupt_state, 1
 2760              	cpu_irq_prev_interrupt_state:
 2761 0000 00       		.space	1
 2762              		.section	.bss.udd_ctrl_payload_nb_trans,"aw",%nobits
 2763              		.align	1
 2764              		.set	.LANCHOR2,. + 0
 2765              		.type	udd_ctrl_payload_nb_trans, %object
 2766              		.size	udd_ctrl_payload_nb_trans, 2
 2767              	udd_ctrl_payload_nb_trans:
 2768 0000 0000     		.space	2
 2769              		.section	.bss.udd_ctrl_prev_payload_nb_trans,"aw",%nobits
 2770              		.align	1
 2771              		.set	.LANCHOR3,. + 0
 2772              		.type	udd_ctrl_prev_payload_nb_trans, %object
 2773              		.size	udd_ctrl_prev_payload_nb_trans, 2
 2774              	udd_ctrl_prev_payload_nb_trans:
 2775 0000 0000     		.space	2
 2776              		.section	.bss.udd_ep_control_state,"aw",%nobits
 2777              		.set	.LANCHOR1,. + 0
 2778              		.type	udd_ep_control_state, %object
 2779              		.size	udd_ep_control_state, 1
 2780              	udd_ep_control_state:
 2781 0000 00       		.space	1
 2782              		.section	.bss.udd_ep_job,"aw",%nobits
 2783              		.align	2
 2784              		.set	.LANCHOR0,. + 0
 2785              		.type	udd_ep_job, %object
 2786              		.size	udd_ep_job, 60
 2787              	udd_ep_job:
 2788 0000 00000000 		.space	60
 2788      00000000 
 2788      00000000 
 2788      00000000 
 2788      00000000 
 2789              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuB5qdh.s 			page 50


