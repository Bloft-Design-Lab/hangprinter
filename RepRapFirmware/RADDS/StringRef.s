ARM GAS  /tmp/cc2EcL6U.s 			page 1


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
  11              		.file	"StringRef.cpp"
  12              		.section	.text._ZNK9StringRef6strlenEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZNK9StringRef6strlenEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK9StringRef6strlenEv, %function
  21              	_ZNK9StringRef6strlenEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 03C8     		ldm	r0, {r0, r1}
  26 0002 0139     		subs	r1, r1, #1
  27 0004 FFF7FEBF 		b	_Z7StrnlenPKcj
  28              		.size	_ZNK9StringRef6strlenEv, .-_ZNK9StringRef6strlenEv
  29              		.section	.text._ZNK9StringRef6printfEPKcz,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZNK9StringRef6printfEPKcz
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	_ZNK9StringRef6printfEPKcz, %function
  38              	_ZNK9StringRef6printfEPKcz:
  39              		@ args = 4, pretend = 12, frame = 8
  40              		@ frame_needed = 0, uses_anonymous_args = 1
  41 0000 0EB4     		push	{r1, r2, r3}
  42 0002 10B5     		push	{r4, lr}
  43 0004 83B0     		sub	sp, sp, #12
  44 0006 05AC     		add	r4, sp, #20
  45 0008 54F8042B 		ldr	r2, [r4], #4
  46 000c 4168     		ldr	r1, [r0, #4]
  47 000e 2346     		mov	r3, r4
  48 0010 0068     		ldr	r0, [r0]
  49 0012 0194     		str	r4, [sp, #4]
  50 0014 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
  51 0018 03B0     		add	sp, sp, #12
  52              		@ sp needed
  53 001a BDE81040 		pop	{r4, lr}
  54 001e 03B0     		add	sp, sp, #12
  55 0020 7047     		bx	lr
  56              		.size	_ZNK9StringRef6printfEPKcz, .-_ZNK9StringRef6printfEPKcz
  57 0022 00BF     		.section	.text._ZNK9StringRef7vprintfEPKcSt9__va_list,"ax",%progbits
ARM GAS  /tmp/cc2EcL6U.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZNK9StringRef7vprintfEPKcSt9__va_list
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
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
  76 000c 10BC     		pop	{r4}
  77 000e FFF7FEBF 		b	_Z13SafeVsnprintfPcjPKcSt9__va_list
  78              		.size	_ZNK9StringRef7vprintfEPKcSt9__va_list, .-_ZNK9StringRef7vprintfEPKcSt9__va_list
  79 0012 00BF     		.section	.text._ZNK9StringRef4catfEPKcz,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	_ZNK9StringRef4catfEPKcz
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu softvfp
  87              		.type	_ZNK9StringRef4catfEPKcz, %function
  88              	_ZNK9StringRef4catfEPKcz:
  89              		@ args = 4, pretend = 12, frame = 8
  90              		@ frame_needed = 0, uses_anonymous_args = 1
  91 0000 0EB4     		push	{r1, r2, r3}
  92 0002 30B5     		push	{r4, r5, lr}
  93 0004 0546     		mov	r5, r0
  94 0006 03C8     		ldm	r0, {r0, r1}
  95 0008 82B0     		sub	sp, sp, #8
  96 000a 0139     		subs	r1, r1, #1
  97 000c FFF7FEFF 		bl	_Z7StrnlenPKcj
  98 0010 6968     		ldr	r1, [r5, #4]
  99 0012 431C     		adds	r3, r0, #1
 100 0014 8B42     		cmp	r3, r1
 101 0016 05D3     		bcc	.L11
 102 0018 0020     		movs	r0, #0
 103 001a 02B0     		add	sp, sp, #8
 104              		@ sp needed
 105 001c BDE83040 		pop	{r4, r5, lr}
 106 0020 03B0     		add	sp, sp, #12
 107 0022 7047     		bx	lr
 108              	.L11:
 109 0024 0446     		mov	r4, r0
 110 0026 2868     		ldr	r0, [r5]
 111 0028 06AD     		add	r5, sp, #24
 112 002a 2044     		add	r0, r0, r4
 113 002c 091B     		subs	r1, r1, r4
 114 002e 2B46     		mov	r3, r5
ARM GAS  /tmp/cc2EcL6U.s 			page 3


 115 0030 059A     		ldr	r2, [sp, #20]
 116 0032 0195     		str	r5, [sp, #4]
 117 0034 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 118 0038 2044     		add	r0, r0, r4
 119 003a 02B0     		add	sp, sp, #8
 120              		@ sp needed
 121 003c BDE83040 		pop	{r4, r5, lr}
 122 0040 03B0     		add	sp, sp, #12
 123 0042 7047     		bx	lr
 124              		.size	_ZNK9StringRef4catfEPKcz, .-_ZNK9StringRef4catfEPKcz
 125              		.section	.text._ZNK9StringRef5vcatfEPKcSt9__va_list,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZNK9StringRef5vcatfEPKcSt9__va_list
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu softvfp
 133              		.type	_ZNK9StringRef5vcatfEPKcSt9__va_list, %function
 134              	_ZNK9StringRef5vcatfEPKcSt9__va_list:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 138 0002 4368     		ldr	r3, [r0, #4]
 139 0004 0546     		mov	r5, r0
 140 0006 0E46     		mov	r6, r1
 141 0008 0068     		ldr	r0, [r0]
 142 000a 591E     		subs	r1, r3, #1
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
 169              		.fpu softvfp
 170              		.type	_ZNK9StringRef4copyEPKc, %function
 171              	_ZNK9StringRef4copyEPKc:
ARM GAS  /tmp/cc2EcL6U.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 175 0002 0546     		mov	r5, r0
 176 0004 0846     		mov	r0, r1
 177 0006 0E46     		mov	r6, r1
 178 0008 FFF7FEFF 		bl	strlen
 179 000c 6C68     		ldr	r4, [r5, #4]
 180 000e 3146     		mov	r1, r6
 181 0010 A042     		cmp	r0, r4
 182 0012 34BF     		ite	cc
 183 0014 0446     		movcc	r4, r0
 184 0016 04F1FF34 		addcs	r4, r4, #-1
 185 001a 2246     		mov	r2, r4
 186 001c 2868     		ldr	r0, [r5]
 187 001e 2CBF     		ite	cs
 188 0020 0127     		movcs	r7, #1
 189 0022 0027     		movcc	r7, #0
 190 0024 FFF7FEFF 		bl	memcpy
 191 0028 0022     		movs	r2, #0
 192 002a 2B68     		ldr	r3, [r5]
 193 002c 3846     		mov	r0, r7
 194 002e 1A55     		strb	r2, [r3, r4]
 195 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 196              		.size	_ZNK9StringRef4copyEPKc, .-_ZNK9StringRef4copyEPKc
 197 0032 00BF     		.section	.text._ZNK9StringRef3catEPKc,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZNK9StringRef3catEPKc
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu softvfp
 205              		.type	_ZNK9StringRef3catEPKc, %function
 206              	_ZNK9StringRef3catEPKc:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 4368     		ldr	r3, [r0, #4]
 210 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 211 0006 0446     		mov	r4, r0
 212 0008 0F46     		mov	r7, r1
 213 000a 0068     		ldr	r0, [r0]
 214 000c 591E     		subs	r1, r3, #1
 215 000e FFF7FEFF 		bl	_Z7StrnlenPKcj
 216 0012 0646     		mov	r6, r0
 217 0014 3846     		mov	r0, r7
 218 0016 FFF7FEFF 		bl	strlen
 219 001a 6368     		ldr	r3, [r4, #4]
 220 001c 8519     		adds	r5, r0, r6
 221 001e 9D42     		cmp	r5, r3
 222 0020 38BF     		it	cc
 223 0022 0246     		movcc	r2, r0
 224 0024 2068     		ldr	r0, [r4]
 225 0026 24BF     		itt	cs
 226 0028 03F1FF35 		addcs	r5, r3, #-1
 227 002c AA1B     		subcs	r2, r5, r6
 228 002e 3946     		mov	r1, r7
ARM GAS  /tmp/cc2EcL6U.s 			page 5


 229 0030 3044     		add	r0, r0, r6
 230 0032 2CBF     		ite	cs
 231 0034 4FF00108 		movcs	r8, #1
 232 0038 4FF00008 		movcc	r8, #0
 233 003c FFF7FEFF 		bl	memcpy
 234 0040 0022     		movs	r2, #0
 235 0042 2368     		ldr	r3, [r4]
 236 0044 4046     		mov	r0, r8
 237 0046 5A55     		strb	r2, [r3, r5]
 238 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 239              		.size	_ZNK9StringRef3catEPKc, .-_ZNK9StringRef3catEPKc
 240              		.section	.text._ZNK9StringRef3catEc,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	_ZNK9StringRef3catEc
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu softvfp
 248              		.type	_ZNK9StringRef3catEc, %function
 249              	_ZNK9StringRef3catEc:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 4368     		ldr	r3, [r0, #4]
 253 0002 70B5     		push	{r4, r5, r6, lr}
 254 0004 0446     		mov	r4, r0
 255 0006 0D46     		mov	r5, r1
 256 0008 0068     		ldr	r0, [r0]
 257 000a 591E     		subs	r1, r3, #1
 258 000c FFF7FEFF 		bl	_Z7StrnlenPKcj
 259 0010 6168     		ldr	r1, [r4, #4]
 260 0012 431C     		adds	r3, r0, #1
 261 0014 8B42     		cmp	r3, r1
 262 0016 07D2     		bcs	.L27
 263 0018 0246     		mov	r2, r0
 264 001a 0021     		movs	r1, #0
 265 001c 2668     		ldr	r6, [r4]
 266 001e 0846     		mov	r0, r1
 267 0020 B554     		strb	r5, [r6, r2]
 268 0022 2268     		ldr	r2, [r4]
 269 0024 D154     		strb	r1, [r2, r3]
 270 0026 70BD     		pop	{r4, r5, r6, pc}
 271              	.L27:
 272 0028 0120     		movs	r0, #1
 273 002a 70BD     		pop	{r4, r5, r6, pc}
 274              		.size	_ZNK9StringRef3catEc, .-_ZNK9StringRef3catEc
 275              		.section	.text._ZNK9StringRef19StripTrailingSpacesEv,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZNK9StringRef19StripTrailingSpacesEv
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu softvfp
 283              		.type	_ZNK9StringRef19StripTrailingSpacesEv, %function
 284              	_ZNK9StringRef19StripTrailingSpacesEv:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc2EcL6U.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287 0000 38B5     		push	{r3, r4, r5, lr}
 288 0002 0446     		mov	r4, r0
 289 0004 03C8     		ldm	r0, {r0, r1}
 290 0006 0139     		subs	r1, r1, #1
 291 0008 FFF7FEFF 		bl	_Z7StrnlenPKcj
 292 000c 90B1     		cbz	r0, .L34
 293 000e 2368     		ldr	r3, [r4]
 294 0010 411E     		subs	r1, r0, #1
 295 0012 5A5C     		ldrb	r2, [r3, r1]	@ zero_extendqisi2
 296 0014 0B44     		add	r3, r3, r1
 297 0016 202A     		cmp	r2, #32
 298 0018 08BF     		it	eq
 299 001a 0025     		moveq	r5, #0
 300 001c 06D0     		beq	.L33
 301 001e 0DE0     		b	.L44
 302              	.L42:
 303 0020 2368     		ldr	r3, [r4]
 304 0022 985C     		ldrb	r0, [r3, r2]	@ zero_extendqisi2
 305 0024 1344     		add	r3, r3, r2
 306 0026 2028     		cmp	r0, #32
 307 0028 06D1     		bne	.L36
 308 002a 1146     		mov	r1, r2
 309              	.L33:
 310 002c 4A1E     		subs	r2, r1, #1
 311 002e 1D70     		strb	r5, [r3]
 312 0030 0029     		cmp	r1, #0
 313 0032 F5D1     		bne	.L42
 314              	.L34:
 315 0034 0020     		movs	r0, #0
 316 0036 38BD     		pop	{r3, r4, r5, pc}
 317              	.L36:
 318 0038 0846     		mov	r0, r1
 319 003a 38BD     		pop	{r3, r4, r5, pc}
 320              	.L44:
 321 003c 38BD     		pop	{r3, r4, r5, pc}
 322              		.size	_ZNK9StringRef19StripTrailingSpacesEv, .-_ZNK9StringRef19StripTrailingSpacesEv
 323 003e 00BF     		.section	.text._ZNK9StringRef7PrependEPKc,"ax",%progbits
 324              		.align	1
 325              		.p2align 2,,3
 326              		.global	_ZNK9StringRef7PrependEPKc
 327              		.syntax unified
 328              		.thumb
 329              		.thumb_func
 330              		.fpu softvfp
 331              		.type	_ZNK9StringRef7PrependEPKc, %function
 332              	_ZNK9StringRef7PrependEPKc:
 333              		@ args = 0, pretend = 0, frame = 0
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335 0000 70B5     		push	{r4, r5, r6, lr}
 336 0002 0446     		mov	r4, r0
 337 0004 0846     		mov	r0, r1
 338 0006 0E46     		mov	r6, r1
 339 0008 FFF7FEFF 		bl	strlen
 340 000c 0546     		mov	r5, r0
 341 000e 94E80300 		ldm	r4, {r0, r1}
 342 0012 0139     		subs	r1, r1, #1
ARM GAS  /tmp/cc2EcL6U.s 			page 7


 343 0014 FFF7FEFF 		bl	_Z7StrnlenPKcj
 344 0018 6368     		ldr	r3, [r4, #4]
 345 001a 2A18     		adds	r2, r5, r0
 346 001c 9A42     		cmp	r2, r3
 347 001e 01D3     		bcc	.L49
 348 0020 0120     		movs	r0, #1
 349 0022 70BD     		pop	{r4, r5, r6, pc}
 350              	.L49:
 351 0024 2168     		ldr	r1, [r4]
 352 0026 421C     		adds	r2, r0, #1
 353 0028 4819     		adds	r0, r1, r5
 354 002a FFF7FEFF 		bl	memmove
 355 002e 2A46     		mov	r2, r5
 356 0030 3146     		mov	r1, r6
 357 0032 2068     		ldr	r0, [r4]
 358 0034 FFF7FEFF 		bl	memcpy
 359 0038 0020     		movs	r0, #0
 360 003a 70BD     		pop	{r4, r5, r6, pc}
 361              		.size	_ZNK9StringRef7PrependEPKc, .-_ZNK9StringRef7PrependEPKc
 362              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 363              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 364              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 365              	_ZL28cpu_irq_prev_interrupt_state:
 366 0000 00       		.space	1
 367              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 368              		.align	2
 369              		.type	_ZL32cpu_irq_critical_section_counter, %object
 370              		.size	_ZL32cpu_irq_critical_section_counter, 4
 371              	_ZL32cpu_irq_critical_section_counter:
 372 0000 00000000 		.space	4
 373              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
