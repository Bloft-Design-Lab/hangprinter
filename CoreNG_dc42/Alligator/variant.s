ARM GAS  /tmp/ccblaTkB.s 			page 1


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
  29 0002 00BF     		.section	.text._ZN10USARTClassD2Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  30              		.align	1
  31              		.p2align 2,,3
  32              		.weak	_ZN10USARTClassD2Ev
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	_ZN10USARTClassD2Ev, %function
  38              	_ZN10USARTClassD2Ev:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 7047     		bx	lr
  43              		.size	_ZN10USARTClassD2Ev, .-_ZN10USARTClassD2Ev
  44              		.weak	_ZN10USARTClassD1Ev
  45              		.thumb_set _ZN10USARTClassD1Ev,_ZN10USARTClassD2Ev
  46 0002 00BF     		.section	.text.UART_Handler,"ax",%progbits
  47              		.align	1
  48              		.p2align 2,,3
  49              		.global	UART_Handler
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu softvfp
  54              		.type	UART_Handler, %function
  55              	UART_Handler:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccblaTkB.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0148     		ldr	r0, .L4
  60 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  61              	.L5:
  62 0006 00BF     		.align	2
  63              	.L4:
  64 0008 00000000 		.word	.LANCHOR0
  65              		.size	UART_Handler, .-UART_Handler
  66              		.section	.text.USART0_Handler,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	USART0_Handler
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu softvfp
  74              		.type	USART0_Handler, %function
  75              	USART0_Handler:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0148     		ldr	r0, .L7
  80 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  81              	.L8:
  82 0006 00BF     		.align	2
  83              	.L7:
  84 0008 00000000 		.word	.LANCHOR1
  85              		.size	USART0_Handler, .-USART0_Handler
  86              		.section	.text.USART1_Handler,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	USART1_Handler
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu softvfp
  94              		.type	USART1_Handler, %function
  95              	USART1_Handler:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 0148     		ldr	r0, .L10
 100 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
 101              	.L11:
 102 0006 00BF     		.align	2
 103              	.L10:
 104 0008 00000000 		.word	.LANCHOR2
 105              		.size	USART1_Handler, .-USART1_Handler
 106              		.section	.text._Z12ConfigurePinRK14PinDescription,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_Z12ConfigurePinRK14PinDescription
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	_Z12ConfigurePinRK14PinDescription, %function
ARM GAS  /tmp/ccblaTkB.s 			page 3


 115              	_Z12ConfigurePinRK14PinDescription:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 0369     		ldr	r3, [r0, #16]
 120 0002 4268     		ldr	r2, [r0, #4]
 121 0004 C168     		ldr	r1, [r0, #12]
 122 0006 0068     		ldr	r0, [r0]
 123 0008 FFF7FEBF 		b	pio_configure
 124              		.size	_Z12ConfigurePinRK14PinDescription, .-_Z12ConfigurePinRK14PinDescription
 125              		.section	.text.init,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	init
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu softvfp
 133              		.type	init, %function
 134              	init:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 10B5     		push	{r4, lr}
 138 0002 0023     		movs	r3, #0
 139 0004 4FF44072 		mov	r2, #768
 140 0008 4FF00061 		mov	r1, #134217728
 141 000c 124C     		ldr	r4, .L15
 142 000e 1348     		ldr	r0, .L15+4
 143 0010 FFF7FEFF 		bl	pio_configure
 144 0014 0121     		movs	r1, #1
 145 0016 0020     		movs	r0, #0
 146 0018 FFF7FEFF 		bl	setPullup
 147 001c 0023     		movs	r3, #0
 148 001e 4FF44062 		mov	r2, #3072
 149 0022 4FF00061 		mov	r1, #134217728
 150 0026 2046     		mov	r0, r4
 151 0028 FFF7FEFF 		bl	pio_configure
 152 002c FFF7FEFF 		bl	_Z12AnalogInInitv
 153 0030 FFF7FEFF 		bl	_Z13AnalogOutInitv
 154 0034 0023     		movs	r3, #0
 155 0036 40F2FF32 		movw	r2, #1023
 156 003a 4FF00061 		mov	r1, #134217728
 157 003e 2046     		mov	r0, r4
 158 0040 FFF7FEFF 		bl	pio_configure
 159 0044 2920     		movs	r0, #41
 160 0046 FFF7FEFF 		bl	pmc_enable_periph_clk
 161 004a 0121     		movs	r1, #1
 162 004c 044B     		ldr	r3, .L15+8
 163 004e 054A     		ldr	r2, .L15+12
 164 0050 5961     		str	r1, [r3, #20]
 165 0052 1A60     		str	r2, [r3]
 166 0054 10BD     		pop	{r4, pc}
 167              	.L16:
 168 0056 00BF     		.align	2
 169              	.L15:
 170 0058 00100E40 		.word	1074663424
 171 005c 000E0E40 		.word	1074662912
ARM GAS  /tmp/ccblaTkB.s 			page 4


 172 0060 00C00B40 		.word	1074511872
 173 0064 01474E52 		.word	1380861697
 174              		.size	init, .-init
 175              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 176              		.align	1
 177              		.p2align 2,,3
 178              		.weak	_ZN9UARTClassD0Ev
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	_ZN9UARTClassD0Ev, %function
 184              	_ZN9UARTClassD0Ev:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187 0000 10B5     		push	{r4, lr}
 188 0002 0446     		mov	r4, r0
 189 0004 2421     		movs	r1, #36
 190 0006 FFF7FEFF 		bl	_ZdlPvj
 191 000a 2046     		mov	r0, r4
 192 000c 10BD     		pop	{r4, pc}
 193              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 194 000e 00BF     		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
 195              		.align	1
 196              		.p2align 2,,3
 197              		.weak	_ZN10USARTClassD0Ev
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu softvfp
 202              		.type	_ZN10USARTClassD0Ev, %function
 203              	_ZN10USARTClassD0Ev:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 10B5     		push	{r4, lr}
 207 0002 0446     		mov	r4, r0
 208 0004 2821     		movs	r1, #40
 209 0006 FFF7FEFF 		bl	_ZdlPvj
 210 000a 2046     		mov	r0, r4
 211 000c 10BD     		pop	{r4, pc}
 212              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
 213 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 214              		.align	1
 215              		.p2align 2,,3
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu softvfp
 220              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 221              	_GLOBAL__sub_I_g_APinDescription:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 225 0004 264F     		ldr	r7, .L23
 226 0006 274E     		ldr	r6, .L23+4
 227 0008 82B0     		sub	sp, sp, #8
 228 000a 3846     		mov	r0, r7
ARM GAS  /tmp/ccblaTkB.s 			page 5


 229 000c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 230 0010 3046     		mov	r0, r6
 231 0012 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 232 0016 0823     		movs	r3, #8
 233 0018 234D     		ldr	r5, .L23+8
 234 001a 244C     		ldr	r4, .L23+12
 235 001c 1A46     		mov	r2, r3
 236 001e 0097     		str	r7, [sp]
 237 0020 0196     		str	r6, [sp, #4]
 238 0022 DFF8ACA0 		ldr	r10, .L23+48
 239 0026 2846     		mov	r0, r5
 240 0028 2149     		ldr	r1, .L23+16
 241 002a FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 242 002e 214F     		ldr	r7, .L23+20
 243 0030 2246     		mov	r2, r4
 244 0032 2149     		ldr	r1, .L23+24
 245 0034 2846     		mov	r0, r5
 246 0036 FFF7FEFF 		bl	__aeabi_atexit
 247 003a DFF89890 		ldr	r9, .L23+52
 248 003e 5046     		mov	r0, r10
 249 0040 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 250 0044 DFF89080 		ldr	r8, .L23+56
 251 0048 3846     		mov	r0, r7
 252 004a FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 253 004e 4846     		mov	r0, r9
 254 0050 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 255 0054 4046     		mov	r0, r8
 256 0056 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 257 005a 1123     		movs	r3, #17
 258 005c 174D     		ldr	r5, .L23+28
 259 005e 184E     		ldr	r6, .L23+32
 260 0060 1A46     		mov	r2, r3
 261 0062 CDF800A0 		str	r10, [sp]
 262 0066 CDF80490 		str	r9, [sp, #4]
 263 006a 2846     		mov	r0, r5
 264 006c 1549     		ldr	r1, .L23+36
 265 006e FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 266 0072 2246     		mov	r2, r4
 267 0074 3146     		mov	r1, r6
 268 0076 2846     		mov	r0, r5
 269 0078 FFF7FEFF 		bl	__aeabi_atexit
 270 007c 1223     		movs	r3, #18
 271 007e 124D     		ldr	r5, .L23+40
 272 0080 1A46     		mov	r2, r3
 273 0082 8DE88001 		stm	sp, {r7, r8}
 274 0086 2846     		mov	r0, r5
 275 0088 1049     		ldr	r1, .L23+44
 276 008a FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 277 008e 2246     		mov	r2, r4
 278 0090 3146     		mov	r1, r6
 279 0092 2846     		mov	r0, r5
 280 0094 02B0     		add	sp, sp, #8
 281              		@ sp needed
 282 0096 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 283 009a FFF7FEBF 		b	__aeabi_atexit
 284              	.L24:
 285 009e 00BF     		.align	2
ARM GAS  /tmp/ccblaTkB.s 			page 6


 286              	.L23:
 287 00a0 00000000 		.word	.LANCHOR3
 288 00a4 00000000 		.word	.LANCHOR4
 289 00a8 00000000 		.word	.LANCHOR0
 290 00ac 00000000 		.word	__dso_handle
 291 00b0 00080E40 		.word	1074661376
 292 00b4 00000000 		.word	.LANCHOR6
 293 00b8 00000000 		.word	_ZN9UARTClassD1Ev
 294 00bc 00000000 		.word	.LANCHOR1
 295 00c0 00000000 		.word	_ZN10USARTClassD1Ev
 296 00c4 00800940 		.word	1074364416
 297 00c8 00000000 		.word	.LANCHOR2
 298 00cc 00C00940 		.word	1074380800
 299 00d0 00000000 		.word	.LANCHOR5
 300 00d4 00000000 		.word	.LANCHOR7
 301 00d8 00000000 		.word	.LANCHOR8
 302              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 303              		.section	.init_array,"aw",%init_array
 304              		.align	2
 305 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 306              		.global	Serial2
 307              		.global	Serial1
 308              		.global	tx_buffer3
 309              		.global	tx_buffer2
 310              		.global	rx_buffer3
 311              		.global	rx_buffer2
 312              		.global	Serial
 313              		.global	tx_buffer1
 314              		.global	rx_buffer1
 315              		.global	g_APinDescription
 316              		.section	.bss.Serial,"aw",%nobits
 317              		.align	2
 318              		.set	.LANCHOR0,. + 0
 319              		.type	Serial, %object
 320              		.size	Serial, 36
 321              	Serial:
 322 0000 00000000 		.space	36
 322      00000000 
 322      00000000 
 322      00000000 
 322      00000000 
 323              		.section	.bss.Serial1,"aw",%nobits
 324              		.align	2
 325              		.set	.LANCHOR1,. + 0
 326              		.type	Serial1, %object
 327              		.size	Serial1, 40
 328              	Serial1:
 329 0000 00000000 		.space	40
 329      00000000 
 329      00000000 
 329      00000000 
 329      00000000 
 330              		.section	.bss.Serial2,"aw",%nobits
 331              		.align	2
 332              		.set	.LANCHOR2,. + 0
 333              		.type	Serial2, %object
 334              		.size	Serial2, 40
ARM GAS  /tmp/ccblaTkB.s 			page 7


 335              	Serial2:
 336 0000 00000000 		.space	40
 336      00000000 
 336      00000000 
 336      00000000 
 336      00000000 
 337              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 338              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 339              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 340              	_ZL28cpu_irq_prev_interrupt_state:
 341 0000 00       		.space	1
 342              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 343              		.align	2
 344              		.type	_ZL32cpu_irq_critical_section_counter, %object
 345              		.size	_ZL32cpu_irq_critical_section_counter, 4
 346              	_ZL32cpu_irq_critical_section_counter:
 347 0000 00000000 		.space	4
 348              		.section	.bss.rx_buffer1,"aw",%nobits
 349              		.align	2
 350              		.set	.LANCHOR3,. + 0
 351              		.type	rx_buffer1, %object
 352              		.size	rx_buffer1, 520
 353              	rx_buffer1:
 354 0000 00000000 		.space	520
 354      00000000 
 354      00000000 
 354      00000000 
 354      00000000 
 355              		.section	.bss.rx_buffer2,"aw",%nobits
 356              		.align	2
 357              		.set	.LANCHOR5,. + 0
 358              		.type	rx_buffer2, %object
 359              		.size	rx_buffer2, 520
 360              	rx_buffer2:
 361 0000 00000000 		.space	520
 361      00000000 
 361      00000000 
 361      00000000 
 361      00000000 
 362              		.section	.bss.rx_buffer3,"aw",%nobits
 363              		.align	2
 364              		.set	.LANCHOR6,. + 0
 365              		.type	rx_buffer3, %object
 366              		.size	rx_buffer3, 520
 367              	rx_buffer3:
 368 0000 00000000 		.space	520
 368      00000000 
 368      00000000 
 368      00000000 
 368      00000000 
 369              		.section	.bss.tx_buffer1,"aw",%nobits
 370              		.align	2
 371              		.set	.LANCHOR4,. + 0
 372              		.type	tx_buffer1, %object
 373              		.size	tx_buffer1, 520
 374              	tx_buffer1:
 375 0000 00000000 		.space	520
ARM GAS  /tmp/ccblaTkB.s 			page 8


 375      00000000 
 375      00000000 
 375      00000000 
 375      00000000 
 376              		.section	.bss.tx_buffer2,"aw",%nobits
 377              		.align	2
 378              		.set	.LANCHOR7,. + 0
 379              		.type	tx_buffer2, %object
 380              		.size	tx_buffer2, 520
 381              	tx_buffer2:
 382 0000 00000000 		.space	520
 382      00000000 
 382      00000000 
 382      00000000 
 382      00000000 
 383              		.section	.bss.tx_buffer3,"aw",%nobits
 384              		.align	2
 385              		.set	.LANCHOR8,. + 0
 386              		.type	tx_buffer3, %object
 387              		.size	tx_buffer3, 520
 388              	tx_buffer3:
 389 0000 00000000 		.space	520
 389      00000000 
 389      00000000 
 389      00000000 
 389      00000000 
 390              		.section	.rodata.g_APinDescription,"a",%progbits
 391              		.align	2
 392              		.type	g_APinDescription, %object
 393              		.size	g_APinDescription, 3164
 394              	g_APinDescription:
 395 0000 000E0E40 		.word	1074662912
 396 0004 00010000 		.word	256
 397 0008 0B000000 		.word	11
 398 000c 00000008 		.word	134217728
 399 0010 00000000 		.word	0
 400 0014 04000000 		.word	4
 401 0018 FF       		.byte	-1
 402 0019 FF       		.byte	-1
 403 001a FF       		.byte	-1
 404 001b 00       		.space	1
 405 001c 000E0E40 		.word	1074662912
 406 0020 00020000 		.word	512
 407 0024 0B000000 		.word	11
 408 0028 00000008 		.word	134217728
 409 002c 00000000 		.word	0
 410 0030 04000000 		.word	4
 411 0034 FF       		.byte	-1
 412 0035 FF       		.byte	-1
 413 0036 FF       		.byte	-1
 414 0037 00       		.space	1
 415 0038 00100E40 		.word	1074663424
 416 003c 00000002 		.word	33554432
 417 0040 0C000000 		.word	12
 418 0044 00000010 		.word	268435456
 419 0048 00000000 		.word	0
 420 004c 14000000 		.word	20
ARM GAS  /tmp/ccblaTkB.s 			page 9


 421 0050 FF       		.byte	-1
 422 0051 FF       		.byte	-1
 423 0052 00       		.byte	0
 424 0053 00       		.space	1
 425 0054 00120E40 		.word	1074663936
 426 0058 00000010 		.word	268435456
 427 005c 0D000000 		.word	13
 428 0060 00000010 		.word	268435456
 429 0064 00000000 		.word	0
 430 0068 14000000 		.word	20
 431 006c FF       		.byte	-1
 432 006d FF       		.byte	-1
 433 006e 0E       		.byte	14
 434 006f 00       		.space	1
 435 0070 00120E40 		.word	1074663936
 436 0074 00000004 		.word	67108864
 437 0078 0D000000 		.word	13
 438 007c 00000010 		.word	268435456
 439 0080 00000000 		.word	0
 440 0084 14000000 		.word	20
 441 0088 FF       		.byte	-1
 442 0089 FF       		.byte	-1
 443 008a 0D       		.byte	13
 444 008b 00       		.space	1
 445 008c 00120E40 		.word	1074663936
 446 0090 00000002 		.word	33554432
 447 0094 0D000000 		.word	13
 448 0098 00000010 		.word	268435456
 449 009c 00000000 		.word	0
 450 00a0 14000000 		.word	20
 451 00a4 FF       		.byte	-1
 452 00a5 FF       		.byte	-1
 453 00a6 0C       		.byte	12
 454 00a7 00       		.space	1
 455 00a8 00120E40 		.word	1074663936
 456 00ac 00000001 		.word	16777216
 457 00b0 0D000000 		.word	13
 458 00b4 00000010 		.word	268435456
 459 00b8 00000000 		.word	0
 460 00bc 0C000000 		.word	12
 461 00c0 FF       		.byte	-1
 462 00c1 07       		.byte	7
 463 00c2 FF       		.byte	-1
 464 00c3 00       		.space	1
 465 00c4 00120E40 		.word	1074663936
 466 00c8 00008000 		.word	8388608
 467 00cc 0D000000 		.word	13
 468 00d0 00000010 		.word	268435456
 469 00d4 00000000 		.word	0
 470 00d8 0C000000 		.word	12
 471 00dc FF       		.byte	-1
 472 00dd 06       		.byte	6
 473 00de FF       		.byte	-1
 474 00df 00       		.space	1
 475 00e0 00120E40 		.word	1074663936
 476 00e4 00004000 		.word	4194304
 477 00e8 0D000000 		.word	13
ARM GAS  /tmp/ccblaTkB.s 			page 10


 478 00ec 00000010 		.word	268435456
 479 00f0 00000000 		.word	0
 480 00f4 0C000000 		.word	12
 481 00f8 FF       		.byte	-1
 482 00f9 05       		.byte	5
 483 00fa FF       		.byte	-1
 484 00fb 00       		.space	1
 485 00fc 00120E40 		.word	1074663936
 486 0100 00002000 		.word	2097152
 487 0104 0D000000 		.word	13
 488 0108 00000010 		.word	268435456
 489 010c 00000000 		.word	0
 490 0110 0C000000 		.word	12
 491 0114 FF       		.byte	-1
 492 0115 04       		.byte	4
 493 0116 FF       		.byte	-1
 494 0117 00       		.space	1
 495 0118 00120E40 		.word	1074663936
 496 011c 00000020 		.word	536870912
 497 0120 0D000000 		.word	13
 498 0124 00000010 		.word	268435456
 499 0128 00000000 		.word	0
 500 012c 14000000 		.word	20
 501 0130 FF       		.byte	-1
 502 0131 FF       		.byte	-1
 503 0132 0F       		.byte	15
 504 0133 00       		.space	1
 505 0134 00140E40 		.word	1074664448
 506 0138 80000000 		.word	128
 507 013c 0E000000 		.word	14
 508 0140 00000010 		.word	268435456
 509 0144 00000000 		.word	0
 510 0148 14000000 		.word	20
 511 014c FF       		.byte	-1
 512 014d FF       		.byte	-1
 513 014e 10       		.byte	16
 514 014f 00       		.space	1
 515 0150 00140E40 		.word	1074664448
 516 0154 00010000 		.word	256
 517 0158 0E000000 		.word	14
 518 015c 00000010 		.word	268435456
 519 0160 00000000 		.word	0
 520 0164 14000000 		.word	20
 521 0168 FF       		.byte	-1
 522 0169 FF       		.byte	-1
 523 016a 11       		.byte	17
 524 016b 00       		.space	1
 525 016c 00100E40 		.word	1074663424
 526 0170 00000008 		.word	134217728
 527 0174 0C000000 		.word	12
 528 0178 00000010 		.word	268435456
 529 017c 00000000 		.word	0
 530 0180 14000000 		.word	20
 531 0184 FF       		.byte	-1
 532 0185 FF       		.byte	-1
 533 0186 01       		.byte	1
 534 0187 00       		.space	1
ARM GAS  /tmp/ccblaTkB.s 			page 11


 535 0188 00140E40 		.word	1074664448
 536 018c 10000000 		.word	16
 537 0190 0E000000 		.word	14
 538 0194 00000010 		.word	268435456
 539 0198 00000000 		.word	0
 540 019c 04000000 		.word	4
 541 01a0 FF       		.byte	-1
 542 01a1 FF       		.byte	-1
 543 01a2 FF       		.byte	-1
 544 01a3 00       		.space	1
 545 01a4 00140E40 		.word	1074664448
 546 01a8 20000000 		.word	32
 547 01ac 0E000000 		.word	14
 548 01b0 00000010 		.word	268435456
 549 01b4 00000000 		.word	0
 550 01b8 04000000 		.word	4
 551 01bc FF       		.byte	-1
 552 01bd FF       		.byte	-1
 553 01be FF       		.byte	-1
 554 01bf 00       		.space	1
 555 01c0 000E0E40 		.word	1074662912
 556 01c4 00200000 		.word	8192
 557 01c8 0B000000 		.word	11
 558 01cc 00000008 		.word	134217728
 559 01d0 00000000 		.word	0
 560 01d4 04000000 		.word	4
 561 01d8 FF       		.byte	-1
 562 01d9 FF       		.byte	-1
 563 01da FF       		.byte	-1
 564 01db 00       		.space	1
 565 01dc 000E0E40 		.word	1074662912
 566 01e0 00100000 		.word	4096
 567 01e4 0B000000 		.word	11
 568 01e8 00000008 		.word	134217728
 569 01ec 00000000 		.word	0
 570 01f0 04000000 		.word	4
 571 01f4 FF       		.byte	-1
 572 01f5 FF       		.byte	-1
 573 01f6 FF       		.byte	-1
 574 01f7 00       		.space	1
 575 01f8 000E0E40 		.word	1074662912
 576 01fc 00080000 		.word	2048
 577 0200 0B000000 		.word	11
 578 0204 00000008 		.word	134217728
 579 0208 00000000 		.word	0
 580 020c 04000000 		.word	4
 581 0210 FF       		.byte	-1
 582 0211 FF       		.byte	-1
 583 0212 FF       		.byte	-1
 584 0213 00       		.space	1
 585 0214 000E0E40 		.word	1074662912
 586 0218 00040000 		.word	1024
 587 021c 0B000000 		.word	11
 588 0220 00000008 		.word	134217728
 589 0224 00000000 		.word	0
 590 0228 04000000 		.word	4
 591 022c FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 12


 592 022d FF       		.byte	-1
 593 022e FF       		.byte	-1
 594 022f 00       		.space	1
 595 0230 00100E40 		.word	1074663424
 596 0234 00100000 		.word	4096
 597 0238 0C000000 		.word	12
 598 023c 00000008 		.word	134217728
 599 0240 00000000 		.word	0
 600 0244 04000000 		.word	4
 601 0248 FF       		.byte	-1
 602 0249 FF       		.byte	-1
 603 024a FF       		.byte	-1
 604 024b 00       		.space	1
 605 024c 00100E40 		.word	1074663424
 606 0250 00200000 		.word	8192
 607 0254 0C000000 		.word	12
 608 0258 00000008 		.word	134217728
 609 025c 00000000 		.word	0
 610 0260 04000000 		.word	4
 611 0264 FF       		.byte	-1
 612 0265 FF       		.byte	-1
 613 0266 FF       		.byte	-1
 614 0267 00       		.space	1
 615 0268 00100E40 		.word	1074663424
 616 026c 00000004 		.word	67108864
 617 0270 0C000000 		.word	12
 618 0274 00000030 		.word	805306368
 619 0278 00000000 		.word	0
 620 027c 04000000 		.word	4
 621 0280 FF       		.byte	-1
 622 0281 FF       		.byte	-1
 623 0282 FF       		.byte	-1
 624 0283 00       		.space	1
 625 0284 000E0E40 		.word	1074662912
 626 0288 00400000 		.word	16384
 627 028c 0B000000 		.word	11
 628 0290 00000030 		.word	805306368
 629 0294 00000000 		.word	0
 630 0298 04000000 		.word	4
 631 029c FF       		.byte	-1
 632 029d FF       		.byte	-1
 633 029e FF       		.byte	-1
 634 029f 00       		.space	1
 635 02a0 000E0E40 		.word	1074662912
 636 02a4 00800000 		.word	32768
 637 02a8 0B000000 		.word	11
 638 02ac 00000030 		.word	805306368
 639 02b0 00000000 		.word	0
 640 02b4 04000000 		.word	4
 641 02b8 FF       		.byte	-1
 642 02b9 FF       		.byte	-1
 643 02ba FF       		.byte	-1
 644 02bb 00       		.space	1
 645 02bc 00140E40 		.word	1074664448
 646 02c0 01000000 		.word	1
 647 02c4 0E000000 		.word	14
 648 02c8 00000030 		.word	805306368
ARM GAS  /tmp/ccblaTkB.s 			page 13


 649 02cc 00000000 		.word	0
 650 02d0 04000000 		.word	4
 651 02d4 FF       		.byte	-1
 652 02d5 FF       		.byte	-1
 653 02d6 FF       		.byte	-1
 654 02d7 00       		.space	1
 655 02d8 00140E40 		.word	1074664448
 656 02dc 02000000 		.word	2
 657 02e0 0E000000 		.word	14
 658 02e4 00000030 		.word	805306368
 659 02e8 00000000 		.word	0
 660 02ec 04000000 		.word	4
 661 02f0 FF       		.byte	-1
 662 02f1 FF       		.byte	-1
 663 02f2 FF       		.byte	-1
 664 02f3 00       		.space	1
 665 02f4 00140E40 		.word	1074664448
 666 02f8 04000000 		.word	4
 667 02fc 0E000000 		.word	14
 668 0300 00000030 		.word	805306368
 669 0304 00000000 		.word	0
 670 0308 04000000 		.word	4
 671 030c FF       		.byte	-1
 672 030d FF       		.byte	-1
 673 030e FF       		.byte	-1
 674 030f 00       		.space	1
 675 0310 00140E40 		.word	1074664448
 676 0314 08000000 		.word	8
 677 0318 0E000000 		.word	14
 678 031c 00000030 		.word	805306368
 679 0320 00000000 		.word	0
 680 0324 04000000 		.word	4
 681 0328 FF       		.byte	-1
 682 0329 FF       		.byte	-1
 683 032a FF       		.byte	-1
 684 032b 00       		.space	1
 685 032c 00140E40 		.word	1074664448
 686 0330 40000000 		.word	64
 687 0334 0E000000 		.word	14
 688 0338 00000030 		.word	805306368
 689 033c 00000000 		.word	0
 690 0340 04000000 		.word	4
 691 0344 FF       		.byte	-1
 692 0345 FF       		.byte	-1
 693 0346 FF       		.byte	-1
 694 0347 00       		.space	1
 695 0348 00140E40 		.word	1074664448
 696 034c 00020000 		.word	512
 697 0350 0E000000 		.word	14
 698 0354 00000030 		.word	805306368
 699 0358 00000000 		.word	0
 700 035c 04000000 		.word	4
 701 0360 FF       		.byte	-1
 702 0361 FF       		.byte	-1
 703 0362 FF       		.byte	-1
 704 0363 00       		.space	1
 705 0364 000E0E40 		.word	1074662912
ARM GAS  /tmp/ccblaTkB.s 			page 14


 706 0368 80000000 		.word	128
 707 036c 0B000000 		.word	11
 708 0370 00000030 		.word	805306368
 709 0374 00000000 		.word	0
 710 0378 04000000 		.word	4
 711 037c FF       		.byte	-1
 712 037d FF       		.byte	-1
 713 037e FF       		.byte	-1
 714 037f 00       		.space	1
 715 0380 00140E40 		.word	1074664448
 716 0384 00040000 		.word	1024
 717 0388 0E000000 		.word	14
 718 038c 00000030 		.word	805306368
 719 0390 00000000 		.word	0
 720 0394 04000000 		.word	4
 721 0398 FF       		.byte	-1
 722 0399 FF       		.byte	-1
 723 039a FF       		.byte	-1
 724 039b 00       		.space	1
 725 039c 00120E40 		.word	1074663936
 726 03a0 02000000 		.word	2
 727 03a4 0D000000 		.word	13
 728 03a8 00000030 		.word	805306368
 729 03ac 00000000 		.word	0
 730 03b0 04000000 		.word	4
 731 03b4 FF       		.byte	-1
 732 03b5 FF       		.byte	-1
 733 03b6 FF       		.byte	-1
 734 03b7 00       		.space	1
 735 03b8 00120E40 		.word	1074663936
 736 03bc 04000000 		.word	4
 737 03c0 0D000000 		.word	13
 738 03c4 00000030 		.word	805306368
 739 03c8 00000000 		.word	0
 740 03cc 04000000 		.word	4
 741 03d0 FF       		.byte	-1
 742 03d1 FF       		.byte	-1
 743 03d2 FF       		.byte	-1
 744 03d3 00       		.space	1
 745 03d4 00120E40 		.word	1074663936
 746 03d8 08000000 		.word	8
 747 03dc 0D000000 		.word	13
 748 03e0 00000030 		.word	805306368
 749 03e4 00000000 		.word	0
 750 03e8 04000000 		.word	4
 751 03ec FF       		.byte	-1
 752 03ed FF       		.byte	-1
 753 03ee FF       		.byte	-1
 754 03ef 00       		.space	1
 755 03f0 00120E40 		.word	1074663936
 756 03f4 10000000 		.word	16
 757 03f8 0D000000 		.word	13
 758 03fc 00000030 		.word	805306368
 759 0400 00000000 		.word	0
 760 0404 04000000 		.word	4
 761 0408 FF       		.byte	-1
 762 0409 FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 15


 763 040a FF       		.byte	-1
 764 040b 00       		.space	1
 765 040c 00120E40 		.word	1074663936
 766 0410 20000000 		.word	32
 767 0414 0D000000 		.word	13
 768 0418 00000030 		.word	805306368
 769 041c 00000000 		.word	0
 770 0420 04000000 		.word	4
 771 0424 FF       		.byte	-1
 772 0425 FF       		.byte	-1
 773 0426 FF       		.byte	-1
 774 0427 00       		.space	1
 775 0428 00120E40 		.word	1074663936
 776 042c 40000000 		.word	64
 777 0430 0D000000 		.word	13
 778 0434 00000030 		.word	805306368
 779 0438 00000000 		.word	0
 780 043c 04000000 		.word	4
 781 0440 FF       		.byte	-1
 782 0441 FF       		.byte	-1
 783 0442 FF       		.byte	-1
 784 0443 00       		.space	1
 785 0444 00120E40 		.word	1074663936
 786 0448 80000000 		.word	128
 787 044c 0D000000 		.word	13
 788 0450 00000030 		.word	805306368
 789 0454 00000000 		.word	0
 790 0458 04000000 		.word	4
 791 045c FF       		.byte	-1
 792 045d FF       		.byte	-1
 793 045e FF       		.byte	-1
 794 045f 00       		.space	1
 795 0460 00120E40 		.word	1074663936
 796 0464 00010000 		.word	256
 797 0468 0D000000 		.word	13
 798 046c 00000030 		.word	805306368
 799 0470 00000000 		.word	0
 800 0474 04000000 		.word	4
 801 0478 FF       		.byte	-1
 802 0479 FF       		.byte	-1
 803 047a FF       		.byte	-1
 804 047b 00       		.space	1
 805 047c 00120E40 		.word	1074663936
 806 0480 00020000 		.word	512
 807 0484 0D000000 		.word	13
 808 0488 00000030 		.word	805306368
 809 048c 00000000 		.word	0
 810 0490 04000000 		.word	4
 811 0494 FF       		.byte	-1
 812 0495 FF       		.byte	-1
 813 0496 FF       		.byte	-1
 814 0497 00       		.space	1
 815 0498 000E0E40 		.word	1074662912
 816 049c 00000800 		.word	524288
 817 04a0 0B000000 		.word	11
 818 04a4 00000030 		.word	805306368
 819 04a8 00000000 		.word	0
ARM GAS  /tmp/ccblaTkB.s 			page 16


 820 04ac 04000000 		.word	4
 821 04b0 FF       		.byte	-1
 822 04b1 FF       		.byte	-1
 823 04b2 FF       		.byte	-1
 824 04b3 00       		.space	1
 825 04b4 000E0E40 		.word	1074662912
 826 04b8 00001000 		.word	1048576
 827 04bc 0B000000 		.word	11
 828 04c0 00000030 		.word	805306368
 829 04c4 00000000 		.word	0
 830 04c8 04000000 		.word	4
 831 04cc FF       		.byte	-1
 832 04cd FF       		.byte	-1
 833 04ce FF       		.byte	-1
 834 04cf 00       		.space	1
 835 04d0 00120E40 		.word	1074663936
 836 04d4 00000800 		.word	524288
 837 04d8 0D000000 		.word	13
 838 04dc 00000030 		.word	805306368
 839 04e0 00000000 		.word	0
 840 04e4 04000000 		.word	4
 841 04e8 FF       		.byte	-1
 842 04e9 FF       		.byte	-1
 843 04ea FF       		.byte	-1
 844 04eb 00       		.space	1
 845 04ec 00120E40 		.word	1074663936
 846 04f0 00000400 		.word	262144
 847 04f4 0D000000 		.word	13
 848 04f8 00000030 		.word	805306368
 849 04fc 00000000 		.word	0
 850 0500 04000000 		.word	4
 851 0504 FF       		.byte	-1
 852 0505 FF       		.byte	-1
 853 0506 FF       		.byte	-1
 854 0507 00       		.space	1
 855 0508 00120E40 		.word	1074663936
 856 050c 00000200 		.word	131072
 857 0510 0D000000 		.word	13
 858 0514 00000030 		.word	805306368
 859 0518 00000000 		.word	0
 860 051c 04000000 		.word	4
 861 0520 FF       		.byte	-1
 862 0521 FF       		.byte	-1
 863 0522 FF       		.byte	-1
 864 0523 00       		.space	1
 865 0524 00120E40 		.word	1074663936
 866 0528 00000100 		.word	65536
 867 052c 0D000000 		.word	13
 868 0530 00000030 		.word	805306368
 869 0534 00000000 		.word	0
 870 0538 04000000 		.word	4
 871 053c FF       		.byte	-1
 872 053d FF       		.byte	-1
 873 053e FF       		.byte	-1
 874 053f 00       		.space	1
 875 0540 00120E40 		.word	1074663936
 876 0544 00800000 		.word	32768
ARM GAS  /tmp/ccblaTkB.s 			page 17


 877 0548 0D000000 		.word	13
 878 054c 00000030 		.word	805306368
 879 0550 00000000 		.word	0
 880 0554 04000000 		.word	4
 881 0558 FF       		.byte	-1
 882 0559 FF       		.byte	-1
 883 055a FF       		.byte	-1
 884 055b 00       		.space	1
 885 055c 00120E40 		.word	1074663936
 886 0560 00400000 		.word	16384
 887 0564 0D000000 		.word	13
 888 0568 00000030 		.word	805306368
 889 056c 00000000 		.word	0
 890 0570 04000000 		.word	4
 891 0574 FF       		.byte	-1
 892 0575 FF       		.byte	-1
 893 0576 FF       		.byte	-1
 894 0577 00       		.space	1
 895 0578 00120E40 		.word	1074663936
 896 057c 00200000 		.word	8192
 897 0580 0D000000 		.word	13
 898 0584 00000030 		.word	805306368
 899 0588 00000000 		.word	0
 900 058c 04000000 		.word	4
 901 0590 FF       		.byte	-1
 902 0591 FF       		.byte	-1
 903 0592 FF       		.byte	-1
 904 0593 00       		.space	1
 905 0594 00120E40 		.word	1074663936
 906 0598 00100000 		.word	4096
 907 059c 0D000000 		.word	13
 908 05a0 00000030 		.word	805306368
 909 05a4 00000000 		.word	0
 910 05a8 04000000 		.word	4
 911 05ac FF       		.byte	-1
 912 05ad FF       		.byte	-1
 913 05ae FF       		.byte	-1
 914 05af 00       		.space	1
 915 05b0 00100E40 		.word	1074663424
 916 05b4 00002000 		.word	2097152
 917 05b8 0C000000 		.word	12
 918 05bc 00000030 		.word	805306368
 919 05c0 00000000 		.word	0
 920 05c4 04000000 		.word	4
 921 05c8 FF       		.byte	-1
 922 05c9 FF       		.byte	-1
 923 05ca FF       		.byte	-1
 924 05cb 00       		.space	1
 925 05cc 00100E40 		.word	1074663424
 926 05d0 00400000 		.word	16384
 927 05d4 0C000000 		.word	12
 928 05d8 00000030 		.word	805306368
 929 05dc 00000000 		.word	0
 930 05e0 04000000 		.word	4
 931 05e4 FF       		.byte	-1
 932 05e5 FF       		.byte	-1
 933 05e6 FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 18


 934 05e7 00       		.space	1
 935 05e8 000E0E40 		.word	1074662912
 936 05ec 00000100 		.word	65536
 937 05f0 0B000000 		.word	11
 938 05f4 00000028 		.word	671088640
 939 05f8 00000000 		.word	0
 940 05fc 02000000 		.word	2
 941 0600 07       		.byte	7
 942 0601 FF       		.byte	-1
 943 0602 FF       		.byte	-1
 944 0603 00       		.space	1
 945 0604 000E0E40 		.word	1074662912
 946 0608 00000001 		.word	16777216
 947 060c 0B000000 		.word	11
 948 0610 00000028 		.word	671088640
 949 0614 00000000 		.word	0
 950 0618 02000000 		.word	2
 951 061c 06       		.byte	6
 952 061d FF       		.byte	-1
 953 061e FF       		.byte	-1
 954 061f 00       		.space	1
 955 0620 000E0E40 		.word	1074662912
 956 0624 00008000 		.word	8388608
 957 0628 0B000000 		.word	11
 958 062c 00000028 		.word	671088640
 959 0630 00000000 		.word	0
 960 0634 02000000 		.word	2
 961 0638 05       		.byte	5
 962 0639 FF       		.byte	-1
 963 063a FF       		.byte	-1
 964 063b 00       		.space	1
 965 063c 000E0E40 		.word	1074662912
 966 0640 00004000 		.word	4194304
 967 0644 0B000000 		.word	11
 968 0648 00000028 		.word	671088640
 969 064c 00000000 		.word	0
 970 0650 02000000 		.word	2
 971 0654 04       		.byte	4
 972 0655 FF       		.byte	-1
 973 0656 FF       		.byte	-1
 974 0657 00       		.space	1
 975 0658 000E0E40 		.word	1074662912
 976 065c 40000000 		.word	64
 977 0660 0B000000 		.word	11
 978 0664 00000028 		.word	671088640
 979 0668 00000000 		.word	0
 980 066c 02000000 		.word	2
 981 0670 03       		.byte	3
 982 0671 FF       		.byte	-1
 983 0672 05       		.byte	5
 984 0673 00       		.space	1
 985 0674 000E0E40 		.word	1074662912
 986 0678 10000000 		.word	16
 987 067c 0B000000 		.word	11
 988 0680 00000028 		.word	671088640
 989 0684 00000000 		.word	0
 990 0688 02000000 		.word	2
ARM GAS  /tmp/ccblaTkB.s 			page 19


 991 068c 02       		.byte	2
 992 068d FF       		.byte	-1
 993 068e FF       		.byte	-1
 994 068f 00       		.space	1
 995 0690 000E0E40 		.word	1074662912
 996 0694 08000000 		.word	8
 997 0698 0B000000 		.word	11
 998 069c 00000028 		.word	671088640
 999 06a0 00000000 		.word	0
 1000 06a4 02000000 		.word	2
 1001 06a8 01       		.byte	1
 1002 06a9 FF       		.byte	-1
 1003 06aa 03       		.byte	3
 1004 06ab 00       		.space	1
 1005 06ac 000E0E40 		.word	1074662912
 1006 06b0 04000000 		.word	4
 1007 06b4 0B000000 		.word	11
 1008 06b8 00000028 		.word	671088640
 1009 06bc 00000000 		.word	0
 1010 06c0 02000000 		.word	2
 1011 06c4 00       		.byte	0
 1012 06c5 FF       		.byte	-1
 1013 06c6 02       		.byte	2
 1014 06c7 00       		.space	1
 1015 06c8 00100E40 		.word	1074663424
 1016 06cc 00000200 		.word	131072
 1017 06d0 0C000000 		.word	12
 1018 06d4 00000028 		.word	671088640
 1019 06d8 00000000 		.word	0
 1020 06dc 02000000 		.word	2
 1021 06e0 0A       		.byte	10
 1022 06e1 FF       		.byte	-1
 1023 06e2 FF       		.byte	-1
 1024 06e3 00       		.space	1
 1025 06e4 00100E40 		.word	1074663424
 1026 06e8 00000400 		.word	262144
 1027 06ec 0C000000 		.word	12
 1028 06f0 00000028 		.word	671088640
 1029 06f4 00000000 		.word	0
 1030 06f8 02000000 		.word	2
 1031 06fc 0B       		.byte	11
 1032 06fd FF       		.byte	-1
 1033 06fe FF       		.byte	-1
 1034 06ff 00       		.space	1
 1035 0700 00100E40 		.word	1074663424
 1036 0704 00000800 		.word	524288
 1037 0708 0C000000 		.word	12
 1038 070c 00000028 		.word	671088640
 1039 0710 00000000 		.word	0
 1040 0714 02000000 		.word	2
 1041 0718 0C       		.byte	12
 1042 0719 FF       		.byte	-1
 1043 071a FF       		.byte	-1
 1044 071b 00       		.space	1
 1045 071c 00100E40 		.word	1074663424
 1046 0720 00001000 		.word	1048576
 1047 0724 0C000000 		.word	12
ARM GAS  /tmp/ccblaTkB.s 			page 20


 1048 0728 00000028 		.word	671088640
 1049 072c 00000000 		.word	0
 1050 0730 02000000 		.word	2
 1051 0734 0D       		.byte	13
 1052 0735 FF       		.byte	-1
 1053 0736 FF       		.byte	-1
 1054 0737 00       		.space	1
 1055 0738 00100E40 		.word	1074663424
 1056 073c 00800000 		.word	32768
 1057 0740 0C000000 		.word	12
 1058 0744 00000028 		.word	671088640
 1059 0748 00000000 		.word	0
 1060 074c 20000000 		.word	32
 1061 0750 20       		.byte	32
 1062 0751 FF       		.byte	-1
 1063 0752 FF       		.byte	-1
 1064 0753 00       		.space	1
 1065 0754 00100E40 		.word	1074663424
 1066 0758 00000100 		.word	65536
 1067 075c 0C000000 		.word	12
 1068 0760 00000028 		.word	671088640
 1069 0764 00000000 		.word	0
 1070 0768 20000000 		.word	32
 1071 076c 21       		.byte	33
 1072 076d FF       		.byte	-1
 1073 076e FF       		.byte	-1
 1074 076f 00       		.space	1
 1075 0770 000E0E40 		.word	1074662912
 1076 0774 02000000 		.word	2
 1077 0778 0B000000 		.word	11
 1078 077c 00000030 		.word	805306368
 1079 0780 00000000 		.word	0
 1080 0784 04000000 		.word	4
 1081 0788 FF       		.byte	-1
 1082 0789 FF       		.byte	-1
 1083 078a FF       		.byte	-1
 1084 078b 00       		.space	1
 1085 078c 000E0E40 		.word	1074662912
 1086 0790 01000000 		.word	1
 1087 0794 0B000000 		.word	11
 1088 0798 00000030 		.word	805306368
 1089 079c 00000000 		.word	0
 1090 07a0 04000000 		.word	4
 1091 07a4 FF       		.byte	-1
 1092 07a5 FF       		.byte	-1
 1093 07a6 FF       		.byte	-1
 1094 07a7 00       		.space	1
 1095 07a8 000E0E40 		.word	1074662912
 1096 07ac 00000200 		.word	131072
 1097 07b0 0B000000 		.word	11
 1098 07b4 00000008 		.word	134217728
 1099 07b8 00000000 		.word	0
 1100 07bc 04000000 		.word	4
 1101 07c0 FF       		.byte	-1
 1102 07c1 FF       		.byte	-1
 1103 07c2 FF       		.byte	-1
 1104 07c3 00       		.space	1
ARM GAS  /tmp/ccblaTkB.s 			page 21


 1105 07c4 000E0E40 		.word	1074662912
 1106 07c8 00000400 		.word	262144
 1107 07cc 0B000000 		.word	11
 1108 07d0 00000008 		.word	134217728
 1109 07d4 00000000 		.word	0
 1110 07d8 04000000 		.word	4
 1111 07dc FF       		.byte	-1
 1112 07dd FF       		.byte	-1
 1113 07de FF       		.byte	-1
 1114 07df 00       		.space	1
 1115 07e0 00120E40 		.word	1074663936
 1116 07e4 00000040 		.word	1073741824
 1117 07e8 0D000000 		.word	13
 1118 07ec 00000030 		.word	805306368
 1119 07f0 00000000 		.word	0
 1120 07f4 04000000 		.word	4
 1121 07f8 FF       		.byte	-1
 1122 07f9 FF       		.byte	-1
 1123 07fa FF       		.byte	-1
 1124 07fb 00       		.space	1
 1125 07fc 000E0E40 		.word	1074662912
 1126 0800 00002000 		.word	2097152
 1127 0804 0B000000 		.word	11
 1128 0808 00000030 		.word	805306368
 1129 080c 00000000 		.word	0
 1130 0810 04000000 		.word	4
 1131 0814 FF       		.byte	-1
 1132 0815 FF       		.byte	-1
 1133 0816 FF       		.byte	-1
 1134 0817 00       		.space	1
 1135 0818 000E0E40 		.word	1074662912
 1136 081c 00000002 		.word	33554432
 1137 0820 0B000000 		.word	11
 1138 0824 00000008 		.word	134217728
 1139 0828 00000000 		.word	0
 1140 082c 04000000 		.word	4
 1141 0830 FF       		.byte	-1
 1142 0831 FF       		.byte	-1
 1143 0832 FF       		.byte	-1
 1144 0833 00       		.space	1
 1145 0834 000E0E40 		.word	1074662912
 1146 0838 00000004 		.word	67108864
 1147 083c 0B000000 		.word	11
 1148 0840 00000008 		.word	134217728
 1149 0844 00000000 		.word	0
 1150 0848 04000000 		.word	4
 1151 084c FF       		.byte	-1
 1152 084d FF       		.byte	-1
 1153 084e FF       		.byte	-1
 1154 084f 00       		.space	1
 1155 0850 000E0E40 		.word	1074662912
 1156 0854 00000008 		.word	134217728
 1157 0858 0B000000 		.word	11
 1158 085c 00000008 		.word	134217728
 1159 0860 00000000 		.word	0
 1160 0864 04000000 		.word	4
 1161 0868 FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 22


 1162 0869 FF       		.byte	-1
 1163 086a FF       		.byte	-1
 1164 086b 00       		.space	1
 1165 086c 000E0E40 		.word	1074662912
 1166 0870 00000010 		.word	268435456
 1167 0874 0B000000 		.word	11
 1168 0878 00000008 		.word	134217728
 1169 087c 00000000 		.word	0
 1170 0880 04000000 		.word	4
 1171 0884 FF       		.byte	-1
 1172 0885 FF       		.byte	-1
 1173 0886 FF       		.byte	-1
 1174 0887 00       		.space	1
 1175 0888 00100E40 		.word	1074663424
 1176 088c 00008000 		.word	8388608
 1177 0890 0C000000 		.word	12
 1178 0894 00000010 		.word	268435456
 1179 0898 00000000 		.word	0
 1180 089c 04000000 		.word	4
 1181 08a0 FF       		.byte	-1
 1182 08a1 FF       		.byte	-1
 1183 08a2 FF       		.byte	-1
 1184 08a3 00       		.space	1
 1185 08a4 000E0E40 		.word	1074662912
 1186 08a8 00000600 		.word	393216
 1187 08ac 0B000000 		.word	11
 1188 08b0 00000008 		.word	134217728
 1189 08b4 00000000 		.word	0
 1190 08b8 05000000 		.word	5
 1191 08bc FF       		.byte	-1
 1192 08bd FF       		.byte	-1
 1193 08be FF       		.byte	-1
 1194 08bf 00       		.space	1
 1195 08c0 00100E40 		.word	1074663424
 1196 08c4 00300000 		.word	12288
 1197 08c8 0C000000 		.word	12
 1198 08cc 00000008 		.word	134217728
 1199 08d0 00000000 		.word	0
 1200 08d4 05000000 		.word	5
 1201 08d8 FF       		.byte	-1
 1202 08d9 FF       		.byte	-1
 1203 08da FF       		.byte	-1
 1204 08db 00       		.space	1
 1205 08dc 000E0E40 		.word	1074662912
 1206 08e0 00030000 		.word	768
 1207 08e4 0B000000 		.word	11
 1208 08e8 00000008 		.word	134217728
 1209 08ec 00000000 		.word	0
 1210 08f0 05000000 		.word	5
 1211 08f4 FF       		.byte	-1
 1212 08f5 FF       		.byte	-1
 1213 08f6 FF       		.byte	-1
 1214 08f7 00       		.space	1
 1215 08f8 000E0E40 		.word	1074662912
 1216 08fc 000C0000 		.word	3072
 1217 0900 0B000000 		.word	11
 1218 0904 00000008 		.word	134217728
ARM GAS  /tmp/ccblaTkB.s 			page 23


 1219 0908 00000000 		.word	0
 1220 090c 05000000 		.word	5
 1221 0910 FF       		.byte	-1
 1222 0911 FF       		.byte	-1
 1223 0912 FF       		.byte	-1
 1224 0913 00       		.space	1
 1225 0914 000E0E40 		.word	1074662912
 1226 0918 00300000 		.word	12288
 1227 091c 0B000000 		.word	11
 1228 0920 00000008 		.word	134217728
 1229 0924 00000000 		.word	0
 1230 0928 05000000 		.word	5
 1231 092c FF       		.byte	-1
 1232 092d FF       		.byte	-1
 1233 092e FF       		.byte	-1
 1234 092f 00       		.space	1
 1235 0930 00140E40 		.word	1074664448
 1236 0934 30000000 		.word	48
 1237 0938 0E000000 		.word	14
 1238 093c 00000010 		.word	268435456
 1239 0940 00000000 		.word	0
 1240 0944 05000000 		.word	5
 1241 0948 FF       		.byte	-1
 1242 0949 FF       		.byte	-1
 1243 094a FF       		.byte	-1
 1244 094b 00       		.space	1
 1245 094c 00100E40 		.word	1074663424
 1246 0950 000C0000 		.word	3072
 1247 0954 0C000000 		.word	12
 1248 0958 00000008 		.word	134217728
 1249 095c 00000000 		.word	0
 1250 0960 04000000 		.word	4
 1251 0964 FF       		.byte	-1
 1252 0965 FF       		.byte	-1
 1253 0966 FF       		.byte	-1
 1254 0967 00       		.space	1
 1255 0968 00100E40 		.word	1074663424
 1256 096c 00002000 		.word	2097152
 1257 0970 0C000000 		.word	12
 1258 0974 00000010 		.word	268435456
 1259 0978 00000000 		.word	0
 1260 097c 04000000 		.word	4
 1261 0980 FF       		.byte	-1
 1262 0981 FF       		.byte	-1
 1263 0982 FF       		.byte	-1
 1264 0983 00       		.space	1
 1265 0984 000E0E40 		.word	1074662912
 1266 0988 00000020 		.word	536870912
 1267 098c 0B000000 		.word	11
 1268 0990 00000008 		.word	134217728
 1269 0994 00000000 		.word	0
 1270 0998 04000000 		.word	4
 1271 099c FF       		.byte	-1
 1272 099d FF       		.byte	-1
 1273 099e FF       		.byte	-1
 1274 099f 00       		.space	1
 1275 09a0 00100E40 		.word	1074663424
ARM GAS  /tmp/ccblaTkB.s 			page 24


 1276 09a4 00800000 		.word	32768
 1277 09a8 0C000000 		.word	12
 1278 09ac 00000008 		.word	134217728
 1279 09b0 00000000 		.word	0
 1280 09b4 04000000 		.word	4
 1281 09b8 FF       		.byte	-1
 1282 09b9 FF       		.byte	-1
 1283 09ba FF       		.byte	-1
 1284 09bb 00       		.space	1
 1285 09bc 00100E40 		.word	1074663424
 1286 09c0 00400000 		.word	16384
 1287 09c4 0C000000 		.word	12
 1288 09c8 00000008 		.word	134217728
 1289 09cc 00000000 		.word	0
 1290 09d0 04000000 		.word	4
 1291 09d4 FF       		.byte	-1
 1292 09d5 FF       		.byte	-1
 1293 09d6 FF       		.byte	-1
 1294 09d7 00       		.space	1
 1295 09d8 000E0E40 		.word	1074662912
 1296 09dc 03000000 		.word	3
 1297 09e0 0B000000 		.word	11
 1298 09e4 00000008 		.word	134217728
 1299 09e8 00000000 		.word	0
 1300 09ec 05000000 		.word	5
 1301 09f0 FF       		.byte	-1
 1302 09f1 FF       		.byte	-1
 1303 09f2 FF       		.byte	-1
 1304 09f3 00       		.space	1
 1305 09f4 00100E40 		.word	1074663424
 1306 09f8 00C00000 		.word	49152
 1307 09fc 0C000000 		.word	12
 1308 0a00 00000008 		.word	134217728
 1309 0a04 00000000 		.word	0
 1310 0a08 05000000 		.word	5
 1311 0a0c FF       		.byte	-1
 1312 0a0d FF       		.byte	-1
 1313 0a0e FF       		.byte	-1
 1314 0a0f 00       		.space	1
 1315 0a10 000E0E40 		.word	1074662912
 1316 0a14 20000000 		.word	32
 1317 0a18 0B000000 		.word	11
 1318 0a1c 00000008 		.word	134217728
 1319 0a20 00000000 		.word	0
 1320 0a24 14000000 		.word	20
 1321 0a28 FF       		.byte	-1
 1322 0a29 FF       		.byte	-1
 1323 0a2a 04       		.byte	4
 1324 0a2b 00       		.space	1
 1325 0a2c 00120E40 		.word	1074663936
 1326 0a30 00000008 		.word	134217728
 1327 0a34 0D000000 		.word	13
 1328 0a38 00000030 		.word	805306368
 1329 0a3c 00000000 		.word	0
 1330 0a40 04000000 		.word	4
 1331 0a44 FF       		.byte	-1
 1332 0a45 FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 25


 1333 0a46 FF       		.byte	-1
 1334 0a47 00       		.space	1
 1335 0a48 000E0E40 		.word	1074662912
 1336 0a4c 01000000 		.word	1
 1337 0a50 0B000000 		.word	11
 1338 0a54 00000010 		.word	268435456
 1339 0a58 00000000 		.word	0
 1340 0a5c 0C000000 		.word	12
 1341 0a60 FF       		.byte	-1
 1342 0a61 03       		.byte	3
 1343 0a62 FF       		.byte	-1
 1344 0a63 00       		.space	1
 1345 0a64 000E0E40 		.word	1074662912
 1346 0a68 02000000 		.word	2
 1347 0a6c 0B000000 		.word	11
 1348 0a70 00000030 		.word	805306368
 1349 0a74 00000000 		.word	0
 1350 0a78 04000000 		.word	4
 1351 0a7c FF       		.byte	-1
 1352 0a7d FF       		.byte	-1
 1353 0a7e FF       		.byte	-1
 1354 0a7f 00       		.space	1
 1355 0a80 00120E40 		.word	1074663936
 1356 0a84 00080000 		.word	2048
 1357 0a88 0D000000 		.word	13
 1358 0a8c 00000030 		.word	805306368
 1359 0a90 00000000 		.word	0
 1360 0a94 04000000 		.word	4
 1361 0a98 FF       		.byte	-1
 1362 0a99 FF       		.byte	-1
 1363 0a9a FF       		.byte	-1
 1364 0a9b 00       		.space	1
 1365 0a9c 00120E40 		.word	1074663936
 1366 0aa0 00010000 		.word	256
 1367 0aa4 0D000000 		.word	13
 1368 0aa8 00000030 		.word	805306368
 1369 0aac 00000000 		.word	0
 1370 0ab0 04000000 		.word	4
 1371 0ab4 FF       		.byte	-1
 1372 0ab5 FF       		.byte	-1
 1373 0ab6 FF       		.byte	-1
 1374 0ab7 00       		.space	1
 1375 0ab8 00120E40 		.word	1074663936
 1376 0abc 04000000 		.word	4
 1377 0ac0 0D000000 		.word	13
 1378 0ac4 00000010 		.word	268435456
 1379 0ac8 00000000 		.word	0
 1380 0acc 0C000000 		.word	12
 1381 0ad0 FF       		.byte	-1
 1382 0ad1 00       		.byte	0
 1383 0ad2 FF       		.byte	-1
 1384 0ad3 00       		.space	1
 1385 0ad4 00120E40 		.word	1074663936
 1386 0ad8 40000000 		.word	64
 1387 0adc 0D000000 		.word	13
 1388 0ae0 00000010 		.word	268435456
 1389 0ae4 00000000 		.word	0
ARM GAS  /tmp/ccblaTkB.s 			page 26


 1390 0ae8 0C000000 		.word	12
 1391 0aec FF       		.byte	-1
 1392 0aed 02       		.byte	2
 1393 0aee FF       		.byte	-1
 1394 0aef 00       		.space	1
 1395 0af0 00120E40 		.word	1074663936
 1396 0af4 00001000 		.word	1048576
 1397 0af8 0D000000 		.word	13
 1398 0afc 00000010 		.word	268435456
 1399 0b00 00000000 		.word	0
 1400 0b04 0C000000 		.word	12
 1401 0b08 FF       		.byte	-1
 1402 0b09 04       		.byte	4
 1403 0b0a FF       		.byte	-1
 1404 0b0b 00       		.space	1
 1405 0b0c 00140E40 		.word	1074664448
 1406 0b10 00020000 		.word	512
 1407 0b14 0E000000 		.word	14
 1408 0b18 00000030 		.word	805306368
 1409 0b1c 00000000 		.word	0
 1410 0b20 04000000 		.word	4
 1411 0b24 FF       		.byte	-1
 1412 0b25 FF       		.byte	-1
 1413 0b26 FF       		.byte	-1
 1414 0b27 00       		.space	1
 1415 0b28 00120E40 		.word	1074663936
 1416 0b2c 00000020 		.word	536870912
 1417 0b30 0D000000 		.word	13
 1418 0b34 00000030 		.word	805306368
 1419 0b38 00000000 		.word	0
 1420 0b3c 04000000 		.word	4
 1421 0b40 FF       		.byte	-1
 1422 0b41 FF       		.byte	-1
 1423 0b42 FF       		.byte	-1
 1424 0b43 00       		.space	1
 1425 0b44 00120E40 		.word	1074663936
 1426 0b48 00000040 		.word	1073741824
 1427 0b4c 0D000000 		.word	13
 1428 0b50 00000030 		.word	805306368
 1429 0b54 00000000 		.word	0
 1430 0b58 04000000 		.word	4
 1431 0b5c FF       		.byte	-1
 1432 0b5d FF       		.byte	-1
 1433 0b5e FF       		.byte	-1
 1434 0b5f 00       		.space	1
 1435 0b60 00120E40 		.word	1074663936
 1436 0b64 00040000 		.word	1024
 1437 0b68 0D000000 		.word	13
 1438 0b6c 00000030 		.word	805306368
 1439 0b70 00000000 		.word	0
 1440 0b74 04000000 		.word	4
 1441 0b78 FF       		.byte	-1
 1442 0b79 FF       		.byte	-1
 1443 0b7a FF       		.byte	-1
 1444 0b7b 00       		.space	1
 1445 0b7c 00120E40 		.word	1074663936
 1446 0b80 00000010 		.word	268435456
ARM GAS  /tmp/ccblaTkB.s 			page 27


 1447 0b84 0D000000 		.word	13
 1448 0b88 00000030 		.word	805306368
 1449 0b8c 00000000 		.word	0
 1450 0b90 04000000 		.word	4
 1451 0b94 FF       		.byte	-1
 1452 0b95 FF       		.byte	-1
 1453 0b96 FF       		.byte	-1
 1454 0b97 00       		.space	1
 1455 0b98 00100E40 		.word	1074663424
 1456 0b9c 00004000 		.word	4194304
 1457 0ba0 0C000000 		.word	12
 1458 0ba4 00000030 		.word	805306368
 1459 0ba8 00000000 		.word	0
 1460 0bac 04000000 		.word	4
 1461 0bb0 FF       		.byte	-1
 1462 0bb1 FF       		.byte	-1
 1463 0bb2 FF       		.byte	-1
 1464 0bb3 00       		.space	1
 1465 0bb4 00100E40 		.word	1074663424
 1466 0bb8 00008000 		.word	8388608
 1467 0bbc 0C000000 		.word	12
 1468 0bc0 00000030 		.word	805306368
 1469 0bc4 00000000 		.word	0
 1470 0bc8 04000000 		.word	4
 1471 0bcc FF       		.byte	-1
 1472 0bcd FF       		.byte	-1
 1473 0bce FF       		.byte	-1
 1474 0bcf 00       		.space	1
 1475 0bd0 00100E40 		.word	1074663424
 1476 0bd4 00000001 		.word	16777216
 1477 0bd8 0C000000 		.word	12
 1478 0bdc 00000030 		.word	805306368
 1479 0be0 00000000 		.word	0
 1480 0be4 04000000 		.word	4
 1481 0be8 FF       		.byte	-1
 1482 0be9 FF       		.byte	-1
 1483 0bea FF       		.byte	-1
 1484 0beb 00       		.space	1
 1485 0bec 00120E40 		.word	1074663936
 1486 0bf0 10000000 		.word	16
 1487 0bf4 0D000000 		.word	13
 1488 0bf8 00000010 		.word	268435456
 1489 0bfc 00000000 		.word	0
 1490 0c00 0C000000 		.word	12
 1491 0c04 FF       		.byte	-1
 1492 0c05 01       		.byte	1
 1493 0c06 FF       		.byte	-1
 1494 0c07 00       		.space	1
 1495 0c08 000E0E40 		.word	1074662912
 1496 0c0c 00000800 		.word	524288
 1497 0c10 0B000000 		.word	11
 1498 0c14 00000008 		.word	134217728
 1499 0c18 00000000 		.word	0
 1500 0c1c 04000000 		.word	4
 1501 0c20 FF       		.byte	-1
 1502 0c21 FF       		.byte	-1
 1503 0c22 FF       		.byte	-1
ARM GAS  /tmp/ccblaTkB.s 			page 28


 1504 0c23 00       		.space	1
 1505 0c24 000E0E40 		.word	1074662912
 1506 0c28 0000F001 		.word	32505856
 1507 0c2c 0B000000 		.word	11
 1508 0c30 00000008 		.word	134217728
 1509 0c34 01000000 		.word	1
 1510 0c38 04000000 		.word	4
 1511 0c3c FF       		.byte	-1
 1512 0c3d FF       		.byte	-1
 1513 0c3e FF       		.byte	-1
 1514 0c3f 00       		.space	1
 1515 0c40 00100E40 		.word	1074663424
 1516 0c44 FF030000 		.word	1023
 1517 0c48 0C000000 		.word	12
 1518 0c4c 00000008 		.word	134217728
 1519 0c50 00000000 		.word	0
 1520 0c54 04000000 		.word	4
 1521 0c58 FF       		.byte	-1
 1522 0c59 FF       		.byte	-1
 1523 0c5a FF       		.byte	-1
 1524 0c5b 00       		.space	1
 1525              		.hidden	__dso_handle
 1526              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
