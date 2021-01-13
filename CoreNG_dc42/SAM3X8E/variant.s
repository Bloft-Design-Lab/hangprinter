ARM GAS  /tmp/ccK4hN4X.s 			page 1


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
ARM GAS  /tmp/ccK4hN4X.s 			page 2


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
ARM GAS  /tmp/ccK4hN4X.s 			page 3


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
 137 0000 38B5     		push	{r3, r4, r5, lr}
 138 0002 1D4C     		ldr	r4, .L15
 139 0004 0023     		movs	r3, #0
 140 0006 4FF44072 		mov	r2, #768
 141 000a 4FF00061 		mov	r1, #134217728
 142 000e 1B4D     		ldr	r5, .L15+4
 143 0010 2046     		mov	r0, r4
 144 0012 FFF7FEFF 		bl	pio_configure
 145 0016 0121     		movs	r1, #1
 146 0018 0020     		movs	r0, #0
 147 001a FFF7FEFF 		bl	setPullup
 148 001e 0023     		movs	r3, #0
 149 0020 4FF44062 		mov	r2, #3072
 150 0024 4FF00061 		mov	r1, #134217728
 151 0028 2846     		mov	r0, r5
 152 002a FFF7FEFF 		bl	pio_configure
 153 002e FFF7FEFF 		bl	_Z12AnalogInInitv
 154 0032 FFF7FEFF 		bl	_Z13AnalogOutInitv
 155 0036 0023     		movs	r3, #0
 156 0038 4FF40022 		mov	r2, #524288
 157 003c 4FF00061 		mov	r1, #134217728
 158 0040 2046     		mov	r0, r4
 159 0042 FFF7FEFF 		bl	pio_configure
 160 0046 0123     		movs	r3, #1
 161 0048 4FF0F872 		mov	r2, #32505856
 162 004c 4FF00061 		mov	r1, #134217728
 163 0050 2046     		mov	r0, r4
 164 0052 FFF7FEFF 		bl	pio_configure
 165 0056 0023     		movs	r3, #0
 166 0058 40F2FF32 		movw	r2, #1023
 167 005c 4FF00061 		mov	r1, #134217728
 168 0060 2846     		mov	r0, r5
 169 0062 FFF7FEFF 		bl	pio_configure
 170 0066 2920     		movs	r0, #41
 171 0068 FFF7FEFF 		bl	pmc_enable_periph_clk
