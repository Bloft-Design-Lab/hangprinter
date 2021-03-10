ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN16NetworkInterface9InterruptEv,"axG",%progbits,_ZN16NetworkInterface9InterruptEv
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN16NetworkInterface9InterruptEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN16NetworkInterface9InterruptEv, %function
  24              	_ZN16NetworkInterface9InterruptEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN16NetworkInterface9InterruptEv, .-_ZN16NetworkInterface9InterruptEv
  30 0002 00BF     		.section	.text._ZNK13WiFiInterface14InNetworkStackEv,"axG",%progbits,_ZNK13WiFiInterface14InNetwor
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZNK13WiFiInterface14InNetworkStackEv
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK13WiFiInterface14InNetworkStackEv, %function
  39              	_ZNK13WiFiInterface14InNetworkStackEv:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0020     		movs	r0, #0
  44 0002 7047     		bx	lr
  45              		.size	_ZNK13WiFiInterface14InNetworkStackEv, .-_ZNK13WiFiInterface14InNetworkStackEv
  46              		.section	.text._ZNK13WiFiInterface15IsWiFiInterfaceEv,"axG",%progbits,_ZNK13WiFiInterface15IsWiFiI
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZNK13WiFiInterface15IsWiFiInterfaceEv
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZNK13WiFiInterface15IsWiFiInterfaceEv, %function
  55              	_ZNK13WiFiInterface15IsWiFiInterfaceEv:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0120     		movs	r0, #1
  60 0002 7047     		bx	lr
  61              		.size	_ZNK13WiFiInterface15IsWiFiInterfaceEv, .-_ZNK13WiFiInterface15IsWiFiInterfaceEv
  62              		.section	.text._ZNK13WiFiInterface12GetIPAddressEv,"axG",%progbits,_ZNK13WiFiInterface12GetIPAddre
  63              		.align	1
  64              		.p2align 2,,3
  65              		.weak	_ZNK13WiFiInterface12GetIPAddressEv
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZNK13WiFiInterface12GetIPAddressEv, %function
  71              	_ZNK13WiFiInterface12GetIPAddressEv:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 D0F8B400 		ldr	r0, [r0, #180]
  76 0004 7047     		bx	lr
  77              		.size	_ZNK13WiFiInterface12GetIPAddressEv, .-_ZNK13WiFiInterface12GetIPAddressEv
  78 0006 00BF     		.section	.text._ZNK13WiFiInterface13GetMacAddressEv,"axG",%progbits,_ZNK13WiFiInterface13GetMacAdd
  79              		.align	1
  80              		.p2align 2,,3
  81              		.weak	_ZNK13WiFiInterface13GetMacAddressEv
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_ZNK13WiFiInterface13GetMacAddressEv, %function
  87              	_ZNK13WiFiInterface13GetMacAddressEv:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 C030     		adds	r0, r0, #192
  92 0002 7047     		bx	lr
  93              		.size	_ZNK13WiFiInterface13GetMacAddressEv, .-_ZNK13WiFiInterface13GetMacAddressEv
  94              		.section	.text._ZN10WiFiSocket19TerminateAndDisableEv,"axG",%progbits,_ZN10WiFiSocket19TerminateAn
  95              		.align	1
  96              		.p2align 2,,3
  97              		.weak	_ZN10WiFiSocket19TerminateAndDisableEv
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN10WiFiSocket19TerminateAndDisableEv, %function
 103              	_ZN10WiFiSocket19TerminateAndDisableEv:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 0368     		ldr	r3, [r0]
 108 0002 9B68     		ldr	r3, [r3, #8]
 109 0004 1847     		bx	r3	@ indirect register sibling call
 110              		.size	_ZN10WiFiSocket19TerminateAndDisableEv, .-_ZN10WiFiSocket19TerminateAndDisableEv
 111 0006 00BF     		.section	.text._ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES1_,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv4-sp-d16
 118              		.type	_ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES1_, %function
 119              	_ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES1_:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 BC30     		adds	r0, r0, #188
 124 0002 7047     		bx	lr
 125              		.size	_ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES1_, .-_ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES
 126              		.section	.text._ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUNES1_,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUNES1_, %function
 134              	_ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUNES1_:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 B430     		adds	r0, r0, #180
 139 0002 7047     		bx	lr
 140              		.size	_ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUNES1_, .-_ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUN
 141              		.section	.text._ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	_ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_, %function
 149              	_ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152              		@ link register save eliminated.
 153 0000 0048     		ldr	r0, .L11
 154 0002 7047     		bx	lr
 155              	.L12:
 156              		.align	2
 157              	.L11:
 158 0004 00000000 		.word	.LC0
 159              		.size	_ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_, .-_ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUN
 160              		.section	.text._ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUNES1_,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.syntax unified
 164              		.thumb
 165              		.thumb_func
 166              		.fpu fpv4-sp-d16
 167              		.type	_ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUNES1_, %function
 168              	_ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUNES1_:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 4


 172 0000 B830     		adds	r0, r0, #184
 173 0002 7047     		bx	lr
 174              		.size	_ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUNES1_, .-_ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUN
 175              		.section	.text._ZNK13WiFiInterface19GetObjectModelTableERj,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	_ZNK13WiFiInterface19GetObjectModelTableERj
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu fpv4-sp-d16
 183              		.type	_ZNK13WiFiInterface19GetObjectModelTableERj, %function
 184              	_ZNK13WiFiInterface19GetObjectModelTableERj:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 0423     		movs	r3, #4
 189 0002 0B60     		str	r3, [r1]
 190 0004 0048     		ldr	r0, .L15
 191 0006 7047     		bx	lr
 192              	.L16:
 193              		.align	2
 194              	.L15:
 195 0008 00000000 		.word	.LANCHOR0
 196              		.size	_ZNK13WiFiInterface19GetObjectModelTableERj, .-_ZNK13WiFiInterface19GetObjectModelTableERj
 197              		.section	.text._ZNK13WiFiInterface11EnableStateEv,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	_ZNK13WiFiInterface11EnableStateEv
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 205              		.type	_ZNK13WiFiInterface11EnableStateEv, %function
 206              	_ZNK13WiFiInterface11EnableStateEv:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 90F8B030 		ldrb	r3, [r0, #176]	@ zero_extendqisi2
 211 0004 012B     		cmp	r3, #1
 212 0006 09D0     		beq	.L19
 213 0008 042B     		cmp	r3, #4
 214 000a 05D0     		beq	.L20
 215 000c 022B     		cmp	r3, #2
 216 000e 0CBF     		ite	eq
 217 0010 0220     		moveq	r0, #2
 218 0012 4FF0FF30 		movne	r0, #-1
 219 0016 7047     		bx	lr
 220              	.L20:
 221 0018 0120     		movs	r0, #1
 222 001a 7047     		bx	lr
 223              	.L19:
 224 001c 0020     		movs	r0, #0
 225 001e 7047     		bx	lr
 226              		.size	_ZNK13WiFiInterface11EnableStateEv, .-_ZNK13WiFiInterface11EnableStateEv
 227              		.section	.text._ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_,"ax",%progbits
 228              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 5


 229              		.p2align 2,,3
 230              		.global	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 235              		.type	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_, %function
 236              	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              		@ link register save eliminated.
 240 0000 C0E92D12 		strd	r1, r2, [r0, #180]
 241 0004 C0F8BC30 		str	r3, [r0, #188]
 242 0008 7047     		bx	lr
 243              		.size	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_, .-_ZN13WiFiInterface12SetIPAddressE9IPAdd
 244 000a 00BF     		.section	.text._ZN13WiFiInterface13SetMacAddressEPKh,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	_ZN13WiFiInterface13SetMacAddressEPKh
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	_ZN13WiFiInterface13SetMacAddressEPKh, %function
 253              	_ZN13WiFiInterface13SetMacAddressEPKh:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 4B1E     		subs	r3, r1, #1
 258 0002 C030     		adds	r0, r0, #192
 259 0004 0531     		adds	r1, r1, #5
 260              	.L24:
 261 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 262 000a 00F8012B 		strb	r2, [r0], #1
 263 000e 8B42     		cmp	r3, r1
 264 0010 F9D1     		bne	.L24
 265 0012 7047     		bx	lr
 266              		.size	_ZN13WiFiInterface13SetMacAddressEPKh, .-_ZN13WiFiInterface13SetMacAddressEPKh
 267              		.section	.text._ZL21EspTransferRequestIsr17CallbackParameter,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv4-sp-d16
 274              		.type	_ZL21EspTransferRequestIsr17CallbackParameter, %function
 275              	_ZL21EspTransferRequestIsr17CallbackParameter:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 279 0000 034B     		ldr	r3, .L27
 280 0002 1B68     		ldr	r3, [r3]
 281 0004 0122     		movs	r2, #1
 282 0006 83F8B320 		strb	r2, [r3, #179]
 283 000a 5F20     		movs	r0, #95
 284 000c FFF7FEBF 		b	_Z15detachInterruptm
 285              	.L28:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 6


 286              		.align	2
 287              	.L27:
 288 0010 00000000 		.word	.LANCHOR1
 289              		.size	_ZL21EspTransferRequestIsr17CallbackParameter, .-_ZL21EspTransferRequestIsr17CallbackParamet
 290              		.section	.text._ZL15spi_dma_disablev,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.syntax unified
 294              		.thumb
 295              		.thumb_func
 296              		.fpu fpv4-sp-d16
 297              		.type	_ZL15spi_dma_disablev, %function
 298              	_ZL15spi_dma_disablev:
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301 0000 10B5     		push	{r4, lr}
 302 0002 054C     		ldr	r4, .L31
 303 0004 0121     		movs	r1, #1
 304 0006 2046     		mov	r0, r4
 305 0008 FFF7FEFF 		bl	dmac_channel_disable
 306 000c 2046     		mov	r0, r4
 307 000e 0221     		movs	r1, #2
 308 0010 BDE81040 		pop	{r4, lr}
 309 0014 FFF7FEBF 		b	dmac_channel_disable
 310              	.L32:
 311              		.align	2
 312              	.L31:
 313 0018 00000C40 		.word	1074528256
 314              		.size	_ZL15spi_dma_disablev, .-_ZL15spi_dma_disablev
 315              		.section	.text._ZN13WiFiInterface4StopEv.part.15,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	_ZN13WiFiInterface4StopEv.part.15, %function
 323              	_ZN13WiFiInterface4StopEv.part.15:
 324              		@ args = 0, pretend = 0, frame = 8
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326 0000 10B5     		push	{r4, lr}
 327 0002 82B0     		sub	sp, sp, #8
 328 0004 4FF0FF32 		mov	r2, #-1
 329 0008 0446     		mov	r4, r0
 330 000a 011D     		adds	r1, r0, #4
 331 000c 6846     		mov	r0, sp
 332 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 333 0012 0021     		movs	r1, #0
 334 0014 5E20     		movs	r0, #94
 335 0016 FFF7FEFF 		bl	digitalWrite
 336 001a 0021     		movs	r1, #0
 337 001c 6420     		movs	r0, #100
 338 001e FFF7FEFF 		bl	digitalWrite
 339 0022 5F20     		movs	r0, #95
 340 0024 FFF7FEFF 		bl	_Z15detachInterruptm
 341 0028 0E49     		ldr	r1, .L39
 342 002a 0F4B     		ldr	r3, .L39+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 7


 343 002c 0F4A     		ldr	r2, .L39+8
 344 002e 4FF40020 		mov	r0, #524288
 345 0032 C1F88000 		str	r0, [r1, #128]
 346 0036 0221     		movs	r1, #2
 347 0038 1960     		str	r1, [r3]
 348 003a 136B     		ldr	r3, [r2, #48]
 349 003c 03F00413 		and	r3, r3, #262148
 350 0040 042B     		cmp	r3, #4
 351 0042 1CBF     		itt	ne
 352 0044 40F20443 		movwne	r3, #1028
 353 0048 D362     		strne	r3, [r2, #44]
 354 004a FFF7FEFF 		bl	_ZL15spi_dma_disablev
 355 004e 0023     		movs	r3, #0
 356 0050 6846     		mov	r0, sp
 357 0052 C4F8AC30 		str	r3, [r4, #172]
 358 0056 84F8B130 		strb	r3, [r4, #177]
 359 005a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 360 005e 02B0     		add	sp, sp, #8
 361              		@ sp needed
 362 0060 10BD     		pop	{r4, pc}
 363              	.L40:
 364 0062 00BF     		.align	2
 365              	.L39:
 366 0064 00E100E0 		.word	-536813312
 367 0068 00800840 		.word	1074298880
 368 006c 00000C40 		.word	1074528256
 369              		.size	_ZN13WiFiInterface4StopEv.part.15, .-_ZN13WiFiInterface4StopEv.part.15
 370              		.section	.text._ZN13WiFiInterface4ExitEv,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	_ZN13WiFiInterface4ExitEv
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu fpv4-sp-d16
 378              		.type	_ZN13WiFiInterface4ExitEv, %function
 379              	_ZN13WiFiInterface4ExitEv:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382              		@ link register save eliminated.
 383 0000 D0F8AC30 		ldr	r3, [r0, #172]
 384 0004 03B9     		cbnz	r3, .L43
 385 0006 7047     		bx	lr
 386              	.L43:
 387 0008 FFF7FEBF 		b	_ZN13WiFiInterface4StopEv.part.15
 388              		.size	_ZN13WiFiInterface4ExitEv, .-_ZN13WiFiInterface4ExitEv
 389              		.section	.text._ZN13WiFiInterface15GetNetworkStateERK9StringRef,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	_ZN13WiFiInterface15GetNetworkStateERK9StringRef
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu fpv4-sp-d16
 397              		.type	_ZN13WiFiInterface15GetNetworkStateERK9StringRef, %function
 398              	_ZN13WiFiInterface15GetNetworkStateERK9StringRef:
 399              		@ args = 0, pretend = 0, frame = 16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401 0000 30B5     		push	{r4, r5, lr}
 402 0002 D0F8AC30 		ldr	r3, [r0, #172]
 403 0006 85B0     		sub	sp, sp, #20
 404 0008 0D46     		mov	r5, r1
 405 000a 042B     		cmp	r3, #4
 406 000c 32D8     		bhi	.L45
 407 000e DFE803F0 		tbb	[pc, r3]
 408              	.L47:
 409 0012 2A       		.byte	(.L46-.L47)/2
 410 0013 23       		.byte	(.L48-.L47)/2
 411 0014 23       		.byte	(.L48-.L47)/2
 412 0015 0A       		.byte	(.L49-.L47)/2
 413 0016 03       		.byte	(.L50-.L47)/2
 414 0017 00       		.p2align 1
 415              	.L50:
 416 0018 0846     		mov	r0, r1
 417 001a 2149     		ldr	r1, .L60
 418 001c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 419 0020 0120     		movs	r0, #1
 420              	.L51:
 421 0022 05B0     		add	sp, sp, #20
 422              		@ sp needed
 423 0024 30BD     		pop	{r4, r5, pc}
 424              	.L49:
 425 0026 0446     		mov	r4, r0
 426 0028 1E49     		ldr	r1, .L60+4
 427 002a 2846     		mov	r0, r5
 428 002c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 429 0030 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 430 0034 062B     		cmp	r3, #6
 431 0036 96BF     		itet	ls
 432 0038 1B4A     		ldrls	r2, .L60+8
 433 003a 1C49     		ldrhi	r1, .L60+12
 434 003c 52F82310 		ldrls	r1, [r2, r3, lsl #2]
 435 0040 2846     		mov	r0, r5
 436 0042 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 437 0046 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 438 004a 042B     		cmp	r3, #4
 439 004c 19D0     		beq	.L53
 440 004e 022B     		cmp	r3, #2
 441 0050 17D0     		beq	.L53
 442 0052 0120     		movs	r0, #1
 443 0054 05B0     		add	sp, sp, #20
 444              		@ sp needed
 445 0056 30BD     		pop	{r4, r5, pc}
 446              	.L48:
 447 0058 0846     		mov	r0, r1
 448 005a 1549     		ldr	r1, .L60+16
 449 005c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 450 0060 0120     		movs	r0, #1
 451 0062 05B0     		add	sp, sp, #20
 452              		@ sp needed
 453 0064 30BD     		pop	{r4, r5, pc}
 454              	.L46:
 455 0066 0846     		mov	r0, r1
 456 0068 1249     		ldr	r1, .L60+20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 9


 457 006a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 458 006e 0120     		movs	r0, #1
 459 0070 05B0     		add	sp, sp, #20
 460              		@ sp needed
 461 0072 30BD     		pop	{r4, r5, pc}
 462              	.L45:
 463 0074 0846     		mov	r0, r1
 464 0076 1049     		ldr	r1, .L60+24
 465 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 466 007c 0220     		movs	r0, #2
 467 007e 05B0     		add	sp, sp, #20
 468              		@ sp needed
 469 0080 30BD     		pop	{r4, r5, pc}
 470              	.L53:
 471 0082 D4F8B410 		ldr	r1, [r4, #180]
 472 0086 6846     		mov	r0, sp
 473 0088 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 474 008c 6B46     		mov	r3, sp
 475 008e 04F1E702 		add	r2, r4, #231
 476 0092 2846     		mov	r0, r5
 477 0094 0949     		ldr	r1, .L60+28
 478 0096 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 479 009a 0120     		movs	r0, #1
 480 009c C1E7     		b	.L51
 481              	.L61:
 482 009e 00BF     		.align	2
 483              	.L60:
 484 00a0 4C000000 		.word	.LC4
 485 00a4 6C000000 		.word	.LC5
 486 00a8 00000000 		.word	.LANCHOR2
 487 00ac 00000000 		.word	.LC1
 488 00b0 2C000000 		.word	.LC3
 489 00b4 14000000 		.word	.LC2
 490 00b8 90000000 		.word	.LC7
 491 00bc 7C000000 		.word	.LC6
 492              		.size	_ZN13WiFiInterface15GetNetworkStateERK9StringRef, .-_ZN13WiFiInterface15GetNetworkStateERK9S
 493              		.section	.text._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.syntax unified
 497              		.thumb
 498              		.thumb_func
 499              		.fpu fpv4-sp-d16
 500              		.type	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17, %function
 501              	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17:
 502              		@ args = 16, pretend = 0, frame = 8
 503              		@ frame_needed = 0, uses_anonymous_args = 0
 504 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 505 0004 9E4C     		ldr	r4, .L117
 506 0006 83B0     		sub	sp, sp, #12
 507 0008 0546     		mov	r5, r0
 508 000a 8846     		mov	r8, r1
 509 000c 9146     		mov	r9, r2
 510 000e 011D     		adds	r1, r0, #4
 511 0010 4FF0FF32 		mov	r2, #-1
 512 0014 6846     		mov	r0, sp
 513 0016 1F46     		mov	r7, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 10


 514 0018 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 515 001c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 516 001e B3B1     		cbz	r3, .L63
 517 0020 984B     		ldr	r3, .L117+4
 518 0022 D3F80831 		ldr	r3, [r3, #264]	@ unaligned
 519 0026 9C07     		lsls	r4, r3, #30
 520 0028 0DD4     		bmi	.L110
 521              	.L64:
 522 002a D5F81431 		ldr	r3, [r5, #276]
 523 002e 0133     		adds	r3, r3, #1
 524 0030 C5F81431 		str	r3, [r5, #276]
 525 0034 6FF00704 		mvn	r4, #7
 526              	.L65:
 527 0038 6846     		mov	r0, sp
 528 003a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 529 003e 2046     		mov	r0, r4
 530 0040 03B0     		add	sp, sp, #12
 531              		@ sp needed
 532 0042 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 533              	.L110:
 534 0046 9048     		ldr	r0, .L117+8
 535 0048 FFF7FEFF 		bl	debugPrintf
 536 004c EDE7     		b	.L64
 537              	.L63:
 538 004e FFF7FEFF 		bl	millis
 539 0052 0646     		mov	r6, r0
 540              	.L68:
 541 0054 5F20     		movs	r0, #95
 542 0056 FFF7FEFF 		bl	digitalRead
 543 005a 18B1     		cbz	r0, .L69
 544 005c 0B20     		movs	r0, #11
 545 005e FFF7FEFF 		bl	digitalRead
 546 0062 D8B9     		cbnz	r0, .L111
 547              	.L69:
 548 0064 FFF7FEFF 		bl	millis
 549 0068 801B     		subs	r0, r0, r6
 550 006a 6428     		cmp	r0, #100
 551 006c F2D9     		bls	.L68
 552 006e 854B     		ldr	r3, .L117+4
 553 0070 D3F80831 		ldr	r3, [r3, #264]
 554 0074 9807     		lsls	r0, r3, #30
 555 0076 0DD4     		bmi	.L112
 556              	.L72:
 557 0078 D5F81831 		ldr	r3, [r5, #280]
 558 007c 0133     		adds	r3, r3, #1
 559 007e C5F81831 		str	r3, [r5, #280]
 560 0082 6846     		mov	r0, sp
 561 0084 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 562 0088 6FF00704 		mvn	r4, #7
 563 008c 2046     		mov	r0, r4
 564 008e 03B0     		add	sp, sp, #12
 565              		@ sp needed
 566 0090 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 567              	.L112:
 568 0094 7C48     		ldr	r0, .L117+8
 569 0096 FFF7FEFF 		bl	debugPrintf
 570 009a EDE7     		b	.L72
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 11


 571              	.L111:
 572 009c 7B48     		ldr	r0, .L117+12
 573 009e 0D99     		ldr	r1, [sp, #52]
 574 00a0 8180     		strh	r1, [r0, #4]	@ movhi
 575 00a2 0023     		movs	r3, #0
 576 00a4 8360     		str	r3, [r0, #8]
 577 00a6 0C9B     		ldr	r3, [sp, #48]
 578 00a8 0F99     		ldr	r1, [sp, #60]
 579 00aa 80F80180 		strb	r8, [r0, #1]
 580 00ae 3E22     		movs	r2, #62
 581 00b0 80F80290 		strb	r9, [r0, #2]
 582 00b4 C770     		strb	r7, [r0, #3]
 583 00b6 C180     		strh	r1, [r0, #6]	@ movhi
 584 00b8 0270     		strb	r2, [r0]
 585 00ba 23B1     		cbz	r3, .L71
 586 00bc 0C30     		adds	r0, r0, #12
 587 00be DDE90C12 		ldrd	r1, r2, [sp, #48]
 588 00c2 FFF7FEFF 		bl	memcpy
 589              	.L71:
 590 00c6 DFF8F4B1 		ldr	fp, .L117+60
 591 00ca DFF8F4A1 		ldr	r10, .L117+64
 592 00ce 704E     		ldr	r6, .L117+16
 593 00d0 0127     		movs	r7, #1
 594 00d2 8023     		movs	r3, #128
 595 00d4 0022     		movs	r2, #0
 596 00d6 C921     		movs	r1, #201
 597 00d8 5846     		mov	r0, fp
 598 00da 8AF80010 		strb	r1, [r10]
 599 00de 2770     		strb	r7, [r4]
 600 00e0 1146     		mov	r1, r2
 601 00e2 CBF80030 		str	r3, [fp]
 602 00e6 FFF7FEFF 		bl	spi_set_bits_per_transfer
 603 00ea FFF7FEFF 		bl	_ZL15spi_dma_disablev
 604 00ee 3046     		mov	r0, r6
 605 00f0 684A     		ldr	r2, .L117+20
 606 00f2 736A     		ldr	r3, [r6, #36]
 607 00f4 0221     		movs	r1, #2
 608 00f6 FFF7FEFF 		bl	dmac_channel_set_source_addr
 609 00fa 5246     		mov	r2, r10
 610 00fc 3046     		mov	r0, r6
 611 00fe 0221     		movs	r1, #2
 612 0100 FFF7FEFF 		bl	dmac_channel_set_destination_addr
 613 0104 3046     		mov	r0, r6
 614 0106 0022     		movs	r2, #0
 615 0108 0221     		movs	r1, #2
 616 010a FFF7FEFF 		bl	dmac_channel_set_descriptor_addr
 617 010e 0F9B     		ldr	r3, [sp, #60]
 618 0110 03F10C02 		add	r2, r3, #12
 619 0114 3046     		mov	r0, r6
 620 0116 42F00052 		orr	r2, r2, #536870912
 621 011a 0221     		movs	r1, #2
 622 011c FFF7FEFF 		bl	dmac_channel_set_ctrlA
 623 0120 3046     		mov	r0, r6
 624 0122 5D4A     		ldr	r2, .L117+24
 625 0124 0221     		movs	r1, #2
 626 0126 FFF7FEFF 		bl	dmac_channel_set_ctrlB
 627 012a 3946     		mov	r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 12


 628 012c 3046     		mov	r0, r6
 629 012e 574A     		ldr	r2, .L117+12
 630 0130 736A     		ldr	r3, [r6, #36]
 631 0132 FFF7FEFF 		bl	dmac_channel_set_source_addr
 632 0136 3946     		mov	r1, r7
 633 0138 3046     		mov	r0, r6
 634 013a 584A     		ldr	r2, .L117+28
 635 013c FFF7FEFF 		bl	dmac_channel_set_destination_addr
 636 0140 3946     		mov	r1, r7
 637 0142 3046     		mov	r0, r6
 638 0144 0022     		movs	r2, #0
 639 0146 FFF7FEFF 		bl	dmac_channel_set_descriptor_addr
 640 014a 0D9B     		ldr	r3, [sp, #52]
 641 014c 03F10C02 		add	r2, r3, #12
 642 0150 3946     		mov	r1, r7
 643 0152 3046     		mov	r0, r6
 644 0154 42F00072 		orr	r2, r2, #33554432
 645 0158 FFF7FEFF 		bl	dmac_channel_set_ctrlA
 646 015c 504A     		ldr	r2, .L117+32
 647 015e 3946     		mov	r1, r7
 648 0160 3046     		mov	r0, r6
 649 0162 FFF7FEFF 		bl	dmac_channel_set_ctrlB
 650 0166 3046     		mov	r0, r6
 651 0168 0221     		movs	r1, #2
 652 016a FFF7FEFF 		bl	dmac_channel_enable
 653 016e 3946     		mov	r1, r7
 654 0170 3046     		mov	r0, r6
 655 0172 FFF7FEFF 		bl	dmac_channel_enable
 656 0176 CBF80070 		str	r7, [fp]
 657 017a 4FF48073 		mov	r3, #256
 658 017e DBF81020 		ldr	r2, [fp, #16]
 659 0182 CBF81430 		str	r3, [fp, #20]
 660 0186 3946     		mov	r1, r7
 661 0188 5E20     		movs	r0, #94
 662 018a FFF7FEFF 		bl	digitalWrite
 663 018e FFF7FEFF 		bl	millis
 664 0192 3746     		mov	r7, r6
 665 0194 8346     		mov	fp, r0
 666              	.L76:
 667 0196 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 668 0198 0B20     		movs	r0, #11
 669 019a 23B9     		cbnz	r3, .L73
 670 019c 3B6B     		ldr	r3, [r7, #48]
 671 019e 03F00413 		and	r3, r3, #262148
 672 01a2 042B     		cmp	r3, #4
 673 01a4 1ED1     		bne	.L113
 674              	.L73:
 675 01a6 FFF7FEFF 		bl	digitalRead
 676 01aa 0028     		cmp	r0, #0
 677 01ac F3D0     		beq	.L76
 678 01ae FFF7FEFF 		bl	millis
 679 01b2 A0EB0B00 		sub	r0, r0, fp
 680 01b6 C828     		cmp	r0, #200
 681 01b8 EDD9     		bls	.L76
 682 01ba 324B     		ldr	r3, .L117+4
 683 01bc D3F80831 		ldr	r3, [r3, #264]
 684 01c0 9907     		lsls	r1, r3, #30
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 13


 685 01c2 03D5     		bpl	.L78
 686 01c4 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 687 01c6 3748     		ldr	r0, .L117+36
 688 01c8 FFF7FEFF 		bl	debugPrintf
 689              	.L78:
 690 01cc 0023     		movs	r3, #0
 691 01ce 2370     		strb	r3, [r4]
 692 01d0 FFF7FEFF 		bl	_ZL15spi_dma_disablev
 693 01d4 D5F81C31 		ldr	r3, [r5, #284]
 694 01d8 0133     		adds	r3, r3, #1
 695 01da C5F81C31 		str	r3, [r5, #284]
 696 01de 6FF00604 		mvn	r4, #6
 697 01e2 29E7     		b	.L65
 698              	.L113:
 699 01e4 40F20443 		movw	r3, #1028
 700 01e8 F362     		str	r3, [r6, #44]
 701 01ea 9AF80010 		ldrb	r1, [r10]	@ zero_extendqisi2
 702 01ee 3E29     		cmp	r1, #62
 703 01f0 0DD0     		beq	.L114
 704 01f2 244B     		ldr	r3, .L117+4
 705 01f4 D3F80831 		ldr	r3, [r3, #264]
 706 01f8 9A07     		lsls	r2, r3, #30
 707 01fa 02D4     		bmi	.L115
 708 01fc 6FF00904 		mvn	r4, #9
 709 0200 1AE7     		b	.L65
 710              	.L115:
 711 0202 2948     		ldr	r0, .L117+40
 712 0204 FFF7FEFF 		bl	debugPrintf
 713 0208 6FF00904 		mvn	r4, #9
 714 020c 14E7     		b	.L65
 715              	.L114:
 716 020e 9AF80130 		ldrb	r3, [r10, #1]	@ zero_extendqisi2
 717 0212 5A1F     		subs	r2, r3, #5
 718 0214 012A     		cmp	r2, #1
 719 0216 13D9     		bls	.L116
 720              	.L79:
 721 0218 DAF80840 		ldr	r4, [r10, #8]
 722 021c 85F8B130 		strb	r3, [r5, #177]
 723 0220 002C     		cmp	r4, #0
 724 0222 18DD     		ble	.L80
 725 0224 0E9B     		ldr	r3, [sp, #56]
 726 0226 002B     		cmp	r3, #0
 727 0228 3FF406AF 		beq	.L65
 728 022c 0F9B     		ldr	r3, [sp, #60]
 729 022e 1F49     		ldr	r1, .L117+44
 730 0230 0E98     		ldr	r0, [sp, #56]
 731 0232 A342     		cmp	r3, r4
 732 0234 28BF     		it	cs
 733 0236 2346     		movcs	r3, r4
 734 0238 1A46     		mov	r2, r3
 735 023a FFF7FEFF 		bl	memcpy
 736 023e FBE6     		b	.L65
 737              	.L116:
 738 0240 95F8B120 		ldrb	r2, [r5, #177]	@ zero_extendqisi2
 739 0244 053A     		subs	r2, r2, #5
 740 0246 012A     		cmp	r2, #1
 741 0248 E6D9     		bls	.L79
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 14


 742 024a D5F81021 		ldr	r2, [r5, #272]
 743 024e 0132     		adds	r2, r2, #1
 744 0250 C5F81021 		str	r2, [r5, #272]
 745 0254 E0E7     		b	.L79
 746              	.L80:
 747 0256 3FF4EFAE 		beq	.L65
 748 025a 0A4B     		ldr	r3, .L117+4
 749 025c D3F80831 		ldr	r3, [r3, #264]
 750 0260 9B07     		lsls	r3, r3, #30
 751 0262 7FF5E9AE 		bpl	.L65
 752 0266 14F10C03 		adds	r3, r4, #12
 753 026a 2ABF     		itet	cs
 754 026c 104A     		ldrcs	r2, .L117+48
 755 026e 114B     		ldrcc	r3, .L117+52
 756 0270 52F82330 		ldrcs	r3, [r2, r3, lsl #2]
 757 0274 1048     		ldr	r0, .L117+56
 758 0276 4A46     		mov	r2, r9
 759 0278 4146     		mov	r1, r8
 760 027a FFF7FEFF 		bl	debugPrintf
 761 027e DBE6     		b	.L65
 762              	.L118:
 763              		.align	2
 764              	.L117:
 765 0280 00000000 		.word	.LANCHOR3
 766 0284 00000000 		.word	reprap
 767 0288 18000000 		.word	.LC9
 768 028c 00000000 		.word	.LANCHOR4
 769 0290 00000C40 		.word	1074528256
 770 0294 08800840 		.word	1074298888
 771 0298 00005102 		.word	38862848
 772 029c 0C800840 		.word	1074298892
 773 02a0 00003120 		.word	540082176
 774 02a4 28000000 		.word	.LC10
 775 02a8 48000000 		.word	.LC11
 776 02ac 0C000000 		.word	.LANCHOR5+12
 777 02b0 00000000 		.word	.LANCHOR6
 778 02b4 00000000 		.word	.LC8
 779 02b8 64000000 		.word	.LC12
 780 02bc 00800840 		.word	1074298880
 781 02c0 00000000 		.word	.LANCHOR5
 782              		.size	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17, .-_ZN13WiFiInterface11Sen
 783              		.section	.text._ZN13WiFiInterfaceC2ER8Platform,"ax",%progbits
 784              		.align	1
 785              		.p2align 2,,3
 786              		.global	_ZN13WiFiInterfaceC2ER8Platform
 787              		.syntax unified
 788              		.thumb
 789              		.thumb_func
 790              		.fpu fpv4-sp-d16
 791              		.type	_ZN13WiFiInterfaceC2ER8Platform, %function
 792              	_ZN13WiFiInterfaceC2ER8Platform:
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 796 0002 0446     		mov	r4, r0
 797 0004 0D46     		mov	r5, r1
 798 0006 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 15


 799 000a 0023     		movs	r3, #0
 800 000c 284A     		ldr	r2, .L124
 801 000e 2948     		ldr	r0, .L124+4
 802 0010 2567     		str	r5, [r4, #112]
 803 0012 C4E92D33 		strd	r3, r3, [r4, #180]
 804 0016 2060     		str	r0, [r4]
 805 0018 1460     		str	r4, [r2]
 806 001a 6360     		str	r3, [r4, #4]
 807 001c A367     		str	r3, [r4, #120]
 808 001e A4F8A630 		strh	r3, [r4, #166]	@ movhi
 809 0022 84F8A830 		strb	r3, [r4, #168]
 810 0026 C4F8AC30 		str	r3, [r4, #172]
 811 002a 84F8B030 		strb	r3, [r4, #176]
 812 002e 84F8B130 		strb	r3, [r4, #177]
 813 0032 84F8B230 		strb	r3, [r4, #178]
 814 0036 84F8B330 		strb	r3, [r4, #179]
 815 003a C4F8BC30 		str	r3, [r4, #188]
 816 003e C4F80831 		str	r3, [r4, #264]
 817 0042 C4F80C31 		str	r3, [r4, #268]
 818 0046 84F83031 		strb	r3, [r4, #304]
 819 004a 84F83231 		strb	r3, [r4, #306]
 820 004e 04F17C05 		add	r5, r4, #124
 821 0052 04F19C07 		add	r7, r4, #156
 822              	.L120:
 823 0056 2820     		movs	r0, #40
 824 0058 FFF7FEFF 		bl	_Znwj
 825 005c 2146     		mov	r1, r4
 826 005e 0646     		mov	r6, r0
 827 0060 FFF7FEFF 		bl	_ZN10WiFiSocketC1EP16NetworkInterface
 828 0064 45F8046B 		str	r6, [r5], #4
 829 0068 AF42     		cmp	r7, r5
 830 006a F4D1     		bne	.L120
 831 006c 124B     		ldr	r3, .L124+8
 832 006e 134A     		ldr	r2, .L124+12
 833 0070 C4F8A020 		str	r2, [r4, #160]
 834 0074 03CB     		ldmia	r3!, {r0, r1}
 835 0076 C4F8E700 		str	r0, [r4, #231]	@ unaligned
 836 007a 0120     		movs	r0, #1
 837 007c 33F80859 		ldrh	r5, [r3], #-8	@ unaligned
 838 0080 84F8A900 		strb	r0, [r4, #169]
 839 0084 0020     		movs	r0, #0
 840 0086 84F8AA00 		strb	r0, [r4, #170]
 841 008a 84F8AB00 		strb	r0, [r4, #171]
 842 008e 1720     		movs	r0, #23
 843 0090 A4F8A400 		strh	r0, [r4, #164]	@ movhi
 844 0094 C4F8EB10 		str	r1, [r4, #235]	@ unaligned
 845 0098 03CB     		ldmia	r3!, {r0, r1}
 846 009a A4F8EF50 		strh	r5, [r4, #239]	@ unaligned
 847 009e C4F82001 		str	r0, [r4, #288]	@ unaligned
 848 00a2 A4F82851 		strh	r5, [r4, #296]	@ unaligned
 849 00a6 C4F82411 		str	r1, [r4, #292]	@ unaligned
 850 00aa 2046     		mov	r0, r4
 851 00ac F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 852              	.L125:
 853 00ae 00BF     		.align	2
 854              	.L124:
 855 00b0 00000000 		.word	.LANCHOR1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 16


 856 00b4 08000000 		.word	.LANCHOR7+8
 857 00b8 00000000 		.word	.LC13
 858 00bc 50001500 		.word	1376336
 859              		.size	_ZN13WiFiInterfaceC2ER8Platform, .-_ZN13WiFiInterfaceC2ER8Platform
 860              		.global	_ZN13WiFiInterfaceC1ER8Platform
 861              		.thumb_set _ZN13WiFiInterfaceC1ER8Platform,_ZN13WiFiInterfaceC2ER8Platform
 862              		.section	.text._ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef,"ax",%progbits
 863              		.align	1
 864              		.p2align 2,,3
 865              		.global	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 866              		.syntax unified
 867              		.thumb
 868              		.thumb_func
 869              		.fpu fpv4-sp-d16
 870              		.type	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef, %function
 871              	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874              		@ link register save eliminated.
 875 0000 30B4     		push	{r4, r5}
 876 0002 4418     		adds	r4, r0, r1
 877 0004 0346     		mov	r3, r0
 878 0006 94F8A950 		ldrb	r5, [r4, #169]	@ zero_extendqisi2
 879 000a 0948     		ldr	r0, .L130
 880 000c 50F82140 		ldr	r4, [r0, r1, lsl #2]
 881 0010 1046     		mov	r0, r2
 882 0012 25B9     		cbnz	r5, .L129
 883 0014 2246     		mov	r2, r4
 884 0016 0749     		ldr	r1, .L130+4
 885 0018 30BC     		pop	{r4, r5}
 886 001a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 887              	.L129:
 888 001e 5031     		adds	r1, r1, #80
 889 0020 2246     		mov	r2, r4
 890 0022 33F81130 		ldrh	r3, [r3, r1, lsl #1]
 891 0026 0449     		ldr	r1, .L130+8
 892 0028 30BC     		pop	{r4, r5}
 893 002a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 894              	.L131:
 895 002e 00BF     		.align	2
 896              	.L130:
 897 0030 00000000 		.word	.LANCHOR8
 898 0034 1C000000 		.word	.LC15
 899 0038 00000000 		.word	.LC14
 900              		.size	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef, .-_ZNK13WiFiInterface17ReportOneProtoc
 901              		.section	.text._ZNK13WiFiInterface15ReportProtocolsERK9StringRef,"ax",%progbits
 902              		.align	1
 903              		.p2align 2,,3
 904              		.global	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef
 905              		.syntax unified
 906              		.thumb
 907              		.thumb_func
 908              		.fpu fpv4-sp-d16
 909              		.type	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef, %function
 910              	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef:
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 17


 913 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 914 0002 0B68     		ldr	r3, [r1]
 915 0004 0D46     		mov	r5, r1
 916 0006 0024     		movs	r4, #0
 917 0008 0746     		mov	r7, r0
 918 000a 1C70     		strb	r4, [r3]
 919 000c 0A21     		movs	r1, #10
 920 000e 2846     		mov	r0, r5
 921 0010 E6B2     		uxtb	r6, r4
 922 0012 74B1     		cbz	r4, .L134
 923              	.L139:
 924 0014 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 925 0018 2A46     		mov	r2, r5
 926 001a 3146     		mov	r1, r6
 927 001c 3846     		mov	r0, r7
 928 001e FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 929 0022 022C     		cmp	r4, #2
 930 0024 0BD0     		beq	.L138
 931              	.L135:
 932 0026 0134     		adds	r4, r4, #1
 933 0028 0A21     		movs	r1, #10
 934 002a 2846     		mov	r0, r5
 935 002c E6B2     		uxtb	r6, r4
 936 002e 002C     		cmp	r4, #0
 937 0030 F0D1     		bne	.L139
 938              	.L134:
 939 0032 2A46     		mov	r2, r5
 940 0034 2146     		mov	r1, r4
 941 0036 3846     		mov	r0, r7
 942 0038 FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 943 003c F3E7     		b	.L135
 944              	.L138:
 945 003e 0120     		movs	r0, #1
 946 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 947              		.size	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef, .-_ZNK13WiFiInterface15ReportProtocolsERK
 948 0042 00BF     		.section	.text._ZNK13WiFiInterface22GetProtocolByLocalPortEt,"ax",%progbits
 949              		.align	1
 950              		.p2align 2,,3
 951              		.global	_ZNK13WiFiInterface22GetProtocolByLocalPortEt
 952              		.syntax unified
 953              		.thumb
 954              		.thumb_func
 955              		.fpu fpv4-sp-d16
 956              		.type	_ZNK13WiFiInterface22GetProtocolByLocalPortEt, %function
 957              	_ZNK13WiFiInterface22GetProtocolByLocalPortEt:
 958              		@ args = 0, pretend = 0, frame = 0
 959              		@ frame_needed = 0, uses_anonymous_args = 0
 960              		@ link register save eliminated.
 961 0000 B0F8A630 		ldrh	r3, [r0, #166]
 962 0004 8B42     		cmp	r3, r1
 963 0006 0ED0     		beq	.L142
 964 0008 B0F8A030 		ldrh	r3, [r0, #160]
 965 000c 8B42     		cmp	r3, r1
 966 000e 0CD0     		beq	.L143
 967 0010 B0F8A230 		ldrh	r3, [r0, #162]
 968 0014 8B42     		cmp	r3, r1
 969 0016 0AD0     		beq	.L144
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 18


 970 0018 B0F8A400 		ldrh	r0, [r0, #164]
 971 001c 8842     		cmp	r0, r1
 972 001e 0CBF     		ite	eq
 973 0020 0220     		moveq	r0, #2
 974 0022 FF20     		movne	r0, #255
 975 0024 7047     		bx	lr
 976              	.L142:
 977 0026 0320     		movs	r0, #3
 978 0028 7047     		bx	lr
 979              	.L143:
 980 002a 0020     		movs	r0, #0
 981 002c 7047     		bx	lr
 982              	.L144:
 983 002e 0120     		movs	r0, #1
 984 0030 7047     		bx	lr
 985              		.size	_ZNK13WiFiInterface22GetProtocolByLocalPortEt, .-_ZNK13WiFiInterface22GetProtocolByLocalPort
 986 0032 00BF     		.section	.text._ZN13WiFiInterface4StopEv,"ax",%progbits
 987              		.align	1
 988              		.p2align 2,,3
 989              		.global	_ZN13WiFiInterface4StopEv
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu fpv4-sp-d16
 994              		.type	_ZN13WiFiInterface4StopEv, %function
 995              	_ZN13WiFiInterface4StopEv:
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999 0000 D0F8AC30 		ldr	r3, [r0, #172]
 1000 0004 03B9     		cbnz	r3, .L148
 1001 0006 7047     		bx	lr
 1002              	.L148:
 1003 0008 FFF7FEBF 		b	_ZN13WiFiInterface4StopEv.part.15
 1004              		.size	_ZN13WiFiInterface4StopEv, .-_ZN13WiFiInterface4StopEv
 1005              		.section	.text._ZN13WiFiInterface23TranslateEspResetReasonEm,"ax",%progbits
 1006              		.align	1
 1007              		.p2align 2,,3
 1008              		.global	_ZN13WiFiInterface23TranslateEspResetReasonEm
 1009              		.syntax unified
 1010              		.thumb
 1011              		.thumb_func
 1012              		.fpu fpv4-sp-d16
 1013              		.type	_ZN13WiFiInterface23TranslateEspResetReasonEm, %function
 1014              	_ZN13WiFiInterface23TranslateEspResetReasonEm:
 1015              		@ args = 0, pretend = 0, frame = 0
 1016              		@ frame_needed = 0, uses_anonymous_args = 0
 1017              		@ link register save eliminated.
 1018 0000 0628     		cmp	r0, #6
 1019 0002 9ABF     		itte	ls
 1020 0004 024B     		ldrls	r3, .L152
 1021 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 1022 000a 0248     		ldrhi	r0, .L152+4
 1023 000c 7047     		bx	lr
 1024              	.L153:
 1025 000e 00BF     		.align	2
 1026              	.L152:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 19


 1027 0010 00000000 		.word	.LANCHOR9
 1028 0014 00000000 		.word	.LC16
 1029              		.size	_ZN13WiFiInterface23TranslateEspResetReasonEm, .-_ZN13WiFiInterface23TranslateEspResetReason
 1030              		.section	.text._ZNK13WiFiInterface21TranslateNetworkStateEv,"ax",%progbits
 1031              		.align	1
 1032              		.p2align 2,,3
 1033              		.global	_ZNK13WiFiInterface21TranslateNetworkStateEv
 1034              		.syntax unified
 1035              		.thumb
 1036              		.thumb_func
 1037              		.fpu fpv4-sp-d16
 1038              		.type	_ZNK13WiFiInterface21TranslateNetworkStateEv, %function
 1039              	_ZNK13WiFiInterface21TranslateNetworkStateEv:
 1040              		@ args = 0, pretend = 0, frame = 0
 1041              		@ frame_needed = 0, uses_anonymous_args = 0
 1042              		@ link register save eliminated.
 1043 0000 D0F8AC30 		ldr	r3, [r0, #172]
 1044 0004 042B     		cmp	r3, #4
 1045 0006 9ABF     		itte	ls
 1046 0008 024A     		ldrls	r2, .L157
 1047 000a 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 1048 000e 0248     		ldrhi	r0, .L157+4
 1049 0010 7047     		bx	lr
 1050              	.L158:
 1051 0012 00BF     		.align	2
 1052              	.L157:
 1053 0014 00000000 		.word	.LANCHOR10
 1054 0018 00000000 		.word	.LC17
 1055              		.size	_ZNK13WiFiInterface21TranslateNetworkStateEv, .-_ZNK13WiFiInterface21TranslateNetworkStateEv
 1056              		.section	.text._ZN13WiFiInterface18TranslateWiFiStateE9WiFiState,"ax",%progbits
 1057              		.align	1
 1058              		.p2align 2,,3
 1059              		.global	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState
 1060              		.syntax unified
 1061              		.thumb
 1062              		.thumb_func
 1063              		.fpu fpv4-sp-d16
 1064              		.type	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState, %function
 1065              	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState:
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068              		@ link register save eliminated.
 1069 0000 0628     		cmp	r0, #6
 1070 0002 9ABF     		itte	ls
 1071 0004 024B     		ldrls	r3, .L162
 1072 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 1073 000a 0248     		ldrhi	r0, .L162+4
 1074 000c 7047     		bx	lr
 1075              	.L163:
 1076 000e 00BF     		.align	2
 1077              	.L162:
 1078 0010 00000000 		.word	.LANCHOR2
 1079 0014 00000000 		.word	.LC1
 1080              		.size	_ZN13WiFiInterface18TranslateWiFiStateE9WiFiState, .-_ZN13WiFiInterface18TranslateWiFiStateE
 1081              		.section	.text._ZN13WiFiInterface19EspRequestsTransferEv,"ax",%progbits
 1082              		.align	1
 1083              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 20


 1084              		.global	_ZN13WiFiInterface19EspRequestsTransferEv
 1085              		.syntax unified
 1086              		.thumb
 1087              		.thumb_func
 1088              		.fpu fpv4-sp-d16
 1089              		.type	_ZN13WiFiInterface19EspRequestsTransferEv, %function
 1090              	_ZN13WiFiInterface19EspRequestsTransferEv:
 1091              		@ args = 0, pretend = 0, frame = 0
 1092              		@ frame_needed = 0, uses_anonymous_args = 0
 1093              		@ link register save eliminated.
 1094 0000 0123     		movs	r3, #1
 1095 0002 80F8B330 		strb	r3, [r0, #179]
 1096 0006 5F20     		movs	r0, #95
 1097 0008 FFF7FEBF 		b	_Z15detachInterruptm
 1098              		.size	_ZN13WiFiInterface19EspRequestsTransferEv, .-_ZN13WiFiInterface19EspRequestsTransferEv
 1099              		.section	.text._ZN13WiFiInterface16TerminateSocketsEv,"ax",%progbits
 1100              		.align	1
 1101              		.p2align 2,,3
 1102              		.global	_ZN13WiFiInterface16TerminateSocketsEv
 1103              		.syntax unified
 1104              		.thumb
 1105              		.thumb_func
 1106              		.fpu fpv4-sp-d16
 1107              		.type	_ZN13WiFiInterface16TerminateSocketsEv, %function
 1108              	_ZN13WiFiInterface16TerminateSocketsEv:
 1109              		@ args = 0, pretend = 0, frame = 0
 1110              		@ frame_needed = 0, uses_anonymous_args = 0
 1111 0000 38B5     		push	{r3, r4, r5, lr}
 1112 0002 00F17C04 		add	r4, r0, #124
 1113 0006 00F19C05 		add	r5, r0, #156
 1114              	.L166:
 1115 000a 54F8040B 		ldr	r0, [r4], #4
 1116 000e 0368     		ldr	r3, [r0]
 1117 0010 9B68     		ldr	r3, [r3, #8]
 1118 0012 9847     		blx	r3
 1119 0014 AC42     		cmp	r4, r5
 1120 0016 F8D1     		bne	.L166
 1121 0018 38BD     		pop	{r3, r4, r5, pc}
 1122              		.size	_ZN13WiFiInterface16TerminateSocketsEv, .-_ZN13WiFiInterface16TerminateSocketsEv
 1123 001a 00BF     		.section	.text._ZN13WiFiInterface16TerminateSocketsEt,"ax",%progbits
 1124              		.align	1
 1125              		.p2align 2,,3
 1126              		.global	_ZN13WiFiInterface16TerminateSocketsEt
 1127              		.syntax unified
 1128              		.thumb
 1129              		.thumb_func
 1130              		.fpu fpv4-sp-d16
 1131              		.type	_ZN13WiFiInterface16TerminateSocketsEt, %function
 1132              	_ZN13WiFiInterface16TerminateSocketsEt:
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135 0000 70B5     		push	{r4, r5, r6, lr}
 1136 0002 0E46     		mov	r6, r1
 1137 0004 00F17804 		add	r4, r0, #120
 1138 0008 00F19805 		add	r5, r0, #152
 1139 000c 01E0     		b	.L171
 1140              	.L170:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 21


 1141 000e AC42     		cmp	r4, r5
 1142 0010 09D0     		beq	.L174
 1143              	.L171:
 1144 0012 54F8040F 		ldr	r0, [r4, #4]!
 1145 0016 0389     		ldrh	r3, [r0, #8]
 1146 0018 B342     		cmp	r3, r6
 1147 001a F8D1     		bne	.L170
 1148 001c 0368     		ldr	r3, [r0]
 1149 001e 9B68     		ldr	r3, [r3, #8]
 1150 0020 9847     		blx	r3
 1151 0022 AC42     		cmp	r4, r5
 1152 0024 F5D1     		bne	.L171
 1153              	.L174:
 1154 0026 70BD     		pop	{r4, r5, r6, pc}
 1155              		.size	_ZN13WiFiInterface16TerminateSocketsEt, .-_ZN13WiFiInterface16TerminateSocketsEt
 1156              		.section	.text._ZN13WiFiInterface18UpdateSocketStatusEtt,"ax",%progbits
 1157              		.align	1
 1158              		.p2align 2,,3
 1159              		.global	_ZN13WiFiInterface18UpdateSocketStatusEtt
 1160              		.syntax unified
 1161              		.thumb
 1162              		.thumb_func
 1163              		.fpu fpv4-sp-d16
 1164              		.type	_ZN13WiFiInterface18UpdateSocketStatusEtt, %function
 1165              	_ZN13WiFiInterface18UpdateSocketStatusEtt:
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168              		@ link register save eliminated.
 1169 0000 30B4     		push	{r4, r5}
 1170 0002 0A43     		orrs	r2, r2, r1
 1171 0004 7C30     		adds	r0, r0, #124
 1172 0006 0023     		movs	r3, #0
 1173 0008 0125     		movs	r5, #1
 1174              	.L177:
 1175 000a 22FA03F4 		lsr	r4, r2, r3
 1176 000e 14F0010F 		tst	r4, #1
 1177 0012 18BF     		it	ne
 1178 0014 0168     		ldrne	r1, [r0]
 1179 0016 03F10103 		add	r3, r3, #1
 1180 001a 18BF     		it	ne
 1181 001c 81F82450 		strbne	r5, [r1, #36]
 1182 0020 082B     		cmp	r3, #8
 1183 0022 00F10400 		add	r0, r0, #4
 1184 0026 F0D1     		bne	.L177
 1185 0028 30BC     		pop	{r4, r5}
 1186 002a 7047     		bx	lr
 1187              		.size	_ZN13WiFiInterface18UpdateSocketStatusEtt, .-_ZN13WiFiInterface18UpdateSocketStatusEtt
 1188              		.section	.text._ZN13WiFiInterface8SetupSpiEv,"ax",%progbits
 1189              		.align	1
 1190              		.p2align 2,,3
 1191              		.global	_ZN13WiFiInterface8SetupSpiEv
 1192              		.syntax unified
 1193              		.thumb
 1194              		.thumb_func
 1195              		.fpu fpv4-sp-d16
 1196              		.type	_ZN13WiFiInterface8SetupSpiEv, %function
 1197              	_ZN13WiFiInterface8SetupSpiEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 22


 1198              		@ args = 0, pretend = 0, frame = 0
 1199              		@ frame_needed = 0, uses_anonymous_args = 0
 1200 0000 70B5     		push	{r4, r5, r6, lr}
 1201 0002 244C     		ldr	r4, .L185
 1202 0004 244D     		ldr	r5, .L185+4
 1203 0006 254E     		ldr	r6, .L185+8
 1204 0008 1420     		movs	r0, #20
 1205 000a FFF7FEFF 		bl	pmc_enable_periph_clk
 1206 000e 2046     		mov	r0, r4
 1207 0010 FFF7FEFF 		bl	dmac_init
 1208 0014 1021     		movs	r1, #16
 1209 0016 2046     		mov	r0, r4
 1210 0018 FFF7FEFF 		bl	dmac_set_priority_mode
 1211 001c 2046     		mov	r0, r4
 1212 001e FFF7FEFF 		bl	dmac_enable
 1213 0022 4FF48031 		mov	r1, #65536
 1214 0026 0020     		movs	r0, #0
 1215 0028 FFF7FEFF 		bl	matrix_set_slave_default_master_type
 1216 002c 4FF44031 		mov	r1, #196608
 1217 0030 0020     		movs	r0, #0
 1218 0032 FFF7FEFF 		bl	matrix_set_slave_priority
 1219 0036 0821     		movs	r1, #8
 1220 0038 0020     		movs	r0, #0
 1221 003a FFF7FEFF 		bl	matrix_set_slave_slot_cycle
 1222 003e 2846     		mov	r0, r5
 1223 0040 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1224 0044 A5F11C00 		sub	r0, r5, #28
 1225 0048 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1226 004c A5F13800 		sub	r0, r5, #56
 1227 0050 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1228 0054 A5F15400 		sub	r0, r5, #84
 1229 0058 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 1230 005c 8025     		movs	r5, #128
 1231 005e 1320     		movs	r0, #19
 1232 0060 FFF7FEFF 		bl	pmc_enable_periph_clk
 1233 0064 FFF7FEFF 		bl	_ZL15spi_dma_disablev
 1234 0068 2046     		mov	r0, r4
 1235 006a 0D4A     		ldr	r2, .L185+12
 1236 006c 3560     		str	r5, [r6]
 1237 006e 0221     		movs	r1, #2
 1238 0070 FFF7FEFF 		bl	dmac_channel_set_configuration
 1239 0074 0B4A     		ldr	r2, .L185+16
 1240 0076 0121     		movs	r1, #1
 1241 0078 2046     		mov	r0, r4
 1242 007a FFF7FEFF 		bl	dmac_channel_set_configuration
 1243 007e 0A4B     		ldr	r3, .L185+20
 1244 0080 3269     		ldr	r2, [r6, #16]
 1245 0082 4FF48071 		mov	r1, #256
 1246 0086 4FF40022 		mov	r2, #524288
 1247 008a B161     		str	r1, [r6, #24]
 1248 008c 83F81353 		strb	r5, [r3, #787]
 1249 0090 1A60     		str	r2, [r3]
 1250 0092 70BD     		pop	{r4, r5, r6, pc}
 1251              	.L186:
 1252              		.align	2
 1253              	.L185:
 1254 0094 00000C40 		.word	1074528256
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 23


 1255 0098 88010000 		.word	g_APinDescription+392
 1256 009c 00800840 		.word	1074298880
 1257 00a0 02020120 		.word	536936962
 1258 00a4 10200120 		.word	536944656
 1259 00a8 00E100E0 		.word	-536813312
 1260              		.size	_ZN13WiFiInterface8SetupSpiEv, .-_ZN13WiFiInterface8SetupSpiEv
 1261              		.section	.text._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj,"ax",%progbits
 1262              		.align	1
 1263              		.p2align 2,,3
 1264              		.global	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1265              		.syntax unified
 1266              		.thumb
 1267              		.thumb_func
 1268              		.fpu fpv4-sp-d16
 1269              		.type	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj, %function
 1270              	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj:
 1271              		@ args = 16, pretend = 0, frame = 0
 1272              		@ frame_needed = 0, uses_anonymous_args = 0
 1273 0000 10B5     		push	{r4, lr}
 1274 0002 D0F8AC40 		ldr	r4, [r0, #172]
 1275 0006 6CB9     		cbnz	r4, .L188
 1276 0008 084B     		ldr	r3, .L194
 1277 000a D3F80831 		ldr	r3, [r3, #264]
 1278 000e 9B07     		lsls	r3, r3, #30
 1279 0010 02D4     		bmi	.L193
 1280 0012 6FF00500 		mvn	r0, #5
 1281 0016 10BD     		pop	{r4, pc}
 1282              	.L193:
 1283 0018 0548     		ldr	r0, .L194+4
 1284 001a FFF7FEFF 		bl	debugPrintf
 1285 001e 6FF00500 		mvn	r0, #5
 1286 0022 10BD     		pop	{r4, pc}
 1287              	.L188:
 1288 0024 BDE81040 		pop	{r4, lr}
 1289 0028 FFF7FEBF 		b	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17
 1290              	.L195:
 1291              		.align	2
 1292              	.L194:
 1293 002c 00000000 		.word	reprap
 1294 0030 00000000 		.word	.LC18
 1295              		.size	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj, .-_ZN13WiFiInterface11SendCommand
 1296              		.section	.text._ZN13WiFiInterface14UpdateHostnameEPKc,"ax",%progbits
 1297              		.align	1
 1298              		.p2align 2,,3
 1299              		.global	_ZN13WiFiInterface14UpdateHostnameEPKc
 1300              		.syntax unified
 1301              		.thumb
 1302              		.thumb_func
 1303              		.fpu fpv4-sp-d16
 1304              		.type	_ZN13WiFiInterface14UpdateHostnameEPKc, %function
 1305              	_ZN13WiFiInterface14UpdateHostnameEPKc:
 1306              		@ args = 0, pretend = 0, frame = 0
 1307              		@ frame_needed = 0, uses_anonymous_args = 0
 1308 0000 D0F8AC20 		ldr	r2, [r0, #172]
 1309 0004 032A     		cmp	r2, #3
 1310 0006 00D0     		beq	.L207
 1311 0008 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 24


 1312              	.L207:
 1313 000a 30B5     		push	{r4, r5, lr}
 1314 000c 85B0     		sub	sp, sp, #20
 1315 000e 0023     		movs	r3, #0
 1316 0010 4025     		movs	r5, #64
 1317 0012 0091     		str	r1, [sp]
 1318 0014 CDE90233 		strd	r3, r3, [sp, #8]
 1319 0018 1A46     		mov	r2, r3
 1320 001a 0195     		str	r5, [sp, #4]
 1321 001c 1221     		movs	r1, #18
 1322 001e 0446     		mov	r4, r0
 1323 0020 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1324 0024 08B9     		cbnz	r0, .L208
 1325 0026 05B0     		add	sp, sp, #20
 1326              		@ sp needed
 1327 0028 30BD     		pop	{r4, r5, pc}
 1328              	.L208:
 1329 002a 206F     		ldr	r0, [r4, #112]
 1330 002c 034A     		ldr	r2, .L209
 1331 002e 3521     		movs	r1, #53
 1332 0030 05B0     		add	sp, sp, #20
 1333              		@ sp needed
 1334 0032 BDE83040 		pop	{r4, r5, lr}
 1335 0036 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1336              	.L210:
 1337 003a 00BF     		.align	2
 1338              	.L209:
 1339 003c 00000000 		.word	.LC19
 1340              		.size	_ZN13WiFiInterface14UpdateHostnameEPKc, .-_ZN13WiFiInterface14UpdateHostnameEPKc
 1341              		.section	.text._ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer,"ax"
 1342              		.align	1
 1343              		.p2align 2,,3
 1344              		.global	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 1345              		.syntax unified
 1346              		.thumb
 1347              		.thumb_func
 1348              		.fpu fpv4-sp-d16
 1349              		.type	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, %function
 1350              	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer:
 1351              		@ args = 4, pretend = 0, frame = 1128
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1354 0004 B1F5137F 		cmp	r1, #588
 1355 0008 ADF27C4D 		subw	sp, sp, #1148
 1356 000c 8046     		mov	r8, r0
 1357 000e 1446     		mov	r4, r2
 1358 0010 1F46     		mov	r7, r3
 1359 0012 00F0A080 		beq	.L213
 1360 0016 40F24D23 		movw	r3, #589
 1361 001a 9942     		cmp	r1, r3
 1362 001c 64D0     		beq	.L214
 1363 001e 40F24B23 		movw	r3, #587
 1364 0022 9942     		cmp	r1, r3
 1365 0024 04D0     		beq	.L311
 1366              	.L305:
 1367 0026 0220     		movs	r0, #2
 1368              	.L306:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 25


 1369 0028 0DF27C4D 		addw	sp, sp, #1148
 1370              		@ sp needed
 1371 002c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1372              	.L311:
 1373 0030 5321     		movs	r1, #83
 1374 0032 1046     		mov	r0, r2
 1375 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1376 0038 0646     		mov	r6, r0
 1377 003a 0028     		cmp	r0, #0
 1378 003c 40F02F81 		bne	.L312
 1379 0040 4FF47C73 		mov	r3, #1008
 1380 0044 22AC     		add	r4, sp, #136
 1381 0046 CDE90000 		strd	r0, r0, [sp]
 1382 004a CDE90243 		strd	r4, r3, [sp, #8]
 1383 004e 4046     		mov	r0, r8
 1384 0050 3346     		mov	r3, r6
 1385 0052 3246     		mov	r2, r6
 1386 0054 1521     		movs	r1, #21
 1387 0056 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1388 005a B0F10008 		subs	r8, r0, #0
 1389 005e C0F2BF81 		blt	.L229
 1390 0062 DDF8A034 		ldr	r3, [sp, #1184]
 1391 0066 DFF80CA4 		ldr	r10, .L319+48
 1392 006a 1D68     		ldr	r5, [r3]
 1393 006c DFF808B4 		ldr	fp, .L319+52
 1394 0070 C4F16009 		rsb	r9, r4, #96
 1395 0074 1CE0     		b	.L230
 1396              	.L233:
 1397 0076 216B     		ldr	r1, [r4, #48]
 1398 0078 84F85F60 		strb	r6, [r4, #95]
 1399 007c 04A8     		add	r0, sp, #16
 1400 007e FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1401 0082 616B     		ldr	r1, [r4, #52]
 1402 0084 08A8     		add	r0, sp, #32
 1403 0086 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1404 008a A16B     		ldr	r1, [r4, #56]
 1405 008c 11A8     		add	r0, sp, #68
 1406 008e FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1407 0092 11AB     		add	r3, sp, #68
 1408 0094 0193     		str	r3, [sp, #4]
 1409 0096 08AB     		add	r3, sp, #32
 1410 0098 0093     		str	r3, [sp]
 1411 009a 2846     		mov	r0, r5
 1412 009c 04AB     		add	r3, sp, #16
 1413 009e 04F14002 		add	r2, r4, #64
 1414 00a2 5146     		mov	r1, r10
 1415 00a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1416 00a8 DDF8A034 		ldr	r3, [sp, #1184]
 1417 00ac 1D68     		ldr	r5, [r3]
 1418              	.L232:
 1419 00ae 3034     		adds	r4, r4, #48
 1420              	.L230:
 1421 00b0 09EB0403 		add	r3, r9, r4
 1422 00b4 4345     		cmp	r3, r8
 1423 00b6 00F21681 		bhi	.L231
 1424 00ba 94F84030 		ldrb	r3, [r4, #64]	@ zero_extendqisi2
 1425 00be 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 26


 1426 00c0 F5D0     		beq	.L232
 1427 00c2 002D     		cmp	r5, #0
 1428 00c4 D7D1     		bne	.L233
 1429 00c6 DDF8A004 		ldr	r0, [sp, #1184]
 1430 00ca FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1431 00ce 0028     		cmp	r0, #0
 1432 00d0 00F09C81 		beq	.L262
 1433 00d4 DDF8A034 		ldr	r3, [sp, #1184]
 1434 00d8 5946     		mov	r1, fp
 1435 00da 1868     		ldr	r0, [r3]
 1436 00dc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1437 00e0 DDF8A034 		ldr	r3, [sp, #1184]
 1438 00e4 1D68     		ldr	r5, [r3]
 1439 00e6 C6E7     		b	.L233
 1440              	.L214:
 1441 00e8 5321     		movs	r1, #83
 1442 00ea 1046     		mov	r0, r2
 1443 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1444 00f0 0546     		mov	r5, r0
 1445 00f2 0028     		cmp	r0, #0
 1446 00f4 5CD1     		bne	.L313
 1447 00f6 3023     		movs	r3, #48
 1448 00f8 22AC     		add	r4, sp, #136
 1449 00fa CDE90000 		strd	r0, r0, [sp]
 1450 00fe CDE90243 		strd	r4, r3, [sp, #8]
 1451 0102 4046     		mov	r0, r8
 1452 0104 2B46     		mov	r3, r5
 1453 0106 2A46     		mov	r2, r5
 1454 0108 1521     		movs	r1, #21
 1455 010a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1456 010e 0028     		cmp	r0, #0
 1457 0110 C0F26C81 		blt	.L255
 1458 0114 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1459 0116 002B     		cmp	r3, #0
 1460 0118 00F05D81 		beq	.L314
 1461 011c 2168     		ldr	r1, [r4]
 1462 011e 84F82F50 		strb	r5, [r4, #47]
 1463 0122 04A8     		add	r0, sp, #16
 1464 0124 08AD     		add	r5, sp, #32
 1465 0126 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1466 012a 11AE     		add	r6, sp, #68
 1467 012c 6168     		ldr	r1, [r4, #4]
 1468 012e 2846     		mov	r0, r5
 1469 0130 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1470 0134 A168     		ldr	r1, [r4, #8]
 1471 0136 3046     		mov	r0, r6
 1472 0138 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1473 013c CDE90056 		strd	r5, r6, [sp]
 1474 0140 04AB     		add	r3, sp, #16
 1475 0142 3846     		mov	r0, r7
 1476 0144 26AA     		add	r2, sp, #152
 1477 0146 BF49     		ldr	r1, .L319
 1478 0148 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1479              	.L310:
 1480 014c 0120     		movs	r0, #1
 1481 014e 0DF27C4D 		addw	sp, sp, #1148
 1482              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 27


 1483 0152 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1484              	.L213:
 1485 0156 5321     		movs	r1, #83
 1486 0158 1046     		mov	r0, r2
 1487 015a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1488 015e 0028     		cmp	r0, #0
 1489 0160 00F0B880 		beq	.L235
 1490 0164 22AD     		add	r5, sp, #136
 1491 0166 0026     		movs	r6, #0
 1492 0168 2123     		movs	r3, #33
 1493 016a 2046     		mov	r0, r4
 1494 016c 11A9     		add	r1, sp, #68
 1495 016e 2E70     		strb	r6, [r5]
 1496 0170 CDE91153 		strd	r5, r3, [sp, #68]
 1497 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1498 0178 0028     		cmp	r0, #0
 1499 017a 00F0AB80 		beq	.L235
 1500 017e B249     		ldr	r1, .L319+4
 1501 0180 2846     		mov	r0, r5
 1502 0182 FFF7FEFF 		bl	strcmp
 1503 0186 0346     		mov	r3, r0
 1504 0188 0028     		cmp	r0, #0
 1505 018a 40F0B580 		bne	.L237
 1506 018e CDE90200 		strd	r0, r0, [sp, #8]
 1507 0192 CDE90000 		strd	r0, r0, [sp]
 1508 0196 1A46     		mov	r2, r3
 1509 0198 4046     		mov	r0, r8
 1510 019a 1121     		movs	r1, #17
 1511 019c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1512 01a0 0028     		cmp	r0, #0
 1513 01a2 D3D0     		beq	.L310
 1514 01a4 3846     		mov	r0, r7
 1515 01a6 A949     		ldr	r1, .L319+8
 1516 01a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1517 01ac 0220     		movs	r0, #2
 1518 01ae 3BE7     		b	.L306
 1519              	.L313:
 1520 01b0 22AE     		add	r6, sp, #136
 1521 01b2 0021     		movs	r1, #0
 1522 01b4 0DF12009 		add	r9, sp, #32
 1523 01b8 11AD     		add	r5, sp, #68
 1524 01ba 3046     		mov	r0, r6
 1525 01bc 7022     		movs	r2, #112
 1526 01be FFF7FEFF 		bl	memset
 1527 01c2 4FF0000A 		mov	r10, #0
 1528 01c6 2123     		movs	r3, #33
 1529 01c8 2946     		mov	r1, r5
 1530 01ca 2046     		mov	r0, r4
 1531 01cc 89F800A0 		strb	r10, [r9]
 1532 01d0 C5E90093 		strd	r9, r3, [r5]
 1533 01d4 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1534 01d8 0028     		cmp	r0, #0
 1535 01da 76D0     		beq	.L246
 1536 01dc 9A49     		ldr	r1, .L319+4
 1537 01de 4846     		mov	r0, r9
 1538 01e0 FFF7FEFF 		bl	strcmp
 1539 01e4 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 28


 1540 01e6 00F0A580 		beq	.L315
 1541 01ea 4946     		mov	r1, r9
 1542 01ec 26A8     		add	r0, sp, #152
 1543 01ee 2022     		movs	r2, #32
 1544 01f0 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1545 01f4 5021     		movs	r1, #80
 1546 01f6 2046     		mov	r0, r4
 1547 01f8 85F800A0 		strb	r10, [r5]
 1548 01fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1549 0200 0028     		cmp	r0, #0
 1550 0202 62D0     		beq	.L246
 1551 0204 4123     		movs	r3, #65
 1552 0206 04A9     		add	r1, sp, #16
 1553 0208 2046     		mov	r0, r4
 1554 020a CDE90453 		strd	r5, r3, [sp, #16]
 1555 020e FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1556 0212 0028     		cmp	r0, #0
 1557 0214 59D0     		beq	.L246
 1558 0216 2EA8     		add	r0, sp, #184
 1559 0218 4022     		movs	r2, #64
 1560 021a 2946     		mov	r1, r5
 1561 021c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1562 0220 4021     		movs	r1, #64
 1563 0222 2846     		mov	r0, r5
 1564 0224 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1565 0228 0728     		cmp	r0, #7
 1566 022a 06D8     		bhi	.L251
 1567 022c 4021     		movs	r1, #64
 1568 022e 2846     		mov	r0, r5
 1569 0230 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1570 0234 0028     		cmp	r0, #0
 1571 0236 40F0FF80 		bne	.L309
 1572              	.L251:
 1573 023a 2946     		mov	r1, r5
 1574 023c 2EA8     		add	r0, sp, #184
 1575 023e 4022     		movs	r2, #64
 1576 0240 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1577 0244 4921     		movs	r1, #73
 1578 0246 2046     		mov	r0, r4
 1579 0248 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1580 024c 0028     		cmp	r0, #0
 1581 024e 3CD0     		beq	.L246
 1582 0250 0023     		movs	r3, #0
 1583 0252 04A9     		add	r1, sp, #16
 1584 0254 2046     		mov	r0, r4
 1585 0256 0493     		str	r3, [sp, #16]
 1586 0258 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1587 025c 049B     		ldr	r3, [sp, #16]
 1588 025e 3360     		str	r3, [r6]
 1589 0260 0546     		mov	r5, r0
 1590 0262 4321     		movs	r1, #67
 1591 0264 2046     		mov	r0, r4
 1592 0266 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1593 026a 18B1     		cbz	r0, .L253
 1594 026c 2046     		mov	r0, r4
 1595 026e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1596 0272 C0B2     		uxtb	r0, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 29


 1597              	.L253:
 1598 0274 3073     		strb	r0, [r6, #12]
 1599 0276 45B3     		cbz	r5, .L246
 1600              	.L244:
 1601 0278 0023     		movs	r3, #0
 1602 027a 7021     		movs	r1, #112
 1603 027c 0191     		str	r1, [sp, #4]
 1604 027e 0096     		str	r6, [sp]
 1605 0280 4046     		mov	r0, r8
 1606 0282 CDE90233 		strd	r3, r3, [sp, #8]
 1607 0286 1A46     		mov	r2, r3
 1608 0288 0D21     		movs	r1, #13
 1609 028a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1610 028e 0028     		cmp	r0, #0
 1611 0290 3FF45CAF 		beq	.L310
 1612 0294 3846     		mov	r0, r7
 1613 0296 6E49     		ldr	r1, .L319+12
 1614 0298 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1615 029c C3E6     		b	.L305
 1616              	.L312:
 1617 029e 22AE     		add	r6, sp, #136
 1618 02a0 0021     		movs	r1, #0
 1619 02a2 0DF12009 		add	r9, sp, #32
 1620 02a6 11AD     		add	r5, sp, #68
 1621 02a8 3046     		mov	r0, r6
 1622 02aa 7022     		movs	r2, #112
 1623 02ac FFF7FEFF 		bl	memset
 1624 02b0 4FF0000A 		mov	r10, #0
 1625 02b4 2123     		movs	r3, #33
 1626 02b6 2946     		mov	r1, r5
 1627 02b8 2046     		mov	r0, r4
 1628 02ba 89F800A0 		strb	r10, [r9]
 1629 02be C5E90093 		strd	r9, r3, [r5]
 1630 02c2 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1631 02c6 0028     		cmp	r0, #0
 1632 02c8 3AD1     		bne	.L316
 1633              	.L246:
 1634 02ca 3846     		mov	r0, r7
 1635 02cc 6149     		ldr	r1, .L319+16
 1636 02ce FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1637 02d2 A8E6     		b	.L305
 1638              	.L235:
 1639 02d4 3846     		mov	r0, r7
 1640 02d6 5F49     		ldr	r1, .L319+16
 1641 02d8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1642 02dc 0220     		movs	r0, #2
 1643 02de 0DF27C4D 		addw	sp, sp, #1148
 1644              		@ sp needed
 1645 02e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1646              	.L231:
 1647 02e6 002D     		cmp	r5, #0
 1648 02e8 7FF430AF 		bne	.L310
 1649 02ec 3846     		mov	r0, r7
 1650 02ee 5A49     		ldr	r1, .L319+20
 1651 02f0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1652 02f4 0120     		movs	r0, #1
 1653 02f6 97E6     		b	.L306
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 30


 1654              	.L237:
 1655 02f8 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1656 02fa 11AC     		add	r4, sp, #68
 1657 02fc 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1658 02fe 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1659 0302 4FF0200C 		mov	ip, #32
 1660 0306 11AD     		add	r5, sp, #68
 1661 0308 CDE90266 		strd	r6, r6, [sp, #8]
 1662 030c 0095     		str	r5, [sp]
 1663 030e 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1664 0312 CDF804C0 		str	ip, [sp, #4]
 1665 0316 4046     		mov	r0, r8
 1666 0318 3346     		mov	r3, r6
 1667 031a 3246     		mov	r2, r6
 1668 031c 0B21     		movs	r1, #11
 1669 031e FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1670 0322 0028     		cmp	r0, #0
 1671 0324 3FF412AF 		beq	.L310
 1672 0328 3846     		mov	r0, r7
 1673 032a 4C49     		ldr	r1, .L319+24
 1674 032c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1675 0330 0220     		movs	r0, #2
 1676 0332 79E6     		b	.L306
 1677              	.L315:
 1678 0334 7022     		movs	r2, #112
 1679 0336 FF21     		movs	r1, #255
 1680 0338 3046     		mov	r0, r6
 1681 033a FFF7FEFF 		bl	memset
 1682 033e 9BE7     		b	.L244
 1683              	.L316:
 1684 0340 4946     		mov	r1, r9
 1685 0342 26A8     		add	r0, sp, #152
 1686 0344 2022     		movs	r2, #32
 1687 0346 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1688 034a 5021     		movs	r1, #80
 1689 034c 2046     		mov	r0, r4
 1690 034e 85F800A0 		strb	r10, [r5]
 1691 0352 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1692 0356 0028     		cmp	r0, #0
 1693 0358 B7D0     		beq	.L246
 1694 035a 4123     		movs	r3, #65
 1695 035c 04A9     		add	r1, sp, #16
 1696 035e 2046     		mov	r0, r4
 1697 0360 CDE90453 		strd	r5, r3, [sp, #16]
 1698 0364 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 1699 0368 0028     		cmp	r0, #0
 1700 036a AED0     		beq	.L246
 1701 036c 4021     		movs	r1, #64
 1702 036e 2846     		mov	r0, r5
 1703 0370 FFF7FEFF 		bl	_Z7StrnlenPKcj
 1704 0374 0728     		cmp	r0, #7
 1705 0376 05D8     		bhi	.L223
 1706 0378 4021     		movs	r1, #64
 1707 037a 2846     		mov	r0, r5
 1708 037c FFF7FEFF 		bl	_Z7StrnlenPKcj
 1709 0380 0028     		cmp	r0, #0
 1710 0382 59D1     		bne	.L309
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 31


 1711              	.L223:
 1712 0384 2946     		mov	r1, r5
 1713 0386 2EA8     		add	r0, sp, #184
 1714 0388 4022     		movs	r2, #64
 1715 038a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 1716 038e 4921     		movs	r1, #73
 1717 0390 2046     		mov	r0, r4
 1718 0392 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1719 0396 0028     		cmp	r0, #0
 1720 0398 45D1     		bne	.L317
 1721              	.L221:
 1722 039a 4A21     		movs	r1, #74
 1723 039c 2046     		mov	r0, r4
 1724 039e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1725 03a2 0028     		cmp	r0, #0
 1726 03a4 34D1     		bne	.L318
 1727              	.L259:
 1728 03a6 4B21     		movs	r1, #75
 1729 03a8 2046     		mov	r0, r4
 1730 03aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1731 03ae 10BB     		cbnz	r0, .L225
 1732              	.L227:
 1733 03b0 0023     		movs	r3, #0
 1734 03b2 7021     		movs	r1, #112
 1735 03b4 0191     		str	r1, [sp, #4]
 1736 03b6 0096     		str	r6, [sp]
 1737 03b8 4046     		mov	r0, r8
 1738 03ba CDE90233 		strd	r3, r3, [sp, #8]
 1739 03be 1A46     		mov	r2, r3
 1740 03c0 0A21     		movs	r1, #10
 1741 03c2 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1742 03c6 0028     		cmp	r0, #0
 1743 03c8 3FF4C0AE 		beq	.L310
 1744 03cc 3846     		mov	r0, r7
 1745 03ce 2449     		ldr	r1, .L319+28
 1746 03d0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1747 03d4 27E6     		b	.L305
 1748              	.L314:
 1749 03d6 3846     		mov	r0, r7
 1750 03d8 2249     		ldr	r1, .L319+32
 1751 03da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1752 03de 22E6     		b	.L305
 1753              	.L229:
 1754 03e0 3846     		mov	r0, r7
 1755 03e2 2149     		ldr	r1, .L319+36
 1756 03e4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1757 03e8 0220     		movs	r0, #2
 1758 03ea 1DE6     		b	.L306
 1759              	.L255:
 1760 03ec 3846     		mov	r0, r7
 1761 03ee 1F49     		ldr	r1, .L319+40
 1762 03f0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1763 03f4 17E6     		b	.L305
 1764              	.L225:
 1765 03f6 0023     		movs	r3, #0
 1766 03f8 2046     		mov	r0, r4
 1767 03fa 2946     		mov	r1, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 32


 1768 03fc 2B60     		str	r3, [r5]
 1769 03fe FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1770 0402 2B68     		ldr	r3, [r5]
 1771 0404 B360     		str	r3, [r6, #8]
 1772 0406 0028     		cmp	r0, #0
 1773 0408 D2D1     		bne	.L227
 1774 040a 5EE7     		b	.L246
 1775              	.L262:
 1776 040c 2846     		mov	r0, r5
 1777 040e 0BE6     		b	.L306
 1778              	.L318:
 1779 0410 0023     		movs	r3, #0
 1780 0412 2946     		mov	r1, r5
 1781 0414 2046     		mov	r0, r4
 1782 0416 2B60     		str	r3, [r5]
 1783 0418 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1784 041c 2B68     		ldr	r3, [r5]
 1785 041e 7360     		str	r3, [r6, #4]
 1786 0420 0028     		cmp	r0, #0
 1787 0422 C0D1     		bne	.L259
 1788 0424 51E7     		b	.L246
 1789              	.L317:
 1790 0426 0023     		movs	r3, #0
 1791 0428 2946     		mov	r1, r5
 1792 042a 2046     		mov	r0, r4
 1793 042c 2B60     		str	r3, [r5]
 1794 042e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetIPAddressER9IPAddress
 1795 0432 2B68     		ldr	r3, [r5]
 1796 0434 3360     		str	r3, [r6]
 1797 0436 B0E7     		b	.L221
 1798              	.L309:
 1799 0438 3846     		mov	r0, r7
 1800 043a 0D49     		ldr	r1, .L319+44
 1801 043c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1802 0440 0220     		movs	r0, #2
 1803 0442 F1E5     		b	.L306
 1804              	.L320:
 1805              		.align	2
 1806              	.L319:
 1807 0444 80010000 		.word	.LC32
 1808 0448 D8000000 		.word	.LC27
 1809 044c DC000000 		.word	.LC28
 1810 0450 3C010000 		.word	.LC30
 1811 0454 54000000 		.word	.LC22
 1812 0458 A0000000 		.word	.LC25
 1813 045c 10010000 		.word	.LC29
 1814 0460 2C000000 		.word	.LC21
 1815 0464 68010000 		.word	.LC31
 1816 0468 B8000000 		.word	.LC26
 1817 046c A0010000 		.word	.LC33
 1818 0470 00000000 		.word	.LC20
 1819 0474 88000000 		.word	.LC24
 1820 0478 70000000 		.word	.LC23
 1821              		.size	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, .-_ZN13WiFiI
 1822              		.global	__aeabi_f2d
 1823              		.section	.text._ZN13WiFiInterface11DiagnosticsE11MessageType,"ax",%progbits
 1824              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 33


 1825              		.p2align 2,,3
 1826              		.global	_ZN13WiFiInterface11DiagnosticsE11MessageType
 1827              		.syntax unified
 1828              		.thumb
 1829              		.thumb_func
 1830              		.fpu fpv4-sp-d16
 1831              		.type	_ZN13WiFiInterface11DiagnosticsE11MessageType, %function
 1832              	_ZN13WiFiInterface11DiagnosticsE11MessageType:
 1833              		@ args = 0, pretend = 0, frame = 160
 1834              		@ frame_needed = 0, uses_anonymous_args = 0
 1835 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1836 0004 0446     		mov	r4, r0
 1837 0006 AEB0     		sub	sp, sp, #184
 1838 0008 774A     		ldr	r2, .L352
 1839 000a 006F     		ldr	r0, [r0, #112]
 1840 000c 0E46     		mov	r6, r1
 1841 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1842 0012 D4F8AC30 		ldr	r3, [r4, #172]
 1843 0016 206F     		ldr	r0, [r4, #112]
 1844 0018 042B     		cmp	r3, #4
 1845 001a 96BF     		itet	ls
 1846 001c 734A     		ldrls	r2, .L352+4
 1847 001e 744B     		ldrhi	r3, .L352+8
 1848 0020 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1849 0024 734A     		ldr	r2, .L352+12
 1850 0026 3146     		mov	r1, r6
 1851 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1852 002c 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 1853 0030 206F     		ldr	r0, [r4, #112]
 1854 0032 062B     		cmp	r3, #6
 1855 0034 96BF     		itet	ls
 1856 0036 704A     		ldrls	r2, .L352+16
 1857 0038 704B     		ldrhi	r3, .L352+20
 1858 003a 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1859 003e 704A     		ldr	r2, .L352+24
 1860 0040 3146     		mov	r1, r6
 1861 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1862 0046 D4F81C11 		ldr	r1, [r4, #284]
 1863 004a D4F81821 		ldr	r2, [r4, #280]
 1864 004e D4F81431 		ldr	r3, [r4, #276]
 1865 0052 206F     		ldr	r0, [r4, #112]
 1866 0054 CDE90021 		strd	r2, r1, [sp]
 1867 0058 6A4A     		ldr	r2, .L352+28
 1868 005a 3146     		mov	r1, r6
 1869 005c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1870 0060 D4F8AC30 		ldr	r3, [r4, #172]
 1871 0064 022B     		cmp	r3, #2
 1872 0066 1DD8     		bhi	.L351
 1873              	.L324:
 1874 0068 674A     		ldr	r2, .L352+32
 1875 006a 206F     		ldr	r0, [r4, #112]
 1876 006c DFF8D881 		ldr	r8, .L352+96
 1877 0070 3146     		mov	r1, r6
 1878 0072 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1879 0076 04F17C05 		add	r5, r4, #124
 1880 007a 04F19C07 		add	r7, r4, #156
 1881              	.L333:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 34


 1882 007e 55F8043B 		ldr	r3, [r5], #4
 1883 0082 206F     		ldr	r0, [r4, #112]
 1884 0084 93F82330 		ldrb	r3, [r3, #35]	@ zero_extendqisi2
 1885 0088 4246     		mov	r2, r8
 1886 008a 3146     		mov	r1, r6
 1887 008c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1888 0090 BD42     		cmp	r5, r7
 1889 0092 F4D1     		bne	.L333
 1890 0094 3146     		mov	r1, r6
 1891 0096 206F     		ldr	r0, [r4, #112]
 1892 0098 5C4A     		ldr	r2, .L352+36
 1893 009a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1894 009e 2EB0     		add	sp, sp, #184
 1895              		@ sp needed
 1896 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1897              	.L351:
 1898 00a4 0025     		movs	r5, #0
 1899 00a6 8C22     		movs	r2, #140
 1900 00a8 0AAB     		add	r3, sp, #40
 1901 00aa CDE90232 		strd	r3, r2, [sp, #8]
 1902 00ae CDE90055 		strd	r5, r5, [sp]
 1903 00b2 2B46     		mov	r3, r5
 1904 00b4 2A46     		mov	r2, r5
 1905 00b6 0921     		movs	r1, #9
 1906 00b8 2046     		mov	r0, r4
 1907 00ba FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1908 00be A842     		cmp	r0, r5
 1909 00c0 7DDD     		ble	.L325
 1910 00c2 11AB     		add	r3, sp, #68
 1911 00c4 524A     		ldr	r2, .L352+40
 1912 00c6 206F     		ldr	r0, [r4, #112]
 1913 00c8 8DF85350 		strb	r5, [sp, #83]
 1914 00cc 3146     		mov	r1, r6
 1915 00ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1916 00d2 9DF84310 		ldrb	r1, [sp, #67]	@ zero_extendqisi2
 1917 00d6 206F     		ldr	r0, [r4, #112]
 1918 00d8 9DF84220 		ldrb	r2, [sp, #66]	@ zero_extendqisi2
 1919 00dc 9DF84150 		ldrb	r5, [sp, #65]	@ zero_extendqisi2
 1920 00e0 0491     		str	r1, [sp, #16]
 1921 00e2 9DF84010 		ldrb	r1, [sp, #64]	@ zero_extendqisi2
 1922 00e6 0392     		str	r2, [sp, #12]
 1923 00e8 9DF83F20 		ldrb	r2, [sp, #63]	@ zero_extendqisi2
 1924 00ec 9DF83E30 		ldrb	r3, [sp, #62]	@ zero_extendqisi2
 1925 00f0 0092     		str	r2, [sp]
 1926 00f2 CDE90115 		strd	r1, r5, [sp, #4]
 1927 00f6 474A     		ldr	r2, .L352+44
 1928 00f8 3146     		mov	r1, r6
 1929 00fa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1930 00fe BDF83C00 		ldrh	r0, [sp, #60]
 1931 0102 256F     		ldr	r5, [r4, #112]
 1932 0104 07EE900A 		vmov	s15, r0	@ int
 1933 0108 FBEECB7A 		vcvt.f32.u32	s15, s15, #10
 1934 010c 17EE900A 		vmov	r0, s15
 1935 0110 FFF7FEFF 		bl	__aeabi_f2d
 1936 0114 0C9B     		ldr	r3, [sp, #48]
 1937 0116 062B     		cmp	r3, #6
 1938 0118 96BF     		itet	ls
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 35


 1939 011a 3F4A     		ldrls	r2, .L352+48
 1940 011c 3F4B     		ldrhi	r3, .L352+52
 1941 011e 52F82330 		ldrls	r3, [r2, r3, lsl #2]
 1942 0122 0293     		str	r3, [sp, #8]
 1943 0124 CDE90001 		strd	r0, [sp]
 1944 0128 3D4A     		ldr	r2, .L352+56
 1945 012a 2846     		mov	r0, r5
 1946 012c 3146     		mov	r1, r6
 1947 012e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1948 0132 0B9A     		ldr	r2, [sp, #44]
 1949 0134 0D9B     		ldr	r3, [sp, #52]
 1950 0136 206F     		ldr	r0, [r4, #112]
 1951 0138 0092     		str	r2, [sp]
 1952 013a 3146     		mov	r1, r6
 1953 013c 394A     		ldr	r2, .L352+60
 1954 013e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1955 0142 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 1956 0146 042B     		cmp	r3, #4
 1957 0148 13D0     		beq	.L327
 1958 014a 022B     		cmp	r3, #2
 1959 014c 11D0     		beq	.L327
 1960              	.L328:
 1961 014e 0023     		movs	r3, #0
 1962 0150 CDE90233 		strd	r3, r3, [sp, #8]
 1963 0154 CDE90033 		strd	r3, r3, [sp]
 1964 0158 1A46     		mov	r2, r3
 1965 015a 1421     		movs	r1, #20
 1966 015c 2046     		mov	r0, r4
 1967 015e FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 1968 0162 0028     		cmp	r0, #0
 1969 0164 80D0     		beq	.L324
 1970 0166 304A     		ldr	r2, .L352+64
 1971 0168 206F     		ldr	r0, [r4, #112]
 1972 016a 3146     		mov	r1, r6
 1973 016c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1974 0170 7AE7     		b	.L324
 1975              	.L327:
 1976 0172 256F     		ldr	r5, [r4, #112]
 1977 0174 0A99     		ldr	r1, [sp, #40]
 1978 0176 06A8     		add	r0, sp, #24
 1979 0178 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 1980 017c 06AB     		add	r3, sp, #24
 1981 017e 2846     		mov	r0, r5
 1982 0180 2A4A     		ldr	r2, .L352+68
 1983 0182 3146     		mov	r1, r6
 1984 0184 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1985 0188 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 1986 018c 042B     		cmp	r3, #4
 1987 018e 1ED1     		bne	.L329
 1988 0190 9DF83A30 		ldrb	r3, [sp, #58]	@ zero_extendqisi2
 1989 0194 012B     		cmp	r3, #1
 1990 0196 18D0     		beq	.L337
 1991 0198 022B     		cmp	r3, #2
 1992 019a 22D0     		beq	.L338
 1993 019c 244A     		ldr	r2, .L352+72
 1994 019e 1449     		ldr	r1, .L352+8
 1995 01a0 032B     		cmp	r3, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 36


 1996 01a2 18BF     		it	ne
 1997 01a4 0A46     		movne	r2, r1
 1998              	.L330:
 1999 01a6 D4F81011 		ldr	r1, [r4, #272]
 2000 01aa 206F     		ldr	r0, [r4, #112]
 2001 01ac 9DF93830 		ldrsb	r3, [sp, #56]
 2002 01b0 CDE90012 		strd	r1, r2, [sp]
 2003 01b4 1F4A     		ldr	r2, .L352+76
 2004 01b6 3146     		mov	r1, r6
 2005 01b8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2006 01bc C7E7     		b	.L328
 2007              	.L325:
 2008 01be 1E4A     		ldr	r2, .L352+80
 2009 01c0 206F     		ldr	r0, [r4, #112]
 2010 01c2 3146     		mov	r1, r6
 2011 01c4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2012 01c8 4EE7     		b	.L324
 2013              	.L337:
 2014 01ca 1C4A     		ldr	r2, .L352+84
 2015 01cc EBE7     		b	.L330
 2016              	.L329:
 2017 01ce 022B     		cmp	r3, #2
 2018 01d0 BDD1     		bne	.L328
 2019 01d2 9DF83930 		ldrb	r3, [sp, #57]	@ zero_extendqisi2
 2020 01d6 1A4A     		ldr	r2, .L352+88
 2021 01d8 206F     		ldr	r0, [r4, #112]
 2022 01da 3146     		mov	r1, r6
 2023 01dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2024 01e0 B5E7     		b	.L328
 2025              	.L338:
 2026 01e2 184A     		ldr	r2, .L352+92
 2027 01e4 DFE7     		b	.L330
 2028              	.L353:
 2029 01e6 00BF     		.align	2
 2030              	.L352:
 2031 01e8 18000000 		.word	.LC37
 2032 01ec 00000000 		.word	.LANCHOR10
 2033 01f0 00000000 		.word	.LC17
 2034 01f4 24000000 		.word	.LC38
 2035 01f8 00000000 		.word	.LANCHOR2
 2036 01fc 00000000 		.word	.LC1
 2037 0200 3C000000 		.word	.LC39
 2038 0204 50000000 		.word	.LC40
 2039 0208 C0010000 		.word	.LC50
 2040 020c D4010000 		.word	.LC52
 2041 0210 88000000 		.word	.LC41
 2042 0214 A4000000 		.word	.LC42
 2043 0218 00000000 		.word	.LANCHOR9
 2044 021c 00000000 		.word	.LC16
 2045 0220 D4000000 		.word	.LC43
 2046 0224 F4000000 		.word	.LC44
 2047 0228 84010000 		.word	.LC48
 2048 022c 18010000 		.word	.LC45
 2049 0230 10000000 		.word	.LC36
 2050 0234 2C010000 		.word	.LC46
 2051 0238 A4010000 		.word	.LC49
 2052 023c 08000000 		.word	.LC35
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 37


 2053 0240 6C010000 		.word	.LC47
 2054 0244 00000000 		.word	.LC34
 2055 0248 D0010000 		.word	.LC51
 2056              		.size	_ZN13WiFiInterface11DiagnosticsE11MessageType, .-_ZN13WiFiInterface11DiagnosticsE11MessageTy
 2057              		.section	.text._ZN13WiFiInterface17SendListenCommandEthj,"ax",%progbits
 2058              		.align	1
 2059              		.p2align 2,,3
 2060              		.global	_ZN13WiFiInterface17SendListenCommandEthj
 2061              		.syntax unified
 2062              		.thumb
 2063              		.thumb_func
 2064              		.fpu fpv4-sp-d16
 2065              		.type	_ZN13WiFiInterface17SendListenCommandEthj, %function
 2066              	_ZN13WiFiInterface17SendListenCommandEthj:
 2067              		@ args = 0, pretend = 0, frame = 16
 2068              		@ frame_needed = 0, uses_anonymous_args = 0
 2069 0000 30B5     		push	{r4, r5, lr}
 2070 0002 89B0     		sub	sp, sp, #36
 2071 0004 0024     		movs	r4, #0
 2072 0006 ADF81A10 		strh	r1, [sp, #26]	@ movhi
 2073 000a 0C25     		movs	r5, #12
 2074 000c 05A9     		add	r1, sp, #20
 2075 000e 8DF81820 		strb	r2, [sp, #24]
 2076 0012 ADF81C30 		strh	r3, [sp, #28]	@ movhi
 2077 0016 0091     		str	r1, [sp]
 2078 0018 CDE90244 		strd	r4, r4, [sp, #8]
 2079 001c 2346     		mov	r3, r4
 2080 001e 0195     		str	r5, [sp, #4]
 2081 0020 2246     		mov	r2, r4
 2082 0022 0721     		movs	r1, #7
 2083 0024 0594     		str	r4, [sp, #20]
 2084 0026 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2085 002a 09B0     		add	sp, sp, #36
 2086              		@ sp needed
 2087 002c 30BD     		pop	{r4, r5, pc}
 2088              		.size	_ZN13WiFiInterface17SendListenCommandEthj, .-_ZN13WiFiInterface17SendListenCommandEthj
 2089 002e 00BF     		.section	.text._ZN13WiFiInterface13StartProtocolEh,"ax",%progbits
 2090              		.align	1
 2091              		.p2align 2,,3
 2092              		.global	_ZN13WiFiInterface13StartProtocolEh
 2093              		.syntax unified
 2094              		.thumb
 2095              		.thumb_func
 2096              		.fpu fpv4-sp-d16
 2097              		.type	_ZN13WiFiInterface13StartProtocolEh, %function
 2098              	_ZN13WiFiInterface13StartProtocolEh:
 2099              		@ args = 0, pretend = 0, frame = 8
 2100              		@ frame_needed = 0, uses_anonymous_args = 0
 2101 0000 30B5     		push	{r4, r5, lr}
 2102 0002 0446     		mov	r4, r0
 2103 0004 83B0     		sub	sp, sp, #12
 2104 0006 0D46     		mov	r5, r1
 2105 0008 6846     		mov	r0, sp
 2106 000a 211D     		adds	r1, r4, #4
 2107 000c 4FF0FF32 		mov	r2, #-1
 2108 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2109 0014 012D     		cmp	r5, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 38


 2110 0016 1AD0     		beq	.L358
 2111 0018 0DD3     		bcc	.L359
 2112 001a 022D     		cmp	r5, #2
 2113 001c 06D1     		bne	.L357
 2114 001e 2A46     		mov	r2, r5
 2115 0020 0123     		movs	r3, #1
 2116 0022 B4F8A410 		ldrh	r1, [r4, #164]
 2117 0026 2046     		mov	r0, r4
 2118 0028 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2119              	.L357:
 2120 002c 6846     		mov	r0, sp
 2121 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2122 0032 03B0     		add	sp, sp, #12
 2123              		@ sp needed
 2124 0034 30BD     		pop	{r4, r5, pc}
 2125              	.L359:
 2126 0036 0423     		movs	r3, #4
 2127 0038 0022     		movs	r2, #0
 2128 003a B4F8A010 		ldrh	r1, [r4, #160]
 2129 003e 2046     		mov	r0, r4
 2130 0040 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2131 0044 6846     		mov	r0, sp
 2132 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2133 004a 03B0     		add	sp, sp, #12
 2134              		@ sp needed
 2135 004c 30BD     		pop	{r4, r5, pc}
 2136              	.L358:
 2137 004e 2B46     		mov	r3, r5
 2138 0050 2A46     		mov	r2, r5
 2139 0052 B4F8A210 		ldrh	r1, [r4, #162]
 2140 0056 2046     		mov	r0, r4
 2141 0058 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2142 005c 6846     		mov	r0, sp
 2143 005e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2144 0062 03B0     		add	sp, sp, #12
 2145              		@ sp needed
 2146 0064 30BD     		pop	{r4, r5, pc}
 2147              		.size	_ZN13WiFiInterface13StartProtocolEh, .-_ZN13WiFiInterface13StartProtocolEh
 2148 0066 00BF     		.section	.text._ZN13WiFiInterface11InitSocketsEv,"ax",%progbits
 2149              		.align	1
 2150              		.p2align 2,,3
 2151              		.global	_ZN13WiFiInterface11InitSocketsEv
 2152              		.syntax unified
 2153              		.thumb
 2154              		.thumb_func
 2155              		.fpu fpv4-sp-d16
 2156              		.type	_ZN13WiFiInterface11InitSocketsEv, %function
 2157              	_ZN13WiFiInterface11InitSocketsEv:
 2158              		@ args = 0, pretend = 0, frame = 0
 2159              		@ frame_needed = 0, uses_anonymous_args = 0
 2160 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2161 0002 00F1A904 		add	r4, r0, #169
 2162 0006 0546     		mov	r5, r0
 2163 0008 E743     		mvns	r7, r4
 2164 000a 00F1AC06 		add	r6, r0, #172
 2165              	.L364:
 2166 000e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 39


 2167 0012 2BB9     		cbnz	r3, .L370
 2168              	.L363:
 2169 0014 B442     		cmp	r4, r6
 2170 0016 FAD1     		bne	.L364
 2171 0018 0023     		movs	r3, #0
 2172 001a C5F89C30 		str	r3, [r5, #156]
 2173 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2174              	.L370:
 2175 0020 3919     		adds	r1, r7, r4
 2176 0022 C9B2     		uxtb	r1, r1
 2177 0024 2846     		mov	r0, r5
 2178 0026 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 2179 002a F3E7     		b	.L363
 2180              		.size	_ZN13WiFiInterface11InitSocketsEv, .-_ZN13WiFiInterface11InitSocketsEv
 2181              		.section	.text._ZN13WiFiInterface12OpenDataPortEt,"ax",%progbits
 2182              		.align	1
 2183              		.p2align 2,,3
 2184              		.global	_ZN13WiFiInterface12OpenDataPortEt
 2185              		.syntax unified
 2186              		.thumb
 2187              		.thumb_func
 2188              		.fpu fpv4-sp-d16
 2189              		.type	_ZN13WiFiInterface12OpenDataPortEt, %function
 2190              	_ZN13WiFiInterface12OpenDataPortEt:
 2191              		@ args = 0, pretend = 0, frame = 0
 2192              		@ frame_needed = 0, uses_anonymous_args = 0
 2193 0000 70B5     		push	{r4, r5, r6, lr}
 2194 0002 C36F     		ldr	r3, [r0, #124]
 2195 0004 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2196 0006 032B     		cmp	r3, #3
 2197 0008 0446     		mov	r4, r0
 2198 000a 0D46     		mov	r5, r1
 2199 000c 16D0     		beq	.L372
 2200 000e 9C30     		adds	r0, r0, #156
 2201 0010 04F18003 		add	r3, r4, #128
 2202 0014 03E0     		b	.L374
 2203              	.L376:
 2204 0016 1268     		ldr	r2, [r2]
 2205 0018 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 2206 001a 032A     		cmp	r2, #3
 2207 001c 0ED0     		beq	.L372
 2208              	.L374:
 2209 001e 9842     		cmp	r0, r3
 2210 0020 1A46     		mov	r2, r3
 2211 0022 03F10403 		add	r3, r3, #4
 2212 0026 F6D1     		bne	.L376
 2213              	.L375:
 2214 0028 A4F8A650 		strh	r5, [r4, #166]	@ movhi
 2215 002c 2946     		mov	r1, r5
 2216 002e 2046     		mov	r0, r4
 2217 0030 0123     		movs	r3, #1
 2218 0032 0322     		movs	r2, #3
 2219 0034 BDE87040 		pop	{r4, r5, r6, lr}
 2220 0038 FFF7FEBF 		b	_ZN13WiFiInterface17SendListenCommandEthj
 2221              	.L372:
 2222 003c 0122     		movs	r2, #1
 2223 003e 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 40


 2224 0040 84F8A820 		strb	r2, [r4, #168]
 2225 0044 5B6D     		ldr	r3, [r3, #84]
 2226 0046 2046     		mov	r0, r4
 2227 0048 9847     		blx	r3
 2228 004a EDE7     		b	.L375
 2229              		.size	_ZN13WiFiInterface12OpenDataPortEt, .-_ZN13WiFiInterface12OpenDataPortEt
 2230              		.section	.text._ZN13WiFiInterface16ShutdownProtocolEh,"ax",%progbits
 2231              		.align	1
 2232              		.p2align 2,,3
 2233              		.global	_ZN13WiFiInterface16ShutdownProtocolEh
 2234              		.syntax unified
 2235              		.thumb
 2236              		.thumb_func
 2237              		.fpu fpv4-sp-d16
 2238              		.type	_ZN13WiFiInterface16ShutdownProtocolEh, %function
 2239              	_ZN13WiFiInterface16ShutdownProtocolEh:
 2240              		@ args = 0, pretend = 0, frame = 8
 2241              		@ frame_needed = 0, uses_anonymous_args = 0
 2242 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2243 0004 0446     		mov	r4, r0
 2244 0006 82B0     		sub	sp, sp, #8
 2245 0008 0D46     		mov	r5, r1
 2246 000a 6846     		mov	r0, sp
 2247 000c 211D     		adds	r1, r4, #4
 2248 000e 4FF0FF32 		mov	r2, #-1
 2249 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2250 0016 012D     		cmp	r5, #1
 2251 0018 39D0     		beq	.L385
 2252 001a 20D3     		bcc	.L386
 2253 001c 022D     		cmp	r5, #2
 2254 001e 18D1     		bne	.L384
 2255 0020 B4F8A410 		ldrh	r1, [r4, #164]
 2256 0024 2046     		mov	r0, r4
 2257 0026 0023     		movs	r3, #0
 2258 0028 FF22     		movs	r2, #255
 2259 002a FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2260 002e 04F17805 		add	r5, r4, #120
 2261 0032 B4F8A460 		ldrh	r6, [r4, #164]
 2262 0036 9834     		adds	r4, r4, #152
 2263 0038 01E0     		b	.L397
 2264              	.L396:
 2265 003a A542     		cmp	r5, r4
 2266 003c 09D0     		beq	.L384
 2267              	.L397:
 2268 003e 55F8040F 		ldr	r0, [r5, #4]!
 2269 0042 0389     		ldrh	r3, [r0, #8]
 2270 0044 B342     		cmp	r3, r6
 2271 0046 F8D1     		bne	.L396
 2272 0048 0368     		ldr	r3, [r0]
 2273 004a 9B68     		ldr	r3, [r3, #8]
 2274 004c 9847     		blx	r3
 2275 004e A542     		cmp	r5, r4
 2276 0050 F5D1     		bne	.L397
 2277              	.L384:
 2278 0052 6846     		mov	r0, sp
 2279 0054 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2280 0058 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 41


 2281              		@ sp needed
 2282 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2283              	.L386:
 2284 005e B4F8A010 		ldrh	r1, [r4, #160]
 2285 0062 2046     		mov	r0, r4
 2286 0064 0023     		movs	r3, #0
 2287 0066 FF22     		movs	r2, #255
 2288 0068 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2289 006c 04F17805 		add	r5, r4, #120
 2290 0070 B4F8A060 		ldrh	r6, [r4, #160]
 2291 0074 9834     		adds	r4, r4, #152
 2292 0076 01E0     		b	.L389
 2293              	.L388:
 2294 0078 AC42     		cmp	r4, r5
 2295 007a EAD0     		beq	.L384
 2296              	.L389:
 2297 007c 55F8040F 		ldr	r0, [r5, #4]!
 2298 0080 0389     		ldrh	r3, [r0, #8]
 2299 0082 B342     		cmp	r3, r6
 2300 0084 F8D1     		bne	.L388
 2301 0086 0368     		ldr	r3, [r0]
 2302 0088 9B68     		ldr	r3, [r3, #8]
 2303 008a 9847     		blx	r3
 2304 008c F4E7     		b	.L388
 2305              	.L385:
 2306 008e 0023     		movs	r3, #0
 2307 0090 FF22     		movs	r2, #255
 2308 0092 B4F8A210 		ldrh	r1, [r4, #162]
 2309 0096 2046     		mov	r0, r4
 2310 0098 04F17806 		add	r6, r4, #120
 2311 009c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2312 00a0 3546     		mov	r5, r6
 2313 00a2 B4F8A280 		ldrh	r8, [r4, #162]
 2314 00a6 04F19807 		add	r7, r4, #152
 2315 00aa 01E0     		b	.L392
 2316              	.L390:
 2317 00ac BD42     		cmp	r5, r7
 2318 00ae 09D0     		beq	.L402
 2319              	.L392:
 2320 00b0 55F8040F 		ldr	r0, [r5, #4]!
 2321 00b4 0389     		ldrh	r3, [r0, #8]
 2322 00b6 4345     		cmp	r3, r8
 2323 00b8 F8D1     		bne	.L390
 2324 00ba 0368     		ldr	r3, [r0]
 2325 00bc 9B68     		ldr	r3, [r3, #8]
 2326 00be 9847     		blx	r3
 2327 00c0 BD42     		cmp	r5, r7
 2328 00c2 F5D1     		bne	.L392
 2329              	.L402:
 2330 00c4 B4F8A610 		ldrh	r1, [r4, #166]
 2331 00c8 0029     		cmp	r1, #0
 2332 00ca C2D0     		beq	.L384
 2333 00cc 2046     		mov	r0, r4
 2334 00ce 0023     		movs	r3, #0
 2335 00d0 FF22     		movs	r2, #255
 2336 00d2 FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2337 00d6 B4F8A640 		ldrh	r4, [r4, #166]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 42


 2338 00da 01E0     		b	.L395
 2339              	.L393:
 2340 00dc AE42     		cmp	r6, r5
 2341 00de B8D0     		beq	.L384
 2342              	.L395:
 2343 00e0 56F8040F 		ldr	r0, [r6, #4]!
 2344 00e4 0389     		ldrh	r3, [r0, #8]
 2345 00e6 A342     		cmp	r3, r4
 2346 00e8 F8D1     		bne	.L393
 2347 00ea 0368     		ldr	r3, [r0]
 2348 00ec 9B68     		ldr	r3, [r3, #8]
 2349 00ee 9847     		blx	r3
 2350 00f0 F4E7     		b	.L393
 2351              		.size	_ZN13WiFiInterface16ShutdownProtocolEh, .-_ZN13WiFiInterface16ShutdownProtocolEh
 2352 00f2 00BF     		.section	.text._ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef,"ax",%progbits
 2353              		.align	1
 2354              		.p2align 2,,3
 2355              		.global	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef
 2356              		.syntax unified
 2357              		.thumb
 2358              		.thumb_func
 2359              		.fpu fpv4-sp-d16
 2360              		.type	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef, %function
 2361              	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef:
 2362              		@ args = 4, pretend = 0, frame = 8
 2363              		@ frame_needed = 0, uses_anonymous_args = 0
 2364 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2365 0002 0133     		adds	r3, r3, #1
 2366 0004 012B     		cmp	r3, #1
 2367 0006 83B0     		sub	sp, sp, #12
 2368 0008 2BD8     		bhi	.L420
 2369 000a 0229     		cmp	r1, #2
 2370 000c 0D46     		mov	r5, r1
 2371 000e 2CD8     		bhi	.L405
 2372 0010 002A     		cmp	r2, #0
 2373 0012 B8BF     		it	lt
 2374 0014 224B     		ldrlt	r3, .L421
 2375 0016 00EB4107 		add	r7, r0, r1, lsl #1
 2376 001a 0446     		mov	r4, r0
 2377 001c B4BF     		ite	lt
 2378 001e 33F81160 		ldrhlt	r6, [r3, r1, lsl #1]
 2379 0022 96B2     		uxthge	r6, r2
 2380 0024 6846     		mov	r0, sp
 2381 0026 4FF0FF32 		mov	r2, #-1
 2382 002a 211D     		adds	r1, r4, #4
 2383 002c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2384 0030 B7F8A030 		ldrh	r3, [r7, #160]
 2385 0034 B342     		cmp	r3, r6
 2386 0036 03D0     		beq	.L419
 2387 0038 D4F8AC30 		ldr	r3, [r4, #172]
 2388 003c 032B     		cmp	r3, #3
 2389 003e 1BD0     		beq	.L410
 2390              	.L419:
 2391 0040 6319     		adds	r3, r4, r5
 2392 0042 93F8A920 		ldrb	r2, [r3, #169]	@ zero_extendqisi2
 2393 0046 A7F8A060 		strh	r6, [r7, #160]	@ movhi
 2394 004a E2B1     		cbz	r2, .L411
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 43


 2395              	.L412:
 2396 004c 2946     		mov	r1, r5
 2397 004e 2046     		mov	r0, r4
 2398 0050 089A     		ldr	r2, [sp, #32]
 2399 0052 FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 2400 0056 6846     		mov	r0, sp
 2401 0058 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2402 005c 0120     		movs	r0, #1
 2403 005e 03B0     		add	sp, sp, #12
 2404              		@ sp needed
 2405 0060 F0BD     		pop	{r4, r5, r6, r7, pc}
 2406              	.L420:
 2407 0062 1049     		ldr	r1, .L421+4
 2408 0064 0898     		ldr	r0, [sp, #32]
 2409 0066 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2410              	.L405:
 2411 006a 0F49     		ldr	r1, .L421+8
 2412 006c 0898     		ldr	r0, [sp, #32]
 2413 006e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2414 0072 0220     		movs	r0, #2
 2415 0074 03B0     		add	sp, sp, #12
 2416              		@ sp needed
 2417 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 2418              	.L410:
 2419 0078 2946     		mov	r1, r5
 2420 007a 2046     		mov	r0, r4
 2421 007c FFF7FEFF 		bl	_ZN13WiFiInterface16ShutdownProtocolEh
 2422 0080 A7F8A060 		strh	r6, [r7, #160]	@ movhi
 2423 0084 6319     		adds	r3, r4, r5
 2424              	.L411:
 2425 0086 0122     		movs	r2, #1
 2426 0088 83F8A920 		strb	r2, [r3, #169]
 2427 008c D4F8AC30 		ldr	r3, [r4, #172]
 2428 0090 032B     		cmp	r3, #3
 2429 0092 DBD1     		bne	.L412
 2430 0094 2946     		mov	r1, r5
 2431 0096 2046     		mov	r0, r4
 2432 0098 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 2433 009c D6E7     		b	.L412
 2434              	.L422:
 2435 009e 00BF     		.align	2
 2436              	.L421:
 2437 00a0 00000000 		.word	.LANCHOR11
 2438 00a4 00000000 		.word	.LC53
 2439 00a8 2C000000 		.word	.LC54
 2440              		.size	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef, .-_ZN13WiFiInterface14EnableProtocolEhii
 2441              		.section	.text._ZN13WiFiInterface15DisableProtocolEhRK9StringRef,"ax",%progbits
 2442              		.align	1
 2443              		.p2align 2,,3
 2444              		.global	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef
 2445              		.syntax unified
 2446              		.thumb
 2447              		.thumb_func
 2448              		.fpu fpv4-sp-d16
 2449              		.type	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef, %function
 2450              	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef:
 2451              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 44


 2452              		@ frame_needed = 0, uses_anonymous_args = 0
 2453 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2454 0002 0229     		cmp	r1, #2
 2455 0004 83B0     		sub	sp, sp, #12
 2456 0006 1646     		mov	r6, r2
 2457 0008 1AD8     		bhi	.L424
 2458 000a 0446     		mov	r4, r0
 2459 000c 0D46     		mov	r5, r1
 2460 000e 6846     		mov	r0, sp
 2461 0010 4FF0FF32 		mov	r2, #-1
 2462 0014 211D     		adds	r1, r4, #4
 2463 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 2464 001a D4F8AC30 		ldr	r3, [r4, #172]
 2465 001e 032B     		cmp	r3, #3
 2466 0020 15D0     		beq	.L428
 2467              	.L425:
 2468 0022 6319     		adds	r3, r4, r5
 2469 0024 0027     		movs	r7, #0
 2470 0026 3246     		mov	r2, r6
 2471 0028 2946     		mov	r1, r5
 2472 002a 2046     		mov	r0, r4
 2473 002c 83F8A970 		strb	r7, [r3, #169]
 2474 0030 FFF7FEFF 		bl	_ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef
 2475 0034 6846     		mov	r0, sp
 2476 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 2477 003a 0120     		movs	r0, #1
 2478 003c 03B0     		add	sp, sp, #12
 2479              		@ sp needed
 2480 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 2481              	.L424:
 2482 0040 1046     		mov	r0, r2
 2483 0042 0549     		ldr	r1, .L429
 2484 0044 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2485 0048 0220     		movs	r0, #2
 2486 004a 03B0     		add	sp, sp, #12
 2487              		@ sp needed
 2488 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 2489              	.L428:
 2490 004e 2946     		mov	r1, r5
 2491 0050 2046     		mov	r0, r4
 2492 0052 FFF7FEFF 		bl	_ZN13WiFiInterface16ShutdownProtocolEh
 2493 0056 E4E7     		b	.L425
 2494              	.L430:
 2495              		.align	2
 2496              	.L429:
 2497 0058 2C000000 		.word	.LC54
 2498              		.size	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef, .-_ZN13WiFiInterface15DisableProtocolEhRK
 2499              		.section	.text._ZN13WiFiInterface17TerminateDataPortEv,"ax",%progbits
 2500              		.align	1
 2501              		.p2align 2,,3
 2502              		.global	_ZN13WiFiInterface17TerminateDataPortEv
 2503              		.syntax unified
 2504              		.thumb
 2505              		.thumb_func
 2506              		.fpu fpv4-sp-d16
 2507              		.type	_ZN13WiFiInterface17TerminateDataPortEv, %function
 2508              	_ZN13WiFiInterface17TerminateDataPortEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 45


 2509              		@ args = 0, pretend = 0, frame = 0
 2510              		@ frame_needed = 0, uses_anonymous_args = 0
 2511 0000 38B5     		push	{r3, r4, r5, lr}
 2512 0002 C46F     		ldr	r4, [r0, #124]
 2513 0004 B0F8A610 		ldrh	r1, [r0, #166]
 2514 0008 2389     		ldrh	r3, [r4, #8]
 2515 000a 8B42     		cmp	r3, r1
 2516 000c 0546     		mov	r5, r0
 2517 000e 13D0     		beq	.L432
 2518 0010 9C30     		adds	r0, r0, #156
 2519 0012 05F18003 		add	r3, r5, #128
 2520 0016 04E0     		b	.L433
 2521              	.L443:
 2522 0018 53F8044B 		ldr	r4, [r3], #4
 2523 001c 2289     		ldrh	r2, [r4, #8]
 2524 001e 8A42     		cmp	r2, r1
 2525 0020 0AD0     		beq	.L432
 2526              	.L433:
 2527 0022 9842     		cmp	r0, r3
 2528 0024 F8D1     		bne	.L443
 2529 0026 0023     		movs	r3, #0
 2530 0028 FF22     		movs	r2, #255
 2531 002a 2846     		mov	r0, r5
 2532 002c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2533 0030 0023     		movs	r3, #0
 2534 0032 A5F8A630 		strh	r3, [r5, #166]	@ movhi
 2535 0036 38BD     		pop	{r3, r4, r5, pc}
 2536              	.L432:
 2537 0038 95F8A830 		ldrb	r3, [r5, #168]	@ zero_extendqisi2
 2538 003c 1BB9     		cbnz	r3, .L440
 2539 003e 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 2540 0042 042B     		cmp	r3, #4
 2541 0044 12D0     		beq	.L436
 2542              	.L440:
 2543 0046 0023     		movs	r3, #0
 2544 0048 FF22     		movs	r2, #255
 2545 004a 2846     		mov	r0, r5
 2546 004c FFF7FEFF 		bl	_ZN13WiFiInterface17SendListenCommandEthj
 2547 0050 2368     		ldr	r3, [r4]
 2548 0052 0A49     		ldr	r1, .L446
 2549 0054 DA68     		ldr	r2, [r3, #12]
 2550 0056 8A42     		cmp	r2, r1
 2551 0058 0CD1     		bne	.L437
 2552 005a 9B68     		ldr	r3, [r3, #8]
 2553 005c 2046     		mov	r0, r4
 2554 005e 9847     		blx	r3
 2555              	.L438:
 2556 0060 0023     		movs	r3, #0
 2557 0062 A5F8A630 		strh	r3, [r5, #166]	@ movhi
 2558 0066 85F8A830 		strb	r3, [r5, #168]
 2559 006a 38BD     		pop	{r3, r4, r5, pc}
 2560              	.L436:
 2561 006c 0123     		movs	r3, #1
 2562 006e 85F8A830 		strb	r3, [r5, #168]
 2563 0072 38BD     		pop	{r3, r4, r5, pc}
 2564              	.L437:
 2565 0074 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 46


 2566 0076 9047     		blx	r2
 2567 0078 F2E7     		b	.L438
 2568              	.L447:
 2569 007a 00BF     		.align	2
 2570              	.L446:
 2571 007c 00000000 		.word	_ZN10WiFiSocket19TerminateAndDisableEv
 2572              		.size	_ZN13WiFiInterface17TerminateDataPortEv, .-_ZN13WiFiInterface17TerminateDataPortEv
 2573              		.section	.text._ZN13WiFiInterface13StopListeningEt,"ax",%progbits
 2574              		.align	1
 2575              		.p2align 2,,3
 2576              		.global	_ZN13WiFiInterface13StopListeningEt
 2577              		.syntax unified
 2578              		.thumb
 2579              		.thumb_func
 2580              		.fpu fpv4-sp-d16
 2581              		.type	_ZN13WiFiInterface13StopListeningEt, %function
 2582              	_ZN13WiFiInterface13StopListeningEt:
 2583              		@ args = 0, pretend = 0, frame = 0
 2584              		@ frame_needed = 0, uses_anonymous_args = 0
 2585              		@ link register save eliminated.
 2586 0000 0023     		movs	r3, #0
 2587 0002 FF22     		movs	r2, #255
 2588 0004 FFF7FEBF 		b	_ZN13WiFiInterface17SendListenCommandEthj
 2589              		.size	_ZN13WiFiInterface13StopListeningEt, .-_ZN13WiFiInterface13StopListeningEt
 2590              		.section	.text._ZN13WiFiInterface12GetNewStatusEv,"ax",%progbits
 2591              		.align	1
 2592              		.p2align 2,,3
 2593              		.global	_ZN13WiFiInterface12GetNewStatusEv
 2594              		.syntax unified
 2595              		.thumb
 2596              		.thumb_func
 2597              		.fpu fpv4-sp-d16
 2598              		.type	_ZN13WiFiInterface12GetNewStatusEv, %function
 2599              	_ZN13WiFiInterface12GetNewStatusEv:
 2600              		@ args = 0, pretend = 0, frame = 104
 2601              		@ frame_needed = 0, uses_anonymous_args = 0
 2602 0000 70B5     		push	{r4, r5, r6, lr}
 2603 0002 0024     		movs	r4, #0
 2604 0004 9EB0     		sub	sp, sp, #120
 2605 0006 0546     		mov	r5, r0
 2606 0008 80F8B340 		strb	r4, [r0, #179]
 2607 000c 2346     		mov	r3, r4
 2608 000e 0522     		movs	r2, #5
 2609 0010 1749     		ldr	r1, .L460
 2610 0012 5F20     		movs	r0, #95
 2611 0014 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 2612 0018 04AE     		add	r6, sp, #16
 2613 001a 6421     		movs	r1, #100
 2614 001c 2346     		mov	r3, r4
 2615 001e CDE90261 		strd	r6, r1, [sp, #8]
 2616 0022 CDE90044 		strd	r4, r4, [sp]
 2617 0026 2246     		mov	r2, r4
 2618 0028 2846     		mov	r0, r5
 2619 002a 1321     		movs	r1, #19
 2620 002c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2621 0030 031E     		subs	r3, r0, #0
 2622 0032 8DF87340 		strb	r4, [sp, #115]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 47


 2623 0036 05DB     		blt	.L458
 2624 0038 02D0     		beq	.L449
 2625 003a 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 2626 003e 7BB9     		cbnz	r3, .L459
 2627              	.L449:
 2628 0040 1EB0     		add	sp, sp, #120
 2629              		@ sp needed
 2630 0042 70BD     		pop	{r4, r5, r6, pc}
 2631              	.L458:
 2632 0044 0C33     		adds	r3, r3, #12
 2633 0046 28BF     		it	cs
 2634 0048 0A4A     		ldrcs	r2, .L460+4
 2635 004a 286F     		ldr	r0, [r5, #112]
 2636 004c 2CBF     		ite	cs
 2637 004e 52F82330 		ldrcs	r3, [r2, r3, lsl #2]
 2638 0052 094B     		ldrcc	r3, .L460+8
 2639 0054 094A     		ldr	r2, .L460+12
 2640 0056 8521     		movs	r1, #133
 2641 0058 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2642 005c 1EB0     		add	sp, sp, #120
 2643              		@ sp needed
 2644 005e 70BD     		pop	{r4, r5, r6, pc}
 2645              	.L459:
 2646 0060 3346     		mov	r3, r6
 2647 0062 286F     		ldr	r0, [r5, #112]
 2648 0064 064A     		ldr	r2, .L460+16
 2649 0066 8521     		movs	r1, #133
 2650 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2651 006c 1EB0     		add	sp, sp, #120
 2652              		@ sp needed
 2653 006e 70BD     		pop	{r4, r5, r6, pc}
 2654              	.L461:
 2655              		.align	2
 2656              	.L460:
 2657 0070 00000000 		.word	_ZL21EspTransferRequestIsr17CallbackParameter
 2658 0074 00000000 		.word	.LANCHOR6
 2659 0078 00000000 		.word	.LC8
 2660 007c 00000000 		.word	.LC55
 2661 0080 2C000000 		.word	.LC56
 2662              		.size	_ZN13WiFiInterface12GetNewStatusEv, .-_ZN13WiFiInterface12GetNewStatusEv
 2663              		.section	.text._ZN13WiFiInterface21TranslateWiFiResponseEl,"ax",%progbits
 2664              		.align	1
 2665              		.p2align 2,,3
 2666              		.global	_ZN13WiFiInterface21TranslateWiFiResponseEl
 2667              		.syntax unified
 2668              		.thumb
 2669              		.thumb_func
 2670              		.fpu fpv4-sp-d16
 2671              		.type	_ZN13WiFiInterface21TranslateWiFiResponseEl, %function
 2672              	_ZN13WiFiInterface21TranslateWiFiResponseEl:
 2673              		@ args = 0, pretend = 0, frame = 0
 2674              		@ frame_needed = 0, uses_anonymous_args = 0
 2675              		@ link register save eliminated.
 2676 0000 0C30     		adds	r0, r0, #12
 2677 0002 26BF     		itte	cs
 2678 0004 024B     		ldrcs	r3, .L465
 2679 0006 53F82000 		ldrcs	r0, [r3, r0, lsl #2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 48


 2680 000a 0248     		ldrcc	r0, .L465+4
 2681 000c 7047     		bx	lr
 2682              	.L466:
 2683 000e 00BF     		.align	2
 2684              	.L465:
 2685 0010 00000000 		.word	.LANCHOR6
 2686 0014 00000000 		.word	.LC8
 2687              		.size	_ZN13WiFiInterface21TranslateWiFiResponseEl, .-_ZN13WiFiInterface21TranslateWiFiResponseEl
 2688              		.section	.text._ZN13WiFiInterface12SpiInterruptEv,"ax",%progbits
 2689              		.align	1
 2690              		.p2align 2,,3
 2691              		.global	_ZN13WiFiInterface12SpiInterruptEv
 2692              		.syntax unified
 2693              		.thumb
 2694              		.thumb_func
 2695              		.fpu fpv4-sp-d16
 2696              		.type	_ZN13WiFiInterface12SpiInterruptEv, %function
 2697              	_ZN13WiFiInterface12SpiInterruptEv:
 2698              		@ args = 0, pretend = 0, frame = 0
 2699              		@ frame_needed = 0, uses_anonymous_args = 0
 2700 0000 70B5     		push	{r4, r5, r6, lr}
 2701 0002 144C     		ldr	r4, .L482
 2702 0004 2569     		ldr	r5, [r4, #16]
 2703 0006 4FF48073 		mov	r3, #256
 2704 000a E905     		lsls	r1, r5, #23
 2705 000c A361     		str	r3, [r4, #24]
 2706 000e 00D4     		bmi	.L481
 2707 0010 70BD     		pop	{r4, r5, r6, pc}
 2708              	.L481:
 2709 0012 0121     		movs	r1, #1
 2710 0014 0646     		mov	r6, r0
 2711 0016 1048     		ldr	r0, .L482+4
 2712 0018 FFF7FEFF 		bl	dmac_channel_disable
 2713 001c 0221     		movs	r1, #2
 2714 001e 0E48     		ldr	r0, .L482+4
 2715 0020 FFF7FEFF 		bl	dmac_channel_suspend
 2716 0024 0223     		movs	r3, #2
 2717 0026 2360     		str	r3, [r4]
 2718 0028 0021     		movs	r1, #0
 2719 002a 5E20     		movs	r0, #94
 2720 002c FFF7FEFF 		bl	digitalWrite
 2721 0030 2A07     		lsls	r2, r5, #28
 2722 0032 04D5     		bpl	.L469
 2723 0034 D6F80C31 		ldr	r3, [r6, #268]
 2724 0038 0133     		adds	r3, r3, #1
 2725 003a C6F80C31 		str	r3, [r6, #268]
 2726              	.L469:
 2727 003e 6B05     		lsls	r3, r5, #21
 2728 0040 04D5     		bpl	.L470
 2729 0042 D6F80831 		ldr	r3, [r6, #264]
 2730 0046 0133     		adds	r3, r3, #1
 2731 0048 C6F80831 		str	r3, [r6, #264]
 2732              	.L470:
 2733 004c 034B     		ldr	r3, .L482+8
 2734 004e 0022     		movs	r2, #0
 2735 0050 1A70     		strb	r2, [r3]
 2736 0052 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 49


 2737              	.L483:
 2738              		.align	2
 2739              	.L482:
 2740 0054 00800840 		.word	1074298880
 2741 0058 00000C40 		.word	1074528256
 2742 005c 00000000 		.word	.LANCHOR3
 2743              		.size	_ZN13WiFiInterface12SpiInterruptEv, .-_ZN13WiFiInterface12SpiInterruptEv
 2744              		.section	.text.SPI_Handler,"ax",%progbits
 2745              		.align	1
 2746              		.p2align 2,,3
 2747              		.global	SPI_Handler
 2748              		.syntax unified
 2749              		.thumb
 2750              		.thumb_func
 2751              		.fpu fpv4-sp-d16
 2752              		.type	SPI_Handler, %function
 2753              	SPI_Handler:
 2754              		@ args = 0, pretend = 0, frame = 0
 2755              		@ frame_needed = 0, uses_anonymous_args = 0
 2756              		@ link register save eliminated.
 2757 0000 014B     		ldr	r3, .L485
 2758 0002 1868     		ldr	r0, [r3]
 2759 0004 FFF7FEBF 		b	_ZN13WiFiInterface12SpiInterruptEv
 2760              	.L486:
 2761              		.align	2
 2762              	.L485:
 2763 0008 00000000 		.word	.LANCHOR1
 2764              		.size	SPI_Handler, .-SPI_Handler
 2765              		.section	.text.startup._GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Platform,"ax",%progbits
 2766              		.align	1
 2767              		.p2align 2,,3
 2768              		.syntax unified
 2769              		.thumb
 2770              		.thumb_func
 2771              		.fpu fpv4-sp-d16
 2772              		.type	_GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Platform, %function
 2773              	_GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Platform:
 2774              		@ args = 0, pretend = 0, frame = 0
 2775              		@ frame_needed = 0, uses_anonymous_args = 0
 2776              		@ link register save eliminated.
 2777 0000 0149     		ldr	r1, .L488
 2778 0002 0248     		ldr	r0, .L488+4
 2779 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 2780              	.L489:
 2781              		.align	2
 2782              	.L488:
 2783 0008 00000000 		.word	.LANCHOR12
 2784 000c 00000000 		.word	.LANCHOR13
 2785              		.size	_GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Platform, .-_GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Plat
 2786              		.section	.init_array,"aw",%init_array
 2787              		.align	2
 2788 0000 00000000 		.word	_GLOBAL__sub_I__ZN13WiFiInterfaceC2ER8Platform(target1)
 2789              		.section	.text._ZN13WiFiInterface4SpinEb,"ax",%progbits
 2790              		.align	1
 2791              		.p2align 2,,3
 2792              		.global	_ZN13WiFiInterface4SpinEb
 2793              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 50


 2794              		.thumb
 2795              		.thumb_func
 2796              		.fpu fpv4-sp-d16
 2797              		.type	_ZN13WiFiInterface4SpinEb, %function
 2798              	_ZN13WiFiInterface4SpinEb:
 2799              		@ args = 0, pretend = 0, frame = 160
 2800              		@ frame_needed = 0, uses_anonymous_args = 0
 2801 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2802 0004 D0F8AC30 		ldr	r3, [r0, #172]
 2803 0008 ADB0     		sub	sp, sp, #180
 2804 000a 0446     		mov	r4, r0
 2805 000c 0F46     		mov	r7, r1
 2806 000e 042B     		cmp	r3, #4
 2807 0010 00F29880 		bhi	.L491
 2808 0014 DFE803F0 		tbb	[pc, r3]
 2809              	.L493:
 2810 0018 42       		.byte	(.L492-.L493)/2
 2811 0019 83       		.byte	(.L494-.L493)/2
 2812 001a 53       		.byte	(.L495-.L493)/2
 2813 001b 5C       		.byte	(.L496-.L493)/2
 2814 001c 03       		.byte	(.L497-.L493)/2
 2815 001d 00       		.p2align 1
 2816              	.L497:
 2817 001e 0029     		cmp	r1, #0
 2818 0020 4FD0     		beq	.L498
 2819 0022 90F8B330 		ldrb	r3, [r0, #179]	@ zero_extendqisi2
 2820 0026 002B     		cmp	r3, #0
 2821 0028 40F03B81 		bne	.L646
 2822              	.L512:
 2823 002c 94F83031 		ldrb	r3, [r4, #304]	@ zero_extendqisi2
 2824 0030 002B     		cmp	r3, #0
 2825 0032 3DD0     		beq	.L545
 2826              	.L552:
 2827 0034 BF4D     		ldr	r5, .L661
 2828 0036 94F83131 		ldrb	r3, [r4, #305]	@ zero_extendqisi2
 2829 003a 04F59976 		add	r6, r4, #306
 2830 003e 4FF09708 		mov	r8, #151
 2831 0042 2846     		mov	r0, r5
 2832 0044 E3B9     		cbnz	r3, .L540
 2833              	.L647:
 2834 0046 FFF7FEFF 		bl	_ZN9UARTClass9availableEv
 2835 004a 0028     		cmp	r0, #0
 2836 004c 7FD0     		beq	.L538
 2837 004e 2846     		mov	r0, r5
 2838 0050 FFF7FEFF 		bl	_ZN9UARTClass4readEv
 2839 0054 C3B2     		uxtb	r3, r0
 2840 0056 0A2B     		cmp	r3, #10
 2841 0058 70D0     		beq	.L543
 2842 005a 0D2B     		cmp	r3, #13
 2843 005c 1946     		mov	r1, r3
 2844 005e 08A8     		add	r0, sp, #32
 2845 0060 09D0     		beq	.L542
 2846 0062 CDE90868 		strd	r6, r8, [sp, #32]
 2847 0066 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 2848 006a 9621     		movs	r1, #150
 2849 006c 3046     		mov	r0, r6
 2850 006e FFF7FEFF 		bl	_Z7StrnlenPKcj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 51


 2851 0072 9628     		cmp	r0, #150
 2852 0074 62D0     		beq	.L543
 2853              	.L542:
 2854 0076 94F83131 		ldrb	r3, [r4, #305]	@ zero_extendqisi2
 2855 007a 2846     		mov	r0, r5
 2856 007c 002B     		cmp	r3, #0
 2857 007e E2D0     		beq	.L647
 2858              	.L540:
 2859 0080 1FB3     		cbz	r7, .L490
 2860              	.L554:
 2861 0082 AD4B     		ldr	r3, .L661+4
 2862 0084 D3F80831 		ldr	r3, [r3, #264]
 2863 0088 5B04     		lsls	r3, r3, #17
 2864 008a 67D4     		bmi	.L648
 2865              	.L548:
 2866 008c 0023     		movs	r3, #0
 2867 008e 84F83231 		strb	r3, [r4, #306]
 2868 0092 84F83131 		strb	r3, [r4, #305]
 2869 0096 2DB0     		add	sp, sp, #180
 2870              		@ sp needed
 2871 0098 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2872              	.L492:
 2873 009c 89B1     		cbz	r1, .L498
 2874 009e 806F     		ldr	r0, [r0, #120]
 2875 00a0 0028     		cmp	r0, #0
 2876 00a2 C3D0     		beq	.L512
 2877 00a4 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader4SpinEv
 2878              	.L500:
 2879 00a8 94F83031 		ldrb	r3, [r4, #304]	@ zero_extendqisi2
 2880 00ac 002B     		cmp	r3, #0
 2881 00ae C1D1     		bne	.L552
 2882              	.L545:
 2883 00b0 94F83131 		ldrb	r3, [r4, #305]	@ zero_extendqisi2
 2884 00b4 002B     		cmp	r3, #0
 2885 00b6 E4D1     		bne	.L554
 2886              	.L645:
 2887 00b8 2DB0     		add	sp, sp, #180
 2888              		@ sp needed
 2889 00ba BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2890              	.L495:
 2891 00be 0029     		cmp	r1, #0
 2892 00c0 52D1     		bne	.L649
 2893              	.L498:
 2894 00c2 94F83031 		ldrb	r3, [r4, #304]	@ zero_extendqisi2
 2895 00c6 002B     		cmp	r3, #0
 2896 00c8 B4D1     		bne	.L552
 2897              	.L490:
 2898 00ca 2DB0     		add	sp, sp, #180
 2899              		@ sp needed
 2900 00cc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2901              	.L496:
 2902 00d0 0029     		cmp	r1, #0
 2903 00d2 F6D0     		beq	.L498
 2904 00d4 90F8B330 		ldrb	r3, [r0, #179]	@ zero_extendqisi2
 2905 00d8 002B     		cmp	r3, #0
 2906 00da 40F00B81 		bne	.L507
 2907              	.L510:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 52


 2908 00de 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 2909 00e2 94F8B020 		ldrb	r2, [r4, #176]	@ zero_extendqisi2
 2910 00e6 9342     		cmp	r3, r2
 2911 00e8 48D0     		beq	.L650
 2912 00ea 032B     		cmp	r3, #3
 2913 00ec 9ED0     		beq	.L512
 2914 00ee 591F     		subs	r1, r3, #5
 2915 00f0 0129     		cmp	r1, #1
 2916 00f2 9BD9     		bls	.L512
 2917 00f4 012B     		cmp	r3, #1
 2918 00f6 00F00C81 		beq	.L513
 2919 00fa 0023     		movs	r3, #0
 2920 00fc CDE90233 		strd	r3, r3, [sp, #8]
 2921 0100 CDE90033 		strd	r3, r3, [sp]
 2922 0104 1A46     		mov	r2, r3
 2923 0106 1021     		movs	r1, #16
 2924 0108 2046     		mov	r0, r4
 2925 010a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 2926 010e 0546     		mov	r5, r0
 2927              	.L514:
 2928 0110 002D     		cmp	r5, #0
 2929 0112 C0F20481 		blt	.L516
 2930 0116 0423     		movs	r3, #4
 2931 0118 C4F8AC30 		str	r3, [r4, #172]
 2932 011c 86E7     		b	.L512
 2933              	.L494:
 2934 011e 0029     		cmp	r1, #0
 2935 0120 CFD0     		beq	.L498
 2936 0122 FFF7FEFF 		bl	millis
 2937 0126 636F     		ldr	r3, [r4, #116]
 2938 0128 C31A     		subs	r3, r0, r3
 2939 012a B3F5967F 		cmp	r3, #300
 2940 012e FFF47DAF 		bcc	.L512
 2941 0132 0223     		movs	r3, #2
 2942 0134 6067     		str	r0, [r4, #116]
 2943 0136 C4F8AC30 		str	r3, [r4, #172]
 2944 013a B5E7     		b	.L500
 2945              	.L543:
 2946 013c 0123     		movs	r3, #1
 2947 013e 84F83131 		strb	r3, [r4, #305]
 2948 0142 9DE7     		b	.L540
 2949              	.L491:
 2950 0144 90F83031 		ldrb	r3, [r0, #304]	@ zero_extendqisi2
 2951 0148 002B     		cmp	r3, #0
 2952 014a 7FF473AF 		bne	.L552
 2953              	.L538:
 2954 014e 002F     		cmp	r7, #0
 2955 0150 BBD0     		beq	.L490
 2956 0152 94F83131 		ldrb	r3, [r4, #305]	@ zero_extendqisi2
 2957 0156 002B     		cmp	r3, #0
 2958 0158 AED0     		beq	.L645
 2959 015a 92E7     		b	.L554
 2960              	.L648:
 2961 015c 04F59971 		add	r1, r4, #306
 2962 0160 7648     		ldr	r0, .L661+8
 2963 0162 FFF7FEFF 		bl	debugPrintf
 2964 0166 91E7     		b	.L548
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 53


 2965              	.L649:
 2966 0168 FFF7FEFF 		bl	millis
 2967 016c 0546     		mov	r5, r0
 2968 016e 0B20     		movs	r0, #11
 2969 0170 FFF7FEFF 		bl	digitalRead
 2970 0174 0028     		cmp	r0, #0
 2971 0176 4CD1     		bne	.L651
 2972              	.L501:
 2973 0178 6567     		str	r5, [r4, #116]
 2974 017a 57E7     		b	.L512
 2975              	.L650:
 2976 017c 042B     		cmp	r3, #4
 2977 017e 40F0F980 		bne	.L652
 2978              	.L518:
 2979 0182 D4F89C50 		ldr	r5, [r4, #156]
 2980 0186 2B46     		mov	r3, r5
 2981 0188 0BE0     		b	.L523
 2982              	.L653:
 2983 018a D4F89C30 		ldr	r3, [r4, #156]
 2984 018e 0133     		adds	r3, r3, #1
 2985 0190 082B     		cmp	r3, #8
 2986 0192 0ABF     		itet	eq
 2987 0194 0346     		moveq	r3, r0
 2988 0196 C4F89C30 		strne	r3, [r4, #156]
 2989 019a C4F89C00 		streq	r0, [r4, #156]
 2990 019e 9D42     		cmp	r5, r3
 2991 01a0 08D0     		beq	.L522
 2992              	.L523:
 2993 01a2 04EB8303 		add	r3, r4, r3, lsl #2
 2994 01a6 D86F     		ldr	r0, [r3, #124]
 2995 01a8 FFF7FEFF 		bl	_ZNK10WiFiSocket12NeedsPollingEv
 2996 01ac 0028     		cmp	r0, #0
 2997 01ae ECD0     		beq	.L653
 2998 01b0 D4F89C50 		ldr	r5, [r4, #156]
 2999              	.L522:
 3000 01b4 04EB8505 		add	r5, r4, r5, lsl #2
 3001 01b8 0121     		movs	r1, #1
 3002 01ba E86F     		ldr	r0, [r5, #124]
 3003 01bc 0368     		ldr	r3, [r0]
 3004 01be 1B68     		ldr	r3, [r3]
 3005 01c0 9847     		blx	r3
 3006 01c2 D4F89C30 		ldr	r3, [r4, #156]
 3007 01c6 0133     		adds	r3, r3, #1
 3008 01c8 082B     		cmp	r3, #8
 3009 01ca 08BF     		it	eq
 3010 01cc 0023     		moveq	r3, #0
 3011 01ce C4F89C30 		str	r3, [r4, #156]
 3012 01d2 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 3013 01d6 002B     		cmp	r3, #0
 3014 01d8 3FF428AF 		beq	.L512
 3015 01dc E26F     		ldr	r2, [r4, #124]
 3016 01de 137B     		ldrb	r3, [r2, #12]	@ zero_extendqisi2
 3017 01e0 032B     		cmp	r3, #3
 3018 01e2 04F19C00 		add	r0, r4, #156
 3019 01e6 18BF     		it	ne
 3020 01e8 04F18003 		addne	r3, r4, #128
 3021 01ec 07D0     		beq	.L526
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 54


 3022              	.L528:
 3023 01ee 9842     		cmp	r0, r3
 3024 01f0 3FF41CAF 		beq	.L512
 3025 01f4 53F8042B 		ldr	r2, [r3], #4
 3026 01f8 117B     		ldrb	r1, [r2, #12]	@ zero_extendqisi2
 3027 01fa 0329     		cmp	r1, #3
 3028 01fc F7D1     		bne	.L528
 3029              	.L526:
 3030 01fe 92F82330 		ldrb	r3, [r2, #35]	@ zero_extendqisi2
 3031 0202 042B     		cmp	r3, #4
 3032 0204 3FF412AF 		beq	.L512
 3033 0208 2368     		ldr	r3, [r4]
 3034 020a 2046     		mov	r0, r4
 3035 020c 5B6D     		ldr	r3, [r3, #84]
 3036 020e 9847     		blx	r3
 3037 0210 0CE7     		b	.L512
 3038              	.L651:
 3039 0212 5F20     		movs	r0, #95
 3040 0214 FFF7FEFF 		bl	digitalRead
 3041 0218 0028     		cmp	r0, #0
 3042 021a ADD0     		beq	.L501
 3043 021c 0E20     		movs	r0, #14
 3044 021e FFF7FEFF 		bl	digitalRead
 3045 0222 0646     		mov	r6, r0
 3046 0224 0028     		cmp	r0, #0
 3047 0226 A7D1     		bne	.L501
 3048 0228 636F     		ldr	r3, [r4, #116]
 3049 022a ED1A     		subs	r5, r5, r3
 3050 022c 632D     		cmp	r5, #99
 3051 022e 7FF6FDAE 		bls	.L512
 3052 0232 434A     		ldr	r2, .L661+12
 3053 0234 206F     		ldr	r0, [r4, #112]
 3054 0236 8521     		movs	r1, #133
 3055 0238 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3056 023c 2046     		mov	r0, r4
 3057 023e FFF7FEFF 		bl	_ZN13WiFiInterface8SetupSpiEv
 3058 0242 8C22     		movs	r2, #140
 3059 0244 08AB     		add	r3, sp, #32
 3060 0246 CDE90232 		strd	r3, r2, [sp, #8]
 3061 024a CDE90066 		strd	r6, r6, [sp]
 3062 024e 3346     		mov	r3, r6
 3063 0250 3246     		mov	r2, r6
 3064 0252 0921     		movs	r1, #9
 3065 0254 2046     		mov	r0, r4
 3066 0256 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3067 025a 031E     		subs	r3, r0, #0
 3068 025c 40F3FC80 		ble	.L504
 3069 0260 354D     		ldr	r5, .L661+4
 3070 0262 1022     		movs	r2, #16
 3071 0264 0FA9     		add	r1, sp, #60
 3072 0266 04F59070 		add	r0, r4, #288
 3073 026a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 3074 026e AB68     		ldr	r3, [r5, #8]
 3075 0270 0396     		str	r6, [sp, #12]
 3076 0272 DC33     		adds	r3, r3, #220
 3077 0274 4022     		movs	r2, #64
 3078 0276 CDE90032 		strd	r3, r2, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 55


 3079 027a 0296     		str	r6, [sp, #8]
 3080 027c 3346     		mov	r3, r6
 3081 027e 3246     		mov	r2, r6
 3082 0280 1221     		movs	r1, #18
 3083 0282 2046     		mov	r0, r4
 3084 0284 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3085 0288 20B1     		cbz	r0, .L505
 3086 028a 6868     		ldr	r0, [r5, #4]
 3087 028c 2D4A     		ldr	r2, .L661+16
 3088 028e 8521     		movs	r1, #133
 3089 0290 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3090              	.L505:
 3091 0294 0322     		movs	r2, #3
 3092 0296 0123     		movs	r3, #1
 3093 0298 C4F8AC20 		str	r2, [r4, #172]
 3094 029c 84F8B330 		strb	r3, [r4, #179]
 3095 02a0 C4E6     		b	.L512
 3096              	.L646:
 3097 02a2 5F20     		movs	r0, #95
 3098 02a4 FFF7FEFF 		bl	digitalRead
 3099 02a8 0028     		cmp	r0, #0
 3100 02aa 3FF4BFAE 		beq	.L512
 3101 02ae 2046     		mov	r0, r4
 3102 02b0 FFF7FEFF 		bl	_ZN13WiFiInterface12GetNewStatusEv
 3103 02b4 94F8B120 		ldrb	r2, [r4, #177]	@ zero_extendqisi2
 3104 02b8 062A     		cmp	r2, #6
 3105 02ba 4FD8     		bhi	.L530
 3106 02bc 0121     		movs	r1, #1
 3107 02be 9140     		lsls	r1, r1, r2
 3108 02c0 11F06803 		ands	r3, r1, #104
 3109 02c4 7FF4B2AE 		bne	.L512
 3110 02c8 11F0140F 		tst	r1, #20
 3111 02cc 7AD1     		bne	.L654
 3112 02ce 94F8B030 		ldrb	r3, [r4, #176]	@ zero_extendqisi2
 3113 02d2 206F     		ldr	r0, [r4, #112]
 3114 02d4 042B     		cmp	r3, #4
 3115 02d6 00F0CD80 		beq	.L655
 3116 02da 0323     		movs	r3, #3
 3117 02dc 84F8B020 		strb	r2, [r4, #176]
 3118 02e0 C4F8AC30 		str	r3, [r4, #172]
 3119              	.L553:
 3120 02e4 184B     		ldr	r3, .L661+20
 3121 02e6 53F82230 		ldr	r3, [r3, r2, lsl #2]
 3122              	.L549:
 3123 02ea 184A     		ldr	r2, .L661+24
 3124 02ec 8521     		movs	r1, #133
 3125 02ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3126 02f2 9BE6     		b	.L512
 3127              	.L507:
 3128 02f4 5F20     		movs	r0, #95
 3129 02f6 FFF7FEFF 		bl	digitalRead
 3130 02fa 0028     		cmp	r0, #0
 3131 02fc 3FF4EFAE 		beq	.L510
 3132 0300 0D4B     		ldr	r3, .L661+4
 3133 0302 D3F80831 		ldr	r3, [r3, #264]
 3134 0306 9A07     		lsls	r2, r3, #30
 3135 0308 24D4     		bmi	.L656
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 56


 3136              	.L511:
 3137 030a 2046     		mov	r0, r4
 3138 030c FFF7FEFF 		bl	_ZN13WiFiInterface12GetNewStatusEv
 3139 0310 8CE6     		b	.L512
 3140              	.L513:
 3141 0312 042A     		cmp	r2, #4
 3142 0314 3BD0     		beq	.L657
 3143 0316 022A     		cmp	r2, #2
 3144 0318 48D0     		beq	.L658
 3145 031a 6FF00B05 		mvn	r5, #11
 3146              	.L516:
 3147 031e D4F8AC30 		ldr	r3, [r4, #172]
 3148 0322 5BBB     		cbnz	r3, .L659
 3149              	.L517:
 3150 0324 2B46     		mov	r3, r5
 3151 0326 0A4A     		ldr	r2, .L661+28
 3152 0328 206F     		ldr	r0, [r4, #112]
 3153 032a 8521     		movs	r1, #133
 3154 032c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3155 0330 7CE6     		b	.L512
 3156              	.L662:
 3157 0332 00BF     		.align	2
 3158              	.L661:
 3159 0334 00000000 		.word	Serial1
 3160 0338 00000000 		.word	reprap
 3161 033c B4000000 		.word	.LC62
 3162 0340 00000000 		.word	.LC57
 3163 0344 00000000 		.word	.LC19
 3164 0348 00000000 		.word	.LANCHOR2
 3165 034c 3C000000 		.word	.LC39
 3166 0350 68000000 		.word	.LC60
 3167              	.L656:
 3168 0354 4948     		ldr	r0, .L663
 3169 0356 FFF7FEFF 		bl	debugPrintf
 3170 035a D6E7     		b	.L511
 3171              	.L530:
 3172 035c 94F8B030 		ldrb	r3, [r4, #176]	@ zero_extendqisi2
 3173 0360 206F     		ldr	r0, [r4, #112]
 3174 0362 042B     		cmp	r3, #4
 3175 0364 0ED0     		beq	.L660
 3176 0366 0323     		movs	r3, #3
 3177 0368 C4F8AC30 		str	r3, [r4, #172]
 3178 036c 84F8B020 		strb	r2, [r4, #176]
 3179 0370 434B     		ldr	r3, .L663+4
 3180 0372 BAE7     		b	.L549
 3181              	.L652:
 3182 0374 022B     		cmp	r3, #2
 3183 0376 3FF404AF 		beq	.L518
 3184 037a 57E6     		b	.L512
 3185              	.L659:
 3186 037c 2046     		mov	r0, r4
 3187 037e FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.15
 3188 0382 CFE7     		b	.L517
 3189              	.L660:
 3190 0384 0323     		movs	r3, #3
 3191 0386 C4F8AC30 		str	r3, [r4, #172]
 3192 038a 3D4B     		ldr	r3, .L663+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 57


 3193 038c ADE7     		b	.L549
 3194              	.L657:
 3195 038e 0023     		movs	r3, #0
 3196 0390 2020     		movs	r0, #32
 3197 0392 04F1C601 		add	r1, r4, #198
 3198 0396 CDE90010 		strd	r1, r0, [sp]
 3199 039a CDE90233 		strd	r3, r3, [sp, #8]
 3200 039e 1A46     		mov	r2, r3
 3201 03a0 0E21     		movs	r1, #14
 3202 03a2 2046     		mov	r0, r4
 3203 03a4 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3204 03a8 0546     		mov	r5, r0
 3205 03aa B1E6     		b	.L514
 3206              	.L658:
 3207 03ac 0023     		movs	r3, #0
 3208 03ae CDE90233 		strd	r3, r3, [sp, #8]
 3209 03b2 CDE90033 		strd	r3, r3, [sp]
 3210 03b6 1A46     		mov	r2, r3
 3211 03b8 0F21     		movs	r1, #15
 3212 03ba 2046     		mov	r0, r4
 3213 03bc FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 3214 03c0 0546     		mov	r5, r0
 3215 03c2 A5E6     		b	.L514
 3216              	.L654:
 3217 03c4 0320     		movs	r0, #3
 3218 03c6 8C21     		movs	r1, #140
 3219 03c8 08AA     		add	r2, sp, #32
 3220 03ca CDE90033 		strd	r3, r3, [sp]
 3221 03ce C4F8AC00 		str	r0, [r4, #172]
 3222 03d2 CDE90221 		strd	r2, r1, [sp, #8]
 3223 03d6 2046     		mov	r0, r4
 3224 03d8 1A46     		mov	r2, r3
 3225 03da 0921     		movs	r1, #9
 3226 03dc FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17
 3227 03e0 0028     		cmp	r0, #0
 3228 03e2 04F1E706 		add	r6, r4, #231
 3229 03e6 07DD     		ble	.L532
 3230 03e8 089B     		ldr	r3, [sp, #32]
 3231 03ea C4F8B430 		str	r3, [r4, #180]
 3232 03ee 2022     		movs	r2, #32
 3233 03f0 13A9     		add	r1, sp, #76
 3234 03f2 3046     		mov	r0, r6
 3235 03f4 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 3236              	.L532:
 3237 03f8 04F1A905 		add	r5, r4, #169
 3238 03fc 6FEA0509 		mvn	r9, r5
 3239 0400 04F1AC08 		add	r8, r4, #172
 3240              	.L534:
 3241 0404 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 3242 0408 2BB1     		cbz	r3, .L533
 3243 040a 09EB0501 		add	r1, r9, r5
 3244 040e C9B2     		uxtb	r1, r1
 3245 0410 2046     		mov	r0, r4
 3246 0412 FFF7FEFF 		bl	_ZN13WiFiInterface13StartProtocolEh
 3247              	.L533:
 3248 0416 A845     		cmp	r8, r5
 3249 0418 F4D1     		bne	.L534
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 58


 3250 041a 94F8B130 		ldrb	r3, [r4, #177]	@ zero_extendqisi2
 3251 041e D4F87090 		ldr	r9, [r4, #112]
 3252 0422 D4F8B410 		ldr	r1, [r4, #180]
 3253 0426 0022     		movs	r2, #0
 3254 0428 062B     		cmp	r3, #6
 3255 042a C4F89C20 		str	r2, [r4, #156]
 3256 042e C4F81021 		str	r2, [r4, #272]
 3257 0432 96BF     		itet	ls
 3258 0434 134A     		ldrls	r2, .L663+8
 3259 0436 124D     		ldrhi	r5, .L663+4
 3260 0438 52F82350 		ldrls	r5, [r2, r3, lsl #2]
 3261 043c 0DF11008 		add	r8, sp, #16
 3262 0440 4046     		mov	r0, r8
 3263 0442 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 3264 0446 CDE90068 		strd	r6, r8, [sp]
 3265 044a 2B46     		mov	r3, r5
 3266 044c 4846     		mov	r0, r9
 3267 044e 0E4A     		ldr	r2, .L663+12
 3268 0450 8521     		movs	r1, #133
 3269 0452 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3270 0456 E9E5     		b	.L512
 3271              	.L504:
 3272 0458 0C4A     		ldr	r2, .L663+16
 3273 045a 206F     		ldr	r0, [r4, #112]
 3274 045c 8521     		movs	r1, #133
 3275 045e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3276 0462 D4F8AC30 		ldr	r3, [r4, #172]
 3277 0466 002B     		cmp	r3, #0
 3278 0468 3FF4E0AD 		beq	.L512
 3279 046c 2046     		mov	r0, r4
 3280 046e FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.15
 3281 0472 DBE5     		b	.L512
 3282              	.L655:
 3283 0474 0323     		movs	r3, #3
 3284 0476 C4F8AC30 		str	r3, [r4, #172]
 3285 047a 33E7     		b	.L553
 3286              	.L664:
 3287              		.align	2
 3288              	.L663:
 3289 047c 4C000000 		.word	.LC59
 3290 0480 00000000 		.word	.LC1
 3291 0484 00000000 		.word	.LANCHOR2
 3292 0488 90000000 		.word	.LC61
 3293 048c 18000000 		.word	.LC58
 3294              		.size	_ZN13WiFiInterface4SpinEb, .-_ZN13WiFiInterface4SpinEb
 3295              		.section	.text._ZN13WiFiInterface9StartWiFiEv,"ax",%progbits
 3296              		.align	1
 3297              		.p2align 2,,3
 3298              		.global	_ZN13WiFiInterface9StartWiFiEv
 3299              		.syntax unified
 3300              		.thumb
 3301              		.thumb_func
 3302              		.fpu fpv4-sp-d16
 3303              		.type	_ZN13WiFiInterface9StartWiFiEv, %function
 3304              	_ZN13WiFiInterface9StartWiFiEv:
 3305              		@ args = 0, pretend = 0, frame = 0
 3306              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 59


 3307 0000 10B5     		push	{r4, lr}
 3308 0002 0121     		movs	r1, #1
 3309 0004 0446     		mov	r4, r0
 3310 0006 6420     		movs	r0, #100
 3311 0008 FFF7FEFF 		bl	digitalWrite
 3312 000c 0748     		ldr	r0, .L667
 3313 000e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3314 0012 0749     		ldr	r1, .L667+4
 3315 0014 0748     		ldr	r0, .L667+8
 3316 0016 FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 3317 001a 0023     		movs	r3, #0
 3318 001c 0122     		movs	r2, #1
 3319 001e 84F83021 		strb	r2, [r4, #304]
 3320 0022 84F83231 		strb	r3, [r4, #306]
 3321 0026 84F83131 		strb	r3, [r4, #305]
 3322 002a 10BD     		pop	{r4, pc}
 3323              	.L668:
 3324              		.align	2
 3325              	.L667:
 3326 002c 080C0000 		.word	g_APinDescription+3080
 3327 0030 80240100 		.word	74880
 3328 0034 00000000 		.word	Serial1
 3329              		.size	_ZN13WiFiInterface9StartWiFiEv, .-_ZN13WiFiInterface9StartWiFiEv
 3330              		.section	.text._ZN13WiFiInterface5StartEv,"ax",%progbits
 3331              		.align	1
 3332              		.p2align 2,,3
 3333              		.global	_ZN13WiFiInterface5StartEv
 3334              		.syntax unified
 3335              		.thumb
 3336              		.thumb_func
 3337              		.fpu fpv4-sp-d16
 3338              		.type	_ZN13WiFiInterface5StartEv, %function
 3339              	_ZN13WiFiInterface5StartEv:
 3340              		@ args = 0, pretend = 0, frame = 0
 3341              		@ frame_needed = 0, uses_anonymous_args = 0
 3342 0000 10B5     		push	{r4, lr}
 3343 0002 0022     		movs	r2, #0
 3344 0004 0446     		mov	r4, r0
 3345 0006 0321     		movs	r1, #3
 3346 0008 6420     		movs	r0, #100
 3347 000a FFF7FEFF 		bl	pinModeDuet
 3348 000e 0022     		movs	r2, #0
 3349 0010 0421     		movs	r1, #4
 3350 0012 6520     		movs	r0, #101
 3351 0014 FFF7FEFF 		bl	pinModeDuet
 3352 0018 0022     		movs	r2, #0
 3353 001a 0321     		movs	r1, #3
 3354 001c 5E20     		movs	r0, #94
 3355 001e FFF7FEFF 		bl	pinModeDuet
 3356 0022 0022     		movs	r2, #0
 3357 0024 0421     		movs	r1, #4
 3358 0026 5F20     		movs	r0, #95
 3359 0028 FFF7FEFF 		bl	pinModeDuet
 3360 002c 0022     		movs	r2, #0
 3361 002e 0121     		movs	r1, #1
 3362 0030 0C20     		movs	r0, #12
 3363 0032 FFF7FEFF 		bl	pinModeDuet
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 60


 3364 0036 0022     		movs	r2, #0
 3365 0038 0321     		movs	r1, #3
 3366 003a 0B20     		movs	r0, #11
 3367 003c FFF7FEFF 		bl	pinModeDuet
 3368 0040 3220     		movs	r0, #50
 3369 0042 FFF7FEFF 		bl	_Z5delaym
 3370 0046 2046     		mov	r0, r4
 3371 0048 FFF7FEFF 		bl	_ZN13WiFiInterface9StartWiFiEv
 3372 004c 3220     		movs	r0, #50
 3373 004e FFF7FEFF 		bl	_Z5delaym
 3374 0052 0022     		movs	r2, #0
 3375 0054 1146     		mov	r1, r2
 3376 0056 0B20     		movs	r0, #11
 3377 0058 FFF7FEFF 		bl	pinModeDuet
 3378 005c 0022     		movs	r2, #0
 3379 005e 0121     		movs	r1, #1
 3380 0060 5F20     		movs	r0, #95
 3381 0062 FFF7FEFF 		bl	pinModeDuet
 3382 0066 0023     		movs	r3, #0
 3383 0068 C4F80C31 		str	r3, [r4, #268]
 3384 006c C4F80831 		str	r3, [r4, #264]
 3385 0070 C4F81031 		str	r3, [r4, #272]
 3386 0074 C4F81C31 		str	r3, [r4, #284]
 3387 0078 C4F81831 		str	r3, [r4, #280]
 3388 007c C4F81431 		str	r3, [r4, #276]
 3389 0080 FFF7FEFF 		bl	millis
 3390 0084 0123     		movs	r3, #1
 3391 0086 6067     		str	r0, [r4, #116]
 3392 0088 C4F8AC30 		str	r3, [r4, #172]
 3393 008c 10BD     		pop	{r4, pc}
 3394              		.size	_ZN13WiFiInterface5StartEv, .-_ZN13WiFiInterface5StartEv
 3395 008e 00BF     		.section	.text._ZN13WiFiInterface8ActivateEv,"ax",%progbits
 3396              		.align	1
 3397              		.p2align 2,,3
 3398              		.global	_ZN13WiFiInterface8ActivateEv
 3399              		.syntax unified
 3400              		.thumb
 3401              		.thumb_func
 3402              		.fpu fpv4-sp-d16
 3403              		.type	_ZN13WiFiInterface8ActivateEv, %function
 3404              	_ZN13WiFiInterface8ActivateEv:
 3405              		@ args = 0, pretend = 0, frame = 0
 3406              		@ frame_needed = 0, uses_anonymous_args = 0
 3407              		@ link register save eliminated.
 3408 0000 90F8B220 		ldrb	r2, [r0, #178]	@ zero_extendqisi2
 3409 0004 5AB9     		cbnz	r2, .L671
 3410 0006 90F8B020 		ldrb	r2, [r0, #176]	@ zero_extendqisi2
 3411 000a 0121     		movs	r1, #1
 3412 000c 80F8B210 		strb	r1, [r0, #178]
 3413 0010 1AB9     		cbnz	r2, .L674
 3414 0012 006F     		ldr	r0, [r0, #112]
 3415 0014 024A     		ldr	r2, .L675
 3416 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3417              	.L674:
 3418 001a FFF7FEBF 		b	_ZN13WiFiInterface5StartEv
 3419              	.L671:
 3420 001e 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 61


 3421              	.L676:
 3422              		.align	2
 3423              	.L675:
 3424 0020 00000000 		.word	.LC63
 3425              		.size	_ZN13WiFiInterface8ActivateEv, .-_ZN13WiFiInterface8ActivateEv
 3426              		.section	.text._ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_,"ax",%progbits
 3427              		.align	1
 3428              		.p2align 2,,3
 3429              		.global	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_
 3430              		.syntax unified
 3431              		.thumb
 3432              		.thumb_func
 3433              		.fpu fpv4-sp-d16
 3434              		.type	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_, %function
 3435              	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_:
 3436              		@ args = 0, pretend = 0, frame = 8
 3437              		@ frame_needed = 0, uses_anonymous_args = 0
 3438 0000 70B5     		push	{r4, r5, r6, lr}
 3439 0002 0446     		mov	r4, r0
 3440 0004 82B0     		sub	sp, sp, #8
 3441 0006 79B1     		cbz	r1, .L678
 3442 0008 0129     		cmp	r1, #1
 3443 000a 20D0     		beq	.L708
 3444 000c 0229     		cmp	r1, #2
 3445 000e 90F8B220 		ldrb	r2, [r0, #178]	@ zero_extendqisi2
 3446 0012 3CD0     		beq	.L682
 3447 0014 CAB1     		cbz	r2, .L709
 3448 0016 D0F8AC30 		ldr	r3, [r0, #172]
 3449 001a 0022     		movs	r2, #0
 3450 001c 80F8B020 		strb	r2, [r0, #176]
 3451 0020 4BBB     		cbnz	r3, .L710
 3452              	.L702:
 3453 0022 0120     		movs	r0, #1
 3454 0024 02B0     		add	sp, sp, #8
 3455              		@ sp needed
 3456 0026 70BD     		pop	{r4, r5, r6, pc}
 3457              	.L678:
 3458 0028 90F8B230 		ldrb	r3, [r0, #178]	@ zero_extendqisi2
 3459 002c 3BB1     		cbz	r3, .L707
 3460 002e D0F8AC30 		ldr	r3, [r0, #172]
 3461 0032 002B     		cmp	r3, #0
 3462 0034 3BD0     		beq	.L695
 3463 0036 90F8B120 		ldrb	r2, [r0, #177]	@ zero_extendqisi2
 3464 003a 012A     		cmp	r2, #1
 3465 003c 24D0     		beq	.L688
 3466              	.L707:
 3467 003e 0121     		movs	r1, #1
 3468              	.L681:
 3469 0040 0120     		movs	r0, #1
 3470 0042 84F8B010 		strb	r1, [r4, #176]
 3471 0046 02B0     		add	sp, sp, #8
 3472              		@ sp needed
 3473 0048 70BD     		pop	{r4, r5, r6, pc}
 3474              	.L709:
 3475 004a 1146     		mov	r1, r2
 3476 004c F8E7     		b	.L681
 3477              	.L708:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 62


 3478 004e 1546     		mov	r5, r2
 3479 0050 00F1C606 		add	r6, r0, #198
 3480 0054 2122     		movs	r2, #33
 3481 0056 0021     		movs	r1, #0
 3482 0058 3046     		mov	r0, r6
 3483 005a 0193     		str	r3, [sp, #4]
 3484 005c FFF7FEFF 		bl	memset
 3485 0060 2122     		movs	r2, #33
 3486 0062 3046     		mov	r0, r6
 3487 0064 2968     		ldr	r1, [r5]
 3488 0066 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 3489 006a 94F8B220 		ldrb	r2, [r4, #178]	@ zero_extendqisi2
 3490 006e 019B     		ldr	r3, [sp, #4]
 3491 0070 22BB     		cbnz	r2, .L680
 3492 0072 0421     		movs	r1, #4
 3493 0074 E4E7     		b	.L681
 3494              	.L710:
 3495 0076 FFF7FEFF 		bl	_ZN13WiFiInterface4StopEv.part.15
 3496 007a 206F     		ldr	r0, [r4, #112]
 3497 007c 154A     		ldr	r2, .L711
 3498 007e 3521     		movs	r1, #53
 3499 0080 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3500 0084 CDE7     		b	.L702
 3501              	.L693:
 3502 0086 0422     		movs	r2, #4
 3503              	.L688:
 3504 0088 84F8B020 		strb	r2, [r4, #176]
 3505 008c C9E7     		b	.L702
 3506              	.L682:
 3507 008e 002A     		cmp	r2, #0
 3508 0090 D6D0     		beq	.L681
 3509 0092 D0F8AC20 		ldr	r2, [r0, #172]
 3510 0096 5AB1     		cbz	r2, .L687
 3511 0098 90F8B120 		ldrb	r2, [r0, #177]	@ zero_extendqisi2
 3512 009c 022A     		cmp	r2, #2
 3513 009e F3D0     		beq	.L688
 3514              	.L689:
 3515 00a0 012A     		cmp	r2, #1
 3516 00a2 CDD0     		beq	.L681
 3517 00a4 1846     		mov	r0, r3
 3518 00a6 0C49     		ldr	r1, .L711+4
 3519 00a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3520 00ac B9E7     		b	.L702
 3521              	.L695:
 3522 00ae 0121     		movs	r1, #1
 3523              	.L687:
 3524 00b0 84F8B010 		strb	r1, [r4, #176]
 3525 00b4 2046     		mov	r0, r4
 3526 00b6 FFF7FEFF 		bl	_ZN13WiFiInterface5StartEv
 3527 00ba B2E7     		b	.L702
 3528              	.L680:
 3529 00bc D4F8AC20 		ldr	r2, [r4, #172]
 3530 00c0 32B1     		cbz	r2, .L692
 3531 00c2 94F8B120 		ldrb	r2, [r4, #177]	@ zero_extendqisi2
 3532 00c6 D11E     		subs	r1, r2, #3
 3533 00c8 0129     		cmp	r1, #1
 3534 00ca DCD9     		bls	.L693
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 63


 3535 00cc 0421     		movs	r1, #4
 3536 00ce E7E7     		b	.L689
 3537              	.L692:
 3538 00d0 0421     		movs	r1, #4
 3539 00d2 EDE7     		b	.L687
 3540              	.L712:
 3541              		.align	2
 3542              	.L711:
 3543 00d4 00000000 		.word	.LC64
 3544 00d8 18000000 		.word	.LC65
 3545              		.size	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_, .-_ZN13WiFiInterface15EnableInterfaceE
 3546              		.section	.text._ZN13WiFiInterface9ResetWiFiEv,"ax",%progbits
 3547              		.align	1
 3548              		.p2align 2,,3
 3549              		.global	_ZN13WiFiInterface9ResetWiFiEv
 3550              		.syntax unified
 3551              		.thumb
 3552              		.thumb_func
 3553              		.fpu fpv4-sp-d16
 3554              		.type	_ZN13WiFiInterface9ResetWiFiEv, %function
 3555              	_ZN13WiFiInterface9ResetWiFiEv:
 3556              		@ args = 0, pretend = 0, frame = 0
 3557              		@ frame_needed = 0, uses_anonymous_args = 0
 3558 0000 38B5     		push	{r3, r4, r5, lr}
 3559 0002 0022     		movs	r2, #0
 3560 0004 0446     		mov	r4, r0
 3561 0006 0321     		movs	r1, #3
 3562 0008 6420     		movs	r0, #100
 3563 000a FFF7FEFF 		bl	pinModeDuet
 3564 000e 0022     		movs	r2, #0
 3565 0010 0121     		movs	r1, #1
 3566 0012 0620     		movs	r0, #6
 3567 0014 FFF7FEFF 		bl	pinModeDuet
 3568 0018 0022     		movs	r2, #0
 3569 001a 0121     		movs	r1, #1
 3570 001c 0520     		movs	r0, #5
 3571 001e FFF7FEFF 		bl	pinModeDuet
 3572 0022 94F83031 		ldrb	r3, [r4, #304]	@ zero_extendqisi2
 3573 0026 0025     		movs	r5, #0
 3574 0028 84F8B150 		strb	r5, [r4, #177]
 3575 002c 03B9     		cbnz	r3, .L719
 3576 002e 38BD     		pop	{r3, r4, r5, pc}
 3577              	.L719:
 3578 0030 0248     		ldr	r0, .L720
 3579 0032 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 3580 0036 84F83051 		strb	r5, [r4, #304]
 3581 003a 38BD     		pop	{r3, r4, r5, pc}
 3582              	.L721:
 3583              		.align	2
 3584              	.L720:
 3585 003c 00000000 		.word	Serial1
 3586              		.size	_ZN13WiFiInterface9ResetWiFiEv, .-_ZN13WiFiInterface9ResetWiFiEv
 3587              		.section	.text._ZN13WiFiInterface4InitEv,"ax",%progbits
 3588              		.align	1
 3589              		.p2align 2,,3
 3590              		.global	_ZN13WiFiInterface4InitEv
 3591              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 64


 3592              		.thumb
 3593              		.thumb_func
 3594              		.fpu fpv4-sp-d16
 3595              		.type	_ZN13WiFiInterface4InitEv, %function
 3596              	_ZN13WiFiInterface4InitEv:
 3597              		@ args = 0, pretend = 0, frame = 0
 3598              		@ frame_needed = 0, uses_anonymous_args = 0
 3599 0000 70B5     		push	{r4, r5, r6, lr}
 3600 0002 1C49     		ldr	r1, .L728
 3601 0004 0646     		mov	r6, r0
 3602 0006 0430     		adds	r0, r0, #4
 3603 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 3604 000c 3046     		mov	r0, r6
 3605 000e FFF7FEFF 		bl	_ZN13WiFiInterface9ResetWiFiEv
 3606 0012 FFF7FEFF 		bl	millis
 3607 0016 3368     		ldr	r3, [r6]
 3608 0018 7067     		str	r0, [r6, #116]
 3609 001a 1C6C     		ldr	r4, [r3, #64]
 3610 001c 164B     		ldr	r3, .L728+4
 3611 001e 9C42     		cmp	r4, r3
 3612 0020 1ED1     		bne	.L723
 3613 0022 164A     		ldr	r2, .L728+8
 3614 0024 1268     		ldr	r2, [r2]
 3615 0026 0023     		movs	r3, #0
 3616 0028 C6E92D32 		strd	r3, r2, [r6, #180]
 3617 002c C6F8BC30 		str	r3, [r6, #188]
 3618              	.L724:
 3619 0030 06F17C05 		add	r5, r6, #124
 3620 0034 0024     		movs	r4, #0
 3621              	.L725:
 3622 0036 E1B2     		uxtb	r1, r4
 3623 0038 55F8040B 		ldr	r0, [r5], #4
 3624 003c 0134     		adds	r4, r4, #1
 3625 003e FFF7FEFF 		bl	_ZN10WiFiSocket4InitEh
 3626 0042 082C     		cmp	r4, #8
 3627 0044 F7D1     		bne	.L725
 3628 0046 3420     		movs	r0, #52
 3629 0048 FFF7FEFF 		bl	_Znwj
 3630 004c 3246     		mov	r2, r6
 3631 004e 0C49     		ldr	r1, .L728+12
 3632 0050 0446     		mov	r4, r0
 3633 0052 FFF7FEFF 		bl	_ZN20WifiFirmwareUploaderC1ER9UARTClassR13WiFiInterface
 3634 0056 0023     		movs	r3, #0
 3635 0058 B467     		str	r4, [r6, #120]
 3636 005a C6F89C30 		str	r3, [r6, #156]
 3637 005e 70BD     		pop	{r4, r5, r6, pc}
 3638              	.L723:
 3639 0060 084B     		ldr	r3, .L728+16
 3640 0062 064A     		ldr	r2, .L728+8
 3641 0064 0849     		ldr	r1, .L728+20
 3642 0066 1B68     		ldr	r3, [r3]
 3643 0068 1268     		ldr	r2, [r2]
 3644 006a 0968     		ldr	r1, [r1]
 3645 006c 3046     		mov	r0, r6
 3646 006e A047     		blx	r4
 3647 0070 DEE7     		b	.L724
 3648              	.L729:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 65


 3649 0072 00BF     		.align	2
 3650              	.L728:
 3651 0074 00000000 		.word	.LC66
 3652 0078 00000000 		.word	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_
 3653 007c 00000000 		.word	.LANCHOR13
 3654 0080 00000000 		.word	Serial1
 3655 0084 00000000 		.word	_ZL14DefaultGateway
 3656 0088 00000000 		.word	.LANCHOR14
 3657              		.size	_ZN13WiFiInterface4InitEv, .-_ZN13WiFiInterface4InitEv
 3658              		.section	.text._ZN13WiFiInterface18ResetWiFiForUploadEb,"ax",%progbits
 3659              		.align	1
 3660              		.p2align 2,,3
 3661              		.global	_ZN13WiFiInterface18ResetWiFiForUploadEb
 3662              		.syntax unified
 3663              		.thumb
 3664              		.thumb_func
 3665              		.fpu fpv4-sp-d16
 3666              		.type	_ZN13WiFiInterface18ResetWiFiForUploadEb, %function
 3667              	_ZN13WiFiInterface18ResetWiFiForUploadEb:
 3668              		@ args = 0, pretend = 0, frame = 0
 3669              		@ frame_needed = 0, uses_anonymous_args = 0
 3670 0000 38B5     		push	{r3, r4, r5, lr}
 3671 0002 90F83031 		ldrb	r3, [r0, #304]	@ zero_extendqisi2
 3672 0006 0D46     		mov	r5, r1
 3673 0008 D3BB     		cbnz	r3, .L738
 3674              	.L731:
 3675 000a 0022     		movs	r2, #0
 3676 000c 0321     		movs	r1, #3
 3677 000e 6420     		movs	r0, #100
 3678 0010 FFF7FEFF 		bl	pinModeDuet
 3679 0014 0022     		movs	r2, #0
 3680 0016 0421     		movs	r1, #4
 3681 0018 6520     		movs	r0, #101
 3682 001a FFF7FEFF 		bl	pinModeDuet
 3683 001e 0022     		movs	r2, #0
 3684 0020 0321     		movs	r1, #3
 3685 0022 5E20     		movs	r0, #94
 3686 0024 FFF7FEFF 		bl	pinModeDuet
 3687 0028 0022     		movs	r2, #0
 3688 002a 0321     		movs	r1, #3
 3689 002c 5F20     		movs	r0, #95
 3690 002e FFF7FEFF 		bl	pinModeDuet
 3691 0032 0022     		movs	r2, #0
 3692 0034 0121     		movs	r1, #1
 3693 0036 0C20     		movs	r0, #12
 3694 0038 FFF7FEFF 		bl	pinModeDuet
 3695 003c 0B20     		movs	r0, #11
 3696 003e 0022     		movs	r2, #0
 3697 0040 0321     		movs	r1, #3
 3698 0042 FFF7FEFF 		bl	pinModeDuet
 3699 0046 3220     		movs	r0, #50
 3700 0048 FFF7FEFF 		bl	_Z5delaym
 3701 004c 45B9     		cbnz	r5, .L739
 3702 004e 1048     		ldr	r0, .L740
 3703 0050 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 3704 0054 0121     		movs	r1, #1
 3705 0056 6420     		movs	r0, #100
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 66


 3706 0058 BDE83840 		pop	{r3, r4, r5, lr}
 3707 005c FFF7FEBF 		b	digitalWrite
 3708              	.L739:
 3709 0060 0022     		movs	r2, #0
 3710 0062 0121     		movs	r1, #1
 3711 0064 0620     		movs	r0, #6
 3712 0066 FFF7FEFF 		bl	pinModeDuet
 3713 006a 0121     		movs	r1, #1
 3714 006c 0520     		movs	r0, #5
 3715 006e 0022     		movs	r2, #0
 3716 0070 FFF7FEFF 		bl	pinModeDuet
 3717 0074 0121     		movs	r1, #1
 3718 0076 6420     		movs	r0, #100
 3719 0078 BDE83840 		pop	{r3, r4, r5, lr}
 3720 007c FFF7FEBF 		b	digitalWrite
 3721              	.L738:
 3722 0080 0446     		mov	r4, r0
 3723 0082 0448     		ldr	r0, .L740+4
 3724 0084 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 3725 0088 0023     		movs	r3, #0
 3726 008a 84F83031 		strb	r3, [r4, #304]
 3727 008e BCE7     		b	.L731
 3728              	.L741:
 3729              		.align	2
 3730              	.L740:
 3731 0090 080C0000 		.word	g_APinDescription+3080
 3732 0094 00000000 		.word	Serial1
 3733              		.size	_ZN13WiFiInterface18ResetWiFiForUploadEb, .-_ZN13WiFiInterface18ResetWiFiForUploadEb
 3734              		.global	_ZTV13WiFiInterface
 3735              		.global	_ZN13WiFiInterface16objectModelTableE
 3736              		.set	_ZL14DefaultGateway,_ZL16DefaultIpAddress
 3737              		.section	.bss._ZL13wifiInterface,"aw",%nobits
 3738              		.align	2
 3739              		.set	.LANCHOR1,. + 0
 3740              		.type	_ZL13wifiInterface, %object
 3741              		.size	_ZL13wifiInterface, 4
 3742              	_ZL13wifiInterface:
 3743 0000 00000000 		.space	4
 3744              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 3745              		.align	2
 3746              		.set	.LANCHOR13,. + 0
 3747              		.type	_ZL14DefaultNetMask, %object
 3748              		.size	_ZL14DefaultNetMask, 4
 3749              	_ZL14DefaultNetMask:
 3750 0000 00000000 		.space	4
 3751              		.section	.bss._ZL15transferPending,"aw",%nobits
 3752              		.set	.LANCHOR3,. + 0
 3753              		.type	_ZL15transferPending, %object
 3754              		.size	_ZL15transferPending, 1
 3755              	_ZL15transferPending:
 3756 0000 00       		.space	1
 3757              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3758              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3759              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3760              	_ZL28cpu_irq_prev_interrupt_state:
 3761 0000 00       		.space	1
 3762              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 67


 3763              		.align	2
 3764              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3765              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3766              	_ZL32cpu_irq_critical_section_counter:
 3767 0000 00000000 		.space	4
 3768              		.section	.bss._ZL8bufferIn,"aw",%nobits
 3769              		.align	2
 3770              		.set	.LANCHOR5,. + 0
 3771              		.type	_ZL8bufferIn, %object
 3772              		.size	_ZL8bufferIn, 2060
 3773              	_ZL8bufferIn:
 3774 0000 00000000 		.space	2060
 3774      00000000 
 3774      00000000 
 3774      00000000 
 3774      00000000 
 3775              		.section	.bss._ZL9bufferOut,"aw",%nobits
 3776              		.align	2
 3777              		.set	.LANCHOR4,. + 0
 3778              		.type	_ZL9bufferOut, %object
 3779              		.size	_ZL9bufferOut, 2060
 3780              	_ZL9bufferOut:
 3781 0000 00000000 		.space	2060
 3781      00000000 
 3781      00000000 
 3781      00000000 
 3781      00000000 
 3782              		.section	.rodata.._1,"a",%progbits
 3783              		.align	2
 3784              		.set	.LANCHOR12,. + 0
 3785              		.type	._1, %object
 3786              		.size	._1, 4
 3787              	._1:
 3788 0000 FF       		.byte	-1
 3789 0001 FF       		.byte	-1
 3790 0002 FF       		.byte	-1
 3791 0003 00       		.byte	0
 3792              		.section	.rodata.CSWTCH.174,"a",%progbits
 3793              		.align	2
 3794              		.set	.LANCHOR10,. + 0
 3795              		.type	CSWTCH.174, %object
 3796              		.size	CSWTCH.174, 20
 3797              	CSWTCH.174:
 3798 0000 FC000000 		.word	.LC78
 3799 0004 7C010000 		.word	.LC85
 3800 0008 7C010000 		.word	.LC85
 3801 000c 88010000 		.word	.LC86
 3802 0010 90010000 		.word	.LC87
 3803              		.section	.rodata.CSWTCH.176,"a",%progbits
 3804              		.align	2
 3805              		.set	.LANCHOR2,. + 0
 3806              		.type	CSWTCH.176, %object
 3807              		.size	CSWTCH.176, 28
 3808              	CSWTCH.176:
 3809 0000 FC000000 		.word	.LC78
 3810 0004 08010000 		.word	.LC79
 3811 0008 10010000 		.word	.LC80
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 68


 3812 000c 28010000 		.word	.LC81
 3813 0010 3C010000 		.word	.LC82
 3814 0014 58010000 		.word	.LC83
 3815 0018 6C010000 		.word	.LC84
 3816              		.section	.rodata.CSWTCH.186,"a",%progbits
 3817              		.align	2
 3818              		.set	.LANCHOR6,. + 0
 3819              		.type	CSWTCH.186, %object
 3820              		.size	CSWTCH.186, 48
 3821              	CSWTCH.186:
 3822 0000 00000000 		.word	.LC67
 3823 0004 10000000 		.word	.LC68
 3824 0008 2C000000 		.word	.LC69
 3825 000c 48000000 		.word	.LC70
 3826 0010 64000000 		.word	.LC71
 3827 0014 84000000 		.word	.LC72
 3828 0018 14000000 		.word	.LC2
 3829 001c 90000000 		.word	.LC73
 3830 0020 A0000000 		.word	.LC74
 3831 0024 B8000000 		.word	.LC75
 3832 0028 D0000000 		.word	.LC76
 3833 002c EC000000 		.word	.LC77
 3834              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 3835              		.align	2
 3836              		.set	.LANCHOR8,. + 0
 3837              		.type	_ZL13ProtocolNames, %object
 3838              		.size	_ZL13ProtocolNames, 12
 3839              	_ZL13ProtocolNames:
 3840 0000 40020000 		.word	.LC99
 3841 0004 48020000 		.word	.LC100
 3842 0008 4C020000 		.word	.LC101
 3843              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 3844              		.align	2
 3845              		.set	.LANCHOR14,. + 0
 3846              		.type	_ZL16DefaultIpAddress, %object
 3847              		.size	_ZL16DefaultIpAddress, 4
 3848              	_ZL16DefaultIpAddress:
 3849 0000 00000000 		.space	4
 3850              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 3851              		.align	2
 3852              		.set	.LANCHOR11,. + 0
 3853              		.type	_ZL18DefaultPortNumbers, %object
 3854              		.size	_ZL18DefaultPortNumbers, 6
 3855              	_ZL18DefaultPortNumbers:
 3856 0000 5000     		.short	80
 3857 0002 1500     		.short	21
 3858 0004 1700     		.short	23
 3859              		.section	.rodata._ZN13WiFiInterface11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 3860              		.align	2
 3861              	.LC34:
 3862 0000 6C696768 		.ascii	"light\000"
 3862      7400
 3863 0006 0000     		.space	2
 3864              	.LC35:
 3865 0008 6E6F6E65 		.ascii	"none\000"
 3865      00
 3866 000d 000000   		.space	3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 69


 3867              	.LC36:
 3868 0010 6D6F6465 		.ascii	"modem\000"
 3868      6D00
 3869 0016 0000     		.space	2
 3870              	.LC37:
 3871 0018 2D205769 		.ascii	"- WiFi -\012\000"
 3871      4669202D 
 3871      0A00
 3872 0022 0000     		.space	2
 3873              	.LC38:
 3874 0024 4E657477 		.ascii	"Network state is %s\012\000"
 3874      6F726B20 
 3874      73746174 
 3874      65206973 
 3874      2025730A 
 3875 0039 000000   		.space	3
 3876              	.LC39:
 3877 003c 57694669 		.ascii	"WiFi module is %s\012\000"
 3877      206D6F64 
 3877      756C6520 
 3877      69732025 
 3877      730A00
 3878 004f 00       		.space	1
 3879              	.LC40:
 3880 0050 4661696C 		.ascii	"Failed messages: pending %u, notready %u, noresp %u"
 3880      6564206D 
 3880      65737361 
 3880      6765733A 
 3880      2070656E 
 3881 0083 0A00     		.ascii	"\012\000"
 3882 0085 000000   		.space	3
 3883              	.LC41:
 3884 0088 57694669 		.ascii	"WiFi firmware version %s\012\000"
 3884      20666972 
 3884      6D776172 
 3884      65207665 
 3884      7273696F 
 3885 00a2 0000     		.space	2
 3886              	.LC42:
 3887 00a4 57694669 		.ascii	"WiFi MAC address %02x:%02x:%02x:%02x:%02x:%02x\012\000"
 3887      204D4143 
 3887      20616464 
 3887      72657373 
 3887      20253032 
 3888              	.LC43:
 3889 00d4 57694669 		.ascii	"WiFi Vcc %.2f, reset reason %s\012\000"
 3889      20566363 
 3889      20252E32 
 3889      662C2072 
 3889      65736574 
 3890              	.LC44:
 3891 00f4 57694669 		.ascii	"WiFi flash size %lu, free heap %lu\012\000"
 3891      20666C61 
 3891      73682073 
 3891      697A6520 
 3891      256C752C 
 3892              	.LC45:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 70


 3893 0118 57694669 		.ascii	"WiFi IP address %s\012\000"
 3893      20495020 
 3893      61646472 
 3893      65737320 
 3893      25730A00 
 3894              	.LC46:
 3895 012c 57694669 		.ascii	"WiFi signal strength %ddBm, reconnections %u, sleep"
 3895      20736967 
 3895      6E616C20 
 3895      73747265 
 3895      6E677468 
 3896 015f 206D6F64 		.ascii	" mode %s\012\000"
 3896      65202573 
 3896      0A00
 3897 0169 000000   		.space	3
 3898              	.LC47:
 3899 016c 436F6E6E 		.ascii	"Connected clients %u\012\000"
 3899      65637465 
 3899      6420636C 
 3899      69656E74 
 3899      73202575 
 3900 0182 0000     		.space	2
 3901              	.LC48:
 3902 0184 4661696C 		.ascii	"Failed to request ESP stats\012\000"
 3902      65642074 
 3902      6F207265 
 3902      71756573 
 3902      74204553 
 3903 01a1 000000   		.space	3
 3904              	.LC49:
 3905 01a4 4661696C 		.ascii	"Failed to get WiFi status\012\000"
 3905      65642074 
 3905      6F206765 
 3905      74205769 
 3905      46692073 
 3906 01bf 00       		.space	1
 3907              	.LC50:
 3908 01c0 536F636B 		.ascii	"Socket states:\000"
 3908      65742073 
 3908      74617465 
 3908      733A00
 3909 01cf 00       		.space	1
 3910              	.LC51:
 3911 01d0 20256400 		.ascii	" %d\000"
 3912              	.LC52:
 3913 01d4 0A00     		.ascii	"\012\000"
 3914              		.section	.rodata._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.part.17.str1.4,"aMS",%p
 3915              		.align	2
 3916              	.LC8:
 3917 0000 756E6B6E 		.ascii	"unknown response code\000"
 3917      6F776E20 
 3917      72657370 
 3917      6F6E7365 
 3917      20636F64 
 3918 0016 0000     		.space	2
 3919              	.LC9:
 3920 0018 52657370 		.ascii	"ResponseBusy\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 71


 3920      6F6E7365 
 3920      42757379 
 3920      0A00
 3921 0026 0000     		.space	2
 3922              	.LC10:
 3923 0028 52657370 		.ascii	"ResponseTimeout, pending=%d\012\000"
 3923      6F6E7365 
 3923      54696D65 
 3923      6F75742C 
 3923      2070656E 
 3924 0045 000000   		.space	3
 3925              	.LC11:
 3926 0048 62616420 		.ascii	"bad format version %02x\012\000"
 3926      666F726D 
 3926      61742076 
 3926      65727369 
 3926      6F6E2025 
 3927 0061 000000   		.space	3
 3928              	.LC12:
 3929 0064 4E657477 		.ascii	"Network command %d socket %u returned error: %s\012"
 3929      6F726B20 
 3929      636F6D6D 
 3929      616E6420 
 3929      25642073 
 3930 0094 00       		.ascii	"\000"
 3931              		.section	.rodata._ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj.str1.4,"aMS",%progbits,
 3932              		.align	2
 3933              	.LC18:
 3934 0000 52657370 		.ascii	"ResponseNetworkDisabled\012\000"
 3934      6F6E7365 
 3934      4E657477 
 3934      6F726B44 
 3934      69736162 
 3935              		.section	.rodata._ZN13WiFiInterface12GetNewStatusEv.str1.4,"aMS",%progbits,1
 3936              		.align	2
 3937              	.LC55:
 3938 0000 4572726F 		.ascii	"Error retrieving WiFi status message: %s\012\000"
 3938      72207265 
 3938      74726965 
 3938      76696E67 
 3938      20576946 
 3939 002a 0000     		.space	2
 3940              	.LC56:
 3941 002c 57694669 		.ascii	"WiFi reported error: %s\012\000"
 3941      20726570 
 3941      6F727465 
 3941      64206572 
 3941      726F723A 
 3942              		.section	.rodata._ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef.str1.4,"aMS",%progbits,1
 3943              		.align	2
 3944              	.LC53:
 3945 0000 4572726F 		.ascii	"Error: this firmware does not support TLS\000"
 3945      723A2074 
 3945      68697320 
 3945      6669726D 
 3945      77617265 
 3946 002a 0000     		.space	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 72


 3947              	.LC54:
 3948 002c 496E7661 		.ascii	"Invalid protocol parameter\000"
 3948      6C696420 
 3948      70726F74 
 3948      6F636F6C 
 3948      20706172 
 3949              		.section	.rodata._ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer.st
 3950              		.align	2
 3951              	.LC20:
 3952 0000 57694669 		.ascii	"WiFi password must be at least 8 characters\000"
 3952      20706173 
 3952      73776F72 
 3952      64206D75 
 3952      73742062 
 3953              	.LC21:
 3954 002c 4661696C 		.ascii	"Failed to add SSID to remembered list\000"
 3954      65642074 
 3954      6F206164 
 3954      64205353 
 3954      49442074 
 3955 0052 0000     		.space	2
 3956              	.LC22:
 3957 0054 42616420 		.ascii	"Bad or missing parameter\000"
 3957      6F72206D 
 3957      69737369 
 3957      6E672070 
 3957      6172616D 
 3958 006d 000000   		.space	3
 3959              	.LC23:
 3960 0070 52656D65 		.ascii	"Remembered networks:\000"
 3960      6D626572 
 3960      6564206E 
 3960      6574776F 
 3960      726B733A 
 3961 0085 000000   		.space	3
 3962              	.LC24:
 3963 0088 0A257320 		.ascii	"\012%s IP=%s GW=%s NM=%s\000"
 3963      49503D25 
 3963      73204757 
 3963      3D257320 
 3963      4E4D3D25 
 3964 009e 0000     		.space	2
 3965              	.LC25:
 3966 00a0 4E6F2072 		.ascii	"No remembered networks\000"
 3966      656D656D 
 3966      62657265 
 3966      64206E65 
 3966      74776F72 
 3967 00b7 00       		.space	1
 3968              	.LC26:
 3969 00b8 4661696C 		.ascii	"Failed to retrieve network list\000"
 3969      65642074 
 3969      6F207265 
 3969      74726965 
 3969      7665206E 
 3970              	.LC27:
 3971 00d8 2A00     		.ascii	"*\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 73


 3972 00da 0000     		.space	2
 3973              	.LC28:
 3974 00dc 4661696C 		.ascii	"Failed to reset the WiFi module to factory settings"
 3974      65642074 
 3974      6F207265 
 3974      73657420 
 3974      74686520 
 3975 010f 00       		.ascii	"\000"
 3976              	.LC29:
 3977 0110 4661696C 		.ascii	"Failed to remove SSID from remembered list\000"
 3977      65642074 
 3977      6F207265 
 3977      6D6F7665 
 3977      20535349 
 3978 013b 00       		.space	1
 3979              	.LC30:
 3980 013c 4661696C 		.ascii	"Failed to configure access point parameters\000"
 3980      65642074 
 3980      6F20636F 
 3980      6E666967 
 3980      75726520 
 3981              	.LC31:
 3982 0168 4F776E20 		.ascii	"Own SSID not configured\000"
 3982      53534944 
 3982      206E6F74 
 3982      20636F6E 
 3982      66696775 
 3983              	.LC32:
 3984 0180 4F776E20 		.ascii	"Own SSID: %s IP=%s GW=%s NM=%s\000"
 3984      53534944 
 3984      3A202573 
 3984      2049503D 
 3984      25732047 
 3985 019f 00       		.space	1
 3986              	.LC33:
 3987 01a0 4661696C 		.ascii	"Failed to retrieve own SSID data\000"
 3987      65642074 
 3987      6F207265 
 3987      74726965 
 3987      7665206F 
 3988              		.section	.rodata._ZN13WiFiInterface14UpdateHostnameEPKc.str1.4,"aMS",%progbits,1
 3989              		.align	2
 3990              	.LC19:
 3991 0000 4572726F 		.ascii	"Error: Could not set WiFi hostname\012\000"
 3991      723A2043 
 3991      6F756C64 
 3991      206E6F74 
 3991      20736574 
 3992              		.section	.rodata._ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_.str1.4,"aMS",%progbits,1
 3993              		.align	2
 3994              	.LC64:
 3995 0000 57694669 		.ascii	"WiFi module stopped\012\000"
 3995      206D6F64 
 3995      756C6520 
 3995      73746F70 
 3995      7065640A 
 3996 0015 000000   		.space	3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 74


 3997              	.LC65:
 3998 0018 5475726E 		.ascii	"Turn off the current WiFi mode before selecting a n"
 3998      206F6666 
 3998      20746865 
 3998      20637572 
 3998      72656E74 
 3999 004b 6577206F 		.ascii	"ew one\000"
 3999      6E6500
 4000              		.section	.rodata._ZN13WiFiInterface15GetNetworkStateERK9StringRef.str1.4,"aMS",%progbits,1
 4001              		.align	2
 4002              	.LC1:
 4003 0000 696E2061 		.ascii	"in an unknown state\000"
 4003      6E20756E 
 4003      6B6E6F77 
 4003      6E207374 
 4003      61746500 
 4004              	.LC2:
 4005 0014 57694669 		.ascii	"WiFi module is disabled\000"
 4005      206D6F64 
 4005      756C6520 
 4005      69732064 
 4005      69736162 
 4006              	.LC3:
 4007 002c 57694669 		.ascii	"WiFi module is being started\000"
 4007      206D6F64 
 4007      756C6520 
 4007      69732062 
 4007      65696E67 
 4008 0049 000000   		.space	3
 4009              	.LC4:
 4010 004c 57694669 		.ascii	"WiFi module is changing mode\000"
 4010      206D6F64 
 4010      756C6520 
 4010      69732063 
 4010      68616E67 
 4011 0069 000000   		.space	3
 4012              	.LC5:
 4013 006c 57694669 		.ascii	"WiFi module is \000"
 4013      206D6F64 
 4013      756C6520 
 4013      69732000 
 4014              	.LC6:
 4015 007c 25732C20 		.ascii	"%s, IP address %s\000"
 4015      49502061 
 4015      64647265 
 4015      73732025 
 4015      7300
 4016 008e 0000     		.space	2
 4017              	.LC7:
 4018 0090 556E6B6E 		.ascii	"Unknown network state\000"
 4018      6F776E20 
 4018      6E657477 
 4018      6F726B20 
 4018      73746174 
 4019              		.section	.rodata._ZN13WiFiInterface16objectModelTableE,"a",%progbits
 4020              		.align	2
 4021              		.set	.LANCHOR0,. + 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 75


 4022              		.type	_ZN13WiFiInterface16objectModelTableE, %object
 4023              		.size	_ZN13WiFiInterface16objectModelTableE, 48
 4024              	_ZN13WiFiInterface16objectModelTableE:
 4025 0000 24020000 		.word	.LC95
 4026 0004 00000000 		.word	_ZN13WiFiInterfaceUlP11ObjectModelE_4_FUNES1_
 4027 0008 0B       		.byte	11
 4028 0009 00       		.space	1
 4029 000a 0000     		.short	0
 4030 000c 2C020000 		.word	.LC96
 4031 0010 00000000 		.word	_ZN13WiFiInterfaceUlP11ObjectModelE0_4_FUNES1_
 4032 0014 0B       		.byte	11
 4033 0015 00       		.space	1
 4034 0016 0000     		.short	0
 4035 0018 30020000 		.word	.LC97
 4036 001c 00000000 		.word	_ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_
 4037 0020 0A       		.byte	10
 4038 0021 00       		.space	1
 4039 0022 0000     		.short	0
 4040 0024 38020000 		.word	.LC98
 4041 0028 00000000 		.word	_ZN13WiFiInterfaceUlP11ObjectModelE2_4_FUNES1_
 4042 002c 0B       		.byte	11
 4043 002d 00       		.space	1
 4044 002e 0000     		.short	0
 4045              		.section	.rodata._ZN13WiFiInterface23TranslateEspResetReasonEm.str1.4,"aMS",%progbits,1
 4046              		.align	2
 4047              	.LC16:
 4048 0000 556E6B6E 		.ascii	"Unknown\000"
 4048      6F776E00 
 4049              		.section	.rodata._ZN13WiFiInterface4InitEv.str1.4,"aMS",%progbits,1
 4050              		.align	2
 4051              	.LC66:
 4052 0000 57694669 		.ascii	"WiFi\000"
 4052      00
 4053              		.section	.rodata._ZN13WiFiInterface4SpinEb.str1.4,"aMS",%progbits,1
 4054              		.align	2
 4055              	.LC57:
 4056 0000 57694669 		.ascii	"WiFi module started\012\000"
 4056      206D6F64 
 4056      756C6520 
 4056      73746172 
 4056      7465640A 
 4057 0015 000000   		.space	3
 4058              	.LC58:
 4059 0018 4572726F 		.ascii	"Error: Failed to initialise WiFi module, code %li\012"
 4059      723A2046 
 4059      61696C65 
 4059      6420746F 
 4059      20696E69 
 4060 004a 00       		.ascii	"\000"
 4061 004b 00       		.space	1
 4062              	.LC59:
 4063 004c 45535020 		.ascii	"ESP reported status change\012\000"
 4063      7265706F 
 4063      72746564 
 4063      20737461 
 4063      74757320 
 4064              	.LC60:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 76


 4065 0068 4661696C 		.ascii	"Failed to change WiFi mode (code %li)\012\000"
 4065      65642074 
 4065      6F206368 
 4065      616E6765 
 4065      20576946 
 4066 008f 00       		.space	1
 4067              	.LC61:
 4068 0090 57694669 		.ascii	"WiFi module is %s%s, IP address %s\012\000"
 4068      206D6F64 
 4068      756C6520 
 4068      69732025 
 4068      7325732C 
 4069              	.LC62:
 4070 00b4 57694669 		.ascii	"WiFi: %s\012\000"
 4070      3A202573 
 4070      0A00
 4071              		.section	.rodata._ZN13WiFiInterface8ActivateEv.str1.4,"aMS",%progbits,1
 4072              		.align	2
 4073              	.LC63:
 4074 0000 57694669 		.ascii	"WiFi is disabled.\012\000"
 4074      20697320 
 4074      64697361 
 4074      626C6564 
 4074      2E0A00
 4075              		.section	.rodata._ZN13WiFiInterfaceC2ER8Platform.str1.4,"aMS",%progbits,1
 4076              		.align	2
 4077              	.LC13:
 4078 0000 28756E6B 		.ascii	"(unknown)\000"
 4078      6E6F776E 
 4078      2900
 4079              		.section	.rodata._ZN13WiFiInterfaceUlP11ObjectModelE1_4_FUNES1_.str1.4,"aMS",%progbits,1
 4080              		.align	2
 4081              	.LC0:
 4082 0000 77696669 		.ascii	"wifi\000"
 4082      00
 4083              		.section	.rodata._ZNK13WiFiInterface17ReportOneProtocolEhRK9StringRef.str1.4,"aMS",%progbits,1
 4084              		.align	2
 4085              	.LC14:
 4086 0000 25732069 		.ascii	"%s is enabled on port %u\000"
 4086      7320656E 
 4086      61626C65 
 4086      64206F6E 
 4086      20706F72 
 4087 0019 000000   		.space	3
 4088              	.LC15:
 4089 001c 25732069 		.ascii	"%s is disabled\000"
 4089      73206469 
 4089      7361626C 
 4089      656400
 4090              		.section	.rodata._ZNK13WiFiInterface21TranslateNetworkStateEv.str1.4,"aMS",%progbits,1
 4091              		.align	2
 4092              	.LC17:
 4093 0000 756E6B6E 		.ascii	"unknown\000"
 4093      6F776E00 
 4094              		.section	.rodata._ZTV13WiFiInterface,"a",%progbits
 4095              		.align	2
 4096              		.set	.LANCHOR7,. + 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 77


 4097              		.type	_ZTV13WiFiInterface, %object
 4098              		.size	_ZTV13WiFiInterface, 96
 4099              	_ZTV13WiFiInterface:
 4100 0000 00000000 		.word	0
 4101 0004 00000000 		.word	0
 4102 0008 00000000 		.word	_ZNK13WiFiInterface19GetObjectModelTableERj
 4103 000c 00000000 		.word	_ZN13WiFiInterface4InitEv
 4104 0010 00000000 		.word	_ZN13WiFiInterface8ActivateEv
 4105 0014 00000000 		.word	_ZN13WiFiInterface4ExitEv
 4106 0018 00000000 		.word	_ZN13WiFiInterface4SpinEb
 4107 001c 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 4108 0020 00000000 		.word	_ZN13WiFiInterface11DiagnosticsE11MessageType
 4109 0024 00000000 		.word	_ZN13WiFiInterface15EnableInterfaceEiRK9StringRefS2_
 4110 0028 00000000 		.word	_ZN13WiFiInterface15GetNetworkStateERK9StringRef
 4111 002c 00000000 		.word	_ZNK13WiFiInterface11EnableStateEv
 4112 0030 00000000 		.word	_ZNK13WiFiInterface14InNetworkStackEv
 4113 0034 00000000 		.word	_ZNK13WiFiInterface15IsWiFiInterfaceEv
 4114 0038 00000000 		.word	_ZN13WiFiInterface14EnableProtocolEhiiRK9StringRef
 4115 003c 00000000 		.word	_ZN13WiFiInterface15DisableProtocolEhRK9StringRef
 4116 0040 00000000 		.word	_ZNK13WiFiInterface15ReportProtocolsERK9StringRef
 4117 0044 00000000 		.word	_ZNK13WiFiInterface12GetIPAddressEv
 4118 0048 00000000 		.word	_ZN13WiFiInterface12SetIPAddressE9IPAddressS0_S0_
 4119 004c 00000000 		.word	_ZN13WiFiInterface13SetMacAddressEPKh
 4120 0050 00000000 		.word	_ZNK13WiFiInterface13GetMacAddressEv
 4121 0054 00000000 		.word	_ZN13WiFiInterface14UpdateHostnameEPKc
 4122 0058 00000000 		.word	_ZN13WiFiInterface12OpenDataPortEt
 4123 005c 00000000 		.word	_ZN13WiFiInterface17TerminateDataPortEv
 4124              		.section	.rodata._ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts,"a",%progbits
 4125              		.align	2
 4126              		.set	.LANCHOR9,. + 0
 4127              		.type	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts, %object
 4128              		.size	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts, 28
 4129              	_ZZN13WiFiInterface23TranslateEspResetReasonEmE16resetReasonTexts:
 4130 0000 A0010000 		.word	.LC88
 4131 0004 AC010000 		.word	.LC89
 4132 0008 C0010000 		.word	.LC90
 4133 000c CC010000 		.word	.LC91
 4134 0010 E0010000 		.word	.LC92
 4135 0014 F4010000 		.word	.LC93
 4136 0018 08020000 		.word	.LC94
 4137              		.section	.rodata.str1.4,"aMS",%progbits,1
 4138              		.align	2
 4139              	.LC67:
 4140 0000 756E6B6E 		.ascii	"unknown error\000"
 4140      6F776E20 
 4140      6572726F 
 4140      7200
 4141 000e 0000     		.space	2
 4142              	.LC68:
 4143 0010 62616420 		.ascii	"bad parameter in request\000"
 4143      70617261 
 4143      6D657465 
 4143      7220696E 
 4143      20726571 
 4144 0029 000000   		.space	3
 4145              	.LC69:
 4146 002c 62616420 		.ascii	"bad reply format version\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 78


 4146      7265706C 
 4146      7920666F 
 4146      726D6174 
 4146      20766572 
 4147 0045 000000   		.space	3
 4148              	.LC70:
 4149 0048 72657370 		.ascii	"response buffer too small\000"
 4149      6F6E7365 
 4149      20627566 
 4149      66657220 
 4149      746F6F20 
 4150 0062 0000     		.space	2
 4151              	.LC71:
 4152 0064 616E6F74 		.ascii	"another SPI transfer is pending\000"
 4152      68657220 
 4152      53504920 
 4152      7472616E 
 4152      73666572 
 4153              	.LC72:
 4154 0084 53504920 		.ascii	"SPI timeout\000"
 4154      74696D65 
 4154      6F757400 
 4155              	.LC73:
 4156 0090 62616420 		.ascii	"bad data length\000"
 4156      64617461 
 4156      206C656E 
 4156      67746800 
 4157              	.LC74:
 4158 00a0 77726F6E 		.ascii	"wrong WiFi module state\000"
 4158      67205769 
 4158      4669206D 
 4158      6F64756C 
 4158      65207374 
 4159              	.LC75:
 4160 00b8 746F6F20 		.ascii	"too many stored SSIDs\000"
 4160      6D616E79 
 4160      2073746F 
 4160      72656420 
 4160      53534944 
 4161 00ce 0000     		.space	2
 4162              	.LC76:
 4163 00d0 62616420 		.ascii	"bad request format version\000"
 4163      72657175 
 4163      65737420 
 4163      666F726D 
 4163      61742076 
 4164 00eb 00       		.space	1
 4165              	.LC77:
 4166 00ec 756E6B6E 		.ascii	"unknown command\000"
 4166      6F776E20 
 4166      636F6D6D 
 4166      616E6400 
 4167              	.LC78:
 4168 00fc 64697361 		.ascii	"disabled\000"
 4168      626C6564 
 4168      00
 4169 0105 000000   		.space	3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 79


 4170              	.LC79:
 4171 0108 69646C65 		.ascii	"idle\000"
 4171      00
 4172 010d 000000   		.space	3
 4173              	.LC80:
 4174 0110 70726F76 		.ascii	"providing access point \000"
 4174      6964696E 
 4174      67206163 
 4174      63657373 
 4174      20706F69 
 4175              	.LC81:
 4176 0128 74727969 		.ascii	"trying to connect\000"
 4176      6E672074 
 4176      6F20636F 
 4176      6E6E6563 
 4176      7400
 4177 013a 0000     		.space	2
 4178              	.LC82:
 4179 013c 636F6E6E 		.ascii	"connected to access point \000"
 4179      65637465 
 4179      6420746F 
 4179      20616363 
 4179      65737320 
 4180 0157 00       		.space	1
 4181              	.LC83:
 4182 0158 6175746F 		.ascii	"auto-reconnecting\000"
 4182      2D726563 
 4182      6F6E6E65 
 4182      6374696E 
 4182      6700
 4183 016a 0000     		.space	2
 4184              	.LC84:
 4185 016c 7265636F 		.ascii	"reconnecting\000"
 4185      6E6E6563 
 4185      74696E67 
 4185      00
 4186 0179 000000   		.space	3
 4187              	.LC85:
 4188 017c 73746172 		.ascii	"starting\000"
 4188      74696E67 
 4188      00
 4189 0185 000000   		.space	3
 4190              	.LC86:
 4191 0188 72756E6E 		.ascii	"running\000"
 4191      696E6700 
 4192              	.LC87:
 4193 0190 6368616E 		.ascii	"changing mode\000"
 4193      67696E67 
 4193      206D6F64 
 4193      6500
 4194 019e 0000     		.space	2
 4195              	.LC88:
 4196 01a0 506F7765 		.ascii	"Power on\000"
 4196      72206F6E 
 4196      00
 4197 01a9 000000   		.space	3
 4198              	.LC89:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 80


 4199 01ac 48617264 		.ascii	"Hardware watchdog\000"
 4199      77617265 
 4199      20776174 
 4199      6368646F 
 4199      6700
 4200 01be 0000     		.space	2
 4201              	.LC90:
 4202 01c0 45786365 		.ascii	"Exception\000"
 4202      7074696F 
 4202      6E00
 4203 01ca 0000     		.space	2
 4204              	.LC91:
 4205 01cc 536F6674 		.ascii	"Software watchdog\000"
 4205      77617265 
 4205      20776174 
 4205      6368646F 
 4205      6700
 4206 01de 0000     		.space	2
 4207              	.LC92:
 4208 01e0 536F6674 		.ascii	"Software restart\000"
 4208      77617265 
 4208      20726573 
 4208      74617274 
 4208      00
 4209 01f1 000000   		.space	3
 4210              	.LC93:
 4211 01f4 44656570 		.ascii	"Deep-sleep wakeup\000"
 4211      2D736C65 
 4211      65702077 
 4211      616B6575 
 4211      7000
 4212 0206 0000     		.space	2
 4213              	.LC94:
 4214 0208 5475726E 		.ascii	"Turned on by main processor\000"
 4214      6564206F 
 4214      6E206279 
 4214      206D6169 
 4214      6E207072 
 4215              	.LC95:
 4216 0224 67617465 		.ascii	"gateway\000"
 4216      77617900 
 4217              	.LC96:
 4218 022c 697000   		.ascii	"ip\000"
 4219 022f 00       		.space	1
 4220              	.LC97:
 4221 0230 6E616D65 		.ascii	"name\000"
 4221      00
 4222 0235 000000   		.space	3
 4223              	.LC98:
 4224 0238 6E65746D 		.ascii	"netmask\000"
 4224      61736B00 
 4225              	.LC99:
 4226 0240 48545450 		.ascii	"HTTP\000"
 4226      00
 4227 0245 000000   		.space	3
 4228              	.LC100:
 4229 0248 46545000 		.ascii	"FTP\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccpZSPft.s 			page 81


 4230              	.LC101:
 4231 024c 54454C4E 		.ascii	"TELNET\000"
 4231      455400
 4232              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
