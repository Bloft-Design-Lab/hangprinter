ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 1


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
  13              		.file	"StringRef.cpp"
  14              		.text
  15              		.section	.text._ZNK9StringRef6strlenEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZNK9StringRef6strlenEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK9StringRef6strlenEv, %function
  24              	_ZNK9StringRef6strlenEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 D0E90001 		ldrd	r0, r1, [r0]
  29 0004 0139     		subs	r1, r1, #1
  30 0006 FFF7FEBF 		b	_Z7StrnlenPKcj
  31              		.size	_ZNK9StringRef6strlenEv, .-_ZNK9StringRef6strlenEv
  32 000a 00BF     		.section	.text._ZNK9StringRef6printfEPKcz,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZNK9StringRef6printfEPKcz
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZNK9StringRef6printfEPKcz, %function
  41              	_ZNK9StringRef6printfEPKcz:
  42              		@ args = 4, pretend = 12, frame = 8
  43              		@ frame_needed = 0, uses_anonymous_args = 1
  44 0000 0EB4     		push	{r1, r2, r3}
  45 0002 00B5     		push	{lr}
  46 0004 82B0     		sub	sp, sp, #8
  47 0006 03AB     		add	r3, sp, #12
  48 0008 D0E90001 		ldrd	r0, r1, [r0]
  49 000c 53F8042B 		ldr	r2, [r3], #4
  50 0010 0193     		str	r3, [sp, #4]
  51 0012 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
  52 0016 02B0     		add	sp, sp, #8
  53              		@ sp needed
  54 0018 5DF804EB 		ldr	lr, [sp], #4
  55 001c 03B0     		add	sp, sp, #12
  56 001e 7047     		bx	lr
  57              		.size	_ZNK9StringRef6printfEPKcz, .-_ZNK9StringRef6printfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 2


  58              		.section	.text._ZNK9StringRef7vprintfEPKcSt9__va_list,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	_ZNK9StringRef7vprintfEPKcSt9__va_list
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	_ZNK9StringRef7vprintfEPKcSt9__va_list, %function
  67              	_ZNK9StringRef7vprintfEPKcSt9__va_list:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 10B4     		push	{r4}
  72 0002 0446     		mov	r4, r0
  73 0004 1346     		mov	r3, r2
  74 0006 0068     		ldr	r0, [r0]
  75 0008 0A46     		mov	r2, r1
  76 000a 6168     		ldr	r1, [r4, #4]
  77 000c 5DF8044B 		ldr	r4, [sp], #4
  78 0010 FFF7FEBF 		b	_Z13SafeVsnprintfPcjPKcSt9__va_list
  79              		.size	_ZNK9StringRef7vprintfEPKcSt9__va_list, .-_ZNK9StringRef7vprintfEPKcSt9__va_list
  80              		.section	.text._ZNK9StringRef4catfEPKcz,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	_ZNK9StringRef4catfEPKcz
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	_ZNK9StringRef4catfEPKcz, %function
  89              	_ZNK9StringRef4catfEPKcz:
  90              		@ args = 4, pretend = 12, frame = 8
  91              		@ frame_needed = 0, uses_anonymous_args = 1
  92 0000 0EB4     		push	{r1, r2, r3}
  93 0002 30B5     		push	{r4, r5, lr}
  94 0004 0546     		mov	r5, r0
  95 0006 D0E90001 		ldrd	r0, r1, [r0]
  96 000a 82B0     		sub	sp, sp, #8
  97 000c 0139     		subs	r1, r1, #1
  98 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
  99 0012 6968     		ldr	r1, [r5, #4]
 100 0014 431C     		adds	r3, r0, #1
 101 0016 8B42     		cmp	r3, r1
 102 0018 05D3     		bcc	.L11
 103 001a 0020     		movs	r0, #0
 104 001c 02B0     		add	sp, sp, #8
 105              		@ sp needed
 106 001e BDE83040 		pop	{r4, r5, lr}
 107 0022 03B0     		add	sp, sp, #12
 108 0024 7047     		bx	lr
 109              	.L11:
 110 0026 0446     		mov	r4, r0
 111 0028 2868     		ldr	r0, [r5]
 112 002a 059A     		ldr	r2, [sp, #20]
 113 002c 06AD     		add	r5, sp, #24
 114 002e 2044     		add	r0, r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 3


 115 0030 091B     		subs	r1, r1, r4
 116 0032 2B46     		mov	r3, r5
 117 0034 0195     		str	r5, [sp, #4]
 118 0036 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 119 003a 2044     		add	r0, r0, r4
 120 003c 02B0     		add	sp, sp, #8
 121              		@ sp needed
 122 003e BDE83040 		pop	{r4, r5, lr}
 123 0042 03B0     		add	sp, sp, #12
 124 0044 7047     		bx	lr
 125              		.size	_ZNK9StringRef4catfEPKcz, .-_ZNK9StringRef4catfEPKcz
 126 0046 00BF     		.section	.text._ZNK9StringRef5vcatfEPKcSt9__va_list,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	_ZNK9StringRef5vcatfEPKcSt9__va_list
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	_ZNK9StringRef5vcatfEPKcSt9__va_list, %function
 135              	_ZNK9StringRef5vcatfEPKcSt9__va_list:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 139 0002 0546     		mov	r5, r0
 140 0004 0E46     		mov	r6, r1
 141 0006 D0E90001 		ldrd	r0, r1, [r0]
 142 000a 0139     		subs	r1, r1, #1
 143 000c 1746     		mov	r7, r2
 144 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
 145 0012 6968     		ldr	r1, [r5, #4]
 146 0014 431C     		adds	r3, r0, #1
 147 0016 8B42     		cmp	r3, r1
 148 0018 01D3     		bcc	.L16
 149 001a 0020     		movs	r0, #0
 150 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 151              	.L16:
 152 001e 0446     		mov	r4, r0
 153 0020 2868     		ldr	r0, [r5]
 154 0022 3B46     		mov	r3, r7
 155 0024 2044     		add	r0, r0, r4
 156 0026 3246     		mov	r2, r6
 157 0028 091B     		subs	r1, r1, r4
 158 002a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 159 002e 2044     		add	r0, r0, r4
 160 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 161              		.size	_ZNK9StringRef5vcatfEPKcSt9__va_list, .-_ZNK9StringRef5vcatfEPKcSt9__va_list
 162 0032 00BF     		.section	.text._ZNK9StringRef4copyEPKc,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	_ZNK9StringRef4copyEPKc
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv4-sp-d16
 170              		.type	_ZNK9StringRef4copyEPKc, %function
 171              	_ZNK9StringRef4copyEPKc:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 175 0002 0546     		mov	r5, r0
 176 0004 0846     		mov	r0, r1
 177 0006 0E46     		mov	r6, r1
 178 0008 FFF7FEFF 		bl	strlen
 179 000c 6B68     		ldr	r3, [r5, #4]
 180 000e 8342     		cmp	r3, r0
 181 0010 94BF     		ite	ls
 182 0012 03F1FF34 		addls	r4, r3, #-1
 183 0016 0446     		movhi	r4, r0
 184 0018 2246     		mov	r2, r4
 185 001a 3146     		mov	r1, r6
 186 001c 2868     		ldr	r0, [r5]
 187 001e 94BF     		ite	ls
 188 0020 0127     		movls	r7, #1
 189 0022 0027     		movhi	r7, #0
 190 0024 FFF7FEFF 		bl	memcpy
 191 0028 2B68     		ldr	r3, [r5]
 192 002a 0022     		movs	r2, #0
 193 002c 1A55     		strb	r2, [r3, r4]
 194 002e 3846     		mov	r0, r7
 195 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 196              		.size	_ZNK9StringRef4copyEPKc, .-_ZNK9StringRef4copyEPKc
 197 0032 00BF     		.section	.text._ZNK9StringRef4copyEPKcj,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZNK9StringRef4copyEPKcj
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZNK9StringRef4copyEPKcj, %function
 206              	_ZNK9StringRef4copyEPKcj:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 210 0002 0546     		mov	r5, r0
 211 0004 0E46     		mov	r6, r1
 212 0006 0846     		mov	r0, r1
 213 0008 1146     		mov	r1, r2
 214 000a FFF7FEFF 		bl	strnlen
 215 000e 6B68     		ldr	r3, [r5, #4]
 216 0010 8342     		cmp	r3, r0
 217 0012 94BF     		ite	ls
 218 0014 03F1FF34 		addls	r4, r3, #-1
 219 0018 0446     		movhi	r4, r0
 220 001a 2246     		mov	r2, r4
 221 001c 3146     		mov	r1, r6
 222 001e 2868     		ldr	r0, [r5]
 223 0020 94BF     		ite	ls
 224 0022 0127     		movls	r7, #1
 225 0024 0027     		movhi	r7, #0
 226 0026 FFF7FEFF 		bl	memcpy
 227 002a 2B68     		ldr	r3, [r5]
 228 002c 0022     		movs	r2, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 5


 229 002e 1A55     		strb	r2, [r3, r4]
 230 0030 3846     		mov	r0, r7
 231 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 232              		.size	_ZNK9StringRef4copyEPKcj, .-_ZNK9StringRef4copyEPKcj
 233              		.section	.text._ZNK9StringRef3catEPKc,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZNK9StringRef3catEPKc
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	_ZNK9StringRef3catEPKc, %function
 242              	_ZNK9StringRef3catEPKc:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 246 0004 0446     		mov	r4, r0
 247 0006 0F46     		mov	r7, r1
 248 0008 D0E90001 		ldrd	r0, r1, [r0]
 249 000c 0139     		subs	r1, r1, #1
 250 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
 251 0012 0646     		mov	r6, r0
 252 0014 3846     		mov	r0, r7
 253 0016 FFF7FEFF 		bl	strlen
 254 001a 6368     		ldr	r3, [r4, #4]
 255 001c 8519     		adds	r5, r0, r6
 256 001e 9D42     		cmp	r5, r3
 257 0020 38BF     		it	cc
 258 0022 0246     		movcc	r2, r0
 259 0024 2068     		ldr	r0, [r4]
 260 0026 24BF     		itt	cs
 261 0028 03F1FF35 		addcs	r5, r3, #-1
 262 002c AA1B     		subcs	r2, r5, r6
 263 002e 3946     		mov	r1, r7
 264 0030 3044     		add	r0, r0, r6
 265 0032 2CBF     		ite	cs
 266 0034 4FF00108 		movcs	r8, #1
 267 0038 4FF00008 		movcc	r8, #0
 268 003c FFF7FEFF 		bl	memcpy
 269 0040 2368     		ldr	r3, [r4]
 270 0042 0022     		movs	r2, #0
 271 0044 5A55     		strb	r2, [r3, r5]
 272 0046 4046     		mov	r0, r8
 273 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 274              		.size	_ZNK9StringRef3catEPKc, .-_ZNK9StringRef3catEPKc
 275              		.section	.text._ZNK9StringRef3catEc,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZNK9StringRef3catEc
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu fpv4-sp-d16
 283              		.type	_ZNK9StringRef3catEc, %function
 284              	_ZNK9StringRef3catEc:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287 0000 38B5     		push	{r3, r4, r5, lr}
 288 0002 0446     		mov	r4, r0
 289 0004 0D46     		mov	r5, r1
 290 0006 D0E90001 		ldrd	r0, r1, [r0]
 291 000a 0139     		subs	r1, r1, #1
 292 000c FFF7FEFF 		bl	_Z7StrnlenPKcj
 293 0010 6268     		ldr	r2, [r4, #4]
 294 0012 431C     		adds	r3, r0, #1
 295 0014 9342     		cmp	r3, r2
 296 0016 05D2     		bcs	.L31
 297 0018 2268     		ldr	r2, [r4]
 298 001a 1554     		strb	r5, [r2, r0]
 299 001c 2268     		ldr	r2, [r4]
 300 001e 0020     		movs	r0, #0
 301 0020 D054     		strb	r0, [r2, r3]
 302 0022 38BD     		pop	{r3, r4, r5, pc}
 303              	.L31:
 304 0024 0120     		movs	r0, #1
 305 0026 38BD     		pop	{r3, r4, r5, pc}
 306              		.size	_ZNK9StringRef3catEc, .-_ZNK9StringRef3catEc
 307              		.section	.text._ZNK9StringRef19StripTrailingSpacesEv,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.global	_ZNK9StringRef19StripTrailingSpacesEv
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu fpv4-sp-d16
 315              		.type	_ZNK9StringRef19StripTrailingSpacesEv, %function
 316              	_ZNK9StringRef19StripTrailingSpacesEv:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319 0000 38B5     		push	{r3, r4, r5, lr}
 320 0002 0446     		mov	r4, r0
 321 0004 D0E90001 		ldrd	r0, r1, [r0]
 322 0008 0139     		subs	r1, r1, #1
 323 000a FFF7FEFF 		bl	_Z7StrnlenPKcj
 324 000e 88B1     		cbz	r0, .L37
 325 0010 411E     		subs	r1, r0, #1
 326 0012 2368     		ldr	r3, [r4]
 327 0014 5A5C     		ldrb	r2, [r3, r1]	@ zero_extendqisi2
 328 0016 202A     		cmp	r2, #32
 329 0018 0B44     		add	r3, r3, r1
 330 001a 0ED1     		bne	.L39
 331 001c 0025     		movs	r5, #0
 332 001e 05E0     		b	.L36
 333              	.L44:
 334 0020 2368     		ldr	r3, [r4]
 335 0022 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
 336 0024 2028     		cmp	r0, #32
 337 0026 1344     		add	r3, r3, r2
 338 0028 05D1     		bne	.L33
 339 002a 1146     		mov	r1, r2
 340              	.L36:
 341 002c 4A1E     		subs	r2, r1, #1
 342 002e 1D70     		strb	r5, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 7


 343 0030 0029     		cmp	r1, #0
 344 0032 F5D1     		bne	.L44
 345              	.L37:
 346 0034 0021     		movs	r1, #0
 347              	.L33:
 348 0036 0846     		mov	r0, r1
 349 0038 38BD     		pop	{r3, r4, r5, pc}
 350              	.L39:
 351 003a 0146     		mov	r1, r0
 352 003c FBE7     		b	.L33
 353              		.size	_ZNK9StringRef19StripTrailingSpacesEv, .-_ZNK9StringRef19StripTrailingSpacesEv
 354 003e 00BF     		.section	.text._ZNK9StringRef7PrependEPKc,"ax",%progbits
 355              		.align	1
 356              		.p2align 2,,3
 357              		.global	_ZNK9StringRef7PrependEPKc
 358              		.syntax unified
 359              		.thumb
 360              		.thumb_func
 361              		.fpu fpv4-sp-d16
 362              		.type	_ZNK9StringRef7PrependEPKc, %function
 363              	_ZNK9StringRef7PrependEPKc:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366 0000 70B5     		push	{r4, r5, r6, lr}
 367 0002 0446     		mov	r4, r0
 368 0004 0846     		mov	r0, r1
 369 0006 0E46     		mov	r6, r1
 370 0008 FFF7FEFF 		bl	strlen
 371 000c 0546     		mov	r5, r0
 372 000e D4E90001 		ldrd	r0, r1, [r4]
 373 0012 0139     		subs	r1, r1, #1
 374 0014 FFF7FEFF 		bl	_Z7StrnlenPKcj
 375 0018 6368     		ldr	r3, [r4, #4]
 376 001a 2A18     		adds	r2, r5, r0
 377 001c 9A42     		cmp	r2, r3
 378 001e 01D3     		bcc	.L50
 379 0020 0120     		movs	r0, #1
 380 0022 70BD     		pop	{r4, r5, r6, pc}
 381              	.L50:
 382 0024 2168     		ldr	r1, [r4]
 383 0026 421C     		adds	r2, r0, #1
 384 0028 4819     		adds	r0, r1, r5
 385 002a FFF7FEFF 		bl	memmove
 386 002e 2A46     		mov	r2, r5
 387 0030 3146     		mov	r1, r6
 388 0032 2068     		ldr	r0, [r4]
 389 0034 FFF7FEFF 		bl	memcpy
 390 0038 0020     		movs	r0, #0
 391 003a 70BD     		pop	{r4, r5, r6, pc}
 392              		.size	_ZNK9StringRef7PrependEPKc, .-_ZNK9StringRef7PrependEPKc
 393              		.section	.text._ZNK9StringRef8TruncateEj,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	_ZNK9StringRef8TruncateEj
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccEYy8sP.s 			page 8


 400              		.fpu fpv4-sp-d16
 401              		.type	_ZNK9StringRef8TruncateEj, %function
 402              	_ZNK9StringRef8TruncateEj:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 4368     		ldr	r3, [r0, #4]
 407 0002 8B42     		cmp	r3, r1
 408 0004 02D9     		bls	.L51
 409 0006 0368     		ldr	r3, [r0]
 410 0008 0022     		movs	r2, #0
 411 000a 5A54     		strb	r2, [r3, r1]
 412              	.L51:
 413 000c 7047     		bx	lr
 414              		.size	_ZNK9StringRef8TruncateEj, .-_ZNK9StringRef8TruncateEj
 415 000e 00BF     		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
