ARM GAS  /tmp/ccAe85vk.s 			page 1


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
  13              		.file	"variant.cpp"
  14              		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN9UARTClassD2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN9UARTClassD2Ev, %function
  23              	_ZN9UARTClassD2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
  29              		.weak	_ZN9UARTClassD1Ev
  30              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
  31 0002 00BF     		.section	.text.UART0_Handler,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	UART0_Handler
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	UART0_Handler, %function
  40              	UART0_Handler:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0148     		ldr	r0, .L3
  45 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  46              	.L4:
  47 0006 00BF     		.align	2
  48              	.L3:
  49 0008 00000000 		.word	.LANCHOR0
  50              		.size	UART0_Handler, .-UART0_Handler
  51              		.section	.text.UART1_Handler,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	UART1_Handler
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/ccAe85vk.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	UART1_Handler, %function
  60              	UART1_Handler:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0148     		ldr	r0, .L6
  65 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  66              	.L7:
  67 0006 00BF     		.align	2
  68              	.L6:
  69 0008 00000000 		.word	.LANCHOR1
  70              		.size	UART1_Handler, .-UART1_Handler
  71              		.section	.text._Z12ConfigurePinRK14PinDescription,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	_Z12ConfigurePinRK14PinDescription
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_Z12ConfigurePinRK14PinDescription, %function
  80              	_Z12ConfigurePinRK14PinDescription:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0369     		ldr	r3, [r0, #16]
  85 0002 4268     		ldr	r2, [r0, #4]
  86 0004 C168     		ldr	r1, [r0, #12]
  87 0006 0068     		ldr	r0, [r0]
  88 0008 FFF7FEBF 		b	pio_configure
  89              		.size	_Z12ConfigurePinRK14PinDescription, .-_Z12ConfigurePinRK14PinDescription
  90              		.section	.text.init,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	init
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	init, %function
  99              	init:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102 0000 10B5     		push	{r4, lr}
 103 0002 114C     		ldr	r4, .L11
 104 0004 0023     		movs	r3, #0
 105 0006 4FF4C062 		mov	r2, #1536
 106 000a 2046     		mov	r0, r4
 107 000c 4FF00061 		mov	r1, #134217728
 108 0010 FFF7FEFF 		bl	pio_configure
 109 0014 0121     		movs	r1, #1
 110 0016 0920     		movs	r0, #9
 111 0018 FFF7FEFF 		bl	setPullup
 112 001c FFF7FEFF 		bl	_Z12AnalogInInitv
 113 0020 FFF7FEFF 		bl	_Z13AnalogOutInitv
 114 0024 2046     		mov	r0, r4
ARM GAS  /tmp/ccAe85vk.s 			page 3


 115 0026 0023     		movs	r3, #0
 116 0028 4FF00052 		mov	r2, #536870912
 117 002c 4FF0C051 		mov	r1, #402653184
 118 0030 FFF7FEFF 		bl	pio_configure
 119 0034 2046     		mov	r0, r4
 120 0036 0123     		movs	r3, #1
 121 0038 4FF05C42 		mov	r2, #-603979776
 122 003c 4FF0C051 		mov	r1, #402653184
 123 0040 BDE81040 		pop	{r4, lr}
 124 0044 FFF7FEBF 		b	pio_configure
 125              	.L12:
 126              		.align	2
 127              	.L11:
 128 0048 000E0E40 		.word	1074662912
 129              		.size	init, .-init
 130              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 131              		.align	1
 132              		.p2align 2,,3
 133              		.weak	_ZN9UARTClassD0Ev
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZN9UARTClassD0Ev, %function
 139              	_ZN9UARTClassD0Ev:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142 0000 10B5     		push	{r4, lr}
 143 0002 2C21     		movs	r1, #44
 144 0004 0446     		mov	r4, r0
 145 0006 FFF7FEFF 		bl	_ZdlPvj
 146 000a 2046     		mov	r0, r4
 147 000c 10BD     		pop	{r4, pc}
 148              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 149 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 157              	_GLOBAL__sub_I_g_APinDescription:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 161 0004 DFF88890 		ldr	r9, .L17+32
 162 0008 194D     		ldr	r5, .L17
 163 000a 1A4F     		ldr	r7, .L17+4
 164 000c DFF88480 		ldr	r8, .L17+36
 165 0010 194C     		ldr	r4, .L17+8
 166 0012 1A4E     		ldr	r6, .L17+12
 167 0014 83B0     		sub	sp, sp, #12
 168 0016 4846     		mov	r0, r9
 169 0018 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 170 001c 2846     		mov	r0, r5
 171 001e FFF7FEFF 		bl	_ZN10RingBufferC1Ev
ARM GAS  /tmp/ccAe85vk.s 			page 4


 172 0022 3846     		mov	r0, r7
 173 0024 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 174 0028 4046     		mov	r0, r8
 175 002a FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 176 002e 0723     		movs	r3, #7
 177 0030 0195     		str	r5, [sp, #4]
 178 0032 134D     		ldr	r5, .L17+16
 179 0034 CDF80090 		str	r9, [sp]
 180 0038 1A46     		mov	r2, r3
 181 003a 2046     		mov	r0, r4
 182 003c 1149     		ldr	r1, .L17+20
 183 003e FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 184 0042 3246     		mov	r2, r6
 185 0044 2946     		mov	r1, r5
 186 0046 2046     		mov	r0, r4
 187 0048 0F4C     		ldr	r4, .L17+24
 188 004a FFF7FEFF 		bl	__aeabi_atexit
 189 004e 2D23     		movs	r3, #45
 190 0050 1A46     		mov	r2, r3
 191 0052 8DE88001 		stm	sp, {r7, r8}
 192 0056 2046     		mov	r0, r4
 193 0058 0C49     		ldr	r1, .L17+28
 194 005a FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 195 005e 3246     		mov	r2, r6
 196 0060 2946     		mov	r1, r5
 197 0062 2046     		mov	r0, r4
 198 0064 03B0     		add	sp, sp, #12
 199              		@ sp needed
 200 0066 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 201 006a FFF7FEBF 		b	__aeabi_atexit
 202              	.L18:
 203 006e 00BF     		.align	2
 204              	.L17:
 205 0070 00000000 		.word	.LANCHOR3
 206 0074 00000000 		.word	.LANCHOR4
 207 0078 00000000 		.word	.LANCHOR0
 208 007c 00000000 		.word	__dso_handle
 209 0080 00000000 		.word	_ZN9UARTClassD1Ev
 210 0084 00060E40 		.word	1074660864
 211 0088 00000000 		.word	.LANCHOR1
 212 008c 00060640 		.word	1074136576
 213 0090 00000000 		.word	.LANCHOR2
 214 0094 00000000 		.word	.LANCHOR5
 215              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 216              		.section	.init_array,"aw",%init_array
 217              		.align	2
 218 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 219              		.global	Serial1
 220              		.global	Serial
 221              		.global	tx_buffer2
 222              		.global	rx_buffer2
 223              		.global	tx_buffer1
 224              		.global	rx_buffer1
 225              		.global	g_APinDescription
 226              		.section	.bss.Serial,"aw",%nobits
 227              		.align	2
 228              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccAe85vk.s 			page 5


 229              		.type	Serial, %object
 230              		.size	Serial, 44
 231              	Serial:
 232 0000 00000000 		.space	44
 232      00000000 
 232      00000000 
 232      00000000 
 232      00000000 
 233              		.section	.bss.Serial1,"aw",%nobits
 234              		.align	2
 235              		.set	.LANCHOR1,. + 0
 236              		.type	Serial1, %object
 237              		.size	Serial1, 44
 238              	Serial1:
 239 0000 00000000 		.space	44
 239      00000000 
 239      00000000 
 239      00000000 
 239      00000000 
 240              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 241              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 242              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 243              	_ZL28cpu_irq_prev_interrupt_state:
 244 0000 00       		.space	1
 245              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 246              		.align	2
 247              		.type	_ZL32cpu_irq_critical_section_counter, %object
 248              		.size	_ZL32cpu_irq_critical_section_counter, 4
 249              	_ZL32cpu_irq_critical_section_counter:
 250 0000 00000000 		.space	4
 251              		.section	.bss.rx_buffer1,"aw",%nobits
 252              		.align	2
 253              		.set	.LANCHOR2,. + 0
 254              		.type	rx_buffer1, %object
 255              		.size	rx_buffer1, 520
 256              	rx_buffer1:
 257 0000 00000000 		.space	520
 257      00000000 
 257      00000000 
 257      00000000 
 257      00000000 
 258              		.section	.bss.rx_buffer2,"aw",%nobits
 259              		.align	2
 260              		.set	.LANCHOR4,. + 0
 261              		.type	rx_buffer2, %object
 262              		.size	rx_buffer2, 520
 263              	rx_buffer2:
 264 0000 00000000 		.space	520
 264      00000000 
 264      00000000 
 264      00000000 
 264      00000000 
 265              		.section	.bss.tx_buffer1,"aw",%nobits
 266              		.align	2
 267              		.set	.LANCHOR3,. + 0
 268              		.type	tx_buffer1, %object
 269              		.size	tx_buffer1, 520
ARM GAS  /tmp/ccAe85vk.s 			page 6


 270              	tx_buffer1:
 271 0000 00000000 		.space	520
 271      00000000 
 271      00000000 
 271      00000000 
 271      00000000 
 272              		.section	.bss.tx_buffer2,"aw",%nobits
 273              		.align	2
 274              		.set	.LANCHOR5,. + 0
 275              		.type	tx_buffer2, %object
 276              		.size	tx_buffer2, 520
 277              	tx_buffer2:
 278 0000 00000000 		.space	520
 278      00000000 
 278      00000000 
 278      00000000 
 278      00000000 
 279              		.section	.rodata.g_APinDescription,"a",%progbits
 280              		.align	2
 281              		.type	g_APinDescription, %object
 282              		.size	g_APinDescription, 3108
 283              	g_APinDescription:
 284 0000 000E0E40 		.word	1074662912
 285 0004 01000000 		.word	1
 286 0008 09000000 		.word	9
 287 000c 00000010 		.word	268435456
 288 0010 00000000 		.word	0
 289 0014 14000000 		.word	20
 290 0018 FF       		.byte	-1
 291 0019 FF       		.byte	-1
 292 001a 00       		.byte	0
 293 001b 00       		.space	1
 294 001c 000E0E40 		.word	1074662912
 295 0020 02000000 		.word	2
 296 0024 09000000 		.word	9
 297 0028 00000030 		.word	805306368
 298 002c 00000000 		.word	0
 299 0030 04000000 		.word	4
 300 0034 FF       		.byte	-1
 301 0035 FF       		.byte	-1
 302 0036 FF       		.byte	-1
 303 0037 00       		.space	1
 304 0038 000E0E40 		.word	1074662912
 305 003c 04000000 		.word	4
 306 0040 09000000 		.word	9
 307 0044 00000030 		.word	805306368
 308 0048 00000000 		.word	0
 309 004c 04000000 		.word	4
 310 0050 FF       		.byte	-1
 311 0051 FF       		.byte	-1
 312 0052 FF       		.byte	-1
 313 0053 00       		.space	1
 314 0054 000E0E40 		.word	1074662912
 315 0058 08000000 		.word	8
 316 005c 09000000 		.word	9
 317 0060 00000008 		.word	134217728
 318 0064 00000000 		.word	0
ARM GAS  /tmp/ccAe85vk.s 			page 7


 319 0068 04000000 		.word	4
 320 006c FF       		.byte	-1
 321 006d FF       		.byte	-1
 322 006e FF       		.byte	-1
 323 006f 00       		.space	1
 324 0070 000E0E40 		.word	1074662912
 325 0074 10000000 		.word	16
 326 0078 09000000 		.word	9
 327 007c 00000008 		.word	134217728
 328 0080 00000000 		.word	0
 329 0084 04000000 		.word	4
 330 0088 FF       		.byte	-1
 331 0089 FF       		.byte	-1
 332 008a FF       		.byte	-1
 333 008b 00       		.space	1
 334 008c 000E0E40 		.word	1074662912
 335 0090 20000000 		.word	32
 336 0094 09000000 		.word	9
 337 0098 00000018 		.word	402653184
 338 009c 01000000 		.word	1
 339 00a0 04000000 		.word	4
 340 00a4 FF       		.byte	-1
 341 00a5 FF       		.byte	-1
 342 00a6 FF       		.byte	-1
 343 00a7 00       		.space	1
 344 00a8 000E0E40 		.word	1074662912
 345 00ac 40000000 		.word	64
 346 00b0 09000000 		.word	9
 347 00b4 00000018 		.word	402653184
 348 00b8 00000000 		.word	0
 349 00bc 04000000 		.word	4
 350 00c0 FF       		.byte	-1
 351 00c1 FF       		.byte	-1
 352 00c2 FF       		.byte	-1
 353 00c3 00       		.space	1
 354 00c4 000E0E40 		.word	1074662912
 355 00c8 80000000 		.word	128
 356 00cc 09000000 		.word	9
 357 00d0 00000030 		.word	805306368
 358 00d4 00000000 		.word	0
 359 00d8 04000000 		.word	4
 360 00dc FF       		.byte	-1
 361 00dd FF       		.byte	-1
 362 00de FF       		.byte	-1
 363 00df 00       		.space	1
 364 00e0 000E0E40 		.word	1074662912
 365 00e4 00010000 		.word	256
 366 00e8 09000000 		.word	9
 367 00ec 00000030 		.word	805306368
 368 00f0 00000000 		.word	0
 369 00f4 04000000 		.word	4
 370 00f8 FF       		.byte	-1
 371 00f9 FF       		.byte	-1
 372 00fa FF       		.byte	-1
 373 00fb 00       		.space	1
 374 00fc 000E0E40 		.word	1074662912
 375 0100 00020000 		.word	512
ARM GAS  /tmp/ccAe85vk.s 			page 8


 376 0104 09000000 		.word	9
 377 0108 00000008 		.word	134217728
 378 010c 01000000 		.word	1
 379 0110 04000000 		.word	4
 380 0114 FF       		.byte	-1
 381 0115 FF       		.byte	-1
 382 0116 FF       		.byte	-1
 383 0117 00       		.space	1
 384 0118 000E0E40 		.word	1074662912
 385 011c 00040000 		.word	1024
 386 0120 09000000 		.word	9
 387 0124 00000008 		.word	134217728
 388 0128 00000000 		.word	0
 389 012c 04000000 		.word	4
 390 0130 FF       		.byte	-1
 391 0131 FF       		.byte	-1
 392 0132 FF       		.byte	-1
 393 0133 00       		.space	1
 394 0134 000E0E40 		.word	1074662912
 395 0138 00080000 		.word	2048
 396 013c 09000000 		.word	9
 397 0140 00000008 		.word	134217728
 398 0144 00000000 		.word	0
 399 0148 04000000 		.word	4
 400 014c FF       		.byte	-1
 401 014d FF       		.byte	-1
 402 014e FF       		.byte	-1
 403 014f 00       		.space	1
 404 0150 000E0E40 		.word	1074662912
 405 0154 00100000 		.word	4096
 406 0158 09000000 		.word	9
 407 015c 00000008 		.word	134217728
 408 0160 00000000 		.word	0
 409 0164 04000000 		.word	4
 410 0168 FF       		.byte	-1
 411 0169 FF       		.byte	-1
 412 016a FF       		.byte	-1
 413 016b 00       		.space	1
 414 016c 000E0E40 		.word	1074662912
 415 0170 00200000 		.word	8192
 416 0174 09000000 		.word	9
 417 0178 00000008 		.word	134217728
 418 017c 00000000 		.word	0
 419 0180 04000000 		.word	4
 420 0184 FF       		.byte	-1
 421 0185 FF       		.byte	-1
 422 0186 FF       		.byte	-1
 423 0187 00       		.space	1
 424 0188 000E0E40 		.word	1074662912
 425 018c 00400000 		.word	16384
 426 0190 09000000 		.word	9
 427 0194 00000008 		.word	134217728
 428 0198 00000000 		.word	0
 429 019c 04000000 		.word	4
 430 01a0 FF       		.byte	-1
 431 01a1 FF       		.byte	-1
 432 01a2 FF       		.byte	-1
ARM GAS  /tmp/ccAe85vk.s 			page 9


 433 01a3 00       		.space	1
 434 01a4 000E0E40 		.word	1074662912
 435 01a8 00800000 		.word	32768
 436 01ac 09000000 		.word	9
 437 01b0 00000010 		.word	268435456
 438 01b4 00000000 		.word	0
 439 01b8 14000000 		.word	20
 440 01bc FF       		.byte	-1
 441 01bd FF       		.byte	-1
 442 01be 02       		.byte	2
 443 01bf 00       		.space	1
 444 01c0 000E0E40 		.word	1074662912
 445 01c4 00000100 		.word	65536
 446 01c8 09000000 		.word	9
 447 01cc 00000018 		.word	402653184
 448 01d0 00000000 		.word	0
 449 01d4 0C000000 		.word	12
 450 01d8 FF       		.byte	-1
 451 01d9 02       		.byte	2
 452 01da FF       		.byte	-1
 453 01db 00       		.space	1
 454 01dc 000E0E40 		.word	1074662912
 455 01e0 00000200 		.word	131072
 456 01e4 09000000 		.word	9
 457 01e8 00000028 		.word	671088640
 458 01ec 00000000 		.word	0
 459 01f0 02000000 		.word	2
 460 01f4 00       		.byte	0
 461 01f5 FF       		.byte	-1
 462 01f6 FF       		.byte	-1
 463 01f7 00       		.space	1
 464 01f8 000E0E40 		.word	1074662912
 465 01fc 00000400 		.word	262144
 466 0200 09000000 		.word	9
 467 0204 00000028 		.word	671088640
 468 0208 00000000 		.word	0
 469 020c 02000000 		.word	2
 470 0210 01       		.byte	1
 471 0211 FF       		.byte	-1
 472 0212 FF       		.byte	-1
 473 0213 00       		.space	1
 474 0214 000E0E40 		.word	1074662912
 475 0218 00000800 		.word	524288
 476 021c 09000000 		.word	9
 477 0220 00000010 		.word	268435456
 478 0224 00000000 		.word	0
 479 0228 0C000000 		.word	12
 480 022c FF       		.byte	-1
 481 022d 00       		.byte	0
 482 022e FF       		.byte	-1
 483 022f 00       		.space	1
 484 0230 000E0E40 		.word	1074662912
 485 0234 00001000 		.word	1048576
 486 0238 09000000 		.word	9
 487 023c 00000010 		.word	268435456
 488 0240 00000000 		.word	0
 489 0244 0C000000 		.word	12
ARM GAS  /tmp/ccAe85vk.s 			page 10


 490 0248 FF       		.byte	-1
 491 0249 01       		.byte	1
 492 024a FF       		.byte	-1
 493 024b 00       		.space	1
 494 024c 000E0E40 		.word	1074662912
 495 0250 00002000 		.word	2097152
 496 0254 09000000 		.word	9
 497 0258 00000008 		.word	134217728
 498 025c 01000000 		.word	1
 499 0260 04000000 		.word	4
 500 0264 FF       		.byte	-1
 501 0265 FF       		.byte	-1
 502 0266 FF       		.byte	-1
 503 0267 00       		.space	1
 504 0268 000E0E40 		.word	1074662912
 505 026c 00004000 		.word	4194304
 506 0270 09000000 		.word	9
 507 0274 00000008 		.word	134217728
 508 0278 00000000 		.word	0
 509 027c 04000000 		.word	4
 510 0280 FF       		.byte	-1
 511 0281 FF       		.byte	-1
 512 0282 FF       		.byte	-1
 513 0283 00       		.space	1
 514 0284 000E0E40 		.word	1074662912
 515 0288 00008000 		.word	8388608
 516 028c 09000000 		.word	9
 517 0290 00000008 		.word	134217728
 518 0294 00000000 		.word	0
 519 0298 04000000 		.word	4
 520 029c FF       		.byte	-1
 521 029d FF       		.byte	-1
 522 029e FF       		.byte	-1
 523 029f 00       		.space	1
 524 02a0 000E0E40 		.word	1074662912
 525 02a4 00000001 		.word	16777216
 526 02a8 09000000 		.word	9
 527 02ac 00000030 		.word	805306368
 528 02b0 00000000 		.word	0
 529 02b4 04000000 		.word	4
 530 02b8 FF       		.byte	-1
 531 02b9 FF       		.byte	-1
 532 02ba FF       		.byte	-1
 533 02bb 00       		.space	1
 534 02bc 000E0E40 		.word	1074662912
 535 02c0 00000002 		.word	33554432
 536 02c4 09000000 		.word	9
 537 02c8 00000030 		.word	805306368
 538 02cc 00000000 		.word	0
 539 02d0 04000000 		.word	4
 540 02d4 FF       		.byte	-1
 541 02d5 FF       		.byte	-1
 542 02d6 FF       		.byte	-1
 543 02d7 00       		.space	1
 544 02d8 00100E40 		.word	1074663424
 545 02dc 01000000 		.word	1
 546 02e0 0A000000 		.word	10
ARM GAS  /tmp/ccAe85vk.s 			page 11


 547 02e4 00000018 		.word	402653184
 548 02e8 01000000 		.word	1
 549 02ec 04000000 		.word	4
 550 02f0 FF       		.byte	-1
 551 02f1 FF       		.byte	-1
 552 02f2 FF       		.byte	-1
 553 02f3 00       		.space	1
 554 02f4 00100E40 		.word	1074663424
 555 02f8 02000000 		.word	2
 556 02fc 0A000000 		.word	10
 557 0300 00000018 		.word	402653184
 558 0304 00000000 		.word	0
 559 0308 04000000 		.word	4
 560 030c FF       		.byte	-1
 561 030d FF       		.byte	-1
 562 030e FF       		.byte	-1
 563 030f 00       		.space	1
 564 0310 00100E40 		.word	1074663424
 565 0314 04000000 		.word	4
 566 0318 0A000000 		.word	10
 567 031c 00000030 		.word	805306368
 568 0320 00000000 		.word	0
 569 0324 04000000 		.word	4
 570 0328 FF       		.byte	-1
 571 0329 FF       		.byte	-1
 572 032a FF       		.byte	-1
 573 032b 00       		.space	1
 574 032c 00100E40 		.word	1074663424
 575 0330 08000000 		.word	8
 576 0334 0A000000 		.word	10
 577 0338 00000028 		.word	671088640
 578 033c 00000000 		.word	0
 579 0340 02000000 		.word	2
 580 0344 11       		.byte	17
 581 0345 FF       		.byte	-1
 582 0346 FF       		.byte	-1
 583 0347 00       		.space	1
 584 0348 00100E40 		.word	1074663424
 585 034c 00200000 		.word	8192
 586 0350 0A000000 		.word	10
 587 0354 00000018 		.word	402653184
 588 0358 00000000 		.word	0
 589 035c 04000000 		.word	4
 590 0360 FF       		.byte	-1
 591 0361 FF       		.byte	-1
 592 0362 FF       		.byte	-1
 593 0363 00       		.space	1
 594 0364 00100E40 		.word	1074663424
 595 0368 00400000 		.word	16384
 596 036c 0A000000 		.word	10
 597 0370 00000030 		.word	805306368
 598 0374 00000000 		.word	0
 599 0378 20000000 		.word	32
 600 037c 21       		.byte	33
 601 037d FF       		.byte	-1
 602 037e FF       		.byte	-1
 603 037f 00       		.space	1
ARM GAS  /tmp/ccAe85vk.s 			page 12


 604 0380 00120E40 		.word	1074663936
 605 0384 01000000 		.word	1
 606 0388 0B000000 		.word	11
 607 038c 00000030 		.word	805306368
 608 0390 00000000 		.word	0
 609 0394 04000000 		.word	4
 610 0398 0E       		.byte	14
 611 0399 FF       		.byte	-1
 612 039a FF       		.byte	-1
 613 039b 00       		.space	1
 614 039c 00120E40 		.word	1074663936
 615 03a0 02000000 		.word	2
 616 03a4 0B000000 		.word	11
 617 03a8 00000028 		.word	671088640
 618 03ac 00000000 		.word	0
 619 03b0 02000000 		.word	2
 620 03b4 14       		.byte	20
 621 03b5 FF       		.byte	-1
 622 03b6 FF       		.byte	-1
 623 03b7 00       		.space	1
 624 03b8 00120E40 		.word	1074663936
 625 03bc 04000000 		.word	4
 626 03c0 0B000000 		.word	11
 627 03c4 00000030 		.word	805306368
 628 03c8 00000000 		.word	0
 629 03cc 04000000 		.word	4
 630 03d0 FF       		.byte	-1
 631 03d1 FF       		.byte	-1
 632 03d2 FF       		.byte	-1
 633 03d3 00       		.space	1
 634 03d4 00120E40 		.word	1074663936
 635 03d8 08000000 		.word	8
 636 03dc 0B000000 		.word	11
 637 03e0 00000010 		.word	268435456
 638 03e4 00000000 		.word	0
 639 03e8 0C000000 		.word	12
 640 03ec FF       		.byte	-1
 641 03ed 03       		.byte	3
 642 03ee FF       		.byte	-1
 643 03ef 00       		.space	1
 644 03f0 00120E40 		.word	1074663936
 645 03f4 10000000 		.word	16
 646 03f8 0B000000 		.word	11
 647 03fc 00000028 		.word	671088640
 648 0400 00000000 		.word	0
 649 0404 02000000 		.word	2
 650 0408 17       		.byte	23
 651 0409 FF       		.byte	-1
 652 040a FF       		.byte	-1
 653 040b 00       		.space	1
 654 040c 00120E40 		.word	1074663936
 655 0410 20000000 		.word	32
 656 0414 0B000000 		.word	11
 657 0418 00000010 		.word	268435456
 658 041c 00000000 		.word	0
 659 0420 14000000 		.word	20
 660 0424 FF       		.byte	-1
ARM GAS  /tmp/ccAe85vk.s 			page 13


 661 0425 FF       		.byte	-1
 662 0426 0C       		.byte	12
 663 0427 00       		.space	1
 664 0428 00120E40 		.word	1074663936
 665 042c 40000000 		.word	64
 666 0430 0B000000 		.word	11
 667 0434 00000030 		.word	805306368
 668 0438 00000000 		.word	0
 669 043c 04000000 		.word	4
 670 0440 FF       		.byte	-1
 671 0441 FF       		.byte	-1
 672 0442 FF       		.byte	-1
 673 0443 00       		.space	1
 674 0444 00120E40 		.word	1074663936
 675 0448 80000000 		.word	128
 676 044c 0B000000 		.word	11
 677 0450 00000030 		.word	805306368
 678 0454 00000000 		.word	0
 679 0458 04000000 		.word	4
 680 045c FF       		.byte	-1
 681 045d FF       		.byte	-1
 682 045e FF       		.byte	-1
 683 045f 00       		.space	1
 684 0460 00120E40 		.word	1074663936
 685 0464 00010000 		.word	256
 686 0468 0B000000 		.word	11
 687 046c 00000010 		.word	268435456
 688 0470 00000000 		.word	0
 689 0474 14000000 		.word	20
 690 0478 FF       		.byte	-1
 691 0479 FF       		.byte	-1
 692 047a 0E       		.byte	14
 693 047b 00       		.space	1
 694 047c 00120E40 		.word	1074663936
 695 0480 00020000 		.word	512
 696 0484 0B000000 		.word	11
 697 0488 00000030 		.word	805306368
 698 048c 00000000 		.word	0
 699 0490 04000000 		.word	4
 700 0494 FF       		.byte	-1
 701 0495 FF       		.byte	-1
 702 0496 FF       		.byte	-1
 703 0497 00       		.space	1
 704 0498 00120E40 		.word	1074663936
 705 049c 00040000 		.word	1024
 706 04a0 0B000000 		.word	11
 707 04a4 00000030 		.word	805306368
 708 04a8 00000000 		.word	0
 709 04ac 04000000 		.word	4
 710 04b0 FF       		.byte	-1
 711 04b1 FF       		.byte	-1
 712 04b2 FF       		.byte	-1
 713 04b3 00       		.space	1
 714 04b4 00120E40 		.word	1074663936
 715 04b8 00080000 		.word	2048
 716 04bc 0B000000 		.word	11
 717 04c0 00000010 		.word	268435456
ARM GAS  /tmp/ccAe85vk.s 			page 14


 718 04c4 00000000 		.word	0
 719 04c8 14000000 		.word	20
 720 04cc FF       		.byte	-1
 721 04cd FF       		.byte	-1
 722 04ce 10       		.byte	16
 723 04cf 00       		.space	1
 724 04d0 00120E40 		.word	1074663936
 725 04d4 00100000 		.word	4096
 726 04d8 0B000000 		.word	11
 727 04dc 00000028 		.word	671088640
 728 04e0 00000000 		.word	0
 729 04e4 02000000 		.word	2
 730 04e8 08       		.byte	8
 731 04e9 FF       		.byte	-1
 732 04ea FF       		.byte	-1
 733 04eb 00       		.space	1
 734 04ec 00120E40 		.word	1074663936
 735 04f0 00200000 		.word	8192
 736 04f4 0B000000 		.word	11
 737 04f8 00000028 		.word	671088640
 738 04fc 00000000 		.word	0
 739 0500 02000000 		.word	2
 740 0504 06       		.byte	6
 741 0505 FF       		.byte	-1
 742 0506 FF       		.byte	-1
 743 0507 00       		.space	1
 744 0508 00120E40 		.word	1074663936
 745 050c 00400000 		.word	16384
 746 0510 0B000000 		.word	11
 747 0514 00000030 		.word	805306368
 748 0518 00000000 		.word	0
 749 051c 04000000 		.word	4
 750 0520 FF       		.byte	-1
 751 0521 FF       		.byte	-1
 752 0522 FF       		.byte	-1
 753 0523 00       		.space	1
 754 0524 00120E40 		.word	1074663936
 755 0528 00800000 		.word	32768
 756 052c 0B000000 		.word	11
 757 0530 00000028 		.word	671088640
 758 0534 00000000 		.word	0
 759 0538 02000000 		.word	2
 760 053c 07       		.byte	7
 761 053d FF       		.byte	-1
 762 053e FF       		.byte	-1
 763 053f 00       		.space	1
 764 0540 00120E40 		.word	1074663936
 765 0544 00000100 		.word	65536
 766 0548 0B000000 		.word	11
 767 054c 00000028 		.word	671088640
 768 0550 00000000 		.word	0
 769 0554 04000000 		.word	4
 770 0558 FF       		.byte	-1
 771 0559 FF       		.byte	-1
 772 055a FF       		.byte	-1
 773 055b 00       		.space	1
 774 055c 00120E40 		.word	1074663936
ARM GAS  /tmp/ccAe85vk.s 			page 15


 775 0560 00000200 		.word	131072
 776 0564 0B000000 		.word	11
 777 0568 00000030 		.word	805306368
 778 056c 00000000 		.word	0
 779 0570 04000000 		.word	4
 780 0574 FF       		.byte	-1
 781 0575 FF       		.byte	-1
 782 0576 FF       		.byte	-1
 783 0577 00       		.space	1
 784 0578 00120E40 		.word	1074663936
 785 057c 00000400 		.word	262144
 786 0580 0B000000 		.word	11
 787 0584 00000030 		.word	805306368
 788 0588 00000000 		.word	0
 789 058c 04000000 		.word	4
 790 0590 FF       		.byte	-1
 791 0591 FF       		.byte	-1
 792 0592 FF       		.byte	-1
 793 0593 00       		.space	1
 794 0594 00120E40 		.word	1074663936
 795 0598 00000800 		.word	524288
 796 059c 0B000000 		.word	11
 797 05a0 00000030 		.word	805306368
 798 05a4 00000000 		.word	0
 799 05a8 04000000 		.word	4
 800 05ac FF       		.byte	-1
 801 05ad FF       		.byte	-1
 802 05ae FF       		.byte	-1
 803 05af 00       		.space	1
 804 05b0 00120E40 		.word	1074663936
 805 05b4 00001000 		.word	1048576
 806 05b8 0B000000 		.word	11
 807 05bc 00000030 		.word	805306368
 808 05c0 00000000 		.word	0
 809 05c4 04000000 		.word	4
 810 05c8 FF       		.byte	-1
 811 05c9 FF       		.byte	-1
 812 05ca FF       		.byte	-1
 813 05cb 00       		.space	1
 814 05cc 00120E40 		.word	1074663936
 815 05d0 00002000 		.word	2097152
 816 05d4 0B000000 		.word	11
 817 05d8 00000028 		.word	671088640
 818 05dc 00000000 		.word	0
 819 05e0 04000000 		.word	4
 820 05e4 FF       		.byte	-1
 821 05e5 FF       		.byte	-1
 822 05e6 FF       		.byte	-1
 823 05e7 00       		.space	1
 824 05e8 00120E40 		.word	1074663936
 825 05ec 00004000 		.word	4194304
 826 05f0 0B000000 		.word	11
 827 05f4 00000028 		.word	671088640
 828 05f8 00000000 		.word	0
 829 05fc 04000000 		.word	4
 830 0600 FF       		.byte	-1
 831 0601 FF       		.byte	-1
ARM GAS  /tmp/ccAe85vk.s 			page 16


 832 0602 FF       		.byte	-1
 833 0603 00       		.space	1
 834 0604 00120E40 		.word	1074663936
 835 0608 00008000 		.word	8388608
 836 060c 0B000000 		.word	11
 837 0610 00000010 		.word	268435456
 838 0614 00000000 		.word	0
 839 0618 14000000 		.word	20
 840 061c FF       		.byte	-1
 841 061d FF       		.byte	-1
 842 061e 06       		.byte	6
 843 061f 00       		.space	1
 844 0620 00120E40 		.word	1074663936
 845 0624 00000001 		.word	16777216
 846 0628 0B000000 		.word	11
 847 062c 00000028 		.word	671088640
 848 0630 00000000 		.word	0
 849 0634 04000000 		.word	4
 850 0638 FF       		.byte	-1
 851 0639 FF       		.byte	-1
 852 063a FF       		.byte	-1
 853 063b 00       		.space	1
 854 063c 00120E40 		.word	1074663936
 855 0640 00000002 		.word	33554432
 856 0644 0B000000 		.word	11
 857 0648 00000030 		.word	805306368
 858 064c 00000000 		.word	0
 859 0650 04000000 		.word	4
 860 0654 FF       		.byte	-1
 861 0655 FF       		.byte	-1
 862 0656 FF       		.byte	-1
 863 0657 00       		.space	1
 864 0658 00120E40 		.word	1074663936
 865 065c 00000004 		.word	67108864
 866 0660 0B000000 		.word	11
 867 0664 00000010 		.word	268435456
 868 0668 00000000 		.word	0
 869 066c 14000000 		.word	20
 870 0670 FF       		.byte	-1
 871 0671 FF       		.byte	-1
 872 0672 08       		.byte	8
 873 0673 00       		.space	1
 874 0674 00120E40 		.word	1074663936
 875 0678 00000008 		.word	134217728
 876 067c 0B000000 		.word	11
 877 0680 00000028 		.word	671088640
 878 0684 00000000 		.word	0
 879 0688 02000000 		.word	2
 880 068c 0D       		.byte	13
 881 068d FF       		.byte	-1
 882 068e FF       		.byte	-1
 883 068f 00       		.space	1
 884 0690 00120E40 		.word	1074663936
 885 0694 00000010 		.word	268435456
 886 0698 0B000000 		.word	11
 887 069c 00000030 		.word	805306368
 888 06a0 00000000 		.word	0
ARM GAS  /tmp/ccAe85vk.s 			page 17


 889 06a4 04000000 		.word	4
 890 06a8 FF       		.byte	-1
 891 06a9 FF       		.byte	-1
 892 06aa FF       		.byte	-1
 893 06ab 00       		.space	1
 894 06ac 00120E40 		.word	1074663936
 895 06b0 00000020 		.word	536870912
 896 06b4 0B000000 		.word	11
 897 06b8 00000028 		.word	671088640
 898 06bc 00000000 		.word	0
 899 06c0 02000000 		.word	2
 900 06c4 09       		.byte	9
 901 06c5 FF       		.byte	-1
 902 06c6 FF       		.byte	-1
 903 06c7 00       		.space	1
 904 06c8 00120E40 		.word	1074663936
 905 06cc 00000040 		.word	1073741824
 906 06d0 0B000000 		.word	11
 907 06d4 00000028 		.word	671088640
 908 06d8 00000000 		.word	0
 909 06dc 02000000 		.word	2
 910 06e0 0A       		.byte	10
 911 06e1 FF       		.byte	-1
 912 06e2 FF       		.byte	-1
 913 06e3 00       		.space	1
 914 06e4 00120E40 		.word	1074663936
 915 06e8 00000080 		.word	-2147483648
 916 06ec 0B000000 		.word	11
 917 06f0 00000028 		.word	671088640
 918 06f4 00000000 		.word	0
 919 06f8 02000000 		.word	2
 920 06fc 0B       		.byte	11
 921 06fd FF       		.byte	-1
 922 06fe FF       		.byte	-1
 923 06ff 00       		.space	1
 924 0700 00140E40 		.word	1074664448
 925 0704 01000000 		.word	1
 926 0708 0C000000 		.word	12
 927 070c 00000030 		.word	805306368
 928 0710 00000000 		.word	0
 929 0714 04000000 		.word	4
 930 0718 FF       		.byte	-1
 931 0719 FF       		.byte	-1
 932 071a FF       		.byte	-1
 933 071b 00       		.space	1
 934 071c 00140E40 		.word	1074664448
 935 0720 02000000 		.word	2
 936 0724 0C000000 		.word	12
 937 0728 00000030 		.word	805306368
 938 072c 00000000 		.word	0
 939 0730 04000000 		.word	4
 940 0734 FF       		.byte	-1
 941 0735 FF       		.byte	-1
 942 0736 FF       		.byte	-1
 943 0737 00       		.space	1
 944 0738 00140E40 		.word	1074664448
 945 073c 04000000 		.word	4
ARM GAS  /tmp/ccAe85vk.s 			page 18


 946 0740 0C000000 		.word	12
 947 0744 00000030 		.word	805306368
 948 0748 00000000 		.word	0
 949 074c 04000000 		.word	4
 950 0750 FF       		.byte	-1
 951 0751 FF       		.byte	-1
 952 0752 FF       		.byte	-1
 953 0753 00       		.space	1
 954 0754 00140E40 		.word	1074664448
 955 0758 08000000 		.word	8
 956 075c 0C000000 		.word	12
 957 0760 00000030 		.word	805306368
 958 0764 00000000 		.word	0
 959 0768 04000000 		.word	4
 960 076c FF       		.byte	-1
 961 076d FF       		.byte	-1
 962 076e FF       		.byte	-1
 963 076f 00       		.space	1
 964 0770 00140E40 		.word	1074664448
 965 0774 10000000 		.word	16
 966 0778 0C000000 		.word	12
 967 077c 00000030 		.word	805306368
 968 0780 00000000 		.word	0
 969 0784 04000000 		.word	4
 970 0788 FF       		.byte	-1
 971 0789 FF       		.byte	-1
 972 078a FF       		.byte	-1
 973 078b 00       		.space	1
 974 078c 00140E40 		.word	1074664448
 975 0790 20000000 		.word	32
 976 0794 0C000000 		.word	12
 977 0798 00000030 		.word	805306368
 978 079c 00000000 		.word	0
 979 07a0 04000000 		.word	4
 980 07a4 FF       		.byte	-1
 981 07a5 FF       		.byte	-1
 982 07a6 FF       		.byte	-1
 983 07a7 00       		.space	1
 984 07a8 00140E40 		.word	1074664448
 985 07ac 40000000 		.word	64
 986 07b0 0C000000 		.word	12
 987 07b4 00000030 		.word	805306368
 988 07b8 00000000 		.word	0
 989 07bc 04000000 		.word	4
 990 07c0 FF       		.byte	-1
 991 07c1 FF       		.byte	-1
 992 07c2 FF       		.byte	-1
 993 07c3 00       		.space	1
 994 07c4 00140E40 		.word	1074664448
 995 07c8 80000000 		.word	128
 996 07cc 0C000000 		.word	12
 997 07d0 00000030 		.word	805306368
 998 07d4 00000000 		.word	0
 999 07d8 04000000 		.word	4
 1000 07dc FF       		.byte	-1
 1001 07dd FF       		.byte	-1
 1002 07de FF       		.byte	-1
ARM GAS  /tmp/ccAe85vk.s 			page 19


 1003 07df 00       		.space	1
 1004 07e0 00140E40 		.word	1074664448
 1005 07e4 00010000 		.word	256
 1006 07e8 0C000000 		.word	12
 1007 07ec 00000030 		.word	805306368
 1008 07f0 00000000 		.word	0
 1009 07f4 04000000 		.word	4
 1010 07f8 FF       		.byte	-1
 1011 07f9 FF       		.byte	-1
 1012 07fa FF       		.byte	-1
 1013 07fb 00       		.space	1
 1014 07fc 00140E40 		.word	1074664448
 1015 0800 00020000 		.word	512
 1016 0804 0C000000 		.word	12
 1017 0808 00000030 		.word	805306368
 1018 080c 00000000 		.word	0
 1019 0810 04000000 		.word	4
 1020 0814 FF       		.byte	-1
 1021 0815 FF       		.byte	-1
 1022 0816 FF       		.byte	-1
 1023 0817 00       		.space	1
 1024 0818 00140E40 		.word	1074664448
 1025 081c 00040000 		.word	1024
 1026 0820 0C000000 		.word	12
 1027 0824 00000028 		.word	671088640
 1028 0828 00000000 		.word	0
 1029 082c 04000000 		.word	4
 1030 0830 FF       		.byte	-1
 1031 0831 FF       		.byte	-1
 1032 0832 FF       		.byte	-1
 1033 0833 00       		.space	1
 1034 0834 00140E40 		.word	1074664448
 1035 0838 00080000 		.word	2048
 1036 083c 0C000000 		.word	12
 1037 0840 00000030 		.word	805306368
 1038 0844 00000000 		.word	0
 1039 0848 04000000 		.word	4
 1040 084c FF       		.byte	-1
 1041 084d FF       		.byte	-1
 1042 084e FF       		.byte	-1
 1043 084f 00       		.space	1
 1044 0850 00140E40 		.word	1074664448
 1045 0854 00100000 		.word	4096
 1046 0858 0C000000 		.word	12
 1047 085c 00000030 		.word	805306368
 1048 0860 00000000 		.word	0
 1049 0864 04000000 		.word	4
 1050 0868 FF       		.byte	-1
 1051 0869 FF       		.byte	-1
 1052 086a FF       		.byte	-1
 1053 086b 00       		.space	1
 1054 086c 00140E40 		.word	1074664448
 1055 0870 00200000 		.word	8192
 1056 0874 0C000000 		.word	12
 1057 0878 00000030 		.word	805306368
 1058 087c 00000000 		.word	0
 1059 0880 04000000 		.word	4
ARM GAS  /tmp/ccAe85vk.s 			page 20


 1060 0884 FF       		.byte	-1
 1061 0885 FF       		.byte	-1
 1062 0886 FF       		.byte	-1
 1063 0887 00       		.space	1
 1064 0888 00140E40 		.word	1074664448
 1065 088c 00400000 		.word	16384
 1066 0890 0C000000 		.word	12
 1067 0894 00000030 		.word	805306368
 1068 0898 00000000 		.word	0
 1069 089c 04000000 		.word	4
 1070 08a0 FF       		.byte	-1
 1071 08a1 FF       		.byte	-1
 1072 08a2 FF       		.byte	-1
 1073 08a3 00       		.space	1
 1074 08a4 00140E40 		.word	1074664448
 1075 08a8 00800000 		.word	32768
 1076 08ac 0C000000 		.word	12
 1077 08b0 00000030 		.word	805306368
 1078 08b4 00000000 		.word	0
 1079 08b8 04000000 		.word	4
 1080 08bc FF       		.byte	-1
 1081 08bd FF       		.byte	-1
 1082 08be FF       		.byte	-1
 1083 08bf 00       		.space	1
 1084 08c0 00140E40 		.word	1074664448
 1085 08c4 00000100 		.word	65536
 1086 08c8 0C000000 		.word	12
 1087 08cc 00000030 		.word	805306368
 1088 08d0 00000000 		.word	0
 1089 08d4 04000000 		.word	4
 1090 08d8 FF       		.byte	-1
 1091 08d9 FF       		.byte	-1
 1092 08da FF       		.byte	-1
 1093 08db 00       		.space	1
 1094 08dc 00140E40 		.word	1074664448
 1095 08e0 00000200 		.word	131072
 1096 08e4 0C000000 		.word	12
 1097 08e8 00000030 		.word	805306368
 1098 08ec 00000000 		.word	0
 1099 08f0 04000000 		.word	4
 1100 08f4 FF       		.byte	-1
 1101 08f5 FF       		.byte	-1
 1102 08f6 FF       		.byte	-1
 1103 08f7 00       		.space	1
 1104 08f8 00140E40 		.word	1074664448
 1105 08fc 00000400 		.word	262144
 1106 0900 0C000000 		.word	12
 1107 0904 00000030 		.word	805306368
 1108 0908 00000000 		.word	0
 1109 090c 04000000 		.word	4
 1110 0910 FF       		.byte	-1
 1111 0911 FF       		.byte	-1
 1112 0912 FF       		.byte	-1
 1113 0913 00       		.space	1
 1114 0914 00140E40 		.word	1074664448
 1115 0918 00000800 		.word	524288
 1116 091c 0C000000 		.word	12
ARM GAS  /tmp/ccAe85vk.s 			page 21


 1117 0920 00000030 		.word	805306368
 1118 0924 00000000 		.word	0
 1119 0928 04000000 		.word	4
 1120 092c FF       		.byte	-1
 1121 092d FF       		.byte	-1
 1122 092e FF       		.byte	-1
 1123 092f 00       		.space	1
 1124 0930 00140E40 		.word	1074664448
 1125 0934 00001000 		.word	1048576
 1126 0938 0C000000 		.word	12
 1127 093c 00000030 		.word	805306368
 1128 0940 00000000 		.word	0
 1129 0944 04000000 		.word	4
 1130 0948 FF       		.byte	-1
 1131 0949 FF       		.byte	-1
 1132 094a FF       		.byte	-1
 1133 094b 00       		.space	1
 1134 094c 00140E40 		.word	1074664448
 1135 0950 00002000 		.word	2097152
 1136 0954 0C000000 		.word	12
 1137 0958 00000030 		.word	805306368
 1138 095c 00000000 		.word	0
 1139 0960 04000000 		.word	4
 1140 0964 FF       		.byte	-1
 1141 0965 FF       		.byte	-1
 1142 0966 FF       		.byte	-1
 1143 0967 00       		.space	1
 1144 0968 00140E40 		.word	1074664448
 1145 096c 00004000 		.word	4194304
 1146 0970 0C000000 		.word	12
 1147 0974 00000030 		.word	805306368
 1148 0978 00000000 		.word	0
 1149 097c 04000000 		.word	4
 1150 0980 FF       		.byte	-1
 1151 0981 FF       		.byte	-1
 1152 0982 FF       		.byte	-1
 1153 0983 00       		.space	1
 1154 0984 00140E40 		.word	1074664448
 1155 0988 00008000 		.word	8388608
 1156 098c 0C000000 		.word	12
 1157 0990 00000030 		.word	805306368
 1158 0994 00000000 		.word	0
 1159 0998 04000000 		.word	4
 1160 099c FF       		.byte	-1
 1161 099d FF       		.byte	-1
 1162 099e FF       		.byte	-1
 1163 099f 00       		.space	1
 1164 09a0 00140E40 		.word	1074664448
 1165 09a4 00000001 		.word	16777216
 1166 09a8 0C000000 		.word	12
 1167 09ac 00000030 		.word	805306368
 1168 09b0 00000000 		.word	0
 1169 09b4 04000000 		.word	4
 1170 09b8 FF       		.byte	-1
 1171 09b9 FF       		.byte	-1
 1172 09ba FF       		.byte	-1
 1173 09bb 00       		.space	1
ARM GAS  /tmp/ccAe85vk.s 			page 22


 1174 09bc 00140E40 		.word	1074664448
 1175 09c0 00000002 		.word	33554432
 1176 09c4 0C000000 		.word	12
 1177 09c8 00000030 		.word	805306368
 1178 09cc 00000000 		.word	0
 1179 09d0 04000000 		.word	4
 1180 09d4 FF       		.byte	-1
 1181 09d5 FF       		.byte	-1
 1182 09d6 FF       		.byte	-1
 1183 09d7 00       		.space	1
 1184 09d8 00140E40 		.word	1074664448
 1185 09dc 00000004 		.word	67108864
 1186 09e0 0C000000 		.word	12
 1187 09e4 00000030 		.word	805306368
 1188 09e8 00000000 		.word	0
 1189 09ec 04000000 		.word	4
 1190 09f0 FF       		.byte	-1
 1191 09f1 FF       		.byte	-1
 1192 09f2 FF       		.byte	-1
 1193 09f3 00       		.space	1
 1194 09f4 00140E40 		.word	1074664448
 1195 09f8 00000008 		.word	134217728
 1196 09fc 0C000000 		.word	12
 1197 0a00 00000030 		.word	805306368
 1198 0a04 00000000 		.word	0
 1199 0a08 04000000 		.word	4
 1200 0a0c FF       		.byte	-1
 1201 0a0d FF       		.byte	-1
 1202 0a0e FF       		.byte	-1
 1203 0a0f 00       		.space	1
 1204 0a10 00140E40 		.word	1074664448
 1205 0a14 00000010 		.word	268435456
 1206 0a18 0C000000 		.word	12
 1207 0a1c 00000030 		.word	805306368
 1208 0a20 00000000 		.word	0
 1209 0a24 04000000 		.word	4
 1210 0a28 FF       		.byte	-1
 1211 0a29 FF       		.byte	-1
 1212 0a2a FF       		.byte	-1
 1213 0a2b 00       		.space	1
 1214 0a2c 00140E40 		.word	1074664448
 1215 0a30 00000020 		.word	536870912
 1216 0a34 0C000000 		.word	12
 1217 0a38 00000028 		.word	671088640
 1218 0a3c 00000000 		.word	0
 1219 0a40 04000000 		.word	4
 1220 0a44 FF       		.byte	-1
 1221 0a45 FF       		.byte	-1
 1222 0a46 FF       		.byte	-1
 1223 0a47 00       		.space	1
 1224 0a48 00140E40 		.word	1074664448
 1225 0a4c 00000040 		.word	1073741824
 1226 0a50 0C000000 		.word	12
 1227 0a54 00000030 		.word	805306368
 1228 0a58 00000000 		.word	0
 1229 0a5c 04000000 		.word	4
 1230 0a60 FF       		.byte	-1
ARM GAS  /tmp/ccAe85vk.s 			page 23


 1231 0a61 FF       		.byte	-1
 1232 0a62 FF       		.byte	-1
 1233 0a63 00       		.space	1
 1234 0a64 00140E40 		.word	1074664448
 1235 0a68 00000080 		.word	-2147483648
 1236 0a6c 0C000000 		.word	12
 1237 0a70 00000028 		.word	671088640
 1238 0a74 00000000 		.word	0
 1239 0a78 04000000 		.word	4
 1240 0a7c FF       		.byte	-1
 1241 0a7d FF       		.byte	-1
 1242 0a7e FF       		.byte	-1
 1243 0a7f 00       		.space	1
 1244 0a80 00160E40 		.word	1074664960
 1245 0a84 01000000 		.word	1
 1246 0a88 0D000000 		.word	13
 1247 0a8c 00000028 		.word	671088640
 1248 0a90 00000000 		.word	0
 1249 0a94 04000000 		.word	4
 1250 0a98 FF       		.byte	-1
 1251 0a99 FF       		.byte	-1
 1252 0a9a FF       		.byte	-1
 1253 0a9b 00       		.space	1
 1254 0a9c 00160E40 		.word	1074664960
 1255 0aa0 02000000 		.word	2
 1256 0aa4 0D000000 		.word	13
 1257 0aa8 00000028 		.word	671088640
 1258 0aac 00000000 		.word	0
 1259 0ab0 04000000 		.word	4
 1260 0ab4 FF       		.byte	-1
 1261 0ab5 FF       		.byte	-1
 1262 0ab6 FF       		.byte	-1
 1263 0ab7 00       		.space	1
 1264 0ab8 00160E40 		.word	1074664960
 1265 0abc 04000000 		.word	4
 1266 0ac0 0D000000 		.word	13
 1267 0ac4 00000028 		.word	671088640
 1268 0ac8 00000000 		.word	0
 1269 0acc 04000000 		.word	4
 1270 0ad0 FF       		.byte	-1
 1271 0ad1 FF       		.byte	-1
 1272 0ad2 FF       		.byte	-1
 1273 0ad3 00       		.space	1
 1274 0ad4 00160E40 		.word	1074664960
 1275 0ad8 08000000 		.word	8
 1276 0adc 0D000000 		.word	13
 1277 0ae0 00000028 		.word	671088640
 1278 0ae4 00000000 		.word	0
 1279 0ae8 04000000 		.word	4
 1280 0aec FF       		.byte	-1
 1281 0aed FF       		.byte	-1
 1282 0aee FF       		.byte	-1
 1283 0aef 00       		.space	1
 1284 0af0 00160E40 		.word	1074664960
 1285 0af4 10000000 		.word	16
 1286 0af8 0D000000 		.word	13
 1287 0afc 00000030 		.word	805306368
ARM GAS  /tmp/ccAe85vk.s 			page 24


 1288 0b00 00000000 		.word	0
 1289 0b04 04000000 		.word	4
 1290 0b08 FF       		.byte	-1
 1291 0b09 FF       		.byte	-1
 1292 0b0a FF       		.byte	-1
 1293 0b0b 00       		.space	1
 1294 0b0c 00160E40 		.word	1074664960
 1295 0b10 20000000 		.word	32
 1296 0b14 0D000000 		.word	13
 1297 0b18 00000030 		.word	805306368
 1298 0b1c 00000000 		.word	0
 1299 0b20 04000000 		.word	4
 1300 0b24 FF       		.byte	-1
 1301 0b25 FF       		.byte	-1
 1302 0b26 FF       		.byte	-1
 1303 0b27 00       		.space	1
 1304 0b28 00100E40 		.word	1074663424
 1305 0b2c 40000000 		.word	64
 1306 0b30 0A000000 		.word	10
 1307 0b34 00000028 		.word	671088640
 1308 0b38 00000000 		.word	0
 1309 0b3c 04000000 		.word	4
 1310 0b40 FF       		.byte	-1
 1311 0b41 FF       		.byte	-1
 1312 0b42 FF       		.byte	-1
 1313 0b43 00       		.space	1
 1314 0b44 00100E40 		.word	1074663424
 1315 0b48 80000000 		.word	128
 1316 0b4c 0A000000 		.word	10
 1317 0b50 00000028 		.word	671088640
 1318 0b54 00000000 		.word	0
 1319 0b58 04000000 		.word	4
 1320 0b5c FF       		.byte	-1
 1321 0b5d FF       		.byte	-1
 1322 0b5e FF       		.byte	-1
 1323 0b5f 00       		.space	1
 1324 0b60 00100E40 		.word	1074663424
 1325 0b64 10000000 		.word	16
 1326 0b68 0A000000 		.word	10
 1327 0b6c 00000028 		.word	671088640
 1328 0b70 00000000 		.word	0
 1329 0b74 04000000 		.word	4
 1330 0b78 FF       		.byte	-1
 1331 0b79 FF       		.byte	-1
 1332 0b7a FF       		.byte	-1
 1333 0b7b 00       		.space	1
 1334 0b7c 00100E40 		.word	1074663424
 1335 0b80 20000000 		.word	32
 1336 0b84 0A000000 		.word	10
 1337 0b88 00000028 		.word	671088640
 1338 0b8c 00000000 		.word	0
 1339 0b90 04000000 		.word	4
 1340 0b94 FF       		.byte	-1
 1341 0b95 FF       		.byte	-1
 1342 0b96 FF       		.byte	-1
 1343 0b97 00       		.space	1
 1344 0b98 000E0E40 		.word	1074662912
ARM GAS  /tmp/ccAe85vk.s 			page 25


 1345 0b9c 00000020 		.word	536870912
 1346 0ba0 09000000 		.word	9
 1347 0ba4 00000018 		.word	402653184
 1348 0ba8 00000000 		.word	0
 1349 0bac 04000000 		.word	4
 1350 0bb0 FF       		.byte	-1
 1351 0bb1 FF       		.byte	-1
 1352 0bb2 FF       		.byte	-1
 1353 0bb3 00       		.space	1
 1354 0bb4 000E0E40 		.word	1074662912
 1355 0bb8 000000DC 		.word	-603979776
 1356 0bbc 09000000 		.word	9
 1357 0bc0 00000018 		.word	402653184
 1358 0bc4 01000000 		.word	1
 1359 0bc8 04000000 		.word	4
 1360 0bcc FF       		.byte	-1
 1361 0bcd FF       		.byte	-1
 1362 0bce FF       		.byte	-1
 1363 0bcf 00       		.space	1
 1364 0bd0 000E0E40 		.word	1074662912
 1365 0bd4 18000000 		.word	24
 1366 0bd8 09000000 		.word	9
 1367 0bdc 00000008 		.word	134217728
 1368 0be0 00000000 		.word	0
 1369 0be4 05000000 		.word	5
 1370 0be8 FF       		.byte	-1
 1371 0be9 FF       		.byte	-1
 1372 0bea FF       		.byte	-1
 1373 0beb 00       		.space	1
 1374 0bec 000E0E40 		.word	1074662912
 1375 0bf0 00060000 		.word	1536
 1376 0bf4 09000000 		.word	9
 1377 0bf8 00000008 		.word	134217728
 1378 0bfc 00000000 		.word	0
 1379 0c00 05000000 		.word	5
 1380 0c04 FF       		.byte	-1
 1381 0c05 FF       		.byte	-1
 1382 0c06 FF       		.byte	-1
 1383 0c07 00       		.space	1
 1384 0c08 000E0E40 		.word	1074662912
 1385 0c0c 60000000 		.word	96
 1386 0c10 09000000 		.word	9
 1387 0c14 00000018 		.word	402653184
 1388 0c18 00000000 		.word	0
 1389 0c1c 05000000 		.word	5
 1390 0c20 FF       		.byte	-1
 1391 0c21 FF       		.byte	-1
 1392 0c22 FF       		.byte	-1
 1393 0c23 00       		.space	1
 1394              		.hidden	__dso_handle
 1395              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
