ARM GAS  /tmp/ccTAZutH.s 			page 1


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
  11              		.file	"emac.c"
  12              		.section	.text.emac_reset_tx_mem,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	emac_reset_tx_mem, %function
  20              	emac_reset_tx_mem:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 70B4     		push	{r4, r5, r6}
  25 0002 0024     		movs	r4, #0
  26 0004 0668     		ldr	r6, [r0]
  27 0006 818C     		ldrh	r1, [r0, #36]
  28 0008 3368     		ldr	r3, [r6]
  29 000a 4268     		ldr	r2, [r0, #4]
  30 000c 23F00803 		bic	r3, r3, #8
  31 0010 0569     		ldr	r5, [r0, #16]
  32 0012 3360     		str	r3, [r6]
  33 0014 0485     		strh	r4, [r0, #40]	@ movhi
  34 0016 C484     		strh	r4, [r0, #38]	@ movhi
  35 0018 C1B1     		cbz	r1, .L4
  36 001a 2B46     		mov	r3, r5
  37 001c 4FF00044 		mov	r4, #-2147483648
  38 0020 05EBC100 		add	r0, r5, r1, lsl #3
  39              	.L3:
  40 0024 83E81400 		stm	r3, {r2, r4}
  41 0028 0833     		adds	r3, r3, #8
  42 002a 8342     		cmp	r3, r0
  43 002c 02F2EE52 		addw	r2, r2, #1518
  44 0030 F8D1     		bne	.L3
  45 0032 01F10051 		add	r1, r1, #536870912
  46 0036 0139     		subs	r1, r1, #1
  47 0038 C900     		lsls	r1, r1, #3
  48              	.L2:
  49 003a 4FF04043 		mov	r3, #-1073741824
  50 003e 2944     		add	r1, r1, r5
  51 0040 4B60     		str	r3, [r1, #4]
  52 0042 25F00305 		bic	r5, r5, #3
  53 0046 F561     		str	r5, [r6, #28]
  54 0048 70BC     		pop	{r4, r5, r6}
  55 004a 7047     		bx	lr
  56              	.L4:
  57 004c 6FF00701 		mvn	r1, #7
ARM GAS  /tmp/ccTAZutH.s 			page 2


  58 0050 F3E7     		b	.L2
  59              		.size	emac_reset_tx_mem, .-emac_reset_tx_mem
  60 0052 00BF     		.section	.text.emac_reset_rx_mem,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu softvfp
  67              		.type	emac_reset_rx_mem, %function
  68              	emac_reset_rx_mem:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 0023     		movs	r3, #0
  73 0002 F0B4     		push	{r4, r5, r6, r7}
  74 0004 0768     		ldr	r7, [r0]
  75 0006 058C     		ldrh	r5, [r0, #32]
  76 0008 3968     		ldr	r1, [r7]
  77 000a 8268     		ldr	r2, [r0, #8]
  78 000c 21F00401 		bic	r1, r1, #4
  79 0010 C668     		ldr	r6, [r0, #12]
  80 0012 3960     		str	r1, [r7]
  81 0014 4384     		strh	r3, [r0, #34]	@ movhi
  82 0016 CDB1     		cbz	r5, .L11
  83 0018 1846     		mov	r0, r3
  84 001a 3346     		mov	r3, r6
  85 001c 06EBC504 		add	r4, r6, r5, lsl #3
  86              	.L10:
  87 0020 22F00301 		bic	r1, r2, #3
  88 0024 5860     		str	r0, [r3, #4]
  89 0026 1960     		str	r1, [r3]
  90 0028 0833     		adds	r3, r3, #8
  91 002a 9C42     		cmp	r4, r3
  92 002c 02F18002 		add	r2, r2, #128
  93 0030 F6D1     		bne	.L10
  94 0032 05F10055 		add	r5, r5, #536870912
  95 0036 013D     		subs	r5, r5, #1
  96 0038 ED00     		lsls	r5, r5, #3
  97              	.L9:
  98 003a 7359     		ldr	r3, [r6, r5]
  99 003c 26F00302 		bic	r2, r6, #3
 100 0040 43F00203 		orr	r3, r3, #2
 101 0044 7351     		str	r3, [r6, r5]
 102 0046 BA61     		str	r2, [r7, #24]
 103 0048 F0BC     		pop	{r4, r5, r6, r7}
 104 004a 7047     		bx	lr
 105              	.L11:
 106 004c 6FF00705 		mvn	r5, #7
 107 0050 F3E7     		b	.L9
 108              		.size	emac_reset_rx_mem, .-emac_reset_rx_mem
 109 0052 00BF     		.section	.text.emac_phy_read,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	emac_phy_read
 113              		.syntax unified
 114              		.thumb
ARM GAS  /tmp/ccTAZutH.s 			page 3


 115              		.thumb_func
 116              		.fpu softvfp
 117              		.type	emac_phy_read, %function
 118              	emac_phy_read:
 119              		@ args = 0, pretend = 0, frame = 8
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 10B4     		push	{r4}
 123 0002 83B0     		sub	sp, sp, #12
 124              	.L15:
 125 0004 8468     		ldr	r4, [r0, #8]
 126 0006 6407     		lsls	r4, r4, #29
 127 0008 FCD5     		bpl	.L15
 128 000a 0024     		movs	r4, #0
 129 000c 9204     		lsls	r2, r2, #18
 130 000e 02F4F802 		and	r2, r2, #8126464
 131 0012 42F0C042 		orr	r2, r2, #1610612736
 132 0016 C905     		lsls	r1, r1, #23
 133 0018 01F07861 		and	r1, r1, #260046848
 134 001c 42F40032 		orr	r2, r2, #131072
 135 0020 0A43     		orrs	r2, r2, r1
 136 0022 4263     		str	r2, [r0, #52]
 137 0024 0C49     		ldr	r1, .L27
 138 0026 0194     		str	r4, [sp, #4]
 139 0028 05E0     		b	.L16
 140              	.L18:
 141 002a 019A     		ldr	r2, [sp, #4]
 142 002c 0132     		adds	r2, r2, #1
 143 002e 0192     		str	r2, [sp, #4]
 144 0030 019A     		ldr	r2, [sp, #4]
 145 0032 8A42     		cmp	r2, r1
 146 0034 0CD8     		bhi	.L20
 147              	.L16:
 148 0036 8268     		ldr	r2, [r0, #8]
 149 0038 5407     		lsls	r4, r2, #29
 150 003a F6D5     		bpl	.L18
 151              	.L23:
 152 003c 8268     		ldr	r2, [r0, #8]
 153 003e 5207     		lsls	r2, r2, #29
 154 0040 FCD5     		bpl	.L23
 155 0042 426B     		ldr	r2, [r0, #52]
 156 0044 0020     		movs	r0, #0
 157 0046 92B2     		uxth	r2, r2
 158 0048 1A60     		str	r2, [r3]
 159 004a 03B0     		add	sp, sp, #12
 160              		@ sp needed
 161 004c 10BC     		pop	{r4}
 162 004e 7047     		bx	lr
 163              	.L20:
 164 0050 0120     		movs	r0, #1
 165 0052 03B0     		add	sp, sp, #12
 166              		@ sp needed
 167 0054 10BC     		pop	{r4}
 168 0056 7047     		bx	lr
 169              	.L28:
 170              		.align	2
 171              	.L27:
ARM GAS  /tmp/ccTAZutH.s 			page 4


 172 0058 3F420F00 		.word	999999
 173              		.size	emac_phy_read, .-emac_phy_read
 174              		.section	.text.emac_phy_write,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	emac_phy_write
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu softvfp
 182              		.type	emac_phy_write, %function
 183              	emac_phy_write:
 184              		@ args = 0, pretend = 0, frame = 8
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 10B4     		push	{r4}
 188 0002 83B0     		sub	sp, sp, #12
 189              	.L30:
 190 0004 8468     		ldr	r4, [r0, #8]
 191 0006 6407     		lsls	r4, r4, #29
 192 0008 FCD5     		bpl	.L30
 193 000a 0024     		movs	r4, #0
 194 000c 9204     		lsls	r2, r2, #18
 195 000e 02F4F802 		and	r2, r2, #8126464
 196 0012 42F0A042 		orr	r2, r2, #1342177280
 197 0016 C905     		lsls	r1, r1, #23
 198 0018 42F40032 		orr	r2, r2, #131072
 199 001c 01F07861 		and	r1, r1, #260046848
 200 0020 0A43     		orrs	r2, r2, r1
 201 0022 9BB2     		uxth	r3, r3
 202 0024 1A43     		orrs	r2, r2, r3
 203 0026 4263     		str	r2, [r0, #52]
 204 0028 094A     		ldr	r2, .L38
 205 002a 0194     		str	r4, [sp, #4]
 206 002c 05E0     		b	.L31
 207              	.L33:
 208 002e 019B     		ldr	r3, [sp, #4]
 209 0030 0133     		adds	r3, r3, #1
 210 0032 0193     		str	r3, [sp, #4]
 211 0034 019B     		ldr	r3, [sp, #4]
 212 0036 9342     		cmp	r3, r2
 213 0038 06D8     		bhi	.L34
 214              	.L31:
 215 003a 8368     		ldr	r3, [r0, #8]
 216 003c 5B07     		lsls	r3, r3, #29
 217 003e F6D5     		bpl	.L33
 218 0040 0020     		movs	r0, #0
 219 0042 03B0     		add	sp, sp, #12
 220              		@ sp needed
 221 0044 10BC     		pop	{r4}
 222 0046 7047     		bx	lr
 223              	.L34:
 224 0048 0120     		movs	r0, #1
 225 004a 03B0     		add	sp, sp, #12
 226              		@ sp needed
 227 004c 10BC     		pop	{r4}
 228 004e 7047     		bx	lr
ARM GAS  /tmp/ccTAZutH.s 			page 5


 229              	.L39:
 230              		.align	2
 231              	.L38:
 232 0050 3F420F00 		.word	999999
 233              		.size	emac_phy_write, .-emac_phy_write
 234              		.section	.text.emac_dev_init,"ax",%progbits
 235              		.align	1
 236              		.p2align 2,,3
 237              		.global	emac_dev_init
 238              		.syntax unified
 239              		.thumb
 240              		.thumb_func
 241              		.fpu softvfp
 242              		.type	emac_dev_init, %function
 243              	emac_dev_init:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 247 0002 0446     		mov	r4, r0
 248 0004 0025     		movs	r5, #0
 249 0006 4FF0FF33 		mov	r3, #-1
 250 000a 0727     		movs	r7, #7
 251 000c 7720     		movs	r0, #119
 252 000e 2560     		str	r5, [r4]
 253 0010 E362     		str	r3, [r4, #44]
 254 0012 2368     		ldr	r3, [r4]
 255 0014 1646     		mov	r6, r2
 256 0016 43F02003 		orr	r3, r3, #32
 257 001a 2360     		str	r3, [r4]
 258 001c 2762     		str	r7, [r4, #32]
 259 001e 6061     		str	r0, [r4, #20]
 260 0020 636A     		ldr	r3, [r4, #36]
 261 0022 6368     		ldr	r3, [r4, #4]
 262 0024 0D46     		mov	r5, r1
 263 0026 43F40833 		orr	r3, r3, #139264
 264 002a 6360     		str	r3, [r4, #4]
 265 002c 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 266 002e 002B     		cmp	r3, #0
 267 0030 3ED0     		beq	.L41
 268 0032 6368     		ldr	r3, [r4, #4]
 269 0034 43F01003 		orr	r3, r3, #16
 270 0038 6360     		str	r3, [r4, #4]
 271 003a 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 272 003c 002B     		cmp	r3, #0
 273 003e 3ED1     		bne	.L46
 274              	.L43:
 275 0040 6368     		ldr	r3, [r4, #4]
 276 0042 23F02003 		bic	r3, r3, #32
 277 0046 6360     		str	r3, [r4, #4]
 278              	.L44:
 279 0048 4FF0200E 		mov	lr, #32
 280 004c 0827     		movs	r7, #8
 281 004e 1E49     		ldr	r1, .L47
 282 0050 1E48     		ldr	r0, .L47+4
 283 0052 21F00701 		bic	r1, r1, #7
 284 0056 1E4A     		ldr	r2, .L47+8
 285 0058 1E4B     		ldr	r3, .L47+12
ARM GAS  /tmp/ccTAZutH.s 			page 6


 286 005a E960     		str	r1, [r5, #12]
 287 005c 1E49     		ldr	r1, .L47+16
 288 005e 22F00702 		bic	r2, r2, #7
 289 0062 23F00703 		bic	r3, r3, #7
 290 0066 20F00700 		bic	r0, r0, #7
 291 006a 6A60     		str	r2, [r5, #4]
 292 006c 2B61     		str	r3, [r5, #16]
 293 006e A860     		str	r0, [r5, #8]
 294 0070 A5F820E0 		strh	lr, [r5, #32]	@ movhi
 295 0074 E961     		str	r1, [r5, #28]
 296 0076 2846     		mov	r0, r5
 297 0078 AF84     		strh	r7, [r5, #36]	@ movhi
 298 007a FFF7FEFF 		bl	emac_reset_rx_mem
 299 007e 2846     		mov	r0, r5
 300 0080 FFF7FEFF 		bl	emac_reset_tx_mem
 301 0084 43F6F442 		movw	r2, #15604
 302 0088 2368     		ldr	r3, [r4]
 303 008a 3B43     		orrs	r3, r3, r7
 304 008c 2360     		str	r3, [r4]
 305 008e 2368     		ldr	r3, [r4]
 306 0090 43F00403 		orr	r3, r3, #4
 307 0094 2360     		str	r3, [r4]
 308 0096 2368     		ldr	r3, [r4]
 309 0098 43F08003 		orr	r3, r3, #128
 310 009c 2360     		str	r3, [r4]
 311 009e A262     		str	r2, [r4, #40]
 312 00a0 D6F80230 		ldr	r3, [r6, #2]	@ unaligned
 313 00a4 C4F89830 		str	r3, [r4, #152]
 314 00a8 F388     		ldrh	r3, [r6, #6]	@ unaligned
 315 00aa C4F89C30 		str	r3, [r4, #156]
 316 00ae F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 317              	.L41:
 318 00b0 6368     		ldr	r3, [r4, #4]
 319 00b2 23F01003 		bic	r3, r3, #16
 320 00b6 6360     		str	r3, [r4, #4]
 321 00b8 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 322 00ba 002B     		cmp	r3, #0
 323 00bc C0D0     		beq	.L43
 324              	.L46:
 325 00be 6368     		ldr	r3, [r4, #4]
 326 00c0 43F02003 		orr	r3, r3, #32
 327 00c4 6360     		str	r3, [r4, #4]
 328 00c6 BFE7     		b	.L44
 329              	.L48:
 330              		.align	2
 331              	.L47:
 332 00c8 00000000 		.word	.LANCHOR1
 333 00cc 00000000 		.word	.LANCHOR0
 334 00d0 00000000 		.word	.LANCHOR2
 335 00d4 00000000 		.word	.LANCHOR3
 336 00d8 00000000 		.word	.LANCHOR4
 337              		.size	emac_dev_init, .-emac_dev_init
 338              		.section	.text.emac_dev_read,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	emac_dev_read
 342              		.syntax unified
ARM GAS  /tmp/ccTAZutH.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu softvfp
 346              		.type	emac_dev_read, %function
 347              	emac_dev_read:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 0029     		cmp	r1, #0
 351 0002 00F08980 		beq	.L70
 352 0006 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 353 000a 4FF0000E 		mov	lr, #0
 354 000e 478C     		ldrh	r7, [r0, #34]
 355 0010 C668     		ldr	r6, [r0, #12]
 356 0012 C3F800E0 		str	lr, [r3]
 357 0016 56F83740 		ldr	r4, [r6, r7, lsl #3]
 358 001a 06EBC705 		add	r5, r6, r7, lsl #3
 359 001e E407     		lsls	r4, r4, #31
 360 0020 4AD5     		bpl	.L62
 361 0022 8946     		mov	r9, r1
 362 0024 9A46     		mov	r10, r3
 363 0026 9046     		mov	r8, r2
 364 0028 8346     		mov	fp, r0
 365 002a 7146     		mov	r1, lr
 366 002c 7346     		mov	r3, lr
 367 002e 7446     		mov	r4, lr
 368              	.L68:
 369 0030 6A68     		ldr	r2, [r5, #4]
 370 0032 5004     		lsls	r0, r2, #17
 371 0034 43D5     		bpl	.L52
 372 0036 BBF82240 		ldrh	r4, [fp, #34]
 373 003a BBF82020 		ldrh	r2, [fp, #32]
 374 003e BC42     		cmp	r4, r7
 375 0040 2146     		mov	r1, r4
 376 0042 11D0     		beq	.L56
 377              	.L55:
 378 0044 56F83450 		ldr	r5, [r6, r4, lsl #3]
 379 0048 631C     		adds	r3, r4, #1
 380 004a 25F00105 		bic	r5, r5, #1
 381 004e 46F83450 		str	r5, [r6, r4, lsl #3]
 382 0052 06EBC405 		add	r5, r6, r4, lsl #3
 383 0056 9CB2     		uxth	r4, r3
 384 0058 9442     		cmp	r4, r2
 385 005a 28BF     		it	cs
 386 005c 0024     		movcs	r4, #0
 387 005e BC42     		cmp	r4, r7
 388 0060 F0D1     		bne	.L55
 389 0062 3946     		mov	r1, r7
 390 0064 ABF82270 		strh	r7, [fp, #34]	@ movhi
 391              	.L56:
 392 0068 0137     		adds	r7, r7, #1
 393 006a BFB2     		uxth	r7, r7
 394 006c 9742     		cmp	r7, r2
 395 006e 35D3     		bcc	.L76
 396 0070 0027     		movs	r7, #0
 397 0072 4B46     		mov	r3, r9
 398 0074 3846     		mov	r0, r7
 399              	.L69:
ARM GAS  /tmp/ccTAZutH.s 			page 8


 400 0076 B942     		cmp	r1, r7
 401 0078 35D0     		beq	.L85
 402              	.L59:
 403 007a 00F18004 		add	r4, r0, #128
 404 007e 4445     		cmp	r4, r8
 405 0080 94BF     		ite	ls
 406 0082 8026     		movls	r6, #128
 407 0084 A8EB0006 		subhi	r6, r8, r0
 408 0088 2968     		ldr	r1, [r5]
 409 008a 84BF     		itt	hi
 410 008c B6B2     		uxthhi	r6, r6
 411 008e 8419     		addhi	r4, r0, r6
 412 0090 3246     		mov	r2, r6
 413 0092 21F00301 		bic	r1, r1, #3
 414 0096 1846     		mov	r0, r3
 415 0098 FFF7FEFF 		bl	memcpy
 416 009c 0346     		mov	r3, r0
 417 009e 6A68     		ldr	r2, [r5, #4]
 418 00a0 3344     		add	r3, r3, r6
 419 00a2 1104     		lsls	r1, r2, #16
 420 00a4 3AD4     		bmi	.L86
 421 00a6 0121     		movs	r1, #1
 422              	.L64:
 423 00a8 DBF80C60 		ldr	r6, [fp, #12]
 424 00ac 56F83720 		ldr	r2, [r6, r7, lsl #3]
 425 00b0 06EBC705 		add	r5, r6, r7, lsl #3
 426 00b4 D207     		lsls	r2, r2, #31
 427 00b6 BBD4     		bmi	.L68
 428              	.L62:
 429 00b8 0320     		movs	r0, #3
 430 00ba BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 431              	.L52:
 432 00be 0137     		adds	r7, r7, #1
 433 00c0 BBF82020 		ldrh	r2, [fp, #32]
 434 00c4 BFB2     		uxth	r7, r7
 435 00c6 BA42     		cmp	r2, r7
 436 00c8 98BF     		it	ls
 437 00ca 0027     		movls	r7, #0
 438 00cc 01BB     		cbnz	r1, .L87
 439 00ce 2A68     		ldr	r2, [r5]
 440 00d0 22F00102 		bic	r2, r2, #1
 441 00d4 2A60     		str	r2, [r5]
 442 00d6 ABF82270 		strh	r7, [fp, #34]	@ movhi
 443 00da E5E7     		b	.L64
 444              	.L76:
 445 00dc B942     		cmp	r1, r7
 446 00de 4B46     		mov	r3, r9
 447 00e0 4FF00000 		mov	r0, #0
 448 00e4 C9D1     		bne	.L59
 449              	.L85:
 450 00e6 0B46     		mov	r3, r1
 451 00e8 DBF80C40 		ldr	r4, [fp, #12]
 452              	.L61:
 453 00ec 54F83300 		ldr	r0, [r4, r3, lsl #3]
 454 00f0 5D1C     		adds	r5, r3, #1
 455 00f2 20F00100 		bic	r0, r0, #1
 456 00f6 44F83300 		str	r0, [r4, r3, lsl #3]
ARM GAS  /tmp/ccTAZutH.s 			page 9


 457 00fa ABB2     		uxth	r3, r5
 458 00fc 9342     		cmp	r3, r2
 459 00fe 28BF     		it	cs
 460 0100 0023     		movcs	r3, #0
 461 0102 9942     		cmp	r1, r3
 462 0104 F2D1     		bne	.L61
 463 0106 ABF82210 		strh	r1, [fp, #34]	@ movhi
 464 010a 0320     		movs	r0, #3
 465 010c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 466              	.L87:
 467 0110 2046     		mov	r0, r4
 468 0112 BBF82210 		ldrh	r1, [fp, #34]
 469 0116 AEE7     		b	.L69
 470              	.L70:
 471 0118 0520     		movs	r0, #5
 472 011a 7047     		bx	lr
 473              	.L86:
 474 011c C2F30B02 		ubfx	r2, r2, #0, #12
 475 0120 CAF80020 		str	r2, [r10]
 476 0124 BBF82230 		ldrh	r3, [fp, #34]
 477 0128 0025     		movs	r5, #0
 478 012a 11E0     		b	.L66
 479              	.L67:
 480 012c DBF80C10 		ldr	r1, [fp, #12]
 481 0130 51F83320 		ldr	r2, [r1, r3, lsl #3]
 482 0134 22F00102 		bic	r2, r2, #1
 483 0138 41F83320 		str	r2, [r1, r3, lsl #3]
 484 013c BBF82020 		ldrh	r2, [fp, #32]
 485 0140 83B2     		uxth	r3, r0
 486 0142 9A42     		cmp	r2, r3
 487 0144 ABF82230 		strh	r3, [fp, #34]	@ movhi
 488 0148 9CBF     		itt	ls
 489 014a 0023     		movls	r3, #0
 490 014c ABF82250 		strhls	r5, [fp, #34]	@ movhi
 491              	.L66:
 492 0150 9F42     		cmp	r7, r3
 493 0152 03F10100 		add	r0, r3, #1
 494 0156 E9D1     		bne	.L67
 495 0158 DAF80000 		ldr	r0, [r10]
 496 015c A042     		cmp	r0, r4
 497 015e 8CBF     		ite	hi
 498 0160 0420     		movhi	r0, #4
 499 0162 0020     		movls	r0, #0
 500 0164 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 501              		.size	emac_dev_read, .-emac_dev_read
 502              		.section	.text.emac_dev_write,"ax",%progbits
 503              		.align	1
 504              		.p2align 2,,3
 505              		.global	emac_dev_write
 506              		.syntax unified
 507              		.thumb
 508              		.thumb_func
 509              		.fpu softvfp
 510              		.type	emac_dev_write, %function
 511              	emac_dev_write:
 512              		@ args = 0, pretend = 0, frame = 8
 513              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccTAZutH.s 			page 10


 514 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 515 0004 40F2EE55 		movw	r5, #1518
 516 0008 AA42     		cmp	r2, r5
 517 000a 83B0     		sub	sp, sp, #12
 518 000c 03D9     		bls	.L104
 519 000e 0520     		movs	r0, #5
 520 0010 03B0     		add	sp, sp, #12
 521              		@ sp needed
 522 0012 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 523              	.L104:
 524 0016 B0F826C0 		ldrh	ip, [r0, #38]
 525 001a 058D     		ldrh	r5, [r0, #40]
 526 001c B0F824E0 		ldrh	lr, [r0, #36]
 527 0020 0CF10106 		add	r6, ip, #1
 528 0024 AD1B     		subs	r5, r5, r6
 529 0026 95FBFEF8 		sdiv	r8, r5, lr
 530 002a 0EFB1855 		mls	r5, lr, r8, r5
 531 002e 1DB9     		cbnz	r5, .L105
 532 0030 0220     		movs	r0, #2
 533 0032 03B0     		add	sp, sp, #12
 534              		@ sp needed
 535 0034 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 536              	.L105:
 537 0038 0546     		mov	r5, r0
 538 003a 0069     		ldr	r0, [r0, #16]
 539 003c 0193     		str	r3, [sp, #4]
 540 003e 4FEACC03 		lsl	r3, ip, #3
 541 0042 1446     		mov	r4, r2
 542 0044 00EB0309 		add	r9, r0, r3
 543 0048 D5F80080 		ldr	r8, [r5]
 544 004c 4FEA8C0A 		lsl	r10, ip, #2
 545 0050 D5F81CB0 		ldr	fp, [r5, #28]
 546 0054 01B1     		cbz	r1, .L90
 547 0056 DAB9     		cbnz	r2, .L106
 548              	.L90:
 549 0058 0EF1FF33 		add	r3, lr, #-1
 550 005c 6345     		cmp	r3, ip
 551 005e B6B2     		uxth	r6, r6
 552 0060 08BF     		it	eq
 553 0062 44F08044 		orreq	r4, r4, #1073741824
 554 0066 0020     		movs	r0, #0
 555 0068 7645     		cmp	r6, lr
 556 006a 28BF     		it	cs
 557 006c 0026     		movcs	r6, #0
 558 006e 019A     		ldr	r2, [sp, #4]
 559 0070 44F40044 		orr	r4, r4, #32768
 560 0074 4BF80A20 		str	r2, [fp, r10]
 561 0078 C9F80440 		str	r4, [r9, #4]
 562 007c D8F80030 		ldr	r3, [r8]
 563 0080 EE84     		strh	r6, [r5, #38]	@ movhi
 564 0082 43F40073 		orr	r3, r3, #512
 565 0086 C8F80030 		str	r3, [r8]
 566 008a 03B0     		add	sp, sp, #12
 567              		@ sp needed
 568 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 569              	.L106:
 570 0090 C058     		ldr	r0, [r0, r3]
ARM GAS  /tmp/ccTAZutH.s 			page 11


 571 0092 FFF7FEFF 		bl	memcpy
 572 0096 B5F826C0 		ldrh	ip, [r5, #38]
 573 009a B5F824E0 		ldrh	lr, [r5, #36]
 574 009e 0CF10106 		add	r6, ip, #1
 575 00a2 D9E7     		b	.L90
 576              		.size	emac_dev_write, .-emac_dev_write
 577              		.section	.text.emac_dev_get_tx_load,"ax",%progbits
 578              		.align	1
 579              		.p2align 2,,3
 580              		.global	emac_dev_get_tx_load
 581              		.syntax unified
 582              		.thumb
 583              		.thumb_func
 584              		.fpu softvfp
 585              		.type	emac_dev_get_tx_load, %function
 586              	emac_dev_get_tx_load:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589              		@ link register save eliminated.
 590 0000 C38C     		ldrh	r3, [r0, #38]
 591 0002 018D     		ldrh	r1, [r0, #40]
 592 0004 828C     		ldrh	r2, [r0, #36]
 593 0006 5B1A     		subs	r3, r3, r1
 594 0008 93FBF2F0 		sdiv	r0, r3, r2
 595 000c 02FB1030 		mls	r0, r2, r0, r3
 596 0010 7047     		bx	lr
 597              		.size	emac_dev_get_tx_load, .-emac_dev_get_tx_load
 598 0012 00BF     		.section	.text.emac_dev_set_rx_callback,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	emac_dev_set_rx_callback
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu softvfp
 606              		.type	emac_dev_set_rx_callback, %function
 607              	emac_dev_set_rx_callback:
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611 0000 0368     		ldr	r3, [r0]
 612 0002 0222     		movs	r2, #2
 613 0004 11B1     		cbz	r1, .L111
 614 0006 4161     		str	r1, [r0, #20]
 615 0008 9A62     		str	r2, [r3, #40]
 616 000a 7047     		bx	lr
 617              	.L111:
 618 000c DA62     		str	r2, [r3, #44]
 619 000e 4161     		str	r1, [r0, #20]
 620 0010 7047     		bx	lr
 621              		.size	emac_dev_set_rx_callback, .-emac_dev_set_rx_callback
 622 0012 00BF     		.section	.text.emac_dev_set_tx_wakeup_callback,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	emac_dev_set_tx_wakeup_callback
 626              		.syntax unified
 627              		.thumb
ARM GAS  /tmp/ccTAZutH.s 			page 12


 628              		.thumb_func
 629              		.fpu softvfp
 630              		.type	emac_dev_set_tx_wakeup_callback, %function
 631              	emac_dev_set_tx_wakeup_callback:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634              		@ link register save eliminated.
 635 0000 41B1     		cbz	r1, .L116
 636 0002 838C     		ldrh	r3, [r0, #36]
 637 0004 9342     		cmp	r3, r2
 638 0006 23BF     		ittte	cs
 639 0008 8161     		strcs	r1, [r0, #24]
 640 000a 80F82A20 		strbcs	r2, [r0, #42]
 641 000e 0020     		movcs	r0, #0
 642 0010 0520     		movcc	r0, #5
 643 0012 7047     		bx	lr
 644              	.L116:
 645 0014 8161     		str	r1, [r0, #24]
 646 0016 0846     		mov	r0, r1
 647 0018 7047     		bx	lr
 648              		.size	emac_dev_set_tx_wakeup_callback, .-emac_dev_set_tx_wakeup_callback
 649 001a 00BF     		.section	.text.emac_dev_reset,"ax",%progbits
 650              		.align	1
 651              		.p2align 2,,3
 652              		.global	emac_dev_reset
 653              		.syntax unified
 654              		.thumb
 655              		.thumb_func
 656              		.fpu softvfp
 657              		.type	emac_dev_reset, %function
 658              	emac_dev_reset:
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661 0000 38B5     		push	{r3, r4, r5, lr}
 662 0002 0446     		mov	r4, r0
 663 0004 0568     		ldr	r5, [r0]
 664 0006 FFF7FEFF 		bl	emac_reset_rx_mem
 665 000a 2046     		mov	r0, r4
 666 000c FFF7FEFF 		bl	emac_reset_tx_mem
 667 0010 AC23     		movs	r3, #172
 668 0012 2B60     		str	r3, [r5]
 669 0014 38BD     		pop	{r3, r4, r5, pc}
 670              		.size	emac_dev_reset, .-emac_dev_reset
 671 0016 00BF     		.section	.text.emac_handler,"ax",%progbits
 672              		.align	1
 673              		.p2align 2,,3
 674              		.global	emac_handler
 675              		.syntax unified
 676              		.thumb
 677              		.thumb_func
 678              		.fpu softvfp
 679              		.type	emac_handler, %function
 680              	emac_handler:
 681              		@ args = 0, pretend = 0, frame = 16
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 684 0004 D0F80080 		ldr	r8, [r0]
ARM GAS  /tmp/ccTAZutH.s 			page 13


 685 0008 84B0     		sub	sp, sp, #16
 686 000a D8F82430 		ldr	r3, [r8, #36]
 687 000e 0446     		mov	r4, r0
 688 0010 0193     		str	r3, [sp, #4]
 689 0012 D8F82030 		ldr	r3, [r8, #32]
 690 0016 0293     		str	r3, [sp, #8]
 691 0018 D8F81430 		ldr	r3, [r8, #20]
 692 001c 0393     		str	r3, [sp, #12]
 693 001e D8F83030 		ldr	r3, [r8, #48]
 694 0022 019A     		ldr	r2, [sp, #4]
 695 0024 43F47F03 		orr	r3, r3, #16711680
 696 0028 43F44343 		orr	r3, r3, #49920
 697 002c 22EA0303 		bic	r3, r2, r3
 698 0030 0193     		str	r3, [sp, #4]
 699 0032 019B     		ldr	r3, [sp, #4]
 700 0034 9A07     		lsls	r2, r3, #30
 701 0036 02D4     		bmi	.L120
 702 0038 029B     		ldr	r3, [sp, #8]
 703 003a 9B07     		lsls	r3, r3, #30
 704 003c 0FD5     		bpl	.L121
 705              	.L120:
 706 003e 029A     		ldr	r2, [sp, #8]
 707 0040 029B     		ldr	r3, [sp, #8]
 708 0042 12F0040F 		tst	r2, #4
 709 0046 14BF     		ite	ne
 710 0048 0620     		movne	r0, #6
 711 004a 0220     		moveq	r0, #2
 712 004c DF07     		lsls	r7, r3, #31
 713 004e 6369     		ldr	r3, [r4, #20]
 714 0050 48BF     		it	mi
 715 0052 40F00100 		orrmi	r0, r0, #1
 716 0056 C8F82000 		str	r0, [r8, #32]
 717 005a 03B1     		cbz	r3, .L121
 718 005c 9847     		blx	r3
 719              	.L121:
 720 005e 019B     		ldr	r3, [sp, #4]
 721 0060 1E06     		lsls	r6, r3, #24
 722 0062 02D4     		bmi	.L125
 723 0064 039B     		ldr	r3, [sp, #12]
 724 0066 9D06     		lsls	r5, r3, #26
 725 0068 4ED5     		bpl	.L119
 726              	.L125:
 727 006a 039E     		ldr	r6, [sp, #12]
 728 006c 16F00406 		ands	r6, r6, #4
 729 0070 4DD1     		bne	.L170
 730 0072 2025     		movs	r5, #32
 731              	.L127:
 732 0074 039B     		ldr	r3, [sp, #12]
 733 0076 E78C     		ldrh	r7, [r4, #38]
 734 0078 9807     		lsls	r0, r3, #30
 735 007a 039B     		ldr	r3, [sp, #12]
 736 007c 48BF     		it	mi
 737 007e 45F00205 		orrmi	r5, r5, #2
 738 0082 D906     		lsls	r1, r3, #27
 739 0084 039B     		ldr	r3, [sp, #12]
 740 0086 48BF     		it	mi
 741 0088 45F01005 		orrmi	r5, r5, #16
ARM GAS  /tmp/ccTAZutH.s 			page 14


 742 008c 5A06     		lsls	r2, r3, #25
 743 008e 238D     		ldrh	r3, [r4, #40]
 744 0090 48BF     		it	mi
 745 0092 45F04005 		orrmi	r5, r5, #64
 746 0096 9F42     		cmp	r7, r3
 747 0098 C8F81450 		str	r5, [r8, #20]
 748 009c 14D1     		bne	.L134
 749 009e 1CE0     		b	.L131
 750              	.L171:
 751 00a0 51F82320 		ldr	r2, [r1, r3, lsl #2]
 752 00a4 1AB1     		cbz	r2, .L132
 753 00a6 2846     		mov	r0, r5
 754 00a8 9047     		blx	r2
 755 00aa 238D     		ldrh	r3, [r4, #40]
 756 00ac E78C     		ldrh	r7, [r4, #38]
 757              	.L132:
 758 00ae A08C     		ldrh	r0, [r4, #36]
 759 00b0 0133     		adds	r3, r3, #1
 760 00b2 9BB2     		uxth	r3, r3
 761 00b4 9842     		cmp	r0, r3
 762 00b6 98BF     		it	ls
 763 00b8 0023     		movls	r3, #0
 764 00ba FA1A     		subs	r2, r7, r3
 765 00bc 92FBF0F1 		sdiv	r1, r2, r0
 766 00c0 00FB1122 		mls	r2, r0, r1, r2
 767 00c4 2385     		strh	r3, [r4, #40]	@ movhi
 768 00c6 42B1     		cbz	r2, .L131
 769              	.L134:
 770 00c8 2269     		ldr	r2, [r4, #16]
 771 00ca E169     		ldr	r1, [r4, #28]
 772 00cc 02EBC302 		add	r2, r2, r3, lsl #3
 773 00d0 5268     		ldr	r2, [r2, #4]
 774 00d2 01EB8306 		add	r6, r1, r3, lsl #2
 775 00d6 002A     		cmp	r2, #0
 776 00d8 E2DB     		blt	.L171
 777              	.L131:
 778 00da 039B     		ldr	r3, [sp, #12]
 779 00dc 5B07     		lsls	r3, r3, #29
 780 00de 04D5     		bpl	.L135
 781 00e0 3368     		ldr	r3, [r6]
 782 00e2 13B1     		cbz	r3, .L135
 783 00e4 2846     		mov	r0, r5
 784 00e6 9847     		blx	r3
 785 00e8 E78C     		ldrh	r7, [r4, #38]
 786              	.L135:
 787 00ea 238D     		ldrh	r3, [r4, #40]
 788 00ec A28C     		ldrh	r2, [r4, #36]
 789 00ee 0137     		adds	r7, r7, #1
 790 00f0 DF1B     		subs	r7, r3, r7
 791 00f2 97FBF2F3 		sdiv	r3, r7, r2
 792 00f6 02FB1377 		mls	r7, r2, r3, r7
 793 00fa 94F82A30 		ldrb	r3, [r4, #42]	@ zero_extendqisi2
 794 00fe 9F42     		cmp	r7, r3
 795 0100 02DB     		blt	.L119
 796 0102 A369     		ldr	r3, [r4, #24]
 797 0104 03B1     		cbz	r3, .L119
 798 0106 9847     		blx	r3
ARM GAS  /tmp/ccTAZutH.s 			page 15


 799              	.L119:
 800 0108 04B0     		add	sp, sp, #16
 801              		@ sp needed
 802 010a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 803              	.L170:
 804 010e 228D     		ldrh	r2, [r4, #40]
 805 0110 E38C     		ldrh	r3, [r4, #38]
 806 0112 A18C     		ldrh	r1, [r4, #36]
 807 0114 9B1A     		subs	r3, r3, r2
 808 0116 93FBF1F5 		sdiv	r5, r3, r1
 809 011a E669     		ldr	r6, [r4, #28]
 810 011c 01FB1535 		mls	r5, r1, r5, r3
 811 0120 2046     		mov	r0, r4
 812 0122 06EB8206 		add	r6, r6, r2, lsl #2
 813 0126 FFF7FEFF 		bl	emac_reset_tx_mem
 814 012a D8F80030 		ldr	r3, [r8]
 815 012e 45F00405 		orr	r5, r5, #4
 816 0132 43F00803 		orr	r3, r3, #8
 817 0136 C8F80030 		str	r3, [r8]
 818 013a 9BE7     		b	.L127
 819              		.size	emac_handler, .-emac_handler
 820              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 821              		.align	2
 822              		.type	cpu_irq_critical_section_counter, %object
 823              		.size	cpu_irq_critical_section_counter, 4
 824              	cpu_irq_critical_section_counter:
 825 0000 00000000 		.space	4
 826              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 827              		.type	cpu_irq_prev_interrupt_state, %object
 828              		.size	cpu_irq_prev_interrupt_state, 1
 829              	cpu_irq_prev_interrupt_state:
 830 0000 00       		.space	1
 831              		.section	.bss.gs_rx_desc,"aw",%nobits
 832              		.align	3
 833              		.set	.LANCHOR1,. + 0
 834              		.type	gs_rx_desc, %object
 835              		.size	gs_rx_desc, 256
 836              	gs_rx_desc:
 837 0000 00000000 		.space	256
 837      00000000 
 837      00000000 
 837      00000000 
 837      00000000 
 838              		.section	.bss.gs_tx_callback,"aw",%nobits
 839              		.align	2
 840              		.set	.LANCHOR4,. + 0
 841              		.type	gs_tx_callback, %object
 842              		.size	gs_tx_callback, 32
 843              	gs_tx_callback:
 844 0000 00000000 		.space	32
 844      00000000 
 844      00000000 
 844      00000000 
 844      00000000 
 845              		.section	.bss.gs_tx_desc,"aw",%nobits
 846              		.align	3
 847              		.set	.LANCHOR3,. + 0
ARM GAS  /tmp/ccTAZutH.s 			page 16


 848              		.type	gs_tx_desc, %object
 849              		.size	gs_tx_desc, 64
 850              	gs_tx_desc:
 851 0000 00000000 		.space	64
 851      00000000 
 851      00000000 
 851      00000000 
 851      00000000 
 852              		.section	.bss.gs_uc_rx_buffer,"aw",%nobits
 853              		.align	3
 854              		.set	.LANCHOR0,. + 0
 855              		.type	gs_uc_rx_buffer, %object
 856              		.size	gs_uc_rx_buffer, 4096
 857              	gs_uc_rx_buffer:
 858 0000 00000000 		.space	4096
 858      00000000 
 858      00000000 
 858      00000000 
 858      00000000 
 859              		.section	.bss.gs_uc_tx_buffer,"aw",%nobits
 860              		.align	3
 861              		.set	.LANCHOR2,. + 0
 862              		.type	gs_uc_tx_buffer, %object
 863              		.size	gs_uc_tx_buffer, 12144
 864              	gs_uc_tx_buffer:
 865 0000 00000000 		.space	12144
 865      00000000 
 865      00000000 
 865      00000000 
 865      00000000 
 866              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
