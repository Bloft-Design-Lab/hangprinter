ARM GAS  /tmp/cc9bZO73.s 			page 1


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
  11              		.file	"udc.c"
  12              		.section	.text.udc_valid_address,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	udc_valid_address, %function
  20              	udc_valid_address:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 024B     		ldr	r3, .L2
  25 0002 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  26 0004 00F07F00 		and	r0, r0, #127
  27 0008 FFF7FEBF 		b	udd_set_address
  28              	.L3:
  29              		.align	2
  30              	.L2:
  31 000c 00000000 		.word	udd_g_ctrlreq
  32              		.size	udc_valid_address, .-udc_valid_address
  33              		.section	.text.udc_update_iface_desc.part.0,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu softvfp
  40              		.type	udc_update_iface_desc.part.0, %function
  41              	udc_update_iface_desc.part.0:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 144B     		ldr	r3, .L23
  46 0002 1B68     		ldr	r3, [r3]
  47 0004 1B68     		ldr	r3, [r3]
  48 0006 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
  49 0008 8242     		cmp	r2, r0
  50 000a 1ED9     		bls	.L20
  51 000c 70B4     		push	{r4, r5, r6}
  52 000e 124E     		ldr	r6, .L23+4
  53 0010 3360     		str	r3, [r6]
  54 0012 5C88     		ldrh	r4, [r3, #2]	@ unaligned
  55 0014 1C44     		add	r4, r4, r3
  56 0016 A342     		cmp	r3, r4
  57 0018 14D2     		bcs	.L7
ARM GAS  /tmp/cc9bZO73.s 			page 2


  58 001a 0025     		movs	r5, #0
  59 001c 05E0     		b	.L10
  60              	.L8:
  61 001e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  62 0020 1344     		add	r3, r3, r2
  63 0022 9C42     		cmp	r4, r3
  64 0024 4FF00105 		mov	r5, #1
  65 0028 0BD9     		bls	.L21
  66              	.L10:
  67 002a 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
  68 002c 042A     		cmp	r2, #4
  69 002e F6D1     		bne	.L8
  70 0030 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
  71 0032 8242     		cmp	r2, r0
  72 0034 F3D1     		bne	.L8
  73 0036 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
  74 0038 8A42     		cmp	r2, r1
  75 003a F0D1     		bne	.L8
  76 003c 3DB9     		cbnz	r5, .L22
  77              	.L9:
  78 003e 0120     		movs	r0, #1
  79 0040 01E0     		b	.L6
  80              	.L21:
  81 0042 3360     		str	r3, [r6]
  82              	.L7:
  83 0044 0020     		movs	r0, #0
  84              	.L6:
  85 0046 70BC     		pop	{r4, r5, r6}
  86 0048 7047     		bx	lr
  87              	.L20:
  88 004a 0020     		movs	r0, #0
  89 004c 7047     		bx	lr
  90              	.L22:
  91 004e 3360     		str	r3, [r6]
  92 0050 F5E7     		b	.L9
  93              	.L24:
  94 0052 00BF     		.align	2
  95              	.L23:
  96 0054 00000000 		.word	.LANCHOR0
  97 0058 00000000 		.word	.LANCHOR1
  98              		.size	udc_update_iface_desc.part.0, .-udc_update_iface_desc.part.0
  99              		.section	.text.udc_iface_disable,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	udc_iface_disable, %function
 107              	udc_iface_disable:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 111 0002 1C4C     		ldr	r4, .L63
 112 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 113 0006 13B9     		cbnz	r3, .L61
 114              	.L26:
ARM GAS  /tmp/cc9bZO73.s 			page 3


 115 0008 0026     		movs	r6, #0
 116 000a 3046     		mov	r0, r6
 117 000c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 118              	.L61:
 119 000e 0021     		movs	r1, #0
 120 0010 0646     		mov	r6, r0
 121 0012 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 122 0016 0028     		cmp	r0, #0
 123 0018 F6D0     		beq	.L26
 124 001a 174F     		ldr	r7, .L63+4
 125 001c 3B68     		ldr	r3, [r7]
 126 001e 5B68     		ldr	r3, [r3, #4]
 127 0020 53F82650 		ldr	r5, [r3, r6, lsl #2]
 128 0024 EB68     		ldr	r3, [r5, #12]
 129 0026 9847     		blx	r3
 130 0028 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 131 002a 002B     		cmp	r3, #0
 132 002c ECD0     		beq	.L26
 133 002e 0146     		mov	r1, r0
 134 0030 3046     		mov	r0, r6
 135 0032 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 136 0036 0646     		mov	r6, r0
 137 0038 0028     		cmp	r0, #0
 138 003a E5D0     		beq	.L26
 139 003c 0F4B     		ldr	r3, .L63+8
 140 003e 1C68     		ldr	r4, [r3]
 141              	.L32:
 142 0040 3B68     		ldr	r3, [r7]
 143 0042 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 144 0044 1A68     		ldr	r2, [r3]
 145 0046 5388     		ldrh	r3, [r2, #2]	@ unaligned
 146 0048 0C44     		add	r4, r4, r1
 147 004a 1A44     		add	r2, r2, r3
 148 004c A242     		cmp	r2, r4
 149 004e 06D8     		bhi	.L31
 150 0050 08E0     		b	.L27
 151              	.L62:
 152 0052 052B     		cmp	r3, #5
 153 0054 0AD0     		beq	.L28
 154 0056 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 155 0058 1C44     		add	r4, r4, r3
 156 005a A242     		cmp	r2, r4
 157 005c 02D9     		bls	.L27
 158              	.L31:
 159 005e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 160 0060 042B     		cmp	r3, #4
 161 0062 F6D1     		bne	.L62
 162              	.L27:
 163 0064 6B68     		ldr	r3, [r5, #4]
 164 0066 9847     		blx	r3
 165 0068 3046     		mov	r0, r6
 166 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 167              	.L28:
 168 006c A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 169 006e FFF7FEFF 		bl	udd_ep_free
 170 0072 E5E7     		b	.L32
 171              	.L64:
ARM GAS  /tmp/cc9bZO73.s 			page 4


 172              		.align	2
 173              	.L63:
 174 0074 00000000 		.word	.LANCHOR2
 175 0078 00000000 		.word	.LANCHOR0
 176 007c 00000000 		.word	.LANCHOR1
 177              		.size	udc_iface_disable, .-udc_iface_disable
 178              		.section	.text.udc_iface_enable,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu softvfp
 185              		.type	udc_iface_enable, %function
 186              	udc_iface_enable:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189 0000 174B     		ldr	r3, .L101
 190 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 191 0004 0BB9     		cbnz	r3, .L99
 192 0006 0020     		movs	r0, #0
 193 0008 7047     		bx	lr
 194              	.L99:
 195 000a 70B5     		push	{r4, r5, r6, lr}
 196 000c 0646     		mov	r6, r0
 197 000e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 198 0012 10B3     		cbz	r0, .L86
 199 0014 134B     		ldr	r3, .L101+4
 200 0016 144D     		ldr	r5, .L101+8
 201 0018 1C68     		ldr	r4, [r3]
 202              	.L72:
 203 001a 2968     		ldr	r1, [r5]
 204 001c 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 205 001e 0A68     		ldr	r2, [r1]
 206 0020 5388     		ldrh	r3, [r2, #2]	@ unaligned
 207 0022 0444     		add	r4, r4, r0
 208 0024 1A44     		add	r2, r2, r3
 209 0026 A242     		cmp	r2, r4
 210 0028 06D8     		bhi	.L71
 211 002a 08E0     		b	.L67
 212              	.L100:
 213 002c 052B     		cmp	r3, #5
 214 002e 0DD0     		beq	.L68
 215 0030 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 216 0032 1C44     		add	r4, r4, r3
 217 0034 A242     		cmp	r2, r4
 218 0036 02D9     		bls	.L67
 219              	.L71:
 220 0038 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 221 003a 042B     		cmp	r3, #4
 222 003c F6D1     		bne	.L100
 223              	.L67:
 224 003e 4B68     		ldr	r3, [r1, #4]
 225 0040 53F82630 		ldr	r3, [r3, r6, lsl #2]
 226 0044 BDE87040 		pop	{r4, r5, r6, lr}
 227 0048 1B68     		ldr	r3, [r3]
 228 004a 1847     		bx	r3
ARM GAS  /tmp/cc9bZO73.s 			page 5


 229              	.L68:
 230 004c A288     		ldrh	r2, [r4, #4]	@ unaligned
 231 004e E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 232 0050 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 233 0052 FFF7FEFF 		bl	udd_ep_alloc
 234 0056 0028     		cmp	r0, #0
 235 0058 DFD1     		bne	.L72
 236              	.L86:
 237 005a 0020     		movs	r0, #0
 238 005c 70BD     		pop	{r4, r5, r6, pc}
 239              	.L102:
 240 005e 00BF     		.align	2
 241              	.L101:
 242 0060 00000000 		.word	.LANCHOR2
 243 0064 00000000 		.word	.LANCHOR1
 244 0068 00000000 		.word	.LANCHOR0
 245              		.size	udc_iface_enable, .-udc_iface_enable
 246              		.section	.text.udc_get_interface_desc,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	udc_get_interface_desc
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu softvfp
 254              		.type	udc_get_interface_desc, %function
 255              	udc_get_interface_desc:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 014B     		ldr	r3, .L104
 260 0002 1868     		ldr	r0, [r3]
 261 0004 7047     		bx	lr
 262              	.L105:
 263 0006 00BF     		.align	2
 264              	.L104:
 265 0008 00000000 		.word	.LANCHOR1
 266              		.size	udc_get_interface_desc, .-udc_get_interface_desc
 267              		.section	.text.udc_start,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.global	udc_start
 271              		.syntax unified
 272              		.thumb
 273              		.thumb_func
 274              		.fpu softvfp
 275              		.type	udc_start, %function
 276              	udc_start:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279              		@ link register save eliminated.
 280 0000 FFF7FEBF 		b	udd_enable
 281              		.size	udc_start, .-udc_start
 282              		.section	.text.udc_reset,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.global	udc_reset
ARM GAS  /tmp/cc9bZO73.s 			page 6


 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu softvfp
 290              		.type	udc_reset, %function
 291              	udc_reset:
 292              		@ args = 0, pretend = 0, frame = 0
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 294 0000 70B5     		push	{r4, r5, r6, lr}
 295 0002 0C4E     		ldr	r6, .L117
 296 0004 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 297 0006 7BB1     		cbz	r3, .L109
 298 0008 0B4D     		ldr	r5, .L117+4
 299 000a 2B68     		ldr	r3, [r5]
 300 000c 1B68     		ldr	r3, [r3]
 301 000e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 302 0010 53B1     		cbz	r3, .L109
 303 0012 0024     		movs	r4, #0
 304              	.L110:
 305 0014 2046     		mov	r0, r4
 306 0016 FFF7FEFF 		bl	udc_iface_disable
 307 001a 2B68     		ldr	r3, [r5]
 308 001c 1B68     		ldr	r3, [r3]
 309 001e 0134     		adds	r4, r4, #1
 310 0020 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 311 0022 E4B2     		uxtb	r4, r4
 312 0024 A342     		cmp	r3, r4
 313 0026 F5D8     		bhi	.L110
 314              	.L109:
 315 0028 044A     		ldr	r2, .L117+8
 316 002a 0023     		movs	r3, #0
 317 002c 0121     		movs	r1, #1
 318 002e 3370     		strb	r3, [r6]
 319 0030 1180     		strh	r1, [r2]	@ movhi
 320 0032 70BD     		pop	{r4, r5, r6, pc}
 321              	.L118:
 322              		.align	2
 323              	.L117:
 324 0034 00000000 		.word	.LANCHOR2
 325 0038 00000000 		.word	.LANCHOR0
 326 003c 00000000 		.word	.LANCHOR3
 327              		.size	udc_reset, .-udc_reset
 328              		.section	.text.udc_stop,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	udc_stop
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu softvfp
 336              		.type	udc_stop, %function
 337              	udc_stop:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 08B5     		push	{r3, lr}
 341 0002 FFF7FEFF 		bl	udd_disable
 342 0006 BDE80840 		pop	{r3, lr}
ARM GAS  /tmp/cc9bZO73.s 			page 7


 343 000a FFF7FEBF 		b	udc_reset
 344              		.size	udc_stop, .-udc_stop
 345 000e 00BF     		.section	.text.udc_sof_notify,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	udc_sof_notify
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu softvfp
 353              		.type	udc_sof_notify, %function
 354              	udc_sof_notify:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357 0000 38B5     		push	{r3, r4, r5, lr}
 358 0002 0B4B     		ldr	r3, .L134
 359 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 360 0006 93B1     		cbz	r3, .L121
 361 0008 0A4D     		ldr	r5, .L134+4
 362 000a 2B68     		ldr	r3, [r5]
 363 000c 1A68     		ldr	r2, [r3]
 364 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 365 0010 6AB1     		cbz	r2, .L121
 366 0012 0024     		movs	r4, #0
 367              	.L125:
 368 0014 5B68     		ldr	r3, [r3, #4]
 369 0016 53F82430 		ldr	r3, [r3, r4, lsl #2]
 370 001a 1B69     		ldr	r3, [r3, #16]
 371 001c 03B1     		cbz	r3, .L124
 372 001e 9847     		blx	r3
 373              	.L124:
 374 0020 2B68     		ldr	r3, [r5]
 375 0022 1A68     		ldr	r2, [r3]
 376 0024 0134     		adds	r4, r4, #1
 377 0026 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 378 0028 E4B2     		uxtb	r4, r4
 379 002a A242     		cmp	r2, r4
 380 002c F2D8     		bhi	.L125
 381              	.L121:
 382 002e 38BD     		pop	{r3, r4, r5, pc}
 383              	.L135:
 384              		.align	2
 385              	.L134:
 386 0030 00000000 		.word	.LANCHOR2
 387 0034 00000000 		.word	.LANCHOR0
 388              		.size	udc_sof_notify, .-udc_sof_notify
 389              		.section	.text.udc_process_setup,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	udc_process_setup
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu softvfp
 397              		.type	udc_process_setup, %function
 398              	udc_process_setup:
 399              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc9bZO73.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 402 0004 A34C     		ldr	r4, .L245
 403 0006 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 404 0008 0022     		movs	r2, #0
 405 000a A281     		strh	r2, [r4, #12]	@ movhi
 406 000c 2261     		str	r2, [r4, #16]
 407 000e 6261     		str	r2, [r4, #20]
 408 0010 1A06     		lsls	r2, r3, #24
 409 0012 0CD4     		bmi	.L238
 410 0014 13F0600F 		tst	r3, #96
 411 0018 4AD0     		beq	.L239
 412              	.L232:
 413 001a 03F01F03 		and	r3, r3, #31
 414 001e 012B     		cmp	r3, #1
 415 0020 62D0     		beq	.L233
 416              	.L184:
 417 0022 022B     		cmp	r3, #2
 418 0024 1ED0     		beq	.L166
 419              	.L139:
 420 0026 0025     		movs	r5, #0
 421              	.L230:
 422 0028 2846     		mov	r0, r5
 423 002a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 424              	.L238:
 425 002e E588     		ldrh	r5, [r4, #6]
 426 0030 002D     		cmp	r5, #0
 427 0032 F8D0     		beq	.L139
 428 0034 13F06001 		ands	r1, r3, #96
 429 0038 EFD1     		bne	.L232
 430 003a 13F01F03 		ands	r3, r3, #31
 431 003e 40F08180 		bne	.L141
 432 0042 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 433 0044 062B     		cmp	r3, #6
 434 0046 00F03581 		beq	.L142
 435 004a 082B     		cmp	r3, #8
 436 004c 00F01981 		beq	.L143
 437 0050 002B     		cmp	r3, #0
 438 0052 E8D1     		bne	.L139
 439 0054 022D     		cmp	r5, #2
 440 0056 E6D1     		bne	.L139
 441 0058 2946     		mov	r1, r5
 442 005a 8F48     		ldr	r0, .L245+4
 443 005c FFF7FEFF 		bl	udd_set_setup_payload
 444 0060 0125     		movs	r5, #1
 445 0062 E1E7     		b	.L230
 446              	.L166:
 447 0064 8D4E     		ldr	r6, .L245+8
 448 0066 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 449 0068 002B     		cmp	r3, #0
 450 006a DCD0     		beq	.L139
 451 006c 8C4F     		ldr	r7, .L245+12
 452 006e 3B68     		ldr	r3, [r7]
 453 0070 1A68     		ldr	r2, [r3]
 454 0072 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 455 0074 002A     		cmp	r2, #0
 456 0076 D6D0     		beq	.L139
ARM GAS  /tmp/cc9bZO73.s 			page 9


 457 0078 0024     		movs	r4, #0
 458 007a 0EE0     		b	.L187
 459              	.L240:
 460 007c FFF7FEFF 		bl	udc_update_iface_desc.part.0
 461 0080 0028     		cmp	r0, #0
 462 0082 D0D0     		beq	.L139
 463 0084 AB68     		ldr	r3, [r5, #8]
 464 0086 9847     		blx	r3
 465 0088 0134     		adds	r4, r4, #1
 466 008a E4B2     		uxtb	r4, r4
 467 008c 0028     		cmp	r0, #0
 468 008e 57D1     		bne	.L235
 469 0090 3B68     		ldr	r3, [r7]
 470 0092 1A68     		ldr	r2, [r3]
 471 0094 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 472 0096 A242     		cmp	r2, r4
 473 0098 C5D9     		bls	.L139
 474              	.L187:
 475 009a 5B68     		ldr	r3, [r3, #4]
 476 009c 53F82450 		ldr	r5, [r3, r4, lsl #2]
 477 00a0 EB68     		ldr	r3, [r5, #12]
 478 00a2 9847     		blx	r3
 479 00a4 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 480 00a6 0146     		mov	r1, r0
 481 00a8 2046     		mov	r0, r4
 482 00aa 002B     		cmp	r3, #0
 483 00ac E6D1     		bne	.L240
 484 00ae BAE7     		b	.L139
 485              	.L239:
 486 00b0 13F01F03 		ands	r3, r3, #31
 487 00b4 2DD1     		bne	.L167
 488 00b6 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 489 00b8 013A     		subs	r2, r2, #1
 490 00ba 082A     		cmp	r2, #8
 491 00bc B3D8     		bhi	.L139
 492 00be 01A1     		adr	r1, .L169
 493 00c0 51F822F0 		ldr	pc, [r1, r2, lsl #2]
 494              		.p2align 2
 495              	.L169:
 496 00c4 7D010000 		.word	.L168+1
 497 00c8 27000000 		.word	.L139+1
 498 00cc 23000000 		.word	.L184+1
 499 00d0 27000000 		.word	.L139+1
 500 00d4 6F010000 		.word	.L170+1
 501 00d8 27000000 		.word	.L139+1
 502 00dc 27000000 		.word	.L139+1
 503 00e0 27000000 		.word	.L139+1
 504 00e4 99010000 		.word	.L171+1
 505              		.p2align 1
 506              	.L233:
 507 00e8 6C4E     		ldr	r6, .L245+8
 508 00ea 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 509 00ec 002B     		cmp	r3, #0
 510 00ee 9AD0     		beq	.L139
 511 00f0 6B4F     		ldr	r7, .L245+12
 512              	.L162:
 513 00f2 3F68     		ldr	r7, [r7]
ARM GAS  /tmp/cc9bZO73.s 			page 10


 514 00f4 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 515 00f6 3B68     		ldr	r3, [r7]
 516 00f8 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 517 00fa AB42     		cmp	r3, r5
 518 00fc 93D9     		bls	.L139
 519 00fe 0021     		movs	r1, #0
 520 0100 2846     		mov	r0, r5
 521 0102 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 522 0106 0028     		cmp	r0, #0
 523 0108 7DD1     		bne	.L241
 524              	.L234:
 525 010a 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 526 010c 03F01F03 		and	r3, r3, #31
 527 0110 87E7     		b	.L184
 528              	.L167:
 529 0112 012B     		cmp	r3, #1
 530 0114 50D0     		beq	.L242
 531 0116 022B     		cmp	r3, #2
 532 0118 85D1     		bne	.L139
 533 011a 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 534 011c 012B     		cmp	r3, #1
 535 011e 64D0     		beq	.L182
 536 0120 032B     		cmp	r3, #3
 537 0122 9FD1     		bne	.L166
 538 0124 E388     		ldrh	r3, [r4, #6]
 539 0126 002B     		cmp	r3, #0
 540 0128 9CD1     		bne	.L166
 541 012a 6388     		ldrh	r3, [r4, #2]
 542 012c 002B     		cmp	r3, #0
 543 012e 99D1     		bne	.L166
 544 0130 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 545 0132 FFF7FEFF 		bl	udd_ep_abort
 546 0136 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 547 0138 FFF7FEFF 		bl	udd_ep_set_halt
 548 013c 0028     		cmp	r0, #0
 549 013e 39D0     		beq	.L152
 550              	.L235:
 551 0140 0125     		movs	r5, #1
 552 0142 71E7     		b	.L230
 553              	.L141:
 554 0144 012B     		cmp	r3, #1
 555 0146 73D0     		beq	.L243
 556 0148 022B     		cmp	r3, #2
 557 014a 7FF46CAF 		bne	.L139
 558 014e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 559 0150 002B     		cmp	r3, #0
 560 0152 87D1     		bne	.L166
 561 0154 022D     		cmp	r5, #2
 562 0156 85D1     		bne	.L166
 563 0158 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 564 015a FFF7FEFF 		bl	udd_ep_is_halted
 565 015e 514B     		ldr	r3, .L245+16
 566 0160 2946     		mov	r1, r5
 567 0162 1880     		strh	r0, [r3]	@ movhi
 568 0164 1846     		mov	r0, r3
 569 0166 FFF7FEFF 		bl	udd_set_setup_payload
 570 016a 0125     		movs	r5, #1
ARM GAS  /tmp/cc9bZO73.s 			page 11


 571 016c 5CE7     		b	.L230
 572              	.L170:
 573 016e E388     		ldrh	r3, [r4, #6]
 574 0170 002B     		cmp	r3, #0
 575 0172 7FF458AF 		bne	.L139
 576 0176 4C4B     		ldr	r3, .L245+20
 577 0178 2361     		str	r3, [r4, #16]
 578 017a E1E7     		b	.L235
 579              	.L168:
 580 017c E388     		ldrh	r3, [r4, #6]
 581 017e 002B     		cmp	r3, #0
 582 0180 7FF451AF 		bne	.L139
 583 0184 6588     		ldrh	r5, [r4, #2]
 584 0186 012D     		cmp	r5, #1
 585 0188 7FF44DAF 		bne	.L139
 586 018c 424A     		ldr	r2, .L245+4
 587 018e 1388     		ldrh	r3, [r2]
 588 0190 23F00203 		bic	r3, r3, #2
 589 0194 1380     		strh	r3, [r2]	@ movhi
 590 0196 47E7     		b	.L230
 591              	.L171:
 592 0198 E588     		ldrh	r5, [r4, #6]
 593 019a 002D     		cmp	r5, #0
 594 019c 7FF443AF 		bne	.L139
 595 01a0 FFF7FEFF 		bl	udd_getaddress
 596 01a4 30B1     		cbz	r0, .L152
 597 01a6 414E     		ldr	r6, .L245+24
 598 01a8 A278     		ldrb	r2, [r4, #2]	@ zero_extendqisi2
 599 01aa 3368     		ldr	r3, [r6]
 600 01ac 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 601 01ae 9A42     		cmp	r2, r3
 602 01b0 40F3EC80 		ble	.L244
 603              	.L152:
 604 01b4 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 605 01b6 30E7     		b	.L232
 606              	.L242:
 607 01b8 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 608 01ba 0B2B     		cmp	r3, #11
 609 01bc FAD1     		bne	.L152
 610 01be E388     		ldrh	r3, [r4, #6]
 611 01c0 002B     		cmp	r3, #0
 612 01c2 91D1     		bne	.L233
 613 01c4 354B     		ldr	r3, .L245+8
 614 01c6 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 615 01c8 002B     		cmp	r3, #0
 616 01ca 3FF42CAF 		beq	.L139
 617 01ce 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 618 01d0 6688     		ldrh	r6, [r4, #2]
 619 01d2 2846     		mov	r0, r5
 620 01d4 FFF7FEFF 		bl	udc_iface_disable
 621 01d8 0028     		cmp	r0, #0
 622 01da EBD0     		beq	.L152
 623 01dc F1B2     		uxtb	r1, r6
 624 01de 2846     		mov	r0, r5
 625 01e0 FFF7FEFF 		bl	udc_iface_enable
 626 01e4 0028     		cmp	r0, #0
 627 01e6 ABD1     		bne	.L235
ARM GAS  /tmp/cc9bZO73.s 			page 12


 628 01e8 E4E7     		b	.L152
 629              	.L182:
 630 01ea E388     		ldrh	r3, [r4, #6]
 631 01ec 002B     		cmp	r3, #0
 632 01ee 7FF439AF 		bne	.L166
 633 01f2 6388     		ldrh	r3, [r4, #2]
 634 01f4 002B     		cmp	r3, #0
 635 01f6 7FF435AF 		bne	.L166
 636 01fa 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 637 01fc FFF7FEFF 		bl	udd_ep_clear_halt
 638 0200 0028     		cmp	r0, #0
 639 0202 9DD1     		bne	.L235
 640 0204 D6E7     		b	.L152
 641              	.L241:
 642 0206 7B68     		ldr	r3, [r7, #4]
 643 0208 53F82570 		ldr	r7, [r3, r5, lsl #2]
 644 020c FB68     		ldr	r3, [r7, #12]
 645 020e 9847     		blx	r3
 646 0210 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 647 0212 002B     		cmp	r3, #0
 648 0214 3FF407AF 		beq	.L139
 649 0218 0146     		mov	r1, r0
 650 021a 2846     		mov	r0, r5
 651 021c FFF7FEFF 		bl	udc_update_iface_desc.part.0
 652 0220 0028     		cmp	r0, #0
 653 0222 3FF472AF 		beq	.L234
 654 0226 BB68     		ldr	r3, [r7, #8]
 655 0228 9847     		blx	r3
 656 022a 0028     		cmp	r0, #0
 657 022c 88D1     		bne	.L235
 658 022e 6CE7     		b	.L234
 659              	.L243:
 660 0230 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 661 0232 0A2B     		cmp	r3, #10
 662 0234 BED1     		bne	.L152
 663 0236 012D     		cmp	r5, #1
 664 0238 7FF456AF 		bne	.L233
 665 023c 174E     		ldr	r6, .L245+8
 666 023e 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 667 0240 002B     		cmp	r3, #0
 668 0242 3FF4F0AE 		beq	.L139
 669 0246 164F     		ldr	r7, .L245+12
 670 0248 94F80480 		ldrb	r8, [r4, #4]	@ zero_extendqisi2
 671 024c D7F80090 		ldr	r9, [r7]
 672 0250 D9F80030 		ldr	r3, [r9]
 673 0254 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 674 0256 4345     		cmp	r3, r8
 675 0258 7FF64BAF 		bls	.L162
 676 025c 4046     		mov	r0, r8
 677 025e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 678 0262 0546     		mov	r5, r0
 679 0264 0028     		cmp	r0, #0
 680 0266 A5D0     		beq	.L152
 681 0268 D9F80430 		ldr	r3, [r9, #4]
 682 026c 53F82830 		ldr	r3, [r3, r8, lsl #2]
 683 0270 DB68     		ldr	r3, [r3, #12]
 684 0272 9847     		blx	r3
ARM GAS  /tmp/cc9bZO73.s 			page 13


 685 0274 0E4B     		ldr	r3, .L245+28
 686 0276 0121     		movs	r1, #1
 687 0278 1870     		strb	r0, [r3]
 688 027a 1846     		mov	r0, r3
 689 027c FFF7FEFF 		bl	udd_set_setup_payload
 690 0280 D2E6     		b	.L230
 691              	.L143:
 692 0282 012D     		cmp	r5, #1
 693 0284 7FF4CFAE 		bne	.L139
 694 0288 2946     		mov	r1, r5
 695 028a 0448     		ldr	r0, .L245+8
 696 028c FFF7FEFF 		bl	udd_set_setup_payload
 697 0290 CAE6     		b	.L230
 698              	.L246:
 699 0292 00BF     		.align	2
 700              	.L245:
 701 0294 00000000 		.word	udd_g_ctrlreq
 702 0298 00000000 		.word	.LANCHOR3
 703 029c 00000000 		.word	.LANCHOR2
 704 02a0 00000000 		.word	.LANCHOR0
 705 02a4 00000000 		.word	.LANCHOR9
 706 02a8 00000000 		.word	udc_valid_address
 707 02ac 00000000 		.word	udc_config
 708 02b0 00000000 		.word	.LANCHOR8
 709              	.L142:
 710 02b4 6288     		ldrh	r2, [r4, #2]
 711 02b6 130A     		lsrs	r3, r2, #8
 712 02b8 013B     		subs	r3, r3, #1
 713 02ba 0E2B     		cmp	r3, #14
 714 02bc 3FF6B3AE 		bhi	.L139
 715 02c0 01A1     		adr	r1, .L147
 716 02c2 51F823F0 		ldr	pc, [r1, r3, lsl #2]
 717 02c6 00BF     		.p2align 2
 718              	.L147:
 719 02c8 81030000 		.word	.L146+1
 720 02cc 5F030000 		.word	.L148+1
 721 02d0 25030000 		.word	.L149+1
 722 02d4 27000000 		.word	.L139+1
 723 02d8 27000000 		.word	.L139+1
 724 02dc 27000000 		.word	.L139+1
 725 02e0 27000000 		.word	.L139+1
 726 02e4 27000000 		.word	.L139+1
 727 02e8 27000000 		.word	.L139+1
 728 02ec 27000000 		.word	.L139+1
 729 02f0 27000000 		.word	.L139+1
 730 02f4 27000000 		.word	.L139+1
 731 02f8 27000000 		.word	.L139+1
 732 02fc 27000000 		.word	.L139+1
 733 0300 05030000 		.word	.L150+1
 734              		.p2align 1
 735              	.L150:
 736 0304 384B     		ldr	r3, .L247
 737 0306 9868     		ldr	r0, [r3, #8]
 738 0308 0028     		cmp	r0, #0
 739 030a 3FF48CAE 		beq	.L139
 740 030e 4188     		ldrh	r1, [r0, #2]	@ unaligned
 741 0310 FFF7FEFF 		bl	udd_set_setup_payload
ARM GAS  /tmp/cc9bZO73.s 			page 14


 742              	.L151:
 743 0314 E388     		ldrh	r3, [r4, #6]
 744 0316 A289     		ldrh	r2, [r4, #12]
 745 0318 9A42     		cmp	r2, r3
 746 031a 7FF611AF 		bls	.L235
 747 031e A381     		strh	r3, [r4, #12]	@ movhi
 748 0320 0125     		movs	r5, #1
 749 0322 81E6     		b	.L230
 750              	.L149:
 751 0324 D2B2     		uxtb	r2, r2
 752 0326 012A     		cmp	r2, #1
 753 0328 5AD0     		beq	.L153
 754 032a 54D3     		bcc	.L154
 755 032c 022A     		cmp	r2, #2
 756 032e 7FF441AF 		bne	.L152
 757 0332 2E49     		ldr	r1, .L247+4
 758 0334 0422     		movs	r2, #4
 759              	.L155:
 760 0336 2E4E     		ldr	r6, .L247+8
 761 0338 0139     		subs	r1, r1, #1
 762 033a 3046     		mov	r0, r6
 763 033c 0023     		movs	r3, #0
 764              	.L156:
 765 033e 0133     		adds	r3, r3, #1
 766 0340 DBB2     		uxtb	r3, r3
 767 0342 11F8015F 		ldrb	r5, [r1, #1]!	@ zero_extendqisi2
 768 0346 20F8025F 		strh	r5, [r0, #2]!	@ movhi
 769 034a 9A42     		cmp	r2, r3
 770 034c F7D8     		bhi	.L156
 771 034e 5300     		lsls	r3, r2, #1
 772 0350 0233     		adds	r3, r3, #2
 773 0352 1946     		mov	r1, r3
 774 0354 2648     		ldr	r0, .L247+8
 775 0356 3370     		strb	r3, [r6]
 776 0358 FFF7FEFF 		bl	udd_set_setup_payload
 777 035c DAE7     		b	.L151
 778              	.L148:
 779 035e 224B     		ldr	r3, .L247
 780 0360 1968     		ldr	r1, [r3]
 781 0362 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 782 0364 D2B2     		uxtb	r2, r2
 783 0366 9142     		cmp	r1, r2
 784 0368 7FF65DAE 		bls	.L139
 785 036c 5B68     		ldr	r3, [r3, #4]
 786 036e 53F83200 		ldr	r0, [r3, r2, lsl #3]
 787 0372 4188     		ldrh	r1, [r0, #2]	@ unaligned
 788 0374 FFF7FEFF 		bl	udd_set_setup_payload
 789 0378 A368     		ldr	r3, [r4, #8]
 790 037a 0222     		movs	r2, #2
 791 037c 5A70     		strb	r2, [r3, #1]
 792 037e C9E7     		b	.L151
 793              	.L146:
 794 0380 194B     		ldr	r3, .L247
 795 0382 1868     		ldr	r0, [r3]
 796 0384 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 797 0386 FFF7FEFF 		bl	udd_set_setup_payload
 798 038a C3E7     		b	.L151
ARM GAS  /tmp/cc9bZO73.s 			page 15


 799              	.L244:
 800 038c FFF7FEFF 		bl	udc_reset
 801 0390 A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 802 0392 184A     		ldr	r2, .L247+12
 803 0394 1370     		strb	r3, [r2]
 804 0396 002B     		cmp	r3, #0
 805 0398 3FF4D2AE 		beq	.L235
 806 039c 03F10053 		add	r3, r3, #536870912
 807 03a0 013B     		subs	r3, r3, #1
 808 03a2 7268     		ldr	r2, [r6, #4]
 809 03a4 144F     		ldr	r7, .L247+16
 810 03a6 52F83310 		ldr	r1, [r2, r3, lsl #3]
 811 03aa 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 812 03ac 02EBC303 		add	r3, r2, r3, lsl #3
 813 03b0 3B60     		str	r3, [r7]
 814 03b2 0029     		cmp	r1, #0
 815 03b4 3FF4C4AE 		beq	.L235
 816              	.L176:
 817 03b8 2846     		mov	r0, r5
 818 03ba 0021     		movs	r1, #0
 819 03bc FFF7FEFF 		bl	udc_iface_enable
 820 03c0 0135     		adds	r5, r5, #1
 821 03c2 EDB2     		uxtb	r5, r5
 822 03c4 0028     		cmp	r0, #0
 823 03c6 3FF4F5AE 		beq	.L152
 824 03ca 3B68     		ldr	r3, [r7]
 825 03cc 1B68     		ldr	r3, [r3]
 826 03ce 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 827 03d0 AB42     		cmp	r3, r5
 828 03d2 F1D8     		bhi	.L176
 829 03d4 B4E6     		b	.L235
 830              	.L154:
 831 03d6 0421     		movs	r1, #4
 832 03d8 0848     		ldr	r0, .L247+20
 833 03da FFF7FEFF 		bl	udd_set_setup_payload
 834 03de 99E7     		b	.L151
 835              	.L153:
 836 03e0 0622     		movs	r2, #6
 837 03e2 0749     		ldr	r1, .L247+24
 838 03e4 A7E7     		b	.L155
 839              	.L248:
 840 03e6 00BF     		.align	2
 841              	.L247:
 842 03e8 00000000 		.word	udc_config
 843 03ec 00000000 		.word	.LANCHOR4
 844 03f0 00000000 		.word	.LANCHOR7
 845 03f4 00000000 		.word	.LANCHOR2
 846 03f8 00000000 		.word	.LANCHOR0
 847 03fc 00000000 		.word	.LANCHOR6
 848 0400 00000000 		.word	.LANCHOR5
 849              		.size	udc_process_setup, .-udc_process_setup
 850              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 851              		.align	2
 852              		.type	cpu_irq_critical_section_counter, %object
 853              		.size	cpu_irq_critical_section_counter, 4
 854              	cpu_irq_critical_section_counter:
 855 0000 00000000 		.space	4
ARM GAS  /tmp/cc9bZO73.s 			page 16


 856              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 857              		.type	cpu_irq_prev_interrupt_state, %object
 858              		.size	cpu_irq_prev_interrupt_state, 1
 859              	cpu_irq_prev_interrupt_state:
 860 0000 00       		.space	1
 861              		.section	.bss.udc_device_status,"aw",%nobits
 862              		.align	1
 863              		.set	.LANCHOR3,. + 0
 864              		.type	udc_device_status, %object
 865              		.size	udc_device_status, 2
 866              	udc_device_status:
 867 0000 0000     		.space	2
 868              		.section	.bss.udc_ep_status.7688,"aw",%nobits
 869              		.align	1
 870              		.set	.LANCHOR9,. + 0
 871              		.type	udc_ep_status.7688, %object
 872              		.size	udc_ep_status.7688, 2
 873              	udc_ep_status.7688:
 874 0000 0000     		.space	2
 875              		.section	.bss.udc_iface_setting,"aw",%nobits
 876              		.align	2
 877              		.set	.LANCHOR8,. + 0
 878              		.type	udc_iface_setting, %object
 879              		.size	udc_iface_setting, 1
 880              	udc_iface_setting:
 881 0000 00       		.space	1
 882              		.section	.bss.udc_num_configuration,"aw",%nobits
 883              		.align	2
 884              		.set	.LANCHOR2,. + 0
 885              		.type	udc_num_configuration, %object
 886              		.size	udc_num_configuration, 1
 887              	udc_num_configuration:
 888 0000 00       		.space	1
 889              		.section	.bss.udc_ptr_conf,"aw",%nobits
 890              		.align	2
 891              		.set	.LANCHOR0,. + 0
 892              		.type	udc_ptr_conf, %object
 893              		.size	udc_ptr_conf, 4
 894              	udc_ptr_conf:
 895 0000 00000000 		.space	4
 896              		.section	.bss.udc_ptr_iface,"aw",%nobits
 897              		.align	2
 898              		.set	.LANCHOR1,. + 0
 899              		.type	udc_ptr_iface, %object
 900              		.size	udc_ptr_iface, 4
 901              	udc_ptr_iface:
 902 0000 00000000 		.space	4
 903              		.section	.data.udc_string_desc,"aw",%progbits
 904              		.align	2
 905              		.set	.LANCHOR7,. + 0
 906              		.type	udc_string_desc, %object
 907              		.size	udc_string_desc, 14
 908              	udc_string_desc:
 909 0000 00       		.space	1
 910 0001 03       		.byte	3
 911 0002 00000000 		.space	12
 911      00000000 
ARM GAS  /tmp/cc9bZO73.s 			page 17


 911      00000000 
 912              		.section	.data.udc_string_desc_languageid,"aw",%progbits
 913              		.align	2
 914              		.set	.LANCHOR6,. + 0
 915              		.type	udc_string_desc_languageid, %object
 916              		.size	udc_string_desc_languageid, 4
 917              	udc_string_desc_languageid:
 918 0000 04       		.byte	4
 919 0001 03       		.byte	3
 920 0002 0904     		.short	1033
 921              		.section	.data.udc_string_manufacturer_name,"aw",%progbits
 922              		.align	2
 923              		.set	.LANCHOR5,. + 0
 924              		.type	udc_string_manufacturer_name, %object
 925              		.size	udc_string_manufacturer_name, 7
 926              	udc_string_manufacturer_name:
 927 0000 44756574 		.ascii	"Duet3D\000"
 927      334400
 928              		.section	.data.udc_string_product_name,"aw",%progbits
 929              		.align	2
 930              		.set	.LANCHOR4,. + 0
 931              		.type	udc_string_product_name, %object
 932              		.size	udc_string_product_name, 5
 933              	udc_string_product_name:
 934 0000 44756574 		.ascii	"Duet\000"
 934      00
 935              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
