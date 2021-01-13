ARM GAS  /tmp/ccKrLjLu.s 			page 1


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
  29 0010 2CD5     		bpl	.L3
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
  43 0032 26D1     		bne	.L32
  44              	.L7:
  45 0034 D807     		lsls	r0, r3, #31
  46 0036 20D4     		bmi	.L33
  47              	.L9:
  48 0038 236C     		ldr	r3, [r4, #64]
  49 003a 002A     		cmp	r2, #0
  50 003c F7D1     		bne	.L34
  51 003e 13F41B0F 		tst	r3, #10158080
  52 0042 F7D0     		beq	.L7
  53 0044 D4F804E0 		ldr	lr, [r4, #4]
  54 0048 A768     		ldr	r7, [r4, #8]
  55 004a E668     		ldr	r6, [r4, #12]
  56 004c E569     		ldr	r5, [r4, #28]
  57 004e 616D     		ldr	r1, [r4, #84]
ARM GAS  /tmp/ccKrLjLu.s 			page 2


  58 0050 4FF0800C 		mov	ip, #128
  59 0054 0523     		movs	r3, #5
  60 0056 C4F800C0 		str	ip, [r4]
  61 005a 1046     		mov	r0, r2
  62 005c C4F804E0 		str	lr, [r4, #4]
  63 0060 A760     		str	r7, [r4, #8]
  64 0062 E660     		str	r6, [r4, #12]
  65 0064 E561     		str	r5, [r4, #28]
  66 0066 6165     		str	r1, [r4, #84]
  67 0068 2360     		str	r3, [r4]
  68 006a F0BD     		pop	{r4, r5, r6, r7, pc}
  69              	.L3:
  70 006c 8D04     		lsls	r5, r1, #18
  71 006e 4CBF     		ite	mi
  72 0070 40F48650 		orrmi	r0, r0, #4288
  73 0074 40F48250 		orrpl	r0, r0, #4160
  74 0078 CDE7     		b	.L2
  75              	.L33:
  76 007a 8B04     		lsls	r3, r1, #18
  77 007c 11D4     		bmi	.L35
  78              	.L30:
  79 007e 0120     		movs	r0, #1
  80 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
  81              	.L32:
  82 0082 6068     		ldr	r0, [r4, #4]
  83 0084 A668     		ldr	r6, [r4, #8]
  84 0086 E568     		ldr	r5, [r4, #12]
  85 0088 E169     		ldr	r1, [r4, #28]
  86 008a 626D     		ldr	r2, [r4, #84]
  87 008c 8027     		movs	r7, #128
  88 008e 0523     		movs	r3, #5
  89 0090 2760     		str	r7, [r4]
  90 0092 6060     		str	r0, [r4, #4]
  91 0094 A660     		str	r6, [r4, #8]
  92 0096 0020     		movs	r0, #0
  93 0098 E560     		str	r5, [r4, #12]
  94 009a E161     		str	r1, [r4, #28]
  95 009c 6265     		str	r2, [r4, #84]
  96 009e 2360     		str	r3, [r4]
  97 00a0 F0BD     		pop	{r4, r5, r6, r7, pc}
  98              	.L35:
  99 00a2 4FF08043 		mov	r3, #1073741824
 100 00a6 1A46     		mov	r2, r3
 101 00a8 1B6C     		ldr	r3, [r3, #64]
 102 00aa 4FF0FF30 		mov	r0, #-1
 103              	.L11:
 104 00ae 03F03003 		and	r3, r3, #48
 105 00b2 202B     		cmp	r3, #32
 106 00b4 E3D0     		beq	.L30
 107 00b6 0138     		subs	r0, r0, #1
 108 00b8 136C     		ldr	r3, [r2, #64]
 109 00ba F8D1     		bne	.L11
 110 00bc 5768     		ldr	r7, [r2, #4]
 111 00be 9668     		ldr	r6, [r2, #8]
 112 00c0 D568     		ldr	r5, [r2, #12]
 113 00c2 D469     		ldr	r4, [r2, #28]
 114 00c4 516D     		ldr	r1, [r2, #84]
ARM GAS  /tmp/ccKrLjLu.s 			page 3


 115 00c6 4FF0800E 		mov	lr, #128
 116 00ca 0523     		movs	r3, #5
 117 00cc C2F800E0 		str	lr, [r2]
 118 00d0 5760     		str	r7, [r2, #4]
 119 00d2 9660     		str	r6, [r2, #8]
 120 00d4 D560     		str	r5, [r2, #12]
 121 00d6 D461     		str	r4, [r2, #28]
 122 00d8 5165     		str	r1, [r2, #84]
 123 00da 1360     		str	r3, [r2]
 124 00dc F0BD     		pop	{r4, r5, r6, r7, pc}
 125              		.size	hsmci_send_cmd_execute, .-hsmci_send_cmd_execute
 126 00de 00BF     		.section	.text.hsmci_get_speed,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	hsmci_get_speed
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu softvfp
 134              		.type	hsmci_get_speed, %function
 135              	hsmci_get_speed:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 4FF08042 		mov	r2, #1073741824
 140 0004 044B     		ldr	r3, .L37
 141 0006 5068     		ldr	r0, [r2, #4]
 142 0008 C0B2     		uxtb	r0, r0
 143 000a 0130     		adds	r0, r0, #1
 144 000c 4000     		lsls	r0, r0, #1
 145 000e B3FBF0F0 		udiv	r0, r3, r0
 146 0012 4008     		lsrs	r0, r0, #1
 147 0014 7047     		bx	lr
 148              	.L38:
 149 0016 00BF     		.align	2
 150              	.L37:
 151 0018 000E2707 		.word	120000000
 152              		.size	hsmci_get_speed, .-hsmci_get_speed
 153              		.section	.text.hsmci_set_idle_func,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	hsmci_set_idle_func
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 161              		.type	hsmci_set_idle_func, %function
 162              	hsmci_set_idle_func:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 024B     		ldr	r3, .L40
 167 0002 1A68     		ldr	r2, [r3]
 168 0004 1860     		str	r0, [r3]
 169 0006 1046     		mov	r0, r2
 170 0008 7047     		bx	lr
 171              	.L41:
ARM GAS  /tmp/ccKrLjLu.s 			page 4


 172 000a 00BF     		.align	2
 173              	.L40:
 174 000c 00000000 		.word	.LANCHOR0
 175              		.size	hsmci_set_idle_func, .-hsmci_set_idle_func
 176              		.section	.text.hsmci_init,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	hsmci_init
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu softvfp
 184              		.type	hsmci_init, %function
 185              	hsmci_init:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188 0000 10B5     		push	{r4, lr}
 189 0002 1220     		movs	r0, #18
 190 0004 FFF7FEFF 		bl	pmc_enable_periph_clk
 191 0008 4FF08043 		mov	r3, #1073741824
 192 000c 7222     		movs	r2, #114
 193 000e 1124     		movs	r4, #17
 194 0010 4FF4E060 		mov	r0, #1792
 195 0014 0521     		movs	r1, #5
 196 0016 9A60     		str	r2, [r3, #8]
 197 0018 DA61     		str	r2, [r3, #28]
 198 001a 5C65     		str	r4, [r3, #84]
 199 001c 5860     		str	r0, [r3, #4]
 200 001e 1960     		str	r1, [r3]
 201 0020 10BD     		pop	{r4, pc}
 202              		.size	hsmci_init, .-hsmci_init
 203 0022 00BF     		.section	.text.hsmci_get_bus_width,"ax",%progbits
 204              		.align	1
 205              		.p2align 2,,3
 206              		.global	hsmci_get_bus_width
 207              		.syntax unified
 208              		.thumb
 209              		.thumb_func
 210              		.fpu softvfp
 211              		.type	hsmci_get_bus_width, %function
 212              	hsmci_get_bus_width:
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 216 0000 0028     		cmp	r0, #0
 217 0002 0CBF     		ite	eq
 218 0004 0420     		moveq	r0, #4
 219 0006 0020     		movne	r0, #0
 220 0008 7047     		bx	lr
 221              		.size	hsmci_get_bus_width, .-hsmci_get_bus_width
 222 000a 00BF     		.section	.text.hsmci_is_high_speed_capable,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	hsmci_is_high_speed_capable
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/ccKrLjLu.s 			page 5


 229              		.fpu softvfp
 230              		.type	hsmci_is_high_speed_capable, %function
 231              	hsmci_is_high_speed_capable:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234              		@ link register save eliminated.
 235 0000 0120     		movs	r0, #1
 236 0002 7047     		bx	lr
 237              		.size	hsmci_is_high_speed_capable, .-hsmci_is_high_speed_capable
 238              		.section	.text.hsmci_select_device,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	hsmci_select_device
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu softvfp
 246              		.type	hsmci_select_device, %function
 247              	hsmci_select_device:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 4FF08040 		mov	r0, #1073741824
 252 0004 1BB3     		cbz	r3, .L50
 253 0006 436D     		ldr	r3, [r0, #84]
 254 0008 43F48073 		orr	r3, r3, #256
 255 000c 4365     		str	r3, [r0, #84]
 256 000e 184B     		ldr	r3, .L64
 257 0010 4900     		lsls	r1, r1, #1
 258 0012 9942     		cmp	r1, r3
 259 0014 23D8     		bhi	.L57
 260              	.L63:
 261 0016 1748     		ldr	r0, .L64+4
 262 0018 B0FBF1F3 		udiv	r3, r0, r1
 263 001c 01FB1301 		mls	r1, r1, r3, r0
 264 0020 F9B9     		cbnz	r1, .L62
 265              	.L53:
 266 0022 013B     		subs	r3, r3, #1
 267 0024 DBB2     		uxtb	r3, r3
 268              	.L52:
 269 0026 4FF08041 		mov	r1, #1073741824
 270 002a 042A     		cmp	r2, #4
 271 002c 4868     		ldr	r0, [r1, #4]
 272 002e 20F0FF00 		bic	r0, r0, #255
 273 0032 4860     		str	r0, [r1, #4]
 274 0034 4868     		ldr	r0, [r1, #4]
 275 0036 43EA0003 		orr	r3, r3, r0
 276 003a 4B60     		str	r3, [r1, #4]
 277 003c 13D0     		beq	.L58
 278 003e 082A     		cmp	r2, #8
 279 0040 4FF08043 		mov	r3, #1073741824
 280 0044 0CBF     		ite	eq
 281 0046 C022     		moveq	r2, #192
 282 0048 0022     		movne	r2, #0
 283 004a DA60     		str	r2, [r3, #12]
 284 004c 7047     		bx	lr
 285              	.L50:
ARM GAS  /tmp/ccKrLjLu.s 			page 6


 286 004e 436D     		ldr	r3, [r0, #84]
 287 0050 23F48073 		bic	r3, r3, #256
 288 0054 4365     		str	r3, [r0, #84]
 289 0056 064B     		ldr	r3, .L64
 290 0058 4900     		lsls	r1, r1, #1
 291 005a 9942     		cmp	r1, r3
 292 005c DBD9     		bls	.L63
 293              	.L57:
 294 005e 0023     		movs	r3, #0
 295 0060 E1E7     		b	.L52
 296              	.L62:
 297 0062 0133     		adds	r3, r3, #1
 298 0064 DDE7     		b	.L53
 299              	.L58:
 300 0066 4FF08043 		mov	r3, #1073741824
 301 006a 8022     		movs	r2, #128
 302 006c DA60     		str	r2, [r3, #12]
 303 006e 7047     		bx	lr
 304              	.L65:
 305              		.align	2
 306              	.L64:
 307 0070 FF0D2707 		.word	119999999
 308 0074 000E2707 		.word	120000000
 309              		.size	hsmci_select_device, .-hsmci_select_device
 310              		.section	.text.hsmci_deselect_device,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	hsmci_deselect_device
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu softvfp
 318              		.type	hsmci_deselect_device, %function
 319              	hsmci_deselect_device:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 7047     		bx	lr
 324              		.size	hsmci_deselect_device, .-hsmci_deselect_device
 325 0002 00BF     		.section	.text.hsmci_send_clock,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	hsmci_send_clock
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu softvfp
 333              		.type	hsmci_send_clock, %function
 334              	hsmci_send_clock:
 335              		@ args = 0, pretend = 0, frame = 0
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337              		@ link register save eliminated.
 338 0000 4FF08043 		mov	r3, #1073741824
 339 0004 0020     		movs	r0, #0
 340 0006 5A68     		ldr	r2, [r3, #4]
 341 0008 4FF41061 		mov	r1, #2304
 342 000c 22F46052 		bic	r2, r2, #14336
ARM GAS  /tmp/ccKrLjLu.s 			page 7


 343 0010 5A60     		str	r2, [r3, #4]
 344 0012 1861     		str	r0, [r3, #16]
 345 0014 1A46     		mov	r2, r3
 346 0016 5961     		str	r1, [r3, #20]
 347              	.L68:
 348 0018 136C     		ldr	r3, [r2, #64]
 349 001a DB07     		lsls	r3, r3, #31
 350 001c FCD5     		bpl	.L68
 351 001e 7047     		bx	lr
 352              		.size	hsmci_send_clock, .-hsmci_send_clock
 353              		.section	.text.hsmci_send_cmd,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	hsmci_send_cmd
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu softvfp
 361              		.type	hsmci_send_cmd, %function
 362              	hsmci_send_cmd:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              		@ link register save eliminated.
 366 0000 4FF08043 		mov	r3, #1073741824
 367 0004 30B4     		push	{r4, r5}
 368 0006 5A68     		ldr	r2, [r3, #4]
 369 0008 22F46052 		bic	r2, r2, #14336
 370 000c 5A60     		str	r2, [r3, #4]
 371 000e 5C68     		ldr	r4, [r3, #4]
 372 0010 0025     		movs	r5, #0
 373 0012 24F40044 		bic	r4, r4, #32768
 374 0016 5C60     		str	r4, [r3, #4]
 375 0018 0A46     		mov	r2, r1
 376 001a 9D61     		str	r5, [r3, #24]
 377 001c 0146     		mov	r1, r0
 378 001e 2846     		mov	r0, r5
 379 0020 30BC     		pop	{r4, r5}
 380 0022 FFF7FEBF 		b	hsmci_send_cmd_execute
 381              		.size	hsmci_send_cmd, .-hsmci_send_cmd
 382 0026 00BF     		.section	.text.hsmci_get_response,"ax",%progbits
 383              		.align	1
 384              		.p2align 2,,3
 385              		.global	hsmci_get_response
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu softvfp
 390              		.type	hsmci_get_response, %function
 391              	hsmci_get_response:
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394              		@ link register save eliminated.
 395 0000 4FF08043 		mov	r3, #1073741824
 396 0004 186A     		ldr	r0, [r3, #32]
 397 0006 7047     		bx	lr
 398              		.size	hsmci_get_response, .-hsmci_get_response
 399              		.section	.text.hsmci_get_response_128,"ax",%progbits
ARM GAS  /tmp/ccKrLjLu.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	hsmci_get_response_128
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu softvfp
 407              		.type	hsmci_get_response_128, %function
 408              	hsmci_get_response_128:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411              		@ link register save eliminated.
 412 0000 30B4     		push	{r4, r5}
 413 0002 031D     		adds	r3, r0, #4
 414 0004 4FF08045 		mov	r5, #1073741824
 415 0008 1430     		adds	r0, r0, #20
 416              	.L75:
 417 000a 2A6A     		ldr	r2, [r5, #32]
 418 000c 03F8012C 		strb	r2, [r3, #-1]
 419 0010 140E     		lsrs	r4, r2, #24
 420 0012 110C     		lsrs	r1, r2, #16
 421 0014 120A     		lsrs	r2, r2, #8
 422 0016 03F8044C 		strb	r4, [r3, #-4]
 423 001a 03F8031C 		strb	r1, [r3, #-3]
 424 001e 03F8022C 		strb	r2, [r3, #-2]
 425 0022 0433     		adds	r3, r3, #4
 426 0024 8342     		cmp	r3, r0
 427 0026 F0D1     		bne	.L75
 428 0028 30BC     		pop	{r4, r5}
 429 002a 7047     		bx	lr
 430              		.size	hsmci_get_response_128, .-hsmci_get_response_128
 431              		.section	.text.hsmci_adtc_start,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	hsmci_adtc_start
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	hsmci_adtc_start, %function
 440              	hsmci_adtc_start:
 441              		@ args = 4, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443              		@ link register save eliminated.
 444 0000 F0B4     		push	{r4, r5, r6, r7}
 445 0002 9DF81040 		ldrb	r4, [sp, #16]	@ zero_extendqisi2
 446 0006 4FF08045 		mov	r5, #1073741824
 447 000a 54B3     		cbz	r4, .L79
 448 000c 6C68     		ldr	r4, [r5, #4]
 449 000e 44F40044 		orr	r4, r4, #32768
 450 0012 6C60     		str	r4, [r5, #4]
 451              	.L80:
 452 0014 4FF08044 		mov	r4, #1073741824
 453 0018 9707     		lsls	r7, r2, #30
 454 001a 6568     		ldr	r5, [r4, #4]
 455 001c 45F4C055 		orr	r5, r5, #6144
 456 0020 6560     		str	r5, [r4, #4]
ARM GAS  /tmp/ccKrLjLu.s 			page 9


 457 0022 6568     		ldr	r5, [r4, #4]
 458 0024 14BF     		ite	ne
 459 0026 45F40055 		orrne	r5, r5, #8192
 460 002a 25F40055 		biceq	r5, r5, #8192
 461 002e 10F4004F 		tst	r0, #32768
 462 0032 6560     		str	r5, [r4, #4]
 463 0034 14BF     		ite	ne
 464 0036 4FF48034 		movne	r4, #65536
 465 003a 4FF4A024 		moveq	r4, #327680
 466 003e C603     		lsls	r6, r0, #15
 467 0040 23D4     		bmi	.L93
 468 0042 4FF08045 		mov	r5, #1073741824
 469 0046 43EA0246 		orr	r6, r3, r2, lsl #16
 470 004a AE61     		str	r6, [r5, #24]
 471 004c 8503     		lsls	r5, r0, #14
 472 004e 0DD4     		bmi	.L94
 473 0050 4703     		lsls	r7, r0, #13
 474 0052 22D4     		bmi	.L95
 475 0054 0603     		lsls	r6, r0, #12
 476 0056 0BD4     		bmi	.L85
 477 0058 C502     		lsls	r5, r0, #11
 478 005a 48BF     		it	mi
 479 005c 44F40024 		orrmi	r4, r4, #524288
 480 0060 06E0     		b	.L85
 481              	.L79:
 482 0062 6C68     		ldr	r4, [r5, #4]
 483 0064 24F40044 		bic	r4, r4, #32768
 484 0068 6C60     		str	r4, [r5, #4]
 485 006a D3E7     		b	.L80
 486              	.L94:
 487 006c 44F42014 		orr	r4, r4, #2621440
 488              	.L85:
 489 0070 0B4F     		ldr	r7, .L96
 490 0072 0C4E     		ldr	r6, .L96+4
 491 0074 0C4D     		ldr	r5, .L96+8
 492 0076 3A80     		strh	r2, [r7]	@ movhi
 493 0078 0A46     		mov	r2, r1
 494 007a 0146     		mov	r1, r0
 495 007c 2046     		mov	r0, r4
 496 007e 0024     		movs	r4, #0
 497 0080 3460     		str	r4, [r6]
 498 0082 2B80     		strh	r3, [r5]	@ movhi
 499 0084 F0BC     		pop	{r4, r5, r6, r7}
 500 0086 FFF7FEBF 		b	hsmci_send_cmd_execute
 501              	.L93:
 502 008a 4FF08046 		mov	r6, #1073741824
 503 008e C2F30805 		ubfx	r5, r2, #0, #9
 504 0092 44F40014 		orr	r4, r4, #2097152
 505 0096 B561     		str	r5, [r6, #24]
 506 0098 EAE7     		b	.L85
 507              	.L95:
 508 009a 44F48014 		orr	r4, r4, #1048576
 509 009e E7E7     		b	.L85
 510              	.L97:
 511              		.align	2
 512              	.L96:
 513 00a0 00000000 		.word	.LANCHOR2
ARM GAS  /tmp/ccKrLjLu.s 			page 10


 514 00a4 00000000 		.word	.LANCHOR1
 515 00a8 00000000 		.word	.LANCHOR3
 516              		.size	hsmci_adtc_start, .-hsmci_adtc_start
 517              		.section	.text.hsmci_adtc_stop,"ax",%progbits
 518              		.align	1
 519              		.p2align 2,,3
 520              		.global	hsmci_adtc_stop
 521              		.syntax unified
 522              		.thumb
 523              		.thumb_func
 524              		.fpu softvfp
 525              		.type	hsmci_adtc_stop, %function
 526              	hsmci_adtc_stop:
 527              		@ args = 0, pretend = 0, frame = 0
 528              		@ frame_needed = 0, uses_anonymous_args = 0
 529              		@ link register save eliminated.
 530 0000 0A46     		mov	r2, r1
 531 0002 0146     		mov	r1, r0
 532 0004 4FF40030 		mov	r0, #131072
 533 0008 FFF7FEBF 		b	hsmci_send_cmd_execute
 534              		.size	hsmci_adtc_stop, .-hsmci_adtc_stop
 535              		.section	.text.hsmci_read_word,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	hsmci_read_word
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu softvfp
 543              		.type	hsmci_read_word, %function
 544              	hsmci_read_word:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 548 0002 1D49     		ldr	r1, .L119
 549 0004 4FF08042 		mov	r2, #1073741824
 550 0008 01E0     		b	.L102
 551              	.L118:
 552 000a 9C07     		lsls	r4, r3, #30
 553 000c 12D4     		bmi	.L117
 554              	.L102:
 555 000e 136C     		ldr	r3, [r2, #64]
 556 0010 0B42     		tst	r3, r1
 557 0012 FAD0     		beq	.L118
 558              	.L116:
 559 0014 5068     		ldr	r0, [r2, #4]
 560 0016 9668     		ldr	r6, [r2, #8]
 561 0018 D568     		ldr	r5, [r2, #12]
 562 001a D469     		ldr	r4, [r2, #28]
 563 001c 516D     		ldr	r1, [r2, #84]
 564 001e 8027     		movs	r7, #128
 565 0020 0523     		movs	r3, #5
 566 0022 1760     		str	r7, [r2]
 567 0024 5060     		str	r0, [r2, #4]
 568 0026 9660     		str	r6, [r2, #8]
 569 0028 0020     		movs	r0, #0
 570 002a D560     		str	r5, [r2, #12]
ARM GAS  /tmp/ccKrLjLu.s 			page 11


 571 002c D461     		str	r4, [r2, #28]
 572 002e 5165     		str	r1, [r2, #84]
 573 0030 1360     		str	r3, [r2]
 574 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 575              	.L117:
 576 0034 114C     		ldr	r4, .L119+4
 577 0036 124D     		ldr	r5, .L119+8
 578 0038 1249     		ldr	r1, .L119+12
 579 003a 2368     		ldr	r3, [r4]
 580 003c 2D88     		ldrh	r5, [r5]
 581 003e 0988     		ldrh	r1, [r1]
 582 0040 126B     		ldr	r2, [r2, #48]
 583 0042 0260     		str	r2, [r0]
 584 0044 0433     		adds	r3, r3, #4
 585 0046 01FB05F2 		mul	r2, r1, r5
 586 004a 9342     		cmp	r3, r2
 587 004c 2360     		str	r3, [r4]
 588 004e 10D3     		bcc	.L106
 589 0050 0D4E     		ldr	r6, .L119+16
 590 0052 0E4D     		ldr	r5, .L119+20
 591 0054 084C     		ldr	r4, .L119
 592 0056 01E0     		b	.L103
 593              	.L105:
 594 0058 1B01     		lsls	r3, r3, #4
 595 005a 0AD4     		bmi	.L106
 596              	.L103:
 597 005c 3368     		ldr	r3, [r6]
 598 005e 0021     		movs	r1, #0
 599 0060 2846     		mov	r0, r5
 600 0062 03B1     		cbz	r3, .L104
 601 0064 9847     		blx	r3
 602              	.L104:
 603 0066 4FF08042 		mov	r2, #1073741824
 604 006a 136C     		ldr	r3, [r2, #64]
 605 006c 2342     		tst	r3, r4
 606 006e F3D0     		beq	.L105
 607 0070 D0E7     		b	.L116
 608              	.L106:
 609 0072 0120     		movs	r0, #1
 610 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 611              	.L120:
 612 0076 00BF     		.align	2
 613              	.L119:
 614 0078 000060C0 		.word	-1067450368
 615 007c 00000000 		.word	.LANCHOR1
 616 0080 00000000 		.word	.LANCHOR2
 617 0084 00000000 		.word	.LANCHOR3
 618 0088 00000000 		.word	.LANCHOR0
 619 008c 000060C8 		.word	-933232640
 620              		.size	hsmci_read_word, .-hsmci_read_word
 621              		.section	.text.hsmci_write_word,"ax",%progbits
 622              		.align	1
 623              		.p2align 2,,3
 624              		.global	hsmci_write_word
 625              		.syntax unified
 626              		.thumb
 627              		.thumb_func
ARM GAS  /tmp/ccKrLjLu.s 			page 12


 628              		.fpu softvfp
 629              		.type	hsmci_write_word, %function
 630              	hsmci_write_word:
 631              		@ args = 0, pretend = 0, frame = 0
 632              		@ frame_needed = 0, uses_anonymous_args = 0
 633 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 634 0002 1C49     		ldr	r1, .L141
 635 0004 4FF08042 		mov	r2, #1073741824
 636 0008 01E0     		b	.L124
 637              	.L140:
 638 000a 5C07     		lsls	r4, r3, #29
 639 000c 12D4     		bmi	.L139
 640              	.L124:
 641 000e 136C     		ldr	r3, [r2, #64]
 642 0010 0B42     		tst	r3, r1
 643 0012 FAD0     		beq	.L140
 644              	.L138:
 645 0014 5068     		ldr	r0, [r2, #4]
 646 0016 9668     		ldr	r6, [r2, #8]
 647 0018 D568     		ldr	r5, [r2, #12]
 648 001a D469     		ldr	r4, [r2, #28]
 649 001c 516D     		ldr	r1, [r2, #84]
 650 001e 8027     		movs	r7, #128
 651 0020 0523     		movs	r3, #5
 652 0022 1760     		str	r7, [r2]
 653 0024 5060     		str	r0, [r2, #4]
 654 0026 9660     		str	r6, [r2, #8]
 655 0028 0020     		movs	r0, #0
 656 002a D560     		str	r5, [r2, #12]
 657 002c D461     		str	r4, [r2, #28]
 658 002e 5165     		str	r1, [r2, #84]
 659 0030 1360     		str	r3, [r2]
 660 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 661              	.L139:
 662 0034 1049     		ldr	r1, .L141+4
 663 0036 114D     		ldr	r5, .L141+8
 664 0038 114C     		ldr	r4, .L141+12
 665 003a 5063     		str	r0, [r2, #52]
 666 003c 0B68     		ldr	r3, [r1]
 667 003e 2888     		ldrh	r0, [r5]
 668 0040 2288     		ldrh	r2, [r4]
 669 0042 0433     		adds	r3, r3, #4
 670 0044 02FB00F2 		mul	r2, r2, r0
 671 0048 9342     		cmp	r3, r2
 672 004a 0B60     		str	r3, [r1]
 673 004c 10D3     		bcc	.L128
 674 004e 0D4E     		ldr	r6, .L141+16
 675 0050 0D4D     		ldr	r5, .L141+20
 676 0052 084C     		ldr	r4, .L141
 677 0054 01E0     		b	.L125
 678              	.L127:
 679 0056 9B06     		lsls	r3, r3, #26
 680 0058 0AD4     		bmi	.L128
 681              	.L125:
 682 005a 3368     		ldr	r3, [r6]
 683 005c 0021     		movs	r1, #0
 684 005e 2846     		mov	r0, r5
ARM GAS  /tmp/ccKrLjLu.s 			page 13


 685 0060 03B1     		cbz	r3, .L126
 686 0062 9847     		blx	r3
 687              	.L126:
 688 0064 4FF08042 		mov	r2, #1073741824
 689 0068 136C     		ldr	r3, [r2, #64]
 690 006a 2342     		tst	r3, r4
 691 006c F3D0     		beq	.L127
 692 006e D1E7     		b	.L138
 693              	.L128:
 694 0070 0120     		movs	r0, #1
 695 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 696              	.L142:
 697              		.align	2
 698              	.L141:
 699 0074 000060C0 		.word	-1067450368
 700 0078 00000000 		.word	.LANCHOR1
 701 007c 00000000 		.word	.LANCHOR2
 702 0080 00000000 		.word	.LANCHOR3
 703 0084 00000000 		.word	.LANCHOR0
 704 0088 200060C0 		.word	-1067450336
 705              		.size	hsmci_write_word, .-hsmci_write_word
 706              		.section	.text.hsmci_start_read_blocks,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	hsmci_start_read_blocks
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu softvfp
 714              		.type	hsmci_start_read_blocks, %function
 715              	hsmci_start_read_blocks:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 164B     		ldr	r3, .L150
 720 0002 1B88     		ldrh	r3, [r3]
 721 0004 30B4     		push	{r4, r5}
 722 0006 8507     		lsls	r5, r0, #30
 723 0008 03FB01F1 		mul	r1, r3, r1
 724 000c 4FF08042 		mov	r2, #1073741824
 725 0010 01D1     		bne	.L144
 726 0012 9C07     		lsls	r4, r3, #30
 727 0014 1CD0     		beq	.L145
 728              	.L144:
 729 0016 5368     		ldr	r3, [r2, #4]
 730 0018 43F40053 		orr	r3, r3, #8192
 731 001c 5360     		str	r3, [r2, #4]
 732              	.L146:
 733 001e 4FF08043 		mov	r3, #1073741824
 734 0022 4FF08042 		mov	r2, #1073741824
 735 0026 C3F80001 		str	r0, [r3, #256]
 736 002a 5B68     		ldr	r3, [r3, #4]
 737 002c 0C4C     		ldr	r4, .L150+4
 738 002e 9B04     		lsls	r3, r3, #18
 739 0030 54BF     		ite	pl
 740 0032 8D08     		lsrpl	r5, r1, #2
 741 0034 0D46     		movmi	r5, r1
ARM GAS  /tmp/ccKrLjLu.s 			page 14


 742 0036 0023     		movs	r3, #0
 743 0038 0120     		movs	r0, #1
 744 003a C2F80451 		str	r5, [r2, #260]
 745 003e C2F81431 		str	r3, [r2, #276]
 746 0042 C2F82001 		str	r0, [r2, #288]
 747 0046 2368     		ldr	r3, [r4]
 748 0048 0B44     		add	r3, r3, r1
 749 004a 2360     		str	r3, [r4]
 750 004c 30BC     		pop	{r4, r5}
 751 004e 7047     		bx	lr
 752              	.L145:
 753 0050 5368     		ldr	r3, [r2, #4]
 754 0052 23F40053 		bic	r3, r3, #8192
 755 0056 5360     		str	r3, [r2, #4]
 756 0058 E1E7     		b	.L146
 757              	.L151:
 758 005a 00BF     		.align	2
 759              	.L150:
 760 005c 00000000 		.word	.LANCHOR2
 761 0060 00000000 		.word	.LANCHOR1
 762              		.size	hsmci_start_read_blocks, .-hsmci_start_read_blocks
 763              		.section	.text.hsmci_wait_end_of_read_blocks,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	hsmci_wait_end_of_read_blocks
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	hsmci_wait_end_of_read_blocks, %function
 772              	hsmci_wait_end_of_read_blocks:
 773              		@ args = 0, pretend = 0, frame = 0
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 776 0002 1F4C     		ldr	r4, .L175
 777 0004 1F4E     		ldr	r6, .L175+4
 778 0006 204D     		ldr	r5, .L175+8
 779 0008 01E0     		b	.L156
 780              	.L154:
 781 000a 5A04     		lsls	r2, r3, #17
 782 000c 1DD4     		bmi	.L174
 783              	.L156:
 784 000e 2368     		ldr	r3, [r4]
 785 0010 0021     		movs	r1, #0
 786 0012 3046     		mov	r0, r6
 787 0014 03B1     		cbz	r3, .L153
 788 0016 9847     		blx	r3
 789              	.L153:
 790 0018 4FF08042 		mov	r2, #1073741824
 791 001c 136C     		ldr	r3, [r2, #64]
 792 001e 2B42     		tst	r3, r5
 793 0020 F3D0     		beq	.L154
 794 0022 40F20223 		movw	r3, #514
 795 0026 C2F82031 		str	r3, [r2, #288]
 796              	.L173:
 797 002a 5068     		ldr	r0, [r2, #4]
 798 002c 9668     		ldr	r6, [r2, #8]
ARM GAS  /tmp/ccKrLjLu.s 			page 15


 799 002e D568     		ldr	r5, [r2, #12]
 800 0030 D469     		ldr	r4, [r2, #28]
 801 0032 516D     		ldr	r1, [r2, #84]
 802 0034 8027     		movs	r7, #128
 803 0036 0523     		movs	r3, #5
 804 0038 1760     		str	r7, [r2]
 805 003a 5060     		str	r0, [r2, #4]
 806 003c 9660     		str	r6, [r2, #8]
 807 003e 0020     		movs	r0, #0
 808 0040 D560     		str	r5, [r2, #12]
 809 0042 D461     		str	r4, [r2, #28]
 810 0044 5165     		str	r1, [r2, #84]
 811 0046 1360     		str	r3, [r2]
 812 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 813              	.L174:
 814 004a 1049     		ldr	r1, .L175+12
 815 004c 104B     		ldr	r3, .L175+16
 816 004e 114A     		ldr	r2, .L175+20
 817 0050 0988     		ldrh	r1, [r1]
 818 0052 1B88     		ldrh	r3, [r3]
 819 0054 1268     		ldr	r2, [r2]
 820 0056 03FB01F3 		mul	r3, r3, r1
 821 005a 9342     		cmp	r3, r2
 822 005c 0DD8     		bhi	.L160
 823 005e 0E4E     		ldr	r6, .L175+24
 824 0060 094D     		ldr	r5, .L175+8
 825              	.L167:
 826 0062 2368     		ldr	r3, [r4]
 827 0064 0021     		movs	r1, #0
 828 0066 3046     		mov	r0, r6
 829 0068 03B1     		cbz	r3, .L158
 830 006a 9847     		blx	r3
 831              	.L158:
 832 006c 4FF08042 		mov	r2, #1073741824
 833 0070 136C     		ldr	r3, [r2, #64]
 834 0072 2B42     		tst	r3, r5
 835 0074 D9D1     		bne	.L173
 836 0076 1B01     		lsls	r3, r3, #4
 837 0078 F3D5     		bpl	.L167
 838              	.L160:
 839 007a 0120     		movs	r0, #1
 840 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 841              	.L176:
 842 007e 00BF     		.align	2
 843              	.L175:
 844 0080 00000000 		.word	.LANCHOR0
 845 0084 004060C0 		.word	-1067433984
 846 0088 000060C0 		.word	-1067450368
 847 008c 00000000 		.word	.LANCHOR2
 848 0090 00000000 		.word	.LANCHOR3
 849 0094 00000000 		.word	.LANCHOR1
 850 0098 000060C8 		.word	-933232640
 851              		.size	hsmci_wait_end_of_read_blocks, .-hsmci_wait_end_of_read_blocks
 852              		.section	.text.hsmci_start_write_blocks,"ax",%progbits
 853              		.align	1
 854              		.p2align 2,,3
 855              		.global	hsmci_start_write_blocks
ARM GAS  /tmp/ccKrLjLu.s 			page 16


 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu softvfp
 860              		.type	hsmci_start_write_blocks, %function
 861              	hsmci_start_write_blocks:
 862              		@ args = 0, pretend = 0, frame = 0
 863              		@ frame_needed = 0, uses_anonymous_args = 0
 864              		@ link register save eliminated.
 865 0000 174B     		ldr	r3, .L184
 866 0002 1B88     		ldrh	r3, [r3]
 867 0004 30B4     		push	{r4, r5}
 868 0006 8507     		lsls	r5, r0, #30
 869 0008 03FB01F1 		mul	r1, r3, r1
 870 000c 4FF08042 		mov	r2, #1073741824
 871 0010 01D1     		bne	.L178
 872 0012 9C07     		lsls	r4, r3, #30
 873 0014 1ED0     		beq	.L179
 874              	.L178:
 875 0016 5368     		ldr	r3, [r2, #4]
 876 0018 43F40053 		orr	r3, r3, #8192
 877 001c 5360     		str	r3, [r2, #4]
 878              	.L180:
 879 001e 4FF08043 		mov	r3, #1073741824
 880 0022 4FF08042 		mov	r2, #1073741824
 881 0026 C3F80801 		str	r0, [r3, #264]
 882 002a 5B68     		ldr	r3, [r3, #4]
 883 002c 0D48     		ldr	r0, .L184+4
 884 002e 9B04     		lsls	r3, r3, #18
 885 0030 54BF     		ite	pl
 886 0032 8D08     		lsrpl	r5, r1, #2
 887 0034 0D46     		movmi	r5, r1
 888 0036 0024     		movs	r4, #0
 889 0038 4FF48073 		mov	r3, #256
 890 003c C2F80C51 		str	r5, [r2, #268]
 891 0040 C2F81C41 		str	r4, [r2, #284]
 892 0044 C2F82031 		str	r3, [r2, #288]
 893 0048 0368     		ldr	r3, [r0]
 894 004a 0B44     		add	r3, r3, r1
 895 004c 0360     		str	r3, [r0]
 896 004e 30BC     		pop	{r4, r5}
 897 0050 0120     		movs	r0, #1
 898 0052 7047     		bx	lr
 899              	.L179:
 900 0054 5368     		ldr	r3, [r2, #4]
 901 0056 23F40053 		bic	r3, r3, #8192
 902 005a 5360     		str	r3, [r2, #4]
 903 005c DFE7     		b	.L180
 904              	.L185:
 905 005e 00BF     		.align	2
 906              	.L184:
 907 0060 00000000 		.word	.LANCHOR2
 908 0064 00000000 		.word	.LANCHOR1
 909              		.size	hsmci_start_write_blocks, .-hsmci_start_write_blocks
 910              		.section	.text.hsmci_wait_end_of_write_blocks,"ax",%progbits
 911              		.align	1
 912              		.p2align 2,,3
ARM GAS  /tmp/ccKrLjLu.s 			page 17


 913              		.global	hsmci_wait_end_of_write_blocks
 914              		.syntax unified
 915              		.thumb
 916              		.thumb_func
 917              		.fpu softvfp
 918              		.type	hsmci_wait_end_of_write_blocks, %function
 919              	hsmci_wait_end_of_write_blocks:
 920              		@ args = 0, pretend = 0, frame = 0
 921              		@ frame_needed = 0, uses_anonymous_args = 0
 922 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 923 0002 274C     		ldr	r4, .L208
 924 0004 274E     		ldr	r6, .L208+4
 925 0006 284D     		ldr	r5, .L208+8
 926 0008 01E0     		b	.L190
 927              	.L188:
 928 000a 1A04     		lsls	r2, r3, #16
 929 000c 1DD4     		bmi	.L207
 930              	.L190:
 931 000e 2368     		ldr	r3, [r4]
 932 0010 0021     		movs	r1, #0
 933 0012 3046     		mov	r0, r6
 934 0014 03B1     		cbz	r3, .L187
 935 0016 9847     		blx	r3
 936              	.L187:
 937 0018 4FF08042 		mov	r2, #1073741824
 938 001c 136C     		ldr	r3, [r2, #64]
 939 001e 2B42     		tst	r3, r5
 940 0020 F3D0     		beq	.L188
 941 0022 8023     		movs	r3, #128
 942 0024 5768     		ldr	r7, [r2, #4]
 943 0026 9068     		ldr	r0, [r2, #8]
 944 0028 D668     		ldr	r6, [r2, #12]
 945 002a D569     		ldr	r5, [r2, #28]
 946 002c 546D     		ldr	r4, [r2, #84]
 947 002e 1360     		str	r3, [r2]
 948 0030 0521     		movs	r1, #5
 949 0032 40F20223 		movw	r3, #514
 950 0036 5760     		str	r7, [r2, #4]
 951 0038 9060     		str	r0, [r2, #8]
 952 003a D660     		str	r6, [r2, #12]
 953 003c 0020     		movs	r0, #0
 954 003e D561     		str	r5, [r2, #28]
 955 0040 5465     		str	r4, [r2, #84]
 956 0042 1160     		str	r1, [r2]
 957 0044 C2F82031 		str	r3, [r2, #288]
 958 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 959              	.L207:
 960 004a 1849     		ldr	r1, .L208+12
 961 004c 184B     		ldr	r3, .L208+16
 962 004e 194A     		ldr	r2, .L208+20
 963 0050 0988     		ldrh	r1, [r1]
 964 0052 1B88     		ldrh	r3, [r3]
 965 0054 1268     		ldr	r2, [r2]
 966 0056 03FB01F3 		mul	r3, r3, r1
 967 005a 9342     		cmp	r3, r2
 968 005c 1ED8     		bhi	.L194
 969 005e 164E     		ldr	r6, .L208+24
ARM GAS  /tmp/ccKrLjLu.s 			page 18


 970 0060 114D     		ldr	r5, .L208+8
 971 0062 01E0     		b	.L201
 972              	.L193:
 973 0064 9B06     		lsls	r3, r3, #26
 974 0066 19D4     		bmi	.L194
 975              	.L201:
 976 0068 2368     		ldr	r3, [r4]
 977 006a 0021     		movs	r1, #0
 978 006c 3046     		mov	r0, r6
 979 006e 03B1     		cbz	r3, .L192
 980 0070 9847     		blx	r3
 981              	.L192:
 982 0072 4FF08042 		mov	r2, #1073741824
 983 0076 136C     		ldr	r3, [r2, #64]
 984 0078 2B42     		tst	r3, r5
 985 007a F3D0     		beq	.L193
 986 007c 5068     		ldr	r0, [r2, #4]
 987 007e 9668     		ldr	r6, [r2, #8]
 988 0080 D568     		ldr	r5, [r2, #12]
 989 0082 D469     		ldr	r4, [r2, #28]
 990 0084 516D     		ldr	r1, [r2, #84]
 991 0086 8027     		movs	r7, #128
 992 0088 0523     		movs	r3, #5
 993 008a 1760     		str	r7, [r2]
 994 008c 5060     		str	r0, [r2, #4]
 995 008e 9660     		str	r6, [r2, #8]
 996 0090 0020     		movs	r0, #0
 997 0092 D560     		str	r5, [r2, #12]
 998 0094 D461     		str	r4, [r2, #28]
 999 0096 5165     		str	r1, [r2, #84]
 1000 0098 1360     		str	r3, [r2]
 1001 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1002              	.L194:
 1003 009c 0120     		movs	r0, #1
 1004 009e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1005              	.L209:
 1006              		.align	2
 1007              	.L208:
 1008 00a0 00000000 		.word	.LANCHOR0
 1009 00a4 008060C0 		.word	-1067417600
 1010 00a8 000060C0 		.word	-1067450368
 1011 00ac 00000000 		.word	.LANCHOR2
 1012 00b0 00000000 		.word	.LANCHOR3
 1013 00b4 00000000 		.word	.LANCHOR1
 1014 00b8 200060C0 		.word	-1067450336
 1015              		.size	hsmci_wait_end_of_write_blocks, .-hsmci_wait_end_of_write_blocks
 1016              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1017              		.align	2
 1018              		.type	cpu_irq_critical_section_counter, %object
 1019              		.size	cpu_irq_critical_section_counter, 4
 1020              	cpu_irq_critical_section_counter:
 1021 0000 00000000 		.space	4
 1022              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1023              		.type	cpu_irq_prev_interrupt_state, %object
 1024              		.size	cpu_irq_prev_interrupt_state, 1
 1025              	cpu_irq_prev_interrupt_state:
 1026 0000 00       		.space	1
ARM GAS  /tmp/ccKrLjLu.s 			page 19


 1027              		.section	.bss.hsmciIdleFunc,"aw",%nobits
 1028              		.align	2
 1029              		.set	.LANCHOR0,. + 0
 1030              		.type	hsmciIdleFunc, %object
 1031              		.size	hsmciIdleFunc, 4
 1032              	hsmciIdleFunc:
 1033 0000 00000000 		.space	4
 1034              		.section	.bss.hsmci_block_size,"aw",%nobits
 1035              		.align	1
 1036              		.set	.LANCHOR2,. + 0
 1037              		.type	hsmci_block_size, %object
 1038              		.size	hsmci_block_size, 2
 1039              	hsmci_block_size:
 1040 0000 0000     		.space	2
 1041              		.section	.bss.hsmci_nb_block,"aw",%nobits
 1042              		.align	1
 1043              		.set	.LANCHOR3,. + 0
 1044              		.type	hsmci_nb_block, %object
 1045              		.size	hsmci_nb_block, 2
 1046              	hsmci_nb_block:
 1047 0000 0000     		.space	2
 1048              		.section	.bss.hsmci_transfert_pos,"aw",%nobits
 1049              		.align	2
 1050              		.set	.LANCHOR1,. + 0
 1051              		.type	hsmci_transfert_pos, %object
 1052              		.size	hsmci_transfert_pos, 4
 1053              	hsmci_transfert_pos:
 1054 0000 00000000 		.space	4
 1055              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
