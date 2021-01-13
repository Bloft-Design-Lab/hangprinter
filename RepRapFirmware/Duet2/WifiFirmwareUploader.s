ARM GAS  /tmp/ccIQi6Fn.s 			page 1


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
  13              		.file	"WifiFirmwareUploader.cpp"
  14              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi.part.1,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1, %function
  22              	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0A44     		add	r2, r2, r1
  27 0002 10B4     		push	{r4}
  28 0004 0024     		movs	r4, #0
  29 0006 0428     		cmp	r0, #4
  30 0008 94BF     		ite	ls
  31 000a 1018     		addls	r0, r2, r0
  32 000c 101D     		addhi	r0, r2, #4
  33 000e 2146     		mov	r1, r4
  34              	.L2:
  35 0010 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
  36 0014 8B40     		lsls	r3, r3, r1
  37 0016 8242     		cmp	r2, r0
  38 0018 44EA0304 		orr	r4, r4, r3
  39 001c 01F10801 		add	r1, r1, #8
  40 0020 F6D1     		bne	.L2
  41 0022 2046     		mov	r0, r4
  42 0024 5DF8044B 		ldr	r4, [sp], #4
  43 0028 7047     		bx	lr
  44              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1, .-_ZN20WifiFirmwareUploader7getDataEjPKhi.pa
  45 002a 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi.part.2,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2, %function
  53              	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 1344     		add	r3, r3, r2
