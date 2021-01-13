ARM GAS  /tmp/ccvlxX0x.s 			page 1


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
  11              		.file	"hsmci.c"
  12              		.section	.text.hsmci_send_cmd_execute,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	hsmci_send_cmd_execute, %function
  20              	hsmci_send_cmd_execute:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  24 0002 01F03F03 		and	r3, r1, #63
  25 0006 CF05     		lsls	r7, r1, #23
  26 0008 40EA0300 		orr	r0, r0, r3
  27 000c 03D5     		bpl	.L2
  28 000e 0E05     		lsls	r6, r1, #20
  29 0010 2BD5     		bpl	.L3
  30 0012 40F48450 		orr	r0, r0, #4224
  31              	.L2:
  32 0016 4FF08043 		mov	r3, #1073741824
  33 001a 4C04     		lsls	r4, r1, #17
  34 001c 48BF     		it	mi
  35 001e 40F40060 		orrmi	r0, r0, #2048
  36 0022 1A61     		str	r2, [r3, #16]
  37 0024 1C46     		mov	r4, r3
  38 0026 01F48052 		and	r2, r1, #4096
  39 002a 5861     		str	r0, [r3, #20]
  40 002c 04E0     		b	.L9
  41              	.L34:
  42 002e 13F41F0F 		tst	r3, #10420224
  43 0032 25D1     		bne	.L32
  44              	.L7:
  45 0034 D807     		lsls	r0, r3, #31
  46 0036 1FD4     		bmi	.L33
  47              	.L9:
  48 0038 236C     		ldr	r3, [r4, #64]
  49 003a 002A     		cmp	r2, #0
  50 003c F7D1     		bne	.L34
  51 003e 13F41B0F 		tst	r3, #10158080
  52 0042 F7D0     		beq	.L7
  53 0044 4FF0800E 		mov	lr, #128
  54 0048 0523     		movs	r3, #5
  55 004a 6068     		ldr	r0, [r4, #4]
  56 004c A768     		ldr	r7, [r4, #8]
  57 004e E668     		ldr	r6, [r4, #12]
ARM GAS  /tmp/ccvlxX0x.s 			page 2


  58 0050 E569     		ldr	r5, [r4, #28]
  59 0052 616D     		ldr	r1, [r4, #84]
  60 0054 C4F800E0 		str	lr, [r4]
  61 0058 6060     		str	r0, [r4, #4]
  62 005a A760     		str	r7, [r4, #8]
  63 005c 1046     		mov	r0, r2
  64 005e E660     		str	r6, [r4, #12]
  65 0060 E561     		str	r5, [r4, #28]
  66 0062 6165     		str	r1, [r4, #84]
  67 0064 2265     		str	r2, [r4, #80]
  68 0066 2360     		str	r3, [r4]
  69 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
  70              	.L3:
  71 006a 8D04     		lsls	r5, r1, #18
  72 006c 4CBF     		ite	mi
  73 006e 40F48650 		orrmi	r0, r0, #4288
  74 0072 40F48250 		orrpl	r0, r0, #4160
  75 0076 CEE7     		b	.L2
  76              	.L33:
  77 0078 8B04     		lsls	r3, r1, #18
  78 007a 15D4     		bmi	.L35
  79              	.L30:
  80 007c 0120     		movs	r0, #1
  81 007e F0BD     		pop	{r4, r5, r6, r7, pc}
  82              	.L32:
  83 0080 0023     		movs	r3, #0
  84 0082 4FF0800E 		mov	lr, #128
  85 0086 0522     		movs	r2, #5
  86 0088 6768     		ldr	r7, [r4, #4]
  87 008a A068     		ldr	r0, [r4, #8]
  88 008c E668     		ldr	r6, [r4, #12]
  89 008e E569     		ldr	r5, [r4, #28]
  90 0090 616D     		ldr	r1, [r4, #84]
  91 0092 C4F800E0 		str	lr, [r4]
  92 0096 6760     		str	r7, [r4, #4]
  93 0098 A060     		str	r0, [r4, #8]
  94 009a E660     		str	r6, [r4, #12]
  95 009c 1846     		mov	r0, r3
  96 009e E561     		str	r5, [r4, #28]
  97 00a0 6165     		str	r1, [r4, #84]
  98 00a2 2365     		str	r3, [r4, #80]
  99 00a4 2260     		str	r2, [r4]
 100 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 101              	.L35:
 102 00a8 4FF08041 		mov	r1, #1073741824
 103 00ac 4FF0FF32 		mov	r2, #-1
 104 00b0 0B6C     		ldr	r3, [r1, #64]
 105              	.L11:
 106 00b2 03F03003 		and	r3, r3, #48
 107 00b6 202B     		cmp	r3, #32
 108 00b8 E0D0     		beq	.L30
 109 00ba 013A     		subs	r2, r2, #1
 110 00bc 0B6C     		ldr	r3, [r1, #64]
 111 00be F8D1     		bne	.L11
 112 00c0 4FF0800E 		mov	lr, #128
 113 00c4 0523     		movs	r3, #5
 114 00c6 4868     		ldr	r0, [r1, #4]
ARM GAS  /tmp/ccvlxX0x.s 			page 3


 115 00c8 8F68     		ldr	r7, [r1, #8]
 116 00ca CE68     		ldr	r6, [r1, #12]
 117 00cc CD69     		ldr	r5, [r1, #28]
 118 00ce 4C6D     		ldr	r4, [r1, #84]
 119 00d0 C1F800E0 		str	lr, [r1]
 120 00d4 4860     		str	r0, [r1, #4]
 121 00d6 8F60     		str	r7, [r1, #8]
 122 00d8 1046     		mov	r0, r2
 123 00da CE60     		str	r6, [r1, #12]
 124 00dc CD61     		str	r5, [r1, #28]
 125 00de 4C65     		str	r4, [r1, #84]
 126 00e0 0A65     		str	r2, [r1, #80]
 127 00e2 0B60     		str	r3, [r1]
 128 00e4 F0BD     		pop	{r4, r5, r6, r7, pc}
 129              		.size	hsmci_send_cmd_execute, .-hsmci_send_cmd_execute
 130 00e6 00BF     		.section	.text.hsmci_get_speed,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	hsmci_get_speed
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	hsmci_get_speed, %function
 139              	hsmci_get_speed:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 4FF08043 		mov	r3, #1073741824
 144 0004 5868     		ldr	r0, [r3, #4]
 145 0006 044B     		ldr	r3, .L37
 146 0008 C0B2     		uxtb	r0, r0
 147 000a 0130     		adds	r0, r0, #1
 148 000c 4000     		lsls	r0, r0, #1
 149 000e B3FBF0F0 		udiv	r0, r3, r0
 150 0012 4008     		lsrs	r0, r0, #1
 151 0014 7047     		bx	lr
 152              	.L38:
 153 0016 00BF     		.align	2
 154              	.L37:
 155 0018 00BD0105 		.word	84000000
 156              		.size	hsmci_get_speed, .-hsmci_get_speed
 157              		.section	.text.hsmci_set_idle_func,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.global	hsmci_set_idle_func
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu softvfp
 165              		.type	hsmci_set_idle_func, %function
 166              	hsmci_set_idle_func:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              		@ link register save eliminated.
 170 0000 024B     		ldr	r3, .L40
 171 0002 1A68     		ldr	r2, [r3]
ARM GAS  /tmp/ccvlxX0x.s 			page 4


 172 0004 1860     		str	r0, [r3]
 173 0006 1046     		mov	r0, r2
 174 0008 7047     		bx	lr
 175              	.L41:
 176 000a 00BF     		.align	2
 177              	.L40:
 178 000c 00000000 		.word	.LANCHOR0
 179              		.size	hsmci_set_idle_func, .-hsmci_set_idle_func
 180              		.section	.text.hsmci_init,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	hsmci_init
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	hsmci_init, %function
 189              	hsmci_init:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 10B5     		push	{r4, lr}
 193 0002 1520     		movs	r0, #21
 194 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 195 0008 2720     		movs	r0, #39
 196 000a FFF7FEFF 		bl	pmc_enable_periph_clk
 197 000e 1124     		movs	r4, #17
 198 0010 4FF08043 		mov	r3, #1073741824
 199 0014 7222     		movs	r2, #114
 200 0016 4FF4E060 		mov	r0, #1792
 201 001a 0521     		movs	r1, #5
 202 001c 9A60     		str	r2, [r3, #8]
 203 001e DA61     		str	r2, [r3, #28]
 204 0020 5C65     		str	r4, [r3, #84]
 205 0022 5860     		str	r0, [r3, #4]
 206 0024 1960     		str	r1, [r3]
 207 0026 10BD     		pop	{r4, pc}
 208              		.size	hsmci_init, .-hsmci_init
 209              		.section	.text.hsmci_get_bus_width,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	hsmci_get_bus_width
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu softvfp
 217              		.type	hsmci_get_bus_width, %function
 218              	hsmci_get_bus_width:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221              		@ link register save eliminated.
 222 0000 0028     		cmp	r0, #0
 223 0002 0CBF     		ite	eq
 224 0004 0420     		moveq	r0, #4
 225 0006 0020     		movne	r0, #0
 226 0008 7047     		bx	lr
 227              		.size	hsmci_get_bus_width, .-hsmci_get_bus_width
 228 000a 00BF     		.section	.text.hsmci_is_high_speed_capable,"ax",%progbits
ARM GAS  /tmp/ccvlxX0x.s 			page 5


 229              		.align	1
 230              		.p2align 2,,3
 231              		.global	hsmci_is_high_speed_capable
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu softvfp
 236              		.type	hsmci_is_high_speed_capable, %function
 237              	hsmci_is_high_speed_capable:
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240              		@ link register save eliminated.
 241 0000 0120     		movs	r0, #1
 242 0002 7047     		bx	lr
 243              		.size	hsmci_is_high_speed_capable, .-hsmci_is_high_speed_capable
 244              		.section	.text.hsmci_select_device,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	hsmci_select_device
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu softvfp
 252              		.type	hsmci_select_device, %function
 253              	hsmci_select_device:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 4FF08040 		mov	r0, #1073741824
 258 0004 1BB3     		cbz	r3, .L50
 259 0006 436D     		ldr	r3, [r0, #84]
 260 0008 4900     		lsls	r1, r1, #1
 261 000a 43F48073 		orr	r3, r3, #256
 262 000e 4365     		str	r3, [r0, #84]
 263 0010 174B     		ldr	r3, .L64
 264 0012 9942     		cmp	r1, r3
 265 0014 23D8     		bhi	.L57
 266              	.L63:
 267 0016 1748     		ldr	r0, .L64+4
 268 0018 B0FBF1F3 		udiv	r3, r0, r1
 269 001c 01FB1301 		mls	r1, r1, r3, r0
 270 0020 F9B9     		cbnz	r1, .L62
 271              	.L53:
 272 0022 013B     		subs	r3, r3, #1
 273 0024 DBB2     		uxtb	r3, r3
 274              	.L52:
 275 0026 4FF08041 		mov	r1, #1073741824
 276 002a 4868     		ldr	r0, [r1, #4]
 277 002c 042A     		cmp	r2, #4
 278 002e 20F0FF00 		bic	r0, r0, #255
 279 0032 4860     		str	r0, [r1, #4]
 280 0034 4868     		ldr	r0, [r1, #4]
 281 0036 43EA0003 		orr	r3, r3, r0
 282 003a 4B60     		str	r3, [r1, #4]
 283 003c 13D0     		beq	.L58
 284 003e 082A     		cmp	r2, #8
 285 0040 0CBF     		ite	eq
ARM GAS  /tmp/ccvlxX0x.s 			page 6


 286 0042 C022     		moveq	r2, #192
 287 0044 0022     		movne	r2, #0
 288 0046 4FF08043 		mov	r3, #1073741824
 289 004a DA60     		str	r2, [r3, #12]
 290 004c 7047     		bx	lr
 291              	.L50:
 292 004e 436D     		ldr	r3, [r0, #84]
 293 0050 4900     		lsls	r1, r1, #1
 294 0052 23F48073 		bic	r3, r3, #256
 295 0056 4365     		str	r3, [r0, #84]
 296 0058 054B     		ldr	r3, .L64
 297 005a 9942     		cmp	r1, r3
 298 005c DBD9     		bls	.L63
 299              	.L57:
 300 005e 0023     		movs	r3, #0
 301 0060 E1E7     		b	.L52
 302              	.L62:
 303 0062 0133     		adds	r3, r3, #1
 304 0064 DDE7     		b	.L53
 305              	.L58:
 306 0066 8022     		movs	r2, #128
 307 0068 4FF08043 		mov	r3, #1073741824
 308 006c DA60     		str	r2, [r3, #12]
 309 006e 7047     		bx	lr
 310              	.L65:
 311              		.align	2
 312              	.L64:
 313 0070 FFBC0105 		.word	83999999
 314 0074 00BD0105 		.word	84000000
 315              		.size	hsmci_select_device, .-hsmci_select_device
 316              		.section	.text.hsmci_deselect_device,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	hsmci_deselect_device
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu softvfp
 324              		.type	hsmci_deselect_device, %function
 325              	hsmci_deselect_device:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329 0000 7047     		bx	lr
 330              		.size	hsmci_deselect_device, .-hsmci_deselect_device
 331 0002 00BF     		.section	.text.hsmci_send_clock,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	hsmci_send_clock
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu softvfp
 339              		.type	hsmci_send_clock, %function
 340              	hsmci_send_clock:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccvlxX0x.s 			page 7


 343              		@ link register save eliminated.
 344 0000 4FF08043 		mov	r3, #1073741824
 345 0004 10B4     		push	{r4}
 346 0006 4FF41060 		mov	r0, #2304
 347 000a 0024     		movs	r4, #0
 348 000c 1A46     		mov	r2, r3
 349 000e 5968     		ldr	r1, [r3, #4]
 350 0010 21F46051 		bic	r1, r1, #14336
 351 0014 5960     		str	r1, [r3, #4]
 352 0016 1C61     		str	r4, [r3, #16]
 353 0018 5861     		str	r0, [r3, #20]
 354              	.L68:
 355 001a 136C     		ldr	r3, [r2, #64]
 356 001c DB07     		lsls	r3, r3, #31
 357 001e FCD5     		bpl	.L68
 358 0020 10BC     		pop	{r4}
 359 0022 7047     		bx	lr
 360              		.size	hsmci_send_clock, .-hsmci_send_clock
 361              		.section	.text.hsmci_send_cmd,"ax",%progbits
 362              		.align	1
 363              		.p2align 2,,3
 364              		.global	hsmci_send_cmd
 365              		.syntax unified
 366              		.thumb
 367              		.thumb_func
 368              		.fpu softvfp
 369              		.type	hsmci_send_cmd, %function
 370              	hsmci_send_cmd:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              		@ link register save eliminated.
 374 0000 4FF08043 		mov	r3, #1073741824
 375 0004 30B4     		push	{r4, r5}
 376 0006 0024     		movs	r4, #0
 377 0008 5D68     		ldr	r5, [r3, #4]
 378 000a 0A46     		mov	r2, r1
 379 000c 25F46055 		bic	r5, r5, #14336
 380 0010 5D60     		str	r5, [r3, #4]
 381 0012 0146     		mov	r1, r0
 382 0014 1C65     		str	r4, [r3, #80]
 383 0016 2046     		mov	r0, r4
 384 0018 9C61     		str	r4, [r3, #24]
 385 001a 30BC     		pop	{r4, r5}
 386 001c FFF7FEBF 		b	hsmci_send_cmd_execute
 387              		.size	hsmci_send_cmd, .-hsmci_send_cmd
 388              		.section	.text.hsmci_get_response,"ax",%progbits
 389              		.align	1
 390              		.p2align 2,,3
 391              		.global	hsmci_get_response
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu softvfp
 396              		.type	hsmci_get_response, %function
 397              	hsmci_get_response:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccvlxX0x.s 			page 8


 400              		@ link register save eliminated.
 401 0000 4FF08043 		mov	r3, #1073741824
 402 0004 186A     		ldr	r0, [r3, #32]
 403 0006 7047     		bx	lr
 404              		.size	hsmci_get_response, .-hsmci_get_response
 405              		.section	.text.hsmci_get_response_128,"ax",%progbits
 406              		.align	1
 407              		.p2align 2,,3
 408              		.global	hsmci_get_response_128
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu softvfp
 413              		.type	hsmci_get_response_128, %function
 414              	hsmci_get_response_128:
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418 0000 70B4     		push	{r4, r5, r6}
 419 0002 4FF08046 		mov	r6, #1073741824
 420 0006 031D     		adds	r3, r0, #4
 421 0008 1430     		adds	r0, r0, #20
 422              	.L76:
 423 000a 326A     		ldr	r2, [r6, #32]
 424 000c 0433     		adds	r3, r3, #4
 425 000e 150E     		lsrs	r5, r2, #24
 426 0010 140C     		lsrs	r4, r2, #16
 427 0012 110A     		lsrs	r1, r2, #8
 428 0014 03F8052C 		strb	r2, [r3, #-5]
 429 0018 03F8085C 		strb	r5, [r3, #-8]
 430 001c 03F8074C 		strb	r4, [r3, #-7]
 431 0020 03F8061C 		strb	r1, [r3, #-6]
 432 0024 8342     		cmp	r3, r0
 433 0026 F0D1     		bne	.L76
 434 0028 70BC     		pop	{r4, r5, r6}
 435 002a 7047     		bx	lr
 436              		.size	hsmci_get_response_128, .-hsmci_get_response_128
 437              		.section	.text.hsmci_adtc_start,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	hsmci_adtc_start
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu softvfp
 445              		.type	hsmci_adtc_start, %function
 446              	hsmci_adtc_start:
 447              		@ args = 4, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 450 0002 9DF81450 		ldrb	r5, [sp, #20]	@ zero_extendqisi2
 451 0006 1446     		mov	r4, r2
 452 0008 4FF08042 		mov	r2, #1073741824
 453 000c 4DB3     		cbz	r5, .L80
 454 000e 4FF48075 		mov	r5, #256
 455 0012 1565     		str	r5, [r2, #80]
 456              	.L81:
ARM GAS  /tmp/ccvlxX0x.s 			page 9


 457 0014 4FF08042 		mov	r2, #1073741824
 458 0018 5568     		ldr	r5, [r2, #4]
 459 001a A707     		lsls	r7, r4, #30
 460 001c 45F4C055 		orr	r5, r5, #6144
 461 0020 5560     		str	r5, [r2, #4]
 462 0022 5568     		ldr	r5, [r2, #4]
 463 0024 14BF     		ite	ne
 464 0026 45F40055 		orrne	r5, r5, #8192
 465 002a 25F40055 		biceq	r5, r5, #8192
 466 002e 10F4004F 		tst	r0, #32768
 467 0032 5560     		str	r5, [r2, #4]
 468 0034 14BF     		ite	ne
 469 0036 4FF48035 		movne	r5, #65536
 470 003a 4FF4A025 		moveq	r5, #327680
 471 003e C603     		lsls	r6, r0, #15
 472 0040 23D4     		bmi	.L94
 473 0042 4FF08042 		mov	r2, #1073741824
 474 0046 43EA0446 		orr	r6, r3, r4, lsl #16
 475 004a 9661     		str	r6, [r2, #24]
 476 004c 8203     		lsls	r2, r0, #14
 477 004e 0AD4     		bmi	.L95
 478 0050 4703     		lsls	r7, r0, #13
 479 0052 22D4     		bmi	.L96
 480 0054 0603     		lsls	r6, r0, #12
 481 0056 08D4     		bmi	.L86
 482 0058 C202     		lsls	r2, r0, #11
 483 005a 48BF     		it	mi
 484 005c 45F40025 		orrmi	r5, r5, #524288
 485 0060 03E0     		b	.L86
 486              	.L80:
 487 0062 1565     		str	r5, [r2, #80]
 488 0064 D6E7     		b	.L81
 489              	.L95:
 490 0066 45F42015 		orr	r5, r5, #2621440
 491              	.L86:
 492 006a 4FF0000E 		mov	lr, #0
 493 006e 0C4F     		ldr	r7, .L97
 494 0070 0C4E     		ldr	r6, .L97+4
 495 0072 0A46     		mov	r2, r1
 496 0074 0146     		mov	r1, r0
 497 0076 2846     		mov	r0, r5
 498 0078 0B4D     		ldr	r5, .L97+8
 499 007a C7F800E0 		str	lr, [r7]
 500 007e 3480     		strh	r4, [r6]	@ movhi
 501 0080 2B80     		strh	r3, [r5]	@ movhi
 502 0082 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 503 0086 FFF7FEBF 		b	hsmci_send_cmd_execute
 504              	.L94:
 505 008a 4FF08046 		mov	r6, #1073741824
 506 008e C4F30802 		ubfx	r2, r4, #0, #9
 507 0092 45F40015 		orr	r5, r5, #2097152
 508 0096 B261     		str	r2, [r6, #24]
 509 0098 E7E7     		b	.L86
 510              	.L96:
 511 009a 45F48015 		orr	r5, r5, #1048576
 512 009e E4E7     		b	.L86
 513              	.L98:
ARM GAS  /tmp/ccvlxX0x.s 			page 10


 514              		.align	2
 515              	.L97:
 516 00a0 00000000 		.word	.LANCHOR1
 517 00a4 00000000 		.word	.LANCHOR2
 518 00a8 00000000 		.word	.LANCHOR3
 519              		.size	hsmci_adtc_start, .-hsmci_adtc_start
 520              		.section	.text.hsmci_adtc_stop,"ax",%progbits
 521              		.align	1
 522              		.p2align 2,,3
 523              		.global	hsmci_adtc_stop
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu softvfp
 528              		.type	hsmci_adtc_stop, %function
 529              	hsmci_adtc_stop:
 530              		@ args = 0, pretend = 0, frame = 0
 531              		@ frame_needed = 0, uses_anonymous_args = 0
 532              		@ link register save eliminated.
 533 0000 0A46     		mov	r2, r1
 534 0002 0146     		mov	r1, r0
 535 0004 4FF40030 		mov	r0, #131072
 536 0008 FFF7FEBF 		b	hsmci_send_cmd_execute
 537              		.size	hsmci_adtc_stop, .-hsmci_adtc_stop
 538              		.section	.text.hsmci_read_word,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	hsmci_read_word
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu softvfp
 546              		.type	hsmci_read_word, %function
 547              	hsmci_read_word:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 551 0002 4FF08042 		mov	r2, #1073741824
 552 0006 1E49     		ldr	r1, .L120
 553 0008 01E0     		b	.L103
 554              	.L119:
 555 000a 9C07     		lsls	r4, r3, #30
 556 000c 16D4     		bmi	.L118
 557              	.L103:
 558 000e 136C     		ldr	r3, [r2, #64]
 559 0010 0B42     		tst	r3, r1
 560 0012 FAD0     		beq	.L119
 561              	.L117:
 562 0014 0023     		movs	r3, #0
 563 0016 4FF0800E 		mov	lr, #128
 564 001a 0521     		movs	r1, #5
 565 001c 5768     		ldr	r7, [r2, #4]
 566 001e 9068     		ldr	r0, [r2, #8]
 567 0020 D668     		ldr	r6, [r2, #12]
 568 0022 D569     		ldr	r5, [r2, #28]
 569 0024 546D     		ldr	r4, [r2, #84]
 570 0026 C2F800E0 		str	lr, [r2]
ARM GAS  /tmp/ccvlxX0x.s 			page 11


 571 002a 5760     		str	r7, [r2, #4]
 572 002c 9060     		str	r0, [r2, #8]
 573 002e D660     		str	r6, [r2, #12]
 574 0030 1846     		mov	r0, r3
 575 0032 D561     		str	r5, [r2, #28]
 576 0034 5465     		str	r4, [r2, #84]
 577 0036 1365     		str	r3, [r2, #80]
 578 0038 1160     		str	r1, [r2]
 579 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 580              	.L118:
 581 003c 114B     		ldr	r3, .L120+4
 582 003e 1249     		ldr	r1, .L120+8
 583 0040 1B88     		ldrh	r3, [r3]
 584 0042 0988     		ldrh	r1, [r1]
 585 0044 114C     		ldr	r4, .L120+12
 586 0046 01FB03F1 		mul	r1, r1, r3
 587 004a 2368     		ldr	r3, [r4]
 588 004c 126B     		ldr	r2, [r2, #48]
 589 004e 0433     		adds	r3, r3, #4
 590 0050 8B42     		cmp	r3, r1
 591 0052 0260     		str	r2, [r0]
 592 0054 2360     		str	r3, [r4]
 593 0056 10D3     		bcc	.L107
 594 0058 0D4D     		ldr	r5, .L120+16
 595 005a 0E4E     		ldr	r6, .L120+20
 596 005c 084C     		ldr	r4, .L120
 597 005e 01E0     		b	.L104
 598              	.L106:
 599 0060 1B01     		lsls	r3, r3, #4
 600 0062 0AD4     		bmi	.L107
 601              	.L104:
 602 0064 2B68     		ldr	r3, [r5]
 603 0066 13B1     		cbz	r3, .L105
 604 0068 0021     		movs	r1, #0
 605 006a 3046     		mov	r0, r6
 606 006c 9847     		blx	r3
 607              	.L105:
 608 006e 4FF08042 		mov	r2, #1073741824
 609 0072 136C     		ldr	r3, [r2, #64]
 610 0074 2342     		tst	r3, r4
 611 0076 F3D0     		beq	.L106
 612 0078 CCE7     		b	.L117
 613              	.L107:
 614 007a 0120     		movs	r0, #1
 615 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 616              	.L121:
 617 007e 00BF     		.align	2
 618              	.L120:
 619 0080 000060C0 		.word	-1067450368
 620 0084 00000000 		.word	.LANCHOR2
 621 0088 00000000 		.word	.LANCHOR3
 622 008c 00000000 		.word	.LANCHOR1
 623 0090 00000000 		.word	.LANCHOR0
 624 0094 000060C8 		.word	-933232640
 625              		.size	hsmci_read_word, .-hsmci_read_word
 626              		.section	.text.hsmci_write_word,"ax",%progbits
 627              		.align	1
ARM GAS  /tmp/ccvlxX0x.s 			page 12


 628              		.p2align 2,,3
 629              		.global	hsmci_write_word
 630              		.syntax unified
 631              		.thumb
 632              		.thumb_func
 633              		.fpu softvfp
 634              		.type	hsmci_write_word, %function
 635              	hsmci_write_word:
 636              		@ args = 0, pretend = 0, frame = 0
 637              		@ frame_needed = 0, uses_anonymous_args = 0
 638 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 639 0002 4FF08042 		mov	r2, #1073741824
 640 0006 1D49     		ldr	r1, .L142
 641 0008 01E0     		b	.L125
 642              	.L141:
 643 000a 5C07     		lsls	r4, r3, #29
 644 000c 16D4     		bmi	.L140
 645              	.L125:
 646 000e 136C     		ldr	r3, [r2, #64]
 647 0010 0B42     		tst	r3, r1
 648 0012 FAD0     		beq	.L141
 649              	.L139:
 650 0014 0023     		movs	r3, #0
 651 0016 4FF0800E 		mov	lr, #128
 652 001a 0521     		movs	r1, #5
 653 001c 5768     		ldr	r7, [r2, #4]
 654 001e 9068     		ldr	r0, [r2, #8]
 655 0020 D668     		ldr	r6, [r2, #12]
 656 0022 D569     		ldr	r5, [r2, #28]
 657 0024 546D     		ldr	r4, [r2, #84]
 658 0026 C2F800E0 		str	lr, [r2]
 659 002a 5760     		str	r7, [r2, #4]
 660 002c 9060     		str	r0, [r2, #8]
 661 002e D660     		str	r6, [r2, #12]
 662 0030 1846     		mov	r0, r3
 663 0032 D561     		str	r5, [r2, #28]
 664 0034 5465     		str	r4, [r2, #84]
 665 0036 1365     		str	r3, [r2, #80]
 666 0038 1160     		str	r1, [r2]
 667 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 668              	.L140:
 669 003c 1049     		ldr	r1, .L142+4
 670 003e 114B     		ldr	r3, .L142+8
 671 0040 5063     		str	r0, [r2, #52]
 672 0042 1B88     		ldrh	r3, [r3]
 673 0044 0A88     		ldrh	r2, [r1]
 674 0046 1049     		ldr	r1, .L142+12
 675 0048 02FB03F2 		mul	r2, r2, r3
 676 004c 0B68     		ldr	r3, [r1]
 677 004e 0433     		adds	r3, r3, #4
 678 0050 9342     		cmp	r3, r2
 679 0052 0B60     		str	r3, [r1]
 680 0054 10D3     		bcc	.L129
 681 0056 0D4D     		ldr	r5, .L142+16
 682 0058 0D4E     		ldr	r6, .L142+20
 683 005a 084C     		ldr	r4, .L142
 684 005c 01E0     		b	.L126
ARM GAS  /tmp/ccvlxX0x.s 			page 13


 685              	.L128:
 686 005e 9B06     		lsls	r3, r3, #26
 687 0060 0AD4     		bmi	.L129
 688              	.L126:
 689 0062 2B68     		ldr	r3, [r5]
 690 0064 13B1     		cbz	r3, .L127
 691 0066 0021     		movs	r1, #0
 692 0068 3046     		mov	r0, r6
 693 006a 9847     		blx	r3
 694              	.L127:
 695 006c 4FF08042 		mov	r2, #1073741824
 696 0070 136C     		ldr	r3, [r2, #64]
 697 0072 2342     		tst	r3, r4
 698 0074 F3D0     		beq	.L128
 699 0076 CDE7     		b	.L139
 700              	.L129:
 701 0078 0120     		movs	r0, #1
 702 007a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 703              	.L143:
 704              		.align	2
 705              	.L142:
 706 007c 000060C0 		.word	-1067450368
 707 0080 00000000 		.word	.LANCHOR3
 708 0084 00000000 		.word	.LANCHOR2
 709 0088 00000000 		.word	.LANCHOR1
 710 008c 00000000 		.word	.LANCHOR0
 711 0090 200060C0 		.word	-1067450336
 712              		.size	hsmci_write_word, .-hsmci_write_word
 713              		.section	.text.hsmci_start_read_blocks,"ax",%progbits
 714              		.align	1
 715              		.p2align 2,,3
 716              		.global	hsmci_start_read_blocks
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu softvfp
 721              		.type	hsmci_start_read_blocks, %function
 722              	hsmci_start_read_blocks:
 723              		@ args = 0, pretend = 0, frame = 24
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 4FF08043 		mov	r3, #1073741824
 726 0004 70B5     		push	{r4, r5, r6, lr}
 727 0006 224A     		ldr	r2, .L152
 728 0008 5B68     		ldr	r3, [r3, #4]
 729 000a 1488     		ldrh	r4, [r2]
 730 000c 9B04     		lsls	r3, r3, #18
 731 000e 0546     		mov	r5, r0
 732 0010 86B0     		sub	sp, sp, #24
 733 0012 01FB04F4 		mul	r4, r1, r4
 734 0016 1F48     		ldr	r0, .L152+4
 735 0018 02D4     		bmi	.L145
 736 001a 15F00306 		ands	r6, r5, #3
 737 001e 23D0     		beq	.L151
 738              	.L145:
 739 0020 FFF7FEFF 		bl	dmac_enable
 740 0024 0021     		movs	r1, #0
 741 0026 1B48     		ldr	r0, .L152+4
ARM GAS  /tmp/ccvlxX0x.s 			page 14


 742 0028 FFF7FEFF 		bl	dmac_channel_disable
 743 002c 1A4A     		ldr	r2, .L152+8
 744 002e 0021     		movs	r1, #0
 745 0030 1848     		ldr	r0, .L152+4
 746 0032 FFF7FEFF 		bl	dmac_channel_set_configuration
 747 0036 194A     		ldr	r2, .L152+12
 748 0038 A3B2     		uxth	r3, r4
 749 003a 0295     		str	r5, [sp, #8]
 750 003c 0192     		str	r2, [sp, #4]
 751 003e 0393     		str	r3, [sp, #12]
 752              	.L147:
 753 0040 0025     		movs	r5, #0
 754 0042 174B     		ldr	r3, .L152+16
 755 0044 01AA     		add	r2, sp, #4
 756 0046 2946     		mov	r1, r5
 757 0048 1248     		ldr	r0, .L152+4
 758 004a 0493     		str	r3, [sp, #16]
 759 004c 0595     		str	r5, [sp, #20]
 760 004e FFF7FEFF 		bl	dmac_channel_single_buf_transfer_init
 761 0052 2946     		mov	r1, r5
 762 0054 0F48     		ldr	r0, .L152+4
 763 0056 FFF7FEFF 		bl	dmac_channel_enable
 764 005a 0120     		movs	r0, #1
 765 005c 114A     		ldr	r2, .L152+20
 766 005e 1368     		ldr	r3, [r2]
 767 0060 1C44     		add	r4, r4, r3
 768 0062 1460     		str	r4, [r2]
 769 0064 06B0     		add	sp, sp, #24
 770              		@ sp needed
 771 0066 70BD     		pop	{r4, r5, r6, pc}
 772              	.L151:
 773 0068 FFF7FEFF 		bl	dmac_enable
 774 006c 3146     		mov	r1, r6
 775 006e 0948     		ldr	r0, .L152+4
 776 0070 FFF7FEFF 		bl	dmac_channel_disable
 777 0074 084A     		ldr	r2, .L152+8
 778 0076 3146     		mov	r1, r6
 779 0078 0648     		ldr	r0, .L152+4
 780 007a FFF7FEFF 		bl	dmac_channel_set_configuration
 781 007e C4F38F03 		ubfx	r3, r4, #2, #16
 782 0082 064A     		ldr	r2, .L152+12
 783 0084 43F00853 		orr	r3, r3, #570425344
 784 0088 0295     		str	r5, [sp, #8]
 785 008a 0393     		str	r3, [sp, #12]
 786 008c 0192     		str	r2, [sp, #4]
 787 008e D7E7     		b	.L147
 788              	.L153:
 789              		.align	2
 790              	.L152:
 791 0090 00000000 		.word	.LANCHOR2
 792 0094 00400C40 		.word	1074544640
 793 0098 00020101 		.word	16843264
 794 009c 30000040 		.word	1073741872
 795 00a0 00005142 		.word	1112604672
 796 00a4 00000000 		.word	.LANCHOR1
 797              		.size	hsmci_start_read_blocks, .-hsmci_start_read_blocks
 798              		.section	.text.hsmci_wait_end_of_read_blocks,"ax",%progbits
ARM GAS  /tmp/ccvlxX0x.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	hsmci_wait_end_of_read_blocks
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu softvfp
 806              		.type	hsmci_wait_end_of_read_blocks, %function
 807              	hsmci_wait_end_of_read_blocks:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 811 0002 1B4D     		ldr	r5, .L167
 812 0004 1B4F     		ldr	r7, .L167+4
 813 0006 1C4C     		ldr	r4, .L167+8
 814 0008 1C4E     		ldr	r6, .L167+12
 815 000a 0AE0     		b	.L159
 816              	.L156:
 817 000c 0388     		ldrh	r3, [r0]
 818 000e 3088     		ldrh	r0, [r6]
 819 0010 0968     		ldr	r1, [r1]
 820 0012 03FB00F3 		mul	r3, r3, r0
 821 0016 8B42     		cmp	r3, r1
 822 0018 01D9     		bls	.L158
 823 001a 9101     		lsls	r1, r2, #6
 824 001c 25D4     		bmi	.L160
 825              	.L158:
 826 001e 1301     		lsls	r3, r2, #4
 827 0020 23D4     		bmi	.L160
 828              	.L159:
 829 0022 2B68     		ldr	r3, [r5]
 830 0024 13B1     		cbz	r3, .L155
 831 0026 0021     		movs	r1, #0
 832 0028 3846     		mov	r0, r7
 833 002a 9847     		blx	r3
 834              	.L155:
 835 002c 4FF08043 		mov	r3, #1073741824
 836 0030 1A6C     		ldr	r2, [r3, #64]
 837 0032 1348     		ldr	r0, .L167+16
 838 0034 2242     		tst	r2, r4
 839 0036 1349     		ldr	r1, .L167+20
 840 0038 E8D0     		beq	.L156
 841 003a 0024     		movs	r4, #0
 842 003c 4FF0800E 		mov	lr, #128
 843 0040 0522     		movs	r2, #5
 844 0042 5F68     		ldr	r7, [r3, #4]
 845 0044 9968     		ldr	r1, [r3, #8]
 846 0046 D868     		ldr	r0, [r3, #12]
 847 0048 DE69     		ldr	r6, [r3, #28]
 848 004a 5D6D     		ldr	r5, [r3, #84]
 849 004c C3F800E0 		str	lr, [r3]
 850 0050 5F60     		str	r7, [r3, #4]
 851 0052 9960     		str	r1, [r3, #8]
 852 0054 D860     		str	r0, [r3, #12]
 853 0056 2146     		mov	r1, r4
 854 0058 DE61     		str	r6, [r3, #28]
 855 005a 0B48     		ldr	r0, .L167+24
ARM GAS  /tmp/ccvlxX0x.s 			page 16


 856 005c 5D65     		str	r5, [r3, #84]
 857 005e 1C65     		str	r4, [r3, #80]
 858 0060 1A60     		str	r2, [r3]
 859 0062 FFF7FEFF 		bl	dmac_channel_disable
 860 0066 2046     		mov	r0, r4
 861 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 862              	.L160:
 863 006a 0120     		movs	r0, #1
 864 006c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 865              	.L168:
 866 006e 00BF     		.align	2
 867              	.L167:
 868 0070 00000000 		.word	.LANCHOR0
 869 0074 000060C2 		.word	-1033895936
 870 0078 000060C0 		.word	-1067450368
 871 007c 00000000 		.word	.LANCHOR2
 872 0080 00000000 		.word	.LANCHOR3
 873 0084 00000000 		.word	.LANCHOR1
 874 0088 00400C40 		.word	1074544640
 875              		.size	hsmci_wait_end_of_read_blocks, .-hsmci_wait_end_of_read_blocks
 876              		.section	.text.hsmci_start_write_blocks,"ax",%progbits
 877              		.align	1
 878              		.p2align 2,,3
 879              		.global	hsmci_start_write_blocks
 880              		.syntax unified
 881              		.thumb
 882              		.thumb_func
 883              		.fpu softvfp
 884              		.type	hsmci_start_write_blocks, %function
 885              	hsmci_start_write_blocks:
 886              		@ args = 0, pretend = 0, frame = 24
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888 0000 4FF08043 		mov	r3, #1073741824
 889 0004 70B5     		push	{r4, r5, r6, lr}
 890 0006 1E4A     		ldr	r2, .L177
 891 0008 5B68     		ldr	r3, [r3, #4]
 892 000a 1488     		ldrh	r4, [r2]
 893 000c 9B04     		lsls	r3, r3, #18
 894 000e 0546     		mov	r5, r0
 895 0010 86B0     		sub	sp, sp, #24
 896 0012 01FB04F4 		mul	r4, r1, r4
 897 0016 1B48     		ldr	r0, .L177+4
 898 0018 02D4     		bmi	.L170
 899 001a 15F00306 		ands	r6, r5, #3
 900 001e 1FD0     		beq	.L176
 901              	.L170:
 902 0020 FFF7FEFF 		bl	dmac_enable
 903 0024 184A     		ldr	r2, .L177+8
 904 0026 0021     		movs	r1, #0
 905 0028 1648     		ldr	r0, .L177+4
 906 002a FFF7FEFF 		bl	dmac_channel_set_configuration
 907 002e 174A     		ldr	r2, .L177+12
 908 0030 A3B2     		uxth	r3, r4
 909 0032 0195     		str	r5, [sp, #4]
 910 0034 0292     		str	r2, [sp, #8]
 911 0036 0393     		str	r3, [sp, #12]
 912              	.L172:
ARM GAS  /tmp/ccvlxX0x.s 			page 17


 913 0038 0025     		movs	r5, #0
 914 003a 154B     		ldr	r3, .L177+16
 915 003c 01AA     		add	r2, sp, #4
 916 003e 2946     		mov	r1, r5
 917 0040 1048     		ldr	r0, .L177+4
 918 0042 0493     		str	r3, [sp, #16]
 919 0044 0595     		str	r5, [sp, #20]
 920 0046 FFF7FEFF 		bl	dmac_channel_single_buf_transfer_init
 921 004a 2946     		mov	r1, r5
 922 004c 0D48     		ldr	r0, .L177+4
 923 004e FFF7FEFF 		bl	dmac_channel_enable
 924 0052 0120     		movs	r0, #1
 925 0054 0F4A     		ldr	r2, .L177+20
 926 0056 1368     		ldr	r3, [r2]
 927 0058 1C44     		add	r4, r4, r3
 928 005a 1460     		str	r4, [r2]
 929 005c 06B0     		add	sp, sp, #24
 930              		@ sp needed
 931 005e 70BD     		pop	{r4, r5, r6, pc}
 932              	.L176:
 933 0060 FFF7FEFF 		bl	dmac_enable
 934 0064 084A     		ldr	r2, .L177+8
 935 0066 3146     		mov	r1, r6
 936 0068 0648     		ldr	r0, .L177+4
 937 006a FFF7FEFF 		bl	dmac_channel_set_configuration
 938 006e C4F38F03 		ubfx	r3, r4, #2, #16
 939 0072 064A     		ldr	r2, .L177+12
 940 0074 43F00853 		orr	r3, r3, #570425344
 941 0078 0195     		str	r5, [sp, #4]
 942 007a 0393     		str	r3, [sp, #12]
 943 007c 0292     		str	r2, [sp, #8]
 944 007e DBE7     		b	.L172
 945              	.L178:
 946              		.align	2
 947              	.L177:
 948 0080 00000000 		.word	.LANCHOR2
 949 0084 00400C40 		.word	1074544640
 950 0088 00200101 		.word	16850944
 951 008c 34000040 		.word	1073741876
 952 0090 00003160 		.word	1613824000
 953 0094 00000000 		.word	.LANCHOR1
 954              		.size	hsmci_start_write_blocks, .-hsmci_start_write_blocks
 955              		.section	.text.hsmci_wait_end_of_write_blocks,"ax",%progbits
 956              		.align	1
 957              		.p2align 2,,3
 958              		.global	hsmci_wait_end_of_write_blocks
 959              		.syntax unified
 960              		.thumb
 961              		.thumb_func
 962              		.fpu softvfp
 963              		.type	hsmci_wait_end_of_write_blocks, %function
 964              	hsmci_wait_end_of_write_blocks:
 965              		@ args = 0, pretend = 0, frame = 0
 966              		@ frame_needed = 0, uses_anonymous_args = 0
 967 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 968 0002 1B4D     		ldr	r5, .L192
 969 0004 1B4F     		ldr	r7, .L192+4
ARM GAS  /tmp/ccvlxX0x.s 			page 18


 970 0006 1C4C     		ldr	r4, .L192+8
 971 0008 1C4E     		ldr	r6, .L192+12
 972 000a 0AE0     		b	.L184
 973              	.L181:
 974 000c 0388     		ldrh	r3, [r0]
 975 000e 3088     		ldrh	r0, [r6]
 976 0010 0968     		ldr	r1, [r1]
 977 0012 03FB00F3 		mul	r3, r3, r0
 978 0016 8B42     		cmp	r3, r1
 979 0018 01D9     		bls	.L183
 980 001a 9101     		lsls	r1, r2, #6
 981 001c 25D4     		bmi	.L185
 982              	.L183:
 983 001e 9306     		lsls	r3, r2, #26
 984 0020 23D4     		bmi	.L185
 985              	.L184:
 986 0022 2B68     		ldr	r3, [r5]
 987 0024 13B1     		cbz	r3, .L180
 988 0026 0021     		movs	r1, #0
 989 0028 3846     		mov	r0, r7
 990 002a 9847     		blx	r3
 991              	.L180:
 992 002c 4FF08043 		mov	r3, #1073741824
 993 0030 1A6C     		ldr	r2, [r3, #64]
 994 0032 1348     		ldr	r0, .L192+16
 995 0034 2242     		tst	r2, r4
 996 0036 1349     		ldr	r1, .L192+20
 997 0038 E8D0     		beq	.L181
 998 003a 0024     		movs	r4, #0
 999 003c 4FF0800E 		mov	lr, #128
 1000 0040 0522     		movs	r2, #5
 1001 0042 5F68     		ldr	r7, [r3, #4]
 1002 0044 9968     		ldr	r1, [r3, #8]
 1003 0046 D868     		ldr	r0, [r3, #12]
 1004 0048 DE69     		ldr	r6, [r3, #28]
 1005 004a 5D6D     		ldr	r5, [r3, #84]
 1006 004c C3F800E0 		str	lr, [r3]
 1007 0050 5F60     		str	r7, [r3, #4]
 1008 0052 9960     		str	r1, [r3, #8]
 1009 0054 D860     		str	r0, [r3, #12]
 1010 0056 2146     		mov	r1, r4
 1011 0058 DE61     		str	r6, [r3, #28]
 1012 005a 0B48     		ldr	r0, .L192+24
 1013 005c 5D65     		str	r5, [r3, #84]
 1014 005e 1C65     		str	r4, [r3, #80]
 1015 0060 1A60     		str	r2, [r3]
 1016 0062 FFF7FEFF 		bl	dmac_channel_disable
 1017 0066 2046     		mov	r0, r4
 1018 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1019              	.L185:
 1020 006a 0120     		movs	r0, #1
 1021 006c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1022              	.L193:
 1023 006e 00BF     		.align	2
 1024              	.L192:
 1025 0070 00000000 		.word	.LANCHOR0
 1026 0074 200060C2 		.word	-1033895904
ARM GAS  /tmp/ccvlxX0x.s 			page 19


 1027 0078 000060C0 		.word	-1067450368
 1028 007c 00000000 		.word	.LANCHOR2
 1029 0080 00000000 		.word	.LANCHOR3
 1030 0084 00000000 		.word	.LANCHOR1
 1031 0088 00400C40 		.word	1074544640
 1032              		.size	hsmci_wait_end_of_write_blocks, .-hsmci_wait_end_of_write_blocks
 1033              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1034              		.align	2
 1035              		.type	cpu_irq_critical_section_counter, %object
 1036              		.size	cpu_irq_critical_section_counter, 4
 1037              	cpu_irq_critical_section_counter:
 1038 0000 00000000 		.space	4
 1039              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1040              		.type	cpu_irq_prev_interrupt_state, %object
 1041              		.size	cpu_irq_prev_interrupt_state, 1
 1042              	cpu_irq_prev_interrupt_state:
 1043 0000 00       		.space	1
 1044              		.section	.bss.hsmciIdleFunc,"aw",%nobits
 1045              		.align	2
 1046              		.set	.LANCHOR0,. + 0
 1047              		.type	hsmciIdleFunc, %object
 1048              		.size	hsmciIdleFunc, 4
 1049              	hsmciIdleFunc:
 1050 0000 00000000 		.space	4
 1051              		.section	.bss.hsmci_block_size,"aw",%nobits
 1052              		.align	1
 1053              		.set	.LANCHOR2,. + 0
 1054              		.type	hsmci_block_size, %object
 1055              		.size	hsmci_block_size, 2
 1056              	hsmci_block_size:
 1057 0000 0000     		.space	2
 1058              		.section	.bss.hsmci_nb_block,"aw",%nobits
 1059              		.align	1
 1060              		.set	.LANCHOR3,. + 0
 1061              		.type	hsmci_nb_block, %object
 1062              		.size	hsmci_nb_block, 2
 1063              	hsmci_nb_block:
 1064 0000 0000     		.space	2
 1065              		.section	.bss.hsmci_transfert_pos,"aw",%nobits
 1066              		.align	2
 1067              		.set	.LANCHOR1,. + 0
 1068              		.type	hsmci_transfert_pos, %object
 1069              		.size	hsmci_transfert_pos, 4
 1070              	hsmci_transfert_pos:
 1071 0000 00000000 		.space	4
 1072              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
