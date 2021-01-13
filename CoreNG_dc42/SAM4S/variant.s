ARM GAS  /tmp/cc93Xrq3.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"variant.cpp"
  12              		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZN9UARTClassD2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN9UARTClassD2Ev, %function
  21              	_ZN9UARTClassD2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7047     		bx	lr
  26              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
  27              		.weak	_ZN9UARTClassD1Ev
  28              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
  29 0002 00BF     		.section	.text.UART1_Handler,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	UART1_Handler
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	UART1_Handler, %function
  38              	UART1_Handler:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0148     		ldr	r0, .L3
  43 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  44              	.L4:
  45 0006 00BF     		.align	2
  46              	.L3:
  47 0008 00000000 		.word	.LANCHOR0
  48              		.size	UART1_Handler, .-UART1_Handler
  49              		.section	.text._Z12ConfigurePinRK14PinDescription,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	_Z12ConfigurePinRK14PinDescription
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	_Z12ConfigurePinRK14PinDescription, %function
ARM GAS  /tmp/cc93Xrq3.s 			page 2


  58              	_Z12ConfigurePinRK14PinDescription:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0369     		ldr	r3, [r0, #16]
  63 0002 4268     		ldr	r2, [r0, #4]
  64 0004 C168     		ldr	r1, [r0, #12]
  65 0006 0068     		ldr	r0, [r0]
  66 0008 FFF7FEBF 		b	pio_configure
  67              		.size	_Z12ConfigurePinRK14PinDescription, .-_Z12ConfigurePinRK14PinDescription
  68              		.section	.text.init,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	init
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	init, %function
  77              	init:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 10B5     		push	{r4, lr}
  81 0002 0023     		movs	r3, #0
  82 0004 0C22     		movs	r2, #12
  83 0006 114C     		ldr	r4, .L8
  84 0008 1148     		ldr	r0, .L8+4
  85 000a 4FF00061 		mov	r1, #134217728
  86 000e FFF7FEFF 		bl	pio_configure
  87 0012 0121     		movs	r1, #1
  88 0014 1C20     		movs	r0, #28
  89 0016 FFF7FEFF 		bl	setPullup
  90 001a FFF7FEFF 		bl	_Z12AnalogInInitv
  91 001e FFF7FEFF 		bl	_Z13AnalogOutInitv
  92 0022 2046     		mov	r0, r4
  93 0024 0023     		movs	r3, #0
  94 0026 4FF00052 		mov	r2, #536870912
  95 002a 4FF0C051 		mov	r1, #402653184
  96 002e FFF7FEFF 		bl	pio_configure
  97 0032 2046     		mov	r0, r4
  98 0034 0123     		movs	r3, #1
  99 0036 4FF05C42 		mov	r2, #-603979776
 100 003a 4FF0C051 		mov	r1, #402653184
 101 003e FFF7FEFF 		bl	pio_configure
 102 0042 F020     		movs	r0, #240
 103 0044 BDE81040 		pop	{r4, lr}
 104 0048 FFF7FEBF 		b	matrix_set_system_io
 105              	.L9:
 106              		.align	2
 107              	.L8:
 108 004c 000E0E40 		.word	1074662912
 109 0050 00100E40 		.word	1074663424
 110              		.size	init, .-init
 111              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 112              		.align	1
 113              		.p2align 2,,3
 114              		.weak	_ZN9UARTClassD0Ev
ARM GAS  /tmp/cc93Xrq3.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu softvfp
 119              		.type	_ZN9UARTClassD0Ev, %function
 120              	_ZN9UARTClassD0Ev:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 10B5     		push	{r4, lr}
 124 0002 2421     		movs	r1, #36
 125 0004 0446     		mov	r4, r0
 126 0006 FFF7FEFF 		bl	_ZdlPvj
 127 000a 2046     		mov	r0, r4
 128 000c 10BD     		pop	{r4, pc}
 129              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 130 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu softvfp
 137              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 138              	_GLOBAL__sub_I_g_APinDescription:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141 0000 70B5     		push	{r4, r5, r6, lr}
 142 0002 0D4E     		ldr	r6, .L14
 143 0004 0D4D     		ldr	r5, .L14+4
 144 0006 0E4C     		ldr	r4, .L14+8
 145 0008 82B0     		sub	sp, sp, #8
 146 000a 3046     		mov	r0, r6
 147 000c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 148 0010 2846     		mov	r0, r5
 149 0012 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 150 0016 0923     		movs	r3, #9
 151 0018 1A46     		mov	r2, r3
 152 001a 0096     		str	r6, [sp]
 153 001c 0195     		str	r5, [sp, #4]
 154 001e 2046     		mov	r0, r4
 155 0020 0849     		ldr	r1, .L14+12
 156 0022 FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 157 0026 084A     		ldr	r2, .L14+16
 158 0028 0849     		ldr	r1, .L14+20
 159 002a 2046     		mov	r0, r4
 160 002c 02B0     		add	sp, sp, #8
 161              		@ sp needed
 162 002e BDE87040 		pop	{r4, r5, r6, lr}
 163 0032 FFF7FEBF 		b	__aeabi_atexit
 164              	.L15:
 165 0036 00BF     		.align	2
 166              	.L14:
 167 0038 00000000 		.word	.LANCHOR1
 168 003c 00000000 		.word	.LANCHOR2
 169 0040 00000000 		.word	.LANCHOR0
 170 0044 00080E40 		.word	1074661376
 171 0048 00000000 		.word	__dso_handle
ARM GAS  /tmp/cc93Xrq3.s 			page 4


 172 004c 00000000 		.word	_ZN9UARTClassD1Ev
 173              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 174              		.section	.init_array,"aw",%init_array
 175              		.align	2
 176 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 177              		.global	Serial
 178              		.global	tx_buffer1
 179              		.global	rx_buffer1
 180              		.global	g_APinDescription
 181              		.section	.bss.Serial,"aw",%nobits
 182              		.align	2
 183              		.set	.LANCHOR0,. + 0
 184              		.type	Serial, %object
 185              		.size	Serial, 36
 186              	Serial:
 187 0000 00000000 		.space	36
 187      00000000 
 187      00000000 
 187      00000000 
 187      00000000 
 188              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 189              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 190              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 191              	_ZL28cpu_irq_prev_interrupt_state:
 192 0000 00       		.space	1
 193              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 194              		.align	2
 195              		.type	_ZL32cpu_irq_critical_section_counter, %object
 196              		.size	_ZL32cpu_irq_critical_section_counter, 4
 197              	_ZL32cpu_irq_critical_section_counter:
 198 0000 00000000 		.space	4
 199              		.section	.bss.rx_buffer1,"aw",%nobits
 200              		.align	2
 201              		.set	.LANCHOR1,. + 0
 202              		.type	rx_buffer1, %object
 203              		.size	rx_buffer1, 520
 204              	rx_buffer1:
 205 0000 00000000 		.space	520
 205      00000000 
 205      00000000 
 205      00000000 
 205      00000000 
 206              		.section	.bss.tx_buffer1,"aw",%nobits
 207              		.align	2
 208              		.set	.LANCHOR2,. + 0
 209              		.type	tx_buffer1, %object
 210              		.size	tx_buffer1, 520
 211              	tx_buffer1:
 212 0000 00000000 		.space	520
 212      00000000 
 212      00000000 
 212      00000000 
 212      00000000 
 213              		.section	.rodata.g_APinDescription,"a",%progbits
 214              		.align	2
 215              		.type	g_APinDescription, %object
 216              		.size	g_APinDescription, 2016
ARM GAS  /tmp/cc93Xrq3.s 			page 5


 217              	g_APinDescription:
 218 0000 000E0E40 		.word	1074662912
 219 0004 01000000 		.word	1
 220 0008 0B000000 		.word	11
 221 000c 00000010 		.word	268435456
 222 0010 00000000 		.word	0
 223 0014 14000000 		.word	20
 224 0018 FF       		.byte	-1
 225 0019 FF       		.byte	-1
 226 001a 00       		.byte	0
 227 001b 00       		.space	1
 228 001c 000E0E40 		.word	1074662912
 229 0020 02000000 		.word	2
 230 0024 0B000000 		.word	11
 231 0028 00000030 		.word	805306368
 232 002c 00000000 		.word	0
 233 0030 04000000 		.word	4
 234 0034 FF       		.byte	-1
 235 0035 FF       		.byte	-1
 236 0036 FF       		.byte	-1
 237 0037 00       		.space	1
 238 0038 000E0E40 		.word	1074662912
 239 003c 04000000 		.word	4
 240 0040 0B000000 		.word	11
 241 0044 00000010 		.word	268435456
 242 0048 00000000 		.word	0
 243 004c 04000000 		.word	4
 244 0050 FF       		.byte	-1
 245 0051 FF       		.byte	-1
 246 0052 FF       		.byte	-1
 247 0053 00       		.space	1
 248 0054 000E0E40 		.word	1074662912
 249 0058 08000000 		.word	8
 250 005c 0B000000 		.word	11
 251 0060 00000008 		.word	134217728
 252 0064 01000000 		.word	1
 253 0068 04000000 		.word	4
 254 006c FF       		.byte	-1
 255 006d FF       		.byte	-1
 256 006e FF       		.byte	-1
 257 006f 00       		.space	1
 258 0070 000E0E40 		.word	1074662912
 259 0074 10000000 		.word	16
 260 0078 0B000000 		.word	11
 261 007c 00000008 		.word	134217728
 262 0080 01000000 		.word	1
 263 0084 04000000 		.word	4
 264 0088 FF       		.byte	-1
 265 0089 FF       		.byte	-1
 266 008a FF       		.byte	-1
 267 008b 00       		.space	1
 268 008c 000E0E40 		.word	1074662912
 269 0090 20000000 		.word	32
 270 0094 0B000000 		.word	11
 271 0098 00000008 		.word	134217728
 272 009c 01000000 		.word	1
 273 00a0 04000000 		.word	4
ARM GAS  /tmp/cc93Xrq3.s 			page 6


 274 00a4 FF       		.byte	-1
 275 00a5 FF       		.byte	-1
 276 00a6 FF       		.byte	-1
 277 00a7 00       		.space	1
 278 00a8 000E0E40 		.word	1074662912
 279 00ac 40000000 		.word	64
 280 00b0 0B000000 		.word	11
 281 00b4 00000008 		.word	134217728
 282 00b8 00000000 		.word	0
 283 00bc 04000000 		.word	4
 284 00c0 FF       		.byte	-1
 285 00c1 FF       		.byte	-1
 286 00c2 FF       		.byte	-1
 287 00c3 00       		.space	1
 288 00c4 000E0E40 		.word	1074662912
 289 00c8 80000000 		.word	128
 290 00cc 0B000000 		.word	11
 291 00d0 00000028 		.word	671088640
 292 00d4 00000000 		.word	0
 293 00d8 04000000 		.word	4
 294 00dc FF       		.byte	-1
 295 00dd FF       		.byte	-1
 296 00de FF       		.byte	-1
 297 00df 00       		.space	1
 298 00e0 000E0E40 		.word	1074662912
 299 00e4 00010000 		.word	256
 300 00e8 0B000000 		.word	11
 301 00ec 00000030 		.word	805306368
 302 00f0 00000000 		.word	0
 303 00f4 04000000 		.word	4
 304 00f8 FF       		.byte	-1
 305 00f9 FF       		.byte	-1
 306 00fa FF       		.byte	-1
 307 00fb 00       		.space	1
 308 00fc 000E0E40 		.word	1074662912
 309 0100 00020000 		.word	512
 310 0104 0B000000 		.word	11
 311 0108 00000008 		.word	134217728
 312 010c 01000000 		.word	1
 313 0110 04000000 		.word	4
 314 0114 FF       		.byte	-1
 315 0115 FF       		.byte	-1
 316 0116 FF       		.byte	-1
 317 0117 00       		.space	1
 318 0118 000E0E40 		.word	1074662912
 319 011c 00040000 		.word	1024
 320 0120 0B000000 		.word	11
 321 0124 00000008 		.word	134217728
 322 0128 00000000 		.word	0
 323 012c 04000000 		.word	4
 324 0130 FF       		.byte	-1
 325 0131 FF       		.byte	-1
 326 0132 FF       		.byte	-1
 327 0133 00       		.space	1
 328 0134 000E0E40 		.word	1074662912
 329 0138 00080000 		.word	2048
 330 013c 0B000000 		.word	11
ARM GAS  /tmp/cc93Xrq3.s 			page 7


 331 0140 00000008 		.word	134217728
 332 0144 00000000 		.word	0
 333 0148 04000000 		.word	4
 334 014c FF       		.byte	-1
 335 014d FF       		.byte	-1
 336 014e FF       		.byte	-1
 337 014f 00       		.space	1
 338 0150 000E0E40 		.word	1074662912
 339 0154 00100000 		.word	4096
 340 0158 0B000000 		.word	11
 341 015c 00000008 		.word	134217728
 342 0160 00000000 		.word	0
 343 0164 04000000 		.word	4
 344 0168 FF       		.byte	-1
 345 0169 FF       		.byte	-1
 346 016a FF       		.byte	-1
 347 016b 00       		.space	1
 348 016c 000E0E40 		.word	1074662912
 349 0170 00200000 		.word	8192
 350 0174 0B000000 		.word	11
 351 0178 00000008 		.word	134217728
 352 017c 00000000 		.word	0
 353 0180 04000000 		.word	4
 354 0184 FF       		.byte	-1
 355 0185 FF       		.byte	-1
 356 0186 FF       		.byte	-1
 357 0187 00       		.space	1
 358 0188 000E0E40 		.word	1074662912
 359 018c 00400000 		.word	16384
 360 0190 0B000000 		.word	11
 361 0194 00000008 		.word	134217728
 362 0198 00000000 		.word	0
 363 019c 04000000 		.word	4
 364 01a0 FF       		.byte	-1
 365 01a1 FF       		.byte	-1
 366 01a2 FF       		.byte	-1
 367 01a3 00       		.space	1
 368 01a4 000E0E40 		.word	1074662912
 369 01a8 00800000 		.word	32768
 370 01ac 0B000000 		.word	11
 371 01b0 00000010 		.word	268435456
 372 01b4 00000000 		.word	0
 373 01b8 14000000 		.word	20
 374 01bc FF       		.byte	-1
 375 01bd FF       		.byte	-1
 376 01be 02       		.byte	2
 377 01bf 00       		.space	1
 378 01c0 000E0E40 		.word	1074662912
 379 01c4 00000100 		.word	65536
 380 01c8 0B000000 		.word	11
 381 01cc 00000018 		.word	402653184
 382 01d0 00000000 		.word	0
 383 01d4 0C000000 		.word	12
 384 01d8 FF       		.byte	-1
 385 01d9 02       		.byte	2
 386 01da FF       		.byte	-1
 387 01db 00       		.space	1
ARM GAS  /tmp/cc93Xrq3.s 			page 8


 388 01dc 000E0E40 		.word	1074662912
 389 01e0 00000200 		.word	131072
 390 01e4 0B000000 		.word	11
 391 01e8 00000028 		.word	671088640
 392 01ec 00000000 		.word	0
 393 01f0 02000000 		.word	2
 394 01f4 00       		.byte	0
 395 01f5 FF       		.byte	-1
 396 01f6 FF       		.byte	-1
 397 01f7 00       		.space	1
 398 01f8 000E0E40 		.word	1074662912
 399 01fc 00000400 		.word	262144
 400 0200 0B000000 		.word	11
 401 0204 00000030 		.word	805306368
 402 0208 00000000 		.word	0
 403 020c 02000000 		.word	2
 404 0210 01       		.byte	1
 405 0211 FF       		.byte	-1
 406 0212 FF       		.byte	-1
 407 0213 00       		.space	1
 408 0214 000E0E40 		.word	1074662912
 409 0218 00000800 		.word	524288
 410 021c 0B000000 		.word	11
 411 0220 00000028 		.word	671088640
 412 0224 00000000 		.word	0
 413 0228 02000000 		.word	2
 414 022c 02       		.byte	2
 415 022d FF       		.byte	-1
 416 022e FF       		.byte	-1
 417 022f 00       		.space	1
 418 0230 000E0E40 		.word	1074662912
 419 0234 00001000 		.word	1048576
 420 0238 0B000000 		.word	11
 421 023c 00000028 		.word	671088640
 422 0240 00000000 		.word	0
 423 0244 02000000 		.word	2
 424 0248 03       		.byte	3
 425 0249 FF       		.byte	-1
 426 024a FF       		.byte	-1
 427 024b 00       		.space	1
 428 024c 000E0E40 		.word	1074662912
 429 0250 00002000 		.word	2097152
 430 0254 0B000000 		.word	11
 431 0258 00000008 		.word	134217728
 432 025c 01000000 		.word	1
 433 0260 02000000 		.word	2
 434 0264 08       		.byte	8
 435 0265 FF       		.byte	-1
 436 0266 FF       		.byte	-1
 437 0267 00       		.space	1
 438 0268 000E0E40 		.word	1074662912
 439 026c 00004000 		.word	4194304
 440 0270 0B000000 		.word	11
 441 0274 00000008 		.word	134217728
 442 0278 01000000 		.word	1
 443 027c 02000000 		.word	2
 444 0280 09       		.byte	9
ARM GAS  /tmp/cc93Xrq3.s 			page 9


 445 0281 FF       		.byte	-1
 446 0282 FF       		.byte	-1
 447 0283 00       		.space	1
 448 0284 000E0E40 		.word	1074662912
 449 0288 00008000 		.word	8388608
 450 028c 0B000000 		.word	11
 451 0290 00000028 		.word	671088640
 452 0294 00000000 		.word	0
 453 0298 04000000 		.word	4
 454 029c FF       		.byte	-1
 455 029d FF       		.byte	-1
 456 029e FF       		.byte	-1
 457 029f 00       		.space	1
 458 02a0 000E0E40 		.word	1074662912
 459 02a4 00000001 		.word	16777216
 460 02a8 0B000000 		.word	11
 461 02ac 00000030 		.word	805306368
 462 02b0 00000000 		.word	0
 463 02b4 04000000 		.word	4
 464 02b8 FF       		.byte	-1
 465 02b9 FF       		.byte	-1
 466 02ba FF       		.byte	-1
 467 02bb 00       		.space	1
 468 02bc 000E0E40 		.word	1074662912
 469 02c0 00000002 		.word	33554432
 470 02c4 0B000000 		.word	11
 471 02c8 00000028 		.word	671088640
 472 02cc 00000000 		.word	0
 473 02d0 04000000 		.word	4
 474 02d4 FF       		.byte	-1
 475 02d5 FF       		.byte	-1
 476 02d6 FF       		.byte	-1
 477 02d7 00       		.space	1
 478 02d8 00100E40 		.word	1074663424
 479 02dc 01000000 		.word	1
 480 02e0 0C000000 		.word	12
 481 02e4 00000028 		.word	671088640
 482 02e8 00000000 		.word	0
 483 02ec 02000000 		.word	2
 484 02f0 04       		.byte	4
 485 02f1 FF       		.byte	-1
 486 02f2 FF       		.byte	-1
 487 02f3 00       		.space	1
 488 02f4 00100E40 		.word	1074663424
 489 02f8 02000000 		.word	2
 490 02fc 0C000000 		.word	12
 491 0300 00000028 		.word	671088640
 492 0304 00000000 		.word	0
 493 0308 02000000 		.word	2
 494 030c 05       		.byte	5
 495 030d FF       		.byte	-1
 496 030e FF       		.byte	-1
 497 030f 00       		.space	1
 498 0310 00100E40 		.word	1074663424
 499 0314 04000000 		.word	4
 500 0318 0C000000 		.word	12
 501 031c 00000008 		.word	134217728
ARM GAS  /tmp/cc93Xrq3.s 			page 10


 502 0320 01000000 		.word	1
 503 0324 04000000 		.word	4
 504 0328 FF       		.byte	-1
 505 0329 FF       		.byte	-1
 506 032a FF       		.byte	-1
 507 032b 00       		.space	1
 508 032c 00100E40 		.word	1074663424
 509 0330 08000000 		.word	8
 510 0334 0C000000 		.word	12
 511 0338 00000008 		.word	134217728
 512 033c 00000000 		.word	0
 513 0340 04000000 		.word	4
 514 0344 FF       		.byte	-1
 515 0345 FF       		.byte	-1
 516 0346 FF       		.byte	-1
 517 0347 00       		.space	1
 518 0348 00100E40 		.word	1074663424
 519 034c 10000000 		.word	16
 520 0350 0C000000 		.word	12
 521 0354 00000030 		.word	805306368
 522 0358 00000000 		.word	0
 523 035c 04000000 		.word	4
 524 0360 FF       		.byte	-1
 525 0361 FF       		.byte	-1
 526 0362 FF       		.byte	-1
 527 0363 00       		.space	1
 528 0364 00100E40 		.word	1074663424
 529 0368 20000000 		.word	32
 530 036c 0C000000 		.word	12
 531 0370 00000028 		.word	671088640
 532 0374 00000000 		.word	0
 533 0378 04000000 		.word	4
 534 037c FF       		.byte	-1
 535 037d FF       		.byte	-1
 536 037e FF       		.byte	-1
 537 037f 00       		.space	1
 538 0380 00100E40 		.word	1074663424
 539 0384 40000000 		.word	64
 540 0388 0C000000 		.word	12
 541 038c 00000028 		.word	671088640
 542 0390 00000000 		.word	0
 543 0394 04000000 		.word	4
 544 0398 FF       		.byte	-1
 545 0399 FF       		.byte	-1
 546 039a FF       		.byte	-1
 547 039b 00       		.space	1
 548 039c 00100E40 		.word	1074663424
 549 03a0 80000000 		.word	128
 550 03a4 0C000000 		.word	12
 551 03a8 00000030 		.word	805306368
 552 03ac 00000000 		.word	0
 553 03b0 04000000 		.word	4
 554 03b4 FF       		.byte	-1
 555 03b5 FF       		.byte	-1
 556 03b6 FF       		.byte	-1
 557 03b7 00       		.space	1
 558 03b8 00100E40 		.word	1074663424
ARM GAS  /tmp/cc93Xrq3.s 			page 11


 559 03bc 00200000 		.word	8192
 560 03c0 0C000000 		.word	12
 561 03c4 00000030 		.word	805306368
 562 03c8 00000000 		.word	0
 563 03cc 20000000 		.word	32
 564 03d0 20       		.byte	32
 565 03d1 FF       		.byte	-1
 566 03d2 FF       		.byte	-1
 567 03d3 00       		.space	1
 568 03d4 00100E40 		.word	1074663424
 569 03d8 00400000 		.word	16384
 570 03dc 0C000000 		.word	12
 571 03e0 00000030 		.word	805306368
 572 03e4 00000000 		.word	0
 573 03e8 20000000 		.word	32
 574 03ec 21       		.byte	33
 575 03ed FF       		.byte	-1
 576 03ee FF       		.byte	-1
 577 03ef 00       		.space	1
 578 03f0 00120E40 		.word	1074663936
 579 03f4 01000000 		.word	1
 580 03f8 0D000000 		.word	13
 581 03fc 00000010 		.word	268435456
 582 0400 00000000 		.word	0
 583 0404 0C000000 		.word	12
 584 0408 FF       		.byte	-1
 585 0409 00       		.byte	0
 586 040a FF       		.byte	-1
 587 040b 00       		.space	1
 588 040c 00120E40 		.word	1074663936
 589 0410 02000000 		.word	2
 590 0414 0D000000 		.word	13
 591 0418 00000010 		.word	268435456
 592 041c 00000000 		.word	0
 593 0420 0C000000 		.word	12
 594 0424 FF       		.byte	-1
 595 0425 01       		.byte	1
 596 0426 FF       		.byte	-1
 597 0427 00       		.space	1
 598 0428 00120E40 		.word	1074663936
 599 042c 04000000 		.word	4
 600 0430 0D000000 		.word	13
 601 0434 00000030 		.word	805306368
 602 0438 00000000 		.word	0
 603 043c 0C000000 		.word	12
 604 0440 FF       		.byte	-1
 605 0441 02       		.byte	2
 606 0442 FF       		.byte	-1
 607 0443 00       		.space	1
 608 0444 00120E40 		.word	1074663936
 609 0448 08000000 		.word	8
 610 044c 0D000000 		.word	13
 611 0450 00000028 		.word	671088640
 612 0454 00000000 		.word	0
 613 0458 04000000 		.word	4
 614 045c FF       		.byte	-1
 615 045d FF       		.byte	-1
ARM GAS  /tmp/cc93Xrq3.s 			page 12


 616 045e FF       		.byte	-1
 617 045f 00       		.space	1
 618 0460 00120E40 		.word	1074663936
 619 0464 10000000 		.word	16
 620 0468 0D000000 		.word	13
 621 046c 00000030 		.word	805306368
 622 0470 00000000 		.word	0
 623 0474 04000000 		.word	4
 624 0478 FF       		.byte	-1
 625 0479 FF       		.byte	-1
 626 047a FF       		.byte	-1
 627 047b 00       		.space	1
 628 047c 00120E40 		.word	1074663936
 629 0480 20000000 		.word	32
 630 0484 0D000000 		.word	13
 631 0488 00000030 		.word	805306368
 632 048c 00000000 		.word	0
 633 0490 04000000 		.word	4
 634 0494 FF       		.byte	-1
 635 0495 FF       		.byte	-1
 636 0496 FF       		.byte	-1
 637 0497 00       		.space	1
 638 0498 00120E40 		.word	1074663936
 639 049c 40000000 		.word	64
 640 04a0 0D000000 		.word	13
 641 04a4 00000030 		.word	805306368
 642 04a8 00000000 		.word	0
 643 04ac 04000000 		.word	4
 644 04b0 FF       		.byte	-1
 645 04b1 FF       		.byte	-1
 646 04b2 FF       		.byte	-1
 647 04b3 00       		.space	1
 648 04b4 00120E40 		.word	1074663936
 649 04b8 80000000 		.word	128
 650 04bc 0D000000 		.word	13
 651 04c0 00000030 		.word	805306368
 652 04c4 00000000 		.word	0
 653 04c8 04000000 		.word	4
 654 04cc FF       		.byte	-1
 655 04cd FF       		.byte	-1
 656 04ce FF       		.byte	-1
 657 04cf 00       		.space	1
 658 04d0 00120E40 		.word	1074663936
 659 04d4 00010000 		.word	256
 660 04d8 0D000000 		.word	13
 661 04dc 00000028 		.word	671088640
 662 04e0 01000000 		.word	1
 663 04e4 04000000 		.word	4
 664 04e8 FF       		.byte	-1
 665 04e9 FF       		.byte	-1
 666 04ea FF       		.byte	-1
 667 04eb 00       		.space	1
 668 04ec 00120E40 		.word	1074663936
 669 04f0 00020000 		.word	512
 670 04f4 0D000000 		.word	13
 671 04f8 00000030 		.word	805306368
 672 04fc 00000000 		.word	0
ARM GAS  /tmp/cc93Xrq3.s 			page 13


 673 0500 04000000 		.word	4
 674 0504 FF       		.byte	-1
 675 0505 FF       		.byte	-1
 676 0506 FF       		.byte	-1
 677 0507 00       		.space	1
 678 0508 00120E40 		.word	1074663936
 679 050c 00040000 		.word	1024
 680 0510 0D000000 		.word	13
 681 0514 00000028 		.word	671088640
 682 0518 00000000 		.word	0
 683 051c 04000000 		.word	4
 684 0520 FF       		.byte	-1
 685 0521 FF       		.byte	-1
 686 0522 FF       		.byte	-1
 687 0523 00       		.space	1
 688 0524 00120E40 		.word	1074663936
 689 0528 00080000 		.word	2048
 690 052c 0D000000 		.word	13
 691 0530 00000028 		.word	671088640
 692 0534 00000000 		.word	0
 693 0538 04000000 		.word	4
 694 053c FF       		.byte	-1
 695 053d FF       		.byte	-1
 696 053e FF       		.byte	-1
 697 053f 00       		.space	1
 698 0540 00120E40 		.word	1074663936
 699 0544 00100000 		.word	4096
 700 0548 0D000000 		.word	13
 701 054c 00000028 		.word	671088640
 702 0550 00000000 		.word	0
 703 0554 02000000 		.word	2
 704 0558 0C       		.byte	12
 705 0559 FF       		.byte	-1
 706 055a FF       		.byte	-1
 707 055b 00       		.space	1
 708 055c 00120E40 		.word	1074663936
 709 0560 00200000 		.word	8192
 710 0564 0D000000 		.word	13
 711 0568 00000030 		.word	805306368
 712 056c 00000000 		.word	0
 713 0570 04000000 		.word	4
 714 0574 FF       		.byte	-1
 715 0575 FF       		.byte	-1
 716 0576 FF       		.byte	-1
 717 0577 00       		.space	1
 718 0578 00120E40 		.word	1074663936
 719 057c 00400000 		.word	16384
 720 0580 0D000000 		.word	13
 721 0584 00000030 		.word	805306368
 722 0588 00000000 		.word	0
 723 058c 04000000 		.word	4
 724 0590 FF       		.byte	-1
 725 0591 FF       		.byte	-1
 726 0592 FF       		.byte	-1
 727 0593 00       		.space	1
 728 0594 00120E40 		.word	1074663936
 729 0598 00800000 		.word	32768
ARM GAS  /tmp/cc93Xrq3.s 			page 14


 730 059c 0D000000 		.word	13
 731 05a0 00000028 		.word	671088640
 732 05a4 00000000 		.word	0
 733 05a8 02000000 		.word	2
 734 05ac 0B       		.byte	11
 735 05ad FF       		.byte	-1
 736 05ae FF       		.byte	-1
 737 05af 00       		.space	1
 738 05b0 00120E40 		.word	1074663936
 739 05b4 00000100 		.word	65536
 740 05b8 0D000000 		.word	13
 741 05bc 00000030 		.word	805306368
 742 05c0 00000000 		.word	0
 743 05c4 04000000 		.word	4
 744 05c8 FF       		.byte	-1
 745 05c9 FF       		.byte	-1
 746 05ca FF       		.byte	-1
 747 05cb 00       		.space	1
 748 05cc 00120E40 		.word	1074663936
 749 05d0 00000200 		.word	131072
 750 05d4 0D000000 		.word	13
 751 05d8 00000030 		.word	805306368
 752 05dc 00000000 		.word	0
 753 05e0 04000000 		.word	4
 754 05e4 FF       		.byte	-1
 755 05e5 FF       		.byte	-1
 756 05e6 FF       		.byte	-1
 757 05e7 00       		.space	1
 758 05e8 00120E40 		.word	1074663936
 759 05ec 00000400 		.word	262144
 760 05f0 0D000000 		.word	13
 761 05f4 00000030 		.word	805306368
 762 05f8 00000000 		.word	0
 763 05fc 04000000 		.word	4
 764 0600 FF       		.byte	-1
 765 0601 FF       		.byte	-1
 766 0602 FF       		.byte	-1
 767 0603 00       		.space	1
 768 0604 00120E40 		.word	1074663936
 769 0608 00000800 		.word	524288
 770 060c 0D000000 		.word	13
 771 0610 00000030 		.word	805306368
 772 0614 00000000 		.word	0
 773 0618 04000000 		.word	4
 774 061c FF       		.byte	-1
 775 061d FF       		.byte	-1
 776 061e FF       		.byte	-1
 777 061f 00       		.space	1
 778 0620 00120E40 		.word	1074663936
 779 0624 00001000 		.word	1048576
 780 0628 0D000000 		.word	13
 781 062c 00000030 		.word	805306368
 782 0630 00000000 		.word	0
 783 0634 04000000 		.word	4
 784 0638 FF       		.byte	-1
 785 0639 FF       		.byte	-1
 786 063a FF       		.byte	-1
ARM GAS  /tmp/cc93Xrq3.s 			page 15


 787 063b 00       		.space	1
 788 063c 00120E40 		.word	1074663936
 789 0640 00002000 		.word	2097152
 790 0644 0D000000 		.word	13
 791 0648 00000030 		.word	805306368
 792 064c 00000000 		.word	0
 793 0650 04000000 		.word	4
 794 0654 FF       		.byte	-1
 795 0655 FF       		.byte	-1
 796 0656 FF       		.byte	-1
 797 0657 00       		.space	1
 798 0658 00120E40 		.word	1074663936
 799 065c 00004000 		.word	4194304
 800 0660 0D000000 		.word	13
 801 0664 00000010 		.word	268435456
 802 0668 00000000 		.word	0
 803 066c 0C000000 		.word	12
 804 0670 FF       		.byte	-1
 805 0671 03       		.byte	3
 806 0672 FF       		.byte	-1
 807 0673 00       		.space	1
 808 0674 00120E40 		.word	1074663936
 809 0678 00008000 		.word	8388608
 810 067c 0D000000 		.word	13
 811 0680 00000010 		.word	268435456
 812 0684 00000000 		.word	0
 813 0688 14000000 		.word	20
 814 068c FF       		.byte	-1
 815 068d FF       		.byte	-1
 816 068e 06       		.byte	6
 817 068f 00       		.space	1
 818 0690 00120E40 		.word	1074663936
 819 0694 00000001 		.word	16777216
 820 0698 0D000000 		.word	13
 821 069c 00000030 		.word	805306368
 822 06a0 00000000 		.word	0
 823 06a4 04000000 		.word	4
 824 06a8 FF       		.byte	-1
 825 06a9 FF       		.byte	-1
 826 06aa FF       		.byte	-1
 827 06ab 00       		.space	1
 828 06ac 00120E40 		.word	1074663936
 829 06b0 00000002 		.word	33554432
 830 06b4 0D000000 		.word	13
 831 06b8 00000030 		.word	805306368
 832 06bc 00000000 		.word	0
 833 06c0 04000000 		.word	4
 834 06c4 FF       		.byte	-1
 835 06c5 FF       		.byte	-1
 836 06c6 FF       		.byte	-1
 837 06c7 00       		.space	1
 838 06c8 00120E40 		.word	1074663936
 839 06cc 00000004 		.word	67108864
 840 06d0 0D000000 		.word	13
 841 06d4 00000010 		.word	268435456
 842 06d8 00000000 		.word	0
 843 06dc 14000000 		.word	20
ARM GAS  /tmp/cc93Xrq3.s 			page 16


 844 06e0 FF       		.byte	-1
 845 06e1 FF       		.byte	-1
 846 06e2 08       		.byte	8
 847 06e3 00       		.space	1
 848 06e4 00120E40 		.word	1074663936
 849 06e8 00000008 		.word	134217728
 850 06ec 0D000000 		.word	13
 851 06f0 00000030 		.word	805306368
 852 06f4 00000000 		.word	0
 853 06f8 04000000 		.word	4
 854 06fc FF       		.byte	-1
 855 06fd FF       		.byte	-1
 856 06fe FF       		.byte	-1
 857 06ff 00       		.space	1
 858 0700 00120E40 		.word	1074663936
 859 0704 00000010 		.word	268435456
 860 0708 0D000000 		.word	13
 861 070c 00000030 		.word	805306368
 862 0710 00000000 		.word	0
 863 0714 04000000 		.word	4
 864 0718 FF       		.byte	-1
 865 0719 FF       		.byte	-1
 866 071a FF       		.byte	-1
 867 071b 00       		.space	1
 868 071c 00120E40 		.word	1074663936
 869 0720 00000020 		.word	536870912
 870 0724 0D000000 		.word	13
 871 0728 00000010 		.word	268435456
 872 072c 00000000 		.word	0
 873 0730 14000000 		.word	20
 874 0734 FF       		.byte	-1
 875 0735 FF       		.byte	-1
 876 0736 0A       		.byte	10
 877 0737 00       		.space	1
 878 0738 00120E40 		.word	1074663936
 879 073c 00000040 		.word	1073741824
 880 0740 0D000000 		.word	13
 881 0744 00000028 		.word	671088640
 882 0748 00000000 		.word	0
 883 074c 02000000 		.word	2
 884 0750 0E       		.byte	14
 885 0751 FF       		.byte	-1
 886 0752 FF       		.byte	-1
 887 0753 00       		.space	1
 888 0754 00120E40 		.word	1074663936
 889 0758 00000080 		.word	-2147483648
 890 075c 0D000000 		.word	13
 891 0760 00000030 		.word	805306368
 892 0764 00000000 		.word	0
 893 0768 04000000 		.word	4
 894 076c FF       		.byte	-1
 895 076d FF       		.byte	-1
 896 076e FF       		.byte	-1
 897 076f 00       		.space	1
 898 0770 000E0E40 		.word	1074662912
 899 0774 00000020 		.word	536870912
 900 0778 0B000000 		.word	11
ARM GAS  /tmp/cc93Xrq3.s 			page 17


 901 077c 00000018 		.word	402653184
 902 0780 00000000 		.word	0
 903 0784 04000000 		.word	4
 904 0788 FF       		.byte	-1
 905 0789 FF       		.byte	-1
 906 078a FF       		.byte	-1
 907 078b 00       		.space	1
 908 078c 000E0E40 		.word	1074662912
 909 0790 000000DC 		.word	-603979776
 910 0794 0B000000 		.word	11
 911 0798 00000018 		.word	402653184
 912 079c 01000000 		.word	1
 913 07a0 04000000 		.word	4
 914 07a4 FF       		.byte	-1
 915 07a5 FF       		.byte	-1
 916 07a6 FF       		.byte	-1
 917 07a7 00       		.space	1
 918 07a8 000E0E40 		.word	1074662912
 919 07ac 18000000 		.word	24
 920 07b0 0B000000 		.word	11
 921 07b4 00000008 		.word	134217728
 922 07b8 00000000 		.word	0
 923 07bc 05000000 		.word	5
 924 07c0 FF       		.byte	-1
 925 07c1 FF       		.byte	-1
 926 07c2 FF       		.byte	-1
 927 07c3 00       		.space	1
 928 07c4 00100E40 		.word	1074663424
 929 07c8 0C000000 		.word	12
 930 07cc 0C000000 		.word	12
 931 07d0 00000008 		.word	134217728
 932 07d4 00000000 		.word	0
 933 07d8 05000000 		.word	5
 934 07dc FF       		.byte	-1
 935 07dd FF       		.byte	-1
 936 07de FF       		.byte	-1
 937 07df 00       		.space	1
 938              		.hidden	__dso_handle
 939              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
