ARM GAS  /tmp/cczZrVrD.s 			page 1


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
  29 0002 00BF     		.section	.text._ZNK14W5500Interface14InNetworkStackEv,"axG",%progbits,_ZNK14W5500Interface14InNetw
  30              		.align	1
  31              		.p2align 2,,3
  32              		.weak	_ZNK14W5500Interface14InNetworkStackEv
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNK14W5500Interface14InNetworkStackEv, %function
  38              	_ZNK14W5500Interface14InNetworkStackEv:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0020     		movs	r0, #0
  43 0002 7047     		bx	lr
  44              		.size	_ZNK14W5500Interface14InNetworkStackEv, .-_ZNK14W5500Interface14InNetworkStackEv
  45              		.section	.text._ZNK14W5500Interface15IsWiFiInterfaceEv,"axG",%progbits,_ZNK14W5500Interface15IsWiF
  46              		.align	1
  47              		.p2align 2,,3
  48              		.weak	_ZNK14W5500Interface15IsWiFiInterfaceEv
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZNK14W5500Interface15IsWiFiInterfaceEv, %function
  54              	_ZNK14W5500Interface15IsWiFiInterfaceEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/cczZrVrD.s 			page 2


  58 0000 0020     		movs	r0, #0
  59 0002 7047     		bx	lr
  60              		.size	_ZNK14W5500Interface15IsWiFiInterfaceEv, .-_ZNK14W5500Interface15IsWiFiInterfaceEv
  61              		.section	.text._ZN14W5500Interface14UpdateHostnameEPKc,"axG",%progbits,_ZN14W5500Interface14Update
  62              		.align	1
  63              		.p2align 2,,3
  64              		.weak	_ZN14W5500Interface14UpdateHostnameEPKc
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZN14W5500Interface14UpdateHostnameEPKc, %function
  70              	_ZN14W5500Interface14UpdateHostnameEPKc:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 7047     		bx	lr
  75              		.size	_ZN14W5500Interface14UpdateHostnameEPKc, .-_ZN14W5500Interface14UpdateHostnameEPKc
  76 0002 00BF     		.section	.text._ZNK14W5500Interface12GetIPAddressEv,"axG",%progbits,_ZNK14W5500Interface12GetIPAdd
  77              		.align	1
  78              		.p2align 2,,3
  79              		.weak	_ZNK14W5500Interface12GetIPAddressEv
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  84              		.type	_ZNK14W5500Interface12GetIPAddressEv, %function
  85              	_ZNK14W5500Interface12GetIPAddressEv:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89 0000 4E30     		adds	r0, r0, #78
  90 0002 7047     		bx	lr
  91              		.size	_ZNK14W5500Interface12GetIPAddressEv, .-_ZNK14W5500Interface12GetIPAddressEv
  92              		.section	.text._ZNK14W5500Interface13GetMacAddressEv,"axG",%progbits,_ZNK14W5500Interface13GetMacA
  93              		.align	1
  94              		.p2align 2,,3
  95              		.weak	_ZNK14W5500Interface13GetMacAddressEv
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv4-sp-d16
 100              		.type	_ZNK14W5500Interface13GetMacAddressEv, %function
 101              	_ZNK14W5500Interface13GetMacAddressEv:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 5A30     		adds	r0, r0, #90
 106 0002 7047     		bx	lr
 107              		.size	_ZNK14W5500Interface13GetMacAddressEv, .-_ZNK14W5500Interface13GetMacAddressEv
 108              		.section	.text._ZN14W5500Interface13SetMacAddressEPKh,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.global	_ZN14W5500Interface13SetMacAddressEPKh
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  /tmp/cczZrVrD.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	_ZN14W5500Interface13SetMacAddressEPKh, %function
 117              	_ZN14W5500Interface13SetMacAddressEPKh:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 4B1E     		subs	r3, r1, #1
 122 0002 5A30     		adds	r0, r0, #90
 123 0004 0531     		adds	r1, r1, #5
 124              	.L9:
 125 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 126 000a 00F8012B 		strb	r2, [r0], #1
 127 000e 8B42     		cmp	r3, r1
 128 0010 F9D1     		bne	.L9
 129 0012 7047     		bx	lr
 130              		.size	_ZN14W5500Interface13SetMacAddressEPKh, .-_ZN14W5500Interface13SetMacAddressEPKh
 131              		.section	.text._ZNK14W5500Interface11EnableStateEv,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	_ZNK14W5500Interface11EnableStateEv
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	_ZNK14W5500Interface11EnableStateEv, %function
 140              	_ZNK14W5500Interface11EnableStateEv:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 806C     		ldr	r0, [r0, #72]
 145 0002 0030     		adds	r0, r0, #0
 146 0004 18BF     		it	ne
 147 0006 0120     		movne	r0, #1
 148 0008 7047     		bx	lr
 149              		.size	_ZNK14W5500Interface11EnableStateEv, .-_ZNK14W5500Interface11EnableStateEv
 150 000a 00BF     		.section	.text._ZN14W5500Interface12SetIPAddressEPKhS1_S1_,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu fpv4-sp-d16
 158              		.type	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_, %function
 159              	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 0968     		ldr	r1, [r1]	@ unaligned
 164 0002 C0F84E10 		str	r1, [r0, #78]	@ unaligned
 165 0006 1268     		ldr	r2, [r2]	@ unaligned
 166 0008 C0F85220 		str	r2, [r0, #82]	@ unaligned
 167 000c 1B68     		ldr	r3, [r3]	@ unaligned
 168 000e C0F85630 		str	r3, [r0, #86]	@ unaligned
 169 0012 7047     		bx	lr
 170              		.size	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_, .-_ZN14W5500Interface12SetIPAddressEPKhS1_S1_
 171              		.section	.text._ZN14W5500Interface17TerminateDataPortEv,"ax",%progbits
ARM GAS  /tmp/cczZrVrD.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_ZN14W5500Interface17TerminateDataPortEv
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZN14W5500Interface17TerminateDataPortEv, %function
 180              	_ZN14W5500Interface17TerminateDataPortEv:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 006B     		ldr	r0, [r0, #48]
 185 0002 0368     		ldr	r3, [r0]
 186 0004 9B68     		ldr	r3, [r3, #8]
 187 0006 1847     		bx	r3	@ indirect register sibling call
 188              		.size	_ZN14W5500Interface17TerminateDataPortEv, .-_ZN14W5500Interface17TerminateDataPortEv
 189              		.section	.text._ZN14W5500Interface12OpenDataPortEt,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_ZN14W5500Interface12OpenDataPortEt
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_ZN14W5500Interface12OpenDataPortEt, %function
 198              	_ZN14W5500Interface12OpenDataPortEt:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 0A46     		mov	r2, r1
 203 0002 006B     		ldr	r0, [r0, #48]
 204 0004 0323     		movs	r3, #3
 205 0006 0521     		movs	r1, #5
 206 0008 FFF7FEBF 		b	_ZN11W5500Socket4InitEhth
 207              		.size	_ZN14W5500Interface12OpenDataPortEt, .-_ZN14W5500Interface12OpenDataPortEt
 208              		.section	.text._ZN14W5500Interface11DiagnosticsE11MessageType,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	_ZN14W5500Interface11DiagnosticsE11MessageType
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 216              		.type	_ZN14W5500Interface11DiagnosticsE11MessageType, %function
 217              	_ZN14W5500Interface11DiagnosticsE11MessageType:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 836C     		ldr	r3, [r0, #72]
 222 0002 024A     		ldr	r2, .L16
 223 0004 4069     		ldr	r0, [r0, #20]
 224 0006 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 225              	.L17:
 226 000a 00BF     		.align	2
 227              	.L16:
 228 000c 00000000 		.word	.LC0
ARM GAS  /tmp/cczZrVrD.s 			page 5


 229              		.size	_ZN14W5500Interface11DiagnosticsE11MessageType, .-_ZN14W5500Interface11DiagnosticsE11Message
 230              		.section	.text._ZN14W5500Interface4StopEv.part.5,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu fpv4-sp-d16
 237              		.type	_ZN14W5500Interface4StopEv.part.5, %function
 238              	_ZN14W5500Interface4StopEv.part.5:
 239              		@ args = 0, pretend = 0, frame = 8
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241 0000 10B5     		push	{r4, lr}
 242 0002 0446     		mov	r4, r0
 243 0004 82B0     		sub	sp, sp, #8
 244 0006 011D     		adds	r1, r0, #4
 245 0008 4FF0FF32 		mov	r2, #-1
 246 000c 6846     		mov	r0, sp
 247 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 248 0012 94F84D30 		ldrb	r3, [r4, #77]	@ zero_extendqisi2
 249 0016 53B9     		cbnz	r3, .L24
 250              	.L19:
 251 0018 0021     		movs	r1, #0
 252 001a 6420     		movs	r0, #100
 253 001c FFF7FEFF 		bl	digitalWrite
 254 0020 0023     		movs	r3, #0
 255 0022 6846     		mov	r0, sp
 256 0024 A364     		str	r3, [r4, #72]
 257 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 258 002a 02B0     		add	sp, sp, #8
 259              		@ sp needed
 260 002c 10BD     		pop	{r4, pc}
 261              	.L24:
 262 002e FFF7FEFF 		bl	_Z9DHCP_stopv
 263 0032 F1E7     		b	.L19
 264              		.size	_ZN14W5500Interface4StopEv.part.5, .-_ZN14W5500Interface4StopEv.part.5
 265              		.section	.text._ZN14W5500Interface4ExitEv,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	_ZN14W5500Interface4ExitEv
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	_ZN14W5500Interface4ExitEv, %function
 274              	_ZN14W5500Interface4ExitEv:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 836C     		ldr	r3, [r0, #72]
 279 0002 03B9     		cbnz	r3, .L27
 280 0004 7047     		bx	lr
 281              	.L27:
 282 0006 FFF7FEBF 		b	_ZN14W5500Interface4StopEv.part.5
 283              		.size	_ZN14W5500Interface4ExitEv, .-_ZN14W5500Interface4ExitEv
 284 000a 00BF     		.section	.text._ZN14W5500Interface4InitEv,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/cczZrVrD.s 			page 6


 286              		.p2align 2,,3
 287              		.global	_ZN14W5500Interface4InitEv
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 292              		.type	_ZN14W5500Interface4InitEv, %function
 293              	_ZN14W5500Interface4InitEv:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296 0000 38B5     		push	{r3, r4, r5, lr}
 297 0002 1649     		ldr	r1, .L32
 298 0004 0446     		mov	r4, r0
 299 0006 0430     		adds	r0, r0, #4
 300 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 301 000c 0022     		movs	r2, #0
 302 000e 0321     		movs	r1, #3
 303 0010 6420     		movs	r0, #100
 304 0012 FFF7FEFF 		bl	pinModeDuet
 305 0016 FFF7FEFF 		bl	millis
 306 001a 2368     		ldr	r3, [r4]
 307 001c A061     		str	r0, [r4, #24]
 308 001e DD6B     		ldr	r5, [r3, #60]
 309 0020 0F4B     		ldr	r3, .L32+4
 310 0022 9D42     		cmp	r5, r3
 311 0024 14D1     		bne	.L29
 312 0026 0F49     		ldr	r1, .L32+8
 313 0028 0F4A     		ldr	r2, .L32+12
 314 002a 104B     		ldr	r3, .L32+16
 315 002c 0968     		ldr	r1, [r1]
 316 002e 1268     		ldr	r2, [r2]
 317 0030 1B68     		ldr	r3, [r3]
 318 0032 C4F84E10 		str	r1, [r4, #78]	@ unaligned
 319 0036 C4F85220 		str	r2, [r4, #82]	@ unaligned
 320 003a C4F85630 		str	r3, [r4, #86]	@ unaligned
 321              	.L30:
 322 003e 6369     		ldr	r3, [r4, #20]
 323 0040 53F8A12F 		ldr	r2, [r3, #161]!	@ unaligned
 324 0044 C4F85A20 		str	r2, [r4, #90]	@ unaligned
 325 0048 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 326 004a A4F85E30 		strh	r3, [r4, #94]	@ unaligned
 327 004e 38BD     		pop	{r3, r4, r5, pc}
 328              	.L29:
 329 0050 064B     		ldr	r3, .L32+16
 330 0052 054A     		ldr	r2, .L32+12
 331 0054 0349     		ldr	r1, .L32+8
 332 0056 2046     		mov	r0, r4
 333 0058 A847     		blx	r5
 334 005a F0E7     		b	.L30
 335              	.L33:
 336              		.align	2
 337              	.L32:
 338 005c 00000000 		.word	.LC1
 339 0060 00000000 		.word	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_
 340 0064 00000000 		.word	.LANCHOR0
 341 0068 00000000 		.word	.LANCHOR1
 342 006c 00000000 		.word	.LANCHOR2
ARM GAS  /tmp/cczZrVrD.s 			page 7


 343              		.size	_ZN14W5500Interface4InitEv, .-_ZN14W5500Interface4InitEv
 344              		.section	.text._ZN14W5500Interface15GetNetworkStateERK9StringRef,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	_ZN14W5500Interface15GetNetworkStateERK9StringRef
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	_ZN14W5500Interface15GetNetworkStateERK9StringRef, %function
 353              	_ZN14W5500Interface15GetNetworkStateERK9StringRef:
 354              		@ args = 0, pretend = 0, frame = 40
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 357 0002 0268     		ldr	r2, [r0]
 358 0004 144D     		ldr	r5, .L40
 359 0006 126A     		ldr	r2, [r2, #32]
 360 0008 4369     		ldr	r3, [r0, #20]
 361 000a AA42     		cmp	r2, r5
 362 000c 0E46     		mov	r6, r1
 363 000e 8DB0     		sub	sp, sp, #52
 364 0010 0446     		mov	r4, r0
 365 0012 03F19501 		add	r1, r3, #149
 366 0016 1BD1     		bne	.L35
 367 0018 806C     		ldr	r0, [r0, #72]
 368 001a 0030     		adds	r0, r0, #0
 369 001c 18BF     		it	ne
 370 001e 0120     		movne	r0, #1
 371              	.L36:
 372 0020 0E4A     		ldr	r2, .L40+4
 373 0022 0F4D     		ldr	r5, .L40+8
 374 0024 08AF     		add	r7, sp, #32
 375 0026 0028     		cmp	r0, #0
 376 0028 18BF     		it	ne
 377 002a 1546     		movne	r5, r2
 378 002c 04A8     		add	r0, sp, #16
 379 002e FFF7FEFF 		bl	_ZN9IP4StringC1EPKh
 380 0032 04F14E01 		add	r1, r4, #78
 381 0036 3846     		mov	r0, r7
 382 0038 FFF7FEFF 		bl	_ZN9IP4StringC1EPKh
 383 003c 2A46     		mov	r2, r5
 384 003e 0097     		str	r7, [sp]
 385 0040 04AB     		add	r3, sp, #16
 386 0042 3046     		mov	r0, r6
 387 0044 0749     		ldr	r1, .L40+12
 388 0046 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 389 004a 0120     		movs	r0, #1
 390 004c 0DB0     		add	sp, sp, #52
 391              		@ sp needed
 392 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 393              	.L35:
 394 0050 0391     		str	r1, [sp, #12]
 395 0052 9047     		blx	r2
 396 0054 0399     		ldr	r1, [sp, #12]
 397 0056 E3E7     		b	.L36
 398              	.L41:
 399              		.align	2
ARM GAS  /tmp/cczZrVrD.s 			page 8


 400              	.L40:
 401 0058 00000000 		.word	_ZNK14W5500Interface11EnableStateEv
 402 005c 0C000000 		.word	.LC3
 403 0060 00000000 		.word	.LC2
 404 0064 14000000 		.word	.LC4
 405              		.size	_ZN14W5500Interface15GetNetworkStateERK9StringRef, .-_ZN14W5500Interface15GetNetworkStateERK
 406              		.section	.text._ZN14W5500InterfaceC2ER8Platform,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	_ZN14W5500InterfaceC2ER8Platform
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	_ZN14W5500InterfaceC2ER8Platform, %function
 415              	_ZN14W5500InterfaceC2ER8Platform:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418 0000 144A     		ldr	r2, .L47
 419 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 420 0004 0023     		movs	r3, #0
 421 0006 C0E90023 		strd	r2, r3, [r0]
 422 000a 0446     		mov	r4, r0
 423 000c 4161     		str	r1, [r0, #20]
 424 000e 8361     		str	r3, [r0, #24]
 425 0010 8364     		str	r3, [r0, #72]
 426 0012 80F84C30 		strb	r3, [r0, #76]
 427 0016 00F11C05 		add	r5, r0, #28
 428 001a 00F13807 		add	r7, r0, #56
 429              	.L43:
 430 001e 2C20     		movs	r0, #44
 431 0020 FFF7FEFF 		bl	_Znwj
 432 0024 2146     		mov	r1, r4
 433 0026 0646     		mov	r6, r0
 434 0028 FFF7FEFF 		bl	_ZN11W5500SocketC1EP16NetworkInterface
 435 002c 45F8046B 		str	r6, [r5], #4
 436 0030 AF42     		cmp	r7, r5
 437 0032 F4D1     		bne	.L43
 438 0034 0122     		movs	r2, #1
 439 0036 0023     		movs	r3, #0
 440 0038 0749     		ldr	r1, .L47+4
 441 003a 84F84220 		strb	r2, [r4, #66]
 442 003e 1722     		movs	r2, #23
 443 0040 84F84330 		strb	r3, [r4, #67]
 444 0044 84F84430 		strb	r3, [r4, #68]
 445 0048 E163     		str	r1, [r4, #60]
 446 004a A4F84020 		strh	r2, [r4, #64]	@ movhi
 447 004e 2046     		mov	r0, r4
 448 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 449              	.L48:
 450 0052 00BF     		.align	2
 451              	.L47:
 452 0054 08000000 		.word	.LANCHOR3+8
 453 0058 50001500 		.word	1376336
 454              		.size	_ZN14W5500InterfaceC2ER8Platform, .-_ZN14W5500InterfaceC2ER8Platform
 455              		.global	_ZN14W5500InterfaceC1ER8Platform
 456              		.thumb_set _ZN14W5500InterfaceC1ER8Platform,_ZN14W5500InterfaceC2ER8Platform
ARM GAS  /tmp/cczZrVrD.s 			page 9


 457              		.section	.text._ZN14W5500Interface13StartProtocolEh,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	_ZN14W5500Interface13StartProtocolEh
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	_ZN14W5500Interface13StartProtocolEh, %function
 466              	_ZN14W5500Interface13StartProtocolEh:
 467              		@ args = 0, pretend = 0, frame = 8
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469 0000 70B5     		push	{r4, r5, r6, lr}
 470 0002 0446     		mov	r4, r0
 471 0004 82B0     		sub	sp, sp, #8
 472 0006 0D46     		mov	r5, r1
 473 0008 6846     		mov	r0, sp
 474 000a 211D     		adds	r1, r4, #4
 475 000c 4FF0FF32 		mov	r2, #-1
 476 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 477 0014 012D     		cmp	r5, #1
 478 0016 20D0     		beq	.L51
 479 0018 0DD3     		bcc	.L52
 480 001a 022D     		cmp	r5, #2
 481 001c 06D1     		bne	.L50
 482 001e 2B46     		mov	r3, r5
 483 0020 B4F84020 		ldrh	r2, [r4, #64]
 484 0024 606B     		ldr	r0, [r4, #52]
 485 0026 0621     		movs	r1, #6
 486 0028 FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
 487              	.L50:
 488 002c 6846     		mov	r0, sp
 489 002e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 490 0032 02B0     		add	sp, sp, #8
 491              		@ sp needed
 492 0034 70BD     		pop	{r4, r5, r6, pc}
 493              	.L52:
 494 0036 04F11C06 		add	r6, r4, #28
 495 003a 0025     		movs	r5, #0
 496              	.L54:
 497 003c E9B2     		uxtb	r1, r5
 498 003e 0023     		movs	r3, #0
 499 0040 A28F     		ldrh	r2, [r4, #60]
 500 0042 56F8040B 		ldr	r0, [r6], #4
 501 0046 0135     		adds	r5, r5, #1
 502 0048 FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
 503 004c 042D     		cmp	r5, #4
 504 004e F5D1     		bne	.L54
 505 0050 6846     		mov	r0, sp
 506 0052 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 507 0056 02B0     		add	sp, sp, #8
 508              		@ sp needed
 509 0058 70BD     		pop	{r4, r5, r6, pc}
 510              	.L51:
 511 005a 2B46     		mov	r3, r5
 512 005c E28F     		ldrh	r2, [r4, #62]
 513 005e E06A     		ldr	r0, [r4, #44]
ARM GAS  /tmp/cczZrVrD.s 			page 10


 514 0060 0421     		movs	r1, #4
 515 0062 FFF7FEFF 		bl	_ZN11W5500Socket4InitEhth
 516 0066 6846     		mov	r0, sp
 517 0068 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 518 006c 02B0     		add	sp, sp, #8
 519              		@ sp needed
 520 006e 70BD     		pop	{r4, r5, r6, pc}
 521              		.size	_ZN14W5500Interface13StartProtocolEh, .-_ZN14W5500Interface13StartProtocolEh
 522              		.section	.text._ZN14W5500Interface4SpinEb,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	_ZN14W5500Interface4SpinEb
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	_ZN14W5500Interface4SpinEb, %function
 531              	_ZN14W5500Interface4SpinEb:
 532              		@ args = 0, pretend = 0, frame = 16
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 535 0002 836C     		ldr	r3, [r0, #72]
 536 0004 023B     		subs	r3, r3, #2
 537 0006 85B0     		sub	sp, sp, #20
 538 0008 0446     		mov	r4, r0
 539 000a 0D46     		mov	r5, r1
 540 000c 032B     		cmp	r3, #3
 541 000e 28D8     		bhi	.L59
 542 0010 DFE803F0 		tbb	[pc, r3]
 543              	.L62:
 544 0014 6B       		.byte	(.L61-.L62)/2
 545 0015 02       		.byte	(.L63-.L62)/2
 546 0016 4C       		.byte	(.L64-.L62)/2
 547 0017 29       		.byte	(.L65-.L62)/2
 548              		.p2align 1
 549              	.L63:
 550 0018 19B3     		cbz	r1, .L59
 551 001a 6E46     		mov	r6, sp
 552 001c 4FF0FF32 		mov	r2, #-1
 553 0020 211D     		adds	r1, r4, #4
 554 0022 3046     		mov	r0, r6
 555 0024 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 556 0028 FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 557 002c 0128     		cmp	r0, #1
 558 002e 40F0B080 		bne	.L70
 559 0032 FFF7FEFF 		bl	millis
 560 0036 A369     		ldr	r3, [r4, #24]
 561 0038 C01A     		subs	r0, r0, r3
 562 003a B0F57A7F 		cmp	r0, #1000
 563 003e 80F0BF80 		bcs	.L110
 564              	.L71:
 565 0042 FFF7FEFF 		bl	_Z8DHCP_runv
 566 0046 0228     		cmp	r0, #2
 567 0048 08D1     		bne	.L82
 568 004a 0422     		movs	r2, #4
 569 004c 04F14E01 		add	r1, r4, #78
 570 0050 4FF47060 		mov	r0, #3840
ARM GAS  /tmp/cczZrVrD.s 			page 11


 571 0054 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 572 0058 0423     		movs	r3, #4
 573 005a A364     		str	r3, [r4, #72]
 574              	.L82:
 575 005c 3046     		mov	r0, r6
 576 005e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 577              	.L59:
 578 0062 05B0     		add	sp, sp, #20
 579              		@ sp needed
 580 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 581              	.L65:
 582 0066 6E46     		mov	r6, sp
 583 0068 4FF0FF32 		mov	r2, #-1
 584 006c 211D     		adds	r1, r4, #4
 585 006e 3046     		mov	r0, r6
 586 0070 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 587 0074 FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 588 0078 0128     		cmp	r0, #1
 589 007a 5DD0     		beq	.L111
 590 007c 002D     		cmp	r5, #0
 591 007e EDD0     		beq	.L82
 592 0080 94F84D30 		ldrb	r3, [r4, #77]	@ zero_extendqisi2
 593 0084 002B     		cmp	r3, #0
 594 0086 40F09280 		bne	.L112
 595              	.L84:
 596 008a 04F11C05 		add	r5, r4, #28
 597 008e 04F13807 		add	r7, r4, #56
 598              	.L85:
 599 0092 55F8040B 		ldr	r0, [r5], #4
 600 0096 0368     		ldr	r3, [r0]
 601 0098 9B68     		ldr	r3, [r3, #8]
 602 009a 9847     		blx	r3
 603 009c BD42     		cmp	r5, r7
 604 009e F8D1     		bne	.L85
 605              	.L109:
 606 00a0 0223     		movs	r3, #2
 607 00a2 A364     		str	r3, [r4, #72]
 608 00a4 3046     		mov	r0, r6
 609 00a6 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 610 00aa DAE7     		b	.L59
 611              	.L64:
 612 00ac 0029     		cmp	r1, #0
 613 00ae D8D0     		beq	.L59
 614 00b0 00F14205 		add	r5, r0, #66
 615 00b4 EF43     		mvns	r7, r5
 616 00b6 00F14506 		add	r6, r0, #69
 617              	.L75:
 618 00ba 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 619 00be 002B     		cmp	r3, #0
 620 00c0 61D1     		bne	.L113
 621              	.L74:
 622 00c2 AE42     		cmp	r6, r5
 623 00c4 F9D1     		bne	.L75
 624 00c6 0023     		movs	r3, #0
 625 00c8 6569     		ldr	r5, [r4, #20]
 626 00ca A363     		str	r3, [r4, #56]
 627 00cc 04F14E01 		add	r1, r4, #78
ARM GAS  /tmp/cczZrVrD.s 			page 12


 628 00d0 6846     		mov	r0, sp
 629 00d2 FFF7FEFF 		bl	_ZN9IP4StringC1EPKh
 630 00d6 6B46     		mov	r3, sp
 631 00d8 2846     		mov	r0, r5
 632 00da 3F4A     		ldr	r2, .L115
 633 00dc 8521     		movs	r1, #133
 634 00de FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 635 00e2 0523     		movs	r3, #5
 636 00e4 A364     		str	r3, [r4, #72]
 637 00e6 05B0     		add	sp, sp, #20
 638              		@ sp needed
 639 00e8 F0BD     		pop	{r4, r5, r6, r7, pc}
 640              	.L61:
 641 00ea 6E46     		mov	r6, sp
 642 00ec 3046     		mov	r0, r6
 643 00ee 4FF0FF32 		mov	r2, #-1
 644 00f2 211D     		adds	r1, r4, #4
 645 00f4 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 646 00f8 002D     		cmp	r5, #0
 647 00fa AFD0     		beq	.L82
 648 00fc FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 649 0100 0128     		cmp	r0, #1
 650 0102 ABD1     		bne	.L82
 651 0104 B4F84E30 		ldrh	r3, [r4, #78]
 652 0108 002B     		cmp	r3, #0
 653 010a 53D1     		bne	.L69
 654 010c B4F85030 		ldrh	r3, [r4, #80]
 655 0110 002B     		cmp	r3, #0
 656 0112 4FD1     		bne	.L69
 657 0114 84F84D00 		strb	r0, [r4, #77]
 658 0118 6069     		ldr	r0, [r4, #20]
 659 011a FFF7FEFF 		bl	_ZN8Platform6RandomEv
 660 011e 2F4B     		ldr	r3, .L115+4
 661 0120 5A68     		ldr	r2, [r3, #4]	@ unaligned
 662 0122 0146     		mov	r1, r0
 663 0124 2032     		adds	r2, r2, #32
 664 0126 0720     		movs	r0, #7
 665 0128 FFF7FEFF 		bl	_Z9DHCP_inithmPKc
 666 012c FFF7FEFF 		bl	millis
 667 0130 0323     		movs	r3, #3
 668 0132 A061     		str	r0, [r4, #24]
 669 0134 A364     		str	r3, [r4, #72]
 670 0136 91E7     		b	.L82
 671              	.L111:
 672 0138 B5B1     		cbz	r5, .L78
 673 013a 94F84D30 		ldrb	r3, [r4, #77]	@ zero_extendqisi2
 674 013e 9BB1     		cbz	r3, .L78
 675 0140 FFF7FEFF 		bl	millis
 676 0144 A369     		ldr	r3, [r4, #24]
 677 0146 C01A     		subs	r0, r0, r3
 678 0148 B0F57A7F 		cmp	r0, #1000
 679 014c 3ED2     		bcs	.L114
 680              	.L80:
 681 014e FFF7FEFF 		bl	_Z8DHCP_runv
 682 0152 831E     		subs	r3, r0, #2
 683 0154 DBB2     		uxtb	r3, r3
 684 0156 012B     		cmp	r3, #1
ARM GAS  /tmp/cczZrVrD.s 			page 13


 685 0158 06D8     		bhi	.L78
 686 015a 0422     		movs	r2, #4
 687 015c 04F14E01 		add	r1, r4, #78
 688 0160 4FF47060 		mov	r0, #3840
 689 0164 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 690              	.L78:
 691 0168 A36B     		ldr	r3, [r4, #56]
 692 016a 04EB8303 		add	r3, r4, r3, lsl #2
 693 016e 2946     		mov	r1, r5
 694 0170 D869     		ldr	r0, [r3, #28]
 695 0172 0368     		ldr	r3, [r0]
 696 0174 1B68     		ldr	r3, [r3]
 697 0176 9847     		blx	r3
 698 0178 A36B     		ldr	r3, [r4, #56]
 699 017a 0133     		adds	r3, r3, #1
 700 017c 072B     		cmp	r3, #7
 701 017e 08BF     		it	eq
 702 0180 0023     		moveq	r3, #0
 703 0182 A363     		str	r3, [r4, #56]
 704 0184 6AE7     		b	.L82
 705              	.L113:
 706 0186 7919     		adds	r1, r7, r5
 707 0188 C9B2     		uxtb	r1, r1
 708 018a 2046     		mov	r0, r4
 709 018c FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 710 0190 97E7     		b	.L74
 711              	.L70:
 712 0192 FFF7FEFF 		bl	_Z9DHCP_stopv
 713 0196 04F11C05 		add	r5, r4, #28
 714 019a 04F13807 		add	r7, r4, #56
 715              	.L73:
 716 019e 55F8040B 		ldr	r0, [r5], #4
 717 01a2 0368     		ldr	r3, [r0]
 718 01a4 9B68     		ldr	r3, [r3, #8]
 719 01a6 9847     		blx	r3
 720 01a8 AF42     		cmp	r7, r5
 721 01aa F8D1     		bne	.L73
 722 01ac 78E7     		b	.L109
 723              	.L112:
 724 01ae FFF7FEFF 		bl	_Z9DHCP_stopv
 725 01b2 6AE7     		b	.L84
 726              	.L69:
 727 01b4 0022     		movs	r2, #0
 728 01b6 0423     		movs	r3, #4
 729 01b8 84F84D20 		strb	r2, [r4, #77]
 730 01bc A364     		str	r3, [r4, #72]
 731 01be 4DE7     		b	.L82
 732              	.L110:
 733 01c0 03F57A73 		add	r3, r3, #1000
 734 01c4 A361     		str	r3, [r4, #24]
 735 01c6 FFF7FEFF 		bl	_Z17DHCP_time_handlerv
 736 01ca 3AE7     		b	.L71
 737              	.L114:
 738 01cc 03F57A73 		add	r3, r3, #1000
 739 01d0 A361     		str	r3, [r4, #24]
 740 01d2 FFF7FEFF 		bl	_Z17DHCP_time_handlerv
 741 01d6 BAE7     		b	.L80
ARM GAS  /tmp/cczZrVrD.s 			page 14


 742              	.L116:
 743              		.align	2
 744              	.L115:
 745 01d8 00000000 		.word	.LC5
 746 01dc 00000000 		.word	reprap
 747              		.size	_ZN14W5500Interface4SpinEb, .-_ZN14W5500Interface4SpinEb
 748              		.section	.text._ZN14W5500Interface16ShutdownProtocolEh,"ax",%progbits
 749              		.align	1
 750              		.p2align 2,,3
 751              		.global	_ZN14W5500Interface16ShutdownProtocolEh
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu fpv4-sp-d16
 756              		.type	_ZN14W5500Interface16ShutdownProtocolEh, %function
 757              	_ZN14W5500Interface16ShutdownProtocolEh:
 758              		@ args = 0, pretend = 0, frame = 8
 759              		@ frame_needed = 0, uses_anonymous_args = 0
 760 0000 30B5     		push	{r4, r5, lr}
 761 0002 0446     		mov	r4, r0
 762 0004 83B0     		sub	sp, sp, #12
 763 0006 0D46     		mov	r5, r1
 764 0008 6846     		mov	r0, sp
 765 000a 211D     		adds	r1, r4, #4
 766 000c 4FF0FF32 		mov	r2, #-1
 767 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 768 0014 012D     		cmp	r5, #1
 769 0016 1AD0     		beq	.L119
 770 0018 0AD3     		bcc	.L120
 771 001a 022D     		cmp	r5, #2
 772 001c 03D1     		bne	.L118
 773 001e 606B     		ldr	r0, [r4, #52]
 774 0020 0368     		ldr	r3, [r0]
 775 0022 DB68     		ldr	r3, [r3, #12]
 776 0024 9847     		blx	r3
 777              	.L118:
 778 0026 6846     		mov	r0, sp
 779 0028 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 780 002c 03B0     		add	sp, sp, #12
 781              		@ sp needed
 782 002e 30BD     		pop	{r4, r5, pc}
 783              	.L120:
 784 0030 04F11C05 		add	r5, r4, #28
 785 0034 2C34     		adds	r4, r4, #44
 786              	.L122:
 787 0036 55F8040B 		ldr	r0, [r5], #4
 788 003a 0368     		ldr	r3, [r0]
 789 003c DB68     		ldr	r3, [r3, #12]
 790 003e 9847     		blx	r3
 791 0040 A542     		cmp	r5, r4
 792 0042 F8D1     		bne	.L122
 793 0044 6846     		mov	r0, sp
 794 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 795 004a 03B0     		add	sp, sp, #12
 796              		@ sp needed
 797 004c 30BD     		pop	{r4, r5, pc}
 798              	.L119:
ARM GAS  /tmp/cczZrVrD.s 			page 15


 799 004e E06A     		ldr	r0, [r4, #44]
 800 0050 0368     		ldr	r3, [r0]
 801 0052 DB68     		ldr	r3, [r3, #12]
 802 0054 9847     		blx	r3
 803 0056 206B     		ldr	r0, [r4, #48]
 804 0058 0368     		ldr	r3, [r0]
 805 005a DB68     		ldr	r3, [r3, #12]
 806 005c 9847     		blx	r3
 807 005e 6846     		mov	r0, sp
 808 0060 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 809 0064 03B0     		add	sp, sp, #12
 810              		@ sp needed
 811 0066 30BD     		pop	{r4, r5, pc}
 812              		.size	_ZN14W5500Interface16ShutdownProtocolEh, .-_ZN14W5500Interface16ShutdownProtocolEh
 813              		.section	.text._ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef,"ax",%progbits
 814              		.align	1
 815              		.p2align 2,,3
 816              		.global	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 817              		.syntax unified
 818              		.thumb
 819              		.thumb_func
 820              		.fpu fpv4-sp-d16
 821              		.type	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef, %function
 822              	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef:
 823              		@ args = 0, pretend = 0, frame = 0
 824              		@ frame_needed = 0, uses_anonymous_args = 0
 825              		@ link register save eliminated.
 826 0000 30B4     		push	{r4, r5}
 827 0002 4418     		adds	r4, r0, r1
 828 0004 0A4B     		ldr	r3, .L128
 829 0006 94F84250 		ldrb	r5, [r4, #66]	@ zero_extendqisi2
 830 000a 53F82130 		ldr	r3, [r3, r1, lsl #2]
 831 000e 1446     		mov	r4, r2
 832 0010 2DB9     		cbnz	r5, .L127
 833 0012 2046     		mov	r0, r4
 834 0014 1A46     		mov	r2, r3
 835 0016 0749     		ldr	r1, .L128+4
 836 0018 30BC     		pop	{r4, r5}
 837 001a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 838              	.L127:
 839 001e 00EB4101 		add	r1, r0, r1, lsl #1
 840 0022 1A46     		mov	r2, r3
 841 0024 2046     		mov	r0, r4
 842 0026 8B8F     		ldrh	r3, [r1, #60]
 843 0028 0349     		ldr	r1, .L128+8
 844 002a 30BC     		pop	{r4, r5}
 845 002c FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 846              	.L129:
 847              		.align	2
 848              	.L128:
 849 0030 00000000 		.word	.LANCHOR4
 850 0034 1C000000 		.word	.LC7
 851 0038 00000000 		.word	.LC6
 852              		.size	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef, .-_ZNK14W5500Interface17ReportOneProt
 853              		.section	.text._ZN14W5500Interface14EnableProtocolEhiiRK9StringRef,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  /tmp/cczZrVrD.s 			page 16


 856              		.global	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu fpv4-sp-d16
 861              		.type	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef, %function
 862              	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef:
 863              		@ args = 4, pretend = 0, frame = 8
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 866 0002 0133     		adds	r3, r3, #1
 867 0004 012B     		cmp	r3, #1
 868 0006 83B0     		sub	sp, sp, #12
 869 0008 31D8     		bhi	.L147
 870 000a 0229     		cmp	r1, #2
 871 000c 0D46     		mov	r5, r1
 872 000e 27D8     		bhi	.L133
 873 0010 0446     		mov	r4, r0
 874 0012 1646     		mov	r6, r2
 875 0014 6846     		mov	r0, sp
 876 0016 4FF0FF32 		mov	r2, #-1
 877 001a 211D     		adds	r1, r4, #4
 878 001c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 879 0020 002E     		cmp	r6, #0
 880 0022 B8BF     		it	lt
 881 0024 1E4B     		ldrlt	r3, .L148
 882 0026 04EB4507 		add	r7, r4, r5, lsl #1
 883 002a B8BF     		it	lt
 884 002c 33F81560 		ldrhlt	r6, [r3, r5, lsl #1]
 885 0030 BB8F     		ldrh	r3, [r7, #60]
 886 0032 A8BF     		it	ge
 887 0034 B6B2     		uxthge	r6, r6
 888 0036 B342     		cmp	r3, r6
 889 0038 02D0     		beq	.L146
 890 003a A36C     		ldr	r3, [r4, #72]
 891 003c 052B     		cmp	r3, #5
 892 003e 1DD0     		beq	.L138
 893              	.L146:
 894 0040 6319     		adds	r3, r4, r5
 895 0042 93F84220 		ldrb	r2, [r3, #66]	@ zero_extendqisi2
 896 0046 BE87     		strh	r6, [r7, #60]	@ movhi
 897 0048 F2B1     		cbz	r2, .L139
 898              	.L140:
 899 004a 2946     		mov	r1, r5
 900 004c 2046     		mov	r0, r4
 901 004e 089A     		ldr	r2, [sp, #32]
 902 0050 FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 903 0054 6846     		mov	r0, sp
 904 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 905 005a 0120     		movs	r0, #1
 906 005c 03B0     		add	sp, sp, #12
 907              		@ sp needed
 908 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 909              	.L133:
 910 0060 1049     		ldr	r1, .L148+4
 911 0062 0898     		ldr	r0, [sp, #32]
 912 0064 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  /tmp/cczZrVrD.s 			page 17


 913 0068 0220     		movs	r0, #2
 914 006a 03B0     		add	sp, sp, #12
 915              		@ sp needed
 916 006c F0BD     		pop	{r4, r5, r6, r7, pc}
 917              	.L147:
 918 006e 0E49     		ldr	r1, .L148+8
 919 0070 0898     		ldr	r0, [sp, #32]
 920 0072 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 921 0076 0220     		movs	r0, #2
 922 0078 03B0     		add	sp, sp, #12
 923              		@ sp needed
 924 007a F0BD     		pop	{r4, r5, r6, r7, pc}
 925              	.L138:
 926 007c 2946     		mov	r1, r5
 927 007e 2046     		mov	r0, r4
 928 0080 FFF7FEFF 		bl	_ZN14W5500Interface16ShutdownProtocolEh
 929 0084 BE87     		strh	r6, [r7, #60]	@ movhi
 930 0086 6319     		adds	r3, r4, r5
 931              	.L139:
 932 0088 0122     		movs	r2, #1
 933 008a 83F84220 		strb	r2, [r3, #66]
 934 008e A36C     		ldr	r3, [r4, #72]
 935 0090 052B     		cmp	r3, #5
 936 0092 DAD1     		bne	.L140
 937 0094 2946     		mov	r1, r5
 938 0096 2046     		mov	r0, r4
 939 0098 FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 940 009c D5E7     		b	.L140
 941              	.L149:
 942 009e 00BF     		.align	2
 943              	.L148:
 944 00a0 00000000 		.word	.LANCHOR5
 945 00a4 24000000 		.word	.LC9
 946 00a8 00000000 		.word	.LC8
 947              		.size	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef, .-_ZN14W5500Interface14EnableProtocolEh
 948              		.section	.text._ZN14W5500Interface15DisableProtocolEhRK9StringRef,"ax",%progbits
 949              		.align	1
 950              		.p2align 2,,3
 951              		.global	_ZN14W5500Interface15DisableProtocolEhRK9StringRef
 952              		.syntax unified
 953              		.thumb
 954              		.thumb_func
 955              		.fpu fpv4-sp-d16
 956              		.type	_ZN14W5500Interface15DisableProtocolEhRK9StringRef, %function
 957              	_ZN14W5500Interface15DisableProtocolEhRK9StringRef:
 958              		@ args = 0, pretend = 0, frame = 8
 959              		@ frame_needed = 0, uses_anonymous_args = 0
 960 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 961 0002 0229     		cmp	r1, #2
 962 0004 83B0     		sub	sp, sp, #12
 963 0006 1646     		mov	r6, r2
 964 0008 19D8     		bhi	.L151
 965 000a 0446     		mov	r4, r0
 966 000c 0D46     		mov	r5, r1
 967 000e 6846     		mov	r0, sp
 968 0010 4FF0FF32 		mov	r2, #-1
 969 0014 211D     		adds	r1, r4, #4
ARM GAS  /tmp/cczZrVrD.s 			page 18


 970 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 971 001a A36C     		ldr	r3, [r4, #72]
 972 001c 052B     		cmp	r3, #5
 973 001e 15D0     		beq	.L155
 974              	.L152:
 975 0020 6319     		adds	r3, r4, r5
 976 0022 0027     		movs	r7, #0
 977 0024 3246     		mov	r2, r6
 978 0026 2946     		mov	r1, r5
 979 0028 2046     		mov	r0, r4
 980 002a 83F84270 		strb	r7, [r3, #66]
 981 002e FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 982 0032 6846     		mov	r0, sp
 983 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 984 0038 0120     		movs	r0, #1
 985 003a 03B0     		add	sp, sp, #12
 986              		@ sp needed
 987 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 988              	.L151:
 989 003e 1046     		mov	r0, r2
 990 0040 0549     		ldr	r1, .L156
 991 0042 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 992 0046 0220     		movs	r0, #2
 993 0048 03B0     		add	sp, sp, #12
 994              		@ sp needed
 995 004a F0BD     		pop	{r4, r5, r6, r7, pc}
 996              	.L155:
 997 004c 2946     		mov	r1, r5
 998 004e 2046     		mov	r0, r4
 999 0050 FFF7FEFF 		bl	_ZN14W5500Interface16ShutdownProtocolEh
 1000 0054 E4E7     		b	.L152
 1001              	.L157:
 1002 0056 00BF     		.align	2
 1003              	.L156:
 1004 0058 24000000 		.word	.LC9
 1005              		.size	_ZN14W5500Interface15DisableProtocolEhRK9StringRef, .-_ZN14W5500Interface15DisableProtocolEh
 1006              		.section	.text._ZNK14W5500Interface15ReportProtocolsERK9StringRef,"ax",%progbits
 1007              		.align	1
 1008              		.p2align 2,,3
 1009              		.global	_ZNK14W5500Interface15ReportProtocolsERK9StringRef
 1010              		.syntax unified
 1011              		.thumb
 1012              		.thumb_func
 1013              		.fpu fpv4-sp-d16
 1014              		.type	_ZNK14W5500Interface15ReportProtocolsERK9StringRef, %function
 1015              	_ZNK14W5500Interface15ReportProtocolsERK9StringRef:
 1016              		@ args = 0, pretend = 0, frame = 0
 1017              		@ frame_needed = 0, uses_anonymous_args = 0
 1018 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1019 0002 0B68     		ldr	r3, [r1]
 1020 0004 0D46     		mov	r5, r1
 1021 0006 0024     		movs	r4, #0
 1022 0008 0746     		mov	r7, r0
 1023 000a 1C70     		strb	r4, [r3]
 1024 000c 0A21     		movs	r1, #10
 1025 000e 2846     		mov	r0, r5
 1026 0010 E6B2     		uxtb	r6, r4
ARM GAS  /tmp/cczZrVrD.s 			page 19


 1027 0012 74B1     		cbz	r4, .L160
 1028              	.L165:
 1029 0014 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1030 0018 2A46     		mov	r2, r5
 1031 001a 3146     		mov	r1, r6
 1032 001c 3846     		mov	r0, r7
 1033 001e FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1034 0022 022C     		cmp	r4, #2
 1035 0024 0BD0     		beq	.L164
 1036              	.L161:
 1037 0026 0134     		adds	r4, r4, #1
 1038 0028 0A21     		movs	r1, #10
 1039 002a 2846     		mov	r0, r5
 1040 002c E6B2     		uxtb	r6, r4
 1041 002e 002C     		cmp	r4, #0
 1042 0030 F0D1     		bne	.L165
 1043              	.L160:
 1044 0032 2A46     		mov	r2, r5
 1045 0034 2146     		mov	r1, r4
 1046 0036 3846     		mov	r0, r7
 1047 0038 FFF7FEFF 		bl	_ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef
 1048 003c F3E7     		b	.L161
 1049              	.L164:
 1050 003e 0120     		movs	r0, #1
 1051 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1052              		.size	_ZNK14W5500Interface15ReportProtocolsERK9StringRef, .-_ZNK14W5500Interface15ReportProtocolsE
 1053 0042 00BF     		.section	.text._ZN14W5500Interface5StartEv,"ax",%progbits
 1054              		.align	1
 1055              		.p2align 2,,3
 1056              		.global	_ZN14W5500Interface5StartEv
 1057              		.syntax unified
 1058              		.thumb
 1059              		.thumb_func
 1060              		.fpu fpv4-sp-d16
 1061              		.type	_ZN14W5500Interface5StartEv, %function
 1062              	_ZN14W5500Interface5StartEv:
 1063              		@ args = 0, pretend = 0, frame = 8
 1064              		@ frame_needed = 0, uses_anonymous_args = 0
 1065 0000 30B5     		push	{r4, r5, lr}
 1066 0002 0446     		mov	r4, r0
 1067 0004 83B0     		sub	sp, sp, #12
 1068 0006 011D     		adds	r1, r0, #4
 1069 0008 4FF0FF32 		mov	r2, #-1
 1070 000c 6846     		mov	r0, sp
 1071 000e FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1072 0012 2268     		ldr	r2, [r4]
 1073 0014 2C4B     		ldr	r3, .L170
 1074 0016 D56B     		ldr	r5, [r2, #60]
 1075 0018 6169     		ldr	r1, [r4, #20]
 1076 001a 9D42     		cmp	r5, r3
 1077 001c 4CD1     		bne	.L167
 1078 001e D1F89530 		ldr	r3, [r1, #149]	@ unaligned
 1079 0022 C4F84E30 		str	r3, [r4, #78]	@ unaligned
 1080 0026 D1F89930 		ldr	r3, [r1, #153]	@ unaligned
 1081 002a C4F85230 		str	r3, [r4, #82]	@ unaligned
 1082 002e D1F89D30 		ldr	r3, [r1, #157]	@ unaligned
 1083 0032 C4F85630 		str	r3, [r4, #86]	@ unaligned
ARM GAS  /tmp/cczZrVrD.s 			page 20


 1084              	.L168:
 1085 0036 0022     		movs	r2, #0
 1086 0038 0321     		movs	r1, #3
 1087 003a 6420     		movs	r0, #100
 1088 003c FFF7FEFF 		bl	pinModeDuet
 1089 0040 45F2F053 		movw	r3, #22000
 1090              		.syntax unified
 1091              	@ 88 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 1092              		L_1169_delayMicroseconds:
 1093 0044 013B     		subs   r3, #1
 1094 0046 FDD1     		bne    L_1169_delayMicroseconds
 1095              	
 1096              	@ 0 "" 2
 1097              		.thumb
 1098              		.syntax unified
 1099 0048 0121     		movs	r1, #1
 1100 004a 6420     		movs	r0, #100
 1101 004c FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 1102 0050 3720     		movs	r0, #55
 1103 0052 FFF7FEFF 		bl	coreDelay
 1104 0056 7821     		movs	r1, #120
 1105 0058 4FF43850 		mov	r0, #11776
 1106 005c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1107 0060 1A49     		ldr	r1, .L170+4
 1108 0062 0846     		mov	r0, r1
 1109 0064 FFF7FEFF 		bl	_Z12wizchip_initPKhS0_
 1110 0068 04F15A01 		add	r1, r4, #90
 1111 006c 0622     		movs	r2, #6
 1112 006e 4FF41060 		mov	r0, #2304
 1113 0072 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1114 0076 04F14E01 		add	r1, r4, #78
 1115 007a 0422     		movs	r2, #4
 1116 007c 4FF47060 		mov	r0, #3840
 1117 0080 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1118 0084 04F15601 		add	r1, r4, #86
 1119 0088 0422     		movs	r2, #4
 1120 008a 4FF48070 		mov	r0, #256
 1121 008e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1122 0092 0422     		movs	r2, #4
 1123 0094 04F15201 		add	r1, r4, #82
 1124 0098 4FF4A060 		mov	r0, #1280
 1125 009c FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1126 00a0 F821     		movs	r1, #248
 1127 00a2 4FF43850 		mov	r0, #11776
 1128 00a6 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1129 00aa 0223     		movs	r3, #2
 1130 00ac 6846     		mov	r0, sp
 1131 00ae A364     		str	r3, [r4, #72]
 1132 00b0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1133 00b4 03B0     		add	sp, sp, #12
 1134              		@ sp needed
 1135 00b6 30BD     		pop	{r4, r5, pc}
 1136              	.L167:
 1137 00b8 01F19D03 		add	r3, r1, #157
 1138 00bc 01F19902 		add	r2, r1, #153
 1139 00c0 2046     		mov	r0, r4
 1140 00c2 9531     		adds	r1, r1, #149
ARM GAS  /tmp/cczZrVrD.s 			page 21


 1141 00c4 A847     		blx	r5
 1142 00c6 B6E7     		b	.L168
 1143              	.L171:
 1144              		.align	2
 1145              	.L170:
 1146 00c8 00000000 		.word	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_
 1147 00cc 00000000 		.word	.LANCHOR6
 1148              		.size	_ZN14W5500Interface5StartEv, .-_ZN14W5500Interface5StartEv
 1149              		.section	.text._ZN14W5500Interface8ActivateEv,"ax",%progbits
 1150              		.align	1
 1151              		.p2align 2,,3
 1152              		.global	_ZN14W5500Interface8ActivateEv
 1153              		.syntax unified
 1154              		.thumb
 1155              		.thumb_func
 1156              		.fpu fpv4-sp-d16
 1157              		.type	_ZN14W5500Interface8ActivateEv, %function
 1158              	_ZN14W5500Interface8ActivateEv:
 1159              		@ args = 0, pretend = 0, frame = 0
 1160              		@ frame_needed = 0, uses_anonymous_args = 0
 1161              		@ link register save eliminated.
 1162 0000 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
 1163 0004 52B9     		cbnz	r2, .L172
 1164 0006 826C     		ldr	r2, [r0, #72]
 1165 0008 0121     		movs	r1, #1
 1166 000a 8A42     		cmp	r2, r1
 1167 000c 80F84C10 		strb	r1, [r0, #76]
 1168 0010 05D0     		beq	.L175
 1169 0012 4069     		ldr	r0, [r0, #20]
 1170 0014 034A     		ldr	r2, .L176
 1171 0016 8521     		movs	r1, #133
 1172 0018 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1173              	.L172:
 1174 001c 7047     		bx	lr
 1175              	.L175:
 1176 001e FFF7FEBF 		b	_ZN14W5500Interface5StartEv
 1177              	.L177:
 1178 0022 00BF     		.align	2
 1179              	.L176:
 1180 0024 00000000 		.word	.LC10
 1181              		.size	_ZN14W5500Interface8ActivateEv, .-_ZN14W5500Interface8ActivateEv
 1182              		.section	.text._ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_,"ax",%progbits
 1183              		.align	1
 1184              		.p2align 2,,3
 1185              		.global	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_
 1186              		.syntax unified
 1187              		.thumb
 1188              		.thumb_func
 1189              		.fpu fpv4-sp-d16
 1190              		.type	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_, %function
 1191              	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_:
 1192              		@ args = 0, pretend = 0, frame = 0
 1193              		@ frame_needed = 0, uses_anonymous_args = 0
 1194 0000 10B5     		push	{r4, lr}
 1195 0002 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
 1196 0006 0446     		mov	r4, r0
 1197 0008 2AB9     		cbnz	r2, .L179
ARM GAS  /tmp/cczZrVrD.s 			page 22


 1198 000a 0031     		adds	r1, r1, #0
 1199 000c 18BF     		it	ne
 1200 000e 0121     		movne	r1, #1
 1201 0010 8164     		str	r1, [r0, #72]
 1202              	.L180:
 1203 0012 0120     		movs	r0, #1
 1204 0014 10BD     		pop	{r4, pc}
 1205              	.L179:
 1206 0016 836C     		ldr	r3, [r0, #72]
 1207 0018 49B9     		cbnz	r1, .L181
 1208 001a 002B     		cmp	r3, #0
 1209 001c F9D0     		beq	.L180
 1210 001e FFF7FEFF 		bl	_ZN14W5500Interface4StopEv.part.5
 1211 0022 6069     		ldr	r0, [r4, #20]
 1212 0024 054A     		ldr	r2, .L186
 1213 0026 8521     		movs	r1, #133
 1214 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1215 002c F1E7     		b	.L180
 1216              	.L181:
 1217 002e 002B     		cmp	r3, #0
 1218 0030 EFD1     		bne	.L180
 1219 0032 0123     		movs	r3, #1
 1220 0034 8364     		str	r3, [r0, #72]
 1221 0036 FFF7FEFF 		bl	_ZN14W5500Interface5StartEv
 1222 003a EAE7     		b	.L180
 1223              	.L187:
 1224              		.align	2
 1225              	.L186:
 1226 003c 00000000 		.word	.LC11
 1227              		.size	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_, .-_ZN14W5500Interface15EnableInterfac
 1228              		.section	.text._ZN14W5500Interface4StopEv,"ax",%progbits
 1229              		.align	1
 1230              		.p2align 2,,3
 1231              		.global	_ZN14W5500Interface4StopEv
 1232              		.syntax unified
 1233              		.thumb
 1234              		.thumb_func
 1235              		.fpu fpv4-sp-d16
 1236              		.type	_ZN14W5500Interface4StopEv, %function
 1237              	_ZN14W5500Interface4StopEv:
 1238              		@ args = 0, pretend = 0, frame = 0
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
 1240              		@ link register save eliminated.
 1241 0000 836C     		ldr	r3, [r0, #72]
 1242 0002 03B9     		cbnz	r3, .L190
 1243 0004 7047     		bx	lr
 1244              	.L190:
 1245 0006 FFF7FEBF 		b	_ZN14W5500Interface4StopEv.part.5
 1246              		.size	_ZN14W5500Interface4StopEv, .-_ZN14W5500Interface4StopEv
 1247 000a 00BF     		.section	.text._ZN14W5500Interface11InitSocketsEv,"ax",%progbits
 1248              		.align	1
 1249              		.p2align 2,,3
 1250              		.global	_ZN14W5500Interface11InitSocketsEv
 1251              		.syntax unified
 1252              		.thumb
 1253              		.thumb_func
 1254              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cczZrVrD.s 			page 23


 1255              		.type	_ZN14W5500Interface11InitSocketsEv, %function
 1256              	_ZN14W5500Interface11InitSocketsEv:
 1257              		@ args = 0, pretend = 0, frame = 0
 1258              		@ frame_needed = 0, uses_anonymous_args = 0
 1259 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1260 0002 00F14204 		add	r4, r0, #66
 1261 0006 0546     		mov	r5, r0
 1262 0008 E743     		mvns	r7, r4
 1263 000a 00F14506 		add	r6, r0, #69
 1264              	.L193:
 1265 000e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 1266 0012 23B9     		cbnz	r3, .L199
 1267              	.L192:
 1268 0014 B442     		cmp	r4, r6
 1269 0016 FAD1     		bne	.L193
 1270 0018 0023     		movs	r3, #0
 1271 001a AB63     		str	r3, [r5, #56]
 1272 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1273              	.L199:
 1274 001e 3919     		adds	r1, r7, r4
 1275 0020 C9B2     		uxtb	r1, r1
 1276 0022 2846     		mov	r0, r5
 1277 0024 FFF7FEFF 		bl	_ZN14W5500Interface13StartProtocolEh
 1278 0028 F4E7     		b	.L192
 1279              		.size	_ZN14W5500Interface11InitSocketsEv, .-_ZN14W5500Interface11InitSocketsEv
 1280 002a 00BF     		.section	.text._ZN14W5500Interface16TerminateSocketsEv,"ax",%progbits
 1281              		.align	1
 1282              		.p2align 2,,3
 1283              		.global	_ZN14W5500Interface16TerminateSocketsEv
 1284              		.syntax unified
 1285              		.thumb
 1286              		.thumb_func
 1287              		.fpu fpv4-sp-d16
 1288              		.type	_ZN14W5500Interface16TerminateSocketsEv, %function
 1289              	_ZN14W5500Interface16TerminateSocketsEv:
 1290              		@ args = 0, pretend = 0, frame = 0
 1291              		@ frame_needed = 0, uses_anonymous_args = 0
 1292 0000 38B5     		push	{r3, r4, r5, lr}
 1293 0002 00F11C04 		add	r4, r0, #28
 1294 0006 00F13805 		add	r5, r0, #56
 1295              	.L201:
 1296 000a 54F8040B 		ldr	r0, [r4], #4
 1297 000e 0368     		ldr	r3, [r0]
 1298 0010 9B68     		ldr	r3, [r3, #8]
 1299 0012 9847     		blx	r3
 1300 0014 AC42     		cmp	r4, r5
 1301 0016 F8D1     		bne	.L201
 1302 0018 38BD     		pop	{r3, r4, r5, pc}
 1303              		.size	_ZN14W5500Interface16TerminateSocketsEv, .-_ZN14W5500Interface16TerminateSocketsEv
 1304              		.global	_ZTV14W5500Interface
 1305 001a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1306              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1307              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1308              	_ZL28cpu_irq_prev_interrupt_state:
 1309 0000 00       		.space	1
 1310              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1311              		.align	2
ARM GAS  /tmp/cczZrVrD.s 			page 24


 1312              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1313              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1314              	_ZL32cpu_irq_critical_section_counter:
 1315 0000 00000000 		.space	4
 1316              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1317              		.align	2
 1318              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1319              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1320              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1321 0000 00000000 		.space	4
 1322              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 1323              		.align	2
 1324              		.set	.LANCHOR4,. + 0
 1325              		.type	_ZL13ProtocolNames, %object
 1326              		.size	_ZL13ProtocolNames, 12
 1327              	_ZL13ProtocolNames:
 1328 0000 00000000 		.word	.LC12
 1329 0004 08000000 		.word	.LC13
 1330 0008 0C000000 		.word	.LC14
 1331              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 1332              		.align	2
 1333              		.set	.LANCHOR2,. + 0
 1334              		.type	_ZL14DefaultGateway, %object
 1335              		.size	_ZL14DefaultGateway, 4
 1336              	_ZL14DefaultGateway:
 1337 0000 00000000 		.space	4
 1338              		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 1339              		.align	2
 1340              		.set	.LANCHOR1,. + 0
 1341              		.type	_ZL14DefaultNetMask, %object
 1342              		.size	_ZL14DefaultNetMask, 4
 1343              	_ZL14DefaultNetMask:
 1344 0000 FF       		.byte	-1
 1345 0001 FF       		.byte	-1
 1346 0002 FF       		.byte	-1
 1347 0003 00       		.byte	0
 1348              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 1349              		.align	2
 1350              		.set	.LANCHOR0,. + 0
 1351              		.type	_ZL16DefaultIpAddress, %object
 1352              		.size	_ZL16DefaultIpAddress, 4
 1353              	_ZL16DefaultIpAddress:
 1354 0000 00000000 		.space	4
 1355              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 1356              		.align	2
 1357              		.set	.LANCHOR5,. + 0
 1358              		.type	_ZL18DefaultPortNumbers, %object
 1359              		.size	_ZL18DefaultPortNumbers, 6
 1360              	_ZL18DefaultPortNumbers:
 1361 0000 5000     		.short	80
 1362 0002 1500     		.short	21
 1363 0004 1700     		.short	23
 1364              		.section	.rodata._ZN14W5500Interface11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1365              		.align	2
 1366              	.LC0:
 1367 0000 496E7465 		.ascii	"Interface state: %d\012\000"
 1367      72666163 
ARM GAS  /tmp/cczZrVrD.s 			page 25


 1367      65207374 
 1367      6174653A 
 1367      2025640A 
 1368              		.section	.rodata._ZN14W5500Interface14EnableProtocolEhiiRK9StringRef.str1.4,"aMS",%progbits,1
 1369              		.align	2
 1370              	.LC8:
 1371 0000 74686973 		.ascii	"this firmware does not support TLS\000"
 1371      20666972 
 1371      6D776172 
 1371      6520646F 
 1371      6573206E 
 1372 0023 00       		.space	1
 1373              	.LC9:
 1374 0024 496E7661 		.ascii	"Invalid protocol parameter\000"
 1374      6C696420 
 1374      70726F74 
 1374      6F636F6C 
 1374      20706172 
 1375              		.section	.rodata._ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_.str1.4,"aMS",%progbits,1
 1376              		.align	2
 1377              	.LC11:
 1378 0000 4E657477 		.ascii	"Network stopped\012\000"
 1378      6F726B20 
 1378      73746F70 
 1378      7065640A 
 1378      00
 1379              		.section	.rodata._ZN14W5500Interface15GetNetworkStateERK9StringRef.str1.4,"aMS",%progbits,1
 1380              		.align	2
 1381              	.LC2:
 1382 0000 64697361 		.ascii	"disabled\000"
 1382      626C6564 
 1382      00
 1383 0009 000000   		.space	3
 1384              	.LC3:
 1385 000c 656E6162 		.ascii	"enabled\000"
 1385      6C656400 
 1386              	.LC4:
 1387 0014 4E657477 		.ascii	"Network is %s, configured IP address: %s, actual IP"
 1387      6F726B20 
 1387      69732025 
 1387      732C2063 
 1387      6F6E6669 
 1388 0047 20616464 		.ascii	" address: %s\000"
 1388      72657373 
 1388      3A202573 
 1388      00
 1389              		.section	.rodata._ZN14W5500Interface4InitEv.str1.4,"aMS",%progbits,1
 1390              		.align	2
 1391              	.LC1:
 1392 0000 57353530 		.ascii	"W5500\000"
 1392      3000
 1393              		.section	.rodata._ZN14W5500Interface4SpinEb.str1.4,"aMS",%progbits,1
 1394              		.align	2
 1395              	.LC5:
 1396 0000 4E657477 		.ascii	"Network running, IP address = %s\012\000"
 1396      6F726B20 
 1396      72756E6E 
ARM GAS  /tmp/cczZrVrD.s 			page 26


 1396      696E672C 
 1396      20495020 
 1397              		.section	.rodata._ZN14W5500Interface8ActivateEv.str1.4,"aMS",%progbits,1
 1398              		.align	2
 1399              	.LC10:
 1400 0000 4E657477 		.ascii	"Network disabled.\012\000"
 1400      6F726B20 
 1400      64697361 
 1400      626C6564 
 1400      2E0A00
 1401              		.section	.rodata._ZNK14W5500Interface17ReportOneProtocolEhRK9StringRef.str1.4,"aMS",%progbits,1
 1402              		.align	2
 1403              	.LC6:
 1404 0000 25732069 		.ascii	"%s is enabled on port %u\000"
 1404      7320656E 
 1404      61626C65 
 1404      64206F6E 
 1404      20706F72 
 1405 0019 000000   		.space	3
 1406              	.LC7:
 1407 001c 25732069 		.ascii	"%s is disabled\000"
 1407      73206469 
 1407      7361626C 
 1407      656400
 1408              		.section	.rodata._ZTV14W5500Interface,"a",%progbits
 1409              		.align	2
 1410              		.set	.LANCHOR3,. + 0
 1411              		.type	_ZTV14W5500Interface, %object
 1412              		.size	_ZTV14W5500Interface, 92
 1413              	_ZTV14W5500Interface:
 1414 0000 00000000 		.word	0
 1415 0004 00000000 		.word	0
 1416 0008 00000000 		.word	_ZN14W5500Interface4InitEv
 1417 000c 00000000 		.word	_ZN14W5500Interface8ActivateEv
 1418 0010 00000000 		.word	_ZN14W5500Interface4ExitEv
 1419 0014 00000000 		.word	_ZN14W5500Interface4SpinEb
 1420 0018 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 1421 001c 00000000 		.word	_ZN14W5500Interface11DiagnosticsE11MessageType
 1422 0020 00000000 		.word	_ZN14W5500Interface15EnableInterfaceEiRK9StringRefS2_
 1423 0024 00000000 		.word	_ZN14W5500Interface15GetNetworkStateERK9StringRef
 1424 0028 00000000 		.word	_ZNK14W5500Interface11EnableStateEv
 1425 002c 00000000 		.word	_ZNK14W5500Interface14InNetworkStackEv
 1426 0030 00000000 		.word	_ZNK14W5500Interface15IsWiFiInterfaceEv
 1427 0034 00000000 		.word	_ZN14W5500Interface14EnableProtocolEhiiRK9StringRef
 1428 0038 00000000 		.word	_ZN14W5500Interface15DisableProtocolEhRK9StringRef
 1429 003c 00000000 		.word	_ZNK14W5500Interface15ReportProtocolsERK9StringRef
 1430 0040 00000000 		.word	_ZNK14W5500Interface12GetIPAddressEv
 1431 0044 00000000 		.word	_ZN14W5500Interface12SetIPAddressEPKhS1_S1_
 1432 0048 00000000 		.word	_ZN14W5500Interface13SetMacAddressEPKh
 1433 004c 00000000 		.word	_ZNK14W5500Interface13GetMacAddressEv
 1434 0050 00000000 		.word	_ZN14W5500Interface14UpdateHostnameEPKc
 1435 0054 00000000 		.word	_ZN14W5500Interface12OpenDataPortEt
 1436 0058 00000000 		.word	_ZN14W5500Interface17TerminateDataPortEv
 1437              		.section	.rodata._ZZN14W5500Interface5StartEvE8bufSizes,"a",%progbits
 1438              		.align	2
 1439              		.set	.LANCHOR6,. + 0
 1440              		.type	_ZZN14W5500Interface5StartEvE8bufSizes, %object
ARM GAS  /tmp/cczZrVrD.s 			page 27


 1441              		.size	_ZZN14W5500Interface5StartEvE8bufSizes, 8
 1442              	_ZZN14W5500Interface5StartEvE8bufSizes:
 1443 0000 02       		.byte	2
 1444 0001 02       		.byte	2
 1445 0002 02       		.byte	2
 1446 0003 02       		.byte	2
 1447 0004 02       		.byte	2
 1448 0005 02       		.byte	2
 1449 0006 02       		.byte	2
 1450 0007 02       		.byte	2
 1451              		.section	.rodata.str1.4,"aMS",%progbits,1
 1452              		.align	2
 1453              	.LC12:
 1454 0000 48545450 		.ascii	"HTTP\000"
 1454      00
 1455 0005 000000   		.space	3
 1456              	.LC13:
 1457 0008 46545000 		.ascii	"FTP\000"
 1458              	.LC14:
 1459 000c 54454C4E 		.ascii	"TELNET\000"
 1459      455400
 1460              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
