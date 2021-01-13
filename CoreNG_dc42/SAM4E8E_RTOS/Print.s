ARM GAS  /tmp/cckExcFI.s 			page 1


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
  13              		.file	"Print.cpp"
  14              		.section	.text._ZN5Print5writeEPKhj,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN5Print5writeEPKhj
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN5Print5writeEPKhj, %function
  23              	_ZN5Print5writeEPKhj:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 72B1     		cbz	r2, .L4
  28 0004 0646     		mov	r6, r0
  29 0006 0C46     		mov	r4, r1
  30 0008 8F18     		adds	r7, r1, r2
  31 000a 0025     		movs	r5, #0
  32              	.L3:
  33 000c 3368     		ldr	r3, [r6]
  34 000e 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
  35 0012 9B68     		ldr	r3, [r3, #8]
  36 0014 3046     		mov	r0, r6
  37 0016 9847     		blx	r3
  38 0018 A742     		cmp	r7, r4
  39 001a 0544     		add	r5, r5, r0
  40 001c F6D1     		bne	.L3
  41              	.L1:
  42 001e 2846     		mov	r0, r5
  43 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  44              	.L4:
  45 0022 1546     		mov	r5, r2
  46 0024 FBE7     		b	.L1
  47              		.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
  48 0026 00BF     		.section	.text._ZN5Print5printEPKc,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	_ZN5Print5printEPKc
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	_ZN5Print5printEPKc, %function
  57              	_ZN5Print5printEPKc:
ARM GAS  /tmp/cckExcFI.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60 0000 69B1     		cbz	r1, .L9
  61 0002 70B5     		push	{r4, r5, r6, lr}
  62 0004 0546     		mov	r5, r0
  63 0006 0846     		mov	r0, r1
  64 0008 0C46     		mov	r4, r1
  65 000a FFF7FEFF 		bl	strlen
  66 000e 2B68     		ldr	r3, [r5]
  67 0010 0246     		mov	r2, r0
  68 0012 2146     		mov	r1, r4
  69 0014 2846     		mov	r0, r5
  70 0016 DB68     		ldr	r3, [r3, #12]
  71 0018 BDE87040 		pop	{r4, r5, r6, lr}
  72 001c 1847     		bx	r3
  73              	.L9:
  74 001e 0846     		mov	r0, r1
  75 0020 7047     		bx	lr
  76              		.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
  77 0022 00BF     		.section	.text._ZN5Print5printEc,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	_ZN5Print5printEc
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZN5Print5printEc, %function
  86              	_ZN5Print5printEc:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 0368     		ldr	r3, [r0]
  91 0002 9B68     		ldr	r3, [r3, #8]
  92 0004 1847     		bx	r3
  93              		.size	_ZN5Print5printEc, .-_ZN5Print5printEc
  94 0006 00BF     		.section	.text._ZN5Print5printERK9Printable,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN5Print5printERK9Printable
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN5Print5printERK9Printable, %function
 103              	_ZN5Print5printERK9Printable:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 0B46     		mov	r3, r1
 108 0002 0146     		mov	r1, r0
 109 0004 1A68     		ldr	r2, [r3]
 110 0006 1846     		mov	r0, r3
 111 0008 9368     		ldr	r3, [r2, #8]
 112 000a 1847     		bx	r3
 113              		.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
 114              		.section	.text._ZN5Print7printlnEv,"ax",%progbits
ARM GAS  /tmp/cckExcFI.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZN5Print7printlnEv
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZN5Print7printlnEv, %function
 123              	_ZN5Print7printlnEv:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 38B5     		push	{r3, r4, r5, lr}
 127 0002 0368     		ldr	r3, [r0]
 128 0004 0446     		mov	r4, r0
 129 0006 0D21     		movs	r1, #13
 130 0008 9B68     		ldr	r3, [r3, #8]
 131 000a 9847     		blx	r3
 132 000c 2368     		ldr	r3, [r4]
 133 000e 0546     		mov	r5, r0
 134 0010 9B68     		ldr	r3, [r3, #8]
 135 0012 2046     		mov	r0, r4
 136 0014 0A21     		movs	r1, #10
 137 0016 9847     		blx	r3
 138 0018 2844     		add	r0, r0, r5
 139 001a 38BD     		pop	{r3, r4, r5, pc}
 140              		.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
 141              		.section	.text._ZN5Print7printlnEPKc,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	_ZN5Print7printlnEPKc
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	_ZN5Print7printlnEPKc, %function
 150              	_ZN5Print7printlnEPKc:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153 0000 70B5     		push	{r4, r5, r6, lr}
 154 0002 0446     		mov	r4, r0
 155 0004 0D46     		mov	r5, r1
 156 0006 49B1     		cbz	r1, .L18
 157 0008 0846     		mov	r0, r1
 158 000a FFF7FEFF 		bl	strlen
 159 000e 2368     		ldr	r3, [r4]
 160 0010 0246     		mov	r2, r0
 161 0012 2946     		mov	r1, r5
 162 0014 DB68     		ldr	r3, [r3, #12]
 163 0016 2046     		mov	r0, r4
 164 0018 9847     		blx	r3
 165 001a 0546     		mov	r5, r0
 166              	.L18:
 167 001c 2368     		ldr	r3, [r4]
 168 001e 0D21     		movs	r1, #13
 169 0020 9B68     		ldr	r3, [r3, #8]
 170 0022 2046     		mov	r0, r4
 171 0024 9847     		blx	r3
ARM GAS  /tmp/cckExcFI.s 			page 4


 172 0026 2368     		ldr	r3, [r4]
 173 0028 0646     		mov	r6, r0
 174 002a 9B68     		ldr	r3, [r3, #8]
 175 002c 2046     		mov	r0, r4
 176 002e 0A21     		movs	r1, #10
 177 0030 9847     		blx	r3
 178 0032 3544     		add	r5, r5, r6
 179 0034 2844     		add	r0, r0, r5
 180 0036 70BD     		pop	{r4, r5, r6, pc}
 181              		.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
 182              		.section	.text._ZN5Print7printlnEc,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	_ZN5Print7printlnEc
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZN5Print7printlnEc, %function
 191              	_ZN5Print7printlnEc:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 0368     		ldr	r3, [r0]
 195 0002 70B5     		push	{r4, r5, r6, lr}
 196 0004 9B68     		ldr	r3, [r3, #8]
 197 0006 0446     		mov	r4, r0
 198 0008 9847     		blx	r3
 199 000a 2368     		ldr	r3, [r4]
 200 000c 0646     		mov	r6, r0
 201 000e 9B68     		ldr	r3, [r3, #8]
 202 0010 2046     		mov	r0, r4
 203 0012 0D21     		movs	r1, #13
 204 0014 9847     		blx	r3
 205 0016 2368     		ldr	r3, [r4]
 206 0018 0546     		mov	r5, r0
 207 001a 9B68     		ldr	r3, [r3, #8]
 208 001c 2046     		mov	r0, r4
 209 001e 0A21     		movs	r1, #10
 210 0020 9847     		blx	r3
 211 0022 3544     		add	r5, r5, r6
 212 0024 2844     		add	r0, r0, r5
 213 0026 70BD     		pop	{r4, r5, r6, pc}
 214              		.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
 215              		.section	.text._ZN5Print7printlnERK9Printable,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.global	_ZN5Print7printlnERK9Printable
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu fpv4-sp-d16
 223              		.type	_ZN5Print7printlnERK9Printable, %function
 224              	_ZN5Print7printlnERK9Printable:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 0B68     		ldr	r3, [r1]
 228 0002 70B5     		push	{r4, r5, r6, lr}
ARM GAS  /tmp/cckExcFI.s 			page 5


 229 0004 0446     		mov	r4, r0
 230 0006 9B68     		ldr	r3, [r3, #8]
 231 0008 0846     		mov	r0, r1
 232 000a 2146     		mov	r1, r4
 233 000c 9847     		blx	r3
 234 000e 2368     		ldr	r3, [r4]
 235 0010 0646     		mov	r6, r0
 236 0012 9B68     		ldr	r3, [r3, #8]
 237 0014 2046     		mov	r0, r4
 238 0016 0D21     		movs	r1, #13
 239 0018 9847     		blx	r3
 240 001a 2368     		ldr	r3, [r4]
 241 001c 0546     		mov	r5, r0
 242 001e 9B68     		ldr	r3, [r3, #8]
 243 0020 2046     		mov	r0, r4
 244 0022 0A21     		movs	r1, #10
 245 0024 9847     		blx	r3
 246 0026 3544     		add	r5, r5, r6
 247 0028 2844     		add	r0, r0, r5
 248 002a 70BD     		pop	{r4, r5, r6, pc}
 249              		.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
 250              		.section	.text._ZN5Print11printNumberEmh,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	_ZN5Print11printNumberEmh
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	_ZN5Print11printNumberEmh, %function
 259              	_ZN5Print11printNumberEmh:
 260              		@ args = 0, pretend = 0, frame = 40
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 263 0002 012A     		cmp	r2, #1
 264 0004 8BB0     		sub	sp, sp, #44
 265 0006 0B46     		mov	r3, r1
 266 0008 4FF00004 		mov	r4, #0
 267 000c D8BF     		it	le
 268 000e 0A21     		movle	r1, #10
 269 0010 0646     		mov	r6, r0
 270 0012 8DF82440 		strb	r4, [sp, #36]
 271 0016 CCBF     		ite	gt
 272 0018 1146     		movgt	r1, r2
 273 001a 0A46     		movle	r2, r1
 274 001c 0DF12300 		add	r0, sp, #35
 275              	.L29:
 276 0020 B3FBF1F4 		udiv	r4, r3, r1
 277 0024 04FB1233 		mls	r3, r4, r2, r3
 278 0028 03F0FF03 		and	r3, r3, #255
 279 002c 092B     		cmp	r3, #9
 280 002e 03F13005 		add	r5, r3, #48
 281 0032 8ABF     		itet	hi
 282 0034 3733     		addhi	r3, r3, #55
 283 0036 EBB2     		uxtbls	r3, r5
 284 0038 DBB2     		uxtbhi	r3, r3
 285 003a 0746     		mov	r7, r0
ARM GAS  /tmp/cckExcFI.s 			page 6


 286 003c 00F80139 		strb	r3, [r0], #-1
 287 0040 2346     		mov	r3, r4
 288 0042 002C     		cmp	r4, #0
 289 0044 ECD1     		bne	.L29
 290 0046 3846     		mov	r0, r7
 291 0048 FFF7FEFF 		bl	strlen
 292 004c 3368     		ldr	r3, [r6]
 293 004e 0246     		mov	r2, r0
 294 0050 3946     		mov	r1, r7
 295 0052 DB68     		ldr	r3, [r3, #12]
 296 0054 3046     		mov	r0, r6
 297 0056 9847     		blx	r3
 298 0058 0BB0     		add	sp, sp, #44
 299              		@ sp needed
 300 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 301              		.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
 302              		.section	.text._ZN5Print5printEli,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	_ZN5Print5printEli
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 310              		.type	_ZN5Print5printEli, %function
 311              	_ZN5Print5printEli:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 315 0004 0646     		mov	r6, r0
 316 0006 0D46     		mov	r5, r1
 317 0008 B2B1     		cbz	r2, .L42
 318 000a 0A2A     		cmp	r2, #10
 319 000c 1446     		mov	r4, r2
 320 000e 04D0     		beq	.L43
 321 0010 D2B2     		uxtb	r2, r2
 322              	.L41:
 323 0012 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 324 0016 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 325              	.L43:
 326 001a 0029     		cmp	r1, #0
 327 001c F9DA     		bge	.L41
 328 001e 0368     		ldr	r3, [r0]
 329 0020 2D21     		movs	r1, #45
 330 0022 9B68     		ldr	r3, [r3, #8]
 331 0024 9847     		blx	r3
 332 0026 2246     		mov	r2, r4
 333 0028 0746     		mov	r7, r0
 334 002a 6942     		negs	r1, r5
 335 002c 3046     		mov	r0, r6
 336 002e FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 337 0032 3844     		add	r0, r0, r7
 338 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 339              	.L42:
 340 0038 0368     		ldr	r3, [r0]
 341 003a C9B2     		uxtb	r1, r1
 342 003c 9B68     		ldr	r3, [r3, #8]
ARM GAS  /tmp/cckExcFI.s 			page 7


 343 003e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 344 0042 1847     		bx	r3
 345              		.size	_ZN5Print5printEli, .-_ZN5Print5printEli
 346              		.section	.text._ZN5Print5printEii,"ax",%progbits
 347              		.align	1
 348              		.p2align 2,,3
 349              		.global	_ZN5Print5printEii
 350              		.syntax unified
 351              		.thumb
 352              		.thumb_func
 353              		.fpu fpv4-sp-d16
 354              		.type	_ZN5Print5printEii, %function
 355              	_ZN5Print5printEii:
 356              		@ args = 0, pretend = 0, frame = 0
 357              		@ frame_needed = 0, uses_anonymous_args = 0
 358              		@ link register save eliminated.
 359 0000 FFF7FEBF 		b	_ZN5Print5printEli
 360              		.size	_ZN5Print5printEii, .-_ZN5Print5printEii
 361              		.section	.text._ZN5Print7printlnEii,"ax",%progbits
 362              		.align	1
 363              		.p2align 2,,3
 364              		.global	_ZN5Print7printlnEii
 365              		.syntax unified
 366              		.thumb
 367              		.thumb_func
 368              		.fpu fpv4-sp-d16
 369              		.type	_ZN5Print7printlnEii, %function
 370              	_ZN5Print7printlnEii:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373 0000 70B5     		push	{r4, r5, r6, lr}
 374 0002 0446     		mov	r4, r0
 375 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 376 0008 2368     		ldr	r3, [r4]
 377 000a 0646     		mov	r6, r0
 378 000c 9B68     		ldr	r3, [r3, #8]
 379 000e 2046     		mov	r0, r4
 380 0010 0D21     		movs	r1, #13
 381 0012 9847     		blx	r3
 382 0014 2368     		ldr	r3, [r4]
 383 0016 0546     		mov	r5, r0
 384 0018 9B68     		ldr	r3, [r3, #8]
 385 001a 2046     		mov	r0, r4
 386 001c 0A21     		movs	r1, #10
 387 001e 9847     		blx	r3
 388 0020 3544     		add	r5, r5, r6
 389 0022 2844     		add	r0, r0, r5
 390 0024 70BD     		pop	{r4, r5, r6, pc}
 391              		.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
 392 0026 00BF     		.section	.text._ZN5Print7printlnEli,"ax",%progbits
 393              		.align	1
 394              		.p2align 2,,3
 395              		.global	_ZN5Print7printlnEli
 396              		.syntax unified
 397              		.thumb
 398              		.thumb_func
 399              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cckExcFI.s 			page 8


 400              		.type	_ZN5Print7printlnEli, %function
 401              	_ZN5Print7printlnEli:
 402              		@ args = 0, pretend = 0, frame = 0
 403              		@ frame_needed = 0, uses_anonymous_args = 0
 404 0000 70B5     		push	{r4, r5, r6, lr}
 405 0002 0446     		mov	r4, r0
 406 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 407 0008 2368     		ldr	r3, [r4]
 408 000a 0546     		mov	r5, r0
 409 000c 9B68     		ldr	r3, [r3, #8]
 410 000e 2046     		mov	r0, r4
 411 0010 0D21     		movs	r1, #13
 412 0012 9847     		blx	r3
 413 0014 2368     		ldr	r3, [r4]
 414 0016 0646     		mov	r6, r0
 415 0018 9B68     		ldr	r3, [r3, #8]
 416 001a 2046     		mov	r0, r4
 417 001c 0A21     		movs	r1, #10
 418 001e 9847     		blx	r3
 419 0020 3544     		add	r5, r5, r6
 420 0022 2844     		add	r0, r0, r5
 421 0024 70BD     		pop	{r4, r5, r6, pc}
 422              		.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
 423 0026 00BF     		.section	.text._ZN5Print5printEmi,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	_ZN5Print5printEmi
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	_ZN5Print5printEmi, %function
 432              	_ZN5Print5printEmi:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436 0000 12B1     		cbz	r2, .L54
 437 0002 D2B2     		uxtb	r2, r2
 438 0004 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 439              	.L54:
 440 0008 0268     		ldr	r2, [r0]
 441 000a 10B4     		push	{r4}
 442 000c C9B2     		uxtb	r1, r1
 443 000e 9368     		ldr	r3, [r2, #8]
 444 0010 5DF8044B 		ldr	r4, [sp], #4
 445 0014 1847     		bx	r3
 446              		.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
 447 0016 00BF     		.section	.text._ZN5Print5printEhi,"ax",%progbits
 448              		.align	1
 449              		.p2align 2,,3
 450              		.global	_ZN5Print5printEhi
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu fpv4-sp-d16
 455              		.type	_ZN5Print5printEhi, %function
 456              	_ZN5Print5printEhi:
ARM GAS  /tmp/cckExcFI.s 			page 9


 457              		@ args = 0, pretend = 0, frame = 0
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459              		@ link register save eliminated.
 460 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 461              		.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
 462              		.section	.text._ZN5Print7printlnEhi,"ax",%progbits
 463              		.align	1
 464              		.p2align 2,,3
 465              		.global	_ZN5Print7printlnEhi
 466              		.syntax unified
 467              		.thumb
 468              		.thumb_func
 469              		.fpu fpv4-sp-d16
 470              		.type	_ZN5Print7printlnEhi, %function
 471              	_ZN5Print7printlnEhi:
 472              		@ args = 0, pretend = 0, frame = 0
 473              		@ frame_needed = 0, uses_anonymous_args = 0
 474 0000 70B5     		push	{r4, r5, r6, lr}
 475 0002 0446     		mov	r4, r0
 476 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 477 0008 2368     		ldr	r3, [r4]
 478 000a 0646     		mov	r6, r0
 479 000c 9B68     		ldr	r3, [r3, #8]
 480 000e 2046     		mov	r0, r4
 481 0010 0D21     		movs	r1, #13
 482 0012 9847     		blx	r3
 483 0014 2368     		ldr	r3, [r4]
 484 0016 0546     		mov	r5, r0
 485 0018 9B68     		ldr	r3, [r3, #8]
 486 001a 2046     		mov	r0, r4
 487 001c 0A21     		movs	r1, #10
 488 001e 9847     		blx	r3
 489 0020 3544     		add	r5, r5, r6
 490 0022 2844     		add	r0, r0, r5
 491 0024 70BD     		pop	{r4, r5, r6, pc}
 492              		.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
 493 0026 00BF     		.section	.text._ZN5Print5printEji,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	_ZN5Print5printEji
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_ZN5Print5printEji, %function
 502              	_ZN5Print5printEji:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505              		@ link register save eliminated.
 506 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 507              		.size	_ZN5Print5printEji, .-_ZN5Print5printEji
 508              		.section	.text._ZN5Print7printlnEji,"ax",%progbits
 509              		.align	1
 510              		.p2align 2,,3
 511              		.global	_ZN5Print7printlnEji
 512              		.syntax unified
 513              		.thumb
ARM GAS  /tmp/cckExcFI.s 			page 10


 514              		.thumb_func
 515              		.fpu fpv4-sp-d16
 516              		.type	_ZN5Print7printlnEji, %function
 517              	_ZN5Print7printlnEji:
 518              		@ args = 0, pretend = 0, frame = 0
 519              		@ frame_needed = 0, uses_anonymous_args = 0
 520 0000 70B5     		push	{r4, r5, r6, lr}
 521 0002 0446     		mov	r4, r0
 522 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 523 0008 2368     		ldr	r3, [r4]
 524 000a 0646     		mov	r6, r0
 525 000c 9B68     		ldr	r3, [r3, #8]
 526 000e 2046     		mov	r0, r4
 527 0010 0D21     		movs	r1, #13
 528 0012 9847     		blx	r3
 529 0014 2368     		ldr	r3, [r4]
 530 0016 0546     		mov	r5, r0
 531 0018 9B68     		ldr	r3, [r3, #8]
 532 001a 2046     		mov	r0, r4
 533 001c 0A21     		movs	r1, #10
 534 001e 9847     		blx	r3
 535 0020 3544     		add	r5, r5, r6
 536 0022 2844     		add	r0, r0, r5
 537 0024 70BD     		pop	{r4, r5, r6, pc}
 538              		.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
 539 0026 00BF     		.section	.text._ZN5Print7printlnEmi,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	_ZN5Print7printlnEmi
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu fpv4-sp-d16
 547              		.type	_ZN5Print7printlnEmi, %function
 548              	_ZN5Print7printlnEmi:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551 0000 70B5     		push	{r4, r5, r6, lr}
 552 0002 0446     		mov	r4, r0
 553 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 554 0008 2368     		ldr	r3, [r4]
 555 000a 0546     		mov	r5, r0
 556 000c 9B68     		ldr	r3, [r3, #8]
 557 000e 2046     		mov	r0, r4
 558 0010 0D21     		movs	r1, #13
 559 0012 9847     		blx	r3
 560 0014 2368     		ldr	r3, [r4]
 561 0016 0646     		mov	r6, r0
 562 0018 9B68     		ldr	r3, [r3, #8]
 563 001a 2046     		mov	r0, r4
 564 001c 0A21     		movs	r1, #10
 565 001e 9847     		blx	r3
 566 0020 3544     		add	r5, r5, r6
 567 0022 2844     		add	r0, r0, r5
 568 0024 70BD     		pop	{r4, r5, r6, pc}
 569              		.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
 570              		.global	__aeabi_dcmpun
ARM GAS  /tmp/cckExcFI.s 			page 11


 571              		.global	__aeabi_dcmpgt
 572              		.global	__aeabi_dcmplt
 573              		.global	__aeabi_ddiv
 574              		.global	__aeabi_dmul
 575              		.global	__aeabi_d2iz
 576              		.global	__aeabi_i2d
 577              		.global	__aeabi_dsub
 578              		.global	__aeabi_dcmple
 579              		.global	__aeabi_dadd
 580              		.global	__aeabi_d2uiz
 581              		.global	__aeabi_ui2d
 582 0026 00BF     		.section	.text._ZN5Print10printFloatEdh,"ax",%progbits
 583              		.align	1
 584              		.p2align 2,,3
 585              		.global	_ZN5Print10printFloatEdh
 586              		.syntax unified
 587              		.thumb
 588              		.thumb_func
 589              		.fpu fpv4-sp-d16
 590              		.type	_ZN5Print10printFloatEdh, %function
 591              	_ZN5Print10printFloatEdh:
 592              		@ args = 0, pretend = 0, frame = 0
 593              		@ frame_needed = 0, uses_anonymous_args = 0
 594 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 595 0004 57EC106B 		vmov	r6, r7, d0
 596 0008 81B0     		sub	sp, sp, #4
 597 000a 8246     		mov	r10, r0
 598 000c 0C46     		mov	r4, r1
 599 000e 10EE102A 		vmov	r2, s0	@ int
 600 0012 3B46     		mov	r3, r7
 601 0014 10EE100A 		vmov	r0, s0	@ int
 602 0018 3946     		mov	r1, r7
 603 001a FFF7FEFF 		bl	__aeabi_dcmpun
 604 001e 0028     		cmp	r0, #0
 605 0020 40F09A80 		bne	.L96
 606 0024 27F00049 		bic	r9, r7, #-2147483648
 607 0028 3046     		mov	r0, r6
 608 002a 4946     		mov	r1, r9
 609 002c 4FF0FF32 		mov	r2, #-1
 610 0030 5A4B     		ldr	r3, .L99
 611 0032 FFF7FEFF 		bl	__aeabi_dcmpun
 612 0036 48B9     		cbnz	r0, .L75
 613 0038 3046     		mov	r0, r6
 614 003a 4946     		mov	r1, r9
 615 003c 4FF0FF32 		mov	r2, #-1
 616 0040 564B     		ldr	r3, .L99
 617 0042 FFF7FEFF 		bl	__aeabi_dcmple
 618 0046 0028     		cmp	r0, #0
 619 0048 00F08A80 		beq	.L97
 620              	.L75:
 621 004c 4FF06042 		mov	r2, #-536870912
 622 0050 534B     		ldr	r3, .L99+4
 623 0052 3046     		mov	r0, r6
 624 0054 3946     		mov	r1, r7
 625 0056 FFF7FEFF 		bl	__aeabi_dcmpgt
 626 005a 0028     		cmp	r0, #0
 627 005c 72D1     		bne	.L92
ARM GAS  /tmp/cckExcFI.s 			page 12


 628 005e 4FF06042 		mov	r2, #-536870912
 629 0062 504B     		ldr	r3, .L99+8
 630 0064 3046     		mov	r0, r6
 631 0066 3946     		mov	r1, r7
 632 0068 FFF7FEFF 		bl	__aeabi_dcmplt
 633 006c 0028     		cmp	r0, #0
 634 006e 69D1     		bne	.L92
 635 0070 0022     		movs	r2, #0
 636 0072 0023     		movs	r3, #0
 637 0074 3046     		mov	r0, r6
 638 0076 3946     		mov	r1, r7
 639 0078 FFF7FEFF 		bl	__aeabi_dcmplt
 640 007c 0028     		cmp	r0, #0
 641 007e 73D1     		bne	.L98
 642 0080 0546     		mov	r5, r0
 643              	.L70:
 644 0082 002C     		cmp	r4, #0
 645 0084 7BD0     		beq	.L78
 646 0086 484B     		ldr	r3, .L99+12
 647 0088 DFF83091 		ldr	r9, .L99+32
 648 008c 0022     		movs	r2, #0
 649 008e 4FF0000B 		mov	fp, #0
 650 0092 4FF00008 		mov	r8, #0
 651              	.L73:
 652 0096 1046     		mov	r0, r2
 653 0098 1946     		mov	r1, r3
 654 009a 4246     		mov	r2, r8
 655 009c 4B46     		mov	r3, r9
 656 009e FFF7FEFF 		bl	__aeabi_ddiv
 657 00a2 0BF1010B 		add	fp, fp, #1
 658 00a6 5FFA8BFB 		uxtb	fp, fp
 659 00aa 5C45     		cmp	r4, fp
 660 00ac 0246     		mov	r2, r0
 661 00ae 0B46     		mov	r3, r1
 662 00b0 F1DC     		bgt	.L73
 663 00b2 3246     		mov	r2, r6
 664 00b4 3B46     		mov	r3, r7
 665 00b6 FFF7FEFF 		bl	__aeabi_dadd
 666 00ba 0F46     		mov	r7, r1
 667 00bc 0646     		mov	r6, r0
 668 00be FFF7FEFF 		bl	__aeabi_d2uiz
 669 00c2 8046     		mov	r8, r0
 670 00c4 FFF7FEFF 		bl	__aeabi_ui2d
 671 00c8 0B46     		mov	r3, r1
 672 00ca 0246     		mov	r2, r0
 673 00cc 3946     		mov	r1, r7
 674 00ce 3046     		mov	r0, r6
 675 00d0 FFF7FEFF 		bl	__aeabi_dsub
 676 00d4 0A22     		movs	r2, #10
 677 00d6 0646     		mov	r6, r0
 678 00d8 0F46     		mov	r7, r1
 679 00da 5046     		mov	r0, r10
 680 00dc 4146     		mov	r1, r8
 681 00de FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 682 00e2 DAF80030 		ldr	r3, [r10]
 683 00e6 3149     		ldr	r1, .L99+16
 684 00e8 DB68     		ldr	r3, [r3, #12]
ARM GAS  /tmp/cckExcFI.s 			page 13


 685 00ea DFF8D090 		ldr	r9, .L99+32
 686 00ee 0544     		add	r5, r5, r0
 687 00f0 0122     		movs	r2, #1
 688 00f2 5046     		mov	r0, r10
 689 00f4 9847     		blx	r3
 690 00f6 4FF00008 		mov	r8, #0
 691 00fa 0544     		add	r5, r5, r0
 692              	.L74:
 693 00fc 4B46     		mov	r3, r9
 694 00fe 4246     		mov	r2, r8
 695 0100 3046     		mov	r0, r6
 696 0102 3946     		mov	r1, r7
 697 0104 FFF7FEFF 		bl	__aeabi_dmul
 698 0108 0F46     		mov	r7, r1
 699 010a 0646     		mov	r6, r0
 700 010c FFF7FEFF 		bl	__aeabi_d2iz
 701 0110 0A22     		movs	r2, #10
 702 0112 0146     		mov	r1, r0
 703 0114 8346     		mov	fp, r0
 704 0116 5046     		mov	r0, r10
 705 0118 FFF7FEFF 		bl	_ZN5Print5printEli
 706 011c 0544     		add	r5, r5, r0
 707 011e 5846     		mov	r0, fp
 708 0120 FFF7FEFF 		bl	__aeabi_i2d
 709 0124 0246     		mov	r2, r0
 710 0126 0B46     		mov	r3, r1
 711 0128 3046     		mov	r0, r6
 712 012a 3946     		mov	r1, r7
 713 012c FFF7FEFF 		bl	__aeabi_dsub
 714 0130 013C     		subs	r4, r4, #1
 715 0132 14F0FF04 		ands	r4, r4, #255
 716 0136 0646     		mov	r6, r0
 717 0138 0F46     		mov	r7, r1
 718 013a DFD1     		bne	.L74
 719              	.L63:
 720 013c 2846     		mov	r0, r5
 721 013e 01B0     		add	sp, sp, #4
 722              		@ sp needed
 723 0140 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 724              	.L92:
 725 0144 DAF80030 		ldr	r3, [r10]
 726 0148 1949     		ldr	r1, .L99+20
 727              	.L91:
 728 014a DB68     		ldr	r3, [r3, #12]
 729 014c 5046     		mov	r0, r10
 730 014e 0322     		movs	r2, #3
 731 0150 01B0     		add	sp, sp, #4
 732              		@ sp needed
 733 0152 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 734 0156 1847     		bx	r3
 735              	.L96:
 736 0158 DAF80030 		ldr	r3, [r10]
 737 015c 1549     		ldr	r1, .L99+24
 738 015e F4E7     		b	.L91
 739              	.L97:
 740 0160 DAF80030 		ldr	r3, [r10]
 741 0164 1449     		ldr	r1, .L99+28
ARM GAS  /tmp/cckExcFI.s 			page 14


 742 0166 F0E7     		b	.L91
 743              	.L98:
 744 0168 DAF80030 		ldr	r3, [r10]
 745 016c 2D21     		movs	r1, #45
 746 016e 9B68     		ldr	r3, [r3, #8]
 747 0170 5046     		mov	r0, r10
 748 0172 9847     		blx	r3
 749 0174 07F10043 		add	r3, r7, #-2147483648
 750 0178 0546     		mov	r5, r0
 751 017a 1F46     		mov	r7, r3
 752 017c 81E7     		b	.L70
 753              	.L78:
 754 017e 0022     		movs	r2, #0
 755 0180 094B     		ldr	r3, .L99+12
 756 0182 3046     		mov	r0, r6
 757 0184 3946     		mov	r1, r7
 758 0186 FFF7FEFF 		bl	__aeabi_dadd
 759 018a FFF7FEFF 		bl	__aeabi_d2uiz
 760 018e 0A22     		movs	r2, #10
 761 0190 0146     		mov	r1, r0
 762 0192 5046     		mov	r0, r10
 763 0194 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 764 0198 0544     		add	r5, r5, r0
 765 019a CFE7     		b	.L63
 766              	.L100:
 767              		.align	2
 768              	.L99:
 769 019c FFFFEF7F 		.word	2146435071
 770 01a0 FFFFEF41 		.word	1106247679
 771 01a4 FFFFEFC1 		.word	-1041235969
 772 01a8 0000E03F 		.word	1071644672
 773 01ac 0C000000 		.word	.LC3
 774 01b0 04000000 		.word	.LC1
 775 01b4 08000000 		.word	.LC2
 776 01b8 00000000 		.word	.LC0
 777 01bc 00002440 		.word	1076101120
 778              		.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
 779              		.section	.text._ZN5Print5printEdi,"ax",%progbits
 780              		.align	1
 781              		.p2align 2,,3
 782              		.global	_ZN5Print5printEdi
 783              		.syntax unified
 784              		.thumb
 785              		.thumb_func
 786              		.fpu fpv4-sp-d16
 787              		.type	_ZN5Print5printEdi, %function
 788              	_ZN5Print5printEdi:
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791              		@ link register save eliminated.
 792 0000 C9B2     		uxtb	r1, r1
 793 0002 FFF7FEBF 		b	_ZN5Print10printFloatEdh
 794              		.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
 795 0006 00BF     		.section	.text._ZN5Print7printlnEdi,"ax",%progbits
 796              		.align	1
 797              		.p2align 2,,3
 798              		.global	_ZN5Print7printlnEdi
ARM GAS  /tmp/cckExcFI.s 			page 15


 799              		.syntax unified
 800              		.thumb
 801              		.thumb_func
 802              		.fpu fpv4-sp-d16
 803              		.type	_ZN5Print7printlnEdi, %function
 804              	_ZN5Print7printlnEdi:
 805              		@ args = 0, pretend = 0, frame = 0
 806              		@ frame_needed = 0, uses_anonymous_args = 0
 807 0000 70B5     		push	{r4, r5, r6, lr}
 808 0002 C9B2     		uxtb	r1, r1
 809 0004 0446     		mov	r4, r0
 810 0006 FFF7FEFF 		bl	_ZN5Print10printFloatEdh
 811 000a 2368     		ldr	r3, [r4]
 812 000c 0646     		mov	r6, r0
 813 000e 9B68     		ldr	r3, [r3, #8]
 814 0010 2046     		mov	r0, r4
 815 0012 0D21     		movs	r1, #13
 816 0014 9847     		blx	r3
 817 0016 2368     		ldr	r3, [r4]
 818 0018 0546     		mov	r5, r0
 819 001a 9B68     		ldr	r3, [r3, #8]
 820 001c 2046     		mov	r0, r4
 821 001e 0A21     		movs	r1, #10
 822 0020 9847     		blx	r3
 823 0022 3544     		add	r5, r5, r6
 824 0024 2844     		add	r0, r0, r5
 825 0026 70BD     		pop	{r4, r5, r6, pc}
 826              		.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
 827              		.global	_ZTV5Print
 828              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 829              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 830              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 831              	_ZL28cpu_irq_prev_interrupt_state:
 832 0000 00       		.space	1
 833              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 834              		.align	2
 835              		.type	_ZL32cpu_irq_critical_section_counter, %object
 836              		.size	_ZL32cpu_irq_critical_section_counter, 4
 837              	_ZL32cpu_irq_critical_section_counter:
 838 0000 00000000 		.space	4
 839              		.section	.rodata._ZN5Print10printFloatEdh.str1.4,"aMS",%progbits,1
 840              		.align	2
 841              	.LC0:
 842 0000 696E6600 		.ascii	"inf\000"
 843              	.LC1:
 844 0004 6F766600 		.ascii	"ovf\000"
 845              	.LC2:
 846 0008 6E616E00 		.ascii	"nan\000"
 847              	.LC3:
 848 000c 2E00     		.ascii	".\000"
 849              		.section	.rodata._ZTV5Print,"a",%progbits
 850              		.align	2
 851              		.type	_ZTV5Print, %object
 852              		.size	_ZTV5Print, 24
 853              	_ZTV5Print:
 854 0000 00000000 		.word	0
 855 0004 00000000 		.word	0
ARM GAS  /tmp/cckExcFI.s 			page 16


 856 0008 00000000 		.word	0
 857 000c 00000000 		.word	0
 858 0010 00000000 		.word	__cxa_pure_virtual
 859 0014 00000000 		.word	_ZN5Print5writeEPKhj
 860              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
