ARM GAS  /tmp/ccG9bShu.s 			page 1


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
  13              		.file	"udc.c"
  14              		.section	.text.udc_valid_address,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	udc_valid_address, %function
  22              	udc_valid_address:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 024B     		ldr	r3, .L2
  27 0002 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  28 0004 00F07F00 		and	r0, r0, #127
  29 0008 FFF7FEBF 		b	udd_set_address
  30              	.L3:
  31              		.align	2
  32              	.L2:
  33 000c 00000000 		.word	udd_g_ctrlreq
  34              		.size	udc_valid_address, .-udc_valid_address
  35              		.section	.text.udc_update_iface_desc.part.0,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	udc_update_iface_desc.part.0, %function
  43              	udc_update_iface_desc.part.0:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 144B     		ldr	r3, .L23
  48 0002 1B68     		ldr	r3, [r3]
  49 0004 1B68     		ldr	r3, [r3]
  50 0006 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
  51 0008 8242     		cmp	r2, r0
  52 000a 1ED9     		bls	.L20
  53 000c 70B4     		push	{r4, r5, r6}
  54 000e 124E     		ldr	r6, .L23+4
  55 0010 3360     		str	r3, [r6]
  56 0012 5C88     		ldrh	r4, [r3, #2]	@ unaligned
  57 0014 1C44     		add	r4, r4, r3
ARM GAS  /tmp/ccG9bShu.s 			page 2


  58 0016 A342     		cmp	r3, r4
  59 0018 14D2     		bcs	.L7
  60 001a 0025     		movs	r5, #0
  61 001c 05E0     		b	.L10
  62              	.L8:
  63 001e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  64 0020 1344     		add	r3, r3, r2
  65 0022 9C42     		cmp	r4, r3
  66 0024 4FF00105 		mov	r5, #1
  67 0028 0BD9     		bls	.L21
  68              	.L10:
  69 002a 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
  70 002c 042A     		cmp	r2, #4
  71 002e F6D1     		bne	.L8
  72 0030 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
  73 0032 8242     		cmp	r2, r0
  74 0034 F3D1     		bne	.L8
  75 0036 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
  76 0038 8A42     		cmp	r2, r1
  77 003a F0D1     		bne	.L8
  78 003c 3DB9     		cbnz	r5, .L22
  79              	.L9:
  80 003e 0120     		movs	r0, #1
  81 0040 01E0     		b	.L6
  82              	.L21:
  83 0042 3360     		str	r3, [r6]
  84              	.L7:
  85 0044 0020     		movs	r0, #0
  86              	.L6:
  87 0046 70BC     		pop	{r4, r5, r6}
  88 0048 7047     		bx	lr
  89              	.L20:
  90 004a 0020     		movs	r0, #0
  91 004c 7047     		bx	lr
  92              	.L22:
  93 004e 3360     		str	r3, [r6]
  94 0050 F5E7     		b	.L9
  95              	.L24:
  96 0052 00BF     		.align	2
  97              	.L23:
  98 0054 00000000 		.word	.LANCHOR0
  99 0058 00000000 		.word	.LANCHOR1
 100              		.size	udc_update_iface_desc.part.0, .-udc_update_iface_desc.part.0
 101              		.section	.text.udc_iface_disable,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	udc_iface_disable, %function
 109              	udc_iface_disable:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 113 0002 1C4C     		ldr	r4, .L63
 114 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
ARM GAS  /tmp/ccG9bShu.s 			page 3


 115 0006 13B9     		cbnz	r3, .L61
 116              	.L26:
 117 0008 0026     		movs	r6, #0
 118 000a 3046     		mov	r0, r6
 119 000c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 120              	.L61:
 121 000e 0021     		movs	r1, #0
 122 0010 0646     		mov	r6, r0
 123 0012 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 124 0016 0028     		cmp	r0, #0
 125 0018 F6D0     		beq	.L26
 126 001a 174F     		ldr	r7, .L63+4
 127 001c 3B68     		ldr	r3, [r7]
 128 001e 5B68     		ldr	r3, [r3, #4]
 129 0020 53F82650 		ldr	r5, [r3, r6, lsl #2]
 130 0024 EB68     		ldr	r3, [r5, #12]
 131 0026 9847     		blx	r3
 132 0028 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 133 002a 002B     		cmp	r3, #0
 134 002c ECD0     		beq	.L26
 135 002e 0146     		mov	r1, r0
 136 0030 3046     		mov	r0, r6
 137 0032 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 138 0036 0646     		mov	r6, r0
 139 0038 0028     		cmp	r0, #0
 140 003a E5D0     		beq	.L26
 141 003c 0F4B     		ldr	r3, .L63+8
 142 003e 1C68     		ldr	r4, [r3]
 143              	.L32:
 144 0040 3B68     		ldr	r3, [r7]
 145 0042 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 146 0044 1A68     		ldr	r2, [r3]
 147 0046 5388     		ldrh	r3, [r2, #2]	@ unaligned
 148 0048 0C44     		add	r4, r4, r1
 149 004a 1A44     		add	r2, r2, r3
 150 004c A242     		cmp	r2, r4
 151 004e 06D8     		bhi	.L31
 152 0050 08E0     		b	.L27
 153              	.L62:
 154 0052 052B     		cmp	r3, #5
 155 0054 0AD0     		beq	.L28
 156 0056 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 157 0058 1C44     		add	r4, r4, r3
 158 005a A242     		cmp	r2, r4
 159 005c 02D9     		bls	.L27
 160              	.L31:
 161 005e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 162 0060 042B     		cmp	r3, #4
 163 0062 F6D1     		bne	.L62
 164              	.L27:
 165 0064 6B68     		ldr	r3, [r5, #4]
 166 0066 9847     		blx	r3
 167 0068 3046     		mov	r0, r6
 168 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 169              	.L28:
 170 006c A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 171 006e FFF7FEFF 		bl	udd_ep_free
ARM GAS  /tmp/ccG9bShu.s 			page 4


 172 0072 E5E7     		b	.L32
 173              	.L64:
 174              		.align	2
 175              	.L63:
 176 0074 00000000 		.word	.LANCHOR2
 177 0078 00000000 		.word	.LANCHOR0
 178 007c 00000000 		.word	.LANCHOR1
 179              		.size	udc_iface_disable, .-udc_iface_disable
 180              		.section	.text.udc_iface_enable,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv4-sp-d16
 187              		.type	udc_iface_enable, %function
 188              	udc_iface_enable:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191 0000 174B     		ldr	r3, .L101
 192 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 193 0004 0BB9     		cbnz	r3, .L99
 194 0006 0020     		movs	r0, #0
 195 0008 7047     		bx	lr
 196              	.L99:
 197 000a 70B5     		push	{r4, r5, r6, lr}
 198 000c 0646     		mov	r6, r0
 199 000e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 200 0012 10B3     		cbz	r0, .L86
 201 0014 134B     		ldr	r3, .L101+4
 202 0016 144D     		ldr	r5, .L101+8
 203 0018 1C68     		ldr	r4, [r3]
 204              	.L72:
 205 001a 2968     		ldr	r1, [r5]
 206 001c 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 207 001e 0A68     		ldr	r2, [r1]
 208 0020 5388     		ldrh	r3, [r2, #2]	@ unaligned
 209 0022 0444     		add	r4, r4, r0
 210 0024 1A44     		add	r2, r2, r3
 211 0026 A242     		cmp	r2, r4
 212 0028 06D8     		bhi	.L71
 213 002a 08E0     		b	.L67
 214              	.L100:
 215 002c 052B     		cmp	r3, #5
 216 002e 0DD0     		beq	.L68
 217 0030 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 218 0032 1C44     		add	r4, r4, r3
 219 0034 A242     		cmp	r2, r4
 220 0036 02D9     		bls	.L67
 221              	.L71:
 222 0038 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 223 003a 042B     		cmp	r3, #4
 224 003c F6D1     		bne	.L100
 225              	.L67:
 226 003e 4B68     		ldr	r3, [r1, #4]
 227 0040 53F82630 		ldr	r3, [r3, r6, lsl #2]
 228 0044 BDE87040 		pop	{r4, r5, r6, lr}
ARM GAS  /tmp/ccG9bShu.s 			page 5


 229 0048 1B68     		ldr	r3, [r3]
 230 004a 1847     		bx	r3
 231              	.L68:
 232 004c A288     		ldrh	r2, [r4, #4]	@ unaligned
 233 004e E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 234 0050 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 235 0052 FFF7FEFF 		bl	udd_ep_alloc
 236 0056 0028     		cmp	r0, #0
 237 0058 DFD1     		bne	.L72
 238              	.L86:
 239 005a 0020     		movs	r0, #0
 240 005c 70BD     		pop	{r4, r5, r6, pc}
 241              	.L102:
 242 005e 00BF     		.align	2
 243              	.L101:
 244 0060 00000000 		.word	.LANCHOR2
 245 0064 00000000 		.word	.LANCHOR1
 246 0068 00000000 		.word	.LANCHOR0
 247              		.size	udc_iface_enable, .-udc_iface_enable
 248              		.section	.text.udc_get_interface_desc,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	udc_get_interface_desc
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu fpv4-sp-d16
 256              		.type	udc_get_interface_desc, %function
 257              	udc_get_interface_desc:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261 0000 014B     		ldr	r3, .L104
 262 0002 1868     		ldr	r0, [r3]
 263 0004 7047     		bx	lr
 264              	.L105:
 265 0006 00BF     		.align	2
 266              	.L104:
 267 0008 00000000 		.word	.LANCHOR1
 268              		.size	udc_get_interface_desc, .-udc_get_interface_desc
 269              		.section	.text.udc_start,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	udc_start
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu fpv4-sp-d16
 277              		.type	udc_start, %function
 278              	udc_start:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 FFF7FEBF 		b	udd_enable
 283              		.size	udc_start, .-udc_start
 284              		.section	.text.udc_reset,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccG9bShu.s 			page 6


 286              		.p2align 2,,3
 287              		.global	udc_reset
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 292              		.type	udc_reset, %function
 293              	udc_reset:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296 0000 70B5     		push	{r4, r5, r6, lr}
 297 0002 0C4E     		ldr	r6, .L117
 298 0004 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 299 0006 7BB1     		cbz	r3, .L109
 300 0008 0B4D     		ldr	r5, .L117+4
 301 000a 2B68     		ldr	r3, [r5]
 302 000c 1B68     		ldr	r3, [r3]
 303 000e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 304 0010 53B1     		cbz	r3, .L109
 305 0012 0024     		movs	r4, #0
 306              	.L110:
 307 0014 2046     		mov	r0, r4
 308 0016 FFF7FEFF 		bl	udc_iface_disable
 309 001a 2B68     		ldr	r3, [r5]
 310 001c 1B68     		ldr	r3, [r3]
 311 001e 0134     		adds	r4, r4, #1
 312 0020 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 313 0022 E4B2     		uxtb	r4, r4
 314 0024 A342     		cmp	r3, r4
 315 0026 F5D8     		bhi	.L110
 316              	.L109:
 317 0028 044A     		ldr	r2, .L117+8
 318 002a 0023     		movs	r3, #0
 319 002c 0121     		movs	r1, #1
 320 002e 3370     		strb	r3, [r6]
 321 0030 1180     		strh	r1, [r2]	@ movhi
 322 0032 70BD     		pop	{r4, r5, r6, pc}
 323              	.L118:
 324              		.align	2
 325              	.L117:
 326 0034 00000000 		.word	.LANCHOR2
 327 0038 00000000 		.word	.LANCHOR0
 328 003c 00000000 		.word	.LANCHOR3
 329              		.size	udc_reset, .-udc_reset
 330              		.section	.text.udc_stop,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	udc_stop
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	udc_stop, %function
 339              	udc_stop:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342 0000 08B5     		push	{r3, lr}
ARM GAS  /tmp/ccG9bShu.s 			page 7


 343 0002 FFF7FEFF 		bl	udd_disable
 344 0006 BDE80840 		pop	{r3, lr}
 345 000a FFF7FEBF 		b	udc_reset
 346              		.size	udc_stop, .-udc_stop
 347 000e 00BF     		.section	.text.udc_sof_notify,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	udc_sof_notify
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu fpv4-sp-d16
 355              		.type	udc_sof_notify, %function
 356              	udc_sof_notify:
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359 0000 38B5     		push	{r3, r4, r5, lr}
 360 0002 0B4B     		ldr	r3, .L134
 361 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 362 0006 93B1     		cbz	r3, .L121
 363 0008 0A4D     		ldr	r5, .L134+4
 364 000a 2B68     		ldr	r3, [r5]
 365 000c 1A68     		ldr	r2, [r3]
 366 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 367 0010 6AB1     		cbz	r2, .L121
 368 0012 0024     		movs	r4, #0
 369              	.L125:
 370 0014 5B68     		ldr	r3, [r3, #4]
 371 0016 53F82430 		ldr	r3, [r3, r4, lsl #2]
 372 001a 1B69     		ldr	r3, [r3, #16]
 373 001c 03B1     		cbz	r3, .L124
 374 001e 9847     		blx	r3
 375              	.L124:
 376 0020 2B68     		ldr	r3, [r5]
 377 0022 1A68     		ldr	r2, [r3]
 378 0024 0134     		adds	r4, r4, #1
 379 0026 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 380 0028 E4B2     		uxtb	r4, r4
 381 002a A242     		cmp	r2, r4
 382 002c F2D8     		bhi	.L125
 383              	.L121:
 384 002e 38BD     		pop	{r3, r4, r5, pc}
 385              	.L135:
 386              		.align	2
 387              	.L134:
 388 0030 00000000 		.word	.LANCHOR2
 389 0034 00000000 		.word	.LANCHOR0
 390              		.size	udc_sof_notify, .-udc_sof_notify
 391              		.section	.text.udc_process_setup,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	udc_process_setup
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv4-sp-d16
 399              		.type	udc_process_setup, %function
ARM GAS  /tmp/ccG9bShu.s 			page 8


 400              	udc_process_setup:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 404 0004 A34C     		ldr	r4, .L245
 405 0006 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 406 0008 0022     		movs	r2, #0
 407 000a A281     		strh	r2, [r4, #12]	@ movhi
 408 000c 2261     		str	r2, [r4, #16]
 409 000e 6261     		str	r2, [r4, #20]
 410 0010 1A06     		lsls	r2, r3, #24
 411 0012 0CD4     		bmi	.L238
 412 0014 13F0600F 		tst	r3, #96
 413 0018 4AD0     		beq	.L239
 414              	.L232:
 415 001a 03F01F03 		and	r3, r3, #31
 416 001e 012B     		cmp	r3, #1
 417 0020 62D0     		beq	.L233
 418              	.L184:
 419 0022 022B     		cmp	r3, #2
 420 0024 1ED0     		beq	.L166
 421              	.L139:
 422 0026 0025     		movs	r5, #0
 423              	.L230:
 424 0028 2846     		mov	r0, r5
 425 002a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 426              	.L238:
 427 002e E588     		ldrh	r5, [r4, #6]
 428 0030 002D     		cmp	r5, #0
 429 0032 F8D0     		beq	.L139
 430 0034 13F06001 		ands	r1, r3, #96
 431 0038 EFD1     		bne	.L232
 432 003a 13F01F03 		ands	r3, r3, #31
 433 003e 40F08180 		bne	.L141
 434 0042 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 435 0044 062B     		cmp	r3, #6
 436 0046 00F03581 		beq	.L142
 437 004a 082B     		cmp	r3, #8
 438 004c 00F01981 		beq	.L143
 439 0050 002B     		cmp	r3, #0
 440 0052 E8D1     		bne	.L139
 441 0054 022D     		cmp	r5, #2
 442 0056 E6D1     		bne	.L139
 443 0058 2946     		mov	r1, r5
 444 005a 8F48     		ldr	r0, .L245+4
 445 005c FFF7FEFF 		bl	udd_set_setup_payload
 446 0060 0125     		movs	r5, #1
 447 0062 E1E7     		b	.L230
 448              	.L166:
 449 0064 8D4E     		ldr	r6, .L245+8
 450 0066 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 451 0068 002B     		cmp	r3, #0
 452 006a DCD0     		beq	.L139
 453 006c 8C4F     		ldr	r7, .L245+12
 454 006e 3B68     		ldr	r3, [r7]
 455 0070 1A68     		ldr	r2, [r3]
 456 0072 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
ARM GAS  /tmp/ccG9bShu.s 			page 9


 457 0074 002A     		cmp	r2, #0
 458 0076 D6D0     		beq	.L139
 459 0078 0024     		movs	r4, #0
 460 007a 0EE0     		b	.L187
 461              	.L240:
 462 007c FFF7FEFF 		bl	udc_update_iface_desc.part.0
 463 0080 0028     		cmp	r0, #0
 464 0082 D0D0     		beq	.L139
 465 0084 AB68     		ldr	r3, [r5, #8]
 466 0086 9847     		blx	r3
 467 0088 0134     		adds	r4, r4, #1
 468 008a E4B2     		uxtb	r4, r4
 469 008c 0028     		cmp	r0, #0
 470 008e 57D1     		bne	.L235
 471 0090 3B68     		ldr	r3, [r7]
 472 0092 1A68     		ldr	r2, [r3]
 473 0094 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 474 0096 A242     		cmp	r2, r4
 475 0098 C5D9     		bls	.L139
 476              	.L187:
 477 009a 5B68     		ldr	r3, [r3, #4]
 478 009c 53F82450 		ldr	r5, [r3, r4, lsl #2]
 479 00a0 EB68     		ldr	r3, [r5, #12]
 480 00a2 9847     		blx	r3
 481 00a4 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 482 00a6 0146     		mov	r1, r0
 483 00a8 2046     		mov	r0, r4
 484 00aa 002B     		cmp	r3, #0
 485 00ac E6D1     		bne	.L240
 486 00ae BAE7     		b	.L139
 487              	.L239:
 488 00b0 13F01F03 		ands	r3, r3, #31
 489 00b4 2DD1     		bne	.L167
 490 00b6 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 491 00b8 013A     		subs	r2, r2, #1
 492 00ba 082A     		cmp	r2, #8
 493 00bc B3D8     		bhi	.L139
 494 00be 01A1     		adr	r1, .L169
 495 00c0 51F822F0 		ldr	pc, [r1, r2, lsl #2]
 496              		.p2align 2
 497              	.L169:
 498 00c4 7D010000 		.word	.L168+1
 499 00c8 27000000 		.word	.L139+1
 500 00cc 23000000 		.word	.L184+1
 501 00d0 27000000 		.word	.L139+1
 502 00d4 6F010000 		.word	.L170+1
 503 00d8 27000000 		.word	.L139+1
 504 00dc 27000000 		.word	.L139+1
 505 00e0 27000000 		.word	.L139+1
 506 00e4 99010000 		.word	.L171+1
 507              		.p2align 1
 508              	.L233:
 509 00e8 6C4E     		ldr	r6, .L245+8
 510 00ea 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 511 00ec 002B     		cmp	r3, #0
 512 00ee 9AD0     		beq	.L139
 513 00f0 6B4F     		ldr	r7, .L245+12
ARM GAS  /tmp/ccG9bShu.s 			page 10


 514              	.L162:
 515 00f2 3F68     		ldr	r7, [r7]
 516 00f4 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 517 00f6 3B68     		ldr	r3, [r7]
 518 00f8 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 519 00fa AB42     		cmp	r3, r5
 520 00fc 93D9     		bls	.L139
 521 00fe 0021     		movs	r1, #0
 522 0100 2846     		mov	r0, r5
 523 0102 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 524 0106 0028     		cmp	r0, #0
 525 0108 7DD1     		bne	.L241
 526              	.L234:
 527 010a 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 528 010c 03F01F03 		and	r3, r3, #31
 529 0110 87E7     		b	.L184
 530              	.L167:
 531 0112 012B     		cmp	r3, #1
 532 0114 50D0     		beq	.L242
 533 0116 022B     		cmp	r3, #2
 534 0118 85D1     		bne	.L139
 535 011a 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 536 011c 012B     		cmp	r3, #1
 537 011e 64D0     		beq	.L182
 538 0120 032B     		cmp	r3, #3
 539 0122 9FD1     		bne	.L166
 540 0124 E388     		ldrh	r3, [r4, #6]
 541 0126 002B     		cmp	r3, #0
 542 0128 9CD1     		bne	.L166
 543 012a 6388     		ldrh	r3, [r4, #2]
 544 012c 002B     		cmp	r3, #0
 545 012e 99D1     		bne	.L166
 546 0130 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 547 0132 FFF7FEFF 		bl	udd_ep_abort
 548 0136 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 549 0138 FFF7FEFF 		bl	udd_ep_set_halt
 550 013c 0028     		cmp	r0, #0
 551 013e 39D0     		beq	.L152
 552              	.L235:
 553 0140 0125     		movs	r5, #1
 554 0142 71E7     		b	.L230
 555              	.L141:
 556 0144 012B     		cmp	r3, #1
 557 0146 73D0     		beq	.L243
 558 0148 022B     		cmp	r3, #2
 559 014a 7FF46CAF 		bne	.L139
 560 014e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 561 0150 002B     		cmp	r3, #0
 562 0152 87D1     		bne	.L166
 563 0154 022D     		cmp	r5, #2
 564 0156 85D1     		bne	.L166
 565 0158 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 566 015a FFF7FEFF 		bl	udd_ep_is_halted
 567 015e 514B     		ldr	r3, .L245+16
 568 0160 2946     		mov	r1, r5
 569 0162 1880     		strh	r0, [r3]	@ movhi
 570 0164 1846     		mov	r0, r3
ARM GAS  /tmp/ccG9bShu.s 			page 11


 571 0166 FFF7FEFF 		bl	udd_set_setup_payload
 572 016a 0125     		movs	r5, #1
 573 016c 5CE7     		b	.L230
 574              	.L170:
 575 016e E388     		ldrh	r3, [r4, #6]
 576 0170 002B     		cmp	r3, #0
 577 0172 7FF458AF 		bne	.L139
 578 0176 4C4B     		ldr	r3, .L245+20
 579 0178 2361     		str	r3, [r4, #16]
 580 017a E1E7     		b	.L235
 581              	.L168:
 582 017c E388     		ldrh	r3, [r4, #6]
 583 017e 002B     		cmp	r3, #0
 584 0180 7FF451AF 		bne	.L139
 585 0184 6588     		ldrh	r5, [r4, #2]
 586 0186 012D     		cmp	r5, #1
 587 0188 7FF44DAF 		bne	.L139
 588 018c 424A     		ldr	r2, .L245+4
 589 018e 1388     		ldrh	r3, [r2]
 590 0190 23F00203 		bic	r3, r3, #2
 591 0194 1380     		strh	r3, [r2]	@ movhi
 592 0196 47E7     		b	.L230
 593              	.L171:
 594 0198 E588     		ldrh	r5, [r4, #6]
 595 019a 002D     		cmp	r5, #0
 596 019c 7FF443AF 		bne	.L139
 597 01a0 FFF7FEFF 		bl	udd_getaddress
 598 01a4 30B1     		cbz	r0, .L152
 599 01a6 414E     		ldr	r6, .L245+24
 600 01a8 A278     		ldrb	r2, [r4, #2]	@ zero_extendqisi2
 601 01aa 3368     		ldr	r3, [r6]
 602 01ac 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 603 01ae 9A42     		cmp	r2, r3
 604 01b0 40F3EC80 		ble	.L244
 605              	.L152:
 606 01b4 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 607 01b6 30E7     		b	.L232
 608              	.L242:
 609 01b8 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 610 01ba 0B2B     		cmp	r3, #11
 611 01bc FAD1     		bne	.L152
 612 01be E388     		ldrh	r3, [r4, #6]
 613 01c0 002B     		cmp	r3, #0
 614 01c2 91D1     		bne	.L233
 615 01c4 354B     		ldr	r3, .L245+8
 616 01c6 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 617 01c8 002B     		cmp	r3, #0
 618 01ca 3FF42CAF 		beq	.L139
 619 01ce 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 620 01d0 6688     		ldrh	r6, [r4, #2]
 621 01d2 2846     		mov	r0, r5
 622 01d4 FFF7FEFF 		bl	udc_iface_disable
 623 01d8 0028     		cmp	r0, #0
 624 01da EBD0     		beq	.L152
 625 01dc F1B2     		uxtb	r1, r6
 626 01de 2846     		mov	r0, r5
 627 01e0 FFF7FEFF 		bl	udc_iface_enable
ARM GAS  /tmp/ccG9bShu.s 			page 12


 628 01e4 0028     		cmp	r0, #0
 629 01e6 ABD1     		bne	.L235
 630 01e8 E4E7     		b	.L152
 631              	.L182:
 632 01ea E388     		ldrh	r3, [r4, #6]
 633 01ec 002B     		cmp	r3, #0
 634 01ee 7FF439AF 		bne	.L166
 635 01f2 6388     		ldrh	r3, [r4, #2]
 636 01f4 002B     		cmp	r3, #0
 637 01f6 7FF435AF 		bne	.L166
 638 01fa 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 639 01fc FFF7FEFF 		bl	udd_ep_clear_halt
 640 0200 0028     		cmp	r0, #0
 641 0202 9DD1     		bne	.L235
 642 0204 D6E7     		b	.L152
 643              	.L241:
 644 0206 7B68     		ldr	r3, [r7, #4]
 645 0208 53F82570 		ldr	r7, [r3, r5, lsl #2]
 646 020c FB68     		ldr	r3, [r7, #12]
 647 020e 9847     		blx	r3
 648 0210 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 649 0212 002B     		cmp	r3, #0
 650 0214 3FF407AF 		beq	.L139
 651 0218 0146     		mov	r1, r0
 652 021a 2846     		mov	r0, r5
 653 021c FFF7FEFF 		bl	udc_update_iface_desc.part.0
 654 0220 0028     		cmp	r0, #0
 655 0222 3FF472AF 		beq	.L234
 656 0226 BB68     		ldr	r3, [r7, #8]
 657 0228 9847     		blx	r3
 658 022a 0028     		cmp	r0, #0
 659 022c 88D1     		bne	.L235
 660 022e 6CE7     		b	.L234
 661              	.L243:
 662 0230 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 663 0232 0A2B     		cmp	r3, #10
 664 0234 BED1     		bne	.L152
 665 0236 012D     		cmp	r5, #1
 666 0238 7FF456AF 		bne	.L233
 667 023c 174E     		ldr	r6, .L245+8
 668 023e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 669 0240 002B     		cmp	r3, #0
 670 0242 3FF4F0AE 		beq	.L139
 671 0246 164F     		ldr	r7, .L245+12
 672 0248 94F80480 		ldrb	r8, [r4, #4]	@ zero_extendqisi2
 673 024c D7F80090 		ldr	r9, [r7]
 674 0250 D9F80030 		ldr	r3, [r9]
 675 0254 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 676 0256 4345     		cmp	r3, r8
 677 0258 7FF64BAF 		bls	.L162
 678 025c 4046     		mov	r0, r8
 679 025e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 680 0262 0546     		mov	r5, r0
 681 0264 0028     		cmp	r0, #0
 682 0266 A5D0     		beq	.L152
 683 0268 D9F80430 		ldr	r3, [r9, #4]
 684 026c 53F82830 		ldr	r3, [r3, r8, lsl #2]
ARM GAS  /tmp/ccG9bShu.s 			page 13


 685 0270 DB68     		ldr	r3, [r3, #12]
 686 0272 9847     		blx	r3
 687 0274 0E4B     		ldr	r3, .L245+28
 688 0276 0121     		movs	r1, #1
 689 0278 1870     		strb	r0, [r3]
 690 027a 1846     		mov	r0, r3
 691 027c FFF7FEFF 		bl	udd_set_setup_payload
 692 0280 D2E6     		b	.L230
 693              	.L143:
 694 0282 012D     		cmp	r5, #1
 695 0284 7FF4CFAE 		bne	.L139
 696 0288 2946     		mov	r1, r5
 697 028a 0448     		ldr	r0, .L245+8
 698 028c FFF7FEFF 		bl	udd_set_setup_payload
 699 0290 CAE6     		b	.L230
 700              	.L246:
 701 0292 00BF     		.align	2
 702              	.L245:
 703 0294 00000000 		.word	udd_g_ctrlreq
 704 0298 00000000 		.word	.LANCHOR3
 705 029c 00000000 		.word	.LANCHOR2
 706 02a0 00000000 		.word	.LANCHOR0
 707 02a4 00000000 		.word	.LANCHOR9
 708 02a8 00000000 		.word	udc_valid_address
 709 02ac 00000000 		.word	udc_config
 710 02b0 00000000 		.word	.LANCHOR8
 711              	.L142:
 712 02b4 6288     		ldrh	r2, [r4, #2]
 713 02b6 130A     		lsrs	r3, r2, #8
 714 02b8 013B     		subs	r3, r3, #1
 715 02ba 0E2B     		cmp	r3, #14
 716 02bc 3FF6B3AE 		bhi	.L139
 717 02c0 01A1     		adr	r1, .L147
 718 02c2 51F823F0 		ldr	pc, [r1, r3, lsl #2]
 719 02c6 00BF     		.p2align 2
 720              	.L147:
 721 02c8 81030000 		.word	.L146+1
 722 02cc 5F030000 		.word	.L148+1
 723 02d0 25030000 		.word	.L149+1
 724 02d4 27000000 		.word	.L139+1
 725 02d8 27000000 		.word	.L139+1
 726 02dc 27000000 		.word	.L139+1
 727 02e0 27000000 		.word	.L139+1
 728 02e4 27000000 		.word	.L139+1
 729 02e8 27000000 		.word	.L139+1
 730 02ec 27000000 		.word	.L139+1
 731 02f0 27000000 		.word	.L139+1
 732 02f4 27000000 		.word	.L139+1
 733 02f8 27000000 		.word	.L139+1
 734 02fc 27000000 		.word	.L139+1
 735 0300 05030000 		.word	.L150+1
 736              		.p2align 1
 737              	.L150:
 738 0304 384B     		ldr	r3, .L247
 739 0306 9868     		ldr	r0, [r3, #8]
 740 0308 0028     		cmp	r0, #0
 741 030a 3FF48CAE 		beq	.L139
ARM GAS  /tmp/ccG9bShu.s 			page 14


 742 030e 4188     		ldrh	r1, [r0, #2]	@ unaligned
 743 0310 FFF7FEFF 		bl	udd_set_setup_payload
 744              	.L151:
 745 0314 E388     		ldrh	r3, [r4, #6]
 746 0316 A289     		ldrh	r2, [r4, #12]
 747 0318 9A42     		cmp	r2, r3
 748 031a 7FF611AF 		bls	.L235
 749 031e A381     		strh	r3, [r4, #12]	@ movhi
 750 0320 0125     		movs	r5, #1
 751 0322 81E6     		b	.L230
 752              	.L149:
 753 0324 D2B2     		uxtb	r2, r2
 754 0326 012A     		cmp	r2, #1
 755 0328 5AD0     		beq	.L153
 756 032a 54D3     		bcc	.L154
 757 032c 022A     		cmp	r2, #2
 758 032e 7FF441AF 		bne	.L152
 759 0332 2E49     		ldr	r1, .L247+4
 760 0334 0422     		movs	r2, #4
 761              	.L155:
 762 0336 2E4E     		ldr	r6, .L247+8
 763 0338 0139     		subs	r1, r1, #1
 764 033a 3046     		mov	r0, r6
 765 033c 0023     		movs	r3, #0
 766              	.L156:
 767 033e 0133     		adds	r3, r3, #1
 768 0340 DBB2     		uxtb	r3, r3
 769 0342 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 770 0346 20F8025F 		strh	r5, [r0, #2]!	@ movhi
 771 034a 9A42     		cmp	r2, r3
 772 034c F7D8     		bhi	.L156
 773 034e 5300     		lsls	r3, r2, #1
 774 0350 0233     		adds	r3, r3, #2
 775 0352 1946     		mov	r1, r3
 776 0354 2648     		ldr	r0, .L247+8
 777 0356 3370     		strb	r3, [r6]
 778 0358 FFF7FEFF 		bl	udd_set_setup_payload
 779 035c DAE7     		b	.L151
 780              	.L148:
 781 035e 224B     		ldr	r3, .L247
 782 0360 1968     		ldr	r1, [r3]
 783 0362 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 784 0364 D2B2     		uxtb	r2, r2
 785 0366 9142     		cmp	r1, r2
 786 0368 7FF65DAE 		bls	.L139
 787 036c 5B68     		ldr	r3, [r3, #4]
 788 036e 53F83200 		ldr	r0, [r3, r2, lsl #3]
 789 0372 4188     		ldrh	r1, [r0, #2]	@ unaligned
 790 0374 FFF7FEFF 		bl	udd_set_setup_payload
 791 0378 A368     		ldr	r3, [r4, #8]
 792 037a 0222     		movs	r2, #2
 793 037c 5A70     		strb	r2, [r3, #1]
 794 037e C9E7     		b	.L151
 795              	.L146:
 796 0380 194B     		ldr	r3, .L247
 797 0382 1868     		ldr	r0, [r3]
 798 0384 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
ARM GAS  /tmp/ccG9bShu.s 			page 15


 799 0386 FFF7FEFF 		bl	udd_set_setup_payload
 800 038a C3E7     		b	.L151
 801              	.L244:
 802 038c FFF7FEFF 		bl	udc_reset
 803 0390 A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 804 0392 184A     		ldr	r2, .L247+12
 805 0394 1370     		strb	r3, [r2]
 806 0396 002B     		cmp	r3, #0
 807 0398 3FF4D2AE 		beq	.L235
 808 039c 03F10053 		add	r3, r3, #536870912
 809 03a0 013B     		subs	r3, r3, #1
 810 03a2 7268     		ldr	r2, [r6, #4]
 811 03a4 144F     		ldr	r7, .L247+16
 812 03a6 52F83310 		ldr	r1, [r2, r3, lsl #3]
 813 03aa 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 814 03ac 02EBC303 		add	r3, r2, r3, lsl #3
 815 03b0 3B60     		str	r3, [r7]
 816 03b2 0029     		cmp	r1, #0
 817 03b4 3FF4C4AE 		beq	.L235
 818              	.L176:
 819 03b8 2846     		mov	r0, r5
 820 03ba 0021     		movs	r1, #0
 821 03bc FFF7FEFF 		bl	udc_iface_enable
 822 03c0 0135     		adds	r5, r5, #1
 823 03c2 EDB2     		uxtb	r5, r5
 824 03c4 0028     		cmp	r0, #0
 825 03c6 3FF4F5AE 		beq	.L152
 826 03ca 3B68     		ldr	r3, [r7]
 827 03cc 1B68     		ldr	r3, [r3]
 828 03ce 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 829 03d0 AB42     		cmp	r3, r5
 830 03d2 F1D8     		bhi	.L176
 831 03d4 B4E6     		b	.L235
 832              	.L154:
 833 03d6 0421     		movs	r1, #4
 834 03d8 0848     		ldr	r0, .L247+20
 835 03da FFF7FEFF 		bl	udd_set_setup_payload
 836 03de 99E7     		b	.L151
 837              	.L153:
 838 03e0 0622     		movs	r2, #6
 839 03e2 0749     		ldr	r1, .L247+24
 840 03e4 A7E7     		b	.L155
 841              	.L248:
 842 03e6 00BF     		.align	2
 843              	.L247:
 844 03e8 00000000 		.word	udc_config
 845 03ec 00000000 		.word	.LANCHOR4
 846 03f0 00000000 		.word	.LANCHOR7
 847 03f4 00000000 		.word	.LANCHOR2
 848 03f8 00000000 		.word	.LANCHOR0
 849 03fc 00000000 		.word	.LANCHOR6
 850 0400 00000000 		.word	.LANCHOR5
 851              		.size	udc_process_setup, .-udc_process_setup
 852              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 853              		.align	2
 854              		.type	cpu_irq_critical_section_counter, %object
 855              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccG9bShu.s 			page 16


 856              	cpu_irq_critical_section_counter:
 857 0000 00000000 		.space	4
 858              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 859              		.type	cpu_irq_prev_interrupt_state, %object
 860              		.size	cpu_irq_prev_interrupt_state, 1
 861              	cpu_irq_prev_interrupt_state:
 862 0000 00       		.space	1
 863              		.section	.bss.udc_device_status,"aw",%nobits
 864              		.align	1
 865              		.set	.LANCHOR3,. + 0
 866              		.type	udc_device_status, %object
 867              		.size	udc_device_status, 2
 868              	udc_device_status:
 869 0000 0000     		.space	2
 870              		.section	.bss.udc_ep_status.9036,"aw",%nobits
 871              		.align	1
 872              		.set	.LANCHOR9,. + 0
 873              		.type	udc_ep_status.9036, %object
 874              		.size	udc_ep_status.9036, 2
 875              	udc_ep_status.9036:
 876 0000 0000     		.space	2
 877              		.section	.bss.udc_iface_setting,"aw",%nobits
 878              		.align	2
 879              		.set	.LANCHOR8,. + 0
 880              		.type	udc_iface_setting, %object
 881              		.size	udc_iface_setting, 1
 882              	udc_iface_setting:
 883 0000 00       		.space	1
 884              		.section	.bss.udc_num_configuration,"aw",%nobits
 885              		.align	2
 886              		.set	.LANCHOR2,. + 0
 887              		.type	udc_num_configuration, %object
 888              		.size	udc_num_configuration, 1
 889              	udc_num_configuration:
 890 0000 00       		.space	1
 891              		.section	.bss.udc_ptr_conf,"aw",%nobits
 892              		.align	2
 893              		.set	.LANCHOR0,. + 0
 894              		.type	udc_ptr_conf, %object
 895              		.size	udc_ptr_conf, 4
 896              	udc_ptr_conf:
 897 0000 00000000 		.space	4
 898              		.section	.bss.udc_ptr_iface,"aw",%nobits
 899              		.align	2
 900              		.set	.LANCHOR1,. + 0
 901              		.type	udc_ptr_iface, %object
 902              		.size	udc_ptr_iface, 4
 903              	udc_ptr_iface:
 904 0000 00000000 		.space	4
 905              		.section	.data.udc_string_desc,"aw",%progbits
 906              		.align	2
 907              		.set	.LANCHOR7,. + 0
 908              		.type	udc_string_desc, %object
 909              		.size	udc_string_desc, 14
 910              	udc_string_desc:
 911 0000 00       		.space	1
 912 0001 03       		.byte	3
ARM GAS  /tmp/ccG9bShu.s 			page 17


 913 0002 00000000 		.space	12
 913      00000000 
 913      00000000 
 914              		.section	.rodata.udc_string_desc_languageid,"a",%progbits
 915              		.align	2
 916              		.set	.LANCHOR6,. + 0
 917              		.type	udc_string_desc_languageid, %object
 918              		.size	udc_string_desc_languageid, 4
 919              	udc_string_desc_languageid:
 920 0000 04       		.byte	4
 921 0001 03       		.byte	3
 922 0002 0904     		.short	1033
 923              		.section	.rodata.udc_string_manufacturer_name,"a",%progbits
 924              		.align	2
 925              		.set	.LANCHOR5,. + 0
 926              		.type	udc_string_manufacturer_name, %object
 927              		.size	udc_string_manufacturer_name, 7
 928              	udc_string_manufacturer_name:
 929 0000 44756574 		.ascii	"Duet3D\000"
 929      334400
 930              		.section	.rodata.udc_string_product_name,"a",%progbits
 931              		.align	2
 932              		.set	.LANCHOR4,. + 0
 933              		.type	udc_string_product_name, %object
 934              		.size	udc_string_product_name, 5
 935              	udc_string_product_name:
 936 0000 44756574 		.ascii	"Duet\000"
 936      00
 937              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
