ARM GAS  /tmp/cca7dFJJ.s 			page 1


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
  11              		.file	"RepRapFirmware.cpp"
  12              		.section	.text.debugPrintf,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	debugPrintf
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	debugPrintf, %function
  21              	debugPrintf:
  22              		@ args = 4, pretend = 16, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 1
  24 0000 0FB4     		push	{r0, r1, r2, r3}
  25 0002 10B5     		push	{r4, lr}
  26 0004 82B0     		sub	sp, sp, #8
  27 0006 04AC     		add	r4, sp, #16
  28 0008 54F8042B 		ldr	r2, [r4], #4
  29 000c 054B     		ldr	r3, .L3
  30 000e 0221     		movs	r1, #2
  31 0010 1868     		ldr	r0, [r3]
  32 0012 2346     		mov	r3, r4
  33 0014 0194     		str	r4, [sp, #4]
  34 0016 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
  35 001a 02B0     		add	sp, sp, #8
  36              		@ sp needed
  37 001c BDE81040 		pop	{r4, lr}
  38 0020 04B0     		add	sp, sp, #16
  39 0022 7047     		bx	lr
  40              	.L4:
  41              		.align	2
  42              	.L3:
  43 0024 00000000 		.word	.LANCHOR0
  44              		.size	debugPrintf, .-debugPrintf
  45              		.section	.text._Z12StringEqualsPKcS0_,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_Z12StringEqualsPKcS0_
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu softvfp
  53              		.type	_Z12StringEqualsPKcS0_, %function
  54              	_Z12StringEqualsPKcS0_:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
ARM GAS  /tmp/cca7dFJJ.s 			page 2


  58 0004 0646     		mov	r6, r0
  59 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  60 0008 8946     		mov	r9, r1
  61 000a C0B1     		cbz	r0, .L10
  62 000c 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
  63 000e 9CB1     		cbz	r4, .L13
  64 0010 8846     		mov	r8, r1
  65 0012 0025     		movs	r5, #0
  66 0014 06E0     		b	.L8
  67              	.L21:
  68 0016 16F8010F 		ldrb	r0, [r6, #1]!	@ zero_extendqisi2
  69 001a 2B46     		mov	r3, r5
  70 001c 80B1     		cbz	r0, .L6
  71 001e 18F8014F 		ldrb	r4, [r8, #1]!	@ zero_extendqisi2
  72 0022 4CB1     		cbz	r4, .L13
  73              	.L8:
  74 0024 FFF7FEFF 		bl	tolower
  75 0028 0746     		mov	r7, r0
  76 002a 2046     		mov	r0, r4
  77 002c FFF7FEFF 		bl	tolower
  78 0030 8742     		cmp	r7, r0
  79 0032 05F10105 		add	r5, r5, #1
  80 0036 EED0     		beq	.L21
  81              	.L13:
  82 0038 0020     		movs	r0, #0
  83 003a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  84              	.L10:
  85 003e 0346     		mov	r3, r0
  86              	.L6:
  87 0040 19F80340 		ldrb	r4, [r9, r3]	@ zero_extendqisi2
  88 0044 B4FA84F0 		clz	r0, r4
  89 0048 4009     		lsrs	r0, r0, #5
  90 004a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  91              		.size	_Z12StringEqualsPKcS0_, .-_Z12StringEqualsPKcS0_
  92 004e 00BF     		.section	.text._Z14StringEndsWithPKcS0_,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_Z14StringEndsWithPKcS0_
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	_Z14StringEndsWithPKcS0_, %function
 101              	_Z14StringEndsWithPKcS0_:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104 0000 70B5     		push	{r4, r5, r6, lr}
 105 0002 0D46     		mov	r5, r1
 106 0004 0646     		mov	r6, r0
 107 0006 FFF7FEFF 		bl	strlen
 108 000a 0446     		mov	r4, r0
 109 000c 2846     		mov	r0, r5
 110 000e FFF7FEFF 		bl	strlen
 111 0012 8442     		cmp	r4, r0
 112 0014 06DB     		blt	.L23
 113 0016 201A     		subs	r0, r4, r0
 114 0018 3044     		add	r0, r0, r6
ARM GAS  /tmp/cca7dFJJ.s 			page 3


 115 001a 2946     		mov	r1, r5
 116 001c BDE87040 		pop	{r4, r5, r6, lr}
 117 0020 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 118              	.L23:
 119 0024 0020     		movs	r0, #0
 120 0026 70BD     		pop	{r4, r5, r6, pc}
 121              		.size	_Z14StringEndsWithPKcS0_, .-_Z14StringEndsWithPKcS0_
 122              		.section	.text._Z16StringStartsWithPKcS0_,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_Z16StringStartsWithPKcS0_
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu softvfp
 130              		.type	_Z16StringStartsWithPKcS0_, %function
 131              	_Z16StringStartsWithPKcS0_:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 70B5     		push	{r4, r5, r6, lr}
 135 0002 0D46     		mov	r5, r1
 136 0004 0446     		mov	r4, r0
 137 0006 FFF7FEFF 		bl	strlen
 138 000a 0646     		mov	r6, r0
 139 000c 2846     		mov	r0, r5
 140 000e FFF7FEFF 		bl	strlen
 141 0012 8642     		cmp	r6, r0
 142 0014 13DB     		blt	.L32
 143 0016 0028     		cmp	r0, #0
 144 0018 0FDD     		ble	.L30
 145 001a 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 146 001c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 147 001e 9A42     		cmp	r2, r3
 148 0020 0DD1     		bne	.L32
 149 0022 2946     		mov	r1, r5
 150 0024 2044     		add	r0, r0, r4
 151 0026 631C     		adds	r3, r4, #1
 152 0028 05E0     		b	.L27
 153              	.L28:
 154 002a 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 155 002e 11F8014F 		ldrb	r4, [r1, #1]!	@ zero_extendqisi2
 156 0032 9442     		cmp	r4, r2
 157 0034 03D1     		bne	.L32
 158              	.L27:
 159 0036 8342     		cmp	r3, r0
 160 0038 F7D1     		bne	.L28
 161              	.L30:
 162 003a 0120     		movs	r0, #1
 163 003c 70BD     		pop	{r4, r5, r6, pc}
 164              	.L32:
 165 003e 0020     		movs	r0, #0
 166 0040 70BD     		pop	{r4, r5, r6, pc}
 167              		.size	_Z16StringStartsWithPKcS0_, .-_Z16StringStartsWithPKcS0_
 168 0042 00BF     		.section	.text._Z14StringContainsPKcS0_,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	_Z14StringContainsPKcS0_
ARM GAS  /tmp/cca7dFJJ.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu softvfp
 176              		.type	_Z14StringContainsPKcS0_, %function
 177              	_Z14StringContainsPKcS0_:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              		@ link register save eliminated.
 181 0000 0022     		movs	r2, #0
 182 0002 30B4     		push	{r4, r5}
 183 0004 441E     		subs	r4, r0, #1
 184 0006 1046     		mov	r0, r2
 185              	.L35:
 186 0008 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 187 000c 0130     		adds	r0, r0, #1
 188 000e 43B1     		cbz	r3, .L38
 189              	.L42:
 190 0010 8D5C     		ldrb	r5, [r1, r2]	@ zero_extendqisi2
 191 0012 9D42     		cmp	r5, r3
 192 0014 09D0     		beq	.L41
 193 0016 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 194 001a 0022     		movs	r2, #0
 195 001c 0130     		adds	r0, r0, #1
 196 001e 002B     		cmp	r3, #0
 197 0020 F6D1     		bne	.L42
 198              	.L38:
 199 0022 4FF0FF30 		mov	r0, #-1
 200 0026 30BC     		pop	{r4, r5}
 201 0028 7047     		bx	lr
 202              	.L41:
 203 002a 0132     		adds	r2, r2, #1
 204 002c 8B5C     		ldrb	r3, [r1, r2]	@ zero_extendqisi2
 205 002e 002B     		cmp	r3, #0
 206 0030 EAD1     		bne	.L35
 207 0032 30BC     		pop	{r4, r5}
 208 0034 7047     		bx	lr
 209              		.size	_Z14StringContainsPKcS0_, .-_Z14StringContainsPKcS0_
 210 0036 00BF     		.section	.text._Z11SafeStrncpyPcPKcj,"ax",%progbits
 211              		.align	1
 212              		.p2align 2,,3
 213              		.global	_Z11SafeStrncpyPcPKcj
 214              		.syntax unified
 215              		.thumb
 216              		.thumb_func
 217              		.fpu softvfp
 218              		.type	_Z11SafeStrncpyPcPKcj, %function
 219              	_Z11SafeStrncpyPcPKcj:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222 0000 38B5     		push	{r3, r4, r5, lr}
 223 0002 0446     		mov	r4, r0
 224 0004 1546     		mov	r5, r2
 225 0006 FFF7FEFF 		bl	strncpy
 226 000a 0023     		movs	r3, #0
 227 000c 2C44     		add	r4, r4, r5
 228 000e 04F8013C 		strb	r3, [r4, #-1]
ARM GAS  /tmp/cca7dFJJ.s 			page 5


 229 0012 38BD     		pop	{r3, r4, r5, pc}
 230              		.size	_Z11SafeStrncpyPcPKcj, .-_Z11SafeStrncpyPcPKcj
 231              		.section	.text._Z11SafeStrncatPcPKcj,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	_Z11SafeStrncatPcPKcj
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	_Z11SafeStrncatPcPKcj, %function
 240              	_Z11SafeStrncatPcPKcj:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 244 0004 0026     		movs	r6, #0
 245 0006 551E     		subs	r5, r2, #1
 246 0008 4655     		strb	r6, [r0, r5]
 247 000a 0446     		mov	r4, r0
 248 000c 1746     		mov	r7, r2
 249 000e 8846     		mov	r8, r1
 250 0010 FFF7FEFF 		bl	strlen
 251 0014 4146     		mov	r1, r8
 252 0016 3A1A     		subs	r2, r7, r0
 253 0018 2044     		add	r0, r0, r4
 254 001a FFF7FEFF 		bl	strncat
 255 001e 6655     		strb	r6, [r4, r5]
 256 0020 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 257              		.size	_Z11SafeStrncatPcPKcj, .-_Z11SafeStrncatPcPKcj
 258              		.global	__aeabi_fcmpun
 259              		.global	__aeabi_f2d
 260              		.global	__aeabi_fcmple
 261              		.section	.text._Z7HideNanf,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_Z7HideNanf
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu softvfp
 269              		.type	_Z7HideNanf, %function
 270              	_Z7HideNanf:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 38B5     		push	{r3, r4, r5, lr}
 274 0002 0146     		mov	r1, r0
 275 0004 0446     		mov	r4, r0
 276 0006 FFF7FEFF 		bl	__aeabi_fcmpun
 277 000a 78B9     		cbnz	r0, .L54
 278 000c 24F00045 		bic	r5, r4, #-2147483648
 279 0010 2846     		mov	r0, r5
 280 0012 0B49     		ldr	r1, .L55+8
 281 0014 FFF7FEFF 		bl	__aeabi_fcmpun
 282 0018 20B9     		cbnz	r0, .L50
 283 001a 2846     		mov	r0, r5
 284 001c 0849     		ldr	r1, .L55+8
 285 001e FFF7FEFF 		bl	__aeabi_fcmple
ARM GAS  /tmp/cca7dFJJ.s 			page 6


 286 0022 18B1     		cbz	r0, .L54
 287              	.L50:
 288 0024 2046     		mov	r0, r4
 289 0026 FFF7FEFF 		bl	__aeabi_f2d
 290 002a 38BD     		pop	{r3, r4, r5, pc}
 291              	.L54:
 292 002c 02A1     		adr	r1, .L55
 293 002e D1E90001 		ldrd	r0, [r1]
 294 0032 38BD     		pop	{r3, r4, r5, pc}
 295              	.L56:
 296 0034 AFF30080 		.align	3
 297              	.L55:
 298 0038 00000040 		.word	1073741824
 299 003c F387C340 		.word	1086556147
 300 0040 FFFF7F7F 		.word	2139095039
 301              		.size	_Z7HideNanf, .-_Z7HideNanf
 302              		.section	.text._Z11ListDriversRK9StringRefm,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	_Z11ListDriversRK9StringRefm
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu softvfp
 310              		.type	_Z11ListDriversRK9StringRefm, %function
 311              	_Z11ListDriversRK9StringRefm:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 A9B1     		cbz	r1, .L69
 315 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 316 0004 0646     		mov	r6, r0
 317 0006 0C46     		mov	r4, r1
 318 0008 0025     		movs	r5, #0
 319 000a 094F     		ldr	r7, .L73
 320 000c 03E0     		b	.L61
 321              	.L59:
 322 000e 6408     		lsrs	r4, r4, #1
 323 0010 05F10105 		add	r5, r5, #1
 324 0014 0AD0     		beq	.L72
 325              	.L61:
 326 0016 E307     		lsls	r3, r4, #31
 327 0018 F9D5     		bpl	.L59
 328 001a 2A46     		mov	r2, r5
 329 001c 3946     		mov	r1, r7
 330 001e 3046     		mov	r0, r6
 331 0020 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 332 0024 6408     		lsrs	r4, r4, #1
 333 0026 05F10105 		add	r5, r5, #1
 334 002a F4D1     		bne	.L61
 335              	.L72:
 336 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 337              	.L69:
 338 002e 7047     		bx	lr
 339              	.L74:
 340              		.align	2
 341              	.L73:
 342 0030 00000000 		.word	.LC0
ARM GAS  /tmp/cca7dFJJ.s 			page 7


 343              		.size	_Z11ListDriversRK9StringRefm, .-_Z11ListDriversRK9StringRefm
 344              		.section	.text.startup._GLOBAL__sub_I_reprap,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu softvfp
 351              		.type	_GLOBAL__sub_I_reprap, %function
 352              	_GLOBAL__sub_I_reprap:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 0148     		ldr	r0, .L76
 357 0002 FFF7FEBF 		b	_ZN6RepRapC1Ev
 358              	.L77:
 359 0006 00BF     		.align	2
 360              	.L76:
 361 0008 00000000 		.word	.LANCHOR0
 362              		.size	_GLOBAL__sub_I_reprap, .-_GLOBAL__sub_I_reprap
 363              		.section	.init_array,"aw",%init_array
 364              		.align	2
 365 0000 00000000 		.word	_GLOBAL__sub_I_reprap(target1)
 366              		.global	moduleName
 367              		.global	reprap
 368              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 369              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 370              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 371              	_ZL28cpu_irq_prev_interrupt_state:
 372 0000 00       		.space	1
 373              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 374              		.align	2
 375              		.type	_ZL32cpu_irq_critical_section_counter, %object
 376              		.size	_ZL32cpu_irq_critical_section_counter, 4
 377              	_ZL32cpu_irq_critical_section_counter:
 378 0000 00000000 		.space	4
 379              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 380              		.align	2
 381              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 382              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 383              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 384 0000 00000000 		.space	4
 385              		.section	.bss.reprap,"aw",%nobits
 386              		.align	2
 387              		.set	.LANCHOR0,. + 0
 388              		.type	reprap, %object
 389              		.size	reprap, 944
 390              	reprap:
 391 0000 00000000 		.space	944
 391      00000000 
 391      00000000 
 391      00000000 
 391      00000000 
 392              		.section	.rodata._Z11ListDriversRK9StringRefm.str1.4,"aMS",%progbits,1
 393              		.align	2
 394              	.LC0:
 395 0000 20257500 		.ascii	" %u\000"
ARM GAS  /tmp/cca7dFJJ.s 			page 8


 396              		.section	.rodata.moduleName,"a",%progbits
 397              		.align	2
 398              		.type	moduleName, %object
 399              		.size	moduleName, 64
 400              	moduleName:
 401 0000 00000000 		.word	.LC1
 402 0004 0C000000 		.word	.LC2
 403 0008 14000000 		.word	.LC3
 404 000c 20000000 		.word	.LC4
 405 0010 28000000 		.word	.LC5
 406 0014 30000000 		.word	.LC6
 407 0018 38000000 		.word	.LC7
 408 001c 3C000000 		.word	.LC8
 409 0020 44000000 		.word	.LC9
 410 0024 4C000000 		.word	.LC10
 411 0028 5C000000 		.word	.LC11
 412 002c 64000000 		.word	.LC12
 413 0030 70000000 		.word	.LC13
 414 0034 80000000 		.word	.LC14
 415 0038 90000000 		.word	.LC15
 416 003c 98000000 		.word	.LC16
 417              		.section	.rodata.str1.4,"aMS",%progbits,1
 418              		.align	2
 419              	.LC1:
 420 0000 506C6174 		.ascii	"Platform\000"
 420      666F726D 
 420      00
 421 0009 000000   		.space	3
 422              	.LC2:
 423 000c 4E657477 		.ascii	"Network\000"
 423      6F726B00 
 424              	.LC3:
 425 0014 57656273 		.ascii	"Webserver\000"
 425      65727665 
 425      7200
 426 001e 0000     		.space	2
 427              	.LC4:
 428 0020 47436F64 		.ascii	"GCodes\000"
 428      657300
 429 0027 00       		.space	1
 430              	.LC5:
 431 0028 4D6F7665 		.ascii	"Move\000"
 431      00
 432 002d 000000   		.space	3
 433              	.LC6:
 434 0030 48656174 		.ascii	"Heat\000"
 434      00
 435 0035 000000   		.space	3
 436              	.LC7:
 437 0038 44444100 		.ascii	"DDA\000"
 438              	.LC8:
 439 003c 526F6C61 		.ascii	"Roland\000"
 439      6E6400
 440 0043 00       		.space	1
 441              	.LC9:
 442 0044 5363616E 		.ascii	"Scanner\000"
 442      6E657200 
ARM GAS  /tmp/cca7dFJJ.s 			page 9


 443              	.LC10:
 444 004c 5072696E 		.ascii	"PrintMonitor\000"
 444      744D6F6E 
 444      69746F72 
 444      00
 445 0059 000000   		.space	3
 446              	.LC11:
 447 005c 53746F72 		.ascii	"Storage\000"
 447      61676500 
 448              	.LC12:
 449 0064 506F7274 		.ascii	"PortControl\000"
 449      436F6E74 
 449      726F6C00 
 450              	.LC13:
 451 0070 44756574 		.ascii	"DuetExpansion\000"
 451      45787061 
 451      6E73696F 
 451      6E00
 452 007e 0000     		.space	2
 453              	.LC14:
 454 0080 46696C61 		.ascii	"FilamentSensors\000"
 454      6D656E74 
 454      53656E73 
 454      6F727300 
 455              	.LC15:
 456 0090 57694669 		.ascii	"WiFi\000"
 456      00
 457 0095 000000   		.space	3
 458              	.LC16:
 459 0098 6E6F6E65 		.ascii	"none\000"
 459      00
 460              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
