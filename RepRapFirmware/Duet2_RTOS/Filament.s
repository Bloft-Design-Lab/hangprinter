ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN8FilamentC2Ei,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN8FilamentC2Ei
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN8FilamentC2Ei, %function
  24              	_ZN8FilamentC2Ei:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 054A     		ldr	r2, .L4
  29 0002 4160     		str	r1, [r0, #4]
  30 0004 10B4     		push	{r4}
  31 0006 1468     		ldr	r4, [r2]
  32 0008 0460     		str	r4, [r0]
  33 000a 0024     		movs	r4, #0
  34 000c 0472     		strb	r4, [r0, #8]
  35 000e 1060     		str	r0, [r2]
  36 0010 5DF8044B 		ldr	r4, [sp], #4
  37 0014 7047     		bx	lr
  38              	.L5:
  39 0016 00BF     		.align	2
  40              	.L4:
  41 0018 00000000 		.word	.LANCHOR0
  42              		.size	_ZN8FilamentC2Ei, .-_ZN8FilamentC2Ei
  43              		.global	_ZN8FilamentC1Ei
  44              		.thumb_set _ZN8FilamentC1Ei,_ZN8FilamentC2Ei
  45              		.section	.text._ZN8Filament14LoadAssignmentEv,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN8Filament14LoadAssignmentEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZN8Filament14LoadAssignmentEv, %function
  54              	_ZN8Filament14LoadAssignmentEv:
  55              		@ args = 0, pretend = 0, frame = 96
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 30B5     		push	{r4, r5, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 2


  58 0002 244B     		ldr	r3, .L33
  59 0004 244A     		ldr	r2, .L33+4
  60 0006 5C68     		ldr	r4, [r3, #4]	@ unaligned
  61 0008 2449     		ldr	r1, .L33+8
  62 000a 99B0     		sub	sp, sp, #100
  63 000c 0546     		mov	r5, r0
  64 000e 0023     		movs	r3, #0
  65 0010 D4F8DC0B 		ldr	r0, [r4, #3036]
  66 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
  67 0018 70B1     		cbz	r0, .L6
  68 001a 6946     		mov	r1, sp
  69 001c 6022     		movs	r2, #96
  70 001e 0446     		mov	r4, r0
  71 0020 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  72 0024 0028     		cmp	r0, #0
  73 0026 04DD     		ble	.L9
  74 0028 1D49     		ldr	r1, .L33+12
  75 002a 6846     		mov	r0, sp
  76 002c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
  77 0030 20B9     		cbnz	r0, .L29
  78              	.L9:
  79 0032 2046     		mov	r0, r4
  80 0034 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
  81              	.L6:
  82 0038 19B0     		add	sp, sp, #100
  83              		@ sp needed
  84 003a 30BD     		pop	{r4, r5, pc}
  85              	.L29:
  86 003c 6022     		movs	r2, #96
  87 003e 6946     		mov	r1, sp
  88 0040 2046     		mov	r0, r4
  89 0042 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  90 0046 0028     		cmp	r0, #0
  91 0048 05DC     		bgt	.L11
  92 004a F2E7     		b	.L9
  93              	.L31:
  94 004c 9DF80030 		ldrb	r3, [sp]	@ zero_extendqisi2
  95 0050 303B     		subs	r3, r3, #48
  96 0052 092B     		cmp	r3, #9
  97 0054 07D9     		bls	.L30
  98              	.L11:
  99 0056 6022     		movs	r2, #96
 100 0058 6946     		mov	r1, sp
 101 005a 2046     		mov	r0, r4
 102 005c FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 103 0060 0028     		cmp	r0, #0
 104 0062 F3DC     		bgt	.L31
 105 0064 E5E7     		b	.L9
 106              	.L30:
 107 0066 6846     		mov	r0, sp
 108 0068 FFF7FEFF 		bl	atoi
 109 006c 6B68     		ldr	r3, [r5, #4]
 110 006e 9842     		cmp	r0, r3
 111 0070 F1D1     		bne	.L11
 112 0072 6B46     		mov	r3, sp
 113 0074 02E0     		b	.L14
 114              	.L32:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 3


 115 0076 2C2A     		cmp	r2, #44
 116 0078 1946     		mov	r1, r3
 117 007a 04D0     		beq	.L13
 118              	.L14:
 119 007c 1946     		mov	r1, r3
 120 007e 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 121 0082 002A     		cmp	r2, #0
 122 0084 F7D1     		bne	.L32
 123              	.L13:
 124 0086 05F10800 		add	r0, r5, #8
 125 008a 2022     		movs	r2, #32
 126 008c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 127 0090 CFE7     		b	.L9
 128              	.L34:
 129 0092 00BF     		.align	2
 130              	.L33:
 131 0094 00000000 		.word	reprap
 132 0098 00000000 		.word	.LC0
 133 009c 10000000 		.word	.LC1
 134 00a0 18000000 		.word	.LC2
 135              		.size	_ZN8Filament14LoadAssignmentEv, .-_ZN8Filament14LoadAssignmentEv
 136              		.section	.text._ZN8Filament15SaveAssignmentsEv,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_ZN8Filament15SaveAssignmentsEv
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_ZN8Filament15SaveAssignmentsEv, %function
 145              	_ZN8Filament15SaveAssignmentsEv:
 146              		@ args = 0, pretend = 0, frame = 112
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 70B5     		push	{r4, r5, r6, lr}
 149 0002 2D4C     		ldr	r4, .L57
 150 0004 2D4A     		ldr	r2, .L57+4
 151 0006 6368     		ldr	r3, [r4, #4]
 152 0008 2D49     		ldr	r1, .L57+8
 153 000a D3F8DC0B 		ldr	r0, [r3, #3036]
 154 000e A0B0     		sub	sp, sp, #128
 155 0010 0123     		movs	r3, #1
 156 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 157 0016 0028     		cmp	r0, #0
 158 0018 33D0     		beq	.L35
 159 001a 08AA     		add	r2, sp, #32
 160 001c 6023     		movs	r3, #96
 161 001e 0546     		mov	r5, r0
 162 0020 2849     		ldr	r1, .L57+12
 163 0022 0692     		str	r2, [sp, #24]
 164 0024 06A8     		add	r0, sp, #24
 165 0026 0793     		str	r3, [sp, #28]
 166 0028 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 167 002c 6068     		ldr	r0, [r4, #4]
 168 002e FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 169 0032 40BB     		cbnz	r0, .L56
 170              	.L37:
 171 0034 0A21     		movs	r1, #10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 4


 172 0036 06A8     		add	r0, sp, #24
 173 0038 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 174 003c 0699     		ldr	r1, [sp, #24]
 175 003e 2846     		mov	r0, r5
 176 0040 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 177 0044 2049     		ldr	r1, .L57+16
 178 0046 2846     		mov	r0, r5
 179 0048 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 180 004c 1F4B     		ldr	r3, .L57+20
 181 004e 1C68     		ldr	r4, [r3]
 182 0050 A4B1     		cbz	r4, .L38
 183 0052 1F4E     		ldr	r6, .L57+24
 184 0054 01E0     		b	.L40
 185              	.L39:
 186 0056 2468     		ldr	r4, [r4]
 187 0058 84B1     		cbz	r4, .L38
 188              	.L40:
 189 005a 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 190 005c 002B     		cmp	r3, #0
 191 005e FAD0     		beq	.L39
 192 0060 04F10803 		add	r3, r4, #8
 193 0064 6268     		ldr	r2, [r4, #4]
 194 0066 3146     		mov	r1, r6
 195 0068 06A8     		add	r0, sp, #24
 196 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 197 006e 0699     		ldr	r1, [sp, #24]
 198 0070 2846     		mov	r0, r5
 199 0072 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 200 0076 2468     		ldr	r4, [r4]
 201 0078 002C     		cmp	r4, #0
 202 007a EED1     		bne	.L40
 203              	.L38:
 204 007c 2846     		mov	r0, r5
 205 007e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 206              	.L35:
 207 0082 20B0     		add	sp, sp, #128
 208              		@ sp needed
 209 0084 70BD     		pop	{r4, r5, r6, pc}
 210              	.L56:
 211 0086 6068     		ldr	r0, [r4, #4]
 212 0088 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 213 008c 20AB     		add	r3, sp, #128
 214 008e 63E91C01 		strd	r0, [r3, #-112]!
 215 0092 1846     		mov	r0, r3
 216 0094 FFF7FEFF 		bl	gmtime
 217 0098 4468     		ldr	r4, [r0, #4]
 218 009a 0E49     		ldr	r1, .L57+28
 219 009c D0E90432 		ldrd	r3, r2, [r0, #16]
 220 00a0 0294     		str	r4, [sp, #8]
 221 00a2 8468     		ldr	r4, [r0, #8]
 222 00a4 0194     		str	r4, [sp, #4]
 223 00a6 C068     		ldr	r0, [r0, #12]
 224 00a8 0090     		str	r0, [sp]
 225 00aa 02F26C72 		addw	r2, r2, #1900
 226 00ae 06A8     		add	r0, sp, #24
 227 00b0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 228 00b4 BEE7     		b	.L37
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 5


 229              	.L58:
 230 00b6 00BF     		.align	2
 231              	.L57:
 232 00b8 00000000 		.word	reprap
 233 00bc 00000000 		.word	.LC0
 234 00c0 10000000 		.word	.LC1
 235 00c4 18000000 		.word	.LC2
 236 00c8 28000000 		.word	.LC4
 237 00cc 00000000 		.word	.LANCHOR0
 238 00d0 3C000000 		.word	.LC5
 239 00d4 00000000 		.word	.LC3
 240              		.size	_ZN8Filament15SaveAssignmentsEv, .-_ZN8Filament15SaveAssignmentsEv
 241              		.section	.text._ZN8Filament4LoadEPKc,"ax",%progbits
 242              		.align	1
 243              		.p2align 2,,3
 244              		.global	_ZN8Filament4LoadEPKc
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu fpv4-sp-d16
 249              		.type	_ZN8Filament4LoadEPKc, %function
 250              	_ZN8Filament4LoadEPKc:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253 0000 08B5     		push	{r3, lr}
 254 0002 0830     		adds	r0, r0, #8
 255 0004 2022     		movs	r2, #32
 256 0006 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 257 000a BDE80840 		pop	{r3, lr}
 258 000e FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 259              		.size	_ZN8Filament4LoadEPKc, .-_ZN8Filament4LoadEPKc
 260 0012 00BF     		.section	.text._ZN8Filament6UnloadEv,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	_ZN8Filament6UnloadEv
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv4-sp-d16
 268              		.type	_ZN8Filament6UnloadEv, %function
 269              	_ZN8Filament6UnloadEv:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 0023     		movs	r3, #0
 274 0002 0372     		strb	r3, [r0, #8]
 275 0004 FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 276              		.size	_ZN8Filament6UnloadEv, .-_ZN8Filament6UnloadEv
 277              		.section	.text._ZN8Filament7IsInUseEPKc,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZN8Filament7IsInUseEPKc
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZN8Filament7IsInUseEPKc, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 6


 286              	_ZN8Filament7IsInUseEPKc:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 38B5     		push	{r3, r4, r5, lr}
 290 0002 084B     		ldr	r3, .L72
 291 0004 1C68     		ldr	r4, [r3]
 292 0006 5CB1     		cbz	r4, .L63
 293 0008 0546     		mov	r5, r0
 294 000a 01E0     		b	.L65
 295              	.L71:
 296 000c 2468     		ldr	r4, [r4]
 297 000e 3CB1     		cbz	r4, .L63
 298              	.L65:
 299 0010 2946     		mov	r1, r5
 300 0012 04F10800 		add	r0, r4, #8
 301 0016 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 302 001a 0028     		cmp	r0, #0
 303 001c F6D0     		beq	.L71
 304 001e 38BD     		pop	{r3, r4, r5, pc}
 305              	.L63:
 306 0020 0020     		movs	r0, #0
 307 0022 38BD     		pop	{r3, r4, r5, pc}
 308              	.L73:
 309              		.align	2
 310              	.L72:
 311 0024 00000000 		.word	.LANCHOR0
 312              		.size	_ZN8Filament7IsInUseEPKc, .-_ZN8Filament7IsInUseEPKc
 313              		.section	.text._ZN8Filament21GetFilamentByExtruderEi,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	_ZN8Filament21GetFilamentByExtruderEi
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv4-sp-d16
 321              		.type	_ZN8Filament21GetFilamentByExtruderEi, %function
 322              	_ZN8Filament21GetFilamentByExtruderEi:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325              		@ link register save eliminated.
 326 0000 044B     		ldr	r3, .L83
 327 0002 02E0     		b	.L81
 328              	.L82:
 329 0004 5A68     		ldr	r2, [r3, #4]
 330 0006 9042     		cmp	r0, r2
 331 0008 02D0     		beq	.L74
 332              	.L81:
 333 000a 1B68     		ldr	r3, [r3]
 334 000c 002B     		cmp	r3, #0
 335 000e F9D1     		bne	.L82
 336              	.L74:
 337 0010 1846     		mov	r0, r3
 338 0012 7047     		bx	lr
 339              	.L84:
 340              		.align	2
 341              	.L83:
 342 0014 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 7


 343              		.size	_ZN8Filament21GetFilamentByExtruderEi, .-_ZN8Filament21GetFilamentByExtruderEi
 344              		.global	_ZN8Filament12filamentListE
 345              		.global	_ZN8Filament29FilamentAssignmentFileCommentE
 346              		.global	_ZN8Filament22FilamentAssignmentFileE
 347              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 348              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 349              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 350              	_ZL28cpu_irq_prev_interrupt_state:
 351 0000 00       		.space	1
 352              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 353              		.align	2
 354              		.type	_ZL32cpu_irq_critical_section_counter, %object
 355              		.size	_ZL32cpu_irq_critical_section_counter, 4
 356              	_ZL32cpu_irq_critical_section_counter:
 357 0000 00000000 		.space	4
 358              		.section	.bss._ZN8Filament12filamentListE,"aw",%nobits
 359              		.align	2
 360              		.set	.LANCHOR0,. + 0
 361              		.type	_ZN8Filament12filamentListE, %object
 362              		.size	_ZN8Filament12filamentListE, 4
 363              	_ZN8Filament12filamentListE:
 364 0000 00000000 		.space	4
 365              		.section	.rodata._ZN8Filament14LoadAssignmentEv.str1.4,"aMS",%progbits,1
 366              		.align	2
 367              	.LC0:
 368 0000 66696C61 		.ascii	"filaments.csv\000"
 368      6D656E74 
 368      732E6373 
 368      7600
 369 000e 0000     		.space	2
 370              	.LC1:
 371 0010 303A2F73 		.ascii	"0:/sys/\000"
 371      79732F00 
 372              	.LC2:
 373 0018 52657052 		.ascii	"RepRapFirmware filament assignment file v1\000"
 373      61704669 
 373      726D7761 
 373      72652066 
 373      696C616D 
 374              		.section	.rodata._ZN8Filament15SaveAssignmentsEv.str1.4,"aMS",%progbits,1
 375              		.align	2
 376              	.LC3:
 377 0000 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 377      65726174 
 377      65642061 
 377      74202530 
 377      34752D25 
 378 0027 00       		.space	1
 379              	.LC4:
 380 0028 65787472 		.ascii	"extruder,filament\012\000"
 380      75646572 
 380      2C66696C 
 380      616D656E 
 380      740A00
 381 003b 00       		.space	1
 382              	.LC5:
 383 003c 25642C25 		.ascii	"%d,%s\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrJD5Wp.s 			page 8


 383      730A00
 384              		.section	.rodata._ZN8Filament22FilamentAssignmentFileE,"a",%progbits
 385              		.align	2
 386              		.type	_ZN8Filament22FilamentAssignmentFileE, %object
 387              		.size	_ZN8Filament22FilamentAssignmentFileE, 4
 388              	_ZN8Filament22FilamentAssignmentFileE:
 389 0000 00000000 		.word	.LC0
 390              		.section	.rodata._ZN8Filament29FilamentAssignmentFileCommentE,"a",%progbits
 391              		.align	2
 392              		.type	_ZN8Filament29FilamentAssignmentFileCommentE, %object
 393              		.size	_ZN8Filament29FilamentAssignmentFileCommentE, 4
 394              	_ZN8Filament29FilamentAssignmentFileCommentE:
 395 0000 18000000 		.word	.LC2
 396              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
