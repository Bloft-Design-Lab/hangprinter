ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK11W5500Socket7CanSendEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZNK11W5500Socket7CanSendEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK11W5500Socket7CanSendEv, %function
  24              	_ZNK11W5500Socket7CanSendEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
  29 0002 A0F10300 		sub	r0, #3
  30 0006 B0FA80F0 		clz	r0, r0
  31 000a 4009     		lsrs	r0, r0, #5
  32 000c 7047     		bx	lr
  33              		.size	_ZNK11W5500Socket7CanSendEv, .-_ZNK11W5500Socket7CanSendEv
  34 000e 00BF     		.section	.text._ZN11W5500Socket10ReadBufferERPKhRj,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN11W5500Socket10ReadBufferERPKhRj
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN11W5500Socket10ReadBufferERPKhRj, %function
  43              	_ZN11W5500Socket10ReadBufferERPKhRj:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 8069     		ldr	r0, [r0, #24]
  48 0002 60B1     		cbz	r0, .L7
  49 0004 10B4     		push	{r4}
  50 0006 D0E90134 		ldrd	r3, r4, [r0, #4]
  51 000a 1B1B     		subs	r3, r3, r4
  52 000c 1360     		str	r3, [r2]
  53 000e 8368     		ldr	r3, [r0, #8]
  54 0010 5DF8044B 		ldr	r4, [sp], #4
  55 0014 0C30     		adds	r0, r0, #12
  56 0016 1844     		add	r0, r0, r3
  57 0018 0860     		str	r0, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 2


  58 001a 0120     		movs	r0, #1
  59 001c 7047     		bx	lr
  60              	.L7:
  61 001e 7047     		bx	lr
  62              		.size	_ZN11W5500Socket10ReadBufferERPKhRj, .-_ZN11W5500Socket10ReadBufferERPKhRj
  63              		.section	.text._ZN11W5500Socket19TerminateAndDisableEv,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	_ZN11W5500Socket19TerminateAndDisableEv
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	_ZN11W5500Socket19TerminateAndDisableEv, %function
  72              	_ZN11W5500Socket19TerminateAndDisableEv:
  73              		@ args = 0, pretend = 0, frame = 8
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75 0000 10B5     		push	{r4, lr}
  76 0002 4168     		ldr	r1, [r0, #4]
  77 0004 82B0     		sub	sp, sp, #8
  78 0006 0446     		mov	r4, r0
  79 0008 0431     		adds	r1, r1, #4
  80 000a 4FF0FF32 		mov	r2, #-1
  81 000e 6846     		mov	r0, sp
  82 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
  83 0014 2368     		ldr	r3, [r4]
  84 0016 2046     		mov	r0, r4
  85 0018 9B68     		ldr	r3, [r3, #8]
  86 001a 9847     		blx	r3
  87 001c 0023     		movs	r3, #0
  88 001e 6846     		mov	r0, sp
  89 0020 2375     		strb	r3, [r4, #20]
  90 0022 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
  91 0026 02B0     		add	sp, sp, #8
  92              		@ sp needed
  93 0028 10BD     		pop	{r4, pc}
  94              		.size	_ZN11W5500Socket19TerminateAndDisableEv, .-_ZN11W5500Socket19TerminateAndDisableEv
  95 002a 00BF     		.section	.text._ZN11W5500Socket5TakenEj,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN11W5500Socket5TakenEj
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	_ZN11W5500Socket5TakenEj, %function
 104              	_ZN11W5500Socket5TakenEj:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107 0000 8369     		ldr	r3, [r0, #24]
 108 0002 3BB1     		cbz	r3, .L17
 109 0004 10B5     		push	{r4, lr}
 110 0006 D3E90124 		ldrd	r2, r4, [r3, #4]
 111 000a 2144     		add	r1, r1, r4
 112 000c 8A42     		cmp	r2, r1
 113 000e 9960     		str	r1, [r3, #8]
 114 0010 01D0     		beq	.L20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 3


 115 0012 10BD     		pop	{r4, pc}
 116              	.L17:
 117 0014 7047     		bx	lr
 118              	.L20:
 119 0016 0446     		mov	r4, r0
 120 0018 1846     		mov	r0, r3
 121 001a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 122 001e A061     		str	r0, [r4, #24]
 123 0020 10BD     		pop	{r4, pc}
 124              		.size	_ZN11W5500Socket5TakenEj, .-_ZN11W5500Socket5TakenEj
 125 0022 00BF     		.section	.text._ZN11W5500Socket5CloseEv,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN11W5500Socket5CloseEv
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN11W5500Socket5CloseEv, %function
 134              	_ZN11W5500Socket5CloseEv:
 135              		@ args = 0, pretend = 0, frame = 8
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 10B5     		push	{r4, lr}
 138 0002 4168     		ldr	r1, [r0, #4]
 139 0004 82B0     		sub	sp, sp, #8
 140 0006 0446     		mov	r4, r0
 141 0008 0431     		adds	r1, r1, #4
 142 000a 6846     		mov	r0, sp
 143 000c 4FF0FF32 		mov	r2, #-1
 144 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 145 0014 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 146 0016 012B     		cmp	r3, #1
 147 0018 12D9     		bls	.L23
 148 001a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 149 001e 0821     		movs	r1, #8
 150 0020 FFF7FEFF 		bl	_Z11ExecCommandhh
 151 0024 A069     		ldr	r0, [r4, #24]
 152 0026 0523     		movs	r3, #5
 153 0028 2375     		strb	r3, [r4, #20]
 154 002a 20B1     		cbz	r0, .L24
 155              	.L25:
 156 002c FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 157 0030 A061     		str	r0, [r4, #24]
 158 0032 0028     		cmp	r0, #0
 159 0034 FAD1     		bne	.L25
 160              	.L24:
 161 0036 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 162 0038 032B     		cmp	r3, #3
 163 003a 04BF     		itt	eq
 164 003c 0023     		moveq	r3, #0
 165 003e 2381     		strheq	r3, [r4, #8]	@ movhi
 166              	.L23:
 167 0040 6846     		mov	r0, sp
 168 0042 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 169 0046 02B0     		add	sp, sp, #8
 170              		@ sp needed
 171 0048 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 4


 172              		.size	_ZN11W5500Socket5CloseEv, .-_ZN11W5500Socket5CloseEv
 173 004a 00BF     		.section	.text._ZN11W5500Socket9TerminateEv,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZN11W5500Socket9TerminateEv
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZN11W5500Socket9TerminateEv, %function
 182              	_ZN11W5500Socket9TerminateEv:
 183              		@ args = 0, pretend = 0, frame = 8
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 10B5     		push	{r4, lr}
 186 0002 4168     		ldr	r1, [r0, #4]
 187 0004 82B0     		sub	sp, sp, #8
 188 0006 0446     		mov	r4, r0
 189 0008 0431     		adds	r1, r1, #4
 190 000a 6846     		mov	r0, sp
 191 000c 4FF0FF32 		mov	r2, #-1
 192 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 193 0014 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 194 0016 23B9     		cbnz	r3, .L43
 195              	.L33:
 196 0018 6846     		mov	r0, sp
 197 001a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 198 001e 02B0     		add	sp, sp, #8
 199              		@ sp needed
 200 0020 10BD     		pop	{r4, pc}
 201              	.L43:
 202 0022 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 203 0026 FFF7FEFF 		bl	_Z16disconnectNoWaith
 204 002a A069     		ldr	r0, [r4, #24]
 205 002c 0123     		movs	r3, #1
 206 002e 84F82130 		strb	r3, [r4, #33]
 207 0032 2375     		strb	r3, [r4, #20]
 208 0034 0028     		cmp	r0, #0
 209 0036 EFD0     		beq	.L33
 210              	.L34:
 211 0038 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 212 003c A061     		str	r0, [r4, #24]
 213 003e 0028     		cmp	r0, #0
 214 0040 FAD1     		bne	.L34
 215 0042 6846     		mov	r0, sp
 216 0044 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 217 0048 02B0     		add	sp, sp, #8
 218              		@ sp needed
 219 004a 10BD     		pop	{r4, pc}
 220              		.size	_ZN11W5500Socket9TerminateEv, .-_ZN11W5500Socket9TerminateEv
 221              		.section	.text._ZNK11W5500Socket7CanReadEv,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK11W5500Socket7CanReadEv
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 5


 229              		.type	_ZNK11W5500Socket7CanReadEv, %function
 230              	_ZNK11W5500Socket7CanReadEv:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 08B5     		push	{r3, lr}
 234 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 235 0004 032B     		cmp	r3, #3
 236 0006 0CD0     		beq	.L46
 237 0008 042B     		cmp	r3, #4
 238 000a 01D0     		beq	.L50
 239 000c 0020     		movs	r0, #0
 240              	.L45:
 241 000e 08BD     		pop	{r3, pc}
 242              	.L50:
 243 0010 8069     		ldr	r0, [r0, #24]
 244 0012 0028     		cmp	r0, #0
 245 0014 FBD0     		beq	.L45
 246 0016 FFF7FEFF 		bl	_ZNK13NetworkBuffer14TotalRemainingEv
 247 001a 0030     		adds	r0, r0, #0
 248 001c 18BF     		it	ne
 249 001e 0120     		movne	r0, #1
 250 0020 08BD     		pop	{r3, pc}
 251              	.L46:
 252 0022 0120     		movs	r0, #1
 253 0024 08BD     		pop	{r3, pc}
 254              		.size	_ZNK11W5500Socket7CanReadEv, .-_ZNK11W5500Socket7CanReadEv
 255 0026 00BF     		.section	.text._ZN11W5500Socket8ReadCharERc,"ax",%progbits
 256              		.align	1
 257              		.p2align 2,,3
 258              		.global	_ZN11W5500Socket8ReadCharERc
 259              		.syntax unified
 260              		.thumb
 261              		.thumb_func
 262              		.fpu fpv4-sp-d16
 263              		.type	_ZN11W5500Socket8ReadCharERc, %function
 264              	_ZN11W5500Socket8ReadCharERc:
 265              		@ args = 0, pretend = 0, frame = 8
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 267 0000 30B5     		push	{r4, r5, lr}
 268 0002 8469     		ldr	r4, [r0, #24]
 269 0004 83B0     		sub	sp, sp, #12
 270 0006 C4B1     		cbz	r4, .L52
 271 0008 0C46     		mov	r4, r1
 272 000a 4168     		ldr	r1, [r0, #4]
 273 000c 0546     		mov	r5, r0
 274 000e 4FF0FF32 		mov	r2, #-1
 275 0012 0431     		adds	r1, r1, #4
 276 0014 6846     		mov	r0, sp
 277 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 278 001a 2146     		mov	r1, r4
 279 001c A869     		ldr	r0, [r5, #24]
 280 001e FFF7FEFF 		bl	_ZN13NetworkBuffer8ReadCharERc
 281 0022 0446     		mov	r4, r0
 282 0024 A869     		ldr	r0, [r5, #24]
 283 0026 D0E90123 		ldrd	r2, r3, [r0, #4]
 284 002a 9A42     		cmp	r2, r3
 285 002c 09D0     		beq	.L56
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 6


 286              	.L53:
 287 002e 6846     		mov	r0, sp
 288 0030 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 289 0034 2046     		mov	r0, r4
 290 0036 03B0     		add	sp, sp, #12
 291              		@ sp needed
 292 0038 30BD     		pop	{r4, r5, pc}
 293              	.L52:
 294 003a 2046     		mov	r0, r4
 295 003c 0C70     		strb	r4, [r1]
 296 003e 03B0     		add	sp, sp, #12
 297              		@ sp needed
 298 0040 30BD     		pop	{r4, r5, pc}
 299              	.L56:
 300 0042 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 301 0046 A861     		str	r0, [r5, #24]
 302 0048 F1E7     		b	.L53
 303              		.size	_ZN11W5500Socket8ReadCharERc, .-_ZN11W5500Socket8ReadCharERc
 304 004a 00BF     		.section	.text._ZN11W5500Socket4SendEv,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	_ZN11W5500Socket4SendEv
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 312              		.type	_ZN11W5500Socket4SendEv, %function
 313              	_ZN11W5500Socket4SendEv:
 314              		@ args = 0, pretend = 0, frame = 8
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 317 0002 4168     		ldr	r1, [r0, #4]
 318 0004 83B0     		sub	sp, sp, #12
 319 0006 0446     		mov	r4, r0
 320 0008 4FF0FF32 		mov	r2, #-1
 321 000c 6846     		mov	r0, sp
 322 000e 0431     		adds	r1, r1, #4
 323 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 324 0014 2368     		ldr	r3, [r4]
 325 0016 1B4A     		ldr	r2, .L69
 326 0018 1B6A     		ldr	r3, [r3, #32]
 327 001a 9342     		cmp	r3, r2
 328 001c 0ED1     		bne	.L58
 329 001e 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 330 0020 A0F10300 		sub	r0, #3
 331 0024 B0FA80F0 		clz	r0, r0
 332 0028 4009     		lsrs	r0, r0, #5
 333              	.L59:
 334 002a 10B1     		cbz	r0, .L60
 335 002c 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 336 0030 3BB9     		cbnz	r3, .L68
 337              	.L60:
 338 0032 6846     		mov	r0, sp
 339 0034 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 340 0038 03B0     		add	sp, sp, #12
 341              		@ sp needed
 342 003a F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 7


 343              	.L58:
 344 003c 2046     		mov	r0, r4
 345 003e 9847     		blx	r3
 346 0040 F3E7     		b	.L59
 347              	.L68:
 348 0042 94F82250 		ldrb	r5, [r4, #34]	@ zero_extendqisi2
 349 0046 E78C     		ldrh	r7, [r4, #38]
 350 0048 0126     		movs	r6, #1
 351 004a 06EB8505 		add	r5, r6, r5, lsl #2
 352 004e ED00     		lsls	r5, r5, #3
 353 0050 05F51050 		add	r0, r5, #9216
 354 0054 390A     		lsrs	r1, r7, #8
 355 0056 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 356 005a 05F51450 		add	r0, r5, #9472
 357 005e F9B2     		uxtb	r1, r7
 358 0060 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 359 0064 2021     		movs	r1, #32
 360 0066 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 361 006a FFF7FEFF 		bl	_Z11ExecCommandhh
 362 006e 0023     		movs	r3, #0
 363 0070 84F82460 		strb	r6, [r4, #36]
 364 0074 84F82330 		strb	r3, [r4, #35]
 365 0078 6846     		mov	r0, sp
 366 007a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 367 007e 03B0     		add	sp, sp, #12
 368              		@ sp needed
 369 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 370              	.L70:
 371 0082 00BF     		.align	2
 372              	.L69:
 373 0084 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 374              		.size	_ZN11W5500Socket4SendEv, .-_ZN11W5500Socket4SendEv
 375              		.section	.text._ZN11W5500Socket4SendEPKhj,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	_ZN11W5500Socket4SendEPKhj
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu fpv4-sp-d16
 383              		.type	_ZN11W5500Socket4SendEPKhj, %function
 384              	_ZN11W5500Socket4SendEPKhj:
 385              		@ args = 0, pretend = 0, frame = 8
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 388 0004 4368     		ldr	r3, [r0, #4]
 389 0006 83B0     		sub	sp, sp, #12
 390 0008 0446     		mov	r4, r0
 391 000a 0E46     		mov	r6, r1
 392 000c 1746     		mov	r7, r2
 393 000e 191D     		adds	r1, r3, #4
 394 0010 4FF0FF32 		mov	r2, #-1
 395 0014 6846     		mov	r0, sp
 396 0016 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 397 001a 2368     		ldr	r3, [r4]
 398 001c 444A     		ldr	r2, .L97
 399 001e 1B6A     		ldr	r3, [r3, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 8


 400 0020 9342     		cmp	r3, r2
 401 0022 0FD1     		bne	.L72
 402 0024 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 403 0026 A0F10300 		sub	r0, #3
 404 002a B0FA80F0 		clz	r0, r0
 405 002e 4009     		lsrs	r0, r0, #5
 406              	.L73:
 407 0030 00B1     		cbz	r0, .L76
 408 0032 57B9     		cbnz	r7, .L94
 409              	.L76:
 410 0034 0025     		movs	r5, #0
 411              	.L75:
 412 0036 6846     		mov	r0, sp
 413 0038 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 414 003c 2846     		mov	r0, r5
 415 003e 03B0     		add	sp, sp, #12
 416              		@ sp needed
 417 0040 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 418              	.L72:
 419 0044 2046     		mov	r0, r4
 420 0046 9847     		blx	r3
 421 0048 F2E7     		b	.L73
 422              	.L94:
 423 004a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 424 004e 4FF00408 		mov	r8, #4
 425 0052 4FF00109 		mov	r9, #1
 426 0056 18FB0090 		smlabb	r0, r8, r0, r9
 427 005a C000     		lsls	r0, r0, #3
 428 005c 00F54070 		add	r0, r0, #768
 429 0060 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 430 0064 1728     		cmp	r0, #23
 431 0066 E5D1     		bne	.L76
 432 0068 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 433 006c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 434 0070 002B     		cmp	r3, #0
 435 0072 38D1     		bne	.L95
 436              	.L77:
 437 0074 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 438 0078 D3B1     		cbz	r3, .L79
 439 007a E38C     		ldrh	r3, [r4, #38]
 440              	.L80:
 441 007c 258D     		ldrh	r5, [r4, #40]
 442 007e BD42     		cmp	r5, r7
 443 0080 28BF     		it	cs
 444 0082 3D46     		movcs	r5, r7
 445 0084 AFB2     		uxth	r7, r5
 446 0086 3A46     		mov	r2, r7
 447 0088 3146     		mov	r1, r6
 448 008a FFF7FEFF 		bl	_Z16wiz_send_data_athPKhtt
 449 008e 238D     		ldrh	r3, [r4, #40]
 450 0090 E28C     		ldrh	r2, [r4, #38]
 451 0092 DB1B     		subs	r3, r3, r7
 452 0094 9BB2     		uxth	r3, r3
 453 0096 1744     		add	r7, r7, r2
 454 0098 0122     		movs	r2, #1
 455 009a 2385     		strh	r3, [r4, #40]	@ movhi
 456 009c E784     		strh	r7, [r4, #38]	@ movhi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 9


 457 009e 84F82320 		strb	r2, [r4, #35]
 458 00a2 002B     		cmp	r3, #0
 459 00a4 C7D1     		bne	.L75
 460 00a6 2368     		ldr	r3, [r4]
 461 00a8 2046     		mov	r0, r4
 462 00aa 9B6A     		ldr	r3, [r3, #40]
 463 00ac 9847     		blx	r3
 464 00ae C2E7     		b	.L75
 465              	.L79:
 466 00b0 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 467 00b4 2085     		strh	r0, [r4, #40]	@ movhi
 468 00b6 0028     		cmp	r0, #0
 469 00b8 BCD0     		beq	.L76
 470 00ba 94F82280 		ldrb	r8, [r4, #34]	@ zero_extendqisi2
 471 00be 4FEA4818 		lsl	r8, r8, #5
 472 00c2 08F10808 		add	r8, r8, #8
 473 00c6 08F51050 		add	r0, r8, #9216
 474 00ca FFF7FEFF 		bl	_Z12WIZCHIP_READm
 475 00ce 0546     		mov	r5, r0
 476 00d0 08F51450 		add	r0, r8, #9472
 477 00d4 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 478 00d8 00EB0523 		add	r3, r0, r5, lsl #8
 479 00dc 9BB2     		uxth	r3, r3
 480 00de 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 481 00e2 E384     		strh	r3, [r4, #38]	@ movhi
 482 00e4 CAE7     		b	.L80
 483              	.L95:
 484 00e6 18FB0090 		smlabb	r0, r8, r0, r9
 485 00ea C000     		lsls	r0, r0, #3
 486 00ec 00F50070 		add	r0, r0, #512
 487 00f0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 488 00f4 10F01005 		ands	r5, r0, #16
 489 00f8 0AD1     		bne	.L96
 490 00fa 0307     		lsls	r3, r0, #28
 491 00fc 9AD5     		bpl	.L76
 492 00fe 84F82450 		strb	r5, [r4, #36]
 493 0102 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 494 0106 FFF7FEFF 		bl	_Z16disconnectNoWaith
 495 010a 0623     		movs	r3, #6
 496 010c 2375     		strb	r3, [r4, #20]
 497 010e 92E7     		b	.L75
 498              	.L96:
 499 0110 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 500 0114 18FB0090 		smlabb	r0, r8, r0, r9
 501 0118 C000     		lsls	r0, r0, #3
 502 011a 00F50070 		add	r0, r0, #512
 503 011e 1021     		movs	r1, #16
 504 0120 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 505 0124 0023     		movs	r3, #0
 506 0126 84F82430 		strb	r3, [r4, #36]
 507 012a 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 508 012e A1E7     		b	.L77
 509              	.L98:
 510              		.align	2
 511              	.L97:
 512 0130 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 513              		.size	_ZN11W5500Socket4SendEPKhj, .-_ZN11W5500Socket4SendEPKhj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 10


 514              		.section	.text._ZN11W5500SocketC2EP16NetworkInterface,"ax",%progbits
 515              		.align	1
 516              		.p2align 2,,3
 517              		.global	_ZN11W5500SocketC2EP16NetworkInterface
 518              		.syntax unified
 519              		.thumb
 520              		.thumb_func
 521              		.fpu fpv4-sp-d16
 522              		.type	_ZN11W5500SocketC2EP16NetworkInterface, %function
 523              	_ZN11W5500SocketC2EP16NetworkInterface:
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526              		@ link register save eliminated.
 527 0000 0022     		movs	r2, #0
 528 0002 10B4     		push	{r4}
 529 0004 044C     		ldr	r4, .L101
 530 0006 0460     		str	r4, [r0]
 531 0008 4160     		str	r1, [r0, #4]
 532 000a 8260     		str	r2, [r0, #8]
 533 000c 0261     		str	r2, [r0, #16]
 534 000e 0275     		strb	r2, [r0, #20]
 535 0010 8261     		str	r2, [r0, #24]
 536 0012 5DF8044B 		ldr	r4, [sp], #4
 537 0016 7047     		bx	lr
 538              	.L102:
 539              		.align	2
 540              	.L101:
 541 0018 08000000 		.word	.LANCHOR0+8
 542              		.size	_ZN11W5500SocketC2EP16NetworkInterface, .-_ZN11W5500SocketC2EP16NetworkInterface
 543              		.global	_ZN11W5500SocketC1EP16NetworkInterface
 544              		.thumb_set _ZN11W5500SocketC1EP16NetworkInterface,_ZN11W5500SocketC2EP16NetworkInterface
 545              		.section	.text._ZN11W5500Socket6ReInitEv,"ax",%progbits
 546              		.align	1
 547              		.p2align 2,,3
 548              		.global	_ZN11W5500Socket6ReInitEv
 549              		.syntax unified
 550              		.thumb
 551              		.thumb_func
 552              		.fpu fpv4-sp-d16
 553              		.type	_ZN11W5500Socket6ReInitEv, %function
 554              	_ZN11W5500Socket6ReInitEv:
 555              		@ args = 0, pretend = 0, frame = 8
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557 0000 10B5     		push	{r4, lr}
 558 0002 4168     		ldr	r1, [r0, #4]
 559 0004 82B0     		sub	sp, sp, #8
 560 0006 0446     		mov	r4, r0
 561 0008 0431     		adds	r1, r1, #4
 562 000a 6846     		mov	r0, sp
 563 000c 4FF0FF32 		mov	r2, #-1
 564 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 565 0014 A069     		ldr	r0, [r4, #24]
 566 0016 20B1     		cbz	r0, .L104
 567              	.L105:
 568 0018 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 569 001c A061     		str	r0, [r4, #24]
 570 001e 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 11


 571 0020 FAD1     		bne	.L105
 572              	.L104:
 573 0022 0121     		movs	r1, #1
 574 0024 0023     		movs	r3, #0
 575 0026 84F82010 		strb	r1, [r4, #32]
 576 002a 2175     		strb	r1, [r4, #20]
 577 002c 84F82130 		strb	r3, [r4, #33]
 578 0030 84F82430 		strb	r3, [r4, #36]
 579 0034 2289     		ldrh	r2, [r4, #8]
 580 0036 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 581 003a FFF7FEFF 		bl	_Z6sockethhth
 582 003e 6846     		mov	r0, sp
 583 0040 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 584 0044 02B0     		add	sp, sp, #8
 585              		@ sp needed
 586 0046 10BD     		pop	{r4, pc}
 587              		.size	_ZN11W5500Socket6ReInitEv, .-_ZN11W5500Socket6ReInitEv
 588              		.section	.text._ZN11W5500Socket4InitEhth,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	_ZN11W5500Socket4InitEhth
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	_ZN11W5500Socket4InitEhth, %function
 597              	_ZN11W5500Socket4InitEhth:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600              		@ link register save eliminated.
 601 0000 10B4     		push	{r4}
 602 0002 80F82210 		strb	r1, [r0, #34]
 603 0006 0281     		strh	r2, [r0, #8]	@ movhi
 604 0008 0373     		strb	r3, [r0, #12]
 605 000a 5DF8044B 		ldr	r4, [sp], #4
 606 000e FFF7FEBF 		b	_ZN11W5500Socket6ReInitEv
 607              		.size	_ZN11W5500Socket4InitEhth, .-_ZN11W5500Socket4InitEhth
 608 0012 00BF     		.section	.text._ZN11W5500Socket11ReceiveDataEv,"ax",%progbits
 609              		.align	1
 610              		.p2align 2,,3
 611              		.global	_ZN11W5500Socket11ReceiveDataEv
 612              		.syntax unified
 613              		.thumb
 614              		.thumb_func
 615              		.fpu fpv4-sp-d16
 616              		.type	_ZN11W5500Socket11ReceiveDataEv, %function
 617              	_ZN11W5500Socket11ReceiveDataEv:
 618              		@ args = 0, pretend = 0, frame = 0
 619              		@ frame_needed = 0, uses_anonymous_args = 0
 620 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 621 0002 0446     		mov	r4, r0
 622 0004 90F82200 		ldrb	r0, [r0, #34]	@ zero_extendqisi2
 623 0008 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 624 000c 00B9     		cbnz	r0, .L130
 625              	.L113:
 626 000e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 627              	.L130:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 12


 628 0010 0546     		mov	r5, r0
 629 0012 A069     		ldr	r0, [r4, #24]
 630 0014 FFF7FEFF 		bl	_ZN13NetworkBuffer8FindLastEPS_
 631 0018 0646     		mov	r6, r0
 632 001a 20B1     		cbz	r0, .L116
 633 001c 4368     		ldr	r3, [r0, #4]
 634 001e C3F50062 		rsb	r2, r3, #2048
 635 0022 9542     		cmp	r5, r2
 636 0024 27D9     		bls	.L131
 637              	.L116:
 638 0026 04F11806 		add	r6, r4, #24
 639 002a 3046     		mov	r0, r6
 640 002c FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 641 0030 0328     		cmp	r0, #3
 642 0032 ECD8     		bhi	.L113
 643 0034 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 644 0038 0746     		mov	r7, r0
 645 003a 0028     		cmp	r0, #0
 646 003c E7D0     		beq	.L113
 647 003e 2A46     		mov	r2, r5
 648 0040 00F10C01 		add	r1, r0, #12
 649 0044 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 650 0048 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 651 004c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 652 0050 4021     		movs	r1, #64
 653 0052 FFF7FEFF 		bl	_Z11ExecCommandhh
 654 0056 7D60     		str	r5, [r7, #4]
 655 0058 3946     		mov	r1, r7
 656 005a 3046     		mov	r0, r6
 657 005c FFF7FEFF 		bl	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 658 0060 124B     		ldr	r3, .L132
 659 0062 D3F80831 		ldr	r3, [r3, #264]
 660 0066 9B07     		lsls	r3, r3, #30
 661 0068 D1D5     		bpl	.L113
 662 006a 2946     		mov	r1, r5
 663 006c 1048     		ldr	r0, .L132+4
 664 006e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 665 0072 FFF7FEBF 		b	debugPrintf
 666              	.L131:
 667 0076 00F10C01 		add	r1, r0, #12
 668 007a 1944     		add	r1, r1, r3
 669 007c 2A46     		mov	r2, r5
 670 007e 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 671 0082 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 672 0086 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 673 008a 4021     		movs	r1, #64
 674 008c FFF7FEFF 		bl	_Z11ExecCommandhh
 675 0090 7368     		ldr	r3, [r6, #4]
 676 0092 064A     		ldr	r2, .L132
 677 0094 2B44     		add	r3, r3, r5
 678 0096 7360     		str	r3, [r6, #4]
 679 0098 D2F80831 		ldr	r3, [r2, #264]	@ unaligned
 680 009c 9A07     		lsls	r2, r3, #30
 681 009e B6D5     		bpl	.L113
 682 00a0 2946     		mov	r1, r5
 683 00a2 0448     		ldr	r0, .L132+8
 684 00a4 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 13


 685 00a8 FFF7FEBF 		b	debugPrintf
 686              	.L133:
 687              		.align	2
 688              	.L132:
 689 00ac 00000000 		.word	reprap
 690 00b0 14000000 		.word	.LC1
 691 00b4 00000000 		.word	.LC0
 692              		.size	_ZN11W5500Socket11ReceiveDataEv, .-_ZN11W5500Socket11ReceiveDataEv
 693              		.section	.text._ZN11W5500Socket4PollEb,"ax",%progbits
 694              		.align	1
 695              		.p2align 2,,3
 696              		.global	_ZN11W5500Socket4PollEb
 697              		.syntax unified
 698              		.thumb
 699              		.thumb_func
 700              		.fpu fpv4-sp-d16
 701              		.type	_ZN11W5500Socket4PollEb, %function
 702              	_ZN11W5500Socket4PollEb:
 703              		@ args = 0, pretend = 0, frame = 8
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 706 0002 03B9     		cbnz	r3, .L167
 707 0004 7047     		bx	lr
 708              	.L167:
 709 0006 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 710 000a 0D46     		mov	r5, r1
 711 000c 4168     		ldr	r1, [r0, #4]
 712 000e 83B0     		sub	sp, sp, #12
 713 0010 0446     		mov	r4, r0
 714 0012 0431     		adds	r1, r1, #4
 715 0014 6846     		mov	r0, sp
 716 0016 4FF0FF32 		mov	r2, #-1
 717 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 718 001e 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 719 0022 4001     		lsls	r0, r0, #5
 720 0024 00F54270 		add	r0, r0, #776
 721 0028 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 722 002c 1C28     		cmp	r0, #28
 723 002e 5BD8     		bhi	.L136
 724 0030 DFE800F0 		tbb	[pc, r0]
 725              	.L138:
 726 0034 6B       		.byte	(.L137-.L138)/2
 727 0035 5A       		.byte	(.L136-.L138)/2
 728 0036 5A       		.byte	(.L136-.L138)/2
 729 0037 5A       		.byte	(.L136-.L138)/2
 730 0038 5A       		.byte	(.L136-.L138)/2
 731 0039 5A       		.byte	(.L136-.L138)/2
 732 003a 5A       		.byte	(.L136-.L138)/2
 733 003b 5A       		.byte	(.L136-.L138)/2
 734 003c 5A       		.byte	(.L136-.L138)/2
 735 003d 5A       		.byte	(.L136-.L138)/2
 736 003e 5A       		.byte	(.L136-.L138)/2
 737 003f 5A       		.byte	(.L136-.L138)/2
 738 0040 5A       		.byte	(.L136-.L138)/2
 739 0041 5A       		.byte	(.L136-.L138)/2
 740 0042 5A       		.byte	(.L136-.L138)/2
 741 0043 5A       		.byte	(.L136-.L138)/2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 14


 742 0044 5A       		.byte	(.L136-.L138)/2
 743 0045 5A       		.byte	(.L136-.L138)/2
 744 0046 5A       		.byte	(.L136-.L138)/2
 745 0047 60       		.byte	(.L139-.L138)/2
 746 0048 5A       		.byte	(.L136-.L138)/2
 747 0049 5A       		.byte	(.L136-.L138)/2
 748 004a 5A       		.byte	(.L136-.L138)/2
 749 004b 0F       		.byte	(.L140-.L138)/2
 750 004c 5A       		.byte	(.L136-.L138)/2
 751 004d 5A       		.byte	(.L136-.L138)/2
 752 004e 5A       		.byte	(.L136-.L138)/2
 753 004f 5A       		.byte	(.L136-.L138)/2
 754 0050 6F       		.byte	(.L141-.L138)/2
 755 0051 00       		.p2align 1
 756              	.L140:
 757 0052 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 758 0056 0426     		movs	r6, #4
 759 0058 0127     		movs	r7, #1
 760 005a 16FB0070 		smlabb	r0, r6, r0, r7
 761 005e C000     		lsls	r0, r0, #3
 762 0060 00F50070 		add	r0, r0, #512
 763 0064 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 764 0068 C207     		lsls	r2, r0, #31
 765 006a 29D5     		bpl	.L143
 766 006c 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 767 0070 16FB0070 		smlabb	r0, r6, r0, r7
 768 0074 C000     		lsls	r0, r0, #3
 769 0076 04F11001 		add	r1, r4, #16
 770 007a 00F54060 		add	r0, r0, #3072
 771 007e FFF7FEFF 		bl	_Z15WIZCHIP_READ_IPmR9IPAddress
 772 0082 94F82280 		ldrb	r8, [r4, #34]	@ zero_extendqisi2
 773 0086 16FB0878 		smlabb	r8, r6, r8, r7
 774 008a 4FEAC808 		lsl	r8, r8, #3
 775 008e 08F58050 		add	r0, r8, #4096
 776 0092 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 777 0096 8146     		mov	r9, r0
 778 0098 08F58850 		add	r0, r8, #4352
 779 009c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 780 00a0 94F82230 		ldrb	r3, [r4, #34]	@ zero_extendqisi2
 781 00a4 16FB0376 		smlabb	r6, r6, r3, r7
 782 00a8 00EB0920 		add	r0, r0, r9, lsl #8
 783 00ac F600     		lsls	r6, r6, #3
 784 00ae 6081     		strh	r0, [r4, #10]	@ movhi
 785 00b0 3946     		mov	r1, r7
 786 00b2 06F50070 		add	r0, r6, #512
 787 00b6 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 788 00ba FFF7FEFF 		bl	millis
 789 00be E061     		str	r0, [r4, #28]
 790              	.L143:
 791 00c0 237D     		ldrb	r3, [r4, #20]	@ zero_extendqisi2
 792 00c2 002D     		cmp	r5, #0
 793 00c4 3FD0     		beq	.L144
 794 00c6 022B     		cmp	r3, #2
 795 00c8 3DD1     		bne	.L144
 796 00ca 204D     		ldr	r5, .L168
 797 00cc 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 798 00ce A868     		ldr	r0, [r5, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 15


 799 00d0 2146     		mov	r1, r4
 800 00d2 FFF7FEFF 		bl	_ZN7Network13FindResponderEP6Socketh
 801 00d6 10B3     		cbz	r0, .L145
 802 00d8 0322     		movs	r2, #3
 803 00da 0023     		movs	r3, #0
 804 00dc 2275     		strb	r2, [r4, #20]
 805 00de 84F82330 		strb	r3, [r4, #35]
 806              	.L146:
 807 00e2 2046     		mov	r0, r4
 808 00e4 FFF7FEFF 		bl	_ZN11W5500Socket11ReceiveDataEv
 809              	.L136:
 810 00e8 6846     		mov	r0, sp
 811 00ea FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 812 00ee 03B0     		add	sp, sp, #12
 813              		@ sp needed
 814 00f0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 815              	.L139:
 816 00f4 2389     		ldrh	r3, [r4, #8]
 817 00f6 002B     		cmp	r3, #0
 818 00f8 F6D0     		beq	.L136
 819 00fa 0221     		movs	r1, #2
 820 00fc 94F82200 		ldrb	r0, [r4, #34]	@ zero_extendqisi2
 821 0100 FFF7FEFF 		bl	_Z11ExecCommandhh
 822 0104 0223     		movs	r3, #2
 823 0106 2375     		strb	r3, [r4, #20]
 824 0108 EEE7     		b	.L136
 825              	.L137:
 826 010a 2046     		mov	r0, r4
 827 010c FFF7FEFF 		bl	_ZN11W5500Socket6ReInitEv
 828 0110 EAE7     		b	.L136
 829              	.L141:
 830 0112 2046     		mov	r0, r4
 831 0114 FFF7FEFF 		bl	_ZN11W5500Socket11ReceiveDataEv
 832 0118 0423     		movs	r3, #4
 833 011a 2375     		strb	r3, [r4, #20]
 834 011c E4E7     		b	.L136
 835              	.L145:
 836 011e FFF7FEFF 		bl	millis
 837 0122 E369     		ldr	r3, [r4, #28]
 838 0124 C31A     		subs	r3, r0, r3
 839 0126 B3F5FA6F 		cmp	r3, #2000
 840 012a 0BD3     		bcc	.L166
 841 012c D5F80831 		ldr	r3, [r5, #264]
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 16


 856 0148 CED1     		bne	.L136
 857 014a CAE7     		b	.L146
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
 888              		.section	.text.startup._GLOBAL__sub_I__ZN11W5500SocketC2EP16NetworkInterface,"ax",%progbits
 889              		.align	1
 890              		.p2align 2,,3
 891              		.syntax unified
 892              		.thumb
 893              		.thumb_func
 894              		.fpu fpv4-sp-d16
 895              		.type	_GLOBAL__sub_I__ZN11W5500SocketC2EP16NetworkInterface, %function
 896              	_GLOBAL__sub_I__ZN11W5500SocketC2EP16NetworkInterface:
 897              		@ args = 0, pretend = 0, frame = 0
 898              		@ frame_needed = 0, uses_anonymous_args = 0
 899              		@ link register save eliminated.
 900 0000 0149     		ldr	r1, .L179
 901 0002 0248     		ldr	r0, .L179+4
 902 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 903              	.L180:
 904              		.align	2
 905              	.L179:
 906 0008 00000000 		.word	.LANCHOR1
 907 000c 00000000 		.word	.LANCHOR2
 908              		.size	_GLOBAL__sub_I__ZN11W5500SocketC2EP16NetworkInterface, .-_GLOBAL__sub_I__ZN11W5500SocketC2EP
 909              		.section	.init_array,"aw",%init_array
 910              		.align	2
 911 0000 00000000 		.word	_GLOBAL__sub_I__ZN11W5500SocketC2EP16NetworkInterface(target1)
 912              		.global	_ZTV11W5500Socket
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 17


 913              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 914              		.align	2
 915              		.set	.LANCHOR2,. + 0
 916              		.type	_ZL14DefaultNetMask, %object
 917              		.size	_ZL14DefaultNetMask, 4
 918              	_ZL14DefaultNetMask:
 919 0000 00000000 		.space	4
 920              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 921              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 922              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 923              	_ZL28cpu_irq_prev_interrupt_state:
 924 0000 00       		.space	1
 925              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 926              		.align	2
 927              		.type	_ZL32cpu_irq_critical_section_counter, %object
 928              		.size	_ZL32cpu_irq_critical_section_counter, 4
 929              	_ZL32cpu_irq_critical_section_counter:
 930 0000 00000000 		.space	4
 931              		.section	.rodata.._142,"a",%progbits
 932              		.align	2
 933              		.set	.LANCHOR1,. + 0
 934              		.type	._142, %object
 935              		.size	._142, 4
 936              	._142:
 937 0000 FF       		.byte	-1
 938 0001 FF       		.byte	-1
 939 0002 FF       		.byte	-1
 940 0003 00       		.byte	0
 941              		.section	.rodata._ZN11W5500Socket11ReceiveDataEv.str1.4,"aMS",%progbits,1
 942              		.align	2
 943              	.LC0:
 944 0000 41707065 		.ascii	"Appended %u bytes\012\000"
 944      6E646564 
 944      20257520 
 944      62797465 
 944      730A00
 945 0013 00       		.space	1
 946              	.LC1:
 947 0014 52656365 		.ascii	"Received %u bytes\012\000"
 947      69766564 
 947      20257520 
 947      62797465 
 947      730A00
 948              		.section	.rodata._ZN11W5500Socket4PollEb.str1.4,"aMS",%progbits,1
 949              		.align	2
 950              	.LC2:
 951 0000 54696D65 		.ascii	"Timed out waiting for resonder for port %u\012\000"
 951      64206F75 
 951      74207761 
 951      6974696E 
 951      6720666F 
 952              		.section	.rodata._ZTV11W5500Socket,"a",%progbits
 953              		.align	2
 954              		.set	.LANCHOR0,. + 0
 955              		.type	_ZTV11W5500Socket, %object
 956              		.size	_ZTV11W5500Socket, 52
 957              	_ZTV11W5500Socket:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccbApwhx.s 			page 18


 958 0000 00000000 		.word	0
 959 0004 00000000 		.word	0
 960 0008 00000000 		.word	_ZN11W5500Socket4PollEb
 961 000c 00000000 		.word	_ZN11W5500Socket5CloseEv
 962 0010 00000000 		.word	_ZN11W5500Socket9TerminateEv
 963 0014 00000000 		.word	_ZN11W5500Socket19TerminateAndDisableEv
 964 0018 00000000 		.word	_ZN11W5500Socket8ReadCharERc
 965 001c 00000000 		.word	_ZN11W5500Socket10ReadBufferERPKhRj
 966 0020 00000000 		.word	_ZN11W5500Socket5TakenEj
 967 0024 00000000 		.word	_ZNK11W5500Socket7CanReadEv
 968 0028 00000000 		.word	_ZNK11W5500Socket7CanSendEv
 969 002c 00000000 		.word	_ZN11W5500Socket4SendEPKhj
 970 0030 00000000 		.word	_ZN11W5500Socket4SendEv
 971              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
