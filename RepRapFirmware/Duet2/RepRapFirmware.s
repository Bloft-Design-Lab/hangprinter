ARM GAS  /tmp/ccUXOGit.s 			page 1


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
  13              		.file	"RepRapFirmware.cpp"
  14              		.section	.text.debugPrintf,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	debugPrintf
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	debugPrintf, %function
  23              	debugPrintf:
  24              		@ args = 4, pretend = 16, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 1
  26 0000 0FB4     		push	{r0, r1, r2, r3}
  27 0002 00B5     		push	{lr}
  28 0004 83B0     		sub	sp, sp, #12
  29 0006 04AB     		add	r3, sp, #16
  30 0008 0649     		ldr	r1, .L4
  31 000a 53F8042B 		ldr	r2, [r3], #4
  32 000e 0868     		ldr	r0, [r1]
  33 0010 0193     		str	r3, [sp, #4]
  34 0012 0221     		movs	r1, #2
  35 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
  36 0018 03B0     		add	sp, sp, #12
  37              		@ sp needed
  38 001a 5DF804EB 		ldr	lr, [sp], #4
  39 001e 04B0     		add	sp, sp, #16
  40 0020 7047     		bx	lr
  41              	.L5:
  42 0022 00BF     		.align	2
  43              	.L4:
  44 0024 00000000 		.word	.LANCHOR0
  45              		.size	debugPrintf, .-debugPrintf
  46              		.section	.text._Z12StringEqualsPKcS0_,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	_Z12StringEqualsPKcS0_
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_Z12StringEqualsPKcS0_, %function
  55              	_Z12StringEqualsPKcS0_:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccUXOGit.s 			page 2


  58 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  59 0002 0646     		mov	r6, r0
  60 0004 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  61 0006 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
  62 0008 90B1     		cbz	r0, .L7
  63 000a 7CB1     		cbz	r4, .L13
  64 000c 0D46     		mov	r5, r1
  65 000e 05E0     		b	.L9
  66              	.L23:
  67 0010 16F8010F 		ldrb	r0, [r6, #1]!	@ zero_extendqisi2
  68 0014 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
  69 0018 50B1     		cbz	r0, .L7
  70 001a 3CB1     		cbz	r4, .L13
  71              	.L9:
  72 001c FFF7FEFF 		bl	tolower
  73 0020 0746     		mov	r7, r0
  74 0022 2046     		mov	r0, r4
  75 0024 FFF7FEFF 		bl	tolower
  76 0028 8742     		cmp	r7, r0
  77 002a F1D0     		beq	.L23
  78              	.L13:
  79 002c 0020     		movs	r0, #0
  80 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  81              	.L7:
  82 0030 B4FA84F0 		clz	r0, r4
  83 0034 4009     		lsrs	r0, r0, #5
  84 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  85              		.size	_Z12StringEqualsPKcS0_, .-_Z12StringEqualsPKcS0_
  86              		.section	.text._Z14StringEndsWithPKcS0_,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	_Z14StringEndsWithPKcS0_
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	_Z14StringEndsWithPKcS0_, %function
  95              	_Z14StringEndsWithPKcS0_:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98 0000 70B5     		push	{r4, r5, r6, lr}
  99 0002 0D46     		mov	r5, r1
 100 0004 0646     		mov	r6, r0
 101 0006 FFF7FEFF 		bl	strlen
 102 000a 0446     		mov	r4, r0
 103 000c 2846     		mov	r0, r5
 104 000e FFF7FEFF 		bl	strlen
 105 0012 8442     		cmp	r4, r0
 106 0014 06DB     		blt	.L25
 107 0016 201A     		subs	r0, r4, r0
 108 0018 3044     		add	r0, r0, r6
 109 001a 2946     		mov	r1, r5
 110 001c BDE87040 		pop	{r4, r5, r6, lr}
 111 0020 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 112              	.L25:
 113 0024 0020     		movs	r0, #0
 114 0026 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccUXOGit.s 			page 3


 115              		.size	_Z14StringEndsWithPKcS0_, .-_Z14StringEndsWithPKcS0_
 116              		.section	.text._Z16StringStartsWithPKcS0_,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	_Z16StringStartsWithPKcS0_
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv4-sp-d16
 124              		.type	_Z16StringStartsWithPKcS0_, %function
 125              	_Z16StringStartsWithPKcS0_:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128 0000 70B5     		push	{r4, r5, r6, lr}
 129 0002 0D46     		mov	r5, r1
 130 0004 0446     		mov	r4, r0
 131 0006 FFF7FEFF 		bl	strlen
 132 000a 0646     		mov	r6, r0
 133 000c 2846     		mov	r0, r5
 134 000e FFF7FEFF 		bl	strlen
 135 0012 8642     		cmp	r6, r0
 136 0014 13DB     		blt	.L34
 137 0016 80B1     		cbz	r0, .L32
 138 0018 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 139 001a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 140 001c 9A42     		cmp	r2, r3
 141 001e 0ED1     		bne	.L34
 142 0020 621E     		subs	r2, r4, #1
 143 0022 2346     		mov	r3, r4
 144 0024 2946     		mov	r1, r5
 145 0026 1044     		add	r0, r0, r2
 146 0028 05E0     		b	.L29
 147              	.L30:
 148 002a 13F8014F 		ldrb	r4, [r3, #1]!	@ zero_extendqisi2
 149 002e 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 150 0032 9442     		cmp	r4, r2
 151 0034 03D1     		bne	.L34
 152              	.L29:
 153 0036 8342     		cmp	r3, r0
 154 0038 F7D1     		bne	.L30
 155              	.L32:
 156 003a 0120     		movs	r0, #1
 157 003c 70BD     		pop	{r4, r5, r6, pc}
 158              	.L34:
 159 003e 0020     		movs	r0, #0
 160 0040 70BD     		pop	{r4, r5, r6, pc}
 161              		.size	_Z16StringStartsWithPKcS0_, .-_Z16StringStartsWithPKcS0_
 162 0042 00BF     		.section	.text._Z14StringContainsPKcS0_,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	_Z14StringContainsPKcS0_
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv4-sp-d16
 170              		.type	_Z14StringContainsPKcS0_, %function
 171              	_Z14StringContainsPKcS0_:
ARM GAS  /tmp/ccUXOGit.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174              		@ link register save eliminated.
 175 0000 70B4     		push	{r4, r5, r6}
 176 0002 0346     		mov	r3, r0
 177 0004 0024     		movs	r4, #0
 178              	.L37:
 179 0006 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 180 000a 1E1A     		subs	r6, r3, r0
 181 000c 42B1     		cbz	r2, .L40
 182              	.L44:
 183 000e 0D5D     		ldrb	r5, [r1, r4]	@ zero_extendqisi2
 184 0010 9542     		cmp	r5, r2
 185 0012 0AD0     		beq	.L43
 186 0014 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 187 0018 0024     		movs	r4, #0
 188 001a 1E1A     		subs	r6, r3, r0
 189 001c 002A     		cmp	r2, #0
 190 001e F6D1     		bne	.L44
 191              	.L40:
 192 0020 4FF0FF36 		mov	r6, #-1
 193 0024 3046     		mov	r0, r6
 194 0026 70BC     		pop	{r4, r5, r6}
 195 0028 7047     		bx	lr
 196              	.L43:
 197 002a 0134     		adds	r4, r4, #1
 198 002c 0A5D     		ldrb	r2, [r1, r4]	@ zero_extendqisi2
 199 002e 002A     		cmp	r2, #0
 200 0030 E9D1     		bne	.L37
 201 0032 3046     		mov	r0, r6
 202 0034 70BC     		pop	{r4, r5, r6}
 203 0036 7047     		bx	lr
 204              		.size	_Z14StringContainsPKcS0_, .-_Z14StringContainsPKcS0_
 205              		.section	.text._Z11SafeStrncpyPcPKcj,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	_Z11SafeStrncpyPcPKcj
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_Z11SafeStrncpyPcPKcj, %function
 214              	_Z11SafeStrncpyPcPKcj:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 10B5     		push	{r4, lr}
 218 0002 1446     		mov	r4, r2
 219 0004 FFF7FEFF 		bl	strncpy
 220 0008 0346     		mov	r3, r0
 221 000a 2344     		add	r3, r3, r4
 222 000c 0022     		movs	r2, #0
 223 000e 03F8012C 		strb	r2, [r3, #-1]
 224 0012 10BD     		pop	{r4, pc}
 225              		.size	_Z11SafeStrncpyPcPKcj, .-_Z11SafeStrncpyPcPKcj
 226              		.section	.text._Z11SafeStrncatPcPKcj,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/ccUXOGit.s 			page 5


 229              		.global	_Z11SafeStrncatPcPKcj
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu fpv4-sp-d16
 234              		.type	_Z11SafeStrncatPcPKcj, %function
 235              	_Z11SafeStrncatPcPKcj:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 239 0004 551E     		subs	r5, r2, #1
 240 0006 0026     		movs	r6, #0
 241 0008 4655     		strb	r6, [r0, r5]
 242 000a 0446     		mov	r4, r0
 243 000c 1746     		mov	r7, r2
 244 000e 8846     		mov	r8, r1
 245 0010 FFF7FEFF 		bl	strlen
 246 0014 4146     		mov	r1, r8
 247 0016 3A1A     		subs	r2, r7, r0
 248 0018 2044     		add	r0, r0, r4
 249 001a FFF7FEFF 		bl	strncat
 250 001e 6655     		strb	r6, [r4, r5]
 251 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 252              		.size	_Z11SafeStrncatPcPKcj, .-_Z11SafeStrncatPcPKcj
 253              		.global	__aeabi_f2d
 254              		.section	.text._Z7HideNanf,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_Z7HideNanf
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv4-sp-d16
 262              		.type	_Z7HideNanf, %function
 263              	_Z7HideNanf:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266 0000 B4EE400A 		vcmp.f32	s0, s0
 267 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 268 0008 10D6     		bvs	.L55
 269 000a DFED0D7A 		vldr.32	s15, .L60+8
 270 000e B0EEC07A 		vabs.f32	s14, s0
 271 0012 B4EE677A 		vcmp.f32	s14, s15
 272 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 273 001a 07DC     		bgt	.L55
 274 001c 08B5     		push	{r3, lr}
 275 001e 10EE100A 		vmov	r0, s0
 276 0022 FFF7FEFF 		bl	__aeabi_f2d
 277 0026 41EC100B 		vmov	d0, r0, r1
 278 002a 08BD     		pop	{r3, pc}
 279              	.L55:
 280 002c 9FED020B 		vldr.64	d0, .L60
 281 0030 7047     		bx	lr
 282              	.L61:
 283 0032 00BFAFF3 		.align	3
 283      0080
 284              	.L60:
ARM GAS  /tmp/ccUXOGit.s 			page 6


 285 0038 00000040 		.word	1073741824
 286 003c F387C340 		.word	1086556147
 287 0040 FFFF7F7F 		.word	2139095039
 288              		.size	_Z7HideNanf, .-_Z7HideNanf
 289              		.section	.text._Z11ListDriversRK9StringRefm,"ax",%progbits
 290              		.align	1
 291              		.p2align 2,,3
 292              		.global	_Z11ListDriversRK9StringRefm
 293              		.syntax unified
 294              		.thumb
 295              		.thumb_func
 296              		.fpu fpv4-sp-d16
 297              		.type	_Z11ListDriversRK9StringRefm, %function
 298              	_Z11ListDriversRK9StringRefm:
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301 0000 A9B1     		cbz	r1, .L74
 302 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 303 0004 0646     		mov	r6, r0
 304 0006 0C46     		mov	r4, r1
 305 0008 094F     		ldr	r7, .L78
 306 000a 0025     		movs	r5, #0
 307 000c 03E0     		b	.L65
 308              	.L64:
 309 000e 6408     		lsrs	r4, r4, #1
 310 0010 05F10105 		add	r5, r5, #1
 311 0014 0AD0     		beq	.L77
 312              	.L65:
 313 0016 E307     		lsls	r3, r4, #31
 314 0018 F9D5     		bpl	.L64
 315 001a 2A46     		mov	r2, r5
 316 001c 3946     		mov	r1, r7
 317 001e 3046     		mov	r0, r6
 318 0020 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 319 0024 6408     		lsrs	r4, r4, #1
 320 0026 05F10105 		add	r5, r5, #1
 321 002a F4D1     		bne	.L65
 322              	.L77:
 323 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 324              	.L74:
 325 002e 7047     		bx	lr
 326              	.L79:
 327              		.align	2
 328              	.L78:
 329 0030 00000000 		.word	.LC0
 330              		.size	_Z11ListDriversRK9StringRefm, .-_Z11ListDriversRK9StringRefm
 331              		.section	.text.startup._GLOBAL__sub_I_reprap,"ax",%progbits
 332              		.align	1
 333              		.p2align 2,,3
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_GLOBAL__sub_I_reprap, %function
 339              	_GLOBAL__sub_I_reprap:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccUXOGit.s 			page 7


 342              		@ link register save eliminated.
 343 0000 0148     		ldr	r0, .L81
 344 0002 FFF7FEBF 		b	_ZN6RepRapC1Ev
 345              	.L82:
 346 0006 00BF     		.align	2
 347              	.L81:
 348 0008 00000000 		.word	.LANCHOR0
 349              		.size	_GLOBAL__sub_I_reprap, .-_GLOBAL__sub_I_reprap
 350              		.section	.init_array,"aw",%init_array
 351              		.align	2
 352 0000 00000000 		.word	_GLOBAL__sub_I_reprap(target1)
 353              		.global	moduleName
 354              		.global	reprap
 355              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 356              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 357              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 358              	_ZL28cpu_irq_prev_interrupt_state:
 359 0000 00       		.space	1
 360              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 361              		.align	2
 362              		.type	_ZL32cpu_irq_critical_section_counter, %object
 363              		.size	_ZL32cpu_irq_critical_section_counter, 4
 364              	_ZL32cpu_irq_critical_section_counter:
 365 0000 00000000 		.space	4
 366              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 367              		.align	2
 368              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 369              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 370              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 371 0000 00000000 		.space	4
 372              		.section	.bss.reprap,"aw",%nobits
 373              		.align	2
 374              		.set	.LANCHOR0,. + 0
 375              		.type	reprap, %object
 376              		.size	reprap, 948
 377              	reprap:
 378 0000 00000000 		.space	948
 378      00000000 
 378      00000000 
 378      00000000 
 378      00000000 
 379              		.section	.rodata._Z11ListDriversRK9StringRefm.str1.4,"aMS",%progbits,1
 380              		.align	2
 381              	.LC0:
 382 0000 20257500 		.ascii	" %u\000"
 383              		.section	.rodata.moduleName,"a",%progbits
 384              		.align	2
 385              		.type	moduleName, %object
 386              		.size	moduleName, 64
 387              	moduleName:
 388 0000 00000000 		.word	.LC1
 389 0004 0C000000 		.word	.LC2
 390 0008 14000000 		.word	.LC3
 391 000c 20000000 		.word	.LC4
 392 0010 28000000 		.word	.LC5
 393 0014 30000000 		.word	.LC6
 394 0018 38000000 		.word	.LC7
ARM GAS  /tmp/ccUXOGit.s 			page 8


 395 001c 3C000000 		.word	.LC8
 396 0020 44000000 		.word	.LC9
 397 0024 4C000000 		.word	.LC10
 398 0028 5C000000 		.word	.LC11
 399 002c 64000000 		.word	.LC12
 400 0030 70000000 		.word	.LC13
 401 0034 80000000 		.word	.LC14
 402 0038 90000000 		.word	.LC15
 403 003c 98000000 		.word	.LC16
 404              		.section	.rodata.str1.4,"aMS",%progbits,1
 405              		.align	2
 406              	.LC1:
 407 0000 506C6174 		.ascii	"Platform\000"
 407      666F726D 
 407      00
 408 0009 000000   		.space	3
 409              	.LC2:
 410 000c 4E657477 		.ascii	"Network\000"
 410      6F726B00 
 411              	.LC3:
 412 0014 57656273 		.ascii	"Webserver\000"
 412      65727665 
 412      7200
 413 001e 0000     		.space	2
 414              	.LC4:
 415 0020 47436F64 		.ascii	"GCodes\000"
 415      657300
 416 0027 00       		.space	1
 417              	.LC5:
 418 0028 4D6F7665 		.ascii	"Move\000"
 418      00
 419 002d 000000   		.space	3
 420              	.LC6:
 421 0030 48656174 		.ascii	"Heat\000"
 421      00
 422 0035 000000   		.space	3
 423              	.LC7:
 424 0038 44444100 		.ascii	"DDA\000"
 425              	.LC8:
 426 003c 526F6C61 		.ascii	"Roland\000"
 426      6E6400
 427 0043 00       		.space	1
 428              	.LC9:
 429 0044 5363616E 		.ascii	"Scanner\000"
 429      6E657200 
 430              	.LC10:
 431 004c 5072696E 		.ascii	"PrintMonitor\000"
 431      744D6F6E 
 431      69746F72 
 431      00
 432 0059 000000   		.space	3
 433              	.LC11:
 434 005c 53746F72 		.ascii	"Storage\000"
 434      61676500 
 435              	.LC12:
 436 0064 506F7274 		.ascii	"PortControl\000"
 436      436F6E74 
ARM GAS  /tmp/ccUXOGit.s 			page 9


 436      726F6C00 
 437              	.LC13:
 438 0070 44756574 		.ascii	"DuetExpansion\000"
 438      45787061 
 438      6E73696F 
 438      6E00
 439 007e 0000     		.space	2
 440              	.LC14:
 441 0080 46696C61 		.ascii	"FilamentSensors\000"
 441      6D656E74 
 441      53656E73 
 441      6F727300 
 442              	.LC15:
 443 0090 57694669 		.ascii	"WiFi\000"
 443      00
 444 0095 000000   		.space	3
 445              	.LC16:
 446 0098 6E6F6E65 		.ascii	"none\000"
 446      00
 447              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
