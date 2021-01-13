ARM GAS  /tmp/ccKQ6w3U.s 			page 1


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
  13              		.file	"hsmci.c"
  14              		.section	.text.hsmci_send_cmd_execute,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	hsmci_send_cmd_execute, %function
  22              	hsmci_send_cmd_execute:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 01F03F03 		and	r3, r1, #63
  26 0004 0343     		orrs	r3, r3, r0
  27 0006 C805     		lsls	r0, r1, #23
  28 0008 F0B5     		push	{r4, r5, r6, r7, lr}
  29 000a 03D5     		bpl	.L2
  30 000c 0F05     		lsls	r7, r1, #20
  31 000e 28D5     		bpl	.L3
  32 0010 43F48453 		orr	r3, r3, #4224
  33              	.L2:
  34 0014 244C     		ldr	r4, .L38
  35 0016 4D04     		lsls	r5, r1, #17
  36 0018 48BF     		it	mi
  37 001a 43F40063 		orrmi	r3, r3, #2048
  38 001e 2261     		str	r2, [r4, #16]
  39 0020 01F48050 		and	r0, r1, #4096
  40 0024 2246     		mov	r2, r4
  41 0026 6361     		str	r3, [r4, #20]
  42 0028 04E0     		b	.L9
  43              	.L36:
  44 002a 13F41F0F 		tst	r3, #10420224
  45 002e 23D1     		bne	.L34
  46              	.L7:
  47 0030 DC07     		lsls	r4, r3, #31
  48 0032 1DD4     		bmi	.L35
  49              	.L9:
  50 0034 136C     		ldr	r3, [r2, #64]
  51 0036 0028     		cmp	r0, #0
  52 0038 F7D1     		bne	.L36
  53 003a 13F41B0F 		tst	r3, #10158080
  54 003e F7D0     		beq	.L7
  55              	.L31:
  56 0040 5768     		ldr	r7, [r2, #4]
  57 0042 9668     		ldr	r6, [r2, #8]
ARM GAS  /tmp/ccKQ6w3U.s 			page 2


  58 0044 D568     		ldr	r5, [r2, #12]
  59 0046 D469     		ldr	r4, [r2, #28]
  60 0048 516D     		ldr	r1, [r2, #84]
  61 004a 4FF0800E 		mov	lr, #128
  62 004e C2F800E0 		str	lr, [r2]
  63 0052 0523     		movs	r3, #5
  64 0054 5760     		str	r7, [r2, #4]
  65              	.L32:
  66 0056 9660     		str	r6, [r2, #8]
  67 0058 D560     		str	r5, [r2, #12]
  68 005a D461     		str	r4, [r2, #28]
  69 005c 5165     		str	r1, [r2, #84]
  70 005e 1360     		str	r3, [r2]
  71 0060 F0BD     		pop	{r4, r5, r6, r7, pc}
  72              	.L3:
  73 0062 8E04     		lsls	r6, r1, #18
  74 0064 4CBF     		ite	mi
  75 0066 43F48653 		orrmi	r3, r3, #4288
  76 006a 43F48253 		orrpl	r3, r3, #4160
  77 006e D1E7     		b	.L2
  78              	.L35:
  79 0070 8B04     		lsls	r3, r1, #18
  80 0072 0CD4     		bmi	.L37
  81              	.L30:
  82 0074 0120     		movs	r0, #1
  83 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
  84              	.L34:
  85 0078 5068     		ldr	r0, [r2, #4]
  86 007a 9668     		ldr	r6, [r2, #8]
  87 007c D568     		ldr	r5, [r2, #12]
  88 007e D469     		ldr	r4, [r2, #28]
  89 0080 516D     		ldr	r1, [r2, #84]
  90 0082 8027     		movs	r7, #128
  91 0084 1760     		str	r7, [r2]
  92 0086 0523     		movs	r3, #5
  93 0088 5060     		str	r0, [r2, #4]
  94 008a 0020     		movs	r0, #0
  95 008c E3E7     		b	.L32
  96              	.L37:
  97 008e 064A     		ldr	r2, .L38
  98 0090 136C     		ldr	r3, [r2, #64]
  99 0092 4FF0FF30 		mov	r0, #-1
 100              	.L11:
 101 0096 03F03003 		and	r3, r3, #48
 102 009a 202B     		cmp	r3, #32
 103 009c EAD0     		beq	.L30
 104 009e 0138     		subs	r0, r0, #1
 105 00a0 136C     		ldr	r3, [r2, #64]
 106 00a2 F8D1     		bne	.L11
 107 00a4 CCE7     		b	.L31
 108              	.L39:
 109 00a6 00BF     		.align	2
 110              	.L38:
 111 00a8 00000840 		.word	1074266112
 112              		.size	hsmci_send_cmd_execute, .-hsmci_send_cmd_execute
 113              		.section	.text.hsmci_get_speed,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/ccKQ6w3U.s 			page 3


 115              		.p2align 2,,3
 116              		.global	hsmci_get_speed
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	hsmci_get_speed, %function
 122              	hsmci_get_speed:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 064A     		ldr	r2, .L41
 127 0002 074B     		ldr	r3, .L41+4
 128 0004 5068     		ldr	r0, [r2, #4]
 129 0006 5268     		ldr	r2, [r2, #4]
 130 0008 C0B2     		uxtb	r0, r0
 131 000a 4000     		lsls	r0, r0, #1
 132 000c C2F30042 		ubfx	r2, r2, #16, #1
 133 0010 0230     		adds	r0, r0, #2
 134 0012 1044     		add	r0, r0, r2
 135 0014 B3FBF0F0 		udiv	r0, r3, r0
 136 0018 4008     		lsrs	r0, r0, #1
 137 001a 7047     		bx	lr
 138              	.L42:
 139              		.align	2
 140              	.L41:
 141 001c 00000840 		.word	1074266112
 142 0020 000E2707 		.word	120000000
 143              		.size	hsmci_get_speed, .-hsmci_get_speed
 144              		.section	.text.hsmci_set_idle_func,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	hsmci_set_idle_func
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	hsmci_set_idle_func, %function
 153              	hsmci_set_idle_func:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 024B     		ldr	r3, .L44
 158 0002 1A68     		ldr	r2, [r3]
 159 0004 1860     		str	r0, [r3]
 160 0006 1046     		mov	r0, r2
 161 0008 7047     		bx	lr
 162              	.L45:
 163 000a 00BF     		.align	2
 164              	.L44:
 165 000c 00000000 		.word	.LANCHOR0
 166              		.size	hsmci_set_idle_func, .-hsmci_set_idle_func
 167              		.section	.text.hsmci_init,"ax",%progbits
 168              		.align	1
 169              		.p2align 2,,3
 170              		.global	hsmci_init
 171              		.syntax unified
ARM GAS  /tmp/ccKQ6w3U.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu fpv4-sp-d16
 175              		.type	hsmci_init, %function
 176              	hsmci_init:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 10B5     		push	{r4, lr}
 180 0002 1020     		movs	r0, #16
 181 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 182 0008 054B     		ldr	r3, .L48
 183 000a 7222     		movs	r2, #114
 184 000c 1124     		movs	r4, #17
 185 000e 4FF4E060 		mov	r0, #1792
 186 0012 0521     		movs	r1, #5
 187 0014 9A60     		str	r2, [r3, #8]
 188 0016 DA61     		str	r2, [r3, #28]
 189 0018 5C65     		str	r4, [r3, #84]
 190 001a 5860     		str	r0, [r3, #4]
 191 001c 1960     		str	r1, [r3]
 192 001e 10BD     		pop	{r4, pc}
 193              	.L49:
 194              		.align	2
 195              	.L48:
 196 0020 00000840 		.word	1074266112
 197              		.size	hsmci_init, .-hsmci_init
 198              		.section	.text.hsmci_get_bus_width,"ax",%progbits
 199              		.align	1
 200              		.p2align 2,,3
 201              		.global	hsmci_get_bus_width
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 206              		.type	hsmci_get_bus_width, %function
 207              	hsmci_get_bus_width:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              		@ link register save eliminated.
 211 0000 0028     		cmp	r0, #0
 212 0002 0CBF     		ite	eq
 213 0004 0420     		moveq	r0, #4
 214 0006 0020     		movne	r0, #0
 215 0008 7047     		bx	lr
 216              		.size	hsmci_get_bus_width, .-hsmci_get_bus_width
 217 000a 00BF     		.section	.text.hsmci_is_high_speed_capable,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	hsmci_is_high_speed_capable
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	hsmci_is_high_speed_capable, %function
 226              	hsmci_is_high_speed_capable:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccKQ6w3U.s 			page 5


 229              		@ link register save eliminated.
 230 0000 0120     		movs	r0, #1
 231 0002 7047     		bx	lr
 232              		.size	hsmci_is_high_speed_capable, .-hsmci_is_high_speed_capable
 233              		.section	.text.hsmci_select_device,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	hsmci_select_device
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	hsmci_select_device, %function
 242              	hsmci_select_device:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 2E48     		ldr	r0, .L81
 247 0002 5BB3     		cbz	r3, .L56
 248 0004 436D     		ldr	r3, [r0, #84]
 249 0006 43F48073 		orr	r3, r3, #256
 250 000a 4365     		str	r3, [r0, #84]
 251 000c 2C4B     		ldr	r3, .L81+4
 252 000e B3EB410F 		cmp	r3, r1, lsl #1
 253 0012 2BD3     		bcc	.L58
 254              	.L79:
 255 0014 2B48     		ldr	r0, .L81+8
 256 0016 B0FBF1F3 		udiv	r3, r0, r1
 257 001a 01FB1301 		mls	r1, r1, r3, r0
 258 001e 10B4     		push	{r4}
 259 0020 0029     		cmp	r1, #0
 260 0022 38D1     		bne	.L59
 261 0024 991E     		subs	r1, r3, #2
 262              	.L60:
 263 0026 254B     		ldr	r3, .L81
 264 0028 5868     		ldr	r0, [r3, #4]
 265 002a 20F0FF00 		bic	r0, r0, #255
 266 002e 5860     		str	r0, [r3, #4]
 267 0030 5C68     		ldr	r4, [r3, #4]
 268 0032 C1F34700 		ubfx	r0, r1, #1, #8
 269 0036 2043     		orrs	r0, r0, r4
 270 0038 C907     		lsls	r1, r1, #31
 271 003a 5860     		str	r0, [r3, #4]
 272 003c 2DD5     		bpl	.L61
 273 003e 5968     		ldr	r1, [r3, #4]
 274 0040 042A     		cmp	r2, #4
 275 0042 41F48031 		orr	r1, r1, #65536
 276 0046 5960     		str	r1, [r3, #4]
 277 0048 2ED0     		beq	.L64
 278              	.L80:
 279 004a 082A     		cmp	r2, #8
 280 004c 1B4B     		ldr	r3, .L81
 281 004e 5DF8044B 		ldr	r4, [sp], #4
 282 0052 0CBF     		ite	eq
 283 0054 C022     		moveq	r2, #192
 284 0056 0022     		movne	r2, #0
 285 0058 DA60     		str	r2, [r3, #12]
ARM GAS  /tmp/ccKQ6w3U.s 			page 6


 286 005a 7047     		bx	lr
 287              	.L56:
 288 005c 436D     		ldr	r3, [r0, #84]
 289 005e 23F48073 		bic	r3, r3, #256
 290 0062 4365     		str	r3, [r0, #84]
 291 0064 164B     		ldr	r3, .L81+4
 292 0066 B3EB410F 		cmp	r3, r1, lsl #1
 293 006a D3D2     		bcs	.L79
 294              	.L58:
 295 006c 134B     		ldr	r3, .L81
 296 006e 5968     		ldr	r1, [r3, #4]
 297 0070 21F0FF01 		bic	r1, r1, #255
 298 0074 5960     		str	r1, [r3, #4]
 299 0076 5968     		ldr	r1, [r3, #4]
 300 0078 5960     		str	r1, [r3, #4]
 301 007a 1049     		ldr	r1, .L81
 302 007c 4B68     		ldr	r3, [r1, #4]
 303 007e 042A     		cmp	r2, #4
 304 0080 23F48033 		bic	r3, r3, #65536
 305 0084 4B60     		str	r3, [r1, #4]
 306 0086 15D0     		beq	.L73
 307 0088 082A     		cmp	r2, #8
 308 008a 0C4B     		ldr	r3, .L81
 309 008c 0CBF     		ite	eq
 310 008e C022     		moveq	r2, #192
 311 0090 0022     		movne	r2, #0
 312 0092 DA60     		str	r2, [r3, #12]
 313 0094 7047     		bx	lr
 314              	.L59:
 315 0096 591E     		subs	r1, r3, #1
 316 0098 C5E7     		b	.L60
 317              	.L61:
 318 009a 0849     		ldr	r1, .L81
 319 009c 4B68     		ldr	r3, [r1, #4]
 320 009e 042A     		cmp	r2, #4
 321 00a0 23F48033 		bic	r3, r3, #65536
 322 00a4 4B60     		str	r3, [r1, #4]
 323 00a6 D0D1     		bne	.L80
 324              	.L64:
 325 00a8 044B     		ldr	r3, .L81
 326 00aa 5DF8044B 		ldr	r4, [sp], #4
 327 00ae 8022     		movs	r2, #128
 328 00b0 DA60     		str	r2, [r3, #12]
 329 00b2 7047     		bx	lr
 330              	.L73:
 331 00b4 014B     		ldr	r3, .L81
 332 00b6 8022     		movs	r2, #128
 333 00b8 DA60     		str	r2, [r3, #12]
 334 00ba 7047     		bx	lr
 335              	.L82:
 336              		.align	2
 337              	.L81:
 338 00bc 00000840 		.word	1074266112
 339 00c0 FF0D2707 		.word	119999999
 340 00c4 000E2707 		.word	120000000
 341              		.size	hsmci_select_device, .-hsmci_select_device
 342              		.section	.text.hsmci_deselect_device,"ax",%progbits
ARM GAS  /tmp/ccKQ6w3U.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.global	hsmci_deselect_device
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu fpv4-sp-d16
 350              		.type	hsmci_deselect_device, %function
 351              	hsmci_deselect_device:
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354              		@ link register save eliminated.
 355 0000 7047     		bx	lr
 356              		.size	hsmci_deselect_device, .-hsmci_deselect_device
 357 0002 00BF     		.section	.text.hsmci_send_clock,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.global	hsmci_send_clock
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu fpv4-sp-d16
 365              		.type	hsmci_send_clock, %function
 366              	hsmci_send_clock:
 367              		@ args = 0, pretend = 0, frame = 0
 368              		@ frame_needed = 0, uses_anonymous_args = 0
 369              		@ link register save eliminated.
 370 0000 074B     		ldr	r3, .L88
 371 0002 5A68     		ldr	r2, [r3, #4]
 372 0004 0020     		movs	r0, #0
 373 0006 22F46052 		bic	r2, r2, #14336
 374 000a 4FF41061 		mov	r1, #2304
 375 000e 5A60     		str	r2, [r3, #4]
 376 0010 1861     		str	r0, [r3, #16]
 377 0012 1A46     		mov	r2, r3
 378 0014 5961     		str	r1, [r3, #20]
 379              	.L85:
 380 0016 136C     		ldr	r3, [r2, #64]
 381 0018 DB07     		lsls	r3, r3, #31
 382 001a FCD5     		bpl	.L85
 383 001c 7047     		bx	lr
 384              	.L89:
 385 001e 00BF     		.align	2
 386              	.L88:
 387 0020 00000840 		.word	1074266112
 388              		.size	hsmci_send_clock, .-hsmci_send_clock
 389              		.section	.text.hsmci_send_cmd,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	hsmci_send_cmd
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu fpv4-sp-d16
 397              		.type	hsmci_send_cmd, %function
 398              	hsmci_send_cmd:
 399              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccKQ6w3U.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401              		@ link register save eliminated.
 402 0000 084B     		ldr	r3, .L92
 403 0002 5A68     		ldr	r2, [r3, #4]
 404 0004 30B4     		push	{r4, r5}
 405 0006 22F46052 		bic	r2, r2, #14336
 406 000a 5A60     		str	r2, [r3, #4]
 407 000c 5C68     		ldr	r4, [r3, #4]
 408 000e 0025     		movs	r5, #0
 409 0010 24F40044 		bic	r4, r4, #32768
 410 0014 5C60     		str	r4, [r3, #4]
 411 0016 0A46     		mov	r2, r1
 412 0018 9D61     		str	r5, [r3, #24]
 413 001a 0146     		mov	r1, r0
 414 001c 2846     		mov	r0, r5
 415 001e 30BC     		pop	{r4, r5}
 416 0020 FFF7FEBF 		b	hsmci_send_cmd_execute
 417              	.L93:
 418              		.align	2
 419              	.L92:
 420 0024 00000840 		.word	1074266112
 421              		.size	hsmci_send_cmd, .-hsmci_send_cmd
 422              		.section	.text.hsmci_get_response,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	hsmci_get_response
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu fpv4-sp-d16
 430              		.type	hsmci_get_response, %function
 431              	hsmci_get_response:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 014B     		ldr	r3, .L95
 436 0002 186A     		ldr	r0, [r3, #32]
 437 0004 7047     		bx	lr
 438              	.L96:
 439 0006 00BF     		.align	2
 440              	.L95:
 441 0008 00000840 		.word	1074266112
 442              		.size	hsmci_get_response, .-hsmci_get_response
 443              		.section	.text.hsmci_get_response_128,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.global	hsmci_get_response_128
 447              		.syntax unified
 448              		.thumb
 449              		.thumb_func
 450              		.fpu fpv4-sp-d16
 451              		.type	hsmci_get_response_128, %function
 452              	hsmci_get_response_128:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 30B4     		push	{r4, r5}
ARM GAS  /tmp/ccKQ6w3U.s 			page 9


 457 0002 0A4D     		ldr	r5, .L101
 458 0004 031D     		adds	r3, r0, #4
 459 0006 1430     		adds	r0, r0, #20
 460              	.L98:
 461 0008 2A6A     		ldr	r2, [r5, #32]
 462 000a 03F8012C 		strb	r2, [r3, #-1]
 463 000e 140E     		lsrs	r4, r2, #24
 464 0010 110C     		lsrs	r1, r2, #16
 465 0012 120A     		lsrs	r2, r2, #8
 466 0014 03F8044C 		strb	r4, [r3, #-4]
 467 0018 03F8031C 		strb	r1, [r3, #-3]
 468 001c 03F8022C 		strb	r2, [r3, #-2]
 469 0020 0433     		adds	r3, r3, #4
 470 0022 8342     		cmp	r3, r0
 471 0024 F0D1     		bne	.L98
 472 0026 30BC     		pop	{r4, r5}
 473 0028 7047     		bx	lr
 474              	.L102:
 475 002a 00BF     		.align	2
 476              	.L101:
 477 002c 00000840 		.word	1074266112
 478              		.size	hsmci_get_response_128, .-hsmci_get_response_128
 479              		.section	.text.hsmci_adtc_start,"ax",%progbits
 480              		.align	1
 481              		.p2align 2,,3
 482              		.global	hsmci_adtc_start
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu fpv4-sp-d16
 487              		.type	hsmci_adtc_start, %function
 488              	hsmci_adtc_start:
 489              		@ args = 4, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491              		@ link register save eliminated.
 492 0000 F0B4     		push	{r4, r5, r6, r7}
 493 0002 9DF81040 		ldrb	r4, [sp, #16]	@ zero_extendqisi2
 494 0006 244D     		ldr	r5, .L121
 495 0008 44B3     		cbz	r4, .L104
 496 000a 6C68     		ldr	r4, [r5, #4]
 497 000c 44F40044 		orr	r4, r4, #32768
 498 0010 6C60     		str	r4, [r5, #4]
 499              	.L105:
 500 0012 214C     		ldr	r4, .L121
 501 0014 6568     		ldr	r5, [r4, #4]
 502 0016 45F4C055 		orr	r5, r5, #6144
 503 001a 6560     		str	r5, [r4, #4]
 504 001c 6568     		ldr	r5, [r4, #4]
 505 001e 9707     		lsls	r7, r2, #30
 506 0020 14BF     		ite	ne
 507 0022 45F40055 		orrne	r5, r5, #8192
 508 0026 25F40055 		biceq	r5, r5, #8192
 509 002a 10F4004F 		tst	r0, #32768
 510 002e 6560     		str	r5, [r4, #4]
 511 0030 14BF     		ite	ne
 512 0032 4FF48034 		movne	r4, #65536
 513 0036 4FF4A024 		moveq	r4, #327680
ARM GAS  /tmp/ccKQ6w3U.s 			page 10


 514 003a C603     		lsls	r6, r0, #15
 515 003c 22D4     		bmi	.L118
 516 003e 164D     		ldr	r5, .L121
 517 0040 43EA0246 		orr	r6, r3, r2, lsl #16
 518 0044 AE61     		str	r6, [r5, #24]
 519 0046 8503     		lsls	r5, r0, #14
 520 0048 0DD4     		bmi	.L119
 521 004a 4703     		lsls	r7, r0, #13
 522 004c 21D4     		bmi	.L120
 523 004e 0603     		lsls	r6, r0, #12
 524 0050 0BD4     		bmi	.L110
 525 0052 C502     		lsls	r5, r0, #11
 526 0054 48BF     		it	mi
 527 0056 44F40024 		orrmi	r4, r4, #524288
 528 005a 06E0     		b	.L110
 529              	.L104:
 530 005c 6C68     		ldr	r4, [r5, #4]
 531 005e 24F40044 		bic	r4, r4, #32768
 532 0062 6C60     		str	r4, [r5, #4]
 533 0064 D5E7     		b	.L105
 534              	.L119:
 535 0066 44F42014 		orr	r4, r4, #2621440
 536              	.L110:
 537 006a 0C4F     		ldr	r7, .L121+4
 538 006c 0C4E     		ldr	r6, .L121+8
 539 006e 0D4D     		ldr	r5, .L121+12
 540 0070 3A80     		strh	r2, [r7]	@ movhi
 541 0072 0A46     		mov	r2, r1
 542 0074 0146     		mov	r1, r0
 543 0076 2046     		mov	r0, r4
 544 0078 0024     		movs	r4, #0
 545 007a 3460     		str	r4, [r6]
 546 007c 2B80     		strh	r3, [r5]	@ movhi
 547 007e F0BC     		pop	{r4, r5, r6, r7}
 548 0080 FFF7FEBF 		b	hsmci_send_cmd_execute
 549              	.L118:
 550 0084 044E     		ldr	r6, .L121
 551 0086 C2F30805 		ubfx	r5, r2, #0, #9
 552 008a 44F40014 		orr	r4, r4, #2097152
 553 008e B561     		str	r5, [r6, #24]
 554 0090 EBE7     		b	.L110
 555              	.L120:
 556 0092 44F48014 		orr	r4, r4, #1048576
 557 0096 E8E7     		b	.L110
 558              	.L122:
 559              		.align	2
 560              	.L121:
 561 0098 00000840 		.word	1074266112
 562 009c 00000000 		.word	.LANCHOR2
 563 00a0 00000000 		.word	.LANCHOR1
 564 00a4 00000000 		.word	.LANCHOR3
 565              		.size	hsmci_adtc_start, .-hsmci_adtc_start
 566              		.section	.text.hsmci_adtc_stop,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	hsmci_adtc_stop
 570              		.syntax unified
ARM GAS  /tmp/ccKQ6w3U.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu fpv4-sp-d16
 574              		.type	hsmci_adtc_stop, %function
 575              	hsmci_adtc_stop:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578              		@ link register save eliminated.
 579 0000 0A46     		mov	r2, r1
 580 0002 0146     		mov	r1, r0
 581 0004 4FF40030 		mov	r0, #131072
 582 0008 FFF7FEBF 		b	hsmci_send_cmd_execute
 583              		.size	hsmci_adtc_stop, .-hsmci_adtc_stop
 584              		.section	.text.hsmci_read_word,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	hsmci_read_word
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu fpv4-sp-d16
 592              		.type	hsmci_read_word, %function
 593              	hsmci_read_word:
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 597 0002 234A     		ldr	r2, .L142
 598 0004 2349     		ldr	r1, .L142+4
 599 0006 01E0     		b	.L127
 600              	.L125:
 601 0008 9C07     		lsls	r4, r3, #30
 602 000a 12D4     		bmi	.L141
 603              	.L127:
 604 000c 136C     		ldr	r3, [r2, #64]
 605 000e 0B42     		tst	r3, r1
 606 0010 FAD0     		beq	.L125
 607 0012 5068     		ldr	r0, [r2, #4]
 608 0014 9668     		ldr	r6, [r2, #8]
 609 0016 D568     		ldr	r5, [r2, #12]
 610 0018 D469     		ldr	r4, [r2, #28]
 611 001a 516D     		ldr	r1, [r2, #84]
 612 001c 8027     		movs	r7, #128
 613 001e 0523     		movs	r3, #5
 614 0020 1760     		str	r7, [r2]
 615 0022 5060     		str	r0, [r2, #4]
 616 0024 9660     		str	r6, [r2, #8]
 617 0026 0020     		movs	r0, #0
 618 0028 D560     		str	r5, [r2, #12]
 619 002a D461     		str	r4, [r2, #28]
 620 002c 5165     		str	r1, [r2, #84]
 621 002e 1360     		str	r3, [r2]
 622 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 623              	.L141:
 624 0032 194C     		ldr	r4, .L142+8
 625 0034 194D     		ldr	r5, .L142+12
 626 0036 1A49     		ldr	r1, .L142+16
 627 0038 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccKQ6w3U.s 			page 12


 628 003a 2D88     		ldrh	r5, [r5]
 629 003c 0988     		ldrh	r1, [r1]
 630 003e 126B     		ldr	r2, [r2, #48]
 631 0040 0260     		str	r2, [r0]
 632 0042 0433     		adds	r3, r3, #4
 633 0044 01FB05F2 		mul	r2, r1, r5
 634 0048 9342     		cmp	r3, r2
 635 004a 2360     		str	r3, [r4]
 636 004c 1ED3     		bcc	.L131
 637 004e 154F     		ldr	r7, .L142+20
 638 0050 154E     		ldr	r6, .L142+24
 639 0052 0F4C     		ldr	r4, .L142
 640 0054 0F4D     		ldr	r5, .L142+4
 641 0056 01E0     		b	.L128
 642              	.L130:
 643 0058 1B01     		lsls	r3, r3, #4
 644 005a 17D4     		bmi	.L131
 645              	.L128:
 646 005c 3B68     		ldr	r3, [r7]
 647 005e 0021     		movs	r1, #0
 648 0060 3046     		mov	r0, r6
 649 0062 03B1     		cbz	r3, .L129
 650 0064 9847     		blx	r3
 651              	.L129:
 652 0066 236C     		ldr	r3, [r4, #64]
 653 0068 2B42     		tst	r3, r5
 654 006a F5D0     		beq	.L130
 655 006c 6068     		ldr	r0, [r4, #4]
 656 006e A668     		ldr	r6, [r4, #8]
 657 0070 E568     		ldr	r5, [r4, #12]
 658 0072 E169     		ldr	r1, [r4, #28]
 659 0074 626D     		ldr	r2, [r4, #84]
 660 0076 8027     		movs	r7, #128
 661 0078 0523     		movs	r3, #5
 662 007a 2760     		str	r7, [r4]
 663 007c 6060     		str	r0, [r4, #4]
 664 007e A660     		str	r6, [r4, #8]
 665 0080 0020     		movs	r0, #0
 666 0082 E560     		str	r5, [r4, #12]
 667 0084 E161     		str	r1, [r4, #28]
 668 0086 6265     		str	r2, [r4, #84]
 669 0088 2360     		str	r3, [r4]
 670 008a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 671              	.L131:
 672 008c 0120     		movs	r0, #1
 673 008e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 674              	.L143:
 675              		.align	2
 676              	.L142:
 677 0090 00000840 		.word	1074266112
 678 0094 000060C0 		.word	-1067450368
 679 0098 00000000 		.word	.LANCHOR1
 680 009c 00000000 		.word	.LANCHOR2
 681 00a0 00000000 		.word	.LANCHOR3
 682 00a4 00000000 		.word	.LANCHOR0
 683 00a8 000060C8 		.word	-933232640
 684              		.size	hsmci_read_word, .-hsmci_read_word
ARM GAS  /tmp/ccKQ6w3U.s 			page 13


 685              		.section	.text.hsmci_write_word,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	hsmci_write_word
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu fpv4-sp-d16
 693              		.type	hsmci_write_word, %function
 694              	hsmci_write_word:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 698 0002 234A     		ldr	r2, .L162
 699 0004 2349     		ldr	r1, .L162+4
 700 0006 01E0     		b	.L147
 701              	.L145:
 702 0008 5C07     		lsls	r4, r3, #29
 703 000a 12D4     		bmi	.L161
 704              	.L147:
 705 000c 136C     		ldr	r3, [r2, #64]
 706 000e 0B42     		tst	r3, r1
 707 0010 FAD0     		beq	.L145
 708 0012 5068     		ldr	r0, [r2, #4]
 709 0014 9668     		ldr	r6, [r2, #8]
 710 0016 D568     		ldr	r5, [r2, #12]
 711 0018 D469     		ldr	r4, [r2, #28]
 712 001a 516D     		ldr	r1, [r2, #84]
 713 001c 8027     		movs	r7, #128
 714 001e 0523     		movs	r3, #5
 715 0020 1760     		str	r7, [r2]
 716 0022 5060     		str	r0, [r2, #4]
 717 0024 9660     		str	r6, [r2, #8]
 718 0026 0020     		movs	r0, #0
 719 0028 D560     		str	r5, [r2, #12]
 720 002a D461     		str	r4, [r2, #28]
 721 002c 5165     		str	r1, [r2, #84]
 722 002e 1360     		str	r3, [r2]
 723 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 724              	.L161:
 725 0032 1949     		ldr	r1, .L162+8
 726 0034 194D     		ldr	r5, .L162+12
 727 0036 1A4C     		ldr	r4, .L162+16
 728 0038 5063     		str	r0, [r2, #52]
 729 003a 0B68     		ldr	r3, [r1]
 730 003c 2888     		ldrh	r0, [r5]
 731 003e 2288     		ldrh	r2, [r4]
 732 0040 0433     		adds	r3, r3, #4
 733 0042 02FB00F2 		mul	r2, r2, r0
 734 0046 9342     		cmp	r3, r2
 735 0048 0B60     		str	r3, [r1]
 736 004a 1ED3     		bcc	.L151
 737 004c 154F     		ldr	r7, .L162+20
 738 004e 164E     		ldr	r6, .L162+24
 739 0050 0F4C     		ldr	r4, .L162
 740 0052 104D     		ldr	r5, .L162+4
 741 0054 01E0     		b	.L148
ARM GAS  /tmp/ccKQ6w3U.s 			page 14


 742              	.L150:
 743 0056 9B06     		lsls	r3, r3, #26
 744 0058 17D4     		bmi	.L151
 745              	.L148:
 746 005a 3B68     		ldr	r3, [r7]
 747 005c 0021     		movs	r1, #0
 748 005e 3046     		mov	r0, r6
 749 0060 03B1     		cbz	r3, .L149
 750 0062 9847     		blx	r3
 751              	.L149:
 752 0064 236C     		ldr	r3, [r4, #64]
 753 0066 2B42     		tst	r3, r5
 754 0068 F5D0     		beq	.L150
 755 006a 6068     		ldr	r0, [r4, #4]
 756 006c A668     		ldr	r6, [r4, #8]
 757 006e E568     		ldr	r5, [r4, #12]
 758 0070 E169     		ldr	r1, [r4, #28]
 759 0072 626D     		ldr	r2, [r4, #84]
 760 0074 8027     		movs	r7, #128
 761 0076 0523     		movs	r3, #5
 762 0078 2760     		str	r7, [r4]
 763 007a 6060     		str	r0, [r4, #4]
 764 007c A660     		str	r6, [r4, #8]
 765 007e 0020     		movs	r0, #0
 766 0080 E560     		str	r5, [r4, #12]
 767 0082 E161     		str	r1, [r4, #28]
 768 0084 6265     		str	r2, [r4, #84]
 769 0086 2360     		str	r3, [r4]
 770 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 771              	.L151:
 772 008a 0120     		movs	r0, #1
 773 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 774              	.L163:
 775 008e 00BF     		.align	2
 776              	.L162:
 777 0090 00000840 		.word	1074266112
 778 0094 000060C0 		.word	-1067450368
 779 0098 00000000 		.word	.LANCHOR1
 780 009c 00000000 		.word	.LANCHOR2
 781 00a0 00000000 		.word	.LANCHOR3
 782 00a4 00000000 		.word	.LANCHOR0
 783 00a8 200060C0 		.word	-1067450336
 784              		.size	hsmci_write_word, .-hsmci_write_word
 785              		.section	.text.hsmci_start_read_blocks,"ax",%progbits
 786              		.align	1
 787              		.p2align 2,,3
 788              		.global	hsmci_start_read_blocks
 789              		.syntax unified
 790              		.thumb
 791              		.thumb_func
 792              		.fpu fpv4-sp-d16
 793              		.type	hsmci_start_read_blocks, %function
 794              	hsmci_start_read_blocks:
 795              		@ args = 0, pretend = 0, frame = 0
 796              		@ frame_needed = 0, uses_anonymous_args = 0
 797              		@ link register save eliminated.
 798 0000 154B     		ldr	r3, .L171
ARM GAS  /tmp/ccKQ6w3U.s 			page 15


 799 0002 164A     		ldr	r2, .L171+4
 800 0004 1B88     		ldrh	r3, [r3]
 801 0006 10B4     		push	{r4}
 802 0008 8407     		lsls	r4, r0, #30
 803 000a 03FB01F1 		mul	r1, r3, r1
 804 000e 01D1     		bne	.L165
 805 0010 9C07     		lsls	r4, r3, #30
 806 0012 1BD0     		beq	.L166
 807              	.L165:
 808 0014 5368     		ldr	r3, [r2, #4]
 809 0016 43F40053 		orr	r3, r3, #8192
 810 001a 5360     		str	r3, [r2, #4]
 811              	.L167:
 812 001c 0F4B     		ldr	r3, .L171+4
 813 001e 0F4A     		ldr	r2, .L171+4
 814 0020 C3F80001 		str	r0, [r3, #256]
 815 0024 5B68     		ldr	r3, [r3, #4]
 816 0026 0E4C     		ldr	r4, .L171+8
 817 0028 9B04     		lsls	r3, r3, #18
 818 002a 54BF     		ite	pl
 819 002c 8B08     		lsrpl	r3, r1, #2
 820 002e 0B46     		movmi	r3, r1
 821 0030 C2F80431 		str	r3, [r2, #260]
 822 0034 0120     		movs	r0, #1
 823 0036 0023     		movs	r3, #0
 824 0038 C2F81431 		str	r3, [r2, #276]
 825 003c C2F82001 		str	r0, [r2, #288]
 826 0040 2368     		ldr	r3, [r4]
 827 0042 0B44     		add	r3, r3, r1
 828 0044 2360     		str	r3, [r4]
 829 0046 5DF8044B 		ldr	r4, [sp], #4
 830 004a 7047     		bx	lr
 831              	.L166:
 832 004c 5368     		ldr	r3, [r2, #4]
 833 004e 23F40053 		bic	r3, r3, #8192
 834 0052 5360     		str	r3, [r2, #4]
 835 0054 E2E7     		b	.L167
 836              	.L172:
 837 0056 00BF     		.align	2
 838              	.L171:
 839 0058 00000000 		.word	.LANCHOR2
 840 005c 00000840 		.word	1074266112
 841 0060 00000000 		.word	.LANCHOR1
 842              		.size	hsmci_start_read_blocks, .-hsmci_start_read_blocks
 843              		.section	.text.hsmci_wait_end_of_read_blocks,"ax",%progbits
 844              		.align	1
 845              		.p2align 2,,3
 846              		.global	hsmci_wait_end_of_read_blocks
 847              		.syntax unified
 848              		.thumb
 849              		.thumb_func
 850              		.fpu fpv4-sp-d16
 851              		.type	hsmci_wait_end_of_read_blocks, %function
 852              	hsmci_wait_end_of_read_blocks:
 853              		@ args = 0, pretend = 0, frame = 0
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccKQ6w3U.s 			page 16


 856 0002 1E4D     		ldr	r5, .L196
 857 0004 1E4F     		ldr	r7, .L196+4
 858 0006 1F4C     		ldr	r4, .L196+8
 859 0008 1F4E     		ldr	r6, .L196+12
 860 000a 01E0     		b	.L177
 861              	.L175:
 862 000c 5A04     		lsls	r2, r3, #17
 863 000e 1BD4     		bmi	.L195
 864              	.L177:
 865 0010 2B68     		ldr	r3, [r5]
 866 0012 0021     		movs	r1, #0
 867 0014 3846     		mov	r0, r7
 868 0016 03B1     		cbz	r3, .L174
 869 0018 9847     		blx	r3
 870              	.L174:
 871 001a 236C     		ldr	r3, [r4, #64]
 872 001c 3342     		tst	r3, r6
 873 001e F5D0     		beq	.L175
 874 0020 40F20223 		movw	r3, #514
 875 0024 C4F82031 		str	r3, [r4, #288]
 876              	.L194:
 877 0028 6068     		ldr	r0, [r4, #4]
 878 002a A668     		ldr	r6, [r4, #8]
 879 002c E568     		ldr	r5, [r4, #12]
 880 002e E169     		ldr	r1, [r4, #28]
 881 0030 626D     		ldr	r2, [r4, #84]
 882 0032 8027     		movs	r7, #128
 883 0034 0523     		movs	r3, #5
 884 0036 2760     		str	r7, [r4]
 885 0038 6060     		str	r0, [r4, #4]
 886 003a A660     		str	r6, [r4, #8]
 887 003c 0020     		movs	r0, #0
 888 003e E560     		str	r5, [r4, #12]
 889 0040 E161     		str	r1, [r4, #28]
 890 0042 6265     		str	r2, [r4, #84]
 891 0044 2360     		str	r3, [r4]
 892 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 893              	.L195:
 894 0048 1049     		ldr	r1, .L196+16
 895 004a 114B     		ldr	r3, .L196+20
 896 004c 114A     		ldr	r2, .L196+24
 897 004e 0988     		ldrh	r1, [r1]
 898 0050 1B88     		ldrh	r3, [r3]
 899 0052 1268     		ldr	r2, [r2]
 900 0054 03FB01F3 		mul	r3, r3, r1
 901 0058 9342     		cmp	r3, r2
 902 005a 0CD8     		bhi	.L181
 903 005c 0E4F     		ldr	r7, .L196+28
 904 005e 094C     		ldr	r4, .L196+8
 905 0060 094E     		ldr	r6, .L196+12
 906              	.L188:
 907 0062 2B68     		ldr	r3, [r5]
 908 0064 0021     		movs	r1, #0
 909 0066 3846     		mov	r0, r7
 910 0068 03B1     		cbz	r3, .L179
 911 006a 9847     		blx	r3
 912              	.L179:
ARM GAS  /tmp/ccKQ6w3U.s 			page 17


 913 006c 236C     		ldr	r3, [r4, #64]
 914 006e 3342     		tst	r3, r6
 915 0070 DAD1     		bne	.L194
 916 0072 1B01     		lsls	r3, r3, #4
 917 0074 F5D5     		bpl	.L188
 918              	.L181:
 919 0076 0120     		movs	r0, #1
 920 0078 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 921              	.L197:
 922 007a 00BF     		.align	2
 923              	.L196:
 924 007c 00000000 		.word	.LANCHOR0
 925 0080 004060C0 		.word	-1067433984
 926 0084 00000840 		.word	1074266112
 927 0088 000060C0 		.word	-1067450368
 928 008c 00000000 		.word	.LANCHOR2
 929 0090 00000000 		.word	.LANCHOR3
 930 0094 00000000 		.word	.LANCHOR1
 931 0098 000060C8 		.word	-933232640
 932              		.size	hsmci_wait_end_of_read_blocks, .-hsmci_wait_end_of_read_blocks
 933              		.section	.text.hsmci_start_write_blocks,"ax",%progbits
 934              		.align	1
 935              		.p2align 2,,3
 936              		.global	hsmci_start_write_blocks
 937              		.syntax unified
 938              		.thumb
 939              		.thumb_func
 940              		.fpu fpv4-sp-d16
 941              		.type	hsmci_start_write_blocks, %function
 942              	hsmci_start_write_blocks:
 943              		@ args = 0, pretend = 0, frame = 0
 944              		@ frame_needed = 0, uses_anonymous_args = 0
 945              		@ link register save eliminated.
 946 0000 164B     		ldr	r3, .L205
 947 0002 174A     		ldr	r2, .L205+4
 948 0004 1B88     		ldrh	r3, [r3]
 949 0006 10B4     		push	{r4}
 950 0008 8407     		lsls	r4, r0, #30
 951 000a 03FB01F1 		mul	r1, r3, r1
 952 000e 01D1     		bne	.L199
 953 0010 9C07     		lsls	r4, r3, #30
 954 0012 1DD0     		beq	.L200
 955              	.L199:
 956 0014 5368     		ldr	r3, [r2, #4]
 957 0016 43F40053 		orr	r3, r3, #8192
 958 001a 5360     		str	r3, [r2, #4]
 959              	.L201:
 960 001c 104B     		ldr	r3, .L205+4
 961 001e 104A     		ldr	r2, .L205+4
 962 0020 C3F80801 		str	r0, [r3, #264]
 963 0024 5B68     		ldr	r3, [r3, #4]
 964 0026 0F48     		ldr	r0, .L205+8
 965 0028 9B04     		lsls	r3, r3, #18
 966 002a 54BF     		ite	pl
 967 002c 8B08     		lsrpl	r3, r1, #2
 968 002e 0B46     		movmi	r3, r1
 969 0030 C2F80C31 		str	r3, [r2, #268]
ARM GAS  /tmp/ccKQ6w3U.s 			page 18


 970 0034 0024     		movs	r4, #0
 971 0036 4FF48073 		mov	r3, #256
 972 003a C2F81C41 		str	r4, [r2, #284]
 973 003e C2F82031 		str	r3, [r2, #288]
 974 0042 0368     		ldr	r3, [r0]
 975 0044 5DF8044B 		ldr	r4, [sp], #4
 976 0048 0B44     		add	r3, r3, r1
 977 004a 0360     		str	r3, [r0]
 978 004c 0120     		movs	r0, #1
 979 004e 7047     		bx	lr
 980              	.L200:
 981 0050 5368     		ldr	r3, [r2, #4]
 982 0052 23F40053 		bic	r3, r3, #8192
 983 0056 5360     		str	r3, [r2, #4]
 984 0058 E0E7     		b	.L201
 985              	.L206:
 986 005a 00BF     		.align	2
 987              	.L205:
 988 005c 00000000 		.word	.LANCHOR2
 989 0060 00000840 		.word	1074266112
 990 0064 00000000 		.word	.LANCHOR1
 991              		.size	hsmci_start_write_blocks, .-hsmci_start_write_blocks
 992              		.section	.text.hsmci_wait_end_of_write_blocks,"ax",%progbits
 993              		.align	1
 994              		.p2align 2,,3
 995              		.global	hsmci_wait_end_of_write_blocks
 996              		.syntax unified
 997              		.thumb
 998              		.thumb_func
 999              		.fpu fpv4-sp-d16
 1000              		.type	hsmci_wait_end_of_write_blocks, %function
 1001              	hsmci_wait_end_of_write_blocks:
 1002              		@ args = 0, pretend = 0, frame = 0
 1003              		@ frame_needed = 0, uses_anonymous_args = 0
 1004 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1005 0002 264D     		ldr	r5, .L229
 1006 0004 264F     		ldr	r7, .L229+4
 1007 0006 274C     		ldr	r4, .L229+8
 1008 0008 274E     		ldr	r6, .L229+12
 1009 000a 01E0     		b	.L211
 1010              	.L209:
 1011 000c 1A04     		lsls	r2, r3, #16
 1012 000e 1BD4     		bmi	.L228
 1013              	.L211:
 1014 0010 2B68     		ldr	r3, [r5]
 1015 0012 0021     		movs	r1, #0
 1016 0014 3846     		mov	r0, r7
 1017 0016 03B1     		cbz	r3, .L208
 1018 0018 9847     		blx	r3
 1019              	.L208:
 1020 001a 236C     		ldr	r3, [r4, #64]
 1021 001c 3342     		tst	r3, r6
 1022 001e F5D0     		beq	.L209
 1023 0020 8023     		movs	r3, #128
 1024 0022 6768     		ldr	r7, [r4, #4]
 1025 0024 A068     		ldr	r0, [r4, #8]
 1026 0026 E668     		ldr	r6, [r4, #12]
ARM GAS  /tmp/ccKQ6w3U.s 			page 19


 1027 0028 E569     		ldr	r5, [r4, #28]
 1028 002a 616D     		ldr	r1, [r4, #84]
 1029 002c 2360     		str	r3, [r4]
 1030 002e 0522     		movs	r2, #5
 1031 0030 40F20223 		movw	r3, #514
 1032 0034 6760     		str	r7, [r4, #4]
 1033 0036 A060     		str	r0, [r4, #8]
 1034 0038 E660     		str	r6, [r4, #12]
 1035 003a 0020     		movs	r0, #0
 1036 003c E561     		str	r5, [r4, #28]
 1037 003e 6165     		str	r1, [r4, #84]
 1038 0040 2260     		str	r2, [r4]
 1039 0042 C4F82031 		str	r3, [r4, #288]
 1040 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1041              	.L228:
 1042 0048 1849     		ldr	r1, .L229+16
 1043 004a 194B     		ldr	r3, .L229+20
 1044 004c 194A     		ldr	r2, .L229+24
 1045 004e 0988     		ldrh	r1, [r1]
 1046 0050 1B88     		ldrh	r3, [r3]
 1047 0052 1268     		ldr	r2, [r2]
 1048 0054 03FB01F3 		mul	r3, r3, r1
 1049 0058 9342     		cmp	r3, r2
 1050 005a 1DD8     		bhi	.L215
 1051 005c 164F     		ldr	r7, .L229+28
 1052 005e 114C     		ldr	r4, .L229+8
 1053 0060 114E     		ldr	r6, .L229+12
 1054 0062 01E0     		b	.L222
 1055              	.L214:
 1056 0064 9B06     		lsls	r3, r3, #26
 1057 0066 17D4     		bmi	.L215
 1058              	.L222:
 1059 0068 2B68     		ldr	r3, [r5]
 1060 006a 0021     		movs	r1, #0
 1061 006c 3846     		mov	r0, r7
 1062 006e 03B1     		cbz	r3, .L213
 1063 0070 9847     		blx	r3
 1064              	.L213:
 1065 0072 236C     		ldr	r3, [r4, #64]
 1066 0074 3342     		tst	r3, r6
 1067 0076 F5D0     		beq	.L214
 1068 0078 6068     		ldr	r0, [r4, #4]
 1069 007a A668     		ldr	r6, [r4, #8]
 1070 007c E568     		ldr	r5, [r4, #12]
 1071 007e E169     		ldr	r1, [r4, #28]
 1072 0080 626D     		ldr	r2, [r4, #84]
 1073 0082 8027     		movs	r7, #128
 1074 0084 0523     		movs	r3, #5
 1075 0086 2760     		str	r7, [r4]
 1076 0088 6060     		str	r0, [r4, #4]
 1077 008a A660     		str	r6, [r4, #8]
 1078 008c 0020     		movs	r0, #0
 1079 008e E560     		str	r5, [r4, #12]
 1080 0090 E161     		str	r1, [r4, #28]
 1081 0092 6265     		str	r2, [r4, #84]
 1082 0094 2360     		str	r3, [r4]
 1083 0096 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccKQ6w3U.s 			page 20


 1084              	.L215:
 1085 0098 0120     		movs	r0, #1
 1086 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1087              	.L230:
 1088              		.align	2
 1089              	.L229:
 1090 009c 00000000 		.word	.LANCHOR0
 1091 00a0 008060C0 		.word	-1067417600
 1092 00a4 00000840 		.word	1074266112
 1093 00a8 000060C0 		.word	-1067450368
 1094 00ac 00000000 		.word	.LANCHOR2
 1095 00b0 00000000 		.word	.LANCHOR3
 1096 00b4 00000000 		.word	.LANCHOR1
 1097 00b8 200060C0 		.word	-1067450336
 1098              		.size	hsmci_wait_end_of_write_blocks, .-hsmci_wait_end_of_write_blocks
 1099              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1100              		.align	2
 1101              		.type	cpu_irq_critical_section_counter, %object
 1102              		.size	cpu_irq_critical_section_counter, 4
 1103              	cpu_irq_critical_section_counter:
 1104 0000 00000000 		.space	4
 1105              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1106              		.type	cpu_irq_prev_interrupt_state, %object
 1107              		.size	cpu_irq_prev_interrupt_state, 1
 1108              	cpu_irq_prev_interrupt_state:
 1109 0000 00       		.space	1
 1110              		.section	.bss.hsmciIdleFunc,"aw",%nobits
 1111              		.align	2
 1112              		.set	.LANCHOR0,. + 0
 1113              		.type	hsmciIdleFunc, %object
 1114              		.size	hsmciIdleFunc, 4
 1115              	hsmciIdleFunc:
 1116 0000 00000000 		.space	4
 1117              		.section	.bss.hsmci_block_size,"aw",%nobits
 1118              		.align	1
 1119              		.set	.LANCHOR2,. + 0
 1120              		.type	hsmci_block_size, %object
 1121              		.size	hsmci_block_size, 2
 1122              	hsmci_block_size:
 1123 0000 0000     		.space	2
 1124              		.section	.bss.hsmci_nb_block,"aw",%nobits
 1125              		.align	1
 1126              		.set	.LANCHOR3,. + 0
 1127              		.type	hsmci_nb_block, %object
 1128              		.size	hsmci_nb_block, 2
 1129              	hsmci_nb_block:
 1130 0000 0000     		.space	2
 1131              		.section	.bss.hsmci_transfert_pos,"aw",%nobits
 1132              		.align	2
 1133              		.set	.LANCHOR1,. + 0
 1134              		.type	hsmci_transfert_pos, %object
 1135              		.size	hsmci_transfert_pos, 4
 1136              	hsmci_transfert_pos:
 1137 0000 00000000 		.space	4
 1138              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
