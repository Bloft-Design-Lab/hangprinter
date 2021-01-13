ARM GAS  /tmp/ccShiffh.s 			page 1


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
ARM GAS  /tmp/ccShiffh.s 			page 2


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
ARM GAS  /tmp/ccShiffh.s 			page 3


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
 137 0000 08B5     		push	{r3, lr}
 138 0002 4FF44062 		mov	r2, #3072
 139 0006 0023     		movs	r3, #0
 140 0008 4FF00061 		mov	r1, #134217728
 141 000c 0D48     		ldr	r0, .L15
 142 000e FFF7FEFF 		bl	pio_configure
 143 0012 0121     		movs	r1, #1
 144 0014 1320     		movs	r0, #19
 145 0016 FFF7FEFF 		bl	setPullup
 146 001a 0023     		movs	r3, #0
 147 001c 4FF44062 		mov	r2, #3072
 148 0020 4FF00061 		mov	r1, #134217728
 149 0024 0848     		ldr	r0, .L15+4
 150 0026 FFF7FEFF 		bl	pio_configure
 151 002a FFF7FEFF 		bl	_Z12AnalogInInitv
 152 002e FFF7FEFF 		bl	_Z13AnalogOutInitv
 153 0032 2920     		movs	r0, #41
 154 0034 FFF7FEFF 		bl	pmc_enable_periph_clk
 155 0038 0121     		movs	r1, #1
 156 003a 044B     		ldr	r3, .L15+8
 157 003c 044A     		ldr	r2, .L15+12
 158 003e 5961     		str	r1, [r3, #20]
 159 0040 1A60     		str	r2, [r3]
 160 0042 08BD     		pop	{r3, pc}
 161              	.L16:
 162              		.align	2
 163              	.L15:
 164 0044 000E0E40 		.word	1074662912
 165 0048 00100E40 		.word	1074663424
 166 004c 00C00B40 		.word	1074511872
 167 0050 01474E52 		.word	1380861697
 168              		.size	init, .-init
 169              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  /tmp/ccShiffh.s 			page 4


 172              		.weak	_ZN9UARTClassD0Ev
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu softvfp
 177              		.type	_ZN9UARTClassD0Ev, %function
 178              	_ZN9UARTClassD0Ev:
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181 0000 10B5     		push	{r4, lr}
 182 0002 0446     		mov	r4, r0
 183 0004 2421     		movs	r1, #36
 184 0006 FFF7FEFF 		bl	_ZdlPvj
 185 000a 2046     		mov	r0, r4
 186 000c 10BD     		pop	{r4, pc}
 187              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 188 000e 00BF     		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
 189              		.align	1
 190              		.p2align 2,,3
 191              		.weak	_ZN10USARTClassD0Ev
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu softvfp
 196              		.type	_ZN10USARTClassD0Ev, %function
 197              	_ZN10USARTClassD0Ev:
 198              		@ args = 0, pretend = 0, frame = 0
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200 0000 10B5     		push	{r4, lr}
 201 0002 0446     		mov	r4, r0
 202 0004 2821     		movs	r1, #40
 203 0006 FFF7FEFF 		bl	_ZdlPvj
 204 000a 2046     		mov	r0, r4
 205 000c 10BD     		pop	{r4, pc}
 206              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
 207 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu softvfp
 214              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 215              	_GLOBAL__sub_I_g_APinDescription:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 219 0004 264F     		ldr	r7, .L23
 220 0006 274E     		ldr	r6, .L23+4
 221 0008 82B0     		sub	sp, sp, #8
 222 000a 3846     		mov	r0, r7
 223 000c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 224 0010 3046     		mov	r0, r6
 225 0012 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 226 0016 0823     		movs	r3, #8
 227 0018 234D     		ldr	r5, .L23+8
 228 001a 244C     		ldr	r4, .L23+12
ARM GAS  /tmp/ccShiffh.s 			page 5


 229 001c 1A46     		mov	r2, r3
 230 001e 0097     		str	r7, [sp]
 231 0020 0196     		str	r6, [sp, #4]
 232 0022 DFF8ACA0 		ldr	r10, .L23+48
 233 0026 2846     		mov	r0, r5
 234 0028 2149     		ldr	r1, .L23+16
 235 002a FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 236 002e 214F     		ldr	r7, .L23+20
 237 0030 2246     		mov	r2, r4
 238 0032 2149     		ldr	r1, .L23+24
 239 0034 2846     		mov	r0, r5
 240 0036 FFF7FEFF 		bl	__aeabi_atexit
 241 003a DFF89890 		ldr	r9, .L23+52
 242 003e 5046     		mov	r0, r10
 243 0040 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 244 0044 DFF89080 		ldr	r8, .L23+56
 245 0048 3846     		mov	r0, r7
 246 004a FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 247 004e 4846     		mov	r0, r9
 248 0050 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 249 0054 4046     		mov	r0, r8
 250 0056 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 251 005a 1123     		movs	r3, #17
 252 005c 174D     		ldr	r5, .L23+28
 253 005e 184E     		ldr	r6, .L23+32
 254 0060 1A46     		mov	r2, r3
 255 0062 CDF800A0 		str	r10, [sp]
 256 0066 CDF80490 		str	r9, [sp, #4]
 257 006a 2846     		mov	r0, r5
 258 006c 1549     		ldr	r1, .L23+36
 259 006e FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 260 0072 2246     		mov	r2, r4
 261 0074 3146     		mov	r1, r6
 262 0076 2846     		mov	r0, r5
 263 0078 FFF7FEFF 		bl	__aeabi_atexit
 264 007c 1223     		movs	r3, #18
 265 007e 124D     		ldr	r5, .L23+40
 266 0080 1A46     		mov	r2, r3
 267 0082 8DE88001 		stm	sp, {r7, r8}
 268 0086 2846     		mov	r0, r5
 269 0088 1049     		ldr	r1, .L23+44
 270 008a FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 271 008e 2246     		mov	r2, r4
 272 0090 3146     		mov	r1, r6
 273 0092 2846     		mov	r0, r5
 274 0094 02B0     		add	sp, sp, #8
 275              		@ sp needed
 276 0096 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 277 009a FFF7FEBF 		b	__aeabi_atexit
 278              	.L24:
 279 009e 00BF     		.align	2
 280              	.L23:
 281 00a0 00000000 		.word	.LANCHOR3
 282 00a4 00000000 		.word	.LANCHOR4
 283 00a8 00000000 		.word	.LANCHOR0
 284 00ac 00000000 		.word	__dso_handle
 285 00b0 00080E40 		.word	1074661376
ARM GAS  /tmp/ccShiffh.s 			page 6


 286 00b4 00000000 		.word	.LANCHOR6
 287 00b8 00000000 		.word	_ZN9UARTClassD1Ev
 288 00bc 00000000 		.word	.LANCHOR1
 289 00c0 00000000 		.word	_ZN10USARTClassD1Ev
 290 00c4 00800940 		.word	1074364416
 291 00c8 00000000 		.word	.LANCHOR2
 292 00cc 00C00940 		.word	1074380800
 293 00d0 00000000 		.word	.LANCHOR5
 294 00d4 00000000 		.word	.LANCHOR7
 295 00d8 00000000 		.word	.LANCHOR8
 296              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 297              		.section	.init_array,"aw",%init_array
 298              		.align	2
 299 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 300              		.global	Serial2
 301              		.global	Serial1
 302              		.global	tx_buffer3
 303              		.global	tx_buffer2
 304              		.global	rx_buffer3
 305              		.global	rx_buffer2
 306              		.global	Serial
 307              		.global	tx_buffer1
 308              		.global	rx_buffer1
 309              		.global	g_APinDescription
 310              		.section	.bss.Serial,"aw",%nobits
 311              		.align	2
 312              		.set	.LANCHOR0,. + 0
 313              		.type	Serial, %object
 314              		.size	Serial, 36
 315              	Serial:
 316 0000 00000000 		.space	36
 316      00000000 
 316      00000000 
 316      00000000 
 316      00000000 
 317              		.section	.bss.Serial1,"aw",%nobits
 318              		.align	2
 319              		.set	.LANCHOR1,. + 0
 320              		.type	Serial1, %object
 321              		.size	Serial1, 40
 322              	Serial1:
 323 0000 00000000 		.space	40
 323      00000000 
 323      00000000 
 323      00000000 
 323      00000000 
 324              		.section	.bss.Serial2,"aw",%nobits
 325              		.align	2
 326              		.set	.LANCHOR2,. + 0
 327              		.type	Serial2, %object
 328              		.size	Serial2, 40
 329              	Serial2:
 330 0000 00000000 		.space	40
 330      00000000 
 330      00000000 
 330      00000000 
 330      00000000 
ARM GAS  /tmp/ccShiffh.s 			page 7


 331              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 332              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 333              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 334              	_ZL28cpu_irq_prev_interrupt_state:
 335 0000 00       		.space	1
 336              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 337              		.align	2
 338              		.type	_ZL32cpu_irq_critical_section_counter, %object
 339              		.size	_ZL32cpu_irq_critical_section_counter, 4
 340              	_ZL32cpu_irq_critical_section_counter:
 341 0000 00000000 		.space	4
 342              		.section	.bss.rx_buffer1,"aw",%nobits
 343              		.align	2
 344              		.set	.LANCHOR3,. + 0
 345              		.type	rx_buffer1, %object
 346              		.size	rx_buffer1, 520
 347              	rx_buffer1:
 348 0000 00000000 		.space	520
 348      00000000 
 348      00000000 
 348      00000000 
 348      00000000 
 349              		.section	.bss.rx_buffer2,"aw",%nobits
 350              		.align	2
 351              		.set	.LANCHOR5,. + 0
 352              		.type	rx_buffer2, %object
 353              		.size	rx_buffer2, 520
 354              	rx_buffer2:
 355 0000 00000000 		.space	520
 355      00000000 
 355      00000000 
 355      00000000 
 355      00000000 
 356              		.section	.bss.rx_buffer3,"aw",%nobits
 357              		.align	2
 358              		.set	.LANCHOR6,. + 0
 359              		.type	rx_buffer3, %object
 360              		.size	rx_buffer3, 520
 361              	rx_buffer3:
 362 0000 00000000 		.space	520
 362      00000000 
 362      00000000 
 362      00000000 
 362      00000000 
 363              		.section	.bss.tx_buffer1,"aw",%nobits
 364              		.align	2
 365              		.set	.LANCHOR4,. + 0
 366              		.type	tx_buffer1, %object
 367              		.size	tx_buffer1, 520
 368              	tx_buffer1:
 369 0000 00000000 		.space	520
 369      00000000 
 369      00000000 
 369      00000000 
 369      00000000 
 370              		.section	.bss.tx_buffer2,"aw",%nobits
 371              		.align	2
ARM GAS  /tmp/ccShiffh.s 			page 8


 372              		.set	.LANCHOR7,. + 0
 373              		.type	tx_buffer2, %object
 374              		.size	tx_buffer2, 520
 375              	tx_buffer2:
 376 0000 00000000 		.space	520
 376      00000000 
 376      00000000 
 376      00000000 
 376      00000000 
 377              		.section	.bss.tx_buffer3,"aw",%nobits
 378              		.align	2
 379              		.set	.LANCHOR8,. + 0
 380              		.type	tx_buffer3, %object
 381              		.size	tx_buffer3, 520
 382              	tx_buffer3:
 383 0000 00000000 		.space	520
 383      00000000 
 383      00000000 
 383      00000000 
 383      00000000 
 384              		.section	.rodata.g_APinDescription,"a",%progbits
 385              		.align	2
 386              		.type	g_APinDescription, %object
 387              		.size	g_APinDescription, 3164
 388              	g_APinDescription:
 389 0000 000E0E40 		.word	1074662912
 390 0004 00010000 		.word	256
 391 0008 0B000000 		.word	11
 392 000c 00000008 		.word	134217728
 393 0010 00000000 		.word	0
 394 0014 04000000 		.word	4
 395 0018 FF       		.byte	-1
 396 0019 FF       		.byte	-1
 397 001a FF       		.byte	-1
 398 001b 00       		.space	1
 399 001c 000E0E40 		.word	1074662912
 400 0020 00020000 		.word	512
 401 0024 0B000000 		.word	11
 402 0028 00000008 		.word	134217728
 403 002c 00000000 		.word	0
 404 0030 04000000 		.word	4
 405 0034 FF       		.byte	-1
 406 0035 FF       		.byte	-1
 407 0036 FF       		.byte	-1
 408 0037 00       		.space	1
 409 0038 00100E40 		.word	1074663424
 410 003c 00000002 		.word	33554432
 411 0040 0C000000 		.word	12
 412 0044 00000010 		.word	268435456
 413 0048 00000000 		.word	0
 414 004c 14000000 		.word	20
 415 0050 FF       		.byte	-1
 416 0051 FF       		.byte	-1
 417 0052 00       		.byte	0
 418 0053 00       		.space	1
 419 0054 00120E40 		.word	1074663936
 420 0058 00000010 		.word	268435456
ARM GAS  /tmp/ccShiffh.s 			page 9


 421 005c 0D000000 		.word	13
 422 0060 00000010 		.word	268435456
 423 0064 00000000 		.word	0
 424 0068 14000000 		.word	20
 425 006c FF       		.byte	-1
 426 006d FF       		.byte	-1
 427 006e 0E       		.byte	14
 428 006f 00       		.space	1
 429 0070 00120E40 		.word	1074663936
 430 0074 00000004 		.word	67108864
 431 0078 0D000000 		.word	13
 432 007c 00000010 		.word	268435456
 433 0080 00000000 		.word	0
 434 0084 14000000 		.word	20
 435 0088 FF       		.byte	-1
 436 0089 FF       		.byte	-1
 437 008a 0D       		.byte	13
 438 008b 00       		.space	1
 439 008c 00120E40 		.word	1074663936
 440 0090 00000002 		.word	33554432
 441 0094 0D000000 		.word	13
 442 0098 00000010 		.word	268435456
 443 009c 00000000 		.word	0
 444 00a0 14000000 		.word	20
 445 00a4 FF       		.byte	-1
 446 00a5 FF       		.byte	-1
 447 00a6 0C       		.byte	12
 448 00a7 00       		.space	1
 449 00a8 00120E40 		.word	1074663936
 450 00ac 00000001 		.word	16777216
 451 00b0 0D000000 		.word	13
 452 00b4 00000010 		.word	268435456
 453 00b8 00000000 		.word	0
 454 00bc 0C000000 		.word	12
 455 00c0 FF       		.byte	-1
 456 00c1 07       		.byte	7
 457 00c2 FF       		.byte	-1
 458 00c3 00       		.space	1
 459 00c4 00120E40 		.word	1074663936
 460 00c8 00008000 		.word	8388608
 461 00cc 0D000000 		.word	13
 462 00d0 00000010 		.word	268435456
 463 00d4 00000000 		.word	0
 464 00d8 0C000000 		.word	12
 465 00dc FF       		.byte	-1
 466 00dd 06       		.byte	6
 467 00de FF       		.byte	-1
 468 00df 00       		.space	1
 469 00e0 00120E40 		.word	1074663936
 470 00e4 00004000 		.word	4194304
 471 00e8 0D000000 		.word	13
 472 00ec 00000010 		.word	268435456
 473 00f0 00000000 		.word	0
 474 00f4 0C000000 		.word	12
 475 00f8 FF       		.byte	-1
 476 00f9 05       		.byte	5
 477 00fa FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 10


 478 00fb 00       		.space	1
 479 00fc 00120E40 		.word	1074663936
 480 0100 00002000 		.word	2097152
 481 0104 0D000000 		.word	13
 482 0108 00000010 		.word	268435456
 483 010c 00000000 		.word	0
 484 0110 0C000000 		.word	12
 485 0114 FF       		.byte	-1
 486 0115 04       		.byte	4
 487 0116 FF       		.byte	-1
 488 0117 00       		.space	1
 489 0118 00120E40 		.word	1074663936
 490 011c 00000020 		.word	536870912
 491 0120 0D000000 		.word	13
 492 0124 00000010 		.word	268435456
 493 0128 00000000 		.word	0
 494 012c 14000000 		.word	20
 495 0130 FF       		.byte	-1
 496 0131 FF       		.byte	-1
 497 0132 0F       		.byte	15
 498 0133 00       		.space	1
 499 0134 00140E40 		.word	1074664448
 500 0138 80000000 		.word	128
 501 013c 0E000000 		.word	14
 502 0140 00000010 		.word	268435456
 503 0144 00000000 		.word	0
 504 0148 14000000 		.word	20
 505 014c FF       		.byte	-1
 506 014d FF       		.byte	-1
 507 014e 10       		.byte	16
 508 014f 00       		.space	1
 509 0150 00140E40 		.word	1074664448
 510 0154 00010000 		.word	256
 511 0158 0E000000 		.word	14
 512 015c 00000010 		.word	268435456
 513 0160 00000000 		.word	0
 514 0164 14000000 		.word	20
 515 0168 FF       		.byte	-1
 516 0169 FF       		.byte	-1
 517 016a 11       		.byte	17
 518 016b 00       		.space	1
 519 016c 00100E40 		.word	1074663424
 520 0170 00000008 		.word	134217728
 521 0174 0C000000 		.word	12
 522 0178 00000010 		.word	268435456
 523 017c 00000000 		.word	0
 524 0180 14000000 		.word	20
 525 0184 FF       		.byte	-1
 526 0185 FF       		.byte	-1
 527 0186 01       		.byte	1
 528 0187 00       		.space	1
 529 0188 00140E40 		.word	1074664448
 530 018c 10000000 		.word	16
 531 0190 0E000000 		.word	14
 532 0194 00000010 		.word	268435456
 533 0198 00000000 		.word	0
 534 019c 04000000 		.word	4
ARM GAS  /tmp/ccShiffh.s 			page 11


 535 01a0 FF       		.byte	-1
 536 01a1 FF       		.byte	-1
 537 01a2 FF       		.byte	-1
 538 01a3 00       		.space	1
 539 01a4 00140E40 		.word	1074664448
 540 01a8 20000000 		.word	32
 541 01ac 0E000000 		.word	14
 542 01b0 00000010 		.word	268435456
 543 01b4 00000000 		.word	0
 544 01b8 04000000 		.word	4
 545 01bc FF       		.byte	-1
 546 01bd FF       		.byte	-1
 547 01be FF       		.byte	-1
 548 01bf 00       		.space	1
 549 01c0 000E0E40 		.word	1074662912
 550 01c4 00200000 		.word	8192
 551 01c8 0B000000 		.word	11
 552 01cc 00000008 		.word	134217728
 553 01d0 00000000 		.word	0
 554 01d4 04000000 		.word	4
 555 01d8 FF       		.byte	-1
 556 01d9 FF       		.byte	-1
 557 01da FF       		.byte	-1
 558 01db 00       		.space	1
 559 01dc 000E0E40 		.word	1074662912
 560 01e0 00100000 		.word	4096
 561 01e4 0B000000 		.word	11
 562 01e8 00000008 		.word	134217728
 563 01ec 00000000 		.word	0
 564 01f0 04000000 		.word	4
 565 01f4 FF       		.byte	-1
 566 01f5 FF       		.byte	-1
 567 01f6 FF       		.byte	-1
 568 01f7 00       		.space	1
 569 01f8 000E0E40 		.word	1074662912
 570 01fc 00080000 		.word	2048
 571 0200 0B000000 		.word	11
 572 0204 00000008 		.word	134217728
 573 0208 00000000 		.word	0
 574 020c 04000000 		.word	4
 575 0210 FF       		.byte	-1
 576 0211 FF       		.byte	-1
 577 0212 FF       		.byte	-1
 578 0213 00       		.space	1
 579 0214 000E0E40 		.word	1074662912
 580 0218 00040000 		.word	1024
 581 021c 0B000000 		.word	11
 582 0220 00000008 		.word	134217728
 583 0224 00000000 		.word	0
 584 0228 04000000 		.word	4
 585 022c FF       		.byte	-1
 586 022d FF       		.byte	-1
 587 022e FF       		.byte	-1
 588 022f 00       		.space	1
 589 0230 00100E40 		.word	1074663424
 590 0234 00100000 		.word	4096
 591 0238 0C000000 		.word	12
ARM GAS  /tmp/ccShiffh.s 			page 12


 592 023c 00000008 		.word	134217728
 593 0240 00000000 		.word	0
 594 0244 04000000 		.word	4
 595 0248 FF       		.byte	-1
 596 0249 FF       		.byte	-1
 597 024a FF       		.byte	-1
 598 024b 00       		.space	1
 599 024c 00100E40 		.word	1074663424
 600 0250 00200000 		.word	8192
 601 0254 0C000000 		.word	12
 602 0258 00000008 		.word	134217728
 603 025c 00000000 		.word	0
 604 0260 04000000 		.word	4
 605 0264 FF       		.byte	-1
 606 0265 FF       		.byte	-1
 607 0266 FF       		.byte	-1
 608 0267 00       		.space	1
 609 0268 00100E40 		.word	1074663424
 610 026c 00000004 		.word	67108864
 611 0270 0C000000 		.word	12
 612 0274 00000030 		.word	805306368
 613 0278 00000000 		.word	0
 614 027c 04000000 		.word	4
 615 0280 FF       		.byte	-1
 616 0281 FF       		.byte	-1
 617 0282 FF       		.byte	-1
 618 0283 00       		.space	1
 619 0284 000E0E40 		.word	1074662912
 620 0288 00400000 		.word	16384
 621 028c 0B000000 		.word	11
 622 0290 00000030 		.word	805306368
 623 0294 00000000 		.word	0
 624 0298 04000000 		.word	4
 625 029c FF       		.byte	-1
 626 029d FF       		.byte	-1
 627 029e FF       		.byte	-1
 628 029f 00       		.space	1
 629 02a0 000E0E40 		.word	1074662912
 630 02a4 00800000 		.word	32768
 631 02a8 0B000000 		.word	11
 632 02ac 00000030 		.word	805306368
 633 02b0 00000000 		.word	0
 634 02b4 04000000 		.word	4
 635 02b8 FF       		.byte	-1
 636 02b9 FF       		.byte	-1
 637 02ba FF       		.byte	-1
 638 02bb 00       		.space	1
 639 02bc 00140E40 		.word	1074664448
 640 02c0 01000000 		.word	1
 641 02c4 0E000000 		.word	14
 642 02c8 00000030 		.word	805306368
 643 02cc 00000000 		.word	0
 644 02d0 04000000 		.word	4
 645 02d4 FF       		.byte	-1
 646 02d5 FF       		.byte	-1
 647 02d6 FF       		.byte	-1
 648 02d7 00       		.space	1
ARM GAS  /tmp/ccShiffh.s 			page 13


 649 02d8 00140E40 		.word	1074664448
 650 02dc 02000000 		.word	2
 651 02e0 0E000000 		.word	14
 652 02e4 00000030 		.word	805306368
 653 02e8 00000000 		.word	0
 654 02ec 04000000 		.word	4
 655 02f0 FF       		.byte	-1
 656 02f1 FF       		.byte	-1
 657 02f2 FF       		.byte	-1
 658 02f3 00       		.space	1
 659 02f4 00140E40 		.word	1074664448
 660 02f8 04000000 		.word	4
 661 02fc 0E000000 		.word	14
 662 0300 00000030 		.word	805306368
 663 0304 00000000 		.word	0
 664 0308 04000000 		.word	4
 665 030c FF       		.byte	-1
 666 030d FF       		.byte	-1
 667 030e FF       		.byte	-1
 668 030f 00       		.space	1
 669 0310 00140E40 		.word	1074664448
 670 0314 08000000 		.word	8
 671 0318 0E000000 		.word	14
 672 031c 00000030 		.word	805306368
 673 0320 00000000 		.word	0
 674 0324 04000000 		.word	4
 675 0328 FF       		.byte	-1
 676 0329 FF       		.byte	-1
 677 032a FF       		.byte	-1
 678 032b 00       		.space	1
 679 032c 00140E40 		.word	1074664448
 680 0330 40000000 		.word	64
 681 0334 0E000000 		.word	14
 682 0338 00000030 		.word	805306368
 683 033c 00000000 		.word	0
 684 0340 04000000 		.word	4
 685 0344 FF       		.byte	-1
 686 0345 FF       		.byte	-1
 687 0346 FF       		.byte	-1
 688 0347 00       		.space	1
 689 0348 00140E40 		.word	1074664448
 690 034c 00020000 		.word	512
 691 0350 0E000000 		.word	14
 692 0354 00000030 		.word	805306368
 693 0358 00000000 		.word	0
 694 035c 04000000 		.word	4
 695 0360 FF       		.byte	-1
 696 0361 FF       		.byte	-1
 697 0362 FF       		.byte	-1
 698 0363 00       		.space	1
 699 0364 000E0E40 		.word	1074662912
 700 0368 80000000 		.word	128
 701 036c 0B000000 		.word	11
 702 0370 00000030 		.word	805306368
 703 0374 00000000 		.word	0
 704 0378 04000000 		.word	4
 705 037c FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 14


 706 037d FF       		.byte	-1
 707 037e FF       		.byte	-1
 708 037f 00       		.space	1
 709 0380 00140E40 		.word	1074664448
 710 0384 00040000 		.word	1024
 711 0388 0E000000 		.word	14
 712 038c 00000030 		.word	805306368
 713 0390 00000000 		.word	0
 714 0394 04000000 		.word	4
 715 0398 FF       		.byte	-1
 716 0399 FF       		.byte	-1
 717 039a FF       		.byte	-1
 718 039b 00       		.space	1
 719 039c 00120E40 		.word	1074663936
 720 03a0 02000000 		.word	2
 721 03a4 0D000000 		.word	13
 722 03a8 00000030 		.word	805306368
 723 03ac 00000000 		.word	0
 724 03b0 04000000 		.word	4
 725 03b4 FF       		.byte	-1
 726 03b5 FF       		.byte	-1
 727 03b6 FF       		.byte	-1
 728 03b7 00       		.space	1
 729 03b8 00120E40 		.word	1074663936
 730 03bc 04000000 		.word	4
 731 03c0 0D000000 		.word	13
 732 03c4 00000030 		.word	805306368
 733 03c8 00000000 		.word	0
 734 03cc 04000000 		.word	4
 735 03d0 FF       		.byte	-1
 736 03d1 FF       		.byte	-1
 737 03d2 FF       		.byte	-1
 738 03d3 00       		.space	1
 739 03d4 00120E40 		.word	1074663936
 740 03d8 08000000 		.word	8
 741 03dc 0D000000 		.word	13
 742 03e0 00000030 		.word	805306368
 743 03e4 00000000 		.word	0
 744 03e8 04000000 		.word	4
 745 03ec FF       		.byte	-1
 746 03ed FF       		.byte	-1
 747 03ee FF       		.byte	-1
 748 03ef 00       		.space	1
 749 03f0 00120E40 		.word	1074663936
 750 03f4 10000000 		.word	16
 751 03f8 0D000000 		.word	13
 752 03fc 00000030 		.word	805306368
 753 0400 00000000 		.word	0
 754 0404 04000000 		.word	4
 755 0408 FF       		.byte	-1
 756 0409 FF       		.byte	-1
 757 040a FF       		.byte	-1
 758 040b 00       		.space	1
 759 040c 00120E40 		.word	1074663936
 760 0410 20000000 		.word	32
 761 0414 0D000000 		.word	13
 762 0418 00000030 		.word	805306368
ARM GAS  /tmp/ccShiffh.s 			page 15


 763 041c 00000000 		.word	0
 764 0420 04000000 		.word	4
 765 0424 FF       		.byte	-1
 766 0425 FF       		.byte	-1
 767 0426 FF       		.byte	-1
 768 0427 00       		.space	1
 769 0428 00120E40 		.word	1074663936
 770 042c 40000000 		.word	64
 771 0430 0D000000 		.word	13
 772 0434 00000030 		.word	805306368
 773 0438 00000000 		.word	0
 774 043c 04000000 		.word	4
 775 0440 FF       		.byte	-1
 776 0441 FF       		.byte	-1
 777 0442 FF       		.byte	-1
 778 0443 00       		.space	1
 779 0444 00120E40 		.word	1074663936
 780 0448 80000000 		.word	128
 781 044c 0D000000 		.word	13
 782 0450 00000030 		.word	805306368
 783 0454 00000000 		.word	0
 784 0458 04000000 		.word	4
 785 045c FF       		.byte	-1
 786 045d FF       		.byte	-1
 787 045e FF       		.byte	-1
 788 045f 00       		.space	1
 789 0460 00120E40 		.word	1074663936
 790 0464 00010000 		.word	256
 791 0468 0D000000 		.word	13
 792 046c 00000030 		.word	805306368
 793 0470 00000000 		.word	0
 794 0474 04000000 		.word	4
 795 0478 FF       		.byte	-1
 796 0479 FF       		.byte	-1
 797 047a FF       		.byte	-1
 798 047b 00       		.space	1
 799 047c 00120E40 		.word	1074663936
 800 0480 00020000 		.word	512
 801 0484 0D000000 		.word	13
 802 0488 00000030 		.word	805306368
 803 048c 00000000 		.word	0
 804 0490 04000000 		.word	4
 805 0494 FF       		.byte	-1
 806 0495 FF       		.byte	-1
 807 0496 FF       		.byte	-1
 808 0497 00       		.space	1
 809 0498 000E0E40 		.word	1074662912
 810 049c 00000800 		.word	524288
 811 04a0 0B000000 		.word	11
 812 04a4 00000030 		.word	805306368
 813 04a8 00000000 		.word	0
 814 04ac 04000000 		.word	4
 815 04b0 FF       		.byte	-1
 816 04b1 FF       		.byte	-1
 817 04b2 FF       		.byte	-1
 818 04b3 00       		.space	1
 819 04b4 000E0E40 		.word	1074662912
ARM GAS  /tmp/ccShiffh.s 			page 16


 820 04b8 00001000 		.word	1048576
 821 04bc 0B000000 		.word	11
 822 04c0 00000030 		.word	805306368
 823 04c4 00000000 		.word	0
 824 04c8 04000000 		.word	4
 825 04cc FF       		.byte	-1
 826 04cd FF       		.byte	-1
 827 04ce FF       		.byte	-1
 828 04cf 00       		.space	1
 829 04d0 00120E40 		.word	1074663936
 830 04d4 00000800 		.word	524288
 831 04d8 0D000000 		.word	13
 832 04dc 00000030 		.word	805306368
 833 04e0 00000000 		.word	0
 834 04e4 04000000 		.word	4
 835 04e8 FF       		.byte	-1
 836 04e9 FF       		.byte	-1
 837 04ea FF       		.byte	-1
 838 04eb 00       		.space	1
 839 04ec 00120E40 		.word	1074663936
 840 04f0 00000400 		.word	262144
 841 04f4 0D000000 		.word	13
 842 04f8 00000030 		.word	805306368
 843 04fc 00000000 		.word	0
 844 0500 04000000 		.word	4
 845 0504 FF       		.byte	-1
 846 0505 FF       		.byte	-1
 847 0506 FF       		.byte	-1
 848 0507 00       		.space	1
 849 0508 00120E40 		.word	1074663936
 850 050c 00000200 		.word	131072
 851 0510 0D000000 		.word	13
 852 0514 00000030 		.word	805306368
 853 0518 00000000 		.word	0
 854 051c 04000000 		.word	4
 855 0520 FF       		.byte	-1
 856 0521 FF       		.byte	-1
 857 0522 FF       		.byte	-1
 858 0523 00       		.space	1
 859 0524 00120E40 		.word	1074663936
 860 0528 00000100 		.word	65536
 861 052c 0D000000 		.word	13
 862 0530 00000030 		.word	805306368
 863 0534 00000000 		.word	0
 864 0538 04000000 		.word	4
 865 053c FF       		.byte	-1
 866 053d FF       		.byte	-1
 867 053e FF       		.byte	-1
 868 053f 00       		.space	1
 869 0540 00120E40 		.word	1074663936
 870 0544 00800000 		.word	32768
 871 0548 0D000000 		.word	13
 872 054c 00000030 		.word	805306368
 873 0550 00000000 		.word	0
 874 0554 04000000 		.word	4
 875 0558 FF       		.byte	-1
 876 0559 FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 17


 877 055a FF       		.byte	-1
 878 055b 00       		.space	1
 879 055c 00120E40 		.word	1074663936
 880 0560 00400000 		.word	16384
 881 0564 0D000000 		.word	13
 882 0568 00000030 		.word	805306368
 883 056c 00000000 		.word	0
 884 0570 04000000 		.word	4
 885 0574 FF       		.byte	-1
 886 0575 FF       		.byte	-1
 887 0576 FF       		.byte	-1
 888 0577 00       		.space	1
 889 0578 00120E40 		.word	1074663936
 890 057c 00200000 		.word	8192
 891 0580 0D000000 		.word	13
 892 0584 00000030 		.word	805306368
 893 0588 00000000 		.word	0
 894 058c 04000000 		.word	4
 895 0590 FF       		.byte	-1
 896 0591 FF       		.byte	-1
 897 0592 FF       		.byte	-1
 898 0593 00       		.space	1
 899 0594 00120E40 		.word	1074663936
 900 0598 00100000 		.word	4096
 901 059c 0D000000 		.word	13
 902 05a0 00000030 		.word	805306368
 903 05a4 00000000 		.word	0
 904 05a8 04000000 		.word	4
 905 05ac FF       		.byte	-1
 906 05ad FF       		.byte	-1
 907 05ae FF       		.byte	-1
 908 05af 00       		.space	1
 909 05b0 00100E40 		.word	1074663424
 910 05b4 00002000 		.word	2097152
 911 05b8 0C000000 		.word	12
 912 05bc 00000030 		.word	805306368
 913 05c0 00000000 		.word	0
 914 05c4 04000000 		.word	4
 915 05c8 FF       		.byte	-1
 916 05c9 FF       		.byte	-1
 917 05ca FF       		.byte	-1
 918 05cb 00       		.space	1
 919 05cc 00100E40 		.word	1074663424
 920 05d0 00400000 		.word	16384
 921 05d4 0C000000 		.word	12
 922 05d8 00000030 		.word	805306368
 923 05dc 00000000 		.word	0
 924 05e0 04000000 		.word	4
 925 05e4 FF       		.byte	-1
 926 05e5 FF       		.byte	-1
 927 05e6 FF       		.byte	-1
 928 05e7 00       		.space	1
 929 05e8 000E0E40 		.word	1074662912
 930 05ec 00000100 		.word	65536
 931 05f0 0B000000 		.word	11
 932 05f4 00000028 		.word	671088640
 933 05f8 00000000 		.word	0
ARM GAS  /tmp/ccShiffh.s 			page 18


 934 05fc 02000000 		.word	2
 935 0600 07       		.byte	7
 936 0601 FF       		.byte	-1
 937 0602 FF       		.byte	-1
 938 0603 00       		.space	1
 939 0604 000E0E40 		.word	1074662912
 940 0608 00000001 		.word	16777216
 941 060c 0B000000 		.word	11
 942 0610 00000028 		.word	671088640
 943 0614 00000000 		.word	0
 944 0618 02000000 		.word	2
 945 061c 06       		.byte	6
 946 061d FF       		.byte	-1
 947 061e FF       		.byte	-1
 948 061f 00       		.space	1
 949 0620 000E0E40 		.word	1074662912
 950 0624 00008000 		.word	8388608
 951 0628 0B000000 		.word	11
 952 062c 00000028 		.word	671088640
 953 0630 00000000 		.word	0
 954 0634 02000000 		.word	2
 955 0638 05       		.byte	5
 956 0639 FF       		.byte	-1
 957 063a FF       		.byte	-1
 958 063b 00       		.space	1
 959 063c 000E0E40 		.word	1074662912
 960 0640 00004000 		.word	4194304
 961 0644 0B000000 		.word	11
 962 0648 00000028 		.word	671088640
 963 064c 00000000 		.word	0
 964 0650 02000000 		.word	2
 965 0654 04       		.byte	4
 966 0655 FF       		.byte	-1
 967 0656 FF       		.byte	-1
 968 0657 00       		.space	1
 969 0658 000E0E40 		.word	1074662912
 970 065c 40000000 		.word	64
 971 0660 0B000000 		.word	11
 972 0664 00000028 		.word	671088640
 973 0668 00000000 		.word	0
 974 066c 02000000 		.word	2
 975 0670 03       		.byte	3
 976 0671 FF       		.byte	-1
 977 0672 05       		.byte	5
 978 0673 00       		.space	1
 979 0674 000E0E40 		.word	1074662912
 980 0678 10000000 		.word	16
 981 067c 0B000000 		.word	11
 982 0680 00000028 		.word	671088640
 983 0684 00000000 		.word	0
 984 0688 02000000 		.word	2
 985 068c 02       		.byte	2
 986 068d FF       		.byte	-1
 987 068e FF       		.byte	-1
 988 068f 00       		.space	1
 989 0690 000E0E40 		.word	1074662912
 990 0694 08000000 		.word	8
ARM GAS  /tmp/ccShiffh.s 			page 19


 991 0698 0B000000 		.word	11
 992 069c 00000028 		.word	671088640
 993 06a0 00000000 		.word	0
 994 06a4 02000000 		.word	2
 995 06a8 01       		.byte	1
 996 06a9 FF       		.byte	-1
 997 06aa 03       		.byte	3
 998 06ab 00       		.space	1
 999 06ac 000E0E40 		.word	1074662912
 1000 06b0 04000000 		.word	4
 1001 06b4 0B000000 		.word	11
 1002 06b8 00000028 		.word	671088640
 1003 06bc 00000000 		.word	0
 1004 06c0 02000000 		.word	2
 1005 06c4 00       		.byte	0
 1006 06c5 FF       		.byte	-1
 1007 06c6 02       		.byte	2
 1008 06c7 00       		.space	1
 1009 06c8 00100E40 		.word	1074663424
 1010 06cc 00000200 		.word	131072
 1011 06d0 0C000000 		.word	12
 1012 06d4 00000028 		.word	671088640
 1013 06d8 00000000 		.word	0
 1014 06dc 02000000 		.word	2
 1015 06e0 0A       		.byte	10
 1016 06e1 FF       		.byte	-1
 1017 06e2 FF       		.byte	-1
 1018 06e3 00       		.space	1
 1019 06e4 00100E40 		.word	1074663424
 1020 06e8 00000400 		.word	262144
 1021 06ec 0C000000 		.word	12
 1022 06f0 00000028 		.word	671088640
 1023 06f4 00000000 		.word	0
 1024 06f8 02000000 		.word	2
 1025 06fc 0B       		.byte	11
 1026 06fd FF       		.byte	-1
 1027 06fe FF       		.byte	-1
 1028 06ff 00       		.space	1
 1029 0700 00100E40 		.word	1074663424
 1030 0704 00000800 		.word	524288
 1031 0708 0C000000 		.word	12
 1032 070c 00000028 		.word	671088640
 1033 0710 00000000 		.word	0
 1034 0714 02000000 		.word	2
 1035 0718 0C       		.byte	12
 1036 0719 FF       		.byte	-1
 1037 071a FF       		.byte	-1
 1038 071b 00       		.space	1
 1039 071c 00100E40 		.word	1074663424
 1040 0720 00001000 		.word	1048576
 1041 0724 0C000000 		.word	12
 1042 0728 00000028 		.word	671088640
 1043 072c 00000000 		.word	0
 1044 0730 02000000 		.word	2
 1045 0734 0D       		.byte	13
 1046 0735 FF       		.byte	-1
 1047 0736 FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 20


 1048 0737 00       		.space	1
 1049 0738 00100E40 		.word	1074663424
 1050 073c 00800000 		.word	32768
 1051 0740 0C000000 		.word	12
 1052 0744 00000028 		.word	671088640
 1053 0748 00000000 		.word	0
 1054 074c 20000000 		.word	32
 1055 0750 20       		.byte	32
 1056 0751 FF       		.byte	-1
 1057 0752 FF       		.byte	-1
 1058 0753 00       		.space	1
 1059 0754 00100E40 		.word	1074663424
 1060 0758 00000100 		.word	65536
 1061 075c 0C000000 		.word	12
 1062 0760 00000028 		.word	671088640
 1063 0764 00000000 		.word	0
 1064 0768 20000000 		.word	32
 1065 076c 21       		.byte	33
 1066 076d FF       		.byte	-1
 1067 076e FF       		.byte	-1
 1068 076f 00       		.space	1
 1069 0770 000E0E40 		.word	1074662912
 1070 0774 02000000 		.word	2
 1071 0778 0B000000 		.word	11
 1072 077c 00000008 		.word	134217728
 1073 0780 00000000 		.word	0
 1074 0784 04000000 		.word	4
 1075 0788 FF       		.byte	-1
 1076 0789 FF       		.byte	-1
 1077 078a FF       		.byte	-1
 1078 078b 00       		.space	1
 1079 078c 000E0E40 		.word	1074662912
 1080 0790 01000000 		.word	1
 1081 0794 0B000000 		.word	11
 1082 0798 00000008 		.word	134217728
 1083 079c 00000000 		.word	0
 1084 07a0 04000000 		.word	4
 1085 07a4 FF       		.byte	-1
 1086 07a5 FF       		.byte	-1
 1087 07a6 FF       		.byte	-1
 1088 07a7 00       		.space	1
 1089 07a8 000E0E40 		.word	1074662912
 1090 07ac 00000200 		.word	131072
 1091 07b0 0B000000 		.word	11
 1092 07b4 00000008 		.word	134217728
 1093 07b8 00000000 		.word	0
 1094 07bc 04000000 		.word	4
 1095 07c0 FF       		.byte	-1
 1096 07c1 FF       		.byte	-1
 1097 07c2 FF       		.byte	-1
 1098 07c3 00       		.space	1
 1099 07c4 000E0E40 		.word	1074662912
 1100 07c8 00000400 		.word	262144
 1101 07cc 0B000000 		.word	11
 1102 07d0 00000008 		.word	134217728
 1103 07d4 00000000 		.word	0
 1104 07d8 04000000 		.word	4
ARM GAS  /tmp/ccShiffh.s 			page 21


 1105 07dc FF       		.byte	-1
 1106 07dd FF       		.byte	-1
 1107 07de FF       		.byte	-1
 1108 07df 00       		.space	1
 1109 07e0 00120E40 		.word	1074663936
 1110 07e4 00000040 		.word	1073741824
 1111 07e8 0D000000 		.word	13
 1112 07ec 00000030 		.word	805306368
 1113 07f0 00000000 		.word	0
 1114 07f4 04000000 		.word	4
 1115 07f8 FF       		.byte	-1
 1116 07f9 FF       		.byte	-1
 1117 07fa FF       		.byte	-1
 1118 07fb 00       		.space	1
 1119 07fc 000E0E40 		.word	1074662912
 1120 0800 00002000 		.word	2097152
 1121 0804 0B000000 		.word	11
 1122 0808 00000030 		.word	805306368
 1123 080c 00000000 		.word	0
 1124 0810 04000000 		.word	4
 1125 0814 FF       		.byte	-1
 1126 0815 FF       		.byte	-1
 1127 0816 FF       		.byte	-1
 1128 0817 00       		.space	1
 1129 0818 000E0E40 		.word	1074662912
 1130 081c 00000002 		.word	33554432
 1131 0820 0B000000 		.word	11
 1132 0824 00000008 		.word	134217728
 1133 0828 00000000 		.word	0
 1134 082c 04000000 		.word	4
 1135 0830 FF       		.byte	-1
 1136 0831 FF       		.byte	-1
 1137 0832 FF       		.byte	-1
 1138 0833 00       		.space	1
 1139 0834 000E0E40 		.word	1074662912
 1140 0838 00000004 		.word	67108864
 1141 083c 0B000000 		.word	11
 1142 0840 00000008 		.word	134217728
 1143 0844 00000000 		.word	0
 1144 0848 04000000 		.word	4
 1145 084c FF       		.byte	-1
 1146 084d FF       		.byte	-1
 1147 084e FF       		.byte	-1
 1148 084f 00       		.space	1
 1149 0850 000E0E40 		.word	1074662912
 1150 0854 00000008 		.word	134217728
 1151 0858 0B000000 		.word	11
 1152 085c 00000008 		.word	134217728
 1153 0860 00000000 		.word	0
 1154 0864 04000000 		.word	4
 1155 0868 FF       		.byte	-1
 1156 0869 FF       		.byte	-1
 1157 086a FF       		.byte	-1
 1158 086b 00       		.space	1
 1159 086c 000E0E40 		.word	1074662912
 1160 0870 00000010 		.word	268435456
 1161 0874 0B000000 		.word	11
ARM GAS  /tmp/ccShiffh.s 			page 22


 1162 0878 00000008 		.word	134217728
 1163 087c 00000000 		.word	0
 1164 0880 04000000 		.word	4
 1165 0884 FF       		.byte	-1
 1166 0885 FF       		.byte	-1
 1167 0886 FF       		.byte	-1
 1168 0887 00       		.space	1
 1169 0888 00100E40 		.word	1074663424
 1170 088c 00008000 		.word	8388608
 1171 0890 0C000000 		.word	12
 1172 0894 00000010 		.word	268435456
 1173 0898 00000000 		.word	0
 1174 089c 04000000 		.word	4
 1175 08a0 FF       		.byte	-1
 1176 08a1 FF       		.byte	-1
 1177 08a2 FF       		.byte	-1
 1178 08a3 00       		.space	1
 1179 08a4 000E0E40 		.word	1074662912
 1180 08a8 00000600 		.word	393216
 1181 08ac 0B000000 		.word	11
 1182 08b0 00000008 		.word	134217728
 1183 08b4 00000000 		.word	0
 1184 08b8 05000000 		.word	5
 1185 08bc FF       		.byte	-1
 1186 08bd FF       		.byte	-1
 1187 08be FF       		.byte	-1
 1188 08bf 00       		.space	1
 1189 08c0 00100E40 		.word	1074663424
 1190 08c4 00300000 		.word	12288
 1191 08c8 0C000000 		.word	12
 1192 08cc 00000008 		.word	134217728
 1193 08d0 00000000 		.word	0
 1194 08d4 05000000 		.word	5
 1195 08d8 FF       		.byte	-1
 1196 08d9 FF       		.byte	-1
 1197 08da FF       		.byte	-1
 1198 08db 00       		.space	1
 1199 08dc 000E0E40 		.word	1074662912
 1200 08e0 00030000 		.word	768
 1201 08e4 0B000000 		.word	11
 1202 08e8 00000008 		.word	134217728
 1203 08ec 00000000 		.word	0
 1204 08f0 05000000 		.word	5
 1205 08f4 FF       		.byte	-1
 1206 08f5 FF       		.byte	-1
 1207 08f6 FF       		.byte	-1
 1208 08f7 00       		.space	1
 1209 08f8 000E0E40 		.word	1074662912
 1210 08fc 000C0000 		.word	3072
 1211 0900 0B000000 		.word	11
 1212 0904 00000008 		.word	134217728
 1213 0908 00000000 		.word	0
 1214 090c 05000000 		.word	5
 1215 0910 FF       		.byte	-1
 1216 0911 FF       		.byte	-1
 1217 0912 FF       		.byte	-1
 1218 0913 00       		.space	1
ARM GAS  /tmp/ccShiffh.s 			page 23


 1219 0914 000E0E40 		.word	1074662912
 1220 0918 00300000 		.word	12288
 1221 091c 0B000000 		.word	11
 1222 0920 00000008 		.word	134217728
 1223 0924 00000000 		.word	0
 1224 0928 05000000 		.word	5
 1225 092c FF       		.byte	-1
 1226 092d FF       		.byte	-1
 1227 092e FF       		.byte	-1
 1228 092f 00       		.space	1
 1229 0930 00140E40 		.word	1074664448
 1230 0934 30000000 		.word	48
 1231 0938 0E000000 		.word	14
 1232 093c 00000010 		.word	268435456
 1233 0940 00000000 		.word	0
 1234 0944 05000000 		.word	5
 1235 0948 FF       		.byte	-1
 1236 0949 FF       		.byte	-1
 1237 094a FF       		.byte	-1
 1238 094b 00       		.space	1
 1239 094c 00100E40 		.word	1074663424
 1240 0950 000C0000 		.word	3072
 1241 0954 0C000000 		.word	12
 1242 0958 00000008 		.word	134217728
 1243 095c 00000000 		.word	0
 1244 0960 04000000 		.word	4
 1245 0964 FF       		.byte	-1
 1246 0965 FF       		.byte	-1
 1247 0966 FF       		.byte	-1
 1248 0967 00       		.space	1
 1249 0968 00100E40 		.word	1074663424
 1250 096c 00002000 		.word	2097152
 1251 0970 0C000000 		.word	12
 1252 0974 00000010 		.word	268435456
 1253 0978 00000000 		.word	0
 1254 097c 04000000 		.word	4
 1255 0980 FF       		.byte	-1
 1256 0981 FF       		.byte	-1
 1257 0982 FF       		.byte	-1
 1258 0983 00       		.space	1
 1259 0984 000E0E40 		.word	1074662912
 1260 0988 00000020 		.word	536870912
 1261 098c 0B000000 		.word	11
 1262 0990 00000008 		.word	134217728
 1263 0994 00000000 		.word	0
 1264 0998 04000000 		.word	4
 1265 099c FF       		.byte	-1
 1266 099d FF       		.byte	-1
 1267 099e FF       		.byte	-1
 1268 099f 00       		.space	1
 1269 09a0 00100E40 		.word	1074663424
 1270 09a4 00800000 		.word	32768
 1271 09a8 0C000000 		.word	12
 1272 09ac 00000008 		.word	134217728
 1273 09b0 00000000 		.word	0
 1274 09b4 04000000 		.word	4
 1275 09b8 FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 24


 1276 09b9 FF       		.byte	-1
 1277 09ba FF       		.byte	-1
 1278 09bb 00       		.space	1
 1279 09bc 00100E40 		.word	1074663424
 1280 09c0 00400000 		.word	16384
 1281 09c4 0C000000 		.word	12
 1282 09c8 00000008 		.word	134217728
 1283 09cc 00000000 		.word	0
 1284 09d0 04000000 		.word	4
 1285 09d4 FF       		.byte	-1
 1286 09d5 FF       		.byte	-1
 1287 09d6 FF       		.byte	-1
 1288 09d7 00       		.space	1
 1289 09d8 000E0E40 		.word	1074662912
 1290 09dc 03000000 		.word	3
 1291 09e0 0B000000 		.word	11
 1292 09e4 00000008 		.word	134217728
 1293 09e8 00000000 		.word	0
 1294 09ec 05000000 		.word	5
 1295 09f0 FF       		.byte	-1
 1296 09f1 FF       		.byte	-1
 1297 09f2 FF       		.byte	-1
 1298 09f3 00       		.space	1
 1299 09f4 00100E40 		.word	1074663424
 1300 09f8 00C00000 		.word	49152
 1301 09fc 0C000000 		.word	12
 1302 0a00 00000008 		.word	134217728
 1303 0a04 00000000 		.word	0
 1304 0a08 05000000 		.word	5
 1305 0a0c FF       		.byte	-1
 1306 0a0d FF       		.byte	-1
 1307 0a0e FF       		.byte	-1
 1308 0a0f 00       		.space	1
 1309 0a10 000E0E40 		.word	1074662912
 1310 0a14 20000000 		.word	32
 1311 0a18 0B000000 		.word	11
 1312 0a1c 00000030 		.word	805306368
 1313 0a20 00000000 		.word	0
 1314 0a24 04000000 		.word	4
 1315 0a28 FF       		.byte	-1
 1316 0a29 FF       		.byte	-1
 1317 0a2a FF       		.byte	-1
 1318 0a2b 00       		.space	1
 1319 0a2c 00120E40 		.word	1074663936
 1320 0a30 00000008 		.word	134217728
 1321 0a34 0D000000 		.word	13
 1322 0a38 00000030 		.word	805306368
 1323 0a3c 00000000 		.word	0
 1324 0a40 04000000 		.word	4
 1325 0a44 FF       		.byte	-1
 1326 0a45 FF       		.byte	-1
 1327 0a46 FF       		.byte	-1
 1328 0a47 00       		.space	1
 1329 0a48 000E0E40 		.word	1074662912
 1330 0a4c 01000000 		.word	1
 1331 0a50 0B000000 		.word	11
 1332 0a54 00000030 		.word	805306368
ARM GAS  /tmp/ccShiffh.s 			page 25


 1333 0a58 00000000 		.word	0
 1334 0a5c 04000000 		.word	4
 1335 0a60 FF       		.byte	-1
 1336 0a61 FF       		.byte	-1
 1337 0a62 FF       		.byte	-1
 1338 0a63 00       		.space	1
 1339 0a64 000E0E40 		.word	1074662912
 1340 0a68 02000000 		.word	2
 1341 0a6c 0B000000 		.word	11
 1342 0a70 00000030 		.word	805306368
 1343 0a74 00000000 		.word	0
 1344 0a78 04000000 		.word	4
 1345 0a7c FF       		.byte	-1
 1346 0a7d FF       		.byte	-1
 1347 0a7e FF       		.byte	-1
 1348 0a7f 00       		.space	1
 1349 0a80 00120E40 		.word	1074663936
 1350 0a84 00080000 		.word	2048
 1351 0a88 0D000000 		.word	13
 1352 0a8c 00000030 		.word	805306368
 1353 0a90 00000000 		.word	0
 1354 0a94 04000000 		.word	4
 1355 0a98 FF       		.byte	-1
 1356 0a99 FF       		.byte	-1
 1357 0a9a FF       		.byte	-1
 1358 0a9b 00       		.space	1
 1359 0a9c 00120E40 		.word	1074663936
 1360 0aa0 00010000 		.word	256
 1361 0aa4 0D000000 		.word	13
 1362 0aa8 00000010 		.word	268435456
 1363 0aac 00000000 		.word	0
 1364 0ab0 0C000000 		.word	12
 1365 0ab4 FF       		.byte	-1
 1366 0ab5 03       		.byte	3
 1367 0ab6 FF       		.byte	-1
 1368 0ab7 00       		.space	1
 1369 0ab8 00120E40 		.word	1074663936
 1370 0abc 04000000 		.word	4
 1371 0ac0 0D000000 		.word	13
 1372 0ac4 00000010 		.word	268435456
 1373 0ac8 00000000 		.word	0
 1374 0acc 0C000000 		.word	12
 1375 0ad0 FF       		.byte	-1
 1376 0ad1 00       		.byte	0
 1377 0ad2 FF       		.byte	-1
 1378 0ad3 00       		.space	1
 1379 0ad4 00120E40 		.word	1074663936
 1380 0ad8 40000000 		.word	64
 1381 0adc 0D000000 		.word	13
 1382 0ae0 00000010 		.word	268435456
 1383 0ae4 00000000 		.word	0
 1384 0ae8 0C000000 		.word	12
 1385 0aec FF       		.byte	-1
 1386 0aed 02       		.byte	2
 1387 0aee FF       		.byte	-1
 1388 0aef 00       		.space	1
 1389 0af0 00120E40 		.word	1074663936
ARM GAS  /tmp/ccShiffh.s 			page 26


 1390 0af4 00001000 		.word	1048576
 1391 0af8 0D000000 		.word	13
 1392 0afc 00000030 		.word	805306368
 1393 0b00 00000000 		.word	0
 1394 0b04 04000000 		.word	4
 1395 0b08 FF       		.byte	-1
 1396 0b09 FF       		.byte	-1
 1397 0b0a FF       		.byte	-1
 1398 0b0b 00       		.space	1
 1399 0b0c 00140E40 		.word	1074664448
 1400 0b10 00020000 		.word	512
 1401 0b14 0E000000 		.word	14
 1402 0b18 00000030 		.word	805306368
 1403 0b1c 00000000 		.word	0
 1404 0b20 04000000 		.word	4
 1405 0b24 FF       		.byte	-1
 1406 0b25 FF       		.byte	-1
 1407 0b26 FF       		.byte	-1
 1408 0b27 00       		.space	1
 1409 0b28 00120E40 		.word	1074663936
 1410 0b2c 00000020 		.word	536870912
 1411 0b30 0D000000 		.word	13
 1412 0b34 00000030 		.word	805306368
 1413 0b38 00000000 		.word	0
 1414 0b3c 04000000 		.word	4
 1415 0b40 FF       		.byte	-1
 1416 0b41 FF       		.byte	-1
 1417 0b42 FF       		.byte	-1
 1418 0b43 00       		.space	1
 1419 0b44 00120E40 		.word	1074663936
 1420 0b48 00000040 		.word	1073741824
 1421 0b4c 0D000000 		.word	13
 1422 0b50 00000030 		.word	805306368
 1423 0b54 00000000 		.word	0
 1424 0b58 04000000 		.word	4
 1425 0b5c FF       		.byte	-1
 1426 0b5d FF       		.byte	-1
 1427 0b5e FF       		.byte	-1
 1428 0b5f 00       		.space	1
 1429 0b60 00120E40 		.word	1074663936
 1430 0b64 00040000 		.word	1024
 1431 0b68 0D000000 		.word	13
 1432 0b6c 00000030 		.word	805306368
 1433 0b70 00000000 		.word	0
 1434 0b74 04000000 		.word	4
 1435 0b78 FF       		.byte	-1
 1436 0b79 FF       		.byte	-1
 1437 0b7a FF       		.byte	-1
 1438 0b7b 00       		.space	1
 1439 0b7c 00120E40 		.word	1074663936
 1440 0b80 00000010 		.word	268435456
 1441 0b84 0D000000 		.word	13
 1442 0b88 00000030 		.word	805306368
 1443 0b8c 00000000 		.word	0
 1444 0b90 04000000 		.word	4
 1445 0b94 FF       		.byte	-1
 1446 0b95 FF       		.byte	-1
ARM GAS  /tmp/ccShiffh.s 			page 27


 1447 0b96 FF       		.byte	-1
 1448 0b97 00       		.space	1
 1449 0b98 00100E40 		.word	1074663424
 1450 0b9c 00004000 		.word	4194304
 1451 0ba0 0C000000 		.word	12
 1452 0ba4 00000030 		.word	805306368
 1453 0ba8 00000000 		.word	0
 1454 0bac 04000000 		.word	4
 1455 0bb0 FF       		.byte	-1
 1456 0bb1 FF       		.byte	-1
 1457 0bb2 FF       		.byte	-1
 1458 0bb3 00       		.space	1
 1459 0bb4 00100E40 		.word	1074663424
 1460 0bb8 00008000 		.word	8388608
 1461 0bbc 0C000000 		.word	12
 1462 0bc0 00000030 		.word	805306368
 1463 0bc4 00000000 		.word	0
 1464 0bc8 04000000 		.word	4
 1465 0bcc FF       		.byte	-1
 1466 0bcd FF       		.byte	-1
 1467 0bce FF       		.byte	-1
 1468 0bcf 00       		.space	1
 1469 0bd0 00100E40 		.word	1074663424
 1470 0bd4 00000001 		.word	16777216
 1471 0bd8 0C000000 		.word	12
 1472 0bdc 00000030 		.word	805306368
 1473 0be0 00000000 		.word	0
 1474 0be4 04000000 		.word	4
 1475 0be8 FF       		.byte	-1
 1476 0be9 FF       		.byte	-1
 1477 0bea FF       		.byte	-1
 1478 0beb 00       		.space	1
 1479 0bec 00120E40 		.word	1074663936
 1480 0bf0 10000000 		.word	16
 1481 0bf4 0D000000 		.word	13
 1482 0bf8 00000010 		.word	268435456
 1483 0bfc 00000000 		.word	0
 1484 0c00 0C000000 		.word	12
 1485 0c04 FF       		.byte	-1
 1486 0c05 01       		.byte	1
 1487 0c06 FF       		.byte	-1
 1488 0c07 00       		.space	1
 1489 0c08 000E0E40 		.word	1074662912
 1490 0c0c 00000800 		.word	524288
 1491 0c10 0B000000 		.word	11
 1492 0c14 00000008 		.word	134217728
 1493 0c18 00000000 		.word	0
 1494 0c1c 04000000 		.word	4
 1495 0c20 FF       		.byte	-1
 1496 0c21 FF       		.byte	-1
 1497 0c22 FF       		.byte	-1
 1498 0c23 00       		.space	1
 1499 0c24 000E0E40 		.word	1074662912
 1500 0c28 0000F001 		.word	32505856
 1501 0c2c 0B000000 		.word	11
 1502 0c30 00000008 		.word	134217728
 1503 0c34 01000000 		.word	1
ARM GAS  /tmp/ccShiffh.s 			page 28


 1504 0c38 04000000 		.word	4
 1505 0c3c FF       		.byte	-1
 1506 0c3d FF       		.byte	-1
 1507 0c3e FF       		.byte	-1
 1508 0c3f 00       		.space	1
 1509 0c40 00100E40 		.word	1074663424
 1510 0c44 FF030000 		.word	1023
 1511 0c48 0C000000 		.word	12
 1512 0c4c 00000008 		.word	134217728
 1513 0c50 00000000 		.word	0
 1514 0c54 04000000 		.word	4
 1515 0c58 FF       		.byte	-1
 1516 0c59 FF       		.byte	-1
 1517 0c5a FF       		.byte	-1
 1518 0c5b 00       		.space	1
 1519              		.hidden	__dso_handle
 1520              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
