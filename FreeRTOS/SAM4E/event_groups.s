ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 1


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
  13              		.file	"event_groups.c"
  14              		.text
  15              		.section	.text.xEventGroupCreateStatic,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	xEventGroupCreateStatic
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	xEventGroupCreateStatic, %function
  24              	xEventGroupCreateStatic:
  25              		@ args = 0, pretend = 0, frame = 8
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 82B0     		sub	sp, sp, #8
  30 0006 88B1     		cbz	r0, .L12
  31 0008 1C23     		movs	r3, #28
  32 000a 0193     		str	r3, [sp, #4]
  33 000c 019B     		ldr	r3, [sp, #4]
  34 000e 1C2B     		cmp	r3, #28
  35 0010 03D0     		beq	.L5
  36 0012 0D49     		ldr	r1, .L13
  37 0014 6B20     		movs	r0, #107
  38 0016 FFF7FEFF 		bl	vAssertCalled
  39              	.L5:
  40 001a 2046     		mov	r0, r4
  41 001c 0023     		movs	r3, #0
  42 001e 40F8043B 		str	r3, [r0], #4
  43 0022 FFF7FEFF 		bl	vListInitialise
  44              	.L9:
  45 0026 2046     		mov	r0, r4
  46 0028 02B0     		add	sp, sp, #8
  47              		@ sp needed
  48 002a 10BD     		pop	{r4, pc}
  49              	.L12:
  50 002c 0649     		ldr	r1, .L13
  51 002e 6320     		movs	r0, #99
  52 0030 FFF7FEFF 		bl	vAssertCalled
  53 0034 1C23     		movs	r3, #28
  54 0036 0193     		str	r3, [sp, #4]
  55 0038 019B     		ldr	r3, [sp, #4]
  56 003a 1C2B     		cmp	r3, #28
  57 003c F3D0     		beq	.L9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 2


  58 003e 0249     		ldr	r1, .L13
  59 0040 6B20     		movs	r0, #107
  60 0042 FFF7FEFF 		bl	vAssertCalled
  61 0046 EEE7     		b	.L9
  62              	.L14:
  63              		.align	2
  64              	.L13:
  65 0048 00000000 		.word	.LC0
  66              		.size	xEventGroupCreateStatic, .-xEventGroupCreateStatic
  67              		.section	.text.xEventGroupWaitBits,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	xEventGroupWaitBits
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	xEventGroupWaitBits, %function
  76              	xEventGroupWaitBits:
  77              		@ args = 4, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  80 0004 089F     		ldr	r7, [sp, #32]
  81 0006 0D46     		mov	r5, r1
  82 0008 9146     		mov	r9, r2
  83 000a 9846     		mov	r8, r3
  84 000c 0646     		mov	r6, r0
  85 000e 0028     		cmp	r0, #0
  86 0010 6DD0     		beq	.L44
  87              	.L16:
  88 0012 15F07F4F 		tst	r5, #-16777216
  89 0016 4AD1     		bne	.L45
  90 0018 05B3     		cbz	r5, .L46
  91              	.L18:
  92 001a FFF7FEFF 		bl	xTaskGetSchedulerState
  93 001e 08B9     		cbnz	r0, .L19
  94 0020 002F     		cmp	r7, #0
  95 0022 4AD1     		bne	.L47
  96              	.L19:
  97 0024 FFF7FEFF 		bl	vTaskSuspendAll
  98 0028 3468     		ldr	r4, [r6]
  99 002a B8F1000F 		cmp	r8, #0
 100 002e 0CD1     		bne	.L20
 101 0030 2542     		tst	r5, r4
 102 0032 0DD0     		beq	.L22
 103              	.L21:
 104 0034 B9F1000F 		cmp	r9, #0
 105 0038 0BD0     		beq	.L25
 106 003a 24EA0505 		bic	r5, r4, r5
 107 003e 3560     		str	r5, [r6]
 108 0040 FFF7FEFF 		bl	xTaskResumeAll
 109 0044 2046     		mov	r0, r4
 110 0046 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 111              	.L20:
 112 004a 35EA0403 		bics	r3, r5, r4
 113 004e F1D0     		beq	.L21
 114              	.L22:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 3


 115 0050 57B9     		cbnz	r7, .L48
 116              	.L25:
 117 0052 FFF7FEFF 		bl	xTaskResumeAll
 118 0056 2046     		mov	r0, r4
 119 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 120              	.L46:
 121 005c 2949     		ldr	r1, .L51
 122 005e 4FF49A70 		mov	r0, #308
 123 0062 FFF7FEFF 		bl	vAssertCalled
 124 0066 D8E7     		b	.L18
 125              	.L48:
 126 0068 B9F1000F 		cmp	r9, #0
 127 006c 0CBF     		ite	eq
 128 006e 0021     		moveq	r1, #0
 129 0070 4FF08071 		movne	r1, #16777216
 130 0074 B8F1000F 		cmp	r8, #0
 131 0078 25D1     		bne	.L49
 132              	.L27:
 133 007a 3A46     		mov	r2, r7
 134 007c 2943     		orrs	r1, r1, r5
 135 007e 301D     		adds	r0, r6, #4
 136 0080 FFF7FEFF 		bl	vTaskPlaceOnUnorderedEventList
 137 0084 FFF7FEFF 		bl	xTaskResumeAll
 138 0088 38B9     		cbnz	r0, .L28
 139 008a 1F4B     		ldr	r3, .L51+4
 140 008c 4FF08052 		mov	r2, #268435456
 141 0090 1A60     		str	r2, [r3]
 142              		.syntax unified
 143              	@ 389 "../src/event_groups.c" 1
 144 0092 BFF34F8F 		dsb
 145              	@ 0 "" 2
 146              	@ 389 "../src/event_groups.c" 1
 147 0096 BFF36F8F 		isb
 148              	@ 0 "" 2
 149              		.thumb
 150              		.syntax unified
 151              	.L28:
 152 009a FFF7FEFF 		bl	uxTaskResetEventItemValue
 153 009e 8301     		lsls	r3, r0, #6
 154 00a0 0446     		mov	r4, r0
 155 00a2 13D5     		bpl	.L50
 156              	.L29:
 157 00a4 24F07F44 		bic	r4, r4, #-16777216
 158 00a8 2046     		mov	r0, r4
 159 00aa BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 160              	.L45:
 161 00ae 1549     		ldr	r1, .L51
 162 00b0 40F23310 		movw	r0, #307
 163 00b4 FFF7FEFF 		bl	vAssertCalled
 164 00b8 AFE7     		b	.L18
 165              	.L47:
 166 00ba 1249     		ldr	r1, .L51
 167 00bc 40F23710 		movw	r0, #311
 168 00c0 FFF7FEFF 		bl	vAssertCalled
 169 00c4 AEE7     		b	.L19
 170              	.L49:
 171 00c6 41F08061 		orr	r1, r1, #67108864
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 4


 172 00ca D6E7     		b	.L27
 173              	.L50:
 174 00cc FFF7FEFF 		bl	vPortEnterCritical
 175 00d0 3468     		ldr	r4, [r6]
 176 00d2 B8F1000F 		cmp	r8, #0
 177 00d6 10D1     		bne	.L30
 178 00d8 2542     		tst	r5, r4
 179 00da 05D0     		beq	.L32
 180              	.L31:
 181 00dc B9F1000F 		cmp	r9, #0
 182 00e0 02D0     		beq	.L32
 183 00e2 24EA0505 		bic	r5, r4, r5
 184 00e6 3560     		str	r5, [r6]
 185              	.L32:
 186 00e8 FFF7FEFF 		bl	vPortExitCritical
 187 00ec DAE7     		b	.L29
 188              	.L44:
 189 00ee 0549     		ldr	r1, .L51
 190 00f0 4FF49970 		mov	r0, #306
 191 00f4 FFF7FEFF 		bl	vAssertCalled
 192 00f8 8BE7     		b	.L16
 193              	.L30:
 194 00fa 35EA0403 		bics	r3, r5, r4
 195 00fe F3D1     		bne	.L32
 196 0100 ECE7     		b	.L31
 197              	.L52:
 198 0102 00BF     		.align	2
 199              	.L51:
 200 0104 00000000 		.word	.LC0
 201 0108 04ED00E0 		.word	-536810236
 202              		.size	xEventGroupWaitBits, .-xEventGroupWaitBits
 203              		.section	.text.xEventGroupClearBits,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	xEventGroupClearBits
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu fpv4-sp-d16
 211              		.type	xEventGroupClearBits, %function
 212              	xEventGroupClearBits:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215 0000 70B5     		push	{r4, r5, r6, lr}
 216 0002 0C46     		mov	r4, r1
 217 0004 0546     		mov	r5, r0
 218 0006 88B1     		cbz	r0, .L60
 219              	.L54:
 220 0008 14F07F4F 		tst	r4, #-16777216
 221 000c 04D0     		beq	.L55
 222 000e 0A49     		ldr	r1, .L61
 223 0010 40F2C710 		movw	r0, #455
 224 0014 FFF7FEFF 		bl	vAssertCalled
 225              	.L55:
 226 0018 FFF7FEFF 		bl	vPortEnterCritical
 227 001c 2E68     		ldr	r6, [r5]
 228 001e 26EA0404 		bic	r4, r6, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 5


 229 0022 2C60     		str	r4, [r5]
 230 0024 FFF7FEFF 		bl	vPortExitCritical
 231 0028 3046     		mov	r0, r6
 232 002a 70BD     		pop	{r4, r5, r6, pc}
 233              	.L60:
 234 002c 0249     		ldr	r1, .L61
 235 002e 4FF4E370 		mov	r0, #454
 236 0032 FFF7FEFF 		bl	vAssertCalled
 237 0036 E7E7     		b	.L54
 238              	.L62:
 239              		.align	2
 240              	.L61:
 241 0038 00000000 		.word	.LC0
 242              		.size	xEventGroupClearBits, .-xEventGroupClearBits
 243              		.section	.text.xEventGroupGetBitsFromISR,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	xEventGroupGetBitsFromISR
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	xEventGroupGetBitsFromISR, %function
 252              	xEventGroupGetBitsFromISR:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256              		.syntax unified
 257              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 258 0000 EFF31183 			mrs r3, basepri											
 259 0004 4FF05002 		mov r2, #80												
 260 0008 82F31188 		msr basepri, r2											
 261 000c BFF36F8F 		isb														
 262 0010 BFF34F8F 		dsb														
 263              	
 264              	@ 0 "" 2
 265              		.thumb
 266              		.syntax unified
 267 0014 0068     		ldr	r0, [r0]
 268              		.syntax unified
 269              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 270 0016 83F31188 			msr basepri, r3	
 271              	@ 0 "" 2
 272              		.thumb
 273              		.syntax unified
 274 001a 7047     		bx	lr
 275              		.size	xEventGroupGetBitsFromISR, .-xEventGroupGetBitsFromISR
 276              		.section	.text.xEventGroupSetBits,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	xEventGroupSetBits
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	xEventGroupSetBits, %function
 285              	xEventGroupSetBits:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 289 0004 0C46     		mov	r4, r1
 290 0006 0646     		mov	r6, r0
 291 0008 B0B3     		cbz	r0, .L83
 292              	.L65:
 293 000a 14F07F4F 		tst	r4, #-16777216
 294 000e 2DD1     		bne	.L84
 295              	.L66:
 296 0010 FFF7FEFF 		bl	vTaskSuspendAll
 297 0014 3168     		ldr	r1, [r6]
 298 0016 3069     		ldr	r0, [r6, #16]
 299 0018 06F10C08 		add	r8, r6, #12
 300 001c 2143     		orrs	r1, r1, r4
 301 001e 8045     		cmp	r8, r0
 302 0020 3160     		str	r1, [r6]
 303 0022 2FD0     		beq	.L73
 304 0024 0027     		movs	r7, #0
 305 0026 0BE0     		b	.L72
 306              	.L86:
 307 0028 3DB1     		cbz	r5, .L70
 308              	.L69:
 309 002a DB01     		lsls	r3, r3, #7
 310 002c 41F00071 		orr	r1, r1, #33554432
 311 0030 48BF     		it	mi
 312 0032 1743     		orrmi	r7, r7, r2
 313 0034 FFF7FEFF 		bl	vTaskRemoveFromUnorderedEventList
 314 0038 3168     		ldr	r1, [r6]
 315              	.L70:
 316 003a A045     		cmp	r8, r4
 317 003c 2046     		mov	r0, r4
 318 003e 0DD0     		beq	.L85
 319              	.L72:
 320 0040 D0E90034 		ldrd	r3, r4, [r0]
 321 0044 23F07F42 		bic	r2, r3, #-16777216
 322 0048 13F0806F 		tst	r3, #67108864
 323 004c 02EA0105 		and	r5, r2, r1
 324 0050 EAD0     		beq	.L86
 325 0052 AA42     		cmp	r2, r5
 326 0054 E9D0     		beq	.L69
 327 0056 A045     		cmp	r8, r4
 328 0058 2046     		mov	r0, r4
 329 005a F1D1     		bne	.L72
 330              	.L85:
 331 005c FF43     		mvns	r7, r7
 332              	.L67:
 333 005e 3940     		ands	r1, r1, r7
 334 0060 3160     		str	r1, [r6]
 335 0062 FFF7FEFF 		bl	xTaskResumeAll
 336 0066 3068     		ldr	r0, [r6]
 337 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 338              	.L84:
 339 006c 0749     		ldr	r1, .L87
 340 006e 40F20520 		movw	r0, #517
 341 0072 FFF7FEFF 		bl	vAssertCalled
 342 0076 CBE7     		b	.L66
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 7


 343              	.L83:
 344 0078 0449     		ldr	r1, .L87
 345 007a 4FF40170 		mov	r0, #516
 346 007e FFF7FEFF 		bl	vAssertCalled
 347 0082 C2E7     		b	.L65
 348              	.L73:
 349 0084 4FF0FF37 		mov	r7, #-1
 350 0088 E9E7     		b	.L67
 351              	.L88:
 352 008a 00BF     		.align	2
 353              	.L87:
 354 008c 00000000 		.word	.LC0
 355              		.size	xEventGroupSetBits, .-xEventGroupSetBits
 356              		.section	.text.xEventGroupSync,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	xEventGroupSync
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu fpv4-sp-d16
 364              		.type	xEventGroupSync, %function
 365              	xEventGroupSync:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368 0000 12F07F4F 		tst	r2, #-16777216
 369 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 370 0008 1646     		mov	r6, r2
 371 000a 0546     		mov	r5, r0
 372 000c 0F46     		mov	r7, r1
 373 000e 9846     		mov	r8, r3
 374 0010 59D1     		bne	.L111
 375 0012 002A     		cmp	r2, #0
 376 0014 3FD0     		beq	.L112
 377 0016 FFF7FEFF 		bl	xTaskGetSchedulerState
 378 001a 98B9     		cbnz	r0, .L96
 379              	.L115:
 380 001c B8F1000F 		cmp	r8, #0
 381 0020 5DD1     		bne	.L95
 382 0022 FFF7FEFF 		bl	vTaskSuspendAll
 383 0026 2C68     		ldr	r4, [r5]
 384 0028 3946     		mov	r1, r7
 385 002a 3C43     		orrs	r4, r4, r7
 386 002c 2846     		mov	r0, r5
 387 002e FFF7FEFF 		bl	xEventGroupSetBits
 388 0032 36EA0403 		bics	r3, r6, r4
 389 0036 3DD0     		beq	.L98
 390              	.L106:
 391 0038 2C68     		ldr	r4, [r5]
 392 003a FFF7FEFF 		bl	xTaskResumeAll
 393 003e 2046     		mov	r0, r4
 394 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 395              	.L96:
 396 0044 FFF7FEFF 		bl	vTaskSuspendAll
 397 0048 2C68     		ldr	r4, [r5]
 398 004a 3946     		mov	r1, r7
 399 004c 3C43     		orrs	r4, r4, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 8


 400 004e 2846     		mov	r0, r5
 401 0050 FFF7FEFF 		bl	xEventGroupSetBits
 402 0054 36EA0403 		bics	r3, r6, r4
 403 0058 2CD0     		beq	.L98
 404 005a B8F1000F 		cmp	r8, #0
 405 005e EBD0     		beq	.L106
 406              	.L103:
 407 0060 4246     		mov	r2, r8
 408 0062 46F0A061 		orr	r1, r6, #83886080
 409 0066 281D     		adds	r0, r5, #4
 410 0068 FFF7FEFF 		bl	vTaskPlaceOnUnorderedEventList
 411 006c FFF7FEFF 		bl	xTaskResumeAll
 412 0070 38B9     		cbnz	r0, .L100
 413 0072 294B     		ldr	r3, .L116
 414 0074 4FF08052 		mov	r2, #268435456
 415 0078 1A60     		str	r2, [r3]
 416              		.syntax unified
 417              	@ 241 "../src/event_groups.c" 1
 418 007a BFF34F8F 		dsb
 419              	@ 0 "" 2
 420              	@ 241 "../src/event_groups.c" 1
 421 007e BFF36F8F 		isb
 422              	@ 0 "" 2
 423              		.thumb
 424              		.syntax unified
 425              	.L100:
 426 0082 FFF7FEFF 		bl	uxTaskResetEventItemValue
 427 0086 8301     		lsls	r3, r0, #6
 428 0088 0446     		mov	r4, r0
 429 008a 38D5     		bpl	.L113
 430              	.L104:
 431 008c 24F07F44 		bic	r4, r4, #-16777216
 432 0090 2046     		mov	r0, r4
 433 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 434              	.L112:
 435 0096 2149     		ldr	r1, .L116+4
 436 0098 B920     		movs	r0, #185
 437 009a FFF7FEFF 		bl	vAssertCalled
 438 009e FFF7FEFF 		bl	xTaskGetSchedulerState
 439 00a2 C8B1     		cbz	r0, .L114
 440              	.L107:
 441 00a4 FFF7FEFF 		bl	vTaskSuspendAll
 442 00a8 2C68     		ldr	r4, [r5]
 443 00aa 3946     		mov	r1, r7
 444 00ac 2846     		mov	r0, r5
 445 00ae 3C43     		orrs	r4, r4, r7
 446 00b0 FFF7FEFF 		bl	xEventGroupSetBits
 447              	.L98:
 448 00b4 2B68     		ldr	r3, [r5]
 449 00b6 23EA0606 		bic	r6, r3, r6
 450 00ba 2E60     		str	r6, [r5]
 451 00bc FFF7FEFF 		bl	xTaskResumeAll
 452 00c0 2046     		mov	r0, r4
 453 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 454              	.L111:
 455 00c6 1549     		ldr	r1, .L116+4
 456 00c8 B820     		movs	r0, #184
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 9


 457 00ca FFF7FEFF 		bl	vAssertCalled
 458 00ce FFF7FEFF 		bl	xTaskGetSchedulerState
 459 00d2 0028     		cmp	r0, #0
 460 00d4 B6D1     		bne	.L96
 461 00d6 A1E7     		b	.L115
 462              	.L114:
 463 00d8 B8F1000F 		cmp	r8, #0
 464 00dc E2D0     		beq	.L107
 465              	.L95:
 466 00de 0F49     		ldr	r1, .L116+4
 467 00e0 BC20     		movs	r0, #188
 468 00e2 FFF7FEFF 		bl	vAssertCalled
 469 00e6 FFF7FEFF 		bl	vTaskSuspendAll
 470 00ea 2C68     		ldr	r4, [r5]
 471 00ec 3946     		mov	r1, r7
 472 00ee 3C43     		orrs	r4, r4, r7
 473 00f0 2846     		mov	r0, r5
 474 00f2 FFF7FEFF 		bl	xEventGroupSetBits
 475 00f6 36EA0403 		bics	r3, r6, r4
 476 00fa B1D1     		bne	.L103
 477 00fc DAE7     		b	.L98
 478              	.L113:
 479 00fe FFF7FEFF 		bl	vPortEnterCritical
 480 0102 2C68     		ldr	r4, [r5]
 481 0104 36EA0403 		bics	r3, r6, r4
 482 0108 04BF     		itt	eq
 483 010a 24EA0606 		biceq	r6, r4, r6
 484 010e 2E60     		streq	r6, [r5]
 485 0110 FFF7FEFF 		bl	vPortExitCritical
 486 0114 BAE7     		b	.L104
 487              	.L117:
 488 0116 00BF     		.align	2
 489              	.L116:
 490 0118 04ED00E0 		.word	-536810236
 491 011c 00000000 		.word	.LC0
 492              		.size	xEventGroupSync, .-xEventGroupSync
 493              		.section	.text.vEventGroupDelete,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	vEventGroupDelete
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	vEventGroupDelete, %function
 502              	vEventGroupDelete:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 70B5     		push	{r4, r5, r6, lr}
 506 0002 0446     		mov	r4, r0
 507 0004 FFF7FEFF 		bl	vTaskSuspendAll
 508 0008 6368     		ldr	r3, [r4, #4]
 509 000a CBB1     		cbz	r3, .L119
 510 000c 0E4E     		ldr	r6, .L127
 511 000e 04F10C05 		add	r5, r4, #12
 512 0012 05E0     		b	.L121
 513              	.L120:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 10


 514 0014 4FF00071 		mov	r1, #33554432
 515 0018 FFF7FEFF 		bl	vTaskRemoveFromUnorderedEventList
 516 001c 6368     		ldr	r3, [r4, #4]
 517 001e 7BB1     		cbz	r3, .L119
 518              	.L121:
 519 0020 2069     		ldr	r0, [r4, #16]
 520 0022 A842     		cmp	r0, r5
 521 0024 F6D1     		bne	.L120
 522 0026 3146     		mov	r1, r6
 523 0028 4FF41970 		mov	r0, #612
 524 002c FFF7FEFF 		bl	vAssertCalled
 525 0030 2069     		ldr	r0, [r4, #16]
 526 0032 4FF00071 		mov	r1, #33554432
 527 0036 FFF7FEFF 		bl	vTaskRemoveFromUnorderedEventList
 528 003a 6368     		ldr	r3, [r4, #4]
 529 003c 002B     		cmp	r3, #0
 530 003e EFD1     		bne	.L121
 531              	.L119:
 532 0040 BDE87040 		pop	{r4, r5, r6, lr}
 533 0044 FFF7FEBF 		b	xTaskResumeAll
 534              	.L128:
 535              		.align	2
 536              	.L127:
 537 0048 00000000 		.word	.LC0
 538              		.size	vEventGroupDelete, .-vEventGroupDelete
 539              		.section	.text.vEventGroupSetBitsCallback,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	vEventGroupSetBitsCallback
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu fpv4-sp-d16
 547              		.type	vEventGroupSetBitsCallback, %function
 548              	vEventGroupSetBitsCallback:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552 0000 FFF7FEBF 		b	xEventGroupSetBits
 553              		.size	vEventGroupSetBitsCallback, .-vEventGroupSetBitsCallback
 554              		.section	.text.vEventGroupClearBitsCallback,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	vEventGroupClearBitsCallback
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu fpv4-sp-d16
 562              		.type	vEventGroupClearBitsCallback, %function
 563              	vEventGroupClearBitsCallback:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566              		@ link register save eliminated.
 567 0000 FFF7FEBF 		b	xEventGroupClearBits
 568              		.size	vEventGroupClearBitsCallback, .-vEventGroupClearBitsCallback
 569              		.section	.text.uxEventGroupGetNumber,"ax",%progbits
 570              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccTjQJ5M.s 			page 11


 571              		.p2align 2,,3
 572              		.global	uxEventGroupGetNumber
 573              		.syntax unified
 574              		.thumb
 575              		.thumb_func
 576              		.fpu fpv4-sp-d16
 577              		.type	uxEventGroupGetNumber, %function
 578              	uxEventGroupGetNumber:
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581              		@ link register save eliminated.
 582 0000 00B1     		cbz	r0, .L131
 583 0002 8069     		ldr	r0, [r0, #24]
 584              	.L131:
 585 0004 7047     		bx	lr
 586              		.size	uxEventGroupGetNumber, .-uxEventGroupGetNumber
 587 0006 00BF     		.section	.text.vEventGroupSetNumber,"ax",%progbits
 588              		.align	1
 589              		.p2align 2,,3
 590              		.global	vEventGroupSetNumber
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv4-sp-d16
 595              		.type	vEventGroupSetNumber, %function
 596              	vEventGroupSetNumber:
 597              		@ args = 0, pretend = 0, frame = 0
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599              		@ link register save eliminated.
 600 0000 8161     		str	r1, [r0, #24]
 601 0002 7047     		bx	lr
 602              		.size	vEventGroupSetNumber, .-vEventGroupSetNumber
 603              		.section	.rodata.xEventGroupCreateStatic.str1.4,"aMS",%progbits,1
 604              		.align	2
 605              	.LC0:
 606 0000 2E2E2F73 		.ascii	"../src/event_groups.c\000"
 606      72632F65 
 606      76656E74 
 606      5F67726F 
 606      7570732E 
 607              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
