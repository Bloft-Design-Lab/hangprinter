ARM GAS  /tmp/cc40AiIs.s 			page 1


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
  11              		.file	"uotghs_device.c"
  12              		.section	.text.udd_ep_finish_job.part.2,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	udd_ep_finish_job.part.2, %function
  20              	udd_ep_finish_job.part.2:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 30B4     		push	{r4, r5}
  25 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
  26 0004 0468     		ldr	r4, [r0]
  27 0006 6FF30003 		bfc	r3, #0, #1
  28 000a 0375     		strb	r3, [r0, #20]
  29 000c 64B1     		cbz	r4, .L1
  30 000e 0D46     		mov	r5, r1
  31 0010 064B     		ldr	r3, .L9
  32 0012 8168     		ldr	r1, [r0, #8]
  33 0014 53F82230 		ldr	r3, [r3, r2, lsl #2]
  34 0018 2846     		mov	r0, r5
  35 001a DB05     		lsls	r3, r3, #23
  36 001c 48BF     		it	mi
  37 001e 42F08002 		orrmi	r2, r2, #128
  38 0022 2346     		mov	r3, r4
  39 0024 30BC     		pop	{r4, r5}
  40 0026 1847     		bx	r3	@ indirect register sibling call
  41              	.L1:
  42 0028 30BC     		pop	{r4, r5}
  43 002a 7047     		bx	lr
  44              	.L10:
  45              		.align	2
  46              	.L9:
  47 002c 00C10A40 		.word	1074446592
  48              		.size	udd_ep_finish_job.part.2, .-udd_ep_finish_job.part.2
  49              		.section	.text.udd_ep_abort_job,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  56              		.type	udd_ep_abort_job, %function
  57              	udd_ep_abort_job:
ARM GAS  /tmp/cc40AiIs.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 00F00F02 		and	r2, r0, #15
  62 0004 531E     		subs	r3, r2, #1
  63 0006 0648     		ldr	r0, .L14
  64 0008 03EB4303 		add	r3, r3, r3, lsl #1
  65 000c 00EBC300 		add	r0, r0, r3, lsl #3
  66 0010 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
  67 0012 DB07     		lsls	r3, r3, #31
  68 0014 00D4     		bmi	.L13
  69 0016 7047     		bx	lr
  70              	.L13:
  71 0018 0121     		movs	r1, #1
  72 001a FFF7FEBF 		b	udd_ep_finish_job.part.2
  73              	.L15:
  74 001e 00BF     		.align	2
  75              	.L14:
  76 0020 00000000 		.word	.LANCHOR0
  77              		.size	udd_ep_abort_job, .-udd_ep_abort_job
  78              		.section	.text.udd_ctrl_send_zlp_in,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu softvfp
  85              		.type	udd_ctrl_send_zlp_in, %function
  86              	udd_ctrl_send_zlp_in:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 0322     		movs	r2, #3
  91 0002 0D4B     		ldr	r3, .L19
  92 0004 70B4     		push	{r4, r5, r6}
  93 0006 1A70     		strb	r2, [r3]
  94              		.syntax unified
  95              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  96 0008 EFF31083 		MRS r3, primask
  97              	@ 0 "" 2
  98              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
  99 000c 72B6     		cpsid i
 100              	@ 0 "" 2
 101              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 102 000e BFF35F8F 		dmb
 103              	@ 0 "" 2
 104              		.thumb
 105              		.syntax unified
 106 0012 0122     		movs	r2, #1
 107 0014 0820     		movs	r0, #8
 108 0016 0026     		movs	r6, #0
 109 0018 084C     		ldr	r4, .L19+4
 110 001a 0949     		ldr	r1, .L19+8
 111 001c 094D     		ldr	r5, .L19+12
 112 001e 2E70     		strb	r6, [r5]
 113 0020 2260     		str	r2, [r4]
 114 0022 0A60     		str	r2, [r1]
ARM GAS  /tmp/cc40AiIs.s 			page 3


 115 0024 2060     		str	r0, [r4]
 116 0026 0860     		str	r0, [r1]
 117 0028 1BB9     		cbnz	r3, .L16
 118 002a 2A70     		strb	r2, [r5]
 119              		.syntax unified
 120              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 121 002c BFF35F8F 		dmb
 122              	@ 0 "" 2
 123              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 124 0030 62B6     		cpsie i
 125              	@ 0 "" 2
 126              		.thumb
 127              		.syntax unified
 128              	.L16:
 129 0032 70BC     		pop	{r4, r5, r6}
 130 0034 7047     		bx	lr
 131              	.L20:
 132 0036 00BF     		.align	2
 133              	.L19:
 134 0038 00000000 		.word	.LANCHOR1
 135 003c 60C10A40 		.word	1074446688
 136 0040 F0C10A40 		.word	1074446832
 137 0044 00000000 		.word	g_interrupt_enabled
 138              		.size	udd_ctrl_send_zlp_in, .-udd_ctrl_send_zlp_in
 139              		.section	.text.udd_ctrl_init,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu softvfp
 146              		.type	udd_ctrl_init, %function
 147              	udd_ctrl_init:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 10B4     		push	{r4}
 152              		.syntax unified
 153              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 154 0002 EFF31083 		MRS r3, primask
 155              	@ 0 "" 2
 156              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 157 0006 72B6     		cpsid i
 158              	@ 0 "" 2
 159              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 160 0008 BFF35F8F 		dmb
 161              	@ 0 "" 2
 162              		.thumb
 163              		.syntax unified
 164 000c 0024     		movs	r4, #0
 165 000e 0121     		movs	r1, #1
 166 0010 0A4A     		ldr	r2, .L24
 167 0012 0B48     		ldr	r0, .L24+4
 168 0014 1470     		strb	r4, [r2]
 169 0016 0160     		str	r1, [r0]
 170 0018 1BB9     		cbnz	r3, .L22
 171 001a 1170     		strb	r1, [r2]
ARM GAS  /tmp/cc40AiIs.s 			page 4


 172              		.syntax unified
 173              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 174 001c BFF35F8F 		dmb
 175              	@ 0 "" 2
 176              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 177 0020 62B6     		cpsie i
 178              	@ 0 "" 2
 179              		.thumb
 180              		.syntax unified
 181              	.L22:
 182 0022 0023     		movs	r3, #0
 183 0024 0224     		movs	r4, #2
 184 0026 074A     		ldr	r2, .L24+8
 185 0028 0748     		ldr	r0, .L24+12
 186 002a 0849     		ldr	r1, .L24+16
 187 002c 0460     		str	r4, [r0]
 188 002e 1361     		str	r3, [r2, #16]
 189 0030 0B70     		strb	r3, [r1]
 190 0032 5361     		str	r3, [r2, #20]
 191 0034 9381     		strh	r3, [r2, #12]	@ movhi
 192 0036 10BC     		pop	{r4}
 193 0038 7047     		bx	lr
 194              	.L25:
 195 003a 00BF     		.align	2
 196              	.L24:
 197 003c 00000000 		.word	g_interrupt_enabled
 198 0040 20C20A40 		.word	1074446880
 199 0044 00000000 		.word	udd_g_ctrlreq
 200 0048 60C10A40 		.word	1074446688
 201 004c 00000000 		.word	.LANCHOR1
 202              		.size	udd_ctrl_init, .-udd_ctrl_init
 203              		.section	.text.udd_ctrl_in_sent,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu softvfp
 210              		.type	udd_ctrl_in_sent, %function
 211              	udd_ctrl_in_sent:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 215              		.syntax unified
 216              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 217 0004 EFF31083 		MRS r3, primask
 218              	@ 0 "" 2
 219              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 220 0008 72B6     		cpsid i
 221              	@ 0 "" 2
 222              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 223 000a BFF35F8F 		dmb
 224              	@ 0 "" 2
 225              		.thumb
 226              		.syntax unified
 227 000e 0020     		movs	r0, #0
 228 0010 0122     		movs	r2, #1
ARM GAS  /tmp/cc40AiIs.s 			page 5


 229 0012 4F4D     		ldr	r5, .L57
 230 0014 4F49     		ldr	r1, .L57+4
 231 0016 2870     		strb	r0, [r5]
 232 0018 0A60     		str	r2, [r1]
 233 001a 002B     		cmp	r3, #0
 234 001c 51D0     		beq	.L53
 235 001e DFF85481 		ldr	r8, .L57+36
 236 0022 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 237 0026 032B     		cmp	r3, #3
 238 0028 55D0     		beq	.L54
 239              	.L28:
 240 002a 4B4F     		ldr	r7, .L57+8
 241 002c 4B4E     		ldr	r6, .L57+12
 242 002e 3A88     		ldrh	r2, [r7]
 243 0030 B489     		ldrh	r4, [r6, #12]
 244 0032 A41A     		subs	r4, r4, r2
 245 0034 A4B2     		uxth	r4, r4
 246 0036 54B3     		cbz	r4, .L30
 247 0038 1146     		mov	r1, r2
 248 003a DFF83C91 		ldr	r9, .L57+40
 249              	.L31:
 250 003e 3F2C     		cmp	r4, #63
 251 0040 3BD9     		bls	.L38
 252 0042 0023     		movs	r3, #0
 253 0044 4024     		movs	r4, #64
 254 0046 89F80030 		strb	r3, [r9]
 255              	.L39:
 256 004a B268     		ldr	r2, [r6, #8]
 257              		.syntax unified
 258              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 259 004c EFF31080 		MRS r0, primask
 260              	@ 0 "" 2
 261              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 262 0050 72B6     		cpsid i
 263              	@ 0 "" 2
 264              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 265 0052 BFF35F8F 		dmb
 266              	@ 0 "" 2
 267              		.thumb
 268              		.syntax unified
 269 0056 0026     		movs	r6, #0
 270 0058 414B     		ldr	r3, .L57+16
 271 005a 2E70     		strb	r6, [r5]
 272 005c 1B68     		ldr	r3, [r3]
 273 005e 9B07     		lsls	r3, r3, #30
 274 0060 41D4     		bmi	.L40
 275 0062 44B1     		cbz	r4, .L46
 276 0064 3F4B     		ldr	r3, .L57+20
 277 0066 0A44     		add	r2, r2, r1
 278              	.L45:
 279 0068 12F8011B 		ldrb	r1, [r2], #1	@ zero_extendqisi2
 280 006c 03F8011B 		strb	r1, [r3], #1
 281 0070 D9B2     		uxtb	r1, r3
 282 0072 A142     		cmp	r1, r4
 283 0074 F8D3     		bcc	.L45
 284              	.L46:
 285 0076 0122     		movs	r2, #1
ARM GAS  /tmp/cc40AiIs.s 			page 6


 286 0078 3B88     		ldrh	r3, [r7]
 287 007a 3B4E     		ldr	r6, .L57+24
 288 007c 3B49     		ldr	r1, .L57+28
 289 007e 1C44     		add	r4, r4, r3
 290 0080 3C80     		strh	r4, [r7]	@ movhi
 291 0082 3260     		str	r2, [r6]
 292 0084 0A60     		str	r2, [r1]
 293 0086 0028     		cmp	r0, #0
 294 0088 55D0     		beq	.L55
 295              	.L26:
 296 008a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 297              	.L30:
 298 008e 3849     		ldr	r1, .L57+32
 299 0090 F088     		ldrh	r0, [r6, #6]
 300 0092 0B88     		ldrh	r3, [r1]
 301 0094 1344     		add	r3, r3, r2
 302 0096 9BB2     		uxth	r3, r3
 303 0098 9842     		cmp	r0, r3
 304 009a 0B80     		strh	r3, [r1]	@ movhi
 305 009c 29D0     		beq	.L32
 306 009e DFF8D890 		ldr	r9, .L57+40
 307 00a2 99F800A0 		ldrb	r10, [r9]	@ zero_extendqisi2
 308 00a6 BAF1000F 		cmp	r10, #0
 309 00aa 22D1     		bne	.L32
 310 00ac 7369     		ldr	r3, [r6, #20]
 311 00ae 002B     		cmp	r3, #0
 312 00b0 4BD0     		beq	.L36
 313 00b2 9847     		blx	r3
 314 00b4 0028     		cmp	r0, #0
 315 00b6 44D1     		bne	.L37
 316 00b8 3988     		ldrh	r1, [r7]
 317              	.L38:
 318 00ba 0123     		movs	r3, #1
 319 00bc 89F80030 		strb	r3, [r9]
 320 00c0 C3E7     		b	.L39
 321              	.L53:
 322 00c2 2A70     		strb	r2, [r5]
 323              		.syntax unified
 324              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 325 00c4 BFF35F8F 		dmb
 326              	@ 0 "" 2
 327              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 328 00c8 62B6     		cpsie i
 329              	@ 0 "" 2
 330              		.thumb
 331              		.syntax unified
 332 00ca DFF8A880 		ldr	r8, .L57+36
 333 00ce 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 334 00d2 032B     		cmp	r3, #3
 335 00d4 A9D1     		bne	.L28
 336              	.L54:
 337 00d6 214B     		ldr	r3, .L57+12
 338 00d8 1B69     		ldr	r3, [r3, #16]
 339 00da 03B1     		cbz	r3, .L29
 340 00dc 9847     		blx	r3
 341              	.L29:
 342 00de BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  /tmp/cc40AiIs.s 			page 7


 343 00e2 FFF7FEBF 		b	udd_ctrl_init
 344              	.L40:
 345 00e6 E0B1     		cbz	r0, .L56
 346 00e8 0423     		movs	r3, #4
 347 00ea 88F80030 		strb	r3, [r8]
 348 00ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 349              	.L32:
 350 00f2 0423     		movs	r3, #4
 351 00f4 88F80030 		strb	r3, [r8]
 352              		.syntax unified
 353              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 354 00f8 EFF31083 		MRS r3, primask
 355              	@ 0 "" 2
 356              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 357 00fc 72B6     		cpsid i
 358              	@ 0 "" 2
 359              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 360 00fe BFF35F8F 		dmb
 361              	@ 0 "" 2
 362              		.thumb
 363              		.syntax unified
 364 0102 1022     		movs	r2, #16
 365 0104 0024     		movs	r4, #0
 366 0106 1848     		ldr	r0, .L57+24
 367 0108 1849     		ldr	r1, .L57+28
 368 010a 2C70     		strb	r4, [r5]
 369 010c 0260     		str	r2, [r0]
 370 010e 0A60     		str	r2, [r1]
 371 0110 002B     		cmp	r3, #0
 372 0112 BAD1     		bne	.L26
 373 0114 0123     		movs	r3, #1
 374 0116 2B70     		strb	r3, [r5]
 375              		.syntax unified
 376              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 377 0118 BFF35F8F 		dmb
 378              	@ 0 "" 2
 379              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 380 011c 62B6     		cpsie i
 381              	@ 0 "" 2
 382              		.thumb
 383              		.syntax unified
 384 011e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 385              	.L56:
 386 0122 0123     		movs	r3, #1
 387 0124 2B70     		strb	r3, [r5]
 388              		.syntax unified
 389              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 390 0126 BFF35F8F 		dmb
 391              	@ 0 "" 2
 392              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 393 012a 62B6     		cpsie i
 394              	@ 0 "" 2
 395              		.thumb
 396              		.syntax unified
 397 012c 0423     		movs	r3, #4
 398 012e 88F80030 		strb	r3, [r8]
 399 0132 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  /tmp/cc40AiIs.s 			page 8


 400              	.L55:
 401 0136 2A70     		strb	r2, [r5]
 402              		.syntax unified
 403              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 404 0138 BFF35F8F 		dmb
 405              	@ 0 "" 2
 406              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 407 013c 62B6     		cpsie i
 408              	@ 0 "" 2
 409              		.thumb
 410              		.syntax unified
 411 013e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 412              	.L37:
 413 0142 3C80     		strh	r4, [r7]	@ movhi
 414 0144 5146     		mov	r1, r10
 415 0146 B489     		ldrh	r4, [r6, #12]
 416 0148 79E7     		b	.L31
 417              	.L36:
 418 014a 1146     		mov	r1, r2
 419 014c B5E7     		b	.L38
 420              	.L58:
 421 014e 00BF     		.align	2
 422              	.L57:
 423 0150 00000000 		.word	g_interrupt_enabled
 424 0154 20C20A40 		.word	1074446880
 425 0158 00000000 		.word	.LANCHOR2
 426 015c 00000000 		.word	udd_g_ctrlreq
 427 0160 30C10A40 		.word	1074446640
 428 0164 00001820 		.word	538443776
 429 0168 60C10A40 		.word	1074446688
 430 016c F0C10A40 		.word	1074446832
 431 0170 00000000 		.word	.LANCHOR3
 432 0174 00000000 		.word	.LANCHOR1
 433 0178 00000000 		.word	.LANCHOR4
 434              		.size	udd_ctrl_in_sent, .-udd_ctrl_in_sent
 435              		.section	.text.udd_ep_trans_done,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.syntax unified
 439              		.thumb
 440              		.thumb_func
 441              		.fpu softvfp
 442              		.type	udd_ep_trans_done, %function
 443              	udd_ep_trans_done:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 447 0004 411E     		subs	r1, r0, #1
 448 0006 0246     		mov	r2, r0
 449 0008 4FEA410E 		lsl	lr, r1, #1
 450 000c 5C48     		ldr	r0, .L96
 451 000e 0EEB0103 		add	r3, lr, r1
 452 0012 00EBC303 		add	r3, r0, r3, lsl #3
 453 0016 1C7D     		ldrb	r4, [r3, #20]	@ zero_extendqisi2
 454 0018 E607     		lsls	r6, r4, #31
 455 001a 48D5     		bpl	.L59
 456 001c DE68     		ldr	r6, [r3, #12]
ARM GAS  /tmp/cc40AiIs.s 			page 9


 457 001e 9B68     		ldr	r3, [r3, #8]
 458 0020 9E42     		cmp	r6, r3
 459 0022 69D0     		beq	.L62
 460 0024 574C     		ldr	r4, .L96+4
 461 0026 9B1B     		subs	r3, r3, r6
 462 0028 54F82250 		ldr	r5, [r4, r2, lsl #2]
 463 002c B3F5803F 		cmp	r3, #65536
 464 0030 92BF     		itee	ls
 465 0032 1F04     		lslls	r7, r3, #16
 466 0034 4FF48033 		movhi	r3, #65536
 467 0038 0027     		movhi	r7, #0
 468 003a 4FEA8208 		lsl	r8, r2, #2
 469 003e ED05     		lsls	r5, r5, #23
 470 0040 08EB0409 		add	r9, r8, r4
 471 0044 35D5     		bpl	.L64
 472 0046 0825     		movs	r5, #8
 473 0048 54F82240 		ldr	r4, [r4, r2, lsl #2]
 474 004c C4F30214 		ubfx	r4, r4, #4, #3
 475 0050 05FA04F4 		lsl	r4, r5, r4
 476 0054 013C     		subs	r4, r4, #1
 477 0056 1C42     		tst	r4, r3
 478 0058 70D1     		bne	.L92
 479              	.L65:
 480 005a 0EEB0105 		add	r5, lr, r1
 481 005e 00EBC505 		add	r5, r0, r5, lsl #3
 482 0062 6C68     		ldr	r4, [r5, #4]
 483 0064 DFF838C1 		ldr	ip, .L96+32
 484 0068 2644     		add	r6, r6, r4
 485 006a 0CEB0214 		add	r4, ip, r2, lsl #4
 486 006e 6660     		str	r6, [r4, #4]
 487              		.syntax unified
 488              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 489 0070 EFF3108A 		MRS r10, primask
 490              	@ 0 "" 2
 491              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 492 0074 72B6     		cpsid i
 493              	@ 0 "" 2
 494              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 495 0076 BFF35F8F 		dmb
 496              	@ 0 "" 2
 497              		.thumb
 498              		.syntax unified
 499 007a 4FF0000C 		mov	ip, #0
 500 007e 424E     		ldr	r6, .L96+8
 501 0080 86F800C0 		strb	ip, [r6]
 502 0084 D4F80CC0 		ldr	ip, [r4, #12]
 503 0088 1CF0100F 		tst	ip, #16
 504 008c 1AD1     		bne	.L67
 505 008e 4FF00070 		mov	r0, #33554432
 506 0092 47F02107 		orr	r7, r7, #33
 507 0096 A760     		str	r7, [r4, #8]
 508 0098 EA68     		ldr	r2, [r5, #12]
 509 009a 3C4C     		ldr	r4, .L96+12
 510 009c 1A44     		add	r2, r2, r3
 511 009e 00FA01F1 		lsl	r1, r0, r1
 512 00a2 2B61     		str	r3, [r5, #16]
 513 00a4 EA60     		str	r2, [r5, #12]
ARM GAS  /tmp/cc40AiIs.s 			page 10


 514 00a6 A161     		str	r1, [r4, #24]
 515 00a8 BAF1000F 		cmp	r10, #0
 516 00ac 57D0     		beq	.L93
 517              	.L59:
 518 00ae BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 519              	.L64:
 520 00b2 54F82240 		ldr	r4, [r4, r2, lsl #2]
 521 00b6 C4F3C124 		ubfx	r4, r4, #11, #2
 522 00ba 012C     		cmp	r4, #1
 523 00bc 56D0     		beq	.L94
 524              	.L66:
 525 00be 47F01407 		orr	r7, r7, #20
 526 00c2 CAE7     		b	.L65
 527              	.L67:
 528 00c4 BAF1000F 		cmp	r10, #0
 529 00c8 43D0     		beq	.L95
 530              	.L69:
 531 00ca 0EEB0103 		add	r3, lr, r1
 532 00ce 00EBC303 		add	r3, r0, r3, lsl #3
 533 00d2 DC68     		ldr	r4, [r3, #12]
 534 00d4 9C60     		str	r4, [r3, #8]
 535 00d6 D9F80040 		ldr	r4, [r9]
 536 00da 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 537 00dc E505     		lsls	r5, r4, #23
 538 00de 01D5     		bpl	.L71
 539 00e0 9C07     		lsls	r4, r3, #30
 540 00e2 12D4     		bmi	.L74
 541              	.L71:
 542 00e4 DE07     		lsls	r6, r3, #31
 543 00e6 E2D5     		bpl	.L59
 544              	.L73:
 545 00e8 7144     		add	r1, r1, lr
 546 00ea 00EBC100 		add	r0, r0, r1, lsl #3
 547 00ee BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 548 00f2 0021     		movs	r1, #0
 549 00f4 FFF7FEBF 		b	udd_ep_finish_job.part.2
 550              	.L62:
 551 00f8 224B     		ldr	r3, .L96+4
 552 00fa 4FEA8208 		lsl	r8, r2, #2
 553 00fe 53F82230 		ldr	r3, [r3, r2, lsl #2]
 554 0102 DD05     		lsls	r5, r3, #23
 555 0104 F0D5     		bpl	.L73
 556 0106 A307     		lsls	r3, r4, #30
 557 0108 EED5     		bpl	.L73
 558              	.L74:
 559 010a 0123     		movs	r3, #1
 560 010c 2048     		ldr	r0, .L96+16
 561 010e 2149     		ldr	r1, .L96+20
 562 0110 48F80030 		str	r3, [r8, r0]
 563 0114 58F80110 		ldr	r1, [r8, r1]
 564 0118 0124     		movs	r4, #1
 565 011a CF03     		lsls	r7, r1, #15
 566 011c 48BF     		it	mi
 567 011e 1E49     		ldrmi	r1, .L96+24
 568 0120 1E48     		ldr	r0, .L96+28
 569 0122 48BF     		it	mi
 570 0124 48F80130 		strmi	r3, [r8, r1]
ARM GAS  /tmp/cc40AiIs.s 			page 11


 571 0128 4FF48053 		mov	r3, #4096
 572 012c 1749     		ldr	r1, .L96+12
 573 012e 03FA02F2 		lsl	r2, r3, r2
 574 0132 48F80040 		str	r4, [r8, r0]
 575 0136 8A61     		str	r2, [r1, #24]
 576 0138 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 577              	.L92:
 578 013c 0EEB0104 		add	r4, lr, r1
 579 0140 00EBC404 		add	r4, r0, r4, lsl #3
 580 0144 257D     		ldrb	r5, [r4, #20]	@ zero_extendqisi2
 581 0146 47F00807 		orr	r7, r7, #8
 582 014a 6FF34105 		bfc	r5, #1, #1
 583 014e 2575     		strb	r5, [r4, #20]
 584 0150 83E7     		b	.L65
 585              	.L95:
 586 0152 0123     		movs	r3, #1
 587 0154 3370     		strb	r3, [r6]
 588              		.syntax unified
 589              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 590 0156 BFF35F8F 		dmb
 591              	@ 0 "" 2
 592              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 593 015a 62B6     		cpsie i
 594              	@ 0 "" 2
 595              		.thumb
 596              		.syntax unified
 597 015c B5E7     		b	.L69
 598              	.L93:
 599 015e 0123     		movs	r3, #1
 600 0160 3370     		strb	r3, [r6]
 601              		.syntax unified
 602              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 603 0162 BFF35F8F 		dmb
 604              	@ 0 "" 2
 605              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 606 0166 62B6     		cpsie i
 607              	@ 0 "" 2
 608              		.thumb
 609              		.syntax unified
 610 0168 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 611              	.L94:
 612 016c 0824     		movs	r4, #8
 613 016e D9F80050 		ldr	r5, [r9]
 614 0172 C5F30215 		ubfx	r5, r5, #4, #3
 615 0176 AC40     		lsls	r4, r4, r5
 616 0178 A342     		cmp	r3, r4
 617 017a 3FF66EAF 		bhi	.L65
 618 017e 9EE7     		b	.L66
 619              	.L97:
 620              		.align	2
 621              	.L96:
 622 0180 00000000 		.word	.LANCHOR0
 623 0184 00C10A40 		.word	1074446592
 624 0188 00000000 		.word	g_interrupt_enabled
 625 018c 00C00A40 		.word	1074446336
 626 0190 60C10A40 		.word	1074446688
 627 0194 30C10A40 		.word	1074446640
ARM GAS  /tmp/cc40AiIs.s 			page 12


 628 0198 90C10A40 		.word	1074446736
 629 019c F0C10A40 		.word	1074446832
 630 01a0 00C30A40 		.word	1074447104
 631              		.size	udd_ep_trans_done, .-udd_ep_trans_done
 632              		.section	.text.UOTGHS_Handler,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	UOTGHS_Handler
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu softvfp
 640              		.type	UOTGHS_Handler, %function
 641              	UOTGHS_Handler:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 645 0004 A84B     		ldr	r3, .L249
 646 0006 5A68     		ldr	r2, [r3, #4]
 647 0008 5107     		lsls	r1, r2, #29
 648 000a 08D5     		bpl	.L99
 649 000c 0422     		movs	r2, #4
 650 000e 9A60     		str	r2, [r3, #8]
 651 0010 D3F80438 		ldr	r3, [r3, #2052]
 652 0014 13F4405F 		tst	r3, #12288
 653 0018 33D0     		beq	.L226
 654              	.L98:
 655 001a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 656              	.L99:
 657 001e 5A68     		ldr	r2, [r3, #4]
 658 0020 9207     		lsls	r2, r2, #30
 659 0022 2CD4     		bmi	.L234
 660 0024 5B68     		ldr	r3, [r3, #4]
 661 0026 DB04     		lsls	r3, r3, #19
 662 0028 32D5     		bpl	.L103
 663 002a 1020     		movs	r0, #16
 664 002c 0821     		movs	r1, #8
 665 002e 9F4B     		ldr	r3, .L249+4
 666 0030 9F4A     		ldr	r2, .L249+8
 667 0032 1860     		str	r0, [r3]
 668 0034 1960     		str	r1, [r3]
 669 0036 1368     		ldr	r3, [r2]
 670 0038 5F07     		lsls	r7, r3, #29
 671 003a 00F1A680 		bmi	.L235
 672 003e 1368     		ldr	r3, [r2]
 673 0040 DE07     		lsls	r6, r3, #31
 674 0042 04D5     		bpl	.L113
 675 0044 9B4B     		ldr	r3, .L249+12
 676 0046 1B68     		ldr	r3, [r3]
 677 0048 DD07     		lsls	r5, r3, #31
 678 004a 00F1DF80 		bmi	.L236
 679              	.L113:
 680 004e 984B     		ldr	r3, .L249+8
 681 0050 1A68     		ldr	r2, [r3]
 682 0052 9407     		lsls	r4, r2, #30
 683 0054 00F1C580 		bmi	.L237
 684 0058 1A68     		ldr	r2, [r3]
ARM GAS  /tmp/cc40AiIs.s 			page 13


 685 005a 1007     		lsls	r0, r2, #28
 686 005c 15D5     		bpl	.L128
 687 005e 0821     		movs	r1, #8
 688 0060 954A     		ldr	r2, .L249+16
 689 0062 1160     		str	r1, [r2]
 690 0064 1B68     		ldr	r3, [r3]
 691 0066 D907     		lsls	r1, r3, #31
 692 0068 D7D4     		bmi	.L98
 693 006a 944B     		ldr	r3, .L249+20
 694 006c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 695 006e 032B     		cmp	r3, #3
 696 0070 D3D1     		bne	.L98
 697              	.L231:
 698 0072 4FF40022 		mov	r2, #524288
 699 0076 924B     		ldr	r3, .L249+24
 700 0078 1A60     		str	r2, [r3]
 701 007a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 702              	.L234:
 703 007e 0222     		movs	r2, #2
 704 0080 9A60     		str	r2, [r3, #8]
 705              	.L226:
 706 0082 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 707 0086 FFF7FEBF 		b	udc_sof_notify
 708              	.L128:
 709 008a 1A68     		ldr	r2, [r3]
 710 008c D206     		lsls	r2, r2, #27
 711 008e 6CD4     		bmi	.L238
 712              	.L103:
 713 0090 0123     		movs	r3, #1
 714 0092 4FF00078 		mov	r8, #33554432
 715 0096 4FF4805C 		mov	ip, #4096
 716 009a 8A49     		ldr	r1, .L249+28
 717 009c 824C     		ldr	r4, .L249
 718              	.L134:
 719 009e 5E1E     		subs	r6, r3, #1
 720 00a0 2769     		ldr	r7, [r4, #16]
 721 00a2 08FA06F5 		lsl	r5, r8, r6
 722 00a6 2F42     		tst	r7, r5
 723 00a8 0CFA03FE 		lsl	lr, ip, r3
 724 00ac DAB2     		uxtb	r2, r3
 725 00ae 4FEA8309 		lsl	r9, r3, #2
 726 00b2 01F19007 		add	r7, r1, #144
 727 00b6 03F10103 		add	r3, r3, #1
 728 00ba 03D0     		beq	.L130
 729 00bc 6068     		ldr	r0, [r4, #4]
 730 00be 0542     		tst	r5, r0
 731 00c0 40F07C81 		bne	.L239
 732              	.L130:
 733 00c4 2569     		ldr	r5, [r4, #16]
 734 00c6 15EA0E0F 		tst	r5, lr
 735 00ca 10D0     		beq	.L132
 736 00cc D1F89000 		ldr	r0, [r1, #144]
 737 00d0 C007     		lsls	r0, r0, #31
 738 00d2 03D5     		bpl	.L133
 739 00d4 0868     		ldr	r0, [r1]
 740 00d6 C507     		lsls	r5, r0, #31
 741 00d8 00F1AB81 		bmi	.L240
ARM GAS  /tmp/cc40AiIs.s 			page 14


 742              	.L133:
 743 00dc 3A68     		ldr	r2, [r7]
 744 00de D004     		lsls	r0, r2, #19
 745 00e0 05D5     		bpl	.L132
 746 00e2 0A68     		ldr	r2, [r1]
 747 00e4 C2F30132 		ubfx	r2, r2, #12, #2
 748 00e8 002A     		cmp	r2, #0
 749 00ea 00F0BE81 		beq	.L241
 750              	.L132:
 751 00ee 042B     		cmp	r3, #4
 752 00f0 01F10401 		add	r1, r1, #4
 753 00f4 D3D1     		bne	.L134
 754 00f6 6C4B     		ldr	r3, .L249
 755 00f8 5A68     		ldr	r2, [r3, #4]
 756 00fa 1207     		lsls	r2, r2, #28
 757 00fc 00F18A80 		bmi	.L242
 758 0100 1A69     		ldr	r2, [r3, #16]
 759 0102 D207     		lsls	r2, r2, #31
 760 0104 1CD4     		bmi	.L243
 761              	.L139:
 762 0106 684A     		ldr	r2, .L249
 763 0108 1369     		ldr	r3, [r2, #16]
 764 010a DE06     		lsls	r6, r3, #27
 765 010c 58D5     		bpl	.L140
 766 010e 5368     		ldr	r3, [r2, #4]
 767 0110 DD06     		lsls	r5, r3, #27
 768 0112 55D5     		bpl	.L140
 769 0114 D2F80018 		ldr	r1, [r2, #2048]
 770 0118 1346     		mov	r3, r2
 771 011a 21F48041 		bic	r1, r1, #16384
 772 011e C2F80018 		str	r1, [r2, #2048]
 773 0122 02E0     		b	.L141
 774              	.L143:
 775 0124 5A68     		ldr	r2, [r3, #4]
 776 0126 D407     		lsls	r4, r2, #31
 777 0128 03D4     		bmi	.L142
 778              	.L141:
 779 012a D3F80428 		ldr	r2, [r3, #2052]
 780 012e 5004     		lsls	r0, r2, #17
 781 0130 F8D5     		bpl	.L143
 782              	.L142:
 783 0132 1021     		movs	r1, #16
 784 0134 0122     		movs	r2, #1
 785 0136 5C4B     		ldr	r3, .L249
 786 0138 5961     		str	r1, [r3, #20]
 787 013a 9A61     		str	r2, [r3, #24]
 788 013c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 789              	.L243:
 790 0140 5A68     		ldr	r2, [r3, #4]
 791 0142 D707     		lsls	r7, r2, #31
 792 0144 DFD5     		bpl	.L139
 793 0146 0120     		movs	r0, #1
 794 0148 1021     		movs	r1, #16
 795 014a D3F80028 		ldr	r2, [r3, #2048]
 796 014e 22F48042 		bic	r2, r2, #16384
 797 0152 C3F80028 		str	r2, [r3, #2048]
 798 0156 5861     		str	r0, [r3, #20]
ARM GAS  /tmp/cc40AiIs.s 			page 15


 799 0158 9961     		str	r1, [r3, #24]
 800 015a D3F80028 		ldr	r2, [r3, #2048]
 801 015e 42F48042 		orr	r2, r2, #16384
 802 0162 C3F80028 		str	r2, [r3, #2048]
 803 0166 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 804              	.L238:
 805 016a 1021     		movs	r1, #16
 806 016c 524A     		ldr	r2, .L249+16
 807 016e 1160     		str	r1, [r2]
 808 0170 1B68     		ldr	r3, [r3]
 809 0172 9B07     		lsls	r3, r3, #30
 810 0174 3FF551AF 		bmi	.L98
 811 0178 504B     		ldr	r3, .L249+20
 812 017a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 813 017c 012B     		cmp	r3, #1
 814 017e 00F01981 		beq	.L227
 815 0182 042B     		cmp	r3, #4
 816 0184 7FF449AF 		bne	.L98
 817 0188 73E7     		b	.L231
 818              	.L235:
 819 018a 4C4C     		ldr	r4, .L249+20
 820 018c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 821 018e 2BB1     		cbz	r3, .L105
 822 0190 4D4B     		ldr	r3, .L249+32
 823 0192 1B69     		ldr	r3, [r3, #16]
 824 0194 03B1     		cbz	r3, .L106
 825 0196 9847     		blx	r3
 826              	.L106:
 827 0198 FFF7FEFF 		bl	udd_ctrl_init
 828              	.L105:
 829 019c 444B     		ldr	r3, .L249+8
 830 019e 1B68     		ldr	r3, [r3]
 831 01a0 C3F30A53 		ubfx	r3, r3, #20, #11
 832 01a4 082B     		cmp	r3, #8
 833 01a6 00F09780 		beq	.L244
 834              	.L228:
 835 01aa 0525     		movs	r5, #5
 836 01ac 4FF40020 		mov	r0, #524288
 837 01b0 0422     		movs	r2, #4
 838              	.L229:
 839 01b2 4349     		ldr	r1, .L249+24
 840 01b4 404B     		ldr	r3, .L249+16
 841 01b6 2570     		strb	r5, [r4]
 842 01b8 0860     		str	r0, [r1]
 843 01ba 1A60     		str	r2, [r3]
 844 01bc BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 845              	.L140:
 846 01c0 394B     		ldr	r3, .L249
 847 01c2 D3F80428 		ldr	r2, [r3, #2052]
 848 01c6 9107     		lsls	r1, r2, #30
 849 01c8 7FF527AF 		bpl	.L98
 850              	.L101:
 851              	.L144:
 852 01cc 0221     		movs	r1, #2
 853 01ce D3F80028 		ldr	r2, [r3, #2048]
 854 01d2 22F48042 		bic	r2, r2, #16384
 855 01d6 C3F80028 		str	r2, [r3, #2048]
ARM GAS  /tmp/cc40AiIs.s 			page 16


 856 01da C3F80818 		str	r1, [r3, #2056]
 857 01de BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 858              	.L237:
 859 01e2 364C     		ldr	r4, .L249+20
 860 01e4 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 861 01e6 012A     		cmp	r2, #1
 862 01e8 00F0B780 		beq	.L115
 863 01ec 022A     		cmp	r2, #2
 864 01ee 00F0AD80 		beq	.L116
 865 01f2 042A     		cmp	r2, #4
 866 01f4 00F0AA80 		beq	.L116
 867 01f8 0521     		movs	r1, #5
 868 01fa 4FF40022 		mov	r2, #524288
 869 01fe 304B     		ldr	r3, .L249+24
 870 0200 2170     		strb	r1, [r4]
 871 0202 1A60     		str	r2, [r3]
 872              	.L119:
 873 0204 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 874 0208 FFF7FEBF 		b	udd_ctrl_init
 875              	.L236:
 876 020c BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 877 0210 FFF7FEBF 		b	udd_ctrl_in_sent
 878              	.L242:
 879 0214 2D4E     		ldr	r6, .L249+36
 880 0216 0821     		movs	r1, #8
 881 0218 3546     		mov	r5, r6
 882 021a 0022     		movs	r2, #0
 883 021c 9960     		str	r1, [r3, #8]
 884              	.L137:
 885 021e 02EB4203 		add	r3, r2, r2, lsl #1
 886 0222 06EBC303 		add	r3, r6, r3, lsl #3
 887 0226 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 888 0228 541C     		adds	r4, r2, #1
 889 022a D907     		lsls	r1, r3, #31
 890 022c E2B2     		uxtb	r2, r4
 891 022e 00F18880 		bmi	.L245
 892              	.L136:
 893 0232 032C     		cmp	r4, #3
 894 0234 05F11805 		add	r5, r5, #24
 895 0238 2246     		mov	r2, r4
 896 023a F0D1     		bne	.L137
 897 023c FFF7FEFF 		bl	udc_reset
 898 0240 194B     		ldr	r3, .L249
 899 0242 2349     		ldr	r1, .L249+40
 900 0244 1A68     		ldr	r2, [r3]
 901 0246 22F07F02 		bic	r2, r2, #127
 902 024a 1A60     		str	r2, [r3]
 903 024c 1A68     		ldr	r2, [r3]
 904 024e 42F08002 		orr	r2, r2, #128
 905 0252 1A60     		str	r2, [r3]
 906 0254 0A68     		ldr	r2, [r1]
 907 0256 22F4CB52 		bic	r2, r2, #6496
 908 025a 22F01C02 		bic	r2, r2, #28
 909 025e 42F03002 		orr	r2, r2, #48
 910 0262 0A60     		str	r2, [r1]
 911 0264 0A68     		ldr	r2, [r1]
 912 0266 42F00202 		orr	r2, r2, #2
ARM GAS  /tmp/cc40AiIs.s 			page 17


 913 026a 0A60     		str	r2, [r1]
 914 026c DA69     		ldr	r2, [r3, #28]
 915 026e 42F00102 		orr	r2, r2, #1
 916 0272 DA61     		str	r2, [r3, #28]
 917              		.syntax unified
 918              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 919 0274 EFF31082 		MRS r2, primask
 920              	@ 0 "" 2
 921              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 922 0278 72B6     		cpsid i
 923              	@ 0 "" 2
 924              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 925 027a BFF35F8F 		dmb
 926              	@ 0 "" 2
 927              		.thumb
 928              		.syntax unified
 929 027e 0027     		movs	r7, #0
 930 0280 0426     		movs	r6, #4
 931 0282 0225     		movs	r5, #2
 932 0284 4FF48054 		mov	r4, #4096
 933 0288 1248     		ldr	r0, .L249+44
 934 028a 0770     		strb	r7, [r0]
 935 028c C1F8F060 		str	r6, [r1, #240]
 936 0290 C1F8F050 		str	r5, [r1, #240]
 937 0294 9C61     		str	r4, [r3, #24]
 938 0296 002A     		cmp	r2, #0
 939 0298 B4D1     		bne	.L119
 940 029a 0123     		movs	r3, #1
 941 029c 0370     		strb	r3, [r0]
 942              		.syntax unified
 943              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 944 029e BFF35F8F 		dmb
 945              	@ 0 "" 2
 946              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 947 02a2 62B6     		cpsie i
 948              	@ 0 "" 2
 949              		.thumb
 950              		.syntax unified
 951 02a4 AEE7     		b	.L119
 952              	.L250:
 953 02a6 00BF     		.align	2
 954              	.L249:
 955 02a8 00C00A40 		.word	1074446336
 956 02ac 20C20A40 		.word	1074446880
 957 02b0 30C10A40 		.word	1074446640
 958 02b4 C0C10A40 		.word	1074446784
 959 02b8 60C10A40 		.word	1074446688
 960 02bc 00000000 		.word	.LANCHOR1
 961 02c0 F0C10A40 		.word	1074446832
 962 02c4 34C10A40 		.word	1074446644
 963 02c8 00000000 		.word	udd_g_ctrlreq
 964 02cc 00000000 		.word	.LANCHOR0
 965 02d0 00C10A40 		.word	1074446592
 966 02d4 00000000 		.word	g_interrupt_enabled
 967              	.L244:
 968 02d8 844A     		ldr	r2, .L251
 969 02da 854B     		ldr	r3, .L251+4
ARM GAS  /tmp/cc40AiIs.s 			page 18


 970 02dc 8548     		ldr	r0, .L251+8
 971              	.L108:
 972 02de 13F8011B 		ldrb	r1, [r3], #1	@ zero_extendqisi2
 973 02e2 8342     		cmp	r3, r0
 974 02e4 02F8011F 		strb	r1, [r2, #1]!
 975 02e8 F9D1     		bne	.L108
 976 02ea FFF7FEFF 		bl	udc_process_setup
 977 02ee 0028     		cmp	r0, #0
 978 02f0 3FF45BAF 		beq	.L228
 979 02f4 0422     		movs	r2, #4
 980 02f6 8049     		ldr	r1, .L251+12
 981 02f8 804B     		ldr	r3, .L251+16
 982 02fa 0A60     		str	r2, [r1]
 983 02fc 93F90020 		ldrsb	r2, [r3]
 984 0300 002A     		cmp	r2, #0
 985 0302 C0F2D680 		blt	.L246
 986 0306 DB88     		ldrh	r3, [r3, #6]
 987 0308 002B     		cmp	r3, #0
 988 030a 53D0     		beq	.L227
 989 030c 0022     		movs	r2, #0
 990 030e 0125     		movs	r5, #1
 991 0310 1020     		movs	r0, #16
 992 0312 7B4E     		ldr	r6, .L251+20
 993 0314 7B4B     		ldr	r3, .L251+24
 994 0316 3280     		strh	r2, [r6]	@ movhi
 995 0318 1A80     		strh	r2, [r3]	@ movhi
 996 031a 2570     		strb	r5, [r4]
 997 031c 0860     		str	r0, [r1]
 998              		.syntax unified
 999              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1000 031e EFF31083 		MRS r3, primask
 1001              	@ 0 "" 2
 1002              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1003 0322 72B6     		cpsid i
 1004              	@ 0 "" 2
 1005              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1006 0324 BFF35F8F 		dmb
 1007              	@ 0 "" 2
 1008              		.thumb
 1009              		.syntax unified
 1010 0328 7749     		ldr	r1, .L251+28
 1011 032a 784C     		ldr	r4, .L251+32
 1012 032c 0A70     		strb	r2, [r1]
 1013 032e 2060     		str	r0, [r4]
 1014 0330 002B     		cmp	r3, #0
 1015 0332 7FF472AE 		bne	.L98
 1016 0336 0D70     		strb	r5, [r1]
 1017              		.syntax unified
 1018              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1019 0338 BFF35F8F 		dmb
 1020              	@ 0 "" 2
 1021              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1022 033c 62B6     		cpsie i
 1023              	@ 0 "" 2
 1024              		.thumb
 1025              		.syntax unified
 1026 033e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/cc40AiIs.s 			page 19


 1027              	.L245:
 1028 0342 0121     		movs	r1, #1
 1029 0344 2846     		mov	r0, r5
 1030 0346 FFF7FEFF 		bl	udd_ep_finish_job.part.2
 1031 034a 72E7     		b	.L136
 1032              	.L116:
 1033 034c 6B4B     		ldr	r3, .L251+16
 1034 034e 1B69     		ldr	r3, [r3, #16]
 1035 0350 002B     		cmp	r3, #0
 1036 0352 3FF457AF 		beq	.L119
 1037 0356 9847     		blx	r3
 1038 0358 54E7     		b	.L119
 1039              	.L115:
 1040 035a DFF8A881 		ldr	r8, .L251+24
 1041 035e 1D68     		ldr	r5, [r3]
 1042 0360 664F     		ldr	r7, .L251+16
 1043 0362 B8F80060 		ldrh	r6, [r8]
 1044 0366 BB89     		ldrh	r3, [r7, #12]
 1045 0368 C5F30A55 		ubfx	r5, r5, #20, #11
 1046 036c 7219     		adds	r2, r6, r5
 1047 036e 9342     		cmp	r3, r2
 1048 0370 BCBF     		itt	lt
 1049 0372 9B1B     		sublt	r3, r3, r6
 1050 0374 9DB2     		uxthlt	r5, r3
 1051 0376 B968     		ldr	r1, [r7, #8]
 1052 0378 7DB1     		cbz	r5, .L121
 1053 037a 721E     		subs	r2, r6, #1
 1054 037c 5C4B     		ldr	r3, .L251+4
 1055 037e 0A44     		add	r2, r2, r1
 1056              	.L122:
 1057 0380 13F8010B 		ldrb	r0, [r3], #1	@ zero_extendqisi2
 1058 0384 D9B2     		uxtb	r1, r3
 1059 0386 A942     		cmp	r1, r5
 1060 0388 02F8010F 		strb	r0, [r2, #1]!
 1061 038c F8D3     		bcc	.L122
 1062 038e 2E44     		add	r6, r6, r5
 1063 0390 B6B2     		uxth	r6, r6
 1064 0392 402D     		cmp	r5, #64
 1065 0394 A8F80060 		strh	r6, [r8]	@ movhi
 1066 0398 29D0     		beq	.L247
 1067              	.L121:
 1068 039a 7B69     		ldr	r3, [r7, #20]
 1069 039c BE81     		strh	r6, [r7, #12]	@ movhi
 1070 039e 33B1     		cbz	r3, .L124
 1071 03a0 9847     		blx	r3
 1072 03a2 20B9     		cbnz	r0, .L124
 1073              	.L230:
 1074 03a4 0525     		movs	r5, #5
 1075 03a6 4FF40020 		mov	r0, #524288
 1076 03aa 0222     		movs	r2, #2
 1077 03ac 01E7     		b	.L229
 1078              	.L124:
 1079 03ae 0222     		movs	r2, #2
 1080 03b0 514B     		ldr	r3, .L251+12
 1081 03b2 1A60     		str	r2, [r3]
 1082              	.L227:
 1083 03b4 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
ARM GAS  /tmp/cc40AiIs.s 			page 20


 1084 03b8 FFF7FEBF 		b	udd_ctrl_send_zlp_in
 1085              	.L239:
 1086 03bc 544B     		ldr	r3, .L251+36
 1087 03be 03EB0213 		add	r3, r3, r2, lsl #4
 1088 03c2 D968     		ldr	r1, [r3, #12]
 1089 03c4 CF07     		lsls	r7, r1, #31
 1090 03c6 3FF528AE 		bmi	.L98
 1091 03ca 6561     		str	r5, [r4, #20]
 1092 03cc DB68     		ldr	r3, [r3, #12]
 1093 03ce 1B0C     		lsrs	r3, r3, #16
 1094 03d0 08D0     		beq	.L131
 1095 03d2 5049     		ldr	r1, .L251+40
 1096 03d4 06EB4606 		add	r6, r6, r6, lsl #1
 1097 03d8 01EBC601 		add	r1, r1, r6, lsl #3
 1098 03dc C868     		ldr	r0, [r1, #12]
 1099 03de C31A     		subs	r3, r0, r3
 1100 03e0 CB60     		str	r3, [r1, #12]
 1101 03e2 8B60     		str	r3, [r1, #8]
 1102              	.L131:
 1103 03e4 1046     		mov	r0, r2
 1104 03e6 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 1105 03ea FFF7FEBF 		b	udd_ep_trans_done
 1106              	.L247:
 1107 03ee 444D     		ldr	r5, .L251+20
 1108 03f0 FA88     		ldrh	r2, [r7, #6]
 1109 03f2 2B88     		ldrh	r3, [r5]
 1110 03f4 3344     		add	r3, r3, r6
 1111 03f6 9A42     		cmp	r2, r3
 1112 03f8 CFDD     		ble	.L121
 1113 03fa BB89     		ldrh	r3, [r7, #12]
 1114 03fc B342     		cmp	r3, r6
 1115 03fe 63D0     		beq	.L248
 1116              	.L125:
 1117 0400 0222     		movs	r2, #2
 1118 0402 1021     		movs	r1, #16
 1119 0404 3C4B     		ldr	r3, .L251+12
 1120 0406 1A60     		str	r2, [r3]
 1121 0408 1960     		str	r1, [r3]
 1122              		.syntax unified
 1123              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1124 040a EFF31083 		MRS r3, primask
 1125              	@ 0 "" 2
 1126              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1127 040e 72B6     		cpsid i
 1128              	@ 0 "" 2
 1129              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1130 0410 BFF35F8F 		dmb
 1131              	@ 0 "" 2
 1132              		.thumb
 1133              		.syntax unified
 1134 0414 0024     		movs	r4, #0
 1135 0416 3C4A     		ldr	r2, .L251+28
 1136 0418 3C48     		ldr	r0, .L251+32
 1137 041a 1470     		strb	r4, [r2]
 1138 041c 0160     		str	r1, [r0]
 1139 041e 002B     		cmp	r3, #0
 1140 0420 7FF4FBAD 		bne	.L98
ARM GAS  /tmp/cc40AiIs.s 			page 21


 1141 0424 0123     		movs	r3, #1
 1142 0426 1370     		strb	r3, [r2]
 1143              		.syntax unified
 1144              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1145 0428 BFF35F8F 		dmb
 1146              	@ 0 "" 2
 1147              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1148 042c 62B6     		cpsie i
 1149              	@ 0 "" 2
 1150              		.thumb
 1151              		.syntax unified
 1152 042e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1153              	.L240:
 1154 0432 0123     		movs	r3, #1
 1155 0434 4FF48044 		mov	r4, #16384
 1156 0438 3748     		ldr	r0, .L251+44
 1157 043a 2F4D     		ldr	r5, .L251+12
 1158 043c 3549     		ldr	r1, .L251+40
 1159 043e 49F80030 		str	r3, [r9, r0]
 1160 0442 49F80530 		str	r3, [r9, r5]
 1161 0446 06EB4603 		add	r3, r6, r6, lsl #1
 1162 044a 49F80040 		str	r4, [r9, r0]
 1163 044e 01EBC303 		add	r3, r1, r3, lsl #3
 1164 0452 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 1165 0454 DC07     		lsls	r4, r3, #31
 1166 0456 7FF5E0AD 		bpl	.L98
 1167 045a 1820     		movs	r0, #24
 1168 045c 00FB0610 		mla	r0, r0, r6, r1
 1169 0460 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 1170 0464 0021     		movs	r1, #0
 1171 0466 FFF7FEBF 		b	udd_ep_finish_job.part.2
 1172              	.L241:
 1173 046a 4FF48057 		mov	r7, #4096
 1174 046e 4FF40024 		mov	r4, #524288
 1175 0472 4FF48020 		mov	r0, #262144
 1176 0476 274B     		ldr	r3, .L251+40
 1177 0478 274D     		ldr	r5, .L251+44
 1178 047a 2849     		ldr	r1, .L251+48
 1179 047c 06EB4606 		add	r6, r6, r6, lsl #1
 1180 0480 49F80570 		str	r7, [r9, r5]
 1181 0484 03EBC606 		add	r6, r3, r6, lsl #3
 1182 0488 C1F814E0 		str	lr, [r1, #20]
 1183 048c 357D     		ldrb	r5, [r6, #20]	@ zero_extendqisi2
 1184 048e 01F58071 		add	r1, r1, #256
 1185 0492 62F38205 		bfi	r5, r2, #2, #1
 1186 0496 3575     		strb	r5, [r6, #20]
 1187 0498 59F80130 		ldr	r3, [r9, r1]
 1188 049c 1B4A     		ldr	r2, .L251+32
 1189 049e 23F40073 		bic	r3, r3, #512
 1190 04a2 49F80130 		str	r3, [r9, r1]
 1191 04a6 49F80240 		str	r4, [r9, r2]
 1192 04aa 49F80200 		str	r0, [r9, r2]
 1193 04ae BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1194              	.L246:
 1195 04b2 0023     		movs	r3, #0
 1196 04b4 0222     		movs	r2, #2
 1197 04b6 1248     		ldr	r0, .L251+20
ARM GAS  /tmp/cc40AiIs.s 			page 22


 1198 04b8 1249     		ldr	r1, .L251+24
 1199 04ba 0380     		strh	r3, [r0]	@ movhi
 1200 04bc 0B80     		strh	r3, [r1]	@ movhi
 1201 04be 2270     		strb	r2, [r4]
 1202 04c0 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 1203 04c4 FFF7FEBF 		b	udd_ctrl_in_sent
 1204              	.L248:
 1205 04c8 7B69     		ldr	r3, [r7, #20]
 1206 04ca 002B     		cmp	r3, #0
 1207 04cc 3FF46AAF 		beq	.L230
 1208 04d0 9847     		blx	r3
 1209 04d2 0028     		cmp	r0, #0
 1210 04d4 3FF466AF 		beq	.L230
 1211 04d8 0021     		movs	r1, #0
 1212 04da 2B88     		ldrh	r3, [r5]
 1213 04dc B8F80020 		ldrh	r2, [r8]
 1214 04e0 A8F80010 		strh	r1, [r8]	@ movhi
 1215 04e4 1344     		add	r3, r3, r2
 1216 04e6 2B80     		strh	r3, [r5]	@ movhi
 1217 04e8 8AE7     		b	.L125
 1218              	.L252:
 1219 04ea 00BF     		.align	2
 1220              	.L251:
 1221 04ec FFFFFFFF 		.word	udd_g_ctrlreq-1
 1222 04f0 00001820 		.word	538443776
 1223 04f4 08001820 		.word	538443784
 1224 04f8 60C10A40 		.word	1074446688
 1225 04fc 00000000 		.word	udd_g_ctrlreq
 1226 0500 00000000 		.word	.LANCHOR3
 1227 0504 00000000 		.word	.LANCHOR2
 1228 0508 00000000 		.word	g_interrupt_enabled
 1229 050c F0C10A40 		.word	1074446832
 1230 0510 00C30A40 		.word	1074447104
 1231 0514 00000000 		.word	.LANCHOR0
 1232 0518 20C20A40 		.word	1074446880
 1233 051c 00C00A40 		.word	1074446336
 1234              		.size	UOTGHS_Handler, .-UOTGHS_Handler
 1235              		.section	.text.udd_include_vbus_monitoring,"ax",%progbits
 1236              		.align	1
 1237              		.p2align 2,,3
 1238              		.global	udd_include_vbus_monitoring
 1239              		.syntax unified
 1240              		.thumb
 1241              		.thumb_func
 1242              		.fpu softvfp
 1243              		.type	udd_include_vbus_monitoring, %function
 1244              	udd_include_vbus_monitoring:
 1245              		@ args = 0, pretend = 0, frame = 0
 1246              		@ frame_needed = 0, uses_anonymous_args = 0
 1247              		@ link register save eliminated.
 1248 0000 0120     		movs	r0, #1
 1249 0002 7047     		bx	lr
 1250              		.size	udd_include_vbus_monitoring, .-udd_include_vbus_monitoring
 1251              		.section	.text.udd_disable,"ax",%progbits
 1252              		.align	1
 1253              		.p2align 2,,3
 1254              		.global	udd_disable
ARM GAS  /tmp/cc40AiIs.s 			page 23


 1255              		.syntax unified
 1256              		.thumb
 1257              		.thumb_func
 1258              		.fpu softvfp
 1259              		.type	udd_disable, %function
 1260              	udd_disable:
 1261              		@ args = 0, pretend = 0, frame = 0
 1262              		@ frame_needed = 0, uses_anonymous_args = 0
 1263 0000 38B5     		push	{r3, r4, r5, lr}
 1264              		.syntax unified
 1265              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1266 0002 EFF31084 		MRS r4, primask
 1267              	@ 0 "" 2
 1268              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1269 0006 72B6     		cpsid i
 1270              	@ 0 "" 2
 1271              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1272 0008 BFF35F8F 		dmb
 1273              	@ 0 "" 2
 1274              		.thumb
 1275              		.syntax unified
 1276 000c 0022     		movs	r2, #0
 1277 000e 184D     		ldr	r5, .L257
 1278 0010 184B     		ldr	r3, .L257+4
 1279 0012 2A70     		strb	r2, [r5]
 1280 0014 D3F80028 		ldr	r2, [r3, #2048]
 1281 0018 22F48042 		bic	r2, r2, #16384
 1282 001c C3F80028 		str	r2, [r3, #2048]
 1283 0020 D3F80028 		ldr	r2, [r3, #2048]
 1284 0024 22F48042 		bic	r2, r2, #16384
 1285 0028 C3F80028 		str	r2, [r3, #2048]
 1286 002c 1A68     		ldr	r2, [r3]
 1287 002e 42F48072 		orr	r2, r2, #256
 1288 0032 1A60     		str	r2, [r3]
 1289 0034 D3F80028 		ldr	r2, [r3, #2048]
 1290 0038 42F48042 		orr	r2, r2, #16384
 1291 003c C3F80028 		str	r2, [r3, #2048]
 1292 0040 D3F80028 		ldr	r2, [r3, #2048]
 1293 0044 22F40042 		bic	r2, r2, #32768
 1294 0048 C3F80028 		str	r2, [r3, #2048]
 1295 004c D3F80028 		ldr	r2, [r3, #2048]
 1296 0050 22F48052 		bic	r2, r2, #4096
 1297 0054 C3F80028 		str	r2, [r3, #2048]
 1298 0058 FFF7FEFF 		bl	sysclk_disable_usb
 1299 005c 2820     		movs	r0, #40
 1300 005e FFF7FEFF 		bl	pmc_disable_periph_clk
 1301 0062 24B9     		cbnz	r4, .L254
 1302 0064 0123     		movs	r3, #1
 1303 0066 2B70     		strb	r3, [r5]
 1304              		.syntax unified
 1305              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1306 0068 BFF35F8F 		dmb
 1307              	@ 0 "" 2
 1308              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1309 006c 62B6     		cpsie i
 1310              	@ 0 "" 2
 1311              		.thumb
ARM GAS  /tmp/cc40AiIs.s 			page 24


 1312              		.syntax unified
 1313              	.L254:
 1314 006e 38BD     		pop	{r3, r4, r5, pc}
 1315              	.L258:
 1316              		.align	2
 1317              	.L257:
 1318 0070 00000000 		.word	g_interrupt_enabled
 1319 0074 00C00A40 		.word	1074446336
 1320              		.size	udd_disable, .-udd_disable
 1321              		.section	.text.udd_attach,"ax",%progbits
 1322              		.align	1
 1323              		.p2align 2,,3
 1324              		.global	udd_attach
 1325              		.syntax unified
 1326              		.thumb
 1327              		.thumb_func
 1328              		.fpu softvfp
 1329              		.type	udd_attach, %function
 1330              	udd_attach:
 1331              		@ args = 0, pretend = 0, frame = 0
 1332              		@ frame_needed = 0, uses_anonymous_args = 0
 1333 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1334              		.syntax unified
 1335              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1336 0002 EFF31086 		MRS r6, primask
 1337              	@ 0 "" 2
 1338              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1339 0006 72B6     		cpsid i
 1340              	@ 0 "" 2
 1341              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1342 0008 BFF35F8F 		dmb
 1343              	@ 0 "" 2
 1344              		.thumb
 1345              		.syntax unified
 1346 000c 0021     		movs	r1, #0
 1347 000e 174A     		ldr	r2, .L265
 1348 0010 174D     		ldr	r5, .L265+4
 1349 0012 1346     		mov	r3, r2
 1350 0014 2970     		strb	r1, [r5]
 1351 0016 D2F80018 		ldr	r1, [r2, #2048]
 1352 001a 21F48041 		bic	r1, r1, #16384
 1353 001e C2F80018 		str	r1, [r2, #2048]
 1354              	.L260:
 1355 0022 D3F80428 		ldr	r2, [r3, #2052]
 1356 0026 5204     		lsls	r2, r2, #17
 1357 0028 FBD5     		bpl	.L260
 1358 002a 0827     		movs	r7, #8
 1359 002c 0121     		movs	r1, #1
 1360 002e 1020     		movs	r0, #16
 1361 0030 0424     		movs	r4, #4
 1362 0032 4FF0020E 		mov	lr, #2
 1363 0036 1A68     		ldr	r2, [r3]
 1364 0038 22F48072 		bic	r2, r2, #256
 1365 003c 1A60     		str	r2, [r3]
 1366 003e 9F61     		str	r7, [r3, #24]
 1367 0040 9961     		str	r1, [r3, #24]
 1368 0042 9861     		str	r0, [r3, #24]
ARM GAS  /tmp/cc40AiIs.s 			page 25


 1369 0044 9C61     		str	r4, [r3, #24]
 1370 0046 9F60     		str	r7, [r3, #8]
 1371 0048 9C60     		str	r4, [r3, #8]
 1372 004a C3F808E0 		str	lr, [r3, #8]
 1373 004e D960     		str	r1, [r3, #12]
 1374 0050 9860     		str	r0, [r3, #8]
 1375 0052 D3F80028 		ldr	r2, [r3, #2048]
 1376 0056 42F48042 		orr	r2, r2, #16384
 1377 005a C3F80028 		str	r2, [r3, #2048]
 1378 005e 1EB9     		cbnz	r6, .L259
 1379 0060 2970     		strb	r1, [r5]
 1380              		.syntax unified
 1381              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1382 0062 BFF35F8F 		dmb
 1383              	@ 0 "" 2
 1384              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1385 0066 62B6     		cpsie i
 1386              	@ 0 "" 2
 1387              		.thumb
 1388              		.syntax unified
 1389              	.L259:
 1390 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 1391              	.L266:
 1392 006a 00BF     		.align	2
 1393              	.L265:
 1394 006c 00C00A40 		.word	1074446336
 1395 0070 00000000 		.word	g_interrupt_enabled
 1396              		.size	udd_attach, .-udd_attach
 1397              		.section	.text.udd_enable,"ax",%progbits
 1398              		.align	1
 1399              		.p2align 2,,3
 1400              		.global	udd_enable
 1401              		.syntax unified
 1402              		.thumb
 1403              		.thumb_func
 1404              		.fpu softvfp
 1405              		.type	udd_enable, %function
 1406              	udd_enable:
 1407              		@ args = 0, pretend = 0, frame = 0
 1408              		@ frame_needed = 0, uses_anonymous_args = 0
 1409 0000 38B5     		push	{r3, r4, r5, lr}
 1410              		.syntax unified
 1411              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1412 0002 EFF31085 		MRS r5, primask
 1413              	@ 0 "" 2
 1414              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1415 0006 72B6     		cpsid i
 1416              	@ 0 "" 2
 1417              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1418 0008 BFF35F8F 		dmb
 1419              	@ 0 "" 2
 1420              		.thumb
 1421              		.syntax unified
 1422 000c 0023     		movs	r3, #0
 1423 000e 314C     		ldr	r4, .L273
 1424 0010 2820     		movs	r0, #40
 1425 0012 2370     		strb	r3, [r4]
ARM GAS  /tmp/cc40AiIs.s 			page 26


 1426 0014 FFF7FEFF 		bl	pmc_enable_periph_clk
 1427 0018 FFF7FEFF 		bl	sysclk_enable_usb
 1428 001c 4FF48071 		mov	r1, #256
 1429 0020 5020     		movs	r0, #80
 1430 0022 2D4A     		ldr	r2, .L273+4
 1431 0024 2D4B     		ldr	r3, .L273+8
 1432 0026 82F82803 		strb	r0, [r2, #808]
 1433 002a 5160     		str	r1, [r2, #4]
 1434 002c D3F80018 		ldr	r1, [r3, #2048]
 1435 0030 1A46     		mov	r2, r3
 1436 0032 21F08071 		bic	r1, r1, #16777216
 1437 0036 C3F80018 		str	r1, [r3, #2048]
 1438 003a D3F80018 		ldr	r1, [r3, #2048]
 1439 003e 41F00071 		orr	r1, r1, #33554432
 1440 0042 C3F80018 		str	r1, [r3, #2048]
 1441 0046 D3F80018 		ldr	r1, [r3, #2048]
 1442 004a 21F08071 		bic	r1, r1, #16777216
 1443 004e C3F80018 		str	r1, [r3, #2048]
 1444 0052 D3F80018 		ldr	r1, [r3, #2048]
 1445 0056 41F48051 		orr	r1, r1, #4096
 1446 005a C3F80018 		str	r1, [r3, #2048]
 1447 005e D3F80018 		ldr	r1, [r3, #2048]
 1448 0062 41F40041 		orr	r1, r1, #32768
 1449 0066 C3F80018 		str	r1, [r3, #2048]
 1450 006a 1968     		ldr	r1, [r3]
 1451 006c 21F48051 		bic	r1, r1, #4096
 1452 0070 1960     		str	r1, [r3]
 1453 0072 1968     		ldr	r1, [r3]
 1454 0074 41F44061 		orr	r1, r1, #3072
 1455 0078 1960     		str	r1, [r3]
 1456 007a D3F80018 		ldr	r1, [r3, #2048]
 1457 007e 21F48041 		bic	r1, r1, #16384
 1458 0082 C3F80018 		str	r1, [r3, #2048]
 1459              	.L268:
 1460 0086 D2F80438 		ldr	r3, [r2, #2052]
 1461 008a 5B04     		lsls	r3, r3, #17
 1462 008c FBD5     		bpl	.L268
 1463 008e 0221     		movs	r1, #2
 1464 0090 134B     		ldr	r3, .L273+12
 1465 0092 C2F80818 		str	r1, [r2, #2056]
 1466 0096 187D     		ldrb	r0, [r3, #20]	@ zero_extendqisi2
 1467 0098 93F82C10 		ldrb	r1, [r3, #44]	@ zero_extendqisi2
 1468 009c 93F84420 		ldrb	r2, [r3, #68]	@ zero_extendqisi2
 1469 00a0 00F0FE00 		and	r0, r0, #254
 1470 00a4 01F0FE01 		and	r1, r1, #254
 1471 00a8 02F0FE02 		and	r2, r2, #254
 1472 00ac 6FF38200 		bfc	r0, #2, #1
 1473 00b0 6FF38201 		bfc	r1, #2, #1
 1474 00b4 6FF38202 		bfc	r2, #2, #1
 1475 00b8 1875     		strb	r0, [r3, #20]
 1476 00ba 83F82C10 		strb	r1, [r3, #44]
 1477 00be 83F84420 		strb	r2, [r3, #68]
 1478 00c2 FFF7FEFF 		bl	udd_attach
 1479 00c6 25B9     		cbnz	r5, .L267
 1480 00c8 0123     		movs	r3, #1
 1481 00ca 2370     		strb	r3, [r4]
 1482              		.syntax unified
ARM GAS  /tmp/cc40AiIs.s 			page 27


 1483              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1484 00cc BFF35F8F 		dmb
 1485              	@ 0 "" 2
 1486              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1487 00d0 62B6     		cpsie i
 1488              	@ 0 "" 2
 1489              		.thumb
 1490              		.syntax unified
 1491              	.L267:
 1492 00d2 38BD     		pop	{r3, r4, r5, pc}
 1493              	.L274:
 1494              		.align	2
 1495              	.L273:
 1496 00d4 00000000 		.word	g_interrupt_enabled
 1497 00d8 00E100E0 		.word	-536813312
 1498 00dc 00C00A40 		.word	1074446336
 1499 00e0 00000000 		.word	.LANCHOR0
 1500              		.size	udd_enable, .-udd_enable
 1501              		.section	.text.udd_detach,"ax",%progbits
 1502              		.align	1
 1503              		.p2align 2,,3
 1504              		.global	udd_detach
 1505              		.syntax unified
 1506              		.thumb
 1507              		.thumb_func
 1508              		.fpu softvfp
 1509              		.type	udd_detach, %function
 1510              	udd_detach:
 1511              		@ args = 0, pretend = 0, frame = 0
 1512              		@ frame_needed = 0, uses_anonymous_args = 0
 1513              		@ link register save eliminated.
 1514 0000 084B     		ldr	r3, .L276
 1515 0002 D3F80028 		ldr	r2, [r3, #2048]
 1516 0006 22F48042 		bic	r2, r2, #16384
 1517 000a C3F80028 		str	r2, [r3, #2048]
 1518 000e 1A68     		ldr	r2, [r3]
 1519 0010 42F48072 		orr	r2, r2, #256
 1520 0014 1A60     		str	r2, [r3]
 1521 0016 D3F80028 		ldr	r2, [r3, #2048]
 1522 001a 42F48042 		orr	r2, r2, #16384
 1523 001e C3F80028 		str	r2, [r3, #2048]
 1524 0022 7047     		bx	lr
 1525              	.L277:
 1526              		.align	2
 1527              	.L276:
 1528 0024 00C00A40 		.word	1074446336
 1529              		.size	udd_detach, .-udd_detach
 1530              		.section	.text.udd_is_high_speed,"ax",%progbits
 1531              		.align	1
 1532              		.p2align 2,,3
 1533              		.global	udd_is_high_speed
 1534              		.syntax unified
 1535              		.thumb
 1536              		.thumb_func
 1537              		.fpu softvfp
 1538              		.type	udd_is_high_speed, %function
 1539              	udd_is_high_speed:
ARM GAS  /tmp/cc40AiIs.s 			page 28


 1540              		@ args = 0, pretend = 0, frame = 0
 1541              		@ frame_needed = 0, uses_anonymous_args = 0
 1542              		@ link register save eliminated.
 1543 0000 0020     		movs	r0, #0
 1544 0002 7047     		bx	lr
 1545              		.size	udd_is_high_speed, .-udd_is_high_speed
 1546              		.section	.text.udd_set_address,"ax",%progbits
 1547              		.align	1
 1548              		.p2align 2,,3
 1549              		.global	udd_set_address
 1550              		.syntax unified
 1551              		.thumb
 1552              		.thumb_func
 1553              		.fpu softvfp
 1554              		.type	udd_set_address, %function
 1555              	udd_set_address:
 1556              		@ args = 0, pretend = 0, frame = 0
 1557              		@ frame_needed = 0, uses_anonymous_args = 0
 1558              		@ link register save eliminated.
 1559 0000 084B     		ldr	r3, .L280
 1560 0002 00F07F01 		and	r1, r0, #127
 1561 0006 1A68     		ldr	r2, [r3]
 1562 0008 22F08002 		bic	r2, r2, #128
 1563 000c 1A60     		str	r2, [r3]
 1564 000e 1868     		ldr	r0, [r3]
 1565 0010 20F07F00 		bic	r0, r0, #127
 1566 0014 0843     		orrs	r0, r0, r1
 1567 0016 1860     		str	r0, [r3]
 1568 0018 1A68     		ldr	r2, [r3]
 1569 001a 42F08002 		orr	r2, r2, #128
 1570 001e 1A60     		str	r2, [r3]
 1571 0020 7047     		bx	lr
 1572              	.L281:
 1573 0022 00BF     		.align	2
 1574              	.L280:
 1575 0024 00C00A40 		.word	1074446336
 1576              		.size	udd_set_address, .-udd_set_address
 1577              		.section	.text.udd_getaddress,"ax",%progbits
 1578              		.align	1
 1579              		.p2align 2,,3
 1580              		.global	udd_getaddress
 1581              		.syntax unified
 1582              		.thumb
 1583              		.thumb_func
 1584              		.fpu softvfp
 1585              		.type	udd_getaddress, %function
 1586              	udd_getaddress:
 1587              		@ args = 0, pretend = 0, frame = 0
 1588              		@ frame_needed = 0, uses_anonymous_args = 0
 1589              		@ link register save eliminated.
 1590 0000 024B     		ldr	r3, .L283
 1591 0002 1868     		ldr	r0, [r3]
 1592 0004 00F07F00 		and	r0, r0, #127
 1593 0008 7047     		bx	lr
 1594              	.L284:
 1595 000a 00BF     		.align	2
 1596              	.L283:
ARM GAS  /tmp/cc40AiIs.s 			page 29


 1597 000c 00C00A40 		.word	1074446336
 1598              		.size	udd_getaddress, .-udd_getaddress
 1599              		.section	.text.udd_get_frame_number,"ax",%progbits
 1600              		.align	1
 1601              		.p2align 2,,3
 1602              		.global	udd_get_frame_number
 1603              		.syntax unified
 1604              		.thumb
 1605              		.thumb_func
 1606              		.fpu softvfp
 1607              		.type	udd_get_frame_number, %function
 1608              	udd_get_frame_number:
 1609              		@ args = 0, pretend = 0, frame = 0
 1610              		@ frame_needed = 0, uses_anonymous_args = 0
 1611              		@ link register save eliminated.
 1612 0000 024B     		ldr	r3, .L286
 1613 0002 186A     		ldr	r0, [r3, #32]
 1614 0004 C0F3CA00 		ubfx	r0, r0, #3, #11
 1615 0008 7047     		bx	lr
 1616              	.L287:
 1617 000a 00BF     		.align	2
 1618              	.L286:
 1619 000c 00C00A40 		.word	1074446336
 1620              		.size	udd_get_frame_number, .-udd_get_frame_number
 1621              		.section	.text.udd_get_micro_frame_number,"ax",%progbits
 1622              		.align	1
 1623              		.p2align 2,,3
 1624              		.global	udd_get_micro_frame_number
 1625              		.syntax unified
 1626              		.thumb
 1627              		.thumb_func
 1628              		.fpu softvfp
 1629              		.type	udd_get_micro_frame_number, %function
 1630              	udd_get_micro_frame_number:
 1631              		@ args = 0, pretend = 0, frame = 0
 1632              		@ frame_needed = 0, uses_anonymous_args = 0
 1633              		@ link register save eliminated.
 1634 0000 024B     		ldr	r3, .L289
 1635 0002 186A     		ldr	r0, [r3, #32]
 1636 0004 C0F30D00 		ubfx	r0, r0, #0, #14
 1637 0008 7047     		bx	lr
 1638              	.L290:
 1639 000a 00BF     		.align	2
 1640              	.L289:
 1641 000c 00C00A40 		.word	1074446336
 1642              		.size	udd_get_micro_frame_number, .-udd_get_micro_frame_number
 1643              		.section	.text.udd_send_remotewakeup,"ax",%progbits
 1644              		.align	1
 1645              		.p2align 2,,3
 1646              		.global	udd_send_remotewakeup
 1647              		.syntax unified
 1648              		.thumb
 1649              		.thumb_func
 1650              		.fpu softvfp
 1651              		.type	udd_send_remotewakeup, %function
 1652              	udd_send_remotewakeup:
 1653              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc40AiIs.s 			page 30


 1654              		@ frame_needed = 0, uses_anonymous_args = 0
 1655              		@ link register save eliminated.
 1656 0000 054B     		ldr	r3, .L292
 1657 0002 D3F80028 		ldr	r2, [r3, #2048]
 1658 0006 22F48042 		bic	r2, r2, #16384
 1659 000a C3F80028 		str	r2, [r3, #2048]
 1660 000e 1A68     		ldr	r2, [r3]
 1661 0010 42F40072 		orr	r2, r2, #512
 1662 0014 1A60     		str	r2, [r3]
 1663 0016 7047     		bx	lr
 1664              	.L293:
 1665              		.align	2
 1666              	.L292:
 1667 0018 00C00A40 		.word	1074446336
 1668              		.size	udd_send_remotewakeup, .-udd_send_remotewakeup
 1669              		.section	.text.udd_set_setup_payload,"ax",%progbits
 1670              		.align	1
 1671              		.p2align 2,,3
 1672              		.global	udd_set_setup_payload
 1673              		.syntax unified
 1674              		.thumb
 1675              		.thumb_func
 1676              		.fpu softvfp
 1677              		.type	udd_set_setup_payload, %function
 1678              	udd_set_setup_payload:
 1679              		@ args = 0, pretend = 0, frame = 0
 1680              		@ frame_needed = 0, uses_anonymous_args = 0
 1681              		@ link register save eliminated.
 1682 0000 014B     		ldr	r3, .L295
 1683 0002 9860     		str	r0, [r3, #8]
 1684 0004 9981     		strh	r1, [r3, #12]	@ movhi
 1685 0006 7047     		bx	lr
 1686              	.L296:
 1687              		.align	2
 1688              	.L295:
 1689 0008 00000000 		.word	udd_g_ctrlreq
 1690              		.size	udd_set_setup_payload, .-udd_set_setup_payload
 1691              		.section	.text.udd_ep_free,"ax",%progbits
 1692              		.align	1
 1693              		.p2align 2,,3
 1694              		.global	udd_ep_free
 1695              		.syntax unified
 1696              		.thumb
 1697              		.thumb_func
 1698              		.fpu softvfp
 1699              		.type	udd_ep_free, %function
 1700              	udd_ep_free:
 1701              		@ args = 0, pretend = 0, frame = 0
 1702              		@ frame_needed = 0, uses_anonymous_args = 0
 1703 0000 38B5     		push	{r3, r4, r5, lr}
 1704 0002 00F00F04 		and	r4, r0, #15
 1705 0006 032C     		cmp	r4, #3
 1706 0008 1AD8     		bhi	.L297
 1707 000a 0123     		movs	r3, #1
 1708 000c 0D4D     		ldr	r5, .L300
 1709 000e 03FA04F2 		lsl	r2, r3, r4
 1710 0012 EB69     		ldr	r3, [r5, #28]
ARM GAS  /tmp/cc40AiIs.s 			page 31


 1711 0014 0C49     		ldr	r1, .L300+4
 1712 0016 23EA0203 		bic	r3, r3, r2
 1713 001a EB61     		str	r3, [r5, #28]
 1714 001c 51F82430 		ldr	r3, [r1, r4, lsl #2]
 1715 0020 23F00203 		bic	r3, r3, #2
 1716 0024 41F82430 		str	r3, [r1, r4, lsl #2]
 1717 0028 FFF7FEFF 		bl	udd_ep_abort_job
 1718 002c 013C     		subs	r4, r4, #1
 1719 002e 074B     		ldr	r3, .L300+8
 1720 0030 04EB4404 		add	r4, r4, r4, lsl #1
 1721 0034 03EBC404 		add	r4, r3, r4, lsl #3
 1722 0038 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 1723 003a 6FF38203 		bfc	r3, #2, #1
 1724 003e 2375     		strb	r3, [r4, #20]
 1725              	.L297:
 1726 0040 38BD     		pop	{r3, r4, r5, pc}
 1727              	.L301:
 1728 0042 00BF     		.align	2
 1729              	.L300:
 1730 0044 00C00A40 		.word	1074446336
 1731 0048 00C10A40 		.word	1074446592
 1732 004c 00000000 		.word	.LANCHOR0
 1733              		.size	udd_ep_free, .-udd_ep_free
 1734              		.section	.text.udd_ep_is_halted,"ax",%progbits
 1735              		.align	1
 1736              		.p2align 2,,3
 1737              		.global	udd_ep_is_halted
 1738              		.syntax unified
 1739              		.thumb
 1740              		.thumb_func
 1741              		.fpu softvfp
 1742              		.type	udd_ep_is_halted, %function
 1743              	udd_ep_is_halted:
 1744              		@ args = 0, pretend = 0, frame = 0
 1745              		@ frame_needed = 0, uses_anonymous_args = 0
 1746              		@ link register save eliminated.
 1747 0000 034B     		ldr	r3, .L303
 1748 0002 00F00F00 		and	r0, r0, #15
 1749 0006 53F82000 		ldr	r0, [r3, r0, lsl #2]
 1750 000a C0F3C040 		ubfx	r0, r0, #19, #1
 1751 000e 7047     		bx	lr
 1752              	.L304:
 1753              		.align	2
 1754              	.L303:
 1755 0010 C0C10A40 		.word	1074446784
 1756              		.size	udd_ep_is_halted, .-udd_ep_is_halted
 1757              		.section	.text.udd_ep_set_halt,"ax",%progbits
 1758              		.align	1
 1759              		.p2align 2,,3
 1760              		.global	udd_ep_set_halt
 1761              		.syntax unified
 1762              		.thumb
 1763              		.thumb_func
 1764              		.fpu softvfp
 1765              		.type	udd_ep_set_halt, %function
 1766              	udd_ep_set_halt:
 1767              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc40AiIs.s 			page 32


 1768              		@ frame_needed = 0, uses_anonymous_args = 0
 1769 0000 00F00F03 		and	r3, r0, #15
 1770 0004 032B     		cmp	r3, #3
 1771 0006 2FD8     		bhi	.L310
 1772 0008 294A     		ldr	r2, .L323
 1773 000a 52F82320 		ldr	r2, [r2, r3, lsl #2]
 1774 000e 1103     		lsls	r1, r2, #12
 1775 0010 2CD4     		bmi	.L321
 1776 0012 F0B5     		push	{r4, r5, r6, r7, lr}
 1777 0014 5A1E     		subs	r2, r3, #1
 1778 0016 274C     		ldr	r4, .L323+4
 1779 0018 02EB4202 		add	r2, r2, r2, lsl #1
 1780 001c 04EBC204 		add	r4, r4, r2, lsl #3
 1781 0020 217D     		ldrb	r1, [r4, #20]	@ zero_extendqisi2
 1782 0022 11F00402 		ands	r2, r1, #4
 1783 0026 1DD1     		bne	.L308
 1784 0028 11F00101 		ands	r1, r1, #1
 1785 002c 20D1     		bne	.L311
 1786              		.syntax unified
 1787              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1788 002e EFF31086 		MRS r6, primask
 1789              	@ 0 "" 2
 1790              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1791 0032 72B6     		cpsid i
 1792              	@ 0 "" 2
 1793              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1794 0034 BFF35F8F 		dmb
 1795              	@ 0 "" 2
 1796              		.thumb
 1797              		.syntax unified
 1798 0038 1F4D     		ldr	r5, .L323+8
 1799 003a 0206     		lsls	r2, r0, #24
 1800 003c 2970     		strb	r1, [r5]
 1801 003e 19D4     		bmi	.L322
 1802              	.L309:
 1803 0040 4FF0400E 		mov	lr, #64
 1804 0044 4FF40024 		mov	r4, #524288
 1805 0048 1C49     		ldr	r1, .L323+12
 1806 004a 1D4F     		ldr	r7, .L323+16
 1807 004c 51F82320 		ldr	r2, [r1, r3, lsl #2]
 1808 0050 1C48     		ldr	r0, .L323+20
 1809 0052 22F40072 		bic	r2, r2, #512
 1810 0056 41F82320 		str	r2, [r1, r3, lsl #2]
 1811 005a 47F823E0 		str	lr, [r7, r3, lsl #2]
 1812 005e 40F82340 		str	r4, [r0, r3, lsl #2]
 1813 0062 F6B1     		cbz	r6, .L319
 1814              	.L308:
 1815 0064 0120     		movs	r0, #1
 1816 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 1817              	.L310:
 1818 0068 0020     		movs	r0, #0
 1819 006a 7047     		bx	lr
 1820              	.L321:
 1821 006c 0120     		movs	r0, #1
 1822 006e 7047     		bx	lr
 1823              	.L311:
 1824 0070 1046     		mov	r0, r2
ARM GAS  /tmp/cc40AiIs.s 			page 33


 1825 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 1826              	.L322:
 1827 0074 144A     		ldr	r2, .L323+24
 1828 0076 52F82320 		ldr	r2, [r2, r3, lsl #2]
 1829 007a 12F4405F 		tst	r2, #12288
 1830 007e DFD0     		beq	.L309
 1831 0080 4FF48050 		mov	r0, #4096
 1832 0084 217D     		ldrb	r1, [r4, #20]	@ zero_extendqisi2
 1833 0086 04F11002 		add	r2, r4, #16
 1834 008a 0E4F     		ldr	r7, .L323+20
 1835 008c 0F4C     		ldr	r4, .L323+28
 1836 008e 41F00401 		orr	r1, r1, #4
 1837 0092 1171     		strb	r1, [r2, #4]
 1838 0094 00FA03F2 		lsl	r2, r0, r3
 1839 0098 47F82300 		str	r0, [r7, r3, lsl #2]
 1840 009c A261     		str	r2, [r4, #24]
 1841 009e 002E     		cmp	r6, #0
 1842 00a0 E0D1     		bne	.L308
 1843              	.L319:
 1844 00a2 0120     		movs	r0, #1
 1845 00a4 2870     		strb	r0, [r5]
 1846              		.syntax unified
 1847              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1848 00a6 BFF35F8F 		dmb
 1849              	@ 0 "" 2
 1850              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 1851 00aa 62B6     		cpsie i
 1852              	@ 0 "" 2
 1853              		.thumb
 1854              		.syntax unified
 1855 00ac F0BD     		pop	{r4, r5, r6, r7, pc}
 1856              	.L324:
 1857 00ae 00BF     		.align	2
 1858              	.L323:
 1859 00b0 C0C10A40 		.word	1074446784
 1860 00b4 00000000 		.word	.LANCHOR0
 1861 00b8 00000000 		.word	g_interrupt_enabled
 1862 00bc 00C10A40 		.word	1074446592
 1863 00c0 60C10A40 		.word	1074446688
 1864 00c4 F0C10A40 		.word	1074446832
 1865 00c8 30C10A40 		.word	1074446640
 1866 00cc 00C00A40 		.word	1074446336
 1867              		.size	udd_ep_set_halt, .-udd_ep_set_halt
 1868              		.section	.text.udd_ep_clear_halt,"ax",%progbits
 1869              		.align	1
 1870              		.p2align 2,,3
 1871              		.global	udd_ep_clear_halt
 1872              		.syntax unified
 1873              		.thumb
 1874              		.thumb_func
 1875              		.fpu softvfp
 1876              		.type	udd_ep_clear_halt, %function
 1877              	udd_ep_clear_halt:
 1878              		@ args = 0, pretend = 0, frame = 0
 1879              		@ frame_needed = 0, uses_anonymous_args = 0
 1880 0000 00F00F00 		and	r0, r0, #15
 1881 0004 0328     		cmp	r0, #3
ARM GAS  /tmp/cc40AiIs.s 			page 34


 1882 0006 40D8     		bhi	.L333
 1883 0008 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1884 000a 431E     		subs	r3, r0, #1
 1885 000c 5D00     		lsls	r5, r3, #1
 1886 000e 264C     		ldr	r4, .L351
 1887 0010 EA18     		adds	r2, r5, r3
 1888 0012 04EBC202 		add	r2, r4, r2, lsl #3
 1889 0016 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 1890 0018 4E07     		lsls	r6, r1, #29
 1891 001a 2ED5     		bpl	.L327
 1892 001c 0F46     		mov	r7, r1
 1893 001e 4FF48056 		mov	r6, #4096
 1894 0022 6FF38207 		bfc	r7, #2, #1
 1895 0026 1775     		strb	r7, [r2, #20]
 1896 0028 2049     		ldr	r1, .L351+4
 1897 002a 214F     		ldr	r7, .L351+8
 1898 002c 06FA00FE 		lsl	lr, r6, r0
 1899 0030 204A     		ldr	r2, .L351+12
 1900 0032 41F82060 		str	r6, [r1, r0, lsl #2]
 1901 0036 C7F814E0 		str	lr, [r7, #20]
 1902 003a 52F82060 		ldr	r6, [r2, r0, lsl #2]
 1903 003e 8200     		lsls	r2, r0, #2
 1904 0040 3703     		lsls	r7, r6, #12
 1905 0042 1144     		add	r1, r1, r2
 1906 0044 0BD5     		bpl	.L328
 1907              	.L332:
 1908 0046 1C48     		ldr	r0, .L351+16
 1909 0048 1058     		ldr	r0, [r2, r0]
 1910 004a 4606     		lsls	r6, r0, #25
 1911 004c 1FD4     		bmi	.L349
 1912              	.L329:
 1913 004e 4FF40026 		mov	r6, #524288
 1914 0052 1A48     		ldr	r0, .L351+20
 1915 0054 0E60     		str	r6, [r1]
 1916 0056 1158     		ldr	r1, [r2, r0]
 1917 0058 41F40071 		orr	r1, r1, #512
 1918 005c 1150     		str	r1, [r2, r0]
 1919              	.L328:
 1920 005e 2B44     		add	r3, r3, r5
 1921 0060 DB00     		lsls	r3, r3, #3
 1922 0062 E218     		adds	r2, r4, r3
 1923 0064 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 1924 0066 C807     		lsls	r0, r1, #31
 1925 0068 0DD5     		bpl	.L348
 1926 006a 117D     		ldrb	r1, [r2, #20]	@ zero_extendqisi2
 1927 006c E358     		ldr	r3, [r4, r3]
 1928 006e 6FF30001 		bfc	r1, #0, #1
 1929 0072 1175     		strb	r1, [r2, #20]
 1930 0074 9847     		blx	r3
 1931 0076 0120     		movs	r0, #1
 1932 0078 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1933              	.L327:
 1934 007a 0E49     		ldr	r1, .L351+12
 1935 007c 8200     		lsls	r2, r0, #2
 1936 007e 51F82010 		ldr	r1, [r1, r0, lsl #2]
 1937 0082 0903     		lsls	r1, r1, #12
 1938 0084 0DD4     		bmi	.L350
ARM GAS  /tmp/cc40AiIs.s 			page 35


 1939              	.L348:
 1940 0086 0120     		movs	r0, #1
 1941 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1942              	.L333:
 1943 008a 0020     		movs	r0, #0
 1944 008c 7047     		bx	lr
 1945              	.L349:
 1946 008e 4FF0400E 		mov	lr, #64
 1947 0092 4FF48026 		mov	r6, #262144
 1948 0096 0A4F     		ldr	r7, .L351+24
 1949 0098 0A48     		ldr	r0, .L351+28
 1950 009a 42F807E0 		str	lr, [r2, r7]
 1951 009e 1650     		str	r6, [r2, r0]
 1952 00a0 D5E7     		b	.L329
 1953              	.L350:
 1954 00a2 0249     		ldr	r1, .L351+4
 1955 00a4 1144     		add	r1, r1, r2
 1956 00a6 CEE7     		b	.L332
 1957              	.L352:
 1958              		.align	2
 1959              	.L351:
 1960 00a8 00000000 		.word	.LANCHOR0
 1961 00ac 20C20A40 		.word	1074446880
 1962 00b0 00C00A40 		.word	1074446336
 1963 00b4 C0C10A40 		.word	1074446784
 1964 00b8 30C10A40 		.word	1074446640
 1965 00bc 00C10A40 		.word	1074446592
 1966 00c0 60C10A40 		.word	1074446688
 1967 00c4 F0C10A40 		.word	1074446832
 1968              		.size	udd_ep_clear_halt, .-udd_ep_clear_halt
 1969              		.section	.text.udd_ep_run,"ax",%progbits
 1970              		.align	1
 1971              		.p2align 2,,3
 1972              		.global	udd_ep_run
 1973              		.syntax unified
 1974              		.thumb
 1975              		.thumb_func
 1976              		.fpu softvfp
 1977              		.type	udd_ep_run, %function
 1978              	udd_ep_run:
 1979              		@ args = 4, pretend = 0, frame = 0
 1980              		@ frame_needed = 0, uses_anonymous_args = 0
 1981 0000 00F00F00 		and	r0, r0, #15
 1982 0004 0328     		cmp	r0, #3
 1983 0006 2DD8     		bhi	.L367
 1984 0008 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1985 000c 0126     		movs	r6, #1
 1986 000e 2F4C     		ldr	r4, .L371
 1987 0010 06FA00F5 		lsl	r5, r6, r0
 1988 0014 E469     		ldr	r4, [r4, #28]
 1989 0016 2542     		tst	r5, r4
 1990 0018 21D0     		beq	.L356
 1991 001a 2D4C     		ldr	r4, .L371+4
 1992 001c 54F82040 		ldr	r4, [r4, r0, lsl #2]
 1993 0020 2403     		lsls	r4, r4, #12
 1994 0022 1CD4     		bmi	.L356
 1995 0024 00F1FF3C 		add	ip, r0, #-1
ARM GAS  /tmp/cc40AiIs.s 			page 36


 1996 0028 0CFA06F8 		lsl	r8, ip, r6
 1997 002c DFF8A4E0 		ldr	lr, .L371+8
 1998 0030 08EB0C05 		add	r5, r8, ip
 1999 0034 0EEBC505 		add	r5, lr, r5, lsl #3
 2000 0038 2C7D     		ldrb	r4, [r5, #20]	@ zero_extendqisi2
 2001 003a 14F00407 		ands	r7, r4, #4
 2002 003e 0ED1     		bne	.L356
 2003              		.syntax unified
 2004              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2005 0040 EFF31084 		MRS r4, primask
 2006              	@ 0 "" 2
 2007              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2008 0044 72B6     		cpsid i
 2009              	@ 0 "" 2
 2010              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2011 0046 BFF35F8F 		dmb
 2012              	@ 0 "" 2
 2013              		.thumb
 2014              		.syntax unified
 2015 004a 95F814A0 		ldrb	r10, [r5, #20]	@ zero_extendqisi2
 2016 004e DFF88890 		ldr	r9, .L371+12
 2017 0052 1AF0010F 		tst	r10, #1
 2018 0056 89F80070 		strb	r7, [r9]
 2019 005a 05D0     		beq	.L357
 2020 005c 74B3     		cbz	r4, .L368
 2021              	.L356:
 2022 005e 0020     		movs	r0, #0
 2023 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2024              	.L367:
 2025 0064 0020     		movs	r0, #0
 2026 0066 7047     		bx	lr
 2027              	.L357:
 2028 0068 2F7D     		ldrb	r7, [r5, #20]	@ zero_extendqisi2
 2029 006a 47F00107 		orr	r7, r7, #1
 2030 006e 2F75     		strb	r7, [r5, #20]
 2031 0070 F4B1     		cbz	r4, .L369
 2032              	.L358:
 2033 0072 0025     		movs	r5, #0
 2034 0074 08EB0C04 		add	r4, r8, ip
 2035 0078 089E     		ldr	r6, [sp, #32]
 2036 007a E400     		lsls	r4, r4, #3
 2037 007c 4EF80460 		str	r6, [lr, r4]
 2038 0080 7444     		add	r4, r4, lr
 2039 0082 6260     		str	r2, [r4, #4]
 2040 0084 A360     		str	r3, [r4, #8]
 2041 0086 E560     		str	r5, [r4, #12]
 2042 0088 2561     		str	r5, [r4, #16]
 2043 008a 69B1     		cbz	r1, .L370
 2044              	.L359:
 2045 008c C444     		add	ip, ip, r8
 2046 008e 0EEBCC0E 		add	lr, lr, ip, lsl #3
 2047 0092 9EF81430 		ldrb	r3, [lr, #20]	@ zero_extendqisi2
 2048 0096 61F34103 		bfi	r3, r1, #1, #1
 2049 009a 8EF81430 		strb	r3, [lr, #20]
 2050 009e FFF7FEFF 		bl	udd_ep_trans_done
 2051 00a2 0120     		movs	r0, #1
 2052 00a4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  /tmp/cc40AiIs.s 			page 37


 2053              	.L370:
 2054 00a8 B3FA83F1 		clz	r1, r3
 2055 00ac 4909     		lsrs	r1, r1, #5
 2056 00ae EDE7     		b	.L359
 2057              	.L369:
 2058 00b0 89F80060 		strb	r6, [r9]
 2059              		.syntax unified
 2060              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2061 00b4 BFF35F8F 		dmb
 2062              	@ 0 "" 2
 2063              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2064 00b8 62B6     		cpsie i
 2065              	@ 0 "" 2
 2066              		.thumb
 2067              		.syntax unified
 2068 00ba DAE7     		b	.L358
 2069              	.L368:
 2070 00bc 89F80060 		strb	r6, [r9]
 2071              		.syntax unified
 2072              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2073 00c0 BFF35F8F 		dmb
 2074              	@ 0 "" 2
 2075              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 2076 00c4 62B6     		cpsie i
 2077              	@ 0 "" 2
 2078              		.thumb
 2079              		.syntax unified
 2080 00c6 2046     		mov	r0, r4
 2081 00c8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2082              	.L372:
 2083              		.align	2
 2084              	.L371:
 2085 00cc 00C00A40 		.word	1074446336
 2086 00d0 C0C10A40 		.word	1074446784
 2087 00d4 00000000 		.word	.LANCHOR0
 2088 00d8 00000000 		.word	g_interrupt_enabled
 2089              		.size	udd_ep_run, .-udd_ep_run
 2090              		.section	.text.udd_ep_alloc,"ax",%progbits
 2091              		.align	1
 2092              		.p2align 2,,3
 2093              		.global	udd_ep_alloc
 2094              		.syntax unified
 2095              		.thumb
 2096              		.thumb_func
 2097              		.fpu softvfp
 2098              		.type	udd_ep_alloc, %function
 2099              	udd_ep_alloc:
 2100              		@ args = 0, pretend = 0, frame = 8
 2101              		@ frame_needed = 0, uses_anonymous_args = 0
 2102 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2103 0004 00F00F05 		and	r5, r0, #15
 2104 0008 032D     		cmp	r5, #3
 2105 000a 85B0     		sub	sp, sp, #20
 2106 000c 00F2C380 		bhi	.L390
 2107 0010 0123     		movs	r3, #1
 2108 0012 704C     		ldr	r4, .L418
 2109 0014 AB40     		lsls	r3, r3, r5
ARM GAS  /tmp/cc40AiIs.s 			page 38


 2110 0016 E469     		ldr	r4, [r4, #28]
 2111 0018 2340     		ands	r3, r3, r4
 2112 001a 40F0BC80 		bne	.L390
 2113 001e 11F00304 		ands	r4, r1, #3
 2114 0022 00F0B880 		beq	.L390
 2115 0026 022C     		cmp	r4, #2
 2116 0028 40F2B980 		bls	.L391
 2117 002c 032C     		cmp	r4, #3
 2118 002e 40F0B280 		bne	.L390
 2119 0032 9E46     		mov	lr, r3
 2120              	.L377:
 2121 0034 684C     		ldr	r4, .L418+4
 2122 0036 A2F58066 		sub	r6, r2, #1024
 2123 003a 54F82570 		ldr	r7, [r4, r5, lsl #2]
 2124 003e 10F0800F 		tst	r0, #128
 2125 0042 B0B2     		uxth	r0, r6
 2126 0044 4FEAC121 		lsl	r1, r1, #11
 2127 0048 27F4CB57 		bic	r7, r7, #6496
 2128 004c 0CBF     		ite	eq
 2129 004e 4FF00008 		moveq	r8, #0
 2130 0052 4FF48078 		movne	r8, #256
 2131 0056 B0F57C4F 		cmp	r0, #64512
 2132 005a 01F4C051 		and	r1, r1, #6144
 2133 005e 27F01C07 		bic	r7, r7, #28
 2134 0062 04EB8506 		add	r6, r4, r5, lsl #2
 2135 0066 C0F09D80 		bcc	.L393
 2136 006a 082A     		cmp	r2, #8
 2137 006c 00F2AA80 		bhi	.L415
 2138              	.L380:
 2139 0070 41F67C10 		movw	r0, #6524
 2140 0074 4FF0010C 		mov	ip, #1
 2141 0078 41EA0E02 		orr	r2, r1, lr
 2142 007c 42EA0802 		orr	r2, r2, r8
 2143 0080 1343     		orrs	r3, r3, r2
 2144 0082 0340     		ands	r3, r3, r0
 2145 0084 3B43     		orrs	r3, r3, r7
 2146 0086 032D     		cmp	r5, #3
 2147 0088 0CFA05F7 		lsl	r7, ip, r5
 2148 008c 44F82530 		str	r3, [r4, r5, lsl #2]
 2149 0090 BFB2     		uxth	r7, r7
 2150 0092 1AD0     		beq	.L381
 2151 0094 0321     		movs	r1, #3
 2152 0096 AE46     		mov	lr, r5
 2153 0098 5048     		ldr	r0, .L418+8
 2154 009a 4E4C     		ldr	r4, .L418
 2155              	.L383:
 2156 009c E569     		ldr	r5, [r4, #28]
 2157 009e 0CFA01F3 		lsl	r3, ip, r1
 2158 00a2 1D42     		tst	r5, r3
 2159 00a4 01F1FF31 		add	r1, r1, #-1
 2160 00a8 CAB2     		uxtb	r2, r1
 2161 00aa 09D0     		beq	.L382
 2162 00ac E569     		ldr	r5, [r4, #28]
 2163 00ae 1F43     		orrs	r7, r7, r3
 2164 00b0 25EA0303 		bic	r3, r5, r3
 2165 00b4 E361     		str	r3, [r4, #28]
 2166 00b6 0368     		ldr	r3, [r0]
ARM GAS  /tmp/cc40AiIs.s 			page 39


 2167 00b8 BFB2     		uxth	r7, r7
 2168 00ba 23F00203 		bic	r3, r3, #2
 2169 00be 0360     		str	r3, [r0]
 2170              	.L382:
 2171 00c0 9645     		cmp	lr, r2
 2172 00c2 A0F10400 		sub	r0, r0, #4
 2173 00c6 E9D3     		bcc	.L383
 2174 00c8 7546     		mov	r5, lr
 2175              	.L381:
 2176 00ca 2C46     		mov	r4, r5
 2177 00cc DFF81081 		ldr	r8, .L418+12
 2178 00d0 05EB4505 		add	r5, r5, r5, lsl #1
 2179 00d4 08EBC505 		add	r5, r8, r5, lsl #3
 2180 00d8 E0B2     		uxtb	r0, r4
 2181 00da 0397     		str	r7, [sp, #12]
 2182              	.L385:
 2183 00dc 0122     		movs	r2, #1
 2184 00de 611E     		subs	r1, r4, #1
 2185 00e0 02FA04FE 		lsl	lr, r2, r4
 2186 00e4 039A     		ldr	r2, [sp, #12]
 2187 00e6 4FEA410C 		lsl	ip, r1, #1
 2188 00ea 2241     		asrs	r2, r2, r4
 2189 00ec 0CEB0103 		add	r3, ip, r1
 2190 00f0 08EBC303 		add	r3, r8, r3, lsl #3
 2191 00f4 12F0010F 		tst	r2, #1
 2192 00f8 03F11009 		add	r9, r3, #16
 2193 00fc 04F10104 		add	r4, r4, #1
 2194 0100 3CD0     		beq	.L388
 2195 0102 99F804B0 		ldrb	fp, [r9, #4]	@ zero_extendqisi2
 2196 0106 334F     		ldr	r7, .L418
 2197 0108 5A46     		mov	r2, fp
 2198 010a 6FF30002 		bfc	r2, #0, #1
 2199 010e 89F80420 		strb	r2, [r9, #4]
 2200 0112 3268     		ldr	r2, [r6]
 2201 0114 0CEB010A 		add	r10, ip, r1
 2202 0118 42F00202 		orr	r2, r2, #2
 2203 011c 3260     		str	r2, [r6]
 2204 011e 2D4A     		ldr	r2, .L418
 2205 0120 08EBCA0A 		add	r10, r8, r10, lsl #3
 2206 0124 D269     		ldr	r2, [r2, #28]
 2207 0126 0BF0010B 		and	fp, fp, #1
 2208 012a 4EEA0202 		orr	r2, lr, r2
 2209 012e FA61     		str	r2, [r7, #28]
 2210 0130 326B     		ldr	r2, [r6, #48]
 2211 0132 5703     		lsls	r7, r2, #13
 2212 0134 2DD5     		bpl	.L416
 2213 0136 3368     		ldr	r3, [r6]
 2214 0138 43F40073 		orr	r3, r3, #512
 2215 013c 3360     		str	r3, [r6]
 2216 013e BBF1000F 		cmp	fp, #0
 2217 0142 1BD0     		beq	.L388
 2218 0144 55F80C3C 		ldr	r3, [r5, #-12]
 2219 0148 55F8082C 		ldr	r2, [r5, #-8]
 2220 014c 55F8147C 		ldr	r7, [r5, #-20]
 2221 0150 9A1A     		subs	r2, r3, r2
 2222 0152 45F80C2C 		str	r2, [r5, #-12]
 2223 0156 3368     		ldr	r3, [r6]
ARM GAS  /tmp/cc40AiIs.s 			page 40


 2224 0158 9AF81410 		ldrb	r1, [r10, #20]	@ zero_extendqisi2
 2225 015c DB05     		lsls	r3, r3, #23
 2226 015e 55F8103C 		ldr	r3, [r5, #-16]
 2227 0162 48BF     		it	mi
 2228 0164 40F08000 		orrmi	r0, r0, #128
 2229 0168 9B1A     		subs	r3, r3, r2
 2230 016a 3A44     		add	r2, r2, r7
 2231 016c 55F8187C 		ldr	r7, [r5, #-24]
 2232 0170 C1F34001 		ubfx	r1, r1, #1, #1
 2233 0174 0097     		str	r7, [sp]
 2234 0176 FFF7FEFF 		bl	udd_ep_run
 2235 017a 60B1     		cbz	r0, .L390
 2236              	.L388:
 2237 017c E0B2     		uxtb	r0, r4
 2238 017e 0428     		cmp	r0, #4
 2239 0180 06F10406 		add	r6, r6, #4
 2240 0184 05F11805 		add	r5, r5, #24
 2241 0188 A8D1     		bne	.L385
 2242 018a 0120     		movs	r0, #1
 2243 018c 05B0     		add	sp, sp, #20
 2244              		@ sp needed
 2245 018e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2246              	.L416:
 2247 0192 1B68     		ldr	r3, [r3]
 2248 0194 43B9     		cbnz	r3, .L417
 2249              	.L390:
 2250 0196 0020     		movs	r0, #0
 2251              	.L375:
 2252 0198 05B0     		add	sp, sp, #20
 2253              		@ sp needed
 2254 019a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2255              	.L391:
 2256 019e 4FF0040E 		mov	lr, #4
 2257 01a2 47E7     		b	.L377
 2258              	.L393:
 2259 01a4 7023     		movs	r3, #112
 2260 01a6 63E7     		b	.L380
 2261              	.L417:
 2262 01a8 3268     		ldr	r2, [r6]
 2263 01aa 6144     		add	r1, r1, ip
 2264 01ac D205     		lsls	r2, r2, #23
 2265 01ae 48BF     		it	mi
 2266 01b0 40F08000 		orrmi	r0, r0, #128
 2267 01b4 08EBC101 		add	r1, r8, r1, lsl #3
 2268 01b8 0246     		mov	r2, r0
 2269 01ba C968     		ldr	r1, [r1, #12]
 2270 01bc 0120     		movs	r0, #1
 2271 01be 9847     		blx	r3
 2272 01c0 0020     		movs	r0, #0
 2273 01c2 E9E7     		b	.L375
 2274              	.L415:
 2275 01c4 5000     		lsls	r0, r2, #1
 2276 01c6 0138     		subs	r0, r0, #1
 2277 01c8 B0FA80F0 		clz	r0, r0
 2278 01cc C0F11C03 		rsb	r3, r0, #28
 2279 01d0 1B01     		lsls	r3, r3, #4
 2280 01d2 4DE7     		b	.L380
ARM GAS  /tmp/cc40AiIs.s 			page 41


 2281              	.L419:
 2282              		.align	2
 2283              	.L418:
 2284 01d4 00C00A40 		.word	1074446336
 2285 01d8 00C10A40 		.word	1074446592
 2286 01dc 0CC10A40 		.word	1074446604
 2287 01e0 00000000 		.word	.LANCHOR0
 2288              		.size	udd_ep_alloc, .-udd_ep_alloc
 2289              		.section	.text.udd_ep_abort,"ax",%progbits
 2290              		.align	1
 2291              		.p2align 2,,3
 2292              		.global	udd_ep_abort
 2293              		.syntax unified
 2294              		.thumb
 2295              		.thumb_func
 2296              		.fpu softvfp
 2297              		.type	udd_ep_abort, %function
 2298              	udd_ep_abort:
 2299              		@ args = 0, pretend = 0, frame = 0
 2300              		@ frame_needed = 0, uses_anonymous_args = 0
 2301              		@ link register save eliminated.
 2302 0000 F0B4     		push	{r4, r5, r6, r7}
 2303 0002 4FF48052 		mov	r2, #4096
 2304 0006 4FF00074 		mov	r4, #33554432
 2305 000a 0026     		movs	r6, #0
 2306 000c 00F00F03 		and	r3, r0, #15
 2307 0010 1049     		ldr	r1, .L428
 2308 0012 114D     		ldr	r5, .L428+4
 2309 0014 5F1E     		subs	r7, r3, #1
 2310 0016 9A40     		lsls	r2, r2, r3
 2311 0018 BC40     		lsls	r4, r4, r7
 2312 001a 01EB0311 		add	r1, r1, r3, lsl #4
 2313 001e 6C61     		str	r4, [r5, #20]
 2314 0020 8E60     		str	r6, [r1, #8]
 2315 0022 6A61     		str	r2, [r5, #20]
 2316 0024 0206     		lsls	r2, r0, #24
 2317 0026 02D4     		bmi	.L421
 2318              	.L425:
 2319 0028 F0BC     		pop	{r4, r5, r6, r7}
 2320 002a FFF7FEBF 		b	udd_ep_abort_job
 2321              	.L421:
 2322 002e 4FF40055 		mov	r5, #8192
 2323 0032 0A49     		ldr	r1, .L428+8
 2324 0034 0A4C     		ldr	r4, .L428+12
 2325 0036 0B4A     		ldr	r2, .L428+16
 2326 0038 9B00     		lsls	r3, r3, #2
 2327 003a 1944     		add	r1, r1, r3
 2328 003c 1C44     		add	r4, r4, r3
 2329 003e 1A44     		add	r2, r2, r3
 2330              	.L422:
 2331 0040 0B68     		ldr	r3, [r1]
 2332 0042 13F4405F 		tst	r3, #12288
 2333 0046 EFD0     		beq	.L425
 2334 0048 2560     		str	r5, [r4]
 2335              	.L423:
 2336 004a 1368     		ldr	r3, [r2]
 2337 004c 9B04     		lsls	r3, r3, #18
ARM GAS  /tmp/cc40AiIs.s 			page 42


 2338 004e FCD4     		bmi	.L423
 2339 0050 F6E7     		b	.L422
 2340              	.L429:
 2341 0052 00BF     		.align	2
 2342              	.L428:
 2343 0054 00C30A40 		.word	1074447104
 2344 0058 00C00A40 		.word	1074446336
 2345 005c 30C10A40 		.word	1074446640
 2346 0060 F0C10A40 		.word	1074446832
 2347 0064 C0C10A40 		.word	1074446784
 2348              		.size	udd_ep_abort, .-udd_ep_abort
 2349              		.section	.text.udd_ep_wait_stall_clear,"ax",%progbits
 2350              		.align	1
 2351              		.p2align 2,,3
 2352              		.global	udd_ep_wait_stall_clear
 2353              		.syntax unified
 2354              		.thumb
 2355              		.thumb_func
 2356              		.fpu softvfp
 2357              		.type	udd_ep_wait_stall_clear, %function
 2358              	udd_ep_wait_stall_clear:
 2359              		@ args = 0, pretend = 0, frame = 0
 2360              		@ frame_needed = 0, uses_anonymous_args = 0
 2361 0000 00F00F02 		and	r2, r0, #15
 2362 0004 032A     		cmp	r2, #3
 2363 0006 24D8     		bhi	.L434
 2364 0008 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2365 000a 0126     		movs	r6, #1
 2366 000c 1348     		ldr	r0, .L441
 2367 000e 06FA02F3 		lsl	r3, r6, r2
 2368 0012 C069     		ldr	r0, [r0, #28]
 2369 0014 1840     		ands	r0, r3, r0
 2370 0016 1BD0     		beq	.L431
 2371 0018 551E     		subs	r5, r2, #1
 2372 001a 05FA06F3 		lsl	r3, r5, r6
 2373 001e 1048     		ldr	r0, .L441+4
 2374 0020 5C19     		adds	r4, r3, r5
 2375 0022 00EBC404 		add	r4, r0, r4, lsl #3
 2376 0026 247D     		ldrb	r4, [r4, #20]	@ zero_extendqisi2
 2377 0028 E707     		lsls	r7, r4, #31
 2378 002a 10D4     		bmi	.L436
 2379 002c 0D4F     		ldr	r7, .L441+8
 2380 002e 57F82220 		ldr	r2, [r7, r2, lsl #2]
 2381 0032 1703     		lsls	r7, r2, #12
 2382 0034 01D4     		bmi	.L432
 2383 0036 6207     		lsls	r2, r4, #29
 2384 0038 0DD5     		bpl	.L433
 2385              	.L432:
 2386 003a 2B44     		add	r3, r3, r5
 2387 003c DB00     		lsls	r3, r3, #3
 2388 003e C218     		adds	r2, r0, r3
 2389 0040 147D     		ldrb	r4, [r2, #20]	@ zero_extendqisi2
 2390 0042 C150     		str	r1, [r0, r3]
 2391 0044 44F00103 		orr	r3, r4, #1
 2392 0048 1375     		strb	r3, [r2, #20]
 2393 004a 0120     		movs	r0, #1
 2394 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/cc40AiIs.s 			page 43


 2395              	.L436:
 2396 004e 0020     		movs	r0, #0
 2397              	.L431:
 2398 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2399              	.L434:
 2400 0052 0020     		movs	r0, #0
 2401 0054 7047     		bx	lr
 2402              	.L433:
 2403 0056 8847     		blx	r1
 2404 0058 3046     		mov	r0, r6
 2405 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2406              	.L442:
 2407              		.align	2
 2408              	.L441:
 2409 005c 00C00A40 		.word	1074446336
 2410 0060 00000000 		.word	.LANCHOR0
 2411 0064 C0C10A40 		.word	1074446784
 2412              		.size	udd_ep_wait_stall_clear, .-udd_ep_wait_stall_clear
 2413              		.comm	udd_g_ctrlreq,24,4
 2414              		.section	.bss.b_shortpacket.8160,"aw",%nobits
 2415              		.set	.LANCHOR4,. + 0
 2416              		.type	b_shortpacket.8160, %object
 2417              		.size	b_shortpacket.8160, 1
 2418              	b_shortpacket.8160:
 2419 0000 00       		.space	1
 2420              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2421              		.align	2
 2422              		.type	cpu_irq_critical_section_counter, %object
 2423              		.size	cpu_irq_critical_section_counter, 4
 2424              	cpu_irq_critical_section_counter:
 2425 0000 00000000 		.space	4
 2426              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2427              		.type	cpu_irq_prev_interrupt_state, %object
 2428              		.size	cpu_irq_prev_interrupt_state, 1
 2429              	cpu_irq_prev_interrupt_state:
 2430 0000 00       		.space	1
 2431              		.section	.bss.udd_ctrl_payload_buf_cnt,"aw",%nobits
 2432              		.align	1
 2433              		.set	.LANCHOR2,. + 0
 2434              		.type	udd_ctrl_payload_buf_cnt, %object
 2435              		.size	udd_ctrl_payload_buf_cnt, 2
 2436              	udd_ctrl_payload_buf_cnt:
 2437 0000 0000     		.space	2
 2438              		.section	.bss.udd_ctrl_prev_payload_buf_cnt,"aw",%nobits
 2439              		.align	1
 2440              		.set	.LANCHOR3,. + 0
 2441              		.type	udd_ctrl_prev_payload_buf_cnt, %object
 2442              		.size	udd_ctrl_prev_payload_buf_cnt, 2
 2443              	udd_ctrl_prev_payload_buf_cnt:
 2444 0000 0000     		.space	2
 2445              		.section	.bss.udd_ep_control_state,"aw",%nobits
 2446              		.set	.LANCHOR1,. + 0
 2447              		.type	udd_ep_control_state, %object
 2448              		.size	udd_ep_control_state, 1
 2449              	udd_ep_control_state:
 2450 0000 00       		.space	1
 2451              		.section	.bss.udd_ep_job,"aw",%nobits
ARM GAS  /tmp/cc40AiIs.s 			page 44


 2452              		.align	2
 2453              		.set	.LANCHOR0,. + 0
 2454              		.type	udd_ep_job, %object
 2455              		.size	udd_ep_job, 72
 2456              	udd_ep_job:
 2457 0000 00000000 		.space	72
 2457      00000000 
 2457      00000000 
 2457      00000000 
 2457      00000000 
 2458              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
