ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi.part.1,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1, %function
  23              	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0A44     		add	r2, r2, r1
  28 0002 10B4     		push	{r4}
  29 0004 0024     		movs	r4, #0
  30 0006 0428     		cmp	r0, #4
  31 0008 94BF     		ite	ls
  32 000a 1018     		addls	r0, r2, r0
  33 000c 101D     		addhi	r0, r2, #4
  34 000e 2146     		mov	r1, r4
  35              	.L2:
  36 0010 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
  37 0014 8B40     		lsls	r3, r3, r1
  38 0016 8242     		cmp	r2, r0
  39 0018 44EA0304 		orr	r4, r4, r3
  40 001c 01F10801 		add	r1, r1, #8
  41 0020 F6D1     		bne	.L2
  42 0022 2046     		mov	r0, r4
  43 0024 5DF8044B 		ldr	r4, [sp], #4
  44 0028 7047     		bx	lr
  45              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1, .-_ZN20WifiFirmwareUploader7getDataEjPKhi.pa
  46 002a 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi.part.2,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2, %function
  54              	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 2


  58 0000 1344     		add	r3, r3, r2
  59 0002 0429     		cmp	r1, #4
  60 0004 94BF     		ite	ls
  61 0006 5918     		addls	r1, r3, r1
  62 0008 191D     		addhi	r1, r3, #4
  63              	.L7:
  64 000a 03F8010B 		strb	r0, [r3], #1
  65 000e 8B42     		cmp	r3, r1
  66 0010 4FEA1020 		lsr	r0, r0, #8
  67 0014 F9D1     		bne	.L7
  68 0016 7047     		bx	lr
  69              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2, .-_ZN20WifiFirmwareUploader7putDataEmjPhi.pa
  70              		.section	.text._ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, %function
  79              	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 10B4     		push	{r4}
  84 0002 0024     		movs	r4, #0
  85 0004 8460     		str	r4, [r0, #8]
  86 0006 8462     		str	r4, [r0, #40]
  87 0008 C0E90012 		strd	r1, r2, [r0]
  88 000c 5DF8044B 		ldr	r4, [sp], #4
  89 0010 7047     		bx	lr
  90              		.size	_ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, .-_ZN20WifiFirmwareUploaderC2ER9UAR
  91              		.global	_ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface
  92              		.thumb_set _ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface,_ZN20WifiFirmwareUploaderC2ER9U
  93 0012 00BF     		.section	.text._ZNK20WifiFirmwareUploader7IsReadyEv,"ax",%progbits
  94              		.align	1
  95              		.p2align 2,,3
  96              		.global	_ZNK20WifiFirmwareUploader7IsReadyEv
  97              		.syntax unified
  98              		.thumb
  99              		.thumb_func
 100              		.fpu fpv4-sp-d16
 101              		.type	_ZNK20WifiFirmwareUploader7IsReadyEv, %function
 102              	_ZNK20WifiFirmwareUploader7IsReadyEv:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106 0000 806A     		ldr	r0, [r0, #40]
 107 0002 B0FA80F0 		clz	r0, r0
 108 0006 4009     		lsrs	r0, r0, #5
 109 0008 7047     		bx	lr
 110              		.size	_ZNK20WifiFirmwareUploader7IsReadyEv, .-_ZNK20WifiFirmwareUploader7IsReadyEv
 111 000a 00BF     		.section	.text._ZN20WifiFirmwareUploader8MessageFEPKcz,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	_ZN20WifiFirmwareUploader8MessageFEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	_ZN20WifiFirmwareUploader8MessageFEPKcz, %function
 120              	_ZN20WifiFirmwareUploader8MessageFEPKcz:
 121              		@ args = 4, pretend = 12, frame = 8
 122              		@ frame_needed = 0, uses_anonymous_args = 1
 123 0000 0EB4     		push	{r1, r2, r3}
 124 0002 00B5     		push	{lr}
 125 0004 82B0     		sub	sp, sp, #8
 126 0006 03AB     		add	r3, sp, #12
 127 0008 0649     		ldr	r1, .L14
 128 000a 53F8042B 		ldr	r2, [r3], #4
 129 000e 4868     		ldr	r0, [r1, #4]	@ unaligned
 130 0010 0193     		str	r3, [sp, #4]
 131 0012 0921     		movs	r1, #9
 132 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 133 0018 02B0     		add	sp, sp, #8
 134              		@ sp needed
 135 001a 5DF804EB 		ldr	lr, [sp], #4
 136 001e 03B0     		add	sp, sp, #12
 137 0020 7047     		bx	lr
 138              	.L15:
 139 0022 00BF     		.align	2
 140              	.L14:
 141 0024 00000000 		.word	reprap
 142              		.size	_ZN20WifiFirmwareUploader8MessageFEPKcz, .-_ZN20WifiFirmwareUploader8MessageFEPKcz
 143              		.section	.text._ZN20WifiFirmwareUploader10flushInputEv,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	_ZN20WifiFirmwareUploader10flushInputEv
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	_ZN20WifiFirmwareUploader10flushInputEv, %function
 152              	_ZN20WifiFirmwareUploader10flushInputEv:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155 0000 10B5     		push	{r4, lr}
 156 0002 0446     		mov	r4, r0
 157 0004 03E0     		b	.L18
 158              	.L20:
 159 0006 2068     		ldr	r0, [r4]
 160 0008 0368     		ldr	r3, [r0]
 161 000a 5B69     		ldr	r3, [r3, #20]
 162 000c 9847     		blx	r3
 163              	.L18:
 164 000e 2068     		ldr	r0, [r4]
 165 0010 0368     		ldr	r3, [r0]
 166 0012 1B69     		ldr	r3, [r3, #16]
 167 0014 9847     		blx	r3
 168 0016 0028     		cmp	r0, #0
 169 0018 F5D1     		bne	.L20
 170 001a 10BD     		pop	{r4, pc}
 171              		.size	_ZN20WifiFirmwareUploader10flushInputEv, .-_ZN20WifiFirmwareUploader10flushInputEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 4


 172              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZN20WifiFirmwareUploader7getDataEjPKhi
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi, %function
 181              	_ZN20WifiFirmwareUploader7getDataEjPKhi:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 0846     		mov	r0, r1
 186 0002 1146     		mov	r1, r2
 187 0004 1AB1     		cbz	r2, .L21
 188 0006 10B1     		cbz	r0, .L21
 189 0008 1A46     		mov	r2, r3
 190 000a FFF7FEBF 		b	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 191              	.L21:
 192 000e 0020     		movs	r0, #0
 193 0010 7047     		bx	lr
 194              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi, .-_ZN20WifiFirmwareUploader7getDataEjPKhi
 195 0012 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZN20WifiFirmwareUploader7putDataEmjPhi
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi, %function
 204              	_ZN20WifiFirmwareUploader7putDataEmjPhi:
 205              		@ args = 4, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 10B4     		push	{r4}
 209 0002 019C     		ldr	r4, [sp, #4]
 210 0004 43B1     		cbz	r3, .L27
 211 0006 0846     		mov	r0, r1
 212 0008 1146     		mov	r1, r2
 213 000a 2AB1     		cbz	r2, .L27
 214 000c 1A46     		mov	r2, r3
 215 000e 2346     		mov	r3, r4
 216 0010 5DF8044B 		ldr	r4, [sp], #4
 217 0014 FFF7FEBF 		b	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 218              	.L27:
 219 0018 5DF8044B 		ldr	r4, [sp], #4
 220 001c 7047     		bx	lr
 221              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi, .-_ZN20WifiFirmwareUploader7putDataEmjPhi
 222 001e 00BF     		.section	.text._ZN20WifiFirmwareUploader8ReadByteERhb,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	_ZN20WifiFirmwareUploader8ReadByteERhb
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	_ZN20WifiFirmwareUploader8ReadByteERhb, %function
 231              	_ZN20WifiFirmwareUploader8ReadByteERhb:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 235 0002 0446     		mov	r4, r0
 236 0004 0068     		ldr	r0, [r0]
 237 0006 0368     		ldr	r3, [r0]
 238 0008 1B69     		ldr	r3, [r3, #16]
 239 000a 0D46     		mov	r5, r1
 240 000c 1646     		mov	r6, r2
 241 000e 9847     		blx	r3
 242 0010 00B9     		cbnz	r0, .L48
 243 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 244              	.L48:
 245 0014 2068     		ldr	r0, [r4]
 246 0016 0368     		ldr	r3, [r0]
 247 0018 5B69     		ldr	r3, [r3, #20]
 248 001a 9847     		blx	r3
 249 001c C7B2     		uxtb	r7, r0
 250 001e 2F70     		strb	r7, [r5]
 251 0020 1EB1     		cbz	r6, .L42
 252 0022 C02F     		cmp	r7, #192
 253 0024 1BD0     		beq	.L41
 254 0026 DB2F     		cmp	r7, #219
 255 0028 01D0     		beq	.L49
 256              	.L42:
 257 002a 0120     		movs	r0, #1
 258 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 259              	.L49:
 260 002e 2068     		ldr	r0, [r4]
 261 0030 0368     		ldr	r3, [r0]
 262 0032 1B69     		ldr	r3, [r3, #16]
 263 0034 9847     		blx	r3
 264 0036 A8B1     		cbz	r0, .L43
 265 0038 2068     		ldr	r0, [r4]
 266 003a 0368     		ldr	r3, [r0]
 267 003c 5B69     		ldr	r3, [r3, #20]
 268 003e 9847     		blx	r3
 269 0040 C0B2     		uxtb	r0, r0
 270 0042 DC28     		cmp	r0, #220
 271 0044 07D0     		beq	.L50
 272 0046 DD28     		cmp	r0, #221
 273 0048 15BF     		itete	ne
 274 004a 2870     		strbne	r0, [r5]
 275 004c 2F70     		strbeq	r7, [r5]
 276 004e 6FF00200 		mvnne	r0, #2
 277 0052 0220     		moveq	r0, #2
 278 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 279              	.L50:
 280 0056 C023     		movs	r3, #192
 281 0058 2B70     		strb	r3, [r5]
 282 005a 0220     		movs	r0, #2
 283 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 284              	.L41:
 285 005e 4FF0FF30 		mov	r0, #-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 6


 286 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 287              	.L43:
 288 0064 6FF00100 		mvn	r0, #1
 289 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 290              		.size	_ZN20WifiFirmwareUploader8ReadByteERhb, .-_ZN20WifiFirmwareUploader8ReadByteERhb
 291 006a 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhj,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
 294              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhj
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 299              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, %function
 300              	_ZN20WifiFirmwareUploader14writePacketRawEPKhj:
 301              		@ args = 0, pretend = 0, frame = 0
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303              		@ link register save eliminated.
 304 0000 0068     		ldr	r0, [r0]
 305 0002 0368     		ldr	r3, [r0]
 306 0004 DB68     		ldr	r3, [r3, #12]
 307 0006 1847     		bx	r3
 308              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, .-_ZN20WifiFirmwareUploader14writePacketRawE
 309              		.section	.text._ZN20WifiFirmwareUploader10readPacketEhPmRjm,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, %function
 318              	_ZN20WifiFirmwareUploader10readPacketEhPmRjm:
 319              		@ args = 4, pretend = 0, frame = 24
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 322 0004 87B0     		sub	sp, sp, #28
 323 0006 9B46     		mov	fp, r3
 324 0008 0546     		mov	r5, r0
 325 000a CDE90021 		strd	r2, r1, [sp]
 326 000e 109F     		ldr	r7, [sp, #64]
 327 0010 FFF7FEFF 		bl	millis
 328 0014 0023     		movs	r3, #0
 329 0016 0646     		mov	r6, r0
 330 0018 1C46     		mov	r4, r3
 331 001a CBF80030 		str	r3, [fp]
 332 001e 9A46     		mov	r10, r3
 333 0020 9946     		mov	r9, r3
 334 0022 4FF00108 		mov	r8, #1
 335              	.L53:
 336 0026 FFF7FEFF 		bl	millis
 337 002a 801B     		subs	r0, r0, r6
 338 002c B842     		cmp	r0, r7
 339 002e 00F2A780 		bhi	.L56
 340 0032 2868     		ldr	r0, [r5]
 341 0034 0368     		ldr	r3, [r0]
 342 0036 1B69     		ldr	r3, [r3, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 7


 343 0038 9847     		blx	r3
 344 003a 4045     		cmp	r0, r8
 345 003c F3DB     		blt	.L53
 346 003e 032C     		cmp	r4, #3
 347 0040 00F21881 		bhi	.L77
 348 0044 DFE804F0 		tbb	[pc, r4]
 349              	.L60:
 350 0048 34       		.byte	(.L59-.L60)/2
 351 0049 12       		.byte	(.L74-.L60)/2
 352 004a 12       		.byte	(.L74-.L60)/2
 353 004b 34       		.byte	(.L59-.L60)/2
 354              		.p2align 1
 355              	.L63:
 356 004c FFF7FEFF 		bl	millis
 357 0050 801B     		subs	r0, r0, r6
 358 0052 8742     		cmp	r7, r0
 359 0054 C0F09480 		bcc	.L56
 360 0058 2868     		ldr	r0, [r5]
 361 005a 0368     		ldr	r3, [r0]
 362 005c 1B69     		ldr	r3, [r3, #16]
 363 005e 9847     		blx	r3
 364 0060 0128     		cmp	r0, #1
 365 0062 40F3D880 		ble	.L102
 366              	.L90:
 367 0066 0124     		movs	r4, #1
 368 0068 4FF00208 		mov	r8, #2
 369              	.L74:
 370 006c 0122     		movs	r2, #1
 371 006e 0DF10F01 		add	r1, sp, #15
 372 0072 2846     		mov	r0, r5
 373 0074 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8ReadByteERhb
 374 0078 431E     		subs	r3, r0, #1
 375 007a 012B     		cmp	r3, #1
 376 007c 00F2F580 		bhi	.L103
 377 0080 012C     		cmp	r4, #1
 378 0082 36D0     		beq	.L104
 379 0084 0AF1010A 		add	r10, r10, #1
 380 0088 DBF80030 		ldr	r3, [fp]
 381 008c 1FFA8AFA 		uxth	r10, r10
 382 0090 9A45     		cmp	r10, r3
 383 0092 79D3     		bcc	.L72
 384 0094 FFF7FEFF 		bl	millis
 385 0098 801B     		subs	r0, r0, r6
 386 009a 8742     		cmp	r7, r0
 387 009c 70D3     		bcc	.L56
 388 009e 2868     		ldr	r0, [r5]
 389 00a0 0368     		ldr	r3, [r0]
 390 00a2 1B69     		ldr	r3, [r3, #16]
 391 00a4 9847     		blx	r3
 392 00a6 0028     		cmp	r0, #0
 393 00a8 4FF00304 		mov	r4, #3
 394 00ac 40F38C80 		ble	.L105
 395              	.L59:
 396 00b0 2868     		ldr	r0, [r5]
 397 00b2 0368     		ldr	r3, [r0]
 398 00b4 5B69     		ldr	r3, [r3, #20]
 399 00b6 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 8


 400 00b8 C0B2     		uxtb	r0, r0
 401 00ba C028     		cmp	r0, #192
 402 00bc 40F0D380 		bne	.L62
 403 00c0 002C     		cmp	r4, #0
 404 00c2 C3D0     		beq	.L63
 405 00c4 04A9     		add	r1, sp, #16
 406 00c6 0022     		movs	r2, #0
 407 00c8 0120     		movs	r0, #1
 408 00ca FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 409 00ce 0122     		movs	r2, #1
 410 00d0 0446     		mov	r4, r0
 411 00d2 04A9     		add	r1, sp, #16
 412 00d4 1046     		mov	r0, r2
 413 00d6 E4B2     		uxtb	r4, r4
 414 00d8 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 415 00dc 012C     		cmp	r4, #1
 416 00de 62D1     		bne	.L106
 417 00e0 019B     		ldr	r3, [sp, #4]
 418 00e2 C0B2     		uxtb	r0, r0
 419 00e4 9842     		cmp	r0, r3
 420 00e6 14BF     		ite	ne
 421 00e8 0620     		movne	r0, #6
 422 00ea 0020     		moveq	r0, #0
 423              	.L52:
 424 00ec 07B0     		add	sp, sp, #28
 425              		@ sp needed
 426 00ee BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 427              	.L104:
 428 00f2 09F10102 		add	r2, r9, #1
 429 00f6 06AB     		add	r3, sp, #24
 430 00f8 4B44     		add	r3, r3, r9
 431 00fa 1FFA82F9 		uxth	r9, r2
 432 00fe B9F1070F 		cmp	r9, #7
 433 0102 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 434 0106 03F8082C 		strb	r2, [r3, #-8]
 435 010a 50D9     		bls	.L68
 436 010c 0222     		movs	r2, #2
 437 010e 1046     		mov	r0, r2
 438 0110 04A9     		add	r1, sp, #16
 439 0112 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 440 0116 009B     		ldr	r3, [sp]
 441 0118 84B2     		uxth	r4, r0
 442 011a CBF80040 		str	r4, [fp]
 443 011e 33B1     		cbz	r3, .L69
 444 0120 0422     		movs	r2, #4
 445 0122 1046     		mov	r0, r2
 446 0124 04A9     		add	r1, sp, #16
 447 0126 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 448 012a 009B     		ldr	r3, [sp]
 449 012c 1860     		str	r0, [r3]
 450              	.L69:
 451 012e 5CBB     		cbnz	r4, .L72
 452 0130 FFF7FEFF 		bl	millis
 453 0134 801B     		subs	r0, r0, r6
 454 0136 8742     		cmp	r7, r0
 455 0138 22D3     		bcc	.L56
 456 013a 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 9


 457 013c 0368     		ldr	r3, [r0]
 458 013e 1B69     		ldr	r3, [r3, #16]
 459 0140 9847     		blx	r3
 460 0142 0028     		cmp	r0, #0
 461 0144 4FF00304 		mov	r4, #3
 462 0148 B2DC     		bgt	.L59
 463 014a FFF7FEFF 		bl	millis
 464 014e 801B     		subs	r0, r0, r6
 465 0150 B842     		cmp	r0, r7
 466 0152 15D8     		bhi	.L56
 467 0154 2868     		ldr	r0, [r5]
 468 0156 0368     		ldr	r3, [r0]
 469 0158 1B69     		ldr	r3, [r3, #16]
 470 015a 9847     		blx	r3
 471 015c 0028     		cmp	r0, #0
 472 015e A7DC     		bgt	.L59
 473 0160 FFF7FEFF 		bl	millis
 474 0164 801B     		subs	r0, r0, r6
 475 0166 8742     		cmp	r7, r0
 476 0168 0AD3     		bcc	.L56
 477 016a 2868     		ldr	r0, [r5]
 478 016c 0368     		ldr	r3, [r0]
 479 016e 1B69     		ldr	r3, [r3, #16]
 480 0170 9847     		blx	r3
 481 0172 0028     		cmp	r0, #0
 482 0174 9CDC     		bgt	.L59
 483 0176 FFF7FEFF 		bl	millis
 484 017a 801B     		subs	r0, r0, r6
 485 017c 8742     		cmp	r7, r0
 486 017e 40D2     		bcs	.L100
 487              	.L56:
 488 0180 0120     		movs	r0, #1
 489 0182 07B0     		add	sp, sp, #28
 490              		@ sp needed
 491 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 492              	.L72:
 493 0188 FFF7FEFF 		bl	millis
 494 018c 801B     		subs	r0, r0, r6
 495 018e 8742     		cmp	r7, r0
 496 0190 F6D3     		bcc	.L56
 497 0192 2868     		ldr	r0, [r5]
 498 0194 0368     		ldr	r3, [r0]
 499 0196 1B69     		ldr	r3, [r3, #16]
 500 0198 9847     		blx	r3
 501 019a 4045     		cmp	r0, r8
 502 019c 4FF00204 		mov	r4, #2
 503 01a0 BFF664AF 		bge	.L74
 504 01a4 3FE7     		b	.L53
 505              	.L106:
 506 01a6 0620     		movs	r0, #6
 507 01a8 07B0     		add	sp, sp, #28
 508              		@ sp needed
 509 01aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 510              	.L68:
 511 01ae FFF7FEFF 		bl	millis
 512 01b2 801B     		subs	r0, r0, r6
 513 01b4 8742     		cmp	r7, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 10


 514 01b6 E3D3     		bcc	.L56
 515 01b8 2868     		ldr	r0, [r5]
 516 01ba 0368     		ldr	r3, [r0]
 517 01bc 1B69     		ldr	r3, [r3, #16]
 518 01be 9847     		blx	r3
 519 01c0 4045     		cmp	r0, r8
 520 01c2 BFF653AF 		bge	.L74
 521 01c6 2EE7     		b	.L53
 522              	.L105:
 523 01c8 FFF7FEFF 		bl	millis
 524 01cc 801B     		subs	r0, r0, r6
 525 01ce 8742     		cmp	r7, r0
 526 01d0 D6D3     		bcc	.L56
 527 01d2 2868     		ldr	r0, [r5]
 528 01d4 0368     		ldr	r3, [r0]
 529 01d6 1B69     		ldr	r3, [r3, #16]
 530 01d8 9847     		blx	r3
 531 01da 0028     		cmp	r0, #0
 532 01dc 3FF768AF 		bgt	.L59
 533 01e0 FFF7FEFF 		bl	millis
 534 01e4 801B     		subs	r0, r0, r6
 535 01e6 8742     		cmp	r7, r0
 536 01e8 CAD3     		bcc	.L56
 537 01ea 2868     		ldr	r0, [r5]
 538 01ec 0368     		ldr	r3, [r0]
 539 01ee 1B69     		ldr	r3, [r3, #16]
 540 01f0 9847     		blx	r3
 541 01f2 0028     		cmp	r0, #0
 542 01f4 3FF75CAF 		bgt	.L59
 543 01f8 FFF7FEFF 		bl	millis
 544 01fc 801B     		subs	r0, r0, r6
 545 01fe B842     		cmp	r0, r7
 546 0200 BED8     		bhi	.L56
 547              	.L100:
 548 0202 2868     		ldr	r0, [r5]
 549 0204 0368     		ldr	r3, [r0]
 550 0206 1B69     		ldr	r3, [r3, #16]
 551 0208 9847     		blx	r3
 552 020a 0028     		cmp	r0, #0
 553 020c 3FF750AF 		bgt	.L59
 554 0210 4FF00108 		mov	r8, #1
 555 0214 07E7     		b	.L53
 556              	.L102:
 557 0216 FFF7FEFF 		bl	millis
 558 021a 801B     		subs	r0, r0, r6
 559 021c 8742     		cmp	r7, r0
 560 021e AFD3     		bcc	.L56
 561 0220 2868     		ldr	r0, [r5]
 562 0222 0368     		ldr	r3, [r0]
 563 0224 1B69     		ldr	r3, [r3, #16]
 564 0226 9847     		blx	r3
 565 0228 0128     		cmp	r0, #1
 566 022a 3FF71CAF 		bgt	.L90
 567 022e FFF7FEFF 		bl	millis
 568 0232 801B     		subs	r0, r0, r6
 569 0234 8742     		cmp	r7, r0
 570 0236 A3D3     		bcc	.L56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 11


 571 0238 2868     		ldr	r0, [r5]
 572 023a 0368     		ldr	r3, [r0]
 573 023c 1B69     		ldr	r3, [r3, #16]
 574 023e 9847     		blx	r3
 575 0240 0128     		cmp	r0, #1
 576 0242 3FF710AF 		bgt	.L90
 577 0246 FFF7FEFF 		bl	millis
 578 024a 801B     		subs	r0, r0, r6
 579 024c 8742     		cmp	r7, r0
 580 024e 97D3     		bcc	.L56
 581 0250 2868     		ldr	r0, [r5]
 582 0252 0368     		ldr	r3, [r0]
 583 0254 1B69     		ldr	r3, [r3, #16]
 584 0256 9847     		blx	r3
 585 0258 0128     		cmp	r0, #1
 586 025a 3FF704AF 		bgt	.L90
 587 025e 0124     		movs	r4, #1
 588 0260 4FF00208 		mov	r8, #2
 589 0264 DFE6     		b	.L53
 590              	.L62:
 591 0266 0720     		movs	r0, #7
 592 0268 40E7     		b	.L52
 593              	.L103:
 594 026a 08B1     		cbz	r0, .L80
 595 026c 0230     		adds	r0, r0, #2
 596 026e FAD1     		bne	.L62
 597              	.L80:
 598 0270 0920     		movs	r0, #9
 599 0272 3BE7     		b	.L52
 600              	.L77:
 601 0274 0820     		movs	r0, #8
 602 0276 39E7     		b	.L52
 603              		.size	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, .-_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 604              		.section	.text._ZN20WifiFirmwareUploader11writePacketEPKhjS1_j,"ax",%progbits
 605              		.align	1
 606              		.p2align 2,,3
 607              		.global	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 608              		.syntax unified
 609              		.thumb
 610              		.thumb_func
 611              		.fpu fpv4-sp-d16
 612              		.type	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, %function
 613              	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j:
 614              		@ args = 4, pretend = 0, frame = 0
 615              		@ frame_needed = 0, uses_anonymous_args = 0
 616 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 617 0004 0546     		mov	r5, r0
 618 0006 0068     		ldr	r0, [r0]
 619 0008 DDF82080 		ldr	r8, [sp, #32]
 620 000c 0F46     		mov	r7, r1
 621 000e 0168     		ldr	r1, [r0]
 622 0010 1446     		mov	r4, r2
 623 0012 8A68     		ldr	r2, [r1, #8]
 624 0014 C021     		movs	r1, #192
 625 0016 1E46     		mov	r6, r3
 626 0018 9047     		blx	r2
 627 001a C4B1     		cbz	r4, .L114
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 12


 628 001c 07EB0409 		add	r9, r7, r4
 629 0020 02E0     		b	.L115
 630              	.L113:
 631 0022 9047     		blx	r2
 632              	.L112:
 633 0024 4F45     		cmp	r7, r9
 634 0026 12D0     		beq	.L114
 635              	.L115:
 636 0028 2C68     		ldr	r4, [r5]
 637 002a 17F8013B 		ldrb	r3, [r7], #1	@ zero_extendqisi2
 638 002e 2168     		ldr	r1, [r4]
 639 0030 C02B     		cmp	r3, #192
 640 0032 8A68     		ldr	r2, [r1, #8]
 641 0034 2046     		mov	r0, r4
 642 0036 1946     		mov	r1, r3
 643 0038 2BD0     		beq	.L126
 644 003a DB2B     		cmp	r3, #219
 645 003c F1D1     		bne	.L113
 646 003e 9047     		blx	r2
 647 0040 2868     		ldr	r0, [r5]
 648 0042 0368     		ldr	r3, [r0]
 649 0044 DD21     		movs	r1, #221
 650 0046 9B68     		ldr	r3, [r3, #8]
 651 0048 9847     		blx	r3
 652 004a 4F45     		cmp	r7, r9
 653 004c ECD1     		bne	.L115
 654              	.L114:
 655 004e B8F1000F 		cmp	r8, #0
 656 0052 17D0     		beq	.L109
 657 0054 B044     		add	r8, r8, r6
 658 0056 02E0     		b	.L119
 659              	.L118:
 660 0058 A047     		blx	r4
 661              	.L117:
 662 005a 4645     		cmp	r6, r8
 663 005c 12D0     		beq	.L109
 664              	.L119:
 665 005e 2A68     		ldr	r2, [r5]
 666 0060 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 667 0064 1168     		ldr	r1, [r2]
 668 0066 C02B     		cmp	r3, #192
 669 0068 8C68     		ldr	r4, [r1, #8]
 670 006a 1046     		mov	r0, r2
 671 006c 1946     		mov	r1, r3
 672 006e 18D0     		beq	.L127
 673 0070 DB2B     		cmp	r3, #219
 674 0072 F1D1     		bne	.L118
 675 0074 A047     		blx	r4
 676 0076 2868     		ldr	r0, [r5]
 677 0078 0368     		ldr	r3, [r0]
 678 007a DD21     		movs	r1, #221
 679 007c 9B68     		ldr	r3, [r3, #8]
 680 007e 9847     		blx	r3
 681 0080 4645     		cmp	r6, r8
 682 0082 ECD1     		bne	.L119
 683              	.L109:
 684 0084 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 13


 685 0086 0368     		ldr	r3, [r0]
 686 0088 C021     		movs	r1, #192
 687 008a 9B68     		ldr	r3, [r3, #8]
 688 008c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 689 0090 1847     		bx	r3
 690              	.L126:
 691 0092 DB21     		movs	r1, #219
 692 0094 9047     		blx	r2
 693 0096 2868     		ldr	r0, [r5]
 694 0098 0368     		ldr	r3, [r0]
 695 009a DC21     		movs	r1, #220
 696 009c 9B68     		ldr	r3, [r3, #8]
 697 009e 9847     		blx	r3
 698 00a0 C0E7     		b	.L112
 699              	.L127:
 700 00a2 DB21     		movs	r1, #219
 701 00a4 A047     		blx	r4
 702 00a6 2868     		ldr	r0, [r5]
 703 00a8 0368     		ldr	r3, [r0]
 704 00aa DC21     		movs	r1, #220
 705 00ac 9B68     		ldr	r3, [r3, #8]
 706 00ae 9847     		blx	r3
 707 00b0 D3E7     		b	.L117
 708              		.size	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, .-_ZN20WifiFirmwareUploader11writePacketEPK
 709 00b2 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j,"ax",%progbits
 710              		.align	1
 711              		.p2align 2,,3
 712              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 713              		.syntax unified
 714              		.thumb
 715              		.thumb_func
 716              		.fpu fpv4-sp-d16
 717              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, %function
 718              	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j:
 719              		@ args = 4, pretend = 0, frame = 0
 720              		@ frame_needed = 0, uses_anonymous_args = 0
 721 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 722 0004 0446     		mov	r4, r0
 723 0006 0068     		ldr	r0, [r0]
 724 0008 089F     		ldr	r7, [sp, #32]
 725 000a 0D46     		mov	r5, r1
 726 000c 0168     		ldr	r1, [r0]
 727 000e D1F80890 		ldr	r9, [r1, #8]
 728 0012 C021     		movs	r1, #192
 729 0014 1E46     		mov	r6, r3
 730 0016 9046     		mov	r8, r2
 731 0018 C847     		blx	r9
 732 001a 2068     		ldr	r0, [r4]
 733 001c 0368     		ldr	r3, [r0]
 734 001e 4246     		mov	r2, r8
 735 0020 2946     		mov	r1, r5
 736 0022 DB68     		ldr	r3, [r3, #12]
 737 0024 9847     		blx	r3
 738 0026 2068     		ldr	r0, [r4]
 739 0028 0568     		ldr	r5, [r0]
 740 002a 3146     		mov	r1, r6
 741 002c EB68     		ldr	r3, [r5, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 14


 742 002e 3A46     		mov	r2, r7
 743 0030 9847     		blx	r3
 744 0032 2068     		ldr	r0, [r4]
 745 0034 0368     		ldr	r3, [r0]
 746 0036 C021     		movs	r1, #192
 747 0038 9B68     		ldr	r3, [r3, #8]
 748 003a BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 749 003e 1847     		bx	r3
 750              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, .-_ZN20WifiFirmwareUploader14writePacket
 751              		.section	.text._ZN20WifiFirmwareUploader11sendCommandEhmPKhj,"ax",%progbits
 752              		.align	1
 753              		.p2align 2,,3
 754              		.global	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 755              		.syntax unified
 756              		.thumb
 757              		.thumb_func
 758              		.fpu fpv4-sp-d16
 759              		.type	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, %function
 760              	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj:
 761              		@ args = 4, pretend = 0, frame = 8
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 764 0004 1F46     		mov	r7, r3
 765 0006 84B0     		sub	sp, sp, #16
 766 0008 0023     		movs	r3, #0
 767 000a 0D46     		mov	r5, r1
 768 000c 9046     		mov	r8, r2
 769 000e 0446     		mov	r4, r0
 770 0010 02AA     		add	r2, sp, #8
 771 0012 1846     		mov	r0, r3
 772 0014 0121     		movs	r1, #1
 773 0016 0A9E     		ldr	r6, [sp, #40]
 774 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 775 001c 0123     		movs	r3, #1
 776 001e 02AA     		add	r2, sp, #8
 777 0020 2846     		mov	r0, r5
 778 0022 1946     		mov	r1, r3
 779 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 780 0028 0223     		movs	r3, #2
 781 002a 02AA     		add	r2, sp, #8
 782 002c 3046     		mov	r0, r6
 783 002e 1946     		mov	r1, r3
 784 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 785 0034 0423     		movs	r3, #4
 786 0036 4046     		mov	r0, r8
 787 0038 02AA     		add	r2, sp, #8
 788 003a 1946     		mov	r1, r3
 789 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 790 0040 03E0     		b	.L132
 791              	.L136:
 792 0042 2068     		ldr	r0, [r4]
 793 0044 0368     		ldr	r3, [r0]
 794 0046 5B69     		ldr	r3, [r3, #20]
 795 0048 9847     		blx	r3
 796              	.L132:
 797 004a 2068     		ldr	r0, [r4]
 798 004c 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 15


 799 004e 1B69     		ldr	r3, [r3, #16]
 800 0050 9847     		blx	r3
 801 0052 0028     		cmp	r0, #0
 802 0054 F5D1     		bne	.L136
 803 0056 082D     		cmp	r5, #8
 804 0058 0096     		str	r6, [sp]
 805 005a 3B46     		mov	r3, r7
 806 005c 07D0     		beq	.L137
 807 005e 02A9     		add	r1, sp, #8
 808 0060 2046     		mov	r0, r4
 809 0062 0822     		movs	r2, #8
 810 0064 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 811 0068 04B0     		add	sp, sp, #16
 812              		@ sp needed
 813 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 814              	.L137:
 815 006e 2A46     		mov	r2, r5
 816 0070 02A9     		add	r1, sp, #8
 817 0072 2046     		mov	r0, r4
 818 0074 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 819 0078 04B0     		add	sp, sp, #16
 820              		@ sp needed
 821 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 822              		.size	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, .-_ZN20WifiFirmwareUploader11sendCommandEhmPK
 823 007e 00BF     		.section	.text._ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm,"ax",%progbits
 824              		.align	1
 825              		.p2align 2,,3
 826              		.global	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 827              		.syntax unified
 828              		.thumb
 829              		.thumb_func
 830              		.fpu fpv4-sp-d16
 831              		.type	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, %function
 832              	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm:
 833              		@ args = 12, pretend = 0, frame = 8
 834              		@ frame_needed = 0, uses_anonymous_args = 0
 835 0000 70B5     		push	{r4, r5, r6, lr}
 836 0002 84B0     		sub	sp, sp, #16
 837 0004 0446     		mov	r4, r0
 838 0006 0093     		str	r3, [sp]
 839 0008 0D46     		mov	r5, r1
 840 000a 1346     		mov	r3, r2
 841 000c 0A9E     		ldr	r6, [sp, #40]
 842 000e 089A     		ldr	r2, [sp, #32]
 843 0010 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 844 0014 0096     		str	r6, [sp]
 845 0016 2946     		mov	r1, r5
 846 0018 2046     		mov	r0, r4
 847 001a 099A     		ldr	r2, [sp, #36]
 848 001c 03AB     		add	r3, sp, #12
 849 001e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 850 0022 18B9     		cbnz	r0, .L138
 851 0024 039B     		ldr	r3, [sp, #12]
 852 0026 022B     		cmp	r3, #2
 853 0028 18BF     		it	ne
 854 002a 0320     		movne	r0, #3
 855              	.L138:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 16


 856 002c 04B0     		add	sp, sp, #16
 857              		@ sp needed
 858 002e 70BD     		pop	{r4, r5, r6, pc}
 859              		.size	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, .-_ZN20WifiFirmwareUploader9doCommandEhPKhjmP
 860              		.section	.text._ZN20WifiFirmwareUploader4SyncEt,"ax",%progbits
 861              		.align	1
 862              		.p2align 2,,3
 863              		.global	_ZN20WifiFirmwareUploader4SyncEt
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu fpv4-sp-d16
 868              		.type	_ZN20WifiFirmwareUploader4SyncEt, %function
 869              	_ZN20WifiFirmwareUploader4SyncEt:
 870              		@ args = 0, pretend = 0, frame = 40
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 873 0004 8EB0     		sub	sp, sp, #56
 874 0006 0646     		mov	r6, r0
 875 0008 8846     		mov	r8, r1
 876 000a 2022     		movs	r2, #32
 877 000c 5521     		movs	r1, #85
 878 000e 06A8     		add	r0, sp, #24
 879 0010 FFF7FEFF 		bl	memset
 880 0014 0025     		movs	r5, #0
 881 0016 1F4B     		ldr	r3, .L154
 882 0018 0593     		str	r3, [sp, #20]
 883 001a CDF80880 		str	r8, [sp, #8]
 884 001e 3046     		mov	r0, r6
 885 0020 05AA     		add	r2, sp, #20
 886 0022 CDE90055 		strd	r5, r5, [sp]
 887 0026 2423     		movs	r3, #36
 888 0028 0821     		movs	r1, #8
 889 002a FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 890 002e 0628     		cmp	r0, #6
 891 0030 18BF     		it	ne
 892 0032 0446     		movne	r4, r0
 893 0034 19D1     		bne	.L144
 894 0036 04AF     		add	r7, sp, #16
 895 0038 2A46     		mov	r2, r5
 896 003a CDF80080 		str	r8, [sp]
 897 003e 3B46     		mov	r3, r7
 898 0040 0821     		movs	r1, #8
 899 0042 3046     		mov	r0, r6
 900 0044 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 901 0048 0925     		movs	r5, #9
 902 004a 0446     		mov	r4, r0
 903              	.L146:
 904 004c 062C     		cmp	r4, #6
 905 004e 3B46     		mov	r3, r7
 906 0050 4FF00002 		mov	r2, #0
 907 0054 4FF00801 		mov	r1, #8
 908 0058 3046     		mov	r0, r6
 909 005a 06D1     		bne	.L144
 910 005c CDF80080 		str	r8, [sp]
 911 0060 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 912 0064 013D     		subs	r5, r5, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 17


 913 0066 0446     		mov	r4, r0
 914 0068 F0D1     		bne	.L146
 915              	.L144:
 916 006a 7CB9     		cbnz	r4, .L143
 917 006c 04AF     		add	r7, sp, #16
 918 006e 4FF4FA75 		mov	r5, #500
 919 0072 02E0     		b	.L149
 920              	.L153:
 921 0074 049B     		ldr	r3, [sp, #16]
 922 0076 022B     		cmp	r3, #2
 923 0078 08D1     		bne	.L143
 924              	.L149:
 925 007a 0095     		str	r5, [sp]
 926 007c 3B46     		mov	r3, r7
 927 007e 0022     		movs	r2, #0
 928 0080 0821     		movs	r1, #8
 929 0082 3046     		mov	r0, r6
 930 0084 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 931 0088 0028     		cmp	r0, #0
 932 008a F3D0     		beq	.L153
 933              	.L143:
 934 008c 2046     		mov	r0, r4
 935 008e 0EB0     		add	sp, sp, #56
 936              		@ sp needed
 937 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 938              	.L155:
 939              		.align	2
 940              	.L154:
 941 0094 07071220 		.word	538052359
 942              		.size	_ZN20WifiFirmwareUploader4SyncEt, .-_ZN20WifiFirmwareUploader4SyncEt
 943              		.section	.text._ZN20WifiFirmwareUploader10flashBeginEmm,"ax",%progbits
 944              		.align	1
 945              		.p2align 2,,3
 946              		.global	_ZN20WifiFirmwareUploader10flashBeginEmm
 947              		.syntax unified
 948              		.thumb
 949              		.thumb_func
 950              		.fpu fpv4-sp-d16
 951              		.type	_ZN20WifiFirmwareUploader10flashBeginEmm, %function
 952              	_ZN20WifiFirmwareUploader10flashBeginEmm:
 953              		@ args = 0, pretend = 0, frame = 16
 954              		@ frame_needed = 0, uses_anonymous_args = 0
 955 0000 70B5     		push	{r4, r5, r6, lr}
 956 0002 88B0     		sub	sp, sp, #32
 957 0004 1446     		mov	r4, r2
 958 0006 0546     		mov	r5, r0
 959 0008 0E46     		mov	r6, r1
 960 000a 1046     		mov	r0, r2
 961 000c 0023     		movs	r3, #0
 962 000e 04AA     		add	r2, sp, #16
 963 0010 0421     		movs	r1, #4
 964 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 965 0016 0423     		movs	r3, #4
 966 0018 04F2FF30 		addw	r0, r4, #1023
 967 001c 04AA     		add	r2, sp, #16
 968 001e 1946     		mov	r1, r3
 969 0020 800A     		lsrs	r0, r0, #10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 18


 970 0022 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 971 0026 04AA     		add	r2, sp, #16
 972 0028 0823     		movs	r3, #8
 973 002a 0421     		movs	r1, #4
 974 002c 4FF48060 		mov	r0, #1024
 975 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 976 0034 26F47F70 		bic	r0, r6, #1020
 977 0038 04AA     		add	r2, sp, #16
 978 003a 20F00300 		bic	r0, r0, #3
 979 003e 0C23     		movs	r3, #12
 980 0040 0421     		movs	r1, #4
 981 0042 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 982 0046 002C     		cmp	r4, #0
 983 0048 43F69823 		movw	r3, #15000
 984 004c 4FF00001 		mov	r1, #0
 985 0050 08BF     		it	eq
 986 0052 4FF4FA73 		moveq	r3, #500
 987 0056 CDE90113 		strd	r1, r3, [sp, #4]
 988 005a 0091     		str	r1, [sp]
 989 005c 04AA     		add	r2, sp, #16
 990 005e 2846     		mov	r0, r5
 991 0060 1023     		movs	r3, #16
 992 0062 0221     		movs	r1, #2
 993 0064 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 994 0068 08B0     		add	sp, sp, #32
 995              		@ sp needed
 996 006a 70BD     		pop	{r4, r5, r6, pc}
 997              		.size	_ZN20WifiFirmwareUploader10flashBeginEmm, .-_ZN20WifiFirmwareUploader10flashBeginEmm
 998              		.section	.text._ZN20WifiFirmwareUploader11flashFinishEb,"ax",%progbits
 999              		.align	1
 1000              		.p2align 2,,3
 1001              		.global	_ZN20WifiFirmwareUploader11flashFinishEb
 1002              		.syntax unified
 1003              		.thumb
 1004              		.thumb_func
 1005              		.fpu fpv4-sp-d16
 1006              		.type	_ZN20WifiFirmwareUploader11flashFinishEb, %function
 1007              	_ZN20WifiFirmwareUploader11flashFinishEb:
 1008              		@ args = 0, pretend = 0, frame = 8
 1009              		@ frame_needed = 0, uses_anonymous_args = 0
 1010 0000 30B5     		push	{r4, r5, lr}
 1011 0002 81F00101 		eor	r1, r1, #1
 1012 0006 87B0     		sub	sp, sp, #28
 1013 0008 0546     		mov	r5, r0
 1014 000a 05AA     		add	r2, sp, #20
 1015 000c 0846     		mov	r0, r1
 1016 000e 0023     		movs	r3, #0
 1017 0010 0421     		movs	r1, #4
 1018 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1019 0016 4FF4FA74 		mov	r4, #500
 1020 001a 0021     		movs	r1, #0
 1021 001c 0423     		movs	r3, #4
 1022 001e CDE90114 		strd	r1, r4, [sp, #4]
 1023 0022 0091     		str	r1, [sp]
 1024 0024 05AA     		add	r2, sp, #20
 1025 0026 2846     		mov	r0, r5
 1026 0028 1946     		mov	r1, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 19


 1027 002a FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 1028 002e 07B0     		add	sp, sp, #28
 1029              		@ sp needed
 1030 0030 30BD     		pop	{r4, r5, pc}
 1031              		.size	_ZN20WifiFirmwareUploader11flashFinishEb, .-_ZN20WifiFirmwareUploader11flashFinishEb
 1032 0032 00BF     		.section	.text._ZN20WifiFirmwareUploader8checksumEPKhtt,"ax",%progbits
 1033              		.align	1
 1034              		.p2align 2,,3
 1035              		.global	_ZN20WifiFirmwareUploader8checksumEPKhtt
 1036              		.syntax unified
 1037              		.thumb
 1038              		.thumb_func
 1039              		.fpu fpv4-sp-d16
 1040              		.type	_ZN20WifiFirmwareUploader8checksumEPKhtt, %function
 1041              	_ZN20WifiFirmwareUploader8checksumEPKhtt:
 1042              		@ args = 0, pretend = 0, frame = 0
 1043              		@ frame_needed = 0, uses_anonymous_args = 0
 1044              		@ link register save eliminated.
 1045 0000 0346     		mov	r3, r0
 1046 0002 60B1     		cbz	r0, .L166
 1047 0004 481E     		subs	r0, r1, #1
 1048 0006 80B2     		uxth	r0, r0
 1049 0008 49B1     		cbz	r1, .L166
 1050 000a 0130     		adds	r0, r0, #1
 1051 000c 1918     		adds	r1, r3, r0
 1052 000e 1046     		mov	r0, r2
 1053              	.L164:
 1054 0010 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 1055 0014 9942     		cmp	r1, r3
 1056 0016 80EA0200 		eor	r0, r0, r2
 1057 001a F9D1     		bne	.L164
 1058 001c 7047     		bx	lr
 1059              	.L166:
 1060 001e 1046     		mov	r0, r2
 1061 0020 7047     		bx	lr
 1062              		.size	_ZN20WifiFirmwareUploader8checksumEPKhtt, .-_ZN20WifiFirmwareUploader8checksumEPKhtt
 1063 0022 00BF     		.section	.text._ZN20WifiFirmwareUploader15flashWriteBlockEtt,"ax",%progbits
 1064              		.align	1
 1065              		.p2align 2,,3
 1066              		.global	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 1067              		.syntax unified
 1068              		.thumb
 1069              		.thumb_func
 1070              		.fpu fpv4-sp-d16
 1071              		.type	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, %function
 1072              	_ZN20WifiFirmwareUploader15flashWriteBlockEtt:
 1073              		@ args = 0, pretend = 0, frame = 1040
 1074              		@ frame_needed = 0, uses_anonymous_args = 0
 1075 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1076 0004 ADF5846D 		sub	sp, sp, #1056
 1077 0008 0546     		mov	r5, r0
 1078 000a 0023     		movs	r3, #0
 1079 000c 4FF48060 		mov	r0, #1024
 1080 0010 0F46     		mov	r7, r1
 1081 0012 1646     		mov	r6, r2
 1082 0014 0421     		movs	r1, #4
 1083 0016 04AA     		add	r2, sp, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 20


 1084 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1085 001c 0423     		movs	r3, #4
 1086 001e 1946     		mov	r1, r3
 1087 0020 04AA     		add	r2, sp, #16
 1088 0022 6869     		ldr	r0, [r5, #20]
 1089 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1090 0028 04AA     		add	r2, sp, #16
 1091 002a 0823     		movs	r3, #8
 1092 002c 0421     		movs	r1, #4
 1093 002e 0020     		movs	r0, #0
 1094 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1095 0034 04AA     		add	r2, sp, #16
 1096 0036 0C23     		movs	r3, #12
 1097 0038 0421     		movs	r1, #4
 1098 003a 0020     		movs	r0, #0
 1099 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1100 0040 A868     		ldr	r0, [r5, #8]
 1101 0042 08A9     		add	r1, sp, #32
 1102 0044 4FF48062 		mov	r2, #1024
 1103 0048 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1104 004c B0F5806F 		cmp	r0, #1024
 1105 0050 3CD1     		bne	.L188
 1106              	.L169:
 1107 0052 6B69     		ldr	r3, [r5, #20]
 1108 0054 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 1109 0058 FBB1     		cbz	r3, .L189
 1110              	.L171:
 1111 005a 08AB     		add	r3, sp, #32
 1112 005c 0DF21F41 		addw	r1, sp, #1055
 1113 0060 EF24     		movs	r4, #239
 1114 0062 01E0     		b	.L173
 1115              	.L190:
 1116 0064 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1117              	.L173:
 1118 0068 8B42     		cmp	r3, r1
 1119 006a 84EA0204 		eor	r4, r4, r2
 1120 006e F9D1     		bne	.L190
 1121 0070 0326     		movs	r6, #3
 1122 0072 4FF0C808 		mov	r8, #200
 1123 0076 0027     		movs	r7, #0
 1124              	.L174:
 1125 0078 CDE90178 		strd	r7, r8, [sp, #4]
 1126 007c 0094     		str	r4, [sp]
 1127 007e 4FF48263 		mov	r3, #1040
 1128 0082 04AA     		add	r2, sp, #16
 1129 0084 0321     		movs	r1, #3
 1130 0086 2846     		mov	r0, r5
 1131 0088 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 1132 008c 08B1     		cbz	r0, .L168
 1133 008e 013E     		subs	r6, r6, #1
 1134 0090 F2D1     		bne	.L174
 1135              	.L168:
 1136 0092 0DF5846D 		add	sp, sp, #1056
 1137              		@ sp needed
 1138 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1139              	.L189:
 1140 009a 2C69     		ldr	r4, [r5, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 21


 1141 009c 002C     		cmp	r4, #0
 1142 009e DCD1     		bne	.L171
 1143 00a0 E92A     		cmp	r2, #233
 1144 00a2 DAD1     		bne	.L171
 1145 00a4 002E     		cmp	r6, #0
 1146 00a6 D8D0     		beq	.L171
 1147 00a8 0DF12201 		add	r1, sp, #34
 1148 00ac 2246     		mov	r2, r4
 1149 00ae 0220     		movs	r0, #2
 1150 00b0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.1
 1151 00b4 20EA0600 		bic	r0, r0, r6
 1152 00b8 0DF12202 		add	r2, sp, #34
 1153 00bc 3843     		orrs	r0, r0, r7
 1154 00be 2346     		mov	r3, r4
 1155 00c0 0221     		movs	r1, #2
 1156 00c2 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.2
 1157 00c6 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 1158 00ca C6E7     		b	.L171
 1159              	.L188:
 1160 00cc 0446     		mov	r4, r0
 1161 00ce A868     		ldr	r0, [r5, #8]
 1162 00d0 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1163 00d4 EB68     		ldr	r3, [r5, #12]
 1164 00d6 9842     		cmp	r0, r3
 1165 00d8 04D0     		beq	.L191
 1166 00da 0420     		movs	r0, #4
 1167 00dc 0DF5846D 		add	sp, sp, #1056
 1168              		@ sp needed
 1169 00e0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1170              	.L191:
 1171 00e4 04F11000 		add	r0, r4, #16
 1172 00e8 04AB     		add	r3, sp, #16
 1173 00ea 1844     		add	r0, r0, r3
 1174 00ec C4F58062 		rsb	r2, r4, #1024
 1175 00f0 FF21     		movs	r1, #255
 1176 00f2 FFF7FEFF 		bl	memset
 1177 00f6 ACE7     		b	.L169
 1178              		.size	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, .-_ZN20WifiFirmwareUploader15flashWriteBlockE
 1179              		.section	.text._ZN20WifiFirmwareUploader7DoEraseEmm,"ax",%progbits
 1180              		.align	1
 1181              		.p2align 2,,3
 1182              		.global	_ZN20WifiFirmwareUploader7DoEraseEmm
 1183              		.syntax unified
 1184              		.thumb
 1185              		.thumb_func
 1186              		.fpu fpv4-sp-d16
 1187              		.type	_ZN20WifiFirmwareUploader7DoEraseEmm, %function
 1188              	_ZN20WifiFirmwareUploader7DoEraseEmm:
 1189              		@ args = 0, pretend = 0, frame = 0
 1190              		@ frame_needed = 0, uses_anonymous_args = 0
 1191 0000 38B5     		push	{r3, r4, r5, lr}
 1192 0002 02F6FF72 		addw	r2, r2, #4095
 1193 0006 C1F30334 		ubfx	r4, r1, #12, #4
 1194 000a 120B     		lsrs	r2, r2, #12
 1195 000c C4F11004 		rsb	r4, r4, #16
 1196 0010 9442     		cmp	r4, r2
 1197 0012 28BF     		it	cs
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 22


 1198 0014 1446     		movcs	r4, r2
 1199 0016 B2EB440F 		cmp	r2, r4, lsl #1
 1200 001a 0546     		mov	r5, r0
 1201 001c 0DD3     		bcc	.L196
 1202 001e 121B     		subs	r2, r2, r4
 1203 0020 1403     		lsls	r4, r2, #12
 1204              	.L194:
 1205 0022 2246     		mov	r2, r4
 1206 0024 2846     		mov	r0, r5
 1207 0026 0749     		ldr	r1, .L197
 1208 0028 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1209 002c 2246     		mov	r2, r4
 1210 002e 2969     		ldr	r1, [r5, #16]
 1211 0030 2846     		mov	r0, r5
 1212 0032 BDE83840 		pop	{r3, r4, r5, lr}
 1213 0036 FFF7FEBF 		b	_ZN20WifiFirmwareUploader10flashBeginEmm
 1214              	.L196:
 1215 003a 541C     		adds	r4, r2, #1
 1216 003c 6408     		lsrs	r4, r4, #1
 1217 003e 2403     		lsls	r4, r4, #12
 1218 0040 EFE7     		b	.L194
 1219              	.L198:
 1220 0042 00BF     		.align	2
 1221              	.L197:
 1222 0044 00000000 		.word	.LC0
 1223              		.size	_ZN20WifiFirmwareUploader7DoEraseEmm, .-_ZN20WifiFirmwareUploader7DoEraseEmm
 1224              		.section	.text._ZN20WifiFirmwareUploader4SpinEv,"ax",%progbits
 1225              		.align	1
 1226              		.p2align 2,,3
 1227              		.global	_ZN20WifiFirmwareUploader4SpinEv
 1228              		.syntax unified
 1229              		.thumb
 1230              		.thumb_func
 1231              		.fpu fpv4-sp-d16
 1232              		.type	_ZN20WifiFirmwareUploader4SpinEv, %function
 1233              	_ZN20WifiFirmwareUploader4SpinEv:
 1234              		@ args = 0, pretend = 0, frame = 0
 1235              		@ frame_needed = 0, uses_anonymous_args = 0
 1236 0000 836A     		ldr	r3, [r0, #40]
 1237 0002 013B     		subs	r3, r3, #1
 1238 0004 70B5     		push	{r4, r5, r6, lr}
 1239 0006 0446     		mov	r4, r0
 1240 0008 052B     		cmp	r3, #5
 1241 000a 36D8     		bhi	.L199
 1242 000c DFE803F0 		tbb	[pc, r3]
 1243              	.L202:
 1244 0010 4E       		.byte	(.L201-.L202)/2
 1245 0011 03       		.byte	(.L203-.L202)/2
 1246 0012 76       		.byte	(.L204-.L202)/2
 1247 0013 88       		.byte	(.L205-.L202)/2
 1248 0014 A3       		.byte	(.L206-.L202)/2
 1249 0015 36       		.byte	(.L207-.L202)/2
 1250              		.p2align 1
 1251              	.L203:
 1252 0016 FFF7FEFF 		bl	millis
 1253 001a 236A     		ldr	r3, [r4, #32]
 1254 001c C01A     		subs	r0, r0, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 23


 1255 001e 3128     		cmp	r0, #49
 1256 0020 2BD9     		bls	.L199
 1257 0022 FFF7FEFF 		bl	millis
 1258 0026 636A     		ldr	r3, [r4, #36]
 1259 0028 C01A     		subs	r0, r0, r3
 1260 002a B0F5FA7F 		cmp	r0, #500
 1261 002e 24D3     		bcc	.L199
 1262 0030 4FF47A71 		mov	r1, #1000
 1263 0034 2046     		mov	r0, r4
 1264 0036 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader4SyncEt
 1265 003a 0546     		mov	r5, r0
 1266 003c FFF7FEFF 		bl	millis
 1267 0040 2062     		str	r0, [r4, #32]
 1268 0042 002D     		cmp	r5, #0
 1269 0044 00F0D880 		beq	.L225
 1270 0048 E269     		ldr	r2, [r4, #28]
 1271 004a 6F4B     		ldr	r3, .L230
 1272 004c 0132     		adds	r2, r2, #1
 1273 004e A3FB0213 		umull	r1, r3, r3, r2
 1274 0052 5B08     		lsrs	r3, r3, #1
 1275 0054 03EB4303 		add	r3, r3, r3, lsl #1
 1276 0058 9A42     		cmp	r2, r3
 1277 005a E261     		str	r2, [r4, #28]
 1278 005c 0DD1     		bne	.L199
 1279 005e 6B4B     		ldr	r3, .L230+4
 1280 0060 A3FB0213 		umull	r1, r3, r3, r2
 1281 0064 5B08     		lsrs	r3, r3, #1
 1282 0066 03EBC303 		add	r3, r3, r3, lsl #3
 1283 006a 9A42     		cmp	r2, r3
 1284 006c 03D1     		bne	.L213
 1285 006e 6849     		ldr	r1, .L230+8
 1286 0070 2046     		mov	r0, r4
 1287 0072 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1288              	.L213:
 1289 0076 0123     		movs	r3, #1
 1290 0078 A362     		str	r3, [r4, #40]
 1291              	.L199:
 1292 007a 70BD     		pop	{r4, r5, r6, pc}
 1293              	.L207:
 1294 007c 8068     		ldr	r0, [r0, #8]
 1295 007e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1296 0082 2068     		ldr	r0, [r4]
 1297 0084 0368     		ldr	r3, [r0]
 1298 0086 DB6A     		ldr	r3, [r3, #44]
 1299 0088 9847     		blx	r3
 1300 008a E36A     		ldr	r3, [r4, #44]
 1301 008c 002B     		cmp	r3, #0
 1302 008e 72D1     		bne	.L217
 1303 0090 2046     		mov	r0, r4
 1304 0092 6049     		ldr	r1, .L230+12
 1305 0094 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1306 0098 236B     		ldr	r3, [r4, #48]
 1307 009a 6068     		ldr	r0, [r4, #4]
 1308 009c 012B     		cmp	r3, #1
 1309 009e 00F09980 		beq	.L226
 1310              	.L224:
 1311 00a2 FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 24


 1312              	.L219:
 1313 00a6 0023     		movs	r3, #0
 1314 00a8 A362     		str	r3, [r4, #40]
 1315 00aa 70BD     		pop	{r4, r5, r6, pc}
 1316              	.L201:
 1317 00ac C269     		ldr	r2, [r0, #28]
 1318 00ae 242A     		cmp	r2, #36
 1319 00b0 00F09380 		beq	.L227
 1320 00b4 554B     		ldr	r3, .L230+4
 1321 00b6 5848     		ldr	r0, .L230+16
 1322 00b8 A3FB0213 		umull	r1, r3, r3, r2
 1323 00bc 5B08     		lsrs	r3, r3, #1
 1324 00be 03EBC301 		add	r1, r3, r3, lsl #3
 1325 00c2 8A42     		cmp	r2, r1
 1326 00c4 50F82350 		ldr	r5, [r0, r3, lsl #2]
 1327 00c8 04D1     		bne	.L209
 1328 00ca 2A46     		mov	r2, r5
 1329 00cc 5349     		ldr	r1, .L230+20
 1330 00ce 2046     		mov	r0, r4
 1331 00d0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1332              	.L209:
 1333 00d4 2068     		ldr	r0, [r4]
 1334 00d6 0368     		ldr	r3, [r0]
 1335 00d8 2946     		mov	r1, r5
 1336 00da 9B6A     		ldr	r3, [r3, #40]
 1337 00dc 9847     		blx	r3
 1338 00de 0121     		movs	r1, #1
 1339 00e0 2068     		ldr	r0, [r4]
 1340 00e2 FFF7FEFF 		bl	_ZN9UARTClass20setInterruptPriorityEm
 1341 00e6 0021     		movs	r1, #0
 1342 00e8 6068     		ldr	r0, [r4, #4]
 1343 00ea FFF7FEFF 		bl	_ZN13WiFiInterface18ResetWiFiForUploadEb
 1344 00ee FFF7FEFF 		bl	millis
 1345 00f2 0223     		movs	r3, #2
 1346 00f4 C4E90800 		strd	r0, r0, [r4, #32]
 1347 00f8 A362     		str	r3, [r4, #40]
 1348 00fa 70BD     		pop	{r4, r5, r6, pc}
 1349              	.L204:
 1350 00fc FFF7FEFF 		bl	millis
 1351 0100 236A     		ldr	r3, [r4, #32]
 1352 0102 C01A     		subs	r0, r0, r3
 1353 0104 0E28     		cmp	r0, #14
 1354 0106 B8D9     		bls	.L199
 1355 0108 4FF40052 		mov	r2, #8192
 1356 010c 4449     		ldr	r1, .L230+24
 1357 010e 2046     		mov	r0, r4
 1358 0110 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7DoEraseEmm
 1359 0114 E062     		str	r0, [r4, #44]
 1360 0116 0028     		cmp	r0, #0
 1361 0118 55D1     		bne	.L214
 1362 011a 0423     		movs	r3, #4
 1363 011c A362     		str	r3, [r4, #40]
 1364 011e 70BD     		pop	{r4, r5, r6, pc}
 1365              	.L205:
 1366 0120 FFF7FEFF 		bl	millis
 1367 0124 236A     		ldr	r3, [r4, #32]
 1368 0126 C01A     		subs	r0, r0, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 25


 1369 0128 0E28     		cmp	r0, #14
 1370 012a A6D9     		bls	.L199
 1371 012c D4E90321 		ldrd	r2, r1, [r4, #12]
 1372 0130 2046     		mov	r0, r4
 1373 0132 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7DoEraseEmm
 1374 0136 0546     		mov	r5, r0
 1375 0138 E062     		str	r0, [r4, #44]
 1376 013a 0028     		cmp	r0, #0
 1377 013c 43D1     		bne	.L214
 1378 013e 3949     		ldr	r1, .L230+28
 1379 0140 2046     		mov	r0, r4
 1380 0142 0526     		movs	r6, #5
 1381 0144 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1382 0148 C4E90556 		strd	r5, r6, [r4, #20]
 1383 014c FFF7FEFF 		bl	millis
 1384 0150 A662     		str	r6, [r4, #40]
 1385 0152 2062     		str	r0, [r4, #32]
 1386 0154 70BD     		pop	{r4, r5, r6, pc}
 1387              	.L206:
 1388 0156 FFF7FEFF 		bl	millis
 1389 015a 236A     		ldr	r3, [r4, #32]
 1390 015c C01A     		subs	r0, r0, r3
 1391 015e 0E28     		cmp	r0, #14
 1392 0160 8BD9     		bls	.L199
 1393 0162 E568     		ldr	r5, [r4, #12]
 1394 0164 6369     		ldr	r3, [r4, #20]
 1395 0166 05F2FF35 		addw	r5, r5, #1023
 1396 016a AD0A     		lsrs	r5, r5, #10
 1397 016c AB42     		cmp	r3, r5
 1398 016e 0BD3     		bcc	.L228
 1399 0170 0623     		movs	r3, #6
 1400 0172 A362     		str	r3, [r4, #40]
 1401 0174 70BD     		pop	{r4, r5, r6, pc}
 1402              	.L217:
 1403 0176 2C4A     		ldr	r2, .L230+32
 1404 0178 2C49     		ldr	r1, .L230+36
 1405 017a 52F82320 		ldr	r2, [r2, r3, lsl #2]
 1406 017e 2046     		mov	r0, r4
 1407 0180 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1408 0184 6068     		ldr	r0, [r4, #4]
 1409 0186 8CE7     		b	.L224
 1410              	.L228:
 1411 0188 0022     		movs	r2, #0
 1412 018a 1146     		mov	r1, r2
 1413 018c 2046     		mov	r0, r4
 1414 018e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 1415 0192 E062     		str	r0, [r4, #44]
 1416 0194 FFF7FEFF 		bl	millis
 1417 0198 E36A     		ldr	r3, [r4, #44]
 1418 019a 2062     		str	r0, [r4, #32]
 1419 019c 2BBB     		cbnz	r3, .L229
 1420              	.L216:
 1421 019e D4E90531 		ldrd	r3, r1, [r4, #20]
 1422 01a2 6422     		movs	r2, #100
 1423 01a4 581C     		adds	r0, r3, #1
 1424 01a6 02FB03F2 		mul	r2, r2, r3
 1425 01aa B2FBF5F2 		udiv	r2, r2, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 26


 1426 01ae 9142     		cmp	r1, r2
 1427 01b0 6061     		str	r0, [r4, #20]
 1428 01b2 3FF662AF 		bhi	.L199
 1429 01b6 1E49     		ldr	r1, .L230+40
 1430 01b8 2046     		mov	r0, r4
 1431 01ba FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1432 01be A369     		ldr	r3, [r4, #24]
 1433 01c0 0533     		adds	r3, r3, #5
 1434 01c2 A361     		str	r3, [r4, #24]
 1435 01c4 70BD     		pop	{r4, r5, r6, pc}
 1436              	.L214:
 1437 01c6 1B49     		ldr	r1, .L230+44
 1438 01c8 2046     		mov	r0, r4
 1439 01ca FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1440 01ce 0623     		movs	r3, #6
 1441 01d0 A362     		str	r3, [r4, #40]
 1442 01d2 70BD     		pop	{r4, r5, r6, pc}
 1443              	.L226:
 1444 01d4 FFF7FEFF 		bl	_ZN13WiFiInterface5StartEv
 1445 01d8 65E7     		b	.L219
 1446              	.L227:
 1447 01da 4068     		ldr	r0, [r0, #4]
 1448 01dc FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
 1449 01e0 0623     		movs	r3, #6
 1450 01e2 0222     		movs	r2, #2
 1451 01e4 C4E90A32 		strd	r3, r2, [r4, #40]
 1452 01e8 70BD     		pop	{r4, r5, r6, pc}
 1453              	.L229:
 1454 01ea 1349     		ldr	r1, .L230+48
 1455 01ec 2046     		mov	r0, r4
 1456 01ee FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1457 01f2 0623     		movs	r3, #6
 1458 01f4 A362     		str	r3, [r4, #40]
 1459 01f6 D2E7     		b	.L216
 1460              	.L225:
 1461 01f8 1049     		ldr	r1, .L230+52
 1462 01fa 2046     		mov	r0, r4
 1463 01fc FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1464 0200 0323     		movs	r3, #3
 1465 0202 A362     		str	r3, [r4, #40]
 1466 0204 70BD     		pop	{r4, r5, r6, pc}
 1467              	.L231:
 1468 0206 00BF     		.align	2
 1469              	.L230:
 1470 0208 ABAAAAAA 		.word	-1431655765
 1471 020c 398EE338 		.word	954437177
 1472 0210 2C000000 		.word	.LC3
 1473 0214 88000000 		.word	.LC8
 1474 0218 00000000 		.word	.LANCHOR0
 1475 021c 00000000 		.word	.LC1
 1476 0220 00E03F00 		.word	4186112
 1477 0224 48000000 		.word	.LC5
 1478 0228 00000000 		.word	.LANCHOR1
 1479 022c 9C000000 		.word	.LC9
 1480 0230 78000000 		.word	.LC7
 1481 0234 38000000 		.word	.LC4
 1482 0238 5C000000 		.word	.LC6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 27


 1483 023c 20000000 		.word	.LC2
 1484              		.size	_ZN20WifiFirmwareUploader4SpinEv, .-_ZN20WifiFirmwareUploader4SpinEv
 1485              		.section	.text._ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m,"ax",%progbits
 1486              		.align	1
 1487              		.p2align 2,,3
 1488              		.global	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 1489              		.syntax unified
 1490              		.thumb
 1491              		.thumb_func
 1492              		.fpu fpv4-sp-d16
 1493              		.type	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, %function
 1494              	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m:
 1495              		@ args = 0, pretend = 0, frame = 0
 1496              		@ frame_needed = 0, uses_anonymous_args = 0
 1497 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1498 0002 184C     		ldr	r4, .L238
 1499 0004 6668     		ldr	r6, [r4, #4]
 1500 0006 0D46     		mov	r5, r1
 1501 0008 0446     		mov	r4, r0
 1502 000a 1146     		mov	r1, r2
 1503 000c 1F46     		mov	r7, r3
 1504 000e D6F8DC0B 		ldr	r0, [r6, #3036]
 1505 0012 2A46     		mov	r2, r5
 1506 0014 0023     		movs	r3, #0
 1507 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1508 001a A060     		str	r0, [r4, #8]
 1509 001c D8B1     		cbz	r0, .L236
 1510 001e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1511 0022 E060     		str	r0, [r4, #12]
 1512 0024 68B1     		cbz	r0, .L237
 1513 0026 6068     		ldr	r0, [r4, #4]
 1514 0028 0368     		ldr	r3, [r0]
 1515 002a 5B6A     		ldr	r3, [r3, #36]
 1516 002c 9847     		blx	r3
 1517 002e 2063     		str	r0, [r4, #48]
 1518 0030 6068     		ldr	r0, [r4, #4]
 1519 0032 FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv
 1520 0036 0022     		movs	r2, #0
 1521 0038 0123     		movs	r3, #1
 1522 003a 2761     		str	r7, [r4, #16]
 1523 003c E261     		str	r2, [r4, #28]
 1524 003e A362     		str	r3, [r4, #40]
 1525 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1526              	.L237:
 1527 0042 A068     		ldr	r0, [r4, #8]
 1528 0044 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1529 0048 2A46     		mov	r2, r5
 1530 004a 2046     		mov	r0, r4
 1531 004c 0649     		ldr	r1, .L238+4
 1532 004e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1533 0052 FFF7FEBF 		b	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1534              	.L236:
 1535 0056 2A46     		mov	r2, r5
 1536 0058 2046     		mov	r0, r4
 1537 005a 0449     		ldr	r1, .L238+8
 1538 005c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1539 0060 FFF7FEBF 		b	_ZN20WifiFirmwareUploader8MessageFEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 28


 1540              	.L239:
 1541              		.align	2
 1542              	.L238:
 1543 0064 00000000 		.word	reprap
 1544 0068 18000000 		.word	.LC11
 1545 006c 00000000 		.word	.LC10
 1546              		.size	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, .-_ZN20WifiFirmwareUploader14SendUpdateFi
 1547              		.section	.text.startup._GLOBAL__sub_I__ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface,"ax"
 1548              		.align	1
 1549              		.p2align 2,,3
 1550              		.syntax unified
 1551              		.thumb
 1552              		.thumb_func
 1553              		.fpu fpv4-sp-d16
 1554              		.type	_GLOBAL__sub_I__ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, %function
 1555              	_GLOBAL__sub_I__ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface:
 1556              		@ args = 0, pretend = 0, frame = 0
 1557              		@ frame_needed = 0, uses_anonymous_args = 0
 1558              		@ link register save eliminated.
 1559 0000 0149     		ldr	r1, .L241
 1560 0002 0248     		ldr	r0, .L241+4
 1561 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 1562              	.L242:
 1563              		.align	2
 1564              	.L241:
 1565 0008 00000000 		.word	.LANCHOR2
 1566 000c 00000000 		.word	.LANCHOR3
 1567              		.size	_GLOBAL__sub_I__ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface, .-_GLOBAL__sub_I__ZN
 1568              		.section	.init_array,"aw",%init_array
 1569              		.align	2
 1570 0000 00000000 		.word	_GLOBAL__sub_I__ZN20WifiFirmwareUploaderC2ER9UARTClassR13WiFiInterface(target1)
 1571              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 1572              		.align	2
 1573              		.set	.LANCHOR3,. + 0
 1574              		.type	_ZL14DefaultNetMask, %object
 1575              		.size	_ZL14DefaultNetMask, 4
 1576              	_ZL14DefaultNetMask:
 1577 0000 00000000 		.space	4
 1578              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1579              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1580              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1581              	_ZL28cpu_irq_prev_interrupt_state:
 1582 0000 00       		.space	1
 1583              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1584              		.align	2
 1585              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1586              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1587              	_ZL32cpu_irq_critical_section_counter:
 1588 0000 00000000 		.space	4
 1589              		.section	.rodata.._142,"a",%progbits
 1590              		.align	2
 1591              		.set	.LANCHOR2,. + 0
 1592              		.type	._142, %object
 1593              		.size	._142, 4
 1594              	._142:
 1595 0000 FF       		.byte	-1
 1596 0001 FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 29


 1597 0002 FF       		.byte	-1
 1598 0003 00       		.byte	0
 1599              		.section	.rodata._ZL14resultMessages,"a",%progbits
 1600              		.align	2
 1601              		.set	.LANCHOR1,. + 0
 1602              		.type	_ZL14resultMessages, %object
 1603              		.size	_ZL14resultMessages, 44
 1604              	_ZL14resultMessages:
 1605 0000 00000000 		.word	.LC12
 1606 0004 04000000 		.word	.LC13
 1607 0008 0C000000 		.word	.LC14
 1608 000c 18000000 		.word	.LC15
 1609 0010 20000000 		.word	.LC16
 1610 0014 2C000000 		.word	.LC17
 1611 0018 38000000 		.word	.LC18
 1612 001c 44000000 		.word	.LC19
 1613 0020 54000000 		.word	.LC20
 1614 0024 60000000 		.word	.LC21
 1615 0028 6C000000 		.word	.LC22
 1616              		.section	.rodata._ZL15uploadBaudRates,"a",%progbits
 1617              		.align	2
 1618              		.set	.LANCHOR0,. + 0
 1619              		.type	_ZL15uploadBaudRates, %object
 1620              		.size	_ZL15uploadBaudRates, 16
 1621              	_ZL15uploadBaudRates:
 1622 0000 00840300 		.word	230400
 1623 0004 00C20100 		.word	115200
 1624 0008 80240100 		.word	74880
 1625 000c 80250000 		.word	9600
 1626              		.section	.rodata._ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m.str1.4,"aMS",%progbits,1
 1627              		.align	2
 1628              	.LC10:
 1629 0000 4661696C 		.ascii	"Failed to open file %s\012\000"
 1629      65642074 
 1629      6F206F70 
 1629      656E2066 
 1629      696C6520 
 1630              	.LC11:
 1631 0018 55706C6F 		.ascii	"Upload file is empty %s\012\000"
 1631      61642066 
 1631      696C6520 
 1631      69732065 
 1631      6D707479 
 1632              		.section	.rodata._ZN20WifiFirmwareUploader4SpinEv.str1.4,"aMS",%progbits,1
 1633              		.align	2
 1634              	.LC1:
 1635 0000 54727969 		.ascii	"Trying to connect at %u baud: \000"
 1635      6E672074 
 1635      6F20636F 
 1635      6E6E6563 
 1635      74206174 
 1636 001f 00       		.space	1
 1637              	.LC2:
 1638 0020 20737563 		.ascii	" success\012\000"
 1638      63657373 
 1638      0A00
 1639 002a 0000     		.space	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 30


 1640              	.LC3:
 1641 002c 20666169 		.ascii	" failed\012\000"
 1641      6C65640A 
 1641      00
 1642 0035 000000   		.space	3
 1643              	.LC4:
 1644 0038 45726173 		.ascii	"Erase failed\012\000"
 1644      65206661 
 1644      696C6564 
 1644      0A00
 1645 0046 0000     		.space	2
 1646              	.LC5:
 1647 0048 55706C6F 		.ascii	"Uploading file...\012\000"
 1647      6164696E 
 1647      67206669 
 1647      6C652E2E 
 1647      2E0A00
 1648 005b 00       		.space	1
 1649              	.LC6:
 1650 005c 466C6173 		.ascii	"Flash block upload failed\012\000"
 1650      6820626C 
 1650      6F636B20 
 1650      75706C6F 
 1650      61642066 
 1651 0077 00       		.space	1
 1652              	.LC7:
 1653 0078 25752525 		.ascii	"%u%% complete\012\000"
 1653      20636F6D 
 1653      706C6574 
 1653      650A00
 1654 0087 00       		.space	1
 1655              	.LC8:
 1656 0088 55706C6F 		.ascii	"Upload successful\012\000"
 1656      61642073 
 1656      75636365 
 1656      73736675 
 1656      6C0A00
 1657 009b 00       		.space	1
 1658              	.LC9:
 1659 009c 4572726F 		.ascii	"Error: Installation failed due to %s error\012\000"
 1659      723A2049 
 1659      6E737461 
 1659      6C6C6174 
 1659      696F6E20 
 1660              		.section	.rodata._ZN20WifiFirmwareUploader7DoEraseEmm.str1.4,"aMS",%progbits,1
 1661              		.align	2
 1662              	.LC0:
 1663 0000 45726173 		.ascii	"Erasing %u bytes...\012\000"
 1663      696E6720 
 1663      25752062 
 1663      79746573 
 1663      2E2E2E0A 
 1664              		.section	.rodata.str1.4,"aMS",%progbits,1
 1665              		.align	2
 1666              	.LC12:
 1667 0000 6E6F00   		.ascii	"no\000"
 1668 0003 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0f4U9Q.s 			page 31


 1669              	.LC13:
 1670 0004 74696D65 		.ascii	"timeout\000"
 1670      6F757400 
 1671              	.LC14:
 1672 000c 636F6D6D 		.ascii	"comm write\000"
 1672      20777269 
 1672      746500
 1673 0017 00       		.space	1
 1674              	.LC15:
 1675 0018 636F6E6E 		.ascii	"connect\000"
 1675      65637400 
 1676              	.LC16:
 1677 0020 62616420 		.ascii	"bad reply\000"
 1677      7265706C 
 1677      7900
 1678 002a 0000     		.space	2
 1679              	.LC17:
 1680 002c 66696C65 		.ascii	"file read\000"
 1680      20726561 
 1680      6400
 1681 0036 0000     		.space	2
 1682              	.LC18:
 1683 0038 656D7074 		.ascii	"empty file\000"
 1683      79206669 
 1683      6C6500
 1684 0043 00       		.space	1
 1685              	.LC19:
 1686 0044 72657370 		.ascii	"response header\000"
 1686      6F6E7365 
 1686      20686561 
 1686      64657200 
 1687              	.LC20:
 1688 0054 736C6970 		.ascii	"slip frame\000"
 1688      20667261 
 1688      6D6500
 1689 005f 00       		.space	1
 1690              	.LC21:
 1691 0060 736C6970 		.ascii	"slip state\000"
 1691      20737461 
 1691      746500
 1692 006b 00       		.space	1
 1693              	.LC22:
 1694 006c 736C6970 		.ascii	"slip data\000"
 1694      20646174 
 1694      6100
 1695              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
