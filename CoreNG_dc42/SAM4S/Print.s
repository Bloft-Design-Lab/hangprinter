ARM GAS  /tmp/ccXWbkNi.s 			page 1


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
  28 0008 8F18     		adds	r7, r1, r2
  29 000a 0025     		movs	r5, #0
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
ARM GAS  /tmp/ccXWbkNi.s 			page 2


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
  68 0016 DB68     		ldr	r3, [r3, #12]
  69 0018 BDE87040 		pop	{r4, r5, r6, lr}
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
 106 0002 0146     		mov	r1, r0
 107 0004 1A68     		ldr	r2, [r3]
 108 0006 1846     		mov	r0, r3
 109 0008 9368     		ldr	r3, [r2, #8]
 110 000a 1847     		bx	r3
 111              		.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
 112              		.section	.text._ZN5Print7printlnEv,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccXWbkNi.s 			page 3


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
ARM GAS  /tmp/ccXWbkNi.s 			page 4


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
 194 0004 9B68     		ldr	r3, [r3, #8]
 195 0006 0446     		mov	r4, r0
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
 225 0000 0B68     		ldr	r3, [r1]
 226 0002 70B5     		push	{r4, r5, r6, lr}
 227 0004 0446     		mov	r4, r0
 228 0006 9B68     		ldr	r3, [r3, #8]
ARM GAS  /tmp/ccXWbkNi.s 			page 5


 229 0008 0846     		mov	r0, r1
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
 260 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 261 0002 012A     		cmp	r2, #1
 262 0004 8BB0     		sub	sp, sp, #44
 263 0006 0B46     		mov	r3, r1
 264 0008 4FF00004 		mov	r4, #0
 265 000c D8BF     		it	le
 266 000e 0A21     		movle	r1, #10
 267 0010 0646     		mov	r6, r0
 268 0012 8DF82440 		strb	r4, [sp, #36]
 269 0016 CCBF     		ite	gt
 270 0018 1146     		movgt	r1, r2
 271 001a 0A46     		movle	r2, r1
 272 001c 0DF12300 		add	r0, sp, #35
 273              	.L29:
 274 0020 B3FBF1F4 		udiv	r4, r3, r1
 275 0024 04FB1233 		mls	r3, r4, r2, r3
 276 0028 03F0FF03 		and	r3, r3, #255
 277 002c 092B     		cmp	r3, #9
 278 002e 03F13005 		add	r5, r3, #48
 279 0032 8ABF     		itet	hi
 280 0034 3733     		addhi	r3, r3, #55
 281 0036 EBB2     		uxtbls	r3, r5
 282 0038 DBB2     		uxtbhi	r3, r3
 283 003a 0746     		mov	r7, r0
 284 003c 00F80139 		strb	r3, [r0], #-1
 285 0040 2346     		mov	r3, r4
ARM GAS  /tmp/ccXWbkNi.s 			page 6


 286 0042 002C     		cmp	r4, #0
 287 0044 ECD1     		bne	.L29
 288 0046 3846     		mov	r0, r7
 289 0048 FFF7FEFF 		bl	strlen
 290 004c 3368     		ldr	r3, [r6]
 291 004e 0246     		mov	r2, r0
 292 0050 3946     		mov	r1, r7
 293 0052 DB68     		ldr	r3, [r3, #12]
 294 0054 3046     		mov	r0, r6
 295 0056 9847     		blx	r3
 296 0058 0BB0     		add	sp, sp, #44
 297              		@ sp needed
 298 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 299              		.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
 300              		.section	.text._ZN5Print5printEli,"ax",%progbits
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
ARM GAS  /tmp/ccXWbkNi.s 			page 7


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
ARM GAS  /tmp/ccXWbkNi.s 			page 8


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
ARM GAS  /tmp/ccXWbkNi.s 			page 9


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
ARM GAS  /tmp/ccXWbkNi.s 			page 10


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
ARM GAS  /tmp/ccXWbkNi.s 			page 11


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
 593 0004 81B0     		sub	sp, sp, #4
 594 0006 8046     		mov	r8, r0
 595 0008 1946     		mov	r1, r3
 596 000a 1046     		mov	r0, r2
 597 000c 1746     		mov	r7, r2
 598 000e 9946     		mov	r9, r3
 599 0010 9DF82840 		ldrb	r4, [sp, #40]	@ zero_extendqisi2
 600 0014 FFF7FEFF 		bl	__aeabi_dcmpun
 601 0018 0028     		cmp	r0, #0
 602 001a 40F09780 		bne	.L96
 603 001e 29F00045 		bic	r5, r9, #-2147483648
 604 0022 3846     		mov	r0, r7
 605 0024 2946     		mov	r1, r5
 606 0026 4FF0FF32 		mov	r2, #-1
 607 002a 594B     		ldr	r3, .L99
 608 002c FFF7FEFF 		bl	__aeabi_dcmpun
 609 0030 48B9     		cbnz	r0, .L75
 610 0032 3846     		mov	r0, r7
 611 0034 2946     		mov	r1, r5
 612 0036 4FF0FF32 		mov	r2, #-1
 613 003a 554B     		ldr	r3, .L99
 614 003c FFF7FEFF 		bl	__aeabi_dcmple
 615 0040 0028     		cmp	r0, #0
 616 0042 00F08780 		beq	.L97
 617              	.L75:
 618 0046 3846     		mov	r0, r7
 619 0048 4946     		mov	r1, r9
 620 004a 4FF06042 		mov	r2, #-536870912
 621 004e 514B     		ldr	r3, .L99+4
 622 0050 FFF7FEFF 		bl	__aeabi_dcmpgt
 623 0054 0028     		cmp	r0, #0
 624 0056 6FD1     		bne	.L92
 625 0058 3846     		mov	r0, r7
 626 005a 4946     		mov	r1, r9
 627 005c 4FF06042 		mov	r2, #-536870912
ARM GAS  /tmp/ccXWbkNi.s 			page 12


 628 0060 4D4B     		ldr	r3, .L99+8
 629 0062 FFF7FEFF 		bl	__aeabi_dcmplt
 630 0066 0028     		cmp	r0, #0
 631 0068 66D1     		bne	.L92
 632 006a 3846     		mov	r0, r7
 633 006c 4946     		mov	r1, r9
 634 006e 0022     		movs	r2, #0
 635 0070 0023     		movs	r3, #0
 636 0072 FFF7FEFF 		bl	__aeabi_dcmplt
 637 0076 0028     		cmp	r0, #0
 638 0078 70D1     		bne	.L98
 639 007a 0546     		mov	r5, r0
 640              	.L70:
 641 007c 002C     		cmp	r4, #0
 642 007e 77D0     		beq	.L78
 643 0080 464B     		ldr	r3, .L99+12
 644 0082 DFF82CB1 		ldr	fp, .L99+32
 645 0086 0022     		movs	r2, #0
 646 0088 0026     		movs	r6, #0
 647 008a 4FF0000A 		mov	r10, #0
 648              	.L73:
 649 008e 1046     		mov	r0, r2
 650 0090 1946     		mov	r1, r3
 651 0092 5246     		mov	r2, r10
 652 0094 5B46     		mov	r3, fp
 653 0096 FFF7FEFF 		bl	__aeabi_ddiv
 654 009a 0136     		adds	r6, r6, #1
 655 009c F6B2     		uxtb	r6, r6
 656 009e B442     		cmp	r4, r6
 657 00a0 0246     		mov	r2, r0
 658 00a2 0B46     		mov	r3, r1
 659 00a4 F3DC     		bgt	.L73
 660 00a6 3A46     		mov	r2, r7
 661 00a8 4B46     		mov	r3, r9
 662 00aa FFF7FEFF 		bl	__aeabi_dadd
 663 00ae 0F46     		mov	r7, r1
 664 00b0 0646     		mov	r6, r0
 665 00b2 FFF7FEFF 		bl	__aeabi_d2uiz
 666 00b6 8146     		mov	r9, r0
 667 00b8 FFF7FEFF 		bl	__aeabi_ui2d
 668 00bc 0B46     		mov	r3, r1
 669 00be 0246     		mov	r2, r0
 670 00c0 3946     		mov	r1, r7
 671 00c2 3046     		mov	r0, r6
 672 00c4 FFF7FEFF 		bl	__aeabi_dsub
 673 00c8 0A22     		movs	r2, #10
 674 00ca 0646     		mov	r6, r0
 675 00cc 0F46     		mov	r7, r1
 676 00ce 4046     		mov	r0, r8
 677 00d0 4946     		mov	r1, r9
 678 00d2 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 679 00d6 D8F80030 		ldr	r3, [r8]
 680 00da 3149     		ldr	r1, .L99+16
 681 00dc DB68     		ldr	r3, [r3, #12]
 682 00de DFF8D0B0 		ldr	fp, .L99+32
 683 00e2 0544     		add	r5, r5, r0
 684 00e4 0122     		movs	r2, #1
ARM GAS  /tmp/ccXWbkNi.s 			page 13


 685 00e6 4046     		mov	r0, r8
 686 00e8 9847     		blx	r3
 687 00ea 4FF0000A 		mov	r10, #0
 688 00ee 0544     		add	r5, r5, r0
 689              	.L74:
 690 00f0 5B46     		mov	r3, fp
 691 00f2 5246     		mov	r2, r10
 692 00f4 3046     		mov	r0, r6
 693 00f6 3946     		mov	r1, r7
 694 00f8 FFF7FEFF 		bl	__aeabi_dmul
 695 00fc 0F46     		mov	r7, r1
 696 00fe 0646     		mov	r6, r0
 697 0100 FFF7FEFF 		bl	__aeabi_d2iz
 698 0104 0A22     		movs	r2, #10
 699 0106 0146     		mov	r1, r0
 700 0108 8146     		mov	r9, r0
 701 010a 4046     		mov	r0, r8
 702 010c FFF7FEFF 		bl	_ZN5Print5printEli
 703 0110 0544     		add	r5, r5, r0
 704 0112 4846     		mov	r0, r9
 705 0114 FFF7FEFF 		bl	__aeabi_i2d
 706 0118 0246     		mov	r2, r0
 707 011a 0B46     		mov	r3, r1
 708 011c 3046     		mov	r0, r6
 709 011e 3946     		mov	r1, r7
 710 0120 FFF7FEFF 		bl	__aeabi_dsub
 711 0124 013C     		subs	r4, r4, #1
 712 0126 14F0FF04 		ands	r4, r4, #255
 713 012a 0646     		mov	r6, r0
 714 012c 0F46     		mov	r7, r1
 715 012e DFD1     		bne	.L74
 716              	.L63:
 717 0130 2846     		mov	r0, r5
 718 0132 01B0     		add	sp, sp, #4
 719              		@ sp needed
 720 0134 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 721              	.L92:
 722 0138 D8F80030 		ldr	r3, [r8]
 723 013c 1949     		ldr	r1, .L99+20
 724              	.L91:
 725 013e DB68     		ldr	r3, [r3, #12]
 726 0140 4046     		mov	r0, r8
 727 0142 0322     		movs	r2, #3
 728 0144 01B0     		add	sp, sp, #4
 729              		@ sp needed
 730 0146 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 731 014a 1847     		bx	r3
 732              	.L96:
 733 014c D8F80030 		ldr	r3, [r8]
 734 0150 1549     		ldr	r1, .L99+24
 735 0152 F4E7     		b	.L91
 736              	.L97:
 737 0154 D8F80030 		ldr	r3, [r8]
 738 0158 1449     		ldr	r1, .L99+28
 739 015a F0E7     		b	.L91
 740              	.L98:
 741 015c D8F80030 		ldr	r3, [r8]
ARM GAS  /tmp/ccXWbkNi.s 			page 14


 742 0160 2D21     		movs	r1, #45
 743 0162 9B68     		ldr	r3, [r3, #8]
 744 0164 4046     		mov	r0, r8
 745 0166 9847     		blx	r3
 746 0168 09F10049 		add	r9, r9, #-2147483648
 747 016c 0546     		mov	r5, r0
 748 016e 85E7     		b	.L70
 749              	.L78:
 750 0170 0022     		movs	r2, #0
 751 0172 0A4B     		ldr	r3, .L99+12
 752 0174 3846     		mov	r0, r7
 753 0176 4946     		mov	r1, r9
 754 0178 FFF7FEFF 		bl	__aeabi_dadd
 755 017c FFF7FEFF 		bl	__aeabi_d2uiz
 756 0180 0A22     		movs	r2, #10
 757 0182 0146     		mov	r1, r0
 758 0184 4046     		mov	r0, r8
 759 0186 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 760 018a 0544     		add	r5, r5, r0
 761 018c D0E7     		b	.L63
 762              	.L100:
 763 018e 00BF     		.align	2
 764              	.L99:
 765 0190 FFFFEF7F 		.word	2146435071
 766 0194 FFFFEF41 		.word	1106247679
 767 0198 FFFFEFC1 		.word	-1041235969
 768 019c 0000E03F 		.word	1071644672
 769 01a0 0C000000 		.word	.LC3
 770 01a4 04000000 		.word	.LC1
 771 01a8 08000000 		.word	.LC2
 772 01ac 00000000 		.word	.LC0
 773 01b0 00002440 		.word	1076101120
 774              		.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
 775              		.section	.text._ZN5Print5printEdi,"ax",%progbits
 776              		.align	1
 777              		.p2align 2,,3
 778              		.global	_ZN5Print5printEdi
 779              		.syntax unified
 780              		.thumb
 781              		.thumb_func
 782              		.fpu softvfp
 783              		.type	_ZN5Print5printEdi, %function
 784              	_ZN5Print5printEdi:
 785              		@ args = 4, pretend = 0, frame = 0
 786              		@ frame_needed = 0, uses_anonymous_args = 0
 787              		@ link register save eliminated.
 788 0000 9DF80010 		ldrb	r1, [sp]	@ zero_extendqisi2
 789 0004 0091     		str	r1, [sp]
 790 0006 FFF7FEBF 		b	_ZN5Print10printFloatEdh
 791              		.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
 792 000a 00BF     		.section	.text._ZN5Print7printlnEdi,"ax",%progbits
 793              		.align	1
 794              		.p2align 2,,3
 795              		.global	_ZN5Print7printlnEdi
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
ARM GAS  /tmp/ccXWbkNi.s 			page 15


 799              		.fpu softvfp
 800              		.type	_ZN5Print7printlnEdi, %function
 801              	_ZN5Print7printlnEdi:
 802              		@ args = 4, pretend = 0, frame = 0
 803              		@ frame_needed = 0, uses_anonymous_args = 0
 804 0000 70B5     		push	{r4, r5, r6, lr}
 805 0002 82B0     		sub	sp, sp, #8
 806 0004 0446     		mov	r4, r0
 807 0006 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
 808 000a 0091     		str	r1, [sp]
 809 000c FFF7FEFF 		bl	_ZN5Print10printFloatEdh
 810 0010 2368     		ldr	r3, [r4]
 811 0012 0646     		mov	r6, r0
 812 0014 9B68     		ldr	r3, [r3, #8]
 813 0016 2046     		mov	r0, r4
 814 0018 0D21     		movs	r1, #13
 815 001a 9847     		blx	r3
 816 001c 2368     		ldr	r3, [r4]
 817 001e 0546     		mov	r5, r0
 818 0020 9B68     		ldr	r3, [r3, #8]
 819 0022 2046     		mov	r0, r4
 820 0024 0A21     		movs	r1, #10
 821 0026 9847     		blx	r3
 822 0028 3544     		add	r5, r5, r6
 823 002a 2844     		add	r0, r0, r5
 824 002c 02B0     		add	sp, sp, #8
 825              		@ sp needed
 826 002e 70BD     		pop	{r4, r5, r6, pc}
 827              		.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
 828              		.global	_ZTV5Print
 829              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 830              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 831              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 832              	_ZL28cpu_irq_prev_interrupt_state:
 833 0000 00       		.space	1
 834              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 835              		.align	2
 836              		.type	_ZL32cpu_irq_critical_section_counter, %object
 837              		.size	_ZL32cpu_irq_critical_section_counter, 4
 838              	_ZL32cpu_irq_critical_section_counter:
 839 0000 00000000 		.space	4
 840              		.section	.rodata._ZN5Print10printFloatEdh.str1.4,"aMS",%progbits,1
 841              		.align	2
 842              	.LC0:
 843 0000 696E6600 		.ascii	"inf\000"
 844              	.LC1:
 845 0004 6F766600 		.ascii	"ovf\000"
 846              	.LC2:
 847 0008 6E616E00 		.ascii	"nan\000"
 848              	.LC3:
 849 000c 2E00     		.ascii	".\000"
 850              		.section	.rodata._ZTV5Print,"a",%progbits
 851              		.align	2
 852              		.type	_ZTV5Print, %object
 853              		.size	_ZTV5Print, 24
 854              	_ZTV5Print:
 855 0000 00000000 		.word	0
ARM GAS  /tmp/ccXWbkNi.s 			page 16


 856 0004 00000000 		.word	0
 857 0008 00000000 		.word	0
 858 000c 00000000 		.word	0
 859 0010 00000000 		.word	__cxa_pure_virtual
 860 0014 00000000 		.word	_ZN5Print5writeEPKhj
 861              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