ARM GAS  /tmp/ccIQi6Fn.s 			page 2


  58 0002 0429     		cmp	r1, #4
  59 0004 94BF     		ite	ls
  60 0006 5918     		addls	r1, r3, r1
  61 0008 191D     		addhi	r1, r3, #4
  62              	.L7:
  63 000a 03F8010B 		strb	r0, [r3], #1
  64 000e 8B42     		cmp	r3, r1
  65 0010 4FEA1020 		lsr	r0, r0, #8
  66 0014 F9D1     		bne	.L7
  67 0016 7047     		bx	lr
  68              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2, .-_ZN20WifiFirmwareUploader7putDataEmjPhi.pa
  69              		.section	.text._ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, %function
  78              	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 10B4     		push	{r4}
  83 0002 0024     		movs	r4, #0
  84 0004 8460     		str	r4, [r0, #8]
  85 0006 8462     		str	r4, [r0, #40]
  86 0008 C0E90012 		strd	r1, r2, [r0]
  87 000c 5DF8044B 		ldr	r4, [sp], #4
  88 0010 7047     		bx	lr
  89              		.size	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, .-_ZN20WifiFirmwareUploaderC2ER9UAR
  90              		.global	_ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface
  91              		.thumb_set _ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface,_ZN20WifiFirmwareUploaderC2ER9U
  92 0012 00BF     		.section	.text._ZNK20WifiFirmwareUploader7IsReadyEv,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZNK20WifiFirmwareUploader7IsReadyEv
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv4-sp-d16
 100              		.type	_ZNK20WifiFirmwareUploader7IsReadyEv, %function
 101              	_ZNK20WifiFirmwareUploader7IsReadyEv:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 806A     		ldr	r0, [r0, #40]
 106 0002 B0FA80F0 		clz	r0, r0
 107 0006 4009     		lsrs	r0, r0, #5
 108 0008 7047     		bx	lr
 109              		.size	_ZNK20WifiFirmwareUploader7IsReadyEv, .-_ZNK20WifiFirmwareUploader7IsReadyEv
 110 000a 00BF     		.section	.text._ZN20WifiFirmwareUploader8MessageFEPKcz,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZN20WifiFirmwareUploader8MessageFEPKcz
 114              		.syntax unified
ARM GAS  /tmp/ccIQi6Fn.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN20WifiFirmwareUploader8MessageFEPKcz, %function
 119              	_ZN20WifiFirmwareUploader8MessageFEPKcz:
 120              		@ args = 4, pretend = 12, frame = 8
 121              		@ frame_needed = 0, uses_anonymous_args = 1
 122 0000 0EB4     		push	{r1, r2, r3}
 123 0002 00B5     		push	{lr}
 124 0004 82B0     		sub	sp, sp, #8
 125 0006 03AB     		add	r3, sp, #12
 126 0008 0649     		ldr	r1, .L14
 127 000a 53F8042B 		ldr	r2, [r3], #4
 128 000e 0868     		ldr	r0, [r1]	@ unaligned
 129 0010 0193     		str	r3, [sp, #4]
 130 0012 0921     		movs	r1, #9
 131 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 132 0018 02B0     		add	sp, sp, #8
 133              		@ sp needed
 134 001a 5DF804EB 		ldr	lr, [sp], #4
 135 001e 03B0     		add	sp, sp, #12
 136 0020 7047     		bx	lr
 137              	.L15:
 138 0022 00BF     		.align	2
 139              	.L14:
 140 0024 00000000 		.word	reprap
 141              		.size	_ZN20WifiFirmwareUploader8MessageFEPKcz, .-_ZN20WifiFirmwareUploader8MessageFEPKcz
 142              		.section	.text._ZN20WifiFirmwareUploader10flushInputEv,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZN20WifiFirmwareUploader10flushInputEv
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZN20WifiFirmwareUploader10flushInputEv, %function
 151              	_ZN20WifiFirmwareUploader10flushInputEv:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 10B5     		push	{r4, lr}
 155 0002 0446     		mov	r4, r0
 156 0004 03E0     		b	.L18
 157              	.L20:
 158 0006 2068     		ldr	r0, [r4]
 159 0008 0368     		ldr	r3, [r0]
 160 000a 5B69     		ldr	r3, [r3, #20]
 161 000c 9847     		blx	r3
 162              	.L18:
 163 000e 2068     		ldr	r0, [r4]
 164 0010 0368     		ldr	r3, [r0]
 165 0012 1B69     		ldr	r3, [r3, #16]
 166 0014 9847     		blx	r3
 167 0016 0028     		cmp	r0, #0
 168 0018 F5D1     		bne	.L20
 169 001a 10BD     		pop	{r4, pc}
 170              		.size	_ZN20WifiFirmwareUploader10flushInputEv, .-_ZN20WifiFirmwareUploader10flushInputEv
 171              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi,"ax",%progbits
ARM GAS  /tmp/ccIQi6Fn.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_ZN20WifiFirmwareUploader7getDataEjPKhi
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi, %function
 180              	_ZN20WifiFirmwareUploader7getDataEjPKhi:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 0846     		mov	r0, r1
 185 0002 1146     		mov	r1, r2
 186 0004 1AB1     		cbz	r2, .L21
 187 0006 10B1     		cbz	r0, .L21
 188 0008 1A46     		mov	r2, r3
 189 000a FFF7FEBF 		b	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 190              	.L21:
 191 000e 0020     		movs	r0, #0
 192 0010 7047     		bx	lr
 193              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi, .-_ZN20WifiFirmwareUploader7getDataEjPKhi
 194 0012 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	_ZN20WifiFirmwareUploader7putDataEmjPhi
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu fpv4-sp-d16
 202              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi, %function
 203              	_ZN20WifiFirmwareUploader7putDataEmjPhi:
 204              		@ args = 4, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 10B4     		push	{r4}
 208 0002 019C     		ldr	r4, [sp, #4]
 209 0004 43B1     		cbz	r3, .L27
 210 0006 0846     		mov	r0, r1
 211 0008 1146     		mov	r1, r2
 212 000a 2AB1     		cbz	r2, .L27
 213 000c 1A46     		mov	r2, r3
 214 000e 2346     		mov	r3, r4
 215 0010 5DF8044B 		ldr	r4, [sp], #4
 216 0014 FFF7FEBF 		b	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 217              	.L27:
 218 0018 5DF8044B 		ldr	r4, [sp], #4
 219 001c 7047     		bx	lr
 220              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi, .-_ZN20WifiFirmwareUploader7putDataEmjPhi
 221 001e 00BF     		.section	.text._ZN20WifiFirmwareUploader8ReadByteERhb,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZN20WifiFirmwareUploader8ReadByteERhb
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccIQi6Fn.s 			page 5


 229              		.type	_ZN20WifiFirmwareUploader8ReadByteERhb, %function
 230              	_ZN20WifiFirmwareUploader8ReadByteERhb:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 234 0002 0446     		mov	r4, r0
 235 0004 0068     		ldr	r0, [r0]
 236 0006 0368     		ldr	r3, [r0]
 237 0008 1B69     		ldr	r3, [r3, #16]
 238 000a 0D46     		mov	r5, r1
 239 000c 1646     		mov	r6, r2
 240 000e 9847     		blx	r3
 241 0010 00B9     		cbnz	r0, .L48
 242 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 243              	.L48:
 244 0014 2068     		ldr	r0, [r4]
 245 0016 0368     		ldr	r3, [r0]
 246 0018 5B69     		ldr	r3, [r3, #20]
 247 001a 9847     		blx	r3
 248 001c C7B2     		uxtb	r7, r0
 249 001e 2F70     		strb	r7, [r5]
 250 0020 1EB1     		cbz	r6, .L42
 251 0022 C02F     		cmp	r7, #192
 252 0024 1BD0     		beq	.L41
 253 0026 DB2F     		cmp	r7, #219
 254 0028 01D0     		beq	.L49
 255              	.L42:
 256 002a 0120     		movs	r0, #1
 257 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 258              	.L49:
 259 002e 2068     		ldr	r0, [r4]
 260 0030 0368     		ldr	r3, [r0]
 261 0032 1B69     		ldr	r3, [r3, #16]
 262 0034 9847     		blx	r3
 263 0036 A8B1     		cbz	r0, .L43
 264 0038 2068     		ldr	r0, [r4]
 265 003a 0368     		ldr	r3, [r0]
 266 003c 5B69     		ldr	r3, [r3, #20]
 267 003e 9847     		blx	r3
 268 0040 C0B2     		uxtb	r0, r0
 269 0042 DC28     		cmp	r0, #220
 270 0044 07D0     		beq	.L50
 271 0046 DD28     		cmp	r0, #221
 272 0048 15BF     		itete	ne
 273 004a 2870     		strbne	r0, [r5]
 274 004c 2F70     		strbeq	r7, [r5]
 275 004e 6FF00200 		mvnne	r0, #2
 276 0052 0220     		moveq	r0, #2
 277 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 278              	.L50:
 279 0056 C023     		movs	r3, #192
 280 0058 2B70     		strb	r3, [r5]
 281 005a 0220     		movs	r0, #2
 282 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 283              	.L41:
 284 005e 4FF0FF30 		mov	r0, #-1
 285 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccIQi6Fn.s 			page 6


 286              	.L43:
 287 0064 6FF00100 		mvn	r0, #1
 288 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 289              		.size	_ZN20WifiFirmwareUploader8ReadByteERhb, .-_ZN20WifiFirmwareUploader8ReadByteERhb
 290 006a 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhj,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhj
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu fpv4-sp-d16
 298              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, %function
 299              	_ZN20WifiFirmwareUploader14writePacketRawEPKhj:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 303 0000 0068     		ldr	r0, [r0]
 304 0002 0368     		ldr	r3, [r0]
 305 0004 DB68     		ldr	r3, [r3, #12]
 306 0006 1847     		bx	r3
 307              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, .-_ZN20WifiFirmwareUploader14writePacketRawE
 308              		.section	.text._ZN20WifiFirmwareUploader10readPacketEhPmRjm,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, %function
 317              	_ZN20WifiFirmwareUploader10readPacketEhPmRjm:
 318              		@ args = 4, pretend = 0, frame = 24
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 321 0004 87B0     		sub	sp, sp, #28
 322 0006 9B46     		mov	fp, r3
 323 0008 0546     		mov	r5, r0
 324 000a CDE90021 		strd	r2, r1, [sp]
 325 000e 109F     		ldr	r7, [sp, #64]
 326 0010 FFF7FEFF 		bl	millis
 327 0014 0023     		movs	r3, #0
 328 0016 0646     		mov	r6, r0
 329 0018 1C46     		mov	r4, r3
 330 001a CBF80030 		str	r3, [fp]
 331 001e 9A46     		mov	r10, r3
 332 0020 9946     		mov	r9, r3
 333 0022 4FF00108 		mov	r8, #1
 334              	.L53:
 335 0026 FFF7FEFF 		bl	millis
 336 002a 801B     		subs	r0, r0, r6
 337 002c B842     		cmp	r0, r7
 338 002e 00F2A780 		bhi	.L56
 339 0032 2868     		ldr	r0, [r5]
 340 0034 0368     		ldr	r3, [r0]
 341 0036 1B69     		ldr	r3, [r3, #16]
 342 0038 9847     		blx	r3
ARM GAS  /tmp/ccIQi6Fn.s 			page 7


 343 003a 4045     		cmp	r0, r8
 344 003c F3DB     		blt	.L53
 345 003e 032C     		cmp	r4, #3
 346 0040 00F21881 		bhi	.L77
 347 0044 DFE804F0 		tbb	[pc, r4]
 348              	.L60:
 349 0048 34       		.byte	(.L59-.L60)/2
 350 0049 12       		.byte	(.L74-.L60)/2
 351 004a 12       		.byte	(.L74-.L60)/2
 352 004b 34       		.byte	(.L59-.L60)/2
 353              		.p2align 1
 354              	.L63:
 355 004c FFF7FEFF 		bl	millis
 356 0050 801B     		subs	r0, r0, r6
 357 0052 8742     		cmp	r7, r0
 358 0054 C0F09480 		bcc	.L56
 359 0058 2868     		ldr	r0, [r5]
 360 005a 0368     		ldr	r3, [r0]
 361 005c 1B69     		ldr	r3, [r3, #16]
 362 005e 9847     		blx	r3
 363 0060 0128     		cmp	r0, #1
 364 0062 40F3D880 		ble	.L102
 365              	.L90:
 366 0066 0124     		movs	r4, #1
 367 0068 4FF00208 		mov	r8, #2
 368              	.L74:
 369 006c 0122     		movs	r2, #1
 370 006e 0DF10F01 		add	r1, sp, #15
 371 0072 2846     		mov	r0, r5
 372 0074 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8ReadByteERhb
 373 0078 431E     		subs	r3, r0, #1
 374 007a 012B     		cmp	r3, #1
 375 007c 00F2F580 		bhi	.L103
 376 0080 012C     		cmp	r4, #1
 377 0082 36D0     		beq	.L104
 378 0084 0AF1010A 		add	r10, r10, #1
 379 0088 DBF80030 		ldr	r3, [fp]
 380 008c 1FFA8AFA 		uxth	r10, r10
 381 0090 9A45     		cmp	r10, r3
 382 0092 79D3     		bcc	.L72
 383 0094 FFF7FEFF 		bl	millis
 384 0098 801B     		subs	r0, r0, r6
 385 009a 8742     		cmp	r7, r0
 386 009c 70D3     		bcc	.L56
 387 009e 2868     		ldr	r0, [r5]
 388 00a0 0368     		ldr	r3, [r0]
 389 00a2 1B69     		ldr	r3, [r3, #16]
 390 00a4 9847     		blx	r3
 391 00a6 0028     		cmp	r0, #0
 392 00a8 4FF00304 		mov	r4, #3
 393 00ac 40F38C80 		ble	.L105
 394              	.L59:
 395 00b0 2868     		ldr	r0, [r5]
 396 00b2 0368     		ldr	r3, [r0]
 397 00b4 5B69     		ldr	r3, [r3, #20]
 398 00b6 9847     		blx	r3
 399 00b8 C0B2     		uxtb	r0, r0
ARM GAS  /tmp/ccIQi6Fn.s 			page 8


 400 00ba C028     		cmp	r0, #192
 401 00bc 40F0D380 		bne	.L62
 402 00c0 002C     		cmp	r4, #0
 403 00c2 C3D0     		beq	.L63
 404 00c4 04A9     		add	r1, sp, #16
 405 00c6 0022     		movs	r2, #0
 406 00c8 0120     		movs	r0, #1
 407 00ca FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 408 00ce 0122     		movs	r2, #1
 409 00d0 0446     		mov	r4, r0
 410 00d2 04A9     		add	r1, sp, #16
 411 00d4 1046     		mov	r0, r2
 412 00d6 E4B2     		uxtb	r4, r4
 413 00d8 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 414 00dc 012C     		cmp	r4, #1
 415 00de 62D1     		bne	.L106
 416 00e0 019B     		ldr	r3, [sp, #4]
 417 00e2 C0B2     		uxtb	r0, r0
 418 00e4 9842     		cmp	r0, r3
 419 00e6 14BF     		ite	ne
 420 00e8 0620     		movne	r0, #6
 421 00ea 0020     		moveq	r0, #0
 422              	.L52:
 423 00ec 07B0     		add	sp, sp, #28
 424              		@ sp needed
 425 00ee BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 426              	.L104:
 427 00f2 09F10102 		add	r2, r9, #1
 428 00f6 06AB     		add	r3, sp, #24
 429 00f8 4B44     		add	r3, r3, r9
 430 00fa 1FFA82F9 		uxth	r9, r2
 431 00fe B9F1070F 		cmp	r9, #7
 432 0102 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 433 0106 03F8082C 		strb	r2, [r3, #-8]
 434 010a 50D9     		bls	.L68
 435 010c 0222     		movs	r2, #2
 436 010e 1046     		mov	r0, r2
 437 0110 04A9     		add	r1, sp, #16
 438 0112 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 439 0116 009B     		ldr	r3, [sp]
 440 0118 84B2     		uxth	r4, r0
 441 011a CBF80040 		str	r4, [fp]
 442 011e 33B1     		cbz	r3, .L69
 443 0120 0422     		movs	r2, #4
 444 0122 1046     		mov	r0, r2
 445 0124 04A9     		add	r1, sp, #16
 446 0126 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 447 012a 009B     		ldr	r3, [sp]
 448 012c 1860     		str	r0, [r3]
 449              	.L69:
 450 012e 5CBB     		cbnz	r4, .L72
 451 0130 FFF7FEFF 		bl	millis
 452 0134 801B     		subs	r0, r0, r6
 453 0136 8742     		cmp	r7, r0
 454 0138 22D3     		bcc	.L56
 455 013a 2868     		ldr	r0, [r5]
 456 013c 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccIQi6Fn.s 			page 9


 457 013e 1B69     		ldr	r3, [r3, #16]
 458 0140 9847     		blx	r3
 459 0142 0028     		cmp	r0, #0
 460 0144 4FF00304 		mov	r4, #3
 461 0148 B2DC     		bgt	.L59
 462 014a FFF7FEFF 		bl	millis
 463 014e 801B     		subs	r0, r0, r6
 464 0150 B842     		cmp	r0, r7
 465 0152 15D8     		bhi	.L56
 466 0154 2868     		ldr	r0, [r5]
 467 0156 0368     		ldr	r3, [r0]
 468 0158 1B69     		ldr	r3, [r3, #16]
 469 015a 9847     		blx	r3
 470 015c 0028     		cmp	r0, #0
 471 015e A7DC     		bgt	.L59
 472 0160 FFF7FEFF 		bl	millis
 473 0164 801B     		subs	r0, r0, r6
 474 0166 8742     		cmp	r7, r0
 475 0168 0AD3     		bcc	.L56
 476 016a 2868     		ldr	r0, [r5]
 477 016c 0368     		ldr	r3, [r0]
 478 016e 1B69     		ldr	r3, [r3, #16]
 479 0170 9847     		blx	r3
 480 0172 0028     		cmp	r0, #0
 481 0174 9CDC     		bgt	.L59
 482 0176 FFF7FEFF 		bl	millis
 483 017a 801B     		subs	r0, r0, r6
 484 017c 8742     		cmp	r7, r0
 485 017e 40D2     		bcs	.L100
 486              	.L56:
 487 0180 0120     		movs	r0, #1
 488 0182 07B0     		add	sp, sp, #28
 489              		@ sp needed
 490 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 491              	.L72:
 492 0188 FFF7FEFF 		bl	millis
 493 018c 801B     		subs	r0, r0, r6
 494 018e 8742     		cmp	r7, r0
 495 0190 F6D3     		bcc	.L56
 496 0192 2868     		ldr	r0, [r5]
 497 0194 0368     		ldr	r3, [r0]
 498 0196 1B69     		ldr	r3, [r3, #16]
 499 0198 9847     		blx	r3
 500 019a 4045     		cmp	r0, r8
 501 019c 4FF00204 		mov	r4, #2
 502 01a0 BFF664AF 		bge	.L74
 503 01a4 3FE7     		b	.L53
 504              	.L106:
 505 01a6 0620     		movs	r0, #6
 506 01a8 07B0     		add	sp, sp, #28
 507              		@ sp needed
 508 01aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 509              	.L68:
 510 01ae FFF7FEFF 		bl	millis
 511 01b2 801B     		subs	r0, r0, r6
 512 01b4 8742     		cmp	r7, r0
 513 01b6 E3D3     		bcc	.L56
ARM GAS  /tmp/ccIQi6Fn.s 			page 10


 514 01b8 2868     		ldr	r0, [r5]
 515 01ba 0368     		ldr	r3, [r0]
 516 01bc 1B69     		ldr	r3, [r3, #16]
 517 01be 9847     		blx	r3
 518 01c0 4045     		cmp	r0, r8
 519 01c2 BFF653AF 		bge	.L74
 520 01c6 2EE7     		b	.L53
 521              	.L105:
 522 01c8 FFF7FEFF 		bl	millis
 523 01cc 801B     		subs	r0, r0, r6
 524 01ce 8742     		cmp	r7, r0
 525 01d0 D6D3     		bcc	.L56
 526 01d2 2868     		ldr	r0, [r5]
 527 01d4 0368     		ldr	r3, [r0]
 528 01d6 1B69     		ldr	r3, [r3, #16]
 529 01d8 9847     		blx	r3
 530 01da 0028     		cmp	r0, #0
 531 01dc 3FF768AF 		bgt	.L59
 532 01e0 FFF7FEFF 		bl	millis
 533 01e4 801B     		subs	r0, r0, r6
 534 01e6 8742     		cmp	r7, r0
 535 01e8 CAD3     		bcc	.L56
 536 01ea 2868     		ldr	r0, [r5]
 537 01ec 0368     		ldr	r3, [r0]
 538 01ee 1B69     		ldr	r3, [r3, #16]
 539 01f0 9847     		blx	r3
 540 01f2 0028     		cmp	r0, #0
 541 01f4 3FF75CAF 		bgt	.L59
 542 01f8 FFF7FEFF 		bl	millis
 543 01fc 801B     		subs	r0, r0, r6
 544 01fe B842     		cmp	r0, r7
 545 0200 BED8     		bhi	.L56
 546              	.L100:
 547 0202 2868     		ldr	r0, [r5]
 548 0204 0368     		ldr	r3, [r0]
 549 0206 1B69     		ldr	r3, [r3, #16]
 550 0208 9847     		blx	r3
 551 020a 0028     		cmp	r0, #0
 552 020c 3FF750AF 		bgt	.L59
 553 0210 4FF00108 		mov	r8, #1
 554 0214 07E7     		b	.L53
 555              	.L102:
 556 0216 FFF7FEFF 		bl	millis
 557 021a 801B     		subs	r0, r0, r6
 558 021c 8742     		cmp	r7, r0
 559 021e AFD3     		bcc	.L56
 560 0220 2868     		ldr	r0, [r5]
 561 0222 0368     		ldr	r3, [r0]
 562 0224 1B69     		ldr	r3, [r3, #16]
 563 0226 9847     		blx	r3
 564 0228 0128     		cmp	r0, #1
 565 022a 3FF71CAF 		bgt	.L90
 566 022e FFF7FEFF 		bl	millis
 567 0232 801B     		subs	r0, r0, r6
 568 0234 8742     		cmp	r7, r0
 569 0236 A3D3     		bcc	.L56
 570 0238 2868     		ldr	r0, [r5]
ARM GAS  /tmp/ccIQi6Fn.s 			page 11


 571 023a 0368     		ldr	r3, [r0]
 572 023c 1B69     		ldr	r3, [r3, #16]
 573 023e 9847     		blx	r3
 574 0240 0128     		cmp	r0, #1
 575 0242 3FF710AF 		bgt	.L90
 576 0246 FFF7FEFF 		bl	millis
 577 024a 801B     		subs	r0, r0, r6
 578 024c 8742     		cmp	r7, r0
 579 024e 97D3     		bcc	.L56
 580 0250 2868     		ldr	r0, [r5]
 581 0252 0368     		ldr	r3, [r0]
 582 0254 1B69     		ldr	r3, [r3, #16]
 583 0256 9847     		blx	r3
 584 0258 0128     		cmp	r0, #1
 585 025a 3FF704AF 		bgt	.L90
 586 025e 0124     		movs	r4, #1
 587 0260 4FF00208 		mov	r8, #2
 588 0264 DFE6     		b	.L53
 589              	.L62:
 590 0266 0720     		movs	r0, #7
 591 0268 40E7     		b	.L52
 592              	.L103:
 593 026a 08B1     		cbz	r0, .L80
 594 026c 0230     		adds	r0, r0, #2
 595 026e FAD1     		bne	.L62
 596              	.L80:
 597 0270 0920     		movs	r0, #9
 598 0272 3BE7     		b	.L52
 599              	.L77:
 600 0274 0820     		movs	r0, #8
 601 0276 39E7     		b	.L52
 602              		.size	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, .-_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 603              		.section	.text._ZN20WifiFirmwareUploader11writePacketEPKhjS1_j,"ax",%progbits
 604              		.align	1
 605              		.p2align 2,,3
 606              		.global	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 607              		.syntax unified
 608              		.thumb
 609              		.thumb_func
 610              		.fpu fpv4-sp-d16
 611              		.type	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, %function
 612              	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j:
 613              		@ args = 4, pretend = 0, frame = 0
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 616 0004 0546     		mov	r5, r0
 617 0006 0068     		ldr	r0, [r0]
 618 0008 DDF82080 		ldr	r8, [sp, #32]
 619 000c 0F46     		mov	r7, r1
 620 000e 0168     		ldr	r1, [r0]
 621 0010 1446     		mov	r4, r2
 622 0012 8A68     		ldr	r2, [r1, #8]
 623 0014 C021     		movs	r1, #192
 624 0016 1E46     		mov	r6, r3
 625 0018 9047     		blx	r2
 626 001a C4B1     		cbz	r4, .L114
 627 001c 07EB0409 		add	r9, r7, r4
ARM GAS  /tmp/ccIQi6Fn.s 			page 12


 628 0020 02E0     		b	.L115
 629              	.L113:
 630 0022 9047     		blx	r2
 631              	.L112:
 632 0024 4F45     		cmp	r7, r9
 633 0026 12D0     		beq	.L114
 634              	.L115:
 635 0028 2C68     		ldr	r4, [r5]
 636 002a 17F8013B 		ldrb	r3, [r7], #1	@ zero_extendqisi2
 637 002e 2168     		ldr	r1, [r4]
 638 0030 C02B     		cmp	r3, #192
 639 0032 8A68     		ldr	r2, [r1, #8]
 640 0034 2046     		mov	r0, r4
 641 0036 1946     		mov	r1, r3
 642 0038 2BD0     		beq	.L126
 643 003a DB2B     		cmp	r3, #219
 644 003c F1D1     		bne	.L113
 645 003e 9047     		blx	r2
 646 0040 2868     		ldr	r0, [r5]
 647 0042 0368     		ldr	r3, [r0]
 648 0044 DD21     		movs	r1, #221
 649 0046 9B68     		ldr	r3, [r3, #8]
 650 0048 9847     		blx	r3
 651 004a 4F45     		cmp	r7, r9
 652 004c ECD1     		bne	.L115
 653              	.L114:
 654 004e B8F1000F 		cmp	r8, #0
 655 0052 17D0     		beq	.L109
 656 0054 B044     		add	r8, r8, r6
 657 0056 02E0     		b	.L119
 658              	.L118:
 659 0058 A047     		blx	r4
 660              	.L117:
 661 005a 4645     		cmp	r6, r8
 662 005c 12D0     		beq	.L109
 663              	.L119:
 664 005e 2A68     		ldr	r2, [r5]
 665 0060 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 666 0064 1168     		ldr	r1, [r2]
 667 0066 C02B     		cmp	r3, #192
 668 0068 8C68     		ldr	r4, [r1, #8]
 669 006a 1046     		mov	r0, r2
 670 006c 1946     		mov	r1, r3
 671 006e 18D0     		beq	.L127
 672 0070 DB2B     		cmp	r3, #219
 673 0072 F1D1     		bne	.L118
 674 0074 A047     		blx	r4
 675 0076 2868     		ldr	r0, [r5]
 676 0078 0368     		ldr	r3, [r0]
 677 007a DD21     		movs	r1, #221
 678 007c 9B68     		ldr	r3, [r3, #8]
 679 007e 9847     		blx	r3
 680 0080 4645     		cmp	r6, r8
 681 0082 ECD1     		bne	.L119
 682              	.L109:
 683 0084 2868     		ldr	r0, [r5]
 684 0086 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccIQi6Fn.s 			page 13


 685 0088 C021     		movs	r1, #192
 686 008a 9B68     		ldr	r3, [r3, #8]
 687 008c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 688 0090 1847     		bx	r3
 689              	.L126:
 690 0092 DB21     		movs	r1, #219
 691 0094 9047     		blx	r2
 692 0096 2868     		ldr	r0, [r5]
 693 0098 0368     		ldr	r3, [r0]
 694 009a DC21     		movs	r1, #220
 695 009c 9B68     		ldr	r3, [r3, #8]
 696 009e 9847     		blx	r3
 697 00a0 C0E7     		b	.L112
 698              	.L127:
 699 00a2 DB21     		movs	r1, #219
 700 00a4 A047     		blx	r4
 701 00a6 2868     		ldr	r0, [r5]
 702 00a8 0368     		ldr	r3, [r0]
 703 00aa DC21     		movs	r1, #220
 704 00ac 9B68     		ldr	r3, [r3, #8]
 705 00ae 9847     		blx	r3
 706 00b0 D3E7     		b	.L117
 707              		.size	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, .-_ZN20WifiFirmwareUploader11writePacketEPK
 708 00b2 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 712              		.syntax unified
 713              		.thumb
 714              		.thumb_func
 715              		.fpu fpv4-sp-d16
 716              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, %function
 717              	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j:
 718              		@ args = 4, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 721 0004 0446     		mov	r4, r0
 722 0006 0068     		ldr	r0, [r0]
 723 0008 089F     		ldr	r7, [sp, #32]
 724 000a 0D46     		mov	r5, r1
 725 000c 0168     		ldr	r1, [r0]
 726 000e D1F80890 		ldr	r9, [r1, #8]
 727 0012 C021     		movs	r1, #192
 728 0014 1E46     		mov	r6, r3
 729 0016 9046     		mov	r8, r2
 730 0018 C847     		blx	r9
 731 001a 2068     		ldr	r0, [r4]
 732 001c 0368     		ldr	r3, [r0]
 733 001e 4246     		mov	r2, r8
 734 0020 2946     		mov	r1, r5
 735 0022 DB68     		ldr	r3, [r3, #12]
 736 0024 9847     		blx	r3
 737 0026 2068     		ldr	r0, [r4]
 738 0028 0568     		ldr	r5, [r0]
 739 002a 3146     		mov	r1, r6
 740 002c EB68     		ldr	r3, [r5, #12]
 741 002e 3A46     		mov	r2, r7
ARM GAS  /tmp/ccIQi6Fn.s 			page 14


 742 0030 9847     		blx	r3
 743 0032 2068     		ldr	r0, [r4]
 744 0034 0368     		ldr	r3, [r0]
 745 0036 C021     		movs	r1, #192
 746 0038 9B68     		ldr	r3, [r3, #8]
 747 003a BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 748 003e 1847     		bx	r3
 749              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, .-_ZN20WifiFirmwareUploader14writePacket
 750              		.section	.text._ZN20WifiFirmwareUploader11sendCommandEhmPKhj,"ax",%progbits
 751              		.align	1
 752              		.p2align 2,,3
 753              		.global	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 754              		.syntax unified
 755              		.thumb
 756              		.thumb_func
 757              		.fpu fpv4-sp-d16
 758              		.type	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, %function
 759              	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj:
 760              		@ args = 4, pretend = 0, frame = 8
 761              		@ frame_needed = 0, uses_anonymous_args = 0
 762 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 763 0004 1F46     		mov	r7, r3
 764 0006 84B0     		sub	sp, sp, #16
 765 0008 0023     		movs	r3, #0
 766 000a 0D46     		mov	r5, r1
 767 000c 9046     		mov	r8, r2
 768 000e 0446     		mov	r4, r0
 769 0010 02AA     		add	r2, sp, #8
 770 0012 1846     		mov	r0, r3
 771 0014 0121     		movs	r1, #1
 772 0016 0A9E     		ldr	r6, [sp, #40]
 773 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 774 001c 0123     		movs	r3, #1
 775 001e 02AA     		add	r2, sp, #8
 776 0020 2846     		mov	r0, r5
 777 0022 1946     		mov	r1, r3
 778 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 779 0028 0223     		movs	r3, #2
 780 002a 02AA     		add	r2, sp, #8
 781 002c 3046     		mov	r0, r6
 782 002e 1946     		mov	r1, r3
 783 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 784 0034 0423     		movs	r3, #4
 785 0036 4046     		mov	r0, r8
 786 0038 02AA     		add	r2, sp, #8
 787 003a 1946     		mov	r1, r3
 788 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 789 0040 03E0     		b	.L132
 790              	.L136:
 791 0042 2068     		ldr	r0, [r4]
 792 0044 0368     		ldr	r3, [r0]
 793 0046 5B69     		ldr	r3, [r3, #20]
 794 0048 9847     		blx	r3
 795              	.L132:
 796 004a 2068     		ldr	r0, [r4]
 797 004c 0368     		ldr	r3, [r0]
 798 004e 1B69     		ldr	r3, [r3, #16]
ARM GAS  /tmp/ccIQi6Fn.s 			page 15


 799 0050 9847     		blx	r3
 800 0052 0028     		cmp	r0, #0
 801 0054 F5D1     		bne	.L136
 802 0056 082D     		cmp	r5, #8
 803 0058 0096     		str	r6, [sp]
 804 005a 3B46     		mov	r3, r7
 805 005c 07D0     		beq	.L137
 806 005e 02A9     		add	r1, sp, #8
 807 0060 2046     		mov	r0, r4
 808 0062 0822     		movs	r2, #8
 809 0064 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 810 0068 04B0     		add	sp, sp, #16
 811              		@ sp needed
 812 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 813              	.L137:
 814 006e 2A46     		mov	r2, r5
 815 0070 02A9     		add	r1, sp, #8
 816 0072 2046     		mov	r0, r4
 817 0074 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 818 0078 04B0     		add	sp, sp, #16
 819              		@ sp needed
 820 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 821              		.size	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, .-_ZN20WifiFirmwareUploader11sendCommandEhmPK
 822 007e 00BF     		.section	.text._ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm,"ax",%progbits
 823              		.align	1
 824              		.p2align 2,,3
 825              		.global	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 826              		.syntax unified
 827              		.thumb
 828              		.thumb_func
 829              		.fpu fpv4-sp-d16
 830              		.type	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, %function
 831              	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm:
 832              		@ args = 12, pretend = 0, frame = 8
 833              		@ frame_needed = 0, uses_anonymous_args = 0
 834 0000 70B5     		push	{r4, r5, r6, lr}
 835 0002 84B0     		sub	sp, sp, #16
 836 0004 0446     		mov	r4, r0
 837 0006 0093     		str	r3, [sp]
 838 0008 0D46     		mov	r5, r1
 839 000a 1346     		mov	r3, r2
 840 000c 0A9E     		ldr	r6, [sp, #40]
 841 000e 089A     		ldr	r2, [sp, #32]
 842 0010 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 843 0014 0096     		str	r6, [sp]
 844 0016 2946     		mov	r1, r5
 845 0018 2046     		mov	r0, r4
 846 001a 099A     		ldr	r2, [sp, #36]
 847 001c 03AB     		add	r3, sp, #12
 848 001e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 849 0022 18B9     		cbnz	r0, .L138
 850 0024 039B     		ldr	r3, [sp, #12]
 851 0026 022B     		cmp	r3, #2
 852 0028 18BF     		it	ne
 853 002a 0320     		movne	r0, #3
 854              	.L138:
 855 002c 04B0     		add	sp, sp, #16
ARM GAS  /tmp/ccIQi6Fn.s 			page 16


 856              		@ sp needed
 857 002e 70BD     		pop	{r4, r5, r6, pc}
 858              		.size	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, .-_ZN20WifiFirmwareUploader9doCommandEhPKhjmP
 859              		.section	.text._ZN20WifiFirmwareUploader4SyncEt,"ax",%progbits
 860              		.align	1
 861              		.p2align 2,,3
 862              		.global	_ZN20WifiFirmwareUploader4SyncEt
 863              		.syntax unified
 864              		.thumb
 865              		.thumb_func
 866              		.fpu fpv4-sp-d16
 867              		.type	_ZN20WifiFirmwareUploader4SyncEt, %function
 868              	_ZN20WifiFirmwareUploader4SyncEt:
 869              		@ args = 0, pretend = 0, frame = 40
 870              		@ frame_needed = 0, uses_anonymous_args = 0
 871 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 872 0004 8EB0     		sub	sp, sp, #56
 873 0006 0646     		mov	r6, r0
 874 0008 8846     		mov	r8, r1
 875 000a 2022     		movs	r2, #32
 876 000c 5521     		movs	r1, #85
 877 000e 06A8     		add	r0, sp, #24
 878 0010 FFF7FEFF 		bl	memset
 879 0014 0025     		movs	r5, #0
 880 0016 1F4B     		ldr	r3, .L154
 881 0018 0593     		str	r3, [sp, #20]
 882 001a CDF80880 		str	r8, [sp, #8]
 883 001e 3046     		mov	r0, r6
 884 0020 05AA     		add	r2, sp, #20
 885 0022 CDE90055 		strd	r5, r5, [sp]
 886 0026 2423     		movs	r3, #36
 887 0028 0821     		movs	r1, #8
 888 002a FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 889 002e 0628     		cmp	r0, #6
 890 0030 18BF     		it	ne
 891 0032 0446     		movne	r4, r0
 892 0034 19D1     		bne	.L144
 893 0036 04AF     		add	r7, sp, #16
 894 0038 2A46     		mov	r2, r5
 895 003a CDF80080 		str	r8, [sp]
 896 003e 3B46     		mov	r3, r7
 897 0040 0821     		movs	r1, #8
 898 0042 3046     		mov	r0, r6
 899 0044 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 900 0048 0925     		movs	r5, #9
 901 004a 0446     		mov	r4, r0
 902              	.L146:
 903 004c 062C     		cmp	r4, #6
 904 004e 3B46     		mov	r3, r7
 905 0050 4FF00002 		mov	r2, #0
 906 0054 4FF00801 		mov	r1, #8
 907 0058 3046     		mov	r0, r6
 908 005a 06D1     		bne	.L144
 909 005c CDF80080 		str	r8, [sp]
 910 0060 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 911 0064 013D     		subs	r5, r5, #1
 912 0066 0446     		mov	r4, r0
ARM GAS  /tmp/ccIQi6Fn.s 			page 17


 913 0068 F0D1     		bne	.L146
 914              	.L144:
 915 006a 7CB9     		cbnz	r4, .L143
 916 006c 04AF     		add	r7, sp, #16
 917 006e 4FF4FA75 		mov	r5, #500
 918 0072 02E0     		b	.L149
 919              	.L153:
 920 0074 049B     		ldr	r3, [sp, #16]
 921 0076 022B     		cmp	r3, #2
 922 0078 08D1     		bne	.L143
 923              	.L149:
 924 007a 0095     		str	r5, [sp]
 925 007c 3B46     		mov	r3, r7
 926 007e 0022     		movs	r2, #0
 927 0080 0821     		movs	r1, #8
 928 0082 3046     		mov	r0, r6
 929 0084 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 930 0088 0028     		cmp	r0, #0
 931 008a F3D0     		beq	.L153
 932              	.L143:
 933 008c 2046     		mov	r0, r4
 934 008e 0EB0     		add	sp, sp, #56
 935              		@ sp needed
 936 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 937              	.L155:
 938              		.align	2
 939              	.L154:
 940 0094 07071220 		.word	538052359
 941              		.size	_ZN20WifiFirmwareUploader4SyncEt, .-_ZN20WifiFirmwareUploader4SyncEt
 942              		.section	.text._ZN20WifiFirmwareUploader10flashBeginEmm,"ax",%progbits
 943              		.align	1
 944              		.p2align 2,,3
 945              		.global	_ZN20WifiFirmwareUploader10flashBeginEmm
 946              		.syntax unified
 947              		.thumb
 948              		.thumb_func
 949              		.fpu fpv4-sp-d16
 950              		.type	_ZN20WifiFirmwareUploader10flashBeginEmm, %function
 951              	_ZN20WifiFirmwareUploader10flashBeginEmm:
 952              		@ args = 0, pretend = 0, frame = 16
 953              		@ frame_needed = 0, uses_anonymous_args = 0
 954 0000 70B5     		push	{r4, r5, r6, lr}
 955 0002 88B0     		sub	sp, sp, #32
 956 0004 1446     		mov	r4, r2
 957 0006 0546     		mov	r5, r0
 958 0008 0E46     		mov	r6, r1
 959 000a 1046     		mov	r0, r2
 960 000c 0023     		movs	r3, #0
 961 000e 04AA     		add	r2, sp, #16
 962 0010 0421     		movs	r1, #4
 963 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 964 0016 0423     		movs	r3, #4
 965 0018 04F2FF30 		addw	r0, r4, #1023
 966 001c 04AA     		add	r2, sp, #16
 967 001e 1946     		mov	r1, r3
 968 0020 800A     		lsrs	r0, r0, #10
 969 0022 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
ARM GAS  /tmp/ccIQi6Fn.s 			page 18


 970 0026 04AA     		add	r2, sp, #16
 971 0028 0823     		movs	r3, #8
 972 002a 0421     		movs	r1, #4
 973 002c 4FF48060 		mov	r0, #1024
 974 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 975 0034 26F47F70 		bic	r0, r6, #1020
 976 0038 04AA     		add	r2, sp, #16
 977 003a 20F00300 		bic	r0, r0, #3
 978 003e 0C23     		movs	r3, #12
 979 0040 0421     		movs	r1, #4
 980 0042 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 981 0046 002C     		cmp	r4, #0
 982 0048 43F69823 		movw	r3, #15000
 983 004c 4FF00001 		mov	r1, #0
 984 0050 08BF     		it	eq
 985 0052 4FF4FA73 		moveq	r3, #500
 986 0056 CDE90113 		strd	r1, r3, [sp, #4]
 987 005a 0091     		str	r1, [sp]
 988 005c 04AA     		add	r2, sp, #16
 989 005e 2846     		mov	r0, r5
 990 0060 1023     		movs	r3, #16
 991 0062 0221     		movs	r1, #2
 992 0064 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 993 0068 08B0     		add	sp, sp, #32
 994              		@ sp needed
 995 006a 70BD     		pop	{r4, r5, r6, pc}
 996              		.size	_ZN20WifiFirmwareUploader10flashBeginEmm, .-_ZN20WifiFirmwareUploader10flashBeginEmm
 997              		.section	.text._ZN20WifiFirmwareUploader11flashFinishEb,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	_ZN20WifiFirmwareUploader11flashFinishEb
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu fpv4-sp-d16
 1005              		.type	_ZN20WifiFirmwareUploader11flashFinishEb, %function
 1006              	_ZN20WifiFirmwareUploader11flashFinishEb:
 1007              		@ args = 0, pretend = 0, frame = 8
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009 0000 30B5     		push	{r4, r5, lr}
 1010 0002 81F00101 		eor	r1, r1, #1
 1011 0006 87B0     		sub	sp, sp, #28
 1012 0008 0546     		mov	r5, r0
 1013 000a 05AA     		add	r2, sp, #20
 1014 000c 0846     		mov	r0, r1
 1015 000e 0023     		movs	r3, #0
 1016 0010 0421     		movs	r1, #4
 1017 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1018 0016 4FF4FA74 		mov	r4, #500
 1019 001a 0021     		movs	r1, #0
 1020 001c 0423     		movs	r3, #4
 1021 001e CDE90114 		strd	r1, r4, [sp, #4]
 1022 0022 0091     		str	r1, [sp]
 1023 0024 05AA     		add	r2, sp, #20
 1024 0026 2846     		mov	r0, r5
 1025 0028 1946     		mov	r1, r3
 1026 002a FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
ARM GAS  /tmp/ccIQi6Fn.s 			page 19


 1027 002e 07B0     		add	sp, sp, #28
 1028              		@ sp needed
 1029 0030 30BD     		pop	{r4, r5, pc}
 1030              		.size	_ZN20WifiFirmwareUploader11flashFinishEb, .-_ZN20WifiFirmwareUploader11flashFinishEb
 1031 0032 00BF     		.section	.text._ZN20WifiFirmwareUploader8checksumEPKhtt,"ax",%progbits
 1032              		.align	1
 1033              		.p2align 2,,3
 1034              		.global	_ZN20WifiFirmwareUploader8checksumEPKhtt
 1035              		.syntax unified
 1036              		.thumb
 1037              		.thumb_func
 1038              		.fpu fpv4-sp-d16
 1039              		.type	_ZN20WifiFirmwareUploader8checksumEPKhtt, %function
 1040              	_ZN20WifiFirmwareUploader8checksumEPKhtt:
 1041              		@ args = 0, pretend = 0, frame = 0
 1042              		@ frame_needed = 0, uses_anonymous_args = 0
 1043              		@ link register save eliminated.
 1044 0000 0346     		mov	r3, r0
 1045 0002 60B1     		cbz	r0, .L166
 1046 0004 481E     		subs	r0, r1, #1
 1047 0006 80B2     		uxth	r0, r0
 1048 0008 49B1     		cbz	r1, .L166
 1049 000a 0130     		adds	r0, r0, #1
 1050 000c 1918     		adds	r1, r3, r0
 1051 000e 1046     		mov	r0, r2
 1052              	.L164:
 1053 0010 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 1054 0014 9942     		cmp	r1, r3
 1055 0016 80EA0200 		eor	r0, r0, r2
 1056 001a F9D1     		bne	.L164
 1057 001c 7047     		bx	lr
 1058              	.L166:
 1059 001e 1046     		mov	r0, r2
 1060 0020 7047     		bx	lr
 1061              		.size	_ZN20WifiFirmwareUploader8checksumEPKhtt, .-_ZN20WifiFirmwareUploader8checksumEPKhtt
 1062 0022 00BF     		.section	.text._ZN20WifiFirmwareUploader15flashWriteBlockEtt,"ax",%progbits
 1063              		.align	1
 1064              		.p2align 2,,3
 1065              		.global	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 1066              		.syntax unified
 1067              		.thumb
 1068              		.thumb_func
 1069              		.fpu fpv4-sp-d16
 1070              		.type	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, %function
 1071              	_ZN20WifiFirmwareUploader15flashWriteBlockEtt:
 1072              		@ args = 0, pretend = 0, frame = 1040
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1075 0004 ADF5846D 		sub	sp, sp, #1056
 1076 0008 0546     		mov	r5, r0
 1077 000a 0023     		movs	r3, #0
 1078 000c 4FF48060 		mov	r0, #1024
 1079 0010 0F46     		mov	r7, r1
 1080 0012 1646     		mov	r6, r2
 1081 0014 0421     		movs	r1, #4
 1082 0016 04AA     		add	r2, sp, #16
 1083 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
ARM GAS  /tmp/ccIQi6Fn.s 			page 20


 1084 001c 0423     		movs	r3, #4
 1085 001e 1946     		mov	r1, r3
 1086 0020 04AA     		add	r2, sp, #16
 1087 0022 6869     		ldr	r0, [r5, #20]
 1088 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1089 0028 04AA     		add	r2, sp, #16
 1090 002a 0823     		movs	r3, #8
 1091 002c 0421     		movs	r1, #4
 1092 002e 0020     		movs	r0, #0
 1093 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1094 0034 04AA     		add	r2, sp, #16
 1095 0036 0C23     		movs	r3, #12
 1096 0038 0421     		movs	r1, #4
 1097 003a 0020     		movs	r0, #0
 1098 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1099 0040 A868     		ldr	r0, [r5, #8]
 1100 0042 08A9     		add	r1, sp, #32
 1101 0044 4FF48062 		mov	r2, #1024
 1102 0048 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1103 004c B0F5806F 		cmp	r0, #1024
 1104 0050 3CD1     		bne	.L188
 1105              	.L169:
 1106 0052 6B69     		ldr	r3, [r5, #20]
 1107 0054 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 1108 0058 FBB1     		cbz	r3, .L189
 1109              	.L171:
 1110 005a 08AB     		add	r3, sp, #32
 1111 005c 0DF21F41 		addw	r1, sp, #1055
 1112 0060 EF24     		movs	r4, #239
 1113 0062 01E0     		b	.L173
 1114              	.L190:
 1115 0064 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1116              	.L173:
 1117 0068 8B42     		cmp	r3, r1
 1118 006a 84EA0204 		eor	r4, r4, r2
 1119 006e F9D1     		bne	.L190
 1120 0070 0326     		movs	r6, #3
 1121 0072 4FF0C808 		mov	r8, #200
 1122 0076 0027     		movs	r7, #0
 1123              	.L174:
 1124 0078 CDE90178 		strd	r7, r8, [sp, #4]
 1125 007c 0094     		str	r4, [sp]
 1126 007e 4FF48263 		mov	r3, #1040
 1127 0082 04AA     		add	r2, sp, #16
 1128 0084 0321     		movs	r1, #3
 1129 0086 2846     		mov	r0, r5
 1130 0088 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 1131 008c 08B1     		cbz	r0, .L168
 1132 008e 013E     		subs	r6, r6, #1
 1133 0090 F2D1     		bne	.L174
 1134              	.L168:
 1135 0092 0DF5846D 		add	sp, sp, #1056
 1136              		@ sp needed
 1137 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1138              	.L189:
 1139 009a 2C69     		ldr	r4, [r5, #16]
 1140 009c 002C     		cmp	r4, #0
ARM GAS  /tmp/ccIQi6Fn.s 			page 21


 1141 009e DCD1     		bne	.L171
 1142 00a0 E92A     		cmp	r2, #233
 1143 00a2 DAD1     		bne	.L171
 1144 00a4 002E     		cmp	r6, #0
 1145 00a6 D8D0     		beq	.L171
 1146 00a8 0DF12201 		add	r1, sp, #34
 1147 00ac 2246     		mov	r2, r4
 1148 00ae 0220     		movs	r0, #2
 1149 00b0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 1150 00b4 20EA0600 		bic	r0, r0, r6
 1151 00b8 0DF12202 		add	r2, sp, #34
 1152 00bc 3843     		orrs	r0, r0, r7
 1153 00be 2346     		mov	r3, r4
 1154 00c0 0221     		movs	r1, #2
 1155 00c2 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1156 00c6 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 1157 00ca C6E7     		b	.L171
 1158              	.L188:
 1159 00cc 0446     		mov	r4, r0
 1160 00ce A868     		ldr	r0, [r5, #8]
 1161 00d0 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1162 00d4 EB68     		ldr	r3, [r5, #12]
 1163 00d6 9842     		cmp	r0, r3
 1164 00d8 04D0     		beq	.L191
 1165 00da 0420     		movs	r0, #4
 1166 00dc 0DF5846D 		add	sp, sp, #1056
 1167              		@ sp needed
 1168 00e0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1169              	.L191:
 1170 00e4 04F11000 		add	r0, r4, #16
 1171 00e8 04AB     		add	r3, sp, #16
 1172 00ea 1844     		add	r0, r0, r3
 1173 00ec C4F58062 		rsb	r2, r4, #1024
 1174 00f0 FF21     		movs	r1, #255
 1175 00f2 FFF7FEFF 		bl	memset
 1176 00f6 ACE7     		b	.L169
 1177              		.size	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, .-_ZN20WifiFirmwareUploader15flashWriteBlockE
 1178              		.section	.text._ZN20WifiFirmwareUploader7DoEraseEmm,"ax",%progbits
 1179              		.align	1
 1180              		.p2align 2,,3
 1181              		.global	_ZN20WifiFirmwareUploader7DoEraseEmm
 1182              		.syntax unified
 1183              		.thumb
 1184              		.thumb_func
 1185              		.fpu fpv4-sp-d16
 1186              		.type	_ZN20WifiFirmwareUploader7DoEraseEmm, %function
 1187              	_ZN20WifiFirmwareUploader7DoEraseEmm:
 1188              		@ args = 0, pretend = 0, frame = 0
 1189              		@ frame_needed = 0, uses_anonymous_args = 0
 1190 0000 38B5     		push	{r3, r4, r5, lr}
 1191 0002 02F6FF72 		addw	r2, r2, #4095
 1192 0006 C1F30334 		ubfx	r4, r1, #12, #4
 1193 000a 120B     		lsrs	r2, r2, #12
 1194 000c C4F11004 		rsb	r4, r4, #16
 1195 0010 9442     		cmp	r4, r2
 1196 0012 28BF     		it	cs
 1197 0014 1446     		movcs	r4, r2
ARM GAS  /tmp/ccIQi6Fn.s 			page 22


 1198 0016 B2EB440F 		cmp	r2, r4, lsl #1
 1199 001a 0546     		mov	r5, r0
 1200 001c 0DD3     		bcc	.L196
 1201 001e 121B     		subs	r2, r2, r4
 1202 0020 1403     		lsls	r4, r2, #12
 1203              	.L194:
 1204 0022 2246     		mov	r2, r4
 1205 0024 2846     		mov	r0, r5
 1206 0026 0749     		ldr	r1, .L197
 1207 0028 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1208 002c 2246     		mov	r2, r4
 1209 002e 2969     		ldr	r1, [r5, #16]
 1210 0030 2846     		mov	r0, r5
 1211 0032 BDE83840 		pop	{r3, r4, r5, lr}
 1212 0036 FFF7FEBF 		b	_ZN20WifiFirmwareUploader10flashBeginEmm
 1213              	.L196:
 1214 003a 541C     		adds	r4, r2, #1
 1215 003c 6408     		lsrs	r4, r4, #1
 1216 003e 2403     		lsls	r4, r4, #12
 1217 0040 EFE7     		b	.L194
 1218              	.L198:
 1219 0042 00BF     		.align	2
 1220              	.L197:
 1221 0044 00000000 		.word	.LC0
 1222              		.size	_ZN20WifiFirmwareUploader7DoEraseEmm, .-_ZN20WifiFirmwareUploader7DoEraseEmm
 1223              		.section	.text._ZN20WifiFirmwareUploader4SpinEv,"ax",%progbits
 1224              		.align	1
 1225              		.p2align 2,,3
 1226              		.global	_ZN20WifiFirmwareUploader4SpinEv
 1227              		.syntax unified
 1228              		.thumb
 1229              		.thumb_func
 1230              		.fpu fpv4-sp-d16
 1231              		.type	_ZN20WifiFirmwareUploader4SpinEv, %function
 1232              	_ZN20WifiFirmwareUploader4SpinEv:
 1233              		@ args = 0, pretend = 0, frame = 0
 1234              		@ frame_needed = 0, uses_anonymous_args = 0
 1235 0000 836A     		ldr	r3, [r0, #40]
 1236 0002 013B     		subs	r3, r3, #1
 1237 0004 70B5     		push	{r4, r5, r6, lr}
 1238 0006 0446     		mov	r4, r0
 1239 0008 052B     		cmp	r3, #5
 1240 000a 36D8     		bhi	.L199
 1241 000c DFE803F0 		tbb	[pc, r3]
 1242              	.L202:
 1243 0010 50       		.byte	(.L201-.L202)/2
 1244 0011 03       		.byte	(.L203-.L202)/2
 1245 0012 78       		.byte	(.L204-.L202)/2
 1246 0013 8A       		.byte	(.L205-.L202)/2
 1247 0014 A5       		.byte	(.L206-.L202)/2
 1248 0015 36       		.byte	(.L207-.L202)/2
 1249              		.p2align 1
 1250              	.L203:
 1251 0016 FFF7FEFF 		bl	millis
 1252 001a 236A     		ldr	r3, [r4, #32]
 1253 001c C01A     		subs	r0, r0, r3
 1254 001e 3128     		cmp	r0, #49
ARM GAS  /tmp/ccIQi6Fn.s 			page 23


 1255 0020 2BD9     		bls	.L199
 1256 0022 FFF7FEFF 		bl	millis
 1257 0026 636A     		ldr	r3, [r4, #36]
 1258 0028 C01A     		subs	r0, r0, r3
 1259 002a B0F5FA7F 		cmp	r0, #500
 1260 002e 24D3     		bcc	.L199
 1261 0030 4FF47A71 		mov	r1, #1000
 1262 0034 2046     		mov	r0, r4
 1263 0036 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader4SyncEt
 1264 003a 0546     		mov	r5, r0
 1265 003c FFF7FEFF 		bl	millis
 1266 0040 2062     		str	r0, [r4, #32]
 1267 0042 002D     		cmp	r5, #0
 1268 0044 00F0DA80 		beq	.L225
 1269 0048 E269     		ldr	r2, [r4, #28]
 1270 004a 704B     		ldr	r3, .L230
 1271 004c 0132     		adds	r2, r2, #1
 1272 004e A3FB0213 		umull	r1, r3, r3, r2
 1273 0052 5B08     		lsrs	r3, r3, #1
 1274 0054 03EB4303 		add	r3, r3, r3, lsl #1
 1275 0058 9A42     		cmp	r2, r3
 1276 005a E261     		str	r2, [r4, #28]
 1277 005c 0DD1     		bne	.L199
 1278 005e 6C4B     		ldr	r3, .L230+4
 1279 0060 A3FB0213 		umull	r1, r3, r3, r2
 1280 0064 5B08     		lsrs	r3, r3, #1
 1281 0066 03EBC303 		add	r3, r3, r3, lsl #3
 1282 006a 9A42     		cmp	r2, r3
 1283 006c 03D1     		bne	.L213
 1284 006e 6949     		ldr	r1, .L230+8
 1285 0070 2046     		mov	r0, r4
 1286 0072 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1287              	.L213:
 1288 0076 0123     		movs	r3, #1
 1289 0078 A362     		str	r3, [r4, #40]
 1290              	.L199:
 1291 007a 70BD     		pop	{r4, r5, r6, pc}
 1292              	.L207:
 1293 007c 8068     		ldr	r0, [r0, #8]
 1294 007e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1295 0082 2068     		ldr	r0, [r4]
 1296 0084 0368     		ldr	r3, [r0]
 1297 0086 DB6A     		ldr	r3, [r3, #44]
 1298 0088 9847     		blx	r3
 1299 008a E36A     		ldr	r3, [r4, #44]
 1300 008c 002B     		cmp	r3, #0
 1301 008e 74D1     		bne	.L217
 1302 0090 614B     		ldr	r3, .L230+12
 1303 0092 624A     		ldr	r2, .L230+16
 1304 0094 1868     		ldr	r0, [r3]
 1305 0096 0921     		movs	r1, #9
 1306 0098 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1307 009c 236B     		ldr	r3, [r4, #48]
 1308 009e 6068     		ldr	r0, [r4, #4]
 1309 00a0 012B     		cmp	r3, #1
 1310 00a2 00F09980 		beq	.L226
 1311              	.L224:
ARM GAS  /tmp/ccIQi6Fn.s 			page 24


 1312 00a6 FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
 1313              	.L219:
 1314 00aa 0023     		movs	r3, #0
 1315 00ac A362     		str	r3, [r4, #40]
 1316 00ae 70BD     		pop	{r4, r5, r6, pc}
 1317              	.L201:
 1318 00b0 C269     		ldr	r2, [r0, #28]
 1319 00b2 242A     		cmp	r2, #36
 1320 00b4 00F09380 		beq	.L227
 1321 00b8 554B     		ldr	r3, .L230+4
 1322 00ba 5948     		ldr	r0, .L230+20
 1323 00bc A3FB0213 		umull	r1, r3, r3, r2
 1324 00c0 5B08     		lsrs	r3, r3, #1
 1325 00c2 03EBC301 		add	r1, r3, r3, lsl #3
 1326 00c6 8A42     		cmp	r2, r1
 1327 00c8 50F82350 		ldr	r5, [r0, r3, lsl #2]
 1328 00cc 04D1     		bne	.L209
 1329 00ce 2A46     		mov	r2, r5
 1330 00d0 5449     		ldr	r1, .L230+24
 1331 00d2 2046     		mov	r0, r4
 1332 00d4 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1333              	.L209:
 1334 00d8 2068     		ldr	r0, [r4]
 1335 00da 0368     		ldr	r3, [r0]
 1336 00dc 2946     		mov	r1, r5
 1337 00de 9B6A     		ldr	r3, [r3, #40]
 1338 00e0 9847     		blx	r3
 1339 00e2 0121     		movs	r1, #1
 1340 00e4 2068     		ldr	r0, [r4]
 1341 00e6 FFF7FEFF 		bl	_ZN9UARTClass20setInterruptPriorityEm
 1342 00ea 0021     		movs	r1, #0
 1343 00ec 6068     		ldr	r0, [r4, #4]
 1344 00ee FFF7FEFF 		bl	_ZN13WiFiInterface18ResetWiFiForUploadEb
 1345 00f2 FFF7FEFF 		bl	millis
 1346 00f6 0223     		movs	r3, #2
 1347 00f8 C4E90800 		strd	r0, r0, [r4, #32]
 1348 00fc A362     		str	r3, [r4, #40]
 1349 00fe 70BD     		pop	{r4, r5, r6, pc}
 1350              	.L204:
 1351 0100 FFF7FEFF 		bl	millis
 1352 0104 236A     		ldr	r3, [r4, #32]
 1353 0106 C01A     		subs	r0, r0, r3
 1354 0108 0E28     		cmp	r0, #14
 1355 010a B6D9     		bls	.L199
 1356 010c 4FF40052 		mov	r2, #8192
 1357 0110 4549     		ldr	r1, .L230+28
 1358 0112 2046     		mov	r0, r4
 1359 0114 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7DoEraseEmm
 1360 0118 E062     		str	r0, [r4, #44]
 1361 011a 0028     		cmp	r0, #0
 1362 011c 55D1     		bne	.L214
 1363 011e 0423     		movs	r3, #4
 1364 0120 A362     		str	r3, [r4, #40]
 1365 0122 70BD     		pop	{r4, r5, r6, pc}
 1366              	.L205:
 1367 0124 FFF7FEFF 		bl	millis
 1368 0128 236A     		ldr	r3, [r4, #32]
ARM GAS  /tmp/ccIQi6Fn.s 			page 25


 1369 012a C01A     		subs	r0, r0, r3
 1370 012c 0E28     		cmp	r0, #14
 1371 012e A4D9     		bls	.L199
 1372 0130 D4E90321 		ldrd	r2, r1, [r4, #12]
 1373 0134 2046     		mov	r0, r4
 1374 0136 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7DoEraseEmm
 1375 013a 0546     		mov	r5, r0
 1376 013c E062     		str	r0, [r4, #44]
 1377 013e 0028     		cmp	r0, #0
 1378 0140 43D1     		bne	.L214
 1379 0142 3A49     		ldr	r1, .L230+32
 1380 0144 2046     		mov	r0, r4
 1381 0146 0526     		movs	r6, #5
 1382 0148 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1383 014c C4E90556 		strd	r5, r6, [r4, #20]
 1384 0150 FFF7FEFF 		bl	millis
 1385 0154 A662     		str	r6, [r4, #40]
 1386 0156 2062     		str	r0, [r4, #32]
 1387 0158 70BD     		pop	{r4, r5, r6, pc}
 1388              	.L206:
 1389 015a FFF7FEFF 		bl	millis
 1390 015e 236A     		ldr	r3, [r4, #32]
 1391 0160 C01A     		subs	r0, r0, r3
 1392 0162 0E28     		cmp	r0, #14
 1393 0164 89D9     		bls	.L199
 1394 0166 E568     		ldr	r5, [r4, #12]
 1395 0168 6369     		ldr	r3, [r4, #20]
 1396 016a 05F2FF35 		addw	r5, r5, #1023
 1397 016e AD0A     		lsrs	r5, r5, #10
 1398 0170 AB42     		cmp	r3, r5
 1399 0172 0BD3     		bcc	.L228
 1400 0174 0623     		movs	r3, #6
 1401 0176 A362     		str	r3, [r4, #40]
 1402 0178 70BD     		pop	{r4, r5, r6, pc}
 1403              	.L217:
 1404 017a 2D4A     		ldr	r2, .L230+36
 1405 017c 2D49     		ldr	r1, .L230+40
 1406 017e 52F82320 		ldr	r2, [r2, r3, lsl #2]
 1407 0182 2046     		mov	r0, r4
 1408 0184 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1409 0188 6068     		ldr	r0, [r4, #4]
 1410 018a 8CE7     		b	.L224
 1411              	.L228:
 1412 018c 0022     		movs	r2, #0
 1413 018e 1146     		mov	r1, r2
 1414 0190 2046     		mov	r0, r4
 1415 0192 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 1416 0196 E062     		str	r0, [r4, #44]
 1417 0198 FFF7FEFF 		bl	millis
 1418 019c E36A     		ldr	r3, [r4, #44]
 1419 019e 2062     		str	r0, [r4, #32]
 1420 01a0 2BBB     		cbnz	r3, .L229
 1421              	.L216:
 1422 01a2 D4E90531 		ldrd	r3, r1, [r4, #20]
 1423 01a6 6422     		movs	r2, #100
 1424 01a8 581C     		adds	r0, r3, #1
 1425 01aa 02FB03F2 		mul	r2, r2, r3
ARM GAS  /tmp/ccIQi6Fn.s 			page 26


 1426 01ae B2FBF5F2 		udiv	r2, r2, r5
 1427 01b2 9142     		cmp	r1, r2
 1428 01b4 6061     		str	r0, [r4, #20]
 1429 01b6 3FF660AF 		bhi	.L199
 1430 01ba 1F49     		ldr	r1, .L230+44
 1431 01bc 2046     		mov	r0, r4
 1432 01be FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1433 01c2 A369     		ldr	r3, [r4, #24]
 1434 01c4 0533     		adds	r3, r3, #5
 1435 01c6 A361     		str	r3, [r4, #24]
 1436 01c8 70BD     		pop	{r4, r5, r6, pc}
 1437              	.L214:
 1438 01ca 1C49     		ldr	r1, .L230+48
 1439 01cc 2046     		mov	r0, r4
 1440 01ce FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1441 01d2 0623     		movs	r3, #6
 1442 01d4 A362     		str	r3, [r4, #40]
 1443 01d6 70BD     		pop	{r4, r5, r6, pc}
 1444              	.L226:
 1445 01d8 FFF7FEFF 		bl	_ZN13WiFiInterface5StartEv
 1446 01dc 65E7     		b	.L219
 1447              	.L227:
 1448 01de 4068     		ldr	r0, [r0, #4]
 1449 01e0 FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
 1450 01e4 0623     		movs	r3, #6
 1451 01e6 0222     		movs	r2, #2
 1452 01e8 C4E90A32 		strd	r3, r2, [r4, #40]
 1453 01ec 70BD     		pop	{r4, r5, r6, pc}
 1454              	.L229:
 1455 01ee 1449     		ldr	r1, .L230+52
 1456 01f0 2046     		mov	r0, r4
 1457 01f2 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1458 01f6 0623     		movs	r3, #6
 1459 01f8 A362     		str	r3, [r4, #40]
 1460 01fa D2E7     		b	.L216
 1461              	.L225:
 1462 01fc 1149     		ldr	r1, .L230+56
 1463 01fe 2046     		mov	r0, r4
 1464 0200 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1465 0204 0323     		movs	r3, #3
 1466 0206 A362     		str	r3, [r4, #40]
 1467 0208 70BD     		pop	{r4, r5, r6, pc}
 1468              	.L231:
 1469 020a 00BF     		.align	2
 1470              	.L230:
 1471 020c ABAAAAAA 		.word	-1431655765
 1472 0210 398EE338 		.word	954437177
 1473 0214 2C000000 		.word	.LC3
 1474 0218 00000000 		.word	reprap
 1475 021c 88000000 		.word	.LC8
 1476 0220 00000000 		.word	.LANCHOR0
 1477 0224 00000000 		.word	.LC1
 1478 0228 00E03F00 		.word	4186112
 1479 022c 48000000 		.word	.LC5
 1480 0230 00000000 		.word	.LANCHOR1
 1481 0234 9C000000 		.word	.LC9
 1482 0238 78000000 		.word	.LC7
ARM GAS  /tmp/ccIQi6Fn.s 			page 27


 1483 023c 38000000 		.word	.LC4
 1484 0240 5C000000 		.word	.LC6
 1485 0244 20000000 		.word	.LC2
 1486              		.size	_ZN20WifiFirmwareUploader4SpinEv, .-_ZN20WifiFirmwareUploader4SpinEv
 1487              		.section	.text._ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m,"ax",%progbits
 1488              		.align	1
 1489              		.p2align 2,,3
 1490              		.global	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 1491              		.syntax unified
 1492              		.thumb
 1493              		.thumb_func
 1494              		.fpu fpv4-sp-d16
 1495              		.type	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, %function
 1496              	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m:
 1497              		@ args = 0, pretend = 0, frame = 0
 1498              		@ frame_needed = 0, uses_anonymous_args = 0
 1499 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1500 0002 184C     		ldr	r4, .L238
 1501 0004 2668     		ldr	r6, [r4]
 1502 0006 0D46     		mov	r5, r1
 1503 0008 0446     		mov	r4, r0
 1504 000a 1146     		mov	r1, r2
 1505 000c 1F46     		mov	r7, r3
 1506 000e D6F8B409 		ldr	r0, [r6, #2484]
 1507 0012 2A46     		mov	r2, r5
 1508 0014 0023     		movs	r3, #0
 1509 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1510 001a A060     		str	r0, [r4, #8]
 1511 001c D8B1     		cbz	r0, .L236
 1512 001e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1513 0022 E060     		str	r0, [r4, #12]
 1514 0024 68B1     		cbz	r0, .L237
 1515 0026 6068     		ldr	r0, [r4, #4]
 1516 0028 0368     		ldr	r3, [r0]
 1517 002a 1B6A     		ldr	r3, [r3, #32]
 1518 002c 9847     		blx	r3
 1519 002e 2063     		str	r0, [r4, #48]
 1520 0030 6068     		ldr	r0, [r4, #4]
 1521 0032 FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv
 1522 0036 0022     		movs	r2, #0
 1523 0038 0123     		movs	r3, #1
 1524 003a 2761     		str	r7, [r4, #16]
 1525 003c E261     		str	r2, [r4, #28]
 1526 003e A362     		str	r3, [r4, #40]
 1527 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1528              	.L237:
 1529 0042 A068     		ldr	r0, [r4, #8]
 1530 0044 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1531 0048 2A46     		mov	r2, r5
 1532 004a 2046     		mov	r0, r4
 1533 004c 0649     		ldr	r1, .L238+4
 1534 004e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1535 0052 FFF7FEBF 		b	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1536              	.L236:
 1537 0056 2A46     		mov	r2, r5
 1538 0058 2046     		mov	r0, r4
 1539 005a 0449     		ldr	r1, .L238+8
ARM GAS  /tmp/ccIQi6Fn.s 			page 28


 1540 005c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1541 0060 FFF7FEBF 		b	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1542              	.L239:
 1543              		.align	2
 1544              	.L238:
 1545 0064 00000000 		.word	reprap
 1546 0068 18000000 		.word	.LC11
 1547 006c 00000000 		.word	.LC10
 1548              		.size	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, .-_ZN20WifiFirmwareUploader14SendUpdateFi
 1549              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1550              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1551              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1552              	_ZL28cpu_irq_prev_interrupt_state:
 1553 0000 00       		.space	1
 1554              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1555              		.align	2
 1556              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1557              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1558              	_ZL32cpu_irq_critical_section_counter:
 1559 0000 00000000 		.space	4
 1560              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1561              		.align	2
 1562              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1563              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1564              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1565 0000 00000000 		.space	4
 1566              		.section	.rodata._ZL14resultMessages,"a",%progbits
 1567              		.align	2
 1568              		.set	.LANCHOR1,. + 0
 1569              		.type	_ZL14resultMessages, %object
 1570              		.size	_ZL14resultMessages, 44
 1571              	_ZL14resultMessages:
 1572 0000 00000000 		.word	.LC12
 1573 0004 04000000 		.word	.LC13
 1574 0008 0C000000 		.word	.LC14
 1575 000c 18000000 		.word	.LC15
 1576 0010 20000000 		.word	.LC16
 1577 0014 2C000000 		.word	.LC17
 1578 0018 38000000 		.word	.LC18
 1579 001c 44000000 		.word	.LC19
 1580 0020 54000000 		.word	.LC20
 1581 0024 60000000 		.word	.LC21
 1582 0028 6C000000 		.word	.LC22
 1583              		.section	.rodata._ZL15uploadBaudRates,"a",%progbits
 1584              		.align	2
 1585              		.set	.LANCHOR0,. + 0
 1586              		.type	_ZL15uploadBaudRates, %object
 1587              		.size	_ZL15uploadBaudRates, 16
 1588              	_ZL15uploadBaudRates:
 1589 0000 00840300 		.word	230400
 1590 0004 00C20100 		.word	115200
 1591 0008 80240100 		.word	74880
 1592 000c 80250000 		.word	9600
 1593              		.section	.rodata._ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m.str1.4,"aMS",%progbits,1
 1594              		.align	2
 1595              	.LC10:
 1596 0000 4661696C 		.ascii	"Failed to open file %s\012\000"
ARM GAS  /tmp/ccIQi6Fn.s 			page 29


 1596      65642074 
 1596      6F206F70 
 1596      656E2066 
 1596      696C6520 
 1597              	.LC11:
 1598 0018 55706C6F 		.ascii	"Upload file is empty %s\012\000"
 1598      61642066 
 1598      696C6520 
 1598      69732065 
 1598      6D707479 
 1599              		.section	.rodata._ZN20WifiFirmwareUploader4SpinEv.str1.4,"aMS",%progbits,1
 1600              		.align	2
 1601              	.LC1:
 1602 0000 54727969 		.ascii	"Trying to connect at %u baud: \000"
 1602      6E672074 
 1602      6F20636F 
 1602      6E6E6563 
 1602      74206174 
 1603 001f 00       		.space	1
 1604              	.LC2:
 1605 0020 20737563 		.ascii	" success\012\000"
 1605      63657373 
 1605      0A00
 1606 002a 0000     		.space	2
 1607              	.LC3:
 1608 002c 20666169 		.ascii	" failed\012\000"
 1608      6C65640A 
 1608      00
 1609 0035 000000   		.space	3
 1610              	.LC4:
 1611 0038 45726173 		.ascii	"Erase failed\012\000"
 1611      65206661 
 1611      696C6564 
 1611      0A00
 1612 0046 0000     		.space	2
 1613              	.LC5:
 1614 0048 55706C6F 		.ascii	"Uploading file...\012\000"
 1614      6164696E 
 1614      67206669 
 1614      6C652E2E 
 1614      2E0A00
 1615 005b 00       		.space	1
 1616              	.LC6:
 1617 005c 466C6173 		.ascii	"Flash block upload failed\012\000"
 1617      6820626C 
 1617      6F636B20 
 1617      75706C6F 
 1617      61642066 
 1618 0077 00       		.space	1
 1619              	.LC7:
 1620 0078 25752525 		.ascii	"%u%% complete\012\000"
 1620      20636F6D 
 1620      706C6574 
 1620      650A00
 1621 0087 00       		.space	1
 1622              	.LC8:
 1623 0088 55706C6F 		.ascii	"Upload successful\012\000"
ARM GAS  /tmp/ccIQi6Fn.s 			page 30


 1623      61642073 
 1623      75636365 
 1623      73736675 
 1623      6C0A00
 1624 009b 00       		.space	1
 1625              	.LC9:
 1626 009c 4572726F 		.ascii	"Error: Installation failed due to %s error\012\000"
 1626      723A2049 
 1626      6E737461 
 1626      6C6C6174 
 1626      696F6E20 
 1627              		.section	.rodata._ZN20WifiFirmwareUploader7DoEraseEmm.str1.4,"aMS",%progbits,1
 1628              		.align	2
 1629              	.LC0:
 1630 0000 45726173 		.ascii	"Erasing %u bytes...\012\000"
 1630      696E6720 
 1630      25752062 
 1630      79746573 
 1630      2E2E2E0A 
 1631              		.section	.rodata.str1.4,"aMS",%progbits,1
 1632              		.align	2
 1633              	.LC12:
 1634 0000 6E6F00   		.ascii	"no\000"
 1635 0003 00       		.space	1
 1636              	.LC13:
 1637 0004 74696D65 		.ascii	"timeout\000"
 1637      6F757400 
 1638              	.LC14:
 1639 000c 636F6D6D 		.ascii	"comm write\000"
 1639      20777269 
 1639      746500
 1640 0017 00       		.space	1
 1641              	.LC15:
 1642 0018 636F6E6E 		.ascii	"connect\000"
 1642      65637400 
 1643              	.LC16:
 1644 0020 62616420 		.ascii	"bad reply\000"
 1644      7265706C 
 1644      7900
 1645 002a 0000     		.space	2
 1646              	.LC17:
 1647 002c 66696C65 		.ascii	"file read\000"
 1647      20726561 
 1647      6400
 1648 0036 0000     		.space	2
 1649              	.LC18:
 1650 0038 656D7074 		.ascii	"empty file\000"
 1650      79206669 
 1650      6C6500
 1651 0043 00       		.space	1
 1652              	.LC19:
 1653 0044 72657370 		.ascii	"response header\000"
 1653      6F6E7365 
 1653      20686561 
 1653      64657200 
 1654              	.LC20:
 1655 0054 736C6970 		.ascii	"slip frame\000"
ARM GAS  /tmp/ccIQi6Fn.s 			page 31


 1655      20667261 
 1655      6D6500
 1656 005f 00       		.space	1
 1657              	.LC21:
 1658 0060 736C6970 		.ascii	"slip state\000"
 1658      20737461 
 1658      746500
 1659 006b 00       		.space	1
 1660              	.LC22:
 1661 006c 736C6970 		.ascii	"slip data\000"
 1661      20646174 
 1661      6100
 1662              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
