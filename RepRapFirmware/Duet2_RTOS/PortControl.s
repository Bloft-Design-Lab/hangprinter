ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 1


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
  13              		.file	"PortControl.cpp"
  14              		.text
  15              		.section	.text._ZN11PortControlC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN11PortControlC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN11PortControlC2Ev, %function
  24              	_ZN11PortControlC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 70B5     		push	{r4, r5, r6, lr}
  28 0002 0646     		mov	r6, r0
  29 0004 0446     		mov	r4, r0
  30 0006 00F14005 		add	r5, r0, #64
  31              	.L2:
  32 000a 2046     		mov	r0, r4
  33 000c 0434     		adds	r4, r4, #4
  34 000e FFF7FEFF 		bl	_ZN6IoPortC1Ev
  35 0012 A542     		cmp	r5, r4
  36 0014 F9D1     		bne	.L2
  37 0016 3046     		mov	r0, r6
  38 0018 70BD     		pop	{r4, r5, r6, pc}
  39              		.size	_ZN11PortControlC2Ev, .-_ZN11PortControlC2Ev
  40              		.global	_ZN11PortControlC1Ev
  41              		.thumb_set _ZN11PortControlC1Ev,_ZN11PortControlC2Ev
  42 001a 00BF     		.section	.text._ZN11PortControl4InitEv,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	_ZN11PortControl4InitEv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  50              		.type	_ZN11PortControl4InitEv, %function
  51              	_ZN11PortControl4InitEv:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 0023     		movs	r3, #0
  56 0002 C0E91033 		strd	r3, r3, [r0, #64]
  57 0006 8364     		str	r3, [r0, #72]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 2


  58 0008 A0F84C30 		strh	r3, [r0, #76]	@ movhi
  59 000c 7047     		bx	lr
  60              		.size	_ZN11PortControl4InitEv, .-_ZN11PortControl4InitEv
  61 000e 00BF     		.section	.text._ZN11PortControl11UpdatePortsEt,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	_ZN11PortControl11UpdatePortsEt
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZN11PortControl11UpdatePortsEt, %function
  70              	_ZN11PortControl11UpdatePortsEt:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  74 0004 B0F84C60 		ldrh	r6, [r0, #76]
  75 0008 8E42     		cmp	r6, r1
  76 000a 35D0     		beq	.L7
  77 000c 0BB2     		sxth	r3, r1
  78 000e 0FFA86F8 		sxth	r8, r6
  79 0012 026C     		ldr	r2, [r0, #64]
  80 0014 23EA0808 		bic	r8, r3, r8
  81 0018 8946     		mov	r9, r1
  82 001a 0746     		mov	r7, r0
  83 001c 1FFA88F8 		uxth	r8, r8
  84 0020 26EA0306 		bic	r6, r6, r3
  85 0024 32B3     		cbz	r2, .L9
  86 0026 0546     		mov	r5, r0
  87 0028 0024     		movs	r4, #0
  88 002a 4FF0010A 		mov	r10, #1
  89 002e 0BE0     		b	.L12
  90              	.L27:
  91 0030 A878     		ldrb	r0, [r5, #2]	@ zero_extendqisi2
  92 0032 FF28     		cmp	r0, #255
  93 0034 03D0     		beq	.L11
  94 0036 E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
  95 0038 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
  96 003c 3A6C     		ldr	r2, [r7, #64]
  97              	.L11:
  98 003e 0134     		adds	r4, r4, #1
  99 0040 A242     		cmp	r2, r4
 100 0042 05F10405 		add	r5, r5, #4
 101 0046 15D9     		bls	.L9
 102              	.L12:
 103 0048 0AFA04F3 		lsl	r3, r10, r4
 104 004c 9BB2     		uxth	r3, r3
 105 004e 1E42     		tst	r6, r3
 106 0050 EED1     		bne	.L27
 107 0052 18EA030F 		tst	r8, r3
 108 0056 F2D0     		beq	.L11
 109 0058 A878     		ldrb	r0, [r5, #2]	@ zero_extendqisi2
 110 005a FF28     		cmp	r0, #255
 111 005c EFD0     		beq	.L11
 112 005e E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 113 0060 81F00101 		eor	r1, r1, #1
 114 0064 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 3


 115 0068 3A6C     		ldr	r2, [r7, #64]
 116 006a 0134     		adds	r4, r4, #1
 117 006c A242     		cmp	r2, r4
 118 006e 05F10405 		add	r5, r5, #4
 119 0072 E9D8     		bhi	.L12
 120              	.L9:
 121 0074 A7F84C90 		strh	r9, [r7, #76]	@ movhi
 122              	.L7:
 123 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 124              		.size	_ZN11PortControl11UpdatePortsEt, .-_ZN11PortControl11UpdatePortsEt
 125              		.section	.text._ZN11PortControl4ExitEv,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN11PortControl4ExitEv
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN11PortControl4ExitEv, %function
 134              	_ZN11PortControl4ExitEv:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 10B5     		push	{r4, lr}
 138 0002 0021     		movs	r1, #0
 139 0004 0446     		mov	r4, r0
 140 0006 FFF7FEFF 		bl	_ZN11PortControl11UpdatePortsEt
 141 000a 0023     		movs	r3, #0
 142 000c 2364     		str	r3, [r4, #64]
 143 000e 10BD     		pop	{r4, pc}
 144              		.size	_ZN11PortControl4ExitEv, .-_ZN11PortControl4ExitEv
 145              		.section	.text._ZN11PortControl4SpinEb,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	_ZN11PortControl4SpinEb
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN11PortControl4SpinEb, %function
 154              	_ZN11PortControl4SpinEb:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 036C     		ldr	r3, [r0, #64]
 159 0002 002B     		cmp	r3, #0
 160 0004 34D0     		beq	.L30
 161 0006 1F4B     		ldr	r3, .L49
 162 0008 5A69     		ldr	r2, [r3, #20]	@ unaligned
 163 000a 92F8B420 		ldrb	r2, [r2, #180]	@ zero_extendqisi2
 164 000e 012A     		cmp	r2, #1
 165 0010 2ED0     		beq	.L30
 166 0012 70B4     		push	{r4, r5, r6}
 167              		.syntax unified
 168              	@ 330 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 169 0014 72B6     		cpsid i
 170              	@ 0 "" 2
 171              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 4


 172 0016 BFF35F8F 		dmb
 173              	@ 0 "" 2
 174              		.thumb
 175              		.syntax unified
 176 001a 1B4E     		ldr	r6, .L49+4
 177 001c DB68     		ldr	r3, [r3, #12]
 178 001e 0022     		movs	r2, #0
 179 0020 3270     		strb	r2, [r6]
 180 0022 5968     		ldr	r1, [r3, #4]
 181 0024 29B3     		cbz	r1, .L47
 182 0026 194B     		ldr	r3, .L49+8
 183 0028 D1F8E020 		ldr	r2, [r1, #224]
 184 002c D3F89040 		ldr	r4, [r3, #144]
 185 0030 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 186 0032 0546     		mov	r5, r0
 187 0034 806C     		ldr	r0, [r0, #72]
 188 0036 DBB2     		uxtb	r3, r3
 189 0038 0444     		add	r4, r4, r0
 190 003a 05E0     		b	.L34
 191              	.L48:
 192 003c 0968     		ldr	r1, [r1]
 193 003e 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 194 0040 DBB2     		uxtb	r3, r3
 195 0042 981E     		subs	r0, r3, #2
 196 0044 0128     		cmp	r0, #1
 197 0046 05D8     		bhi	.L33
 198              	.L34:
 199 0048 D1F8DC00 		ldr	r0, [r1, #220]
 200 004c 0244     		add	r2, r2, r0
 201 004e 101B     		subs	r0, r2, r4
 202 0050 0028     		cmp	r0, #0
 203 0052 F3DB     		blt	.L48
 204              	.L33:
 205 0054 0122     		movs	r2, #1
 206 0056 3270     		strb	r2, [r6]
 207              		.syntax unified
 208              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 209 0058 BFF35F8F 		dmb
 210              	@ 0 "" 2
 211              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 212 005c 62B6     		cpsie i
 213              	@ 0 "" 2
 214              		.thumb
 215              		.syntax unified
 216 005e 013B     		subs	r3, r3, #1
 217 0060 022B     		cmp	r3, #2
 218 0062 2846     		mov	r0, r5
 219 0064 94BF     		ite	ls
 220 0066 8989     		ldrhls	r1, [r1, #12]
 221 0068 0021     		movhi	r1, #0
 222 006a 70BC     		pop	{r4, r5, r6}
 223 006c FFF7FEBF 		b	_ZN11PortControl11UpdatePortsEt
 224              	.L30:
 225 0070 7047     		bx	lr
 226              	.L47:
 227 0072 0123     		movs	r3, #1
 228 0074 3370     		strb	r3, [r6]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 5


 229              		.syntax unified
 230              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 231 0076 BFF35F8F 		dmb
 232              	@ 0 "" 2
 233              	@ 319 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 234 007a 62B6     		cpsie i
 235              	@ 0 "" 2
 236              		.thumb
 237              		.syntax unified
 238 007c 70BC     		pop	{r4, r5, r6}
 239 007e FFF7FEBF 		b	_ZN11PortControl11UpdatePortsEt
 240              	.L50:
 241 0082 00BF     		.align	2
 242              	.L49:
 243 0084 00000000 		.word	reprap
 244 0088 00000000 		.word	g_interrupt_enabled
 245 008c 00000940 		.word	1074331648
 246              		.size	_ZN11PortControl4SpinEb, .-_ZN11PortControl4SpinEb
 247              		.global	__aeabi_uldivmod
 248              		.global	__aeabi_ldivmod
 249              		.section	.text._ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv4-sp-d16
 257              		.type	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef, %function
 258              	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef:
 259              		@ args = 0, pretend = 0, frame = 72
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 262 0004 8946     		mov	r9, r1
 263 0006 93B0     		sub	sp, sp, #76
 264 0008 0646     		mov	r6, r0
 265 000a 5021     		movs	r1, #80
 266 000c 4846     		mov	r0, r9
 267 000e 9246     		mov	r10, r2
 268 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 269 0014 0028     		cmp	r0, #0
 270 0016 45D0     		beq	.L52
 271 0018 0021     		movs	r1, #0
 272 001a 0746     		mov	r7, r0
 273 001c 3046     		mov	r0, r6
 274 001e FFF7FEFF 		bl	_ZN11PortControl11UpdatePortsEt
 275 0022 12AA     		add	r2, sp, #72
 276 0024 1023     		movs	r3, #16
 277 0026 0025     		movs	r5, #0
 278 0028 0DF10808 		add	r8, sp, #8
 279 002c 42F8443D 		str	r3, [r2, #-68]!
 280 0030 3564     		str	r5, [r6, #64]
 281 0032 2B46     		mov	r3, r5
 282 0034 4146     		mov	r1, r8
 283 0036 4846     		mov	r0, r9
 284 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 285 003c 019B     		ldr	r3, [sp, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 6


 286 003e 002B     		cmp	r3, #0
 287 0040 54D0     		beq	.L63
 288 0042 DDF808B0 		ldr	fp, [sp, #8]
 289 0046 BBF1870F 		cmp	fp, #135
 290 004a 98BF     		it	ls
 291 004c 3446     		movls	r4, r6
 292 004e 17D9     		bls	.L58
 293 0050 6BE0     		b	.L56
 294              	.L60:
 295 0052 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 296 0054 FF28     		cmp	r0, #255
 297 0056 02D0     		beq	.L61
 298 0058 E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 299 005a FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 300              	.L61:
 301 005e 336C     		ldr	r3, [r6, #64]
 302 0060 AB42     		cmp	r3, r5
 303 0062 019B     		ldr	r3, [sp, #4]
 304 0064 05F10102 		add	r2, r5, #1
 305 0068 98BF     		it	ls
 306 006a 3264     		strls	r2, [r6, #64]
 307 006c 9342     		cmp	r3, r2
 308 006e 04F10404 		add	r4, r4, #4
 309 0072 1546     		mov	r5, r2
 310 0074 3AD9     		bls	.L63
 311 0076 58F822B0 		ldr	fp, [r8, r2, lsl #2]
 312 007a BBF1870F 		cmp	fp, #135
 313 007e 54D8     		bhi	.L56
 314              	.L58:
 315 0080 0023     		movs	r3, #0
 316 0082 0122     		movs	r2, #1
 317 0084 1FFA8BF1 		uxth	r1, fp
 318 0088 2046     		mov	r0, r4
 319 008a FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
 320 008e 0028     		cmp	r0, #0
 321 0090 DFD1     		bne	.L60
 322 0092 5A46     		mov	r2, fp
 323 0094 5046     		mov	r0, r10
 324 0096 2C49     		ldr	r1, .L80
 325 0098 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 326 009c 3846     		mov	r0, r7
 327 009e 13B0     		add	sp, sp, #76
 328              		@ sp needed
 329 00a0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 330              	.L52:
 331 00a4 5421     		movs	r1, #84
 332 00a6 4846     		mov	r0, r9
 333 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 334 00ac 0746     		mov	r7, r0
 335 00ae 18BB     		cbnz	r0, .L54
 336 00b0 726C     		ldr	r2, [r6, #68]
 337 00b2 2649     		ldr	r1, .L80+4
 338 00b4 5046     		mov	r0, r10
 339 00b6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 340 00ba 336C     		ldr	r3, [r6, #64]
 341 00bc 002B     		cmp	r3, #0
 342 00be 3DD0     		beq	.L79
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 7


 343 00c0 2349     		ldr	r1, .L80+8
 344 00c2 5046     		mov	r0, r10
 345 00c4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 346 00c8 336C     		ldr	r3, [r6, #64]
 347 00ca 53B1     		cbz	r3, .L55
 348 00cc 214C     		ldr	r4, .L80+12
 349              	.L67:
 350 00ce 36F82720 		ldrh	r2, [r6, r7, lsl #2]
 351 00d2 2146     		mov	r1, r4
 352 00d4 5046     		mov	r0, r10
 353 00d6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 354 00da 336C     		ldr	r3, [r6, #64]
 355 00dc 0137     		adds	r7, r7, #1
 356 00de BB42     		cmp	r3, r7
 357 00e0 F5D8     		bhi	.L67
 358              	.L55:
 359 00e2 0027     		movs	r7, #0
 360 00e4 3846     		mov	r0, r7
 361 00e6 13B0     		add	sp, sp, #76
 362              		@ sp needed
 363 00e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 364              	.L63:
 365 00ec 5421     		movs	r1, #84
 366 00ee 4846     		mov	r0, r9
 367 00f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 368 00f4 0028     		cmp	r0, #0
 369 00f6 F4D0     		beq	.L55
 370              	.L54:
 371 00f8 4846     		mov	r0, r9
 372 00fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 373 00fe 20EAE070 		bic	r0, r0, r0, asr #31
 374 0102 B0F57A7F 		cmp	r0, #1000
 375 0106 144B     		ldr	r3, .L80+16
 376 0108 A8BF     		it	ge
 377 010a 4FF47A70 		movge	r0, #1000
 378 010e 7064     		str	r0, [r6, #68]
 379 0110 4FF47A72 		mov	r2, #1000
 380 0114 80FB0301 		smull	r0, r1, r0, r3
 381 0118 0023     		movs	r3, #0
 382 011a FFF7FEFF 		bl	__aeabi_uldivmod
 383 011e 0027     		movs	r7, #0
 384 0120 B064     		str	r0, [r6, #72]
 385              	.L65:
 386 0122 3846     		mov	r0, r7
 387 0124 13B0     		add	sp, sp, #76
 388              		@ sp needed
 389 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 390              	.L56:
 391 012a 5A46     		mov	r2, fp
 392 012c 5046     		mov	r0, r10
 393 012e 0B49     		ldr	r1, .L80+20
 394 0130 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 395 0134 3846     		mov	r0, r7
 396 0136 13B0     		add	sp, sp, #76
 397              		@ sp needed
 398 0138 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 399              	.L79:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 8


 400 013c 5046     		mov	r0, r10
 401 013e 0849     		ldr	r1, .L80+24
 402 0140 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 403 0144 EDE7     		b	.L65
 404              	.L81:
 405 0146 00BF     		.align	2
 406              	.L80:
 407 0148 20000000 		.word	.LC1
 408 014c 44000000 		.word	.LC2
 409 0150 70000000 		.word	.LC4
 410 0154 80000000 		.word	.LC5
 411 0158 1C4E0E00 		.word	937500
 412 015c 00000000 		.word	.LC0
 413 0160 54000000 		.word	.LC3
 414              		.size	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef, .-_ZN11PortControl9ConfigureER11GCode
 415              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 416              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 417              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 418              	_ZL28cpu_irq_prev_interrupt_state:
 419 0000 00       		.space	1
 420              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 421              		.align	2
 422              		.type	_ZL32cpu_irq_critical_section_counter, %object
 423              		.size	_ZL32cpu_irq_critical_section_counter, 4
 424              	_ZL32cpu_irq_critical_section_counter:
 425 0000 00000000 		.space	4
 426              		.section	.rodata._ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 427              		.align	2
 428              	.LC0:
 429 0000 506F7274 		.ascii	"Port number %ld out of range\000"
 429      206E756D 
 429      62657220 
 429      256C6420 
 429      6F757420 
 430 001d 000000   		.space	3
 431              	.LC1:
 432 0020 506F7274 		.ascii	"Port number %ld is not available\000"
 432      206E756D 
 432      62657220 
 432      256C6420 
 432      6973206E 
 433 0041 000000   		.space	3
 434              	.LC2:
 435 0044 41647661 		.ascii	"Advance %ums, \000"
 435      6E636520 
 435      25756D73 
 435      2C2000
 436 0053 00       		.space	1
 437              	.LC3:
 438 0054 6E6F2070 		.ascii	"no port mapping configured\000"
 438      6F727420 
 438      6D617070 
 438      696E6720 
 438      636F6E66 
 439 006f 00       		.space	1
 440              	.LC4:
 441 0070 706F7274 		.ascii	"port numbers\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccSXRoyS.s 			page 9


 441      206E756D 
 441      62657273 
 441      00
 442 007d 000000   		.space	3
 443              	.LC5:
 444 0080 20257500 		.ascii	" %u\000"
 445              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
