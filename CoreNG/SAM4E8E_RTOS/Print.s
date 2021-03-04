ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN5Print5writeEPKhj,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN5Print5writeEPKhj
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN5Print5writeEPKhj, %function
  24              	_ZN5Print5writeEPKhj:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  28 0002 72B1     		cbz	r2, .L4
  29 0004 0646     		mov	r6, r0
  30 0006 0C46     		mov	r4, r1
  31 0008 8F18     		adds	r7, r1, r2
  32 000a 0025     		movs	r5, #0
  33              	.L3:
  34 000c 3368     		ldr	r3, [r6]
  35 000e 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
  36 0012 9B68     		ldr	r3, [r3, #8]
  37 0014 3046     		mov	r0, r6
  38 0016 9847     		blx	r3
  39 0018 A742     		cmp	r7, r4
  40 001a 0544     		add	r5, r5, r0
  41 001c F6D1     		bne	.L3
  42 001e 2846     		mov	r0, r5
  43 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  44              	.L4:
  45 0022 1546     		mov	r5, r2
  46 0024 2846     		mov	r0, r5
  47 0026 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  48              		.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
  49              		.section	.text._ZN5Print5printEPKc,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_ZN5Print5printEPKc
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_ZN5Print5printEPKc, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 2


  58              	_ZN5Print5printEPKc:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 69B1     		cbz	r1, .L9
  62 0002 70B5     		push	{r4, r5, r6, lr}
  63 0004 0546     		mov	r5, r0
  64 0006 0846     		mov	r0, r1
  65 0008 0C46     		mov	r4, r1
  66 000a FFF7FEFF 		bl	strlen
  67 000e 2B68     		ldr	r3, [r5]
  68 0010 0246     		mov	r2, r0
  69 0012 2146     		mov	r1, r4
  70 0014 2846     		mov	r0, r5
  71 0016 DB68     		ldr	r3, [r3, #12]
  72 0018 BDE87040 		pop	{r4, r5, r6, lr}
  73 001c 1847     		bx	r3
  74              	.L9:
  75 001e 0846     		mov	r0, r1
  76 0020 7047     		bx	lr
  77              		.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
  78 0022 00BF     		.section	.text._ZN5Print5printEc,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	_ZN5Print5printEc
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_ZN5Print5printEc, %function
  87              	_ZN5Print5printEc:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 0368     		ldr	r3, [r0]
  92 0002 9B68     		ldr	r3, [r3, #8]
  93 0004 1847     		bx	r3
  94              		.size	_ZN5Print5printEc, .-_ZN5Print5printEc
  95 0006 00BF     		.section	.text._ZN5Print5printERK9Printable,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN5Print5printERK9Printable
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	_ZN5Print5printERK9Printable, %function
 104              	_ZN5Print5printERK9Printable:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108 0000 0B46     		mov	r3, r1
 109 0002 0146     		mov	r1, r0
 110 0004 1A68     		ldr	r2, [r3]
 111 0006 1846     		mov	r0, r3
 112 0008 9368     		ldr	r3, [r2, #8]
 113 000a 1847     		bx	r3
 114              		.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 3


 115              		.section	.text._ZN5Print7printlnEv,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_ZN5Print7printlnEv
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	_ZN5Print7printlnEv, %function
 124              	_ZN5Print7printlnEv:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127 0000 38B5     		push	{r3, r4, r5, lr}
 128 0002 0368     		ldr	r3, [r0]
 129 0004 0446     		mov	r4, r0
 130 0006 0D21     		movs	r1, #13
 131 0008 9B68     		ldr	r3, [r3, #8]
 132 000a 9847     		blx	r3
 133 000c 2368     		ldr	r3, [r4]
 134 000e 0546     		mov	r5, r0
 135 0010 9B68     		ldr	r3, [r3, #8]
 136 0012 2046     		mov	r0, r4
 137 0014 0A21     		movs	r1, #10
 138 0016 9847     		blx	r3
 139 0018 2844     		add	r0, r0, r5
 140 001a 38BD     		pop	{r3, r4, r5, pc}
 141              		.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
 142              		.section	.text._ZN5Print7printlnEPKc,"ax",%progbits
 143              		.align	1
 144              		.p2align 2,,3
 145              		.global	_ZN5Print7printlnEPKc
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZN5Print7printlnEPKc, %function
 151              	_ZN5Print7printlnEPKc:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 70B5     		push	{r4, r5, r6, lr}
 155 0002 0446     		mov	r4, r0
 156 0004 0D46     		mov	r5, r1
 157 0006 0668     		ldr	r6, [r0]
 158 0008 49B1     		cbz	r1, .L18
 159 000a 0846     		mov	r0, r1
 160 000c FFF7FEFF 		bl	strlen
 161 0010 F368     		ldr	r3, [r6, #12]
 162 0012 0246     		mov	r2, r0
 163 0014 2946     		mov	r1, r5
 164 0016 2046     		mov	r0, r4
 165 0018 9847     		blx	r3
 166 001a 2668     		ldr	r6, [r4]
 167 001c 0546     		mov	r5, r0
 168              	.L18:
 169 001e B368     		ldr	r3, [r6, #8]
 170 0020 0D21     		movs	r1, #13
 171 0022 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 4


 172 0024 9847     		blx	r3
 173 0026 2368     		ldr	r3, [r4]
 174 0028 0646     		mov	r6, r0
 175 002a 9B68     		ldr	r3, [r3, #8]
 176 002c 2046     		mov	r0, r4
 177 002e 0A21     		movs	r1, #10
 178 0030 9847     		blx	r3
 179 0032 3544     		add	r5, r5, r6
 180 0034 2844     		add	r0, r0, r5
 181 0036 70BD     		pop	{r4, r5, r6, pc}
 182              		.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
 183              		.section	.text._ZN5Print7printlnEc,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN5Print7printlnEc
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN5Print7printlnEc, %function
 192              	_ZN5Print7printlnEc:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 0368     		ldr	r3, [r0]
 196 0002 70B5     		push	{r4, r5, r6, lr}
 197 0004 9B68     		ldr	r3, [r3, #8]
 198 0006 0446     		mov	r4, r0
 199 0008 9847     		blx	r3
 200 000a 2368     		ldr	r3, [r4]
 201 000c 0646     		mov	r6, r0
 202 000e 9B68     		ldr	r3, [r3, #8]
 203 0010 2046     		mov	r0, r4
 204 0012 0D21     		movs	r1, #13
 205 0014 9847     		blx	r3
 206 0016 2368     		ldr	r3, [r4]
 207 0018 0546     		mov	r5, r0
 208 001a 9B68     		ldr	r3, [r3, #8]
 209 001c 2046     		mov	r0, r4
 210 001e 0A21     		movs	r1, #10
 211 0020 9847     		blx	r3
 212 0022 3544     		add	r5, r5, r6
 213 0024 2844     		add	r0, r0, r5
 214 0026 70BD     		pop	{r4, r5, r6, pc}
 215              		.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
 216              		.section	.text._ZN5Print7printlnERK9Printable,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN5Print7printlnERK9Printable
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	_ZN5Print7printlnERK9Printable, %function
 225              	_ZN5Print7printlnERK9Printable:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 0B68     		ldr	r3, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 5


 229 0002 70B5     		push	{r4, r5, r6, lr}
 230 0004 0446     		mov	r4, r0
 231 0006 9B68     		ldr	r3, [r3, #8]
 232 0008 0846     		mov	r0, r1
 233 000a 2146     		mov	r1, r4
 234 000c 9847     		blx	r3
 235 000e 2368     		ldr	r3, [r4]
 236 0010 0646     		mov	r6, r0
 237 0012 9B68     		ldr	r3, [r3, #8]
 238 0014 2046     		mov	r0, r4
 239 0016 0D21     		movs	r1, #13
 240 0018 9847     		blx	r3
 241 001a 2368     		ldr	r3, [r4]
 242 001c 0546     		mov	r5, r0
 243 001e 9B68     		ldr	r3, [r3, #8]
 244 0020 2046     		mov	r0, r4
 245 0022 0A21     		movs	r1, #10
 246 0024 9847     		blx	r3
 247 0026 3544     		add	r5, r5, r6
 248 0028 2844     		add	r0, r0, r5
 249 002a 70BD     		pop	{r4, r5, r6, pc}
 250              		.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
 251              		.section	.text._ZN5Print11printNumberEmh,"ax",%progbits
 252              		.align	1
 253              		.p2align 2,,3
 254              		.global	_ZN5Print11printNumberEmh
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu fpv4-sp-d16
 259              		.type	_ZN5Print11printNumberEmh, %function
 260              	_ZN5Print11printNumberEmh:
 261              		@ args = 0, pretend = 0, frame = 40
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263 0000 70B5     		push	{r4, r5, r6, lr}
 264 0002 012A     		cmp	r2, #1
 265 0004 8AB0     		sub	sp, sp, #40
 266 0006 4FF00004 		mov	r4, #0
 267 000a 98BF     		it	ls
 268 000c 0A26     		movls	r6, #10
 269 000e 8DF82440 		strb	r4, [sp, #36]
 270 0012 0546     		mov	r5, r0
 271 0014 8CBF     		ite	hi
 272 0016 1646     		movhi	r6, r2
 273 0018 3246     		movls	r2, r6
 274 001a 09AC     		add	r4, sp, #36
 275              	.L29:
 276 001c B1FBF6F0 		udiv	r0, r1, r6
 277 0020 00FB1213 		mls	r3, r0, r2, r1
 278 0024 03F0FF03 		and	r3, r3, #255
 279 0028 092B     		cmp	r3, #9
 280 002a 03F13001 		add	r1, r3, #48
 281 002e 8ABF     		itet	hi
 282 0030 3733     		addhi	r3, r3, #55
 283 0032 CBB2     		uxtbls	r3, r1
 284 0034 DBB2     		uxtbhi	r3, r3
 285 0036 04F8013D 		strb	r3, [r4, #-1]!
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 6


 286 003a 0146     		mov	r1, r0
 287 003c 0028     		cmp	r0, #0
 288 003e EDD1     		bne	.L29
 289 0040 2046     		mov	r0, r4
 290 0042 FFF7FEFF 		bl	strlen
 291 0046 2B68     		ldr	r3, [r5]
 292 0048 0246     		mov	r2, r0
 293 004a 2146     		mov	r1, r4
 294 004c DB68     		ldr	r3, [r3, #12]
 295 004e 2846     		mov	r0, r5
 296 0050 9847     		blx	r3
 297 0052 0AB0     		add	sp, sp, #40
 298              		@ sp needed
 299 0054 70BD     		pop	{r4, r5, r6, pc}
 300              		.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
 301 0056 00BF     		.section	.text._ZN5Print5printEli,"ax",%progbits
 302              		.align	1
 303              		.p2align 2,,3
 304              		.global	_ZN5Print5printEli
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu fpv4-sp-d16
 309              		.type	_ZN5Print5printEli, %function
 310              	_ZN5Print5printEli:
 311              		@ args = 0, pretend = 0, frame = 0
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 314 0004 0646     		mov	r6, r0
 315 0006 0D46     		mov	r5, r1
 316 0008 B2B1     		cbz	r2, .L42
 317 000a 0A2A     		cmp	r2, #10
 318 000c 1446     		mov	r4, r2
 319 000e 0ED1     		bne	.L35
 320 0010 0029     		cmp	r1, #0
 321 0012 0DDA     		bge	.L41
 322 0014 0368     		ldr	r3, [r0]
 323 0016 2D21     		movs	r1, #45
 324 0018 9B68     		ldr	r3, [r3, #8]
 325 001a 9847     		blx	r3
 326 001c 2246     		mov	r2, r4
 327 001e 0746     		mov	r7, r0
 328 0020 6942     		negs	r1, r5
 329 0022 3046     		mov	r0, r6
 330 0024 FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 331 0028 3844     		add	r0, r0, r7
 332 002a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 333              	.L35:
 334 002e D2B2     		uxtb	r2, r2
 335              	.L41:
 336 0030 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 337 0034 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 338              	.L42:
 339 0038 0368     		ldr	r3, [r0]
 340 003a C9B2     		uxtb	r1, r1
 341 003c 9B68     		ldr	r3, [r3, #8]
 342 003e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 7


 343 0042 1847     		bx	r3
 344              		.size	_ZN5Print5printEli, .-_ZN5Print5printEli
 345              		.section	.text._ZN5Print5printEii,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_ZN5Print5printEii
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	_ZN5Print5printEii, %function
 354              	_ZN5Print5printEii:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 FFF7FEBF 		b	_ZN5Print5printEli
 359              		.size	_ZN5Print5printEii, .-_ZN5Print5printEii
 360              		.section	.text._ZN5Print7printlnEii,"ax",%progbits
 361              		.align	1
 362              		.p2align 2,,3
 363              		.global	_ZN5Print7printlnEii
 364              		.syntax unified
 365              		.thumb
 366              		.thumb_func
 367              		.fpu fpv4-sp-d16
 368              		.type	_ZN5Print7printlnEii, %function
 369              	_ZN5Print7printlnEii:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372 0000 70B5     		push	{r4, r5, r6, lr}
 373 0002 0446     		mov	r4, r0
 374 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 375 0008 2368     		ldr	r3, [r4]
 376 000a 0646     		mov	r6, r0
 377 000c 9B68     		ldr	r3, [r3, #8]
 378 000e 2046     		mov	r0, r4
 379 0010 0D21     		movs	r1, #13
 380 0012 9847     		blx	r3
 381 0014 2368     		ldr	r3, [r4]
 382 0016 0546     		mov	r5, r0
 383 0018 9B68     		ldr	r3, [r3, #8]
 384 001a 2046     		mov	r0, r4
 385 001c 0A21     		movs	r1, #10
 386 001e 9847     		blx	r3
 387 0020 3544     		add	r5, r5, r6
 388 0022 2844     		add	r0, r0, r5
 389 0024 70BD     		pop	{r4, r5, r6, pc}
 390              		.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
 391 0026 00BF     		.section	.text._ZN5Print7printlnEli,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	_ZN5Print7printlnEli
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv4-sp-d16
 399              		.type	_ZN5Print7printlnEli, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 8


 400              	_ZN5Print7printlnEli:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 70B5     		push	{r4, r5, r6, lr}
 404 0002 0446     		mov	r4, r0
 405 0004 FFF7FEFF 		bl	_ZN5Print5printEli
 406 0008 2368     		ldr	r3, [r4]
 407 000a 0546     		mov	r5, r0
 408 000c 9B68     		ldr	r3, [r3, #8]
 409 000e 2046     		mov	r0, r4
 410 0010 0D21     		movs	r1, #13
 411 0012 9847     		blx	r3
 412 0014 2368     		ldr	r3, [r4]
 413 0016 0646     		mov	r6, r0
 414 0018 9B68     		ldr	r3, [r3, #8]
 415 001a 2046     		mov	r0, r4
 416 001c 0A21     		movs	r1, #10
 417 001e 9847     		blx	r3
 418 0020 3544     		add	r5, r5, r6
 419 0022 2844     		add	r0, r0, r5
 420 0024 70BD     		pop	{r4, r5, r6, pc}
 421              		.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
 422 0026 00BF     		.section	.text._ZN5Print5printEmi,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	_ZN5Print5printEmi
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu fpv4-sp-d16
 430              		.type	_ZN5Print5printEmi, %function
 431              	_ZN5Print5printEmi:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 32B9     		cbnz	r2, .L49
 436 0002 0268     		ldr	r2, [r0]
 437 0004 10B4     		push	{r4}
 438 0006 C9B2     		uxtb	r1, r1
 439 0008 9368     		ldr	r3, [r2, #8]
 440 000a 5DF8044B 		ldr	r4, [sp], #4
 441 000e 1847     		bx	r3
 442              	.L49:
 443 0010 D2B2     		uxtb	r2, r2
 444 0012 FFF7FEBF 		b	_ZN5Print11printNumberEmh
 445              		.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
 446 0016 00BF     		.section	.text._ZN5Print5printEhi,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	_ZN5Print5printEhi
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 454              		.type	_ZN5Print5printEhi, %function
 455              	_ZN5Print5printEhi:
 456              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458              		@ link register save eliminated.
 459 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 460              		.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
 461              		.section	.text._ZN5Print7printlnEhi,"ax",%progbits
 462              		.align	1
 463              		.p2align 2,,3
 464              		.global	_ZN5Print7printlnEhi
 465              		.syntax unified
 466              		.thumb
 467              		.thumb_func
 468              		.fpu fpv4-sp-d16
 469              		.type	_ZN5Print7printlnEhi, %function
 470              	_ZN5Print7printlnEhi:
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473 0000 70B5     		push	{r4, r5, r6, lr}
 474 0002 0446     		mov	r4, r0
 475 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 476 0008 2368     		ldr	r3, [r4]
 477 000a 0646     		mov	r6, r0
 478 000c 9B68     		ldr	r3, [r3, #8]
 479 000e 2046     		mov	r0, r4
 480 0010 0D21     		movs	r1, #13
 481 0012 9847     		blx	r3
 482 0014 2368     		ldr	r3, [r4]
 483 0016 0546     		mov	r5, r0
 484 0018 9B68     		ldr	r3, [r3, #8]
 485 001a 2046     		mov	r0, r4
 486 001c 0A21     		movs	r1, #10
 487 001e 9847     		blx	r3
 488 0020 3544     		add	r5, r5, r6
 489 0022 2844     		add	r0, r0, r5
 490 0024 70BD     		pop	{r4, r5, r6, pc}
 491              		.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
 492 0026 00BF     		.section	.text._ZN5Print5printEji,"ax",%progbits
 493              		.align	1
 494              		.p2align 2,,3
 495              		.global	_ZN5Print5printEji
 496              		.syntax unified
 497              		.thumb
 498              		.thumb_func
 499              		.fpu fpv4-sp-d16
 500              		.type	_ZN5Print5printEji, %function
 501              	_ZN5Print5printEji:
 502              		@ args = 0, pretend = 0, frame = 0
 503              		@ frame_needed = 0, uses_anonymous_args = 0
 504              		@ link register save eliminated.
 505 0000 FFF7FEBF 		b	_ZN5Print5printEmi
 506              		.size	_ZN5Print5printEji, .-_ZN5Print5printEji
 507              		.section	.text._ZN5Print7printlnEji,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	_ZN5Print7printlnEji
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	_ZN5Print7printlnEji, %function
 516              	_ZN5Print7printlnEji:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 70B5     		push	{r4, r5, r6, lr}
 520 0002 0446     		mov	r4, r0
 521 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 522 0008 2368     		ldr	r3, [r4]
 523 000a 0646     		mov	r6, r0
 524 000c 9B68     		ldr	r3, [r3, #8]
 525 000e 2046     		mov	r0, r4
 526 0010 0D21     		movs	r1, #13
 527 0012 9847     		blx	r3
 528 0014 2368     		ldr	r3, [r4]
 529 0016 0546     		mov	r5, r0
 530 0018 9B68     		ldr	r3, [r3, #8]
 531 001a 2046     		mov	r0, r4
 532 001c 0A21     		movs	r1, #10
 533 001e 9847     		blx	r3
 534 0020 3544     		add	r5, r5, r6
 535 0022 2844     		add	r0, r0, r5
 536 0024 70BD     		pop	{r4, r5, r6, pc}
 537              		.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
 538 0026 00BF     		.section	.text._ZN5Print7printlnEmi,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	_ZN5Print7printlnEmi
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu fpv4-sp-d16
 546              		.type	_ZN5Print7printlnEmi, %function
 547              	_ZN5Print7printlnEmi:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550 0000 70B5     		push	{r4, r5, r6, lr}
 551 0002 0446     		mov	r4, r0
 552 0004 FFF7FEFF 		bl	_ZN5Print5printEmi
 553 0008 2368     		ldr	r3, [r4]
 554 000a 0546     		mov	r5, r0
 555 000c 9B68     		ldr	r3, [r3, #8]
 556 000e 2046     		mov	r0, r4
 557 0010 0D21     		movs	r1, #13
 558 0012 9847     		blx	r3
 559 0014 2368     		ldr	r3, [r4]
 560 0016 0646     		mov	r6, r0
 561 0018 9B68     		ldr	r3, [r3, #8]
 562 001a 2046     		mov	r0, r4
 563 001c 0A21     		movs	r1, #10
 564 001e 9847     		blx	r3
 565 0020 3544     		add	r5, r5, r6
 566 0022 2844     		add	r0, r0, r5
 567 0024 70BD     		pop	{r4, r5, r6, pc}
 568              		.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
 569              		.global	__aeabi_dcmpun
 570              		.global	__aeabi_dcmple
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 11


 571              		.global	__aeabi_dcmpgt
 572              		.global	__aeabi_dcmplt
 573              		.global	__aeabi_ddiv
 574              		.global	__aeabi_dmul
 575              		.global	__aeabi_d2iz
 576              		.global	__aeabi_i2d
 577              		.global	__aeabi_dsub
 578              		.global	__aeabi_dadd
 579              		.global	__aeabi_d2uiz
 580              		.global	__aeabi_ui2d
 581 0026 00BF     		.section	.text._ZN5Print10printFloatEdh,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	_ZN5Print10printFloatEdh
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu fpv4-sp-d16
 589              		.type	_ZN5Print10printFloatEdh, %function
 590              	_ZN5Print10printFloatEdh:
 591              		@ args = 0, pretend = 0, frame = 0
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 594 0004 57EC106B 		vmov	r6, r7, d0
 595 0008 81B0     		sub	sp, sp, #4
 596 000a 0546     		mov	r5, r0
 597 000c 0C46     		mov	r4, r1
 598 000e 10EE102A 		vmov	r2, s0	@ int
 599 0012 3B46     		mov	r3, r7
 600 0014 10EE100A 		vmov	r0, s0	@ int
 601 0018 3946     		mov	r1, r7
 602 001a FFF7FEFF 		bl	__aeabi_dcmpun
 603 001e 0028     		cmp	r0, #0
 604 0020 40F0B880 		bne	.L89
 605 0024 27F00049 		bic	r9, r7, #-2147483648
 606 0028 3046     		mov	r0, r6
 607 002a 4946     		mov	r1, r9
 608 002c 4FF0FF32 		mov	r2, #-1
 609 0030 5A4B     		ldr	r3, .L92
 610 0032 FFF7FEFF 		bl	__aeabi_dcmpun
 611 0036 48B9     		cbnz	r0, .L64
 612 0038 3046     		mov	r0, r6
 613 003a 4946     		mov	r1, r9
 614 003c 4FF0FF32 		mov	r2, #-1
 615 0040 564B     		ldr	r3, .L92
 616 0042 FFF7FEFF 		bl	__aeabi_dcmple
 617 0046 0028     		cmp	r0, #0
 618 0048 00F08780 		beq	.L90
 619              	.L64:
 620 004c 4FF06042 		mov	r2, #-536870912
 621 0050 534B     		ldr	r3, .L92+4
 622 0052 3046     		mov	r0, r6
 623 0054 3946     		mov	r1, r7
 624 0056 FFF7FEFF 		bl	__aeabi_dcmpgt
 625 005a 0028     		cmp	r0, #0
 626 005c 74D1     		bne	.L88
 627 005e 4FF06042 		mov	r2, #-536870912
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 12


 628 0062 504B     		ldr	r3, .L92+8
 629 0064 3046     		mov	r0, r6
 630 0066 3946     		mov	r1, r7
 631 0068 FFF7FEFF 		bl	__aeabi_dcmplt
 632 006c 0028     		cmp	r0, #0
 633 006e 6BD1     		bne	.L88
 634 0070 0022     		movs	r2, #0
 635 0072 0023     		movs	r3, #0
 636 0074 3046     		mov	r0, r6
 637 0076 3946     		mov	r1, r7
 638 0078 FFF7FEFF 		bl	__aeabi_dcmplt
 639 007c 0028     		cmp	r0, #0
 640 007e 6FD1     		bne	.L91
 641 0080 8246     		mov	r10, r0
 642              	.L69:
 643 0082 002C     		cmp	r4, #0
 644 0084 76D0     		beq	.L71
 645 0086 484B     		ldr	r3, .L92+12
 646 0088 DFF83091 		ldr	r9, .L92+32
 647 008c 0022     		movs	r2, #0
 648 008e 4FF00008 		mov	r8, #0
 649 0092 4FF0000B 		mov	fp, #0
 650              	.L73:
 651 0096 1046     		mov	r0, r2
 652 0098 1946     		mov	r1, r3
 653 009a 4246     		mov	r2, r8
 654 009c 4B46     		mov	r3, r9
 655 009e FFF7FEFF 		bl	__aeabi_ddiv
 656 00a2 0BF1010B 		add	fp, fp, #1
 657 00a6 5FFA8BFC 		uxtb	ip, fp
 658 00aa 6445     		cmp	r4, ip
 659 00ac 0246     		mov	r2, r0
 660 00ae 0B46     		mov	r3, r1
 661 00b0 F1D8     		bhi	.L73
 662 00b2 3246     		mov	r2, r6
 663 00b4 3B46     		mov	r3, r7
 664 00b6 FFF7FEFF 		bl	__aeabi_dadd
 665 00ba 0F46     		mov	r7, r1
 666 00bc 0646     		mov	r6, r0
 667 00be FFF7FEFF 		bl	__aeabi_d2uiz
 668 00c2 8046     		mov	r8, r0
 669 00c4 FFF7FEFF 		bl	__aeabi_ui2d
 670 00c8 0B46     		mov	r3, r1
 671 00ca 0246     		mov	r2, r0
 672 00cc 3946     		mov	r1, r7
 673 00ce 3046     		mov	r0, r6
 674 00d0 FFF7FEFF 		bl	__aeabi_dsub
 675 00d4 0A22     		movs	r2, #10
 676 00d6 0646     		mov	r6, r0
 677 00d8 0F46     		mov	r7, r1
 678 00da 2846     		mov	r0, r5
 679 00dc 4146     		mov	r1, r8
 680 00de FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 681 00e2 2B68     		ldr	r3, [r5]
 682 00e4 3149     		ldr	r1, .L92+16
 683 00e6 DB68     		ldr	r3, [r3, #12]
 684 00e8 DFF8D0B0 		ldr	fp, .L92+32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 13


 685 00ec 8046     		mov	r8, r0
 686 00ee 0122     		movs	r2, #1
 687 00f0 2846     		mov	r0, r5
 688 00f2 9847     		blx	r3
 689 00f4 013C     		subs	r4, r4, #1
 690 00f6 8044     		add	r8, r8, r0
 691 00f8 D044     		add	r8, r8, r10
 692 00fa E4B2     		uxtb	r4, r4
 693 00fc 4FF0000A 		mov	r10, #0
 694              	.L74:
 695 0100 5B46     		mov	r3, fp
 696 0102 5246     		mov	r2, r10
 697 0104 3046     		mov	r0, r6
 698 0106 3946     		mov	r1, r7
 699 0108 FFF7FEFF 		bl	__aeabi_dmul
 700 010c 0F46     		mov	r7, r1
 701 010e 0646     		mov	r6, r0
 702 0110 FFF7FEFF 		bl	__aeabi_d2iz
 703 0114 0A22     		movs	r2, #10
 704 0116 0146     		mov	r1, r0
 705 0118 8146     		mov	r9, r0
 706 011a 2846     		mov	r0, r5
 707 011c FFF7FEFF 		bl	_ZN5Print5printEli
 708 0120 8044     		add	r8, r8, r0
 709 0122 4846     		mov	r0, r9
 710 0124 FFF7FEFF 		bl	__aeabi_i2d
 711 0128 0246     		mov	r2, r0
 712 012a 0B46     		mov	r3, r1
 713 012c 3046     		mov	r0, r6
 714 012e 3946     		mov	r1, r7
 715 0130 FFF7FEFF 		bl	__aeabi_dsub
 716 0134 013C     		subs	r4, r4, #1
 717 0136 E4B2     		uxtb	r4, r4
 718 0138 FF2C     		cmp	r4, #255
 719 013a 0646     		mov	r6, r0
 720 013c 0F46     		mov	r7, r1
 721 013e DFD1     		bne	.L74
 722              	.L61:
 723 0140 4046     		mov	r0, r8
 724 0142 01B0     		add	sp, sp, #4
 725              		@ sp needed
 726 0144 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 727              	.L88:
 728 0148 2B68     		ldr	r3, [r5]
 729 014a 1949     		ldr	r1, .L92+20
 730              	.L87:
 731 014c DB68     		ldr	r3, [r3, #12]
 732 014e 2846     		mov	r0, r5
 733 0150 0322     		movs	r2, #3
 734 0152 01B0     		add	sp, sp, #4
 735              		@ sp needed
 736 0154 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 737 0158 1847     		bx	r3
 738              	.L90:
 739 015a 2B68     		ldr	r3, [r5]
 740 015c 1549     		ldr	r1, .L92+24
 741 015e F5E7     		b	.L87
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 14


 742              	.L91:
 743 0160 2B68     		ldr	r3, [r5]
 744 0162 2D21     		movs	r1, #45
 745 0164 9B68     		ldr	r3, [r3, #8]
 746 0166 2846     		mov	r0, r5
 747 0168 9847     		blx	r3
 748 016a 07F10043 		add	r3, r7, #-2147483648
 749 016e 8246     		mov	r10, r0
 750 0170 1F46     		mov	r7, r3
 751 0172 86E7     		b	.L69
 752              	.L71:
 753 0174 0022     		movs	r2, #0
 754 0176 0C4B     		ldr	r3, .L92+12
 755 0178 3046     		mov	r0, r6
 756 017a 3946     		mov	r1, r7
 757 017c FFF7FEFF 		bl	__aeabi_dadd
 758 0180 FFF7FEFF 		bl	__aeabi_d2uiz
 759 0184 0A22     		movs	r2, #10
 760 0186 0146     		mov	r1, r0
 761 0188 2846     		mov	r0, r5
 762 018a FFF7FEFF 		bl	_ZN5Print11printNumberEmh
 763 018e 0AEB0008 		add	r8, r10, r0
 764 0192 D5E7     		b	.L61
 765              	.L89:
 766 0194 2B68     		ldr	r3, [r5]
 767 0196 0849     		ldr	r1, .L92+28
 768 0198 D8E7     		b	.L87
 769              	.L93:
 770 019a 00BF     		.align	2
 771              	.L92:
 772 019c FFFFEF7F 		.word	2146435071
 773 01a0 FFFFEF41 		.word	1106247679
 774 01a4 FFFFEFC1 		.word	-1041235969
 775 01a8 0000E03F 		.word	1071644672
 776 01ac 0C000000 		.word	.LC3
 777 01b0 08000000 		.word	.LC2
 778 01b4 04000000 		.word	.LC1
 779 01b8 00000000 		.word	.LC0
 780 01bc 00002440 		.word	1076101120
 781              		.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
 782              		.section	.text._ZN5Print5printEdi,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	_ZN5Print5printEdi
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	_ZN5Print5printEdi, %function
 791              	_ZN5Print5printEdi:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 C9B2     		uxtb	r1, r1
 796 0002 FFF7FEBF 		b	_ZN5Print10printFloatEdh
 797              		.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
 798 0006 00BF     		.section	.text._ZN5Print7printlnEdi,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	_ZN5Print7printlnEdi
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	_ZN5Print7printlnEdi, %function
 807              	_ZN5Print7printlnEdi:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 70B5     		push	{r4, r5, r6, lr}
 811 0002 C9B2     		uxtb	r1, r1
 812 0004 0446     		mov	r4, r0
 813 0006 FFF7FEFF 		bl	_ZN5Print10printFloatEdh
 814 000a 2368     		ldr	r3, [r4]
 815 000c 0646     		mov	r6, r0
 816 000e 9B68     		ldr	r3, [r3, #8]
 817 0010 2046     		mov	r0, r4
 818 0012 0D21     		movs	r1, #13
 819 0014 9847     		blx	r3
 820 0016 2368     		ldr	r3, [r4]
 821 0018 0546     		mov	r5, r0
 822 001a 9B68     		ldr	r3, [r3, #8]
 823 001c 2046     		mov	r0, r4
 824 001e 0A21     		movs	r1, #10
 825 0020 9847     		blx	r3
 826 0022 3544     		add	r5, r5, r6
 827 0024 2844     		add	r0, r0, r5
 828 0026 70BD     		pop	{r4, r5, r6, pc}
 829              		.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
 830              		.global	_ZTV5Print
 831              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 832              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 833              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 834              	_ZL28cpu_irq_prev_interrupt_state:
 835 0000 00       		.space	1
 836              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 837              		.align	2
 838              		.type	_ZL32cpu_irq_critical_section_counter, %object
 839              		.size	_ZL32cpu_irq_critical_section_counter, 4
 840              	_ZL32cpu_irq_critical_section_counter:
 841 0000 00000000 		.space	4
 842              		.section	.rodata._ZN5Print10printFloatEdh.str1.4,"aMS",%progbits,1
 843              		.align	2
 844              	.LC0:
 845 0000 6E616E00 		.ascii	"nan\000"
 846              	.LC1:
 847 0004 696E6600 		.ascii	"inf\000"
 848              	.LC2:
 849 0008 6F766600 		.ascii	"ovf\000"
 850              	.LC3:
 851 000c 2E00     		.ascii	".\000"
 852              		.section	.rodata._ZTV5Print,"a",%progbits
 853              		.align	2
 854              		.type	_ZTV5Print, %object
 855              		.size	_ZTV5Print, 24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccdQXEpI.s 			page 16


 856              	_ZTV5Print:
 857 0000 00000000 		.word	0
 858 0004 00000000 		.word	0
 859 0008 00000000 		.word	0
 860 000c 00000000 		.word	0
 861 0010 00000000 		.word	__cxa_pure_virtual
 862 0014 00000000 		.word	_ZN5Print5writeEPKhj
 863              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
