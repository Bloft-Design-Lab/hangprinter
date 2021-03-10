ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN9UARTClassD2Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN9UARTClassD2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN9UARTClassD2Ev, %function
  24              	_ZN9UARTClassD2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN9UARTClassD2Ev, .-_ZN9UARTClassD2Ev
  30              		.weak	_ZN9UARTClassD1Ev
  31              		.thumb_set _ZN9UARTClassD1Ev,_ZN9UARTClassD2Ev
  32 0002 00BF     		.section	.text._ZN10USARTClassD2Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
  33              		.align	1
  34              		.p2align 2,,3
  35              		.weak	_ZN10USARTClassD2Ev
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZN10USARTClassD2Ev, %function
  41              	_ZN10USARTClassD2Ev:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 7047     		bx	lr
  46              		.size	_ZN10USARTClassD2Ev, .-_ZN10USARTClassD2Ev
  47              		.weak	_ZN10USARTClassD1Ev
  48              		.thumb_set _ZN10USARTClassD1Ev,_ZN10USARTClassD2Ev
  49 0002 00BF     		.section	.text.UART0_Handler,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	UART0_Handler
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	UART0_Handler, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 2


  58              	UART0_Handler:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0148     		ldr	r0, .L5
  63 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  64              	.L6:
  65 0006 00BF     		.align	2
  66              	.L5:
  67 0008 00000000 		.word	.LANCHOR0
  68              		.size	UART0_Handler, .-UART0_Handler
  69              		.section	.text.UART1_Handler,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	UART1_Handler
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	UART1_Handler, %function
  78              	UART1_Handler:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 0148     		ldr	r0, .L8
  83 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
  84              	.L9:
  85 0006 00BF     		.align	2
  86              	.L8:
  87 0008 00000000 		.word	.LANCHOR1
  88              		.size	UART1_Handler, .-UART1_Handler
  89              		.section	.text.USART0_Handler,"ax",%progbits
  90              		.align	1
  91              		.p2align 2,,3
  92              		.global	USART0_Handler
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  97              		.type	USART0_Handler, %function
  98              	USART0_Handler:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 0148     		ldr	r0, .L11
 103 0002 FFF7FEBF 		b	_ZN9UARTClass10IrqHandlerEv
 104              	.L12:
 105 0006 00BF     		.align	2
 106              	.L11:
 107 0008 00000000 		.word	.LANCHOR2
 108              		.size	USART0_Handler, .-USART0_Handler
 109              		.section	.text._Z12ConfigurePinRK14PinDescription,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	_Z12ConfigurePinRK14PinDescription
 113              		.syntax unified
 114              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	_Z12ConfigurePinRK14PinDescription, %function
 118              	_Z12ConfigurePinRK14PinDescription:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 0369     		ldr	r3, [r0, #16]
 123 0002 4268     		ldr	r2, [r0, #4]
 124 0004 C168     		ldr	r1, [r0, #12]
 125 0006 0068     		ldr	r0, [r0]
 126 0008 FFF7FEBF 		b	pio_configure
 127              		.size	_Z12ConfigurePinRK14PinDescription, .-_Z12ConfigurePinRK14PinDescription
 128              		.section	.text.init,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	init
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv4-sp-d16
 136              		.type	init, %function
 137              	init:
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140 0000 10B5     		push	{r4, lr}
 141 0002 114C     		ldr	r4, .L16
 142 0004 0023     		movs	r3, #0
 143 0006 4FF4C062 		mov	r2, #1536
 144 000a 2046     		mov	r0, r4
 145 000c 4FF00061 		mov	r1, #134217728
 146 0010 FFF7FEFF 		bl	pio_configure
 147 0014 0121     		movs	r1, #1
 148 0016 0920     		movs	r0, #9
 149 0018 FFF7FEFF 		bl	setPullup
 150 001c FFF7FEFF 		bl	_Z12AnalogInInitv
 151 0020 FFF7FEFF 		bl	_Z13AnalogOutInitv
 152 0024 2046     		mov	r0, r4
 153 0026 0023     		movs	r3, #0
 154 0028 4FF00052 		mov	r2, #536870912
 155 002c 4FF0C051 		mov	r1, #402653184
 156 0030 FFF7FEFF 		bl	pio_configure
 157 0034 2046     		mov	r0, r4
 158 0036 0123     		movs	r3, #1
 159 0038 4FF05C42 		mov	r2, #-603979776
 160 003c 4FF0C051 		mov	r1, #402653184
 161 0040 BDE81040 		pop	{r4, lr}
 162 0044 FFF7FEBF 		b	pio_configure
 163              	.L17:
 164              		.align	2
 165              	.L16:
 166 0048 000E0E40 		.word	1074662912
 167              		.size	init, .-init
 168              		.section	.text._ZN9UARTClassD0Ev,"axG",%progbits,_ZN9UARTClassD5Ev,comdat
 169              		.align	1
 170              		.p2align 2,,3
 171              		.weak	_ZN9UARTClassD0Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	_ZN9UARTClassD0Ev, %function
 177              	_ZN9UARTClassD0Ev:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 10B5     		push	{r4, lr}
 181 0002 2C21     		movs	r1, #44
 182 0004 0446     		mov	r4, r0
 183 0006 FFF7FEFF 		bl	_ZdlPvj
 184 000a 2046     		mov	r0, r4
 185 000c 10BD     		pop	{r4, pc}
 186              		.size	_ZN9UARTClassD0Ev, .-_ZN9UARTClassD0Ev
 187 000e 00BF     		.section	.text._ZN10USARTClassD0Ev,"axG",%progbits,_ZN10USARTClassD5Ev,comdat
 188              		.align	1
 189              		.p2align 2,,3
 190              		.weak	_ZN10USARTClassD0Ev
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	_ZN10USARTClassD0Ev, %function
 196              	_ZN10USARTClassD0Ev:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199 0000 10B5     		push	{r4, lr}
 200 0002 3021     		movs	r1, #48
 201 0004 0446     		mov	r4, r0
 202 0006 FFF7FEFF 		bl	_ZdlPvj
 203 000a 2046     		mov	r0, r4
 204 000c 10BD     		pop	{r4, pc}
 205              		.size	_ZN10USARTClassD0Ev, .-_ZN10USARTClassD0Ev
 206 000e 00BF     		.section	.text.startup._GLOBAL__sub_I_g_APinDescription,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_GLOBAL__sub_I_g_APinDescription, %function
 214              	_GLOBAL__sub_I_g_APinDescription:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 218 0004 DFF8BCB0 		ldr	fp, .L24+36
 219 0008 DFF8BC90 		ldr	r9, .L24+40
 220 000c 244D     		ldr	r5, .L24
 221 000e DFF8BCA0 		ldr	r10, .L24+44
 222 0012 244E     		ldr	r6, .L24+4
 223 0014 244F     		ldr	r7, .L24+8
 224 0016 DFF8B880 		ldr	r8, .L24+48
 225 001a 244C     		ldr	r4, .L24+12
 226 001c 83B0     		sub	sp, sp, #12
 227 001e 5846     		mov	r0, fp
 228 0020 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 5


 229 0024 4846     		mov	r0, r9
 230 0026 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 231 002a 2846     		mov	r0, r5
 232 002c FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 233 0030 5046     		mov	r0, r10
 234 0032 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 235 0036 3046     		mov	r0, r6
 236 0038 FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 237 003c 3846     		mov	r0, r7
 238 003e FFF7FEFF 		bl	_ZN10RingBufferC1Ev
 239 0042 0723     		movs	r3, #7
 240 0044 CDE900B9 		strd	fp, r9, [sp]
 241 0048 DFF88890 		ldr	r9, .L24+52
 242 004c 1849     		ldr	r1, .L24+16
 243 004e 1A46     		mov	r2, r3
 244 0050 4046     		mov	r0, r8
 245 0052 FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 246 0056 2246     		mov	r2, r4
 247 0058 4946     		mov	r1, r9
 248 005a 4046     		mov	r0, r8
 249 005c DFF87880 		ldr	r8, .L24+56
 250 0060 FFF7FEFF 		bl	__aeabi_atexit
 251 0064 2D23     		movs	r3, #45
 252 0066 1A46     		mov	r2, r3
 253 0068 CDE9005A 		strd	r5, r10, [sp]
 254 006c 4046     		mov	r0, r8
 255 006e 1149     		ldr	r1, .L24+20
 256 0070 114D     		ldr	r5, .L24+24
 257 0072 FFF7FEFF 		bl	_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_
 258 0076 2246     		mov	r2, r4
 259 0078 4946     		mov	r1, r9
 260 007a 4046     		mov	r0, r8
 261 007c FFF7FEFF 		bl	__aeabi_atexit
 262 0080 0E23     		movs	r3, #14
 263 0082 1A46     		mov	r2, r3
 264 0084 CDE90067 		strd	r6, r7, [sp]
 265 0088 2846     		mov	r0, r5
 266 008a 0C49     		ldr	r1, .L24+28
 267 008c FFF7FEFF 		bl	_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_
 268 0090 0B49     		ldr	r1, .L24+32
 269 0092 2246     		mov	r2, r4
 270 0094 2846     		mov	r0, r5
 271 0096 03B0     		add	sp, sp, #12
 272              		@ sp needed
 273 0098 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 274 009c FFF7FEBF 		b	__aeabi_atexit
 275              	.L25:
 276              		.align	2
 277              	.L24:
 278 00a0 00000000 		.word	.LANCHOR5
 279 00a4 00000000 		.word	.LANCHOR7
 280 00a8 00000000 		.word	.LANCHOR8
 281 00ac 00000000 		.word	__dso_handle
 282 00b0 00060E40 		.word	1074660864
 283 00b4 00060640 		.word	1074136576
 284 00b8 00000000 		.word	.LANCHOR2
 285 00bc 00000A40 		.word	1074397184
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 6


 286 00c0 00000000 		.word	_ZN10USARTClassD1Ev
 287 00c4 00000000 		.word	.LANCHOR3
 288 00c8 00000000 		.word	.LANCHOR4
 289 00cc 00000000 		.word	.LANCHOR6
 290 00d0 00000000 		.word	.LANCHOR0
 291 00d4 00000000 		.word	_ZN9UARTClassD1Ev
 292 00d8 00000000 		.word	.LANCHOR1
 293              		.size	_GLOBAL__sub_I_g_APinDescription, .-_GLOBAL__sub_I_g_APinDescription
 294              		.section	.init_array,"aw",%init_array
 295              		.align	2
 296 0000 00000000 		.word	_GLOBAL__sub_I_g_APinDescription(target1)
 297              		.global	Serial2
 298              		.global	Serial1
 299              		.global	Serial
 300              		.global	tx_buffer3
 301              		.global	rx_buffer3
 302              		.global	tx_buffer2
 303              		.global	rx_buffer2
 304              		.global	tx_buffer1
 305              		.global	rx_buffer1
 306              		.global	g_APinDescription
 307              		.section	.bss.Serial,"aw",%nobits
 308              		.align	2
 309              		.set	.LANCHOR0,. + 0
 310              		.type	Serial, %object
 311              		.size	Serial, 44
 312              	Serial:
 313 0000 00000000 		.space	44
 313      00000000 
 313      00000000 
 313      00000000 
 313      00000000 
 314              		.section	.bss.Serial1,"aw",%nobits
 315              		.align	2
 316              		.set	.LANCHOR1,. + 0
 317              		.type	Serial1, %object
 318              		.size	Serial1, 44
 319              	Serial1:
 320 0000 00000000 		.space	44
 320      00000000 
 320      00000000 
 320      00000000 
 320      00000000 
 321              		.section	.bss.Serial2,"aw",%nobits
 322              		.align	2
 323              		.set	.LANCHOR2,. + 0
 324              		.type	Serial2, %object
 325              		.size	Serial2, 48
 326              	Serial2:
 327 0000 00000000 		.space	48
 327      00000000 
 327      00000000 
 327      00000000 
 327      00000000 
 328              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 329              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 330              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 7


 331              	_ZL28cpu_irq_prev_interrupt_state:
 332 0000 00       		.space	1
 333              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 334              		.align	2
 335              		.type	_ZL32cpu_irq_critical_section_counter, %object
 336              		.size	_ZL32cpu_irq_critical_section_counter, 4
 337              	_ZL32cpu_irq_critical_section_counter:
 338 0000 00000000 		.space	4
 339              		.section	.bss.rx_buffer1,"aw",%nobits
 340              		.align	2
 341              		.set	.LANCHOR3,. + 0
 342              		.type	rx_buffer1, %object
 343              		.size	rx_buffer1, 520
 344              	rx_buffer1:
 345 0000 00000000 		.space	520
 345      00000000 
 345      00000000 
 345      00000000 
 345      00000000 
 346              		.section	.bss.rx_buffer2,"aw",%nobits
 347              		.align	2
 348              		.set	.LANCHOR5,. + 0
 349              		.type	rx_buffer2, %object
 350              		.size	rx_buffer2, 520
 351              	rx_buffer2:
 352 0000 00000000 		.space	520
 352      00000000 
 352      00000000 
 352      00000000 
 352      00000000 
 353              		.section	.bss.rx_buffer3,"aw",%nobits
 354              		.align	2
 355              		.set	.LANCHOR7,. + 0
 356              		.type	rx_buffer3, %object
 357              		.size	rx_buffer3, 520
 358              	rx_buffer3:
 359 0000 00000000 		.space	520
 359      00000000 
 359      00000000 
 359      00000000 
 359      00000000 
 360              		.section	.bss.tx_buffer1,"aw",%nobits
 361              		.align	2
 362              		.set	.LANCHOR4,. + 0
 363              		.type	tx_buffer1, %object
 364              		.size	tx_buffer1, 520
 365              	tx_buffer1:
 366 0000 00000000 		.space	520
 366      00000000 
 366      00000000 
 366      00000000 
 366      00000000 
 367              		.section	.bss.tx_buffer2,"aw",%nobits
 368              		.align	2
 369              		.set	.LANCHOR6,. + 0
 370              		.type	tx_buffer2, %object
 371              		.size	tx_buffer2, 520
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 8


 372              	tx_buffer2:
 373 0000 00000000 		.space	520
 373      00000000 
 373      00000000 
 373      00000000 
 373      00000000 
 374              		.section	.bss.tx_buffer3,"aw",%nobits
 375              		.align	2
 376              		.set	.LANCHOR8,. + 0
 377              		.type	tx_buffer3, %object
 378              		.size	tx_buffer3, 520
 379              	tx_buffer3:
 380 0000 00000000 		.space	520
 380      00000000 
 380      00000000 
 380      00000000 
 380      00000000 
 381              		.section	.rodata.g_APinDescription,"a",%progbits
 382              		.align	2
 383              		.type	g_APinDescription, %object
 384              		.size	g_APinDescription, 3108
 385              	g_APinDescription:
 386 0000 000E0E40 		.word	1074662912
 387 0004 01000000 		.word	1
 388 0008 09000000 		.word	9
 389 000c 00000010 		.word	268435456
 390 0010 00000000 		.word	0
 391 0014 14000000 		.word	20
 392 0018 FF       		.byte	-1
 393 0019 FF       		.byte	-1
 394 001a 00       		.byte	0
 395 001b 00       		.space	1
 396 001c 000E0E40 		.word	1074662912
 397 0020 02000000 		.word	2
 398 0024 09000000 		.word	9
 399 0028 00000030 		.word	805306368
 400 002c 00000000 		.word	0
 401 0030 04000000 		.word	4
 402 0034 FF       		.byte	-1
 403 0035 FF       		.byte	-1
 404 0036 FF       		.byte	-1
 405 0037 00       		.space	1
 406 0038 000E0E40 		.word	1074662912
 407 003c 04000000 		.word	4
 408 0040 09000000 		.word	9
 409 0044 00000030 		.word	805306368
 410 0048 00000000 		.word	0
 411 004c 04000000 		.word	4
 412 0050 FF       		.byte	-1
 413 0051 FF       		.byte	-1
 414 0052 FF       		.byte	-1
 415 0053 00       		.space	1
 416 0054 000E0E40 		.word	1074662912
 417 0058 08000000 		.word	8
 418 005c 09000000 		.word	9
 419 0060 00000008 		.word	134217728
 420 0064 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 9


 421 0068 04000000 		.word	4
 422 006c FF       		.byte	-1
 423 006d FF       		.byte	-1
 424 006e FF       		.byte	-1
 425 006f 00       		.space	1
 426 0070 000E0E40 		.word	1074662912
 427 0074 10000000 		.word	16
 428 0078 09000000 		.word	9
 429 007c 00000008 		.word	134217728
 430 0080 00000000 		.word	0
 431 0084 04000000 		.word	4
 432 0088 FF       		.byte	-1
 433 0089 FF       		.byte	-1
 434 008a FF       		.byte	-1
 435 008b 00       		.space	1
 436 008c 000E0E40 		.word	1074662912
 437 0090 20000000 		.word	32
 438 0094 09000000 		.word	9
 439 0098 00000018 		.word	402653184
 440 009c 01000000 		.word	1
 441 00a0 04000000 		.word	4
 442 00a4 FF       		.byte	-1
 443 00a5 FF       		.byte	-1
 444 00a6 FF       		.byte	-1
 445 00a7 00       		.space	1
 446 00a8 000E0E40 		.word	1074662912
 447 00ac 40000000 		.word	64
 448 00b0 09000000 		.word	9
 449 00b4 00000018 		.word	402653184
 450 00b8 00000000 		.word	0
 451 00bc 04000000 		.word	4
 452 00c0 FF       		.byte	-1
 453 00c1 FF       		.byte	-1
 454 00c2 FF       		.byte	-1
 455 00c3 00       		.space	1
 456 00c4 000E0E40 		.word	1074662912
 457 00c8 80000000 		.word	128
 458 00cc 09000000 		.word	9
 459 00d0 00000030 		.word	805306368
 460 00d4 00000000 		.word	0
 461 00d8 04000000 		.word	4
 462 00dc FF       		.byte	-1
 463 00dd FF       		.byte	-1
 464 00de FF       		.byte	-1
 465 00df 00       		.space	1
 466 00e0 000E0E40 		.word	1074662912
 467 00e4 00010000 		.word	256
 468 00e8 09000000 		.word	9
 469 00ec 00000030 		.word	805306368
 470 00f0 00000000 		.word	0
 471 00f4 04000000 		.word	4
 472 00f8 FF       		.byte	-1
 473 00f9 FF       		.byte	-1
 474 00fa FF       		.byte	-1
 475 00fb 00       		.space	1
 476 00fc 000E0E40 		.word	1074662912
 477 0100 00020000 		.word	512
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 10


 478 0104 09000000 		.word	9
 479 0108 00000008 		.word	134217728
 480 010c 01000000 		.word	1
 481 0110 04000000 		.word	4
 482 0114 FF       		.byte	-1
 483 0115 FF       		.byte	-1
 484 0116 FF       		.byte	-1
 485 0117 00       		.space	1
 486 0118 000E0E40 		.word	1074662912
 487 011c 00040000 		.word	1024
 488 0120 09000000 		.word	9
 489 0124 00000008 		.word	134217728
 490 0128 00000000 		.word	0
 491 012c 04000000 		.word	4
 492 0130 FF       		.byte	-1
 493 0131 FF       		.byte	-1
 494 0132 FF       		.byte	-1
 495 0133 00       		.space	1
 496 0134 000E0E40 		.word	1074662912
 497 0138 00080000 		.word	2048
 498 013c 09000000 		.word	9
 499 0140 00000008 		.word	134217728
 500 0144 00000000 		.word	0
 501 0148 04000000 		.word	4
 502 014c FF       		.byte	-1
 503 014d FF       		.byte	-1
 504 014e FF       		.byte	-1
 505 014f 00       		.space	1
 506 0150 000E0E40 		.word	1074662912
 507 0154 00100000 		.word	4096
 508 0158 09000000 		.word	9
 509 015c 00000008 		.word	134217728
 510 0160 00000000 		.word	0
 511 0164 04000000 		.word	4
 512 0168 FF       		.byte	-1
 513 0169 FF       		.byte	-1
 514 016a FF       		.byte	-1
 515 016b 00       		.space	1
 516 016c 000E0E40 		.word	1074662912
 517 0170 00200000 		.word	8192
 518 0174 09000000 		.word	9
 519 0178 00000008 		.word	134217728
 520 017c 00000000 		.word	0
 521 0180 04000000 		.word	4
 522 0184 FF       		.byte	-1
 523 0185 FF       		.byte	-1
 524 0186 FF       		.byte	-1
 525 0187 00       		.space	1
 526 0188 000E0E40 		.word	1074662912
 527 018c 00400000 		.word	16384
 528 0190 09000000 		.word	9
 529 0194 00000008 		.word	134217728
 530 0198 00000000 		.word	0
 531 019c 04000000 		.word	4
 532 01a0 FF       		.byte	-1
 533 01a1 FF       		.byte	-1
 534 01a2 FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 11


 535 01a3 00       		.space	1
 536 01a4 000E0E40 		.word	1074662912
 537 01a8 00800000 		.word	32768
 538 01ac 09000000 		.word	9
 539 01b0 00000010 		.word	268435456
 540 01b4 00000000 		.word	0
 541 01b8 14000000 		.word	20
 542 01bc FF       		.byte	-1
 543 01bd FF       		.byte	-1
 544 01be 02       		.byte	2
 545 01bf 00       		.space	1
 546 01c0 000E0E40 		.word	1074662912
 547 01c4 00000100 		.word	65536
 548 01c8 09000000 		.word	9
 549 01cc 00000018 		.word	402653184
 550 01d0 00000000 		.word	0
 551 01d4 0C000000 		.word	12
 552 01d8 FF       		.byte	-1
 553 01d9 02       		.byte	2
 554 01da FF       		.byte	-1
 555 01db 00       		.space	1
 556 01dc 000E0E40 		.word	1074662912
 557 01e0 00000200 		.word	131072
 558 01e4 09000000 		.word	9
 559 01e8 00000028 		.word	671088640
 560 01ec 00000000 		.word	0
 561 01f0 02000000 		.word	2
 562 01f4 00       		.byte	0
 563 01f5 FF       		.byte	-1
 564 01f6 FF       		.byte	-1
 565 01f7 00       		.space	1
 566 01f8 000E0E40 		.word	1074662912
 567 01fc 00000400 		.word	262144
 568 0200 09000000 		.word	9
 569 0204 00000028 		.word	671088640
 570 0208 00000000 		.word	0
 571 020c 02000000 		.word	2
 572 0210 01       		.byte	1
 573 0211 FF       		.byte	-1
 574 0212 FF       		.byte	-1
 575 0213 00       		.space	1
 576 0214 000E0E40 		.word	1074662912
 577 0218 00000800 		.word	524288
 578 021c 09000000 		.word	9
 579 0220 00000010 		.word	268435456
 580 0224 00000000 		.word	0
 581 0228 0C000000 		.word	12
 582 022c FF       		.byte	-1
 583 022d 00       		.byte	0
 584 022e FF       		.byte	-1
 585 022f 00       		.space	1
 586 0230 000E0E40 		.word	1074662912
 587 0234 00001000 		.word	1048576
 588 0238 09000000 		.word	9
 589 023c 00000010 		.word	268435456
 590 0240 00000000 		.word	0
 591 0244 0C000000 		.word	12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 12


 592 0248 FF       		.byte	-1
 593 0249 01       		.byte	1
 594 024a FF       		.byte	-1
 595 024b 00       		.space	1
 596 024c 000E0E40 		.word	1074662912
 597 0250 00002000 		.word	2097152
 598 0254 09000000 		.word	9
 599 0258 00000008 		.word	134217728
 600 025c 01000000 		.word	1
 601 0260 04000000 		.word	4
 602 0264 FF       		.byte	-1
 603 0265 FF       		.byte	-1
 604 0266 FF       		.byte	-1
 605 0267 00       		.space	1
 606 0268 000E0E40 		.word	1074662912
 607 026c 00004000 		.word	4194304
 608 0270 09000000 		.word	9
 609 0274 00000008 		.word	134217728
 610 0278 00000000 		.word	0
 611 027c 04000000 		.word	4
 612 0280 FF       		.byte	-1
 613 0281 FF       		.byte	-1
 614 0282 FF       		.byte	-1
 615 0283 00       		.space	1
 616 0284 000E0E40 		.word	1074662912
 617 0288 00008000 		.word	8388608
 618 028c 09000000 		.word	9
 619 0290 00000008 		.word	134217728
 620 0294 00000000 		.word	0
 621 0298 04000000 		.word	4
 622 029c FF       		.byte	-1
 623 029d FF       		.byte	-1
 624 029e FF       		.byte	-1
 625 029f 00       		.space	1
 626 02a0 000E0E40 		.word	1074662912
 627 02a4 00000001 		.word	16777216
 628 02a8 09000000 		.word	9
 629 02ac 00000030 		.word	805306368
 630 02b0 00000000 		.word	0
 631 02b4 04000000 		.word	4
 632 02b8 FF       		.byte	-1
 633 02b9 FF       		.byte	-1
 634 02ba FF       		.byte	-1
 635 02bb 00       		.space	1
 636 02bc 000E0E40 		.word	1074662912
 637 02c0 00000002 		.word	33554432
 638 02c4 09000000 		.word	9
 639 02c8 00000030 		.word	805306368
 640 02cc 00000000 		.word	0
 641 02d0 04000000 		.word	4
 642 02d4 FF       		.byte	-1
 643 02d5 FF       		.byte	-1
 644 02d6 FF       		.byte	-1
 645 02d7 00       		.space	1
 646 02d8 00100E40 		.word	1074663424
 647 02dc 01000000 		.word	1
 648 02e0 0A000000 		.word	10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 13


 649 02e4 00000018 		.word	402653184
 650 02e8 01000000 		.word	1
 651 02ec 04000000 		.word	4
 652 02f0 FF       		.byte	-1
 653 02f1 FF       		.byte	-1
 654 02f2 FF       		.byte	-1
 655 02f3 00       		.space	1
 656 02f4 00100E40 		.word	1074663424
 657 02f8 02000000 		.word	2
 658 02fc 0A000000 		.word	10
 659 0300 00000018 		.word	402653184
 660 0304 00000000 		.word	0
 661 0308 04000000 		.word	4
 662 030c FF       		.byte	-1
 663 030d FF       		.byte	-1
 664 030e FF       		.byte	-1
 665 030f 00       		.space	1
 666 0310 00100E40 		.word	1074663424
 667 0314 04000000 		.word	4
 668 0318 0A000000 		.word	10
 669 031c 00000030 		.word	805306368
 670 0320 00000000 		.word	0
 671 0324 04000000 		.word	4
 672 0328 FF       		.byte	-1
 673 0329 FF       		.byte	-1
 674 032a FF       		.byte	-1
 675 032b 00       		.space	1
 676 032c 00100E40 		.word	1074663424
 677 0330 08000000 		.word	8
 678 0334 0A000000 		.word	10
 679 0338 00000028 		.word	671088640
 680 033c 00000000 		.word	0
 681 0340 02000000 		.word	2
 682 0344 11       		.byte	17
 683 0345 FF       		.byte	-1
 684 0346 FF       		.byte	-1
 685 0347 00       		.space	1
 686 0348 00100E40 		.word	1074663424
 687 034c 00200000 		.word	8192
 688 0350 0A000000 		.word	10
 689 0354 00000018 		.word	402653184
 690 0358 00000000 		.word	0
 691 035c 04000000 		.word	4
 692 0360 FF       		.byte	-1
 693 0361 FF       		.byte	-1
 694 0362 FF       		.byte	-1
 695 0363 00       		.space	1
 696 0364 00100E40 		.word	1074663424
 697 0368 00400000 		.word	16384
 698 036c 0A000000 		.word	10
 699 0370 00000030 		.word	805306368
 700 0374 00000000 		.word	0
 701 0378 20000000 		.word	32
 702 037c 21       		.byte	33
 703 037d FF       		.byte	-1
 704 037e FF       		.byte	-1
 705 037f 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 14


 706 0380 00120E40 		.word	1074663936
 707 0384 01000000 		.word	1
 708 0388 0B000000 		.word	11
 709 038c 00000030 		.word	805306368
 710 0390 00000000 		.word	0
 711 0394 04000000 		.word	4
 712 0398 0E       		.byte	14
 713 0399 FF       		.byte	-1
 714 039a FF       		.byte	-1
 715 039b 00       		.space	1
 716 039c 00120E40 		.word	1074663936
 717 03a0 02000000 		.word	2
 718 03a4 0B000000 		.word	11
 719 03a8 00000028 		.word	671088640
 720 03ac 00000000 		.word	0
 721 03b0 02000000 		.word	2
 722 03b4 14       		.byte	20
 723 03b5 FF       		.byte	-1
 724 03b6 FF       		.byte	-1
 725 03b7 00       		.space	1
 726 03b8 00120E40 		.word	1074663936
 727 03bc 04000000 		.word	4
 728 03c0 0B000000 		.word	11
 729 03c4 00000030 		.word	805306368
 730 03c8 00000000 		.word	0
 731 03cc 04000000 		.word	4
 732 03d0 FF       		.byte	-1
 733 03d1 FF       		.byte	-1
 734 03d2 FF       		.byte	-1
 735 03d3 00       		.space	1
 736 03d4 00120E40 		.word	1074663936
 737 03d8 08000000 		.word	8
 738 03dc 0B000000 		.word	11
 739 03e0 00000010 		.word	268435456
 740 03e4 00000000 		.word	0
 741 03e8 0C000000 		.word	12
 742 03ec FF       		.byte	-1
 743 03ed 03       		.byte	3
 744 03ee FF       		.byte	-1
 745 03ef 00       		.space	1
 746 03f0 00120E40 		.word	1074663936
 747 03f4 10000000 		.word	16
 748 03f8 0B000000 		.word	11
 749 03fc 00000028 		.word	671088640
 750 0400 00000000 		.word	0
 751 0404 02000000 		.word	2
 752 0408 17       		.byte	23
 753 0409 FF       		.byte	-1
 754 040a FF       		.byte	-1
 755 040b 00       		.space	1
 756 040c 00120E40 		.word	1074663936
 757 0410 20000000 		.word	32
 758 0414 0B000000 		.word	11
 759 0418 00000010 		.word	268435456
 760 041c 00000000 		.word	0
 761 0420 14000000 		.word	20
 762 0424 FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 15


 763 0425 FF       		.byte	-1
 764 0426 0C       		.byte	12
 765 0427 00       		.space	1
 766 0428 00120E40 		.word	1074663936
 767 042c 40000000 		.word	64
 768 0430 0B000000 		.word	11
 769 0434 00000030 		.word	805306368
 770 0438 00000000 		.word	0
 771 043c 04000000 		.word	4
 772 0440 FF       		.byte	-1
 773 0441 FF       		.byte	-1
 774 0442 FF       		.byte	-1
 775 0443 00       		.space	1
 776 0444 00120E40 		.word	1074663936
 777 0448 80000000 		.word	128
 778 044c 0B000000 		.word	11
 779 0450 00000030 		.word	805306368
 780 0454 00000000 		.word	0
 781 0458 04000000 		.word	4
 782 045c FF       		.byte	-1
 783 045d FF       		.byte	-1
 784 045e FF       		.byte	-1
 785 045f 00       		.space	1
 786 0460 00120E40 		.word	1074663936
 787 0464 00010000 		.word	256
 788 0468 0B000000 		.word	11
 789 046c 00000010 		.word	268435456
 790 0470 00000000 		.word	0
 791 0474 14000000 		.word	20
 792 0478 FF       		.byte	-1
 793 0479 FF       		.byte	-1
 794 047a 0E       		.byte	14
 795 047b 00       		.space	1
 796 047c 00120E40 		.word	1074663936
 797 0480 00020000 		.word	512
 798 0484 0B000000 		.word	11
 799 0488 00000030 		.word	805306368
 800 048c 00000000 		.word	0
 801 0490 04000000 		.word	4
 802 0494 FF       		.byte	-1
 803 0495 FF       		.byte	-1
 804 0496 FF       		.byte	-1
 805 0497 00       		.space	1
 806 0498 00120E40 		.word	1074663936
 807 049c 00040000 		.word	1024
 808 04a0 0B000000 		.word	11
 809 04a4 00000030 		.word	805306368
 810 04a8 00000000 		.word	0
 811 04ac 04000000 		.word	4
 812 04b0 FF       		.byte	-1
 813 04b1 FF       		.byte	-1
 814 04b2 FF       		.byte	-1
 815 04b3 00       		.space	1
 816 04b4 00120E40 		.word	1074663936
 817 04b8 00080000 		.word	2048
 818 04bc 0B000000 		.word	11
 819 04c0 00000010 		.word	268435456
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 16


 820 04c4 00000000 		.word	0
 821 04c8 14000000 		.word	20
 822 04cc FF       		.byte	-1
 823 04cd FF       		.byte	-1
 824 04ce 10       		.byte	16
 825 04cf 00       		.space	1
 826 04d0 00120E40 		.word	1074663936
 827 04d4 00100000 		.word	4096
 828 04d8 0B000000 		.word	11
 829 04dc 00000028 		.word	671088640
 830 04e0 00000000 		.word	0
 831 04e4 02000000 		.word	2
 832 04e8 08       		.byte	8
 833 04e9 FF       		.byte	-1
 834 04ea FF       		.byte	-1
 835 04eb 00       		.space	1
 836 04ec 00120E40 		.word	1074663936
 837 04f0 00200000 		.word	8192
 838 04f4 0B000000 		.word	11
 839 04f8 00000028 		.word	671088640
 840 04fc 00000000 		.word	0
 841 0500 02000000 		.word	2
 842 0504 06       		.byte	6
 843 0505 FF       		.byte	-1
 844 0506 FF       		.byte	-1
 845 0507 00       		.space	1
 846 0508 00120E40 		.word	1074663936
 847 050c 00400000 		.word	16384
 848 0510 0B000000 		.word	11
 849 0514 00000030 		.word	805306368
 850 0518 00000000 		.word	0
 851 051c 04000000 		.word	4
 852 0520 FF       		.byte	-1
 853 0521 FF       		.byte	-1
 854 0522 FF       		.byte	-1
 855 0523 00       		.space	1
 856 0524 00120E40 		.word	1074663936
 857 0528 00800000 		.word	32768
 858 052c 0B000000 		.word	11
 859 0530 00000028 		.word	671088640
 860 0534 00000000 		.word	0
 861 0538 02000000 		.word	2
 862 053c 07       		.byte	7
 863 053d FF       		.byte	-1
 864 053e FF       		.byte	-1
 865 053f 00       		.space	1
 866 0540 00120E40 		.word	1074663936
 867 0544 00000100 		.word	65536
 868 0548 0B000000 		.word	11
 869 054c 00000028 		.word	671088640
 870 0550 00000000 		.word	0
 871 0554 04000000 		.word	4
 872 0558 FF       		.byte	-1
 873 0559 FF       		.byte	-1
 874 055a FF       		.byte	-1
 875 055b 00       		.space	1
 876 055c 00120E40 		.word	1074663936
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 17


 877 0560 00000200 		.word	131072
 878 0564 0B000000 		.word	11
 879 0568 00000030 		.word	805306368
 880 056c 00000000 		.word	0
 881 0570 04000000 		.word	4
 882 0574 FF       		.byte	-1
 883 0575 FF       		.byte	-1
 884 0576 FF       		.byte	-1
 885 0577 00       		.space	1
 886 0578 00120E40 		.word	1074663936
 887 057c 00000400 		.word	262144
 888 0580 0B000000 		.word	11
 889 0584 00000030 		.word	805306368
 890 0588 00000000 		.word	0
 891 058c 04000000 		.word	4
 892 0590 FF       		.byte	-1
 893 0591 FF       		.byte	-1
 894 0592 FF       		.byte	-1
 895 0593 00       		.space	1
 896 0594 00120E40 		.word	1074663936
 897 0598 00000800 		.word	524288
 898 059c 0B000000 		.word	11
 899 05a0 00000030 		.word	805306368
 900 05a4 00000000 		.word	0
 901 05a8 04000000 		.word	4
 902 05ac FF       		.byte	-1
 903 05ad FF       		.byte	-1
 904 05ae FF       		.byte	-1
 905 05af 00       		.space	1
 906 05b0 00120E40 		.word	1074663936
 907 05b4 00001000 		.word	1048576
 908 05b8 0B000000 		.word	11
 909 05bc 00000030 		.word	805306368
 910 05c0 00000000 		.word	0
 911 05c4 04000000 		.word	4
 912 05c8 FF       		.byte	-1
 913 05c9 FF       		.byte	-1
 914 05ca FF       		.byte	-1
 915 05cb 00       		.space	1
 916 05cc 00120E40 		.word	1074663936
 917 05d0 00002000 		.word	2097152
 918 05d4 0B000000 		.word	11
 919 05d8 00000028 		.word	671088640
 920 05dc 00000000 		.word	0
 921 05e0 04000000 		.word	4
 922 05e4 FF       		.byte	-1
 923 05e5 FF       		.byte	-1
 924 05e6 FF       		.byte	-1
 925 05e7 00       		.space	1
 926 05e8 00120E40 		.word	1074663936
 927 05ec 00004000 		.word	4194304
 928 05f0 0B000000 		.word	11
 929 05f4 00000028 		.word	671088640
 930 05f8 00000000 		.word	0
 931 05fc 04000000 		.word	4
 932 0600 FF       		.byte	-1
 933 0601 FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 18


 934 0602 FF       		.byte	-1
 935 0603 00       		.space	1
 936 0604 00120E40 		.word	1074663936
 937 0608 00008000 		.word	8388608
 938 060c 0B000000 		.word	11
 939 0610 00000010 		.word	268435456
 940 0614 00000000 		.word	0
 941 0618 14000000 		.word	20
 942 061c FF       		.byte	-1
 943 061d FF       		.byte	-1
 944 061e 06       		.byte	6
 945 061f 00       		.space	1
 946 0620 00120E40 		.word	1074663936
 947 0624 00000001 		.word	16777216
 948 0628 0B000000 		.word	11
 949 062c 00000028 		.word	671088640
 950 0630 00000000 		.word	0
 951 0634 04000000 		.word	4
 952 0638 FF       		.byte	-1
 953 0639 FF       		.byte	-1
 954 063a FF       		.byte	-1
 955 063b 00       		.space	1
 956 063c 00120E40 		.word	1074663936
 957 0640 00000002 		.word	33554432
 958 0644 0B000000 		.word	11
 959 0648 00000030 		.word	805306368
 960 064c 00000000 		.word	0
 961 0650 04000000 		.word	4
 962 0654 FF       		.byte	-1
 963 0655 FF       		.byte	-1
 964 0656 FF       		.byte	-1
 965 0657 00       		.space	1
 966 0658 00120E40 		.word	1074663936
 967 065c 00000004 		.word	67108864
 968 0660 0B000000 		.word	11
 969 0664 00000010 		.word	268435456
 970 0668 00000000 		.word	0
 971 066c 14000000 		.word	20
 972 0670 FF       		.byte	-1
 973 0671 FF       		.byte	-1
 974 0672 08       		.byte	8
 975 0673 00       		.space	1
 976 0674 00120E40 		.word	1074663936
 977 0678 00000008 		.word	134217728
 978 067c 0B000000 		.word	11
 979 0680 00000028 		.word	671088640
 980 0684 00000000 		.word	0
 981 0688 02000000 		.word	2
 982 068c 0D       		.byte	13
 983 068d FF       		.byte	-1
 984 068e FF       		.byte	-1
 985 068f 00       		.space	1
 986 0690 00120E40 		.word	1074663936
 987 0694 00000010 		.word	268435456
 988 0698 0B000000 		.word	11
 989 069c 00000030 		.word	805306368
 990 06a0 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 19


 991 06a4 04000000 		.word	4
 992 06a8 FF       		.byte	-1
 993 06a9 FF       		.byte	-1
 994 06aa FF       		.byte	-1
 995 06ab 00       		.space	1
 996 06ac 00120E40 		.word	1074663936
 997 06b0 00000020 		.word	536870912
 998 06b4 0B000000 		.word	11
 999 06b8 00000028 		.word	671088640
 1000 06bc 00000000 		.word	0
 1001 06c0 02000000 		.word	2
 1002 06c4 09       		.byte	9
 1003 06c5 FF       		.byte	-1
 1004 06c6 FF       		.byte	-1
 1005 06c7 00       		.space	1
 1006 06c8 00120E40 		.word	1074663936
 1007 06cc 00000040 		.word	1073741824
 1008 06d0 0B000000 		.word	11
 1009 06d4 00000028 		.word	671088640
 1010 06d8 00000000 		.word	0
 1011 06dc 02000000 		.word	2
 1012 06e0 0A       		.byte	10
 1013 06e1 FF       		.byte	-1
 1014 06e2 FF       		.byte	-1
 1015 06e3 00       		.space	1
 1016 06e4 00120E40 		.word	1074663936
 1017 06e8 00000080 		.word	-2147483648
 1018 06ec 0B000000 		.word	11
 1019 06f0 00000028 		.word	671088640
 1020 06f4 00000000 		.word	0
 1021 06f8 02000000 		.word	2
 1022 06fc 0B       		.byte	11
 1023 06fd FF       		.byte	-1
 1024 06fe FF       		.byte	-1
 1025 06ff 00       		.space	1
 1026 0700 00140E40 		.word	1074664448
 1027 0704 01000000 		.word	1
 1028 0708 0C000000 		.word	12
 1029 070c 00000030 		.word	805306368
 1030 0710 00000000 		.word	0
 1031 0714 04000000 		.word	4
 1032 0718 FF       		.byte	-1
 1033 0719 FF       		.byte	-1
 1034 071a FF       		.byte	-1
 1035 071b 00       		.space	1
 1036 071c 00140E40 		.word	1074664448
 1037 0720 02000000 		.word	2
 1038 0724 0C000000 		.word	12
 1039 0728 00000030 		.word	805306368
 1040 072c 00000000 		.word	0
 1041 0730 04000000 		.word	4
 1042 0734 FF       		.byte	-1
 1043 0735 FF       		.byte	-1
 1044 0736 FF       		.byte	-1
 1045 0737 00       		.space	1
 1046 0738 00140E40 		.word	1074664448
 1047 073c 04000000 		.word	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 20


 1048 0740 0C000000 		.word	12
 1049 0744 00000030 		.word	805306368
 1050 0748 00000000 		.word	0
 1051 074c 04000000 		.word	4
 1052 0750 FF       		.byte	-1
 1053 0751 FF       		.byte	-1
 1054 0752 FF       		.byte	-1
 1055 0753 00       		.space	1
 1056 0754 00140E40 		.word	1074664448
 1057 0758 08000000 		.word	8
 1058 075c 0C000000 		.word	12
 1059 0760 00000030 		.word	805306368
 1060 0764 00000000 		.word	0
 1061 0768 04000000 		.word	4
 1062 076c FF       		.byte	-1
 1063 076d FF       		.byte	-1
 1064 076e FF       		.byte	-1
 1065 076f 00       		.space	1
 1066 0770 00140E40 		.word	1074664448
 1067 0774 10000000 		.word	16
 1068 0778 0C000000 		.word	12
 1069 077c 00000030 		.word	805306368
 1070 0780 00000000 		.word	0
 1071 0784 04000000 		.word	4
 1072 0788 FF       		.byte	-1
 1073 0789 FF       		.byte	-1
 1074 078a FF       		.byte	-1
 1075 078b 00       		.space	1
 1076 078c 00140E40 		.word	1074664448
 1077 0790 20000000 		.word	32
 1078 0794 0C000000 		.word	12
 1079 0798 00000030 		.word	805306368
 1080 079c 00000000 		.word	0
 1081 07a0 04000000 		.word	4
 1082 07a4 FF       		.byte	-1
 1083 07a5 FF       		.byte	-1
 1084 07a6 FF       		.byte	-1
 1085 07a7 00       		.space	1
 1086 07a8 00140E40 		.word	1074664448
 1087 07ac 40000000 		.word	64
 1088 07b0 0C000000 		.word	12
 1089 07b4 00000030 		.word	805306368
 1090 07b8 00000000 		.word	0
 1091 07bc 04000000 		.word	4
 1092 07c0 FF       		.byte	-1
 1093 07c1 FF       		.byte	-1
 1094 07c2 FF       		.byte	-1
 1095 07c3 00       		.space	1
 1096 07c4 00140E40 		.word	1074664448
 1097 07c8 80000000 		.word	128
 1098 07cc 0C000000 		.word	12
 1099 07d0 00000030 		.word	805306368
 1100 07d4 00000000 		.word	0
 1101 07d8 04000000 		.word	4
 1102 07dc FF       		.byte	-1
 1103 07dd FF       		.byte	-1
 1104 07de FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 21


 1105 07df 00       		.space	1
 1106 07e0 00140E40 		.word	1074664448
 1107 07e4 00010000 		.word	256
 1108 07e8 0C000000 		.word	12
 1109 07ec 00000030 		.word	805306368
 1110 07f0 00000000 		.word	0
 1111 07f4 04000000 		.word	4
 1112 07f8 FF       		.byte	-1
 1113 07f9 FF       		.byte	-1
 1114 07fa FF       		.byte	-1
 1115 07fb 00       		.space	1
 1116 07fc 00140E40 		.word	1074664448
 1117 0800 00020000 		.word	512
 1118 0804 0C000000 		.word	12
 1119 0808 00000030 		.word	805306368
 1120 080c 00000000 		.word	0
 1121 0810 04000000 		.word	4
 1122 0814 FF       		.byte	-1
 1123 0815 FF       		.byte	-1
 1124 0816 FF       		.byte	-1
 1125 0817 00       		.space	1
 1126 0818 00140E40 		.word	1074664448
 1127 081c 00040000 		.word	1024
 1128 0820 0C000000 		.word	12
 1129 0824 00000028 		.word	671088640
 1130 0828 00000000 		.word	0
 1131 082c 04000000 		.word	4
 1132 0830 FF       		.byte	-1
 1133 0831 FF       		.byte	-1
 1134 0832 FF       		.byte	-1
 1135 0833 00       		.space	1
 1136 0834 00140E40 		.word	1074664448
 1137 0838 00080000 		.word	2048
 1138 083c 0C000000 		.word	12
 1139 0840 00000030 		.word	805306368
 1140 0844 00000000 		.word	0
 1141 0848 04000000 		.word	4
 1142 084c FF       		.byte	-1
 1143 084d FF       		.byte	-1
 1144 084e FF       		.byte	-1
 1145 084f 00       		.space	1
 1146 0850 00140E40 		.word	1074664448
 1147 0854 00100000 		.word	4096
 1148 0858 0C000000 		.word	12
 1149 085c 00000030 		.word	805306368
 1150 0860 00000000 		.word	0
 1151 0864 04000000 		.word	4
 1152 0868 FF       		.byte	-1
 1153 0869 FF       		.byte	-1
 1154 086a FF       		.byte	-1
 1155 086b 00       		.space	1
 1156 086c 00140E40 		.word	1074664448
 1157 0870 00200000 		.word	8192
 1158 0874 0C000000 		.word	12
 1159 0878 00000030 		.word	805306368
 1160 087c 00000000 		.word	0
 1161 0880 04000000 		.word	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 22


 1162 0884 FF       		.byte	-1
 1163 0885 FF       		.byte	-1
 1164 0886 FF       		.byte	-1
 1165 0887 00       		.space	1
 1166 0888 00140E40 		.word	1074664448
 1167 088c 00400000 		.word	16384
 1168 0890 0C000000 		.word	12
 1169 0894 00000030 		.word	805306368
 1170 0898 00000000 		.word	0
 1171 089c 04000000 		.word	4
 1172 08a0 FF       		.byte	-1
 1173 08a1 FF       		.byte	-1
 1174 08a2 FF       		.byte	-1
 1175 08a3 00       		.space	1
 1176 08a4 00140E40 		.word	1074664448
 1177 08a8 00800000 		.word	32768
 1178 08ac 0C000000 		.word	12
 1179 08b0 00000030 		.word	805306368
 1180 08b4 00000000 		.word	0
 1181 08b8 04000000 		.word	4
 1182 08bc FF       		.byte	-1
 1183 08bd FF       		.byte	-1
 1184 08be FF       		.byte	-1
 1185 08bf 00       		.space	1
 1186 08c0 00140E40 		.word	1074664448
 1187 08c4 00000100 		.word	65536
 1188 08c8 0C000000 		.word	12
 1189 08cc 00000030 		.word	805306368
 1190 08d0 00000000 		.word	0
 1191 08d4 04000000 		.word	4
 1192 08d8 FF       		.byte	-1
 1193 08d9 FF       		.byte	-1
 1194 08da FF       		.byte	-1
 1195 08db 00       		.space	1
 1196 08dc 00140E40 		.word	1074664448
 1197 08e0 00000200 		.word	131072
 1198 08e4 0C000000 		.word	12
 1199 08e8 00000030 		.word	805306368
 1200 08ec 00000000 		.word	0
 1201 08f0 04000000 		.word	4
 1202 08f4 FF       		.byte	-1
 1203 08f5 FF       		.byte	-1
 1204 08f6 FF       		.byte	-1
 1205 08f7 00       		.space	1
 1206 08f8 00140E40 		.word	1074664448
 1207 08fc 00000400 		.word	262144
 1208 0900 0C000000 		.word	12
 1209 0904 00000030 		.word	805306368
 1210 0908 00000000 		.word	0
 1211 090c 04000000 		.word	4
 1212 0910 FF       		.byte	-1
 1213 0911 FF       		.byte	-1
 1214 0912 FF       		.byte	-1
 1215 0913 00       		.space	1
 1216 0914 00140E40 		.word	1074664448
 1217 0918 00000800 		.word	524288
 1218 091c 0C000000 		.word	12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 23


 1219 0920 00000030 		.word	805306368
 1220 0924 00000000 		.word	0
 1221 0928 04000000 		.word	4
 1222 092c FF       		.byte	-1
 1223 092d FF       		.byte	-1
 1224 092e FF       		.byte	-1
 1225 092f 00       		.space	1
 1226 0930 00140E40 		.word	1074664448
 1227 0934 00001000 		.word	1048576
 1228 0938 0C000000 		.word	12
 1229 093c 00000030 		.word	805306368
 1230 0940 00000000 		.word	0
 1231 0944 04000000 		.word	4
 1232 0948 FF       		.byte	-1
 1233 0949 FF       		.byte	-1
 1234 094a FF       		.byte	-1
 1235 094b 00       		.space	1
 1236 094c 00140E40 		.word	1074664448
 1237 0950 00002000 		.word	2097152
 1238 0954 0C000000 		.word	12
 1239 0958 00000030 		.word	805306368
 1240 095c 00000000 		.word	0
 1241 0960 04000000 		.word	4
 1242 0964 FF       		.byte	-1
 1243 0965 FF       		.byte	-1
 1244 0966 FF       		.byte	-1
 1245 0967 00       		.space	1
 1246 0968 00140E40 		.word	1074664448
 1247 096c 00004000 		.word	4194304
 1248 0970 0C000000 		.word	12
 1249 0974 00000030 		.word	805306368
 1250 0978 00000000 		.word	0
 1251 097c 04000000 		.word	4
 1252 0980 FF       		.byte	-1
 1253 0981 FF       		.byte	-1
 1254 0982 FF       		.byte	-1
 1255 0983 00       		.space	1
 1256 0984 00140E40 		.word	1074664448
 1257 0988 00008000 		.word	8388608
 1258 098c 0C000000 		.word	12
 1259 0990 00000030 		.word	805306368
 1260 0994 00000000 		.word	0
 1261 0998 04000000 		.word	4
 1262 099c FF       		.byte	-1
 1263 099d FF       		.byte	-1
 1264 099e FF       		.byte	-1
 1265 099f 00       		.space	1
 1266 09a0 00140E40 		.word	1074664448
 1267 09a4 00000001 		.word	16777216
 1268 09a8 0C000000 		.word	12
 1269 09ac 00000030 		.word	805306368
 1270 09b0 00000000 		.word	0
 1271 09b4 04000000 		.word	4
 1272 09b8 FF       		.byte	-1
 1273 09b9 FF       		.byte	-1
 1274 09ba FF       		.byte	-1
 1275 09bb 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 24


 1276 09bc 00140E40 		.word	1074664448
 1277 09c0 00000002 		.word	33554432
 1278 09c4 0C000000 		.word	12
 1279 09c8 00000030 		.word	805306368
 1280 09cc 00000000 		.word	0
 1281 09d0 04000000 		.word	4
 1282 09d4 FF       		.byte	-1
 1283 09d5 FF       		.byte	-1
 1284 09d6 FF       		.byte	-1
 1285 09d7 00       		.space	1
 1286 09d8 00140E40 		.word	1074664448
 1287 09dc 00000004 		.word	67108864
 1288 09e0 0C000000 		.word	12
 1289 09e4 00000030 		.word	805306368
 1290 09e8 00000000 		.word	0
 1291 09ec 04000000 		.word	4
 1292 09f0 FF       		.byte	-1
 1293 09f1 FF       		.byte	-1
 1294 09f2 FF       		.byte	-1
 1295 09f3 00       		.space	1
 1296 09f4 00140E40 		.word	1074664448
 1297 09f8 00000008 		.word	134217728
 1298 09fc 0C000000 		.word	12
 1299 0a00 00000030 		.word	805306368
 1300 0a04 00000000 		.word	0
 1301 0a08 04000000 		.word	4
 1302 0a0c FF       		.byte	-1
 1303 0a0d FF       		.byte	-1
 1304 0a0e FF       		.byte	-1
 1305 0a0f 00       		.space	1
 1306 0a10 00140E40 		.word	1074664448
 1307 0a14 00000010 		.word	268435456
 1308 0a18 0C000000 		.word	12
 1309 0a1c 00000030 		.word	805306368
 1310 0a20 00000000 		.word	0
 1311 0a24 04000000 		.word	4
 1312 0a28 FF       		.byte	-1
 1313 0a29 FF       		.byte	-1
 1314 0a2a FF       		.byte	-1
 1315 0a2b 00       		.space	1
 1316 0a2c 00140E40 		.word	1074664448
 1317 0a30 00000020 		.word	536870912
 1318 0a34 0C000000 		.word	12
 1319 0a38 00000028 		.word	671088640
 1320 0a3c 00000000 		.word	0
 1321 0a40 04000000 		.word	4
 1322 0a44 FF       		.byte	-1
 1323 0a45 FF       		.byte	-1
 1324 0a46 FF       		.byte	-1
 1325 0a47 00       		.space	1
 1326 0a48 00140E40 		.word	1074664448
 1327 0a4c 00000040 		.word	1073741824
 1328 0a50 0C000000 		.word	12
 1329 0a54 00000030 		.word	805306368
 1330 0a58 00000000 		.word	0
 1331 0a5c 04000000 		.word	4
 1332 0a60 FF       		.byte	-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 25


 1333 0a61 FF       		.byte	-1
 1334 0a62 FF       		.byte	-1
 1335 0a63 00       		.space	1
 1336 0a64 00140E40 		.word	1074664448
 1337 0a68 00000080 		.word	-2147483648
 1338 0a6c 0C000000 		.word	12
 1339 0a70 00000028 		.word	671088640
 1340 0a74 00000000 		.word	0
 1341 0a78 04000000 		.word	4
 1342 0a7c FF       		.byte	-1
 1343 0a7d FF       		.byte	-1
 1344 0a7e FF       		.byte	-1
 1345 0a7f 00       		.space	1
 1346 0a80 00160E40 		.word	1074664960
 1347 0a84 01000000 		.word	1
 1348 0a88 0D000000 		.word	13
 1349 0a8c 00000028 		.word	671088640
 1350 0a90 00000000 		.word	0
 1351 0a94 04000000 		.word	4
 1352 0a98 FF       		.byte	-1
 1353 0a99 FF       		.byte	-1
 1354 0a9a FF       		.byte	-1
 1355 0a9b 00       		.space	1
 1356 0a9c 00160E40 		.word	1074664960
 1357 0aa0 02000000 		.word	2
 1358 0aa4 0D000000 		.word	13
 1359 0aa8 00000028 		.word	671088640
 1360 0aac 00000000 		.word	0
 1361 0ab0 04000000 		.word	4
 1362 0ab4 FF       		.byte	-1
 1363 0ab5 FF       		.byte	-1
 1364 0ab6 FF       		.byte	-1
 1365 0ab7 00       		.space	1
 1366 0ab8 00160E40 		.word	1074664960
 1367 0abc 04000000 		.word	4
 1368 0ac0 0D000000 		.word	13
 1369 0ac4 00000028 		.word	671088640
 1370 0ac8 00000000 		.word	0
 1371 0acc 04000000 		.word	4
 1372 0ad0 FF       		.byte	-1
 1373 0ad1 FF       		.byte	-1
 1374 0ad2 FF       		.byte	-1
 1375 0ad3 00       		.space	1
 1376 0ad4 00160E40 		.word	1074664960
 1377 0ad8 08000000 		.word	8
 1378 0adc 0D000000 		.word	13
 1379 0ae0 00000028 		.word	671088640
 1380 0ae4 00000000 		.word	0
 1381 0ae8 04000000 		.word	4
 1382 0aec FF       		.byte	-1
 1383 0aed FF       		.byte	-1
 1384 0aee FF       		.byte	-1
 1385 0aef 00       		.space	1
 1386 0af0 00160E40 		.word	1074664960
 1387 0af4 10000000 		.word	16
 1388 0af8 0D000000 		.word	13
 1389 0afc 00000030 		.word	805306368
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 26


 1390 0b00 00000000 		.word	0
 1391 0b04 04000000 		.word	4
 1392 0b08 FF       		.byte	-1
 1393 0b09 FF       		.byte	-1
 1394 0b0a FF       		.byte	-1
 1395 0b0b 00       		.space	1
 1396 0b0c 00160E40 		.word	1074664960
 1397 0b10 20000000 		.word	32
 1398 0b14 0D000000 		.word	13
 1399 0b18 00000030 		.word	805306368
 1400 0b1c 00000000 		.word	0
 1401 0b20 04000000 		.word	4
 1402 0b24 FF       		.byte	-1
 1403 0b25 FF       		.byte	-1
 1404 0b26 FF       		.byte	-1
 1405 0b27 00       		.space	1
 1406 0b28 00100E40 		.word	1074663424
 1407 0b2c 40000000 		.word	64
 1408 0b30 0A000000 		.word	10
 1409 0b34 00000028 		.word	671088640
 1410 0b38 00000000 		.word	0
 1411 0b3c 04000000 		.word	4
 1412 0b40 FF       		.byte	-1
 1413 0b41 FF       		.byte	-1
 1414 0b42 FF       		.byte	-1
 1415 0b43 00       		.space	1
 1416 0b44 00100E40 		.word	1074663424
 1417 0b48 80000000 		.word	128
 1418 0b4c 0A000000 		.word	10
 1419 0b50 00000028 		.word	671088640
 1420 0b54 00000000 		.word	0
 1421 0b58 04000000 		.word	4
 1422 0b5c FF       		.byte	-1
 1423 0b5d FF       		.byte	-1
 1424 0b5e FF       		.byte	-1
 1425 0b5f 00       		.space	1
 1426 0b60 00100E40 		.word	1074663424
 1427 0b64 10000000 		.word	16
 1428 0b68 0A000000 		.word	10
 1429 0b6c 00000028 		.word	671088640
 1430 0b70 00000000 		.word	0
 1431 0b74 04000000 		.word	4
 1432 0b78 FF       		.byte	-1
 1433 0b79 FF       		.byte	-1
 1434 0b7a FF       		.byte	-1
 1435 0b7b 00       		.space	1
 1436 0b7c 00100E40 		.word	1074663424
 1437 0b80 20000000 		.word	32
 1438 0b84 0A000000 		.word	10
 1439 0b88 00000028 		.word	671088640
 1440 0b8c 00000000 		.word	0
 1441 0b90 04000000 		.word	4
 1442 0b94 FF       		.byte	-1
 1443 0b95 FF       		.byte	-1
 1444 0b96 FF       		.byte	-1
 1445 0b97 00       		.space	1
 1446 0b98 000E0E40 		.word	1074662912
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc6ZOXMG.s 			page 27


 1447 0b9c 00000020 		.word	536870912
 1448 0ba0 09000000 		.word	9
 1449 0ba4 00000018 		.word	402653184
 1450 0ba8 00000000 		.word	0
 1451 0bac 04000000 		.word	4
 1452 0bb0 FF       		.byte	-1
 1453 0bb1 FF       		.byte	-1
 1454 0bb2 FF       		.byte	-1
 1455 0bb3 00       		.space	1
 1456 0bb4 000E0E40 		.word	1074662912
 1457 0bb8 000000DC 		.word	-603979776
 1458 0bbc 09000000 		.word	9
 1459 0bc0 00000018 		.word	402653184
 1460 0bc4 01000000 		.word	1
 1461 0bc8 04000000 		.word	4
 1462 0bcc FF       		.byte	-1
 1463 0bcd FF       		.byte	-1
 1464 0bce FF       		.byte	-1
 1465 0bcf 00       		.space	1
 1466 0bd0 000E0E40 		.word	1074662912
 1467 0bd4 18000000 		.word	24
 1468 0bd8 09000000 		.word	9
 1469 0bdc 00000008 		.word	134217728
 1470 0be0 00000000 		.word	0
 1471 0be4 05000000 		.word	5
 1472 0be8 FF       		.byte	-1
 1473 0be9 FF       		.byte	-1
 1474 0bea FF       		.byte	-1
 1475 0beb 00       		.space	1
 1476 0bec 000E0E40 		.word	1074662912
 1477 0bf0 00060000 		.word	1536
 1478 0bf4 09000000 		.word	9
 1479 0bf8 00000008 		.word	134217728
 1480 0bfc 00000000 		.word	0
 1481 0c00 05000000 		.word	5
 1482 0c04 FF       		.byte	-1
 1483 0c05 FF       		.byte	-1
 1484 0c06 FF       		.byte	-1
 1485 0c07 00       		.space	1
 1486 0c08 000E0E40 		.word	1074662912
 1487 0c0c 60000000 		.word	96
 1488 0c10 09000000 		.word	9
 1489 0c14 00000018 		.word	402653184
 1490 0c18 00000000 		.word	0
 1491 0c1c 05000000 		.word	5
 1492 0c20 FF       		.byte	-1
 1493 0c21 FF       		.byte	-1
 1494 0c22 FF       		.byte	-1
 1495 0c23 00       		.space	1
 1496              		.hidden	__dso_handle
 1497              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
