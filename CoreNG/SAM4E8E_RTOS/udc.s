ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 1


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
  14              		.text
  15              		.section	.text.udc_valid_address,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	udc_valid_address, %function
  23              	udc_valid_address:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 024B     		ldr	r3, .L3
  28 0002 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
  29 0004 00F07F00 		and	r0, r0, #127
  30 0008 FFF7FEBF 		b	udd_set_address
  31              	.L4:
  32              		.align	2
  33              	.L3:
  34 000c 00000000 		.word	udd_g_ctrlreq
  35              		.size	udc_valid_address, .-udc_valid_address
  36              		.section	.text.udc_update_iface_desc.part.0,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	udc_update_iface_desc.part.0, %function
  44              	udc_update_iface_desc.part.0:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 144B     		ldr	r3, .L22
  49 0002 1B68     		ldr	r3, [r3]
  50 0004 1B68     		ldr	r3, [r3]
  51 0006 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
  52 0008 8242     		cmp	r2, r0
  53 000a 1ED9     		bls	.L16
  54 000c 70B4     		push	{r4, r5, r6}
  55 000e 124E     		ldr	r6, .L22+4
  56 0010 3360     		str	r3, [r6]
  57 0012 5C88     		ldrh	r4, [r3, #2]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 2


  58 0014 1C44     		add	r4, r4, r3
  59 0016 A342     		cmp	r3, r4
  60 0018 14D2     		bcs	.L6
  61 001a 0025     		movs	r5, #0
  62 001c 05E0     		b	.L10
  63              	.L7:
  64 001e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  65 0020 1344     		add	r3, r3, r2
  66 0022 9C42     		cmp	r4, r3
  67 0024 4FF00105 		mov	r5, #1
  68 0028 0BD9     		bls	.L20
  69              	.L10:
  70 002a 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
  71 002c 042A     		cmp	r2, #4
  72 002e F6D1     		bne	.L7
  73 0030 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
  74 0032 8242     		cmp	r2, r0
  75 0034 F3D1     		bne	.L7
  76 0036 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
  77 0038 8A42     		cmp	r2, r1
  78 003a F0D1     		bne	.L7
  79 003c 3DB9     		cbnz	r5, .L21
  80              	.L8:
  81 003e 0120     		movs	r0, #1
  82 0040 01E0     		b	.L9
  83              	.L20:
  84 0042 3360     		str	r3, [r6]
  85              	.L6:
  86 0044 0020     		movs	r0, #0
  87              	.L9:
  88 0046 70BC     		pop	{r4, r5, r6}
  89 0048 7047     		bx	lr
  90              	.L16:
  91 004a 0020     		movs	r0, #0
  92 004c 7047     		bx	lr
  93              	.L21:
  94 004e 3360     		str	r3, [r6]
  95 0050 F5E7     		b	.L8
  96              	.L23:
  97 0052 00BF     		.align	2
  98              	.L22:
  99 0054 00000000 		.word	.LANCHOR0
 100 0058 00000000 		.word	.LANCHOR1
 101              		.size	udc_update_iface_desc.part.0, .-udc_update_iface_desc.part.0
 102              		.section	.text.udc_iface_disable,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	udc_iface_disable, %function
 110              	udc_iface_disable:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 114 0002 1C4C     		ldr	r4, .L61
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 3


 115 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 116 0006 13B9     		cbnz	r3, .L59
 117              	.L25:
 118 0008 0025     		movs	r5, #0
 119 000a 2846     		mov	r0, r5
 120 000c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 121              	.L59:
 122 000e 0021     		movs	r1, #0
 123 0010 0546     		mov	r5, r0
 124 0012 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 125 0016 0028     		cmp	r0, #0
 126 0018 F6D0     		beq	.L25
 127 001a 174F     		ldr	r7, .L61+4
 128 001c 3B68     		ldr	r3, [r7]
 129 001e 5B68     		ldr	r3, [r3, #4]
 130 0020 53F82560 		ldr	r6, [r3, r5, lsl #2]
 131 0024 F368     		ldr	r3, [r6, #12]
 132 0026 9847     		blx	r3
 133 0028 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 134 002a 002B     		cmp	r3, #0
 135 002c ECD0     		beq	.L25
 136 002e 0146     		mov	r1, r0
 137 0030 2846     		mov	r0, r5
 138 0032 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 139 0036 0546     		mov	r5, r0
 140 0038 0028     		cmp	r0, #0
 141 003a E5D0     		beq	.L25
 142 003c 0F4B     		ldr	r3, .L61+8
 143 003e 1C68     		ldr	r4, [r3]
 144              	.L31:
 145 0040 3B68     		ldr	r3, [r7]
 146 0042 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 147 0044 1A68     		ldr	r2, [r3]
 148 0046 5388     		ldrh	r3, [r2, #2]	@ unaligned
 149 0048 0C44     		add	r4, r4, r1
 150 004a 1A44     		add	r2, r2, r3
 151 004c A242     		cmp	r2, r4
 152 004e 06D8     		bhi	.L29
 153 0050 08E0     		b	.L26
 154              	.L60:
 155 0052 052B     		cmp	r3, #5
 156 0054 0AD0     		beq	.L27
 157 0056 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 158 0058 1C44     		add	r4, r4, r3
 159 005a A242     		cmp	r2, r4
 160 005c 02D9     		bls	.L26
 161              	.L29:
 162 005e 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 163 0060 042B     		cmp	r3, #4
 164 0062 F6D1     		bne	.L60
 165              	.L26:
 166 0064 7368     		ldr	r3, [r6, #4]
 167 0066 9847     		blx	r3
 168 0068 2846     		mov	r0, r5
 169 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 170              	.L27:
 171 006c A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 4


 172 006e FFF7FEFF 		bl	udd_ep_free
 173 0072 E5E7     		b	.L31
 174              	.L62:
 175              		.align	2
 176              	.L61:
 177 0074 00000000 		.word	.LANCHOR2
 178 0078 00000000 		.word	.LANCHOR0
 179 007c 00000000 		.word	.LANCHOR1
 180              		.size	udc_iface_disable, .-udc_iface_disable
 181              		.section	.text.udc_iface_enable,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	udc_iface_enable, %function
 189              	udc_iface_enable:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 174B     		ldr	r3, .L98
 193 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 194 0004 0BB9     		cbnz	r3, .L96
 195 0006 0020     		movs	r0, #0
 196 0008 7047     		bx	lr
 197              	.L96:
 198 000a 70B5     		push	{r4, r5, r6, lr}
 199 000c 0546     		mov	r5, r0
 200 000e FFF7FEFF 		bl	udc_update_iface_desc.part.0
 201 0012 10B3     		cbz	r0, .L83
 202 0014 134B     		ldr	r3, .L98+4
 203 0016 144E     		ldr	r6, .L98+8
 204 0018 1C68     		ldr	r4, [r3]
 205              	.L69:
 206 001a 3168     		ldr	r1, [r6]
 207 001c 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 208 001e 0A68     		ldr	r2, [r1]
 209 0020 5388     		ldrh	r3, [r2, #2]	@ unaligned
 210 0022 0444     		add	r4, r4, r0
 211 0024 1A44     		add	r2, r2, r3
 212 0026 A242     		cmp	r2, r4
 213 0028 06D8     		bhi	.L68
 214 002a 08E0     		b	.L65
 215              	.L97:
 216 002c 052B     		cmp	r3, #5
 217 002e 0DD0     		beq	.L66
 218 0030 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 219 0032 1C44     		add	r4, r4, r3
 220 0034 A242     		cmp	r2, r4
 221 0036 02D9     		bls	.L65
 222              	.L68:
 223 0038 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 224 003a 042B     		cmp	r3, #4
 225 003c F6D1     		bne	.L97
 226              	.L65:
 227 003e 4B68     		ldr	r3, [r1, #4]
 228 0040 53F82530 		ldr	r3, [r3, r5, lsl #2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 5


 229 0044 BDE87040 		pop	{r4, r5, r6, lr}
 230 0048 1B68     		ldr	r3, [r3]
 231 004a 1847     		bx	r3
 232              	.L66:
 233 004c A288     		ldrh	r2, [r4, #4]	@ unaligned
 234 004e E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 235 0050 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 236 0052 FFF7FEFF 		bl	udd_ep_alloc
 237 0056 0028     		cmp	r0, #0
 238 0058 DFD1     		bne	.L69
 239              	.L83:
 240 005a 0020     		movs	r0, #0
 241 005c 70BD     		pop	{r4, r5, r6, pc}
 242              	.L99:
 243 005e 00BF     		.align	2
 244              	.L98:
 245 0060 00000000 		.word	.LANCHOR2
 246 0064 00000000 		.word	.LANCHOR1
 247 0068 00000000 		.word	.LANCHOR0
 248              		.size	udc_iface_enable, .-udc_iface_enable
 249              		.section	.text.udc_get_interface_desc,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	udc_get_interface_desc
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv4-sp-d16
 257              		.type	udc_get_interface_desc, %function
 258              	udc_get_interface_desc:
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261              		@ link register save eliminated.
 262 0000 014B     		ldr	r3, .L101
 263 0002 1868     		ldr	r0, [r3]
 264 0004 7047     		bx	lr
 265              	.L102:
 266 0006 00BF     		.align	2
 267              	.L101:
 268 0008 00000000 		.word	.LANCHOR1
 269              		.size	udc_get_interface_desc, .-udc_get_interface_desc
 270              		.section	.text.udc_start,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	udc_start
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	udc_start, %function
 279              	udc_start:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 FFF7FEBF 		b	udd_enable
 284              		.size	udc_start, .-udc_start
 285              		.section	.text.udc_reset,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	udc_reset
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	udc_reset, %function
 294              	udc_reset:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 70B5     		push	{r4, r5, r6, lr}
 298 0002 0C4E     		ldr	r6, .L115
 299 0004 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 300 0006 7BB1     		cbz	r3, .L105
 301 0008 0B4D     		ldr	r5, .L115+4
 302 000a 2B68     		ldr	r3, [r5]
 303 000c 1B68     		ldr	r3, [r3]
 304 000e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 305 0010 53B1     		cbz	r3, .L105
 306 0012 0024     		movs	r4, #0
 307              	.L106:
 308 0014 2046     		mov	r0, r4
 309 0016 FFF7FEFF 		bl	udc_iface_disable
 310 001a 2B68     		ldr	r3, [r5]
 311 001c 1B68     		ldr	r3, [r3]
 312 001e 0134     		adds	r4, r4, #1
 313 0020 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 314 0022 E4B2     		uxtb	r4, r4
 315 0024 A342     		cmp	r3, r4
 316 0026 F5D8     		bhi	.L106
 317              	.L105:
 318 0028 044A     		ldr	r2, .L115+8
 319 002a 0121     		movs	r1, #1
 320 002c 0023     		movs	r3, #0
 321 002e 1180     		strh	r1, [r2]	@ movhi
 322 0030 3370     		strb	r3, [r6]
 323 0032 70BD     		pop	{r4, r5, r6, pc}
 324              	.L116:
 325              		.align	2
 326              	.L115:
 327 0034 00000000 		.word	.LANCHOR2
 328 0038 00000000 		.word	.LANCHOR0
 329 003c 00000000 		.word	.LANCHOR3
 330              		.size	udc_reset, .-udc_reset
 331              		.section	.text.udc_stop,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.global	udc_stop
 335              		.syntax unified
 336              		.thumb
 337              		.thumb_func
 338              		.fpu fpv4-sp-d16
 339              		.type	udc_stop, %function
 340              	udc_stop:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 7


 343 0000 08B5     		push	{r3, lr}
 344 0002 FFF7FEFF 		bl	udd_disable
 345 0006 BDE80840 		pop	{r3, lr}
 346 000a FFF7FEBF 		b	udc_reset
 347              		.size	udc_stop, .-udc_stop
 348 000e 00BF     		.section	.text.udc_sof_notify,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	udc_sof_notify
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu fpv4-sp-d16
 356              		.type	udc_sof_notify, %function
 357              	udc_sof_notify:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 38B5     		push	{r3, r4, r5, lr}
 361 0002 0B4B     		ldr	r3, .L134
 362 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 363 0006 93B1     		cbz	r3, .L119
 364 0008 0A4D     		ldr	r5, .L134+4
 365 000a 2B68     		ldr	r3, [r5]
 366 000c 1A68     		ldr	r2, [r3]
 367 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 368 0010 6AB1     		cbz	r2, .L119
 369 0012 0024     		movs	r4, #0
 370              	.L122:
 371 0014 5B68     		ldr	r3, [r3, #4]
 372 0016 53F82430 		ldr	r3, [r3, r4, lsl #2]
 373 001a 1B69     		ldr	r3, [r3, #16]
 374 001c 03B1     		cbz	r3, .L121
 375 001e 9847     		blx	r3
 376              	.L121:
 377 0020 2B68     		ldr	r3, [r5]
 378 0022 1A68     		ldr	r2, [r3]
 379 0024 0134     		adds	r4, r4, #1
 380 0026 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 381 0028 E4B2     		uxtb	r4, r4
 382 002a A242     		cmp	r2, r4
 383 002c F2D8     		bhi	.L122
 384              	.L119:
 385 002e 38BD     		pop	{r3, r4, r5, pc}
 386              	.L135:
 387              		.align	2
 388              	.L134:
 389 0030 00000000 		.word	.LANCHOR2
 390 0034 00000000 		.word	.LANCHOR0
 391              		.size	udc_sof_notify, .-udc_sof_notify
 392              		.section	.text.udc_process_setup,"ax",%progbits
 393              		.align	1
 394              		.p2align 2,,3
 395              		.global	udc_process_setup
 396              		.syntax unified
 397              		.thumb
 398              		.thumb_func
 399              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 8


 400              		.type	udc_process_setup, %function
 401              	udc_process_setup:
 402              		@ args = 0, pretend = 0, frame = 0
 403              		@ frame_needed = 0, uses_anonymous_args = 0
 404 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 405 0004 A84C     		ldr	r4, .L243
 406 0006 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 407 0008 0022     		movs	r2, #0
 408 000a A281     		strh	r2, [r4, #12]	@ movhi
 409 000c C4E90422 		strd	r2, r2, [r4, #16]
 410 0010 1A06     		lsls	r2, r3, #24
 411 0012 0CD4     		bmi	.L237
 412 0014 13F0600F 		tst	r3, #96
 413 0018 03F01F02 		and	r2, r3, #31
 414 001c 23D0     		beq	.L238
 415              	.L163:
 416 001e 012A     		cmp	r2, #1
 417 0020 3CD0     		beq	.L234
 418              	.L182:
 419 0022 022A     		cmp	r2, #2
 420 0024 64D0     		beq	.L165
 421              	.L138:
 422 0026 0025     		movs	r5, #0
 423              	.L230:
 424 0028 2846     		mov	r0, r5
 425 002a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 426              	.L237:
 427 002e E588     		ldrh	r5, [r4, #6]
 428 0030 002D     		cmp	r5, #0
 429 0032 F8D0     		beq	.L138
 430 0034 03F01F02 		and	r2, r3, #31
 431 0038 13F06003 		ands	r3, r3, #96
 432 003c EFD1     		bne	.L163
 433 003e 002A     		cmp	r2, #0
 434 0040 40F09780 		bne	.L140
 435 0044 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 436 0046 062B     		cmp	r3, #6
 437 0048 00F03E81 		beq	.L141
 438 004c 082B     		cmp	r3, #8
 439 004e 00F02381 		beq	.L142
 440 0052 002B     		cmp	r3, #0
 441 0054 E7D1     		bne	.L138
 442 0056 022D     		cmp	r5, #2
 443 0058 E5D1     		bne	.L138
 444 005a 2946     		mov	r1, r5
 445 005c 9348     		ldr	r0, .L243+4
 446 005e FFF7FEFF 		bl	udd_set_setup_payload
 447 0062 0125     		movs	r5, #1
 448 0064 E0E7     		b	.L230
 449              	.L238:
 450 0066 002A     		cmp	r2, #0
 451 0068 6AD1     		bne	.L166
 452 006a 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 453 006c 013B     		subs	r3, r3, #1
 454 006e 082B     		cmp	r3, #8
 455 0070 D9D8     		bhi	.L138
 456 0072 01A2     		adr	r2, .L168
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 9


 457 0074 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 458              		.p2align 2
 459              	.L168:
 460 0078 AD010000 		.word	.L167+1
 461 007c 27000000 		.word	.L138+1
 462 0080 27000000 		.word	.L138+1
 463 0084 27000000 		.word	.L138+1
 464 0088 9D010000 		.word	.L169+1
 465 008c 27000000 		.word	.L138+1
 466 0090 27000000 		.word	.L138+1
 467 0094 27000000 		.word	.L138+1
 468 0098 C9010000 		.word	.L170+1
 469              		.p2align 1
 470              	.L234:
 471 009c 844E     		ldr	r6, .L243+8
 472 009e 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 473              	.L160:
 474 00a0 002A     		cmp	r2, #0
 475 00a2 C0D0     		beq	.L138
 476 00a4 834F     		ldr	r7, .L243+12
 477              	.L161:
 478 00a6 3D68     		ldr	r5, [r7]
 479 00a8 2779     		ldrb	r7, [r4, #4]	@ zero_extendqisi2
 480 00aa 2B68     		ldr	r3, [r5]
 481 00ac 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 482 00ae BB42     		cmp	r3, r7
 483 00b0 B9D9     		bls	.L138
 484 00b2 0021     		movs	r1, #0
 485 00b4 3846     		mov	r0, r7
 486 00b6 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 487 00ba 0028     		cmp	r0, #0
 488 00bc 00F06E81 		beq	.L235
 489 00c0 6B68     		ldr	r3, [r5, #4]
 490 00c2 53F82780 		ldr	r8, [r3, r7, lsl #2]
 491 00c6 D8F80C30 		ldr	r3, [r8, #12]
 492 00ca 9847     		blx	r3
 493 00cc 3578     		ldrb	r5, [r6]	@ zero_extendqisi2
 494 00ce 002D     		cmp	r5, #0
 495 00d0 AAD0     		beq	.L230
 496 00d2 0146     		mov	r1, r0
 497 00d4 3846     		mov	r0, r7
 498 00d6 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 499 00da 0028     		cmp	r0, #0
 500 00dc 00F05E81 		beq	.L235
 501 00e0 D8F80830 		ldr	r3, [r8, #8]
 502 00e4 9847     		blx	r3
 503 00e6 0028     		cmp	r0, #0
 504 00e8 00F05881 		beq	.L235
 505              	.L236:
 506 00ec 0125     		movs	r5, #1
 507 00ee 9BE7     		b	.L230
 508              	.L165:
 509 00f0 6F4E     		ldr	r6, .L243+8
 510 00f2 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 511 00f4 002B     		cmp	r3, #0
 512 00f6 96D0     		beq	.L138
 513 00f8 6E4F     		ldr	r7, .L243+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 10


 514 00fa 3B68     		ldr	r3, [r7]
 515 00fc 1A68     		ldr	r2, [r3]
 516 00fe 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 517 0100 002A     		cmp	r2, #0
 518 0102 90D0     		beq	.L138
 519 0104 0024     		movs	r4, #0
 520 0106 04E0     		b	.L185
 521              	.L239:
 522 0108 3B68     		ldr	r3, [r7]
 523 010a 1A68     		ldr	r2, [r3]
 524 010c 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 525 010e A242     		cmp	r2, r4
 526 0110 89D9     		bls	.L138
 527              	.L185:
 528 0112 5B68     		ldr	r3, [r3, #4]
 529 0114 53F82450 		ldr	r5, [r3, r4, lsl #2]
 530 0118 EB68     		ldr	r3, [r5, #12]
 531 011a 9847     		blx	r3
 532 011c 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 533 011e 0146     		mov	r1, r0
 534 0120 2046     		mov	r0, r4
 535 0122 002B     		cmp	r3, #0
 536 0124 3FF47FAF 		beq	.L138
 537 0128 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 538 012c 0028     		cmp	r0, #0
 539 012e 3FF47AAF 		beq	.L138
 540 0132 AB68     		ldr	r3, [r5, #8]
 541 0134 9847     		blx	r3
 542 0136 0134     		adds	r4, r4, #1
 543 0138 E4B2     		uxtb	r4, r4
 544 013a 0028     		cmp	r0, #0
 545 013c E4D0     		beq	.L239
 546 013e D5E7     		b	.L236
 547              	.L166:
 548 0140 012A     		cmp	r2, #1
 549 0142 53D0     		beq	.L240
 550 0144 022A     		cmp	r2, #2
 551 0146 7FF46EAF 		bne	.L138
 552 014a 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 553 014c 012B     		cmp	r3, #1
 554 014e 69D0     		beq	.L180
 555 0150 032B     		cmp	r3, #3
 556 0152 CDD1     		bne	.L165
 557 0154 E388     		ldrh	r3, [r4, #6]
 558 0156 002B     		cmp	r3, #0
 559 0158 CAD1     		bne	.L165
 560 015a 6388     		ldrh	r3, [r4, #2]
 561 015c 002B     		cmp	r3, #0
 562 015e C7D1     		bne	.L165
 563 0160 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 564 0162 FFF7FEFF 		bl	udd_ep_abort
 565 0166 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 566 0168 FFF7FEFF 		bl	udd_ep_set_halt
 567 016c 0028     		cmp	r0, #0
 568 016e BDD1     		bne	.L236
 569 0170 38E0     		b	.L233
 570              	.L140:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 11


 571 0172 012A     		cmp	r2, #1
 572 0174 65D0     		beq	.L241
 573 0176 022A     		cmp	r2, #2
 574 0178 7FF455AF 		bne	.L138
 575 017c 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 576 017e 002B     		cmp	r3, #0
 577 0180 B6D1     		bne	.L165
 578 0182 022D     		cmp	r5, #2
 579 0184 B4D1     		bne	.L165
 580 0186 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 581 0188 FFF7FEFF 		bl	udd_ep_is_halted
 582 018c 4A4B     		ldr	r3, .L243+16
 583 018e 2946     		mov	r1, r5
 584 0190 1880     		strh	r0, [r3]	@ movhi
 585 0192 1846     		mov	r0, r3
 586 0194 FFF7FEFF 		bl	udd_set_setup_payload
 587 0198 0125     		movs	r5, #1
 588 019a 45E7     		b	.L230
 589              	.L169:
 590 019c E388     		ldrh	r3, [r4, #6]
 591 019e 002B     		cmp	r3, #0
 592 01a0 7FF441AF 		bne	.L138
 593 01a4 454B     		ldr	r3, .L243+20
 594 01a6 2361     		str	r3, [r4, #16]
 595 01a8 0125     		movs	r5, #1
 596 01aa 3DE7     		b	.L230
 597              	.L167:
 598 01ac E388     		ldrh	r3, [r4, #6]
 599 01ae 002B     		cmp	r3, #0
 600 01b0 7FF439AF 		bne	.L138
 601 01b4 6588     		ldrh	r5, [r4, #2]
 602 01b6 012D     		cmp	r5, #1
 603 01b8 7FF435AF 		bne	.L138
 604 01bc 3B4A     		ldr	r2, .L243+4
 605 01be 1388     		ldrh	r3, [r2]
 606 01c0 23F00203 		bic	r3, r3, #2
 607 01c4 1380     		strh	r3, [r2]	@ movhi
 608 01c6 2FE7     		b	.L230
 609              	.L170:
 610 01c8 E588     		ldrh	r5, [r4, #6]
 611 01ca 002D     		cmp	r5, #0
 612 01cc 7FF42BAF 		bne	.L138
 613 01d0 FFF7FEFF 		bl	udd_getaddress
 614 01d4 30B1     		cbz	r0, .L233
 615 01d6 3A4E     		ldr	r6, .L243+24
 616 01d8 A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 617 01da 3268     		ldr	r2, [r6]
 618 01dc 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
 619 01de 9A42     		cmp	r2, r3
 620 01e0 80F0E080 		bcs	.L242
 621              	.L233:
 622 01e4 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 623 01e6 02F01F02 		and	r2, r2, #31
 624 01ea 18E7     		b	.L163
 625              	.L240:
 626 01ec 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 627 01ee 0B2B     		cmp	r3, #11
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 12


 628 01f0 7FF454AF 		bne	.L234
 629 01f4 2E4E     		ldr	r6, .L243+8
 630 01f6 E388     		ldrh	r3, [r4, #6]
 631 01f8 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 632 01fa 002B     		cmp	r3, #0
 633 01fc 7FF450AF 		bne	.L160
 634 0200 002A     		cmp	r2, #0
 635 0202 3FF410AF 		beq	.L138
 636 0206 2579     		ldrb	r5, [r4, #4]	@ zero_extendqisi2
 637 0208 6688     		ldrh	r6, [r4, #2]
 638 020a 2846     		mov	r0, r5
 639 020c FFF7FEFF 		bl	udc_iface_disable
 640 0210 0028     		cmp	r0, #0
 641 0212 E7D0     		beq	.L233
 642 0214 F1B2     		uxtb	r1, r6
 643 0216 2846     		mov	r0, r5
 644 0218 FFF7FEFF 		bl	udc_iface_enable
 645 021c 0028     		cmp	r0, #0
 646 021e 7FF465AF 		bne	.L236
 647 0222 DFE7     		b	.L233
 648              	.L180:
 649 0224 E388     		ldrh	r3, [r4, #6]
 650 0226 002B     		cmp	r3, #0
 651 0228 7FF462AF 		bne	.L165
 652 022c 6388     		ldrh	r3, [r4, #2]
 653 022e 002B     		cmp	r3, #0
 654 0230 7FF45EAF 		bne	.L165
 655 0234 2079     		ldrb	r0, [r4, #4]	@ zero_extendqisi2
 656 0236 FFF7FEFF 		bl	udd_ep_clear_halt
 657 023a 0028     		cmp	r0, #0
 658 023c 7FF456AF 		bne	.L236
 659 0240 D0E7     		b	.L233
 660              	.L241:
 661 0242 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 662 0244 0A2A     		cmp	r2, #10
 663 0246 7FF429AF 		bne	.L234
 664 024a 194E     		ldr	r6, .L243+8
 665 024c 012D     		cmp	r5, #1
 666 024e 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 667 0250 7FF426AF 		bne	.L160
 668 0254 002A     		cmp	r2, #0
 669 0256 3FF4E6AE 		beq	.L138
 670 025a 164F     		ldr	r7, .L243+12
 671 025c 94F80480 		ldrb	r8, [r4, #4]	@ zero_extendqisi2
 672 0260 D7F80090 		ldr	r9, [r7]
 673 0264 D9F80020 		ldr	r2, [r9]
 674 0268 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 675 026a 4245     		cmp	r2, r8
 676 026c 7FF61BAF 		bls	.L161
 677 0270 1946     		mov	r1, r3
 678 0272 4046     		mov	r0, r8
 679 0274 FFF7FEFF 		bl	udc_update_iface_desc.part.0
 680 0278 0546     		mov	r5, r0
 681 027a 0028     		cmp	r0, #0
 682 027c B2D0     		beq	.L233
 683 027e D9F80430 		ldr	r3, [r9, #4]
 684 0282 53F82830 		ldr	r3, [r3, r8, lsl #2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 13


 685 0286 DB68     		ldr	r3, [r3, #12]
 686 0288 9847     		blx	r3
 687 028a 0E4B     		ldr	r3, .L243+28
 688 028c 0121     		movs	r1, #1
 689 028e 1870     		strb	r0, [r3]
 690 0290 1846     		mov	r0, r3
 691 0292 FFF7FEFF 		bl	udd_set_setup_payload
 692 0296 C7E6     		b	.L230
 693              	.L142:
 694 0298 012D     		cmp	r5, #1
 695 029a 7FF4C4AE 		bne	.L138
 696 029e 2946     		mov	r1, r5
 697 02a0 0348     		ldr	r0, .L243+8
 698 02a2 FFF7FEFF 		bl	udd_set_setup_payload
 699 02a6 BFE6     		b	.L230
 700              	.L244:
 701              		.align	2
 702              	.L243:
 703 02a8 00000000 		.word	udd_g_ctrlreq
 704 02ac 00000000 		.word	.LANCHOR3
 705 02b0 00000000 		.word	.LANCHOR2
 706 02b4 00000000 		.word	.LANCHOR0
 707 02b8 00000000 		.word	.LANCHOR9
 708 02bc 00000000 		.word	udc_valid_address
 709 02c0 00000000 		.word	udc_config
 710 02c4 00000000 		.word	.LANCHOR8
 711              	.L141:
 712 02c8 6288     		ldrh	r2, [r4, #2]
 713 02ca 130A     		lsrs	r3, r2, #8
 714 02cc 013B     		subs	r3, r3, #1
 715 02ce 0E2B     		cmp	r3, #14
 716 02d0 3FF6A9AE 		bhi	.L138
 717 02d4 01A1     		adr	r1, .L146
 718 02d6 51F823F0 		ldr	pc, [r1, r3, lsl #2]
 719 02da 00BF     		.p2align 2
 720              	.L146:
 721 02dc 91030000 		.word	.L145+1
 722 02e0 6F030000 		.word	.L147+1
 723 02e4 35030000 		.word	.L148+1
 724 02e8 27000000 		.word	.L138+1
 725 02ec 27000000 		.word	.L138+1
 726 02f0 27000000 		.word	.L138+1
 727 02f4 27000000 		.word	.L138+1
 728 02f8 27000000 		.word	.L138+1
 729 02fc 27000000 		.word	.L138+1
 730 0300 27000000 		.word	.L138+1
 731 0304 27000000 		.word	.L138+1
 732 0308 27000000 		.word	.L138+1
 733 030c 27000000 		.word	.L138+1
 734 0310 27000000 		.word	.L138+1
 735 0314 19030000 		.word	.L149+1
 736              		.p2align 1
 737              	.L149:
 738 0318 384B     		ldr	r3, .L245
 739 031a 9868     		ldr	r0, [r3, #8]
 740 031c 0028     		cmp	r0, #0
 741 031e 3FF482AE 		beq	.L138
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 14


 742 0322 4188     		ldrh	r1, [r0, #2]	@ unaligned
 743 0324 FFF7FEFF 		bl	udd_set_setup_payload
 744              	.L150:
 745 0328 E388     		ldrh	r3, [r4, #6]
 746 032a A289     		ldrh	r2, [r4, #12]
 747 032c 9A42     		cmp	r2, r3
 748 032e 88BF     		it	hi
 749 0330 A381     		strhhi	r3, [r4, #12]	@ movhi
 750 0332 DBE6     		b	.L236
 751              	.L148:
 752 0334 D2B2     		uxtb	r2, r2
 753 0336 012A     		cmp	r2, #1
 754 0338 5DD0     		beq	.L151
 755 033a 57D3     		bcc	.L152
 756 033c 022A     		cmp	r2, #2
 757 033e 7FF472AE 		bne	.L138
 758 0342 2F4B     		ldr	r3, .L245+4
 759 0344 0422     		movs	r2, #4
 760              	.L153:
 761 0346 2F4E     		ldr	r6, .L245+8
 762 0348 511E     		subs	r1, r2, #1
 763 034a 53FA81F1 		uxtab	r1, r3, r1
 764 034e 3046     		mov	r0, r6
 765 0350 013B     		subs	r3, r3, #1
 766              	.L154:
 767 0352 13F8015F 		ldrb	r5, [r3, #1]!	@ zero_extendqisi2
 768 0356 20F8025F 		strh	r5, [r0, #2]!	@ movhi
 769 035a 8B42     		cmp	r3, r1
 770 035c F9D1     		bne	.L154
 771 035e 5300     		lsls	r3, r2, #1
 772 0360 0233     		adds	r3, r3, #2
 773 0362 1946     		mov	r1, r3
 774 0364 2748     		ldr	r0, .L245+8
 775 0366 3370     		strb	r3, [r6]
 776 0368 FFF7FEFF 		bl	udd_set_setup_payload
 777 036c DCE7     		b	.L150
 778              	.L147:
 779 036e 234B     		ldr	r3, .L245
 780 0370 1968     		ldr	r1, [r3]
 781 0372 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 782 0374 D2B2     		uxtb	r2, r2
 783 0376 9142     		cmp	r1, r2
 784 0378 7FF655AE 		bls	.L138
 785 037c 5B68     		ldr	r3, [r3, #4]
 786 037e 53F83200 		ldr	r0, [r3, r2, lsl #3]
 787 0382 4188     		ldrh	r1, [r0, #2]	@ unaligned
 788 0384 FFF7FEFF 		bl	udd_set_setup_payload
 789 0388 A368     		ldr	r3, [r4, #8]
 790 038a 0222     		movs	r2, #2
 791 038c 5A70     		strb	r2, [r3, #1]
 792 038e CBE7     		b	.L150
 793              	.L145:
 794 0390 1A4B     		ldr	r3, .L245
 795 0392 1868     		ldr	r0, [r3]
 796 0394 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 797 0396 FFF7FEFF 		bl	udd_set_setup_payload
 798 039a C5E7     		b	.L150
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 15


 799              	.L235:
 800 039c 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 801 039e 02F01F02 		and	r2, r2, #31
 802 03a2 3EE6     		b	.L182
 803              	.L242:
 804 03a4 FFF7FEFF 		bl	udc_reset
 805 03a8 A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 806 03aa 174A     		ldr	r2, .L245+12
 807 03ac 1370     		strb	r3, [r2]
 808 03ae 002B     		cmp	r3, #0
 809 03b0 3FF49CAE 		beq	.L236
 810 03b4 03F10053 		add	r3, r3, #536870912
 811 03b8 013B     		subs	r3, r3, #1
 812 03ba 7268     		ldr	r2, [r6, #4]
 813 03bc 134F     		ldr	r7, .L245+16
 814 03be 52F83310 		ldr	r1, [r2, r3, lsl #3]
 815 03c2 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 816 03c4 02EBC303 		add	r3, r2, r3, lsl #3
 817 03c8 3B60     		str	r3, [r7]
 818 03ca 31B9     		cbnz	r1, .L175
 819 03cc 8EE6     		b	.L236
 820              	.L174:
 821 03ce 3B68     		ldr	r3, [r7]
 822 03d0 1B68     		ldr	r3, [r3]
 823 03d2 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 824 03d4 AB42     		cmp	r3, r5
 825 03d6 7FF689AE 		bls	.L236
 826              	.L175:
 827 03da 2846     		mov	r0, r5
 828 03dc 0021     		movs	r1, #0
 829 03de FFF7FEFF 		bl	udc_iface_enable
 830 03e2 0135     		adds	r5, r5, #1
 831 03e4 EDB2     		uxtb	r5, r5
 832 03e6 0028     		cmp	r0, #0
 833 03e8 F1D1     		bne	.L174
 834 03ea FBE6     		b	.L233
 835              	.L152:
 836 03ec 0421     		movs	r1, #4
 837 03ee 0848     		ldr	r0, .L245+20
 838 03f0 FFF7FEFF 		bl	udd_set_setup_payload
 839 03f4 98E7     		b	.L150
 840              	.L151:
 841 03f6 0622     		movs	r2, #6
 842 03f8 064B     		ldr	r3, .L245+24
 843 03fa A4E7     		b	.L153
 844              	.L246:
 845              		.align	2
 846              	.L245:
 847 03fc 00000000 		.word	udc_config
 848 0400 00000000 		.word	.LANCHOR5
 849 0404 00000000 		.word	.LANCHOR7
 850 0408 00000000 		.word	.LANCHOR2
 851 040c 00000000 		.word	.LANCHOR0
 852 0410 00000000 		.word	.LANCHOR6
 853 0414 00000000 		.word	.LANCHOR4
 854              		.size	udc_process_setup, .-udc_process_setup
 855              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 16


 856              		.align	2
 857              		.type	cpu_irq_critical_section_counter, %object
 858              		.size	cpu_irq_critical_section_counter, 4
 859              	cpu_irq_critical_section_counter:
 860 0000 00000000 		.space	4
 861              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 862              		.type	cpu_irq_prev_interrupt_state, %object
 863              		.size	cpu_irq_prev_interrupt_state, 1
 864              	cpu_irq_prev_interrupt_state:
 865 0000 00       		.space	1
 866              		.section	.bss.udc_device_status,"aw",%nobits
 867              		.align	1
 868              		.set	.LANCHOR3,. + 0
 869              		.type	udc_device_status, %object
 870              		.size	udc_device_status, 2
 871              	udc_device_status:
 872 0000 0000     		.space	2
 873              		.section	.bss.udc_ep_status.9238,"aw",%nobits
 874              		.align	1
 875              		.set	.LANCHOR9,. + 0
 876              		.type	udc_ep_status.9238, %object
 877              		.size	udc_ep_status.9238, 2
 878              	udc_ep_status.9238:
 879 0000 0000     		.space	2
 880              		.section	.bss.udc_iface_setting,"aw",%nobits
 881              		.align	2
 882              		.set	.LANCHOR8,. + 0
 883              		.type	udc_iface_setting, %object
 884              		.size	udc_iface_setting, 1
 885              	udc_iface_setting:
 886 0000 00       		.space	1
 887              		.section	.bss.udc_num_configuration,"aw",%nobits
 888              		.align	2
 889              		.set	.LANCHOR2,. + 0
 890              		.type	udc_num_configuration, %object
 891              		.size	udc_num_configuration, 1
 892              	udc_num_configuration:
 893 0000 00       		.space	1
 894              		.section	.bss.udc_ptr_conf,"aw",%nobits
 895              		.align	2
 896              		.set	.LANCHOR0,. + 0
 897              		.type	udc_ptr_conf, %object
 898              		.size	udc_ptr_conf, 4
 899              	udc_ptr_conf:
 900 0000 00000000 		.space	4
 901              		.section	.bss.udc_ptr_iface,"aw",%nobits
 902              		.align	2
 903              		.set	.LANCHOR1,. + 0
 904              		.type	udc_ptr_iface, %object
 905              		.size	udc_ptr_iface, 4
 906              	udc_ptr_iface:
 907 0000 00000000 		.space	4
 908              		.section	.data.udc_string_desc,"aw",%progbits
 909              		.align	2
 910              		.set	.LANCHOR7,. + 0
 911              		.type	udc_string_desc, %object
 912              		.size	udc_string_desc, 14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHGy606.s 			page 17


 913              	udc_string_desc:
 914 0000 00       		.space	1
 915 0001 03       		.byte	3
 916 0002 00000000 		.space	12
 916      00000000 
 916      00000000 
 917              		.section	.rodata.udc_string_desc_languageid,"a",%progbits
 918              		.align	2
 919              		.set	.LANCHOR6,. + 0
 920              		.type	udc_string_desc_languageid, %object
 921              		.size	udc_string_desc_languageid, 4
 922              	udc_string_desc_languageid:
 923 0000 04       		.byte	4
 924 0001 03       		.byte	3
 925 0002 0904     		.short	1033
 926              		.section	.rodata.udc_string_manufacturer_name,"a",%progbits
 927              		.align	2
 928              		.set	.LANCHOR4,. + 0
 929              		.type	udc_string_manufacturer_name, %object
 930              		.size	udc_string_manufacturer_name, 7
 931              	udc_string_manufacturer_name:
 932 0000 44756574 		.ascii	"Duet3D\000"
 932      334400
 933              		.section	.rodata.udc_string_product_name,"a",%progbits
 934              		.align	2
 935              		.set	.LANCHOR5,. + 0
 936              		.type	udc_string_product_name, %object
 937              		.size	udc_string_product_name, 5
 938              	udc_string_product_name:
 939 0000 44756574 		.ascii	"Duet\000"
 939      00
 940              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
