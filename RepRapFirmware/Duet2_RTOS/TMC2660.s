ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 1


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
  13              		.file	"TMC2660.cpp"
  14              		.text
  15              		.section	.text._ZN14TmcDriverState6EnableEb.part.4,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN14TmcDriverState6EnableEb.part.4, %function
  23              	_ZN14TmcDriverState6EnableEb.part.4:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 30B4     		push	{r4, r5}
  28 0002 80F84010 		strb	r1, [r0, #64]
  29 0006 8369     		ldr	r3, [r0, #24]
  30 0008 09B9     		cbnz	r1, .L2
  31 000a 23F00F03 		bic	r3, r3, #15
  32              	.L2:
  33 000e 8360     		str	r3, [r0, #8]
  34 0010 C369     		ldr	r3, [r0, #28]
  35 0012 43F00403 		orr	r3, r3, #4
  36 0016 C361     		str	r3, [r0, #28]
  37              		.syntax unified
  38              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  39 0018 EFF31084 		MRS r4, primask
  40              	@ 0 "" 2
  41              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  42 001c 72B6     		cpsid i
  43              	@ 0 "" 2
  44              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  45 001e BFF35F8F 		dmb
  46              	@ 0 "" 2
  47              		.thumb
  48              		.syntax unified
  49 0022 144A     		ldr	r2, .L8
  50 0024 4FF0FF35 		mov	r5, #-1
  51 0028 0023     		movs	r3, #0
  52 002a 4563     		str	r5, [r0, #52]
  53 002c 1370     		strb	r3, [r2]
  54 002e E1B1     		cbz	r1, .L3
  55 0030 C36B     		ldr	r3, [r0, #60]
  56 0032 23F00103 		bic	r3, r3, #1
  57 0036 C363     		str	r3, [r0, #60]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 2


  58 0038 836B     		ldr	r3, [r0, #56]
  59 003a 23F00103 		bic	r3, r3, #1
  60 003e 8363     		str	r3, [r0, #56]
  61 0040 C368     		ldr	r3, [r0, #12]
  62 0042 23F03003 		bic	r3, r3, #48
  63 0046 43F01003 		orr	r3, r3, #16
  64 004a C360     		str	r3, [r0, #12]
  65              	.L4:
  66 004c FF23     		movs	r3, #255
  67 004e 80F84130 		strb	r3, [r0, #65]
  68 0052 C369     		ldr	r3, [r0, #28]
  69 0054 43F00803 		orr	r3, r3, #8
  70 0058 C361     		str	r3, [r0, #28]
  71 005a 24B9     		cbnz	r4, .L1
  72 005c 0123     		movs	r3, #1
  73 005e 1370     		strb	r3, [r2]
  74              		.syntax unified
  75              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
  76 0060 BFF35F8F 		dmb
  77              	@ 0 "" 2
  78              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
  79 0064 62B6     		cpsie i
  80              	@ 0 "" 2
  81              		.thumb
  82              		.syntax unified
  83              	.L1:
  84 0066 30BC     		pop	{r4, r5}
  85 0068 7047     		bx	lr
  86              	.L3:
  87 006a C368     		ldr	r3, [r0, #12]
  88 006c 23F03003 		bic	r3, r3, #48
  89 0070 C360     		str	r3, [r0, #12]
  90 0072 EBE7     		b	.L4
  91              	.L9:
  92              		.align	2
  93              	.L8:
  94 0074 00000000 		.word	g_interrupt_enabled
  95              		.size	_ZN14TmcDriverState6EnableEb.part.4, .-_ZN14TmcDriverState6EnableEb.part.4
  96              		.section	.text._ZN14TmcDriverState4InitEmm,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN14TmcDriverState4InitEmm
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN14TmcDriverState4InitEmm, %function
 105              	_ZN14TmcDriverState4InitEmm:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 38B5     		push	{r3, r4, r5, lr}
 109 0002 0446     		mov	r4, r0
 110 0004 0162     		str	r1, [r0, #32]
 111 0006 4261     		str	r2, [r0, #20]
 112 0008 0421     		movs	r1, #4
 113 000a D0B2     		uxtb	r0, r2
 114 000c 0022     		movs	r2, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 3


 115 000e FFF7FEFF 		bl	pinModeDuet
 116 0012 4FF40173 		mov	r3, #516
 117 0016 2360     		str	r3, [r4]
 118 0018 1E4A     		ldr	r2, .L12
 119 001a A260     		str	r2, [r4, #8]
 120 001c 4FF42023 		mov	r3, #655360
 121 0020 2361     		str	r3, [r4, #16]
 122 0022 0022     		movs	r2, #0
 123 0024 1C4D     		ldr	r5, .L12+4
 124 0026 1D48     		ldr	r0, .L12+8
 125 0028 6560     		str	r5, [r4, #4]
 126 002a 1F21     		movs	r1, #31
 127 002c FF23     		movs	r3, #255
 128 002e E060     		str	r0, [r4, #12]
 129 0030 E161     		str	r1, [r4, #28]
 130 0032 A263     		str	r2, [r4, #56]
 131 0034 E263     		str	r2, [r4, #60]
 132 0036 84F84130 		strb	r3, [r4, #65]
 133 003a 2368     		ldr	r3, [r4]
 134 003c 1849     		ldr	r1, .L12+12
 135 003e 84F84020 		strb	r2, [r4, #64]
 136 0042 23F00F03 		bic	r3, r3, #15
 137 0046 43F40173 		orr	r3, r3, #516
 138 004a 2360     		str	r3, [r4]
 139 004c E369     		ldr	r3, [r4, #28]
 140 004e 2263     		str	r2, [r4, #48]
 141 0050 43F00103 		orr	r3, r3, #1
 142 0054 E361     		str	r3, [r4, #28]
 143 0056 6368     		ldr	r3, [r4, #4]
 144 0058 A161     		str	r1, [r4, #24]
 145 005a 23F4FE43 		bic	r3, r3, #32512
 146 005e 43F48073 		orr	r3, r3, #256
 147 0062 6360     		str	r3, [r4, #4]
 148 0064 E369     		ldr	r3, [r4, #28]
 149 0066 43F00203 		orr	r3, r3, #2
 150 006a E361     		str	r3, [r4, #28]
 151 006c 6368     		ldr	r3, [r4, #4]
 152 006e 23F48033 		bic	r3, r3, #65536
 153 0072 6360     		str	r3, [r4, #4]
 154 0074 E369     		ldr	r3, [r4, #28]
 155 0076 4FF0FF35 		mov	r5, #-1
 156 007a 40F2FF30 		movw	r0, #1023
 157 007e 0421     		movs	r1, #4
 158 0080 43F00203 		orr	r3, r3, #2
 159 0084 41F24F22 		movw	r2, #4687
 160 0088 6563     		str	r5, [r4, #52]
 161 008a E062     		str	r0, [r4, #44]
 162 008c 6162     		str	r1, [r4, #36]
 163 008e E361     		str	r3, [r4, #28]
 164 0090 A262     		str	r2, [r4, #40]
 165 0092 38BD     		pop	{r3, r4, r5, pc}
 166              	.L13:
 167              		.align	2
 168              	.L12:
 169 0094 B0010900 		.word	590256
 170 0098 00010C00 		.word	786688
 171 009c 40030E00 		.word	918336
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 4


 172 00a0 B4010900 		.word	590260
 173              		.size	_ZN14TmcDriverState4InitEmm, .-_ZN14TmcDriverState4InitEmm
 174              		.section	.text._ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	_ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 182              		.type	_ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister, %function
 183              	_ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 0929     		cmp	r1, #9
 188 0002 24D8     		bhi	.L25
 189 0004 DFE801F0 		tbb	[pc, r1]
 190              	.L17:
 191 0008 07       		.byte	(.L16-.L17)/2
 192 0009 0B       		.byte	(.L18-.L17)/2
 193 000a 0F       		.byte	(.L19-.L17)/2
 194 000b 13       		.byte	(.L20-.L17)/2
 195 000c 17       		.byte	(.L21-.L17)/2
 196 000d 1B       		.byte	(.L22-.L17)/2
 197 000e 1F       		.byte	(.L23-.L17)/2
 198 000f 23       		.byte	(.L25-.L17)/2
 199 0010 23       		.byte	(.L25-.L17)/2
 200 0011 05       		.byte	(.L24-.L17)/2
 201              		.p2align 1
 202              	.L24:
 203 0012 406B     		ldr	r0, [r0, #52]
 204 0014 7047     		bx	lr
 205              	.L16:
 206 0016 8069     		ldr	r0, [r0, #24]
 207 0018 00F00F00 		and	r0, r0, #15
 208 001c 7047     		bx	lr
 209              	.L18:
 210 001e 8069     		ldr	r0, [r0, #24]
 211 0020 C0F3C130 		ubfx	r0, r0, #15, #2
 212 0024 7047     		bx	lr
 213              	.L19:
 214 0026 8069     		ldr	r0, [r0, #24]
 215 0028 C0F30210 		ubfx	r0, r0, #4, #3
 216 002c 7047     		bx	lr
 217              	.L20:
 218 002e 8069     		ldr	r0, [r0, #24]
 219 0030 C0F3C310 		ubfx	r0, r0, #7, #4
 220 0034 7047     		bx	lr
 221              	.L21:
 222 0036 8069     		ldr	r0, [r0, #24]
 223 0038 C0F3C120 		ubfx	r0, r0, #11, #2
 224 003c 7047     		bx	lr
 225              	.L22:
 226 003e 8069     		ldr	r0, [r0, #24]
 227 0040 C0F31000 		ubfx	r0, r0, #0, #17
 228 0044 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 5


 229              	.L23:
 230 0046 0069     		ldr	r0, [r0, #16]
 231 0048 C0F31000 		ubfx	r0, r0, #0, #17
 232 004c 7047     		bx	lr
 233              	.L25:
 234 004e 0020     		movs	r0, #0
 235 0050 7047     		bx	lr
 236              		.size	_ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister, .-_ZNK14TmcDriverState11GetRegister
 237 0052 00BF     		.section	.text._ZN14TmcDriverState11SetChopConfEm,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZN14TmcDriverState11SetChopConfEm
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZN14TmcDriverState11SetChopConfEm, %function
 246              	_ZN14TmcDriverState11SetChopConfEm:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 11F00F03 		ands	r3, r1, #15
 251 0004 20D0     		beq	.L32
 252 0006 012B     		cmp	r3, #1
 253 0008 1BD0     		beq	.L37
 254              	.L28:
 255 000a 11F48043 		ands	r3, r1, #16384
 256 000e 10B4     		push	{r4}
 257 0010 06D1     		bne	.L29
 258 0012 C1F30212 		ubfx	r2, r1, #4, #3
 259 0016 C1F3C314 		ubfx	r4, r1, #7, #4
 260 001a 2244     		add	r2, r2, r4
 261 001c 0F2A     		cmp	r2, #15
 262 001e 1AD8     		bhi	.L33
 263              	.L29:
 264 0020 C1F31003 		ubfx	r3, r1, #0, #17
 265 0024 90F84020 		ldrb	r2, [r0, #64]	@ zero_extendqisi2
 266 0028 43F40023 		orr	r3, r3, #524288
 267 002c 8361     		str	r3, [r0, #24]
 268 002e 6AB1     		cbz	r2, .L38
 269              	.L30:
 270 0030 8360     		str	r3, [r0, #8]
 271 0032 C369     		ldr	r3, [r0, #28]
 272 0034 5DF8044B 		ldr	r4, [sp], #4
 273 0038 43F00403 		orr	r3, r3, #4
 274 003c C361     		str	r3, [r0, #28]
 275 003e 0120     		movs	r0, #1
 276 0040 7047     		bx	lr
 277              	.L37:
 278 0042 11F4C033 		ands	r3, r1, #98304
 279 0046 E0D1     		bne	.L28
 280              	.L32:
 281 0048 1846     		mov	r0, r3
 282 004a 7047     		bx	lr
 283              	.L38:
 284 004c 044B     		ldr	r3, .L39
 285 004e 0B40     		ands	r3, r3, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 6


 286 0050 43F40023 		orr	r3, r3, #524288
 287 0054 ECE7     		b	.L30
 288              	.L33:
 289 0056 1846     		mov	r0, r3
 290 0058 5DF8044B 		ldr	r4, [sp], #4
 291 005c 7047     		bx	lr
 292              	.L40:
 293 005e 00BF     		.align	2
 294              	.L39:
 295 0060 F0FF0100 		.word	131056
 296              		.size	_ZN14TmcDriverState11SetChopConfEm, .-_ZN14TmcDriverState11SetChopConfEm
 297              		.section	.text._ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	_ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu fpv4-sp-d16
 305              		.type	_ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm, %function
 306              	_ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 0629     		cmp	r1, #6
 311 0002 3ED8     		bhi	.L51
 312 0004 DFE801F0 		tbb	[pc, r1]
 313              	.L44:
 314 0008 0E       		.byte	(.L43-.L44)/2
 315 0009 16       		.byte	(.L45-.L44)/2
 316 000a 1F       		.byte	(.L46-.L44)/2
 317 000b 28       		.byte	(.L47-.L44)/2
 318 000c 31       		.byte	(.L48-.L44)/2
 319 000d 3A       		.byte	(.L49-.L44)/2
 320 000e 04       		.byte	(.L50-.L44)/2
 321 000f 00       		.p2align 1
 322              	.L50:
 323 0010 92B2     		uxth	r2, r2
 324 0012 42F42022 		orr	r2, r2, #655360
 325 0016 0261     		str	r2, [r0, #16]
 326 0018 C369     		ldr	r3, [r0, #28]
 327 001a 43F01003 		orr	r3, r3, #16
 328 001e C361     		str	r3, [r0, #28]
 329 0020 0120     		movs	r0, #1
 330 0022 7047     		bx	lr
 331              	.L43:
 332 0024 8169     		ldr	r1, [r0, #24]
 333 0026 02F00F02 		and	r2, r2, #15
 334 002a 21F00F01 		bic	r1, r1, #15
 335 002e 1143     		orrs	r1, r1, r2
 336 0030 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 337              	.L45:
 338 0034 8169     		ldr	r1, [r0, #24]
 339 0036 D203     		lsls	r2, r2, #15
 340 0038 02F4C032 		and	r2, r2, #98304
 341 003c 21F4C031 		bic	r1, r1, #98304
 342 0040 1143     		orrs	r1, r1, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 7


 343 0042 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 344              	.L46:
 345 0046 8169     		ldr	r1, [r0, #24]
 346 0048 1201     		lsls	r2, r2, #4
 347 004a 02F07002 		and	r2, r2, #112
 348 004e 21F07001 		bic	r1, r1, #112
 349 0052 1143     		orrs	r1, r1, r2
 350 0054 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 351              	.L47:
 352 0058 8169     		ldr	r1, [r0, #24]
 353 005a D201     		lsls	r2, r2, #7
 354 005c 02F4F062 		and	r2, r2, #1920
 355 0060 21F4F061 		bic	r1, r1, #1920
 356 0064 1143     		orrs	r1, r1, r2
 357 0066 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 358              	.L48:
 359 006a 8169     		ldr	r1, [r0, #24]
 360 006c D202     		lsls	r2, r2, #11
 361 006e 02F4C052 		and	r2, r2, #6144
 362 0072 21F4C051 		bic	r1, r1, #6144
 363 0076 1143     		orrs	r1, r1, r2
 364 0078 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 365              	.L49:
 366 007c 1146     		mov	r1, r2
 367 007e FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 368              	.L51:
 369 0082 0020     		movs	r0, #0
 370 0084 7047     		bx	lr
 371              		.size	_ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm, .-_ZN14TmcDriverState11SetRegisterE
 372              		.section	.text._ZN14TmcDriverState13SetDriverModeEj,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	_ZN14TmcDriverState13SetDriverModeEj
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv4-sp-d16
 380              		.type	_ZN14TmcDriverState13SetDriverModeEj, %function
 381              	_ZN14TmcDriverState13SetDriverModeEj:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384              		@ link register save eliminated.
 385 0000 0129     		cmp	r1, #1
 386 0002 10D0     		beq	.L54
 387 0004 08D3     		bcc	.L55
 388 0006 0229     		cmp	r1, #2
 389 0008 04D1     		bne	.L58
 390 000a 8169     		ldr	r1, [r0, #24]
 391 000c 21F4C041 		bic	r1, r1, #24576
 392 0010 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 393              	.L58:
 394 0014 0020     		movs	r0, #0
 395 0016 7047     		bx	lr
 396              	.L55:
 397 0018 8169     		ldr	r1, [r0, #24]
 398 001a 21F4C041 		bic	r1, r1, #24576
 399 001e 41F48041 		orr	r1, r1, #16384
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 8


 400 0022 FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 401              	.L54:
 402 0026 8169     		ldr	r1, [r0, #24]
 403 0028 41F4C041 		orr	r1, r1, #24576
 404 002c FFF7FEBF 		b	_ZN14TmcDriverState11SetChopConfEm
 405              		.size	_ZN14TmcDriverState13SetDriverModeEj, .-_ZN14TmcDriverState13SetDriverModeEj
 406              		.section	.text._ZNK14TmcDriverState13GetDriverModeEv,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	_ZNK14TmcDriverState13GetDriverModeEv
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	_ZNK14TmcDriverState13GetDriverModeEv, %function
 415              	_ZNK14TmcDriverState13GetDriverModeEv:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 8069     		ldr	r0, [r0, #24]
 420 0002 4304     		lsls	r3, r0, #17
 421 0004 4CBF     		ite	mi
 422 0006 C0F34030 		ubfxmi	r0, r0, #13, #1
 423 000a 0220     		movpl	r0, #2
 424 000c 7047     		bx	lr
 425              		.size	_ZNK14TmcDriverState13GetDriverModeEv, .-_ZNK14TmcDriverState13GetDriverModeEv
 426 000e 00BF     		.section	.text._ZN14TmcDriverState16SetMicrosteppingEmb,"ax",%progbits
 427              		.align	1
 428              		.p2align 2,,3
 429              		.global	_ZN14TmcDriverState16SetMicrosteppingEmb
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu fpv4-sp-d16
 434              		.type	_ZN14TmcDriverState16SetMicrosteppingEmb, %function
 435              	_ZN14TmcDriverState16SetMicrosteppingEmb:
 436              		@ args = 0, pretend = 0, frame = 0
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438              		@ link register save eliminated.
 439 0000 0368     		ldr	r3, [r0]
 440 0002 4162     		str	r1, [r0, #36]
 441 0004 C1F10801 		rsb	r1, r1, #8
 442 0008 01F00F01 		and	r1, r1, #15
 443 000c 23F00F03 		bic	r3, r3, #15
 444 0010 1943     		orrs	r1, r1, r3
 445 0012 42B9     		cbnz	r2, .L65
 446 0014 21F40071 		bic	r1, r1, #512
 447              	.L64:
 448 0018 0160     		str	r1, [r0]
 449 001a C369     		ldr	r3, [r0, #28]
 450 001c 43F00103 		orr	r3, r3, #1
 451 0020 C361     		str	r3, [r0, #28]
 452 0022 0120     		movs	r0, #1
 453 0024 7047     		bx	lr
 454              	.L65:
 455 0026 41F40071 		orr	r1, r1, #512
 456 002a F5E7     		b	.L64
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 9


 457              		.size	_ZN14TmcDriverState16SetMicrosteppingEmb, .-_ZN14TmcDriverState16SetMicrosteppingEmb
 458              		.section	.text._ZN14TmcDriverState10SetCurrentEf,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.global	_ZN14TmcDriverState10SetCurrentEf
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
 465              		.fpu fpv4-sp-d16
 466              		.type	_ZN14TmcDriverState10SetCurrentEf, %function
 467              	_ZN14TmcDriverState10SetCurrentEf:
 468              		@ args = 0, pretend = 0, frame = 0
 469              		@ frame_needed = 0, uses_anonymous_args = 0
 470              		@ link register save eliminated.
 471 0000 B4EE400A 		vcmp.f32	s0, s0
 472 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 473 0008 1AD6     		bvs	.L70
 474 000a DFED157A 		vldr.32	s15, .L74
 475 000e B4EEE70A 		vcmpe.f32	s0, s15
 476 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 477 0016 11D5     		bpl	.L73
 478 0018 DFED127A 		vldr.32	s15, .L74+4
 479 001c B4EEE70A 		vcmpe.f32	s0, s15
 480 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 481 0024 0CDC     		bgt	.L70
 482 0026 0023     		movs	r3, #0
 483              	.L68:
 484 0028 4268     		ldr	r2, [r0, #4]
 485 002a 22F01F02 		bic	r2, r2, #31
 486 002e 1343     		orrs	r3, r3, r2
 487 0030 4360     		str	r3, [r0, #4]
 488 0032 C369     		ldr	r3, [r0, #28]
 489 0034 43F00203 		orr	r3, r3, #2
 490 0038 C361     		str	r3, [r0, #28]
 491 003a 7047     		bx	lr
 492              	.L73:
 493 003c 1723     		movs	r3, #23
 494 003e F3E7     		b	.L68
 495              	.L70:
 496 0040 BCEEC00A 		vcvt.u32.f32	s0, s0
 497 0044 0849     		ldr	r1, .L74+8
 498 0046 10EE103A 		vmov	r3, s0	@ int
 499 004a 03F10062 		add	r2, r3, #134217728
 500 004e 323A     		subs	r2, r2, #50
 501 0050 5301     		lsls	r3, r2, #5
 502 0052 9B08     		lsrs	r3, r3, #2
 503 0054 A1FB0323 		umull	r2, r3, r1, r3
 504 0058 C3F30413 		ubfx	r3, r3, #4, #5
 505 005c E4E7     		b	.L68
 506              	.L75:
 507 005e 00BF     		.align	2
 508              	.L74:
 509 0060 00001645 		.word	1159069696
 510 0064 0000C842 		.word	1120403456
 511 0068 71231005 		.word	84943729
 512              		.size	_ZN14TmcDriverState10SetCurrentEf, .-_ZN14TmcDriverState10SetCurrentEf
 513              		.section	.text._ZN14TmcDriverState6EnableEb,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	_ZN14TmcDriverState6EnableEb
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv4-sp-d16
 521              		.type	_ZN14TmcDriverState6EnableEb, %function
 522              	_ZN14TmcDriverState6EnableEb:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 527 0004 8B42     		cmp	r3, r1
 528 0006 01D0     		beq	.L76
 529 0008 FFF7FEBF 		b	_ZN14TmcDriverState6EnableEb.part.4
 530              	.L76:
 531 000c 7047     		bx	lr
 532              		.size	_ZN14TmcDriverState6EnableEb, .-_ZN14TmcDriverState6EnableEb
 533 000e 00BF     		.section	.text._ZN14TmcDriverState22UpdateChopConfRegisterEv,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	_ZN14TmcDriverState22UpdateChopConfRegisterEv
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv4-sp-d16
 541              		.type	_ZN14TmcDriverState22UpdateChopConfRegisterEv, %function
 542              	_ZN14TmcDriverState22UpdateChopConfRegisterEv:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545              		@ link register save eliminated.
 546 0000 90F84020 		ldrb	r2, [r0, #64]	@ zero_extendqisi2
 547 0004 8369     		ldr	r3, [r0, #24]
 548 0006 0AB9     		cbnz	r2, .L79
 549 0008 23F00F03 		bic	r3, r3, #15
 550              	.L79:
 551 000c 8360     		str	r3, [r0, #8]
 552 000e C369     		ldr	r3, [r0, #28]
 553 0010 43F00403 		orr	r3, r3, #4
 554 0014 C361     		str	r3, [r0, #28]
 555 0016 7047     		bx	lr
 556              		.size	_ZN14TmcDriverState22UpdateChopConfRegisterEv, .-_ZN14TmcDriverState22UpdateChopConfRegister
 557              		.section	.text._ZN14TmcDriverState21ReadAccumulatedStatusEm,"ax",%progbits
 558              		.align	1
 559              		.p2align 2,,3
 560              		.global	_ZN14TmcDriverState21ReadAccumulatedStatusEm
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu fpv4-sp-d16
 565              		.type	_ZN14TmcDriverState21ReadAccumulatedStatusEm, %function
 566              	_ZN14TmcDriverState21ReadAccumulatedStatusEm:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 11


 571 0004 002B     		cmp	r3, #0
 572 0006 70B4     		push	{r4, r5, r6}
 573 0008 14BF     		ite	ne
 574 000a 4FF0FF32 		movne	r2, #-1
 575 000e 6FF06102 		mvneq	r2, #97
 576              		.syntax unified
 577              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 578 0012 EFF31085 		MRS r5, primask
 579              	@ 0 "" 2
 580              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 581 0016 72B6     		cpsid i
 582              	@ 0 "" 2
 583              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 584 0018 BFF35F8F 		dmb
 585              	@ 0 "" 2
 586              		.thumb
 587              		.syntax unified
 588 001c 094C     		ldr	r4, .L85
 589 001e 0023     		movs	r3, #0
 590 0020 2370     		strb	r3, [r4]
 591 0022 C36B     		ldr	r3, [r0, #60]
 592 0024 866B     		ldr	r6, [r0, #56]
 593 0026 1940     		ands	r1, r1, r3
 594 0028 1140     		ands	r1, r1, r2
 595 002a 3143     		orrs	r1, r1, r6
 596 002c C163     		str	r1, [r0, #60]
 597 002e 25B9     		cbnz	r5, .L82
 598 0030 0121     		movs	r1, #1
 599 0032 2170     		strb	r1, [r4]
 600              		.syntax unified
 601              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 602 0034 BFF35F8F 		dmb
 603              	@ 0 "" 2
 604              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 605 0038 62B6     		cpsie i
 606              	@ 0 "" 2
 607              		.thumb
 608              		.syntax unified
 609              	.L82:
 610 003a DBB2     		uxtb	r3, r3
 611 003c 03EA0200 		and	r0, r3, r2
 612 0040 70BC     		pop	{r4, r5, r6}
 613 0042 7047     		bx	lr
 614              	.L86:
 615              		.align	2
 616              	.L85:
 617 0044 00000000 		.word	g_interrupt_enabled
 618              		.size	_ZN14TmcDriverState21ReadAccumulatedStatusEm, .-_ZN14TmcDriverState21ReadAccumulatedStatusEm
 619              		.section	.text._ZN14TmcDriverState23SetStallDetectThresholdEi,"ax",%progbits
 620              		.align	1
 621              		.p2align 2,,3
 622              		.global	_ZN14TmcDriverState23SetStallDetectThresholdEi
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 627              		.type	_ZN14TmcDriverState23SetStallDetectThresholdEi, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 12


 628              	_ZN14TmcDriverState23SetStallDetectThresholdEi:
 629              		@ args = 0, pretend = 0, frame = 0
 630              		@ frame_needed = 0, uses_anonymous_args = 0
 631              		@ link register save eliminated.
 632 0000 4368     		ldr	r3, [r0, #4]
 633 0002 01F30601 		ssat	r1, #7, r1
 634 0006 0902     		lsls	r1, r1, #8
 635 0008 23F4FE43 		bic	r3, r3, #32512
 636 000c 01F4FE41 		and	r1, r1, #32512
 637 0010 1943     		orrs	r1, r1, r3
 638 0012 4160     		str	r1, [r0, #4]
 639 0014 C369     		ldr	r3, [r0, #28]
 640 0016 43F00203 		orr	r3, r3, #2
 641 001a C361     		str	r3, [r0, #28]
 642 001c 7047     		bx	lr
 643              		.size	_ZN14TmcDriverState23SetStallDetectThresholdEi, .-_ZN14TmcDriverState23SetStallDetectThresho
 644              		.section	.text._ZN14TmcDriverState20SetStallDetectFilterEb,"ax",%progbits
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	_ZN14TmcDriverState20SetStallDetectFilterEb
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu fpv4-sp-d16
 652              		.type	_ZN14TmcDriverState20SetStallDetectFilterEb, %function
 653              	_ZN14TmcDriverState20SetStallDetectFilterEb:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656              		@ link register save eliminated.
 657 0000 4368     		ldr	r3, [r0, #4]
 658 0002 39B9     		cbnz	r1, .L91
 659 0004 23F48033 		bic	r3, r3, #65536
 660 0008 4360     		str	r3, [r0, #4]
 661 000a C369     		ldr	r3, [r0, #28]
 662 000c 43F00203 		orr	r3, r3, #2
 663 0010 C361     		str	r3, [r0, #28]
 664 0012 7047     		bx	lr
 665              	.L91:
 666 0014 43F48033 		orr	r3, r3, #65536
 667 0018 4360     		str	r3, [r0, #4]
 668 001a C369     		ldr	r3, [r0, #28]
 669 001c 43F00203 		orr	r3, r3, #2
 670 0020 C361     		str	r3, [r0, #28]
 671 0022 7047     		bx	lr
 672              		.size	_ZN14TmcDriverState20SetStallDetectFilterEb, .-_ZN14TmcDriverState20SetStallDetectFilterEb
 673              		.section	.text._ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj,"ax",%progbits
 674              		.align	1
 675              		.p2align 2,,3
 676              		.global	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj
 677              		.syntax unified
 678              		.thumb
 679              		.thumb_func
 680              		.fpu fpv4-sp-d16
 681              		.type	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj, %function
 682              	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj:
 683              		@ args = 0, pretend = 0, frame = 0
 684              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 13


 685              		@ link register save eliminated.
 686 0000 0129     		cmp	r1, #1
 687 0002 38BF     		it	cc
 688 0004 0121     		movcc	r1, #1
 689 0006 024B     		ldr	r3, .L93
 690 0008 B3FBF1F1 		udiv	r1, r3, r1
 691 000c 8162     		str	r1, [r0, #40]
 692 000e 7047     		bx	lr
 693              	.L94:
 694              		.align	2
 695              	.L93:
 696 0010 1C4E0E00 		.word	937500
 697              		.size	_ZN14TmcDriverState29SetStallMinimumStepsPerSecondEj, .-_ZN14TmcDriverState29SetStallMinimum
 698              		.section	.text._ZNK14TmcDriverState17AppendStallConfigERK9StringRef,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv4-sp-d16
 706              		.type	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef, %function
 707              	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 711 0002 4468     		ldr	r4, [r0, #4]
 712 0004 4268     		ldr	r2, [r0, #4]
 713 0006 0569     		ldr	r5, [r0, #16]
 714 0008 0C4E     		ldr	r6, .L100
 715 000a 0D4B     		ldr	r3, .L100+4
 716 000c 876A     		ldr	r7, [r0, #40]
 717 000e 83B0     		sub	sp, sp, #12
 718 0010 C2F30622 		ubfx	r2, r2, #8, #7
 719 0014 3F2A     		cmp	r2, #63
 720 0016 04F48034 		and	r4, r4, #65536
 721 001a ADB2     		uxth	r5, r5
 722 001c C8BF     		it	gt
 723 001e 803A     		subgt	r2, r2, #128
 724 0020 0846     		mov	r0, r1
 725 0022 0195     		str	r5, [sp, #4]
 726 0024 002C     		cmp	r4, #0
 727 0026 18BF     		it	ne
 728 0028 3346     		movne	r3, r6
 729 002a 0649     		ldr	r1, .L100+8
 730 002c B1FBF7F1 		udiv	r1, r1, r7
 731 0030 0091     		str	r1, [sp]
 732 0032 0549     		ldr	r1, .L100+12
 733 0034 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 734 0038 03B0     		add	sp, sp, #12
 735              		@ sp needed
 736 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 737              	.L101:
 738              		.align	2
 739              	.L100:
 740 003c 00000000 		.word	.LC0
 741 0040 04000000 		.word	.LC1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 14


 742 0044 1C4E0E00 		.word	937500
 743 0048 08000000 		.word	.LC2
 744              		.size	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef, .-_ZNK14TmcDriverState17AppendStallCon
 745              		.section	.text._ZN14TmcDriverState18AppendDriverStatusERK9StringRef,"ax",%progbits
 746              		.align	1
 747              		.p2align 2,,3
 748              		.global	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef
 749              		.syntax unified
 750              		.thumb
 751              		.thumb_func
 752              		.fpu fpv4-sp-d16
 753              		.type	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef, %function
 754              	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef:
 755              		@ args = 0, pretend = 0, frame = 0
 756              		@ frame_needed = 0, uses_anonymous_args = 0
 757 0000 38B5     		push	{r3, r4, r5, lr}
 758 0002 836B     		ldr	r3, [r0, #56]
 759 0004 9B07     		lsls	r3, r3, #30
 760 0006 0446     		mov	r4, r0
 761 0008 0D46     		mov	r5, r1
 762 000a 55D4     		bmi	.L125
 763 000c 836B     		ldr	r3, [r0, #56]
 764 000e 5807     		lsls	r0, r3, #29
 765 0010 30D4     		bmi	.L126
 766              	.L104:
 767 0012 A36B     		ldr	r3, [r4, #56]
 768 0014 13F0180F 		tst	r3, #24
 769 0018 34D1     		bne	.L127
 770              	.L105:
 771 001a A36B     		ldr	r3, [r4, #56]
 772 001c 9906     		lsls	r1, r3, #26
 773 001e 38D4     		bmi	.L128
 774              	.L106:
 775 0020 A36B     		ldr	r3, [r4, #56]
 776 0022 5A06     		lsls	r2, r3, #25
 777 0024 3CD4     		bmi	.L129
 778              	.L107:
 779 0026 A36B     		ldr	r3, [r4, #56]
 780 0028 1B06     		lsls	r3, r3, #24
 781 002a 40D4     		bmi	.L130
 782              	.L108:
 783 002c A36B     		ldr	r3, [r4, #56]
 784 002e 13F07E0F 		tst	r3, #126
 785 0032 0DD0     		beq	.L131
 786              	.L109:
 787 0034 D4E90B23 		ldrd	r2, r3, [r4, #44]
 788 0038 9A42     		cmp	r2, r3
 789 003a 2846     		mov	r0, r5
 790 003c 11D9     		bls	.L132
 791              	.L110:
 792 003e 2149     		ldr	r1, .L133
 793 0040 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 794 0044 40F2FF32 		movw	r2, #1023
 795 0048 0023     		movs	r3, #0
 796 004a C4E90B23 		strd	r2, r3, [r4, #44]
 797 004e 38BD     		pop	{r3, r4, r5, pc}
 798              	.L131:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 15


 799 0050 1D49     		ldr	r1, .L133+4
 800 0052 2846     		mov	r0, r5
 801 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 802 0058 D4E90B23 		ldrd	r2, r3, [r4, #44]
 803 005c 9A42     		cmp	r2, r3
 804 005e 2846     		mov	r0, r5
 805 0060 EDD8     		bhi	.L110
 806              	.L132:
 807 0062 1A49     		ldr	r1, .L133+8
 808 0064 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 809 0068 40F2FF32 		movw	r2, #1023
 810 006c 0023     		movs	r3, #0
 811 006e C4E90B23 		strd	r2, r3, [r4, #44]
 812 0072 38BD     		pop	{r3, r4, r5, pc}
 813              	.L126:
 814 0074 1649     		ldr	r1, .L133+12
 815 0076 2846     		mov	r0, r5
 816 0078 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 817 007c A36B     		ldr	r3, [r4, #56]
 818 007e 13F0180F 		tst	r3, #24
 819 0082 CAD0     		beq	.L105
 820              	.L127:
 821 0084 1349     		ldr	r1, .L133+16
 822 0086 2846     		mov	r0, r5
 823 0088 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 824 008c A36B     		ldr	r3, [r4, #56]
 825 008e 9906     		lsls	r1, r3, #26
 826 0090 C6D5     		bpl	.L106
 827              	.L128:
 828 0092 1149     		ldr	r1, .L133+20
 829 0094 2846     		mov	r0, r5
 830 0096 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 831 009a A36B     		ldr	r3, [r4, #56]
 832 009c 5A06     		lsls	r2, r3, #25
 833 009e C2D5     		bpl	.L107
 834              	.L129:
 835 00a0 0E49     		ldr	r1, .L133+24
 836 00a2 2846     		mov	r0, r5
 837 00a4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 838 00a8 A36B     		ldr	r3, [r4, #56]
 839 00aa 1B06     		lsls	r3, r3, #24
 840 00ac BED5     		bpl	.L108
 841              	.L130:
 842 00ae 0C49     		ldr	r1, .L133+28
 843 00b0 2846     		mov	r0, r5
 844 00b2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 845 00b6 BDE7     		b	.L109
 846              	.L125:
 847 00b8 0A49     		ldr	r1, .L133+32
 848 00ba 2846     		mov	r0, r5
 849 00bc FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 850 00c0 A7E7     		b	.L104
 851              	.L134:
 852 00c2 00BF     		.align	2
 853              	.L133:
 854 00c4 8C000000 		.word	.LC11
 855 00c8 70000000 		.word	.LC9
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 16


 856 00cc 74000000 		.word	.LC10
 857 00d0 18000000 		.word	.LC4
 858 00d4 30000000 		.word	.LC5
 859 00d8 44000000 		.word	.LC6
 860 00dc 54000000 		.word	.LC7
 861 00e0 64000000 		.word	.LC8
 862 00e4 00000000 		.word	.LC3
 863              		.size	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef, .-_ZN14TmcDriverState18AppendDriverSta
 864              		.section	.text._ZNK14TmcDriverState16GetMicrosteppingERb,"ax",%progbits
 865              		.align	1
 866              		.p2align 2,,3
 867              		.global	_ZNK14TmcDriverState16GetMicrosteppingERb
 868              		.syntax unified
 869              		.thumb
 870              		.thumb_func
 871              		.fpu fpv4-sp-d16
 872              		.type	_ZNK14TmcDriverState16GetMicrosteppingERb, %function
 873              	_ZNK14TmcDriverState16GetMicrosteppingERb:
 874              		@ args = 0, pretend = 0, frame = 0
 875              		@ frame_needed = 0, uses_anonymous_args = 0
 876              		@ link register save eliminated.
 877 0000 0368     		ldr	r3, [r0]
 878 0002 406A     		ldr	r0, [r0, #36]
 879 0004 10B4     		push	{r4}
 880 0006 C3F34023 		ubfx	r3, r3, #9, #1
 881 000a 0124     		movs	r4, #1
 882 000c 04FA00F0 		lsl	r0, r4, r0
 883 0010 0B70     		strb	r3, [r1]
 884 0012 5DF8044B 		ldr	r4, [sp], #4
 885 0016 7047     		bx	lr
 886              		.size	_ZNK14TmcDriverState16GetMicrosteppingERb, .-_ZNK14TmcDriverState16GetMicrosteppingERb
 887              		.section	.text.hot.USART1_Handler,"ax",%progbits
 888              		.align	1
 889              		.p2align 2,,3
 890              		.global	USART1_Handler
 891              		.syntax unified
 892              		.thumb
 893              		.thumb_func
 894              		.fpu fpv4-sp-d16
 895              		.type	USART1_Handler, %function
 896              	USART1_Handler:
 897              		@ args = 0, pretend = 0, frame = 0
 898              		@ frame_needed = 0, uses_anonymous_args = 0
 899 0000 6549     		ldr	r1, .L172
 900 0002 0B68     		ldr	r3, [r1]
 901 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 902 0008 002B     		cmp	r3, #0
 903 000a 3FD0     		beq	.L138
 904 000c 5A69     		ldr	r2, [r3, #20]
 905 000e 6348     		ldr	r0, .L172+4
 906 0010 634E     		ldr	r6, .L172+8
 907 0012 C2EBC202 		rsb	r2, r2, r2, lsl #3
 908 0016 9200     		lsls	r2, r2, #2
 909 0018 8518     		adds	r5, r0, r2
 910 001a 8458     		ldr	r4, [r0, r2]
 911 001c 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 912 001e 6D68     		ldr	r5, [r5, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 17


 913 0020 2563     		str	r5, [r4, #48]
 914 0022 9AB3     		cbz	r2, .L138
 915 0024 5F4A     		ldr	r2, .L172+12
 916 0026 604D     		ldr	r5, .L172+16
 917 0028 D768     		ldr	r7, [r2, #12]	@ unaligned
 918 002a 2E68     		ldr	r6, [r5]
 919 002c 7C68     		ldr	r4, [r7, #4]
 920 002e 36BA     		rev	r6, r6
 921 0030 320B     		lsrs	r2, r6, #12
 922 0032 9CB3     		cbz	r4, .L139
 923 0034 97F815C0 		ldrb	ip, [r7, #21]	@ zero_extendqisi2
 924 0038 BCF1000F 		cmp	ip, #0
 925 003c 40F0A980 		bne	.L153
 926 0040 1F6A     		ldr	r7, [r3, #32]
 927 0042 3E37     		adds	r7, r7, #62
 928 0044 54F82740 		ldr	r4, [r4, r7, lsl #2]
 929 0048 44B3     		cbz	r4, .L139
 930 004a D4E9027E 		ldrd	r7, lr, [r4, #8]
 931 004e BE45     		cmp	lr, r7
 932 0050 80F09F80 		bcs	.L153
 933 0054 D3F82480 		ldr	r8, [r3, #36]
 934 0058 0127     		movs	r7, #1
 935 005a 07FA08F7 		lsl	r7, r7, r8
 936 005e BE45     		cmp	lr, r7
 937 0060 1BD9     		bls	.L156
 938 0062 A469     		ldr	r4, [r4, #24]
 939 0064 14FA08F4 		lsls	r4, r4, r8
 940 0068 18D0     		beq	.L139
 941 006a 9F6A     		ldr	r7, [r3, #40]
 942 006c BC42     		cmp	r4, r7
 943 006e 15D8     		bhi	.L139
 944 0070 93F84170 		ldrb	r7, [r3, #65]	@ zero_extendqisi2
 945 0074 012F     		cmp	r7, #1
 946 0076 13D1     		bne	.L141
 947 0078 DF6A     		ldr	r7, [r3, #44]
 948 007a B60D     		lsrs	r6, r6, #22
 949 007c BE42     		cmp	r6, r7
 950 007e 1F6B     		ldr	r7, [r3, #48]
 951 0080 38BF     		it	cc
 952 0082 DE62     		strcc	r6, [r3, #44]
 953 0084 BE42     		cmp	r6, r7
 954 0086 88BF     		it	hi
 955 0088 1E63     		strhi	r6, [r3, #48]
 956 008a 09E0     		b	.L141
 957              	.L138:
 958 008c 474A     		ldr	r2, .L172+20
 959 008e 0820     		movs	r0, #8
 960 0090 0023     		movs	r3, #0
 961 0092 D060     		str	r0, [r2, #12]
 962 0094 0B60     		str	r3, [r1]
 963              	.L137:
 964 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 965              	.L156:
 966 009a 6446     		mov	r4, ip
 967              	.L139:
 968 009c 22F00102 		bic	r2, r2, #1
 969              	.L141:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 18


 970 00a0 93F84160 		ldrb	r6, [r3, #65]	@ zero_extendqisi2
 971 00a4 0EB9     		cbnz	r6, .L143
 972 00a6 960A     		lsrs	r6, r2, #10
 973 00a8 5E63     		str	r6, [r3, #52]
 974              	.L143:
 975 00aa 1606     		lsls	r6, r2, #24
 976 00ac 55D5     		bpl	.L170
 977              	.L144:
 978 00ae 22F06002 		bic	r2, r2, #96
 979              	.L145:
 980 00b2 9A63     		str	r2, [r3, #56]
 981 00b4 DE6B     		ldr	r6, [r3, #60]
 982 00b6 3E4C     		ldr	r4, .L172+24
 983 00b8 3243     		orrs	r2, r2, r6
 984 00ba DA63     		str	r2, [r3, #60]
 985 00bc 2268     		ldr	r2, [r4]
 986 00be 12BA     		rev	r2, r2
 987 00c0 160A     		lsrs	r6, r2, #8
 988 00c2 06F46026 		and	r6, r6, #917504
 989 00c6 B6F5602F 		cmp	r6, #917504
 990 00ca 5DD0     		beq	.L171
 991              	.L146:
 992 00cc 394A     		ldr	r2, .L172+28
 993 00ce 3A4E     		ldr	r6, .L172+32
 994 00d0 1268     		ldr	r2, [r2]
 995 00d2 02EB0212 		add	r2, r2, r2, lsl #4
 996 00d6 06EB8202 		add	r2, r6, r2, lsl #2
 997 00da 4433     		adds	r3, r3, #68
 998 00dc 9342     		cmp	r3, r2
 999 00de 08BF     		it	eq
 1000 00e0 3346     		moveq	r3, r6
 1001 00e2 0B60     		str	r3, [r1]
 1002 00e4 DA69     		ldr	r2, [r3, #28]
 1003 00e6 002A     		cmp	r2, #0
 1004 00e8 3DD1     		bne	.L158
 1005 00ea 1969     		ldr	r1, [r3, #16]
 1006              	.L148:
 1007              		.syntax unified
 1008              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1009 00ec EFF3108C 		MRS ip, primask
 1010              	@ 0 "" 2
 1011              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1012 00f0 72B6     		cpsid i
 1013              	@ 0 "" 2
 1014              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1015 00f2 BFF35F8F 		dmb
 1016              	@ 0 "" 2
 1017              		.thumb
 1018              		.syntax unified
 1019 00f6 314F     		ldr	r7, .L172+36
 1020 00f8 2C4E     		ldr	r6, .L172+20
 1021 00fa 314A     		ldr	r2, .L172+40
 1022 00fc 4FF0000E 		mov	lr, #0
 1023 0100 87F800E0 		strb	lr, [r7]
 1024 0104 4FF00C0E 		mov	lr, #12
 1025 0108 C6F800E0 		str	lr, [r6]
 1026 010c 5B69     		ldr	r3, [r3, #20]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 19


 1027 010e 1268     		ldr	r2, [r2]
 1028 0110 C3EBC303 		rsb	r3, r3, r3, lsl #3
 1029 0114 9B00     		lsls	r3, r3, #2
 1030 0116 00EB030E 		add	lr, r0, r3
 1031 011a C358     		ldr	r3, [r0, r3]
 1032 011c DEF80400 		ldr	r0, [lr, #4]
 1033 0120 5863     		str	r0, [r3, #52]
 1034 0122 0902     		lsls	r1, r1, #8
 1035 0124 0BBA     		rev	r3, r1
 1036 0126 40F20220 		movw	r0, #514
 1037 012a 1062     		str	r0, [r2, #32]
 1038 012c 0321     		movs	r1, #3
 1039 012e 2360     		str	r3, [r4]
 1040 0130 40F2011E 		movw	lr, #257
 1041 0134 0820     		movs	r0, #8
 1042 0136 5023     		movs	r3, #80
 1043 0138 9460     		str	r4, [r2, #8]
 1044 013a D160     		str	r1, [r2, #12]
 1045 013c 1560     		str	r5, [r2]
 1046 013e 5160     		str	r1, [r2, #4]
 1047 0140 C2F820E0 		str	lr, [r2, #32]
 1048 0144 B060     		str	r0, [r6, #8]
 1049 0146 3360     		str	r3, [r6]
 1050 0148 BCF1000F 		cmp	ip, #0
 1051 014c A3D1     		bne	.L137
 1052 014e 0123     		movs	r3, #1
 1053 0150 3B70     		strb	r3, [r7]
 1054              		.syntax unified
 1055              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1056 0152 BFF35F8F 		dmb
 1057              	@ 0 "" 2
 1058              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1059 0156 62B6     		cpsie i
 1060              	@ 0 "" 2
 1061              		.thumb
 1062              		.syntax unified
 1063 0158 9DE7     		b	.L137
 1064              	.L170:
 1065 015a 013C     		subs	r4, r4, #1
 1066 015c 4BF21A76 		movw	r6, #46874
 1067 0160 B442     		cmp	r4, r6
 1068 0162 A6D9     		bls	.L145
 1069 0164 A3E7     		b	.L144
 1070              	.L158:
 1071 0166 0122     		movs	r2, #1
 1072 0168 0021     		movs	r1, #0
 1073              	.L147:
 1074 016a DE69     		ldr	r6, [r3, #28]
 1075 016c 1642     		tst	r6, r2
 1076 016e 04D1     		bne	.L149
 1077 0170 0131     		adds	r1, r1, #1
 1078 0172 0429     		cmp	r1, #4
 1079 0174 4FEA4202 		lsl	r2, r2, #1
 1080 0178 F7D1     		bne	.L147
 1081              	.L149:
 1082 017a DE69     		ldr	r6, [r3, #28]
 1083 017c 26EA0202 		bic	r2, r6, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 20


 1084 0180 DA61     		str	r2, [r3, #28]
 1085 0182 53F82110 		ldr	r1, [r3, r1, lsl #2]
 1086 0186 B1E7     		b	.L148
 1087              	.L171:
 1088 0188 C2F30132 		ubfx	r2, r2, #12, #2
 1089 018c 83F84120 		strb	r2, [r3, #65]
 1090 0190 9CE7     		b	.L146
 1091              	.L153:
 1092 0192 0024     		movs	r4, #0
 1093 0194 82E7     		b	.L139
 1094              	.L173:
 1095 0196 00BF     		.align	2
 1096              	.L172:
 1097 0198 00000000 		.word	.LANCHOR1
 1098 019c 00000000 		.word	g_APinDescription
 1099 01a0 00000000 		.word	.LANCHOR2
 1100 01a4 00000000 		.word	reprap
 1101 01a8 00000000 		.word	.LANCHOR3
 1102 01ac 00400A40 		.word	1074413568
 1103 01b0 00000000 		.word	.LANCHOR4
 1104 01b4 00000000 		.word	.LANCHOR6
 1105 01b8 00000000 		.word	.LANCHOR0
 1106 01bc 00000000 		.word	g_interrupt_enabled
 1107 01c0 00000000 		.word	.LANCHOR5
 1108              		.size	USART1_Handler, .-USART1_Handler
 1109              		.section	.text._ZN12SmartDrivers4InitEPKhj,"ax",%progbits
 1110              		.align	1
 1111              		.p2align 2,,3
 1112              		.global	_ZN12SmartDrivers4InitEPKhj
 1113              		.syntax unified
 1114              		.thumb
 1115              		.thumb_func
 1116              		.fpu fpv4-sp-d16
 1117              		.type	_ZN12SmartDrivers4InitEPKhj, %function
 1118              	_ZN12SmartDrivers4InitEPKhj:
 1119              		@ args = 0, pretend = 0, frame = 0
 1120              		@ frame_needed = 0, uses_anonymous_args = 0
 1121 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1122 0002 0A29     		cmp	r1, #10
 1123 0004 1C4F     		ldr	r7, .L183
 1124 0006 0B46     		mov	r3, r1
 1125 0008 4FF00002 		mov	r2, #0
 1126 000c 28BF     		it	cs
 1127 000e 0A23     		movcs	r3, #10
 1128 0010 0421     		movs	r1, #4
 1129 0012 0646     		mov	r6, r0
 1130 0014 2620     		movs	r0, #38
 1131 0016 3B60     		str	r3, [r7]
 1132 0018 FFF7FEFF 		bl	pinModeDuet
 1133 001c 1748     		ldr	r0, .L183+4
 1134 001e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1135 0022 1748     		ldr	r0, .L183+8
 1136 0024 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1137 0028 1648     		ldr	r0, .L183+12
 1138 002a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1139 002e 0F20     		movs	r0, #15
 1140 0030 FFF7FEFF 		bl	pmc_enable_periph_clk
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 21


 1141 0034 144B     		ldr	r3, .L183+16
 1142 0036 1549     		ldr	r1, .L183+20
 1143 0038 154A     		ldr	r2, .L183+24
 1144 003a 4FF0FF30 		mov	r0, #-1
 1145 003e D860     		str	r0, [r3, #12]
 1146 0040 AC20     		movs	r0, #172
 1147 0042 1860     		str	r0, [r3]
 1148 0044 5960     		str	r1, [r3, #4]
 1149 0046 3C20     		movs	r0, #60
 1150 0048 4FF4D671 		mov	r1, #428
 1151 004c 1862     		str	r0, [r3, #32]
 1152 004e 1960     		str	r1, [r3]
 1153 0050 3B68     		ldr	r3, [r7]
 1154 0052 0024     		movs	r4, #0
 1155 0054 1470     		strb	r4, [r2]
 1156 0056 6BB1     		cbz	r3, .L174
 1157 0058 0E4D     		ldr	r5, .L183+28
 1158 005a 013E     		subs	r6, r6, #1
 1159              	.L177:
 1160 005c 2146     		mov	r1, r4
 1161 005e 2846     		mov	r0, r5
 1162 0060 16F8012F 		ldrb	r2, [r6, #1]!	@ zero_extendqisi2
 1163 0064 FFF7FEFF 		bl	_ZN14TmcDriverState4InitEmm
 1164 0068 3B68     		ldr	r3, [r7]
 1165 006a 0134     		adds	r4, r4, #1
 1166 006c A342     		cmp	r3, r4
 1167 006e 05F14405 		add	r5, r5, #68
 1168 0072 F3D8     		bhi	.L177
 1169              	.L174:
 1170 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1171              	.L184:
 1172 0076 00BF     		.align	2
 1173              	.L183:
 1174 0078 00000000 		.word	.LANCHOR6
 1175 007c 68020000 		.word	g_APinDescription+616
 1176 0080 4C020000 		.word	g_APinDescription+588
 1177 0084 84020000 		.word	g_APinDescription+644
 1178 0088 00400A40 		.word	1074413568
 1179 008c CE000500 		.word	327886
 1180 0090 00000000 		.word	.LANCHOR2
 1181 0094 00000000 		.word	.LANCHOR0
 1182              		.size	_ZN12SmartDrivers4InitEPKhj, .-_ZN12SmartDrivers4InitEPKhj
 1183              		.section	.text._ZN12SmartDrivers13SetAxisNumberEjm,"ax",%progbits
 1184              		.align	1
 1185              		.p2align 2,,3
 1186              		.global	_ZN12SmartDrivers13SetAxisNumberEjm
 1187              		.syntax unified
 1188              		.thumb
 1189              		.thumb_func
 1190              		.fpu fpv4-sp-d16
 1191              		.type	_ZN12SmartDrivers13SetAxisNumberEjm, %function
 1192              	_ZN12SmartDrivers13SetAxisNumberEjm:
 1193              		@ args = 0, pretend = 0, frame = 0
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 1195              		@ link register save eliminated.
 1196 0000 054B     		ldr	r3, .L187
 1197 0002 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 22


 1198 0004 8342     		cmp	r3, r0
 1199 0006 05D9     		bls	.L185
 1200 0008 044B     		ldr	r3, .L187+4
 1201 000a 00EB0010 		add	r0, r0, r0, lsl #4
 1202 000e 03EB8000 		add	r0, r3, r0, lsl #2
 1203 0012 0162     		str	r1, [r0, #32]
 1204              	.L185:
 1205 0014 7047     		bx	lr
 1206              	.L188:
 1207 0016 00BF     		.align	2
 1208              	.L187:
 1209 0018 00000000 		.word	.LANCHOR6
 1210 001c 00000000 		.word	.LANCHOR0
 1211              		.size	_ZN12SmartDrivers13SetAxisNumberEjm, .-_ZN12SmartDrivers13SetAxisNumberEjm
 1212              		.section	.text._ZN12SmartDrivers10SetCurrentEjf,"ax",%progbits
 1213              		.align	1
 1214              		.p2align 2,,3
 1215              		.global	_ZN12SmartDrivers10SetCurrentEjf
 1216              		.syntax unified
 1217              		.thumb
 1218              		.thumb_func
 1219              		.fpu fpv4-sp-d16
 1220              		.type	_ZN12SmartDrivers10SetCurrentEjf, %function
 1221              	_ZN12SmartDrivers10SetCurrentEjf:
 1222              		@ args = 0, pretend = 0, frame = 0
 1223              		@ frame_needed = 0, uses_anonymous_args = 0
 1224              		@ link register save eliminated.
 1225 0000 054B     		ldr	r3, .L192
 1226 0002 1B68     		ldr	r3, [r3]
 1227 0004 8342     		cmp	r3, r0
 1228 0006 00D8     		bhi	.L191
 1229 0008 7047     		bx	lr
 1230              	.L191:
 1231 000a 044B     		ldr	r3, .L192+4
 1232 000c 00EB0010 		add	r0, r0, r0, lsl #4
 1233 0010 03EB8000 		add	r0, r3, r0, lsl #2
 1234 0014 FFF7FEBF 		b	_ZN14TmcDriverState10SetCurrentEf
 1235              	.L193:
 1236              		.align	2
 1237              	.L192:
 1238 0018 00000000 		.word	.LANCHOR6
 1239 001c 00000000 		.word	.LANCHOR0
 1240              		.size	_ZN12SmartDrivers10SetCurrentEjf, .-_ZN12SmartDrivers10SetCurrentEjf
 1241              		.section	.text._ZN12SmartDrivers11EnableDriveEjb,"ax",%progbits
 1242              		.align	1
 1243              		.p2align 2,,3
 1244              		.global	_ZN12SmartDrivers11EnableDriveEjb
 1245              		.syntax unified
 1246              		.thumb
 1247              		.thumb_func
 1248              		.fpu fpv4-sp-d16
 1249              		.type	_ZN12SmartDrivers11EnableDriveEjb, %function
 1250              	_ZN12SmartDrivers11EnableDriveEjb:
 1251              		@ args = 0, pretend = 0, frame = 0
 1252              		@ frame_needed = 0, uses_anonymous_args = 0
 1253              		@ link register save eliminated.
 1254 0000 074B     		ldr	r3, .L196
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 23


 1255 0002 1B68     		ldr	r3, [r3]
 1256 0004 8342     		cmp	r3, r0
 1257 0006 0AD9     		bls	.L194
 1258 0008 064B     		ldr	r3, .L196+4
 1259 000a 00EB0010 		add	r0, r0, r0, lsl #4
 1260 000e 03EB8000 		add	r0, r3, r0, lsl #2
 1261 0012 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1262 0016 8B42     		cmp	r3, r1
 1263 0018 01D0     		beq	.L194
 1264 001a FFF7FEBF 		b	_ZN14TmcDriverState6EnableEb.part.4
 1265              	.L194:
 1266 001e 7047     		bx	lr
 1267              	.L197:
 1268              		.align	2
 1269              	.L196:
 1270 0020 00000000 		.word	.LANCHOR6
 1271 0024 00000000 		.word	.LANCHOR0
 1272              		.size	_ZN12SmartDrivers11EnableDriveEjb, .-_ZN12SmartDrivers11EnableDriveEjb
 1273              		.section	.text._ZN12SmartDrivers13GetLiveStatusEj,"ax",%progbits
 1274              		.align	1
 1275              		.p2align 2,,3
 1276              		.global	_ZN12SmartDrivers13GetLiveStatusEj
 1277              		.syntax unified
 1278              		.thumb
 1279              		.thumb_func
 1280              		.fpu fpv4-sp-d16
 1281              		.type	_ZN12SmartDrivers13GetLiveStatusEj, %function
 1282              	_ZN12SmartDrivers13GetLiveStatusEj:
 1283              		@ args = 0, pretend = 0, frame = 0
 1284              		@ frame_needed = 0, uses_anonymous_args = 0
 1285              		@ link register save eliminated.
 1286 0000 094B     		ldr	r3, .L203
 1287 0002 1B68     		ldr	r3, [r3]
 1288 0004 8342     		cmp	r3, r0
 1289 0006 0DD9     		bls	.L201
 1290 0008 084B     		ldr	r3, .L203+4
 1291 000a 00EB0010 		add	r0, r0, r0, lsl #4
 1292 000e 03EB8000 		add	r0, r3, r0, lsl #2
 1293 0012 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1294 0016 806B     		ldr	r0, [r0, #56]
 1295 0018 13B9     		cbnz	r3, .L202
 1296 001a 00F09E00 		and	r0, r0, #158
 1297 001e 7047     		bx	lr
 1298              	.L202:
 1299 0020 C0B2     		uxtb	r0, r0
 1300 0022 7047     		bx	lr
 1301              	.L201:
 1302 0024 0020     		movs	r0, #0
 1303 0026 7047     		bx	lr
 1304              	.L204:
 1305              		.align	2
 1306              	.L203:
 1307 0028 00000000 		.word	.LANCHOR6
 1308 002c 00000000 		.word	.LANCHOR0
 1309              		.size	_ZN12SmartDrivers13GetLiveStatusEj, .-_ZN12SmartDrivers13GetLiveStatusEj
 1310              		.section	.text._ZN12SmartDrivers20GetAccumulatedStatusEjm,"ax",%progbits
 1311              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 24


 1312              		.p2align 2,,3
 1313              		.global	_ZN12SmartDrivers20GetAccumulatedStatusEjm
 1314              		.syntax unified
 1315              		.thumb
 1316              		.thumb_func
 1317              		.fpu fpv4-sp-d16
 1318              		.type	_ZN12SmartDrivers20GetAccumulatedStatusEjm, %function
 1319              	_ZN12SmartDrivers20GetAccumulatedStatusEjm:
 1320              		@ args = 0, pretend = 0, frame = 0
 1321              		@ frame_needed = 0, uses_anonymous_args = 0
 1322              		@ link register save eliminated.
 1323 0000 064B     		ldr	r3, .L208
 1324 0002 1B68     		ldr	r3, [r3]
 1325 0004 8342     		cmp	r3, r0
 1326 0006 01D8     		bhi	.L207
 1327 0008 0020     		movs	r0, #0
 1328 000a 7047     		bx	lr
 1329              	.L207:
 1330 000c 044B     		ldr	r3, .L208+4
 1331 000e 00EB0010 		add	r0, r0, r0, lsl #4
 1332 0012 03EB8000 		add	r0, r3, r0, lsl #2
 1333 0016 FFF7FEBF 		b	_ZN14TmcDriverState21ReadAccumulatedStatusEm
 1334              	.L209:
 1335 001a 00BF     		.align	2
 1336              	.L208:
 1337 001c 00000000 		.word	.LANCHOR6
 1338 0020 00000000 		.word	.LANCHOR0
 1339              		.size	_ZN12SmartDrivers20GetAccumulatedStatusEjm, .-_ZN12SmartDrivers20GetAccumulatedStatusEjm
 1340              		.section	.text._ZN12SmartDrivers16SetMicrosteppingEjjb,"ax",%progbits
 1341              		.align	1
 1342              		.p2align 2,,3
 1343              		.global	_ZN12SmartDrivers16SetMicrosteppingEjjb
 1344              		.syntax unified
 1345              		.thumb
 1346              		.thumb_func
 1347              		.fpu fpv4-sp-d16
 1348              		.type	_ZN12SmartDrivers16SetMicrosteppingEjjb, %function
 1349              	_ZN12SmartDrivers16SetMicrosteppingEjjb:
 1350              		@ args = 0, pretend = 0, frame = 0
 1351              		@ frame_needed = 0, uses_anonymous_args = 0
 1352              		@ link register save eliminated.
 1353 0000 1B4B     		ldr	r3, .L231
 1354 0002 1B68     		ldr	r3, [r3]
 1355 0004 8342     		cmp	r3, r0
 1356 0006 0ED9     		bls	.L216
 1357 0008 69B1     		cbz	r1, .L216
 1358 000a 11F00103 		ands	r3, r1, #1
 1359 000e F0B4     		push	{r4, r5, r6, r7}
 1360 0010 26D1     		bne	.L229
 1361              	.L212:
 1362 0012 4908     		lsrs	r1, r1, #1
 1363 0014 CC07     		lsls	r4, r1, #31
 1364 0016 03F10103 		add	r3, r3, #1
 1365 001a FAD5     		bpl	.L212
 1366 001c 0129     		cmp	r1, #1
 1367 001e 04D0     		beq	.L230
 1368              	.L220:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 25


 1369 0020 0020     		movs	r0, #0
 1370              	.L211:
 1371 0022 F0BC     		pop	{r4, r5, r6, r7}
 1372 0024 7047     		bx	lr
 1373              	.L216:
 1374 0026 0020     		movs	r0, #0
 1375 0028 7047     		bx	lr
 1376              	.L230:
 1377 002a 082B     		cmp	r3, #8
 1378 002c F8D8     		bhi	.L220
 1379 002e C3F10805 		rsb	r5, r3, #8
 1380              	.L213:
 1381 0032 0101     		lsls	r1, r0, #4
 1382 0034 0C18     		adds	r4, r1, r0
 1383 0036 A400     		lsls	r4, r4, #2
 1384 0038 0E4E     		ldr	r6, .L231+4
 1385 003a 3759     		ldr	r7, [r6, r4]
 1386 003c 3444     		add	r4, r4, r6
 1387 003e 27F00F07 		bic	r7, r7, #15
 1388 0042 3D43     		orrs	r5, r5, r7
 1389 0044 6362     		str	r3, [r4, #36]
 1390 0046 82B1     		cbz	r2, .L214
 1391 0048 45F40075 		orr	r5, r5, #512
 1392              	.L215:
 1393 004c 0844     		add	r0, r0, r1
 1394 004e 8000     		lsls	r0, r0, #2
 1395 0050 3218     		adds	r2, r6, r0
 1396 0052 3550     		str	r5, [r6, r0]
 1397 0054 D369     		ldr	r3, [r2, #28]
 1398 0056 43F00103 		orr	r3, r3, #1
 1399 005a D361     		str	r3, [r2, #28]
 1400 005c 0120     		movs	r0, #1
 1401 005e E0E7     		b	.L211
 1402              	.L229:
 1403 0060 0129     		cmp	r1, #1
 1404 0062 DDD1     		bne	.L220
 1405 0064 0825     		movs	r5, #8
 1406 0066 0023     		movs	r3, #0
 1407 0068 E3E7     		b	.L213
 1408              	.L214:
 1409 006a 25F40075 		bic	r5, r5, #512
 1410 006e EDE7     		b	.L215
 1411              	.L232:
 1412              		.align	2
 1413              	.L231:
 1414 0070 00000000 		.word	.LANCHOR6
 1415 0074 00000000 		.word	.LANCHOR0
 1416              		.size	_ZN12SmartDrivers16SetMicrosteppingEjjb, .-_ZN12SmartDrivers16SetMicrosteppingEjjb
 1417              		.section	.text._ZN12SmartDrivers16GetMicrosteppingEjRb,"ax",%progbits
 1418              		.align	1
 1419              		.p2align 2,,3
 1420              		.global	_ZN12SmartDrivers16GetMicrosteppingEjRb
 1421              		.syntax unified
 1422              		.thumb
 1423              		.thumb_func
 1424              		.fpu fpv4-sp-d16
 1425              		.type	_ZN12SmartDrivers16GetMicrosteppingEjRb, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 26


 1426              	_ZN12SmartDrivers16GetMicrosteppingEjRb:
 1427              		@ args = 0, pretend = 0, frame = 0
 1428              		@ frame_needed = 0, uses_anonymous_args = 0
 1429              		@ link register save eliminated.
 1430 0000 0A4B     		ldr	r3, .L237
 1431 0002 1B68     		ldr	r3, [r3]
 1432 0004 8342     		cmp	r3, r0
 1433 0006 03D8     		bhi	.L236
 1434 0008 0023     		movs	r3, #0
 1435 000a 0B70     		strb	r3, [r1]
 1436 000c 0120     		movs	r0, #1
 1437 000e 7047     		bx	lr
 1438              	.L236:
 1439 0010 00EB0010 		add	r0, r0, r0, lsl #4
 1440 0014 064B     		ldr	r3, .L237+4
 1441 0016 8000     		lsls	r0, r0, #2
 1442 0018 1A58     		ldr	r2, [r3, r0]
 1443 001a 1844     		add	r0, r0, r3
 1444 001c C2F34023 		ubfx	r3, r2, #9, #1
 1445 0020 0B70     		strb	r3, [r1]
 1446 0022 436A     		ldr	r3, [r0, #36]
 1447 0024 0120     		movs	r0, #1
 1448 0026 9840     		lsls	r0, r0, r3
 1449 0028 7047     		bx	lr
 1450              	.L238:
 1451 002a 00BF     		.align	2
 1452              	.L237:
 1453 002c 00000000 		.word	.LANCHOR6
 1454 0030 00000000 		.word	.LANCHOR0
 1455              		.size	_ZN12SmartDrivers16GetMicrosteppingEjRb, .-_ZN12SmartDrivers16GetMicrosteppingEjRb
 1456              		.section	.text._ZN12SmartDrivers13SetDriverModeEjj,"ax",%progbits
 1457              		.align	1
 1458              		.p2align 2,,3
 1459              		.global	_ZN12SmartDrivers13SetDriverModeEjj
 1460              		.syntax unified
 1461              		.thumb
 1462              		.thumb_func
 1463              		.fpu fpv4-sp-d16
 1464              		.type	_ZN12SmartDrivers13SetDriverModeEjj, %function
 1465              	_ZN12SmartDrivers13SetDriverModeEjj:
 1466              		@ args = 0, pretend = 0, frame = 0
 1467              		@ frame_needed = 0, uses_anonymous_args = 0
 1468              		@ link register save eliminated.
 1469 0000 064B     		ldr	r3, .L242
 1470 0002 1B68     		ldr	r3, [r3]
 1471 0004 8342     		cmp	r3, r0
 1472 0006 01D8     		bhi	.L241
 1473 0008 0020     		movs	r0, #0
 1474 000a 7047     		bx	lr
 1475              	.L241:
 1476 000c 044B     		ldr	r3, .L242+4
 1477 000e 00EB0010 		add	r0, r0, r0, lsl #4
 1478 0012 03EB8000 		add	r0, r3, r0, lsl #2
 1479 0016 FFF7FEBF 		b	_ZN14TmcDriverState13SetDriverModeEj
 1480              	.L243:
 1481 001a 00BF     		.align	2
 1482              	.L242:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 27


 1483 001c 00000000 		.word	.LANCHOR6
 1484 0020 00000000 		.word	.LANCHOR0
 1485              		.size	_ZN12SmartDrivers13SetDriverModeEjj, .-_ZN12SmartDrivers13SetDriverModeEjj
 1486              		.section	.text._ZN12SmartDrivers13GetDriverModeEj,"ax",%progbits
 1487              		.align	1
 1488              		.p2align 2,,3
 1489              		.global	_ZN12SmartDrivers13GetDriverModeEj
 1490              		.syntax unified
 1491              		.thumb
 1492              		.thumb_func
 1493              		.fpu fpv4-sp-d16
 1494              		.type	_ZN12SmartDrivers13GetDriverModeEj, %function
 1495              	_ZN12SmartDrivers13GetDriverModeEj:
 1496              		@ args = 0, pretend = 0, frame = 0
 1497              		@ frame_needed = 0, uses_anonymous_args = 0
 1498              		@ link register save eliminated.
 1499 0000 094B     		ldr	r3, .L248
 1500 0002 1B68     		ldr	r3, [r3]
 1501 0004 8342     		cmp	r3, r0
 1502 0006 0CD9     		bls	.L246
 1503 0008 084B     		ldr	r3, .L248+4
 1504 000a 00EB0010 		add	r0, r0, r0, lsl #4
 1505 000e 03EB8000 		add	r0, r3, r0, lsl #2
 1506 0012 8069     		ldr	r0, [r0, #24]
 1507 0014 4304     		lsls	r3, r0, #17
 1508 0016 02D5     		bpl	.L247
 1509 0018 C0F34030 		ubfx	r0, r0, #13, #1
 1510 001c 7047     		bx	lr
 1511              	.L247:
 1512 001e 0220     		movs	r0, #2
 1513 0020 7047     		bx	lr
 1514              	.L246:
 1515 0022 0420     		movs	r0, #4
 1516 0024 7047     		bx	lr
 1517              	.L249:
 1518 0026 00BF     		.align	2
 1519              	.L248:
 1520 0028 00000000 		.word	.LANCHOR6
 1521 002c 00000000 		.word	.LANCHOR0
 1522              		.size	_ZN12SmartDrivers13GetDriverModeEj, .-_ZN12SmartDrivers13GetDriverModeEj
 1523              		.section	.text._ZN12SmartDrivers4SpinEb,"ax",%progbits
 1524              		.align	1
 1525              		.p2align 2,,3
 1526              		.global	_ZN12SmartDrivers4SpinEb
 1527              		.syntax unified
 1528              		.thumb
 1529              		.thumb_func
 1530              		.fpu fpv4-sp-d16
 1531              		.type	_ZN12SmartDrivers4SpinEb, %function
 1532              	_ZN12SmartDrivers4SpinEb:
 1533              		@ args = 0, pretend = 0, frame = 0
 1534              		@ frame_needed = 0, uses_anonymous_args = 0
 1535 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1536 0002 454B     		ldr	r3, .L278
 1537 0004 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1538 0006 1870     		strb	r0, [r3]
 1539 0008 28B1     		cbz	r0, .L251
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 28


 1540 000a 64B1     		cbz	r4, .L276
 1541 000c 434B     		ldr	r3, .L278+4
 1542 000e 1A68     		ldr	r2, [r3]
 1543 0010 002A     		cmp	r2, #0
 1544 0012 67D0     		beq	.L277
 1545              	.L250:
 1546 0014 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1547              	.L251:
 1548 0016 002C     		cmp	r4, #0
 1549 0018 FCD0     		beq	.L250
 1550 001a 0121     		movs	r1, #1
 1551 001c 2620     		movs	r0, #38
 1552 001e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1553 0022 FFF7FEBF 		b	digitalWrite
 1554              	.L276:
 1555 0026 2146     		mov	r1, r4
 1556 0028 2620     		movs	r0, #38
 1557 002a FFF7FEFF 		bl	digitalWrite
 1558 002e 3C4B     		ldr	r3, .L278+8
 1559 0030 3C4A     		ldr	r2, .L278+12
 1560 0032 1B68     		ldr	r3, [r3]
 1561 0034 A2FB0323 		umull	r2, r3, r2, r3
 1562 0038 9B0C     		lsrs	r3, r3, #18
 1563 003a 03EB8303 		add	r3, r3, r3, lsl #2
 1564 003e 5B00     		lsls	r3, r3, #1
 1565              		.syntax unified
 1566              	@ 88 "C:\eclipse\firmware\CoreNG\cores\arduino/wiring.h" 1
 1567              		L_1680_delayMicroseconds:
 1568 0040 013B     		subs   r3, #1
 1569 0042 FDD1     		bne    L_1680_delayMicroseconds
 1570              	
 1571              	@ 0 "" 2
 1572              		.thumb
 1573              		.syntax unified
 1574 0044 384B     		ldr	r3, .L278+16
 1575 0046 1868     		ldr	r0, [r3]
 1576 0048 0028     		cmp	r0, #0
 1577 004a 62D0     		beq	.L253
 1578 004c 374A     		ldr	r2, .L278+20
 1579 004e 2146     		mov	r1, r4
 1580 0050 1F24     		movs	r4, #31
 1581              	.L255:
 1582 0052 01EB0113 		add	r3, r1, r1, lsl #4
 1583 0056 02EB8303 		add	r3, r2, r3, lsl #2
 1584 005a 0131     		adds	r1, r1, #1
 1585 005c 8142     		cmp	r1, r0
 1586 005e DC61     		str	r4, [r3, #28]
 1587 0060 F7D1     		bne	.L255
 1588 0062 2E4B     		ldr	r3, .L278+4
 1589 0064 1968     		ldr	r1, [r3]
 1590 0066 0029     		cmp	r1, #0
 1591 0068 D4D1     		bne	.L250
 1592              	.L262:
 1593 006a 3149     		ldr	r1, .L278+24
 1594 006c 4FF40040 		mov	r0, #32768
 1595 0070 0860     		str	r0, [r1]
 1596 0072 1A60     		str	r2, [r3]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 29


 1597 0074 D369     		ldr	r3, [r2, #28]
 1598 0076 002B     		cmp	r3, #0
 1599 0078 3AD1     		bne	.L263
 1600 007a 1169     		ldr	r1, [r2, #16]
 1601              	.L260:
 1602              		.syntax unified
 1603              	@ 470 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1604 007c EFF31086 		MRS r6, primask
 1605              	@ 0 "" 2
 1606              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1607 0080 72B6     		cpsid i
 1608              	@ 0 "" 2
 1609              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1610 0082 BFF35F8F 		dmb
 1611              	@ 0 "" 2
 1612              		.thumb
 1613              		.syntax unified
 1614 0086 2B4D     		ldr	r5, .L278+28
 1615 0088 2B48     		ldr	r0, .L278+32
 1616 008a 2C4C     		ldr	r4, .L278+36
 1617 008c 2C4F     		ldr	r7, .L278+40
 1618 008e DFF8B8C0 		ldr	ip, .L278+48
 1619 0092 0023     		movs	r3, #0
 1620 0094 2B70     		strb	r3, [r5]
 1621 0096 0C23     		movs	r3, #12
 1622 0098 0360     		str	r3, [r0]
 1623 009a 5369     		ldr	r3, [r2, #20]
 1624 009c 3A68     		ldr	r2, [r7]
 1625 009e C3EBC303 		rsb	r3, r3, r3, lsl #3
 1626 00a2 9B00     		lsls	r3, r3, #2
 1627 00a4 E718     		adds	r7, r4, r3
 1628 00a6 E358     		ldr	r3, [r4, r3]
 1629 00a8 7F68     		ldr	r7, [r7, #4]
 1630 00aa 264C     		ldr	r4, .L278+44
 1631 00ac 5F63     		str	r7, [r3, #52]
 1632 00ae 0902     		lsls	r1, r1, #8
 1633 00b0 0BBA     		rev	r3, r1
 1634 00b2 40F20227 		movw	r7, #514
 1635 00b6 1762     		str	r7, [r2, #32]
 1636 00b8 0321     		movs	r1, #3
 1637 00ba 2360     		str	r3, [r4]
 1638 00bc 40F20117 		movw	r7, #257
 1639 00c0 9460     		str	r4, [r2, #8]
 1640 00c2 5023     		movs	r3, #80
 1641 00c4 0824     		movs	r4, #8
 1642 00c6 D160     		str	r1, [r2, #12]
 1643 00c8 C2F800C0 		str	ip, [r2]
 1644 00cc 5160     		str	r1, [r2, #4]
 1645 00ce 1762     		str	r7, [r2, #32]
 1646 00d0 8460     		str	r4, [r0, #8]
 1647 00d2 0360     		str	r3, [r0]
 1648 00d4 002E     		cmp	r6, #0
 1649 00d6 9DD1     		bne	.L250
 1650 00d8 0123     		movs	r3, #1
 1651 00da 2B70     		strb	r3, [r5]
 1652              		.syntax unified
 1653              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 30


 1654 00dc BFF35F8F 		dmb
 1655              	@ 0 "" 2
 1656              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1657 00e0 62B6     		cpsie i
 1658              	@ 0 "" 2
 1659              		.thumb
 1660              		.syntax unified
 1661 00e2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1662              	.L277:
 1663 00e4 104A     		ldr	r2, .L278+16
 1664 00e6 1268     		ldr	r2, [r2]
 1665 00e8 002A     		cmp	r2, #0
 1666 00ea 93D0     		beq	.L250
 1667 00ec 0F4A     		ldr	r2, .L278+20
 1668 00ee BCE7     		b	.L262
 1669              	.L263:
 1670 00f0 0123     		movs	r3, #1
 1671 00f2 0021     		movs	r1, #0
 1672              	.L259:
 1673 00f4 D069     		ldr	r0, [r2, #28]
 1674 00f6 1842     		tst	r0, r3
 1675 00f8 04D1     		bne	.L261
 1676 00fa 0131     		adds	r1, r1, #1
 1677 00fc 0429     		cmp	r1, #4
 1678 00fe 4FEA4303 		lsl	r3, r3, #1
 1679 0102 F7D1     		bne	.L259
 1680              	.L261:
 1681 0104 D069     		ldr	r0, [r2, #28]
 1682 0106 20EA0303 		bic	r3, r0, r3
 1683 010a D361     		str	r3, [r2, #28]
 1684 010c 52F82110 		ldr	r1, [r2, r1, lsl #2]
 1685 0110 B4E7     		b	.L260
 1686              	.L253:
 1687 0112 024B     		ldr	r3, .L278+4
 1688 0114 1B68     		ldr	r3, [r3]
 1689 0116 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1690              	.L279:
 1691              		.align	2
 1692              	.L278:
 1693 0118 00000000 		.word	.LANCHOR2
 1694 011c 00000000 		.word	.LANCHOR1
 1695 0120 00000000 		.word	SystemCoreClock
 1696 0124 819F5E16 		.word	375299969
 1697 0128 00000000 		.word	.LANCHOR6
 1698 012c 00000000 		.word	.LANCHOR0
 1699 0130 00E100E0 		.word	-536813312
 1700 0134 00000000 		.word	g_interrupt_enabled
 1701 0138 00400A40 		.word	1074413568
 1702 013c 00000000 		.word	g_APinDescription
 1703 0140 00000000 		.word	.LANCHOR5
 1704 0144 00000000 		.word	.LANCHOR4
 1705 0148 00000000 		.word	.LANCHOR3
 1706              		.size	_ZN12SmartDrivers4SpinEb, .-_ZN12SmartDrivers4SpinEb
 1707              		.section	.text._ZN12SmartDrivers14TurnDriversOffEv,"ax",%progbits
 1708              		.align	1
 1709              		.p2align 2,,3
 1710              		.global	_ZN12SmartDrivers14TurnDriversOffEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 31


 1711              		.syntax unified
 1712              		.thumb
 1713              		.thumb_func
 1714              		.fpu fpv4-sp-d16
 1715              		.type	_ZN12SmartDrivers14TurnDriversOffEv, %function
 1716              	_ZN12SmartDrivers14TurnDriversOffEv:
 1717              		@ args = 0, pretend = 0, frame = 0
 1718              		@ frame_needed = 0, uses_anonymous_args = 0
 1719 0000 08B5     		push	{r3, lr}
 1720 0002 0121     		movs	r1, #1
 1721 0004 2620     		movs	r0, #38
 1722 0006 FFF7FEFF 		bl	digitalWrite
 1723 000a 024B     		ldr	r3, .L282
 1724 000c 0022     		movs	r2, #0
 1725 000e 1A70     		strb	r2, [r3]
 1726 0010 08BD     		pop	{r3, pc}
 1727              	.L283:
 1728 0012 00BF     		.align	2
 1729              	.L282:
 1730 0014 00000000 		.word	.LANCHOR2
 1731              		.size	_ZN12SmartDrivers14TurnDriversOffEv, .-_ZN12SmartDrivers14TurnDriversOffEv
 1732              		.section	.text._ZN12SmartDrivers17SetStallThresholdEji,"ax",%progbits
 1733              		.align	1
 1734              		.p2align 2,,3
 1735              		.global	_ZN12SmartDrivers17SetStallThresholdEji
 1736              		.syntax unified
 1737              		.thumb
 1738              		.thumb_func
 1739              		.fpu fpv4-sp-d16
 1740              		.type	_ZN12SmartDrivers17SetStallThresholdEji, %function
 1741              	_ZN12SmartDrivers17SetStallThresholdEji:
 1742              		@ args = 0, pretend = 0, frame = 0
 1743              		@ frame_needed = 0, uses_anonymous_args = 0
 1744              		@ link register save eliminated.
 1745 0000 0B4B     		ldr	r3, .L286
 1746 0002 1B68     		ldr	r3, [r3]
 1747 0004 8342     		cmp	r3, r0
 1748 0006 12D9     		bls	.L284
 1749 0008 0A4B     		ldr	r3, .L286+4
 1750 000a 00EB0010 		add	r0, r0, r0, lsl #4
 1751 000e 03EB8000 		add	r0, r3, r0, lsl #2
 1752 0012 01F30601 		ssat	r1, #7, r1
 1753 0016 4368     		ldr	r3, [r0, #4]
 1754 0018 0902     		lsls	r1, r1, #8
 1755 001a 23F4FE43 		bic	r3, r3, #32512
 1756 001e 01F4FE41 		and	r1, r1, #32512
 1757 0022 1943     		orrs	r1, r1, r3
 1758 0024 4160     		str	r1, [r0, #4]
 1759 0026 C369     		ldr	r3, [r0, #28]
 1760 0028 43F00203 		orr	r3, r3, #2
 1761 002c C361     		str	r3, [r0, #28]
 1762              	.L284:
 1763 002e 7047     		bx	lr
 1764              	.L287:
 1765              		.align	2
 1766              	.L286:
 1767 0030 00000000 		.word	.LANCHOR6
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 32


 1768 0034 00000000 		.word	.LANCHOR0
 1769              		.size	_ZN12SmartDrivers17SetStallThresholdEji, .-_ZN12SmartDrivers17SetStallThresholdEji
 1770              		.section	.text._ZN12SmartDrivers14SetStallFilterEjb,"ax",%progbits
 1771              		.align	1
 1772              		.p2align 2,,3
 1773              		.global	_ZN12SmartDrivers14SetStallFilterEjb
 1774              		.syntax unified
 1775              		.thumb
 1776              		.thumb_func
 1777              		.fpu fpv4-sp-d16
 1778              		.type	_ZN12SmartDrivers14SetStallFilterEjb, %function
 1779              	_ZN12SmartDrivers14SetStallFilterEjb:
 1780              		@ args = 0, pretend = 0, frame = 0
 1781              		@ frame_needed = 0, uses_anonymous_args = 0
 1782              		@ link register save eliminated.
 1783 0000 104B     		ldr	r3, .L297
 1784 0002 1B68     		ldr	r3, [r3]
 1785 0004 8342     		cmp	r3, r0
 1786 0006 1CD9     		bls	.L293
 1787 0008 10B4     		push	{r4}
 1788 000a 0201     		lsls	r2, r0, #4
 1789 000c 0E4B     		ldr	r3, .L297+4
 1790 000e 81B9     		cbnz	r1, .L296
 1791 0010 1118     		adds	r1, r2, r0
 1792 0012 03EB8101 		add	r1, r3, r1, lsl #2
 1793 0016 4C68     		ldr	r4, [r1, #4]
 1794 0018 24F48034 		bic	r4, r4, #65536
 1795 001c 4C60     		str	r4, [r1, #4]
 1796              	.L291:
 1797 001e 1044     		add	r0, r0, r2
 1798 0020 03EB8000 		add	r0, r3, r0, lsl #2
 1799 0024 5DF8044B 		ldr	r4, [sp], #4
 1800 0028 C369     		ldr	r3, [r0, #28]
 1801 002a 43F00203 		orr	r3, r3, #2
 1802 002e C361     		str	r3, [r0, #28]
 1803 0030 7047     		bx	lr
 1804              	.L296:
 1805 0032 1118     		adds	r1, r2, r0
 1806 0034 03EB8101 		add	r1, r3, r1, lsl #2
 1807 0038 4C68     		ldr	r4, [r1, #4]
 1808 003a 44F48034 		orr	r4, r4, #65536
 1809 003e 4C60     		str	r4, [r1, #4]
 1810 0040 EDE7     		b	.L291
 1811              	.L293:
 1812 0042 7047     		bx	lr
 1813              	.L298:
 1814              		.align	2
 1815              	.L297:
 1816 0044 00000000 		.word	.LANCHOR6
 1817 0048 00000000 		.word	.LANCHOR0
 1818              		.size	_ZN12SmartDrivers14SetStallFilterEjb, .-_ZN12SmartDrivers14SetStallFilterEjb
 1819              		.section	.text._ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj,"ax",%progbits
 1820              		.align	1
 1821              		.p2align 2,,3
 1822              		.global	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj
 1823              		.syntax unified
 1824              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 33


 1825              		.thumb_func
 1826              		.fpu fpv4-sp-d16
 1827              		.type	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj, %function
 1828              	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj:
 1829              		@ args = 0, pretend = 0, frame = 0
 1830              		@ frame_needed = 0, uses_anonymous_args = 0
 1831              		@ link register save eliminated.
 1832 0000 084B     		ldr	r3, .L301
 1833 0002 1B68     		ldr	r3, [r3]
 1834 0004 8342     		cmp	r3, r0
 1835 0006 0BD9     		bls	.L299
 1836 0008 074B     		ldr	r3, .L301+4
 1837 000a 084A     		ldr	r2, .L301+8
 1838 000c 00EB0010 		add	r0, r0, r0, lsl #4
 1839 0010 03EB8000 		add	r0, r3, r0, lsl #2
 1840 0014 0129     		cmp	r1, #1
 1841 0016 38BF     		it	cc
 1842 0018 0121     		movcc	r1, #1
 1843 001a B2FBF1F1 		udiv	r1, r2, r1
 1844 001e 8162     		str	r1, [r0, #40]
 1845              	.L299:
 1846 0020 7047     		bx	lr
 1847              	.L302:
 1848 0022 00BF     		.align	2
 1849              	.L301:
 1850 0024 00000000 		.word	.LANCHOR6
 1851 0028 00000000 		.word	.LANCHOR0
 1852 002c 1C4E0E00 		.word	937500
 1853              		.size	_ZN12SmartDrivers29SetStallMinimumStepsPerSecondEjj, .-_ZN12SmartDrivers29SetStallMinimumSte
 1854              		.section	.text._ZN12SmartDrivers17AppendStallConfigEjRK9StringRef,"ax",%progbits
 1855              		.align	1
 1856              		.p2align 2,,3
 1857              		.global	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef
 1858              		.syntax unified
 1859              		.thumb
 1860              		.thumb_func
 1861              		.fpu fpv4-sp-d16
 1862              		.type	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef, %function
 1863              	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef:
 1864              		@ args = 0, pretend = 0, frame = 0
 1865              		@ frame_needed = 0, uses_anonymous_args = 0
 1866              		@ link register save eliminated.
 1867 0000 054B     		ldr	r3, .L306
 1868 0002 1B68     		ldr	r3, [r3]
 1869 0004 8342     		cmp	r3, r0
 1870 0006 00D8     		bhi	.L305
 1871 0008 7047     		bx	lr
 1872              	.L305:
 1873 000a 044B     		ldr	r3, .L306+4
 1874 000c 00EB0010 		add	r0, r0, r0, lsl #4
 1875 0010 03EB8000 		add	r0, r3, r0, lsl #2
 1876 0014 FFF7FEBF 		b	_ZNK14TmcDriverState17AppendStallConfigERK9StringRef
 1877              	.L307:
 1878              		.align	2
 1879              	.L306:
 1880 0018 00000000 		.word	.LANCHOR6
 1881 001c 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 34


 1882              		.size	_ZN12SmartDrivers17AppendStallConfigEjRK9StringRef, .-_ZN12SmartDrivers17AppendStallConfigEj
 1883              		.section	.text._ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef,"ax",%progbits
 1884              		.align	1
 1885              		.p2align 2,,3
 1886              		.global	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef
 1887              		.syntax unified
 1888              		.thumb
 1889              		.thumb_func
 1890              		.fpu fpv4-sp-d16
 1891              		.type	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef, %function
 1892              	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef:
 1893              		@ args = 0, pretend = 0, frame = 0
 1894              		@ frame_needed = 0, uses_anonymous_args = 0
 1895              		@ link register save eliminated.
 1896 0000 054B     		ldr	r3, .L311
 1897 0002 1B68     		ldr	r3, [r3]
 1898 0004 8342     		cmp	r3, r0
 1899 0006 00D8     		bhi	.L310
 1900 0008 7047     		bx	lr
 1901              	.L310:
 1902 000a 044B     		ldr	r3, .L311+4
 1903 000c 00EB0010 		add	r0, r0, r0, lsl #4
 1904 0010 03EB8000 		add	r0, r3, r0, lsl #2
 1905 0014 FFF7FEBF 		b	_ZN14TmcDriverState18AppendDriverStatusERK9StringRef
 1906              	.L312:
 1907              		.align	2
 1908              	.L311:
 1909 0018 00000000 		.word	.LANCHOR6
 1910 001c 00000000 		.word	.LANCHOR0
 1911              		.size	_ZN12SmartDrivers18AppendDriverStatusEjRK9StringRef, .-_ZN12SmartDrivers18AppendDriverStatus
 1912              		.section	.text._ZN12SmartDrivers27GetStandstillCurrentPercentEj,"ax",%progbits
 1913              		.align	1
 1914              		.p2align 2,,3
 1915              		.global	_ZN12SmartDrivers27GetStandstillCurrentPercentEj
 1916              		.syntax unified
 1917              		.thumb
 1918              		.thumb_func
 1919              		.fpu fpv4-sp-d16
 1920              		.type	_ZN12SmartDrivers27GetStandstillCurrentPercentEj, %function
 1921              	_ZN12SmartDrivers27GetStandstillCurrentPercentEj:
 1922              		@ args = 0, pretend = 0, frame = 0
 1923              		@ frame_needed = 0, uses_anonymous_args = 0
 1924              		@ link register save eliminated.
 1925 0000 9FED010A 		vldr.32	s0, .L314
 1926 0004 7047     		bx	lr
 1927              	.L315:
 1928 0006 00BF     		.align	2
 1929              	.L314:
 1930 0008 0000C842 		.word	1120403456
 1931              		.size	_ZN12SmartDrivers27GetStandstillCurrentPercentEj, .-_ZN12SmartDrivers27GetStandstillCurrentP
 1932              		.section	.text._ZN12SmartDrivers27SetStandstillCurrentPercentEjf,"ax",%progbits
 1933              		.align	1
 1934              		.p2align 2,,3
 1935              		.global	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf
 1936              		.syntax unified
 1937              		.thumb
 1938              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 35


 1939              		.fpu fpv4-sp-d16
 1940              		.type	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf, %function
 1941              	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf:
 1942              		@ args = 0, pretend = 0, frame = 0
 1943              		@ frame_needed = 0, uses_anonymous_args = 0
 1944              		@ link register save eliminated.
 1945 0000 7047     		bx	lr
 1946              		.size	_ZN12SmartDrivers27SetStandstillCurrentPercentEjf, .-_ZN12SmartDrivers27SetStandstillCurrent
 1947 0002 00BF     		.section	.text._ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm,"ax",%progbits
 1948              		.align	1
 1949              		.p2align 2,,3
 1950              		.global	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm
 1951              		.syntax unified
 1952              		.thumb
 1953              		.thumb_func
 1954              		.fpu fpv4-sp-d16
 1955              		.type	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm, %function
 1956              	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm:
 1957              		@ args = 0, pretend = 0, frame = 0
 1958              		@ frame_needed = 0, uses_anonymous_args = 0
 1959              		@ link register save eliminated.
 1960 0000 064B     		ldr	r3, .L320
 1961 0002 1B68     		ldr	r3, [r3]
 1962 0004 8342     		cmp	r3, r0
 1963 0006 01D8     		bhi	.L319
 1964 0008 0020     		movs	r0, #0
 1965 000a 7047     		bx	lr
 1966              	.L319:
 1967 000c 044B     		ldr	r3, .L320+4
 1968 000e 00EB0010 		add	r0, r0, r0, lsl #4
 1969 0012 03EB8000 		add	r0, r3, r0, lsl #2
 1970 0016 FFF7FEBF 		b	_ZN14TmcDriverState11SetRegisterE19SmartDriverRegisterm
 1971              	.L321:
 1972 001a 00BF     		.align	2
 1973              	.L320:
 1974 001c 00000000 		.word	.LANCHOR6
 1975 0020 00000000 		.word	.LANCHOR0
 1976              		.size	_ZN12SmartDrivers11SetRegisterEj19SmartDriverRegisterm, .-_ZN12SmartDrivers11SetRegisterEj19
 1977              		.section	.text._ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister,"ax",%progbits
 1978              		.align	1
 1979              		.p2align 2,,3
 1980              		.global	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister
 1981              		.syntax unified
 1982              		.thumb
 1983              		.thumb_func
 1984              		.fpu fpv4-sp-d16
 1985              		.type	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister, %function
 1986              	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister:
 1987              		@ args = 0, pretend = 0, frame = 0
 1988              		@ frame_needed = 0, uses_anonymous_args = 0
 1989              		@ link register save eliminated.
 1990 0000 064B     		ldr	r3, .L325
 1991 0002 1B68     		ldr	r3, [r3]
 1992 0004 8342     		cmp	r3, r0
 1993 0006 01D8     		bhi	.L324
 1994 0008 0020     		movs	r0, #0
 1995 000a 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 36


 1996              	.L324:
 1997 000c 044B     		ldr	r3, .L325+4
 1998 000e 00EB0010 		add	r0, r0, r0, lsl #4
 1999 0012 03EB8000 		add	r0, r3, r0, lsl #2
 2000 0016 FFF7FEBF 		b	_ZNK14TmcDriverState11GetRegisterE19SmartDriverRegister
 2001              	.L326:
 2002 001a 00BF     		.align	2
 2003              	.L325:
 2004 001c 00000000 		.word	.LANCHOR6
 2005 0020 00000000 		.word	.LANCHOR0
 2006              		.size	_ZN12SmartDrivers11GetRegisterEj19SmartDriverRegister, .-_ZN12SmartDrivers11GetRegisterEj19S
 2007              		.section	.text.startup._GLOBAL__sub_I__ZN14TmcDriverState4InitEmm,"ax",%progbits
 2008              		.align	1
 2009              		.p2align 2,,3
 2010              		.syntax unified
 2011              		.thumb
 2012              		.thumb_func
 2013              		.fpu fpv4-sp-d16
 2014              		.type	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm, %function
 2015              	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm:
 2016              		@ args = 0, pretend = 0, frame = 0
 2017              		@ frame_needed = 0, uses_anonymous_args = 0
 2018 0000 08B5     		push	{r3, lr}
 2019 0002 0348     		ldr	r0, .L329
 2020 0004 FFF7FEFF 		bl	usart_get_pdc_base
 2021 0008 024B     		ldr	r3, .L329+4
 2022 000a 1860     		str	r0, [r3]
 2023 000c 08BD     		pop	{r3, pc}
 2024              	.L330:
 2025 000e 00BF     		.align	2
 2026              	.L329:
 2027 0010 00400A40 		.word	1074413568
 2028 0014 00000000 		.word	.LANCHOR5
 2029              		.size	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm, .-_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm
 2030              		.section	.init_array,"aw",%init_array
 2031              		.align	2
 2032 0000 00000000 		.word	_GLOBAL__sub_I__ZN14TmcDriverState4InitEmm(target1)
 2033              		.section	.bss._ZL10spiDataOut,"aw",%nobits
 2034              		.align	2
 2035              		.set	.LANCHOR4,. + 0
 2036              		.type	_ZL10spiDataOut, %object
 2037              		.size	_ZL10spiDataOut, 4
 2038              	_ZL10spiDataOut:
 2039 0000 00000000 		.space	4
 2040              		.section	.bss._ZL12driverStates,"aw",%nobits
 2041              		.align	2
 2042              		.set	.LANCHOR0,. + 0
 2043              		.type	_ZL12driverStates, %object
 2044              		.size	_ZL12driverStates, 680
 2045              	_ZL12driverStates:
 2046 0000 00000000 		.space	680
 2046      00000000 
 2046      00000000 
 2046      00000000 
 2046      00000000 
 2047              		.section	.bss._ZL13currentDriver,"aw",%nobits
 2048              		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 37


 2049              		.set	.LANCHOR1,. + 0
 2050              		.type	_ZL13currentDriver, %object
 2051              		.size	_ZL13currentDriver, 4
 2052              	_ZL13currentDriver:
 2053 0000 00000000 		.space	4
 2054              		.section	.bss._ZL14driversPowered,"aw",%nobits
 2055              		.set	.LANCHOR2,. + 0
 2056              		.type	_ZL14driversPowered, %object
 2057              		.size	_ZL14driversPowered, 1
 2058              	_ZL14driversPowered:
 2059 0000 00       		.space	1
 2060              		.section	.bss._ZL17numTmc2660Drivers,"aw",%nobits
 2061              		.align	2
 2062              		.set	.LANCHOR6,. + 0
 2063              		.type	_ZL17numTmc2660Drivers, %object
 2064              		.size	_ZL17numTmc2660Drivers, 4
 2065              	_ZL17numTmc2660Drivers:
 2066 0000 00000000 		.space	4
 2067              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2068              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2069              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2070              	_ZL28cpu_irq_prev_interrupt_state:
 2071 0000 00       		.space	1
 2072              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2073              		.align	2
 2074              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2075              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2076              	_ZL32cpu_irq_critical_section_counter:
 2077 0000 00000000 		.space	4
 2078              		.section	.bss._ZL6spiPdc,"aw",%nobits
 2079              		.align	2
 2080              		.set	.LANCHOR5,. + 0
 2081              		.type	_ZL6spiPdc, %object
 2082              		.size	_ZL6spiPdc, 4
 2083              	_ZL6spiPdc:
 2084 0000 00000000 		.space	4
 2085              		.section	.bss._ZL9spiDataIn,"aw",%nobits
 2086              		.align	2
 2087              		.set	.LANCHOR3,. + 0
 2088              		.type	_ZL9spiDataIn, %object
 2089              		.size	_ZL9spiDataIn, 4
 2090              	_ZL9spiDataIn:
 2091 0000 00000000 		.space	4
 2092              		.section	.rodata._ZN14TmcDriverState18AppendDriverStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2093              		.align	2
 2094              	.LC3:
 2095 0000 2074656D 		.ascii	" temperature-shutdown!\000"
 2095      70657261 
 2095      74757265 
 2095      2D736875 
 2095      74646F77 
 2096 0017 00       		.space	1
 2097              	.LC4:
 2098 0018 2074656D 		.ascii	" temperature-warning\000"
 2098      70657261 
 2098      74757265 
 2098      2D776172 
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccoHfwPI.s 			page 38


 2098      6E696E67 
 2099 002d 000000   		.space	3
 2100              	.LC5:
 2101 0030 2073686F 		.ascii	" short-to-ground\000"
 2101      72742D74 
 2101      6F2D6772 
 2101      6F756E64 
 2101      00
 2102 0041 000000   		.space	3
 2103              	.LC6:
 2104 0044 206F7065 		.ascii	" open-load-A\000"
 2104      6E2D6C6F 
 2104      61642D41 
 2104      00
 2105 0051 000000   		.space	3
 2106              	.LC7:
 2107 0054 206F7065 		.ascii	" open-load-B\000"
 2107      6E2D6C6F 
 2107      61642D42 
 2107      00
 2108 0061 000000   		.space	3
 2109              	.LC8:
 2110 0064 20737461 		.ascii	" standstill\000"
 2110      6E647374 
 2110      696C6C00 
 2111              	.LC9:
 2112 0070 206F6B00 		.ascii	" ok\000"
 2113              	.LC10:
 2114 0074 2C205347 		.ascii	", SG min/max %lu/%lu\000"
 2114      206D696E 
 2114      2F6D6178 
 2114      20256C75 
 2114      2F256C75 
 2115 0089 000000   		.space	3
 2116              	.LC11:
 2117 008c 2C205347 		.ascii	", SG min/max not available\000"
 2117      206D696E 
 2117      2F6D6178 
 2117      206E6F74 
 2117      20617661 
 2118              		.section	.rodata._ZNK14TmcDriverState17AppendStallConfigERK9StringRef.str1.4,"aMS",%progbits,1
 2119              		.align	2
 2120              	.LC0:
 2121 0000 6F6E00   		.ascii	"on\000"
 2122 0003 00       		.space	1
 2123              	.LC1:
 2124 0004 6F666600 		.ascii	"off\000"
 2125              	.LC2:
 2126 0008 7374616C 		.ascii	"stall threshold %d, filter %s, steps/sec %lu, cools"
 2126      6C207468 
 2126      72657368 
 2126      6F6C6420 
 2126      25642C20 
 2127 003b 74657020 		.ascii	"tep %lx\000"
 2127      256C7800 
 2128              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
