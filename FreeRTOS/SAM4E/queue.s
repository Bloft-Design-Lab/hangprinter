ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 1


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
  13              		.file	"queue.c"
  14              		.text
  15              		.section	.text.prvCopyDataToQueue,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	prvCopyDataToQueue, %function
  23              	prvCopyDataToQueue:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 1646     		mov	r6, r2
  28 0004 026C     		ldr	r2, [r0, #64]
  29 0006 856B     		ldr	r5, [r0, #56]
  30 0008 0446     		mov	r4, r0
  31 000a 32B9     		cbnz	r2, .L2
  32 000c 0668     		ldr	r6, [r0]
  33 000e 0135     		adds	r5, r5, #1
  34 0010 002E     		cmp	r6, #0
  35 0012 2DD0     		beq	.L12
  36              	.L9:
  37 0014 0020     		movs	r0, #0
  38              	.L3:
  39 0016 A563     		str	r5, [r4, #56]
  40 0018 70BD     		pop	{r4, r5, r6, pc}
  41              	.L2:
  42 001a 86B9     		cbnz	r6, .L4
  43 001c 8068     		ldr	r0, [r0, #8]
  44 001e FFF7FEFF 		bl	memcpy
  45 0022 A368     		ldr	r3, [r4, #8]
  46 0024 216C     		ldr	r1, [r4, #64]
  47 0026 6268     		ldr	r2, [r4, #4]
  48 0028 0B44     		add	r3, r3, r1
  49 002a 9342     		cmp	r3, r2
  50 002c 05F10105 		add	r5, r5, #1
  51 0030 A360     		str	r3, [r4, #8]
  52 0032 EFD3     		bcc	.L9
  53 0034 2368     		ldr	r3, [r4]
  54 0036 A360     		str	r3, [r4, #8]
  55 0038 3046     		mov	r0, r6
  56 003a A563     		str	r5, [r4, #56]
  57 003c 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 2


  58              	.L4:
  59 003e C068     		ldr	r0, [r0, #12]
  60 0040 FFF7FEFF 		bl	memcpy
  61 0044 226C     		ldr	r2, [r4, #64]
  62 0046 E368     		ldr	r3, [r4, #12]
  63 0048 2168     		ldr	r1, [r4]
  64 004a 5242     		negs	r2, r2
  65 004c 1344     		add	r3, r3, r2
  66 004e 8B42     		cmp	r3, r1
  67 0050 E360     		str	r3, [r4, #12]
  68 0052 02D2     		bcs	.L5
  69 0054 6368     		ldr	r3, [r4, #4]
  70 0056 1A44     		add	r2, r2, r3
  71 0058 E260     		str	r2, [r4, #12]
  72              	.L5:
  73 005a 022E     		cmp	r6, #2
  74 005c 03D0     		beq	.L6
  75 005e 0135     		adds	r5, r5, #1
  76 0060 0020     		movs	r0, #0
  77 0062 A563     		str	r5, [r4, #56]
  78 0064 70BD     		pop	{r4, r5, r6, pc}
  79              	.L6:
  80 0066 002D     		cmp	r5, #0
  81 0068 D4D1     		bne	.L9
  82 006a 0125     		movs	r5, #1
  83 006c 0020     		movs	r0, #0
  84 006e D2E7     		b	.L3
  85              	.L12:
  86 0070 4068     		ldr	r0, [r0, #4]
  87 0072 FFF7FEFF 		bl	xTaskPriorityDisinherit
  88 0076 6660     		str	r6, [r4, #4]
  89 0078 CDE7     		b	.L3
  90              		.size	prvCopyDataToQueue, .-prvCopyDataToQueue
  91 007a 00BF     		.section	.text.prvNotifyQueueSetContainer,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	prvNotifyQueueSetContainer, %function
  99              	prvNotifyQueueSetContainer:
 100              		@ args = 0, pretend = 0, frame = 8
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 70B5     		push	{r4, r5, r6, lr}
 103 0002 846C     		ldr	r4, [r0, #72]
 104 0004 82B0     		sub	sp, sp, #8
 105 0006 0E46     		mov	r6, r1
 106 0008 0190     		str	r0, [sp, #4]
 107 000a 1CB3     		cbz	r4, .L24
 108              	.L14:
 109 000c A16B     		ldr	r1, [r4, #56]
 110 000e E36B     		ldr	r3, [r4, #60]
 111 0010 9942     		cmp	r1, r3
 112 0012 18D2     		bcs	.L25
 113              	.L15:
 114 0014 A16B     		ldr	r1, [r4, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 3


 115 0016 9942     		cmp	r1, r3
 116 0018 03D3     		bcc	.L26
 117 001a 0026     		movs	r6, #0
 118              	.L13:
 119 001c 3046     		mov	r0, r6
 120 001e 02B0     		add	sp, sp, #8
 121              		@ sp needed
 122 0020 70BD     		pop	{r4, r5, r6, pc}
 123              	.L26:
 124 0022 94F84550 		ldrb	r5, [r4, #69]	@ zero_extendqisi2
 125 0026 3246     		mov	r2, r6
 126 0028 01A9     		add	r1, sp, #4
 127 002a 2046     		mov	r0, r4
 128 002c FFF7FEFF 		bl	prvCopyDataToQueue
 129 0030 6DB2     		sxtb	r5, r5
 130 0032 6B1C     		adds	r3, r5, #1
 131 0034 0646     		mov	r6, r0
 132 0036 13D0     		beq	.L27
 133 0038 0135     		adds	r5, r5, #1
 134 003a 6DB2     		sxtb	r5, r5
 135 003c 3046     		mov	r0, r6
 136 003e 84F84550 		strb	r5, [r4, #69]
 137 0042 02B0     		add	sp, sp, #8
 138              		@ sp needed
 139 0044 70BD     		pop	{r4, r5, r6, pc}
 140              	.L25:
 141 0046 0C49     		ldr	r1, .L28
 142 0048 40F62730 		movw	r0, #2855
 143 004c FFF7FEFF 		bl	vAssertCalled
 144 0050 E36B     		ldr	r3, [r4, #60]
 145 0052 DFE7     		b	.L15
 146              	.L24:
 147 0054 0849     		ldr	r1, .L28
 148 0056 40F62630 		movw	r0, #2854
 149 005a FFF7FEFF 		bl	vAssertCalled
 150 005e D5E7     		b	.L14
 151              	.L27:
 152 0060 636A     		ldr	r3, [r4, #36]
 153 0062 002B     		cmp	r3, #0
 154 0064 DAD0     		beq	.L13
 155 0066 04F12400 		add	r0, r4, #36
 156 006a FFF7FEFF 		bl	xTaskRemoveFromEventList
 157 006e 0028     		cmp	r0, #0
 158 0070 18BF     		it	ne
 159 0072 0126     		movne	r6, #1
 160 0074 D2E7     		b	.L13
 161              	.L29:
 162 0076 00BF     		.align	2
 163              	.L28:
 164 0078 00000000 		.word	.LC0
 165              		.size	prvNotifyQueueSetContainer, .-prvNotifyQueueSetContainer
 166              		.section	.text.prvCopyDataFromQueue,"ax",%progbits
 167              		.align	1
 168              		.p2align 2,,3
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	prvCopyDataFromQueue, %function
 174              	prvCopyDataFromQueue:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 026C     		ldr	r2, [r0, #64]
 179 0002 72B1     		cbz	r2, .L30
 180 0004 0B46     		mov	r3, r1
 181 0006 C168     		ldr	r1, [r0, #12]
 182 0008 10B4     		push	{r4}
 183 000a 4468     		ldr	r4, [r0, #4]
 184 000c 1144     		add	r1, r1, r2
 185 000e A142     		cmp	r1, r4
 186 0010 C160     		str	r1, [r0, #12]
 187 0012 24BF     		itt	cs
 188 0014 0168     		ldrcs	r1, [r0]
 189 0016 C160     		strcs	r1, [r0, #12]
 190 0018 5DF8044B 		ldr	r4, [sp], #4
 191 001c 1846     		mov	r0, r3
 192 001e FFF7FEBF 		b	memcpy
 193              	.L30:
 194 0022 7047     		bx	lr
 195              		.size	prvCopyDataFromQueue, .-prvCopyDataFromQueue
 196              		.section	.text.prvUnlockQueue,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	prvUnlockQueue, %function
 204              	prvUnlockQueue:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207 0000 70B5     		push	{r4, r5, r6, lr}
 208 0002 0546     		mov	r5, r0
 209 0004 FFF7FEFF 		bl	vPortEnterCritical
 210 0008 95F84540 		ldrb	r4, [r5, #69]	@ zero_extendqisi2
 211 000c 64B2     		sxtb	r4, r4
 212 000e 002C     		cmp	r4, #0
 213 0010 1CDD     		ble	.L37
 214 0012 05F12406 		add	r6, r5, #36
 215 0016 06E0     		b	.L42
 216              	.L62:
 217 0018 FFF7FEFF 		bl	prvNotifyQueueSetContainer
 218 001c 78B9     		cbnz	r0, .L39
 219              	.L40:
 220 001e 013C     		subs	r4, r4, #1
 221 0020 E3B2     		uxtb	r3, r4
 222 0022 5CB2     		sxtb	r4, r3
 223 0024 93B1     		cbz	r3, .L37
 224              	.L42:
 225 0026 AB6C     		ldr	r3, [r5, #72]
 226 0028 0021     		movs	r1, #0
 227 002a 2846     		mov	r0, r5
 228 002c 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 5


 229 002e F3D1     		bne	.L62
 230 0030 6B6A     		ldr	r3, [r5, #36]
 231 0032 3046     		mov	r0, r6
 232 0034 53B1     		cbz	r3, .L37
 233 0036 FFF7FEFF 		bl	xTaskRemoveFromEventList
 234 003a 0028     		cmp	r0, #0
 235 003c EFD0     		beq	.L40
 236              	.L39:
 237 003e 013C     		subs	r4, r4, #1
 238 0040 FFF7FEFF 		bl	vTaskMissedYield
 239 0044 E3B2     		uxtb	r3, r4
 240 0046 5CB2     		sxtb	r4, r3
 241 0048 002B     		cmp	r3, #0
 242 004a ECD1     		bne	.L42
 243              	.L37:
 244 004c FF23     		movs	r3, #255
 245 004e 85F84530 		strb	r3, [r5, #69]
 246 0052 FFF7FEFF 		bl	vPortExitCritical
 247 0056 FFF7FEFF 		bl	vPortEnterCritical
 248 005a 95F84440 		ldrb	r4, [r5, #68]	@ zero_extendqisi2
 249 005e 64B2     		sxtb	r4, r4
 250 0060 002C     		cmp	r4, #0
 251 0062 16DD     		ble	.L44
 252 0064 2B69     		ldr	r3, [r5, #16]
 253 0066 A3B1     		cbz	r3, .L44
 254 0068 05F11006 		add	r6, r5, #16
 255 006c 05E0     		b	.L45
 256              	.L46:
 257 006e 013C     		subs	r4, r4, #1
 258 0070 E3B2     		uxtb	r3, r4
 259 0072 5CB2     		sxtb	r4, r3
 260 0074 6BB1     		cbz	r3, .L44
 261              	.L47:
 262 0076 2B69     		ldr	r3, [r5, #16]
 263 0078 5BB1     		cbz	r3, .L44
 264              	.L45:
 265 007a 3046     		mov	r0, r6
 266 007c FFF7FEFF 		bl	xTaskRemoveFromEventList
 267 0080 0028     		cmp	r0, #0
 268 0082 F4D0     		beq	.L46
 269 0084 013C     		subs	r4, r4, #1
 270 0086 FFF7FEFF 		bl	vTaskMissedYield
 271 008a E3B2     		uxtb	r3, r4
 272 008c 5CB2     		sxtb	r4, r3
 273 008e 002B     		cmp	r3, #0
 274 0090 F1D1     		bne	.L47
 275              	.L44:
 276 0092 FF23     		movs	r3, #255
 277 0094 85F84430 		strb	r3, [r5, #68]
 278 0098 BDE87040 		pop	{r4, r5, r6, lr}
 279 009c FFF7FEBF 		b	vPortExitCritical
 280              		.size	prvUnlockQueue, .-prvUnlockQueue
 281              		.section	.text.xQueueGenericReset,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	xQueueGenericReset
 285              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	xQueueGenericReset, %function
 290              	xQueueGenericReset:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 38B5     		push	{r3, r4, r5, lr}
 294 0002 0D46     		mov	r5, r1
 295 0004 0446     		mov	r4, r0
 296 0006 0028     		cmp	r0, #0
 297 0008 38D0     		beq	.L73
 298              	.L64:
 299 000a FFF7FEFF 		bl	vPortEnterCritical
 300 000e D4E90F13 		ldrd	r1, r3, [r4, #60]
 301 0012 2268     		ldr	r2, [r4]
 302 0014 A260     		str	r2, [r4, #8]
 303 0016 01FB03F1 		mul	r1, r1, r3
 304 001a CB1A     		subs	r3, r1, r3
 305 001c 1344     		add	r3, r3, r2
 306 001e 0020     		movs	r0, #0
 307 0020 0A44     		add	r2, r2, r1
 308 0022 FF21     		movs	r1, #255
 309 0024 A063     		str	r0, [r4, #56]
 310 0026 E360     		str	r3, [r4, #12]
 311 0028 84F84410 		strb	r1, [r4, #68]
 312 002c 6260     		str	r2, [r4, #4]
 313 002e 84F84510 		strb	r1, [r4, #69]
 314 0032 BDB9     		cbnz	r5, .L65
 315 0034 2369     		ldr	r3, [r4, #16]
 316 0036 1BB9     		cbnz	r3, .L74
 317              	.L67:
 318 0038 FFF7FEFF 		bl	vPortExitCritical
 319 003c 0120     		movs	r0, #1
 320 003e 38BD     		pop	{r3, r4, r5, pc}
 321              	.L74:
 322 0040 04F11000 		add	r0, r4, #16
 323 0044 FFF7FEFF 		bl	xTaskRemoveFromEventList
 324 0048 0028     		cmp	r0, #0
 325 004a F5D0     		beq	.L67
 326 004c 0E4B     		ldr	r3, .L75
 327 004e 4FF08052 		mov	r2, #268435456
 328 0052 1A60     		str	r2, [r3]
 329              		.syntax unified
 330              	@ 274 "../src/queue.c" 1
 331 0054 BFF34F8F 		dsb
 332              	@ 0 "" 2
 333              	@ 274 "../src/queue.c" 1
 334 0058 BFF36F8F 		isb
 335              	@ 0 "" 2
 336              		.thumb
 337              		.syntax unified
 338 005c FFF7FEFF 		bl	vPortExitCritical
 339 0060 0120     		movs	r0, #1
 340 0062 38BD     		pop	{r3, r4, r5, pc}
 341              	.L65:
 342 0064 04F11000 		add	r0, r4, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 7


 343 0068 FFF7FEFF 		bl	vListInitialise
 344 006c 04F12400 		add	r0, r4, #36
 345 0070 FFF7FEFF 		bl	vListInitialise
 346 0074 FFF7FEFF 		bl	vPortExitCritical
 347 0078 0120     		movs	r0, #1
 348 007a 38BD     		pop	{r3, r4, r5, pc}
 349              	.L73:
 350 007c 0349     		ldr	r1, .L75+4
 351 007e FC20     		movs	r0, #252
 352 0080 FFF7FEFF 		bl	vAssertCalled
 353 0084 C1E7     		b	.L64
 354              	.L76:
 355 0086 00BF     		.align	2
 356              	.L75:
 357 0088 04ED00E0 		.word	-536810236
 358 008c 00000000 		.word	.LC0
 359              		.size	xQueueGenericReset, .-xQueueGenericReset
 360              		.section	.text.xQueueGenericCreateStatic,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	xQueueGenericCreateStatic
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv4-sp-d16
 368              		.type	xQueueGenericCreateStatic, %function
 369              	xQueueGenericCreateStatic:
 370              		@ args = 4, pretend = 0, frame = 8
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 373 0004 82B0     		sub	sp, sp, #8
 374 0006 0E46     		mov	r6, r1
 375 0008 1546     		mov	r5, r2
 376 000a 1C46     		mov	r4, r3
 377 000c 9DF82080 		ldrb	r8, [sp, #32]	@ zero_extendqisi2
 378 0010 0746     		mov	r7, r0
 379 0012 08B3     		cbz	r0, .L99
 380 0014 002C     		cmp	r4, #0
 381 0016 3AD0     		beq	.L100
 382              	.L79:
 383 0018 8DB3     		cbz	r5, .L80
 384 001a 2EB3     		cbz	r6, .L101
 385              	.L81:
 386 001c 5423     		movs	r3, #84
 387 001e 0193     		str	r3, [sp, #4]
 388 0020 019B     		ldr	r3, [sp, #4]
 389 0022 542B     		cmp	r3, #84
 390 0024 12D1     		bne	.L102
 391              	.L82:
 392 0026 6CB1     		cbz	r4, .L90
 393 0028 002E     		cmp	r6, #0
 394 002a 08BF     		it	eq
 395 002c 2546     		moveq	r5, r4
 396 002e 2560     		str	r5, [r4]
 397 0030 C4E90F76 		strd	r7, r6, [r4, #60]
 398 0034 0121     		movs	r1, #1
 399 0036 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 8


 400 0038 FFF7FEFF 		bl	xQueueGenericReset
 401 003c 0023     		movs	r3, #0
 402 003e 84F85080 		strb	r8, [r4, #80]
 403 0042 A364     		str	r3, [r4, #72]
 404              	.L90:
 405 0044 2046     		mov	r0, r4
 406 0046 02B0     		add	sp, sp, #8
 407              		@ sp needed
 408 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 409              	.L102:
 410 004c 1349     		ldr	r1, .L103
 411 004e 4FF4A270 		mov	r0, #324
 412 0052 FFF7FEFF 		bl	vAssertCalled
 413 0056 E6E7     		b	.L82
 414              	.L99:
 415 0058 1049     		ldr	r1, .L103
 416 005a 40F23310 		movw	r0, #307
 417 005e FFF7FEFF 		bl	vAssertCalled
 418 0062 002C     		cmp	r4, #0
 419 0064 D8D1     		bne	.L79
 420 0066 12E0     		b	.L100
 421              	.L101:
 422 0068 0C49     		ldr	r1, .L103
 423 006a 40F23B10 		movw	r0, #315
 424 006e FFF7FEFF 		bl	vAssertCalled
 425 0072 5423     		movs	r3, #84
 426 0074 0193     		str	r3, [sp, #4]
 427 0076 019B     		ldr	r3, [sp, #4]
 428 0078 542B     		cmp	r3, #84
 429 007a D4D0     		beq	.L82
 430 007c E6E7     		b	.L102
 431              	.L80:
 432 007e 002E     		cmp	r6, #0
 433 0080 CCD0     		beq	.L81
 434 0082 0649     		ldr	r1, .L103
 435 0084 4FF49E70 		mov	r0, #316
 436 0088 FFF7FEFF 		bl	vAssertCalled
 437 008c C6E7     		b	.L81
 438              	.L100:
 439 008e 0349     		ldr	r1, .L103
 440 0090 40F23710 		movw	r0, #311
 441 0094 FFF7FEFF 		bl	vAssertCalled
 442 0098 BEE7     		b	.L79
 443              	.L104:
 444 009a 00BF     		.align	2
 445              	.L103:
 446 009c 00000000 		.word	.LC0
 447              		.size	xQueueGenericCreateStatic, .-xQueueGenericCreateStatic
 448              		.section	.text.xQueueGetMutexHolder,"ax",%progbits
 449              		.align	1
 450              		.p2align 2,,3
 451              		.global	xQueueGetMutexHolder
 452              		.syntax unified
 453              		.thumb
 454              		.thumb_func
 455              		.fpu fpv4-sp-d16
 456              		.type	xQueueGetMutexHolder, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 9


 457              	xQueueGetMutexHolder:
 458              		@ args = 0, pretend = 0, frame = 0
 459              		@ frame_needed = 0, uses_anonymous_args = 0
 460 0000 10B5     		push	{r4, lr}
 461 0002 0446     		mov	r4, r0
 462 0004 FFF7FEFF 		bl	vPortEnterCritical
 463 0008 2368     		ldr	r3, [r4]
 464 000a 23B9     		cbnz	r3, .L107
 465 000c 6468     		ldr	r4, [r4, #4]
 466 000e FFF7FEFF 		bl	vPortExitCritical
 467 0012 2046     		mov	r0, r4
 468 0014 10BD     		pop	{r4, pc}
 469              	.L107:
 470 0016 0024     		movs	r4, #0
 471 0018 FFF7FEFF 		bl	vPortExitCritical
 472 001c 2046     		mov	r0, r4
 473 001e 10BD     		pop	{r4, pc}
 474              		.size	xQueueGetMutexHolder, .-xQueueGetMutexHolder
 475              		.section	.text.xQueueGetMutexHolderFromISR,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	xQueueGetMutexHolderFromISR
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu fpv4-sp-d16
 483              		.type	xQueueGetMutexHolderFromISR, %function
 484              	xQueueGetMutexHolderFromISR:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487 0000 10B5     		push	{r4, lr}
 488 0002 0446     		mov	r4, r0
 489 0004 28B1     		cbz	r0, .L114
 490              	.L110:
 491 0006 2368     		ldr	r3, [r4]
 492 0008 0BB9     		cbnz	r3, .L112
 493 000a 6068     		ldr	r0, [r4, #4]
 494 000c 10BD     		pop	{r4, pc}
 495              	.L112:
 496 000e 0020     		movs	r0, #0
 497 0010 10BD     		pop	{r4, pc}
 498              	.L114:
 499 0012 0349     		ldr	r1, .L115
 500 0014 40F22920 		movw	r0, #553
 501 0018 FFF7FEFF 		bl	vAssertCalled
 502 001c F3E7     		b	.L110
 503              	.L116:
 504 001e 00BF     		.align	2
 505              	.L115:
 506 0020 00000000 		.word	.LC0
 507              		.size	xQueueGetMutexHolderFromISR, .-xQueueGetMutexHolderFromISR
 508              		.section	.text.xQueueCreateCountingSemaphoreStatic,"ax",%progbits
 509              		.align	1
 510              		.p2align 2,,3
 511              		.global	xQueueCreateCountingSemaphoreStatic
 512              		.syntax unified
 513              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 10


 514              		.thumb_func
 515              		.fpu fpv4-sp-d16
 516              		.type	xQueueCreateCountingSemaphoreStatic, %function
 517              	xQueueCreateCountingSemaphoreStatic:
 518              		@ args = 0, pretend = 0, frame = 0
 519              		@ frame_needed = 0, uses_anonymous_args = 0
 520 0000 70B5     		push	{r4, r5, r6, lr}
 521 0002 0D46     		mov	r5, r1
 522 0004 82B0     		sub	sp, sp, #8
 523 0006 1646     		mov	r6, r2
 524 0008 0446     		mov	r4, r0
 525 000a 68B1     		cbz	r0, .L125
 526 000c AC42     		cmp	r4, r5
 527 000e 12D3     		bcc	.L126
 528              	.L119:
 529 0010 0221     		movs	r1, #2
 530 0012 0022     		movs	r2, #0
 531 0014 0091     		str	r1, [sp]
 532 0016 3346     		mov	r3, r6
 533 0018 2046     		mov	r0, r4
 534 001a 1146     		mov	r1, r2
 535 001c FFF7FEFF 		bl	xQueueGenericCreateStatic
 536 0020 00B1     		cbz	r0, .L117
 537 0022 8563     		str	r5, [r0, #56]
 538              	.L117:
 539 0024 02B0     		add	sp, sp, #8
 540              		@ sp needed
 541 0026 70BD     		pop	{r4, r5, r6, pc}
 542              	.L125:
 543 0028 0649     		ldr	r1, .L127
 544 002a 4FF42970 		mov	r0, #676
 545 002e FFF7FEFF 		bl	vAssertCalled
 546 0032 AC42     		cmp	r4, r5
 547 0034 ECD2     		bcs	.L119
 548              	.L126:
 549 0036 0349     		ldr	r1, .L127
 550 0038 40F2A520 		movw	r0, #677
 551 003c FFF7FEFF 		bl	vAssertCalled
 552 0040 E6E7     		b	.L119
 553              	.L128:
 554 0042 00BF     		.align	2
 555              	.L127:
 556 0044 00000000 		.word	.LC0
 557              		.size	xQueueCreateCountingSemaphoreStatic, .-xQueueCreateCountingSemaphoreStatic
 558              		.section	.text.xQueueGenericSend,"ax",%progbits
 559              		.align	1
 560              		.p2align 2,,3
 561              		.global	xQueueGenericSend
 562              		.syntax unified
 563              		.thumb
 564              		.thumb_func
 565              		.fpu fpv4-sp-d16
 566              		.type	xQueueGenericSend, %function
 567              	xQueueGenericSend:
 568              		@ args = 0, pretend = 0, frame = 16
 569              		@ frame_needed = 0, uses_anonymous_args = 0
 570 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 11


 571 0004 84B0     		sub	sp, sp, #16
 572 0006 8946     		mov	r9, r1
 573 0008 0192     		str	r2, [sp, #4]
 574 000a 1F46     		mov	r7, r3
 575 000c 0446     		mov	r4, r0
 576 000e 0028     		cmp	r0, #0
 577 0010 00F0A380 		beq	.L168
 578              	.L130:
 579 0014 B9F1000F 		cmp	r9, #0
 580 0018 00F08680 		beq	.L169
 581              	.L131:
 582 001c 022F     		cmp	r7, #2
 583 001e 7AD0     		beq	.L170
 584              	.L132:
 585 0020 FFF7FEFF 		bl	xTaskGetSchedulerState
 586 0024 18B9     		cbnz	r0, .L133
 587 0026 019B     		ldr	r3, [sp, #4]
 588 0028 002B     		cmp	r3, #0
 589 002a 40F09C80 		bne	.L171
 590              	.L133:
 591 002e 0026     		movs	r6, #0
 592 0030 B046     		mov	r8, r6
 593 0032 DFF84CA1 		ldr	r10, .L174
 594 0036 27E0     		b	.L134
 595              	.L144:
 596 0038 FFF7FEFF 		bl	vPortExitCritical
 597 003c FFF7FEFF 		bl	vTaskSuspendAll
 598 0040 FFF7FEFF 		bl	vPortEnterCritical
 599 0044 94F84430 		ldrb	r3, [r4, #68]	@ zero_extendqisi2
 600 0048 FF2B     		cmp	r3, #255
 601 004a 08BF     		it	eq
 602 004c 84F84480 		strbeq	r8, [r4, #68]
 603 0050 94F84530 		ldrb	r3, [r4, #69]	@ zero_extendqisi2
 604 0054 FF2B     		cmp	r3, #255
 605 0056 08BF     		it	eq
 606 0058 84F84580 		strbeq	r8, [r4, #69]
 607 005c FFF7FEFF 		bl	vPortExitCritical
 608 0060 01A9     		add	r1, sp, #4
 609 0062 02A8     		add	r0, sp, #8
 610 0064 FFF7FEFF 		bl	xTaskCheckForTimeOut
 611 0068 0028     		cmp	r0, #0
 612 006a 6DD1     		bne	.L147
 613 006c FFF7FEFF 		bl	vPortEnterCritical
 614 0070 A26B     		ldr	r2, [r4, #56]
 615 0072 E36B     		ldr	r3, [r4, #60]
 616 0074 9A42     		cmp	r2, r3
 617 0076 18D0     		beq	.L148
 618 0078 FFF7FEFF 		bl	vPortExitCritical
 619 007c 2046     		mov	r0, r4
 620 007e FFF7FEFF 		bl	prvUnlockQueue
 621 0082 FFF7FEFF 		bl	xTaskResumeAll
 622              	.L149:
 623 0086 0126     		movs	r6, #1
 624              	.L134:
 625 0088 FFF7FEFF 		bl	vPortEnterCritical
 626 008c A26B     		ldr	r2, [r4, #56]
 627 008e E36B     		ldr	r3, [r4, #60]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 12


 628 0090 9A42     		cmp	r2, r3
 629 0092 21D3     		bcc	.L135
 630 0094 022F     		cmp	r7, #2
 631 0096 1FD0     		beq	.L135
 632 0098 019D     		ldr	r5, [sp, #4]
 633 009a 002D     		cmp	r5, #0
 634 009c 4ED0     		beq	.L172
 635 009e 002E     		cmp	r6, #0
 636 00a0 CAD1     		bne	.L144
 637 00a2 02A8     		add	r0, sp, #8
 638 00a4 FFF7FEFF 		bl	vTaskInternalSetTimeOutState
 639 00a8 C6E7     		b	.L144
 640              	.L148:
 641 00aa FFF7FEFF 		bl	vPortExitCritical
 642 00ae 0199     		ldr	r1, [sp, #4]
 643 00b0 04F11000 		add	r0, r4, #16
 644 00b4 FFF7FEFF 		bl	vTaskPlaceOnEventList
 645 00b8 2046     		mov	r0, r4
 646 00ba FFF7FEFF 		bl	prvUnlockQueue
 647 00be FFF7FEFF 		bl	xTaskResumeAll
 648 00c2 0028     		cmp	r0, #0
 649 00c4 DFD1     		bne	.L149
 650 00c6 4FF08053 		mov	r3, #268435456
 651 00ca CAF80030 		str	r3, [r10]
 652              		.syntax unified
 653              	@ 901 "../src/queue.c" 1
 654 00ce BFF34F8F 		dsb
 655              	@ 0 "" 2
 656              	@ 901 "../src/queue.c" 1
 657 00d2 BFF36F8F 		isb
 658              	@ 0 "" 2
 659              		.thumb
 660              		.syntax unified
 661 00d6 D6E7     		b	.L149
 662              	.L135:
 663 00d8 4946     		mov	r1, r9
 664 00da 3A46     		mov	r2, r7
 665 00dc 2046     		mov	r0, r4
 666 00de FFF7FEFF 		bl	prvCopyDataToQueue
 667 00e2 A36C     		ldr	r3, [r4, #72]
 668 00e4 93B1     		cbz	r3, .L137
 669 00e6 3946     		mov	r1, r7
 670 00e8 2046     		mov	r0, r4
 671 00ea FFF7FEFF 		bl	prvNotifyQueueSetContainer
 672 00ee 38B1     		cbz	r0, .L139
 673              	.L167:
 674 00f0 234B     		ldr	r3, .L174
 675 00f2 4FF08052 		mov	r2, #268435456
 676 00f6 1A60     		str	r2, [r3]
 677              		.syntax unified
 678              	@ 799 "../src/queue.c" 1
 679 00f8 BFF34F8F 		dsb
 680              	@ 0 "" 2
 681              	@ 799 "../src/queue.c" 1
 682 00fc BFF36F8F 		isb
 683              	@ 0 "" 2
 684              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 13


 685              		.syntax unified
 686              	.L139:
 687 0100 FFF7FEFF 		bl	vPortExitCritical
 688 0104 0120     		movs	r0, #1
 689 0106 04B0     		add	sp, sp, #16
 690              		@ sp needed
 691 0108 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 692              	.L137:
 693 010c 636A     		ldr	r3, [r4, #36]
 694 010e 83BB     		cbnz	r3, .L173
 695 0110 0028     		cmp	r0, #0
 696 0112 EDD1     		bne	.L167
 697 0114 F4E7     		b	.L139
 698              	.L170:
 699 0116 E36B     		ldr	r3, [r4, #60]
 700 0118 012B     		cmp	r3, #1
 701 011a 81D0     		beq	.L132
 702 011c 1949     		ldr	r1, .L174+4
 703 011e 40F2DE20 		movw	r0, #734
 704 0122 FFF7FEFF 		bl	vAssertCalled
 705 0126 7BE7     		b	.L132
 706              	.L169:
 707 0128 236C     		ldr	r3, [r4, #64]
 708 012a 002B     		cmp	r3, #0
 709 012c 3FF476AF 		beq	.L131
 710 0130 1449     		ldr	r1, .L174+4
 711 0132 40F2DD20 		movw	r0, #733
 712 0136 FFF7FEFF 		bl	vAssertCalled
 713 013a 6FE7     		b	.L131
 714              	.L172:
 715 013c FFF7FEFF 		bl	vPortExitCritical
 716 0140 2846     		mov	r0, r5
 717 0142 04B0     		add	sp, sp, #16
 718              		@ sp needed
 719 0144 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 720              	.L147:
 721 0148 2046     		mov	r0, r4
 722 014a FFF7FEFF 		bl	prvUnlockQueue
 723 014e FFF7FEFF 		bl	xTaskResumeAll
 724 0152 0020     		movs	r0, #0
 725 0154 04B0     		add	sp, sp, #16
 726              		@ sp needed
 727 0156 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 728              	.L168:
 729 015a 0A49     		ldr	r1, .L174+4
 730 015c 4FF43770 		mov	r0, #732
 731 0160 FFF7FEFF 		bl	vAssertCalled
 732 0164 56E7     		b	.L130
 733              	.L171:
 734 0166 0749     		ldr	r1, .L174+4
 735 0168 40F2E120 		movw	r0, #737
 736 016c FFF7FEFF 		bl	vAssertCalled
 737 0170 5DE7     		b	.L133
 738              	.L173:
 739 0172 04F12400 		add	r0, r4, #36
 740 0176 FFF7FEFF 		bl	xTaskRemoveFromEventList
 741 017a 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 14


 742 017c B8D1     		bne	.L167
 743 017e BFE7     		b	.L139
 744              	.L175:
 745              		.align	2
 746              	.L174:
 747 0180 04ED00E0 		.word	-536810236
 748 0184 00000000 		.word	.LC0
 749              		.size	xQueueGenericSend, .-xQueueGenericSend
 750              		.section	.text.xQueueCreateMutexStatic,"ax",%progbits
 751              		.align	1
 752              		.p2align 2,,3
 753              		.global	xQueueCreateMutexStatic
 754              		.syntax unified
 755              		.thumb
 756              		.thumb_func
 757              		.fpu fpv4-sp-d16
 758              		.type	xQueueCreateMutexStatic, %function
 759              	xQueueCreateMutexStatic:
 760              		@ args = 0, pretend = 0, frame = 0
 761              		@ frame_needed = 0, uses_anonymous_args = 0
 762 0000 10B5     		push	{r4, lr}
 763 0002 82B0     		sub	sp, sp, #8
 764 0004 0022     		movs	r2, #0
 765 0006 0090     		str	r0, [sp]
 766 0008 0B46     		mov	r3, r1
 767 000a 0120     		movs	r0, #1
 768 000c 1146     		mov	r1, r2
 769 000e FFF7FEFF 		bl	xQueueGenericCreateStatic
 770 0012 0446     		mov	r4, r0
 771 0014 38B1     		cbz	r0, .L176
 772 0016 0023     		movs	r3, #0
 773 0018 C0E90033 		strd	r3, r3, [r0]
 774 001c C360     		str	r3, [r0, #12]
 775 001e 1A46     		mov	r2, r3
 776 0020 1946     		mov	r1, r3
 777 0022 FFF7FEFF 		bl	xQueueGenericSend
 778              	.L176:
 779 0026 2046     		mov	r0, r4
 780 0028 02B0     		add	sp, sp, #8
 781              		@ sp needed
 782 002a 10BD     		pop	{r4, pc}
 783              		.size	xQueueCreateMutexStatic, .-xQueueCreateMutexStatic
 784              		.section	.text.xQueueGiveMutexRecursive,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	xQueueGiveMutexRecursive
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu fpv4-sp-d16
 792              		.type	xQueueGiveMutexRecursive, %function
 793              	xQueueGiveMutexRecursive:
 794              		@ args = 0, pretend = 0, frame = 0
 795              		@ frame_needed = 0, uses_anonymous_args = 0
 796 0000 38B5     		push	{r3, r4, r5, lr}
 797 0002 0446     		mov	r4, r0
 798 0004 60B1     		cbz	r0, .L188
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 15


 799              	.L183:
 800 0006 6568     		ldr	r5, [r4, #4]
 801 0008 FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 802 000c 8542     		cmp	r5, r0
 803 000e 01D0     		beq	.L189
 804 0010 0020     		movs	r0, #0
 805 0012 38BD     		pop	{r3, r4, r5, pc}
 806              	.L189:
 807 0014 E368     		ldr	r3, [r4, #12]
 808 0016 013B     		subs	r3, r3, #1
 809 0018 E360     		str	r3, [r4, #12]
 810 001a 3BB1     		cbz	r3, .L190
 811 001c 0120     		movs	r0, #1
 812 001e 38BD     		pop	{r3, r4, r5, pc}
 813              	.L188:
 814 0020 0649     		ldr	r1, .L191
 815 0022 4FF41170 		mov	r0, #580
 816 0026 FFF7FEFF 		bl	vAssertCalled
 817 002a ECE7     		b	.L183
 818              	.L190:
 819 002c 2046     		mov	r0, r4
 820 002e 1A46     		mov	r2, r3
 821 0030 1946     		mov	r1, r3
 822 0032 FFF7FEFF 		bl	xQueueGenericSend
 823 0036 0120     		movs	r0, #1
 824 0038 38BD     		pop	{r3, r4, r5, pc}
 825              	.L192:
 826 003a 00BF     		.align	2
 827              	.L191:
 828 003c 00000000 		.word	.LC0
 829              		.size	xQueueGiveMutexRecursive, .-xQueueGiveMutexRecursive
 830              		.section	.text.xQueueGenericSendFromISR,"ax",%progbits
 831              		.align	1
 832              		.p2align 2,,3
 833              		.global	xQueueGenericSendFromISR
 834              		.syntax unified
 835              		.thumb
 836              		.thumb_func
 837              		.fpu fpv4-sp-d16
 838              		.type	xQueueGenericSendFromISR, %function
 839              	xQueueGenericSendFromISR:
 840              		@ args = 0, pretend = 0, frame = 0
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 843 0004 0F46     		mov	r7, r1
 844 0006 9146     		mov	r9, r2
 845 0008 1E46     		mov	r6, r3
 846 000a 0446     		mov	r4, r0
 847 000c 0028     		cmp	r0, #0
 848 000e 4DD0     		beq	.L219
 849              	.L194:
 850 0010 A7B3     		cbz	r7, .L220
 851              	.L195:
 852 0012 022E     		cmp	r6, #2
 853 0014 29D0     		beq	.L221
 854              	.L196:
 855 0016 FFF7FEFF 		bl	vPortValidateInterruptPriority
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 16


 856              		.syntax unified
 857              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 858 001a EFF31188 			mrs r8, basepri											
 859 001e 4FF05003 		mov r3, #80												
 860 0022 83F31188 		msr basepri, r3											
 861 0026 BFF36F8F 		isb														
 862 002a BFF34F8F 		dsb														
 863              	
 864              	@ 0 "" 2
 865              		.thumb
 866              		.syntax unified
 867 002e A26B     		ldr	r2, [r4, #56]
 868 0030 E36B     		ldr	r3, [r4, #60]
 869 0032 9A42     		cmp	r2, r3
 870 0034 06D3     		bcc	.L197
 871 0036 022E     		cmp	r6, #2
 872 0038 04D0     		beq	.L197
 873 003a 0020     		movs	r0, #0
 874              	.L198:
 875              		.syntax unified
 876              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 877 003c 88F31188 			msr basepri, r8	
 878              	@ 0 "" 2
 879              		.thumb
 880              		.syntax unified
 881 0040 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 882              	.L197:
 883 0044 94F84550 		ldrb	r5, [r4, #69]	@ zero_extendqisi2
 884 0048 3946     		mov	r1, r7
 885 004a 6DB2     		sxtb	r5, r5
 886 004c 3246     		mov	r2, r6
 887 004e 2046     		mov	r0, r4
 888 0050 FFF7FEFF 		bl	prvCopyDataToQueue
 889 0054 6B1C     		adds	r3, r5, #1
 890 0056 1AD0     		beq	.L222
 891 0058 0135     		adds	r5, r5, #1
 892 005a 6DB2     		sxtb	r5, r5
 893 005c 84F84550 		strb	r5, [r4, #69]
 894              	.L217:
 895 0060 0120     		movs	r0, #1
 896              		.syntax unified
 897              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 898 0062 88F31188 			msr basepri, r8	
 899              	@ 0 "" 2
 900              		.thumb
 901              		.syntax unified
 902 0066 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 903              	.L221:
 904 006a E36B     		ldr	r3, [r4, #60]
 905 006c 012B     		cmp	r3, #1
 906 006e D2D0     		beq	.L196
 907 0070 1849     		ldr	r1, .L224
 908 0072 4FF46970 		mov	r0, #932
 909 0076 FFF7FEFF 		bl	vAssertCalled
 910 007a CCE7     		b	.L196
 911              	.L220:
 912 007c 236C     		ldr	r3, [r4, #64]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 17


 913 007e 002B     		cmp	r3, #0
 914 0080 C7D0     		beq	.L195
 915 0082 1449     		ldr	r1, .L224
 916 0084 40F2A330 		movw	r0, #931
 917 0088 FFF7FEFF 		bl	vAssertCalled
 918 008c C1E7     		b	.L195
 919              	.L222:
 920 008e A36C     		ldr	r3, [r4, #72]
 921 0090 93B1     		cbz	r3, .L200
 922 0092 3146     		mov	r1, r6
 923 0094 2046     		mov	r0, r4
 924 0096 FFF7FEFF 		bl	prvNotifyQueueSetContainer
 925 009a 0028     		cmp	r0, #0
 926 009c E0D0     		beq	.L217
 927 009e B9F1000F 		cmp	r9, #0
 928 00a2 DDD0     		beq	.L217
 929              	.L223:
 930 00a4 0120     		movs	r0, #1
 931 00a6 C9F80000 		str	r0, [r9]
 932 00aa C7E7     		b	.L198
 933              	.L219:
 934 00ac 0949     		ldr	r1, .L224
 935 00ae 40F2A230 		movw	r0, #930
 936 00b2 FFF7FEFF 		bl	vAssertCalled
 937 00b6 ABE7     		b	.L194
 938              	.L200:
 939 00b8 636A     		ldr	r3, [r4, #36]
 940 00ba 002B     		cmp	r3, #0
 941 00bc D0D0     		beq	.L217
 942 00be 04F12400 		add	r0, r4, #36
 943 00c2 FFF7FEFF 		bl	xTaskRemoveFromEventList
 944 00c6 0028     		cmp	r0, #0
 945 00c8 CAD0     		beq	.L217
 946 00ca B9F1000F 		cmp	r9, #0
 947 00ce C7D0     		beq	.L217
 948 00d0 E8E7     		b	.L223
 949              	.L225:
 950 00d2 00BF     		.align	2
 951              	.L224:
 952 00d4 00000000 		.word	.LC0
 953              		.size	xQueueGenericSendFromISR, .-xQueueGenericSendFromISR
 954              		.section	.text.xQueueGiveFromISR,"ax",%progbits
 955              		.align	1
 956              		.p2align 2,,3
 957              		.global	xQueueGiveFromISR
 958              		.syntax unified
 959              		.thumb
 960              		.thumb_func
 961              		.fpu fpv4-sp-d16
 962              		.type	xQueueGiveFromISR, %function
 963              	xQueueGiveFromISR:
 964              		@ args = 0, pretend = 0, frame = 0
 965              		@ frame_needed = 0, uses_anonymous_args = 0
 966 0000 70B5     		push	{r4, r5, r6, lr}
 967 0002 0E46     		mov	r6, r1
 968 0004 0446     		mov	r4, r0
 969 0006 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 18


 970 0008 44D0     		beq	.L251
 971              	.L227:
 972 000a 236C     		ldr	r3, [r4, #64]
 973 000c 23BB     		cbnz	r3, .L252
 974 000e 2368     		ldr	r3, [r4]
 975 0010 53B3     		cbz	r3, .L253
 976              	.L229:
 977 0012 FFF7FEFF 		bl	vPortValidateInterruptPriority
 978              		.syntax unified
 979              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 980 0016 EFF31185 			mrs r5, basepri											
 981 001a 4FF05003 		mov r3, #80												
 982 001e 83F31188 		msr basepri, r3											
 983 0022 BFF36F8F 		isb														
 984 0026 BFF34F8F 		dsb														
 985              	
 986              	@ 0 "" 2
 987              		.thumb
 988              		.syntax unified
 989 002a A26B     		ldr	r2, [r4, #56]
 990 002c E36B     		ldr	r3, [r4, #60]
 991 002e 9342     		cmp	r3, r2
 992 0030 0ED9     		bls	.L235
 993 0032 94F84530 		ldrb	r3, [r4, #69]	@ zero_extendqisi2
 994 0036 0132     		adds	r2, r2, #1
 995 0038 5BB2     		sxtb	r3, r3
 996 003a A263     		str	r2, [r4, #56]
 997 003c 5A1C     		adds	r2, r3, #1
 998 003e 1CD0     		beq	.L254
 999 0040 0133     		adds	r3, r3, #1
 1000 0042 5BB2     		sxtb	r3, r3
 1001 0044 84F84530 		strb	r3, [r4, #69]
 1002              	.L249:
 1003 0048 0120     		movs	r0, #1
 1004              	.L230:
 1005              		.syntax unified
 1006              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1007 004a 85F31188 			msr basepri, r5	
 1008              	@ 0 "" 2
 1009              		.thumb
 1010              		.syntax unified
 1011 004e 70BD     		pop	{r4, r5, r6, pc}
 1012              	.L235:
 1013 0050 0020     		movs	r0, #0
 1014              		.syntax unified
 1015              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1016 0052 85F31188 			msr basepri, r5	
 1017              	@ 0 "" 2
 1018              		.thumb
 1019              		.syntax unified
 1020 0056 70BD     		pop	{r4, r5, r6, pc}
 1021              	.L252:
 1022 0058 1749     		ldr	r1, .L256
 1023 005a 40F24340 		movw	r0, #1091
 1024 005e FFF7FEFF 		bl	vAssertCalled
 1025 0062 2368     		ldr	r3, [r4]
 1026 0064 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 19


 1027 0066 D4D1     		bne	.L229
 1028              	.L253:
 1029 0068 6368     		ldr	r3, [r4, #4]
 1030 006a 002B     		cmp	r3, #0
 1031 006c D1D0     		beq	.L229
 1032 006e 1249     		ldr	r1, .L256
 1033 0070 4FF48960 		mov	r0, #1096
 1034 0074 FFF7FEFF 		bl	vAssertCalled
 1035 0078 CBE7     		b	.L229
 1036              	.L254:
 1037 007a A36C     		ldr	r3, [r4, #72]
 1038 007c 83B1     		cbz	r3, .L232
 1039 007e 2046     		mov	r0, r4
 1040 0080 0021     		movs	r1, #0
 1041 0082 FFF7FEFF 		bl	prvNotifyQueueSetContainer
 1042 0086 0028     		cmp	r0, #0
 1043 0088 DED0     		beq	.L249
 1044 008a 002E     		cmp	r6, #0
 1045 008c DCD0     		beq	.L249
 1046              	.L255:
 1047 008e 0120     		movs	r0, #1
 1048 0090 3060     		str	r0, [r6]
 1049 0092 DAE7     		b	.L230
 1050              	.L251:
 1051 0094 0849     		ldr	r1, .L256
 1052 0096 40F23F40 		movw	r0, #1087
 1053 009a FFF7FEFF 		bl	vAssertCalled
 1054 009e B4E7     		b	.L227
 1055              	.L232:
 1056 00a0 636A     		ldr	r3, [r4, #36]
 1057 00a2 002B     		cmp	r3, #0
 1058 00a4 D0D0     		beq	.L249
 1059 00a6 04F12400 		add	r0, r4, #36
 1060 00aa FFF7FEFF 		bl	xTaskRemoveFromEventList
 1061 00ae 0028     		cmp	r0, #0
 1062 00b0 CAD0     		beq	.L249
 1063 00b2 002E     		cmp	r6, #0
 1064 00b4 C8D0     		beq	.L249
 1065 00b6 EAE7     		b	.L255
 1066              	.L257:
 1067              		.align	2
 1068              	.L256:
 1069 00b8 00000000 		.word	.LC0
 1070              		.size	xQueueGiveFromISR, .-xQueueGiveFromISR
 1071              		.section	.text.xQueueReceive,"ax",%progbits
 1072              		.align	1
 1073              		.p2align 2,,3
 1074              		.global	xQueueReceive
 1075              		.syntax unified
 1076              		.thumb
 1077              		.thumb_func
 1078              		.fpu fpv4-sp-d16
 1079              		.type	xQueueReceive, %function
 1080              	xQueueReceive:
 1081              		@ args = 0, pretend = 0, frame = 16
 1082              		@ frame_needed = 0, uses_anonymous_args = 0
 1083 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 20


 1084 0004 85B0     		sub	sp, sp, #20
 1085 0006 8946     		mov	r9, r1
 1086 0008 0192     		str	r2, [sp, #4]
 1087 000a 0446     		mov	r4, r0
 1088 000c 0028     		cmp	r0, #0
 1089 000e 00F08D80 		beq	.L320
 1090              	.L259:
 1091 0012 B9F1000F 		cmp	r9, #0
 1092 0016 7FD0     		beq	.L321
 1093              	.L260:
 1094 0018 FFF7FEFF 		bl	xTaskGetSchedulerState
 1095 001c 18B9     		cbnz	r0, .L261
 1096 001e 019B     		ldr	r3, [sp, #4]
 1097 0020 002B     		cmp	r3, #0
 1098 0022 40F08980 		bne	.L322
 1099              	.L261:
 1100 0026 FFF7FEFF 		bl	vPortEnterCritical
 1101 002a A56B     		ldr	r5, [r4, #56]
 1102 002c 002D     		cmp	r5, #0
 1103 002e 48D1     		bne	.L262
 1104 0030 019B     		ldr	r3, [sp, #4]
 1105 0032 002B     		cmp	r3, #0
 1106 0034 6AD0     		beq	.L265
 1107 0036 02A8     		add	r0, sp, #8
 1108 0038 FFF7FEFF 		bl	vTaskInternalSetTimeOutState
 1109 003c DFF82881 		ldr	r8, .L325+4
 1110 0040 2E46     		mov	r6, r5
 1111 0042 04F12407 		add	r7, r4, #36
 1112 0046 12E0     		b	.L272
 1113              	.L323:
 1114 0048 FFF7FEFF 		bl	vPortEnterCritical
 1115 004c A36B     		ldr	r3, [r4, #56]
 1116 004e 002B     		cmp	r3, #0
 1117 0050 46D0     		beq	.L276
 1118 0052 FFF7FEFF 		bl	vPortExitCritical
 1119 0056 2046     		mov	r0, r4
 1120 0058 FFF7FEFF 		bl	prvUnlockQueue
 1121 005c FFF7FEFF 		bl	xTaskResumeAll
 1122              	.L319:
 1123 0060 FFF7FEFF 		bl	vPortEnterCritical
 1124 0064 A56B     		ldr	r5, [r4, #56]
 1125 0066 65BB     		cbnz	r5, .L262
 1126              	.L308:
 1127 0068 019B     		ldr	r3, [sp, #4]
 1128 006a 002B     		cmp	r3, #0
 1129 006c 4ED0     		beq	.L265
 1130              	.L272:
 1131 006e FFF7FEFF 		bl	vPortExitCritical
 1132 0072 FFF7FEFF 		bl	vTaskSuspendAll
 1133 0076 FFF7FEFF 		bl	vPortEnterCritical
 1134 007a 94F84430 		ldrb	r3, [r4, #68]	@ zero_extendqisi2
 1135 007e FF2B     		cmp	r3, #255
 1136 0080 08BF     		it	eq
 1137 0082 84F84460 		strbeq	r6, [r4, #68]
 1138 0086 94F84530 		ldrb	r3, [r4, #69]	@ zero_extendqisi2
 1139 008a FF2B     		cmp	r3, #255
 1140 008c 08BF     		it	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 21


 1141 008e 84F84560 		strbeq	r6, [r4, #69]
 1142 0092 FFF7FEFF 		bl	vPortExitCritical
 1143 0096 01A9     		add	r1, sp, #4
 1144 0098 02A8     		add	r0, sp, #8
 1145 009a FFF7FEFF 		bl	xTaskCheckForTimeOut
 1146 009e 0028     		cmp	r0, #0
 1147 00a0 D2D0     		beq	.L323
 1148 00a2 2046     		mov	r0, r4
 1149 00a4 FFF7FEFF 		bl	prvUnlockQueue
 1150 00a8 FFF7FEFF 		bl	xTaskResumeAll
 1151 00ac FFF7FEFF 		bl	vPortEnterCritical
 1152 00b0 A36B     		ldr	r3, [r4, #56]
 1153 00b2 5BB3     		cbz	r3, .L265
 1154 00b4 FFF7FEFF 		bl	vPortExitCritical
 1155 00b8 FFF7FEFF 		bl	vPortEnterCritical
 1156 00bc A56B     		ldr	r5, [r4, #56]
 1157 00be 002D     		cmp	r5, #0
 1158 00c0 D2D0     		beq	.L308
 1159              	.L262:
 1160 00c2 4946     		mov	r1, r9
 1161 00c4 2046     		mov	r0, r4
 1162 00c6 013D     		subs	r5, r5, #1
 1163 00c8 FFF7FEFF 		bl	prvCopyDataFromQueue
 1164 00cc A563     		str	r5, [r4, #56]
 1165 00ce 2369     		ldr	r3, [r4, #16]
 1166 00d0 002B     		cmp	r3, #0
 1167 00d2 37D1     		bne	.L324
 1168              	.L268:
 1169 00d4 FFF7FEFF 		bl	vPortExitCritical
 1170 00d8 0120     		movs	r0, #1
 1171 00da 05B0     		add	sp, sp, #20
 1172              		@ sp needed
 1173 00dc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1174              	.L276:
 1175 00e0 FFF7FEFF 		bl	vPortExitCritical
 1176 00e4 0199     		ldr	r1, [sp, #4]
 1177 00e6 3846     		mov	r0, r7
 1178 00e8 FFF7FEFF 		bl	vTaskPlaceOnEventList
 1179 00ec 2046     		mov	r0, r4
 1180 00ee FFF7FEFF 		bl	prvUnlockQueue
 1181 00f2 FFF7FEFF 		bl	xTaskResumeAll
 1182 00f6 0028     		cmp	r0, #0
 1183 00f8 B2D1     		bne	.L319
 1184 00fa 4FF08053 		mov	r3, #268435456
 1185 00fe C8F80030 		str	r3, [r8]
 1186              		.syntax unified
 1187              	@ 1346 "../src/queue.c" 1
 1188 0102 BFF34F8F 		dsb
 1189              	@ 0 "" 2
 1190              	@ 1346 "../src/queue.c" 1
 1191 0106 BFF36F8F 		isb
 1192              	@ 0 "" 2
 1193              		.thumb
 1194              		.syntax unified
 1195 010a A9E7     		b	.L319
 1196              	.L265:
 1197 010c FFF7FEFF 		bl	vPortExitCritical
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 22


 1198 0110 0020     		movs	r0, #0
 1199 0112 05B0     		add	sp, sp, #20
 1200              		@ sp needed
 1201 0114 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1202              	.L321:
 1203 0118 236C     		ldr	r3, [r4, #64]
 1204 011a 002B     		cmp	r3, #0
 1205 011c 3FF47CAF 		beq	.L260
 1206 0120 1049     		ldr	r1, .L325
 1207 0122 40F2E340 		movw	r0, #1251
 1208 0126 FFF7FEFF 		bl	vAssertCalled
 1209 012a 75E7     		b	.L260
 1210              	.L320:
 1211 012c 0D49     		ldr	r1, .L325
 1212 012e 40F2DF40 		movw	r0, #1247
 1213 0132 FFF7FEFF 		bl	vAssertCalled
 1214 0136 6CE7     		b	.L259
 1215              	.L322:
 1216 0138 0A49     		ldr	r1, .L325
 1217 013a 4FF49D60 		mov	r0, #1256
 1218 013e FFF7FEFF 		bl	vAssertCalled
 1219 0142 70E7     		b	.L261
 1220              	.L324:
 1221 0144 04F11000 		add	r0, r4, #16
 1222 0148 FFF7FEFF 		bl	xTaskRemoveFromEventList
 1223 014c 0028     		cmp	r0, #0
 1224 014e C1D0     		beq	.L268
 1225 0150 054B     		ldr	r3, .L325+4
 1226 0152 4FF08052 		mov	r2, #268435456
 1227 0156 1A60     		str	r2, [r3]
 1228              		.syntax unified
 1229              	@ 1287 "../src/queue.c" 1
 1230 0158 BFF34F8F 		dsb
 1231              	@ 0 "" 2
 1232              	@ 1287 "../src/queue.c" 1
 1233 015c BFF36F8F 		isb
 1234              	@ 0 "" 2
 1235              		.thumb
 1236              		.syntax unified
 1237 0160 B8E7     		b	.L268
 1238              	.L326:
 1239 0162 00BF     		.align	2
 1240              	.L325:
 1241 0164 00000000 		.word	.LC0
 1242 0168 04ED00E0 		.word	-536810236
 1243              		.size	xQueueReceive, .-xQueueReceive
 1244              		.section	.text.xQueueSemaphoreTake,"ax",%progbits
 1245              		.align	1
 1246              		.p2align 2,,3
 1247              		.global	xQueueSemaphoreTake
 1248              		.syntax unified
 1249              		.thumb
 1250              		.thumb_func
 1251              		.fpu fpv4-sp-d16
 1252              		.type	xQueueSemaphoreTake, %function
 1253              	xQueueSemaphoreTake:
 1254              		@ args = 0, pretend = 0, frame = 16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 23


 1255              		@ frame_needed = 0, uses_anonymous_args = 0
 1256 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1257 0004 84B0     		sub	sp, sp, #16
 1258 0006 0446     		mov	r4, r0
 1259 0008 0191     		str	r1, [sp, #4]
 1260 000a 0028     		cmp	r0, #0
 1261 000c 00F0AD80 		beq	.L368
 1262              	.L328:
 1263 0010 236C     		ldr	r3, [r4, #64]
 1264 0012 002B     		cmp	r3, #0
 1265 0014 40F08480 		bne	.L369
 1266              	.L329:
 1267 0018 FFF7FEFF 		bl	xTaskGetSchedulerState
 1268 001c 18B9     		cbnz	r0, .L330
 1269 001e 019B     		ldr	r3, [sp, #4]
 1270 0020 002B     		cmp	r3, #0
 1271 0022 40F08C80 		bne	.L370
 1272              	.L330:
 1273 0026 0027     		movs	r7, #0
 1274 0028 3D46     		mov	r5, r7
 1275 002a 3E46     		mov	r6, r7
 1276 002c DFF87081 		ldr	r8, .L378+4
 1277 0030 0CE0     		b	.L331
 1278              	.L374:
 1279 0032 FFF7FEFF 		bl	vPortEnterCritical
 1280 0036 A36B     		ldr	r3, [r4, #56]
 1281 0038 002B     		cmp	r3, #0
 1282 003a 3BD0     		beq	.L344
 1283 003c FFF7FEFF 		bl	vPortExitCritical
 1284 0040 2046     		mov	r0, r4
 1285 0042 FFF7FEFF 		bl	prvUnlockQueue
 1286 0046 FFF7FEFF 		bl	xTaskResumeAll
 1287              	.L345:
 1288 004a 0125     		movs	r5, #1
 1289              	.L331:
 1290 004c FFF7FEFF 		bl	vPortEnterCritical
 1291 0050 A36B     		ldr	r3, [r4, #56]
 1292 0052 002B     		cmp	r3, #0
 1293 0054 48D1     		bne	.L371
 1294 0056 019B     		ldr	r3, [sp, #4]
 1295 0058 002B     		cmp	r3, #0
 1296 005a 54D0     		beq	.L372
 1297 005c 35B3     		cbz	r5, .L373
 1298              	.L340:
 1299 005e FFF7FEFF 		bl	vPortExitCritical
 1300 0062 FFF7FEFF 		bl	vTaskSuspendAll
 1301 0066 FFF7FEFF 		bl	vPortEnterCritical
 1302 006a 94F84430 		ldrb	r3, [r4, #68]	@ zero_extendqisi2
 1303 006e FF2B     		cmp	r3, #255
 1304 0070 08BF     		it	eq
 1305 0072 84F84460 		strbeq	r6, [r4, #68]
 1306 0076 94F84530 		ldrb	r3, [r4, #69]	@ zero_extendqisi2
 1307 007a FF2B     		cmp	r3, #255
 1308 007c 08BF     		it	eq
 1309 007e 84F84560 		strbeq	r6, [r4, #69]
 1310 0082 FFF7FEFF 		bl	vPortExitCritical
 1311 0086 01A9     		add	r1, sp, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 24


 1312 0088 02A8     		add	r0, sp, #8
 1313 008a FFF7FEFF 		bl	xTaskCheckForTimeOut
 1314 008e 0028     		cmp	r0, #0
 1315 0090 CFD0     		beq	.L374
 1316 0092 2046     		mov	r0, r4
 1317 0094 FFF7FEFF 		bl	prvUnlockQueue
 1318 0098 FFF7FEFF 		bl	xTaskResumeAll
 1319 009c FFF7FEFF 		bl	vPortEnterCritical
 1320 00a0 A36B     		ldr	r3, [r4, #56]
 1321 00a2 002B     		cmp	r3, #0
 1322 00a4 51D0     		beq	.L347
 1323 00a6 FFF7FEFF 		bl	vPortExitCritical
 1324 00aa CEE7     		b	.L345
 1325              	.L373:
 1326 00ac 02A8     		add	r0, sp, #8
 1327 00ae FFF7FEFF 		bl	vTaskInternalSetTimeOutState
 1328 00b2 D4E7     		b	.L340
 1329              	.L344:
 1330 00b4 FFF7FEFF 		bl	vPortExitCritical
 1331 00b8 2368     		ldr	r3, [r4]
 1332 00ba 002B     		cmp	r3, #0
 1333 00bc 36D0     		beq	.L375
 1334              	.L346:
 1335 00be 0199     		ldr	r1, [sp, #4]
 1336 00c0 04F12400 		add	r0, r4, #36
 1337 00c4 FFF7FEFF 		bl	vTaskPlaceOnEventList
 1338 00c8 2046     		mov	r0, r4
 1339 00ca FFF7FEFF 		bl	prvUnlockQueue
 1340 00ce FFF7FEFF 		bl	xTaskResumeAll
 1341 00d2 0028     		cmp	r0, #0
 1342 00d4 B9D1     		bne	.L345
 1343 00d6 4FF08053 		mov	r3, #268435456
 1344 00da C8F80030 		str	r3, [r8]
 1345              		.syntax unified
 1346              	@ 1538 "../src/queue.c" 1
 1347 00de BFF34F8F 		dsb
 1348              	@ 0 "" 2
 1349              	@ 1538 "../src/queue.c" 1
 1350 00e2 BFF36F8F 		isb
 1351              	@ 0 "" 2
 1352              		.thumb
 1353              		.syntax unified
 1354 00e6 B0E7     		b	.L345
 1355              	.L371:
 1356 00e8 2268     		ldr	r2, [r4]
 1357 00ea 013B     		subs	r3, r3, #1
 1358 00ec A363     		str	r3, [r4, #56]
 1359 00ee 002A     		cmp	r2, #0
 1360 00f0 50D0     		beq	.L376
 1361              	.L333:
 1362 00f2 2369     		ldr	r3, [r4, #16]
 1363 00f4 002B     		cmp	r3, #0
 1364 00f6 3ED1     		bne	.L377
 1365              	.L335:
 1366 00f8 FFF7FEFF 		bl	vPortExitCritical
 1367 00fc 0127     		movs	r7, #1
 1368              	.L327:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 25


 1369 00fe 3846     		mov	r0, r7
 1370 0100 04B0     		add	sp, sp, #16
 1371              		@ sp needed
 1372 0102 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1373              	.L372:
 1374 0106 27B1     		cbz	r7, .L367
 1375 0108 2449     		ldr	r1, .L378
 1376 010a 40F2C250 		movw	r0, #1474
 1377 010e FFF7FEFF 		bl	vAssertCalled
 1378              	.L367:
 1379 0112 FFF7FEFF 		bl	vPortExitCritical
 1380 0116 0027     		movs	r7, #0
 1381 0118 3846     		mov	r0, r7
 1382 011a 04B0     		add	sp, sp, #16
 1383              		@ sp needed
 1384 011c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1385              	.L369:
 1386 0120 1E49     		ldr	r1, .L378
 1387 0122 40F27550 		movw	r0, #1397
 1388 0126 FFF7FEFF 		bl	vAssertCalled
 1389 012a 75E7     		b	.L329
 1390              	.L375:
 1391 012c FFF7FEFF 		bl	vPortEnterCritical
 1392 0130 6068     		ldr	r0, [r4, #4]
 1393 0132 FFF7FEFF 		bl	xTaskPriorityInherit
 1394 0136 0746     		mov	r7, r0
 1395 0138 FFF7FEFF 		bl	vPortExitCritical
 1396 013c BFE7     		b	.L346
 1397              	.L370:
 1398 013e 1749     		ldr	r1, .L378
 1399 0140 40F27A50 		movw	r0, #1402
 1400 0144 FFF7FEFF 		bl	vAssertCalled
 1401 0148 6DE7     		b	.L330
 1402              	.L347:
 1403 014a FFF7FEFF 		bl	vPortExitCritical
 1404 014e 002F     		cmp	r7, #0
 1405 0150 D5D0     		beq	.L327
 1406 0152 FFF7FEFF 		bl	vPortEnterCritical
 1407 0156 616A     		ldr	r1, [r4, #36]
 1408 0158 19B1     		cbz	r1, .L348
 1409 015a 236B     		ldr	r3, [r4, #48]
 1410 015c 1968     		ldr	r1, [r3]
 1411 015e C1F10501 		rsb	r1, r1, #5
 1412              	.L348:
 1413 0162 6068     		ldr	r0, [r4, #4]
 1414 0164 FFF7FEFF 		bl	vTaskPriorityDisinheritAfterTimeout
 1415 0168 D3E7     		b	.L367
 1416              	.L368:
 1417 016a 0C49     		ldr	r1, .L378
 1418 016c 40F27150 		movw	r0, #1393
 1419 0170 FFF7FEFF 		bl	vAssertCalled
 1420 0174 4CE7     		b	.L328
 1421              	.L377:
 1422 0176 04F11000 		add	r0, r4, #16
 1423 017a FFF7FEFF 		bl	xTaskRemoveFromEventList
 1424 017e 0028     		cmp	r0, #0
 1425 0180 BAD0     		beq	.L335
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 26


 1426 0182 074B     		ldr	r3, .L378+4
 1427 0184 4FF08052 		mov	r2, #268435456
 1428 0188 1A60     		str	r2, [r3]
 1429              		.syntax unified
 1430              	@ 1450 "../src/queue.c" 1
 1431 018a BFF34F8F 		dsb
 1432              	@ 0 "" 2
 1433              	@ 1450 "../src/queue.c" 1
 1434 018e BFF36F8F 		isb
 1435              	@ 0 "" 2
 1436              		.thumb
 1437              		.syntax unified
 1438 0192 B1E7     		b	.L335
 1439              	.L376:
 1440 0194 FFF7FEFF 		bl	pvTaskIncrementMutexHeldCount
 1441 0198 6060     		str	r0, [r4, #4]
 1442 019a AAE7     		b	.L333
 1443              	.L379:
 1444              		.align	2
 1445              	.L378:
 1446 019c 00000000 		.word	.LC0
 1447 01a0 04ED00E0 		.word	-536810236
 1448              		.size	xQueueSemaphoreTake, .-xQueueSemaphoreTake
 1449              		.section	.text.xQueueTakeMutexRecursive,"ax",%progbits
 1450              		.align	1
 1451              		.p2align 2,,3
 1452              		.global	xQueueTakeMutexRecursive
 1453              		.syntax unified
 1454              		.thumb
 1455              		.thumb_func
 1456              		.fpu fpv4-sp-d16
 1457              		.type	xQueueTakeMutexRecursive, %function
 1458              	xQueueTakeMutexRecursive:
 1459              		@ args = 0, pretend = 0, frame = 0
 1460              		@ frame_needed = 0, uses_anonymous_args = 0
 1461 0000 70B5     		push	{r4, r5, r6, lr}
 1462 0002 0E46     		mov	r6, r1
 1463 0004 0446     		mov	r4, r0
 1464 0006 90B1     		cbz	r0, .L388
 1465              	.L381:
 1466 0008 6568     		ldr	r5, [r4, #4]
 1467 000a FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 1468 000e 8542     		cmp	r5, r0
 1469 0010 08D0     		beq	.L389
 1470 0012 3146     		mov	r1, r6
 1471 0014 2046     		mov	r0, r4
 1472 0016 FFF7FEFF 		bl	xQueueSemaphoreTake
 1473 001a 10B1     		cbz	r0, .L380
 1474 001c E368     		ldr	r3, [r4, #12]
 1475 001e 0133     		adds	r3, r3, #1
 1476 0020 E360     		str	r3, [r4, #12]
 1477              	.L380:
 1478 0022 70BD     		pop	{r4, r5, r6, pc}
 1479              	.L389:
 1480 0024 E368     		ldr	r3, [r4, #12]
 1481 0026 0133     		adds	r3, r3, #1
 1482 0028 E360     		str	r3, [r4, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 27


 1483 002a 0120     		movs	r0, #1
 1484 002c 70BD     		pop	{r4, r5, r6, pc}
 1485              	.L388:
 1486 002e 0349     		ldr	r1, .L390
 1487 0030 40F27B20 		movw	r0, #635
 1488 0034 FFF7FEFF 		bl	vAssertCalled
 1489 0038 E6E7     		b	.L381
 1490              	.L391:
 1491 003a 00BF     		.align	2
 1492              	.L390:
 1493 003c 00000000 		.word	.LC0
 1494              		.size	xQueueTakeMutexRecursive, .-xQueueTakeMutexRecursive
 1495              		.section	.text.xQueuePeek,"ax",%progbits
 1496              		.align	1
 1497              		.p2align 2,,3
 1498              		.global	xQueuePeek
 1499              		.syntax unified
 1500              		.thumb
 1501              		.thumb_func
 1502              		.fpu fpv4-sp-d16
 1503              		.type	xQueuePeek, %function
 1504              	xQueuePeek:
 1505              		@ args = 0, pretend = 0, frame = 16
 1506              		@ frame_needed = 0, uses_anonymous_args = 0
 1507 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1508 0004 84B0     		sub	sp, sp, #16
 1509 0006 8846     		mov	r8, r1
 1510 0008 0192     		str	r2, [sp, #4]
 1511 000a 0446     		mov	r4, r0
 1512 000c 0028     		cmp	r0, #0
 1513 000e 00F08A80 		beq	.L452
 1514              	.L393:
 1515 0012 B8F1000F 		cmp	r8, #0
 1516 0016 7CD0     		beq	.L453
 1517              	.L394:
 1518 0018 FFF7FEFF 		bl	xTaskGetSchedulerState
 1519 001c 18B9     		cbnz	r0, .L395
 1520 001e 019B     		ldr	r3, [sp, #4]
 1521 0020 002B     		cmp	r3, #0
 1522 0022 40F08680 		bne	.L454
 1523              	.L395:
 1524 0026 FFF7FEFF 		bl	vPortEnterCritical
 1525 002a A56B     		ldr	r5, [r4, #56]
 1526 002c 002D     		cmp	r5, #0
 1527 002e 46D1     		bne	.L396
 1528 0030 019B     		ldr	r3, [sp, #4]
 1529 0032 002B     		cmp	r3, #0
 1530 0034 67D0     		beq	.L399
 1531 0036 02A8     		add	r0, sp, #8
 1532 0038 FFF7FEFF 		bl	vTaskInternalSetTimeOutState
 1533 003c 474F     		ldr	r7, .L457
 1534 003e 04F12406 		add	r6, r4, #36
 1535 0042 12E0     		b	.L406
 1536              	.L455:
 1537 0044 FFF7FEFF 		bl	vPortEnterCritical
 1538 0048 A36B     		ldr	r3, [r4, #56]
 1539 004a 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 28


 1540 004c 46D0     		beq	.L410
 1541 004e FFF7FEFF 		bl	vPortExitCritical
 1542 0052 2046     		mov	r0, r4
 1543 0054 FFF7FEFF 		bl	prvUnlockQueue
 1544 0058 FFF7FEFF 		bl	xTaskResumeAll
 1545 005c FFF7FEFF 		bl	vPortEnterCritical
 1546 0060 A36B     		ldr	r3, [r4, #56]
 1547 0062 63BB     		cbnz	r3, .L396
 1548              	.L442:
 1549 0064 019B     		ldr	r3, [sp, #4]
 1550 0066 002B     		cmp	r3, #0
 1551 0068 4DD0     		beq	.L399
 1552              	.L406:
 1553 006a FFF7FEFF 		bl	vPortExitCritical
 1554 006e FFF7FEFF 		bl	vTaskSuspendAll
 1555 0072 FFF7FEFF 		bl	vPortEnterCritical
 1556 0076 94F84430 		ldrb	r3, [r4, #68]	@ zero_extendqisi2
 1557 007a FF2B     		cmp	r3, #255
 1558 007c 08BF     		it	eq
 1559 007e 84F84450 		strbeq	r5, [r4, #68]
 1560 0082 94F84530 		ldrb	r3, [r4, #69]	@ zero_extendqisi2
 1561 0086 FF2B     		cmp	r3, #255
 1562 0088 08BF     		it	eq
 1563 008a 84F84550 		strbeq	r5, [r4, #69]
 1564 008e FFF7FEFF 		bl	vPortExitCritical
 1565 0092 01A9     		add	r1, sp, #4
 1566 0094 02A8     		add	r0, sp, #8
 1567 0096 FFF7FEFF 		bl	xTaskCheckForTimeOut
 1568 009a 0028     		cmp	r0, #0
 1569 009c D2D0     		beq	.L455
 1570 009e 2046     		mov	r0, r4
 1571 00a0 FFF7FEFF 		bl	prvUnlockQueue
 1572 00a4 FFF7FEFF 		bl	xTaskResumeAll
 1573 00a8 FFF7FEFF 		bl	vPortEnterCritical
 1574 00ac A36B     		ldr	r3, [r4, #56]
 1575 00ae 53B3     		cbz	r3, .L399
 1576 00b0 FFF7FEFF 		bl	vPortExitCritical
 1577              	.L451:
 1578 00b4 FFF7FEFF 		bl	vPortEnterCritical
 1579 00b8 A36B     		ldr	r3, [r4, #56]
 1580 00ba 002B     		cmp	r3, #0
 1581 00bc D2D0     		beq	.L442
 1582              	.L396:
 1583 00be 4146     		mov	r1, r8
 1584 00c0 2046     		mov	r0, r4
 1585 00c2 E568     		ldr	r5, [r4, #12]
 1586 00c4 FFF7FEFF 		bl	prvCopyDataFromQueue
 1587 00c8 636A     		ldr	r3, [r4, #36]
 1588 00ca E560     		str	r5, [r4, #12]
 1589 00cc 002B     		cmp	r3, #0
 1590 00ce 36D1     		bne	.L456
 1591              	.L402:
 1592 00d0 FFF7FEFF 		bl	vPortExitCritical
 1593 00d4 0120     		movs	r0, #1
 1594 00d6 04B0     		add	sp, sp, #16
 1595              		@ sp needed
 1596 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 29


 1597              	.L410:
 1598 00dc FFF7FEFF 		bl	vPortExitCritical
 1599 00e0 0199     		ldr	r1, [sp, #4]
 1600 00e2 3046     		mov	r0, r6
 1601 00e4 FFF7FEFF 		bl	vTaskPlaceOnEventList
 1602 00e8 2046     		mov	r0, r4
 1603 00ea FFF7FEFF 		bl	prvUnlockQueue
 1604 00ee FFF7FEFF 		bl	xTaskResumeAll
 1605 00f2 0028     		cmp	r0, #0
 1606 00f4 DED1     		bne	.L451
 1607 00f6 4FF08053 		mov	r3, #268435456
 1608 00fa 3B60     		str	r3, [r7]
 1609              		.syntax unified
 1610              	@ 1715 "../src/queue.c" 1
 1611 00fc BFF34F8F 		dsb
 1612              	@ 0 "" 2
 1613              	@ 1715 "../src/queue.c" 1
 1614 0100 BFF36F8F 		isb
 1615              	@ 0 "" 2
 1616              		.thumb
 1617              		.syntax unified
 1618 0104 D6E7     		b	.L451
 1619              	.L399:
 1620 0106 FFF7FEFF 		bl	vPortExitCritical
 1621 010a 0020     		movs	r0, #0
 1622 010c 04B0     		add	sp, sp, #16
 1623              		@ sp needed
 1624 010e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1625              	.L453:
 1626 0112 236C     		ldr	r3, [r4, #64]
 1627 0114 002B     		cmp	r3, #0
 1628 0116 3FF47FAF 		beq	.L394
 1629 011a 1149     		ldr	r1, .L457+4
 1630 011c 40F24D60 		movw	r0, #1613
 1631 0120 FFF7FEFF 		bl	vAssertCalled
 1632 0124 78E7     		b	.L394
 1633              	.L452:
 1634 0126 0E49     		ldr	r1, .L457+4
 1635 0128 40F24960 		movw	r0, #1609
 1636 012c FFF7FEFF 		bl	vAssertCalled
 1637 0130 6FE7     		b	.L393
 1638              	.L454:
 1639 0132 0B49     		ldr	r1, .L457+4
 1640 0134 40F25260 		movw	r0, #1618
 1641 0138 FFF7FEFF 		bl	vAssertCalled
 1642 013c 73E7     		b	.L395
 1643              	.L456:
 1644 013e 04F12400 		add	r0, r4, #36
 1645 0142 FFF7FEFF 		bl	xTaskRemoveFromEventList
 1646 0146 0028     		cmp	r0, #0
 1647 0148 C2D0     		beq	.L402
 1648 014a 044B     		ldr	r3, .L457
 1649 014c 4FF08052 		mov	r2, #268435456
 1650 0150 1A60     		str	r2, [r3]
 1651              		.syntax unified
 1652              	@ 1655 "../src/queue.c" 1
 1653 0152 BFF34F8F 		dsb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 30


 1654              	@ 0 "" 2
 1655              	@ 1655 "../src/queue.c" 1
 1656 0156 BFF36F8F 		isb
 1657              	@ 0 "" 2
 1658              		.thumb
 1659              		.syntax unified
 1660 015a B9E7     		b	.L402
 1661              	.L458:
 1662              		.align	2
 1663              	.L457:
 1664 015c 04ED00E0 		.word	-536810236
 1665 0160 00000000 		.word	.LC0
 1666              		.size	xQueuePeek, .-xQueuePeek
 1667              		.section	.text.xQueueReceiveFromISR,"ax",%progbits
 1668              		.align	1
 1669              		.p2align 2,,3
 1670              		.global	xQueueReceiveFromISR
 1671              		.syntax unified
 1672              		.thumb
 1673              		.thumb_func
 1674              		.fpu fpv4-sp-d16
 1675              		.type	xQueueReceiveFromISR, %function
 1676              	xQueueReceiveFromISR:
 1677              		@ args = 0, pretend = 0, frame = 0
 1678              		@ frame_needed = 0, uses_anonymous_args = 0
 1679 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1680 0004 8946     		mov	r9, r1
 1681 0006 9046     		mov	r8, r2
 1682 0008 0546     		mov	r5, r0
 1683 000a 90B3     		cbz	r0, .L478
 1684              	.L460:
 1685 000c B9F1000F 		cmp	r9, #0
 1686 0010 26D0     		beq	.L479
 1687              	.L461:
 1688 0012 FFF7FEFF 		bl	vPortValidateInterruptPriority
 1689              		.syntax unified
 1690              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1691 0016 EFF31187 			mrs r7, basepri											
 1692 001a 4FF05003 		mov r3, #80												
 1693 001e 83F31188 		msr basepri, r3											
 1694 0022 BFF36F8F 		isb														
 1695 0026 BFF34F8F 		dsb														
 1696              	
 1697              	@ 0 "" 2
 1698              		.thumb
 1699              		.syntax unified
 1700 002a AC6B     		ldr	r4, [r5, #56]
 1701 002c 24B9     		cbnz	r4, .L480
 1702 002e 2046     		mov	r0, r4
 1703              	.L462:
 1704              		.syntax unified
 1705              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1706 0030 87F31188 			msr basepri, r7	
 1707              	@ 0 "" 2
 1708              		.thumb
 1709              		.syntax unified
 1710 0034 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 31


 1711              	.L480:
 1712 0038 95F84460 		ldrb	r6, [r5, #68]	@ zero_extendqisi2
 1713 003c 4946     		mov	r1, r9
 1714 003e 2846     		mov	r0, r5
 1715 0040 76B2     		sxtb	r6, r6
 1716 0042 FFF7FEFF 		bl	prvCopyDataFromQueue
 1717 0046 013C     		subs	r4, r4, #1
 1718 0048 731C     		adds	r3, r6, #1
 1719 004a AC63     		str	r4, [r5, #56]
 1720 004c 17D0     		beq	.L481
 1721 004e 0136     		adds	r6, r6, #1
 1722 0050 76B2     		sxtb	r6, r6
 1723 0052 85F84460 		strb	r6, [r5, #68]
 1724              	.L477:
 1725 0056 0120     		movs	r0, #1
 1726              		.syntax unified
 1727              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1728 0058 87F31188 			msr basepri, r7	
 1729              	@ 0 "" 2
 1730              		.thumb
 1731              		.syntax unified
 1732 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1733              	.L479:
 1734 0060 2B6C     		ldr	r3, [r5, #64]
 1735 0062 002B     		cmp	r3, #0
 1736 0064 D5D0     		beq	.L461
 1737 0066 0E49     		ldr	r1, .L482
 1738 0068 40F2DE60 		movw	r0, #1758
 1739 006c FFF7FEFF 		bl	vAssertCalled
 1740 0070 CFE7     		b	.L461
 1741              	.L478:
 1742 0072 0B49     		ldr	r1, .L482
 1743 0074 40F2DD60 		movw	r0, #1757
 1744 0078 FFF7FEFF 		bl	vAssertCalled
 1745 007c C6E7     		b	.L460
 1746              	.L481:
 1747 007e 2B69     		ldr	r3, [r5, #16]
 1748 0080 002B     		cmp	r3, #0
 1749 0082 E8D0     		beq	.L477
 1750 0084 05F11000 		add	r0, r5, #16
 1751 0088 FFF7FEFF 		bl	xTaskRemoveFromEventList
 1752 008c 0028     		cmp	r0, #0
 1753 008e E2D0     		beq	.L477
 1754 0090 B8F1000F 		cmp	r8, #0
 1755 0094 DFD0     		beq	.L477
 1756 0096 0120     		movs	r0, #1
 1757 0098 C8F80000 		str	r0, [r8]
 1758 009c C8E7     		b	.L462
 1759              	.L483:
 1760 009e 00BF     		.align	2
 1761              	.L482:
 1762 00a0 00000000 		.word	.LC0
 1763              		.size	xQueueReceiveFromISR, .-xQueueReceiveFromISR
 1764              		.section	.text.xQueuePeekFromISR,"ax",%progbits
 1765              		.align	1
 1766              		.p2align 2,,3
 1767              		.global	xQueuePeekFromISR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 32


 1768              		.syntax unified
 1769              		.thumb
 1770              		.thumb_func
 1771              		.fpu fpv4-sp-d16
 1772              		.type	xQueuePeekFromISR, %function
 1773              	xQueuePeekFromISR:
 1774              		@ args = 0, pretend = 0, frame = 0
 1775              		@ frame_needed = 0, uses_anonymous_args = 0
 1776 0000 70B5     		push	{r4, r5, r6, lr}
 1777 0002 0D46     		mov	r5, r1
 1778 0004 0446     		mov	r4, r0
 1779 0006 08B3     		cbz	r0, .L496
 1780              	.L485:
 1781 0008 236C     		ldr	r3, [r4, #64]
 1782 000a C5B1     		cbz	r5, .L497
 1783              	.L486:
 1784 000c C3B1     		cbz	r3, .L489
 1785              	.L488:
 1786 000e FFF7FEFF 		bl	vPortValidateInterruptPriority
 1787              		.syntax unified
 1788              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1789 0012 EFF31186 			mrs r6, basepri											
 1790 0016 4FF05003 		mov r3, #80												
 1791 001a 83F31188 		msr basepri, r3											
 1792 001e BFF36F8F 		isb														
 1793 0022 BFF34F8F 		dsb														
 1794              	
 1795              	@ 0 "" 2
 1796              		.thumb
 1797              		.syntax unified
 1798 0026 A06B     		ldr	r0, [r4, #56]
 1799 0028 30B1     		cbz	r0, .L490
 1800 002a 2946     		mov	r1, r5
 1801 002c 2046     		mov	r0, r4
 1802 002e E568     		ldr	r5, [r4, #12]
 1803 0030 FFF7FEFF 		bl	prvCopyDataFromQueue
 1804 0034 E560     		str	r5, [r4, #12]
 1805 0036 0120     		movs	r0, #1
 1806              	.L490:
 1807              		.syntax unified
 1808              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1809 0038 86F31188 			msr basepri, r6	
 1810              	@ 0 "" 2
 1811              		.thumb
 1812              		.syntax unified
 1813 003c 70BD     		pop	{r4, r5, r6, pc}
 1814              	.L497:
 1815 003e 5BB9     		cbnz	r3, .L487
 1816              	.L489:
 1817 0040 0949     		ldr	r1, .L498
 1818 0042 40F23B70 		movw	r0, #1851
 1819 0046 FFF7FEFF 		bl	vAssertCalled
 1820 004a E0E7     		b	.L488
 1821              	.L496:
 1822 004c 0649     		ldr	r1, .L498
 1823 004e 40F23970 		movw	r0, #1849
 1824 0052 FFF7FEFF 		bl	vAssertCalled
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 33


 1825 0056 D7E7     		b	.L485
 1826              	.L487:
 1827 0058 0349     		ldr	r1, .L498
 1828 005a 40F23A70 		movw	r0, #1850
 1829 005e FFF7FEFF 		bl	vAssertCalled
 1830 0062 236C     		ldr	r3, [r4, #64]
 1831 0064 D2E7     		b	.L486
 1832              	.L499:
 1833 0066 00BF     		.align	2
 1834              	.L498:
 1835 0068 00000000 		.word	.LC0
 1836              		.size	xQueuePeekFromISR, .-xQueuePeekFromISR
 1837              		.section	.text.uxQueueMessagesWaiting,"ax",%progbits
 1838              		.align	1
 1839              		.p2align 2,,3
 1840              		.global	uxQueueMessagesWaiting
 1841              		.syntax unified
 1842              		.thumb
 1843              		.thumb_func
 1844              		.fpu fpv4-sp-d16
 1845              		.type	uxQueueMessagesWaiting, %function
 1846              	uxQueueMessagesWaiting:
 1847              		@ args = 0, pretend = 0, frame = 0
 1848              		@ frame_needed = 0, uses_anonymous_args = 0
 1849 0000 10B5     		push	{r4, lr}
 1850 0002 0446     		mov	r4, r0
 1851 0004 30B1     		cbz	r0, .L503
 1852 0006 FFF7FEFF 		bl	vPortEnterCritical
 1853 000a A46B     		ldr	r4, [r4, #56]
 1854 000c FFF7FEFF 		bl	vPortExitCritical
 1855 0010 2046     		mov	r0, r4
 1856 0012 10BD     		pop	{r4, pc}
 1857              	.L503:
 1858 0014 0549     		ldr	r1, .L504
 1859 0016 40F26C70 		movw	r0, #1900
 1860 001a FFF7FEFF 		bl	vAssertCalled
 1861 001e FFF7FEFF 		bl	vPortEnterCritical
 1862 0022 A46B     		ldr	r4, [r4, #56]
 1863 0024 FFF7FEFF 		bl	vPortExitCritical
 1864 0028 2046     		mov	r0, r4
 1865 002a 10BD     		pop	{r4, pc}
 1866              	.L505:
 1867              		.align	2
 1868              	.L504:
 1869 002c 00000000 		.word	.LC0
 1870              		.size	uxQueueMessagesWaiting, .-uxQueueMessagesWaiting
 1871              		.section	.text.uxQueueSpacesAvailable,"ax",%progbits
 1872              		.align	1
 1873              		.p2align 2,,3
 1874              		.global	uxQueueSpacesAvailable
 1875              		.syntax unified
 1876              		.thumb
 1877              		.thumb_func
 1878              		.fpu fpv4-sp-d16
 1879              		.type	uxQueueSpacesAvailable, %function
 1880              	uxQueueSpacesAvailable:
 1881              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 34


 1882              		@ frame_needed = 0, uses_anonymous_args = 0
 1883 0000 38B5     		push	{r3, r4, r5, lr}
 1884 0002 0546     		mov	r5, r0
 1885 0004 40B1     		cbz	r0, .L509
 1886              	.L507:
 1887 0006 FFF7FEFF 		bl	vPortEnterCritical
 1888 000a A86B     		ldr	r0, [r5, #56]
 1889 000c EC6B     		ldr	r4, [r5, #60]
 1890 000e 241A     		subs	r4, r4, r0
 1891 0010 FFF7FEFF 		bl	vPortExitCritical
 1892 0014 2046     		mov	r0, r4
 1893 0016 38BD     		pop	{r3, r4, r5, pc}
 1894              	.L509:
 1895 0018 0249     		ldr	r1, .L510
 1896 001a 40F27E70 		movw	r0, #1918
 1897 001e FFF7FEFF 		bl	vAssertCalled
 1898 0022 F0E7     		b	.L507
 1899              	.L511:
 1900              		.align	2
 1901              	.L510:
 1902 0024 00000000 		.word	.LC0
 1903              		.size	uxQueueSpacesAvailable, .-uxQueueSpacesAvailable
 1904              		.section	.text.uxQueueMessagesWaitingFromISR,"ax",%progbits
 1905              		.align	1
 1906              		.p2align 2,,3
 1907              		.global	uxQueueMessagesWaitingFromISR
 1908              		.syntax unified
 1909              		.thumb
 1910              		.thumb_func
 1911              		.fpu fpv4-sp-d16
 1912              		.type	uxQueueMessagesWaitingFromISR, %function
 1913              	uxQueueMessagesWaitingFromISR:
 1914              		@ args = 0, pretend = 0, frame = 0
 1915              		@ frame_needed = 0, uses_anonymous_args = 0
 1916 0000 10B5     		push	{r4, lr}
 1917 0002 0446     		mov	r4, r0
 1918 0004 08B1     		cbz	r0, .L515
 1919 0006 A06B     		ldr	r0, [r4, #56]
 1920 0008 10BD     		pop	{r4, pc}
 1921              	.L515:
 1922 000a 0349     		ldr	r1, .L516
 1923 000c 40F28E70 		movw	r0, #1934
 1924 0010 FFF7FEFF 		bl	vAssertCalled
 1925 0014 A06B     		ldr	r0, [r4, #56]
 1926 0016 10BD     		pop	{r4, pc}
 1927              	.L517:
 1928              		.align	2
 1929              	.L516:
 1930 0018 00000000 		.word	.LC0
 1931              		.size	uxQueueMessagesWaitingFromISR, .-uxQueueMessagesWaitingFromISR
 1932              		.section	.text.vQueueDelete,"ax",%progbits
 1933              		.align	1
 1934              		.p2align 2,,3
 1935              		.global	vQueueDelete
 1936              		.syntax unified
 1937              		.thumb
 1938              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 35


 1939              		.fpu fpv4-sp-d16
 1940              		.type	vQueueDelete, %function
 1941              	vQueueDelete:
 1942              		@ args = 0, pretend = 0, frame = 0
 1943              		@ frame_needed = 0, uses_anonymous_args = 0
 1944 0000 10B5     		push	{r4, lr}
 1945 0002 0446     		mov	r4, r0
 1946 0004 90B1     		cbz	r0, .L525
 1947              	.L519:
 1948 0006 0C48     		ldr	r0, .L527
 1949 0008 0022     		movs	r2, #0
 1950 000a 0346     		mov	r3, r0
 1951              	.L522:
 1952 000c 5968     		ldr	r1, [r3, #4]
 1953 000e 8C42     		cmp	r4, r1
 1954 0010 03F10803 		add	r3, r3, #8
 1955 0014 03D0     		beq	.L526
 1956 0016 0132     		adds	r2, r2, #1
 1957 0018 082A     		cmp	r2, #8
 1958 001a F7D1     		bne	.L522
 1959 001c 10BD     		pop	{r4, pc}
 1960              	.L526:
 1961 001e 00EBC201 		add	r1, r0, r2, lsl #3
 1962 0022 0023     		movs	r3, #0
 1963 0024 4B60     		str	r3, [r1, #4]
 1964 0026 40F83230 		str	r3, [r0, r2, lsl #3]
 1965 002a 10BD     		pop	{r4, pc}
 1966              	.L525:
 1967 002c 0349     		ldr	r1, .L527+4
 1968 002e 40F29A70 		movw	r0, #1946
 1969 0032 FFF7FEFF 		bl	vAssertCalled
 1970 0036 E6E7     		b	.L519
 1971              	.L528:
 1972              		.align	2
 1973              	.L527:
 1974 0038 00000000 		.word	xQueueRegistry
 1975 003c 00000000 		.word	.LC0
 1976              		.size	vQueueDelete, .-vQueueDelete
 1977              		.section	.text.uxQueueGetQueueNumber,"ax",%progbits
 1978              		.align	1
 1979              		.p2align 2,,3
 1980              		.global	uxQueueGetQueueNumber
 1981              		.syntax unified
 1982              		.thumb
 1983              		.thumb_func
 1984              		.fpu fpv4-sp-d16
 1985              		.type	uxQueueGetQueueNumber, %function
 1986              	uxQueueGetQueueNumber:
 1987              		@ args = 0, pretend = 0, frame = 0
 1988              		@ frame_needed = 0, uses_anonymous_args = 0
 1989              		@ link register save eliminated.
 1990 0000 C06C     		ldr	r0, [r0, #76]
 1991 0002 7047     		bx	lr
 1992              		.size	uxQueueGetQueueNumber, .-uxQueueGetQueueNumber
 1993              		.section	.text.vQueueSetQueueNumber,"ax",%progbits
 1994              		.align	1
 1995              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 36


 1996              		.global	vQueueSetQueueNumber
 1997              		.syntax unified
 1998              		.thumb
 1999              		.thumb_func
 2000              		.fpu fpv4-sp-d16
 2001              		.type	vQueueSetQueueNumber, %function
 2002              	vQueueSetQueueNumber:
 2003              		@ args = 0, pretend = 0, frame = 0
 2004              		@ frame_needed = 0, uses_anonymous_args = 0
 2005              		@ link register save eliminated.
 2006 0000 C164     		str	r1, [r0, #76]
 2007 0002 7047     		bx	lr
 2008              		.size	vQueueSetQueueNumber, .-vQueueSetQueueNumber
 2009              		.section	.text.ucQueueGetQueueType,"ax",%progbits
 2010              		.align	1
 2011              		.p2align 2,,3
 2012              		.global	ucQueueGetQueueType
 2013              		.syntax unified
 2014              		.thumb
 2015              		.thumb_func
 2016              		.fpu fpv4-sp-d16
 2017              		.type	ucQueueGetQueueType, %function
 2018              	ucQueueGetQueueType:
 2019              		@ args = 0, pretend = 0, frame = 0
 2020              		@ frame_needed = 0, uses_anonymous_args = 0
 2021              		@ link register save eliminated.
 2022 0000 90F85000 		ldrb	r0, [r0, #80]	@ zero_extendqisi2
 2023 0004 7047     		bx	lr
 2024              		.size	ucQueueGetQueueType, .-ucQueueGetQueueType
 2025 0006 00BF     		.section	.text.xQueueIsQueueEmptyFromISR,"ax",%progbits
 2026              		.align	1
 2027              		.p2align 2,,3
 2028              		.global	xQueueIsQueueEmptyFromISR
 2029              		.syntax unified
 2030              		.thumb
 2031              		.thumb_func
 2032              		.fpu fpv4-sp-d16
 2033              		.type	xQueueIsQueueEmptyFromISR, %function
 2034              	xQueueIsQueueEmptyFromISR:
 2035              		@ args = 0, pretend = 0, frame = 0
 2036              		@ frame_needed = 0, uses_anonymous_args = 0
 2037 0000 10B5     		push	{r4, lr}
 2038 0002 0446     		mov	r4, r0
 2039 0004 20B1     		cbz	r0, .L535
 2040 0006 A06B     		ldr	r0, [r4, #56]
 2041 0008 B0FA80F0 		clz	r0, r0
 2042 000c 4009     		lsrs	r0, r0, #5
 2043 000e 10BD     		pop	{r4, pc}
 2044              	.L535:
 2045 0010 0449     		ldr	r1, .L536
 2046 0012 40F6EB00 		movw	r0, #2283
 2047 0016 FFF7FEFF 		bl	vAssertCalled
 2048 001a A06B     		ldr	r0, [r4, #56]
 2049 001c B0FA80F0 		clz	r0, r0
 2050 0020 4009     		lsrs	r0, r0, #5
 2051 0022 10BD     		pop	{r4, pc}
 2052              	.L537:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 37


 2053              		.align	2
 2054              	.L536:
 2055 0024 00000000 		.word	.LC0
 2056              		.size	xQueueIsQueueEmptyFromISR, .-xQueueIsQueueEmptyFromISR
 2057              		.section	.text.xQueueIsQueueFullFromISR,"ax",%progbits
 2058              		.align	1
 2059              		.p2align 2,,3
 2060              		.global	xQueueIsQueueFullFromISR
 2061              		.syntax unified
 2062              		.thumb
 2063              		.thumb_func
 2064              		.fpu fpv4-sp-d16
 2065              		.type	xQueueIsQueueFullFromISR, %function
 2066              	xQueueIsQueueFullFromISR:
 2067              		@ args = 0, pretend = 0, frame = 0
 2068              		@ frame_needed = 0, uses_anonymous_args = 0
 2069 0000 10B5     		push	{r4, lr}
 2070 0002 0446     		mov	r4, r0
 2071 0004 30B1     		cbz	r0, .L541
 2072              	.L539:
 2073 0006 A36B     		ldr	r3, [r4, #56]
 2074 0008 E06B     		ldr	r0, [r4, #60]
 2075 000a C01A     		subs	r0, r0, r3
 2076 000c B0FA80F0 		clz	r0, r0
 2077 0010 4009     		lsrs	r0, r0, #5
 2078 0012 10BD     		pop	{r4, pc}
 2079              	.L541:
 2080 0014 0249     		ldr	r1, .L542
 2081 0016 40F61210 		movw	r0, #2322
 2082 001a FFF7FEFF 		bl	vAssertCalled
 2083 001e F2E7     		b	.L539
 2084              	.L543:
 2085              		.align	2
 2086              	.L542:
 2087 0020 00000000 		.word	.LC0
 2088              		.size	xQueueIsQueueFullFromISR, .-xQueueIsQueueFullFromISR
 2089              		.section	.text.vQueueAddToRegistry,"ax",%progbits
 2090              		.align	1
 2091              		.p2align 2,,3
 2092              		.global	vQueueAddToRegistry
 2093              		.syntax unified
 2094              		.thumb
 2095              		.thumb_func
 2096              		.fpu fpv4-sp-d16
 2097              		.type	vQueueAddToRegistry, %function
 2098              	vQueueAddToRegistry:
 2099              		@ args = 0, pretend = 0, frame = 0
 2100              		@ frame_needed = 0, uses_anonymous_args = 0
 2101              		@ link register save eliminated.
 2102 0000 30B4     		push	{r4, r5}
 2103 0002 084A     		ldr	r2, .L551
 2104 0004 0023     		movs	r3, #0
 2105              	.L547:
 2106 0006 52F83340 		ldr	r4, [r2, r3, lsl #3]
 2107 000a 02EBC305 		add	r5, r2, r3, lsl #3
 2108 000e 24B1     		cbz	r4, .L550
 2109 0010 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 38


 2110 0012 082B     		cmp	r3, #8
 2111 0014 F7D1     		bne	.L547
 2112 0016 30BC     		pop	{r4, r5}
 2113 0018 7047     		bx	lr
 2114              	.L550:
 2115 001a 6860     		str	r0, [r5, #4]
 2116 001c 42F83310 		str	r1, [r2, r3, lsl #3]
 2117 0020 30BC     		pop	{r4, r5}
 2118 0022 7047     		bx	lr
 2119              	.L552:
 2120              		.align	2
 2121              	.L551:
 2122 0024 00000000 		.word	xQueueRegistry
 2123              		.size	vQueueAddToRegistry, .-vQueueAddToRegistry
 2124              		.section	.text.pcQueueGetName,"ax",%progbits
 2125              		.align	1
 2126              		.p2align 2,,3
 2127              		.global	pcQueueGetName
 2128              		.syntax unified
 2129              		.thumb
 2130              		.thumb_func
 2131              		.fpu fpv4-sp-d16
 2132              		.type	pcQueueGetName, %function
 2133              	pcQueueGetName:
 2134              		@ args = 0, pretend = 0, frame = 0
 2135              		@ frame_needed = 0, uses_anonymous_args = 0
 2136              		@ link register save eliminated.
 2137 0000 10B4     		push	{r4}
 2138 0002 0A4C     		ldr	r4, .L560
 2139 0004 0022     		movs	r2, #0
 2140 0006 2346     		mov	r3, r4
 2141              	.L556:
 2142 0008 5968     		ldr	r1, [r3, #4]
 2143 000a 8142     		cmp	r1, r0
 2144 000c 03F10803 		add	r3, r3, #8
 2145 0010 06D0     		beq	.L559
 2146 0012 0132     		adds	r2, r2, #1
 2147 0014 082A     		cmp	r2, #8
 2148 0016 F7D1     		bne	.L556
 2149 0018 0020     		movs	r0, #0
 2150 001a 5DF8044B 		ldr	r4, [sp], #4
 2151 001e 7047     		bx	lr
 2152              	.L559:
 2153 0020 54F83200 		ldr	r0, [r4, r2, lsl #3]
 2154 0024 5DF8044B 		ldr	r4, [sp], #4
 2155 0028 7047     		bx	lr
 2156              	.L561:
 2157 002a 00BF     		.align	2
 2158              	.L560:
 2159 002c 00000000 		.word	xQueueRegistry
 2160              		.size	pcQueueGetName, .-pcQueueGetName
 2161              		.section	.text.vQueueUnregisterQueue,"ax",%progbits
 2162              		.align	1
 2163              		.p2align 2,,3
 2164              		.global	vQueueUnregisterQueue
 2165              		.syntax unified
 2166              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 39


 2167              		.thumb_func
 2168              		.fpu fpv4-sp-d16
 2169              		.type	vQueueUnregisterQueue, %function
 2170              	vQueueUnregisterQueue:
 2171              		@ args = 0, pretend = 0, frame = 0
 2172              		@ frame_needed = 0, uses_anonymous_args = 0
 2173              		@ link register save eliminated.
 2174 0000 10B4     		push	{r4}
 2175 0002 0B4C     		ldr	r4, .L569
 2176 0004 0022     		movs	r2, #0
 2177 0006 2346     		mov	r3, r4
 2178              	.L565:
 2179 0008 5968     		ldr	r1, [r3, #4]
 2180 000a 8142     		cmp	r1, r0
 2181 000c 03F10803 		add	r3, r3, #8
 2182 0010 05D0     		beq	.L568
 2183 0012 0132     		adds	r2, r2, #1
 2184 0014 082A     		cmp	r2, #8
 2185 0016 F7D1     		bne	.L565
 2186 0018 5DF8044B 		ldr	r4, [sp], #4
 2187 001c 7047     		bx	lr
 2188              	.L568:
 2189 001e 04EBC201 		add	r1, r4, r2, lsl #3
 2190 0022 0023     		movs	r3, #0
 2191 0024 44F83230 		str	r3, [r4, r2, lsl #3]
 2192 0028 4B60     		str	r3, [r1, #4]
 2193 002a 5DF8044B 		ldr	r4, [sp], #4
 2194 002e 7047     		bx	lr
 2195              	.L570:
 2196              		.align	2
 2197              	.L569:
 2198 0030 00000000 		.word	xQueueRegistry
 2199              		.size	vQueueUnregisterQueue, .-vQueueUnregisterQueue
 2200              		.section	.text.xQueueAddToSet,"ax",%progbits
 2201              		.align	1
 2202              		.p2align 2,,3
 2203              		.global	xQueueAddToSet
 2204              		.syntax unified
 2205              		.thumb
 2206              		.thumb_func
 2207              		.fpu fpv4-sp-d16
 2208              		.type	xQueueAddToSet, %function
 2209              	xQueueAddToSet:
 2210              		@ args = 0, pretend = 0, frame = 0
 2211              		@ frame_needed = 0, uses_anonymous_args = 0
 2212 0000 38B5     		push	{r3, r4, r5, lr}
 2213 0002 0446     		mov	r4, r0
 2214 0004 0D46     		mov	r5, r1
 2215 0006 FFF7FEFF 		bl	vPortEnterCritical
 2216 000a A36C     		ldr	r3, [r4, #72]
 2217 000c 23B1     		cbz	r3, .L576
 2218 000e 0024     		movs	r4, #0
 2219 0010 FFF7FEFF 		bl	vPortExitCritical
 2220 0014 2046     		mov	r0, r4
 2221 0016 38BD     		pop	{r3, r4, r5, pc}
 2222              	.L576:
 2223 0018 A26B     		ldr	r2, [r4, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 40


 2224 001a 2AB9     		cbnz	r2, .L574
 2225 001c A564     		str	r5, [r4, #72]
 2226 001e 0124     		movs	r4, #1
 2227 0020 FFF7FEFF 		bl	vPortExitCritical
 2228 0024 2046     		mov	r0, r4
 2229 0026 38BD     		pop	{r3, r4, r5, pc}
 2230              	.L574:
 2231 0028 1C46     		mov	r4, r3
 2232 002a FFF7FEFF 		bl	vPortExitCritical
 2233 002e 2046     		mov	r0, r4
 2234 0030 38BD     		pop	{r3, r4, r5, pc}
 2235              		.size	xQueueAddToSet, .-xQueueAddToSet
 2236 0032 00BF     		.section	.text.xQueueRemoveFromSet,"ax",%progbits
 2237              		.align	1
 2238              		.p2align 2,,3
 2239              		.global	xQueueRemoveFromSet
 2240              		.syntax unified
 2241              		.thumb
 2242              		.thumb_func
 2243              		.fpu fpv4-sp-d16
 2244              		.type	xQueueRemoveFromSet, %function
 2245              	xQueueRemoveFromSet:
 2246              		@ args = 0, pretend = 0, frame = 0
 2247              		@ frame_needed = 0, uses_anonymous_args = 0
 2248 0000 38B5     		push	{r3, r4, r5, lr}
 2249 0002 836C     		ldr	r3, [r0, #72]
 2250 0004 8B42     		cmp	r3, r1
 2251 0006 01D0     		beq	.L582
 2252              	.L580:
 2253 0008 0020     		movs	r0, #0
 2254 000a 38BD     		pop	{r3, r4, r5, pc}
 2255              	.L582:
 2256 000c 856B     		ldr	r5, [r0, #56]
 2257 000e 002D     		cmp	r5, #0
 2258 0010 FAD1     		bne	.L580
 2259 0012 0446     		mov	r4, r0
 2260 0014 FFF7FEFF 		bl	vPortEnterCritical
 2261 0018 A564     		str	r5, [r4, #72]
 2262 001a FFF7FEFF 		bl	vPortExitCritical
 2263 001e 0120     		movs	r0, #1
 2264 0020 38BD     		pop	{r3, r4, r5, pc}
 2265              		.size	xQueueRemoveFromSet, .-xQueueRemoveFromSet
 2266 0022 00BF     		.section	.text.xQueueSelectFromSet,"ax",%progbits
 2267              		.align	1
 2268              		.p2align 2,,3
 2269              		.global	xQueueSelectFromSet
 2270              		.syntax unified
 2271              		.thumb
 2272              		.thumb_func
 2273              		.fpu fpv4-sp-d16
 2274              		.type	xQueueSelectFromSet, %function
 2275              	xQueueSelectFromSet:
 2276              		@ args = 0, pretend = 0, frame = 8
 2277              		@ frame_needed = 0, uses_anonymous_args = 0
 2278 0000 00B5     		push	{lr}
 2279 0002 83B0     		sub	sp, sp, #12
 2280 0004 02AB     		add	r3, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchozpfM.s 			page 41


 2281 0006 0022     		movs	r2, #0
 2282 0008 43F8042D 		str	r2, [r3, #-4]!
 2283 000c 0A46     		mov	r2, r1
 2284 000e 1946     		mov	r1, r3
 2285 0010 FFF7FEFF 		bl	xQueueReceive
 2286 0014 0198     		ldr	r0, [sp, #4]
 2287 0016 03B0     		add	sp, sp, #12
 2288              		@ sp needed
 2289 0018 5DF804FB 		ldr	pc, [sp], #4
 2290              		.size	xQueueSelectFromSet, .-xQueueSelectFromSet
 2291              		.section	.text.xQueueSelectFromSetFromISR,"ax",%progbits
 2292              		.align	1
 2293              		.p2align 2,,3
 2294              		.global	xQueueSelectFromSetFromISR
 2295              		.syntax unified
 2296              		.thumb
 2297              		.thumb_func
 2298              		.fpu fpv4-sp-d16
 2299              		.type	xQueueSelectFromSetFromISR, %function
 2300              	xQueueSelectFromSetFromISR:
 2301              		@ args = 0, pretend = 0, frame = 8
 2302              		@ frame_needed = 0, uses_anonymous_args = 0
 2303 0000 00B5     		push	{lr}
 2304 0002 83B0     		sub	sp, sp, #12
 2305 0004 02A9     		add	r1, sp, #8
 2306 0006 0022     		movs	r2, #0
 2307 0008 41F8042D 		str	r2, [r1, #-4]!
 2308 000c FFF7FEFF 		bl	xQueueReceiveFromISR
 2309 0010 0198     		ldr	r0, [sp, #4]
 2310 0012 03B0     		add	sp, sp, #12
 2311              		@ sp needed
 2312 0014 5DF804FB 		ldr	pc, [sp], #4
 2313              		.size	xQueueSelectFromSetFromISR, .-xQueueSelectFromSetFromISR
 2314              		.comm	xQueueRegistry,64,4
 2315              		.section	.rodata.prvNotifyQueueSetContainer.str1.4,"aMS",%progbits,1
 2316              		.align	2
 2317              	.LC0:
 2318 0000 2E2E2F73 		.ascii	"../src/queue.c\000"
 2318      72632F71 
 2318      75657565 
 2318      2E6300
 2319              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
