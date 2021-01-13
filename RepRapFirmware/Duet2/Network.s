ARM GAS  /tmp/ccGQuPeS.s 			page 1


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
  29 0002 00BF     		.section	.text._ZN7NetworkC2ER8Platform,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZN7NetworkC2ER8Platform
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZN7NetworkC2ER8Platform, %function
  38              	_ZN7NetworkC2ER8Platform:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0022     		movs	r2, #0
  43 0002 0160     		str	r1, [r0]
  44 0004 C0E90222 		strd	r2, r2, [r0, #8]
  45 0008 C0E90422 		strd	r2, r2, [r0, #16]
  46 000c 4260     		str	r2, [r0, #4]
  47 000e 7047     		bx	lr
  48              		.size	_ZN7NetworkC2ER8Platform, .-_ZN7NetworkC2ER8Platform
  49              		.global	_ZN7NetworkC1ER8Platform
  50              		.thumb_set _ZN7NetworkC1ER8Platform,_ZN7NetworkC2ER8Platform
  51              		.section	.text._ZN7Network4InitEv,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN7Network4InitEv
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/ccGQuPeS.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZN7Network4InitEv, %function
  60              	_ZN7Network4InitEv:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 70B5     		push	{r4, r5, r6, lr}
  64 0002 3249     		ldr	r1, .L12
  65 0004 0446     		mov	r4, r0
  66 0006 1030     		adds	r0, r0, #16
  67 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  68 000c 04F11400 		add	r0, r4, #20
  69 0010 2F49     		ldr	r1, .L12+4
  70 0012 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  71 0016 2068     		ldr	r0, [r4]
  72 0018 FFF7FEFF 		bl	_ZNK8Platform10IsDuetWiFiEv
  73 001c 0028     		cmp	r0, #0
  74 001e 4CD0     		beq	.L5
  75 0020 4FF4B870 		mov	r0, #368
  76 0024 FFF7FEFF 		bl	_Znwj
  77 0028 2168     		ldr	r1, [r4]
  78 002a 0546     		mov	r5, r0
  79 002c FFF7FEFF 		bl	_ZN13WiFiInterfaceC1ER8Platform
  80              	.L6:
  81 0030 6560     		str	r5, [r4, #4]
  82 0032 FFF7FEFF 		bl	_ZN13HttpResponder10InitStaticEv
  83 0036 FFF7FEFF 		bl	_ZN15TelnetResponder10InitStaticEv
  84 003a 4FF4BC70 		mov	r0, #376
  85 003e FFF7FEFF 		bl	_Znwj
  86 0042 A168     		ldr	r1, [r4, #8]
  87 0044 0546     		mov	r5, r0
  88 0046 FFF7FEFF 		bl	_ZN15TelnetResponderC1EP16NetworkResponder
  89 004a A560     		str	r5, [r4, #8]
  90 004c 4FF4BC70 		mov	r0, #376
  91 0050 FFF7FEFF 		bl	_Znwj
  92 0054 A168     		ldr	r1, [r4, #8]
  93 0056 0546     		mov	r5, r0
  94 0058 FFF7FEFF 		bl	_ZN15TelnetResponderC1EP16NetworkResponder
  95 005c A560     		str	r5, [r4, #8]
  96 005e 4FF41670 		mov	r0, #600
  97 0062 FFF7FEFF 		bl	_Znwj
  98 0066 A168     		ldr	r1, [r4, #8]
  99 0068 0646     		mov	r6, r0
 100 006a 0425     		movs	r5, #4
 101 006c FFF7FEFF 		bl	_ZN12FtpResponderC1EP16NetworkResponder
 102 0070 A660     		str	r6, [r4, #8]
 103              	.L7:
 104 0072 40F64800 		movw	r0, #2120
 105 0076 FFF7FEFF 		bl	_Znwj
 106 007a A168     		ldr	r1, [r4, #8]
 107 007c 0646     		mov	r6, r0
 108 007e FFF7FEFF 		bl	_ZN13HttpResponderC1EP16NetworkResponder
 109 0082 013D     		subs	r5, r5, #1
 110 0084 A660     		str	r6, [r4, #8]
 111 0086 F4D1     		bne	.L7
 112 0088 124B     		ldr	r3, .L12+8
 113 008a 1868     		ldr	r0, [r3]
 114 008c 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
ARM GAS  /tmp/ccGQuPeS.s 			page 3


 115 008e 2062     		str	r0, [r4, #32]	@ unaligned
 116 0090 84F82430 		strb	r3, [r4, #36]
 117 0094 0620     		movs	r0, #6
 118 0096 FFF7FEFF 		bl	_ZN13NetworkBuffer15AllocateBuffersEj
 119 009a 251D     		adds	r5, r4, #4
 120 009c 04F10806 		add	r6, r4, #8
 121              	.L8:
 122 00a0 55F8040B 		ldr	r0, [r5], #4
 123 00a4 0368     		ldr	r3, [r0]
 124 00a6 1B68     		ldr	r3, [r3]
 125 00a8 9847     		blx	r3
 126 00aa AE42     		cmp	r6, r5
 127 00ac F8D1     		bne	.L8
 128 00ae 4FF0FF32 		mov	r2, #-1
 129 00b2 0023     		movs	r3, #0
 130 00b4 C4E90623 		strd	r2, r3, [r4, #24]
 131 00b8 70BD     		pop	{r4, r5, r6, pc}
 132              	.L5:
 133 00ba 6020     		movs	r0, #96
 134 00bc FFF7FEFF 		bl	_Znwj
 135 00c0 2168     		ldr	r1, [r4]
 136 00c2 0546     		mov	r5, r0
 137 00c4 FFF7FEFF 		bl	_ZN14W5500InterfaceC1ER8Platform
 138 00c8 B2E7     		b	.L6
 139              	.L13:
 140 00ca 00BF     		.align	2
 141              	.L12:
 142 00cc 00000000 		.word	.LC0
 143 00d0 08000000 		.word	.LC1
 144 00d4 10000000 		.word	.LC2
 145              		.size	_ZN7Network4InitEv, .-_ZN7Network4InitEv
 146              		.section	.text._ZN7Network14EnableProtocolEjhiiRK9StringRef,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	_ZN7Network14EnableProtocolEjhiiRK9StringRef
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZN7Network14EnableProtocolEjhiiRK9StringRef, %function
 155              	_ZN7Network14EnableProtocolEjhiiRK9StringRef:
 156              		@ args = 8, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 70B5     		push	{r4, r5, r6, lr}
 159 0002 1546     		mov	r5, r2
 160 0004 1A46     		mov	r2, r3
 161 0006 DDE90434 		ldrd	r3, r4, [sp, #16]
 162 000a 41B9     		cbnz	r1, .L15
 163 000c 4068     		ldr	r0, [r0, #4]
 164 000e 0668     		ldr	r6, [r0]
 165 0010 0494     		str	r4, [sp, #16]
 166 0012 F46A     		ldr	r4, [r6, #44]
 167 0014 2946     		mov	r1, r5
 168 0016 A446     		mov	ip, r4
 169 0018 BDE87040 		pop	{r4, r5, r6, lr}
 170 001c 6047     		bx	ip
 171              	.L15:
ARM GAS  /tmp/ccGQuPeS.s 			page 4


 172 001e 0A46     		mov	r2, r1
 173 0020 2046     		mov	r0, r4
 174 0022 0249     		ldr	r1, .L17
 175 0024 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 176 0028 0220     		movs	r0, #2
 177 002a 70BD     		pop	{r4, r5, r6, pc}
 178              	.L18:
 179              		.align	2
 180              	.L17:
 181 002c 00000000 		.word	.LC3
 182              		.size	_ZN7Network14EnableProtocolEjhiiRK9StringRef, .-_ZN7Network14EnableProtocolEjhiiRK9StringRef
 183              		.section	.text._ZN7Network15DisableProtocolEjhRK9StringRef,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	_ZN7Network15DisableProtocolEjhRK9StringRef
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	_ZN7Network15DisableProtocolEjhRK9StringRef, %function
 192              	_ZN7Network15DisableProtocolEjhRK9StringRef:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195 0000 70B5     		push	{r4, r5, r6, lr}
 196 0002 41B9     		cbnz	r1, .L20
 197 0004 4068     		ldr	r0, [r0, #4]
 198 0006 0568     		ldr	r5, [r0]
 199 0008 1446     		mov	r4, r2
 200 000a 2146     		mov	r1, r4
 201 000c 1A46     		mov	r2, r3
 202 000e 2B6B     		ldr	r3, [r5, #48]
 203 0010 BDE87040 		pop	{r4, r5, r6, lr}
 204 0014 1847     		bx	r3
 205              	.L20:
 206 0016 0A46     		mov	r2, r1
 207 0018 1846     		mov	r0, r3
 208 001a 0249     		ldr	r1, .L22
 209 001c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 210 0020 0220     		movs	r0, #2
 211 0022 70BD     		pop	{r4, r5, r6, pc}
 212              	.L23:
 213              		.align	2
 214              	.L22:
 215 0024 00000000 		.word	.LC3
 216              		.size	_ZN7Network15DisableProtocolEjhRK9StringRef, .-_ZN7Network15DisableProtocolEjhRK9StringRef
 217              		.section	.text._ZNK7Network15ReportProtocolsEjRK9StringRef,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	_ZNK7Network15ReportProtocolsEjRK9StringRef
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	_ZNK7Network15ReportProtocolsEjRK9StringRef, %function
 226              	_ZNK7Network15ReportProtocolsEjRK9StringRef:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccGQuPeS.s 			page 5


 229 0000 21B9     		cbnz	r1, .L25
 230 0002 4068     		ldr	r0, [r0, #4]
 231 0004 0368     		ldr	r3, [r0]
 232 0006 1146     		mov	r1, r2
 233 0008 5B6B     		ldr	r3, [r3, #52]
 234 000a 1847     		bx	r3
 235              	.L25:
 236 000c 10B5     		push	{r4, lr}
 237 000e 1046     		mov	r0, r2
 238 0010 0A46     		mov	r2, r1
 239 0012 0249     		ldr	r1, .L28
 240 0014 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 241 0018 0220     		movs	r0, #2
 242 001a 10BD     		pop	{r4, pc}
 243              	.L29:
 244              		.align	2
 245              	.L28:
 246 001c 00000000 		.word	.LC3
 247              		.size	_ZNK7Network15ReportProtocolsEjRK9StringRef, .-_ZNK7Network15ReportProtocolsEjRK9StringRef
 248              		.section	.text._ZN7Network15EnableInterfaceEjiRK9StringRefS2_,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu fpv4-sp-d16
 256              		.type	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, %function
 257              	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_:
 258              		@ args = 4, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 70B5     		push	{r4, r5, r6, lr}
 261 0002 1446     		mov	r4, r2
 262 0004 1A46     		mov	r2, r3
 263 0006 049B     		ldr	r3, [sp, #16]
 264 0008 39B9     		cbnz	r1, .L31
 265 000a 4068     		ldr	r0, [r0, #4]
 266 000c 0568     		ldr	r5, [r0]
 267 000e 2146     		mov	r1, r4
 268 0010 AC69     		ldr	r4, [r5, #24]
 269 0012 A446     		mov	ip, r4
 270 0014 BDE87040 		pop	{r4, r5, r6, lr}
 271 0018 6047     		bx	ip
 272              	.L31:
 273 001a 0A46     		mov	r2, r1
 274 001c 1846     		mov	r0, r3
 275 001e 0249     		ldr	r1, .L33
 276 0020 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 277 0024 0220     		movs	r0, #2
 278 0026 70BD     		pop	{r4, r5, r6, pc}
 279              	.L34:
 280              		.align	2
 281              	.L33:
 282 0028 00000000 		.word	.LC3
 283              		.size	_ZN7Network15EnableInterfaceEjiRK9StringRefS2_, .-_ZN7Network15EnableInterfaceEjiRK9StringRe
 284              		.section	.text._ZNK7Network17FindWiFiInterfaceEv,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccGQuPeS.s 			page 6


 286              		.p2align 2,,3
 287              		.global	_ZNK7Network17FindWiFiInterfaceEv
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 292              		.type	_ZNK7Network17FindWiFiInterfaceEv, %function
 293              	_ZNK7Network17FindWiFiInterfaceEv:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296 0000 70B5     		push	{r4, r5, r6, lr}
 297 0002 00F10806 		add	r6, r0, #8
 298 0006 041D     		adds	r4, r0, #4
 299 0008 01E0     		b	.L37
 300              	.L41:
 301 000a A642     		cmp	r6, r4
 302 000c 09D0     		beq	.L40
 303              	.L37:
 304 000e 54F8045B 		ldr	r5, [r4], #4
 305 0012 2B68     		ldr	r3, [r5]
 306 0014 2846     		mov	r0, r5
 307 0016 9B6A     		ldr	r3, [r3, #40]
 308 0018 9847     		blx	r3
 309 001a 0028     		cmp	r0, #0
 310 001c F5D0     		beq	.L41
 311 001e 2846     		mov	r0, r5
 312 0020 70BD     		pop	{r4, r5, r6, pc}
 313              	.L40:
 314 0022 0546     		mov	r5, r0
 315 0024 2846     		mov	r0, r5
 316 0026 70BD     		pop	{r4, r5, r6, pc}
 317              		.size	_ZNK7Network17FindWiFiInterfaceEv, .-_ZNK7Network17FindWiFiInterfaceEv
 318              		.section	.text._ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer,"ax",%progb
 319              		.align	1
 320              		.p2align 2,,3
 321              		.global	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 322              		.syntax unified
 323              		.thumb
 324              		.thumb_func
 325              		.fpu fpv4-sp-d16
 326              		.type	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, %function
 327              	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer:
 328              		@ args = 4, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 331 0004 DDF820A0 		ldr	r10, [sp, #32]
 332 0008 8846     		mov	r8, r1
 333 000a 9146     		mov	r9, r2
 334 000c 1F46     		mov	r7, r3
 335 000e 00F10806 		add	r6, r0, #8
 336 0012 041D     		adds	r4, r0, #4
 337 0014 01E0     		b	.L45
 338              	.L49:
 339 0016 A642     		cmp	r6, r4
 340 0018 11D0     		beq	.L48
 341              	.L45:
 342 001a 54F8045B 		ldr	r5, [r4], #4
ARM GAS  /tmp/ccGQuPeS.s 			page 7


 343 001e 2B68     		ldr	r3, [r5]
 344 0020 2846     		mov	r0, r5
 345 0022 9B6A     		ldr	r3, [r3, #40]
 346 0024 9847     		blx	r3
 347 0026 0028     		cmp	r0, #0
 348 0028 F5D0     		beq	.L49
 349 002a CDF820A0 		str	r10, [sp, #32]
 350 002e 3B46     		mov	r3, r7
 351 0030 4A46     		mov	r2, r9
 352 0032 4146     		mov	r1, r8
 353 0034 2846     		mov	r0, r5
 354 0036 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 355 003a FFF7FEBF 		b	_ZN13WiFiInterface14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer
 356              	.L48:
 357 003e 3846     		mov	r0, r7
 358 0040 0249     		ldr	r1, .L50
 359 0042 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 360 0046 0220     		movs	r0, #2
 361 0048 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 362              	.L51:
 363              		.align	2
 364              	.L50:
 365 004c 00000000 		.word	.LC4
 366              		.size	_ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer, .-_ZN7Network14Hand
 367              		.section	.text._ZNK7Network20GetWiFiServerVersionEv,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	_ZNK7Network20GetWiFiServerVersionEv
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	_ZNK7Network20GetWiFiServerVersionEv, %function
 376              	_ZNK7Network20GetWiFiServerVersionEv:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379 0000 70B5     		push	{r4, r5, r6, lr}
 380 0002 00F10806 		add	r6, r0, #8
 381 0006 041D     		adds	r4, r0, #4
 382 0008 01E0     		b	.L54
 383              	.L59:
 384 000a A642     		cmp	r6, r4
 385 000c 0AD0     		beq	.L58
 386              	.L54:
 387 000e 54F8045B 		ldr	r5, [r4], #4
 388 0012 2B68     		ldr	r3, [r5]
 389 0014 2846     		mov	r0, r5
 390 0016 9B6A     		ldr	r3, [r3, #40]
 391 0018 9847     		blx	r3
 392 001a 0028     		cmp	r0, #0
 393 001c F5D0     		beq	.L59
 394 001e 05F1C400 		add	r0, r5, #196
 395 0022 70BD     		pop	{r4, r5, r6, pc}
 396              	.L58:
 397 0024 0048     		ldr	r0, .L60
 398 0026 70BD     		pop	{r4, r5, r6, pc}
 399              	.L61:
ARM GAS  /tmp/ccGQuPeS.s 			page 8


 400              		.align	2
 401              	.L60:
 402 0028 00000000 		.word	.LC5
 403              		.size	_ZNK7Network20GetWiFiServerVersionEv, .-_ZNK7Network20GetWiFiServerVersionEv
 404              		.section	.text._ZNK7Network15GetWifiUploaderEv,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	_ZNK7Network15GetWifiUploaderEv
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv4-sp-d16
 412              		.type	_ZNK7Network15GetWifiUploaderEv, %function
 413              	_ZNK7Network15GetWifiUploaderEv:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416 0000 70B5     		push	{r4, r5, r6, lr}
 417 0002 00F10806 		add	r6, r0, #8
 418 0006 041D     		adds	r4, r0, #4
 419 0008 01E0     		b	.L64
 420              	.L68:
 421 000a A642     		cmp	r6, r4
 422 000c 08D0     		beq	.L62
 423              	.L64:
 424 000e 54F8045B 		ldr	r5, [r4], #4
 425 0012 2B68     		ldr	r3, [r5]
 426 0014 2846     		mov	r0, r5
 427 0016 9B6A     		ldr	r3, [r3, #40]
 428 0018 9847     		blx	r3
 429 001a 0028     		cmp	r0, #0
 430 001c F5D0     		beq	.L68
 431 001e E869     		ldr	r0, [r5, #28]
 432              	.L62:
 433 0020 70BD     		pop	{r4, r5, r6, pc}
 434              		.size	_ZNK7Network15GetWifiUploaderEv, .-_ZNK7Network15GetWifiUploaderEv
 435 0022 00BF     		.section	.text._ZN7Network18ResetWiFiForUploadEb,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.global	_ZN7Network18ResetWiFiForUploadEb
 439              		.syntax unified
 440              		.thumb
 441              		.thumb_func
 442              		.fpu fpv4-sp-d16
 443              		.type	_ZN7Network18ResetWiFiForUploadEb, %function
 444              	_ZN7Network18ResetWiFiForUploadEb:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 448 0002 0F46     		mov	r7, r1
 449 0004 00F10806 		add	r6, r0, #8
 450 0008 041D     		adds	r4, r0, #4
 451 000a 01E0     		b	.L71
 452              	.L76:
 453 000c A642     		cmp	r6, r4
 454 000e 0DD0     		beq	.L75
 455              	.L71:
 456 0010 54F8045B 		ldr	r5, [r4], #4
ARM GAS  /tmp/ccGQuPeS.s 			page 9


 457 0014 2B68     		ldr	r3, [r5]
 458 0016 2846     		mov	r0, r5
 459 0018 9B6A     		ldr	r3, [r3, #40]
 460 001a 9847     		blx	r3
 461 001c 0028     		cmp	r0, #0
 462 001e F5D0     		beq	.L76
 463 0020 3946     		mov	r1, r7
 464 0022 2846     		mov	r0, r5
 465 0024 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 466 0028 FFF7FEBF 		b	_ZN13WiFiInterface18ResetWiFiForUploadEb
 467              	.L75:
 468 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 469              		.size	_ZN7Network18ResetWiFiForUploadEb, .-_ZN7Network18ResetWiFiForUploadEb
 470 002e 00BF     		.section	.text._ZN7Network8ActivateEv,"ax",%progbits
 471              		.align	1
 472              		.p2align 2,,3
 473              		.global	_ZN7Network8ActivateEv
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu fpv4-sp-d16
 478              		.type	_ZN7Network8ActivateEv, %function
 479              	_ZN7Network8ActivateEv:
 480              		@ args = 0, pretend = 0, frame = 0
 481              		@ frame_needed = 0, uses_anonymous_args = 0
 482 0000 38B5     		push	{r3, r4, r5, lr}
 483 0002 041D     		adds	r4, r0, #4
 484 0004 2546     		mov	r5, r4
 485 0006 00E0     		b	.L79
 486              	.L86:
 487 0008 0434     		adds	r4, r4, #4
 488              	.L79:
 489 000a 2368     		ldr	r3, [r4]
 490 000c 1846     		mov	r0, r3
 491 000e 13B1     		cbz	r3, .L78
 492 0010 1B68     		ldr	r3, [r3]
 493 0012 5B68     		ldr	r3, [r3, #4]
 494 0014 9847     		blx	r3
 495              	.L78:
 496 0016 AC42     		cmp	r4, r5
 497 0018 F6D1     		bne	.L86
 498 001a 38BD     		pop	{r3, r4, r5, pc}
 499              		.size	_ZN7Network8ActivateEv, .-_ZN7Network8ActivateEv
 500              		.section	.text._ZN7Network4ExitEv,"ax",%progbits
 501              		.align	1
 502              		.p2align 2,,3
 503              		.global	_ZN7Network4ExitEv
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv4-sp-d16
 508              		.type	_ZN7Network4ExitEv, %function
 509              	_ZN7Network4ExitEv:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512 0000 38B5     		push	{r3, r4, r5, lr}
 513 0002 041D     		adds	r4, r0, #4
ARM GAS  /tmp/ccGQuPeS.s 			page 10


 514 0004 2546     		mov	r5, r4
 515 0006 00E0     		b	.L89
 516              	.L96:
 517 0008 0434     		adds	r4, r4, #4
 518              	.L89:
 519 000a 2368     		ldr	r3, [r4]
 520 000c 1846     		mov	r0, r3
 521 000e 13B1     		cbz	r3, .L88
 522 0010 1B68     		ldr	r3, [r3]
 523 0012 9B68     		ldr	r3, [r3, #8]
 524 0014 9847     		blx	r3
 525              	.L88:
 526 0016 AC42     		cmp	r4, r5
 527 0018 F6D1     		bne	.L96
 528 001a 38BD     		pop	{r3, r4, r5, pc}
 529              		.size	_ZN7Network4ExitEv, .-_ZN7Network4ExitEv
 530              		.section	.text._ZN7Network15GetNetworkStateEjRK9StringRef,"ax",%progbits
 531              		.align	1
 532              		.p2align 2,,3
 533              		.global	_ZN7Network15GetNetworkStateEjRK9StringRef
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu fpv4-sp-d16
 538              		.type	_ZN7Network15GetNetworkStateEjRK9StringRef, %function
 539              	_ZN7Network15GetNetworkStateEjRK9StringRef:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542 0000 21B9     		cbnz	r1, .L98
 543 0002 4068     		ldr	r0, [r0, #4]
 544 0004 0368     		ldr	r3, [r0]
 545 0006 1146     		mov	r1, r2
 546 0008 DB69     		ldr	r3, [r3, #28]
 547 000a 1847     		bx	r3
 548              	.L98:
 549 000c 10B5     		push	{r4, lr}
 550 000e 1046     		mov	r0, r2
 551 0010 0A46     		mov	r2, r1
 552 0012 0249     		ldr	r1, .L101
 553 0014 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 554 0018 0220     		movs	r0, #2
 555 001a 10BD     		pop	{r4, pc}
 556              	.L102:
 557              		.align	2
 558              	.L101:
 559 001c 00000000 		.word	.LC3
 560              		.size	_ZN7Network15GetNetworkStateEjRK9StringRef, .-_ZN7Network15GetNetworkStateEjRK9StringRef
 561              		.section	.text._ZNK7Network15IsWiFiInterfaceEj,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	_ZNK7Network15IsWiFiInterfaceEj
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv4-sp-d16
 569              		.type	_ZNK7Network15IsWiFiInterfaceEj, %function
 570              	_ZNK7Network15IsWiFiInterfaceEj:
ARM GAS  /tmp/ccGQuPeS.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 0
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573              		@ link register save eliminated.
 574 0000 09B1     		cbz	r1, .L105
 575 0002 0020     		movs	r0, #0
 576 0004 7047     		bx	lr
 577              	.L105:
 578 0006 4068     		ldr	r0, [r0, #4]
 579 0008 0368     		ldr	r3, [r0]
 580 000a 9B6A     		ldr	r3, [r3, #40]
 581 000c 1847     		bx	r3
 582              		.size	_ZNK7Network15IsWiFiInterfaceEj, .-_ZNK7Network15IsWiFiInterfaceEj
 583 000e 00BF     		.section	.text._ZN7Network4SpinEb,"ax",%progbits
 584              		.align	1
 585              		.p2align 2,,3
 586              		.global	_ZN7Network4SpinEb
 587              		.syntax unified
 588              		.thumb
 589              		.thumb_func
 590              		.fpu fpv4-sp-d16
 591              		.type	_ZN7Network4SpinEb, %function
 592              	_ZN7Network4SpinEb:
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595 0000 184B     		ldr	r3, .L121
 596 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 597 0006 D3F89070 		ldr	r7, [r3, #144]
 598 000a 0546     		mov	r5, r0
 599 000c 0E46     		mov	r6, r1
 600 000e 041D     		adds	r4, r0, #4
 601 0010 00F10808 		add	r8, r0, #8
 602              	.L107:
 603 0014 54F8040B 		ldr	r0, [r4], #4
 604 0018 0368     		ldr	r3, [r0]
 605 001a 3146     		mov	r1, r6
 606 001c DB68     		ldr	r3, [r3, #12]
 607 001e 9847     		blx	r3
 608 0020 A045     		cmp	r8, r4
 609 0022 F7D1     		bne	.L107
 610 0024 5EB1     		cbz	r6, .L108
 611 0026 EC68     		ldr	r4, [r5, #12]
 612              	.L111:
 613 0028 CCB1     		cbz	r4, .L120
 614              	.L109:
 615 002a 2368     		ldr	r3, [r4]
 616 002c 2046     		mov	r0, r4
 617 002e 1B68     		ldr	r3, [r3]
 618 0030 9847     		blx	r3
 619 0032 6468     		ldr	r4, [r4, #4]
 620 0034 10B9     		cbnz	r0, .L110
 621 0036 EB68     		ldr	r3, [r5, #12]
 622 0038 A342     		cmp	r3, r4
 623 003a F5D1     		bne	.L111
 624              	.L110:
 625 003c EC60     		str	r4, [r5, #12]
 626              	.L108:
 627 003e FFF7FEFF 		bl	_ZN13HttpResponder13CheckSessionsEv
ARM GAS  /tmp/ccGQuPeS.s 			page 12


 628 0042 084B     		ldr	r3, .L121
 629 0044 AA69     		ldr	r2, [r5, #24]
 630 0046 D3F89030 		ldr	r3, [r3, #144]
 631 004a DF1B     		subs	r7, r3, r7
 632 004c EB69     		ldr	r3, [r5, #28]
 633 004e BA42     		cmp	r2, r7
 634 0050 88BF     		it	hi
 635 0052 AF61     		strhi	r7, [r5, #24]
 636 0054 BB42     		cmp	r3, r7
 637 0056 38BF     		it	cc
 638 0058 EF61     		strcc	r7, [r5, #28]
 639 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 640              	.L120:
 641 005e AC68     		ldr	r4, [r5, #8]
 642 0060 E3E7     		b	.L109
 643              	.L122:
 644 0062 00BF     		.align	2
 645              	.L121:
 646 0064 00000940 		.word	1074331648
 647              		.size	_ZN7Network4SpinEb, .-_ZN7Network4SpinEb
 648              		.section	.text.NetworkLoop,"ax",%progbits
 649              		.align	1
 650              		.p2align 2,,3
 651              		.global	NetworkLoop
 652              		.syntax unified
 653              		.thumb
 654              		.thumb_func
 655              		.fpu fpv4-sp-d16
 656              		.type	NetworkLoop, %function
 657              	NetworkLoop:
 658              		@ Volatile: function does not return.
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661 0000 08B5     		push	{r3, lr}
 662 0002 034C     		ldr	r4, .L126
 663              	.L124:
 664 0004 6068     		ldr	r0, [r4, #4]	@ unaligned
 665 0006 0121     		movs	r1, #1
 666 0008 FFF7FEFF 		bl	_ZN7Network4SpinEb
 667 000c FAE7     		b	.L124
 668              	.L127:
 669 000e 00BF     		.align	2
 670              	.L126:
 671 0010 00000000 		.word	reprap
 672              		.size	NetworkLoop, .-NetworkLoop
 673              		.section	.text._ZN7Network9InterruptEv,"ax",%progbits
 674              		.align	1
 675              		.p2align 2,,3
 676              		.global	_ZN7Network9InterruptEv
 677              		.syntax unified
 678              		.thumb
 679              		.thumb_func
 680              		.fpu fpv4-sp-d16
 681              		.type	_ZN7Network9InterruptEv, %function
 682              	_ZN7Network9InterruptEv:
 683              		@ args = 0, pretend = 0, frame = 0
 684              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccGQuPeS.s 			page 13


 685 0000 70B5     		push	{r4, r5, r6, lr}
 686 0002 041D     		adds	r4, r0, #4
 687 0004 074E     		ldr	r6, .L135
 688 0006 2546     		mov	r5, r4
 689 0008 02E0     		b	.L130
 690              	.L129:
 691 000a AC42     		cmp	r4, r5
 692 000c 08D0     		beq	.L132
 693              	.L134:
 694 000e 0434     		adds	r4, r4, #4
 695              	.L130:
 696 0010 2068     		ldr	r0, [r4]
 697 0012 0368     		ldr	r3, [r0]
 698 0014 1B69     		ldr	r3, [r3, #16]
 699 0016 B342     		cmp	r3, r6
 700 0018 F7D0     		beq	.L129
 701 001a 9847     		blx	r3
 702 001c AC42     		cmp	r4, r5
 703 001e F6D1     		bne	.L134
 704              	.L132:
 705 0020 70BD     		pop	{r4, r5, r6, pc}
 706              	.L136:
 707 0022 00BF     		.align	2
 708              	.L135:
 709 0024 00000000 		.word	_ZN16NetworkInterface9InterruptEv
 710              		.size	_ZN7Network9InterruptEv, .-_ZN7Network9InterruptEv
 711              		.global	__aeabi_f2d
 712              		.section	.text._ZN7Network11DiagnosticsE11MessageType,"ax",%progbits
 713              		.align	1
 714              		.p2align 2,,3
 715              		.global	_ZN7Network11DiagnosticsE11MessageType
 716              		.syntax unified
 717              		.thumb
 718              		.thumb_func
 719              		.fpu fpv4-sp-d16
 720              		.type	_ZN7Network11DiagnosticsE11MessageType, %function
 721              	_ZN7Network11DiagnosticsE11MessageType:
 722              		@ args = 0, pretend = 0, frame = 0
 723              		@ frame_needed = 0, uses_anonymous_args = 0
 724 0000 70B5     		push	{r4, r5, r6, lr}
 725 0002 2DED028B 		vpush.64	{d8}
 726 0006 0546     		mov	r5, r0
 727 0008 84B0     		sub	sp, sp, #16
 728 000a 284A     		ldr	r2, .L147
 729 000c 0068     		ldr	r0, [r0]
 730 000e 9FED288A 		vldr.32	s16, .L147+4
 731 0012 0E46     		mov	r6, r1
 732 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 733 0018 D5ED067A 		vldr.32	s15, [r5, #24]	@ int
 734 001c 2C68     		ldr	r4, [r5]
 735 001e F8EE677A 		vcvt.f32.u32	s15, s15
 736 0022 67EE887A 		vmul.f32	s15, s15, s16
 737 0026 17EE900A 		vmov	r0, s15
 738 002a FFF7FEFF 		bl	__aeabi_f2d
 739 002e D5ED077A 		vldr.32	s15, [r5, #28]	@ int
 740 0032 F8EE677A 		vcvt.f32.u32	s15, s15
 741 0036 CDE90201 		strd	r0, [sp, #8]
ARM GAS  /tmp/ccGQuPeS.s 			page 14


 742 003a 67EE887A 		vmul.f32	s15, s15, s16
 743 003e 17EE900A 		vmov	r0, s15
 744 0042 FFF7FEFF 		bl	__aeabi_f2d
 745 0046 1B4A     		ldr	r2, .L147+8
 746 0048 CDE90001 		strd	r0, [sp]
 747 004c 2046     		mov	r0, r4
 748 004e 3146     		mov	r1, r6
 749 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 750 0054 4FF0FF32 		mov	r2, #-1
 751 0058 0023     		movs	r3, #0
 752 005a C5E90623 		strd	r2, r3, [r5, #24]
 753 005e 3146     		mov	r1, r6
 754 0060 2868     		ldr	r0, [r5]
 755 0062 154A     		ldr	r2, .L147+12
 756 0064 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 757 0068 AC68     		ldr	r4, [r5, #8]
 758 006a 3CB1     		cbz	r4, .L138
 759              	.L139:
 760 006c 2368     		ldr	r3, [r4]
 761 006e 2046     		mov	r0, r4
 762 0070 3146     		mov	r1, r6
 763 0072 DB68     		ldr	r3, [r3, #12]
 764 0074 9847     		blx	r3
 765 0076 6468     		ldr	r4, [r4, #4]
 766 0078 002C     		cmp	r4, #0
 767 007a F7D1     		bne	.L139
 768              	.L138:
 769 007c 2C46     		mov	r4, r5
 770 007e 0F4A     		ldr	r2, .L147+16
 771 0080 54F8040B 		ldr	r0, [r4], #4
 772 0084 3146     		mov	r1, r6
 773 0086 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 774 008a 3046     		mov	r0, r6
 775 008c FFF7FEFF 		bl	_ZN13HttpResponder17CommonDiagnosticsE11MessageType
 776 0090 0835     		adds	r5, r5, #8
 777              	.L140:
 778 0092 54F8040B 		ldr	r0, [r4], #4
 779 0096 0368     		ldr	r3, [r0]
 780 0098 3146     		mov	r1, r6
 781 009a 5B69     		ldr	r3, [r3, #20]
 782 009c 9847     		blx	r3
 783 009e A542     		cmp	r5, r4
 784 00a0 F7D1     		bne	.L140
 785 00a2 04B0     		add	sp, sp, #16
 786              		@ sp needed
 787 00a4 BDEC028B 		vldm	sp!, {d8}
 788 00a8 70BD     		pop	{r4, r5, r6, pc}
 789              	.L148:
 790 00aa 00BF     		.align	2
 791              	.L147:
 792 00ac 00000000 		.word	.LC6
 793 00b0 65CF8B3A 		.word	982241125
 794 00b4 14000000 		.word	.LC7
 795 00b8 3C000000 		.word	.LC8
 796 00bc 50000000 		.word	.LC9
 797              		.size	_ZN7Network11DiagnosticsE11MessageType, .-_ZN7Network11DiagnosticsE11MessageType
 798              		.section	.text._ZNK7Network14InNetworkStackEv,"ax",%progbits
ARM GAS  /tmp/ccGQuPeS.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	_ZNK7Network14InNetworkStackEv
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	_ZNK7Network14InNetworkStackEv, %function
 807              	_ZNK7Network14InNetworkStackEv:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 38B5     		push	{r3, r4, r5, lr}
 811 0002 00F10805 		add	r5, r0, #8
 812 0006 041D     		adds	r4, r0, #4
 813 0008 01E0     		b	.L151
 814              	.L154:
 815 000a A542     		cmp	r5, r4
 816 000c 06D0     		beq	.L150
 817              	.L151:
 818 000e 54F8040B 		ldr	r0, [r4], #4
 819 0012 0368     		ldr	r3, [r0]
 820 0014 5B6A     		ldr	r3, [r3, #36]
 821 0016 9847     		blx	r3
 822 0018 0028     		cmp	r0, #0
 823 001a F6D0     		beq	.L154
 824              	.L150:
 825 001c 38BD     		pop	{r3, r4, r5, pc}
 826              		.size	_ZNK7Network14InNetworkStackEv, .-_ZNK7Network14InNetworkStackEv
 827 001e 00BF     		.section	.text._ZNK7Network11EnableStateEj,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	_ZNK7Network11EnableStateEj
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu fpv4-sp-d16
 835              		.type	_ZNK7Network11EnableStateEj, %function
 836              	_ZNK7Network11EnableStateEj:
 837              		@ args = 0, pretend = 0, frame = 0
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839              		@ link register save eliminated.
 840 0000 19B9     		cbnz	r1, .L156
 841 0002 4068     		ldr	r0, [r0, #4]
 842 0004 0368     		ldr	r3, [r0]
 843 0006 1B6A     		ldr	r3, [r3, #32]
 844 0008 1847     		bx	r3
 845              	.L156:
 846 000a 4FF0FF30 		mov	r0, #-1
 847 000e 7047     		bx	lr
 848              		.size	_ZNK7Network11EnableStateEj, .-_ZNK7Network11EnableStateEj
 849              		.section	.text._ZN7Network20SetEthernetIPAddressEPKhS1_S1_,"ax",%progbits
 850              		.align	1
 851              		.p2align 2,,3
 852              		.global	_ZN7Network20SetEthernetIPAddressEPKhS1_S1_
 853              		.syntax unified
 854              		.thumb
 855              		.thumb_func
ARM GAS  /tmp/ccGQuPeS.s 			page 16


 856              		.fpu fpv4-sp-d16
 857              		.type	_ZN7Network20SetEthernetIPAddressEPKhS1_S1_, %function
 858              	_ZN7Network20SetEthernetIPAddressEPKhS1_S1_:
 859              		@ args = 0, pretend = 0, frame = 0
 860              		@ frame_needed = 0, uses_anonymous_args = 0
 861 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 862 0004 0546     		mov	r5, r0
 863 0006 8946     		mov	r9, r1
 864 0008 9046     		mov	r8, r2
 865 000a 1F46     		mov	r7, r3
 866 000c 061D     		adds	r6, r0, #4
 867              	.L159:
 868 000e 55F8044F 		ldr	r4, [r5, #4]!
 869 0012 2368     		ldr	r3, [r4]
 870 0014 2046     		mov	r0, r4
 871 0016 9B6A     		ldr	r3, [r3, #40]
 872 0018 9847     		blx	r3
 873 001a 3B46     		mov	r3, r7
 874 001c 4246     		mov	r2, r8
 875 001e 4946     		mov	r1, r9
 876 0020 28B9     		cbnz	r0, .L158
 877 0022 D4F800C0 		ldr	ip, [r4]
 878 0026 2046     		mov	r0, r4
 879 0028 DCF83C40 		ldr	r4, [ip, #60]
 880 002c A047     		blx	r4
 881              	.L158:
 882 002e B542     		cmp	r5, r6
 883 0030 EDD1     		bne	.L159
 884 0032 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 885              		.size	_ZN7Network20SetEthernetIPAddressEPKhS1_S1_, .-_ZN7Network20SetEthernetIPAddressEPKhS1_S1_
 886 0036 00BF     		.section	.text._ZN7Network11SetHostnameEPKc,"ax",%progbits
 887              		.align	1
 888              		.p2align 2,,3
 889              		.global	_ZN7Network11SetHostnameEPKc
 890              		.syntax unified
 891              		.thumb
 892              		.thumb_func
 893              		.fpu fpv4-sp-d16
 894              		.type	_ZN7Network11SetHostnameEPKc, %function
 895              	_ZN7Network11SetHostnameEPKc:
 896              		@ args = 0, pretend = 0, frame = 0
 897              		@ frame_needed = 0, uses_anonymous_args = 0
 898 0000 70B5     		push	{r4, r5, r6, lr}
 899 0002 0139     		subs	r1, r1, #1
 900 0004 0446     		mov	r4, r0
 901 0006 0022     		movs	r2, #0
 902              	.L163:
 903 0008 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 904 000c A518     		adds	r5, r4, r2
 905 000e A3F14100 		sub	r0, r3, #65
 906 0012 DBB1     		cbz	r3, .L164
 907              	.L179:
 908 0014 0E2A     		cmp	r2, #14
 909 0016 22D8     		bhi	.L178
 910 0018 1928     		cmp	r0, #25
 911 001a 9CBF     		itt	ls
 912 001c 2033     		addls	r3, r3, #32
ARM GAS  /tmp/ccGQuPeS.s 			page 17


 913 001e DBB2     		uxtbls	r3, r3
 914 0020 A3F16100 		sub	r0, r3, #97
 915 0024 1928     		cmp	r0, #25
 916 0026 A3F13006 		sub	r6, r3, #48
 917 002a 05D9     		bls	.L168
 918 002c 092E     		cmp	r6, #9
 919 002e 03D9     		bls	.L168
 920 0030 2D2B     		cmp	r3, #45
 921 0032 01D0     		beq	.L168
 922 0034 5F2B     		cmp	r3, #95
 923 0036 E7D1     		bne	.L163
 924              	.L168:
 925 0038 85F82030 		strb	r3, [r5, #32]
 926 003c 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 927 0040 0132     		adds	r2, r2, #1
 928 0042 A3F14100 		sub	r0, r3, #65
 929 0046 A518     		adds	r5, r4, r2
 930 0048 002B     		cmp	r3, #0
 931 004a E3D1     		bne	.L179
 932              	.L164:
 933 004c 04F12006 		add	r6, r4, #32
 934 0050 3AB9     		cbnz	r2, .L166
 935 0052 0B4B     		ldr	r3, .L180
 936 0054 1868     		ldr	r0, [r3]
 937 0056 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 938 0058 2062     		str	r0, [r4, #32]	@ unaligned
 939 005a 3371     		strb	r3, [r6, #4]
 940 005c 05E0     		b	.L171
 941              	.L178:
 942 005e 04F12006 		add	r6, r4, #32
 943              	.L166:
 944 0062 2244     		add	r2, r2, r4
 945 0064 0023     		movs	r3, #0
 946 0066 82F82030 		strb	r3, [r2, #32]
 947              	.L171:
 948 006a 251D     		adds	r5, r4, #4
 949 006c 0834     		adds	r4, r4, #8
 950              	.L172:
 951 006e 55F8040B 		ldr	r0, [r5], #4
 952 0072 0368     		ldr	r3, [r0]
 953 0074 3146     		mov	r1, r6
 954 0076 9B6C     		ldr	r3, [r3, #72]
 955 0078 9847     		blx	r3
 956 007a AC42     		cmp	r4, r5
 957 007c F7D1     		bne	.L172
 958 007e 70BD     		pop	{r4, r5, r6, pc}
 959              	.L181:
 960              		.align	2
 961              	.L180:
 962 0080 10000000 		.word	.LC2
 963              		.size	_ZN7Network11SetHostnameEPKc, .-_ZN7Network11SetHostnameEPKc
 964              		.section	.text._ZN7Network13SetMacAddressEjPKh,"ax",%progbits
 965              		.align	1
 966              		.p2align 2,,3
 967              		.global	_ZN7Network13SetMacAddressEjPKh
 968              		.syntax unified
 969              		.thumb
ARM GAS  /tmp/ccGQuPeS.s 			page 18


 970              		.thumb_func
 971              		.fpu fpv4-sp-d16
 972              		.type	_ZN7Network13SetMacAddressEjPKh, %function
 973              	_ZN7Network13SetMacAddressEjPKh:
 974              		@ args = 0, pretend = 0, frame = 0
 975              		@ frame_needed = 0, uses_anonymous_args = 0
 976              		@ link register save eliminated.
 977 0000 01B1     		cbz	r1, .L184
 978 0002 7047     		bx	lr
 979              	.L184:
 980 0004 4068     		ldr	r0, [r0, #4]
 981 0006 0368     		ldr	r3, [r0]
 982 0008 1146     		mov	r1, r2
 983 000a 1B6C     		ldr	r3, [r3, #64]
 984 000c 1847     		bx	r3	@ indirect register sibling call
 985              		.size	_ZN7Network13SetMacAddressEjPKh, .-_ZN7Network13SetMacAddressEjPKh
 986 000e 00BF     		.section	.text._ZNK7Network13GetMacAddressEj,"ax",%progbits
 987              		.align	1
 988              		.p2align 2,,3
 989              		.global	_ZNK7Network13GetMacAddressEj
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu fpv4-sp-d16
 994              		.type	_ZNK7Network13GetMacAddressEj, %function
 995              	_ZNK7Network13GetMacAddressEj:
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999 0000 4068     		ldr	r0, [r0, #4]
 1000 0002 0368     		ldr	r3, [r0]
 1001 0004 5B6C     		ldr	r3, [r3, #68]
 1002 0006 1847     		bx	r3
 1003              		.size	_ZNK7Network13GetMacAddressEj, .-_ZNK7Network13GetMacAddressEj
 1004              		.section	.text._ZN7Network13FindResponderEP6Socketh,"ax",%progbits
 1005              		.align	1
 1006              		.p2align 2,,3
 1007              		.global	_ZN7Network13FindResponderEP6Socketh
 1008              		.syntax unified
 1009              		.thumb
 1010              		.thumb_func
 1011              		.fpu fpv4-sp-d16
 1012              		.type	_ZN7Network13FindResponderEP6Socketh, %function
 1013              	_ZN7Network13FindResponderEP6Socketh:
 1014              		@ args = 0, pretend = 0, frame = 0
 1015              		@ frame_needed = 0, uses_anonymous_args = 0
 1016 0000 70B5     		push	{r4, r5, r6, lr}
 1017 0002 8468     		ldr	r4, [r0, #8]
 1018 0004 6CB1     		cbz	r4, .L187
 1019 0006 0E46     		mov	r6, r1
 1020 0008 1546     		mov	r5, r2
 1021 000a 01E0     		b	.L189
 1022              	.L195:
 1023 000c 6468     		ldr	r4, [r4, #4]
 1024 000e 44B1     		cbz	r4, .L187
 1025              	.L189:
 1026 0010 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccGQuPeS.s 			page 19


 1027 0012 2A46     		mov	r2, r5
 1028 0014 5B68     		ldr	r3, [r3, #4]
 1029 0016 3146     		mov	r1, r6
 1030 0018 2046     		mov	r0, r4
 1031 001a 9847     		blx	r3
 1032 001c 0028     		cmp	r0, #0
 1033 001e F5D0     		beq	.L195
 1034 0020 70BD     		pop	{r4, r5, r6, pc}
 1035              	.L187:
 1036 0022 0020     		movs	r0, #0
 1037 0024 70BD     		pop	{r4, r5, r6, pc}
 1038              		.size	_ZN7Network13FindResponderEP6Socketh, .-_ZN7Network13FindResponderEP6Socketh
 1039 0026 00BF     		.section	.text._ZN7Network20HandleHttpGCodeReplyEPKc,"ax",%progbits
 1040              		.align	1
 1041              		.p2align 2,,3
 1042              		.global	_ZN7Network20HandleHttpGCodeReplyEPKc
 1043              		.syntax unified
 1044              		.thumb
 1045              		.thumb_func
 1046              		.fpu fpv4-sp-d16
 1047              		.type	_ZN7Network20HandleHttpGCodeReplyEPKc, %function
 1048              	_ZN7Network20HandleHttpGCodeReplyEPKc:
 1049              		@ args = 0, pretend = 0, frame = 8
 1050              		@ frame_needed = 0, uses_anonymous_args = 0
 1051 0000 10B5     		push	{r4, lr}
 1052 0002 82B0     		sub	sp, sp, #8
 1053 0004 4FF0FF32 		mov	r2, #-1
 1054 0008 0C46     		mov	r4, r1
 1055 000a 00F11001 		add	r1, r0, #16
 1056 000e 6846     		mov	r0, sp
 1057 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1058 0014 2046     		mov	r0, r4
 1059 0016 FFF7FEFF 		bl	_ZN13HttpResponder16HandleGCodeReplyEPKc
 1060 001a 6846     		mov	r0, sp
 1061 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1062 0020 02B0     		add	sp, sp, #8
 1063              		@ sp needed
 1064 0022 10BD     		pop	{r4, pc}
 1065              		.size	_ZN7Network20HandleHttpGCodeReplyEPKc, .-_ZN7Network20HandleHttpGCodeReplyEPKc
 1066              		.section	.text._ZN7Network22HandleTelnetGCodeReplyEPKc,"ax",%progbits
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.global	_ZN7Network22HandleTelnetGCodeReplyEPKc
 1070              		.syntax unified
 1071              		.thumb
 1072              		.thumb_func
 1073              		.fpu fpv4-sp-d16
 1074              		.type	_ZN7Network22HandleTelnetGCodeReplyEPKc, %function
 1075              	_ZN7Network22HandleTelnetGCodeReplyEPKc:
 1076              		@ args = 0, pretend = 0, frame = 8
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078 0000 10B5     		push	{r4, lr}
 1079 0002 82B0     		sub	sp, sp, #8
 1080 0004 4FF0FF32 		mov	r2, #-1
 1081 0008 0C46     		mov	r4, r1
 1082 000a 00F11401 		add	r1, r0, #20
 1083 000e 6846     		mov	r0, sp
ARM GAS  /tmp/ccGQuPeS.s 			page 20


 1084 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1085 0014 2046     		mov	r0, r4
 1086 0016 FFF7FEFF 		bl	_ZN15TelnetResponder16HandleGCodeReplyEPKc
 1087 001a 6846     		mov	r0, sp
 1088 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1089 0020 02B0     		add	sp, sp, #8
 1090              		@ sp needed
 1091 0022 10BD     		pop	{r4, pc}
 1092              		.size	_ZN7Network22HandleTelnetGCodeReplyEPKc, .-_ZN7Network22HandleTelnetGCodeReplyEPKc
 1093              		.section	.text._ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer,"ax",%progbits
 1094              		.align	1
 1095              		.p2align 2,,3
 1096              		.global	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 1097              		.syntax unified
 1098              		.thumb
 1099              		.thumb_func
 1100              		.fpu fpv4-sp-d16
 1101              		.type	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, %function
 1102              	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer:
 1103              		@ args = 0, pretend = 0, frame = 8
 1104              		@ frame_needed = 0, uses_anonymous_args = 0
 1105 0000 10B5     		push	{r4, lr}
 1106 0002 82B0     		sub	sp, sp, #8
 1107 0004 4FF0FF32 		mov	r2, #-1
 1108 0008 0C46     		mov	r4, r1
 1109 000a 00F11001 		add	r1, r0, #16
 1110 000e 6846     		mov	r0, sp
 1111 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1112 0014 2046     		mov	r0, r4
 1113 0016 FFF7FEFF 		bl	_ZN13HttpResponder16HandleGCodeReplyEP12OutputBuffer
 1114 001a 6846     		mov	r0, sp
 1115 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1116 0020 02B0     		add	sp, sp, #8
 1117              		@ sp needed
 1118 0022 10BD     		pop	{r4, pc}
 1119              		.size	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer, .-_ZN7Network20HandleHttpGCodeReplyEP12Ou
 1120              		.section	.text._ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer,"ax",%progbits
 1121              		.align	1
 1122              		.p2align 2,,3
 1123              		.global	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 1124              		.syntax unified
 1125              		.thumb
 1126              		.thumb_func
 1127              		.fpu fpv4-sp-d16
 1128              		.type	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, %function
 1129              	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer:
 1130              		@ args = 0, pretend = 0, frame = 8
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132 0000 10B5     		push	{r4, lr}
 1133 0002 82B0     		sub	sp, sp, #8
 1134 0004 4FF0FF32 		mov	r2, #-1
 1135 0008 0C46     		mov	r4, r1
 1136 000a 00F11401 		add	r1, r0, #20
 1137 000e 6846     		mov	r0, sp
 1138 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 1139 0014 2046     		mov	r0, r4
 1140 0016 FFF7FEFF 		bl	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer
ARM GAS  /tmp/ccGQuPeS.s 			page 21


 1141 001a 6846     		mov	r0, sp
 1142 001c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1143 0020 02B0     		add	sp, sp, #8
 1144              		@ sp needed
 1145 0022 10BD     		pop	{r4, pc}
 1146              		.size	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer, .-_ZN7Network22HandleTelnetGCodeReplyEP
 1147              		.section	.text._ZN7Network15GetHttpReplySeqEv,"ax",%progbits
 1148              		.align	1
 1149              		.p2align 2,,3
 1150              		.global	_ZN7Network15GetHttpReplySeqEv
 1151              		.syntax unified
 1152              		.thumb
 1153              		.thumb_func
 1154              		.fpu fpv4-sp-d16
 1155              		.type	_ZN7Network15GetHttpReplySeqEv, %function
 1156              	_ZN7Network15GetHttpReplySeqEv:
 1157              		@ args = 0, pretend = 0, frame = 0
 1158              		@ frame_needed = 0, uses_anonymous_args = 0
 1159              		@ link register save eliminated.
 1160 0000 014B     		ldr	r3, .L205
 1161 0002 1868     		ldr	r0, [r3]
 1162 0004 7047     		bx	lr
 1163              	.L206:
 1164 0006 00BF     		.align	2
 1165              	.L205:
 1166 0008 00000000 		.word	_ZN13HttpResponder3seqE
 1167              		.size	_ZN7Network15GetHttpReplySeqEv, .-_ZN7Network15GetHttpReplySeqEv
 1168              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1169              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1170              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1171              	_ZL28cpu_irq_prev_interrupt_state:
 1172 0000 00       		.space	1
 1173              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1174              		.align	2
 1175              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1176              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1177              	_ZL32cpu_irq_critical_section_counter:
 1178 0000 00000000 		.space	4
 1179              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1180              		.align	2
 1181              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1182              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1183              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1184 0000 00000000 		.space	4
 1185              		.section	.rodata._ZN7Network11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1186              		.align	2
 1187              	.LC6:
 1188 0000 3D3D3D20 		.ascii	"=== Network ===\012\000"
 1188      4E657477 
 1188      6F726B20 
 1188      3D3D3D0A 
 1188      00
 1189 0011 000000   		.space	3
 1190              	.LC7:
 1191 0014 536C6F77 		.ascii	"Slowest loop: %.2fms; fastest: %.2fms\012\000"
 1191      65737420 
 1191      6C6F6F70 
ARM GAS  /tmp/ccGQuPeS.s 			page 22


 1191      3A20252E 
 1191      32666D73 
 1192 003b 00       		.space	1
 1193              	.LC8:
 1194 003c 52657370 		.ascii	"Responder states:\000"
 1194      6F6E6465 
 1194      72207374 
 1194      61746573 
 1194      3A00
 1195 004e 0000     		.space	2
 1196              	.LC9:
 1197 0050 0A00     		.ascii	"\012\000"
 1198              		.section	.rodata._ZN7Network14EnableProtocolEjhiiRK9StringRef.str1.4,"aMS",%progbits,1
 1199              		.align	2
 1200              	.LC3:
 1201 0000 496E7661 		.ascii	"Invalid network interface '%d'\012\000"
 1201      6C696420 
 1201      6E657477 
 1201      6F726B20 
 1201      696E7465 
 1202              		.section	.rodata._ZN7Network14HandleWiFiCodeEiR11GCodeBufferRK9StringRefRP12OutputBuffer.str1.4,"a
 1203              		.align	2
 1204              	.LC4:
 1205 0000 4E6F2057 		.ascii	"No WiFi interface available\000"
 1205      69466920 
 1205      696E7465 
 1205      72666163 
 1205      65206176 
 1206              		.section	.rodata._ZN7Network4InitEv.str1.4,"aMS",%progbits,1
 1207              		.align	2
 1208              	.LC0:
 1209 0000 48545450 		.ascii	"HTTP\000"
 1209      00
 1210 0005 000000   		.space	3
 1211              	.LC1:
 1212 0008 54656C6E 		.ascii	"Telnet\000"
 1212      657400
 1213 000f 00       		.space	1
 1214              	.LC2:
 1215 0010 64756574 		.ascii	"duet\000"
 1215      00
 1216              		.section	.rodata._ZNK7Network20GetWiFiServerVersionEv.str1.4,"aMS",%progbits,1
 1217              		.align	2
 1218              	.LC5:
 1219 0000 6E6F2057 		.ascii	"no WiFi interface\000"
 1219      69466920 
 1219      696E7465 
 1219      72666163 
 1219      6500
 1220              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
