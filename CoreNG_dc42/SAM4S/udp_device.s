ARM GAS  /tmp/cccVUXYA.s 			page 1


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
  11              		.file	"udp_device.c"
  12              		.section	.text.udd_ep_ack_out_received,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	udd_ep_ack_out_received, %function
  20              	udd_ep_ack_out_received:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 8300     		lsls	r3, r0, #2
  25 0002 03F14023 		add	r3, r3, #1073758208
  26 0006 03F54033 		add	r3, r3, #196608
  27 000a F0B4     		push	{r4, r5, r6, r7}
  28 000c 196B     		ldr	r1, [r3, #48]
  29 000e 1A6B     		ldr	r2, [r3, #48]
  30 0010 8907     		lsls	r1, r1, #30
  31 0012 00F1FF34 		add	r4, r0, #-1
  32 0016 3DD4     		bmi	.L30
  33 0018 A600     		lsls	r6, r4, #2
  34 001a 264D     		ldr	r5, .L31
  35 001c 3219     		adds	r2, r6, r4
  36 001e 05EB8202 		add	r2, r5, r2, lsl #2
  37 0022 0127     		movs	r7, #1
  38 0024 517C     		ldrb	r1, [r2, #17]	@ zero_extendqisi2
  39 0026 67F38301 		bfi	r1, r7, #2, #2
  40 002a 5174     		strb	r1, [r2, #17]
  41              	.L3:
  42 002c 3219     		adds	r2, r6, r4
  43 002e 05EB8202 		add	r2, r5, r2, lsl #2
  44 0032 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
  45 0034 12F00C0F 		tst	r2, #12
  46 0038 1A6B     		ldr	r2, [r3, #48]
  47 003a 17D1     		bne	.L4
  48 003c 22F00202 		bic	r2, r2, #2
  49 0040 42F04D02 		orr	r2, r2, #77
  50 0044 1A63     		str	r2, [r3, #48]
  51 0046 0A22     		movs	r2, #10
  52              	.L5:
  53 0048 196B     		ldr	r1, [r3, #48]
  54 004a 8F07     		lsls	r7, r1, #30
  55 004c 01D5     		bpl	.L6
  56 004e 013A     		subs	r2, r2, #1
  57 0050 FAD1     		bne	.L5
ARM GAS  /tmp/cccVUXYA.s 			page 2


  58              	.L6:
  59 0052 48B1     		cbz	r0, .L1
  60 0054 0328     		cmp	r0, #3
  61 0056 07D0     		beq	.L1
  62 0058 3444     		add	r4, r4, r6
  63 005a 05EB8405 		add	r5, r5, r4, lsl #2
  64 005e 0122     		movs	r2, #1
  65 0060 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
  66 0062 62F38303 		bfi	r3, r2, #2, #2
  67 0066 6B74     		strb	r3, [r5, #17]
  68              	.L1:
  69 0068 F0BC     		pop	{r4, r5, r6, r7}
  70 006a 7047     		bx	lr
  71              	.L4:
  72 006c 22F04002 		bic	r2, r2, #64
  73 0070 42F00F02 		orr	r2, r2, #15
  74 0074 1A63     		str	r2, [r3, #48]
  75 0076 0A22     		movs	r2, #10
  76              	.L9:
  77 0078 196B     		ldr	r1, [r3, #48]
  78 007a 4906     		lsls	r1, r1, #25
  79 007c 01D5     		bpl	.L10
  80 007e 013A     		subs	r2, r2, #1
  81 0080 FAD1     		bne	.L9
  82              	.L10:
  83 0082 3444     		add	r4, r4, r6
  84 0084 05EB8405 		add	r5, r5, r4, lsl #2
  85 0088 6B7C     		ldrb	r3, [r5, #17]	@ zero_extendqisi2
  86 008a 6FF38303 		bfc	r3, #2, #2
  87 008e 6B74     		strb	r3, [r5, #17]
  88 0090 F0BC     		pop	{r4, r5, r6, r7}
  89 0092 7047     		bx	lr
  90              	.L30:
  91 0094 12F04002 		ands	r2, r2, #64
  92 0098 02D0     		beq	.L27
  93 009a 064D     		ldr	r5, .L31
  94 009c A600     		lsls	r6, r4, #2
  95 009e C5E7     		b	.L3
  96              	.L27:
  97 00a0 A600     		lsls	r6, r4, #2
  98 00a2 044D     		ldr	r5, .L31
  99 00a4 3119     		adds	r1, r6, r4
 100 00a6 05EB8101 		add	r1, r5, r1, lsl #2
 101 00aa 4F7C     		ldrb	r7, [r1, #17]	@ zero_extendqisi2
 102 00ac 62F38307 		bfi	r7, r2, #2, #2
 103 00b0 4F74     		strb	r7, [r1, #17]
 104 00b2 BBE7     		b	.L3
 105              	.L32:
 106              		.align	2
 107              	.L31:
 108 00b4 00000000 		.word	.LANCHOR0
 109              		.size	udd_ep_ack_out_received, .-udd_ep_ack_out_received
 110              		.section	.text.udd_ep_in_sent,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/cccVUXYA.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	udd_ep_in_sent, %function
 118              	udd_ep_in_sent:
 119              		@ args = 0, pretend = 0, frame = 8
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 122 0004 00F1FF3C 		add	ip, r0, #-1
 123 0008 4FEA8C09 		lsl	r9, ip, #2
 124 000c DFF874E1 		ldr	lr, .L63+4
 125 0010 09EB0C03 		add	r3, r9, ip
 126 0014 0EEB8303 		add	r3, lr, r3, lsl #2
 127 0018 83B0     		sub	sp, sp, #12
 128 001a 93F81180 		ldrb	r8, [r3, #17]	@ zero_extendqisi2
 129 001e C8F38108 		ubfx	r8, r8, #2, #2
 130 0022 0028     		cmp	r0, #0
 131 0024 00F0A680 		beq	.L51
 132 0028 0328     		cmp	r0, #3
 133 002a 14BF     		ite	ne
 134 002c 0223     		movne	r3, #2
 135 002e 0123     		moveq	r3, #1
 136              	.L34:
 137 0030 4345     		cmp	r3, r8
 138 0032 40F39B80 		ble	.L50
 139 0036 09EB0C03 		add	r3, r9, ip
 140 003a 0EEB8303 		add	r3, lr, r3, lsl #2
 141 003e DA68     		ldr	r2, [r3, #12]
 142 0040 D3F808B0 		ldr	fp, [r3, #8]
 143 0044 5A45     		cmp	r2, fp
 144 0046 04D3     		bcc	.L37
 145 0048 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 146 004a 13F04003 		ands	r3, r3, #64
 147 004e 00F09380 		beq	.L53
 148              	.L37:
 149 0052 09EB0C03 		add	r3, r9, ip
 150 0056 0EEB8303 		add	r3, lr, r3, lsl #2
 151 005a ABEB0205 		sub	r5, fp, r2
 152 005e 1E8A     		ldrh	r6, [r3, #16]
 153 0060 5C68     		ldr	r4, [r3, #4]
 154 0062 C6F30906 		ubfx	r6, r6, #0, #10
 155 0066 B542     		cmp	r5, r6
 156 0068 34BF     		ite	cc
 157 006a 0123     		movcc	r3, #1
 158 006c 0023     		movcs	r3, #0
 159 006e 0193     		str	r3, [sp, #4]
 160 0070 09EB0C03 		add	r3, r9, ip
 161 0074 38BF     		it	cc
 162 0076 2E46     		movcc	r6, r5
 163 0078 0EEB8303 		add	r3, lr, r3, lsl #2
 164 007c 02EB060A 		add	r10, r2, r6
 165 0080 072E     		cmp	r6, #7
 166 0082 1444     		add	r4, r4, r2
 167 0084 C3F80CA0 		str	r10, [r3, #12]
 168 0088 2CD9     		bls	.L39
 169 008a 8200     		lsls	r2, r0, #2
 170 008c 02F14022 		add	r2, r2, #1073758208
 171 0090 02F54032 		add	r2, r2, #196608
ARM GAS  /tmp/cccVUXYA.s 			page 4


 172 0094 04F10803 		add	r3, r4, #8
 173 0098 3546     		mov	r5, r6
 174              	.L40:
 175 009a 13F8087C 		ldrb	r7, [r3, #-8]	@ zero_extendqisi2
 176 009e 1765     		str	r7, [r2, #80]
 177 00a0 13F8077C 		ldrb	r7, [r3, #-7]	@ zero_extendqisi2
 178 00a4 1765     		str	r7, [r2, #80]
 179 00a6 13F8067C 		ldrb	r7, [r3, #-6]	@ zero_extendqisi2
 180 00aa 1765     		str	r7, [r2, #80]
 181 00ac 13F8057C 		ldrb	r7, [r3, #-5]	@ zero_extendqisi2
 182 00b0 1765     		str	r7, [r2, #80]
 183 00b2 13F8047C 		ldrb	r7, [r3, #-4]	@ zero_extendqisi2
 184 00b6 1765     		str	r7, [r2, #80]
 185 00b8 13F8037C 		ldrb	r7, [r3, #-3]	@ zero_extendqisi2
 186 00bc 1765     		str	r7, [r2, #80]
 187 00be 13F8027C 		ldrb	r7, [r3, #-2]	@ zero_extendqisi2
 188 00c2 1765     		str	r7, [r2, #80]
 189 00c4 083D     		subs	r5, r5, #8
 190 00c6 13F8017C 		ldrb	r7, [r3, #-1]	@ zero_extendqisi2
 191 00ca 1765     		str	r7, [r2, #80]
 192 00cc 072D     		cmp	r5, #7
 193 00ce 03F10803 		add	r3, r3, #8
 194 00d2 E2D8     		bhi	.L40
 195 00d4 A6F10803 		sub	r3, r6, #8
 196 00d8 23F00703 		bic	r3, r3, #7
 197 00dc 0833     		adds	r3, r3, #8
 198 00de 1C44     		add	r4, r4, r3
 199 00e0 06F00706 		and	r6, r6, #7
 200              	.L39:
 201 00e4 4EB1     		cbz	r6, .L45
 202 00e6 264A     		ldr	r2, .L63
 203 00e8 2644     		add	r6, r6, r4
 204 00ea 00F11405 		add	r5, r0, #20
 205              	.L44:
 206 00ee 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 207 00f2 42F82530 		str	r3, [r2, r5, lsl #2]
 208 00f6 A642     		cmp	r6, r4
 209 00f8 F9D1     		bne	.L44
 210              	.L45:
 211 00fa 09EB0C03 		add	r3, r9, ip
 212 00fe 0EEB8303 		add	r3, lr, r3, lsl #2
 213 0102 08F10108 		add	r8, r8, #1
 214 0106 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 215 0108 68F38302 		bfi	r2, r8, #2, #2
 216 010c 5A74     		strb	r2, [r3, #17]
 217 010e 71B1     		cbz	r1, .L43
 218 0110 8000     		lsls	r0, r0, #2
 219 0112 00F14020 		add	r0, r0, #1073758208
 220 0116 00F54030 		add	r0, r0, #196608
 221 011a 0A23     		movs	r3, #10
 222 011c 026B     		ldr	r2, [r0, #48]
 223 011e 42F05F02 		orr	r2, r2, #95
 224 0122 0263     		str	r2, [r0, #48]
 225              	.L48:
 226 0124 026B     		ldr	r2, [r0, #48]
 227 0126 D206     		lsls	r2, r2, #27
 228 0128 01D4     		bmi	.L43
ARM GAS  /tmp/cccVUXYA.s 			page 5


 229 012a 013B     		subs	r3, r3, #1
 230 012c FAD1     		bne	.L48
 231              	.L43:
 232 012e 019B     		ldr	r3, [sp, #4]
 233 0130 3BB1     		cbz	r3, .L47
 234 0132 09EB0C03 		add	r3, r9, ip
 235 0136 0EEB8303 		add	r3, lr, r3, lsl #2
 236 013a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 237 013c 6FF38612 		bfc	r2, #6, #1
 238 0140 5A74     		strb	r2, [r3, #17]
 239              	.L47:
 240 0142 D345     		cmp	fp, r10
 241 0144 12D8     		bhi	.L50
 242 0146 CC44     		add	ip, ip, r9
 243 0148 0EEB8C0E 		add	lr, lr, ip, lsl #2
 244 014c 9EF81100 		ldrb	r0, [lr, #17]	@ zero_extendqisi2
 245 0150 10F04000 		ands	r0, r0, #64
 246 0154 0AD1     		bne	.L50
 247 0156 9EF81130 		ldrb	r3, [lr, #17]	@ zero_extendqisi2
 248 015a 43F08003 		orr	r3, r3, #128
 249 015e 8EF81130 		strb	r3, [lr, #17]
 250 0162 0EF1100E 		add	lr, lr, #16
 251 0166 03B0     		add	sp, sp, #12
 252              		@ sp needed
 253 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 254              	.L50:
 255 016c 0120     		movs	r0, #1
 256 016e 03B0     		add	sp, sp, #12
 257              		@ sp needed
 258 0170 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 259              	.L51:
 260 0174 0123     		movs	r3, #1
 261 0176 5BE7     		b	.L34
 262              	.L53:
 263 0178 1846     		mov	r0, r3
 264 017a 03B0     		add	sp, sp, #12
 265              		@ sp needed
 266 017c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 267              	.L64:
 268              		.align	2
 269              	.L63:
 270 0180 00400340 		.word	1073954816
 271 0184 00000000 		.word	.LANCHOR0
 272              		.size	udd_ep_in_sent, .-udd_ep_in_sent
 273              		.section	.text.udd_ep_finish_job.part.2,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu softvfp
 280              		.type	udd_ep_finish_job.part.2, %function
 281              	udd_ep_finish_job.part.2:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 30B4     		push	{r4, r5}
ARM GAS  /tmp/cccVUXYA.s 			page 6


 286 0002 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 287 0004 0468     		ldr	r4, [r0]
 288 0006 6FF30413 		bfc	r3, #4, #1
 289 000a 4374     		strb	r3, [r0, #17]
 290 000c 94B1     		cbz	r4, .L65
 291 000e 0D46     		mov	r5, r1
 292 0010 094B     		ldr	r3, .L72
 293 0012 02F10C01 		add	r1, r2, #12
 294 0016 53F82130 		ldr	r3, [r3, r1, lsl #2]
 295 001a 8168     		ldr	r1, [r0, #8]
 296 001c A5F10100 		sub	r0, r5, #1
 297 0020 5B05     		lsls	r3, r3, #21
 298 0022 B0FA80F0 		clz	r0, r0
 299 0026 2346     		mov	r3, r4
 300 0028 48BF     		it	mi
 301 002a 42F08002 		orrmi	r2, r2, #128
 302 002e 4009     		lsrs	r0, r0, #5
 303 0030 30BC     		pop	{r4, r5}
 304 0032 1847     		bx	r3	@ indirect register sibling call
 305              	.L65:
 306 0034 30BC     		pop	{r4, r5}
 307 0036 7047     		bx	lr
 308              	.L73:
 309              		.align	2
 310              	.L72:
 311 0038 00400340 		.word	1073954816
 312              		.size	udd_ep_finish_job.part.2, .-udd_ep_finish_job.part.2
 313              		.section	.text.udd_ep_abort_job,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu softvfp
 320              		.type	udd_ep_abort_job, %function
 321              	udd_ep_abort_job:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 00F00F02 		and	r2, r0, #15
 326 0004 531E     		subs	r3, r2, #1
 327 0006 0648     		ldr	r0, .L77
 328 0008 03EB8303 		add	r3, r3, r3, lsl #2
 329 000c 00EB8300 		add	r0, r0, r3, lsl #2
 330 0010 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 331 0012 DB06     		lsls	r3, r3, #27
 332 0014 00D4     		bmi	.L76
 333 0016 7047     		bx	lr
 334              	.L76:
 335 0018 0121     		movs	r1, #1
 336 001a FFF7FEBF 		b	udd_ep_finish_job.part.2
 337              	.L78:
 338 001e 00BF     		.align	2
 339              	.L77:
 340 0020 00000000 		.word	.LANCHOR0
 341              		.size	udd_ep_abort_job, .-udd_ep_abort_job
 342              		.section	.text.udd_ctrl_in_sent,"ax",%progbits
ARM GAS  /tmp/cccVUXYA.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	udd_ctrl_in_sent, %function
 350              	udd_ctrl_in_sent:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 354 0004 DFF88481 		ldr	r8, .L139+24
 355 0008 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 356 000c 032B     		cmp	r3, #3
 357 000e 65D0     		beq	.L134
 358 0010 584E     		ldr	r6, .L139
 359 0012 594D     		ldr	r5, .L139+4
 360 0014 3088     		ldrh	r0, [r6]
 361 0016 AC89     		ldrh	r4, [r5, #12]
 362 0018 241A     		subs	r4, r4, r0
 363 001a A4B2     		uxth	r4, r4
 364 001c 002C     		cmp	r4, #0
 365 001e 3DD0     		beq	.L86
 366 0020 564F     		ldr	r7, .L139+8
 367 0022 0346     		mov	r3, r0
 368              	.L87:
 369 0024 3F2C     		cmp	r4, #63
 370 0026 40F28680 		bls	.L95
 371 002a 0022     		movs	r2, #0
 372 002c 3A70     		strb	r2, [r7]
 373 002e 4024     		movs	r4, #64
 374              	.L96:
 375 0030 A868     		ldr	r0, [r5, #8]
 376              		.syntax unified
 377              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 378 0032 EFF31087 		MRS r7, primask
 379              	@ 0 "" 2
 380              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 381 0036 72B6     		cpsid i
 382              	@ 0 "" 2
 383              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 384 0038 BFF35F8F 		dmb
 385              	@ 0 "" 2
 386              		.thumb
 387              		.syntax unified
 388 003c 504D     		ldr	r5, .L139+12
 389 003e 5149     		ldr	r1, .L139+16
 390 0040 0022     		movs	r2, #0
 391 0042 2A70     		strb	r2, [r5]
 392 0044 0A6B     		ldr	r2, [r1, #48]
 393 0046 9207     		lsls	r2, r2, #30
 394 0048 61D4     		bmi	.L97
 395 004a 44B1     		cbz	r4, .L104
 396 004c 1844     		add	r0, r0, r3
 397 004e 0246     		mov	r2, r0
 398              	.L103:
 399 0050 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
ARM GAS  /tmp/cccVUXYA.s 			page 8


 400 0054 0B65     		str	r3, [r1, #80]
 401 0056 131A     		subs	r3, r2, r0
 402 0058 DBB2     		uxtb	r3, r3
 403 005a A342     		cmp	r3, r4
 404 005c F8D3     		bcc	.L103
 405              	.L104:
 406 005e 3388     		ldrh	r3, [r6]
 407 0060 4849     		ldr	r1, .L139+16
 408 0062 1C44     		add	r4, r4, r3
 409 0064 0B6B     		ldr	r3, [r1, #48]
 410 0066 3480     		strh	r4, [r6]	@ movhi
 411 0068 43F05F03 		orr	r3, r3, #95
 412 006c 0B63     		str	r3, [r1, #48]
 413 006e 0A23     		movs	r3, #10
 414              	.L99:
 415 0070 0A6B     		ldr	r2, [r1, #48]
 416 0072 D006     		lsls	r0, r2, #27
 417 0074 01D4     		bmi	.L105
 418 0076 013B     		subs	r3, r3, #1
 419 0078 FAD1     		bne	.L99
 420              	.L105:
 421 007a 4249     		ldr	r1, .L139+16
 422 007c 0B6B     		ldr	r3, [r1, #48]
 423 007e 23F00103 		bic	r3, r3, #1
 424 0082 43F04E03 		orr	r3, r3, #78
 425 0086 0B63     		str	r3, [r1, #48]
 426 0088 0A23     		movs	r3, #10
 427              	.L107:
 428 008a 0A6B     		ldr	r2, [r1, #48]
 429 008c D207     		lsls	r2, r2, #31
 430 008e 01D5     		bpl	.L108
 431 0090 013B     		subs	r3, r3, #1
 432 0092 FAD1     		bne	.L107
 433              	.L108:
 434 0094 002F     		cmp	r7, #0
 435 0096 58D0     		beq	.L135
 436              	.L79:
 437 0098 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 438              	.L86:
 439 009c 3A4A     		ldr	r2, .L139+20
 440 009e E988     		ldrh	r1, [r5, #6]
 441 00a0 1388     		ldrh	r3, [r2]
 442 00a2 0344     		add	r3, r3, r0
 443 00a4 9BB2     		uxth	r3, r3
 444 00a6 9942     		cmp	r1, r3
 445 00a8 1380     		strh	r3, [r2]	@ movhi
 446 00aa 05D0     		beq	.L88
 447 00ac 334F     		ldr	r7, .L139+8
 448 00ae 97F80090 		ldrb	r9, [r7]	@ zero_extendqisi2
 449 00b2 B9F1000F 		cmp	r9, #0
 450 00b6 41D0     		beq	.L89
 451              	.L88:
 452 00b8 3249     		ldr	r1, .L139+16
 453 00ba 0423     		movs	r3, #4
 454 00bc 88F80030 		strb	r3, [r8]
 455 00c0 0B6B     		ldr	r3, [r1, #48]
 456 00c2 23F00103 		bic	r3, r3, #1
ARM GAS  /tmp/cccVUXYA.s 			page 9


 457 00c6 43F04E03 		orr	r3, r3, #78
 458 00ca 0B63     		str	r3, [r1, #48]
 459 00cc 0A23     		movs	r3, #10
 460              	.L90:
 461 00ce 0A6B     		ldr	r2, [r1, #48]
 462 00d0 D007     		lsls	r0, r2, #31
 463 00d2 48D5     		bpl	.L136
 464 00d4 013B     		subs	r3, r3, #1
 465 00d6 FAD1     		bne	.L90
 466 00d8 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 467              	.L134:
 468 00dc 2949     		ldr	r1, .L139+16
 469 00de 0B6B     		ldr	r3, [r1, #48]
 470 00e0 23F00103 		bic	r3, r3, #1
 471 00e4 43F04E03 		orr	r3, r3, #78
 472 00e8 0B63     		str	r3, [r1, #48]
 473 00ea 0A23     		movs	r3, #10
 474              	.L81:
 475 00ec 0A6B     		ldr	r2, [r1, #48]
 476 00ee D407     		lsls	r4, r2, #31
 477 00f0 01D5     		bpl	.L82
 478 00f2 013B     		subs	r3, r3, #1
 479 00f4 FAD1     		bne	.L81
 480              	.L82:
 481 00f6 204D     		ldr	r5, .L139+4
 482 00f8 2B69     		ldr	r3, [r5, #16]
 483 00fa 03B1     		cbz	r3, .L84
 484 00fc 9847     		blx	r3
 485              	.L84:
 486 00fe 0023     		movs	r3, #0
 487 0100 2B61     		str	r3, [r5, #16]
 488 0102 6B61     		str	r3, [r5, #20]
 489 0104 AB81     		strh	r3, [r5, #12]	@ movhi
 490 0106 88F80030 		strb	r3, [r8]
 491 010a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 492              	.L97:
 493 010e 17B3     		cbz	r7, .L137
 494              	.L100:
 495 0110 1C49     		ldr	r1, .L139+16
 496 0112 0423     		movs	r3, #4
 497 0114 88F80030 		strb	r3, [r8]
 498 0118 0B6B     		ldr	r3, [r1, #48]
 499 011a 23F00103 		bic	r3, r3, #1
 500 011e 43F04E03 		orr	r3, r3, #78
 501 0122 0B63     		str	r3, [r1, #48]
 502 0124 0A23     		movs	r3, #10
 503              	.L101:
 504 0126 0A6B     		ldr	r2, [r1, #48]
 505 0128 D407     		lsls	r4, r2, #31
 506 012a 1AD5     		bpl	.L138
 507 012c 013B     		subs	r3, r3, #1
 508 012e FAD1     		bne	.L101
 509 0130 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 510              	.L93:
 511 0134 0346     		mov	r3, r0
 512              	.L95:
 513 0136 0122     		movs	r2, #1
ARM GAS  /tmp/cccVUXYA.s 			page 10


 514 0138 3A70     		strb	r2, [r7]
 515 013a 79E7     		b	.L96
 516              	.L89:
 517 013c 6B69     		ldr	r3, [r5, #20]
 518 013e 002B     		cmp	r3, #0
 519 0140 F8D0     		beq	.L93
 520 0142 9847     		blx	r3
 521 0144 88B9     		cbnz	r0, .L94
 522 0146 3388     		ldrh	r3, [r6]
 523 0148 F5E7     		b	.L95
 524              	.L135:
 525 014a 0123     		movs	r3, #1
 526 014c 2B70     		strb	r3, [r5]
 527              		.syntax unified
 528              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 529 014e BFF35F8F 		dmb
 530              	@ 0 "" 2
 531              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 532 0152 62B6     		cpsie i
 533              	@ 0 "" 2
 534              		.thumb
 535              		.syntax unified
 536 0154 A0E7     		b	.L79
 537              	.L137:
 538 0156 0123     		movs	r3, #1
 539 0158 2B70     		strb	r3, [r5]
 540              		.syntax unified
 541              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 542 015a BFF35F8F 		dmb
 543              	@ 0 "" 2
 544              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 545 015e 62B6     		cpsie i
 546              	@ 0 "" 2
 547              		.thumb
 548              		.syntax unified
 549 0160 D6E7     		b	.L100
 550              	.L138:
 551 0162 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 552              	.L136:
 553 0166 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 554              	.L94:
 555 016a 3480     		strh	r4, [r6]	@ movhi
 556 016c 4B46     		mov	r3, r9
 557 016e AC89     		ldrh	r4, [r5, #12]
 558 0170 58E7     		b	.L87
 559              	.L140:
 560 0172 00BF     		.align	2
 561              	.L139:
 562 0174 00000000 		.word	.LANCHOR2
 563 0178 00000000 		.word	udd_g_ctrlreq
 564 017c 00000000 		.word	.LANCHOR4
 565 0180 00000000 		.word	g_interrupt_enabled
 566 0184 00400340 		.word	1073954816
 567 0188 00000000 		.word	.LANCHOR3
 568 018c 00000000 		.word	.LANCHOR1
 569              		.size	udd_ctrl_in_sent, .-udd_ctrl_in_sent
 570              		.section	.text.UDP_Handler,"ax",%progbits
ARM GAS  /tmp/cccVUXYA.s 			page 11


 571              		.align	1
 572              		.p2align 2,,3
 573              		.global	UDP_Handler
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu softvfp
 578              		.type	UDP_Handler, %function
 579              	UDP_Handler:
 580              		@ args = 0, pretend = 0, frame = 8
 581              		@ frame_needed = 0, uses_anonymous_args = 0
 582 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 583 0004 2220     		movs	r0, #34
 584 0006 83B0     		sub	sp, sp, #12
 585 0008 FFF7FEFF 		bl	pmc_enable_periph_clk
 586 000c 9D4B     		ldr	r3, .L513
 587 000e 9A69     		ldr	r2, [r3, #24]
 588 0010 1605     		lsls	r6, r2, #20
 589 0012 03D5     		bpl	.L142
 590 0014 DA69     		ldr	r2, [r3, #28]
 591 0016 1505     		lsls	r5, r2, #20
 592 0018 00F10A81 		bmi	.L496
 593              	.L142:
 594 001c 994B     		ldr	r3, .L513
 595 001e DA69     		ldr	r2, [r3, #28]
 596 0020 D407     		lsls	r4, r2, #31
 597 0022 1DD5     		bpl	.L143
 598 0024 1A6B     		ldr	r2, [r3, #48]
 599 0026 5007     		lsls	r0, r2, #29
 600 0028 00F1D380 		bmi	.L497
 601 002c 1A6B     		ldr	r2, [r3, #48]
 602 002e D607     		lsls	r6, r2, #31
 603 0030 00F12381 		bmi	.L492
 604 0034 1A6B     		ldr	r2, [r3, #48]
 605 0036 9507     		lsls	r5, r2, #30
 606 0038 00F13281 		bmi	.L498
 607 003c 1A6B     		ldr	r2, [r3, #48]
 608 003e 1507     		lsls	r5, r2, #28
 609 0040 0ED5     		bpl	.L143
 610 0042 1A6B     		ldr	r2, [r3, #48]
 611 0044 22F00802 		bic	r2, r2, #8
 612 0048 42F04702 		orr	r2, r2, #71
 613 004c 1A63     		str	r2, [r3, #48]
 614 004e 0A22     		movs	r2, #10
 615              	.L218:
 616 0050 196B     		ldr	r1, [r3, #48]
 617 0052 0C07     		lsls	r4, r1, #28
 618 0054 01D5     		bpl	.L141
 619 0056 013A     		subs	r2, r2, #1
 620 0058 FAD1     		bne	.L218
 621              	.L141:
 622 005a 03B0     		add	sp, sp, #12
 623              		@ sp needed
 624 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 625              	.L143:
 626 0060 894F     		ldr	r7, .L513+4
 627 0062 8848     		ldr	r0, .L513
ARM GAS  /tmp/cccVUXYA.s 			page 12


 628 0064 0123     		movs	r3, #1
 629 0066 B846     		mov	r8, r7
 630 0068 3D46     		mov	r5, r7
 631 006a 1946     		mov	r1, r3
 632              	.L268:
 633 006c 8269     		ldr	r2, [r0, #24]
 634 006e 9C00     		lsls	r4, r3, #2
 635 0070 01FA03F6 		lsl	r6, r1, r3
 636 0074 04F14024 		add	r4, r4, #1073758208
 637 0078 3242     		tst	r2, r6
 638 007a 5FFA83F9 		uxtb	r9, r3
 639 007e 03F1FF3A 		add	r10, r3, #-1
 640 0082 04F54034 		add	r4, r4, #196608
 641 0086 03F10103 		add	r3, r3, #1
 642 008a 0CD0     		beq	.L220
 643 008c 226B     		ldr	r2, [r4, #48]
 644 008e 12F0420F 		tst	r2, #66
 645 0092 40F00382 		bne	.L499
 646 0096 226B     		ldr	r2, [r4, #48]
 647 0098 D207     		lsls	r2, r2, #31
 648 009a 00F15582 		bmi	.L500
 649 009e 226B     		ldr	r2, [r4, #48]
 650 00a0 1607     		lsls	r6, r2, #28
 651 00a2 00F18282 		bmi	.L501
 652              	.L220:
 653 00a6 042B     		cmp	r3, #4
 654 00a8 05F11405 		add	r5, r5, #20
 655 00ac DED1     		bne	.L268
 656 00ae 754B     		ldr	r3, .L513
 657 00b0 9A69     		ldr	r2, [r3, #24]
 658 00b2 9204     		lsls	r2, r2, #18
 659 00b4 7CD4     		bmi	.L284
 660              	.L285:
 661 00b6 734B     		ldr	r3, .L513
 662 00b8 9A69     		ldr	r2, [r3, #24]
 663 00ba 9605     		lsls	r6, r2, #22
 664 00bc 02D5     		bpl	.L271
 665 00be DB69     		ldr	r3, [r3, #28]
 666 00c0 9D05     		lsls	r5, r3, #22
 667 00c2 79D4     		bmi	.L270
 668              	.L271:
 669 00c4 6F4B     		ldr	r3, .L513
 670 00c6 9A69     		ldr	r2, [r3, #24]
 671 00c8 5405     		lsls	r4, r2, #21
 672 00ca 02D5     		bpl	.L272
 673 00cc DB69     		ldr	r3, [r3, #28]
 674 00ce 5805     		lsls	r0, r3, #21
 675 00d0 72D4     		bmi	.L270
 676              	.L272:
 677 00d2 6C4B     		ldr	r3, .L513
 678 00d4 9A69     		ldr	r2, [r3, #24]
 679 00d6 D105     		lsls	r1, r2, #23
 680 00d8 03D5     		bpl	.L273
 681 00da DA69     		ldr	r2, [r3, #28]
 682 00dc D205     		lsls	r2, r2, #23
 683 00de 00F15181 		bmi	.L502
 684              	.L273:
ARM GAS  /tmp/cccVUXYA.s 			page 13


 685 00e2 684B     		ldr	r3, .L513
 686 00e4 DA69     		ldr	r2, [r3, #28]
 687 00e6 D604     		lsls	r6, r2, #19
 688 00e8 B7D5     		bpl	.L141
 689 00ea 4FF48052 		mov	r2, #4096
 690 00ee 1A62     		str	r2, [r3, #32]
 691 00f0 0023     		movs	r3, #0
 692              	.L275:
 693 00f2 03EB8302 		add	r2, r3, r3, lsl #2
 694 00f6 08EB8202 		add	r2, r8, r2, lsl #2
 695 00fa 5C1C     		adds	r4, r3, #1
 696 00fc 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 697 00fe DD06     		lsls	r5, r3, #27
 698 0100 E2B2     		uxtb	r2, r4
 699 0102 00F15281 		bmi	.L503
 700              	.L274:
 701 0106 032C     		cmp	r4, #3
 702 0108 07F11407 		add	r7, r7, #20
 703 010c 2346     		mov	r3, r4
 704 010e F0D1     		bne	.L275
 705 0110 FFF7FEFF 		bl	udc_reset
 706 0114 5B4B     		ldr	r3, .L513
 707 0116 5A68     		ldr	r2, [r3, #4]
 708 0118 22F00102 		bic	r2, r2, #1
 709 011c 5A60     		str	r2, [r3, #4]
 710 011e 5A68     		ldr	r2, [r3, #4]
 711 0120 22F00202 		bic	r2, r2, #2
 712 0124 5A60     		str	r2, [r3, #4]
 713 0126 9A68     		ldr	r2, [r3, #8]
 714 0128 42F48072 		orr	r2, r2, #256
 715 012c 9A60     		str	r2, [r3, #8]
 716 012e 9A68     		ldr	r2, [r3, #8]
 717 0130 22F07F02 		bic	r2, r2, #127
 718 0134 9A60     		str	r2, [r3, #8]
 719 0136 1A6B     		ldr	r2, [r3, #48]
 720 0138 22F40742 		bic	r2, r2, #34560
 721 013c 22F0CF02 		bic	r2, r2, #207
 722 0140 42F40042 		orr	r2, r2, #32768
 723 0144 42F04F02 		orr	r2, r2, #79
 724 0148 1A63     		str	r2, [r3, #48]
 725 014a 1A46     		mov	r2, r3
 726 014c 0A23     		movs	r3, #10
 727              	.L276:
 728 014e 116B     		ldr	r1, [r2, #48]
 729 0150 0C04     		lsls	r4, r1, #16
 730 0152 01D4     		bmi	.L277
 731 0154 013B     		subs	r3, r3, #1
 732 0156 FAD1     		bne	.L276
 733              	.L277:
 734 0158 4A49     		ldr	r1, .L513
 735 015a 0B6B     		ldr	r3, [r1, #48]
 736 015c 43F40043 		orr	r3, r3, #32768
 737 0160 43F04F03 		orr	r3, r3, #79
 738 0164 0B63     		str	r3, [r1, #48]
 739 0166 0A23     		movs	r3, #10
 740              	.L279:
 741 0168 0A6B     		ldr	r2, [r1, #48]
ARM GAS  /tmp/cccVUXYA.s 			page 14


 742 016a 1004     		lsls	r0, r2, #16
 743 016c 01D4     		bmi	.L280
 744 016e 013B     		subs	r3, r3, #1
 745 0170 FAD1     		bne	.L279
 746              	.L280:
 747              		.syntax unified
 748              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 749 0172 EFF31083 		MRS r3, primask
 750              	@ 0 "" 2
 751              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 752 0176 72B6     		cpsid i
 753              	@ 0 "" 2
 754              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 755 0178 BFF35F8F 		dmb
 756              	@ 0 "" 2
 757              		.thumb
 758              		.syntax unified
 759 017c 434A     		ldr	r2, .L513+8
 760 017e 4148     		ldr	r0, .L513
 761 0180 0024     		movs	r4, #0
 762 0182 0121     		movs	r1, #1
 763 0184 1470     		strb	r4, [r2]
 764 0186 0161     		str	r1, [r0, #16]
 765 0188 1BB9     		cbnz	r3, .L282
 766 018a 1170     		strb	r1, [r2]
 767              		.syntax unified
 768              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 769 018c BFF35F8F 		dmb
 770              	@ 0 "" 2
 771              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 772 0190 62B6     		cpsie i
 773              	@ 0 "" 2
 774              		.thumb
 775              		.syntax unified
 776              	.L282:
 777              	.L152:
 778              	.L283:
 779 0192 3F4A     		ldr	r2, .L513+12
 780 0194 3B49     		ldr	r1, .L513
 781 0196 3F4D     		ldr	r5, .L513+16
 782 0198 0023     		movs	r3, #0
 783 019a 4FF48074 		mov	r4, #256
 784 019e 4FF40060 		mov	r0, #2048
 785 01a2 2B70     		strb	r3, [r5]
 786 01a4 1361     		str	r3, [r2, #16]
 787 01a6 0C61     		str	r4, [r1, #16]
 788 01a8 5361     		str	r3, [r2, #20]
 789 01aa 0861     		str	r0, [r1, #16]
 790 01ac 9381     		strh	r3, [r2, #12]	@ movhi
 791 01ae 54E7     		b	.L141
 792              	.L284:
 793 01b0 DB69     		ldr	r3, [r3, #28]
 794 01b2 9B04     		lsls	r3, r3, #18
 795 01b4 7FF57FAF 		bpl	.L285
 796              	.L270:
 797 01b8 324B     		ldr	r3, .L513
 798 01ba 4FF41851 		mov	r1, #9728
ARM GAS  /tmp/cccVUXYA.s 			page 15


 799 01be 4FF48072 		mov	r2, #256
 800 01c2 4FF40060 		mov	r0, #2048
 801 01c6 1962     		str	r1, [r3, #32]
 802 01c8 5961     		str	r1, [r3, #20]
 803 01ca 1A62     		str	r2, [r3, #32]
 804 01cc 1A61     		str	r2, [r3, #16]
 805 01ce 1861     		str	r0, [r3, #16]
 806 01d0 43E7     		b	.L141
 807              	.L497:
 808 01d2 304D     		ldr	r5, .L513+16
 809 01d4 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 810 01d6 43B1     		cbz	r3, .L145
 811 01d8 2D4E     		ldr	r6, .L513+12
 812 01da 3369     		ldr	r3, [r6, #16]
 813 01dc 03B1     		cbz	r3, .L146
 814 01de 9847     		blx	r3
 815              	.L146:
 816 01e0 0023     		movs	r3, #0
 817 01e2 3361     		str	r3, [r6, #16]
 818 01e4 7361     		str	r3, [r6, #20]
 819 01e6 B381     		strh	r3, [r6, #12]	@ movhi
 820 01e8 2B70     		strb	r3, [r5]
 821              	.L145:
 822 01ea 264A     		ldr	r2, .L513
 823 01ec 136B     		ldr	r3, [r2, #48]
 824 01ee C3F30A43 		ubfx	r3, r3, #16, #11
 825 01f2 082B     		cmp	r3, #8
 826 01f4 00F0DE80 		beq	.L147
 827 01f8 136B     		ldr	r3, [r2, #48]
 828 01fa 23F00403 		bic	r3, r3, #4
 829 01fe 43F04B03 		orr	r3, r3, #75
 830 0202 1363     		str	r3, [r2, #48]
 831 0204 0A23     		movs	r3, #10
 832              	.L148:
 833 0206 116B     		ldr	r1, [r2, #48]
 834 0208 4907     		lsls	r1, r1, #29
 835 020a 01D5     		bpl	.L149
 836 020c 013B     		subs	r3, r3, #1
 837 020e FAD1     		bne	.L148
 838              	.L149:
 839 0210 1C4B     		ldr	r3, .L513
 840 0212 1A6B     		ldr	r2, [r3, #48]
 841 0214 0521     		movs	r1, #5
 842 0216 42F06F02 		orr	r2, r2, #111
 843 021a 2970     		strb	r1, [r5]
 844 021c 1946     		mov	r1, r3
 845 021e 1A63     		str	r2, [r3, #48]
 846 0220 0A23     		movs	r3, #10
 847              	.L151:
 848 0222 0A6B     		ldr	r2, [r1, #48]
 849 0224 9706     		lsls	r7, r2, #26
 850 0226 3FF518AF 		bmi	.L141
 851 022a 013B     		subs	r3, r3, #1
 852 022c F9D1     		bne	.L151
 853 022e 14E7     		b	.L141
 854              	.L496:
 855 0230 4FF40062 		mov	r2, #2048
ARM GAS  /tmp/cccVUXYA.s 			page 16


 856 0234 1A62     		str	r2, [r3, #32]
 857 0236 03B0     		add	sp, sp, #12
 858              		@ sp needed
 859 0238 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 860 023c FFF7FEBF 		b	udc_sof_notify
 861              	.L505:
 862 0240 43F0CF03 		orr	r3, r3, #207
 863 0244 2363     		str	r3, [r4, #48]
 864 0246 0A23     		movs	r3, #10
 865              	.L163:
 866 0248 0A6B     		ldr	r2, [r1, #48]
 867 024a 1406     		lsls	r4, r2, #24
 868 024c 01D4     		bmi	.L164
 869 024e 013B     		subs	r3, r3, #1
 870 0250 FAD1     		bne	.L163
 871              	.L164:
 872 0252 0C49     		ldr	r1, .L513
 873 0254 0B6B     		ldr	r3, [r1, #48]
 874 0256 23F00403 		bic	r3, r3, #4
 875 025a 43F04B03 		orr	r3, r3, #75
 876 025e 0B63     		str	r3, [r1, #48]
 877 0260 0A23     		movs	r3, #10
 878              	.L166:
 879 0262 0A6B     		ldr	r2, [r1, #48]
 880 0264 5007     		lsls	r0, r2, #29
 881 0266 01D5     		bpl	.L167
 882 0268 013B     		subs	r3, r3, #1
 883 026a FAD1     		bne	.L166
 884              	.L167:
 885 026c 0A48     		ldr	r0, .L513+20
 886 026e 0B49     		ldr	r1, .L513+24
 887 0270 0023     		movs	r3, #0
 888 0272 0222     		movs	r2, #2
 889 0274 0380     		strh	r3, [r0]	@ movhi
 890 0276 0B80     		strh	r3, [r1]	@ movhi
 891 0278 2A70     		strb	r2, [r5]
 892              	.L492:
 893 027a 03B0     		add	sp, sp, #12
 894              		@ sp needed
 895 027c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 896 0280 FFF7FEBF 		b	udd_ctrl_in_sent
 897              	.L514:
 898              		.align	2
 899              	.L513:
 900 0284 00400340 		.word	1073954816
 901 0288 00000000 		.word	.LANCHOR0
 902 028c 00000000 		.word	g_interrupt_enabled
 903 0290 00000000 		.word	udd_g_ctrlreq
 904 0294 00000000 		.word	.LANCHOR1
 905 0298 00000000 		.word	.LANCHOR3
 906 029c 00000000 		.word	.LANCHOR2
 907              	.L498:
 908 02a0 A44D     		ldr	r5, .L515
 909 02a2 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 910 02a4 012A     		cmp	r2, #1
 911 02a6 23D0     		beq	.L177
 912 02a8 022A     		cmp	r2, #2
ARM GAS  /tmp/cccVUXYA.s 			page 17


 913 02aa 00F0AC80 		beq	.L178
 914 02ae 042A     		cmp	r2, #4
 915 02b0 00F0A980 		beq	.L178
 916 02b4 1A6B     		ldr	r2, [r3, #48]
 917 02b6 42F06F02 		orr	r2, r2, #111
 918 02ba 1A63     		str	r2, [r3, #48]
 919 02bc 0A22     		movs	r2, #10
 920              	.L182:
 921 02be 196B     		ldr	r1, [r3, #48]
 922 02c0 8C06     		lsls	r4, r1, #26
 923 02c2 01D4     		bmi	.L491
 924 02c4 013A     		subs	r2, r2, #1
 925 02c6 FAD1     		bne	.L182
 926              	.L491:
 927 02c8 9B4E     		ldr	r6, .L515+4
 928              	.L181:
 929 02ca 9C49     		ldr	r1, .L515+8
 930 02cc 0B6B     		ldr	r3, [r1, #48]
 931 02ce 23F00203 		bic	r3, r3, #2
 932 02d2 43F04D03 		orr	r3, r3, #77
 933 02d6 0B63     		str	r3, [r1, #48]
 934 02d8 0A23     		movs	r3, #10
 935              	.L185:
 936 02da 0A6B     		ldr	r2, [r1, #48]
 937 02dc 9007     		lsls	r0, r2, #30
 938 02de 01D5     		bpl	.L186
 939 02e0 013B     		subs	r3, r3, #1
 940 02e2 FAD1     		bne	.L185
 941              	.L186:
 942 02e4 0023     		movs	r3, #0
 943 02e6 3361     		str	r3, [r6, #16]
 944 02e8 7361     		str	r3, [r6, #20]
 945 02ea B381     		strh	r3, [r6, #12]	@ movhi
 946 02ec 2B70     		strb	r3, [r5]
 947 02ee B4E6     		b	.L141
 948              	.L177:
 949 02f0 934C     		ldr	r4, .L515+12
 950 02f2 196B     		ldr	r1, [r3, #48]
 951 02f4 904E     		ldr	r6, .L515+4
 952 02f6 B4F800E0 		ldrh	lr, [r4]
 953 02fa B389     		ldrh	r3, [r6, #12]
 954 02fc B068     		ldr	r0, [r6, #8]
 955 02fe C1F30A41 		ubfx	r1, r1, #16, #11
 956 0302 0EEB0102 		add	r2, lr, r1
 957 0306 9342     		cmp	r3, r2
 958 0308 BCBF     		itt	lt
 959 030a A3EB0E03 		sublt	r3, r3, lr
 960 030e 99B2     		uxthlt	r1, r3
 961 0310 7044     		add	r0, r0, lr
 962 0312 81B1     		cbz	r1, .L189
 963 0314 894F     		ldr	r7, .L515+8
 964 0316 0246     		mov	r2, r0
 965              	.L190:
 966 0318 3B6D     		ldr	r3, [r7, #80]
 967 031a 02F8013B 		strb	r3, [r2], #1
 968 031e 131A     		subs	r3, r2, r0
 969 0320 DBB2     		uxtb	r3, r3
ARM GAS  /tmp/cccVUXYA.s 			page 18


 970 0322 8B42     		cmp	r3, r1
 971 0324 F8D3     		bcc	.L190
 972 0326 8E44     		add	lr, lr, r1
 973 0328 1FFA8EFE 		uxth	lr, lr
 974 032c 4029     		cmp	r1, #64
 975 032e A4F800E0 		strh	lr, [r4]	@ movhi
 976 0332 00F05781 		beq	.L504
 977              	.L189:
 978 0336 7369     		ldr	r3, [r6, #20]
 979 0338 A6F80CE0 		strh	lr, [r6, #12]	@ movhi
 980 033c 002B     		cmp	r3, #0
 981 033e 00F09080 		beq	.L192
 982 0342 9847     		blx	r3
 983 0344 0028     		cmp	r0, #0
 984 0346 40F08C80 		bne	.L192
 985 034a 7C4B     		ldr	r3, .L515+8
 986 034c 1A6B     		ldr	r2, [r3, #48]
 987 034e 0521     		movs	r1, #5
 988 0350 42F06F02 		orr	r2, r2, #111
 989 0354 2970     		strb	r1, [r5]
 990 0356 1946     		mov	r1, r3
 991 0358 1A63     		str	r2, [r3, #48]
 992 035a 0A23     		movs	r3, #10
 993              	.L193:
 994 035c 0A6B     		ldr	r2, [r1, #48]
 995 035e 9206     		lsls	r2, r2, #26
 996 0360 01D4     		bmi	.L194
 997 0362 013B     		subs	r3, r3, #1
 998 0364 FAD1     		bne	.L193
 999              	.L194:
 1000 0366 7549     		ldr	r1, .L515+8
 1001 0368 0B6B     		ldr	r3, [r1, #48]
 1002 036a 23F00203 		bic	r3, r3, #2
 1003 036e 43F04D03 		orr	r3, r3, #77
 1004 0372 0B63     		str	r3, [r1, #48]
 1005 0374 0A23     		movs	r3, #10
 1006              	.L196:
 1007 0376 0A6B     		ldr	r2, [r1, #48]
 1008 0378 9707     		lsls	r7, r2, #30
 1009 037a 7FF56EAE 		bpl	.L141
 1010 037e 013B     		subs	r3, r3, #1
 1011 0380 F9D1     		bne	.L196
 1012 0382 6AE6     		b	.L141
 1013              	.L502:
 1014 0384 4FF48072 		mov	r2, #256
 1015 0388 4FF40055 		mov	r5, #8192
 1016 038c 4FF40074 		mov	r4, #512
 1017 0390 4FF48061 		mov	r1, #1024
 1018 0394 2220     		movs	r0, #34
 1019 0396 1A62     		str	r2, [r3, #32]
 1020 0398 5A61     		str	r2, [r3, #20]
 1021 039a 1D61     		str	r5, [r3, #16]
 1022 039c 1C61     		str	r4, [r3, #16]
 1023 039e 1961     		str	r1, [r3, #16]
 1024 03a0 03B0     		add	sp, sp, #12
 1025              		@ sp needed
 1026 03a2 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  /tmp/cccVUXYA.s 			page 19


 1027 03a6 FFF7FEBF 		b	pmc_disable_periph_clk
 1028              	.L503:
 1029 03aa 0121     		movs	r1, #1
 1030 03ac 3846     		mov	r0, r7
 1031 03ae FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1032 03b2 A8E6     		b	.L274
 1033              	.L147:
 1034 03b4 634B     		ldr	r3, .L515+16
 1035 03b6 1446     		mov	r4, r2
 1036 03b8 03F10801 		add	r1, r3, #8
 1037              	.L155:
 1038 03bc 226D     		ldr	r2, [r4, #80]
 1039 03be 03F8012F 		strb	r2, [r3, #1]!
 1040 03c2 8B42     		cmp	r3, r1
 1041 03c4 FAD1     		bne	.L155
 1042 03c6 FFF7FEFF 		bl	udc_process_setup
 1043 03ca 18BB     		cbnz	r0, .L156
 1044 03cc 236B     		ldr	r3, [r4, #48]
 1045 03ce 5B49     		ldr	r1, .L515+8
 1046 03d0 23F00403 		bic	r3, r3, #4
 1047 03d4 43F04B03 		orr	r3, r3, #75
 1048 03d8 2363     		str	r3, [r4, #48]
 1049 03da 0A23     		movs	r3, #10
 1050              	.L157:
 1051 03dc 0A6B     		ldr	r2, [r1, #48]
 1052 03de 5607     		lsls	r6, r2, #29
 1053 03e0 01D5     		bpl	.L158
 1054 03e2 013B     		subs	r3, r3, #1
 1055 03e4 FAD1     		bne	.L157
 1056              	.L158:
 1057 03e6 554B     		ldr	r3, .L515+8
 1058 03e8 1A6B     		ldr	r2, [r3, #48]
 1059 03ea 0521     		movs	r1, #5
 1060 03ec 42F06F02 		orr	r2, r2, #111
 1061 03f0 2970     		strb	r1, [r5]
 1062 03f2 1946     		mov	r1, r3
 1063 03f4 1A63     		str	r2, [r3, #48]
 1064 03f6 0A23     		movs	r3, #10
 1065              	.L160:
 1066 03f8 0A6B     		ldr	r2, [r1, #48]
 1067 03fa 9506     		lsls	r5, r2, #26
 1068 03fc 3FF52DAE 		bmi	.L141
 1069 0400 013B     		subs	r3, r3, #1
 1070 0402 F9D1     		bne	.L160
 1071 0404 29E6     		b	.L141
 1072              	.L178:
 1073 0406 4C4E     		ldr	r6, .L515+4
 1074 0408 3369     		ldr	r3, [r6, #16]
 1075 040a 002B     		cmp	r3, #0
 1076 040c 3FF45DAF 		beq	.L181
 1077 0410 9847     		blx	r3
 1078 0412 5AE7     		b	.L181
 1079              	.L156:
 1080 0414 484E     		ldr	r6, .L515+4
 1081 0416 4949     		ldr	r1, .L515+8
 1082 0418 96F90030 		ldrsb	r3, [r6]
 1083 041c 002B     		cmp	r3, #0
ARM GAS  /tmp/cccVUXYA.s 			page 20


 1084 041e 236B     		ldr	r3, [r4, #48]
 1085 0420 FFF60EAF 		blt	.L505
 1086 0424 23F00403 		bic	r3, r3, #4
 1087 0428 43F04B03 		orr	r3, r3, #75
 1088 042c 2363     		str	r3, [r4, #48]
 1089 042e 0A23     		movs	r3, #10
 1090              	.L169:
 1091 0430 0A6B     		ldr	r2, [r1, #48]
 1092 0432 5207     		lsls	r2, r2, #29
 1093 0434 01D5     		bpl	.L170
 1094 0436 013B     		subs	r3, r3, #1
 1095 0438 FAD1     		bne	.L169
 1096              	.L170:
 1097 043a F388     		ldrh	r3, [r6, #6]
 1098 043c 002B     		cmp	r3, #0
 1099 043e 40F0C980 		bne	.L172
 1100 0442 3E4B     		ldr	r3, .L515+8
 1101 0444 1A6B     		ldr	r2, [r3, #48]
 1102 0446 0321     		movs	r1, #3
 1103 0448 42F05F02 		orr	r2, r2, #95
 1104 044c 2970     		strb	r1, [r5]
 1105 044e 1946     		mov	r1, r3
 1106 0450 1A63     		str	r2, [r3, #48]
 1107 0452 0A23     		movs	r3, #10
 1108              	.L173:
 1109 0454 0A6B     		ldr	r2, [r1, #48]
 1110 0456 D706     		lsls	r7, r2, #27
 1111 0458 3FF5FFAD 		bmi	.L141
 1112 045c 013B     		subs	r3, r3, #1
 1113 045e F9D1     		bne	.L173
 1114 0460 FBE5     		b	.L141
 1115              	.L192:
 1116 0462 3649     		ldr	r1, .L515+8
 1117 0464 0B6B     		ldr	r3, [r1, #48]
 1118 0466 23F00203 		bic	r3, r3, #2
 1119 046a 43F04D03 		orr	r3, r3, #77
 1120 046e 0B63     		str	r3, [r1, #48]
 1121 0470 0A23     		movs	r3, #10
 1122              	.L198:
 1123 0472 0A6B     		ldr	r2, [r1, #48]
 1124 0474 9607     		lsls	r6, r2, #30
 1125 0476 01D5     		bpl	.L199
 1126 0478 013B     		subs	r3, r3, #1
 1127 047a FAD1     		bne	.L198
 1128              	.L199:
 1129 047c 2F4B     		ldr	r3, .L515+8
 1130 047e 1A6B     		ldr	r2, [r3, #48]
 1131 0480 0321     		movs	r1, #3
 1132 0482 42F05F02 		orr	r2, r2, #95
 1133 0486 2970     		strb	r1, [r5]
 1134 0488 1946     		mov	r1, r3
 1135 048a 1A63     		str	r2, [r3, #48]
 1136 048c 0A23     		movs	r3, #10
 1137              	.L201:
 1138 048e 0A6B     		ldr	r2, [r1, #48]
 1139 0490 D406     		lsls	r4, r2, #27
 1140 0492 3FF5E2AD 		bmi	.L141
ARM GAS  /tmp/cccVUXYA.s 			page 21


 1141 0496 013B     		subs	r3, r3, #1
 1142 0498 F9D1     		bne	.L201
 1143 049a DEE5     		b	.L141
 1144              	.L499:
 1145 049c 4FEA8A07 		lsl	r7, r10, #2
 1146 04a0 07EB0A03 		add	r3, r7, r10
 1147 04a4 08EB8303 		add	r3, r8, r3, lsl #2
 1148 04a8 226B     		ldr	r2, [r4, #48]
 1149 04aa B3F810B0 		ldrh	fp, [r3, #16]
 1150 04ae C2F30A42 		ubfx	r2, r2, #16, #11
 1151 04b2 CBF3090B 		ubfx	fp, fp, #0, #10
 1152 04b6 002A     		cmp	r2, #0
 1153 04b8 00F0B080 		beq	.L222
 1154 04bc 9968     		ldr	r1, [r3, #8]
 1155 04be D868     		ldr	r0, [r3, #12]
 1156 04c0 D3F804E0 		ldr	lr, [r3, #4]
 1157 04c4 A1EB000C 		sub	ip, r1, r0
 1158 04c8 9445     		cmp	ip, r2
 1159 04ca 00F20181 		bhi	.L506
 1160 04ce D960     		str	r1, [r3, #12]
 1161 04d0 BCF1000F 		cmp	ip, #0
 1162 04d4 00F08D81 		beq	.L507
 1163 04d8 0121     		movs	r1, #1
 1164              	.L286:
 1165 04da 8644     		add	lr, lr, r0
 1166 04dc 7346     		mov	r3, lr
 1167              	.L225:
 1168 04de 206D     		ldr	r0, [r4, #80]
 1169 04e0 03F8010B 		strb	r0, [r3], #1
 1170 04e4 A3EB0E00 		sub	r0, r3, lr
 1171 04e8 6045     		cmp	r0, ip
 1172 04ea F8D3     		bcc	.L225
 1173 04ec 4846     		mov	r0, r9
 1174 04ee 8DE80600 		stm	sp, {r1, r2}
 1175 04f2 FFF7FEFF 		bl	udd_ep_ack_out_received
 1176 04f6 9DE80600 		ldm	sp, {r1, r2}
 1177 04fa 0029     		cmp	r1, #0
 1178 04fc 00F09380 		beq	.L226
 1179              	.L227:
 1180 0500 216B     		ldr	r1, [r4, #48]
 1181 0502 11F02001 		ands	r1, r1, #32
 1182 0506 7FF4A8AD 		bne	.L141
 1183 050a 0C4B     		ldr	r3, .L515+8
 1184 050c 5744     		add	r7, r7, r10
 1185 050e 08EB8708 		add	r8, r8, r7, lsl #2
 1186 0512 5E61     		str	r6, [r3, #20]
 1187 0514 98F81130 		ldrb	r3, [r8, #17]	@ zero_extendqisi2
 1188 0518 D8F80C20 		ldr	r2, [r8, #12]
 1189 051c C8F80820 		str	r2, [r8, #8]
 1190 0520 D806     		lsls	r0, r3, #27
 1191 0522 7FF59AAD 		bpl	.L141
 1192 0526 4A46     		mov	r2, r9
 1193 0528 2846     		mov	r0, r5
 1194 052a 03B0     		add	sp, sp, #12
 1195              		@ sp needed
 1196 052c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1197 0530 FFF7FEBF 		b	udd_ep_finish_job.part.2
ARM GAS  /tmp/cccVUXYA.s 			page 22


 1198              	.L516:
 1199              		.align	2
 1200              	.L515:
 1201 0534 00000000 		.word	.LANCHOR1
 1202 0538 00000000 		.word	udd_g_ctrlreq
 1203 053c 00400340 		.word	1073954816
 1204 0540 00000000 		.word	.LANCHOR2
 1205 0544 FFFFFFFF 		.word	udd_g_ctrlreq-1
 1206              	.L500:
 1207 0548 4FEA8A07 		lsl	r7, r10, #2
 1208 054c 07EB0A02 		add	r2, r7, r10
 1209 0550 08EB8202 		add	r2, r8, r2, lsl #2
 1210 0554 02F1100E 		add	lr, r2, #16
 1211 0558 9EF80130 		ldrb	r3, [lr, #1]	@ zero_extendqisi2
 1212 055c C3F38101 		ubfx	r1, r3, #2, #2
 1213 0560 0331     		adds	r1, r1, #3
 1214 0562 61F38303 		bfi	r3, r1, #2, #2
 1215 0566 8EF80130 		strb	r3, [lr, #1]
 1216 056a 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1217 056c 13F02001 		ands	r1, r3, #32
 1218 0570 5DD0     		beq	.L230
 1219 0572 13F00C0F 		tst	r3, #12
 1220 0576 236B     		ldr	r3, [r4, #48]
 1221 0578 00F0AF80 		beq	.L231
 1222 057c 43F05F03 		orr	r3, r3, #95
 1223 0580 2363     		str	r3, [r4, #48]
 1224 0582 0A23     		movs	r3, #10
 1225              	.L232:
 1226 0584 226B     		ldr	r2, [r4, #48]
 1227 0586 D506     		lsls	r5, r2, #27
 1228 0588 01D4     		bmi	.L233
 1229 058a 013B     		subs	r3, r3, #1
 1230 058c FAD1     		bne	.L232
 1231              	.L233:
 1232 058e 236B     		ldr	r3, [r4, #48]
 1233 0590 23F00103 		bic	r3, r3, #1
 1234 0594 43F04E03 		orr	r3, r3, #78
 1235 0598 2363     		str	r3, [r4, #48]
 1236 059a 0A23     		movs	r3, #10
 1237              	.L235:
 1238 059c 226B     		ldr	r2, [r4, #48]
 1239 059e D007     		lsls	r0, r2, #31
 1240 05a0 7FF55BAD 		bpl	.L141
 1241 05a4 013B     		subs	r3, r3, #1
 1242 05a6 F9D1     		bne	.L235
 1243 05a8 57E5     		b	.L141
 1244              	.L501:
 1245 05aa 236B     		ldr	r3, [r4, #48]
 1246 05ac 23F00803 		bic	r3, r3, #8
 1247 05b0 43F04703 		orr	r3, r3, #71
 1248 05b4 2363     		str	r3, [r4, #48]
 1249 05b6 0A23     		movs	r3, #10
 1250              	.L265:
 1251 05b8 226B     		ldr	r2, [r4, #48]
 1252 05ba 1207     		lsls	r2, r2, #28
 1253 05bc 01D5     		bpl	.L266
 1254 05be 013B     		subs	r3, r3, #1
ARM GAS  /tmp/cccVUXYA.s 			page 23


 1255 05c0 FAD1     		bne	.L265
 1256              	.L266:
 1257 05c2 236B     		ldr	r3, [r4, #48]
 1258 05c4 03F4E063 		and	r3, r3, #1792
 1259 05c8 B3F5807F 		cmp	r3, #256
 1260 05cc 3FF445AD 		beq	.L141
 1261 05d0 236B     		ldr	r3, [r4, #48]
 1262 05d2 42E5     		b	.L141
 1263              	.L172:
 1264 05d4 A248     		ldr	r0, .L517
 1265 05d6 A349     		ldr	r1, .L517+4
 1266 05d8 0023     		movs	r3, #0
 1267 05da 0122     		movs	r2, #1
 1268 05dc 0380     		strh	r3, [r0]	@ movhi
 1269 05de 0B80     		strh	r3, [r1]	@ movhi
 1270 05e0 2A70     		strb	r2, [r5]
 1271 05e2 3AE5     		b	.L141
 1272              	.L504:
 1273 05e4 DFF87882 		ldr	r8, .L517
 1274 05e8 F288     		ldrh	r2, [r6, #6]
 1275 05ea B8F80030 		ldrh	r3, [r8]
 1276 05ee 7344     		add	r3, r3, lr
 1277 05f0 9A42     		cmp	r2, r3
 1278 05f2 7FF7A0AE 		ble	.L189
 1279 05f6 B389     		ldrh	r3, [r6, #12]
 1280 05f8 7345     		cmp	r3, lr
 1281 05fa 00F0D780 		beq	.L508
 1282              	.L203:
 1283 05fe 9A49     		ldr	r1, .L517+8
 1284 0600 0B6B     		ldr	r3, [r1, #48]
 1285 0602 23F00203 		bic	r3, r3, #2
 1286 0606 43F04D03 		orr	r3, r3, #77
 1287 060a 0B63     		str	r3, [r1, #48]
 1288 060c 0A23     		movs	r3, #10
 1289              	.L216:
 1290 060e 0A6B     		ldr	r2, [r1, #48]
 1291 0610 9607     		lsls	r6, r2, #30
 1292 0612 7FF522AD 		bpl	.L141
 1293 0616 013B     		subs	r3, r3, #1
 1294 0618 F9D1     		bne	.L216
 1295 061a 1EE5     		b	.L141
 1296              	.L222:
 1297 061c 4846     		mov	r0, r9
 1298 061e 0092     		str	r2, [sp]
 1299 0620 FFF7FEFF 		bl	udd_ep_ack_out_received
 1300 0624 009A     		ldr	r2, [sp]
 1301              	.L226:
 1302 0626 9345     		cmp	fp, r2
 1303 0628 3FF66AAF 		bhi	.L227
 1304 062c 15E5     		b	.L141
 1305              	.L230:
 1306 062e 1B06     		lsls	r3, r3, #24
 1307 0630 00F18480 		bmi	.L509
 1308              	.L243:
 1309 0634 07EB0A03 		add	r3, r7, r10
 1310 0638 08EB8303 		add	r3, r8, r3, lsl #2
 1311 063c D968     		ldr	r1, [r3, #12]
ARM GAS  /tmp/cccVUXYA.s 			page 24


 1312 063e 9A68     		ldr	r2, [r3, #8]
 1313 0640 9142     		cmp	r1, r2
 1314 0642 1DD3     		bcc	.L245
 1315 0644 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1316              	.L244:
 1317 0646 13F04C03 		ands	r3, r3, #76
 1318 064a 19D1     		bne	.L245
 1319              		.syntax unified
 1320              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1321 064c EFF31082 		MRS r2, primask
 1322              	@ 0 "" 2
 1323              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1324 0650 72B6     		cpsid i
 1325              	@ 0 "" 2
 1326              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1327 0652 BFF35F8F 		dmb
 1328              	@ 0 "" 2
 1329              		.thumb
 1330              		.syntax unified
 1331 0656 8549     		ldr	r1, .L517+12
 1332 0658 8348     		ldr	r0, .L517+8
 1333 065a 0B70     		strb	r3, [r1]
 1334 065c 4661     		str	r6, [r0, #20]
 1335 065e 002A     		cmp	r2, #0
 1336 0660 00F0CB80 		beq	.L510
 1337              	.L246:
 1338 0664 236B     		ldr	r3, [r4, #48]
 1339 0666 23F00103 		bic	r3, r3, #1
 1340 066a 43F04E03 		orr	r3, r3, #78
 1341 066e 2363     		str	r3, [r4, #48]
 1342 0670 0A23     		movs	r3, #10
 1343              	.L247:
 1344 0672 226B     		ldr	r2, [r4, #48]
 1345 0674 D707     		lsls	r7, r2, #31
 1346 0676 7FF5F0AC 		bpl	.L141
 1347 067a 013B     		subs	r3, r3, #1
 1348 067c F9D1     		bne	.L247
 1349 067e ECE4     		b	.L141
 1350              	.L245:
 1351 0680 B9F1030F 		cmp	r9, #3
 1352 0684 47D0     		beq	.L249
 1353 0686 07EB0A03 		add	r3, r7, r10
 1354 068a 08EB8303 		add	r3, r8, r3, lsl #2
 1355 068e 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1356 0690 13F00C0F 		tst	r3, #12
 1357 0694 64D0     		beq	.L250
 1358 0696 236B     		ldr	r3, [r4, #48]
 1359 0698 43F05F03 		orr	r3, r3, #95
 1360 069c 2363     		str	r3, [r4, #48]
 1361 069e 0A23     		movs	r3, #10
 1362              	.L251:
 1363 06a0 226B     		ldr	r2, [r4, #48]
 1364 06a2 D606     		lsls	r6, r2, #27
 1365 06a4 01D4     		bmi	.L252
 1366 06a6 013B     		subs	r3, r3, #1
 1367 06a8 FAD1     		bne	.L251
 1368              	.L252:
ARM GAS  /tmp/cccVUXYA.s 			page 25


 1369 06aa 236B     		ldr	r3, [r4, #48]
 1370 06ac 23F00103 		bic	r3, r3, #1
 1371 06b0 43F04E03 		orr	r3, r3, #78
 1372 06b4 2363     		str	r3, [r4, #48]
 1373 06b6 0A23     		movs	r3, #10
 1374              	.L254:
 1375 06b8 226B     		ldr	r2, [r4, #48]
 1376 06ba D507     		lsls	r5, r2, #31
 1377 06bc 01D5     		bpl	.L261
 1378 06be 013B     		subs	r3, r3, #1
 1379 06c0 FAD1     		bne	.L254
 1380              	.L261:
 1381 06c2 4846     		mov	r0, r9
 1382 06c4 0021     		movs	r1, #0
 1383 06c6 03B0     		add	sp, sp, #12
 1384              		@ sp needed
 1385 06c8 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1386 06cc FFF7FEBF 		b	udd_ep_in_sent
 1387              	.L506:
 1388 06d0 8118     		adds	r1, r0, r2
 1389 06d2 D960     		str	r1, [r3, #12]
 1390 06d4 9446     		mov	ip, r2
 1391 06d6 0021     		movs	r1, #0
 1392 06d8 FFE6     		b	.L286
 1393              	.L231:
 1394 06da 23F00103 		bic	r3, r3, #1
 1395 06de 43F04E03 		orr	r3, r3, #78
 1396 06e2 2363     		str	r3, [r4, #48]
 1397 06e4 0A23     		movs	r3, #10
 1398              	.L237:
 1399 06e6 226B     		ldr	r2, [r4, #48]
 1400 06e8 D107     		lsls	r1, r2, #31
 1401 06ea 01D5     		bpl	.L238
 1402 06ec 013B     		subs	r3, r3, #1
 1403 06ee FAD1     		bne	.L237
 1404              	.L238:
 1405 06f0 236B     		ldr	r3, [r4, #48]
 1406 06f2 43F06F03 		orr	r3, r3, #111
 1407 06f6 2363     		str	r3, [r4, #48]
 1408 06f8 0A23     		movs	r3, #10
 1409              	.L240:
 1410 06fa 226B     		ldr	r2, [r4, #48]
 1411 06fc 9206     		lsls	r2, r2, #26
 1412 06fe 01D4     		bmi	.L241
 1413 0700 013B     		subs	r3, r3, #1
 1414 0702 FAD1     		bne	.L240
 1415              	.L241:
 1416 0704 07EB0A03 		add	r3, r7, r10
 1417 0708 08EB8303 		add	r3, r8, r3, lsl #2
 1418 070c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1419 070e 6FF34512 		bfc	r2, #5, #1
 1420 0712 5A74     		strb	r2, [r3, #17]
 1421 0714 A1E4     		b	.L141
 1422              	.L249:
 1423 0716 0121     		movs	r1, #1
 1424 0718 4846     		mov	r0, r9
 1425 071a FFF7FEFF 		bl	udd_ep_in_sent
ARM GAS  /tmp/cccVUXYA.s 			page 26


 1426 071e 5249     		ldr	r1, .L517+8
 1427 0720 CB6B     		ldr	r3, [r1, #60]
 1428 0722 23F00103 		bic	r3, r3, #1
 1429 0726 43F04E03 		orr	r3, r3, #78
 1430 072a CB63     		str	r3, [r1, #60]
 1431 072c 0A23     		movs	r3, #10
 1432              	.L263:
 1433 072e CA6B     		ldr	r2, [r1, #60]
 1434 0730 D707     		lsls	r7, r2, #31
 1435 0732 7FF592AC 		bpl	.L141
 1436 0736 013B     		subs	r3, r3, #1
 1437 0738 F9D1     		bne	.L263
 1438 073a 8EE4     		b	.L141
 1439              	.L509:
 1440 073c 9EF801C0 		ldrb	ip, [lr, #1]	@ zero_extendqisi2
 1441 0740 D368     		ldr	r3, [r2, #12]
 1442 0742 9360     		str	r3, [r2, #8]
 1443 0744 61F3C71C 		bfi	ip, r1, #7, #1
 1444 0748 8EF801C0 		strb	ip, [lr, #1]
 1445 074c 4661     		str	r6, [r0, #20]
 1446 074e 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1447 0750 DA06     		lsls	r2, r3, #27
 1448 0752 7FF578AF 		bpl	.L244
 1449 0756 4A46     		mov	r2, r9
 1450 0758 2846     		mov	r0, r5
 1451 075a FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1452 075e 69E7     		b	.L243
 1453              	.L250:
 1454 0760 0121     		movs	r1, #1
 1455 0762 4846     		mov	r0, r9
 1456 0764 FFF7FEFF 		bl	udd_ep_in_sent
 1457 0768 0146     		mov	r1, r0
 1458 076a 90B9     		cbnz	r0, .L258
 1459 076c 1423     		movs	r3, #20
 1460 076e 03FB0A88 		mla	r8, r3, r10, r8
 1461 0772 3D4F     		ldr	r7, .L517+8
 1462 0774 98F81100 		ldrb	r0, [r8, #17]	@ zero_extendqisi2
 1463 0778 D8F80C20 		ldr	r2, [r8, #12]
 1464 077c C8F80820 		str	r2, [r8, #8]
 1465 0780 61F3C710 		bfi	r0, r1, #7, #1
 1466 0784 88F81100 		strb	r0, [r8, #17]
 1467 0788 7E61     		str	r6, [r7, #20]
 1468 078a 98F81130 		ldrb	r3, [r8, #17]	@ zero_extendqisi2
 1469 078e D806     		lsls	r0, r3, #27
 1470 0790 60D4     		bmi	.L511
 1471              	.L258:
 1472 0792 236B     		ldr	r3, [r4, #48]
 1473 0794 23F00103 		bic	r3, r3, #1
 1474 0798 43F04E03 		orr	r3, r3, #78
 1475 079c 2363     		str	r3, [r4, #48]
 1476 079e 0A23     		movs	r3, #10
 1477              	.L260:
 1478 07a0 226B     		ldr	r2, [r4, #48]
 1479 07a2 D207     		lsls	r2, r2, #31
 1480 07a4 8DD5     		bpl	.L261
 1481 07a6 013B     		subs	r3, r3, #1
 1482 07a8 FAD1     		bne	.L260
ARM GAS  /tmp/cccVUXYA.s 			page 27


 1483 07aa 8AE7     		b	.L261
 1484              	.L508:
 1485 07ac 7369     		ldr	r3, [r6, #20]
 1486 07ae 53B3     		cbz	r3, .L512
 1487 07b0 9847     		blx	r3
 1488 07b2 0028     		cmp	r0, #0
 1489 07b4 45D1     		bne	.L210
 1490 07b6 3B6B     		ldr	r3, [r7, #48]
 1491 07b8 2B49     		ldr	r1, .L517+8
 1492 07ba 0522     		movs	r2, #5
 1493 07bc 43F06F03 		orr	r3, r3, #111
 1494 07c0 2A70     		strb	r2, [r5]
 1495 07c2 0A22     		movs	r2, #10
 1496 07c4 3B63     		str	r3, [r7, #48]
 1497 07c6 01E0     		b	.L211
 1498              	.L213:
 1499 07c8 013A     		subs	r2, r2, #1
 1500 07ca 02D0     		beq	.L212
 1501              	.L211:
 1502 07cc 0B6B     		ldr	r3, [r1, #48]
 1503 07ce 9B06     		lsls	r3, r3, #26
 1504 07d0 FAD5     		bpl	.L213
 1505              	.L212:
 1506 07d2 254B     		ldr	r3, .L517+8
 1507 07d4 1A6B     		ldr	r2, [r3, #48]
 1508 07d6 22F00202 		bic	r2, r2, #2
 1509 07da 42F04D02 		orr	r2, r2, #77
 1510 07de 1A63     		str	r2, [r3, #48]
 1511 07e0 0A22     		movs	r2, #10
 1512 07e2 02E0     		b	.L214
 1513              	.L215:
 1514 07e4 013A     		subs	r2, r2, #1
 1515 07e6 3FF438AC 		beq	.L141
 1516              	.L214:
 1517 07ea 196B     		ldr	r1, [r3, #48]
 1518 07ec 8F07     		lsls	r7, r1, #30
 1519 07ee F9D4     		bmi	.L215
 1520 07f0 33E4     		b	.L141
 1521              	.L507:
 1522 07f2 4846     		mov	r0, r9
 1523 07f4 FFF7FEFF 		bl	udd_ep_ack_out_received
 1524 07f8 82E6     		b	.L227
 1525              	.L510:
 1526 07fa 0123     		movs	r3, #1
 1527 07fc 0B70     		strb	r3, [r1]
 1528              		.syntax unified
 1529              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1530 07fe BFF35F8F 		dmb
 1531              	@ 0 "" 2
 1532              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1533 0802 62B6     		cpsie i
 1534              	@ 0 "" 2
 1535              		.thumb
 1536              		.syntax unified
 1537 0804 2EE7     		b	.L246
 1538              	.L512:
 1539 0806 3B6B     		ldr	r3, [r7, #48]
ARM GAS  /tmp/cccVUXYA.s 			page 28


 1540 0808 1749     		ldr	r1, .L517+8
 1541 080a 0522     		movs	r2, #5
 1542 080c 43F06F03 		orr	r3, r3, #111
 1543 0810 2A70     		strb	r2, [r5]
 1544 0812 0A22     		movs	r2, #10
 1545 0814 3B63     		str	r3, [r7, #48]
 1546 0816 01E0     		b	.L205
 1547              	.L207:
 1548 0818 013A     		subs	r2, r2, #1
 1549 081a 02D0     		beq	.L206
 1550              	.L205:
 1551 081c 0B6B     		ldr	r3, [r1, #48]
 1552 081e 9806     		lsls	r0, r3, #26
 1553 0820 FAD5     		bpl	.L207
 1554              	.L206:
 1555 0822 114B     		ldr	r3, .L517+8
 1556 0824 1A6B     		ldr	r2, [r3, #48]
 1557 0826 22F00202 		bic	r2, r2, #2
 1558 082a 42F04D02 		orr	r2, r2, #77
 1559 082e 1A63     		str	r2, [r3, #48]
 1560 0830 0A22     		movs	r2, #10
 1561 0832 02E0     		b	.L208
 1562              	.L209:
 1563 0834 013A     		subs	r2, r2, #1
 1564 0836 3FF410AC 		beq	.L141
 1565              	.L208:
 1566 083a 196B     		ldr	r1, [r3, #48]
 1567 083c 8907     		lsls	r1, r1, #30
 1568 083e F9D4     		bmi	.L209
 1569 0840 0BE4     		b	.L141
 1570              	.L210:
 1571 0842 B8F80030 		ldrh	r3, [r8]
 1572 0846 2188     		ldrh	r1, [r4]
 1573 0848 0022     		movs	r2, #0
 1574 084a 0B44     		add	r3, r3, r1
 1575 084c A8F80030 		strh	r3, [r8]	@ movhi
 1576 0850 2280     		strh	r2, [r4]	@ movhi
 1577 0852 D4E6     		b	.L203
 1578              	.L511:
 1579 0854 2846     		mov	r0, r5
 1580 0856 4A46     		mov	r2, r9
 1581 0858 FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1582 085c 99E7     		b	.L258
 1583              	.L518:
 1584 085e 00BF     		.align	2
 1585              	.L517:
 1586 0860 00000000 		.word	.LANCHOR3
 1587 0864 00000000 		.word	.LANCHOR2
 1588 0868 00400340 		.word	1073954816
 1589 086c 00000000 		.word	g_interrupt_enabled
 1590              		.size	UDP_Handler, .-UDP_Handler
 1591              		.section	.text.udd_include_vbus_monitoring,"ax",%progbits
 1592              		.align	1
 1593              		.p2align 2,,3
 1594              		.global	udd_include_vbus_monitoring
 1595              		.syntax unified
 1596              		.thumb
ARM GAS  /tmp/cccVUXYA.s 			page 29


 1597              		.thumb_func
 1598              		.fpu softvfp
 1599              		.type	udd_include_vbus_monitoring, %function
 1600              	udd_include_vbus_monitoring:
 1601              		@ args = 0, pretend = 0, frame = 0
 1602              		@ frame_needed = 0, uses_anonymous_args = 0
 1603              		@ link register save eliminated.
 1604 0000 0020     		movs	r0, #0
 1605 0002 7047     		bx	lr
 1606              		.size	udd_include_vbus_monitoring, .-udd_include_vbus_monitoring
 1607              		.section	.text.udd_disable,"ax",%progbits
 1608              		.align	1
 1609              		.p2align 2,,3
 1610              		.global	udd_disable
 1611              		.syntax unified
 1612              		.thumb
 1613              		.thumb_func
 1614              		.fpu softvfp
 1615              		.type	udd_disable, %function
 1616              	udd_disable:
 1617              		@ args = 0, pretend = 0, frame = 0
 1618              		@ frame_needed = 0, uses_anonymous_args = 0
 1619              		@ link register save eliminated.
 1620              		.syntax unified
 1621              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1622 0000 EFF31082 		MRS r2, primask
 1623              	@ 0 "" 2
 1624              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1625 0004 72B6     		cpsid i
 1626              	@ 0 "" 2
 1627              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1628 0006 BFF35F8F 		dmb
 1629              	@ 0 "" 2
 1630              		.thumb
 1631              		.syntax unified
 1632 000a 0948     		ldr	r0, .L522
 1633 000c 094B     		ldr	r3, .L522+4
 1634 000e 0021     		movs	r1, #0
 1635 0010 0170     		strb	r1, [r0]
 1636 0012 596F     		ldr	r1, [r3, #116]
 1637 0014 41F48071 		orr	r1, r1, #256
 1638 0018 5967     		str	r1, [r3, #116]
 1639 001a 596F     		ldr	r1, [r3, #116]
 1640 001c 21F40071 		bic	r1, r1, #512
 1641 0020 5967     		str	r1, [r3, #116]
 1642 0022 22B9     		cbnz	r2, .L520
 1643 0024 0123     		movs	r3, #1
 1644 0026 0370     		strb	r3, [r0]
 1645              		.syntax unified
 1646              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1647 0028 BFF35F8F 		dmb
 1648              	@ 0 "" 2
 1649              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1650 002c 62B6     		cpsie i
 1651              	@ 0 "" 2
 1652              		.thumb
 1653              		.syntax unified
ARM GAS  /tmp/cccVUXYA.s 			page 30


 1654              	.L520:
 1655 002e 7047     		bx	lr
 1656              	.L523:
 1657              		.align	2
 1658              	.L522:
 1659 0030 00000000 		.word	g_interrupt_enabled
 1660 0034 00400340 		.word	1073954816
 1661              		.size	udd_disable, .-udd_disable
 1662              		.section	.text.udd_attach,"ax",%progbits
 1663              		.align	1
 1664              		.p2align 2,,3
 1665              		.global	udd_attach
 1666              		.syntax unified
 1667              		.thumb
 1668              		.thumb_func
 1669              		.fpu softvfp
 1670              		.type	udd_attach, %function
 1671              	udd_attach:
 1672              		@ args = 0, pretend = 0, frame = 0
 1673              		@ frame_needed = 0, uses_anonymous_args = 0
 1674 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1675              		.syntax unified
 1676              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1677 0002 EFF31084 		MRS r4, primask
 1678              	@ 0 "" 2
 1679              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1680 0006 72B6     		cpsid i
 1681              	@ 0 "" 2
 1682              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1683 0008 BFF35F8F 		dmb
 1684              	@ 0 "" 2
 1685              		.thumb
 1686              		.syntax unified
 1687 000c 124D     		ldr	r5, .L527
 1688 000e 0023     		movs	r3, #0
 1689 0010 2220     		movs	r0, #34
 1690 0012 2B70     		strb	r3, [r5]
 1691 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1692 0018 104B     		ldr	r3, .L527+4
 1693 001a 5A6F     		ldr	r2, [r3, #116]
 1694 001c 22F48072 		bic	r2, r2, #256
 1695 0020 5A67     		str	r2, [r3, #116]
 1696 0022 5A6F     		ldr	r2, [r3, #116]
 1697 0024 42F40072 		orr	r2, r2, #512
 1698 0028 5A67     		str	r2, [r3, #116]
 1699 002a 4FF48077 		mov	r7, #256
 1700 002e 4FF40056 		mov	r6, #8192
 1701 0032 4FF40070 		mov	r0, #512
 1702 0036 4FF48061 		mov	r1, #1024
 1703 003a 4FF40062 		mov	r2, #2048
 1704 003e 1F61     		str	r7, [r3, #16]
 1705 0040 1E61     		str	r6, [r3, #16]
 1706 0042 1861     		str	r0, [r3, #16]
 1707 0044 1961     		str	r1, [r3, #16]
 1708 0046 1A61     		str	r2, [r3, #16]
 1709 0048 24B9     		cbnz	r4, .L524
 1710 004a 0123     		movs	r3, #1
ARM GAS  /tmp/cccVUXYA.s 			page 31


 1711 004c 2B70     		strb	r3, [r5]
 1712              		.syntax unified
 1713              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1714 004e BFF35F8F 		dmb
 1715              	@ 0 "" 2
 1716              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1717 0052 62B6     		cpsie i
 1718              	@ 0 "" 2
 1719              		.thumb
 1720              		.syntax unified
 1721              	.L524:
 1722 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1723              	.L528:
 1724 0056 00BF     		.align	2
 1725              	.L527:
 1726 0058 00000000 		.word	g_interrupt_enabled
 1727 005c 00400340 		.word	1073954816
 1728              		.size	udd_attach, .-udd_attach
 1729              		.section	.text.udd_enable,"ax",%progbits
 1730              		.align	1
 1731              		.p2align 2,,3
 1732              		.global	udd_enable
 1733              		.syntax unified
 1734              		.thumb
 1735              		.thumb_func
 1736              		.fpu softvfp
 1737              		.type	udd_enable, %function
 1738              	udd_enable:
 1739              		@ args = 0, pretend = 0, frame = 0
 1740              		@ frame_needed = 0, uses_anonymous_args = 0
 1741 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1742              		.syntax unified
 1743              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1744 0002 EFF31086 		MRS r6, primask
 1745              	@ 0 "" 2
 1746              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1747 0006 72B6     		cpsid i
 1748              	@ 0 "" 2
 1749              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1750 0008 BFF35F8F 		dmb
 1751              	@ 0 "" 2
 1752              		.thumb
 1753              		.syntax unified
 1754 000c 144D     		ldr	r5, .L534
 1755 000e 0024     		movs	r4, #0
 1756 0010 2220     		movs	r0, #34
 1757 0012 2C70     		strb	r4, [r5]
 1758 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1759 0018 FFF7FEFF 		bl	sysclk_enable_usb
 1760 001c 114B     		ldr	r3, .L534+4
 1761 001e 1248     		ldr	r0, .L534+8
 1762 0020 5027     		movs	r7, #80
 1763 0022 0421     		movs	r1, #4
 1764 0024 83F82273 		strb	r7, [r3, #802]
 1765 0028 2246     		mov	r2, r4
 1766 002a 5960     		str	r1, [r3, #4]
 1767              	.L530:
ARM GAS  /tmp/cccVUXYA.s 			page 32


 1768 002c 02EB8203 		add	r3, r2, r2, lsl #2
 1769 0030 00EB8303 		add	r3, r0, r3, lsl #2
 1770 0034 0132     		adds	r2, r2, #1
 1771 0036 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 1772 0038 01F08301 		and	r1, r1, #131
 1773 003c 6FF3C711 		bfc	r1, #7, #1
 1774 0040 032A     		cmp	r2, #3
 1775 0042 5974     		strb	r1, [r3, #17]
 1776 0044 F2D1     		bne	.L530
 1777 0046 4FF48020 		mov	r0, #262144
 1778 004a FFF7FEFF 		bl	pmc_set_fast_startup_input
 1779 004e FFF7FEFF 		bl	udd_attach
 1780 0052 26B9     		cbnz	r6, .L529
 1781 0054 0123     		movs	r3, #1
 1782 0056 2B70     		strb	r3, [r5]
 1783              		.syntax unified
 1784              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1785 0058 BFF35F8F 		dmb
 1786              	@ 0 "" 2
 1787              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1788 005c 62B6     		cpsie i
 1789              	@ 0 "" 2
 1790              		.thumb
 1791              		.syntax unified
 1792              	.L529:
 1793 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1794              	.L535:
 1795              		.align	2
 1796              	.L534:
 1797 0060 00000000 		.word	g_interrupt_enabled
 1798 0064 00E100E0 		.word	-536813312
 1799 0068 00000000 		.word	.LANCHOR0
 1800              		.size	udd_enable, .-udd_enable
 1801              		.section	.text.udd_detach,"ax",%progbits
 1802              		.align	1
 1803              		.p2align 2,,3
 1804              		.global	udd_detach
 1805              		.syntax unified
 1806              		.thumb
 1807              		.thumb_func
 1808              		.fpu softvfp
 1809              		.type	udd_detach, %function
 1810              	udd_detach:
 1811              		@ args = 0, pretend = 0, frame = 0
 1812              		@ frame_needed = 0, uses_anonymous_args = 0
 1813              		@ link register save eliminated.
 1814 0000 044B     		ldr	r3, .L537
 1815 0002 5A6F     		ldr	r2, [r3, #116]
 1816 0004 42F48072 		orr	r2, r2, #256
 1817 0008 5A67     		str	r2, [r3, #116]
 1818 000a 5A6F     		ldr	r2, [r3, #116]
 1819 000c 22F40072 		bic	r2, r2, #512
 1820 0010 5A67     		str	r2, [r3, #116]
 1821 0012 7047     		bx	lr
 1822              	.L538:
 1823              		.align	2
 1824              	.L537:
ARM GAS  /tmp/cccVUXYA.s 			page 33


 1825 0014 00400340 		.word	1073954816
 1826              		.size	udd_detach, .-udd_detach
 1827              		.section	.text.udd_is_high_speed,"ax",%progbits
 1828              		.align	1
 1829              		.p2align 2,,3
 1830              		.global	udd_is_high_speed
 1831              		.syntax unified
 1832              		.thumb
 1833              		.thumb_func
 1834              		.fpu softvfp
 1835              		.type	udd_is_high_speed, %function
 1836              	udd_is_high_speed:
 1837              		@ args = 0, pretend = 0, frame = 0
 1838              		@ frame_needed = 0, uses_anonymous_args = 0
 1839              		@ link register save eliminated.
 1840 0000 0020     		movs	r0, #0
 1841 0002 7047     		bx	lr
 1842              		.size	udd_is_high_speed, .-udd_is_high_speed
 1843              		.section	.text.udd_set_address,"ax",%progbits
 1844              		.align	1
 1845              		.p2align 2,,3
 1846              		.global	udd_set_address
 1847              		.syntax unified
 1848              		.thumb
 1849              		.thumb_func
 1850              		.fpu softvfp
 1851              		.type	udd_set_address, %function
 1852              	udd_set_address:
 1853              		@ args = 0, pretend = 0, frame = 0
 1854              		@ frame_needed = 0, uses_anonymous_args = 0
 1855              		@ link register save eliminated.
 1856 0000 0C4B     		ldr	r3, .L545
 1857 0002 5A68     		ldr	r2, [r3, #4]
 1858 0004 22F00102 		bic	r2, r2, #1
 1859 0008 5A60     		str	r2, [r3, #4]
 1860 000a 9A68     		ldr	r2, [r3, #8]
 1861 000c 22F48072 		bic	r2, r2, #256
 1862 0010 9A60     		str	r2, [r3, #8]
 1863 0012 70B1     		cbz	r0, .L540
 1864 0014 9A68     		ldr	r2, [r3, #8]
 1865 0016 00F07F00 		and	r0, r0, #127
 1866 001a 22F07F02 		bic	r2, r2, #127
 1867 001e 1043     		orrs	r0, r0, r2
 1868 0020 9860     		str	r0, [r3, #8]
 1869 0022 9A68     		ldr	r2, [r3, #8]
 1870 0024 42F48072 		orr	r2, r2, #256
 1871 0028 9A60     		str	r2, [r3, #8]
 1872 002a 5A68     		ldr	r2, [r3, #4]
 1873 002c 42F00102 		orr	r2, r2, #1
 1874 0030 5A60     		str	r2, [r3, #4]
 1875              	.L540:
 1876 0032 7047     		bx	lr
 1877              	.L546:
 1878              		.align	2
 1879              	.L545:
 1880 0034 00400340 		.word	1073954816
 1881              		.size	udd_set_address, .-udd_set_address
ARM GAS  /tmp/cccVUXYA.s 			page 34


 1882              		.section	.text.udd_getaddress,"ax",%progbits
 1883              		.align	1
 1884              		.p2align 2,,3
 1885              		.global	udd_getaddress
 1886              		.syntax unified
 1887              		.thumb
 1888              		.thumb_func
 1889              		.fpu softvfp
 1890              		.type	udd_getaddress, %function
 1891              	udd_getaddress:
 1892              		@ args = 0, pretend = 0, frame = 0
 1893              		@ frame_needed = 0, uses_anonymous_args = 0
 1894              		@ link register save eliminated.
 1895 0000 044B     		ldr	r3, .L550
 1896 0002 5868     		ldr	r0, [r3, #4]
 1897 0004 10F00100 		ands	r0, r0, #1
 1898 0008 1CBF     		itt	ne
 1899 000a 9868     		ldrne	r0, [r3, #8]
 1900 000c 00F07F00 		andne	r0, r0, #127
 1901 0010 7047     		bx	lr
 1902              	.L551:
 1903 0012 00BF     		.align	2
 1904              	.L550:
 1905 0014 00400340 		.word	1073954816
 1906              		.size	udd_getaddress, .-udd_getaddress
 1907              		.section	.text.udd_get_frame_number,"ax",%progbits
 1908              		.align	1
 1909              		.p2align 2,,3
 1910              		.global	udd_get_frame_number
 1911              		.syntax unified
 1912              		.thumb
 1913              		.thumb_func
 1914              		.fpu softvfp
 1915              		.type	udd_get_frame_number, %function
 1916              	udd_get_frame_number:
 1917              		@ args = 0, pretend = 0, frame = 0
 1918              		@ frame_needed = 0, uses_anonymous_args = 0
 1919              		@ link register save eliminated.
 1920 0000 024B     		ldr	r3, .L553
 1921 0002 1868     		ldr	r0, [r3]
 1922 0004 C0F30A00 		ubfx	r0, r0, #0, #11
 1923 0008 7047     		bx	lr
 1924              	.L554:
 1925 000a 00BF     		.align	2
 1926              	.L553:
 1927 000c 00400340 		.word	1073954816
 1928              		.size	udd_get_frame_number, .-udd_get_frame_number
 1929              		.section	.text.udd_get_micro_frame_number,"ax",%progbits
 1930              		.align	1
 1931              		.p2align 2,,3
 1932              		.global	udd_get_micro_frame_number
 1933              		.syntax unified
 1934              		.thumb
 1935              		.thumb_func
 1936              		.fpu softvfp
 1937              		.type	udd_get_micro_frame_number, %function
 1938              	udd_get_micro_frame_number:
ARM GAS  /tmp/cccVUXYA.s 			page 35


 1939              		@ args = 0, pretend = 0, frame = 0
 1940              		@ frame_needed = 0, uses_anonymous_args = 0
 1941              		@ link register save eliminated.
 1942 0000 0020     		movs	r0, #0
 1943 0002 7047     		bx	lr
 1944              		.size	udd_get_micro_frame_number, .-udd_get_micro_frame_number
 1945              		.section	.text.udd_send_remotewakeup,"ax",%progbits
 1946              		.align	1
 1947              		.p2align 2,,3
 1948              		.global	udd_send_remotewakeup
 1949              		.syntax unified
 1950              		.thumb
 1951              		.thumb_func
 1952              		.fpu softvfp
 1953              		.type	udd_send_remotewakeup, %function
 1954              	udd_send_remotewakeup:
 1955              		@ args = 0, pretend = 0, frame = 0
 1956              		@ frame_needed = 0, uses_anonymous_args = 0
 1957 0000 08B5     		push	{r3, lr}
 1958 0002 2220     		movs	r0, #34
 1959 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 1960 0008 044B     		ldr	r3, .L558
 1961 000a 5A68     		ldr	r2, [r3, #4]
 1962 000c 42F00402 		orr	r2, r2, #4
 1963 0010 5A60     		str	r2, [r3, #4]
 1964 0012 5A68     		ldr	r2, [r3, #4]
 1965 0014 22F00402 		bic	r2, r2, #4
 1966 0018 5A60     		str	r2, [r3, #4]
 1967 001a 08BD     		pop	{r3, pc}
 1968              	.L559:
 1969              		.align	2
 1970              	.L558:
 1971 001c 00400340 		.word	1073954816
 1972              		.size	udd_send_remotewakeup, .-udd_send_remotewakeup
 1973              		.section	.text.udd_set_setup_payload,"ax",%progbits
 1974              		.align	1
 1975              		.p2align 2,,3
 1976              		.global	udd_set_setup_payload
 1977              		.syntax unified
 1978              		.thumb
 1979              		.thumb_func
 1980              		.fpu softvfp
 1981              		.type	udd_set_setup_payload, %function
 1982              	udd_set_setup_payload:
 1983              		@ args = 0, pretend = 0, frame = 0
 1984              		@ frame_needed = 0, uses_anonymous_args = 0
 1985              		@ link register save eliminated.
 1986 0000 014B     		ldr	r3, .L561
 1987 0002 9860     		str	r0, [r3, #8]
 1988 0004 9981     		strh	r1, [r3, #12]	@ movhi
 1989 0006 7047     		bx	lr
 1990              	.L562:
 1991              		.align	2
 1992              	.L561:
 1993 0008 00000000 		.word	udd_g_ctrlreq
 1994              		.size	udd_set_setup_payload, .-udd_set_setup_payload
 1995              		.section	.text.udd_ep_alloc,"ax",%progbits
ARM GAS  /tmp/cccVUXYA.s 			page 36


 1996              		.align	1
 1997              		.p2align 2,,3
 1998              		.global	udd_ep_alloc
 1999              		.syntax unified
 2000              		.thumb
 2001              		.thumb_func
 2002              		.fpu softvfp
 2003              		.type	udd_ep_alloc, %function
 2004              	udd_ep_alloc:
 2005              		@ args = 0, pretend = 0, frame = 0
 2006              		@ frame_needed = 0, uses_anonymous_args = 0
 2007              		@ link register save eliminated.
 2008 0000 F0B4     		push	{r4, r5, r6, r7}
 2009 0002 00F00F04 		and	r4, r0, #15
 2010 0006 032C     		cmp	r4, #3
 2011 0008 4ED8     		bhi	.L576
 2012 000a A300     		lsls	r3, r4, #2
 2013 000c 03F14023 		add	r3, r3, #1073758208
 2014 0010 03F54033 		add	r3, r3, #196608
 2015 0014 1D6B     		ldr	r5, [r3, #48]
 2016 0016 15F40045 		ands	r5, r5, #32768
 2017 001a 45D1     		bne	.L576
 2018 001c 01F00306 		and	r6, r1, #3
 2019 0020 012E     		cmp	r6, #1
 2020 0022 3ED0     		beq	.L582
 2021              	.L565:
 2022 0024 402A     		cmp	r2, #64
 2023 0026 3FDC     		bgt	.L576
 2024 0028 651E     		subs	r5, r4, #1
 2025 002a 234E     		ldr	r6, .L584
 2026 002c 05EB8505 		add	r5, r5, r5, lsl #2
 2027 0030 06EB8505 		add	r5, r6, r5, lsl #2
 2028 0034 40B2     		sxtb	r0, r0
 2029 0036 2F8A     		ldrh	r7, [r5, #16]
 2030 0038 62F30907 		bfi	r7, r2, #0, #10
 2031 003c 2F82     		strh	r7, [r5, #16]	@ movhi
 2032 003e 6A7C     		ldrb	r2, [r5, #17]	@ zero_extendqisi2
 2033 0040 02F07F02 		and	r2, r2, #127
 2034 0044 6FF34512 		bfc	r2, #5, #1
 2035 0048 0028     		cmp	r0, #0
 2036 004a 6A74     		strb	r2, [r5, #17]
 2037 004c 2FDB     		blt	.L583
 2038              	.L566:
 2039 004e 1B4D     		ldr	r5, .L584+4
 2040 0050 0122     		movs	r2, #1
 2041 0052 AE6A     		ldr	r6, [r5, #40]
 2042 0054 02FA04F4 		lsl	r4, r2, r4
 2043 0058 2643     		orrs	r6, r6, r4
 2044 005a AE62     		str	r6, [r5, #40]
 2045              	.L567:
 2046 005c AA6A     		ldr	r2, [r5, #40]
 2047 005e 1442     		tst	r4, r2
 2048 0060 FCD0     		beq	.L567
 2049 0062 AA6A     		ldr	r2, [r5, #40]
 2050 0064 22EA0404 		bic	r4, r2, r4
 2051 0068 AC62     		str	r4, [r5, #40]
 2052 006a 0A02     		lsls	r2, r1, #8
ARM GAS  /tmp/cccVUXYA.s 			page 37


 2053 006c 196B     		ldr	r1, [r3, #48]
 2054 006e 41F04F01 		orr	r1, r1, #79
 2055 0072 02F44072 		and	r2, r2, #768
 2056 0076 0028     		cmp	r0, #0
 2057 0078 21F40741 		bic	r1, r1, #34560
 2058 007c B4BF     		ite	lt
 2059 007e 42F40442 		orrlt	r2, r2, #33792
 2060 0082 42F40042 		orrge	r2, r2, #32768
 2061 0086 21F08001 		bic	r1, r1, #128
 2062 008a 1143     		orrs	r1, r1, r2
 2063 008c 1963     		str	r1, [r3, #48]
 2064 008e 0A21     		movs	r1, #10
 2065              	.L570:
 2066 0090 186B     		ldr	r0, [r3, #48]
 2067 0092 32EA0000 		bics	r0, r2, r0
 2068 0096 01D0     		beq	.L577
 2069 0098 0139     		subs	r1, r1, #1
 2070 009a F9D1     		bne	.L570
 2071              	.L577:
 2072 009c 0120     		movs	r0, #1
 2073 009e F0BC     		pop	{r4, r5, r6, r7}
 2074 00a0 7047     		bx	lr
 2075              	.L582:
 2076 00a2 0CB1     		cbz	r4, .L576
 2077 00a4 032C     		cmp	r4, #3
 2078 00a6 BDD1     		bne	.L565
 2079              	.L576:
 2080 00a8 0020     		movs	r0, #0
 2081 00aa F0BC     		pop	{r4, r5, r6, r7}
 2082 00ac 7047     		bx	lr
 2083              	.L583:
 2084 00ae D2B2     		uxtb	r2, r2
 2085 00b0 6FF38302 		bfc	r2, #2, #2
 2086 00b4 6A74     		strb	r2, [r5, #17]
 2087 00b6 CAE7     		b	.L566
 2088              	.L585:
 2089              		.align	2
 2090              	.L584:
 2091 00b8 00000000 		.word	.LANCHOR0
 2092 00bc 00400340 		.word	1073954816
 2093              		.size	udd_ep_alloc, .-udd_ep_alloc
 2094              		.section	.text.udd_ep_free,"ax",%progbits
 2095              		.align	1
 2096              		.p2align 2,,3
 2097              		.global	udd_ep_free
 2098              		.syntax unified
 2099              		.thumb
 2100              		.thumb_func
 2101              		.fpu softvfp
 2102              		.type	udd_ep_free, %function
 2103              	udd_ep_free:
 2104              		@ args = 0, pretend = 0, frame = 0
 2105              		@ frame_needed = 0, uses_anonymous_args = 0
 2106              		@ link register save eliminated.
 2107 0000 00F00F02 		and	r2, r0, #15
 2108 0004 032A     		cmp	r2, #3
 2109 0006 12D8     		bhi	.L586
ARM GAS  /tmp/cccVUXYA.s 			page 38


 2110 0008 9200     		lsls	r2, r2, #2
 2111 000a 02F14022 		add	r2, r2, #1073758208
 2112 000e 02F54032 		add	r2, r2, #196608
 2113 0012 0A23     		movs	r3, #10
 2114 0014 116B     		ldr	r1, [r2, #48]
 2115 0016 21F40041 		bic	r1, r1, #32768
 2116 001a 41F04F01 		orr	r1, r1, #79
 2117 001e 1163     		str	r1, [r2, #48]
 2118              	.L588:
 2119 0020 116B     		ldr	r1, [r2, #48]
 2120 0022 0904     		lsls	r1, r1, #16
 2121 0024 01D5     		bpl	.L589
 2122 0026 013B     		subs	r3, r3, #1
 2123 0028 FAD1     		bne	.L588
 2124              	.L589:
 2125 002a FFF7FEBF 		b	udd_ep_abort_job
 2126              	.L586:
 2127 002e 7047     		bx	lr
 2128              		.size	udd_ep_free, .-udd_ep_free
 2129              		.section	.text.udd_ep_is_halted,"ax",%progbits
 2130              		.align	1
 2131              		.p2align 2,,3
 2132              		.global	udd_ep_is_halted
 2133              		.syntax unified
 2134              		.thumb
 2135              		.thumb_func
 2136              		.fpu softvfp
 2137              		.type	udd_ep_is_halted, %function
 2138              	udd_ep_is_halted:
 2139              		@ args = 0, pretend = 0, frame = 0
 2140              		@ frame_needed = 0, uses_anonymous_args = 0
 2141              		@ link register save eliminated.
 2142 0000 00F00F00 		and	r0, r0, #15
 2143 0004 0328     		cmp	r0, #3
 2144 0006 14D8     		bhi	.L598
 2145 0008 431E     		subs	r3, r0, #1
 2146 000a 0B4A     		ldr	r2, .L601
 2147 000c 03EB8303 		add	r3, r3, r3, lsl #2
 2148 0010 02EB8303 		add	r3, r2, r3, lsl #2
 2149 0014 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2150 0016 9B06     		lsls	r3, r3, #26
 2151 0018 01D5     		bpl	.L600
 2152 001a 0120     		movs	r0, #1
 2153 001c 7047     		bx	lr
 2154              	.L600:
 2155 001e 0C30     		adds	r0, r0, #12
 2156 0020 064B     		ldr	r3, .L601+4
 2157 0022 53F82030 		ldr	r3, [r3, r0, lsl #2]
 2158 0026 13F0280F 		tst	r3, #40
 2159 002a 14BF     		ite	ne
 2160 002c 0120     		movne	r0, #1
 2161 002e 0020     		moveq	r0, #0
 2162 0030 7047     		bx	lr
 2163              	.L598:
 2164 0032 0020     		movs	r0, #0
 2165 0034 7047     		bx	lr
 2166              	.L602:
ARM GAS  /tmp/cccVUXYA.s 			page 39


 2167 0036 00BF     		.align	2
 2168              	.L601:
 2169 0038 00000000 		.word	.LANCHOR0
 2170 003c 00400340 		.word	1073954816
 2171              		.size	udd_ep_is_halted, .-udd_ep_is_halted
 2172              		.section	.text.udd_ep_set_halt,"ax",%progbits
 2173              		.align	1
 2174              		.p2align 2,,3
 2175              		.global	udd_ep_set_halt
 2176              		.syntax unified
 2177              		.thumb
 2178              		.thumb_func
 2179              		.fpu softvfp
 2180              		.type	udd_ep_set_halt, %function
 2181              	udd_ep_set_halt:
 2182              		@ args = 0, pretend = 0, frame = 0
 2183              		@ frame_needed = 0, uses_anonymous_args = 0
 2184              		@ link register save eliminated.
 2185 0000 70B4     		push	{r4, r5, r6}
 2186 0002 00F00F04 		and	r4, r0, #15
 2187 0006 032C     		cmp	r4, #3
 2188 0008 21D8     		bhi	.L612
 2189              		.syntax unified
 2190              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2191 000a EFF31086 		MRS r6, primask
 2192              	@ 0 "" 2
 2193              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2194 000e 72B6     		cpsid i
 2195              	@ 0 "" 2
 2196              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2197 0010 BFF35F8F 		dmb
 2198              	@ 0 "" 2
 2199              		.thumb
 2200              		.syntax unified
 2201 0014 244D     		ldr	r5, .L622
 2202 0016 0023     		movs	r3, #0
 2203 0018 0206     		lsls	r2, r0, #24
 2204 001a 2B70     		strb	r3, [r5]
 2205 001c 1AD4     		bmi	.L621
 2206              	.L605:
 2207 001e A200     		lsls	r2, r4, #2
 2208 0020 02F14022 		add	r2, r2, #1073758208
 2209 0024 02F54032 		add	r2, r2, #196608
 2210 0028 0A23     		movs	r3, #10
 2211 002a 116B     		ldr	r1, [r2, #48]
 2212 002c 41F06F01 		orr	r1, r1, #111
 2213 0030 1163     		str	r1, [r2, #48]
 2214              	.L608:
 2215 0032 116B     		ldr	r1, [r2, #48]
 2216 0034 8906     		lsls	r1, r1, #26
 2217 0036 01D4     		bmi	.L609
 2218 0038 013B     		subs	r3, r3, #1
 2219 003a FAD1     		bne	.L608
 2220              	.L609:
 2221 003c 0120     		movs	r0, #1
 2222 003e 1B4B     		ldr	r3, .L622+4
 2223 0040 00FA04F4 		lsl	r4, r0, r4
ARM GAS  /tmp/cccVUXYA.s 			page 40


 2224 0044 1C61     		str	r4, [r3, #16]
 2225 0046 EEB1     		cbz	r6, .L620
 2226              	.L611:
 2227 0048 0120     		movs	r0, #1
 2228 004a 70BC     		pop	{r4, r5, r6}
 2229 004c 7047     		bx	lr
 2230              	.L612:
 2231 004e 0020     		movs	r0, #0
 2232 0050 70BC     		pop	{r4, r5, r6}
 2233 0052 7047     		bx	lr
 2234              	.L621:
 2235 0054 154B     		ldr	r3, .L622+4
 2236 0056 04F10C01 		add	r1, r4, #12
 2237 005a 601E     		subs	r0, r4, #1
 2238 005c 53F82130 		ldr	r3, [r3, r1, lsl #2]
 2239 0060 DB06     		lsls	r3, r3, #27
 2240 0062 15D5     		bpl	.L618
 2241 0064 124B     		ldr	r3, .L622+8
 2242 0066 8200     		lsls	r2, r0, #2
 2243              	.L606:
 2244 0068 0244     		add	r2, r2, r0
 2245 006a 03EB8203 		add	r3, r3, r2, lsl #2
 2246 006e 0120     		movs	r0, #1
 2247 0070 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2248 0072 0E49     		ldr	r1, .L622+4
 2249 0074 42F02002 		orr	r2, r2, #32
 2250 0078 00FA04F4 		lsl	r4, r0, r4
 2251 007c 5A74     		strb	r2, [r3, #17]
 2252 007e 0C61     		str	r4, [r1, #16]
 2253 0080 002E     		cmp	r6, #0
 2254 0082 E1D1     		bne	.L611
 2255              	.L620:
 2256 0084 2870     		strb	r0, [r5]
 2257              		.syntax unified
 2258              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2259 0086 BFF35F8F 		dmb
 2260              	@ 0 "" 2
 2261              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2262 008a 62B6     		cpsie i
 2263              	@ 0 "" 2
 2264              		.thumb
 2265              		.syntax unified
 2266 008c 70BC     		pop	{r4, r5, r6}
 2267 008e 7047     		bx	lr
 2268              	.L618:
 2269 0090 8200     		lsls	r2, r0, #2
 2270 0092 074B     		ldr	r3, .L622+8
 2271 0094 1118     		adds	r1, r2, r0
 2272 0096 03EB8101 		add	r1, r3, r1, lsl #2
 2273 009a 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 2274 009c C1F38101 		ubfx	r1, r1, #2, #2
 2275 00a0 0129     		cmp	r1, #1
 2276 00a2 E1DC     		bgt	.L606
 2277 00a4 BBE7     		b	.L605
 2278              	.L623:
 2279 00a6 00BF     		.align	2
 2280              	.L622:
ARM GAS  /tmp/cccVUXYA.s 			page 41


 2281 00a8 00000000 		.word	g_interrupt_enabled
 2282 00ac 00400340 		.word	1073954816
 2283 00b0 00000000 		.word	.LANCHOR0
 2284              		.size	udd_ep_set_halt, .-udd_ep_set_halt
 2285              		.section	.text.udd_ep_clear_halt,"ax",%progbits
 2286              		.align	1
 2287              		.p2align 2,,3
 2288              		.global	udd_ep_clear_halt
 2289              		.syntax unified
 2290              		.thumb
 2291              		.thumb_func
 2292              		.fpu softvfp
 2293              		.type	udd_ep_clear_halt, %function
 2294              	udd_ep_clear_halt:
 2295              		@ args = 0, pretend = 0, frame = 0
 2296              		@ frame_needed = 0, uses_anonymous_args = 0
 2297 0000 00F00F00 		and	r0, r0, #15
 2298 0004 0328     		cmp	r0, #3
 2299 0006 40D8     		bhi	.L635
 2300 0008 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2301 000a 451E     		subs	r5, r0, #1
 2302 000c AC00     		lsls	r4, r5, #2
 2303 000e 234E     		ldr	r6, .L655
 2304 0010 6219     		adds	r2, r4, r5
 2305 0012 8300     		lsls	r3, r0, #2
 2306 0014 06EB8202 		add	r2, r6, r2, lsl #2
 2307 0018 03F14023 		add	r3, r3, #1073758208
 2308 001c 03F54033 		add	r3, r3, #196608
 2309 0020 517C     		ldrb	r1, [r2, #17]	@ zero_extendqisi2
 2310 0022 1F6B     		ldr	r7, [r3, #48]
 2311 0024 6FF34511 		bfc	r1, #5, #1
 2312 0028 5174     		strb	r1, [r2, #17]
 2313 002a BA06     		lsls	r2, r7, #26
 2314 002c 2BD5     		bpl	.L653
 2315 002e 1A6B     		ldr	r2, [r3, #48]
 2316 0030 22F02002 		bic	r2, r2, #32
 2317 0034 42F04F02 		orr	r2, r2, #79
 2318 0038 1A63     		str	r2, [r3, #48]
 2319 003a 0A22     		movs	r2, #10
 2320              	.L627:
 2321 003c 196B     		ldr	r1, [r3, #48]
 2322 003e 8F06     		lsls	r7, r1, #26
 2323 0040 01D5     		bpl	.L628
 2324 0042 013A     		subs	r2, r2, #1
 2325 0044 FAD1     		bne	.L627
 2326              	.L628:
 2327 0046 1649     		ldr	r1, .L655+4
 2328 0048 0122     		movs	r2, #1
 2329 004a 8F6A     		ldr	r7, [r1, #40]
 2330 004c 02FA00F0 		lsl	r0, r2, r0
 2331 0050 0743     		orrs	r7, r7, r0
 2332 0052 8F62     		str	r7, [r1, #40]
 2333              	.L630:
 2334 0054 8A6A     		ldr	r2, [r1, #40]
 2335 0056 1042     		tst	r0, r2
 2336 0058 FCD0     		beq	.L630
 2337 005a 8A6A     		ldr	r2, [r1, #40]
ARM GAS  /tmp/cccVUXYA.s 			page 42


 2338 005c 22EA0000 		bic	r0, r2, r0
 2339 0060 8862     		str	r0, [r1, #40]
 2340 0062 1A6B     		ldr	r2, [r3, #48]
 2341 0064 22F00802 		bic	r2, r2, #8
 2342 0068 42F04702 		orr	r2, r2, #71
 2343 006c 1A63     		str	r2, [r3, #48]
 2344 006e 0A22     		movs	r2, #10
 2345              	.L631:
 2346 0070 196B     		ldr	r1, [r3, #48]
 2347 0072 0807     		lsls	r0, r1, #28
 2348 0074 01D5     		bpl	.L632
 2349 0076 013A     		subs	r2, r2, #1
 2350 0078 FAD1     		bne	.L631
 2351              	.L632:
 2352 007a 2C44     		add	r4, r4, r5
 2353 007c A400     		lsls	r4, r4, #2
 2354 007e 3319     		adds	r3, r6, r4
 2355 0080 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2356 0082 D106     		lsls	r1, r2, #27
 2357 0084 03D4     		bmi	.L654
 2358              	.L653:
 2359 0086 0120     		movs	r0, #1
 2360 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2361              	.L635:
 2362 008a 0020     		movs	r0, #0
 2363 008c 7047     		bx	lr
 2364              	.L654:
 2365 008e 6FF30412 		bfc	r2, #4, #1
 2366 0092 3159     		ldr	r1, [r6, r4]
 2367 0094 5A74     		strb	r2, [r3, #17]
 2368 0096 8847     		blx	r1
 2369 0098 0120     		movs	r0, #1
 2370 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2371              	.L656:
 2372              		.align	2
 2373              	.L655:
 2374 009c 00000000 		.word	.LANCHOR0
 2375 00a0 00400340 		.word	1073954816
 2376              		.size	udd_ep_clear_halt, .-udd_ep_clear_halt
 2377              		.section	.text.udd_ep_run,"ax",%progbits
 2378              		.align	1
 2379              		.p2align 2,,3
 2380              		.global	udd_ep_run
 2381              		.syntax unified
 2382              		.thumb
 2383              		.thumb_func
 2384              		.fpu softvfp
 2385              		.type	udd_ep_run, %function
 2386              	udd_ep_run:
 2387              		@ args = 4, pretend = 0, frame = 0
 2388              		@ frame_needed = 0, uses_anonymous_args = 0
 2389 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2390 0004 00F00F07 		and	r7, r0, #15
 2391 0008 032F     		cmp	r7, #3
 2392 000a 28D8     		bhi	.L660
 2393 000c BC00     		lsls	r4, r7, #2
 2394 000e 04F14024 		add	r4, r4, #1073758208
ARM GAS  /tmp/cccVUXYA.s 			page 43


 2395 0012 04F54034 		add	r4, r4, #196608
 2396 0016 256B     		ldr	r5, [r4, #48]
 2397 0018 2E04     		lsls	r6, r5, #16
 2398 001a 20D5     		bpl	.L660
 2399 001c 07F1FF3C 		add	ip, r7, #-1
 2400 0020 4FEA8C09 		lsl	r9, ip, #2
 2401 0024 DFF8FCE0 		ldr	lr, .L680+4
 2402 0028 09EB0C06 		add	r6, r9, ip
 2403 002c 0EEB8606 		add	r6, lr, r6, lsl #2
 2404 0030 757C     		ldrb	r5, [r6, #17]	@ zero_extendqisi2
 2405 0032 AD06     		lsls	r5, r5, #26
 2406 0034 13D4     		bmi	.L660
 2407 0036 256B     		ldr	r5, [r4, #48]
 2408 0038 15F0200A 		ands	r10, r5, #32
 2409 003c 0FD1     		bne	.L660
 2410              		.syntax unified
 2411              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2412 003e EFF31085 		MRS r5, primask
 2413              	@ 0 "" 2
 2414              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2415 0042 72B6     		cpsid i
 2416              	@ 0 "" 2
 2417              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2418 0044 BFF35F8F 		dmb
 2419              	@ 0 "" 2
 2420              		.thumb
 2421              		.syntax unified
 2422 0048 96F811B0 		ldrb	fp, [r6, #17]	@ zero_extendqisi2
 2423 004c DFF8D880 		ldr	r8, .L680+8
 2424 0050 1BF0100F 		tst	fp, #16
 2425 0054 88F800A0 		strb	r10, [r8]
 2426 0058 04D0     		beq	.L661
 2427 005a 002D     		cmp	r5, #0
 2428 005c 48D0     		beq	.L675
 2429              	.L660:
 2430 005e 0020     		movs	r0, #0
 2431 0060 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2432              	.L661:
 2433 0064 96F811A0 		ldrb	r10, [r6, #17]	@ zero_extendqisi2
 2434 0068 4AF0100A 		orr	r10, r10, #16
 2435 006c 86F811A0 		strb	r10, [r6, #17]
 2436 0070 BDB3     		cbz	r5, .L676
 2437              	.L662:
 2438 0072 09EB0C05 		add	r5, r9, ip
 2439 0076 AD00     		lsls	r5, r5, #2
 2440 0078 0EEB050A 		add	r10, lr, r5
 2441 007c 0A9E     		ldr	r6, [sp, #40]
 2442 007e 4EF80560 		str	r6, [lr, r5]
 2443 0082 0025     		movs	r5, #0
 2444 0084 CAF80420 		str	r2, [r10, #4]
 2445 0088 CAF80830 		str	r3, [r10, #8]
 2446 008c CAF80C50 		str	r5, [r10, #12]
 2447 0090 E1B1     		cbz	r1, .L677
 2448              	.L663:
 2449 0092 09EB0C03 		add	r3, r9, ip
 2450 0096 0EEB8303 		add	r3, lr, r3, lsl #2
 2451 009a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  /tmp/cccVUXYA.s 			page 44


 2452 009c 61F38612 		bfi	r2, r1, #6, #1
 2453 00a0 6FF3C712 		bfc	r2, #7, #1
 2454 00a4 5A74     		strb	r2, [r3, #17]
 2455              		.syntax unified
 2456              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2457 00a6 EFF31085 		MRS r5, primask
 2458              	@ 0 "" 2
 2459              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2460 00aa 72B6     		cpsid i
 2461              	@ 0 "" 2
 2462              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2463 00ac BFF35F8F 		dmb
 2464              	@ 0 "" 2
 2465              		.thumb
 2466              		.syntax unified
 2467 00b0 1B4B     		ldr	r3, .L680
 2468 00b2 0121     		movs	r1, #1
 2469 00b4 0026     		movs	r6, #0
 2470 00b6 01FA07F2 		lsl	r2, r1, r7
 2471 00ba 88F80060 		strb	r6, [r8]
 2472 00be 1A61     		str	r2, [r3, #16]
 2473 00c0 0306     		lsls	r3, r0, #24
 2474 00c2 1ED4     		bmi	.L678
 2475              	.L665:
 2476 00c4 0120     		movs	r0, #1
 2477 00c6 2DB1     		cbz	r5, .L679
 2478 00c8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2479              	.L677:
 2480 00cc B3FA83F1 		clz	r1, r3
 2481 00d0 4909     		lsrs	r1, r1, #5
 2482 00d2 DEE7     		b	.L663
 2483              	.L679:
 2484 00d4 88F80000 		strb	r0, [r8]
 2485              		.syntax unified
 2486              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2487 00d8 BFF35F8F 		dmb
 2488              	@ 0 "" 2
 2489              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2490 00dc 62B6     		cpsie i
 2491              	@ 0 "" 2
 2492              		.thumb
 2493              		.syntax unified
 2494 00de BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2495              	.L676:
 2496 00e2 0125     		movs	r5, #1
 2497 00e4 88F80050 		strb	r5, [r8]
 2498              		.syntax unified
 2499              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2500 00e8 BFF35F8F 		dmb
 2501              	@ 0 "" 2
 2502              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2503 00ec 62B6     		cpsie i
 2504              	@ 0 "" 2
 2505              		.thumb
 2506              		.syntax unified
 2507 00ee C0E7     		b	.L662
 2508              	.L675:
ARM GAS  /tmp/cccVUXYA.s 			page 45


 2509 00f0 0123     		movs	r3, #1
 2510 00f2 88F80030 		strb	r3, [r8]
 2511              		.syntax unified
 2512              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2513 00f6 BFF35F8F 		dmb
 2514              	@ 0 "" 2
 2515              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2516 00fa 62B6     		cpsie i
 2517              	@ 0 "" 2
 2518              		.thumb
 2519              		.syntax unified
 2520 00fc 2846     		mov	r0, r5
 2521 00fe BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2522              	.L678:
 2523 0102 246B     		ldr	r4, [r4, #48]
 2524 0104 14F01104 		ands	r4, r4, #17
 2525 0108 DCD1     		bne	.L665
 2526 010a 3846     		mov	r0, r7
 2527 010c FFF7FEFF 		bl	udd_ep_in_sent
 2528 0110 0028     		cmp	r0, #0
 2529 0112 D7D0     		beq	.L665
 2530 0114 2146     		mov	r1, r4
 2531 0116 3846     		mov	r0, r7
 2532 0118 FFF7FEFF 		bl	udd_ep_in_sent
 2533 011c D2E7     		b	.L665
 2534              	.L681:
 2535 011e 00BF     		.align	2
 2536              	.L680:
 2537 0120 00400340 		.word	1073954816
 2538 0124 00000000 		.word	.LANCHOR0
 2539 0128 00000000 		.word	g_interrupt_enabled
 2540              		.size	udd_ep_run, .-udd_ep_run
 2541              		.section	.text.udd_ep_abort,"ax",%progbits
 2542              		.align	1
 2543              		.p2align 2,,3
 2544              		.global	udd_ep_abort
 2545              		.syntax unified
 2546              		.thumb
 2547              		.thumb_func
 2548              		.fpu softvfp
 2549              		.type	udd_ep_abort, %function
 2550              	udd_ep_abort:
 2551              		@ args = 0, pretend = 0, frame = 0
 2552              		@ frame_needed = 0, uses_anonymous_args = 0
 2553 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2554 0002 00F00F05 		and	r5, r0, #15
 2555 0006 032D     		cmp	r5, #3
 2556 0008 2FD8     		bhi	.L682
 2557              		.syntax unified
 2558              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2559 000a EFF31083 		MRS r3, primask
 2560              	@ 0 "" 2
 2561              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2562 000e 72B6     		cpsid i
 2563              	@ 0 "" 2
 2564              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2565 0010 BFF35F8F 		dmb
ARM GAS  /tmp/cccVUXYA.s 			page 46


 2566              	@ 0 "" 2
 2567              		.thumb
 2568              		.syntax unified
 2569 0014 0121     		movs	r1, #1
 2570 0016 3D4A     		ldr	r2, .L734
 2571 0018 3D4E     		ldr	r6, .L734+4
 2572 001a 01FA05F4 		lsl	r4, r1, r5
 2573 001e 0027     		movs	r7, #0
 2574 0020 1770     		strb	r7, [r2]
 2575 0022 7461     		str	r4, [r6, #20]
 2576 0024 13B3     		cbz	r3, .L732
 2577 0026 0606     		lsls	r6, r0, #24
 2578 0028 26D4     		bmi	.L685
 2579              	.L733:
 2580 002a AE00     		lsls	r6, r5, #2
 2581 002c 06F14026 		add	r6, r6, #1073758208
 2582 0030 06F54036 		add	r6, r6, #196608
 2583 0034 336B     		ldr	r3, [r6, #48]
 2584 0036 13F0420F 		tst	r3, #66
 2585 003a 06D0     		beq	.L687
 2586              	.L716:
 2587 003c 2846     		mov	r0, r5
 2588 003e FFF7FEFF 		bl	udd_ep_ack_out_received
 2589 0042 336B     		ldr	r3, [r6, #48]
 2590 0044 13F0420F 		tst	r3, #66
 2591 0048 F8D1     		bne	.L716
 2592              	.L687:
 2593 004a 314A     		ldr	r2, .L734+4
 2594 004c 936A     		ldr	r3, [r2, #40]
 2595 004e 2343     		orrs	r3, r3, r4
 2596 0050 9362     		str	r3, [r2, #40]
 2597              	.L704:
 2598 0052 936A     		ldr	r3, [r2, #40]
 2599 0054 1C42     		tst	r4, r3
 2600 0056 FCD0     		beq	.L704
 2601 0058 936A     		ldr	r3, [r2, #40]
 2602 005a 23EA0404 		bic	r4, r3, r4
 2603 005e 2846     		mov	r0, r5
 2604 0060 9462     		str	r4, [r2, #40]
 2605 0062 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2606 0066 FFF7FEBF 		b	udd_ep_abort_job
 2607              	.L682:
 2608 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2609              	.L732:
 2610 006c 1170     		strb	r1, [r2]
 2611              		.syntax unified
 2612              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2613 006e BFF35F8F 		dmb
 2614              	@ 0 "" 2
 2615              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2616 0072 62B6     		cpsie i
 2617              	@ 0 "" 2
 2618              		.thumb
 2619              		.syntax unified
 2620 0074 0606     		lsls	r6, r0, #24
 2621 0076 D8D5     		bpl	.L733
 2622              	.L685:
ARM GAS  /tmp/cccVUXYA.s 			page 47


 2623 0078 AB00     		lsls	r3, r5, #2
 2624 007a 03F14023 		add	r3, r3, #1073758208
 2625 007e 03F54033 		add	r3, r3, #196608
 2626 0082 1A6B     		ldr	r2, [r3, #48]
 2627 0084 D006     		lsls	r0, r2, #27
 2628 0086 2AD5     		bpl	.L699
 2629 0088 EDB1     		cbz	r5, .L692
 2630 008a 032D     		cmp	r5, #3
 2631 008c 1BD0     		beq	.L692
 2632 008e 1A6B     		ldr	r2, [r3, #48]
 2633 0090 22F01002 		bic	r2, r2, #16
 2634 0094 42F04F02 		orr	r2, r2, #79
 2635 0098 1A63     		str	r2, [r3, #48]
 2636 009a 0A22     		movs	r2, #10
 2637              	.L693:
 2638 009c 196B     		ldr	r1, [r3, #48]
 2639 009e C906     		lsls	r1, r1, #27
 2640 00a0 01D5     		bpl	.L715
 2641 00a2 013A     		subs	r2, r2, #1
 2642 00a4 FAD1     		bne	.L693
 2643              	.L715:
 2644 00a6 1A6B     		ldr	r2, [r3, #48]
 2645 00a8 D206     		lsls	r2, r2, #27
 2646 00aa FCD4     		bmi	.L715
 2647 00ac 1A6B     		ldr	r2, [r3, #48]
 2648 00ae 42F05F02 		orr	r2, r2, #95
 2649 00b2 1A63     		str	r2, [r3, #48]
 2650 00b4 0A22     		movs	r2, #10
 2651              	.L696:
 2652 00b6 196B     		ldr	r1, [r3, #48]
 2653 00b8 CF06     		lsls	r7, r1, #27
 2654 00ba 01D4     		bmi	.L723
 2655 00bc 013A     		subs	r2, r2, #1
 2656 00be FAD1     		bne	.L696
 2657              	.L723:
 2658 00c0 1A6B     		ldr	r2, [r3, #48]
 2659 00c2 D606     		lsls	r6, r2, #27
 2660 00c4 FCD5     		bpl	.L723
 2661              	.L692:
 2662 00c6 1A6B     		ldr	r2, [r3, #48]
 2663 00c8 22F01002 		bic	r2, r2, #16
 2664 00cc 42F04F02 		orr	r2, r2, #79
 2665 00d0 1A63     		str	r2, [r3, #48]
 2666 00d2 0A22     		movs	r2, #10
 2667              	.L691:
 2668 00d4 196B     		ldr	r1, [r3, #48]
 2669 00d6 C806     		lsls	r0, r1, #27
 2670 00d8 01D5     		bpl	.L699
 2671 00da 013A     		subs	r2, r2, #1
 2672 00dc FAD1     		bne	.L691
 2673              	.L699:
 2674 00de 1A6B     		ldr	r2, [r3, #48]
 2675 00e0 22F00102 		bic	r2, r2, #1
 2676 00e4 42F04E02 		orr	r2, r2, #78
 2677 00e8 1A63     		str	r2, [r3, #48]
 2678 00ea 0A22     		movs	r2, #10
 2679              	.L689:
ARM GAS  /tmp/cccVUXYA.s 			page 48


 2680 00ec 196B     		ldr	r1, [r3, #48]
 2681 00ee C907     		lsls	r1, r1, #31
 2682 00f0 01D5     		bpl	.L701
 2683 00f2 013A     		subs	r2, r2, #1
 2684 00f4 FAD1     		bne	.L689
 2685              	.L701:
 2686 00f6 074A     		ldr	r2, .L734+8
 2687 00f8 6B1E     		subs	r3, r5, #1
 2688 00fa 03EB8303 		add	r3, r3, r3, lsl #2
 2689 00fe 02EB8303 		add	r3, r2, r3, lsl #2
 2690 0102 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2691 0104 6FF38302 		bfc	r2, #2, #2
 2692 0108 5A74     		strb	r2, [r3, #17]
 2693 010a 9EE7     		b	.L687
 2694              	.L735:
 2695              		.align	2
 2696              	.L734:
 2697 010c 00000000 		.word	g_interrupt_enabled
 2698 0110 00400340 		.word	1073954816
 2699 0114 00000000 		.word	.LANCHOR0
 2700              		.size	udd_ep_abort, .-udd_ep_abort
 2701              		.section	.text.udd_ep_wait_stall_clear,"ax",%progbits
 2702              		.align	1
 2703              		.p2align 2,,3
 2704              		.global	udd_ep_wait_stall_clear
 2705              		.syntax unified
 2706              		.thumb
 2707              		.thumb_func
 2708              		.fpu softvfp
 2709              		.type	udd_ep_wait_stall_clear, %function
 2710              	udd_ep_wait_stall_clear:
 2711              		@ args = 0, pretend = 0, frame = 0
 2712              		@ frame_needed = 0, uses_anonymous_args = 0
 2713 0000 00F00F02 		and	r2, r0, #15
 2714 0004 032A     		cmp	r2, #3
 2715 0006 24D8     		bhi	.L740
 2716 0008 38B5     		push	{r3, r4, r5, lr}
 2717 000a 9400     		lsls	r4, r2, #2
 2718 000c 04F14024 		add	r4, r4, #1073758208
 2719 0010 04F54034 		add	r4, r4, #196608
 2720 0014 206B     		ldr	r0, [r4, #48]
 2721 0016 10F40040 		ands	r0, r0, #32768
 2722 001a 19D0     		beq	.L737
 2723 001c 013A     		subs	r2, r2, #1
 2724 001e 9300     		lsls	r3, r2, #2
 2725 0020 0E4D     		ldr	r5, .L747
 2726 0022 9818     		adds	r0, r3, r2
 2727 0024 05EB8000 		add	r0, r5, r0, lsl #2
 2728 0028 407C     		ldrb	r0, [r0, #17]	@ zero_extendqisi2
 2729 002a 10F0100F 		tst	r0, #16
 2730 002e 0ED1     		bne	.L742
 2731 0030 246B     		ldr	r4, [r4, #48]
 2732 0032 A406     		lsls	r4, r4, #26
 2733 0034 01D4     		bmi	.L738
 2734 0036 8006     		lsls	r0, r0, #26
 2735 0038 0DD5     		bpl	.L739
 2736              	.L738:
ARM GAS  /tmp/cccVUXYA.s 			page 49


 2737 003a 1A44     		add	r2, r2, r3
 2738 003c 9200     		lsls	r2, r2, #2
 2739 003e AB18     		adds	r3, r5, r2
 2740 0040 A950     		str	r1, [r5, r2]
 2741 0042 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2742 0044 42F01002 		orr	r2, r2, #16
 2743 0048 5A74     		strb	r2, [r3, #17]
 2744 004a 0120     		movs	r0, #1
 2745 004c 38BD     		pop	{r3, r4, r5, pc}
 2746              	.L742:
 2747 004e 0020     		movs	r0, #0
 2748              	.L737:
 2749 0050 38BD     		pop	{r3, r4, r5, pc}
 2750              	.L740:
 2751 0052 0020     		movs	r0, #0
 2752 0054 7047     		bx	lr
 2753              	.L739:
 2754 0056 8847     		blx	r1
 2755 0058 0120     		movs	r0, #1
 2756 005a 38BD     		pop	{r3, r4, r5, pc}
 2757              	.L748:
 2758              		.align	2
 2759              	.L747:
 2760 005c 00000000 		.word	.LANCHOR0
 2761              		.size	udd_ep_wait_stall_clear, .-udd_ep_wait_stall_clear
 2762              		.comm	udd_g_ctrlreq,24,4
 2763              		.section	.bss.b_shortpacket.8268,"aw",%nobits
 2764              		.set	.LANCHOR4,. + 0
 2765              		.type	b_shortpacket.8268, %object
 2766              		.size	b_shortpacket.8268, 1
 2767              	b_shortpacket.8268:
 2768 0000 00       		.space	1
 2769              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2770              		.align	2
 2771              		.type	cpu_irq_critical_section_counter, %object
 2772              		.size	cpu_irq_critical_section_counter, 4
 2773              	cpu_irq_critical_section_counter:
 2774 0000 00000000 		.space	4
 2775              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2776              		.type	cpu_irq_prev_interrupt_state, %object
 2777              		.size	cpu_irq_prev_interrupt_state, 1
 2778              	cpu_irq_prev_interrupt_state:
 2779 0000 00       		.space	1
 2780              		.section	.bss.udd_ctrl_payload_nb_trans,"aw",%nobits
 2781              		.align	1
 2782              		.set	.LANCHOR2,. + 0
 2783              		.type	udd_ctrl_payload_nb_trans, %object
 2784              		.size	udd_ctrl_payload_nb_trans, 2
 2785              	udd_ctrl_payload_nb_trans:
 2786 0000 0000     		.space	2
 2787              		.section	.bss.udd_ctrl_prev_payload_nb_trans,"aw",%nobits
 2788              		.align	1
 2789              		.set	.LANCHOR3,. + 0
 2790              		.type	udd_ctrl_prev_payload_nb_trans, %object
 2791              		.size	udd_ctrl_prev_payload_nb_trans, 2
 2792              	udd_ctrl_prev_payload_nb_trans:
 2793 0000 0000     		.space	2
ARM GAS  /tmp/cccVUXYA.s 			page 50


 2794              		.section	.bss.udd_ep_control_state,"aw",%nobits
 2795              		.set	.LANCHOR1,. + 0
 2796              		.type	udd_ep_control_state, %object
 2797              		.size	udd_ep_control_state, 1
 2798              	udd_ep_control_state:
 2799 0000 00       		.space	1
 2800              		.section	.bss.udd_ep_job,"aw",%nobits
 2801              		.align	2
 2802              		.set	.LANCHOR0,. + 0
 2803              		.type	udd_ep_job, %object
 2804              		.size	udd_ep_job, 60
 2805              	udd_ep_job:
 2806 0000 00000000 		.space	60
 2806      00000000 
 2806      00000000 
 2806      00000000 
 2806      00000000 
 2807              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