ARM GAS  /tmp/ccK4hN4X.s 			page 4


 172 006c 0121     		movs	r1, #1
 173 006e 044B     		ldr	r3, .L15+8
 174 0070 044A     		ldr	r2, .L15+12
 175 0072 5961     		str	r1, [r3, #20]
 176 0074 1A60     		str	r2, [r3]
 177 0076 38BD     		pop	{r3, r4, r5, pc}
 178              	.L16:
 179              		.align	2
 180              	.L15:
 181 0078 000E0E40 		.word	1074662912
 182 007c 00100E40 		.word	1074663424
 183 0080 00C00B40 		.word	1074511872
 184 0084 01474E52 		.word	1380861697
 185              		.size	init, .-init
 186              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 187              		.align	1
 188              		.p2align 2,,3
 189              		.weak	_ZN9UARTClassD0Ev
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu softvfp
 194              		.type	_ZN9UARTClassD0Ev, %function
 195              	_ZN9UARTClassD0Ev:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198 0000 10B5     		push	{r4, lr}
 199 0002 0446     		mov	r4, r0
 200 0004 2421     		movs	r1, #36
 201 0006 FFF7FEFF 		bl	_ZdlPvj
 202 000a 2046     		mov	r0, r4
 203 000c 10BD     		pop	{r4, pc}
 204              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 205 000e 00BF     		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
 206              		.align	1
 207              		.p2align 2,,3
 208              		.weak	_ZN10USARTClassD0Ev
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	_ZN10USARTClassD0Ev, %function
 214              	_ZN10USARTClassD0Ev:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 10B5     		push	{r4, lr}
 218 0002 0446     		mov	r4, r0
 219 0004 2821     		movs	r1, #40
 220 0006 FFF7FEFF 		bl	_ZdlPvj
 221 000a 2046     		mov	r0, r4
 222 000c 10BD     		pop	{r4, pc}
 223              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
 224 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/ccK4hN4X.s 			page 5


 229              		.thumb_func
 230              		.fpu softvfp
 231              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 232              	_GLOBAL__sub_I_g_APinDescription:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 236 0004 264F     		ldr	r7, .L23
 237 0006 274E     		ldr	r6, .L23+4
 238 0008 82B0     		sub	sp, sp, #8
 239 000a 3846     		mov	r0, r7
 240 000c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 241 0010 3046     		mov	r0, r6
 242 0012 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 243 0016 0823     		movs	r3, #8
 244 0018 234D     		ldr	r5, .L23+8
 245 001a 244C     		ldr	r4, .L23+12
 246 001c 1A46     		mov	r2, r3
 247 001e 0097     		str	r7, [sp]
 248 0020 0196     		str	r6, [sp, #4]
 249 0022 DFF8ACA0 		ldr	r10, .L23+48
 250 0026 2846     		mov	r0, r5
 251 0028 2149     		ldr	r1, .L23+16
 252 002a FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 253 002e 214F     		ldr	r7, .L23+20
 254 0030 2246     		mov	r2, r4
 255 0032 2149     		ldr	r1, .L23+24
 256 0034 2846     		mov	r0, r5
 257 0036 FFF7FEFF 		bl	__aeabi_atexit
 258 003a DFF89890 		ldr	r9, .L23+52
 259 003e 5046     		mov	r0, r10
 260 0040 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 261 0044 DFF89080 		ldr	r8, .L23+56
 262 0048 3846     		mov	r0, r7
 263 004a FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 264 004e 4846     		mov	r0, r9
 265 0050 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 266 0054 4046     		mov	r0, r8
 267 0056 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 268 005a 1123     		movs	r3, #17
 269 005c 174D     		ldr	r5, .L23+28
 270 005e 184E     		ldr	r6, .L23+32
 271 0060 1A46     		mov	r2, r3
 272 0062 CDF800A0 		str	r10, [sp]
 273 0066 CDF80490 		str	r9, [sp, #4]
 274 006a 2846     		mov	r0, r5
 275 006c 1549     		ldr	r1, .L23+36
 276 006e FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 277 0072 2246     		mov	r2, r4
 278 0074 3146     		mov	r1, r6
 279 0076 2846     		mov	r0, r5
 280 0078 FFF7FEFF 		bl	__aeabi_atexit
 281 007c 1223     		movs	r3, #18
 282 007e 124D     		ldr	r5, .L23+40
 283 0080 1A46     		mov	r2, r3
 284 0082 8DE88001 		stm	sp, {r7, r8}
 285 0086 2846     		mov	r0, r5
ARM GAS  /tmp/ccK4hN4X.s 			page 6


 286 0088 1049     		ldr	r1, .L23+44
 287 008a FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 288 008e 2246     		mov	r2, r4
 289 0090 3146     		mov	r1, r6
 290 0092 2846     		mov	r0, r5
 291 0094 02B0     		add	sp, sp, #8
 292              		@ sp needed
 293 0096 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 294 009a FFF7FEBF 		b	__aeabi_atexit
 295              	.L24:
 296 009e 00BF     		.align	2
 297              	.L23:
 298 00a0 00000000 		.word	.LANCHOR3
 299 00a4 00000000 		.word	.LANCHOR4
 300 00a8 00000000 		.word	.LANCHOR0
 301 00ac 00000000 		.word	__dso_handle
 302 00b0 00080E40 		.word	1074661376
 303 00b4 00000000 		.word	.LANCHOR6
 304 00b8 00000000 		.word	_ZN9UARTClassD1Ev
 305 00bc 00000000 		.word	.LANCHOR1
 306 00c0 00000000 		.word	_ZN10USARTClassD1Ev
 307 00c4 00800940 		.word	1074364416
 308 00c8 00000000 		.word	.LANCHOR2
 309 00cc 00C00940 		.word	1074380800
 310 00d0 00000000 		.word	.LANCHOR5
 311 00d4 00000000 		.word	.LANCHOR7
 312 00d8 00000000 		.word	.LANCHOR8
 313              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 314              		.section	.init_array,"aw",%init_array
 315              		.align	2
 316 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 317              		.global	Serial2
 318              		.global	Serial1
 319              		.global	tx_buffer3
 320              		.global	tx_buffer2
 321              		.global	rx_buffer3
 322              		.global	rx_buffer2
 323              		.global	Serial
 324              		.global	tx_buffer1
 325              		.global	rx_buffer1
 326              		.global	g_APinDescription
 327              		.section	.bss.Serial,"aw",%nobits
 328              		.align	2
 329              		.set	.LANCHOR0,. + 0
 330              		.type	Serial, %object
 331              		.size	Serial, 36
 332              	Serial:
 333 0000 00000000 		.space	36
 333      00000000 
 333      00000000 
 333      00000000 
 333      00000000 
 334              		.section	.bss.Serial1,"aw",%nobits
 335              		.align	2
 336              		.set	.LANCHOR1,. + 0
 337              		.type	Serial1, %object
 338              		.size	Serial1, 40
ARM GAS  /tmp/ccK4hN4X.s 			page 7


 339              	Serial1:
 340 0000 00000000 		.space	40
 340      00000000 
 340      00000000 
 340      00000000 
 340      00000000 
 341              		.section	.bss.Serial2,"aw",%nobits
 342              		.align	2
 343              		.set	.LANCHOR2,. + 0
 344              		.type	Serial2, %object
 345              		.size	Serial2, 40
 346              	Serial2:
 347 0000 00000000 		.space	40
 347      00000000 
 347      00000000 
 347      00000000 
 347      00000000 
 348              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 349              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 350              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 351              	_ZL28cpu_irq_prev_interrupt_state:
 352 0000 00       		.space	1
 353              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 354              		.align	2
 355              		.type	_ZL32cpu_irq_critical_section_counter, %object
 356              		.size	_ZL32cpu_irq_critical_section_counter, 4
 357              	_ZL32cpu_irq_critical_section_counter:
 358 0000 00000000 		.space	4
 359              		.section	.bss.rx_buffer1,"aw",%nobits
 360              		.align	2
 361              		.set	.LANCHOR3,. + 0
 362              		.type	rx_buffer1, %object
 363              		.size	rx_buffer1, 520
 364              	rx_buffer1:
 365 0000 00000000 		.space	520
 365      00000000 
 365      00000000 
 365      00000000 
 365      00000000 
 366              		.section	.bss.rx_buffer2,"aw",%nobits
 367              		.align	2
 368              		.set	.LANCHOR5,. + 0
 369              		.type	rx_buffer2, %object
 370              		.size	rx_buffer2, 520
 371              	rx_buffer2:
 372 0000 00000000 		.space	520
 372      00000000 
 372      00000000 
 372      00000000 
 372      00000000 
 373              		.section	.bss.rx_buffer3,"aw",%nobits
 374              		.align	2
 375              		.set	.LANCHOR6,. + 0
 376              		.type	rx_buffer3, %object
 377              		.size	rx_buffer3, 520
 378              	rx_buffer3:
 379 0000 00000000 		.space	520
ARM GAS  /tmp/ccK4hN4X.s 			page 8


 379      00000000 
 379      00000000 
 379      00000000 
 379      00000000 
 380              		.section	.bss.tx_buffer1,"aw",%nobits
 381              		.align	2
 382              		.set	.LANCHOR4,. + 0
 383              		.type	tx_buffer1, %object
 384              		.size	tx_buffer1, 520
 385              	tx_buffer1:
 386 0000 00000000 		.space	520
 386      00000000 
 386      00000000 
 386      00000000 
 386      00000000 
 387              		.section	.bss.tx_buffer2,"aw",%nobits
 388              		.align	2
 389              		.set	.LANCHOR7,. + 0
 390              		.type	tx_buffer2, %object
 391              		.size	tx_buffer2, 520
 392              	tx_buffer2:
 393 0000 00000000 		.space	520
 393      00000000 
 393      00000000 
 393      00000000 
 393      00000000 
 394              		.section	.bss.tx_buffer3,"aw",%nobits
 395              		.align	2
 396              		.set	.LANCHOR8,. + 0
 397              		.type	tx_buffer3, %object
 398              		.size	tx_buffer3, 520
 399              	tx_buffer3:
 400 0000 00000000 		.space	520
 400      00000000 
 400      00000000 
 400      00000000 
 400      00000000 
 401              		.section	.rodata.g_APinDescription,"a",%progbits
 402              		.align	2
 403              		.type	g_APinDescription, %object
 404              		.size	g_APinDescription, 3164
 405              	g_APinDescription:
 406 0000 000E0E40 		.word	1074662912
 407 0004 00010000 		.word	256
 408 0008 0B000000 		.word	11
 409 000c 00000008 		.word	134217728
 410 0010 00000000 		.word	0
 411 0014 04000000 		.word	4
 412 0018 FF       		.byte	-1
 413 0019 FF       		.byte	-1
 414 001a FF       		.byte	-1
 415 001b 00       		.space	1
 416 001c 000E0E40 		.word	1074662912
 417 0020 00020000 		.word	512
 418 0024 0B000000 		.word	11
 419 0028 00000008 		.word	134217728
 420 002c 00000000 		.word	0
ARM GAS  /tmp/ccK4hN4X.s 			page 9


 421 0030 04000000 		.word	4
 422 0034 FF       		.byte	-1
 423 0035 FF       		.byte	-1
 424 0036 FF       		.byte	-1
 425 0037 00       		.space	1
 426 0038 00100E40 		.word	1074663424
 427 003c 00000002 		.word	33554432
 428 0040 0C000000 		.word	12
 429 0044 00000010 		.word	268435456
 430 0048 00000000 		.word	0
 431 004c 14000000 		.word	20
 432 0050 FF       		.byte	-1
 433 0051 FF       		.byte	-1
 434 0052 00       		.byte	0
 435 0053 00       		.space	1
 436 0054 00120E40 		.word	1074663936
 437 0058 00000010 		.word	268435456
 438 005c 0D000000 		.word	13
 439 0060 00000010 		.word	268435456
 440 0064 00000000 		.word	0
 441 0068 14000000 		.word	20
 442 006c FF       		.byte	-1
 443 006d FF       		.byte	-1
 444 006e 0E       		.byte	14
 445 006f 00       		.space	1
 446 0070 00120E40 		.word	1074663936
 447 0074 00000004 		.word	67108864
 448 0078 0D000000 		.word	13
 449 007c 00000010 		.word	268435456
 450 0080 00000000 		.word	0
 451 0084 14000000 		.word	20
 452 0088 FF       		.byte	-1
 453 0089 FF       		.byte	-1
 454 008a 0D       		.byte	13
 455 008b 00       		.space	1
 456 008c 00120E40 		.word	1074663936
 457 0090 00000002 		.word	33554432
 458 0094 0D000000 		.word	13
 459 0098 00000010 		.word	268435456
 460 009c 00000000 		.word	0
 461 00a0 14000000 		.word	20
 462 00a4 FF       		.byte	-1
 463 00a5 FF       		.byte	-1
 464 00a6 0C       		.byte	12
 465 00a7 00       		.space	1
 466 00a8 00120E40 		.word	1074663936
 467 00ac 00000001 		.word	16777216
 468 00b0 0D000000 		.word	13
 469 00b4 00000010 		.word	268435456
 470 00b8 00000000 		.word	0
 471 00bc 0C000000 		.word	12
 472 00c0 FF       		.byte	-1
 473 00c1 07       		.byte	7
 474 00c2 FF       		.byte	-1
 475 00c3 00       		.space	1
 476 00c4 00120E40 		.word	1074663936
 477 00c8 00008000 		.word	8388608
ARM GAS  /tmp/ccK4hN4X.s 			page 10


 478 00cc 0D000000 		.word	13
 479 00d0 00000010 		.word	268435456
 480 00d4 00000000 		.word	0
 481 00d8 0C000000 		.word	12
 482 00dc FF       		.byte	-1
 483 00dd 06       		.byte	6
 484 00de FF       		.byte	-1
 485 00df 00       		.space	1
 486 00e0 00120E40 		.word	1074663936
 487 00e4 00004000 		.word	4194304
 488 00e8 0D000000 		.word	13
 489 00ec 00000010 		.word	268435456
 490 00f0 00000000 		.word	0
 491 00f4 0C000000 		.word	12
 492 00f8 FF       		.byte	-1
 493 00f9 05       		.byte	5
 494 00fa FF       		.byte	-1
 495 00fb 00       		.space	1
 496 00fc 00120E40 		.word	1074663936
 497 0100 00002000 		.word	2097152
 498 0104 0D000000 		.word	13
 499 0108 00000010 		.word	268435456
 500 010c 00000000 		.word	0
 501 0110 0C000000 		.word	12
 502 0114 FF       		.byte	-1
 503 0115 04       		.byte	4
 504 0116 FF       		.byte	-1
 505 0117 00       		.space	1
 506 0118 00120E40 		.word	1074663936
 507 011c 00000020 		.word	536870912
 508 0120 0D000000 		.word	13
 509 0124 00000010 		.word	268435456
 510 0128 00000000 		.word	0
 511 012c 14000000 		.word	20
 512 0130 FF       		.byte	-1
 513 0131 FF       		.byte	-1
 514 0132 0F       		.byte	15
 515 0133 00       		.space	1
 516 0134 00140E40 		.word	1074664448
 517 0138 80000000 		.word	128
 518 013c 0E000000 		.word	14
 519 0140 00000010 		.word	268435456
 520 0144 00000000 		.word	0
 521 0148 14000000 		.word	20
 522 014c FF       		.byte	-1
 523 014d FF       		.byte	-1
 524 014e 10       		.byte	16
 525 014f 00       		.space	1
 526 0150 00140E40 		.word	1074664448
 527 0154 00010000 		.word	256
 528 0158 0E000000 		.word	14
 529 015c 00000010 		.word	268435456
 530 0160 00000000 		.word	0
 531 0164 14000000 		.word	20
 532 0168 FF       		.byte	-1
 533 0169 FF       		.byte	-1
 534 016a 11       		.byte	17
ARM GAS  /tmp/ccK4hN4X.s 			page 11


 535 016b 00       		.space	1
 536 016c 00100E40 		.word	1074663424
 537 0170 00000008 		.word	134217728
 538 0174 0C000000 		.word	12
 539 0178 00000010 		.word	268435456
 540 017c 00000000 		.word	0
 541 0180 14000000 		.word	20
 542 0184 FF       		.byte	-1
 543 0185 FF       		.byte	-1
 544 0186 01       		.byte	1
 545 0187 00       		.space	1
 546 0188 00140E40 		.word	1074664448
 547 018c 10000000 		.word	16
 548 0190 0E000000 		.word	14
 549 0194 00000010 		.word	268435456
 550 0198 00000000 		.word	0
 551 019c 04000000 		.word	4
 552 01a0 FF       		.byte	-1
 553 01a1 FF       		.byte	-1
 554 01a2 FF       		.byte	-1
 555 01a3 00       		.space	1
 556 01a4 00140E40 		.word	1074664448
 557 01a8 20000000 		.word	32
 558 01ac 0E000000 		.word	14
 559 01b0 00000010 		.word	268435456
 560 01b4 00000000 		.word	0
 561 01b8 04000000 		.word	4
 562 01bc FF       		.byte	-1
 563 01bd FF       		.byte	-1
 564 01be FF       		.byte	-1
 565 01bf 00       		.space	1
 566 01c0 000E0E40 		.word	1074662912
 567 01c4 00200000 		.word	8192
 568 01c8 0B000000 		.word	11
 569 01cc 00000008 		.word	134217728
 570 01d0 00000000 		.word	0
 571 01d4 04000000 		.word	4
 572 01d8 FF       		.byte	-1
 573 01d9 FF       		.byte	-1
 574 01da FF       		.byte	-1
 575 01db 00       		.space	1
 576 01dc 000E0E40 		.word	1074662912
 577 01e0 00100000 		.word	4096
 578 01e4 0B000000 		.word	11
 579 01e8 00000008 		.word	134217728
 580 01ec 00000000 		.word	0
 581 01f0 04000000 		.word	4
 582 01f4 FF       		.byte	-1
 583 01f5 FF       		.byte	-1
 584 01f6 FF       		.byte	-1
 585 01f7 00       		.space	1
 586 01f8 000E0E40 		.word	1074662912
 587 01fc 00080000 		.word	2048
 588 0200 0B000000 		.word	11
 589 0204 00000008 		.word	134217728
 590 0208 00000000 		.word	0
 591 020c 04000000 		.word	4
ARM GAS  /tmp/ccK4hN4X.s 			page 12


 592 0210 FF       		.byte	-1
 593 0211 FF       		.byte	-1
 594 0212 FF       		.byte	-1
 595 0213 00       		.space	1
 596 0214 000E0E40 		.word	1074662912
 597 0218 00040000 		.word	1024
 598 021c 0B000000 		.word	11
 599 0220 00000008 		.word	134217728
 600 0224 00000000 		.word	0
 601 0228 04000000 		.word	4
 602 022c FF       		.byte	-1
 603 022d FF       		.byte	-1
 604 022e FF       		.byte	-1
 605 022f 00       		.space	1
 606 0230 00100E40 		.word	1074663424
 607 0234 00100000 		.word	4096
 608 0238 0C000000 		.word	12
 609 023c 00000008 		.word	134217728
 610 0240 00000000 		.word	0
 611 0244 04000000 		.word	4
 612 0248 FF       		.byte	-1
 613 0249 FF       		.byte	-1
 614 024a FF       		.byte	-1
 615 024b 00       		.space	1
 616 024c 00100E40 		.word	1074663424
 617 0250 00200000 		.word	8192
 618 0254 0C000000 		.word	12
 619 0258 00000008 		.word	134217728
 620 025c 00000000 		.word	0
 621 0260 04000000 		.word	4
 622 0264 FF       		.byte	-1
 623 0265 FF       		.byte	-1
 624 0266 FF       		.byte	-1
 625 0267 00       		.space	1
 626 0268 00100E40 		.word	1074663424
 627 026c 00000004 		.word	67108864
 628 0270 0C000000 		.word	12
 629 0274 00000030 		.word	805306368
 630 0278 00000000 		.word	0
 631 027c 04000000 		.word	4
 632 0280 FF       		.byte	-1
 633 0281 FF       		.byte	-1
 634 0282 FF       		.byte	-1
 635 0283 00       		.space	1
 636 0284 000E0E40 		.word	1074662912
 637 0288 00400000 		.word	16384
 638 028c 0B000000 		.word	11
 639 0290 00000030 		.word	805306368
 640 0294 00000000 		.word	0
 641 0298 04000000 		.word	4
 642 029c FF       		.byte	-1
 643 029d FF       		.byte	-1
 644 029e FF       		.byte	-1
 645 029f 00       		.space	1
 646 02a0 000E0E40 		.word	1074662912
 647 02a4 00800000 		.word	32768
 648 02a8 0B000000 		.word	11
ARM GAS  /tmp/ccK4hN4X.s 			page 13


 649 02ac 00000030 		.word	805306368
 650 02b0 00000000 		.word	0
 651 02b4 04000000 		.word	4
 652 02b8 FF       		.byte	-1
 653 02b9 FF       		.byte	-1
 654 02ba FF       		.byte	-1
 655 02bb 00       		.space	1
 656 02bc 00140E40 		.word	1074664448
 657 02c0 01000000 		.word	1
 658 02c4 0E000000 		.word	14
 659 02c8 00000030 		.word	805306368
 660 02cc 00000000 		.word	0
 661 02d0 04000000 		.word	4
 662 02d4 FF       		.byte	-1
 663 02d5 FF       		.byte	-1
 664 02d6 FF       		.byte	-1
 665 02d7 00       		.space	1
 666 02d8 00140E40 		.word	1074664448
 667 02dc 02000000 		.word	2
 668 02e0 0E000000 		.word	14
 669 02e4 00000030 		.word	805306368
 670 02e8 00000000 		.word	0
 671 02ec 04000000 		.word	4
 672 02f0 FF       		.byte	-1
 673 02f1 FF       		.byte	-1
 674 02f2 FF       		.byte	-1
 675 02f3 00       		.space	1
 676 02f4 00140E40 		.word	1074664448
 677 02f8 04000000 		.word	4
 678 02fc 0E000000 		.word	14
 679 0300 00000030 		.word	805306368
 680 0304 00000000 		.word	0
 681 0308 04000000 		.word	4
 682 030c FF       		.byte	-1
 683 030d FF       		.byte	-1
 684 030e FF       		.byte	-1
 685 030f 00       		.space	1
 686 0310 00140E40 		.word	1074664448
 687 0314 08000000 		.word	8
 688 0318 0E000000 		.word	14
 689 031c 00000030 		.word	805306368
 690 0320 00000000 		.word	0
 691 0324 04000000 		.word	4
 692 0328 FF       		.byte	-1
 693 0329 FF       		.byte	-1
 694 032a FF       		.byte	-1
 695 032b 00       		.space	1
 696 032c 00140E40 		.word	1074664448
 697 0330 40000000 		.word	64
 698 0334 0E000000 		.word	14
 699 0338 00000030 		.word	805306368
 700 033c 00000000 		.word	0
 701 0340 04000000 		.word	4
 702 0344 FF       		.byte	-1
 703 0345 FF       		.byte	-1
 704 0346 FF       		.byte	-1
 705 0347 00       		.space	1
ARM GAS  /tmp/ccK4hN4X.s 			page 14


 706 0348 00140E40 		.word	1074664448
 707 034c 00020000 		.word	512
 708 0350 0E000000 		.word	14
 709 0354 00000030 		.word	805306368
 710 0358 00000000 		.word	0
 711 035c 04000000 		.word	4
 712 0360 FF       		.byte	-1
 713 0361 FF       		.byte	-1
 714 0362 FF       		.byte	-1
 715 0363 00       		.space	1
 716 0364 000E0E40 		.word	1074662912
 717 0368 80000000 		.word	128
 718 036c 0B000000 		.word	11
 719 0370 00000030 		.word	805306368
 720 0374 00000000 		.word	0
 721 0378 04000000 		.word	4
 722 037c FF       		.byte	-1
 723 037d FF       		.byte	-1
 724 037e FF       		.byte	-1
 725 037f 00       		.space	1
 726 0380 00140E40 		.word	1074664448
 727 0384 00040000 		.word	1024
 728 0388 0E000000 		.word	14
 729 038c 00000030 		.word	805306368
 730 0390 00000000 		.word	0
 731 0394 04000000 		.word	4
 732 0398 FF       		.byte	-1
 733 0399 FF       		.byte	-1
 734 039a FF       		.byte	-1
 735 039b 00       		.space	1
 736 039c 00120E40 		.word	1074663936
 737 03a0 02000000 		.word	2
 738 03a4 0D000000 		.word	13
 739 03a8 00000030 		.word	805306368
 740 03ac 00000000 		.word	0
 741 03b0 04000000 		.word	4
 742 03b4 FF       		.byte	-1
 743 03b5 FF       		.byte	-1
 744 03b6 FF       		.byte	-1
 745 03b7 00       		.space	1
 746 03b8 00120E40 		.word	1074663936
 747 03bc 04000000 		.word	4
 748 03c0 0D000000 		.word	13
 749 03c4 00000030 		.word	805306368
 750 03c8 00000000 		.word	0
 751 03cc 04000000 		.word	4
 752 03d0 FF       		.byte	-1
 753 03d1 FF       		.byte	-1
 754 03d2 FF       		.byte	-1
 755 03d3 00       		.space	1
 756 03d4 00120E40 		.word	1074663936
 757 03d8 08000000 		.word	8
 758 03dc 0D000000 		.word	13
 759 03e0 00000030 		.word	805306368
 760 03e4 00000000 		.word	0
 761 03e8 04000000 		.word	4
 762 03ec FF       		.byte	-1
ARM GAS  /tmp/ccK4hN4X.s 			page 15


 763 03ed FF       		.byte	-1
 764 03ee FF       		.byte	-1
 765 03ef 00       		.space	1
 766 03f0 00120E40 		.word	1074663936
 767 03f4 10000000 		.word	16
 768 03f8 0D000000 		.word	13
 769 03fc 00000030 		.word	805306368
 770 0400 00000000 		.word	0
 771 0404 04000000 		.word	4
 772 0408 FF       		.byte	-1
 773 0409 FF       		.byte	-1
 774 040a FF       		.byte	-1
 775 040b 00       		.space	1
 776 040c 00120E40 		.word	1074663936
 777 0410 20000000 		.word	32
 778 0414 0D000000 		.word	13
 779 0418 00000030 		.word	805306368
 780 041c 00000000 		.word	0
 781 0420 04000000 		.word	4
 782 0424 FF       		.byte	-1
 783 0425 FF       		.byte	-1
 784 0426 FF       		.byte	-1
 785 0427 00       		.space	1
 786 0428 00120E40 		.word	1074663936
 787 042c 40000000 		.word	64
 788 0430 0D000000 		.word	13
 789 0434 00000030 		.word	805306368
 790 0438 00000000 		.word	0
 791 043c 04000000 		.word	4
 792 0440 FF       		.byte	-1
 793 0441 FF       		.byte	-1
 794 0442 FF       		.byte	-1
 795 0443 00       		.space	1
 796 0444 00120E40 		.word	1074663936
 797 0448 80000000 		.word	128
 798 044c 0D000000 		.word	13
 799 0450 00000030 		.word	805306368
 800 0454 00000000 		.word	0
 801 0458 04000000 		.word	4
 802 045c FF       		.byte	-1
 803 045d FF       		.byte	-1
 804 045e FF       		.byte	-1
 805 045f 00       		.space	1
 806 0460 00120E40 		.word	1074663936
 807 0464 00010000 		.word	256
 808 0468 0D000000 		.word	13
 809 046c 00000030 		.word	805306368
 810 0470 00000000 		.word	0
 811 0474 04000000 		.word	4
 812 0478 FF       		.byte	-1
 813 0479 FF       		.byte	-1
 814 047a FF       		.byte	-1
 815 047b 00       		.space	1
 816 047c 00120E40 		.word	1074663936
 817 0480 00020000 		.word	512
 818 0484 0D000000 		.word	13
 819 0488 00000030 		.word	805306368
ARM GAS  /tmp/ccK4hN4X.s 			page 16


 820 048c 00000000 		.word	0
 821 0490 04000000 		.word	4
 822 0494 FF       		.byte	-1
 823 0495 FF       		.byte	-1
 824 0496 FF       		.byte	-1
 825 0497 00       		.space	1
 826 0498 000E0E40 		.word	1074662912
 827 049c 00000800 		.word	524288
 828 04a0 0B000000 		.word	11
 829 04a4 00000030 		.word	805306368
 830 04a8 00000000 		.word	0
 831 04ac 04000000 		.word	4
 832 04b0 FF       		.byte	-1
 833 04b1 FF       		.byte	-1
 834 04b2 FF       		.byte	-1
 835 04b3 00       		.space	1
 836 04b4 000E0E40 		.word	1074662912
 837 04b8 00001000 		.word	1048576
 838 04bc 0B000000 		.word	11
 839 04c0 00000030 		.word	805306368
 840 04c4 00000000 		.word	0
 841 04c8 04000000 		.word	4
 842 04cc FF       		.byte	-1
 843 04cd FF       		.byte	-1
 844 04ce FF       		.byte	-1
 845 04cf 00       		.space	1
 846 04d0 00120E40 		.word	1074663936
 847 04d4 00000800 		.word	524288
 848 04d8 0D000000 		.word	13
 849 04dc 00000030 		.word	805306368
 850 04e0 00000000 		.word	0
 851 04e4 04000000 		.word	4
 852 04e8 FF       		.byte	-1
 853 04e9 FF       		.byte	-1
 854 04ea FF       		.byte	-1
 855 04eb 00       		.space	1
 856 04ec 00120E40 		.word	1074663936
 857 04f0 00000400 		.word	262144
 858 04f4 0D000000 		.word	13
 859 04f8 00000030 		.word	805306368
 860 04fc 00000000 		.word	0
 861 0500 04000000 		.word	4
 862 0504 FF       		.byte	-1
 863 0505 FF       		.byte	-1
 864 0506 FF       		.byte	-1
 865 0507 00       		.space	1
 866 0508 00120E40 		.word	1074663936
 867 050c 00000200 		.word	131072
 868 0510 0D000000 		.word	13
 869 0514 00000030 		.word	805306368
 870 0518 00000000 		.word	0
 871 051c 04000000 		.word	4
 872 0520 FF       		.byte	-1
 873 0521 FF       		.byte	-1
 874 0522 FF       		.byte	-1
 875 0523 00       		.space	1
 876 0524 00120E40 		.word	1074663936
ARM GAS  /tmp/ccK4hN4X.s 			page 17


 877 0528 00000100 		.word	65536
 878 052c 0D000000 		.word	13
 879 0530 00000030 		.word	805306368
 880 0534 00000000 		.word	0
 881 0538 04000000 		.word	4
 882 053c FF       		.byte	-1
 883 053d FF       		.byte	-1
 884 053e FF       		.byte	-1
 885 053f 00       		.space	1
 886 0540 00120E40 		.word	1074663936
 887 0544 00800000 		.word	32768
 888 0548 0D000000 		.word	13
 889 054c 00000030 		.word	805306368
 890 0550 00000000 		.word	0
 891 0554 04000000 		.word	4
 892 0558 FF       		.byte	-1
 893 0559 FF       		.byte	-1
 894 055a FF       		.byte	-1
 895 055b 00       		.space	1
 896 055c 00120E40 		.word	1074663936
 897 0560 00400000 		.word	16384
 898 0564 0D000000 		.word	13
 899 0568 00000030 		.word	805306368
 900 056c 00000000 		.word	0
 901 0570 04000000 		.word	4
 902 0574 FF       		.byte	-1
 903 0575 FF       		.byte	-1
 904 0576 FF       		.byte	-1
 905 0577 00       		.space	1
 906 0578 00120E40 		.word	1074663936
 907 057c 00200000 		.word	8192
 908 0580 0D000000 		.word	13
 909 0584 00000030 		.word	805306368
 910 0588 00000000 		.word	0
 911 058c 04000000 		.word	4
 912 0590 FF       		.byte	-1
 913 0591 FF       		.byte	-1
 914 0592 FF       		.byte	-1
 915 0593 00       		.space	1
 916 0594 00120E40 		.word	1074663936
 917 0598 00100000 		.word	4096
 918 059c 0D000000 		.word	13
 919 05a0 00000030 		.word	805306368
 920 05a4 00000000 		.word	0
 921 05a8 04000000 		.word	4
 922 05ac FF       		.byte	-1
 923 05ad FF       		.byte	-1
 924 05ae FF       		.byte	-1
 925 05af 00       		.space	1
 926 05b0 00100E40 		.word	1074663424
 927 05b4 00002000 		.word	2097152
 928 05b8 0C000000 		.word	12
 929 05bc 00000030 		.word	805306368
 930 05c0 00000000 		.word	0
 931 05c4 04000000 		.word	4
 932 05c8 FF       		.byte	-1
 933 05c9 FF       		.byte	-1
ARM GAS  /tmp/ccK4hN4X.s 			page 18


 934 05ca FF       		.byte	-1
 935 05cb 00       		.space	1
 936 05cc 00100E40 		.word	1074663424
 937 05d0 00400000 		.word	16384
 938 05d4 0C000000 		.word	12
 939 05d8 00000030 		.word	805306368
 940 05dc 00000000 		.word	0
 941 05e0 04000000 		.word	4
 942 05e4 FF       		.byte	-1
 943 05e5 FF       		.byte	-1
 944 05e6 FF       		.byte	-1
 945 05e7 00       		.space	1
 946 05e8 000E0E40 		.word	1074662912
 947 05ec 00000100 		.word	65536
 948 05f0 0B000000 		.word	11
 949 05f4 00000028 		.word	671088640
 950 05f8 00000000 		.word	0
 951 05fc 02000000 		.word	2
 952 0600 07       		.byte	7
 953 0601 FF       		.byte	-1
 954 0602 FF       		.byte	-1
 955 0603 00       		.space	1
 956 0604 000E0E40 		.word	1074662912
 957 0608 00000001 		.word	16777216
 958 060c 0B000000 		.word	11
 959 0610 00000028 		.word	671088640
 960 0614 00000000 		.word	0
 961 0618 02000000 		.word	2
 962 061c 06       		.byte	6
 963 061d FF       		.byte	-1
 964 061e FF       		.byte	-1
 965 061f 00       		.space	1
 966 0620 000E0E40 		.word	1074662912
 967 0624 00008000 		.word	8388608
 968 0628 0B000000 		.word	11
 969 062c 00000028 		.word	671088640
 970 0630 00000000 		.word	0
 971 0634 02000000 		.word	2
 972 0638 05       		.byte	5
 973 0639 FF       		.byte	-1
 974 063a FF       		.byte	-1
 975 063b 00       		.space	1
 976 063c 000E0E40 		.word	1074662912
 977 0640 00004000 		.word	4194304
 978 0644 0B000000 		.word	11
 979 0648 00000028 		.word	671088640
 980 064c 00000000 		.word	0
 981 0650 02000000 		.word	2
 982 0654 04       		.byte	4
 983 0655 FF       		.byte	-1
 984 0656 FF       		.byte	-1
 985 0657 00       		.space	1
 986 0658 000E0E40 		.word	1074662912
 987 065c 40000000 		.word	64
 988 0660 0B000000 		.word	11
 989 0664 00000028 		.word	671088640
 990 0668 00000000 		.word	0
ARM GAS  /tmp/ccK4hN4X.s 			page 19


 991 066c 02000000 		.word	2
 992 0670 03       		.byte	3
 993 0671 FF       		.byte	-1
 994 0672 05       		.byte	5
 995 0673 00       		.space	1
 996 0674 000E0E40 		.word	1074662912
 997 0678 10000000 		.word	16
 998 067c 0B000000 		.word	11
 999 0680 00000028 		.word	671088640
 1000 0684 00000000 		.word	0
 1001 0688 02000000 		.word	2
 1002 068c 02       		.byte	2
 1003 068d FF       		.byte	-1
 1004 068e FF       		.byte	-1
 1005 068f 00       		.space	1
 1006 0690 000E0E40 		.word	1074662912
 1007 0694 08000000 		.word	8
 1008 0698 0B000000 		.word	11
 1009 069c 00000028 		.word	671088640
 1010 06a0 00000000 		.word	0
 1011 06a4 02000000 		.word	2
 1012 06a8 01       		.byte	1
 1013 06a9 FF       		.byte	-1
 1014 06aa 03       		.byte	3
 1015 06ab 00       		.space	1
 1016 06ac 000E0E40 		.word	1074662912
 1017 06b0 04000000 		.word	4
 1018 06b4 0B000000 		.word	11
 1019 06b8 00000028 		.word	671088640
 1020 06bc 00000000 		.word	0
 1021 06c0 02000000 		.word	2
 1022 06c4 00       		.byte	0
 1023 06c5 FF       		.byte	-1
 1024 06c6 02       		.byte	2
 1025 06c7 00       		.space	1
 1026 06c8 00100E40 		.word	1074663424
 1027 06cc 00000200 		.word	131072
 1028 06d0 0C000000 		.word	12
 1029 06d4 00000028 		.word	671088640
 1030 06d8 00000000 		.word	0
 1031 06dc 02000000 		.word	2
 1032 06e0 0A       		.byte	10
 1033 06e1 FF       		.byte	-1
 1034 06e2 FF       		.byte	-1
 1035 06e3 00       		.space	1
 1036 06e4 00100E40 		.word	1074663424
 1037 06e8 00000400 		.word	262144
 1038 06ec 0C000000 		.word	12
 1039 06f0 00000028 		.word	671088640
 1040 06f4 00000000 		.word	0
 1041 06f8 02000000 		.word	2
 1042 06fc 0B       		.byte	11
 1043 06fd FF       		.byte	-1
 1044 06fe FF       		.byte	-1
 1045 06ff 00       		.space	1
 1046 0700 00100E40 		.word	1074663424
 1047 0704 00000800 		.word	524288
ARM GAS  /tmp/ccK4hN4X.s 			page 20


 1048 0708 0C000000 		.word	12
 1049 070c 00000028 		.word	671088640
 1050 0710 00000000 		.word	0
 1051 0714 02000000 		.word	2
 1052 0718 0C       		.byte	12
 1053 0719 FF       		.byte	-1
 1054 071a FF       		.byte	-1
 1055 071b 00       		.space	1
 1056 071c 00100E40 		.word	1074663424
 1057 0720 00001000 		.word	1048576
 1058 0724 0C000000 		.word	12
 1059 0728 00000028 		.word	671088640
 1060 072c 00000000 		.word	0
 1061 0730 02000000 		.word	2
 1062 0734 0D       		.byte	13
 1063 0735 FF       		.byte	-1
 1064 0736 FF       		.byte	-1
 1065 0737 00       		.space	1
 1066 0738 00100E40 		.word	1074663424
 1067 073c 00800000 		.word	32768
 1068 0740 0C000000 		.word	12
 1069 0744 00000028 		.word	671088640
 1070 0748 00000000 		.word	0
 1071 074c 20000000 		.word	32
 1072 0750 20       		.byte	32
 1073 0751 FF       		.byte	-1
 1074 0752 FF       		.byte	-1
 1075 0753 00       		.space	1
 1076 0754 00100E40 		.word	1074663424
 1077 0758 00000100 		.word	65536
 1078 075c 0C000000 		.word	12
 1079 0760 00000028 		.word	671088640
 1080 0764 00000000 		.word	0
 1081 0768 20000000 		.word	32
 1082 076c 21       		.byte	33
 1083 076d FF       		.byte	-1
 1084 076e FF       		.byte	-1
 1085 076f 00       		.space	1
 1086 0770 000E0E40 		.word	1074662912
 1087 0774 02000000 		.word	2
 1088 0778 0B000000 		.word	11
 1089 077c 00000008 		.word	134217728
 1090 0780 00000000 		.word	0
 1091 0784 04000000 		.word	4
 1092 0788 FF       		.byte	-1
 1093 0789 FF       		.byte	-1
 1094 078a FF       		.byte	-1
 1095 078b 00       		.space	1
 1096 078c 000E0E40 		.word	1074662912
 1097 0790 01000000 		.word	1
 1098 0794 0B000000 		.word	11
 1099 0798 00000008 		.word	134217728
 1100 079c 00000000 		.word	0
 1101 07a0 04000000 		.word	4
 1102 07a4 FF       		.byte	-1
 1103 07a5 FF       		.byte	-1
 1104 07a6 FF       		.byte	-1
ARM GAS  /tmp/ccK4hN4X.s 			page 21


 1105 07a7 00       		.space	1
 1106 07a8 000E0E40 		.word	1074662912
 1107 07ac 00000200 		.word	131072
 1108 07b0 0B000000 		.word	11
 1109 07b4 00000008 		.word	134217728
 1110 07b8 00000000 		.word	0
 1111 07bc 04000000 		.word	4
 1112 07c0 FF       		.byte	-1
 1113 07c1 FF       		.byte	-1
 1114 07c2 FF       		.byte	-1
 1115 07c3 00       		.space	1
 1116 07c4 000E0E40 		.word	1074662912
 1117 07c8 00000400 		.word	262144
 1118 07cc 0B000000 		.word	11
 1119 07d0 00000008 		.word	134217728
 1120 07d4 00000000 		.word	0
 1121 07d8 04000000 		.word	4
 1122 07dc FF       		.byte	-1
 1123 07dd FF       		.byte	-1
 1124 07de FF       		.byte	-1
 1125 07df 00       		.space	1
 1126 07e0 00120E40 		.word	1074663936
 1127 07e4 00000040 		.word	1073741824
 1128 07e8 0D000000 		.word	13
 1129 07ec 00000030 		.word	805306368
 1130 07f0 00000000 		.word	0
 1131 07f4 04000000 		.word	4
 1132 07f8 FF       		.byte	-1
 1133 07f9 FF       		.byte	-1
 1134 07fa FF       		.byte	-1
 1135 07fb 00       		.space	1
 1136 07fc 000E0E40 		.word	1074662912
 1137 0800 00002000 		.word	2097152
 1138 0804 0B000000 		.word	11
 1139 0808 00000030 		.word	805306368
 1140 080c 00000000 		.word	0
 1141 0810 04000000 		.word	4
 1142 0814 FF       		.byte	-1
 1143 0815 FF       		.byte	-1
 1144 0816 FF       		.byte	-1
 1145 0817 00       		.space	1
 1146 0818 000E0E40 		.word	1074662912
 1147 081c 00000002 		.word	33554432
 1148 0820 0B000000 		.word	11
 1149 0824 00000008 		.word	134217728
 1150 0828 00000000 		.word	0
 1151 082c 04000000 		.word	4
 1152 0830 FF       		.byte	-1
 1153 0831 FF       		.byte	-1
 1154 0832 FF       		.byte	-1
 1155 0833 00       		.space	1
 1156 0834 000E0E40 		.word	1074662912
 1157 0838 00000004 		.word	67108864
 1158 083c 0B000000 		.word	11
 1159 0840 00000008 		.word	134217728
 1160 0844 00000000 		.word	0
 1161 0848 04000000 		.word	4
ARM GAS  /tmp/ccK4hN4X.s 			page 22


 1162 084c FF       		.byte	-1
 1163 084d FF       		.byte	-1
 1164 084e FF       		.byte	-1
 1165 084f 00       		.space	1
 1166 0850 000E0E40 		.word	1074662912
 1167 0854 00000008 		.word	134217728
 1168 0858 0B000000 		.word	11
 1169 085c 00000008 		.word	134217728
 1170 0860 00000000 		.word	0
 1171 0864 04000000 		.word	4
 1172 0868 FF       		.byte	-1
 1173 0869 FF       		.byte	-1
 1174 086a FF       		.byte	-1
 1175 086b 00       		.space	1
 1176 086c 000E0E40 		.word	1074662912
 1177 0870 00000010 		.word	268435456
 1178 0874 0B000000 		.word	11
 1179 0878 00000008 		.word	134217728
 1180 087c 00000000 		.word	0
 1181 0880 04000000 		.word	4
 1182 0884 FF       		.byte	-1
 1183 0885 FF       		.byte	-1
 1184 0886 FF       		.byte	-1
 1185 0887 00       		.space	1
 1186 0888 00100E40 		.word	1074663424
 1187 088c 00008000 		.word	8388608
 1188 0890 0C000000 		.word	12
 1189 0894 00000010 		.word	268435456
 1190 0898 00000000 		.word	0
 1191 089c 04000000 		.word	4
 1192 08a0 FF       		.byte	-1
 1193 08a1 FF       		.byte	-1
 1194 08a2 FF       		.byte	-1
 1195 08a3 00       		.space	1
 1196 08a4 000E0E40 		.word	1074662912
 1197 08a8 00000600 		.word	393216
 1198 08ac 0B000000 		.word	11
 1199 08b0 00000008 		.word	134217728
 1200 08b4 00000000 		.word	0
 1201 08b8 05000000 		.word	5
 1202 08bc FF       		.byte	-1
 1203 08bd FF       		.byte	-1
 1204 08be FF       		.byte	-1
 1205 08bf 00       		.space	1
 1206 08c0 00100E40 		.word	1074663424
 1207 08c4 00300000 		.word	12288
 1208 08c8 0C000000 		.word	12
 1209 08cc 00000008 		.word	134217728
 1210 08d0 00000000 		.word	0
 1211 08d4 05000000 		.word	5
 1212 08d8 FF       		.byte	-1
 1213 08d9 FF       		.byte	-1
 1214 08da FF       		.byte	-1
 1215 08db 00       		.space	1
 1216 08dc 000E0E40 		.word	1074662912
 1217 08e0 00030000 		.word	768
 1218 08e4 0B000000 		.word	11
ARM GAS  /tmp/ccK4hN4X.s 			page 23


 1219 08e8 00000008 		.word	134217728
 1220 08ec 00000000 		.word	0
 1221 08f0 05000000 		.word	5
 1222 08f4 FF       		.byte	-1
 1223 08f5 FF       		.byte	-1
 1224 08f6 FF       		.byte	-1
 1225 08f7 00       		.space	1
 1226 08f8 000E0E40 		.word	1074662912
 1227 08fc 000C0000 		.word	3072
 1228 0900 0B000000 		.word	11
 1229 0904 00000008 		.word	134217728
 1230 0908 00000000 		.word	0
 1231 090c 05000000 		.word	5
 1232 0910 FF       		.byte	-1
 1233 0911 FF       		.byte	-1
 1234 0912 FF       		.byte	-1
 1235 0913 00       		.space	1
 1236 0914 000E0E40 		.word	1074662912
 1237 0918 00300000 		.word	12288
 1238 091c 0B000000 		.word	11
 1239 0920 00000008 		.word	134217728
 1240 0924 00000000 		.word	0
 1241 0928 05000000 		.word	5
 1242 092c FF       		.byte	-1
 1243 092d FF       		.byte	-1
 1244 092e FF       		.byte	-1
 1245 092f 00       		.space	1
 1246 0930 00140E40 		.word	1074664448
 1247 0934 30000000 		.word	48
 1248 0938 0E000000 		.word	14
 1249 093c 00000010 		.word	268435456
 1250 0940 00000000 		.word	0
 1251 0944 05000000 		.word	5
 1252 0948 FF       		.byte	-1
 1253 0949 FF       		.byte	-1
 1254 094a FF       		.byte	-1
 1255 094b 00       		.space	1
 1256 094c 00100E40 		.word	1074663424
 1257 0950 000C0000 		.word	3072
 1258 0954 0C000000 		.word	12
 1259 0958 00000008 		.word	134217728
 1260 095c 00000000 		.word	0
 1261 0960 04000000 		.word	4
 1262 0964 FF       		.byte	-1
 1263 0965 FF       		.byte	-1
 1264 0966 FF       		.byte	-1
 1265 0967 00       		.space	1
 1266 0968 00100E40 		.word	1074663424
 1267 096c 00002000 		.word	2097152
 1268 0970 0C000000 		.word	12
 1269 0974 00000010 		.word	268435456
 1270 0978 00000000 		.word	0
 1271 097c 04000000 		.word	4
 1272 0980 FF       		.byte	-1
 1273 0981 FF       		.byte	-1
 1274 0982 FF       		.byte	-1
 1275 0983 00       		.space	1
ARM GAS  /tmp/ccK4hN4X.s 			page 24


 1276 0984 000E0E40 		.word	1074662912
 1277 0988 00000020 		.word	536870912
 1278 098c 0B000000 		.word	11
 1279 0990 00000008 		.word	134217728
 1280 0994 00000000 		.word	0
 1281 0998 04000000 		.word	4
 1282 099c FF       		.byte	-1
 1283 099d FF       		.byte	-1
 1284 099e FF       		.byte	-1
 1285 099f 00       		.space	1
 1286 09a0 00100E40 		.word	1074663424
 1287 09a4 00800000 		.word	32768
 1288 09a8 0C000000 		.word	12
 1289 09ac 00000008 		.word	134217728
 1290 09b0 00000000 		.word	0
 1291 09b4 04000000 		.word	4
 1292 09b8 FF       		.byte	-1
 1293 09b9 FF       		.byte	-1
 1294 09ba FF       		.byte	-1
 1295 09bb 00       		.space	1
 1296 09bc 00100E40 		.word	1074663424
 1297 09c0 00400000 		.word	16384
 1298 09c4 0C000000 		.word	12
 1299 09c8 00000008 		.word	134217728
 1300 09cc 00000000 		.word	0
 1301 09d0 04000000 		.word	4
 1302 09d4 FF       		.byte	-1
 1303 09d5 FF       		.byte	-1
 1304 09d6 FF       		.byte	-1
 1305 09d7 00       		.space	1
 1306 09d8 000E0E40 		.word	1074662912
 1307 09dc 03000000 		.word	3
 1308 09e0 0B000000 		.word	11
 1309 09e4 00000008 		.word	134217728
 1310 09e8 00000000 		.word	0
 1311 09ec 05000000 		.word	5
 1312 09f0 FF       		.byte	-1
 1313 09f1 FF       		.byte	-1
 1314 09f2 FF       		.byte	-1
 1315 09f3 00       		.space	1
 1316 09f4 00100E40 		.word	1074663424
 1317 09f8 00C00000 		.word	49152
 1318 09fc 0C000000 		.word	12
 1319 0a00 00000008 		.word	134217728
 1320 0a04 00000000 		.word	0
 1321 0a08 05000000 		.word	5
 1322 0a0c FF       		.byte	-1
 1323 0a0d FF       		.byte	-1
 1324 0a0e FF       		.byte	-1
 1325 0a0f 00       		.space	1
 1326 0a10 000E0E40 		.word	1074662912
 1327 0a14 20000000 		.word	32
 1328 0a18 0B000000 		.word	11
 1329 0a1c 00000030 		.word	805306368
 1330 0a20 00000000 		.word	0
 1331 0a24 04000000 		.word	4
 1332 0a28 FF       		.byte	-1
ARM GAS  /tmp/ccK4hN4X.s 			page 25


 1333 0a29 FF       		.byte	-1
 1334 0a2a FF       		.byte	-1
 1335 0a2b 00       		.space	1
 1336 0a2c 00120E40 		.word	1074663936
 1337 0a30 00000008 		.word	134217728
 1338 0a34 0D000000 		.word	13
 1339 0a38 00000030 		.word	805306368
 1340 0a3c 00000000 		.word	0
 1341 0a40 04000000 		.word	4
 1342 0a44 FF       		.byte	-1
 1343 0a45 FF       		.byte	-1
 1344 0a46 FF       		.byte	-1
 1345 0a47 00       		.space	1
 1346 0a48 000E0E40 		.word	1074662912
 1347 0a4c 01000000 		.word	1
 1348 0a50 0B000000 		.word	11
 1349 0a54 00000030 		.word	805306368
 1350 0a58 00000000 		.word	0
 1351 0a5c 04000000 		.word	4
 1352 0a60 FF       		.byte	-1
 1353 0a61 FF       		.byte	-1
 1354 0a62 FF       		.byte	-1
 1355 0a63 00       		.space	1
 1356 0a64 000E0E40 		.word	1074662912
 1357 0a68 02000000 		.word	2
 1358 0a6c 0B000000 		.word	11
 1359 0a70 00000030 		.word	805306368
 1360 0a74 00000000 		.word	0
 1361 0a78 04000000 		.word	4
 1362 0a7c FF       		.byte	-1
 1363 0a7d FF       		.byte	-1
 1364 0a7e FF       		.byte	-1
 1365 0a7f 00       		.space	1
 1366 0a80 00120E40 		.word	1074663936
 1367 0a84 00080000 		.word	2048
 1368 0a88 0D000000 		.word	13
 1369 0a8c 00000030 		.word	805306368
 1370 0a90 00000000 		.word	0
 1371 0a94 04000000 		.word	4
 1372 0a98 FF       		.byte	-1
 1373 0a99 FF       		.byte	-1
 1374 0a9a FF       		.byte	-1
 1375 0a9b 00       		.space	1
 1376 0a9c 00120E40 		.word	1074663936
 1377 0aa0 00010000 		.word	256
 1378 0aa4 0D000000 		.word	13
 1379 0aa8 00000010 		.word	268435456
 1380 0aac 00000000 		.word	0
 1381 0ab0 0C000000 		.word	12
 1382 0ab4 FF       		.byte	-1
 1383 0ab5 03       		.byte	3
 1384 0ab6 FF       		.byte	-1
 1385 0ab7 00       		.space	1
 1386 0ab8 00120E40 		.word	1074663936
 1387 0abc 04000000 		.word	4
 1388 0ac0 0D000000 		.word	13
 1389 0ac4 00000010 		.word	268435456
ARM GAS  /tmp/ccK4hN4X.s 			page 26


 1390 0ac8 00000000 		.word	0
 1391 0acc 0C000000 		.word	12
 1392 0ad0 FF       		.byte	-1
 1393 0ad1 00       		.byte	0
 1394 0ad2 FF       		.byte	-1
 1395 0ad3 00       		.space	1
 1396 0ad4 00120E40 		.word	1074663936
 1397 0ad8 40000000 		.word	64
 1398 0adc 0D000000 		.word	13
 1399 0ae0 00000010 		.word	268435456
 1400 0ae4 00000000 		.word	0
 1401 0ae8 0C000000 		.word	12
 1402 0aec FF       		.byte	-1
 1403 0aed 02       		.byte	2
 1404 0aee FF       		.byte	-1
 1405 0aef 00       		.space	1
 1406 0af0 00120E40 		.word	1074663936
 1407 0af4 00001000 		.word	1048576
 1408 0af8 0D000000 		.word	13
 1409 0afc 00000030 		.word	805306368
 1410 0b00 00000000 		.word	0
 1411 0b04 04000000 		.word	4
 1412 0b08 FF       		.byte	-1
 1413 0b09 FF       		.byte	-1
 1414 0b0a FF       		.byte	-1
 1415 0b0b 00       		.space	1
 1416 0b0c 00140E40 		.word	1074664448
 1417 0b10 00020000 		.word	512
 1418 0b14 0E000000 		.word	14
 1419 0b18 00000030 		.word	805306368
 1420 0b1c 00000000 		.word	0
 1421 0b20 04000000 		.word	4
 1422 0b24 FF       		.byte	-1
 1423 0b25 FF       		.byte	-1
 1424 0b26 FF       		.byte	-1
 1425 0b27 00       		.space	1
 1426 0b28 00120E40 		.word	1074663936
 1427 0b2c 00000020 		.word	536870912
 1428 0b30 0D000000 		.word	13
 1429 0b34 00000030 		.word	805306368
 1430 0b38 00000000 		.word	0
 1431 0b3c 04000000 		.word	4
 1432 0b40 FF       		.byte	-1
 1433 0b41 FF       		.byte	-1
 1434 0b42 FF       		.byte	-1
 1435 0b43 00       		.space	1
 1436 0b44 00120E40 		.word	1074663936
 1437 0b48 00000040 		.word	1073741824
 1438 0b4c 0D000000 		.word	13
 1439 0b50 00000030 		.word	805306368
 1440 0b54 00000000 		.word	0
 1441 0b58 04000000 		.word	4
 1442 0b5c FF       		.byte	-1
 1443 0b5d FF       		.byte	-1
 1444 0b5e FF       		.byte	-1
 1445 0b5f 00       		.space	1
 1446 0b60 00120E40 		.word	1074663936
ARM GAS  /tmp/ccK4hN4X.s 			page 27


 1447 0b64 00040000 		.word	1024
 1448 0b68 0D000000 		.word	13
 1449 0b6c 00000030 		.word	805306368
 1450 0b70 00000000 		.word	0
 1451 0b74 04000000 		.word	4
 1452 0b78 FF       		.byte	-1
 1453 0b79 FF       		.byte	-1
 1454 0b7a FF       		.byte	-1
 1455 0b7b 00       		.space	1
 1456 0b7c 00120E40 		.word	1074663936
 1457 0b80 00000010 		.word	268435456
 1458 0b84 0D000000 		.word	13
 1459 0b88 00000030 		.word	805306368
 1460 0b8c 00000000 		.word	0
 1461 0b90 04000000 		.word	4
 1462 0b94 FF       		.byte	-1
 1463 0b95 FF       		.byte	-1
 1464 0b96 FF       		.byte	-1
 1465 0b97 00       		.space	1
 1466 0b98 00100E40 		.word	1074663424
 1467 0b9c 00004000 		.word	4194304
 1468 0ba0 0C000000 		.word	12
 1469 0ba4 00000030 		.word	805306368
 1470 0ba8 00000000 		.word	0
 1471 0bac 04000000 		.word	4
 1472 0bb0 FF       		.byte	-1
 1473 0bb1 FF       		.byte	-1
 1474 0bb2 FF       		.byte	-1
 1475 0bb3 00       		.space	1
 1476 0bb4 00100E40 		.word	1074663424
 1477 0bb8 00008000 		.word	8388608
 1478 0bbc 0C000000 		.word	12
 1479 0bc0 00000030 		.word	805306368
 1480 0bc4 00000000 		.word	0
 1481 0bc8 04000000 		.word	4
 1482 0bcc FF       		.byte	-1
 1483 0bcd FF       		.byte	-1
 1484 0bce FF       		.byte	-1
 1485 0bcf 00       		.space	1
 1486 0bd0 00100E40 		.word	1074663424
 1487 0bd4 00000001 		.word	16777216
 1488 0bd8 0C000000 		.word	12
 1489 0bdc 00000030 		.word	805306368
 1490 0be0 00000000 		.word	0
 1491 0be4 04000000 		.word	4
 1492 0be8 FF       		.byte	-1
 1493 0be9 FF       		.byte	-1
 1494 0bea FF       		.byte	-1
 1495 0beb 00       		.space	1
 1496 0bec 00120E40 		.word	1074663936
 1497 0bf0 10000000 		.word	16
 1498 0bf4 0D000000 		.word	13
 1499 0bf8 00000010 		.word	268435456
 1500 0bfc 00000000 		.word	0
 1501 0c00 0C000000 		.word	12
 1502 0c04 FF       		.byte	-1
 1503 0c05 01       		.byte	1
ARM GAS  /tmp/ccK4hN4X.s 			page 28


 1504 0c06 FF       		.byte	-1
 1505 0c07 00       		.space	1
 1506 0c08 000E0E40 		.word	1074662912
 1507 0c0c 00000800 		.word	524288
 1508 0c10 0B000000 		.word	11
 1509 0c14 00000008 		.word	134217728
 1510 0c18 00000000 		.word	0
 1511 0c1c 04000000 		.word	4
 1512 0c20 FF       		.byte	-1
 1513 0c21 FF       		.byte	-1
 1514 0c22 FF       		.byte	-1
 1515 0c23 00       		.space	1
 1516 0c24 000E0E40 		.word	1074662912
 1517 0c28 0000F001 		.word	32505856
 1518 0c2c 0B000000 		.word	11
 1519 0c30 00000008 		.word	134217728
 1520 0c34 01000000 		.word	1
 1521 0c38 04000000 		.word	4
 1522 0c3c FF       		.byte	-1
 1523 0c3d FF       		.byte	-1
 1524 0c3e FF       		.byte	-1
 1525 0c3f 00       		.space	1
 1526 0c40 00100E40 		.word	1074663424
 1527 0c44 FF030000 		.word	1023
 1528 0c48 0C000000 		.word	12
 1529 0c4c 00000008 		.word	134217728
 1530 0c50 00000000 		.word	0
 1531 0c54 04000000 		.word	4
 1532 0c58 FF       		.byte	-1
 1533 0c59 FF       		.byte	-1
 1534 0c5a FF       		.byte	-1
 1535 0c5b 00       		.space	1
 1536              		.hidden	__dso_handle
 1537              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
