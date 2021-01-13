ARM GAS  /tmp/ccRWftsv.s 			page 1


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
  14              		.section	.text._ZNK9StringRef6strlenEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZNK9StringRef6strlenEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK9StringRef6strlenEv, %function
  23              	_ZNK9StringRef6strlenEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 D0E90001 		ldrd	r0, r1, [r0]
  28 0004 0139     		subs	r1, r1, #1
  29 0006 FFF7FEBF 		b	_Z7StrnlenPKcj
  30              		.size	_ZNK9StringRef6strlenEv, .-_ZNK9StringRef6strlenEv
  31 000a 00BF     		.section	.text._ZNK9StringRef6printfEPKcz,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZNK9StringRef6printfEPKcz
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZNK9StringRef6printfEPKcz, %function
  40              	_ZNK9StringRef6printfEPKcz:
  41              		@ args = 4, pretend = 12, frame = 8
  42              		@ frame_needed = 0, uses_anonymous_args = 1
  43 0000 0EB4     		push	{r1, r2, r3}
  44 0002 00B5     		push	{lr}
  45 0004 82B0     		sub	sp, sp, #8
  46 0006 03AB     		add	r3, sp, #12
  47 0008 D0E90001 		ldrd	r0, r1, [r0]
  48 000c 53F8042B 		ldr	r2, [r3], #4
  49 0010 0193     		str	r3, [sp, #4]
  50 0012 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
  51 0016 02B0     		add	sp, sp, #8
  52              		@ sp needed
  53 0018 5DF804EB 		ldr	lr, [sp], #4
  54 001c 03B0     		add	sp, sp, #12
  55 001e 7047     		bx	lr
  56              		.size	_ZNK9StringRef6printfEPKcz, .-_ZNK9StringRef6printfEPKcz
  57              		.section	.text._ZNK9StringRef7vprintfEPKcSt9__va_list,"ax",%progbits
ARM GAS  /tmp/ccRWftsv.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZNK9StringRef7vprintfEPKcSt9__va_list
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	_ZNK9StringRef7vprintfEPKcSt9__va_list, %function
  66              	_ZNK9StringRef7vprintfEPKcSt9__va_list:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 10B4     		push	{r4}
  71 0002 0446     		mov	r4, r0
  72 0004 1346     		mov	r3, r2
  73 0006 0068     		ldr	r0, [r0]
  74 0008 0A46     		mov	r2, r1
  75 000a 6168     		ldr	r1, [r4, #4]
  76 000c 5DF8044B 		ldr	r4, [sp], #4
  77 0010 FFF7FEBF 		b	_Z13SafeVsnprintfPcjPKcSt9__va_list
  78              		.size	_ZNK9StringRef7vprintfEPKcSt9__va_list, .-_ZNK9StringRef7vprintfEPKcSt9__va_list
  79              		.section	.text._ZNK9StringRef4catfEPKcz,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	_ZNK9StringRef4catfEPKcz
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  87              		.type	_ZNK9StringRef4catfEPKcz, %function
  88              	_ZNK9StringRef4catfEPKcz:
  89              		@ args = 4, pretend = 12, frame = 8
  90              		@ frame_needed = 0, uses_anonymous_args = 1
  91 0000 0EB4     		push	{r1, r2, r3}
  92 0002 30B5     		push	{r4, r5, lr}
  93 0004 0546     		mov	r5, r0
  94 0006 D0E90001 		ldrd	r0, r1, [r0]
  95 000a 82B0     		sub	sp, sp, #8
  96 000c 0139     		subs	r1, r1, #1
  97 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
  98 0012 6968     		ldr	r1, [r5, #4]
  99 0014 431C     		adds	r3, r0, #1
 100 0016 8B42     		cmp	r3, r1
 101 0018 05D3     		bcc	.L11
 102 001a 0020     		movs	r0, #0
 103 001c 02B0     		add	sp, sp, #8
 104              		@ sp needed
 105 001e BDE83040 		pop	{r4, r5, lr}
 106 0022 03B0     		add	sp, sp, #12
 107 0024 7047     		bx	lr
 108              	.L11:
 109 0026 0446     		mov	r4, r0
 110 0028 2868     		ldr	r0, [r5]
 111 002a 059A     		ldr	r2, [sp, #20]
 112 002c 06AD     		add	r5, sp, #24
 113 002e 2044     		add	r0, r0, r4
 114 0030 091B     		subs	r1, r1, r4
ARM GAS  /tmp/ccRWftsv.s 			page 3


 115 0032 2B46     		mov	r3, r5
 116 0034 0195     		str	r5, [sp, #4]
 117 0036 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 118 003a 2044     		add	r0, r0, r4
 119 003c 02B0     		add	sp, sp, #8
 120              		@ sp needed
 121 003e BDE83040 		pop	{r4, r5, lr}
 122 0042 03B0     		add	sp, sp, #12
 123 0044 7047     		bx	lr
 124              		.size	_ZNK9StringRef4catfEPKcz, .-_ZNK9StringRef4catfEPKcz
 125 0046 00BF     		.section	.text._ZNK9StringRef5vcatfEPKcSt9__va_list,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZNK9StringRef5vcatfEPKcSt9__va_list
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZNK9StringRef5vcatfEPKcSt9__va_list, %function
 134              	_ZNK9StringRef5vcatfEPKcSt9__va_list:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 138 0002 0546     		mov	r5, r0
 139 0004 0E46     		mov	r6, r1
 140 0006 D0E90001 		ldrd	r0, r1, [r0]
 141 000a 0139     		subs	r1, r1, #1
 142 000c 1746     		mov	r7, r2
 143 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
 144 0012 6968     		ldr	r1, [r5, #4]
 145 0014 431C     		adds	r3, r0, #1
 146 0016 8B42     		cmp	r3, r1
 147 0018 01D3     		bcc	.L16
 148 001a 0020     		movs	r0, #0
 149 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 150              	.L16:
 151 001e 0446     		mov	r4, r0
 152 0020 2868     		ldr	r0, [r5]
 153 0022 3B46     		mov	r3, r7
 154 0024 2044     		add	r0, r0, r4
 155 0026 3246     		mov	r2, r6
 156 0028 091B     		subs	r1, r1, r4
 157 002a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 158 002e 2044     		add	r0, r0, r4
 159 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 160              		.size	_ZNK9StringRef5vcatfEPKcSt9__va_list, .-_ZNK9StringRef5vcatfEPKcSt9__va_list
 161 0032 00BF     		.section	.text._ZNK9StringRef4copyEPKc,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	_ZNK9StringRef4copyEPKc
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	_ZNK9StringRef4copyEPKc, %function
 170              	_ZNK9StringRef4copyEPKc:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccRWftsv.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 174 0002 0546     		mov	r5, r0
 175 0004 0846     		mov	r0, r1
 176 0006 0E46     		mov	r6, r1
 177 0008 FFF7FEFF 		bl	strlen
 178 000c 6B68     		ldr	r3, [r5, #4]
 179 000e 8342     		cmp	r3, r0
 180 0010 94BF     		ite	ls
 181 0012 03F1FF34 		addls	r4, r3, #-1
 182 0016 0446     		movhi	r4, r0
 183 0018 2246     		mov	r2, r4
 184 001a 3146     		mov	r1, r6
 185 001c 2868     		ldr	r0, [r5]
 186 001e 94BF     		ite	ls
 187 0020 0127     		movls	r7, #1
 188 0022 0027     		movhi	r7, #0
 189 0024 FFF7FEFF 		bl	memcpy
 190 0028 2B68     		ldr	r3, [r5]
 191 002a 0022     		movs	r2, #0
 192 002c 1A55     		strb	r2, [r3, r4]
 193 002e 3846     		mov	r0, r7
 194 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 195              		.size	_ZNK9StringRef4copyEPKc, .-_ZNK9StringRef4copyEPKc
 196 0032 00BF     		.section	.text._ZNK9StringRef3catEPKc,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	_ZNK9StringRef3catEPKc
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv4-sp-d16
 204              		.type	_ZNK9StringRef3catEPKc, %function
 205              	_ZNK9StringRef3catEPKc:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 209 0004 0446     		mov	r4, r0
 210 0006 0F46     		mov	r7, r1
 211 0008 D0E90001 		ldrd	r0, r1, [r0]
 212 000c 0139     		subs	r1, r1, #1
 213 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
 214 0012 0646     		mov	r6, r0
 215 0014 3846     		mov	r0, r7
 216 0016 FFF7FEFF 		bl	strlen
 217 001a 6368     		ldr	r3, [r4, #4]
 218 001c 8519     		adds	r5, r0, r6
 219 001e 9D42     		cmp	r5, r3
 220 0020 38BF     		it	cc
 221 0022 0246     		movcc	r2, r0
 222 0024 2068     		ldr	r0, [r4]
 223 0026 24BF     		itt	cs
 224 0028 03F1FF35 		addcs	r5, r3, #-1
 225 002c AA1B     		subcs	r2, r5, r6
 226 002e 3946     		mov	r1, r7
 227 0030 3044     		add	r0, r0, r6
 228 0032 2CBF     		ite	cs
ARM GAS  /tmp/ccRWftsv.s 			page 5


 229 0034 4FF00108 		movcs	r8, #1
 230 0038 4FF00008 		movcc	r8, #0
 231 003c FFF7FEFF 		bl	memcpy
 232 0040 2368     		ldr	r3, [r4]
 233 0042 0022     		movs	r2, #0
 234 0044 5A55     		strb	r2, [r3, r5]
 235 0046 4046     		mov	r0, r8
 236 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 237              		.size	_ZNK9StringRef3catEPKc, .-_ZNK9StringRef3catEPKc
 238              		.section	.text._ZNK9StringRef3catEc,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	_ZNK9StringRef3catEc
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	_ZNK9StringRef3catEc, %function
 247              	_ZNK9StringRef3catEc:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250 0000 38B5     		push	{r3, r4, r5, lr}
 251 0002 0446     		mov	r4, r0
 252 0004 0D46     		mov	r5, r1
 253 0006 D0E90001 		ldrd	r0, r1, [r0]
 254 000a 0139     		subs	r1, r1, #1
 255 000c FFF7FEFF 		bl	_Z7StrnlenPKcj
 256 0010 6268     		ldr	r2, [r4, #4]
 257 0012 431C     		adds	r3, r0, #1
 258 0014 9342     		cmp	r3, r2
 259 0016 05D2     		bcs	.L27
 260 0018 2268     		ldr	r2, [r4]
 261 001a 1554     		strb	r5, [r2, r0]
 262 001c 2268     		ldr	r2, [r4]
 263 001e 0020     		movs	r0, #0
 264 0020 D054     		strb	r0, [r2, r3]
 265 0022 38BD     		pop	{r3, r4, r5, pc}
 266              	.L27:
 267 0024 0120     		movs	r0, #1
 268 0026 38BD     		pop	{r3, r4, r5, pc}
 269              		.size	_ZNK9StringRef3catEc, .-_ZNK9StringRef3catEc
 270              		.section	.text._ZNK9StringRef19StripTrailingSpacesEv,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZNK9StringRef19StripTrailingSpacesEv
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	_ZNK9StringRef19StripTrailingSpacesEv, %function
 279              	_ZNK9StringRef19StripTrailingSpacesEv:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282 0000 38B5     		push	{r3, r4, r5, lr}
 283 0002 0446     		mov	r4, r0
 284 0004 D0E90001 		ldrd	r0, r1, [r0]
 285 0008 0139     		subs	r1, r1, #1
ARM GAS  /tmp/ccRWftsv.s 			page 6


 286 000a FFF7FEFF 		bl	_Z7StrnlenPKcj
 287 000e 88B1     		cbz	r0, .L33
 288 0010 411E     		subs	r1, r0, #1
 289 0012 2368     		ldr	r3, [r4]
 290 0014 5A5C     		ldrb	r2, [r3, r1]	@ zero_extendqisi2
 291 0016 202A     		cmp	r2, #32
 292 0018 0B44     		add	r3, r3, r1
 293 001a 0ED1     		bne	.L35
 294 001c 0025     		movs	r5, #0
 295 001e 05E0     		b	.L32
 296              	.L40:
 297 0020 2368     		ldr	r3, [r4]
 298 0022 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
 299 0024 2028     		cmp	r0, #32
 300 0026 1344     		add	r3, r3, r2
 301 0028 05D1     		bne	.L29
 302 002a 1146     		mov	r1, r2
 303              	.L32:
 304 002c 4A1E     		subs	r2, r1, #1
 305 002e 1D70     		strb	r5, [r3]
 306 0030 0029     		cmp	r1, #0
 307 0032 F5D1     		bne	.L40
 308              	.L33:
 309 0034 0021     		movs	r1, #0
 310              	.L29:
 311 0036 0846     		mov	r0, r1
 312 0038 38BD     		pop	{r3, r4, r5, pc}
 313              	.L35:
 314 003a 0146     		mov	r1, r0
 315 003c FBE7     		b	.L29
 316              		.size	_ZNK9StringRef19StripTrailingSpacesEv, .-_ZNK9StringRef19StripTrailingSpacesEv
 317 003e 00BF     		.section	.text._ZNK9StringRef7PrependEPKc,"ax",%progbits
 318              		.align	1
 319              		.p2align 2,,3
 320              		.global	_ZNK9StringRef7PrependEPKc
 321              		.syntax unified
 322              		.thumb
 323              		.thumb_func
 324              		.fpu fpv4-sp-d16
 325              		.type	_ZNK9StringRef7PrependEPKc, %function
 326              	_ZNK9StringRef7PrependEPKc:
 327              		@ args = 0, pretend = 0, frame = 0
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 70B5     		push	{r4, r5, r6, lr}
 330 0002 0446     		mov	r4, r0
 331 0004 0846     		mov	r0, r1
 332 0006 0E46     		mov	r6, r1
 333 0008 FFF7FEFF 		bl	strlen
 334 000c 0546     		mov	r5, r0
 335 000e D4E90001 		ldrd	r0, r1, [r4]
 336 0012 0139     		subs	r1, r1, #1
 337 0014 FFF7FEFF 		bl	_Z7StrnlenPKcj
 338 0018 6368     		ldr	r3, [r4, #4]
 339 001a 2A18     		adds	r2, r5, r0
 340 001c 9A42     		cmp	r2, r3
 341 001e 01D3     		bcc	.L46
 342 0020 0120     		movs	r0, #1
ARM GAS  /tmp/ccRWftsv.s 			page 7


 343 0022 70BD     		pop	{r4, r5, r6, pc}
 344              	.L46:
 345 0024 2168     		ldr	r1, [r4]
 346 0026 421C     		adds	r2, r0, #1
 347 0028 4819     		adds	r0, r1, r5
 348 002a FFF7FEFF 		bl	memmove
 349 002e 2A46     		mov	r2, r5
 350 0030 3146     		mov	r1, r6
 351 0032 2068     		ldr	r0, [r4]
 352 0034 FFF7FEFF 		bl	memcpy
 353 0038 0020     		movs	r0, #0
 354 003a 70BD     		pop	{r4, r5, r6, pc}
 355              		.size	_ZNK9StringRef7PrependEPKc, .-_ZNK9StringRef7PrependEPKc
 356              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 357              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 358              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 359              	_ZL28cpu_irq_prev_interrupt_state:
 360 0000 00       		.space	1
 361              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 362              		.align	2
 363              		.type	_ZL32cpu_irq_critical_section_counter, %object
 364              		.size	_ZL32cpu_irq_critical_section_counter, 4
 365              	_ZL32cpu_irq_critical_section_counter:
 366 0000 00000000 		.space	4
 367              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
