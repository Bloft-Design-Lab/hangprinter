ARM GAS  /tmp/ccZ1YHId.s 			page 1


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
  11              		.file	"Filament.cpp"
  12              		.section	.text._ZN8FilamentC2Ei,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN8FilamentC2Ei
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN8FilamentC2Ei, %function
  21              	_ZN8FilamentC2Ei:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 10B4     		push	{r4}
  26 0002 0024     		movs	r4, #0
  27 0004 034A     		ldr	r2, .L3
  28 0006 4160     		str	r1, [r0, #4]
  29 0008 1168     		ldr	r1, [r2]
  30 000a 0472     		strb	r4, [r0, #8]
  31 000c 0160     		str	r1, [r0]
  32 000e 10BC     		pop	{r4}
  33 0010 1060     		str	r0, [r2]
  34 0012 7047     		bx	lr
  35              	.L4:
  36              		.align	2
  37              	.L3:
  38 0014 00000000 		.word	.LANCHOR0
  39              		.size	_ZN8FilamentC2Ei, .-_ZN8FilamentC2Ei
  40              		.global	_ZN8FilamentC1Ei
  41              		.thumb_set _ZN8FilamentC1Ei,_ZN8FilamentC2Ei
  42              		.section	.text._ZN8Filament14LoadAssignmentEv,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	_ZN8Filament14LoadAssignmentEv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu softvfp
  50              		.type	_ZN8Filament14LoadAssignmentEv, %function
  51              	_ZN8Filament14LoadAssignmentEv:
  52              		@ args = 0, pretend = 0, frame = 96
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 30B5     		push	{r4, r5, lr}
  55 0002 224B     		ldr	r3, .L29
  56 0004 99B0     		sub	sp, sp, #100
  57 0006 1A68     		ldr	r2, [r3]	@ unaligned
ARM GAS  /tmp/ccZ1YHId.s 			page 2


  58 0008 0546     		mov	r5, r0
  59 000a 0023     		movs	r3, #0
  60 000c D2F86805 		ldr	r0, [r2, #1384]
  61 0010 1F49     		ldr	r1, .L29+4
  62 0012 204A     		ldr	r2, .L29+8
  63 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
  64 0018 B0B3     		cbz	r0, .L5
  65 001a 6946     		mov	r1, sp
  66 001c 6022     		movs	r2, #96
  67 001e 0446     		mov	r4, r0
  68 0020 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  69 0024 0028     		cmp	r0, #0
  70 0026 2CDD     		ble	.L8
  71 0028 1B49     		ldr	r1, .L29+12
  72 002a 6846     		mov	r0, sp
  73 002c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
  74 0030 38B3     		cbz	r0, .L8
  75 0032 6022     		movs	r2, #96
  76 0034 6946     		mov	r1, sp
  77 0036 2046     		mov	r0, r4
  78 0038 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  79 003c 0028     		cmp	r0, #0
  80 003e 20DD     		ble	.L8
  81              	.L11:
  82 0040 6022     		movs	r2, #96
  83 0042 6946     		mov	r1, sp
  84 0044 2046     		mov	r0, r4
  85 0046 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
  86 004a 0028     		cmp	r0, #0
  87 004c 19DD     		ble	.L8
  88 004e 9DF80030 		ldrb	r3, [sp]	@ zero_extendqisi2
  89 0052 303B     		subs	r3, r3, #48
  90 0054 092B     		cmp	r3, #9
  91 0056 F3D8     		bhi	.L11
  92 0058 6846     		mov	r0, sp
  93 005a FFF7FEFF 		bl	atoi
  94 005e 6B68     		ldr	r3, [r5, #4]
  95 0060 9842     		cmp	r0, r3
  96 0062 EDD1     		bne	.L11
  97 0064 6B46     		mov	r3, sp
  98 0066 02E0     		b	.L14
  99              	.L28:
 100 0068 2C2A     		cmp	r2, #44
 101 006a 1946     		mov	r1, r3
 102 006c 04D0     		beq	.L13
 103              	.L14:
 104 006e 1946     		mov	r1, r3
 105 0070 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 106 0074 002A     		cmp	r2, #0
 107 0076 F7D1     		bne	.L28
 108              	.L13:
 109 0078 05F10800 		add	r0, r5, #8
 110 007c 2022     		movs	r2, #32
 111 007e FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 112              	.L8:
 113 0082 2046     		mov	r0, r4
 114 0084 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  /tmp/ccZ1YHId.s 			page 3


 115              	.L5:
 116 0088 19B0     		add	sp, sp, #100
 117              		@ sp needed
 118 008a 30BD     		pop	{r4, r5, pc}
 119              	.L30:
 120              		.align	2
 121              	.L29:
 122 008c 00000000 		.word	reprap
 123 0090 10000000 		.word	.LC1
 124 0094 00000000 		.word	.LC0
 125 0098 18000000 		.word	.LC2
 126              		.size	_ZN8Filament14LoadAssignmentEv, .-_ZN8Filament14LoadAssignmentEv
 127              		.section	.text._ZN8Filament15SaveAssignmentsEv,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	_ZN8Filament15SaveAssignmentsEv
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu softvfp
 135              		.type	_ZN8Filament15SaveAssignmentsEv, %function
 136              	_ZN8Filament15SaveAssignmentsEv:
 137              		@ args = 0, pretend = 0, frame = 112
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 70B5     		push	{r4, r5, r6, lr}
 140 0002 2D4C     		ldr	r4, .L53
 141 0004 A0B0     		sub	sp, sp, #128
 142 0006 2168     		ldr	r1, [r4]
 143 0008 0123     		movs	r3, #1
 144 000a D1F86805 		ldr	r0, [r1, #1384]
 145 000e 2B4A     		ldr	r2, .L53+4
 146 0010 2B49     		ldr	r1, .L53+8
 147 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 148 0016 0028     		cmp	r0, #0
 149 0018 33D0     		beq	.L31
 150 001a 6022     		movs	r2, #96
 151 001c 08AB     		add	r3, sp, #32
 152 001e 0546     		mov	r5, r0
 153 0020 2849     		ldr	r1, .L53+12
 154 0022 06A8     		add	r0, sp, #24
 155 0024 0792     		str	r2, [sp, #28]
 156 0026 0693     		str	r3, [sp, #24]
 157 0028 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 158 002c 2068     		ldr	r0, [r4]
 159 002e FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 160 0032 40BB     		cbnz	r0, .L52
 161              	.L33:
 162 0034 0A21     		movs	r1, #10
 163 0036 06A8     		add	r0, sp, #24
 164 0038 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 165 003c 0699     		ldr	r1, [sp, #24]
 166 003e 2846     		mov	r0, r5
 167 0040 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 168 0044 2049     		ldr	r1, .L53+16
 169 0046 2846     		mov	r0, r5
 170 0048 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 171 004c 1F4B     		ldr	r3, .L53+20
ARM GAS  /tmp/ccZ1YHId.s 			page 4


 172 004e 1C68     		ldr	r4, [r3]
 173 0050 A4B1     		cbz	r4, .L37
 174 0052 1F4E     		ldr	r6, .L53+24
 175 0054 01E0     		b	.L38
 176              	.L36:
 177 0056 2468     		ldr	r4, [r4]
 178 0058 84B1     		cbz	r4, .L37
 179              	.L38:
 180 005a 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 181 005c 002B     		cmp	r3, #0
 182 005e FAD0     		beq	.L36
 183 0060 04F10803 		add	r3, r4, #8
 184 0064 6268     		ldr	r2, [r4, #4]
 185 0066 3146     		mov	r1, r6
 186 0068 06A8     		add	r0, sp, #24
 187 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 188 006e 0699     		ldr	r1, [sp, #24]
 189 0070 2846     		mov	r0, r5
 190 0072 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 191 0076 2468     		ldr	r4, [r4]
 192 0078 002C     		cmp	r4, #0
 193 007a EED1     		bne	.L38
 194              	.L37:
 195 007c 2846     		mov	r0, r5
 196 007e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 197              	.L31:
 198 0082 20B0     		add	sp, sp, #128
 199              		@ sp needed
 200 0084 70BD     		pop	{r4, r5, r6, pc}
 201              	.L52:
 202 0086 2068     		ldr	r0, [r4]
 203 0088 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 204 008c 20AB     		add	r3, sp, #128
 205 008e 43F86C0D 		str	r0, [r3, #-108]!
 206 0092 1846     		mov	r0, r3
 207 0094 FFF7FEFF 		bl	gmtime
 208 0098 4168     		ldr	r1, [r0, #4]
 209 009a 0369     		ldr	r3, [r0, #16]
 210 009c 4269     		ldr	r2, [r0, #20]
 211 009e 0291     		str	r1, [sp, #8]
 212 00a0 8168     		ldr	r1, [r0, #8]
 213 00a2 02F26C72 		addw	r2, r2, #1900
 214 00a6 0191     		str	r1, [sp, #4]
 215 00a8 C168     		ldr	r1, [r0, #12]
 216 00aa 06A8     		add	r0, sp, #24
 217 00ac 0091     		str	r1, [sp]
 218 00ae 0949     		ldr	r1, .L53+28
 219 00b0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 220 00b4 BEE7     		b	.L33
 221              	.L54:
 222 00b6 00BF     		.align	2
 223              	.L53:
 224 00b8 00000000 		.word	reprap
 225 00bc 00000000 		.word	.LC0
 226 00c0 10000000 		.word	.LC1
 227 00c4 18000000 		.word	.LC2
 228 00c8 28000000 		.word	.LC4
ARM GAS  /tmp/ccZ1YHId.s 			page 5


 229 00cc 00000000 		.word	.LANCHOR0
 230 00d0 3C000000 		.word	.LC5
 231 00d4 00000000 		.word	.LC3
 232              		.size	_ZN8Filament15SaveAssignmentsEv, .-_ZN8Filament15SaveAssignmentsEv
 233              		.section	.text._ZN8Filament4LoadEPKc,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZN8Filament4LoadEPKc
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu softvfp
 241              		.type	_ZN8Filament4LoadEPKc, %function
 242              	_ZN8Filament4LoadEPKc:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 08B5     		push	{r3, lr}
 246 0002 0830     		adds	r0, r0, #8
 247 0004 2022     		movs	r2, #32
 248 0006 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 249 000a BDE80840 		pop	{r3, lr}
 250 000e FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 251              		.size	_ZN8Filament4LoadEPKc, .-_ZN8Filament4LoadEPKc
 252 0012 00BF     		.section	.text._ZN8Filament6UnloadEv,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	_ZN8Filament6UnloadEv
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu softvfp
 260              		.type	_ZN8Filament6UnloadEv, %function
 261              	_ZN8Filament6UnloadEv:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 0023     		movs	r3, #0
 266 0002 0372     		strb	r3, [r0, #8]
 267 0004 FFF7FEBF 		b	_ZN8Filament15SaveAssignmentsEv
 268              		.size	_ZN8Filament6UnloadEv, .-_ZN8Filament6UnloadEv
 269              		.section	.text._ZN8Filament7IsInUseEPKc,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	_ZN8Filament7IsInUseEPKc
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu softvfp
 277              		.type	_ZN8Filament7IsInUseEPKc, %function
 278              	_ZN8Filament7IsInUseEPKc:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281 0000 38B5     		push	{r3, r4, r5, lr}
 282 0002 084B     		ldr	r3, .L69
 283 0004 0546     		mov	r5, r0
 284 0006 1C68     		ldr	r4, [r3]
 285 0008 14B9     		cbnz	r4, .L62
ARM GAS  /tmp/ccZ1YHId.s 			page 6


 286 000a 09E0     		b	.L61
 287              	.L68:
 288 000c 2468     		ldr	r4, [r4]
 289 000e 3CB1     		cbz	r4, .L61
 290              	.L62:
 291 0010 2946     		mov	r1, r5
 292 0012 04F10800 		add	r0, r4, #8
 293 0016 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 294 001a 0028     		cmp	r0, #0
 295 001c F6D0     		beq	.L68
 296 001e 38BD     		pop	{r3, r4, r5, pc}
 297              	.L61:
 298 0020 0020     		movs	r0, #0
 299 0022 38BD     		pop	{r3, r4, r5, pc}
 300              	.L70:
 301              		.align	2
 302              	.L69:
 303 0024 00000000 		.word	.LANCHOR0
 304              		.size	_ZN8Filament7IsInUseEPKc, .-_ZN8Filament7IsInUseEPKc
 305              		.section	.text._ZN8Filament21GetFilamentByExtruderEi,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	_ZN8Filament21GetFilamentByExtruderEi
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu softvfp
 313              		.type	_ZN8Filament21GetFilamentByExtruderEi, %function
 314              	_ZN8Filament21GetFilamentByExtruderEi:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 044B     		ldr	r3, .L81
 319 0002 02E0     		b	.L79
 320              	.L80:
 321 0004 5A68     		ldr	r2, [r3, #4]
 322 0006 9042     		cmp	r0, r2
 323 0008 02D0     		beq	.L71
 324              	.L79:
 325 000a 1B68     		ldr	r3, [r3]
 326 000c 002B     		cmp	r3, #0
 327 000e F9D1     		bne	.L80
 328              	.L71:
 329 0010 1846     		mov	r0, r3
 330 0012 7047     		bx	lr
 331              	.L82:
 332              		.align	2
 333              	.L81:
 334 0014 00000000 		.word	.LANCHOR0
 335              		.size	_ZN8Filament21GetFilamentByExtruderEi, .-_ZN8Filament21GetFilamentByExtruderEi
 336              		.global	_ZN8Filament12filamentListE
 337              		.global	_ZN8Filament29FilamentAssignmentFileCommentE
 338              		.global	_ZN8Filament22FilamentAssignmentFileE
 339              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 340              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 341              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 342              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  /tmp/ccZ1YHId.s 			page 7


 343 0000 00       		.space	1
 344              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 345              		.align	2
 346              		.type	_ZL32cpu_irq_critical_section_counter, %object
 347              		.size	_ZL32cpu_irq_critical_section_counter, 4
 348              	_ZL32cpu_irq_critical_section_counter:
 349 0000 00000000 		.space	4
 350              		.section	.bss._ZN8Filament12filamentListE,"aw",%nobits
 351              		.align	2
 352              		.set	.LANCHOR0,. + 0
 353              		.type	_ZN8Filament12filamentListE, %object
 354              		.size	_ZN8Filament12filamentListE, 4
 355              	_ZN8Filament12filamentListE:
 356 0000 00000000 		.space	4
 357              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 358              		.align	2
 359              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 360              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 361              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 362 0000 00000000 		.space	4
 363              		.section	.rodata._ZN8Filament14LoadAssignmentEv.str1.4,"aMS",%progbits,1
 364              		.align	2
 365              	.LC0:
 366 0000 66696C61 		.ascii	"filaments.csv\000"
 366      6D656E74 
 366      732E6373 
 366      7600
 367 000e 0000     		.space	2
 368              	.LC1:
 369 0010 303A2F73 		.ascii	"0:/sys/\000"
 369      79732F00 
 370              	.LC2:
 371 0018 52657052 		.ascii	"RepRapFirmware filament assignment file v1\000"
 371      61704669 
 371      726D7761 
 371      72652066 
 371      696C616D 
 372              		.section	.rodata._ZN8Filament15SaveAssignmentsEv.str1.4,"aMS",%progbits,1
 373              		.align	2
 374              	.LC3:
 375 0000 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 375      65726174 
 375      65642061 
 375      74202530 
 375      34752D25 
 376 0027 00       		.space	1
 377              	.LC4:
 378 0028 65787472 		.ascii	"extruder,filament\012\000"
 378      75646572 
 378      2C66696C 
 378      616D656E 
 378      740A00
 379 003b 00       		.space	1
 380              	.LC5:
 381 003c 25642C25 		.ascii	"%d,%s\012\000"
 381      730A00
 382              		.section	.rodata._ZN8Filament22FilamentAssignmentFileE,"a",%progbits
ARM GAS  /tmp/ccZ1YHId.s 			page 8


 383              		.align	2
 384              		.type	_ZN8Filament22FilamentAssignmentFileE, %object
 385              		.size	_ZN8Filament22FilamentAssignmentFileE, 4
 386              	_ZN8Filament22FilamentAssignmentFileE:
 387 0000 00000000 		.word	.LC0
 388              		.section	.rodata._ZN8Filament29FilamentAssignmentFileCommentE,"a",%progbits
 389              		.align	2
 390              		.type	_ZN8Filament29FilamentAssignmentFileCommentE, %object
 391              		.size	_ZN8Filament29FilamentAssignmentFileCommentE, 4
 392              	_ZN8Filament29FilamentAssignmentFileCommentE:
 393 0000 18000000 		.word	.LC2
 394              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
