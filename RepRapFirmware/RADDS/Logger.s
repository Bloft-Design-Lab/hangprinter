ARM GAS  /tmp/cczOABqS.s 			page 1


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
  11              		.file	"Logger.cpp"
  12              		.section	.text._ZN6LoggerC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN6LoggerC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN6LoggerC2Ev, %function
  21              	_ZN6LoggerC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0022     		movs	r2, #0
  26 0002 0260     		str	r2, [r0]
  27 0004 4260     		str	r2, [r0, #4]
  28 0006 8260     		str	r2, [r0, #8]
  29 0008 0273     		strb	r2, [r0, #12]
  30 000a 4273     		strb	r2, [r0, #13]
  31 000c 7047     		bx	lr
  32              		.size	_ZN6LoggerC2Ev, .-_ZN6LoggerC2Ev
  33              		.global	_ZN6LoggerC1Ev
  34              		.thumb_set _ZN6LoggerC1Ev,_ZN6LoggerC2Ev
  35 000e 00BF     		.section	.text._ZN6Logger5FlushEb,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	_ZN6Logger5FlushEb
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu softvfp
  43              		.type	_ZN6Logger5FlushEb, %function
  44              	_ZN6Logger5FlushEb:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 0368     		ldr	r3, [r0]
  48 0002 03B3     		cbz	r3, .L15
  49 0004 027B     		ldrb	r2, [r0, #12]	@ zero_extendqisi2
  50 0006 F2B1     		cbz	r2, .L15
  51 0008 427B     		ldrb	r2, [r0, #13]	@ zero_extendqisi2
  52 000a E2B9     		cbnz	r2, .L15
  53 000c 70B5     		push	{r4, r5, r6, lr}
  54 000e 0446     		mov	r4, r0
  55 0010 1846     		mov	r0, r3
  56 0012 0D46     		mov	r5, r1
  57 0014 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
ARM GAS  /tmp/cczOABqS.s 			page 2


  58 0018 0646     		mov	r6, r0
  59 001a FFF7FEFF 		bl	millis
  60 001e 2DB9     		cbnz	r5, .L7
  61 0020 43F69723 		movw	r3, #14999
  62 0024 6268     		ldr	r2, [r4, #4]
  63 0026 801A     		subs	r0, r0, r2
  64 0028 9842     		cmp	r0, r3
  65 002a 0DD9     		bls	.L19
  66              	.L7:
  67 002c 0123     		movs	r3, #1
  68 002e 2068     		ldr	r0, [r4]
  69 0030 6373     		strb	r3, [r4, #13]
  70 0032 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
  71 0036 FFF7FEFF 		bl	millis
  72 003a 0023     		movs	r3, #0
  73 003c 6060     		str	r0, [r4, #4]
  74 003e A660     		str	r6, [r4, #8]
  75 0040 2373     		strb	r3, [r4, #12]
  76 0042 6373     		strb	r3, [r4, #13]
  77 0044 70BD     		pop	{r4, r5, r6, pc}
  78              	.L15:
  79 0046 7047     		bx	lr
  80              	.L19:
  81 0048 A368     		ldr	r3, [r4, #8]
  82 004a 5B0A     		lsrs	r3, r3, #9
  83 004c B3EB562F 		cmp	r3, r6, lsr #9
  84 0050 ECD1     		bne	.L7
  85 0052 70BD     		pop	{r4, r5, r6, pc}
  86              		.size	_ZN6Logger5FlushEb, .-_ZN6Logger5FlushEb
  87              		.global	__aeabi_uldivmod
  88              		.section	.text._ZN6Logger13WriteDateTimeEl,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	_ZN6Logger13WriteDateTimeEl
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu softvfp
  96              		.type	_ZN6Logger13WriteDateTimeEl, %function
  97              	_ZN6Logger13WriteDateTimeEl:
  98              		@ args = 0, pretend = 0, frame = 48
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 30B5     		push	{r4, r5, lr}
 101 0002 0024     		movs	r4, #0
 102 0004 1F22     		movs	r2, #31
 103 0006 91B0     		sub	sp, sp, #68
 104 0008 10AB     		add	r3, sp, #64
 105 000a 03F8204D 		strb	r4, [r3, #-32]!
 106 000e 0546     		mov	r5, r0
 107 0010 0591     		str	r1, [sp, #20]
 108 0012 0693     		str	r3, [sp, #24]
 109 0014 0792     		str	r2, [sp, #28]
 110 0016 F1B1     		cbz	r1, .L24
 111 0018 05A8     		add	r0, sp, #20
 112 001a FFF7FEFF 		bl	gmtime
 113 001e 0168     		ldr	r1, [r0]
 114 0020 0369     		ldr	r3, [r0, #16]
ARM GAS  /tmp/cczOABqS.s 			page 3


 115 0022 4269     		ldr	r2, [r0, #20]
 116 0024 0391     		str	r1, [sp, #12]
 117 0026 4168     		ldr	r1, [r0, #4]
 118 0028 0133     		adds	r3, r3, #1
 119 002a 0291     		str	r1, [sp, #8]
 120 002c 8168     		ldr	r1, [r0, #8]
 121 002e 02F26C72 		addw	r2, r2, #1900
 122 0032 0191     		str	r1, [sp, #4]
 123 0034 C068     		ldr	r0, [r0, #12]
 124 0036 1849     		ldr	r1, .L25
 125 0038 0090     		str	r0, [sp]
 126 003a 06A8     		add	r0, sp, #24
 127 003c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 128              	.L22:
 129 0040 069C     		ldr	r4, [sp, #24]
 130 0042 2046     		mov	r0, r4
 131 0044 FFF7FEFF 		bl	strlen
 132 0048 2146     		mov	r1, r4
 133 004a 0246     		mov	r2, r0
 134 004c 2868     		ldr	r0, [r5]
 135 004e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 136 0052 11B0     		add	sp, sp, #68
 137              		@ sp needed
 138 0054 30BD     		pop	{r4, r5, pc}
 139              	.L24:
 140 0056 FFF7FEFF 		bl	millis64
 141 005a 4FF47A72 		mov	r2, #1000
 142 005e 0023     		movs	r3, #0
 143 0060 FFF7FEFF 		bl	__aeabi_uldivmod
 144 0064 4FF46163 		mov	r3, #3600
 145 0068 0C4A     		ldr	r2, .L25+4
 146 006a A4F17734 		sub	r4, r4, #2004318071
 147 006e A2FB0012 		umull	r1, r2, r2, r0
 148 0072 D20A     		lsrs	r2, r2, #11
 149 0074 03FB1203 		mls	r3, r3, r2, r0
 150 0078 A4FB00E1 		umull	lr, r1, r4, r0
 151 007c A4FB0343 		umull	r4, r3, r4, r3
 152 0080 4909     		lsrs	r1, r1, #5
 153 0082 C1EB0111 		rsb	r1, r1, r1, lsl #4
 154 0086 A0EB8100 		sub	r0, r0, r1, lsl #2
 155 008a 0090     		str	r0, [sp]
 156 008c 5B09     		lsrs	r3, r3, #5
 157 008e 0449     		ldr	r1, .L25+8
 158 0090 06A8     		add	r0, sp, #24
 159 0092 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 160 0096 D3E7     		b	.L22
 161              	.L26:
 162              		.align	2
 163              	.L25:
 164 0098 20000000 		.word	.LC1
 165 009c C5B3A291 		.word	-1851608123
 166 00a0 00000000 		.word	.LC0
 167              		.size	_ZN6Logger13WriteDateTimeEl, .-_ZN6Logger13WriteDateTimeEl
 168              		.section	.text._ZN6Logger10LogMessageElP12OutputBuffer,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	_ZN6Logger10LogMessageElP12OutputBuffer
ARM GAS  /tmp/cczOABqS.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu softvfp
 176              		.type	_ZN6Logger10LogMessageElP12OutputBuffer, %function
 177              	_ZN6Logger10LogMessageElP12OutputBuffer:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 70B5     		push	{r4, r5, r6, lr}
 181 0002 0468     		ldr	r4, [r0]
 182 0004 8CB1     		cbz	r4, .L27
 183 0006 447B     		ldrb	r4, [r0, #13]	@ zero_extendqisi2
 184 0008 7CB9     		cbnz	r4, .L27
 185 000a 0126     		movs	r6, #1
 186 000c 4673     		strb	r6, [r0, #13]
 187 000e 1546     		mov	r5, r2
 188 0010 0446     		mov	r4, r0
 189 0012 FFF7FEFF 		bl	_ZN6Logger13WriteDateTimeEl
 190 0016 48B9     		cbnz	r0, .L46
 191              	.L30:
 192 0018 2068     		ldr	r0, [r4]
 193 001a 18B1     		cbz	r0, .L31
 194 001c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 195 0020 0023     		movs	r3, #0
 196 0022 2360     		str	r3, [r4]
 197              	.L31:
 198 0024 0023     		movs	r3, #0
 199 0026 6373     		strb	r3, [r4, #13]
 200 0028 70BD     		pop	{r4, r5, r6, pc}
 201              	.L27:
 202 002a 70BD     		pop	{r4, r5, r6, pc}
 203              	.L46:
 204 002c 2846     		mov	r0, r5
 205 002e 2146     		mov	r1, r4
 206 0030 FFF7FEFF 		bl	_ZNK12OutputBuffer11WriteToFileER8FileData
 207 0034 0028     		cmp	r0, #0
 208 0036 EFD0     		beq	.L30
 209 0038 0023     		movs	r3, #0
 210 003a 2673     		strb	r6, [r4, #12]
 211 003c 6373     		strb	r3, [r4, #13]
 212 003e 70BD     		pop	{r4, r5, r6, pc}
 213              		.size	_ZN6Logger10LogMessageElP12OutputBuffer, .-_ZN6Logger10LogMessageElP12OutputBuffer
 214              		.section	.text._ZN6Logger18InternalLogMessageElPKc,"ax",%progbits
 215              		.align	1
 216              		.p2align 2,,3
 217              		.global	_ZN6Logger18InternalLogMessageElPKc
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu softvfp
 222              		.type	_ZN6Logger18InternalLogMessageElPKc, %function
 223              	_ZN6Logger18InternalLogMessageElPKc:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 70B5     		push	{r4, r5, r6, lr}
 227 0002 1546     		mov	r5, r2
 228 0004 0446     		mov	r4, r0
ARM GAS  /tmp/cczOABqS.s 			page 5


 229 0006 FFF7FEFF 		bl	_ZN6Logger13WriteDateTimeEl
 230 000a 90B1     		cbz	r0, .L48
 231 000c 2846     		mov	r0, r5
 232 000e FFF7FEFF 		bl	strlen
 233 0012 0646     		mov	r6, r0
 234 0014 38B9     		cbnz	r0, .L67
 235              	.L49:
 236 0016 0A21     		movs	r1, #10
 237 0018 2068     		ldr	r0, [r4]
 238 001a FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 239 001e 40B1     		cbz	r0, .L48
 240              	.L52:
 241 0020 0123     		movs	r3, #1
 242 0022 2373     		strb	r3, [r4, #12]
 243 0024 70BD     		pop	{r4, r5, r6, pc}
 244              	.L67:
 245 0026 0246     		mov	r2, r0
 246 0028 2946     		mov	r1, r5
 247 002a 2068     		ldr	r0, [r4]
 248 002c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 249 0030 38B9     		cbnz	r0, .L68
 250              	.L48:
 251 0032 2068     		ldr	r0, [r4]
 252 0034 20B1     		cbz	r0, .L47
 253 0036 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 254 003a 0023     		movs	r3, #0
 255 003c 2360     		str	r3, [r4]
 256 003e 70BD     		pop	{r4, r5, r6, pc}
 257              	.L47:
 258 0040 70BD     		pop	{r4, r5, r6, pc}
 259              	.L68:
 260 0042 3544     		add	r5, r5, r6
 261 0044 15F8013C 		ldrb	r3, [r5, #-1]	@ zero_extendqisi2
 262 0048 0A2B     		cmp	r3, #10
 263 004a E4D1     		bne	.L49
 264 004c E8E7     		b	.L52
 265              		.size	_ZN6Logger18InternalLogMessageElPKc, .-_ZN6Logger18InternalLogMessageElPKc
 266 004e 00BF     		.section	.text._ZN6Logger5StartElRK9StringRef,"ax",%progbits
 267              		.align	1
 268              		.p2align 2,,3
 269              		.global	_ZN6Logger5StartElRK9StringRef
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu softvfp
 274              		.type	_ZN6Logger5StartElRK9StringRef, %function
 275              	_ZN6Logger5StartElRK9StringRef:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 279 0002 03B1     		cbz	r3, .L83
 280 0004 7047     		bx	lr
 281              	.L83:
 282 0006 70B5     		push	{r4, r5, r6, lr}
 283 0008 0E46     		mov	r6, r1
 284 000a 0121     		movs	r1, #1
 285 000c 104B     		ldr	r3, .L84
ARM GAS  /tmp/cczOABqS.s 			page 6


 286 000e 1268     		ldr	r2, [r2]
 287 0010 1B68     		ldr	r3, [r3]	@ unaligned
 288 0012 4173     		strb	r1, [r0, #13]
 289 0014 0446     		mov	r4, r0
 290 0016 0F49     		ldr	r1, .L84+4
 291 0018 D3F86805 		ldr	r0, [r3, #1384]
 292 001c 0223     		movs	r3, #2
 293 001e FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 294 0022 0546     		mov	r5, r0
 295 0024 88B1     		cbz	r0, .L71
 296 0026 2068     		ldr	r0, [r4]
 297 0028 08B1     		cbz	r0, .L72
 298 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 299              	.L72:
 300 002e 2560     		str	r5, [r4]
 301 0030 2846     		mov	r0, r5
 302 0032 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 303 0036 0146     		mov	r1, r0
 304 0038 2068     		ldr	r0, [r4]
 305 003a A160     		str	r1, [r4, #8]
 306 003c FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 307 0040 3146     		mov	r1, r6
 308 0042 054A     		ldr	r2, .L84+8
 309 0044 2046     		mov	r0, r4
 310 0046 FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageElPKc
 311              	.L71:
 312 004a 0023     		movs	r3, #0
 313 004c 6373     		strb	r3, [r4, #13]
 314 004e 70BD     		pop	{r4, r5, r6, pc}
 315              	.L85:
 316              		.align	2
 317              	.L84:
 318 0050 00000000 		.word	reprap
 319 0054 00000000 		.word	.LC2
 320 0058 08000000 		.word	.LC3
 321              		.size	_ZN6Logger5StartElRK9StringRef, .-_ZN6Logger5StartElRK9StringRef
 322              		.section	.text._ZN6Logger4StopEl,"ax",%progbits
 323              		.align	1
 324              		.p2align 2,,3
 325              		.global	_ZN6Logger4StopEl
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu softvfp
 330              		.type	_ZN6Logger4StopEl, %function
 331              	_ZN6Logger4StopEl:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334 0000 0268     		ldr	r2, [r0]
 335 0002 8AB1     		cbz	r2, .L96
 336 0004 38B5     		push	{r3, r4, r5, lr}
 337 0006 457B     		ldrb	r5, [r0, #13]	@ zero_extendqisi2
 338 0008 0446     		mov	r4, r0
 339 000a 65B9     		cbnz	r5, .L86
 340 000c 0123     		movs	r3, #1
 341 000e 074A     		ldr	r2, .L100
 342 0010 4373     		strb	r3, [r0, #13]
ARM GAS  /tmp/cczOABqS.s 			page 7


 343 0012 FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageElPKc
 344 0016 2068     		ldr	r0, [r4]
 345 0018 10B1     		cbz	r0, .L90
 346 001a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 347 001e 2560     		str	r5, [r4]
 348              	.L90:
 349 0020 0023     		movs	r3, #0
 350 0022 6373     		strb	r3, [r4, #13]
 351 0024 38BD     		pop	{r3, r4, r5, pc}
 352              	.L86:
 353 0026 38BD     		pop	{r3, r4, r5, pc}
 354              	.L96:
 355 0028 7047     		bx	lr
 356              	.L101:
 357 002a 00BF     		.align	2
 358              	.L100:
 359 002c 00000000 		.word	.LC4
 360              		.size	_ZN6Logger4StopEl, .-_ZN6Logger4StopEl
 361              		.section	.text._ZN6Logger10LogMessageElPKc,"ax",%progbits
 362              		.align	1
 363              		.p2align 2,,3
 364              		.global	_ZN6Logger10LogMessageElPKc
 365              		.syntax unified
 366              		.thumb
 367              		.thumb_func
 368              		.fpu softvfp
 369              		.type	_ZN6Logger10LogMessageElPKc, %function
 370              	_ZN6Logger10LogMessageElPKc:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373 0000 38B5     		push	{r3, r4, r5, lr}
 374 0002 0368     		ldr	r3, [r0]
 375 0004 3BB1     		cbz	r3, .L102
 376 0006 457B     		ldrb	r5, [r0, #13]	@ zero_extendqisi2
 377 0008 0446     		mov	r4, r0
 378 000a 25B9     		cbnz	r5, .L102
 379 000c 0123     		movs	r3, #1
 380 000e 4373     		strb	r3, [r0, #13]
 381 0010 FFF7FEFF 		bl	_ZN6Logger18InternalLogMessageElPKc
 382 0014 6573     		strb	r5, [r4, #13]
 383              	.L102:
 384 0016 38BD     		pop	{r3, r4, r5, pc}
 385              		.size	_ZN6Logger10LogMessageElPKc, .-_ZN6Logger10LogMessageElPKc
 386              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 387              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 388              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 389              	_ZL28cpu_irq_prev_interrupt_state:
 390 0000 00       		.space	1
 391              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 392              		.align	2
 393              		.type	_ZL32cpu_irq_critical_section_counter, %object
 394              		.size	_ZL32cpu_irq_critical_section_counter, 4
 395              	_ZL32cpu_irq_critical_section_counter:
 396 0000 00000000 		.space	4
 397              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 398              		.align	2
 399              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
ARM GAS  /tmp/cczOABqS.s 			page 8


 400              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 401              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 402 0000 00000000 		.space	4
 403              		.section	.rodata._ZN6Logger13WriteDateTimeEl.str1.4,"aMS",%progbits,1
 404              		.align	2
 405              	.LC0:
 406 0000 706F7765 		.ascii	"power up + %02lu:%02lu:%02lu \000"
 406      72207570 
 406      202B2025 
 406      30326C75 
 406      3A253032 
 407 001e 0000     		.space	2
 408              	.LC1:
 409 0020 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u \000"
 409      2D253032 
 409      752D2530 
 409      32752025 
 409      3032753A 
 410              		.section	.rodata._ZN6Logger4StopEl.str1.4,"aMS",%progbits,1
 411              		.align	2
 412              	.LC4:
 413 0000 4576656E 		.ascii	"Event logging stopped\012\000"
 413      74206C6F 
 413      6767696E 
 413      67207374 
 413      6F707065 
 414              		.section	.rodata._ZN6Logger5StartElRK9StringRef.str1.4,"aMS",%progbits,1
 415              		.align	2
 416              	.LC2:
 417 0000 303A2F73 		.ascii	"0:/sys/\000"
 417      79732F00 
 418              	.LC3:
 419 0008 4576656E 		.ascii	"Event logging started\012\000"
 419      74206C6F 
 419      6767696E 
 419      67207374 
 419      61727465 
 420              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
