ARM GAS  /tmp/ccVsN8QH.s 			page 1


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
  13              		.file	"W5500Socket.cpp"
  14              		.section	.text._ZNK11W5500Socket7CanSendEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZNK11W5500Socket7CanSendEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK11W5500Socket7CanSendEv, %function
  23              	_ZNK11W5500Socket7CanSendEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  28 0002 A0F10300 		sub	r0, #3
  29 0006 B0FA80F0 		clz	r0, r0
  30 000a 4009     		lsrs	r0, r0, #5
  31 000c 7047     		bx	lr
  32              		.size	_ZNK11W5500Socket7CanSendEv, .-_ZNK11W5500Socket7CanSendEv
  33 000e 00BF     		.section	.text._ZN11W5500Socket10ReadBufferERPKhRj,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN11W5500Socket10ReadBufferERPKhRj
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	_ZN11W5500Socket10ReadBufferERPKhRj, %function
  42              	_ZN11W5500Socket10ReadBufferERPKhRj:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 8069     		ldr	r0, [r0, #24]
  47 0002 60B1     		cbz	r0, .L7
  48 0004 10B4     		push	{r4}
  49 0006 D0E90134 		ldrd	r3, r4, [r0, #4]
  50 000a 1B1B     		subs	r3, r3, r4
  51 000c 1360     		str	r3, [r2]
  52 000e 8368     		ldr	r3, [r0, #8]
  53 0010 5DF8044B 		ldr	r4, [sp], #4
  54 0014 0C30     		adds	r0, r0, #12
  55 0016 1844     		add	r0, r0, r3
  56 0018 0860     		str	r0, [r1]
  57 001a 0120     		movs	r0, #1
ARM GAS  /tmp/ccVsN8QH.s 			page 2


  58 001c 7047     		bx	lr
  59              	.L7:
  60 001e 7047     		bx	lr
  61              		.size	_ZN11W5500Socket10ReadBufferERPKhRj, .-_ZN11W5500Socket10ReadBufferERPKhRj
  62              		.section	.text._ZN11W5500Socket19TerminateAndDisableEv,"ax",%progbits
  63              		.align	1
  64              		.p2align 2,,3
  65              		.global	_ZN11W5500Socket19TerminateAndDisableEv
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZN11W5500Socket19TerminateAndDisableEv, %function
  71              	_ZN11W5500Socket19TerminateAndDisableEv:
  72              		@ args = 0, pretend = 0, frame = 8
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74 0000 10B5     		push	{r4, lr}
  75 0002 4168     		ldr	r1, [r0, #4]
  76 0004 82B0     		sub	sp, sp, #8
  77 0006 0446     		mov	r4, r0
  78 0008 0431     		adds	r1, r1, #4
  79 000a 4FF0FF32 		mov	r2, #-1
  80 000e 6846     		mov	r0, sp
  81 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
  82 0014 2368     		ldr	r3, [r4]
  83 0016 2046     		mov	r0, r4
  84 0018 9B68     		ldr	r3, [r3, #8]
  85 001a 9847     		blx	r3
  86 001c 0023     		movs	r3, #0
  87 001e 6846     		mov	r0, sp
  88 0020 2375     		strb	r3, [r4, #20]
  89 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  90 0026 02B0     		add	sp, sp, #8
  91              		@ sp needed
  92 0028 10BD     		pop	{r4, pc}
  93              		.size	_ZN11W5500Socket19TerminateAndDisableEv, .-_ZN11W5500Socket19TerminateAndDisableEv
  94 002a 00BF     		.section	.text._ZN11W5500Socket5TakenEj,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN11W5500Socket5TakenEj
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN11W5500Socket5TakenEj, %function
 103              	_ZN11W5500Socket5TakenEj:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 8369     		ldr	r3, [r0, #24]
 107 0002 3BB1     		cbz	r3, .L17
 108 0004 10B5     		push	{r4, lr}
 109 0006 D3E90124 		ldrd	r2, r4, [r3, #4]
 110 000a 2144     		add	r1, r1, r4
 111 000c 8A42     		cmp	r2, r1
 112 000e 9960     		str	r1, [r3, #8]
 113 0010 01D0     		beq	.L20
 114 0012 10BD     		pop	{r4, pc}
ARM GAS  /tmp/ccVsN8QH.s 			page 3


 115              	.L17:
 116 0014 7047     		bx	lr
 117              	.L20:
 118 0016 0446     		mov	r4, r0
 119 0018 1846     		mov	r0, r3
 120 001a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 121 001e A061     		str	r0, [r4, #24]
 122 0020 10BD     		pop	{r4, pc}
 123              		.size	_ZN11W5500Socket5TakenEj, .-_ZN11W5500Socket5TakenEj
 124 0022 00BF     		.section	.text._ZN11W5500Socket5CloseEv,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	_ZN11W5500Socket5CloseEv
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 132              		.type	_ZN11W5500Socket5CloseEv, %function
 133              	_ZN11W5500Socket5CloseEv:
 134              		@ args = 0, pretend = 0, frame = 8
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136 0000 10B5     		push	{r4, lr}
 137 0002 4168     		ldr	r1, [r0, #4]
 138 0004 82B0     		sub	sp, sp, #8
 139 0006 0446     		mov	r4, r0
 140 0008 0431     		adds	r1, r1, #4
 141 000a 6846     		mov	r0, sp
 142 000c 4FF0FF32 		mov	r2, #-1
 143 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 144 0014 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 145 0016 012B     		cmp	r3, #1
 146 0018 12D9     		bls	.L23
 147 001a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 148 001e 0821     		movs	r1, #8
 149 0020 FFF7FEFF 		bl	_Z11ExecCommandhh
 150 0024 A069     		ldr	r0, [r4, #24]
 151 0026 0523     		movs	r3, #5
 152 0028 2375     		strb	r3, [r4, #20]
 153 002a 20B1     		cbz	r0, .L24
 154              	.L25:
 155 002c FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 156 0030 A061     		str	r0, [r4, #24]
 157 0032 0028     		cmp	r0, #0
 158 0034 FAD1     		bne	.L25
 159              	.L24:
 160 0036 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 161 0038 032B     		cmp	r3, #3
 162 003a 04BF     		itt	eq
 163 003c 0023     		moveq	r3, #0
 164 003e 2381     		strheq	r3, [r4, #8]	@ movhi
 165              	.L23:
 166 0040 6846     		mov	r0, sp
 167 0042 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 168 0046 02B0     		add	sp, sp, #8
 169              		@ sp needed
 170 0048 10BD     		pop	{r4, pc}
 171              		.size	_ZN11W5500Socket5CloseEv, .-_ZN11W5500Socket5CloseEv
ARM GAS  /tmp/ccVsN8QH.s 			page 4


 172 004a 00BF     		.section	.text._ZN11W5500Socket9TerminateEv,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_ZN11W5500Socket9TerminateEv
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN11W5500Socket9TerminateEv, %function
 181              	_ZN11W5500Socket9TerminateEv:
 182              		@ args = 0, pretend = 0, frame = 8
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 10B5     		push	{r4, lr}
 185 0002 4168     		ldr	r1, [r0, #4]
 186 0004 82B0     		sub	sp, sp, #8
 187 0006 0446     		mov	r4, r0
 188 0008 0431     		adds	r1, r1, #4
 189 000a 6846     		mov	r0, sp
 190 000c 4FF0FF32 		mov	r2, #-1
 191 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 192 0014 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 193 0016 23B9     		cbnz	r3, .L43
 194              	.L33:
 195 0018 6846     		mov	r0, sp
 196 001a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 197 001e 02B0     		add	sp, sp, #8
 198              		@ sp needed
 199 0020 10BD     		pop	{r4, pc}
 200              	.L43:
 201 0022 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 202 0026 FFF7FEFF 		bl	_Z16disconnectNoWaith
 203 002a A069     		ldr	r0, [r4, #24]
 204 002c 0123     		movs	r3, #1
 205 002e 84F82130 		strb	r3, [r4, #33]
 206 0032 2375     		strb	r3, [r4, #20]
 207 0034 0028     		cmp	r0, #0
 208 0036 EFD0     		beq	.L33
 209              	.L34:
 210 0038 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 211 003c A061     		str	r0, [r4, #24]
 212 003e 0028     		cmp	r0, #0
 213 0040 FAD1     		bne	.L34
 214 0042 6846     		mov	r0, sp
 215 0044 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 216 0048 02B0     		add	sp, sp, #8
 217              		@ sp needed
 218 004a 10BD     		pop	{r4, pc}
 219              		.size	_ZN11W5500Socket9TerminateEv, .-_ZN11W5500Socket9TerminateEv
 220              		.section	.text._ZNK11W5500Socket7CanReadEv,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK11W5500Socket7CanReadEv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK11W5500Socket7CanReadEv, %function
ARM GAS  /tmp/ccVsN8QH.s 			page 5


 229              	_ZNK11W5500Socket7CanReadEv:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232 0000 08B5     		push	{r3, lr}
 233 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 234 0004 032B     		cmp	r3, #3
 235 0006 0CD0     		beq	.L46
 236 0008 042B     		cmp	r3, #4
 237 000a 01D0     		beq	.L50
 238 000c 0020     		movs	r0, #0
 239              	.L45:
 240 000e 08BD     		pop	{r3, pc}
 241              	.L50:
 242 0010 8069     		ldr	r0, [r0, #24]
 243 0012 0028     		cmp	r0, #0
 244 0014 FBD0     		beq	.L45
 245 0016 FFF7FEFF 		bl	_ZNK13NetworkBuffer14TotalRemainingEv
 246 001a 0030     		adds	r0, r0, #0
 247 001c 18BF     		it	ne
 248 001e 0120     		movne	r0, #1
 249 0020 08BD     		pop	{r3, pc}
 250              	.L46:
 251 0022 0120     		movs	r0, #1
 252 0024 08BD     		pop	{r3, pc}
 253              		.size	_ZNK11W5500Socket7CanReadEv, .-_ZNK11W5500Socket7CanReadEv
 254 0026 00BF     		.section	.text._ZN11W5500Socket8ReadCharERc,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_ZN11W5500Socket8ReadCharERc
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv4-sp-d16
 262              		.type	_ZN11W5500Socket8ReadCharERc, %function
 263              	_ZN11W5500Socket8ReadCharERc:
 264              		@ args = 0, pretend = 0, frame = 8
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266 0000 30B5     		push	{r4, r5, lr}
 267 0002 8469     		ldr	r4, [r0, #24]
 268 0004 83B0     		sub	sp, sp, #12
 269 0006 C4B1     		cbz	r4, .L52
 270 0008 0C46     		mov	r4, r1
 271 000a 4168     		ldr	r1, [r0, #4]
 272 000c 0546     		mov	r5, r0
 273 000e 4FF0FF32 		mov	r2, #-1
 274 0012 0431     		adds	r1, r1, #4
 275 0014 6846     		mov	r0, sp
 276 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 277 001a 2146     		mov	r1, r4
 278 001c A869     		ldr	r0, [r5, #24]
 279 001e FFF7FEFF 		bl	_ZN13NetworkBuffer8ReadCharERc
 280 0022 0446     		mov	r4, r0
 281 0024 A869     		ldr	r0, [r5, #24]
 282 0026 D0E90123 		ldrd	r2, r3, [r0, #4]
 283 002a 9A42     		cmp	r2, r3
 284 002c 09D0     		beq	.L56
 285              	.L53:
ARM GAS  /tmp/ccVsN8QH.s 			page 6


 286 002e 6846     		mov	r0, sp
 287 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 288 0034 2046     		mov	r0, r4
 289 0036 03B0     		add	sp, sp, #12
 290              		@ sp needed
 291 0038 30BD     		pop	{r4, r5, pc}
 292              	.L52:
 293 003a 2046     		mov	r0, r4
 294 003c 0C70     		strb	r4, [r1]
 295 003e 03B0     		add	sp, sp, #12
 296              		@ sp needed
 297 0040 30BD     		pop	{r4, r5, pc}
 298              	.L56:
 299 0042 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 300 0046 A861     		str	r0, [r5, #24]
 301 0048 F1E7     		b	.L53
 302              		.size	_ZN11W5500Socket8ReadCharERc, .-_ZN11W5500Socket8ReadCharERc
 303 004a 00BF     		.section	.text._ZN11W5500Socket4SendEv,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.global	_ZN11W5500Socket4SendEv
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu fpv4-sp-d16
 311              		.type	_ZN11W5500Socket4SendEv, %function
 312              	_ZN11W5500Socket4SendEv:
 313              		@ args = 0, pretend = 0, frame = 8
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 316 0002 4168     		ldr	r1, [r0, #4]
 317 0004 83B0     		sub	sp, sp, #12
 318 0006 0446     		mov	r4, r0
 319 0008 4FF0FF32 		mov	r2, #-1
 320 000c 6846     		mov	r0, sp
 321 000e 0431     		adds	r1, r1, #4
 322 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 323 0014 2368     		ldr	r3, [r4]
 324 0016 1B4A     		ldr	r2, .L69
 325 0018 1B6A     		ldr	r3, [r3, #32]
 326 001a 9342     		cmp	r3, r2
 327 001c 0ED1     		bne	.L58
 328 001e 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 329 0020 A0F10300 		sub	r0, #3
 330 0024 B0FA80F0 		clz	r0, r0
 331 0028 4009     		lsrs	r0, r0, #5
 332              	.L59:
 333 002a 10B1     		cbz	r0, .L60
 334 002c 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 335 0030 3BB9     		cbnz	r3, .L68
 336              	.L60:
 337 0032 6846     		mov	r0, sp
 338 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 339 0038 03B0     		add	sp, sp, #12
 340              		@ sp needed
 341 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 342              	.L58:
ARM GAS  /tmp/ccVsN8QH.s 			page 7


 343 003c 2046     		mov	r0, r4
 344 003e 9847     		blx	r3
 345 0040 F3E7     		b	.L59
 346              	.L68:
 347 0042 94F82250 		ldrb	r5, [r4, #34]	@ zero_extendqisi2
 348 0046 E78C     		ldrh	r7, [r4, #38]
 349 0048 0126     		movs	r6, #1
 350 004a 06EB8505 		add	r5, r6, r5, lsl #2
 351 004e ED00     		lsls	r5, r5, #3
 352 0050 05F51050 		add	r0, r5, #9216
 353 0054 390A     		lsrs	r1, r7, #8
 354 0056 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 355 005a 05F51450 		add	r0, r5, #9472
 356 005e F9B2     		uxtb	r1, r7
 357 0060 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 358 0064 2021     		movs	r1, #32
 359 0066 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 360 006a FFF7FEFF 		bl	_Z11ExecCommandhh
 361 006e 0023     		movs	r3, #0
 362 0070 84F82460 		strb	r6, [r4, #36]
 363 0074 84F82330 		strb	r3, [r4, #35]
 364 0078 6846     		mov	r0, sp
 365 007a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 366 007e 03B0     		add	sp, sp, #12
 367              		@ sp needed
 368 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 369              	.L70:
 370 0082 00BF     		.align	2
 371              	.L69:
 372 0084 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 373              		.size	_ZN11W5500Socket4SendEv, .-_ZN11W5500Socket4SendEv
 374              		.section	.text._ZN11W5500Socket4SendEPKhj,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	_ZN11W5500Socket4SendEPKhj
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu fpv4-sp-d16
 382              		.type	_ZN11W5500Socket4SendEPKhj, %function
 383              	_ZN11W5500Socket4SendEPKhj:
 384              		@ args = 0, pretend = 0, frame = 8
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 387 0004 4368     		ldr	r3, [r0, #4]
 388 0006 83B0     		sub	sp, sp, #12
 389 0008 0446     		mov	r4, r0
 390 000a 0E46     		mov	r6, r1
 391 000c 1746     		mov	r7, r2
 392 000e 191D     		adds	r1, r3, #4
 393 0010 4FF0FF32 		mov	r2, #-1
 394 0014 6846     		mov	r0, sp
 395 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 396 001a 2368     		ldr	r3, [r4]
 397 001c 444A     		ldr	r2, .L97
 398 001e 1B6A     		ldr	r3, [r3, #32]
 399 0020 9342     		cmp	r3, r2
ARM GAS  /tmp/ccVsN8QH.s 			page 8


 400 0022 0FD1     		bne	.L72
 401 0024 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 402 0026 A0F10300 		sub	r0, #3
 403 002a B0FA80F0 		clz	r0, r0
 404 002e 4009     		lsrs	r0, r0, #5
 405              	.L73:
 406 0030 00B1     		cbz	r0, .L76
 407 0032 57B9     		cbnz	r7, .L94
 408              	.L76:
 409 0034 0025     		movs	r5, #0
 410              	.L75:
 411 0036 6846     		mov	r0, sp
 412 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 413 003c 2846     		mov	r0, r5
 414 003e 03B0     		add	sp, sp, #12
 415              		@ sp needed
 416 0040 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 417              	.L72:
 418 0044 2046     		mov	r0, r4
 419 0046 9847     		blx	r3
 420 0048 F2E7     		b	.L73
 421              	.L94:
 422 004a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 423 004e 4FF00408 		mov	r8, #4
 424 0052 4FF00109 		mov	r9, #1
 425 0056 18FB0090 		smlabb	r0, r8, r0, r9
 426 005a C000     		lsls	r0, r0, #3
 427 005c 00F54070 		add	r0, r0, #768
 428 0060 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 429 0064 1728     		cmp	r0, #23
 430 0066 E5D1     		bne	.L76
 431 0068 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 432 006c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 433 0070 002B     		cmp	r3, #0
 434 0072 38D1     		bne	.L95
 435              	.L77:
 436 0074 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 437 0078 D3B1     		cbz	r3, .L79
 438 007a E38C     		ldrh	r3, [r4, #38]
 439              	.L80:
 440 007c 258D     		ldrh	r5, [r4, #40]
 441 007e BD42     		cmp	r5, r7
 442 0080 28BF     		it	cs
 443 0082 3D46     		movcs	r5, r7
 444 0084 AFB2     		uxth	r7, r5
 445 0086 3A46     		mov	r2, r7
 446 0088 3146     		mov	r1, r6
 447 008a FFF7FEFF 		bl	_Z16wiz_send_data_athPKhtt
 448 008e 238D     		ldrh	r3, [r4, #40]
 449 0090 E28C     		ldrh	r2, [r4, #38]
 450 0092 DB1B     		subs	r3, r3, r7
 451 0094 9BB2     		uxth	r3, r3
 452 0096 1744     		add	r7, r7, r2
 453 0098 0122     		movs	r2, #1
 454 009a 2385     		strh	r3, [r4, #40]	@ movhi
 455 009c E784     		strh	r7, [r4, #38]	@ movhi
 456 009e 84F82320 		strb	r2, [r4, #35]
ARM GAS  /tmp/ccVsN8QH.s 			page 9


 457 00a2 002B     		cmp	r3, #0
 458 00a4 C7D1     		bne	.L75
 459 00a6 2368     		ldr	r3, [r4]
 460 00a8 2046     		mov	r0, r4
 461 00aa 9B6A     		ldr	r3, [r3, #40]
 462 00ac 9847     		blx	r3
 463 00ae C2E7     		b	.L75
 464              	.L79:
 465 00b0 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 466 00b4 2085     		strh	r0, [r4, #40]	@ movhi
 467 00b6 0028     		cmp	r0, #0
 468 00b8 BCD0     		beq	.L76
 469 00ba 94F82280 		ldrb	r8, [r4, #34]	@ zero_extendqisi2
 470 00be 4FEA4818 		lsl	r8, r8, #5
 471 00c2 08F10808 		add	r8, r8, #8
 472 00c6 08F51050 		add	r0, r8, #9216
 473 00ca FFF7FEFF 		bl	_Z12WIZCHIP_READm
 474 00ce 0546     		mov	r5, r0
 475 00d0 08F51450 		add	r0, r8, #9472
 476 00d4 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 477 00d8 00EB0523 		add	r3, r0, r5, lsl #8
 478 00dc 9BB2     		uxth	r3, r3
 479 00de 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 480 00e2 E384     		strh	r3, [r4, #38]	@ movhi
 481 00e4 CAE7     		b	.L80
 482              	.L95:
 483 00e6 18FB0090 		smlabb	r0, r8, r0, r9
 484 00ea C000     		lsls	r0, r0, #3
 485 00ec 00F50070 		add	r0, r0, #512
 486 00f0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 487 00f4 10F01005 		ands	r5, r0, #16
 488 00f8 0AD1     		bne	.L96
 489 00fa 0307     		lsls	r3, r0, #28
 490 00fc 9AD5     		bpl	.L76
 491 00fe 84F82450 		strb	r5, [r4, #36]
 492 0102 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 493 0106 FFF7FEFF 		bl	_Z16disconnectNoWaith
 494 010a 0623     		movs	r3, #6
 495 010c 2375     		strb	r3, [r4, #20]
 496 010e 92E7     		b	.L75
 497              	.L96:
 498 0110 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 499 0114 18FB0090 		smlabb	r0, r8, r0, r9
 500 0118 C000     		lsls	r0, r0, #3
 501 011a 00F50070 		add	r0, r0, #512
 502 011e 1021     		movs	r1, #16
 503 0120 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 504 0124 0023     		movs	r3, #0
 505 0126 84F82430 		strb	r3, [r4, #36]
 506 012a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 507 012e A1E7     		b	.L77
 508              	.L98:
 509              		.align	2
 510              	.L97:
 511 0130 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 512              		.size	_ZN11W5500Socket4SendEPKhj, .-_ZN11W5500Socket4SendEPKhj
 513              		.section	.text._ZN11W5500SocketC2EP16NetworkInterface,"ax",%progbits
ARM GAS  /tmp/ccVsN8QH.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	_ZN11W5500SocketC2EP16NetworkInterface
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv4-sp-d16
 521              		.type	_ZN11W5500SocketC2EP16NetworkInterface, %function
 522              	_ZN11W5500SocketC2EP16NetworkInterface:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 0022     		movs	r2, #0
 527 0002 10B4     		push	{r4}
 528 0004 044C     		ldr	r4, .L101
 529 0006 0460     		str	r4, [r0]
 530 0008 4160     		str	r1, [r0, #4]
 531 000a 8260     		str	r2, [r0, #8]
 532 000c 0261     		str	r2, [r0, #16]
 533 000e 0275     		strb	r2, [r0, #20]
 534 0010 8261     		str	r2, [r0, #24]
 535 0012 5DF8044B 		ldr	r4, [sp], #4
 536 0016 7047     		bx	lr
 537              	.L102:
 538              		.align	2
 539              	.L101:
 540 0018 08000000 		.word	.LANCHOR0+8
 541              		.size	_ZN11W5500SocketC2EP16NetworkInterface, .-_ZN11W5500SocketC2EP16NetworkInterface
 542              		.global	_ZN11W5500SocketC1EP16NetworkInterface
 543              		.thumb_set _ZN11W5500SocketC1EP16NetworkInterface,_ZN11W5500SocketC2EP16NetworkInterface
 544              		.section	.text._ZN11W5500Socket6ReInitEv,"ax",%progbits
 545              		.align	1
 546              		.p2align 2,,3
 547              		.global	_ZN11W5500Socket6ReInitEv
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv4-sp-d16
 552              		.type	_ZN11W5500Socket6ReInitEv, %function
 553              	_ZN11W5500Socket6ReInitEv:
 554              		@ args = 0, pretend = 0, frame = 8
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 10B5     		push	{r4, lr}
 557 0002 4168     		ldr	r1, [r0, #4]
 558 0004 82B0     		sub	sp, sp, #8
 559 0006 0446     		mov	r4, r0
 560 0008 0431     		adds	r1, r1, #4
 561 000a 6846     		mov	r0, sp
 562 000c 4FF0FF32 		mov	r2, #-1
 563 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 564 0014 A069     		ldr	r0, [r4, #24]
 565 0016 20B1     		cbz	r0, .L104
 566              	.L105:
 567 0018 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 568 001c A061     		str	r0, [r4, #24]
 569 001e 0028     		cmp	r0, #0
 570 0020 FAD1     		bne	.L105
ARM GAS  /tmp/ccVsN8QH.s 			page 11


 571              	.L104:
 572 0022 0121     		movs	r1, #1
 573 0024 0023     		movs	r3, #0
 574 0026 84F82010 		strb	r1, [r4, #32]
 575 002a 2175     		strb	r1, [r4, #20]
 576 002c 84F82130 		strb	r3, [r4, #33]
 577 0030 84F82430 		strb	r3, [r4, #36]
 578 0034 2289     		ldrh	r2, [r4, #8]
 579 0036 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 580 003a FFF7FEFF 		bl	_Z6sockethhth
 581 003e 6846     		mov	r0, sp
 582 0040 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 583 0044 02B0     		add	sp, sp, #8
 584              		@ sp needed
 585 0046 10BD     		pop	{r4, pc}
 586              		.size	_ZN11W5500Socket6ReInitEv, .-_ZN11W5500Socket6ReInitEv
 587              		.section	.text._ZN11W5500Socket4InitEhth,"ax",%progbits
 588              		.align	1
 589              		.p2align 2,,3
 590              		.global	_ZN11W5500Socket4InitEhth
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv4-sp-d16
 595              		.type	_ZN11W5500Socket4InitEhth, %function
 596              	_ZN11W5500Socket4InitEhth:
 597              		@ args = 0, pretend = 0, frame = 0
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599              		@ link register save eliminated.
 600 0000 10B4     		push	{r4}
 601 0002 80F82210 		strb	r1, [r0, #34]
 602 0006 0281     		strh	r2, [r0, #8]	@ movhi
 603 0008 0373     		strb	r3, [r0, #12]
 604 000a 5DF8044B 		ldr	r4, [sp], #4
 605 000e FFF7FEBF 		b	_ZN11W5500Socket6ReInitEv
 606              		.size	_ZN11W5500Socket4InitEhth, .-_ZN11W5500Socket4InitEhth
 607 0012 00BF     		.section	.text._ZN11W5500Socket11ReceiveDataEv,"ax",%progbits
 608              		.align	1
 609              		.p2align 2,,3
 610              		.global	_ZN11W5500Socket11ReceiveDataEv
 611              		.syntax unified
 612              		.thumb
 613              		.thumb_func
 614              		.fpu fpv4-sp-d16
 615              		.type	_ZN11W5500Socket11ReceiveDataEv, %function
 616              	_ZN11W5500Socket11ReceiveDataEv:
 617              		@ args = 0, pretend = 0, frame = 0
 618              		@ frame_needed = 0, uses_anonymous_args = 0
 619 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 620 0002 0446     		mov	r4, r0
 621 0004 90F82200 		ldrb	r0, [r0, #34]	@ zero_extendqisi2
 622 0008 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 623 000c 00B9     		cbnz	r0, .L130
 624              	.L113:
 625 000e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 626              	.L130:
 627 0010 0546     		mov	r5, r0
ARM GAS  /tmp/ccVsN8QH.s 			page 12


 628 0012 A069     		ldr	r0, [r4, #24]
 629 0014 FFF7FEFF 		bl	_ZN13NetworkBuffer8FindLastEPS_
 630 0018 0646     		mov	r6, r0
 631 001a 20B1     		cbz	r0, .L116
 632 001c 4368     		ldr	r3, [r0, #4]
 633 001e C3F50062 		rsb	r2, r3, #2048
 634 0022 9542     		cmp	r5, r2
 635 0024 26D9     		bls	.L131
 636              	.L116:
 637 0026 04F11806 		add	r6, r4, #24
 638 002a 3046     		mov	r0, r6
 639 002c FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 640 0030 0328     		cmp	r0, #3
 641 0032 ECD8     		bhi	.L113
 642 0034 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 643 0038 0746     		mov	r7, r0
 644 003a 0028     		cmp	r0, #0
 645 003c E7D0     		beq	.L113
 646 003e 2A46     		mov	r2, r5
 647 0040 00F10C01 		add	r1, r0, #12
 648 0044 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 649 0048 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 650 004c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 651 0050 4021     		movs	r1, #64
 652 0052 FFF7FEFF 		bl	_Z11ExecCommandhh
 653 0056 7D60     		str	r5, [r7, #4]
 654 0058 3946     		mov	r1, r7
 655 005a 3046     		mov	r0, r6
 656 005c FFF7FEFF 		bl	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 657 0060 114B     		ldr	r3, .L132
 658 0062 9B6C     		ldr	r3, [r3, #72]
 659 0064 9B07     		lsls	r3, r3, #30
 660 0066 D2D5     		bpl	.L113
 661 0068 2946     		mov	r1, r5
 662 006a 1048     		ldr	r0, .L132+4
 663 006c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 664 0070 FFF7FEBF 		b	debugPrintf
 665              	.L131:
 666 0074 00F10C01 		add	r1, r0, #12
 667 0078 1944     		add	r1, r1, r3
 668 007a 2A46     		mov	r2, r5
 669 007c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 670 0080 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 671 0084 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 672 0088 4021     		movs	r1, #64
 673 008a FFF7FEFF 		bl	_Z11ExecCommandhh
 674 008e 7368     		ldr	r3, [r6, #4]
 675 0090 054A     		ldr	r2, .L132
 676 0092 2B44     		add	r3, r3, r5
 677 0094 7360     		str	r3, [r6, #4]
 678 0096 936C     		ldr	r3, [r2, #72]	@ unaligned
 679 0098 9A07     		lsls	r2, r3, #30
 680 009a B8D5     		bpl	.L113
 681 009c 2946     		mov	r1, r5
 682 009e 0448     		ldr	r0, .L132+8
 683 00a0 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 684 00a4 FFF7FEBF 		b	debugPrintf
ARM GAS  /tmp/ccVsN8QH.s 			page 13


 685              	.L133:
 686              		.align	2
 687              	.L132:
 688 00a8 00000000 		.word	reprap
 689 00ac 14000000 		.word	.LC1
 690 00b0 00000000 		.word	.LC0
 691              		.size	_ZN11W5500Socket11ReceiveDataEv, .-_ZN11W5500Socket11ReceiveDataEv
 692              		.section	.text._ZN11W5500Socket4PollEb,"ax",%progbits
 693              		.align	1
 694              		.p2align 2,,3
 695              		.global	_ZN11W5500Socket4PollEb
 696              		.syntax unified
 697              		.thumb
 698              		.thumb_func
 699              		.fpu fpv4-sp-d16
 700              		.type	_ZN11W5500Socket4PollEb, %function
 701              	_ZN11W5500Socket4PollEb:
 702              		@ args = 0, pretend = 0, frame = 8
 703              		@ frame_needed = 0, uses_anonymous_args = 0
 704 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 705 0002 03B9     		cbnz	r3, .L167
 706 0004 7047     		bx	lr
 707              	.L167:
 708 0006 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 709 000a 0D46     		mov	r5, r1
 710 000c 4168     		ldr	r1, [r0, #4]
 711 000e 83B0     		sub	sp, sp, #12
 712 0010 0446     		mov	r4, r0
 713 0012 0431     		adds	r1, r1, #4
 714 0014 6846     		mov	r0, sp
 715 0016 4FF0FF32 		mov	r2, #-1
 716 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 717 001e 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 718 0022 4001     		lsls	r0, r0, #5
 719 0024 00F54270 		add	r0, r0, #776
 720 0028 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 721 002c 1C28     		cmp	r0, #28
 722 002e 5CD8     		bhi	.L136
 723 0030 DFE800F0 		tbb	[pc, r0]
 724              	.L138:
 725 0034 6C       		.byte	(.L137-.L138)/2
 726 0035 5B       		.byte	(.L136-.L138)/2
 727 0036 5B       		.byte	(.L136-.L138)/2
 728 0037 5B       		.byte	(.L136-.L138)/2
 729 0038 5B       		.byte	(.L136-.L138)/2
 730 0039 5B       		.byte	(.L136-.L138)/2
 731 003a 5B       		.byte	(.L136-.L138)/2
 732 003b 5B       		.byte	(.L136-.L138)/2
 733 003c 5B       		.byte	(.L136-.L138)/2
 734 003d 5B       		.byte	(.L136-.L138)/2
 735 003e 5B       		.byte	(.L136-.L138)/2
 736 003f 5B       		.byte	(.L136-.L138)/2
 737 0040 5B       		.byte	(.L136-.L138)/2
 738 0041 5B       		.byte	(.L136-.L138)/2
 739 0042 5B       		.byte	(.L136-.L138)/2
 740 0043 5B       		.byte	(.L136-.L138)/2
 741 0044 5B       		.byte	(.L136-.L138)/2
ARM GAS  /tmp/ccVsN8QH.s 			page 14


 742 0045 5B       		.byte	(.L136-.L138)/2
 743 0046 5B       		.byte	(.L136-.L138)/2
 744 0047 61       		.byte	(.L139-.L138)/2
 745 0048 5B       		.byte	(.L136-.L138)/2
 746 0049 5B       		.byte	(.L136-.L138)/2
 747 004a 5B       		.byte	(.L136-.L138)/2
 748 004b 0F       		.byte	(.L140-.L138)/2
 749 004c 5B       		.byte	(.L136-.L138)/2
 750 004d 5B       		.byte	(.L136-.L138)/2
 751 004e 5B       		.byte	(.L136-.L138)/2
 752 004f 5B       		.byte	(.L136-.L138)/2
 753 0050 70       		.byte	(.L141-.L138)/2
 754 0051 00       		.p2align 1
 755              	.L140:
 756 0052 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 757 0056 0426     		movs	r6, #4
 758 0058 0127     		movs	r7, #1
 759 005a 16FB0070 		smlabb	r0, r6, r0, r7
 760 005e C000     		lsls	r0, r0, #3
 761 0060 00F50070 		add	r0, r0, #512
 762 0064 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 763 0068 C207     		lsls	r2, r0, #31
 764 006a 2AD5     		bpl	.L143
 765 006c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 766 0070 16FB0070 		smlabb	r0, r6, r0, r7
 767 0074 C000     		lsls	r0, r0, #3
 768 0076 3246     		mov	r2, r6
 769 0078 04F11001 		add	r1, r4, #16
 770 007c 00F54060 		add	r0, r0, #3072
 771 0080 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 772 0084 94F82280 		ldrb	r8, [r4, #34]	@ zero_extendqisi2
 773 0088 16FB0878 		smlabb	r8, r6, r8, r7
 774 008c 4FEAC808 		lsl	r8, r8, #3
 775 0090 08F58050 		add	r0, r8, #4096
 776 0094 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 777 0098 8146     		mov	r9, r0
 778 009a 08F58850 		add	r0, r8, #4352
 779 009e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 780 00a2 94F82230 		ldrb	r3, [r4, #34]	@ zero_extendqisi2
 781 00a6 16FB0376 		smlabb	r6, r6, r3, r7
 782 00aa 00EB0920 		add	r0, r0, r9, lsl #8
 783 00ae F600     		lsls	r6, r6, #3
 784 00b0 6081     		strh	r0, [r4, #10]	@ movhi
 785 00b2 3946     		mov	r1, r7
 786 00b4 06F50070 		add	r0, r6, #512
 787 00b8 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 788 00bc FFF7FEFF 		bl	millis
 789 00c0 E061     		str	r0, [r4, #28]
 790              	.L143:
 791 00c2 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 792 00c4 002D     		cmp	r5, #0
 793 00c6 3ED0     		beq	.L144
 794 00c8 022B     		cmp	r3, #2
 795 00ca 3CD1     		bne	.L144
 796 00cc 1F4D     		ldr	r5, .L168
 797 00ce 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 798 00d0 6868     		ldr	r0, [r5, #4]
ARM GAS  /tmp/ccVsN8QH.s 			page 15


 799 00d2 2146     		mov	r1, r4
 800 00d4 FFF7FEFF 		bl	_ZN7Network13FindResponderEP6Socketh
 801 00d8 10B3     		cbz	r0, .L145
 802 00da 0322     		movs	r2, #3
 803 00dc 0023     		movs	r3, #0
 804 00de 2275     		strb	r2, [r4, #20]
 805 00e0 84F82330 		strb	r3, [r4, #35]
 806              	.L146:
 807 00e4 2046     		mov	r0, r4
 808 00e6 FFF7FEFF 		bl	_ZN11W5500Socket11ReceiveDataEv
 809              	.L136:
 810 00ea 6846     		mov	r0, sp
 811 00ec FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 812 00f0 03B0     		add	sp, sp, #12
 813              		@ sp needed
 814 00f2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 815              	.L139:
 816 00f6 2389     		ldrh	r3, [r4, #8]
 817 00f8 002B     		cmp	r3, #0
 818 00fa F6D0     		beq	.L136
 819 00fc 0221     		movs	r1, #2
 820 00fe 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 821 0102 FFF7FEFF 		bl	_Z11ExecCommandhh
 822 0106 0223     		movs	r3, #2
 823 0108 2375     		strb	r3, [r4, #20]
 824 010a EEE7     		b	.L136
 825              	.L137:
 826 010c 2046     		mov	r0, r4
 827 010e FFF7FEFF 		bl	_ZN11W5500Socket6ReInitEv
 828 0112 EAE7     		b	.L136
 829              	.L141:
 830 0114 2046     		mov	r0, r4
 831 0116 FFF7FEFF 		bl	_ZN11W5500Socket11ReceiveDataEv
 832 011a 0423     		movs	r3, #4
 833 011c 2375     		strb	r3, [r4, #20]
 834 011e E4E7     		b	.L136
 835              	.L145:
 836 0120 FFF7FEFF 		bl	millis
 837 0124 E369     		ldr	r3, [r4, #28]
 838 0126 C31A     		subs	r3, r0, r3
 839 0128 B3F5FA6F 		cmp	r3, #2000
 840 012c 0AD3     		bcc	.L166
 841 012e AB6C     		ldr	r3, [r5, #72]
 842 0130 9B07     		lsls	r3, r3, #30
 843 0132 03D5     		bpl	.L148
 844 0134 2189     		ldrh	r1, [r4, #8]
 845 0136 0648     		ldr	r0, .L168+4
 846 0138 FFF7FEFF 		bl	debugPrintf
 847              	.L148:
 848 013c 2368     		ldr	r3, [r4]
 849 013e 2046     		mov	r0, r4
 850 0140 9B68     		ldr	r3, [r3, #8]
 851 0142 9847     		blx	r3
 852              	.L166:
 853 0144 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 854              	.L144:
 855 0146 032B     		cmp	r3, #3
ARM GAS  /tmp/ccVsN8QH.s 			page 16


 856 0148 CFD1     		bne	.L136
 857 014a CBE7     		b	.L146
 858              	.L169:
 859              		.align	2
 860              	.L168:
 861 014c 00000000 		.word	reprap
 862 0150 00000000 		.word	.LC2
 863              		.size	_ZN11W5500Socket4PollEb, .-_ZN11W5500Socket4PollEb
 864              		.section	.text._ZN11W5500Socket19DiscardReceivedDataEv,"ax",%progbits
 865              		.align	1
 866              		.p2align 2,,3
 867              		.global	_ZN11W5500Socket19DiscardReceivedDataEv
 868              		.syntax unified
 869              		.thumb
 870              		.thumb_func
 871              		.fpu fpv4-sp-d16
 872              		.type	_ZN11W5500Socket19DiscardReceivedDataEv, %function
 873              	_ZN11W5500Socket19DiscardReceivedDataEv:
 874              		@ args = 0, pretend = 0, frame = 0
 875              		@ frame_needed = 0, uses_anonymous_args = 0
 876 0000 10B5     		push	{r4, lr}
 877 0002 0446     		mov	r4, r0
 878 0004 8069     		ldr	r0, [r0, #24]
 879 0006 20B1     		cbz	r0, .L170
 880              	.L172:
 881 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 882 000c A061     		str	r0, [r4, #24]
 883 000e 0028     		cmp	r0, #0
 884 0010 FAD1     		bne	.L172
 885              	.L170:
 886 0012 10BD     		pop	{r4, pc}
 887              		.size	_ZN11W5500Socket19DiscardReceivedDataEv, .-_ZN11W5500Socket19DiscardReceivedDataEv
 888              		.global	_ZTV11W5500Socket
 889              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 890              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 891              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 892              	_ZL28cpu_irq_prev_interrupt_state:
 893 0000 00       		.space	1
 894              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 895              		.align	2
 896              		.type	_ZL32cpu_irq_critical_section_counter, %object
 897              		.size	_ZL32cpu_irq_critical_section_counter, 4
 898              	_ZL32cpu_irq_critical_section_counter:
 899 0000 00000000 		.space	4
 900              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 901              		.align	2
 902              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 903              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 904              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 905 0000 00000000 		.space	4
 906              		.section	.rodata._ZN11W5500Socket11ReceiveDataEv.str1.4,"aMS",%progbits,1
 907              		.align	2
 908              	.LC0:
 909 0000 41707065 		.ascii	"Appended %u bytes\012\000"
 909      6E646564 
 909      20257520 
 909      62797465 
ARM GAS  /tmp/ccVsN8QH.s 			page 17


 909      730A00
 910 0013 00       		.space	1
 911              	.LC1:
 912 0014 52656365 		.ascii	"Received %u bytes\012\000"
 912      69766564 
 912      20257520 
 912      62797465 
 912      730A00
 913              		.section	.rodata._ZN11W5500Socket4PollEb.str1.4,"aMS",%progbits,1
 914              		.align	2
 915              	.LC2:
 916 0000 54696D65 		.ascii	"Timed out waiting for resonder for port %u\012\000"
 916      64206F75 
 916      74207761 
 916      6974696E 
 916      6720666F 
 917              		.section	.rodata._ZTV11W5500Socket,"a",%progbits
 918              		.align	2
 919              		.set	.LANCHOR0,. + 0
 920              		.type	_ZTV11W5500Socket, %object
 921              		.size	_ZTV11W5500Socket, 52
 922              	_ZTV11W5500Socket:
 923 0000 00000000 		.word	0
 924 0004 00000000 		.word	0
 925 0008 00000000 		.word	_ZN11W5500Socket4PollEb
 926 000c 00000000 		.word	_ZN11W5500Socket5CloseEv
 927 0010 00000000 		.word	_ZN11W5500Socket9TerminateEv
 928 0014 00000000 		.word	_ZN11W5500Socket19TerminateAndDisableEv
 929 0018 00000000 		.word	_ZN11W5500Socket8ReadCharERc
 930 001c 00000000 		.word	_ZN11W5500Socket10ReadBufferERPKhRj
 931 0020 00000000 		.word	_ZN11W5500Socket5TakenEj
 932 0024 00000000 		.word	_ZNK11W5500Socket7CanReadEv
 933 0028 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 934 002c 00000000 		.word	_ZN11W5500Socket4SendEPKhj
 935 0030 00000000 		.word	_ZN11W5500Socket4SendEv
 936              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
