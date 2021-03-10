ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 1


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
  13              		.file	"SharedSpi.cpp"
  14              		.text
  15              		.section	.text._Z32signalThatSspiPinsAreUsedForUartv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z32signalThatSspiPinsAreUsedForUartv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z32signalThatSspiPinsAreUsedForUartv, %function
  24              	_Z32signalThatSspiPinsAreUsedForUartv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 064B     		ldr	r3, .L9
  29 0002 0749     		ldr	r1, .L9+4
  30 0004 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  31 0006 0AB1     		cbz	r2, .L2
  32 0008 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
  33 000a 22B1     		cbz	r2, .L4
  34              	.L2:
  35 000c 0122     		movs	r2, #1
  36 000e 1A70     		strb	r2, [r3]
  37 0010 0A70     		strb	r2, [r1]
  38 0012 0020     		movs	r0, #0
  39 0014 7047     		bx	lr
  40              	.L4:
  41 0016 0120     		movs	r0, #1
  42 0018 7047     		bx	lr
  43              	.L10:
  44 001a 00BF     		.align	2
  45              	.L9:
  46 001c 00000000 		.word	.LANCHOR0
  47 0020 00000000 		.word	.LANCHOR1
  48              		.size	_Z32signalThatSspiPinsAreUsedForUartv, .-_Z32signalThatSspiPinsAreUsedForUartv
  49              		.section	.text.sspi_master_init,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	sspi_master_init
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	sspi_master_init, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 2


  58              	sspi_master_init:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 38B5     		push	{r3, r4, r5, lr}
  62 0002 1D4C     		ldr	r4, .L20
  63 0004 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
  64 0006 0546     		mov	r5, r0
  65 0008 002A     		cmp	r2, #0
  66 000a 2FD1     		bne	.L12
  67 000c 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
  68 000e 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  69 0010 002B     		cmp	r3, #0
  70 0012 14BF     		ite	ne
  71 0014 0321     		movne	r1, #3
  72 0016 0421     		moveq	r1, #4
  73 0018 FFF7FEFF 		bl	pinModeDuet
  74 001c 1748     		ldr	r0, .L20+4
  75 001e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  76 0022 1748     		ldr	r0, .L20+8
  77 0024 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  78 0028 1648     		ldr	r0, .L20+12
  79 002a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  80 002e 0E20     		movs	r0, #14
  81 0030 FFF7FEFF 		bl	pmc_enable_periph_clk
  82 0034 144B     		ldr	r3, .L20+16
  83 0036 154A     		ldr	r2, .L20+20
  84 0038 1548     		ldr	r0, .L20+24
  85 003a 4FF0FF31 		mov	r1, #-1
  86 003e D960     		str	r1, [r3, #12]
  87 0040 AC21     		movs	r1, #172
  88 0042 1960     		str	r1, [r3]
  89 0044 CE21     		movs	r1, #206
  90 0046 5960     		str	r1, [r3, #4]
  91 0048 1268     		ldr	r2, [r2]
  92 004a 1249     		ldr	r1, .L20+28
  93 004c A0FB0202 		umull	r0, r2, r0, r2
  94 0050 920C     		lsrs	r2, r2, #18
  95 0052 1A62     		str	r2, [r3, #32]
  96 0054 4FF4D670 		mov	r0, #428
  97 0058 0122     		movs	r2, #1
  98 005a 1860     		str	r0, [r3]
  99 005c 0A70     		strb	r2, [r1]
 100 005e 2270     		strb	r2, [r4]
 101              	.L14:
 102 0060 0D4B     		ldr	r3, .L20+32
 103 0062 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 104 0064 0BB9     		cbnz	r3, .L11
 105 0066 C023     		movs	r3, #192
 106 0068 AB70     		strb	r3, [r5, #2]
 107              	.L11:
 108 006a 38BD     		pop	{r3, r4, r5, pc}
 109              	.L12:
 110 006c 094B     		ldr	r3, .L20+28
 111 006e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 112 0070 002B     		cmp	r3, #0
 113 0072 F5D1     		bne	.L14
 114 0074 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 3


 115              	.L21:
 116 0076 00BF     		.align	2
 117              	.L20:
 118 0078 00000000 		.word	.LANCHOR0
 119 007c 48030000 		.word	g_APinDescription+840
 120 0080 F4020000 		.word	g_APinDescription+756
 121 0084 D8020000 		.word	g_APinDescription+728
 122 0088 00000A40 		.word	1074397184
 123 008c 00000000 		.word	SystemCoreClock
 124 0090 83DE1B43 		.word	1125899907
 125 0094 00000000 		.word	.LANCHOR2
 126 0098 00000000 		.word	.LANCHOR1
 127              		.size	sspi_master_init, .-sspi_master_init
 128              		.section	.text.sspi_master_setup_device,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	sspi_master_setup_device
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv4-sp-d16
 136              		.type	sspi_master_setup_device, %function
 137              	sspi_master_setup_device:
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140              		@ link register save eliminated.
 141 0000 114B     		ldr	r3, .L34
 142 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 143 0004 FBB1     		cbz	r3, .L31
 144 0006 114B     		ldr	r3, .L34+4
 145 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 146 000a E3B9     		cbnz	r3, .L31
 147 000c 30B4     		push	{r4, r5}
 148 000e 1049     		ldr	r1, .L34+8
 149 0010 104A     		ldr	r2, .L34+12
 150 0012 114C     		ldr	r4, .L34+16
 151 0014 114B     		ldr	r3, .L34+20
 152 0016 A025     		movs	r5, #160
 153 0018 0D60     		str	r5, [r1]
 154 001a 4568     		ldr	r5, [r0, #4]
 155 001c 1268     		ldr	r2, [r2]
 156 001e B2FBF5F2 		udiv	r2, r2, r5
 157 0022 0A62     		str	r2, [r1, #32]
 158 0024 C278     		ldrb	r2, [r0, #3]	@ zero_extendqisi2
 159 0026 12F0020F 		tst	r2, #2
 160 002a 18BF     		it	ne
 161 002c 2346     		movne	r3, r4
 162 002e D207     		lsls	r2, r2, #31
 163 0030 074A     		ldr	r2, .L34+8
 164 0032 58BF     		it	pl
 165 0034 43F48073 		orrpl	r3, r3, #256
 166 0038 0C20     		movs	r0, #12
 167 003a 5021     		movs	r1, #80
 168 003c 5360     		str	r3, [r2, #4]
 169 003e 30BC     		pop	{r4, r5}
 170 0040 1060     		str	r0, [r2]
 171 0042 1160     		str	r1, [r2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 4


 172 0044 7047     		bx	lr
 173              	.L31:
 174 0046 7047     		bx	lr
 175              	.L35:
 176              		.align	2
 177              	.L34:
 178 0048 00000000 		.word	.LANCHOR2
 179 004c 00000000 		.word	.LANCHOR1
 180 0050 00000A40 		.word	1074397184
 181 0054 00000000 		.word	SystemCoreClock
 182 0058 CE000500 		.word	327886
 183 005c CE000400 		.word	262350
 184              		.size	sspi_master_setup_device, .-sspi_master_setup_device
 185              		.section	.text.sspi_select_device,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	sspi_select_device
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	sspi_select_device, %function
 194              	sspi_select_device:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 054B     		ldr	r3, .L42
 199 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 200 0004 13B1     		cbz	r3, .L36
 201 0006 054B     		ldr	r3, .L42+4
 202 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 203 000a 03B1     		cbz	r3, .L41
 204              	.L36:
 205 000c 7047     		bx	lr
 206              	.L41:
 207 000e 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 208 0010 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 209 0012 FFF7FEBF 		b	digitalWrite
 210              	.L43:
 211 0016 00BF     		.align	2
 212              	.L42:
 213 0018 00000000 		.word	.LANCHOR2
 214 001c 00000000 		.word	.LANCHOR1
 215              		.size	sspi_select_device, .-sspi_select_device
 216              		.section	.text.sspi_deselect_device,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	sspi_deselect_device
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	sspi_deselect_device, %function
 225              	sspi_deselect_device:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 0D4B     		ldr	r3, .L56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 5


 229 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 230 0004 BBB1     		cbz	r3, .L44
 231 0006 0D4B     		ldr	r3, .L56+4
 232 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 233 000a A3B9     		cbnz	r3, .L44
 234 000c 70B5     		push	{r4, r5, r6, lr}
 235 000e 0646     		mov	r6, r0
 236 0010 0B4D     		ldr	r5, .L56+8
 237 0012 43F69924 		movw	r4, #15001
 238 0016 01E0     		b	.L47
 239              	.L55:
 240 0018 013C     		subs	r4, r4, #1
 241 001a 04D0     		beq	.L46
 242              	.L47:
 243 001c 2846     		mov	r0, r5
 244 001e FFF7FEFF 		bl	usart_is_tx_empty
 245 0022 0028     		cmp	r0, #0
 246 0024 F8D0     		beq	.L55
 247              	.L46:
 248 0026 7178     		ldrb	r1, [r6, #1]	@ zero_extendqisi2
 249 0028 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 250 002a 81F00101 		eor	r1, r1, #1
 251 002e BDE87040 		pop	{r4, r5, r6, lr}
 252 0032 FFF7FEBF 		b	digitalWrite
 253              	.L44:
 254 0036 7047     		bx	lr
 255              	.L57:
 256              		.align	2
 257              	.L56:
 258 0038 00000000 		.word	.LANCHOR2
 259 003c 00000000 		.word	.LANCHOR1
 260 0040 00000A40 		.word	1074397184
 261              		.size	sspi_deselect_device, .-sspi_deselect_device
 262              		.section	.text.sspi_transceive_packet,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	sspi_transceive_packet
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 270              		.type	sspi_transceive_packet, %function
 271              	sspi_transceive_packet:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274 0000 254B     		ldr	r3, .L93
 275 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 276 0004 B3B3     		cbz	r3, .L88
 277 0006 254B     		ldr	r3, .L93+4
 278 0008 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 279 000c 1E78     		ldrb	r6, [r3]	@ zero_extendqisi2
 280 000e 46BB     		cbnz	r6, .L61
 281 0010 0F46     		mov	r7, r1
 282 0012 9246     		mov	r10, r2
 283 0014 22B3     		cbz	r2, .L62
 284 0016 DFF88890 		ldr	r9, .L93+8
 285 001a 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 6


 286              	.L69:
 287 001c 25B3     		cbz	r5, .L73
 288 001e 95F80080 		ldrb	r8, [r5]	@ zero_extendqisi2
 289 0022 0135     		adds	r5, r5, #1
 290              	.L63:
 291 0024 43F69824 		movw	r4, #15000
 292 0028 01E0     		b	.L65
 293              	.L89:
 294 002a 013C     		subs	r4, r4, #1
 295 002c 1FD0     		beq	.L67
 296              	.L65:
 297 002e 1C48     		ldr	r0, .L93+8
 298 0030 FFF7FEFF 		bl	usart_is_tx_ready
 299 0034 0028     		cmp	r0, #0
 300 0036 F8D0     		beq	.L89
 301 0038 C9F81C80 		str	r8, [r9, #28]
 302 003c 6FB1     		cbz	r7, .L72
 303 003e 43F69824 		movw	r4, #15000
 304 0042 01E0     		b	.L68
 305              	.L90:
 306 0044 013C     		subs	r4, r4, #1
 307 0046 12D0     		beq	.L67
 308              	.L68:
 309 0048 1548     		ldr	r0, .L93+8
 310 004a FFF7FEFF 		bl	usart_is_rx_ready
 311 004e 0028     		cmp	r0, #0
 312 0050 F8D0     		beq	.L90
 313 0052 D9F81830 		ldr	r3, [r9, #24]
 314 0056 3B70     		strb	r3, [r7]
 315 0058 0137     		adds	r7, r7, #1
 316              	.L72:
 317 005a 0136     		adds	r6, r6, #1
 318 005c B245     		cmp	r10, r6
 319 005e DDD1     		bne	.L69
 320              	.L62:
 321 0060 57B1     		cbz	r7, .L91
 322              	.L61:
 323 0062 0020     		movs	r0, #0
 324              	.L84:
 325 0064 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 326              	.L73:
 327 0068 4FF0FF08 		mov	r8, #255
 328 006c DAE7     		b	.L63
 329              	.L67:
 330 006e 0120     		movs	r0, #1
 331 0070 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 332              	.L88:
 333 0074 0020     		movs	r0, #0
 334 0076 7047     		bx	lr
 335              	.L91:
 336 0078 094D     		ldr	r5, .L93+8
 337 007a 43F69924 		movw	r4, #15001
 338 007e 01E0     		b	.L71
 339              	.L92:
 340 0080 013C     		subs	r4, r4, #1
 341 0082 04D0     		beq	.L70
 342              	.L71:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccshfglg.s 			page 7


 343 0084 2846     		mov	r0, r5
 344 0086 FFF7FEFF 		bl	usart_is_tx_empty
 345 008a 0028     		cmp	r0, #0
 346 008c F8D0     		beq	.L92
 347              	.L70:
 348 008e 044B     		ldr	r3, .L93+8
 349 0090 0020     		movs	r0, #0
 350 0092 9B69     		ldr	r3, [r3, #24]
 351 0094 E6E7     		b	.L84
 352              	.L94:
 353 0096 00BF     		.align	2
 354              	.L93:
 355 0098 00000000 		.word	.LANCHOR2
 356 009c 00000000 		.word	.LANCHOR1
 357 00a0 00000A40 		.word	1074397184
 358              		.size	sspi_transceive_packet, .-sspi_transceive_packet
 359              		.section	.bss._ZL11spiInitDone,"aw",%nobits
 360              		.set	.LANCHOR2,. + 0
 361              		.type	_ZL11spiInitDone, %object
 362              		.size	_ZL11spiInitDone, 1
 363              	_ZL11spiInitDone:
 364 0000 00       		.space	1
 365              		.section	.bss._ZL12uartInitDone,"aw",%nobits
 366              		.set	.LANCHOR1,. + 0
 367              		.type	_ZL12uartInitDone, %object
 368              		.size	_ZL12uartInitDone, 1
 369              	_ZL12uartInitDone:
 370 0000 00       		.space	1
 371              		.section	.bss._ZL13commsInitDone,"aw",%nobits
 372              		.set	.LANCHOR0,. + 0
 373              		.type	_ZL13commsInitDone, %object
 374              		.size	_ZL13commsInitDone, 1
 375              	_ZL13commsInitDone:
 376 0000 00       		.space	1
 377              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 378              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 379              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 380              	_ZL28cpu_irq_prev_interrupt_state:
 381 0000 00       		.space	1
 382              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 383              		.align	2
 384              		.type	_ZL32cpu_irq_critical_section_counter, %object
 385              		.size	_ZL32cpu_irq_critical_section_counter, 4
 386              	_ZL32cpu_irq_critical_section_counter:
 387 0000 00000000 		.space	4
 388              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
