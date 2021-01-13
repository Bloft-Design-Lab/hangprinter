ARM GAS  /tmp/ccpqbMsm.s 			page 1


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
  11              		.file	"Print.cpp"
  12              		.section	.text._ZN5Print5writeEPKhj,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN5Print5writeEPKhj
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN5Print5writeEPKhj, %function
  21              	_ZN5Print5writeEPKhj:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 72B1     		cbz	r2, .L4
  26 0004 0646     		mov	r6, r0
  27 0006 0C46     		mov	r4, r1
  28 0008 0025     		movs	r5, #0
  29 000a 8F18     		adds	r7, r1, r2
  30              	.L3:
  31 000c 3368     		ldr	r3, [r6]
  32 000e 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
  33 0012 9B68     		ldr	r3, [r3, #8]
  34 0014 3046     		mov	r0, r6
  35 0016 9847     		blx	r3
  36 0018 A742     		cmp	r7, r4
  37 001a 0544     		add	r5, r5, r0
  38 001c F6D1     		bne	.L3
  39              	.L1:
  40 001e 2846     		mov	r0, r5
  41 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  42              	.L4:
  43 0022 1546     		mov	r5, r2
  44 0024 FBE7     		b	.L1
  45              		.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
  46 0026 00BF     		.section	.text._ZN5Print5printEPKc,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	_ZN5Print5printEPKc
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	_ZN5Print5printEPKc, %function
  55              	_ZN5Print5printEPKc:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccpqbMsm.s 			page 2


  58 0000 69B1     		cbz	r1, .L9
  59 0002 70B5     		push	{r4, r5, r6, lr}
  60 0004 0546     		mov	r5, r0
  61 0006 0846     		mov	r0, r1
  62 0008 0C46     		mov	r4, r1
  63 000a FFF7FEFF 		bl	strlen
  64 000e 2B68     		ldr	r3, [r5]
  65 0010 0246     		mov	r2, r0
  66 0012 2146     		mov	r1, r4
  67 0014 2846     		mov	r0, r5
  68 0016 BDE87040 		pop	{r4, r5, r6, lr}
  69 001a DB68     		ldr	r3, [r3, #12]
  70 001c 1847     		bx	r3
  71              	.L9:
  72 001e 0846     		mov	r0, r1
  73 0020 7047     		bx	lr
  74              		.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
  75 0022 00BF     		.section	.text._ZN5Print5printEc,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	_ZN5Print5printEc
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu softvfp
  83              		.type	_ZN5Print5printEc, %function
  84              	_ZN5Print5printEc:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88 0000 0368     		ldr	r3, [r0]
  89 0002 9B68     		ldr	r3, [r3, #8]
  90 0004 1847     		bx	r3
  91              		.size	_ZN5Print5printEc, .-_ZN5Print5printEc
  92 0006 00BF     		.section	.text._ZN5Print5printERK9Printable,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN5Print5printERK9Printable
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	_ZN5Print5printERK9Printable, %function
 101              	_ZN5Print5printERK9Printable:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 0B46     		mov	r3, r1
 106 0002 0A68     		ldr	r2, [r1]
 107 0004 0146     		mov	r1, r0
 108 0006 9268     		ldr	r2, [r2, #8]
 109 0008 1846     		mov	r0, r3
 110 000a 1047     		bx	r2
 111              		.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
 112              		.section	.text._ZN5Print7printlnEv,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccpqbMsm.s 			page 3


 115              		.global	_ZN5Print7printlnEv
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	_ZN5Print7printlnEv, %function
 121              	_ZN5Print7printlnEv:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 38B5     		push	{r3, r4, r5, lr}
 125 0002 0368     		ldr	r3, [r0]
 126 0004 0446     		mov	r4, r0
 127 0006 0D21     		movs	r1, #13
 128 0008 9B68     		ldr	r3, [r3, #8]
 129 000a 9847     		blx	r3
 130 000c 2368     		ldr	r3, [r4]
 131 000e 0546     		mov	r5, r0
 132 0010 9B68     		ldr	r3, [r3, #8]
 133 0012 2046     		mov	r0, r4
 134 0014 0A21     		movs	r1, #10
 135 0016 9847     		blx	r3
 136 0018 2844     		add	r0, r0, r5
 137 001a 38BD     		pop	{r3, r4, r5, pc}
 138              		.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
 139              		.section	.text._ZN5Print7printlnEPKc,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	_ZN5Print7printlnEPKc
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu softvfp
 147              		.type	_ZN5Print7printlnEPKc, %function
 148              	_ZN5Print7printlnEPKc:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151 0000 70B5     		push	{r4, r5, r6, lr}
 152 0002 0446     		mov	r4, r0
 153 0004 0D46     		mov	r5, r1
 154 0006 49B1     		cbz	r1, .L18
 155 0008 0846     		mov	r0, r1
 156 000a FFF7FEFF 		bl	strlen
 157 000e 2368     		ldr	r3, [r4]
 158 0010 0246     		mov	r2, r0
 159 0012 2946     		mov	r1, r5
 160 0014 DB68     		ldr	r3, [r3, #12]
 161 0016 2046     		mov	r0, r4
 162 0018 9847     		blx	r3
 163 001a 0546     		mov	r5, r0
 164              	.L18:
 165 001c 2368     		ldr	r3, [r4]
 166 001e 0D21     		movs	r1, #13
 167 0020 9B68     		ldr	r3, [r3, #8]
 168 0022 2046     		mov	r0, r4
 169 0024 9847     		blx	r3
 170 0026 2368     		ldr	r3, [r4]
 171 0028 0646     		mov	r6, r0
ARM GAS  /tmp/ccpqbMsm.s 			page 4


 172 002a 9B68     		ldr	r3, [r3, #8]
 173 002c 2046     		mov	r0, r4
 174 002e 0A21     		movs	r1, #10
 175 0030 9847     		blx	r3
 176 0032 3544     		add	r5, r5, r6
 177 0034 2844     		add	r0, r0, r5
 178 0036 70BD     		pop	{r4, r5, r6, pc}
 179              		.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
 180              		.section	.text._ZN5Print7printlnEc,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZN5Print7printlnEc
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	_ZN5Print7printlnEc, %function
 189              	_ZN5Print7printlnEc:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 0368     		ldr	r3, [r0]
 193 0002 70B5     		push	{r4, r5, r6, lr}
 194 0004 0446     		mov	r4, r0
 195 0006 9B68     		ldr	r3, [r3, #8]
 196 0008 9847     		blx	r3
 197 000a 2368     		ldr	r3, [r4]
 198 000c 0646     		mov	r6, r0
 199 000e 9B68     		ldr	r3, [r3, #8]
 200 0010 2046     		mov	r0, r4
 201 0012 0D21     		movs	r1, #13
 202 0014 9847     		blx	r3
 203 0016 2368     		ldr	r3, [r4]
 204 0018 0546     		mov	r5, r0
 205 001a 9B68     		ldr	r3, [r3, #8]
 206 001c 2046     		mov	r0, r4
 207 001e 0A21     		movs	r1, #10
 208 0020 9847     		blx	r3
 209 0022 3544     		add	r5, r5, r6
 210 0024 2844     		add	r0, r0, r5
 211 0026 70BD     		pop	{r4, r5, r6, pc}
 212              		.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
 213              		.section	.text._ZN5Print7printlnERK9Printable,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
 216              		.global	_ZN5Print7printlnERK9Printable
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu softvfp
 221              		.type	_ZN5Print7printlnERK9Printable, %function
 222              	_ZN5Print7printlnERK9Printable:
 223              		@ args = 0, pretend = 0, frame = 0
 224              		@ frame_needed = 0, uses_anonymous_args = 0
 225 0000 70B5     		push	{r4, r5, r6, lr}
 226 0002 0446     		mov	r4, r0
 227 0004 0B68     		ldr	r3, [r1]
 228 0006 0846     		mov	r0, r1
ARM GAS  /tmp/ccpqbMsm.s 			page 5


 229 0008 9B68     		ldr	r3, [r3, #8]
 230 000a 2146     		mov	r1, r4
 231 000c 9847     		blx	r3
 232 000e 2368     		ldr	r3, [r4]
 233 0010 0646     		mov	r6, r0
 234 0012 9B68     		ldr	r3, [r3, #8]
 235 0014 2046     		mov	r0, r4
 236 0016 0D21     		movs	r1, #13
 237 0018 9847     		blx	r3
 238 001a 2368     		ldr	r3, [r4]
 239 001c 0546     		mov	r5, r0
 240 001e 9B68     		ldr	r3, [r3, #8]
 241 0020 2046     		mov	r0, r4
 242 0022 0A21     		movs	r1, #10
 243 0024 9847     		blx	r3
 244 0026 3544     		add	r5, r5, r6
 245 0028 2844     		add	r0, r0, r5
 246 002a 70BD     		pop	{r4, r5, r6, pc}
 247              		.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
 248              		.section	.text._ZN5Print11printNumberEmh,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZN5Print11printNumberEmh
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 256              		.type	_ZN5Print11printNumberEmh, %function
 257              	_ZN5Print11printNumberEmh:
 258              		@ args = 0, pretend = 0, frame = 40
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 012A     		cmp	r2, #1
 261 0002 0B46     		mov	r3, r1
 262 0004 D8BF     		it	le
 263 0006 0A21     		movle	r1, #10
 264 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 265 000a 4FF00004 		mov	r4, #0
 266 000e CCBF     		ite	gt
 267 0010 1146     		movgt	r1, r2
 268 0012 0A46     		movle	r2, r1
 269 0014 8BB0     		sub	sp, sp, #44
 270 0016 0646     		mov	r6, r0
 271 0018 8DF82440 		strb	r4, [sp, #36]
 272 001c 0DF12300 		add	r0, sp, #35
 273              	.L29:
 274 0020 B3FBF1F4 		udiv	r4, r3, r1
 275 0024 04FB1233 		mls	r3, r4, r2, r3
 276 0028 DBB2     		uxtb	r3, r3
 277 002a 092B     		cmp	r3, #9
 278 002c 03F13005 		add	r5, r3, #48
 279 0030 8ABF     		itet	hi
 280 0032 3733     		addhi	r3, r3, #55
 281 0034 EBB2     		uxtbls	r3, r5
 282 0036 DBB2     		uxtbhi	r3, r3
 283 0038 0746     		mov	r7, r0
 284 003a 00F80139 		strb	r3, [r0], #-1
 285 003e 2346     		mov	r3, r4
ARM GAS  /tmp/ccpqbMsm.s 			page 6


 286 0040 002C     		cmp	r4, #0
 287 0042 EDD1     		bne	.L29
 288 0044 3846     		mov	r0, r7
 289 0046 FFF7FEFF 		bl	strlen
 290 004a 3368     		ldr	r3, [r6]
 291 004c 0246     		mov	r2, r0
 292 004e 3946     		mov	r1, r7
 293 0050 DB68     		ldr	r3, [r3, #12]
 294 0052 3046     		mov	r0, r6
 295 0054 9847     		blx	r3
 296 0056 0BB0     		add	sp, sp, #44
 297              		@ sp needed
 298 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 299              		.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
 300 005a 00BF     		.section	.text._ZN5Print5printEli,"ax",%progbits
 301              		.align	1
 302              		.p2align 2,,3
 303              		.global	_ZN5Print5printEli
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu softvfp
 308              		.type	_ZN5Print5printEli, %function
 309              	_ZN5Print5printEli:
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 313 0004 0646     		mov	r6, r0
 314 0006 0D46     		mov	r5, r1
 315 0008 B2B1     		cbz	r2, .L42
 316 000a 0A2A     		cmp	r2, #10
 317 000c 1446     		mov	r4, r2
 318 000e 04D0     		beq	.L43
 319 0010 D2B2     		uxtb	r2, r2
 320              	.L41:
 321 0012 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 322 0016 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 323              	.L43:
 324 001a 0029     		cmp	r1, #0
 325 001c F9DA     		bge	.L41
 326 001e 0368     		ldr	r3, [r0]
 327 0020 2D21     		movs	r1, #45
 328 0022 9B68     		ldr	r3, [r3, #8]
 329 0024 9847     		blx	r3
 330 0026 2246     		mov	r2, r4
 331 0028 0746     		mov	r7, r0
 332 002a 6942     		negs	r1, r5
 333 002c 3046     		mov	r0, r6
 334 002e FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 335 0032 3844     		add	r0, r0, r7
 336 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 337              	.L42:
 338 0038 0368     		ldr	r3, [r0]
 339 003a C9B2     		uxtb	r1, r1
 340 003c 9B68     		ldr	r3, [r3, #8]
 341 003e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 342 0042 1847     		bx	r3
ARM GAS  /tmp/ccpqbMsm.s 			page 7


 343              		.size	_ZN5Print5printEli, .-_ZN5Print5printEli
 344              		.section	.text._ZN5Print5printEii,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	_ZN5Print5printEii
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu softvfp
 352              		.type	_ZN5Print5printEii, %function
 353              	_ZN5Print5printEii:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356              		@ link register save eliminated.
 357 0000 FFF7FEBF 		b	_ZN5Print5printEli
 358              		.size	_ZN5Print5printEii, .-_ZN5Print5printEii
 359              		.section	.text._ZN5Print7printlnEii,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	_ZN5Print7printlnEii
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu softvfp
 367              		.type	_ZN5Print7printlnEii, %function
 368              	_ZN5Print7printlnEii:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371 0000 70B5     		push	{r4, r5, r6, lr}
 372 0002 0446     		mov	r4, r0
 373 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 374 0008 2368     		ldr	r3, [r4]
 375 000a 0646     		mov	r6, r0
 376 000c 9B68     		ldr	r3, [r3, #8]
 377 000e 2046     		mov	r0, r4
 378 0010 0D21     		movs	r1, #13
 379 0012 9847     		blx	r3
 380 0014 2368     		ldr	r3, [r4]
 381 0016 0546     		mov	r5, r0
 382 0018 9B68     		ldr	r3, [r3, #8]
 383 001a 2046     		mov	r0, r4
 384 001c 0A21     		movs	r1, #10
 385 001e 9847     		blx	r3
 386 0020 3544     		add	r5, r5, r6
 387 0022 2844     		add	r0, r0, r5
 388 0024 70BD     		pop	{r4, r5, r6, pc}
 389              		.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
 390 0026 00BF     		.section	.text._ZN5Print7printlnEli,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	_ZN5Print7printlnEli
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu softvfp
 398              		.type	_ZN5Print7printlnEli, %function
 399              	_ZN5Print7printlnEli:
ARM GAS  /tmp/ccpqbMsm.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 70B5     		push	{r4, r5, r6, lr}
 403 0002 0446     		mov	r4, r0
 404 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 405 0008 2368     		ldr	r3, [r4]
 406 000a 0546     		mov	r5, r0
 407 000c 9B68     		ldr	r3, [r3, #8]
 408 000e 2046     		mov	r0, r4
 409 0010 0D21     		movs	r1, #13
 410 0012 9847     		blx	r3
 411 0014 2368     		ldr	r3, [r4]
 412 0016 0646     		mov	r6, r0
 413 0018 9B68     		ldr	r3, [r3, #8]
 414 001a 2046     		mov	r0, r4
 415 001c 0A21     		movs	r1, #10
 416 001e 9847     		blx	r3
 417 0020 3544     		add	r5, r5, r6
 418 0022 2844     		add	r0, r0, r5
 419 0024 70BD     		pop	{r4, r5, r6, pc}
 420              		.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
 421 0026 00BF     		.section	.text._ZN5Print5printEmi,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZN5Print5printEmi
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu softvfp
 429              		.type	_ZN5Print5printEmi, %function
 430              	_ZN5Print5printEmi:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433              		@ link register save eliminated.
 434 0000 12B1     		cbz	r2, .L54
 435 0002 D2B2     		uxtb	r2, r2
 436 0004 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 437              	.L54:
 438 0008 0268     		ldr	r2, [r0]
 439 000a 10B4     		push	{r4}
 440 000c C9B2     		uxtb	r1, r1
 441 000e 9368     		ldr	r3, [r2, #8]
 442 0010 10BC     		pop	{r4}
 443 0012 1847     		bx	r3
 444              		.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
 445              		.section	.text._ZN5Print5printEhi,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN5Print5printEhi
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu softvfp
 453              		.type	_ZN5Print5printEhi, %function
 454              	_ZN5Print5printEhi:
 455              		@ args = 0, pretend = 0, frame = 0
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccpqbMsm.s 			page 9


 457              		@ link register save eliminated.
 458 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 459              		.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
 460              		.section	.text._ZN5Print7printlnEhi,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	_ZN5Print7printlnEhi
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	_ZN5Print7printlnEhi, %function
 469              	_ZN5Print7printlnEhi:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472 0000 70B5     		push	{r4, r5, r6, lr}
 473 0002 0446     		mov	r4, r0
 474 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 475 0008 2368     		ldr	r3, [r4]
 476 000a 0646     		mov	r6, r0
 477 000c 9B68     		ldr	r3, [r3, #8]
 478 000e 2046     		mov	r0, r4
 479 0010 0D21     		movs	r1, #13
 480 0012 9847     		blx	r3
 481 0014 2368     		ldr	r3, [r4]
 482 0016 0546     		mov	r5, r0
 483 0018 9B68     		ldr	r3, [r3, #8]
 484 001a 2046     		mov	r0, r4
 485 001c 0A21     		movs	r1, #10
 486 001e 9847     		blx	r3
 487 0020 3544     		add	r5, r5, r6
 488 0022 2844     		add	r0, r0, r5
 489 0024 70BD     		pop	{r4, r5, r6, pc}
 490              		.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
 491 0026 00BF     		.section	.text._ZN5Print5printEji,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	_ZN5Print5printEji
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu softvfp
 499              		.type	_ZN5Print5printEji, %function
 500              	_ZN5Print5printEji:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 505              		.size	_ZN5Print5printEji, .-_ZN5Print5printEji
 506              		.section	.text._ZN5Print7printlnEji,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZN5Print7printlnEji
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu softvfp
ARM GAS  /tmp/ccpqbMsm.s 			page 10


 514              		.type	_ZN5Print7printlnEji, %function
 515              	_ZN5Print7printlnEji:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 70B5     		push	{r4, r5, r6, lr}
 519 0002 0446     		mov	r4, r0
 520 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 521 0008 2368     		ldr	r3, [r4]
 522 000a 0646     		mov	r6, r0
 523 000c 9B68     		ldr	r3, [r3, #8]
 524 000e 2046     		mov	r0, r4
 525 0010 0D21     		movs	r1, #13
 526 0012 9847     		blx	r3
 527 0014 2368     		ldr	r3, [r4]
 528 0016 0546     		mov	r5, r0
 529 0018 9B68     		ldr	r3, [r3, #8]
 530 001a 2046     		mov	r0, r4
 531 001c 0A21     		movs	r1, #10
 532 001e 9847     		blx	r3
 533 0020 3544     		add	r5, r5, r6
 534 0022 2844     		add	r0, r0, r5
 535 0024 70BD     		pop	{r4, r5, r6, pc}
 536              		.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
 537 0026 00BF     		.section	.text._ZN5Print7printlnEmi,"ax",%progbits
 538              		.align	1
 539              		.p2align 2,,3
 540              		.global	_ZN5Print7printlnEmi
 541              		.syntax unified
 542              		.thumb
 543              		.thumb_func
 544              		.fpu softvfp
 545              		.type	_ZN5Print7printlnEmi, %function
 546              	_ZN5Print7printlnEmi:
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549 0000 70B5     		push	{r4, r5, r6, lr}
 550 0002 0446     		mov	r4, r0
 551 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 552 0008 2368     		ldr	r3, [r4]
 553 000a 0546     		mov	r5, r0
 554 000c 9B68     		ldr	r3, [r3, #8]
 555 000e 2046     		mov	r0, r4
 556 0010 0D21     		movs	r1, #13
 557 0012 9847     		blx	r3
 558 0014 2368     		ldr	r3, [r4]
 559 0016 0646     		mov	r6, r0
 560 0018 9B68     		ldr	r3, [r3, #8]
 561 001a 2046     		mov	r0, r4
 562 001c 0A21     		movs	r1, #10
 563 001e 9847     		blx	r3
 564 0020 3544     		add	r5, r5, r6
 565 0022 2844     		add	r0, r0, r5
 566 0024 70BD     		pop	{r4, r5, r6, pc}
 567              		.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
 568              		.global	__aeabi_dcmpun
 569              		.global	__aeabi_dcmpgt
 570              		.global	__aeabi_dcmplt
ARM GAS  /tmp/ccpqbMsm.s 			page 11


 571              		.global	__aeabi_ddiv
 572              		.global	__aeabi_dmul
 573              		.global	__aeabi_d2iz
 574              		.global	__aeabi_i2d
 575              		.global	__aeabi_dsub
 576              		.global	__aeabi_dcmple
 577              		.global	__aeabi_dadd
 578              		.global	__aeabi_d2uiz
 579              		.global	__aeabi_ui2d
 580 0026 00BF     		.section	.text._ZN5Print10printFloatEdh,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	_ZN5Print10printFloatEdh
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu softvfp
 588              		.type	_ZN5Print10printFloatEdh, %function
 589              	_ZN5Print10printFloatEdh:
 590              		@ args = 4, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 593 0004 1946     		mov	r1, r3
 594 0006 81B0     		sub	sp, sp, #4
 595 0008 8046     		mov	r8, r0
 596 000a 1046     		mov	r0, r2
 597 000c 1746     		mov	r7, r2
 598 000e 9946     		mov	r9, r3
 599 0010 9DF82840 		ldrb	r4, [sp, #40]	@ zero_extendqisi2
 600 0014 FFF7FEFF 		bl	__aeabi_dcmpun
 601 0018 0028     		cmp	r0, #0
 602 001a 40F09880 		bne	.L96
 603 001e 29F00045 		bic	r5, r9, #-2147483648
 604 0022 3846     		mov	r0, r7
 605 0024 2946     		mov	r1, r5
 606 0026 4FF0FF32 		mov	r2, #-1
 607 002a 5F4B     		ldr	r3, .L99
 608 002c FFF7FEFF 		bl	__aeabi_dcmpun
 609 0030 48B9     		cbnz	r0, .L75
 610 0032 3846     		mov	r0, r7
 611 0034 2946     		mov	r1, r5
 612 0036 4FF0FF32 		mov	r2, #-1
 613 003a 5B4B     		ldr	r3, .L99
 614 003c FFF7FEFF 		bl	__aeabi_dcmple
 615 0040 0028     		cmp	r0, #0
 616 0042 00F08E80 		beq	.L97
 617              	.L75:
 618 0046 3846     		mov	r0, r7
 619 0048 4946     		mov	r1, r9
 620 004a 4FF06042 		mov	r2, #-536870912
 621 004e 574B     		ldr	r3, .L99+4
 622 0050 FFF7FEFF 		bl	__aeabi_dcmpgt
 623 0054 0028     		cmp	r0, #0
 624 0056 70D1     		bne	.L92
 625 0058 3846     		mov	r0, r7
 626 005a 4946     		mov	r1, r9
 627 005c 4FF06042 		mov	r2, #-536870912
ARM GAS  /tmp/ccpqbMsm.s 			page 12


 628 0060 534B     		ldr	r3, .L99+8
 629 0062 FFF7FEFF 		bl	__aeabi_dcmplt
 630 0066 0028     		cmp	r0, #0
 631 0068 67D1     		bne	.L92
 632 006a 3846     		mov	r0, r7
 633 006c 4946     		mov	r1, r9
 634 006e 0022     		movs	r2, #0
 635 0070 0023     		movs	r3, #0
 636 0072 FFF7FEFF 		bl	__aeabi_dcmplt
 637 0076 0028     		cmp	r0, #0
 638 0078 7DD1     		bne	.L98
 639 007a 0546     		mov	r5, r0
 640              	.L70:
 641 007c 002C     		cmp	r4, #0
 642 007e 00F08480 		beq	.L78
 643 0082 0022     		movs	r2, #0
 644 0084 0026     		movs	r6, #0
 645 0086 4FF0000A 		mov	r10, #0
 646 008a 4A4B     		ldr	r3, .L99+12
 647 008c DFF838B1 		ldr	fp, .L99+32
 648              	.L73:
 649 0090 1046     		mov	r0, r2
 650 0092 1946     		mov	r1, r3
 651 0094 5246     		mov	r2, r10
 652 0096 5B46     		mov	r3, fp
 653 0098 FFF7FEFF 		bl	__aeabi_ddiv
 654 009c 0136     		adds	r6, r6, #1
 655 009e F6B2     		uxtb	r6, r6
 656 00a0 B442     		cmp	r4, r6
 657 00a2 0246     		mov	r2, r0
 658 00a4 0B46     		mov	r3, r1
 659 00a6 F3DC     		bgt	.L73
 660 00a8 3A46     		mov	r2, r7
 661 00aa 4B46     		mov	r3, r9
 662 00ac FFF7FEFF 		bl	__aeabi_dadd
 663 00b0 0F46     		mov	r7, r1
 664 00b2 0646     		mov	r6, r0
 665 00b4 FFF7FEFF 		bl	__aeabi_d2uiz
 666 00b8 8146     		mov	r9, r0
 667 00ba FFF7FEFF 		bl	__aeabi_ui2d
 668 00be 0B46     		mov	r3, r1
 669 00c0 0246     		mov	r2, r0
 670 00c2 3946     		mov	r1, r7
 671 00c4 3046     		mov	r0, r6
 672 00c6 FFF7FEFF 		bl	__aeabi_dsub
 673 00ca 0A22     		movs	r2, #10
 674 00cc 0646     		mov	r6, r0
 675 00ce 0F46     		mov	r7, r1
 676 00d0 4046     		mov	r0, r8
 677 00d2 4946     		mov	r1, r9
 678 00d4 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 679 00d8 D8F80030 		ldr	r3, [r8]
 680 00dc 0544     		add	r5, r5, r0
 681 00de DB68     		ldr	r3, [r3, #12]
 682 00e0 0122     		movs	r2, #1
 683 00e2 3549     		ldr	r1, .L99+16
 684 00e4 4046     		mov	r0, r8
ARM GAS  /tmp/ccpqbMsm.s 			page 13


 685 00e6 9847     		blx	r3
 686 00e8 4FF0000A 		mov	r10, #0
 687 00ec DFF8D8B0 		ldr	fp, .L99+32
 688 00f0 0544     		add	r5, r5, r0
 689              	.L74:
 690 00f2 5B46     		mov	r3, fp
 691 00f4 5246     		mov	r2, r10
 692 00f6 3046     		mov	r0, r6
 693 00f8 3946     		mov	r1, r7
 694 00fa FFF7FEFF 		bl	__aeabi_dmul
 695 00fe 0F46     		mov	r7, r1
 696 0100 0646     		mov	r6, r0
 697 0102 FFF7FEFF 		bl	__aeabi_d2iz
 698 0106 0A22     		movs	r2, #10
 699 0108 0146     		mov	r1, r0
 700 010a 8146     		mov	r9, r0
 701 010c 4046     		mov	r0, r8
 702 010e FFF7FEFF 		bl	_ZN5Print5printEli
 703 0112 0544     		add	r5, r5, r0
 704 0114 4846     		mov	r0, r9
 705 0116 FFF7FEFF 		bl	__aeabi_i2d
 706 011a 0246     		mov	r2, r0
 707 011c 0B46     		mov	r3, r1
 708 011e 3046     		mov	r0, r6
 709 0120 3946     		mov	r1, r7
 710 0122 FFF7FEFF 		bl	__aeabi_dsub
 711 0126 013C     		subs	r4, r4, #1
 712 0128 14F0FF04 		ands	r4, r4, #255
 713 012c 0646     		mov	r6, r0
 714 012e 0F46     		mov	r7, r1
 715 0130 DFD1     		bne	.L74
 716              	.L63:
 717 0132 2846     		mov	r0, r5
 718 0134 01B0     		add	sp, sp, #4
 719              		@ sp needed
 720 0136 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 721              	.L92:
 722 013a 4046     		mov	r0, r8
 723 013c 0322     		movs	r2, #3
 724 013e D8F80030 		ldr	r3, [r8]
 725 0142 1E49     		ldr	r1, .L99+20
 726 0144 DB68     		ldr	r3, [r3, #12]
 727 0146 01B0     		add	sp, sp, #4
 728              		@ sp needed
 729 0148 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 730 014c 1847     		bx	r3
 731              	.L96:
 732 014e 4046     		mov	r0, r8
 733 0150 0322     		movs	r2, #3
 734 0152 D8F80030 		ldr	r3, [r8]
 735 0156 1A49     		ldr	r1, .L99+24
 736 0158 DB68     		ldr	r3, [r3, #12]
 737 015a 01B0     		add	sp, sp, #4
 738              		@ sp needed
 739 015c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 740 0160 1847     		bx	r3
 741              	.L97:
ARM GAS  /tmp/ccpqbMsm.s 			page 14


 742 0162 4046     		mov	r0, r8
 743 0164 0322     		movs	r2, #3
 744 0166 D8F80030 		ldr	r3, [r8]
 745 016a 1649     		ldr	r1, .L99+28
 746 016c DB68     		ldr	r3, [r3, #12]
 747 016e 01B0     		add	sp, sp, #4
 748              		@ sp needed
 749 0170 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 750 0174 1847     		bx	r3
 751              	.L98:
 752 0176 D8F80030 		ldr	r3, [r8]
 753 017a 2D21     		movs	r1, #45
 754 017c 9B68     		ldr	r3, [r3, #8]
 755 017e 4046     		mov	r0, r8
 756 0180 9847     		blx	r3
 757 0182 09F10049 		add	r9, r9, #-2147483648
 758 0186 0546     		mov	r5, r0
 759 0188 78E7     		b	.L70
 760              	.L78:
 761 018a 0022     		movs	r2, #0
 762 018c 094B     		ldr	r3, .L99+12
 763 018e 3846     		mov	r0, r7
 764 0190 4946     		mov	r1, r9
 765 0192 FFF7FEFF 		bl	__aeabi_dadd
 766 0196 FFF7FEFF 		bl	__aeabi_d2uiz
 767 019a 0A22     		movs	r2, #10
 768 019c 0146     		mov	r1, r0
 769 019e 4046     		mov	r0, r8
 770 01a0 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 771 01a4 0544     		add	r5, r5, r0
 772 01a6 C4E7     		b	.L63
 773              	.L100:
 774              		.align	2
 775              	.L99:
 776 01a8 FFFFEF7F 		.word	2146435071
 777 01ac FFFFEF41 		.word	1106247679
 778 01b0 FFFFEFC1 		.word	-1041235969
 779 01b4 0000E03F 		.word	1071644672
 780 01b8 0C000000 		.word	.LC3
 781 01bc 04000000 		.word	.LC1
 782 01c0 08000000 		.word	.LC2
 783 01c4 00000000 		.word	.LC0
 784 01c8 00002440 		.word	1076101120
 785              		.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
 786              		.section	.text._ZN5Print5printEdi,"ax",%progbits
 787              		.align	1
 788              		.p2align 2,,3
 789              		.global	_ZN5Print5printEdi
 790              		.syntax unified
 791              		.thumb
 792              		.thumb_func
 793              		.fpu softvfp
 794              		.type	_ZN5Print5printEdi, %function
 795              	_ZN5Print5printEdi:
 796              		@ args = 4, pretend = 0, frame = 0
 797              		@ frame_needed = 0, uses_anonymous_args = 0
 798              		@ link register save eliminated.
ARM GAS  /tmp/ccpqbMsm.s 			page 15


 799 0000 9DF80010 		ldrb	r1, [sp]	@ zero_extendqisi2
 800 0004 0091     		str	r1, [sp]
 801 0006 FFF7FEBF 		b	_ZN5Print10printFloatEdh
 802              		.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
 803 000a 00BF     		.section	.text._ZN5Print7printlnEdi,"ax",%progbits
 804              		.align	1
 805              		.p2align 2,,3
 806              		.global	_ZN5Print7printlnEdi
 807              		.syntax unified
 808              		.thumb
 809              		.thumb_func
 810              		.fpu softvfp
 811              		.type	_ZN5Print7printlnEdi, %function
 812              	_ZN5Print7printlnEdi:
 813              		@ args = 4, pretend = 0, frame = 0
 814              		@ frame_needed = 0, uses_anonymous_args = 0
 815 0000 70B5     		push	{r4, r5, r6, lr}
 816 0002 82B0     		sub	sp, sp, #8
 817 0004 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 818 0008 0446     		mov	r4, r0
 819 000a 0091     		str	r1, [sp]
 820 000c FFF7FEFF 		bl	_ZN5Print10printFloatEdh
 821 0010 2368     		ldr	r3, [r4]
 822 0012 0646     		mov	r6, r0
 823 0014 9B68     		ldr	r3, [r3, #8]
 824 0016 2046     		mov	r0, r4
 825 0018 0D21     		movs	r1, #13
 826 001a 9847     		blx	r3
 827 001c 2368     		ldr	r3, [r4]
 828 001e 0546     		mov	r5, r0
 829 0020 9B68     		ldr	r3, [r3, #8]
 830 0022 2046     		mov	r0, r4
 831 0024 0A21     		movs	r1, #10
 832 0026 9847     		blx	r3
 833 0028 3544     		add	r5, r5, r6
 834 002a 2844     		add	r0, r0, r5
 835 002c 02B0     		add	sp, sp, #8
 836              		@ sp needed
 837 002e 70BD     		pop	{r4, r5, r6, pc}
 838              		.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
 839              		.global	_ZTV5Print
 840              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 841              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 842              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 843              	_ZL28cpu_irq_prev_interrupt_state:
 844 0000 00       		.space	1
 845              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 846              		.align	2
 847              		.type	_ZL32cpu_irq_critical_section_counter, %object
 848              		.size	_ZL32cpu_irq_critical_section_counter, 4
 849              	_ZL32cpu_irq_critical_section_counter:
 850 0000 00000000 		.space	4
 851              		.section	.rodata._ZN5Print10printFloatEdh.str1.4,"aMS",%progbits,1
 852              		.align	2
 853              	.LC0:
 854 0000 696E6600 		.ascii	"inf\000"
 855              	.LC1:
ARM GAS  /tmp/ccpqbMsm.s 			page 16


 856 0004 6F766600 		.ascii	"ovf\000"
 857              	.LC2:
 858 0008 6E616E00 		.ascii	"nan\000"
 859              	.LC3:
 860 000c 2E00     		.ascii	".\000"
 861              		.section	.rodata._ZTV5Print,"a",%progbits
 862              		.align	2
 863              		.type	_ZTV5Print, %object
 864              		.size	_ZTV5Print, 24
 865              	_ZTV5Print:
 866 0000 00000000 		.word	0
 867 0004 00000000 		.word	0
 868 0008 00000000 		.word	0
 869 000c 00000000 		.word	0
 870 0010 00000000 		.word	__cxa_pure_virtual
 871 0014 00000000 		.word	_ZN5Print5writeEPKhj
 872              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
