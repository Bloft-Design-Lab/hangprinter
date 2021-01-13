ARM GAS  /tmp/cc6WKtZS.s 			page 1


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
  14              		.section	.text._ZN11PortControlC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN11PortControlC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN11PortControlC2Ev, %function
  23              	_ZN11PortControlC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 0646     		mov	r6, r0
  28 0004 0446     		mov	r4, r0
  29 0006 00F14005 		add	r5, r0, #64
  30              	.L2:
  31 000a 2046     		mov	r0, r4
  32 000c 0434     		adds	r4, r4, #4
  33 000e FFF7FEFF 		bl	_ZN6IoPortC1Ev
  34 0012 A542     		cmp	r5, r4
  35 0014 F9D1     		bne	.L2
  36 0016 3046     		mov	r0, r6
  37 0018 70BD     		pop	{r4, r5, r6, pc}
  38              		.size	_ZN11PortControlC2Ev, .-_ZN11PortControlC2Ev
  39              		.global	_ZN11PortControlC1Ev
  40              		.thumb_set _ZN11PortControlC1Ev,_ZN11PortControlC2Ev
  41 001a 00BF     		.section	.text._ZN11PortControl4InitEv,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN11PortControl4InitEv
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN11PortControl4InitEv, %function
  50              	_ZN11PortControl4InitEv:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 0023     		movs	r3, #0
  55 0002 C0E91033 		strd	r3, r3, [r0, #64]
  56 0006 8364     		str	r3, [r0, #72]
  57 0008 A0F84C30 		strh	r3, [r0, #76]	@ movhi
ARM GAS  /tmp/cc6WKtZS.s 			page 2


  58 000c 7047     		bx	lr
  59              		.size	_ZN11PortControl4InitEv, .-_ZN11PortControl4InitEv
  60 000e 00BF     		.section	.text._ZN11PortControl11UpdatePortsEt,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN11PortControl11UpdatePortsEt
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN11PortControl11UpdatePortsEt, %function
  69              	_ZN11PortControl11UpdatePortsEt:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  73 0004 B0F84C60 		ldrh	r6, [r0, #76]
  74 0008 8E42     		cmp	r6, r1
  75 000a 35D0     		beq	.L7
  76 000c 0BB2     		sxth	r3, r1
  77 000e 0FFA86F8 		sxth	r8, r6
  78 0012 026C     		ldr	r2, [r0, #64]
  79 0014 23EA0808 		bic	r8, r3, r8
  80 0018 8946     		mov	r9, r1
  81 001a 0746     		mov	r7, r0
  82 001c 1FFA88F8 		uxth	r8, r8
  83 0020 26EA0306 		bic	r6, r6, r3
  84 0024 32B3     		cbz	r2, .L9
  85 0026 0546     		mov	r5, r0
  86 0028 0024     		movs	r4, #0
  87 002a 4FF0010A 		mov	r10, #1
  88 002e 0BE0     		b	.L12
  89              	.L27:
  90 0030 A878     		ldrb	r0, [r5, #2]	@ zero_extendqisi2
  91 0032 FF28     		cmp	r0, #255
  92 0034 03D0     		beq	.L11
  93 0036 E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
  94 0038 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
  95 003c 3A6C     		ldr	r2, [r7, #64]
  96              	.L11:
  97 003e 0134     		adds	r4, r4, #1
  98 0040 A242     		cmp	r2, r4
  99 0042 05F10405 		add	r5, r5, #4
 100 0046 15D9     		bls	.L9
 101              	.L12:
 102 0048 0AFA04F3 		lsl	r3, r10, r4
 103 004c 9BB2     		uxth	r3, r3
 104 004e 1E42     		tst	r6, r3
 105 0050 EED1     		bne	.L27
 106 0052 18EA030F 		tst	r8, r3
 107 0056 F2D0     		beq	.L11
 108 0058 A878     		ldrb	r0, [r5, #2]	@ zero_extendqisi2
 109 005a FF28     		cmp	r0, #255
 110 005c EFD0     		beq	.L11
 111 005e E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 112 0060 81F00101 		eor	r1, r1, #1
 113 0064 FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 114 0068 3A6C     		ldr	r2, [r7, #64]
ARM GAS  /tmp/cc6WKtZS.s 			page 3


 115 006a 0134     		adds	r4, r4, #1
 116 006c A242     		cmp	r2, r4
 117 006e 05F10405 		add	r5, r5, #4
 118 0072 E9D8     		bhi	.L12
 119              	.L9:
 120 0074 A7F84C90 		strh	r9, [r7, #76]	@ movhi
 121              	.L7:
 122 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 123              		.size	_ZN11PortControl11UpdatePortsEt, .-_ZN11PortControl11UpdatePortsEt
 124              		.section	.text._ZN11PortControl4ExitEv,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	_ZN11PortControl4ExitEv
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 132              		.type	_ZN11PortControl4ExitEv, %function
 133              	_ZN11PortControl4ExitEv:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136 0000 10B5     		push	{r4, lr}
 137 0002 0021     		movs	r1, #0
 138 0004 0446     		mov	r4, r0
 139 0006 FFF7FEFF 		bl	_ZN11PortControl11UpdatePortsEt
 140 000a 0023     		movs	r3, #0
 141 000c 2364     		str	r3, [r4, #64]
 142 000e 10BD     		pop	{r4, pc}
 143              		.size	_ZN11PortControl4ExitEv, .-_ZN11PortControl4ExitEv
 144              		.section	.text._ZN11PortControl4SpinEb,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN11PortControl4SpinEb
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN11PortControl4SpinEb, %function
 153              	_ZN11PortControl4SpinEb:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 036C     		ldr	r3, [r0, #64]
 158 0002 83B3     		cbz	r3, .L30
 159 0004 70B4     		push	{r4, r5, r6}
 160              		.syntax unified
 161              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 162 0006 72B6     		cpsid i
 163              	@ 0 "" 2
 164              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 165 0008 BFF35F8F 		dmb
 166              	@ 0 "" 2
 167              		.thumb
 168              		.syntax unified
 169 000c 1A4B     		ldr	r3, .L43
 170 000e 1B4E     		ldr	r6, .L43+4
 171 0010 9B68     		ldr	r3, [r3, #8]	@ unaligned
ARM GAS  /tmp/cc6WKtZS.s 			page 4


 172 0012 0022     		movs	r2, #0
 173 0014 3270     		strb	r2, [r6]
 174 0016 1968     		ldr	r1, [r3]
 175 0018 31B3     		cbz	r1, .L41
 176 001a 194B     		ldr	r3, .L43+8
 177 001c D1F8DC20 		ldr	r2, [r1, #220]
 178 0020 D3F89040 		ldr	r4, [r3, #144]
 179 0024 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 180 0026 0546     		mov	r5, r0
 181 0028 806C     		ldr	r0, [r0, #72]
 182 002a DBB2     		uxtb	r3, r3
 183 002c 0444     		add	r4, r4, r0
 184 002e 05E0     		b	.L34
 185              	.L42:
 186 0030 0968     		ldr	r1, [r1]
 187 0032 0B7A     		ldrb	r3, [r1, #8]	@ zero_extendqisi2
 188 0034 DBB2     		uxtb	r3, r3
 189 0036 981E     		subs	r0, r3, #2
 190 0038 0128     		cmp	r0, #1
 191 003a 05D8     		bhi	.L33
 192              	.L34:
 193 003c D1F8D800 		ldr	r0, [r1, #216]
 194 0040 0244     		add	r2, r2, r0
 195 0042 101B     		subs	r0, r2, r4
 196 0044 0028     		cmp	r0, #0
 197 0046 F3DB     		blt	.L42
 198              	.L33:
 199 0048 0122     		movs	r2, #1
 200 004a 3270     		strb	r2, [r6]
 201              		.syntax unified
 202              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 203 004c BFF35F8F 		dmb
 204              	@ 0 "" 2
 205              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 206 0050 62B6     		cpsie i
 207              	@ 0 "" 2
 208              		.thumb
 209              		.syntax unified
 210 0052 013B     		subs	r3, r3, #1
 211 0054 022B     		cmp	r3, #2
 212 0056 2846     		mov	r0, r5
 213 0058 94BF     		ite	ls
 214 005a B1F8F010 		ldrhls	r1, [r1, #240]
 215 005e 0021     		movhi	r1, #0
 216 0060 70BC     		pop	{r4, r5, r6}
 217 0062 FFF7FEBF 		b	_ZN11PortControl11UpdatePortsEt
 218              	.L30:
 219 0066 7047     		bx	lr
 220              	.L41:
 221 0068 0123     		movs	r3, #1
 222 006a 3370     		strb	r3, [r6]
 223              		.syntax unified
 224              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 225 006c BFF35F8F 		dmb
 226              	@ 0 "" 2
 227              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 228 0070 62B6     		cpsie i
ARM GAS  /tmp/cc6WKtZS.s 			page 5


 229              	@ 0 "" 2
 230              		.thumb
 231              		.syntax unified
 232 0072 70BC     		pop	{r4, r5, r6}
 233 0074 FFF7FEBF 		b	_ZN11PortControl11UpdatePortsEt
 234              	.L44:
 235              		.align	2
 236              	.L43:
 237 0078 00000000 		.word	reprap
 238 007c 00000000 		.word	g_interrupt_enabled
 239 0080 00000940 		.word	1074331648
 240              		.size	_ZN11PortControl4SpinEb, .-_ZN11PortControl4SpinEb
 241              		.global	__aeabi_uldivmod
 242              		.global	__aeabi_ldivmod
 243              		.section	.text._ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu fpv4-sp-d16
 251              		.type	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef, %function
 252              	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef:
 253              		@ args = 0, pretend = 0, frame = 72
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 256 0004 8946     		mov	r9, r1
 257 0006 93B0     		sub	sp, sp, #76
 258 0008 0646     		mov	r6, r0
 259 000a 5021     		movs	r1, #80
 260 000c 4846     		mov	r0, r9
 261 000e 9246     		mov	r10, r2
 262 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 263 0014 0028     		cmp	r0, #0
 264 0016 45D0     		beq	.L46
 265 0018 0021     		movs	r1, #0
 266 001a 0746     		mov	r7, r0
 267 001c 3046     		mov	r0, r6
 268 001e FFF7FEFF 		bl	_ZN11PortControl11UpdatePortsEt
 269 0022 12AA     		add	r2, sp, #72
 270 0024 1023     		movs	r3, #16
 271 0026 0025     		movs	r5, #0
 272 0028 0DF10808 		add	r8, sp, #8
 273 002c 42F8443D 		str	r3, [r2, #-68]!
 274 0030 3564     		str	r5, [r6, #64]
 275 0032 2B46     		mov	r3, r5
 276 0034 4146     		mov	r1, r8
 277 0036 4846     		mov	r0, r9
 278 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 279 003c 019B     		ldr	r3, [sp, #4]
 280 003e 002B     		cmp	r3, #0
 281 0040 54D0     		beq	.L57
 282 0042 DDF808B0 		ldr	fp, [sp, #8]
 283 0046 BBF1870F 		cmp	fp, #135
 284 004a 98BF     		it	ls
 285 004c 3446     		movls	r4, r6
ARM GAS  /tmp/cc6WKtZS.s 			page 6


 286 004e 17D9     		bls	.L52
 287 0050 6BE0     		b	.L50
 288              	.L54:
 289 0052 A078     		ldrb	r0, [r4, #2]	@ zero_extendqisi2
 290 0054 FF28     		cmp	r0, #255
 291 0056 02D0     		beq	.L55
 292 0058 E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
 293 005a FFF7FEFF 		bl	_ZN6IoPort12WriteDigitalEhb
 294              	.L55:
 295 005e 336C     		ldr	r3, [r6, #64]
 296 0060 AB42     		cmp	r3, r5
 297 0062 019B     		ldr	r3, [sp, #4]
 298 0064 05F10102 		add	r2, r5, #1
 299 0068 98BF     		it	ls
 300 006a 3264     		strls	r2, [r6, #64]
 301 006c 9342     		cmp	r3, r2
 302 006e 04F10404 		add	r4, r4, #4
 303 0072 1546     		mov	r5, r2
 304 0074 3AD9     		bls	.L57
 305 0076 58F822B0 		ldr	fp, [r8, r2, lsl #2]
 306 007a BBF1870F 		cmp	fp, #135
 307 007e 54D8     		bhi	.L50
 308              	.L52:
 309 0080 0023     		movs	r3, #0
 310 0082 0122     		movs	r2, #1
 311 0084 1FFA8BF1 		uxth	r1, fp
 312 0088 2046     		mov	r0, r4
 313 008a FFF7FEFF 		bl	_ZN6IoPort3SetEt9PinAccessb
 314 008e 0028     		cmp	r0, #0
 315 0090 DFD1     		bne	.L54
 316 0092 5A46     		mov	r2, fp
 317 0094 5046     		mov	r0, r10
 318 0096 2C49     		ldr	r1, .L74
 319 0098 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 320 009c 3846     		mov	r0, r7
 321 009e 13B0     		add	sp, sp, #76
 322              		@ sp needed
 323 00a0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 324              	.L46:
 325 00a4 5421     		movs	r1, #84
 326 00a6 4846     		mov	r0, r9
 327 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 328 00ac 0746     		mov	r7, r0
 329 00ae 18BB     		cbnz	r0, .L48
 330 00b0 726C     		ldr	r2, [r6, #68]
 331 00b2 2649     		ldr	r1, .L74+4
 332 00b4 5046     		mov	r0, r10
 333 00b6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 334 00ba 336C     		ldr	r3, [r6, #64]
 335 00bc 002B     		cmp	r3, #0
 336 00be 3DD0     		beq	.L73
 337 00c0 2349     		ldr	r1, .L74+8
 338 00c2 5046     		mov	r0, r10
 339 00c4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 340 00c8 336C     		ldr	r3, [r6, #64]
 341 00ca 53B1     		cbz	r3, .L49
 342 00cc 214C     		ldr	r4, .L74+12
ARM GAS  /tmp/cc6WKtZS.s 			page 7


 343              	.L61:
 344 00ce 36F82720 		ldrh	r2, [r6, r7, lsl #2]
 345 00d2 2146     		mov	r1, r4
 346 00d4 5046     		mov	r0, r10
 347 00d6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 348 00da 336C     		ldr	r3, [r6, #64]
 349 00dc 0137     		adds	r7, r7, #1
 350 00de BB42     		cmp	r3, r7
 351 00e0 F5D8     		bhi	.L61
 352              	.L49:
 353 00e2 0027     		movs	r7, #0
 354 00e4 3846     		mov	r0, r7
 355 00e6 13B0     		add	sp, sp, #76
 356              		@ sp needed
 357 00e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 358              	.L57:
 359 00ec 5421     		movs	r1, #84
 360 00ee 4846     		mov	r0, r9
 361 00f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 362 00f4 0028     		cmp	r0, #0
 363 00f6 F4D0     		beq	.L49
 364              	.L48:
 365 00f8 4846     		mov	r0, r9
 366 00fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 367 00fe 20EAE070 		bic	r0, r0, r0, asr #31
 368 0102 B0F57A7F 		cmp	r0, #1000
 369 0106 144B     		ldr	r3, .L74+16
 370 0108 A8BF     		it	ge
 371 010a 4FF47A70 		movge	r0, #1000
 372 010e 7064     		str	r0, [r6, #68]
 373 0110 4FF47A72 		mov	r2, #1000
 374 0114 80FB0301 		smull	r0, r1, r0, r3
 375 0118 0023     		movs	r3, #0
 376 011a FFF7FEFF 		bl	__aeabi_uldivmod
 377 011e 0027     		movs	r7, #0
 378 0120 B064     		str	r0, [r6, #72]
 379              	.L59:
 380 0122 3846     		mov	r0, r7
 381 0124 13B0     		add	sp, sp, #76
 382              		@ sp needed
 383 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 384              	.L50:
 385 012a 5A46     		mov	r2, fp
 386 012c 5046     		mov	r0, r10
 387 012e 0B49     		ldr	r1, .L74+20
 388 0130 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 389 0134 3846     		mov	r0, r7
 390 0136 13B0     		add	sp, sp, #76
 391              		@ sp needed
 392 0138 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 393              	.L73:
 394 013c 5046     		mov	r0, r10
 395 013e 0849     		ldr	r1, .L74+24
 396 0140 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 397 0144 EDE7     		b	.L59
 398              	.L75:
 399 0146 00BF     		.align	2
ARM GAS  /tmp/cc6WKtZS.s 			page 8


 400              	.L74:
 401 0148 20000000 		.word	.LC1
 402 014c 44000000 		.word	.LC2
 403 0150 70000000 		.word	.LC4
 404 0154 80000000 		.word	.LC5
 405 0158 1C4E0E00 		.word	937500
 406 015c 00000000 		.word	.LC0
 407 0160 54000000 		.word	.LC3
 408              		.size	_ZN11PortControl9ConfigureER11GCodeBufferRK9StringRef, .-_ZN11PortControl9ConfigureER11GCode
 409              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 410              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 411              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 412              	_ZL28cpu_irq_prev_interrupt_state:
 413 0000 00       		.space	1
 414              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 415              		.align	2
 416              		.type	_ZL32cpu_irq_critical_section_counter, %object
 417              		.size	_ZL32cpu_irq_critical_section_counter, 4
 418              	_ZL32cpu_irq_critical_section_counter:
 419 0000 00000000 		.space	4
 420              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 421              		.align	2
 422              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 423              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 424              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
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
ARM GAS  /tmp/cc6WKtZS.s 			page 9


 441      206E756D 
 441      62657273 
 441      00
 442 007d 000000   		.space	3
 443              	.LC5:
 444 0080 20257500 		.ascii	" %u\000"
 445              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
