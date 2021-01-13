ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 1


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
  13              		.file	"W5500Interface.cpp"
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
  30 0002 00BF     		.section	.text._ZNK14W5500Interface14InNetworkStackEv,"axG",%progbits,_ZNK14W5500Interface14InNetw
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZNK14W5500Interface14InNetworkStackEv
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK14W5500Interface14InNetworkStackEv, %function
  39              	_ZNK14W5500Interface14InNetworkStackEv:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0020     		movs	r0, #0
  44 0002 7047     		bx	lr
  45              		.size	_ZNK14W5500Interface14InNetworkStackEv, .-_ZNK14W5500Interface14InNetworkStackEv
  46              		.section	.text._ZNK14W5500Interface15IsWiFiInterfaceEv,"axG",%progbits,_ZNK14W5500Interface15IsWiF
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZNK14W5500Interface15IsWiFiInterfaceEv
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZNK14W5500Interface15IsWiFiInterfaceEv, %function
  55              	_ZNK14W5500Interface15IsWiFiInterfaceEv:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0020     		movs	r0, #0
  60 0002 7047     		bx	lr
  61              		.size	_ZNK14W5500Interface15IsWiFiInterfaceEv, .-_ZNK14W5500Interface15IsWiFiInterfaceEv
  62              		.section	.text._ZN14W5500Interface14UpdateHostnameEPKc,"axG",%progbits,_ZN14W5500Interface14Update
  63              		.align	1
  64              		.p2align 2,,3
  65              		.weak	_ZN14W5500Interface14UpdateHostnameEPKc
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZN14W5500Interface14UpdateHostnameEPKc, %function
  71              	_ZN14W5500Interface14UpdateHostnameEPKc:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 7047     		bx	lr
  76              		.size	_ZN14W5500Interface14UpdateHostnameEPKc, .-_ZN14W5500Interface14UpdateHostnameEPKc
  77 0002 00BF     		.section	.text._ZNK14W5500Interface12GetIPAddressEv,"axG",%progbits,_ZNK14W5500Interface12GetIPAdd
  78              		.align	1
  79              		.p2align 2,,3
  80              		.weak	_ZNK14W5500Interface12GetIPAddressEv
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZNK14W5500Interface12GetIPAddressEv, %function
  86              	_ZNK14W5500Interface12GetIPAddressEv:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 D0F8AC00 		ldr	r0, [r0, #172]
  91 0004 7047     		bx	lr
  92              		.size	_ZNK14W5500Interface12GetIPAddressEv, .-_ZNK14W5500Interface12GetIPAddressEv
  93 0006 00BF     		.section	.text._ZNK14W5500Interface13GetMacAddressEv,"axG",%progbits,_ZNK14W5500Interface13GetMacA
  94              		.align	1
  95              		.p2align 2,,3
  96              		.weak	_ZNK14W5500Interface13GetMacAddressEv
  97              		.syntax unified
  98              		.thumb
  99              		.thumb_func
 100              		.fpu fpv4-sp-d16
 101              		.type	_ZNK14W5500Interface13GetMacAddressEv, %function
 102              	_ZNK14W5500Interface13GetMacAddressEv:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106 0000 B830     		adds	r0, r0, #184
 107 0002 7047     		bx	lr
 108              		.size	_ZNK14W5500Interface13GetMacAddressEv, .-_ZNK14W5500Interface13GetMacAddressEv
 109              		.section	.text._ZN14W5500InterfaceUlP11ObjectModelE_4_FUNES1_,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	_ZN14W5500InterfaceUlP11ObjectModelE_4_FUNES1_, %function
 117              	_ZN14W5500InterfaceUlP11ObjectModelE_4_FUNES1_:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 B430     		adds	r0, r0, #180
 122 0002 7047     		bx	lr
 123              		.size	_ZN14W5500InterfaceUlP11ObjectModelE_4_FUNES1_, .-_ZN14W5500InterfaceUlP11ObjectModelE_4_FUN
 124              		.section	.text._ZN14W5500InterfaceUlP11ObjectModelE0_4_FUNES1_,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu fpv4-sp-d16
 131              		.type	_ZN14W5500InterfaceUlP11ObjectModelE0_4_FUNES1_, %function
 132              	_ZN14W5500InterfaceUlP11ObjectModelE0_4_FUNES1_:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135              		@ link register save eliminated.
 136 0000 AC30     		adds	r0, r0, #172
 137 0002 7047     		bx	lr
 138              		.size	_ZN14W5500InterfaceUlP11ObjectModelE0_4_FUNES1_, .-_ZN14W5500InterfaceUlP11ObjectModelE0_4_F
 139              		.section	.text._ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	_ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_, %function
 147              	_ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 0048     		ldr	r0, .L11
 152 0002 7047     		bx	lr
 153              	.L12:
 154              		.align	2
 155              	.L11:
 156 0004 00000000 		.word	.LC0
 157              		.size	_ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_, .-_ZN14W5500InterfaceUlP11ObjectModelE1_4_F
 158              		.section	.text._ZN14W5500InterfaceUlP11ObjectModelE2_4_FUNES1_,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv4-sp-d16
 165              		.type	_ZN14W5500InterfaceUlP11ObjectModelE2_4_FUNES1_, %function
 166              	_ZN14W5500InterfaceUlP11ObjectModelE2_4_FUNES1_:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169              		@ link register save eliminated.
 170 0000 B030     		adds	r0, r0, #176
 171 0002 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 4


 172              		.size	_ZN14W5500InterfaceUlP11ObjectModelE2_4_FUNES1_, .-_ZN14W5500InterfaceUlP11ObjectModelE2_4_F
 173              		.section	.text._ZNK14W5500Interface19GetObjectModelTableERj,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZNK14W5500Interface19GetObjectModelTableERj
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZNK14W5500Interface19GetObjectModelTableERj, %function
 182              	_ZNK14W5500Interface19GetObjectModelTableERj:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 186 0000 0423     		movs	r3, #4
 187 0002 0B60     		str	r3, [r1]
 188 0004 0048     		ldr	r0, .L15
 189 0006 7047     		bx	lr
 190              	.L16:
 191              		.align	2
 192              	.L15:
 193 0008 00000000 		.word	.LANCHOR0
 194              		.size	_ZNK14W5500Interface19GetObjectModelTableERj, .-_ZNK14W5500Interface19GetObjectModelTableERj
 195              		.section	.text._ZN14W5500Interface13SetMacAddressEPKh,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZN14W5500Interface13SetMacAddressEPKh
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZN14W5500Interface13SetMacAddressEPKh, %function
 204              	_ZN14W5500Interface13SetMacAddressEPKh:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 4B1E     		subs	r3, r1, #1
 209 0002 B830     		adds	r0, r0, #184
 210 0004 0531     		adds	r1, r1, #5
 211              	.L18:
 212 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 213 000a 00F8012B 		strb	r2, [r0], #1
 214 000e 8B42     		cmp	r3, r1
 215 0010 F9D1     		bne	.L18
 216 0012 7047     		bx	lr
 217              		.size	_ZN14W5500Interface13SetMacAddressEPKh, .-_ZN14W5500Interface13SetMacAddressEPKh
 218              		.section	.text._ZNK14W5500Interface11EnableStateEv,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	_ZNK14W5500Interface11EnableStateEv
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	_ZNK14W5500Interface11EnableStateEv, %function
 227              	_ZNK14W5500Interface11EnableStateEv:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 D0F8A400 		ldr	r0, [r0, #164]
 232 0004 0030     		adds	r0, r0, #0
 233 0006 18BF     		it	ne
 234 0008 0120     		movne	r0, #1
 235 000a 7047     		bx	lr
 236              		.size	_ZNK14W5500Interface11EnableStateEv, .-_ZNK14W5500Interface11EnableStateEv
 237              		.section	.text._ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_, %function
 246              	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 C0E92B12 		strd	r1, r2, [r0, #172]
 251 0004 C0F8B430 		str	r3, [r0, #180]
 252 0008 7047     		bx	lr
 253              		.size	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_, .-_ZN14W5500Interface12SetIPAddressE9IPA
 254 000a 00BF     		.section	.text._ZN14W5500Interface17TerminateDataPortEv,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_ZN14W5500Interface17TerminateDataPortEv
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv4-sp-d16
 262              		.type	_ZN14W5500Interface17TerminateDataPortEv, %function
 263              	_ZN14W5500Interface17TerminateDataPortEv:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266              		@ link register save eliminated.
 267 0000 D0F88C00 		ldr	r0, [r0, #140]
 268 0004 0368     		ldr	r3, [r0]
 269 0006 9B68     		ldr	r3, [r3, #8]
 270 0008 1847     		bx	r3	@ indirect register sibling call
 271              		.size	_ZN14W5500Interface17TerminateDataPortEv, .-_ZN14W5500Interface17TerminateDataPortEv
 272 000a 00BF     		.section	.text._ZN14W5500Interface12OpenDataPortEt,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	_ZN14W5500Interface12OpenDataPortEt
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv4-sp-d16
 280              		.type	_ZN14W5500Interface12OpenDataPortEt, %function
 281              	_ZN14W5500Interface12OpenDataPortEt:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 0A46     		mov	r2, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 6


 286 0002 D0F88C00 		ldr	r0, [r0, #140]
 287 0006 0323     		movs	r3, #3
 288 0008 0521     		movs	r1, #5
 289 000a FFF7FEBF 		b	_ZN11W5500Socket4InitEhth
 290              		.size	_ZN14W5500Interface12OpenDataPortEt, .-_ZN14W5500Interface12OpenDataPortEt
 291 000e 00BF     		.section	.text._ZN14W5500Interface11DiagnosticsE11MessageType,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
 294              		.global	_ZN14W5500Interface11DiagnosticsE11MessageType
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 299              		.type	_ZN14W5500Interface11DiagnosticsE11MessageType, %function
 300              	_ZN14W5500Interface11DiagnosticsE11MessageType:
 301              		@ args = 0, pretend = 0, frame = 8
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303 0000 70B5     		push	{r4, r5, r6, lr}
 304 0002 0446     		mov	r4, r0
 305 0004 84B0     		sub	sp, sp, #16
 306 0006 4FF0FF32 		mov	r2, #-1
 307 000a 0E46     		mov	r6, r1
 308 000c 02A8     		add	r0, sp, #8
 309 000e 211D     		adds	r1, r4, #4
 310 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 311 0014 4FF43850 		mov	r0, #11776
 312 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 313 001c 0546     		mov	r5, r0
 314 001e 02A8     		add	r0, sp, #8
 315 0020 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 316 0024 EB07     		lsls	r3, r5, #31
 317 0026 16D5     		bpl	.L28
 318 0028 0C48     		ldr	r0, .L32
 319 002a 0D4B     		ldr	r3, .L32+4
 320 002c 0D4A     		ldr	r2, .L32+8
 321 002e 0E49     		ldr	r1, .L32+12
 322 0030 15F0020F 		tst	r5, #2
 323 0034 08BF     		it	eq
 324 0036 0246     		moveq	r2, r0
 325 0038 15F0040F 		tst	r5, #4
 326 003c 08BF     		it	eq
 327 003e 1946     		moveq	r1, r3
 328              	.L25:
 329 0040 D4F8A430 		ldr	r3, [r4, #164]
 330 0044 206F     		ldr	r0, [r4, #112]
 331 0046 CDE90021 		strd	r2, r1, [sp]
 332 004a 3146     		mov	r1, r6
 333 004c 074A     		ldr	r2, .L32+16
 334 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 335 0052 04B0     		add	sp, sp, #16
 336              		@ sp needed
 337 0054 70BD     		pop	{r4, r5, r6, pc}
 338              	.L28:
 339 0056 064A     		ldr	r2, .L32+20
 340 0058 0649     		ldr	r1, .L32+24
 341 005a F1E7     		b	.L25
 342              	.L33:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 7


 343              		.align	2
 344              	.L32:
 345 005c 34000000 		.word	.LC6
 346 0060 00000000 		.word	.LC1
 347 0064 2C000000 		.word	.LC5
 348 0068 1C000000 		.word	.LC4
 349 006c 3C000000 		.word	.LC7
 350 0070 10000000 		.word	.LC2
 351 0074 18000000 		.word	.LC3
 352              		.size	_ZN14W5500Interface11DiagnosticsE11MessageType, .-_ZN14W5500Interface11DiagnosticsE11Message
 353              		.section	.text._ZN14W5500Interface4StopEv.part.9,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZN14W5500Interface4StopEv.part.9, %function
 361              	_ZN14W5500Interface4StopEv.part.9:
 362              		@ args = 0, pretend = 0, frame = 8
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364 0000 10B5     		push	{r4, lr}
 365 0002 0446     		mov	r4, r0
 366 0004 82B0     		sub	sp, sp, #8
 367 0006 011D     		adds	r1, r0, #4
 368 0008 4FF0FF32 		mov	r2, #-1
 369 000c 6846     		mov	r0, sp
 370 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 371 0012 94F8A930 		ldrb	r3, [r4, #169]	@ zero_extendqisi2
 372 0016 5BB9     		cbnz	r3, .L40
 373              	.L35:
 374 0018 0021     		movs	r1, #0
 375 001a 6420     		movs	r0, #100
 376 001c FFF7FEFF 		bl	digitalWrite
 377 0020 0023     		movs	r3, #0
 378 0022 6846     		mov	r0, sp
 379 0024 C4F8A430 		str	r3, [r4, #164]
 380 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 381 002c 02B0     		add	sp, sp, #8
 382              		@ sp needed
 383 002e 10BD     		pop	{r4, pc}
 384              	.L40:
 385 0030 FFF7FEFF 		bl	_Z9DHCP_stopv
 386 0034 F0E7     		b	.L35
 387              		.size	_ZN14W5500Interface4StopEv.part.9, .-_ZN14W5500Interface4StopEv.part.9
 388 0036 00BF     		.section	.text._ZN14W5500Interface4ExitEv,"ax",%progbits
 389              		.align	1
 390              		.p2align 2,,3
 391              		.global	_ZN14W5500Interface4ExitEv
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu fpv4-sp-d16
 396              		.type	_ZN14W5500Interface4ExitEv, %function
 397              	_ZN14W5500Interface4ExitEv:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 8


 400              		@ link register save eliminated.
 401 0000 D0F8A430 		ldr	r3, [r0, #164]
 402 0004 03B9     		cbnz	r3, .L43
 403 0006 7047     		bx	lr
 404              	.L43:
 405 0008 FFF7FEBF 		b	_ZN14W5500Interface4StopEv.part.9
 406              		.size	_ZN14W5500Interface4ExitEv, .-_ZN14W5500Interface4ExitEv
 407              		.section	.text._ZN14W5500Interface4InitEv,"ax",%progbits
 408              		.align	1
 409              		.p2align 2,,3
 410              		.global	_ZN14W5500Interface4InitEv
 411              		.syntax unified
 412              		.thumb
 413              		.thumb_func
 414              		.fpu fpv4-sp-d16
 415              		.type	_ZN14W5500Interface4InitEv, %function
 416              	_ZN14W5500Interface4InitEv:
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419 0000 38B5     		push	{r3, r4, r5, lr}
 420 0002 1549     		ldr	r1, .L48
 421 0004 0446     		mov	r4, r0
 422 0006 0430     		adds	r0, r0, #4
 423 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 424 000c 0022     		movs	r2, #0
 425 000e 0321     		movs	r1, #3
 426 0010 6420     		movs	r0, #100
 427 0012 FFF7FEFF 		bl	pinModeDuet
 428 0016 FFF7FEFF 		bl	millis
 429 001a 2368     		ldr	r3, [r4]
 430 001c 6067     		str	r0, [r4, #116]
 431 001e 1D6C     		ldr	r5, [r3, #64]
 432 0020 0E4B     		ldr	r3, .L48+4
 433 0022 9D42     		cmp	r5, r3
 434 0024 0FD1     		bne	.L45
 435 0026 0E4A     		ldr	r2, .L48+8
 436 0028 1268     		ldr	r2, [r2]
 437 002a 0023     		movs	r3, #0
 438 002c C4E92B32 		strd	r3, r2, [r4, #172]
 439 0030 C4F8B430 		str	r3, [r4, #180]
 440              	.L46:
 441 0034 236F     		ldr	r3, [r4, #112]
 442 0036 53F8DC2F 		ldr	r2, [r3, #220]!	@ unaligned
 443 003a C4F8B820 		str	r2, [r4, #184]	@ unaligned
 444 003e 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 445 0040 A4F8BC30 		strh	r3, [r4, #188]	@ unaligned
 446 0044 38BD     		pop	{r3, r4, r5, pc}
 447              	.L45:
 448 0046 074B     		ldr	r3, .L48+12
 449 0048 054A     		ldr	r2, .L48+8
 450 004a 0749     		ldr	r1, .L48+16
 451 004c 1B68     		ldr	r3, [r3]
 452 004e 1268     		ldr	r2, [r2]
 453 0050 0968     		ldr	r1, [r1]
 454 0052 2046     		mov	r0, r4
 455 0054 A847     		blx	r5
 456 0056 EDE7     		b	.L46
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 9


 457              	.L49:
 458              		.align	2
 459              	.L48:
 460 0058 00000000 		.word	.LC8
 461 005c 00000000 		.word	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_
 462 0060 00000000 		.word	.LANCHOR1
 463 0064 00000000 		.word	_ZL14DefaultGateway
 464 0068 00000000 		.word	.LANCHOR2
 465              		.size	_ZN14W5500Interface4InitEv, .-_ZN14W5500Interface4InitEv
 466              		.section	.text._ZN14W5500Interface15GetNetworkStateERK9StringRef,"ax",%progbits
 467              		.align	1
 468              		.p2align 2,,3
 469              		.global	_ZN14W5500Interface15GetNetworkStateERK9StringRef
 470              		.syntax unified
 471              		.thumb
 472              		.thumb_func
 473              		.fpu fpv4-sp-d16
 474              		.type	_ZN14W5500Interface15GetNetworkStateERK9StringRef, %function
 475              	_ZN14W5500Interface15GetNetworkStateERK9StringRef:
 476              		@ args = 0, pretend = 0, frame = 32
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 479 0002 0368     		ldr	r3, [r0]
 480 0004 144A     		ldr	r2, .L56
 481 0006 5B6A     		ldr	r3, [r3, #36]
 482 0008 056F     		ldr	r5, [r0, #112]
 483 000a 9342     		cmp	r3, r2
 484 000c 8BB0     		sub	sp, sp, #44
 485 000e 0446     		mov	r4, r0
 486 0010 D5F8D060 		ldr	r6, [r5, #208]
 487 0014 0F46     		mov	r7, r1
 488 0016 1DD1     		bne	.L51
 489 0018 D0F8A400 		ldr	r0, [r0, #164]
 490 001c 0030     		adds	r0, r0, #0
 491 001e 18BF     		it	ne
 492 0020 0120     		movne	r0, #1
 493              	.L52:
 494 0022 0E4A     		ldr	r2, .L56+4
 495 0024 0E4D     		ldr	r5, .L56+8
 496 0026 3146     		mov	r1, r6
 497 0028 0028     		cmp	r0, #0
 498 002a 18BF     		it	ne
 499 002c 1546     		movne	r5, r2
 500 002e 06AE     		add	r6, sp, #24
 501 0030 02A8     		add	r0, sp, #8
 502 0032 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 503 0036 D4F8AC10 		ldr	r1, [r4, #172]
 504 003a 3046     		mov	r0, r6
 505 003c FFF7FEFF 		bl	_ZN9IP4StringC1Em
 506 0040 2A46     		mov	r2, r5
 507 0042 0096     		str	r6, [sp]
 508 0044 02AB     		add	r3, sp, #8
 509 0046 3846     		mov	r0, r7
 510 0048 0649     		ldr	r1, .L56+12
 511 004a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 512 004e 0120     		movs	r0, #1
 513 0050 0BB0     		add	sp, sp, #44
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 10


 514              		@ sp needed
 515 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 516              	.L51:
 517 0054 9847     		blx	r3
 518 0056 E4E7     		b	.L52
 519              	.L57:
 520              		.align	2
 521              	.L56:
 522 0058 00000000 		.word	_ZNK14W5500Interface11EnableStateEv
 523 005c 0C000000 		.word	.LC10
 524 0060 00000000 		.word	.LC9
 525 0064 14000000 		.word	.LC11
 526              		.size	_ZN14W5500Interface15GetNetworkStateERK9StringRef, .-_ZN14W5500Interface15GetNetworkStateERK
 527              		.section	.text._ZN14W5500InterfaceC2ER8Platform,"ax",%progbits
 528              		.align	1
 529              		.p2align 2,,3
 530              		.global	_ZN14W5500InterfaceC2ER8Platform
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 535              		.type	_ZN14W5500InterfaceC2ER8Platform, %function
 536              	_ZN14W5500InterfaceC2ER8Platform:
 537              		@ args = 0, pretend = 0, frame = 0
 538              		@ frame_needed = 0, uses_anonymous_args = 0
 539 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 540 0002 0446     		mov	r4, r0
 541 0004 0D46     		mov	r5, r1
 542 0006 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
 543 000a 164A     		ldr	r2, .L63
 544 000c 2567     		str	r5, [r4, #112]
 545 000e 0023     		movs	r3, #0
 546 0010 C4E90023 		strd	r2, r3, [r4]
 547 0014 C4E92B33 		strd	r3, r3, [r4, #172]
 548 0018 6367     		str	r3, [r4, #116]
 549 001a C4F8A430 		str	r3, [r4, #164]
 550 001e 84F8A830 		strb	r3, [r4, #168]
 551 0022 C4F8B430 		str	r3, [r4, #180]
 552 0026 04F17805 		add	r5, r4, #120
 553 002a 04F19407 		add	r7, r4, #148
 554              	.L59:
 555 002e 2C20     		movs	r0, #44
 556 0030 FFF7FEFF 		bl	_Znwj
 557 0034 2146     		mov	r1, r4
 558 0036 0646     		mov	r6, r0
 559 0038 FFF7FEFF 		bl	_ZN11W5500SocketC1EP16NetworkInterface
 560 003c 45F8046B 		str	r6, [r5], #4
 561 0040 AF42     		cmp	r7, r5
 562 0042 F4D1     		bne	.L59
 563 0044 0122     		movs	r2, #1
 564 0046 0023     		movs	r3, #0
 565 0048 0749     		ldr	r1, .L63+4
 566 004a 84F89E20 		strb	r2, [r4, #158]
 567 004e 1722     		movs	r2, #23
 568 0050 84F89F30 		strb	r3, [r4, #159]
 569 0054 84F8A030 		strb	r3, [r4, #160]
 570 0058 C4F89810 		str	r1, [r4, #152]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 11


 571 005c A4F89C20 		strh	r2, [r4, #156]	@ movhi
 572 0060 2046     		mov	r0, r4
 573 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 574              	.L64:
 575              		.align	2
 576              	.L63:
 577 0064 08000000 		.word	.LANCHOR3+8
 578 0068 50001500 		.word	1376336
 579              		.size	_ZN14W5500InterfaceC2ER8Platform, .-_ZN14W5500InterfaceC2ER8Platform
 580              		.global	_ZN14W5500InterfaceC1ER8Platform
 581              		.thumb_set _ZN14W5500InterfaceC1ER8Platform,_ZN14W5500InterfaceC2ER8Platform
 582              		.section	.text._ZN14W5500Interface13StartProtocolEh,"ax",%progbits
 583              		.align	1
 584              		.p2align 2,,3
 585              		.global	_ZN14W5500Interface13StartProtocolEh
 586              		.syntax unified
 587              		.thumb
 588              		.thumb_func
 589              		.fpu fpv4-sp-d16
 590              		.type	_ZN14W5500Interface13StartProtocolEh, %function
 591              	_ZN14W5500Interface13StartProtocolEh:
 592              		@ args = 0, pretend = 0, frame = 8
 593              		@ frame_needed = 0, uses_anonymous_args = 0
 594 0000 70B5     		push	{r4, r5, r6, lr}
 595 0002 0446     		mov	r4, r0
 596 0004 82B0     		sub	sp, sp, #8
 597 0006 0D46     		mov	r5, r1
 598 0008 6846     		mov	r0, sp
 599 000a 211D     		adds	r1, r4, #4
 600 000c 4FF0FF32 		mov	r2, #-1
 601 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 602 0014 012D     		cmp	r5, #1
 603 0016 22D0     		beq	.L67
 604 0018 0ED3     		bcc	.L68
 605 001a 022D     		cmp	r5, #2
 606 001c 07D1     		bne	.L66
 607 001e 2B46     		mov	r3, r5
 608 0020 B4F89C20 		ldrh	r2, [r4, #156]
 609 0024 D4F89000 		ldr	r0, [r4, #144]
 610 0028 0621     		movs	r1, #6
 611 002a FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
 612              	.L66:
 613 002e 6846     		mov	r0, sp
 614 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 615 0034 02B0     		add	sp, sp, #8
 616              		@ sp needed
 617 0036 70BD     		pop	{r4, r5, r6, pc}
 618              	.L68:
 619 0038 04F17806 		add	r6, r4, #120
 620 003c 0025     		movs	r5, #0
 621              	.L70:
 622 003e E9B2     		uxtb	r1, r5
 623 0040 0023     		movs	r3, #0
 624 0042 B4F89820 		ldrh	r2, [r4, #152]
 625 0046 56F8040B 		ldr	r0, [r6], #4
 626 004a 0135     		adds	r5, r5, #1
 627 004c FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 12


 628 0050 042D     		cmp	r5, #4
 629 0052 F4D1     		bne	.L70
 630 0054 6846     		mov	r0, sp
 631 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 632 005a 02B0     		add	sp, sp, #8
 633              		@ sp needed
 634 005c 70BD     		pop	{r4, r5, r6, pc}
 635              	.L67:
 636 005e 2B46     		mov	r3, r5
 637 0060 B4F89A20 		ldrh	r2, [r4, #154]
 638 0064 D4F88800 		ldr	r0, [r4, #136]
 639 0068 0421     		movs	r1, #4
 640 006a FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
 641 006e 6846     		mov	r0, sp
 642 0070 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 643 0074 02B0     		add	sp, sp, #8
 644              		@ sp needed
 645 0076 70BD     		pop	{r4, r5, r6, pc}
 646              		.size	_ZN14W5500Interface13StartProtocolEh, .-_ZN14W5500Interface13StartProtocolEh
 647              		.section	.text._ZN14W5500Interface4SpinEb,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	_ZN14W5500Interface4SpinEb
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu fpv4-sp-d16
 655              		.type	_ZN14W5500Interface4SpinEb, %function
 656              	_ZN14W5500Interface4SpinEb:
 657              		@ args = 0, pretend = 0, frame = 16
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 660 0002 D0F8A430 		ldr	r3, [r0, #164]
 661 0006 023B     		subs	r3, r3, #2
 662 0008 85B0     		sub	sp, sp, #20
 663 000a 0446     		mov	r4, r0
 664 000c 0D46     		mov	r5, r1
 665 000e 032B     		cmp	r3, #3
 666 0010 1FD8     		bhi	.L75
 667 0012 DFE803F0 		tbb	[pc, r3]
 668              	.L78:
 669 0016 02       		.byte	(.L77-.L78)/2
 670 0017 65       		.byte	(.L79-.L78)/2
 671 0018 44       		.byte	(.L80-.L78)/2
 672 0019 20       		.byte	(.L81-.L78)/2
 673              		.p2align 1
 674              	.L77:
 675 001a 6E46     		mov	r6, sp
 676 001c 3046     		mov	r0, r6
 677 001e 4FF0FF32 		mov	r2, #-1
 678 0022 211D     		adds	r1, r4, #4
 679 0024 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 680 0028 85B1     		cbz	r5, .L98
 681 002a FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 682 002e 0128     		cmp	r0, #1
 683 0030 0CD1     		bne	.L98
 684 0032 D4F8AC30 		ldr	r3, [r4, #172]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 13


 685 0036 002B     		cmp	r3, #0
 686 0038 0CBF     		ite	eq
 687 003a 0123     		moveq	r3, #1
 688 003c 0023     		movne	r3, #0
 689 003e 84F8A930 		strb	r3, [r4, #169]
 690 0042 00F0AD80 		beq	.L127
 691              	.L126:
 692 0046 0423     		movs	r3, #4
 693 0048 C4F8A430 		str	r3, [r4, #164]
 694              	.L98:
 695 004c 3046     		mov	r0, r6
 696 004e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 697              	.L75:
 698 0052 05B0     		add	sp, sp, #20
 699              		@ sp needed
 700 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 701              	.L81:
 702 0056 6E46     		mov	r6, sp
 703 0058 4FF0FF32 		mov	r2, #-1
 704 005c 211D     		adds	r1, r4, #4
 705 005e 3046     		mov	r0, r6
 706 0060 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 707 0064 FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 708 0068 0128     		cmp	r0, #1
 709 006a 54D0     		beq	.L128
 710 006c 002D     		cmp	r5, #0
 711 006e EDD0     		beq	.L98
 712 0070 94F8A930 		ldrb	r3, [r4, #169]	@ zero_extendqisi2
 713 0074 002B     		cmp	r3, #0
 714 0076 40F09080 		bne	.L129
 715              	.L100:
 716 007a 04F17805 		add	r5, r4, #120
 717 007e 04F19407 		add	r7, r4, #148
 718              	.L101:
 719 0082 55F8040B 		ldr	r0, [r5], #4
 720 0086 0368     		ldr	r3, [r0]
 721 0088 9B68     		ldr	r3, [r3, #8]
 722 008a 9847     		blx	r3
 723 008c BD42     		cmp	r5, r7
 724 008e F8D1     		bne	.L101
 725              	.L125:
 726 0090 0223     		movs	r3, #2
 727 0092 C4F8A430 		str	r3, [r4, #164]
 728 0096 3046     		mov	r0, r6
 729 0098 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 730 009c D9E7     		b	.L75
 731              	.L80:
 732 009e 0029     		cmp	r1, #0
 733 00a0 D7D0     		beq	.L75
 734 00a2 00F19E05 		add	r5, r0, #158
 735 00a6 EF43     		mvns	r7, r5
 736 00a8 00F1A106 		add	r6, r0, #161
 737              	.L91:
 738 00ac 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 739 00b0 002B     		cmp	r3, #0
 740 00b2 59D1     		bne	.L130
 741              	.L90:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 14


 742 00b4 AE42     		cmp	r6, r5
 743 00b6 F9D1     		bne	.L91
 744 00b8 0023     		movs	r3, #0
 745 00ba 256F     		ldr	r5, [r4, #112]
 746 00bc C4F89430 		str	r3, [r4, #148]
 747 00c0 D4F8AC10 		ldr	r1, [r4, #172]
 748 00c4 6846     		mov	r0, sp
 749 00c6 FFF7FEFF 		bl	_ZN9IP4StringC1Em
 750 00ca 6B46     		mov	r3, sp
 751 00cc 2846     		mov	r0, r5
 752 00ce 434A     		ldr	r2, .L134
 753 00d0 8521     		movs	r1, #133
 754 00d2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 755 00d6 0523     		movs	r3, #5
 756 00d8 C4F8A430 		str	r3, [r4, #164]
 757 00dc 05B0     		add	sp, sp, #20
 758              		@ sp needed
 759 00de F0BD     		pop	{r4, r5, r6, r7, pc}
 760              	.L79:
 761 00e0 0029     		cmp	r1, #0
 762 00e2 B6D0     		beq	.L75
 763 00e4 6E46     		mov	r6, sp
 764 00e6 4FF0FF32 		mov	r2, #-1
 765 00ea 211D     		adds	r1, r4, #4
 766 00ec 3046     		mov	r0, r6
 767 00ee FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 768 00f2 FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 769 00f6 0128     		cmp	r0, #1
 770 00f8 3CD0     		beq	.L131
 771 00fa FFF7FEFF 		bl	_Z9DHCP_stopv
 772 00fe 04F17805 		add	r5, r4, #120
 773 0102 04F19407 		add	r7, r4, #148
 774              	.L89:
 775 0106 55F8040B 		ldr	r0, [r5], #4
 776 010a 0368     		ldr	r3, [r0]
 777 010c 9B68     		ldr	r3, [r3, #8]
 778 010e 9847     		blx	r3
 779 0110 AF42     		cmp	r7, r5
 780 0112 F8D1     		bne	.L89
 781 0114 BCE7     		b	.L125
 782              	.L128:
 783 0116 ADB1     		cbz	r5, .L94
 784 0118 94F8A930 		ldrb	r3, [r4, #169]	@ zero_extendqisi2
 785 011c 93B1     		cbz	r3, .L94
 786 011e FFF7FEFF 		bl	millis
 787 0122 636F     		ldr	r3, [r4, #116]
 788 0124 C01A     		subs	r0, r0, r3
 789 0126 B0F57A7F 		cmp	r0, #1000
 790 012a 50D2     		bcs	.L132
 791              	.L96:
 792 012c FFF7FEFF 		bl	_Z8DHCP_runv
 793 0130 831E     		subs	r3, r0, #2
 794 0132 DBB2     		uxtb	r3, r3
 795 0134 012B     		cmp	r3, #1
 796 0136 05D8     		bhi	.L94
 797 0138 04F1AC01 		add	r1, r4, #172
 798 013c 4FF47060 		mov	r0, #3840
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 15


 799 0140 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
 800              	.L94:
 801 0144 D4F89430 		ldr	r3, [r4, #148]
 802 0148 1E33     		adds	r3, r3, #30
 803 014a 2946     		mov	r1, r5
 804 014c 54F82300 		ldr	r0, [r4, r3, lsl #2]
 805 0150 0368     		ldr	r3, [r0]
 806 0152 1B68     		ldr	r3, [r3]
 807 0154 9847     		blx	r3
 808 0156 D4F89430 		ldr	r3, [r4, #148]
 809 015a 0133     		adds	r3, r3, #1
 810 015c 072B     		cmp	r3, #7
 811 015e 08BF     		it	eq
 812 0160 0023     		moveq	r3, #0
 813 0162 C4F89430 		str	r3, [r4, #148]
 814 0166 71E7     		b	.L98
 815              	.L130:
 816 0168 7919     		adds	r1, r7, r5
 817 016a C9B2     		uxtb	r1, r1
 818 016c 2046     		mov	r0, r4
 819 016e FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 820 0172 9FE7     		b	.L90
 821              	.L131:
 822 0174 FFF7FEFF 		bl	millis
 823 0178 636F     		ldr	r3, [r4, #116]
 824 017a C01A     		subs	r0, r0, r3
 825 017c B0F57A7F 		cmp	r0, #1000
 826 0180 1FD2     		bcs	.L133
 827              	.L87:
 828 0182 FFF7FEFF 		bl	_Z8DHCP_runv
 829 0186 0228     		cmp	r0, #2
 830 0188 7FF460AF 		bne	.L98
 831 018c 04F1AC01 		add	r1, r4, #172
 832 0190 4FF47060 		mov	r0, #3840
 833 0194 FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
 834 0198 55E7     		b	.L126
 835              	.L129:
 836 019a FFF7FEFF 		bl	_Z9DHCP_stopv
 837 019e 6CE7     		b	.L100
 838              	.L127:
 839 01a0 206F     		ldr	r0, [r4, #112]
 840 01a2 FFF7FEFF 		bl	_ZN8Platform6RandomEv
 841 01a6 0E4B     		ldr	r3, .L134+4
 842 01a8 9A68     		ldr	r2, [r3, #8]	@ unaligned
 843 01aa 0146     		mov	r1, r0
 844 01ac DC32     		adds	r2, r2, #220
 845 01ae 0720     		movs	r0, #7
 846 01b0 FFF7FEFF 		bl	_Z9DHCP_inithmPKc
 847 01b4 FFF7FEFF 		bl	millis
 848 01b8 0323     		movs	r3, #3
 849 01ba 6067     		str	r0, [r4, #116]
 850 01bc C4F8A430 		str	r3, [r4, #164]
 851 01c0 44E7     		b	.L98
 852              	.L133:
 853 01c2 03F57A73 		add	r3, r3, #1000
 854 01c6 6367     		str	r3, [r4, #116]
 855 01c8 FFF7FEFF 		bl	_Z17DHCP_time_handlerv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 16


 856 01cc D9E7     		b	.L87
 857              	.L132:
 858 01ce 03F57A73 		add	r3, r3, #1000
 859 01d2 6367     		str	r3, [r4, #116]
 860 01d4 FFF7FEFF 		bl	_Z17DHCP_time_handlerv
 861 01d8 A8E7     		b	.L96
 862              	.L135:
 863 01da 00BF     		.align	2
 864              	.L134:
 865 01dc 00000000 		.word	.LC12
 866 01e0 00000000 		.word	reprap
 867              		.size	_ZN14W5500Interface4SpinEb, .-_ZN14W5500Interface4SpinEb
 868              		.section	.text._ZN14W5500Interface16ShutdownProtocolEh,"ax",%progbits
 869              		.align	1
 870              		.p2align 2,,3
 871              		.global	_ZN14W5500Interface16ShutdownProtocolEh
 872              		.syntax unified
 873              		.thumb
 874              		.thumb_func
 875              		.fpu fpv4-sp-d16
 876              		.type	_ZN14W5500Interface16ShutdownProtocolEh, %function
 877              	_ZN14W5500Interface16ShutdownProtocolEh:
 878              		@ args = 0, pretend = 0, frame = 8
 879              		@ frame_needed = 0, uses_anonymous_args = 0
 880 0000 30B5     		push	{r4, r5, lr}
 881 0002 0446     		mov	r4, r0
 882 0004 83B0     		sub	sp, sp, #12
 883 0006 0D46     		mov	r5, r1
 884 0008 6846     		mov	r0, sp
 885 000a 211D     		adds	r1, r4, #4
 886 000c 4FF0FF32 		mov	r2, #-1
 887 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 888 0014 012D     		cmp	r5, #1
 889 0016 1BD0     		beq	.L138
 890 0018 0BD3     		bcc	.L139
 891 001a 022D     		cmp	r5, #2
 892 001c 04D1     		bne	.L137
 893 001e D4F89000 		ldr	r0, [r4, #144]
 894 0022 0368     		ldr	r3, [r0]
 895 0024 DB68     		ldr	r3, [r3, #12]
 896 0026 9847     		blx	r3
 897              	.L137:
 898 0028 6846     		mov	r0, sp
 899 002a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 900 002e 03B0     		add	sp, sp, #12
 901              		@ sp needed
 902 0030 30BD     		pop	{r4, r5, pc}
 903              	.L139:
 904 0032 04F17805 		add	r5, r4, #120
 905 0036 8834     		adds	r4, r4, #136
 906              	.L141:
 907 0038 55F8040B 		ldr	r0, [r5], #4
 908 003c 0368     		ldr	r3, [r0]
 909 003e DB68     		ldr	r3, [r3, #12]
 910 0040 9847     		blx	r3
 911 0042 A542     		cmp	r5, r4
 912 0044 F8D1     		bne	.L141
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 17


 913 0046 6846     		mov	r0, sp
 914 0048 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 915 004c 03B0     		add	sp, sp, #12
 916              		@ sp needed
 917 004e 30BD     		pop	{r4, r5, pc}
 918              	.L138:
 919 0050 D4F88800 		ldr	r0, [r4, #136]
 920 0054 0368     		ldr	r3, [r0]
 921 0056 DB68     		ldr	r3, [r3, #12]
 922 0058 9847     		blx	r3
 923 005a D4F88C00 		ldr	r0, [r4, #140]
 924 005e 0368     		ldr	r3, [r0]
 925 0060 DB68     		ldr	r3, [r3, #12]
 926 0062 9847     		blx	r3
 927 0064 6846     		mov	r0, sp
 928 0066 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 929 006a 03B0     		add	sp, sp, #12
 930              		@ sp needed
 931 006c 30BD     		pop	{r4, r5, pc}
 932              		.size	_ZN14W5500Interface16ShutdownProtocolEh, .-_ZN14W5500Interface16ShutdownProtocolEh
 933 006e 00BF     		.section	.text._ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef,"ax",%progbits
 934              		.align	1
 935              		.p2align 2,,3
 936              		.global	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 937              		.syntax unified
 938              		.thumb
 939              		.thumb_func
 940              		.fpu fpv4-sp-d16
 941              		.type	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef, %function
 942              	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef:
 943              		@ args = 0, pretend = 0, frame = 0
 944              		@ frame_needed = 0, uses_anonymous_args = 0
 945              		@ link register save eliminated.
 946 0000 30B4     		push	{r4, r5}
 947 0002 4418     		adds	r4, r0, r1
 948 0004 0346     		mov	r3, r0
 949 0006 94F89E50 		ldrb	r5, [r4, #158]	@ zero_extendqisi2
 950 000a 0948     		ldr	r0, .L147
 951 000c 50F82140 		ldr	r4, [r0, r1, lsl #2]
 952 0010 1046     		mov	r0, r2
 953 0012 25B9     		cbnz	r5, .L146
 954 0014 2246     		mov	r2, r4
 955 0016 0749     		ldr	r1, .L147+4
 956 0018 30BC     		pop	{r4, r5}
 957 001a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 958              	.L146:
 959 001e 4C31     		adds	r1, r1, #76
 960 0020 2246     		mov	r2, r4
 961 0022 33F81130 		ldrh	r3, [r3, r1, lsl #1]
 962 0026 0449     		ldr	r1, .L147+8
 963 0028 30BC     		pop	{r4, r5}
 964 002a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 965              	.L148:
 966 002e 00BF     		.align	2
 967              	.L147:
 968 0030 00000000 		.word	.LANCHOR4
 969 0034 1C000000 		.word	.LC14
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 18


 970 0038 00000000 		.word	.LC13
 971              		.size	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef, .-_ZNK14W5500Interface17ReportOneProt
 972              		.section	.text._ZN14W5500Interface14EnableProtocolEhiiRK9StringRef,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu fpv4-sp-d16
 980              		.type	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef, %function
 981              	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef:
 982              		@ args = 4, pretend = 0, frame = 8
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 985 0002 0133     		adds	r3, r3, #1
 986 0004 012B     		cmp	r3, #1
 987 0006 83B0     		sub	sp, sp, #12
 988 0008 34D8     		bhi	.L166
 989 000a 0229     		cmp	r1, #2
 990 000c 0D46     		mov	r5, r1
 991 000e 2AD8     		bhi	.L152
 992 0010 0446     		mov	r4, r0
 993 0012 1646     		mov	r6, r2
 994 0014 6846     		mov	r0, sp
 995 0016 4FF0FF32 		mov	r2, #-1
 996 001a 211D     		adds	r1, r4, #4
 997 001c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 998 0020 002E     		cmp	r6, #0
 999 0022 B8BF     		it	lt
 1000 0024 204B     		ldrlt	r3, .L167
 1001 0026 04EB4507 		add	r7, r4, r5, lsl #1
 1002 002a B8BF     		it	lt
 1003 002c 33F81560 		ldrhlt	r6, [r3, r5, lsl #1]
 1004 0030 B7F89830 		ldrh	r3, [r7, #152]
 1005 0034 A8BF     		it	ge
 1006 0036 B6B2     		uxthge	r6, r6
 1007 0038 B342     		cmp	r3, r6
 1008 003a 03D0     		beq	.L165
 1009 003c D4F8A430 		ldr	r3, [r4, #164]
 1010 0040 052B     		cmp	r3, #5
 1011 0042 1ED0     		beq	.L157
 1012              	.L165:
 1013 0044 6319     		adds	r3, r4, r5
 1014 0046 93F89E20 		ldrb	r2, [r3, #158]	@ zero_extendqisi2
 1015 004a A7F89860 		strh	r6, [r7, #152]	@ movhi
 1016 004e FAB1     		cbz	r2, .L158
 1017              	.L159:
 1018 0050 2946     		mov	r1, r5
 1019 0052 2046     		mov	r0, r4
 1020 0054 089A     		ldr	r2, [sp, #32]
 1021 0056 FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1022 005a 6846     		mov	r0, sp
 1023 005c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1024 0060 0120     		movs	r0, #1
 1025 0062 03B0     		add	sp, sp, #12
 1026              		@ sp needed
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 19


 1027 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 1028              	.L152:
 1029 0066 1149     		ldr	r1, .L167+4
 1030 0068 0898     		ldr	r0, [sp, #32]
 1031 006a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1032 006e 0220     		movs	r0, #2
 1033 0070 03B0     		add	sp, sp, #12
 1034              		@ sp needed
 1035 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 1036              	.L166:
 1037 0074 0E49     		ldr	r1, .L167+8
 1038 0076 0898     		ldr	r0, [sp, #32]
 1039 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1040 007c 0220     		movs	r0, #2
 1041 007e 03B0     		add	sp, sp, #12
 1042              		@ sp needed
 1043 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 1044              	.L157:
 1045 0082 2946     		mov	r1, r5
 1046 0084 2046     		mov	r0, r4
 1047 0086 FFF7FEFF 		bl	_ZN14W5500Interface16ShutdownProtocolEh
 1048 008a A7F89860 		strh	r6, [r7, #152]	@ movhi
 1049 008e 6319     		adds	r3, r4, r5
 1050              	.L158:
 1051 0090 0122     		movs	r2, #1
 1052 0092 83F89E20 		strb	r2, [r3, #158]
 1053 0096 D4F8A430 		ldr	r3, [r4, #164]
 1054 009a 052B     		cmp	r3, #5
 1055 009c D8D1     		bne	.L159
 1056 009e 2946     		mov	r1, r5
 1057 00a0 2046     		mov	r0, r4
 1058 00a2 FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 1059 00a6 D3E7     		b	.L159
 1060              	.L168:
 1061              		.align	2
 1062              	.L167:
 1063 00a8 00000000 		.word	.LANCHOR5
 1064 00ac 24000000 		.word	.LC16
 1065 00b0 00000000 		.word	.LC15
 1066              		.size	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef, .-_ZN14W5500Interface14EnableProtocolEh
 1067              		.section	.text._ZN14W5500Interface15DisableProtocolEhRK9StringRef,"ax",%progbits
 1068              		.align	1
 1069              		.p2align 2,,3
 1070              		.global	_ZN14W5500Interface15DisableProtocolEhRK9StringRef
 1071              		.syntax unified
 1072              		.thumb
 1073              		.thumb_func
 1074              		.fpu fpv4-sp-d16
 1075              		.type	_ZN14W5500Interface15DisableProtocolEhRK9StringRef, %function
 1076              	_ZN14W5500Interface15DisableProtocolEhRK9StringRef:
 1077              		@ args = 0, pretend = 0, frame = 8
 1078              		@ frame_needed = 0, uses_anonymous_args = 0
 1079 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1080 0002 0229     		cmp	r1, #2
 1081 0004 83B0     		sub	sp, sp, #12
 1082 0006 1646     		mov	r6, r2
 1083 0008 1AD8     		bhi	.L170
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 20


 1084 000a 0446     		mov	r4, r0
 1085 000c 0D46     		mov	r5, r1
 1086 000e 6846     		mov	r0, sp
 1087 0010 4FF0FF32 		mov	r2, #-1
 1088 0014 211D     		adds	r1, r4, #4
 1089 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1090 001a D4F8A430 		ldr	r3, [r4, #164]
 1091 001e 052B     		cmp	r3, #5
 1092 0020 15D0     		beq	.L174
 1093              	.L171:
 1094 0022 6319     		adds	r3, r4, r5
 1095 0024 0027     		movs	r7, #0
 1096 0026 3246     		mov	r2, r6
 1097 0028 2946     		mov	r1, r5
 1098 002a 2046     		mov	r0, r4
 1099 002c 83F89E70 		strb	r7, [r3, #158]
 1100 0030 FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1101 0034 6846     		mov	r0, sp
 1102 0036 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1103 003a 0120     		movs	r0, #1
 1104 003c 03B0     		add	sp, sp, #12
 1105              		@ sp needed
 1106 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 1107              	.L170:
 1108 0040 1046     		mov	r0, r2
 1109 0042 0549     		ldr	r1, .L175
 1110 0044 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1111 0048 0220     		movs	r0, #2
 1112 004a 03B0     		add	sp, sp, #12
 1113              		@ sp needed
 1114 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 1115              	.L174:
 1116 004e 2946     		mov	r1, r5
 1117 0050 2046     		mov	r0, r4
 1118 0052 FFF7FEFF 		bl	_ZN14W5500Interface16ShutdownProtocolEh
 1119 0056 E4E7     		b	.L171
 1120              	.L176:
 1121              		.align	2
 1122              	.L175:
 1123 0058 24000000 		.word	.LC16
 1124              		.size	_ZN14W5500Interface15DisableProtocolEhRK9StringRef, .-_ZN14W5500Interface15DisableProtocolEh
 1125              		.section	.text._ZNK14W5500Interface15ReportProtocolsERK9StringRef,"ax",%progbits
 1126              		.align	1
 1127              		.p2align 2,,3
 1128              		.global	_ZNK14W5500Interface15ReportProtocolsERK9StringRef
 1129              		.syntax unified
 1130              		.thumb
 1131              		.thumb_func
 1132              		.fpu fpv4-sp-d16
 1133              		.type	_ZNK14W5500Interface15ReportProtocolsERK9StringRef, %function
 1134              	_ZNK14W5500Interface15ReportProtocolsERK9StringRef:
 1135              		@ args = 0, pretend = 0, frame = 0
 1136              		@ frame_needed = 0, uses_anonymous_args = 0
 1137 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1138 0002 0B68     		ldr	r3, [r1]
 1139 0004 0D46     		mov	r5, r1
 1140 0006 0024     		movs	r4, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 21


 1141 0008 0746     		mov	r7, r0
 1142 000a 1C70     		strb	r4, [r3]
 1143 000c 0A21     		movs	r1, #10
 1144 000e 2846     		mov	r0, r5
 1145 0010 E6B2     		uxtb	r6, r4
 1146 0012 74B1     		cbz	r4, .L179
 1147              	.L184:
 1148 0014 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1149 0018 2A46     		mov	r2, r5
 1150 001a 3146     		mov	r1, r6
 1151 001c 3846     		mov	r0, r7
 1152 001e FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1153 0022 022C     		cmp	r4, #2
 1154 0024 0BD0     		beq	.L183
 1155              	.L180:
 1156 0026 0134     		adds	r4, r4, #1
 1157 0028 0A21     		movs	r1, #10
 1158 002a 2846     		mov	r0, r5
 1159 002c E6B2     		uxtb	r6, r4
 1160 002e 002C     		cmp	r4, #0
 1161 0030 F0D1     		bne	.L184
 1162              	.L179:
 1163 0032 2A46     		mov	r2, r5
 1164 0034 2146     		mov	r1, r4
 1165 0036 3846     		mov	r0, r7
 1166 0038 FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1167 003c F3E7     		b	.L180
 1168              	.L183:
 1169 003e 0120     		movs	r0, #1
 1170 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1171              		.size	_ZNK14W5500Interface15ReportProtocolsERK9StringRef, .-_ZNK14W5500Interface15ReportProtocolsE
 1172 0042 00BF     		.section	.text._ZN14W5500Interface5StartEv,"ax",%progbits
 1173              		.align	1
 1174              		.p2align 2,,3
 1175              		.global	_ZN14W5500Interface5StartEv
 1176              		.syntax unified
 1177              		.thumb
 1178              		.thumb_func
 1179              		.fpu fpv4-sp-d16
 1180              		.type	_ZN14W5500Interface5StartEv, %function
 1181              	_ZN14W5500Interface5StartEv:
 1182              		@ args = 0, pretend = 0, frame = 8
 1183              		@ frame_needed = 0, uses_anonymous_args = 0
 1184 0000 30B5     		push	{r4, r5, lr}
 1185 0002 0446     		mov	r4, r0
 1186 0004 83B0     		sub	sp, sp, #12
 1187 0006 011D     		adds	r1, r0, #4
 1188 0008 4FF0FF32 		mov	r2, #-1
 1189 000c 6846     		mov	r0, sp
 1190 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1191 0012 2268     		ldr	r2, [r4]
 1192 0014 2B48     		ldr	r0, .L189
 1193 0016 156C     		ldr	r5, [r2, #64]
 1194 0018 236F     		ldr	r3, [r4, #112]
 1195 001a 8542     		cmp	r5, r0
 1196 001c D3E93412 		ldrd	r1, r2, [r3, #208]
 1197 0020 D3F8D830 		ldr	r3, [r3, #216]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 22


 1198 0024 4AD1     		bne	.L186
 1199 0026 C4E92B12 		strd	r1, r2, [r4, #172]
 1200 002a C4F8B430 		str	r3, [r4, #180]
 1201              	.L187:
 1202 002e 0022     		movs	r2, #0
 1203 0030 0321     		movs	r1, #3
 1204 0032 6420     		movs	r0, #100
 1205 0034 FFF7FEFF 		bl	pinModeDuet
 1206 0038 234B     		ldr	r3, .L189+4
 1207 003a 244A     		ldr	r2, .L189+8
 1208 003c 1B68     		ldr	r3, [r3]
 1209 003e A2FB0323 		umull	r2, r3, r2, r3
 1210 0042 9A0C     		lsrs	r2, r3, #18
 1211 0044 40F22623 		movw	r3, #550
 1212 0048 03FB02F3 		mul	r3, r3, r2
 1213              		.syntax unified
 1214              	@ 88 "C:\eclipse\firmware\CoreNG\cores\arduino/wiring.h" 1
 1215              		L_1291_delayMicroseconds:
 1216 004c 013B     		subs   r3, #1
 1217 004e FDD1     		bne    L_1291_delayMicroseconds
 1218              	
 1219              	@ 0 "" 2
 1220              		.thumb
 1221              		.syntax unified
 1222 0050 0121     		movs	r1, #1
 1223 0052 6420     		movs	r0, #100
 1224 0054 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 1225 0058 3720     		movs	r0, #55
 1226 005a FFF7FEFF 		bl	_Z5delaym
 1227 005e 7821     		movs	r1, #120
 1228 0060 4FF43850 		mov	r0, #11776
 1229 0064 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1230 0068 1949     		ldr	r1, .L189+12
 1231 006a 0846     		mov	r0, r1
 1232 006c FFF7FEFF 		bl	_Z12wizchip_initPKhS0_
 1233 0070 0622     		movs	r2, #6
 1234 0072 04F1B801 		add	r1, r4, #184
 1235 0076 4FF41060 		mov	r0, #2304
 1236 007a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1237 007e 04F1AC01 		add	r1, r4, #172
 1238 0082 4FF47060 		mov	r0, #3840
 1239 0086 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1240 008a 04F1B401 		add	r1, r4, #180
 1241 008e 4FF48070 		mov	r0, #256
 1242 0092 FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1243 0096 04F1B001 		add	r1, r4, #176
 1244 009a 4FF4A060 		mov	r0, #1280
 1245 009e FFF7FEFF 		bl	_Z16WIZCHIP_WRITE_IPmRK9IPAddress
 1246 00a2 F821     		movs	r1, #248
 1247 00a4 4FF43850 		mov	r0, #11776
 1248 00a8 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1249 00ac 0223     		movs	r3, #2
 1250 00ae 6846     		mov	r0, sp
 1251 00b0 C4F8A430 		str	r3, [r4, #164]
 1252 00b4 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1253 00b8 03B0     		add	sp, sp, #12
 1254              		@ sp needed
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 23


 1255 00ba 30BD     		pop	{r4, r5, pc}
 1256              	.L186:
 1257 00bc 2046     		mov	r0, r4
 1258 00be A847     		blx	r5
 1259 00c0 B5E7     		b	.L187
 1260              	.L190:
 1261 00c2 00BF     		.align	2
 1262              	.L189:
 1263 00c4 00000000 		.word	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_
 1264 00c8 00000000 		.word	SystemCoreClock
 1265 00cc 819F5E16 		.word	375299969
 1266 00d0 00000000 		.word	.LANCHOR6
 1267              		.size	_ZN14W5500Interface5StartEv, .-_ZN14W5500Interface5StartEv
 1268              		.section	.text._ZN14W5500Interface8ActivateEv,"ax",%progbits
 1269              		.align	1
 1270              		.p2align 2,,3
 1271              		.global	_ZN14W5500Interface8ActivateEv
 1272              		.syntax unified
 1273              		.thumb
 1274              		.thumb_func
 1275              		.fpu fpv4-sp-d16
 1276              		.type	_ZN14W5500Interface8ActivateEv, %function
 1277              	_ZN14W5500Interface8ActivateEv:
 1278              		@ args = 0, pretend = 0, frame = 0
 1279              		@ frame_needed = 0, uses_anonymous_args = 0
 1280              		@ link register save eliminated.
 1281 0000 90F8A820 		ldrb	r2, [r0, #168]	@ zero_extendqisi2
 1282 0004 5AB9     		cbnz	r2, .L191
 1283 0006 D0F8A420 		ldr	r2, [r0, #164]
 1284 000a 0121     		movs	r1, #1
 1285 000c 8A42     		cmp	r2, r1
 1286 000e 80F8A810 		strb	r1, [r0, #168]
 1287 0012 05D0     		beq	.L194
 1288 0014 006F     		ldr	r0, [r0, #112]
 1289 0016 034A     		ldr	r2, .L195
 1290 0018 8521     		movs	r1, #133
 1291 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1292              	.L191:
 1293 001e 7047     		bx	lr
 1294              	.L194:
 1295 0020 FFF7FEBF 		b	_ZN14W5500Interface5StartEv
 1296              	.L196:
 1297              		.align	2
 1298              	.L195:
 1299 0024 00000000 		.word	.LC17
 1300              		.size	_ZN14W5500Interface8ActivateEv, .-_ZN14W5500Interface8ActivateEv
 1301              		.section	.text._ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_,"ax",%progbits
 1302              		.align	1
 1303              		.p2align 2,,3
 1304              		.global	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_
 1305              		.syntax unified
 1306              		.thumb
 1307              		.thumb_func
 1308              		.fpu fpv4-sp-d16
 1309              		.type	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_, %function
 1310              	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_:
 1311              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 24


 1312              		@ frame_needed = 0, uses_anonymous_args = 0
 1313 0000 10B5     		push	{r4, lr}
 1314 0002 90F8A820 		ldrb	r2, [r0, #168]	@ zero_extendqisi2
 1315 0006 0446     		mov	r4, r0
 1316 0008 32B9     		cbnz	r2, .L198
 1317 000a 0031     		adds	r1, r1, #0
 1318 000c 18BF     		it	ne
 1319 000e 0121     		movne	r1, #1
 1320 0010 C0F8A410 		str	r1, [r0, #164]
 1321              	.L199:
 1322 0014 0120     		movs	r0, #1
 1323 0016 10BD     		pop	{r4, pc}
 1324              	.L198:
 1325 0018 D0F8A430 		ldr	r3, [r0, #164]
 1326 001c 49B9     		cbnz	r1, .L200
 1327 001e 002B     		cmp	r3, #0
 1328 0020 F8D0     		beq	.L199
 1329 0022 FFF7FEFF 		bl	_ZN14W5500Interface4StopEv.part.9
 1330 0026 206F     		ldr	r0, [r4, #112]
 1331 0028 064A     		ldr	r2, .L205
 1332 002a 8521     		movs	r1, #133
 1333 002c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1334 0030 F0E7     		b	.L199
 1335              	.L200:
 1336 0032 002B     		cmp	r3, #0
 1337 0034 EED1     		bne	.L199
 1338 0036 0123     		movs	r3, #1
 1339 0038 C0F8A430 		str	r3, [r0, #164]
 1340 003c FFF7FEFF 		bl	_ZN14W5500Interface5StartEv
 1341 0040 E8E7     		b	.L199
 1342              	.L206:
 1343 0042 00BF     		.align	2
 1344              	.L205:
 1345 0044 00000000 		.word	.LC18
 1346              		.size	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_, .-_ZN14W5500Interface15EnableInterfac
 1347              		.section	.text._ZN14W5500Interface4StopEv,"ax",%progbits
 1348              		.align	1
 1349              		.p2align 2,,3
 1350              		.global	_ZN14W5500Interface4StopEv
 1351              		.syntax unified
 1352              		.thumb
 1353              		.thumb_func
 1354              		.fpu fpv4-sp-d16
 1355              		.type	_ZN14W5500Interface4StopEv, %function
 1356              	_ZN14W5500Interface4StopEv:
 1357              		@ args = 0, pretend = 0, frame = 0
 1358              		@ frame_needed = 0, uses_anonymous_args = 0
 1359              		@ link register save eliminated.
 1360 0000 D0F8A430 		ldr	r3, [r0, #164]
 1361 0004 03B9     		cbnz	r3, .L209
 1362 0006 7047     		bx	lr
 1363              	.L209:
 1364 0008 FFF7FEBF 		b	_ZN14W5500Interface4StopEv.part.9
 1365              		.size	_ZN14W5500Interface4StopEv, .-_ZN14W5500Interface4StopEv
 1366              		.section	.text._ZN14W5500Interface11InitSocketsEv,"ax",%progbits
 1367              		.align	1
 1368              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 25


 1369              		.global	_ZN14W5500Interface11InitSocketsEv
 1370              		.syntax unified
 1371              		.thumb
 1372              		.thumb_func
 1373              		.fpu fpv4-sp-d16
 1374              		.type	_ZN14W5500Interface11InitSocketsEv, %function
 1375              	_ZN14W5500Interface11InitSocketsEv:
 1376              		@ args = 0, pretend = 0, frame = 0
 1377              		@ frame_needed = 0, uses_anonymous_args = 0
 1378 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1379 0002 00F19E04 		add	r4, r0, #158
 1380 0006 0546     		mov	r5, r0
 1381 0008 E743     		mvns	r7, r4
 1382 000a 00F1A106 		add	r6, r0, #161
 1383              	.L212:
 1384 000e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 1385 0012 2BB9     		cbnz	r3, .L218
 1386              	.L211:
 1387 0014 B442     		cmp	r4, r6
 1388 0016 FAD1     		bne	.L212
 1389 0018 0023     		movs	r3, #0
 1390 001a C5F89430 		str	r3, [r5, #148]
 1391 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1392              	.L218:
 1393 0020 3919     		adds	r1, r7, r4
 1394 0022 C9B2     		uxtb	r1, r1
 1395 0024 2846     		mov	r0, r5
 1396 0026 FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 1397 002a F3E7     		b	.L211
 1398              		.size	_ZN14W5500Interface11InitSocketsEv, .-_ZN14W5500Interface11InitSocketsEv
 1399              		.section	.text._ZN14W5500Interface16TerminateSocketsEv,"ax",%progbits
 1400              		.align	1
 1401              		.p2align 2,,3
 1402              		.global	_ZN14W5500Interface16TerminateSocketsEv
 1403              		.syntax unified
 1404              		.thumb
 1405              		.thumb_func
 1406              		.fpu fpv4-sp-d16
 1407              		.type	_ZN14W5500Interface16TerminateSocketsEv, %function
 1408              	_ZN14W5500Interface16TerminateSocketsEv:
 1409              		@ args = 0, pretend = 0, frame = 0
 1410              		@ frame_needed = 0, uses_anonymous_args = 0
 1411 0000 38B5     		push	{r3, r4, r5, lr}
 1412 0002 00F17804 		add	r4, r0, #120
 1413 0006 00F19405 		add	r5, r0, #148
 1414              	.L220:
 1415 000a 54F8040B 		ldr	r0, [r4], #4
 1416 000e 0368     		ldr	r3, [r0]
 1417 0010 9B68     		ldr	r3, [r3, #8]
 1418 0012 9847     		blx	r3
 1419 0014 AC42     		cmp	r4, r5
 1420 0016 F8D1     		bne	.L220
 1421 0018 38BD     		pop	{r3, r4, r5, pc}
 1422              		.size	_ZN14W5500Interface16TerminateSocketsEv, .-_ZN14W5500Interface16TerminateSocketsEv
 1423 001a 00BF     		.section	.text.startup._GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Platform,"ax",%progbits
 1424              		.align	1
 1425              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 26


 1426              		.syntax unified
 1427              		.thumb
 1428              		.thumb_func
 1429              		.fpu fpv4-sp-d16
 1430              		.type	_GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Platform, %function
 1431              	_GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Platform:
 1432              		@ args = 0, pretend = 0, frame = 0
 1433              		@ frame_needed = 0, uses_anonymous_args = 0
 1434              		@ link register save eliminated.
 1435 0000 0149     		ldr	r1, .L224
 1436 0002 0248     		ldr	r0, .L224+4
 1437 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 1438              	.L225:
 1439              		.align	2
 1440              	.L224:
 1441 0008 00000000 		.word	.LANCHOR7
 1442 000c 00000000 		.word	.LANCHOR1
 1443              		.size	_GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Platform, .-_GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Pl
 1444              		.section	.init_array,"aw",%init_array
 1445              		.align	2
 1446 0000 00000000 		.word	_GLOBAL__sub_I__ZN14W5500InterfaceC2ER8Platform(target1)
 1447              		.global	_ZTV14W5500Interface
 1448              		.global	_ZN14W5500Interface16objectModelTableE
 1449              		.set	_ZL14DefaultGateway,_ZL16DefaultIpAddress
 1450              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 1451              		.align	2
 1452              		.set	.LANCHOR1,. + 0
 1453              		.type	_ZL14DefaultNetMask, %object
 1454              		.size	_ZL14DefaultNetMask, 4
 1455              	_ZL14DefaultNetMask:
 1456 0000 00000000 		.space	4
 1457              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1458              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1459              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1460              	_ZL28cpu_irq_prev_interrupt_state:
 1461 0000 00       		.space	1
 1462              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1463              		.align	2
 1464              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1465              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1466              	_ZL32cpu_irq_critical_section_counter:
 1467 0000 00000000 		.space	4
 1468              		.section	.rodata.._1,"a",%progbits
 1469              		.align	2
 1470              		.set	.LANCHOR7,. + 0
 1471              		.type	._1, %object
 1472              		.size	._1, 4
 1473              	._1:
 1474 0000 FF       		.byte	-1
 1475 0001 FF       		.byte	-1
 1476 0002 FF       		.byte	-1
 1477 0003 00       		.byte	0
 1478              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 1479              		.align	2
 1480              		.set	.LANCHOR4,. + 0
 1481              		.type	_ZL13ProtocolNames, %object
 1482              		.size	_ZL13ProtocolNames, 12
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 27


 1483              	_ZL13ProtocolNames:
 1484 0000 1C000000 		.word	.LC23
 1485 0004 24000000 		.word	.LC24
 1486 0008 28000000 		.word	.LC25
 1487              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 1488              		.align	2
 1489              		.set	.LANCHOR2,. + 0
 1490              		.type	_ZL16DefaultIpAddress, %object
 1491              		.size	_ZL16DefaultIpAddress, 4
 1492              	_ZL16DefaultIpAddress:
 1493 0000 00000000 		.space	4
 1494              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 1495              		.align	2
 1496              		.set	.LANCHOR5,. + 0
 1497              		.type	_ZL18DefaultPortNumbers, %object
 1498              		.size	_ZL18DefaultPortNumbers, 6
 1499              	_ZL18DefaultPortNumbers:
 1500 0000 5000     		.short	80
 1501 0002 1500     		.short	21
 1502 0004 1700     		.short	23
 1503              		.section	.rodata._ZN14W5500Interface11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1504              		.align	2
 1505              	.LC1:
 1506 0000 2068616C 		.ascii	" half duplex\000"
 1506      66206475 
 1506      706C6578 
 1506      00
 1507 000d 000000   		.space	3
 1508              	.LC2:
 1509 0010 646F776E 		.ascii	"down\000"
 1509      00
 1510 0015 000000   		.space	3
 1511              	.LC3:
 1512 0018 00       		.ascii	"\000"
 1513 0019 000000   		.space	3
 1514              	.LC4:
 1515 001c 2066756C 		.ascii	" full duplex\000"
 1515      6C206475 
 1515      706C6578 
 1515      00
 1516 0029 000000   		.space	3
 1517              	.LC5:
 1518 002c 3130304D 		.ascii	"100Mbps\000"
 1518      62707300 
 1519              	.LC6:
 1520 0034 31304D62 		.ascii	"10Mbps\000"
 1520      707300
 1521 003b 00       		.space	1
 1522              	.LC7:
 1523 003c 496E7465 		.ascii	"Interface state %d, link %s%s\012\000"
 1523      72666163 
 1523      65207374 
 1523      61746520 
 1523      25642C20 
 1524              		.section	.rodata._ZN14W5500Interface14EnableProtocolEhiiRK9StringRef.str1.4,"aMS",%progbits,1
 1525              		.align	2
 1526              	.LC15:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 28


 1527 0000 74686973 		.ascii	"this firmware does not support TLS\000"
 1527      20666972 
 1527      6D776172 
 1527      6520646F 
 1527      6573206E 
 1528 0023 00       		.space	1
 1529              	.LC16:
 1530 0024 496E7661 		.ascii	"Invalid protocol parameter\000"
 1530      6C696420 
 1530      70726F74 
 1530      6F636F6C 
 1530      20706172 
 1531              		.section	.rodata._ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_.str1.4,"aMS",%progbits,1
 1532              		.align	2
 1533              	.LC18:
 1534 0000 4E657477 		.ascii	"Network stopped\012\000"
 1534      6F726B20 
 1534      73746F70 
 1534      7065640A 
 1534      00
 1535              		.section	.rodata._ZN14W5500Interface15GetNetworkStateERK9StringRef.str1.4,"aMS",%progbits,1
 1536              		.align	2
 1537              	.LC9:
 1538 0000 64697361 		.ascii	"disabled\000"
 1538      626C6564 
 1538      00
 1539 0009 000000   		.space	3
 1540              	.LC10:
 1541 000c 656E6162 		.ascii	"enabled\000"
 1541      6C656400 
 1542              	.LC11:
 1543 0014 4E657477 		.ascii	"Network is %s, configured IP address: %s, actual IP"
 1543      6F726B20 
 1543      69732025 
 1543      732C2063 
 1543      6F6E6669 
 1544 0047 20616464 		.ascii	" address: %s\000"
 1544      72657373 
 1544      3A202573 
 1544      00
 1545              		.section	.rodata._ZN14W5500Interface16objectModelTableE,"a",%progbits
 1546              		.align	2
 1547              		.set	.LANCHOR0,. + 0
 1548              		.type	_ZN14W5500Interface16objectModelTableE, %object
 1549              		.size	_ZN14W5500Interface16objectModelTableE, 48
 1550              	_ZN14W5500Interface16objectModelTableE:
 1551 0000 00000000 		.word	.LC19
 1552 0004 00000000 		.word	_ZN14W5500InterfaceUlP11ObjectModelE_4_FUNES1_
 1553 0008 0B       		.byte	11
 1554 0009 00       		.space	1
 1555 000a 0000     		.short	0
 1556 000c 08000000 		.word	.LC20
 1557 0010 00000000 		.word	_ZN14W5500InterfaceUlP11ObjectModelE0_4_FUNES1_
 1558 0014 0B       		.byte	11
 1559 0015 00       		.space	1
 1560 0016 0000     		.short	0
 1561 0018 0C000000 		.word	.LC21
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 29


 1562 001c 00000000 		.word	_ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_
 1563 0020 0A       		.byte	10
 1564 0021 00       		.space	1
 1565 0022 0000     		.short	0
 1566 0024 14000000 		.word	.LC22
 1567 0028 00000000 		.word	_ZN14W5500InterfaceUlP11ObjectModelE2_4_FUNES1_
 1568 002c 0B       		.byte	11
 1569 002d 00       		.space	1
 1570 002e 0000     		.short	0
 1571              		.section	.rodata._ZN14W5500Interface4InitEv.str1.4,"aMS",%progbits,1
 1572              		.align	2
 1573              	.LC8:
 1574 0000 57353530 		.ascii	"W5500\000"
 1574      3000
 1575              		.section	.rodata._ZN14W5500Interface4SpinEb.str1.4,"aMS",%progbits,1
 1576              		.align	2
 1577              	.LC12:
 1578 0000 4E657477 		.ascii	"Network running, IP address = %s\012\000"
 1578      6F726B20 
 1578      72756E6E 
 1578      696E672C 
 1578      20495020 
 1579              		.section	.rodata._ZN14W5500Interface8ActivateEv.str1.4,"aMS",%progbits,1
 1580              		.align	2
 1581              	.LC17:
 1582 0000 4E657477 		.ascii	"Network disabled.\012\000"
 1582      6F726B20 
 1582      64697361 
 1582      626C6564 
 1582      2E0A00
 1583              		.section	.rodata._ZN14W5500InterfaceUlP11ObjectModelE1_4_FUNES1_.str1.4,"aMS",%progbits,1
 1584              		.align	2
 1585              	.LC0:
 1586 0000 65746865 		.ascii	"ethernet\000"
 1586      726E6574 
 1586      00
 1587              		.section	.rodata._ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef.str1.4,"aMS",%progbits,1
 1588              		.align	2
 1589              	.LC13:
 1590 0000 25732069 		.ascii	"%s is enabled on port %u\000"
 1590      7320656E 
 1590      61626C65 
 1590      64206F6E 
 1590      20706F72 
 1591 0019 000000   		.space	3
 1592              	.LC14:
 1593 001c 25732069 		.ascii	"%s is disabled\000"
 1593      73206469 
 1593      7361626C 
 1593      656400
 1594              		.section	.rodata._ZTV14W5500Interface,"a",%progbits
 1595              		.align	2
 1596              		.set	.LANCHOR3,. + 0
 1597              		.type	_ZTV14W5500Interface, %object
 1598              		.size	_ZTV14W5500Interface, 96
 1599              	_ZTV14W5500Interface:
 1600 0000 00000000 		.word	0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 30


 1601 0004 00000000 		.word	0
 1602 0008 00000000 		.word	_ZNK14W5500Interface19GetObjectModelTableERj
 1603 000c 00000000 		.word	_ZN14W5500Interface4InitEv
 1604 0010 00000000 		.word	_ZN14W5500Interface8ActivateEv
 1605 0014 00000000 		.word	_ZN14W5500Interface4ExitEv
 1606 0018 00000000 		.word	_ZN14W5500Interface4SpinEb
 1607 001c 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 1608 0020 00000000 		.word	_ZN14W5500Interface11DiagnosticsE11MessageType
 1609 0024 00000000 		.word	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_
 1610 0028 00000000 		.word	_ZN14W5500Interface15GetNetworkStateERK9StringRef
 1611 002c 00000000 		.word	_ZNK14W5500Interface11EnableStateEv
 1612 0030 00000000 		.word	_ZNK14W5500Interface14InNetworkStackEv
 1613 0034 00000000 		.word	_ZNK14W5500Interface15IsWiFiInterfaceEv
 1614 0038 00000000 		.word	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef
 1615 003c 00000000 		.word	_ZN14W5500Interface15DisableProtocolEhRK9StringRef
 1616 0040 00000000 		.word	_ZNK14W5500Interface15ReportProtocolsERK9StringRef
 1617 0044 00000000 		.word	_ZNK14W5500Interface12GetIPAddressEv
 1618 0048 00000000 		.word	_ZN14W5500Interface12SetIPAddressE9IPAddressS0_S0_
 1619 004c 00000000 		.word	_ZN14W5500Interface13SetMacAddressEPKh
 1620 0050 00000000 		.word	_ZNK14W5500Interface13GetMacAddressEv
 1621 0054 00000000 		.word	_ZN14W5500Interface14UpdateHostnameEPKc
 1622 0058 00000000 		.word	_ZN14W5500Interface12OpenDataPortEt
 1623 005c 00000000 		.word	_ZN14W5500Interface17TerminateDataPortEv
 1624              		.section	.rodata._ZZN14W5500Interface5StartEvE8bufSizes,"a",%progbits
 1625              		.align	2
 1626              		.set	.LANCHOR6,. + 0
 1627              		.type	_ZZN14W5500Interface5StartEvE8bufSizes, %object
 1628              		.size	_ZZN14W5500Interface5StartEvE8bufSizes, 8
 1629              	_ZZN14W5500Interface5StartEvE8bufSizes:
 1630 0000 02       		.byte	2
 1631 0001 02       		.byte	2
 1632 0002 02       		.byte	2
 1633 0003 02       		.byte	2
 1634 0004 02       		.byte	2
 1635 0005 02       		.byte	2
 1636 0006 02       		.byte	2
 1637 0007 02       		.byte	2
 1638              		.section	.rodata.str1.4,"aMS",%progbits,1
 1639              		.align	2
 1640              	.LC19:
 1641 0000 67617465 		.ascii	"gateway\000"
 1641      77617900 
 1642              	.LC20:
 1643 0008 697000   		.ascii	"ip\000"
 1644 000b 00       		.space	1
 1645              	.LC21:
 1646 000c 6E616D65 		.ascii	"name\000"
 1646      00
 1647 0011 000000   		.space	3
 1648              	.LC22:
 1649 0014 6E65746D 		.ascii	"netmask\000"
 1649      61736B00 
 1650              	.LC23:
 1651 001c 48545450 		.ascii	"HTTP\000"
 1651      00
 1652 0021 000000   		.space	3
 1653              	.LC24:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccex1Ero.s 			page 31


 1654 0024 46545000 		.ascii	"FTP\000"
 1655              	.LC25:
 1656 0028 54454C4E 		.ascii	"TELNET\000"
 1656      455400
 1657              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
