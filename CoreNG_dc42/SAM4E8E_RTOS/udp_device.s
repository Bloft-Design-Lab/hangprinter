ARM GAS  /tmp/cc6FmY4m.s 			page 1


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
  14              		.section	.text.udd_ep_ack_out_received,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	udd_ep_ack_out_received, %function
  22              	udd_ep_ack_out_received:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 8300     		lsls	r3, r0, #2
  27 0002 03F14023 		add	r3, r3, #1073758208
  28 0006 03F50023 		add	r3, r3, #524288
  29 000a F0B4     		push	{r4, r5, r6, r7}
  30 000c 196B     		ldr	r1, [r3, #48]
  31 000e 1A6B     		ldr	r2, [r3, #48]
  32 0010 8907     		lsls	r1, r1, #30
  33 0012 00F1FF34 		add	r4, r0, #-1
  34 0016 3DD4     		bmi	.L30
  35 0018 A600     		lsls	r6, r4, #2
  36 001a 264D     		ldr	r5, .L31
  37 001c 3219     		adds	r2, r6, r4
  38 001e 05EB8202 		add	r2, r5, r2, lsl #2
  39 0022 0127     		movs	r7, #1
  40 0024 517C     		ldrb	r1, [r2, #17]	@ zero_extendqisi2
  41 0026 67F38301 		bfi	r1, r7, #2, #2
  42 002a 5174     		strb	r1, [r2, #17]
  43              	.L3:
  44 002c 3219     		adds	r2, r6, r4
  45 002e 05EB8202 		add	r2, r5, r2, lsl #2
  46 0032 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
  47 0034 12F00C0F 		tst	r2, #12
  48 0038 1A6B     		ldr	r2, [r3, #48]
  49 003a 17D1     		bne	.L4
  50 003c 22F00202 		bic	r2, r2, #2
  51 0040 42F04D02 		orr	r2, r2, #77
  52 0044 1A63     		str	r2, [r3, #48]
  53 0046 0A22     		movs	r2, #10
  54              	.L5:
  55 0048 196B     		ldr	r1, [r3, #48]
  56 004a 8F07     		lsls	r7, r1, #30
  57 004c 01D5     		bpl	.L6
ARM GAS  /tmp/cc6FmY4m.s 			page 2


  58 004e 013A     		subs	r2, r2, #1
  59 0050 FAD1     		bne	.L5
  60              	.L6:
  61 0052 48B1     		cbz	r0, .L1
  62 0054 0328     		cmp	r0, #3
  63 0056 07D0     		beq	.L1
  64 0058 3444     		add	r4, r4, r6
  65 005a 05EB8405 		add	r5, r5, r4, lsl #2
  66 005e 0122     		movs	r2, #1
  67 0060 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
  68 0062 62F38303 		bfi	r3, r2, #2, #2
  69 0066 6B74     		strb	r3, [r5, #17]
  70              	.L1:
  71 0068 F0BC     		pop	{r4, r5, r6, r7}
  72 006a 7047     		bx	lr
  73              	.L4:
  74 006c 22F04002 		bic	r2, r2, #64
  75 0070 42F00F02 		orr	r2, r2, #15
  76 0074 1A63     		str	r2, [r3, #48]
  77 0076 0A22     		movs	r2, #10
  78              	.L9:
  79 0078 196B     		ldr	r1, [r3, #48]
  80 007a 4906     		lsls	r1, r1, #25
  81 007c 01D5     		bpl	.L10
  82 007e 013A     		subs	r2, r2, #1
  83 0080 FAD1     		bne	.L9
  84              	.L10:
  85 0082 3444     		add	r4, r4, r6
  86 0084 05EB8405 		add	r5, r5, r4, lsl #2
  87 0088 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
  88 008a 6FF38303 		bfc	r3, #2, #2
  89 008e 6B74     		strb	r3, [r5, #17]
  90 0090 F0BC     		pop	{r4, r5, r6, r7}
  91 0092 7047     		bx	lr
  92              	.L30:
  93 0094 12F04002 		ands	r2, r2, #64
  94 0098 02D0     		beq	.L27
  95 009a 064D     		ldr	r5, .L31
  96 009c A600     		lsls	r6, r4, #2
  97 009e C5E7     		b	.L3
  98              	.L27:
  99 00a0 A600     		lsls	r6, r4, #2
 100 00a2 044D     		ldr	r5, .L31
 101 00a4 3119     		adds	r1, r6, r4
 102 00a6 05EB8101 		add	r1, r5, r1, lsl #2
 103 00aa 4F7C     		ldrb	r7, [r1, #17]	@ zero_extendqisi2
 104 00ac 62F38307 		bfi	r7, r2, #2, #2
 105 00b0 4F74     		strb	r7, [r1, #17]
 106 00b2 BBE7     		b	.L3
 107              	.L32:
 108              		.align	2
 109              	.L31:
 110 00b4 00000000 		.word	.LANCHOR0
 111              		.size	udd_ep_ack_out_received, .-udd_ep_ack_out_received
 112              		.section	.text.udd_ep_in_sent,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/cc6FmY4m.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	udd_ep_in_sent, %function
 120              	udd_ep_in_sent:
 121              		@ args = 0, pretend = 0, frame = 8
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 124 0004 00F1FF3C 		add	ip, r0, #-1
 125 0008 4FEA8C09 		lsl	r9, ip, #2
 126 000c DFF874E1 		ldr	lr, .L63+4
 127 0010 09EB0C03 		add	r3, r9, ip
 128 0014 0EEB8303 		add	r3, lr, r3, lsl #2
 129 0018 83B0     		sub	sp, sp, #12
 130 001a 93F81180 		ldrb	r8, [r3, #17]	@ zero_extendqisi2
 131 001e C8F38108 		ubfx	r8, r8, #2, #2
 132 0022 0028     		cmp	r0, #0
 133 0024 00F0A680 		beq	.L51
 134 0028 0328     		cmp	r0, #3
 135 002a 14BF     		ite	ne
 136 002c 0223     		movne	r3, #2
 137 002e 0123     		moveq	r3, #1
 138              	.L34:
 139 0030 4345     		cmp	r3, r8
 140 0032 40F39B80 		ble	.L50
 141 0036 09EB0C03 		add	r3, r9, ip
 142 003a 0EEB8303 		add	r3, lr, r3, lsl #2
 143 003e DA68     		ldr	r2, [r3, #12]
 144 0040 D3F808B0 		ldr	fp, [r3, #8]
 145 0044 5A45     		cmp	r2, fp
 146 0046 04D3     		bcc	.L37
 147 0048 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 148 004a 13F04003 		ands	r3, r3, #64
 149 004e 00F09380 		beq	.L53
 150              	.L37:
 151 0052 09EB0C03 		add	r3, r9, ip
 152 0056 0EEB8303 		add	r3, lr, r3, lsl #2
 153 005a ABEB0205 		sub	r5, fp, r2
 154 005e 1E8A     		ldrh	r6, [r3, #16]
 155 0060 5C68     		ldr	r4, [r3, #4]
 156 0062 C6F30906 		ubfx	r6, r6, #0, #10
 157 0066 B542     		cmp	r5, r6
 158 0068 34BF     		ite	cc
 159 006a 0123     		movcc	r3, #1
 160 006c 0023     		movcs	r3, #0
 161 006e 0193     		str	r3, [sp, #4]
 162 0070 09EB0C03 		add	r3, r9, ip
 163 0074 38BF     		it	cc
 164 0076 2E46     		movcc	r6, r5
 165 0078 0EEB8303 		add	r3, lr, r3, lsl #2
 166 007c 02EB060A 		add	r10, r2, r6
 167 0080 072E     		cmp	r6, #7
 168 0082 1444     		add	r4, r4, r2
 169 0084 C3F80CA0 		str	r10, [r3, #12]
 170 0088 2CD9     		bls	.L39
 171 008a 8200     		lsls	r2, r0, #2
ARM GAS  /tmp/cc6FmY4m.s 			page 4


 172 008c 02F14022 		add	r2, r2, #1073758208
 173 0090 02F50022 		add	r2, r2, #524288
 174 0094 04F10803 		add	r3, r4, #8
 175 0098 3546     		mov	r5, r6
 176              	.L40:
 177 009a 13F8087C 		ldrb	r7, [r3, #-8]	@ zero_extendqisi2
 178 009e 1765     		str	r7, [r2, #80]
 179 00a0 13F8077C 		ldrb	r7, [r3, #-7]	@ zero_extendqisi2
 180 00a4 1765     		str	r7, [r2, #80]
 181 00a6 13F8067C 		ldrb	r7, [r3, #-6]	@ zero_extendqisi2
 182 00aa 1765     		str	r7, [r2, #80]
 183 00ac 13F8057C 		ldrb	r7, [r3, #-5]	@ zero_extendqisi2
 184 00b0 1765     		str	r7, [r2, #80]
 185 00b2 13F8047C 		ldrb	r7, [r3, #-4]	@ zero_extendqisi2
 186 00b6 1765     		str	r7, [r2, #80]
 187 00b8 13F8037C 		ldrb	r7, [r3, #-3]	@ zero_extendqisi2
 188 00bc 1765     		str	r7, [r2, #80]
 189 00be 13F8027C 		ldrb	r7, [r3, #-2]	@ zero_extendqisi2
 190 00c2 1765     		str	r7, [r2, #80]
 191 00c4 083D     		subs	r5, r5, #8
 192 00c6 13F8017C 		ldrb	r7, [r3, #-1]	@ zero_extendqisi2
 193 00ca 1765     		str	r7, [r2, #80]
 194 00cc 072D     		cmp	r5, #7
 195 00ce 03F10803 		add	r3, r3, #8
 196 00d2 E2D8     		bhi	.L40
 197 00d4 A6F10803 		sub	r3, r6, #8
 198 00d8 23F00703 		bic	r3, r3, #7
 199 00dc 0833     		adds	r3, r3, #8
 200 00de 1C44     		add	r4, r4, r3
 201 00e0 06F00706 		and	r6, r6, #7
 202              	.L39:
 203 00e4 4EB1     		cbz	r6, .L45
 204 00e6 264A     		ldr	r2, .L63
 205 00e8 2644     		add	r6, r6, r4
 206 00ea 00F11405 		add	r5, r0, #20
 207              	.L44:
 208 00ee 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 209 00f2 42F82530 		str	r3, [r2, r5, lsl #2]
 210 00f6 A642     		cmp	r6, r4
 211 00f8 F9D1     		bne	.L44
 212              	.L45:
 213 00fa 09EB0C03 		add	r3, r9, ip
 214 00fe 0EEB8303 		add	r3, lr, r3, lsl #2
 215 0102 08F10108 		add	r8, r8, #1
 216 0106 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 217 0108 68F38302 		bfi	r2, r8, #2, #2
 218 010c 5A74     		strb	r2, [r3, #17]
 219 010e 71B1     		cbz	r1, .L43
 220 0110 8000     		lsls	r0, r0, #2
 221 0112 00F14020 		add	r0, r0, #1073758208
 222 0116 00F50020 		add	r0, r0, #524288
 223 011a 0A23     		movs	r3, #10
 224 011c 026B     		ldr	r2, [r0, #48]
 225 011e 42F05F02 		orr	r2, r2, #95
 226 0122 0263     		str	r2, [r0, #48]
 227              	.L48:
 228 0124 026B     		ldr	r2, [r0, #48]
ARM GAS  /tmp/cc6FmY4m.s 			page 5


 229 0126 D206     		lsls	r2, r2, #27
 230 0128 01D4     		bmi	.L43
 231 012a 013B     		subs	r3, r3, #1
 232 012c FAD1     		bne	.L48
 233              	.L43:
 234 012e 019B     		ldr	r3, [sp, #4]
 235 0130 3BB1     		cbz	r3, .L47
 236 0132 09EB0C03 		add	r3, r9, ip
 237 0136 0EEB8303 		add	r3, lr, r3, lsl #2
 238 013a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 239 013c 6FF38612 		bfc	r2, #6, #1
 240 0140 5A74     		strb	r2, [r3, #17]
 241              	.L47:
 242 0142 D345     		cmp	fp, r10
 243 0144 12D8     		bhi	.L50
 244 0146 CC44     		add	ip, ip, r9
 245 0148 0EEB8C0E 		add	lr, lr, ip, lsl #2
 246 014c 9EF81100 		ldrb	r0, [lr, #17]	@ zero_extendqisi2
 247 0150 10F04000 		ands	r0, r0, #64
 248 0154 0AD1     		bne	.L50
 249 0156 9EF81130 		ldrb	r3, [lr, #17]	@ zero_extendqisi2
 250 015a 43F08003 		orr	r3, r3, #128
 251 015e 8EF81130 		strb	r3, [lr, #17]
 252 0162 0EF1100E 		add	lr, lr, #16
 253 0166 03B0     		add	sp, sp, #12
 254              		@ sp needed
 255 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 256              	.L50:
 257 016c 0120     		movs	r0, #1
 258 016e 03B0     		add	sp, sp, #12
 259              		@ sp needed
 260 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 261              	.L51:
 262 0174 0123     		movs	r3, #1
 263 0176 5BE7     		b	.L34
 264              	.L53:
 265 0178 1846     		mov	r0, r3
 266 017a 03B0     		add	sp, sp, #12
 267              		@ sp needed
 268 017c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 269              	.L64:
 270              		.align	2
 271              	.L63:
 272 0180 00400840 		.word	1074282496
 273 0184 00000000 		.word	.LANCHOR0
 274              		.size	udd_ep_in_sent, .-udd_ep_in_sent
 275              		.section	.text.udd_ep_finish_job.part.2,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	udd_ep_finish_job.part.2, %function
 283              	udd_ep_finish_job.part.2:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc6FmY4m.s 			page 6


 286              		@ link register save eliminated.
 287 0000 30B4     		push	{r4, r5}
 288 0002 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 289 0004 0468     		ldr	r4, [r0]
 290 0006 6FF30413 		bfc	r3, #4, #1
 291 000a 4374     		strb	r3, [r0, #17]
 292 000c 94B1     		cbz	r4, .L65
 293 000e 0D46     		mov	r5, r1
 294 0010 094B     		ldr	r3, .L72
 295 0012 02F10C01 		add	r1, r2, #12
 296 0016 53F82130 		ldr	r3, [r3, r1, lsl #2]
 297 001a 8168     		ldr	r1, [r0, #8]
 298 001c A5F10100 		sub	r0, r5, #1
 299 0020 5B05     		lsls	r3, r3, #21
 300 0022 B0FA80F0 		clz	r0, r0
 301 0026 2346     		mov	r3, r4
 302 0028 48BF     		it	mi
 303 002a 42F08002 		orrmi	r2, r2, #128
 304 002e 4009     		lsrs	r0, r0, #5
 305 0030 30BC     		pop	{r4, r5}
 306 0032 1847     		bx	r3	@ indirect register sibling call
 307              	.L65:
 308 0034 30BC     		pop	{r4, r5}
 309 0036 7047     		bx	lr
 310              	.L73:
 311              		.align	2
 312              	.L72:
 313 0038 00400840 		.word	1074282496
 314              		.size	udd_ep_finish_job.part.2, .-udd_ep_finish_job.part.2
 315              		.section	.text.udd_ep_abort_job,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	udd_ep_abort_job, %function
 323              	udd_ep_abort_job:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 00F00F02 		and	r2, r0, #15
 328 0004 531E     		subs	r3, r2, #1
 329 0006 0648     		ldr	r0, .L77
 330 0008 03EB8303 		add	r3, r3, r3, lsl #2
 331 000c 00EB8300 		add	r0, r0, r3, lsl #2
 332 0010 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 333 0012 DB06     		lsls	r3, r3, #27
 334 0014 00D4     		bmi	.L76
 335 0016 7047     		bx	lr
 336              	.L76:
 337 0018 0121     		movs	r1, #1
 338 001a FFF7FEBF 		b	udd_ep_finish_job.part.2
 339              	.L78:
 340 001e 00BF     		.align	2
 341              	.L77:
 342 0020 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/cc6FmY4m.s 			page 7


 343              		.size	udd_ep_abort_job, .-udd_ep_abort_job
 344              		.section	.text.udd_ctrl_in_sent,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	udd_ctrl_in_sent, %function
 352              	udd_ctrl_in_sent:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 356 0004 DFF88481 		ldr	r8, .L139+24
 357 0008 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 358 000c 032B     		cmp	r3, #3
 359 000e 65D0     		beq	.L134
 360 0010 584E     		ldr	r6, .L139
 361 0012 594D     		ldr	r5, .L139+4
 362 0014 3088     		ldrh	r0, [r6]
 363 0016 AC89     		ldrh	r4, [r5, #12]
 364 0018 241A     		subs	r4, r4, r0
 365 001a A4B2     		uxth	r4, r4
 366 001c 002C     		cmp	r4, #0
 367 001e 3DD0     		beq	.L86
 368 0020 564F     		ldr	r7, .L139+8
 369 0022 0346     		mov	r3, r0
 370              	.L87:
 371 0024 3F2C     		cmp	r4, #63
 372 0026 40F28680 		bls	.L95
 373 002a 0022     		movs	r2, #0
 374 002c 3A70     		strb	r2, [r7]
 375 002e 4024     		movs	r4, #64
 376              	.L96:
 377 0030 A868     		ldr	r0, [r5, #8]
 378              		.syntax unified
 379              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 380 0032 EFF31087 		MRS r7, primask
 381              	@ 0 "" 2
 382              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 383 0036 72B6     		cpsid i
 384              	@ 0 "" 2
 385              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 386 0038 BFF35F8F 		dmb
 387              	@ 0 "" 2
 388              		.thumb
 389              		.syntax unified
 390 003c 504D     		ldr	r5, .L139+12
 391 003e 5149     		ldr	r1, .L139+16
 392 0040 0022     		movs	r2, #0
 393 0042 2A70     		strb	r2, [r5]
 394 0044 0A6B     		ldr	r2, [r1, #48]
 395 0046 9207     		lsls	r2, r2, #30
 396 0048 61D4     		bmi	.L97
 397 004a 44B1     		cbz	r4, .L104
 398 004c 1844     		add	r0, r0, r3
 399 004e 0246     		mov	r2, r0
ARM GAS  /tmp/cc6FmY4m.s 			page 8


 400              	.L103:
 401 0050 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 402 0054 0B65     		str	r3, [r1, #80]
 403 0056 131A     		subs	r3, r2, r0
 404 0058 DBB2     		uxtb	r3, r3
 405 005a A342     		cmp	r3, r4
 406 005c F8D3     		bcc	.L103
 407              	.L104:
 408 005e 3388     		ldrh	r3, [r6]
 409 0060 4849     		ldr	r1, .L139+16
 410 0062 1C44     		add	r4, r4, r3
 411 0064 0B6B     		ldr	r3, [r1, #48]
 412 0066 3480     		strh	r4, [r6]	@ movhi
 413 0068 43F05F03 		orr	r3, r3, #95
 414 006c 0B63     		str	r3, [r1, #48]
 415 006e 0A23     		movs	r3, #10
 416              	.L99:
 417 0070 0A6B     		ldr	r2, [r1, #48]
 418 0072 D006     		lsls	r0, r2, #27
 419 0074 01D4     		bmi	.L105
 420 0076 013B     		subs	r3, r3, #1
 421 0078 FAD1     		bne	.L99
 422              	.L105:
 423 007a 4249     		ldr	r1, .L139+16
 424 007c 0B6B     		ldr	r3, [r1, #48]
 425 007e 23F00103 		bic	r3, r3, #1
 426 0082 43F04E03 		orr	r3, r3, #78
 427 0086 0B63     		str	r3, [r1, #48]
 428 0088 0A23     		movs	r3, #10
 429              	.L107:
 430 008a 0A6B     		ldr	r2, [r1, #48]
 431 008c D207     		lsls	r2, r2, #31
 432 008e 01D5     		bpl	.L108
 433 0090 013B     		subs	r3, r3, #1
 434 0092 FAD1     		bne	.L107
 435              	.L108:
 436 0094 002F     		cmp	r7, #0
 437 0096 58D0     		beq	.L135
 438              	.L79:
 439 0098 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 440              	.L86:
 441 009c 3A4A     		ldr	r2, .L139+20
 442 009e E988     		ldrh	r1, [r5, #6]
 443 00a0 1388     		ldrh	r3, [r2]
 444 00a2 0344     		add	r3, r3, r0
 445 00a4 9BB2     		uxth	r3, r3
 446 00a6 9942     		cmp	r1, r3
 447 00a8 1380     		strh	r3, [r2]	@ movhi
 448 00aa 05D0     		beq	.L88
 449 00ac 334F     		ldr	r7, .L139+8
 450 00ae 97F80090 		ldrb	r9, [r7]	@ zero_extendqisi2
 451 00b2 B9F1000F 		cmp	r9, #0
 452 00b6 41D0     		beq	.L89
 453              	.L88:
 454 00b8 3249     		ldr	r1, .L139+16
 455 00ba 0423     		movs	r3, #4
 456 00bc 88F80030 		strb	r3, [r8]
ARM GAS  /tmp/cc6FmY4m.s 			page 9


 457 00c0 0B6B     		ldr	r3, [r1, #48]
 458 00c2 23F00103 		bic	r3, r3, #1
 459 00c6 43F04E03 		orr	r3, r3, #78
 460 00ca 0B63     		str	r3, [r1, #48]
 461 00cc 0A23     		movs	r3, #10
 462              	.L90:
 463 00ce 0A6B     		ldr	r2, [r1, #48]
 464 00d0 D007     		lsls	r0, r2, #31
 465 00d2 48D5     		bpl	.L136
 466 00d4 013B     		subs	r3, r3, #1
 467 00d6 FAD1     		bne	.L90
 468 00d8 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 469              	.L134:
 470 00dc 2949     		ldr	r1, .L139+16
 471 00de 0B6B     		ldr	r3, [r1, #48]
 472 00e0 23F00103 		bic	r3, r3, #1
 473 00e4 43F04E03 		orr	r3, r3, #78
 474 00e8 0B63     		str	r3, [r1, #48]
 475 00ea 0A23     		movs	r3, #10
 476              	.L81:
 477 00ec 0A6B     		ldr	r2, [r1, #48]
 478 00ee D407     		lsls	r4, r2, #31
 479 00f0 01D5     		bpl	.L82
 480 00f2 013B     		subs	r3, r3, #1
 481 00f4 FAD1     		bne	.L81
 482              	.L82:
 483 00f6 204D     		ldr	r5, .L139+4
 484 00f8 2B69     		ldr	r3, [r5, #16]
 485 00fa 03B1     		cbz	r3, .L84
 486 00fc 9847     		blx	r3
 487              	.L84:
 488 00fe 0023     		movs	r3, #0
 489 0100 2B61     		str	r3, [r5, #16]
 490 0102 6B61     		str	r3, [r5, #20]
 491 0104 AB81     		strh	r3, [r5, #12]	@ movhi
 492 0106 88F80030 		strb	r3, [r8]
 493 010a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 494              	.L97:
 495 010e 17B3     		cbz	r7, .L137
 496              	.L100:
 497 0110 1C49     		ldr	r1, .L139+16
 498 0112 0423     		movs	r3, #4
 499 0114 88F80030 		strb	r3, [r8]
 500 0118 0B6B     		ldr	r3, [r1, #48]
 501 011a 23F00103 		bic	r3, r3, #1
 502 011e 43F04E03 		orr	r3, r3, #78
 503 0122 0B63     		str	r3, [r1, #48]
 504 0124 0A23     		movs	r3, #10
 505              	.L101:
 506 0126 0A6B     		ldr	r2, [r1, #48]
 507 0128 D407     		lsls	r4, r2, #31
 508 012a 1AD5     		bpl	.L138
 509 012c 013B     		subs	r3, r3, #1
 510 012e FAD1     		bne	.L101
 511 0130 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 512              	.L93:
 513 0134 0346     		mov	r3, r0
ARM GAS  /tmp/cc6FmY4m.s 			page 10


 514              	.L95:
 515 0136 0122     		movs	r2, #1
 516 0138 3A70     		strb	r2, [r7]
 517 013a 79E7     		b	.L96
 518              	.L89:
 519 013c 6B69     		ldr	r3, [r5, #20]
 520 013e 002B     		cmp	r3, #0
 521 0140 F8D0     		beq	.L93
 522 0142 9847     		blx	r3
 523 0144 88B9     		cbnz	r0, .L94
 524 0146 3388     		ldrh	r3, [r6]
 525 0148 F5E7     		b	.L95
 526              	.L135:
 527 014a 0123     		movs	r3, #1
 528 014c 2B70     		strb	r3, [r5]
 529              		.syntax unified
 530              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 531 014e BFF35F8F 		dmb
 532              	@ 0 "" 2
 533              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 534 0152 62B6     		cpsie i
 535              	@ 0 "" 2
 536              		.thumb
 537              		.syntax unified
 538 0154 A0E7     		b	.L79
 539              	.L137:
 540 0156 0123     		movs	r3, #1
 541 0158 2B70     		strb	r3, [r5]
 542              		.syntax unified
 543              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 544 015a BFF35F8F 		dmb
 545              	@ 0 "" 2
 546              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 547 015e 62B6     		cpsie i
 548              	@ 0 "" 2
 549              		.thumb
 550              		.syntax unified
 551 0160 D6E7     		b	.L100
 552              	.L138:
 553 0162 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 554              	.L136:
 555 0166 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 556              	.L94:
 557 016a 3480     		strh	r4, [r6]	@ movhi
 558 016c 4B46     		mov	r3, r9
 559 016e AC89     		ldrh	r4, [r5, #12]
 560 0170 58E7     		b	.L87
 561              	.L140:
 562 0172 00BF     		.align	2
 563              	.L139:
 564 0174 00000000 		.word	.LANCHOR2
 565 0178 00000000 		.word	udd_g_ctrlreq
 566 017c 00000000 		.word	.LANCHOR4
 567 0180 00000000 		.word	g_interrupt_enabled
 568 0184 00400840 		.word	1074282496
 569 0188 00000000 		.word	.LANCHOR3
 570 018c 00000000 		.word	.LANCHOR1
ARM GAS  /tmp/cc6FmY4m.s 			page 11


 571              		.size	udd_ctrl_in_sent, .-udd_ctrl_in_sent
 572              		.section	.text.UDP_Handler,"ax",%progbits
 573              		.align	1
 574              		.p2align 2,,3
 575              		.global	UDP_Handler
 576              		.syntax unified
 577              		.thumb
 578              		.thumb_func
 579              		.fpu fpv4-sp-d16
 580              		.type	UDP_Handler, %function
 581              	UDP_Handler:
 582              		@ args = 0, pretend = 0, frame = 8
 583              		@ frame_needed = 0, uses_anonymous_args = 0
 584 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 585 0004 2320     		movs	r0, #35
 586 0006 83B0     		sub	sp, sp, #12
 587 0008 FFF7FEFF 		bl	pmc_enable_periph_clk
 588 000c 9D4B     		ldr	r3, .L513
 589 000e 9A69     		ldr	r2, [r3, #24]
 590 0010 1605     		lsls	r6, r2, #20
 591 0012 03D5     		bpl	.L142
 592 0014 DA69     		ldr	r2, [r3, #28]
 593 0016 1505     		lsls	r5, r2, #20
 594 0018 00F10A81 		bmi	.L496
 595              	.L142:
 596 001c 994B     		ldr	r3, .L513
 597 001e DA69     		ldr	r2, [r3, #28]
 598 0020 D407     		lsls	r4, r2, #31
 599 0022 1DD5     		bpl	.L143
 600 0024 1A6B     		ldr	r2, [r3, #48]
 601 0026 5007     		lsls	r0, r2, #29
 602 0028 00F1D380 		bmi	.L497
 603 002c 1A6B     		ldr	r2, [r3, #48]
 604 002e D607     		lsls	r6, r2, #31
 605 0030 00F12381 		bmi	.L492
 606 0034 1A6B     		ldr	r2, [r3, #48]
 607 0036 9507     		lsls	r5, r2, #30
 608 0038 00F13281 		bmi	.L498
 609 003c 1A6B     		ldr	r2, [r3, #48]
 610 003e 1507     		lsls	r5, r2, #28
 611 0040 0ED5     		bpl	.L143
 612 0042 1A6B     		ldr	r2, [r3, #48]
 613 0044 22F00802 		bic	r2, r2, #8
 614 0048 42F04702 		orr	r2, r2, #71
 615 004c 1A63     		str	r2, [r3, #48]
 616 004e 0A22     		movs	r2, #10
 617              	.L218:
 618 0050 196B     		ldr	r1, [r3, #48]
 619 0052 0C07     		lsls	r4, r1, #28
 620 0054 01D5     		bpl	.L141
 621 0056 013A     		subs	r2, r2, #1
 622 0058 FAD1     		bne	.L218
 623              	.L141:
 624 005a 03B0     		add	sp, sp, #12
 625              		@ sp needed
 626 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 627              	.L143:
ARM GAS  /tmp/cc6FmY4m.s 			page 12


 628 0060 894F     		ldr	r7, .L513+4
 629 0062 8848     		ldr	r0, .L513
 630 0064 0123     		movs	r3, #1
 631 0066 B846     		mov	r8, r7
 632 0068 3D46     		mov	r5, r7
 633 006a 1946     		mov	r1, r3
 634              	.L268:
 635 006c 8269     		ldr	r2, [r0, #24]
 636 006e 9C00     		lsls	r4, r3, #2
 637 0070 01FA03F6 		lsl	r6, r1, r3
 638 0074 04F14024 		add	r4, r4, #1073758208
 639 0078 3242     		tst	r2, r6
 640 007a 5FFA83F9 		uxtb	r9, r3
 641 007e 03F1FF3A 		add	r10, r3, #-1
 642 0082 04F50024 		add	r4, r4, #524288
 643 0086 03F10103 		add	r3, r3, #1
 644 008a 0CD0     		beq	.L220
 645 008c 226B     		ldr	r2, [r4, #48]
 646 008e 12F0420F 		tst	r2, #66
 647 0092 40F00382 		bne	.L499
 648 0096 226B     		ldr	r2, [r4, #48]
 649 0098 D207     		lsls	r2, r2, #31
 650 009a 00F15582 		bmi	.L500
 651 009e 226B     		ldr	r2, [r4, #48]
 652 00a0 1607     		lsls	r6, r2, #28
 653 00a2 00F18282 		bmi	.L501
 654              	.L220:
 655 00a6 042B     		cmp	r3, #4
 656 00a8 05F11405 		add	r5, r5, #20
 657 00ac DED1     		bne	.L268
 658 00ae 754B     		ldr	r3, .L513
 659 00b0 9A69     		ldr	r2, [r3, #24]
 660 00b2 9204     		lsls	r2, r2, #18
 661 00b4 7CD4     		bmi	.L284
 662              	.L285:
 663 00b6 734B     		ldr	r3, .L513
 664 00b8 9A69     		ldr	r2, [r3, #24]
 665 00ba 9605     		lsls	r6, r2, #22
 666 00bc 02D5     		bpl	.L271
 667 00be DB69     		ldr	r3, [r3, #28]
 668 00c0 9D05     		lsls	r5, r3, #22
 669 00c2 79D4     		bmi	.L270
 670              	.L271:
 671 00c4 6F4B     		ldr	r3, .L513
 672 00c6 9A69     		ldr	r2, [r3, #24]
 673 00c8 5405     		lsls	r4, r2, #21
 674 00ca 02D5     		bpl	.L272
 675 00cc DB69     		ldr	r3, [r3, #28]
 676 00ce 5805     		lsls	r0, r3, #21
 677 00d0 72D4     		bmi	.L270
 678              	.L272:
 679 00d2 6C4B     		ldr	r3, .L513
 680 00d4 9A69     		ldr	r2, [r3, #24]
 681 00d6 D105     		lsls	r1, r2, #23
 682 00d8 03D5     		bpl	.L273
 683 00da DA69     		ldr	r2, [r3, #28]
 684 00dc D205     		lsls	r2, r2, #23
ARM GAS  /tmp/cc6FmY4m.s 			page 13


 685 00de 00F15181 		bmi	.L502
 686              	.L273:
 687 00e2 684B     		ldr	r3, .L513
 688 00e4 DA69     		ldr	r2, [r3, #28]
 689 00e6 D604     		lsls	r6, r2, #19
 690 00e8 B7D5     		bpl	.L141
 691 00ea 4FF48052 		mov	r2, #4096
 692 00ee 1A62     		str	r2, [r3, #32]
 693 00f0 0023     		movs	r3, #0
 694              	.L275:
 695 00f2 03EB8302 		add	r2, r3, r3, lsl #2
 696 00f6 08EB8202 		add	r2, r8, r2, lsl #2
 697 00fa 5C1C     		adds	r4, r3, #1
 698 00fc 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 699 00fe DD06     		lsls	r5, r3, #27
 700 0100 E2B2     		uxtb	r2, r4
 701 0102 00F15281 		bmi	.L503
 702              	.L274:
 703 0106 032C     		cmp	r4, #3
 704 0108 07F11407 		add	r7, r7, #20
 705 010c 2346     		mov	r3, r4
 706 010e F0D1     		bne	.L275
 707 0110 FFF7FEFF 		bl	udc_reset
 708 0114 5B4B     		ldr	r3, .L513
 709 0116 5A68     		ldr	r2, [r3, #4]
 710 0118 22F00102 		bic	r2, r2, #1
 711 011c 5A60     		str	r2, [r3, #4]
 712 011e 5A68     		ldr	r2, [r3, #4]
 713 0120 22F00202 		bic	r2, r2, #2
 714 0124 5A60     		str	r2, [r3, #4]
 715 0126 9A68     		ldr	r2, [r3, #8]
 716 0128 42F48072 		orr	r2, r2, #256
 717 012c 9A60     		str	r2, [r3, #8]
 718 012e 9A68     		ldr	r2, [r3, #8]
 719 0130 22F07F02 		bic	r2, r2, #127
 720 0134 9A60     		str	r2, [r3, #8]
 721 0136 1A6B     		ldr	r2, [r3, #48]
 722 0138 22F40742 		bic	r2, r2, #34560
 723 013c 22F0CF02 		bic	r2, r2, #207
 724 0140 42F40042 		orr	r2, r2, #32768
 725 0144 42F04F02 		orr	r2, r2, #79
 726 0148 1A63     		str	r2, [r3, #48]
 727 014a 1A46     		mov	r2, r3
 728 014c 0A23     		movs	r3, #10
 729              	.L276:
 730 014e 116B     		ldr	r1, [r2, #48]
 731 0150 0C04     		lsls	r4, r1, #16
 732 0152 01D4     		bmi	.L277
 733 0154 013B     		subs	r3, r3, #1
 734 0156 FAD1     		bne	.L276
 735              	.L277:
 736 0158 4A49     		ldr	r1, .L513
 737 015a 0B6B     		ldr	r3, [r1, #48]
 738 015c 43F40043 		orr	r3, r3, #32768
 739 0160 43F04F03 		orr	r3, r3, #79
 740 0164 0B63     		str	r3, [r1, #48]
 741 0166 0A23     		movs	r3, #10
ARM GAS  /tmp/cc6FmY4m.s 			page 14


 742              	.L279:
 743 0168 0A6B     		ldr	r2, [r1, #48]
 744 016a 1004     		lsls	r0, r2, #16
 745 016c 01D4     		bmi	.L280
 746 016e 013B     		subs	r3, r3, #1
 747 0170 FAD1     		bne	.L279
 748              	.L280:
 749              		.syntax unified
 750              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 751 0172 EFF31083 		MRS r3, primask
 752              	@ 0 "" 2
 753              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 754 0176 72B6     		cpsid i
 755              	@ 0 "" 2
 756              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 757 0178 BFF35F8F 		dmb
 758              	@ 0 "" 2
 759              		.thumb
 760              		.syntax unified
 761 017c 434A     		ldr	r2, .L513+8
 762 017e 4148     		ldr	r0, .L513
 763 0180 0024     		movs	r4, #0
 764 0182 0121     		movs	r1, #1
 765 0184 1470     		strb	r4, [r2]
 766 0186 0161     		str	r1, [r0, #16]
 767 0188 1BB9     		cbnz	r3, .L282
 768 018a 1170     		strb	r1, [r2]
 769              		.syntax unified
 770              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 771 018c BFF35F8F 		dmb
 772              	@ 0 "" 2
 773              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 774 0190 62B6     		cpsie i
 775              	@ 0 "" 2
 776              		.thumb
 777              		.syntax unified
 778              	.L282:
 779              	.L152:
 780              	.L283:
 781 0192 3F4A     		ldr	r2, .L513+12
 782 0194 3B49     		ldr	r1, .L513
 783 0196 3F4D     		ldr	r5, .L513+16
 784 0198 0023     		movs	r3, #0
 785 019a 4FF48074 		mov	r4, #256
 786 019e 4FF40060 		mov	r0, #2048
 787 01a2 2B70     		strb	r3, [r5]
 788 01a4 1361     		str	r3, [r2, #16]
 789 01a6 0C61     		str	r4, [r1, #16]
 790 01a8 5361     		str	r3, [r2, #20]
 791 01aa 0861     		str	r0, [r1, #16]
 792 01ac 9381     		strh	r3, [r2, #12]	@ movhi
 793 01ae 54E7     		b	.L141
 794              	.L284:
 795 01b0 DB69     		ldr	r3, [r3, #28]
 796 01b2 9B04     		lsls	r3, r3, #18
 797 01b4 7FF57FAF 		bpl	.L285
 798              	.L270:
ARM GAS  /tmp/cc6FmY4m.s 			page 15


 799 01b8 324B     		ldr	r3, .L513
 800 01ba 4FF41851 		mov	r1, #9728
 801 01be 4FF48072 		mov	r2, #256
 802 01c2 4FF40060 		mov	r0, #2048
 803 01c6 1962     		str	r1, [r3, #32]
 804 01c8 5961     		str	r1, [r3, #20]
 805 01ca 1A62     		str	r2, [r3, #32]
 806 01cc 1A61     		str	r2, [r3, #16]
 807 01ce 1861     		str	r0, [r3, #16]
 808 01d0 43E7     		b	.L141
 809              	.L497:
 810 01d2 304D     		ldr	r5, .L513+16
 811 01d4 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 812 01d6 43B1     		cbz	r3, .L145
 813 01d8 2D4E     		ldr	r6, .L513+12
 814 01da 3369     		ldr	r3, [r6, #16]
 815 01dc 03B1     		cbz	r3, .L146
 816 01de 9847     		blx	r3
 817              	.L146:
 818 01e0 0023     		movs	r3, #0
 819 01e2 3361     		str	r3, [r6, #16]
 820 01e4 7361     		str	r3, [r6, #20]
 821 01e6 B381     		strh	r3, [r6, #12]	@ movhi
 822 01e8 2B70     		strb	r3, [r5]
 823              	.L145:
 824 01ea 264A     		ldr	r2, .L513
 825 01ec 136B     		ldr	r3, [r2, #48]
 826 01ee C3F30A43 		ubfx	r3, r3, #16, #11
 827 01f2 082B     		cmp	r3, #8
 828 01f4 00F0DE80 		beq	.L147
 829 01f8 136B     		ldr	r3, [r2, #48]
 830 01fa 23F00403 		bic	r3, r3, #4
 831 01fe 43F04B03 		orr	r3, r3, #75
 832 0202 1363     		str	r3, [r2, #48]
 833 0204 0A23     		movs	r3, #10
 834              	.L148:
 835 0206 116B     		ldr	r1, [r2, #48]
 836 0208 4907     		lsls	r1, r1, #29
 837 020a 01D5     		bpl	.L149
 838 020c 013B     		subs	r3, r3, #1
 839 020e FAD1     		bne	.L148
 840              	.L149:
 841 0210 1C4B     		ldr	r3, .L513
 842 0212 1A6B     		ldr	r2, [r3, #48]
 843 0214 0521     		movs	r1, #5
 844 0216 42F06F02 		orr	r2, r2, #111
 845 021a 2970     		strb	r1, [r5]
 846 021c 1946     		mov	r1, r3
 847 021e 1A63     		str	r2, [r3, #48]
 848 0220 0A23     		movs	r3, #10
 849              	.L151:
 850 0222 0A6B     		ldr	r2, [r1, #48]
 851 0224 9706     		lsls	r7, r2, #26
 852 0226 3FF518AF 		bmi	.L141
 853 022a 013B     		subs	r3, r3, #1
 854 022c F9D1     		bne	.L151
 855 022e 14E7     		b	.L141
ARM GAS  /tmp/cc6FmY4m.s 			page 16


 856              	.L496:
 857 0230 4FF40062 		mov	r2, #2048
 858 0234 1A62     		str	r2, [r3, #32]
 859 0236 03B0     		add	sp, sp, #12
 860              		@ sp needed
 861 0238 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 862 023c FFF7FEBF 		b	udc_sof_notify
 863              	.L505:
 864 0240 43F0CF03 		orr	r3, r3, #207
 865 0244 2363     		str	r3, [r4, #48]
 866 0246 0A23     		movs	r3, #10
 867              	.L163:
 868 0248 0A6B     		ldr	r2, [r1, #48]
 869 024a 1406     		lsls	r4, r2, #24
 870 024c 01D4     		bmi	.L164
 871 024e 013B     		subs	r3, r3, #1
 872 0250 FAD1     		bne	.L163
 873              	.L164:
 874 0252 0C49     		ldr	r1, .L513
 875 0254 0B6B     		ldr	r3, [r1, #48]
 876 0256 23F00403 		bic	r3, r3, #4
 877 025a 43F04B03 		orr	r3, r3, #75
 878 025e 0B63     		str	r3, [r1, #48]
 879 0260 0A23     		movs	r3, #10
 880              	.L166:
 881 0262 0A6B     		ldr	r2, [r1, #48]
 882 0264 5007     		lsls	r0, r2, #29
 883 0266 01D5     		bpl	.L167
 884 0268 013B     		subs	r3, r3, #1
 885 026a FAD1     		bne	.L166
 886              	.L167:
 887 026c 0A48     		ldr	r0, .L513+20
 888 026e 0B49     		ldr	r1, .L513+24
 889 0270 0023     		movs	r3, #0
 890 0272 0222     		movs	r2, #2
 891 0274 0380     		strh	r3, [r0]	@ movhi
 892 0276 0B80     		strh	r3, [r1]	@ movhi
 893 0278 2A70     		strb	r2, [r5]
 894              	.L492:
 895 027a 03B0     		add	sp, sp, #12
 896              		@ sp needed
 897 027c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 898 0280 FFF7FEBF 		b	udd_ctrl_in_sent
 899              	.L514:
 900              		.align	2
 901              	.L513:
 902 0284 00400840 		.word	1074282496
 903 0288 00000000 		.word	.LANCHOR0
 904 028c 00000000 		.word	g_interrupt_enabled
 905 0290 00000000 		.word	udd_g_ctrlreq
 906 0294 00000000 		.word	.LANCHOR1
 907 0298 00000000 		.word	.LANCHOR3
 908 029c 00000000 		.word	.LANCHOR2
 909              	.L498:
 910 02a0 A44D     		ldr	r5, .L515
 911 02a2 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 912 02a4 012A     		cmp	r2, #1
ARM GAS  /tmp/cc6FmY4m.s 			page 17


 913 02a6 23D0     		beq	.L177
 914 02a8 022A     		cmp	r2, #2
 915 02aa 00F0AC80 		beq	.L178
 916 02ae 042A     		cmp	r2, #4
 917 02b0 00F0A980 		beq	.L178
 918 02b4 1A6B     		ldr	r2, [r3, #48]
 919 02b6 42F06F02 		orr	r2, r2, #111
 920 02ba 1A63     		str	r2, [r3, #48]
 921 02bc 0A22     		movs	r2, #10
 922              	.L182:
 923 02be 196B     		ldr	r1, [r3, #48]
 924 02c0 8C06     		lsls	r4, r1, #26
 925 02c2 01D4     		bmi	.L491
 926 02c4 013A     		subs	r2, r2, #1
 927 02c6 FAD1     		bne	.L182
 928              	.L491:
 929 02c8 9B4E     		ldr	r6, .L515+4
 930              	.L181:
 931 02ca 9C49     		ldr	r1, .L515+8
 932 02cc 0B6B     		ldr	r3, [r1, #48]
 933 02ce 23F00203 		bic	r3, r3, #2
 934 02d2 43F04D03 		orr	r3, r3, #77
 935 02d6 0B63     		str	r3, [r1, #48]
 936 02d8 0A23     		movs	r3, #10
 937              	.L185:
 938 02da 0A6B     		ldr	r2, [r1, #48]
 939 02dc 9007     		lsls	r0, r2, #30
 940 02de 01D5     		bpl	.L186
 941 02e0 013B     		subs	r3, r3, #1
 942 02e2 FAD1     		bne	.L185
 943              	.L186:
 944 02e4 0023     		movs	r3, #0
 945 02e6 3361     		str	r3, [r6, #16]
 946 02e8 7361     		str	r3, [r6, #20]
 947 02ea B381     		strh	r3, [r6, #12]	@ movhi
 948 02ec 2B70     		strb	r3, [r5]
 949 02ee B4E6     		b	.L141
 950              	.L177:
 951 02f0 934C     		ldr	r4, .L515+12
 952 02f2 196B     		ldr	r1, [r3, #48]
 953 02f4 904E     		ldr	r6, .L515+4
 954 02f6 B4F800E0 		ldrh	lr, [r4]
 955 02fa B389     		ldrh	r3, [r6, #12]
 956 02fc B068     		ldr	r0, [r6, #8]
 957 02fe C1F30A41 		ubfx	r1, r1, #16, #11
 958 0302 0EEB0102 		add	r2, lr, r1
 959 0306 9342     		cmp	r3, r2
 960 0308 BCBF     		itt	lt
 961 030a A3EB0E03 		sublt	r3, r3, lr
 962 030e 99B2     		uxthlt	r1, r3
 963 0310 7044     		add	r0, r0, lr
 964 0312 81B1     		cbz	r1, .L189
 965 0314 894F     		ldr	r7, .L515+8
 966 0316 0246     		mov	r2, r0
 967              	.L190:
 968 0318 3B6D     		ldr	r3, [r7, #80]
 969 031a 02F8013B 		strb	r3, [r2], #1
ARM GAS  /tmp/cc6FmY4m.s 			page 18


 970 031e 131A     		subs	r3, r2, r0
 971 0320 DBB2     		uxtb	r3, r3
 972 0322 8B42     		cmp	r3, r1
 973 0324 F8D3     		bcc	.L190
 974 0326 8E44     		add	lr, lr, r1
 975 0328 1FFA8EFE 		uxth	lr, lr
 976 032c 4029     		cmp	r1, #64
 977 032e A4F800E0 		strh	lr, [r4]	@ movhi
 978 0332 00F05781 		beq	.L504
 979              	.L189:
 980 0336 7369     		ldr	r3, [r6, #20]
 981 0338 A6F80CE0 		strh	lr, [r6, #12]	@ movhi
 982 033c 002B     		cmp	r3, #0
 983 033e 00F09080 		beq	.L192
 984 0342 9847     		blx	r3
 985 0344 0028     		cmp	r0, #0
 986 0346 40F08C80 		bne	.L192
 987 034a 7C4B     		ldr	r3, .L515+8
 988 034c 1A6B     		ldr	r2, [r3, #48]
 989 034e 0521     		movs	r1, #5
 990 0350 42F06F02 		orr	r2, r2, #111
 991 0354 2970     		strb	r1, [r5]
 992 0356 1946     		mov	r1, r3
 993 0358 1A63     		str	r2, [r3, #48]
 994 035a 0A23     		movs	r3, #10
 995              	.L193:
 996 035c 0A6B     		ldr	r2, [r1, #48]
 997 035e 9206     		lsls	r2, r2, #26
 998 0360 01D4     		bmi	.L194
 999 0362 013B     		subs	r3, r3, #1
 1000 0364 FAD1     		bne	.L193
 1001              	.L194:
 1002 0366 7549     		ldr	r1, .L515+8
 1003 0368 0B6B     		ldr	r3, [r1, #48]
 1004 036a 23F00203 		bic	r3, r3, #2
 1005 036e 43F04D03 		orr	r3, r3, #77
 1006 0372 0B63     		str	r3, [r1, #48]
 1007 0374 0A23     		movs	r3, #10
 1008              	.L196:
 1009 0376 0A6B     		ldr	r2, [r1, #48]
 1010 0378 9707     		lsls	r7, r2, #30
 1011 037a 7FF56EAE 		bpl	.L141
 1012 037e 013B     		subs	r3, r3, #1
 1013 0380 F9D1     		bne	.L196
 1014 0382 6AE6     		b	.L141
 1015              	.L502:
 1016 0384 4FF48072 		mov	r2, #256
 1017 0388 4FF40055 		mov	r5, #8192
 1018 038c 4FF40074 		mov	r4, #512
 1019 0390 4FF48061 		mov	r1, #1024
 1020 0394 2320     		movs	r0, #35
 1021 0396 1A62     		str	r2, [r3, #32]
 1022 0398 5A61     		str	r2, [r3, #20]
 1023 039a 1D61     		str	r5, [r3, #16]
 1024 039c 1C61     		str	r4, [r3, #16]
 1025 039e 1961     		str	r1, [r3, #16]
 1026 03a0 03B0     		add	sp, sp, #12
ARM GAS  /tmp/cc6FmY4m.s 			page 19


 1027              		@ sp needed
 1028 03a2 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1029 03a6 FFF7FEBF 		b	pmc_disable_periph_clk
 1030              	.L503:
 1031 03aa 0121     		movs	r1, #1
 1032 03ac 3846     		mov	r0, r7
 1033 03ae FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1034 03b2 A8E6     		b	.L274
 1035              	.L147:
 1036 03b4 634B     		ldr	r3, .L515+16
 1037 03b6 1446     		mov	r4, r2
 1038 03b8 03F10801 		add	r1, r3, #8
 1039              	.L155:
 1040 03bc 226D     		ldr	r2, [r4, #80]
 1041 03be 03F8012F 		strb	r2, [r3, #1]!
 1042 03c2 8B42     		cmp	r3, r1
 1043 03c4 FAD1     		bne	.L155
 1044 03c6 FFF7FEFF 		bl	udc_process_setup
 1045 03ca 18BB     		cbnz	r0, .L156
 1046 03cc 236B     		ldr	r3, [r4, #48]
 1047 03ce 5B49     		ldr	r1, .L515+8
 1048 03d0 23F00403 		bic	r3, r3, #4
 1049 03d4 43F04B03 		orr	r3, r3, #75
 1050 03d8 2363     		str	r3, [r4, #48]
 1051 03da 0A23     		movs	r3, #10
 1052              	.L157:
 1053 03dc 0A6B     		ldr	r2, [r1, #48]
 1054 03de 5607     		lsls	r6, r2, #29
 1055 03e0 01D5     		bpl	.L158
 1056 03e2 013B     		subs	r3, r3, #1
 1057 03e4 FAD1     		bne	.L157
 1058              	.L158:
 1059 03e6 554B     		ldr	r3, .L515+8
 1060 03e8 1A6B     		ldr	r2, [r3, #48]
 1061 03ea 0521     		movs	r1, #5
 1062 03ec 42F06F02 		orr	r2, r2, #111
 1063 03f0 2970     		strb	r1, [r5]
 1064 03f2 1946     		mov	r1, r3
 1065 03f4 1A63     		str	r2, [r3, #48]
 1066 03f6 0A23     		movs	r3, #10
 1067              	.L160:
 1068 03f8 0A6B     		ldr	r2, [r1, #48]
 1069 03fa 9506     		lsls	r5, r2, #26
 1070 03fc 3FF52DAE 		bmi	.L141
 1071 0400 013B     		subs	r3, r3, #1
 1072 0402 F9D1     		bne	.L160
 1073 0404 29E6     		b	.L141
 1074              	.L178:
 1075 0406 4C4E     		ldr	r6, .L515+4
 1076 0408 3369     		ldr	r3, [r6, #16]
 1077 040a 002B     		cmp	r3, #0
 1078 040c 3FF45DAF 		beq	.L181
 1079 0410 9847     		blx	r3
 1080 0412 5AE7     		b	.L181
 1081              	.L156:
 1082 0414 484E     		ldr	r6, .L515+4
 1083 0416 4949     		ldr	r1, .L515+8
ARM GAS  /tmp/cc6FmY4m.s 			page 20


 1084 0418 96F90030 		ldrsb	r3, [r6]
 1085 041c 002B     		cmp	r3, #0
 1086 041e 236B     		ldr	r3, [r4, #48]
 1087 0420 FFF60EAF 		blt	.L505
 1088 0424 23F00403 		bic	r3, r3, #4
 1089 0428 43F04B03 		orr	r3, r3, #75
 1090 042c 2363     		str	r3, [r4, #48]
 1091 042e 0A23     		movs	r3, #10
 1092              	.L169:
 1093 0430 0A6B     		ldr	r2, [r1, #48]
 1094 0432 5207     		lsls	r2, r2, #29
 1095 0434 01D5     		bpl	.L170
 1096 0436 013B     		subs	r3, r3, #1
 1097 0438 FAD1     		bne	.L169
 1098              	.L170:
 1099 043a F388     		ldrh	r3, [r6, #6]
 1100 043c 002B     		cmp	r3, #0
 1101 043e 40F0C980 		bne	.L172
 1102 0442 3E4B     		ldr	r3, .L515+8
 1103 0444 1A6B     		ldr	r2, [r3, #48]
 1104 0446 0321     		movs	r1, #3
 1105 0448 42F05F02 		orr	r2, r2, #95
 1106 044c 2970     		strb	r1, [r5]
 1107 044e 1946     		mov	r1, r3
 1108 0450 1A63     		str	r2, [r3, #48]
 1109 0452 0A23     		movs	r3, #10
 1110              	.L173:
 1111 0454 0A6B     		ldr	r2, [r1, #48]
 1112 0456 D706     		lsls	r7, r2, #27
 1113 0458 3FF5FFAD 		bmi	.L141
 1114 045c 013B     		subs	r3, r3, #1
 1115 045e F9D1     		bne	.L173
 1116 0460 FBE5     		b	.L141
 1117              	.L192:
 1118 0462 3649     		ldr	r1, .L515+8
 1119 0464 0B6B     		ldr	r3, [r1, #48]
 1120 0466 23F00203 		bic	r3, r3, #2
 1121 046a 43F04D03 		orr	r3, r3, #77
 1122 046e 0B63     		str	r3, [r1, #48]
 1123 0470 0A23     		movs	r3, #10
 1124              	.L198:
 1125 0472 0A6B     		ldr	r2, [r1, #48]
 1126 0474 9607     		lsls	r6, r2, #30
 1127 0476 01D5     		bpl	.L199
 1128 0478 013B     		subs	r3, r3, #1
 1129 047a FAD1     		bne	.L198
 1130              	.L199:
 1131 047c 2F4B     		ldr	r3, .L515+8
 1132 047e 1A6B     		ldr	r2, [r3, #48]
 1133 0480 0321     		movs	r1, #3
 1134 0482 42F05F02 		orr	r2, r2, #95
 1135 0486 2970     		strb	r1, [r5]
 1136 0488 1946     		mov	r1, r3
 1137 048a 1A63     		str	r2, [r3, #48]
 1138 048c 0A23     		movs	r3, #10
 1139              	.L201:
 1140 048e 0A6B     		ldr	r2, [r1, #48]
ARM GAS  /tmp/cc6FmY4m.s 			page 21


 1141 0490 D406     		lsls	r4, r2, #27
 1142 0492 3FF5E2AD 		bmi	.L141
 1143 0496 013B     		subs	r3, r3, #1
 1144 0498 F9D1     		bne	.L201
 1145 049a DEE5     		b	.L141
 1146              	.L499:
 1147 049c 4FEA8A07 		lsl	r7, r10, #2
 1148 04a0 07EB0A03 		add	r3, r7, r10
 1149 04a4 08EB8303 		add	r3, r8, r3, lsl #2
 1150 04a8 226B     		ldr	r2, [r4, #48]
 1151 04aa B3F810B0 		ldrh	fp, [r3, #16]
 1152 04ae C2F30A42 		ubfx	r2, r2, #16, #11
 1153 04b2 CBF3090B 		ubfx	fp, fp, #0, #10
 1154 04b6 002A     		cmp	r2, #0
 1155 04b8 00F0B080 		beq	.L222
 1156 04bc 9968     		ldr	r1, [r3, #8]
 1157 04be D868     		ldr	r0, [r3, #12]
 1158 04c0 D3F804E0 		ldr	lr, [r3, #4]
 1159 04c4 A1EB000C 		sub	ip, r1, r0
 1160 04c8 9445     		cmp	ip, r2
 1161 04ca 00F20181 		bhi	.L506
 1162 04ce D960     		str	r1, [r3, #12]
 1163 04d0 BCF1000F 		cmp	ip, #0
 1164 04d4 00F08D81 		beq	.L507
 1165 04d8 0121     		movs	r1, #1
 1166              	.L286:
 1167 04da 8644     		add	lr, lr, r0
 1168 04dc 7346     		mov	r3, lr
 1169              	.L225:
 1170 04de 206D     		ldr	r0, [r4, #80]
 1171 04e0 03F8010B 		strb	r0, [r3], #1
 1172 04e4 A3EB0E00 		sub	r0, r3, lr
 1173 04e8 6045     		cmp	r0, ip
 1174 04ea F8D3     		bcc	.L225
 1175 04ec 4846     		mov	r0, r9
 1176 04ee 8DE80600 		stm	sp, {r1, r2}
 1177 04f2 FFF7FEFF 		bl	udd_ep_ack_out_received
 1178 04f6 9DE80600 		ldm	sp, {r1, r2}
 1179 04fa 0029     		cmp	r1, #0
 1180 04fc 00F09380 		beq	.L226
 1181              	.L227:
 1182 0500 216B     		ldr	r1, [r4, #48]
 1183 0502 11F02001 		ands	r1, r1, #32
 1184 0506 7FF4A8AD 		bne	.L141
 1185 050a 0C4B     		ldr	r3, .L515+8
 1186 050c 5744     		add	r7, r7, r10
 1187 050e 08EB8708 		add	r8, r8, r7, lsl #2
 1188 0512 5E61     		str	r6, [r3, #20]
 1189 0514 98F81130 		ldrb	r3, [r8, #17]	@ zero_extendqisi2
 1190 0518 D8F80C20 		ldr	r2, [r8, #12]
 1191 051c C8F80820 		str	r2, [r8, #8]
 1192 0520 D806     		lsls	r0, r3, #27
 1193 0522 7FF59AAD 		bpl	.L141
 1194 0526 4A46     		mov	r2, r9
 1195 0528 2846     		mov	r0, r5
 1196 052a 03B0     		add	sp, sp, #12
 1197              		@ sp needed
ARM GAS  /tmp/cc6FmY4m.s 			page 22


 1198 052c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1199 0530 FFF7FEBF 		b	udd_ep_finish_job.part.2
 1200              	.L516:
 1201              		.align	2
 1202              	.L515:
 1203 0534 00000000 		.word	.LANCHOR1
 1204 0538 00000000 		.word	udd_g_ctrlreq
 1205 053c 00400840 		.word	1074282496
 1206 0540 00000000 		.word	.LANCHOR2
 1207 0544 FFFFFFFF 		.word	udd_g_ctrlreq-1
 1208              	.L500:
 1209 0548 4FEA8A07 		lsl	r7, r10, #2
 1210 054c 07EB0A02 		add	r2, r7, r10
 1211 0550 08EB8202 		add	r2, r8, r2, lsl #2
 1212 0554 02F1100E 		add	lr, r2, #16
 1213 0558 9EF80130 		ldrb	r3, [lr, #1]	@ zero_extendqisi2
 1214 055c C3F38101 		ubfx	r1, r3, #2, #2
 1215 0560 0331     		adds	r1, r1, #3
 1216 0562 61F38303 		bfi	r3, r1, #2, #2
 1217 0566 8EF80130 		strb	r3, [lr, #1]
 1218 056a 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1219 056c 13F02001 		ands	r1, r3, #32
 1220 0570 5DD0     		beq	.L230
 1221 0572 13F00C0F 		tst	r3, #12
 1222 0576 236B     		ldr	r3, [r4, #48]
 1223 0578 00F0AF80 		beq	.L231
 1224 057c 43F05F03 		orr	r3, r3, #95
 1225 0580 2363     		str	r3, [r4, #48]
 1226 0582 0A23     		movs	r3, #10
 1227              	.L232:
 1228 0584 226B     		ldr	r2, [r4, #48]
 1229 0586 D506     		lsls	r5, r2, #27
 1230 0588 01D4     		bmi	.L233
 1231 058a 013B     		subs	r3, r3, #1
 1232 058c FAD1     		bne	.L232
 1233              	.L233:
 1234 058e 236B     		ldr	r3, [r4, #48]
 1235 0590 23F00103 		bic	r3, r3, #1
 1236 0594 43F04E03 		orr	r3, r3, #78
 1237 0598 2363     		str	r3, [r4, #48]
 1238 059a 0A23     		movs	r3, #10
 1239              	.L235:
 1240 059c 226B     		ldr	r2, [r4, #48]
 1241 059e D007     		lsls	r0, r2, #31
 1242 05a0 7FF55BAD 		bpl	.L141
 1243 05a4 013B     		subs	r3, r3, #1
 1244 05a6 F9D1     		bne	.L235
 1245 05a8 57E5     		b	.L141
 1246              	.L501:
 1247 05aa 236B     		ldr	r3, [r4, #48]
 1248 05ac 23F00803 		bic	r3, r3, #8
 1249 05b0 43F04703 		orr	r3, r3, #71
 1250 05b4 2363     		str	r3, [r4, #48]
 1251 05b6 0A23     		movs	r3, #10
 1252              	.L265:
 1253 05b8 226B     		ldr	r2, [r4, #48]
 1254 05ba 1207     		lsls	r2, r2, #28
ARM GAS  /tmp/cc6FmY4m.s 			page 23


 1255 05bc 01D5     		bpl	.L266
 1256 05be 013B     		subs	r3, r3, #1
 1257 05c0 FAD1     		bne	.L265
 1258              	.L266:
 1259 05c2 236B     		ldr	r3, [r4, #48]
 1260 05c4 03F4E063 		and	r3, r3, #1792
 1261 05c8 B3F5807F 		cmp	r3, #256
 1262 05cc 3FF445AD 		beq	.L141
 1263 05d0 236B     		ldr	r3, [r4, #48]
 1264 05d2 42E5     		b	.L141
 1265              	.L172:
 1266 05d4 A248     		ldr	r0, .L517
 1267 05d6 A349     		ldr	r1, .L517+4
 1268 05d8 0023     		movs	r3, #0
 1269 05da 0122     		movs	r2, #1
 1270 05dc 0380     		strh	r3, [r0]	@ movhi
 1271 05de 0B80     		strh	r3, [r1]	@ movhi
 1272 05e0 2A70     		strb	r2, [r5]
 1273 05e2 3AE5     		b	.L141
 1274              	.L504:
 1275 05e4 DFF87882 		ldr	r8, .L517
 1276 05e8 F288     		ldrh	r2, [r6, #6]
 1277 05ea B8F80030 		ldrh	r3, [r8]
 1278 05ee 7344     		add	r3, r3, lr
 1279 05f0 9A42     		cmp	r2, r3
 1280 05f2 7FF7A0AE 		ble	.L189
 1281 05f6 B389     		ldrh	r3, [r6, #12]
 1282 05f8 7345     		cmp	r3, lr
 1283 05fa 00F0D780 		beq	.L508
 1284              	.L203:
 1285 05fe 9A49     		ldr	r1, .L517+8
 1286 0600 0B6B     		ldr	r3, [r1, #48]
 1287 0602 23F00203 		bic	r3, r3, #2
 1288 0606 43F04D03 		orr	r3, r3, #77
 1289 060a 0B63     		str	r3, [r1, #48]
 1290 060c 0A23     		movs	r3, #10
 1291              	.L216:
 1292 060e 0A6B     		ldr	r2, [r1, #48]
 1293 0610 9607     		lsls	r6, r2, #30
 1294 0612 7FF522AD 		bpl	.L141
 1295 0616 013B     		subs	r3, r3, #1
 1296 0618 F9D1     		bne	.L216
 1297 061a 1EE5     		b	.L141
 1298              	.L222:
 1299 061c 4846     		mov	r0, r9
 1300 061e 0092     		str	r2, [sp]
 1301 0620 FFF7FEFF 		bl	udd_ep_ack_out_received
 1302 0624 009A     		ldr	r2, [sp]
 1303              	.L226:
 1304 0626 9345     		cmp	fp, r2
 1305 0628 3FF66AAF 		bhi	.L227
 1306 062c 15E5     		b	.L141
 1307              	.L230:
 1308 062e 1B06     		lsls	r3, r3, #24
 1309 0630 00F18480 		bmi	.L509
 1310              	.L243:
 1311 0634 07EB0A03 		add	r3, r7, r10
ARM GAS  /tmp/cc6FmY4m.s 			page 24


 1312 0638 08EB8303 		add	r3, r8, r3, lsl #2
 1313 063c D968     		ldr	r1, [r3, #12]
 1314 063e 9A68     		ldr	r2, [r3, #8]
 1315 0640 9142     		cmp	r1, r2
 1316 0642 1DD3     		bcc	.L245
 1317 0644 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1318              	.L244:
 1319 0646 13F04C03 		ands	r3, r3, #76
 1320 064a 19D1     		bne	.L245
 1321              		.syntax unified
 1322              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1323 064c EFF31082 		MRS r2, primask
 1324              	@ 0 "" 2
 1325              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1326 0650 72B6     		cpsid i
 1327              	@ 0 "" 2
 1328              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1329 0652 BFF35F8F 		dmb
 1330              	@ 0 "" 2
 1331              		.thumb
 1332              		.syntax unified
 1333 0656 8549     		ldr	r1, .L517+12
 1334 0658 8348     		ldr	r0, .L517+8
 1335 065a 0B70     		strb	r3, [r1]
 1336 065c 4661     		str	r6, [r0, #20]
 1337 065e 002A     		cmp	r2, #0
 1338 0660 00F0CB80 		beq	.L510
 1339              	.L246:
 1340 0664 236B     		ldr	r3, [r4, #48]
 1341 0666 23F00103 		bic	r3, r3, #1
 1342 066a 43F04E03 		orr	r3, r3, #78
 1343 066e 2363     		str	r3, [r4, #48]
 1344 0670 0A23     		movs	r3, #10
 1345              	.L247:
 1346 0672 226B     		ldr	r2, [r4, #48]
 1347 0674 D707     		lsls	r7, r2, #31
 1348 0676 7FF5F0AC 		bpl	.L141
 1349 067a 013B     		subs	r3, r3, #1
 1350 067c F9D1     		bne	.L247
 1351 067e ECE4     		b	.L141
 1352              	.L245:
 1353 0680 B9F1030F 		cmp	r9, #3
 1354 0684 47D0     		beq	.L249
 1355 0686 07EB0A03 		add	r3, r7, r10
 1356 068a 08EB8303 		add	r3, r8, r3, lsl #2
 1357 068e 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1358 0690 13F00C0F 		tst	r3, #12
 1359 0694 64D0     		beq	.L250
 1360 0696 236B     		ldr	r3, [r4, #48]
 1361 0698 43F05F03 		orr	r3, r3, #95
 1362 069c 2363     		str	r3, [r4, #48]
 1363 069e 0A23     		movs	r3, #10
 1364              	.L251:
 1365 06a0 226B     		ldr	r2, [r4, #48]
 1366 06a2 D606     		lsls	r6, r2, #27
 1367 06a4 01D4     		bmi	.L252
 1368 06a6 013B     		subs	r3, r3, #1
ARM GAS  /tmp/cc6FmY4m.s 			page 25


 1369 06a8 FAD1     		bne	.L251
 1370              	.L252:
 1371 06aa 236B     		ldr	r3, [r4, #48]
 1372 06ac 23F00103 		bic	r3, r3, #1
 1373 06b0 43F04E03 		orr	r3, r3, #78
 1374 06b4 2363     		str	r3, [r4, #48]
 1375 06b6 0A23     		movs	r3, #10
 1376              	.L254:
 1377 06b8 226B     		ldr	r2, [r4, #48]
 1378 06ba D507     		lsls	r5, r2, #31
 1379 06bc 01D5     		bpl	.L261
 1380 06be 013B     		subs	r3, r3, #1
 1381 06c0 FAD1     		bne	.L254
 1382              	.L261:
 1383 06c2 4846     		mov	r0, r9
 1384 06c4 0021     		movs	r1, #0
 1385 06c6 03B0     		add	sp, sp, #12
 1386              		@ sp needed
 1387 06c8 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1388 06cc FFF7FEBF 		b	udd_ep_in_sent
 1389              	.L506:
 1390 06d0 8118     		adds	r1, r0, r2
 1391 06d2 D960     		str	r1, [r3, #12]
 1392 06d4 9446     		mov	ip, r2
 1393 06d6 0021     		movs	r1, #0
 1394 06d8 FFE6     		b	.L286
 1395              	.L231:
 1396 06da 23F00103 		bic	r3, r3, #1
 1397 06de 43F04E03 		orr	r3, r3, #78
 1398 06e2 2363     		str	r3, [r4, #48]
 1399 06e4 0A23     		movs	r3, #10
 1400              	.L237:
 1401 06e6 226B     		ldr	r2, [r4, #48]
 1402 06e8 D107     		lsls	r1, r2, #31
 1403 06ea 01D5     		bpl	.L238
 1404 06ec 013B     		subs	r3, r3, #1
 1405 06ee FAD1     		bne	.L237
 1406              	.L238:
 1407 06f0 236B     		ldr	r3, [r4, #48]
 1408 06f2 43F06F03 		orr	r3, r3, #111
 1409 06f6 2363     		str	r3, [r4, #48]
 1410 06f8 0A23     		movs	r3, #10
 1411              	.L240:
 1412 06fa 226B     		ldr	r2, [r4, #48]
 1413 06fc 9206     		lsls	r2, r2, #26
 1414 06fe 01D4     		bmi	.L241
 1415 0700 013B     		subs	r3, r3, #1
 1416 0702 FAD1     		bne	.L240
 1417              	.L241:
 1418 0704 07EB0A03 		add	r3, r7, r10
 1419 0708 08EB8303 		add	r3, r8, r3, lsl #2
 1420 070c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1421 070e 6FF34512 		bfc	r2, #5, #1
 1422 0712 5A74     		strb	r2, [r3, #17]
 1423 0714 A1E4     		b	.L141
 1424              	.L249:
 1425 0716 0121     		movs	r1, #1
ARM GAS  /tmp/cc6FmY4m.s 			page 26


 1426 0718 4846     		mov	r0, r9
 1427 071a FFF7FEFF 		bl	udd_ep_in_sent
 1428 071e 5249     		ldr	r1, .L517+8
 1429 0720 CB6B     		ldr	r3, [r1, #60]
 1430 0722 23F00103 		bic	r3, r3, #1
 1431 0726 43F04E03 		orr	r3, r3, #78
 1432 072a CB63     		str	r3, [r1, #60]
 1433 072c 0A23     		movs	r3, #10
 1434              	.L263:
 1435 072e CA6B     		ldr	r2, [r1, #60]
 1436 0730 D707     		lsls	r7, r2, #31
 1437 0732 7FF592AC 		bpl	.L141
 1438 0736 013B     		subs	r3, r3, #1
 1439 0738 F9D1     		bne	.L263
 1440 073a 8EE4     		b	.L141
 1441              	.L509:
 1442 073c 9EF801C0 		ldrb	ip, [lr, #1]	@ zero_extendqisi2
 1443 0740 D368     		ldr	r3, [r2, #12]
 1444 0742 9360     		str	r3, [r2, #8]
 1445 0744 61F3C71C 		bfi	ip, r1, #7, #1
 1446 0748 8EF801C0 		strb	ip, [lr, #1]
 1447 074c 4661     		str	r6, [r0, #20]
 1448 074e 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1449 0750 DA06     		lsls	r2, r3, #27
 1450 0752 7FF578AF 		bpl	.L244
 1451 0756 4A46     		mov	r2, r9
 1452 0758 2846     		mov	r0, r5
 1453 075a FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1454 075e 69E7     		b	.L243
 1455              	.L250:
 1456 0760 0121     		movs	r1, #1
 1457 0762 4846     		mov	r0, r9
 1458 0764 FFF7FEFF 		bl	udd_ep_in_sent
 1459 0768 0146     		mov	r1, r0
 1460 076a 90B9     		cbnz	r0, .L258
 1461 076c 1423     		movs	r3, #20
 1462 076e 03FB0A88 		mla	r8, r3, r10, r8
 1463 0772 3D4F     		ldr	r7, .L517+8
 1464 0774 98F81100 		ldrb	r0, [r8, #17]	@ zero_extendqisi2
 1465 0778 D8F80C20 		ldr	r2, [r8, #12]
 1466 077c C8F80820 		str	r2, [r8, #8]
 1467 0780 61F3C710 		bfi	r0, r1, #7, #1
 1468 0784 88F81100 		strb	r0, [r8, #17]
 1469 0788 7E61     		str	r6, [r7, #20]
 1470 078a 98F81130 		ldrb	r3, [r8, #17]	@ zero_extendqisi2
 1471 078e D806     		lsls	r0, r3, #27
 1472 0790 60D4     		bmi	.L511
 1473              	.L258:
 1474 0792 236B     		ldr	r3, [r4, #48]
 1475 0794 23F00103 		bic	r3, r3, #1
 1476 0798 43F04E03 		orr	r3, r3, #78
 1477 079c 2363     		str	r3, [r4, #48]
 1478 079e 0A23     		movs	r3, #10
 1479              	.L260:
 1480 07a0 226B     		ldr	r2, [r4, #48]
 1481 07a2 D207     		lsls	r2, r2, #31
 1482 07a4 8DD5     		bpl	.L261
ARM GAS  /tmp/cc6FmY4m.s 			page 27


 1483 07a6 013B     		subs	r3, r3, #1
 1484 07a8 FAD1     		bne	.L260
 1485 07aa 8AE7     		b	.L261
 1486              	.L508:
 1487 07ac 7369     		ldr	r3, [r6, #20]
 1488 07ae 53B3     		cbz	r3, .L512
 1489 07b0 9847     		blx	r3
 1490 07b2 0028     		cmp	r0, #0
 1491 07b4 45D1     		bne	.L210
 1492 07b6 3B6B     		ldr	r3, [r7, #48]
 1493 07b8 2B49     		ldr	r1, .L517+8
 1494 07ba 0522     		movs	r2, #5
 1495 07bc 43F06F03 		orr	r3, r3, #111
 1496 07c0 2A70     		strb	r2, [r5]
 1497 07c2 0A22     		movs	r2, #10
 1498 07c4 3B63     		str	r3, [r7, #48]
 1499 07c6 01E0     		b	.L211
 1500              	.L213:
 1501 07c8 013A     		subs	r2, r2, #1
 1502 07ca 02D0     		beq	.L212
 1503              	.L211:
 1504 07cc 0B6B     		ldr	r3, [r1, #48]
 1505 07ce 9B06     		lsls	r3, r3, #26
 1506 07d0 FAD5     		bpl	.L213
 1507              	.L212:
 1508 07d2 254B     		ldr	r3, .L517+8
 1509 07d4 1A6B     		ldr	r2, [r3, #48]
 1510 07d6 22F00202 		bic	r2, r2, #2
 1511 07da 42F04D02 		orr	r2, r2, #77
 1512 07de 1A63     		str	r2, [r3, #48]
 1513 07e0 0A22     		movs	r2, #10
 1514 07e2 02E0     		b	.L214
 1515              	.L215:
 1516 07e4 013A     		subs	r2, r2, #1
 1517 07e6 3FF438AC 		beq	.L141
 1518              	.L214:
 1519 07ea 196B     		ldr	r1, [r3, #48]
 1520 07ec 8F07     		lsls	r7, r1, #30
 1521 07ee F9D4     		bmi	.L215
 1522 07f0 33E4     		b	.L141
 1523              	.L507:
 1524 07f2 4846     		mov	r0, r9
 1525 07f4 FFF7FEFF 		bl	udd_ep_ack_out_received
 1526 07f8 82E6     		b	.L227
 1527              	.L510:
 1528 07fa 0123     		movs	r3, #1
 1529 07fc 0B70     		strb	r3, [r1]
 1530              		.syntax unified
 1531              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1532 07fe BFF35F8F 		dmb
 1533              	@ 0 "" 2
 1534              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1535 0802 62B6     		cpsie i
 1536              	@ 0 "" 2
 1537              		.thumb
 1538              		.syntax unified
 1539 0804 2EE7     		b	.L246
ARM GAS  /tmp/cc6FmY4m.s 			page 28


 1540              	.L512:
 1541 0806 3B6B     		ldr	r3, [r7, #48]
 1542 0808 1749     		ldr	r1, .L517+8
 1543 080a 0522     		movs	r2, #5
 1544 080c 43F06F03 		orr	r3, r3, #111
 1545 0810 2A70     		strb	r2, [r5]
 1546 0812 0A22     		movs	r2, #10
 1547 0814 3B63     		str	r3, [r7, #48]
 1548 0816 01E0     		b	.L205
 1549              	.L207:
 1550 0818 013A     		subs	r2, r2, #1
 1551 081a 02D0     		beq	.L206
 1552              	.L205:
 1553 081c 0B6B     		ldr	r3, [r1, #48]
 1554 081e 9806     		lsls	r0, r3, #26
 1555 0820 FAD5     		bpl	.L207
 1556              	.L206:
 1557 0822 114B     		ldr	r3, .L517+8
 1558 0824 1A6B     		ldr	r2, [r3, #48]
 1559 0826 22F00202 		bic	r2, r2, #2
 1560 082a 42F04D02 		orr	r2, r2, #77
 1561 082e 1A63     		str	r2, [r3, #48]
 1562 0830 0A22     		movs	r2, #10
 1563 0832 02E0     		b	.L208
 1564              	.L209:
 1565 0834 013A     		subs	r2, r2, #1
 1566 0836 3FF410AC 		beq	.L141
 1567              	.L208:
 1568 083a 196B     		ldr	r1, [r3, #48]
 1569 083c 8907     		lsls	r1, r1, #30
 1570 083e F9D4     		bmi	.L209
 1571 0840 0BE4     		b	.L141
 1572              	.L210:
 1573 0842 B8F80030 		ldrh	r3, [r8]
 1574 0846 2188     		ldrh	r1, [r4]
 1575 0848 0022     		movs	r2, #0
 1576 084a 0B44     		add	r3, r3, r1
 1577 084c A8F80030 		strh	r3, [r8]	@ movhi
 1578 0850 2280     		strh	r2, [r4]	@ movhi
 1579 0852 D4E6     		b	.L203
 1580              	.L511:
 1581 0854 2846     		mov	r0, r5
 1582 0856 4A46     		mov	r2, r9
 1583 0858 FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1584 085c 99E7     		b	.L258
 1585              	.L518:
 1586 085e 00BF     		.align	2
 1587              	.L517:
 1588 0860 00000000 		.word	.LANCHOR3
 1589 0864 00000000 		.word	.LANCHOR2
 1590 0868 00400840 		.word	1074282496
 1591 086c 00000000 		.word	g_interrupt_enabled
 1592              		.size	UDP_Handler, .-UDP_Handler
 1593              		.section	.text.udd_include_vbus_monitoring,"ax",%progbits
 1594              		.align	1
 1595              		.p2align 2,,3
 1596              		.global	udd_include_vbus_monitoring
ARM GAS  /tmp/cc6FmY4m.s 			page 29


 1597              		.syntax unified
 1598              		.thumb
 1599              		.thumb_func
 1600              		.fpu fpv4-sp-d16
 1601              		.type	udd_include_vbus_monitoring, %function
 1602              	udd_include_vbus_monitoring:
 1603              		@ args = 0, pretend = 0, frame = 0
 1604              		@ frame_needed = 0, uses_anonymous_args = 0
 1605              		@ link register save eliminated.
 1606 0000 0020     		movs	r0, #0
 1607 0002 7047     		bx	lr
 1608              		.size	udd_include_vbus_monitoring, .-udd_include_vbus_monitoring
 1609              		.section	.text.udd_disable,"ax",%progbits
 1610              		.align	1
 1611              		.p2align 2,,3
 1612              		.global	udd_disable
 1613              		.syntax unified
 1614              		.thumb
 1615              		.thumb_func
 1616              		.fpu fpv4-sp-d16
 1617              		.type	udd_disable, %function
 1618              	udd_disable:
 1619              		@ args = 0, pretend = 0, frame = 0
 1620              		@ frame_needed = 0, uses_anonymous_args = 0
 1621              		@ link register save eliminated.
 1622              		.syntax unified
 1623              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1624 0000 EFF31082 		MRS r2, primask
 1625              	@ 0 "" 2
 1626              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1627 0004 72B6     		cpsid i
 1628              	@ 0 "" 2
 1629              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1630 0006 BFF35F8F 		dmb
 1631              	@ 0 "" 2
 1632              		.thumb
 1633              		.syntax unified
 1634 000a 0948     		ldr	r0, .L522
 1635 000c 094B     		ldr	r3, .L522+4
 1636 000e 0021     		movs	r1, #0
 1637 0010 0170     		strb	r1, [r0]
 1638 0012 596F     		ldr	r1, [r3, #116]
 1639 0014 41F48071 		orr	r1, r1, #256
 1640 0018 5967     		str	r1, [r3, #116]
 1641 001a 596F     		ldr	r1, [r3, #116]
 1642 001c 21F40071 		bic	r1, r1, #512
 1643 0020 5967     		str	r1, [r3, #116]
 1644 0022 22B9     		cbnz	r2, .L520
 1645 0024 0123     		movs	r3, #1
 1646 0026 0370     		strb	r3, [r0]
 1647              		.syntax unified
 1648              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1649 0028 BFF35F8F 		dmb
 1650              	@ 0 "" 2
 1651              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1652 002c 62B6     		cpsie i
 1653              	@ 0 "" 2
ARM GAS  /tmp/cc6FmY4m.s 			page 30


 1654              		.thumb
 1655              		.syntax unified
 1656              	.L520:
 1657 002e 7047     		bx	lr
 1658              	.L523:
 1659              		.align	2
 1660              	.L522:
 1661 0030 00000000 		.word	g_interrupt_enabled
 1662 0034 00400840 		.word	1074282496
 1663              		.size	udd_disable, .-udd_disable
 1664              		.section	.text.udd_attach,"ax",%progbits
 1665              		.align	1
 1666              		.p2align 2,,3
 1667              		.global	udd_attach
 1668              		.syntax unified
 1669              		.thumb
 1670              		.thumb_func
 1671              		.fpu fpv4-sp-d16
 1672              		.type	udd_attach, %function
 1673              	udd_attach:
 1674              		@ args = 0, pretend = 0, frame = 0
 1675              		@ frame_needed = 0, uses_anonymous_args = 0
 1676 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1677              		.syntax unified
 1678              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1679 0002 EFF31084 		MRS r4, primask
 1680              	@ 0 "" 2
 1681              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1682 0006 72B6     		cpsid i
 1683              	@ 0 "" 2
 1684              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1685 0008 BFF35F8F 		dmb
 1686              	@ 0 "" 2
 1687              		.thumb
 1688              		.syntax unified
 1689 000c 124D     		ldr	r5, .L527
 1690 000e 0023     		movs	r3, #0
 1691 0010 2320     		movs	r0, #35
 1692 0012 2B70     		strb	r3, [r5]
 1693 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1694 0018 104B     		ldr	r3, .L527+4
 1695 001a 5A6F     		ldr	r2, [r3, #116]
 1696 001c 22F48072 		bic	r2, r2, #256
 1697 0020 5A67     		str	r2, [r3, #116]
 1698 0022 5A6F     		ldr	r2, [r3, #116]
 1699 0024 42F40072 		orr	r2, r2, #512
 1700 0028 5A67     		str	r2, [r3, #116]
 1701 002a 4FF48077 		mov	r7, #256
 1702 002e 4FF40056 		mov	r6, #8192
 1703 0032 4FF40070 		mov	r0, #512
 1704 0036 4FF48061 		mov	r1, #1024
 1705 003a 4FF40062 		mov	r2, #2048
 1706 003e 1F61     		str	r7, [r3, #16]
 1707 0040 1E61     		str	r6, [r3, #16]
 1708 0042 1861     		str	r0, [r3, #16]
 1709 0044 1961     		str	r1, [r3, #16]
 1710 0046 1A61     		str	r2, [r3, #16]
ARM GAS  /tmp/cc6FmY4m.s 			page 31


 1711 0048 24B9     		cbnz	r4, .L524
 1712 004a 0123     		movs	r3, #1
 1713 004c 2B70     		strb	r3, [r5]
 1714              		.syntax unified
 1715              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1716 004e BFF35F8F 		dmb
 1717              	@ 0 "" 2
 1718              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1719 0052 62B6     		cpsie i
 1720              	@ 0 "" 2
 1721              		.thumb
 1722              		.syntax unified
 1723              	.L524:
 1724 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1725              	.L528:
 1726 0056 00BF     		.align	2
 1727              	.L527:
 1728 0058 00000000 		.word	g_interrupt_enabled
 1729 005c 00400840 		.word	1074282496
 1730              		.size	udd_attach, .-udd_attach
 1731              		.section	.text.udd_enable,"ax",%progbits
 1732              		.align	1
 1733              		.p2align 2,,3
 1734              		.global	udd_enable
 1735              		.syntax unified
 1736              		.thumb
 1737              		.thumb_func
 1738              		.fpu fpv4-sp-d16
 1739              		.type	udd_enable, %function
 1740              	udd_enable:
 1741              		@ args = 0, pretend = 0, frame = 0
 1742              		@ frame_needed = 0, uses_anonymous_args = 0
 1743 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1744              		.syntax unified
 1745              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1746 0002 EFF31086 		MRS r6, primask
 1747              	@ 0 "" 2
 1748              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1749 0006 72B6     		cpsid i
 1750              	@ 0 "" 2
 1751              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1752 0008 BFF35F8F 		dmb
 1753              	@ 0 "" 2
 1754              		.thumb
 1755              		.syntax unified
 1756 000c 144D     		ldr	r5, .L534
 1757 000e 0024     		movs	r4, #0
 1758 0010 2320     		movs	r0, #35
 1759 0012 2C70     		strb	r4, [r5]
 1760 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1761 0018 FFF7FEFF 		bl	sysclk_enable_usb
 1762 001c 114B     		ldr	r3, .L534+4
 1763 001e 1248     		ldr	r0, .L534+8
 1764 0020 5027     		movs	r7, #80
 1765 0022 0821     		movs	r1, #8
 1766 0024 83F82373 		strb	r7, [r3, #803]
 1767 0028 2246     		mov	r2, r4
ARM GAS  /tmp/cc6FmY4m.s 			page 32


 1768 002a 5960     		str	r1, [r3, #4]
 1769              	.L530:
 1770 002c 02EB8203 		add	r3, r2, r2, lsl #2
 1771 0030 00EB8303 		add	r3, r0, r3, lsl #2
 1772 0034 0132     		adds	r2, r2, #1
 1773 0036 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 1774 0038 01F08301 		and	r1, r1, #131
 1775 003c 6FF3C711 		bfc	r1, #7, #1
 1776 0040 032A     		cmp	r2, #3
 1777 0042 5974     		strb	r1, [r3, #17]
 1778 0044 F2D1     		bne	.L530
 1779 0046 4FF48020 		mov	r0, #262144
 1780 004a FFF7FEFF 		bl	pmc_set_fast_startup_input
 1781 004e FFF7FEFF 		bl	udd_attach
 1782 0052 26B9     		cbnz	r6, .L529
 1783 0054 0123     		movs	r3, #1
 1784 0056 2B70     		strb	r3, [r5]
 1785              		.syntax unified
 1786              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1787 0058 BFF35F8F 		dmb
 1788              	@ 0 "" 2
 1789              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1790 005c 62B6     		cpsie i
 1791              	@ 0 "" 2
 1792              		.thumb
 1793              		.syntax unified
 1794              	.L529:
 1795 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1796              	.L535:
 1797              		.align	2
 1798              	.L534:
 1799 0060 00000000 		.word	g_interrupt_enabled
 1800 0064 00E100E0 		.word	-536813312
 1801 0068 00000000 		.word	.LANCHOR0
 1802              		.size	udd_enable, .-udd_enable
 1803              		.section	.text.udd_detach,"ax",%progbits
 1804              		.align	1
 1805              		.p2align 2,,3
 1806              		.global	udd_detach
 1807              		.syntax unified
 1808              		.thumb
 1809              		.thumb_func
 1810              		.fpu fpv4-sp-d16
 1811              		.type	udd_detach, %function
 1812              	udd_detach:
 1813              		@ args = 0, pretend = 0, frame = 0
 1814              		@ frame_needed = 0, uses_anonymous_args = 0
 1815              		@ link register save eliminated.
 1816 0000 044B     		ldr	r3, .L537
 1817 0002 5A6F     		ldr	r2, [r3, #116]
 1818 0004 42F48072 		orr	r2, r2, #256
 1819 0008 5A67     		str	r2, [r3, #116]
 1820 000a 5A6F     		ldr	r2, [r3, #116]
 1821 000c 22F40072 		bic	r2, r2, #512
 1822 0010 5A67     		str	r2, [r3, #116]
 1823 0012 7047     		bx	lr
 1824              	.L538:
ARM GAS  /tmp/cc6FmY4m.s 			page 33


 1825              		.align	2
 1826              	.L537:
 1827 0014 00400840 		.word	1074282496
 1828              		.size	udd_detach, .-udd_detach
 1829              		.section	.text.udd_is_high_speed,"ax",%progbits
 1830              		.align	1
 1831              		.p2align 2,,3
 1832              		.global	udd_is_high_speed
 1833              		.syntax unified
 1834              		.thumb
 1835              		.thumb_func
 1836              		.fpu fpv4-sp-d16
 1837              		.type	udd_is_high_speed, %function
 1838              	udd_is_high_speed:
 1839              		@ args = 0, pretend = 0, frame = 0
 1840              		@ frame_needed = 0, uses_anonymous_args = 0
 1841              		@ link register save eliminated.
 1842 0000 0020     		movs	r0, #0
 1843 0002 7047     		bx	lr
 1844              		.size	udd_is_high_speed, .-udd_is_high_speed
 1845              		.section	.text.udd_set_address,"ax",%progbits
 1846              		.align	1
 1847              		.p2align 2,,3
 1848              		.global	udd_set_address
 1849              		.syntax unified
 1850              		.thumb
 1851              		.thumb_func
 1852              		.fpu fpv4-sp-d16
 1853              		.type	udd_set_address, %function
 1854              	udd_set_address:
 1855              		@ args = 0, pretend = 0, frame = 0
 1856              		@ frame_needed = 0, uses_anonymous_args = 0
 1857              		@ link register save eliminated.
 1858 0000 0C4B     		ldr	r3, .L545
 1859 0002 5A68     		ldr	r2, [r3, #4]
 1860 0004 22F00102 		bic	r2, r2, #1
 1861 0008 5A60     		str	r2, [r3, #4]
 1862 000a 9A68     		ldr	r2, [r3, #8]
 1863 000c 22F48072 		bic	r2, r2, #256
 1864 0010 9A60     		str	r2, [r3, #8]
 1865 0012 70B1     		cbz	r0, .L540
 1866 0014 9A68     		ldr	r2, [r3, #8]
 1867 0016 00F07F00 		and	r0, r0, #127
 1868 001a 22F07F02 		bic	r2, r2, #127
 1869 001e 1043     		orrs	r0, r0, r2
 1870 0020 9860     		str	r0, [r3, #8]
 1871 0022 9A68     		ldr	r2, [r3, #8]
 1872 0024 42F48072 		orr	r2, r2, #256
 1873 0028 9A60     		str	r2, [r3, #8]
 1874 002a 5A68     		ldr	r2, [r3, #4]
 1875 002c 42F00102 		orr	r2, r2, #1
 1876 0030 5A60     		str	r2, [r3, #4]
 1877              	.L540:
 1878 0032 7047     		bx	lr
 1879              	.L546:
 1880              		.align	2
 1881              	.L545:
ARM GAS  /tmp/cc6FmY4m.s 			page 34


 1882 0034 00400840 		.word	1074282496
 1883              		.size	udd_set_address, .-udd_set_address
 1884              		.section	.text.udd_getaddress,"ax",%progbits
 1885              		.align	1
 1886              		.p2align 2,,3
 1887              		.global	udd_getaddress
 1888              		.syntax unified
 1889              		.thumb
 1890              		.thumb_func
 1891              		.fpu fpv4-sp-d16
 1892              		.type	udd_getaddress, %function
 1893              	udd_getaddress:
 1894              		@ args = 0, pretend = 0, frame = 0
 1895              		@ frame_needed = 0, uses_anonymous_args = 0
 1896              		@ link register save eliminated.
 1897 0000 044B     		ldr	r3, .L550
 1898 0002 5868     		ldr	r0, [r3, #4]
 1899 0004 10F00100 		ands	r0, r0, #1
 1900 0008 1CBF     		itt	ne
 1901 000a 9868     		ldrne	r0, [r3, #8]
 1902 000c 00F07F00 		andne	r0, r0, #127
 1903 0010 7047     		bx	lr
 1904              	.L551:
 1905 0012 00BF     		.align	2
 1906              	.L550:
 1907 0014 00400840 		.word	1074282496
 1908              		.size	udd_getaddress, .-udd_getaddress
 1909              		.section	.text.udd_get_frame_number,"ax",%progbits
 1910              		.align	1
 1911              		.p2align 2,,3
 1912              		.global	udd_get_frame_number
 1913              		.syntax unified
 1914              		.thumb
 1915              		.thumb_func
 1916              		.fpu fpv4-sp-d16
 1917              		.type	udd_get_frame_number, %function
 1918              	udd_get_frame_number:
 1919              		@ args = 0, pretend = 0, frame = 0
 1920              		@ frame_needed = 0, uses_anonymous_args = 0
 1921              		@ link register save eliminated.
 1922 0000 024B     		ldr	r3, .L553
 1923 0002 1868     		ldr	r0, [r3]
 1924 0004 C0F30A00 		ubfx	r0, r0, #0, #11
 1925 0008 7047     		bx	lr
 1926              	.L554:
 1927 000a 00BF     		.align	2
 1928              	.L553:
 1929 000c 00400840 		.word	1074282496
 1930              		.size	udd_get_frame_number, .-udd_get_frame_number
 1931              		.section	.text.udd_get_micro_frame_number,"ax",%progbits
 1932              		.align	1
 1933              		.p2align 2,,3
 1934              		.global	udd_get_micro_frame_number
 1935              		.syntax unified
 1936              		.thumb
 1937              		.thumb_func
 1938              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc6FmY4m.s 			page 35


 1939              		.type	udd_get_micro_frame_number, %function
 1940              	udd_get_micro_frame_number:
 1941              		@ args = 0, pretend = 0, frame = 0
 1942              		@ frame_needed = 0, uses_anonymous_args = 0
 1943              		@ link register save eliminated.
 1944 0000 0020     		movs	r0, #0
 1945 0002 7047     		bx	lr
 1946              		.size	udd_get_micro_frame_number, .-udd_get_micro_frame_number
 1947              		.section	.text.udd_send_remotewakeup,"ax",%progbits
 1948              		.align	1
 1949              		.p2align 2,,3
 1950              		.global	udd_send_remotewakeup
 1951              		.syntax unified
 1952              		.thumb
 1953              		.thumb_func
 1954              		.fpu fpv4-sp-d16
 1955              		.type	udd_send_remotewakeup, %function
 1956              	udd_send_remotewakeup:
 1957              		@ args = 0, pretend = 0, frame = 0
 1958              		@ frame_needed = 0, uses_anonymous_args = 0
 1959 0000 08B5     		push	{r3, lr}
 1960 0002 2320     		movs	r0, #35
 1961 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 1962 0008 044B     		ldr	r3, .L558
 1963 000a 5A68     		ldr	r2, [r3, #4]
 1964 000c 42F00402 		orr	r2, r2, #4
 1965 0010 5A60     		str	r2, [r3, #4]
 1966 0012 5A68     		ldr	r2, [r3, #4]
 1967 0014 22F00402 		bic	r2, r2, #4
 1968 0018 5A60     		str	r2, [r3, #4]
 1969 001a 08BD     		pop	{r3, pc}
 1970              	.L559:
 1971              		.align	2
 1972              	.L558:
 1973 001c 00400840 		.word	1074282496
 1974              		.size	udd_send_remotewakeup, .-udd_send_remotewakeup
 1975              		.section	.text.udd_set_setup_payload,"ax",%progbits
 1976              		.align	1
 1977              		.p2align 2,,3
 1978              		.global	udd_set_setup_payload
 1979              		.syntax unified
 1980              		.thumb
 1981              		.thumb_func
 1982              		.fpu fpv4-sp-d16
 1983              		.type	udd_set_setup_payload, %function
 1984              	udd_set_setup_payload:
 1985              		@ args = 0, pretend = 0, frame = 0
 1986              		@ frame_needed = 0, uses_anonymous_args = 0
 1987              		@ link register save eliminated.
 1988 0000 014B     		ldr	r3, .L561
 1989 0002 9860     		str	r0, [r3, #8]
 1990 0004 9981     		strh	r1, [r3, #12]	@ movhi
 1991 0006 7047     		bx	lr
 1992              	.L562:
 1993              		.align	2
 1994              	.L561:
 1995 0008 00000000 		.word	udd_g_ctrlreq
ARM GAS  /tmp/cc6FmY4m.s 			page 36


 1996              		.size	udd_set_setup_payload, .-udd_set_setup_payload
 1997              		.section	.text.udd_ep_alloc,"ax",%progbits
 1998              		.align	1
 1999              		.p2align 2,,3
 2000              		.global	udd_ep_alloc
 2001              		.syntax unified
 2002              		.thumb
 2003              		.thumb_func
 2004              		.fpu fpv4-sp-d16
 2005              		.type	udd_ep_alloc, %function
 2006              	udd_ep_alloc:
 2007              		@ args = 0, pretend = 0, frame = 0
 2008              		@ frame_needed = 0, uses_anonymous_args = 0
 2009              		@ link register save eliminated.
 2010 0000 F0B4     		push	{r4, r5, r6, r7}
 2011 0002 00F00F04 		and	r4, r0, #15
 2012 0006 032C     		cmp	r4, #3
 2013 0008 4ED8     		bhi	.L576
 2014 000a A300     		lsls	r3, r4, #2
 2015 000c 03F14023 		add	r3, r3, #1073758208
 2016 0010 03F50023 		add	r3, r3, #524288
 2017 0014 1D6B     		ldr	r5, [r3, #48]
 2018 0016 15F40045 		ands	r5, r5, #32768
 2019 001a 45D1     		bne	.L576
 2020 001c 01F00306 		and	r6, r1, #3
 2021 0020 012E     		cmp	r6, #1
 2022 0022 3ED0     		beq	.L582
 2023              	.L565:
 2024 0024 402A     		cmp	r2, #64
 2025 0026 3FDC     		bgt	.L576
 2026 0028 651E     		subs	r5, r4, #1
 2027 002a 234E     		ldr	r6, .L584
 2028 002c 05EB8505 		add	r5, r5, r5, lsl #2
 2029 0030 06EB8505 		add	r5, r6, r5, lsl #2
 2030 0034 40B2     		sxtb	r0, r0
 2031 0036 2F8A     		ldrh	r7, [r5, #16]
 2032 0038 62F30907 		bfi	r7, r2, #0, #10
 2033 003c 2F82     		strh	r7, [r5, #16]	@ movhi
 2034 003e 6A7C     		ldrb	r2, [r5, #17]	@ zero_extendqisi2
 2035 0040 02F07F02 		and	r2, r2, #127
 2036 0044 6FF34512 		bfc	r2, #5, #1
 2037 0048 0028     		cmp	r0, #0
 2038 004a 6A74     		strb	r2, [r5, #17]
 2039 004c 2FDB     		blt	.L583
 2040              	.L566:
 2041 004e 1B4D     		ldr	r5, .L584+4
 2042 0050 0122     		movs	r2, #1
 2043 0052 AE6A     		ldr	r6, [r5, #40]
 2044 0054 02FA04F4 		lsl	r4, r2, r4
 2045 0058 2643     		orrs	r6, r6, r4
 2046 005a AE62     		str	r6, [r5, #40]
 2047              	.L567:
 2048 005c AA6A     		ldr	r2, [r5, #40]
 2049 005e 1442     		tst	r4, r2
 2050 0060 FCD0     		beq	.L567
 2051 0062 AA6A     		ldr	r2, [r5, #40]
 2052 0064 22EA0404 		bic	r4, r2, r4
ARM GAS  /tmp/cc6FmY4m.s 			page 37


 2053 0068 AC62     		str	r4, [r5, #40]
 2054 006a 0A02     		lsls	r2, r1, #8
 2055 006c 196B     		ldr	r1, [r3, #48]
 2056 006e 41F04F01 		orr	r1, r1, #79
 2057 0072 02F44072 		and	r2, r2, #768
 2058 0076 0028     		cmp	r0, #0
 2059 0078 21F40741 		bic	r1, r1, #34560
 2060 007c B4BF     		ite	lt
 2061 007e 42F40442 		orrlt	r2, r2, #33792
 2062 0082 42F40042 		orrge	r2, r2, #32768
 2063 0086 21F08001 		bic	r1, r1, #128
 2064 008a 1143     		orrs	r1, r1, r2
 2065 008c 1963     		str	r1, [r3, #48]
 2066 008e 0A21     		movs	r1, #10
 2067              	.L570:
 2068 0090 186B     		ldr	r0, [r3, #48]
 2069 0092 32EA0000 		bics	r0, r2, r0
 2070 0096 01D0     		beq	.L577
 2071 0098 0139     		subs	r1, r1, #1
 2072 009a F9D1     		bne	.L570
 2073              	.L577:
 2074 009c 0120     		movs	r0, #1
 2075 009e F0BC     		pop	{r4, r5, r6, r7}
 2076 00a0 7047     		bx	lr
 2077              	.L582:
 2078 00a2 0CB1     		cbz	r4, .L576
 2079 00a4 032C     		cmp	r4, #3
 2080 00a6 BDD1     		bne	.L565
 2081              	.L576:
 2082 00a8 0020     		movs	r0, #0
 2083 00aa F0BC     		pop	{r4, r5, r6, r7}
 2084 00ac 7047     		bx	lr
 2085              	.L583:
 2086 00ae D2B2     		uxtb	r2, r2
 2087 00b0 6FF38302 		bfc	r2, #2, #2
 2088 00b4 6A74     		strb	r2, [r5, #17]
 2089 00b6 CAE7     		b	.L566
 2090              	.L585:
 2091              		.align	2
 2092              	.L584:
 2093 00b8 00000000 		.word	.LANCHOR0
 2094 00bc 00400840 		.word	1074282496
 2095              		.size	udd_ep_alloc, .-udd_ep_alloc
 2096              		.section	.text.udd_ep_free,"ax",%progbits
 2097              		.align	1
 2098              		.p2align 2,,3
 2099              		.global	udd_ep_free
 2100              		.syntax unified
 2101              		.thumb
 2102              		.thumb_func
 2103              		.fpu fpv4-sp-d16
 2104              		.type	udd_ep_free, %function
 2105              	udd_ep_free:
 2106              		@ args = 0, pretend = 0, frame = 0
 2107              		@ frame_needed = 0, uses_anonymous_args = 0
 2108              		@ link register save eliminated.
 2109 0000 00F00F02 		and	r2, r0, #15
ARM GAS  /tmp/cc6FmY4m.s 			page 38


 2110 0004 032A     		cmp	r2, #3
 2111 0006 12D8     		bhi	.L586
 2112 0008 9200     		lsls	r2, r2, #2
 2113 000a 02F14022 		add	r2, r2, #1073758208
 2114 000e 02F50022 		add	r2, r2, #524288
 2115 0012 0A23     		movs	r3, #10
 2116 0014 116B     		ldr	r1, [r2, #48]
 2117 0016 21F40041 		bic	r1, r1, #32768
 2118 001a 41F04F01 		orr	r1, r1, #79
 2119 001e 1163     		str	r1, [r2, #48]
 2120              	.L588:
 2121 0020 116B     		ldr	r1, [r2, #48]
 2122 0022 0904     		lsls	r1, r1, #16
 2123 0024 01D5     		bpl	.L589
 2124 0026 013B     		subs	r3, r3, #1
 2125 0028 FAD1     		bne	.L588
 2126              	.L589:
 2127 002a FFF7FEBF 		b	udd_ep_abort_job
 2128              	.L586:
 2129 002e 7047     		bx	lr
 2130              		.size	udd_ep_free, .-udd_ep_free
 2131              		.section	.text.udd_ep_is_halted,"ax",%progbits
 2132              		.align	1
 2133              		.p2align 2,,3
 2134              		.global	udd_ep_is_halted
 2135              		.syntax unified
 2136              		.thumb
 2137              		.thumb_func
 2138              		.fpu fpv4-sp-d16
 2139              		.type	udd_ep_is_halted, %function
 2140              	udd_ep_is_halted:
 2141              		@ args = 0, pretend = 0, frame = 0
 2142              		@ frame_needed = 0, uses_anonymous_args = 0
 2143              		@ link register save eliminated.
 2144 0000 00F00F00 		and	r0, r0, #15
 2145 0004 0328     		cmp	r0, #3
 2146 0006 14D8     		bhi	.L598
 2147 0008 431E     		subs	r3, r0, #1
 2148 000a 0B4A     		ldr	r2, .L601
 2149 000c 03EB8303 		add	r3, r3, r3, lsl #2
 2150 0010 02EB8303 		add	r3, r2, r3, lsl #2
 2151 0014 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2152 0016 9B06     		lsls	r3, r3, #26
 2153 0018 01D5     		bpl	.L600
 2154 001a 0120     		movs	r0, #1
 2155 001c 7047     		bx	lr
 2156              	.L600:
 2157 001e 0C30     		adds	r0, r0, #12
 2158 0020 064B     		ldr	r3, .L601+4
 2159 0022 53F82030 		ldr	r3, [r3, r0, lsl #2]
 2160 0026 13F0280F 		tst	r3, #40
 2161 002a 14BF     		ite	ne
 2162 002c 0120     		movne	r0, #1
 2163 002e 0020     		moveq	r0, #0
 2164 0030 7047     		bx	lr
 2165              	.L598:
 2166 0032 0020     		movs	r0, #0
ARM GAS  /tmp/cc6FmY4m.s 			page 39


 2167 0034 7047     		bx	lr
 2168              	.L602:
 2169 0036 00BF     		.align	2
 2170              	.L601:
 2171 0038 00000000 		.word	.LANCHOR0
 2172 003c 00400840 		.word	1074282496
 2173              		.size	udd_ep_is_halted, .-udd_ep_is_halted
 2174              		.section	.text.udd_ep_set_halt,"ax",%progbits
 2175              		.align	1
 2176              		.p2align 2,,3
 2177              		.global	udd_ep_set_halt
 2178              		.syntax unified
 2179              		.thumb
 2180              		.thumb_func
 2181              		.fpu fpv4-sp-d16
 2182              		.type	udd_ep_set_halt, %function
 2183              	udd_ep_set_halt:
 2184              		@ args = 0, pretend = 0, frame = 0
 2185              		@ frame_needed = 0, uses_anonymous_args = 0
 2186              		@ link register save eliminated.
 2187 0000 70B4     		push	{r4, r5, r6}
 2188 0002 00F00F04 		and	r4, r0, #15
 2189 0006 032C     		cmp	r4, #3
 2190 0008 21D8     		bhi	.L612
 2191              		.syntax unified
 2192              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2193 000a EFF31086 		MRS r6, primask
 2194              	@ 0 "" 2
 2195              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2196 000e 72B6     		cpsid i
 2197              	@ 0 "" 2
 2198              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2199 0010 BFF35F8F 		dmb
 2200              	@ 0 "" 2
 2201              		.thumb
 2202              		.syntax unified
 2203 0014 244D     		ldr	r5, .L622
 2204 0016 0023     		movs	r3, #0
 2205 0018 0206     		lsls	r2, r0, #24
 2206 001a 2B70     		strb	r3, [r5]
 2207 001c 1AD4     		bmi	.L621
 2208              	.L605:
 2209 001e A200     		lsls	r2, r4, #2
 2210 0020 02F14022 		add	r2, r2, #1073758208
 2211 0024 02F50022 		add	r2, r2, #524288
 2212 0028 0A23     		movs	r3, #10
 2213 002a 116B     		ldr	r1, [r2, #48]
 2214 002c 41F06F01 		orr	r1, r1, #111
 2215 0030 1163     		str	r1, [r2, #48]
 2216              	.L608:
 2217 0032 116B     		ldr	r1, [r2, #48]
 2218 0034 8906     		lsls	r1, r1, #26
 2219 0036 01D4     		bmi	.L609
 2220 0038 013B     		subs	r3, r3, #1
 2221 003a FAD1     		bne	.L608
 2222              	.L609:
 2223 003c 0120     		movs	r0, #1
ARM GAS  /tmp/cc6FmY4m.s 			page 40


 2224 003e 1B4B     		ldr	r3, .L622+4
 2225 0040 00FA04F4 		lsl	r4, r0, r4
 2226 0044 1C61     		str	r4, [r3, #16]
 2227 0046 EEB1     		cbz	r6, .L620
 2228              	.L611:
 2229 0048 0120     		movs	r0, #1
 2230 004a 70BC     		pop	{r4, r5, r6}
 2231 004c 7047     		bx	lr
 2232              	.L612:
 2233 004e 0020     		movs	r0, #0
 2234 0050 70BC     		pop	{r4, r5, r6}
 2235 0052 7047     		bx	lr
 2236              	.L621:
 2237 0054 154B     		ldr	r3, .L622+4
 2238 0056 04F10C01 		add	r1, r4, #12
 2239 005a 601E     		subs	r0, r4, #1
 2240 005c 53F82130 		ldr	r3, [r3, r1, lsl #2]
 2241 0060 DB06     		lsls	r3, r3, #27
 2242 0062 15D5     		bpl	.L618
 2243 0064 124B     		ldr	r3, .L622+8
 2244 0066 8200     		lsls	r2, r0, #2
 2245              	.L606:
 2246 0068 0244     		add	r2, r2, r0
 2247 006a 03EB8203 		add	r3, r3, r2, lsl #2
 2248 006e 0120     		movs	r0, #1
 2249 0070 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2250 0072 0E49     		ldr	r1, .L622+4
 2251 0074 42F02002 		orr	r2, r2, #32
 2252 0078 00FA04F4 		lsl	r4, r0, r4
 2253 007c 5A74     		strb	r2, [r3, #17]
 2254 007e 0C61     		str	r4, [r1, #16]
 2255 0080 002E     		cmp	r6, #0
 2256 0082 E1D1     		bne	.L611
 2257              	.L620:
 2258 0084 2870     		strb	r0, [r5]
 2259              		.syntax unified
 2260              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2261 0086 BFF35F8F 		dmb
 2262              	@ 0 "" 2
 2263              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2264 008a 62B6     		cpsie i
 2265              	@ 0 "" 2
 2266              		.thumb
 2267              		.syntax unified
 2268 008c 70BC     		pop	{r4, r5, r6}
 2269 008e 7047     		bx	lr
 2270              	.L618:
 2271 0090 8200     		lsls	r2, r0, #2
 2272 0092 074B     		ldr	r3, .L622+8
 2273 0094 1118     		adds	r1, r2, r0
 2274 0096 03EB8101 		add	r1, r3, r1, lsl #2
 2275 009a 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 2276 009c C1F38101 		ubfx	r1, r1, #2, #2
 2277 00a0 0129     		cmp	r1, #1
 2278 00a2 E1DC     		bgt	.L606
 2279 00a4 BBE7     		b	.L605
 2280              	.L623:
ARM GAS  /tmp/cc6FmY4m.s 			page 41


 2281 00a6 00BF     		.align	2
 2282              	.L622:
 2283 00a8 00000000 		.word	g_interrupt_enabled
 2284 00ac 00400840 		.word	1074282496
 2285 00b0 00000000 		.word	.LANCHOR0
 2286              		.size	udd_ep_set_halt, .-udd_ep_set_halt
 2287              		.section	.text.udd_ep_clear_halt,"ax",%progbits
 2288              		.align	1
 2289              		.p2align 2,,3
 2290              		.global	udd_ep_clear_halt
 2291              		.syntax unified
 2292              		.thumb
 2293              		.thumb_func
 2294              		.fpu fpv4-sp-d16
 2295              		.type	udd_ep_clear_halt, %function
 2296              	udd_ep_clear_halt:
 2297              		@ args = 0, pretend = 0, frame = 0
 2298              		@ frame_needed = 0, uses_anonymous_args = 0
 2299 0000 00F00F00 		and	r0, r0, #15
 2300 0004 0328     		cmp	r0, #3
 2301 0006 40D8     		bhi	.L635
 2302 0008 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2303 000a 451E     		subs	r5, r0, #1
 2304 000c AC00     		lsls	r4, r5, #2
 2305 000e 234E     		ldr	r6, .L655
 2306 0010 6219     		adds	r2, r4, r5
 2307 0012 8300     		lsls	r3, r0, #2
 2308 0014 06EB8202 		add	r2, r6, r2, lsl #2
 2309 0018 03F14023 		add	r3, r3, #1073758208
 2310 001c 03F50023 		add	r3, r3, #524288
 2311 0020 517C     		ldrb	r1, [r2, #17]	@ zero_extendqisi2
 2312 0022 1F6B     		ldr	r7, [r3, #48]
 2313 0024 6FF34511 		bfc	r1, #5, #1
 2314 0028 5174     		strb	r1, [r2, #17]
 2315 002a BA06     		lsls	r2, r7, #26
 2316 002c 2BD5     		bpl	.L653
 2317 002e 1A6B     		ldr	r2, [r3, #48]
 2318 0030 22F02002 		bic	r2, r2, #32
 2319 0034 42F04F02 		orr	r2, r2, #79
 2320 0038 1A63     		str	r2, [r3, #48]
 2321 003a 0A22     		movs	r2, #10
 2322              	.L627:
 2323 003c 196B     		ldr	r1, [r3, #48]
 2324 003e 8F06     		lsls	r7, r1, #26
 2325 0040 01D5     		bpl	.L628
 2326 0042 013A     		subs	r2, r2, #1
 2327 0044 FAD1     		bne	.L627
 2328              	.L628:
 2329 0046 1649     		ldr	r1, .L655+4
 2330 0048 0122     		movs	r2, #1
 2331 004a 8F6A     		ldr	r7, [r1, #40]
 2332 004c 02FA00F0 		lsl	r0, r2, r0
 2333 0050 0743     		orrs	r7, r7, r0
 2334 0052 8F62     		str	r7, [r1, #40]
 2335              	.L630:
 2336 0054 8A6A     		ldr	r2, [r1, #40]
 2337 0056 1042     		tst	r0, r2
ARM GAS  /tmp/cc6FmY4m.s 			page 42


 2338 0058 FCD0     		beq	.L630
 2339 005a 8A6A     		ldr	r2, [r1, #40]
 2340 005c 22EA0000 		bic	r0, r2, r0
 2341 0060 8862     		str	r0, [r1, #40]
 2342 0062 1A6B     		ldr	r2, [r3, #48]
 2343 0064 22F00802 		bic	r2, r2, #8
 2344 0068 42F04702 		orr	r2, r2, #71
 2345 006c 1A63     		str	r2, [r3, #48]
 2346 006e 0A22     		movs	r2, #10
 2347              	.L631:
 2348 0070 196B     		ldr	r1, [r3, #48]
 2349 0072 0807     		lsls	r0, r1, #28
 2350 0074 01D5     		bpl	.L632
 2351 0076 013A     		subs	r2, r2, #1
 2352 0078 FAD1     		bne	.L631
 2353              	.L632:
 2354 007a 2C44     		add	r4, r4, r5
 2355 007c A400     		lsls	r4, r4, #2
 2356 007e 3319     		adds	r3, r6, r4
 2357 0080 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2358 0082 D106     		lsls	r1, r2, #27
 2359 0084 03D4     		bmi	.L654
 2360              	.L653:
 2361 0086 0120     		movs	r0, #1
 2362 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2363              	.L635:
 2364 008a 0020     		movs	r0, #0
 2365 008c 7047     		bx	lr
 2366              	.L654:
 2367 008e 6FF30412 		bfc	r2, #4, #1
 2368 0092 3159     		ldr	r1, [r6, r4]
 2369 0094 5A74     		strb	r2, [r3, #17]
 2370 0096 8847     		blx	r1
 2371 0098 0120     		movs	r0, #1
 2372 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2373              	.L656:
 2374              		.align	2
 2375              	.L655:
 2376 009c 00000000 		.word	.LANCHOR0
 2377 00a0 00400840 		.word	1074282496
 2378              		.size	udd_ep_clear_halt, .-udd_ep_clear_halt
 2379              		.section	.text.udd_ep_run,"ax",%progbits
 2380              		.align	1
 2381              		.p2align 2,,3
 2382              		.global	udd_ep_run
 2383              		.syntax unified
 2384              		.thumb
 2385              		.thumb_func
 2386              		.fpu fpv4-sp-d16
 2387              		.type	udd_ep_run, %function
 2388              	udd_ep_run:
 2389              		@ args = 4, pretend = 0, frame = 0
 2390              		@ frame_needed = 0, uses_anonymous_args = 0
 2391 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2392 0004 00F00F07 		and	r7, r0, #15
 2393 0008 032F     		cmp	r7, #3
 2394 000a 28D8     		bhi	.L660
ARM GAS  /tmp/cc6FmY4m.s 			page 43


 2395 000c BC00     		lsls	r4, r7, #2
 2396 000e 04F14024 		add	r4, r4, #1073758208
 2397 0012 04F50024 		add	r4, r4, #524288
 2398 0016 256B     		ldr	r5, [r4, #48]
 2399 0018 2E04     		lsls	r6, r5, #16
 2400 001a 20D5     		bpl	.L660
 2401 001c 07F1FF3C 		add	ip, r7, #-1
 2402 0020 4FEA8C09 		lsl	r9, ip, #2
 2403 0024 DFF8FCE0 		ldr	lr, .L680+4
 2404 0028 09EB0C06 		add	r6, r9, ip
 2405 002c 0EEB8606 		add	r6, lr, r6, lsl #2
 2406 0030 757C     		ldrb	r5, [r6, #17]	@ zero_extendqisi2
 2407 0032 AD06     		lsls	r5, r5, #26
 2408 0034 13D4     		bmi	.L660
 2409 0036 256B     		ldr	r5, [r4, #48]
 2410 0038 15F0200A 		ands	r10, r5, #32
 2411 003c 0FD1     		bne	.L660
 2412              		.syntax unified
 2413              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2414 003e EFF31085 		MRS r5, primask
 2415              	@ 0 "" 2
 2416              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2417 0042 72B6     		cpsid i
 2418              	@ 0 "" 2
 2419              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2420 0044 BFF35F8F 		dmb
 2421              	@ 0 "" 2
 2422              		.thumb
 2423              		.syntax unified
 2424 0048 96F811B0 		ldrb	fp, [r6, #17]	@ zero_extendqisi2
 2425 004c DFF8D880 		ldr	r8, .L680+8
 2426 0050 1BF0100F 		tst	fp, #16
 2427 0054 88F800A0 		strb	r10, [r8]
 2428 0058 04D0     		beq	.L661
 2429 005a 002D     		cmp	r5, #0
 2430 005c 48D0     		beq	.L675
 2431              	.L660:
 2432 005e 0020     		movs	r0, #0
 2433 0060 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2434              	.L661:
 2435 0064 96F811A0 		ldrb	r10, [r6, #17]	@ zero_extendqisi2
 2436 0068 4AF0100A 		orr	r10, r10, #16
 2437 006c 86F811A0 		strb	r10, [r6, #17]
 2438 0070 BDB3     		cbz	r5, .L676
 2439              	.L662:
 2440 0072 09EB0C05 		add	r5, r9, ip
 2441 0076 AD00     		lsls	r5, r5, #2
 2442 0078 0EEB050A 		add	r10, lr, r5
 2443 007c 0A9E     		ldr	r6, [sp, #40]
 2444 007e 4EF80560 		str	r6, [lr, r5]
 2445 0082 0025     		movs	r5, #0
 2446 0084 CAF80420 		str	r2, [r10, #4]
 2447 0088 CAF80830 		str	r3, [r10, #8]
 2448 008c CAF80C50 		str	r5, [r10, #12]
 2449 0090 E1B1     		cbz	r1, .L677
 2450              	.L663:
 2451 0092 09EB0C03 		add	r3, r9, ip
ARM GAS  /tmp/cc6FmY4m.s 			page 44


 2452 0096 0EEB8303 		add	r3, lr, r3, lsl #2
 2453 009a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2454 009c 61F38612 		bfi	r2, r1, #6, #1
 2455 00a0 6FF3C712 		bfc	r2, #7, #1
 2456 00a4 5A74     		strb	r2, [r3, #17]
 2457              		.syntax unified
 2458              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2459 00a6 EFF31085 		MRS r5, primask
 2460              	@ 0 "" 2
 2461              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2462 00aa 72B6     		cpsid i
 2463              	@ 0 "" 2
 2464              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2465 00ac BFF35F8F 		dmb
 2466              	@ 0 "" 2
 2467              		.thumb
 2468              		.syntax unified
 2469 00b0 1B4B     		ldr	r3, .L680
 2470 00b2 0121     		movs	r1, #1
 2471 00b4 0026     		movs	r6, #0
 2472 00b6 01FA07F2 		lsl	r2, r1, r7
 2473 00ba 88F80060 		strb	r6, [r8]
 2474 00be 1A61     		str	r2, [r3, #16]
 2475 00c0 0306     		lsls	r3, r0, #24
 2476 00c2 1ED4     		bmi	.L678
 2477              	.L665:
 2478 00c4 0120     		movs	r0, #1
 2479 00c6 2DB1     		cbz	r5, .L679
 2480 00c8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2481              	.L677:
 2482 00cc B3FA83F1 		clz	r1, r3
 2483 00d0 4909     		lsrs	r1, r1, #5
 2484 00d2 DEE7     		b	.L663
 2485              	.L679:
 2486 00d4 88F80000 		strb	r0, [r8]
 2487              		.syntax unified
 2488              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2489 00d8 BFF35F8F 		dmb
 2490              	@ 0 "" 2
 2491              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2492 00dc 62B6     		cpsie i
 2493              	@ 0 "" 2
 2494              		.thumb
 2495              		.syntax unified
 2496 00de BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2497              	.L676:
 2498 00e2 0125     		movs	r5, #1
 2499 00e4 88F80050 		strb	r5, [r8]
 2500              		.syntax unified
 2501              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2502 00e8 BFF35F8F 		dmb
 2503              	@ 0 "" 2
 2504              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2505 00ec 62B6     		cpsie i
 2506              	@ 0 "" 2
 2507              		.thumb
 2508              		.syntax unified
ARM GAS  /tmp/cc6FmY4m.s 			page 45


 2509 00ee C0E7     		b	.L662
 2510              	.L675:
 2511 00f0 0123     		movs	r3, #1
 2512 00f2 88F80030 		strb	r3, [r8]
 2513              		.syntax unified
 2514              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2515 00f6 BFF35F8F 		dmb
 2516              	@ 0 "" 2
 2517              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2518 00fa 62B6     		cpsie i
 2519              	@ 0 "" 2
 2520              		.thumb
 2521              		.syntax unified
 2522 00fc 2846     		mov	r0, r5
 2523 00fe BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2524              	.L678:
 2525 0102 246B     		ldr	r4, [r4, #48]
 2526 0104 14F01104 		ands	r4, r4, #17
 2527 0108 DCD1     		bne	.L665
 2528 010a 3846     		mov	r0, r7
 2529 010c FFF7FEFF 		bl	udd_ep_in_sent
 2530 0110 0028     		cmp	r0, #0
 2531 0112 D7D0     		beq	.L665
 2532 0114 2146     		mov	r1, r4
 2533 0116 3846     		mov	r0, r7
 2534 0118 FFF7FEFF 		bl	udd_ep_in_sent
 2535 011c D2E7     		b	.L665
 2536              	.L681:
 2537 011e 00BF     		.align	2
 2538              	.L680:
 2539 0120 00400840 		.word	1074282496
 2540 0124 00000000 		.word	.LANCHOR0
 2541 0128 00000000 		.word	g_interrupt_enabled
 2542              		.size	udd_ep_run, .-udd_ep_run
 2543              		.section	.text.udd_ep_abort,"ax",%progbits
 2544              		.align	1
 2545              		.p2align 2,,3
 2546              		.global	udd_ep_abort
 2547              		.syntax unified
 2548              		.thumb
 2549              		.thumb_func
 2550              		.fpu fpv4-sp-d16
 2551              		.type	udd_ep_abort, %function
 2552              	udd_ep_abort:
 2553              		@ args = 0, pretend = 0, frame = 0
 2554              		@ frame_needed = 0, uses_anonymous_args = 0
 2555 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2556 0002 00F00F05 		and	r5, r0, #15
 2557 0006 032D     		cmp	r5, #3
 2558 0008 2FD8     		bhi	.L682
 2559              		.syntax unified
 2560              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2561 000a EFF31083 		MRS r3, primask
 2562              	@ 0 "" 2
 2563              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2564 000e 72B6     		cpsid i
 2565              	@ 0 "" 2
ARM GAS  /tmp/cc6FmY4m.s 			page 46


 2566              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2567 0010 BFF35F8F 		dmb
 2568              	@ 0 "" 2
 2569              		.thumb
 2570              		.syntax unified
 2571 0014 0121     		movs	r1, #1
 2572 0016 3D4A     		ldr	r2, .L734
 2573 0018 3D4E     		ldr	r6, .L734+4
 2574 001a 01FA05F4 		lsl	r4, r1, r5
 2575 001e 0027     		movs	r7, #0
 2576 0020 1770     		strb	r7, [r2]
 2577 0022 7461     		str	r4, [r6, #20]
 2578 0024 13B3     		cbz	r3, .L732
 2579 0026 0606     		lsls	r6, r0, #24
 2580 0028 26D4     		bmi	.L685
 2581              	.L733:
 2582 002a AE00     		lsls	r6, r5, #2
 2583 002c 06F14026 		add	r6, r6, #1073758208
 2584 0030 06F50026 		add	r6, r6, #524288
 2585 0034 336B     		ldr	r3, [r6, #48]
 2586 0036 13F0420F 		tst	r3, #66
 2587 003a 06D0     		beq	.L687
 2588              	.L716:
 2589 003c 2846     		mov	r0, r5
 2590 003e FFF7FEFF 		bl	udd_ep_ack_out_received
 2591 0042 336B     		ldr	r3, [r6, #48]
 2592 0044 13F0420F 		tst	r3, #66
 2593 0048 F8D1     		bne	.L716
 2594              	.L687:
 2595 004a 314A     		ldr	r2, .L734+4
 2596 004c 936A     		ldr	r3, [r2, #40]
 2597 004e 2343     		orrs	r3, r3, r4
 2598 0050 9362     		str	r3, [r2, #40]
 2599              	.L704:
 2600 0052 936A     		ldr	r3, [r2, #40]
 2601 0054 1C42     		tst	r4, r3
 2602 0056 FCD0     		beq	.L704
 2603 0058 936A     		ldr	r3, [r2, #40]
 2604 005a 23EA0404 		bic	r4, r3, r4
 2605 005e 2846     		mov	r0, r5
 2606 0060 9462     		str	r4, [r2, #40]
 2607 0062 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2608 0066 FFF7FEBF 		b	udd_ep_abort_job
 2609              	.L682:
 2610 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2611              	.L732:
 2612 006c 1170     		strb	r1, [r2]
 2613              		.syntax unified
 2614              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2615 006e BFF35F8F 		dmb
 2616              	@ 0 "" 2
 2617              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2618 0072 62B6     		cpsie i
 2619              	@ 0 "" 2
 2620              		.thumb
 2621              		.syntax unified
 2622 0074 0606     		lsls	r6, r0, #24
ARM GAS  /tmp/cc6FmY4m.s 			page 47


 2623 0076 D8D5     		bpl	.L733
 2624              	.L685:
 2625 0078 AB00     		lsls	r3, r5, #2
 2626 007a 03F14023 		add	r3, r3, #1073758208
 2627 007e 03F50023 		add	r3, r3, #524288
 2628 0082 1A6B     		ldr	r2, [r3, #48]
 2629 0084 D006     		lsls	r0, r2, #27
 2630 0086 2AD5     		bpl	.L699
 2631 0088 EDB1     		cbz	r5, .L692
 2632 008a 032D     		cmp	r5, #3
 2633 008c 1BD0     		beq	.L692
 2634 008e 1A6B     		ldr	r2, [r3, #48]
 2635 0090 22F01002 		bic	r2, r2, #16
 2636 0094 42F04F02 		orr	r2, r2, #79
 2637 0098 1A63     		str	r2, [r3, #48]
 2638 009a 0A22     		movs	r2, #10
 2639              	.L693:
 2640 009c 196B     		ldr	r1, [r3, #48]
 2641 009e C906     		lsls	r1, r1, #27
 2642 00a0 01D5     		bpl	.L715
 2643 00a2 013A     		subs	r2, r2, #1
 2644 00a4 FAD1     		bne	.L693
 2645              	.L715:
 2646 00a6 1A6B     		ldr	r2, [r3, #48]
 2647 00a8 D206     		lsls	r2, r2, #27
 2648 00aa FCD4     		bmi	.L715
 2649 00ac 1A6B     		ldr	r2, [r3, #48]
 2650 00ae 42F05F02 		orr	r2, r2, #95
 2651 00b2 1A63     		str	r2, [r3, #48]
 2652 00b4 0A22     		movs	r2, #10
 2653              	.L696:
 2654 00b6 196B     		ldr	r1, [r3, #48]
 2655 00b8 CF06     		lsls	r7, r1, #27
 2656 00ba 01D4     		bmi	.L723
 2657 00bc 013A     		subs	r2, r2, #1
 2658 00be FAD1     		bne	.L696
 2659              	.L723:
 2660 00c0 1A6B     		ldr	r2, [r3, #48]
 2661 00c2 D606     		lsls	r6, r2, #27
 2662 00c4 FCD5     		bpl	.L723
 2663              	.L692:
 2664 00c6 1A6B     		ldr	r2, [r3, #48]
 2665 00c8 22F01002 		bic	r2, r2, #16
 2666 00cc 42F04F02 		orr	r2, r2, #79
 2667 00d0 1A63     		str	r2, [r3, #48]
 2668 00d2 0A22     		movs	r2, #10
 2669              	.L691:
 2670 00d4 196B     		ldr	r1, [r3, #48]
 2671 00d6 C806     		lsls	r0, r1, #27
 2672 00d8 01D5     		bpl	.L699
 2673 00da 013A     		subs	r2, r2, #1
 2674 00dc FAD1     		bne	.L691
 2675              	.L699:
 2676 00de 1A6B     		ldr	r2, [r3, #48]
 2677 00e0 22F00102 		bic	r2, r2, #1
 2678 00e4 42F04E02 		orr	r2, r2, #78
 2679 00e8 1A63     		str	r2, [r3, #48]
ARM GAS  /tmp/cc6FmY4m.s 			page 48


 2680 00ea 0A22     		movs	r2, #10
 2681              	.L689:
 2682 00ec 196B     		ldr	r1, [r3, #48]
 2683 00ee C907     		lsls	r1, r1, #31
 2684 00f0 01D5     		bpl	.L701
 2685 00f2 013A     		subs	r2, r2, #1
 2686 00f4 FAD1     		bne	.L689
 2687              	.L701:
 2688 00f6 074A     		ldr	r2, .L734+8
 2689 00f8 6B1E     		subs	r3, r5, #1
 2690 00fa 03EB8303 		add	r3, r3, r3, lsl #2
 2691 00fe 02EB8303 		add	r3, r2, r3, lsl #2
 2692 0102 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2693 0104 6FF38302 		bfc	r2, #2, #2
 2694 0108 5A74     		strb	r2, [r3, #17]
 2695 010a 9EE7     		b	.L687
 2696              	.L735:
 2697              		.align	2
 2698              	.L734:
 2699 010c 00000000 		.word	g_interrupt_enabled
 2700 0110 00400840 		.word	1074282496
 2701 0114 00000000 		.word	.LANCHOR0
 2702              		.size	udd_ep_abort, .-udd_ep_abort
 2703              		.section	.text.udd_ep_wait_stall_clear,"ax",%progbits
 2704              		.align	1
 2705              		.p2align 2,,3
 2706              		.global	udd_ep_wait_stall_clear
 2707              		.syntax unified
 2708              		.thumb
 2709              		.thumb_func
 2710              		.fpu fpv4-sp-d16
 2711              		.type	udd_ep_wait_stall_clear, %function
 2712              	udd_ep_wait_stall_clear:
 2713              		@ args = 0, pretend = 0, frame = 0
 2714              		@ frame_needed = 0, uses_anonymous_args = 0
 2715 0000 00F00F02 		and	r2, r0, #15
 2716 0004 032A     		cmp	r2, #3
 2717 0006 24D8     		bhi	.L740
 2718 0008 38B5     		push	{r3, r4, r5, lr}
 2719 000a 9400     		lsls	r4, r2, #2
 2720 000c 04F14024 		add	r4, r4, #1073758208
 2721 0010 04F50024 		add	r4, r4, #524288
 2722 0014 206B     		ldr	r0, [r4, #48]
 2723 0016 10F40040 		ands	r0, r0, #32768
 2724 001a 19D0     		beq	.L737
 2725 001c 013A     		subs	r2, r2, #1
 2726 001e 9300     		lsls	r3, r2, #2
 2727 0020 0E4D     		ldr	r5, .L747
 2728 0022 9818     		adds	r0, r3, r2
 2729 0024 05EB8000 		add	r0, r5, r0, lsl #2
 2730 0028 407C     		ldrb	r0, [r0, #17]	@ zero_extendqisi2
 2731 002a 10F0100F 		tst	r0, #16
 2732 002e 0ED1     		bne	.L742
 2733 0030 246B     		ldr	r4, [r4, #48]
 2734 0032 A406     		lsls	r4, r4, #26
 2735 0034 01D4     		bmi	.L738
 2736 0036 8006     		lsls	r0, r0, #26
ARM GAS  /tmp/cc6FmY4m.s 			page 49


 2737 0038 0DD5     		bpl	.L739
 2738              	.L738:
 2739 003a 1A44     		add	r2, r2, r3
 2740 003c 9200     		lsls	r2, r2, #2
 2741 003e AB18     		adds	r3, r5, r2
 2742 0040 A950     		str	r1, [r5, r2]
 2743 0042 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2744 0044 42F01002 		orr	r2, r2, #16
 2745 0048 5A74     		strb	r2, [r3, #17]
 2746 004a 0120     		movs	r0, #1
 2747 004c 38BD     		pop	{r3, r4, r5, pc}
 2748              	.L742:
 2749 004e 0020     		movs	r0, #0
 2750              	.L737:
 2751 0050 38BD     		pop	{r3, r4, r5, pc}
 2752              	.L740:
 2753 0052 0020     		movs	r0, #0
 2754 0054 7047     		bx	lr
 2755              	.L739:
 2756 0056 8847     		blx	r1
 2757 0058 0120     		movs	r0, #1
 2758 005a 38BD     		pop	{r3, r4, r5, pc}
 2759              	.L748:
 2760              		.align	2
 2761              	.L747:
 2762 005c 00000000 		.word	.LANCHOR0
 2763              		.size	udd_ep_wait_stall_clear, .-udd_ep_wait_stall_clear
 2764              		.comm	udd_g_ctrlreq,24,4
 2765              		.section	.bss.b_shortpacket.9601,"aw",%nobits
 2766              		.set	.LANCHOR4,. + 0
 2767              		.type	b_shortpacket.9601, %object
 2768              		.size	b_shortpacket.9601, 1
 2769              	b_shortpacket.9601:
 2770 0000 00       		.space	1
 2771              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2772              		.align	2
 2773              		.type	cpu_irq_critical_section_counter, %object
 2774              		.size	cpu_irq_critical_section_counter, 4
 2775              	cpu_irq_critical_section_counter:
 2776 0000 00000000 		.space	4
 2777              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2778              		.type	cpu_irq_prev_interrupt_state, %object
 2779              		.size	cpu_irq_prev_interrupt_state, 1
 2780              	cpu_irq_prev_interrupt_state:
 2781 0000 00       		.space	1
 2782              		.section	.bss.udd_ctrl_payload_nb_trans,"aw",%nobits
 2783              		.align	1
 2784              		.set	.LANCHOR2,. + 0
 2785              		.type	udd_ctrl_payload_nb_trans, %object
 2786              		.size	udd_ctrl_payload_nb_trans, 2
 2787              	udd_ctrl_payload_nb_trans:
 2788 0000 0000     		.space	2
 2789              		.section	.bss.udd_ctrl_prev_payload_nb_trans,"aw",%nobits
 2790              		.align	1
 2791              		.set	.LANCHOR3,. + 0
 2792              		.type	udd_ctrl_prev_payload_nb_trans, %object
 2793              		.size	udd_ctrl_prev_payload_nb_trans, 2
ARM GAS  /tmp/cc6FmY4m.s 			page 50


 2794              	udd_ctrl_prev_payload_nb_trans:
 2795 0000 0000     		.space	2
 2796              		.section	.bss.udd_ep_control_state,"aw",%nobits
 2797              		.set	.LANCHOR1,. + 0
 2798              		.type	udd_ep_control_state, %object
 2799              		.size	udd_ep_control_state, 1
 2800              	udd_ep_control_state:
 2801 0000 00       		.space	1
 2802              		.section	.bss.udd_ep_job,"aw",%nobits
 2803              		.align	2
 2804              		.set	.LANCHOR0,. + 0
 2805              		.type	udd_ep_job, %object
 2806              		.size	udd_ep_job, 60
 2807              	udd_ep_job:
 2808 0000 00000000 		.space	60
 2808      00000000 
 2808      00000000 
 2808      00000000 
 2808      00000000 
 2809              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
