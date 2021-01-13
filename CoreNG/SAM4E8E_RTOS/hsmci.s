ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 1


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
  14              		.text
  15              		.section	.text.hsmci_send_cmd_execute,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	hsmci_send_cmd_execute, %function
  23              	hsmci_send_cmd_execute:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 01F03F03 		and	r3, r1, #63
  28 0004 0343     		orrs	r3, r3, r0
  29 0006 C805     		lsls	r0, r1, #23
  30 0008 F0B4     		push	{r4, r5, r6, r7}
  31 000a 03D5     		bpl	.L2
  32 000c 0F05     		lsls	r7, r1, #20
  33 000e 29D5     		bpl	.L3
  34 0010 43F48453 		orr	r3, r3, #4224
  35              	.L2:
  36 0014 254C     		ldr	r4, .L37
  37 0016 4D04     		lsls	r5, r1, #17
  38 0018 48BF     		it	mi
  39 001a 43F40063 		orrmi	r3, r3, #2048
  40 001e 2261     		str	r2, [r4, #16]
  41 0020 01F48050 		and	r0, r1, #4096
  42 0024 2246     		mov	r2, r4
  43 0026 6361     		str	r3, [r4, #20]
  44 0028 04E0     		b	.L9
  45              	.L36:
  46 002a 13F41F0F 		tst	r3, #10420224
  47 002e 25D1     		bne	.L34
  48              	.L7:
  49 0030 DC07     		lsls	r4, r3, #31
  50 0032 1ED4     		bmi	.L35
  51              	.L9:
  52 0034 136C     		ldr	r3, [r2, #64]
  53 0036 0028     		cmp	r0, #0
  54 0038 F7D1     		bne	.L36
  55 003a 13F41B0F 		tst	r3, #10158080
  56 003e F7D0     		beq	.L7
  57              	.L32:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 2


  58 0040 5768     		ldr	r7, [r2, #4]
  59 0042 9668     		ldr	r6, [r2, #8]
  60 0044 D568     		ldr	r5, [r2, #12]
  61 0046 D469     		ldr	r4, [r2, #28]
  62 0048 516D     		ldr	r1, [r2, #84]
  63 004a 4FF0800C 		mov	ip, #128
  64 004e C2F800C0 		str	ip, [r2]
  65 0052 0523     		movs	r3, #5
  66 0054 5760     		str	r7, [r2, #4]
  67              	.L31:
  68 0056 9660     		str	r6, [r2, #8]
  69 0058 D560     		str	r5, [r2, #12]
  70 005a D461     		str	r4, [r2, #28]
  71 005c 5165     		str	r1, [r2, #84]
  72 005e F0BC     		pop	{r4, r5, r6, r7}
  73 0060 1360     		str	r3, [r2]
  74 0062 7047     		bx	lr
  75              	.L3:
  76 0064 8E04     		lsls	r6, r1, #18
  77 0066 4CBF     		ite	mi
  78 0068 43F48653 		orrmi	r3, r3, #4288
  79 006c 43F48253 		orrpl	r3, r3, #4160
  80 0070 D0E7     		b	.L2
  81              	.L35:
  82 0072 8B04     		lsls	r3, r1, #18
  83 0074 0DD4     		bmi	.L10
  84              	.L30:
  85 0076 0120     		movs	r0, #1
  86 0078 F0BC     		pop	{r4, r5, r6, r7}
  87 007a 7047     		bx	lr
  88              	.L34:
  89 007c 5068     		ldr	r0, [r2, #4]
  90 007e 9668     		ldr	r6, [r2, #8]
  91 0080 D568     		ldr	r5, [r2, #12]
  92 0082 D469     		ldr	r4, [r2, #28]
  93 0084 516D     		ldr	r1, [r2, #84]
  94 0086 8027     		movs	r7, #128
  95 0088 1760     		str	r7, [r2]
  96 008a 0523     		movs	r3, #5
  97 008c 5060     		str	r0, [r2, #4]
  98 008e 0020     		movs	r0, #0
  99 0090 E1E7     		b	.L31
 100              	.L10:
 101 0092 064A     		ldr	r2, .L37
 102 0094 136C     		ldr	r3, [r2, #64]
 103 0096 4FF0FF30 		mov	r0, #-1
 104              	.L11:
 105 009a 03F03003 		and	r3, r3, #48
 106 009e 202B     		cmp	r3, #32
 107 00a0 E9D0     		beq	.L30
 108 00a2 0138     		subs	r0, r0, #1
 109 00a4 136C     		ldr	r3, [r2, #64]
 110 00a6 F8D1     		bne	.L11
 111 00a8 CAE7     		b	.L32
 112              	.L38:
 113 00aa 00BF     		.align	2
 114              	.L37:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 3


 115 00ac 00000840 		.word	1074266112
 116              		.size	hsmci_send_cmd_execute, .-hsmci_send_cmd_execute
 117              		.section	.text.hsmci_get_speed,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	hsmci_get_speed
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	hsmci_get_speed, %function
 126              	hsmci_get_speed:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 064A     		ldr	r2, .L40
 131 0002 074B     		ldr	r3, .L40+4
 132 0004 5068     		ldr	r0, [r2, #4]
 133 0006 5268     		ldr	r2, [r2, #4]
 134 0008 C0B2     		uxtb	r0, r0
 135 000a 4000     		lsls	r0, r0, #1
 136 000c C2F30042 		ubfx	r2, r2, #16, #1
 137 0010 0230     		adds	r0, r0, #2
 138 0012 1044     		add	r0, r0, r2
 139 0014 B3FBF0F0 		udiv	r0, r3, r0
 140 0018 4008     		lsrs	r0, r0, #1
 141 001a 7047     		bx	lr
 142              	.L41:
 143              		.align	2
 144              	.L40:
 145 001c 00000840 		.word	1074266112
 146 0020 000E2707 		.word	120000000
 147              		.size	hsmci_get_speed, .-hsmci_get_speed
 148              		.section	.text.hsmci_set_idle_func,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	hsmci_set_idle_func
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	hsmci_set_idle_func, %function
 157              	hsmci_set_idle_func:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 024B     		ldr	r3, .L43
 162 0002 1A68     		ldr	r2, [r3]
 163 0004 1860     		str	r0, [r3]
 164 0006 1046     		mov	r0, r2
 165 0008 7047     		bx	lr
 166              	.L44:
 167 000a 00BF     		.align	2
 168              	.L43:
 169 000c 00000000 		.word	.LANCHOR0
 170              		.size	hsmci_set_idle_func, .-hsmci_set_idle_func
 171              		.section	.text.hsmci_init,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	hsmci_init
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	hsmci_init, %function
 180              	hsmci_init:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 10B5     		push	{r4, lr}
 184 0002 1020     		movs	r0, #16
 185 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 186 0008 054B     		ldr	r3, .L47
 187 000a 7222     		movs	r2, #114
 188 000c 1124     		movs	r4, #17
 189 000e 4FF4E060 		mov	r0, #1792
 190 0012 0521     		movs	r1, #5
 191 0014 9A60     		str	r2, [r3, #8]
 192 0016 DA61     		str	r2, [r3, #28]
 193 0018 5C65     		str	r4, [r3, #84]
 194 001a 5860     		str	r0, [r3, #4]
 195 001c 1960     		str	r1, [r3]
 196 001e 10BD     		pop	{r4, pc}
 197              	.L48:
 198              		.align	2
 199              	.L47:
 200 0020 00000840 		.word	1074266112
 201              		.size	hsmci_init, .-hsmci_init
 202              		.section	.text.hsmci_get_bus_width,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	hsmci_get_bus_width
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	hsmci_get_bus_width, %function
 211              	hsmci_get_bus_width:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 0028     		cmp	r0, #0
 216 0002 0CBF     		ite	eq
 217 0004 0420     		moveq	r0, #4
 218 0006 0020     		movne	r0, #0
 219 0008 7047     		bx	lr
 220              		.size	hsmci_get_bus_width, .-hsmci_get_bus_width
 221 000a 00BF     		.section	.text.hsmci_is_high_speed_capable,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	hsmci_is_high_speed_capable
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 5


 229              		.type	hsmci_is_high_speed_capable, %function
 230              	hsmci_is_high_speed_capable:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0120     		movs	r0, #1
 235 0002 7047     		bx	lr
 236              		.size	hsmci_is_high_speed_capable, .-hsmci_is_high_speed_capable
 237              		.section	.text.hsmci_select_device,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	hsmci_select_device
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	hsmci_select_device, %function
 246              	hsmci_select_device:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 2E48     		ldr	r0, .L80
 251 0002 5BB3     		cbz	r3, .L55
 252 0004 436D     		ldr	r3, [r0, #84]
 253 0006 43F48073 		orr	r3, r3, #256
 254 000a 4365     		str	r3, [r0, #84]
 255 000c 2C4B     		ldr	r3, .L80+4
 256 000e B3EB410F 		cmp	r3, r1, lsl #1
 257 0012 2BD3     		bcc	.L57
 258              	.L78:
 259 0014 2B48     		ldr	r0, .L80+8
 260 0016 B0FBF1F3 		udiv	r3, r0, r1
 261 001a 01FB1301 		mls	r1, r1, r3, r0
 262 001e 10B4     		push	{r4}
 263 0020 0029     		cmp	r1, #0
 264 0022 38D1     		bne	.L58
 265 0024 991E     		subs	r1, r3, #2
 266              	.L59:
 267 0026 254B     		ldr	r3, .L80
 268 0028 5868     		ldr	r0, [r3, #4]
 269 002a 20F0FF00 		bic	r0, r0, #255
 270 002e 5860     		str	r0, [r3, #4]
 271 0030 5C68     		ldr	r4, [r3, #4]
 272 0032 C1F34700 		ubfx	r0, r1, #1, #8
 273 0036 2043     		orrs	r0, r0, r4
 274 0038 C907     		lsls	r1, r1, #31
 275 003a 5860     		str	r0, [r3, #4]
 276 003c 2DD5     		bpl	.L60
 277 003e 5968     		ldr	r1, [r3, #4]
 278 0040 042A     		cmp	r2, #4
 279 0042 41F48031 		orr	r1, r1, #65536
 280 0046 5960     		str	r1, [r3, #4]
 281 0048 2ED0     		beq	.L63
 282              	.L79:
 283 004a 082A     		cmp	r2, #8
 284 004c 1B4B     		ldr	r3, .L80
 285 004e 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 6


 286 0052 0CBF     		ite	eq
 287 0054 C022     		moveq	r2, #192
 288 0056 0022     		movne	r2, #0
 289 0058 DA60     		str	r2, [r3, #12]
 290 005a 7047     		bx	lr
 291              	.L55:
 292 005c 436D     		ldr	r3, [r0, #84]
 293 005e 23F48073 		bic	r3, r3, #256
 294 0062 4365     		str	r3, [r0, #84]
 295 0064 164B     		ldr	r3, .L80+4
 296 0066 B3EB410F 		cmp	r3, r1, lsl #1
 297 006a D3D2     		bcs	.L78
 298              	.L57:
 299 006c 134B     		ldr	r3, .L80
 300 006e 5968     		ldr	r1, [r3, #4]
 301 0070 21F0FF01 		bic	r1, r1, #255
 302 0074 5960     		str	r1, [r3, #4]
 303 0076 5968     		ldr	r1, [r3, #4]
 304 0078 5960     		str	r1, [r3, #4]
 305 007a 1049     		ldr	r1, .L80
 306 007c 4B68     		ldr	r3, [r1, #4]
 307 007e 042A     		cmp	r2, #4
 308 0080 23F48033 		bic	r3, r3, #65536
 309 0084 4B60     		str	r3, [r1, #4]
 310 0086 15D0     		beq	.L72
 311 0088 082A     		cmp	r2, #8
 312 008a 0C4B     		ldr	r3, .L80
 313 008c 0CBF     		ite	eq
 314 008e C022     		moveq	r2, #192
 315 0090 0022     		movne	r2, #0
 316 0092 DA60     		str	r2, [r3, #12]
 317 0094 7047     		bx	lr
 318              	.L58:
 319 0096 591E     		subs	r1, r3, #1
 320 0098 C5E7     		b	.L59
 321              	.L60:
 322 009a 0849     		ldr	r1, .L80
 323 009c 4B68     		ldr	r3, [r1, #4]
 324 009e 042A     		cmp	r2, #4
 325 00a0 23F48033 		bic	r3, r3, #65536
 326 00a4 4B60     		str	r3, [r1, #4]
 327 00a6 D0D1     		bne	.L79
 328              	.L63:
 329 00a8 044B     		ldr	r3, .L80
 330 00aa 5DF8044B 		ldr	r4, [sp], #4
 331 00ae 8022     		movs	r2, #128
 332 00b0 DA60     		str	r2, [r3, #12]
 333 00b2 7047     		bx	lr
 334              	.L72:
 335 00b4 014B     		ldr	r3, .L80
 336 00b6 8022     		movs	r2, #128
 337 00b8 DA60     		str	r2, [r3, #12]
 338 00ba 7047     		bx	lr
 339              	.L81:
 340              		.align	2
 341              	.L80:
 342 00bc 00000840 		.word	1074266112
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 7


 343 00c0 FF0D2707 		.word	119999999
 344 00c4 000E2707 		.word	120000000
 345              		.size	hsmci_select_device, .-hsmci_select_device
 346              		.section	.text.hsmci_deselect_device,"ax",%progbits
 347              		.align	1
 348              		.p2align 2,,3
 349              		.global	hsmci_deselect_device
 350              		.syntax unified
 351              		.thumb
 352              		.thumb_func
 353              		.fpu fpv4-sp-d16
 354              		.type	hsmci_deselect_device, %function
 355              	hsmci_deselect_device:
 356              		@ args = 0, pretend = 0, frame = 0
 357              		@ frame_needed = 0, uses_anonymous_args = 0
 358              		@ link register save eliminated.
 359 0000 7047     		bx	lr
 360              		.size	hsmci_deselect_device, .-hsmci_deselect_device
 361 0002 00BF     		.section	.text.hsmci_send_clock,"ax",%progbits
 362              		.align	1
 363              		.p2align 2,,3
 364              		.global	hsmci_send_clock
 365              		.syntax unified
 366              		.thumb
 367              		.thumb_func
 368              		.fpu fpv4-sp-d16
 369              		.type	hsmci_send_clock, %function
 370              	hsmci_send_clock:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              		@ link register save eliminated.
 374 0000 074B     		ldr	r3, .L87
 375 0002 5A68     		ldr	r2, [r3, #4]
 376 0004 0020     		movs	r0, #0
 377 0006 22F46052 		bic	r2, r2, #14336
 378 000a 4FF41061 		mov	r1, #2304
 379 000e 5A60     		str	r2, [r3, #4]
 380 0010 1861     		str	r0, [r3, #16]
 381 0012 1A46     		mov	r2, r3
 382 0014 5961     		str	r1, [r3, #20]
 383              	.L84:
 384 0016 136C     		ldr	r3, [r2, #64]
 385 0018 DB07     		lsls	r3, r3, #31
 386 001a FCD5     		bpl	.L84
 387 001c 7047     		bx	lr
 388              	.L88:
 389 001e 00BF     		.align	2
 390              	.L87:
 391 0020 00000840 		.word	1074266112
 392              		.size	hsmci_send_clock, .-hsmci_send_clock
 393              		.section	.text.hsmci_send_cmd,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	hsmci_send_cmd
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 8


 400              		.fpu fpv4-sp-d16
 401              		.type	hsmci_send_cmd, %function
 402              	hsmci_send_cmd:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 084B     		ldr	r3, .L91
 407 0002 5A68     		ldr	r2, [r3, #4]
 408 0004 30B4     		push	{r4, r5}
 409 0006 22F46052 		bic	r2, r2, #14336
 410 000a 5A60     		str	r2, [r3, #4]
 411 000c 5C68     		ldr	r4, [r3, #4]
 412 000e 0025     		movs	r5, #0
 413 0010 24F40044 		bic	r4, r4, #32768
 414 0014 5C60     		str	r4, [r3, #4]
 415 0016 0A46     		mov	r2, r1
 416 0018 9D61     		str	r5, [r3, #24]
 417 001a 0146     		mov	r1, r0
 418 001c 2846     		mov	r0, r5
 419 001e 30BC     		pop	{r4, r5}
 420 0020 FFF7FEBF 		b	hsmci_send_cmd_execute
 421              	.L92:
 422              		.align	2
 423              	.L91:
 424 0024 00000840 		.word	1074266112
 425              		.size	hsmci_send_cmd, .-hsmci_send_cmd
 426              		.section	.text.hsmci_get_response,"ax",%progbits
 427              		.align	1
 428              		.p2align 2,,3
 429              		.global	hsmci_get_response
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu fpv4-sp-d16
 434              		.type	hsmci_get_response, %function
 435              	hsmci_get_response:
 436              		@ args = 0, pretend = 0, frame = 0
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438              		@ link register save eliminated.
 439 0000 014B     		ldr	r3, .L94
 440 0002 186A     		ldr	r0, [r3, #32]
 441 0004 7047     		bx	lr
 442              	.L95:
 443 0006 00BF     		.align	2
 444              	.L94:
 445 0008 00000840 		.word	1074266112
 446              		.size	hsmci_get_response, .-hsmci_get_response
 447              		.section	.text.hsmci_get_response_128,"ax",%progbits
 448              		.align	1
 449              		.p2align 2,,3
 450              		.global	hsmci_get_response_128
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu fpv4-sp-d16
 455              		.type	hsmci_get_response_128, %function
 456              	hsmci_get_response_128:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 9


 457              		@ args = 0, pretend = 0, frame = 0
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459              		@ link register save eliminated.
 460 0000 30B4     		push	{r4, r5}
 461 0002 0A4D     		ldr	r5, .L100
 462 0004 031D     		adds	r3, r0, #4
 463 0006 1430     		adds	r0, r0, #20
 464              	.L97:
 465 0008 2A6A     		ldr	r2, [r5, #32]
 466 000a 03F8012C 		strb	r2, [r3, #-1]
 467 000e 140E     		lsrs	r4, r2, #24
 468 0010 110C     		lsrs	r1, r2, #16
 469 0012 120A     		lsrs	r2, r2, #8
 470 0014 03F8044C 		strb	r4, [r3, #-4]
 471 0018 03F8031C 		strb	r1, [r3, #-3]
 472 001c 03F8022C 		strb	r2, [r3, #-2]
 473 0020 0433     		adds	r3, r3, #4
 474 0022 8342     		cmp	r3, r0
 475 0024 F0D1     		bne	.L97
 476 0026 30BC     		pop	{r4, r5}
 477 0028 7047     		bx	lr
 478              	.L101:
 479 002a 00BF     		.align	2
 480              	.L100:
 481 002c 00000840 		.word	1074266112
 482              		.size	hsmci_get_response_128, .-hsmci_get_response_128
 483              		.section	.text.hsmci_adtc_start,"ax",%progbits
 484              		.align	1
 485              		.p2align 2,,3
 486              		.global	hsmci_adtc_start
 487              		.syntax unified
 488              		.thumb
 489              		.thumb_func
 490              		.fpu fpv4-sp-d16
 491              		.type	hsmci_adtc_start, %function
 492              	hsmci_adtc_start:
 493              		@ args = 4, pretend = 0, frame = 0
 494              		@ frame_needed = 0, uses_anonymous_args = 0
 495              		@ link register save eliminated.
 496 0000 F0B4     		push	{r4, r5, r6, r7}
 497 0002 9DF81040 		ldrb	r4, [sp, #16]	@ zero_extendqisi2
 498 0006 244D     		ldr	r5, .L120
 499 0008 44B3     		cbz	r4, .L103
 500 000a 6C68     		ldr	r4, [r5, #4]
 501 000c 44F40044 		orr	r4, r4, #32768
 502 0010 6C60     		str	r4, [r5, #4]
 503              	.L104:
 504 0012 214C     		ldr	r4, .L120
 505 0014 6568     		ldr	r5, [r4, #4]
 506 0016 45F4C055 		orr	r5, r5, #6144
 507 001a 6560     		str	r5, [r4, #4]
 508 001c 6568     		ldr	r5, [r4, #4]
 509 001e 9707     		lsls	r7, r2, #30
 510 0020 14BF     		ite	ne
 511 0022 45F40055 		orrne	r5, r5, #8192
 512 0026 25F40055 		biceq	r5, r5, #8192
 513 002a 10F4004F 		tst	r0, #32768
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 10


 514 002e 6560     		str	r5, [r4, #4]
 515 0030 14BF     		ite	ne
 516 0032 4FF48034 		movne	r4, #65536
 517 0036 4FF4A024 		moveq	r4, #327680
 518 003a C603     		lsls	r6, r0, #15
 519 003c 22D4     		bmi	.L117
 520 003e 164D     		ldr	r5, .L120
 521 0040 43EA0246 		orr	r6, r3, r2, lsl #16
 522 0044 AE61     		str	r6, [r5, #24]
 523 0046 8503     		lsls	r5, r0, #14
 524 0048 0DD4     		bmi	.L118
 525 004a 4703     		lsls	r7, r0, #13
 526 004c 21D4     		bmi	.L119
 527 004e 0603     		lsls	r6, r0, #12
 528 0050 0BD4     		bmi	.L109
 529 0052 C502     		lsls	r5, r0, #11
 530 0054 48BF     		it	mi
 531 0056 44F40024 		orrmi	r4, r4, #524288
 532 005a 06E0     		b	.L109
 533              	.L103:
 534 005c 6C68     		ldr	r4, [r5, #4]
 535 005e 24F40044 		bic	r4, r4, #32768
 536 0062 6C60     		str	r4, [r5, #4]
 537 0064 D5E7     		b	.L104
 538              	.L118:
 539 0066 44F42014 		orr	r4, r4, #2621440
 540              	.L109:
 541 006a 0C4F     		ldr	r7, .L120+4
 542 006c 0C4E     		ldr	r6, .L120+8
 543 006e 0D4D     		ldr	r5, .L120+12
 544 0070 3A80     		strh	r2, [r7]	@ movhi
 545 0072 0A46     		mov	r2, r1
 546 0074 0146     		mov	r1, r0
 547 0076 2046     		mov	r0, r4
 548 0078 0024     		movs	r4, #0
 549 007a 3460     		str	r4, [r6]
 550 007c 2B80     		strh	r3, [r5]	@ movhi
 551 007e F0BC     		pop	{r4, r5, r6, r7}
 552 0080 FFF7FEBF 		b	hsmci_send_cmd_execute
 553              	.L117:
 554 0084 044E     		ldr	r6, .L120
 555 0086 C2F30805 		ubfx	r5, r2, #0, #9
 556 008a 44F40014 		orr	r4, r4, #2097152
 557 008e B561     		str	r5, [r6, #24]
 558 0090 EBE7     		b	.L109
 559              	.L119:
 560 0092 44F48014 		orr	r4, r4, #1048576
 561 0096 E8E7     		b	.L109
 562              	.L121:
 563              		.align	2
 564              	.L120:
 565 0098 00000840 		.word	1074266112
 566 009c 00000000 		.word	.LANCHOR2
 567 00a0 00000000 		.word	.LANCHOR1
 568 00a4 00000000 		.word	.LANCHOR3
 569              		.size	hsmci_adtc_start, .-hsmci_adtc_start
 570              		.section	.text.hsmci_adtc_stop,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 11


 571              		.align	1
 572              		.p2align 2,,3
 573              		.global	hsmci_adtc_stop
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu fpv4-sp-d16
 578              		.type	hsmci_adtc_stop, %function
 579              	hsmci_adtc_stop:
 580              		@ args = 0, pretend = 0, frame = 0
 581              		@ frame_needed = 0, uses_anonymous_args = 0
 582              		@ link register save eliminated.
 583 0000 0A46     		mov	r2, r1
 584 0002 0146     		mov	r1, r0
 585 0004 4FF40030 		mov	r0, #131072
 586 0008 FFF7FEBF 		b	hsmci_send_cmd_execute
 587              		.size	hsmci_adtc_stop, .-hsmci_adtc_stop
 588              		.section	.text.hsmci_read_word,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	hsmci_read_word
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	hsmci_read_word, %function
 597              	hsmci_read_word:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 601 0002 234A     		ldr	r2, .L140
 602 0004 2349     		ldr	r1, .L140+4
 603 0006 01E0     		b	.L126
 604              	.L124:
 605 0008 9C07     		lsls	r4, r3, #30
 606 000a 12D4     		bmi	.L139
 607              	.L126:
 608 000c 136C     		ldr	r3, [r2, #64]
 609 000e 0B42     		tst	r3, r1
 610 0010 FAD0     		beq	.L124
 611 0012 5068     		ldr	r0, [r2, #4]
 612 0014 9668     		ldr	r6, [r2, #8]
 613 0016 D568     		ldr	r5, [r2, #12]
 614 0018 D469     		ldr	r4, [r2, #28]
 615 001a 516D     		ldr	r1, [r2, #84]
 616 001c 8027     		movs	r7, #128
 617 001e 0523     		movs	r3, #5
 618 0020 1760     		str	r7, [r2]
 619 0022 5060     		str	r0, [r2, #4]
 620 0024 9660     		str	r6, [r2, #8]
 621 0026 0020     		movs	r0, #0
 622 0028 D560     		str	r5, [r2, #12]
 623 002a D461     		str	r4, [r2, #28]
 624 002c 5165     		str	r1, [r2, #84]
 625 002e 1360     		str	r3, [r2]
 626 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 627              	.L139:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 12


 628 0032 194C     		ldr	r4, .L140+8
 629 0034 1949     		ldr	r1, .L140+12
 630 0036 1A4B     		ldr	r3, .L140+16
 631 0038 0D88     		ldrh	r5, [r1]
 632 003a 1988     		ldrh	r1, [r3]
 633 003c 2368     		ldr	r3, [r4]
 634 003e 126B     		ldr	r2, [r2, #48]
 635 0040 0260     		str	r2, [r0]
 636 0042 0433     		adds	r3, r3, #4
 637 0044 01FB05F2 		mul	r2, r1, r5
 638 0048 9342     		cmp	r3, r2
 639 004a 2360     		str	r3, [r4]
 640 004c 1ED3     		bcc	.L127
 641 004e 154F     		ldr	r7, .L140+20
 642 0050 154E     		ldr	r6, .L140+24
 643 0052 0F4C     		ldr	r4, .L140
 644 0054 0F4D     		ldr	r5, .L140+4
 645 0056 01E0     		b	.L130
 646              	.L129:
 647 0058 1B01     		lsls	r3, r3, #4
 648 005a 17D4     		bmi	.L127
 649              	.L130:
 650 005c 3B68     		ldr	r3, [r7]
 651 005e 0021     		movs	r1, #0
 652 0060 3046     		mov	r0, r6
 653 0062 03B1     		cbz	r3, .L128
 654 0064 9847     		blx	r3
 655              	.L128:
 656 0066 236C     		ldr	r3, [r4, #64]
 657 0068 2B42     		tst	r3, r5
 658 006a F5D0     		beq	.L129
 659 006c 6068     		ldr	r0, [r4, #4]
 660 006e A668     		ldr	r6, [r4, #8]
 661 0070 E568     		ldr	r5, [r4, #12]
 662 0072 E169     		ldr	r1, [r4, #28]
 663 0074 626D     		ldr	r2, [r4, #84]
 664 0076 8027     		movs	r7, #128
 665 0078 0523     		movs	r3, #5
 666 007a 2760     		str	r7, [r4]
 667 007c 6060     		str	r0, [r4, #4]
 668 007e A660     		str	r6, [r4, #8]
 669 0080 0020     		movs	r0, #0
 670 0082 E560     		str	r5, [r4, #12]
 671 0084 E161     		str	r1, [r4, #28]
 672 0086 6265     		str	r2, [r4, #84]
 673 0088 2360     		str	r3, [r4]
 674 008a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 675              	.L127:
 676 008c 0120     		movs	r0, #1
 677 008e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 678              	.L141:
 679              		.align	2
 680              	.L140:
 681 0090 00000840 		.word	1074266112
 682 0094 000060C0 		.word	-1067450368
 683 0098 00000000 		.word	.LANCHOR1
 684 009c 00000000 		.word	.LANCHOR2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 13


 685 00a0 00000000 		.word	.LANCHOR3
 686 00a4 00000000 		.word	.LANCHOR0
 687 00a8 000060C8 		.word	-933232640
 688              		.size	hsmci_read_word, .-hsmci_read_word
 689              		.section	.text.hsmci_write_word,"ax",%progbits
 690              		.align	1
 691              		.p2align 2,,3
 692              		.global	hsmci_write_word
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu fpv4-sp-d16
 697              		.type	hsmci_write_word, %function
 698              	hsmci_write_word:
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 702 0002 234A     		ldr	r2, .L159
 703 0004 2349     		ldr	r1, .L159+4
 704 0006 01E0     		b	.L145
 705              	.L143:
 706 0008 5C07     		lsls	r4, r3, #29
 707 000a 12D4     		bmi	.L158
 708              	.L145:
 709 000c 136C     		ldr	r3, [r2, #64]
 710 000e 0B42     		tst	r3, r1
 711 0010 FAD0     		beq	.L143
 712 0012 5068     		ldr	r0, [r2, #4]
 713 0014 9668     		ldr	r6, [r2, #8]
 714 0016 D568     		ldr	r5, [r2, #12]
 715 0018 D469     		ldr	r4, [r2, #28]
 716 001a 516D     		ldr	r1, [r2, #84]
 717 001c 8027     		movs	r7, #128
 718 001e 0523     		movs	r3, #5
 719 0020 1760     		str	r7, [r2]
 720 0022 5060     		str	r0, [r2, #4]
 721 0024 9660     		str	r6, [r2, #8]
 722 0026 0020     		movs	r0, #0
 723 0028 D560     		str	r5, [r2, #12]
 724 002a D461     		str	r4, [r2, #28]
 725 002c 5165     		str	r1, [r2, #84]
 726 002e 1360     		str	r3, [r2]
 727 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 728              	.L158:
 729 0032 1949     		ldr	r1, .L159+8
 730 0034 194D     		ldr	r5, .L159+12
 731 0036 1A4C     		ldr	r4, .L159+16
 732 0038 5063     		str	r0, [r2, #52]
 733 003a 0B68     		ldr	r3, [r1]
 734 003c 2888     		ldrh	r0, [r5]
 735 003e 2288     		ldrh	r2, [r4]
 736 0040 0433     		adds	r3, r3, #4
 737 0042 02FB00F2 		mul	r2, r2, r0
 738 0046 9342     		cmp	r3, r2
 739 0048 0B60     		str	r3, [r1]
 740 004a 1ED3     		bcc	.L146
 741 004c 154F     		ldr	r7, .L159+20
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 14


 742 004e 164E     		ldr	r6, .L159+24
 743 0050 0F4C     		ldr	r4, .L159
 744 0052 104D     		ldr	r5, .L159+4
 745 0054 01E0     		b	.L149
 746              	.L148:
 747 0056 9B06     		lsls	r3, r3, #26
 748 0058 17D4     		bmi	.L146
 749              	.L149:
 750 005a 3B68     		ldr	r3, [r7]
 751 005c 0021     		movs	r1, #0
 752 005e 3046     		mov	r0, r6
 753 0060 03B1     		cbz	r3, .L147
 754 0062 9847     		blx	r3
 755              	.L147:
 756 0064 236C     		ldr	r3, [r4, #64]
 757 0066 2B42     		tst	r3, r5
 758 0068 F5D0     		beq	.L148
 759 006a 6068     		ldr	r0, [r4, #4]
 760 006c A668     		ldr	r6, [r4, #8]
 761 006e E568     		ldr	r5, [r4, #12]
 762 0070 E169     		ldr	r1, [r4, #28]
 763 0072 626D     		ldr	r2, [r4, #84]
 764 0074 8027     		movs	r7, #128
 765 0076 0523     		movs	r3, #5
 766 0078 2760     		str	r7, [r4]
 767 007a 6060     		str	r0, [r4, #4]
 768 007c A660     		str	r6, [r4, #8]
 769 007e 0020     		movs	r0, #0
 770 0080 E560     		str	r5, [r4, #12]
 771 0082 E161     		str	r1, [r4, #28]
 772 0084 6265     		str	r2, [r4, #84]
 773 0086 2360     		str	r3, [r4]
 774 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 775              	.L146:
 776 008a 0120     		movs	r0, #1
 777 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 778              	.L160:
 779 008e 00BF     		.align	2
 780              	.L159:
 781 0090 00000840 		.word	1074266112
 782 0094 000060C0 		.word	-1067450368
 783 0098 00000000 		.word	.LANCHOR1
 784 009c 00000000 		.word	.LANCHOR2
 785 00a0 00000000 		.word	.LANCHOR3
 786 00a4 00000000 		.word	.LANCHOR0
 787 00a8 200060C0 		.word	-1067450336
 788              		.size	hsmci_write_word, .-hsmci_write_word
 789              		.section	.text.hsmci_start_read_blocks,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	hsmci_start_read_blocks
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu fpv4-sp-d16
 797              		.type	hsmci_start_read_blocks, %function
 798              	hsmci_start_read_blocks:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801              		@ link register save eliminated.
 802 0000 154B     		ldr	r3, .L168
 803 0002 164A     		ldr	r2, .L168+4
 804 0004 1B88     		ldrh	r3, [r3]
 805 0006 10B4     		push	{r4}
 806 0008 8407     		lsls	r4, r0, #30
 807 000a 03FB01F1 		mul	r1, r3, r1
 808 000e 01D1     		bne	.L162
 809 0010 9C07     		lsls	r4, r3, #30
 810 0012 1BD0     		beq	.L163
 811              	.L162:
 812 0014 5368     		ldr	r3, [r2, #4]
 813 0016 43F40053 		orr	r3, r3, #8192
 814 001a 5360     		str	r3, [r2, #4]
 815              	.L164:
 816 001c 0F4B     		ldr	r3, .L168+4
 817 001e 0F4A     		ldr	r2, .L168+4
 818 0020 C3F80001 		str	r0, [r3, #256]
 819 0024 5B68     		ldr	r3, [r3, #4]
 820 0026 0E4C     		ldr	r4, .L168+8
 821 0028 9B04     		lsls	r3, r3, #18
 822 002a 54BF     		ite	pl
 823 002c 8B08     		lsrpl	r3, r1, #2
 824 002e 0B46     		movmi	r3, r1
 825 0030 C2F80431 		str	r3, [r2, #260]
 826 0034 0120     		movs	r0, #1
 827 0036 0023     		movs	r3, #0
 828 0038 C2F81431 		str	r3, [r2, #276]
 829 003c C2F82001 		str	r0, [r2, #288]
 830 0040 2368     		ldr	r3, [r4]
 831 0042 0B44     		add	r3, r3, r1
 832 0044 2360     		str	r3, [r4]
 833 0046 5DF8044B 		ldr	r4, [sp], #4
 834 004a 7047     		bx	lr
 835              	.L163:
 836 004c 5368     		ldr	r3, [r2, #4]
 837 004e 23F40053 		bic	r3, r3, #8192
 838 0052 5360     		str	r3, [r2, #4]
 839 0054 E2E7     		b	.L164
 840              	.L169:
 841 0056 00BF     		.align	2
 842              	.L168:
 843 0058 00000000 		.word	.LANCHOR2
 844 005c 00000840 		.word	1074266112
 845 0060 00000000 		.word	.LANCHOR1
 846              		.size	hsmci_start_read_blocks, .-hsmci_start_read_blocks
 847              		.section	.text.hsmci_wait_end_of_read_blocks,"ax",%progbits
 848              		.align	1
 849              		.p2align 2,,3
 850              		.global	hsmci_wait_end_of_read_blocks
 851              		.syntax unified
 852              		.thumb
 853              		.thumb_func
 854              		.fpu fpv4-sp-d16
 855              		.type	hsmci_wait_end_of_read_blocks, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 16


 856              	hsmci_wait_end_of_read_blocks:
 857              		@ args = 0, pretend = 0, frame = 0
 858              		@ frame_needed = 0, uses_anonymous_args = 0
 859 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 860 0002 1E4D     		ldr	r5, .L192
 861 0004 1E4F     		ldr	r7, .L192+4
 862 0006 1F4C     		ldr	r4, .L192+8
 863 0008 1F4E     		ldr	r6, .L192+12
 864 000a 01E0     		b	.L174
 865              	.L172:
 866 000c 5A04     		lsls	r2, r3, #17
 867 000e 1BD4     		bmi	.L191
 868              	.L174:
 869 0010 2B68     		ldr	r3, [r5]
 870 0012 0021     		movs	r1, #0
 871 0014 3846     		mov	r0, r7
 872 0016 03B1     		cbz	r3, .L171
 873 0018 9847     		blx	r3
 874              	.L171:
 875 001a 236C     		ldr	r3, [r4, #64]
 876 001c 3342     		tst	r3, r6
 877 001e F5D0     		beq	.L172
 878 0020 40F20223 		movw	r3, #514
 879 0024 C4F82031 		str	r3, [r4, #288]
 880              	.L190:
 881 0028 6068     		ldr	r0, [r4, #4]
 882 002a A668     		ldr	r6, [r4, #8]
 883 002c E568     		ldr	r5, [r4, #12]
 884 002e E169     		ldr	r1, [r4, #28]
 885 0030 626D     		ldr	r2, [r4, #84]
 886 0032 8027     		movs	r7, #128
 887 0034 0523     		movs	r3, #5
 888 0036 2760     		str	r7, [r4]
 889 0038 6060     		str	r0, [r4, #4]
 890 003a A660     		str	r6, [r4, #8]
 891 003c 0020     		movs	r0, #0
 892 003e E560     		str	r5, [r4, #12]
 893 0040 E161     		str	r1, [r4, #28]
 894 0042 6265     		str	r2, [r4, #84]
 895 0044 2360     		str	r3, [r4]
 896 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 897              	.L191:
 898 0048 1049     		ldr	r1, .L192+16
 899 004a 114B     		ldr	r3, .L192+20
 900 004c 114A     		ldr	r2, .L192+24
 901 004e 0988     		ldrh	r1, [r1]
 902 0050 1B88     		ldrh	r3, [r3]
 903 0052 1268     		ldr	r2, [r2]
 904 0054 03FB01F3 		mul	r3, r3, r1
 905 0058 9342     		cmp	r3, r2
 906 005a 0CD8     		bhi	.L175
 907 005c 0E4F     		ldr	r7, .L192+28
 908 005e 094C     		ldr	r4, .L192+8
 909 0060 094E     		ldr	r6, .L192+12
 910              	.L178:
 911 0062 2B68     		ldr	r3, [r5]
 912 0064 0021     		movs	r1, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 17


 913 0066 3846     		mov	r0, r7
 914 0068 03B1     		cbz	r3, .L176
 915 006a 9847     		blx	r3
 916              	.L176:
 917 006c 236C     		ldr	r3, [r4, #64]
 918 006e 3342     		tst	r3, r6
 919 0070 DAD1     		bne	.L190
 920 0072 1B01     		lsls	r3, r3, #4
 921 0074 F5D5     		bpl	.L178
 922              	.L175:
 923 0076 0120     		movs	r0, #1
 924 0078 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 925              	.L193:
 926 007a 00BF     		.align	2
 927              	.L192:
 928 007c 00000000 		.word	.LANCHOR0
 929 0080 004060C0 		.word	-1067433984
 930 0084 00000840 		.word	1074266112
 931 0088 000060C0 		.word	-1067450368
 932 008c 00000000 		.word	.LANCHOR2
 933 0090 00000000 		.word	.LANCHOR3
 934 0094 00000000 		.word	.LANCHOR1
 935 0098 000060C8 		.word	-933232640
 936              		.size	hsmci_wait_end_of_read_blocks, .-hsmci_wait_end_of_read_blocks
 937              		.section	.text.hsmci_start_write_blocks,"ax",%progbits
 938              		.align	1
 939              		.p2align 2,,3
 940              		.global	hsmci_start_write_blocks
 941              		.syntax unified
 942              		.thumb
 943              		.thumb_func
 944              		.fpu fpv4-sp-d16
 945              		.type	hsmci_start_write_blocks, %function
 946              	hsmci_start_write_blocks:
 947              		@ args = 0, pretend = 0, frame = 0
 948              		@ frame_needed = 0, uses_anonymous_args = 0
 949              		@ link register save eliminated.
 950 0000 164B     		ldr	r3, .L201
 951 0002 174A     		ldr	r2, .L201+4
 952 0004 1B88     		ldrh	r3, [r3]
 953 0006 10B4     		push	{r4}
 954 0008 8407     		lsls	r4, r0, #30
 955 000a 03FB01F1 		mul	r1, r3, r1
 956 000e 01D1     		bne	.L195
 957 0010 9C07     		lsls	r4, r3, #30
 958 0012 1DD0     		beq	.L196
 959              	.L195:
 960 0014 5368     		ldr	r3, [r2, #4]
 961 0016 43F40053 		orr	r3, r3, #8192
 962 001a 5360     		str	r3, [r2, #4]
 963              	.L197:
 964 001c 104B     		ldr	r3, .L201+4
 965 001e 104A     		ldr	r2, .L201+4
 966 0020 C3F80801 		str	r0, [r3, #264]
 967 0024 5B68     		ldr	r3, [r3, #4]
 968 0026 0F48     		ldr	r0, .L201+8
 969 0028 9B04     		lsls	r3, r3, #18
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 18


 970 002a 54BF     		ite	pl
 971 002c 8B08     		lsrpl	r3, r1, #2
 972 002e 0B46     		movmi	r3, r1
 973 0030 C2F80C31 		str	r3, [r2, #268]
 974 0034 0024     		movs	r4, #0
 975 0036 4FF48073 		mov	r3, #256
 976 003a C2F81C41 		str	r4, [r2, #284]
 977 003e C2F82031 		str	r3, [r2, #288]
 978 0042 0368     		ldr	r3, [r0]
 979 0044 5DF8044B 		ldr	r4, [sp], #4
 980 0048 0B44     		add	r3, r3, r1
 981 004a 0360     		str	r3, [r0]
 982 004c 0120     		movs	r0, #1
 983 004e 7047     		bx	lr
 984              	.L196:
 985 0050 5368     		ldr	r3, [r2, #4]
 986 0052 23F40053 		bic	r3, r3, #8192
 987 0056 5360     		str	r3, [r2, #4]
 988 0058 E0E7     		b	.L197
 989              	.L202:
 990 005a 00BF     		.align	2
 991              	.L201:
 992 005c 00000000 		.word	.LANCHOR2
 993 0060 00000840 		.word	1074266112
 994 0064 00000000 		.word	.LANCHOR1
 995              		.size	hsmci_start_write_blocks, .-hsmci_start_write_blocks
 996              		.section	.text.hsmci_wait_end_of_write_blocks,"ax",%progbits
 997              		.align	1
 998              		.p2align 2,,3
 999              		.global	hsmci_wait_end_of_write_blocks
 1000              		.syntax unified
 1001              		.thumb
 1002              		.thumb_func
 1003              		.fpu fpv4-sp-d16
 1004              		.type	hsmci_wait_end_of_write_blocks, %function
 1005              	hsmci_wait_end_of_write_blocks:
 1006              		@ args = 0, pretend = 0, frame = 0
 1007              		@ frame_needed = 0, uses_anonymous_args = 0
 1008 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1009 0002 264D     		ldr	r5, .L224
 1010 0004 264F     		ldr	r7, .L224+4
 1011 0006 274C     		ldr	r4, .L224+8
 1012 0008 274E     		ldr	r6, .L224+12
 1013 000a 01E0     		b	.L207
 1014              	.L205:
 1015 000c 1A04     		lsls	r2, r3, #16
 1016 000e 1BD4     		bmi	.L223
 1017              	.L207:
 1018 0010 2B68     		ldr	r3, [r5]
 1019 0012 0021     		movs	r1, #0
 1020 0014 3846     		mov	r0, r7
 1021 0016 03B1     		cbz	r3, .L204
 1022 0018 9847     		blx	r3
 1023              	.L204:
 1024 001a 236C     		ldr	r3, [r4, #64]
 1025 001c 3342     		tst	r3, r6
 1026 001e F5D0     		beq	.L205
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 19


 1027 0020 8023     		movs	r3, #128
 1028 0022 6768     		ldr	r7, [r4, #4]
 1029 0024 A068     		ldr	r0, [r4, #8]
 1030 0026 E668     		ldr	r6, [r4, #12]
 1031 0028 E569     		ldr	r5, [r4, #28]
 1032 002a 616D     		ldr	r1, [r4, #84]
 1033 002c 2360     		str	r3, [r4]
 1034 002e 0522     		movs	r2, #5
 1035 0030 40F20223 		movw	r3, #514
 1036 0034 6760     		str	r7, [r4, #4]
 1037 0036 A060     		str	r0, [r4, #8]
 1038 0038 E660     		str	r6, [r4, #12]
 1039 003a 0020     		movs	r0, #0
 1040 003c E561     		str	r5, [r4, #28]
 1041 003e 6165     		str	r1, [r4, #84]
 1042 0040 2260     		str	r2, [r4]
 1043 0042 C4F82031 		str	r3, [r4, #288]
 1044 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1045              	.L223:
 1046 0048 1849     		ldr	r1, .L224+16
 1047 004a 194B     		ldr	r3, .L224+20
 1048 004c 194A     		ldr	r2, .L224+24
 1049 004e 0988     		ldrh	r1, [r1]
 1050 0050 1B88     		ldrh	r3, [r3]
 1051 0052 1268     		ldr	r2, [r2]
 1052 0054 03FB01F3 		mul	r3, r3, r1
 1053 0058 9342     		cmp	r3, r2
 1054 005a 1DD8     		bhi	.L208
 1055 005c 164F     		ldr	r7, .L224+28
 1056 005e 114C     		ldr	r4, .L224+8
 1057 0060 114E     		ldr	r6, .L224+12
 1058 0062 01E0     		b	.L211
 1059              	.L210:
 1060 0064 9B06     		lsls	r3, r3, #26
 1061 0066 17D4     		bmi	.L208
 1062              	.L211:
 1063 0068 2B68     		ldr	r3, [r5]
 1064 006a 0021     		movs	r1, #0
 1065 006c 3846     		mov	r0, r7
 1066 006e 03B1     		cbz	r3, .L209
 1067 0070 9847     		blx	r3
 1068              	.L209:
 1069 0072 236C     		ldr	r3, [r4, #64]
 1070 0074 3342     		tst	r3, r6
 1071 0076 F5D0     		beq	.L210
 1072 0078 6068     		ldr	r0, [r4, #4]
 1073 007a A668     		ldr	r6, [r4, #8]
 1074 007c E568     		ldr	r5, [r4, #12]
 1075 007e E169     		ldr	r1, [r4, #28]
 1076 0080 626D     		ldr	r2, [r4, #84]
 1077 0082 8027     		movs	r7, #128
 1078 0084 0523     		movs	r3, #5
 1079 0086 2760     		str	r7, [r4]
 1080 0088 6060     		str	r0, [r4, #4]
 1081 008a A660     		str	r6, [r4, #8]
 1082 008c 0020     		movs	r0, #0
 1083 008e E560     		str	r5, [r4, #12]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 20


 1084 0090 E161     		str	r1, [r4, #28]
 1085 0092 6265     		str	r2, [r4, #84]
 1086 0094 2360     		str	r3, [r4]
 1087 0096 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1088              	.L208:
 1089 0098 0120     		movs	r0, #1
 1090 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1091              	.L225:
 1092              		.align	2
 1093              	.L224:
 1094 009c 00000000 		.word	.LANCHOR0
 1095 00a0 008060C0 		.word	-1067417600
 1096 00a4 00000840 		.word	1074266112
 1097 00a8 000060C0 		.word	-1067450368
 1098 00ac 00000000 		.word	.LANCHOR2
 1099 00b0 00000000 		.word	.LANCHOR3
 1100 00b4 00000000 		.word	.LANCHOR1
 1101 00b8 200060C0 		.word	-1067450336
 1102              		.size	hsmci_wait_end_of_write_blocks, .-hsmci_wait_end_of_write_blocks
 1103              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1104              		.align	2
 1105              		.type	cpu_irq_critical_section_counter, %object
 1106              		.size	cpu_irq_critical_section_counter, 4
 1107              	cpu_irq_critical_section_counter:
 1108 0000 00000000 		.space	4
 1109              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1110              		.type	cpu_irq_prev_interrupt_state, %object
 1111              		.size	cpu_irq_prev_interrupt_state, 1
 1112              	cpu_irq_prev_interrupt_state:
 1113 0000 00       		.space	1
 1114              		.section	.bss.hsmciIdleFunc,"aw",%nobits
 1115              		.align	2
 1116              		.set	.LANCHOR0,. + 0
 1117              		.type	hsmciIdleFunc, %object
 1118              		.size	hsmciIdleFunc, 4
 1119              	hsmciIdleFunc:
 1120 0000 00000000 		.space	4
 1121              		.section	.bss.hsmci_block_size,"aw",%nobits
 1122              		.align	1
 1123              		.set	.LANCHOR2,. + 0
 1124              		.type	hsmci_block_size, %object
 1125              		.size	hsmci_block_size, 2
 1126              	hsmci_block_size:
 1127 0000 0000     		.space	2
 1128              		.section	.bss.hsmci_nb_block,"aw",%nobits
 1129              		.align	1
 1130              		.set	.LANCHOR3,. + 0
 1131              		.type	hsmci_nb_block, %object
 1132              		.size	hsmci_nb_block, 2
 1133              	hsmci_nb_block:
 1134 0000 0000     		.space	2
 1135              		.section	.bss.hsmci_transfert_pos,"aw",%nobits
 1136              		.align	2
 1137              		.set	.LANCHOR1,. + 0
 1138              		.type	hsmci_transfert_pos, %object
 1139              		.size	hsmci_transfert_pos, 4
 1140              	hsmci_transfert_pos:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccfwDWSp.s 			page 21


 1141 0000 00000000 		.space	4
 1142              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
