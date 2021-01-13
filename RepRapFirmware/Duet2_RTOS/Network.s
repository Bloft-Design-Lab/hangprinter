ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 1


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
  13              		.file	"Network.cpp"
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
  30 0002 00BF     		.section	.text._ZNUlP11ObjectModelE_4_FUNES0_,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNUlP11ObjectModelE_4_FUNES0_, %function
  38              	_ZNUlP11ObjectModelE_4_FUNES0_:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0120     		movs	r0, #1
  43 0002 7047     		bx	lr
  44              		.size	_ZNUlP11ObjectModelE_4_FUNES0_, .-_ZNUlP11ObjectModelE_4_FUNES0_
  45              		.section	.text._ZNUlP11ObjectModeljE0_4_FUNES0_j,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZNUlP11ObjectModeljE0_4_FUNES0_j, %function
  53              	_ZNUlP11ObjectModeljE0_4_FUNES0_j:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 8068     		ldr	r0, [r0, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 2


  58 0002 7047     		bx	lr
  59              		.size	_ZNUlP11ObjectModeljE0_4_FUNES0_j, .-_ZNUlP11ObjectModeljE0_4_FUNES0_j
  60              		.section	.text._ZN7NetworkUlP11ObjectModelE1_4_FUNES1_,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZN7NetworkUlP11ObjectModelE1_4_FUNES1_, %function
  68              	_ZN7NetworkUlP11ObjectModelE1_4_FUNES1_:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 0048     		ldr	r0, .L6
  73 0002 7047     		bx	lr
  74              	.L7:
  75              		.align	2
  76              	.L6:
  77 0004 00000000 		.word	.LANCHOR0
  78              		.size	_ZN7NetworkUlP11ObjectModelE1_4_FUNES1_, .-_ZN7NetworkUlP11ObjectModelE1_4_FUNES1_
  79              		.section	.text._ZNK7Network19GetObjectModelTableERj,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	_ZNK7Network19GetObjectModelTableERj
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  87              		.type	_ZNK7Network19GetObjectModelTableERj, %function
  88              	_ZNK7Network19GetObjectModelTableERj:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 0123     		movs	r3, #1
  93 0002 0B60     		str	r3, [r1]
  94 0004 0048     		ldr	r0, .L9
  95 0006 7047     		bx	lr
  96              	.L10:
  97              		.align	2
  98              	.L9:
  99 0008 00000000 		.word	.LANCHOR1
 100              		.size	_ZNK7Network19GetObjectModelTableERj, .-_ZNK7Network19GetObjectModelTableERj
 101              		.section	.text._ZN7NetworkC2ER8Platform,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	_ZN7NetworkC2ER8Platform
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN7NetworkC2ER8Platform, %function
 110              	_ZN7NetworkC2ER8Platform:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 38B5     		push	{r3, r4, r5, lr}
 114 0002 0446     		mov	r4, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 3


 115 0004 0D46     		mov	r5, r1
 116 0006 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
 117 000a 0023     		movs	r3, #0
 118 000c C4E90333 		strd	r3, r3, [r4, #12]
 119 0010 034A     		ldr	r2, .L13
 120 0012 6560     		str	r5, [r4, #4]
 121 0014 2260     		str	r2, [r4]
 122 0016 6361     		str	r3, [r4, #20]
 123 0018 6367     		str	r3, [r4, #116]
 124 001a A360     		str	r3, [r4, #8]
 125 001c 2046     		mov	r0, r4
 126 001e 38BD     		pop	{r3, r4, r5, pc}
 127              	.L14:
 128              		.align	2
 129              	.L13:
 130 0020 08000000 		.word	.LANCHOR2+8
 131              		.size	_ZN7NetworkC2ER8Platform, .-_ZN7NetworkC2ER8Platform
 132              		.global	_ZN7NetworkC1ER8Platform
 133              		.thumb_set _ZN7NetworkC1ER8Platform,_ZN7NetworkC2ER8Platform
 134              		.section	.text._ZN7Network4InitEv,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN7Network4InitEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZN7Network4InitEv, %function
 143              	_ZN7Network4InitEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146 0000 70B5     		push	{r4, r5, r6, lr}
 147 0002 3249     		ldr	r1, .L23
 148 0004 0446     		mov	r4, r0
 149 0006 1430     		adds	r0, r0, #20
 150 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 151 000c 04F17400 		add	r0, r4, #116
 152 0010 2F49     		ldr	r1, .L23+4
 153 0012 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 154 0016 6068     		ldr	r0, [r4, #4]
 155 0018 FFF7FEFF 		bl	_ZNK8Platform10IsDuetWiFiEv
 156 001c 0028     		cmp	r0, #0
 157 001e 4DD0     		beq	.L16
 158 0020 4FF4E670 		mov	r0, #460
 159 0024 FFF7FEFF 		bl	_Znwj
 160 0028 6168     		ldr	r1, [r4, #4]
 161 002a 0546     		mov	r5, r0
 162 002c FFF7FEFF 		bl	_ZN13WiFiInterfaceC1ER8Platform
 163              	.L17:
 164 0030 A560     		str	r5, [r4, #8]
 165 0032 FFF7FEFF 		bl	_ZN13HttpResponder10InitStaticEv
 166 0036 FFF7FEFF 		bl	_ZN15TelnetResponder10InitStaticEv
 167 003a 4FF4BC70 		mov	r0, #376
 168 003e FFF7FEFF 		bl	_Znwj
 169 0042 E168     		ldr	r1, [r4, #12]
 170 0044 0546     		mov	r5, r0
 171 0046 FFF7FEFF 		bl	_ZN15TelnetResponderC1EP16NetworkResponder
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 4


 172 004a E560     		str	r5, [r4, #12]
 173 004c 4FF4BC70 		mov	r0, #376
 174 0050 FFF7FEFF 		bl	_Znwj
 175 0054 E168     		ldr	r1, [r4, #12]
 176 0056 0546     		mov	r5, r0
 177 0058 FFF7FEFF 		bl	_ZN15TelnetResponderC1EP16NetworkResponder
 178 005c E560     		str	r5, [r4, #12]
 179 005e 4FF41670 		mov	r0, #600
 180 0062 FFF7FEFF 		bl	_Znwj
 181 0066 E168     		ldr	r1, [r4, #12]
 182 0068 0646     		mov	r6, r0
 183 006a 0425     		movs	r5, #4
 184 006c FFF7FEFF 		bl	_ZN12FtpResponderC1EP16NetworkResponder
 185 0070 E660     		str	r6, [r4, #12]
 186              	.L18:
 187 0072 40F64800 		movw	r0, #2120
 188 0076 FFF7FEFF 		bl	_Znwj
 189 007a E168     		ldr	r1, [r4, #12]
 190 007c 0646     		mov	r6, r0
 191 007e FFF7FEFF 		bl	_ZN13HttpResponderC1EP16NetworkResponder
 192 0082 013D     		subs	r5, r5, #1
 193 0084 E660     		str	r6, [r4, #12]
 194 0086 F4D1     		bne	.L18
 195 0088 1022     		movs	r2, #16
 196 008a 1249     		ldr	r1, .L23+8
 197 008c 04F1DC00 		add	r0, r4, #220
 198 0090 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 199 0094 0620     		movs	r0, #6
 200 0096 FFF7FEFF 		bl	_ZN13NetworkBuffer15AllocateBuffersEj
 201 009a 04F10805 		add	r5, r4, #8
 202 009e 04F10C06 		add	r6, r4, #12
 203              	.L19:
 204 00a2 55F8040B 		ldr	r0, [r5], #4
 205 00a6 0368     		ldr	r3, [r0]
 206 00a8 5B68     		ldr	r3, [r3, #4]
 207 00aa 9847     		blx	r3
 208 00ac AE42     		cmp	r6, r5
 209 00ae F8D1     		bne	.L19
 210 00b0 4FF0FF32 		mov	r2, #-1
 211 00b4 0023     		movs	r3, #0
 212 00b6 C4E93523 		strd	r2, r3, [r4, #212]
 213 00ba 70BD     		pop	{r4, r5, r6, pc}
 214              	.L16:
 215 00bc C020     		movs	r0, #192
 216 00be FFF7FEFF 		bl	_Znwj
 217 00c2 6168     		ldr	r1, [r4, #4]
 218 00c4 0546     		mov	r5, r0
 219 00c6 FFF7FEFF 		bl	_ZN14W5500InterfaceC1ER8Platform
 220 00ca B1E7     		b	.L17
 221              	.L24:
 222              		.align	2
 223              	.L23:
 224 00cc 00000000 		.word	.LC0
 225 00d0 08000000 		.word	.LC1
 226 00d4 10000000 		.word	.LC2
 227              		.size	_ZN7Network4InitEv, .-_ZN7Network4InitEv
 228              		.section	.text._ZN7Network14EnableProtocolEjhiiRK9StringRef,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 5


 229              		.align	1
 230              		.p2align 2,,3
 231              		.global	_ZN7Network14EnableProtocolEjhiiRK9StringRef
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv4-sp-d16
 236              		.type	_ZN7Network14EnableProtocolEjhiiRK9StringRef, %function
 237              	_ZN7Network14EnableProtocolEjhiiRK9StringRef:
 238              		@ args = 8, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240 0000 70B5     		push	{r4, r5, r6, lr}
 241 0002 1546     		mov	r5, r2
 242 0004 1A46     		mov	r2, r3
 243 0006 DDE90434 		ldrd	r3, r4, [sp, #16]
 244 000a 41B9     		cbnz	r1, .L26
 245 000c 8068     		ldr	r0, [r0, #8]
 246 000e 0668     		ldr	r6, [r0]
 247 0010 0494     		str	r4, [sp, #16]
 248 0012 346B     		ldr	r4, [r6, #48]
 249 0014 2946     		mov	r1, r5
 250 0016 A446     		mov	ip, r4
 251 0018 BDE87040 		pop	{r4, r5, r6, lr}
 252 001c 6047     		bx	ip
 253              	.L26:
 254 001e 0A46     		mov	r2, r1
 255 0020 2046     		mov	r0, r4
 256 0022 0249     		ldr	r1, .L28
 257 0024 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 258 0028 0220     		movs	r0, #2
 259 002a 70BD     		pop	{r4, r5, r6, pc}
 260              	.L29:
 261              		.align	2
 262              	.L28:
 263 002c 00000000 		.word	.LC3
 264              		.size	_ZN7Network14EnableProtocolEjhiiRK9StringRef, .-_ZN7Network14EnableProtocolEjhiiRK9StringRef
 265              		.section	.text._ZN7Network15DisableProtocolEjhRK9StringRef,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	_ZN7Network15DisableProtocolEjhRK9StringRef
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	_ZN7Network15DisableProtocolEjhRK9StringRef, %function
 274              	_ZN7Network15DisableProtocolEjhRK9StringRef:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277 0000 70B5     		push	{r4, r5, r6, lr}
 278 0002 41B9     		cbnz	r1, .L31
 279 0004 8068     		ldr	r0, [r0, #8]
 280 0006 0568     		ldr	r5, [r0]
 281 0008 1446     		mov	r4, r2
 282 000a 2146     		mov	r1, r4
 283 000c 1A46     		mov	r2, r3
 284 000e 6B6B     		ldr	r3, [r5, #52]
 285 0010 BDE87040 		pop	{r4, r5, r6, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 6


 286 0014 1847     		bx	r3
 287              	.L31:
 288 0016 0A46     		mov	r2, r1
 289 0018 1846     		mov	r0, r3
 290 001a 0249     		ldr	r1, .L33
 291 001c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 292 0020 0220     		movs	r0, #2
 293 0022 70BD     		pop	{r4, r5, r6, pc}
 294              	.L34:
 295              		.align	2
 296              	.L33:
 297 0024 00000000 		.word	.LC3
 298              		.size	_ZN7Network15DisableProtocolEjhRK9StringRef, .-_ZN7Network15DisableProtocolEjhRK9StringRef
 299              		.section	.text._ZNK7Network15ReportProtocolsEjRK9StringRef,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_ZNK7Network15ReportProtocolsEjRK9StringRef
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZNK7Network15ReportProtocolsEjRK9StringRef, %function
 308              	_ZNK7Network15ReportProtocolsEjRK9StringRef:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311 0000 21B9     		cbnz	r1, .L36
 312 0002 8068     		ldr	r0, [r0, #8]
 313 0004 0368     		ldr	r3, [r0]
 314 0006 1146     		mov	r1, r2
 315 0008 9B6B     		ldr	r3, [r3, #56]
 316 000a 1847     		bx	r3
 317              	.L36:
 318 000c 10B5     		push	{r4, lr}
 319 000e 1046     		mov	r0, r2
 320 0010 0A46     		mov	r2, r1
 321 0012 0249     		ldr	r1, .L39
 322 0014 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 323 0018 0220     		movs	r0, #2
 324 001a 10BD     		pop	{r4, pc}
 325              	.L40:
 326              		.align	2
 327              	.L39:
 328 001c 00000000 		.word	.LC3
 329              		.size	_ZNK7Network15ReportProtocolsEjRK9StringRef, .-_ZNK7Network15ReportProtocolsEjRK9StringRef
 330              		.section	.text._ZN7Network15EnableInterfaceEjiRK9StringRefS2_,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, %function
 339              	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_:
 340              		@ args = 4, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 7


 343 0002 1446     		mov	r4, r2
 344 0004 1A46     		mov	r2, r3
 345 0006 049B     		ldr	r3, [sp, #16]
 346 0008 39B9     		cbnz	r1, .L42
 347 000a 8068     		ldr	r0, [r0, #8]
 348 000c 0568     		ldr	r5, [r0]
 349 000e 2146     		mov	r1, r4
 350 0010 EC69     		ldr	r4, [r5, #28]
 351 0012 A446     		mov	ip, r4
 352 0014 BDE87040 		pop	{r4, r5, r6, lr}
 353 0018 6047     		bx	ip
 354              	.L42:
 355 001a 0A46     		mov	r2, r1
 356 001c 1846     		mov	r0, r3
 357 001e 0249     		ldr	r1, .L44
 358 0020 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 359 0024 0220     		movs	r0, #2
 360 0026 70BD     		pop	{r4, r5, r6, pc}
 361              	.L45:
 362              		.align	2
 363              	.L44:
 364 0028 00000000 		.word	.LC3
 365              		.size	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, .-_ZN7Network15EnableInterfaceEjiRK9StringRe
 366              		.section	.text._ZNK7Network17FindWiFiInterfaceEv,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	_ZNK7Network17FindWiFiInterfaceEv
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu fpv4-sp-d16
 374              		.type	_ZNK7Network17FindWiFiInterfaceEv, %function
 375              	_ZNK7Network17FindWiFiInterfaceEv:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378 0000 70B5     		push	{r4, r5, r6, lr}
 379 0002 00F10C06 		add	r6, r0, #12
 380 0006 00F10804 		add	r4, r0, #8
 381 000a 01E0     		b	.L48
 382              	.L52:
 383 000c A642     		cmp	r6, r4
 384 000e 09D0     		beq	.L51
 385              	.L48:
 386 0010 54F8045B 		ldr	r5, [r4], #4
 387 0014 2B68     		ldr	r3, [r5]
 388 0016 2846     		mov	r0, r5
 389 0018 DB6A     		ldr	r3, [r3, #44]
 390 001a 9847     		blx	r3
 391 001c 0028     		cmp	r0, #0
 392 001e F5D0     		beq	.L52
 393 0020 2846     		mov	r0, r5
 394 0022 70BD     		pop	{r4, r5, r6, pc}
 395              	.L51:
 396 0024 0546     		mov	r5, r0
 397 0026 2846     		mov	r0, r5
 398 0028 70BD     		pop	{r4, r5, r6, pc}
 399              		.size	_ZNK7Network17FindWiFiInterfaceEv, .-_ZNK7Network17FindWiFiInterfaceEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 8


 400 002a 00BF     		.section	.text._ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer,"ax",%progb
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, %function
 409              	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer:
 410              		@ args = 4, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 413 0004 DDF820A0 		ldr	r10, [sp, #32]
 414 0008 8846     		mov	r8, r1
 415 000a 9146     		mov	r9, r2
 416 000c 1F46     		mov	r7, r3
 417 000e 00F10C06 		add	r6, r0, #12
 418 0012 00F10804 		add	r4, r0, #8
 419 0016 01E0     		b	.L56
 420              	.L60:
 421 0018 A642     		cmp	r6, r4
 422 001a 11D0     		beq	.L59
 423              	.L56:
 424 001c 54F8045B 		ldr	r5, [r4], #4
 425 0020 2B68     		ldr	r3, [r5]
 426 0022 2846     		mov	r0, r5
 427 0024 DB6A     		ldr	r3, [r3, #44]
 428 0026 9847     		blx	r3
 429 0028 0028     		cmp	r0, #0
 430 002a F5D0     		beq	.L60
 431 002c CDF820A0 		str	r10, [sp, #32]
 432 0030 3B46     		mov	r3, r7
 433 0032 4A46     		mov	r2, r9
 434 0034 4146     		mov	r1, r8
 435 0036 2846     		mov	r0, r5
 436 0038 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 437 003c FFF7FEBF 		b	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 438              	.L59:
 439 0040 3846     		mov	r0, r7
 440 0042 0349     		ldr	r1, .L61
 441 0044 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 442 0048 0220     		movs	r0, #2
 443 004a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 444              	.L62:
 445 004e 00BF     		.align	2
 446              	.L61:
 447 0050 00000000 		.word	.LC4
 448              		.size	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, .-_ZN7Network14Hand
 449              		.section	.text._ZNK7Network20GetWiFiServerVersionEv,"ax",%progbits
 450              		.align	1
 451              		.p2align 2,,3
 452              		.global	_ZNK7Network20GetWiFiServerVersionEv
 453              		.syntax unified
 454              		.thumb
 455              		.thumb_func
 456              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 9


 457              		.type	_ZNK7Network20GetWiFiServerVersionEv, %function
 458              	_ZNK7Network20GetWiFiServerVersionEv:
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 461 0000 70B5     		push	{r4, r5, r6, lr}
 462 0002 00F10C06 		add	r6, r0, #12
 463 0006 00F10804 		add	r4, r0, #8
 464 000a 01E0     		b	.L65
 465              	.L70:
 466 000c A642     		cmp	r6, r4
 467 000e 0AD0     		beq	.L69
 468              	.L65:
 469 0010 54F8045B 		ldr	r5, [r4], #4
 470 0014 2B68     		ldr	r3, [r5]
 471 0016 2846     		mov	r0, r5
 472 0018 DB6A     		ldr	r3, [r3, #44]
 473 001a 9847     		blx	r3
 474 001c 0028     		cmp	r0, #0
 475 001e F5D0     		beq	.L70
 476 0020 05F59070 		add	r0, r5, #288
 477 0024 70BD     		pop	{r4, r5, r6, pc}
 478              	.L69:
 479 0026 0148     		ldr	r0, .L71
 480 0028 70BD     		pop	{r4, r5, r6, pc}
 481              	.L72:
 482 002a 00BF     		.align	2
 483              	.L71:
 484 002c 00000000 		.word	.LC5
 485              		.size	_ZNK7Network20GetWiFiServerVersionEv, .-_ZNK7Network20GetWiFiServerVersionEv
 486              		.section	.text._ZNK7Network15GetWifiUploaderEv,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	_ZNK7Network15GetWifiUploaderEv
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv4-sp-d16
 494              		.type	_ZNK7Network15GetWifiUploaderEv, %function
 495              	_ZNK7Network15GetWifiUploaderEv:
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498 0000 70B5     		push	{r4, r5, r6, lr}
 499 0002 00F10C06 		add	r6, r0, #12
 500 0006 00F10804 		add	r4, r0, #8
 501 000a 01E0     		b	.L75
 502              	.L79:
 503 000c A642     		cmp	r6, r4
 504 000e 08D0     		beq	.L73
 505              	.L75:
 506 0010 54F8045B 		ldr	r5, [r4], #4
 507 0014 2B68     		ldr	r3, [r5]
 508 0016 2846     		mov	r0, r5
 509 0018 DB6A     		ldr	r3, [r3, #44]
 510 001a 9847     		blx	r3
 511 001c 0028     		cmp	r0, #0
 512 001e F5D0     		beq	.L79
 513 0020 A86F     		ldr	r0, [r5, #120]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 10


 514              	.L73:
 515 0022 70BD     		pop	{r4, r5, r6, pc}
 516              		.size	_ZNK7Network15GetWifiUploaderEv, .-_ZNK7Network15GetWifiUploaderEv
 517              		.section	.text._ZN7Network18ResetWiFiForUploadEb,"ax",%progbits
 518              		.align	1
 519              		.p2align 2,,3
 520              		.global	_ZN7Network18ResetWiFiForUploadEb
 521              		.syntax unified
 522              		.thumb
 523              		.thumb_func
 524              		.fpu fpv4-sp-d16
 525              		.type	_ZN7Network18ResetWiFiForUploadEb, %function
 526              	_ZN7Network18ResetWiFiForUploadEb:
 527              		@ args = 0, pretend = 0, frame = 0
 528              		@ frame_needed = 0, uses_anonymous_args = 0
 529 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 530 0002 0F46     		mov	r7, r1
 531 0004 00F10C06 		add	r6, r0, #12
 532 0008 00F10804 		add	r4, r0, #8
 533 000c 01E0     		b	.L82
 534              	.L87:
 535 000e A642     		cmp	r6, r4
 536 0010 0DD0     		beq	.L86
 537              	.L82:
 538 0012 54F8045B 		ldr	r5, [r4], #4
 539 0016 2B68     		ldr	r3, [r5]
 540 0018 2846     		mov	r0, r5
 541 001a DB6A     		ldr	r3, [r3, #44]
 542 001c 9847     		blx	r3
 543 001e 0028     		cmp	r0, #0
 544 0020 F5D0     		beq	.L87
 545 0022 3946     		mov	r1, r7
 546 0024 2846     		mov	r0, r5
 547 0026 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 548 002a FFF7FEBF 		b	_ZN13WiFiInterface18ResetWiFiForUploadEb
 549              	.L86:
 550 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 551              		.size	_ZN7Network18ResetWiFiForUploadEb, .-_ZN7Network18ResetWiFiForUploadEb
 552              		.section	.text._ZN7Network8ActivateEv,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	_ZN7Network8ActivateEv
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv4-sp-d16
 560              		.type	_ZN7Network8ActivateEv, %function
 561              	_ZN7Network8ActivateEv:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564 0000 30B5     		push	{r4, r5, lr}
 565 0002 041D     		adds	r4, r0, #4
 566 0004 85B0     		sub	sp, sp, #20
 567 0006 00F10805 		add	r5, r0, #8
 568              	.L90:
 569 000a 54F8043F 		ldr	r3, [r4, #4]!
 570 000e 1846     		mov	r0, r3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 11


 571 0010 13B1     		cbz	r3, .L89
 572 0012 1B68     		ldr	r3, [r3]
 573 0014 9B68     		ldr	r3, [r3, #8]
 574 0016 9847     		blx	r3
 575              	.L89:
 576 0018 AC42     		cmp	r4, r5
 577 001a F6D1     		bne	.L90
 578 001c 0B4C     		ldr	r4, .L96
 579 001e 0C49     		ldr	r1, .L96+4
 580 0020 0C48     		ldr	r0, .L96+8
 581 0022 04F10805 		add	r5, r4, #8
 582 0026 04F16002 		add	r2, r4, #96
 583 002a 0123     		movs	r3, #1
 584 002c CDE90125 		strd	r2, r5, [sp, #4]
 585 0030 0093     		str	r3, [sp]
 586 0032 40F22622 		movw	r2, #550
 587 0036 0023     		movs	r3, #0
 588 0038 FFF7FEFF 		bl	xTaskCreateStatic
 589 003c 064B     		ldr	r3, .L96+12
 590 003e 2560     		str	r5, [r4]
 591 0040 1A68     		ldr	r2, [r3]
 592 0042 6260     		str	r2, [r4, #4]
 593 0044 1C60     		str	r4, [r3]
 594 0046 05B0     		add	sp, sp, #20
 595              		@ sp needed
 596 0048 30BD     		pop	{r4, r5, pc}
 597              	.L97:
 598 004a 00BF     		.align	2
 599              	.L96:
 600 004c 00000000 		.word	.LANCHOR3
 601 0050 00000000 		.word	.LC6
 602 0054 00000000 		.word	NetworkLoop
 603 0058 00000000 		.word	_ZN8TaskBase8taskListE
 604              		.size	_ZN7Network8ActivateEv, .-_ZN7Network8ActivateEv
 605              		.section	.text._ZN7Network4ExitEv,"ax",%progbits
 606              		.align	1
 607              		.p2align 2,,3
 608              		.global	_ZN7Network4ExitEv
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu fpv4-sp-d16
 613              		.type	_ZN7Network4ExitEv, %function
 614              	_ZN7Network4ExitEv:
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617 0000 38B5     		push	{r3, r4, r5, lr}
 618 0002 041D     		adds	r4, r0, #4
 619 0004 00F10805 		add	r5, r0, #8
 620              	.L100:
 621 0008 54F8043F 		ldr	r3, [r4, #4]!
 622 000c 1846     		mov	r0, r3
 623 000e 13B1     		cbz	r3, .L99
 624 0010 1B68     		ldr	r3, [r3]
 625 0012 DB68     		ldr	r3, [r3, #12]
 626 0014 9847     		blx	r3
 627              	.L99:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 12


 628 0016 AC42     		cmp	r4, r5
 629 0018 F6D1     		bne	.L100
 630 001a 38BD     		pop	{r3, r4, r5, pc}
 631              		.size	_ZN7Network4ExitEv, .-_ZN7Network4ExitEv
 632              		.section	.text._ZN7Network15GetNetworkStateEjRK9StringRef,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	_ZN7Network15GetNetworkStateEjRK9StringRef
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv4-sp-d16
 640              		.type	_ZN7Network15GetNetworkStateEjRK9StringRef, %function
 641              	_ZN7Network15GetNetworkStateEjRK9StringRef:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644 0000 21B9     		cbnz	r1, .L107
 645 0002 8068     		ldr	r0, [r0, #8]
 646 0004 0368     		ldr	r3, [r0]
 647 0006 1146     		mov	r1, r2
 648 0008 1B6A     		ldr	r3, [r3, #32]
 649 000a 1847     		bx	r3
 650              	.L107:
 651 000c 10B5     		push	{r4, lr}
 652 000e 1046     		mov	r0, r2
 653 0010 0A46     		mov	r2, r1
 654 0012 0249     		ldr	r1, .L110
 655 0014 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 656 0018 0220     		movs	r0, #2
 657 001a 10BD     		pop	{r4, pc}
 658              	.L111:
 659              		.align	2
 660              	.L110:
 661 001c 00000000 		.word	.LC3
 662              		.size	_ZN7Network15GetNetworkStateEjRK9StringRef, .-_ZN7Network15GetNetworkStateEjRK9StringRef
 663              		.section	.text._ZNK7Network15IsWiFiInterfaceEj,"ax",%progbits
 664              		.align	1
 665              		.p2align 2,,3
 666              		.global	_ZNK7Network15IsWiFiInterfaceEj
 667              		.syntax unified
 668              		.thumb
 669              		.thumb_func
 670              		.fpu fpv4-sp-d16
 671              		.type	_ZNK7Network15IsWiFiInterfaceEj, %function
 672              	_ZNK7Network15IsWiFiInterfaceEj:
 673              		@ args = 0, pretend = 0, frame = 0
 674              		@ frame_needed = 0, uses_anonymous_args = 0
 675              		@ link register save eliminated.
 676 0000 09B1     		cbz	r1, .L114
 677 0002 0020     		movs	r0, #0
 678 0004 7047     		bx	lr
 679              	.L114:
 680 0006 8068     		ldr	r0, [r0, #8]
 681 0008 0368     		ldr	r3, [r0]
 682 000a DB6A     		ldr	r3, [r3, #44]
 683 000c 1847     		bx	r3
 684              		.size	_ZNK7Network15IsWiFiInterfaceEj, .-_ZNK7Network15IsWiFiInterfaceEj
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 13


 685 000e 00BF     		.section	.text._ZN7Network4SpinEb,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	_ZN7Network4SpinEb
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu fpv4-sp-d16
 693              		.type	_ZN7Network4SpinEb, %function
 694              	_ZN7Network4SpinEb:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697 0000 1A4B     		ldr	r3, .L130
 698 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 699 0006 D3F89070 		ldr	r7, [r3, #144]
 700 000a 0546     		mov	r5, r0
 701 000c 0E46     		mov	r6, r1
 702 000e 00F10804 		add	r4, r0, #8
 703 0012 00F10C08 		add	r8, r0, #12
 704              	.L116:
 705 0016 54F8040B 		ldr	r0, [r4], #4
 706 001a 0368     		ldr	r3, [r0]
 707 001c 3146     		mov	r1, r6
 708 001e 1B69     		ldr	r3, [r3, #16]
 709 0020 9847     		blx	r3
 710 0022 A045     		cmp	r8, r4
 711 0024 F7D1     		bne	.L116
 712 0026 5EB1     		cbz	r6, .L117
 713 0028 2C69     		ldr	r4, [r5, #16]
 714              	.L120:
 715 002a ECB1     		cbz	r4, .L129
 716              	.L118:
 717 002c 2368     		ldr	r3, [r4]
 718 002e 2046     		mov	r0, r4
 719 0030 1B68     		ldr	r3, [r3]
 720 0032 9847     		blx	r3
 721 0034 6468     		ldr	r4, [r4, #4]
 722 0036 10B9     		cbnz	r0, .L119
 723 0038 2B69     		ldr	r3, [r5, #16]
 724 003a A342     		cmp	r3, r4
 725 003c F5D1     		bne	.L120
 726              	.L119:
 727 003e 2C61     		str	r4, [r5, #16]
 728              	.L117:
 729 0040 FFF7FEFF 		bl	_ZN13HttpResponder13CheckSessionsEv
 730 0044 094B     		ldr	r3, .L130
 731 0046 D5F8D420 		ldr	r2, [r5, #212]
 732 004a D3F89030 		ldr	r3, [r3, #144]
 733 004e DF1B     		subs	r7, r3, r7
 734 0050 D5F8D830 		ldr	r3, [r5, #216]
 735 0054 BA42     		cmp	r2, r7
 736 0056 88BF     		it	hi
 737 0058 C5F8D470 		strhi	r7, [r5, #212]
 738 005c BB42     		cmp	r3, r7
 739 005e 38BF     		it	cc
 740 0060 C5F8D870 		strcc	r7, [r5, #216]
 741 0064 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 14


 742              	.L129:
 743 0068 EC68     		ldr	r4, [r5, #12]
 744 006a DFE7     		b	.L118
 745              	.L131:
 746              		.align	2
 747              	.L130:
 748 006c 00000940 		.word	1074331648
 749              		.size	_ZN7Network4SpinEb, .-_ZN7Network4SpinEb
 750              		.section	.text.NetworkLoop,"ax",%progbits
 751              		.align	1
 752              		.p2align 2,,3
 753              		.global	NetworkLoop
 754              		.syntax unified
 755              		.thumb
 756              		.thumb_func
 757              		.fpu fpv4-sp-d16
 758              		.type	NetworkLoop, %function
 759              	NetworkLoop:
 760              		@ Volatile: function does not return.
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763 0000 08B5     		push	{r3, lr}
 764 0002 074E     		ldr	r6, .L135
 765 0004 074D     		ldr	r5, .L135+4
 766 0006 4FF08054 		mov	r4, #268435456
 767              	.L133:
 768 000a 0121     		movs	r1, #1
 769 000c B068     		ldr	r0, [r6, #8]	@ unaligned
 770 000e FFF7FEFF 		bl	_ZN7Network4SpinEb
 771 0012 2C60     		str	r4, [r5]
 772              		.syntax unified
 773              	@ 224 "C:\eclipse\firmware\RRFLibraries\src/RTOSIface/RTOSIface.h" 1
 774 0014 BFF34F8F 		dsb
 775              	@ 0 "" 2
 776              	@ 224 "C:\eclipse\firmware\RRFLibraries\src/RTOSIface/RTOSIface.h" 1
 777 0018 BFF36F8F 		isb
 778              	@ 0 "" 2
 779              		.thumb
 780              		.syntax unified
 781 001c F5E7     		b	.L133
 782              	.L136:
 783 001e 00BF     		.align	2
 784              	.L135:
 785 0020 00000000 		.word	reprap
 786 0024 04ED00E0 		.word	-536810236
 787              		.size	NetworkLoop, .-NetworkLoop
 788              		.section	.text._ZN7Network9InterruptEv,"ax",%progbits
 789              		.align	1
 790              		.p2align 2,,3
 791              		.global	_ZN7Network9InterruptEv
 792              		.syntax unified
 793              		.thumb
 794              		.thumb_func
 795              		.fpu fpv4-sp-d16
 796              		.type	_ZN7Network9InterruptEv, %function
 797              	_ZN7Network9InterruptEv:
 798              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 15


 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800 0000 70B5     		push	{r4, r5, r6, lr}
 801 0002 084E     		ldr	r6, .L143
 802 0004 041D     		adds	r4, r0, #4
 803 0006 00F10805 		add	r5, r0, #8
 804 000a 01E0     		b	.L139
 805              	.L138:
 806 000c AC42     		cmp	r4, r5
 807 000e 08D0     		beq	.L142
 808              	.L139:
 809 0010 54F8040F 		ldr	r0, [r4, #4]!
 810 0014 0368     		ldr	r3, [r0]
 811 0016 5B69     		ldr	r3, [r3, #20]
 812 0018 B342     		cmp	r3, r6
 813 001a F7D0     		beq	.L138
 814 001c 9847     		blx	r3
 815 001e AC42     		cmp	r4, r5
 816 0020 F6D1     		bne	.L139
 817              	.L142:
 818 0022 70BD     		pop	{r4, r5, r6, pc}
 819              	.L144:
 820              		.align	2
 821              	.L143:
 822 0024 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 823              		.size	_ZN7Network9InterruptEv, .-_ZN7Network9InterruptEv
 824              		.global	__aeabi_f2d
 825              		.section	.text._ZN7Network11DiagnosticsE11MessageType,"ax",%progbits
 826              		.align	1
 827              		.p2align 2,,3
 828              		.global	_ZN7Network11DiagnosticsE11MessageType
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu fpv4-sp-d16
 833              		.type	_ZN7Network11DiagnosticsE11MessageType, %function
 834              	_ZN7Network11DiagnosticsE11MessageType:
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837 0000 70B5     		push	{r4, r5, r6, lr}
 838 0002 2DED028B 		vpush.64	{d8}
 839 0006 0546     		mov	r5, r0
 840 0008 84B0     		sub	sp, sp, #16
 841 000a 284A     		ldr	r2, .L155
 842 000c 4068     		ldr	r0, [r0, #4]
 843 000e 9FED288A 		vldr.32	s16, .L155+4
 844 0012 0E46     		mov	r6, r1
 845 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 846 0018 D5ED357A 		vldr.32	s15, [r5, #212]	@ int
 847 001c 6C68     		ldr	r4, [r5, #4]
 848 001e F8EE677A 		vcvt.f32.u32	s15, s15
 849 0022 67EE887A 		vmul.f32	s15, s15, s16
 850 0026 17EE900A 		vmov	r0, s15
 851 002a FFF7FEFF 		bl	__aeabi_f2d
 852 002e D5ED367A 		vldr.32	s15, [r5, #216]	@ int
 853 0032 F8EE677A 		vcvt.f32.u32	s15, s15
 854 0036 CDE90201 		strd	r0, [sp, #8]
 855 003a 67EE887A 		vmul.f32	s15, s15, s16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 16


 856 003e 17EE900A 		vmov	r0, s15
 857 0042 FFF7FEFF 		bl	__aeabi_f2d
 858 0046 1B4A     		ldr	r2, .L155+8
 859 0048 CDE90001 		strd	r0, [sp]
 860 004c 2046     		mov	r0, r4
 861 004e 3146     		mov	r1, r6
 862 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 863 0054 4FF0FF32 		mov	r2, #-1
 864 0058 0023     		movs	r3, #0
 865 005a C5E93523 		strd	r2, r3, [r5, #212]
 866 005e 3146     		mov	r1, r6
 867 0060 6868     		ldr	r0, [r5, #4]
 868 0062 154A     		ldr	r2, .L155+12
 869 0064 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 870 0068 EC68     		ldr	r4, [r5, #12]
 871 006a 3CB1     		cbz	r4, .L146
 872              	.L147:
 873 006c 2368     		ldr	r3, [r4]
 874 006e 2046     		mov	r0, r4
 875 0070 3146     		mov	r1, r6
 876 0072 DB68     		ldr	r3, [r3, #12]
 877 0074 9847     		blx	r3
 878 0076 6468     		ldr	r4, [r4, #4]
 879 0078 002C     		cmp	r4, #0
 880 007a F7D1     		bne	.L147
 881              	.L146:
 882 007c 6868     		ldr	r0, [r5, #4]
 883 007e 0F4A     		ldr	r2, .L155+16
 884 0080 3146     		mov	r1, r6
 885 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 886 0086 3046     		mov	r0, r6
 887 0088 FFF7FEFF 		bl	_ZN13HttpResponder17CommonDiagnosticsE11MessageType
 888 008c 05F10804 		add	r4, r5, #8
 889 0090 0C35     		adds	r5, r5, #12
 890              	.L148:
 891 0092 54F8040B 		ldr	r0, [r4], #4
 892 0096 0368     		ldr	r3, [r0]
 893 0098 3146     		mov	r1, r6
 894 009a 9B69     		ldr	r3, [r3, #24]
 895 009c 9847     		blx	r3
 896 009e A542     		cmp	r5, r4
 897 00a0 F7D1     		bne	.L148
 898 00a2 04B0     		add	sp, sp, #16
 899              		@ sp needed
 900 00a4 BDEC028B 		vldm	sp!, {d8}
 901 00a8 70BD     		pop	{r4, r5, r6, pc}
 902              	.L156:
 903 00aa 00BF     		.align	2
 904              	.L155:
 905 00ac 00000000 		.word	.LC7
 906 00b0 65CF8B3A 		.word	982241125
 907 00b4 14000000 		.word	.LC8
 908 00b8 3C000000 		.word	.LC9
 909 00bc 50000000 		.word	.LC10
 910              		.size	_ZN7Network11DiagnosticsE11MessageType, .-_ZN7Network11DiagnosticsE11MessageType
 911              		.section	.text._ZNK7Network14InNetworkStackEv,"ax",%progbits
 912              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 17


 913              		.p2align 2,,3
 914              		.global	_ZNK7Network14InNetworkStackEv
 915              		.syntax unified
 916              		.thumb
 917              		.thumb_func
 918              		.fpu fpv4-sp-d16
 919              		.type	_ZNK7Network14InNetworkStackEv, %function
 920              	_ZNK7Network14InNetworkStackEv:
 921              		@ args = 0, pretend = 0, frame = 0
 922              		@ frame_needed = 0, uses_anonymous_args = 0
 923 0000 38B5     		push	{r3, r4, r5, lr}
 924 0002 00F10C05 		add	r5, r0, #12
 925 0006 00F10804 		add	r4, r0, #8
 926 000a 01E0     		b	.L159
 927              	.L162:
 928 000c A542     		cmp	r5, r4
 929 000e 06D0     		beq	.L158
 930              	.L159:
 931 0010 54F8040B 		ldr	r0, [r4], #4
 932 0014 0368     		ldr	r3, [r0]
 933 0016 9B6A     		ldr	r3, [r3, #40]
 934 0018 9847     		blx	r3
 935 001a 0028     		cmp	r0, #0
 936 001c F6D0     		beq	.L162
 937              	.L158:
 938 001e 38BD     		pop	{r3, r4, r5, pc}
 939              		.size	_ZNK7Network14InNetworkStackEv, .-_ZNK7Network14InNetworkStackEv
 940              		.section	.text._ZNK7Network11EnableStateEj,"ax",%progbits
 941              		.align	1
 942              		.p2align 2,,3
 943              		.global	_ZNK7Network11EnableStateEj
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu fpv4-sp-d16
 948              		.type	_ZNK7Network11EnableStateEj, %function
 949              	_ZNK7Network11EnableStateEj:
 950              		@ args = 0, pretend = 0, frame = 0
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952              		@ link register save eliminated.
 953 0000 19B9     		cbnz	r1, .L164
 954 0002 8068     		ldr	r0, [r0, #8]
 955 0004 0368     		ldr	r3, [r0]
 956 0006 5B6A     		ldr	r3, [r3, #36]
 957 0008 1847     		bx	r3
 958              	.L164:
 959 000a 4FF0FF30 		mov	r0, #-1
 960 000e 7047     		bx	lr
 961              		.size	_ZNK7Network11EnableStateEj, .-_ZNK7Network11EnableStateEj
 962              		.section	.text._ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_,"ax",%progbits
 963              		.align	1
 964              		.p2align 2,,3
 965              		.global	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_
 966              		.syntax unified
 967              		.thumb
 968              		.thumb_func
 969              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 18


 970              		.type	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_, %function
 971              	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_:
 972              		@ args = 0, pretend = 0, frame = 0
 973              		@ frame_needed = 0, uses_anonymous_args = 0
 974 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 975 0004 8946     		mov	r9, r1
 976 0006 9046     		mov	r8, r2
 977 0008 1F46     		mov	r7, r3
 978 000a 051D     		adds	r5, r0, #4
 979 000c 00F10806 		add	r6, r0, #8
 980              	.L167:
 981 0010 55F8044F 		ldr	r4, [r5, #4]!
 982 0014 2368     		ldr	r3, [r4]
 983 0016 2046     		mov	r0, r4
 984 0018 DB6A     		ldr	r3, [r3, #44]
 985 001a 9847     		blx	r3
 986 001c 3B46     		mov	r3, r7
 987 001e 4246     		mov	r2, r8
 988 0020 4946     		mov	r1, r9
 989 0022 28B9     		cbnz	r0, .L166
 990 0024 D4F800C0 		ldr	ip, [r4]
 991 0028 2046     		mov	r0, r4
 992 002a DCF84040 		ldr	r4, [ip, #64]
 993 002e A047     		blx	r4
 994              	.L166:
 995 0030 B542     		cmp	r5, r6
 996 0032 EDD1     		bne	.L167
 997 0034 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 998              		.size	_ZN7Network20SetEthernetIPAddressE9IPAddressS0_S0_, .-_ZN7Network20SetEthernetIPAddressE9IPA
 999              		.section	.text._ZNK7Network12GetIPAddressEj,"ax",%progbits
 1000              		.align	1
 1001              		.p2align 2,,3
 1002              		.global	_ZNK7Network12GetIPAddressEj
 1003              		.syntax unified
 1004              		.thumb
 1005              		.thumb_func
 1006              		.fpu fpv4-sp-d16
 1007              		.type	_ZNK7Network12GetIPAddressEj, %function
 1008              	_ZNK7Network12GetIPAddressEj:
 1009              		@ args = 0, pretend = 0, frame = 0
 1010              		@ frame_needed = 0, uses_anonymous_args = 0
 1011              		@ link register save eliminated.
 1012 0000 09B1     		cbz	r1, .L172
 1013 0002 0020     		movs	r0, #0
 1014 0004 7047     		bx	lr
 1015              	.L172:
 1016 0006 8068     		ldr	r0, [r0, #8]
 1017 0008 0368     		ldr	r3, [r0]
 1018 000a DB6B     		ldr	r3, [r3, #60]
 1019 000c 1847     		bx	r3
 1020              		.size	_ZNK7Network12GetIPAddressEj, .-_ZNK7Network12GetIPAddressEj
 1021 000e 00BF     		.section	.text._ZN7Network11SetHostnameEPKc,"ax",%progbits
 1022              		.align	1
 1023              		.p2align 2,,3
 1024              		.global	_ZN7Network11SetHostnameEPKc
 1025              		.syntax unified
 1026              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 19


 1027              		.thumb_func
 1028              		.fpu fpv4-sp-d16
 1029              		.type	_ZN7Network11SetHostnameEPKc, %function
 1030              	_ZN7Network11SetHostnameEPKc:
 1031              		@ args = 0, pretend = 0, frame = 0
 1032              		@ frame_needed = 0, uses_anonymous_args = 0
 1033 0000 70B5     		push	{r4, r5, r6, lr}
 1034 0002 0139     		subs	r1, r1, #1
 1035 0004 0446     		mov	r4, r0
 1036 0006 0022     		movs	r2, #0
 1037              	.L174:
 1038 0008 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 1039 000c A518     		adds	r5, r4, r2
 1040 000e A3F14100 		sub	r0, r3, #65
 1041 0012 DBB1     		cbz	r3, .L175
 1042              	.L190:
 1043 0014 0E2A     		cmp	r2, #14
 1044 0016 23D8     		bhi	.L189
 1045 0018 1928     		cmp	r0, #25
 1046 001a 9CBF     		itt	ls
 1047 001c 2033     		addls	r3, r3, #32
 1048 001e DBB2     		uxtbls	r3, r3
 1049 0020 A3F16100 		sub	r0, r3, #97
 1050 0024 1928     		cmp	r0, #25
 1051 0026 A3F13006 		sub	r6, r3, #48
 1052 002a 05D9     		bls	.L179
 1053 002c 092E     		cmp	r6, #9
 1054 002e 03D9     		bls	.L179
 1055 0030 2D2B     		cmp	r3, #45
 1056 0032 01D0     		beq	.L179
 1057 0034 5F2B     		cmp	r3, #95
 1058 0036 E7D1     		bne	.L174
 1059              	.L179:
 1060 0038 85F8DC30 		strb	r3, [r5, #220]
 1061 003c 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 1062 0040 0132     		adds	r2, r2, #1
 1063 0042 A3F14100 		sub	r0, r3, #65
 1064 0046 A518     		adds	r5, r4, r2
 1065 0048 002B     		cmp	r3, #0
 1066 004a E3D1     		bne	.L190
 1067              	.L175:
 1068 004c 04F1DC06 		add	r6, r4, #220
 1069 0050 42B9     		cbnz	r2, .L177
 1070 0052 0C4B     		ldr	r3, .L191
 1071 0054 1868     		ldr	r0, [r3]
 1072 0056 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 1073 0058 C4F8DC00 		str	r0, [r4, #220]	@ unaligned
 1074 005c 3371     		strb	r3, [r6, #4]
 1075 005e 05E0     		b	.L182
 1076              	.L189:
 1077 0060 04F1DC06 		add	r6, r4, #220
 1078              	.L177:
 1079 0064 2244     		add	r2, r2, r4
 1080 0066 0023     		movs	r3, #0
 1081 0068 82F8DC30 		strb	r3, [r2, #220]
 1082              	.L182:
 1083 006c 04F10805 		add	r5, r4, #8
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 20


 1084 0070 0C34     		adds	r4, r4, #12
 1085              	.L183:
 1086 0072 55F8040B 		ldr	r0, [r5], #4
 1087 0076 0368     		ldr	r3, [r0]
 1088 0078 3146     		mov	r1, r6
 1089 007a DB6C     		ldr	r3, [r3, #76]
 1090 007c 9847     		blx	r3
 1091 007e AC42     		cmp	r4, r5
 1092 0080 F7D1     		bne	.L183
 1093 0082 70BD     		pop	{r4, r5, r6, pc}
 1094              	.L192:
 1095              		.align	2
 1096              	.L191:
 1097 0084 10000000 		.word	.LC2
 1098              		.size	_ZN7Network11SetHostnameEPKc, .-_ZN7Network11SetHostnameEPKc
 1099              		.section	.text._ZN7Network13SetMacAddressEjPKh,"ax",%progbits
 1100              		.align	1
 1101              		.p2align 2,,3
 1102              		.global	_ZN7Network13SetMacAddressEjPKh
 1103              		.syntax unified
 1104              		.thumb
 1105              		.thumb_func
 1106              		.fpu fpv4-sp-d16
 1107              		.type	_ZN7Network13SetMacAddressEjPKh, %function
 1108              	_ZN7Network13SetMacAddressEjPKh:
 1109              		@ args = 0, pretend = 0, frame = 0
 1110              		@ frame_needed = 0, uses_anonymous_args = 0
 1111              		@ link register save eliminated.
 1112 0000 01B1     		cbz	r1, .L195
 1113 0002 7047     		bx	lr
 1114              	.L195:
 1115 0004 8068     		ldr	r0, [r0, #8]
 1116 0006 0368     		ldr	r3, [r0]
 1117 0008 1146     		mov	r1, r2
 1118 000a 5B6C     		ldr	r3, [r3, #68]
 1119 000c 1847     		bx	r3	@ indirect register sibling call
 1120              		.size	_ZN7Network13SetMacAddressEjPKh, .-_ZN7Network13SetMacAddressEjPKh
 1121 000e 00BF     		.section	.text._ZNK7Network13GetMacAddressEj,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	_ZNK7Network13GetMacAddressEj
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu fpv4-sp-d16
 1129              		.type	_ZNK7Network13GetMacAddressEj, %function
 1130              	_ZNK7Network13GetMacAddressEj:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133              		@ link register save eliminated.
 1134 0000 8068     		ldr	r0, [r0, #8]
 1135 0002 0368     		ldr	r3, [r0]
 1136 0004 9B6C     		ldr	r3, [r3, #72]
 1137 0006 1847     		bx	r3
 1138              		.size	_ZNK7Network13GetMacAddressEj, .-_ZNK7Network13GetMacAddressEj
 1139              		.section	.text._ZN7Network13FindResponderEP6Socketh,"ax",%progbits
 1140              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 21


 1141              		.p2align 2,,3
 1142              		.global	_ZN7Network13FindResponderEP6Socketh
 1143              		.syntax unified
 1144              		.thumb
 1145              		.thumb_func
 1146              		.fpu fpv4-sp-d16
 1147              		.type	_ZN7Network13FindResponderEP6Socketh, %function
 1148              	_ZN7Network13FindResponderEP6Socketh:
 1149              		@ args = 0, pretend = 0, frame = 0
 1150              		@ frame_needed = 0, uses_anonymous_args = 0
 1151 0000 70B5     		push	{r4, r5, r6, lr}
 1152 0002 C468     		ldr	r4, [r0, #12]
 1153 0004 6CB1     		cbz	r4, .L198
 1154 0006 0E46     		mov	r6, r1
 1155 0008 1546     		mov	r5, r2
 1156 000a 01E0     		b	.L200
 1157              	.L206:
 1158 000c 6468     		ldr	r4, [r4, #4]
 1159 000e 44B1     		cbz	r4, .L198
 1160              	.L200:
 1161 0010 2368     		ldr	r3, [r4]
 1162 0012 2A46     		mov	r2, r5
 1163 0014 5B68     		ldr	r3, [r3, #4]
 1164 0016 3146     		mov	r1, r6
 1165 0018 2046     		mov	r0, r4
 1166 001a 9847     		blx	r3
 1167 001c 0028     		cmp	r0, #0
 1168 001e F5D0     		beq	.L206
 1169 0020 70BD     		pop	{r4, r5, r6, pc}
 1170              	.L198:
 1171 0022 0020     		movs	r0, #0
 1172 0024 70BD     		pop	{r4, r5, r6, pc}
 1173              		.size	_ZN7Network13FindResponderEP6Socketh, .-_ZN7Network13FindResponderEP6Socketh
 1174 0026 00BF     		.section	.text._ZN7Network20HandleHttpGCodeReplyEPKc,"ax",%progbits
 1175              		.align	1
 1176              		.p2align 2,,3
 1177              		.global	_ZN7Network20HandleHttpGCodeReplyEPKc
 1178              		.syntax unified
 1179              		.thumb
 1180              		.thumb_func
 1181              		.fpu fpv4-sp-d16
 1182              		.type	_ZN7Network20HandleHttpGCodeReplyEPKc, %function
 1183              	_ZN7Network20HandleHttpGCodeReplyEPKc:
 1184              		@ args = 0, pretend = 0, frame = 8
 1185              		@ frame_needed = 0, uses_anonymous_args = 0
 1186 0000 10B5     		push	{r4, lr}
 1187 0002 82B0     		sub	sp, sp, #8
 1188 0004 4FF0FF32 		mov	r2, #-1
 1189 0008 0C46     		mov	r4, r1
 1190 000a 00F11401 		add	r1, r0, #20
 1191 000e 6846     		mov	r0, sp
 1192 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1193 0014 2046     		mov	r0, r4
 1194 0016 FFF7FEFF 		bl	_ZN13HttpResponder16HandleGCodeReplyEPKc
 1195 001a 6846     		mov	r0, sp
 1196 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1197 0020 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 22


 1198              		@ sp needed
 1199 0022 10BD     		pop	{r4, pc}
 1200              		.size	_ZN7Network20HandleHttpGCodeReplyEPKc, .-_ZN7Network20HandleHttpGCodeReplyEPKc
 1201              		.section	.text._ZN7Network22HandleTelnetGCodeReplyEPKc,"ax",%progbits
 1202              		.align	1
 1203              		.p2align 2,,3
 1204              		.global	_ZN7Network22HandleTelnetGCodeReplyEPKc
 1205              		.syntax unified
 1206              		.thumb
 1207              		.thumb_func
 1208              		.fpu fpv4-sp-d16
 1209              		.type	_ZN7Network22HandleTelnetGCodeReplyEPKc, %function
 1210              	_ZN7Network22HandleTelnetGCodeReplyEPKc:
 1211              		@ args = 0, pretend = 0, frame = 8
 1212              		@ frame_needed = 0, uses_anonymous_args = 0
 1213 0000 10B5     		push	{r4, lr}
 1214 0002 82B0     		sub	sp, sp, #8
 1215 0004 4FF0FF32 		mov	r2, #-1
 1216 0008 0C46     		mov	r4, r1
 1217 000a 00F17401 		add	r1, r0, #116
 1218 000e 6846     		mov	r0, sp
 1219 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1220 0014 2046     		mov	r0, r4
 1221 0016 FFF7FEFF 		bl	_ZN15TelnetResponder16HandleGCodeReplyEPKc
 1222 001a 6846     		mov	r0, sp
 1223 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1224 0020 02B0     		add	sp, sp, #8
 1225              		@ sp needed
 1226 0022 10BD     		pop	{r4, pc}
 1227              		.size	_ZN7Network22HandleTelnetGCodeReplyEPKc, .-_ZN7Network22HandleTelnetGCodeReplyEPKc
 1228              		.section	.text._ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer,"ax",%progbits
 1229              		.align	1
 1230              		.p2align 2,,3
 1231              		.global	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 1232              		.syntax unified
 1233              		.thumb
 1234              		.thumb_func
 1235              		.fpu fpv4-sp-d16
 1236              		.type	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, %function
 1237              	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer:
 1238              		@ args = 0, pretend = 0, frame = 8
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
 1240 0000 10B5     		push	{r4, lr}
 1241 0002 82B0     		sub	sp, sp, #8
 1242 0004 4FF0FF32 		mov	r2, #-1
 1243 0008 0C46     		mov	r4, r1
 1244 000a 00F11401 		add	r1, r0, #20
 1245 000e 6846     		mov	r0, sp
 1246 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1247 0014 2046     		mov	r0, r4
 1248 0016 FFF7FEFF 		bl	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer
 1249 001a 6846     		mov	r0, sp
 1250 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1251 0020 02B0     		add	sp, sp, #8
 1252              		@ sp needed
 1253 0022 10BD     		pop	{r4, pc}
 1254              		.size	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, .-_ZN7Network20HandleHttpGCodeReplyEP12Ou
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 23


 1255              		.section	.text._ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer,"ax",%progbits
 1256              		.align	1
 1257              		.p2align 2,,3
 1258              		.global	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 1259              		.syntax unified
 1260              		.thumb
 1261              		.thumb_func
 1262              		.fpu fpv4-sp-d16
 1263              		.type	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, %function
 1264              	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer:
 1265              		@ args = 0, pretend = 0, frame = 8
 1266              		@ frame_needed = 0, uses_anonymous_args = 0
 1267 0000 10B5     		push	{r4, lr}
 1268 0002 82B0     		sub	sp, sp, #8
 1269 0004 4FF0FF32 		mov	r2, #-1
 1270 0008 0C46     		mov	r4, r1
 1271 000a 00F17401 		add	r1, r0, #116
 1272 000e 6846     		mov	r0, sp
 1273 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1274 0014 2046     		mov	r0, r4
 1275 0016 FFF7FEFF 		bl	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer
 1276 001a 6846     		mov	r0, sp
 1277 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1278 0020 02B0     		add	sp, sp, #8
 1279              		@ sp needed
 1280 0022 10BD     		pop	{r4, pc}
 1281              		.size	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, .-_ZN7Network22HandleTelnetGCodeReplyEP
 1282              		.section	.text._ZN7Network15GetHttpReplySeqEv,"ax",%progbits
 1283              		.align	1
 1284              		.p2align 2,,3
 1285              		.global	_ZN7Network15GetHttpReplySeqEv
 1286              		.syntax unified
 1287              		.thumb
 1288              		.thumb_func
 1289              		.fpu fpv4-sp-d16
 1290              		.type	_ZN7Network15GetHttpReplySeqEv, %function
 1291              	_ZN7Network15GetHttpReplySeqEv:
 1292              		@ args = 0, pretend = 0, frame = 0
 1293              		@ frame_needed = 0, uses_anonymous_args = 0
 1294              		@ link register save eliminated.
 1295 0000 014B     		ldr	r3, .L216
 1296 0002 1868     		ldr	r0, [r3]
 1297 0004 7047     		bx	lr
 1298              	.L217:
 1299 0006 00BF     		.align	2
 1300              	.L216:
 1301 0008 00000000 		.word	_ZN13HttpResponder3seqE
 1302              		.size	_ZN7Network15GetHttpReplySeqEv, .-_ZN7Network15GetHttpReplySeqEv
 1303              		.section	.text.startup._GLOBAL__sub_I__ZN7NetworkC2ER8Platform,"ax",%progbits
 1304              		.align	1
 1305              		.p2align 2,,3
 1306              		.syntax unified
 1307              		.thumb
 1308              		.thumb_func
 1309              		.fpu fpv4-sp-d16
 1310              		.type	_GLOBAL__sub_I__ZN7NetworkC2ER8Platform, %function
 1311              	_GLOBAL__sub_I__ZN7NetworkC2ER8Platform:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 24


 1312              		@ args = 0, pretend = 0, frame = 0
 1313              		@ frame_needed = 0, uses_anonymous_args = 0
 1314 0000 08B5     		push	{r3, lr}
 1315 0002 0449     		ldr	r1, .L220
 1316 0004 0448     		ldr	r0, .L220+4
 1317 0006 FFF7FEFF 		bl	_ZN9IPAddress5SetV4EPKh
 1318 000a 044B     		ldr	r3, .L220+8
 1319 000c 0022     		movs	r2, #0
 1320 000e 1A60     		str	r2, [r3]
 1321 0010 08BD     		pop	{r3, pc}
 1322              	.L221:
 1323 0012 00BF     		.align	2
 1324              	.L220:
 1325 0014 00000000 		.word	.LANCHOR4
 1326 0018 00000000 		.word	.LANCHOR5
 1327 001c 00000000 		.word	.LANCHOR3
 1328              		.size	_GLOBAL__sub_I__ZN7NetworkC2ER8Platform, .-_GLOBAL__sub_I__ZN7NetworkC2ER8Platform
 1329              		.section	.init_array,"aw",%init_array
 1330              		.align	2
 1331 0000 00000000 		.word	_GLOBAL__sub_I__ZN7NetworkC2ER8Platform(target1)
 1332              		.global	_ZTV7Network
 1333              		.global	_ZN7Network16objectModelTableE
 1334              		.section	.bss._ZL11networkTask,"aw",%nobits
 1335              		.align	2
 1336              		.set	.LANCHOR3,. + 0
 1337              		.type	_ZL11networkTask, %object
 1338              		.size	_ZL11networkTask, 2296
 1339              	_ZL11networkTask:
 1340 0000 00000000 		.space	2296
 1340      00000000 
 1340      00000000 
 1340      00000000 
 1340      00000000 
 1341              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 1342              		.align	2
 1343              		.set	.LANCHOR5,. + 0
 1344              		.type	_ZL14DefaultNetMask, %object
 1345              		.size	_ZL14DefaultNetMask, 4
 1346              	_ZL14DefaultNetMask:
 1347 0000 00000000 		.space	4
 1348              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1349              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1350              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1351              	_ZL28cpu_irq_prev_interrupt_state:
 1352 0000 00       		.space	1
 1353              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1354              		.align	2
 1355              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1356              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1357              	_ZL32cpu_irq_critical_section_counter:
 1358 0000 00000000 		.space	4
 1359              		.section	.rodata.._1,"a",%progbits
 1360              		.align	2
 1361              		.set	.LANCHOR4,. + 0
 1362              		.type	._1, %object
 1363              		.size	._1, 4
 1364              	._1:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 25


 1365 0000 FF       		.byte	-1
 1366 0001 FF       		.byte	-1
 1367 0002 FF       		.byte	-1
 1368 0003 00       		.byte	0
 1369              		.section	.rodata._ZL24interfaceArrayDescriptor,"a",%progbits
 1370              		.align	2
 1371              		.set	.LANCHOR0,. + 0
 1372              		.type	_ZL24interfaceArrayDescriptor, %object
 1373              		.size	_ZL24interfaceArrayDescriptor, 8
 1374              	_ZL24interfaceArrayDescriptor:
 1375 0000 00000000 		.word	_ZNUlP11ObjectModelE_4_FUNES0_
 1376 0004 00000000 		.word	_ZNUlP11ObjectModeljE0_4_FUNES0_j
 1377              		.section	.rodata._ZN7Network11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1378              		.align	2
 1379              	.LC7:
 1380 0000 3D3D3D20 		.ascii	"=== Network ===\012\000"
 1380      4E657477 
 1380      6F726B20 
 1380      3D3D3D0A 
 1380      00
 1381 0011 000000   		.space	3
 1382              	.LC8:
 1383 0014 536C6F77 		.ascii	"Slowest loop: %.2fms; fastest: %.2fms\012\000"
 1383      65737420 
 1383      6C6F6F70 
 1383      3A20252E 
 1383      32666D73 
 1384 003b 00       		.space	1
 1385              	.LC9:
 1386 003c 52657370 		.ascii	"Responder states:\000"
 1386      6F6E6465 
 1386      72207374 
 1386      61746573 
 1386      3A00
 1387 004e 0000     		.space	2
 1388              	.LC10:
 1389 0050 0A00     		.ascii	"\012\000"
 1390              		.section	.rodata._ZN7Network14EnableProtocolEjhiiRK9StringRef.str1.4,"aMS",%progbits,1
 1391              		.align	2
 1392              	.LC3:
 1393 0000 496E7661 		.ascii	"Invalid network interface '%d'\012\000"
 1393      6C696420 
 1393      6E657477 
 1393      6F726B20 
 1393      696E7465 
 1394              		.section	.rodata._ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer.str1.4,"a
 1395              		.align	2
 1396              	.LC4:
 1397 0000 4E6F2057 		.ascii	"No WiFi interface available\000"
 1397      69466920 
 1397      696E7465 
 1397      72666163 
 1397      65206176 
 1398              		.section	.rodata._ZN7Network16objectModelTableE,"a",%progbits
 1399              		.align	2
 1400              		.set	.LANCHOR1,. + 0
 1401              		.type	_ZN7Network16objectModelTableE, %object
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBWmXpD.s 			page 26


 1402              		.size	_ZN7Network16objectModelTableE, 12
 1403              	_ZN7Network16objectModelTableE:
 1404 0000 00000000 		.word	.LC11
 1405 0004 00000000 		.word	_ZN7NetworkUlP11ObjectModelE1_4_FUNES1_
 1406 0008 89       		.byte	-119
 1407 0009 00       		.space	1
 1408 000a 0000     		.short	0
 1409              		.section	.rodata._ZN7Network4InitEv.str1.4,"aMS",%progbits,1
 1410              		.align	2
 1411              	.LC0:
 1412 0000 48545450 		.ascii	"HTTP\000"
 1412      00
 1413 0005 000000   		.space	3
 1414              	.LC1:
 1415 0008 54656C6E 		.ascii	"Telnet\000"
 1415      657400
 1416 000f 00       		.space	1
 1417              	.LC2:
 1418 0010 64756574 		.ascii	"duet\000"
 1418      00
 1419              		.section	.rodata._ZN7Network8ActivateEv.str1.4,"aMS",%progbits,1
 1420              		.align	2
 1421              	.LC6:
 1422 0000 4E455457 		.ascii	"NETWORK\000"
 1422      4F524B00 
 1423              		.section	.rodata._ZNK7Network20GetWiFiServerVersionEv.str1.4,"aMS",%progbits,1
 1424              		.align	2
 1425              	.LC5:
 1426 0000 6E6F2057 		.ascii	"no WiFi interface\000"
 1426      69466920 
 1426      696E7465 
 1426      72666163 
 1426      6500
 1427              		.section	.rodata._ZTV7Network,"a",%progbits
 1428              		.align	2
 1429              		.set	.LANCHOR2,. + 0
 1430              		.type	_ZTV7Network, %object
 1431              		.size	_ZTV7Network, 12
 1432              	_ZTV7Network:
 1433 0000 00000000 		.word	0
 1434 0004 00000000 		.word	0
 1435 0008 00000000 		.word	_ZNK7Network19GetObjectModelTableERj
 1436              		.section	.rodata.str1.4,"aMS",%progbits,1
 1437              		.align	2
 1438              	.LC11:
 1439 0000 696E7465 		.ascii	"interfaces\000"
 1439      72666163 
 1439      657300
 1440              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
