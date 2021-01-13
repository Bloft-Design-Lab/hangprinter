ARM GAS  /tmp/cc8xJyMT.s 			page 1


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
  13              		.file	"WiFiInterface.cpp"
  14              		.section	.text._ZN16NetworkInterface9InterruptEv,"axG",%progbits,_ZN16NetworkInterface9InterruptEv
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN16NetworkInterface9InterruptEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN16NetworkInterface9InterruptEv, %function
  23              	_ZN16NetworkInterface9InterruptEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN16NetworkInterface9InterruptEv, .-_ZN16NetworkInterface9InterruptEv
  29 0002 00BF     		.section	.text._ZNK13WiFiInterface14InNetworkStackEv,"axG",%progbits,_ZNK13WiFiInterface14InNetwor
  30              		.align	1
  31              		.p2align 2,,3
  32              		.weak	_ZNK13WiFiInterface14InNetworkStackEv
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNK13WiFiInterface14InNetworkStackEv, %function
  38              	_ZNK13WiFiInterface14InNetworkStackEv:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0020     		movs	r0, #0
  43 0002 7047     		bx	lr
  44              		.size	_ZNK13WiFiInterface14InNetworkStackEv, .-_ZNK13WiFiInterface14InNetworkStackEv
  45              		.section	.text._ZNK13WiFiInterface15IsWiFiInterfaceEv,"axG",%progbits,_ZNK13WiFiInterface15IsWiFiI
  46              		.align	1
  47              		.p2align 2,,3
  48              		.weak	_ZNK13WiFiInterface15IsWiFiInterfaceEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZNK13WiFiInterface15IsWiFiInterfaceEv, %function
  54              	_ZNK13WiFiInterface15IsWiFiInterfaceEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/cc8xJyMT.s 			page 2


  58 0000 0120     		movs	r0, #1
  59 0002 7047     		bx	lr
  60              		.size	_ZNK13WiFiInterface15IsWiFiInterfaceEv, .-_ZNK13WiFiInterface15IsWiFiInterfaceEv
  61              		.section	.text._ZNK13WiFiInterface12GetIPAddressEv,"axG",%progbits,_ZNK13WiFiInterface12GetIPAddre
  62              		.align	1
  63              		.p2align 2,,3
  64              		.weak	_ZNK13WiFiInterface12GetIPAddressEv
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK13WiFiInterface12GetIPAddressEv, %function
  70              	_ZNK13WiFiInterface12GetIPAddressEv:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 5830     		adds	r0, r0, #88
  75 0002 7047     		bx	lr
  76              		.size	_ZNK13WiFiInterface12GetIPAddressEv, .-_ZNK13WiFiInterface12GetIPAddressEv
  77              		.section	.text._ZNK13WiFiInterface13GetMacAddressEv,"axG",%progbits,_ZNK13WiFiInterface13GetMacAdd
  78              		.align	1
  79              		.p2align 2,,3
  80              		.weak	_ZNK13WiFiInterface13GetMacAddressEv
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZNK13WiFiInterface13GetMacAddressEv, %function
  86              	_ZNK13WiFiInterface13GetMacAddressEv:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 6430     		adds	r0, r0, #100
  91 0002 7047     		bx	lr
  92              		.size	_ZNK13WiFiInterface13GetMacAddressEv, .-_ZNK13WiFiInterface13GetMacAddressEv
  93              		.section	.text._ZN10WiFiSocket19TerminateAndDisableEv,"axG",%progbits,_ZN10WiFiSocket19TerminateAn
  94              		.align	1
  95              		.p2align 2,,3
  96              		.weak	_ZN10WiFiSocket19TerminateAndDisableEv
  97              		.syntax unified
  98              		.thumb
  99              		.thumb_func
 100              		.fpu fpv4-sp-d16
 101              		.type	_ZN10WiFiSocket19TerminateAndDisableEv, %function
 102              	_ZN10WiFiSocket19TerminateAndDisableEv:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106 0000 0368     		ldr	r3, [r0]
 107 0002 9B68     		ldr	r3, [r3, #8]
 108 0004 1847     		bx	r3	@ indirect register sibling call
 109              		.size	_ZN10WiFiSocket19TerminateAndDisableEv, .-_ZN10WiFiSocket19TerminateAndDisableEv
 110 0006 00BF     		.section	.text._ZNK13WiFiInterface11EnableStateEv,"ax",%progbits
 111              		.align	1
 112              		.p2align 2,,3
 113              		.global	_ZNK13WiFiInterface11EnableStateEv
 114              		.syntax unified
ARM GAS  /tmp/cc8xJyMT.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZNK13WiFiInterface11EnableStateEv, %function
 119              	_ZNK13WiFiInterface11EnableStateEv:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 90F85430 		ldrb	r3, [r0, #84]	@ zero_extendqisi2
 124 0004 012B     		cmp	r3, #1
 125 0006 09D0     		beq	.L10
 126 0008 042B     		cmp	r3, #4
 127 000a 05D0     		beq	.L11
 128 000c 022B     		cmp	r3, #2
 129 000e 0CBF     		ite	eq
 130 0010 0220     		moveq	r0, #2
 131 0012 4FF0FF30 		movne	r0, #-1
 132 0016 7047     		bx	lr
 133              	.L11:
 134 0018 0120     		movs	r0, #1
 135 001a 7047     		bx	lr
 136              	.L10:
 137 001c 0020     		movs	r0, #0
 138 001e 7047     		bx	lr
 139              		.size	_ZNK13WiFiInterface11EnableStateEv, .-_ZNK13WiFiInterface11EnableStateEv
 140              		.section	.text._ZN13WiFiInterface12SetIPAddressEPKhS1_S1_,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_, %function
 149              	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152              		@ link register save eliminated.
 153 0000 0968     		ldr	r1, [r1]	@ unaligned
 154 0002 8165     		str	r1, [r0, #88]	@ unaligned
 155 0004 1268     		ldr	r2, [r2]	@ unaligned
 156 0006 C265     		str	r2, [r0, #92]	@ unaligned
 157 0008 1B68     		ldr	r3, [r3]	@ unaligned
 158 000a 0366     		str	r3, [r0, #96]	@ unaligned
 159 000c 7047     		bx	lr
 160              		.size	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_, .-_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_
 161 000e 00BF     		.section	.text._ZN13WiFiInterface13SetMacAddressEPKh,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	_ZN13WiFiInterface13SetMacAddressEPKh
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	_ZN13WiFiInterface13SetMacAddressEPKh, %function
 170              	_ZN13WiFiInterface13SetMacAddressEPKh:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc8xJyMT.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 4B1E     		subs	r3, r1, #1
 175 0002 6430     		adds	r0, r0, #100
 176 0004 0531     		adds	r1, r1, #5
 177              	.L15:
 178 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 179 000a 00F8012B 		strb	r2, [r0], #1
 180 000e 8B42     		cmp	r3, r1
 181 0010 F9D1     		bne	.L15
 182 0012 7047     		bx	lr
 183              		.size	_ZN13WiFiInterface13SetMacAddressEPKh, .-_ZN13WiFiInterface13SetMacAddressEPKh
 184              		.section	.text._ZL21EspTransferRequestIsr17CallbackParameter,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZL21EspTransferRequestIsr17CallbackParameter, %function
 192              	_ZL21EspTransferRequestIsr17CallbackParameter:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195              		@ link register save eliminated.
 196 0000 034B     		ldr	r3, .L18
 197 0002 1B68     		ldr	r3, [r3]
 198 0004 0122     		movs	r2, #1
 199 0006 83F85720 		strb	r2, [r3, #87]
 200 000a 5F20     		movs	r0, #95
 201 000c FFF7FEBF 		b	_Z15detachInterruptm
 202              	.L19:
 203              		.align	2
 204              	.L18:
 205 0010 00000000 		.word	.LANCHOR0
 206              		.size	_ZL21EspTransferRequestIsr17CallbackParameter, .-_ZL21EspTransferRequestIsr17CallbackParamet
 207              		.section	.text._ZL15spi_dma_disablev,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv4-sp-d16
 214              		.type	_ZL15spi_dma_disablev, %function
 215              	_ZL15spi_dma_disablev:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218 0000 10B5     		push	{r4, lr}
 219 0002 054C     		ldr	r4, .L22
 220 0004 0121     		movs	r1, #1
 221 0006 2046     		mov	r0, r4
 222 0008 FFF7FEFF 		bl	dmac_channel_disable
 223 000c 2046     		mov	r0, r4
 224 000e 0221     		movs	r1, #2
 225 0010 BDE81040 		pop	{r4, lr}
 226 0014 FFF7FEBF 		b	dmac_channel_disable
 227              	.L23:
 228              		.align	2
ARM GAS  /tmp/cc8xJyMT.s 			page 5


 229              	.L22:
 230 0018 00000C40 		.word	1074528256
 231              		.size	_ZL15spi_dma_disablev, .-_ZL15spi_dma_disablev
 232              		.section	.text._ZN13WiFiInterface4StopEv.part.11,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu fpv4-sp-d16
 239              		.type	_ZN13WiFiInterface4StopEv.part.11, %function
 240              	_ZN13WiFiInterface4StopEv.part.11:
 241              		@ args = 0, pretend = 0, frame = 8
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 10B5     		push	{r4, lr}
 244 0002 82B0     		sub	sp, sp, #8
 245 0004 4FF0FF32 		mov	r2, #-1
 246 0008 0446     		mov	r4, r0
 247 000a 011D     		adds	r1, r0, #4
 248 000c 6846     		mov	r0, sp
 249 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 250 0012 0021     		movs	r1, #0
 251 0014 5E20     		movs	r0, #94
 252 0016 FFF7FEFF 		bl	digitalWrite
 253 001a 0021     		movs	r1, #0
 254 001c 6420     		movs	r0, #100
 255 001e FFF7FEFF 		bl	digitalWrite
 256 0022 5F20     		movs	r0, #95
 257 0024 FFF7FEFF 		bl	_Z15detachInterruptm
 258 0028 0D49     		ldr	r1, .L30
 259 002a 0E4B     		ldr	r3, .L30+4
 260 002c 0E4A     		ldr	r2, .L30+8
 261 002e 4FF40020 		mov	r0, #524288
 262 0032 C1F88000 		str	r0, [r1, #128]
 263 0036 0221     		movs	r1, #2
 264 0038 1960     		str	r1, [r3]
 265 003a 136B     		ldr	r3, [r2, #48]
 266 003c 03F00413 		and	r3, r3, #262148
 267 0040 042B     		cmp	r3, #4
 268 0042 1CBF     		itt	ne
 269 0044 40F20443 		movwne	r3, #1028
 270 0048 D362     		strne	r3, [r2, #44]
 271 004a FFF7FEFF 		bl	_ZL15spi_dma_disablev
 272 004e 0023     		movs	r3, #0
 273 0050 6846     		mov	r0, sp
 274 0052 2365     		str	r3, [r4, #80]
 275 0054 84F85530 		strb	r3, [r4, #85]
 276 0058 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 277 005c 02B0     		add	sp, sp, #8
 278              		@ sp needed
 279 005e 10BD     		pop	{r4, pc}
 280              	.L31:
 281              		.align	2
 282              	.L30:
 283 0060 00E100E0 		.word	-536813312
 284 0064 00800840 		.word	1074298880
 285 0068 00000C40 		.word	1074528256
ARM GAS  /tmp/cc8xJyMT.s 			page 6


 286              		.size	_ZN13WiFiInterface4StopEv.part.11, .-_ZN13WiFiInterface4StopEv.part.11
 287              		.section	.text._ZN13WiFiInterface4ExitEv,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZN13WiFiInterface4ExitEv
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	_ZN13WiFiInterface4ExitEv, %function
 296              	_ZN13WiFiInterface4ExitEv:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 036D     		ldr	r3, [r0, #80]
 301 0002 03B9     		cbnz	r3, .L34
 302 0004 7047     		bx	lr
 303              	.L34:
 304 0006 FFF7FEBF 		b	_ZN13WiFiInterface4StopEv.part.11
 305              		.size	_ZN13WiFiInterface4ExitEv, .-_ZN13WiFiInterface4ExitEv
 306 000a 00BF     		.section	.text._ZN13WiFiInterface15GetNetworkStateERK9StringRef,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	_ZN13WiFiInterface15GetNetworkStateERK9StringRef
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu fpv4-sp-d16
 314              		.type	_ZN13WiFiInterface15GetNetworkStateERK9StringRef, %function
 315              	_ZN13WiFiInterface15GetNetworkStateERK9StringRef:
 316              		@ args = 0, pretend = 0, frame = 16
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318 0000 30B5     		push	{r4, r5, lr}
 319 0002 036D     		ldr	r3, [r0, #80]
 320 0004 85B0     		sub	sp, sp, #20
 321 0006 0D46     		mov	r5, r1
 322 0008 042B     		cmp	r3, #4
 323 000a 32D8     		bhi	.L36
 324 000c DFE803F0 		tbb	[pc, r3]
 325              	.L38:
 326 0010 2A       		.byte	(.L37-.L38)/2
 327 0011 23       		.byte	(.L39-.L38)/2
 328 0012 23       		.byte	(.L39-.L38)/2
 329 0013 0A       		.byte	(.L40-.L38)/2
 330 0014 03       		.byte	(.L41-.L38)/2
 331 0015 00       		.p2align 1
 332              	.L41:
 333 0016 0846     		mov	r0, r1
 334 0018 2049     		ldr	r1, .L51
 335 001a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 336 001e 0120     		movs	r0, #1
 337              	.L42:
 338 0020 05B0     		add	sp, sp, #20
 339              		@ sp needed
 340 0022 30BD     		pop	{r4, r5, pc}
 341              	.L40:
 342 0024 0446     		mov	r4, r0
ARM GAS  /tmp/cc8xJyMT.s 			page 7


 343 0026 1E49     		ldr	r1, .L51+4
 344 0028 2846     		mov	r0, r5
 345 002a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 346 002e 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 347 0032 062B     		cmp	r3, #6
 348 0034 96BF     		itet	ls
 349 0036 1B4A     		ldrls	r2, .L51+8
 350 0038 1B49     		ldrhi	r1, .L51+12
 351 003a 52F82310 		ldrls	r1, [r2, r3, lsl #2]
 352 003e 2846     		mov	r0, r5
 353 0040 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 354 0044 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 355 0048 042B     		cmp	r3, #4
 356 004a 19D0     		beq	.L44
 357 004c 022B     		cmp	r3, #2
 358 004e 17D0     		beq	.L44
 359 0050 0120     		movs	r0, #1
 360 0052 05B0     		add	sp, sp, #20
 361              		@ sp needed
 362 0054 30BD     		pop	{r4, r5, pc}
 363              	.L39:
 364 0056 0846     		mov	r0, r1
 365 0058 1449     		ldr	r1, .L51+16
 366 005a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 367 005e 0120     		movs	r0, #1
 368 0060 05B0     		add	sp, sp, #20
 369              		@ sp needed
 370 0062 30BD     		pop	{r4, r5, pc}
 371              	.L37:
 372 0064 0846     		mov	r0, r1
 373 0066 1249     		ldr	r1, .L51+20
 374 0068 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 375 006c 0120     		movs	r0, #1
 376 006e 05B0     		add	sp, sp, #20
 377              		@ sp needed
 378 0070 30BD     		pop	{r4, r5, pc}
 379              	.L36:
 380 0072 0846     		mov	r0, r1
 381 0074 0F49     		ldr	r1, .L51+24
 382 0076 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 383 007a 0220     		movs	r0, #2
 384 007c 05B0     		add	sp, sp, #20
 385              		@ sp needed
 386 007e 30BD     		pop	{r4, r5, pc}
 387              	.L44:
 388 0080 04F15801 		add	r1, r4, #88
 389 0084 6846     		mov	r0, sp
 390 0086 FFF7FEFF 		bl	_ZN9IP4StringC1EPKh
 391 008a 6B46     		mov	r3, sp
 392 008c 04F18B02 		add	r2, r4, #139
 393 0090 2846     		mov	r0, r5
 394 0092 0949     		ldr	r1, .L51+28
 395 0094 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 396 0098 0120     		movs	r0, #1
 397 009a C1E7     		b	.L42
 398              	.L52:
 399              		.align	2
ARM GAS  /tmp/cc8xJyMT.s 			page 8


 400              	.L51:
 401 009c 4C000000 		.word	.LC3
 402 00a0 6C000000 		.word	.LC4
 403 00a4 00000000 		.word	.LANCHOR1
 404 00a8 00000000 		.word	.LC0
 405 00ac 2C000000 		.word	.LC2
 406 00b0 14000000 		.word	.LC1
 407 00b4 90000000 		.word	.LC6
 408 00b8 7C000000 		.word	.LC5
 409              		.size	_ZN13WiFiInterface15GetNetworkStateERK9StringRef, .-_ZN13WiFiInterface15GetNetworkStateERK9S
 410              		.section	.text._ZN13WiFiInterfaceC2ER8Platform,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	_ZN13WiFiInterfaceC2ER8Platform
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu fpv4-sp-d16
 418              		.type	_ZN13WiFiInterfaceC2ER8Platform, %function
 419              	_ZN13WiFiInterfaceC2ER8Platform:
 420              		@ args = 0, pretend = 0, frame = 0
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 423 0002 0446     		mov	r4, r0
 424 0004 0023     		movs	r3, #0
 425 0006 244A     		ldr	r2, .L58
 426 0008 2448     		ldr	r0, .L58+4
 427 000a 6161     		str	r1, [r4, #20]
 428 000c C4E92B33 		strd	r3, r3, [r4, #172]
 429 0010 2060     		str	r0, [r4]
 430 0012 1460     		str	r4, [r2]
 431 0014 6360     		str	r3, [r4, #4]
 432 0016 E361     		str	r3, [r4, #28]
 433 0018 A4F84A30 		strh	r3, [r4, #74]	@ movhi
 434 001c 84F84C30 		strb	r3, [r4, #76]
 435 0020 2365     		str	r3, [r4, #80]
 436 0022 84F85430 		strb	r3, [r4, #84]
 437 0026 84F85530 		strb	r3, [r4, #85]
 438 002a 84F85630 		strb	r3, [r4, #86]
 439 002e 84F85730 		strb	r3, [r4, #87]
 440 0032 84F8D430 		strb	r3, [r4, #212]
 441 0036 84F8D630 		strb	r3, [r4, #214]
 442 003a 04F12005 		add	r5, r4, #32
 443 003e 04F14007 		add	r7, r4, #64
 444              	.L54:
 445 0042 2820     		movs	r0, #40
 446 0044 FFF7FEFF 		bl	_Znwj
 447 0048 2146     		mov	r1, r4
 448 004a 0646     		mov	r6, r0
 449 004c FFF7FEFF 		bl	_ZN10WiFiSocketC1EP16NetworkInterface
 450 0050 45F8046B 		str	r6, [r5], #4
 451 0054 AF42     		cmp	r7, r5
 452 0056 F4D1     		bne	.L54
 453 0058 114B     		ldr	r3, .L58+8
 454 005a 124A     		ldr	r2, .L58+12
 455 005c 6264     		str	r2, [r4, #68]
 456 005e 03CB     		ldmia	r3!, {r0, r1}
ARM GAS  /tmp/cc8xJyMT.s 			page 9


 457 0060 C4F88B00 		str	r0, [r4, #139]	@ unaligned
 458 0064 0120     		movs	r0, #1
 459 0066 33F80859 		ldrh	r5, [r3], #-8	@ unaligned
 460 006a 84F84D00 		strb	r0, [r4, #77]
 461 006e 0020     		movs	r0, #0
 462 0070 84F84E00 		strb	r0, [r4, #78]
 463 0074 84F84F00 		strb	r0, [r4, #79]
 464 0078 1720     		movs	r0, #23
 465 007a A4F84800 		strh	r0, [r4, #72]	@ movhi
 466 007e C4F88F10 		str	r1, [r4, #143]	@ unaligned
 467 0082 03CB     		ldmia	r3!, {r0, r1}
 468 0084 A4F89350 		strh	r5, [r4, #147]	@ unaligned
 469 0088 C4F8C400 		str	r0, [r4, #196]	@ unaligned
 470 008c A4F8CC50 		strh	r5, [r4, #204]	@ unaligned
 471 0090 C4F8C810 		str	r1, [r4, #200]	@ unaligned
 472 0094 2046     		mov	r0, r4
 473 0096 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 474              	.L59:
 475              		.align	2
 476              	.L58:
 477 0098 00000000 		.word	.LANCHOR0
 478 009c 08000000 		.word	.LANCHOR2+8
 479 00a0 00000000 		.word	.LC7
 480 00a4 50001500 		.word	1376336
 481              		.size	_ZN13WiFiInterfaceC2ER8Platform, .-_ZN13WiFiInterfaceC2ER8Platform
 482              		.global	_ZN13WiFiInterfaceC1ER8Platform
 483              		.thumb_set _ZN13WiFiInterfaceC1ER8Platform,_ZN13WiFiInterfaceC2ER8Platform
 484              		.section	.text._ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef,"ax",%progbits
 485              		.align	1
 486              		.p2align 2,,3
 487              		.global	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 488              		.syntax unified
 489              		.thumb
 490              		.thumb_func
 491              		.fpu fpv4-sp-d16
 492              		.type	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef, %function
 493              	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef:
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 0, uses_anonymous_args = 0
 496              		@ link register save eliminated.
 497 0000 30B4     		push	{r4, r5}
 498 0002 4418     		adds	r4, r0, r1
 499 0004 0B4B     		ldr	r3, .L64
 500 0006 94F84D50 		ldrb	r5, [r4, #77]	@ zero_extendqisi2
 501 000a 53F82130 		ldr	r3, [r3, r1, lsl #2]
 502 000e 1446     		mov	r4, r2
 503 0010 2DB9     		cbnz	r5, .L63
 504 0012 2046     		mov	r0, r4
 505 0014 1A46     		mov	r2, r3
 506 0016 0849     		ldr	r1, .L64+4
 507 0018 30BC     		pop	{r4, r5}
 508 001a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 509              	.L63:
 510 001e 00EB4101 		add	r1, r0, r1, lsl #1
 511 0022 1A46     		mov	r2, r3
 512 0024 2046     		mov	r0, r4
 513 0026 B1F84430 		ldrh	r3, [r1, #68]
ARM GAS  /tmp/cc8xJyMT.s 			page 10


 514 002a 0449     		ldr	r1, .L64+8
 515 002c 30BC     		pop	{r4, r5}
 516 002e FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 517              	.L65:
 518 0032 00BF     		.align	2
 519              	.L64:
 520 0034 00000000 		.word	.LANCHOR3
 521 0038 1C000000 		.word	.LC9
 522 003c 00000000 		.word	.LC8
 523              		.size	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef, .-_ZNK13WiFiInterface17ReportOneProtoc
 524              		.section	.text._ZNK13WiFiInterface15ReportProtocolsERK9StringRef,"ax",%progbits
 525              		.align	1
 526              		.p2align 2,,3
 527              		.global	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef
 528              		.syntax unified
 529              		.thumb
 530              		.thumb_func
 531              		.fpu fpv4-sp-d16
 532              		.type	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef, %function
 533              	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef:
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 0, uses_anonymous_args = 0
 536 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 537 0002 0B68     		ldr	r3, [r1]
 538 0004 0D46     		mov	r5, r1
 539 0006 0024     		movs	r4, #0
 540 0008 0746     		mov	r7, r0
 541 000a 1C70     		strb	r4, [r3]
 542 000c 0A21     		movs	r1, #10
 543 000e 2846     		mov	r0, r5
 544 0010 E6B2     		uxtb	r6, r4
 545 0012 74B1     		cbz	r4, .L68
 546              	.L73:
 547 0014 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 548 0018 2A46     		mov	r2, r5
 549 001a 3146     		mov	r1, r6
 550 001c 3846     		mov	r0, r7
 551 001e FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 552 0022 022C     		cmp	r4, #2
 553 0024 0BD0     		beq	.L72
 554              	.L69:
 555 0026 0134     		adds	r4, r4, #1
 556 0028 0A21     		movs	r1, #10
 557 002a 2846     		mov	r0, r5
 558 002c E6B2     		uxtb	r6, r4
 559 002e 002C     		cmp	r4, #0
 560 0030 F0D1     		bne	.L73
 561              	.L68:
 562 0032 2A46     		mov	r2, r5
 563 0034 2146     		mov	r1, r4
 564 0036 3846     		mov	r0, r7
 565 0038 FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 566 003c F3E7     		b	.L69
 567              	.L72:
 568 003e 0120     		movs	r0, #1
 569 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 570              		.size	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef, .-_ZNK13WiFiInterface15ReportProtocolsERK
ARM GAS  /tmp/cc8xJyMT.s 			page 11


 571 0042 00BF     		.section	.text._ZNK13WiFiInterface22GetProtocolByLocalPortEt,"ax",%progbits
 572              		.align	1
 573              		.p2align 2,,3
 574              		.global	_ZNK13WiFiInterface22GetProtocolByLocalPortEt
 575              		.syntax unified
 576              		.thumb
 577              		.thumb_func
 578              		.fpu fpv4-sp-d16
 579              		.type	_ZNK13WiFiInterface22GetProtocolByLocalPortEt, %function
 580              	_ZNK13WiFiInterface22GetProtocolByLocalPortEt:
 581              		@ args = 0, pretend = 0, frame = 0
 582              		@ frame_needed = 0, uses_anonymous_args = 0
 583              		@ link register save eliminated.
 584 0000 B0F84A30 		ldrh	r3, [r0, #74]
 585 0004 8B42     		cmp	r3, r1
 586 0006 0ED0     		beq	.L76
 587 0008 B0F84430 		ldrh	r3, [r0, #68]
 588 000c 8B42     		cmp	r3, r1
 589 000e 0CD0     		beq	.L77
 590 0010 B0F84630 		ldrh	r3, [r0, #70]
 591 0014 8B42     		cmp	r3, r1
 592 0016 0AD0     		beq	.L78
 593 0018 B0F84800 		ldrh	r0, [r0, #72]
 594 001c 8842     		cmp	r0, r1
 595 001e 0CBF     		ite	eq
 596 0020 0220     		moveq	r0, #2
 597 0022 FF20     		movne	r0, #255
 598 0024 7047     		bx	lr
 599              	.L76:
 600 0026 0320     		movs	r0, #3
 601 0028 7047     		bx	lr
 602              	.L77:
 603 002a 0020     		movs	r0, #0
 604 002c 7047     		bx	lr
 605              	.L78:
 606 002e 0120     		movs	r0, #1
 607 0030 7047     		bx	lr
 608              		.size	_ZNK13WiFiInterface22GetProtocolByLocalPortEt, .-_ZNK13WiFiInterface22GetProtocolByLocalPort
 609              		.section	.text._ZN13WiFiInterface4StopEv,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	_ZN13WiFiInterface4StopEv
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu fpv4-sp-d16
 617              		.type	_ZN13WiFiInterface4StopEv, %function
 618              	_ZN13WiFiInterface4StopEv:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              		@ link register save eliminated.
 622 0000 036D     		ldr	r3, [r0, #80]
 623 0002 03B9     		cbnz	r3, .L82
 624 0004 7047     		bx	lr
 625              	.L82:
 626 0006 FFF7FEBF 		b	_ZN13WiFiInterface4StopEv.part.11
 627              		.size	_ZN13WiFiInterface4StopEv, .-_ZN13WiFiInterface4StopEv
ARM GAS  /tmp/cc8xJyMT.s 			page 12


 628 000a 00BF     		.section	.text._ZN13WiFiInterface23TranslateEspResetReasonEm,"ax",%progbits
 629              		.align	1
 630              		.p2align 2,,3
 631              		.global	_ZN13WiFiInterface23TranslateEspResetReasonEm
 632              		.syntax unified
 633              		.thumb
 634              		.thumb_func
 635              		.fpu fpv4-sp-d16
 636              		.type	_ZN13WiFiInterface23TranslateEspResetReasonEm, %function
 637              	_ZN13WiFiInterface23TranslateEspResetReasonEm:
 638              		@ args = 0, pretend = 0, frame = 0
 639              		@ frame_needed = 0, uses_anonymous_args = 0
 640              		@ link register save eliminated.
 641 0000 0628     		cmp	r0, #6
 642 0002 9ABF     		itte	ls
 643 0004 024B     		ldrls	r3, .L86
 644 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 645 000a 0248     		ldrhi	r0, .L86+4
 646 000c 7047     		bx	lr
 647              	.L87:
 648 000e 00BF     		.align	2
 649              	.L86:
 650 0010 00000000 		.word	.LANCHOR4
 651 0014 00000000 		.word	.LC10
 652              		.size	_ZN13WiFiInterface23TranslateEspResetReasonEm, .-_ZN13WiFiInterface23TranslateEspResetReason
 653              		.section	.text._ZNK13WiFiInterface21TranslateNetworkStateEv,"ax",%progbits
 654              		.align	1
 655              		.p2align 2,,3
 656              		.global	_ZNK13WiFiInterface21TranslateNetworkStateEv
 657              		.syntax unified
 658              		.thumb
 659              		.thumb_func
 660              		.fpu fpv4-sp-d16
 661              		.type	_ZNK13WiFiInterface21TranslateNetworkStateEv, %function
 662              	_ZNK13WiFiInterface21TranslateNetworkStateEv:
 663              		@ args = 0, pretend = 0, frame = 0
 664              		@ frame_needed = 0, uses_anonymous_args = 0
 665              		@ link register save eliminated.
 666 0000 036D     		ldr	r3, [r0, #80]
 667 0002 042B     		cmp	r3, #4
 668 0004 9ABF     		itte	ls
 669 0006 024A     		ldrls	r2, .L91
 670 0008 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 671 000c 0148     		ldrhi	r0, .L91+4
 672 000e 7047     		bx	lr
 673              	.L92:
 674              		.align	2
 675              	.L91:
 676 0010 00000000 		.word	.LANCHOR5
 677 0014 00000000 		.word	.LC11
 678              		.size	_ZNK13WiFiInterface21TranslateNetworkStateEv, .-_ZNK13WiFiInterface21TranslateNetworkStateEv
 679              		.section	.text._ZN13WiFiInterface18TranslateWiFiStateE9WiFiState,"ax",%progbits
 680              		.align	1
 681              		.p2align 2,,3
 682              		.global	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState
 683              		.syntax unified
 684              		.thumb
ARM GAS  /tmp/cc8xJyMT.s 			page 13


 685              		.thumb_func
 686              		.fpu fpv4-sp-d16
 687              		.type	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState, %function
 688              	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState:
 689              		@ args = 0, pretend = 0, frame = 0
 690              		@ frame_needed = 0, uses_anonymous_args = 0
 691              		@ link register save eliminated.
 692 0000 0628     		cmp	r0, #6
 693 0002 9ABF     		itte	ls
 694 0004 024B     		ldrls	r3, .L96
 695 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 696 000a 0248     		ldrhi	r0, .L96+4
 697 000c 7047     		bx	lr
 698              	.L97:
 699 000e 00BF     		.align	2
 700              	.L96:
 701 0010 00000000 		.word	.LANCHOR1
 702 0014 00000000 		.word	.LC0
 703              		.size	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState, .-_ZN13WiFiInterface18TranslateWiFiStateE
 704              		.section	.text._ZN13WiFiInterface19EspRequestsTransferEv,"ax",%progbits
 705              		.align	1
 706              		.p2align 2,,3
 707              		.global	_ZN13WiFiInterface19EspRequestsTransferEv
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu fpv4-sp-d16
 712              		.type	_ZN13WiFiInterface19EspRequestsTransferEv, %function
 713              	_ZN13WiFiInterface19EspRequestsTransferEv:
 714              		@ args = 0, pretend = 0, frame = 0
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716              		@ link register save eliminated.
 717 0000 0123     		movs	r3, #1
 718 0002 80F85730 		strb	r3, [r0, #87]
 719 0006 5F20     		movs	r0, #95
 720 0008 FFF7FEBF 		b	_Z15detachInterruptm
 721              		.size	_ZN13WiFiInterface19EspRequestsTransferEv, .-_ZN13WiFiInterface19EspRequestsTransferEv
 722              		.section	.text._ZN13WiFiInterface16TerminateSocketsEv,"ax",%progbits
 723              		.align	1
 724              		.p2align 2,,3
 725              		.global	_ZN13WiFiInterface16TerminateSocketsEv
 726              		.syntax unified
 727              		.thumb
 728              		.thumb_func
 729              		.fpu fpv4-sp-d16
 730              		.type	_ZN13WiFiInterface16TerminateSocketsEv, %function
 731              	_ZN13WiFiInterface16TerminateSocketsEv:
 732              		@ args = 0, pretend = 0, frame = 0
 733              		@ frame_needed = 0, uses_anonymous_args = 0
 734 0000 38B5     		push	{r3, r4, r5, lr}
 735 0002 00F12004 		add	r4, r0, #32
 736 0006 00F14005 		add	r5, r0, #64
 737              	.L100:
 738 000a 54F8040B 		ldr	r0, [r4], #4
 739 000e 0368     		ldr	r3, [r0]
 740 0010 9B68     		ldr	r3, [r3, #8]
 741 0012 9847     		blx	r3
ARM GAS  /tmp/cc8xJyMT.s 			page 14


 742 0014 AC42     		cmp	r4, r5
 743 0016 F8D1     		bne	.L100
 744 0018 38BD     		pop	{r3, r4, r5, pc}
 745              		.size	_ZN13WiFiInterface16TerminateSocketsEv, .-_ZN13WiFiInterface16TerminateSocketsEv
 746 001a 00BF     		.section	.text._ZN13WiFiInterface16TerminateSocketsEt,"ax",%progbits
 747              		.align	1
 748              		.p2align 2,,3
 749              		.global	_ZN13WiFiInterface16TerminateSocketsEt
 750              		.syntax unified
 751              		.thumb
 752              		.thumb_func
 753              		.fpu fpv4-sp-d16
 754              		.type	_ZN13WiFiInterface16TerminateSocketsEt, %function
 755              	_ZN13WiFiInterface16TerminateSocketsEt:
 756              		@ args = 0, pretend = 0, frame = 0
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758 0000 70B5     		push	{r4, r5, r6, lr}
 759 0002 0E46     		mov	r6, r1
 760 0004 00F11C04 		add	r4, r0, #28
 761 0008 00F13C05 		add	r5, r0, #60
 762 000c 01E0     		b	.L105
 763              	.L104:
 764 000e AC42     		cmp	r4, r5
 765 0010 09D0     		beq	.L108
 766              	.L105:
 767 0012 54F8040F 		ldr	r0, [r4, #4]!
 768 0016 0389     		ldrh	r3, [r0, #8]
 769 0018 B342     		cmp	r3, r6
 770 001a F8D1     		bne	.L104
 771 001c 0368     		ldr	r3, [r0]
 772 001e 9B68     		ldr	r3, [r3, #8]
 773 0020 9847     		blx	r3
 774 0022 AC42     		cmp	r4, r5
 775 0024 F5D1     		bne	.L105
 776              	.L108:
 777 0026 70BD     		pop	{r4, r5, r6, pc}
 778              		.size	_ZN13WiFiInterface16TerminateSocketsEt, .-_ZN13WiFiInterface16TerminateSocketsEt
 779              		.section	.text._ZN13WiFiInterface18UpdateSocketStatusEtt,"ax",%progbits
 780              		.align	1
 781              		.p2align 2,,3
 782              		.global	_ZN13WiFiInterface18UpdateSocketStatusEtt
 783              		.syntax unified
 784              		.thumb
 785              		.thumb_func
 786              		.fpu fpv4-sp-d16
 787              		.type	_ZN13WiFiInterface18UpdateSocketStatusEtt, %function
 788              	_ZN13WiFiInterface18UpdateSocketStatusEtt:
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791              		@ link register save eliminated.
 792 0000 30B4     		push	{r4, r5}
 793 0002 0A43     		orrs	r2, r2, r1
 794 0004 2030     		adds	r0, r0, #32
 795 0006 0023     		movs	r3, #0
 796 0008 0125     		movs	r5, #1
 797              	.L111:
 798 000a 22FA03F4 		lsr	r4, r2, r3
ARM GAS  /tmp/cc8xJyMT.s 			page 15


 799 000e 14F0010F 		tst	r4, #1
 800 0012 18BF     		it	ne
 801 0014 0168     		ldrne	r1, [r0]
 802 0016 03F10103 		add	r3, r3, #1
 803 001a 18BF     		it	ne
 804 001c 81F82450 		strbne	r5, [r1, #36]
 805 0020 082B     		cmp	r3, #8
 806 0022 00F10400 		add	r0, r0, #4
 807 0026 F0D1     		bne	.L111
 808 0028 30BC     		pop	{r4, r5}
 809 002a 7047     		bx	lr
 810              		.size	_ZN13WiFiInterface18UpdateSocketStatusEtt, .-_ZN13WiFiInterface18UpdateSocketStatusEtt
 811              		.section	.text._ZN13WiFiInterface8SetupSpiEv,"ax",%progbits
 812              		.align	1
 813              		.p2align 2,,3
 814              		.global	_ZN13WiFiInterface8SetupSpiEv
 815              		.syntax unified
 816              		.thumb
 817              		.thumb_func
 818              		.fpu fpv4-sp-d16
 819              		.type	_ZN13WiFiInterface8SetupSpiEv, %function
 820              	_ZN13WiFiInterface8SetupSpiEv:
 821              		@ args = 0, pretend = 0, frame = 0
 822              		@ frame_needed = 0, uses_anonymous_args = 0
 823 0000 70B5     		push	{r4, r5, r6, lr}
 824 0002 244C     		ldr	r4, .L119
 825 0004 244D     		ldr	r5, .L119+4
 826 0006 254E     		ldr	r6, .L119+8
 827 0008 1420     		movs	r0, #20
 828 000a FFF7FEFF 		bl	pmc_enable_periph_clk
 829 000e 2046     		mov	r0, r4
 830 0010 FFF7FEFF 		bl	dmac_init
 831 0014 1021     		movs	r1, #16
 832 0016 2046     		mov	r0, r4
 833 0018 FFF7FEFF 		bl	dmac_set_priority_mode
 834 001c 2046     		mov	r0, r4
 835 001e FFF7FEFF 		bl	dmac_enable
 836 0022 4FF48031 		mov	r1, #65536
 837 0026 0020     		movs	r0, #0
 838 0028 FFF7FEFF 		bl	matrix_set_slave_default_master_type
 839 002c 4FF44031 		mov	r1, #196608
 840 0030 0020     		movs	r0, #0
 841 0032 FFF7FEFF 		bl	matrix_set_slave_priority
 842 0036 0821     		movs	r1, #8
 843 0038 0020     		movs	r0, #0
 844 003a FFF7FEFF 		bl	matrix_set_slave_slot_cycle
 845 003e 2846     		mov	r0, r5
 846 0040 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 847 0044 A5F11C00 		sub	r0, r5, #28
 848 0048 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 849 004c A5F13800 		sub	r0, r5, #56
 850 0050 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 851 0054 A5F15400 		sub	r0, r5, #84
 852 0058 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 853 005c 8025     		movs	r5, #128
 854 005e 1320     		movs	r0, #19
 855 0060 FFF7FEFF 		bl	pmc_enable_periph_clk
ARM GAS  /tmp/cc8xJyMT.s 			page 16


 856 0064 FFF7FEFF 		bl	_ZL15spi_dma_disablev
 857 0068 2046     		mov	r0, r4
 858 006a 0D4A     		ldr	r2, .L119+12
 859 006c 3560     		str	r5, [r6]
 860 006e 0221     		movs	r1, #2
 861 0070 FFF7FEFF 		bl	dmac_channel_set_configuration
 862 0074 0B4A     		ldr	r2, .L119+16
 863 0076 0121     		movs	r1, #1
 864 0078 2046     		mov	r0, r4
 865 007a FFF7FEFF 		bl	dmac_channel_set_configuration
 866 007e 0A4B     		ldr	r3, .L119+20
 867 0080 3269     		ldr	r2, [r6, #16]
 868 0082 4FF48071 		mov	r1, #256
 869 0086 4FF40022 		mov	r2, #524288
 870 008a B161     		str	r1, [r6, #24]
 871 008c 83F81353 		strb	r5, [r3, #787]
 872 0090 1A60     		str	r2, [r3]
 873 0092 70BD     		pop	{r4, r5, r6, pc}
 874              	.L120:
 875              		.align	2
 876              	.L119:
 877 0094 00000C40 		.word	1074528256
 878 0098 88010000 		.word	g_APinDescription+392
 879 009c 00800840 		.word	1074298880
 880 00a0 02020120 		.word	536936962
 881 00a4 10200120 		.word	536944656
 882 00a8 00E100E0 		.word	-536813312
 883              		.size	_ZN13WiFiInterface8SetupSpiEv, .-_ZN13WiFiInterface8SetupSpiEv
 884              		.section	.text._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj,"ax",%progbits
 885              		.align	1
 886              		.p2align 2,,3
 887              		.global	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 888              		.syntax unified
 889              		.thumb
 890              		.thumb_func
 891              		.fpu fpv4-sp-d16
 892              		.type	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj, %function
 893              	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj:
 894              		@ args = 16, pretend = 0, frame = 8
 895              		@ frame_needed = 0, uses_anonymous_args = 0
 896 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 897 0004 0E46     		mov	r6, r1
 898 0006 016D     		ldr	r1, [r0, #80]
 899 0008 83B0     		sub	sp, sp, #12
 900 000a 91B9     		cbnz	r1, .L122
 901 000c A54B     		ldr	r3, .L180
 902 000e 9B6C     		ldr	r3, [r3, #72]	@ unaligned
 903 0010 9E07     		lsls	r6, r3, #30
 904 0012 05D4     		bmi	.L172
 905 0014 6FF00505 		mvn	r5, #5
 906 0018 2846     		mov	r0, r5
 907 001a 03B0     		add	sp, sp, #12
 908              		@ sp needed
 909 001c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 910              	.L172:
 911 0020 A148     		ldr	r0, .L180+4
 912 0022 FFF7FEFF 		bl	debugPrintf
ARM GAS  /tmp/cc8xJyMT.s 			page 17


 913 0026 6FF00505 		mvn	r5, #5
 914 002a 2846     		mov	r0, r5
 915 002c 03B0     		add	sp, sp, #12
 916              		@ sp needed
 917 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 918              	.L122:
 919 0032 0446     		mov	r4, r0
 920 0034 9D4D     		ldr	r5, .L180+8
 921 0036 1746     		mov	r7, r2
 922 0038 6846     		mov	r0, sp
 923 003a 4FF0FF32 		mov	r2, #-1
 924 003e 211D     		adds	r1, r4, #4
 925 0040 9946     		mov	r9, r3
 926 0042 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 927 0046 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 928 0048 ABB1     		cbz	r3, .L124
 929 004a 964B     		ldr	r3, .L180
 930 004c 9B6C     		ldr	r3, [r3, #72]
 931 004e 9D07     		lsls	r5, r3, #30
 932 0050 0DD4     		bmi	.L173
 933              	.L125:
 934 0052 D4F8B830 		ldr	r3, [r4, #184]
 935 0056 0133     		adds	r3, r3, #1
 936 0058 C4F8B830 		str	r3, [r4, #184]
 937 005c 6FF00705 		mvn	r5, #7
 938              	.L126:
 939 0060 6846     		mov	r0, sp
 940 0062 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 941 0066 2846     		mov	r0, r5
 942 0068 03B0     		add	sp, sp, #12
 943              		@ sp needed
 944 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 945              	.L173:
 946 006e 9048     		ldr	r0, .L180+12
 947 0070 FFF7FEFF 		bl	debugPrintf
 948 0074 EDE7     		b	.L125
 949              	.L124:
 950 0076 FFF7FEFF 		bl	millis
 951 007a 8046     		mov	r8, r0
 952              	.L129:
 953 007c 5F20     		movs	r0, #95
 954 007e FFF7FEFF 		bl	digitalRead
 955 0082 18B1     		cbz	r0, .L130
 956 0084 0B20     		movs	r0, #11
 957 0086 FFF7FEFF 		bl	digitalRead
 958 008a A8B9     		cbnz	r0, .L174
 959              	.L130:
 960 008c FFF7FEFF 		bl	millis
 961 0090 A0EB0800 		sub	r0, r0, r8
 962 0094 6428     		cmp	r0, #100
 963 0096 F1D9     		bls	.L129
 964 0098 824B     		ldr	r3, .L180
 965 009a 9B6C     		ldr	r3, [r3, #72]
 966 009c 9807     		lsls	r0, r3, #30
 967 009e 07D4     		bmi	.L175
 968              	.L133:
 969 00a0 D4F8BC30 		ldr	r3, [r4, #188]
ARM GAS  /tmp/cc8xJyMT.s 			page 18


 970 00a4 0133     		adds	r3, r3, #1
 971 00a6 C4F8BC30 		str	r3, [r4, #188]
 972 00aa 6FF00705 		mvn	r5, #7
 973 00ae D7E7     		b	.L126
 974              	.L175:
 975 00b0 7F48     		ldr	r0, .L180+12
 976 00b2 FFF7FEFF 		bl	debugPrintf
 977 00b6 F3E7     		b	.L133
 978              	.L174:
 979 00b8 7E48     		ldr	r0, .L180+16
 980 00ba 0D99     		ldr	r1, [sp, #52]
 981 00bc 8180     		strh	r1, [r0, #4]	@ movhi
 982 00be 0023     		movs	r3, #0
 983 00c0 8360     		str	r3, [r0, #8]
 984 00c2 0C9B     		ldr	r3, [sp, #48]
 985 00c4 0F99     		ldr	r1, [sp, #60]
 986 00c6 4670     		strb	r6, [r0, #1]
 987 00c8 3E22     		movs	r2, #62
 988 00ca 8770     		strb	r7, [r0, #2]
 989 00cc 80F80390 		strb	r9, [r0, #3]
 990 00d0 C180     		strh	r1, [r0, #6]	@ movhi
 991 00d2 0270     		strb	r2, [r0]
 992 00d4 23B1     		cbz	r3, .L132
 993 00d6 0C30     		adds	r0, r0, #12
 994 00d8 DDE90C12 		ldrd	r1, r2, [sp, #48]
 995 00dc FFF7FEFF 		bl	memcpy
 996              	.L132:
 997 00e0 DFF8FCB1 		ldr	fp, .L180+60
 998 00e4 DFF8FCA1 		ldr	r10, .L180+64
 999 00e8 DFF8FC81 		ldr	r8, .L180+68
 1000 00ec 4FF00109 		mov	r9, #1
 1001 00f0 8023     		movs	r3, #128
 1002 00f2 0022     		movs	r2, #0
 1003 00f4 C921     		movs	r1, #201
 1004 00f6 5846     		mov	r0, fp
 1005 00f8 8AF80010 		strb	r1, [r10]
 1006 00fc 85F80090 		strb	r9, [r5]
 1007 0100 1146     		mov	r1, r2
 1008 0102 CBF80030 		str	r3, [fp]
 1009 0106 FFF7FEFF 		bl	spi_set_bits_per_transfer
 1010 010a FFF7FEFF 		bl	_ZL15spi_dma_disablev
 1011 010e 4046     		mov	r0, r8
 1012 0110 694A     		ldr	r2, .L180+20
 1013 0112 D8F82430 		ldr	r3, [r8, #36]
 1014 0116 0221     		movs	r1, #2
 1015 0118 FFF7FEFF 		bl	dmac_channel_set_source_addr
 1016 011c 5246     		mov	r2, r10
 1017 011e 4046     		mov	r0, r8
 1018 0120 0221     		movs	r1, #2
 1019 0122 FFF7FEFF 		bl	dmac_channel_set_destination_addr
 1020 0126 4046     		mov	r0, r8
 1021 0128 0022     		movs	r2, #0
 1022 012a 0221     		movs	r1, #2
 1023 012c FFF7FEFF 		bl	dmac_channel_set_descriptor_addr
 1024 0130 0F9B     		ldr	r3, [sp, #60]
 1025 0132 03F10C02 		add	r2, r3, #12
 1026 0136 4046     		mov	r0, r8
ARM GAS  /tmp/cc8xJyMT.s 			page 19


 1027 0138 42F00052 		orr	r2, r2, #536870912
 1028 013c 0221     		movs	r1, #2
 1029 013e FFF7FEFF 		bl	dmac_channel_set_ctrlA
 1030 0142 5E4A     		ldr	r2, .L180+24
 1031 0144 4046     		mov	r0, r8
 1032 0146 0221     		movs	r1, #2
 1033 0148 FFF7FEFF 		bl	dmac_channel_set_ctrlB
 1034 014c 4046     		mov	r0, r8
 1035 014e 0221     		movs	r1, #2
 1036 0150 FFF7FEFF 		bl	dmac_channel_enable
 1037 0154 4946     		mov	r1, r9
 1038 0156 4046     		mov	r0, r8
 1039 0158 564A     		ldr	r2, .L180+16
 1040 015a D8F82430 		ldr	r3, [r8, #36]
 1041 015e FFF7FEFF 		bl	dmac_channel_set_source_addr
 1042 0162 4946     		mov	r1, r9
 1043 0164 4046     		mov	r0, r8
 1044 0166 564A     		ldr	r2, .L180+28
 1045 0168 FFF7FEFF 		bl	dmac_channel_set_destination_addr
 1046 016c 4946     		mov	r1, r9
 1047 016e 4046     		mov	r0, r8
 1048 0170 0022     		movs	r2, #0
 1049 0172 FFF7FEFF 		bl	dmac_channel_set_descriptor_addr
 1050 0176 0D9B     		ldr	r3, [sp, #52]
 1051 0178 03F10C02 		add	r2, r3, #12
 1052 017c 4946     		mov	r1, r9
 1053 017e 4046     		mov	r0, r8
 1054 0180 42F00072 		orr	r2, r2, #33554432
 1055 0184 FFF7FEFF 		bl	dmac_channel_set_ctrlA
 1056 0188 4946     		mov	r1, r9
 1057 018a 4E4A     		ldr	r2, .L180+32
 1058 018c 4046     		mov	r0, r8
 1059 018e FFF7FEFF 		bl	dmac_channel_set_ctrlB
 1060 0192 4946     		mov	r1, r9
 1061 0194 4046     		mov	r0, r8
 1062 0196 FFF7FEFF 		bl	dmac_channel_enable
 1063 019a CBF80090 		str	r9, [fp]
 1064 019e 4FF48073 		mov	r3, #256
 1065 01a2 DBF81020 		ldr	r2, [fp, #16]
 1066 01a6 CBF81430 		str	r3, [fp, #20]
 1067 01aa 4946     		mov	r1, r9
 1068 01ac 5E20     		movs	r0, #94
 1069 01ae FFF7FEFF 		bl	digitalWrite
 1070 01b2 FFF7FEFF 		bl	millis
 1071 01b6 C146     		mov	r9, r8
 1072 01b8 8346     		mov	fp, r0
 1073              	.L137:
 1074 01ba 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1075 01bc 0B20     		movs	r0, #11
 1076 01be 2BB9     		cbnz	r3, .L134
 1077 01c0 D9F83030 		ldr	r3, [r9, #48]
 1078 01c4 03F00413 		and	r3, r3, #262148
 1079 01c8 042B     		cmp	r3, #4
 1080 01ca 1DD1     		bne	.L176
 1081              	.L134:
 1082 01cc FFF7FEFF 		bl	digitalRead
 1083 01d0 0028     		cmp	r0, #0
ARM GAS  /tmp/cc8xJyMT.s 			page 20


 1084 01d2 F2D0     		beq	.L137
 1085 01d4 FFF7FEFF 		bl	millis
 1086 01d8 A0EB0B00 		sub	r0, r0, fp
 1087 01dc C828     		cmp	r0, #200
 1088 01de ECD9     		bls	.L137
 1089 01e0 304B     		ldr	r3, .L180
 1090 01e2 9B6C     		ldr	r3, [r3, #72]
 1091 01e4 9907     		lsls	r1, r3, #30
 1092 01e6 03D5     		bpl	.L139
 1093 01e8 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 1094 01ea 3748     		ldr	r0, .L180+36
 1095 01ec FFF7FEFF 		bl	debugPrintf
 1096              	.L139:
 1097 01f0 0023     		movs	r3, #0
 1098 01f2 2B70     		strb	r3, [r5]
 1099 01f4 FFF7FEFF 		bl	_ZL15spi_dma_disablev
 1100 01f8 D4F8C030 		ldr	r3, [r4, #192]
 1101 01fc 0133     		adds	r3, r3, #1
 1102 01fe C4F8C030 		str	r3, [r4, #192]
 1103 0202 6FF00605 		mvn	r5, #6
 1104 0206 2BE7     		b	.L126
 1105              	.L176:
 1106 0208 40F20443 		movw	r3, #1028
 1107 020c C8F82C30 		str	r3, [r8, #44]
 1108 0210 9AF80010 		ldrb	r1, [r10]	@ zero_extendqisi2
 1109 0214 3E29     		cmp	r1, #62
 1110 0216 06D0     		beq	.L177
 1111 0218 224B     		ldr	r3, .L180
 1112 021a 9B6C     		ldr	r3, [r3, #72]
 1113 021c 9A07     		lsls	r2, r3, #30
 1114 021e 1BD4     		bmi	.L178
 1115 0220 6FF00905 		mvn	r5, #9
 1116 0224 1CE7     		b	.L126
 1117              	.L177:
 1118 0226 9AF80130 		ldrb	r3, [r10, #1]	@ zero_extendqisi2
 1119 022a 5A1F     		subs	r2, r3, #5
 1120 022c 012A     		cmp	r2, #1
 1121 022e 2DD9     		bls	.L179
 1122              	.L140:
 1123 0230 DAF80850 		ldr	r5, [r10, #8]
 1124 0234 84F85530 		strb	r3, [r4, #85]
 1125 0238 002D     		cmp	r5, #0
 1126 023a 13DD     		ble	.L141
 1127 023c 0E9B     		ldr	r3, [sp, #56]
 1128 023e 002B     		cmp	r3, #0
 1129 0240 3FF40EAF 		beq	.L126
 1130 0244 0F9B     		ldr	r3, [sp, #60]
 1131 0246 2149     		ldr	r1, .L180+40
 1132 0248 0E98     		ldr	r0, [sp, #56]
 1133 024a AB42     		cmp	r3, r5
 1134 024c 28BF     		it	cs
 1135 024e 2B46     		movcs	r3, r5
 1136 0250 1A46     		mov	r2, r3
 1137 0252 FFF7FEFF 		bl	memcpy
 1138 0256 03E7     		b	.L126
 1139              	.L178:
 1140 0258 1D48     		ldr	r0, .L180+44
ARM GAS  /tmp/cc8xJyMT.s 			page 21


 1141 025a FFF7FEFF 		bl	debugPrintf
 1142 025e 6FF00905 		mvn	r5, #9
 1143 0262 FDE6     		b	.L126
 1144              	.L141:
 1145 0264 3FF4FCAE 		beq	.L126
 1146 0268 0E4B     		ldr	r3, .L180
 1147 026a 9B6C     		ldr	r3, [r3, #72]
 1148 026c 9B07     		lsls	r3, r3, #30
 1149 026e 7FF5F7AE 		bpl	.L126
 1150 0272 15F10C03 		adds	r3, r5, #12
 1151 0276 2ABF     		itet	cs
 1152 0278 164A     		ldrcs	r2, .L180+48
 1153 027a 174B     		ldrcc	r3, .L180+52
 1154 027c 52F82330 		ldrcs	r3, [r2, r3, lsl #2]
 1155 0280 1648     		ldr	r0, .L180+56
 1156 0282 3A46     		mov	r2, r7
 1157 0284 3146     		mov	r1, r6
 1158 0286 FFF7FEFF 		bl	debugPrintf
 1159 028a E9E6     		b	.L126
 1160              	.L179:
 1161 028c 94F85520 		ldrb	r2, [r4, #85]	@ zero_extendqisi2
 1162 0290 053A     		subs	r2, r2, #5
 1163 0292 012A     		cmp	r2, #1
 1164 0294 CCD9     		bls	.L140
 1165 0296 D4F8B420 		ldr	r2, [r4, #180]
 1166 029a 0132     		adds	r2, r2, #1
 1167 029c C4F8B420 		str	r2, [r4, #180]
 1168 02a0 C6E7     		b	.L140
 1169              	.L181:
 1170 02a2 00BF     		.align	2
 1171              	.L180:
 1172 02a4 00000000 		.word	reprap
 1173 02a8 18000000 		.word	.LC13
 1174 02ac 00000000 		.word	.LANCHOR6
 1175 02b0 34000000 		.word	.LC14
 1176 02b4 00000000 		.word	.LANCHOR7
 1177 02b8 08800840 		.word	1074298888
 1178 02bc 00005102 		.word	38862848
 1179 02c0 0C800840 		.word	1074298892
 1180 02c4 00003120 		.word	540082176
 1181 02c8 44000000 		.word	.LC15
 1182 02cc 0C000000 		.word	.LANCHOR8+12
 1183 02d0 64000000 		.word	.LC16
 1184 02d4 00000000 		.word	.LANCHOR9
 1185 02d8 00000000 		.word	.LC12
 1186 02dc 80000000 		.word	.LC17
 1187 02e0 00800840 		.word	1074298880
 1188 02e4 00000000 		.word	.LANCHOR8
 1189 02e8 00000C40 		.word	1074528256
 1190              		.size	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj, .-_ZN13WiFiInterface11SendCommand
 1191              		.section	.text._ZN13WiFiInterface14UpdateHostnameEPKc,"ax",%progbits
 1192              		.align	1
 1193              		.p2align 2,,3
 1194              		.global	_ZN13WiFiInterface14UpdateHostnameEPKc
 1195              		.syntax unified
 1196              		.thumb
 1197              		.thumb_func
ARM GAS  /tmp/cc8xJyMT.s 			page 22


 1198              		.fpu fpv4-sp-d16
 1199              		.type	_ZN13WiFiInterface14UpdateHostnameEPKc, %function
 1200              	_ZN13WiFiInterface14UpdateHostnameEPKc:
 1201              		@ args = 0, pretend = 0, frame = 0
 1202              		@ frame_needed = 0, uses_anonymous_args = 0
 1203 0000 026D     		ldr	r2, [r0, #80]
 1204 0002 032A     		cmp	r2, #3
 1205 0004 00D0     		beq	.L193
 1206 0006 7047     		bx	lr
 1207              	.L193:
 1208 0008 30B5     		push	{r4, r5, lr}
 1209 000a 85B0     		sub	sp, sp, #20
 1210 000c 0023     		movs	r3, #0
 1211 000e 4025     		movs	r5, #64
 1212 0010 0091     		str	r1, [sp]
 1213 0012 CDE90233 		strd	r3, r3, [sp, #8]
 1214 0016 1A46     		mov	r2, r3
 1215 0018 0195     		str	r5, [sp, #4]
 1216 001a 1221     		movs	r1, #18
 1217 001c 0446     		mov	r4, r0
 1218 001e FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1219 0022 08B9     		cbnz	r0, .L194
 1220 0024 05B0     		add	sp, sp, #20
 1221              		@ sp needed
 1222 0026 30BD     		pop	{r4, r5, pc}
 1223              	.L194:
 1224 0028 6069     		ldr	r0, [r4, #20]
 1225 002a 034A     		ldr	r2, .L195
 1226 002c 3521     		movs	r1, #53
 1227 002e 05B0     		add	sp, sp, #20
 1228              		@ sp needed
 1229 0030 BDE83040 		pop	{r4, r5, lr}
 1230 0034 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1231              	.L196:
 1232              		.align	2
 1233              	.L195:
 1234 0038 00000000 		.word	.LC18
 1235              		.size	_ZN13WiFiInterface14UpdateHostnameEPKc, .-_ZN13WiFiInterface14UpdateHostnameEPKc
 1236              		.section	.text._ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer,"ax"
 1237              		.align	1
 1238              		.p2align 2,,3
 1239              		.global	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 1240              		.syntax unified
 1241              		.thumb
 1242              		.thumb_func
 1243              		.fpu fpv4-sp-d16
 1244              		.type	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, %function
 1245              	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer:
 1246              		@ args = 4, pretend = 0, frame = 1128
 1247              		@ frame_needed = 0, uses_anonymous_args = 0
 1248 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1249 0004 B1F5137F 		cmp	r1, #588
 1250 0008 ADF27C4D 		subw	sp, sp, #1148
 1251 000c 8046     		mov	r8, r0
 1252 000e 1446     		mov	r4, r2
 1253 0010 1F46     		mov	r7, r3
 1254 0012 00F0A080 		beq	.L199
ARM GAS  /tmp/cc8xJyMT.s 			page 23


 1255 0016 40F24D23 		movw	r3, #589
 1256 001a 9942     		cmp	r1, r3
 1257 001c 64D0     		beq	.L200
 1258 001e 40F24B23 		movw	r3, #587
 1259 0022 9942     		cmp	r1, r3
 1260 0024 04D0     		beq	.L297
 1261              	.L291:
 1262 0026 0220     		movs	r0, #2
 1263              	.L292:
 1264 0028 0DF27C4D 		addw	sp, sp, #1148
 1265              		@ sp needed
 1266 002c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1267              	.L297:
 1268 0030 5321     		movs	r1, #83
 1269 0032 1046     		mov	r0, r2
 1270 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1271 0038 0646     		mov	r6, r0
 1272 003a 0028     		cmp	r0, #0
 1273 003c 40F02B81 		bne	.L298
 1274 0040 4FF47C73 		mov	r3, #1008
 1275 0044 22AC     		add	r4, sp, #136
 1276 0046 CDE90000 		strd	r0, r0, [sp]
 1277 004a CDE90243 		strd	r4, r3, [sp, #8]
 1278 004e 4046     		mov	r0, r8
 1279 0050 3346     		mov	r3, r6
 1280 0052 3246     		mov	r2, r6
 1281 0054 1521     		movs	r1, #21
 1282 0056 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1283 005a B0F10008 		subs	r8, r0, #0
 1284 005e C0F2BA81 		blt	.L215
 1285 0062 DDF8A034 		ldr	r3, [sp, #1184]
 1286 0066 DFF8ECA3 		ldr	r10, .L305+48
 1287 006a 1D68     		ldr	r5, [r3]
 1288 006c DFF8E8B3 		ldr	fp, .L305+52
 1289 0070 C4F16009 		rsb	r9, r4, #96
 1290 0074 1CE0     		b	.L216
 1291              	.L219:
 1292 0076 216B     		ldr	r1, [r4, #48]
 1293 0078 84F85F60 		strb	r6, [r4, #95]
 1294 007c 04A8     		add	r0, sp, #16
 1295 007e FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1296 0082 616B     		ldr	r1, [r4, #52]
 1297 0084 08A8     		add	r0, sp, #32
 1298 0086 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1299 008a A16B     		ldr	r1, [r4, #56]
 1300 008c 11A8     		add	r0, sp, #68
 1301 008e FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1302 0092 11AB     		add	r3, sp, #68
 1303 0094 0193     		str	r3, [sp, #4]
 1304 0096 08AB     		add	r3, sp, #32
 1305 0098 0093     		str	r3, [sp]
 1306 009a 2846     		mov	r0, r5
 1307 009c 04AB     		add	r3, sp, #16
 1308 009e 04F14002 		add	r2, r4, #64
 1309 00a2 5146     		mov	r1, r10
 1310 00a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1311 00a8 DDF8A034 		ldr	r3, [sp, #1184]
ARM GAS  /tmp/cc8xJyMT.s 			page 24


 1312 00ac 1D68     		ldr	r5, [r3]
 1313              	.L218:
 1314 00ae 3034     		adds	r4, r4, #48
 1315              	.L216:
 1316 00b0 09EB0403 		add	r3, r9, r4
 1317 00b4 4345     		cmp	r3, r8
 1318 00b6 00F21281 		bhi	.L217
 1319 00ba 94F84030 		ldrb	r3, [r4, #64]	@ zero_extendqisi2
 1320 00be 002B     		cmp	r3, #0
 1321 00c0 F5D0     		beq	.L218
 1322 00c2 002D     		cmp	r5, #0
 1323 00c4 D7D1     		bne	.L219
 1324 00c6 DDF8A004 		ldr	r0, [sp, #1184]
 1325 00ca FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1326 00ce 0028     		cmp	r0, #0
 1327 00d0 00F09381 		beq	.L248
 1328 00d4 DDF8A034 		ldr	r3, [sp, #1184]
 1329 00d8 5946     		mov	r1, fp
 1330 00da 1868     		ldr	r0, [r3]
 1331 00dc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1332 00e0 DDF8A034 		ldr	r3, [sp, #1184]
 1333 00e4 1D68     		ldr	r5, [r3]
 1334 00e6 C6E7     		b	.L219
 1335              	.L200:
 1336 00e8 5321     		movs	r1, #83
 1337 00ea 1046     		mov	r0, r2
 1338 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1339 00f0 0546     		mov	r5, r0
 1340 00f2 0028     		cmp	r0, #0
 1341 00f4 5CD1     		bne	.L299
 1342 00f6 3023     		movs	r3, #48
 1343 00f8 22AC     		add	r4, sp, #136
 1344 00fa CDE90000 		strd	r0, r0, [sp]
 1345 00fe CDE90243 		strd	r4, r3, [sp, #8]
 1346 0102 4046     		mov	r0, r8
 1347 0104 2B46     		mov	r3, r5
 1348 0106 2A46     		mov	r2, r5
 1349 0108 1521     		movs	r1, #21
 1350 010a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1351 010e 0028     		cmp	r0, #0
 1352 0110 C0F26781 		blt	.L241
 1353 0114 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1354 0116 002B     		cmp	r3, #0
 1355 0118 00F05881 		beq	.L300
 1356 011c 2168     		ldr	r1, [r4]
 1357 011e 84F82F50 		strb	r5, [r4, #47]
 1358 0122 04A8     		add	r0, sp, #16
 1359 0124 08AD     		add	r5, sp, #32
 1360 0126 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1361 012a 11AE     		add	r6, sp, #68
 1362 012c 6168     		ldr	r1, [r4, #4]
 1363 012e 2846     		mov	r0, r5
 1364 0130 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1365 0134 A168     		ldr	r1, [r4, #8]
 1366 0136 3046     		mov	r0, r6
 1367 0138 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1368 013c CDE90056 		strd	r5, r6, [sp]
ARM GAS  /tmp/cc8xJyMT.s 			page 25


 1369 0140 04AB     		add	r3, sp, #16
 1370 0142 3846     		mov	r0, r7
 1371 0144 26AA     		add	r2, sp, #152
 1372 0146 B749     		ldr	r1, .L305
 1373 0148 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1374              	.L296:
 1375 014c 0120     		movs	r0, #1
 1376 014e 0DF27C4D 		addw	sp, sp, #1148
 1377              		@ sp needed
 1378 0152 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1379              	.L199:
 1380 0156 5321     		movs	r1, #83
 1381 0158 1046     		mov	r0, r2
 1382 015a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1383 015e 0028     		cmp	r0, #0
 1384 0160 00F0B480 		beq	.L221
 1385 0164 22AD     		add	r5, sp, #136
 1386 0166 0026     		movs	r6, #0
 1387 0168 2123     		movs	r3, #33
 1388 016a 2046     		mov	r0, r4
 1389 016c 11A9     		add	r1, sp, #68
 1390 016e 2E70     		strb	r6, [r5]
 1391 0170 CDE91153 		strd	r5, r3, [sp, #68]
 1392 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1393 0178 0028     		cmp	r0, #0
 1394 017a 00F0A780 		beq	.L221
 1395 017e AA49     		ldr	r1, .L305+4
 1396 0180 2846     		mov	r0, r5
 1397 0182 FFF7FEFF 		bl	strcmp
 1398 0186 0346     		mov	r3, r0
 1399 0188 0028     		cmp	r0, #0
 1400 018a 40F0B180 		bne	.L223
 1401 018e CDE90200 		strd	r0, r0, [sp, #8]
 1402 0192 CDE90000 		strd	r0, r0, [sp]
 1403 0196 1A46     		mov	r2, r3
 1404 0198 4046     		mov	r0, r8
 1405 019a 1121     		movs	r1, #17
 1406 019c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1407 01a0 0028     		cmp	r0, #0
 1408 01a2 D3D0     		beq	.L296
 1409 01a4 3846     		mov	r0, r7
 1410 01a6 A149     		ldr	r1, .L305+8
 1411 01a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1412 01ac 0220     		movs	r0, #2
 1413 01ae 3BE7     		b	.L292
 1414              	.L299:
 1415 01b0 22AE     		add	r6, sp, #136
 1416 01b2 0021     		movs	r1, #0
 1417 01b4 0DF12009 		add	r9, sp, #32
 1418 01b8 11AD     		add	r5, sp, #68
 1419 01ba 3046     		mov	r0, r6
 1420 01bc 7022     		movs	r2, #112
 1421 01be FFF7FEFF 		bl	memset
 1422 01c2 4FF0000A 		mov	r10, #0
 1423 01c6 2123     		movs	r3, #33
 1424 01c8 2946     		mov	r1, r5
 1425 01ca 2046     		mov	r0, r4
ARM GAS  /tmp/cc8xJyMT.s 			page 26


 1426 01cc 89F800A0 		strb	r10, [r9]
 1427 01d0 C5E90093 		strd	r9, r3, [r5]
 1428 01d4 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1429 01d8 0028     		cmp	r0, #0
 1430 01da 72D0     		beq	.L232
 1431 01dc 9249     		ldr	r1, .L305+4
 1432 01de 4846     		mov	r0, r9
 1433 01e0 FFF7FEFF 		bl	strcmp
 1434 01e4 0028     		cmp	r0, #0
 1435 01e6 00F0A180 		beq	.L301
 1436 01ea 4946     		mov	r1, r9
 1437 01ec 26A8     		add	r0, sp, #152
 1438 01ee 2022     		movs	r2, #32
 1439 01f0 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1440 01f4 5021     		movs	r1, #80
 1441 01f6 2046     		mov	r0, r4
 1442 01f8 85F800A0 		strb	r10, [r5]
 1443 01fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1444 0200 0028     		cmp	r0, #0
 1445 0202 5ED0     		beq	.L232
 1446 0204 4123     		movs	r3, #65
 1447 0206 04A9     		add	r1, sp, #16
 1448 0208 2046     		mov	r0, r4
 1449 020a CDE90453 		strd	r5, r3, [sp, #16]
 1450 020e FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1451 0212 0028     		cmp	r0, #0
 1452 0214 55D0     		beq	.L232
 1453 0216 2EA8     		add	r0, sp, #184
 1454 0218 4022     		movs	r2, #64
 1455 021a 2946     		mov	r1, r5
 1456 021c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1457 0220 4021     		movs	r1, #64
 1458 0222 2846     		mov	r0, r5
 1459 0224 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1460 0228 0728     		cmp	r0, #7
 1461 022a 06D8     		bhi	.L237
 1462 022c 4021     		movs	r1, #64
 1463 022e 2846     		mov	r0, r5
 1464 0230 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1465 0234 0028     		cmp	r0, #0
 1466 0236 40F0EE80 		bne	.L295
 1467              	.L237:
 1468 023a 2946     		mov	r1, r5
 1469 023c 2EA8     		add	r0, sp, #184
 1470 023e 4022     		movs	r2, #64
 1471 0240 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1472 0244 4921     		movs	r1, #73
 1473 0246 2046     		mov	r0, r4
 1474 0248 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1475 024c 0028     		cmp	r0, #0
 1476 024e 38D0     		beq	.L232
 1477 0250 3146     		mov	r1, r6
 1478 0252 2046     		mov	r0, r4
 1479 0254 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressERm
 1480 0258 4321     		movs	r1, #67
 1481 025a 0546     		mov	r5, r0
 1482 025c 2046     		mov	r0, r4
ARM GAS  /tmp/cc8xJyMT.s 			page 27


 1483 025e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1484 0262 18B1     		cbz	r0, .L239
 1485 0264 2046     		mov	r0, r4
 1486 0266 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1487 026a C0B2     		uxtb	r0, r0
 1488              	.L239:
 1489 026c 3073     		strb	r0, [r6, #12]
 1490 026e 45B3     		cbz	r5, .L232
 1491              	.L230:
 1492 0270 0023     		movs	r3, #0
 1493 0272 7021     		movs	r1, #112
 1494 0274 0191     		str	r1, [sp, #4]
 1495 0276 0096     		str	r6, [sp]
 1496 0278 4046     		mov	r0, r8
 1497 027a CDE90233 		strd	r3, r3, [sp, #8]
 1498 027e 1A46     		mov	r2, r3
 1499 0280 0D21     		movs	r1, #13
 1500 0282 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1501 0286 0028     		cmp	r0, #0
 1502 0288 3FF460AF 		beq	.L296
 1503 028c 3846     		mov	r0, r7
 1504 028e 6849     		ldr	r1, .L305+12
 1505 0290 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1506 0294 C7E6     		b	.L291
 1507              	.L298:
 1508 0296 22AE     		add	r6, sp, #136
 1509 0298 0021     		movs	r1, #0
 1510 029a 0DF12009 		add	r9, sp, #32
 1511 029e 11AD     		add	r5, sp, #68
 1512 02a0 3046     		mov	r0, r6
 1513 02a2 7022     		movs	r2, #112
 1514 02a4 FFF7FEFF 		bl	memset
 1515 02a8 4FF0000A 		mov	r10, #0
 1516 02ac 2123     		movs	r3, #33
 1517 02ae 2946     		mov	r1, r5
 1518 02b0 2046     		mov	r0, r4
 1519 02b2 89F800A0 		strb	r10, [r9]
 1520 02b6 C5E90093 		strd	r9, r3, [r5]
 1521 02ba FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1522 02be 0028     		cmp	r0, #0
 1523 02c0 3AD1     		bne	.L302
 1524              	.L232:
 1525 02c2 3846     		mov	r0, r7
 1526 02c4 5B49     		ldr	r1, .L305+16
 1527 02c6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1528 02ca ACE6     		b	.L291
 1529              	.L221:
 1530 02cc 3846     		mov	r0, r7
 1531 02ce 5949     		ldr	r1, .L305+16
 1532 02d0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1533 02d4 0220     		movs	r0, #2
 1534 02d6 0DF27C4D 		addw	sp, sp, #1148
 1535              		@ sp needed
 1536 02da BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1537              	.L217:
 1538 02de 002D     		cmp	r5, #0
 1539 02e0 7FF434AF 		bne	.L296
ARM GAS  /tmp/cc8xJyMT.s 			page 28


 1540 02e4 3846     		mov	r0, r7
 1541 02e6 5449     		ldr	r1, .L305+20
 1542 02e8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1543 02ec 0120     		movs	r0, #1
 1544 02ee 9BE6     		b	.L292
 1545              	.L223:
 1546 02f0 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1547 02f2 11AC     		add	r4, sp, #68
 1548 02f4 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1549 02f6 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1550 02fa 4FF0200C 		mov	ip, #32
 1551 02fe 11AD     		add	r5, sp, #68
 1552 0300 CDE90266 		strd	r6, r6, [sp, #8]
 1553 0304 0095     		str	r5, [sp]
 1554 0306 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1555 030a CDF804C0 		str	ip, [sp, #4]
 1556 030e 4046     		mov	r0, r8
 1557 0310 3346     		mov	r3, r6
 1558 0312 3246     		mov	r2, r6
 1559 0314 0B21     		movs	r1, #11
 1560 0316 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1561 031a 0028     		cmp	r0, #0
 1562 031c 3FF416AF 		beq	.L296
 1563 0320 3846     		mov	r0, r7
 1564 0322 4649     		ldr	r1, .L305+24
 1565 0324 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1566 0328 0220     		movs	r0, #2
 1567 032a 7DE6     		b	.L292
 1568              	.L301:
 1569 032c 7022     		movs	r2, #112
 1570 032e FF21     		movs	r1, #255
 1571 0330 3046     		mov	r0, r6
 1572 0332 FFF7FEFF 		bl	memset
 1573 0336 9BE7     		b	.L230
 1574              	.L302:
 1575 0338 4946     		mov	r1, r9
 1576 033a 26A8     		add	r0, sp, #152
 1577 033c 2022     		movs	r2, #32
 1578 033e FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1579 0342 5021     		movs	r1, #80
 1580 0344 2046     		mov	r0, r4
 1581 0346 85F800A0 		strb	r10, [r5]
 1582 034a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1583 034e 0028     		cmp	r0, #0
 1584 0350 B7D0     		beq	.L232
 1585 0352 4123     		movs	r3, #65
 1586 0354 04A9     		add	r1, sp, #16
 1587 0356 2046     		mov	r0, r4
 1588 0358 CDE90453 		strd	r5, r3, [sp, #16]
 1589 035c FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1590 0360 0028     		cmp	r0, #0
 1591 0362 AED0     		beq	.L232
 1592 0364 4021     		movs	r1, #64
 1593 0366 2846     		mov	r0, r5
 1594 0368 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1595 036c 0728     		cmp	r0, #7
 1596 036e 05D8     		bhi	.L209
ARM GAS  /tmp/cc8xJyMT.s 			page 29


 1597 0370 4021     		movs	r1, #64
 1598 0372 2846     		mov	r0, r5
 1599 0374 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1600 0378 0028     		cmp	r0, #0
 1601 037a 4CD1     		bne	.L295
 1602              	.L209:
 1603 037c 2946     		mov	r1, r5
 1604 037e 2EA8     		add	r0, sp, #184
 1605 0380 4022     		movs	r2, #64
 1606 0382 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1607 0386 4921     		movs	r1, #73
 1608 0388 2046     		mov	r0, r4
 1609 038a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1610 038e 0028     		cmp	r0, #0
 1611 0390 3CD1     		bne	.L303
 1612              	.L207:
 1613 0392 4A21     		movs	r1, #74
 1614 0394 2046     		mov	r0, r4
 1615 0396 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1616 039a 80BB     		cbnz	r0, .L304
 1617              	.L245:
 1618 039c 4B21     		movs	r1, #75
 1619 039e 2046     		mov	r0, r4
 1620 03a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1621 03a4 10BB     		cbnz	r0, .L211
 1622              	.L213:
 1623 03a6 0023     		movs	r3, #0
 1624 03a8 7021     		movs	r1, #112
 1625 03aa 0191     		str	r1, [sp, #4]
 1626 03ac 0096     		str	r6, [sp]
 1627 03ae 4046     		mov	r0, r8
 1628 03b0 CDE90233 		strd	r3, r3, [sp, #8]
 1629 03b4 1A46     		mov	r2, r3
 1630 03b6 0A21     		movs	r1, #10
 1631 03b8 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1632 03bc 0028     		cmp	r0, #0
 1633 03be 3FF4C5AE 		beq	.L296
 1634 03c2 3846     		mov	r0, r7
 1635 03c4 1E49     		ldr	r1, .L305+28
 1636 03c6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1637 03ca 2CE6     		b	.L291
 1638              	.L300:
 1639 03cc 3846     		mov	r0, r7
 1640 03ce 1D49     		ldr	r1, .L305+32
 1641 03d0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1642 03d4 27E6     		b	.L291
 1643              	.L215:
 1644 03d6 3846     		mov	r0, r7
 1645 03d8 1B49     		ldr	r1, .L305+36
 1646 03da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1647 03de 0220     		movs	r0, #2
 1648 03e0 22E6     		b	.L292
 1649              	.L241:
 1650 03e2 3846     		mov	r0, r7
 1651 03e4 1949     		ldr	r1, .L305+40
 1652 03e6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1653 03ea 1CE6     		b	.L291
ARM GAS  /tmp/cc8xJyMT.s 			page 30


 1654              	.L211:
 1655 03ec 2046     		mov	r0, r4
 1656 03ee 24A9     		add	r1, sp, #144
 1657 03f0 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressERm
 1658 03f4 0028     		cmp	r0, #0
 1659 03f6 D6D1     		bne	.L213
 1660 03f8 63E7     		b	.L232
 1661              	.L248:
 1662 03fa 2846     		mov	r0, r5
 1663 03fc 14E6     		b	.L292
 1664              	.L304:
 1665 03fe 23A9     		add	r1, sp, #140
 1666 0400 2046     		mov	r0, r4
 1667 0402 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressERm
 1668 0406 0028     		cmp	r0, #0
 1669 0408 C8D1     		bne	.L245
 1670 040a 5AE7     		b	.L232
 1671              	.L303:
 1672 040c 3146     		mov	r1, r6
 1673 040e 2046     		mov	r0, r4
 1674 0410 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressERm
 1675 0414 BDE7     		b	.L207
 1676              	.L295:
 1677 0416 3846     		mov	r0, r7
 1678 0418 0D49     		ldr	r1, .L305+44
 1679 041a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1680 041e 0220     		movs	r0, #2
 1681 0420 02E6     		b	.L292
 1682              	.L306:
 1683 0422 00BF     		.align	2
 1684              	.L305:
 1685 0424 80010000 		.word	.LC31
 1686 0428 D8000000 		.word	.LC26
 1687 042c DC000000 		.word	.LC27
 1688 0430 3C010000 		.word	.LC29
 1689 0434 54000000 		.word	.LC21
 1690 0438 A0000000 		.word	.LC24
 1691 043c 10010000 		.word	.LC28
 1692 0440 2C000000 		.word	.LC20
 1693 0444 68010000 		.word	.LC30
 1694 0448 B8000000 		.word	.LC25
 1695 044c A0010000 		.word	.LC32
 1696 0450 00000000 		.word	.LC19
 1697 0454 88000000 		.word	.LC23
 1698 0458 70000000 		.word	.LC22
 1699              		.size	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, .-_ZN13WiFiI
 1700              		.global	__aeabi_f2d
 1701              		.section	.text._ZN13WiFiInterface11DiagnosticsE11MessageType,"ax",%progbits
 1702              		.align	1
 1703              		.p2align 2,,3
 1704              		.global	_ZN13WiFiInterface11DiagnosticsE11MessageType
 1705              		.syntax unified
 1706              		.thumb
 1707              		.thumb_func
 1708              		.fpu fpv4-sp-d16
 1709              		.type	_ZN13WiFiInterface11DiagnosticsE11MessageType, %function
 1710              	_ZN13WiFiInterface11DiagnosticsE11MessageType:
ARM GAS  /tmp/cc8xJyMT.s 			page 31


 1711              		@ args = 0, pretend = 0, frame = 160
 1712              		@ frame_needed = 0, uses_anonymous_args = 0
 1713 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1714 0004 0446     		mov	r4, r0
 1715 0006 AEB0     		sub	sp, sp, #184
 1716 0008 754A     		ldr	r2, .L338
 1717 000a 4069     		ldr	r0, [r0, #20]
 1718 000c 0E46     		mov	r6, r1
 1719 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1720 0012 236D     		ldr	r3, [r4, #80]
 1721 0014 6069     		ldr	r0, [r4, #20]
 1722 0016 042B     		cmp	r3, #4
 1723 0018 96BF     		itet	ls
 1724 001a 724A     		ldrls	r2, .L338+4
 1725 001c 724B     		ldrhi	r3, .L338+8
 1726 001e 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1727 0022 724A     		ldr	r2, .L338+12
 1728 0024 3146     		mov	r1, r6
 1729 0026 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1730 002a 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 1731 002e 6069     		ldr	r0, [r4, #20]
 1732 0030 062B     		cmp	r3, #6
 1733 0032 96BF     		itet	ls
 1734 0034 6E4A     		ldrls	r2, .L338+16
 1735 0036 6F4B     		ldrhi	r3, .L338+20
 1736 0038 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1737 003c 6E4A     		ldr	r2, .L338+24
 1738 003e 3146     		mov	r1, r6
 1739 0040 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1740 0044 D4E92F21 		ldrd	r2, r1, [r4, #188]
 1741 0048 D4F8B830 		ldr	r3, [r4, #184]
 1742 004c 6069     		ldr	r0, [r4, #20]
 1743 004e CDE90021 		strd	r2, r1, [sp]
 1744 0052 6A4A     		ldr	r2, .L338+28
 1745 0054 3146     		mov	r1, r6
 1746 0056 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1747 005a 236D     		ldr	r3, [r4, #80]
 1748 005c 022B     		cmp	r3, #2
 1749 005e 1DD8     		bhi	.L337
 1750              	.L310:
 1751 0060 674A     		ldr	r2, .L338+32
 1752 0062 6069     		ldr	r0, [r4, #20]
 1753 0064 DFF8D881 		ldr	r8, .L338+96
 1754 0068 3146     		mov	r1, r6
 1755 006a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1756 006e 04F12005 		add	r5, r4, #32
 1757 0072 04F14007 		add	r7, r4, #64
 1758              	.L319:
 1759 0076 55F8043B 		ldr	r3, [r5], #4
 1760 007a 6069     		ldr	r0, [r4, #20]
 1761 007c 93F82330 		ldrb	r3, [r3, #35]	@ zero_extendqisi2
 1762 0080 4246     		mov	r2, r8
 1763 0082 3146     		mov	r1, r6
 1764 0084 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1765 0088 BD42     		cmp	r5, r7
 1766 008a F4D1     		bne	.L319
 1767 008c 3146     		mov	r1, r6
ARM GAS  /tmp/cc8xJyMT.s 			page 32


 1768 008e 6069     		ldr	r0, [r4, #20]
 1769 0090 5C4A     		ldr	r2, .L338+36
 1770 0092 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1771 0096 2EB0     		add	sp, sp, #184
 1772              		@ sp needed
 1773 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1774              	.L337:
 1775 009c 0025     		movs	r5, #0
 1776 009e 8C22     		movs	r2, #140
 1777 00a0 0AAB     		add	r3, sp, #40
 1778 00a2 CDE90232 		strd	r3, r2, [sp, #8]
 1779 00a6 CDE90055 		strd	r5, r5, [sp]
 1780 00aa 2B46     		mov	r3, r5
 1781 00ac 2A46     		mov	r2, r5
 1782 00ae 0921     		movs	r1, #9
 1783 00b0 2046     		mov	r0, r4
 1784 00b2 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1785 00b6 A842     		cmp	r0, r5
 1786 00b8 7DDD     		ble	.L311
 1787 00ba 11AB     		add	r3, sp, #68
 1788 00bc 524A     		ldr	r2, .L338+40
 1789 00be 6069     		ldr	r0, [r4, #20]
 1790 00c0 8DF85350 		strb	r5, [sp, #83]
 1791 00c4 3146     		mov	r1, r6
 1792 00c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1793 00ca 9DF84310 		ldrb	r1, [sp, #67]	@ zero_extendqisi2
 1794 00ce 6069     		ldr	r0, [r4, #20]
 1795 00d0 9DF84220 		ldrb	r2, [sp, #66]	@ zero_extendqisi2
 1796 00d4 9DF84150 		ldrb	r5, [sp, #65]	@ zero_extendqisi2
 1797 00d8 0491     		str	r1, [sp, #16]
 1798 00da 9DF84010 		ldrb	r1, [sp, #64]	@ zero_extendqisi2
 1799 00de 0392     		str	r2, [sp, #12]
 1800 00e0 9DF83F20 		ldrb	r2, [sp, #63]	@ zero_extendqisi2
 1801 00e4 9DF83E30 		ldrb	r3, [sp, #62]	@ zero_extendqisi2
 1802 00e8 0092     		str	r2, [sp]
 1803 00ea CDE90115 		strd	r1, r5, [sp, #4]
 1804 00ee 474A     		ldr	r2, .L338+44
 1805 00f0 3146     		mov	r1, r6
 1806 00f2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1807 00f6 BDF83C00 		ldrh	r0, [sp, #60]
 1808 00fa 6569     		ldr	r5, [r4, #20]
 1809 00fc 07EE900A 		vmov	s15, r0	@ int
 1810 0100 FBEECB7A 		vcvt.f32.u32	s15, s15, #10
 1811 0104 17EE900A 		vmov	r0, s15
 1812 0108 FFF7FEFF 		bl	__aeabi_f2d
 1813 010c 0C9B     		ldr	r3, [sp, #48]
 1814 010e 062B     		cmp	r3, #6
 1815 0110 96BF     		itet	ls
 1816 0112 3F4A     		ldrls	r2, .L338+48
 1817 0114 3F4B     		ldrhi	r3, .L338+52
 1818 0116 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1819 011a 0293     		str	r3, [sp, #8]
 1820 011c CDE90001 		strd	r0, [sp]
 1821 0120 3D4A     		ldr	r2, .L338+56
 1822 0122 2846     		mov	r0, r5
 1823 0124 3146     		mov	r1, r6
 1824 0126 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/cc8xJyMT.s 			page 33


 1825 012a 0B9A     		ldr	r2, [sp, #44]
 1826 012c 0D9B     		ldr	r3, [sp, #52]
 1827 012e 6069     		ldr	r0, [r4, #20]
 1828 0130 0092     		str	r2, [sp]
 1829 0132 3146     		mov	r1, r6
 1830 0134 394A     		ldr	r2, .L338+60
 1831 0136 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1832 013a 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 1833 013e 042B     		cmp	r3, #4
 1834 0140 13D0     		beq	.L313
 1835 0142 022B     		cmp	r3, #2
 1836 0144 11D0     		beq	.L313
 1837              	.L314:
 1838 0146 0023     		movs	r3, #0
 1839 0148 CDE90233 		strd	r3, r3, [sp, #8]
 1840 014c CDE90033 		strd	r3, r3, [sp]
 1841 0150 1A46     		mov	r2, r3
 1842 0152 1421     		movs	r1, #20
 1843 0154 2046     		mov	r0, r4
 1844 0156 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1845 015a 0028     		cmp	r0, #0
 1846 015c 80D0     		beq	.L310
 1847 015e 304A     		ldr	r2, .L338+64
 1848 0160 6069     		ldr	r0, [r4, #20]
 1849 0162 3146     		mov	r1, r6
 1850 0164 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1851 0168 7AE7     		b	.L310
 1852              	.L313:
 1853 016a 6569     		ldr	r5, [r4, #20]
 1854 016c 0A99     		ldr	r1, [sp, #40]
 1855 016e 06A8     		add	r0, sp, #24
 1856 0170 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1857 0174 06AB     		add	r3, sp, #24
 1858 0176 2846     		mov	r0, r5
 1859 0178 2A4A     		ldr	r2, .L338+68
 1860 017a 3146     		mov	r1, r6
 1861 017c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1862 0180 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 1863 0184 042B     		cmp	r3, #4
 1864 0186 1ED1     		bne	.L315
 1865 0188 9DF83A30 		ldrb	r3, [sp, #58]	@ zero_extendqisi2
 1866 018c 012B     		cmp	r3, #1
 1867 018e 18D0     		beq	.L323
 1868 0190 022B     		cmp	r3, #2
 1869 0192 22D0     		beq	.L324
 1870 0194 244A     		ldr	r2, .L338+72
 1871 0196 1449     		ldr	r1, .L338+8
 1872 0198 032B     		cmp	r3, #3
 1873 019a 18BF     		it	ne
 1874 019c 0A46     		movne	r2, r1
 1875              	.L316:
 1876 019e D4F8B410 		ldr	r1, [r4, #180]
 1877 01a2 6069     		ldr	r0, [r4, #20]
 1878 01a4 9DF93830 		ldrsb	r3, [sp, #56]
 1879 01a8 CDE90012 		strd	r1, r2, [sp]
 1880 01ac 1F4A     		ldr	r2, .L338+76
 1881 01ae 3146     		mov	r1, r6
ARM GAS  /tmp/cc8xJyMT.s 			page 34


 1882 01b0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1883 01b4 C7E7     		b	.L314
 1884              	.L311:
 1885 01b6 1E4A     		ldr	r2, .L338+80
 1886 01b8 6069     		ldr	r0, [r4, #20]
 1887 01ba 3146     		mov	r1, r6
 1888 01bc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1889 01c0 4EE7     		b	.L310
 1890              	.L323:
 1891 01c2 1C4A     		ldr	r2, .L338+84
 1892 01c4 EBE7     		b	.L316
 1893              	.L315:
 1894 01c6 022B     		cmp	r3, #2
 1895 01c8 BDD1     		bne	.L314
 1896 01ca 9DF83930 		ldrb	r3, [sp, #57]	@ zero_extendqisi2
 1897 01ce 1A4A     		ldr	r2, .L338+88
 1898 01d0 6069     		ldr	r0, [r4, #20]
 1899 01d2 3146     		mov	r1, r6
 1900 01d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1901 01d8 B5E7     		b	.L314
 1902              	.L324:
 1903 01da 184A     		ldr	r2, .L338+92
 1904 01dc DFE7     		b	.L316
 1905              	.L339:
 1906 01de 00BF     		.align	2
 1907              	.L338:
 1908 01e0 18000000 		.word	.LC36
 1909 01e4 00000000 		.word	.LANCHOR5
 1910 01e8 00000000 		.word	.LC11
 1911 01ec 24000000 		.word	.LC37
 1912 01f0 00000000 		.word	.LANCHOR1
 1913 01f4 00000000 		.word	.LC0
 1914 01f8 3C000000 		.word	.LC38
 1915 01fc 50000000 		.word	.LC39
 1916 0200 C0010000 		.word	.LC49
 1917 0204 D4010000 		.word	.LC51
 1918 0208 88000000 		.word	.LC40
 1919 020c A4000000 		.word	.LC41
 1920 0210 00000000 		.word	.LANCHOR4
 1921 0214 00000000 		.word	.LC10
 1922 0218 D4000000 		.word	.LC42
 1923 021c F4000000 		.word	.LC43
 1924 0220 84010000 		.word	.LC47
 1925 0224 18010000 		.word	.LC44
 1926 0228 10000000 		.word	.LC35
 1927 022c 2C010000 		.word	.LC45
 1928 0230 A4010000 		.word	.LC48
 1929 0234 08000000 		.word	.LC34
 1930 0238 6C010000 		.word	.LC46
 1931 023c 00000000 		.word	.LC33
 1932 0240 D0010000 		.word	.LC50
 1933              		.size	_ZN13WiFiInterface11DiagnosticsE11MessageType, .-_ZN13WiFiInterface11DiagnosticsE11MessageTy
 1934              		.section	.text._ZN13WiFiInterface17SendListenCommandEthj,"ax",%progbits
 1935              		.align	1
 1936              		.p2align 2,,3
 1937              		.global	_ZN13WiFiInterface17SendListenCommandEthj
 1938              		.syntax unified
ARM GAS  /tmp/cc8xJyMT.s 			page 35


 1939              		.thumb
 1940              		.thumb_func
 1941              		.fpu fpv4-sp-d16
 1942              		.type	_ZN13WiFiInterface17SendListenCommandEthj, %function
 1943              	_ZN13WiFiInterface17SendListenCommandEthj:
 1944              		@ args = 0, pretend = 0, frame = 16
 1945              		@ frame_needed = 0, uses_anonymous_args = 0
 1946 0000 30B5     		push	{r4, r5, lr}
 1947 0002 89B0     		sub	sp, sp, #36
 1948 0004 0024     		movs	r4, #0
 1949 0006 ADF81A10 		strh	r1, [sp, #26]	@ movhi
 1950 000a 0C25     		movs	r5, #12
 1951 000c 05A9     		add	r1, sp, #20
 1952 000e 8DF81820 		strb	r2, [sp, #24]
 1953 0012 ADF81C30 		strh	r3, [sp, #28]	@ movhi
 1954 0016 0091     		str	r1, [sp]
 1955 0018 CDE90244 		strd	r4, r4, [sp, #8]
 1956 001c 2346     		mov	r3, r4
 1957 001e 0195     		str	r5, [sp, #4]
 1958 0020 2246     		mov	r2, r4
 1959 0022 0721     		movs	r1, #7
 1960 0024 0594     		str	r4, [sp, #20]
 1961 0026 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1962 002a 09B0     		add	sp, sp, #36
 1963              		@ sp needed
 1964 002c 30BD     		pop	{r4, r5, pc}
 1965              		.size	_ZN13WiFiInterface17SendListenCommandEthj, .-_ZN13WiFiInterface17SendListenCommandEthj
 1966 002e 00BF     		.section	.text._ZN13WiFiInterface13StartProtocolEh,"ax",%progbits
 1967              		.align	1
 1968              		.p2align 2,,3
 1969              		.global	_ZN13WiFiInterface13StartProtocolEh
 1970              		.syntax unified
 1971              		.thumb
 1972              		.thumb_func
 1973              		.fpu fpv4-sp-d16
 1974              		.type	_ZN13WiFiInterface13StartProtocolEh, %function
 1975              	_ZN13WiFiInterface13StartProtocolEh:
 1976              		@ args = 0, pretend = 0, frame = 8
 1977              		@ frame_needed = 0, uses_anonymous_args = 0
 1978 0000 30B5     		push	{r4, r5, lr}
 1979 0002 0446     		mov	r4, r0
 1980 0004 83B0     		sub	sp, sp, #12
 1981 0006 0D46     		mov	r5, r1
 1982 0008 6846     		mov	r0, sp
 1983 000a 211D     		adds	r1, r4, #4
 1984 000c 4FF0FF32 		mov	r2, #-1
 1985 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1986 0014 012D     		cmp	r5, #1
 1987 0016 1AD0     		beq	.L344
 1988 0018 0DD3     		bcc	.L345
 1989 001a 022D     		cmp	r5, #2
 1990 001c 06D1     		bne	.L343
 1991 001e 2A46     		mov	r2, r5
 1992 0020 0123     		movs	r3, #1
 1993 0022 B4F84810 		ldrh	r1, [r4, #72]
 1994 0026 2046     		mov	r0, r4
 1995 0028 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
ARM GAS  /tmp/cc8xJyMT.s 			page 36


 1996              	.L343:
 1997 002c 6846     		mov	r0, sp
 1998 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1999 0032 03B0     		add	sp, sp, #12
 2000              		@ sp needed
 2001 0034 30BD     		pop	{r4, r5, pc}
 2002              	.L345:
 2003 0036 0423     		movs	r3, #4
 2004 0038 0022     		movs	r2, #0
 2005 003a B4F84410 		ldrh	r1, [r4, #68]
 2006 003e 2046     		mov	r0, r4
 2007 0040 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2008 0044 6846     		mov	r0, sp
 2009 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2010 004a 03B0     		add	sp, sp, #12
 2011              		@ sp needed
 2012 004c 30BD     		pop	{r4, r5, pc}
 2013              	.L344:
 2014 004e 2B46     		mov	r3, r5
 2015 0050 2A46     		mov	r2, r5
 2016 0052 B4F84610 		ldrh	r1, [r4, #70]
 2017 0056 2046     		mov	r0, r4
 2018 0058 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2019 005c 6846     		mov	r0, sp
 2020 005e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2021 0062 03B0     		add	sp, sp, #12
 2022              		@ sp needed
 2023 0064 30BD     		pop	{r4, r5, pc}
 2024              		.size	_ZN13WiFiInterface13StartProtocolEh, .-_ZN13WiFiInterface13StartProtocolEh
 2025 0066 00BF     		.section	.text._ZN13WiFiInterface11InitSocketsEv,"ax",%progbits
 2026              		.align	1
 2027              		.p2align 2,,3
 2028              		.global	_ZN13WiFiInterface11InitSocketsEv
 2029              		.syntax unified
 2030              		.thumb
 2031              		.thumb_func
 2032              		.fpu fpv4-sp-d16
 2033              		.type	_ZN13WiFiInterface11InitSocketsEv, %function
 2034              	_ZN13WiFiInterface11InitSocketsEv:
 2035              		@ args = 0, pretend = 0, frame = 0
 2036              		@ frame_needed = 0, uses_anonymous_args = 0
 2037 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2038 0002 00F14D04 		add	r4, r0, #77
 2039 0006 0546     		mov	r5, r0
 2040 0008 E743     		mvns	r7, r4
 2041 000a 00F15006 		add	r6, r0, #80
 2042              	.L350:
 2043 000e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 2044 0012 23B9     		cbnz	r3, .L356
 2045              	.L349:
 2046 0014 B442     		cmp	r4, r6
 2047 0016 FAD1     		bne	.L350
 2048 0018 0023     		movs	r3, #0
 2049 001a 2B64     		str	r3, [r5, #64]
 2050 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2051              	.L356:
 2052 001e 3919     		adds	r1, r7, r4
ARM GAS  /tmp/cc8xJyMT.s 			page 37


 2053 0020 C9B2     		uxtb	r1, r1
 2054 0022 2846     		mov	r0, r5
 2055 0024 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 2056 0028 F4E7     		b	.L349
 2057              		.size	_ZN13WiFiInterface11InitSocketsEv, .-_ZN13WiFiInterface11InitSocketsEv
 2058 002a 00BF     		.section	.text._ZN13WiFiInterface12OpenDataPortEt,"ax",%progbits
 2059              		.align	1
 2060              		.p2align 2,,3
 2061              		.global	_ZN13WiFiInterface12OpenDataPortEt
 2062              		.syntax unified
 2063              		.thumb
 2064              		.thumb_func
 2065              		.fpu fpv4-sp-d16
 2066              		.type	_ZN13WiFiInterface12OpenDataPortEt, %function
 2067              	_ZN13WiFiInterface12OpenDataPortEt:
 2068              		@ args = 0, pretend = 0, frame = 0
 2069              		@ frame_needed = 0, uses_anonymous_args = 0
 2070 0000 70B5     		push	{r4, r5, r6, lr}
 2071 0002 036A     		ldr	r3, [r0, #32]
 2072 0004 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2073 0006 032B     		cmp	r3, #3
 2074 0008 0446     		mov	r4, r0
 2075 000a 0D46     		mov	r5, r1
 2076 000c 16D0     		beq	.L358
 2077 000e 4030     		adds	r0, r0, #64
 2078 0010 04F12403 		add	r3, r4, #36
 2079 0014 03E0     		b	.L360
 2080              	.L362:
 2081 0016 1268     		ldr	r2, [r2]
 2082 0018 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 2083 001a 032A     		cmp	r2, #3
 2084 001c 0ED0     		beq	.L358
 2085              	.L360:
 2086 001e 9842     		cmp	r0, r3
 2087 0020 1A46     		mov	r2, r3
 2088 0022 03F10403 		add	r3, r3, #4
 2089 0026 F6D1     		bne	.L362
 2090              	.L361:
 2091 0028 A4F84A50 		strh	r5, [r4, #74]	@ movhi
 2092 002c 2946     		mov	r1, r5
 2093 002e 2046     		mov	r0, r4
 2094 0030 0123     		movs	r3, #1
 2095 0032 0322     		movs	r2, #3
 2096 0034 BDE87040 		pop	{r4, r5, r6, lr}
 2097 0038 FFF7FEBF 		b	_ZN13WiFiInterface17SendListenCommandEthj
 2098              	.L358:
 2099 003c 0122     		movs	r2, #1
 2100 003e 2368     		ldr	r3, [r4]
 2101 0040 84F84C20 		strb	r2, [r4, #76]
 2102 0044 1B6D     		ldr	r3, [r3, #80]
 2103 0046 2046     		mov	r0, r4
 2104 0048 9847     		blx	r3
 2105 004a EDE7     		b	.L361
 2106              		.size	_ZN13WiFiInterface12OpenDataPortEt, .-_ZN13WiFiInterface12OpenDataPortEt
 2107              		.section	.text._ZN13WiFiInterface16ShutdownProtocolEh,"ax",%progbits
 2108              		.align	1
 2109              		.p2align 2,,3
ARM GAS  /tmp/cc8xJyMT.s 			page 38


 2110              		.global	_ZN13WiFiInterface16ShutdownProtocolEh
 2111              		.syntax unified
 2112              		.thumb
 2113              		.thumb_func
 2114              		.fpu fpv4-sp-d16
 2115              		.type	_ZN13WiFiInterface16ShutdownProtocolEh, %function
 2116              	_ZN13WiFiInterface16ShutdownProtocolEh:
 2117              		@ args = 0, pretend = 0, frame = 8
 2118              		@ frame_needed = 0, uses_anonymous_args = 0
 2119 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2120 0004 0446     		mov	r4, r0
 2121 0006 82B0     		sub	sp, sp, #8
 2122 0008 0D46     		mov	r5, r1
 2123 000a 6846     		mov	r0, sp
 2124 000c 211D     		adds	r1, r4, #4
 2125 000e 4FF0FF32 		mov	r2, #-1
 2126 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2127 0016 012D     		cmp	r5, #1
 2128 0018 39D0     		beq	.L371
 2129 001a 20D3     		bcc	.L372
 2130 001c 022D     		cmp	r5, #2
 2131 001e 18D1     		bne	.L370
 2132 0020 B4F84810 		ldrh	r1, [r4, #72]
 2133 0024 2046     		mov	r0, r4
 2134 0026 0023     		movs	r3, #0
 2135 0028 FF22     		movs	r2, #255
 2136 002a FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2137 002e 04F11C05 		add	r5, r4, #28
 2138 0032 B4F84860 		ldrh	r6, [r4, #72]
 2139 0036 3C34     		adds	r4, r4, #60
 2140 0038 01E0     		b	.L383
 2141              	.L382:
 2142 003a A542     		cmp	r5, r4
 2143 003c 09D0     		beq	.L370
 2144              	.L383:
 2145 003e 55F8040F 		ldr	r0, [r5, #4]!
 2146 0042 0389     		ldrh	r3, [r0, #8]
 2147 0044 B342     		cmp	r3, r6
 2148 0046 F8D1     		bne	.L382
 2149 0048 0368     		ldr	r3, [r0]
 2150 004a 9B68     		ldr	r3, [r3, #8]
 2151 004c 9847     		blx	r3
 2152 004e A542     		cmp	r5, r4
 2153 0050 F5D1     		bne	.L383
 2154              	.L370:
 2155 0052 6846     		mov	r0, sp
 2156 0054 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2157 0058 02B0     		add	sp, sp, #8
 2158              		@ sp needed
 2159 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2160              	.L372:
 2161 005e B4F84410 		ldrh	r1, [r4, #68]
 2162 0062 2046     		mov	r0, r4
 2163 0064 0023     		movs	r3, #0
 2164 0066 FF22     		movs	r2, #255
 2165 0068 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2166 006c 04F11C05 		add	r5, r4, #28
ARM GAS  /tmp/cc8xJyMT.s 			page 39


 2167 0070 B4F84460 		ldrh	r6, [r4, #68]
 2168 0074 3C34     		adds	r4, r4, #60
 2169 0076 01E0     		b	.L375
 2170              	.L374:
 2171 0078 AC42     		cmp	r4, r5
 2172 007a EAD0     		beq	.L370
 2173              	.L375:
 2174 007c 55F8040F 		ldr	r0, [r5, #4]!
 2175 0080 0389     		ldrh	r3, [r0, #8]
 2176 0082 B342     		cmp	r3, r6
 2177 0084 F8D1     		bne	.L374
 2178 0086 0368     		ldr	r3, [r0]
 2179 0088 9B68     		ldr	r3, [r3, #8]
 2180 008a 9847     		blx	r3
 2181 008c F4E7     		b	.L374
 2182              	.L371:
 2183 008e 0023     		movs	r3, #0
 2184 0090 FF22     		movs	r2, #255
 2185 0092 B4F84610 		ldrh	r1, [r4, #70]
 2186 0096 2046     		mov	r0, r4
 2187 0098 04F11C06 		add	r6, r4, #28
 2188 009c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2189 00a0 3546     		mov	r5, r6
 2190 00a2 B4F84680 		ldrh	r8, [r4, #70]
 2191 00a6 04F13C07 		add	r7, r4, #60
 2192 00aa 01E0     		b	.L378
 2193              	.L376:
 2194 00ac BD42     		cmp	r5, r7
 2195 00ae 09D0     		beq	.L388
 2196              	.L378:
 2197 00b0 55F8040F 		ldr	r0, [r5, #4]!
 2198 00b4 0389     		ldrh	r3, [r0, #8]
 2199 00b6 4345     		cmp	r3, r8
 2200 00b8 F8D1     		bne	.L376
 2201 00ba 0368     		ldr	r3, [r0]
 2202 00bc 9B68     		ldr	r3, [r3, #8]
 2203 00be 9847     		blx	r3
 2204 00c0 BD42     		cmp	r5, r7
 2205 00c2 F5D1     		bne	.L378
 2206              	.L388:
 2207 00c4 B4F84A10 		ldrh	r1, [r4, #74]
 2208 00c8 0029     		cmp	r1, #0
 2209 00ca C2D0     		beq	.L370
 2210 00cc 2046     		mov	r0, r4
 2211 00ce 0023     		movs	r3, #0
 2212 00d0 FF22     		movs	r2, #255
 2213 00d2 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2214 00d6 B4F84A40 		ldrh	r4, [r4, #74]
 2215 00da 01E0     		b	.L381
 2216              	.L379:
 2217 00dc AE42     		cmp	r6, r5
 2218 00de B8D0     		beq	.L370
 2219              	.L381:
 2220 00e0 56F8040F 		ldr	r0, [r6, #4]!
 2221 00e4 0389     		ldrh	r3, [r0, #8]
 2222 00e6 A342     		cmp	r3, r4
 2223 00e8 F8D1     		bne	.L379
ARM GAS  /tmp/cc8xJyMT.s 			page 40


 2224 00ea 0368     		ldr	r3, [r0]
 2225 00ec 9B68     		ldr	r3, [r3, #8]
 2226 00ee 9847     		blx	r3
 2227 00f0 F4E7     		b	.L379
 2228              		.size	_ZN13WiFiInterface16ShutdownProtocolEh, .-_ZN13WiFiInterface16ShutdownProtocolEh
 2229 00f2 00BF     		.section	.text._ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef,"ax",%progbits
 2230              		.align	1
 2231              		.p2align 2,,3
 2232              		.global	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef
 2233              		.syntax unified
 2234              		.thumb
 2235              		.thumb_func
 2236              		.fpu fpv4-sp-d16
 2237              		.type	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef, %function
 2238              	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef:
 2239              		@ args = 4, pretend = 0, frame = 8
 2240              		@ frame_needed = 0, uses_anonymous_args = 0
 2241 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2242 0002 0133     		adds	r3, r3, #1
 2243 0004 012B     		cmp	r3, #1
 2244 0006 83B0     		sub	sp, sp, #12
 2245 0008 2AD8     		bhi	.L406
 2246 000a 0229     		cmp	r1, #2
 2247 000c 0D46     		mov	r5, r1
 2248 000e 2BD8     		bhi	.L391
 2249 0010 002A     		cmp	r2, #0
 2250 0012 B8BF     		it	lt
 2251 0014 214B     		ldrlt	r3, .L407
 2252 0016 00EB4107 		add	r7, r0, r1, lsl #1
 2253 001a 0446     		mov	r4, r0
 2254 001c B4BF     		ite	lt
 2255 001e 33F81160 		ldrhlt	r6, [r3, r1, lsl #1]
 2256 0022 96B2     		uxthge	r6, r2
 2257 0024 6846     		mov	r0, sp
 2258 0026 4FF0FF32 		mov	r2, #-1
 2259 002a 211D     		adds	r1, r4, #4
 2260 002c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2261 0030 B7F84430 		ldrh	r3, [r7, #68]
 2262 0034 B342     		cmp	r3, r6
 2263 0036 02D0     		beq	.L405
 2264 0038 236D     		ldr	r3, [r4, #80]
 2265 003a 032B     		cmp	r3, #3
 2266 003c 1BD0     		beq	.L396
 2267              	.L405:
 2268 003e 6319     		adds	r3, r4, r5
 2269 0040 93F84D20 		ldrb	r2, [r3, #77]	@ zero_extendqisi2
 2270 0044 A7F84460 		strh	r6, [r7, #68]	@ movhi
 2271 0048 E2B1     		cbz	r2, .L397
 2272              	.L398:
 2273 004a 2946     		mov	r1, r5
 2274 004c 2046     		mov	r0, r4
 2275 004e 089A     		ldr	r2, [sp, #32]
 2276 0050 FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 2277 0054 6846     		mov	r0, sp
 2278 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2279 005a 0120     		movs	r0, #1
 2280 005c 03B0     		add	sp, sp, #12
ARM GAS  /tmp/cc8xJyMT.s 			page 41


 2281              		@ sp needed
 2282 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 2283              	.L406:
 2284 0060 0F49     		ldr	r1, .L407+4
 2285 0062 0898     		ldr	r0, [sp, #32]
 2286 0064 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2287              	.L391:
 2288 0068 0E49     		ldr	r1, .L407+8
 2289 006a 0898     		ldr	r0, [sp, #32]
 2290 006c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2291 0070 0220     		movs	r0, #2
 2292 0072 03B0     		add	sp, sp, #12
 2293              		@ sp needed
 2294 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 2295              	.L396:
 2296 0076 2946     		mov	r1, r5
 2297 0078 2046     		mov	r0, r4
 2298 007a FFF7FEFF 		bl	_ZN13WiFiInterface16ShutdownProtocolEh
 2299 007e A7F84460 		strh	r6, [r7, #68]	@ movhi
 2300 0082 6319     		adds	r3, r4, r5
 2301              	.L397:
 2302 0084 0122     		movs	r2, #1
 2303 0086 83F84D20 		strb	r2, [r3, #77]
 2304 008a 236D     		ldr	r3, [r4, #80]
 2305 008c 032B     		cmp	r3, #3
 2306 008e DCD1     		bne	.L398
 2307 0090 2946     		mov	r1, r5
 2308 0092 2046     		mov	r0, r4
 2309 0094 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 2310 0098 D7E7     		b	.L398
 2311              	.L408:
 2312 009a 00BF     		.align	2
 2313              	.L407:
 2314 009c 00000000 		.word	.LANCHOR10
 2315 00a0 00000000 		.word	.LC52
 2316 00a4 2C000000 		.word	.LC53
 2317              		.size	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef, .-_ZN13WiFiInterface14EnableProtocolEhii
 2318              		.section	.text._ZN13WiFiInterface15DisableProtocolEhRK9StringRef,"ax",%progbits
 2319              		.align	1
 2320              		.p2align 2,,3
 2321              		.global	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef
 2322              		.syntax unified
 2323              		.thumb
 2324              		.thumb_func
 2325              		.fpu fpv4-sp-d16
 2326              		.type	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef, %function
 2327              	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef:
 2328              		@ args = 0, pretend = 0, frame = 8
 2329              		@ frame_needed = 0, uses_anonymous_args = 0
 2330 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2331 0002 0229     		cmp	r1, #2
 2332 0004 83B0     		sub	sp, sp, #12
 2333 0006 1646     		mov	r6, r2
 2334 0008 19D8     		bhi	.L410
 2335 000a 0446     		mov	r4, r0
 2336 000c 0D46     		mov	r5, r1
 2337 000e 6846     		mov	r0, sp
ARM GAS  /tmp/cc8xJyMT.s 			page 42


 2338 0010 4FF0FF32 		mov	r2, #-1
 2339 0014 211D     		adds	r1, r4, #4
 2340 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2341 001a 236D     		ldr	r3, [r4, #80]
 2342 001c 032B     		cmp	r3, #3
 2343 001e 15D0     		beq	.L414
 2344              	.L411:
 2345 0020 6319     		adds	r3, r4, r5
 2346 0022 0027     		movs	r7, #0
 2347 0024 3246     		mov	r2, r6
 2348 0026 2946     		mov	r1, r5
 2349 0028 2046     		mov	r0, r4
 2350 002a 83F84D70 		strb	r7, [r3, #77]
 2351 002e FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 2352 0032 6846     		mov	r0, sp
 2353 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2354 0038 0120     		movs	r0, #1
 2355 003a 03B0     		add	sp, sp, #12
 2356              		@ sp needed
 2357 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 2358              	.L410:
 2359 003e 1046     		mov	r0, r2
 2360 0040 0549     		ldr	r1, .L415
 2361 0042 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2362 0046 0220     		movs	r0, #2
 2363 0048 03B0     		add	sp, sp, #12
 2364              		@ sp needed
 2365 004a F0BD     		pop	{r4, r5, r6, r7, pc}
 2366              	.L414:
 2367 004c 2946     		mov	r1, r5
 2368 004e 2046     		mov	r0, r4
 2369 0050 FFF7FEFF 		bl	_ZN13WiFiInterface16ShutdownProtocolEh
 2370 0054 E4E7     		b	.L411
 2371              	.L416:
 2372 0056 00BF     		.align	2
 2373              	.L415:
 2374 0058 2C000000 		.word	.LC53
 2375              		.size	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef, .-_ZN13WiFiInterface15DisableProtocolEhRK
 2376              		.section	.text._ZN13WiFiInterface17TerminateDataPortEv,"ax",%progbits
 2377              		.align	1
 2378              		.p2align 2,,3
 2379              		.global	_ZN13WiFiInterface17TerminateDataPortEv
 2380              		.syntax unified
 2381              		.thumb
 2382              		.thumb_func
 2383              		.fpu fpv4-sp-d16
 2384              		.type	_ZN13WiFiInterface17TerminateDataPortEv, %function
 2385              	_ZN13WiFiInterface17TerminateDataPortEv:
 2386              		@ args = 0, pretend = 0, frame = 0
 2387              		@ frame_needed = 0, uses_anonymous_args = 0
 2388 0000 38B5     		push	{r3, r4, r5, lr}
 2389 0002 046A     		ldr	r4, [r0, #32]
 2390 0004 B0F84A10 		ldrh	r1, [r0, #74]
 2391 0008 2389     		ldrh	r3, [r4, #8]
 2392 000a 8B42     		cmp	r3, r1
 2393 000c 0546     		mov	r5, r0
 2394 000e 13D0     		beq	.L418
ARM GAS  /tmp/cc8xJyMT.s 			page 43


 2395 0010 4030     		adds	r0, r0, #64
 2396 0012 05F12403 		add	r3, r5, #36
 2397 0016 04E0     		b	.L419
 2398              	.L429:
 2399 0018 53F8044B 		ldr	r4, [r3], #4
 2400 001c 2289     		ldrh	r2, [r4, #8]
 2401 001e 8A42     		cmp	r2, r1
 2402 0020 0AD0     		beq	.L418
 2403              	.L419:
 2404 0022 9842     		cmp	r0, r3
 2405 0024 F8D1     		bne	.L429
 2406 0026 0023     		movs	r3, #0
 2407 0028 FF22     		movs	r2, #255
 2408 002a 2846     		mov	r0, r5
 2409 002c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2410 0030 0023     		movs	r3, #0
 2411 0032 A5F84A30 		strh	r3, [r5, #74]	@ movhi
 2412 0036 38BD     		pop	{r3, r4, r5, pc}
 2413              	.L418:
 2414 0038 95F84C30 		ldrb	r3, [r5, #76]	@ zero_extendqisi2
 2415 003c 1BB9     		cbnz	r3, .L426
 2416 003e 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 2417 0042 042B     		cmp	r3, #4
 2418 0044 12D0     		beq	.L422
 2419              	.L426:
 2420 0046 0023     		movs	r3, #0
 2421 0048 FF22     		movs	r2, #255
 2422 004a 2846     		mov	r0, r5
 2423 004c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2424 0050 2368     		ldr	r3, [r4]
 2425 0052 0A49     		ldr	r1, .L432
 2426 0054 DA68     		ldr	r2, [r3, #12]
 2427 0056 8A42     		cmp	r2, r1
 2428 0058 0CD1     		bne	.L423
 2429 005a 9B68     		ldr	r3, [r3, #8]
 2430 005c 2046     		mov	r0, r4
 2431 005e 9847     		blx	r3
 2432              	.L424:
 2433 0060 0023     		movs	r3, #0
 2434 0062 A5F84A30 		strh	r3, [r5, #74]	@ movhi
 2435 0066 85F84C30 		strb	r3, [r5, #76]
 2436 006a 38BD     		pop	{r3, r4, r5, pc}
 2437              	.L422:
 2438 006c 0123     		movs	r3, #1
 2439 006e 85F84C30 		strb	r3, [r5, #76]
 2440 0072 38BD     		pop	{r3, r4, r5, pc}
 2441              	.L423:
 2442 0074 2046     		mov	r0, r4
 2443 0076 9047     		blx	r2
 2444 0078 F2E7     		b	.L424
 2445              	.L433:
 2446 007a 00BF     		.align	2
 2447              	.L432:
 2448 007c 00000000 		.word	_ZN10WiFiSocket19TerminateAndDisableEv
 2449              		.size	_ZN13WiFiInterface17TerminateDataPortEv, .-_ZN13WiFiInterface17TerminateDataPortEv
 2450              		.section	.text._ZN13WiFiInterface13StopListeningEt,"ax",%progbits
 2451              		.align	1
ARM GAS  /tmp/cc8xJyMT.s 			page 44


 2452              		.p2align 2,,3
 2453              		.global	_ZN13WiFiInterface13StopListeningEt
 2454              		.syntax unified
 2455              		.thumb
 2456              		.thumb_func
 2457              		.fpu fpv4-sp-d16
 2458              		.type	_ZN13WiFiInterface13StopListeningEt, %function
 2459              	_ZN13WiFiInterface13StopListeningEt:
 2460              		@ args = 0, pretend = 0, frame = 0
 2461              		@ frame_needed = 0, uses_anonymous_args = 0
 2462              		@ link register save eliminated.
 2463 0000 0023     		movs	r3, #0
 2464 0002 FF22     		movs	r2, #255
 2465 0004 FFF7FEBF 		b	_ZN13WiFiInterface17SendListenCommandEthj
 2466              		.size	_ZN13WiFiInterface13StopListeningEt, .-_ZN13WiFiInterface13StopListeningEt
 2467              		.section	.text._ZN13WiFiInterface12GetNewStatusEv,"ax",%progbits
 2468              		.align	1
 2469              		.p2align 2,,3
 2470              		.global	_ZN13WiFiInterface12GetNewStatusEv
 2471              		.syntax unified
 2472              		.thumb
 2473              		.thumb_func
 2474              		.fpu fpv4-sp-d16
 2475              		.type	_ZN13WiFiInterface12GetNewStatusEv, %function
 2476              	_ZN13WiFiInterface12GetNewStatusEv:
 2477              		@ args = 0, pretend = 0, frame = 104
 2478              		@ frame_needed = 0, uses_anonymous_args = 0
 2479 0000 70B5     		push	{r4, r5, r6, lr}
 2480 0002 0024     		movs	r4, #0
 2481 0004 9EB0     		sub	sp, sp, #120
 2482 0006 0546     		mov	r5, r0
 2483 0008 80F85740 		strb	r4, [r0, #87]
 2484 000c 2346     		mov	r3, r4
 2485 000e 0522     		movs	r2, #5
 2486 0010 1749     		ldr	r1, .L446
 2487 0012 5F20     		movs	r0, #95
 2488 0014 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 2489 0018 04AE     		add	r6, sp, #16
 2490 001a 6421     		movs	r1, #100
 2491 001c 2346     		mov	r3, r4
 2492 001e CDE90261 		strd	r6, r1, [sp, #8]
 2493 0022 CDE90044 		strd	r4, r4, [sp]
 2494 0026 2246     		mov	r2, r4
 2495 0028 2846     		mov	r0, r5
 2496 002a 1321     		movs	r1, #19
 2497 002c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2498 0030 031E     		subs	r3, r0, #0
 2499 0032 8DF87340 		strb	r4, [sp, #115]
 2500 0036 05DB     		blt	.L444
 2501 0038 02D0     		beq	.L435
 2502 003a 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 2503 003e 7BB9     		cbnz	r3, .L445
 2504              	.L435:
 2505 0040 1EB0     		add	sp, sp, #120
 2506              		@ sp needed
 2507 0042 70BD     		pop	{r4, r5, r6, pc}
 2508              	.L444:
ARM GAS  /tmp/cc8xJyMT.s 			page 45


 2509 0044 0C33     		adds	r3, r3, #12
 2510 0046 28BF     		it	cs
 2511 0048 0A4A     		ldrcs	r2, .L446+4
 2512 004a 6869     		ldr	r0, [r5, #20]
 2513 004c 2CBF     		ite	cs
 2514 004e 52F82330 		ldrcs	r3, [r2, r3, lsl #2]
 2515 0052 094B     		ldrcc	r3, .L446+8
 2516 0054 094A     		ldr	r2, .L446+12
 2517 0056 8521     		movs	r1, #133
 2518 0058 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2519 005c 1EB0     		add	sp, sp, #120
 2520              		@ sp needed
 2521 005e 70BD     		pop	{r4, r5, r6, pc}
 2522              	.L445:
 2523 0060 3346     		mov	r3, r6
 2524 0062 6869     		ldr	r0, [r5, #20]
 2525 0064 064A     		ldr	r2, .L446+16
 2526 0066 8521     		movs	r1, #133
 2527 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2528 006c 1EB0     		add	sp, sp, #120
 2529              		@ sp needed
 2530 006e 70BD     		pop	{r4, r5, r6, pc}
 2531              	.L447:
 2532              		.align	2
 2533              	.L446:
 2534 0070 00000000 		.word	_ZL21EspTransferRequestIsr17CallbackParameter
 2535 0074 00000000 		.word	.LANCHOR9
 2536 0078 00000000 		.word	.LC12
 2537 007c 00000000 		.word	.LC54
 2538 0080 2C000000 		.word	.LC55
 2539              		.size	_ZN13WiFiInterface12GetNewStatusEv, .-_ZN13WiFiInterface12GetNewStatusEv
 2540              		.section	.text._ZN13WiFiInterface21TranslateWiFiResponseEl,"ax",%progbits
 2541              		.align	1
 2542              		.p2align 2,,3
 2543              		.global	_ZN13WiFiInterface21TranslateWiFiResponseEl
 2544              		.syntax unified
 2545              		.thumb
 2546              		.thumb_func
 2547              		.fpu fpv4-sp-d16
 2548              		.type	_ZN13WiFiInterface21TranslateWiFiResponseEl, %function
 2549              	_ZN13WiFiInterface21TranslateWiFiResponseEl:
 2550              		@ args = 0, pretend = 0, frame = 0
 2551              		@ frame_needed = 0, uses_anonymous_args = 0
 2552              		@ link register save eliminated.
 2553 0000 0C30     		adds	r0, r0, #12
 2554 0002 26BF     		itte	cs
 2555 0004 024B     		ldrcs	r3, .L451
 2556 0006 53F82000 		ldrcs	r0, [r3, r0, lsl #2]
 2557 000a 0248     		ldrcc	r0, .L451+4
 2558 000c 7047     		bx	lr
 2559              	.L452:
 2560 000e 00BF     		.align	2
 2561              	.L451:
 2562 0010 00000000 		.word	.LANCHOR9
 2563 0014 00000000 		.word	.LC12
 2564              		.size	_ZN13WiFiInterface21TranslateWiFiResponseEl, .-_ZN13WiFiInterface21TranslateWiFiResponseEl
 2565              		.section	.text._ZN13WiFiInterface12SpiInterruptEv,"ax",%progbits
ARM GAS  /tmp/cc8xJyMT.s 			page 46


 2566              		.align	1
 2567              		.p2align 2,,3
 2568              		.global	_ZN13WiFiInterface12SpiInterruptEv
 2569              		.syntax unified
 2570              		.thumb
 2571              		.thumb_func
 2572              		.fpu fpv4-sp-d16
 2573              		.type	_ZN13WiFiInterface12SpiInterruptEv, %function
 2574              	_ZN13WiFiInterface12SpiInterruptEv:
 2575              		@ args = 0, pretend = 0, frame = 0
 2576              		@ frame_needed = 0, uses_anonymous_args = 0
 2577 0000 70B5     		push	{r4, r5, r6, lr}
 2578 0002 144C     		ldr	r4, .L468
 2579 0004 2569     		ldr	r5, [r4, #16]
 2580 0006 4FF48073 		mov	r3, #256
 2581 000a E905     		lsls	r1, r5, #23
 2582 000c A361     		str	r3, [r4, #24]
 2583 000e 00D4     		bmi	.L467
 2584 0010 70BD     		pop	{r4, r5, r6, pc}
 2585              	.L467:
 2586 0012 0121     		movs	r1, #1
 2587 0014 0646     		mov	r6, r0
 2588 0016 1048     		ldr	r0, .L468+4
 2589 0018 FFF7FEFF 		bl	dmac_channel_disable
 2590 001c 0221     		movs	r1, #2
 2591 001e 0E48     		ldr	r0, .L468+4
 2592 0020 FFF7FEFF 		bl	dmac_channel_suspend
 2593 0024 0223     		movs	r3, #2
 2594 0026 2360     		str	r3, [r4]
 2595 0028 0021     		movs	r1, #0
 2596 002a 5E20     		movs	r0, #94
 2597 002c FFF7FEFF 		bl	digitalWrite
 2598 0030 2A07     		lsls	r2, r5, #28
 2599 0032 04D5     		bpl	.L455
 2600 0034 D6F8B030 		ldr	r3, [r6, #176]
 2601 0038 0133     		adds	r3, r3, #1
 2602 003a C6F8B030 		str	r3, [r6, #176]
 2603              	.L455:
 2604 003e 6B05     		lsls	r3, r5, #21
 2605 0040 04D5     		bpl	.L456
 2606 0042 D6F8AC30 		ldr	r3, [r6, #172]
 2607 0046 0133     		adds	r3, r3, #1
 2608 0048 C6F8AC30 		str	r3, [r6, #172]
 2609              	.L456:
 2610 004c 034B     		ldr	r3, .L468+8
 2611 004e 0022     		movs	r2, #0
 2612 0050 1A70     		strb	r2, [r3]
 2613 0052 70BD     		pop	{r4, r5, r6, pc}
 2614              	.L469:
 2615              		.align	2
 2616              	.L468:
 2617 0054 00800840 		.word	1074298880
 2618 0058 00000C40 		.word	1074528256
 2619 005c 00000000 		.word	.LANCHOR6
 2620              		.size	_ZN13WiFiInterface12SpiInterruptEv, .-_ZN13WiFiInterface12SpiInterruptEv
 2621              		.section	.text.SPI_Handler,"ax",%progbits
 2622              		.align	1
ARM GAS  /tmp/cc8xJyMT.s 			page 47


 2623              		.p2align 2,,3
 2624              		.global	SPI_Handler
 2625              		.syntax unified
 2626              		.thumb
 2627              		.thumb_func
 2628              		.fpu fpv4-sp-d16
 2629              		.type	SPI_Handler, %function
 2630              	SPI_Handler:
 2631              		@ args = 0, pretend = 0, frame = 0
 2632              		@ frame_needed = 0, uses_anonymous_args = 0
 2633              		@ link register save eliminated.
 2634 0000 014B     		ldr	r3, .L471
 2635 0002 1868     		ldr	r0, [r3]
 2636 0004 FFF7FEBF 		b	_ZN13WiFiInterface12SpiInterruptEv
 2637              	.L472:
 2638              		.align	2
 2639              	.L471:
 2640 0008 00000000 		.word	.LANCHOR0
 2641              		.size	SPI_Handler, .-SPI_Handler
 2642              		.section	.text._ZN13WiFiInterface4SpinEb,"ax",%progbits
 2643              		.align	1
 2644              		.p2align 2,,3
 2645              		.global	_ZN13WiFiInterface4SpinEb
 2646              		.syntax unified
 2647              		.thumb
 2648              		.thumb_func
 2649              		.fpu fpv4-sp-d16
 2650              		.type	_ZN13WiFiInterface4SpinEb, %function
 2651              	_ZN13WiFiInterface4SpinEb:
 2652              		@ args = 0, pretend = 0, frame = 160
 2653              		@ frame_needed = 0, uses_anonymous_args = 0
 2654 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2655 0004 036D     		ldr	r3, [r0, #80]
 2656 0006 ADB0     		sub	sp, sp, #180
 2657 0008 0446     		mov	r4, r0
 2658 000a 0F46     		mov	r7, r1
 2659 000c 042B     		cmp	r3, #4
 2660 000e 00F29580 		bhi	.L474
 2661 0012 DFE803F0 		tbb	[pc, r3]
 2662              	.L476:
 2663 0016 41       		.byte	(.L475-.L476)/2
 2664 0017 81       		.byte	(.L477-.L476)/2
 2665 0018 52       		.byte	(.L478-.L476)/2
 2666 0019 5B       		.byte	(.L479-.L476)/2
 2667 001a 03       		.byte	(.L480-.L476)/2
 2668 001b 00       		.p2align 1
 2669              	.L480:
 2670 001c 0029     		cmp	r1, #0
 2671 001e 4ED0     		beq	.L481
 2672 0020 90F85730 		ldrb	r3, [r0, #87]	@ zero_extendqisi2
 2673 0024 002B     		cmp	r3, #0
 2674 0026 40F03081 		bne	.L629
 2675              	.L495:
 2676 002a 94F8D430 		ldrb	r3, [r4, #212]	@ zero_extendqisi2
 2677 002e 002B     		cmp	r3, #0
 2678 0030 3CD0     		beq	.L527
 2679              	.L531:
ARM GAS  /tmp/cc8xJyMT.s 			page 48


 2680 0032 B94D     		ldr	r5, .L642
 2681 0034 94F8D530 		ldrb	r3, [r4, #213]	@ zero_extendqisi2
 2682 0038 04F1D606 		add	r6, r4, #214
 2683 003c 4FF09708 		mov	r8, #151
 2684 0040 2846     		mov	r0, r5
 2685 0042 E3B9     		cbnz	r3, .L522
 2686              	.L630:
 2687 0044 FFF7FEFF 		bl	_ZN9UARTClass9availableEv
 2688 0048 0028     		cmp	r0, #0
 2689 004a 7CD0     		beq	.L520
 2690 004c 2846     		mov	r0, r5
 2691 004e FFF7FEFF 		bl	_ZN9UARTClass4readEv
 2692 0052 C3B2     		uxtb	r3, r0
 2693 0054 0A2B     		cmp	r3, #10
 2694 0056 6DD0     		beq	.L525
 2695 0058 0D2B     		cmp	r3, #13
 2696 005a 1946     		mov	r1, r3
 2697 005c 08A8     		add	r0, sp, #32
 2698 005e 09D0     		beq	.L524
 2699 0060 CDE90868 		strd	r6, r8, [sp, #32]
 2700 0064 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2701 0068 9621     		movs	r1, #150
 2702 006a 3046     		mov	r0, r6
 2703 006c FFF7FEFF 		bl	_Z7StrnlenPKcj
 2704 0070 9628     		cmp	r0, #150
 2705 0072 5FD0     		beq	.L525
 2706              	.L524:
 2707 0074 94F8D530 		ldrb	r3, [r4, #213]	@ zero_extendqisi2
 2708 0078 2846     		mov	r0, r5
 2709 007a 002B     		cmp	r3, #0
 2710 007c E2D0     		beq	.L630
 2711              	.L522:
 2712 007e 17B3     		cbz	r7, .L473
 2713              	.L532:
 2714 0080 A64B     		ldr	r3, .L642+4
 2715 0082 9B6C     		ldr	r3, [r3, #72]
 2716 0084 5B04     		lsls	r3, r3, #17
 2717 0086 65D4     		bmi	.L631
 2718              	.L530:
 2719 0088 0023     		movs	r3, #0
 2720 008a 84F8D630 		strb	r3, [r4, #214]
 2721 008e 84F8D530 		strb	r3, [r4, #213]
 2722 0092 2DB0     		add	sp, sp, #180
 2723              		@ sp needed
 2724 0094 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2725              	.L475:
 2726 0098 89B1     		cbz	r1, .L481
 2727 009a C069     		ldr	r0, [r0, #28]
 2728 009c 0028     		cmp	r0, #0
 2729 009e C4D0     		beq	.L495
 2730 00a0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader4SpinEv
 2731              	.L483:
 2732 00a4 94F8D430 		ldrb	r3, [r4, #212]	@ zero_extendqisi2
 2733 00a8 002B     		cmp	r3, #0
 2734 00aa C2D1     		bne	.L531
 2735              	.L527:
 2736 00ac 94F8D530 		ldrb	r3, [r4, #213]	@ zero_extendqisi2
ARM GAS  /tmp/cc8xJyMT.s 			page 49


 2737 00b0 002B     		cmp	r3, #0
 2738 00b2 E5D1     		bne	.L532
 2739              	.L628:
 2740 00b4 2DB0     		add	sp, sp, #180
 2741              		@ sp needed
 2742 00b6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2743              	.L478:
 2744 00ba 0029     		cmp	r1, #0
 2745 00bc 50D1     		bne	.L632
 2746              	.L481:
 2747 00be 94F8D430 		ldrb	r3, [r4, #212]	@ zero_extendqisi2
 2748 00c2 002B     		cmp	r3, #0
 2749 00c4 B5D1     		bne	.L531
 2750              	.L473:
 2751 00c6 2DB0     		add	sp, sp, #180
 2752              		@ sp needed
 2753 00c8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2754              	.L479:
 2755 00cc 0029     		cmp	r1, #0
 2756 00ce F6D0     		beq	.L481
 2757 00d0 90F85730 		ldrb	r3, [r0, #87]	@ zero_extendqisi2
 2758 00d4 002B     		cmp	r3, #0
 2759 00d6 40F0FB80 		bne	.L490
 2760              	.L493:
 2761 00da 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 2762 00de 94F85420 		ldrb	r2, [r4, #84]	@ zero_extendqisi2
 2763 00e2 9342     		cmp	r3, r2
 2764 00e4 46D0     		beq	.L633
 2765 00e6 032B     		cmp	r3, #3
 2766 00e8 9FD0     		beq	.L495
 2767 00ea 591F     		subs	r1, r3, #5
 2768 00ec 0129     		cmp	r1, #1
 2769 00ee 9CD9     		bls	.L495
 2770 00f0 012B     		cmp	r3, #1
 2771 00f2 00F0FB80 		beq	.L496
 2772 00f6 0023     		movs	r3, #0
 2773 00f8 CDE90233 		strd	r3, r3, [sp, #8]
 2774 00fc CDE90033 		strd	r3, r3, [sp]
 2775 0100 1A46     		mov	r2, r3
 2776 0102 1021     		movs	r1, #16
 2777 0104 2046     		mov	r0, r4
 2778 0106 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2779 010a 0546     		mov	r5, r0
 2780              	.L497:
 2781 010c 002D     		cmp	r5, #0
 2782 010e C0F2F580 		blt	.L499
 2783 0112 0423     		movs	r3, #4
 2784 0114 2365     		str	r3, [r4, #80]
 2785 0116 88E7     		b	.L495
 2786              	.L477:
 2787 0118 0029     		cmp	r1, #0
 2788 011a D0D0     		beq	.L481
 2789 011c FFF7FEFF 		bl	millis
 2790 0120 A369     		ldr	r3, [r4, #24]
 2791 0122 C31A     		subs	r3, r0, r3
 2792 0124 B3F5967F 		cmp	r3, #300
 2793 0128 FFF47FAF 		bcc	.L495
ARM GAS  /tmp/cc8xJyMT.s 			page 50


 2794 012c 0223     		movs	r3, #2
 2795 012e A061     		str	r0, [r4, #24]
 2796 0130 2365     		str	r3, [r4, #80]
 2797 0132 B7E7     		b	.L483
 2798              	.L525:
 2799 0134 0123     		movs	r3, #1
 2800 0136 84F8D530 		strb	r3, [r4, #213]
 2801 013a A0E7     		b	.L522
 2802              	.L474:
 2803 013c 90F8D430 		ldrb	r3, [r0, #212]	@ zero_extendqisi2
 2804 0140 002B     		cmp	r3, #0
 2805 0142 7FF476AF 		bne	.L531
 2806              	.L520:
 2807 0146 002F     		cmp	r7, #0
 2808 0148 BDD0     		beq	.L473
 2809 014a 94F8D530 		ldrb	r3, [r4, #213]	@ zero_extendqisi2
 2810 014e 002B     		cmp	r3, #0
 2811 0150 B0D0     		beq	.L628
 2812 0152 95E7     		b	.L532
 2813              	.L631:
 2814 0154 04F1D601 		add	r1, r4, #214
 2815 0158 7148     		ldr	r0, .L642+8
 2816 015a FFF7FEFF 		bl	debugPrintf
 2817 015e 93E7     		b	.L530
 2818              	.L632:
 2819 0160 FFF7FEFF 		bl	millis
 2820 0164 0546     		mov	r5, r0
 2821 0166 0B20     		movs	r0, #11
 2822 0168 FFF7FEFF 		bl	digitalRead
 2823 016c 0028     		cmp	r0, #0
 2824 016e 45D1     		bne	.L634
 2825              	.L484:
 2826 0170 A561     		str	r5, [r4, #24]
 2827 0172 5AE7     		b	.L495
 2828              	.L633:
 2829 0174 042B     		cmp	r3, #4
 2830 0176 40F0E380 		bne	.L635
 2831              	.L501:
 2832 017a 256C     		ldr	r5, [r4, #64]
 2833 017c 2B46     		mov	r3, r5
 2834 017e 08E0     		b	.L506
 2835              	.L636:
 2836 0180 236C     		ldr	r3, [r4, #64]
 2837 0182 0133     		adds	r3, r3, #1
 2838 0184 082B     		cmp	r3, #8
 2839 0186 0ABF     		itet	eq
 2840 0188 0346     		moveq	r3, r0
 2841 018a 2364     		strne	r3, [r4, #64]
 2842 018c 2064     		streq	r0, [r4, #64]
 2843 018e 9D42     		cmp	r5, r3
 2844 0190 07D0     		beq	.L505
 2845              	.L506:
 2846 0192 0833     		adds	r3, r3, #8
 2847 0194 54F82300 		ldr	r0, [r4, r3, lsl #2]
 2848 0198 FFF7FEFF 		bl	_ZNK10WiFiSocket12NeedsPollingEv
 2849 019c 0028     		cmp	r0, #0
 2850 019e EFD0     		beq	.L636
ARM GAS  /tmp/cc8xJyMT.s 			page 51


 2851 01a0 256C     		ldr	r5, [r4, #64]
 2852              	.L505:
 2853 01a2 0835     		adds	r5, r5, #8
 2854 01a4 0121     		movs	r1, #1
 2855 01a6 54F82500 		ldr	r0, [r4, r5, lsl #2]
 2856 01aa 0368     		ldr	r3, [r0]
 2857 01ac 1B68     		ldr	r3, [r3]
 2858 01ae 9847     		blx	r3
 2859 01b0 236C     		ldr	r3, [r4, #64]
 2860 01b2 0133     		adds	r3, r3, #1
 2861 01b4 082B     		cmp	r3, #8
 2862 01b6 08BF     		it	eq
 2863 01b8 0023     		moveq	r3, #0
 2864 01ba 2364     		str	r3, [r4, #64]
 2865 01bc 94F84C30 		ldrb	r3, [r4, #76]	@ zero_extendqisi2
 2866 01c0 002B     		cmp	r3, #0
 2867 01c2 3FF432AF 		beq	.L495
 2868 01c6 226A     		ldr	r2, [r4, #32]
 2869 01c8 137B     		ldrb	r3, [r2, #12]	@ zero_extendqisi2
 2870 01ca 032B     		cmp	r3, #3
 2871 01cc 04F14000 		add	r0, r4, #64
 2872 01d0 18BF     		it	ne
 2873 01d2 04F12403 		addne	r3, r4, #36
 2874 01d6 07D0     		beq	.L509
 2875              	.L511:
 2876 01d8 9842     		cmp	r0, r3
 2877 01da 3FF426AF 		beq	.L495
 2878 01de 53F8042B 		ldr	r2, [r3], #4
 2879 01e2 117B     		ldrb	r1, [r2, #12]	@ zero_extendqisi2
 2880 01e4 0329     		cmp	r1, #3
 2881 01e6 F7D1     		bne	.L511
 2882              	.L509:
 2883 01e8 92F82330 		ldrb	r3, [r2, #35]	@ zero_extendqisi2
 2884 01ec 042B     		cmp	r3, #4
 2885 01ee 3FF41CAF 		beq	.L495
 2886 01f2 2368     		ldr	r3, [r4]
 2887 01f4 2046     		mov	r0, r4
 2888 01f6 1B6D     		ldr	r3, [r3, #80]
 2889 01f8 9847     		blx	r3
 2890 01fa 16E7     		b	.L495
 2891              	.L634:
 2892 01fc 5F20     		movs	r0, #95
 2893 01fe FFF7FEFF 		bl	digitalRead
 2894 0202 0028     		cmp	r0, #0
 2895 0204 B4D0     		beq	.L484
 2896 0206 0E20     		movs	r0, #14
 2897 0208 FFF7FEFF 		bl	digitalRead
 2898 020c 0646     		mov	r6, r0
 2899 020e 0028     		cmp	r0, #0
 2900 0210 AED1     		bne	.L484
 2901 0212 A369     		ldr	r3, [r4, #24]
 2902 0214 ED1A     		subs	r5, r5, r3
 2903 0216 632D     		cmp	r5, #99
 2904 0218 7FF607AF 		bls	.L495
 2905 021c 414A     		ldr	r2, .L642+12
 2906 021e 6069     		ldr	r0, [r4, #20]
 2907 0220 8521     		movs	r1, #133
ARM GAS  /tmp/cc8xJyMT.s 			page 52


 2908 0222 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2909 0226 2046     		mov	r0, r4
 2910 0228 FFF7FEFF 		bl	_ZN13WiFiInterface8SetupSpiEv
 2911 022c 8C22     		movs	r2, #140
 2912 022e 08AB     		add	r3, sp, #32
 2913 0230 CDE90232 		strd	r3, r2, [sp, #8]
 2914 0234 CDE90066 		strd	r6, r6, [sp]
 2915 0238 3346     		mov	r3, r6
 2916 023a 3246     		mov	r2, r6
 2917 023c 0921     		movs	r1, #9
 2918 023e 2046     		mov	r0, r4
 2919 0240 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2920 0244 031E     		subs	r3, r0, #0
 2921 0246 40F3EF80 		ble	.L487
 2922 024a 344D     		ldr	r5, .L642+4
 2923 024c 1022     		movs	r2, #16
 2924 024e 0FA9     		add	r1, sp, #60
 2925 0250 04F1C400 		add	r0, r4, #196
 2926 0254 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 2927 0258 6B68     		ldr	r3, [r5, #4]
 2928 025a 0396     		str	r6, [sp, #12]
 2929 025c 2033     		adds	r3, r3, #32
 2930 025e 4022     		movs	r2, #64
 2931 0260 CDE90032 		strd	r3, r2, [sp]
 2932 0264 0296     		str	r6, [sp, #8]
 2933 0266 3346     		mov	r3, r6
 2934 0268 3246     		mov	r2, r6
 2935 026a 1221     		movs	r1, #18
 2936 026c 2046     		mov	r0, r4
 2937 026e FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2938 0272 20B1     		cbz	r0, .L488
 2939 0274 2868     		ldr	r0, [r5]
 2940 0276 2C4A     		ldr	r2, .L642+16
 2941 0278 8521     		movs	r1, #133
 2942 027a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2943              	.L488:
 2944 027e 0322     		movs	r2, #3
 2945 0280 0123     		movs	r3, #1
 2946 0282 2265     		str	r2, [r4, #80]
 2947 0284 84F85730 		strb	r3, [r4, #87]
 2948 0288 CFE6     		b	.L495
 2949              	.L629:
 2950 028a 5F20     		movs	r0, #95
 2951 028c FFF7FEFF 		bl	digitalRead
 2952 0290 0028     		cmp	r0, #0
 2953 0292 3FF4CAAE 		beq	.L495
 2954 0296 2046     		mov	r0, r4
 2955 0298 FFF7FEFF 		bl	_ZN13WiFiInterface12GetNewStatusEv
 2956 029c 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 2957 02a0 032B     		cmp	r3, #3
 2958 02a2 3FF4C2AE 		beq	.L495
 2959 02a6 0322     		movs	r2, #3
 2960 02a8 042B     		cmp	r3, #4
 2961 02aa 84F85430 		strb	r3, [r4, #84]
 2962 02ae 2265     		str	r2, [r4, #80]
 2963 02b0 4AD0     		beq	.L513
 2964 02b2 022B     		cmp	r3, #2
ARM GAS  /tmp/cc8xJyMT.s 			page 53


 2965 02b4 48D0     		beq	.L513
 2966 02b6 062B     		cmp	r3, #6
 2967 02b8 98BF     		it	ls
 2968 02ba 1C4A     		ldrls	r2, .L642+20
 2969 02bc 6069     		ldr	r0, [r4, #20]
 2970 02be 94BF     		ite	ls
 2971 02c0 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 2972 02c4 1A4B     		ldrhi	r3, .L642+24
 2973 02c6 1B4A     		ldr	r2, .L642+28
 2974 02c8 8521     		movs	r1, #133
 2975 02ca FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2976 02ce ACE6     		b	.L495
 2977              	.L490:
 2978 02d0 5F20     		movs	r0, #95
 2979 02d2 FFF7FEFF 		bl	digitalRead
 2980 02d6 0028     		cmp	r0, #0
 2981 02d8 3FF4FFAE 		beq	.L493
 2982 02dc 0F4B     		ldr	r3, .L642+4
 2983 02de 9B6C     		ldr	r3, [r3, #72]
 2984 02e0 9A07     		lsls	r2, r3, #30
 2985 02e2 15D4     		bmi	.L637
 2986              	.L494:
 2987 02e4 2046     		mov	r0, r4
 2988 02e6 FFF7FEFF 		bl	_ZN13WiFiInterface12GetNewStatusEv
 2989 02ea 9EE6     		b	.L495
 2990              	.L496:
 2991 02ec 042A     		cmp	r2, #4
 2992 02ee 00F08080 		beq	.L638
 2993 02f2 022A     		cmp	r2, #2
 2994 02f4 00F08C80 		beq	.L639
 2995 02f8 6FF00B05 		mvn	r5, #11
 2996              	.L499:
 2997 02fc 236D     		ldr	r3, [r4, #80]
 2998 02fe 002B     		cmp	r3, #0
 2999 0300 73D1     		bne	.L640
 3000              	.L500:
 3001 0302 2B46     		mov	r3, r5
 3002 0304 0C4A     		ldr	r2, .L642+32
 3003 0306 6069     		ldr	r0, [r4, #20]
 3004 0308 8521     		movs	r1, #133
 3005 030a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3006 030e 8CE6     		b	.L495
 3007              	.L637:
 3008 0310 0A48     		ldr	r0, .L642+36
 3009 0312 FFF7FEFF 		bl	debugPrintf
 3010 0316 E5E7     		b	.L494
 3011              	.L643:
 3012              		.align	2
 3013              	.L642:
 3014 0318 00000000 		.word	Serial1
 3015 031c 00000000 		.word	reprap
 3016 0320 B4000000 		.word	.LC61
 3017 0324 00000000 		.word	.LC56
 3018 0328 00000000 		.word	.LC18
 3019 032c 00000000 		.word	.LANCHOR1
 3020 0330 00000000 		.word	.LC0
 3021 0334 3C000000 		.word	.LC38
ARM GAS  /tmp/cc8xJyMT.s 			page 54


 3022 0338 68000000 		.word	.LC59
 3023 033c 4C000000 		.word	.LC58
 3024              	.L635:
 3025 0340 022B     		cmp	r3, #2
 3026 0342 3FF41AAF 		beq	.L501
 3027 0346 70E6     		b	.L495
 3028              	.L513:
 3029 0348 0023     		movs	r3, #0
 3030 034a 8C21     		movs	r1, #140
 3031 034c 08AA     		add	r2, sp, #32
 3032 034e CDE90221 		strd	r2, r1, [sp, #8]
 3033 0352 CDE90033 		strd	r3, r3, [sp]
 3034 0356 1A46     		mov	r2, r3
 3035 0358 0921     		movs	r1, #9
 3036 035a 2046     		mov	r0, r4
 3037 035c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3038 0360 0028     		cmp	r0, #0
 3039 0362 04F18B06 		add	r6, r4, #139
 3040 0366 10DD     		ble	.L515
 3041 0368 089B     		ldr	r3, [sp, #32]
 3042 036a 84F85830 		strb	r3, [r4, #88]
 3043 036e 190A     		lsrs	r1, r3, #8
 3044 0370 1A0C     		lsrs	r2, r3, #16
 3045 0372 1B0E     		lsrs	r3, r3, #24
 3046 0374 84F85910 		strb	r1, [r4, #89]
 3047 0378 84F85A20 		strb	r2, [r4, #90]
 3048 037c 84F85B30 		strb	r3, [r4, #91]
 3049 0380 2022     		movs	r2, #32
 3050 0382 13A9     		add	r1, sp, #76
 3051 0384 3046     		mov	r0, r6
 3052 0386 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 3053              	.L515:
 3054 038a 04F14D05 		add	r5, r4, #77
 3055 038e 6FEA0509 		mvn	r9, r5
 3056 0392 04F15008 		add	r8, r4, #80
 3057              	.L517:
 3058 0396 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 3059 039a FBB9     		cbnz	r3, .L641
 3060              	.L516:
 3061 039c 4545     		cmp	r5, r8
 3062 039e FAD1     		bne	.L517
 3063 03a0 94F85530 		ldrb	r3, [r4, #85]	@ zero_extendqisi2
 3064 03a4 D4F81490 		ldr	r9, [r4, #20]
 3065 03a8 0022     		movs	r2, #0
 3066 03aa 062B     		cmp	r3, #6
 3067 03ac 2264     		str	r2, [r4, #64]
 3068 03ae C4F8B420 		str	r2, [r4, #180]
 3069 03b2 96BF     		itet	ls
 3070 03b4 234A     		ldrls	r2, .L644
 3071 03b6 244D     		ldrhi	r5, .L644+4
 3072 03b8 52F82350 		ldrls	r5, [r2, r3, lsl #2]
 3073 03bc 0DF11008 		add	r8, sp, #16
 3074 03c0 04F15801 		add	r1, r4, #88
 3075 03c4 4046     		mov	r0, r8
 3076 03c6 FFF7FEFF 		bl	_ZN9IP4StringC1EPKh
 3077 03ca CDE90068 		strd	r6, r8, [sp]
 3078 03ce 2B46     		mov	r3, r5
ARM GAS  /tmp/cc8xJyMT.s 			page 55


 3079 03d0 4846     		mov	r0, r9
 3080 03d2 1E4A     		ldr	r2, .L644+8
 3081 03d4 8521     		movs	r1, #133
 3082 03d6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3083 03da 26E6     		b	.L495
 3084              	.L641:
 3085 03dc 09EB0501 		add	r1, r9, r5
 3086 03e0 C9B2     		uxtb	r1, r1
 3087 03e2 2046     		mov	r0, r4
 3088 03e4 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 3089 03e8 D8E7     		b	.L516
 3090              	.L640:
 3091 03ea 2046     		mov	r0, r4
 3092 03ec FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.11
 3093 03f0 87E7     		b	.L500
 3094              	.L638:
 3095 03f2 0023     		movs	r3, #0
 3096 03f4 2020     		movs	r0, #32
 3097 03f6 04F16A01 		add	r1, r4, #106
 3098 03fa CDE90010 		strd	r1, r0, [sp]
 3099 03fe CDE90233 		strd	r3, r3, [sp, #8]
 3100 0402 1A46     		mov	r2, r3
 3101 0404 0E21     		movs	r1, #14
 3102 0406 2046     		mov	r0, r4
 3103 0408 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3104 040c 0546     		mov	r5, r0
 3105 040e 7DE6     		b	.L497
 3106              	.L639:
 3107 0410 0023     		movs	r3, #0
 3108 0412 CDE90233 		strd	r3, r3, [sp, #8]
 3109 0416 CDE90033 		strd	r3, r3, [sp]
 3110 041a 1A46     		mov	r2, r3
 3111 041c 0F21     		movs	r1, #15
 3112 041e 2046     		mov	r0, r4
 3113 0420 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3114 0424 0546     		mov	r5, r0
 3115 0426 71E6     		b	.L497
 3116              	.L487:
 3117 0428 094A     		ldr	r2, .L644+12
 3118 042a 6069     		ldr	r0, [r4, #20]
 3119 042c 8521     		movs	r1, #133
 3120 042e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3121 0432 236D     		ldr	r3, [r4, #80]
 3122 0434 002B     		cmp	r3, #0
 3123 0436 3FF4F8AD 		beq	.L495
 3124 043a 2046     		mov	r0, r4
 3125 043c FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.11
 3126 0440 F3E5     		b	.L495
 3127              	.L645:
 3128 0442 00BF     		.align	2
 3129              	.L644:
 3130 0444 00000000 		.word	.LANCHOR1
 3131 0448 00000000 		.word	.LC0
 3132 044c 90000000 		.word	.LC60
 3133 0450 18000000 		.word	.LC57
 3134              		.size	_ZN13WiFiInterface4SpinEb, .-_ZN13WiFiInterface4SpinEb
 3135              		.section	.text._ZN13WiFiInterface9StartWiFiEv,"ax",%progbits
ARM GAS  /tmp/cc8xJyMT.s 			page 56


 3136              		.align	1
 3137              		.p2align 2,,3
 3138              		.global	_ZN13WiFiInterface9StartWiFiEv
 3139              		.syntax unified
 3140              		.thumb
 3141              		.thumb_func
 3142              		.fpu fpv4-sp-d16
 3143              		.type	_ZN13WiFiInterface9StartWiFiEv, %function
 3144              	_ZN13WiFiInterface9StartWiFiEv:
 3145              		@ args = 0, pretend = 0, frame = 0
 3146              		@ frame_needed = 0, uses_anonymous_args = 0
 3147 0000 10B5     		push	{r4, lr}
 3148 0002 0121     		movs	r1, #1
 3149 0004 0446     		mov	r4, r0
 3150 0006 6420     		movs	r0, #100
 3151 0008 FFF7FEFF 		bl	digitalWrite
 3152 000c 0748     		ldr	r0, .L648
 3153 000e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3154 0012 0749     		ldr	r1, .L648+4
 3155 0014 0748     		ldr	r0, .L648+8
 3156 0016 FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 3157 001a 0023     		movs	r3, #0
 3158 001c 0122     		movs	r2, #1
 3159 001e 84F8D420 		strb	r2, [r4, #212]
 3160 0022 84F8D630 		strb	r3, [r4, #214]
 3161 0026 84F8D530 		strb	r3, [r4, #213]
 3162 002a 10BD     		pop	{r4, pc}
 3163              	.L649:
 3164              		.align	2
 3165              	.L648:
 3166 002c 080C0000 		.word	g_APinDescription+3080
 3167 0030 80240100 		.word	74880
 3168 0034 00000000 		.word	Serial1
 3169              		.size	_ZN13WiFiInterface9StartWiFiEv, .-_ZN13WiFiInterface9StartWiFiEv
 3170              		.section	.text._ZN13WiFiInterface5StartEv,"ax",%progbits
 3171              		.align	1
 3172              		.p2align 2,,3
 3173              		.global	_ZN13WiFiInterface5StartEv
 3174              		.syntax unified
 3175              		.thumb
 3176              		.thumb_func
 3177              		.fpu fpv4-sp-d16
 3178              		.type	_ZN13WiFiInterface5StartEv, %function
 3179              	_ZN13WiFiInterface5StartEv:
 3180              		@ args = 0, pretend = 0, frame = 0
 3181              		@ frame_needed = 0, uses_anonymous_args = 0
 3182 0000 10B5     		push	{r4, lr}
 3183 0002 0022     		movs	r2, #0
 3184 0004 0446     		mov	r4, r0
 3185 0006 0321     		movs	r1, #3
 3186 0008 6420     		movs	r0, #100
 3187 000a FFF7FEFF 		bl	pinModeDuet
 3188 000e 0022     		movs	r2, #0
 3189 0010 0421     		movs	r1, #4
 3190 0012 6520     		movs	r0, #101
 3191 0014 FFF7FEFF 		bl	pinModeDuet
 3192 0018 0022     		movs	r2, #0
ARM GAS  /tmp/cc8xJyMT.s 			page 57


 3193 001a 0321     		movs	r1, #3
 3194 001c 5E20     		movs	r0, #94
 3195 001e FFF7FEFF 		bl	pinModeDuet
 3196 0022 0022     		movs	r2, #0
 3197 0024 0421     		movs	r1, #4
 3198 0026 5F20     		movs	r0, #95
 3199 0028 FFF7FEFF 		bl	pinModeDuet
 3200 002c 0022     		movs	r2, #0
 3201 002e 0121     		movs	r1, #1
 3202 0030 0C20     		movs	r0, #12
 3203 0032 FFF7FEFF 		bl	pinModeDuet
 3204 0036 0022     		movs	r2, #0
 3205 0038 0321     		movs	r1, #3
 3206 003a 0B20     		movs	r0, #11
 3207 003c FFF7FEFF 		bl	pinModeDuet
 3208 0040 3220     		movs	r0, #50
 3209 0042 FFF7FEFF 		bl	coreDelay
 3210 0046 2046     		mov	r0, r4
 3211 0048 FFF7FEFF 		bl	_ZN13WiFiInterface9StartWiFiEv
 3212 004c 3220     		movs	r0, #50
 3213 004e FFF7FEFF 		bl	coreDelay
 3214 0052 0022     		movs	r2, #0
 3215 0054 1146     		mov	r1, r2
 3216 0056 0B20     		movs	r0, #11
 3217 0058 FFF7FEFF 		bl	pinModeDuet
 3218 005c 0022     		movs	r2, #0
 3219 005e 0121     		movs	r1, #1
 3220 0060 5F20     		movs	r0, #95
 3221 0062 FFF7FEFF 		bl	pinModeDuet
 3222 0066 0023     		movs	r3, #0
 3223 0068 C4E92B33 		strd	r3, r3, [r4, #172]
 3224 006c C4F8B430 		str	r3, [r4, #180]
 3225 0070 C4E92F33 		strd	r3, r3, [r4, #188]
 3226 0074 C4F8B830 		str	r3, [r4, #184]
 3227 0078 FFF7FEFF 		bl	millis
 3228 007c 0123     		movs	r3, #1
 3229 007e A061     		str	r0, [r4, #24]
 3230 0080 2365     		str	r3, [r4, #80]
 3231 0082 10BD     		pop	{r4, pc}
 3232              		.size	_ZN13WiFiInterface5StartEv, .-_ZN13WiFiInterface5StartEv
 3233              		.section	.text._ZN13WiFiInterface8ActivateEv,"ax",%progbits
 3234              		.align	1
 3235              		.p2align 2,,3
 3236              		.global	_ZN13WiFiInterface8ActivateEv
 3237              		.syntax unified
 3238              		.thumb
 3239              		.thumb_func
 3240              		.fpu fpv4-sp-d16
 3241              		.type	_ZN13WiFiInterface8ActivateEv, %function
 3242              	_ZN13WiFiInterface8ActivateEv:
 3243              		@ args = 0, pretend = 0, frame = 0
 3244              		@ frame_needed = 0, uses_anonymous_args = 0
 3245              		@ link register save eliminated.
 3246 0000 90F85620 		ldrb	r2, [r0, #86]	@ zero_extendqisi2
 3247 0004 5AB9     		cbnz	r2, .L652
 3248 0006 90F85420 		ldrb	r2, [r0, #84]	@ zero_extendqisi2
 3249 000a 0121     		movs	r1, #1
ARM GAS  /tmp/cc8xJyMT.s 			page 58


 3250 000c 80F85610 		strb	r1, [r0, #86]
 3251 0010 1AB9     		cbnz	r2, .L655
 3252 0012 4069     		ldr	r0, [r0, #20]
 3253 0014 024A     		ldr	r2, .L656
 3254 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3255              	.L655:
 3256 001a FFF7FEBF 		b	_ZN13WiFiInterface5StartEv
 3257              	.L652:
 3258 001e 7047     		bx	lr
 3259              	.L657:
 3260              		.align	2
 3261              	.L656:
 3262 0020 00000000 		.word	.LC62
 3263              		.size	_ZN13WiFiInterface8ActivateEv, .-_ZN13WiFiInterface8ActivateEv
 3264              		.section	.text._ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_,"ax",%progbits
 3265              		.align	1
 3266              		.p2align 2,,3
 3267              		.global	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_
 3268              		.syntax unified
 3269              		.thumb
 3270              		.thumb_func
 3271              		.fpu fpv4-sp-d16
 3272              		.type	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_, %function
 3273              	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_:
 3274              		@ args = 0, pretend = 0, frame = 8
 3275              		@ frame_needed = 0, uses_anonymous_args = 0
 3276 0000 70B5     		push	{r4, r5, r6, lr}
 3277 0002 0446     		mov	r4, r0
 3278 0004 82B0     		sub	sp, sp, #8
 3279 0006 71B1     		cbz	r1, .L659
 3280 0008 0129     		cmp	r1, #1
 3281 000a 1ED0     		beq	.L689
 3282 000c 0229     		cmp	r1, #2
 3283 000e 90F85620 		ldrb	r2, [r0, #86]	@ zero_extendqisi2
 3284 0012 3AD0     		beq	.L663
 3285 0014 BAB1     		cbz	r2, .L690
 3286 0016 036D     		ldr	r3, [r0, #80]
 3287 0018 0022     		movs	r2, #0
 3288 001a 80F85420 		strb	r2, [r0, #84]
 3289 001e 43BB     		cbnz	r3, .L691
 3290              	.L683:
 3291 0020 0120     		movs	r0, #1
 3292 0022 02B0     		add	sp, sp, #8
 3293              		@ sp needed
 3294 0024 70BD     		pop	{r4, r5, r6, pc}
 3295              	.L659:
 3296 0026 90F85630 		ldrb	r3, [r0, #86]	@ zero_extendqisi2
 3297 002a 33B1     		cbz	r3, .L688
 3298 002c 036D     		ldr	r3, [r0, #80]
 3299 002e 002B     		cmp	r3, #0
 3300 0030 3AD0     		beq	.L676
 3301 0032 90F85520 		ldrb	r2, [r0, #85]	@ zero_extendqisi2
 3302 0036 012A     		cmp	r2, #1
 3303 0038 24D0     		beq	.L669
 3304              	.L688:
 3305 003a 0121     		movs	r1, #1
 3306              	.L662:
ARM GAS  /tmp/cc8xJyMT.s 			page 59


 3307 003c 0120     		movs	r0, #1
 3308 003e 84F85410 		strb	r1, [r4, #84]
 3309 0042 02B0     		add	sp, sp, #8
 3310              		@ sp needed
 3311 0044 70BD     		pop	{r4, r5, r6, pc}
 3312              	.L690:
 3313 0046 1146     		mov	r1, r2
 3314 0048 F8E7     		b	.L662
 3315              	.L689:
 3316 004a 1546     		mov	r5, r2
 3317 004c 00F16A06 		add	r6, r0, #106
 3318 0050 2122     		movs	r2, #33
 3319 0052 0021     		movs	r1, #0
 3320 0054 3046     		mov	r0, r6
 3321 0056 0193     		str	r3, [sp, #4]
 3322 0058 FFF7FEFF 		bl	memset
 3323 005c 2122     		movs	r2, #33
 3324 005e 3046     		mov	r0, r6
 3325 0060 2968     		ldr	r1, [r5]
 3326 0062 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 3327 0066 94F85620 		ldrb	r2, [r4, #86]	@ zero_extendqisi2
 3328 006a 019B     		ldr	r3, [sp, #4]
 3329 006c 1ABB     		cbnz	r2, .L661
 3330 006e 0421     		movs	r1, #4
 3331 0070 E4E7     		b	.L662
 3332              	.L691:
 3333 0072 FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.11
 3334 0076 6069     		ldr	r0, [r4, #20]
 3335 0078 144A     		ldr	r2, .L692
 3336 007a 3521     		movs	r1, #53
 3337 007c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3338 0080 CEE7     		b	.L683
 3339              	.L674:
 3340 0082 0422     		movs	r2, #4
 3341              	.L669:
 3342 0084 84F85420 		strb	r2, [r4, #84]
 3343 0088 CAE7     		b	.L683
 3344              	.L663:
 3345 008a 002A     		cmp	r2, #0
 3346 008c D6D0     		beq	.L662
 3347 008e 026D     		ldr	r2, [r0, #80]
 3348 0090 5AB1     		cbz	r2, .L668
 3349 0092 90F85520 		ldrb	r2, [r0, #85]	@ zero_extendqisi2
 3350 0096 022A     		cmp	r2, #2
 3351 0098 F4D0     		beq	.L669
 3352              	.L670:
 3353 009a 012A     		cmp	r2, #1
 3354 009c CED0     		beq	.L662
 3355 009e 1846     		mov	r0, r3
 3356 00a0 0B49     		ldr	r1, .L692+4
 3357 00a2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3358 00a6 BBE7     		b	.L683
 3359              	.L676:
 3360 00a8 0121     		movs	r1, #1
 3361              	.L668:
 3362 00aa 84F85410 		strb	r1, [r4, #84]
 3363 00ae 2046     		mov	r0, r4
ARM GAS  /tmp/cc8xJyMT.s 			page 60


 3364 00b0 FFF7FEFF 		bl	_ZN13WiFiInterface5StartEv
 3365 00b4 B4E7     		b	.L683
 3366              	.L661:
 3367 00b6 226D     		ldr	r2, [r4, #80]
 3368 00b8 32B1     		cbz	r2, .L673
 3369 00ba 94F85520 		ldrb	r2, [r4, #85]	@ zero_extendqisi2
 3370 00be D11E     		subs	r1, r2, #3
 3371 00c0 0129     		cmp	r1, #1
 3372 00c2 DED9     		bls	.L674
 3373 00c4 0421     		movs	r1, #4
 3374 00c6 E8E7     		b	.L670
 3375              	.L673:
 3376 00c8 0421     		movs	r1, #4
 3377 00ca EEE7     		b	.L668
 3378              	.L693:
 3379              		.align	2
 3380              	.L692:
 3381 00cc 00000000 		.word	.LC63
 3382 00d0 18000000 		.word	.LC64
 3383              		.size	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_, .-_ZN13WiFiInterface15EnableInterfaceE
 3384              		.section	.text._ZN13WiFiInterface9ResetWiFiEv,"ax",%progbits
 3385              		.align	1
 3386              		.p2align 2,,3
 3387              		.global	_ZN13WiFiInterface9ResetWiFiEv
 3388              		.syntax unified
 3389              		.thumb
 3390              		.thumb_func
 3391              		.fpu fpv4-sp-d16
 3392              		.type	_ZN13WiFiInterface9ResetWiFiEv, %function
 3393              	_ZN13WiFiInterface9ResetWiFiEv:
 3394              		@ args = 0, pretend = 0, frame = 0
 3395              		@ frame_needed = 0, uses_anonymous_args = 0
 3396 0000 38B5     		push	{r3, r4, r5, lr}
 3397 0002 0022     		movs	r2, #0
 3398 0004 0446     		mov	r4, r0
 3399 0006 0321     		movs	r1, #3
 3400 0008 6420     		movs	r0, #100
 3401 000a FFF7FEFF 		bl	pinModeDuet
 3402 000e 0022     		movs	r2, #0
 3403 0010 0121     		movs	r1, #1
 3404 0012 0620     		movs	r0, #6
 3405 0014 FFF7FEFF 		bl	pinModeDuet
 3406 0018 0022     		movs	r2, #0
 3407 001a 0121     		movs	r1, #1
 3408 001c 0520     		movs	r0, #5
 3409 001e FFF7FEFF 		bl	pinModeDuet
 3410 0022 94F8D430 		ldrb	r3, [r4, #212]	@ zero_extendqisi2
 3411 0026 0025     		movs	r5, #0
 3412 0028 84F85550 		strb	r5, [r4, #85]
 3413 002c 03B9     		cbnz	r3, .L700
 3414 002e 38BD     		pop	{r3, r4, r5, pc}
 3415              	.L700:
 3416 0030 0248     		ldr	r0, .L701
 3417 0032 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 3418 0036 84F8D450 		strb	r5, [r4, #212]
 3419 003a 38BD     		pop	{r3, r4, r5, pc}
 3420              	.L702:
ARM GAS  /tmp/cc8xJyMT.s 			page 61


 3421              		.align	2
 3422              	.L701:
 3423 003c 00000000 		.word	Serial1
 3424              		.size	_ZN13WiFiInterface9ResetWiFiEv, .-_ZN13WiFiInterface9ResetWiFiEv
 3425              		.section	.text._ZN13WiFiInterface4InitEv,"ax",%progbits
 3426              		.align	1
 3427              		.p2align 2,,3
 3428              		.global	_ZN13WiFiInterface4InitEv
 3429              		.syntax unified
 3430              		.thumb
 3431              		.thumb_func
 3432              		.fpu fpv4-sp-d16
 3433              		.type	_ZN13WiFiInterface4InitEv, %function
 3434              	_ZN13WiFiInterface4InitEv:
 3435              		@ args = 0, pretend = 0, frame = 0
 3436              		@ frame_needed = 0, uses_anonymous_args = 0
 3437 0000 70B5     		push	{r4, r5, r6, lr}
 3438 0002 1B49     		ldr	r1, .L709
 3439 0004 0646     		mov	r6, r0
 3440 0006 0430     		adds	r0, r0, #4
 3441 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 3442 000c 3046     		mov	r0, r6
 3443 000e FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
 3444 0012 FFF7FEFF 		bl	millis
 3445 0016 3368     		ldr	r3, [r6]
 3446 0018 B061     		str	r0, [r6, #24]
 3447 001a DC6B     		ldr	r4, [r3, #60]
 3448 001c 154B     		ldr	r3, .L709+4
 3449 001e 9C42     		cmp	r4, r3
 3450 0020 1FD1     		bne	.L704
 3451 0022 1549     		ldr	r1, .L709+8
 3452 0024 154A     		ldr	r2, .L709+12
 3453 0026 164B     		ldr	r3, .L709+16
 3454 0028 0968     		ldr	r1, [r1]
 3455 002a 1268     		ldr	r2, [r2]
 3456 002c 1B68     		ldr	r3, [r3]
 3457 002e B165     		str	r1, [r6, #88]	@ unaligned
 3458 0030 F265     		str	r2, [r6, #92]	@ unaligned
 3459 0032 3366     		str	r3, [r6, #96]	@ unaligned
 3460              	.L705:
 3461 0034 06F12005 		add	r5, r6, #32
 3462 0038 0024     		movs	r4, #0
 3463              	.L706:
 3464 003a E1B2     		uxtb	r1, r4
 3465 003c 55F8040B 		ldr	r0, [r5], #4
 3466 0040 0134     		adds	r4, r4, #1
 3467 0042 FFF7FEFF 		bl	_ZN10WiFiSocket4InitEh
 3468 0046 082C     		cmp	r4, #8
 3469 0048 F7D1     		bne	.L706
 3470 004a 3420     		movs	r0, #52
 3471 004c FFF7FEFF 		bl	_Znwj
 3472 0050 3246     		mov	r2, r6
 3473 0052 0C49     		ldr	r1, .L709+20
 3474 0054 0446     		mov	r4, r0
 3475 0056 FFF7FEFF 		bl	_ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface
 3476 005a 0023     		movs	r3, #0
 3477 005c F461     		str	r4, [r6, #28]
ARM GAS  /tmp/cc8xJyMT.s 			page 62


 3478 005e 3364     		str	r3, [r6, #64]
 3479 0060 70BD     		pop	{r4, r5, r6, pc}
 3480              	.L704:
 3481 0062 074B     		ldr	r3, .L709+16
 3482 0064 054A     		ldr	r2, .L709+12
 3483 0066 0449     		ldr	r1, .L709+8
 3484 0068 3046     		mov	r0, r6
 3485 006a A047     		blx	r4
 3486 006c E2E7     		b	.L705
 3487              	.L710:
 3488 006e 00BF     		.align	2
 3489              	.L709:
 3490 0070 00000000 		.word	.LC65
 3491 0074 00000000 		.word	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_
 3492 0078 00000000 		.word	.LANCHOR11
 3493 007c 00000000 		.word	.LANCHOR12
 3494 0080 00000000 		.word	.LANCHOR13
 3495 0084 00000000 		.word	Serial1
 3496              		.size	_ZN13WiFiInterface4InitEv, .-_ZN13WiFiInterface4InitEv
 3497              		.section	.text._ZN13WiFiInterface18ResetWiFiForUploadEb,"ax",%progbits
 3498              		.align	1
 3499              		.p2align 2,,3
 3500              		.global	_ZN13WiFiInterface18ResetWiFiForUploadEb
 3501              		.syntax unified
 3502              		.thumb
 3503              		.thumb_func
 3504              		.fpu fpv4-sp-d16
 3505              		.type	_ZN13WiFiInterface18ResetWiFiForUploadEb, %function
 3506              	_ZN13WiFiInterface18ResetWiFiForUploadEb:
 3507              		@ args = 0, pretend = 0, frame = 0
 3508              		@ frame_needed = 0, uses_anonymous_args = 0
 3509 0000 38B5     		push	{r3, r4, r5, lr}
 3510 0002 90F8D430 		ldrb	r3, [r0, #212]	@ zero_extendqisi2
 3511 0006 0D46     		mov	r5, r1
 3512 0008 D3BB     		cbnz	r3, .L719
 3513              	.L712:
 3514 000a 0022     		movs	r2, #0
 3515 000c 0321     		movs	r1, #3
 3516 000e 6420     		movs	r0, #100
 3517 0010 FFF7FEFF 		bl	pinModeDuet
 3518 0014 0022     		movs	r2, #0
 3519 0016 0421     		movs	r1, #4
 3520 0018 6520     		movs	r0, #101
 3521 001a FFF7FEFF 		bl	pinModeDuet
 3522 001e 0022     		movs	r2, #0
 3523 0020 0321     		movs	r1, #3
 3524 0022 5E20     		movs	r0, #94
 3525 0024 FFF7FEFF 		bl	pinModeDuet
 3526 0028 0022     		movs	r2, #0
 3527 002a 0321     		movs	r1, #3
 3528 002c 5F20     		movs	r0, #95
 3529 002e FFF7FEFF 		bl	pinModeDuet
 3530 0032 0022     		movs	r2, #0
 3531 0034 0121     		movs	r1, #1
 3532 0036 0C20     		movs	r0, #12
 3533 0038 FFF7FEFF 		bl	pinModeDuet
 3534 003c 0B20     		movs	r0, #11
ARM GAS  /tmp/cc8xJyMT.s 			page 63


 3535 003e 0022     		movs	r2, #0
 3536 0040 0321     		movs	r1, #3
 3537 0042 FFF7FEFF 		bl	pinModeDuet
 3538 0046 3220     		movs	r0, #50
 3539 0048 FFF7FEFF 		bl	coreDelay
 3540 004c 45B9     		cbnz	r5, .L720
 3541 004e 1048     		ldr	r0, .L721
 3542 0050 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3543 0054 0121     		movs	r1, #1
 3544 0056 6420     		movs	r0, #100
 3545 0058 BDE83840 		pop	{r3, r4, r5, lr}
 3546 005c FFF7FEBF 		b	digitalWrite
 3547              	.L720:
 3548 0060 0022     		movs	r2, #0
 3549 0062 0121     		movs	r1, #1
 3550 0064 0620     		movs	r0, #6
 3551 0066 FFF7FEFF 		bl	pinModeDuet
 3552 006a 0121     		movs	r1, #1
 3553 006c 0520     		movs	r0, #5
 3554 006e 0022     		movs	r2, #0
 3555 0070 FFF7FEFF 		bl	pinModeDuet
 3556 0074 0121     		movs	r1, #1
 3557 0076 6420     		movs	r0, #100
 3558 0078 BDE83840 		pop	{r3, r4, r5, lr}
 3559 007c FFF7FEBF 		b	digitalWrite
 3560              	.L719:
 3561 0080 0446     		mov	r4, r0
 3562 0082 0448     		ldr	r0, .L721+4
 3563 0084 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 3564 0088 0023     		movs	r3, #0
 3565 008a 84F8D430 		strb	r3, [r4, #212]
 3566 008e BCE7     		b	.L712
 3567              	.L722:
 3568              		.align	2
 3569              	.L721:
 3570 0090 080C0000 		.word	g_APinDescription+3080
 3571 0094 00000000 		.word	Serial1
 3572              		.size	_ZN13WiFiInterface18ResetWiFiForUploadEb, .-_ZN13WiFiInterface18ResetWiFiForUploadEb
 3573              		.global	_ZTV13WiFiInterface
 3574              		.section	.bss._ZL13wifiInterface,"aw",%nobits
 3575              		.align	2
 3576              		.set	.LANCHOR0,. + 0
 3577              		.type	_ZL13wifiInterface, %object
 3578              		.size	_ZL13wifiInterface, 4
 3579              	_ZL13wifiInterface:
 3580 0000 00000000 		.space	4
 3581              		.section	.bss._ZL15transferPending,"aw",%nobits
 3582              		.set	.LANCHOR6,. + 0
 3583              		.type	_ZL15transferPending, %object
 3584              		.size	_ZL15transferPending, 1
 3585              	_ZL15transferPending:
 3586 0000 00       		.space	1
 3587              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3588              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3589              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3590              	_ZL28cpu_irq_prev_interrupt_state:
 3591 0000 00       		.space	1
ARM GAS  /tmp/cc8xJyMT.s 			page 64


 3592              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3593              		.align	2
 3594              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3595              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3596              	_ZL32cpu_irq_critical_section_counter:
 3597 0000 00000000 		.space	4
 3598              		.section	.bss._ZL8bufferIn,"aw",%nobits
 3599              		.align	2
 3600              		.set	.LANCHOR8,. + 0
 3601              		.type	_ZL8bufferIn, %object
 3602              		.size	_ZL8bufferIn, 2060
 3603              	_ZL8bufferIn:
 3604 0000 00000000 		.space	2060
 3604      00000000 
 3604      00000000 
 3604      00000000 
 3604      00000000 
 3605              		.section	.bss._ZL9bufferOut,"aw",%nobits
 3606              		.align	2
 3607              		.set	.LANCHOR7,. + 0
 3608              		.type	_ZL9bufferOut, %object
 3609              		.size	_ZL9bufferOut, 2060
 3610              	_ZL9bufferOut:
 3611 0000 00000000 		.space	2060
 3611      00000000 
 3611      00000000 
 3611      00000000 
 3611      00000000 
 3612              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 3613              		.align	2
 3614              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 3615              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 3616              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 3617 0000 00000000 		.space	4
 3618              		.section	.rodata.CSWTCH.158,"a",%progbits
 3619              		.align	2
 3620              		.set	.LANCHOR5,. + 0
 3621              		.type	CSWTCH.158, %object
 3622              		.size	CSWTCH.158, 20
 3623              	CSWTCH.158:
 3624 0000 FC000000 		.word	.LC77
 3625 0004 7C010000 		.word	.LC84
 3626 0008 7C010000 		.word	.LC84
 3627 000c 88010000 		.word	.LC85
 3628 0010 90010000 		.word	.LC86
 3629              		.section	.rodata.CSWTCH.160,"a",%progbits
 3630              		.align	2
 3631              		.set	.LANCHOR1,. + 0
 3632              		.type	CSWTCH.160, %object
 3633              		.size	CSWTCH.160, 28
 3634              	CSWTCH.160:
 3635 0000 FC000000 		.word	.LC77
 3636 0004 08010000 		.word	.LC78
 3637 0008 10010000 		.word	.LC79
 3638 000c 28010000 		.word	.LC80
 3639 0010 3C010000 		.word	.LC81
 3640 0014 58010000 		.word	.LC82
ARM GAS  /tmp/cc8xJyMT.s 			page 65


 3641 0018 6C010000 		.word	.LC83
 3642              		.section	.rodata.CSWTCH.169,"a",%progbits
 3643              		.align	2
 3644              		.set	.LANCHOR9,. + 0
 3645              		.type	CSWTCH.169, %object
 3646              		.size	CSWTCH.169, 48
 3647              	CSWTCH.169:
 3648 0000 00000000 		.word	.LC66
 3649 0004 10000000 		.word	.LC67
 3650 0008 2C000000 		.word	.LC68
 3651 000c 48000000 		.word	.LC69
 3652 0010 64000000 		.word	.LC70
 3653 0014 84000000 		.word	.LC71
 3654 0018 14000000 		.word	.LC1
 3655 001c 90000000 		.word	.LC72
 3656 0020 A0000000 		.word	.LC73
 3657 0024 B8000000 		.word	.LC74
 3658 0028 D0000000 		.word	.LC75
 3659 002c EC000000 		.word	.LC76
 3660              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 3661              		.align	2
 3662              		.set	.LANCHOR3,. + 0
 3663              		.type	_ZL13ProtocolNames, %object
 3664              		.size	_ZL13ProtocolNames, 12
 3665              	_ZL13ProtocolNames:
 3666 0000 24020000 		.word	.LC94
 3667 0004 2C020000 		.word	.LC95
 3668 0008 30020000 		.word	.LC96
 3669              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 3670              		.align	2
 3671              		.set	.LANCHOR13,. + 0
 3672              		.type	_ZL14DefaultGateway, %object
 3673              		.size	_ZL14DefaultGateway, 4
 3674              	_ZL14DefaultGateway:
 3675 0000 00000000 		.space	4
 3676              		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 3677              		.align	2
 3678              		.set	.LANCHOR12,. + 0
 3679              		.type	_ZL14DefaultNetMask, %object
 3680              		.size	_ZL14DefaultNetMask, 4
 3681              	_ZL14DefaultNetMask:
 3682 0000 FF       		.byte	-1
 3683 0001 FF       		.byte	-1
 3684 0002 FF       		.byte	-1
 3685 0003 00       		.byte	0
 3686              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 3687              		.align	2
 3688              		.set	.LANCHOR11,. + 0
 3689              		.type	_ZL16DefaultIpAddress, %object
 3690              		.size	_ZL16DefaultIpAddress, 4
 3691              	_ZL16DefaultIpAddress:
 3692 0000 00000000 		.space	4
 3693              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 3694              		.align	2
 3695              		.set	.LANCHOR10,. + 0
 3696              		.type	_ZL18DefaultPortNumbers, %object
 3697              		.size	_ZL18DefaultPortNumbers, 6
ARM GAS  /tmp/cc8xJyMT.s 			page 66


 3698              	_ZL18DefaultPortNumbers:
 3699 0000 5000     		.short	80
 3700 0002 1500     		.short	21
 3701 0004 1700     		.short	23
 3702              		.section	.rodata._ZN13WiFiInterface11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 3703              		.align	2
 3704              	.LC33:
 3705 0000 6C696768 		.ascii	"light\000"
 3705      7400
 3706 0006 0000     		.space	2
 3707              	.LC34:
 3708 0008 6E6F6E65 		.ascii	"none\000"
 3708      00
 3709 000d 000000   		.space	3
 3710              	.LC35:
 3711 0010 6D6F6465 		.ascii	"modem\000"
 3711      6D00
 3712 0016 0000     		.space	2
 3713              	.LC36:
 3714 0018 2D205769 		.ascii	"- WiFi -\012\000"
 3714      4669202D 
 3714      0A00
 3715 0022 0000     		.space	2
 3716              	.LC37:
 3717 0024 4E657477 		.ascii	"Network state is %s\012\000"
 3717      6F726B20 
 3717      73746174 
 3717      65206973 
 3717      2025730A 
 3718 0039 000000   		.space	3
 3719              	.LC38:
 3720 003c 57694669 		.ascii	"WiFi module is %s\012\000"
 3720      206D6F64 
 3720      756C6520 
 3720      69732025 
 3720      730A00
 3721 004f 00       		.space	1
 3722              	.LC39:
 3723 0050 4661696C 		.ascii	"Failed messages: pending %u, notready %u, noresp %u"
 3723      6564206D 
 3723      65737361 
 3723      6765733A 
 3723      2070656E 
 3724 0083 0A00     		.ascii	"\012\000"
 3725 0085 000000   		.space	3
 3726              	.LC40:
 3727 0088 57694669 		.ascii	"WiFi firmware version %s\012\000"
 3727      20666972 
 3727      6D776172 
 3727      65207665 
 3727      7273696F 
 3728 00a2 0000     		.space	2
 3729              	.LC41:
 3730 00a4 57694669 		.ascii	"WiFi MAC address %02x:%02x:%02x:%02x:%02x:%02x\012\000"
 3730      204D4143 
 3730      20616464 
 3730      72657373 
ARM GAS  /tmp/cc8xJyMT.s 			page 67


 3730      20253032 
 3731              	.LC42:
 3732 00d4 57694669 		.ascii	"WiFi Vcc %.2f, reset reason %s\012\000"
 3732      20566363 
 3732      20252E32 
 3732      662C2072 
 3732      65736574 
 3733              	.LC43:
 3734 00f4 57694669 		.ascii	"WiFi flash size %lu, free heap %lu\012\000"
 3734      20666C61 
 3734      73682073 
 3734      697A6520 
 3734      256C752C 
 3735              	.LC44:
 3736 0118 57694669 		.ascii	"WiFi IP address %s\012\000"
 3736      20495020 
 3736      61646472 
 3736      65737320 
 3736      25730A00 
 3737              	.LC45:
 3738 012c 57694669 		.ascii	"WiFi signal strength %ddBm, reconnections %u, sleep"
 3738      20736967 
 3738      6E616C20 
 3738      73747265 
 3738      6E677468 
 3739 015f 206D6F64 		.ascii	" mode %s\012\000"
 3739      65202573 
 3739      0A00
 3740 0169 000000   		.space	3
 3741              	.LC46:
 3742 016c 436F6E6E 		.ascii	"Connected clients %u\012\000"
 3742      65637465 
 3742      6420636C 
 3742      69656E74 
 3742      73202575 
 3743 0182 0000     		.space	2
 3744              	.LC47:
 3745 0184 4661696C 		.ascii	"Failed to request ESP stats\012\000"
 3745      65642074 
 3745      6F207265 
 3745      71756573 
 3745      74204553 
 3746 01a1 000000   		.space	3
 3747              	.LC48:
 3748 01a4 4661696C 		.ascii	"Failed to get WiFi status\012\000"
 3748      65642074 
 3748      6F206765 
 3748      74205769 
 3748      46692073 
 3749 01bf 00       		.space	1
 3750              	.LC49:
 3751 01c0 536F636B 		.ascii	"Socket states:\000"
 3751      65742073 
 3751      74617465 
 3751      733A00
 3752 01cf 00       		.space	1
 3753              	.LC50:
ARM GAS  /tmp/cc8xJyMT.s 			page 68


 3754 01d0 20256400 		.ascii	" %d\000"
 3755              	.LC51:
 3756 01d4 0A00     		.ascii	"\012\000"
 3757              		.section	.rodata._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.str1.4,"aMS",%progbits,
 3758              		.align	2
 3759              	.LC12:
 3760 0000 756E6B6E 		.ascii	"unknown response code\000"
 3760      6F776E20 
 3760      72657370 
 3760      6F6E7365 
 3760      20636F64 
 3761 0016 0000     		.space	2
 3762              	.LC13:
 3763 0018 52657370 		.ascii	"ResponseNetworkDisabled\012\000"
 3763      6F6E7365 
 3763      4E657477 
 3763      6F726B44 
 3763      69736162 
 3764 0031 000000   		.space	3
 3765              	.LC14:
 3766 0034 52657370 		.ascii	"ResponseBusy\012\000"
 3766      6F6E7365 
 3766      42757379 
 3766      0A00
 3767 0042 0000     		.space	2
 3768              	.LC15:
 3769 0044 52657370 		.ascii	"ResponseTimeout, pending=%d\012\000"
 3769      6F6E7365 
 3769      54696D65 
 3769      6F75742C 
 3769      2070656E 
 3770 0061 000000   		.space	3
 3771              	.LC16:
 3772 0064 62616420 		.ascii	"bad format version %02x\012\000"
 3772      666F726D 
 3772      61742076 
 3772      65727369 
 3772      6F6E2025 
 3773 007d 000000   		.space	3
 3774              	.LC17:
 3775 0080 4E657477 		.ascii	"Network command %d socket %u returned error: %s\012"
 3775      6F726B20 
 3775      636F6D6D 
 3775      616E6420 
 3775      25642073 
 3776 00b0 00       		.ascii	"\000"
 3777              		.section	.rodata._ZN13WiFiInterface12GetNewStatusEv.str1.4,"aMS",%progbits,1
 3778              		.align	2
 3779              	.LC54:
 3780 0000 4572726F 		.ascii	"Error retrieving WiFi status message: %s\012\000"
 3780      72207265 
 3780      74726965 
 3780      76696E67 
 3780      20576946 
 3781 002a 0000     		.space	2
 3782              	.LC55:
 3783 002c 57694669 		.ascii	"WiFi reported error: %s\012\000"
ARM GAS  /tmp/cc8xJyMT.s 			page 69


 3783      20726570 
 3783      6F727465 
 3783      64206572 
 3783      726F723A 
 3784              		.section	.rodata._ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef.str1.4,"aMS",%progbits,1
 3785              		.align	2
 3786              	.LC52:
 3787 0000 4572726F 		.ascii	"Error: this firmware does not support TLS\000"
 3787      723A2074 
 3787      68697320 
 3787      6669726D 
 3787      77617265 
 3788 002a 0000     		.space	2
 3789              	.LC53:
 3790 002c 496E7661 		.ascii	"Invalid protocol parameter\000"
 3790      6C696420 
 3790      70726F74 
 3790      6F636F6C 
 3790      20706172 
 3791              		.section	.rodata._ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer.st
 3792              		.align	2
 3793              	.LC19:
 3794 0000 57694669 		.ascii	"WiFi password must be at least 8 characters\000"
 3794      20706173 
 3794      73776F72 
 3794      64206D75 
 3794      73742062 
 3795              	.LC20:
 3796 002c 4661696C 		.ascii	"Failed to add SSID to remembered list\000"
 3796      65642074 
 3796      6F206164 
 3796      64205353 
 3796      49442074 
 3797 0052 0000     		.space	2
 3798              	.LC21:
 3799 0054 42616420 		.ascii	"Bad or missing parameter\000"
 3799      6F72206D 
 3799      69737369 
 3799      6E672070 
 3799      6172616D 
 3800 006d 000000   		.space	3
 3801              	.LC22:
 3802 0070 52656D65 		.ascii	"Remembered networks:\000"
 3802      6D626572 
 3802      6564206E 
 3802      6574776F 
 3802      726B733A 
 3803 0085 000000   		.space	3
 3804              	.LC23:
 3805 0088 0A257320 		.ascii	"\012%s IP=%s GW=%s NM=%s\000"
 3805      49503D25 
 3805      73204757 
 3805      3D257320 
 3805      4E4D3D25 
 3806 009e 0000     		.space	2
 3807              	.LC24:
 3808 00a0 4E6F2072 		.ascii	"No remembered networks\000"
ARM GAS  /tmp/cc8xJyMT.s 			page 70


 3808      656D656D 
 3808      62657265 
 3808      64206E65 
 3808      74776F72 
 3809 00b7 00       		.space	1
 3810              	.LC25:
 3811 00b8 4661696C 		.ascii	"Failed to retrieve network list\000"
 3811      65642074 
 3811      6F207265 
 3811      74726965 
 3811      7665206E 
 3812              	.LC26:
 3813 00d8 2A00     		.ascii	"*\000"
 3814 00da 0000     		.space	2
 3815              	.LC27:
 3816 00dc 4661696C 		.ascii	"Failed to reset the WiFi module to factory settings"
 3816      65642074 
 3816      6F207265 
 3816      73657420 
 3816      74686520 
 3817 010f 00       		.ascii	"\000"
 3818              	.LC28:
 3819 0110 4661696C 		.ascii	"Failed to remove SSID from remembered list\000"
 3819      65642074 
 3819      6F207265 
 3819      6D6F7665 
 3819      20535349 
 3820 013b 00       		.space	1
 3821              	.LC29:
 3822 013c 4661696C 		.ascii	"Failed to configure access point parameters\000"
 3822      65642074 
 3822      6F20636F 
 3822      6E666967 
 3822      75726520 
 3823              	.LC30:
 3824 0168 4F776E20 		.ascii	"Own SSID not configured\000"
 3824      53534944 
 3824      206E6F74 
 3824      20636F6E 
 3824      66696775 
 3825              	.LC31:
 3826 0180 4F776E20 		.ascii	"Own SSID: %s IP=%s GW=%s NM=%s\000"
 3826      53534944 
 3826      3A202573 
 3826      2049503D 
 3826      25732047 
 3827 019f 00       		.space	1
 3828              	.LC32:
 3829 01a0 4661696C 		.ascii	"Failed to retrieve own SSID data\000"
 3829      65642074 
 3829      6F207265 
 3829      74726965 
 3829      7665206F 
 3830              		.section	.rodata._ZN13WiFiInterface14UpdateHostnameEPKc.str1.4,"aMS",%progbits,1
 3831              		.align	2
 3832              	.LC18:
 3833 0000 4572726F 		.ascii	"Error: Could not set WiFi hostname\012\000"
ARM GAS  /tmp/cc8xJyMT.s 			page 71


 3833      723A2043 
 3833      6F756C64 
 3833      206E6F74 
 3833      20736574 
 3834              		.section	.rodata._ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_.str1.4,"aMS",%progbits,1
 3835              		.align	2
 3836              	.LC63:
 3837 0000 57694669 		.ascii	"WiFi module stopped\012\000"
 3837      206D6F64 
 3837      756C6520 
 3837      73746F70 
 3837      7065640A 
 3838 0015 000000   		.space	3
 3839              	.LC64:
 3840 0018 5475726E 		.ascii	"Turn off the current WiFi mode before selecting a n"
 3840      206F6666 
 3840      20746865 
 3840      20637572 
 3840      72656E74 
 3841 004b 6577206F 		.ascii	"ew one\000"
 3841      6E6500
 3842              		.section	.rodata._ZN13WiFiInterface15GetNetworkStateERK9StringRef.str1.4,"aMS",%progbits,1
 3843              		.align	2
 3844              	.LC0:
 3845 0000 696E2061 		.ascii	"in an unknown state\000"
 3845      6E20756E 
 3845      6B6E6F77 
 3845      6E207374 
 3845      61746500 
 3846              	.LC1:
 3847 0014 57694669 		.ascii	"WiFi module is disabled\000"
 3847      206D6F64 
 3847      756C6520 
 3847      69732064 
 3847      69736162 
 3848              	.LC2:
 3849 002c 57694669 		.ascii	"WiFi module is being started\000"
 3849      206D6F64 
 3849      756C6520 
 3849      69732062 
 3849      65696E67 
 3850 0049 000000   		.space	3
 3851              	.LC3:
 3852 004c 57694669 		.ascii	"WiFi module is changing mode\000"
 3852      206D6F64 
 3852      756C6520 
 3852      69732063 
 3852      68616E67 
 3853 0069 000000   		.space	3
 3854              	.LC4:
 3855 006c 57694669 		.ascii	"WiFi module is \000"
 3855      206D6F64 
 3855      756C6520 
 3855      69732000 
 3856              	.LC5:
 3857 007c 25732C20 		.ascii	"%s, IP address %s\000"
 3857      49502061 
ARM GAS  /tmp/cc8xJyMT.s 			page 72


 3857      64647265 
 3857      73732025 
 3857      7300
 3858 008e 0000     		.space	2
 3859              	.LC6:
 3860 0090 556E6B6E 		.ascii	"Unknown network state\000"
 3860      6F776E20 
 3860      6E657477 
 3860      6F726B20 
 3860      73746174 
 3861              		.section	.rodata._ZN13WiFiInterface23TranslateEspResetReasonEm.str1.4,"aMS",%progbits,1
 3862              		.align	2
 3863              	.LC10:
 3864 0000 556E6B6E 		.ascii	"Unknown\000"
 3864      6F776E00 
 3865              		.section	.rodata._ZN13WiFiInterface4InitEv.str1.4,"aMS",%progbits,1
 3866              		.align	2
 3867              	.LC65:
 3868 0000 57694669 		.ascii	"WiFi\000"
 3868      00
 3869              		.section	.rodata._ZN13WiFiInterface4SpinEb.str1.4,"aMS",%progbits,1
 3870              		.align	2
 3871              	.LC56:
 3872 0000 57694669 		.ascii	"WiFi module started\012\000"
 3872      206D6F64 
 3872      756C6520 
 3872      73746172 
 3872      7465640A 
 3873 0015 000000   		.space	3
 3874              	.LC57:
 3875 0018 4572726F 		.ascii	"Error: Failed to initialise WiFi module, code %li\012"
 3875      723A2046 
 3875      61696C65 
 3875      6420746F 
 3875      20696E69 
 3876 004a 00       		.ascii	"\000"
 3877 004b 00       		.space	1
 3878              	.LC58:
 3879 004c 45535020 		.ascii	"ESP reported status change\012\000"
 3879      7265706F 
 3879      72746564 
 3879      20737461 
 3879      74757320 
 3880              	.LC59:
 3881 0068 4661696C 		.ascii	"Failed to change WiFi mode (code %li)\012\000"
 3881      65642074 
 3881      6F206368 
 3881      616E6765 
 3881      20576946 
 3882 008f 00       		.space	1
 3883              	.LC60:
 3884 0090 57694669 		.ascii	"WiFi module is %s%s, IP address %s\012\000"
 3884      206D6F64 
 3884      756C6520 
 3884      69732025 
 3884      7325732C 
 3885              	.LC61:
ARM GAS  /tmp/cc8xJyMT.s 			page 73


 3886 00b4 57694669 		.ascii	"WiFi: %s\012\000"
 3886      3A202573 
 3886      0A00
 3887              		.section	.rodata._ZN13WiFiInterface8ActivateEv.str1.4,"aMS",%progbits,1
 3888              		.align	2
 3889              	.LC62:
 3890 0000 57694669 		.ascii	"WiFi is disabled.\012\000"
 3890      20697320 
 3890      64697361 
 3890      626C6564 
 3890      2E0A00
 3891              		.section	.rodata._ZN13WiFiInterfaceC2ER8Platform.str1.4,"aMS",%progbits,1
 3892              		.align	2
 3893              	.LC7:
 3894 0000 28756E6B 		.ascii	"(unknown)\000"
 3894      6E6F776E 
 3894      2900
 3895              		.section	.rodata._ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef.str1.4,"aMS",%progbits,1
 3896              		.align	2
 3897              	.LC8:
 3898 0000 25732069 		.ascii	"%s is enabled on port %u\000"
 3898      7320656E 
 3898      61626C65 
 3898      64206F6E 
 3898      20706F72 
 3899 0019 000000   		.space	3
 3900              	.LC9:
 3901 001c 25732069 		.ascii	"%s is disabled\000"
 3901      73206469 
 3901      7361626C 
 3901      656400
 3902              		.section	.rodata._ZNK13WiFiInterface21TranslateNetworkStateEv.str1.4,"aMS",%progbits,1
 3903              		.align	2
 3904              	.LC11:
 3905 0000 756E6B6E 		.ascii	"unknown\000"
 3905      6F776E00 
 3906              		.section	.rodata._ZTV13WiFiInterface,"a",%progbits
 3907              		.align	2
 3908              		.set	.LANCHOR2,. + 0
 3909              		.type	_ZTV13WiFiInterface, %object
 3910              		.size	_ZTV13WiFiInterface, 92
 3911              	_ZTV13WiFiInterface:
 3912 0000 00000000 		.word	0
 3913 0004 00000000 		.word	0
 3914 0008 00000000 		.word	_ZN13WiFiInterface4InitEv
 3915 000c 00000000 		.word	_ZN13WiFiInterface8ActivateEv
 3916 0010 00000000 		.word	_ZN13WiFiInterface4ExitEv
 3917 0014 00000000 		.word	_ZN13WiFiInterface4SpinEb
 3918 0018 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 3919 001c 00000000 		.word	_ZN13WiFiInterface11DiagnosticsE11MessageType
 3920 0020 00000000 		.word	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_
 3921 0024 00000000 		.word	_ZN13WiFiInterface15GetNetworkStateERK9StringRef
 3922 0028 00000000 		.word	_ZNK13WiFiInterface11EnableStateEv
 3923 002c 00000000 		.word	_ZNK13WiFiInterface14InNetworkStackEv
 3924 0030 00000000 		.word	_ZNK13WiFiInterface15IsWiFiInterfaceEv
 3925 0034 00000000 		.word	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef
 3926 0038 00000000 		.word	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef
ARM GAS  /tmp/cc8xJyMT.s 			page 74


 3927 003c 00000000 		.word	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef
 3928 0040 00000000 		.word	_ZNK13WiFiInterface12GetIPAddressEv
 3929 0044 00000000 		.word	_ZN13WiFiInterface12SetIPAddressEPKhS1_S1_
 3930 0048 00000000 		.word	_ZN13WiFiInterface13SetMacAddressEPKh
 3931 004c 00000000 		.word	_ZNK13WiFiInterface13GetMacAddressEv
 3932 0050 00000000 		.word	_ZN13WiFiInterface14UpdateHostnameEPKc
 3933 0054 00000000 		.word	_ZN13WiFiInterface12OpenDataPortEt
 3934 0058 00000000 		.word	_ZN13WiFiInterface17TerminateDataPortEv
 3935              		.section	.rodata._ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts,"a",%progbits
 3936              		.align	2
 3937              		.set	.LANCHOR4,. + 0
 3938              		.type	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts, %object
 3939              		.size	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts, 28
 3940              	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts:
 3941 0000 A0010000 		.word	.LC87
 3942 0004 AC010000 		.word	.LC88
 3943 0008 C0010000 		.word	.LC89
 3944 000c CC010000 		.word	.LC90
 3945 0010 E0010000 		.word	.LC91
 3946 0014 F4010000 		.word	.LC92
 3947 0018 08020000 		.word	.LC93
 3948              		.section	.rodata.str1.4,"aMS",%progbits,1
 3949              		.align	2
 3950              	.LC66:
 3951 0000 756E6B6E 		.ascii	"unknown error\000"
 3951      6F776E20 
 3951      6572726F 
 3951      7200
 3952 000e 0000     		.space	2
 3953              	.LC67:
 3954 0010 62616420 		.ascii	"bad parameter in request\000"
 3954      70617261 
 3954      6D657465 
 3954      7220696E 
 3954      20726571 
 3955 0029 000000   		.space	3
 3956              	.LC68:
 3957 002c 62616420 		.ascii	"bad reply format version\000"
 3957      7265706C 
 3957      7920666F 
 3957      726D6174 
 3957      20766572 
 3958 0045 000000   		.space	3
 3959              	.LC69:
 3960 0048 72657370 		.ascii	"response buffer too small\000"
 3960      6F6E7365 
 3960      20627566 
 3960      66657220 
 3960      746F6F20 
 3961 0062 0000     		.space	2
 3962              	.LC70:
 3963 0064 616E6F74 		.ascii	"another SPI transfer is pending\000"
 3963      68657220 
 3963      53504920 
 3963      7472616E 
 3963      73666572 
 3964              	.LC71:
ARM GAS  /tmp/cc8xJyMT.s 			page 75


 3965 0084 53504920 		.ascii	"SPI timeout\000"
 3965      74696D65 
 3965      6F757400 
 3966              	.LC72:
 3967 0090 62616420 		.ascii	"bad data length\000"
 3967      64617461 
 3967      206C656E 
 3967      67746800 
 3968              	.LC73:
 3969 00a0 77726F6E 		.ascii	"wrong WiFi module state\000"
 3969      67205769 
 3969      4669206D 
 3969      6F64756C 
 3969      65207374 
 3970              	.LC74:
 3971 00b8 746F6F20 		.ascii	"too many stored SSIDs\000"
 3971      6D616E79 
 3971      2073746F 
 3971      72656420 
 3971      53534944 
 3972 00ce 0000     		.space	2
 3973              	.LC75:
 3974 00d0 62616420 		.ascii	"bad request format version\000"
 3974      72657175 
 3974      65737420 
 3974      666F726D 
 3974      61742076 
 3975 00eb 00       		.space	1
 3976              	.LC76:
 3977 00ec 756E6B6E 		.ascii	"unknown command\000"
 3977      6F776E20 
 3977      636F6D6D 
 3977      616E6400 
 3978              	.LC77:
 3979 00fc 64697361 		.ascii	"disabled\000"
 3979      626C6564 
 3979      00
 3980 0105 000000   		.space	3
 3981              	.LC78:
 3982 0108 69646C65 		.ascii	"idle\000"
 3982      00
 3983 010d 000000   		.space	3
 3984              	.LC79:
 3985 0110 70726F76 		.ascii	"providing access point \000"
 3985      6964696E 
 3985      67206163 
 3985      63657373 
 3985      20706F69 
 3986              	.LC80:
 3987 0128 74727969 		.ascii	"trying to connect\000"
 3987      6E672074 
 3987      6F20636F 
 3987      6E6E6563 
 3987      7400
 3988 013a 0000     		.space	2
 3989              	.LC81:
 3990 013c 636F6E6E 		.ascii	"connected to access point \000"
ARM GAS  /tmp/cc8xJyMT.s 			page 76


 3990      65637465 
 3990      6420746F 
 3990      20616363 
 3990      65737320 
 3991 0157 00       		.space	1
 3992              	.LC82:
 3993 0158 6175746F 		.ascii	"auto-reconnecting\000"
 3993      2D726563 
 3993      6F6E6E65 
 3993      6374696E 
 3993      6700
 3994 016a 0000     		.space	2
 3995              	.LC83:
 3996 016c 7265636F 		.ascii	"reconnecting\000"
 3996      6E6E6563 
 3996      74696E67 
 3996      00
 3997 0179 000000   		.space	3
 3998              	.LC84:
 3999 017c 73746172 		.ascii	"starting\000"
 3999      74696E67 
 3999      00
 4000 0185 000000   		.space	3
 4001              	.LC85:
 4002 0188 72756E6E 		.ascii	"running\000"
 4002      696E6700 
 4003              	.LC86:
 4004 0190 6368616E 		.ascii	"changing mode\000"
 4004      67696E67 
 4004      206D6F64 
 4004      6500
 4005 019e 0000     		.space	2
 4006              	.LC87:
 4007 01a0 506F7765 		.ascii	"Power on\000"
 4007      72206F6E 
 4007      00
 4008 01a9 000000   		.space	3
 4009              	.LC88:
 4010 01ac 48617264 		.ascii	"Hardware watchdog\000"
 4010      77617265 
 4010      20776174 
 4010      6368646F 
 4010      6700
 4011 01be 0000     		.space	2
 4012              	.LC89:
 4013 01c0 45786365 		.ascii	"Exception\000"
 4013      7074696F 
 4013      6E00
 4014 01ca 0000     		.space	2
 4015              	.LC90:
 4016 01cc 536F6674 		.ascii	"Software watchdog\000"
 4016      77617265 
 4016      20776174 
 4016      6368646F 
 4016      6700
 4017 01de 0000     		.space	2
 4018              	.LC91:
ARM GAS  /tmp/cc8xJyMT.s 			page 77


 4019 01e0 536F6674 		.ascii	"Software restart\000"
 4019      77617265 
 4019      20726573 
 4019      74617274 
 4019      00
 4020 01f1 000000   		.space	3
 4021              	.LC92:
 4022 01f4 44656570 		.ascii	"Deep-sleep wakeup\000"
 4022      2D736C65 
 4022      65702077 
 4022      616B6575 
 4022      7000
 4023 0206 0000     		.space	2
 4024              	.LC93:
 4025 0208 5475726E 		.ascii	"Turned on by main processor\000"
 4025      6564206F 
 4025      6E206279 
 4025      206D6169 
 4025      6E207072 
 4026              	.LC94:
 4027 0224 48545450 		.ascii	"HTTP\000"
 4027      00
 4028 0229 000000   		.space	3
 4029              	.LC95:
 4030 022c 46545000 		.ascii	"FTP\000"
 4031              	.LC96:
 4032 0230 54454C4E 		.ascii	"TELNET\000"
 4032      455400
 4033              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
