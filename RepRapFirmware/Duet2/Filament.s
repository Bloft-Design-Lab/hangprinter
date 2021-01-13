ARM GAS  /tmp/ccf302dD.s 			page 1


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
  13              		.file	"Filament.cpp"
  14              		.section	.text._ZN8FilamentC2Ei,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN8FilamentC2Ei
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN8FilamentC2Ei, %function
  23              	_ZN8FilamentC2Ei:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 054A     		ldr	r2, .L4
  28 0002 4160     		str	r1, [r0, #4]
  29 0004 10B4     		push	{r4}
  30 0006 1468     		ldr	r4, [r2]
  31 0008 0460     		str	r4, [r0]
  32 000a 0024     		movs	r4, #0
  33 000c 0472     		strb	r4, [r0, #8]
  34 000e 1060     		str	r0, [r2]
  35 0010 5DF8044B 		ldr	r4, [sp], #4
  36 0014 7047     		bx	lr
  37              	.L5:
  38 0016 00BF     		.align	2
  39              	.L4:
  40 0018 00000000 		.word	.LANCHOR0
  41              		.size	_ZN8FilamentC2Ei, .-_ZN8FilamentC2Ei
  42              		.global	_ZN8FilamentC1Ei
  43              		.thumb_set _ZN8FilamentC1Ei,_ZN8FilamentC2Ei
  44              		.section	.text._ZN8Filament14LoadAssignmentEv,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN8Filament14LoadAssignmentEv
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN8Filament14LoadAssignmentEv, %function
  53              	_ZN8Filament14LoadAssignmentEv:
  54              		@ args = 0, pretend = 0, frame = 96
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56 0000 30B5     		push	{r4, r5, lr}
  57 0002 244B     		ldr	r3, .L33
ARM GAS  /tmp/ccf302dD.s 			page 2


  58 0004 244A     		ldr	r2, .L33+4
  59 0006 1C68     		ldr	r4, [r3]	@ unaligned
  60 0008 2449     		ldr	r1, .L33+8
  61 000a 99B0     		sub	sp, sp, #100
  62 000c 0546     		mov	r5, r0
  63 000e 0023     		movs	r3, #0
  64 0010 D4F8B409 		ldr	r0, [r4, #2484]
  65 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
  66 0018 70B1     		cbz	r0, .L6
  67 001a 6946     		mov	r1, sp
  68 001c 6022     		movs	r2, #96
  69 001e 0446     		mov	r4, r0
  70 0020 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  71 0024 0028     		cmp	r0, #0
  72 0026 04DD     		ble	.L9
  73 0028 1D49     		ldr	r1, .L33+12
  74 002a 6846     		mov	r0, sp
  75 002c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
  76 0030 20B9     		cbnz	r0, .L29
  77              	.L9:
  78 0032 2046     		mov	r0, r4
  79 0034 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
  80              	.L6:
  81 0038 19B0     		add	sp, sp, #100
  82              		@ sp needed
  83 003a 30BD     		pop	{r4, r5, pc}
  84              	.L29:
  85 003c 6022     		movs	r2, #96
  86 003e 6946     		mov	r1, sp
  87 0040 2046     		mov	r0, r4
  88 0042 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  89 0046 0028     		cmp	r0, #0
  90 0048 05DC     		bgt	.L11
  91 004a F2E7     		b	.L9
  92              	.L31:
  93 004c 9DF80030 		ldrb	r3, [sp]	@ zero_extendqisi2
  94 0050 303B     		subs	r3, r3, #48
  95 0052 092B     		cmp	r3, #9
  96 0054 07D9     		bls	.L30
  97              	.L11:
  98 0056 6022     		movs	r2, #96
  99 0058 6946     		mov	r1, sp
 100 005a 2046     		mov	r0, r4
 101 005c FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 102 0060 0028     		cmp	r0, #0
 103 0062 F3DC     		bgt	.L31
 104 0064 E5E7     		b	.L9
 105              	.L30:
 106 0066 6846     		mov	r0, sp
 107 0068 FFF7FEFF 		bl	atoi
 108 006c 6B68     		ldr	r3, [r5, #4]
 109 006e 9842     		cmp	r0, r3
 110 0070 F1D1     		bne	.L11
 111 0072 6B46     		mov	r3, sp
 112 0074 02E0     		b	.L14
 113              	.L32:
 114 0076 2C2A     		cmp	r2, #44
ARM GAS  /tmp/ccf302dD.s 			page 3


 115 0078 1946     		mov	r1, r3
 116 007a 04D0     		beq	.L13
 117              	.L14:
 118 007c 1946     		mov	r1, r3
 119 007e 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 120 0082 002A     		cmp	r2, #0
 121 0084 F7D1     		bne	.L32
 122              	.L13:
 123 0086 05F10800 		add	r0, r5, #8
 124 008a 2022     		movs	r2, #32
 125 008c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 126 0090 CFE7     		b	.L9
 127              	.L34:
 128 0092 00BF     		.align	2
 129              	.L33:
 130 0094 00000000 		.word	reprap
 131 0098 00000000 		.word	.LC0
 132 009c 10000000 		.word	.LC1
 133 00a0 18000000 		.word	.LC2
 134              		.size	_ZN8Filament14LoadAssignmentEv, .-_ZN8Filament14LoadAssignmentEv
 135              		.section	.text._ZN8Filament15SaveAssignmentsEv,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN8Filament15SaveAssignmentsEv
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZN8Filament15SaveAssignmentsEv, %function
 144              	_ZN8Filament15SaveAssignmentsEv:
 145              		@ args = 0, pretend = 0, frame = 112
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 70B5     		push	{r4, r5, r6, lr}
 148 0002 2D4C     		ldr	r4, .L57
 149 0004 2D4A     		ldr	r2, .L57+4
 150 0006 2368     		ldr	r3, [r4]
 151 0008 2D49     		ldr	r1, .L57+8
 152 000a D3F8B409 		ldr	r0, [r3, #2484]
 153 000e A0B0     		sub	sp, sp, #128
 154 0010 0123     		movs	r3, #1
 155 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 156 0016 0028     		cmp	r0, #0
 157 0018 33D0     		beq	.L35
 158 001a 08AA     		add	r2, sp, #32
 159 001c 6023     		movs	r3, #96
 160 001e 0546     		mov	r5, r0
 161 0020 2849     		ldr	r1, .L57+12
 162 0022 0692     		str	r2, [sp, #24]
 163 0024 06A8     		add	r0, sp, #24
 164 0026 0793     		str	r3, [sp, #28]
 165 0028 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 166 002c 2068     		ldr	r0, [r4]
 167 002e FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 168 0032 40BB     		cbnz	r0, .L56
 169              	.L37:
 170 0034 0A21     		movs	r1, #10
 171 0036 06A8     		add	r0, sp, #24
ARM GAS  /tmp/ccf302dD.s 			page 4


 172 0038 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 173 003c 0699     		ldr	r1, [sp, #24]
 174 003e 2846     		mov	r0, r5
 175 0040 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 176 0044 2049     		ldr	r1, .L57+16
 177 0046 2846     		mov	r0, r5
 178 0048 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 179 004c 1F4B     		ldr	r3, .L57+20
 180 004e 1C68     		ldr	r4, [r3]
 181 0050 A4B1     		cbz	r4, .L38
 182 0052 1F4E     		ldr	r6, .L57+24
 183 0054 01E0     		b	.L40
 184              	.L39:
 185 0056 2468     		ldr	r4, [r4]
 186 0058 84B1     		cbz	r4, .L38
 187              	.L40:
 188 005a 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 189 005c 002B     		cmp	r3, #0
 190 005e FAD0     		beq	.L39
 191 0060 04F10803 		add	r3, r4, #8
 192 0064 6268     		ldr	r2, [r4, #4]
 193 0066 3146     		mov	r1, r6
 194 0068 06A8     		add	r0, sp, #24
 195 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 196 006e 0699     		ldr	r1, [sp, #24]
 197 0070 2846     		mov	r0, r5
 198 0072 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 199 0076 2468     		ldr	r4, [r4]
 200 0078 002C     		cmp	r4, #0
 201 007a EED1     		bne	.L40
 202              	.L38:
 203 007c 2846     		mov	r0, r5
 204 007e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 205              	.L35:
 206 0082 20B0     		add	sp, sp, #128
 207              		@ sp needed
 208 0084 70BD     		pop	{r4, r5, r6, pc}
 209              	.L56:
 210 0086 2068     		ldr	r0, [r4]
 211 0088 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 212 008c 20AB     		add	r3, sp, #128
 213 008e 63E91C01 		strd	r0, [r3, #-112]!
 214 0092 1846     		mov	r0, r3
 215 0094 FFF7FEFF 		bl	gmtime
 216 0098 4468     		ldr	r4, [r0, #4]
 217 009a 0E49     		ldr	r1, .L57+28
 218 009c D0E90432 		ldrd	r3, r2, [r0, #16]
 219 00a0 0294     		str	r4, [sp, #8]
 220 00a2 8468     		ldr	r4, [r0, #8]
 221 00a4 0194     		str	r4, [sp, #4]
 222 00a6 C068     		ldr	r0, [r0, #12]
 223 00a8 0090     		str	r0, [sp]
 224 00aa 02F26C72 		addw	r2, r2, #1900
 225 00ae 06A8     		add	r0, sp, #24
 226 00b0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 227 00b4 BEE7     		b	.L37
 228              	.L58:
ARM GAS  /tmp/ccf302dD.s 			page 5


 229 00b6 00BF     		.align	2
 230              	.L57:
 231 00b8 00000000 		.word	reprap
 232 00bc 00000000 		.word	.LC0
 233 00c0 10000000 		.word	.LC1
 234 00c4 18000000 		.word	.LC2
 235 00c8 28000000 		.word	.LC4
 236 00cc 00000000 		.word	.LANCHOR0
 237 00d0 3C000000 		.word	.LC5
 238 00d4 00000000 		.word	.LC3
 239              		.size	_ZN8Filament15SaveAssignmentsEv, .-_ZN8Filament15SaveAssignmentsEv
 240              		.section	.text._ZN8Filament4LoadEPKc,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	_ZN8Filament4LoadEPKc
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu fpv4-sp-d16
 248              		.type	_ZN8Filament4LoadEPKc, %function
 249              	_ZN8Filament4LoadEPKc:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 08B5     		push	{r3, lr}
 253 0002 0830     		adds	r0, r0, #8
 254 0004 2022     		movs	r2, #32
 255 0006 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 256 000a BDE80840 		pop	{r3, lr}
 257 000e FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 258              		.size	_ZN8Filament4LoadEPKc, .-_ZN8Filament4LoadEPKc
 259 0012 00BF     		.section	.text._ZN8Filament6UnloadEv,"ax",%progbits
 260              		.align	1
 261              		.p2align 2,,3
 262              		.global	_ZN8Filament6UnloadEv
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv4-sp-d16
 267              		.type	_ZN8Filament6UnloadEv, %function
 268              	_ZN8Filament6UnloadEv:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 0023     		movs	r3, #0
 273 0002 0372     		strb	r3, [r0, #8]
 274 0004 FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 275              		.size	_ZN8Filament6UnloadEv, .-_ZN8Filament6UnloadEv
 276              		.section	.text._ZN8Filament7IsInUseEPKc,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	_ZN8Filament7IsInUseEPKc
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu fpv4-sp-d16
 284              		.type	_ZN8Filament7IsInUseEPKc, %function
 285              	_ZN8Filament7IsInUseEPKc:
ARM GAS  /tmp/ccf302dD.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288 0000 38B5     		push	{r3, r4, r5, lr}
 289 0002 084B     		ldr	r3, .L72
 290 0004 1C68     		ldr	r4, [r3]
 291 0006 5CB1     		cbz	r4, .L63
 292 0008 0546     		mov	r5, r0
 293 000a 01E0     		b	.L65
 294              	.L71:
 295 000c 2468     		ldr	r4, [r4]
 296 000e 3CB1     		cbz	r4, .L63
 297              	.L65:
 298 0010 2946     		mov	r1, r5
 299 0012 04F10800 		add	r0, r4, #8
 300 0016 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 301 001a 0028     		cmp	r0, #0
 302 001c F6D0     		beq	.L71
 303 001e 38BD     		pop	{r3, r4, r5, pc}
 304              	.L63:
 305 0020 0020     		movs	r0, #0
 306 0022 38BD     		pop	{r3, r4, r5, pc}
 307              	.L73:
 308              		.align	2
 309              	.L72:
 310 0024 00000000 		.word	.LANCHOR0
 311              		.size	_ZN8Filament7IsInUseEPKc, .-_ZN8Filament7IsInUseEPKc
 312              		.section	.text._ZN8Filament21GetFilamentByExtruderEi,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	_ZN8Filament21GetFilamentByExtruderEi
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu fpv4-sp-d16
 320              		.type	_ZN8Filament21GetFilamentByExtruderEi, %function
 321              	_ZN8Filament21GetFilamentByExtruderEi:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 044B     		ldr	r3, .L83
 326 0002 02E0     		b	.L81
 327              	.L82:
 328 0004 5A68     		ldr	r2, [r3, #4]
 329 0006 9042     		cmp	r0, r2
 330 0008 02D0     		beq	.L74
 331              	.L81:
 332 000a 1B68     		ldr	r3, [r3]
 333 000c 002B     		cmp	r3, #0
 334 000e F9D1     		bne	.L82
 335              	.L74:
 336 0010 1846     		mov	r0, r3
 337 0012 7047     		bx	lr
 338              	.L84:
 339              		.align	2
 340              	.L83:
 341 0014 00000000 		.word	.LANCHOR0
 342              		.size	_ZN8Filament21GetFilamentByExtruderEi, .-_ZN8Filament21GetFilamentByExtruderEi
ARM GAS  /tmp/ccf302dD.s 			page 7


 343              		.global	_ZN8Filament12filamentListE
 344              		.global	_ZN8Filament29FilamentAssignmentFileCommentE
 345              		.global	_ZN8Filament22FilamentAssignmentFileE
 346              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 347              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 348              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 349              	_ZL28cpu_irq_prev_interrupt_state:
 350 0000 00       		.space	1
 351              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 352              		.align	2
 353              		.type	_ZL32cpu_irq_critical_section_counter, %object
 354              		.size	_ZL32cpu_irq_critical_section_counter, 4
 355              	_ZL32cpu_irq_critical_section_counter:
 356 0000 00000000 		.space	4
 357              		.section	.bss._ZN8Filament12filamentListE,"aw",%nobits
 358              		.align	2
 359              		.set	.LANCHOR0,. + 0
 360              		.type	_ZN8Filament12filamentListE, %object
 361              		.size	_ZN8Filament12filamentListE, 4
 362              	_ZN8Filament12filamentListE:
 363 0000 00000000 		.space	4
 364              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 365              		.align	2
 366              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 367              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 368              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 369 0000 00000000 		.space	4
 370              		.section	.rodata._ZN8Filament14LoadAssignmentEv.str1.4,"aMS",%progbits,1
 371              		.align	2
 372              	.LC0:
 373 0000 66696C61 		.ascii	"filaments.csv\000"
 373      6D656E74 
 373      732E6373 
 373      7600
 374 000e 0000     		.space	2
 375              	.LC1:
 376 0010 303A2F73 		.ascii	"0:/sys/\000"
 376      79732F00 
 377              	.LC2:
 378 0018 52657052 		.ascii	"RepRapFirmware filament assignment file v1\000"
 378      61704669 
 378      726D7761 
 378      72652066 
 378      696C616D 
 379              		.section	.rodata._ZN8Filament15SaveAssignmentsEv.str1.4,"aMS",%progbits,1
 380              		.align	2
 381              	.LC3:
 382 0000 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 382      65726174 
 382      65642061 
 382      74202530 
 382      34752D25 
 383 0027 00       		.space	1
 384              	.LC4:
 385 0028 65787472 		.ascii	"extruder,filament\012\000"
 385      75646572 
 385      2C66696C 
ARM GAS  /tmp/ccf302dD.s 			page 8


 385      616D656E 
 385      740A00
 386 003b 00       		.space	1
 387              	.LC5:
 388 003c 25642C25 		.ascii	"%d,%s\012\000"
 388      730A00
 389              		.section	.rodata._ZN8Filament22FilamentAssignmentFileE,"a",%progbits
 390              		.align	2
 391              		.type	_ZN8Filament22FilamentAssignmentFileE, %object
 392              		.size	_ZN8Filament22FilamentAssignmentFileE, 4
 393              	_ZN8Filament22FilamentAssignmentFileE:
 394 0000 00000000 		.word	.LC0
 395              		.section	.rodata._ZN8Filament29FilamentAssignmentFileCommentE,"a",%progbits
 396              		.align	2
 397              		.type	_ZN8Filament29FilamentAssignmentFileCommentE, %object
 398              		.size	_ZN8Filament29FilamentAssignmentFileCommentE, 4
 399              	_ZN8Filament29FilamentAssignmentFileCommentE:
 400 0000 18000000 		.word	.LC2
 401              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
